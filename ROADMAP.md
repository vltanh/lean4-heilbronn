# Roadmap: complete the unrestricted nine-point hand proof

**Target:** every nine points in the unit square have a triangle of area at most

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

The exact construction attains \(A_0\). The complete theorem and uniqueness
are now proved for configurations with at least eight boundary points.
**The unrestricted hand proof is still incomplete.** The separate executable
proof draft claims full coverage; its old global run has not been rerun as
part of this hand-proof work, and neither proof has external or Lean review.

## Current completion gates

| Gate | Result | Status |
|---|---|---|
| G0 | Exact construction and all 84 triangle areas | Complete, algebraically rechecked |
| G1 | Exhaustive global normalization | Complete hand reduction to five families N, C1, C2, II, III, each with at most twelve parameters |
| G2 | Every configuration with at least eight boundary points | **Complete sharp hand theorem and equality classification** |
| G3 | Strict local maximum against arbitrary eighteen-coordinate perturbations | Complete qualitative hand proof; separate explicit-radius arithmetic certificate |
| G4a | C2: two opposite corners and four further side contacts | **Complete hand exclusion at \(7/128<A_0\)** |
| G4b | Type III: three corners and six free points | **Complete hand exclusion at \(7/128<A_0\)** |
| G5 | Type II: adjacent corners and five free points | **Complete hand exclusion**, including every count/hull/cell/cut and the Type-III shear alternative |
| G6 | N and C1 with fewer than eight boundary points | **All N7 and C1 complete**; only N6-06 remains |
| G7 | Unrestricted sharp theorem and uniqueness | Conditional on G6; equality transfer through shears is already proved |

## G6 finite case ledger

[hand/G6_FINITE_CASE_LEDGER.md](hand/G6_FINITE_CASE_LEDGER.md) supplies
the structural classification. For **every individually numbered case and
its open/closed status**, use
[hand/G6_ITEMIZED_CASES.md](hand/G6_ITEMIZED_CASES.md) (62 parent rows).
The [221-row machine-readable leaf register](hand/G6_ITEMIZED_LEAVES.tsv)
and [itemization checker](hand/check_g6_itemized_cases.py) refine them
by lower-point occupancy, upper sectors, and the retained N7 line signs.
The census currently has 2 open parent rows (5 open leaves); leaf
counts do not independently certify a geometric exclusion.

| Branch | Unpruned coarse cover | Current proof status |
|---|---:|---|
| N6 | 8 cap-occupancy orbits; 13 lower/upper refinements | Seven complete occupancies closed; only N6-06 remains |
| N7 | One mixed placement, with at most 16 four-sign cells | Complete for both sides of HC and every pair-line sign |
| C1, zero lower | 21 cap-occupancy orbits | **Entire class complete** |
| C1, one lower | 12 cap-occupancy orbits | **Entire class complete**; Theorem 2 of C1_ONE_LOWER_MIXED_CAPS.md |

These are combinatorial cover counts, including closed or geometrically
empty cells. The checker
[hand/check_g6_case_ledger.py](hand/check_g6_case_ledger.py) audits
the census only. A closure requires a proved continuous inequality
and its full geometric scope; a boundary projection also needs every
affected actual triangle threshold checked. The final G7 audit follows
completion of the remaining N6 rows.

## 1. The completed eight-boundary gate

[EIGHT_BOUNDARY.md](hand/EIGHT_BOUNDARY.md), Theorem 13, includes the full
incidence classification: a positive-area configuration with at least eight
boundary points has exactly two points on each open side and one free point.
Exterior and side-cap inequalities then reduce the orientations to 36 words,
which [RADIAL_CATALOGUE.md](hand/RADIAL_CATALOGUE.md) derives directly and
places into eight square-symmetry classes.

Seven classes have strict hand bounds below \(A_0\). The remaining class
is the sharp eleven-triangle chamber in
[HAND_PROOF.md](hand/HAND_PROOF.md), Part I, whose equality analysis forces
the candidate. The R6 argument has its own short continuous maximization in
[R6_BOUND.md](hand/R6_BOUND.md). No boundary multiplicity or orientation
case remains open within G2.

This theorem does not establish that an arbitrary optimizer has eight
boundary points.

