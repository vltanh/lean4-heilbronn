# Six contacts: the IRTT hull reduction and actual initial domain

**Setup for review.** This note reduces the whole IRTT count to
its triangular top hull and records the exact hypotheses for its
remaining argument. No whole-count exclusion is asserted here.
All areas are doubled and [XYZ]=det(Y-X,Z-X).

Use the actual six contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

The four other actual points are strictly inside the unit square:
P=(p,q) is strictly in HCEF, Q=(u,v) is in the right cap CE(1,0),
and R=(r,w), S=(j,k) are in the top cap EF(1,1). All cap tests
are strict. Assume every actual unsigned triangle area is at
least s=93/1000. In particular no actual triple is collinear.
Transposition gives the count with a left-cap point. It does not
permit assuming an order between e and f in the present domain.

## 1. The convex top hull is impossible

Name the two top points so ERS>0. As proved in
[N6_CORNER_CONTAINERS.md](N6_CORNER_CONTAINERS.md), Section 4,
FRS>0 gives the strict convex quadrilateral ERSF; FRS<0 puts
S strictly inside the actual triangle ERF. These two signs are
exhaustive. No interchange of P and Q occurs.

Suppose first FRS>0. The chain E,R,S,F is monotone to the left
and upward. Here is an explicit proof for its middle edge.
In reflected and scaled top-corner coordinates put

    E=(0,1), F=(1,0), R=(x,y), S=(z,t),
    x,y,z,t>0, x+y<1, z+t<1.

Put L=[ERS]=z(1-y)-x(1-t)>0 and
M=[FRS]=y(1-z)-t(1-x)>0. Direct expansion gives

    (1-x)L+xM=(z-x)(1-x-y),
    yL+(1-y)M=(y-t)(1-x-y).

Thus z>x and y>t. Translating back gives r>j and w<k.
The first and last edges E->R and S->F have the same strict
coordinate directions by top-cap membership. Each supporting
line of this chain therefore has a normal with both components
positive, pointing out of the top-corner hull.

Every vertex of the contact hexagon is inward of those lines.
This is known at E,F by convexity; C and B are coordinatewise
below E, and H,A are coordinatewise below F. The right point
Q has u<1 and v<e, so is also coordinatewise below E and
strictly inward of every chain support. P is in the contact
hexagon and hence inward as well. Consequently neither R nor
S is hidden when the other actual points are adjoined.

The six contacts remain extreme, since they are the endpoints
or single contacts of the supporting square sides. Q is the
only actual point strictly beyond CE, so is exposed too. The
six contacts and Q,R,S therefore give nine strictly convex
actual vertices. This contradicts
[NINE_CONVEX_POINTS.md](NINE_CONVEX_POINTS.md), since
64/729<s. Thus only the triangular alternative remains.

## 2. The actual octagon and all ear consequences

We now have ERS>0, FRS<0, S in int(ERF). The actual hull is
the strict octagon

    A,B,C,Q,E,R,F,H.                               (1)

Indeed Q uniquely minimizes the CE test: every other region
is on its inward side. R uniquely minimizes the EF test:
the other nonzero negative value, at S, is a strictly smaller
multiple of the value at R by its ERF barycentric weights.
Thus Q and R are exposed; the six square contacts remain
extreme. The square-boundary order and the two cap locations
insert Q between C,E and R between E,F. S is inside ERF,
and P is inside the contact hexagon, so both are strictly
inside this octagon. This proves (1) without a guessed hull.

Its ear ERF at R contains S. The octagon consequence of
NINE_CONVEX_POINTS.md says that every other ear is empty and
that ERF has capacity one. Hence P is outside every ear, and
S is outside the other seven ears.

For a strict convex polygon, removing one vertex cuts off
exactly its ear triangle, along the chord through its two
neighbors. A point in the polygon and outside that ear lies
strictly inward of the directed neighbor chord; equality
would be an actual zero-area triangle. Applied to (1), this
gives the following full list:

| Skipped vertex | Neighbor chord | Test at P | Test at S |
| --- | --- | --- | --- |
| A | HB | + | + |
| B | AC | + | + |
| C | BQ | + | + |
| Q | CE | + | + |
| E | QR | + | + |
| R | EF | + | - |
| F | RH | + | + |
| H | FA | + | + |

In particular BQP,QRP,RHP>0 and AFP<0; also QRS,RHS>0.
All these signs are uniform consequences of the actual octagon,
not additional assumptions. They apply without a lower point.

There is a further uniform reduction: P is in HCE. By affinity
at E,R,F, the actual HE test is positive at S. Together with
ERS,RHS>0, this puts S inside HER. We also have ERP>0 from the
strict EF separation and RHP>0 from the ear table. Thus HEP>0
would put P inside the same actual triangle HER. Its area satisfies

    [HER]=w-h+r(h-e)<=1-e<=1-4s=157/250<347/500.

Here h>=e, r,w<=1, and e>=4s follows from the occupied right
container e(1-b)>=4s, proved below. The triangle therefore has
capacity one by the two-interior-point bound. Its occupant S
forces HEP<0, equivalently EHP>0. Since P is in HCEF, this is
exactly P in int(HCE). This reduction uses actual containments
and a fixed endpoint budget, not a feasible scalar relaxation.

## 3. Contact bounds and a closed box

