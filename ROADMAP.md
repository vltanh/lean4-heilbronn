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
| G4b | Type III: three corners and six free points | Reduced to the \(2+4\) and \(3+3\) diagonal-count cases; both still open |
| G5 | Type II: adjacent corners and five free points | Still open by hand |
| G6 | N and C1 with fewer than eight boundary points | **Main remaining global structural obstruction** |
| G7 | Unrestricted sharp theorem and uniqueness | Conditional on G4b, G5, G6; equality transfer through shears is already proved |

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

For a fixed choice of the other eight points, the sign-consistent feasible
positions of a ninth point form a convex polygon cut out by area half-planes.
Such a polygon may lie wholly inside the square. A proposed pushing lemma
must rule out this obstruction at the sharp threshold, or handle it directly;
it cannot assume that every interior point reaches the square boundary.

**Acceptance:** an unconditional argument covering each complete continuous
family, including degeneracies. A theorem about one observed active pattern,
or about configurations already having eight contacts, does not close G6.

## 3. The remaining corner cases

### Type III

Put the fixed corners at \(A=(0,0),B=(0,1),C=(1,1)\), and count the six
free points above and below the occupied diagonal \(AC\).
[CORNER_FAMILIES.md](hand/CORNER_FAMILIES.md) excludes upper counts
\(0,1,4,5,6\) by self-contained hand arguments. Only these cases remain:

| Upper + lower count | Proved additional restriction |
|---|---|
| \(2+4\) | The lower six-point hull is triangular, with actual apex \(R\) satisfying \(r_x-r_y\ge(11+3\sqrt5)A_0\). The whole nine-point hull is \(ABCR\). |
| \(3+3\) | For each upper point, the other two lie in different triangles of its fan to \(A,B,C\). The upper six-point configuration has the distributed seven-face mesh of the sharp triangular-hull theorem. |

Useful proven tools include:

- A triangle containing two further points has area at least
  \((4+2\sqrt3)t\), when all triangle areas are at least \(t\).
- A triangular hull containing three further points has area at least
  \((11+3\sqrt5)t/2\), sharply.
- At the target threshold, no triangle contains four other configuration
  points.
- Six points in a triangle of area at most \(1/2\), including two vertices
  and having nontriangular hull, have minimum area at most \(7/128\).

These are global geometric restrictions, not full exclusions of the two
remaining count classes.

### Type II

The adjacent-corner family still needs a hand argument covering its two
edge parameters and five arbitrary points. The recorded exact checker bounds
it by \(137/2500<A_0\); that computational result is not substituted for
a hand proof. Any strict hand bound below \(A_0\) would suffice.

## 4. Final assembly and verification

Once G4b, G5, and G6 are closed, combine the exhaustive normalization with
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
