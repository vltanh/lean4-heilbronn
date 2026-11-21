# Negative AEP in the triangular BITT alternative

Use the [normalized BITT placements](N6_BTTT_REMAINING_BITT_SETUP.md)
with unsigned doubled clearance $s=93/1000$. Take the triangular top
pair, so $[ERS]>0$ and $[FRS]<0$ put $S$ strictly inside $ERF$.
The [lower-ear reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md)
gives $[ACP],[HBP]>0$. Under these hypotheses $[AEP]<0$ is impossible.

The [literal index and tables](N6_BTTT_REMAINING_BITT_TRIANGULAR_CENTRAL_RESIDUAL_CHAMBER_TABLES/INDEX.md)
begin by splitting on $EHQ$. The positive child first splits on $BEP$.
The 52 determinant splits are exhaustive because every actual triple
has positive unsigned clearance. The table records the source for each
of the 33 additional signs forced by triangle capacity.

The source rules are those of the
[lower-ear reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md),
including the barycentric bounds for the top pair. The strengthened
support envelopes use the
[pentagon ear inequality](PENTAGON_EAR_SUPPORT.md) with the preceding
area endpoints shown in the row. The clustered leaf applies the
[clustered-triangle bound](CLUSTERED_TRIANGLE.md) to its printed
containing and fan triangles.

All eight coordinate splits have both closed children. For each
polynomial terminal, the table prints every nonnegative source
and the exact positive integer weights of its products. The sums
give fifteen strictly negative rational constants and nine strictly
negative shifted-box ceilings by
[the coordinate-product rule](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md).

The complete cover has 61 contradictions, including the 24 polynomial
leaves, 24 empty intervals, twelve conflicting area bounds and the
clustered leaf. The independent exact replay checks 2,171 physical
factors, 4,600 coordinate updates, 33,543 area updates and 5,549
positive products.

```sh
node n10/hand/N6_BTTT_REMAINING_BITT_REPLAY.js - contradiction 'AEP-' n10/hand/N6_BTTT_REMAINING_BITT_TRIANGULAR_CENTRAL_RESIDUAL_CHAMBER_TABLES
python3 n10/hand/audit_n6_bttt_remaining.py --bitt-triangular-aep-negative
```
