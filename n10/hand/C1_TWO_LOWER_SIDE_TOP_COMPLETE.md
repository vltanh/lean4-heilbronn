# Complete C1 exclusion with two lower points, one side point and two top points

Use the actual C1 anchors

    O=(0,0), H=(0,h), C=(c,0), D=(1,d), F=(f,1),
    0<d<=h<=1, 0<f<=c<=1,

and assume every unsigned actual doubled triangle area is at least
`s=93/1000`. Suppose OHC contains exactly two further actual points,
one exterior side cap contains one point, and the exterior top cap
contains two. Then the configuration is impossible.

This is the complete count `(k,j,r,t,l)=(2,0,1,2,0)` and its reflected
version. The convex top-pair hull is already excluded in
C1_TWO_LOWER_SIDE_TOP_PAIR.md. This note excludes every remaining
triangular hull by four fixed cubic sums, with 764 positive-integer
products in total. It makes no additional coordinate or sign assumption.

The threshold constants used are

    rho=347/500,   a=841/1000.

The two-interior-point triangle theorem gives hc>rho, by the exact
comparison in C1_TWO_LOWER_THREE_CAPS.md. All decimals printed in the
boxes below are exact rational numbers.

## 1. Lower-point labels and the four exhaustive rows

Write the two lower points as Y=(u,v), Z=(z,w). Choose Y with the
smaller barycentric coordinate at O in triangle OHC. Then Z cannot
lie in HCY: every strict interior point of HCY has a smaller
O-barycentric coordinate than Y. Thus Z lies in OHY or OCY. Reflect
in the square diagonal if necessary so that Z lies strictly in OHY.
This is the only reflection used to label the lower points.

Name the three upper points P=(p,q), Q=(l,m), R=(r,t) by increasing
ray angle from O. Then OPQ,OPR,OQR are positive. A right-cap point is
below OD, top-cap points are above OD and below OF, and a left-cap
point is above OF. Therefore the only two upper location models are

| Model | P | Q | R |
|---|---|---|---|
| RTT | right cap | top cap | top cap |
| TTL | top cap | top cap | left cap |

Both models are retained: the lower-point reflection need not preserve
the occupied side. No order between h and c is imposed.

C1_TWO_LOWER_SIDE_TOP_PAIR.md shows that the two top points and D,F
have triangular hull. One top point is strictly inside the triangle
formed by D,F and the other. Its outer and inner cap areas satisfy

    3s<=outer area<4s,   s<=inner area<2s.                (1)

Exactly the following four cases remain:

| Row | Assumed sign | Outer top point | Inner top point |
|---|---|---|---|
| RTTm | DQR negative | R | Q |
| RTTp | DQR positive | Q | R |
| TTLm | DPQ negative | Q | P |
| TTLp | DPQ positive | P | Q |

The signs at F of the same top pair are opposite to those at D. The
actual determinants never vanish. Thus the four rows exhaust all
remaining hulls and both relative top-point orders.

## 2. All coordinate bounds used in the four boxes

We give formulas for exact necessary bounds first. Every printed box
below weakens these bounds by rounding its lower endpoints down and
its upper endpoints up; no coordinate subdivision is involved.

Put

    delta=s/[rho(1-rho)]=7750/17697,
    mu=1-3s/(1-s)=628/907,
    nu=1-3s/(1-delta)=5009537/9947000.                    (2)

The side-cap support inequality `dc(1-c)>=s`, the two-top endpoint
cost `(1-d)(1-f)>=3s`, and the actual anchor bounds d,f<=1-s give
for model RTT

    rho/a<=h<=1,   rho<=c<=a,
    delta<=d<=mu,  s<=f<=nu.                            (3)

Here c<a, delta>d_lower=.437, and d<.693 were proved in Section 1 of
C1_TWO_LOWER_SIDE_TOP_PAIR.md. In particular
`h>=rho/c>=rho/a`. The bound on f follows by using d>=delta in the
two-top endpoint cost. For TTL, interchange h,c and d,f in (3).

The actual fan at Z inside OHY gives

    hu>=3s,   h(u-z)>=2s.

The remaining elementary subdivisions of OHC give

    h(c-u)>=2s, c(h-v)>=4s,
    hz>=s, cv>=s, cw>=s,
    h(c-z)>=2s, c(h-w)>=2s.                             (4)

Consequently, if H0,C0 denote the upper bounds for h,c in (3), then

    3s/H0<=u<=C0-2s/H0,
    s/C0<=v<=H0-4s/C0,
    s/H0<=z<=C0-4s/H0,
    s/C0<=w<=H0-2s/C0.                                 (5)

For example the upper bound for z combines h(u-z)>=2s with
h(c-u)>=2s. Use (H0,C0)=(1,a) in RTT and (a,1) in TTL.

A right-cap point P=(p,q) obeys

    p>=rho+s/(693/1000)=95657/115500,
    s/a<=q<=693/1000-s/(1-rho)=19843/51000.              (6)

Indeed -[CDP]>=s implies `d(p-c)>=s` and
`(1-c)(d-q)>=s`; also [OCP]=cq>=s. Combine these with
c>=rho,c<=a,d<.693. Its other coordinate upper bound is p<=1.
The left-cap point has the transposed bounds.

For a top point T=(x_T,y_T) of cap area at least e*s, the two projection
inequalities give

    (1-d)(x_T-f)>=e*s,
    (1-f)(y_T-d)>=e*s.

Thus its RTT bounds are

    x_T>=s+e*s/(1-delta),
    y_T>=delta+e*s/(1-s),                               (7)

with both upper bounds one. Take e=1 for the inner top point and e=3
for the outer point from (1). The TTL bounds are transposed. Equations
(2)-(7) specify every endpoint before the outward roundings printed
with the rows.

