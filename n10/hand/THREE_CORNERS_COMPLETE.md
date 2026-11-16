# Complete exclusion of at least three occupied corners

Every ten-point configuration in the unit square with at least three
occupied corners has an ordinary triangle area strictly below A*.
This note assembles the complete hand proof of family III. It uses no
computer-assisted global-cover result.

If any two points coincide or any three are collinear, the assertion is
immediate. Four occupied corners are excluded in FOUR_CORNERS.md, with
the uniform upper bound (sqrt(33)-5)/16<A*. We may therefore assume
exactly three occupied corners, labeled

    A=(0,0), B=(0,1), C=(1,1),

after a square isometry. Suppose, for a contradiction, that the minimum
ordinary unsigned area is at least A*. Every doubled unsigned area is
then at least sigma=93/1000, because ATTAINMENT.md proves sigma<2A*.

Every one of the seven other points is strictly above or strictly below
AC. Write k for the number above it. The upper points are inside the
actual triangle ABC. The following table exhausts all eight possible
values of k.

| Upper count k | Complete exclusion |
|---:|---|
| 0, 1, 2 | THREE_CORNERS.md, the seven-point endpoint theorem and its immediate larger-count consequences |
| 3 | The upper-triple and lower-fan alternatives below |
| 4, 5, 6, 7 | TRIANGLE_OCCUPANCY.md: an actual triangle in the square cannot contain four further points at this threshold |

The diagonal itself contains no further point, since A,C and that point
would be collinear. Thus these counts omit no competitive face.

For k=3, the upper triple is either clustered or distributed. Clustered
means that some one of its points has the other two in one triangle of
its fan to A,B,C. CLUSTERED_TRIANGLE.md excludes the entire clustered
alternative, with the four lower points unrestricted.

In the distributed alternative choose Y with least B-barycentric
coordinate y-x. The fan triangle ACY contains neither other upper point;
otherwise its B-coordinate would be strictly smaller. Consequently the
other upper points can be labeled Z inside ABY and X inside BCY. A tie
in the least coordinate causes no problem, because all fan membership
tests are strict.

The line BY divides the four lower points into A-side and C-side sets.
No lower point lies on BY, because B,Y and that point are actual. The
five possible counts are now all closed:

| A-side / C-side count | Complete proof | Printed cubic rows | Integer entries |
|---|---|---:|---:|
| 4/0 or 0/4 | U3_FOUR_ONE_SIDE.md | 6 | 269 |
| 3/1 or 1/3 | U3_THREE_ONE.md | 20 | 1,392 |
| 2/2 | U3_TWO_TWO.md | 17 | 1,463 |
| Total | All distributed placements | 43 | 3,124 |

Reflection in x+y=1 exchanges A,C and the two fan sides, so the stated
reflected alternatives require no additional hypothesis. In the 3/1
proof, once the three-point side is called A-side, the necessary order
u>h is proved by the endpoint-seven theorem; it is not imposed by a
second, incompatible symmetry choice.

Each manuscript supplies its geometric reductions, strict sign
dichotomies, every nonnegative factor, all positive integer coefficients,
and its exact rational negative bounds. The fixed sums contradict the
assumption that all actual doubled areas are at least sigma. Independent
Fraction and SymPy expansions reproduce every printed row; the written
case trees supply the continuous geometric coverage.

Every count and fan alternative has therefore been excluded. There is
no equality case in III. The remaining unrestricted hand-proof
obligations II, C1, N6 and N7 are listed separately in ROADMAP.md.
