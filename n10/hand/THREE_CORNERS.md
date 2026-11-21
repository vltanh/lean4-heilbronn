# Three occupied corners: the seven-point endpoint theorem

This note closes the complete entries III-3C-U0, III-3C-U1 and III-3C-U2.
Sections 1–4 give the eight-point argument; Sections 5–9 strengthen it to
seven points and close U2. The note uses the
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

## 5. A rational threshold for seven points

We now strengthen the endpoint lemma from eight to seven points, which
will close III-3C-U2. For the rest of this note use the smaller rational
doubled-area threshold

    sigma=93/1000 < 2A*.

The strict comparison is exact: FOUR_CORNERS.md, Section 5 proves
2A*>93073/1000000>93/1000 by substitution into the defining cubic.
In particular sigma>1/11. All formulas and cell eliminations in Section 2
remain valid with s replaced by sigma.

We prove the stronger quantitative statement: seven points in T including
A,E have minimum ordinary triangle area strictly less than 93/2000.
Suppose instead that all their triangle areas are at least sigma/2.
A triangular actual hull would contain four other points. The occupancy
theorem gives m<5/108<93/2000, where the last strict comparison is
93/2000-5/108=11/54000>0. Otherwise the supporting-triangle
construction of Section 1 gives the four anchors A,E,H,F and three free
points. All still have doubled triangle area at least sigma. Cells IV,V
are empty and I,III cannot both be occupied.

The constants from TRIANGLE_OCCUPANCY.md are

    Gamma2=4+2 sqrt(3),       Gamma3=(11+3 sqrt(5))/2.

They bound an actual triangle containing respectively two and three
strictly interior points: its doubled area is at least Gamma2 sigma or
Gamma3 sigma.

There cannot be two points in I. Both would be inside AHF, giving
hf>=Gamma2 sigma, while alpha beta>=sigma. Cauchy--Schwarz (2) would imply

    1>=sqrt(sigma)(sqrt(Gamma2)+1)
      =sqrt(sigma)(2+sqrt(3)),
    sigma<=1/(2+sqrt(3))^2<1/11,

a contradiction. Reflection in x+y=1 interchanges I and III, so III
also has at most one point.

The pattern I,II,II is impossible. Its I point gives hf>=3sigma. The two
II points lie inside AEF, so beta>=Gamma2 sigma. Since sqrt(3)>17/10,

    beta>(37/5)(93/1000)=3441/5000>11/16.

On the other hand hf=h(1-beta)>=3sigma and (1-h)beta>=sigma imply

    3sigma/(1-beta)<=h<=1-sigma/beta,
    sigma<=beta(1-beta)/(1+2beta).

The last function decreases for beta>=11/16, since its derivative has
the sign of 1-2beta-2beta^2, which is negative there. Hence

    sigma<=55/608<1/11<sigma.

This is a contradiction; the strict comparison is 1/11-55/608=3/6688.
The reflected pattern II,II,III is excluded as well. Consequently the
only remaining possibility is three points in II.

## 6. A uniform strip for three points in II

Every II point is inside both AEH and AEF. The three-interior-point theorem
therefore gives

    h>=Gamma3 sigma,       beta>=Gamma3 sigma.              (6)

Reflect in x+y=1 if needed so that h<=beta. This reflection interchanges
h and beta and preserves cell II. For X=(x,x+w), inequalities (1) imply

    x >= (sigma+(1-beta)w)/beta,
    x <= 1-(sigma+w)/h,
    N=(1-beta)w+(h-beta)x-(1-beta)h <= -sigma.              (7)

Since h-beta<=0, insert the upper bound on x into N to obtain

    N >= beta(1-h)w/h-beta(1-h)-sigma+beta sigma/h.

Combining with N<=-sigma, and dividing by positive factors, gives

    w <= F(h),       F(t)=t-sigma/(1-t).                   (8)

Choose the rational constants

    G=177/20,
    k0=G sigma=16461/20000,
    M=F(k0)=21055479/70780000.

One has Gamma3>G because sqrt(5)>67/30, as 5*30^2=4500>4489=67^2.
Thus (6) gives h>k0. The function F decreases for t>=k0: its derivative
is 1-sigma/(1-t)^2<0, since (1-k0)^2<sigma. It follows that all three
points satisfy

    sigma<=w<=M.                                         (9)

Both h and beta are smaller than 9/10. For example the two anchor
inequalities require

    sigma/(1-h)<=beta<=1-sigma/h,

so h(1-h)>=sigma>9/100, which excludes h>=9/10; the same reasoning
applies to beta. Put u=9/10. Enlarging (7) using h,beta<=u, every free
point belongs to the explicitly given trapezoid

    R={ (x,w): sigma<=w<=M,
         ell(w)<=x<=r(w) },
    ell(w)=(sigma+w)/u-w,
    r(w)=1-(sigma+w)/u.

