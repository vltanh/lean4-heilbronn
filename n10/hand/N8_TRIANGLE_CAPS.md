# Eight boundary points: a uniform triangle capacity and the 3/5 placement

This note proves that each square-symmetry image of the actual triangle
AEF contains at most one of the two interior points. It then gives a
complete placement reduction for the remaining 3/5 line class. It does
not yet exclude that class, and does not close HP12-N8.

All areas below are doubled. Put s=93/1000 and use the literal boundary
coordinates

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,1), H=(0,h),

with 0<a<h<1, 0<b<c<1, 0<d<e<1, 0<g<f<1. Suppose every actual
unsigned triangle area is at least s. The eight boundary-ear inequalities
are the ones printed in N8_OP_LINE_CAPS.md; no hypothesis about the
interior-point line is used in Sections 1--2.

## 1. Eliminate the side spans from the area of AEF

Write

    L=h-a, J=c-b, R=e-d, T=f-g, alpha=s/J.

The boundary ears imply

    a,d>=alpha,       e>=alpha+R,       g>=s/L,
    b>=s/L,          1-c>=s/R,         1-h>=s/T.

Consequently the positive actual area W of AEF satisfies

    W=1-a-(e-a)f
      <=1-alpha-R*f
      <=1-alpha-R*(T+s/L).                            (1)

The substitutions use 0<f<1. The bottom and left side decompositions give

    J<=1-s/L-s/R,       L<=1-alpha-s/T.

In particular

    1-s/L-s/alpha >= s/R >0,
    1-alpha-L >= s/T >0,

and hence

    R>=s/(1-s/L-s/alpha),
    T>=s/(1-alpha-L).

Substitute these positive lower bounds in (1). The product being
subtracted is at least

    R*(T+s/L)
      >=s^2*alpha*(1-alpha)/Q(L),

    Q(L)=(1-alpha-L)*[(alpha-s)L-s*alpha]>0.          (2)

The first positive denominator forces alpha>s. Since both factors in
Q(L) are positive, their permitted interval for L is nonempty, and

    alpha*(1-alpha)>s.                               (3)

For fixed alpha, completing the square in L gives

    Q(L) <= [alpha*(1-alpha)-s]^2/[4*(alpha-s)].      (4)

Explicitly, the difference between the right side and Q(L) is

    (alpha-s)*[L-(1-alpha)/2-s*alpha/(2*(alpha-s))]^2.

All denominators in (2)--(4) are positive. Thus

    W <= (1-alpha)*
          [1-4s^2*alpha*(alpha-s)/[alpha*(1-alpha)-s]^2]. (5)

## 2. A printed positive quintic proves W<69/100

Equation (3) implies alpha>1/10, because alpha<=1/10 would give
alpha*(1-alpha)<=9/100<s. If alpha>=31/100, (1) immediately gives
W<1-alpha<=69/100. It remains to treat 1/10<alpha<31/100.

By (5), it suffices to prove positivity of

    P(alpha)=4s^2*alpha*(alpha-s)*(1-alpha)
             -(31/100-alpha)*[alpha*(1-alpha)-s]^2.

Its exact expansion at s=93/1000 is

    P(alpha)=alpha^5-(231/100)alpha^4
       +(442851/250000)alpha^3
       -(128961643/250000000)alpha^2
       +(15772893/250000000)alpha-268119/100000000.

Here are two positive-coefficient identities that cover the whole interval.
Define B_i(z)=binom(5,i)*z^i*(1-z)^(5-i), for 0<=i<=5. In each row,

    P(left+(right-left)z)=(1/denominator)*sum_(i=0)^5 n_i B_i(z).

| left | right | denominator | n0 | n1 | n2 | n3 | n4 | n5 |
|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 1/10 | 1/5 | 250000000000 | 4976370 | 26598258 | 19963803 | 8758105 | 7616264 | 24623380 |
| 1/5 | 31/100 | 25000000000000 | 2462338000 | 4333120760 | 8399927317 | 15738884481 | 26467133562 | 40145457870 |

These are polynomial identities, checked by expanding the six terms in
each row. Every integer n_i is positive, and the nonnegative B_i(z) sum
to one on [0,1]. Thus P(alpha)>0 throughout the required interval.
This proves the uniform bound

    area2(AEF)<69/100.                                (6)

