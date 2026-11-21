# Tables for a lower point, two central points and a top pair

Use the [proof](../C1_BIITT.md) for all point labels, the two hulls,
the initial bounds and the coordinate factors. The initial domains
include \(h=c\), the label orders \([OZQ]>0,[DPR]>0\), and both
signs of \([FPR]\), one for each hull.

| Top hull | Domain | Global stages | Case tree |
| --- | --- | --- | --- |
| \(DPF\), with \(R\) inside | [Initial data](tri/domain.md) | [Two stages](tri/global.md) | [Determinant splits](tri/tree.md) |
| \(DPRF\), convex | [Initial data](quad/domain.md) | [Two stages](quad/global.md) | [Determinant splits](quad/tree.md) |

For either hull the recorded sign and interval inferences use the
[exact table rules](../C1_TOP_TRIPLE_CORE_TABLES/INDEX.md).
The factor `top_cost` equals \((1-d)(1-f)-ns\) with \(n=3\)
in the triangular hull and \(n=4\) in the quadrilateral hull.
The factor `order_hc` is \(h-c\). The corresponding scalar
inequality uses \(A_{OHD}-A_{OCF}=h-c\).
Other hull-specific factors are defined in the proof.

In the convex hull, an initial `six_chain_end` bound on \(OCD\)
or \(OHF\) is .462. An `occupied_six_chain` bound uses the named
occupant in \(OCD\) or \(OFH\), and applies the indicated ceiling
on the other three consecutive chain triangles. The proof gives
the two orders and the three ceilings explicitly.
[Six-point chain bound](../SIX_POINT_MONOTONE_CHAIN.md)

An `opposite_central_wings` row forbids \([ODX]<0,[OFX']>0\)
for the indicated two distinct central labels \(X,X'\).
In the convex hull, it also applies to any two distinct labels
of \(Y,Z,Q\). Both tests place actual points in opposite wings.
A deduction with either forbidden sign already present forces
the other triangle to take the opposite sign. A terminal with
both forbidden signs gives the contradiction directly.
[Wing exclusions](../C1_BIITT_OPPOSITE_WINGS.md)

The separate arithmetic reader is
[audit_c1_biitt.py](../audit_c1_biitt.py). With no arguments it
verifies both hulls.
