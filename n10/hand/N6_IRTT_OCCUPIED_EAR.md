# Quantitative ear sources for triangular IRTT

Use the nine actual points of
[the core width argument](N6_IRTT_CORE_CAPS.md) and
[the core domain](N6_IRTT_CORE_DOMAIN.md). Their actual strictly convex
octagon is A,B,C,Q,E,R,F,H. The actual point S is strictly inside
its ear ERF. Let D_i be the eight positive doubled ear areas, in
that cyclic order. These are the ordered actual triangles

    HAB, ABC, BCQ, CQE, QER, ERF, RFH, FHA.

The actual clearance is s=93/1000. No virtual point receives a
minimum-area hypothesis.

## 1. Fixed individual and sum caps

[NINE_CONVEX_POINTS.md](NINE_CONVEX_POINTS.md) proves

    sum D_i^(1/3)<=4.

Put m=453/1000 and t=653/1000. Then m^3<s and t^3<3s.
Every ear root exceeds m, and the occupied ERF root exceeds t.
For every different ear D, the other six ordinary ear roots and
the occupied root give

    D<=(4-t-6m)^3=248858189/1000000000.             (1)

Every ear also has the weaker cap (4-7m)^3=569722789/10^9.
For their sum, if y>=x>=m and 0<=z<=x-m, then

    (y+z)^3+(x-z)^3-y^3-x^3
       =3z(x+y)(y-x+z)>=0.

Repeatedly move each surplus above m into a largest root. Its
final value is at most 4-7m. Thus

    sum D_i<=7m^3+(4-7m)^3=76277533/62500000.      (2)

These are the general octagon bounds also proved in
[the quantitative BITT ear lemma](N6_BTTT_REMAINING_BITT_OCTAGON.md).
Their present application uses the different actual octagon
ABCQERFH and the explicitly occupied ear ERF with occupant S.

The literal nonnegative coordinate factors are (1)'s constant
minus its ordered actual ear determinant, and (2)'s constant
minus the sum of all eight ordered ear determinants. Their source
records name the entire ordered octagon. A use of (1) additionally
names ERF and S and requires all three actual inward tests.

An unsigned scalar upper bound may use the same individual cap.
The scalar sum relation is sum D_i<=76277533/62500000. Isolating
one ear subtracts only immutable lower bounds for the other seven.
All eight orientations come from the actual convex octagon.

## 2. A rational chord of the cube root

For each ear fix proved rational bounds 0<L_i<M_i before any
coordinate refinement that uses this source. Its lower bound may
be the actual occupancy cost s or 3s. An upper bound may be a
preceding cap, the exact maximum over a prior fixed box, or the
minimum of such proved caps. Every such choice retains its source.

Choose nonnegative rational beta_i,gamma_i satisfying

    beta_i^3<=L_i, gamma_i^3<=M_i.

For L_i<=D_i<=M_i, concavity of x^(1/3) on x>0 gives

    beta_i+(gamma_i-beta_i)(D_i-L_i)/(M_i-L_i)
       <=D_i^(1/3).

Indeed the true-endpoint chord lies below the concave function;
lowering either endpoint preserves that inequality. Consequently
the following is a nonnegative necessary coordinate factor:

    4-sum_i [beta_i+
       (gamma_i-beta_i)(D_i-L_i)/(M_i-L_i)]>=0.     (3)

It is affine in the actual ear areas and multiaffine in the point
coordinates. It uses no inferred geometry from a feasible scalar
system. All ear signs, occupancies, positive denominators, source
box endpoints and rational cube comparisons are explicit premises.

A literal record for (3) prints the ordered octagon and one row
per ear containing its ordered labels, actual occupants, L_i,M_i,
beta_i,gamma_i and the ancestry of both area bounds. The source
box is the immutable input box of that refinement stage. An upper
bound obtained by (3) cannot be reused to justify the same row's
initial M_i.

## 3. Verification status

The uniform octagon bounds (1)–(2) are previously independently
accepted mathematics. This note supplies their actual nine-point IRTT
scope and the displayed proof of (3). The complete use of these sources
is printed in [the HA tables](N6_IRTT_CORE_HA_TABLES/INDEX.md), including
every endpoint and exact cube-root comparison, and checked by separate
author and independent implementations. See
[the complete IRTT proof](N6_IRTT_CORE_COMPLETE.md) for exhaustive coverage.
