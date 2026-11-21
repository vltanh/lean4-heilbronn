# Six points with two prescribed triangle vertices

Let

    Gamma2=4+2sqrt(3),       Gamma3=(11+3sqrt(5))/2.

**Endpoint-six theorem.** Suppose six points lie in a triangle of ordinary
area S, and two of the triangle's vertices belong to the six-point set.
Then its minimum ordinary triangle area m satisfies

    m<=S/Gamma3.                                           (1)

If the actual six-point hull is nontriangular, the stronger bound

    m<S/9                                                 (2)

holds. The only previously established geometric inequalities used below
are the two- and three-interior-point triangle bounds from
[TRIANGLE_OCCUPANCY.md](TRIANGLE_OCCUPANCY.md). In particular, the
central-pair calculation is proved at its own rational threshold; it
does not import a lemma whose hypotheses use the n=10 threshold.

## 1. Supporting-triangle normalization

If m=0 the theorem is immediate. Otherwise all six points are distinct
and no three are collinear. A triangular actual hull has three strictly
interior points, so its area is at least Gamma3 m. Since its area is at
most S, this proves (1) in that case.

Assume the actual hull is not triangular. Map the original container
affinely to

    T=conv{A=(0,0), D=(1,0), E=(1,1)},

with its two prescribed actual vertices mapped to A,E. For the four
other points define

    rho=min(y/x),       eta=min((1-x)/(1-y)).

Each such point has 0<=y<x<=1: a point on AE would be collinear with
A,E, and the zero denominators would repeat an endpoint. Thus the two
minima exist and 0<=rho,eta<1. The supporting lines

    y=rho x,       x=1-eta+eta y

meet at

    R=((1-eta)/(1-rho eta), rho(1-eta)/(1-rho eta)).

Their intersection lies in T, and all six points lie in the smaller
triangle AER. Each nonbase side has a unique actual contact other than
its base endpoint. The two contacts are distinct and neither is R:
a common contact would make the actual hull triangular, and any other
coincidence at R would make three actual points collinear. Thus the
contacts lie in the relative interiors of AR and ER.

Returning to the original area units, write S' for the area of this
supporting triangle, so 0<S'<=S. Map it affinely to the upper half-square.
The resulting actual anchors and two additional points are

    A=(0,0), E=(1,1), H=(0,h), F=(f,1), P,Q,
    0<h,f<1,       0<=x<=y<=1.

The normalized doubled minimum is

    t=m/S'.

To prove (2), suppose for contradiction that m>=S/9. Then

    t>=1/9.                                               (3)

Every actual doubled triangle area in the normalized configuration is
therefore at least 1/9.

## 2. Five cells and the exclusion of a noncentral point

Put alpha=1-h and beta=1-f. For an additional point X=(x,x+w), define

    L(X)=f w-beta x,
    K(X)=h(1-x)-w,
    N(X)=f w+(h-beta)x-fh.

Its actual anchor-pair triangles give

    w>=t,       hx>=t,       beta(1-x-w)>=t,
    |L(X)|>=t, |K(X)|>=t,   |N(X)|>=t.                   (4)

The anchor triangles give hf>=t and alpha beta>=t. Also

    sqrt(hf)+sqrt(alpha beta)<=1                         (5)

by Cauchy--Schwarz. The identities

    N=-fK-alpha beta x,
    N=alpha L-hf(1-x-w)

show that N>0 forces L>0 and K<0. Consequently the five possible cells
are exactly the following; their containments are the oriented edge
tests for the indicated actual triangles.

| Cell | L | K | N | Containments |
|---|---:|---:|---:|---|
| I | + | + | - | interior of AHF and AEH |
| II | - | + | - | interior of AEF and AEH |
| III | - | - | - | interior of EHF and AEF |
| IV | + | - | - | interior of AHF and EHF |
| V | + | - | + | beyond HF |

