# Reproduce the unrestricted n=10 certificate package

Run commands from the repository root. All computation is local; no Lean or
GitHub Actions command is needed.

## 1. Audit the stored complete proof package

```sh
python n10/audit/verify_complete.py
```

This entry point replays the exact seed theorem, the independently reconstructed
field identities, the 27 finite affine-relaxation certificates and their root
table, and validates all recorded completed ranges. It decompresses the
per-pattern inventories and compares all 888,824 patterns between the two
global implementations. Missing ranges, inconsistent source/input hashes,
deferred roots, missing or duplicate proof-tree children, and invalid exact
dual inequalities are rejected.

Python and SymPy are required for the independent field replay. The finite
LP-certificate verifier itself uses only the Python standard library. No
floating-point optimizer or C++ compiler is needed to audit the stored package.
This command checks the recorded global-run evidence; Section 3 recomputes
the global searches themselves.

Proof-critical checks remain active with Python optimization:

```sh
python -O n10/audit/verify_complete.py
```

## 2. Replay the mathematical inputs separately

```sh
python n10/seed/verify_n10.py
python n10/audit/verify_seed_sympy.py
python n10/audit/check_geometry_bounds.py
python n10/audit/verify_lp_certificate.py \
  n10/local_cover/certificates/*.json \
  --roots n10/runs/deferred_N_0_100000.roots \
  --roots n10/runs/deferred_N_200000_300000.roots \
  --manifest n10/local_cover/manifest.json \
  --root-lemmas n10/local_cover/root_lemmas.txt \
  --require-all
```

The two `.roots` files identify the exact 27 exceptional initial boxes; they
are not claims of an incomplete final proof. Every listed box now has a full
certificate. The final enumerators use the verified table and have no deferred
roots. `local_cover/LP_CERTIFICATES.md` proves the affine and dual inequalities
used by the verifier. Its companion `CASES.tsv` itemizes every root lemma.

The independent arbitrary-integer replays of the original small corner root
journals are supplementary arithmetic checks. Their reproducible, compressed
inputs are under `audit/journals/`; they are not substitutes for the complete
independent global enumeration.

## 3. Recompute both complete global covers

A C++17 compiler supporting signed 128-bit integers is required. GCC was used
for the recorded runs. Compile the two separate sources:

```sh
mkdir -p n10/work/replay
g++ -O3 -std=c++17 -Wno-narrowing \
  n10/global/global_cover_certified.cpp -o n10/work/replay/primary
g++ -O3 -std=c++17 \
  n10/audit/independent_cover.cpp -o n10/work/replay/independent
```

Replay the mathematical inputs in Section 2 before treating the root table as
proved. Then run each complete corner family with each implementation:

```sh
for family in III II C2 C1; do
  FREE_TRIPLE_CACHE=1 \
  PATTERN_RECEIPT="n10/work/replay/primary_${family}.tsv" \
  n10/work/replay/primary "$family" \
    > "n10/work/replay/primary_${family}.log" || exit 1
done

for family in III II C2 C1; do
  n10/work/replay/independent "$family" 0 18446744073709551615 \
    "n10/work/replay/independent_${family}.tsv" \
    > "n10/work/replay/independent_${family}.log" || exit 1
done
```

Each log must end in the appropriate `COMPLETE_PASS` marker. Finally run the
entire N family. The table binds the exact verified roots; it does not declare
that arbitrary neighboring boxes are accepted.

```sh
FREE_TRIPLE_CACHE=1 \
N10_ROOT_LEMMAS=n10/local_cover/root_lemmas.txt \
PATTERN_RECEIPT=n10/work/replay/primary_N.tsv \
n10/work/replay/primary N 0 835027 \
  > n10/work/replay/primary_N.log

N10_ROOT_LEMMAS=n10/local_cover/root_lemmas.txt \
INDEPENDENT_ROOT_BUDGET=2000 \
n10/work/replay/independent N 0 835027 \
  n10/work/replay/independent_N.tsv \
  > n10/work/replay/independent_N.log
```

Both commands must exit successfully and end with their `COMPLETE_PASS`
marker. Both must report 835,027 patterns, 38,929,633 roots,
1,246,854,794 discrete search nodes, and 27 certified initial roots. Their
fine interval-tree counts can differ. Those are different exact covers of the
same continuous initial roots.

For parallel replay, the recorded primary N ranges are `[0,100000)`,
`[100000,300000)`, `[300000,835027)`; the independent ranges are `[0,400000)`
and `[400000,835027)`. Use the same executable and verified table for every
range. Every range must pass, with no gaps or overlaps. A partial range, an
interrupted process or a nonempty output file is never a complete proof.

The recorded primary run logs and compressed per-pattern TSV files are in
`runs/primary/`. The independent run logs and compressed TSV files have the
prefix `runs/independent_final_`. The build receipts identify the exact source,
compiler flags and binary hashes used in this session. Binaries need not have
the same hash across compilers; a fresh successful exact run provides its own
execution evidence.

## 4. Expected exhaustive inventory

| Family | Anchor patterns | Continuous initial roots | Discrete search nodes |
|---|---:|---:|---:|
| III | 1 | 12,172 | 19,430,909 |
| II | 348 | 641,738 | 229,409,076 |
| C2 | 17,903 | 58,494 | 10,382,270 |
| C1 | 35,545 | 9,366,572 | 1,107,173,588 |
| N | 835,027 | 38,929,633 | 1,246,854,794 |
| **Total** | **888,824** | **49,008,609** | **2,613,250,637** |

The two implementations agree on these inventories and on each individual
pattern's anchor IDs, root count, search count and certified-root count.
The stored `.tsv.gz` files are ordinary gzip-compressed text with a zero gzip
timestamp for reproducible transport.

## 5. Optional certificate rediscovery

Rediscovery is not needed for verification. The discovery script requires NumPy
and SciPy and uses `scipy.optimize.linprog` only to propose dual weights:

```sh
python n10/local_cover/prove_deferred.py \
  n10/runs/deferred_N_0_100000.roots \
  n10/runs/deferred_N_200000_300000.roots \
  --workers 2 \
  --output-dir n10/work/replay/rediscovered \
  --manifest n10/work/replay/rediscovered_manifest.json
```

Every proposed coefficient is converted to a nonnegative integer and all
resulting inequalities are checked exactly. A different solver version may
find different valid coefficients and proof trees. The supplied independent
verifier judges the inequalities and tree coverage, not numerical tolerances
or a solver's success status.

## Interpretation

The proof has three mathematical components: exhaustive geometric normalization,
exact finite continuous-domain exclusion, and the unrestricted strict local
theorem. `PROOF.md` assembles them into H10=A and the equality classification.
The arithmetic and programs are auditable computer-assisted proof components;
this repository does not claim Lean-kernel verification or external peer review.
