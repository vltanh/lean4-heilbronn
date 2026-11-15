# Opposite corners: complete exclusion when both diagonal halves are central

This note closes the complete C2 subfamily in which both free points in
each diagonal half belong to its central cell II. It also proves uniform
contact bounds for the entire C2 family. The same-corner mixed alternative
is closed in C2_MIXED.md; the other two alternatives listed in Section 10
remain open, so HP11-C2 itself is not yet closed. Every
argument below is analytic and independent of the computer cover.

Use the normalized anchors

    A=(0,0), E=(1,1), H=(0,h), B=(b,0), D=(1,d), F=(f,1),
    0<d<=h<1,    0<f<=b<1,

with four other points in the square. Assume every triangle has ordinary
area at least A*. Set

    sigma=93/1000 < 2A*,    H0=89/100,    q0=11/100.

The strict threshold comparison is proved in FOUR_CORNERS.md, Section 5.
All actual unsigned doubled areas are therefore at least sigma.

## 1. Exactly two free points lie in each diagonal half

The seven-point endpoint theorem in THREE_CORNERS.md excludes three free
points above AE: together with A,E,H,F they would be seven points in the
upper diagonal half-square. Reflection excludes three below AE. None lies
on AE. Thus the four free points split exactly two above and two below.

In the upper half, put alpha=1-h and beta=1-f. The cell classification in
THREE_CORNERS.md, Sections 2 and 5 applies. Only I, II, III can occur;
I and III cannot both occur; and neither I nor III contains two points.
The upper pair is consequently I+II, II+II, or II+III. Reflection across
x+y=1 interchanges the first and last alternatives and interchanges h,beta.
The reflected lower half has the same three alternatives with h,beta
replaced by b,1-d.

In particular, each half contains at least one central (cell-II) point.
An upper central point P=(x,y) satisfies

    y-x>=sigma,
    x-fy>=sigma,
    h(1-x)-(y-x)>=sigma,
    fh-fy+(1-h)x>=sigma.                                 (1)

A lower central point S=(u,v) satisfies the transposed inequalities

    u-v>=sigma,
    v-du>=sigma,
    b(1-v)-(u-v)>=sigma,
    bd-du+(1-b)v>=sigma.                                 (2)

## 2. Every contact offset is strictly below 89/100

We prove

    h,b,1-f,1-d < 89/100,
    1-h,1-b,f,d > 11/100.                                (3)

It suffices to bound h and beta=1-f in the upper half. The two anchor areas
hf and (1-h)beta are at least sigma. Hence

    sigma/(1-h)<=beta<=1-sigma/h,
    h(1-h)>=sigma.

The same inequalities with h,beta exchanged hold by reflection. In
particular h,beta<9/10, since sigma>9/100.

If one point is in I, its containment in AHF gives hf>=3sigma. Thus
beta<1-3sigma<89/100. Also h>=89/100 would force
beta>=sigma/(1-h)>=93/110, hence
hf<=f<=17/110<3sigma, a contradiction. Therefore h<89/100 as well.
The III+II alternative follows by reflection. Only II+II remains.

### 2.1. The strip bound for a central point

Write a central point as (x,x+w). Its three relevant inequalities are

    x >= (sigma+(1-beta)w)/beta,
    x <= 1-(sigma+w)/h,
    N=(1-beta)w+(h-beta)x-(1-beta)h <= -sigma.             (4)

If h<=beta, insert the upper bound on x into N. Because h-beta<=0,
this supplies a lower bound on N, and comparison with N<=-sigma gives

    w <= F(h),       F(t)=t-sigma/(1-t).

Reflection in x+y=1 preserves w and exchanges h,beta. Thus in general

    sigma<=w<=F(min(h,beta)).                             (5)

### 2.2. If h is at least 89/100, an explicit narrow triangle contains both points

Suppose h>=H0=89/100. The function F decreases on [H0,9/10), and

    F(H0)=49/1100 < sigma.

Equation (5) therefore forces beta<H0<=h. The anchor area also gives

    beta>=beta0:=sigma/(1-H0)=93/110.

