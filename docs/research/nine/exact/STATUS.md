# Status: complete exact computer-assisted proof draft

**All mathematical case checks described in this package completed.**
There are no unresolved case families or interval boxes in the recorded cover.
This is a new proof draft produced in this conversation. It has not received
external peer review and is not formalized in Lean.

## Claimed theorem

For nine points in the unit square,

    H_9 = (9*sqrt(65)-55)/320.

The equality argument in GLOBAL_PROOF.md additionally identifies every
maximizer, up to square symmetries and relabeling, with the displayed
nine-point configuration.

## Completed checks

| Check | Outcome |
|---|---|
| All 84 candidate triangle areas, exact Q(sqrt(65)) arithmetic | PASS |
| 19 x 19 inverse and all 342 quantitative inverse inequalities | PASS |
| Local theorem for every feasible 18-coordinate perturbation of radius 1/200 | PASS |
| Type III: full three-corner family | PASS; 12,326 candidate boxes |
| Type II: full adjacent-corner/shear family | PASS; 400 boundary boxes, 356,024 candidate boxes |
| Type I: full five-boundary-point family | PASS; 330,988 boundary patterns, 102,364,833 candidate boxes |
| Independent C++ and NumPy/Numba Type-I coverage totals | AGREE |
| Unresolved patterns / boxes | 0 / 0 |

## Independent implementation totals

| Quantity | C++ | NumPy/Numba |
|---|---:|---:|
| Type-I boundary patterns | 330,988 | 330,988 |
| Initial candidate boxes | 102,364,833 | 102,364,833 |
| Discrete-cover search nodes | 1,221,968,862 | 1,221,968,862 |
| Continuous box-check nodes | 102,496,433 | 102,496,471 |
| Local-theorem leaves | 1,352 | 1,352 |

The 38-node difference in the interval trees is allowed: the implementations
order tied triangle bounds differently. Their complete initial covers agree,
and both independently finish every continuous box without unresolved leaves.
The local theorem, not a floating-point tolerance, closes equality leaves.

The second implementation was run in three contiguous ranges: [0,150000),
[150000,240000), and [240000,330988). Its compressed per-pattern journal was
checked for exactly one PASS at every index. An initial worker was stopped
after a verified complete prefix to avoid duplicating the later ranges.
No unfinished run was counted as a complete range.

## Additional audits

A separate Python unbounded-integer implementation replayed all 12,326 Type-III
leaves and all 356,024 Type-II leaves. The C++ checker independently rebuilt
both corner covers, using a finer integer endpoint scale, and matched their
initial coverage counts.

The C++ interval/corner routines passed address/undefined-behavior-sanitized
regression tests, including 20,000 comparisons of two corner-maximum methods,
3,813 feasible-witness preservation tests, preservation of a box containing
the exact candidate, and rejection of the zero-area configuration.
These regression tests supplement, rather than replace, the exhaustive proof.

## Trust boundary

The proof consists of the written geometric reduction, the local exact-field
certificate, and the finite interval-cover certificate. The programs and their
mathematical interpretation still require normal independent scrutiny. Both
implementations were written and run in this conversation; “independent” here
means a separate implementation, not outside authorship or external review.
No CI, commercial optimizer, or numerical dual bound was used.