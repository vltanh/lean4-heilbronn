#!/usr/bin/env bash
# Check the library against the Challenge of each case the way the Palomar registry does.
#
# Every case is its own Palomar entry, in its own directory Palomar/<Case>/: Challenge.lean,
# comparator.json and formalization.yaml. For each case, `lake comparator` of this project's
# toolchain builds Palomar/<Case>/Challenge.lean and the root module Heilbronn in a sandbox,
# checks that the theorems of comparator.json have the same statements over identical definitions
# and use only the permitted axioms, and replays the proofs through Lean's kernel and the
# toolchain's independent kernel NanoDa; both must accept. Then, as Palomar does, con-ron replays
# the same export with two workers for at most 30 minutes: an advisory check, whose capacity
# limit (memory or time) is a warning and whose rejection is a failure.
#
# Every Challenge restates the definitions of Heilbronn/Geometry.lean word for word, all of them
# and in the same order: Lean names the auxiliary lemmas inside a definition after the first
# definition in the file that needs them, so only a complete copy elaborates to the same
# constants. Edit Geometry.lean only, and run with --write to copy its definitions into every
# Challenge before the check; the header of each Challenge and its theorems are left as they are.
#
# Needs Linux, python3 and bubblewrap (`bwrap`), which sandboxes the build.
# The kernel replays take hours (for nine points: Lean's kernel about 2 h 10 min on one core,
# NanoDa about 30 min, con-ron with two workers about 1 h 50 min and 23 GB, so the 30-minute
# replay declines); --definitions-only stops after the definitions check, which CI runs.
#
# Run from anywhere: scripts/verify-comparator.sh [--write] [--definitions-only] [Case ...]
# (default: every directory under Palomar/).
set -euo pipefail
cd "$(dirname "$0")/.."

write=0
definitions_only=0
cases=()
for arg in "$@"; do
  case "$arg" in
    --write) write=1 ;;
    --definitions-only) definitions_only=1 ;;
    -*) echo "usage: scripts/verify-comparator.sh [--write] [--definitions-only] [Case ...]" >&2; exit 2 ;;
    *) cases+=("$arg") ;;
  esac
done
if [ ${#cases[@]} -eq 0 ]; then
  for dir in Palomar/*/; do cases+=("$(basename "$dir")"); done
fi
for case_name in "${cases[@]}"; do
  for file in Challenge.lean comparator.json formalization.yaml; do
    if [ ! -f "Palomar/$case_name/$file" ]; then
      echo "error: Palomar/$case_name/$file is missing" >&2
      exit 2
    fi
  done
done

# The definitions run from `noncomputable section` to the end of the namespace in Geometry.lean,
# and to the theorems in each Challenge.
python3 - "$write" "${cases[@]}" <<'PY'
import sys
from pathlib import Path

write = sys.argv[1] == "1"
geometry = Path("Heilbronn/Geometry.lean").read_text()
start = "noncomputable section\n"
original = geometry[geometry.index(start):geometry.rindex("end Heilbronn")]
original = original.rstrip() + "\n\n"
stale = []
for case_name in sys.argv[2:]:
    challenge_path = Path("Palomar") / case_name / "Challenge.lean"
    challenge = challenge_path.read_text()
    first = challenge.index(start)
    last = challenge.index("/-! ### The theorems -/")
    if challenge[first:last] == original:
        continue
    if write:
        challenge_path.write_text(challenge[:first] + original + challenge[last:])
        print(f"{challenge_path}: copied the definitions of Heilbronn/Geometry.lean")
    else:
        stale.append(str(challenge_path))
if stale:
    raise SystemExit(
        "error: the definitions in " + ", ".join(stale) + " differ from "
        "Heilbronn/Geometry.lean; run scripts/verify-comparator.sh --write"
    )
PY
if [ "$definitions_only" -eq 1 ]; then
  echo "The definitions of every Challenge match Heilbronn/Geometry.lean."
  exit 0
fi

# Palomar ignores `enable_nanoda` and registers the toolchain's NanoDa kernel itself; a copy of
# each comparator.json does the same here. con-ron runs afterwards on its own, as in Palomar's
# PalomarSubmission/scripts/verify_submission.py (CON_RON_JOBS = 2, CON_RON_REPLAY_SECONDS).
prefix=$(lean --print-prefix)
work=$(mktemp -d "${TMPDIR:-/tmp}/comparator.XXXXXX")
trap 'rm -rf "$work"' EXIT
status=0
for case_name in "${cases[@]}"; do
  echo "== Palomar/$case_name"
  python3 - "Palomar/$case_name/comparator.json" "$work/config.json" "$prefix" <<'PY'
import json
import sys

source, destination, prefix = sys.argv[1:]
with open(source) as file:
    config = json.load(file)
config.pop("enable_nanoda", None)
config["external_kernels"] = {"nanoda": [f"{prefix}/bin/nanoda_bin"]}
with open(destination, "w") as file:
    json.dump(config, file, indent=2)
PY
  lake comparator --config "$work/config.json" 2>&1 | tee "$work/comparator.log"
  if [ "${PIPESTATUS[0]}" -ne 0 ]; then
    exit 1
  fi

  # The con-ron replay, on the solution export of the declarations Comparator exported.
  names=$(python3 - "$work/comparator.log" "Palomar/$case_name/comparator.json" <<'PY'
import json
import re
import sys

log, config = sys.argv[1:]
solution = json.load(open(config))["solution_module"]
lines = [l for l in open(log) if l.startswith("Exporting #[") and l.rstrip().endswith(f"from {solution}")]
if not lines:
    raise SystemExit("error: no solution export in the Comparator log")
print(" ".join(re.match(r"Exporting #\[(.*)\] from ", lines[-1]).group(1).split(", ")))
PY
)
  solution=$(python3 -c "import json,sys; print(json.load(open(sys.argv[1]))['solution_module'])" \
    "Palomar/$case_name/comparator.json")
  # shellcheck disable=SC2086
  lake env leanexport "$solution" -- $names > "$work/solution.ndjson"
  set +e
  timeout 1800 "$prefix/bin/con-ron" --jobs=2 --verified "$work/solution.ndjson" \
    > "$work/con-ron.log" 2>&1
  code=$?
  set -e
  tail -n 3 "$work/con-ron.log"
  if [ "$code" -eq 0 ] && grep -q "^con-ron: accepted" "$work/con-ron.log"; then
    echo "con-ron accepted Palomar/$case_name"
  elif [ "$code" -eq 2 ] || [ "$code" -eq 3 ] || [ "$code" -eq 124 ] || [ "$code" -eq 137 ]; then
    echo "warning: con-ron declined Palomar/$case_name (exit $code: support, fuel, time or memory);" \
      "Lean and NanoDa accepted, as Palomar requires"
  else
    echo "error: con-ron rejected Palomar/$case_name (exit $code)" >&2
    status=1
  fi
  rm -f "$work/solution.ndjson"
done
exit "$status"
