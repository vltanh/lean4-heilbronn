# Width bounds for the nine-point IRTT core

In the normalized six-contact count IRTT the contacts are

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

There is an actual point Q=(u,v) beyond CE in the right cap and
two actual points R=(r,w), S=(j,k) beyond EF in the top cap.
Only these nine points enter the argument. Assume every triangle
on them has unsigned doubled area at least s=93/1000. Label the
top points so that [ERS]>0. Then S is strictly inside ERF by the
[seven-point monotone-chain theorem](SEVEN_POINT_MONOTONE_CHAIN.md).

Write B=(b,0), and put alpha=1037/10000. The actual ABC and ABH
clearances imply a,b>alpha: if z=min(a,b)<=alpha, its corresponding
clearance is at most z(1-z)<=alpha(1-alpha)<s, with exact gap
5369/100000000. Thus the six chain points B,C,Q,E,R,F are all in
the rectangle [alpha,1] by [0,1]. The point S is there as well,
since its top-cap test gives x_S>f>=b>alpha.

The horizontal map x->(x-alpha)/(1-alpha) puts those seven actual
points in the unit square. It divides doubled areas by the fixed
positive width W=8963/10000. Its actual clearance is therefore

    sigma=s/W=930/8963.

The actual left contacts A,H are used only to prove b>alpha;
they do not need to lie in this smaller rectangle.

The chain B,C,Q,E,R,F has nondecreasing ordinates, since
0<v<e<w<=1. Its first, second and fourth consecutive turns
are positive by clearance and cap membership. Its third is
[QER]=(1-u)(w-e)+(e-v)(1-r), which is nonnegative and
cannot vanish by clearance. Reverse the order and reflect the
vertical coordinate as in
[SIX_POINT_MONOTONE_CHAIN.md](SIX_POINT_MONOTONE_CHAIN.md).
Its four positive scaled turn areas are

    (a,b,c,d)=(ERF,QER,CQE,BCQ)/W.

In particular a>=3sigma from the actual occupant S, and the
other three are at least sigma. The six-chain proof gives, for
some 0<B<1,

    1>=b/B+2sqrt(a*(d/(1-B)+c/B)).                 (1)

## Four literal cubic comparisons

For rational proposed lower bounds (a0,b0,c0,d0), (1) is
impossible if the following polynomial is positive on [b0,1]:

    T(B)=4a0 B(c0+(d0-c0)B)-(B-b0)^2(1-B).

For B<=b0 the positive square-root term already contradicts
(1). For B>b0, subtract b0/B and square positive sides to get
T(B)<=0. This is the exact reduction in the six-chain note,
with the stronger clearance sigma retained.

Split the interval at M. For either [l,r], substitute
B=(l+r t)/(1+t) and multiply by (1+t)^3. Its four coefficients
in increasing order are

    T(l), 3T(l)+(r-l)T'(l), 3T(r)-(r-l)T'(r), T(r).

The following exact table gives the minimum of all eight
coefficients from [b0,M] and [M,1]. Every displayed minimum is
strictly positive. The endpoint r is included by the leading
coefficient T(r), so the two closed intervals cover everything.

| a0 | b0 | c0 | d0 | M | Minimum of the eight coefficients |
| --- | --- | --- | --- | --- | --- |
| 2/5 | sigma | sigma | sigma | 59/100 | 81402202951/80335369000000 |
| 3sigma | 33/200 | sigma | sigma | 63/100 | 446213560203/321341476000000 |
| 3sigma | sigma | 9/50 | sigma | 16/25 | 2077160762324/2250143476084375 |
| 3sigma | sigma | sigma | 4/25 | 14/25 | 3696108679712/2250143476084375 |

It follows, after multiplying back by W, that

    ERF<8963/25000,
    QER<295779/2000000,
    CQE<80667/500000,
    BCQ<8963/62500.                               (2)

All four areas in (2) are positive ordered actual determinants.
The three actual S fan areas in ERF are at least s. Its three
normalized barycentric weights consequently exceed

    s/(8963/25000)=2325/8963.                      (3)

An actual triangle whose vertices are among E,R,F,S is contained
in ERF, so it has the same first upper cap in (2).

## A uniform upper bound for the bottom contact

In fact the bottom coordinate b is strictly less than 19/100.
If b>=19/100, the same six chain points and S lie in
[19/100,1] by [0,1]. Their normalized clearance is at least
tau=s/(81/100)=31/270. Apply the cubic comparison above with

    (a0,b0,c0,d0)=(3tau,tau,tau,tau).

Its cubic T is positive on [tau,1], as the following literal
cover verifies. The coefficient formula is the same four-entry
formula above; every printed minimum is strictly positive.

| l | r | Minimum of the four coefficients |
| --- | --- | --- |
| 31/270 | 2/5 | 1759/121500 |
| 2/5 | 11/20 | 3461/1944000 |
| 11/20 | 3/5 | 137/182250 |
| 3/5 | 13/20 | 137/182250 |
| 13/20 | 4/5 | 15017/5832000 |
| 4/5 | 1 | 11903/364500 |

These six closed intervals cover the entire required domain.
For B<=tau the positive square-root term in (1) is already
contradictory. Hence b>=19/100 is impossible. The actual ABH
clearance then gives the usable weak bounds

    b<=19/100, a<=1-s/(19/100)=97/190,
    h>=a+93/190.

Any separately proved lower bound a>=A0 consequently gives
h>=A0+93/190. These deductions require neither the upper point
P nor an additional contact-order case.

The four caps, six bottom-contact intervals and normalized weights
can be checked directly from the two tables.