Finally, both lower points satisfy

    u+v<=1-s,   z+w<=1-s.                               (8)

For a point (x,y) in OHC, write its barycentric coordinates as
(lambda,alpha,beta) at O,C,H. Then its clearance from HC is hc*lambda,
whereas `1-x-y=lambda+alpha(1-c)+beta(1-h)>=hc*lambda`.
The actual HC clearance is at least s, proving (8).

## 3. The complete initial signs and their proofs

The anchor signs are

    -OHC -OHD -OHF +OCD +OCF +ODF
    +HCD +HCF +HDF +CDF.

For either lower point T=Y,Z, the signs at the following anchor pairs are

| Pair | OH | OC | HC | HD | HF | CD | CF | DF |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Sign | - | + | - | - | - | + | + | + |

They follow by testing O,H,C against each indicated line. The lower
fan selection also gives OYZ positive and HYZ negative.

We additionally have ODZ positive and OFY negative. To prove this,
notice that `(1-d)(1-f)>=3s` and d,f>=s imply

    d,f<=1-3s/(1-s)<rho<Gamma2*s.

Therefore OCD and OHF each contain at most one other actual point.
The ray OZ has greater angle than OY, since OYZ>0. If ODZ were
negative, both lower points would lie in OCD; if OFY were positive,
both would lie in OHF. These are contradictions. This proves the two
additional signs without a second labeling assumption.

For every upper point T, OH T is negative, OC T is positive and
HC T is positive. Its remaining anchor-pair signs depend on its cap:

| Cap | HF | CD | DF | OD | OF | HD | CF |
|---|---:|---:|---:|---:|---:|---:|---:|
| right | - | - | + | - | - | - | - |
| top | - | + | - | + | - | + | - |
| left | + | + | + | + | + | + | + |

These follow by the three vertex tests for the corresponding cap. The
three ray signs OPQ,OPR,OQR are positive by their labeling.

For each lower T=Y,Z and each upper V=P,Q,R, the cross signs are

    HTV positive,   CTV negative;
    FTV positive for right/top V, negative for left V;
    DTV positive for right V, negative for top/left V.   (9)

For the first two, HC separates the lower and upper points and all
actual points have positive x,y. For the last two, fix V and test the
three lower vertices O,H,C; the cap table gives the same sign at each.
Positive lower barycentric coordinates then give the strict sign in (9).

There are two final initial signs. If V is right-cap and T top-cap,
DVT is negative because

    -[DVT]=(1-x_V)(y_T-d)+(d-y_V)(1-x_T)>0.

If V is left-cap and T top-cap, FTV is negative by reflection. These
statements allow square-side coordinates equal to one; zero total area
is excluded by the threshold.

The row's remaining signs are obtained by its printed trace. The rule
`H +FUV` or `H -FUV` gives the opposite sign to the assumed DUV, by
Section 1's triangular hull. The rule `P abcde +UVW` or `P abcde -UVW`
uses exactly

    [abc][ade]-[abd][ace]+[abe][acd]=0.                 (10)

When two nonzero summands have the same sign, the third has the
opposite sign. In every printed use only one triangle sign in that
third summand is undetermined, and (10) gives the displayed deduction.

## 4. Factors in the four cubic sums

Use the coordinate order

    h,c,d,f,u,v,z,w,p,q,l,m,r,t.

For its printed box endpoints lo_i,hi_i, define

    L_(2i)=coordinate_i-lo_i,
    L_(2i+1)=hi_i-coordinate_i,   0<=i<14.

The remaining affine factors, in order L28 through L36, are

    h-d, c-f, u-z-2s, c-u-2s, h-v-4s,
    c-z-2s, h-w-2s, 1-s-u-v, 1-s-z-w.                  (11)

Their nonnegativity follows from the normalization, (4) and (8).
A factor +UVW is [UVW]-s, and -UVW is -[UVW]-s; every such sign is
among the initial signs, the row assumption or its printed deductions.

The remaining factor names are defined in the following list. A point
list in a name is its actual strict interior witness; every such edge
test follows from the same finite signs and is checked in the optional
checker.

* `KLOW=hc-rho`; `FAN=hu-3s`.
* `TOPCOUNT=(1-d)(1-f)-3s`.
* `LEFTSUP=fh(1-h)-s`, used only in TTL, is the left side-cap support
  inequality reflected from (2) in C1_TWO_LOWER_SIDE_TOP_PAIR.md.
* `C_ABC_T=|[ABC]|-3s`, where T is strictly inside actual triangle ABC.
* `Q_ABCD_I=[ABC]+[ACD]-cost`, for the positive cyclic actual convex
  quadrilateral ABCD and its indicated interior points I. The cost is
  449/1000 for one point and 8s for two. These are respectively the
  bounds `2(1+sqrt(2))s>449/1000` and 8s, recalled in
  TYPE_II_133_TRIANGULAR_RIGHT.md, Section 5.
* `DROP_OHT_I=x_T-3s` and `DROP_OCT_I=y_T-3s`, with the indicated one
  interior point I. Indeed their actual triangle areas are h*x_T and
  c*y_T, respectively; h,c<=1.
* For a right point T, `RX_T=x_T-c-s` and `RY_T=d-y_T-s`.
  For a left point T, `LX_T=f-x_T-s` and `LY_T=y_T-h-s`.
  The cap-area formulas and the unit-square bounds prove these as in
  (6); reflecting gives the left versions.
* For a top point T and the possibly empty witness list I, let cost=s
  if I is empty and cost=3s if its one point is inside DFT. Then
  `TX_T_I=x_T-f-cost`, `TY_T_I=y_T-d-cost`,
  `TPX_T_I=(1-d)(x_T-f)-cost`, and
  `TPY_T_I=(1-f)(y_T-d)-cost`. These are the projection inequalities
  used in (7); the coefficient factors 1-d,1-f are at most one.

