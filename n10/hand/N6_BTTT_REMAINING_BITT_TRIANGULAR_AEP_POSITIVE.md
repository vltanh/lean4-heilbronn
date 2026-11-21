# Positive AEP in the triangular BITT alternative

Use the normalized [BITT placements](N6_BTTT_REMAINING_BITT_SETUP.md)
at unsigned doubled clearance $s=93/1000$. Suppose the top pair is
triangular, so $S$ is strictly inside $ERF$. The
[lower-ear reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md)
gives $[ACP],[HBP]>0$. Under these conditions $[AEP]>0$ is impossible.

In the [literal index and tables](N6_BTTT_REMAINING_BITT_TRIANGULAR_CENTRAL_RESIDUAL_CHAMBER_POSITIVE_TABLES/INDEX.md),
the first split uses $AFP$. Each of the 267 determinant splits has
both nonzero signs. The 108 further capacity deductions record the
actual containing triangle, proved upper endpoint and excluded point.
If a child premise conflicts with a proved actual sign, the child
still records its premise, and the terminal gives the opposite sign.

The sign and scalar rules come from the
[lower-ear reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md).
Strengthened support envelopes use the
[pentagon ear inequality](PENTAGON_EAR_SUPPORT.md)
with their printed preceding area endpoints.
The clustered and distributed cases use the
[clustered-triangle argument](CLUSTERED_TRIANGLE.md)
and its distributed mesh. A three-term sign contradiction uses the
determinant identity in the
[lower sector proof](N6_BTTT_REMAINING_BITT_BOTTOM_CHAMBER.md).

Each of the 527 coordinate divisions has both closed children,
so includes its cutting face. Each product terminal gives every
nonnegative factor, its source and the positive integer weights.
The expansions yield 579 strictly negative rational constants and
22 strictly negative shifted ceilings by the
[coordinate-product rule](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md).

The cover has 795 contradictions. Besides the 601 product leaves,
there are 84 empty intervals, 71 incompatible area bounds, one
incompatible bound on a zero determinant, and 38 geometry leaves.
The geometry leaves consist of 22 clustered triples, six three-term
sign contradictions, five conflicting sign premises and five
impossible distributed mesh labelings.

The appendix records 12,077 physical factors, 28,359 coordinate
updates, 153,223 area updates and 40,548 positive products. Both
independent readers verified the printed case divisions and all
795 contradictions using exact arithmetic.

```sh
node n10/hand/N6_BTTT_REMAINING_BITT_REPLAY.js - contradiction 'AEP+' n10/hand/N6_BTTT_REMAINING_BITT_TRIANGULAR_CENTRAL_RESIDUAL_CHAMBER_POSITIVE_TABLES
python3 n10/hand/audit_n6_bttt_remaining.py --bitt-triangular-aep-positive
```
