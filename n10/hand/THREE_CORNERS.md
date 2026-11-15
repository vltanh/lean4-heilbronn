# Three occupied corners: the two largest lower occupancies

This note closes the complete entries III-3C-U0 and III-3C-U1. It uses the
triangle-occupancy theorem proved in [TRIANGLE_OCCUPANCY.md](TRIANGLE_OCCUPANCY.md)
and elementary affine geometry. No search or numerical certificate is a
premise.

Write A* for the candidate value and s=2A*. We use the exact inequality
s>1/11, proved in NORMALIZATION.md, Section 7.

## 1. Eight points in a triangle with two prescribed endpoints

**Endpoint lemma.** Eight points in

    T=conv{A=(0,0), D=(1,0), E=(1,1)},

including A and E, cannot have every triangle area at least A*.

Suppose otherwise. All points are distinct and no three are collinear.
If their convex hull is triangular, it has three actual vertices and five
strictly interior points. The occupancy theorem, which allows at most three
points strictly inside an actual triangle in the unit square, excludes this.

Suppose the hull is nontriangular. For the six points other than A,E define

    rho=min(y/x),       eta=min((1-x)/(1-y)).

The denominators are positive: any such point with x=0 or y=1 would equal
one of A,E, and any point on AE would give a collinear triple. Thus every
one satisfies 0<=y<x<=1 and 0<=rho,eta<1. All eight points lie in

    T'=conv{A,E,R},
    R=((1-eta)/(1-rho eta), rho(1-eta)/(1-rho eta)).

Indeed its two other supporting sides are y=rho x and
x=1-eta+eta y. The denominator is positive, R belongs to T, and T' has
positive area at most 1/2.

Each supporting side has an actual contact other than its base endpoint;
write P on AR and Q on ER. Each is unique, since two would be collinear
with A or E. They are distinct, since a common contact would be R and the
actual hull would be triangular. Neither equals R: otherwise the other
supporting side would contain the three actual points R,Q,E, or R,P,A.
Consequently P and Q are in the relative interiors of their supporting
sides.

Apply the affine map fixing A,E and sending R to D. It maps T' onto T and
multiplies every triangle area by (1/2)/area(T')>=1. Reflect across y=x.
The resulting eight-point configuration lies in

    0<=x<=y<=1

and has four distinct anchors

    A=(0,0), E=(1,1), H=(0,h), F=(f,1),    0<h,f<1,

plus four other points. All its triangle areas are still at least A*.
We now show that this is impossible.

## 2. Three cells contain every additional point

Put alpha=1-h, beta=1-f. Write each additional point as X=(x,x+w), and
define

    L(X)=f w-beta x,
    K(X)=h(1-x)-w,
    N(X)=f w+(h-beta)x-fh.

The anchor-pair triangle inequalities give

    w>=s,       hx>=s,       beta(1-x-w)>=s,
    |L(X)|>=s, |K(X)|>=s,   |N(X)|>=s.                    (1)

The anchor triangles also give hf>=s and alpha beta>=s. We will use

    sqrt(hf)+sqrt(alpha beta)<=1,                         (2)

which is Cauchy--Schwarz for the two unit vectors
(sqrt(h),sqrt(alpha)) and (sqrt(f),sqrt(beta)).

The identities

    N=-fK-alpha beta x,
    N=alpha L-hf(1-x-w)                                  (3)

show that N>0 forces L>0 and K<0. Thus the five possible sign patterns are

| Cell | L | K | N | Containments |
|---|---:|---:|---:|---|
| I | + | + | - | interior of AHF and AEH |
| II | - | + | - | interior of AEF and AEH |
| III | - | - | - | interior of EHF and AEF |
| IV | + | - | - | interior of AHF and EHF |
| V | + | - | + | beyond the side HF |

These containments are the ordinary oriented edge tests. For example AHF
has the tests x>0,L>0,N<0, while EHF has
1-x-w>0,K<0,N<0. No zero-sign case occurs by (1).

Cell IV is empty. A point there divides each of AHF and EHF into three
actual triangles, so hf>=3s and alpha beta>=3s. Equation (2) would imply
s<=1/12, whereas s>1/11.

Cell V is empty as well. Using N>=s in

    N=alpha f-alpha x-f(1-x-w)

and then (1), one gets

    alpha f>=s(1+alpha/h+f/beta)
             =s(h+beta-h beta)/(h beta).

Therefore

    s<=h beta(1-h)(1-beta)/(h+beta-h beta).                 (4)

Set r=sqrt(h beta) in (0,1). For fixed r the expression on the right of
(4) decreases as h+beta increases, and h+beta>=2r. Hence

    s<=r(1-r)^2/(2-r)<1/11.                               (5)

For completeness, the derivative of r(1-r)^2/(2-r) has the sign of
(1-r)(r^2-3r+1); its maximum on [0,1] is
(5sqrt(5)-11)/2, at r=(3-sqrt(5))/2. That maximum is strictly below 1/11:
sqrt(5)<123/55 follows from 5*55^2=15125<15129=123^2.
This proves the contradiction in (5) by exact arithmetic.

Only I, II and III remain. Cells I and III cannot both be occupied:
one point in each would again give hf>=3s and alpha beta>=3s, contradicting
(2).

## 3. The occupancy contradiction

There are four additional points. If cell I is occupied, cell III is empty,
so all four lie in I or II and hence strictly inside the actual triangle
AEH. If cell III is occupied, all four lie in II or III, strictly inside
AEF. If neither is occupied, all four are in II and lie inside both
triangles. Each alternative contradicts the three-interior-point maximum
from TRIANGLE_OCCUPANCY.md. This completes the endpoint lemma.

## 4. The two complete three-corner cases

Return to the three occupied corners

    A=(0,0), B=(0,1), C=(1,1).

At minimum triangle area at least A*, the seven remaining points lie in
the upper and lower triangles U_s,L_s defined in NORMALIZATION.md. If
zero or one point is in U_s, at least six points are in L_s. Choose six
such points and the actual corners A,C. These eight points lie in
conv{(0,0),(1,0),(1,1)} and include its two diagonal endpoints. The endpoint
lemma gives a contradiction.

Thus both III-3C-U0 and III-3C-U1 are completely excluded. Unselected
points impose no additional assumptions: triangle areas of a subset remain at least those
of the whole configuration. The affine expansion was applied only to the
selected eight points and all of them remained inside the unit square.

This note does not close III-3C-U2 or III-3C-U3.
