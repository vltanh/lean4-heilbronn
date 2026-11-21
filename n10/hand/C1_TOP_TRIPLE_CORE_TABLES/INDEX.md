# Reading the one-corner top-word exclusions

Use the [nine-point proposition](../C1_TOP_TRIPLE_CORE.md) for all
contact coordinates, hull signs, and the symmetry relating the six
possible words. The first three rows use nine points. The final two
rows use ten points in the remaining word of IITTT and BITTT.

| Four signs | Domain and determinant expansions | Initial contractions | Binary case tree |
| --- | --- | --- | --- |
| \(----\) | [Domain](mmmm/domain.md) | [Contractions](mmmm/global.md) | [32 splits](mmmm/tree.md) |
| \(--+-\) | [Domain](mmpm/domain.md) | [Contractions](mmpm/global.md) | [46 splits](mmpm/tree.md) |
| \(++-+\) | [Domain](ppmp/domain.md) | [Contractions](ppmp/global.md) | [64 splits](ppmp/tree.md) |
| \(+--+\), IITTT | [Domain](iittt-pmmp/domain.md) | [Contractions](iittt-pmmp/global.md) | [140 splits](iittt-pmmp/tree.md) |
| \(+--+\), BITTT | [Domain](bittt-pmmp/domain.md) | [Contractions](bittt-pmmp/global.md) | [162 splits](bittt-pmmp/tree.md) |

Read each tree starting at `r` in its own directory. For a word such as
`rmp`, read the corresponding file `rmp.md` there. The negative and
positive branches append `m` and `p` respectively. For a coordinate
cut the closed lower and upper children append `L` and `H`.
Coordinate indices
are zero-based in the order \(h,c,d,f,u,v,z,w,p,q,r,t,j,k\), where
\(Z=(z,w), P=(p,q), Q=(r,t), R=(j,k)\). The two slots \(u,v\)
are unused in the first three rows and may each be fixed to \(1/2\)
there. None of the 84 nine-point determinant expansions uses either
slot. In IITTT and BITTT they are the coordinates of \(Y\), the
second central point or the lower point, respectively. Both rows
use all 120 actual determinants.
[IITTT domain and factor definitions](../C1_TOP_TRIPLE_COMPLETION.md) and
[BITTT domain and additional factors](../C1_BITTT.md)

The stage gives the coordinate box and the signed branch assumptions.
The first global stage uses the domain box. Each subsequent stage
takes the output box of the preceding one, or the explicitly named
parent or global result. Within a stage, each integer after
`steps`, `initial`, `relations`, `updates`, or `final` identifies a
literal row of the deduction, initial, relation, update, or bounds
catalogue respectively. To locate row \(i\), use file suffix
\(\lfloor i/1000\rfloor\) padded to three digits in the same directory.
For example deduction 17 for \(----\) is in the [first deduction
table](mmmm/deduction-000.md). A relation index *inside* a stage is its
zero-based position among that stage's relation rows.

A sign deduction gives its determinant and its reason. Cyclic hull
tests, a point's three or four inward tests, and the signs in a
zero determinant identity give the indicated sign or contradiction.
An initial `lo\_T` or `hi\_T` gives the floor or ceiling on the
unsigned doubled area of \(T\), with the named occupants, box corners
or unit-square bound as witnesses. An update cites the earlier
bounds exactly as they stood at that step. The terminal `end` refers
to incompatible bounds or an incompatible barycentric equality.
[Scalar rules](../SCALAR_AREA_INTERVALS.md) and [determinant identities](../AREA_RELATIONS.md)

