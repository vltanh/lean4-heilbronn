# One corner, two central points and all three exterior caps

All areas in this note are doubled. Put \(s=93/1000\), and write
\([ABC]=\det(B-A,C-A)\) and \(A_{ABC}=|[ABC]|\).
Take the five actual contacts

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad
 0<d\le h\le1,\quad0<f\le c\le1.
\]

The five remaining actual points are

\[
 Y=(u,v),\quad Z=(z,w),\quad P=(p,q),\quad
 Q=(r,t),\quad R=(j,k).
\]

Assume \(Y,Z\) are strictly inside \(HCDF\), and \(P,Q,R\)
are respectively in the closed corner triangles \(CD(1,0)\),
\(DF(1,1)\), \(HF(0,1)\), on the outer side of their actual
contact edges. All ten points are distinct and in the closed unit
square. Suppose every actual unsigned triangle has area at least \(s\).

**Theorem.** These hypotheses are inconsistent.

This excludes the complete C1 count
\((k,j,r,t,l)=(0,2,1,1,1)\) in
[the exterior catalogue](C1_EXTERIOR_REDUCTION.md). It requires no
maximizing hypothesis, coordinate neighborhood or unprinted orientation.
The other C1 counts remain separate obligations.

The argument consists of this note and
[the fixed proof index](C1_TWO_CENTRAL_THREE_CAPS_TABLES/INDEX.md),
including its common-bound table and all 58 linked terminal tables.
They print every geometric deduction, scalar source, physical polynomial,
endpoint affine line, positive multiplier, expanded sum and contradiction.
The table grammar is specified below. These are literal finite
derivations; no numerical search result is a premise.

## 1. Normalization and the actual convex hull

Transpose the square if necessary to arrange \(h\ge c\). This
exchanges the right and left caps and their point labels; both remain
occupied. Independently exchange \(Y,Z\) to arrange \([OYZ]>0\).
The determinant is nonzero by actual clearance. These two choices do
not restrict any remaining coordinate or determinant.

The eight actual exterior points have strict convex cyclic order

\[
 O,C,P,D,Q,F,R,H.                                      \tag{1}
\]

Here is a direct justification. The cap interiors are disjoint exterior
pieces of the convex contact pentagon \(OCDFH\), so replacing its
three cap edges by their two-edge chains gives a simple polygon.
The turns at \(P,Q,R\) are their strict cap tests. Those at \(O,C,H\)
follow from the coordinate axes and the positive actual clearances.
The two remaining turns are nonnegative product sums:

\[
\begin{aligned}
 [PDQ]&=(1-p)(t-d)+(d-q)(1-r),\\
 [QFR]&=(r-f)(1-k)+(1-t)(f-j).
\end{aligned}                                        \tag{2}
\]

The cap placements give \(q<d<t\), \(j<f<r\), and all square
factors are nonnegative. Actual clearance excludes zero in (2), so
every turn is strict. A simple polygon with every interior angle
less than \(\pi\) is strictly convex, proving (1).

Thus its 56 cyclic triangle signs are positive, each exterior vertex
is extreme among all ten points, and \(Y,Z\) have the eight inward
edge tests of (1). Their central placement additionally gives, for
\(T=Y,Z\),

\[
 OHT<0,\quad OCT>0,\quad HCT>0,\quad HFT<0,
 \quad CDT>0,\quad DFT>0.                            \tag{3}
\]

Equations (1), (3), and \(OYZ>0\) give exactly 81 distinct initial
actual signs after the repeated edge tests are identified.

## 2. A complete continuous coordinate box

[THREE_CAP_CONTACT_BOUNDS.md](THREE_CAP_CONTACT_BOUNDS.md) applies
to precisely the three occupied caps in this statement, without any
lower-point assumption. Put

\[
 d_0=93/250,\quad\alpha=79/100,\quad\beta=108/125,
 \quad\ell=31/288,\quad\chi=5039/7850,
 \quad\theta=40827/78500,\quad p_0=13597/19750.
\]

Its complete weakened closed box is

