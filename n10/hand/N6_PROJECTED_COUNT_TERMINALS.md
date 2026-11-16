# The two sharp terminals in the six-contact count catalogue

Use the actual six contacts and five regions of N6_PLACEMENTS.md:

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

All four free points are strictly inside the square. Write [XYZ] for
their signed doubled determinant and t for the minimum unsigned
actual doubled triangle area. Assume t>0. The following are sharp
terminals for finite placement trees. Their conclusion is m=t/2<A*;
no uniform gap below A* is claimed.

## 1. One lower, one upper, and one point in each side cap

Let P=(p,q) be in HABC, Q=(u,v) in HCEF, R=(r,w) in the right
cap, and S=(j,k) in the left cap. Suppose

    ARP>0, BSP<0, CFQ>0, EHQ>0,
    APQ>0, BPQ<0, EPQ<0, FPQ>0,                     (1)
    p>=b, q>=a.                                    (2)

These hypotheses exclude the entire stated chamber.

To apply N6_PROJECTED_CHAMBERS.md, Section 1, use its octagon and
interior labels as follows:

| Projection-theorem label | Actual point here |
|---|---|
| A,B,C,D,E,F,G,H | A,B,C,R,E,F,S,H |
| O,P | P,Q |

The right-cap test gives c<r<1 and 0<w<e. The left-cap test gives
0<j<f and h<k<1. Thus the projected octagon has the strict side
orders required there. Its inward depths are delta=1-r>0 and
epsilon=1-k>0.

The four cap expressions in that theorem are ASH, BCR, CRE, FSH.
All are positive by the side orders and the two cap tests. The
remaining eight expressions are exactly those in (1), with their
displayed signs. Each expression therefore has magnitude at least t.

It remains to justify its positive interior increments, rather than
assume them. Set U=u-p, V=v-q, alpha=e-a and beta=f-b. Then

    APQ-EPQ=V-alpha*U>=2t,
    FPQ-BPQ=U-beta*V>=2t.                           (3)

Here 0<=alpha,beta<1. Adding beta times the first inequality to
the second, and alpha times the second to the first, gives

    (1-alpha*beta)U>=2t(1+beta)>0,
    (1-alpha*beta)V>=2t(1+alpha)>0.

Hence U,V>0. Conditions (2) are precisely the two remaining coordinate
hypotheses of that projection theorem. It projects R and S outward,
preserves all twelve required lower bounds, and strictly increases
two cap areas. Its equality argument proves m<A*.

## 2. Two upper points and two top-cap points

Let P=(p,q), Q=(u,v) lie in HCEF. Let R=(r,w), S=(j,k) lie in
the top cap, labeled so ERS>0. Suppose

    FRS>0, CSQ>0, EAQ<0, RHP>0, FBP>0,
    CPQ<0, EPQ>0, FPQ>0, HPQ<0,                    (4)
    u<=c, q<=h.                                    (5)

The strict sign ERS>0 is part of the top-point labeling. In finite
tables HPQ<0 may likewise be part of the initial upper-point order;
it is still recorded in (4) so that every required sign is explicit.

Apply the determinant-preserving rotation T(x,y)=(y,1-x). Use the
following labels in N6_PROJECTED_CHAMBERS.md, Section 2:

| Projection-theorem label | Point after rotation |
|---|---|
| A | T(C)=(0,1-c) |
| B | T(E)=(e,0) |
| C | T(R)=(w,1-r) |
| D | T(S)=(k,1-j) |
| E | T(F)=(1,1-f) |
| F | T(H)=(h,1) |
| G | T(A)=(a,1) |
| H | T(B)=(0,1-b) |
| O,P | T(Q),T(P) |

Each top-cap point has x>f and y>e. Consequently the projected
octagon has

    0<1-c<1-b<1, 0<e<w<1,
    0<1-j<1-f<1, 0<a<h<1.

Its inward depths are eta=1-r>0 and delta=1-k>0. The two other
strict conditions in that theorem are k>e and 1-r<1-f, already
provided by the top-cap tests. The two weak conditions are
1-u>=1-c and q<=h, precisely (5).

For completeness, its twelve signed expressions become

| Required expression | Determinant before rotation |
|---|---|
| AGH | CAB=ABC |
| BCD | ERS |
| CDE | RSF=FRS |
| FGH | HAB=ABH |
| ADO | CSQ |
| -BGO | -EAQ |
| CFP | RHP |
| EHP | FBP |
| AOP | -CPQ |
| -BOP | EPQ |
| -EOP | FPQ |
| FOP | -HPQ |

The two anchor signs are positive from the contact order. All other
signs are explicit above. Each required expression is at least t.

The interior increments after rotation are U=q-v and V=u-p. The
same two identities (3), now with alpha=c-f and beta=h-e, follow
from the last four lines of the table. Both coefficients are in
[0,1), so the same positive linear combinations prove U,V>0.
All hypotheses of Section 2 of the projection theorem hold. Its
two strictly increased cap areas exclude equality and prove m<A*.

## 3. Use in exhaustive trees

A determinant split in either chamber is exhaustive because every
actual determinant is nonzero. A weak coordinate cut and its opposite
weak cut cover their common equality face. A leaf may invoke this
note only when every sign and both coordinate conditions in its
respective section have been established.

The strict inward depths use the defining strict interior condition
of N6. Therefore this terminal is not an assertion of a uniform
sigma contradiction on a closed outer box or a sharp exclusion for
an additional boundary-contact family. The other finite-tree leaves
must still be excluded or assigned their own valid terminal.
