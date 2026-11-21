# Every mixed noncentral point lies in its occupied-corner triangle

This note strengthens Sections 3--4 of [C2_MIXED.md](C2_MIXED.md): the
lower half need not be central or mixed toward the same corner. The
projection inequality `f<=b` alone suffices. Thus this lemma also applies
to the opposite-corner mixed/mixed family. It does not by itself close
that whole family.

Use the anchors and constants of [OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md):

    A=(0,0), E=(1,1), H=(0,h), B=(b,0), F=(f,1),
    sigma=93/1000,       a=69/100,       H0=89/100,
    f<=b,       a<h<H0,       beta=1-f.

Suppose the upper pair is mixed toward A: P=(x,y)=(x,x+w) lies in cell I
and Q=(p,p+v) lies in cell II. Every actual unsigned doubled triangle
area is at least sigma. In particular,

    (1-h)beta>=sigma,       hf>=3sigma,
    3/10<beta<69/100,
    fy-x>=sigma,
    hf-fy+(1-h)x>=sigma,                                (1)
    K:=h-w-hx>=sigma,       w,v>=sigma.

The bound h>a and the bounds on beta are proved in C2_MIXED.md. Orient
the line from P to Q and write e_V=det(Q-P,V-P). The complete catalogue
in Sections 1--2 of that note leaves exactly two cases:

    (1) e_H>0>e_E, in which Q lies inside EFP;
    (3) e_H>0 and e_E>0.

The remaining orientation, in which P lies inside HFQ, was excluded
there without a hypothesis on the lower half. We prove P lies strictly
inside AHB in both remaining cases.

## 1. Pair-line case (1)

Since Q lies inside EFP, its three fan triangles give

    beta(1-y)>=3sigma.

Together with x<=fy-sigma, this implies

    hb-hx-by
       >= hb+h sigma-[hf+b](1-3sigma/beta)
       =:G(h,b,beta).                                   (2)

The derivative with respect to b is

    h-1+3sigma/beta > a-1+3sigma/a > 0.

We may therefore replace b by its lower bound f=1-beta. Put
t=(1+a)sigma=15717/100000. Since 3/beta-2>0,

    G(h,b,beta)+sigma
       >= beta-1+(h+1)sigma(3/beta-2)
       > beta-1+t(3/beta-2)
       >= 2sqrt(3t)-1-2t > 0.                           (3)

The penultimate inequality is AM--GM. The last one follows by squaring
positive quantities, since

    12t-(1+2t)^2=396375911/2500000000>0.

Thus hb-hx-by>-sigma. Its absolute value is at least sigma, so it is
positive, indeed at least sigma. As x,y>0, P lies strictly inside AHB.

## 2. Pair-line case (3): a one-variable area envelope

Here e_H,e_E>=sigma. The exact identities

    e_E-e_A=w-v,
    w e_H+(h-w)e_E=K(w-v)

give

    w>=3sigma,
    K(w-sigma)>=h sigma.                                (4)

For the first statement use e_E>=sigma, -e_A>=sigma and v>=sigma.
For the second, both weights w,h-w are positive, since
h-w=K+hx>0. Consequently

    x <= r(h,w):=1-w/h-sigma/(w-sigma).                  (5)

First observe that r(h,w)+w<h. Writing z=w-sigma>0 and using AM--GM,

    r(h,w)+w-h
       =(1-h)(1-sigma/h)-[(1-h)/h]z-sigma/z
       <=(1-h)(1-sigma/h)-2sqrt(sigma(1-h)/h)<0.          (6)

The final comparison is strict because h>sigma and

    (1-h)(h-sigma)^2/h < h(1-h) <= 1/4 < 4sigma.

In particular y<h. Define

    D0=h+f-hf,
    T(h,f,w)=D0(1-w/h)-(h+f)sigma/(w-sigma).             (7)

Since b>=f and y<h, (5) gives

    hx+by-hb <= hx+fy-hf <= T(h,f,w).                   (8)

Suppose, for a contradiction, that P is outside AHB. The actual area of
HBP then gives hx+by-hb>=sigma. Thus hx+fy-hf>=sigma; adding the second
area inequality in (1) yields

    x>=2sigma.                                         (9)

Adding the two area inequalities in (1) also gives hf-hx>=2sigma.
Consequently

    f>=f0(h):=2sigma+2sigma/h,
    f<=fmax(h):=1-sigma/(1-h).                          (10)

These inequalities and (4) restrict h to a short ordinary interval:

    3/4<h<17/20,       f<2/3.                          (11)

For the lower bound, (5) and AM--GM give

    x<=1-sigma/h-2sqrt(sigma/h).

