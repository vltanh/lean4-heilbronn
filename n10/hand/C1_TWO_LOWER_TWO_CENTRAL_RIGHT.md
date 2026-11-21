# Two lower points, two central points, and one right-cap point

The [literal proof index](C1_TWO_LOWER_TWO_CENTRAL_TABLES/INDEX.md)
contains a complete cover of the 24 actual angular roots, with 185
binary sign splits and 209 contradictory leaves. Every source and
derivation is printed in the linked tables.

All areas in this note are doubled. Put \(s=93/1000\), write
\([ABC]=\det(B-A,C-A)\), and put \(A_{ABC}=|[ABC]|\).
The five actual contacts are
\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad d\le h,\ f\le c.
\]
The other actual points are \(Y=(u,v),Z=(z,w),P=(p,q),
Q=(r,t),R=(j,k)\). The points \(Y,Z\) are strictly inside \(OHC\),
\(P,Q\) strictly inside \(HCDF\), and \(R\) belongs to the closed
corner triangle \(CD(1,0)\), on the exterior side of its actual
edge \(CD\). All ten points are distinct, lie in the closed unit
square, and have every actual unsigned triangle area at least \(s\).
**Theorem.** These hypotheses are inconsistent. This excludes the C1 count
\((k,j,r,t,l)=(2,2,1,0,0)\). The top-cap count is a separate obligation.

## 1. The exhaustive roots and complete coordinate domains

[The geometry note](C1_TWO_LOWER_TWO_CENTRAL_GEOMETRY.md), Sections
1–3, supplies the following reductions without a maximizing assumption.
Choose \(Y\) with smaller O-barycentric coordinate in \(OHC\).
Then \(Z\) belongs to \(OHY\) or \(OCY\). Retain both cases.
Independently relabel \(P,Q\) so \([OPQ]>0\). No condition
\(h\ge c\) is imposed. All outer-square boundary positions remain.

The actual exterior polygon is strictly convex in cyclic order
\(O,C,R,D,F,H\). Its vertices are extreme among all ten points;
the other four points satisfy all its inward edge tests. The geometry
note gives all additional lower, central, cap, and cross signs and
the rational closed coordinate box for each lower fan.

Actual clearance makes all five rays at \(O\) distinct. Their orders
respect the lower pair order and \(P<Q\). The actual triangle \(OCR\)
has capacity one, so at most one of the four other free rays precedes
\(R\). Thus \(R\) is first or second. There are exactly twelve
admissible orders for each lower fan, giving the 24 literal roots.
The `c1-roots` block lists each order and every resulting sign premise.

Every determinant split retains its negative and positive children.
Both refer to three distinct actual labels, so clearance excludes zero.
A coordinate split, if present, retains both closed rational cases
\(x_i\le a\) and \(x_i\ge a\), including equality.
The index identifies both children of each internal node and every
terminal or still-open context. No branch is removed because of a
numerical feasibility status.

## 2. Geometry and scalar area deductions

The lower triangle costs for zero through three named strict actual
occupants are \(s,3s,347/500,823/1000\). Four occupants are impossible.
The actual quadrilateral costs for one, two, or at least three occupants
are \(449/1000,8s,93/91\), respectively. These are the established
occupancy bounds cited in the geometry note. The distributed-mesh
signs and area inequalities and the prohibition of a clustered triple
retain their full actual-point premises.

The literal geometric rows have the following meanings.

* `extreme` excludes an exterior vertex from a triangle of three other
  actual points; two inward edge tests force the last test outward.
* `interior_line` uses an affine line functional on a point strictly
  inside \(OHC\) or \(HCDF\). Its value is a convex combination of
  the vertex values. Vertices on the line contribute zero. A contrary
  point value can force a sole unknown vertex value to the opposite side.
* `plu` uses \([abc][ade]-[abd][ace]+[abe][acd]=0\). Two product terms
  of the same sign force the third to have the opposite sign.