Put alpha=1037/10000. The actual ABC and ABH clearances give
a,b>alpha, as in
[N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md](N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md).
Thus e,f>alpha. Their paired-ear Cauchy inequality gives hc>=4s.
The triangular top hull has area at least 3s, and the four
actual points B,C,Q,E have nontriangular hull in the endpoint
triangle B,E,(1,0). Therefore

    (1-e)(1-f)>=3s, e(1-b)>=4s.

The exact container budget is

    (1-e)(1-f)+e(1-b)=1-b-(f-b)(1-e)<=1-b.

These give the following fixed constants, all prior to any
coordinate refinement:

    U=1-3s/(1-alpha)=6173/8963,
    E0=4s/(1-alpha)=3720/8963,
    C1=1-s/U=5339441/6173000,
    B1=min(U,1-4s/U,1-7s)=349/1000,
    F1=min(U,1-3s/(1-E0))=2742323/5243000,
    A0=s/(C1-alpha)=5740890/46993009,
    H0=max(E0,4s/C1,A0+s/B1)=2296356/5339441,
    X0=s/(1-A0)=4370349837/41252119000.

In fact a,e<=U, b<=B1, f<=F1, e>=E0, c<=C1 and a>=A0.
For c<=C1 use -CEQ>=s and e<=U. The actual lower-anchor
clearances give h>=A0+s/B1, and hc>=4s gives c>=4s,
h>=4s/C1. These prove the six contact-coordinate rows below.

The actual AH and BC tests give every free abscissa at least
X0 and every free ordinate at least A0. Since P is in HCEF,
its two upper bounds x_P,y_P<=1-s follow from the exact
actual identities

    (1-f)[CEP]+(1-c)[EFP]=[CEF](1-p),
    (1-e)[FHP]+(1-h)[EFP]=[EFH](1-q).

The two positive coefficients on either left sum to at least
the actual triangle on the right: CEF<=2-c-f and EFH<=2-e-h.
All left areas are at least s. Hence 1-p,1-q>=s.

The right clearance -CEQ=e(u-c)-(1-c)v>=s gives

    u>=4s+s/U, v<=U-s/(1-4s).

The outer top clearance -EFR>=3s gives

    r>=R0=alpha+3s/(1-E0)=30443761/52430000,
    w>=W0=E0+3s/(1-alpha)=6510/8963.

The occupied right cap also proves the fixed top-container cap

    Omega=(1-e)(1-f)<=1-alpha-4s=5243/10000<(17/3)s.

By N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md, each normalized weight of
S in EFR is greater than 3/17. Its four affine coordinate bounds
therefore give

    j>=(11alpha+3+3R0)/17, k>=(11E0+3+3W0)/17.

Finally the two actual fan clearances are

    ERS=(1-j)(w-e)-(1-r)(k-e)>=s,
    -FRS=(r-f)(1-k)-(1-w)(j-f)>=s.

They imply j<=1-s/(1-E0) and k<=1-s/(1-alpha). These are
stronger than the corresponding affine-weight upper estimates.
Every denominator above is strictly positive.

The resulting closed box is printed in coordinate order
(a,b,c,e,f,h,p,q,u,v,r,w,j,k):

| Coordinate | Lower | Upper |
| --- | --- | --- |
| a | 5740890/46993009 | 6173/8963 |
| b | 1037/10000 | 349/1000 |
| c | 93/250 | 5339441/6173000 |
| e | 3720/8963 | 6173/8963 |
| f | 1037/10000 | 2742323/5243000 |
| h | 2296356/5339441 | 1 |
| p | 4370349837/41252119000 | 907/1000 |
| q | 5740890/46993009 | 907/1000 |
| u | 625983/1234600 | 1 |
| v | 5740890/46993009 | 3043085/5628764 |
| r | 30443761/52430000 | 1 |
| w | 6510/8963 | 1 |
| j | 38553523/111413750 | 4409441/5243000 |
| k | 87339/152371 | 8033/8963 |

Closing this box only enlarges the true N6 domain. The geometric
strict-hull proof in Sections 1–2 uses the actual N6 condition
that all four free points are strictly inside the square; it
does not infer a new actual hull from a limiting box corner.

## 4. All initial sign premises for a literal argument

Every cyclic triple of the actual octagon (1) is positive. Both
P and S have all eight positive inward octagon-edge tests.
P additionally has all inward tests of the actual hexagon
ABCEFH and HCP>0. Include every sign of the neighbor-chord
table in Section 2 and ERS>0,FRS<0.

For T=R,S, the further tests EPT<0,FPT>0,EQT<0,FQT>0 follow
from the strict EF separation. Here EFP,EFQ>0 and EFT<0,
while all square corner distances are nonnegative. The exact
identities proving the tests, for X=P or Q, are

    (1-f)[EXT]=(1-x_X)[EFT]-(1-x_T)[EFX],
    (1-e)[FXT]=(1-y_T)[EFX]-(1-y_X)[EFT].

All these signs have actual witnesses in the preceding sections.
No other initial sign, symmetry or coordinate cut is prescribed.

## 5. Status

The convex top-hull alternative has been completely excluded.
The triangular alternative is reduced to the displayed actual
octagon, ear signs and continuous box. Its full exclusion still
requires a complete literal finite argument. This setup supplies
no conclusion from a numerical relaxation.