Cell IV is empty: a point inside both AHF and EHF subdivides each into
three actual triangles, giving hf,alpha beta>=3t. Equation (5) would
then imply t<=1/12, contrary to (3). The same argument excludes
simultaneous occupancy of I and III.

Cell V is also empty. The identity

    N=alpha f-alpha x-f(1-x-w)

and (4) give

    alpha f>=t(1+alpha/h+f/beta),
    t<=h beta(1-h)(1-beta)/(h+beta-h beta).               (6)

With r=sqrt(h beta), the last expression decreases as h+beta increases.
Using h+beta>=2r therefore bounds it by r(1-r)^2/(2-r). Its derivative
has the sign of (1-r)(r^2-3r+1), so its maximum on [0,1] is
(5sqrt(5)-11)/2<1/11<1/9. For the strict radical comparison one may use
sqrt(5)<123/55, since 5*55^2=15125<15129=123^2. This contradicts (3).

Suppose now that one of P,Q is in I. Since III,IV,V are empty, both
points are strictly inside AEH. The two-interior-point theorem and (3)
give

    h>=Gamma2/9>149/180>13/16.                            (7)

Here Gamma2>149/20 follows from sqrt(3)>69/40. The point in I also
gives hf>=3t>=1/3, while alpha beta>=t>=1/9. Thus

    1=f+beta >= 1/(3h)+1/[9(1-h)],
    9h^2-11h+3<=0.                                     (8)

But the polynomial in (8) is increasing for h>=13/16 and equals 1/256
at h=13/16. This contradicts (7). Reflection in x+y=1 exchanges I and
III, so the same reasoning excludes III. Consequently

    P,Q are both in II.                                 (9)

## 3. The central-pair inequality in every line orientation

Use the auxiliary rational threshold

    tau=7/64<1/9.

All actual doubled triangle areas are strictly greater than tau. In
particular, the two points in (9) are inside both AEH and AEF, so

    h,beta>=Gamma2 tau>7tau=49/64>2/3.                   (10)

Write P=(p,p+w), Q=(q,q+v), and orient their line from P to Q. For any
point V put

    d_V=det(Q-P,V-P).

The central inequalities supply the strip

    ell(w)=(tau+(1-beta)w)/beta <= p
        <= r(w)=1-(tau+w)/h,

and the corresponding bounds for q,v. Set

    a0=1-tau(1/h+1/beta),
    c0=1/h+1/beta-1>0.                                  (11)

We prove, for every possible orientation of the line PQ, that

    a0>0,       a0^2>=4tau c0.                          (12)

There are no zero determinant signs because all the corresponding
triangles are actual and have positive area.

### A and E on the same side

Exchange P,Q so that d_A,d_E are both negative. Direct expansion gives

    d_A=pv-qw,       d_E=d_A+w-v.

If w>=v, substitution of the strip endpoints gives

    min(-d_A,-d_E)
      =wq-pv-w+v
      <=v(1-tau/beta)-tau w/h-c0wv
      <=a0 v-c0 v^2.

If w<=v, the analogous bound is

    min(-d_A,-d_E)
      =wq-pv
      <=w(1-tau/h)-tau v/beta-c0wv
      <=a0 w-c0 w^2.

The minimum is at least tau. A positive value at least tau of the
quadratic z(a0-c0z), with z>0, requires exactly the two inequalities
in (12).

### A and E on opposite sides

Orient PQ so d_A<0<d_E. The anchor quadrilateral has cyclic order
A,E,F,H. The signs d_H>0>d_F would alternate around that convex
quadrilateral, which is impossible for a line: the two positive-sign
vertices and the two negative-sign vertices would have crossing
joining diagonals. There are three other sign possibilities.

First suppose d_H<0<d_F. The edge tests put P strictly inside HFQ:
relative to the negative orientation of HFQ, its three edge signs are
N(P)<0, -d_F<0, d_H<0. Hence

    -N(Q)>=3tau.

