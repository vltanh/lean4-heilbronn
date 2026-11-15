# Independent arithmetic and completion audit

This audit separates three requirements: the local mathematical theorem, the
soundness of the global box operations, and exhaustive completion accounting.
A passed local audit or a valid partial range is not a global upper bound.

## Independent seed reconstruction

`verify_seed_sympy.py` does not import `verify_n10.py`, its `Cubic` arithmetic,
its saved area list, or its matrices. It constructs the algebraic field using
SymPy's irreducible-polynomial implementation and checks signs by rational
Horner interval evaluation. Its only shared numerical certificate input is the
38 dual coefficient records, independently decoded and checked.

The audit verifies all 120 triangle areas, the exact list of 16 active areas,
the positive stress identity, all 38 nonnegative dual identities, the neutral
direction, and the complete negative-curvature estimate. It obtains the exact
strict local margin `57921081/30250000` at radius `1/2000`.

It also checks both thresholds used by the actual global checker:

- `4653/100000 < A` for all four corner families;
- `4653741958254/100000000000000 < A` for family N.

These comparisons are essential; the legacy seed verifier's original `SL`
comparison alone was a comparison with a different rational threshold.

Both thresholds are larger than `1/22` and `45/(2*22^2)`. Thus the distinct-cell
argument and coarse determinant cutoff used by the global enumeration are
compatible with both targets.

## Arbitrary-integer journal replay

`replay_root_journal.py` independently checks every continuous root box in the
persisted III and C2 journals. It expands the determinant into six products,
enumerates every rectangle vertex, computes coordinate proposals against the
unchanged triangle box, and applies the proposals synchronously. All arithmetic
uses Python's arbitrary-precision integers. It imports no primary checker code.

The completed runs verify all 12,172 III roots and all 58,494 C2 roots, with one
interval node per root. The journals are stored losslessly as gzip files under
`journals/`; both stored-byte and decoded-byte hashes are recorded. Reproduce:

```
python n10/audit/replay_root_journal.py n10/audit/journals/III.roots.gz --family III
python n10/audit/replay_root_journal.py n10/audit/journals/C2.roots.gz --family C2
```

This checks all listed roots. The independent complete global checker must
separately verify that enumeration covers every necessary root; the replay
receipts explicitly do not claim enumeration completeness.

## Face contraction is conservative

Fix a triangle and one varying coordinate `z` in `[l,h]`. Let `M0` and `M1`
be the maximum absolute doubled determinant on the two endpoint faces of the
current box. The determinant is affine in `z` and separately affine in every
other coordinate. Therefore, for `u=(z-l)/(h-l)`,

`|D| <= (1-u) M0 + u M1`.

The two face maxima are computed at face vertices. If the maximum is at most
the strict target, the entire box is excluded. If only the lower face is below
target, every feasible point must lie above the linear crossing. Increasing
the integer lower endpoint by the floor of that crossing displacement retains
every feasible real point. The upper-face argument is symmetric.

The code computes all six pairs of face bounds before updating any coordinate.
This is sound: during one triangle pass, each coordinate is updated at most
once, so its own endpoints and width are unchanged before its update. Previous
updates only shrink *other* coordinate intervals. The saved face bounds on the
larger faces remain valid upper bounds on the smaller faces. No optimistic
re-evaluation is used.

Closed bisection children cover the parent, including the separating face.
Unresolved smallest boxes and exhausted budgets cause a nonzero failure exit.
The proof does not discard real configurations between integer endpoints.

## Local acceptance

Every template coordinate is enclosed outward around the algebraic candidate.
For a real candidate coordinate `c` in `[L,U]`, the implemented conditions
`box.lower >= U-1/2000` and `box.upper <= L+1/2000` imply that the whole box
coordinate is within `1/2000` of `c`. Matching ten distinct template indices
gives the required bijection of the ten points.

The greedy matching algorithm could fail to recognize a valid matching, but a
successful return explicitly supplies a bijection. Such a false rejection
only causes additional subdivision; it cannot cause a false acceptance.
All eight square symmetries preserve area and the square. At the exact
candidate the minimum equals A, and at every other point in the local ball the
independently checked local theorem gives strict inequality.

## Integer bounds

For `S=22*2^20`, even the conservative bound `8 S^2` on determinant/midpoint
intermediates is below `2^63`. Every contraction numerator is bounded by
`4653741958254 S^3 < 2^117`; target products also fit signed 128-bit arithmetic.
Using `g<1/3`, the sum of absolute root-polynomial terms is below `2^125`.
The independent SymPy audit checks these bounds as exact integers/rationals.

## Completion accounting

`verify_run_manifest.py` checks source, dependency, and log SHA-256 values;
requires successful process exits; parses exactly one final range receipt;
and validates disjoint interval coverage with a single total per family. It
rejects gaps, overlaps, repeated receipts, out-of-range endpoints, inconsistent
totals, failure markers, mixed source revisions, and partial ranges claiming
completion. The `--require-all` option requires all five global families.

For N runs containing local leaves, the manifest must additionally bind the
local theorem, the seed verifier, the dual decoder, and every dual-data part.
An adversarial test suite exercises incomplete, tampered, and false-completion
receipts. These are tests of accounting, not geometric evidence.

A manifest records provenance and coverage; a log cannot prove its own
execution. Independent geometric replay is a separate acceptance gate. No
global upper-bound claim is made by the seed receipt or this document alone.