Section 5 of [GLOBAL_COMPLETION.md](hand/GLOBAL_COMPLETION.md) extends
the entire sharp eleven-triangle chamber to F=(f,k) with \(0\le k\le1\).
The same sharp upper bound holds, and equality in the stated coordinate
family forces \(k=1\) and the original construction. This removes a
complete seven-boundary chamber, without classifying all seven-boundary
orientations. Its scalar proof prints exact rational coefficient bounds
for 32 far-range and 886 near-range Bernstein coefficients.
[SHARP_BC_MOVING.md](hand/SHARP_BC_MOVING.md) also proves the sharp
bound when B moves upward by at most d, or C by less than a. A common
exact weight forces the displacement to vanish at equality. These
specified chambers are now assembled with the projection-restricted
G-moving exclusion in
[SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md).
All four exterior R3 radial words are closed, including equality.
[SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md](hand/SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md)
closes all four R1 words.
[SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md](hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md)
now closes the other 28 words with fixed rational cubic certificates.
Thus the entire seven-boundary exterior case is complete, including
equality, with no remaining radial orientation.

## 2. The remaining low-contact families

[GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md) proves that each
opposite-side pair can be made to have a double-contact side, by at most
two incidence-increasing, determinant-one shears. The resulting complete
families are N, C1, C2, Type II, Type III.

C2 is closed. The unresolved parts of the former Type-I obligation are:

- **N:** six distinct prescribed boundary points, two on each of two adjacent
  sides and one on each opposite side, with the stated projection-overlap
  inequalities; three further points are arbitrary. Its eight-boundary
  members are covered by G2. The entire normalized seven-boundary form
  is complete. Only the two-opposite-cap occupancy listed above
  remains; seven complete N6 occupancies are closed.
- **C1:** one occupied corner, one further contact on each incident side,
  and one contact on each opposite side; four further points are arbitrary.
  The entire family is excluded. The one-lower assembly in
  [C1_ONE_LOWER_MIXED_CAPS.md](hand/C1_ONE_LOWER_MIXED_CAPS.md), Theorem 2,
  joins the complete zero-lower and two-lower results and the lower
  capacity theorem.

Several complete restrictions now apply within these families.
[THREE_INTERIOR_TRIANGLES.md](hand/THREE_INTERIOR_TRIANGLES.md) proves that
an actual triangle containing three other points must be a full-hull ear,
then excludes every such triangle in all normalized families. A
minimum-area enclosing-parallelogram argument extends the result to
every competitive configuration, without a maximizing hypothesis:
**every actual triangle contains at most two further points**.
[ONE_CORNER.md](hand/ONE_CORNER.md) excludes the full three-inside
corner-triangle branch and proves triangle capacity two throughout C1.
For C1 whose hull is exactly its five prescribed anchors, precisely two
free points lie on each side of HC; the two upper points must both be in
HCD or both in HCF. The other pentagonal placements are excluded.
[SEVEN_BOUNDARY_CAPS.md](hand/SEVEN_BOUNDARY_CAPS.md) excludes two lower ears
and several complete pair placements with seven boundary contacts. Its
Sections 6--7 also prove \([ACF]<13/16\), exclude any free point in
\(AHF\cap HCF\), and close the BC/FH left-pair assignment.
Its Sections 8--9 exclude every point from CDE and give capacity one
for CDF and DEF. [SEVEN_BOUNDARY_LEFT_PAIR.md](hand/SEVEN_BOUNDARY_LEFT_PAIR.md)
closes the full smaller-left pair class, and
[SEVEN_BOUNDARY_RIGHT_PAIR.md](hand/SEVEN_BOUNDARY_RIGHT_PAIR.md) closes
the entire right-quadrilateral pair.
[SEVEN_BOUNDARY_MIXED_PAIR.md](hand/SEVEN_BOUNDARY_MIXED_PAIR.md)
excludes the complete HBE/BEF and ACE/ADE common pair cells, forces
the mixed left point into ACF, and gives capacity one to ADE, AHD,
AHE, and HDE. The remaining mixed right point is in CEF.
[SEVEN_BOUNDARY_UPPER_TRIANGLE.md](hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md)
excludes every further point from HEF, so both mixed points are below HE.
[SEVEN_BOUNDARY_MIXED_LOWER.md](hand/SEVEN_BOUNDARY_MIXED_LOWER.md)
closes the whole mixed branch below HC with 40 exact cubic certificates.
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md)
closes the upper branch with 55 certificates and assembles the entire
normalized seven-boundary theorem, including equality. Both finite word
covers and all 11,106 positive terms were independently re-expanded.
Sections 10--11 exclude the nearer upper exterior cap and limit the
farther cap to one point. [SEVEN_BOUNDARY_TOP_CAP.md](hand/SEVEN_BOUNDARY_TOP_CAP.md)
then excludes the upper, lower, and left side quadrilaterals for the
other point, which lies inside the original heptagon.
[SEVEN_BOUNDARY_TOP_CAP_RIGHT.md](hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md)
closes the fourth side quadrilateral, forces that companion into
ADEH intersect BCXF, and proves b>3/20 and k>h.
[SIX_BOUNDARY_HULL.md](hand/SIX_BOUNDARY_HULL.md) gives capacity one
for all six N anchor ears and excludes the entire exact six-anchor
convex hull. Its final lower-ear placement is excluded by an additional
cross-triangle area inequality and three explicit scalar intervals.
Larger six-boundary hulls remain open.
[SIX_BOUNDARY_EXTERIOR.md](hand/SIX_BOUNDARY_EXTERIOR.md) excludes
the entire exterior cap between its two doubled sides, using only five
actual points and a strict area bound below 1/20. It also gives capacity
one to both side caps, excludes the opposite lower ear under side-cap
occupancy, and classifies the all-three-in-the-opposite-cap case as
support cell II with an eight-vertex hull.
[SIX_BOUNDARY_TWO_SIDE_COMPLETION.md](hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md)
closes the complete occupancy with both side caps occupied and the third
point below HC: four exhaustive obstruction quadrants force at least one
threshold-preserving side projection, and the seven-boundary theorem
then supplies the sharp bound and equality classification.
[GLOBAL_COMPLETION.md](hand/GLOBAL_COMPLETION.md) additionally excludes
both lower exterior corner caps, without requiring the top contact to
be on the nearer half of its side. It also proves that every nine-point
convex-position configuration has minimum triangle area below \(1/19\),
using the classical planar affine isoperimetric inequality.
[FOUR_INTERIOR_QUADRILATERALS.md](hand/FOUR_INTERIOR_QUADRILATERALS.md)
proves that an actual quadrilateral containing four further points has
exactly one in each diagonal sector. Consequently every competitive
configuration has between five and eight hull vertices.