Reflection in x+y=1 exchanges h,beta, preserves this containment, and
preserves the sign pattern d_A<0<d_E,d_H<0<d_F. We may therefore assume
h>=beta. The central inequalities for Q give

    beta q-(1-beta)v>=tau,       v>=tau,
    q>=tau(2-beta)/beta.

It follows that

    3tau<=h(1-beta)-(h-beta)q-(1-beta)v
      <=h(1-beta)
        -tau(h-beta)(2-beta)/beta-(1-beta)tau,

and consequently

    tau<=h beta(1-beta)/(2h+2beta-h beta)
        <=beta(1-beta)/(2+beta).                        (13)

The middle expression increases with h, so the second inequality uses
h<=1. The final expression decreases for beta>=2/3 and equals 1/12 at
beta=2/3. Thus (10) makes (13) impossible, since tau>1/12.

Next suppose d_H,d_F are both positive. Then d_H,d_E>=tau, and the
exact determinant identity

    w d_H+(h-w)d_E=K(P)(w-v),
    K(P)=h(1-p)-w>0

has positive coefficients w and h-w. Using v>=tau and the lower strip
bound on p yields

    tau <= (w-tau)K(P)/h
        <= (w-tau)[1-tau/beta-c0w].                     (14)

The first inequality also implies w>tau. Put z=w-tau>0 and
A0=1-tau/beta-c0tau. The last expression in (14) is z(A0-c0z), so
A0>0 and A0^2>=4tau c0. Since

    a0-A0=tau(1/beta-1)>0,

this proves (12).

Finally, if d_H,d_F are both negative, reflect in x+y=1. This reverses
determinant signs while exchanging A,E and H,F, and exchanges h,beta.
Thus it keeps d_A<0<d_E, makes d_H,d_F positive, and leaves a0,c0
unchanged. The preceding case applies. This completes the exhaustive
proof of (12).

## 4. The rational threshold contradiction

Put U=h beta, J=h+beta, and r0=sqrt(U). Clearing positive denominators
in (12) gives

    U-tau J>0,
    (U-tau J)^2-4tau U(J-U)>=0.                         (15)

For fixed U, the second expression decreases with J wherever tau J<U:
its derivative is 2tau(tau J-3U)<0. Since J>=2r0, (15) implies

    r0>2tau,
    (1+4tau)r0^2-12tau r0+4tau^2>=0.                    (16)

At tau=7/64 the quadratic has the exact factorization

    1024[(1+4tau)r0^2-12tau r0+4tau^2]
      =(8r0-7)(184r0-7).

The first inequality in (16) gives r0>7/32>7/184. The second therefore
requires

    r0>=7/8.                                           (17)

On the other hand, the two actual anchor triangles have doubled areas

    hf=h-U>tau,       alpha beta=beta-U>tau.

Thus min(h,beta)-U>tau. Since min(h,beta)<=r0, this implies
r0(1-r0)>tau. But 7/8<=r0<1 by (17), so

    r0(1-r0)<=7/64=tau,

a contradiction. This excludes (3) for a nontriangular hull and proves
(2). Finally Gamma3<9 because sqrt(5)<7/3. Hence S/9<S/Gamma3, so
the triangular and nontriangular cases together prove (1).

## 5. A rational corollary for virtual corner triangles

Let sigma=93/1000. A triangle of doubled area at most (1-sigma)^2
cannot contain six actual points, including two of its vertices, if
every actual doubled triangle area is at least sigma.

Indeed sqrt(5)>559/250, since 5*250^2-559^2=19>0. Therefore

    Gamma3>4427/500,
    (4427/500)sigma-(1-sigma)^2=773/1000000>0.

Consequently its ordinary area S satisfies S<Gamma3 sigma/2. The
endpoint-six theorem supplies an actual triangle of area
m<=S/Gamma3<sigma/2, contradicting the required minimum.

The container's third vertex may be virtual. The theorem requires only
its two specified vertices to be actual, and allows the other four
points anywhere in the closed container. Any collinearity among actual
points already gives the desired contradiction.
