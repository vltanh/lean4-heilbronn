# Proof tables for the BIIR crossings

The [nine-point setup](../N6_BIIR_CORE_SETUP.md) gives the coordinates,
initial box and the placement rules specific to this count. The
[crossing catalogue](../N6_BIIR_ARCS.md) lists the remaining pairs of
open hull edges crossed by \(QR\). Some stages in \(BC,EF\),
\(BC,FH\), \(CS,FH\) and \(SE,HA\) use the lower point.
[Lower clearances](../N6_BIIR_CORE_SETUP.md#use-of-the-lower-point)

| Crossed edges | Sign splits | Coordinate cuts | Geometric leaves | Scalar leaves | Coordinate leaves | Weighted leaves |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| [\(AB,EF\)](AB_EF/tree.md) | 70 | 2 | 4 | 40 | 6 | 23 |
| [\(AB,FH\)](AB_FH/tree.md) | 14 | 0 | 1 | 11 | 1 | 2 |
| [\(AB,SE\)](AB_SE/tree.md) | 42 | 0 | 1 | 34 | 0 | 8 |
| [\(BC,EF\)](BC_EF/tree.md) | 85 | 22 | 2 | 67 | 12 | 27 |
| [\(BC,FH\)](BC_FH/tree.md) | 73 | 16 | 7 | 57 | 3 | 23 |
| [\(CS,EF\)](CS_EF/tree.md) | 35 | 0 | 4 | 18 | 5 | 9 |
| [\(CS,FH\)](CS_FH/tree.md) | 164 | 8 | 5 | 128 | 14 | 26 |
| [\(CS,HA\)](CS_HA/tree.md) | 41 | 0 | 0 | 23 | 8 | 11 |
| [\(EF,HA\)](EF_HA/tree.md) | 23 | 0 | 0 | 20 | 0 | 4 |
| [\(SE,FH\)](SE_FH/tree.md) | 50 | 0 | 0 | 40 | 4 | 7 |
| [\(SE,HA\)](SE_HA/tree.md) | 99 | 7 | 6 | 65 | 11 | 25 |
| Total | 696 | 55 | 30 | 503 | 64 | 165 |

The [literal row format](../C1_IIRTT_TABLES/INDEX.md) and the
[sign, scalar and coordinate rules](../C1_IIRTT.md) apply.
Each arc directory starts with its *domain.md*. At a sign split
on \(XYZ\), the two children append *m* and *p* for the negative
and positive signs of \([XYZ]\). Each uses the final box of the
parent. A coordinate cut appends *L* and *H* and retains the cut
face in both children. The file named for a path gives its stages
and, at a leaf, its contradiction.

For the contact rows, `order_ea`, `order_he`, `order_fb` and
`order_cf` are the differences \(e-a,h-e,f-b,c-f\).
The nonnegative factors `right_cost` and `right_actual` are
respectively \(e(1-b)-4s\) and \(e(j-b)-4s\). Both follow from
the two right-cap ears by the Cauchy–Schwarz inequality in the
[coarse box proof](../N6_BIIR_CORE_SETUP.md#the-coarse-coordinate-box).
The remaining count-specific factors are proved in the
[right-cap coordinate rows](../N6_BIIR_CORE_SETUP.md#right-cap-coordinate-rows),
the [line direction rules](../N6_BIIR_CORE_SETUP.md#the-direction-of-the-upper-point-line),
and the [crossing catalogue](../N6_BIIR_ARCS.md).

The weighted rows use the indicated nonnegative factors. In
the integer modes, `physical_bound` uses the named coordinate
factor. `physical_endpoint` multiplies it by the indicated
coordinate clearance from an endpoint. Each `rectangle` form is
the corresponding product of two endpoint clearances. The two
integer modes use the same bounds, with mode 2 also allowing
products of unsigned areas. [Weighted sums](../C1_IIRTT.md#weighted-contradictions)

In `unit_cube` mode set each physical coordinate to \(L_i+(H_i-L_i)t_i\)
for \(0\le t_i\le1\). A tag \([F,i,0]\) or \([F,i,1]\) multiplies
factor \(F\) by \(t_i\) or \(1-t_i\), respectively. A tag beginning
with `cube` multiplies the three indicated endpoint factors.
In `envelope_i_sign_digits`, each digit selects a lower or
upper endpoint for the affine upper estimate of one signed
product in relation \(i\). The sum is nonnegative because it
bounds the signed relation from above. For a positive product
term use opposite kinds of endpoints in its two factors. For
a negative term use two lower or two upper endpoints.
After expanding the positive integer combination, its constant
plus the sum of the positive nonconstant coefficients is a valid
upper bound. The printed bound at every such leaf is negative.

To check all eleven arcs with rational arithmetic, run the reader
from the repository root. To select an arc, pass its two crossed
edges as an argument such as `CS/FH`.

    python n10/hand/audit_n6_biir_core.py
