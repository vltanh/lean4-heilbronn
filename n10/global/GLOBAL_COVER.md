# Exact unsigned-area global cover

This is the mathematical specification of `global_cover.cpp`. A complete run
of every family is required. A range, pilot, chamber, or positive node count is
not an unrestricted upper bound. Current results belong in `../STATUS.md`.

## Domains and thresholds

Let A be the attaining ten-point value, and g the unique real root of
`12g^3-27g^2+20g-4`. Then `A=5g^2/8-g^3/2`.
The four corner families use ordinary-area threshold `t=4653/100000`.
The corner-free family uses `tN=4653741958254/100000000000000`, together with
the unrestricted radius-1/2000 local theorem. Both thresholds are below A;
these comparisons are checked separately using exact cubic-field arithmetic.

An optimum has a minimum-area enclosing parallelogram equal to the square:
a smaller parallelogram could be mapped onto the square with determinant >1.
Thus all sides are contacted, and opposite contact intervals overlap in
projection (tilt one support direction to prove this). Positive minimum area
allows at most two points on a side.

If opposite vertical sides have singleton contacts, overlap gives their common
height l. The shear `(x,y)->(x+t(y-l),y)` fixes those two contacts, preserves
horizontal side lines, and preserves all areas. Feasible t form a bounded
interval with zero in its interior; moving to an endpoint creates a boundary
incidence without losing any old one. Apply the transposed shear for horizontal
singletons if needed. A new occupied corner is handled by the corner families.
Otherwise each opposite pair has a doubly occupied side. By square reflections,
choose left and bottom to be double sides whose intervals contain at least one
opposite contact. Overlapping intervals always allow this choice: when one
strictly contains the other, put the containing interval on the selected side.
The two reflections preserve each other's projection conditions.

The resulting maximizing configuration is covered by these domains:

- N: `(0,a),(0,h),(b,0),(c,0),(1,d),(f,1)` plus four arbitrary square points,
  with `a<h`, `b<c`, `a<=d<=h`, `b<=f<=c`.
- C1: `(0,0),(0,h),(c,0),(1,d),(f,1)` plus five arbitrary square points,
  with `0<=d<=h<=1`, `0<=f<=c<=1`.
- C2: `(0,0),(1,1),(0,h),(c,0),(1,d),(f,1)` plus four arbitrary square
  points, with the same inequalities.
- II: `(1,1),(0,1),(0,l),(b,0)` plus six arbitrary square points.
- III: `(0,0),(0,1),(1,1)` plus seven arbitrary square points.

For C1 and C2, rotate a lone or opposite occupied corner to (0,0). Opposite
projection overlap forces the additional side contacts and the indicated
inequalities. For adjacent occupied corners, rotate them to the top corners.
A bottom contact exists. If no further left contact exists, the determinant-one
shear `x -> x-s(1-y)`, with `s=min x_i/(1-y_i)` over points below the top,
creates one, preserves all areas and the top corners, and keeps all points in
the square. A distinct bottom/left contact gives II; coincidence gives III.
Coincidences and collinear triples already have minimum area zero. Closure
faces may therefore be included in an upper-bound cover.

## Continuous initial cover

The square is covered by 22-by-22 closed cells. Canonical half-open assignments
justify the indexing, while the checker retains the closed boxes. Two free
points assigned to one cell, together with any third square point, have area
at most `1/22`, below both thresholds. Thus free cells are distinct and may be
enumerated in increasing order, purely by relabeling the unspecified points.
Two selected contacts on one side cannot lie in the same length-1/22 segment:
their triangle with a third square point has area at most `1/44`.

All signed doubled areas are multi-affine in the coordinates. Therefore the
maximum absolute doubled area of three rectangles is attained at rectangle
corners. In grid coordinates this maximum is an integer. A value at most 45
means ordinary area at most `45/(2*22^2)`, below both thresholds. The necessary
compatibility condition is consequently a corner maximum at least 46.

The anchor patterns enumerate all side intervals consistent with the weak
ordering constraints. For each pattern, test fixed triples, fixed pairs with
one free cell, and fixed points with two free cells. Then recursively enumerate
increasing free-cell lists while checking all newly created free triples.
The invariant is that every surviving extension is compatible with every
previous selected triple. Each test is necessary; no competitive configuration
is lost. Cardinality pruning only rejects prefixes with too few extensions.

## Exact contraction and subdivision

Coordinates are enclosed in integer intervals at scale `S=22*2^20`; the points
remain real, not grid restricted. For each triangle, compute face maxima M0,M1
of the absolute doubled determinant for each varying coordinate. Affinity and
the triangle inequality imply, at relative coordinate u in [0,1], the bound
`abs(D)<= (1-u)M0+u M1`.

With strict doubled-area target `num/den`, a box is excluded when
`den*max(M0,M1)<=num*S^2`. If one face is too small, solve the linear upper
bound for u and round the new endpoint outward. All face bounds remain valid
when other coordinate intervals shrink. Undecided boxes are bisected; both
closed children are retained. Every child must finish. A root budget or a
smallest unresolved integer box raises an exception and cannot emit PASS.

All 120 triangle areas are tested unsigned. The midpoint ordering of triangle
tests is only a heuristic; it does not affect the mathematical inequalities.

## Exact local acceptance

Only family N permits local acceptance. The code brackets g by
`315611137608/10^12 < g < 315611137609/10^12`, verifying the cubic signs exactly.
It encloses every candidate coordinate, including `1-3g+2g^2`, using monotonicity
on this interval. All eight square symmetries are generated. A local leaf
requires a bijective assignment of all ten point rectangles, each wholly within
coordinate distance 1/2000 of the corresponding candidate point. It invokes
the unrestricted local theorem, not a boundary- or symmetry-preserving theorem.
The local certificate must be separately verified before such leaves are used.

## Arithmetic and completion

Grid determinants are small integers; fine-scale determinants fit signed 64-bit.
Target products and divisions use signed 128-bit intermediates. The largest
root-polynomial intermediate is below 2^125; contraction products are below
2^117. These conservative bounds must be checked with the fixed constants.

The output lists surviving anchor-pattern counts and explicit processed ranges.
A family is complete only after a COMPLETE marker or a checked disjoint union
of successful ranges covering `[0,total)`. All ranges must use the same source,
constants, and local theorem. A RANGE marker alone is never a global result.

If the four corner families close at t and family N closes with its local
alternative, every normalized maximizer has minimum area <=A. Exact attainment
then gives H10=A. Uniqueness requires the local theorem's strict equality
statement and the reverse-shear argument; it must not be inferred from counts.