There is one useful affine family from the strict upper bound in (1).
If I is the inner and T the outer top point, every barycentric
coordinate of I in DFT exceeds 1/4: each corresponding actual fan area
is at least s, whereas the outer area is less than 4s. Write
`I=(x_I,y_I)`, `T=(x_T,y_T)`. Subtract the contribution of 1/4 at
each of D,F,T; the remaining nonnegative barycentric weights sum to
1/4. Their first coordinates lie between f and 1, and their second
coordinates lie between d and 1. It follows that the four factors

    BARY_IT_xl=4x_I-1-2f-x_T,
    BARY_IT_yl=4y_I-1-2d-y_T,
    BARY_IT_xu=2+f+x_T-4x_I,
    BARY_IT_yu=2+d+y_T-4y_I                              (12)

are all nonnegative. This proves each factor premise used below.

## 5. Four exact contradictions

Every displayed sum W is a positive-integer combination of products
of the preceding nonnegative factors, so W>=0. Each product has degree
at most three. Expand at the lower corner of the printed row box,
writing each coordinate as lo_i+z_i. Then 0<=z_i<=hi_i-lo_i. If
`W(lo+z)=sum c_alpha z^alpha`, an upper bound is

    c_0+sum_(alpha!=0,c_alpha>0)
                  c_alpha*product_i(hi_i-lo_i)^alpha_i. (13)

This follows by discarding negative nonconstant terms and bounding
positive monomials by their endpoints. The exact value of (13), printed
with each sum, is negative. Thus all four rows are impossible.

Every sign deduction, factor and integer product is printed below.
The checker reads only this manuscript and reconstructs all polynomials
and geometric witnesses from these definitions; no discovery file or
optimization is a premise.

### Row RTTm

```c1st-box
h 33/40 1
c 347/500 841/1000
d 437/1000 693/1000
f 93/1000 63/125
u 279/1000 131/200
v 11/100 279/500
z 93/1000 469/1000
w 11/100 779/1000
p 207/250 1
q 11/100 39/100
l 129/500 1
m 27/50 1
r 589/1000 1
t 149/200 1
```

```c1st-geometry
H +FQR
P OHDZP -OZP
P HODPQ +HPQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P FODPQ +FPQ
P FODPR +FPR
P YOHFZ +YFZ
P YHDPQ +YPQ
P YHDPR +YPR
P ZHDPQ +ZPQ
P ZHDPR +ZPR
P QOHDR -QHR
```