[ONE_CORNER_COMPLETION.md](hand/ONE_CORNER_COMPLETION.md) excludes the
entire common-sector upper pair in the exact-pentagon C1 branch. A
surviving pair has one point in the central sector and one in the
corresponding outer ear; its joining line isolates the ear vertex.
The four free points also alternate in the corresponding four-vertex
container. [C1_MIXED_PENTAGON.md](hand/C1_MIXED_PENTAGON.md) now excludes
both remaining mixed-pair placements, completing the entire exact
five-anchor C1 pentagon.
[C1_TWO_LOWER_SIDE_CAP.md](hand/C1_TWO_LOWER_SIDE_CAP.md) further excludes
both exterior side caps whenever two free points lie in OHC.
[C1_TOP_CAP_RADIAL_SPLIT.md](hand/C1_TOP_CAP_RADIAL_SPLIT.md) further
forces those lower points onto opposite sides of every ray OX to an
exterior top-cap point.
[C1_TOP_CAP_CONVEX_PAIR.md](hand/C1_TOP_CAP_CONVEX_PAIR.md) and
[C1_TOP_CAP_TRIANGULAR_PAIR.md](hand/C1_TOP_CAP_TRIANGULAR_PAIR.md)
exclude the entire two-point exterior top cap.
[C1_TOP_CAP_SIDE_EARS.md](hand/C1_TOP_CAP_SIDE_EARS.md) excludes
both side ears in the one-cap case, placing the other upper point
in OCXH. After reflection placing it in OCX,
[C1_TOP_CAP_OF_SPLIT.md](hand/C1_TOP_CAP_OF_SPLIT.md) forces both
lower points into OCF, still on opposite sides of OX. This remaining
common-cell placement is further restricted by
[C1_TOP_CAP_COMMON_CELL.md](hand/C1_TOP_CAP_COMMON_CELL.md): neither
O nor C can be isolated by the lower-pair line.
[C1_TOP_CAP_CONTAINMENT_PAIR.md](hand/C1_TOP_CAP_CONTAINMENT_PAIR.md)
also excludes the middle containment signs.
[C1_TWO_LOWER_COMPLETION.md](hand/C1_TWO_LOWER_COMPLETION.md) closes
the last same-side O/C case and assembles the entire two-lower theorem
for every hull size. The zero-lower C1 count is now also complete by
[C1_ZERO_LOWER.md](hand/C1_ZERO_LOWER.md). The one-lower assembly in
[C1_ONE_LOWER_MIXED_CAPS.md](hand/C1_ONE_LOWER_MIXED_CAPS.md) completes
C1. Only the remaining N6 occupancy keep G6 open.
[C1_ONE_LOWER_TOP_CAP.md](hand/C1_ONE_LOWER_TOP_CAP.md) additionally
excludes the entire one-lower hexagon with a single exterior top-cap
point and two interior upper points. Its 98 fixed cubic certificates
cover all 205 remaining sign cells; all 9,677 terms were independently
expanded using a separate symbolic implementation.

