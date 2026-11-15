# Opposite corners: complete exclusion of the same-corner mixed family

This note excludes the complete C2 family in which both diagonal halves
are mixed and their noncentral points are toward the same occupied
corner. Every half-pair line orientation is included. The mixed/central
family is separately excluded in C2_MIXED_CENTRAL.md, and the opposite-corner
mixed family in C2_OPPOSITE_MIXED.md and C2_OPPOSITE_REVERSE.md.
No numerical optimization is used below.

Use the anchors, cell definitions, and contact bounds of
[OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md):

    A=(0,0), E=(1,1), H=(0,h), B=(b,0), D=(1,d), F=(f,1),
    sigma=93/1000,       a=69/100,       c=89/100,
    0<d<=h<c,           0<f<=b<c,
    1-h,1-b,f,d>11/100.

There are exactly two free points in each diagonal half. A mixed upper
half with its noncentral point toward A consists of P in cell I and Q in
cell II. Write

    P=(x,y)=(x,x+w),       Q=(p,p+v),       beta=1-f.

In particular, both points are strictly inside AEH; P is strictly inside
AHF; and Q is strictly inside AEF. All actual unsigned doubled triangle
areas are at least sigma. The two-point triangular-hull bound therefore
gives

    h>=Gamma2 sigma>a,       Gamma2=4+2sqrt(3).

For the last strict inequality one may use sqrt(3)>173/100, giving
Gamma2 sigma>34689/50000>69/100. The three triangles in the AHF fan at P
give hf>=3sigma, and the anchor triangle EHF gives (1-h)beta>=sigma.
Together with h<c these imply

    3/10<beta<1-3sigma/c=611/890<a.                     (1)

The lower bound follows from beta>=sigma/(1-h)>sigma/(1-a)=3/10.

## 1. The mixed upper half has three possible pair-line orientations

Orient the line from P to Q and put

    e_V=det(Q-P,V-P).

The segment PQ crosses the open segment AF, since P and Q are in the
opposite cells on its two sides. Thus

    e_A<0<e_F.

The values e_H and e_E are nonzero. They cannot both be negative: Q is
strictly inside AEH, whereas the affine function V -> e_V would be
negative at all three vertices and hence at Q. Exactly three alternatives
remain:

    (1) e_H>0>e_E:     Q lies strictly inside EFP;
    (2) e_H<0<e_E:     P lies strictly inside HFQ;
    (3) e_H>0, e_E>0.

The two stated containments follow directly from the oriented edge tests.
For example, in case (1) the signs on the edges EF, FP, PE are positive;
in case (2) the signs on HF, FQ, QH are negative. These are strict
containments, since every actual triangle has positive area.

## 2. Case (2) is impossible for every mixed half

Suppose P lies inside HFQ. Its three fan triangles imply

    fh-f(p+v)+(1-h)p>=3sigma.                            (2)

One has h>beta: otherwise hf=h(1-beta)<=h(1-h)<=1/4,
contrary to hf>=3sigma>1/4. The central point Q satisfies

    v>=sigma,       p>=[sigma+(1-beta)v]/beta.

Substitute this lower bound into

    N(Q)=(1-beta)v+(h-beta)p-(1-beta)h<=-3sigma,

using h-beta>0. Replacing v by its lower bound sigma then gives

    sigma <= h beta(1-beta)/(2h+2beta-h beta).           (3)

The right side increases with h. The anchor area gives
h<=1-sigma/beta; inserting it into (3) and multiplying by the positive
denominator yields

    F(beta):=beta^3-beta^2+(3sigma+sigma^2)beta
             -2sigma^2 <=0.                            (4)

But F is positive on beta>=3/10. To see this with exact constants, put
z=beta-9/20, so z>=-3/20. At sigma=93/1000,

    F(beta)=z^3+(7/20)z^2-(4851/1000000)z
             +15381/20000000
       >=(1/5)z^2-(4851/1000000)z+15381/20000000>0.

The first inequality uses z+7/20>=1/5. The final quadratic is positive
everywhere, since its leading coefficient is positive and its
discriminant is

    -591707799/1000000000000<0.

This contradicts (4). Thus every mixed half is in case (1) or case (3).
The reflected result also holds when its noncentral point is toward E.

## 3. In case (1), the noncentral point lies inside AHB when b>a

For this and the next section suppose b>a. This hypothesis holds whenever
the lower pair is central/central or mixed with its noncentral point
toward A: both lower points then lie strictly inside AEB, so
b>=Gamma2 sigma>a.

In case (1), the three fan triangles at Q inside EFP give

    beta(1-y)>=3sigma,       y<=1-3sigma/beta.