```c1st-sum
47 L0*L1*L17; 106 L0*L3*L4; 1 L0*L3*L10; 34 L0*L3*L27
24 L0*L4*L27; 26 L0*L4*BARY_QR_xu; 115 L0*L6*L17; 33 L0*L6*BARY_QR_xu
1 L0*L8*L25; 155 L0*L17*L25; 80 L0*L17*L31; 493 L0*L17*TY_R_Q
50 L0*L18*L27; 1 L0*L25*L32; 61 L0*L27*BARY_QR_xu; 10 L0*BARY_QR_xu*BARY_QR_yu
5 L1*L3*L30; 418 L1*L4*L6; 11 L1*L6*L24; 17 L1*L6*BARY_QR_yl
58 L1*L17*L35; 12 L1*L27*TY_R_Q; 2 L1*L30*+OCF; 6 L2*L3*L10
68 L2*L4*TY_R_Q; 2 L2*L6*L36; 3 L2*L6*BARY_QR_yl; 251 L2*L6*TY_Q_
1 L2*L8*BARY_QR_xu; 4 L2*L9*L21; 3 L2*L10*L27; 1 L2*L10*TY_Q_
23 L2*L13*L18; 4 L2*L16*L30; 12 L2*L17*L35; 28 L2*L18*RY_P
49 L2*BARY_QR_xu*TY_R_Q; 18 L3*L4*BARY_QR_yl; 112 L3*L4*BARY_QR_xu; 444 L3*L5*L5
2 L3*L8*L12; 6 L3*L8*L18; 1 L3*L9*L25; 3 L3*L9*L27
1 L3*L12*BARY_QR_xl; 1 L3*L12*TX_R_Q; 128 L3*L17*L20; 25 L3*L17*L23
20 L3*L17*L24; 48 L3*L17*L28; 4 L3*L17*L34; 250 L3*L17*TX_Q_
372 L3*L18*L20; 25 L3*L18*L33; 31 L3*L18*RX_P; 410 L3*L18*TY_R_Q
71 L3*L21*L27; 81 L3*L22*BARY_QR_xu; 186 L3*L27*TX_Q_; 2 L3*L28*L30
18 L3*L28*BARY_QR_yl; 3 L3*L35*TY_R_Q; 10 L4*L4*BARY_QR_xl; 7 L4*L6*BARY_QR_xl
126 L4*L6*TY_Q_; 48 L4*L6*TY_R_Q; 1 L4*L8*L27; 7 L4*L10*L17
13 L4*L14*L17; 2 L4*L14*L19; 130 L4*L17*L17; 463 L4*L17*L20
34 L4*L17*L27; 423 L4*L17*L28; 13 L4*L17*L36; 186 L4*L17*RX_P
563 L4*L17*TX_Q_; 1 L4*L23*L31; 15 L4*L24*TY_R_Q; 60 L4*L25*L27
1 L4*L25*L34; 370 L4*L27*RX_P; 46 L4*L27*TY_R_Q; 21 L5*L9*L17
2 L5*L14*L18; 41 L5*L25*BARY_QR_yl; 8 L6*L7*DROP_OHP_Z; 1 L6*L8*RX_P
3 L6*L8*RY_P; 3 L6*L12*TY_R_Q; 2 L6*L16*L35; 2 L6*L17*BARY_QR_xu
13 L6*L17*TX_Q_; 28 L6*L18*L23; 13 L6*L19*L20; 28 L6*L20*BARY_QR_yl
18 L6*L25*BARY_QR_yl; 4 L6*L26*L36; 375 L6*L26*RY_P; 1 L6*L31*L34
63 L6*BARY_QR_yl*TY_Q_; 7 L7*L15*L27; 1 L7*L17*L30; 8 L7*L20*L27
108 L7*L27*L27; 118 L7*L27*RX_P; 239 L7*L27*TY_Q_; 2 L8*L17*L33
14 L8*L17*C_OCF_Y; 4 L8*L18*RX_P; 1 L8*L27*-OHD; 2 L9*L12*RX_P
136 L10*L17*L23; 6 L10*L17*L29; 34 L10*L17*TY_R_Q; 34 L11*L17*BARY_QR_yu
8 L12*L18*TY_Q_; 5 L12*L22*L27; 1 L12*L25*RX_P; 1 L12*BARY_QR_xu*RX_P
4 L13*L27*TY_Q_; 12 L14*L19*L27; 4 L15*L18*BARY_QR_yu; 28 L16*L27*BARY_QR_xu
25 L17*L17*L22; 40 L17*L17*TY_R_Q; 96 L17*L18*L22; 65 L17*L18*L24
4 L17*L18*L32; 466 L17*L18*TX_Q_; 29 L17*L19*L34; 3 L17*L20*L25
5 L17*L20*L33; 143 L17*L20*+OCF; 15 L17*L20*BARY_QR_xu; 15 L17*L21*BARY_QR_xu
29 L17*L23*TY_R_Q; 75 L17*L27*-OHD; 97 L17*L27*TY_Q_; 22 L17*L28*L30
58 L17*L28*L32; 4 L17*L36*+OCF; 230 L17*+OCF*TX_Q_; 20 L17*+OCF*TX_R_Q
25 L17*BARY_QR_xl*BARY_QR_yu; 1 L17*BARY_QR_xl*TX_R_Q; 7 L17*RY_P*RY_P; 96 L17*RY_P*TY_Q_
101 L17*TY_Q_*TX_R_Q; 1 L17*TX_R_Q*TX_R_Q; 28 L18*L20*BARY_QR_yl; 13 L18*L21*TX_R_Q
24 L18*L22*BARY_QR_yl; 13 L18*L23*BARY_QR_yl; 12 L18*L26*L34; 6 L18*L27*BARY_QR_yl
125 L18*L27*TX_Q_; 4 L18*L35*RX_P; 4 L18*L36*BARY_QR_yl; 12 L18*BARY_QR_yl*TY_Q_
28 L18*BARY_QR_xu*TY_Q_; 440 L18*RX_P*TX_Q_; 25 L18*RX_P*TX_R_Q; 38 L19*L27*L28
38 L19*L27*RY_P; 62 L20*L27*BARY_QR_xu; 536 L20*L27*TY_Q_; 44 L20*BARY_QR_yl*BARY_QR_yl
22 L21*L21*L27; 536 L21*L22*L27; 16 L21*BARY_QR_xu*TY_R_Q; 44 L22*BARY_QR_yl*BARY_QR_xu
67 L24*BARY_QR_xu*TY_Q_; 54 L25*L27*-OHD; 28 L25*L27*RX_P; 1 L25*L27*TX_R_Q
7 L25*BARY_QR_yl*BARY_QR_xu; 6 L26*L27*L27; 1 L26*L27*L31; 12 L27*L27*RY_P
12 L27*L28*BARY_QR_yu; 52 L27*L29*-OHD; 4 L27*L33*RY_P; 47 L27*-OHD*TY_Q_
8 L27*BARY_QR_xl*BARY_QR_xl; 12 L27*BARY_QR_yu*TY_R_Q; 93 L27*TY_Q_*TY_Q_; 10 L28*BARY_QR_yl*BARY_QR_xu
1 L31*TY_R_Q*TY_R_Q; 6 BARY_QR_yl*BARY_QR_yl*RY_P; 6 BARY_QR_yl*BARY_QR_yl*TY_R_Q; 20 BARY_QR_yl*BARY_QR_xu*C_OCF_Y
25 BARY_QR_yl*BARY_QR_xu*DROP_OHP_Z; 130 KLOW*L7; 12 KLOW*L17; 58 KLOW*L19
71 KLOW*L22; 360 KLOW*RY_P; 256 KLOW*TX_Q_; 1 FAN*L6
25 -OHF*L1; 1 +OYZ*TY_Q_; 1 +CFY*L1; 22 -OHZ*L17
7 -HFZ*L8; 6 -HFZ*L31; 111 +OCP*L1; 60 +OCP*L28
179 +OCP*C_OHD_Z; 25 -HFP*L18; 2 -CDP*L3; 341 -CDP*L20
358 -CDP*L26; 286 -CDP*L28; 4 -CDP*L32; 2 -CDP*L33
30 -CDP*BARY_QR_xl; 76 -CDP*BARY_QR_yu; 97 -CDP*DROP_OHP_Z; 350 -CDP*TX_Q_
302 -CDP*TY_Q_; 55 -CDP*TX_R_Q; 6 -CYP*L3; 1 -CYP*L22
3 +DYP*L6; 257 -HFQ*L2; 131 -HFQ*L25; 126 -DFQ*L0
56 -DFQ*L4; 113 -DFQ*L20; 427 -DFQ*L22; 53 -DFQ*-OHD
5 -DFQ*+OCF; 7 -DFQ*TY_R_Q; 40 +HCR*L17; 204 -HFR*L4
123 -HFR*L8; 1 -HFR*L10; 277 -HFR*L19; 19 -HFR*L20
216 -HFR*L22; 124 -HFR*L31; 7 -HFR*BARY_QR_yl; 115 -HFR*DROP_OHP_Z
112 -HFR*TX_Q_; 98 +OQR*L18; 18 +OQR*L20; 13 +OQR*+OCF
795 +OQR*TY_Q_; 418 -DPR*L1; 28 -DPR*L18; 13 -DPR*L20
210 -DPR*L22; 84 -DPR*L23; 11 +ODZ*L17; 114 -DQR*L2
80 -DQR*L20; 489 -DQR*L22; 40 -DQR*L25; 122 -DQR*-OHD
33 -DQR*BARY_QR_yl; 123 -DQR*C_OHD_Z; 101 -DQR*RX_P; 55 -DQR*RY_P
99 -DQR*TX_Q_; 77 -DQR*TY_R_Q; 25 +CPQ*L17; 40 +CPR*L17
28 +CPR*L18; 13 TPX_R_Q*L3; 28 TPY_R_Q*L18; 75 TPY_R_Q*L27
41 Q_OCDH_YZ*L17; 79 Q_HDRF_Q*L6; 3 Q_HDRF_Q*L25
```