Its horizontal width is the positive decreasing affine function

    B(w)=r(w)-ell(w)=1-2sigma/u-(2/u-1)w.                  (10)

In particular B(M)>0 and 3sigma<M<4sigma, by substitution of the printed
rational values. The transformation (x,y)->(x,w=y-x) has determinant one,
so all doubled triangle areas can be computed in these coordinates.

## 7. Clustered triples are impossible

For the triangle AEH, call the three interior points clustered if some
one of them has the other two in one triangle of its fan to A,E,H. If this
occurs, the two-interior-point theorem on that fan triangle and the two
remaining fan areas give

    h >= (Gamma2+2)sigma > (47/5)sigma = k1,
    k1=4371/5000.

The strict comparison again follows from sqrt(3)>17/10. Equations (8)
and the decreasing property of F give

    sigma<=w<=M1=F(k1)=424359/3145000.

All three x-coordinates belong to [0,1]. A triangle in a rectangle of
width one and height M1-sigma has doubled area at most M1-sigma: maximizing
the absolute determinant separately in each coordinate reduces to the
rectangle corners. But

    M1-sigma=65937/1572500 < sigma,
    sigma-(M1-sigma)=160611/3145000>0.

The triangle of the three free points therefore has doubled area less
than sigma, a contradiction.

## 8. Distributed triples are impossible

The remaining alternative is distributed: at each of the three interior
points, the other two occupy different fan triangles in AEH. Section 2
of TRIANGLE_OCCUPANCY.md gives the six cyclic fan containments. In that
notation, for each fixed outer edge, two triangles with that edge and an
interior apex each contain another interior point. For edge AB, these are
ABY and ABX, both containing Z; the assertions for BC and CA follow from
the other four containments. Applied to the prescribed edge AE, this says
that two of the three free points have

    w>=3sigma.                                           (11)

Indeed the triangle with base AE and each such apex subdivides into three
actual triangles, each of doubled area at least sigma.

We need only the following elementary trapezoid bound. Let two points
belong to R_hi=R intersect {w>=3sigma}, and let the third belong to R.
Then their unsigned doubled area is at most

    (M-sigma) B(3sigma).                                  (12)

Here is an explicit proof. An absolute determinant is convex separately
in each of its three points, so its maximum on the product of these
polygons occurs at vertices. Apply the shear (x,w)->(x-ell(w),w), which
preserves areas. The two trapezoids now have left edge zero and right
edge B(w), with B affine. Write T=3sigma and delta=M-T. The vertex
possibilities for the first pair give the following bounds:

| Heights and sides of the first two vertices | Bound on doubled area |
|---|---|
| Both at height T | max(2sigma,delta) B(T) |
| Both at height M | (M-sigma) B(M) |
| Different heights, same side edge | delta B(sigma) |
| Different heights, opposite side edges | (M-sigma) B(T) |

To verify the last row directly, the two possible opposite-edge segments
have endpoints (0,T),(B(M),M) or (B(T),T),(0,M). Inserting the third
vertex at height sigma or M gives values bounded by the displayed
quantity. In particular the largest expression from the first segment is

    2sigma B(M)+delta B(sigma)=(M-sigma)B(T).

The other rows follow from base times height or the same substitution.
Every row is bounded by (12): B is decreasing, delta<sigma<2sigma, and

    (M-sigma)B(T)-delta B(sigma)=2sigma B(M)>0.

This proves (12) without leaving any vertex case to computation.

For the rational constants above, direct fraction arithmetic gives

    B(3sigma)=1357/3000,
    (M-sigma)B(3sigma)=6546592741/70780000000,
    sigma-(M-sigma)B(3sigma)=35947259/70780000000>0.

The triangle of the three free points again has doubled area strictly
below sigma. This contradicts their minimum-area hypothesis and closes
the distributed alternative.

Sections 7 and 8 are exhaustive, since no third point can lie on a fan
edge without creating a collinear triple. Thus three II points are
impossible. This proves the seven-point endpoint theorem with the strict
bound m<93/2000<A*.

## 9. Complete exclusion of III-3C-U2

In III-3C-U2 exactly five of the seven free points lie below the diagonal
through the occupied corners A=(0,0), C=(1,1). These five points together
with A,C give seven points in conv{(0,0),(1,0),(1,1)}, with both diagonal
endpoints present. The seven-point endpoint lemma contradicts minimum
area at least A*.

Consequently III-3C-U0, III-3C-U1 and III-3C-U2 are all excluded in full.
This note does not close III-3C-U3.