The final inequality of (4), now with h-beta>0, gives

    x <= R(h,beta,w)
       :=[(1-beta)(h-w)-sigma]/(h-beta).                  (6)

For fixed beta,w,

    partial R/partial h
       =(1-beta)[w-F(beta)]/(h-beta)^2 <= 0,

by (5). Hence R(h,beta,w)<=R(H0,beta,w). At fixed h=H0,

    partial R/partial beta
       =[(1-H0)(H0-w)-sigma]/(H0-beta)^2 < 0,

because w>=sigma and (1-H0)(H0-sigma)=8767/100000<sigma.
Consequently (6) implies

    x <= R(H0,beta0,w)=1-(170/49)w.

The first inequality of (4), together with beta<9/10, gives

    x >= 31/300+w/9.

Thus both central points belong to the explicit triangle

    sigma<=w<=M,
    a+w/9<=x<=1-(170/49)w,
    a=31/300,
    c=170/49+1/9=1579/441,
    M=(1-a)/c=39543/157900.                               (7)

Here M<3sigma, since

    3sigma-M=45111/1579000>0.

### 2.3. Two points cannot occupy this triangle

Write the two points as P=(p,p+w), Q=(q,q+v). In the determinant-one
coordinates (x,w), put

    D_A=pv-qw,     D_E=D_A+w-v.

Both absolute values must be at least sigma. If their signs differ,

    2sigma<=|D_E-D_A|=|w-v|<=M-sigma<2sigma,

a contradiction.

If their signs agree, exchange P,Q so both are negative. When w>=v,
using (7) gives

    min(-D_A,-D_E)
      =wq-pv-w+v
      <=(1-a)v-cwv
      <=(1-a)v-cv^2.

When w<=v, the other determinant similarly gives

    min(-D_A,-D_E)
      =wq-pv
      <=w-av-cwv
      <=(1-a)w-cw^2.

In either case, the maximum of the quadratic is

    (1-a)^2/(4c)=3545689/63160000 < sigma,
    sigma-(1-a)^2/(4c)=2328191/63160000>0.

This is again a contradiction. Thus h<89/100. Reflection gives
beta<89/100. Applying the upper-half result to the transposed lower half
proves all four bounds (3).

## 3. A central cross pair cannot cut off the A corner

Let P=(x,y) be an upper central point and S=(u,v) a lower central point.
Orient their line from P to S and write

    d_V=det(S-P,V-P).

Since x<y and v<u, the segment PS crosses the open diagonal AE; hence

    d_A=xv-uy<0,       d_E>0.

We prove that d_H,d_B cannot both be positive. Suppose they are. Their
actual area inequalities give

    h(u-x)+xv-uy>=sigma,
    b(y-v)+xv-uy>=sigma.                                 (8)

Put

    X=sqrt(xv),   Y=sqrt(yu),   z=Y-X>0,
    J=sqrt(hb),   r=sqrt(fd).

The central inequalities x-fy>=sigma and v-du>=sigma imply

    xv >= (fy+sigma)(du+sigma)
       >= (sqrt(fd*yu)+sigma)^2,
    X >= rY+sigma,                                      (9)

where the middle inequality is AM--GM for fy+du.

Both differences u-x and y-v in (8) are positive. Multiplying (8) yields

    hb(u-x)(y-v) >= [sigma+Y^2-X^2]^2.

Moreover

    (u-x)(y-v)=yu+xv-uv-xy
       <= Y^2+X^2-2XY=(Y-X)^2,

again by AM--GM. Taking positive square roots therefore gives

    z(J-X-Y)>=sigma.                                    (10)

Since Y=X+z, (9) gives

    X >= (rz+sigma)/(1-r),
    X+Y >= [(1+r)z+2sigma]/(1-r).

Combining with (10),

    z[(1-r)J-2sigma-(1+r)z]>=sigma(1-r).

The positive quadratic maximum requires

    J >= 2sigma/(1-r)
         +2sqrt(sigma*(1+r)/(1-r)).                      (11)