Upper bound: `-696542591/500000000`.

### Row RTTp

```c1st-box
h 33/40 1
c 347/500 841/1000
d 437/1000 693/1000
f 93/1000 63/125
u 279/1000 131/200
v 11/100 279/500
z 93/1000 469/1000
w 11/100 779/1000
p 207/250 1
q 11/100 39/100
l 589/1000 1
m 149/200 1
r 129/500 1
t 27/50 1
```

```c1st-geometry
H -FQR
P OHDZP -OZP
P HODPQ +HPQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P FODPQ +FPQ
P FODPR +FPR
P YOHFZ +YFZ
P YHDPQ +YPQ
P YHDPR +YPR
P ZHDPQ +ZPQ
P ZHDPR +ZPR
P QOCDR -QCR
P QODPR -QPR
```

```c1st-sum
10 L0*L0*L25; 112 L0*L3*TX_Q_R; 410 L0*L5*L6; 135 L0*L5*BARY_RQ_xu
74 L0*L17*RY_P; 686 L0*L17*TY_Q_R; 77 L0*L18*L23; 41 L0*L21*L21
41 L0*L21*BARY_RQ_xu; 9 L0*L23*BARY_RQ_xu; 77 L0*L23*RY_P; 77 L0*L23*TY_Q_R
9 L0*BARY_RQ_xu*BARY_RQ_yu; 110 L1*L1*L6; 95 L1*L2*L6; 165 L1*L3*L23
193 L1*L4*L6; 98 L1*L6*L26; 126 L1*L18*L21; 491 L1*L18*RX_P
61 L1*L23*L29; 36 L1*L23*TX_R_; 578 L3*L5*L18; 2 L3*L5*BARY_RQ_xl
67 L3*L6*BARY_RQ_yu; 395 L3*L7*L18; 597 L3*L18*DROP_OHP_Z; 29 L3*L23*-OHD
298 L3*L23*TX_R_; 11 L4*L5*L23; 13 L4*L6*BARY_RQ_xl; 110 L4*L6*BARY_RQ_yl
316 L4*L7*L23; 537 L4*L17*L22; 1054 L4*L17*L27; 808 L4*L17*-OHD
690 L4*L17*RX_P; 417 L4*L17*RY_P; 1095 L4*L17*TX_R_; 1095 L4*L17*TY_R_
16 L4*L23*BARY_RQ_xu; 33 L4*L23*BARY_RQ_yu; 995 L5*L5*L21; 586 L5*L5*RX_P
317 L5*L16*TY_Q_R; 280 L5*L17*BARY_RQ_xl; 219 L5*L18*L21; 14 L5*L21*L21
6 L5*L21*BARY_RQ_xu; 33 L5*L22*L23; 24 L5*L23*L25; 80 L5*L23*L29
8 L5*BARY_RQ_xl*BARY_RQ_xu; 97 L6*L6*TY_Q_R; 61 L6*L17*TY_Q_R; 5 L6*L21*L23
53 L6*L21*TY_R_; 361 L6*L23*RX_P; 42 L6*L24*BARY_RQ_yl; 5 L6*BARY_RQ_yl*BARY_RQ_xu
203 L7*L23*L24; 144 L7*L23*L26; 75 L7*L23*L29; 140 L7*L23*-OHD
80 L7*L23*DROP_OHP_Z; 33 L16*L23*BARY_RQ_yl; 161 L17*L17*L18; 173 L17*L17*TY_Q_R
301 L17*L18*L24; 161 L17*L18*RX_P; 301 L17*L18*TX_Q_R; 103 L17*L21*L23
173 L17*L23*L26; 320 L17*L23*L28; 241 L17*L23*-OHD; 103 L17*L23*BARY_RQ_xu
254 L17*L23*RX_P; 644 L17*L24*L27; 239 L17*L26*BARY_RQ_xl; 78 L17*BARY_RQ_yu*TX_R_
10 L18*L21*L23; 45 L18*L21*L24; 125 L18*L21*DROP_OHP_Z; 216 L18*L23*C_OCF_Y
26 L18*L23*DROP_OHP_Z; 41 L18*L25*TY_Q_R; 417 L18*L28*RX_P; 301 L18*RX_P*TX_R_
74 L21*L23*RX_P; 74 L21*BARY_RQ_yu*RX_P; 22 L22*L23*BARY_RQ_yu; 77 L23*L23*C_OHD_Z
11 L23*L23*TY_Q_R; 174 L23*L27*L27; 11 L23*BARY_RQ_yl*BARY_RQ_yu; 43 L23*DROP_OHP_Z*TY_Q_R
26 L23*RX_P*RY_P; 114 KLOW*L21; 396 KLOW*RY_P; 225 KLOW*TX_Q_R
74 KLOW*TY_Q_R; 685 KLOW*TX_R_; 104 TOPCOUNT*L23; 100 -OHF*L1
173 -OHF*L2; 241 -OHF*L21; 225 -OHF*RY_P; 527 +OCP*L21
136 +OCP*BARY_RQ_yu; 17 +OCP*TX_R_; 586 +OCP*TY_R_; 371 -CDP*L5
101 -CDP*L6; 285 -CDP*L24; 425 -CDP*L26; 322 -CDP*L28
106 -CDP*BARY_RQ_yu; 436 -CDP*DROP_OHP_Z; 781 -CDP*TX_Q_R; 2 -HFQ*L6
10 -HFR*L1; 585 -HFR*L4; 106 -HFR*+OCF; 162 -HFR*BARY_RQ_xu
579 -HFR*C_OCF_Y; 649 -HFR*TX_R_; 144 -HFR*TY_R_; 41 +CDR*L18
82 -DFR*L6; 589 -DFR*L24; 63 -DFR*-OHD; 36 -DFR*BARY_RQ_xu
277 -DFR*RX_P; 315 +OQR*L2; 426 +OQR*L17; 39 +OQR*L24
144 +OQR*L26; 79 +OQR*C_OHD_Z; 121 +OQR*C_OCF_Y; 41 +OQR*RY_P
126 -DPQ*L1; 254 -DPQ*L3; 975 -DPQ*L5; 226 -DPQ*L25
10 -DPQ*BARY_RQ_yl; 426 -DPQ*DROP_OHP_Z; 271 -DPQ*TX_R_; 80 +DQR*BARY_RQ_xl
43 -FQR*L0; 470 -FQR*L7; 111 -FQR*L16; 80 -FQR*L21
358 -FQR*L24; 144 -FQR*L26; 138 -FQR*+OCF; 42 C_DFQ_R*L21
490 TPX_Q_R*L3; 6 TPX_Q_R*L23; 81 TPX_Q_R*L25; 36 Q_HDQF_R*L2
363 Q_HDQF_R*L6; 122 Q_HDQF_R*BARY_RQ_xu
```

