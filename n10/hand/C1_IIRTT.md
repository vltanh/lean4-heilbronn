# One corner, two central points, a right-cap point and a top pair

In the normalized one-corner count `(0,2,1,2,0)`, denote the
central points by Y,Z, the right-cap point by Q, and the outer
and inner top points by P,R. Assume that every triangle of actual
points has unsigned doubled area at least \(s=93/1000\). The convex
top-pair alternative contradicts the seven-point chain bound. In the
remaining alternative, R lies inside DPF. The [domain proof](C1_IIRTT_SETUP.md)
gives the resulting heptagon, the initial signs and the fourteen
closed coordinate intervals. Coordinate transposition covers the
corresponding left-cap count.

## Exhaustive splits

Start at `r` in the [binary tree](C1_IIRTT_TABLES/tree.md).
A split on ABC has one child for each strict sign of the ordered
determinant, with suffix m for a negative sign and p for a positive
sign. The three labels are distinct actual points, so zero would
violate clearance. Each leaf has one of the following contradictions.

| Argument | Leaves |
|---|---:|
| Convexity, triangle occupancy, determinant signs or a corner bound | 46 |
| Inconsistent bounds on actual areas | 153 |
| A necessary coordinate inequality fails throughout an interval | 28 |
| A sum of nonnegative expressions has a negative upper bound | 14 |

The 240 splits give 241 leaves. A coarse row uses the full initial
box. A refined row starts at the final box of its named parent or
at the box from the [two unconditional stages](C1_IIRTT_TABLES/global.md).
Each further stage uses the completed coordinate bounds from the
preceding stage in that same row. All determinant assumptions are
the signs on the path from the root.

## Sign and area arguments

A stage starts with the domain signs and its branch signs. The
successive deductions use hull extremality, strict triangle or
quadrilateral capacity, affinity of a line test on a known container,
the five-point determinant identity, the distributed three-point
mesh, or a bound on the signed determinant. A multiaffine
determinant on a closed coordinate box takes its extrema at
vertices. Each corner witness gives the variable indices and the
differences between the maximum and all vertex values in increasing
binary-mask order. A `box_min` witness does this for the negative of
the oriented determinant.

The 46 geometric leaves comprise 21 clustered triples, 13 five-point
identities with every nonzero summand of the same sign, seven
triangle capacities, four contradictory mesh signs and one triangle
whose two possible orientations both fall below clearance. The
cluster and mesh rules, including all their hypotheses, are given in
[the geometric rules](C1_TWO_CENTRAL_THREE_CAPS.md) and the
[clustered-triangle proof](CLUSTERED_TRIANGLE.md).

Write \(A_T\) for the unsigned doubled area of the actual triangle
\(T\). A lower bound starts at its proven occupancy cost or the
minimum of the signed determinant on the current box. An upper bound
uses the square, a proven cap, or the maximum on that box.
The relations are the triangle fan sum, the signed four-, five-
and six-point determinant identities, barycentric testing of a
line, triangle and quadrilateral occupancy, and the convex support
inequalities. The `c1_norm` rows give \(hc\ge cd,hc\ge hf\).
The two central-quadrilateral rows use the two triangulations of
HCDF, whose doubled area is \(1-(h-d)(c-f)\le1\).
Each update cites its relation and earlier area bounds.
Divisions use positive lower bounds or the explicit numerator-sign
cases of the [scalar rules](SCALAR_AREA_INTERVALS.md).
[Area identities](AREA_RELATIONS.md) and
[quadrilateral support](QUADRILATERAL_AREA_SUPPORT.md).

For example, the leaf `rmmpmmmmmmp` has \(A_{HCF}\ge347/500\).
Subdivision at Y gives
\[
 A_{HFY}\le 290659/392500-93/1000-279/1000
          \le 368533/10^6 .
\]
The six-point identity reads
\[
 A_{HCF}A_{ODY}=A_{HFY}A_{OCD}-A_{CFY}A_{OHD}-A_{HCY}A_{ODF}.
\]
Use \(A_{OCD}\le2669/4535\) in the positive term, and the lower
bounds \(93/1000,93/250,279/1000,558/907\) in the negative terms.
Dividing the resulting positive upper bound by \(A_{ODY}\ge93/1000\)
gives \(A_{HCF}\le2291/20000<347/500\).
[Both arithmetic steps](C1_IIRTT_TABLES/rmmpmmmmmmp.md)