The right side increases strictly with r in (0,1). But (3) gives
J<H0 and r>q0. Substitution of H0=89/100 and q0=11/100 in (11) is
impossible: the relevant positive quantities satisfy

    4sigma(1-q0^2)-[(1-q0)H0-2sigma]^2
       =14159/100000000>0.

Thus d_H,d_B cannot both be positive. Every step used actual triangle
inequalities, so no point-placement or pair-orientation assumption was
silently introduced beyond the stated two signs.

## 4. The opposite corner cut is also impossible

Apply the half-turn (x,y)->(1-x,1-y) to Section 3. It exchanges A,E,
H,D and B,F, and preserves central membership after relabeling. Consequently
for any central cross pair P,S as above, d_F,d_D cannot both be negative.

Every possible central cross pair must therefore satisfy

    (d_H<0 or d_B<0) and (d_F>0 or d_D>0).                (12)

There are no zero signs, because the corresponding triples are actual
configuration triangles of positive area.

## 5. A stronger separation bound when a half contains two central points

Suppose both upper free points are in II. We prove

    h beta > (39/50)^2,       h+beta>39/25.               (13)

The two points are strictly inside both AEH and AEF, so the two-interior
triangle theorem gives

    h,beta>=Gamma2 sigma>2/3,
    Gamma2=4+2sqrt(3).

The final comparison follows from sqrt(3)>17/10:
Gamma2 sigma>(37/5)(93/1000)=3441/5000>2/3.

Write P=(p,p+w), Q=(q,q+v), and d_V=det(Q-P,V-P). Set

    ell(w)=(sigma+(1-beta)w)/beta,
    r(w)=1-(sigma+w)/h,
    a0=1-sigma(1/h+1/beta),
    c0=1/h+1/beta-1>0.                                  (14)

Both points satisfy ell(w)<=x<=r(w), with the corresponding height.
We first show that every possible line orientation requires

    a0>0,       a0^2>=4sigma c0.                         (15)

If d_A,d_E have the same sign, exchange P,Q to make both negative.
If w>=v, direct substitution of the bounds (14) gives

    min(-d_A,-d_E)
      =wq-pv-w+v
      <=v(1-sigma/beta)-sigma w/h-c0wv
      <=a0 v-c0 v^2.

If w<=v, the analogous calculation with -d_A gives
min(-d_A,-d_E)<=a0 w-c0 w^2. The positive minimum is at least sigma,
so maximizing this quadratic proves (15).

Now suppose d_A,d_E have opposite signs, and orient PQ so d_A<0<d_E.
The anchor quadrilateral has cyclic order A,E,F,H. The signs d_H>0>d_F
would alternate around this convex quadrilateral, impossible for a line.
The other three possibilities are exhaustive.

If d_H<0<d_F, the oriented edge tests put P inside HFQ: relative to
the negative orientation of HFQ, its three edge signs are
N(P)<0, -d_F<0, d_H<0. Therefore -N(Q)>=3sigma.
Reflection in x+y=1 preserves this containment and exchanges h,beta,
so arrange h>=beta. The central inequalities for Q give

    beta q-(1-beta)v>=sigma,       v>=sigma.

Hence

    3sigma<=h(1-beta)-(h-beta)q-(1-beta)v
      <=h(1-beta)
        -sigma(h-beta)(2-beta)/beta-(1-beta)sigma.

Rearrangement gives

    sigma<=h beta(1-beta)/(2h+2beta-h beta)
      <=beta(1-beta)/(2+beta).

The middle expression increases with h, so the last step uses h<=1.
The final function decreases for beta>=2/3 and equals 1/12 at beta=2/3.
Thus sigma<=1/12, a contradiction.

If d_H,d_F are both positive, then d_H,d_E>=sigma. The determinant identity

    w d_H+(h-w)d_E=K(P)(w-v),
    K(P)=h(1-p)-w>=sigma,

has positive coefficients w and h-w. Using v>=sigma gives

    sigma <= (w-sigma)K(P)/h
      <=(w-sigma)[1-sigma/beta-c0w].                     (16)

Put z=w-sigma>0 and A0=1-sigma/beta-c0sigma. The right side is
z(A0-c0z), so (16) forces A0>0 and A0^2>=4sigma c0. But

    a0-A0=sigma(1/beta-1)>0,