Upper bound: `-905163871/1000000000`.

### Row TTLm

```c1st-box
h 347/500 841/1000
c 2063/2500 1
d 93/1000 5037/10000
f 4379/10000 1731/2500
u 3317/10000 7789/10000
v 93/1000 469/1000
z 221/2000 5577/10000
w 93/1000 131/200
p 1351/2500 1
q 323/1250 1
l 1491/2000 1
m 5893/10000 1
r 221/2000 3891/10000
t 8281/10000 1
```

```c1st-geometry
H +FPQ
P OHFYR +OYR
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P COFQR +CQR
P DOFPR +DPR
P DOFQR +DQR
P YOHFZ +YFZ
P YOHZR -YZR
P YHFPR +YPR
P YHFQR +YQR
P ZHFPR +ZPR
P ZHFQR +ZQR
P POHDQ -PHQ
P PODQR +PQR
```

```c1st-sum
736 L0*L4*TX_P_; 528 L1*L1*L6; 71 L1*L2*BARY_PQ_xu; 210 L1*L2*C_OHD_Z
28 L1*L2*TY_Q_P; 334 L1*L3*L21; 326 L1*L7*BARY_PQ_yl; 1136 L1*L17*L24
139 L1*L19*L21; 253 L1*L20*L21; 472 L1*L20*L24; 83 L1*L21*L28
539 L1*L21*DROP_OCR_Y; 83 L1*L21*LY_R; 190 L1*L24*+OCF; 376 L1*L24*BARY_PQ_yl
528 L1*L24*C_OHD_Z; 1136 L1*L24*TX_P_; 38 L1*L24*DROP_OCR_Y; 150 L2*L4*L21
82 L2*L4*LY_R; 345 L2*L21*LY_R; 51 L2*L23*L24; 51 L2*L23*TX_Q_P
284 L2*L27*DROP_OCR_Y; 321 L2*TX_P_*LY_R; 67 L3*L4*L5; 371 L3*L4*L16
28 L3*L4*L23; 46 L3*L4*TX_P_; 32 L3*L21*TY_P_; 80 L3*L27*BARY_PQ_xu
138 L3*L27*TY_P_; 27 L4*L4*BARY_PQ_xl; 184 L4*L4*TX_Q_P; 19 L4*L6*BARY_PQ_xl
62 L4*L7*TX_Q_P; 98 L4*L21*L23; 55 L4*L23*BARY_PQ_xl; 12 L4*L23*TX_P_
8 L4*BARY_PQ_yu*TX_Q_P; 359 L5*L6*L27; 223 L5*L21*+OCF; 83 L5*L21*BARY_PQ_yl
98 L5*L21*LY_R; 17 L6*L7*L21; 70 L6*L16*L21; 1486 L6*L18*L27
17 L6*L21*L21; 705 L6*L21*L27; 22 L6*L21*BARY_PQ_yl; 17 L6*L21*BARY_PQ_xu
805 L6*L23*L27; 18 L6*L27*BARY_PQ_xu; 865 L6*L27*C_OHD_Z; 717 L6*L27*TY_P_
1105 L6*L27*TX_Q_P; 858 L7*L7*L23; 19 L7*L7*BARY_PQ_yl; 468 L7*L7*LY_R
119 L7*L8*L24; 370 L7*L21*L23; 425 L7*L23*L24; 68 L7*L23*BARY_PQ_yu
318 L7*L23*TX_Q_P; 119 L7*L24*L31; 41 L8*L22*L27; 121 L17*L21*L23
70 L17*L23*L24; 67 L18*L21*L21; 81 L19*L21*L23; 139 L19*L21*L28
4 L21*L21*L23; 411 L21*L21*L27; 70 L21*L21*TY_P_; 187 L21*L22*L27
81 L21*L23*TY_P_; 158 L21*L26*BARY_PQ_xl; 316 L21*L27*L29; 86 L21*L27*BARY_PQ_yu
562 L21*L27*TX_P_; 237 L21*L27*LY_R; 4 L21*BARY_PQ_xl*TY_Q_P; 41 L22*L27*L31
86 L23*L24*BARY_PQ_yu; 187 L23*L24*TY_Q_P; 237 L23*L24*LY_R; 10 L24*DROP_OCR_Y*LY_R
10 L25*L27*L27; 284 L27*L27*L29; 41 L27*+OCF*BARY_PQ_yl; 327 L27*BARY_PQ_yl*TX_P_
327 L27*BARY_PQ_xu*TY_P_; 253 TX_Q_P*TX_Q_P*LY_R; 210 KLOW*L0; 38 KLOW*L16
149 KLOW*L19; 1148 KLOW*TY_P_; 60 KLOW*TX_Q_P; 28 KLOW*TY_Q_P
231 +OCD*L0; 325 +OCD*L16; 54 +OCD*BARY_PQ_yu; 108 -HFP*L21
625 +CDP*L0; 1272 +CDP*L16; 1272 +CDP*L17; 32 +CDP*L20
26 +CDP*L27; 374 +CDP*L28; 263 -DFP*L1; 227 -DFP*L4
77 -DFP*L6; 718 -DFP*L16; 718 -DFP*L17; 86 -DFP*L18
108 +HDP*L21; 80 +CDQ*L4; 51 +CDQ*L21; 64 -OHR*L21
710 -OHR*L23; 60 -OHR*BARY_PQ_yl; 139 -OHR*BARY_PQ_xu; 555 -OHR*TX_P_
530 +HFR*L7; 633 +HFR*L18; 397 +HFR*L20; 228 +HFR*L23
47 +HFR*L26; 190 +HFR*L29; 528 +HFR*C_OHD_Z; 633 +HFR*TY_P_
243 +OPQ*L0; 158 +OPQ*L6; 172 +OPQ*L22; 58 +OPQ*L28
49 +OPQ*BARY_PQ_yu; 197 +OPQ*TY_P_; 137 +OPQ*TX_Q_P; 357 -FQR*L0
1037 -FQR*L3; 70 -FQR*L17; 54 -FQR*L18; 237 -FQR*L26
27 -FQR*L28; 1087 -FQR*L29; 99 -FQR*BARY_PQ_yu; 173 -FQR*TY_Q_P
168 -DPQ*L19; 254 -DPQ*TY_P_; 627 -DPQ*DROP_OCR_Y; 228 +FPQ*L4
200 +FPQ*L23; 22 +FPQ*BARY_PQ_yl; 301 +FPQ*LY_R; 181 C_DFQ_P*L1
15 C_DFQ_P*L27; 62 TPY_Q_P*L7; 19 TPY_Q_P*BARY_PQ_yu; 134 Q_CDQF_P*L4
42 Q_CDQF_P*L23; 23 Q_CDQF_P*BARY_PQ_xl; 40 Q_CDQF_P*BARY_PQ_yu
```