This expression increases with h. At h=3/4 it is less than 2sigma:
indeed sigma/h=31/250 and

    4(31/250)-(1-2sigma-31/250)^2=199/10000>0.

This would contradict (9). Hence h>3/4, and the anchor bound in (10)
gives f<1-4sigma=157/250<2/3. If h>=17/20, that same anchor bound gives
f<=19/50. But h<H0 and the lower bound in (10) give

    f>2sigma+2sigma/H0=17577/44500>19/50,

another contradiction. This proves (11).

For w>=3sigma, the function T increases with h throughout the range
needed below, and decreases with f. In fact

    partial T/partial f=r(h,w)+w-h<0                   (12)

by (6), while for h<=H0 and f<=2/3,

    partial T/partial h
       =1-f+fw/h^2-sigma/(w-sigma)
       >=1/2-f(1-3sigma/H0^2)
       >=-1/6+2sigma/H0^2>0.                          (13)

The last strict inequality is equivalent to H0^2<12sigma.

We now prove T<sigma in two intervals. These are explicit analytic
bounds, not a numerical subdivision or a search over point placements.

### 2.1. The interval h<=83/100

By (10), f>=f0(83/100)=17019/41500. By (12)--(13),

    T(h,f,w)<=T(83/100,17019/41500,w).

For fixed h,f, AM--GM applied with z=w-sigma gives the bound

    T(h,f,w)
       <=D0(1-sigma/h)-2sqrt(sigma D0(h+f)/h).

At h=83/100, f=17019/41500, put

    U=2751827551/3444500000,
    V=2233830552387/17868343750000.

The right side is U-2sqrt(V). It is strictly below sigma, because
U>sigma and

    4V-(U-sigma)^2
       =20914942006991399/11864580250000000000>0.        (14)

This contradicts (8) and the assumed negative orientation of HBP.

### 2.2. The interval 83/100<=h<17/20

The noncentral inequality fy-x>=sigma, together with x>=2sigma,
implies

    w>=sigma(3/f-2)
      >=w0(h):=sigma[3/fmax(h)-2].                     (15)

By (12), T(h,f,w)<=T(h,f0(h),w). For this last function of w, its
unique maximum is attained at

    w*=sigma+sqrt(sigma h(h+f0(h))/D0(h,f0(h))).

The lower bound w0(h) lies strictly beyond that maximum. To check this
with simple rational comparisons, note that

    2/5<f0(h)<411/1000,
    D0(h,f0(h))>89/100,
    h+f0(h)<1261/1000,
    w0(h)-sigma>=w0(83/100)-sigma=25947/77000.

The function w0 increases with h. The claimed comparison now follows
from

    (25947/77000)^2
      - sigma(17/20)(1261/1000)/(89/100)
       =204369639/131920250000>0.                      (16)

Thus T decreases for w>=w0(h), and

    T(h,f,w)<=T(h,f0(h),w0(h)).

Direct substitution into the rational expression (7) gives

    T(h,f0(h),w0(h))-sigma
       =P(h)/[69750000 h^2(1000h-907)],                (17)

where

    P(h)=250000000000h^5-350223500000h^4
          +104548000000h^3-20978504853h^2
          +25279678500h+1430951103.

The denominator in (17) is negative. The numerator is positive
throughout the stated interval; the following expansion makes the
sign check explicit. Put z=h-5/6. Then z>=-1/300, and

    P(h)=250000000000z^5+(2074329500000/3)z^4
         +(6059227000000/9)z^3+(6152926618969/27)z^2
         +(19249553345/81)z+4167656341/972.

If z>=0, every displayed coefficient is positive. If -1/300<=z<=0,
discarding the nonnegative even powers and bounding the three negative
odd powers gives

    P(h)>=4167656341/972
           -19249553345/(81*300)
           -6059227000000/(9*300^3)
           -250000000000/300^5
         =1405598833/405>0.                            (18)

Equations (17)--(18) prove T<sigma, the required contradiction.

## 3. Conclusion and symmetric forms

In both possible pair-line cases, P lies strictly inside AHB. Therefore
every upper mixed noncentral point toward A lies inside that actual
corner triangle, regardless of the lower half's cell pattern.
Transposition gives the same statement for a lower noncentral point
toward A. A half turn gives the corresponding statement at E.

In particular, if the upper pair is mixed toward A and the lower pair
is mixed toward E, their two noncentral points lie inside AHB and EFD,
respectively. Since each of those corner triangles has doubled area
less than (89/100)(69/100)<Gamma2 sigma, neither can contain an additional
free point. Both central points consequently lie outside both corner
triangles. Their complete remaining coupling argument is given in
C2_OPPOSITE_MIXED.md and C2_OPPOSITE_REVERSE.md, which close this family.