| Coordinates | Lower bound | Upper bound |
| --- | ---: | ---: |
| \(h,c\) | \(d_0\) | \(\beta\) |
| \(d,f\) | \(d_0\) | \(\alpha\) |
| \(u,v,z,w\) | \(\ell\) | \(907/1000\) |
| \(p,k\) | \(p_0\) | \(1\) |
| \(q,j\) | \(\ell\) | \(\chi\) |
| \(r,t\) | \(\theta\) | \(1\) |

The proof there derives the contact inequalities

\[
 dc(1-c)\ge s,\qquad fh(1-h)\ge s,\qquad
 (1-d)(1-f)\ge s,                                   \tag{4}
\]

from actual cap clearances and the actual \(OC,OH\) clearances.
In particular it does not assign an actual area floor to a virtual
corner triangle. The upper central-coordinate bounds use actual
\(CD,DF,HF\) clearances. Outer-square boundary positions are retained.

The universal coordinate table proves 23 additional bounds by the
explicit positive polynomial rule in Section 5. Each starts from the
box above with no case assumptions. They may therefore be used in
any subsequent leaf. A reference to such a bound cites its printed
index, coordinate, side, and outward-rounded endpoint.

## 3. The geometric and scalar rules

Every actual triangle has positive unsigned area. The lower costs for
zero through three named actual interior points are, respectively,

\[
 s,\quad3s,\quad347/500,\quad823/1000.               \tag{5}
\]

The last two are below \((4+2\sqrt3)s\) and
\(((11+3\sqrt5)/2)s\). The actual convex quadrilateral costs for
one, two, or at least three named occupants are

\[
 449/1000,\qquad8s,\qquad93/91.                      \tag{6}
\]

For (5) use the established triangle and endpoint occupancy theorems;
for (6) use [AREA_RELATIONS.md](AREA_RELATIONS.md), Section 4, and
[SQUARE_QUADRILATERAL_THREE.md](SQUARE_QUADRILATERAL_THREE.md).
Four actual occupants of an actual unit-square triangle are impossible.
Three occupants cannot form a clustered triple, by
[CLUSTERED_TRIANGLE.md](CLUSTERED_TRIANGLE.md). The distributed
mesh signs and its three ear, inner-area and connecting-area bounds
are exactly those proved in
[C1_TWO_LOWER_TOP_GEOMETRY.md](C1_TWO_LOWER_TOP_GEOMETRY.md), Sections
3 and 5. Those rules concern their named actual points and use none
of that note's separate lower-point placements.

The geometric rows use five explicit rules:

1. `extreme`: two inward tests cannot be completed to contain an
   exterior vertex of (1) in a triangle of three other actual points.
2. `central_line`: an affine line functional on either \(Y,Z\) is a
   convex combination of its values at \(H,C,D,F\). If all off-line
   vertices have one strict sign, the central value has that sign.
   Conversely, a zero or opposite central value forces any sole
   undetermined vertex to the opposite side. Vertices on the line
   contribute exactly zero.
3. `capacity`: a printed triangle upper bound and named existing
   occupants exclude one further occupant when the cost of adding it
   is larger. Two inward tests then force the remaining test outward.
4. `plu`: the exact five-label identity
   \([abc][ade]-[abd][ace]+[abe][acd]=0\) forces the sole missing
   sign when the other two product terms have the same sign.
5. `mesh`: the named distributed triple has its proved mesh signs.

Every inferred sign is on three distinct actual labels. A contrary
sign is a geometric contradiction; no zero actual determinant is
allowed. Each containment checks every inward edge test.

Scalar tables use actual fan sums; the signed five-label identity;
the six-label identity

\[
 [ABC][IJP]=[PBC][IJA]+[APC][IJB]+[ABP][IJC];          \tag{7}
\]

the signed four-point identity; and (6). They also use

\[
 A_{OHD}\ge A_{OCF},\quad A_{OHC}\ge A_{OCD},\quad
 A_{OHC}\ge A_{OHF},\quad
 A_{HCD}+A_{HDF}=A_{HCF}+A_{CDF}\le1.                \tag{8}
\]

Indeed these are \(h\ge c\), \(hc\ge cd,hf\), and
\(W=1-(h-d)(c-f)\le1\). The rows print every orientation and
occupant witness before using an unsigned relation.

