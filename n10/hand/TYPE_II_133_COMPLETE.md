# Complete exclusion of the adjacent-corner count (1,3,3)

This note assembles the complete exclusion of the last Type-II count.
Use the normalization and occupancy notation of
[TYPE_II.md](TYPE_II.md):

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    0<b<=1/2,       0<lambda<1.

There are three other actual points strictly inside DBC and three to
the right of BC. The only point to the left of DB is E. Assume every
unsigned actual doubled triangle area is at least s=93/1000. All ten
points are therefore distinct, and no three are collinear.

The five-point set consisting of B,C and the three right points has
either triangular or nontriangular convex hull. These alternatives
exhaust every placement, including points on the bottom or right edge
of the square. The prescribed endpoints B,C are vertices of this hull.

## 1. Triangular right hull

[TYPE_II_133_TRIANGULAR_RIGHT.md](TYPE_II_133_TRIANGULAR_RIGHT.md)
excludes the entire triangular-hull alternative. Its third actual hull
vertex H and the two actual interior points give the two-interior-point
area bound. One of those interior points is selected by its barycentric
coordinate at C; the other is unrestricted beyond this selection and
the area bound. Thus the nine-point model in that proof covers every
ten-point configuration in the present alternative.

The three central points are distributed by CLUSTERED_TRIANGLE.md.
Their three CE ray cases, four DH fan cases, and both signs of the
selected right point give 24 initial roots. The fixed appendix
[TYPE_II_133_TRIANGULAR_RIGHT_TABLES.md](TYPE_II_133_TRIANGULAR_RIGHT_TABLES.md)
closes all of them, after its 28 explicitly printed binary refinements.
Every refinement is a dichotomy between the two nonzero signs of an
actual triangle; it omits no equality face under the positive minimum.

## 2. Nontriangular right hull

[TYPE_II_133_NONTRIANGULAR.md](TYPE_II_133_NONTRIANGULAR.md) supplies
the complete support construction and its geometric model. The virtual
support triangle BCO contains the five actual right points and has
distinct actual contacts H,F on its two non-base legs. Its doubled
area Omega is at most 1-b. The actual DEB clearance gives b>=s, so
the normalized threshold satisfies

    t=s/Omega >= s/(1-b) >= s/(1-s) > 1/11.

The endpoint five-cell catalogue excludes IV and V. In particular,
the fifth actual point R lies inside the actual quadrilateral BHFC;
a pentagonal right hull would put it in the excluded cell V.
The only surviving cells are therefore exactly the following three.

| Support cell | Actual triangles containing R | Complete exclusion |
|---|---|---|
| I | BHF and BHC | [TYPE_II_133_CELL_I.md](TYPE_II_133_CELL_I.md) |
| II | BHC and BFC | [TYPE_II_133_CELL_II.md](TYPE_II_133_CELL_II.md) |
| III | HFC and BFC | [TYPE_II_133_CELL_III.md](TYPE_II_133_CELL_III.md) |

The common manuscript proves all rational boxes, actual anchor signs,
occupancy costs, mesh inequalities, and scalar factors used in these
appendices. It also proves their complete CE/DH/DF ray catalogue.
The different cells retain their different physical contact bounds;
none is identified with another by an unproved symmetry.

Each cell appendix prints all of its initial roots, every binary
refinement, the complete geometric deductions, and every terminal
contradiction. The counts are recorded here to make the finite coverage
explicit.

| Right-hull alternative | Initial roots | Binary refinements | Cubic leaves | Geometric leaves | Positive-integer terms |
|---|---:|---:|---:|---:|---:|
| Triangular | 24 | 28 | 44 | 8 | 2,194 |
| Nontriangular, I | 60 | 0 | 24 | 36 | 932 |
| Nontriangular, II | 120 | 13 | 44 | 89 | 2,219 |
| Nontriangular, III | 60 | 5 | 38 | 27 | 1,117 |
| Total | 264 | 46 | 150 | 160 | 6,462 |

Every cubic leaf is a printed positive-integer sum of products of
proved nonnegative factors. Its exact rational upper bound on its
proved coordinate box is negative. Every geometric leaf contradicts
an actual-point containment, a distributed-mesh requirement, or an
explicit determinant or convexity identity. The adjacent exact checkers
read the manuscripts and verify these finite statements; no optimizer,
floating-point search, or discovery file is a premise.

## 3. Conclusion and boundary coverage

Both actual right-hull alternatives are excluded, and all three
nontriangular support cells are excluded. Thus the entire normalized
count (1,3,3) is impossible when every unsigned doubled area is at least
s. Equivalently, this count has an ordinary triangle area strictly
below s/2<A*.

An actual point on a dividing actual chord would give a collinear
triple and was excluded at the start. A point on an outside square edge
is allowed in the right-hull models and their closed rational boxes.
Coincident points and collapsed actual hull edges already have minimum
zero. The endpoint values of the initial Type-II anchors and the
area-preserving reduction to b<=1/2 are handled in the full assembly
[TYPE_II_COMPLETE.md](TYPE_II_COMPLETE.md).