If AEF contained both O and P, the two-interior-point theorem would
instead give area2(AEF)>=Gamma2*s, where Gamma2=4+2sqrt(3). But

    Gamma2>149/20,
    (149/20)s-69/100=57/20000>0.

The radical comparison follows from sqrt(3)>69/40. This contradicts (6).
Therefore AEF contains at most one interior point. Square rotations and
reflections give the same statement for all eight distinct images of
this triangle.

## 3. The complete forced placement in the 3/5 line class

Use the 3/5 representative from N8_OP_LINE_CAPS.md: the positive boundary
arc of the directed line OP is H,G,F, and the negative arc is A,B,C,D,E.
For a boundary vertex V, put

    d_V=det(P-O,V-O).

Since d_H-d_A=(x_P-x_O)(h-a)>0, the direction has x_P>x_O. No
assumption about the sign of y_P-y_O is needed.

By the established strict octagon containment, O and P lie on the
octagon's chord cut by their line. They cannot belong to the convex
five-vertex cap ABCDE, whose vertices all have negative d_V. The actual
chord AE therefore puts both points strictly in the complementary cap
AHGFE; equivalently both AEO and AEP are positive. Similarly, the three
positive vertices H,G,F have a convex hull disjoint from OP. The chord
HF cuts that ear from the octagon, so both points are on its inner side:
FHO and FHP are positive.

The actual diagonal AF splits the cap AHGFE into the quadrilateral AHGF
and the actual triangle AEF. By Section 2, the latter cannot contain both
O,P. The quadrilateral lies in the virtual corner triangle
conv{A,(0,1),F}, which cannot contain both O,P by SIX_POINT_ENDPOINT.md
and N8_OP_LINE_CAPS.md Section 3. Hence AF strictly separates O and P.

Moreover

    area2(AFP)-area2(AFO)=d_A-d_F<0.

The earlier point O is therefore in AHGF and the later point P is in
AEF. Since O is also on the inner side of HF, it is in the smaller
actual triangle AHF. The precise forced signs are

    AFO>0,       AFP<0.                               (7)

Two other useful signs follow from the same corner capacity. First,

    area2(DGP)-area2(DGO)=d_D-d_G<0.

If DGO were negative, DGP would also be negative, putting both points
inside conv{D,(1,1),G}, a contradiction. Thus DGO>0. Second,

    area2(CHP)-area2(CHO)=d_C-d_H<0.

If CHP were positive, CHO would also be positive, putting both points
inside conv{H,(0,0),C}. Hence CHP<0. Membership in these virtual corner
triangles is exactly the indicated chord side within the square; their
other two sides are square sides.

Finally g<f and (7) give

    area2(AGP)=(g/f)*area2(AFP)
                -(1-g/f)*(1-a)*x_P <0.

The same-side cap bound in N8_OP_LINE_CAPS.md Section 2 supplies two
more signs. The line enters the left cap BAHG through AH and leaves it
through BG. If P were in that cap, the earlier point O would also be
there, contrary to its capacity of one. Hence BGP<0. Similarly, the
line enters the top cap EFGH through EH and leaves it through EF.
If O were there, the later point P would also be there. Thus EHO>0.
These cap descriptions follow directly by intersecting the line with
the two indicated edges; all other cap edges have their endpoints
strictly on one side of the line. Since O is in AHF, the last sign
also puts O inside AEH.

In addition, every vertex of AHF is on the nonnegative side of each
directed chord BF, CF, and DF, with a strict sign at A and H. For
example the determinants at A are respectively

    b*(1-a)+f*a,
    c*(1-a)+f*a,
    1-f*d-(1-f)*a,

all positive; replacing a by h proves positivity at H, and F lies on
each chord. Convexity therefore gives BFO,CFO,DFO>0.

Thus every competitive configuration in the entire 3/5 class satisfies

    O in AHF and AEH,       P in AEF,
    AFO>0, AFP<0, AGP<0, DGO>0, CHP<0,
    BGP<0, EHO>0, BFO>0, CFO>0, DFO>0.                (8)

All these are actual-triangle signs, so zero cases are excluded by the
positive minimum area. This is a uniform reduction of the whole 3/5
class. A quantitative contradiction for the remaining placement (8)
is still needed; no closure of N8-3/5 is claimed here.