The finite arithmetic rules are those of
[SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md) and
[AREA_RELATIONS.md](AREA_RELATIONS.md): substitute upper bounds for
positive numerator terms and lower bounds for subtracted terms to
obtain an upper numerator, reverse them for a lower numerator, and
divide only with the required positive bounds and numerator sign.
When an upper product numerator is nonpositive, positivity is already
contradictory; recording an upper bound zero is sufficient. Fan and
linear rows use the indicated sum or isolated variable directly.
Every lower endpoint is rounded down and every upper endpoint up to
\(10^{-6}\). References name earlier immutable versions of bounds.
The final interval table is checked against the last such version,
not accepted as a separate assumption.

An initial upper bound is one, the exact maximum of the signed
determinant at the coarse-box vertices, or the actual side-base bound
\(A_{OCP},A_{OHR}<21/50\) from
[SIDE_CAP_BASE_TRIANGLES.md](SIDE_CAP_BASE_TRIANGLES.md). The determinant
is multiaffine, so its box maximum is its finite vertex maximum.

## 4. Every physical polynomial source

The physical variables are ordered
\((h,c,d,f,u,v,z,w,p,q,r,t,j,k)\). A term row \([m,a]\) means
\(a\prod_{i\in m}x_i\), with zero-based indices and repeated
indices retained as powers. The empty index list is a constant.

The `lo_ABC` and `hi_ABC` sources are \(A_{ABC}-l\) and
\(u-A_{ABC}\) for their proved final scalar endpoints. The
`quad_i` and `linear_i` sources are the corresponding printed actual
quadrilateral or linear relation, with its right side subtracted.
The order sources are \(h-d,c-f,h-c\). The remaining elementary
sources are (4) with \(s\) subtracted and

\[
 1-(h-d)(c-f)-8s\ge0,                               \tag{9}
\]

since the two central points are inside the actual quadrilateral.

Here are the support sources, including every possible denominator
sign. For a printed occupied actual convex quadrilateral in cyclic
order \(A,B,C,D\), set

\[
 X=A_{ABC},\ Y=A_{ABD},\ Z=A_{ACD},\ V=A_{BCD},
 \quad W=X+Z=Y+V,\quad\Delta=Y-Z=X-V.
\]

[QUADRILATERAL_SUPPORT.md](QUADRILATERAL_SUPPORT.md), with the
refinement in [SIX_POINT_ENDPOINT_REFINED.md](SIX_POINT_ENDPOINT_REFINED.md),
gives \(XY\ge qs\Delta\). With two occupants start with
\(q=1142/125\); with one start with \(q=29/5\). For two
occupants, their counts \((n_Z,n_V)\) in the opposite triangles
permit the additional rates

| Unordered counts | Rate |
| --- | ---: |
| \((0,0),(0,1)\) | \(9\) |
| \((0,2)\) | \(139/10\) |
| \((1,1)\) | \(12\) |
| \((1,2)\) | \(199/10\) |
| \((2,2)\) | \(149/5\) |

Take the larger of the applicable rate and \(1142/125\).
For one occupant the rates for \((0,0),(0,1),(1,1)\) are
\(29/5,149/20,12\). With more occupants the generic two-occupant
rate suffices by discarding additional points.

Let the proved positive triangle floors be \(l_X,l_Y,l_Z,l_V\),
and let \(C_0\) be the actual quadrilateral floor (6). Put

\[
 C_*=\max(C_0,l_X+l_Z,l_Y+l_V),\qquad
 M=\min(l_Xl_Y,l_Zl_V).
\]

The exact identity \(XY-W\Delta=ZV\) proves
\(XY\ge C_*\Delta+M\) for both signs of \(\Delta\), as in
[QUADRILATERAL_AREA_SUPPORT.md](QUADRILATERAL_AREA_SUPPORT.md).
If \(L_X\ge X\), multiply by \(Y>0\) to obtain the two
nonnegative sources

\[
 L_XY-qs\Delta,\qquad L_XY-C_*\Delta-M,             \tag{10}
\]

and likewise with \(L_YX\). The cap is either the printed scalar
upper bound or the appropriate actual contact cap

\[
 A_{HCD}\le h,\quad A_{HCF}\le c,\quad
 A_{HDF}\le1-d,\quad A_{CDF}\le1-f.                 \tag{11}
\]

