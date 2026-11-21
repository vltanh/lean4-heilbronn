# Three radial exclusions in the nine-point IRTT core

This note excludes the AB, BC and CQ radial cases. Together with
[the HA exclusion](N6_IRTT_CORE_HA.md), these are the four exhaustive
cases in [the complete IRTT proof](N6_IRTT_CORE_COMPLETE.md).

Use the actual nine-point setup and bounds of
[N6_IRTT_CORE_CAPS.md](N6_IRTT_CORE_CAPS.md), with all areas doubled and
every actual triangle at least s=93/1000. The hull is the strict octagon
A,B,C,Q,E,R,F,H, and S is inside its ERF ear. The coordinate order is
(a,b,c,e,f,h,u,v,r,w,j,k); there is no tenth point in this argument.

The exhaustive radial alternatives in
[N6_IRTT_CORE_GAPS.md](N6_IRTT_CORE_GAPS.md) are:

| Case | ARS | BRS | CRS |
| --- | --- | --- | --- |
| HA | + | + | + |
| AB | - | + | + |
| BC | - | - | + |
| CQ | - | - | - |

The line cannot pass through an actual hull vertex, since every actual
triangle is nonzero. Each row therefore denotes an open sign case; all
coordinate intervals used to exclude it are closed enlargements.

## Literal finite argument

The complete exact arguments are the JSON records in
[the radial table index](N6_IRTT_CORE_RADIAL_TABLES/INDEX.md).
Their printed numbers are sufficient to check each of the steps below.
Both the full author reader and a separate independent implementation
check all of these records.

Start with the actual twelve-coordinate closed box proved in
[N6_IRTT_CORE_DOMAIN.md](N6_IRTT_CORE_DOMAIN.md). These are exactly the
first input boxes in the three tables. In particular b<=19/100,
a<=97/190, and h>=A0+93/190. All denominators are positive.

Every cyclic triple of the octagon is positive. S has all eight inward
edge tests, its three inward ERF tests, and the seven inward neighbor
chord tests from the empty ears. These signs, affinity on ERF, the row's
radial signs, and the displayed Plücker deductions reproduce every
printed actual sign. No sign comes from a feasible relaxation.

Each retained coordinate factor is nonnegative on the actual configuration.
The source tags have the following meanings:

* `actual-area` subtracts the occupied-triangle cost from its positive
  actual area. Costs for zero through three occupants are
  s, 3s, (149/20)s and (4427/500)s, as in the published N6 scalar rules.
* `endpoint-lower` is hc-4s. The two clearances a(c-b)>=s and
  b(h-a)>=s imply hc>=4s by the two-term arithmetic–geometric mean
  inequality applied to ab and (h-a)(c-b).
* `contact-order`, `right-support` and `right-clearance` are the contact
  orders, e(1-b)>=4s and the four actual CEQ consequences in
  [N6_IRTT_CORE_DOMAIN.md](N6_IRTT_CORE_DOMAIN.md).
* `core-rs-cut-gap` and `core-rs-bary-gap` are the four determinant
  differences and the three positive-coefficient barycentric weakenings
  in the radial-gap note. The fixed normalized weight is 2325/8963.
* `weighted-barycentric-core-width` expands the four affine coordinate
  inequalities for S in ERF. It uses the actual fan costs and the fixed
  upper cap min(8963/25000,(1-e0)(1-f0)), evaluated at the stage's
  already proved input box.
* `support-envelope` uses the published convex-pentagon support rate 11s,
  or the published occupied-quadrilateral rate recorded in the source.
  If X Y>=q(X-Z) and X<=N, then N Y-qX+qZ>=0. Here N is the lesser
  of the unit-square cap and the largest input-box vertex value of X.
* `earlier-area` substitutes exactly the specified immutable area endpoint
  from a preceding stage of this same radial case. It never cites a
  later stage or another row of the radial table.

All used factors are multiaffine in the twelve displayed coordinates.
For a coordinate x, fix all other coordinates at box endpoints and
write the factor as A x+B. The printed list is the complete set of
distinct resulting lines. Any actual feasible x must be feasible for
at least one line: a multiaffine function is a convex combination of
its endpoint values in the other coordinates. Intersect each line's
nonnegative half-line with the old x interval, take the interval hull
of their union, and round the lower endpoint downward and the upper
endpoint upward to multiples of 10^-6. This is each printed coordinate
step. At a terminal step all of those intersections are empty.

Between coordinate stages the area records use actual unsigned areas.
Every initial lower bound has its explicit occupant list. Every vertex
upper cap prints all corner differences. The remaining initial upper
caps are exactly the four core six-chain caps and the empty-octagon-ear
cap. Relations are the printed fan sums, Plücker identities, affine
four-point identities, occupied-quadrilateral costs, support inequalities,
octagon ear sum, and normalized barycentric identities. Every update
names only earlier bound versions in the same scalar stage, prints its
exact unrounded value, and rounds outward to 10^-6. Negative actual
orientations exchange the two barycentric endpoint directions. The
next coordinate stage inherits the previous coordinate box and cites
only already established scalar bounds.

The finite calculations end as follows:

| Case | Stages | Coordinate steps | Scalar updates | Impossible coordinate |
| --- | --- | --- | --- | --- |
| AB | 2 | 157 | 1742 | a |
| BC | 1 | 26 | 0 | c |
| CQ | 2 | 193 | 374 | e |

The final contradictions inspect respectively 8, 4 and 16 distinct
endpoint lines. Thus all three named radial sign cases are impossible.

## Reproduction and review scope

Run the standard-library reader:

    python n10/hand/N6_IRTT_CORE_RADIAL_check.py

It reconstructs actual determinants, all actual sign deductions, the
initial boxes, every retained physical source, every coordinate line and
outward update, every scalar source/relation/update, immutable earlier
references, and the final empty intervals. It imports no discovery
engine and requires no files from `/tmp`. The exact replay totals are
5 stages, 55 sign deductions, 86 physical factors, 376 coordinate
updates, 336 initial area bounds, 3753 scalar relations and 2116 scalar
updates. The separate [independent reader](n6_irtt_core_independent.py)
reconstructs the 84 actual signs and the twelve initial coordinate bounds,
and checks the same sources and exact counts. Its implementation of the
scalar steps uses rational functions and independent endpoint evaluation.
The author corruption suite rejects 21 deliberate errors:

    python n10/hand/N6_IRTT_CORE_RADIAL_MUTATIONS_check.py
