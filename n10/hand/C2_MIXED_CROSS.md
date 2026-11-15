# A noncentral C2 point cannot share its corner with a central cross point

This note proves a uniform exclusion used in the mixed/central C2 family.
It does not by itself close that family. Use the anchors of
OPPOSITE_CORNERS.md, and put

    sigma=93/1000,       a=69/100,       c=89/100,       r=11/100.

Let P=(x,y) be an upper cell-I point, and S=(u,v) a lower central point.
Assume

    a<h<c,       0<b<c,       f,d>=r,
    (1-h)(1-f)>=sigma,
    P lies strictly inside AHB.

Every actual unsigned doubled triangle area is at least sigma. The mixed
upper half supplies h>a, and C2_MIXED.md supplies the containment when the
lower half is central. The proof uses no numerical optimization.

We prove that S cannot also lie inside AHB. Write

    D=yu-xv>0,       d_H=h(u-x)-D,       d_B=b(y-v)-D.

The positivity of D follows from x<y and v<u. The actual triangle APS
gives D>=sigma. Noncentral and central membership give

    fy-x>=sigma,       v-du>=sigma,
    bd-du+(1-b)v>=sigma.

Also hx>=sigma, and P's corner-triangle clearance gives

    hx+by<=hb-sigma.

## 1. The H-side sign is positive, even without placing S in AHB

We first prove d_H>0 for every such lower central point S. Suppose it is
negative, so -d_H>=sigma. Put

    L=h-sigma-sigma/b,       K=h/b+r,
    z=min(x,u)>0.

Since v>=sigma+r u and
y<=h-hx/b-sigma/b, two elementary substitutions give

    min(D,-d_H)<=z(L-Kz).                               (1)

Here are both cases explicitly. If x<=u, the smaller expression is

    -d_H=u(y-h)+x(h-v)
       <=x[h-sigma-u(h/b+r)]-sigma u/b.

The last expression decreases with u, so replacing u by x gives (1).
If u<=x, the smaller expression is

    D=uy-xv
      <=u(h-sigma/b)-x[u(h/b+r)+sigma].

This decreases with x; replacing x by u gives the other instance of (1).

The noncentral inequality and corner clearance bound x from above:

    x <= X(h,b,f):=[fhb-f sigma-b sigma]/(b+fh).          (2)

For example, insert y>=(x+sigma)/f into hx+by<=hb-sigma.
The quantity X increases with b and f wherever its numerator is positive.
The numerator is positive here because x>0. Direct differentiation gives
positive derivative numerators

    f[fh^2+sigma(1-h)]       for differentiation in b,
    b[hb-sigma+h sigma]     for differentiation in f.

The anchor area gives

    f<=f0(h):=1-sigma/(1-h),       f0(h)>0.

Consequently z<=x<=X0(h):=X(h,c,f0(h)). Two rational bounds suffice:

    X0(h)<21/100                  when a<h<=41/50,
    X0(h)<7/40                    when 41/50<=h<c.       (3)

To verify the first, multiply its difference by the positive factor
(c+f0(h)h)(1-h). The result is

    (680000h^2-979430h+354021)/1000000>0.

Its leading coefficient is positive and its discriminant is
-36539951/10000000000<0. For the second difference the product is

    (715000h^2-980025h+322871)/1000000.

This polynomial increases on [41/50,c], and its value at 41/50 is
33/2000000>0. This proves (3).

For fixed z>0 the quadratic z(L-Kz) increases with b. Its coefficients
can therefore be bounded using b=c and the stated ranges of h. The
following table lists a uniform upper bound on (1):

| Range of h | Upper bound on z | Upper bound on L | Lower bound on K | Maximum bound |
|---|---|---|---|---|
| a<h<=41/50 | 21/100 | 41/50-sigma-sigma/c | a/c+r | 8159991/89000000 |
| 41/50<=h<c | 7/40 | c-sigma-sigma/c | (41/50)/c+r | 1275953/14240000 |

Each bounding quadratic is increasing throughout its indicated z interval.
At the right endpoint its derivative is respectively
27889/111250 and 59013/178000, both positive. Their exact gaps below sigma
are respectively

    117009/89000000>0,       48367/14240000>0.

Thus (1) is below sigma, contradicting D,-d_H>=sigma. Hence d_H>0.

## 2. A central cross point in the corner would cut off A