Their remainders are \(c(h-d),h(c-f),(1-f)(h-d),(1-d)(c-f)\), respectively.
The names `support_i_rot_axis_tag` and `area_support_i_rot_axis_tag`
specify the printed quadrilateral relation, its cyclic rotation, the
capped triangle and the scalar or contact cap. Every triangle lower
bound in (10) has its earlier scalar source. No support-orientation
assumption is made.

If both diagonals separate the two actual quadrilateral occupants,
`spread_i_edge_sign` is

\[
 W-\gamma s\ \mathbin{\pm}
 \bigl([JYZ]-[IYZ]\bigr)\ge0,                       \tag{12}
\]

where \(IJ\) is the named diagonal and the actual occupant labels
replace \(Y,Z\) when necessary. Use \(\gamma=6\) for \(HCDF\):
there \(W\le1\), so \(s/W\ge1/11\). For other quadrilaterals
use \(\gamma=1457/250<3+2\sqrt2\), the unconditional version of
[QUADRILATERAL_SPREAD.md](QUADRILATERAL_SPREAD.md). In diagonal
coordinates the displayed determinant difference divided by \(W\)
is exactly the signed coordinate separation, which proves (12).

Finally every five-point subsequence of (1), in either cyclic direction,
has the convex-five support inequality of
[N7_THREE_FIVE_UPPER_HEIGHT.md](N7_THREE_FIVE_UPPER_HEIGHT.md), Section 6.
For its cyclic order \(A,B,C,D,E\), put
\(X=A_{ABE},Y=A_{ADE},Z=A_{ABD}\). Then
\(XY\ge11s(X-Z)\), including nonpositive \(X-Z\). The source
`pent_order_rot_axis_tag` caps either factor by its printed scalar
upper bound or (11). Reversing the cyclic order uses unsigned areas;
it does not impose an additional square symmetry.

Every displayed physical source is therefore nonnegative on the
stated continuous configuration domain.

## 5. Exact coordinate and positive polynomial arguments

For multiaffine sources the coordinate rule is
[MULTIAFFINE_BOX_BOUNDS.md](MULTIAFFINE_BOX_BOUNDS.md). Fix one
coordinate and evaluate the others at every box endpoint. The source
is a convex combination of the resulting affine lines \(ax+b\).
At least one such line must be nonnegative. Intersect all these
individual half-lines with the old coordinate interval and take
their interval hull. The tables print the complete distinct line
list, the exact hull and its outward \(10^{-6}\) rounding. An
empty union is an explicit contradiction. A source with a repeated
coordinate power is never used with this interpolation rule.

For a printed box \([a_i,b_i]\), set

\[
 x_i=a_i+(b_i-a_i)t_i,\qquad0\le t_i\le1.
\]

Every width is positive. The endpoint factors are
\(L_{2i}=x_i-a_i,L_{2i+1}=b_i-x_i\).
Each combination row specifies a positive integer and a product of
these endpoint factors and the proved sources in Section 4. Each
product is nonnegative. Expand their weighted sum exactly after the
substitution above:

\[
 F(t)=c_0+\sum_{m\ne\varnothing}c_m\prod_{i\in m}t_i.
\]

Regardless of repeated powers, all monomials are in \([0,1]\).
Consequently

\[
 0\le F(t)\le U:=c_0+\sum_{m\ne\varnothing,\ c_m>0}c_m. \tag{13}
\]

Every term and coefficient is printed in `c1-shifted-polynomial`.
A negative printed \(U\) is a strict contradiction.

The 23 universal coordinate bounds have the same arithmetic form,
with \(\varepsilon Nt_j\) added to the positive weighted sum,
where \(N>0\) is the printed integer `objectiveWeight` and
\(\varepsilon=1\) for an upper bound, \(-1\) for a lower bound.
That sum is at least \(\varepsilon Nt_j\), while (13) bounds it
above by \(U\). Hence

\[
 t_j\le U/N\quad(\varepsilon=1),\qquad
 t_j\ge-U/N\quad(\varepsilon=-1).                  \tag{14}
\]

