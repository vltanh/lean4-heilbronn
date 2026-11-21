# Six boundary points: two strict projection chambers

This note excludes attainment throughout two asymmetric chambers with
two secondary candidate contacts moved inward. The chambers include
all normalized N6 configurations sufficiently close to a candidate.
They do not yet cover every global N6 placement; that remaining
obligation stays open in ROADMAP.md.

All determinants are doubled signed areas. Set s equal to the minimum
doubled unsigned area of the original ten points. If s=0 there is
nothing to prove. Assume s>0, and use the boundary labels and two
interior points O=(x,y), P=(x+U,y+V) of
ASYMMETRIC_SIGN_CHAMBER.md, with U,V>0. The four primary points are

    A=(0,a), B=(b,0), E=(1,e), F=(f,1).

The twelve-inequality form of the sharp theorem, explicitly recorded
in N7_PROJECTED_CHAMBER.md Section 1, requires only

    AGH, BCD, CDE, FGH >= s;
    ADO, -BGO, CFP, EHP >= s;
    AOP, -BOP, -EOP, FOP >= s.                         (1)

If all twelve hold for eight boundary points in strict cyclic side
order and the stated O,P, that theorem gives s<=2A*. Equality forces
the exact candidate and makes each of the four cap areas in the
first line equal s. We apply this form to outward projections; no
assertion about the other projected triangles is needed.

## 1. The missing points D and G

Let C=(c,0), H=(0,h) remain on their sides, and put

    D=(1-delta,d),       G=(g,1-epsilon),
    delta,epsilon>0.

Assume that the projected points D'=(1,d), G'=(g,1), together with
the six boundary contacts, have the strict side order

    0<a<h<1, 0<b<c<1, 0<d<e<1, 0<g<f<1.

Assume all twelve original expressions in (1) are positive, and

    y>=a,       x>=b.                                 (2)

Each original expression is then at least s. Project D and G
simultaneously. The four changed expressions have the exact gains

    C D' E - C D E = delta*e,
    F G' H - F G H = epsilon*f,
    A D' O - A D O = delta*(y-a),
    -B G' O - (-B G O) = epsilon*(x-b).               (3)

The other eight expressions are unchanged. In particular no selected
triangle contains both moving points. All gains are nonnegative and
the first two are strictly positive. The twelve projected expressions
therefore satisfy (1), so s<=2A*. Equality would force C D' E=s and
F G' H=s, contrary to their strict gains over original areas already
at least s. Hence

    m=s/2<A*.

## 2. The consecutive missing points C and D

Let G=(g,1), H=(0,h) remain on their sides, and now put

    C=(c,eta),       D=(1-delta,d),
    eta,delta>0.

Assume the projected C'=(c,0), D'=(1,d) and the six boundary contacts
have the same strict side order as in Section 1. Assume every original
expression in (1) is positive and require

    1-delta>b,       eta<e,       y>=a,       x+U<=f.   (4)

The exact gains between the original and final projected expressions
are

    B C' D' - B C D = eta*(1-delta-b),
    C' D' E - C D E = delta*(e-eta),
    A D' O - A D O = delta*(y-a),
    C' F P - C F P = eta*(f-x-U).                     (5)

The remaining eight are unchanged. These formulas account for both
moving points in BCD and CDE; they do not assume that projecting
either point alone preserves every intermediate triangle area.
Conditions (4) make the first two gains strictly positive and the
other two nonnegative. The identical twelve-inequality argument gives
s<2A*, hence m<A*.

## 3. All normalized N6 candidate limits lie in these chambers

At the candidate let g_* be its algebraic parameter, and write

    a_*=(1-g_*)(1-2g_*),       q_*=g_*/2.

The primary contacts A,B,E,F have offset a_*, and the secondary
contacts C,D,G,H have offset q_*. N7_PROJECTED_CHAMBER.md proves

    a_*-q_*>1/18,       g_*-a_*>7/128.                (6)

In a sufficiently small candidate neighborhood, the two original
interior points stay interior, no corner appears, and no contact can
move to a different square side. A normalized N6 configuration has
two singleton sides which are adjacent, because its two double sides
are adjacent. Thus it omits precisely one original contact on each
of two adjacent sides.

Neither omission can be primary. For example, if A is omitted,
the sole left contact is H, at a height close to 1-q_*. The opposite
right side is double, because the other omission is on an adjacent
side. Its highest contact has height close to 1-a_*. The strict first
gap in (6) separates these contact intervals, contradicting the
projection-overlap condition for a normalized maximizer. The candidate
symmetries (x,y)->(y,x) and (x,y)->(1-x,1-y) give the other three
primary cases.

The four possible pairs of secondary omissions on adjacent sides are

    {D,G}, {C,H}, {C,D}, {G,H}.

The same two candidate symmetries reduce the first two to Section 1
and the last two to Section 2. All original signs in (1), the projected
orders, and U,V>0 persist in a sufficiently small neighborhood. The
last two coordinate inequalities in (2) or (4) have the strict margin
g_*-a_*>0 at the candidate. The other two in (4) have strict positive
margins 1-a_* and 1-a_* there. Thus both chamber theorems apply
throughout their normalized candidate neighborhoods and exclude
attainment.

The results hold on the entire stated chambers, with no smallness
assumption on the inward depths beyond (2) or (4). The unresolved
global task is to force a putative N6 maximizer into one of them, or
exclude every other placement. No uniform gap below A* on all of N6
is claimed.