which proves (15). Finally d_H,d_F both negative reduce to this case by
reflection in x+y=1: it reverses determinant signs and exchanges A,E
and H,F, leaving d_A<0<d_E.

This proves (15) in all cases. Put U=h beta, S=h+beta and r0=sqrt(U).
Clearing positive denominators gives

    U-sigma S>0,
    (U-sigma S)^2-4sigma U(S-U)>=0.                      (17)

For fixed U the left side decreases with S wherever sigma S<U,
because its derivative is 2sigma(sigma S-3U)<0. Since S>=2r0,
(17) implies

    r0>2sigma,
    Q(r0):=(1+4sigma)r0^2-12sigma r0+4sigma^2>=0.         (18)

The quadratic is strictly negative throughout [2sigma,39/50]: its leading
coefficient is positive and its two endpoint values are negative,

    Q(2sigma)=16sigma^2(sigma-1)<0,
    Q(39/50)=-1449/1250000<0.

A convex function on an interval is at most the larger endpoint value.
Thus (18) forces r0>39/50, proving (13).

## 6. When both halves are central, the middle quadrilateral holds at most one point

Assume both upper and both lower free points are central. Applying (13)
to both halves gives

    h+1-f>39/25,       b+1-d>39/25.

Put u=h-d and v=b-f. Projection overlap gives u,v>=0. The contact bounds
(3) imply u,v<39/50, while the preceding two inequalities give u+v>28/25.
Consequently

    uv=(39/50-u)(39/50-v)+(39/50)(u+v)-(39/50)^2
      >663/2500.

The central quadrilateral HBDF therefore has doubled area

    Qmid=1-(h-d)(b-f)<1837/2500<8sigma,
    8sigma-1837/2500=23/2500.                            (19)

We recall the short quadrilateral bound needed here. A quadrilateral
containing two other actual points strictly inside it has doubled area at
least 8sigma when every actual doubled triangle area is at least sigma.
If a hull diagonal places both points on the same side, the triangle on
that side has doubled area at least Gamma2 sigma and the other at least
sigma, whose sum exceeds 8sigma.

Otherwise both hull diagonals separate the interior points. Apply an
affine map taking their intersection to the origin and their lengths to
one. The hull vertices are

    (a,0),(0,b),(-c,0),(0,-d),
    a+c=b+d=1,

and the interior points may be labeled (p,-q),(-r,w) with p,q,r,w>0.
The normalized doubled hull area is one. Let k be the normalized minimum
doubled triangle area. Triangles using a full diagonal give p,q,r,w>=k.
The two corner triangles containing the interior points give

    ad>=k+dp+aq>=k(1+a+d),
    bc>=k+br+cw>=k(1+b+c).

At least one of a+d,b+c is at most one. For that sum z, AM--GM gives

    k<=z^2/[4(1+z)]<=1/8.

The last inequality is equivalent to (1-z)(2z+1)>=0. Undoing the affine
map proves the claimed 8sigma bound. Thus (19) excludes two free points
inside HBDF.

Each corner triangle AHB and EFD contains at most two free points. Three
would require doubled area at least Gamma3 sigma, whereas their doubled
areas hb and (1-d)(1-f) are strictly below H0^2=7921/10000. Indeed

    Gamma3 sigma>(177/20)(93/1000)=16461/20000
       >7921/10000,
    16461/20000-7921/10000=619/20000.

Every free point lies inside the anchor hexagon, since cells IV,V were
excluded, and none lies on the actual chords HB or DF. The four free points
are partitioned among AHB, HBDF, EFD. Their exact remaining count patterns
in the central/central case are consequently

    (2,0,2), (2,1,1), (1,1,2).                           (20)

In particular at least one of the two corner triangles contains two free
points. Sections 7--9 exclude every possible such pair, including pair
lines that do not cut off the occupied corner.

## 7. A central cross pair in a corner triangle cannot have F on the A side

Continue under the central/central hypothesis. Suppose P=(x,y) is upper,
S=(u,v) is lower, and both are strictly inside AHB. Write

    d_V=det(S-P,V-P),       d_A<0<d_E.