* `capacity` and `quad_capacity` use named existing occupants and a
  proved area cap that forbids one additional occupant. The remaining
  outward test follows from the other inward tests and actual clearance.
* `mesh` supplies exactly the signs of its named distributed triple.
* `clearance_sign` excludes an orientation whose complete box maximum
  is below \(s\); `clearance_gap` excludes both orientations that way.

Containments check every directed edge. Quadrilateral rules first prove
a strict positive convex cyclic order. Their joint area cap is computed
on the signed quadrilateral area polynomial, rather than by summing
unrelated triangle maxima. A cap one from containment is used only with
the explicit vertex-set containment stated in geometry Section 6.
Terminals retain their full contradictory signs, occupants, or strict
area-cost gap.

Scalar relations use the actual fan identity, signed four- and five-point
identities, the six-point identity
\[
 [ABC][IJP]=[PBC][IJA]+[APC][IJB]+[ABP][IJC],
\]
occupied quadrilateral floors, all proved actual convex pentagon support
inequalities, the stronger occupied-quadrilateral support inequalities,
and the distributed-mesh inequalities. Signed affine barycentric bounds
retain their actual containing triangle, its three fan-area lower bounds,
outer-area upper bound, and signed vertex-value bounds. Their proof is
given in geometry Section 4. Every label and orientation is printed.

The arithmetic rules are those of
[SCALAR_AREA_INTERVALS.md](SCALAR_AREA_INTERVALS.md) and
[AREA_RELATIONS.md](AREA_RELATIONS.md). Each update names immutable
earlier bound versions, its relation, the isolated triangle, and its
outward-rounded endpoint. Lower bounds round down and upper bounds up
to \(10^{-6}\). Initial box extrema retain all rational vertex residuals.
The final scalar table must equal the last retained version of every
endpoint; it is not an additional assumption.

A child can import a completed ancestor's final endpoint only when its
actual orientation agrees and every ancestor branch premise remains.
The `ancestor_area` witness names the exact earlier final version.
Coordinate-to-area stages likewise retain their entire earlier input
box proof. All such dependencies are acyclic.

An affine-area terminal is a positive integer combination of printed
nonnegative affine expressions in actual triangle areas. Its factors
are endpoint gaps, fan or signed identities, occupied-quadrilateral
floors, fixed-endpoint barycentric bounds, or product envelopes. The
envelopes follow from inequalities such as
\((U-X)(Y-l)\ge0\), with both endpoint versions retained. The sum is
expanded as \(C+\sum a_TA_T\); its upper bound substitutes the named
upper endpoint when \(a_T>0\), and lower endpoint when \(a_T<0\).
A negative result contradicts nonnegativity of the sum.

## 3. Physical factors, box refinements, and exact sums

Physical variables have fixed order
\((h,c,d,f,u,v,z,w,p,q,r,t,j,k)\). A polynomial term
`[indexList,coefficient]` means the rational coefficient times that
coordinate monomial. Repeated indices denote powers; an empty list is
a constant. Every physical factor is printed in full.

The source proofs are in geometry Sections 4–7. They include completed
actual-area endpoint gaps; contact and cap placement inequalities;
the chosen lower-pair inequalities; occupied actual quadrilateral
floors; contact and rectangle area caps; diagonal-spread inequalities;
all actual convex pentagon supports; fixed-endpoint barycentric factors;
and the two upper product envelopes of each support relation. Only
named literal sources are used. An `unsigned_ABC` source is
\([ABC]^2-s^2\ge0\), valid independently of that triple's unknown sign.
Optional square rows print their entire rational polynomial root and
every nonnegative multiplier. Their sign follows algebraically.

A coordinate refinement starts from the coarse box intersected with
its proved parent box and any explicit coordinate case. Global coordinate
certificates are imported only after their complete unconditional source
stages. The printed `areaBox` must equal the earlier refinement's final
box, and the child retains every earlier sign or coordinate-case premise.
The common certificates themselves are ordered by the same dependency
rule; their endpoints are not assumed simultaneously without proof.