For a fixed choice of the other eight points, the sign-consistent feasible
positions of a ninth point form a convex polygon cut out by area half-planes.
Such a polygon may lie wholly inside the square. A proposed pushing lemma
must rule out this obstruction at the sharp threshold, or handle it directly;
it cannot assume that every interior point reaches the square boundary.

**Acceptance:** an unconditional argument covering each complete continuous
family, including degeneracies. A theorem about one observed active pattern,
or about configurations already having eight contacts, does not close G6.

## 3. Corner families: Type III and all of Type II are closed

### Complete Type-III theorem

[CORNER_FAMILIES.md](hand/CORNER_FAMILIES.md) now proves that any nine points
containing three square corners have minimum triangle area at most
\(7/128<A_0\). All seven diagonal counts are covered:

| Number of free points above the occupied diagonal | Hand argument |
|---|---|
| 0 or 1 | Six-point support-triangle theorem and seven-point endpoint lemma |
| 2 | Sharp six-point triangular-hull theorem; the fourth hull vertex is near the missing corner; controlled projective transfer to the four-corner \(1/19\) theorem |
| 3 | Quantitative distributed-six mesh inequalities; uniform signs; at most one lower point on each side of the line through the middle corner and the designated upper point |
| 4, 5, or 6 | Seven-point triangular-hull bound |

The last case uses a central-area bound \(K<9s/8\), a connector-area bound
\(a,b,c>6s/5\), and two explicit polynomial positivity arguments. All
geometric cases and exact identities are printed in the manuscript.

### The completed Type-II theorem

[TYPE_II.md](hand/TYPE_II.md) supplies a further determinant-one shear
normalization: either the configuration becomes Type III, already excluded,
or its bottom contact has \(0<b\le1/2\). Partition the square into the
left, central, and right triangles determined by the two top corners and
the bottom contact. The six other points, including the left contact,
have counts \((\ell,c,r)\).

The five-point endpoint-triangle theorem, a complete exclusion of
\((2,1,3)\), and the exhaustive central-triple orientation argument leave
the following two complete continuous classes. The later balanced-row
theorem closes the second:

| Count \((\ell,c,r)\) | Necessary range, with \(s=2t\ge2A_0\) | Current status |
|---|---|---|
| \((1,2,3)\) | \(s\le b\le1-s/(3-2\sqrt2)\) | Completely excluded by `UNBALANCED_FINAL_LOWER_WEDGE.md`, Theorem 2 |
| \((2,2,2)\) | \(3s\le b\le1/2\) | Completely excluded by `TYPE_II_COMPLETION.md`, Theorem 11 |

The unbalanced row has arbitrary point coordinates within its assigned
triangles. The recorded exact checker gives the separate computational
bound \(137/2500<A_0\). The completed continuous hand argument below
is independent of that old computational claim.

Useful global tools now include the sharp six-point triangular-hull bound,
the sharp six-point quadrilateral-hull bound, and the complete six-point
support-triangle theorem. [QUADRILATERAL_HULL.md](hand/QUADRILATERAL_HULL.md)
also gives a universal N cap exclusion and precise, explicitly conditional
occupancy classifications for the six-hull N and five-hull C1 cases.
In addition, [TYPE_II_BALANCED.md](hand/TYPE_II_BALANCED.md) excludes the
entire balanced left-quadrilateral branch. Its left free point is inside
DBE and above CE, exactly one central point is above CE, and the other is
below CE. [TYPE_II_COMPLETION.md](hand/TYPE_II_COMPLETION.md), Section 6,
now excludes the entire balanced right-quadrilateral branch as well.
For the surviving triangular right hull BCR, with S inside, its lower
ear EBR is empty. The eight points other than B therefore have hull DERC,
and the four interior points occupy its four diagonal sectors once each.
Sections 7–8 of `TYPE_II_COMPLETION.md` use a second supporting shear to
exclude the assignment with S in the sector at ER and Q in the sector at
RC. For the other assignment, the lines ES and LR give four exhaustive
cells. Sections 9–10 exclude the upper and left mixed cells;
[BALANCED_RIGHT_MIXED.md](hand/BALANCED_RIGHT_MIXED.md) excludes the right
mixed cell by a uniform height bound; and
[BALANCED_BOTTOM_INNER_SECTOR.md](hand/BALANCED_BOTTOM_INNER_SECTOR.md)
excludes the bottom cell by a five-area cancellation and weighted-mean
identity. Theorem 11 assembles these arguments into the **complete
balanced-row exclusion**.
In the unbalanced row, at least one central point is above CE.
Section 12 of `TYPE_II_COMPLETION.md` proves that a triangular
right hull BCR, with S,T inside, has an empty lower ear EBR. Both
eight-point hulls DBRC and DERC alternate, forcing both central points
above CE. The stronger six-point cell-II inequality in Theorem 13,
at doubled threshold \(3/28\), then closes the two-above cut as well:
Theorem 14 excludes the entire unbalanced triangular-right branch.

