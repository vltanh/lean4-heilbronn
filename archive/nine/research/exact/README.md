# Nine-point Heilbronn: exact proof draft

The unreviewed computer-assisted certificate draft claims the proposed value

    H_9 = (9*sqrt(65)-55)/320
        = 0.0548759991708967...,

subject to review of the attached mathematical proof and checkers.
All three global families were exhausted. This is not a numerical
optimality assertion, a grid-restricted result, or an unfinished finite reduction.
It has not been externally reviewed or verified in Lean.

Read **PROOF.md** for the combined argument and **STATUS.md** for the exact
completion ledger and trust boundary.

## Primary reproduction

The primary proof requires Python 3 (standard library only) and a C++17
compiler supporting signed 128-bit integers, such as GCC or Clang.
Run from this directory:

```sh
python verify_local.py

g++ -O3 -std=c++17 verify_global.cpp -o verify_global
./verify_global corners
./verify_global type1
```

Required final markers:

```text
PASS: for h <= 1/200, minimum triangle area <= A - 3*h/1700.
TYPE3_COMPLETE_PASS
TYPE2_COMPLETE_PASS
TYPE1_COMPLETE_PASS
```

Any FAIL_OR_INCOMPLETE output or nonzero exit invalidates that run.
The final Type-I line must cover start=0, stop=330988. A partial range is not
a proof of the global theorem. No stored geometric compatibility table is
trusted: the C++ program reconstructs its entire initial cover.

## Secondary implementation

The separate implementation uses NumPy and Numba. Its mathematical kernels
are identical to those in the completed secondary journals; their abstract
syntax-tree hashes are recorded in secondary_kernel_identity.json.
It reconstructs its initial compatibility data from scratch on every run.

```sh
python verify_secondary.py --journal secondary_journal.jsonl
```

It supports explicit index ranges for independent parallel replay:

```sh
python verify_secondary.py --start 0 --stop 150000 --journal part1.jsonl
python verify_secondary.py --start 150000 --stop 240000 --journal part2.jsonl
python verify_secondary.py --start 240000 --stop 330988 --journal part3.jsonl
```

All ranges must complete, and their indices must cover [0,330988) without gaps.
The original compressed per-pattern journal **type1_secondary_journal.jsonl.gz** is in the prior conversation's ZIP but is **not included in this PR**. To verify the secondary run, regenerate it by running the commands above. The two implementations' *recorded* results agree on all
330,988 boundary patterns and 102,364,833 initial candidate boxes.

## Optional sanitizer regression tests

```sh
g++ -O1 -g -std=c++17 -fsanitize=undefined,address \
    -fno-omit-frame-pointer test_global.cpp -o test_global
./test_global
```

These are regression tests, not a substitute for the exhaustive replay.

## Files

- PROOF.md: combined theorem, global certificate, local proof, and boundary audit.
- GLOBAL_PROOF.md, LOCAL_PROOF.md, BOUNDARY_REDUCTION.md: individual proof components.
- verify_local.py: exact candidate and local proof in Q(sqrt(65)), no third-party library.
- verify_global.cpp: complete global cover, all integer decisions.
- verify_secondary.py: second implementation of the large Type-I cover.
- test_global.cpp: separate soundness regression tests.
- *_replay.txt, type1_crosscheck.json: actual completed replay receipts.
- type1_secondary_journal.jsonl.gz: **not committed here**; the original archive includes one PASS record per Type-I boundary pattern.
- environment.json: reproduction metadata; SHA256SUMS: hashes of the **original archive**, not the reorganized PR tree.

## Literature input and attribution

N. Sudermann-Merx, *From Global Optimization to Exact Coordinates: Heilbronn's
Triangle Problem on the Unit Square Using Mixed-Integer Nonlinear Optimization*,
arXiv:2603.11107v3, 27 October 2026. The construction is in Appendix A, Table 12;
the three-family boundary reduction is in Section 2.2. The construction follows
Comellas and Yebra (2002). The present package adds an exact global exclusion
and a quantitative local certificate; it does not rely on the paper's numerical
upper bounds.