We prove d_F cannot be negative. The corner inequalities and h,b<H0 give

    hb-hx-by>=sigma,
    x+y<=L:=H0-sigma/H0=6991/8900,                        (21)

and likewise u+v<=L. To justify the second step, divide the first by hb:
(x+y)/H0<=x/b+y/h<=1-sigma/(hb)<=1-sigma/H0^2.

Both points satisfy the two linear inequalities

    x-fy>=sigma,       y-dx>=sigma,                      (22)

with their own coordinates. For P the first is central membership and the
second follows from y-x>=sigma and d<1. For S the second is central
membership and the first follows from u-v>=sigma and f<1.

Use coordinates

    t=y,       r=x-fy.

The map has determinant -1, so it preserves unsigned areas. In these
coordinates A=(0,0), F=(1,0), and (21)--(22) imply

    r>=sigma,
    ell(r):=(sigma+d r)/(1-fd) <= t
       <= R(r):=(L-r)/(1+f).                            (23)

Put

    a1=sigma/(1-fd),       b1=L/(1+f)<1,
    c1=1/(1+f)+d/(1-fd)
       =(1+d)/[(1+f)(1-fd)]>0.

If d_A,d_F are both negative, their transformed signs still agree. The
same elementary two-point calculation used in Section 5 gives

    min(|d_A|,|d_F|)
      <=max_z z[(b1-a1)-c1 z]
      <=(b1-a1)^2/(4c1).                                (24)

For clarity, the intercept facts used by that calculation are a1>0 and
b1<1: when the two perpendicular coordinates satisfy r>=r', use the
endpoint F and replace the coefficient of r by its value at r'; when
r<=r', use A. The resulting bounds are respectively
r'[(b1-a1)-c1r'] and r[(b1-a1)-c1r]. Since (23) is nonempty at positive r,
b1-a1>0.

The value in (24) is

    [L(1-fd)-sigma(1+f)]^2
       /[4(1+d)(1+f)(1-fd)].                            (25)

We have q0<f,d<31/100. For the upper bound, both lower points are inside
AEB and AED, so 1-d>=Gamma2 sigma; the upper pair similarly gives
1-f>=Gamma2 sigma. Since sqrt(3)>173/100,

    Gamma2 sigma>(373/50)(93/1000)=34689/50000>69/100.

The positive numerator before squaring in (25) decreases with f,d. Its
denominator increases on [q0,31/100]^2: for example the derivative of
(1+d)(1+f)(1-fd) with respect to f is

    (1+d)(1-d-2fd)>0,

because 1-d-2fd>=1-31/100-2(31/100)^2>0. Thus (25) is at most its value
at f=d=q0, namely

    36735721/395160000 < sigma,
    sigma-36735721/395160000=14159/395160000>0.           (26)

This contradicts the two actual area inequalities and excludes d_F<0.
Transposition exchanges F,D, so d_D<0 is excluded as well.

## 8. Every remaining central cross pair inside AHB is impossible

For a pair as in Section 7, d_H,d_B cannot both be negative: A,H,B would
then lie strictly on the negative side of the pair line, whereas P,S lie
inside their triangle and on that line. They cannot both be positive by
Section 3. Transpose the square, and exchange the labels of P,S, to arrange

    d_H<0<d_B.

Section 7 gives d_F>0. The ordinary oriented edge tests now place P
strictly inside both HBS and HFS. For HBS the three negative edge signs
are

    det(B-H,P-H)<0,       -d_B<0,       d_H<0;

for HFS they are

    det(F-H,P-H)<0,       -d_F<0,       d_H<0.

The first HFS sign is central membership. The containing triangle HFS has
negative orientation: all lower-half points are on the negative side of
HF, as is seen from the three vertices of that half-square. Thus the signs
are consistent. Subdividing each triangle at P gives

    hb-hu-bv>=3sigma,
    fh-fv+(1-h)u>=3sigma.                               (27)

We show that these two inequalities cannot hold.

Put

    c=89/100,       q=11/100,       F0=307/1000,
    k=1521/2500.

