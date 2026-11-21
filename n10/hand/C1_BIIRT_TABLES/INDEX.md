# Tables for the one-corner count with one lower point and two adjacent caps

Use the [contact domain and proof](../C1_BIIRT_SETUP.md)
for all labels, intervals and signs. The [domain](domain.md)
prints the fourteen intervals, the initial signs and all 120 actual
determinants. The [global stages](global.md) contract the box
before the refined branches. The [tree](tree.md) specifies every
binary determinant split or terminal. Coarse split rows require
only their named determinant. Other rows link to their individual
proof stages by the path name.

The [table notation](../C1_TOP_TRIPLE_CORE_TABLES/INDEX.md)
gives the catalogue references, scalar rules, coordinate contractions
and weighted-sum rules. In this count `top_cost` is
\((1-d)(1-f)-s\), by the top point's cap clearance.
The factor `right_support` is \(dc(1-c)-s\), by the two
actual right-cap tests. The initial `side_cap` witness is the
upper bound .42 on \(OCQ\) or \(1-4s\) on \(HDF\), according
to the indicated triangle. Both bounds are proved in the contact
domain. A weighted `contact` row uses \(h-d\) or \(c-f\),
as indicated. Both orders of \(h,c\) are allowed.

The separate arithmetic replay is
[audit_c1_biirt.py](../audit_c1_biirt.py).