[UNBALANCED_RIGHT_HULL.md](hand/UNBALANCED_RIGHT_HULL.md) proves that
the nontriangular right hull must be a quadrilateral. If both central
points are above CE, its occupied outer-ear support cells I and III
are completely excluded; only the common central cell II remains.
Both isolated-endpoint central-line alternatives are also excluded,
so PQ must put D,C together and E,B together on opposite sides.
[UNBALANCED_CELL_I.md](hand/UNBALANCED_CELL_I.md) and
[UNBALANCED_CELL_III.md](hand/UNBALANCED_CELL_III.md) now exclude the
outer cells in the one-above cut as well. Thus only cell II remains
in either cut. In the two-above case,
[UNBALANCED_RADIAL_SPLIT.md](hand/UNBALANCED_RADIAL_SPLIT.md) forces the
central points to opposite sides of DR, the right interior point above
DR, and the lower right hull vertex to height below 3/16.
[UNBALANCED_UPPER_CELL_II.md](hand/UNBALANCED_UPPER_CELL_II.md) now
closes that last two-above cell with an exact stress, monotone
elimination, and twelve printed Bernstein boxes with 960 strictly
negative rational coefficients. At that stage of the reduction, the sole remaining branch is:
support cell II with exactly one central point above CE.
[UNBALANCED_ONE_UPPER_RADIAL.md](hand/UNBALANCED_ONE_UPPER_RADIAL.md)
puts P,T above DR and Q below it, and gives capacity one to DBR
and DRS. [UNBALANCED_OCCUPIED_LOWER_EAR.md](hand/UNBALANCED_OCCUPIED_LOWER_EAR.md)
excludes Q in EBR with eleven fixed coefficient boxes, so Q lies
above ER. [UNBALANCED_FINAL_NEGATIVE_LINE.md](hand/UNBALANCED_FINAL_NEGATIVE_LINE.md)
excludes the complete sign [QTE]<0 by two negative quadratic
discriminants. In the positive sign,
[UNBALANCED_FINAL_UPPER_PAIR.md](hand/UNBALANCED_FINAL_UPPER_PAIR.md)
forces T into CQS and excludes Q above ES.
[UNBALANCED_FINAL_LOWER_WEDGE.md](hand/UNBALANCED_FINAL_LOWER_WEDGE.md)
then excludes the final Q-in-ERS placement with a positive weighted
quadratic, convex endpoint reduction, and two strictly negative quartics.
Its Theorem 2 assembles the **complete Type-II theorem**, explicitly
disposing of the area-equivalent Type-III alternative. This closes G5.

The same new note proves a stronger global container theorem: a triangle
of area at most \(1/2\) with two actual vertices contains at most five
configuration points in total, even if its third vertex is outside the
square. For Type II, sweeping that third vertex along the bottom line
gives 35 explicit strict interval-overlap exclusions. These are necessary
conditions; they do not by themselves close the unbalanced row. The new
capacity theorem depends on the earlier unrestricted actual-triangle
capacity theorem, so its corollary about opposite occupied corners is
downstream of the original C2 proof.

## 4. Final assembly and verification

Once G6 is closed, combine the exhaustive normalization with
the completed eight-boundary theorem and exact attaining construction.
Lemma 4 of `GLOBAL_STRUCTURE.md` already proves that uniqueness survives
the normalizing shears: a nontrivial final shear into the candidate would
contradict its unrestricted strict local optimality.

The final audit must still check all orientation signs, coincidences,
collinear cases, family boundaries, and equality steps. The optional SymPy
scripts are transcription diagnostics; the arguments are written in the
Markdown sources. No Lean file currently claims the unrestricted theorem.

For the separate computational route, full reproduction must satisfy
[exact/REPRODUCE.md](exact/REPRODUCE.md), including the entire Type-I cover.
The hand proof's qualitative local radius cannot be substituted into the
older explicit-radius stopping rule without a new cover argument.
