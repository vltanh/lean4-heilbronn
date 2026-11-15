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
| G5 | Type II: adjacent corners and five free points | Reduced to two exhaustive count classes, \((1,2,3)\) and \((2,2,2)\) |
| G6 | N and C1 with fewer than eight boundary points | **Main remaining global structural obstruction** |
| G7 | Unrestricted sharp theorem and uniqueness | Conditional on G5, G6; equality transfer through shears is already proved |

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

## 2. The remaining low-contact families

[GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md) proves that each
opposite-side pair can be made to have a double-contact side, by at most
two incidence-increasing, determinant-one shears. The resulting complete
families are N, C1, C2, Type II, Type III.

C2 is closed. The unresolved parts of the former Type-I obligation are:

- **N:** six distinct prescribed boundary points, two on each of two adjacent
  sides and one on each opposite side, with the stated projection-overlap
  inequalities; three further points are arbitrary. Its eight-boundary
  members are covered by G2. Six- and seven-boundary members still need a
  sharp bound or a further structural reduction.
- **C1:** one occupied corner, one further contact on each incident side,
  and one contact on each opposite side; four further points are arbitrary.

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
and several complete pair placements with seven boundary contacts.
These results narrow G6 but do not complete it.

For a fixed choice of the other eight points, the sign-consistent feasible
positions of a ninth point form a convex polygon cut out by area half-planes.
Such a polygon may lie wholly inside the square. A proposed pushing lemma
must rule out this obstruction at the sharp threshold, or handle it directly;
it cannot assume that every interior point reaches the square boundary.

**Acceptance:** an unconditional argument covering each complete continuous
family, including degeneracies. A theorem about one observed active pattern,
or about configurations already having eight contacts, does not close G6.

## 3. Corner families: Type III closed, two Type-II counts left

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

### The remaining Type-II obligation

[TYPE_II.md](hand/TYPE_II.md) supplies a further determinant-one shear
normalization: either the configuration becomes Type III, already excluded,
or its bottom contact has \(0<b\le1/2\). Partition the square into the
left, central, and right triangles determined by the two top corners and
the bottom contact. The six other points, including the left contact,
have counts \((\ell,c,r)\).

The five-point endpoint-triangle theorem, a complete exclusion of
\((2,1,3)\), and the exhaustive central-triple orientation argument leave
only these two complete continuous classes:

| Count \((\ell,c,r)\) | Necessary range, with \(s=2t\ge2A_0\) |
|---|---|
| \((1,2,3)\) | \(s\le b\le1-s/(3-2\sqrt2)\) |
| \((2,2,2)\) | \(3s\le b\le1/2\) |

Their point coordinates remain arbitrary within their assigned triangles.
Neither row is yet excluded. The recorded exact checker gives the separate
computational bound \(137/2500<A_0\); that claim is not substituted for
these hand obligations.

Useful global tools now include the sharp six-point triangular-hull bound,
the sharp six-point quadrilateral-hull bound, and the complete six-point
support-triangle theorem. [QUADRILATERAL_HULL.md](hand/QUADRILATERAL_HULL.md)
also gives a universal N cap exclusion and precise, explicitly conditional
occupancy classifications for the six-hull N and five-hull C1 cases.
In addition, [TYPE_II_BALANCED.md](hand/TYPE_II_BALANCED.md) excludes the
entire balanced left-quadrilateral branch. Its left free point is inside
DBE and above CE, exactly one central point is above CE, and the other is
below CE. Their interaction with the two right points remains open.
In the unbalanced row, at least one central point is above CE; the
one-point and two-point cuts against the right triple remain open.
Sections 11--12 of `TYPE_II.md` supply exact necessary parameter bounds
for those cuts, without claiming they suffice for an exclusion.

## 4. Final assembly and verification

Once G5 and G6 are closed, combine the exhaustive normalization with
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
