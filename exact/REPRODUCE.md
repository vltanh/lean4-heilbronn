# Reproducing the nine-point certificate

**Scope:** an unreviewed computer-assisted proof draft, not a completed Lean formalization or a fully handwritten proof. Read [STATUS.md](STATUS.md) before interpreting any PASS marker.

## Requirements

- Python 3 (standard library only) for `verify_local.py`.
- C++17 with signed `__int128` for `verify_global.cpp` (GCC and Clang).
- Optional NumPy and Numba for the separately implemented `verify_secondary.py`.
- Optional SymPy for the handwritten proof's algebra test in `../hand/check_identities.py`.

Run from the `exact/` directory:

```sh
python verify_local.py
g++ -O3 -std=c++17 verify_global.cpp -o verify_global
./verify_global corners
./verify_global type1
```

The required final outputs are:

```text
PASS: for h <= 1/200, minimum triangle area <= A - 3*h/1700.
TYPE3_COMPLETE_PASS
TYPE2_COMPLETE_PASS
TYPE1_COMPLETE_PASS
```

`FAIL_OR_INCOMPLETE`, a nonzero exit, or a partially enumerated Type-I range does **not** prove the global upper bound. A valid Type-I result covers all indices `[0,330988)`.

## Regenerating the secondary cover

```sh
python verify_secondary.py --start 0 --stop 150000 --journal part1.jsonl
python verify_secondary.py --start 150000 --stop 240000 --journal part2.jsonl
python verify_secondary.py --start 240000 --stop 330988 --journal part3.jsonl
```

These calls can be run separately; all three must complete, and their ranges must cover every index exactly once. The primary C++ checker independently rebuilds the initial compatibility cover rather than trusting a serialized grid.

The original proof ZIP distributed in the conversation contained `type1_secondary_journal.jsonl.gz` (approximately 3.2 MB), a stored per-pattern secondary replay. **That binary file is not in this GitHub PR.** The source and compact receipts are here, and the journal can be regenerated. The file `SHA256SUMS` records hashes from the original archive and must not be interpreted as hashes of the reorganized GitHub tree.

## Smaller checks

```sh
g++ -O1 -g -std=c++17 -fsanitize=undefined,address \
    -fno-omit-frame-pointer test_global.cpp -o test_global
./test_global
cd ../hand
python check_identities.py
```

The handwritten part's SymPy test verifies specific printed identities; it does not perform global exclusion. The local exact script checks all 84 candidate triangle areas and a quantitative local sharpness bound.

## What was rerun when preparing this PR

- `python hand/check_identities.py`: **PASS** on the copied sources.
- `python exact/verify_local.py`: **PASS** on the copied sources.
- `g++ -std=c++17 -O2 exact/verify_global.cpp` and its `corners` mode: **Type II and Type III PASS**.
- The full Type-I global cover and secondary 330,988-pattern run were **not rerun during preparation of this PR**. The original package records successful runs, but those reports still need outside replication and code/math review.

No CI was invoked for preparation. Do not treat two separately written checkers from one research session as independent external confirmation.

## Review priorities

1. Check the geometric three-family reduction and all degeneracies, especially edge contacts and the shear.
2. Independently inspect the arithmetic bounds, interval contraction and outward rounding in `verify_global.cpp`.
3. Run `type1` completely and compare the generated cover with the compact receipts.
4. Inspect the local exact \(\mathbf Q(\sqrt{65})\) coefficient/sign computation.
5. If seeking a **hand** proof, see [../ROADMAP.md](../ROADMAP.md); none of these computations closes its remaining global hand-proof gates.
