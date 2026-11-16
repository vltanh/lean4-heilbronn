#!/usr/bin/env python3
"""Run every hand/check_*.py diagnostic and preserve the integration results.

This runner uses the Python standard library. Individual diagnostics may
require SymPy. No proof source or certificate table is modified.
"""
from __future__ import annotations

import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
import hashlib
from importlib import metadata
import json
import os
from pathlib import Path
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parents[1]
RESEARCH = ROOT / "research"
MANIFEST = RESEARCH / "hand_checks_manifest.json"
OUTPUTS = RESEARCH / "hand_check_outputs.json"
REPORT = RESEARCH / "HAND_CHECKS.md"


def utc_now() -> str:
    return datetime.now(timezone.utc).isoformat(timespec="seconds")


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def git_head() -> str | None:
    result = subprocess.run(
        ["git", "rev-parse", "HEAD"], cwd=ROOT, text=True,
        stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, check=False,
    )
    return result.stdout.strip() if result.returncode == 0 else None


def input_hashes() -> dict[str, str]:
    paths = sorted(set((ROOT.parents[1] / "proof" / "nine").glob("*.py")) |
                   set((ROOT.parents[1] / "proof" / "nine").glob("*.json")) |
                   set((ROOT.parents[1] / "proof" / "nine").glob("*.tsv")))
    return {str(path.relative_to(ROOT)): sha256(path.read_bytes()) for path in paths}


def input_digest(hashes: dict[str, str]) -> str:
    content = json.dumps(hashes, sort_keys=True, separators=(",", ":")).encode()
    return sha256(content)


def atomic_json(path: Path, value: object) -> None:
    temporary = path.with_suffix(path.suffix + ".tmp")
    temporary.write_text(json.dumps(value, indent=2, sort_keys=True) + "\n")
    temporary.replace(path)


def write_report(manifest: dict) -> None:
    status = manifest["status"]
    results = manifest["results"]
    passed = sum(result["status"] == "pass" for result in results)
    failed = len(results) - passed
    lines = [
        "# Integrated hand-proof diagnostic gate",
        "",
        f"**Status: {status.upper()}.** "
        f"{passed} passed, {failed} failed, "
        f"{len(results)}/{manifest['discovered_checks']} completed.",
        "",
        "This gate covers every current `hand/check_*.py` file. Fresh runs execute "
        "each diagnostic in a separate Python process, with at most four processes "
        "running concurrently. "
        "The diagnostics check the exact identities, rational certificates, "
        "finite covers, and case ledgers supplied with the hand proof. "
        "The geometric arguments remain in the linked proof manuscripts.",
        "",
        "## Reproduce",
        "",
        "```bash",
        f"python research/run_hand_checks.py --jobs {manifest['jobs']} "
        f"--expected-count {manifest['discovered_checks']}",
        "```",
        "",
        "- [Compact JSON manifest](hand_checks_manifest.json)",
        "- [Complete output from every diagnostic](hand_check_outputs.json)",
        "- [Runner](run_hand_checks.py)",
        "",
        f"- Started (UTC): `{manifest['started_at']}`",
        f"- Finished (UTC): `{manifest.get('finished_at', 'running')}`",
        f"- Python: `{manifest['python_version']}`",
        f"- SymPy: `{manifest['sympy_version']}`",
        f"- Git HEAD at start: `{manifest['git_head_start']}`",
        f"- Verified proof input fingerprint: `{manifest.get('verified_input_digest', manifest['input_digest_start'])}`",
        "",
        "The verified fingerprint covers every Python source and fixed JSON/TSV table in "
        "`hand/`. The runner checks that these inputs are unchanged during "
        "the run and returns a nonzero exit status if a diagnostic fails, "
        "times out, or the input snapshot changes. It records full combined "
        "standard output and standard error for each process.",
        "",
    ]
    if manifest.get("changed_inputs"):
        lines += [
            "## Inputs changed during the run",
            "",
            *[f"- `{path}`" for path in manifest["changed_inputs"]],
            "",
        ]
    if manifest.get("error"):
        lines += ["## Runner error", "", manifest["error"], ""]
    if manifest.get("integration_mode") == "extension":
        lines += [
            "## Extension of the previous receipt", "",
            f"The previous **{manifest['previously_passed_checks']}-diagnostic** receipt "
            f"is preserved in the JSON manifest. This extension executed "
            f"**{manifest['executed_checks']} new diagnostics**. Before reusing the "
            "earlier results, the runner verified that every previously recorded "
            "Python, JSON, and TSV input still matched its exact fingerprint.",
            "",
            f"- Baseline revision: `{manifest['baseline_revision']}`",
            f"- Unchanged earlier-input fingerprint: `{manifest['unchanged_previous_input_digest']}`",
            "- Newly executed diagnostics:",
            *[f"  - `{path}`" for path in manifest["new_checks"]],
            "",
        ]
    if manifest.get("targeted_rechecks"):
        lines += ["## Targeted follow-up", ""]
        for check in manifest["targeted_rechecks"]:
            lines += [
                check["reason"], "",
                f"- Diagnostic: `{check['path']}`",
                f"- Result: **{check['result']['status'].upper()}**",
                f"- Finished (UTC): `{check['finished_at']}`",
                "- Explicitly recorded inputs:",
            ]
            lines += [f"  - `{path}`: `{digest}`" for path, digest in check["inputs"].items()]
            lines.append("")
    lines += [
        "## Individual results",
        "",
        "| Diagnostic | Result | Seconds |",
        "|---|---|---:|",
    ]
    for result in results:
        path = result["path"]
        name = Path(path).name
        lines.append(
            f"| [{name}](../{path}) | {result['status'].upper()} "
            f"(exit {result['exit_code']}) | {result['seconds']:.3f} |"
        )
    lines.append("")
    temporary = REPORT.with_suffix(".md.tmp")
    temporary.write_text("\n".join(lines))
    temporary.replace(REPORT)