Now suppose S is inside AHB. It cannot lie inside AHP: every point of that
triangle except A is above the diagonal AE, whereas S is below it. The
empty-fan theorem in C2_NONCENTRAL_CUT.md, Section 4 excludes S from HBP.
No fan-edge equality is possible. Thus S is inside ABP, and its oriented
edge test gives d_B>0.

Section 1 already gives d_H>0. The actual triangle inequalities therefore
give

    d_H>=sigma,       d_B>=sigma.                        (4)

We next exclude this remaining orientation. The argument only needs the
positive central inequalities, the noncentral inequality, the corner
containments, and the uniform contact caps.

## 3. Eliminate the lower central point's contact parameter

Since S is inside AHB, 0<u<b and v<h. The positive combination of its two
central inequalities is

    (b-u)(v-du)+u[bd-du+(1-b)v]=b(1-u)v.

Consequently

    v>=sigma/(1-u).                                    (5)

Combining the two cut inequalities in (4) gives the exact identity

    (b-u)d_H+u d_B
      =(u-x)[h(b-u)-bv]>=b sigma.                       (6)

The bracket is positive because S is inside AHB. Hence u>x>=sigma/h.
Replace x by its lower bound in (6), then use b<=c, to obtain

    v <= V(h,u):=h(1-u/c)-sigma/(u-sigma/h).              (7)

All denominators are positive. Equations (5)--(7) require

    V(h,u)>=sigma/(1-u).                                (8)

## 4. The central-point condition forces h>17/20 and u<1/2

For fixed u<c, V increases with h wherever u>sigma/h: its derivative is

    1-u/c+sigma^2/[h^2(u-sigma/h)^2]>0.

Put H0=17/20. If h<=H0, equation (8) also holds with h replaced by H0.
Multiplying the difference by (u-sigma/H0)(1-u)>0 and writing
z=u-39/100 gives the polynomial

    (85/89)z^3-(141/178)z^2-(1097/178000)z
       -165153/151300000.

Since u<1, one has z<61/100, and this polynomial is at most

    -(373/1780)z^2-(1097/178000)z-165153/151300000
      <=-472358599/451479200000<0.

The final inequality is completion of the square. This contradicts (8),
so h>H0.

Also u<1/2. To prove it, replace h by its upper bound c in (8). The
resulting difference is

    g(u)=c-u-sigma/(u-sigma/c)-sigma/(1-u).

For u>=1/2 it decreases, because

    g'(u)<=-1+sigma/(1/2-sigma/c)^2<0,
    (1/2-sigma/c)^2-sigma=502387/7921000>0.

But g(1/2)=-5481/176000<0, which contradicts (8). Thus

    17/20<h<c,       u<1/2.                             (9)

## 5. The noncentral point forces u>1/2 instead

Use y>=(x+sigma)/f and x>=sigma/h in d_H>=sigma. The coefficient of x
in the resulting upper bound on d_H is negative, since u/f+h-v>0.
Direct substitution yields

    v>=2h-u K(h,f),
    K(h,f)=h^2/sigma-(1+h)/f.

The largest allowable f is f0(h). Since K increases with f, the weaker
necessary condition is v>=2h-u K(h,f0(h)). Combine this with (7), and put

    L0(h)=h^2/sigma-(1+h)/f0(h)-h/c.

After multiplication by u-sigma/h>0, the result simplifies to

    u[L0(h)(u-sigma/h)-h]>=0.

Thus L0(h)>0 and

    u>=sigma/h+h/L0(h).                                (10)

The convenient identity

    (1+h)/f0(h)
      =h+1-sigma+sigma(2-sigma)/(1-h-sigma)

gives

    L0'(h)=2h/sigma-1-1/c
            -sigma(2-sigma)/(1-h-sigma)^2.

For H0<=h<=c this is bounded above by

    2c/sigma-1-1/c-sigma(2-sigma)/(1-H0-sigma)^2
      =-112259480/2987997<0.

Hence 0<L0(h)<=L0(H0)=305930/157263. Equations (9)--(10) imply

    u>=sigma/c+H0/L0(H0)
      =1/2+22564199/544555400>1/2,

contradicting (9). This excludes the last orientation and proves that S
cannot share AHB with P.

Transposition and a half turn give the corresponding statements for the
other diagonal half and the other occupied corner. This note supplies a
complete mixed cross-pair corner exclusion. The count and placement argument
completing the mixed/central C2 family is given in C2_MIXED_CENTRAL.md.
