# Complete exclusion of the six-contact count IRTT

There is no normalized N6 configuration of count IRTT in which every
actual unsigned doubled triangle area is at least s=93/1000. The proof
uses only nine of its ten points.

The six actual contacts are A=(0,a), B=(b,0), C=(c,0), E=(1,e),
F=(f,1), H=(0,h), with

    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

The IRTT count has one point P inside the contact quadrilateral HCEF,
one point Q=(u,v) strictly in the right cap CE(1,0), and two points
R=(r,w), S=(j,k) strictly in the top cap EF(1,1). All points belong
to the closed unit square, and all triangle areas in the argument are
actual doubled determinants. Discard P. The hypothesized clearance
continues to hold for the nine remaining actual points.

## The top pair and the actual hull

Interchange R,S if necessary so that ERS>0. Equality is impossible
under the assumed clearance. The top-corner classification in
[N6_CORNER_CONTAINERS.md](N6_CORNER_CONTAINERS.md) has exactly two
alternatives: FRS>0 gives the strict convex chain E,R,S,F, while
FRS<0 puts S strictly inside ERF.

The convex alternative is impossible. Its coordinate orders can be checked
without any extra geometric assumption. In reflected, scaled top-corner
coordinates write E=(0,1), F=(1,0), R=(x,y), S=(z,t), so all four
coordinates are positive and x+y,z+t<1. Put

    L=[ERS]=z(1-y)-x(1-t)>0,
    M=[FRS]=y(1-z)-t(1-x)>0.

Expansion gives

    (1-x)L+xM=(z-x)(1-x-y),
    yL+(1-y)M=(y-t)(1-x-y).

Consequently z>x and y>t. In the original coordinates r>j and w<k.
The actual seven-point chain B,C,Q,E,R,S,F therefore has nondecreasing
ordinates and five strictly positive consecutive turns, with
0<v<e<w<k<1. The first two
turns are BCQ,CQE>0; the middle cross-cap turn is

    QER=(1-u)(w-e)+(e-v)(1-r)>0;

the final turns ERS and RSF are positive by this alternative. The
[seven-point monotone-chain theorem](SEVEN_POINT_MONOTONE_CHAIN.md)
therefore supplies a turn at most (5sqrt(5)-11)/2<s, a contradiction.
The comparison is exact: 125<(11+2s)^2 and both sides before squaring
are positive.

We are consequently in the triangular alternative, S in int(ERF).
The actual hull is the strict octagon A,B,C,Q,E,R,F,H, as proved in
[N6_IRTT_CORE_GAPS.md](N6_IRTT_CORE_GAPS.md). The six contacts remain
extreme on the supporting square sides; Q is inserted between C,E and
R between E,F. S is interior. The occupied-ear consequence of
[NINE_CONVEX_POINTS.md](NINE_CONVEX_POINTS.md) makes every other octagon
ear empty. These are statements about the actual points, including
the nonzero neighbor-chord tests; no limiting coordinate corner is
assigned a new hull or an actual-point clearance.

## Exhaustive radial cases and exact exclusions

The [width bounds](N6_IRTT_CORE_CAPS.md) and
[initial domain](N6_IRTT_CORE_DOMAIN.md) apply to these nine points.
The [radial argument](N6_IRTT_CORE_GAPS.md) gives HRS<0 and QRS>0.
The line RS enters the strict convex octagon at R and crosses its
opposite boundary exactly once. Since no third actual point is on
that line, it exits in an open edge. The fixed H and Q tests leave
exactly four alternatives:

| Exit edge | ARS | BRS | CRS | Exclusion |
| --- | --- | --- | --- | --- |
| HA | + | + | + | [HA finite proof](N6_IRTT_CORE_HA.md) |
| AB | - | + | + | [Two triangles with apex R](N6_IRTT_AB_RADIAL.md) |
| BC | - | - | + | [Right-cap width and top-point order](N6_IRTT_RIGHT_RADIAL.md) |
| CQ | - | - | - | [Right-cap width and top-point order](N6_IRTT_RIGHT_RADIAL.md) |

The four rows are disjoint and exhaustive. For BC and CQ the
right-cap clearance bounds both candidate edge widths. The positive
weights of S in ERF then bound the vertical drop from R to S.
Together the bounds give a difference of **less** than 2s between
the endpoint determinants, whereas an exit requires **at least** 2s.
For AB the two triangles ABR and ERF both contain S. Comparing their
area requirements gives a universal upper bound of
\((5\sqrt5-11)/2<s\) on the clearance. HA has a complete cover by
19 rational coordinate splits and 20 terminal leaves: 19 impossible
intervals and one exact positive-product identity with a strictly
negative rational upper bound. Every closed coordinate-split face is
included in both children. Each endpoint computation, scalar identity,
occupant test, support cost and immutable source reference is printed
in the linked tables. Thus none of the four actual radial cases exists.

This contradicts the clearance hypothesis on the nine-point subset.
It therefore excludes the whole IRTT count, independently of the
discarded upper point P and of its location relative to any diagonal.
Transposing the square gives the corresponding left-cap orientation.

## Verification and scope

Run the complete author check:

    python n10/hand/N6_IRTT_CORE_COMPLETE_check.py

It checks the four-row coverage and the exact seven-chain comparison,
then replays every printed finite argument. Across all four radial cases
the totals are 98 stages, 1078 actual sign deductions, 914 physical
factors, 5827 coordinate updates, 867 scalar initial bounds, 3869 scalar
relations and 2822 scalar updates. The HA tree adds exactly 19 metric
splits; its terminal polynomial has 118 sources and 279 positive products.

The separate complete independent implementation is

    python n10/hand/n6_irtt_core_independent.py

It independently reconstructs the actual hull, all 84 triangle signs,
the twelve initial coordinate bounds, all area and coordinate steps,
the complete tree and the final positive-product contradiction. The
author corruption suites cover 21 radial and 22 HA errors. This
completes this N6 count; no assertion about a different count is used.