For a convex pentagon \(ABCDE\), write
\(X=A_{ABE},Y=A_{ADE},Z'=A_{ABD},\Delta=X-Z'=Y-A_{BDE}\).
Let \(r_U,r_V,r_W\) be the displayed nonnegative lower bounds
on the square roots of its consecutive ear areas. The support row
is \(XY\ge K\Delta\), where
\[
 K=(r_U+r_V+r_W)^2+\max(0,L_X-H_{Z'},L_Y-H_{BDE}).
\]
The gap term is at most \(\Delta\) when \(\Delta>0\).
If \(\Delta\le0\), then \(K\Delta\le0\). All square-root lower bounds
can be checked by squaring. The row `pentagon_initial` includes its
actual endpoint witnesses. A later strengthening uses the stage's
final endpoints with square roots rounded down to multiples of
\(10^{-4}\). The factors `pent_hiX_i` and `pent_hiY_i` replace
\(X\) or \(Y\) in the product by its upper bound.
[Pentagon proof](../PENTAGON_EAR_SUPPORT.md)

A `tighten` row records a nonnegative polynomial, the coordinate
to bound, all of its affine endpoint lines, and both the exact and
outward-rounded intervals. A `quad_i` or `linear_i` factor is the
nonnegative difference in the indicated relation. `top_cost` means
\((1-d)(1-f)-\tau\), with \(\tau=(149/20)s\) in the first three
rows and \(\tau=(1457/250)s\) for IITTT and BITTT. `order_hc` means \(h-c\)
and is available in the two self-transpose words \(--+-\) and \(+--+\).
The four contact upper bounds on \(HCD,HCF,HDF,CDF\) are
\(h,c,1-d,1-f\). Subtract the corresponding signed area to obtain
the indicated nonnegative factor. [Interval rule](../MULTIAFFINE_BOX_BOUNDS.md)

A `weight` row multiplies an exact equality or an indicated
nonnegative expression. In product modes `1` and `2`, `vN` is
coordinate \(N\) and an actual triple denotes its unsigned area.
An asterisk denotes the product of the two displayed nonnegative
quantities. The four choices `0,1,2,3` of a `rectangle` row stand
for \((X-L_X)(Y-L_Y),(H_X-X)(H_Y-Y),(X-L_X)(H_Y-Y),
(H_X-X)(Y-L_Y)\), respectively. A `point_area` row gives the
signed coordinate determinant minus its unsigned area variable.
A `relation` uses the indicated local relation, oriented as in its
table. A `physical_bound` uses the corresponding named polynomial
directly, and `physical_endpoint` multiplies it by the indicated
nonnegative coordinate distance to an endpoint. All inequalities have
positive weights. Take the lower and upper bounds of a product by
multiplying the respective endpoints. Sum the weighted rows and use
the upper endpoint at each positive coefficient and the lower endpoint
at each negative coefficient. The final `sum` row gives the collected
coefficients and their strictly negative ceiling. [Positive
combination rule](../LINEAR_AREA_CERTIFICATES.md)

In the `unit_cube` mode write each coordinate as
\(L_i+(H_i-L_i)t_i\), with \(0\le t_i\le1\). This representation
also covers a degenerate interval. Each `cube` row multiplies three
factors, using \(t_i\) for side 0 and \(1-t_i\) for side 1. Every
other row uses a named nonnegative polynomial \(G\) in these new
coordinates. An optional coordinate and side multiply \(G\) by
the corresponding cube factor. The source `envelope_i_o_bits`
means the upper polynomial envelope of local product relation \(i\),
oriented by \(o\). Either orientation is valid for an equality.
A support inequality uses its nonnegative orientation. For a term
\(aXY\) with \(a>0\), bit 0 uses endpoints \(x=L_X,y=H_Y\)
and bit 1 uses \(x=H_X,y=L_Y\). For \(a<0\), both endpoints
are lower for bit 0 and both upper for bit 1. In each case
\(a(yX+xY-xy)-aXY=-a(X-x)(Y-y)\ge0\). Linear terms are
unchanged and take bit 0. Consequently the envelope of the entire
nonnegative relation is nonnegative. After summation, a comma in a
monomial joins factors and a repeated index gives a power. All
nonconstant monomials are in \([0,1]\), so the upper bound is the
constant plus the sum of positive collected coefficients.

The optional independent arithmetic reader is
[audit_c1_top_triple_core.py](../audit_c1_top_triple_core.py).
Pass `iittt-pmmp` and `bittt-pmmp` to include the two ten-point rows.
