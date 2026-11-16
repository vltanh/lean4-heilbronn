#!/usr/bin/env bash
# Check the library against the Challenge of each case the way the Palomar registry does.
#
# Every case is its own Palomar entry, in its own directory Palomar/<Case>/: Challenge.lean,
# comparator.json and formalization.yaml. For each case, `lake comparator` of this project's
# toolchain builds Palomar/<Case>/Challenge.lean and the root module Heilbronn in a sandbox,
# checks that the theorems of comparator.json have the same statements over identical definitions
# and use only the permitted axioms, and replays the proofs through Lean's kernel and the
# toolchain's independent kernels NanoDa and con-ron.
#
# Every Challenge restates the definitions of Heilbronn/Geometry.lean word for word, all of them
# and in the same order: Lean names the auxiliary lemmas inside a definition after the first
# definition in the file that needs them, so only a complete copy elaborates to the same
# constants. Edit Geometry.lean only, and run with --write to copy its definitions into every
# Challenge before the check; the header of each Challenge and its theorems are left as they are.
#
# Needs Linux, python3 and bubblewrap (`bwrap`), which sandboxes the build.
# Run from anywhere: scripts/verify-comparator.sh [--write] [Case ...]
# (default: every directory under Palomar/).
set -euo pipefail
cd "$(dirname "$0")/.."

write=0
cases=()
for arg in "$@"; do
  case "$arg" in
    --write) write=1 ;;
    -*) echo "usage: scripts/verify-comparator.sh [--write] [Case ...]" >&2; exit 2 ;;
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

# Palomar ignores `enable_nanoda` and registers the toolchain's kernels itself; a copy of each
# comparator.json does the same here.
prefix=$(lean --print-prefix)
config=$(mktemp "${TMPDIR:-/tmp}/comparator.XXXXXX")
trap 'rm -f "$config"' EXIT
for case_name in "${cases[@]}"; do
  echo "== Palomar/$case_name"
  python3 - "Palomar/$case_name/comparator.json" "$config" "$prefix" <<'PY'
import json
import sys

source, destination, prefix = sys.argv[1:]
with open(source) as file:
    config = json.load(file)
config.pop("enable_nanoda", None)
config["external_kernels"] = {
    "nanoda": [f"{prefix}/bin/nanoda_bin"],
    "con-ron": [f"{prefix}/bin/con-ron"],
}
with open(destination, "w") as file:
    json.dump(config, file, indent=2)
PY
  lake comparator --config "$config"
done
