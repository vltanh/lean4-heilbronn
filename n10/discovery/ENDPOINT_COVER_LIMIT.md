# A limit of the endpoint-container shortcut

**Scope.** This exact example refutes only the proposed *threshold-free*
claim that every III-3C-U3 configuration has seven points in a triangle
of area at most 1/2 whose vertices include two of those actual points.
The example has minimum area below A*. It is not a counterexample to the
Heilbronn upper bound, and does not refute an endpoint-container lemma
that uses the hypothesis that every triangle area is at least A*.

The seven-point endpoint lemma in `../hand/THREE_CORNERS.md` is proved.
Its application to arbitrary III-3C-U3 configurations still requires an
additional quantitative argument. The hand-proof U3 entry remains open.

## Exact example

Divide every coordinate in this table by 1000.

| Index | x numerator | y numerator | Role |
|---:|---:|---:|---|
| 0 | 0 | 0 | A, occupied corner |
| 1 | 0 | 1000 | B, occupied corner |
| 2 | 1000 | 1000 | C, occupied corner |
| 3 | 77 | 462 | Upper |
| 4 | 402 | 562 | Upper |
| 5 | 319 | 923 | Upper |
| 6 | 1000 | 103 | Lower |
| 7 | 915 | 368 | Lower |
| 8 | 744 | 0 | Lower |
| 9 | 275 | 194 | Lower |

There are exactly three occupied square corners, three free points above
AC and four below it. The least ordinary triangle area is

    2379/62500 = 0.038064 < A*,

attained by indices 1,4,8. In particular all points are distinct and no
three are collinear.

Among every seven-point subset and every choice of two of its actual
points as container vertices, the smallest possible containing triangle
has doubled area

    806/725 > 1,

or ordinary area 403/725. It is attained for base B,C with the other five
points of indices 0,3,4,5,9. The third container vertex is unrestricted:
it may be outside the square. Thus allowing arbitrary actual bases or
external apices does not repair the threshold-free claim.

## Exact calculation of a containing triangle

Fix actual base endpoints P,Q and put v=Q-P. For each other point X on
one chosen side of the base, use coordinates

    u_X = dot(v,X-P)/dot(v,v),
    d_X = absolute(det(v,X-P)) > 0.

Orient the perpendicular coordinate toward that chosen side. A triangle
with base P,Q, doubled area D, and apex longitudinal coordinate t contains
X exactly when

    D>=d_X,
    1+D(u_X-1)/d_X <= t <= D u_X/d_X.

This is the barycentric condition: the coefficient of the apex is d_X/D
and the coefficient of Q lies between zero and 1-d_X/D.

For a fixed set S of five same-side points, put

    J=min_{X in S}(u_X/d_X)
        -max_{X in S}((u_X-1)/d_X).

If J<=0 no such finite triangle exists. If J>0 the exact minimum is

    D_min=max(max_{X in S} d_X, 1/J).

The interval for t is closed and nonempty at this minimum, so it is
attained. There are 45 unordered actual bases, two choices of side, and
at most choose(8,5) five-point subsets per side. The script evaluates all
of them using `fractions.Fraction`. This finite exact calculation proves
the stated obstruction; the numerical search that originally suggested
the configuration is not a premise.

As a second check, at D=1 the membership intervals are

    [(u_X+d_X-1)/d_X, u_X/d_X],    provided d_X<=1.

The exact maximum overlap of these closed intervals is at most four for
every actual base and side. Since five same-side points are needed in
addition to the two base endpoints, no permitted half-area container
exists.

## Reproduction and interpretation

From the repository root run

    python3 n10/discovery/endpoint_cover_obstruction.py

The script checks all 120 triangle areas, every actual base and side, and
every five-point subset, then rewrites `endpoint_cover_obstruction.json`
with exact fractions. All computations are local; no solver, Lean build,
CI or floating-point arithmetic is used.

The next useful endpoint-container result must exploit the competitive
area threshold, or use a different geometric argument. This example
supplies no lower bound competitive with A* and closes no new hand-proof
case.