def as_text(value: str | bytes | None) -> str:
    if value is None:
        return ""
    return value.decode(errors="replace") if isinstance(value, bytes) else value


def run_one(path: Path, timeout: float, environment: dict[str, str]) -> tuple[dict, str]:
    start = time.monotonic()
    relative = str(path.relative_to(ROOT))
    command = [sys.executable, str(path)]
    try:
        process = subprocess.run(
            command, cwd=ROOT, env=environment, stdin=subprocess.DEVNULL,
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True,
            errors="replace", timeout=timeout, check=False,
        )
        output = process.stdout
        exit_code = process.returncode
        status = "pass" if exit_code == 0 else "fail"
    except subprocess.TimeoutExpired as error:
        output = as_text(error.stdout) + f"\nRUNNER TIMEOUT after {timeout} seconds.\n"
        exit_code = None
        status = "timeout"
    except Exception as error:
        output = f"RUNNER ERROR: {type(error).__name__}: {error}\n"
        exit_code = None
        status = "runner_error"
    result = {
        "path": relative,
        "status": status,
        "exit_code": exit_code,
        "seconds": round(time.monotonic() - start, 6),
        "output_sha256": sha256(output.encode()),
    }
    return result, output


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--jobs", type=int, choices=range(1, 5), default=4)
    parser.add_argument("--expected-count", type=int)
    parser.add_argument("--timeout-seconds", type=float, default=900)
    parser.add_argument(
        "--extend-from", metavar="GIT_REVISION",
        help="Reuse a successful receipt after matching all its inputs from this revision; run only newly added checks.",
    )
    args = parser.parse_args()
    if args.timeout_seconds <= 0:
        parser.error("--timeout-seconds must be positive")

    paths = sorted((ROOT.parents[1] / "proof" / "nine").glob("check_*.py"))
    before = input_hashes()
    existing_results = []
    outputs: dict[str, str] = {}
    extension = {}
    pending_paths = paths
    if args.extend_from:
        try:
            previous = json.loads(MANIFEST.read_text())
            outputs = json.loads(OUTPUTS.read_text())
            assert previous["status"] == "passed"
            assert previous["failed"] == 0
            existing_results = previous["results"]
            assert len(existing_results) == previous["discovered_checks"]
            assert all(row["status"] == "pass" for row in existing_results)
            old_paths = {row["path"] for row in existing_results}
            assert len(old_paths) == len(existing_results)
            assert old_paths <= {str(path.relative_to(ROOT)) for path in paths}
            for row in existing_results:
                key = row.get("output_key", row["path"])
                assert sha256(outputs[key].encode()) == row["output_sha256"]
            tree = subprocess.run(
                ["git", "ls-tree", "-r", "--name-only", args.extend_from, "--", "hand"],
                cwd=ROOT, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                check=False,
            )
            assert tree.returncode == 0, tree.stderr
            names = [name for name in tree.stdout.splitlines()
                     if Path(name).parent == Path("hand")
                     and Path(name).suffix in (".py", ".json", ".tsv")]
            assert len(names) == previous.get("verified_input_files", previous["input_files"])
            old_hashes = {name: before[name] for name in names}
            expected_digest = previous.get("verified_input_digest", previous["input_digest_finish"])
            assert input_digest(old_hashes) == expected_digest, "An earlier proof input changed; use a fresh full run."
            pending_paths = [path for path in paths if str(path.relative_to(ROOT)) not in old_paths]
            earlier_receipts = previous.get("previous_receipts", [])
            receipt = {key: value for key, value in previous.items() if key != "previous_receipts"}
            extension = {
                "integration_mode": "extension",
                "baseline_revision": args.extend_from,
                "previously_passed_checks": len(existing_results),
                "executed_checks": len(pending_paths),
                "unchanged_previous_input_digest": expected_digest,
                "new_checks": [str(path.relative_to(ROOT)) for path in pending_paths],
                "previous_receipts": earlier_receipts + [receipt],
            }
        except (AssertionError, KeyError, ValueError, OSError) as error:
            parser.error(f"Cannot extend the previous receipt: {error}")
    try:
        sympy_version = metadata.version("sympy")
    except metadata.PackageNotFoundError:
        sympy_version = "not installed"
    manifest = {
        "version": 1,
        "status": "running",
        "started_at": utc_now(),
        "git_head_start": git_head(),
        "python_version": sys.version.split()[0],
        "sympy_version": sympy_version,
        "jobs": args.jobs,
        "timeout_seconds": args.timeout_seconds,
        "discovered_checks": len(paths),
        "input_files": len(before),
        "input_patterns": ["hand/*.py", "hand/*.json", "hand/*.tsv"],
        "input_digest_start": input_digest(before),
        "results": list(existing_results),
        **extension,
    }
    atomic_json(MANIFEST, manifest)
    atomic_json(OUTPUTS, outputs)
    write_report(manifest)
    if args.expected_count is not None and len(paths) != args.expected_count:
        manifest["status"] = "failed"
        manifest["error"] = (
            f"Expected {args.expected_count} diagnostics, found {len(paths)}."
        )
        manifest["finished_at"] = utc_now()
        atomic_json(MANIFEST, manifest)
        write_report(manifest)
        print(manifest["error"], flush=True)
        return 1

    environment = os.environ.copy()
    environment.update({
        "PYTHONDONTWRITEBYTECODE": "1",
        "PYTHONHASHSEED": "0",
        "OMP_NUM_THREADS": "1",
        "OPENBLAS_NUM_THREADS": "1",
        "MKL_NUM_THREADS": "1",
    })
    start = time.monotonic()
    with ThreadPoolExecutor(max_workers=args.jobs) as executor:
        futures = {
            executor.submit(run_one, path, args.timeout_seconds, environment): path
            for path in pending_paths
        }
        for completed, future in enumerate(as_completed(futures), 1):
            result, output = future.result()
            manifest["results"].append(result)
            manifest["results"].sort(key=lambda row: row["path"])
            outputs[result["path"]] = output
            atomic_json(OUTPUTS, outputs)
            atomic_json(MANIFEST, manifest)
            print(
                f"{len(existing_results) + completed}/{len(paths)} {result['status'].upper()} "
                f"{result['path']} ({result['seconds']:.3f}s)", flush=True,
            )

    after = input_hashes()
    changed = sorted(path for path in set(before) | set(after)
                     if before.get(path) != after.get(path))
    manifest.update({
        "finished_at": utc_now(),
        "git_head_finish": git_head(),
        "wall_seconds": round(time.monotonic() - start, 6),
        "input_digest_finish": input_digest(after),
        "verified_input_digest": input_digest(after),
        "changed_inputs": changed,
        "passed": sum(row["status"] == "pass" for row in manifest["results"]),
        "failed": sum(row["status"] != "pass" for row in manifest["results"]),
    })
    okay = manifest["failed"] == 0 and not changed and len(manifest["results"]) == len(paths)
    manifest["status"] = "passed" if okay else "failed"
    atomic_json(MANIFEST, manifest)
    write_report(manifest)
    print(
        f"FINAL {manifest['status'].upper()}: {manifest['passed']}/{len(paths)} "
        f"passed; {manifest['failed']} failed; changed inputs: {changed}", flush=True,
    )
    return 0 if okay else 1


if __name__ == "__main__":
    raise SystemExit(main())