For a used multiaffine factor \(F\ge0\), fix coordinate \(x_i\).
At any fixed \(x_i\), the maximum over the other coordinate intervals
occurs at their vertices. The table prints every resulting affine line
\(a x_i+b\). A feasible coordinate must satisfy at least one of these
lines nonnegatively. Intersect their closed solution intervals with the
old interval, take the hull of the resulting union, and round outward.
An empty union is a contradiction. Every endpoint line, old interval,
unrounded hull, and rounded new interval is retained. A repeated-coordinate
source is excluded from this rule unless a separately proved multiaffine
envelope is supplied.

For a completed box write
\(x_i=a_i+(b_i-a_i)y_i\), \(0\le y_i\le1\). An endpoint token
`L(2i)` denotes \(x_i-a_i\); `L(2i+1)` denotes \(b_i-x_i\).
Every polynomial terminal is a positive integer combination of products
of named nonnegative factors. After full expansion in the normalized
variables its sum is \(S(y)=\sum_m c_my^m\), with rational upper bound
\[
 S(y)\le c_{\varnothing}+
             \sum_{m\ne\varnothing,\ c_m>0}c_m.
\]
Every normalized monomial belongs to \([0,1]\). A strictly negative
printed upper bound therefore contradicts nonnegativity of every term.
The rule applies to the quartic unsigned-clearance factors as well as
to cubic sums. It uses no numerical positivity decision.

A global coordinate certificate additionally contains
\(\varepsilon W y_i\), with \(W>0\) and
\(\varepsilon=1\) for an upper bound or \(-1\) for a lower bound.
Its remaining summands are nonnegative, so a printed upper bound \(U\)
implies \(\varepsilon W y_i\le U\). Convert back to \(x_i\) and
round outward. This proves the imported coordinate endpoint.

## 4. Literal records and complete coverage

Every fenced table contains unencoded rational tuple records. The index
lists the roots, binary tree, common-coordinate packets, required parent
stages, terminal files, and an empty open frontier. Each context contains
its domain and assumptions, geometric deduction rows and final signs,
scalar initial versions and retained relations, immutable updates and
final endpoints, and its terminal data. A physical context additionally
prints the used source polynomials, complete refinement trace, positive
integer factors, and expanded normalized sum. Relation indices remain
explicit dictionary keys, even when unused rows are omitted.

[C1_TWO_LOWER_TWO_CENTRAL_ARITHMETIC.py](C1_TWO_LOWER_TWO_CENTRAL_ARITHMETIC.py)
is an optional literal-only exact arithmetic check. It imports no
discovery or optimization code and states its component scope honestly.
Geometry, source nonnegativity, scalar semantics, conditional ancestry,
affine terminal sums, and forest coverage also receive a separate
independent review. The mathematical premises are the displayed
derivations and inequalities, rather than a solver result or hidden packet.

The whole normalized domain reaches one of the 209 contradictory leaves:
36 actual geometric, 26 scalar, 45 affine-area, 16 endpoint-union and
86 physical-polynomial terminals. The identity 209=185+24 and the
explicit negative/positive child assignments check the complete cover.
The ordinary transposition of the square also excludes the corresponding
left-cap count. The remaining C1 counts stay separate obligations.

The independent [complete reader](audit_c1_contact_semantics.py) verifies
all 331 contexts, 39,382 actual relations, 89,563 scalar updates,
7,684 physical sources, 12,494 coordinate updates, 51 common coordinate
certificates and 24,557 positive polynomial products. It reconstructs
all 45 affine-area terminals and every ancestor endpoint and final version.
The separate [corruption suite](C1_TWO_LOWER_TWO_CENTRAL_NEGATIVE_PROBES.py)
rejects 29 deliberately altered scope, source, endpoint, affine sum,
polynomial and coverage records.