Section 5 gives h(1-f)>k, and the preceding rational bound on Gamma2 gives
f<15311/50000<F0. The lower central inequality yields

    v>=sigma+d u>=sigma+q u.

Combining with the first inequality in (27),

    u <= [hb-(b+3)sigma]/(h+bq)
      <= U(h):=[c h-(c+3)sigma]/(h+cq).                 (28)

For the last comparison, the derivative of the first fraction with
respect to b is

    [h(h-sigma)+3q sigma]/(h+bq)^2>0;

here h>=Gamma2 sigma>2/3. The numerator in (28) is positive, since u>0.
Also U(h)<c, since subtracting its numerator from c times its denominator
gives c^2q+(c+3)sigma>0.

The second expression in (27) is consequently at most

    T(h,f)=f(h-sigma)+(1-h-fq)U(h).                       (29)

Indeed the coefficient 1-h-fq is at least 1-c-F0q>0, so (28) may be
substituted. For fixed h, this bound increases with f:

    partial T/partial f=h-sigma-qU(h)
       >2/3-sigma-qc>0.

Thus

    T(h,f)<=T(h,min(F0,1-k/h)).                          (30)

The crossover occurs at

    h0=k/(1-F0)=338/385,
    h0-7/8=9/3080>0,       c-h0=93/7700>0.

On the branch h<=h0, the function T(h,1-k/h) increases strictly. Its
derivative, after clearing the displayed positive denominator, is

    [275000000000 h^4 + 53845000000 h^3
       +820950057500 h^2 +93358980000 h +4569922071]
       /[25000 h^2(10000h+979)^2] > 0.                   (31)

All coefficients are positive. On the branch h>=h0, the derivative is

    d T(h,F0)/dh
      =-[5830000000 h^2+1141514000 h-4721013101]
         /[100(10000h+979)^2] < 0.                      (32)

The bracket is increasing for h>0 and its value at h=7/8 is 741405399>0.
Equations (31)--(32) therefore locate the global maximum in (30) at h0.
A rational substitution gives

    T(h0,F0)=3sigma-1027091/17532270000 < 3sigma.         (33)

This contradicts (27). It excludes the remaining line orientation, and
therefore excludes every central cross pair lying inside AHB. The
half-turn gives the same conclusion for EFD.

## 9. Complete central/central exclusion

Suppose both upper free points and both lower free points are central.
Section 6 gives exactly the three corner/middle/corner count patterns
(20), so one corner triangle contains two free points.

They cannot belong to the same diagonal half, by the full same-half
corner theorem in [C2_SAME_HALF_CORNER.md](C2_SAME_HALF_CORNER.md).
They cannot belong to different halves, by Sections 7--8, including every
possible orientation of their joining line. Reflection and the half-turn
handle both diagonal halves and both corner triangles.

This is a contradiction. Thus the complete C2-II/II subfamily is excluded:
no ten-point C2 configuration whose two free points in each half are
central can have minimum ordinary area at least A*.

## 10. Remaining C2 obligations

The exhaustive half-pair catalogue in Section 1 has three states:
I+II, II+II, and II+III. Section 9 closes the state II+II in both halves.
The other states contain a noncentral point. Up to exchanging the two
halves and simultaneously reflecting I with III, the other full
subfamilies are

    mixed/central,
    mixed/mixed with the I points toward the same occupied corner (closed),
    mixed/mixed with the I points toward opposite occupied corners.

This is an exhaustive quotient of the other eight ordered half-state pairs.
The same-corner alternative is completely excluded in
[C2_MIXED.md](C2_MIXED.md), using the noncentral corner theorem in
[C2_NONCENTRAL_CUT.md](C2_NONCENTRAL_CUT.md). Exactly the mixed/central and
opposite-corner mixed/mixed alternatives remain open.

The uniform contact bounds (3) apply to all of them. Sections 3--4
also exclude their stated central cross-pair corner cuts, but the stronger
product and central-quadrilateral arguments of Sections 5--9 have the
explicit central/central hypothesis. No unchecked mixed case is absorbed
into the completed central/central result.
