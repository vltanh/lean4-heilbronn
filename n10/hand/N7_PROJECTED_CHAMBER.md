# Seven boundary points: a strict projected candidate chamber

This note proves a strict upper bound throughout a complete chamber with
one secondary contact moved into the square. It does not yet prove that
every normalized seven-boundary maximizer belongs to this chamber. The
strictness is an attainment exclusion, with no claimed uniform gap from
the candidate on the nonclosed seven-boundary domain.

N7_PROJECTED_SIGNS.md removes the extra projection-coordinate condition
from the entire normalized sign chamber of this note. Global coverage
outside that sign chamber remains a separate obligation.

All determinants below are doubled signed areas. Write s=2m for the
minimum doubled unsigned triangle area of the original ten points.

## 1. The twelve-inequality form of the asymmetric theorem

The proof in ASYMMETRIC_SIGN_CHAMBER.md uses only the following twelve
lower bounds, for eight boundary points in their stated side order and
two interior points with positive coordinate displacements:

    AGH, BCD, CDE, FGH >= t;
    ADO, -BGO, CFP, EHP >= t;
    AOP, -BOP, -EOP, FOP >= t.                         (1)

Here t is any positive common lower bound for those twelve expressions.
The proof never uses a lower bound for another triangle. Thus its
conclusion applies directly to (1):

    t <= 2A*.

Moreover, equality forces the complete candidate coordinates in these
labels, and in particular all four corner expressions AGH,BCD,CDE,FGH
equal t. This follows from the equality argument in Sections 4-6 of
that note: both paired cap inequalities are sharp, and equality in the
geometric-mean step forces the two original products in each pair to
equal t. No assertion that the other projected triangles have area at
least t is needed to use this version of the theorem.

## 2. One missing upper-left secondary contact

Consider the seven boundary contacts

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), H=(0,h),

with 0<a<h<1, 0<b<c<1, 0<d<e<1, and 0<f<1. The three other
points are

    G=(g,1-epsilon), O=(x,y), P=(x+U,y+V),

where 0<g<f, epsilon>0, and all three are strictly inside the square.
Assume U,V>0 and x>=b. Suppose their actual signed triangles satisfy

    FGH>0;
    ADO>0, BGO<0, CFP>0, EHP>0;
    AOP>0, BOP<0, EOP<0, FOP>0.                     (2)

Then

    m < A*.

**Proof.** If s=0 the conclusion is immediate. Otherwise project only
G to G'=(g,1). The projected boundary points have the strict side order
required in Section 1. The twelve expressions in (1), using G', have
the following relations to the original expressions:

    AG'H=AGH,
    FG'H=FGH+epsilon*f,
    -BG'O=-BGO+epsilon*(x-b).                       (3)

The other nine expressions are unchanged. These identities follow by
expanding their two-by-two determinants. For example,

    FGH=(f-g)(1-h)-epsilon*f,
    -BGO=(1-epsilon)(x-b)-(g-b)y.

The original AGH,BCD,CDE are positive by the side orders. The remaining
signs are precisely (2), so each original expression in (1) is at
least s. Equation (3), epsilon>0, f>0, and x>=b show that all twelve
projected expressions are at least s, with FG'H strictly greater than
s. Applying Section 1 gives s<=2A*. Equality would force FG'H=s,
contrary to this strict inequality. Therefore s<2A*, as claimed.

The proof does not require all 120 triangle areas to be preserved by
the projection. Its input to the sharp theorem is exactly the twelve
verified inequalities (1).

## 3. The four secondary versions

The candidate symmetries S(x,y)=(y,x) and R(x,y)=(1-x,1-y), with
the corresponding boundary relabeling and interchange of O,P for R,
give the analogous strict chambers for an inward C,D, or H. Their
coordinate condition and three affected projected expressions are
listed here. The other nine expressions from (1) are unchanged.

| Inward point | Outward projection | Required coordinate inequality | Preserved cap | Increased cap | Increased signed oblique |
|---|---|---|---|---|---|
| G=(g,1-epsilon) | (g,1) | x_O>=b | AGH | FGH gains epsilon*f | -BGO gains epsilon*(x_O-b) |
| D=(1-epsilon,d) | (1,d) | y_O>=a | BCD | CDE gains epsilon*e | ADO gains epsilon*(y_O-a) |
| C=(c,epsilon) | (c,0) | x_P<=f | CDE | BCD gains epsilon*(1-b) | CFP gains epsilon*(f-x_P) |
| H=(epsilon,h) | (0,h) | y_P<=e | FGH | AGH gains epsilon*(1-a) | EHP gains epsilon*(e-y_P) |

In each row the point is strictly inward, the other seven contacts are
on their specified sides, the projected side order is strict, and all
twelve original expressions have the signs in (1). The increased cap
has a strictly positive gain. The same twelve-inequality argument
therefore gives m<A* in every row, including equality in the displayed
coordinate inequality.

## 4. Why normalized candidate limits omit secondary contacts

At the candidate, use the parameter g_* from ATTAINMENT.md and put

    a_*=(1-g_*)(1-2g_*), q_*=g_*/2.

The primary contacts are A,B,E,F, with offsets a_*. The secondary
contacts are C,D,G,H, with offsets q_*. In particular

    a_*-q_*=1-(7/2)g_*+2g_*^2 > 1/18 > 0.          (4)

Indeed the polynomial on the right decreases on [0,1/3], and its
value at 1/3 is 1/18; ATTAINMENT.md gives g_*<1/3.

If only primary contact A is moved inward while the other seven
contacts remain on their sides, the only left contact is H at height
1-q_*. Both right contacts D,E are lower, since their highest height
is 1-a_*<1-q_*. The left and right contact intervals therefore fail
to overlap. This contradicts the necessary projection-overlap
condition for a normalized maximizer in NORMALIZATION.md. The strict
gap (4) persists in an open neighborhood of the candidate. Its two
candidate symmetries S,R give the same argument for omissions of
B,E,F.

Consequently, in a sufficiently small candidate neighborhood, a
normalized configuration with exactly seven boundary points can omit
only one of C,D,G,H. The two interior candidate points are a positive
distance from the square boundary, so they do not become additional
contacts in that neighborhood. All strict triangle signs in (1), the
projected side orders, and U,V>0 persist there. The coordinate margins
for the four rows of Section 3 also persist: at the candidate they are
all equal to

    g_*-a_*=-1+4g_*-2g_*^2 > 7/128 > 0,             (5)

because this polynomial increases on (0,1), g_*>5/16, and its value
at 5/16 is 7/128. Thus Sections 2-3 exclude attainment by every
normalized N7 configuration in that neighborhood.

The chamber theorem itself is stronger than this local consequence:
it applies throughout the full domain (2), at any inward depth and
without any symmetry assumption. To close HP12-N7 globally, one must
still supply an exhaustive placement/sign argument forcing a putative
normalized N7 maximizer into one of these chambers or exclude the
remaining alternatives.