The printed value is (14) transformed back to \(x_j\). Every such
combination uses only the original common box and its earlier scalar
proof, independently of the later bounds. Leaf refinements then cite
these completed bounds, so there is no circular box dependence.

The 24 area-linear terminal arguments use the identical positive-sum
principle in actual area variables. Their product affine envelopes
and exact source-endpoint requirements are proved in
[LINEAR_AREA_CERTIFICATES.md](LINEAR_AREA_CERTIFICATES.md). The
tables print each selected envelope, its original signed product
identity, both endpoint sources, its expanded affine coefficients,
positive multiplier, total affine sum and negative interval upper
bound. Every coefficient and final bound is reconstructed exactly.

## 6. Literal table grammar and complete coverage

The index lists all 57 nonzero actual-determinant splits, each with
both children, and every leaf's assumptions. The positive actual
minimum excludes zero, so these alternatives cover the whole count.
Each leaf restarts from (1)-(4) and its own branch assumptions.

Named fenced tables contain one JSON tuple or named mathematical
record per line. This is literal tuple notation for the finite
argument, with exact fractions; it contains no encoded archive.

| Table | Mathematical contents |
| --- | --- |
| `c1-node`, `c1-geometry` | Actual branch premises, mesh witnesses and every geometric inference |
| `c1-area-initial` | Bound name, actual triangle, direction, rational value and geometric witness |
| `c1-area-relations` | Original relation index, full signed relation and actual geometric witness |
| `c1-area-updates` | New bound, relation, rule, direction, triangle, value and earlier source names |
| `c1-area-final` | Final endpoints and the immutable records which prove them |
| `c1-area-end` | The same actual area with a lower bound larger than its upper bound |
| `c1-physical-factors` | Source names and all physical polynomial terms, in the coordinate order of Section 4 |
| `c1-refinement-metadata`, `c1-coordinate-updates` | Initial universal sources, every endpoint-line step, final box and any empty endpoint union |
| `c1-coordinate-certificate` | Coordinate, side, positive objective integer, exact bound and original source box for (14) |
| `c1-physical-certificate`, `c1-combination`, `c1-shifted-polynomial` | Box, all positive weighted products, every expanded coefficient and exact upper bound (13) |
| `c1-linear-relations`, `c1-linear-certificate` | All actual-area envelope factors, endpoint witnesses, multipliers and the final affine contradiction |

The universal bound file precedes the individual leaves. Scalar
references are local to their printed stage and retain the values
at which they were introduced. Relation indices refer to their
printed original-index rows, even when unused relations are omitted.
The physical source names retain those same indices.

The complete terminal inventory is

| Kind | Number |
| --- | ---: |
| Actual-area interval contradictions | 8 |
| Exact positive actual-area affine combinations | 24 |
| Exact positive physical polynomial combinations | 19 |
| Empty unions of necessary endpoint half-lines | 7 |
| **Total** | **58** |

Every leaf gives one strict contradiction under its full stated
premises. Together with both children of every actual sign split,
this proves the theorem.

## 7. Verification

The independent
[manuscript audit](audit_c1_two_central_three_caps.py) reconstructs
the argument directly from the 60 literal Markdown tables. It imports
no discovery engine and uses no saved discovery JSON as a premise.
It verifies 965 distinct physical sources, all 23 universal coordinate
combinations, 789 coordinate updates and 8,483 positive products,
5,680 final scalar endpoints against their immutable source records,
and all 57 splits/58 leaves. The earlier independent geometric/scalar
reader replays the actual signs and 7,003 retained scalar updates
inside this fixed mathematical domain.

The exact local command is

~~~text
python3 n10/hand/audit_c1_two_central_three_caps.py
~~~

Eight independent mutation checks reject a stale final scalar value,
a missing scalar source, a changed physical polynomial, an omitted
endpoint line, a zero multiplier, an incorrect shifted coefficient,
an incorrect inherited universal endpoint, and a deleted binary
leaf even after the inventory totals are edited to match. The
geometric source families, normalization, both support-denominator
signs, actual affine caps and full written theorem have also received
independent review. The complete stated count is therefore closed.

This theorem concerns the single stated C1 count. It does not close
the remaining exterior counts or the global C1, N6 or N7 parents.