Upper bound: `-69802638567/100000000000`.

### Row TTLp

```c1st-box
h 347/500 841/1000
c 33/40 1
d 93/1000 63/125
f 437/1000 693/1000
u 331/1000 779/1000
v 93/1000 469/1000
z 11/100 279/500
w 93/1000 131/200
p 149/200 1
q 589/1000 1
l 27/50 1
m 129/500 1
r 11/100 39/100
t 207/250 1
```

```c1st-geometry
H -FPQ
P OHFYR +OYR
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P COFQR +CQR
P DOFPR +DPR
P DOFQR +DQR
P YOHFZ +YFZ
P YOHZR -YZR
P YHFPR +YPR
P YHFQR +YQR
P ZHFPR +ZPR
P ZHFQR +ZQR
P POCDQ -PCQ
```

```c1st-sum
95 L0*L3*L4; 192 L0*L3*L19; 114 L0*L4*TX_P_Q; 26 L0*L6*TY_P_Q
179 L0*L17*LY_R; 68 L0*L24*LY_R; 43 L0*L29*BARY_QP_yu; 73 L0*BARY_QP_xl*TY_P_Q
7 L0*BARY_QP_xl*LX_R; 498 L1*L1*L7; 179 L1*L1*L17; 156 L1*L2*L6
207 L1*L6*L17; 148 L1*L8*L17; 148 L1*L9*L17; 191 L1*L16*L24
309 L1*L17*DROP_OCR_Y; 15 L1*L18*L24; 144 L1*L20*BARY_QP_yu; 132 L1*L24*TY_P_Q
342 L1*L24*TY_Q_; 79 L1*L27*TX_Q_; 93 L1*TX_P_Q*TX_Q_; 77 L2*L7*L17
9 L2*L17*L23; 89 L2*L21*BARY_QP_yu; 75 L2*L24*L27; 28 L2*L24*BARY_QP_yu
111 L2*L24*TY_Q_; 492 L2*L27*TX_P_Q; 293 L2*L27*LX_R; 21 L3*L4*BARY_QP_xl
320 L3*L4*LX_R; 83 L3*L17*BARY_QP_xl; 217 L3*L24*LY_R; 47 L3*BARY_QP_yu*TX_P_Q
340 L4*L6*TX_Q_; 26 L4*L16*L17; 103 L4*L16*LX_R; 43 L4*L18*TX_P_Q
64 L4*L19*C_OHD_Z; 4 L4*L24*BARY_QP_xu; 143 L4*BARY_QP_xl*TX_Q_; 58 L5*L17*-OHD
213 L5*L17*LX_R; 1 L6*L19*BARY_QP_yu; 329 L6*L22*L27; 228 L6*L23*L27
35 L6*L24*BARY_QP_yl; 269 L6*L24*LY_R; 88 L6*L25*L27; 121 L6*L27*L27
55 L6*L27*L29; 46 L6*L27*BARY_QP_xl; 331 L6*L27*TY_Q_; 5 L7*-OHD*BARY_QP_yu
23 L16*L24*L27; 5 L16*L24*L28; 16 L16*L27*L28; 45 L17*L17*BARY_QP_xl
32 L17*L17*BARY_QP_yl; 39 L17*L17*C_OCF_Y; 22 L17*L17*TY_P_Q; 43 L17*L19*L23
88 L17*L19*+OCF; 17 L17*L19*BARY_QP_xl; 7 L17*L19*BARY_QP_yu; 43 L17*L19*TY_Q_
4 L17*L19*LX_R; 92 L17*L20*L23; 179 L17*L20*BARY_QP_xl; 154 L17*L20*C_OCF_Y
76 L17*L22*L24; 110 L17*L22*TX_P_Q; 27 L17*L24*BARY_QP_yu; 224 L17*L27*L29
3 L17*L27*+OCF; 94 L17*L27*TY_P_Q; 35 L17*L27*LY_R; 45 L17*L29*BARY_QP_xl
45 L17*BARY_QP_xl*BARY_QP_xu; 108 L17*BARY_QP_yl*TX_Q_; 38 L17*BARY_QP_yu*LX_R; 109 L17*BARY_QP_yu*LY_R
220 L18*L20*L27; 35 L18*L24*L27; 14 L18*L24*BARY_QP_yu; 93 L18*L24*TX_Q_
28 L18*BARY_QP_xl*BARY_QP_xl; 7 L18*BARY_QP_xl*BARY_QP_yu; 27 L19*L20*BARY_QP_yu; 43 L19*L24*L28
13 L22*BARY_QP_xl*BARY_QP_xl; 53 L23*BARY_QP_xl*TX_Q_; 23 L24*L27*BARY_QP_xl; 6 L24*BARY_QP_xl*TY_P_Q
93 L24*TX_Q_*LY_R; 68 L27*-OHD*C_OCF_Y; 13 L27*BARY_QP_xl*TY_P_Q; 54 L27*BARY_QP_yu*TX_Q_
158 L27*TY_P_Q*TX_Q_; 36 -OHD*BARY_QP_xl*BARY_QP_yu; 22 +OCF*BARY_QP_xl*BARY_QP_yu; 14 BARY_QP_xl*BARY_QP_yu*DROP_OCR_Y
13 BARY_QP_yu*TX_P_Q*TX_Q_; 52 KLOW*L18; 200 KLOW*L25; 68 KLOW*L26
31 KLOW*BARY_QP_yu; 296 KLOW*TY_Q_; 276 KLOW*LX_R; 28 +OCD*L16
78 +OCD*L20; 75 +CDP*L22; 159 +CDP*-OHD; 159 +CDP*C_OHD_Z
20 +CDP*TX_P_Q; 284 +CDP*TX_Q_; 237 +CDP*LX_R; 75 +CDQ*L19
276 -DFQ*L2; 583 -DFQ*L20; 10 -DFQ*L21; 41 -DFQ*LX_R
291 -DFQ*LY_R; 79 +HDQ*L27; 137 -OHR*L25; 68 -OHR*L28
42 -OHR*TX_P_Q; 235 +HFR*L16; 48 +HFR*L22; 120 +HFR*L29
59 +HFR*BARY_QP_xu; 112 +HFR*TY_P_Q; 356 +HFR*TX_Q_; 294 +HFR*TY_Q_
311 +HFR*LX_R; 63 +HDR*L17; 141 +OPQ*L1; 27 +OPQ*L7
100 +OPQ*L20; 758 +OPQ*TX_Q_; 79 -FPR*L0; 265 -FPR*L3
39 -FPR*L7; 14 -FPR*L19; 61 -FPR*L20; 35 -FPR*L26
58 -FPR*TY_Q_; 154 -FQR*L17; 413 -FPQ*L20; 284 -FPQ*+OCF
33 -FPQ*TX_P_Q; 180 -FPQ*LX_R; 431 -FPQ*LY_R; 93 +HQR*L17
75 +CPQ*L4; 132 TPX_P_Q*L17; 49 TPY_P_Q*L2; 110 TPY_P_Q*L17
68 Q_ODRH_Z*L27; 16 Q_CDPF_Q*L6; 156 Q_DPFR_Q*L27; 306 LEFTSUP
```

Upper bound: `-156338043/31250000`.


## 6. Assembly

The preceding analytic companion excludes every convex top-pair hull.
The four rows above exhaust both orientations of the remaining triangular
hull in each of the two lower-label models. Thus the entire one-side,
two-top placement with two lower points is excluded, including either
occupied side and all square-side placements.

Together with C1_TWO_LOWER_THREE_CAPS.md, this closes two complete
exterior count rows with k=2. It does not close the remaining k<=2 C1
counts or the full C1 parent.