## Coordinate inequalities

For a bounded triangle of known sign, subtract its lower bound
from the signed determinant or subtract that determinant from its
upper bound. Both differences are nonnegative. Earlier area bounds
in each finished scalar stage likewise give nonnegative expressions
from its quadrilateral and linear relations. Contact ordering gives
\(h-d,c-f\ge0\), and \( (1-d)(1-f)\ge3s\) by the actual occupant in
DPF. These factors and the pentagon factors below suffice for every
coordinate step.

For the latter, take a convex pentagon in the cyclic order named by
its support relation. Use \(X,Y,Z,U,V,W,\Delta\) as in the
[pentagon support proof](PENTAGON_EAR_SUPPORT.md). For an ear floor
\(L\), let \(r(L)=\lfloor 10^4\sqrt L\rfloor/10^4\).
The stage has already proved all endpoints used in
\[
 K=(r(L_U)+r(L_V)+r(L_W))^2
      +\max(0,L_X-H_Z,L_Y-H_{BDE}).
\]
It follows that \(XY\ge K(X-Z)\), hence
\(H_X\,Y-KX+KZ\ge0\) and \((H_Y-K)X+KZ\ge0\). The integer defining
each floor is verifiable by two rational square comparisons.

Every coordinate step uses a previously established nonnegative
polynomial \(F\) that is affine in each of its variables separately.
Fix the target variable \(\xi\). At each corner of the other
coordinates that occur in \(F\), its restriction is a line
\(a_i\xi+b_i\). For a feasible \(\xi\), at least one of the lines
is nonnegative, since their maximum bounds \(F\) from above.
Intersect their nonnegative half-lines with the current interval
and take the interval hull of the union. An empty union is a
contradiction. Otherwise a rounded closed interval containing
that hull gives the next bound. The 28 coordinate leaves all end
with an empty union.

For instance, the first unconditional contraction tests
\(A_{OCQ}-s=ct-s\) on the initial \(t\)-interval. The two corner
lines in \(c\) have slopes \(93/850,160283/272100\) and constant
term \(-93/1000\). Their union gives \(c\ge253053/1602830\).
The next interval uses the weaker lower endpoint \(78939/500000\).
[Global stages](C1_IIRTT_TABLES/global.md)

## Weighted contradictions

For two quantities \(X,Y\) with known bounds and their actual
product, use the four endpoint inequalities from
[the affine product proof](LINEAR_AREA_CERTIFICATES.md). The
`rectangle` choices 0 through 3 use the nonnegative products
\((X-L_X)(Y-L_Y),(H_X-X)(H_Y-Y),(X-L_X)(H_Y-Y),(H_X-X)(Y-L_Y)\),
respectively. Labels `v0` through `v13` denote the physical
coordinates in the printed order. A `point_area` identity equates
an area to its correctly signed coordinate determinant. Other
summands cite an area relation from the same stage or a contact
inequality. Inequalities receive positive integer coefficients.
Equalities may receive either sign.

After collection, an expression \(C+\sum_i d_i Z_i\) has upper bound
\(C+\sum_{d_i>0}d_i H_i+\sum_{d_i<0}d_i L_i\). For a product
of two nonnegative quantities use the products of the corresponding
lower and upper endpoints. Each leaf prints the multipliers, every
coefficient, the constant and this upper bound. For example,
28 weighted terms give the upper bound
\(-6159098099661/10^{12}\) at one leaf. There are 1,297 weighted
terms across the fourteen contradictions.
[The 28-term sum](C1_IIRTT_TABLES/rppmmppmmppmmpmp.md)

The [table guide](C1_IIRTT_TABLES/INDEX.md) specifies the record
formats. Together these contradictions exhaust the triangular
alternative. With the convex alternative already excluded, the
count and its transpose cannot attain the proposed optimum.