Noncentral membership also gives fy-x>=sigma, hence x<=fy-sigma.
Consequently the area expression for the corner side of HB satisfies

    hb-hx-by
      >=hb+h sigma-[h(1-beta)+b](1-3sigma/beta)
      =:G(h,b,beta).                                    (5)

The quantity G increases with h and b throughout h,b>=a and (1). Indeed,

    partial G/partial b=h-1+3sigma/beta
       >=a-1+3sigma/a>0,

    partial G/partial h
       =b+sigma-1+beta+3sigma(1-beta)/beta
       >a+sigma-1+3/10>0.

It follows that G(h,b,beta)>=G(a,a,beta). The latter is

    a^2-2a-2a sigma+a beta+6a sigma/beta.

Its derivative is a(1-6sigma/beta^2)<0 for beta<=a, since
a^2<6sigma. Thus its minimum on the enlarged interval beta<=a occurs
at beta=a, where

    G(a,a,a)=93/50000>0.                                (6)

Hence hb-hx-by>0. Since x,y>0, P lies strictly inside AHB. In fact the
actual triangle area then gives hb-hx-by>=sigma.

## 4. In case (3), the same containment holds when b>a

Continue to assume h,b in (a,c). Put

    K(P)=h(1-x)-w>0,       w=y-x,       Q=(p,p+v).

The exact pair-line identity is

    w e_H+(h-w)e_E=K(P)(w-v).                           (7)

Both weights on the left are positive: w>=sigma, and
h-w=K(P)+hx>0. In case (3), e_H,e_E>=sigma. Since v>=sigma, (7) gives

    h sigma<=K(P)(w-sigma),       w>sigma,
    hx<=h-w-h sigma/(w-sigma).                          (8)

Set z=w-sigma>0 and D0=h+b-hb. Substitution of (8) yields

    hx+by-hb
      <=D0(1-sigma/h)-D0 z/h-sigma(h+b)/z
      <=D0(1-sigma/h)-2sqrt(sigma D0(h+b)/h).             (9)

The second inequality is AM--GM. The first term in the last expression
increases with each of h and b, so

    D0(1-sigma/h)<=(2-c)(c-sigma)
       =:T=88467/100000.                                (10)

For the expression inside the square root, D0(h+b)/h increases with b.
At b=a it equals

    (1-a)h+a(2-a)+a^2/h.

Its derivative is 1-a-a^2/h^2<0 for h<=c; the needed exact comparison is
a^2-(1-a)c^2=230549/1000000>0. Therefore

    D0(h+b)/h >=(c+a-ca)(c+a)/c
       =:M=763061/445000.                               (11)

These two bounds are enough: T>sigma and

    4sigma M-(T-sigma)^2
       =9917547879/890000000000>0.

Equations (9)--(11) imply

    hx+by-hb <=T-2sqrt(sigma M)<sigma.                   (12)

The actual triangle HBP has absolute doubled area at least sigma.
Thus (12) excludes hb-hx-by<=-sigma, and

    hb-hx-by>=sigma.

Again P lies strictly inside AHB. Combining Sections 2--4, an upper
noncentral point toward A lies inside AHB whenever the lower pair is
central/central or is mixed toward A. Transposition gives the analogous
statement for a lower noncentral point, and a half turn gives the
corresponding statement at E.

## 5. Complete same-corner mixed/mixed exclusion

Suppose the two halves are mixed and their noncentral points are both
toward A. Call those points P in the upper half and S in the lower half.
Both h and b are at least Gamma2 sigma>a. The complete orientation
catalogue of Section 1, the exclusion in Section 2, and the containment
proofs in Sections 3--4 therefore put both P and S strictly inside AHB.

This contradicts the complete two-noncentral-point corner theorem in
[C2_NONCENTRAL_CUT.md](C2_NONCENTRAL_CUT.md), Section 5. That theorem
handles all four possible sign choices at H,B for the line PS: the
common-corner cut is excluded by an explicit scalar inequality, the two
other cuts would place one point inside the other's empty H/B fan, and
two negative signs are incompatible with membership in AHB.

A half turn handles the case when both noncentral points are toward E.
Thus the entire same-corner mixed/mixed C2 subfamily is impossible at
minimum ordinary area at least A*.

The conclusions above reduce the other mixed C2 possibilities to one mixed
and one central half, or two mixed halves whose noncentral points are toward
opposite occupied corners. C2_MIXED_CENTRAL.md now excludes the former
completely. C2_OPPOSITE_MIXED.md and C2_OPPOSITE_REVERSE.md exclude the
opposite-corner mixed/mixed alternative, completing C2 as assembled in
OPPOSITE_CORNERS.md, Section 10.
