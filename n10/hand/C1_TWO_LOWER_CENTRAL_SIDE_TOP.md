# Two lower points, a central point, a side point, and a top point

Use the C1 anchors O=(0,0), H=(0,h), C=(c,0), D=(1,d),
F=(f,1), with d≤h and f≤c. Every unsigned actual doubled triangle
area is at least s=93/1000. This note excludes the complete count
(k,j,r,t,l)=(2,1,1,1,0) and its transpose (2,1,0,1,1). Its six
fixed trees exhaust both side choices after orienting the lower fan.

## 1. A uniform box for one side cap and one top cap

Put ρ=347/500 and b=177/200. The two lower points imply hc>ρ by the
two-interior-point theorem. The lower pair is labeled Y=(u,v), Z=(z,w)
as in C1_TWO_LOWER_TOP_GEOMETRY.md, Section 1: Y has smaller O-barycentric
coordinate and a single transposition puts Z inside OHY. All lower-fan
inequalities (2) of that note hold. This normalization can exchange the
side caps, so both side choices are retained throughout this proof.

Suppose first the right cap is occupied. Its support restriction is

    dc(1−c)≥s.                                            (1)

Since d≤1−s, c≥ρ>1/2, and (1−s)b(1−b)<s, (1) implies c<b.
Thus h>ρ/b. Since c(1−c) decreases for c≥ρ,

    d≥d0=s/[ρ(1−ρ)]=7750/17697.

A top point requires (1−d)(1−f)≥s. Hence

    d≤d1=1−s/(1−s)=814/907,
    f≤f1=1−s/(1−d0).

The complete anchor box is therefore

    h∈[ρ/b,1], c∈[ρ,b], d∈[d0,d1], f∈[s,f1].             (2)

For the left-cap alternative, transpose (2): exchange h,c and d,f.
No additional symmetry assumption is made.

Write Hmax,Cmax for the two anchor upper endpoints. The lower-fan
inequalities give the lower-point box

    u∈[3s/Hmax, Cmax−2s/Hmax],
    v∈[s/Cmax, Hmax−4s/Cmax],
    z∈[s/Hmax, Cmax−4s/Hmax],
    w∈[s/Cmax, Hmax−2s/Cmax].                              (3)

For a right point V=(x,y), its cap clearance and cy≥s give

    x≥c+s/(dc)≥ρ+s/(d1ρ),
    s/Cmax≤y≤d1−s/(1−ρ).                                 (4)

For the second inequality in the x bound, first replace d by d1.
Then c+s/(d1c) increases for c≥ρ, since d1ρ²>s.
The upper bound for y follows from x≤1 in the cap area formula.
For a left point, transpose (4). A central point has coordinates in
[s/Hmax,1−s]×[s/Cmax,1−s], by the actual OH/OC clearances and the
weighted central-edge identities in the common geometry note.

A top point T=(x,y) satisfies

    x≥f+s/(1−d), y≥d+s/(1−f).

For a right side point use x≥s+s/(1−d0), y≥d0+s/(1−s);
transpose these endpoints in the left side case. Both upper bounds
are one. Equations (2)–(4) and these central/top bounds form the
complete coarse box, without any numerical optimization.

## 2. Six exhaustive upper orders and fixed signs

Order the three upper points P=(p,q), Q=(l,m), R=(r,t) by their
strict rays from O. A right point lies below OD, whereas a top point
lies above OD; a left point lies above OF, whereas a top point lies
below OF. Thus the exact six possible region words are

    URT, RUT, RTU, UTL, TUL, TLU.                          (5)

Here U is central, R is the right cap, T the top cap and L the left
cap. This list incorporates the single transposition already used to
orient the lower fan.

The initial common signs are

```text
-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF
+OYZ -HYZ +OPQ +OPR +OQR
```

For each lower point Y or Z, the edge signs are

| Edge | OH | OC | HC | HD | HF | CD | CF | DF |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Lower | − | + | − | − | − | + | + | + |

Every upper point has OH<0, OC>0, HC>0. Its remaining signs are

| Region | HF | CD | DF | OD | OF | HD | CF |
|---|---:|---:|---:|---:|---:|---:|---:|
| U | − | + | + | free | free | free | free |
| R | − | − | + | − | − | − | − |
| T | − | + | − | + | − | + | − |
| L | + | + | + | + | + | + | + |

These are direct oriented-edge tests for the central quadrilateral
and the three caps. For a lower V and any upper X, HVX>0 and CVX<0.
For cap points, FVX is positive in R/T and negative in L; DVX is
positive in R and negative in T/L. Evaluate the relevant affine
functional at O,H,C to prove these cross signs.

There is one more fixed sign for the side/top pair. If S=(a,b) is
right and T=(x,y) is top, then

    −[DST]=(1−a)(y−d)+(d−b)(1−x)>0.

If S=(a,b) is left, the corresponding identity is

    −[FTS]=(1−b)(x−f)+(f−a)(1−y)>0.

The expressions are nonnegative by their cap positions and square
bounds, and nonzero by the positive actual triangle minimum.

## 3. Reused finite rules and additional endpoint rules

The P (five-point identity), M (distributed mesh), V (barycentric
interpolation) and C (triangle capacity) trace rules, the triangle and
quadrilateral costs, and the monotone static-area certificates are
exactly those proved in C1_TWO_LOWER_TOP_GEOMETRY.md, Sections 3–5.
The present proof uses its own coarse box and initial signs from
Sections 1–2 above. It does not assume the two-top signs ODZ>0 or OFY<0.

The T, S, X, Y, O and F interval rules also retain their meanings from
the common note. The present top-container cost is only s. The extra
rule `E OD I i lower b` uses three listed actual free points below OD.
Together with O,C,D these are six actual points in the endpoint
container O,D,(1,0), of doubled area d. Hence d≥.823 by the endpoint-six
theorem. If the right cap is occupied and its point is among the listed three,
the actual hull is nontriangular: O,C,D remain extreme, while that right
point is outside OCD. The stronger nontriangular endpoint-six bound gives
d>9s. If the occupied right point is omitted, it is a fourth free point
below OD, and the endpoint-seven theorem already excludes the configuration.
Thus the stronger cost is valid in either alternative. The `E OF` version is its
transpose, with f and the left cap. The witness I lists all three points
and each required ray sign is already proved.

A terminal `endpoint7 OD I` lists four free points below OD. Together
with O,C,D these are seven actual points in a container of doubled area
d≤1 with actual endpoints O,D, contrary to THREE_CORNERS.md. The OF
version uses O,H,F. This remains valid on the square sides.

## 4. Complete factor catalogue

The box factors L0,...,L27 and the nine extra affine factors L28,...,L36
are exactly the definitions (6) in the common geometry note. The common
factors KLOW,FAN,CENT,QUADP,QUADQ,QUADR retain their definitions. Use

    TOPCOUNT=(1−d)(1−f)−s,
    QCENT=1−(h−d)(c−f)−.449.

An occupied right cap also gives RIGHTSUP=dc(1−c)−s, and an occupied
left cap gives LEFTSUP=fh(1−h)−s. For a cap point V=(x,y), the factors

    RX_V=x−c−s, RY_V=d−y−s       (right),
    LX_V=f−x−s, LY_V=y−h−s       (left)

follow by dropping the nonnegative terms and the coefficients at most
one from its actual cap triangle inequality.

The factors C_,Q_,DROP_,SP_,M_,TX_,TY_,TPX_,TPY_, and signed actual
triangle factors have exactly the definitions and geometric premises
in the common note. Finally `EP6_OD_I` is d minus its endpoint-six cost
from Section 3, and `EP6_OF_I` is f minus that cost. Every containment,
convexity, diagonal separation and ray-sign premise must already follow
from the initial signs and the printed leaf trace.

A sum is a positive-integer combination of products of these proved
nonnegative factors. The exact shifted-monomial estimate in Section 6
of the common note bounds it above by the printed negative rational,
a contradiction. The complete six-root tree and all identities are
required for the count exclusion; partial root closures alone do not
establish this theorem. All six trees are printed in full here.

## 5. A top point excludes a shared central endpoint pair

The following short terminal is useful in these six trees. Whenever a
C1 top point exists, the top container gives (1−d)(1−f)≥s. The actual
anchor clearances also imply

    f−df²−s = f([HDF]−s)+(1−f)(−[OHF]−s)≥0.

Here −[OHF]=hf. If d≥897/1000, the top container forces f≤10/103.
On that interval f−(897/1000)f² is increasing, so

    f−df²−s ≤10/103−(897/1000)(10/103)²−s
             =−46337/10609000<0,

which is impossible. Hence d<897/1000; reflection gives the same bound
for f. All coefficients in the displayed anchor combination are
nonnegative, including side-contact cases.

Let X be the actual right-cap point. The support triangle for the
actual quadrilateral O,C,X,D has base O,D and virtual bottom intercept
b_X=(d x_X−y_X)/(d−y_X)≤1. Its doubled area is d b_X≤d.
If two actual points lie in both OCD and ODX, they are the central pair
of that support normalization. The shared-central endpoint theorem
TYPE_II_R4_CENTRAL.md, in the universal form proved in
QUADRILATERAL_SUPPORT.md, requires support area at least

    (299/31)s=897/1000,

contrary to the strict bound for d. The reflected statement uses the
actual left point X and the pair of triangles OFH,OFX.
A terminal `central_endpoint_top OD X I` or its OF version prints the
side point and the two actual shared-central occupants. Every one of
the six edge tests is already known. This is a geometric contradiction,
not an extra interval assumption or a numerical test.

## 6. Complete count assembly

The six roots in (5) have 205 binary splits and 211 leaves: 193
cubic contradictions and 18 geometric contradictions. The cubics
contain 51,388 printed positive-integer terms; the complete catalogue
contains 5,961 geometric deductions and 905 justified interval updates.
Every split is the sign of an actual determinant, which cannot be zero
under the assumed positive minimum. Both children are present at every
split, so the fixed trees exhaust the normalized placement.

The coordinate reflection used to orient the lower pair is already
accounted for by retaining both right and left cap words. Thus the six
roots exclude the complete original count and its transpose; no
additional order of contact coordinates is assumed.

The companion
[check_c1_two_lower_central_side_top.py](check_c1_two_lower_central_side_top.py)
reads the tables below, replays every geometric deduction and interval
update, reconstructs each factor from its definition, and expands each
printed sum using exact rational arithmetic. No discovery search or
floating-point feasibility result is a premise of this exclusion.

## 7. Fixed trees and all rational identities

Counts: `193 18 51388 5961 905`.

```c1top-upper
RTU CFY 1 881332897/1467182500 c+ f+ u- v-
RTU CZP -1 16331508917/27291630000 z- p+ w+ c- q+
RTU OCP 1 3239749/6167600 c+ q+
RTU OFY -1 101661/147500 f- u+ v-
RUT CFY 1 881332897/1467182500 c+ f+ u- v-
RUT CYR -1 39687/59000 u- r+ v+ t+ c+
RUT CZP -1 16331508917/27291630000 z- p+ w+ c- q+
RUT OCD 1 72039/90700 c+ d+
RUT OCP 1 3239749/6167600 c+ q+
RUT OCQ 1 160539/200000 c+ m+
RUT OFY -1 101661/147500 f- u+ v-
RUT OYR 1 1971423483/2934365000 u+ v- r- t+
TLU OHQ -1 3239749/6167600 h+ l+
TUL CFY 1 36132509/53513000 c+ f+ u- v-
TUL ODZ 1 101661/147500 d- z- w+
TUL OHF -1 72039/90700 h+ f+
TUL OHR -1 3239749/6167600 h+ r+
URT OCQ 1 3239749/6167600 c+ m+
UTL CFY 1 36132509/53513000 c+ f+ u- v-
UTL ODZ 1 101661/147500 d- z- w+
UTL OHR -1 3239749/6167600 h+ r+
```

```c1top-tree
RUT CYZ
RUTm OYP
RUTmm OYQ
RUTmmp OZQ
RUTmmpm OZR
RUTmmpmm HPQ
RUTmmpmmm CQR
RUTmmpmmmm CFQ
RUTmmpmmmmp ODY
RUTmmpmmmmpm OFZ
RUTmmpmmmmpmp ODQ
RUTmmpmmmmpmpp DZQ
RUTmmpmmmmpmppp FYQ
RUTmmpmmmmpmpppp YQR
RUTmmpmmp FPQ
RUTmmpmmpm CQR
RUTmmpmmpmm HDQ
RUTmmpmmpmmm CFQ
RUTmmpmmpmmmm ODY
RUTmmpmmpmmmmm OFZ
RUTmmpmmpmmmp ODY
RUTmmpmmpmmmpm OFZ
RUTmmpmmpmmmpmp ODQ
RUTmmpmmpmmmpmpp DZQ
RUTmmpmmpp CQR
RUTmmpmmppm HDQ
RUTmmpmmppmm ODY
RUTmmpmmppmmm OFZ
RUTmmpmmppmmmp ODQ
RUTmmpmmppmmmpp DZQ
RUTmmpmmppmp ODY
RUTmmpmmppp HDQ
RUTmmpmmpppm PQR
RUTp OYP
RUTpm OYQ
RUTpmm OYR
RUTpmmm HPQ
RUTpmmmp FPQ
RUTpmmmpm CQR
RUTpmmmpp CQR
RUTpmmmppm HDQ
RUTpmmmppmm YZP
RUTpmmmppmmp YZQ
RUTpmmp OZR
RUTpmmpm HPQ
RUTpmmpmp FPQ
RUTpmmpmpp CQR
RUTpmmpmppp HDQ
RUTpmmpmpppm YZP
RUTpmmpmpppmp YZQ
RUTpmp OZQ
RUTpmpm OZR
RUTpmpmm HPQ
RUTpmpmmp FPQ
RUTpmpmmpm CQR
RUTpmpmmpmm HDQ
RUTpmpmmpmmm CFQ
RUTpmpmmpmmmm YZP
RUTpmpmmpp CQR
RUTpmpmmppm HDQ
RUTpmpmmppmm YZP
RUTpmpmmppmmp ODY
RUTpmpmmppp HDQ
RUTpmpmmpppm YZP
RTU CYZ
RTUm OYP
RTUmm OYQ
RTUmmp OZQ
RTUmmpm OZR
RTUmmpmm HPR
RTUmmpmmm CFR
RTUmmpmmmp ODY
RTUmmpmmmpm OFZ
RTUmmpmmmpmp OFR
RTUmmpmmmpmpm DZR
RTUmmpmmp FPR
RTUmmpmmpm HQR
RTUmmpmmpmm HDR
RTUmmpmmpmmm CFR
RTUmmpmmpmmmp ODY
RTUmmpmmpmmmpm OFZ
RTUmmpmmpmmmpmp OFR
RTUmmpmmpmmmpmpm DZR
RTUmmpmmpmmmpmpmm FYR
RTUmmpmmpp HQR
RTUmmpmmppm HDR
RTUmmpmmppmm ODY
RTUmmpmmppmmm OFZ
RTUp OYP
RTUpm OYQ
RTUpmp OZQ
RTUpmpm OZR
RTUpmpmm HPR
RTUpmpmmp FPR
RTUpmpmmpm HQR
RTUpmpmmpmm HDR
RTUpmpmmpmmm CFR
RTUpmpmmpmmmp YZP
RTUpmpmmpmmmpp ODY
RTUpmpmmpp HQR
RTUpmpmmppm HDR
RTUpmpmmppmm YZP
RTUpmpmmppmmp ODY
RTUpmpmp HPR
RTUpmpmpp FPR
UTL CYZ
UTLm OYP
UTLmp OZP
UTLmpm OZQ
UTLmpmm OZR
UTLmpmmp CPQ
UTLmpmmpm CPR
UTLmpmmpmm HDP
UTLmpmmpmmm ODY
UTLmpmmpmmmm OFZ
UTLmpmmpmmmmp ODP
UTLmpmmpmmmmpp DZP
UTLmpmmpmp DPR
UTLmpmmpmpm HDP
UTLmpmmpmpmm CFP
UTLmpmmpmpmmp ODY
UTLmpmmpmpmmpm OFZ
UTLmpmmpmpmmpmp ODP
UTLmpmmpmpmmpmpp DZP
UTLmpmmpmpmmpmppm FYP
UTLmpmmpmpp CFP
UTLmpmmpmppp ODY
UTLp OYP
UTLpm OYQ
UTLpmm OYR
UTLpmmp OZR
UTLpmp OZQ
UTLpmpm OZR
UTLpmpmp CPQ
UTLpmpmpm CPR
UTLpmpmpmp DPR
UTLpp OZP
UTLppm OZQ
UTLppmm OZR
UTLppmmp CPQ
UTLppmmpm CPR
UTLppmmpmp DPR
UTLppmmpmpm HDP
UTLppmmpmpmm CFP
UTLppmmpmpmmp ODY
UTLppmmpmpmmpm OFZ
UTLppmmpmpp CFP
UTLppmmpmppp ODY
UTLppmmpmpppp OFZ
TUL CYZ
TULm OYP
TULmp OZP
TULmpm OZQ
TULmpmm OZR
TULmpmmp HPQ
TULmpmmpm CQR
TULmpmmpmm HDQ
TULmpmmpmmm ODY
TULmpmmpmmmm OFZ
TULmpmmpmmmmp OFQ
TULmpmmpmmmmpm DZQ
TULmpmmpmmmmpmm FYQ
TULmpmmpmmmmpmmm ZPQ
TULmpmmpmp DQR
TULmpmmpmpm HDQ
TULmpmmpmpmm CFQ
TULmpmmpmpmmp ODY
TULmpmmpmpmmpm OFZ
TULmpmmpmpmmpmp OFQ
TULmpmmpmpmmpmpm DZQ
TULmpmmpmpmmpmpmm FYQ
TULmpmmpmpmp CFQ
TULmpmmpmpmpp ODY
TULmpmmpmpp CFQ
TULmpmmpmppp ODY
TULmpmmpmpppm OFZ
TULmpmmpmpppmp OFQ
TULmpmmpmpppmpm FYQ
TULmpmmpp CQR
TULmpmmppp DQR
TULmpmmpppp CFQ
TULmpmmppppp PQR
TULp OYP
TULpm OYQ
TULpmp OZQ
TULpmpm OZR
TULpmpmp HPQ
TULpp OZP
TULppm OZQ
TULppmm OZR
TULppmmp HPQ
TULppmmpm CQR
TULppmmpmp DQR
TULppmmpmpm HDQ
TULppmmpmpmm CFQ
TULppmmpmpmmp ODY
TULppmmpmpp CFQ
TULppmmpmppp ODY
TULppmmpmpppp OFZ
TULppmmpmppppp OFQ
TULppmmpmpppppm DYZ
TULppmmpp CQR
TULppmmppp DQR
TULppmmpppp CFQ
TULppmp HPQ
```

### Leaf URT

Assumptions: ``.

```c1top-geometry
P OHDPQ -ODP
P OHFPQ -OFP
P HODQR +HQR
P CODPQ -CPQ
P CODQR +CQR
P DOHCP +DHP
P DOCPQ +DPQ
P DOCPR -DPR
P FODPR +FPR
P FODQR +FQR
P YHDQR +YQR
P ZHDQR +ZQR
P POHCQ -PHQ
P POHFR -PHR
P PODFQ -PFQ
P PODQR +PQR
C OCQ P Y -QOY 3239749/6167600
C OCQ P Z -QOZ 3239749/6167600
P OHYPQ -OYP
P OHZPQ -OZP
P POHDY +PDY
P POHDZ +PDZ
P POHFY +PFY
P POHFZ +PFZ
P POHYQ -PYQ
P POHYR -PYR
P POHZQ -PZQ
P POHZR -PZR
```

```c1top-bounds
T OHP YZ 8 lower 347/500
T OCQ P 11 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 347/500 907/1000
q 21/200 907/1000
l 843/1000 1
m 63/200 297/500
r 129/500 1
t 27/50 1
```

```c1top-sum
4 L0*L10*L21; 2 L0*L17*TY_R_; 4 L1*L2*L6; 4 L1*L6*L21
1 L1*L6*L25; 29 L1*L6*L26; 4 L1*L6*TX_R_; 12 L1*L16*L22
3 L1*L16*+OCF; 7 L1*L16*DROP_OCQ_P; 18 L1*L16*RY_Q; 2 L1*L17*L27
14 L1*L18*RX_Q; 3 L1*L21*L24; 6 L1*L25*L25; 54 L2*L2*RY_Q
1 L2*L5*L25; 3 L2*L21*L32; 1 L2*L25*L27; 6 L2*RY_Q*RY_Q
10 L2*RY_Q*TY_R_; 11 L3*L4*L28; 32 L3*L18*DROP_OCQ_P; 1 L3*L18*RX_Q
12 L3*L22*DROP_OCQ_P; 7 L3*L22*TX_R_; 11 L3*L27*DROP_OCQ_P; 15 L4*L5*L21
10 L4*L6*L21; 2 L4*L18*L21; 7 L4*L21*L24; 43 L4*L21*L26
5 L4*L21*DROP_OHQ_YZ; 8 L5*L16*L25; 3 L5*L18*L25; 17 L5*L21*L22
17 L5*L25*L28; 11 L5*L27*RX_Q; 21 L6*L10*TY_R_; 13 L6*L16*RY_Q
1 L6*L18*L25; 13 L6*L18*RX_Q; 2 L6*L21*L22; 1 L6*L23*L25
6 L6*L25*TY_R_; 21 L6*L32*TY_R_; 20 L7*L27*L28; 15 L7*L27*DROP_OCQ_P
14 L8*L21*L22; 14 L9*L21*DROP_OCQ_P; 7 L16*L21*L22; 3 L16*L21*L27
7 L16*L21*L28; 7 L16*L21*RY_Q; 9 L16*L22*TY_R_; 3 L18*L22*L25
5 L18*L25*RX_Q; 31 L18*L27*RX_Q; 20 L18*RX_Q*TY_R_; 2 L19*L21*L24
4 L19*L21*L26; 24 L21*L27*RY_Q; 1 L21*L32*+OCF; 4 L21*L35*-OHD
29 L21*+OCF*+OCF; 72 L21*+OCF*DROP_OCQ_P; 2 L22*L22*L25; 2 L22*L28*TX_R_
26 L22*RX_Q*TY_R_; 1 L25*+OCF*TY_R_; 2 L28*L29*RX_Q; 2 L28*RX_Q*RX_Q
11 KLOW*RY_Q; 8 TOPCOUNT*L22; 1 TOPCOUNT*L25; 20 +OCD*L21
7 +HDF*L25; 1 +HCP*L6; 4 +HCP*L25; 3 +HCP*DROP_OCQ_P
8 +CDP*L23; 2 -HFQ*L21; 3 -CDQ*L24; 6 -CDQ*L26
6 -CDQ*L29; 48 -CDQ*+OCF; 47 -CDQ*DROP_OHQ_YZ; 26 -CDQ*DROP_OCQ_P
13 +DFQ*L27; 5 -HFR*L4; 20 -HFR*L16; 6 -HFR*L25
55 -HFR*L26; 55 -HFR*L27; 4 -HFR*L29; 2 -HFR*DROP_OCQ_P
7 +CDR*L5; 4 +CDR*L16; 9 +CDR*L27; 4 -DFR*L6
7 -DFR*-OHD; 10 -DFR*DROP_OHQ_YZ; 4 -DFR*RX_Q; 12 +HDR*L6
13 -CFR*L21; 27 +OPQ*L21; 8 +OPQ*+OCF; 2 +OPQ*DROP_OCQ_P
96 +OPQ*RX_Q; 3 +OPQ*RY_Q; 1 +OPQ*TY_R_; 15 -DQR*L1
3 -DQR*L18; 9 -DQR*L26; 15 -DQR*L28; 2 -DQR*+OCF
2 -DQR*DROP_OCQ_P; 11 -CPQ*L3; 69 -CPQ*L20; 17 -CPQ*L24
64 -CPQ*L26; 53 -CPQ*L27; 11 -CPQ*L29; 14 -CPQ*-OHD
21 -CPQ*RY_Q; 9 +CQR*TY_R_; 7 +DPQ*L2; 20 +DPQ*L23
17 +DPQ*L24; 3 +HPR*L21; 16 +PQR*L2; 1 +PQR*L6
2 C_OHP_YZ*L19; 4 C_OHP_YZ*L24; 2 C_OHP_YZ*L29; 1 C_OHP_YZ*+OCF
31 C_OHP_YZ*DROP_OCQ_P; 20 C_OHP_YZ*RY_Q; 20 C_OHP_YZ*TX_R_; 4 C_OHP_YZ*TY_R_
1 C_OCQ_P*L5; 4 TPX_R_*L7; 13 TPX_R_*L17; 5 TPX_R_*L28
10 TPX_R_*RY_Q; 5 TPY_R_*L28; 4 SP_OCQH_YP_CH-1*L21; 34 Q_OCQD_P*L21
6 Q_HCQD_P*L21
```

Upper bound: `-1199969/7812500`.

### Leaf RUTmmm

Assumptions: `-CYZ -OYP -OYQ`.

```c1top-geometry
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOCZP -YZP
P YOCZQ -YZQ
P YHCDZ +YDZ
P YHCFZ +YFZ
P YHCZR -YZR
P YHDPR +YPR
P ZHDPR +ZPR
P QOHFY +QFY
P QOHFZ +QFZ
P QOHFR -QHR
P QOHYR -QYR
P QOHZR -QZR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ YZ 10 lower 347/500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 129/500 1
t 27/50 1
```

```c1top-sum
56 L0*L17*L19; 48 L0*L17*L29; 10 L0*L20*TY_R_; 183 L1*L1*L6
93 L1*L1*L14; 135 L1*L1*L20; 125 L1*L2*L11; 155 L1*L2*L14
17 L1*L2*L28; 39 L1*L2*L32; 42 L1*L2*TY_R_; 19 L1*L3*L30
137 L1*L4*L6; 34 L1*L5*L8; 199 L1*L5*L30; 36 L1*L6*L8
131 L1*L6*L25; 89 L1*L6*L27; 115 L1*L6*TX_R_; 1 L1*L7*L19
974 L1*L8*L14; 229 L1*L8*L18; 221 L1*L8*L22; 114 L1*L8*L33
224 L1*L10*L20; 291 L1*L14*L14; 36 L1*L17*+OCF; 56 L1*L17*RY_P
10 L1*L20*L26; 334 L1*L20*L30; 1 L1*L20*RY_P; 131 L1*L25*L25
1 L1*L25*TY_R_; 36 L1*L29*L30; 199 L1*L30*RY_P; 75 L1*+OCF*TY_R_
732 L2*L3*L18; 99 L2*L8*L17; 187 L2*L10*L17; 626 L2*L15*L20
124 L2*L17*L17; 62 L2*L17*L22; 79 L2*L17*L24; 38 L2*L17*TY_R_
6 L2*L22*TY_R_; 160 L3*L3*L11; 716 L3*L3*L14; 477 L3*L4*L17
174 L3*L5*L8; 495 L3*L5*L18; 383 L3*L8*L14; 165 L3*L8*L18
27 L3*L11*L18; 161 L3*L11*L20; 157 L3*L11*RX_P; 59 L3*L14*L18
99 L3*L17*L30; 733 L3*L18*L18; 494 L3*L18*L20; 87 L3*L18*L23
113 L3*L18*L27; 63 L3*L18*L28; 321 L3*L18*L30; 80 L3*L18*TY_R_
25 L3*L23*L27; 84 L3*L27*L30; 21 L3*L28*L32; 105 L3*L34*L35
21 L4*L6*TY_R_; 174 L4*L8*L17; 25 L4*L11*L12; 26 L4*L11*L17
2 L4*L17*L17; 35 L4*L17*L23; 122 L4*L17*L28; 635 L4*L17*+OCF
18 L4*L27*TX_R_; 34 L4*L31*L34; 140 L5*L5*L25; 9 L5*L8*L14
9 L5*L12*+OCF; 181 L5*L17*L27; 5 L5*L17*L32; 240 L5*L18*L20
193 L5*L18*L25; 22 L5*L25*TY_R_; 117 L6*L6*TY_R_; 17 L6*L17*L18
17 L6*L17*RY_P; 14 L6*L18*L25; 8 L6*L21*TY_R_; 131 L6*L25*TY_R_
139 L7*L7*L27; 2 L7*L18*L20; 169 L8*L12*L23; 178 L8*L15*L17
250 L8*L17*L22; 124 L8*L17*DROP_OHP_YZ; 39 L8*L21*L22; 2 L9*L22*TY_R_
39 L10*L21*L21; 36 L11*L12*L18; 165 L11*L12*L20; 1197 L12*L14*L32
84 L12*L17*L27; 99 L12*L19*L30; 119 L12*L22*L32; 524 L12*L22*L35
26 L12*L22*RX_P; 88 L12*L27*L30; 74 L12*L30*-OHD; 88 L12*L30*TY_R_
80 L12*L32*DROP_OHP_YZ; 165 L12*RX_P*RY_P; 112 L14*L16*L17; 97 L14*L17*L22
37 L15*L15*L31; 56 L15*L15*L36; 277 L15*L17*RX_P; 36 L15*L18*L31
194 L15*L20*L35; 93 L15*L34*L34; 105 L15*L34*L36; 7 L15*L36*L36
124 L16*L17*L31; 157 L17*L17*L20; 234 L17*L17*L23; 473 L17*L18*L18
702 L17*L18*L20; 244 L17*L18*L22; 9 L17*L18*L36; 473 L17*L18*RY_P
16 L17*L19*L23; 38 L17*L20*L26; 157 L17*L20*+OCF; 157 L17*L20*RX_P
936 L17*L20*RY_P; 33 L17*L22*L23; 12 L17*L22*L27; 142 L17*L22*L33
45 L17*L23*TX_R_; 14 L17*L24*L27; 79 L17*L25*+OCF; 5 L17*L26*L27
14 L17*L26*TX_R_; 84 L17*L27*L31; 99 L17*L33*L36; 9 L17*L36*RY_P
33 L18*L20*L23; 73 L18*L20*L25; 12 L18*L20*L27; 168 L18*L20*L30
5 L18*L25*TY_R_; 100 L20*L34*L35; 65 L20*RX_P*TY_R_; 3 L20*TY_R_*TY_R_
9 L21*L21*L27; 3 L21*L27*L27; 2 L23*L27*L30; 84 L30*RX_P*TY_R_
67 L31*L34*L34; 105 FAN*L1; 162 -OHF*L1; 21 +HDF*L1
229 -HYZ*L2; 187 -HYZ*L13; 1302 -HYZ*L14; 30 -HYZ*L18
233 -HYZ*L20; 546 -HYZ*L22; 475 -HYZ*L26; 475 -HYZ*L27
173 -HYZ*-OHD; 68 -OHZ*L3; 80 -OHZ*L17; 77 -OHZ*L29
173 -OHZ*L32; 290 -OHZ*L35; 113 -HFZ*L12; 234 +OCP*L17
178 +OCP*L20; 56 -CDP*L4; 21 -CDP*L11; 52 -CDP*L14
473 -CDP*L18; 974 -CDP*L20; 341 -CDP*L23; 20 -CDP*L24
1 -CDP*L27; 257 -CDP*L30; 61 -CDP*L34; 9 +HCQ*L1
11 +HCQ*L17; 202 +HCQ*L30; 11 -HFQ*L17; 1 -HFQ*L18
11 +CDQ*L1; 25 +CDQ*L10; 490 +CDQ*L19; 33 +CDQ*L22
1 +CDQ*L27; 56 +CDQ*RY_P; 399 -CYQ*L2; 208 -CYQ*L17
296 -HFR*L4; 246 -HFR*L25; 269 -HFR*L27; 115 -HFR*TX_R_
269 -HFR*TY_R_; 117 +CDR*L1; 14 +CDR*L18; 110 -DFR*L4
117 -DFR*L6; 8 -DFR*L21; 116 -DFR*L26; 116 -DFR*L27
90 -DFR*L28; 2 +OPQ*L1; 22 +OPQ*L8; 60 +OPQ*L12
173 -DPR*L5; 14 -DPR*L6; 45 -DPR*L12; 8 -DPR*L20
6 -DPR*L23; 45 -DPR*L33; 5 -DPR*TY_R_; 716 -CYZ*L3
185 -CYZ*L14; 1175 -CYZ*L17; 32 -CYZ*L18; 626 -CYZ*L20
97 -CYZ*L22; 290 -CYZ*L34; 1353 -CYZ*DROP_OHP_YZ; 25 -CYZ*RY_P
350 -OYQ*L4; 477 -OYQ*L13; 144 -OYQ*L15; 208 -OYQ*L16
39 -OYQ*L21; 324 -OYQ*L28; 66 -OYQ*L30; 66 -OYQ*L31
150 -OYQ*L36; 732 +CPQ*L2; 313 +CPQ*L4; 97 +CPQ*L14
234 +CPQ*L16; 260 +CPQ*L18; 33 +CPQ*L23; 65 +CPQ*L25
440 +CPQ*L26; 458 +CPQ*L27; 2 +CPQ*L28; 228 +CPQ*L30
74 -DPQ*L2; 2 -DPQ*L6; 65 -DQR*L3; 6 -DQR*L5
20 -DQR*L16; 6 -DQR*L18; 99 -YZP*L12; 88 -DYZ*L12
125 C_OHQ_YZ*L1; 165 C_OZP_Y*L17; 36 Q_OQFH_YZ*L17; 2 Q_OPDF_Q*L17
```

Upper bound: `-104573207/200000000`.

### Leaf RUTmmpmmmmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ -CQR -CFQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPR +ZPR
P POHFQ +PFQ
P POHQR -PQR
P QOHZR -QZR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHP YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
36 L0*L1*L12; 2 L0*L3*L19; 1 L0*L3*L30; 24 L0*L5*L12
2 L0*L6*TY_R_; 1 L0*L8*L27; 25 L0*L8*RX_P; 32 L0*L11*L12
8 L0*L11*L17; 6 L0*L12*L13; 1 L0*L12*L21; 36 L0*L12*RY_P
2 L0*L17*L34; 186 L0*L17*DROP_OHP_YZQ; 5 L0*L20*L27; 9 L0*L28*DROP_OHP_YZQ
39 L1*L1*L6; 1 L1*L1*L14; 5 L1*L1*L20; 22 L1*L2*L2
76 L1*L2*L25; 51 L1*L6*L6; 6 L1*L6*L12; 39 L1*L6*L14
29 L1*L6*L18; 158 L1*L6*L25; 18 L1*L6*+OCF; 1 L1*L8*L9
7 L1*L8*L18; 34 L1*L12*L17; 3 L1*L12*L31; 1 L1*L14*L18
1 L1*L14*RY_P; 60 L1*L17*L20; 4 L1*L17*L32; 121 L1*L17*RX_P
82 L1*L17*TX_R_; 112 L1*L18*L30; 16 L1*L21*L22; 32 L1*L21*L25
12 L1*L22*RX_P; 106 L1*L25*L25; 52 L1*L25*DROP_OHP_YZQ; 2 L1*L25*TY_R_
8 L1*L30*L31; 87 L1*L31*DROP_OCQ_Y; 3 L1*RX_P*TY_R_; 9 L2*L3*L18
9 L2*L3*TY_R_; 1 L2*L4*L36; 47 L2*L14*L17; 7 L2*L15*L27
19 L2*L17*L19; 64 L2*L17*L22; 17 L2*L17*L29; 17 L2*L17*RX_P
131 L2*L18*L30; 79 L2*L20*L27; 21 L2*L23*L27; 16 L3*L3*L22
4 L3*L6*L14; 1 L3*L8*L28; 2 L3*L10*L31; 1 L3*L12*L28
14 L3*L14*L24; 8 L3*L14*L26; 10 L3*L14*DROP_OCQ_Y; 33 L3*L18*L22
37 L3*L22*L28; 9 L3*L26*RX_P; 3 L3*L28*TY_R_; 4 L4*L6*L33
9 L4*L17*L24; 33 L4*L17*DROP_OCQ_Y; 2 L4*L19*L20; 2 L4*L22*L25
4 L5*L7*L12; 5 L5*L17*-OHD; 9 L5*L20*L25; 6 L6*L6*L36
6 L6*L9*L14; 20 L6*L10*L30; 10 L6*L11*RX_P; 5 L6*L12*L15
25 L6*L13*L26; 24 L6*L14*TX_R_; 53 L6*L21*L26; 14 L6*L22*L35
21 L6*L22*RY_P; 27 L6*L23*L26; 116 L6*L25*L26; 9 L6*L26*L27
7 L6*L26*L33; 9 L6*L26*TY_R_; 6 L6*RX_P*TY_R_; 12 L7*L17*L23
7 L7*L17*L31; 29 L7*L20*L27; 33 L8*L12*L35; 1 L8*L14*L30
26 L8*L17*L19; 115 L8*L17*L22; 7 L8*L17*TX_R_; 7 L9*L17*L24
1 L10*L16*L35; 7 L10*L17*L21; 11 L10*L17*L24; 15 L10*L17*L26
1 L10*L17*L32; 58 L10*L17*RX_P; 70 L10*L20*RX_P; 13 L10*RX_P*DROP_OCQ_Y
2 L12*L15*L27; 4 L12*L19*L24; 13 L12*L19*DROP_OCQ_Y; 5 L12*L23*TX_R_
1 L12*L24*L27; 1 L12*L31*L34; 16 L14*L17*L17; 15 L14*L17*L25
2 L14*L26*L30; 5 L15*L23*L25; 17 L17*L17*L33; 22 L17*L17*-OHD
88 L17*L17*DROP_OCQ_Y; 23 L17*L17*TX_R_; 88 L17*L18*L20; 2 L17*L18*L28
33 L17*L19*L30; 61 L17*L21*C_OHD_Z; 1 L17*L23*L23; 1 L17*L24*L27
23 L17*L24*C_OCF_Y; 15 L17*L26*L32; 43 L17*L27*L29; 28 L17*L27*-OHD
2 L17*L27*RY_P; 1 L17*L27*TY_R_; 17 L17*L36*RX_P; 17 L17*-OHD*-OHD
27 L17*+OCF*C_OHD_Z; 34 L17*C_OCF_Y*TY_R_; 23 L17*RX_P*TX_R_; 3 L17*RY_P*TY_R_
4 L18*L18*L25; 13 L18*L23*L30; 11 L18*L24*L30; 1 L18*L25*TY_R_
4 L18*RX_P*TY_R_; 11 L19*L20*L27; 33 L19*L20*L31; 7 L19*L27*L27
1 L20*L23*L27; 14 L20*L27*L27; 5 L20*L27*L36; 1 L20*TY_R_*TY_R_
1 L21*L28*TY_R_; 14 L22*L25*L26; 11 L22*L27*RX_P; 1 L22*RX_P*DROP_OCQ_Y
1 L23*L23*L25; 5 L24*L27*TX_R_; 5 L25*L25*TY_R_; 1 L25*L26*L30
1 L25*L31*TY_R_; 1 L25*RX_P*TY_R_; 2 L27*L28*TX_R_; 1 L27*L30*-OHD
2 L27*L31*L34; 6 L30*RX_P*DROP_OCQ_Y; 22 L31*L31*L34; 58 KLOW*L12
17 KLOW*L23; 76 KLOW*TX_R_; 10 CENT*L29; 2 CENT*L31
1 CENT*L33; 62 QUADP*L17; 8 -OHF*L1; 14 +HDF*L17
29 +HDF*L18; 21 +HDF*L22; 74 +OYZ*L8; 30 -HYZ*L18
25 -HYZ*L29; 29 -HYZ*L31; 59 -HYZ*+OCF; 1 -HYZ*TX_R_
48 -OHY*L17; 44 -HCY*L12; 51 -OHZ*L19; 17 +OCZ*L17
39 -HFZ*L1; 32 -HFZ*L11; 13 -HFZ*L18; 6 -HFZ*L29
5 -HFZ*L30; 13 -HFZ*RY_P; 139 -HFZ*DROP_OCQ_Y; 24 -HFZ*TX_R_
15 +CFZ*L17; 1 -CDP*L8; 9 -CDP*C_OCF_Y; 43 -CDP*DROP_OHP_YZQ
37 -CDP*DROP_OCQ_Y; 3 -CDP*TY_R_; 64 -HFQ*L3; 4 -HFQ*L26
23 -CYQ*L3; 2 +HZQ*L28; 53 -HFR*L1; 11 -HFR*L5
80 -HFR*L6; 1 -HFR*L8; 103 -HFR*L21; 111 -HFR*L25
32 -HFR*L33; 60 -HFR*-OHD; 120 -HFR*+OCF; 207 -HFR*DROP_OHP_YZQ
2 -HFR*DROP_OCQ_Y; 7 +HDR*L0; 9 +HDR*L6; 5 +HDR*L25
79 +OQR*L2; 1 +OQR*L19; 1 +OQR*L23; 9 +OQR*L25
14 +OQR*L27; 5 +OQR*L36; 1 -DPR*L9; 4 -DPR*L18
3 -DPR*L23; 2 -DPR*L26; 9 -DPR*TX_R_; 52 -CYZ*L21
180 -CYZ*L23; 14 -CYZ*L24; 35 -CYZ*+OCF; 245 -CYZ*DROP_OHP_YZQ
153 -CYZ*DROP_OCQ_Y; 90 -OYP*L1; 31 -OYP*L6; 54 -OYP*L18
54 -OYP*L19; 225 -OYP*L20; 1 -OYP*L30; 184 -OYP*L33
27 -OYP*L36; 3 -OYP*+OCF; 54 -OYP*DROP_OHP_YZQ; 101 -OYP*DROP_OCQ_Y
18 -OYP*TX_R_; 119 +OYQ*L1; 34 +OYQ*L6; 52 +OYQ*L13
5 +OYQ*L14; 117 +OYQ*L18; 134 +OYQ*L23; 136 +OYQ*L31
271 +OYQ*DROP_OHP_YZQ; 75 +OYQ*RX_P; 134 +OYQ*DROP_OCQ_Y; 15 +OYQ*TX_R_
90 -HPQ*L2; 87 -HPQ*L10; 294 -HPQ*L18; 289 -HPQ*L19
11 -HPQ*L27; 32 -HPQ*L29; 1 -HPQ*L33; 7 -HPQ*-OHD
121 -HPQ*DROP_OHP_YZQ; 16 -HPQ*DROP_OCQ_Y; 78 -HPQ*TX_R_; 79 -CQR*L6
24 -CFQ*L8; 14 -CFQ*L11; 37 -CFQ*L14; 21 -CFQ*L19
79 -CFQ*L24; 33 -CFQ*L27; 59 -CFQ*-OHD; 7 -CFQ*+OCF
71 -CFQ*C_OHD_Z; 97 -CFQ*DROP_OHP_YZQ; 17 -CFQ*DROP_OCQ_Y; 65 -OFQ*L17
16 +CPQ*L22; 2 +CPR*L1; 2 -DQR*L0; 9 -DQR*L25
11 +FYQ*L17; 32 +FYQ*L34; 55 +FQR*L17; 5 +YPR*L17
5 -FPQ*L30; 1 -PQR*TY_R_; 2 +ZPQ*L18; 2 +ZPQ*L28
160 +ZPQ*L31; 27 +ZPQ*L35; 27 +ZPQ*DROP_OHP_YZQ; 5 +ZPQ*RX_P
15 +ZPQ*TX_R_; 63 C_OCR_YQ*L6; 64 C_OPQ_Y*L3; 2 C_OPQ_Y*L18
55 C_OPR_YQ*L20; 2 C_OPR_YQ*L23; 2 C_OPR_YQ*L28; 5 C_OPR_YQ*C_OCF_Y
5 C_OPR_YQ*RX_P; 9 C_OPR_YQ*TX_R_; 49 C_HCP_Q*L30; 25 C_HZP_Q*L31
2 C_HZP_Q*RY_P; 9 TPY_R_*L3; 43 Q_OPDH_YZQ*L17; 31 Q_OYFH_Z*L30
6 Q_OYRH_Z*L17; 1 Q_HZCP_Q*TY_R_; 15 M_HOPYZQ_-1_0*L17; 2 M_HOPYZQ_-1_3*L18
136 M_HOPYZQ_-1_3*L31; 33 M_HOPYZQ_-1_3*RX_P; 7 M_HOPYZQ_-1_3*TX_R_; 8 M_HOPYZQ_-1_4*TX_R_
```

Upper bound: `-152268237957/45500000000`.

### Leaf RUTmmpmmmmpmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ -CQR +CFQ -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZR +ODZ
P OHFZQ -OFQ
P OHYZP -OZP
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCPQ -FPQ
P FOCQR +FQR
P FODPR +FPR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZOHFQ -ZFQ
P ZODPR +ZPR
P POHQR -PQR
P QOHZR -QZR
C OFY Z Q +FYQ 101661/147500
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
M OCFQYZ -1
M OFCQZY 1
M COFZYQ 1
M CFOZQY -1
M FOCYZQ -1
M FCOYQZ 1
M OFPQZY 1
M OPFQYZ -1
M FOPYZQ -1
M FPOYQZ 1
M POFZYQ 1
M PFOZQY -1
```

```c1top-bounds
T OCF YZQ 1 lower 823/1000
T OCZ Y 7 lower 93/295
T OHP YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 823/1000 1
c 823/1000 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
3 L1*L3; 13 L0*L2*TX_R_; 20 L0*L17*TX_R_; 4 L0*L34*TX_R_
2 L1*L1*L13; 4 L1*L1*L20; 22 L1*L2*L17; 17 L1*L3*L21
3 L1*L3*L23; 1 L1*L4*L6; 1 L1*L4*L30; 1 L1*L5*L36
1 L1*L5*+OCF; 3 L1*L6*L30; 5 L1*L8*L20; 4 L1*L8*L23
1 L1*L8*L28; 3 L1*L8*+OCF; 12 L1*L11*L27; 7 L1*L12*RX_P
6 L1*L19*L30; 1 L1*L20*L34; 6 L1*L21*L30; 2 L1*L28*L29
32 L1*L30*DROP_OHP_YZQ; 2 L1*L31*RX_P; 67 L1*DROP_OHP_YZQ*RX_P; 4 L2*L3*L5
1 L2*L14*TY_R_; 2 L2*L22*L28; 5 L2*L25*TY_R_; 1 L2*L27*L30
1 L2*L28*RX_P; 15 L3*L3*L34; 13 L3*L5*L25; 7 L3*L9*L18
1 L3*L9*DROP_OCR_YQ; 10 L3*L10*L12; 27 L3*L10*L16; 14 L3*L14*RX_P
67 L3*L16*L18; 14 L3*L17*DROP_OCR_YQ; 12 L3*L18*L24; 1 L3*L18*L27
2 L3*L18*L34; 5 L3*L18*TX_R_; 2 L3*L22*L35; 1 L3*L27*L36
20 L3*L27*TX_R_; 11 L3*DROP_OHP_YZQ*TY_R_; 1 L5*L14*L17; 2 L5*L17*DROP_OCQ_Y
2 L5*L25*+OCF; 4 L6*L10*L36; 2 L6*L13*L17; 10 L6*L14*RX_P
40 L6*L17*L18; 9 L6*L17*+OCF; 9 L6*L17*RX_P; 24 L6*L17*DROP_OCR_YQ
4 L7*L12*L22; 7 L7*L17*L23; 2 L7*L17*L30; 9 L7*L17*DROP_OHP_YZQ
3 L8*L14*L19; 17 L8*L15*L17; 10 L8*L17*L19; 2 L8*L17*+OCF
2 L10*L12*L25; 2 L10*L17*L20; 4 L10*L17*L24; 2 L10*L17*C_OHD_Z
49 L10*L17*RX_P; 2 L10*L21*TX_R_; 12 L11*L13*L17; 2 L11*L17*L23
8 L11*L17*L30; 31 L11*L17*DROP_OHP_YZQ; 2 L12*L22*L31; 2 L12*L22*TX_R_
2 L14*L17*L21; 8 L16*L18*L30; 52 L16*L27*RX_P; 1 L16*L28*L35
11 L17*L18*L24; 8 L17*L18*L33; 85 L17*L20*DROP_OHP_YZQ; 85 L17*L21*DROP_OHP_YZQ
15 L17*L24*L26; 7 L17*L25*DROP_OCQ_Y; 9 L17*L28*+OCF; 2 L17*L29*L35
8 L17*L31*L32; 7 L17*DROP_OCQ_Y*TX_R_; 2 L18*L20*L27; 1 L18*L27*+OCF
2 L22*L24*L30; 2 L22*L30*RX_P; 2 L22*RX_P*TY_R_; 15 L24*RX_P*TY_R_
5 L29*RX_P*TY_R_; 3 L34*L35*RX_P; 64 DROP_OHP_YZQ*RX_P*TY_R_; 1 CENT*L0
1 CENT*L18; 28 CENT*DROP_OHP_YZQ; 9 +OYZ*L8; 16 -HYZ*L21
19 -HYZ*L29; 19 -HYZ*+OCF; 2 -HYZ*TX_R_; 2 -OHY*L17
3 -HFZ*L1; 23 +OCP*L30; 1 -CDP*L11; 1 -CDP*L15
14 -CDP*L24; 5 -CDP*L29; 82 -CDP*DROP_OHP_YZQ; 2 -CYP*L0
3 -CYP*L12; 8 +HCQ*L1; 1 +HCQ*L15; 2 +HCQ*L18
9 +HCQ*L33; 6 +HCQ*L35; 11 +HCQ*+OCF; 5 +HCQ*C_OHD_Z
85 +HCQ*DROP_OHP_YZQ; 2 +HCQ*RY_P; 29 +HCQ*TX_R_; 2 +HCQ*TY_R_
4 -CZQ*L0; 15 -HFR*L3; 2 -HFR*L14; 8 -HFR*L20
11 -HFR*L23; 2 -HFR*L30; 4 -HFR*-OHD; 11 -HFR*DROP_OCQ_Y
7 +CDR*L1; 5 +CDR*L3; 7 -DFR*L14; 7 -DFR*L34
28 -OFR*L17; 1 -DYR*L17; 7 +OQR*L6; 54 -CYZ*L1
8 -CYZ*L3; 34 -CYZ*L6; 9 -CYZ*L8; 59 -CYZ*L10
4 -CYZ*L20; 59 -CYZ*L32; 59 -CYZ*DROP_OHP_YZQ; 2 -OYP*L6
4 -OYP*L24; 2 -OYP*L27; 38 -OYP*L33; 3 -OYP*L36
26 -OYP*+OCF; 5 -OYP*C_OHD_Z; 38 -OYP*DROP_OHP_YZQ; 11 +OYQ*L14
2 +OYQ*L25; 4 -OZQ*L6; 7 -OZQ*L8; 6 -OZR*L0
12 -HPQ*L18; 12 -HPQ*L19; 18 -HPQ*L31; 2 -HPQ*L35
4 -HPQ*+OCF; 62 -HPQ*DROP_OHP_YZQ; 20 -HPQ*TX_R_; 2 +CFQ*L4
2 +CFQ*L11; 9 +CFQ*L24; 2 +CFQ*L35; 1 +CFQ*L36
7 +CFQ*+OCF; 4 +CFQ*C_OHD_Z; 62 +CFQ*DROP_OHP_YZQ; 22 +CFQ*TX_R_
2 +CFQ*TY_R_; 12 -OFZ*L2; 2 -OFZ*L6; 23 -OFZ*L11
20 -OFZ*L14; 4 -OFZ*L20; 20 -OFZ*L34; 12 -OFZ*L35
32 -OFZ*DROP_OHP_YZQ; 10 -OFZ*DROP_OCQ_Y; 4 -OFZ*TX_R_; 6 +CPR*L17
40 -FPQ*L17; 11 -FYZ*L3; 2 -YZQ*L24; 4 +YPQ*L3
2 +ZQR*L6; 11 +FYQ*L36; 20 +ZPQ*L31; 20 C_OFY_Z*L14
9 C_HCF_Q*L26; 22 C_HCF_Q*L30; 3 C_HCF_Q*TY_R_; 20 C_HCP_Q*L8
19 C_HCP_Q*L21; 3 C_HCP_Q*L24; 5 C_HCP_Q*RX_P; 3 SP_OCRH_ZQ_CH1*L17
18 Q_OPDH_YZQ*L17; 17 Q_OCPZ_Y*L8; 13 Q_OCQZ_Y*L3; 5 Q_OCPR_YQ*L17
1 Q_OYRF_Z*L17; 11 Q_OPQZ_Y*L3; 1 Q_CFZY_Q*RX_P; 2 M_POFZYQ_1_1*RX_P
20 M_POFZYQ_1_1*TX_R_; 18 M_POFZYQ_1_3*L17; 20 M_POFZYQ_1_4*L16; 2 M_HOPYZQ_-1_4*L27
10 M_CFOZQY_-1_1*L7; 6 M_CFOZQY_-1_1*L12; 8 M_CFOZQY_-1_1*L21; 5 M_CFOZQY_-1_1*L24
9 M_CFOZQY_-1_1*L31; 3 M_CFOZQY_-1_1*L34; 3 M_CFOZQY_-1_1*C_OHD_Z; 68 M_CFOZQY_-1_1*DROP_OHP_YZQ
1 M_CFOZQY_-1_1*DROP_OCR_YQ; 4 M_CFOZQY_-1_4*L0; 2 M_CFOZQY_-1_4*DROP_OCR_YQ; 2 M_CFOZQY_-1_4*TX_R_
```

Upper bound: `-17285529539/45500000000`.

### Leaf RUTmmpmmmmpmpm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ -CQR +CFQ -ODY +OFZ -ODQ`.

```c1top-geometry
C OCD YQ Z -DOZ 72039/90700
P OHDFY -OFY
P OHDFQ -OFQ
P OHDYR +OYR
P OHDZP -OZP
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHZQ +DZQ
P DOCPQ -DPQ
P DOCQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR +FQR
P FODPR +FPR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
```

Exclusion: `central_endpoint_top OD P YQ`.

### Leaf RUTmmpmmmmpmppm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ -CQR +CFQ -ODY +OFZ +ODQ -DZQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ -DPQ
P DOHQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR +FQR
P FODPR +FPR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODPR +ZPR
P POHQR -PQR
P QOHZR -QZR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHP YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
3 L0*L3*L27; 13 L0*L3*DROP_OCQ_Y; 50 L0*L4*TX_R_; 7 L0*L12*RX_P
2 L0*L17*L28; 5 L0*L17*L35; 7 L0*L21*L30; 19 L0*L25*L27
19 L0*L27*L29; 19 L0*L27*TX_R_; 21 L0*L29*TX_R_; 47 L0*DROP_OHP_YZQ*TX_R_
10 L0*RX_P*TX_R_; 1 L1*L1*L26; 3 L1*L1*DROP_OHR_Z; 5 L1*L3*L8
8 L1*L3*L12; 9 L1*L3*L21; 1 L1*L3*L24; 2 L1*L6*L23
3 L1*L6*-OHD; 5 L1*L8*L8; 2 L1*L8*L10; 2 L1*L11*L30
8 L1*L12*L24; 10 L1*L12*DROP_OCR_YQ; 31 L1*L12*TX_R_; 1 L1*L14*L21
1 L1*L14*L31; 1 L1*L14*L33; 6 L1*L14*RX_P; 1 L1*L14*DROP_OCR_YQ
5 L1*L17*L18; 14 L1*L17*L36; 1 L1*L17*-OHD; 5 L1*L18*RX_P
11 L1*L21*L25; 7 L1*L21*TY_R_; 16 L1*L25*DROP_OCQ_Y; 15 L1*L25*TY_R_
24 L1*L26*RX_P; 5 L1*L30*L31; 14 L1*DROP_OCR_YQ*DROP_OCR_YQ; 5 L2*L4*L31
8 L2*L10*RX_P; 10 L2*L17*L19; 3 L2*L21*L26; 5 L3*L3*TY_R_
8 L3*L8*DROP_OCQ_Y; 4 L3*L14*L27; 4 L3*L14*-OHD; 4 L3*L18*L32
14 L3*L18*DROP_OHR_Z; 17 L3*L27*DROP_OCQ_Y; 4 L4*L4*L30; 2 L4*L5*L20
7 L4*L6*L31; 8 L4*L6*TX_R_; 12 L4*L12*L17; 9 L4*L14*L17
17 L4*L17*L22; 4 L4*L20*L28; 3 L4*L20*L35; 4 L4*L20*TX_R_
4 L4*L27*L35; 10 L4*L31*L36; 5 L4*L31*DROP_OCQ_Y; 15 L4*DROP_OCQ_Y*TX_R_
4 L5*L8*L26; 5 L5*L8*RX_P; 4 L5*L10*DROP_OCR_YQ; 1 L5*L12*L18
5 L5*L12*L26; 14 L5*L12*RX_P; 29 L5*L17*L20; 3 L5*L25*L30
9 L6*L17*DROP_OHP_YZQ; 26 L6*L17*DROP_OHR_Z; 21 L6*L17*TX_R_; 1 L6*L18*L30
2 L6*L23*L26; 38 L6*L26*L36; 24 L6*L26*RX_P; 7 L6*RX_P*TY_R_
21 L7*L7*L17; 5 L7*L7*L27; 10 L7*L10*L20; 11 L7*L17*L22
48 L7*L17*L24; 2 L7*L21*L27; 3 L8*L17*RX_P; 1 L8*L18*L35
15 L8*L18*L36; 2 L8*L23*L30; 1 L8*DROP_OCQ_Y*TY_R_; 1 L9*L10*L19
3 L10*L12*L21; 2 L10*L12*L35; 5 L10*L17*L28; 19 L10*L17*L29
9 L10*L17*L36; 12 L10*L17*DROP_OHP_YZQ; 15 L10*L17*DROP_OCQ_Y; 27 L10*L17*DROP_OHR_Z
1 L10*L17*TY_R_; 2 L10*L20*L30; 9 L10*L20*TY_R_; 10 L10*L25*DROP_OCQ_Y
12 L10*DROP_OHP_YZQ*RX_P; 31 L11*L12*DROP_OCQ_Y; 7 L12*L16*TY_R_; 13 L12*L17*-OHD
7 L12*L20*TY_R_; 7 L12*L21*L28; 14 L12*L22*L28; 4 L12*L22*L29
9 L12*L27*RY_P; 27 L12*L28*DROP_OHP_YZQ; 10 L12*L28*TY_R_; 2 L12*+OCF*TY_R_
8 L14*L17*L19; 7 L14*L17*L20; 6 L14*L17*L31; 6 L14*L18*L21
1 L14*L18*L25; 24 L14*L21*TX_R_; 19 L14*L21*TY_R_; 5 L14*L25*DROP_OCQ_Y
8 L14*L29*RX_P; 1 L14*L30*C_OHD_ZQ; 4 L14*-OHD*TX_R_; 3 L14*DROP_OHP_YZQ*RX_P
16 L14*RX_P*RX_P; 13 L14*RX_P*DROP_OCQ_Y; 8 L14*RX_P*TX_R_; 8 L15*L17*L22
6 L15*L18*L20; 8 L15*L18*RX_P; 3 L16*L30*RX_P; 22 L17*L17*L34
16 L17*L17*DROP_OCQ_Y; 9 L17*L17*DROP_OHR_Z; 16 L17*L18*L20; 11 L17*L18*L24
8 L17*L18*+OCF; 5 L17*L18*DROP_OCQ_Y; 5 L17*L19*L26; 5 L17*L20*L32
16 L17*L22*RX_P; 11 L17*L23*C_OHD_ZQ; 62 L17*L24*L27; 7 L17*L24*RY_P
13 L17*L25*L34; 2 L17*L25*-OHD; 2 L17*L27*C_OHD_ZQ; 4 L17*L27*DROP_OHP_YZQ
22 L17*L27*DROP_OCQ_Y; 5 L17*L30*C_OHD_ZQ; 5 L17*L34*TX_R_; 3 L17*L36*RX_P
22 L17*C_OHD_ZQ*DROP_OHP_YZQ; 9 L17*DROP_OHP_YZQ*TX_R_; 62 L17*DROP_OCR_YQ*TX_R_; 6 L18*L20*L27
16 L18*L20*RX_P; 5 L18*L21*L30; 15 L18*L22*L25; 8 L18*L22*L30
7 L18*L24*L36; 5 L18*L27*DROP_OHP_YZQ; 1 L18*L29*L30; 1 L18*L30*TY_R_
5 L18*RX_P*DROP_OCQ_Y; 10 L20*L32*TX_R_; 14 L27*L27*C_OHD_ZQ; 12 L27*L29*L29
1 L28*RX_P*TX_R_; 13 L31*L31*RY_P; 26 L31*RY_P*TX_R_; 4 KLOW*L20
8 CENT*L20; 2 +OYZ*L25; 4 -HYZ*L20; 10 -CDP*L11
38 -CDP*L20; 9 -CDP*L21; 13 -CDP*L29; 13 -CDP*DROP_OHP_YZQ
17 -CDP*DROP_OCQ_Y; 27 -CDP*DROP_OHR_Z; 11 +DFP*L14; 13 -ODP*L17
15 -CYP*L17; 24 +OCQ*L17; 11 +HCQ*RY_P; 1 +HCQ*DROP_OHR_Z
8 +HZQ*L4; 10 -HFR*L7; 42 -HFR*L13; 4 -HFR*L14
39 -HFR*L25; 11 -HFR*L29; 3 -HFR*-OHD; 91 -HFR*DROP_OHP_YZQ
39 -HFR*DROP_OHR_Z; 15 -HFR*DROP_OCR_YQ; 3 +CDR*L30; 8 -DFR*L6
8 -DFR*L14; 8 -DFR*L34; 42 -DFR*C_OHD_ZQ; 19 -DFR*DROP_OHP_YZQ
15 -DFR*DROP_OCQ_Y; 8 +HDR*L12; 2 +OQR*L6; 19 +OQR*L33
10 +OQR*L35; 5 +OQR*L36; 16 +OQR*-OHD; 16 +OQR*RX_P
24 +OQR*RY_P; 5 -DPR*L8; 7 -DPR*L12; 8 -CYZ*L3
4 -CYZ*L18; 26 -CYZ*L23; 39 -CYZ*DROP_OHP_YZQ; 10 -CYZ*RY_P
39 -CYZ*DROP_OCQ_Y; 8 -CYZ*DROP_OHR_Z; 63 -OYP*L17; 19 -OYP*L24
7 -OYP*L29; 19 -OYP*L31; 26 -OYP*L33; 9 -OYP*L36
74 -OYP*DROP_OHP_YZQ; 15 -OYP*DROP_OCQ_Y; 23 -OYP*TX_R_; 1 -OYP*TY_R_
2 +OYQ*L1; 13 +OYQ*L14; 1 +OYQ*L24; 18 +OYQ*DROP_OHP_YZQ
30 -OZQ*L17; 1 -HPQ*L5; 21 -HPQ*L7; 12 -HPQ*L13
21 -HPQ*L14; 27 -HPQ*L18; 27 -HPQ*L19; 11 -HPQ*DROP_OHR_Z
22 -HPQ*DROP_OCR_YQ; 2 +CFQ*L1; 17 +CFQ*L26; 12 -ODY*L3
4 -ODY*L5; 6 -ODY*L20; 13 -ODY*L31; 13 -ODY*L33
10 -ODY*+OCF; 7 -ODY*DROP_OCQ_Y; 12 -ODY*DROP_OHR_Z; 19 -ODY*TX_R_
20 +OFZ*L21; 16 +OFZ*RX_P; 11 +OFZ*RY_P; 41 +OFZ*DROP_OCR_YQ
4 +ODQ*L14; 3 -DZQ*L8; 51 -DZQ*L23; 31 -DZQ*L24
18 -DZQ*L32; 55 -DZQ*DROP_OHP_YZQ; 51 -DZQ*DROP_OCQ_Y; 18 -DZQ*DROP_OCR_YQ
4 -DZQ*TX_R_; 6 -DZQ*TY_R_; 5 -HDQ*L17; 11 +CPQ*L1
3 +CPQ*L2; 16 +FQR*L17; 4 +YPR*L17; 8 +ZQR*L18
8 C_OCR_YQ*L1; 18 C_OCR_YQ*L6; 4 C_OCR_YQ*L36; 2 C_ODP_Y*L20
20 C_ODR_Q*L12; 4 TPY_R_*L12; 5 SP_OCFH_ZQ_OF-1*L17; 13 Q_OCPH_YZQ*TX_R_
1 Q_OYQH_Z*L27; 1 Q_OCPD_Y*L1; 2 Q_OCPD_Y*L36; 3 Q_OCPZ_Y*L3
20 Q_OCPZ_Y*L12; 5 Q_OCPZ_Y*L21; 20 Q_OCPZ_Y*L30; 5 Q_OPDQ_Y*L10
2 M_HOPYZQ_-1_3*L1; 11 M_HOPYZQ_-1_3*L6; 3 M_HOPYZQ_-1_3*L8; 13 M_HOPYZQ_-1_3*RX_P
5 M_HOPYZQ_-1_4*L31; 11 M_HOPYZQ_-1_4*TX_R_
```

Upper bound: `-5133750071/3500000000`.

### Leaf RUTmmpmmmmpmpppm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ -CQR +CFQ -ODY +OFZ +ODQ +DZQ -FYQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ -DPQ
P DOHQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR +FQR
P FODPR +FPR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YOFQR -YQR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHP YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
9 L0*L0*RX_P; 5 L0*L1*L25; 29 L0*L4*TX_R_; 6 L0*L7*L27
1 L0*L18*L34; 6 L0*L22*L29; 1 L0*L25*L36; 21 L0*L27*TX_R_
7 L0*L29*L32; 34 L0*L29*TX_R_; 4 L0*L34*TX_R_; 4 L1*L1*L9
5 L1*L1*L10; 6 L1*L1*L24; 5 L1*L1*L35; 2 L1*L3*L5
12 L1*L3*L12; 1 L1*L3*L20; 14 L1*L3*L30; 3 L1*L6*L13
2 L1*L6*L18; 4 L1*L6*L21; 10 L1*L6*L22; 8 L1*L6*L35
1 L1*L6*DROP_OHR_Z; 8 L1*L7*L31; 9 L1*L8*L17; 11 L1*L9*DROP_OHP_YZQ
1 L1*L10*TY_R_; 4 L1*L12*L20; 6 L1*L12*DROP_OCR_YQ; 1 L1*L13*L14
1 L1*L13*L25; 4 L1*L16*L18; 27 L1*L17*L21; 2 L1*L17*L22
2 L1*L17*L34; 1 L1*L18*L36; 1 L1*L18*C_OHD_ZQ; 4 L1*L18*DROP_OHR_Z
1 L1*L20*L20; 18 L1*L20*L27; 2 L1*L20*DROP_OCQ_Y; 1 L1*L21*L24
18 L1*L25*L26; 3 L1*L25*RX_P; 5 L1*L27*RX_P; 2 L1*L31*L36
2 L1*L31*RY_P; 4 L1*L31*DROP_OCQ_Y; 5 L1*L31*TY_R_; 5 L1*L35*RX_P
1 L1*L35*TY_R_; 1 L1*L36*RX_P; 41 L2*L16*L17; 8 L2*L20*L34
13 L3*L4*RX_P; 2 L3*L15*DROP_OCQ_Y; 41 L3*L17*DROP_OHP_YZQ; 3 L3*L17*DROP_OCR_YQ
4 L3*L18*C_OHD_ZQ; 3 L3*L21*L27; 2 L3*L22*L22; 9 L3*L22*L27
6 L3*L23*L31; 1 L4*L4*RX_P; 13 L4*L6*TX_R_; 4 L4*L7*DROP_OCQ_Y
6 L4*L17*DROP_OHR_Z; 1 L4*L20*L35; 1 L4*L21*L22; 45 L4*DROP_OCQ_Y*TX_R_
3 L5*L17*L18; 5 L5*DROP_OHP_YZQ*RX_P; 31 L6*L17*L22; 7 L6*L17*L24
3 L6*L17*L36; 7 L6*L18*L21; 6 L6*L26*L31; 3 L6*L26*L36
1 L7*L7*L28; 10 L7*L12*DROP_OCQ_Y; 7 L7*L17*L18; 9 L7*L17*L23
2 L7*L22*L22; 3 L7*L22*L25; 7 L7*L25*DROP_OHP_YZQ; 2 L7*L27*L28
24 L7*L27*L29; 8 L7*L27*RX_P; 33 L7*L27*DROP_OCQ_Y; 2 L8*L10*L27
1 L8*L12*RY_P; 21 L8*L18*RX_P; 12 L8*L27*L27; 7 L8*L27*RX_P
17 L9*L17*DROP_OCQ_Y; 18 L9*L27*DROP_OCQ_Y; 6 L10*L12*L25; 10 L10*L13*RX_P
25 L10*L17*L20; 7 L10*L17*L34; 2 L10*L17*-OHD; 1 L10*L18*RX_P
3 L10*L21*L22; 2 L10*L26*L30; 12 L10*L27*TX_R_; 2 L10*L31*DROP_OHP_YZQ
5 L11*L12*L20; 2 L11*L17*L30; 18 L11*RX_P*RX_P; 2 L12*L12*RY_P
1 L12*L14*RX_P; 1 L12*L15*C_OHD_ZQ; 3 L12*L16*L29; 12 L12*L17*L18
3 L12*L17*+OCF; 1 L12*L17*DROP_OCQ_Y; 1 L12*L18*L32; 1 L12*L22*RX_P
8 L12*RY_P*DROP_OCR_YQ; 17 L12*RY_P*TX_R_; 1 L13*L13*L17; 8 L14*L22*L29
6 L15*L24*L31; 4 L15*L26*L31; 3 L15*L27*L35; 18 L15*L31*DROP_OHP_YZQ
7 L16*L17*L34; 12 L16*L17*DROP_OCQ_Y; 5 L16*L18*RX_P; 13 L16*L18*TX_R_
5 L17*L17*RY_P; 1 L17*L18*L32; 5 L17*L18*L33; 3 L17*L18*-OHD
17 L17*L18*DROP_OHR_Z; 25 L17*L20*DROP_OCR_YQ; 8 L17*L22*L31; 1 L17*L23*L26
29 L17*L25*DROP_OCQ_Y; 8 L17*L26*L26; 8 L17*L26*L34; 4 L17*L27*DROP_OHP_YZQ
3 L17*L28*RY_P; 3 L17*L31*C_OHD_ZQ; 3 L17*L31*DROP_OCR_YQ; 1 L17*L34*L34
6 L17*L34*L35; 21 L17*L34*TX_R_; 5 L17*-OHD*RY_P; 4 L18*L20*L25
12 L18*L20*RX_P; 4 L18*L24*L30; 4 L18*L25*L28; 2 L18*L35*DROP_OHP_YZQ
2 L18*L35*TX_R_; 6 L20*L20*L27; 1 L20*L22*L29; 6 L20*L22*TX_R_
8 L20*L27*L31; 16 L20*L27*DROP_OCQ_Y; 4 L20*L34*TX_R_; 16 L22*L22*TX_R_
1 L22*L27*RX_P; 10 L22*L30*TX_R_; 3 L25*L28*L28; 1 L25*L28*DROP_OHP_YZQ
3 L27*L28*L30; 6 L27*RY_P*TX_R_; 1 L28*L28*L29; 3 L29*L32*TX_R_
1 L31*L34*L34; 2 L31*RY_P*TX_R_; 8 L34*DROP_OCQ_Y*TX_R_; 18 L35*DROP_OCQ_Y*TX_R_
1 L36*L36*DROP_OHP_YZQ; 6 CENT*L17; 1 CENT*L33; 1 +HDF*L1
3 -HYZ*L27; 8 -HYZ*DROP_OCQ_Y; 11 -HCY*L12; 2 +CDY*L17
3 -OHZ*L7; 1 -OHZ*L35; 7 -OHZ*TX_R_; 4 +OCP*L30
11 -CDP*L2; 2 -CDP*L31; 10 -CYP*L0; 1 -CYP*L14
23 -CYP*L33; 2 -CYP*DROP_OCQ_Y; 13 -OHQ*L17; 5 +HCQ*L7
9 +HCQ*L8; 13 +HCQ*L11; 5 +HCQ*L12; 2 +HCQ*L19
1 +HCQ*L21; 10 +HCQ*L27; 4 +HCQ*L29; 14 +HCQ*DROP_OHP_YZQ
4 +HCQ*RX_P; 2 +HCQ*DROP_OCQ_Y; 15 +HCQ*DROP_OHR_Z; 1 +HYQ*L15
3 +HYQ*L20; 8 +HYQ*RX_P; 7 +HYQ*TX_R_; 17 -CYQ*L3
4 -CYQ*L25; 1 +HZQ*L12; 2 +HZQ*L17; 6 +HZQ*L31
1 -CZQ*RX_P; 46 -HFR*L3; 9 -HFR*L9; 3 -HFR*L15
12 -HFR*L20; 3 -HFR*L27; 38 -HFR*L29; 3 -HFR*L33
24 -HFR*+OCF; 12 -HFR*C_OHD_ZQ; 3 -HFR*RY_P; 8 -HFR*DROP_OCQ_Y
14 -DFR*L6; 7 -DFR*L20; 5 -DFR*L25; 2 -DFR*+OCF
12 -DFR*C_OHD_ZQ; 10 -DFR*DROP_OHP_YZQ; 3 -DFR*RY_P; 49 -DFR*DROP_OCQ_Y
6 -DFR*DROP_OHR_Z; 3 -DFR*DROP_OCR_YQ; 2 -OFR*L17; 4 +OQR*L5
16 +OQR*L6; 17 +OQR*L11; 8 +OQR*L15; 6 +OQR*L20
22 +OQR*L27; 14 +OQR*L33; 8 +OQR*L35; 25 +OQR*DROP_OHP_YZQ
16 +OQR*DROP_OCQ_Y; 22 +OQR*DROP_OCR_YQ; 8 -DPR*L27; 4 -DPR*L28
4 -DPR*-OHD; 1 -CYZ*L19; 4 -CYZ*L20; 53 -CYZ*L23
1 -CYZ*L34; 48 -CYZ*DROP_OHP_YZQ; 43 -CYZ*DROP_OCQ_Y; 6 -CYZ*DROP_OHR_Z
4 -CYZ*DROP_OCR_YQ; 15 -OYP*L1; 45 -OYP*L6; 7 -OYP*L13
13 -OYP*L16; 19 -OYP*L21; 2 -OYP*L23; 5 -OYP*L24
2 -OYP*L36; 15 -OYP*+OCF; 14 +OYQ*L22; 4 +OYQ*TX_R_
12 -HPQ*L17; 5 -HPQ*L26; 9 -HPQ*+OCF; 15 -HPQ*DROP_OHR_Z
3 -HPQ*DROP_OCR_YQ; 1 +DZQ*L10; 4 +DZQ*L25; 1 +DZQ*L30
2 +DZQ*RX_P; 1 +DZQ*DROP_OCQ_Y; 4 +DZQ*DROP_OHR_Z; 7 +DZQ*TX_R_
3 -FYQ*L20; 51 -FYQ*L24; 37 -FYQ*L25; 15 -FYQ*-OHD
9 -FYQ*+OCF; 53 -FYQ*DROP_OHP_YZQ; 18 -FYQ*DROP_OCQ_Y; 25 -FYQ*DROP_OCR_YQ
1 -OFQ*L25; 2 -HDQ*L17; 12 +CPQ*L3; 1 +FZQ*L1
3 +FPR*L0; 2 +YPQ*L1; 3 -YQR*L29; 9 +ZPQ*L25
9 +ZPQ*+OCF; 13 +ZPQ*DROP_OHR_Z; 8 +ZPQ*DROP_OCR_YQ; 17 +ZPQ*TX_R_
2 C_OCZ_Y*L17; 6 C_OYR_Q*L3; 7 C_OYR_Q*L22; 12 C_OYR_Q*L27
4 C_OYR_Q*RX_P; 32 C_HCP_Q*L30; 5 C_HYP_Q*L12; 5 C_HYP_Q*L17
5 C_HZP_Q*L9; 31 C_HZP_Q*L31; 2 C_DZP_Q*L12; 11 TPX_R_*L0
2 TPX_R_*L9; 3 TPX_R_*L18; 1 TPX_R_*L27; 2 TPX_R_*L28
4 Q_OCPH_YZQ*L30; 7 SP_OYFH_ZQ_OF-1*L17; 4 SP_OYFH_ZQ_OF-1*L20; 4 Q_OPRH_YZQ*L17
7 Q_OCPZ_Y*L17; 21 Q_OCPQ_Y*L8; 1 Q_ODRF_Q*L25; 2 SP_OPDZ_YQ_OD1*L2
4 SP_OPDZ_YQ_OD1*L26; 10 SP_OPDZ_YQ_PZ-1*TX_R_; 5 Q_HCDR_Q*L17; 10 Q_HYCP_Q*L1
23 Q_HYCP_Q*L12; 24 Q_HYCP_Q*RX_P; 2 Q_HYCP_Q*TX_R_; 2 Q_HZYF_Q*L18
2 Q_HZYP_Q*L20; 10 Q_HZYP_Q*TX_R_; 7 Q_CPFZ_Q*L17; 1 M_HOPYZQ_-1_2*TX_R_
1 M_HOPYZQ_-1_3*L23
```

Upper bound: `-78252583/1000000000`.

### Leaf RUTmmpmmmmpmppppm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ -CQR +CFQ -ODY +OFZ +ODQ +DZQ +FYQ -YQR`.

```c1top-geometry
C CFY Q Z -FYZ 881332897/1467182500
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ -DPQ
P DOHQR -DQR
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR +FQR
P FODPR +FPR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHP YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
7 L0*L1*DROP_OHP_YZQ; 6 L0*L1*RX_P; 1 L0*L5*L20; 5 L0*L7*L18
45 L0*L10*TX_R_; 1 L0*L17*L34; 1 L0*L17*-OHD; 2 L0*L31*TY_R_
7 L0*C_OHD_ZQ*TX_R_; 3 L1*L2*L22; 14 L1*L3*L13; 4 L1*L3*L32
3 L1*L4*L17; 5 L1*L5*L25; 40 L1*L6*L10; 13 L1*L6*L17
5 L1*L6*L19; 4 L1*L6*L36; 13 L1*L6*-OHD; 37 L1*L6*RX_P
23 L1*L7*L12; 36 L1*L10*L25; 20 L1*L12*L19; 9 L1*L12*DROP_OCQ_Y
27 L1*L12*DROP_OHR_Z; 14 L1*L17*L17; 20 L1*L17*DROP_OCQ_Y; 8 L1*L18*L21
34 L1*L25*RX_P; 6 L1*L27*L29; 47 L1*L27*L31; 1 L2*L3*TY_R_
1 L2*L5*L15; 19 L2*L5*L17; 2 L2*L5*L27; 8 L2*L10*RX_P
11 L2*L10*RY_P; 20 L2*L12*L19; 14 L2*L17*L31; 11 L3*L3*DROP_OCQ_Y
7 L3*L4*L18; 14 L3*L5*L20; 7 L3*L6*L23; 1 L3*L8*L22
8 L3*L10*L14; 11 L3*L11*TY_R_; 6 L3*L12*L16; 1 L3*L12*L18
6 L3*L12*L35; 16 L3*L14*L20; 14 L3*L17*L35; 14 L3*L17*+OCF
5 L3*L17*DROP_OCQ_Y; 7 L3*L18*L28; 11 L3*L18*L35; 40 L3*L18*DROP_OCR_YQ
12 L3*L18*TX_R_; 4 L3*L20*TY_R_; 7 L3*L22*L26; 9 L3*L27*L27
18 L4*L8*L17; 5 L4*L12*L27; 5 L5*L12*L16; 34 L5*L26*RX_P
9 L6*L8*L15; 7 L6*L10*L21; 8 L6*L10*TX_R_; 4 L6*L10*TY_R_
5 L6*L11*L25; 12 L6*L15*L31; 1 L6*L15*RY_P; 1 L6*L15*TX_R_
7 L6*L16*TY_R_; 12 L6*L18*L23; 1 L6*L18*L36; 5 L6*L19*L22
7 L6*L21*DROP_OCR_YQ; 13 L6*L26*L34; 76 L6*L26*L35; 37 L6*L26*RX_P
8 L7*L17*L18; 9 L8*L12*L19; 6 L8*L12*RX_P; 5 L8*L14*L25
1 L8*L14*L28; 15 L8*L17*L34; 1 L8*L18*L21; 88 L8*L18*TX_R_
18 L8*L27*L27; 10 L8*L27*L29; 19 L8*L27*TX_R_; 12 L10*L17*L21
9 L10*L17*L22; 7 L10*L17*L28; 16 L10*L17*C_OHD_ZQ; 85 L10*L17*DROP_OHR_Z
50 L10*L17*TX_R_; 21 L10*L24*L27; 26 L10*L24*TX_R_; 20 L10*L25*L25
3 L11*L12*L15; 14 L12*L17*L34; 5 L12*L17*TX_R_; 1 L12*L18*L28
7 L12*L18*TX_R_; 14 L12*L22*L28; 27 L12*L24*L27; 12 L12*L34*RX_P
2 L12*+OCF*RY_P; 15 L12*RY_P*DROP_OCQ_Y; 2 L13*L27*L27; 4 L13*L27*L36
1 L14*L14*RX_P; 13 L14*L15*L17; 15 L14*L17*L20; 14 L14*L25*DROP_OCQ_Y
14 L15*L17*L36; 7 L15*L25*RX_P; 15 L17*L18*L20; 7 L17*L18*L24
3 L17*L18*+OCF; 62 L17*L20*L27; 20 L17*L22*L32; 15 L17*L22*L36
11 L17*L23*L35; 15 L17*L23*RX_P; 7 L17*L24*L27; 12 L17*L26*L34
10 L17*L27*L29; 11 L17*L27*L36; 3 L17*L27*DROP_OCR_YQ; 6 L17*L31*L36
5 L17*L36*TX_R_; 6 L17*-OHD*DROP_OHR_Z; 7 L17*RY_P*TX_R_; 62 L18*L20*L25
7 L18*L24*L25; 19 L18*L24*L30; 1 L18*L29*RX_P; 14 L20*L27*L27
2 L21*L25*L28; 14 L22*L25*L26; 6 L22*L28*RX_P; 5 L25*L25*L27
5 L25*L25*TY_R_; 3 L25*L27*RY_P; 3 L25*L32*TY_R_; 4 L26*L28*RX_P
9 L27*L27*L29; 10 L27*L30*DROP_OHP_YZQ; 27 L27*L30*TX_R_; 1 L27*L31*RX_P
4 L31*L34*L34; 1 L34*RX_P*TY_R_; 1 C_OHD_ZQ*RX_P*TY_R_; 24 -HYZ*L18
18 -HCY*L12; 12 -OHZ*L19; 6 -OHZ*L25; 1 -OHZ*L32
18 -OHZ*DROP_OCQ_Y; 6 -OHZ*DROP_OHR_Z; 18 -CDP*L20; 6 -CDP*L22
1 -CDP*+OCF; 3 -CDP*DROP_OHP_YZQ; 40 -CDP*DROP_OCR_YQ; 8 -CYP*L22
16 -CYP*L25; 9 +HCQ*L11; 14 +HCQ*L19; 4 +HCQ*L24
8 +HCQ*L36; 14 +HCQ*C_OHD_ZQ; 50 +HCQ*DROP_OCR_YQ; 8 +HZQ*L10
7 -HFR*L1; 64 -HFR*L3; 59 -HFR*L10; 42 -HFR*L21
7 -HFR*L27; 27 -HFR*L32; 27 -HFR*L33; 102 -HFR*DROP_OHP_YZQ
43 -HFR*DROP_OCQ_Y; 4 -DFR*L10; 6 +OQR*L7; 33 +OQR*L16
17 +OQR*L19; 46 +OQR*L24; 85 +OQR*L26; 21 +OQR*L29
14 +OQR*L34; 23 +OQR*L35; 7 -DPR*L11; 27 -DPR*L20
18 -DPR*L25; 25 -DPR*DROP_OHR_Z; 3 -DPR*DROP_OCR_YQ; 12 -CYZ*L6
10 -CYZ*L7; 3 -CYZ*L15; 1 -CYZ*L21; 17 -CYZ*L23
1 -CYZ*L27; 12 -CYZ*L33; 12 -CYZ*RX_P; 7 -CYZ*DROP_OHR_Z
3 -OYP*L27; 25 -OYP*L29; 9 -OYP*L34; 15 -OYP*C_OHD_ZQ
96 -OYP*DROP_OHR_Z; 63 -OYP*TX_R_; 5 +OYQ*L12; 23 +OYQ*L18
6 -HPQ*L6; 15 -HPQ*L14; 25 -HPQ*L17; 1 -HPQ*L32
8 -HPQ*L33; 13 -HPQ*-OHD; 33 -HPQ*+OCF; 41 -HPQ*RX_P
6 -HPQ*DROP_OCR_YQ; 47 -HPQ*TX_R_; 9 -CQR*L17; 5 +CFQ*L2
11 +CFQ*L15; 42 +CFQ*L26; 5 +CFQ*L34; 9 +CFQ*L36
6 +CFQ*+OCF; 9 +OFZ*L2; 1 +OFZ*L4; 9 +OFZ*L21
46 +OFZ*DROP_OHP_YZQ; 9 +OFZ*DROP_OCQ_Y; 23 +OFZ*DROP_OCR_YQ; 1 +OFZ*TX_R_
28 +ODQ*L25; 2 +ODQ*+OCF; 9 +ODQ*DROP_OHP_YZQ; 1 +DZQ*L0
2 +DZQ*L2; 17 +FYQ*L19; 35 +FYQ*L24; 50 +FYQ*L27
18 +FYQ*L33; 16 +FYQ*L34; 32 +FYQ*-OHD; 89 +FYQ*DROP_OHP_YZQ
129 +FYQ*DROP_OCR_YQ; 7 -YQR*L6; 50 -YQR*L23; 85 -YQR*L26
58 -YQR*-OHD; 17 -YQR*+OCF; 77 -YQR*DROP_OHP_YZQ; 17 -YQR*RY_P
50 -YQR*DROP_OCQ_Y; 46 -YQR*DROP_OHR_Z; 17 -YQR*TY_R_; 15 -HDQ*L17
2 -DYZ*L17; 1 -DYQ*L14; 32 +FZQ*L17; 10 +FZQ*L27
12 -YZQ*L12; 18 +ZPQ*L2; 2 +ZPQ*L4; 9 +ZPQ*L6
13 +ZPQ*L9; 9 +ZPQ*L11; 12 +ZPQ*L30; 15 +ZPQ*-OHD
12 +ZPQ*DROP_OHR_Z; 4 C_OHF_Z*L15; 20 C_OHF_Z*L26; 11 C_ODR_Q*L25
8 C_OYR_Q*L1; 6 C_OYR_Q*L3; 12 C_OYR_Q*L6; 10 C_OYR_Q*L18
23 C_OYR_Q*L20; 18 C_OYR_Q*L22; 111 C_OYR_Q*L27; 5 C_OYR_Q*DROP_OCQ_Y
2 C_OPQ_Y*TY_R_; 10 C_HYP_Q*L12; 1 C_HZP_Q*L28; 8 C_CFY_Q*L6
3 C_CFY_Q*L25; 30 C_CFY_Q*L26; 5 C_CFY_Q*L34; 8 C_CFY_Q*RX_P
68 C_FYR_Q*L17; 2 C_FYR_Q*L27; 4 C_YZR_Q*L27; 18 SP_OCDH_YQ_OD1*L17
14 Q_OCPH_YZQ*L8; 27 Q_OCPH_YZQ*TX_R_; 9 Q_OYFH_Z*L17; 4 SP_OYRH_ZQ_OR-1*L27
17 Q_OCQZ_Y*L17; 7 Q_OCPQ_Y*L1; 4 Q_OCPQ_Y*L12; 2 Q_OYDR_Q*L1
3 SP_OPDZ_YQ_OD1*L17; 4 SP_OPDZ_YQ_PZ-1*L27; 1 Q_HYCP_Q*L17; 9 M_HOPYZQ_-1_3*L1
15 M_HOPYZQ_-1_3*L18; 12 M_HOPYZQ_-1_3*L24
```

Upper bound: `-2245590517/5687500000`.

### Leaf RUTmmpmmmmpmppppp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ -CQR +CFQ -ODY +OFZ +ODQ +DZQ +FYQ +YQR`.

```c1top-geometry
C CFY Q Z -FYZ 881332897/1467182500
C CYR Q Z +YRZ 39687/59000
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ -DPQ
P DOHQR -DQR
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR +FQR
P FODPR +FPR
P YOHZQ -YZQ
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHP YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
1 L0*L1*L20; 54 L0*L4*TX_R_; 24 L0*L17*L29; 3 L0*L20*TX_R_
19 L0*L22*TX_R_; 20 L0*L31*TX_R_; 4 L1*L1*L30; 9 L1*L3*L24
6 L1*L3*RY_P; 5 L1*L4*L6; 2 L1*L5*L29; 7 L1*L5*L30
1 L1*L6*L7; 21 L1*L6*L10; 20 L1*L6*L26; 7 L1*L6*L29
8 L1*L6*DROP_OHR_Z; 1 L1*L8*L19; 4 L1*L8*-OHD; 23 L1*L10*L20
26 L1*L17*L31; 15 L1*L17*DROP_OHP_YZQ; 17 L1*L21*L25; 38 L1*L25*L26
1 L1*L28*RX_P; 12 L1*RX_P*TY_R_; 9 L2*L2*L17; 14 L2*L17*L34
2 L2*L18*L25; 2 L2*L18*L30; 5 L2*L20*L27; 2 L2*L27*L34
2 L3*L3*L19; 11 L3*L4*L22; 7 L3*L8*DROP_OCR_YQ; 6 L3*L10*TY_R_
32 L3*L17*DROP_OCR_YQ; 56 L3*L18*L24; 2 L3*L18*L26; 8 L3*L18*TX_R_
36 L3*L27*DROP_OCQ_Y; 13 L3*C_OHD_ZQ*DROP_OCQ_Y; 2 L4*L10*L30; 13 L4*L12*RX_P
15 L4*L17*L18; 16 L4*L17*L28; 15 L4*L17*RY_P; 17 L4*L17*DROP_OHR_Z
10 L4*L20*TX_R_; 10 L4*L22*TX_R_; 30 L4*L31*TX_R_; 7 L5*L8*L8
39 L6*L6*L17; 3 L6*L6*TY_R_; 3 L6*L10*L36; 25 L6*L10*RX_P
4 L6*L12*TY_R_; 39 L6*L17*L25; 64 L6*L17*DROP_OCR_YQ; 39 L6*L17*TX_R_
2 L6*L21*L26; 11 L6*L21*TY_R_; 9 L6*L22*TX_R_; 20 L6*L26*L31
5 L6*L26*L36; 30 L6*RX_P*TY_R_; 4 L7*L9*L17; 15 L7*L27*L27
1 L7*L27*TX_R_; 10 L8*L10*L21; 19 L8*L10*TY_R_; 3 L8*L15*L30
55 L8*L17*L27; 4 L8*L17*TX_R_; 31 L8*L18*L29; 13 L8*L20*L28
11 L8*L30*TY_R_; 6 L9*L10*L17; 4 L9*L17*L24; 10 L9*L17*L36
4 L9*L21*L27; 1 L9*L22*RY_P; 17 L10*L10*L25; 3 L10*L12*L30
2 L10*L13*RX_P; 4 L10*L14*L29; 5 L10*L17*L17; 27 L10*L17*+OCF
46 L10*L17*TX_R_; 4 L10*L21*L25; 11 L10*L25*L26; 17 L10*L25*L30
34 L10*L25*RX_P; 9 L10*L25*TX_R_; 2 L10*L26*L31; 6 L10*L31*RX_P
3 L10*DROP_OHR_Z*TY_R_; 1 L11*L17*L34; 4 L12*L13*DROP_OCR_YQ; 2 L12*L15*L20
3 L12*L16*L34; 3 L12*L17*TY_R_; 1 L12*L19*L24; 4 L12*L20*L27
12 L12*L20*L32; 6 L12*L23*RX_P; 2 L12*L35*TY_R_; 4 L13*L17*L28
4 L13*L30*TY_R_; 3 L14*L17*L33; 27 L14*RX_P*TX_R_; 2 L15*L17*L24
9 L16*RX_P*RX_P; 19 L17*L17*+OCF; 3 L17*L17*DROP_OCQ_Y; 17 L17*L18*+OCF
28 L17*L18*DROP_OHP_YZQ; 8 L17*L19*L25; 3 L17*L21*RY_P; 1 L17*L23*L35
12 L17*L23*DROP_OHR_Z; 46 L17*L24*DROP_OCQ_Y; 10 L17*L27*C_OHD_ZQ; 1 L17*L31*DROP_OCQ_Y
9 L17*DROP_OHP_YZQ*DROP_OHP_YZQ; 19 L17*DROP_OHP_YZQ*RY_P; 6 L18*L24*L27; 3 L18*L24*TY_R_
25 L18*L30*TX_R_; 6 L18*L33*RX_P; 9 L18*RX_P*RX_P; 5 L19*L30*RX_P
9 L20*L27*TX_R_; 11 L20*L28*L30; 2 L22*L30*L30; 7 L22*L31*L31
7 L22*L33*RX_P; 9 L22*TX_R_*TX_R_; 18 L25*L27*L27; 18 L27*L27*TX_R_
8 L27*L29*L29; 12 L27*L29*C_OHD_ZQ; 9 L27*L35*TX_R_; 3 L27*RY_P*TX_R_
8 RX_P*RX_P*TY_R_; 5 CENT*L18; 13 CENT*L20; 5 +HCF*L17
2 +HDF*L10; 4 -OHZ*L32; 18 -OHZ*TX_R_; 10 -CDP*L9
27 -CDP*L16; 3 -CDP*L21; 3 -CDP*L23; 15 -CDP*L33
42 -CDP*DROP_OHR_Z; 6 -CYP*L0; 6 -CYP*L3; 6 -CYP*L14
9 -CYP*L20; 17 -CYP*L30; 11 +HZP*L17; 24 -OHQ*L17
1 +HCQ*L0; 16 +HCQ*L10; 2 +HCQ*DROP_OHR_Z; 6 -CYQ*L4
4 -CYQ*L27; 5 -HFR*L9; 91 -HFR*L25; 8 -HFR*L29
15 -HFR*L31; 4 -HFR*L33; 34 -HFR*DROP_OHP_YZQ; 50 -HFR*DROP_OCQ_Y
91 -HFR*DROP_OHR_Z; 69 -HFR*DROP_OCR_YQ; 3 -DFR*L6; 12 -DFR*L21
3 -DFR*L24; 3 -DFR*L28; 7 -DFR*-OHD; 51 -DFR*C_OHD_ZQ
33 -DFR*DROP_OHP_YZQ; 3 -DFR*RY_P; 12 -DFR*DROP_OCQ_Y; 16 +OQR*L10
17 +OQR*L12; 10 -CYZ*L9; 1 -CYZ*L19; 11 -CYZ*L21
2 -CYZ*L24; 27 -CYZ*DROP_OHP_YZQ; 25 -CYZ*TX_R_; 31 -OYP*L7
34 -OYP*L17; 82 -OYP*L20; 17 -OYP*L31; 5 -OYP*L36
23 -OYP*+OCF; 44 -OYP*TX_R_; 21 +OYQ*L1; 80 +OYQ*L3
10 +OYQ*L5; 6 +OYQ*L15; 10 +OYQ*L21; 5 +OYQ*L23
49 +OYQ*L31; 43 +OYQ*+OCF; 1 +OYQ*RY_P; 24 +OYQ*DROP_OHR_Z
48 +OYQ*DROP_OCR_YQ; 25 +OYQ*TX_R_; 11 -OZQ*L17; 5 -HPQ*L5
25 -HPQ*L7; 45 -HPQ*L8; 13 -HPQ*L13; 21 -HPQ*L17
7 -HPQ*L35; 24 -HPQ*+OCF; 17 -HPQ*RX_P; 11 -HPQ*DROP_OHR_Z
2 -HPQ*DROP_OCR_YQ; 12 +CFQ*L1; 32 +CFQ*DROP_OHP_YZQ; 45 +CFQ*DROP_OCR_YQ
20 -ODY*DROP_OHP_YZQ; 28 -ODY*DROP_OHR_Z; 19 -ODY*TX_R_; 2 +OFZ*L9
2 +OFZ*RX_P; 6 +OFZ*DROP_OCQ_Y; 5 +OFZ*DROP_OCR_YQ; 10 +ODQ*L20
7 +ODQ*L35; 5 +ODQ*DROP_OCQ_Y; 1 +DZQ*L12; 2 +DZQ*L24
19 +FYQ*L0; 2 +FYQ*L4; 6 +FYQ*L14; 17 +FYQ*L27
28 +YQR*L3; 17 +YQR*L8; 22 +YQR*L18; 61 +YQR*L25
2 +YQR*L28; 9 +YQR*L29; 25 +YQR*L33; 63 +YQR*DROP_OHP_YZQ
22 +YQR*RY_P; 69 +YQR*DROP_OHR_Z; 31 -OFQ*L17; 3 +CPQ*L25
2 +CPQ*TY_R_; 3 -DYZ*L17; 7 -DYQ*L9; 5 -DYQ*L10
10 -DYQ*L21; 5 -DYQ*L23; 18 -DYQ*L24; 19 -DYQ*L26
3 -DYQ*L31; 5 -DYQ*L35; 11 -DYQ*TX_R_; 1 -DQR*L8
12 -DQR*L30; 63 +FQR*L17; 3 -YZQ*L12; 28 +YPQ*L17
11 +ZPQ*L16; 34 +ZPQ*L31; 4 +ZPQ*DROP_OHR_Z; 25 +ZPQ*TX_R_
1 C_OCZ_Y*L27; 20 C_OCR_YQ*L6; 1 C_OCR_YQ*L34; 15 C_ODR_Q*L12
22 C_OPR_YQ*L6; 3 C_OPR_YQ*L12; 3 C_HDY_Q*L17; 16 C_CYR_Q*L22
2 C_DYR_Q*L1; 12 C_DYR_Q*L3; 17 C_DYR_Q*L10; 1 TPX_R_*L12
3 TPX_R_*L27; 15 SP_OCDH_YQ_CH-1*L17; 3 Q_OCPH_YZQ*L4; 28 Q_OCPH_YZQ*TX_R_
4 SP_OCRH_ZQ_CH-1*L17; 19 Q_OCPQ_Y*L6; 14 Q_OCPQ_Y*L9; 6 Q_OCPQ_Y*L35
11 Q_OCPQ_Y*RX_P; 5 Q_OYDR_Q*L1; 14 Q_OYDR_Q*L8; 20 Q_OYDR_Q*L30
10 SP_OPDZ_YQ_PZ-1*L2; 3 SP_OPDZ_YQ_PZ-1*TX_R_; 5 Q_OPDQ_Y*L0; 8 Q_CDRY_Q*L12
11 Q_CRFY_Q*L17; 8 Q_CPRY_Q*L17; 3 Q_DRFY_Q*L12; 5 Q_DRFY_Q*L17
8 M_HOPYZQ_-1_3*L9; 2 M_HOPYZQ_-1_3*L24; 22 M_HOPYZQ_-1_4*TX_R_
```

Upper bound: `-8406760639/13000000000`.

### Leaf RUTmmpmmmmpp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ -CQR +CFQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYQ +ODQ
P OHDZP -OZP
P OHFQR -OFQ
P OHYQR +OYR
P OCFYQ -OFY
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPQ -DPQ
P DOHQR -DQR
P FOCPQ -FPQ
P FOCQR +FQR
P FODPR +FPR
P YOHDQ +YDQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCDZ +YDZ
P YOCZP -YZP
P ZODPR +ZPR
P POHQR -PQR
P QOHFZ +QFZ
P QOHZR -QZR
M OHDQZY 1
M ODHQYZ -1
M HODYZQ -1
M HDOYQZ 1
M DOHZYQ 1
M DHOZQY -1
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
```

```c1top-bounds
T OHD YZQ 0 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
73 L0*L0*TX_R_; 11 L0*L1*L2; 2 L0*L3*L14; 3 L0*L4*L35
37 L0*L4*TX_R_; 5 L0*L7*TX_R_; 5 L0*L10*TX_R_; 16 L0*L14*TX_R_
10 L0*L17*L29; 1 L0*L18*L25; 2 L0*L18*RY_P; 18 L0*L20*L29
8 L0*L21*TX_R_; 2 L0*L23*L31; 30 L0*L33*TX_R_; 5 L0*L35*TX_R_
112 L0*DROP_OCQ_Y*TX_R_; 11 L1*L1*L6; 2 L1*L4*L4; 6 L1*L4*L6
7 L1*L4*L12; 12 L1*L6*L6; 19 L1*L6*L17; 1 L1*L12*L24
10 L1*L17*L17; 41 L1*L20*L26; 5 L1*L22*L30; 23 L1*L24*L27
5 L1*L31*RY_P; 3 L2*L3*RY_P; 4 L2*L6*L34; 1 L2*L12*L32
2 L2*L19*RY_P; 15 L2*L20*L27; 8 L2*L22*RX_P; 52 L2*L24*RY_P
18 L2*L33*RY_P; 2 L2*L34*DROP_OCQ_Y; 18 L2*L36*DROP_OCQ_Y; 35 L2*RY_P*DROP_OCQ_Y
13 L2*DROP_OCQ_Y*TX_R_; 4 L3*L3*L36; 7 L3*L4*L6; 15 L3*L5*L18
1 L3*L9*L23; 8 L3*L11*L17; 11 L3*L12*DROP_OCR_YQ; 4 L3*L14*RX_P
2 L3*L14*TY_R_; 17 L3*L18*L20; 15 L3*L18*TX_R_; 75 L3*L18*TY_R_
1 L3*L24*L24; 86 L4*L4*RX_P; 2 L4*L4*RY_P; 12 L4*L5*L6
14 L4*L5*L24; 4 L4*L5*L33; 12 L4*L6*L23; 7 L4*L6*RX_P
23 L4*L6*TX_R_; 6 L4*L8*L19; 15 L4*L15*L20; 54 L4*L17*RX_P
62 L4*L17*DROP_OCQ_Y; 4 L4*L17*TY_R_; 6 L4*L18*L30; 2 L4*L19*L19
5 L4*L20*L28; 3 L4*L23*L33; 8 L4*L24*TY_R_; 26 L4*L26*TX_R_
2 L4*L28*RY_P; 3 L4*L33*DROP_OCR_YQ; 12 L4*TX_R_*TY_R_; 10 L6*L6*L23
38 L6*L17*L18; 20 L6*L18*L23; 5 L6*L24*L34; 32 L7*L17*L23
21 L7*L27*L29; 58 L7*L27*DROP_OCQ_Y; 7 L8*L8*L17; 2 L8*L10*L23
92 L8*L17*DROP_OCQ_Y; 2 L8*L18*L19; 3 L8*L18*L25; 1 L8*L18*L35
50 L8*RY_P*TX_R_; 1 L9*L10*L12; 47 L9*L17*L22; 7 L9*L17*L30
2 L10*L11*L20; 2 L10*L18*RX_P; 9 L10*L20*RY_P; 12 L10*L27*DROP_OHP_YZQ
3 L10*L30*DROP_OCQ_Y; 7 L11*L12*DROP_OCQ_Y; 52 L11*L17*TX_R_; 13 L12*L17*DROP_OCQ_Y
1 L12*L18*L30; 5 L12*L18*TX_R_; 6 L12*L19*L24; 1 L12*L19*L33
20 L12*L24*L27; 7 L12*L35*DROP_OHP_YZQ; 5 L12*DROP_OHP_YZQ*RY_P; 20 L12*DROP_OCR_YQ*TX_R_
5 L14*L16*RY_P; 2 L14*L17*TY_R_; 1 L14*L30*DROP_OCQ_Y; 31 L16*L17*L18
15 L17*L17*DROP_OCR_YQ; 5 L17*L18*L36; 72 L17*L18*DROP_OCR_YQ; 28 L17*L18*TX_R_
13 L17*L19*TX_R_; 16 L17*L20*L26; 3 L17*L20*L28; 13 L17*L20*L34
12 L17*L22*L25; 9 L17*L22*L35; 25 L17*L23*L24; 4 L17*L23*L29
2 L17*L23*DROP_OCR_YQ; 46 L17*L25*L26; 12 L17*L25*TY_R_; 10 L17*L26*L32
3 L17*L35*TY_R_; 10 L17*-OHD*DROP_OCQ_Y; 72 L17*RY_P*DROP_OCR_YQ; 58 L17*DROP_OCR_YQ*TX_R_
2 L18*L18*L28; 2 L18*L22*L25; 11 L18*L25*L26; 31 L18*RX_P*RX_P
22 L20*RY_P*TX_R_; 1 L25*L25*L31; 17 L25*L27*TY_R_; 11 L27*L29*L33
2 L27*L29*DROP_OCQ_Y; 11 L27*RY_P*TX_R_; 17 L27*DROP_OCR_YQ*TX_R_; 1 L30*RY_P*TX_R_
8 KLOW*L29; 5 KLOW*RY_P; 5 CENT*TX_R_; 3 QUADQ*TX_R_
7 +ODF*L17; 3 +OYZ*L4; 1 -HYZ*L26; 8 -OHZ*L27
30 +OCP*L3; 4 -HFP*L17; 90 -CDP*L5; 3 -CDP*L10
2 -CDP*L19; 52 -CDP*L24; 20 -CDP*L33; 91 -CDP*DROP_OHP_YZQ
55 -CDP*DROP_OCQ_Y; 77 -CDP*DROP_OCR_YQ; 15 -CDP*TX_R_; 6 +DFP*L12
10 -ODP*L17; 15 +HCQ*L6; 8 +HCQ*+OCF; 1 +HZQ*L8
42 -HFR*L13; 11 -HFR*L19; 144 -HFR*L23; 40 -HFR*L28
33 -HFR*-OHD; 56 -HFR*+OCF; 84 -HFR*DROP_OHP_YZQ; 224 -HFR*DROP_OCQ_Y
63 -HFR*DROP_OCR_YQ; 23 -DFR*L6; 3 +FYR*L17; 15 +FZR*L0
2 +OQR*L19; 15 +OQR*L29; 2 -CYZ*L0; 1 -CYZ*L21
5 -CYZ*L24; 6 -CYZ*DROP_OHP_YZQ; 21 -CYZ*DROP_OCQ_Y; 3 -CYZ*TY_R_
7 -OYP*TX_R_; 5 +OYQ*L0; 1 +OYQ*L8; 10 +OYQ*L19
5 +OYQ*L24; 1 +OYQ*L36; 35 +OYQ*DROP_OHP_YZQ; 3 +OYQ*DROP_OCR_YQ
14 -OZQ*L17; 13 -HPQ*L3; 18 -HPQ*L23; 27 -HPQ*L24
30 -HPQ*L29; 28 -HPQ*DROP_OCQ_Y; 11 +CFQ*L16; 20 +CFQ*L18
1 +ODY*L0; 6 +ODY*L5; 9 +ODY*L6; 5 +ODY*L14
5 +ODY*L15; 8 +ODY*DROP_OHP_YZQ; 20 +ODY*DROP_OCQ_Y; 13 +ODY*DROP_OCR_YQ
54 +ODY*TX_R_; 13 +ODQ*L17; 20 -OFQ*L27; 16 +CPQ*L17
2 +CPQ*L27; 32 +FQR*L0; 12 +FQR*L4; 10 +FQR*L6
10 +FPR*L0; 2 -YZQ*L1; 1 -YZQ*RX_P; 6 -YZQ*DROP_OCR_YQ
1 -YZP*L8; 16 -PQR*L17; 5 +ZQR*L6; 5 -DZQ*L6
1 -DZQ*L34; 1 -DZQ*RY_P; 10 -DZQ*DROP_OCQ_Y; 3 -DZQ*DROP_OCR_YQ
6 +ZPQ*L4; 16 C_OCR_YQ*L6; 5 C_ODZ_Y*L4; 27 C_ODQ_Y*L18
2 C_ODR_YQ*L1; 35 C_ODR_YQ*L5; 76 C_ODR_YQ*L6; 1 C_ODR_YQ*L24
42 C_ODR_YQ*+OCF; 55 C_ODR_YQ*RX_P; 38 C_ODR_YQ*DROP_OCQ_Y; 20 C_ODR_YQ*DROP_OCR_YQ
11 C_HCF_Q*L1; 1 C_HDZ_Q*L14; 79 TPX_R_*L0; 4 Q_OCFH_YZQ*L4
66 Q_OCFH_YZQ*DROP_OCR_YQ; 7 Q_OCPH_YZQ*RX_P; 27 Q_OPDH_YZQ*L17; 7 Q_ORFH_Z*L12
23 Q_ORFH_Z*L17; 1 Q_OYQH_Z*L14; 10 Q_OYQH_Z*L22; 1 Q_OYQH_Z*L35
1 Q_OCDR_YQ*L30; 19 Q_OCPF_YQ*L17; 1 Q_ODQZ_Y*L18; 5 Q_ODQZ_Y*L24
14 Q_OPDQ_Y*L2; 1 Q_HYCF_Q*L18; 7 Q_HCRF_Q*L6; 2 Q_HYPD_Q*L18
3 Q_HZPD_Q*L2; 1 Q_HZPD_Q*L27; 1 Q_DRFZ_Q*L3; 57 M_HOPYZQ_-1_2*TX_R_
10 M_HOPYZQ_-1_4*DROP_OCQ_Y; 5 M_HOPYZQ_-1_4*TX_R_; 5 M_ODHQYZ_-1_2*L7; 4 M_ODHQYZ_-1_2*L10
10 M_ODHQYZ_-1_2*L23; 8 M_ODHQYZ_-1_2*+OCF; 16 M_ODHQYZ_-1_2*RX_P; 27 M_ODHQYZ_-1_2*TX_R_
2 M_ODHQYZ_-1_4*L3; 3 M_ODHQYZ_-1_4*L4; 5 M_ODHQYZ_-1_4*L6; 9 M_ODHQYZ_-1_4*TY_R_
```

Upper bound: `-12301641113/2275000000`.

### Leaf RUTmmpmmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPQ +CQR`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPR +ZPR
P POHFQ +PFQ
P POHQR -PQR
P QOHZR -QZR
P QOCYR -QYR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHP YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
50 L0*L4*TX_R_; 13 L0*L5*TY_R_; 6 L0*L7*TX_R_; 24 L0*L17*TY_R_
45 L0*DROP_OCQ_Y*TX_R_; 7 L1*L2*L6; 17 L1*L2*L22; 11 L1*L2*TY_R_
6 L1*L3*L17; 13 L1*L4*L4; 13 L1*L4*L27; 8 L1*L4*RX_P
3 L1*L6*L6; 6 L1*L6*L18; 31 L1*L6*TY_R_; 12 L1*L17*TX_R_
4 L1*L20*L27; 9 L1*L21*DROP_OCR_Y; 7 L1*L21*TY_R_; 8 L1*L25*DROP_OHP_YZQ
40 L1*L25*TY_R_; 7 L2*L3*L18; 6 L2*L3*DROP_OCR_Y; 1 L2*L4*TY_R_
5 L2*L5*L23; 3 L2*L5*RY_P; 4 L2*L18*L21; 5 L2*L19*L20
23 L2*L20*RY_P; 14 L2*L20*TY_R_; 6 L2*L26*L27; 4 L2*L27*RY_P
4 L2*DROP_OHP_YZQ*RY_P; 7 L2*RX_P*TY_R_; 9 L4*L4*TX_R_; 2 L4*L6*TX_R_
1 L4*L13*L17; 13 L4*L17*L20; 15 L4*L17*L25; 4 L4*L17*L28
44 L4*L17*DROP_OHP_YZQ; 8 L4*L17*DROP_OCQ_Y; 3 L4*RY_P*TX_R_; 1 L5*L27*+OCF
32 L6*L22*TY_R_; 7 L6*DROP_OHP_YZQ*TY_R_; 2 L12*L17*C_OHD_Z; 43 L17*L17*L26
7 L17*L18*DROP_OCR_Y; 27 L17*L20*DROP_OCR_Y; 16 L17*L26*L28; 28 L17*L26*L29
7 L17*L26*RY_P; 5 L17*L27*C_OCF_Y; 2 L17*L27*DROP_OCQ_Y; 6 L17*L28*L29
1 L17*L28*L33; 2 L17*L28*TX_R_; 43 L17*RX_P*TY_R_; 6 L18*L21*L27
8 L19*L20*TY_R_; 14 L22*L24*RX_P; 13 L22*DROP_OHP_YZQ*TX_R_; 6 L27*L27*+OCF
1 L27*L29*L29; 4 KLOW*L20; 7 KLOW*RY_P; 12 KLOW*TX_R_
22 KLOW*TY_R_; 10 -OHP*L17; 8 +HCP*L17; 9 -CDP*L20
4 -CDP*L28; 7 -CDP*L29; 13 -CDP*DROP_OHP_YZQ; 11 -CDP*DROP_OCR_Y
4 -ODP*L2; 3 -ODP*L17; 1 +HZP*L17; 4 +OCQ*L17
13 -HFQ*L17; 3 -HFR*L18; 3 -HFR*L29; 16 -HFR*C_OCF_Y
18 -HFR*DROP_OHP_YZQ; 49 -HFR*DROP_OCQ_Y; 40 -HFR*DROP_OCR_Y; 21 -DFR*L4
2 -DFR*L6; 4 -DFR*L27; 9 -DFR*L28; 16 -DFR*RX_P
3 -DFR*RY_P; 13 -DFR*DROP_OCQ_Y; 4 -DFR*DROP_OCR_Y; 3 +HDR*L6
9 -DPR*L1; 7 -HPQ*L5; 4 -HPQ*C_OCF_Y; 19 -HPQ*DROP_OHP_YZQ
42 -HPQ*DROP_OCR_Y; 10 +CQR*L5; 24 +CQR*L23; 10 +CQR*-OHD
13 +CQR*DROP_OHP_YZQ; 14 +CQR*RX_P; 5 +CQR*RY_P; 24 +CQR*DROP_OCQ_Y
6 -HDQ*L17; 6 +CPQ*L1; 5 +CPQ*L27; 10 -DPQ*L17
5 -DPQ*L27; 3 -FPQ*L1; 12 -PQR*L1; 10 C_OPQ_Y*L1
10 C_OPQ_Y*L3; 50 C_OPQ_Y*L26; 15 C_OPQ_Y*L27; 9 C_OPQ_Y*RX_P
5 C_CPR_Q*L22; 3 TPX_R_*L0; 4 TPX_R_*L4; 7 TPX_R_*L28
1 TPX_R_*RX_P; 19 TPX_R_*DROP_OCQ_Y; 1 Q_OCPZ_Y*L17; 1 Q_OCPQ_Y*L4
18 Q_OPDR_YQ*L2; 4 Q_OPDR_YQ*L6; 15 Q_CPDF_Q*L27
```

Upper bound: `-749399629/500000000`.

### Leaf RUTmmpmmpmmmmmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ -CFQ -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZR +ODZ
P OHFZQ -OFQ
P OHYZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FOCZQ +FZQ
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHZR -QZR
M OFPQZY 1
M OPFQYZ -1
M FOPYZQ -1
M FPOYQZ 1
M POFZYQ 1
M PFOZQY -1
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
18 L0*L0*L30; 5 L0*L3*L6; 2 L0*L10*L35; 4 L0*L12*L21
13 L0*L12*L31; 1 L0*L12*TY_R_; 17 L0*L16*RX_P; 4 L0*L17*L23
19 L0*L18*RX_P; 4 L0*L21*L31; 7 L0*L21*DROP_OCQ_Y; 23 L0*L33*RX_P
13 L0*RX_P*RX_P; 15 L0*RX_P*DROP_OCQ_Y; 11 L1*L1*L8; 1 L1*L2*L4
3 L1*L2*L8; 14 L1*L2*L30; 7 L1*L2*L32; 10 L1*L3*L14
6 L1*L5*L17; 5 L1*L6*L8; 4 L1*L6*L10; 16 L1*L6*L18
3 L1*L6*L22; 9 L1*L6*L36; 3 L1*L7*L17; 37 L1*L8*L14
46 L1*L8*L17; 9 L1*L9*L18; 5 L1*L10*L20; 22 L1*L10*RX_P
10 L1*L12*L12; 40 L1*L14*L30; 19 L1*L17*L19; 11 L1*L17*L20
23 L1*L17*L33; 6 L1*L20*L23; 4 L1*L20*L25; 2 L1*L21*L27
9 L1*L21*L30; 4 L1*L30*L36; 8 L2*L10*L15; 7 L2*L17*L27
8 L2*L18*L30; 1 L2*L23*TY_R_; 1 L3*L3*L35; 3 L3*L4*L5
3 L3*L5*L18; 1 L3*L7*L28; 1 L3*L8*RX_P; 14 L3*L10*L17
24 L3*L10*L30; 24 L3*L10*L31; 7 L3*L14*L14; 36 L3*L14*RX_P
13 L3*L17*L17; 1 L3*L22*L22; 3 L3*L22*L27; 3 L3*L22*TY_R_
4 L3*L28*L28; 32 L3*L30*L34; 1 L3*L31*DROP_OCQ_Y; 6 L4*L10*RX_P
1 L4*L28*RX_P; 2 L4*RX_P*RX_P; 20 L5*L17*L33; 1 L5*L28*DROP_OHP_YZ
10 L6*L14*L17; 14 L6*L14*L21; 3 L6*L14*L23; 10 L6*L14*L30
3 L6*L14*L31; 6 L6*L14*L33; 7 L6*L14*L35; 1 L6*L17*L28
4 L6*L18*L21; 36 L6*L18*L30; 2 L6*L18*RX_P; 2 L6*L22*L27
3 L6*L22*RX_P; 25 L7*L17*L18; 1 L8*L17*L17; 21 L8*L17*RX_P
6 L8*L18*L28; 1 L8*L18*L31; 3 L8*L18*L36; 7 L9*L14*L17
5 L10*L12*L23; 5 L10*L12*L30; 5 L10*L12*L31; 6 L10*L15*L17
19 L10*L17*DROP_OHP_YZ; 2 L10*L30*C_OHD_Z; 1 L11*L17*L30; 1 L12*L12*L27
35 L12*L13*L18; 2 L12*L14*L30; 3 L12*L14*L32; 23 L12*L17*L18
8 L12*L17*L36; 25 L12*L17*-OHD; 1 L12*L18*L33; 1 L12*L22*L28
1 L12*L23*L30; 2 L12*L27*L33; 2 L12*L30*L34; 1 L12*DROP_OHP_YZ*TY_R_
8 L13*L13*L17; 14 L14*L14*RX_P; 23 L14*L17*L17; 12 L14*L17*L20
1 L14*L17*L22; 42 L14*L17*L33; 5 L14*L20*L30; 1 L14*L24*L30
1 L14*L25*RX_P; 1 L15*L31*L34; 14 L16*L17*L23; 13 L17*L17*+OCF
15 L17*L19*L21; 12 L17*L22*L33; 8 L17*L23*L27; 2 L17*L23*TY_R_
2 L17*L27*-OHD; 5 L17*L27*DROP_OCQ_Y; 1 L17*L28*DROP_OHP_YZ; 14 L17*L34*L36
19 L17*L35*RX_P; 2 L18*L20*L28; 1 L18*L20*TY_R_; 7 L18*L21*L22
3 L19*L31*L36; 7 L22*L22*RX_P; 1 L22*L28*L33; 3 L22*L30*L30
1 L22*RX_P*RX_P; 3 L30*L31*DROP_OCQ_Y; 11 L31*L34*L34; 17 L31*L34*L36
23 CENT*L7; 6 CENT*L18; 16 CENT*L33; 29 -OHF*L17
1 +HDF*L18; 27 +OYZ*L3; 28 +OYZ*L14; 49 -HYZ*L1
39 -HYZ*L14; 13 -HYZ*L21; 13 -HYZ*L29; 32 -HYZ*-OHD
31 -HYZ*+OCF; 5 -HYZ*DROP_OCQ_Y; 1 -HYZ*TX_R_; 8 -HCY*L12
11 -HCZ*L31; 4 -HFZ*L10; 26 -HFZ*L18; 18 +CDZ*L17
4 -CDP*L22; 2 -CDP*L29; 6 -CDP*L32; 1 -CYP*L3
48 -CYP*L12; 19 -HFQ*L18; 12 +HZQ*L17; 7 +OCR*L17
4 -HFR*L20; 29 -CYZ*L0; 8 -CYZ*L15; 18 -CYZ*L20
153 -CYZ*L23; 54 -CYZ*DROP_OHP_YZ; 9 -CYZ*RX_P; 153 -CYZ*DROP_OCQ_Y
21 -OYP*L0; 36 -OYP*L13; 22 -OYP*L30; 23 -OYP*L31
46 -OYP*L33; 6 -OYP*L36; 1 -OZQ*L12; 1 -OZR*RX_P
30 +HPQ*L3; 5 +HPQ*L14; 6 +HPQ*L24; 6 +HPQ*L25
33 +HPQ*L29; 29 +HPQ*DROP_OHP_YZ; 1 +HPQ*DROP_OCQ_Y; 2 +HPQ*DROP_OCR_YQ
47 -FPQ*L3; 50 -FPQ*L6; 4 -FPQ*L14; 4 -FPQ*L18
50 -FPQ*L29; 27 -FPQ*C_OHD_Z; 44 -FPQ*DROP_OHP_YZ; 4 -FPQ*RY_P
8 -FPQ*DROP_OCQ_Y; 2 -FPQ*TY_R_; 1 -CQR*L12; 14 -CFQ*L8
21 -CFQ*L19; 8 -CFQ*L28; 14 -CFQ*L33; 16 -CFQ*-OHD
14 -CFQ*RX_P; 10 -CFQ*RY_P; 8 -CFQ*DROP_OCQ_Y; 6 -ODY*L18
17 -OFZ*L2; 17 -OFZ*L11; 50 -OFZ*L14; 42 -OFZ*L19
1 -OFZ*L22; 38 -OFZ*L32; 16 -OFZ*L33; 21 -OZP*L17
10 +CPQ*L0; 1 +ZQR*L12; 24 C_OFY_Z*L14; 12 C_OZP_Y*L12
2 C_OZP_Y*L17; 9 C_HFP_Q*L14; 29 C_HFP_Q*L20; 46 C_HFP_Q*L30
6 C_CFP_Q*L8; 3 C_CFP_Q*L14; 26 C_CFP_Q*L22; 3 C_CFP_Q*L28
20 Q_OYFH_Z*L14; 10 Q_OCPZ_Y*L6; 5 Q_OCPZ_Y*L8; 48 Q_OCPZ_Y*L30
1 Q_OCPQ_Y*L3; 3 Q_OPDZ_Y*L17; 4 Q_HZPF_Q*L31; 1 M_POFZYQ_1_3*L7
5 M_POFZYQ_1_3*L10; 13 M_POFZYQ_1_3*L29; 5 M_POFZYQ_1_3*L30; 5 M_POFZYQ_1_3*L31
5 M_POFZYQ_1_3*L32
```

Upper bound: `-1170294493/1000000000`.

### Leaf RUTmmpmmpmmmmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ -CFQ -ODY +OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DHCPQ -DPQ
P DHCQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHZR -QZR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
1 L0*L1*L3; 21 L0*L6*TY_R_; 1 L0*L8*L28; 6 L0*L10*L31
50 L0*L18*L21; 11 L0*L18*L30; 10 L0*L21*L36; 145 L0*L21*RX_P
30 L0*L22*L25; 1 L0*L26*L36; 22 L1*L2*L6; 82 L1*L2*L25
59 L1*L2*TY_R_; 33 L1*L5*L17; 48 L1*L6*L22; 8 L1*L8*L8
5 L1*L8*L30; 4 L1*L10*L27; 39 L1*L12*L18; 1 L1*L14*L27
24 L1*L14*L30; 134 L1*L17*L21; 226 L1*L17*L24; 16 L1*L17*L35
295 L1*L17*DROP_OHP_YZ; 125 L1*L17*DROP_OCQ_Y; 50 L1*L17*DROP_OCR_YQ; 44 L2*L5*L25
8 L2*L5*L27; 26 L2*L12*L15; 1 L2*L12*L34; 142 L2*L17*L28
2 L2*L17*RX_P; 241 L2*L17*DROP_OCR_YQ; 8 L2*L18*L30; 11 L2*L22*L27
5 L2*L23*L30; 7 L2*L25*TY_R_; 6 L2*L27*L27; 1 L2*L34*RX_P
38 L3*L10*L18; 12 L3*L14*L14; 8 L3*L15*L18; 278 L3*L17*L17
15 L3*L18*L34; 2 L3*L18*TX_R_; 5 L3*L22*L35; 8 L3*L22*TY_R_
3 L3*L26*L34; 6 L3*L34*L34; 1 L3*L34*L36; 18 L4*L12*L19
18 L4*L17*L21; 35 L4*L17*L31; 7 L4*L17*DROP_OCQ_Y; 80 L4*L17*TX_R_
82 L4*L17*TY_R_; 82 L5*L5*L25; 1 L5*L8*L10; 13 L5*L8*L14
72 L5*L18*L25; 7 L5*L25*L25; 6 L5*L25*L27; 4 L6*L6*L15
18 L6*L6*L23; 9 L6*L10*L23; 13 L6*L12*L15; 83 L6*L17*L22
77 L6*L17*RY_P; 100 L6*L17*DROP_OHR_Z; 175 L6*L18*L21; 22 L6*L18*L23
1 L6*L18*L30; 101 L6*L18*L34; 7 L6*L18*TY_R_; 15 L6*L26*L28
196 L6*L26*RX_P; 1 L7*L10*L26; 100 L7*L17*L24; 41 L7*L17*L32
1 L7*L22*L34; 1 L8*L14*L25; 42 L8*L17*L18; 2 L8*L17*L27
21 L8*L17*L34; 42 L8*L17*RY_P; 2 L8*L18*L23; 52 L9*L12*L18
47 L9*L31*L34; 1 L10*L11*L17; 18 L10*L12*L15; 51 L10*L12*L23
6 L10*L12*L32; 81 L10*L13*L17; 1 L10*L14*L25; 4 L10*L14*L27
6 L10*L14*L30; 88 L10*L17*L22; 2 L10*L20*L28; 1 L10*L30*RY_P
4 L11*L12*L26; 29 L11*L17*L30; 6 L12*L14*L32; 2 L12*L17*L29
2 L12*L17*TY_R_; 3 L12*L18*RX_P; 34 L12*L31*L32; 15 L14*L17*L19
6 L14*L17*L23; 3 L14*L17*L26; 10 L14*L17*L32; 6 L14*L18*L21
3 L14*L23*L25; 13 L14*L29*L30; 21 L15*L17*L35; 3 L17*L17*L18
280 L17*L17*+OCF; 3 L17*L17*RY_P; 12 L17*L17*DROP_OCQ_Y; 8 L17*L18*TY_R_
3 L17*L19*L33; 29 L17*L20*DROP_OCR_YQ; 12 L17*L21*RY_P; 90 L17*L22*L32
21 L17*L22*+OCF; 2 L17*L25*L30; 2 L17*L25*L35; 29 L17*L25*DROP_OCQ_Y
6 L17*L26*TY_R_; 9 L17*L27*DROP_OCQ_Y; 7 L17*L28*L30; 8 L17*L29*L34
29 L17*L31*L32; 2 L17*L33*+OCF; 3 L17*L34*RY_P; 2 L17*L36*TX_R_
9 L18*L21*L26; 6 L18*L25*L27; 9 L18*L25*L28; 3 L18*L25*L34
18 L18*L28*L30; 12 L18*L34*RX_P; 29 L21*L25*L28; 6 L21*L27*L27
3 L21*L27*L34; 6 L22*L25*L27; 1 L22*L28*L31; 4 L22*L29*L34
51 L22*L31*L34; 1 L25*L27*L28; 6 L25*L27*L29; 4 L26*L34*L35
1 L31*L31*L34; 20 L31*L34*L34; 1 L34*L35*TX_R_; 15 KLOW*L1
60 KLOW*L7; 1 KLOW*L9; 13 KLOW*L10; 20 KLOW*L12
63 KLOW*L19; 31 KLOW*L21; 8 KLOW*L23; 22 KLOW*L27
12 KLOW*L35; 289 KLOW*TX_R_; 2 KLOW*TY_R_; 10 CENT*L1
41 CENT*L30; 75 CENT*L31; 15 CENT*RX_P; 4 CENT*DROP_OCR_YQ
1 -HYZ*L4; 6 -HYZ*L10; 29 -HYZ*L14; 37 -HYZ*L18
28 -HYZ*-OHD; 117 +OCY*L17; 4 -HCY*L12; 44 -OHZ*L11
4 -OHZ*L17; 105 -OHZ*L18; 3 -OHZ*L20; 5 -OHZ*L26
15 -OHZ*L28; 41 -OHZ*L30; 5 +CDZ*L17; 49 -HFP*L17
57 -CDP*L0; 7 -CDP*L22; 244 -CDP*TX_R_; 64 -CYP*L6
65 +HCQ*L17; 2 -CZQ*L17; 370 -HFR*L2; 17 -HFR*L5
1 -HFR*L11; 33 -HFR*L19; 52 -HFR*L20; 213 -HFR*L25
1 -HFR*L31; 123 -HFR*DROP_OHP_YZ; 44 -HFR*DROP_OCQ_Y; 213 -HFR*DROP_OHR_Z
1 -HFR*DROP_OCR_YQ; 7 -DFR*L1; 1 -DFR*L8; 3 -DFR*L14
7 -DFR*L18; 6 -DFR*L25; 1 -DFR*L27; 44 -DFR*C_OHD_Z
244 -DFR*RX_P; 80 +HDR*L17; 43 +OQR*L6; 1 +OQR*L10
76 -DPR*L1; 46 -DPR*L2; 82 -DPR*L5; 3 -DPR*L15
8 -DPR*L19; 30 -DPR*L21; 6 -DPR*L27; 6 -DPR*L29
56 -DPR*-OHD; 13 -CYZ*L8; 48 -CYZ*L9; 18 -CYZ*L27
16 -CYZ*L28; 61 -CYZ*C_OCF_Y; 38 -CYZ*RY_P; 51 -CYZ*DROP_OCQ_Y
22 -CYZ*TY_R_; 42 -OYP*L0; 11 -OYP*L14; 22 -OYP*L29
1 -OYP*L32; 52 -OYP*L33; 24 -OYP*-OHD; 2 -OYP*DROP_OCQ_Y
2 -OYP*TX_R_; 35 +OYQ*L1; 86 +OYQ*L14; 5 +OYQ*L18
1 +OYQ*L28; 86 +OYQ*L34; 84 +HPQ*L3; 12 +HPQ*L9
51 +HPQ*L10; 10 +HPQ*L15; 15 +HPQ*L18; 23 +HPQ*L24
52 +HPQ*L29; 12 +HPQ*L30; 262 +HPQ*DROP_OHP_YZ; 82 +HPQ*RX_P
71 +HPQ*DROP_OCR_YQ; 123 -FPQ*L6; 55 -FPQ*L10; 12 -FPQ*L13
15 -FPQ*L18; 375 -FPQ*L25; 80 -FPQ*L26; 67 -FPQ*-OHD
242 -FPQ*DROP_OHP_YZ; 114 -FPQ*RX_P; 428 -FPQ*DROP_OHR_Z; 71 -CQR*L0
8 -CQR*L7; 6 -CQR*L27; 3 -CQR*L34; 1 -CQR*TX_R_
5 -CFQ*L3; 105 -CFQ*L6; 46 -CFQ*L10; 4 -CFQ*L14
87 -CFQ*L16; 233 -CFQ*L19; 175 -CFQ*L25; 58 -CFQ*L28
5 -CFQ*L33; 58 -CFQ*RY_P; 176 -CFQ*DROP_OHR_Z; 36 -CFQ*DROP_OCR_YQ
14 -ODY*L14; 18 -ODY*L18; 1 -ODY*TX_R_; 4 +OFZ*L6
14 +OFZ*L8; 1 +OFZ*L10; 101 +OFZ*L18; 3 +OFZ*TY_R_
33 +CPQ*L0; 3 +CPQ*L14; 1 -DQR*L10; 1 -DQR*L25
2 +ZQR*L17; 153 C_OCD_Y*L17; 332 C_OCR_YQ*L6; 23 C_OCR_YQ*L23
8 C_OCR_YQ*L28; 219 C_OFP_YQ*L17; 291 C_OPR_YQ*L2; 2 C_OPR_YQ*L31
64 C_CFP_Q*L6; 11 C_CFP_Q*L12; 284 C_CFP_Q*L22; 10 SP_OPFH_ZQ_OF-1*L17
165 Q_ORFH_Z*L17; 3 Q_CPDF_Q*L17
```

Upper bound: `-393087897/1000000000`.

### Leaf RUTmmpmmpmmmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ -CFQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYQ +ODQ
P OHDZP -OZP
P OHFQR -OFQ
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPQ -DPQ
P DOHQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHDQ +YDQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCDZ +YDZ
P YOCZP -YZP
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHZR -QZR
M OHDQZY 1
M ODHQYZ -1
M HODYZQ -1
M HDOYQZ 1
M DOHZYQ 1
M DHOZQY -1
```

```c1top-bounds
T OHD YZQ 0 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
3 L0*L0*L3; 97 L0*L0*TX_R_; 14 L0*L1*L9; 16 L0*L3*L21
69 L0*L4*RX_P; 8 L0*L5*L21; 9 L0*L8*L15; 4 L0*L8*L23
1 L0*L12*L13; 2 L0*L12*L35; 11 L0*L14*RX_P; 5 L0*L15*+OCF
28 L0*L16*TX_R_; 64 L0*L17*L20; 46 L0*L17*L27; 27 L0*L17*L28
27 L0*L17*L29; 31 L0*L20*L27; 4 L0*L23*L30; 3 L0*L28*L31
157 L0*RY_P*TX_R_; 166 L0*DROP_OCQ_Y*TX_R_; 13 L1*L6*L24; 3 L1*L12*RY_P
37 L1*L18*RX_P; 101 L1*L27*RX_P; 21 L2*L4*TX_R_; 4 L2*L12*L27
27 L2*L12*L32; 5 L2*L12*L34; 11 L2*L15*L20; 81 L2*L17*L28
10 L2*L27*RX_P; 26 L3*L4*L4; 3 L3*L4*L24; 16 L3*L10*L17
13 L3*L11*RX_P; 13 L3*L14*RX_P; 129 L3*L16*L18; 32 L3*L17*L34
23 L3*L22*TX_R_; 7 L3*L23*L30; 1 L3*L23*L34; 5 L3*L27*L34
1 L3*L28*L30; 49 L4*L4*RX_P; 19 L4*L6*RX_P; 1 L4*L8*L23
4 L4*L8*L32; 4 L4*L10*L30; 1 L4*L10*TX_R_; 58 L4*L17*-OHD
86 L4*L17*RX_P; 88 L4*L17*DROP_OCQ_Y; 18 L4*L17*TY_R_; 18 L4*L18*TX_R_
1 L4*L22*TX_R_; 9 L4*L26*L30; 1 L5*L12*L23; 4 L5*L12*L32
11 L5*L16*L17; 1 L6*L10*TX_R_; 67 L6*L17*L22; 15 L6*L18*TX_R_
2 L7*L21*L27; 7 L7*L27*+OCF; 47 L7*L27*DROP_OCQ_Y; 1 L8*L8*L19
5 L8*L8*L27; 174 L8*L16*L17; 18 L8*L17*-OHD; 6 L8*L18*L29
4 L8*L27*DROP_OHP_YZ; 37 L8*L27*DROP_OCQ_Y; 5 L8*L30*DROP_OCR_YQ; 1 L8*L35*RY_P
174 L9*L17*DROP_OHP_YZ; 1 L9*L18*TX_R_; 3 L10*L12*L36; 2 L10*L17*L21
9 L10*L17*RX_P; 1 L10*L19*L30; 14 L10*L27*RX_P; 13 L12*L17*L34
37 L12*L17*-OHD; 1 L12*L18*L32; 5 L12*L26*L30; 5 L12*L27*L36
4 L12*L27*RX_P; 5 L12*L27*DROP_OCQ_Y; 32 L12*L32*RX_P; 7 L12*L32*DROP_OCQ_Y
5 L12*L34*DROP_OCR_YQ; 2 L13*L18*L21; 11 L14*L14*L17; 19 L14*L17*L20
2 L14*L17*L25; 11 L14*L17*L34; 3 L14*L23*L27; 3 L14*L27*DROP_OCQ_Y
19 L14*L30*DROP_OHP_YZ; 10 L15*L27*RX_P; 2 L16*L21*L27; 16 L16*L27*RX_P
64 L17*L17*L28; 21 L17*L17*DROP_OCQ_Y; 25 L17*L17*DROP_OCR_YQ; 54 L17*L18*L24
73 L17*L18*DROP_OCQ_Y; 12 L17*L20*L24; 12 L17*L20*L29; 12 L17*L20*RX_P
12 L17*L21*DROP_OHP_YZ; 12 L17*L21*TX_R_; 13 L17*L25*DROP_OCQ_Y; 27 L17*L26*DROP_OCR_YQ
14 L17*L27*DROP_OCQ_Y; 24 L17*L28*L33; 5 L17*L35*DROP_OCR_YQ; 23 L17*RX_P*DROP_OCQ_Y
6 L18*L20*L27; 2 L18*L20*RX_P; 16 L18*L21*L24; 3 L18*L22*L25
4 L18*L23*L24; 28 L18*-OHD*RX_P; 73 L18*RX_P*DROP_OCQ_Y; 45 L18*RX_P*TX_R_
5 L20*L27*L28; 37 L20*L27*L32; 5 L20*L27*L34; 2 L20*L30*RY_P
25 L23*L27*TX_R_; 17 L25*L27*DROP_OCQ_Y; 27 L27*L27*DROP_OHP_YZ; 10 L27*L29*+OCF
49 L27*L29*DROP_OCQ_Y; 10 L27*L30*RY_P; 41 L27*DROP_OCQ_Y*TX_R_; 5 L30*L34*RX_P
23 KLOW*L5; 11 KLOW*L7; 99 KLOW*L16; 12 KLOW*L21
3 KLOW*L23; 12 KLOW*L27; 12 KLOW*L36; 95 KLOW*RY_P
45 KLOW*DROP_OCR_YQ; 24 KLOW*TX_R_; 10 FAN*L14; 17 CENT*L1
21 +CDF*L17; 5 +OYZ*L10; 7 +OYZ*L12; 6 -HYZ*L20
7 -HYZ*L31; 6 -HYZ*-OHD; 9 -HYZ*DROP_OCQ_Y; 4 -HFZ*L18
10 +OCP*L22; 74 -CDP*L5; 92 -CDP*L17; 233 -CDP*DROP_OHP_YZ
88 -CDP*DROP_OCQ_Y; 40 -CDP*TX_R_; 24 -CFP*L27; 1 -CYP*L6
1 +DYP*L30; 52 +OCQ*L17; 11 -HFQ*L2; 30 +CDQ*L17
7 +HYQ*L12; 2 +HZQ*L4; 68 -HFR*L17; 9 -HFR*L21
96 -HFR*L28; 13 -HFR*L29; 99 -HFR*C_OCF_Y; 87 -HFR*RX_P
213 -HFR*RY_P; 168 -HFR*DROP_OCQ_Y; 87 -HFR*DROP_OCR_YQ; 4 +FZR*L18
7 -DPR*L4; 17 -DPR*L23; 1 -DPR*L30; 13 -CYZ*L3
11 -CYZ*L4; 10 -CYZ*L12; 1 -CYZ*L20; 11 -CYZ*L28
45 -CYZ*DROP_OHP_YZ; 1 -CYZ*DROP_OCQ_Y; 14 -CYZ*DROP_OCR_YQ; 6 -OYP*L2
1 -OYP*L30; 15 +OYQ*L0; 41 +OYQ*L26; 2 +OYQ*L31
5 +OYQ*L35; 1 +OYQ*DROP_OHP_YZ; 15 +OYQ*RX_P; 4 -OZR*L18
64 +HPQ*L16; 13 +HPQ*L26; 4 +HPQ*L31; 61 +HPQ*DROP_OCR_YQ
1 -FPQ*L24; 17 -FPQ*L28; 6 -FPQ*L31; 51 -FPQ*DROP_OHP_YZ
105 -FPQ*DROP_OCR_YQ; 15 -FPQ*TX_R_; 7 -CQR*L6; 24 -CQR*L18
4 -HDQ*L15; 10 -HDQ*L23; 12 -HDQ*-OHD; 16 -HDQ*DROP_OCQ_Y
9 -HDQ*TX_R_; 7 -CFQ*L10; 12 -CFQ*L24; 6 -CFQ*L35
19 -CFQ*-OHD; 30 -CFQ*DROP_OCR_YQ; 11 -CFQ*TX_R_; 18 -CFQ*TY_R_
20 +ODY*L0; 27 +ODY*L16; 3 +ODY*L31; 2 +ODY*L34
8 +ODY*-OHD; 8 +ODY*DROP_OCQ_Y; 18 +ODY*DROP_OCR_YQ; 17 +CPQ*L0
4 -DPQ*L30; 2 -DQR*L0; 2 -YZQ*L4; 10 -YZP*L27
2 +ZQR*L17; 6 -DZQ*L0; 2 -DZQ*L32; 1 -DZQ*L34
30 -DZQ*DROP_OHP_YZ; 3 C_ODQ_Y*L12; 30 C_ODR_YQ*L5; 23 C_ODR_YQ*L6
1 C_ODR_YQ*L10; 1 C_ODR_YQ*L12; 18 C_ODR_YQ*L16; 9 C_ODR_YQ*L20
61 C_ODR_YQ*-OHD; 22 C_ODR_YQ*RX_P; 69 C_ODR_YQ*DROP_OCQ_Y; 11 C_HFP_Q*L4
52 C_HFP_Q*L26; 77 C_HFP_Q*DROP_OCR_YQ; 5 C_CFP_Q*L24; 13 C_CFP_Q*L28
63 C_CFR_Q*L0; 22 Q_ODRH_YZQ*L4; 1 Q_OYFH_Z*TX_R_; 11 Q_OCPQ_Y*L17
2 Q_ODQZ_Y*L3; 2 Q_ODQZ_Y*L34; 6 Q_HCRF_Q*L17; 26 Q_HPRF_Q*L4
13 Q_HPRF_Q*L6; 9 Q_HYPR_Q*L17; 1 Q_CRFY_Q*L17; 56 Q_CPRF_Q*L0
1 M_ODHQYZ_-1_3*L12; 6 M_ODHQYZ_-1_3*L23; 3 M_ODHQYZ_-1_3*L34; 5 M_ODHQYZ_-1_3*L35
14 M_ODHQYZ_-1_3*RX_P; 12 M_ODHQYZ_-1_4*L0; 1 M_ODHQYZ_-1_4*L13; 2 M_ODHQYZ_-1_4*L31
6 M_ODHQYZ_-1_4*DROP_OCQ_Y; 5 M_ODHQYZ_-1_4*DROP_OCR_YQ; 8 RIGHTSUP
```

Upper bound: `-249996844047/45500000000`.

### Leaf RUTmmpmmpmmmpmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ +CFQ -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZR +ODZ
P OHFZQ -OFQ
P OHYZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCQR +FQR
P FODPR +FPR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZOHFQ -ZFQ
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHZR -QZR
C OFY Z Q +FYQ 101661/147500
M OCFQYZ -1
M OFCQZY 1
M COFZYQ 1
M CFOZQY -1
M FOCYZQ -1
M FCOYQZ 1
M OFPQZY 1
M OPFQYZ -1
M FOPYZQ -1
M FPOYQZ 1
M POFZYQ 1
M PFOZQY -1
```

```c1top-bounds
T OCF YZQ 1 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 823/1000 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
7 L0*L1*L25; 148 L0*L3*L30; 15 L0*L4*L31; 1 L0*L7*L24
16 L0*L7*DROP_OCQ_Y; 8 L0*L9*L31; 15 L0*L9*DROP_OCQ_Y; 10 L0*L13*L18
31 L0*L15*TX_R_; 22 L0*L16*TY_R_; 20 L0*L21*L31; 10 L0*L21*DROP_OCQ_Y
10 L0*L21*DROP_OCR_YQ; 11 L0*L22*L25; 1 L0*L28*L35; 24 L0*L35*DROP_OHP_YZ
6 L0*L36*TX_R_; 6 L1*L1*L8; 40 L1*L1*L30; 31 L1*L2*L20
11 L1*L2*L28; 61 L1*L3*L3; 18 L1*L3*L15; 50 L1*L3*DROP_OCQ_Y
3 L1*L6*L28; 25 L1*L6*L30; 25 L1*L6*DROP_OCQ_Y; 4 L1*L8*L20
16 L1*L12*L20; 10 L1*L12*L25; 35 L1*L17*L24; 13 L1*L30*L34
49 L1*L30*RX_P; 6 L2*L10*L23; 94 L3*L3*RY_P; 78 L3*L5*L24
56 L3*L5*DROP_OCQ_Y; 99 L3*L6*L18; 11 L3*L7*L27; 44 L3*L8*L15
17 L3*L9*L18; 4 L3*L10*L10; 23 L3*L14*L20; 34 L3*L15*L17
13 L3*L15*L18; 239 L3*L17*DROP_OHP_YZ; 89 L3*L18*L18; 12 L3*L18*L20
35 L3*L18*L32; 84 L3*L18*DROP_OCQ_Y; 96 L3*L18*TX_R_; 19 L3*L19*L27
4 L3*L24*L28; 3 L3*L25*DROP_OCQ_Y; 5 L3*L27*DROP_OHP_YZ; 11 L3*L27*DROP_OCQ_Y
84 L3*L28*RX_P; 23 L3*L29*L34; 4 L3*L35*DROP_OCR_YQ; 4 L4*L6*L30
6 L4*L6*TY_R_; 1 L4*L12*L35; 95 L4*L17*L24; 94 L4*L17*DROP_OHP_YZ
58 L4*L17*DROP_OCQ_Y; 3 L4*L17*TY_R_; 12 L5*L6*L12; 15 L5*L6*L18
2 L5*L6*DROP_OCR_YQ; 17 L5*L8*RX_P; 1 L5*L10*C_OHD_Z; 2 L5*L11*L25
1 L5*L13*L33; 4 L5*L16*L25; 89 L5*L18*RX_P; 8 L5*L20*TY_R_
1 L5*L28*L29; 15 L5*L35*RX_P; 1 L6*L6*L17; 1 L6*L6*RX_P
25 L6*L10*L17; 7 L6*L10*TY_R_; 11 L6*L14*L30; 38 L6*L14*RX_P
10 L6*L17*L27; 1 L6*L22*L25; 2 L6*L25*L27; 6 L6*L28*L36
1 L7*L7*L34; 22 L7*L17*L23; 7 L7*L18*L30; 9 L7*L23*L27
1 L7*L27*L29; 10 L7*RX_P*TY_R_; 1 L8*L14*L15; 239 L8*L17*DROP_OHP_YZ
53 L8*L18*L34; 13 L9*L12*L27; 21 L9*L14*L14; 1 L9*L14*TY_R_
19 L9*L18*L28; 4 L9*L22*L25; 11 L10*L12*L25; 34 L10*L12*L30
59 L10*L14*RX_P; 153 L10*L17*DROP_OHP_YZ; 10 L10*L17*TX_R_; 8 L10*L24*L25
1 L10*L25*TY_R_; 7 L10*L27*RX_P; 1 L10*L28*+OCF; 19 L10*L30*DROP_OHP_YZ
59 L10*L31*RX_P; 8 L10*TX_R_*TX_R_; 20 L11*L17*L33; 6 L12*L12*L27
7 L12*L13*L28; 1 L12*L17*L27; 10 L12*L22*TY_R_; 1 L12*L28*L31
6 L14*L14*L17; 14 L14*L17*RX_P; 6 L14*L19*L30; 4 L14*L20*L25
1 L14*L24*L28; 6 L14*L25*L30; 34 L14*L30*L31; 34 L14*L30*L32
5 L15*L17*L28; 12 L15*L31*L34; 16 L15*RX_P*RX_P; 120 L16*L17*L18
239 L16*L17*L31; 25 L17*L17*DROP_OCQ_Y; 4 L17*L20*L24; 4 L17*L20*L25
20 L17*L22*L30; 10 L17*L22*TY_R_; 10 L17*L23*L23; 13 L17*L25*DROP_OCQ_Y
5 L17*L26*L33; 13 L17*L31*-OHD; 38 L17*C_OHD_Z*DROP_OHP_YZ; 1 L18*L19*L25
20 L18*L20*L30; 32 L18*L20*TX_R_; 2 L18*L21*L26; 12 L18*L23*L25
1 L18*L26*L30; 15 L18*L27*TX_R_; 1 L18*L31*TY_R_; 120 L18*DROP_OHP_YZ*RX_P
15 L18*TX_R_*TY_R_; 15 L19*RX_P*TY_R_; 11 L20*L27*L30; 75 L20*L27*RX_P
1 L20*L27*TX_R_; 41 L20*L32*RX_P; 10 L20*L34*TY_R_; 30 L20*RX_P*TY_R_
1 L21*L24*L27; 7 L21*L27*DROP_OCQ_Y; 5 L21*L28*DROP_OHP_YZ; 7 L22*L22*L25
8 L22*L25*L28; 8 L23*L25*L30; 7 L23*L29*L30; 2 L23*L29*TX_R_
25 L23*RX_P*RX_P; 4 L24*L31*L34; 6 L25*L26*L28; 5 L25*L28*L28
4 L25*L30*RY_P; 5 L26*L27*TX_R_; 6 L26*L30*RX_P; 2 L27*L28*L29
14 L27*-OHD*RX_P; 3 L28*L31*C_OHD_Z; 2 L28*L33*L34; 68 L28*DROP_OHP_YZ*RX_P
10 L28*RX_P*DROP_OCQ_Y; 5 L29*L34*L34; 12 -OHD*RX_P*TY_R_; 5 TX_R_*TY_R_*TY_R_
6 KLOW*L35; 7 CENT*L13; 29 CENT*L24; 8 CENT*L31
2 CENT*RX_P; 9 -OHF*L17; 66 -HYZ*L1; 109 -HYZ*L2
45 -HYZ*L15; 51 -HYZ*L21; 15 -HYZ*L22; 37 -HYZ*C_OHD_Z
67 -HYZ*DROP_OHP_YZ; 11 -HYZ*RY_P; 14 -HCZ*L10; 258 +OCP*L17
1 +OCP*L32; 34 -CDP*L11; 39 -CDP*L14; 162 -CDP*L16
89 -CDP*L18; 30 -CDP*L20; 89 -CDP*L24; 10 -CDP*L29
34 -CDP*L34; 58 -CDP*DROP_OCQ_Y; 2 -CDP*TY_R_; 84 -CYP*L2
19 -CYP*L4; 7 -CYP*L7; 85 -CYP*L8; 67 -CYP*L20
11 -CYP*L23; 8 -CYP*L24; 17 -CYP*L36; 216 -CYP*DROP_OHP_YZ
1 +DZP*TY_R_; 56 +HCQ*L17; 15 +HCQ*L30; 10 -HFQ*RX_P
3 -HFQ*TY_R_; 1 -HFR*L7; 50 -HFR*L20; 18 -HFR*L21
2 -HFR*L28; 25 -HFR*L30; 3 +CDR*L28; 12 -DFR*L4
10 -DFR*L12; 2 -DFR*L24; 4 +ODR*L3; 2 -DYR*RX_P
3 -DZR*L13; 1 -DZR*L28; 2 -DZR*L36; 11 +OQR*L3
15 +OQR*L6; 7 +OQR*L18; 7 +OQR*L23; 11 +OQR*L30
40 +OQR*RX_P; 16 -DPR*L19; 2 -CYZ*L4; 23 -CYZ*L6
11 -CYZ*L17; 85 -CYZ*L20; 15 -CYZ*L23; 27 -CYZ*L24
43 -CYZ*L34; 34 -CYZ*L35; 74 -CYZ*DROP_OCQ_Y; 61 -OYP*L2
45 -OYP*L9; 63 -OYP*L17; 26 -OYP*L21; 4 -OYP*L25
25 -OYP*L34; 31 +OYQ*L12; 47 +OYQ*L14; 26 -OZQ*L1
28 -OZQ*L5; 85 -OZQ*L6; 44 -OZQ*L10; 30 -OZQ*L16
28 -OZQ*L18; 20 -OZQ*L22; 20 -OZQ*L24; 27 -OZQ*L27
34 -OZQ*L30; 28 -OZQ*RY_P; 13 -OZR*L8; 45 -OZR*L34
47 -OZR*DROP_OCQ_Y; 20 +HPQ*L30; 85 +HPQ*+OCF; 30 +HPQ*DROP_OHP_YZ
10 +HPQ*DROP_OCQ_Y; 20 +HPQ*DROP_OCR_YQ; 32 +HPQ*TX_R_; 3 -CQR*L28
48 +CFQ*L6; 20 +CFQ*L12; 13 +CFQ*L14; 26 +CFQ*L19
48 +CFQ*L23; 38 +CFQ*L32; 7 +CFQ*L35; 32 +CFQ*+OCF
78 +CFQ*DROP_OHP_YZ; 11 +CFQ*RY_P; 89 +CFQ*DROP_OCQ_Y; 22 +CFQ*DROP_OCR_YQ
62 +CFQ*TX_R_; 45 -OFZ*L13; 21 -OFZ*L15; 78 -OFZ*L20
31 -OFZ*L24; 31 -OFZ*L34; 49 -OFZ*-OHD; 18 -OFZ*+OCF
45 -OFZ*DROP_OHP_YZ; 6 -OFZ*RY_P; 120 -OFZ*DROP_OCQ_Y; 23 -OFZ*DROP_OCR_YQ
5 -DQR*L17; 8 -DQR*L28; 3 +FQR*L28; 31 -YZQ*L10
11 -YZQ*TY_R_; 6 -YZP*L14; 1 -YZP*L28; 11 +ZPQ*L10
30 +ZPQ*L17; 11 +ZQR*L1; 6 +ZQR*L2; 15 +ZQR*L6
47 +ZQR*L14; 9 +FYQ*L15; 16 +FYQ*L24; 8 +FYQ*L29
31 +FYQ*L36; 11 +FYQ*RY_P; 20 +FYQ*DROP_OCQ_Y; 15 C_OFQ_Z*RX_P
6 C_HFP_Q*L14; 2 TPX_R_*L25; 4 TPX_R_*L27; 4 TPX_R_*L35
22 Q_OYFH_Z*L17; 3 Q_OYQH_Z*L3; 4 Q_OYRH_Z*L17; 2 Q_OCDR_YQ*L10
7 Q_OCPZ_Y*L6; 56 Q_OCPZ_Y*L8; 7 Q_OPRF_YZQ*L10; 5 Q_OQRF_Z*L18
10 Q_OPQZ_Y*L27; 11 Q_HYCF_Q*L17; 13 Q_HYPF_Q*L3; 13 M_OFCQZY_1_1*L1
97 M_OFCQZY_1_1*L12; 123 M_OFCQZY_1_1*RX_P; 56 M_OFCQZY_1_4*L2; 31 M_OFCQZY_1_4*L10
13 M_OFCQZY_1_4*L15; 20 M_OFCQZY_1_4*L22; 8 M_OFCQZY_1_4*L24; 34 M_OFCQZY_1_4*L36
11 M_OFCQZY_1_4*DROP_OCR_YQ; 8 M_OFCQZY_1_4*TX_R_
```

Upper bound: `-3318338429/1000000000`.

### Leaf RUTmmpmmpmmmpmpm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ +CFQ -ODY +OFZ -ODQ`.

```c1top-geometry
C OCD YQ Z -DOZ 72039/90700
P OHDFY -OFY
P OHDFQ -OFQ
P OHDYR +OYR
P OHDZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHZQ +DZQ
P DOCPQ -DPQ
P DOCQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCQR +FQR
P FODPR +FPR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P ZODQR +ZQR
P POHZQ -PZQ
P POFQR -PQR
```

```c1top-bounds
```

Exclusion: `central_endpoint_top OD P YQ`.

### Leaf RUTmmpmmpmmmpmppm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ +CFQ -ODY +OFZ +ODQ -DZQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ -DPQ
P DOHQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCQR +FQR
P FODPR +FPR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR -PQR
P QOHZR -QZR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
49 L0*L2*L21; 20 L0*L3*L20; 41 L0*L4*TX_R_; 2 L0*L5*L8
14 L0*L7*L22; 40 L0*L7*L27; 118 L0*L7*TX_R_; 13 L0*L9*L12
3 L0*L13*TX_R_; 11 L0*L16*L17; 27 L0*L20*L27; 4 L0*L21*TX_R_
3 L0*L22*TX_R_; 1 L0*L25*L28; 3 L0*L25*L36; 78 L0*L25*TX_R_
61 L0*RX_P*TX_R_; 1 L1*L1*L6; 5 L1*L1*L30; 85 L1*L2*L17
18 L1*L2*L18; 48 L1*L3*L3; 20 L1*L3*L30; 5 L1*L4*L8
15 L1*L4*L20; 8 L1*L10*TX_R_; 30 L1*L12*TY_R_; 38 L1*L17*L25
20 L1*L17*DROP_OCQ_Y; 22 L1*L17*TY_R_; 1 L1*L23*L30; 54 L1*L27*TX_R_
12 L2*L4*TX_R_; 80 L2*L10*RX_P; 104 L2*L10*TX_R_; 75 L2*L12*L28
6 L2*L12*TY_R_; 46 L3*L3*L5; 2 L3*L3*L7; 6 L3*L3*L14
6 L3*L3*L21; 15 L3*L3*L28; 14 L3*L5*L5; 5 L3*L7*L12
81 L3*L10*L12; 7 L3*L10*L22; 6 L3*L12*L14; 40 L3*L12*L17
22 L3*L12*L22; 10 L3*L14*L25; 5 L3*L14*L28; 10 L3*L14*TX_R_
2 L3*L17*+OCF; 92 L3*L18*L24; 25 L3*L18*L32; 20 L3*L18*L33
200 L3*L18*TX_R_; 6 L3*L20*RX_P; 40 L3*L23*TY_R_; 5 L3*L25*L30
5 L3*L27*L34; 154 L3*L27*DROP_OCQ_Y; 10 L3*L28*L30; 5 L3*L30*TX_R_
2 L4*L4*L30; 13 L4*L4*TX_R_; 2 L4*L5*L12; 26 L4*L5*L17
5 L4*L6*L36; 67 L4*L6*TX_R_; 2 L4*L11*L17; 8 L4*L14*TX_R_
10 L4*L17*L20; 1 L4*L17*L27; 28 L4*L17*DROP_OHP_YZ; 83 L4*L22*TX_R_
44 L4*L24*L31; 4 L4*L24*RY_P; 13 L4*L27*L29; 17 L4*L31*L31
5 L5*L8*L8; 15 L5*L8*L25; 6 L5*L10*L20; 35 L5*L12*L21
11 L5*L15*L17; 14 L5*L17*L31; 16 L5*L18*L25; 15 L5*L18*RX_P
12 L5*L25*L25; 21 L5*L25*L28; 7 L6*L10*L17; 108 L6*L17*L24
2 L6*L31*L31; 17 L7*L7*L14; 69 L7*L7*L27; 3 L7*L8*L28
2 L7*L14*L20; 6 L7*L17*L20; 40 L7*L17*C_OHD_ZQ; 108 L7*L17*DROP_OHR_Z
12 L8*L8*L28; 2 L8*L8*L29; 2 L8*L8*RX_P; 40 L8*L11*L18
44 L8*L14*L21; 5 L8*L17*L29; 8 L8*L18*L23; 17 L8*L18*TX_R_
1 L8*L29*L30; 3 L9*L11*L17; 23 L9*L14*L17; 6 L9*L14*L30
40 L9*L17*L22; 44 L10*L10*RX_P; 6 L10*L12*L30; 16 L10*L14*L29
40 L10*L17*L20; 82 L10*L17*L33; 21 L10*L17*C_OHD_ZQ; 103 L10*L17*TX_R_
67 L10*L29*RX_P; 4 L10*L30*RY_P; 12 L11*L17*L18; 1 L12*L12*L28
1 L12*L12*TX_R_; 56 L12*L17*L18; 35 L12*L18*L25; 66 L12*L18*L31
28 L12*L18*RX_P; 1 L12*L20*L34; 2 L12*L21*L27; 27 L12*L23*RX_P
1 L12*L24*L36; 6 L12*L26*RX_P; 4 L12*L27*DROP_OCR_YQ; 1 L12*L29*L30
1 L12*L30*-OHD; 39 L12*L32*RX_P; 4 L12*TY_R_*TY_R_; 5 L13*L17*L25
8 L13*L18*L28; 8 L14*L17*L23; 29 L14*L17*L25; 8 L14*L17*L28
16 L14*L17*DROP_OCR_YQ; 1 L14*L21*L30; 13 L14*L21*RX_P; 2 L14*L21*TX_R_
8 L14*L22*L25; 44 L14*L22*L29; 5 L14*L27*RX_P; 20 L15*L17*L26
40 L17*L17*L36; 11 L17*L17*DROP_OCQ_Y; 57 L17*L18*L24; 28 L17*L18*L33
11 L17*L19*L21; 18 L17*L19*L29; 15 L17*L19*RY_P; 21 L17*L20*L28
6 L17*L21*L29; 17 L17*L22*L23; 26 L17*L22*TY_R_; 17 L17*L23*L23
5 L17*L24*L30; 57 L17*L24*RY_P; 56 L17*L26*DROP_OCQ_Y; 33 L17*L27*L29
2 L17*L29*DROP_OCQ_Y; 2 L17*L31*L31; 5 L17*L35*TX_R_; 40 L17*L36*RX_P
23 L17*DROP_OCQ_Y*DROP_OHR_Z; 60 L17*DROP_OCR_YQ*TX_R_; 12 L18*L18*L31; 21 L18*L20*TX_R_
2 L18*L21*L25; 46 L18*L23*L25; 22 L18*L25*-OHD; 8 L18*L30*DROP_OCQ_Y
2 L20*L25*L28; 1 L21*L27*TX_R_; 14 L22*L29*L30; 20 L23*L28*RX_P
60 L25*L27*L29; 60 L25*L27*RX_P; 8 L28*L35*RX_P; 13 L28*RX_P*TY_R_
4 L31*L34*RY_P; 3 KLOW*L2; 17 KLOW*L21; 9 KLOW*L26
30 KLOW*L31; 19 KLOW*RY_P; 179 KLOW*TX_R_; 3 CENT*L6
40 CENT*L20; 6 CENT*L31; 9 TOPCOUNT*L12; 5 -HYZ*L1
8 -HYZ*L4; 25 -HYZ*L18; 1 -HYZ*L23; 6 -HYZ*L31
14 -OHZ*L3; 30 -OHZ*TY_R_; 3 -CDP*L14; 45 -CDP*L20
188 -CDP*L24; 27 -CDP*L28; 137 -CDP*L29; 9 -CDP*L31
9 -CDP*L32; 70 -CDP*L33; 14 -CDP*L35; 198 -CDP*DROP_OHP_YZ
30 -CDP*TX_R_; 142 -CYP*L3; 47 -CYP*L8; 42 -CYP*L13
16 -CYP*L14; 18 -CYP*L17; 40 -CYP*L20; 44 -CYP*L35
29 -CYP*C_OHD_ZQ; 12 -CYP*RY_P; 71 -CYP*DROP_OHR_Z; 33 -CYP*TX_R_
18 +FYP*L17; 33 +OCR*L17; 1 -HFR*L1; 41 -HFR*L3
8 -HFR*L8; 3 -HFR*L14; 17 -HFR*L20; 3 -HFR*L23
196 -HFR*L25; 8 -HFR*L35; 159 -HFR*+OCF; 54 -HFR*DROP_OCR_YQ
118 -HFR*TX_R_; 13 -DFR*L4; 67 -DFR*L6; 2 -DFR*L14
35 -DFR*L23; 12 -DFR*+OCF; 41 -DFR*C_OHD_ZQ; 123 -DFR*RX_P
178 -DFR*DROP_OCQ_Y; 6 -DYR*L17; 9 +OQR*L4; 36 +OQR*L6
8 +OQR*L11; 33 +OQR*L12; 96 +OQR*L16; 13 +OQR*L18
18 +OQR*L25; 215 +OQR*L27; 35 +OQR*L36; 6 +OQR*-OHD
269 +OQR*DROP_OCR_YQ; 22 -DPR*L0; 12 -DPR*L5; 12 -DPR*L12
69 -DPR*L23; 6 -DPR*L30; 6 -CYZ*L12; 30 -CYZ*L23
22 -CYZ*L27; 5 -CYZ*L28; 95 -CYZ*DROP_OHP_YZ; 29 -CYZ*RY_P
31 -CYZ*DROP_OCQ_Y; 22 -CYZ*TY_R_; 184 -OYP*L2; 17 -OYP*L6
70 -OYP*L13; 16 -OYP*L36; 6 -OZQ*L10; 43 -OZQ*L17
45 +HPQ*L2; 23 +HPQ*L4; 39 +HPQ*L12; 8 +HPQ*L15
11 +HPQ*L17; 2 +HPQ*L24; 13 +HPQ*L26; 40 +HPQ*L31
21 +HPQ*TX_R_; 8 -HDQ*L27; 18 +CFQ*L2; 18 +CFQ*L6
16 +CFQ*L9; 44 +CFQ*L14; 38 +CFQ*L30; 8 +CFQ*L35
20 +CFQ*-OHD; 115 +CFQ*DROP_OHP_YZ; 134 +CFQ*DROP_OCR_YQ; 60 +CFQ*TY_R_
2 -ODY*L5; 45 -ODY*L20; 32 -ODY*L24; 4 -ODY*L32
45 -ODY*L33; 37 -ODY*RX_P; 8 -ODY*TX_R_; 8 +OFZ*L1
11 +OFZ*L4; 17 +OFZ*L7; 16 +OFZ*L10; 28 +OFZ*L23
33 +OFZ*L26; 35 +ODQ*L12; 83 -DZQ*L1; 2 -DZQ*L6
45 -DZQ*L8; 6 -DZQ*L11; 56 -DZQ*L16; 91 -DZQ*-OHD
28 -DZQ*+OCF; 8 -DZQ*RY_P; 2 -DZQ*TX_R_; 8 -DZQ*TY_R_
11 -OFY*L17; 9 -DYZ*L17; 8 +FQR*L10; 28 +FQR*L14
96 +FQR*L17; 54 +FQR*L27; 18 +FQR*TX_R_; 1 C_DZR_Q*L12
12 TPX_R_*L25; 4 TPX_R_*L30; 43 TPX_R_*RX_P; 32 SP_OCDH_YQ_CH-1*L17
170 Q_OCPD_Y*L17; 55 Q_OCPZ_Y*L3; 63 Q_OCPZ_Y*L8; 29 Q_OCPZ_Y*L25
6 Q_OYDR_Q*L14; 7 Q_DRFZ_Q*L3
```

Upper bound: `-22226353/125000000`.

### Leaf RUTmmpmmpmmmpmppp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ +CFQ -ODY +OFZ +ODQ +DZQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ -DPQ
P DOHQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCQR +FQR
P FODPR +FPR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P ZODQR +ZQR
P POHZQ -PZQ
P POFQR -PQR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
145 L0*L1*L31; 32 L0*L1*RX_P; 130 L0*L3*L20; 545 L0*L4*TX_R_
180 L0*L7*L22; 288 L0*L7*L27; 143 L0*L7*TX_R_; 71 L0*L12*L28
3 L0*L12*TY_R_; 32 L0*L18*L21; 41 L0*L20*RX_P; 8 L0*L21*L29
13 L0*L22*L29; 118 L0*L22*TX_R_; 46 L0*L25*TX_R_; 318 L0*L27*TX_R_
21 L0*L30*RX_P; 113 L1*L2*L17; 56 L1*L3*L6; 1 L1*L6*L8
6 L1*L6*L12; 119 L1*L8*L17; 11 L1*L8*L30; 123 L1*L10*L12
26 L1*L14*L17; 310 L1*L17*DROP_OCR_YQ; 116 L1*L18*L25; 86 L1*L18*L30
203 L1*L21*L27; 3 L1*L34*TX_R_; 89 L2*L10*L28; 30 L2*L12*L27
29 L2*L12*TY_R_; 30 L2*L17*DROP_OCQ_Y; 78 L2*L22*TY_R_; 17 L2*L28*RX_P
249 L3*L5*L18; 5 L3*L5*L31; 47 L3*L5*L34; 4 L3*L6*L10
116 L3*L6*TY_R_; 56 L3*L7*L27; 20 L3*L10*L31; 17 L3*L12*L22
41 L3*L15*L18; 4 L3*L15*L31; 363 L3*L17*L18; 76 L3*L17*L27
91 L3*L18*L18; 59 L3*L18*L21; 155 L3*L18*L22; 99 L3*L18*L24
246 L3*L18*L27; 148 L3*L18*L28; 102 L3*L18*L29; 50 L3*L18*L31
296 L3*L18*DROP_OHR_Z; 51 L3*L20*L27; 113 L3*L22*L27; 22 L3*L31*L34
162 L4*L4*TX_R_; 227 L4*L5*L17; 19 L4*L6*L17; 30 L4*L6*TX_R_
33 L4*L12*L17; 2 L4*L12*L25; 5 L4*L12*L32; 44 L4*L12*L35
66 L4*L15*L17; 94 L4*L17*L17; 387 L4*L17*L23; 69 L4*L17*L27
109 L4*L17*L32; 376 L4*L17*DROP_OCQ_Y; 4 L4*L22*TX_R_; 284 L4*L27*TX_R_
36 L4*L31*L34; 3 L4*L34*TX_R_; 113 L5*L5*L25; 169 L5*L5*RX_P
120 L5*L8*L18; 45 L5*L10*L12; 129 L5*L18*L25; 10 L5*L18*RX_P
39 L5*L20*L30; 30 L5*L25*L28; 3 L5*L25*L34; 123 L5*L25*TY_R_
57 L5*L27*RX_P; 92 L5*L28*RX_P; 8 L5*L30*L30; 149 L6*L6*TY_R_
2 L6*L17*L34; 149 L6*L25*TY_R_; 3 L7*L12*L18; 21 L7*L17*L27
59 L7*L18*L20; 9 L7*L20*L27; 183 L7*L27*L27; 113 L7*L27*TX_R_
6 L7*L31*L34; 255 L8*L17*L18; 8 L8*L17*L36; 96 L8*L18*L19
2 L8*L27*L30; 38 L8*L28*L28; 2 L8*L30*TY_R_; 136 L9*L11*L17
51 L9*L34*L34; 19 L10*L14*L17; 165 L10*L17*L17; 22 L10*L17*L18
3 L10*L17*L25; 148 L10*L17*C_OHD_ZQ; 3 L10*L17*TX_R_; 118 L10*L18*RX_P
11 L12*L14*L33; 32 L12*L14*RX_P; 188 L12*L17*L17; 8 L12*L17*L30
10 L12*L17*L34; 2 L12*L21*L34; 3 L12*L22*L27; 3 L12*L27*L28
14 L12*L28*DROP_OCQ_Y; 1 L12*L29*TY_R_; 2 L12*L30*DROP_OCQ_Y; 20 L12*L34*L34
22 L12*L34*L35; 188 L13*L17*L17; 20 L14*L14*L30; 11 L14*L30*L30
25 L15*L17*L30; 15 L15*L17*DROP_OCQ_Y; 3 L15*L18*L25; 8 L15*L34*RX_P
120 L17*L17*L22; 173 L17*L17*TY_R_; 273 L17*L18*L25; 219 L17*L18*L26
131 L17*L18*DROP_OHP_YZ; 446 L17*L18*DROP_OHR_Z; 4 L17*L21*L28; 46 L17*L21*L34
96 L17*L22*L29; 32 L17*L23*L34; 9 L17*L24*DROP_OCQ_Y; 296 L17*L26*L26
106 L17*L26*DROP_OCQ_Y; 3 L17*L27*L36; 231 L17*L28*TX_R_; 242 L17*L30*DROP_OCQ_Y
90 L17*L32*RX_P; 61 L17*L34*L35; 8 L17*L36*L36; 196 L18*L20*L30
88 L18*L20*TX_R_; 142 L18*L20*TY_R_; 120 L18*L21*RX_P; 5 L18*L23*L25
296 L18*L25*L27; 3 L18*L29*L30; 131 L18*RX_P*RX_P; 79 L20*L27*RX_P
198 L20*L28*L30; 14 L21*L28*TY_R_; 46 L21*L31*L34; 26 L22*L25*L28
3 L22*L25*L34; 17 L22*L29*L34; 57 L23*L27*L29; 41 L23*RX_P*TY_R_
288 L25*L27*L28; 5 L29*L34*RX_P; 11 L31*L31*L34; 203 L31*L34*L34
90 KLOW*L1; 22 KLOW*L7; 281 KLOW*L10; 33 KLOW*L29
44 KLOW*TX_R_; 23 CENT*L18; 21 CENT*L33; 74 -HYZ*L4
5 -HYZ*L7; 35 -HYZ*L15; 150 -HYZ*L18; 445 -HYZ*L21
151 -HYZ*L23; 5 -HYZ*L36; 71 -HYZ*C_OHD_ZQ; 151 -HYZ*DROP_OCQ_Y
98 -OHZ*L1; 160 -OHZ*L4; 246 -OHZ*L11; 170 -OHZ*L17
87 -OHZ*L18; 43 -OHZ*L21; 109 -OHZ*L23; 37 -OHZ*L30
78 -OHZ*L32; 86 -CDP*L5; 63 -CDP*L15; 71 -CDP*L17
229 -CDP*L18; 57 -CDP*L27; 176 -CDP*L28; 30 -CDP*L30
22 -CDP*L31; 192 -CDP*L35; 372 -CDP*DROP_OHR_Z; 99 -CDP*TX_R_
28 -CYP*L1; 84 -CYP*L4; 3 -CYP*L7; 204 -CYP*L12
195 -CYP*L14; 138 -CYP*L19; 46 -CYP*L20; 422 -CYP*L25
171 -CYP*L30; 422 -CYP*DROP_OHR_Z; 1 -HFQ*L12; 48 -CYQ*L17
3 -HFR*L1; 44 -HFR*L2; 31 -HFR*L5; 143 -HFR*L7
540 -HFR*L12; 543 -HFR*L14; 370 -HFR*L17; 139 -HFR*L20
298 -HFR*L22; 46 -HFR*L25; 30 -HFR*L27; 540 -HFR*L36
179 -DFR*L6; 3 -DFR*L15; 152 -DFR*L18; 75 -DFR*L19
153 -DFR*L27; 1 -DFR*L33; 133 -DFR*+OCF; 578 -DFR*C_OHD_ZQ
349 -DFR*RX_P; 162 -DFR*RY_P; 124 -DFR*DROP_OCQ_Y; 10 -DFR*DROP_OHR_Z
98 +OQR*L1; 183 +OQR*L5; 130 +OQR*L6; 3 +OQR*L14
92 +OQR*L18; 130 +OQR*RX_P; 184 -DPR*L1; 76 -DPR*L3
159 -DPR*L5; 173 -DPR*L16; 219 -DPR*L19; 51 -DPR*L20
90 -DPR*L22; 296 -DPR*L27; 68 -DPR*L28; 3 -DPR*L36
203 -CYZ*L0; 130 -CYZ*L5; 5 -CYZ*L8; 46 -CYZ*L21
1 -CYZ*L29; 195 -CYZ*L34; 5 -CYZ*DROP_OHP_YZ; 150 -CYZ*RY_P
278 -OYP*L17; 42 -OYP*L18; 40 -OYP*L31; 115 -OYP*L34
32 +HPQ*L1; 52 +HPQ*L7; 17 +HPQ*L14; 90 +HPQ*L17
139 +HPQ*L24; 95 +HPQ*L29; 201 +HPQ*L30; 130 +HPQ*+OCF
284 +HPQ*DROP_OCR_YQ; 142 +HPQ*TY_R_; 30 +CFQ*L0; 119 +CFQ*L5
155 +CFQ*L19; 78 +CFQ*L22; 78 +CFQ*L23; 130 +CFQ*L24
17 +CFQ*L36; 51 +CFQ*DROP_OHP_YZ; 478 +CFQ*DROP_OCR_YQ; 43 -ODY*L12
58 -ODY*L14; 10 -ODY*TX_R_; 14 +ODQ*L15; 51 +ODQ*L25
166 +ODQ*L27; 203 +ODQ*L30; 231 +DZQ*L3; 17 +DZQ*L4
679 +DZQ*L12; 48 +DZQ*L17; 441 +DZQ*L30; 231 +DZQ*L33
17 +DZQ*-OHD; 3 +DZQ*TY_R_; 189 +CPQ*L27; 448 -DYQ*L12
111 -DQR*L0; 3 +FQR*L18; 2 -YZQ*L17; 3 TPX_R_*L18
82 TPY_R_*L18; 30 Q_OCPQ_Y*L17; 10 Q_OYDZ_Q*L30; 10 Q_OYDR_Q*L6
2 Q_OYDR_Q*L12; 203 Q_OYDR_Q*L18; 10 Q_OYDR_Q*L25; 38 Q_OYDR_Q*L28
180 Q_OYDR_Q*RX_P; 5 SP_OPDZ_YQ_PZ-1*L30; 8 Q_CFZY_Q*L17; 23 Q_DZYP_Q*L17
```

Upper bound: `-141308023/200000000`.

### Leaf RUTmmpmmpmmmpp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ +CFQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYQ +ODQ
P OHDZP -OZP
P OHFQR -OFQ
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPQ -DPQ
P DOHQR -DQR
P FOCQR +FQR
P FODPR +FPR
P YOHDQ +YDQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCDZ +YDZ
P YOCZP -YZP
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHFZ +QFZ
P QOHZR -QZR
M OHDQZY 1
M ODHQYZ -1
M HODYZQ -1
M HDOYQZ 1
M DOHZYQ 1
M DHOZQY -1
```

```c1top-bounds
T OHD YZQ 0 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
48 L0*L0*TX_R_; 2 L0*L2*L3; 13 L0*L2*TX_R_; 10 L0*L3*L8
10 L0*L3*L20; 1 L0*L3*L34; 17 L0*L3*RY_P; 94 L0*L4*TX_R_
3 L0*L5*L9; 1 L0*L6*L15; 10 L0*L7*DROP_OCQ_Y; 2 L0*L8*L17
5 L0*L12*L32; 1 L0*L20*L34; 2 L0*L23*RX_P; 15 L0*L27*L29
1 L0*L29*-OHD; 5 L0*L35*-OHD; 1 L0*L35*RX_P; 106 L0*DROP_OHP_YZ*TX_R_
17 L0*RX_P*RY_P; 70 L0*DROP_OCQ_Y*TX_R_; 95 L0*DROP_OCR_YQ*TX_R_; 3 L1*L6*L20
1 L1*L8*DROP_OCQ_Y; 1 L1*L9*L36; 5 L1*L13*L17; 7 L1*L16*L20
3 L1*L17*L27; 3 L1*L17*DROP_OCQ_Y; 1 L1*L30*RX_P; 4 L2*L3*L14
1 L2*L10*L34; 2 L2*L34*RY_P; 3 L3*L4*DROP_OCQ_Y; 1 L3*L14*L32
1 L3*L14*DROP_OCQ_Y; 144 L3*L16*L18; 43 L3*L17*L17; 43 L3*L17*DROP_OHP_YZ
47 L3*L17*DROP_OCR_YQ; 24 L3*L18*L24; 7 L3*L21*DROP_OCR_YQ; 12 L4*L6*TX_R_
2 L4*L8*L33; 2 L4*L17*L34; 213 L4*L17*DROP_OHP_YZ; 2 L4*L30*L31
61 L5*L16*L17; 4 L5*L18*DROP_OCR_YQ; 6 L5*RX_P*TY_R_; 29 L6*L17*L27
3 L6*L18*TX_R_; 7 L7*L25*L27; 20 L7*L27*DROP_OCQ_Y; 1 L8*L10*L17
6 L8*L14*L31; 5 L8*L17*L22; 2 L8*L18*RY_P; 2 L8*L18*TY_R_
1 L9*L15*L15; 5 L10*L17*RX_P; 5 L10*L17*DROP_OCQ_Y; 2 L10*L27*RX_P
1 L10*L27*RY_P; 1 L10*L30*RX_P; 1 L11*L12*L14; 1 L11*L15*L17
5 L11*L16*L17; 1 L11*L18*DROP_OCR_YQ; 3 L12*L14*L32; 7 L12*L16*L32
1 L12*L17*L23; 5 L12*L18*RX_P; 1 L12*L19*L20; 7 L12*L32*+OCF
2 L12*L32*DROP_OCQ_Y; 1 L12*DROP_OHP_YZ*RY_P; 2 L14*L17*L20; 2 L14*L17*L21
1 L14*L17*L32; 1 L14*L17*DROP_OHP_YZ; 48 L16*L17*L20; 9 L16*L23*L27
38 L16*L27*L29; 10 L17*L17*DROP_OCQ_Y; 6 L17*L21*L26; 48 L17*L21*DROP_OHP_YZ
19 L17*L22*L24; 7 L17*L23*TY_R_; 25 L17*L25*RY_P; 10 L17*L28*L29
5 L17*L35*DROP_OCQ_Y; 17 L17*RX_P*DROP_OCQ_Y; 1 L17*RY_P*RY_P; 2 L18*L20*L32
9 L18*L20*TX_R_; 11 L18*L21*DROP_OCR_YQ; 6 L18*L23*TX_R_; 17 L18*L24*RX_P
4 L18*L26*RY_P; 3 L18*L27*RX_P; 8 L18*DROP_OHP_YZ*TX_R_; 3 L18*RX_P*TY_R_
5 L25*L27*L29; 9 L27*L29*L29; 9 L27*L29*RX_P; 22 L27*-OHD*TX_R_
5 L27*+OCF*TX_R_; 7 L28*RX_P*TY_R_; 2 L34*RX_P*RX_P; 10 KLOW*L16
21 KLOW*L19; 2 KLOW*L35; 26 KLOW*RY_P; 6 KLOW*TX_R_
2 FAN*L14; 5 -HYZ*L0; 4 -HYZ*L14; 4 -HYZ*L16
5 -HYZ*L31; 5 -HYZ*+OCF; 1 -HYZ*DROP_OCQ_Y; 4 -HCY*L12
1 -HDZ*L18; 9 +OCP*L17; 5 +OCP*L19; 1 +OCP*L35
11 +OCP*DROP_OCQ_Y; 13 -CDP*L5; 41 -CDP*L24; 2 -CDP*L36
7 -CDP*+OCF; 162 -CDP*DROP_OHP_YZ; 13 -CDP*DROP_OCR_YQ; 1 -CYP*L3
2 -CYP*L26; 3 -CZP*L3; 3 -CZP*RX_P; 53 -HFR*L17
12 -HFR*L20; 48 -HFR*-OHD; 19 -HFR*+OCF; 149 -HFR*DROP_OHP_YZ
76 -HFR*DROP_OCQ_Y; 73 -HFR*DROP_OCR_YQ; 5 -DFR*L3; 2 +FZR*L0
16 +OQR*L1; 7 +OQR*L6; 8 +OQR*L28; 11 +OQR*RX_P
1 -DPR*L12; 5 -CYZ*L16; 6 -CYZ*L23; 1 -CYZ*L31
7 -CYZ*DROP_OCQ_Y; 2 -OZR*L0; 6 +HPQ*L24; 2 +HPQ*L29
1 +HPQ*L33; 6 +HPQ*+OCF; 8 +HPQ*DROP_OHP_YZ; 7 +HPQ*RY_P
4 +HPQ*DROP_OCR_YQ; 6 +HPQ*TX_R_; 6 -CQR*L18; 2 -HDQ*L27
3 +CFQ*L5; 7 +CFQ*L24; 1 +CFQ*-OHD; 26 +CFQ*DROP_OHP_YZ
21 +CFQ*DROP_OCR_YQ; 8 +ODY*L16; 1 +ODY*L34; 3 +ODY*-OHD
1 +ODY*DROP_OCQ_Y; 1 -OZP*L12; 6 -OFQ*L18; 7 +HQR*L4
5 +CPQ*L18; 21 +CPQ*L27; 4 -DQR*L3; 2 +FQR*L0
17 +FQR*L17; 3 +FPR*L6; 2 +YPQ*L18; 1 -PQR*L0
1 -DZQ*L2; 12 C_ODR_YQ*L6; 10 C_ODR_YQ*L20; 22 C_ODR_YQ*-OHD
46 C_ODR_YQ*DROP_OHP_YZ; 11 C_ODR_YQ*RX_P; 33 C_ODR_YQ*DROP_OCQ_Y; 7 C_ODR_YQ*DROP_OCR_YQ
5 C_HDP_Q*L17; 94 TPX_R_*L0; 10 TPX_R_*RX_P; 36 Q_OCFH_YZQ*L26
1 Q_OCPZ_Y*L0; 4 Q_HCPD_Q*L17; 8 Q_HCPF_Q*L17; 1 Q_HPDR_Q*L4
1 Q_HPDR_Q*L18; 6 M_ODHQYZ_-1_0*RX_P; 1 M_ODHQYZ_-1_1*L16
```

Upper bound: `-22599278379/45500000000`.

### Leaf RUTmmpmmpmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR +HDQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DOHCQ -DOQ
P DOHZQ -DZQ
P DOFPQ -DPQ
P DOFQR -DQR
P DHCYQ -DYQ
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR -PQR
P QOHCR -QHR
P QOHFZ +QFZ
P QOHZR -QZR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
3 L0*L3*L3; 5 L0*L6*RX_P; 4 L0*L7*L20; 7 L0*L7*L27
2 L0*L7*DROP_OCQ_Y; 1 L0*L17*L18; 7 L0*L21*DROP_OHP_YZ; 6 L0*L21*RX_P
19 L0*L21*DROP_OCR_YQ; 8 L0*L22*RX_P; 11 L0*L25*TX_R_; 9 L0*L26*RX_P
31 L0*L29*DROP_OCQ_Y; 10 L0*L29*TX_R_; 58 L0*RX_P*TX_R_; 9 L0*DROP_OCQ_Y*TX_R_
19 L1*L2*L20; 6 L1*L17*L17; 25 L1*L17*L21; 2 L2*L2*L3
3 L2*L3*L10; 17 L2*L3*L18; 7 L2*L17*L32; 1 L2*L18*RX_P
12 L2*L20*RY_P; 7 L3*L7*L28; 2 L3*L8*L18; 1 L3*L15*RX_P
38 L3*L18*L20; 28 L3*L18*DROP_OCQ_Y; 4 L3*L21*L26; 13 L3*L21*RX_P
15 L3*L25*L27; 1 L3*L27*L28; 4 L3*L27*TX_R_; 7 L3*L29*TY_R_
14 L4*L6*TX_R_; 7 L4*L7*L23; 1 L4*L8*L17; 1 L4*L12*RX_P
1 L4*L16*L30; 26 L4*L17*L24; 7 L4*L17*C_OCF_Y; 30 L4*L17*DROP_OCQ_Y
13 L4*L20*TX_R_; 31 L6*L17*L18; 14 L6*L17*L24; 8 L6*L17*L25
11 L6*L17*+OCF; 13 L6*L18*L21; 9 L6*L18*L23; 2 L6*L18*TY_R_
6 L7*L17*L24; 5 L7*L17*DROP_OHP_YZ; 2 L7*L19*L27; 11 L7*L23*L27
10 L7*L25*DROP_OCQ_Y; 17 L7*L27*RX_P; 1 L8*L10*L17; 1 L10*L16*L30
1 L10*L17*L20; 9 L10*L17*DROP_OHP_YZ; 1 L12*L14*L27; 1 L12*L27*L34
2 L14*L17*C_OCF_Y; 1 L15*L17*L17; 1 L15*L17*L31; 5 L16*L17*L35
4 L17*L17*L17; 6 L17*L17*L28; 5 L17*L17*L31; 21 L17*L17*DROP_OCQ_Y
49 L17*L18*L20; 1 L17*L18*L30; 4 L17*L18*L31; 52 L17*L18*TX_R_
1 L17*L19*L32; 32 L17*L20*L27; 25 L17*L20*-OHD; 13 L17*L20*+OCF
27 L17*L20*RY_P; 4 L17*L24*L27; 2 L17*L26*RX_P; 24 L17*L27*DROP_OHP_YZ
51 L17*L27*DROP_OCQ_Y; 1 L17*L31*DROP_OCQ_Y; 1 L17*L32*C_OCF_Y; 9 L17*-OHD*DROP_OCR_YQ
22 L18*L21*L24; 9 L18*L23*TX_R_; 30 L18*L24*RX_P; 3 L18*L25*L29
3 L20*L25*L27; 8 L20*L27*L29; 10 L20*RY_P*TX_R_; 41 L22*RY_P*TX_R_
4 L23*L25*L29; 3 L23*TX_R_*TX_R_; 11 L25*L27*L29; 9 L27*L27*L29
6 L27*L29*C_OCF_Y; 13 L27*L29*RX_P; 4 L28*L29*RX_P; 5 L29*RX_P*RX_P
4 RX_P*RX_P*RX_P; 4 RY_P*TX_R_*TX_R_; 6 KLOW*L7; 18 KLOW*L19
7 KLOW*L23; 1 KLOW*L31; 4 KLOW*DROP_OHP_YZ; 9 KLOW*DROP_OCQ_Y
38 KLOW*TX_R_; 1 KLOW*TY_R_; 1 CENT*L2; 1 -HYZ*L23
1 -HYZ*DROP_OCQ_Y; 50 -CDP*L20; 43 -CDP*L24; 1 -CDP*L33
21 -CDP*C_OCF_Y; 28 -CDP*DROP_OCQ_Y; 4 -CYP*RX_P; 1 -CZP*L3
1 +DZP*L17; 5 +DFQ*L2; 1 +HZQ*L17; 6 -HFR*L18
27 -HFR*L20; 18 -HFR*L23; 11 -HFR*L25; 10 -HFR*L29
37 -HFR*DROP_OHP_YZ; 20 -HFR*RX_P; 27 -HFR*DROP_OCQ_Y; 10 -DFR*L6
22 -DFR*DROP_OCQ_Y; 5 -OFR*L17; 24 +OQR*L6; 11 +OQR*L23
3 +OQR*L25; 12 +OQR*DROP_OHP_YZ; 15 +OQR*RY_P; 11 +OQR*DROP_OCQ_Y
9 +OQR*TY_R_; 26 -DPR*L20; 4 -DPR*L24; 4 -DPR*L29
7 -DPR*+OCF; 22 -DPR*RX_P; 1 -CYZ*L2; 2 -CYZ*DROP_OHP_YZ
2 -OYP*L2; 2 -FPQ*L5; 3 -FPQ*L6; 7 -FPQ*L24
26 -FPQ*C_OHD_Z; 18 -FPQ*C_OCF_Y; 3 -FPQ*DROP_OHP_YZ; 18 -FPQ*RX_P
51 -FPQ*DROP_OCR_YQ; 7 -CQR*L0; 1 -CQR*L4; 5 -CQR*L6
2 +HDQ*L5; 16 +HDQ*L23; 4 +HDQ*L24; 12 +HDQ*C_OCF_Y
64 +HDQ*DROP_OHP_YZ; 2 +HDQ*RY_P; 16 +HDQ*DROP_OCQ_Y; 19 +HDQ*DROP_OCR_YQ
23 +HDQ*TX_R_; 18 +CPQ*L0; 4 -DQR*L3; 18 +FQR*L17
28 +FQR*L19; 9 +FQR*L27; 7 +FQR*C_OHD_Z; 14 +FQR*RY_P
1 -YZQ*L17; 6 +HQR*L18; 5 C_OCR_YQ*L6; 9 C_OCR_YQ*L27
26 TPX_R_*L3; 1 SP_OCRH_ZQ_CH-1*L17; 15 Q_OPDQ_Y*L17; 3 RIGHTSUP
```

Upper bound: `-324114649/500000000`.

### Leaf RUTmmpmmpmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ +CQR`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DCFPQ -DPQ
P DCFQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHFR -QHR
P QOHZR -QZR
P QOCYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
4 L0*L1*L2; 18 L0*L4*TX_R_; 1 L0*L17*L22; 5 L0*L18*L21
1 L0*L21*L25; 33 L0*L21*L26; 1 L0*L21*TX_R_; 1 L0*L22*L27
7 L0*RY_P*TX_R_; 55 L0*DROP_OCQ_Y*TX_R_; 22 L1*L2*L4; 1 L1*L2*L6
13 L1*L2*L23; 38 L1*L2*TY_R_; 8 L1*L5*L19; 6 L1*L6*L26
2 L1*L6*DROP_OCR_Y; 5 L1*L6*TY_R_; 5 L1*L7*L17; 3 L1*L16*L23
55 L1*L17*L26; 9 L1*L21*L27; 1 L1*L23*TY_R_; 15 L1*L25*TY_R_
5 L1*L27*TX_R_; 4 L1*RY_P*RY_P; 11 L2*L5*L19; 3 L2*L16*RY_P
2 L2*L17*DROP_OHP_YZ; 2 L2*L23*RY_P; 31 L2*L26*RY_P; 4 L2*L28*L28
4 L2*RY_P*TY_R_; 11 L3*L17*L17; 15 L3*L18*DROP_OCQ_Y; 28 L3*L27*DROP_OCQ_Y
17 L4*L4*TX_R_; 3 L4*L6*TY_R_; 12 L4*L17*DROP_OCQ_Y; 31 L4*L17*DROP_OCR_Y
10 L4*L17*TY_R_; 1 L4*L21*L27; 42 L4*L22*TX_R_; 2 L4*L27*L27
5 L4*L27*TX_R_; 2 L5*L5*L27; 2 L5*L6*L17; 50 L5*L17*L26
8 L6*L18*L21; 3 L6*L18*L23; 1 L6*L18*RY_P; 6 L6*L27*L27
8 L7*L17*DROP_OCQ_Y; 14 L17*L17*+OCF; 1 L17*L18*L18; 1 L17*L18*RY_P
27 L17*L18*DROP_OCR_Y; 4 L17*L23*L26; 27 L17*L26*RY_P; 6 L17*L28*RX_P
10 L17*L29*RY_P; 8 L18*L27*L29; 4 L21*L28*L29; 10 L21*L28*TY_R_
4 L22*RY_P*TX_R_; 2 L24*L27*L27; 2 L25*TY_R_*TY_R_; 15 L26*L27*L29
1 L27*L27*L27; 1 TY_R_*TY_R_*TY_R_; 8 KLOW*L7; 7 KLOW*L16
6 KLOW*L19; 3 KLOW*L23; 22 KLOW*L26; 2 KLOW*DROP_OCQ_Y
8 KLOW*TY_R_; 1 +HDF*L27; 7 +OCP*L17; 9 -CDP*L7
14 -CDP*L18; 10 -OFP*L17; 6 -HDP*L17; 20 -HFR*L26
16 -HFR*RY_P; 67 -HFR*DROP_OCQ_Y; 31 -DFR*L26; 20 -DFR*RY_P
31 -DFR*DROP_OCQ_Y; 12 -OFR*L27; 5 -DPR*L1; 1 -OYP*TY_R_
1 +OYQ*TY_R_; 5 +HPQ*L4; 1 +HPQ*L25; 63 +HPQ*L26
4 +HPQ*L29; 1 +HPQ*TX_R_; 8 -FPQ*L1; 1 -FPQ*L19
62 -FPQ*L26; 32 -FPQ*DROP_OCR_Y; 14 -FPQ*TY_R_; 11 +CQR*L1
33 +CQR*L26; 47 +CQR*L27; 29 +CQR*RY_P; 26 +CQR*TY_R_
5 -DPQ*L0; 1 -DPQ*L18; 16 -DPQ*L27; 10 -DPQ*L28
4 -DPQ*L29; 13 +FQR*L27; 1 +YPQ*TY_R_; 29 -PQR*L4
4 C_OPQ_Y*L3; 3 C_OPQ_Y*L7; 4 C_OPQ_Y*L29; 28 C_CDR_Q*L27
4 C_CPR_Q*L0; 28 C_CPR_Q*L22; 28 TPX_R_*DROP_OCQ_Y; 2 Q_OCPQ_Y*L0
9 Q_HPDF_Q*L2; 5 Q_HPRF_Q*L4; 3 Q_HPRF_Q*L23; 5 Q_CDRF_Q*L27
14 Q_CPDR_Q*L19; 13 Q_CPDR_Q*L22
```

Upper bound: `-67617413/250000000`.

### Leaf RUTmmpmmppmmmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR -HDQ -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZR +ODZ
P OHFZQ -OFQ
P OHYZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FOZPQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P POHZQ -PZQ
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
44 L0*L1*L25; 117 L0*L2*L3; 151 L0*L2*L17; 37 L0*L3*L25
59 L0*L3*L26; 104 L0*L3*L35; 91 L0*L3*L36; 182 L0*L11*L17
297 L0*L17*RY_P; 95 L0*L18*RX_P; 8 L0*L24*L27; 69 L0*L24*L28
45 L0*L31*RX_P; 112 L1*L1*L6; 269 L1*L1*L30; 65 L1*L2*L6
477 L1*L3*L12; 53 L1*L4*L6; 36 L1*L6*L6; 41 L1*L6*L8
140 L1*L6*L10; 32 L1*L6*L14; 294 L1*L6*L25; 323 L1*L6*L26
412 L1*L6*L30; 95 L1*L8*L25; 34 L1*L10*L30; 126 L1*L10*RX_P
399 L1*L12*L12; 448 L1*L12*L27; 58 L1*L12*L28; 30 L1*L12*RX_P
85 L1*L14*L30; 2 L1*L17*L29; 64 L1*L18*L25; 284 L1*L25*L25
278 L1*L25*L30; 21 L1*L26*L30; 7 L1*L27*L27; 208 L2*L3*L28
37 L2*L6*TY_R_; 133 L2*L10*L17; 92 L3*L5*L27; 195 L3*L5*L28
203 L3*L9*L18; 2 L3*L10*L25; 96 L3*L13*L18; 24 L3*L13*L27
109 L3*L14*L14; 579 L3*L14*L18; 2 L3*L14*L24; 496 L3*L14*L27
221 L3*L14*RX_P; 484 L3*L14*TY_R_; 34 L3*L18*L27; 421 L3*L18*L28
175 L3*L18*L31; 2 L3*L26*L26; 112 L3*L28*L32; 100 L3*L30*L34
24 L3*L30*TY_R_; 24 L3*L31*TY_R_; 24 L3*RX_P*TY_R_; 250 L4*L5*L17
264 L4*L10*L17; 476 L4*L14*L17; 39 L5*L5*L29; 24 L5*L10*L25
11 L5*L10*L30; 51 L5*L14*L25; 37 L5*L18*L25; 108 L5*L18*L30
42 L5*L25*L25; 16 L5*L25*L30; 7 L5*RX_P*RX_P; 112 L5*RX_P*TY_R_
102 L6*L6*TY_R_; 305 L6*L10*L30; 236 L6*L10*L31; 538 L6*L14*L30
38 L6*L14*TX_R_; 132 L6*L17*L27; 12 L6*L18*L27; 158 L6*L18*L31
2 L6*L19*L25; 184 L6*L25*L26; 137 L6*L25*TY_R_; 314 L6*L26*L30
34 L6*L26*TY_R_; 16 L6*L30*TY_R_; 39 L6*TY_R_*TY_R_; 56 L7*L14*L17
166 L7*L17*L27; 48 L7*L18*TY_R_; 11 L8*L14*TY_R_; 80 L8*L17*L19
56 L8*L17*L22; 24 L8*L17*RY_P; 24 L8*L17*TY_R_; 72 L8*L18*L32
5 L9*L15*L27; 34 L10*L10*L13; 72 L10*L10*RX_P; 370 L10*L12*L30
342 L10*L17*L28; 24 L10*L17*TX_R_; 24 L10*L18*L25; 117 L10*L36*RX_P
14 L11*L15*L17; 203 L12*L13*L18; 334 L12*L14*RX_P; 121 L12*L18*L28
736 L12*L18*L30; 14 L12*L18*L33; 69 L14*L17*L21; 619 L14*L17*L30
8 L15*L15*L27; 235 L15*L16*L17; 235 L17*L17*L23; 104 L17*L17*L32
122 L17*L17*RY_P; 393 L17*L18*C_OHD_Z; 74 L17*L18*TX_R_; 235 L17*L19*L33
235 L17*L20*RY_P; 69 L17*L23*L30; 14 L17*L23*L31; 24 L17*L25*C_OHD_Z
24 L17*L26*L35; 55 L17*L28*-OHD; 8 L17*L29*TY_R_; 2 L17*L32*TX_R_
104 L17*C_OHD_Z*RX_P; 74 L17*RY_P*TX_R_; 5 L17*TX_R_*TY_R_; 5 L18*L25*L25
13 L18*L28*L30; 122 L18*RX_P*RX_P; 97 L25*L27*L28; 97 L25*L27*TY_R_
22 L25*L32*RX_P; 97 L25*TY_R_*TY_R_; 7 L27*L27*-OHD; 64 L27*L28*RX_P
6 L27*L31*L34; 55 L28*L28*RX_P; 370 L31*L31*L34; 167 L31*L34*L34
2 +OCF*TY_R_*TY_R_; 2 CENT*L25; 109 CENT*L34; 15 CENT*TY_R_
87 +OYZ*L17; 129 +OYZ*L18; 211 -HYZ*L1; 15 -HYZ*L4
258 -HYZ*L8; 34 -HYZ*L10; 45 -HYZ*L16; 201 -HYZ*L18
758 -HYZ*L22; 758 -HYZ*L23; 294 -HYZ*L25; 628 -HYZ*L31
64 -HYZ*L33; 294 -HYZ*TX_R_; 273 +OCY*L17; 225 -HFZ*L1
58 -HFZ*L4; 25 -HFZ*L6; 306 -HFZ*L8; 140 -HFZ*L10
335 -HFZ*L13; 193 -HFZ*L14; 6 -HFZ*+OCF; 454 -HFZ*DROP_OCR_YQ
38 -HFZ*TX_R_; 834 +OCP*L17; 97 -CDP*L4; 59 -CDP*L7
177 -CDP*L8; 473 -CDP*L14; 233 -CDP*L17; 149 -CDP*L24
49 -CDP*L27; 416 -CDP*L28; 177 -CDP*L31; 24 -CDP*L33
353 -CDP*DROP_OHP_YZ; 101 -CYP*L5; 867 -CYP*L12; 175 -CYP*L14
180 -CYP*L25; 15 -CYP*L26; 72 -CYP*L32; 27 -CYP*-OHD
574 -CYP*DROP_OHP_YZ; 149 -CYP*RX_P; 158 -CYP*TX_R_; 89 +OCQ*L17
75 +HZQ*L17; 49 -HFR*L6; 116 -HFR*L8; 438 -HFR*L23
284 -HFR*L25; 112 -HFR*L28; 255 -HFR*L30; 59 -HFR*L33
438 -HFR*DROP_OCQ_Y; 89 -HFR*DROP_OCR_YQ; 108 -DFR*L0; 22 -DFR*L3
102 -DFR*L6; 48 -DFR*L14; 60 -DFR*L23; 37 -DFR*L25
16 -DFR*L30; 64 -DPR*L1; 127 -DPR*L3; 97 -DPR*L5
2 -DPR*L7; 24 -DPR*L10; 3 -DPR*L14; 60 -DPR*L22
5 -DPR*L25; 98 -CYZ*L5; 530 -CYZ*L6; 434 -CYZ*L12
167 -CYZ*L15; 533 -CYZ*L23; 351 -CYZ*-OHD; 351 -CYZ*+OCF
202 -CYZ*RX_P; 72 -CYZ*RY_P; 533 -CYZ*DROP_OCQ_Y; 142 -OYP*L0
395 -OYP*L2; 619 -OYP*L17; 22 -OYP*L24; 15 -OYP*L27
872 -OYP*L30; 872 -OYP*L31; 212 -OYP*L33; 44 -OYP*L34
145 -OZQ*L17; 27 +FPQ*L5; 27 +FPQ*L26; 33 +FPQ*TY_R_
75 -CQR*L17; 75 -HDQ*L17; 11 -ODY*L10; 20 -ODY*L18
443 -OFZ*L0; 499 -OFZ*L2; 523 -OFZ*L14; 36 -OFZ*L16
154 -OFZ*L24; 154 -OFZ*L25; 10 -OFZ*L28; 25 -OFZ*L29
203 -OFZ*L30; 566 -OFZ*L32; 207 -OFZ*L35; 24 +ODZ*L17
235 -OZP*L17; 3 +CPR*L14; 235 -DPQ*L17; 60 -DQR*L5
75 -DQR*L16; 60 -DQR*RY_P; 136 C_OFY_Z*L17; 633 Q_OYFH_Z*L14
69 Q_OYFH_Z*L30; 953 Q_OCPZ_Y*L30; 20 Q_CRFZ_Q*L17
```

Upper bound: `-225654489/200000000`.

### Leaf RUTmmpmmppmmmpm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR -HDQ -ODY +OFZ -ODQ`.

```c1top-geometry
C OCD YQ Z -DOZ 72039/90700
P OHDFY -OFY
P OHDFQ -OFQ
P OHDYR +OYR
P OHDZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHZQ +DZQ
P DOCPQ -DPQ
P DOCQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P ZODQR +ZQR
P POHZQ -PZQ
P QOCPR +QPR
```

```c1top-bounds
```

Exclusion: `central_endpoint_top OD P YQ`.

### Leaf RUTmmpmmppmmmppm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR -HDQ -ODY +OFZ +ODQ -DZQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ -DPQ
P DOHQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
154 L0*L0*TX_R_; 35 L0*L3*TX_R_; 40 L0*L18*TX_R_; 3 L0*L20*RX_P
13 L0*L27*RX_P; 24 L0*L27*TX_R_; 63 L1*L4*L6; 76 L1*L4*L17
5 L1*L6*L19; 19 L1*L6*L21; 81 L1*L6*L23; 7 L1*L6*L25
11 L1*L8*L34; 1 L1*L10*L31; 35 L1*L10*RX_P; 22 L1*L12*L20
7 L1*L12*L24; 42 L1*L12*L26; 2 L1*L12*L35; 14 L1*L12*DROP_OHP_YZ
53 L1*L12*DROP_OCQ_Y; 41 L1*L12*TY_R_; 55 L1*L14*L21; 90 L1*L16*L21
33 L1*L17*L23; 25 L1*L18*L30; 44 L1*L21*L26; 35 L1*L22*L25
7 L1*L25*L25; 24 L1*L25*TY_R_; 2 L2*L3*L23; 89 L2*L10*RX_P
18 L2*L17*L23; 16 L2*L23*L27; 16 L2*L26*L27; 5 L2*L26*L36
2 L2*L30*RY_P; 8 L3*L3*L18; 1 L3*L3*L34; 17 L3*L6*L10
4 L3*L12*L23; 5 L3*L13*L18; 20 L3*L16*L27; 65 L3*L18*L27
33 L3*L18*L28; 12 L3*L18*L30; 81 L3*L18*RX_P; 76 L3*L18*DROP_OHR_Z
20 L3*L18*TY_R_; 2 L3*L27*RX_P; 70 L4*L6*L17; 56 L4*L6*TY_R_
1 L4*L12*L32; 29 L4*L12*L34; 98 L4*L14*L17; 3 L4*L17*L23
43 L4*L17*L26; 9 L4*L25*TY_R_; 5 L5*L5*L30; 59 L5*L5*RX_P
19 L5*L6*L6; 7 L5*L8*L25; 2 L5*L10*L13; 75 L5*L12*DROP_OCR_YQ
41 L5*L14*L25; 12 L5*L20*L27; 5 L5*L21*L25; 2 L5*L21*RX_P
103 L6*L6*RY_P; 5 L6*L7*L18; 59 L6*L12*L23; 19 L6*L12*RY_P
32 L6*L15*L15; 30 L6*L15*RX_P; 130 L6*L17*L18; 14 L6*L17*L22
129 L6*L17*L26; 12 L6*L18*L25; 3 L6*L18*L32; 43 L6*L21*L26
10 L6*L23*RY_P; 7 L6*L25*L26; 178 L6*L26*L34; 19 L6*L31*RY_P
34 L6*L34*RY_P; 95 L6*RX_P*TY_R_; 21 L7*L12*L27; 22 L7*L14*L14
37 L7*L14*L27; 8 L7*L14*RX_P; 130 L7*L17*L18; 3 L7*L18*L28
19 L7*L18*L30; 5 L7*L27*L30; 3 L7*L28*L30; 3 L8*L14*L21
3 L8*L14*TX_R_; 2 L8*L21*L27; 4 L8*L21*L28; 5 L8*L27*RY_P
2 L8*L28*L29; 2 L8*L32*RX_P; 4 L9*L12*L23; 10 L10*L12*L17
7 L10*L12*L25; 1 L10*L14*L17; 5 L10*L17*L21; 2 L10*L17*RY_P
5 L10*L17*TY_R_; 1 L10*L30*L36; 2 L10*L35*C_OCF_Y; 1 L12*L12*L15
41 L12*L14*L27; 1 L12*L14*L31; 1 L12*L14*L32; 41 L12*L14*TY_R_
14 L12*L15*L20; 44 L12*L16*L27; 71 L12*L18*L23; 59 L12*L18*L27
12 L12*L18*L30; 29 L12*L18*L36; 1 L12*L19*L35; 1 L12*L20*TY_R_
21 L12*L29*TY_R_; 10 L12*L34*RY_P; 8 L12*L34*DROP_OHR_Z; 2 L12*L35*DROP_OHP_YZ
18 L12*L36*RY_P; 44 L12*DROP_OHP_YZ*TY_R_; 7 L13*L27*L30; 98 L14*L14*L21
38 L14*L16*L21; 2 L14*L17*L19; 59 L14*L17*L27; 5 L14*L21*L22
123 L14*L21*TX_R_; 27 L14*L21*TY_R_; 48 L14*L22*L25; 46 L14*L25*L27
4 L14*L25*L30; 46 L14*L25*TY_R_; 5 L14*L26*L31; 1 L14*L28*L30
1 L14*L30*L33; 72 L16*L27*L28; 2 L17*L18*-OHD; 92 L17*L21*L27
1 L17*L22*L23; 2 L17*L30*L30; 2 L17*L30*L35; 71 L17*L34*DROP_OCQ_Y
14 L18*L21*L25; 8 L18*L21*L26; 5 L18*L21*L30; 1 L18*L21*DROP_OCQ_Y
8 L18*L23*L25; 3 L18*L28*L30; 54 L18*L30*-OHD; 2 L18*L34*RX_P
2 L18*L35*RX_P; 2 L20*L23*L27; 11 L20*L24*L27; 7 L20*L27*L27
4 L20*L27*RX_P; 11 L21*L25*TY_R_; 2 L23*L23*L25; 7 L23*L25*L27
2 L23*L25*L31; 2 L27*L30*RX_P; 1 L28*L30*L35; 37 L28*RX_P*TX_R_
2 L30*RX_P*TY_R_; 1 KLOW*L3; 13 KLOW*L27; 8 KLOW*L36
96 KLOW*TX_R_; 2 FAN*L18; 11 CENT*L0; 2 CENT*L18
5 CENT*L24; 10 TOPCOUNT*L27; 56 +HDF*L12; 1 +OYZ*L18
2 +OYZ*L25; 1 -HYZ*L30; 3 +OCY*L28; 21 -OHZ*L11
1 -OHZ*L13; 16 -OHZ*L21; 56 -OHZ*L25; 11 -OHZ*L28
14 -OHZ*RX_P; 64 -OHZ*DROP_OCQ_Y; 55 -OHZ*TX_R_; 82 -OHZ*TY_R_
59 -CDP*L5; 59 -CDP*L6; 5 -CDP*L19; 50 -CDP*L21
3 -CDP*L35; 76 -CDP*DROP_OHR_Z; 89 -CYP*L3; 1 -CYP*L12
10 -CYP*L20; 35 -CYP*-OHD; 81 -CYP*DROP_OHP_YZ; 28 +DFQ*L3
60 +DFQ*L6; 1 +DFQ*L23; 60 +DFQ*L25; 119 -HFR*L1
23 -HFR*L2; 218 -HFR*L18; 234 -HFR*L21; 7 -HFR*L25
273 -HFR*L28; 5 -HFR*L30; 37 -HFR*DROP_OHP_YZ; 263 -HFR*RY_P
23 -HFR*DROP_OCQ_Y; 5 -DFR*L0; 56 -DFR*L4; 35 -DFR*L20
6 -DFR*L22; 35 -DFR*L34; 12 +OQR*L7; 72 +OQR*L15
54 +OQR*L16; 58 +OQR*L28; 6 +OQR*L30; 8 +OQR*L31
4 +OQR*DROP_OCQ_Y; 85 -DPR*L1; 9 -DPR*L27; 18 -CYZ*L14
22 -CYZ*L16; 10 -CYZ*L21; 12 -CYZ*L25; 1 -CYZ*L29
18 -CYZ*L34; 17 -CYZ*TX_R_; 96 -OYP*L2; 81 -OYP*L17
15 -OYP*L21; 47 -OZQ*L18; 81 +FPQ*L3; 85 +FPQ*L6
26 +FPQ*L14; 2 +FPQ*L17; 1 +FPQ*L23; 29 +FPQ*L27
8 +FPQ*L28; 96 +FPQ*L34; 41 +FPQ*+OCF; 5 +FPQ*RY_P
96 +FPQ*DROP_OHR_Z; 22 -CQR*L17; 8 -CQR*L18; 16 -CQR*L26
2 -CQR*L33; 44 -HDQ*L3; 51 -HDQ*L4; 66 -HDQ*L14
104 -HDQ*L19; 77 -HDQ*L24; 58 -HDQ*L25; 4 -HDQ*L31
37 -HDQ*L33; 16 -HDQ*-OHD; 94 -HDQ*DROP_OHP_YZ; 56 -HDQ*DROP_OCR_YQ
215 -HDQ*TX_R_; 14 -ODY*L6; 7 -ODY*L21; 24 -ODY*L34
1 -ODY*L35; 5 -ODY*RX_P; 5 -ODY*TY_R_; 10 +OFZ*L1
21 +OFZ*L3; 14 +OFZ*L9; 1 +OFZ*L10; 64 +OFZ*L21
94 +OFZ*L23; 105 +OFZ*L26; 10 +OFZ*L34; 38 +OFZ*DROP_OHP_YZ
69 +OFZ*RY_P; 123 +OFZ*DROP_OCR_YQ; 62 +ODQ*L12; 80 -DZQ*L4
217 -DZQ*L6; 154 -DZQ*L7; 7 -DZQ*L9; 76 -DZQ*L12
98 -DZQ*L14; 117 -DZQ*L19; 62 -DZQ*L33; 11 -DZQ*-OHD
38 -DZQ*RX_P; 5 -DZQ*DROP_OCQ_Y; 123 -DZQ*TX_R_; 75 -DZQ*TY_R_
5 +CPQ*L18; 5 -DPQ*L12; 20 -DPQ*L27; 60 -DQR*L6
119 -DQR*L12; 8 -DQR*L17; 16 -DQR*L19; 6 -DQR*L22
71 -DQR*L25; 46 -DQR*L28; 6 -DQR*+OCF; 71 -DQR*DROP_OHR_Z
14 -CFQ*L18; 23 +FQR*L14; 12 +FQR*RX_P; 10 +YPQ*L12
5 -YZP*L27; 14 +ZQR*L2; 85 -PQR*L6; 9 -PQR*L27
22 C_OCZ_Y*L17; 14 C_OCZ_Y*L25; 106 C_OCR_YQ*L6; 5 C_OCR_YQ*L21
23 C_DFP_Q*L6; 7 C_DZR_Q*L8; 5 C_DZR_Q*L12; 45 TPX_R_*RX_P
2 SP_OPDH_YQ_PH-1*L17; 54 Q_OCPZ_Y*L27; 22 Q_OCPZ_Y*L30; 1 SP_OPDF_YQ_PF-1*L14
24 Q_OYDR_Q*L1; 25 Q_OYDR_Q*L14; 3 Q_DRFY_Q*L18; 8 Q_DRFZ_Q*L18
9 Q_DRFP_Q*L0; 97 Q_DRFP_Q*L14; 2 Q_DRFP_Q*L16; 5 Q_DRFP_Q*L18
```

Upper bound: `-3596911477/1000000000`.

### Leaf RUTmmpmmppmmmppp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR -HDQ -ODY +OFZ +ODQ +DZQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDZP -OZP
P OHFQR -OFQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ -DPQ
P DOHQR -DQR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPR +ZPR
P ZODQR +ZQR
P POHZQ -PZQ
P QOCPR +QPR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
S R - 2 upper 628/721
X R - 12 lower 2210517/4973500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 111/250 1
t 98/125 1
```

```c1top-sum
1 L0*L2*L27; 23 L0*L3*L21; 22 L0*L3*L34; 16 L0*L5*L8
4 L0*L30*RX_P; 55 L1*L1*L6; 38 L1*L1*L31; 3 L1*L2*L2
19 L1*L2*L6; 30 L1*L2*L10; 19 L1*L2*L25; 34 L1*L2*TY_R_
5 L1*L3*L12; 34 L1*L4*L12; 9 L1*L4*L17; 210 L1*L6*L6
50 L1*L6*L17; 62 L1*L6*L18; 337 L1*L6*L25; 11 L1*L6*L34
53 L1*L11*L12; 18 L1*L16*TY_R_; 26 L1*L17*L25; 23 L1*L21*TY_R_
189 L1*L25*L25; 35 L1*L25*TY_R_; 21 L2*L5*L8; 1 L2*L14*L25
4 L2*L16*L27; 2 L2*L17*L31; 2 L2*L17*RX_P; 29 L2*L17*RY_P
17 L2*L25*TY_R_; 1 L2*L30*TY_R_; 69 L3*L3*L18; 107 L3*L3*L34
96 L3*L5*L18; 1 L3*L10*L10; 27 L3*L10*L12; 59 L3*L10*L31
4 L3*L15*L36; 34 L3*L18*L20; 70 L3*L18*L27; 39 L3*L18*DROP_OCQ_Y
87 L3*L18*DROP_OHR_Z; 1 L3*L27*L36; 41 L3*L34*L35; 114 L4*L6*L17
119 L4*L12*L23; 31 L4*L12*L34; 13 L4*L15*L15; 108 L4*L15*L17
22 L4*L17*L34; 16 L5*L5*L25; 96 L5*L5*RX_P; 42 L5*L6*L12
1 L5*L8*L22; 4 L5*L9*RX_P; 1 L5*L10*L30; 13 L5*L14*L14
5 L5*L18*L20; 15 L5*L20*L27; 1 L6*L10*L21; 11 L6*L14*L36
87 L6*L15*L26; 12 L6*L17*L22; 138 L6*L17*DROP_OCR_YQ; 24 L6*L18*L27
28 L6*L18*L34; 19 L6*L18*RX_P; 111 L6*L18*TX_R_; 12 L6*L19*TY_R_
14 L6*L21*L26; 1 L6*L22*L23; 43 L6*L22*TY_R_; 11 L6*L23*L26
18 L6*L23*RX_P; 57 L6*L25*L26; 152 L6*L25*TY_R_; 65 L6*L26*RY_P
31 L6*L34*DROP_OCQ_Y; 60 L7*L27*L28; 76 L8*L10*L17; 45 L8*L12*TY_R_
3 L8*L17*L18; 4 L8*L18*L27; 19 L9*L9*L15; 1 L9*L10*L34
41 L9*L15*L31; 8 L9*L15*L34; 11 L9*L17*L36; 42 L9*L26*L34
163 L9*L31*L34; 72 L10*L12*L17; 48 L10*L12*L28; 1 L10*L17*L20
1 L10*L17*L29; 10 L10*L17*L36; 39 L10*L17*C_OHD_ZQ; 4 L10*L17*TY_R_
1 L10*L20*TY_R_; 1 L10*L23*L27; 24 L11*L12*L21; 3 L11*L18*L25
4 L12*L15*L17; 30 L12*L15*L26; 32 L12*L15*L32; 11 L12*L15*RY_P
11 L12*L16*L29; 2 L12*L17*L20; 1 L12*L17*L27; 87 L12*L17*L31
1 L12*L17*TY_R_; 1 L12*L18*L21; 124 L12*L18*L27; 124 L12*L18*TY_R_
73 L12*L21*DROP_OCR_YQ; 9 L12*L23*DROP_OCQ_Y; 1 L12*L25*L34; 5 L12*L26*L32
46 L12*L26*L35; 30 L12*L27*L34; 1 L12*L28*L30; 6 L12*L32*DROP_OCQ_Y
4 L12*L34*RX_P; 1 L12*DROP_OCQ_Y*TY_R_; 107 L14*L17*L22; 11 L14*L18*L30
25 L14*L18*TX_R_; 18 L14*L20*L28; 16 L14*L27*L29; 25 L14*L27*RX_P
34 L15*L17*L23; 9 L15*L21*L22; 7 L15*L21*L31; 42 L15*L21*L34
10 L15*L26*L31; 44 L15*L31*L34; 1 L15*L31*L35; 21 L16*L17*L19
2 L16*L21*L36; 27 L16*L23*L28; 4 L16*L27*L32; 30 L16*TY_R_*TY_R_
2 L17*L17*L31; 68 L17*L17*DROP_OCQ_Y; 33 L17*L18*L20; 121 L17*L18*L27
11 L17*L18*L29; 21 L17*L18*RX_P; 8 L17*L20*L22; 24 L17*L21*L27
33 L17*L21*TY_R_; 1 L17*L22*L23; 7 L17*L22*L27; 9 L17*L22*C_OHD_ZQ
1 L17*L23*L30; 11 L17*L29*L34; 75 L17*L31*L36; 145 L17*L31*C_OHD_ZQ
2 L17*L35*RX_P; 1 L18*L20*L23; 38 L18*L20*L28; 35 L18*L21*RX_P
7 L18*L23*TX_R_; 1 L18*L25*L35; 30 L18*L25*TY_R_; 121 L18*L27*DROP_OHP_YZ
1 L18*L30*RX_P; 8 L20*L27*RX_P; 8 L21*L23*RX_P; 1 L21*L27*L34
23 L21*L31*L34; 73 L21*L34*TX_R_; 1 L22*L26*L35; 6 L22*L31*L34
1 L23*L28*L30; 1 L23*L28*RX_P; 59 L25*L25*L27; 59 L25*L25*TY_R_
17 L25*L27*L29; 30 L25*L28*TY_R_; 1 L27*L28*L30; 70 L27*L28*RX_P
1 L27*L30*L33; 52 L31*L31*L34; 149 L31*L34*RX_P; 24 L31*L34*RY_P
16 KLOW*L1; 58 KLOW*L5; 36 KLOW*L10; 8 KLOW*RX_P
6 KLOW*TX_R_; 15 FAN*L18; 18 CENT*L14; 1 CENT*L22
31 TOPCOUNT*L18; 134 -HYZ*L3; 41 -HYZ*L4; 10 -HYZ*L6
1 -HYZ*L10; 23 -HYZ*L21; 223 -HYZ*L23; 216 -HYZ*L31
10 -HYZ*L36; 38 -HYZ*C_OHD_ZQ; 229 -HYZ*DROP_OCQ_Y; 1 -HYZ*DROP_OHR_Z
42 -HYZ*DROP_OCR_YQ; 33 -HCY*L12; 35 -OHZ*L4; 97 -OHZ*L11
29 -OHZ*L14; 18 -OHZ*L19; 23 -OHZ*L21; 59 -OHZ*L23
67 -OHZ*L26; 34 -OHZ*L29; 38 -OHZ*L32; 9 -OHZ*L33
185 -OHZ*L35; 67 -OHZ*RY_P; 3 -OHZ*TX_R_; 62 -HFZ*L6
11 -HFZ*L9; 11 -HFZ*L15; 39 +OCP*L8; 89 -CDP*L3
96 -CDP*L5; 18 -CDP*L15; 16 -CDP*L21; 1 -CDP*L23
87 -CDP*L24; 70 -CDP*L27; 89 -CDP*L31; 5 -CDP*L35
120 -CYP*L8; 71 -CYP*L17; 1 -CYP*L20; 177 -CYP*L23
1 -CYP*L36; 24 -CYP*C_OHD_ZQ; 69 -CYP*RX_P; 179 -CYP*DROP_OCQ_Y
28 +CDQ*L12; 26 -HFR*L2; 5 -HFR*L4; 148 -HFR*L6
1 -HFR*L8; 1 -HFR*L12; 26 -HFR*L17; 92 -HFR*L19
73 -HFR*L21; 418 -HFR*L25; 23 -HFR*DROP_OCQ_Y; 230 -HFR*DROP_OHR_Z
5 -HFR*TY_R_; 4 +CDR*L17; 66 -DFR*L14; 59 -DFR*L20
38 -DFR*L25; 1 -DFR*L35; 9 +OQR*L18; 75 -DPR*L1
3 -DPR*L6; 42 -DPR*L15; 16 -DPR*L22; 30 -DPR*TY_R_
11 -CYZ*L2; 61 -CYZ*L9; 1 -CYZ*L11; 1 -CYZ*L18
66 -CYZ*L20; 67 -CYZ*L21; 9 -CYZ*L26; 22 -CYZ*L34
62 -CYZ*DROP_OHP_YZ; 6 -CYZ*RY_P; 1 -CYZ*DROP_OHR_Z; 5 -OYP*L0
56 -OYP*L2; 44 -OYP*L31; 9 -OYP*L34; 93 +FPQ*L3
3 +FPQ*L6; 1 +FPQ*L9; 124 +FPQ*L14; 30 +FPQ*L17
1 +FPQ*L23; 43 +FPQ*L28; 11 +FPQ*-OHD; 113 +FPQ*+OCF
1 +FPQ*DROP_OHR_Z; 9 +FPQ*DROP_OCR_YQ; 13 -CQR*L6; 1 -CQR*L12
8 -CQR*L21; 7 -CQR*L34; 27 -ODY*L12; 12 +OFZ*L16
31 +OFZ*L20; 46 +OFZ*L22; 109 +OFZ*DROP_OCQ_Y; 66 +OFZ*TY_R_
11 +ODQ*L2; 21 +ODQ*L4; 6 +ODQ*L9; 2 +ODQ*L11
70 +ODQ*L15; 46 +ODQ*L17; 8 +ODQ*L20; 71 +ODQ*L25
96 +ODQ*L36; 37 +ODQ*-OHD; 124 +ODQ*RY_P; 9 +ODQ*DROP_OCQ_Y
76 +ODQ*DROP_OHR_Z; 7 +DZQ*L9; 42 +DZQ*L15; 228 +DZQ*L17
5 +DZQ*L18; 1 +DZQ*L27; 225 +DZQ*+OCF; 59 +DZQ*C_OHD_ZQ
230 +DZQ*RX_P; 130 +DZQ*RY_P; 9 +DZQ*DROP_OCQ_Y; 31 +DZQ*DROP_OHR_Z
42 +DZQ*TX_R_; 1 +OYR*L12; 4 +OYR*L18; 13 +CPQ*L17
1 -DYQ*L6; 1 -DYQ*L27; 4 -DPQ*L6; 1 -DPQ*L10
67 -DQR*L3; 15 -DQR*L4; 23 -DQR*L14; 8 -DQR*L20
12 -DQR*L25; 1 -DQR*L30; 67 -DQR*L33; 12 -DQR*TX_R_
11 -FYZ*L12; 39 -CFQ*L18; 6 +FQR*L12; 1 -YZQ*L18
1 +ZQR*L30; 16 -PQR*L34; 44 C_OHF_Z*L1; 35 C_OHF_Z*L17
6 C_OHF_Z*L26; 42 C_OCR_YQ*L1; 12 C_OCR_YQ*L6; 32 C_ODR_Q*L5
5 C_ODR_Q*L25; 114 C_OPR_YQ*L6; 16 TPX_R_*L25; 5 TPY_R_*L27
24 Q_OCPQ_Y*L17; 1 Q_OYDR_Q*L10; 13 Q_OYDR_Q*L12; 23 Q_OYDR_Q*L14
21 Q_OYDR_Q*L16; 1 Q_OYDR_Q*L23; 70 Q_OYDR_Q*RX_P; 33 SP_OPDZ_YQ_PZ-1*L2
1 SP_OPDZ_YQ_PZ-1*L12; 1 SP_OPDZ_YQ_PZ-1*TX_R_; 108 Q_DRFP_Q*L6; 71 Q_DRFP_Q*L34
```

Upper bound: `-1716728601/500000000`.

### Leaf RUTmmpmmppmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR -HDQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYQ +ODQ
P OHDZP -OZP
P OHFQR -OFQ
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPQ -DPQ
P DOHQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FHCZQ +FZQ
P YOHDQ +YDQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCDZ +YDZ
P YOCZP -YZP
P ZODPR +ZPR
P POHZQ -PZQ
P QOHZR -QZR
P QOCPR +QPR
M OHDQZY 1
M ODHQYZ -1
M HODYZQ -1
M HDOYQZ 1
M DOHZYQ 1
M DHOZQY -1
```

```c1top-bounds
T OHD YZQ 0 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
18 L0*L1*L20; 13 L0*L1*DROP_OHP_YZ; 14 L0*L2*L34; 16 L0*L3*L17
21 L0*L3*L33; 37 L0*L6*L17; 11 L0*L6*L21; 25 L0*L6*L23
8 L0*L6*L29; 8 L0*L12*L31; 18 L0*L12*RY_P; 37 L0*L17*L25
179 L0*L18*TX_R_; 18 L0*L20*L28; 1 L0*L20*L31; 17 L0*L20*TY_R_
5 L0*L23*L27; 19 L0*L23*TY_R_; 10 L0*L24*RX_P; 160 L0*L27*L29
238 L0*L27*DROP_OHP_YZ; 12 L0*L31*L31; 2 L0*L31*L35; 88 L1*L2*L27
50 L1*L2*RY_P; 19 L1*L4*DROP_OCQ_Y; 12 L1*L5*L30; 7 L1*L8*L8
1 L1*L10*L18; 19 L1*L12*L32; 37 L1*L17*L23; 107 L1*L17*DROP_OCR_YQ
4 L1*L21*L30; 167 L1*L27*TX_R_; 7 L1*L30*DROP_OHP_YZ; 28 L1*L30*DROP_OCQ_Y
1 L1*L31*L32; 11 L2*L3*L34; 17 L2*L4*L27; 11 L2*L6*L15
9 L2*L10*L30; 6 L2*L10*RX_P; 150 L2*L16*L17; 15 L3*L3*L14
4 L3*L3*L32; 21 L3*L4*L4; 47 L3*L17*L18; 170 L3*L18*L24
20 L3*L18*L27; 13 L3*L18*L28; 16 L3*L32*RX_P; 2 L4*L6*L7
10 L4*L6*L30; 3 L4*L8*RX_P; 8 L4*L10*L17; 1 L4*L15*L21
45 L4*L17*DROP_OCQ_Y; 5 L4*L19*L30; 7 L4*L20*L31; 3 L4*L21*L21
1 L4*L21*L30; 8 L4*L23*L24; 5 L4*L24*L30; 1 L4*L24*L34
6 L4*L25*L30; 8 L4*L26*L30; 24 L4*L27*DROP_OHP_YZ; 14 L4*L30*C_OCF_Y
7 L4*L36*TX_R_; 14 L6*L10*L33; 2 L6*L10*L36; 12 L6*L11*L30
4 L6*L11*L34; 3 L6*L12*L23; 3 L6*L14*L19; 4 L6*L14*L30
11 L6*L15*L18; 5 L6*L19*C_OCF_Y; 2 L6*L28*L29; 12 L6*DROP_OCQ_Y*TY_R_
4 L7*L12*L34; 14 L7*L18*L28; 2 L7*L18*DROP_OHP_YZ; 38 L7*L27*-OHD
4 L8*L14*L17; 4 L8*L17*L34; 3 L8*L18*L27; 25 L9*L16*L27
13 L9*L17*DROP_OCQ_Y; 1 L9*L18*L18; 3 L10*L12*L27; 49 L10*L27*RX_P
10 L11*L16*L27; 39 L12*L16*L27; 5 L12*L17*C_OCF_Y; 5 L12*L18*TY_R_
6 L12*L20*L32; 3 L12*L23*L28; 27 L12*L32*DROP_OCQ_Y; 14 L13*L17*DROP_OCR_YQ
7 L13*L18*DROP_OCR_YQ; 8 L14*L17*DROP_OCQ_Y; 2 L14*L18*TX_R_; 8 L14*L27*L29
3 L14*L27*L31; 11 L14*L30*C_OCF_Y; 4 L15*L17*DROP_OCR_YQ; 4 L15*L23*RX_P
5 L15*L27*DROP_OCQ_Y; 96 L16*L16*L27; 150 L16*L17*L17; 1 L16*L21*L27
34 L16*L27*L27; 123 L16*L27*DROP_OHP_YZ; 3 L17*L17*L20; 45 L17*L17*DROP_OCQ_Y
219 L17*L17*DROP_OCR_YQ; 45 L17*L18*L20; 55 L17*L18*DROP_OCQ_Y; 12 L17*L19*L26
1 L17*L20*L22; 5 L17*L20*+OCF; 4 L17*L21*L34; 1 L17*L22*TX_R_
13 L17*L23*L27; 4 L17*L27*L34; 46 L17*L27*RY_P; 25 L17*L30*DROP_OCR_YQ
13 L17*-OHD*TY_R_; 9 L17*+OCF*DROP_OCQ_Y; 150 L17*DROP_OHP_YZ*RX_P; 21 L17*RY_P*TY_R_
34 L17*DROP_OCR_YQ*DROP_OCR_YQ; 5 L18*L20*L27; 9 L18*L20*L33; 2 L18*L29*RY_P
9 L18*C_OCF_Y*RY_P; 55 L18*RX_P*DROP_OCQ_Y; 1 L19*L32*L35; 8 L21*L27*L34
3 L21*RX_P*RX_P; 13 L23*L27*L34; 13 L23*L30*RX_P; 14 L25*L27*-OHD
1 L27*L29*L29; 1 L27*L29*RX_P; 42 L27*L32*RX_P; 8 L27*L36*DROP_OCQ_Y
13 L28*L32*RX_P; 4 KLOW*L19; 37 KLOW*RY_P; 59 KLOW*TX_R_
22 CENT*L0; 7 CENT*L29; 11 CENT*L33; 8 CENT*C_OCF_Y
3 -OHF*L23; 7 +HDF*L30; 5 +HDF*L36; 20 +OYZ*L8
7 +OYZ*L10; 34 +OYZ*RX_P; 21 -HYZ*L1; 7 -HYZ*L10
11 -HYZ*L13; 11 -HYZ*L16; 8 -HYZ*L35; 28 -HYZ*DROP_OCQ_Y
2 -HFY*L0; 3 +CDY*L6; 22 -OHZ*L30; 20 -OHZ*L32
26 -HFZ*L14; 26 -HFZ*L15; 12 -HFZ*RY_P; 33 -HFZ*DROP_OCQ_Y
4 +OCP*L7; 18 +OCP*L23; 21 -CDP*L5; 126 -CDP*L17
9 -CDP*L21; 170 -CDP*L24; 126 -CDP*DROP_OHP_YZ; 55 -CDP*DROP_OCQ_Y
3 -CYP*L27; 5 -CYP*L28; 2 -HFQ*L18; 28 +DFQ*L0
4 +HZQ*L17; 171 -HFR*L17; 10 -HFR*L21; 267 -HFR*C_OCF_Y
217 -HFR*RX_P; 4 -HFR*DROP_OCQ_Y; 181 -HFR*DROP_OCR_YQ; 2 +HZR*L18
2 +OPQ*L18; 4 -CYZ*L6; 9 -CYZ*L8; 23 -CYZ*L16
13 -CYZ*L20; 42 -CYZ*L23; 37 -CYZ*-OHD; 46 -CYZ*DROP_OCQ_Y
10 -CYZ*DROP_OCR_YQ; 10 +OYQ*L9; 8 +OYQ*L35; 15 +OYQ*-OHD
5 +OYQ*DROP_OCQ_Y; 4 +FPQ*L14; 2 +FPQ*L16; 1 +FPQ*L20
10 +FPQ*L24; 2 +FPQ*L28; 9 +FPQ*L33; 35 +FPQ*-OHD
2 +FPQ*RY_P; 13 +FPQ*TY_R_; 10 -CQR*L6; 1 -CQR*L16
17 -CQR*RY_P; 20 -HDQ*L7; 3 -HDQ*L8; 10 -HDQ*L19
30 -HDQ*L23; 10 -HDQ*L24; 8 -HDQ*L36; 9 -HDQ*C_OCF_Y
34 -HDQ*DROP_OCQ_Y; 15 +ODY*L1; 13 +ODY*L2; 23 +ODY*L16
7 +ODY*L36; 28 +ODY*-OHD; 8 +ODY*DROP_OCQ_Y; 9 +ODQ*L17
16 -OFY*L18; 2 +CPQ*L4; 8 -DPQ*L24; 1 -DPQ*TX_R_
3 -DYQ*L12; 8 -DYQ*L27; 7 -DZQ*L0; 7 -DZQ*L2
5 -DZQ*L22; 15 -DZQ*L26; 8 -DZQ*L31; 8 -DZQ*L35
23 C_OCZ_Y*L17; 6 C_ODZ_Y*L6; 5 C_ODZ_Y*L8; 15 C_ODQ_Y*L1
22 C_ODQ_Y*L2; 3 C_ODQ_Y*L20; 22 C_ODR_YQ*L6; 3 C_ODR_YQ*L13
178 C_ODR_YQ*L16; 8 C_ODR_YQ*L34; 55 C_ODR_YQ*-OHD; 9 C_ODR_YQ*DROP_OCQ_Y
19 C_ODR_YQ*DROP_OCR_YQ; 3 C_HDZ_Q*TX_R_; 31 C_CFR_Q*L0; 181 C_FPR_Q*L0
1 TPX_R_*RX_P; 2 Q_ODFH_YZQ*L1; 6 Q_OYFH_Z*L10; 5 Q_OYFH_Z*L14
14 Q_OYFH_Z*RY_P; 6 Q_OQFH_Z*L12; 47 Q_OCPQ_Y*L17; 14 Q_ODQZ_Y*L3
11 Q_ODQZ_Y*L30; 10 Q_HPRF_Q*L6; 11 Q_CPRF_Q*L18; 8 Q_DRFZ_Q*L27
1 Q_FYPR_Q*L18; 25 M_DHOZQY_-1_0*L27; 1 M_DHOZQY_-1_1*RX_P; 9 M_DHOZQY_-1_2*L20
8 M_DHOZQY_-1_3*L0; 18 M_DHOZQY_-1_3*L9; 8 M_DHOZQY_-1_3*L24; 8 M_DHOZQY_-1_3*L25
8 M_DHOZQY_-1_3*L32; 11 M_DHOZQY_-1_3*L33; 5 M_DHOZQY_-1_3*DROP_OCQ_Y; 8 M_DHOZQY_-1_3*TY_R_
2 M_DHOZQY_-1_4*L2
```

Upper bound: `-380443393583/91000000000`.

### Leaf RUTmmpmmppmpm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR +HDQ -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DOHCQ -DOQ
P DOHYZ -DYZ
P DOHZQ -DZQ
P DOCYQ -DYQ
P DOFPQ -DPQ
P DOFQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHCR -QHR
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
2 L0*L0*L3; 41 L0*L0*TX_R_; 2 L0*L2*L3; 96 L0*L3*L4
8 L0*L3*L7; 4 L0*L3*L20; 34 L0*L3*DROP_OHP_YZ; 19 L0*L7*L22
3 L0*L7*L35; 2 L0*L12*TY_R_; 12 L0*L17*L20; 16 L0*L18*TX_R_
3 L0*L21*L29; 34 L0*L22*L29; 21 L0*L23*RX_P; 2 L0*L26*L30
2 L0*L28*L33; 20 L0*DROP_OHP_YZ*RX_P; 4 L1*L1*L6; 10 L1*L4*L6
4 L1*L6*L6; 3 L1*L6*L10; 12 L1*L6*L18; 6 L1*L16*RY_P
2 L1*L17*L25; 2 L1*L17*L35; 2 L2*L3*L10; 5 L2*L6*L23
1 L2*L17*L30; 2 L2*L21*L32; 2 L3*L7*L27; 13 L3*L10*L23
1 L3*L12*DROP_OHP_YZ; 1 L3*L17*DROP_OHP_YZ; 47 L3*L17*DROP_OCR_YQ; 7 L3*L18*L20
19 L3*L18*L28; 35 L3*L18*DROP_OCQ_Y; 25 L3*L18*TX_R_; 1 L3*L27*L31
1 L3*L31*L32; 3 L3*L32*RX_P; 15 L3*L32*TX_R_; 8 L4*L6*L31
21 L4*L17*L20; 10 L4*L17*DROP_OHP_YZ; 20 L4*L17*RX_P; 15 L4*L17*TX_R_
15 L4*L18*L21; 15 L4*L18*L25; 10 L5*L7*L25; 15 L5*L27*L29
2 L6*L7*L18; 2 L6*L10*L23; 36 L6*L17*L18; 1 L6*L23*L31
2 L6*L27*L31; 20 L7*L18*L20; 24 L7*L18*L28; 1 L8*L17*L27
3 L8*L18*L31; 14 L8*L18*TX_R_; 2 L8*L27*C_OHD_Z; 4 L9*L17*RY_P
10 L10*L17*L20; 1 L10*L17*DROP_OHP_YZ; 11 L10*L17*DROP_OCQ_Y; 15 L10*L17*TX_R_
2 L16*L17*L27; 20 L16*L17*L28; 10 L16*L25*L28; 25 L16*L27*L28
4 L17*L17*RY_P; 4 L17*L17*DROP_OCQ_Y; 4 L17*L18*L20; 6 L17*L18*L28
5 L17*L18*L31; 42 L17*L18*TX_R_; 22 L17*L21*L27; 22 L17*L23*TX_R_
1 L17*L29*L32; 1 L17*L31*DROP_OHP_YZ; 13 L18*L20*L27; 13 L18*L20*TY_R_
40 L18*L24*RX_P; 15 L18*L25*L28; 4 L18*RX_P*RX_P; 6 L18*RX_P*TY_R_
6 L19*RX_P*DROP_OCR_YQ; 5 L20*L27*L28; 5 L21*L28*L28; 5 L23*L25*L28
20 L25*L27*L28; 2 L25*L28*L28; 20 L27*L28*TX_R_; 23 L27*L29*-OHD
14 L28*RX_P*TX_R_; 25 L28*RX_P*TY_R_; 1 L35*RX_P*RX_P; 3 KLOW*L10
22 KLOW*L17; 4 KLOW*L23; 1 KLOW*L35; 48 KLOW*DROP_OHP_YZ
23 KLOW*RY_P; 47 KLOW*DROP_OCR_YQ; 48 KLOW*TX_R_; 4 TOPCOUNT*L27
7 -OHF*L12; 7 -OHF*L14; 7 -OHF*L36; 1 +OCP*L8
38 -CDP*L4; 63 -CDP*L5; 13 -CDP*L20; 10 -CDP*L31
14 -CDP*DROP_OHP_YZ; 40 -CDP*DROP_OCR_YQ; 41 -CDP*TX_R_; 6 +DFP*L17
5 -CYP*L3; 10 -CYP*L20; 2 -CYP*-OHD; 13 -CYP*DROP_OCQ_Y
15 -CYP*TX_R_; 31 +HCQ*L17; 19 -HFQ*L4; 4 -HFQ*L31
50 +CDQ*L0; 15 +CDQ*L17; 6 +DFQ*L10; 5 +DFQ*L18
28 +DFQ*L23; 60 +DFQ*L24; 24 +DFQ*L26; 26 +DFQ*L29
6 +DFQ*L35; 69 +DFQ*-OHD; 42 +DFQ*DROP_OHP_YZ; 28 +DFQ*DROP_OCQ_Y
18 -HFR*L2; 31 -HFR*L20; 5 -HFR*L22; 6 -HFR*-OHD
33 -HFR*C_OHD_Z; 24 +OQR*L5; 18 +OQR*L6; 22 +OQR*DROP_OHP_YZ
2 -OYP*L6; 20 +FPQ*L23; 4 +FPQ*L25; 19 +FPQ*L28
16 +FPQ*L29; 2 +FPQ*L32; 20 +FPQ*DROP_OCQ_Y; 4 +FPQ*TX_R_
31 +HDQ*L7; 4 +HDQ*L10; 51 +HDQ*L14; 51 +HDQ*L15
16 +HDQ*L19; 13 +HDQ*L29; 4 +HDQ*L35; 6 +HDQ*-OHD
47 +HDQ*DROP_OHP_YZ; 31 +HDQ*TX_R_; 5 +HDQ*TY_R_; 4 -ODY*L3
4 -ODY*L6; 1 -ODY*L20; 4 -ODY*DROP_OHP_YZ; 2 -ODY*TX_R_
1 +CPR*L31; 12 +ODQ*L18; 37 -DQR*L7; 22 -CFQ*L18
6 +FQR*L6; 2 +FYQ*L18; 26 C_OCR_YQ*L17; 2 C_HDF_Q*L1
85 C_HDF_Q*L4; 4 C_HDF_Q*L6; 13 C_HDF_Q*L20; 13 C_CFR_Q*L17
27 C_DFP_Q*L0; 22 C_DFP_Q*L6; 9 TPX_R_*RX_P; 4 Q_OPQH_YZ*L17
16 Q_OCPD_Y*L6; 2 SP_OPDF_YQ_OD1*L17; 5 Q_OYDR_Q*L3; 2 Q_HDRF_Q*L8
29 Q_HDRF_Q*L20; 13 Q_HDRF_Q*RX_P; 2 Q_HYPR_Q*L17; 40 Q_CPDF_Q*L27
9 Q_CPRF_Q*L3; 4 Q_DRFP_Q*L0; 19 Q_DRFP_Q*L22; 12 RIGHTSUP
```

Upper bound: `-62955903/100000000`.

### Leaf RUTmmpmmppmpp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR +HDQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYQ +ODQ
P OHDZP -OZP
P OHFQR -OFQ
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DOHYQ -DYQ
P DOHZQ -DZQ
P DOFPQ -DPQ
P DOFQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCDZ +YDZ
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHCR -QHR
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
13 L0*L0*L3; 156 L0*L0*TX_R_; 2 L0*L2*L9; 42 L0*L3*L4
16 L0*L3*+OCF; 41 L0*L6*L23; 3 L0*L8*TX_R_; 2 L0*L10*RX_P
1 L0*L15*L24; 22 L0*L17*DROP_OHP_YZ; 5 L0*L19*L36; 1 L0*L35*C_OHD_YZ
5 L0*DROP_OHP_YZ*TX_R_; 72 L0*RX_P*DROP_OCR_YQ; 141 L0*DROP_OCQ_Y*TX_R_; 6 L0*DROP_OCR_YQ*TX_R_
15 L0*TX_R_*TX_R_; 15 L1*L2*L6; 3 L1*L6*L20; 18 L1*L6*L24
7 L1*L8*L8; 4 L1*L9*L18; 1 L1*L9*L34; 1 L1*L12*L13
4 L1*L12*L18; 29 L1*L12*L32; 5 L1*L14*L18; 8 L1*L18*L20
20 L1*L30*DROP_OCQ_Y; 2 L2*L3*L34; 1 L2*L4*L36; 1 L2*L10*L17
4 L2*L34*RX_P; 1 L3*L4*L34; 1 L3*L10*L35; 18 L3*L14*DROP_OCQ_Y
4 L3*L15*TX_R_; 40 L3*L17*DROP_OHP_YZ; 40 L3*L18*L24; 160 L3*L18*DROP_OCQ_Y
10 L3*L18*DROP_OCR_YQ; 4 L3*L23*RX_P; 23 L3*L24*C_OHD_YZ; 19 L3*L32*DROP_OCQ_Y
47 L4*L4*RX_P; 3 L4*L5*L8; 3 L4*L8*RY_P; 1 L4*L10*L17
6 L4*L16*L30; 5 L4*L17*L20; 6 L4*L20*L23; 8 L4*L23*C_OHD_YZ
1 L4*L24*L34; 14 L4*L24*TY_R_; 4 L4*L34*RX_P; 44 L5*L17*L17
13 L5*L18*RX_P; 26 L5*L27*TX_R_; 1 L5*L34*TX_R_; 22 L5*RX_P*RX_P
10 L5*RX_P*TX_R_; 4 L6*L7*L18; 5 L6*L9*L34; 1 L6*L10*L17
1 L6*L11*L18; 43 L6*L17*L26; 4 L6*L18*RX_P; 32 L6*L23*L27
4 L6*L23*RY_P; 1 L6*L36*C_OHD_YZ; 2 L7*L8*L14; 2 L7*L11*L12
20 L7*L18*L24; 4 L7*L18*TY_R_; 3 L7*L20*L27; 39 L7*L27*RX_P
81 L7*L27*DROP_OCQ_Y; 11 L7*L27*TX_R_; 31 L7*L27*TY_R_; 26 L7*C_OHD_YZ*RX_P
9 L8*L10*L23; 6 L8*L11*L12; 2 L8*L13*L14; 1 L8*L14*L19
4 L8*L14*L25; 19 L9*L9*L34; 3 L9*L10*L34; 2 L9*L17*L28
3 L10*L10*L30; 3 L10*L14*RX_P; 5 L10*L17*L33; 1 L10*L18*L31
1 L10*L30*C_OHD_YZ; 9 L10*L30*DROP_OCQ_Y; 1 L10*L32*L32; 14 L11*L12*C_OCF_Y
3 L11*L30*L30; 8 L11*RX_P*RX_P; 83 L12*L17*L22; 1 L12*L19*L32
4 L12*L22*L23; 8 L12*L32*DROP_OCQ_Y; 1 L12*L34*L35; 29 L12*L35*DROP_OCQ_Y
1 L13*L17*L28; 1 L13*L18*L25; 13 L14*L17*L24; 3 L14*L18*RX_P
3 L15*L17*L19; 1 L15*L31*L34; 2 L15*L31*C_OHD_YZ; 13 L16*L18*L27
62 L16*L27*C_OHD_YZ; 2 L16*L31*C_OHD_YZ; 50 L17*L17*DROP_OCQ_Y; 45 L17*L17*DROP_OCR_YQ
99 L17*L18*L20; 53 L17*L18*L24; 91 L17*L18*DROP_OCQ_Y; 15 L17*L20*L27
13 L17*L20*L34; 48 L17*L23*RX_P; 39 L17*L24*DROP_OCQ_Y; 69 L17*L33*DROP_OCQ_Y
3 L17*L35*L36; 40 L17*+OCF*DROP_OHP_YZ; 6 L17*C_OHD_YZ*TX_R_; 32 L17*RX_P*DROP_OCR_YQ
13 L17*RY_P*RY_P; 115 L17*RY_P*DROP_OCQ_Y; 13 L17*RY_P*TY_R_; 6 L17*DROP_OCQ_Y*DROP_OCQ_Y
4 L18*L20*TY_R_; 31 L18*L23*RX_P; 1 L18*L24*L30; 53 L18*L24*RX_P
3 L18*L28*L31; 4 L19*L21*L27; 4 L21*L23*C_OHD_YZ; 15 L21*L27*DROP_OCR_YQ
4 L21*L34*DROP_OCQ_Y; 15 L22*L27*TX_R_; 39 L27*L29*C_OHD_YZ; 1 L27*L33*L34
32 L27*+OCF*RX_P; 13 L27*DROP_OHP_YZ*DROP_OHP_YZ; 2 L28*L35*RX_P; 4 L31*L34*TX_R_
1 L32*RX_P*TX_R_; 1 L35*L35*L35; 17 KLOW*L10; 7 KLOW*L13
5 KLOW*L17; 15 KLOW*L23; 21 KLOW*L29; 13 KLOW*L34
68 KLOW*DROP_OCQ_Y; 64 KLOW*DROP_OCR_YQ; 38 KLOW*TX_R_; 14 FAN*L14
8 FAN*L23; 2 FAN*TX_R_; 12 CENT*L35; 14 +OYZ*L3
1 -HYZ*L7; 14 -HYZ*L10; 1 -HYZ*L12; 32 -HYZ*L23
1 -HYZ*DROP_OHP_YZ; 60 -HYZ*DROP_OCQ_Y; 29 -OHZ*L32; 12 -OHZ*L35
14 +OCP*L7; 71 +OCP*L17; 58 +OCP*RX_P; 11 +OCP*TY_R_
14 +HCP*L27; 47 -CDP*L1; 58 -CDP*L2; 47 -CDP*L5
2 -CDP*L11; 4 -CDP*L14; 19 -CDP*L20; 93 -CDP*L24
6 -CDP*L31; 108 -CDP*DROP_OHP_YZ; 119 -CDP*DROP_OCQ_Y; 13 -CDP*DROP_OCR_YQ
22 -HDP*L17; 6 -CYP*L3; 1 -CYP*TX_R_; 8 +DZP*L17
15 -HFQ*L2; 29 +DFQ*L22; 23 +DFQ*L23; 24 +DFQ*L24
16 +DFQ*-OHD; 31 +DFQ*C_OCF_Y; 27 +DFQ*DROP_OCR_YQ; 9 +DFQ*TY_R_
15 -HFR*L24; 15 -HFR*L29; 25 -HFR*-OHD; 146 -HFR*C_OHD_YZ
163 -HFR*DROP_OCQ_Y; 6 -HFR*TY_R_; 4 +HDR*L18; 29 +OQR*L17
16 +OQR*L27; 1 -DPR*L27; 1 -CYZ*L19; 29 -CYZ*L20
29 -CYZ*L21; 11 -CYZ*L32; 2 -CYZ*L33; 1 -CYZ*L34
5 -CYZ*-OHD; 4 -CYZ*RX_P; 18 -CYZ*DROP_OCQ_Y; 1 -OYP*L6
3 -OZQ*L0; 4 -OZQ*L23; 19 +FPQ*L6; 4 +FPQ*L17
24 +FPQ*L24; 4 +FPQ*L28; 19 +FPQ*L29; 6 +FPQ*DROP_OCQ_Y
13 -CQR*L4; 34 -CQR*C_OHD_YZ; 6 +HDQ*L3; 9 +HDQ*L5
15 +HDQ*-OHD; 17 +HDQ*+OCF; 13 +HDQ*DROP_OHP_YZ; 22 +HDQ*DROP_OCR_YQ
4 +ODY*L2; 19 +ODY*L23; 31 +ODY*DROP_OCQ_Y; 95 +CPQ*L17
1 +CPR*L27; 10 -CFQ*L18; 2 +FZQ*L0; 8 -YZP*L17
15 +HQR*L0; 13 +ZQR*L16; 1 +ZQR*C_OHD_YZ; 4 -PQR*L0
1 C_OCZ_Y*L27; 20 C_ODR_YQ*L0; 21 C_ODR_YQ*L20; 7 C_ODR_YQ*L24
19 C_ODR_YQ*L28; 70 C_ODR_YQ*C_OHD_YZ; 83 C_ODR_YQ*RX_P; 82 C_ODR_YQ*DROP_OCQ_Y
15 C_ODR_YQ*DROP_OCR_YQ; 15 C_HDF_Q*L1; 9 C_HDF_Q*L4; 6 C_HDF_Q*L8
1 C_HDF_Q*L15; 22 C_HDF_Q*L16; 18 C_HDF_Q*L24; 25 C_HDF_Q*C_OCF_Y
9 C_HDF_Q*DROP_OCQ_Y; 106 C_HDF_Q*DROP_OCR_YQ; 28 C_CFR_Q*L3; 1 C_DFP_Q*L10
4 C_FPR_Q*L6; 25 TPX_R_*L0; 4 SP_OCRH_ZQ_CH-1*L3; 11 Q_OYFH_Z*L4
4 Q_OQFH_Z*RX_P; 7 Q_OPQH_YZ*L18; 1 Q_OCDZ_Y*L12; 12 Q_OPDF_YQ*L17
3 Q_HDRF_Q*L20; 4 Q_HDRF_Q*RY_P; 26 Q_HDRF_Q*DROP_OCR_YQ; 43 Q_CPDF_Q*L0
```

Upper bound: `-4179998543/1000000000`.

### Leaf RUTmmpmmpppmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ +CQR -HDQ -PQR`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPR +ZPR
P POHZQ -PZQ
P QOHZR -QZR
P QOCYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
2 L0*L2*L31; 1 L0*L11*L24; 1 L0*L12*TY_R_; 1 L0*L13*L27
63 L0*L18*TX_R_; 24 L0*L21*L27; 28 L0*L24*RX_P; 28 L1*L2*L16
28 L1*L2*L25; 1 L1*L5*L17; 7 L1*L6*L7; 1 L1*L6*L11
18 L1*L6*L17; 63 L1*L6*L18; 14 L1*L6*L24; 1 L1*L12*L28
63 L1*L17*L27; 28 L1*L17*+OCF; 2 L1*L19*L23; 93 L1*L27*TX_R_
3 L2*L2*L32; 66 L2*L2*RY_P; 66 L2*L2*TY_R_; 5 L2*L5*L22
477 L2*L6*TY_R_; 1 L2*L10*L30; 30 L2*L16*L17; 44 L2*L17*RY_P
43 L2*L17*DROP_OCQ_Y; 52 L2*L19*L19; 3 L2*L19*L21; 3 L2*L19*L31
53 L2*L19*TY_R_; 22 L2*L20*L27; 221 L2*L25*TY_R_; 13 L2*L27*L29
18 L3*L3*L18; 2 L3*L3*L23; 1 L3*L8*L14; 1 L3*L9*L27
3 L3*L10*L13; 2 L3*L10*RX_P; 1 L3*L17*L36; 170 L3*L18*L24
87 L3*L18*TX_R_; 55 L3*L24*L27; 10 L3*L27*L27; 22 L3*L27*DROP_OCQ_Y
255 L3*L27*TX_R_; 2 L3*L31*L34; 85 L4*L6*L17; 74 L4*L17*C_OCF_Y
17 L4*L17*DROP_OHP_YZ; 1 L4*L17*DROP_OCQ_Y; 24 L4*L21*L27; 9 L4*L24*L27
1 L5*L5*L22; 24 L5*L17*L17; 26 L5*L17*L18; 18 L5*L21*L25
3 L5*L21*TY_R_; 75 L5*L25*L27; 1 L5*L25*L28; 22 L5*L27*L27
28 L6*L6*RY_P; 1 L6*L17*L33; 18 L6*L17*DROP_OCQ_Y; 14 L6*L18*L19
17 L6*L18*TY_R_; 25 L6*L21*TY_R_; 22 L6*L22*L25; 28 L6*L22*RX_P
56 L6*L26*TY_R_; 25 L6*L27*L28; 2 L6*RY_P*DROP_OCQ_Y; 1 L8*L10*L27
59 L8*L27*L28; 1 L10*L17*C_OHD_Z; 1 L10*L26*L30; 1 L11*L17*L24
1 L11*L27*L29; 1 L11*L27*RX_P; 1 L12*L17*-OHD; 1 L12*L17*C_OCF_Y
1 L12*L32*DROP_OHP_YZ; 1 L14*L17*L25; 1 L14*L17*TX_R_; 1 L14*L27*L31
1 L15*L16*L31; 1 L16*L28*L31; 30 L17*L17*+OCF; 156 L17*L17*DROP_OCR_Y
44 L17*L18*L20; 34 L17*L19*L27; 14 L17*L21*DROP_OCR_Y; 10 L17*L23*L29
44 L17*L23*DROP_OHP_YZ; 103 L17*L24*DROP_OCR_Y; 226 L17*L26*L26; 209 L17*L26*L27
40 L17*L27*RY_P; 3 L17*L27*TX_R_; 1 L17*L28*L35; 1 L17*L29*L36
115 L17*RX_P*DROP_OCR_Y; 41 L17*RX_P*TY_R_; 28 L17*RY_P*RY_P; 73 L17*RY_P*TY_R_
28 L18*L18*RX_P; 1 L18*L19*L23; 14 L18*L21*L24; 22 L18*L27*L27
2 L18*L28*DROP_OCQ_Y; 17 L19*L27*TX_R_; 26 L20*L27*TX_R_; 9 L21*L25*L28
26 L21*L25*TY_R_; 20 L21*L27*L29; 14 L22*L28*+OCF; 1 L23*RY_P*RY_P
11 L24*L25*L28; 62 L25*L27*L28; 41 L25*TY_R_*TY_R_; 26 L26*L27*L29
22 L27*L27*RY_P; 41 L27*L27*TX_R_; 59 L27*L28*L31; 19 L27*L29*DROP_OCQ_Y
3 KLOW*L3; 1 KLOW*L11; 14 KLOW*L23; 1 KLOW*RY_P
60 KLOW*DROP_OCR_Y; 269 KLOW*TX_R_; 1 CENT*L9; 1 +OYZ*L8
1 -HYZ*L8; 1 -OHZ*L0; 2 -HFZ*L4; 2 -HFZ*TY_R_
11 -CDP*L18; 25 +CDQ*L6; 2 +CDQ*L22; 100 -HFR*L2
1 -HFR*L11; 35 -HFR*L25; 169 -HFR*+OCF; 24 -HFR*DROP_OCQ_Y
156 -HFR*DROP_OCR_Y; 25 -HFR*TX_R_; 34 -OFR*L17; 170 -DPR*L2
1 -CYZ*L3; 1 -CYZ*L27; 1 -CYZ*RX_P; 2 -CYZ*DROP_OCR_Y
3 -OYP*L20; 2 -OYP*C_OCF_Y; 4 +OYQ*L16; 4 +OYQ*L23
4 +OYQ*DROP_OCQ_Y; 9 +HPQ*L25; 129 +FPQ*L4; 7 +FPQ*L7
30 +FPQ*L25; 35 +FPQ*L27; 24 +FPQ*-OHD; 12 +FPQ*RY_P
124 +FPQ*TY_R_; 29 +CQR*L6; 30 +CQR*L16; 26 +CQR*L24
88 +CQR*L26; 72 +CQR*L27; 2 +CQR*+OCF; 237 +CQR*RY_P
204 +CQR*DROP_OCQ_Y; 220 +CQR*TY_R_; 237 -PQR*L4; 196 -PQR*L5
26 -PQR*L19; 37 -PQR*L24; 24 -PQR*-OHD; 44 -PQR*DROP_OHP_YZ
204 -PQR*DROP_OCQ_Y; 235 -PQR*DROP_OCR_Y; 203 +CPQ*L22; 24 +CPQ*TX_R_
44 +CPR*L17; 15 -DPQ*L18; 2 -DPQ*L23; 53 -DPQ*L25
3 -DPQ*TY_R_; 7 -DQR*L19; 1 +FYQ*L17; 10 +FQR*TX_R_
30 C_OPQ_Y*L6; 14 C_OPQ_Y*L25; 55 C_OPQ_Y*L27; 3 C_OPQ_Y*L31
19 C_OPR_YQ*L6; 53 C_CDR_Q*L27; 218 C_CPR_Q*L27; 63 C_CPR_Q*TX_R_
39 C_FPR_Q*L0; 14 C_FPR_Q*L6; 26 C_FPR_Q*L18; 11 TPX_R_*TX_R_
38 Q_ODRH_Z*L17; 63 Q_ORFH_Z*L18; 46 Q_OCDF_YQ*L17; 20 Q_OCDF_YQ*L27
15 Q_OCDR_YQ*L17; 11 Q_OPDF_YQ*L27; 18 Q_HPDF_Q*L6; 11 Q_CDRF_Q*L27
51 Q_CPDR_Q*L2; 41 Q_CPDR_Q*L5; 34 Q_CPDR_Q*L19; 34 Q_CPDR_Q*L22
1 Q_CPDR_Q*L28; 21 Q_DRFP_Q*L6; 10 Q_DRFP_Q*L23
```

Upper bound: `-4524885057/1000000000`.

### Leaf RUTmmpmmpppmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ +CQR -HDQ +PQR`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPR +ZPR
P POHZQ -PZQ
P QOHZR -QZR
P QOCYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
38 L0*L0*TX_R_; 8 L0*L1*L3; 171 L0*L1*L12; 16 L0*L3*L15
117 L0*L3*TX_R_; 180 L0*L4*TX_R_; 6 L0*L9*L12; 17 L0*L12*RX_P
262 L0*L12*TY_R_; 31 L0*L17*L27; 18 L0*L17*L36; 14 L0*L18*RX_P
34 L0*L18*TX_R_; 125 L0*L27*TX_R_; 50 L1*L1*L30; 42 L1*L2*L17
41 L1*L2*L27; 75 L1*L2*L28; 1 L1*L3*L14; 14 L1*L4*L6
8 L1*L6*L10; 169 L1*L6*L14; 46 L1*L6*L16; 5 L1*L6*L31
5 L1*L6*RX_P; 52 L1*L6*TX_R_; 8 L1*L8*L18; 1 L1*L8*L27
49 L1*L12*L18; 5 L1*L12*L32; 6 L1*L17*L31; 14 L1*L17*RY_P
1 L1*L30*TY_R_; 37 L2*L6*TY_R_; 1 L2*L12*L28; 1 L2*L12*L34
1 L2*L12*L35; 67 L2*L14*L17; 65 L2*TY_R_*TY_R_; 42 L3*L3*L18
37 L3*L4*L17; 30 L3*L10*L17; 1 L3*L14*L30; 37 L3*L17*L27
91 L3*L18*L28; 42 L3*L18*L29; 266 L3*L18*TX_R_; 227 L3*L27*L27
1 L3*L28*L34; 203 L4*L4*L17; 56 L4*L6*TY_R_; 109 L4*L17*L18
128 L4*L17*L24; 512 L4*L17*L27; 150 L4*L17*L28; 210 L4*L27*TX_R_
86 L5*L5*L25; 16 L5*L12*L17; 82 L5*L18*L25; 7 L5*L18*L29
35 L5*L25*L27; 67 L5*L25*L28; 83 L6*L6*TY_R_; 38 L6*L10*RX_P
1 L6*L14*L35; 95 L6*L17*TY_R_; 68 L6*L25*TY_R_; 53 L7*L27*L28
3 L8*L10*RX_P; 1 L8*L12*L15; 4 L8*L14*L29; 34 L8*L18*L25
34 L8*L18*TX_R_; 9 L10*L17*L24; 14 L10*L17*L27; 14 L10*L17*DROP_OCR_Y
9 L11*L17*TX_R_; 1 L12*L12*L29; 16 L12*L16*L28; 6 L12*L16*L32
20 L12*L17*L23; 20 L12*L17*DROP_OCQ_Y; 1 L12*L30*C_OCF_Y; 56 L14*L17*L29
18 L14*L17*-OHD; 197 L16*TY_R_*TY_R_; 74 L17*L17*L18; 125 L17*L18*L18
240 L17*L18*L27; 74 L17*L18*RX_P; 175 L17*L18*TX_R_; 244 L17*L27*L27
95 L17*-OHD*TX_R_; 175 L17*RY_P*TX_R_; 125 L18*L18*RX_P; 67 L18*L25*L27
43 L18*L25*L28; 21 L18*L25*TY_R_; 256 L18*L27*RX_P; 149 L25*L27*L28
68 L25*L27*TX_R_; 12 L27*L28*L29; 68 L27*TX_R_*TX_R_; 1 L28*L31*L36
3 L30*L32*RX_P; 51 KLOW*L10; 16 KLOW*L12; 48 KLOW*L17
68 KLOW*L34; 263 KLOW*TX_R_; 8 FAN*L18; 3 CENT*L16
3 CENT*L29; 27 TOPCOUNT*L18; 1 +OYZ*L3; 119 +OYZ*L12
50 -HYZ*L1; 1 -HYZ*L5; 3 -HYZ*L6; 79 -HYZ*L24
79 -HYZ*L25; 33 +OCY*L17; 49 -OHZ*L18; 57 -OHZ*L27
7 -OHZ*L32; 169 -HFZ*L1; 8 -HFZ*L4; 4 -HFZ*L9
51 -HFZ*L16; 207 -HFZ*L26; 1 -HFZ*L35; 4 +OCP*L8
74 +OCP*L17; 11 +OCP*TY_R_; 76 -CDP*L0; 65 -CDP*L4
21 -CDP*L18; 303 -CDP*TX_R_; 262 -CYP*L17; 38 -CYP*L25
262 -CYP*DROP_OHP_YZ; 38 -CYP*TX_R_; 215 -HFR*L0; 376 -HFR*L4
95 -HFR*L17; 34 -HFR*L18; 52 -HFR*L25; 391 -HFR*L27
147 -HFR*+OCF; 52 -HFR*TX_R_; 416 -HFR*TY_R_; 37 -DFR*L0
143 -DFR*L3; 191 -DFR*L4; 83 -DFR*L6; 21 -DFR*L14
25 -DFR*L27; 169 -DFR*L28; 34 -DFR*RY_P; 3 -CYZ*L7
51 -CYZ*L14; 51 -CYZ*L34; 3 -CYZ*+OCF; 126 -CYZ*DROP_OHP_YZ
125 -OYP*L2; 4 -OYP*L6; 5 -FYZ*L17; 118 -YZP*L12
37 C_DPR_Q*L3; 171 C_DPR_Q*L26; 326 C_DPR_Q*L27; 31 C_DPR_Q*C_OHD_Z
16 C_DPR_Q*RY_P; 108 C_DPR_Q*TY_R_; 123 TPX_R_*L3; 160 TPX_R_*L27
21 TPX_R_*L34; 9 Q_OYFH_Z*L1; 3 Q_OCPZ_Y*L8; 118 Q_OCPZ_Y*L30
88 Q_CPDR_Q*L5; 33 Q_CPDR_Q*L6; 104 Q_CPDR_Q*L18; 162 Q_CPDR_Q*L27
29 Q_CPDR_Q*L28
```

Upper bound: `-647961267/1000000000`.

### Leaf RUTmmpmmpppp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ +CQR +HDQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DOHCQ -DOQ
P DOHZQ -DZQ
P DOFPQ -DPQ
P DOFQR -DQR
P DHCYQ -DYQ
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHDR -QHR
P QOHZR -QZR
P QOCYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
25 L0*L0*TX_R_; 8 L0*L1*L29; 9 L0*L3*DROP_OCR_Y; 13 L0*L4*L17
10 L0*L4*L21; 20 L0*L4*TX_R_; 5 L0*L6*L25; 2 L0*L7*L18
3 L0*L17*DROP_OCQ_Y; 14 L0*L20*L27; 11 L0*L21*DROP_OCR_Y; 3 L0*RX_P*TX_R_
50 L0*DROP_OCQ_Y*TX_R_; 2 L0*TX_R_*TX_R_; 4 L1*L3*L17; 2 L1*L6*L24
2 L1*L24*L24; 2 L2*L3*L26; 12 L2*L26*L27; 5 L3*L4*L24
29 L3*L18*DROP_OCQ_Y; 2 L3*L18*TX_R_; 1 L3*L19*L29; 8 L4*L6*L19
11 L4*L17*L27; 11 L4*L17*L28; 36 L4*L17*DROP_OCQ_Y; 24 L4*L20*L27
4 L6*L17*DROP_OHP_YZ; 8 L6*L18*TY_R_; 4 L6*L25*L28; 3 L6*L25*TY_R_
10 L6*L27*TY_R_; 1 L7*L17*C_OHD_Z; 3 L7*L24*L27; 2 L7*L27*TX_R_
5 L8*L23*L28; 4 L16*L17*L29; 3 L16*L27*RX_P; 5 L17*L17*L26
4 L17*L17*C_OCF_Y; 2 L17*L18*L24; 1 L17*L18*L28; 1 L17*L18*DROP_OCQ_Y
1 L17*L24*L28; 5 L17*L25*L26; 12 L17*L27*DROP_OCQ_Y; 4 L17*L27*TY_R_
2 L17*C_OCF_Y*RY_P; 12 L17*DROP_OCQ_Y*DROP_OCR_Y; 3 L18*L21*L27; 3 L18*L21*L28
3 L18*L22*L25; 9 L18*L24*L27; 4 L18*L26*TX_R_; 6 L21*L28*DROP_OCR_Y
19 L21*L28*TY_R_; 5 L23*L28*L31; 5 L24*L27*RX_P; 11 L27*L28*C_OCF_Y
13 L27*L28*TX_R_; 9 L27*L29*DROP_OCQ_Y; 4 L27*RX_P*TY_R_; 5 L27*RY_P*TX_R_
6 KLOW*L26; 2 KLOW*+OCF; 2 KLOW*RX_P; 13 KLOW*RY_P
7 KLOW*DROP_OCQ_Y; 4 KLOW*TX_R_; 40 KLOW*TY_R_; 2 +HCP*L17
3 -CDP*L17; 3 -CDP*L25; 10 +CDQ*L27; 7 +DFQ*L19
27 +DFQ*L26; 22 +DFQ*DROP_OCR_Y; 18 -HFR*L22; 13 -HFR*L27
25 -HFR*L28; 32 -HFR*DROP_OCQ_Y; 3 -DFR*L27; 12 +CQR*L3
12 +CQR*+OCF; 26 +CQR*TY_R_; 41 +HDQ*DROP_OCR_Y; 9 +HDQ*TY_R_
2 +HPR*L17; 2 +CPQ*L0; 1 +CPQ*L27; 3 +ODQ*L18
10 -DQR*L4; 14 -DQR*L6; 3 -DQR*L18; 26 -DQR*DROP_OCR_Y
14 +HQR*L6; 14 C_HDF_Q*L20; 15 C_CDR_Q*L0; 34 C_CDR_Q*L27
13 C_DFP_Q*L0; 14 TPX_R_*L0; 9 TPX_R_*L18; 13 TPY_R_*L27
20 Q_ORFH_Z*L4; 2 Q_ORFH_Z*TX_R_; 1 Q_OPQF_Y*L18; 8 Q_HDRF_Q*L1
12 Q_HDRF_Q*L4; 29 Q_HDRF_Q*L26; 12 Q_HDRF_Q*RY_P; 12 Q_CDRF_Q*L0
2 Q_CPDR_Q*L5; 5 Q_CPDR_Q*L24; 10 Q_CPDR_Q*L28; 1 Q_CPDR_Q*C_OHD_Z
2 Q_CPDR_Q*DROP_OHP_YZ; 2 Q_CPDR_Q*RX_P; 1 Q_CPDR_Q*RY_P; 29 Q_CPDR_Q*DROP_OCQ_Y
11 Q_DRFP_Q*L27; 7 Q_DRFP_Q*DROP_OCQ_Y
```

Upper bound: `-985646549/500000000`.

### Leaf RUTmmpmp

Assumptions: `-CYZ -OYP +OYQ -OZQ +OZR`.

```c1top-geometry
P OHFZR -OFZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYZR +OYR
P OCFYZ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZOHFQ -ZFQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P QOHFR -QHR
C OFY Z Q +FYQ 101661/147500
C OYR Z Q -YRQ 1971423483/2934365000
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 129/500 1
t 98/125 1
```

```c1top-sum
6 L0*L0*L31; 1 L0*L0*RX_P; 24 L0*L0*TX_R_; 9 L0*L3*L7
7 L0*L3*L14; 20 L0*L3*L33; 12 L0*L3*-OHD; 4 L0*L3*DROP_OCR_YZ
2 L0*L12*L28; 16 L0*L12*L31; 1 L0*L12*TY_R_; 1 L0*L17*L20
1 L0*L17*L28; 45 L0*L27*TX_R_; 6 L0*L31*L34; 34 L0*-OHD*TX_R_
19 L0*DROP_OHP_YZ*TX_R_; 1 L1*L1*L21; 16 L1*L1*L30; 3 L1*L2*L3
13 L1*L2*L6; 1 L1*L3*L28; 3 L1*L5*L12; 13 L1*L6*L10
1 L1*L6*L25; 1 L1*L6*L33; 4 L1*L9*L30; 8 L1*L13*L13
1 L1*L14*L33; 13 L1*L16*L30; 14 L1*L17*DROP_OHP_YZ; 1 L1*L21*RX_P
6 L1*L27*L35; 1 L1*L29*L35; 11 L1*L30*-OHD; 13 L2*L5*RX_P
1 L2*L17*L29; 20 L2*L18*L30; 1 L3*L3*DROP_OHP_YZ; 12 L3*L3*DROP_OCR_YZ
4 L3*L4*L12; 1 L3*L5*L36; 5 L3*L8*L17; 11 L3*L8*L24
28 L3*L12*L14; 3 L3*L12*L17; 3 L3*L12*L29; 8 L3*L17*RY_P
2 L3*L18*TY_R_; 2 L3*L20*DROP_OCR_YZ; 1 L3*L23*L26; 6 L3*L24*L30
12 L3*L24*L35; 1 L3*L27*TX_R_; 4 L3*L28*L29; 1 L3*L28*TX_R_
23 L3*L30*-OHD; 5 L3*L30*TY_R_; 3 L3*L32*TX_R_; 5 L4*L17*L29
7 L4*L17*L33; 1 L5*L10*DROP_OHP_YZ; 2 L5*L10*RX_P; 1 L5*L25*L25
6 L5*RX_P*RX_P; 1 L5*RX_P*TY_R_; 1 L6*L9*L14; 2 L6*L10*L30
3 L6*L10*L33; 9 L6*L12*L17; 7 L6*L14*L27; 4 L6*L14*L34
1 L6*L17*L31; 1 L6*L25*L26; 1 L6*L25*TY_R_; 1 L6*RX_P*DROP_OCQ_Y
6 L6*RX_P*TY_R_; 2 L7*L11*L27; 19 L8*L9*L18; 2 L8*L10*L30
4 L8*L13*L18; 7 L8*L17*L17; 1 L8*L17*L24; 5 L8*L17*L29
7 L8*L17*DROP_OHP_YZ; 6 L8*L18*L36; 2 L9*L9*L11; 3 L9*L9*L34
3 L9*L17*L28; 13 L10*L12*L13; 21 L10*L12*L30; 15 L10*L12*L36
6 L10*L13*L34; 3 L10*L17*RX_P; 10 L10*L24*L36; 21 L10*L30*RX_P
4 L10*L36*TX_R_; 1 L11*L17*RY_P; 2 L11*L28*RX_P; 25 L12*L14*RX_P
22 L12*L17*L26; 8 L12*L27*L30; 5 L12*L27*L33; 15 L12*RX_P*TY_R_
3 L14*L17*L25; 1 L14*L19*L24; 13 L14*L24*L36; 1 L14*L28*RX_P
15 L14*L30*+OCF; 25 L14*L30*RX_P; 17 L14*RX_P*RX_P; 3 L14*RX_P*TX_R_
3 L15*L31*L31; 6 L16*L30*TX_R_; 1 L17*L18*L24; 47 L17*L18*DROP_OHP_YZ
3 L17*L20*L27; 1 L17*L21*L27; 1 L17*L21*-OHD; 1 L17*L22*TY_R_
4 L17*L24*L30; 1 L17*L24*TY_R_; 2 L17*L32*L35; 14 L17*-OHD*DROP_OHP_YZ
23 L17*RX_P*RY_P; 1 L18*L20*TY_R_; 6 L18*L25*L30; 17 L18*L30*DROP_OHP_YZ
14 L18*L31*RX_P; 2 L18*L35*DROP_OCR_YZ; 24 L18*DROP_OHP_YZ*RX_P; 1 L19*L25*RX_P
2 L21*RX_P*DROP_OCR_YZ; 6 L24*L26*L27; 5 L24*L30*+OCF; 1 L25*L28*TX_R_
1 L25*L36*RX_P; 8 L26*L31*L36; 6 L27*L27*TX_R_; 3 L27*L30*-OHD
1 L27*L36*RX_P; 8 L27*RX_P*RX_P; 3 L29*L36*RX_P; 5 L30*-OHD*RX_P
2 L30*DROP_OHP_YZ*TY_R_; 13 L31*L31*L34; 4 L33*RX_P*TY_R_; 6 L34*L35*RX_P
5 L35*RX_P*DROP_OCR_YZ; 1 L36*DROP_OHP_YZ*TY_R_; 8 DROP_OHP_YZ*RX_P*TY_R_; 1 RX_P*TX_R_*TY_R_
7 KLOW*TX_R_; 6 CENT*L0; 1 +HDF*L25; 7 +OYZ*L24
8 -HYZ*L13; 1 -HYZ*L14; 4 -HYZ*L25; 1 -HYZ*L29
20 -HYZ*L31; 46 -HYZ*+OCF; 12 -HYZ*RX_P; 9 -HYZ*DROP_OCR_YZ
3 +OCY*L30; 5 +OCZ*L17; 1 -HCZ*L18; 8 -HCZ*L31
10 -HFZ*L1; 22 -HFZ*L26; 1 +OCP*L35; 1 -CDP*L1
15 -CDP*L2; 5 -CDP*L8; 38 -CDP*DROP_OHP_YZ; 1 -CDP*TY_R_
3 -CYP*L17; 9 -CYP*L25; 19 -CYP*L31; 1 +HZP*L10
13 -CZP*L3; 7 -CZP*RX_P; 1 -HFQ*RX_P; 12 +OCR*L17
5 -HFR*L6; 1 -HFR*L25; 5 -HFR*L29; 68 -HFR*-OHD
18 -HFR*DROP_OHP_YZ; 6 -HFR*DROP_OCR_YZ; 2 +HDR*+OCF; 4 -CFR*L0
1 +HYR*L17; 58 -CYZ*L12; 6 -CYZ*L15; 1 -CYZ*L19
27 -CYZ*L20; 27 -CYZ*L21; 24 -CYZ*L24; 9 -CYZ*L26
1 -CYZ*L30; 22 -CYZ*-OHD; 52 -CYZ*DROP_OHP_YZ; 16 -CYZ*RX_P
10 -OYP*L13; 9 -OYP*L24; 5 -OYP*L26; 44 -OYP*L33
4 -OYP*L34; 19 +OZR*L11; 17 +OZR*L16; 1 +OZR*L19
13 +OZR*L33; 13 +OZR*L34; 14 +OZR*-OHD; 7 +OZR*+OCF
28 -OFZ*L27; 4 +HPR*L30; 1 +CPQ*TY_R_; 14 -FYZ*L1
4 -FYZ*L14; 6 -YZP*L17; 14 C_OCZ_Y*L30; 5 C_OYR_Z*L14
1 C_OZP_Y*L1; 18 C_OZP_Y*L17; 2 Q_OYFH_Z*L30; 44 Q_OCPZ_Y*L8
10 Q_OCPZ_Y*L24
```

Upper bound: `-1778529369/1000000000`.

### Leaf RUTmmpp

Assumptions: `-CYZ -OYP +OYQ +OZQ`.

```c1top-geometry
C OCQ YZ P -CQP 160539/200000
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OHZQR +OZR
P OCFYQ -OFY
P OCFZQ -OFZ
P HODPR +HPR
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P QOHFR -QHR
C OFY Z Q +FYQ 101661/147500
C OYR Z Q -YRQ 1971423483/2934365000
P FOYZQ +FZQ
P QOYZR -QZR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OCQ YZ 1 lower 694/907
T OCQ YZ 11 lower 694/885
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 153/200 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 93/1000 907/1000
m 98/125 907/1000
r 129/500 1
t 98/125 1
```

```c1top-sum
9 L0*L0*TX_R_; 1 L0*L2*TX_R_; 1 L0*L3*L4; 1 L0*L3*L34
10 L0*L4*TX_R_; 4 L0*L8*L23; 9 L0*L8*TX_R_; 1 L0*L9*L9
5 L0*L9*L31; 1 L0*L10*L27; 5 L0*L10*L30; 4 L0*L10*L31
5 L0*L12*L31; 2 L0*L16*TX_R_; 4 L0*L20*L28; 5 L0*L36*DROP_OCQ_YZ
27 L0*C_OCF_YZ*TX_R_; 1 L1*L1*+OCF; 1 L1*L1*TY_R_; 6 L1*L3*L12
4 L1*L6*L28; 4 L1*L6*+OCF; 3 L1*L8*DROP_OCQ_YZ; 6 L1*L14*L17
5 L1*L14*C_OCF_YZ; 1 L1*L17*L24; 1 L1*L20*L30; 1 L1*L20*RX_P
1 L1*L21*DROP_OHP_YZ; 7 L1*L26*L30; 6 L1*L27*TX_R_; 1 L1*L29*TY_R_
1 L1*L32*TY_R_; 2 L2*L2*L23; 3 L2*L17*L31; 15 L2*L18*RX_P
1 L2*L21*L35; 17 L2*RX_P*TY_R_; 2 L3*L6*L23; 1 L3*L8*L11
3 L3*L8*L16; 6 L3*L8*L18; 6 L3*L8*L33; 2 L3*L12*TY_R_
2 L3*L14*RX_P; 2 L3*L16*L28; 3 L3*L16*RX_P; 5 L3*L17*-OHD
17 L3*L17*DROP_OHP_YZ; 3 L3*L18*DROP_OCR_YZ; 1 L3*L20*RX_P; 1 L3*L23*DROP_OCR_YZ
21 L3*L24*DROP_OHP_YZ; 8 L3*L30*L36; 6 L3*L33*L35; 3 L3*DROP_OCQ_YZ*TY_R_
1 L4*L6*L17; 2 L4*L14*TX_R_; 2 L4*L17*C_OCF_YZ; 7 L4*L17*DROP_OCQ_YZ
3 L4*L27*RX_P; 1 L4*L30*TX_R_; 1 L5*L8*L12; 5 L5*L23*C_OCF_YZ
1 L5*L27*L35; 3 L5*L27*TX_R_; 1 L6*L12*L28; 1 L6*L13*L26
1 L6*L14*L15; 21 L6*L17*RX_P; 1 L6*L23*DROP_OHP_YZ; 4 L6*L23*DROP_OCR_YZ
2 L8*L8*L17; 8 L8*L10*L27; 7 L8*L14*TX_R_; 7 L8*L17*L18
1 L8*L17*L24; 7 L8*L17*-OHD; 4 L8*L23*L28; 3 L8*L23*L30
2 L8*L23*L35; 4 L8*L26*TY_R_; 7 L8*L27*L29; 2 L8*L27*L30
1 L8*L31*L31; 2 L9*L9*L10; 1 L9*L14*L24; 7 L9*L17*DROP_OCQ_YZ
1 L9*L21*L31; 1 L9*L22*TX_R_; 2 L9*DROP_OCQ_YZ*TY_R_; 3 L10*L12*L17
2 L10*L12*L30; 4 L10*L17*L20; 8 L10*L17*DROP_OHP_YZ; 2 L10*L20*L28
8 L10*L20*L30; 8 L10*L20*L31; 2 L10*L23*L30; 4 L10*L24*L27
6 L10*L24*L31; 2 L10*L26*RX_P; 9 L10*L30*DROP_OCR_YZ; 7 L10*L30*TX_R_
1 L10*L31*L32; 2 L11*L17*L27; 15 L11*L17*RX_P; 6 L12*L16*L27
5 L12*L17*L30; 2 L12*L17*RX_P; 1 L12*L28*L31; 7 L12*L28*RX_P
7 L12*L30*RX_P; 3 L13*L17*L23; 2 L13*L17*DROP_OHP_YZ; 2 L13*L26*DROP_OCQ_YZ
6 L14*L17*-OHD; 2 L14*L20*L34; 2 L14*L23*L29; 2 L14*L23*L30
1 L14*L24*L30; 2 L14*L30*L31; 16 L16*L17*L18; 3 L16*L20*L28
3 L16*L22*RX_P; 22 L16*L27*RX_P; 2 L16*L30*L30; 3 L17*L17*L20
2 L17*L17*L21; 21 L17*L17*L24; 13 L17*L17*RX_P; 4 L17*L17*DROP_OCR_YZ
3 L17*L18*L20; 2 L17*L20*C_OCF_YZ; 1 L17*L24*L35; 4 L17*L26*L31
13 L17*DROP_OHP_YZ*DROP_OHP_YZ; 21 L17*RX_P*TX_R_; 1 L17*DROP_OCQ_YZ*TX_R_; 7 L18*L23*C_OCF_YZ
15 L18*L30*C_OCF_YZ; 16 L18*RX_P*RX_P; 1 L20*L26*RX_P; 2 L20*L27*L32
1 L20*L31*L31; 2 L21*L28*RX_P; 1 L21*RX_P*RX_P; 6 L22*L24*L27
6 L22*L24*TY_R_; 2 L23*L27*+OCF; 3 L23*L27*RY_P; 2 L23*L30*DROP_OHP_YZ
1 L23*L30*RX_P; 1 L24*L28*L35; 1 L25*L28*RX_P; 2 L26*L30*+OCF
3 L26*DROP_OCQ_YZ*TY_R_; 6 L27*L30*RX_P; 3 L27*DROP_OCQ_YZ*DROP_OCR_YZ; 1 L30*L30*C_OCF_YZ
1 L30*L33*DROP_OCR_YZ; 1 L31*L35*L35; 2 L31*L36*DROP_OHP_YZ; 18 RX_P*RX_P*TY_R_
2 CENT*L10; 13 CENT*L17; 2 CENT*L35; 3 -OHC*L17
9 +HCF*L30; 1 +HDF*L11; 3 +OYZ*TX_R_; 3 -HYZ*L7
1 -HYZ*L20; 1 -HYZ*L24; 7 -HYZ*L29; 4 -HYZ*L31
23 -HYZ*C_OCF_YZ; 20 -HYZ*RX_P; 4 -HYZ*DROP_OCQ_YZ; 13 -HYZ*DROP_OCR_YZ
2 -HCY*L15; 7 +OCP*L30; 7 -CDP*L12; 18 -CDP*L16
1 -CDP*L20; 7 -CDP*DROP_OCQ_YZ; 3 -CDP*DROP_OCR_YZ; 3 -CYP*L12
2 -CYP*L20; 8 -CYP*+OCF; 4 -HFQ*L25; 3 -HFQ*C_OCF_YZ
1 +DFQ*L9; 1 +DFQ*L25; 2 +DFQ*DROP_OCR_YZ; 6 +HZQ*L27
13 -HFR*L0; 8 -HFR*L4; 10 -HFR*L8; 2 -HFR*L16
4 -HFR*L20; 9 -HFR*L26; 1 -HFR*L33; 28 -HFR*C_OCF_YZ
12 -HFR*DROP_OCR_YZ; 2 -DFR*L14; 1 -DFR*L25; 1 -DFR*L27
1 -DFR*DROP_OHP_YZ; 2 -CYR*L10; 1 +FYR*L28; 3 +OPQ*L17
23 -CYZ*L3; 2 -CYZ*L11; 4 -CYZ*L12; 5 -CYZ*L20
10 -CYZ*L24; 5 -CYZ*-OHD; 21 -CYZ*+OCF; 6 -CYZ*DROP_OCQ_YZ
7 -OYP*L17; 1 -OYP*L20; 20 -OYP*L33; 5 +OZQ*L11
9 +OZQ*L32; 3 +OZQ*L36; 5 +OZQ*+OCF; 17 +OZQ*DROP_OCR_YZ
2 -OFQ*L0; 4 -OZP*L30; 10 +OZR*L2; 10 +OZR*L23
2 -OFZ*L27; 1 -DQR*L6; 1 -DQR*L8; 3 -DQR*L12
4 -DQR*L26; 4 -DQR*L32; 3 -DQR*L33; 1 -DQR*TX_R_
2 +FQR*L6; 2 +FQR*L7; 2 +FQR*L11; 1 +FQR*L24
2 +FQR*-OHD; 2 +FQR*+OCF; 2 -YZR*L10; 2 -YZR*L30
4 +HQR*L6; 4 +HQR*L32; 2 +FYQ*L27; 1 +YQR*L15
8 +YQR*L17; 4 +YQR*L26; 6 +YQR*L28; 3 +YQR*L36
2 +YQR*+OCF; 6 +YQR*DROP_OHP_YZ; 1 +FZQ*L14; 2 +ZQR*L10
3 +ZQR*L12; 2 C_OCQ_YZ*L31; 4 C_OCQ_YZ*L36; 1 C_OCQ_YZ*TX_R_
2 C_OZP_Y*L8; 3 C_OPQ_YZ*L31; 9 Q_OCPZ_Y*L3; 12 Q_OCPZ_Y*L8
4 Q_OCPZ_Y*L12; 1 Q_OYQR_Z*L8; 16 Q_OYQR_Z*L14
```

Upper bound: `-7770969/500000000`.

### Leaf RUTmp

Assumptions: `-CYZ +OYP`.

```c1top-geometry
C OCP Y Z -POZ 3239749/6167600
P OHDYP -ODY
P OHDYR +OYR
P OHFYP -OFY
P OHFQR -OFQ
P OHYPQ +OYQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YODPR +YPR
P ZHDPR +ZPR
P POCYQ -PYQ
P QOHFR -QHR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OCP Y 9 lower 93/295
T OCQ Y 11 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 63/200 297/500
l 93/1000 907/1000
m 63/200 907/1000
r 129/500 1
t 27/50 1
```

```c1top-sum
12 L0*L12*TX_R_; 91 L0*L12*TY_R_; 363 L0*L13*L17; 2229 L0*L17*L26
180 L0*L17*+OCF; 101 L0*L17*RX_P; 51 L0*L27*L31; 404 L0*L27*TX_R_
38 L0*L28*TX_R_; 3 L0*L31*TX_R_; 103 L1*L3*L10; 4 L1*L3*L28
451 L1*L4*L6; 24 L1*L6*L6; 35 L1*L6*L14; 25 L1*L6*L25
24 L1*L6*L29; 1139 L1*L6*RY_P; 132 L1*L6*TY_R_; 143 L1*L8*L10
401 L1*L10*L12; 11 L1*L12*L34; 285 L1*L17*L17; 97 L1*L17*L24
25 L1*L25*L25; 127 L1*L25*L34; 16 L1*L30*L30; 4 L1*L31*L34
128 L2*L17*L27; 18 L2*L25*L27; 57 L2*L25*L28; 10 L2*L28*RX_P
2643 L3*L5*L18; 698 L3*L5*L28; 14 L3*L8*L28; 1 L3*L9*L15
467 L3*L10*L14; 94 L3*L10*L24; 12 L3*L12*L27; 4 L3*L14*L28
447 L3*L17*L30; 73 L3*L17*L34; 2690 L3*L18*L18; 1652 L3*L18*L28
31 L3*L18*RX_P; 51 L3*L27*L34; 86 L3*L28*L30; 417 L4*L6*L17
3947 L4*L17*L27; 839 L4*L17*L28; 445 L4*L17*L35; 2690 L4*L17*DROP_OCP_Y
1449 L4*L17*RX_P; 2026 L4*L17*DROP_OCR_Y; 421 L4*L17*TX_R_; 1132 L4*L17*TY_R_
579 L5*L5*L25; 881 L5*L5*RX_P; 23 L5*L6*L10; 258 L5*L6*L18
641 L5*L9*L18; 16 L5*L12*L31; 392 L5*L17*L24; 447 L5*L17*L31
1531 L5*L18*L25; 373 L5*L25*L28; 500 L5*L25*TY_R_; 16 L5*L31*L31
103 L5*RX_P*RX_P; 497 L6*L6*TY_R_; 101 L6*L14*TY_R_; 3 L6*L15*L16
92 L6*L18*L25; 738 L6*L18*L27; 676 L6*L25*TY_R_; 753 L6*L26*TY_R_
33 L6*L30*TY_R_; 23 L6*L35*TY_R_; 179 L6*TY_R_*TY_R_; 22 L7*L9*L27
363 L7*L24*L27; 104 L7*L27*L27; 1 L8*L9*L10; 69 L8*L17*L27
758 L8*L17*DROP_OCP_Y; 592 L8*L18*L28; 18 L8*L27*TX_R_; 157 L8*L28*RX_P
245 L9*L10*RX_P; 348 L9*L15*L18; 443 L9*L18*L18; 189 L9*L34*L34
628 L10*L13*L18; 339 L10*L17*L34; 338 L10*L17*RY_P; 649 L10*L18*L33
147 L10*L25*RX_P; 21 L10*L26*RX_P; 23 L10*L27*L29; 6 L10*L27*DROP_OCP_Y
1 L10*L30*L30; 104 L10*DROP_OCP_Y*RX_P; 672 L10*RX_P*RX_P; 150 L11*L12*L12
107 L11*L17*L28; 232 L11*L17*-OHD; 13 L12*L12*L34; 28 L12*L15*L31
729 L12*L18*L32; 33 L12*L24*L27; 12 L12*L27*L29; 85 L12*L27*-OHD
86 L12*L31*DROP_OCP_Y; 147 L12*L34*L35; 33 L12*L35*DROP_OCP_Y; 86 L14*L17*L17
4 L14*L17*L29; 286 L14*L17*L31; 38 L14*L25*L28; 130 L14*L27*TX_R_
13 L14*L30*L30; 104 L15*L15*L31; 4 L15*L17*L27; 4 L15*L18*L25
67 L15*L18*L31; 507 L15*L31*L34; 173 L16*L17*DROP_OCP_Y; 1058 L17*L18*L24
14 L17*L24*L26; 1009 L17*L27*L27; 1053 L17*L27*L28; 1058 L17*L27*RX_P
119 L17*L28*TX_R_; 167 L17*L30*L32; 447 L17*L30*+OCF; 86 L17*L30*RY_P
173 L17*DROP_OHP_Z*RY_P; 14 L18*L25*L25; 78 L18*L25*L31; 6 L18*L27*L35
481 L18*L28*TX_R_; 78 L18*L31*L31; 1284 L18*L31*L34; 27 L18*L31*TY_R_
97 L24*L27*L34; 101 L25*L25*TY_R_; 1328 L25*L27*L28; 828 L25*L27*DROP_OCP_Y
18 L25*L31*TY_R_; 33 L25*L36*TY_R_; 181 L27*RY_P*TX_R_; 101 L27*TX_R_*TX_R_
16 L28*L30*L31; 23 L28*L31*TX_R_; 10 L31*L31*L34; 271 KLOW*L8
3 KLOW*L17; 326 KLOW*L19; 1322 KLOW*RY_P; 57 KLOW*TX_R_
247 CENT*L14; 22 CENT*L30; 10 CENT*RX_P; 127 -OHF*L1
143 -HYZ*L10; 142 -HYZ*L12; 251 -HYZ*L15; 692 -HYZ*L18
51 -HYZ*L27; 185 -HYZ*L34; 76 +OCY*L5; 286 +OCY*L13
572 +OCY*L24; 625 +OCY*L25; 95 +OCY*L26; 264 +OCY*L31
143 +OCY*L32; 577 +OCY*L33; 260 +OCY*-OHD; 878 +OCY*DROP_OCP_Y
1503 +OCY*RX_P; 196 -OHZ*L0; 519 -OHZ*L17; 81 -HFZ*L2
200 -HFZ*L14; 37 -HFZ*L18; 294 -HFZ*L26; 91 -HFZ*TY_R_
362 -CDP*L0; 745 -CDP*L3; 186 -CDP*L8; 4 -CDP*L14
2690 -CDP*L18; 1005 -CDP*L24; 1578 -CDP*L28; 86 -CDP*L30
76 -CDP*L32; 636 -CDP*+OCF; 1053 -CDP*DROP_OHP_Z; 4 -CDP*TX_R_
386 -HDP*L17; 86 -CZP*L17; 12 -HFR*L12; 119 -HFR*L17
696 -HFR*L19; 975 -HFR*L20; 975 -HFR*L21; 25 -HFR*L25
163 -HFR*L27; 27 -HFR*L31; 165 -HFR*L34; 990 -HFR*TY_R_
479 -DFR*L0; 679 -DFR*L4; 497 -DFR*L6; 10 -DFR*L14
87 -DFR*L25; 841 -DFR*L28; 33 -DFR*L30; 27 -DFR*RX_P
223 -DFR*RY_P; 1176 -DPR*L1; 92 -DPR*L6; 28 -DPR*L9
4 -DPR*L15; 14 -DPR*L25; 2282 -DPR*L27; 128 -DPR*DROP_OHP_Z
930 -DPR*RX_P; 1273 -DPR*TY_R_; 3 -CYZ*L8; 6 -CYZ*L12
263 -CYZ*L24; 263 -CYZ*L25; 51 -CYZ*L26; 143 -CYZ*L32
363 -CYZ*L34; 286 -CYZ*DROP_OHP_Z; 1347 -CYZ*DROP_OCP_Y; 76 +OYP*L5
78 +OYP*L9; 119 +OYP*L12; 339 +OYP*L14; 391 +OYP*L23
51 +OYP*L25; 21 +OYP*L26; 556 +OYP*DROP_OHP_Z; 443 +OYP*DROP_OCP_Y
116 +OYP*RX_P; 391 +OYP*DROP_OCQ_Y; 936 C_OCP_Y*L17; 27 C_OCP_Y*L27
942 TPX_R_*L0; 239 TPX_R_*L28; 97 Q_OYRH_Z*L17
```

Upper bound: `-3244777901/1000000000`.

### Leaf RUTpmmmm

Assumptions: `+CYZ -OYP -OYQ -OYR -HPQ`.

```c1top-geometry
P OHDYR +ODY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FODPR +FPR
P FODQR +FQR
P YODPR +YPR
P ZODPR +ZPR
P POHFQ +PFQ
P POHQR -PQR
P QOHFY +QFY
P QOHFZ +QFZ
P QOHYR -QYR
P QOHZR -QZR
```

```c1top-bounds
```

Exclusion: `cluster OHP Q OHQ YZ`.

### Leaf RUTpmmmpmm

Assumptions: `+CYZ -OYP -OYQ -OYR +HPQ -FPQ -CQR`.

```c1top-geometry
P OHDYR +ODY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YODPR +YPR
P ZODPR +ZPR
P POHYQ -PYQ
P POHZQ -PZQ
P POFQR -PQR
P QOHCR -QHR
P QOHFY +QFY
P QOHFZ +QFZ
P QOHYR -QYR
P QOHZR -QZR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR YZ 12 lower 347/500
```

```c1top-box
h 39209/50000 1
c 347/500 177/200
d 2737/6250 89747/100000
f 93/1000 16691/20000
u 279/1000 699/1000
v 2627/25000 57967/100000
z 93/1000 513/1000
w 2627/25000 9873/12500
p 84331/100000 1
q 2627/25000 11871/20000
l 347/500 907/1000
m 2627/25000 907/1000
r 347/500 1
t 27023/50000 1
```

```c1top-sum
2232 L0*L27*L29; 2490 L1*L1*L17; 1098 L1*L1*L20; 2490 L1*L1*L24
590 L1*L2*L17; 455 L1*L3*L6; 2232 L1*L3*L18; 487 L1*L3*L20
455 L1*L3*L25; 2145 L1*L3*TY_R_; 2844 L1*L4*L20; 44 L1*L6*L7
330 L1*L6*L17; 2356 L1*L6*L18; 1847 L1*L6*TX_R_; 2211 L1*L17*L18
823 L1*L17*L20; 2530 L1*L17*L25; 3 L1*L17*L27; 1283 L1*L17*L29
2211 L1*L17*RY_P; 938 L1*L20*L25; 2522 L1*L20*TY_R_; 44 L1*L24*L24
90 L1*L25*TY_R_; 1273 L2*L2*L27; 81 L2*L6*TY_R_; 3185 L2*L17*L22
393 L2*L17*TY_R_; 770 L2*L18*L29; 472 L2*TY_R_*TY_R_; 3586 L3*L17*L18
1664 L3*L17*L27; 192 L3*L20*L27; 472 L3*L27*L27; 1553 L4*L4*TX_R_
539 L4*L5*L17; 819 L4*L17*L17; 884 L4*L17*L18; 6275 L4*L17*L24
135 L4*L17*L27; 217 L4*L17*TX_R_; 164 L4*L18*TX_R_; 1812 L4*L27*TX_R_
434 L5*L5*L25; 1120 L5*L18*L25; 523 L5*L25*L25; 576 L5*L25*TY_R_
904 L6*L20*TY_R_; 1396 L7*L7*L27; 227 L7*L17*L18; 3465 L17*L17*L18
471 L17*L17*L23; 850 L17*L17*L26; 3465 L17*L17*RY_P; 884 L17*L18*L27
850 L17*L18*TX_R_; 471 L17*L20*RY_P; 1626 L17*L20*DROP_OCR_Q; 2380 L17*L20*TY_R_
891 L17*L22*L27; 6271 L17*L23*L24; 53 L17*L23*TY_R_; 1146 L17*L27*L27
629 L17*L27*TX_R_; 2781 L18*L18*L25; 2265 L18*L20*L25; 944 L18*L20*L27
519 L18*L24*L25; 1146 L18*L25*L27; 131 L18*L25*L28; 1295 L18*L25*TX_R_
30 L18*L27*L29; 1898 L18*RX_P*TY_R_; 711 L20*L27*L28; 204 L21*L27*L29
181 L25*L27*L29; 1186 L25*L27*RX_P; 496 L27*L29*L29; 1373 L27*L29*RX_P
3369 +OCP*L3; 696 +OCP*L6; 396 +OCP*L25; 331 +OCP*TY_R_
2145 -CDP*L1; 472 -CDP*L4; 5134 -CDP*L17; 5446 -CDP*L24
1086 -CDP*TX_R_; 128 -HFQ*L17; 1596 +CDQ*L27; 2490 -HFR*L0
1891 -HFR*L7; 579 -HFR*L17; 53 -HFR*L19; 955 -HFR*L20
87 -HFR*L22; 44 -HFR*L25; 467 -HFR*L27; 455 -HFR*RX_P
169 -HFR*RY_P; 557 -HFR*DROP_OCR_Q; 169 -DFR*L1; 1267 -DFR*L19
904 -DFR*L20; 2984 -DFR*L22; 136 -DFR*L25; 90 -DFR*L27
1005 -DFR*RX_P; 1553 -DFR*RY_P; 90 -DPR*L1; 5527 -DPR*L3
2612 -DPR*L4; 3623 -DPR*L5; 2781 -DPR*L18; 1909 -DPR*L21
443 -DPR*L23; 1678 -DPR*L24; 1146 -DPR*L27; 850 -DPR*DROP_OHP_YZ
136 -DPR*TX_R_; 667 +HPQ*L2; 2406 +HPQ*L25; 63 +HPQ*L26
1205 +HPQ*L29; 23 +HPQ*TY_R_; 87 -FPQ*L1; 82 -FPQ*L3
1651 -FPQ*L5; 1159 -FPQ*L24; 1077 -FPQ*RX_P; 1738 -FPQ*DROP_OCR_Q
1333 -FPQ*TY_R_; 3716 -CQR*L4; 2097 -CQR*L17; 241 -CQR*L24
1176 -CQR*L27; 396 -CQR*L29; 87 -CQR*C_OHD_YZ; 764 -CQR*TX_R_
1176 -CQR*TY_R_; 87 +CPQ*L1; 867 +CPQ*L5; 1152 +CPQ*L16
609 +CPQ*L25; 396 +CPQ*RX_P; 1596 +CPQ*TY_R_; 443 -DQR*L18
1005 -DQR*L25; 1098 C_OHQ_YZ*L1; 2001 C_OHQ_YZ*L3; 1225 C_OHQ_YZ*L24
2113 C_OHQ_YZ*L26; 358 C_OHQ_YZ*RX_P; 879 C_OHQ_YZ*RY_P; 586 C_OHQ_YZ*DROP_OCR_Q
1198 C_OHQ_YZ*TX_R_; 534 C_OHQ_YZ*TY_R_; 2490 C_HFP_Q*L1; 1309 C_HFP_Q*L20
```

Upper bound: `-17835847301211/125000000000000`.

### Leaf RUTpmmmpmp

Assumptions: `+CYZ -OYP -OYQ -OYR +HPQ -FPQ +CQR`.

```c1top-geometry
P OHDYR +ODY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P FHCYQ +FYQ
P FHCZQ +FZQ
P YODPR +YPR
P ZODPR +ZPR
P POHYQ -PYQ
P POHZQ -PZQ
P POFQR -PQR
P QOHFR -QHR
P QOHYR -QYR
P QOHZR -QZR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR YZ 12 lower 347/500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 347/500 1
t 27/50 1
```

```c1top-sum
27 L1*L2*L26; 3 L1*L2*TY_R_; 1 L1*L3*L21; 25 L1*L4*L6
28 L1*L6*L26; 25 L1*L6*TY_R_; 6 L1*L8*L26; 2 L1*L17*DROP_OHP_YZ
3 L2*L2*L17; 4 L2*L6*TY_R_; 3 L2*L10*TY_R_; 1 L2*L16*L27
2 L2*L20*L27; 16 L2*L22*TY_R_; 7 L2*L23*L26; 9 L2*L23*RY_P
1 L2*L26*RX_P; 45 L2*L26*RY_P; 100 L2*L26*TY_R_; 13 L2*L27*L27
2 L2*RY_P*TY_R_; 19 L2*TY_R_*TY_R_; 2 L3*L4*L5; 3 L3*L17*L29
12 L3*L17*TY_R_; 8 L3*L18*RX_P; 4 L4*L6*TY_R_; 2 L4*L11*L17
11 L4*L11*L24; 2 L4*L17*L19; 1 L4*L17*L20; 114 L4*L17*L26
30 L4*L17*L27; 2 L4*L17*-OHD; 8 L4*L24*TY_R_; 13 L4*L27*TX_R_
2 L4*L32*RX_P; 3 L5*L5*L25; 1 L5*L5*+OCF; 4 L5*L17*L23
32 L5*L17*L26; 4 L5*L18*L24; 5 L5*L27*+OCF; 2 L6*L23*TY_R_
1 L6*L24*RY_P; 9 L6*L27*L27; 1 L8*-OHD*TY_R_; 11 L11*L24*TY_R_
4 L16*L21*L24; 1 L16*L27*TX_R_; 11 L17*L17*L27; 2 L17*L18*L22
8 L17*L18*L25; 5 L17*L18*RX_P; 5 L17*L19*DROP_OHP_YZ; 4 L17*L20*L25
1 L17*L21*L21; 8 L17*L21*RY_P; 20 L17*L23*L26; 8 L17*L23*DROP_OHP_YZ
53 L17*L26*TY_R_; 1 L17*-OHD*RX_P; 2 L17*RY_P*TY_R_; 5 L18*L20*L27
1 L18*L20*L29; 3 L18*L21*L26; 2 L18*L21*TY_R_; 2 L18*L24*RY_P
2 L20*L27*RX_P; 9 L21*TY_R_*TY_R_; 1 L22*L24*L25; 9 L22*L24*RY_P
7 L22*L26*L27; 7 L22*L27*L27; 1 L24*L26*RX_P; 14 L26*L27*L29
20 L26*L27*TX_R_; 18 KLOW*L26; 16 FAN*L26; 1 -OHF*L17
11 -HCY*L26; 1 -HCY*TY_R_; 7 +OCP*L3; 4 +OCP*L21
1 -HFQ*L2; 9 +CDQ*L5; 52 +CDQ*L26; 7 +CDQ*DROP_OHP_YZ
1 -HFR*L16; 53 -HFR*L26; 1 -DFR*L22; 3 -DFR*L26
12 -DFR*L27; 4 -DFR*RY_P; 11 -OYR*L26; 2 +HPQ*L2
1 -FPQ*L17; 1 -FPQ*L25; 4 -FPQ*TY_R_; 8 +CQR*L5
1 +CQR*L25; 58 +CQR*L26; 12 +CQR*DROP_OHP_YZ; 25 +CQR*RY_P
1 -OFQ*L17; 2 +CPQ*L16; 1 +CPQ*TX_R_; 5 -DPQ*L2
23 -DPQ*L27; 3 -DQR*L27; 10 -PQR*L16; 53 -PQR*L26
2 -PQR*RY_P; 14 C_OHR_YZ*L26; 1 C_OHR_YZ*RX_P; 1 C_OPR_Q*L2
1 C_HFP_Q*RX_P; 4 C_CDR_Q*L6; 25 C_CDR_Q*L26; 12 C_CDR_Q*TY_R_
14 C_CPR_Q*L22; 1 C_CPR_Q*RX_P; 4 TPX_R_*L27; 1 Q_OPRH_YZQ*L2
8 Q_CPDR_Q*L5; 6 Q_CPDR_Q*L18; 2 Q_CPDR_Q*L22; 22 Q_CPDR_Q*L26
6 Q_CPDR_Q*RY_P
```

Upper bound: `-3856600707/22750000000`.

### Leaf RUTpmmmppmmm

Assumptions: `+CYZ -OYP -OYQ -OYR +HPQ +FPQ -CQR -HDQ -YZP`.

```c1top-geometry
P OHDYR +ODY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FHCYQ +FYQ
P FHCZQ +FZQ
P YODZP +YDZ
P YODZR -YZR
P YODPR +YPR
P YHDFZ +YFZ
P ZODPR +ZPR
P POHYQ -PYQ
P POHZQ -PZQ
P QOHYR -QYR
P QOHZR -QZR
P QOCPR +QPR
V Y CZP ZQ -1
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR YZ 12 lower 347/500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 347/500 1
t 27/50 1
```

```c1top-sum
7 L0*L0*L5; 7 L0*L1*TY_R_; 23 L0*L5*L16; 7 L0*L7*L27
8 L0*L10*TY_R_; 15 L0*L18*RX_P; 2 L0*L28*DROP_OHP_YZ; 1 L1*L2*L34
2 L1*L3*RY_P; 29 L1*L4*L25; 1 L1*L4*L26; 7 L1*L4*L35
2 L1*L5*L30; 5 L1*L6*L13; 35 L1*L6*L26; 2 L1*L6*L32
3 L1*L6*DROP_OHP_YZ; 11 L1*L9*L26; 1 L1*L11*RY_P; 19 L1*L16*TY_R_
5 L1*L17*L24; 4 L1*L18*L33; 1 L1*L18*L35; 1 L1*L25*L28
52 L1*L25*TY_R_; 7 L1*L27*L28; 2 L1*L27*L31; 1 L1*L35*RX_P
2 L2*L3*L32; 22 L2*L5*RY_P; 21 L2*L8*L28; 2 L2*L11*L35
2 L2*L14*L25; 58 L2*L14*TY_R_; 1 L2*L16*L27; 1 L2*L17*L17
39 L2*L26*L32; 2 L2*L27*TX_R_; 10 L2*L28*L30; 7 L2*L28*RY_P
3 L2*RX_P*DROP_OCR_Q; 34 L3*L4*L15; 1 L3*L7*TY_R_; 10 L3*L10*L18
2 L3*L12*L26; 5 L3*L18*L27; 1 L3*L18*L30; 5 L4*L4*L5
12 L4*L5*L17; 8 L4*L7*L27; 14 L4*L11*L24; 16 L4*L17*L18
1 L4*L17*DROP_OHP_YZ; 36 L4*L24*L32; 16 L4*L27*L27; 4 L4*L30*TY_R_
5 L4*TY_R_*TY_R_; 17 L5*L5*L25; 7 L5*L5*RX_P; 3 L5*L8*L16
10 L5*L16*L34; 26 L5*L16*TY_R_; 8 L5*L27*L32; 13 L5*L27*RX_P
2 L6*L17*L26; 2 L6*RX_P*TY_R_; 30 L6*DROP_OCR_Q*TY_R_; 3 L7*L19*L28
13 L7*L26*L27; 1 L8*L17*L25; 1 L8*L17*DROP_OHP_YZ; 8 L8*L18*L19
3 L8*L25*L28; 1 L8*L26*RX_P; 65 L8*L26*RY_P; 2 L8*L32*DROP_OCR_Q
1 L8*L35*C_OHD_YZ; 8 L8*RY_P*RY_P; 42 L8*RY_P*TY_R_; 3 L10*L10*RX_P
14 L10*L18*L25; 2 L10*L25*L25; 37 L10*L25*TY_R_; 8 L10*L27*L28
53 L10*RX_P*TY_R_; 22 L12*L17*L28; 14 L12*L17*TY_R_; 22 L12*L18*TY_R_
8 L12*L25*C_OHD_YZ; 15 L12*L27*RY_P; 12 L12*C_OHD_YZ*TY_R_; 6 L13*L27*L29
9 L15*L17*L26; 1 L15*L24*L24; 2 L16*L30*DROP_OCR_Q; 10 L16*TY_R_*TY_R_
1 L17*L18*L31; 1 L17*L18*L32; 14 L17*L18*C_OHD_YZ; 16 L17*L18*DROP_OCR_Q
69 L17*L26*L32; 14 L17*L26*L36; 1 L17*L31*DROP_OHP_YZ; 3 L17*L32*L32
1 L17*L35*RY_P; 3 L17*C_OHD_YZ*TX_R_; 32 L17*RY_P*DROP_OCR_Q; 4 L17*RY_P*TY_R_
27 L18*L18*L25; 4 L18*L19*L27; 17 L18*L25*L28; 10 L18*L25*TY_R_
7 L18*L26*TY_R_; 1 L18*L27*L30; 7 L18*RX_P*TY_R_; 4 L19*L28*L30
5 L24*L27*L27; 2 L24*L30*RY_P; 2 L24*L32*L32; 1 L24*L32*+OCF
1 L24*L35*DROP_OHP_YZ; 2 L25*L30*DROP_OCR_Q; 5 L25*TY_R_*TY_R_; 1 L26*L27*L28
65 L26*L34*RX_P; 14 L26*TY_R_*TY_R_; 14 L27*L27*L27; 1 L27*L27*L28
7 L27*L27*RY_P; 15 L27*L28*L31; 4 L27*RY_P*RY_P; 1 L30*L32*+OCF
37 L30*TY_R_*TY_R_; 1 L33*TX_R_*TY_R_; 16 L34*RX_P*TY_R_; 8 L36*C_OHD_YZ*RX_P
2 QUADR*L17; 31 -HYZ*L3; 5 -HYZ*L19; 11 -HCY*L4
1 -HCY*L11; 6 -HCY*L26; 16 -HCY*DROP_OCR_Q; 27 -HDY*L17
2 +CFY*L1; 28 -OHZ*RX_P; 1 -CDP*L8; 15 -CDP*L10
1 -CDP*L16; 22 -CDP*L26; 23 -CDP*L34; 33 -CDP*L36
36 -CDP*TY_R_; 3 +HYP*L5; 9 -HFR*L13; 25 -HFR*L19
52 -HFR*L26; 2 -HFR*-OHD; 7 -DPR*L1; 8 -DPR*L10
56 -DPR*L14; 27 -DPR*L18; 31 -DPR*L27; 1 -DPR*L33
41 -DPR*DROP_OCR_Q; 3 +CYZ*L3; 26 +CYZ*L5; 2 +CYZ*L6
5 +CYZ*L19; 114 +CYZ*DROP_OCR_Q; 2 +CYZ*TX_R_; 10 -OYR*L1
33 -OYR*L18; 4 -OYR*L25; 37 -OYR*L26; 6 -OYR*L28
1 -OYR*L30; 2 -OYR*L35; 3 -OYR*RX_P; 27 -OYR*RY_P
26 -YZP*L5; 45 -YZP*L26; 8 -YZP*-OHD; 69 -YZP*DROP_OCR_Q
27 -DYZ*L2; 3 -DYZ*L24; 8 -YZR*L1; 16 C_ODZ_Y*L2
2 C_HCZ_Y*L1; 17 C_HCZ_Y*L18; 1 C_HCZ_Y*L25; 3 C_HCZ_Y*-OHD
12 C_HCZ_Y*RY_P; 25 C_HCZ_Y*TY_R_; 25 C_HDP_Q*L8; 1 C_HPR_Q*L12
1 C_CZR_YQ*L24; 3 C_CZR_YQ*L31; 8 C_CZR_YQ*C_OHD_YZ; 56 C_CZR_YQ*RY_P
2 TPX_R_*RX_P; 25 TPY_R_*L18; 4 Q_ORFH_YZ*L12; 1 SP_OPRZ_YQ_OR-1*L2
1 Q_OQRZ_Y*L2; 1 Q_HPDR_Q*L1; 3 Q_HPDR_Q*L30; 1 Q_CPDF_Q*L12
1 Q_CDRY_Q*L8; 4 Q_CDRZ_YQ*L8; 21 Q_DRFP_Q*L28; 2 Q_DRYP_Q*L24
```

Upper bound: `-1138653311/500000000`.

### Leaf RUTpmmmppmmpm

Assumptions: `+CYZ -OYP -OYQ -OYR +HPQ +FPQ -CQR -HDQ +YZP -YZQ`.

```c1top-geometry
P OHDYR +ODY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FHCYQ +FYQ
P FHCZQ +FZQ
P YODPR +YPR
P YOZPQ +YPQ
P YHFZQ +YFZ
P ZODPR +ZPR
P ZOYPQ +ZPQ
P QOHYR -QYR
P QOHZR -QZR
P QOCPR +QPR
V Y CZQ ZR -1
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR YZ 12 lower 347/500
```

```c1top-box
h 7841/10000 1
c 347/500 177/200
d 4379/10000 359/400
f 93/1000 4173/5000
u 279/1000 699/1000
v 21/200 5797/10000
z 93/1000 513/1000
w 21/200 7899/10000
p 8433/10000 1
q 21/200 371/625
l 347/500 907/1000
m 21/200 907/1000
r 347/500 1
t 1351/2500 1
```

```c1top-sum
5 L0*L1*L25; 1 L0*L7*L30; 5 L0*L15*L20; 3 L0*L18*L21
6 L0*L21*L35; 1 L0*L27*RX_P; 2 L0*L32*TY_R_; 19 L1*L1*L6
2 L1*L1*L27; 28 L1*L2*L5; 23 L1*L4*L12; 2 L1*L5*L32
4 L1*L6*L22; 2 L1*L6*L35; 23 L1*L6*RY_P; 20 L1*L11*L16
1 L1*L12*L13; 7 L1*L14*L20; 6 L1*L15*L17; 3 L1*L17*L18
17 L1*L18*L27; 17 L1*L18*DROP_OCR_Q; 25 L1*L20*L25; 13 L1*L20*L30
13 L1*L20*L35; 36 L1*L20*TY_R_; 3 L1*L22*L25; 7 L1*L23*L30
1 L1*L25*L31; 10 L1*L25*L36; 1 L2*L5*L31; 1 L2*L8*L35
2 L2*L9*L17; 22 L2*L10*TY_R_; 1 L2*L15*RX_P; 3 L2*L16*L17
2 L2*L17*L30; 14 L2*L22*TY_R_; 1 L2*L27*L33; 2 L2*L31*TY_R_
3 L3*L3*RX_P; 1 L3*L4*RX_P; 4 L3*L8*L18; 2 L3*L8*L21
19 L3*L8*L22; 1 L3*L9*L28; 1 L3*L9*RX_P; 27 L3*L10*L20
5 L3*L11*L30; 1 L3*L11*L36; 2 L3*L12*L32; 2 L3*L14*L25
18 L3*L15*L20; 35 L3*L17*L18; 29 L3*L18*L28; 68 L3*L18*L32
33 L3*L18*RX_P; 43 L3*L18*TY_R_; 1 L3*L20*L27; 40 L3*L20*L34
2 L3*L21*L35; 1 L3*L24*C_OHD_YZ; 3 L3*L29*RX_P; 7 L3*L30*TY_R_
25 L4*L4*L17; 7 L4*L6*TY_R_; 2 L4*L7*L12; 1 L4*L12*L13
1 L4*L12*L35; 61 L4*L13*L18; 15 L4*L17*L17; 4 L4*L17*L20
5 L4*L17*L23; 46 L4*L17*L27; 21 L4*L18*L25; 15 L4*L20*L35
9 L5*L11*L20; 2 L5*L14*L25; 3 L5*L18*L20; 18 L5*L18*L24
16 L5*L20*RY_P; 27 L5*L21*L25; 21 L5*L25*L27; 11 L5*L27*L30
1 L5*L31*TY_R_; 6 L6*L11*TY_R_; 1 L6*L17*-OHD; 6 L6*L18*L30
4 L6*L27*TY_R_; 2 L6*L30*TY_R_; 2 L7*L16*L27; 2 L7*L17*L36
1 L7*L23*TY_R_; 4 L8*L10*L17; 12 L8*L17*L18; 9 L8*L17*L34
3 L8*L17*L36; 12 L8*L18*L19; 2 L8*L18*L32; 2 L8*L27*L28
1 L9*L12*L28; 5 L9*L21*TY_R_; 33 L10*L17*C_OHD_YZ; 1 L10*L17*TX_R_
2 L10*L18*L30; 4 L10*L25*RX_P; 1 L10*L25*TY_R_; 4 L10*L30*RX_P
6 L11*L12*L16; 1 L11*L12*L28; 3 L11*L12*RY_P; 7 L11*L17*L23
1 L11*L17*L25; 24 L11*L18*L24; 8 L11*L18*+OCF; 5 L11*L20*L24
17 L11*L21*RX_P; 1 L11*L24*L27; 1 L12*L12*L25; 1 L12*L15*L18
3 L12*L16*L35; 7 L12*L17*L19; 9 L12*L17*L28; 2 L12*L17*L29
8 L12*L18*L29; 1 L12*L22*L32; 3 L12*L25*-OHD; 6 L12*L26*RY_P
25 L12*L27*L28; 2 L12*L32*TY_R_; 1 L12*L33*TY_R_; 8 L12*RX_P*DROP_OCR_Q
1 L12*RY_P*RY_P; 1 L14*L14*RX_P; 1 L14*L16*L32; 60 L14*L17*L18
22 L14*L18*L25; 30 L14*L18*RX_P; 1 L14*L25*TY_R_; 37 L15*L17*L26
2 L15*L17*TY_R_; 8 L15*L20*RX_P; 1 L15*L23*L30; 2 L15*L24*L32
14 L16*L17*L27; 1 L16*L17*C_OHD_YZ; 4 L16*L20*L32; 2 L16*L25*TY_R_
3 L16*L28*L28; 9 L16*L28*L30; 22 L16*L28*L32; 37 L16*TY_R_*TY_R_
3 L17*L17*L29; 25 L17*L17*L36; 14 L17*L18*L24; 12 L17*L18*L35
19 L17*L18*L36; 13 L17*L20*DROP_OCR_Q; 8 L17*L22*L30; 4 L17*L23*L27
11 L17*L25*L32; 3 L17*L25*RX_P; 9 L17*L26*L36; 16 L17*L27*L27
26 L17*L34*C_OHD_YZ; 5 L17*C_OHD_YZ*DROP_OCR_Q; 3 L17*RX_P*TX_R_; 5 L18*L20*L35
14 L18*L21*L26; 12 L18*L22*L30; 18 L18*L23*L25; 3 L18*L23*DROP_OHP_YZ
2 L18*L25*L28; 1 L18*L25*L29; 18 L18*L27*L30; 42 L18*L30*DROP_OCR_Q
17 L18*L30*TX_R_; 1 L18*L31*TX_R_; 11 L18*L33*TY_R_; 37 L20*L26*L34
5 L20*L27*L27; 15 L20*L28*L28; 4 L21*L28*RX_P; 5 L21*TY_R_*TY_R_
1 L23*L25*RX_P; 1 L24*L30*L36; 2 L24*RX_P*TY_R_; 4 L25*L28*TY_R_
1 L27*L27*L29; 18 L27*L28*L29; 1 L27*L29*L31; 1 L27*L33*TY_R_
15 L27*L34*RX_P; 2 L27*L35*C_OHD_YZ; 22 L27*DROP_OHP_YZ*TY_R_; 1 L28*L33*RX_P
1 L30*TY_R_*TY_R_; 1 L33*L35*RX_P; 1 L34*RX_P*RX_P; 26 -OHF*L1
1 +HDF*L31; 2 +HDF*L32; 19 +OYZ*L2; 46 +OYZ*L21
18 +OYZ*L25; 26 -HCY*L19; 51 -HCY*L22; 1 -HCY*L29
1 -OHZ*L29; 48 -OHZ*RY_P; 22 -OHZ*TY_R_; 10 -HDZ*L17
2 -HFZ*L17; 33 +OCP*L3; 14 +OCP*L25; 25 +OCP*L26
47 +OCP*L27; 2 -HFP*L12; 23 -CDP*L11; 30 -CDP*L14
3 -CDP*L17; 1 -CDP*L18; 9 -CDP*L30; 28 -CDP*L32
1 -CDP*RY_P; 17 -CDP*DROP_OCR_Q; 47 +CDQ*L27; 1 -CZQ*L12
1 -HFR*L1; 2 -HFR*L14; 4 -HFR*L22; 38 -HFR*L27
6 -HFR*L28; 2 -HFR*L36; 3 -HFR*DROP_OHP_YZ; 23 -HFR*RY_P
34 -HFR*DROP_OCR_Q; 1 -DFR*L2; 7 -DFR*L4; 8 -DFR*L32
3 +OQR*L12; 20 +OQR*L17; 25 +OQR*L20; 1 +OQR*L27
16 -DPR*L5; 23 -DPR*L14; 56 -DPR*L22; 3 +CYZ*L5
65 +CYZ*L20; 31 +CYZ*L27; 26 +CYZ*TY_R_; 6 -OYQ*L1
4 -OYQ*L5; 2 -OYQ*L15; 2 -OYR*L1; 4 -OYR*L3
1 -OYR*L7; 20 -OYR*L20; 37 -OYR*L22; 17 -OYR*RY_P
1 -OYR*TY_R_; 11 +HPQ*L12; 3 +HPQ*L18; 1 +FPQ*L5
47 -CQR*L4; 7 -CQR*L11; 15 -CQR*L32; 3 -HDQ*L3
33 -HDQ*L24; 22 -HDQ*L30; 15 -HDQ*L32; 29 +YZP*L4
16 +YZP*L6; 12 +YZP*L19; 91 +YZP*L26; 50 +YZP*L27
1 +YZP*L33; 36 +YZP*-OHD; 16 +YZP*TX_R_; 15 -YZQ*L6
12 -YZQ*L19; 52 -YZQ*L27; 19 -YZQ*L31; 1 -YZQ*L33
36 -YZQ*-OHD; 13 -YZQ*DROP_OHP_YZ; 91 -YZQ*DROP_OCR_Q; 15 -YZQ*TX_R_
2 +ODY*L20; 30 +CPQ*L32; 7 +CPQ*C_OHD_YZ; 61 +CPQ*TY_R_
4 +CPR*L35; 21 -DQR*L1; 1 -DQR*L2; 21 -DQR*L10
69 -DQR*L19; 1 -DQR*L27; 5 -DQR*RY_P; 1 -CFQ*L27
2 +FYQ*L27; 4 +YQR*L5; 19 +YQR*L30; 2 +YQR*L34
4 -PQR*L8; 37 -PQR*L32; 19 -YZR*L8; 7 C_OHQ_YZ*L24
14 C_OHQ_YZ*L30; 23 C_OZQ_Y*L1; 19 C_OZQ_Y*L2; 6 C_OZQ_Y*L16
8 C_OZR_Y*L21; 2 C_OZR_Y*L23; 2 C_OZR_Y*L25; 33 C_HCZ_Y*L20
13 C_HCZ_Y*L27; 2 C_CZR_YQ*L24; 1 C_CZR_YQ*L36; 1 C_CZR_YQ*TY_R_
23 C_DFP_Q*L27; 1 C_ZPQ_Y*L35; 16 C_ZPR_YQ*L1; 21 C_ZPR_YQ*L4
1 C_ZPR_YQ*L14; 6 C_ZPR_YQ*L17; 11 C_ZPR_YQ*L20; 16 TPX_R_*L27
1 TPY_R_*L8; 1 SP_OPRH_ZQ_PH-1*L30; 21 Q_OQRZ_Y*L16; 25 Q_OQRZ_Y*L21
28 Q_OQRZ_Y*C_OHD_YZ; 1 Q_HZCF_Y*L1; 1 Q_HZCP_Y*L32; 12 Q_HZPD_YQ*L17
8 Q_HZPR_YQ*L17; 24 Q_CPDF_Q*L27; 6 Q_CDRZ_YQ*L20; 1 Q_CPRY_Q*L6
```

Upper bound: `-1355024607/62500000000`.

### Leaf RUTpmmmppmmpp

Assumptions: `+CYZ -OYP -OYQ -OYR +HPQ +FPQ -CQR -HDQ +YZP +YZQ`.

```c1top-geometry
P OHDYR +ODY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FHCYQ +FYQ
P FHCZQ +FZQ
P YODPR +YPR
P ZODPR +ZPR
P POHYQ -PYQ
P POHZQ -PZQ
P QOHYR -QYR
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR YZ 12 lower 347/500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 347/500 1
t 27/50 1
```

```c1top-sum
106 L0*L3*TY_R_; 63 L0*L17*DROP_OCR_Q; 4 L0*L22*L30; 38 L0*RX_P*TY_R_
41 L1*L1*L6; 4 L1*L1*L25; 24 L1*L1*L30; 4 L1*L2*L5
25 L1*L2*L20; 52 L1*L3*L11; 1 L1*L3*RX_P; 96 L1*L4*L6
51 L1*L5*L6; 1 L1*L5*L20; 5 L1*L6*L12; 14 L1*L6*L14
11 L1*L6*L17; 45 L1*L6*L25; 21 L1*L8*L18; 21 L1*L8*L20
13 L1*L8*L34; 13 L1*L8*L36; 82 L1*L10*L12; 11 L1*L12*RY_P
9 L1*L14*L20; 60 L1*L14*L31; 37 L1*L17*L22; 6 L1*L17*C_OHD_YZ
25 L1*L20*L24; 6 L1*L21*L32; 45 L1*L25*L25; 6 L1*L25*TY_R_
10 L1*L28*L29; 6 L1*L32*RX_P; 4 L2*L12*L17; 5 L2*L17*L25
15 L2*L17*L26; 4 L2*L17*L33; 35 L2*L18*TX_R_; 72 L2*L22*TY_R_
1 L2*L25*L25; 5 L2*RX_P*TY_R_; 4 L3*L3*L6; 6 L3*L3*L23
29 L3*L5*L23; 11 L3*L8*L19; 86 L3*L10*L12; 44 L3*L11*L18
4 L3*L11*L27; 1 L3*L11*+OCF; 60 L3*L14*L35; 4 L3*L17*L29
97 L3*L18*L28; 61 L3*L18*L30; 6 L3*L18*-OHD; 78 L3*L18*RX_P
15 L3*L18*TY_R_; 24 L3*L20*L27; 10 L3*L20*L28; 24 L3*L24*TY_R_
7 L3*L25*L32; 10 L3*L27*L28; 17 L3*L27*L30; 82 L3*L27*C_OHD_YZ
6 L3*L32*-OHD; 4 L3*RX_P*TX_R_; 14 L4*L6*L17; 20 L4*L10*L17
2 L4*L11*L30; 18 L4*L12*L21; 2 L4*L12*L33; 46 L4*L17*L17
51 L4*L17*L23; 62 L4*L17*L24; 48 L4*L17*L26; 82 L4*L17*L27
27 L4*L17*L28; 14 L4*L17*L35; 68 L4*L17*C_OHD_YZ; 81 L4*L18*L21
22 L4*L20*TY_R_; 63 L5*L5*L25; 11 L5*L12*L18; 10 L5*L14*L25
20 L5*L14*RX_P; 2 L5*L18*TX_R_; 46 L5*L21*L30; 10 L5*L21*L34
21 L5*L25*L27; 8 L5*L30*L32; 5 L5*L30*L35; 49 L6*L6*TY_R_
4 L6*L8*TY_R_; 12 L6*L17*L26; 55 L6*L25*TY_R_; 3 L6*RY_P*TY_R_
35 L7*L18*RX_P; 41 L7*L27*L27; 10 L7*L27*TX_R_; 9 L8*L8*L23
28 L8*L11*L17; 38 L8*L11*+OCF; 5 L8*L12*L36; 77 L8*L12*RY_P
5 L8*L15*L36; 79 L8*L17*L18; 19 L8*L17*L22; 1 L8*L17*+OCF
68 L8*L17*RY_P; 5 L8*L18*L35; 43 L8*L21*L34; 9 L8*L22*L30
2 L8*L27*L28; 5 L8*L30*TY_R_; 5 L8*L32*RY_P; 3 L8*RX_P*RY_P
12 L8*RX_P*TY_R_; 148 L9*L10*L12; 5 L9*L32*TY_R_; 5 L10*L12*L15
36 L10*L14*L25; 1 L10*L17*RX_P; 2 L10*L25*L25; 57 L11*L17*L34
44 L11*L20*L21; 3 L11*L20*TY_R_; 3 L11*L23*L27; 4 L11*L24*L27
6 L11*L25*L30; 62 L11*L28*RX_P; 28 L11*L30*DROP_OHP_YZ; 2 L12*L12*RY_P
4 L12*L15*RX_P; 14 L12*L17*L19; 53 L12*L17*L28; 20 L12*L20*L23
3 L12*L23*DROP_OHP_YZ; 3 L12*L23*DROP_OCR_Q; 9 L12*L25*DROP_OHP_YZ; 5 L12*L28*L31
3 L12*L34*DROP_OCR_Q; 3 L13*L32*RX_P; 3 L14*L17*L22; 57 L14*L17*L35
11 L14*L18*L28; 48 L14*L20*L21; 34 L14*L20*L31; 10 L14*L20*RX_P
24 L14*L24*L35; 10 L15*L17*L26; 6 L16*L17*L22; 1 L16*L17*L35
1 L16*L31*RX_P; 61 L16*TY_R_*TY_R_; 159 L17*L17*L18; 6 L17*L17*L23
4 L17*L17*L24; 50 L17*L18*L29; 159 L17*L18*RX_P; 3 L17*L20*L32
7 L17*L23*L36; 1 L17*L24*L24; 9 L17*L24*L33; 46 L17*L27*L27
1 L17*L28*L29; 10 L17*L30*TY_R_; 5 L17*L35*DROP_OCR_Q; 1 L17*+OCF*RX_P
14 L18*L20*L34; 6 L18*L21*L28; 16 L18*L21*L31; 24 L18*L21*L32
26 L18*L21*TY_R_; 16 L18*L22*L31; 6 L18*L23*L25; 8 L18*L23*L30
6 L18*L24*L25; 5 L18*L24*L32; 6 L18*L24*TX_R_; 16 L18*L25*L27
21 L18*L27*L29; 11 L18*L28*L36; 5 L18*L30*L30; 14 L18*L30*DROP_OHP_YZ
20 L20*L20*TY_R_; 28 L20*L21*L32; 20 L21*L21*L27; 28 L21*L21*L34
96 L21*L22*L30; 5 L21*L27*L34; 15 L21*L27*C_OHD_YZ; 3 L21*L28*L35
6 L21*L34*L34; 3 L22*L27*L35; 11 L22*RX_P*RX_P; 20 L23*L27*RX_P
7 L23*L28*RX_P; 1 L24*L24*RX_P; 6 L24*L30*L32; 13 L24*L32*RX_P
4 L24*L35*TY_R_; 4 L25*RX_P*RX_P; 5 L26*L30*L35; 31 L27*RX_P*TY_R_
3 L30*C_OHD_YZ*TY_R_; 10 L36*RX_P*TY_R_; 40 FAN*L21; 33 -OHF*L1
143 +OYZ*L1; 207 +OYZ*L3; 5 +OYZ*L15; 24 +OYZ*L18
130 +OYZ*L20; 57 +OYZ*L26; 208 +OYZ*L31; 114 +OYZ*-OHD
23 -HYZ*L3; 62 -HYZ*L12; 1 +OCY*L17; 78 -HCY*L4
93 -HCY*L5; 60 -HCY*L14; 65 -HCY*L17; 54 -HCY*L20
6 -HCY*L24; 4 -HCY*L27; 11 -HCY*L28; 66 -HCY*L33
65 -HCY*RX_P; 26 -HCY*RY_P; 56 -OHZ*L10; 28 -OHZ*L29
31 -OHZ*+OCF; 10 -OHZ*C_OHD_YZ; 14 -HFZ*L1; 83 +OCP*L3
28 +OCP*L5; 16 +OCP*L20; 70 +OCP*L25; 13 +OCP*L27
48 +OCP*L30; 20 +OCP*L34; 8 +OCP*L35; 96 -CDP*L0
10 -CDP*L14; 6 -CDP*L17; 119 -CDP*L23; 42 -CDP*L24
53 -CDP*L26; 9 -CDP*L30; 62 -CDP*L32; 5 -CDP*+OCF
15 +DFQ*L18; 22 +HYQ*L30; 4 -HFR*L1; 80 -HFR*L5
4 -HFR*L12; 107 -HFR*L18; 25 -HFR*L21; 20 -HFR*L22
45 -HFR*L25; 6 -HFR*L26; 13 -HFR*DROP_OHP_YZ; 126 -HFR*RY_P
4 +CDR*L12; 10 -DFR*L0; 3 -DFR*L4; 49 -DFR*L6
19 -DFR*L23; 4 -DFR*L30; 25 -DPR*L1; 7 -DPR*L3
88 -DPR*L5; 15 -DPR*L6; 5 -DPR*L10; 9 -DPR*L21
134 -DPR*L22; 16 -DPR*L27; 38 +CYZ*L8; 71 +CYZ*L12
29 -OYR*L2; 2 -OYR*L4; 60 -OYR*L14; 27 -OYR*L25
25 +HPQ*L6; 10 +FPQ*L4; 29 +FPQ*L13; 15 +FPQ*L16
9 +FPQ*L25; 1 +FPQ*L27; 20 +FPQ*-OHD; 9 +FPQ*DROP_OHP_YZ
6 -CQR*L4; 24 -CQR*L24; 31 -CQR*L27; 5 -CQR*L31
10 -CQR*L36; 56 -CQR*C_OHD_YZ; 2 -CQR*DROP_OHP_YZ; 88 -CQR*RY_P
21 -HDQ*L12; 35 -HDQ*L17; 13 -HDQ*L18; 21 +YZP*L21
13 +YZQ*L8; 24 +YZQ*L19; 96 +YZQ*L21; 24 +YZQ*L24
118 +YZQ*L27; 9 +YZQ*L30; 4 +YZQ*-OHD; 25 +YZQ*+OCF
31 +YZQ*DROP_OHP_YZ; 121 +YZQ*DROP_OCR_Q; 81 +ODY*L12; 5 -OZR*L20
49 +CPQ*L1; 11 +CPQ*L9; 10 +CPQ*L14; 25 +CPQ*L17
10 +CPQ*L22; 10 +CPQ*L23; 9 +CPQ*L30; 83 +CPQ*TY_R_
5 +CPR*L12; 32 -DPQ*L27; 44 -DPQ*L30; 37 -DQR*L1
10 -DQR*L14; 20 -DQR*L20; 9 -DQR*L29; 19 -DQR*RX_P
53 -DQR*RY_P; 31 -DQR*TY_R_; 15 -CFQ*L18; 17 +YQR*L3
24 +YQR*L24; 13 +YQR*RX_P; 20 +ZQR*L20; 5 -PQR*L30
18 C_OHQ_YZ*L3; 25 C_OHQ_YZ*L4; 32 C_OHQ_YZ*L17; 24 C_HCZ_Y*L30
28 C_HZP_Y*L12; 9 TPY_R_*L20; 10 TPY_R_*L27; 29 Q_OQFH_YZ*L12
3 Q_HZCQ_Y*L8; 43 Q_HZCQ_Y*L30; 56 Q_HZPQ_Y*L8; 32 Q_HZPQ_Y*L30
9 Q_HZQR_Y*L12; 40 Q_DRFP_Q*L17; 25 Q_DRFP_Q*L20; 37 Q_DRFP_Q*L27
```

Upper bound: `-148711877/125000000`.

### Leaf RUTpmmmppmp

Assumptions: `+CYZ -OYP -OYQ -OYR +HPQ +FPQ -CQR +HDQ`.

```c1top-geometry
P OHDYR +ODY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DOHCQ -DOQ
P DOHYQ -DYQ
P DOHZQ -DZQ
P DOFPQ -DPQ
P DOFQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FHCYQ +FYQ
P FHCZQ +FZQ
P YODPQ +YPQ
P YODPR +YPR
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHCR -QHR
P QOHYR -QYR
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR YZ 12 lower 347/500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 347/500 1
t 27/50 1
```

```c1top-sum
1 L0*L3*L8; 18 L0*L4*L21; 1 L0*L7*L21; 1 L0*L14*L27
32 L0*L16*L27; 9 L0*L17*L20; 7 L0*L21*L25; 11 L1*L1*L20
3 L1*L2*L2; 3 L1*L2*L6; 15 L1*L2*L20; 50 L1*L4*L6
3 L1*L8*L26; 2 L1*L8*L27; 1 L1*L12*TY_R_; 28 L1*L17*TY_R_
38 L1*L20*DROP_OCR_Q; 1 L1*L27*C_OHD_YZ; 25 L2*L4*TY_R_; 2 L2*L17*L22
10 L3*L4*L17; 2 L3*L10*L27; 34 L3*L18*-OHD; 39 L3*L18*TY_R_
4 L3*L27*L29; 12 L4*L4*L21; 9 L4*L4*RX_P; 16 L4*L7*L27
3 L4*L17*L29; 8 L4*L17*+OCF; 18 L4*L17*DROP_OCR_Q; 18 L4*L17*TY_R_
31 L4*L18*L29; 29 L4*L20*L25; 2 L4*L20*L35; 2 L4*L21*L31
2 L4*L21*L32; 2 L4*L24*L30; 1 L4*L24*L35; 40 L4*L25*L27
1 L4*L27*-OHD; 12 L5*L23*L25; 9 L5*L25*L25; 2 L6*L16*L23
5 L6*L18*L21; 7 L6*L20*L27; 7 L7*L23*L27; 1 L8*L9*L33
1 L8*L14*TY_R_; 1 L10*L12*L27; 1 L10*L25*L27; 1 L10*L27*L27
1 L14*L27*TY_R_; 1 L16*L18*TX_R_; 7 L16*L27*L27; 1 L17*L17*L27
12 L17*L18*L22; 21 L17*L20*L28; 1 L18*L20*L27; 11 L18*L21*L26
12 L18*L22*RX_P; 9 L18*L23*L25; 35 L18*L25*C_OHD_YZ; 9 L18*L25*TY_R_
13 L18*L28*L29; 9 L18*DROP_OCR_Q*TX_R_; 14 L20*L27*L27; 10 L22*L27*L27
10 L22*L27*DROP_OCR_Q; 14 L23*L25*L27; 34 L25*L27*L28; 2 L25*L27*L29
2 L25*L29*TY_R_; 1 L26*L27*L34; 11 L27*L27*L27; 1 L27*L27*L35
1 L27*L27*C_OHD_YZ; 11 L27*L27*DROP_OCR_Q; 1 L27*L28*L34; 1 L27*L31*L31
5 L27*-OHD*RX_P; 7 L27*RX_P*TY_R_; 33 L28*RX_P*TY_R_; 6 KLOW*L7
8 KLOW*L19; 8 KLOW*L22; 3 KLOW*L29; 18 KLOW*TY_R_
1 FAN*L1; 1 FAN*L21; 1 FAN*L24; 1 FAN*L34
1 FAN*+OCF; 1 +OYZ*C_OHD_YZ; 2 +OYZ*DROP_OCR_Q; 3 -HYZ*L26
2 -HCY*L24; 1 -HCY*L26; 2 -HCY*DROP_OCR_Q; 3 -OHZ*L26
1 -OHZ*TY_R_; 3 +OCP*L3; 19 +OCP*L25; 14 +OCP*L28
1 -CDP*L6; 23 -CDP*L23; 1 -CDP*L25; 15 -CDP*L28
3 -CDP*+OCF; 22 -CDP*DROP_OCR_Q; 52 -CDP*TY_R_; 3 -HFQ*L0
7 -HFQ*L4; 14 +DFQ*L19; 7 +DFQ*L24; 57 +DFQ*L26
18 +DFQ*L28; 24 +DFQ*+OCF; 9 +DFQ*RX_P; 10 +DFQ*RY_P
12 -HFR*L2; 11 -HFR*RY_P; 34 -HFR*TY_R_; 3 +CDR*L2
22 +OQR*L6; 5 +OQR*L24; 1 +OQR*L30; 22 +OQR*TY_R_
12 -DPR*L4; 97 -DPR*L17; 24 -DPR*C_OHD_YZ; 96 -DPR*DROP_OHP_YZ
1 -OYQ*L25; 2 -OYR*L2; 1 -OYR*L4; 2 -OYR*DROP_OCR_Q
4 -CQR*L1; 16 -CQR*L6; 12 -CQR*L28; 35 -CQR*RY_P
5 +HDQ*L1; 3 +HDQ*L7; 1 +HDQ*L8; 18 +HDQ*L25
19 +HDQ*L27; 12 +HDQ*L29; 1 +HDQ*L33; 30 +HDQ*DROP_OHP_YZ
27 +HDQ*DROP_OCR_Q; 30 +HDQ*TY_R_; 8 +ODQ*L27; 5 -DPQ*L6
8 -DQR*L1; 1 -DQR*L9; 23 -DQR*L18; 5 -DQR*L24
1 -DQR*L30; 9 -DQR*TY_R_; 2 -CFQ*L16; 27 +FQR*L27
3 C_OHQ_YZ*L1; 4 C_OHQ_YZ*L4; 1 C_OHQ_YZ*+OCF; 38 C_OHQ_YZ*RY_P
10 C_OHQ_YZ*TX_R_; 12 C_OHR_YZ*L4; 82 C_HDF_Q*L4; 25 C_HDF_Q*L20
15 C_HDF_Q*L23; 15 C_HDF_Q*L27; 7 C_CFR_Q*L27; 1 C_DFP_Q*RX_P
1 C_DYR_Q*L20; 3 C_DYR_Q*L27; 3 TPX_R_*L25; 4 Q_ORFH_YZ*L18
3 Q_HDRF_Q*L1; 2 Q_HDRF_Q*RY_P; 16 Q_DRFP_Q*L0; 23 Q_DRFP_Q*L22
5 Q_DRFP_Q*L28
```

Upper bound: `-1019885423/1000000000`.

### Leaf RUTpmmmppp

Assumptions: `+CYZ -OYP -OYQ -OYR +HPQ +FPQ +CQR`.

```c1top-geometry
P OHDYR +ODY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P FHCYQ +FYQ
P FHCZQ +FZQ
P YODPR +YPR
P ZODPR +ZPR
P POHYQ -PYQ
P POHZQ -PZQ
P QOHFR -QHR
P QOHYR -QYR
P QOHZR -QZR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR YZ 12 lower 347/500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 347/500 1
t 27/50 1
```

```c1top-sum
6 L0*L17*RY_P; 2 L0*L24*RY_P; 4 L0*L27*+OCF; 13 L1*L3*L24
13 L1*L3*L27; 9 L1*L4*L6; 6 L1*L4*L17; 2 L1*L6*L6
13 L1*L6*L16; 56 L1*L6*L26; 2 L1*L6*TX_R_; 1 L1*L8*L26
1 L1*L17*L19; 6 L1*L18*RX_P; 1 L2*L10*TY_R_; 17 L2*L19*TY_R_
160 L2*L26*TY_R_; 1 L2*L27*L28; 16 L3*L17*L24; 6 L3*L18*-OHD
3 L4*L8*L28; 3 L4*L17*L18; 41 L4*L17*L27; 1 L4*L22*L30
1 L4*L23*L30; 6 L5*L5*L25; 27 L5*L25*L27; 10 L6*L18*L28
8 L7*L18*L27; 13 L7*L27*RX_P; 10 L8*L26*L36; 3 L8*RY_P*RY_P
18 L11*L24*L26; 5 L12*L26*TY_R_; 3 L13*L18*L18; 62 L17*L17*L18
12 L17*L18*L18; 62 L17*L18*DROP_OHP_YZ; 16 L17*L24*+OCF; 3 L17*L26*L27
17 L17*L26*RY_P; 9 L17*RY_P*TY_R_; 3 L17*TY_R_*TY_R_; 12 L18*L18*RX_P
3 L18*L19*L30; 8 L18*L25*L27; 5 L18*L26*L30; 26 L18*L27*DROP_OHP_YZ
8 L18*L27*TX_R_; 1 L24*L32*TY_R_; 13 L25*L27*L27; 34 L26*L27*TX_R_
5 L30*RY_P*TY_R_; 5 L30*TY_R_*TY_R_; 1 L32*L33*TY_R_; 4 KLOW*L27
13 KLOW*TX_R_; 20 FAN*L26; 6 +OYZ*L26; 2 +OYZ*TY_R_
2 -HYZ*TY_R_; 22 -HCY*L26; 4 -OHZ*TY_R_; 63 -HFR*L4
11 -HFR*L19; 13 -HFR*+OCF; 13 -HFR*DROP_OHP_YZ; 61 -HFR*TY_R_
3 -DFR*L4; 3 -DFR*L28; 2 -DFR*C_OHD_YZ; 6 +HDR*L6
4 +CYZ*L26; 19 -OYR*L4; 20 -OYR*TY_R_; 3 C_OHR_YZ*L7
27 C_OHR_YZ*L26; 13 C_OHR_YZ*RX_P; 9 C_OHR_YZ*RY_P; 31 C_CDR_Q*L4
1 C_CDR_Q*L10; 100 C_CDR_Q*L26; 1 C_CDR_Q*C_OHD_YZ; 22 C_CDR_Q*RY_P
53 C_CDR_Q*TY_R_; 10 TPX_R_*L18; 2 TPX_R_*C_OHD_YZ; 14 Q_CPDR_Q*L5
20 Q_CPDR_Q*L18; 7 Q_CPDR_Q*L26; 8 Q_CPDR_Q*RY_P; 27 Q_DRFP_Q*L27
```

Upper bound: `-9097969/12500000`.

### Leaf RUTpmmpmm

Assumptions: `+CYZ -OYP -OYQ +OYR -OZR -HPQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHFQ -YFQ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P ZODPR +ZPR
P POHFQ +PFQ
P POHQR -PQR
P QOHFZ +QFZ
P QOHZR -QZR
```

```c1top-bounds
```

Exclusion: `cluster OHP Q OHQ YZ`.

### Leaf RUTpmmpmpm

Assumptions: `+CYZ -OYP -OYQ +OYR -OZR +HPQ -FPQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHFQ -YFQ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P ZODPR +ZPR
P POHYQ -PYQ
P POHZQ -PZQ
P POFQR -PQR
P QOHFZ +QFZ
P QOHFR -QHR
P QOHZR -QZR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR Z 12 lower 279/1000
```

```c1top-box
h 39209/50000 1
c 347/500 177/200
d 437927/1000000 179493/200000
f 93/1000 834541/1000000
u 279/1000 699/1000
v 26271/250000 289831/500000
z 93/1000 513/1000
w 26271/250000 789831/1000000
p 210829/250000 1
q 26271/250000 593543/1000000
l 347/500 907/1000
m 26271/250000 907/1000
r 279/1000 1
t 540463/1000000 1
```

```c1top-sum
53724 L0*L0*L17; 2119 L0*L1*L8; 8556 L0*L3*TX_R_; 49169 L0*L4*TX_R_
6329 L0*L17*L32; 32876 L0*L21*L29; 65733 L0*L21*TX_R_; 8733 L0*L27*L29
56831 L0*L27*TX_R_; 86333 L1*L1*L20; 3920 L1*L1*L31; 3551 L1*L3*L3
8442 L1*L3*L6; 5167 L1*L3*L18; 175637 L1*L3*L20; 7417 L1*L3*L35
5167 L1*L3*TY_R_; 43703 L1*L6*L18; 2526 L1*L6*L35; 91279 L1*L7*L17
22862 L1*L8*L17; 6329 L1*L12*L18; 16533 L1*L12*L20; 1040 L1*L12*L27
1101 L1*L17*L18; 85622 L1*L17*L21; 5167 L1*L17*L22; 79031 L1*L17*L24
135507 L1*L17*L26; 62689 L1*L17*L27; 38484 L1*L17*RX_P; 1101 L1*L17*RY_P
15643 L1*L18*L24; 6329 L1*L18*L30; 16533 L1*L20*L30; 49138 L1*L21*L27
1040 L1*L27*L30; 3720 L2*L3*L10; 287578 L2*L4*L17; 123 L2*L27*L35
3697 L3*L3*L11; 57904 L3*L3*L18; 74809 L3*L6*L18; 7290 L3*L7*L27
3224 L3*L8*L27; 268615 L3*L17*L18; 66916 L3*L17*L23; 8520 L3*L17*L27
14040 L3*L18*L18; 1260 L3*L18*L24; 62525 L3*L20*TY_R_; 85 L3*L27*TX_R_
46365 L4*L4*L29; 17308 L4*L4*TX_R_; 8454 L4*L17*L18; 170911 L4*L17*L20
14951 L4*L17*L24; 188584 L4*L17*L27; 20195 L4*L17*L28; 6997 L4*L17*L31
22388 L4*L17*DROP_OCR_Y; 178141 L4*L17*TX_R_; 4906 L4*L18*TX_R_; 330691 L4*L27*TX_R_
6362 L5*L5*L25; 26286 L5*L17*RX_P; 565 L5*L25*L25; 133907 L5*L25*L27
19094 L5*L25*L28; 6997 L6*L17*L32; 135105 L6*L18*L21; 78994 L7*L17*L18
36974 L7*L18*L27; 939 L7*L25*L27; 283413 L7*L27*L27; 917 L8*L27*L27
2177 L9*L17*L23; 6997 L9*L17*L27; 4674 L10*L16*L17; 4264 L10*L25*L29
3735 L10*L25*TX_R_; 917 L10*L27*TX_R_; 6997 L12*L17*RY_P; 3650 L12*L25*L27
343969 L17*L17*L18; 52336 L17*L17*L23; 2323 L17*L17*L32; 343969 L17*L17*RY_P
52336 L17*L18*L21; 4120 L17*L18*L25; 31537 L17*L18*DROP_OCR_Y; 4120 L17*L18*TX_R_
50031 L17*L21*L26; 54442 L17*L22*L25; 71458 L17*L22*L29; 2177 L17*L22*L31
238017 L17*L27*L27; 374 L17*L27*TX_R_; 6997 L17*L30*RY_P; 25950 L18*L18*TX_R_
104473 L18*L20*L25; 64283 L18*L20*L29; 238017 L18*L25*L27; 13472 L18*L25*L28
374 L18*L25*TX_R_; 37585 L18*L27*L29; 62525 L21*L27*L29; 16533 L21*L29*L32
9682 L25*L27*L28; 3650 L25*L27*L30; 3443 L27*L29*L35; 85 L27*L31*TX_R_
2119 KLOW*L0; 1378 KLOW*L10; 23507 KLOW*L21; 10968 KLOW*L29
6039 -HCY*L1; 7417 -HCY*L3; 6997 -HCY*L6; 6329 -HCY*L19
22862 -HCY*L20; 6329 -HCY*L22; 4901 -HCY*L24; 9372 -HCY*L25
3566 -HCY*DROP_OCR_Y; 57904 +OCP*L3; 76069 +OCP*L6; 363 +OCP*L8
37585 +OCP*TY_R_; 51625 -CDP*L4; 242145 -CDP*L17; 14040 -CDP*L18
49798 -CDP*L20; 8520 -CDP*L24; 6997 -CYP*TX_R_; 44815 -HFQ*L17
5167 +CDQ*L0; 5737 +CDQ*TX_R_; 13027 -HFR*L3; 30754 -HFR*L4
78399 -HFR*L6; 78399 -HFR*L7; 6997 -HFR*L8; 12803 -HFR*L16
10021 -HFR*L19; 108176 -HFR*L20; 53724 -HFR*L22; 47149 -HFR*L27
2526 -HFR*L35; 5737 -DFR*L2; 82088 -DFR*L4; 12238 -DFR*L17
30856 -DFR*L18; 170701 -DFR*L21; 25950 -DFR*L23; 939 -DFR*L25
276985 -DFR*L27; 18415 -DFR*L28; 40721 -DFR*DROP_OCR_Y; 8520 -DPR*L3
52727 -DPR*L5; 565 -DPR*L7; 31537 -DPR*L19; 25950 -DPR*L22
238017 -DPR*L27; 19094 -DPR*L28; 374 -DPR*TX_R_; 8855 -OYQ*L1
37613 -OYQ*L3; 47414 -OYQ*L4; 63948 -OYQ*L6; 43942 -OYQ*+OCF
47414 -OYQ*TX_R_; 47414 -OYQ*TY_R_; 6790 +OYR*L3; 7999 +OYR*L6
47414 +OYR*L20; 47414 +OYR*L22; 3735 +OYR*L25; 56350 +OYR*L27
55433 +OYR*DROP_OCR_Y; 60053 +HPQ*L1; 38484 +HPQ*L3; 22862 +HPQ*L8
6329 +HPQ*L10; 64061 +HPQ*L25; 26400 +HPQ*L27; 40807 +HPQ*DROP_OHP_YZ
80124 +HPQ*DROP_OCR_Y; 130288 +HPQ*TX_R_; 53724 -FPQ*L1; 25950 -FPQ*L4
16533 -FPQ*L8; 156686 -FPQ*L17; 25950 -FPQ*L19; 152450 -FPQ*L24
152450 -FPQ*L25; 239800 -FPQ*RX_P; 27774 -FPQ*DROP_OCR_Y; 1162 +CPQ*L0
234063 +CPQ*L7; 26470 +CPQ*L17; 5737 +CPQ*L25; 6329 +CPQ*L35
87235 -DPQ*L2; 121113 -DPQ*L17; 25950 -DPQ*L18; 164964 -DPQ*TX_R_
25950 +FQR*L18; 2526 +YQR*L1; 26280 C_OHQ_YZ*L1; 87099 C_OHQ_YZ*L3
16533 C_OHQ_YZ*L8; 14651 C_OHQ_YZ*L24; 49138 C_OHQ_YZ*L26; 5167 C_OHQ_YZ*RY_P
93030 C_OHQ_YZ*TX_R_; 51198 C_OQR_Y*L1; 50031 C_OQR_Y*L17; 47414 C_OQR_Y*L35
6997 Q_DRYP_Q*L17
```

Upper bound: `-1316252245027317421/500000000000000000`.

### Leaf RUTpmmpmppm

Assumptions: `+CYZ -OYP -OYQ +OYR -OZR +HPQ +FPQ -CQR`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P ZODPR +ZPR
P POHYQ -PYQ
P POHZQ -PZQ
P QOHCR -QHR
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
7 L0*L27*L31; 29 L1*L1*L6; 34 L1*L3*L3; 76 L1*L4*L6
3 L1*L5*L8; 15 L1*L5*L21; 57 L1*L6*L9; 7 L1*L6*L12
23 L1*L6*L18; 31 L1*L6*L21; 32 L1*L6*L26; 23 L1*L6*L29
38 L1*L8*L17; 4 L1*L12*L20; 23 L1*L17*L22; 81 L1*L17*L24
80 L1*L18*L20; 29 L1*L21*L28; 92 L1*L25*L25; 18 L2*L2*TY_R_
17 L2*L3*L32; 167 L2*L5*L21; 35 L2*L5*L22; 165 L2*L5*L25
15 L2*L6*TY_R_; 3 L2*L10*L27; 4 L2*L17*L34; 28 L2*L18*L35
365 L2*L21*L27; 254 L3*L3*L17; 88 L3*L3*L27; 34 L3*L3*L28
2 L3*L3*L34; 62 L3*L4*L17; 28 L3*L5*L18; 166 L3*L5*L27
22 L3*L6*L18; 13 L3*L10*L17; 74 L3*L11*L18; 60 L3*L12*L20
54 L3*L17*L21; 119 L3*L17*L23; 254 L3*L17*L29; 310 L3*L18*L24
166 L3*L25*L27; 194 L3*L27*L29; 3 L3*L27*L34; 214 L4*L6*L17
15 L4*L6*TY_R_; 101 L4*L8*L17; 84 L4*L14*L17; 282 L4*L17*L20
109 L4*L17*L24; 15 L4*L17*L28; 3 L4*L17*L35; 84 L4*L17*L36
55 L4*L27*RX_P; 12 L5*L6*L23; 4 L5*L12*L18; 4 L5*L12*L27
102 L5*L16*TY_R_; 119 L5*L17*RX_P; 3 L5*L20*L30; 23 L5*L21*TY_R_
26 L5*L25*L31; 7 L5*L25*L32; 72 L6*L6*L34; 114 L6*L14*L25
254 L6*L17*L17; 254 L6*L17*RX_P; 186 L6*L18*RX_P; 116 L6*L18*TX_R_
87 L6*L21*L27; 55 L6*L22*L25; 76 L6*L25*TY_R_; 72 L6*L26*L31
2 L6*L28*RX_P; 32 L6*L34*RX_P; 76 L7*L17*L27; 248 L7*L18*L20
6 L8*L15*L27; 43 L8*L17*L23; 14 L8*L18*L25; 123 L8*L21*L28
16 L8*L24*L27; 7 L8*L27*L28; 37 L9*L25*L27; 6 L10*L12*L27
18 L10*L17*L18; 3 L10*L17*L27; 106 L11*L20*RX_P; 148 L11*L25*RX_P
40 L11*L27*RX_P; 60 L12*L17*L21; 87 L12*L17*DROP_OCR_YQ; 4 L12*L27*RY_P
32 L14*L17*L29; 4 L14*L18*L25; 27 L16*L27*L28; 281 L17*L17*L18
18 L17*L18*L35; 382 L17*L18*RX_P; 85 L17*L19*L21; 110 L17*L21*L32
54 L17*L21*C_OCF_Y; 17 L17*L22*L24; 205 L17*L22*L31; 181 L17*L22*TX_R_
85 L17*L23*RX_P; 47 L17*L27*L31; 84 L17*L30*TY_R_; 18 L17*C_OHD_Z*RX_P
58 L18*L25*L29; 25 L18*L25*TX_R_; 93 L18*L25*TY_R_; 68 L18*L27*L29
7 L18*L27*TX_R_; 100 L18*RX_P*RX_P; 145 L19*L21*L27; 36 L20*L25*TY_R_
60 L20*L30*RX_P; 60 L20*L35*RX_P; 36 L21*L24*L27; 35 L21*L27*L27
198 L21*L27*DROP_OHP_YZ; 35 L21*L27*TY_R_; 3 L21*L28*L30; 110 L21*L28*RX_P
53 L21*L28*TX_R_; 12 L22*L27*L29; 125 L22*L27*RX_P; 3 L24*L25*L28
19 L25*L27*L29; 203 L25*L27*C_OCF_Y; 25 L25*L27*RX_P; 29 L25*L28*L28
31 L25*L28*L31; 53 L25*L31*TY_R_; 50 L25*TY_R_*TY_R_; 193 L26*L27*RX_P
293 L27*L27*DROP_OHP_YZ; 50 L27*L27*TX_R_; 3 L27*L28*L29; 85 L27*L29*L29
3 L27*L30*RX_P; 3 L27*L36*C_OCF_Y; 143 L27*C_OCF_Y*TY_R_; 18 L32*RX_P*RX_P
43 L32*RX_P*TY_R_; 4 FAN*L3; 16 FAN*L17; 7 +HDF*L12
13 +OYZ*L6; 27 +OYZ*L16; 2 +OYZ*L29; 1 +OYZ*DROP_OCR_YQ
7 +OYZ*TX_R_; 3 -HCY*L4; 19 -HCY*L16; 110 -HCY*L21
87 -HCY*L24; 4 -HCY*RX_P; 16 -HCY*TX_R_; 72 -HFZ*TX_R_
12 +OCP*L1; 87 +OCP*L3; 181 +OCP*L17; 244 +OCP*L25
57 +OCP*L27; 16 +HCP*L27; 52 -CDP*L3; 62 -CDP*L20
272 -CDP*L23; 46 -CDP*L32; 307 +CDQ*L27; 29 -HFR*L1
88 -HFR*L4; 591 -HFR*L10; 519 -HFR*L11; 295 -HFR*L20
12 -HFR*L22; 118 -HFR*L25; 72 -HFR*L33; 72 -HFR*L35
94 -HFR*DROP_OHP_YZ; 23 -HFR*TX_R_; 7 +CDR*L18; 4 -DZR*L18
270 -DPR*L2; 6 -DPR*L5; 63 -DPR*L6; 14 -DPR*L8
68 -DPR*L20; 296 -DPR*L22; 25 -DPR*L24; 100 -DPR*TY_R_
2 +CYZ*L3; 27 +CYZ*L17; 3 +CYZ*L25; 3 +CYZ*TX_R_
276 -OYQ*L3; 240 -OYQ*L8; 240 -OYQ*L9; 360 -OYQ*L24
235 -OYQ*L26; 294 -OYQ*DROP_OHP_YZ; 196 +OYR*L1; 7 +OYR*L5
13 +OYR*L6; 7 +OYR*L13; 103 +OYR*L17; 360 +OYR*L20
235 +OYR*L22; 7 +OYR*L34; 189 +OYR*-OHD; 251 +OYR*RX_P
112 +HPQ*L6; 13 +HPQ*L25; 12 +FPQ*L0; 684 +FPQ*L2
12 +FPQ*L4; 116 +FPQ*L6; 67 +FPQ*L17; 262 +FPQ*L25
159 -CQR*L3; 225 -CQR*L6; 248 -CQR*L8; 22 -CQR*L24
433 -CQR*L29; 34 -CQR*-OHD; 313 -CQR*RX_P; 272 -CQR*RY_P
69 +CPQ*L1; 476 +CPQ*L7; 28 +CPQ*L8; 343 +CPQ*L24
420 +CPQ*L26; 35 +CPQ*L28; 39 +CPQ*+OCF; 23 -DQR*L1
123 -DQR*L9; 22 -DQR*L25; 39 -DQR*L27; 46 -DQR*C_OCF_Y
42 -DQR*RX_P; 23 -DQR*RY_P; 39 -DQR*DROP_OCR_YQ; 18 +YPQ*L17
29 C_OHQ_YZ*L1; 67 C_OHQ_YZ*L4; 130 C_OHQ_YZ*L7; 16 C_OHQ_YZ*L8
1 C_OHQ_YZ*L12; 57 C_OHQ_YZ*L18; 12 C_OHQ_YZ*L26; 362 C_OHQ_YZ*TX_R_
30 C_OCR_YQ*L6; 175 C_OQR_Y*L3; 227 C_OQR_Y*L35; 225 C_OQR_Y*RX_P
34 C_CDF_Q*L17; 91 C_CFR_Q*L17; 50 C_CFR_Q*L27; 186 C_CZR_YQ*L6
119 C_DFP_Q*L17; 75 C_DFP_Q*L27; 12 C_DFP_Q*L28; 4 TPX_R_*L4
17 Q_ORFH_Z*L17; 7 Q_OQRZ_Y*L35; 126 Q_CDRF_Q*L17; 13 Q_CDRY_Q*L6
```

Upper bound: `-2446940087/500000000`.

### Leaf RUTpmmpmpppmm

Assumptions: `+CYZ -OYP -OYQ +OYR -OZR +HPQ +FPQ +CQR -HDQ -YZP`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P YHDZP +YDZ
P ZODPR +ZPR
P POHYQ -PYQ
P POHZQ -PZQ
P QOHZR -QZR
V Y CZP ZQ -1
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
1 L0*L1*L11; 13 L0*L2*RX_P; 19 L0*L3*L34; 4 L0*L8*L23
100 L0*L12*RX_P; 9 L0*L12*TX_R_; 38 L0*L12*TY_R_; 3 L0*L17*L17
6 L0*L17*L25; 14 L0*L17*L32; 31 L0*L17*RX_P; 38 L0*L18*TX_R_
4 L1*L1*L2; 8 L1*L3*L14; 15 L1*L3*L32; 50 L1*L4*L6
9 L1*L6*L11; 26 L1*L6*DROP_OCR_Y; 61 L1*L6*TY_R_; 9 L1*L8*L24
4 L1*L10*L21; 1 L1*L10*L28; 11 L1*L11*L27; 7 L1*L14*L31
13 L1*L15*L17; 14 L1*L17*L34; 24 L1*L21*TY_R_; 2 L1*L22*L24
17 L1*L25*TY_R_; 14 L1*L31*L31; 11 L1*L35*RY_P; 11 L1*L35*TY_R_
7 L2*L2*L11; 9 L2*L2*L28; 17 L2*L4*L17; 16 L2*L6*RY_P
9 L2*L11*L12; 37 L2*L11*TY_R_; 22 L2*L14*L21; 7 L2*L19*L28
86 L2*L19*L30; 4 L2*L22*L28; 15 L2*L22*TY_R_; 11 L2*L26*L32
29 L2*L27*RY_P; 137 L2*L27*TY_R_; 100 L2*TY_R_*TY_R_; 44 L3*L3*L18
14 L3*L4*L12; 10 L3*L4*L21; 8 L3*L6*L14; 8 L3*L10*L28
31 L3*L11*L30; 20 L3*L17*L19; 9 L3*L18*TX_R_; 1 L3*L27*L35
55 L4*L4*L17; 47 L4*L6*TY_R_; 32 L4*L9*L12; 61 L4*L12*L21
5 L4*L12*L32; 21 L4*L17*L18; 1 L4*L17*L20; 15 L4*L17*L25
91 L4*L17*L27; 85 L4*L17*L30; 3 L5*L10*L21; 5 L5*L15*RX_P
42 L5*L16*TY_R_; 49 L5*L25*L27; 9 L5*L29*RX_P; 1 L6*L6*L32
34 L6*L14*TY_R_; 33 L6*L16*TY_R_; 1 L6*L17*L18; 33 L6*L17*L26
4 L6*L19*L30; 9 L6*L22*L32; 4 L6*L22*RY_P; 32 L6*L26*RY_P
2 L6*L27*L31; 3 L6*L35*TY_R_; 14 L7*L13*L17; 9 L7*L14*L27
1 L7*L27*L29; 4 L8*L8*L15; 20 L8*L16*L17; 5 L8*L19*L20
2 L8*L19*L28; 35 L8*L19*L31; 30 L8*L19*C_OCF_Y; 76 L8*L21*L28
20 L8*L23*L27; 29 L8*L26*L28; 3 L8*L27*L32; 5 L9*L10*RX_P
30 L9*L17*L32; 12 L9*L22*L27; 3 L9*L23*TY_R_; 3 L10*L10*L25
27 L10*L16*L27; 24 L10*L17*L24; 15 L10*L20*RX_P; 1 L10*L21*L24
1 L10*L21*L29; 10 L10*L21*DROP_OHP_YZ; 60 L10*L21*DROP_OCR_Y; 65 L10*L27*TX_R_
4 L11*L12*L31; 10 L11*L17*L28; 10 L11*L20*L27; 4 L11*L20*L32
5 L11*L30*RY_P; 29 L12*L15*RX_P; 8 L12*L17*L26; 13 L12*L17*L28
24 L12*L18*RX_P; 1 L12*L21*DROP_OCR_Y; 4 L12*L22*RX_P; 6 L12*L23*L30
9 L12*L24*L27; 9 L12*L25*L28; 2 L12*L28*DROP_OCR_Y; 24 L12*L35*+OCF
28 L12*L36*DROP_OCR_Y; 14 L14*L17*L17; 4 L14*L17*L20; 37 L14*L17*L29
4 L14*L21*L31; 5 L14*L21*TY_R_; 48 L14*L27*RX_P; 5 L15*L21*L28
6 L15*L21*L30; 20 L16*L17*L35; 21 L17*L18*L18; 34 L17*L18*L27
34 L17*L18*DROP_OCR_Y; 1 L17*L22*RX_P; 78 L17*L26*L32; 5 L17*L28*DROP_OHP_YZ
24 L17*L32*TX_R_; 24 L17*L32*TY_R_; 54 L17*L34*RX_P; 3 L17*L35*-OHD
6 L17*-OHD*RX_P; 4 L18*L18*L35; 21 L18*L18*RX_P; 18 L18*L27*L33
35 L18*L28*TX_R_; 20 L18*L31*RX_P; 5 L19*L30*L33; 41 L19*L30*TY_R_
2 L19*L31*TY_R_; 2 L21*L27*TY_R_; 31 L21*L28*L31; 26 L21*L28*TY_R_
4 L21*L30*L32; 15 L22*L27*L31; 2 L23*L25*L27; 4 L23*L31*L35
9 L24*L27*L35; 39 L25*L27*L28; 9 L25*L30*TY_R_; 18 L25*TY_R_*TY_R_
3 L27*L27*L33; 18 L27*L27*TX_R_; 45 L27*L28*L29; 15 L27*L29*L32
11 L27*L29*L34; 36 L27*L31*RY_P; 56 L27*L32*TX_R_; 4 L28*L28*L31
5 L30*L31*RY_P; 4 L30*RY_P*RY_P; 5 L31*L35*RY_P; 92 L34*RX_P*RX_P
29 L34*RX_P*TY_R_; 14 KLOW*L21; 7 KLOW*RY_P; 8 KLOW*TX_R_
57 FAN*L17; 15 +HDF*L25; 2 +HDF*TY_R_; 47 +OYZ*L2
7 +OYZ*L31; 32 -HYZ*L8; 61 -HYZ*RX_P; 7 -HYZ*TY_R_
3 -HCY*L1; 18 -HCY*L8; 14 -HCY*L18; 4 -HCY*L23
9 -HCY*L25; 21 -HCY*L27; 38 -HCY*L33; 74 -HCY*DROP_OCR_Y
9 -HCY*TX_R_; 13 +CFY*L17; 5 -OHZ*L23; 7 -OHZ*L35
34 -HFZ*TY_R_; 20 +HCP*L12; 77 -CDP*L4; 11 -CDP*L18
52 -CFP*L12; 11 -CYP*L9; 20 -CYP*L17; 16 +HCQ*L12
27 +CDQ*L5; 1 -CYQ*L17; 6 -CZQ*L12; 16 -HFR*L4
18 -HFR*L17; 1 -HFR*L21; 4 -HFR*L23; 128 -HFR*L24
128 -HFR*L25; 9 -HFR*L35; 16 -HFR*+OCF; 14 -DFR*L4
23 -DFR*L9; 15 -DFR*L12; 24 -DFR*RX_P; 45 -DFR*RY_P
15 +HDR*L6; 1 +HDR*L21; 73 -DPR*L1; 9 -DPR*L2
41 +CYZ*L5; 29 +CYZ*L9; 29 +CYZ*L21; 8 +CYZ*L25
288 +CYZ*L26; 200 +CYZ*L27; 20 +CYZ*-OHD; 46 +CYZ*+OCF
156 +CYZ*DROP_OHP_YZ; 8 +CYZ*TX_R_; 38 -OYP*L12; 25 -OYQ*L9
4 -OYQ*L35; 46 -OYQ*+OCF; 53 -OYQ*DROP_OCR_Y; 1 -OYQ*TX_R_
3 -OYQ*TY_R_; 6 +OYR*L28; 3 +OYR*L32; 25 +HPQ*L2
37 +HPQ*L30; 4 +FPQ*L4; 4 +FPQ*L11; 25 +FPQ*L26
5 +FPQ*L32; 1 +FPQ*DROP_OHP_YZ; 34 -YZP*L5; 37 -YZP*L7
27 -YZP*L30; 99 -YZP*L31; 26 -YZP*-OHD; 56 -YZP*+OCF
34 -YZP*C_OCF_Y; 76 -YZP*DROP_OCR_Y; 7 +CPQ*L4; 1 +CPQ*L6
42 +CPQ*L9; 9 +CPQ*L10; 12 -DPQ*L4; 25 -DPQ*L12
45 -DPQ*L30; 43 -DPQ*L33; 24 -DPQ*DROP_OCR_Y; 2 -DQR*L1
1 -DQR*L33; 8 +FPR*L12; 1 +FQR*L31; 29 -DYZ*L6
27 -DYZ*L12; 1 +YPQ*L27; 25 +YPQ*L30; 19 +ZPQ*L8
5 -YZQ*L26; 4 -YZQ*DROP_OHP_YZ; 12 C_OHQ_YZ*L8; 2 C_OQR_Y*L27
30 C_HCD_Q*L17; 30 C_HCZ_Y*L3; 7 C_HCZ_Y*L4; 20 C_HCZ_Y*L20
83 C_HCZ_Y*RX_P; 35 C_CDR_Q*L1; 9 C_CDR_Q*L17; 22 C_CZP_Y*L12
24 C_CZP_Y*RX_P; 20 C_DFP_Q*L27; 9 C_DFP_Q*L30; 6 TPX_R_*L10
14 TPY_R_*TY_R_; 1 Q_OYFH_Z*L29; 9 Q_OYFH_Z*RY_P; 9 Q_ORFH_Z*L12
6 Q_ORFH_Z*L17; 19 Q_OCDR_YQ*L12; 5 Q_OPQZ_Y*L1; 18 Q_OPQZ_Y*L2
1 Q_HZCF_Y*L20; 8 Q_HPDR_Q*L2; 5 Q_CPDZ_Y*L17; 10 Q_CPDR_Q*L18
127 Q_CPDR_Q*L27; 1 Q_CPDR_Q*L31; 1 Q_CPDR_Q*RX_P; 11 Q_CPDR_Q*DROP_OCR_Y
82 Q_CPDR_Q*TY_R_; 76 Q_DRFP_Q*L0; 6 Q_DRFP_Q*L2; 7 Q_DRFP_Q*L4
1 Q_DRFP_Q*L20; 18 Q_DRFP_Q*L27; 1 Q_DRFP_Q*L28; 32 Q_DRFP_Q*L30
```

Upper bound: `-238540323/62500000`.

### Leaf RUTpmmpmpppmpm

Assumptions: `+CYZ -OYP -OYQ +OYR -OZR +HPQ +FPQ +CQR -HDQ +YZP -YZQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P YOZPQ +YPQ
P ZODPR +ZPR
P ZOYPQ +ZPQ
P QOHZR -QZR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
16 L0*L30; 31 L0*L3*L7; 21 L0*L3*L20; 14 L0*L3*L33
12 L0*L6*L35; 94 L0*L6*TY_R_; 19 L0*L12*L21; 8 L0*L14*RX_P
55 L0*L15*L17; 23 L0*L17*L20; 21 L0*L17*L27; 32 L0*L17*L33
10 L0*L17*TX_R_; 49 L0*L24*RX_P; 13 L0*L25*RX_P; 58 L1*L1*L6
23 L1*L2*L22; 78 L1*L2*L25; 29 L1*L2*TY_R_; 127 L1*L3*L27
63 L1*L5*L30; 1 L1*L6*L6; 17 L1*L6*L11; 134 L1*L6*L26
24 L1*L6*+OCF; 48 L1*L6*C_OCF_Y; 49 L1*L8*L27; 80 L1*L12*L22
6 L1*L12*L32; 62 L1*L15*L21; 46 L1*L16*L18; 35 L1*L17*L35
20 L1*L19*L21; 14 L1*L20*L35; 15 L1*L21*L21; 5 L1*L21*L27
53 L1*L21*L28; 46 L1*L25*L25; 35 L2*L3*TY_R_; 8 L2*L5*L25
43 L2*L6*TY_R_; 13 L2*L14*L21; 2 L2*L23*L30; 6 L2*L34*TY_R_
80 L2*TY_R_*TY_R_; 5 L3*L3*L10; 7 L3*L8*L19; 1 L3*L8*L32
42 L3*L8*TY_R_; 29 L3*L10*L17; 1 L3*L11*L12; 70 L3*L15*L18
83 L3*L17*L26; 83 L3*L17*L27; 11 L3*L18*TX_R_; 188 L3*L27*L27
35 L3*L28*RX_P; 6 L3*L32*TX_R_; 20 L3*L32*TY_R_; 3 L3*L34*RX_P
8 L4*L5*L12; 94 L4*L6*L17; 15 L4*L6*L23; 43 L4*L8*L21
70 L4*L12*L17; 66 L4*L17*L17; 51 L4*L17*L21; 40 L4*L17*L23
126 L4*L17*L27; 3 L4*L17*L30; 63 L4*L17*TX_R_; 40 L4*L18*L21
50 L4*L21*TY_R_; 9 L4*L23*L30; 44 L5*L5*L25; 1 L5*L6*L30
7 L5*L10*L12; 5 L5*L11*L21; 56 L5*L12*L21; 3 L5*L14*L21
51 L5*L18*L30; 32 L5*L18*RX_P; 55 L5*L20*L27; 128 L5*L25*L27
10 L6*L6*L11; 8 L6*L6*TY_R_; 16 L6*L10*TY_R_; 11 L6*L14*TY_R_
46 L6*L25*TY_R_; 26 L6*RY_P*TY_R_; 58 L7*L18*L27; 24 L7*L18*L28
5 L7*L27*L34; 7 L8*L12*L23; 28 L8*L15*L17; 6 L8*L17*L17
109 L8*L17*L22; 24 L8*L18*RX_P; 1 L8*L18*TX_R_; 8 L8*L20*L28
14 L8*L23*L28; 11 L9*L12*L17; 7 L9*L27*C_OCF_Y; 5 L9*L27*DROP_OHP_YZ
1 L9*L32*RX_P; 32 L10*L12*L17; 28 L11*L16*L28; 1 L11*L16*L30
7 L12*L15*L21; 5 L12*L18*L32; 5 L12*L18*TY_R_; 5 L12*L19*L35
16 L12*L20*TY_R_; 140 L12*L21*L22; 12 L12*L27*DROP_OHP_YZ; 6 L12*L28*L35
8 L12*L28*TY_R_; 6 L12*L31*RY_P; 11 L12*L35*DROP_OHP_YZ; 6 L12*RX_P*DROP_OCR_Y
3 L13*L18*L31; 1 L13*L18*TX_R_; 82 L14*L16*L21; 82 L14*L18*L21
5 L14*L18*TY_R_; 34 L14*L20*L27; 140 L14*L21*L21; 41 L14*L27*TX_R_
5 L14*L28*L29; 1 L14*L28*L31; 55 L15*L17*L22; 8 L15*L17*L24
129 L15*L18*RX_P; 149 L16*L17*L21; 18 L16*L18*L36; 58 L16*L28*L30
194 L17*L17*L18; 18 L17*L17*L32; 6 L17*L17*L35; 12 L17*L18*L25
32 L17*L18*L27; 194 L17*L18*RX_P; 60 L17*L18*TX_R_; 149 L17*L20*DROP_OHP_YZ
52 L17*L22*L36; 13 L17*L26*L30; 16 L17*L27*L32; 1 L17*L29*L34
18 L17*L34*RX_P; 46 L17*L34*RY_P; 52 L17*L34*TY_R_; 32 L18*L19*L24
62 L18*L20*L30; 26 L18*L20*L34; 18 L18*L24*L28; 14 L18*L24*L33
48 L18*L24*RX_P; 5 L18*L26*L36; 5 L18*L28*L36; 62 L18*L30*+OCF
146 L18*L30*RY_P; 52 L18*L30*DROP_OCR_Y; 13 L20*L20*L28; 50 L20*L28*L30
23 L21*L27*L36; 7 L21*L30*L34; 47 L21*L32*RX_P; 131 L27*L27*L29
21 L27*L28*RX_P; 41 L27*L34*TX_R_; 61 L27*C_OCF_Y*TY_R_; 36 L32*RX_P*DROP_OCR_Y
1 L32*RX_P*TX_R_; 26 KLOW*L3; 51 -OHF*L1; 4 -OHF*L35
93 +OYZ*L16; 165 +OYZ*L21; 45 +OYZ*RX_P; 8 -HYZ*TY_R_
15 -HCY*L3; 55 -HCY*L4; 15 -HCY*L13; 7 -HCY*L21
48 -HCY*L22; 7 -HCY*L24; 51 -HCY*L27; 17 -HCY*L29
54 -HCY*DROP_OHP_YZ; 107 -HCY*DROP_OCR_Y; 142 -OHZ*L22; 68 -OHZ*L24
68 -OHZ*L25; 63 -OHZ*RY_P; 5 -HFZ*L1; 23 +OCP*L11
287 +OCP*L17; 6 +OCP*C_OHD_Z; 93 +OCP*RX_P; 46 +OCP*RY_P
10 +OCP*TX_R_; 38 +OCP*TY_R_; 80 -CDP*L4; 124 -CDP*L32
35 -CDP*TX_R_; 14 -CYP*L8; 46 -CYP*L18; 6 -HFQ*L18
25 +CDQ*L0; 6 +CDQ*L30; 48 +CDQ*L35; 15 +DFQ*L4
15 -HFR*L5; 11 -HFR*L6; 167 -HFR*L17; 18 -HFR*L18
46 -HFR*L25; 22 -HFR*L27; 236 -HFR*+OCF; 194 -HFR*RX_P
8 -DFR*L6; 6 -DFR*L14; 32 -DFR*RX_P; 95 -DFR*RY_P
57 +HDR*L6; 19 +HDR*TY_R_; 7 +HZR*L8; 7 -DPR*L12
32 -DPR*L18; 3 +CYZ*L3; 14 +CYZ*L8; 193 +CYZ*L18
109 -OYQ*L4; 91 -OYQ*L27; 135 -OYQ*DROP_OCR_Y; 1 -OYQ*TX_R_
7 +OYR*L16; 17 +HPQ*L12; 61 -HDQ*L8; 28 -HDQ*L13
51 -HDQ*L17; 13 -HDQ*L20; 27 -HDQ*L27; 4 -HDQ*L28
60 -HDQ*L30; 48 -HDQ*L32; 1 -HDQ*RY_P; 21 -HDQ*TY_R_
95 +YZP*L4; 14 +YZP*L10; 193 +YZP*L19; 158 +YZP*L20
7 +YZP*L24; 186 +YZP*L26; 134 +YZP*L27; 14 +YZP*L35
63 +YZP*-OHD; 24 +YZP*+OCF; 24 +YZP*DROP_OHP_YZ; 1 +YZP*TX_R_
112 -YZQ*L1; 104 -YZQ*L4; 1 -YZQ*L7; 1 -YZQ*L24
44 -YZQ*L26; 174 -YZQ*-OHD; 165 -YZQ*+OCF; 205 -YZQ*RX_P
53 +CPQ*L12; 40 -DPQ*L4; 96 -DPQ*L8; 26 -DPQ*L13
107 -DPQ*L14; 34 -DQR*L30; 7 +YQR*L12; 5 C_OHQ_YZ*L8
15 C_OHQ_YZ*L20; 44 C_OHQ_YZ*L30; 20 C_OHQ_YZ*RX_P; 54 C_OZQ_Y*L2
1 C_OZQ_Y*L6; 35 C_OZQ_Y*L16; 140 C_OZQ_Y*L21; 1 C_OZQ_Y*L25
13 C_OZQ_Y*DROP_OCR_Y; 34 C_OQR_Y*L30; 2 C_HCZ_Y*L8; 126 TPX_R_*L0
40 TPX_R_*L2; 45 TPX_R_*L18; 1 TPX_R_*L30; 54 TPY_R_*L5
10 Q_OYFH_Z*L29; 16 Q_OYFH_Z*TY_R_; 35 Q_OPDR_YQ*L12; 1 Q_HZCF_Y*L1
37 Q_HZCF_Y*L17; 6 Q_HZPD_YQ*L17; 130 Q_CPDR_Q*L1; 70 Q_CPDR_Q*L3
120 Q_CPDR_Q*L5; 34 Q_CPDR_Q*L6; 38 Q_CPDR_Q*L27; 35 Q_CPDR_Q*L31
6 Q_CPDR_Q*L36; 60 Q_DRFP_Q*L17; 109 Q_DRFP_Q*L27
```

Upper bound: `-2575073/400000`.

### Leaf RUTpmmpmpppmpp

Assumptions: `+CYZ -OYP -OYQ +OYR -OZR +HPQ +FPQ +CQR -HDQ +YZP +YZQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P ZODPR +ZPR
P ZOYQR +ZQR
P POHYQ -PYQ
P POHZQ -PZQ
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
47 L0*L3*L3; 35 L0*L7*TX_R_; 72 L0*L17*L25; 2 L0*L17*L34
62 L0*L17*DROP_OHP_YZ; 8 L0*L17*RY_P; 129 L0*L17*TX_R_; 94 L0*L18*L31
12 L0*L18*TX_R_; 27 L0*L20*RX_P; 95 L0*L21*TX_R_; 11 L0*L22*TX_R_
29 L0*L23*RX_P; 37 L0*L32*TX_R_; 26 L1*L1*L17; 62 L1*L2*L25
170 L1*L2*TY_R_; 42 L1*L3*L27; 63 L1*L4*L6; 23 L1*L6*L12
5 L1*L6*L23; 30 L1*L6*L27; 23 L1*L6*L31; 194 L1*L6*C_OCF_Y
128 L1*L6*RX_P; 56 L1*L8*L22; 27 L1*L10*L12; 10 L1*L10*L25
3 L1*L12*L18; 48 L1*L12*L34; 29 L1*L17*L22; 25 L1*L17*L28
3 L1*L17*L32; 22 L1*L18*DROP_OHP_YZ; 17 L1*L25*L25; 27 L1*L25*L31
89 L1*L25*TY_R_; 87 L1*L27*L30; 23 L2*L3*L14; 24 L2*L3*L27
87 L2*L5*TY_R_; 33 L2*L6*TY_R_; 23 L2*L12*TY_R_; 255 L2*L17*L22
32 L2*L17*L25; 120 L2*L22*L30; 10 L2*L22*L34; 81 L3*L3*L11
15 L3*L5*L27; 2 L3*L6*L27; 26 L3*L7*L32; 41 L3*L8*L26
69 L3*L8*L34; 3 L3*L8*TY_R_; 49 L3*L11*L30; 4 L3*L14*L27
6 L3*L14*L32; 29 L3*L15*L18; 46 L3*L18*L28; 29 L3*L20*L27
46 L3*L20*L34; 21 L3*L24*L27; 91 L3*L27*L27; 3 L3*L30*RY_P
49 L3*L31*L32; 34 L3*L34*RX_P; 226 L4*L4*L17; 107 L4*L6*L17
26 L4*L6*L35; 186 L4*L6*TY_R_; 15 L4*L11*L17; 56 L4*L12*L17
14 L4*L17*L20; 93 L4*L17*L22; 393 L4*L17*L27; 16 L4*L17*L34
12 L4*L17*RX_P; 63 L4*L17*TX_R_; 255 L4*L17*TY_R_; 20 L4*L22*L30
133 L4*L27*TX_R_; 94 L4*L32*TX_R_; 88 L5*L5*L25; 33 L5*L6*L18
19 L5*L10*L12; 85 L5*L12*L27; 60 L5*L21*L27; 20 L5*L21*L32
66 L6*L6*TY_R_; 36 L6*L7*L18; 26 L6*L9*TY_R_; 95 L6*L14*L21
71 L6*L15*L17; 102 L6*L17*L18; 3 L6*L19*TX_R_; 61 L6*L21*TY_R_
158 L6*TY_R_*TY_R_; 30 L7*L12*L18; 74 L7*L17*L18; 6 L7*L20*L27
26 L7*L27*L27; 24 L8*L12*L27; 57 L8*L12*L34; 29 L8*L14*L17
22 L8*L25*L32; 31 L8*L30*L32; 8 L8*L34*TX_R_; 116 L9*L14*L14
2 L9*L18*L21; 3 L9*L18*L31; 3 L10*L11*L17; 70 L10*L12*TY_R_
57 L10*L17*L17; 25 L10*L17*L20; 57 L10*L17*RX_P; 23 L10*L17*TY_R_
31 L10*L30*L30; 8 L11*L12*L30; 3 L11*L17*L23; 17 L11*L18*L24
26 L11*L18*L27; 10 L11*L21*L31; 22 L11*L30*TX_R_; 117 L12*L14*L23
4 L12*L14*RX_P; 7 L12*L15*L21; 2 L12*L17*L20; 12 L12*L17*L22
57 L12*L17*L27; 75 L12*L18*L31; 29 L12*L21*RY_P; 12 L12*L22*L27
7 L12*L22*L30; 68 L12*L23*DROP_OCR_Y; 8 L12*L26*RY_P; 18 L12*L30*L32
47 L12*C_OCF_Y*RY_P; 2 L14*L17*L34; 34 L14*L17*DROP_OHP_YZ; 14 L14*L18*RX_P
21 L14*L20*L35; 80 L14*L21*L27; 1 L14*L21*L28; 10 L14*L23*L31
57 L14*L31*L31; 88 L14*L31*TY_R_; 34 L15*L17*RX_P; 14 L16*L18*L34
3 L16*L23*L35; 11 L16*L27*L32; 34 L17*L17*-OHD; 110 L17*L17*TX_R_
60 L17*L18*L24; 49 L17*L18*L27; 190 L17*L18*C_OCF_Y; 13 L17*L20*L27
2 L17*L20*L36; 1 L17*L22*TX_R_; 89 L17*L22*TY_R_; 6 L17*L23*L29
32 L17*L24*C_OCF_Y; 57 L17*L25*L34; 83 L17*L27*L27; 12 L17*L27*L31
83 L17*L27*DROP_OCR_Y; 3 L17*L32*L36; 2 L17*L36*L36; 110 L17*DROP_OHP_YZ*TX_R_
11 L18*L21*L24; 12 L18*L24*L29; 60 L18*L24*RX_P; 24 L18*L25*L32
8 L18*L27*L30; 26 L18*L27*-OHD; 49 L18*L27*RX_P; 3 L18*L30*L35
26 L18*L32*DROP_OCR_Y; 20 L19*L21*L30; 95 L20*L32*TX_R_; 40 L21*L27*TY_R_
1 L21*L32*L36; 3 L21*L35*L35; 40 L22*L27*TX_R_; 95 L22*L30*TX_R_
3 L22*L31*L32; 44 L25*L27*L28; 10 L25*L27*L35; 35 L27*L29*L29
15 L27*L29*L32; 12 L27*L35*RX_P; 10 L27*L35*TX_R_; 11 L28*RX_P*TY_R_
11 L32*L34*TX_R_; 8 L32*L36*TX_R_; 31 KLOW*L22; 16 KLOW*TX_R_
7 FAN*L30; 83 FAN*RX_P; 7 +HCF*L18; 14 +OYZ*L4
60 +OYZ*L6; 89 +OYZ*L9; 261 +OYZ*L20; 107 +OYZ*L22
138 +OYZ*L25; 3 +OYZ*L28; 51 +OYZ*L33; 1 +OYZ*L34
120 +OYZ*TY_R_; 119 -HYZ*L21; 5 -HYZ*TX_R_; 32 -HCY*L3
26 -HCY*L7; 84 -HCY*L13; 6 -HCY*L14; 69 -HCY*L17
50 -HCY*L20; 59 -HCY*L23; 126 -HCY*DROP_OHP_YZ; 97 -HCY*RY_P
97 -HCY*TY_R_; 33 -OHZ*L10; 3 -OHZ*L13; 89 -OHZ*L29
48 -OHZ*L34; 28 -OHZ*RX_P; 106 -OHZ*DROP_OCR_Y; 97 +OCP*L3
24 +OCP*L4; 59 +OCP*L11; 25 +OCP*L13; 21 +OCP*L20
12 +OCP*L27; 178 +OCP*RX_P; 73 -CDP*L0; 108 -CDP*L34
27 -CDP*TX_R_; 42 -HFQ*L12; 6 +CDQ*L6; 27 +CDQ*L13
20 +CDQ*L15; 69 +CDQ*L19; 15 +CDQ*L24; 72 +CDQ*L26
133 +CDQ*L27; 2 +DFQ*L12; 38 +HYQ*L30; 253 -HFR*L17
12 -HFR*L19; 11 -HFR*L22; 17 -HFR*L25; 18 -HFR*L27
35 -HFR*L29; 12 -HFR*L32; 36 -HFR*L35; 323 -HFR*+OCF
36 -HFR*C_OHD_Z; 253 -HFR*RX_P; 151 -HFR*TY_R_; 129 -DFR*L0
28 -DFR*L4; 66 -DFR*L6; 23 -DFR*L10; 55 -DFR*L21
29 -DFR*L22; 17 -DFR*L24; 17 +HDR*L6; 113 +CYZ*L12
57 +CYZ*L21; 135 -OYQ*L12; 102 +OYR*L15; 8 +OYR*L18
80 +OYR*L22; 10 +OYR*L34; 92 -OZR*L4; 71 -OZR*L7
88 -OZR*L11; 40 -OZR*L16; 95 -OZR*L20; 19 -OZR*L32
45 -OZR*L33; 30 -OZR*RX_P; 24 +HPQ*L2; 27 +HPQ*L17
26 +HPQ*L30; 33 +FPQ*L4; 33 +FPQ*L6; 13 +FPQ*L13
15 +FPQ*L24; 27 +FPQ*L33; 5 +FPQ*-OHD; 27 +FPQ*DROP_OHP_YZ
23 +CQR*L12; 56 +CQR*L35; 76 +YZP*L21; 3 +YZP*L32
20 +YZQ*L4; 95 +YZQ*L7; 55 +YZQ*L8; 3 +YZQ*L10
6 +YZQ*L13; 117 +YZQ*L14; 175 +YZQ*L24; 198 +YZQ*+OCF
101 +YZQ*RX_P; 80 +YZQ*DROP_OCR_Y; 6 -OZQ*L3; 92 -OZQ*L35
15 +CPQ*L0; 198 +CPQ*L2; 32 +CPQ*L26; 97 +CPQ*DROP_OCR_Y
20 -DPQ*L0; 26 -DPQ*L24; 40 -DPQ*TY_R_; 40 -DQR*TY_R_
22 -FYZ*L8; 80 -YZR*L20; 23 +ZQR*L17; 71 C_HCZ_Y*L8
76 C_CDR_Q*TY_R_; 89 TPX_R_*L0; 125 TPX_R_*L27; 79 TPX_R_*L32
1 Q_OCFH_YZ*L17; 11 Q_OYFH_Z*L4; 19 Q_OYFH_Z*L15; 12 Q_ORFH_Z*L18
5 Q_OQRZ_Y*L3; 45 Q_OQRZ_Y*L12; 24 Q_OQRZ_Y*L35; 10 Q_OQRZ_Y*RX_P
33 Q_HZCQ_Y*L30; 56 Q_HPDF_Q*L12; 72 Q_HZPQ_Y*L8; 13 Q_HZQR_Y*L12
141 Q_CPDR_Q*L1; 38 Q_CPDR_Q*L11; 92 Q_CPDR_Q*L14; 14 Q_CPDR_Q*L20
69 Q_CPDR_Q*L23; 21 Q_CPDR_Q*L24; 167 Q_CPDR_Q*L27; 12 Q_CPDR_Q*RX_P
71 Q_DRZP_YQ*L6
```

Upper bound: `-16015051/4000000`.

### Leaf RUTpmmpmpppp

Assumptions: `+CYZ -OYP -OYQ +OYR -OZR +HPQ +FPQ +CQR +HDQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DOHCQ -DOQ
P DOHZQ -DZQ
P DOFPQ -DPQ
P DOFQR -DQR
P DHCYQ -DYQ
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHDQ +YOD
P YOHFZ +YFZ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHDR -QHR
P QOHZR -QZR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
13 L0*L3*TY_R_; 45 L0*L4*TX_R_; 3 L0*L6*L27; 2 L0*L18*L25
2 L0*L21*L25; 1 L0*L21*L36; 21 L0*L21*TY_R_; 1 L0*L25*RX_P
5 L0*L26*RX_P; 1 L0*+OCF*RX_P; 3 L0*+OCF*TX_R_; 1 L0*DROP_OHP_YZ*RX_P
32 L0*TX_R_*TY_R_; 2 L1*L2*L6; 1 L1*L2*L26; 5 L1*L6*L24
14 L1*L6*TY_R_; 3 L1*L20*DROP_OHP_YZ; 1 L2*L3*L22; 1 L2*L3*L27
7 L2*L17*TY_R_; 1 L2*L20*L36; 12 L2*L27*L27; 1 L3*L4*L20
2 L3*L17*L17; 7 L3*L17*L22; 18 L3*L18*TY_R_; 1 L3*L20*L26
1 L3*L23*TX_R_; 4 L4*L4*L25; 4 L4*L4*RX_P; 9 L4*L6*L17
4 L4*L6*RY_P; 33 L4*L6*TY_R_; 16 L4*L16*L27; 9 L4*L17*C_OHD_YZ
9 L4*L17*TX_R_; 6 L4*L21*L24; 1 L4*L21*L26; 23 L4*L24*TY_R_
1 L4*L27*L33; 1 L5*L14*L27; 1 L5*L27*L36; 1 L6*L17*DROP_OCR_Y
14 L6*L23*TY_R_; 17 L6*L27*L27; 4 L7*L27*+OCF; 30 L7*L27*TY_R_
1 L8*L17*L28; 1 L12*L27*L28; 5 L14*L17*DROP_OCR_Y; 1 L14*L21*L28
1 L14*L27*-OHD; 1 L16*L17*RY_P; 13 L17*L17*L24; 1 L17*L18*DROP_OHP_YZ
3 L17*L21*-OHD; 1 L17*L21*TY_R_; 1 L17*L22*L24; 13 L17*L24*DROP_OHP_YZ
1 L17*L25*RY_P; 1 L17*L28*L31; 5 L17*L34*DROP_OCR_Y; 2 L18*L26*L29
1 L20*L25*L25; 10 L20*L27*C_OHD_YZ; 1 L21*L24*L24; 6 L22*C_OHD_YZ*TX_R_
1 L27*L36*C_OHD_YZ; 16 L27*+OCF*C_OHD_YZ; 1 KLOW*L29; 15 KLOW*RY_P
35 KLOW*TY_R_; 1 QUADP*L17; 7 +OCD*L17; 13 +CDF*L27
1 -OHZ*L21; 1 -CDP*L16; 4 -CDP*TY_R_; 6 -CFP*L0
2 -HFQ*L2; 2 +DFQ*L5; 3 +DFQ*L6; 3 +DFQ*L24
4 +DFQ*C_OCF_Y; 1 +DFQ*RX_P; 3 +DFQ*TX_R_; 21 +DFQ*TY_R_
1 -HFR*L17; 2 -HFR*L19; 6 -HFR*L20; 7 -HFR*L22
4 -HFR*+OCF; 32 -HFR*DROP_OCR_Y; 3 +ODR*L17; 1 -OZR*L0
9 -OZR*L4; 1 +CQR*L2; 7 +CQR*L17; 2 +HDQ*L29
4 +HDQ*DROP_OCR_Y; 21 +HDQ*TY_R_; 6 +ODQ*L27; 19 -DQR*L17
13 -DQR*DROP_OHP_YZ; 8 +FQR*L4; 1 +FQR*L17; 2 C_OHQ_YZ*L7
6 C_OHQ_YZ*L26; 4 C_OHQ_YZ*TX_R_; 27 C_ODR_YQ*L5; 1 C_ODR_YQ*L14
8 C_ODR_YQ*L26; 6 C_OQR_Y*L6; 1 C_HCZ_Y*L21; 4 C_HDF_Q*L20
1 C_HDF_Q*L23; 5 C_HDF_Q*L24; 7 C_HDF_Q*L26; 7 C_HDF_Q*TY_R_
12 TPX_R_*L27; 2 Q_ODFH_YZQ*L21; 8 SP_ODRH_ZQ_OR-1*L4; 6 Q_ODRF_YQ*L0
8 Q_ODRF_YQ*L27; 1 Q_OQRZ_Y*L1; 6 Q_HDRF_Q*L4; 12 Q_HDRF_Q*L26
1 Q_HDRF_Q*DROP_OHP_YZ; 11 Q_HDRF_Q*DROP_OCR_Y; 7 Q_CDRF_Q*L0; 18 Q_CPDR_Q*L5
12 Q_CPDR_Q*DROP_OCR_Y; 4 Q_DRFP_Q*L4; 8 Q_DRFP_Q*C_OHD_YZ
```

Upper bound: `-9917877103/18200000000`.

### Leaf RUTpmmpp

Assumptions: `+CYZ -OYP -OYQ +OYR +OZR`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHFQ -YFQ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P ZOHFQ -ZFQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P QOHFR -QHR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 907/1000
m 21/200 907/1000
r 129/500 1
t 98/125 1
```

```c1top-sum
38 L0*L3*L17; 12 L0*L3*L21; 3 L0*L3*L33; 42 L0*L3*TX_R_
3 L0*L5*L6; 12 L0*L8*L30; 7 L0*L9*L14; 39 L0*L14*TX_R_
9 L0*L17*L22; 14 L0*L17*L31; 20 L0*L17*+OCF; 18 L0*L21*TX_R_
12 L0*L25*TX_R_; 13 L0*L27*L31; 6 L0*L28*TX_R_; 15 L0*DROP_OHP_YZ*RX_P
2 L1*L3*L11; 3 L1*L6*L6; 6 L1*L6*L18; 11 L1*L6*L26
3 L1*L12*L32; 2 L1*L18*L28; 1 L1*L21*L36; 8 L1*L27*L29
1 L1*L31*L31; 5 L2*L11*L30; 2 L2*L14*L17; 1 L2*L14*TY_R_
51 L2*L17*L26; 13 L2*TY_R_*TY_R_; 22 L3*L4*L24; 3 L3*L5*L32
16 L3*L6*DROP_OCR_YZ; 19 L3*L7*L27; 2 L3*L10*L27; 2 L3*L10*RX_P
4 L3*L13*L21; 38 L3*L18*L24; 6 L3*L18*-OHD; 11 L3*L18*+OCF
26 L3*L18*RX_P; 3 L3*L20*L30; 4 L3*L20*L35; 64 L3*L21*TX_R_
34 L3*L22*L27; 26 L3*L23*L24; 2 L3*L23*TY_R_; 12 L3*L25*L27
29 L3*L27*L27; 54 L3*L27*DROP_OHP_YZ; 7 L3*L30*L34; 2 L3*L32*L35
7 L3*L34*TX_R_; 7 L4*L13*L17; 36 L4*L17*L17; 11 L4*L17*L24
55 L4*L17*DROP_OHP_YZ; 14 L4*L17*TY_R_; 12 L4*L20*L27; 3 L4*L24*L28
6 L4*L27*RX_P; 1 L5*L6*L10; 6 L5*L16*L28; 25 L5*L21*RX_P
1 L6*L7*L18; 2 L6*L11*L18; 18 L6*L16*TY_R_; 2 L6*L20*L30
3 L6*L20*L31; 3 L6*L20*L34; 3 L6*L21*L36; 2 L6*L23*L25
4 L6*L23*DROP_OHP_YZ; 9 L6*L26*RY_P; 1 L6*L29*RY_P; 6 L6*L34*RX_P
6 L7*L14*L17; 3 L7*L25*L27; 12 L7*L27*L28; 3 L7*L27*L34
13 L8*L14*L17; 7 L8*L17*L22; 1 L8*L18*L30; 11 L8*L18*RX_P
2 L8*L21*L28; 2 L8*L27*TX_R_; 9 L9*L9*L27; 3 L9*L14*L27
1 L9*L17*L32; 2 L9*L18*L22; 2 L9*L21*L27; 1 L9*L28*DROP_OCR_YZ
1 L10*L11*L21; 5 L10*L12*L21; 20 L10*L12*L27; 1 L10*L14*L31
2 L10*L20*L21; 2 L10*L21*L28; 4 L10*L21*TY_R_; 2 L10*L24*L27
5 L11*L19*L27; 4 L11*L23*L27; 3 L11*L25*L30; 3 L12*L14*L21
1 L12*L14*TY_R_; 5 L12*L17*L18; 14 L12*L17*L32; 23 L12*L17*DROP_OHP_YZ
6 L12*L17*RY_P; 9 L12*L27*L31; 20 L12*L27*L32; 1 L13*L14*L28
1 L13*L18*RX_P; 1 L13*L27*TX_R_; 4 L14*L21*L31; 2 L14*L24*L25
6 L14*L24*L31; 1 L15*L15*L30; 11 L15*L21*L27; 2 L15*L25*L27
1 L15*L27*L30; 1 L15*L30*L32; 23 L16*L17*L33; 23 L16*L17*RX_P
2 L16*L27*L30; 73 L16*L27*DROP_OHP_YZ; 73 L17*L17*L26; 23 L17*L17*DROP_OHP_YZ
22 L17*L18*L22; 60 L17*L18*L24; 43 L17*L18*TX_R_; 7 L17*L19*L31
64 L17*L20*L24; 22 L17*L22*L24; 11 L17*L22*RY_P; 10 L17*L23*TY_R_
9 L17*L27*DROP_OCR_YZ; 14 L17*L27*TX_R_; 10 L18*L20*L27; 28 L18*L20*TX_R_
11 L18*L22*RX_P; 6 L18*L24*L28; 60 L18*L24*RX_P; 3 L18*L25*L26
6 L18*L25*TY_R_; 2 L18*L28*-OHD; 43 L18*RX_P*TX_R_; 1 L20*L20*L27
27 L20*L27*L27; 11 L20*L27*L34; 101 L20*L27*RX_P; 3 L20*L30*L34
1 L21*L21*TY_R_; 1 L21*L22*L31; 14 L21*L22*RX_P; 26 L21*L24*L27
6 L21*L24*L28; 30 L21*L24*TY_R_; 64 L21*L25*RX_P; 4 L21*L27*TX_R_
23 L21*L28*+OCF; 26 L21*L28*DROP_OHP_YZ; 3 L21*L28*TY_R_; 1 L21*L29*L30
1 L21*L30*L32; 1 L21*L32*L34; 27 L21*TY_R_*TY_R_; 4 L22*L27*L35
9 L22*L28*DROP_OHP_YZ; 1 L22*L30*L35; 13 L24*L26*L27; 1 L24*L27*L36
2 L24*L28*TX_R_; 4 L25*L27*L28; 12 L25*L27*L29; 13 L25*L27*DROP_OCR_YZ
2 L25*L35*TY_R_; 1 L26*L27*L30; 2 L26*L30*RX_P; 2 L27*L29*L35
7 L27*L30*L32; 8 L27*L31*L32; 14 L27*DROP_OHP_YZ*TX_R_; 30 L28*RX_P*TX_R_
1 L30*-OHD*RX_P; 4 L32*RX_P*RX_P; 1 KLOW*L10; 15 KLOW*L20
58 KLOW*TX_R_; 7 FAN*L3; 12 +OCD*L17; 17 +OYZ*L2
1 +OYZ*L6; 30 +OYZ*L10; 3 +OYZ*L20; 1 +OYZ*L22
2 +OYZ*L24; 5 +OYZ*L33; 31 +OYZ*L35; 1 +OYZ*L36
8 +OYZ*-OHD; 3 -HCY*L22; 12 -HCY*L30; 20 -HCY*DROP_OHP_YZ
13 -HCY*DROP_OCR_YZ; 3 -HFZ*L1; 15 +OCP*RX_P; 41 -CDP*L24
6 -CDP*L32; 19 -CDP*DROP_OHP_YZ; 4 +HYP*L17; 1 -CYP*L30
34 +CDQ*L6; 2 +CDQ*L8; 25 +CDQ*L19; 1 +CDQ*L21
14 +CDQ*L22; 3 +CDQ*L28; 64 +CDQ*DROP_OHP_YZ; 17 +CDQ*DROP_OCR_YZ
34 +CDQ*TX_R_; 10 +CDQ*TY_R_; 17 +DFQ*L3; 12 +DFQ*RX_P
13 -CYQ*L8; 7 -CYQ*L24; 2 +HZQ*L27; 92 -HFR*L1
3 -HFR*L6; 36 -HFR*L14; 16 -HFR*L18; 25 -HFR*L20
10 -HFR*L25; 102 -HFR*-OHD; 22 -HFR*RX_P; 10 -HFR*RY_P
13 -HFR*TY_R_; 7 +CDR*L27; 3 +HDR*L6; 4 -CFR*L17
31 +OPQ*L2; 15 +OPQ*L6; 24 +OPQ*L24; 31 +CYZ*L8
1 +CYZ*L10; 6 +CYZ*L12; 4 +CYZ*L21; 7 +CYZ*L24
1 +CYZ*L29; 13 +CYZ*DROP_OHP_YZ; 1 +CYZ*TY_R_; 3 -OYP*L21
13 -OYQ*L9; 6 -OYQ*L12; 1 -OYQ*L14; 5 -OYQ*L25
1 -OYQ*L35; 2 -OYQ*-OHD; 4 -OYQ*DROP_OCR_YZ; 7 +OZR*L2
3 +OZR*L8; 7 +OZR*L10; 2 +OZR*L22; 2 +OZR*L25
1 +OZR*L28; 10 +OZR*-OHD; 16 -OFQ*L17; 25 +CPQ*L4
10 +CPQ*L8; 6 +CPQ*L10; 14 +CPQ*L20; 14 +CPQ*L23
91 +CPQ*L24; 34 +CPQ*L25; 9 +CPQ*DROP_OCR_YZ; 43 +CPQ*TX_R_
9 +CPR*L27; 6 -DPQ*L10; 32 -DPQ*L17; 14 -DPQ*L23
32 -DPQ*RX_P; 19 -DPQ*TY_R_; 2 -DQR*L25; 3 -DQR*TY_R_
14 +FQR*L3; 4 +FYQ*L17; 2 +FYQ*L18; 1 -YZR*TY_R_
2 +YQR*L21; 22 +HQR*L17; 1 C_OHQ_YZ*L32; 4 C_OHQ_YZ*RX_P
49 C_OHQ_YZ*TX_R_; 15 C_OFP_YZ*L27; 8 C_OYR_Z*L30; 4 C_OYR_Z*L36
28 C_OQR_YZ*L6; 2 C_OQR_YZ*L20; 2 C_OQR_YZ*L25; 2 C_OQR_YZ*L34
14 C_OQR_YZ*-OHD; 36 C_OQR_YZ*+OCF; 124 C_OQR_YZ*RX_P; 13 C_OQR_YZ*DROP_OCR_YZ
3 C_OQR_YZ*TY_R_; 1 TPX_R_*L10; 1 TPY_R_*L30; 2 Q_OYFH_Z*RX_P
1 Q_OCDR_YZQ*L35; 1 Q_OYRF_Z*L6; 13 Q_OQRF_YZ*L27; 15 Q_HZCP_Y*L17
1 Q_CDRY_Q*L35
```

Upper bound: `-6971659327/22750000000`.

### Leaf RUTpmpmmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR -HPQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPQ -HDQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPR +ZPR
P POHFQ +PFQ
P POHQR -PQR
P QOHFZ +QFZ
P QOHZR -QZR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
P YHDZP +YDZ
```

```c1top-bounds
T OHP YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
76 L0*L0*TX_R_; 139 L0*L2*L30; 163 L0*L7*L27; 86 L0*L10*RX_P
110 L0*L17*L32; 1 L0*L19*L20; 1 L0*L21*TY_R_; 62 L0*L27*L29
42 L0*L30*RY_P; 20 L0*L34*TX_R_; 1 L1*L1*L6; 1 L1*L1*L25
27 L1*L1*L31; 3 L1*L2*L25; 119 L1*L6*L7; 191 L1*L6*L17
155 L1*L6*L25; 274 L1*L6*L27; 180 L1*L6*L31; 14 L1*L6*L33
161 L1*L6*RX_P; 355 L1*L6*DROP_OCR_Y; 103 L1*L8*L27; 151 L1*L9*L25
372 L1*L12*L18; 1 L1*L12*L25; 68 L1*L12*L26; 98 L1*L12*+OCF
97 L1*L17*L28; 118 L1*L25*L25; 36 L1*L31*L31; 128 L1*L31*DROP_OHP_YZQ
443 L2*L2*RY_P; 32 L2*L3*TY_R_; 31 L2*L6*L11; 10 L2*L6*L36
107 L2*L17*TY_R_; 271 L2*L19*L30; 181 L2*L19*L32; 351 L2*L28*RX_P
61 L2*L30*RY_P; 3 L3*L3*L22; 55 L3*L5*L12; 2 L3*L5*L20
29 L3*L6*TY_R_; 10 L3*L7*L12; 104 L3*L9*L10; 86 L3*L10*L17
10 L3*L10*L24; 166 L3*L10*L28; 286 L3*L10*L31; 124 L3*L12*L32
104 L3*L15*L28; 193 L3*L15*RX_P; 100 L3*L17*L33; 207 L3*L18*L25
1 L3*L18*DROP_OCQ_Y; 339 L3*L18*TY_R_; 2 L3*L21*L27; 3 L3*L22*TY_R_
32 L3*L27*L31; 134 L3*L32*TY_R_; 80 L3*L36*TY_R_; 155 L3*TY_R_*TY_R_
63 L4*L6*L31; 1 L4*L12*L23; 648 L4*L12*RX_P; 29 L4*L17*C_OHD_Z
76 L5*L12*L18; 262 L5*L12*RX_P; 70 L5*L14*L17; 7 L5*L15*L31
1 L5*L17*L22; 28 L5*L18*L31; 157 L5*L25*TY_R_; 156 L6*L6*TY_R_
27 L6*L11*L12; 76 L6*L17*L18; 164 L6*L17*L26; 24 L6*L18*L31
200 L6*L18*TY_R_; 151 L7*L7*L27; 3 L7*L12*L18; 345 L8*L10*L17
118 L8*L27*L27; 66 L9*L9*L17; 16 L9*L13*L28; 32 L9*L27*L29
17 L10*L17*L28; 157 L10*L17*DROP_OHP_YZQ; 15 L10*L27*RX_P; 1 L11*L12*L21
7 L11*L12*TY_R_; 126 L11*L17*L19; 91 L11*L25*RX_P; 1 L12*L14*L25
1 L12*L14*TX_R_; 1 L12*L18*L23; 85 L12*L18*TY_R_; 1 L12*L22*L35
32 L12*L30*DROP_OHP_YZQ; 9 L12*L31*TY_R_; 33 L13*L17*L27; 1 L13*L19*L22
311 L14*L17*L26; 91 L14*L17*L28; 101 L16*L19*L27; 24 L16*TY_R_*TY_R_
66 L17*L18*DROP_OCR_Y; 308 L17*L18*TY_R_; 2 L17*L20*RY_P; 9 L17*L24*L27
73 L17*L25*L34; 287 L17*L26*L27; 310 L17*L26*TY_R_; 278 L17*L27*L28
46 L17*L28*L35; 238 L17*L29*DROP_OCR_Y; 66 L17*L30*L31; 34 L17*L30*L33
109 L17*L30*DROP_OCR_Y; 100 L17*L31*+OCF; 15 L17*L31*TY_R_; 157 L17*L32*DROP_OHP_YZQ
240 L17*L34*DROP_OCR_Y; 59 L17*+OCF*DROP_OCR_Y; 2 L17*DROP_OHP_YZQ*DROP_OCQ_Y; 273 L17*RY_P*TY_R_
345 L18*L31*L31; 126 L19*L19*L30; 1 L19*L21*L27; 3 L19*L25*L30
15 L19*L27*L30; 3 L20*L27*L27; 1 L20*L28*L34; 4 L20*L28*TY_R_
1 L20*L34*RX_P; 3 L22*L24*L27; 1 L22*RX_P*TY_R_; 96 L25*L27*L28
118 L25*L27*L29; 118 L25*L27*L35; 9 L25*DROP_OHP_YZQ*TY_R_; 155 L27*L27*L29
118 L27*L31*TX_R_; 28 KLOW*L19; 157 KLOW*L30; 21 KLOW*RY_P
86 KLOW*TX_R_; 31 TOPCOUNT*L27; 426 +OCD*L17; 23 +ODF*L17
114 +HDF*L25; 70 +HDF*L31; 172 +OYZ*L23; 172 +OYZ*DROP_OCQ_Y
36 -HYZ*L8; 27 -HCY*L1; 151 -HCY*L4; 138 -HCY*L5
12 -HCY*L14; 170 -HCY*L18; 60 -HCY*L29; 392 -HCY*C_OCF_Y
200 -HCY*RX_P; 197 -HCY*DROP_OCR_Y; 24 -HFY*L17; 1 -HFY*L20
15 -OHZ*L7; 421 -OHZ*L18; 3 -OHZ*L24; 344 -OHZ*L27
12 -OHZ*L34; 2 -OHZ*DROP_OCQ_Y; 459 -OHZ*DROP_OCR_Y; 400 +OCZ*L17
3 -HFZ*L17; 1 -HFZ*L20; 1 -HFZ*L22; 20 -HFZ*L26
21 -HFZ*L31; 1 -HFZ*L36; 6 +DFZ*L8; 76 -HFP*L17
2 -CDP*L20; 155 -CDP*L26; 23 -CDP*L29; 61 -CDP*L30
419 -CDP*L33; 169 -CDP*-OHD; 385 -CDP*C_OCF_Y; 290 -CDP*DROP_OHP_YZQ
1 -CDP*DROP_OCQ_Y; 155 -CDP*TY_R_; 134 -ODP*L17; 78 -HDP*L17
86 +DZP*L17; 1 +HYQ*L18; 1 +HYQ*L25; 1 -CYQ*L6
4 -CYQ*L14; 4 -CYQ*L17; 4 -CYQ*RX_P; 32 -CYQ*TY_R_
1 +HZQ*L1; 2 -CZQ*L12; 208 -HFR*L5; 61 -HFR*L9
280 -HFR*L24; 558 -HFR*L25; 75 -HFR*L28; 89 -HFR*L31
20 -HFR*L34; 74 -HFR*DROP_OHP_YZQ; 96 -HFR*DROP_OCR_Y; 119 -HFR*TX_R_
165 -DFR*L0; 156 -DFR*L6; 200 -DFR*L18; 42 -DFR*L24
83 -DFR*L27; 42 +HDR*L25; 3 +OQR*L5; 127 -DPR*L2
35 -DPR*L19; 1 -DPR*L23; 9 -DPR*RX_P; 141 -DPR*TY_R_
4 +CYZ*L20; 889 +CYZ*L23; 101 +CYZ*L24; 22 +CYZ*L28
29 +CYZ*L29; 390 +CYZ*L31; 518 +CYZ*L33; 203 +CYZ*C_OHD_Z
786 +CYZ*DROP_OHP_YZQ; 287 +CYZ*RX_P; 893 +CYZ*DROP_OCQ_Y; 52 +CYZ*DROP_OCR_Y
26 -OYP*L7; 557 -OYP*L12; 126 -OYP*L18; 83 -OYP*L31
2 +OYQ*L9; 1 +OYQ*L13; 1 +OYQ*L19; 6 +OYQ*TY_R_
2 -OZQ*L17; 2 -OZQ*L31; 1 -OZQ*L34; 9 -OZR*L31
118 +OYR*L27; 2 +HQR*L17; 209 +CPR*L17; 3 -DQR*TY_R_
1 -YZQ*L12; 1 -YZQ*L24; 2 -YZQ*L30; 1 -YZQ*TY_R_
1 +FZQ*L34; 2 +ZQR*L2; 184 -YZP*L4; 428 -YZP*L9
94 -YZP*L24; 213 -YZP*L28; 3 -YZP*L29; 516 -YZP*L33
122 -YZP*+OCF; 51 -YZP*DROP_OCR_Y; 21 C_OZP_Y*L25; 644 C_OZP_Y*L31
20 C_OZP_Y*TY_R_; 233 C_OPR_YQ*L2; 18 C_OPR_YQ*L8; 218 C_OPR_YQ*L16
35 C_OPR_YQ*L19; 2 C_OPR_YQ*L20; 1 C_OPR_YQ*L23; 164 C_OPR_YQ*L27
75 C_OPR_YQ*L30; 305 C_OPR_YQ*TY_R_; 66 C_HYP_Q*L27; 121 C_CZP_Y*L1
113 C_CZP_Y*L5; 516 C_CZP_Y*L12; 2 C_CZQ_Y*L24; 4 C_CZQ_Y*L35
118 TPX_R_*L3; 105 TPX_R_*L4; 117 TPX_R_*L28; 168 TPY_R_*L27
26 Q_OYQH_Z*TY_R_; 86 Q_OCPZ_Y*L17; 9 Q_OPDZ_Y*L12; 1 Q_OPQZ_Y*L27
12 Q_HZCP_YQ*L11; 13 Q_HZCP_YQ*L28; 113 SP_HZCP_YQ_HC1*L17; 1 SP_HZCP_YQ_HC1*L27
116 SP_HZCP_YQ_HC1*RX_P; 29 SP_HZCP_YQ_HC1*TY_R_; 307 SP_HZCP_YQ_ZP1*L3; 2 SP_HZCP_YQ_ZP1*L24
1 SP_HZCP_YQ_ZP1*TX_R_; 115 Q_HZCQ_Y*L3; 302 Q_CPQZ_Y*L3; 2 Q_CPQZ_Y*RX_P
96 Q_YPRZ_Q*L2; 1 M_OPHQYZ_-1_2*TX_R_; 1 M_OPHQYZ_-1_4*L12
```

Upper bound: `-834142377/500000000`.

### Leaf RUTpmpmmpmmmmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ -CFQ -YZP`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YHDZP +YDZ
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHZR -QZR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
144 L0*L1*L21; 4 L0*L1*L35; 10 L0*L3*L20; 27 L0*L12*L31
64 L0*L17*L33; 52 L0*L17*C_OHD_Z; 12 L0*L23*L30; 11 L0*L25*TX_R_
6 L0*L27*TX_R_; 5 L0*L29*RX_P; 4 L0*L30*TX_R_; 21 L0*L30*TY_R_
43 L1*L3*L3; 17 L1*L3*L32; 48 L1*L6*L10; 9 L1*L6*L21
32 L1*L6*L25; 38 L1*L6*L26; 46 L1*L6*L35; 23 L1*L8*L27
18 L1*L10*L17; 7 L1*L10*L31; 4 L1*L10*L32; 18 L1*L12*DROP_OCQ_Y
74 L1*L17*L23; 32 L1*L17*L36; 55 L1*L17*TX_R_; 1 L1*L18*L22
28 L1*L21*L27; 24 L1*L22*L25; 6 L1*L22*L30; 21 L1*L28*L30
4 L1*L35*L35; 1 L2*L3*L27; 5 L2*L3*TY_R_; 2 L2*L8*L35
88 L2*L27*TX_R_; 64 L2*L27*TY_R_; 183 L2*L28*RX_P; 2 L2*L30*L30
71 L3*L3*L10; 14 L3*L3*L15; 17 L3*L3*DROP_OCQ_Y; 38 L3*L4*L12
2 L3*L5*L31; 7 L3*L6*L10; 18 L3*L9*L10; 6 L3*L11*L25
23 L3*L12*L31; 5 L3*L12*L35; 205 L3*L17*L31; 205 L3*L17*RX_P
23 L3*L18*L21; 31 L3*L18*L29; 130 L3*L18*TX_R_; 7 L3*L20*L28
44 L3*L25*L26; 289 L3*L34*RX_P; 36 L3*L34*DROP_OCR_YQ; 33 L4*L14*L17
58 L4*L17*DROP_OHP_YZ; 29 L4*L17*TX_R_; 27 L4*L27*TX_R_; 52 L5*L8*RX_P
42 L5*L12*L17; 16 L5*L21*RX_P; 84 L5*L27*L29; 18 L6*L10*L23
58 L6*L18*L21; 13 L6*L18*L23; 54 L6*L18*L31; 1 L6*L18*TX_R_
154 L6*L18*TY_R_; 9 L6*L20*L28; 82 L7*L15*L17; 103 L7*L17*L27
98 L7*L27*L27; 45 L7*L27*L31; 2 L7*L27*L33; 1 L8*L12*L25
2 L8*L15*TX_R_; 115 L8*L17*L36; 205 L8*L17*RX_P; 2 L8*L18*TX_R_
9 L8*L19*L29; 2 L8*L21*L27; 51 L8*L25*L28; 14 L9*L11*L17
115 L9*L12*L16; 153 L10*L12*L17; 3 L10*L12*L31; 24 L10*L17*L29
1 L11*L14*L17; 12 L12*L12*TY_R_; 2 L12*L13*L29; 2 L12*L14*L19
2 L12*L15*L29; 9 L12*L15*L32; 3 L12*L15*L36; 94 L12*L18*L27
3 L12*L23*L35; 2 L12*L24*L30; 2 L12*L24*L35; 3 L12*L25*L32
14 L12*L27*L32; 3 L12*L30*L31; 23 L12*L31*DROP_OHP_YZ; 16 L12*L36*DROP_OCR_YQ
4 L12*RX_P*DROP_OCQ_Y; 3 L13*L14*RY_P; 51 L13*L17*L23; 3 L13*L30*L34
2 L13*L36*TX_R_; 3 L14*L14*L30; 12 L14*L14*L31; 51 L14*L17*L19
94 L14*L17*L27; 82 L14*L17*L29; 1 L14*L25*L35; 16 L14*L27*L30
1 L14*L32*RX_P; 46 L15*L17*L23; 51 L15*L17*L25; 15 L15*L17*L30
35 L15*L17*RY_P; 16 L15*L36*RX_P; 319 L17*L17*+OCF; 197 L17*L17*DROP_OCR_YQ
16 L17*L18*L28; 197 L17*L18*TX_R_; 15 L17*L19*L34; 2 L17*L20*L28
54 L17*L23*L31; 54 L17*L23*L32; 54 L17*L24*L27; 3 L17*L25*L28
50 L17*L26*TY_R_; 52 L17*L27*C_OHD_Z; 72 L17*L29*DROP_OCQ_Y; 205 L17*L31*DROP_OHP_YZ
16 L17*L34*L34; 54 L17*L35*DROP_OCQ_Y; 47 L17*L36*DROP_OCQ_Y; 76 L17*-OHD*C_OHD_Z
319 L17*+OCF*DROP_OHP_YZ; 21 L17*RY_P*DROP_OCR_YQ; 37 L18*L27*RX_P; 14 L18*L31*L31
16 L18*RX_P*TY_R_; 1 L19*L23*L34; 54 L19*L25*L25; 1 L19*L29*L34
2 L20*L23*L27; 1 L20*L27*L31; 3 L20*L35*DROP_OCQ_Y; 2 L20*L36*DROP_OCQ_Y
2 L21*L22*L34; 3 L21*L22*L35; 2 L21*L25*L27; 2 L21*L26*DROP_OCQ_Y
4 L21*L28*L30; 3 L21*L34*L35; 20 L22*L34*RX_P; 3 L22*L35*TX_R_
6 L23*L27*L29; 3 L23*L27*L30; 1 L24*L31*RY_P; 2 L25*L25*DROP_OCQ_Y
41 L25*L27*L29; 51 L25*L27*L31; 29 L25*L28*TX_R_; 51 L25*L31*TY_R_
78 L27*L27*C_OCF_Y; 51 L27*L28*L29; 50 L27*RY_P*TX_R_; 3 L30*L31*L36
1 L30*L34*TX_R_; 23 L31*L36*RX_P; 3 L31*RX_P*TY_R_; 1 L33*L36*RY_P
101 KLOW*L30; 215 KLOW*TX_R_; 16 CENT*L17; 2 +OYZ*L2
8 +OCY*L3; 17 -HCY*L1; 58 -HCY*L14; 19 -HCY*L21
5 -HCY*L25; 127 -HCY*L27; 4 -HCY*L31; 49 -HCY*L36
94 -HCY*+OCF; 3 -HCY*DROP_OCQ_Y; 169 -HCY*DROP_OCR_YQ; 4 -HCY*TX_R_
71 -OHZ*L1; 20 -OHZ*L31; 51 -OHZ*-OHD; 100 -OHZ*C_OCF_Y
152 -OHZ*RX_P; 28 -OHZ*DROP_OCR_YQ; 83 +OCP*L17; 99 -CDP*L2
47 -CDP*L8; 83 -CDP*L15; 56 -CDP*L16; 8 -CDP*L21
167 -CDP*L26; 94 -CDP*L29; 39 -CDP*L36; 15 -CDP*DROP_OCQ_Y
154 -CDP*DROP_OCR_YQ; 126 -CDP*TX_R_; 75 -CZP*L12; 3 +DYP*L16
45 +HCQ*L17; 15 -CYQ*L3; 2 +HZQ*L17; 52 -HFR
2 -HFR*L1; 2 -HFR*L10; 144 -HFR*L19; 42 -HFR*L20
41 -HFR*L25; 2 -HFR*L28; 45 -HFR*L31; 4 -HFR*L33
1 -HFR*L34; 164 -HFR*C_OCF_Y; 185 -HFR*DROP_OCQ_Y; 1 -DFR*L14
153 -DFR*L18; 12 -DFR*L20; 31 -DFR*L22; 31 -DFR*L23
37 -DFR*RX_P; 1 +ODR*L10; 138 +OQR*L1; 72 +OQR*L6
6 +OQR*L24; 122 -DPR*L2; 120 -DPR*L14; 13 -DPR*L21
77 -DPR*L27; 29 -DPR*TX_R_; 42 +CYZ*L4; 3 +CYZ*L6
331 +CYZ*L14; 4 +CYZ*L21; 186 +CYZ*L23; 2 +CYZ*L24
19 +CYZ*L31; 322 +CYZ*L36; 7 +CYZ*C_OHD_Z; 303 +CYZ*DROP_OHP_YZ
206 +CYZ*DROP_OCQ_Y; 42 +CYZ*TY_R_; 134 -OYP*L12; 1 -OYP*L21
3 -OYP*L24; 24 -OYP*L29; 3 -OYP*L31; 26 -OYP*DROP_OCR_YQ
20 +OYQ*L0; 18 +OYQ*L19; 3 +OYQ*L27; 1 +OYQ*L34
3 +OYQ*TX_R_; 3 -OZQ*L7; 145 +HPQ*L1; 23 +HPQ*L3
16 +HPQ*L9; 18 +HPQ*L10; 37 +HPQ*L24; 56 +HPQ*L29
3 +HPQ*L33; 196 +HPQ*DROP_OCR_YQ; 3 +HPQ*TX_R_; 144 -FPQ*L1
53 -FPQ*L24; 20 -FPQ*L31; 170 -FPQ*DROP_OHP_YZ; 182 -FPQ*DROP_OCR_YQ
1 -FPQ*TX_R_; 27 -CQR*L0; 19 -CQR*L6; 43 -CFQ*L0
13 -CFQ*L19; 17 -CFQ*L35; 1 -CFQ*TX_R_; 152 -YZP*L13
1 -YZP*L21; 20 -YZP*L31; 170 -YZP*L33; 103 -YZP*+OCF
18 -YZP*DROP_OCQ_Y; 26 -YZP*DROP_OCR_YQ; 2 +ODZ*L36; 10 -OFQ*L27
15 +CPQ*L5; 2 +CPQ*L31; 5 -DPQ*L30; 15 -DQR*L19
184 +FQR*L17; 2 +FQR*L32; 3 -YZQ*L6; 2 -YZR*L1
3 -YZR*L3; 3 -YZR*L21; 3 +YPR*L17; 170 -PQR*L17
1 +ZQR*L2; 1 +ZQR*L11; 3 +ZQR*L25; 2 C_OCQ_Y*L19
52 C_OZP_Y*L2; 18 C_OZP_Y*L12; 167 C_OZP_Y*L31; 15 C_OPR_YQ*L0
66 C_OPR_YQ*L2; 24 C_OPR_YQ*L17; 15 C_OPR_YQ*L23; 25 C_OPR_YQ*L25
35 C_OPR_YQ*L27; 130 C_OPR_YQ*L28; 51 C_OPR_YQ*L29; 9 C_OPR_YQ*TY_R_
156 C_HCZ_Y*RX_P; 31 C_HFP_Q*L25; 87 C_CFP_Q*L27; 27 C_CFP_Q*RX_P
18 C_CFR_Q*L0; 20 C_CFR_Q*L27; 153 C_CZP_Y*L3; 269 C_CZP_Y*L9
230 C_CZP_Y*L12; 7 C_CZR_YQ*L2; 51 C_CZR_YQ*L16; 2 C_CZR_YQ*L18
3 C_CZR_YQ*L24; 122 C_CZR_YQ*RY_P; 2 TPX_R_*L21; 2 TPX_R_*L32
160 TPX_R_*RX_P; 78 TPY_R_*L27; 23 TPY_R_*RX_P; 3 SP_OCRH_ZQ_OR-1*L12
1 SP_OCRH_ZQ_OR1*L28; 49 SP_OCRH_ZQ_CH-1*L17; 6 SP_OCRH_ZQ_CH-1*DROP_OCR_YQ; 1 SP_OPRH_ZQ_PH-1*L1
1 Q_OQRH_Z*L4; 74 Q_OCDR_YQ*L17; 4 Q_OPDR_YQ*L20; 1 Q_OPQZ_Y*L31
3 Q_HZPD_Q*L12; 1 Q_HZPR_Q*L20; 135 Q_CPDF_Q*L27; 1 Q_CPFZ_YQ*L28
3 SP_CPFZ_YQ_PZ-1*L31; 2 Q_CRFZ_YQ*L12
```

Upper bound: `-300492383/200000000`.

### Leaf RUTpmpmmpmmmmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ -CFQ +YZP`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPR +ZPR
P ZOYPQ +ZPQ
P POFQR -PQR
P QOHZR -QZR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
8 L2*L27; 4 L25*TY_R_; 82 L0*L8*TX_R_; 66 L0*L17*L31
17 L0*L18*L31; 15 L0*L20*L30; 21 L0*TX_R_*TX_R_; 14 L1*L2*L2
34 L1*L2*L6; 6 L1*L2*L25; 6 L1*L3*L14; 22 L1*L6*L6
55 L1*L6*L17; 42 L1*L6*L25; 55 L1*L6*L31; 15 L1*L6*DROP_OCQ_Y
48 L1*L9*RX_P; 22 L1*L10*L12; 45 L1*L12*L17; 35 L1*L12*L19
107 L1*L12*L22; 27 L1*L12*L26; 18 L1*L12*RX_P; 22 L1*L14*L31
16 L1*L14*RX_P; 1 L1*L14*DROP_OCR_YQ; 55 L1*L16*L25; 11 L1*L17*L35
99 L1*L17*DROP_OHP_YZ; 11 L1*L17*DROP_OCQ_Y; 40 L1*L18*L30; 46 L1*L20*L35
21 L1*L25*L25; 3 L1*L25*L27; 72 L1*L25*L31; 21 L1*L25*DROP_OHP_YZ
2 L1*L27*DROP_OHP_YZ; 4 L1*L27*RX_P; 3 L2*L2*L5; 41 L2*L13*L17
17 L2*L14*RX_P; 146 L2*L17*L32; 11 L2*L17*TX_R_; 4 L2*L18*L32
31 L2*L20*L27; 162 L3*L6*L22; 86 L3*L10*L20; 45 L3*L12*L18
41 L3*L12*DROP_OHP_YZ; 10 L3*L16*TY_R_; 10 L3*L18*L20; 3 L3*L18*L23
19 L3*L18*RX_P; 7 L3*L18*DROP_OCQ_Y; 22 L3*L18*TX_R_; 16 L3*L22*L27
25 L3*L22*RX_P; 29 L3*L23*L35; 11 L3*L25*L31; 11 L3*L25*RX_P
4 L3*L25*DROP_OCR_YQ; 14 L3*L27*L29; 3 L3*L28*L29; 64 L3*L32*RX_P
2 L4*L5*L17; 12 L4*L17*L21; 10 L4*L17*C_OCF_Y; 13 L4*L27*TX_R_
1 L5*L6*L22; 2 L5*L12*L16; 3 L5*L12*L21; 16 L5*L17*L25
9 L5*L25*L29; 3 L5*L25*L33; 2 L5*L25*TY_R_; 9 L6*L6*L23
11 L6*L8*L17; 106 L6*L17*L23; 11 L6*L17*C_OCF_Y; 84 L6*L18*L21
18 L6*L18*L23; 1 L6*L18*RY_P; 2 L6*L22*L27; 1 L7*L8*L27
58 L7*L11*L17; 1 L7*L14*L27; 46 L7*L15*L17; 3 L7*L27*L28
3 L8*L8*L27; 11 L8*L17*L25; 25 L8*L18*L23; 89 L8*L20*L27
17 L8*L25*L27; 4 L8*L27*L27; 31 L8*L27*L29; 4 L8*L27*RY_P
4 L8*L27*TY_R_; 63 L9*L22*L25; 20 L10*L12*L21; 15 L10*L17*L18
1 L10*L17*DROP_OCR_YQ; 23 L10*L17*TX_R_; 3 L10*L21*L31; 4 L10*L27*RX_P
4 L11*L12*L21; 15 L11*L17*L17; 25 L11*L17*DROP_OCQ_Y; 22 L12*L17*L28
20 L12*L19*L24; 43 L12*L21*DROP_OHP_YZ; 43 L12*L23*RX_P; 24 L12*L25*DROP_OCQ_Y
70 L12*L25*DROP_OCR_YQ; 1 L12*L26*L27; 24 L14*L21*L25; 6 L14*L21*L31
1 L14*L22*L25; 6 L14*L22*L31; 26 L15*L17*+OCF; 1 L15*L27*C_OHD_Z
1 L15*L27*TX_R_; 14 L17*L17*DROP_OCQ_Y; 14 L17*L18*L20; 15 L17*L18*L35
43 L17*L20*L36; 60 L17*L20*C_OHD_Z; 15 L17*L23*L27; 1 L17*L23*RY_P
3 L17*L27*L27; 35 L17*L27*L35; 40 L17*L27*+OCF; 16 L17*L29*RY_P
20 L17*L30*TY_R_; 37 L17*L35*DROP_OCR_YQ; 10 L17*C_OHD_Z*RX_P; 2 L18*L20*TY_R_
1 L18*L22*RX_P; 2 L18*L25*L28; 13 L20*L24*L27; 10 L20*L30*L32
3 L21*L25*TY_R_; 10 L21*L27*TX_R_; 27 L21*L32*TX_R_; 14 L22*RX_P*TY_R_
70 L24*L27*L30; 20 L25*L31*TY_R_; 9 L27*L27*L29; 3 L27*L27*DROP_OHP_YZ
22 L27*L29*DROP_OHP_YZ; 32 L27*L31*TX_R_; 3 L31*L31*RY_P; 7 L31*L31*DROP_OCQ_Y
3 L31*L31*TY_R_; 11 L35*RX_P*TX_R_; 1 KLOW*L30; 13 +OCD*L17
19 +OYZ*L6; 47 +OYZ*L22; 7 +OYZ*L25; 10 +OYZ*L34
47 -HCY*L3; 17 -HCY*L7; 22 -HCY*L19; 291 -HCY*DROP_OHP_YZ
4 -HCY*DROP_OCR_YQ; 11 -HCY*TX_R_; 116 -HFY*L17; 62 +CFY*L17
37 -OHZ*L1; 78 -OHZ*L7; 19 -OHZ*L21; 37 -OHZ*L28
63 -OHZ*L29; 58 -OHZ*DROP_OHP_YZ; 79 -OHZ*RX_P; 37 -OHZ*RY_P
91 -OHZ*DROP_OCQ_Y; 27 -OHZ*DROP_OCR_YQ; 14 -HFZ*L17; 6 -HFZ*L18
141 -HFP*L12; 14 -CDP*DROP_OCQ_Y; 3 -CDP*TX_R_; 28 +HZP*L17
13 -CZP*L17; 26 -HFQ*L2; 8 -HFQ*L18; 4 +HYQ*L27
18 -CYQ*L18; 2 -HFR*L18; 3 -HFR*L27; 138 -HFR*C_OCF_Y
50 -HFR*RX_P; 36 +FZR*L17; 31 +OQR*L2; 89 +OQR*L8
14 +OQR*L17; 3 +OQR*L19; 12 -DPR*L21; 2 -DPR*L27
20 -DPR*L31; 9 -DPR*+OCF; 13 -DPR*TX_R_; 2 -DPR*TY_R_
4 +OYQ*L0; 155 +OYQ*L13; 113 +OYQ*L16; 93 +OYQ*L18
7 +OYQ*L31; 81 +OYQ*L36; 6 +OYQ*+OCF; 103 +OYQ*RX_P
16 -OZQ*L1; 34 -OZQ*L7; 19 -OZQ*L15; 50 -OZQ*L18
62 -OZQ*L25; 1 -OZQ*L27; 146 -OZQ*L31; 91 -OZQ*L35
106 -OZQ*DROP_OHP_YZ; 140 -OZQ*RX_P; 38 -OZR*L7; 52 -OZR*L25
20 -OZR*L29; 36 -OZR*L31; 1 -OZR*DROP_OCQ_Y; 45 +HPQ*L12
16 +HPQ*L14; 60 +HPQ*L16; 26 +HPQ*L31; 46 +HPQ*L35
6 +HPQ*DROP_OCR_YQ; 27 +HPQ*TX_R_; 128 -FPQ*L6; 29 -FPQ*L10
50 -FPQ*L13; 6 -FPQ*L15; 1 -FPQ*L18; 108 -FPQ*L24
67 -FPQ*L25; 159 -FPQ*L30; 15 -FPQ*-OHD; 110 -FPQ*+OCF
75 -FPQ*RX_P; 1 -FPQ*RY_P; 1 -HDQ*L27; 32 -CFQ*L3
119 -CFQ*L6; 29 -CFQ*L10; 86 -CFQ*L19; 90 -CFQ*L23
31 -CFQ*L24; 2 -CFQ*L27; 132 -CFQ*L30; 6 -CFQ*L36
35 -CFQ*DROP_OHP_YZ; 90 -CFQ*DROP_OCQ_Y; 32 +YZP*L1; 46 +YZP*L7
231 +YZP*L20; 100 +YZP*L23; 34 +YZP*L24; 51 +YZP*C_OCF_Y
15 +YZP*RX_P; 150 +YZP*DROP_OCQ_Y; 9 -OFQ*L17; 3 +HQR*L18
2 -DPQ*L27; 3 -DQR*L13; 9 -DQR*L25; 1 -DQR*L27
10 -YZQ*L15; 15 -YZQ*L16; 27 -YZQ*TX_R_; 4 +YPQ*L0
4 +YPQ*L27; 10 +ZQR*L6; 9 +ZQR*L25; 1 +ZQR*L27
3 C_OCR_YQ*L27; 50 C_OPQ_Y*L12; 27 C_OPR_YQ*L12; 2 C_OPR_YQ*L31
1 C_HFP_Q*L6; 61 C_CFP_Q*L22; 7 C_CFR_Q*L27; 6 C_CZR_YQ*L3
70 C_CZR_YQ*L6; 36 C_CZR_YQ*L8; 48 C_CZR_YQ*L24; 11 C_CZR_YQ*RX_P
70 C_FZP_YQ*L20; 3 C_ZPR_YQ*L20; 9 C_ZPR_YQ*L29; 13 C_ZPR_YQ*TX_R_
5 TPX_R_*L25; 10 TPX_R_*L27; 2 Q_OPQH_YZ*L27; 28 Q_OPQZ_Y*L14
17 Q_CPFY_Q*RX_P
```

Upper bound: `-697367649/200000000`.

### Leaf RUTpmpmmpmmmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR -HDQ +CFQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FOCQR +FQR
P FODPR +FPR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHFZ +QFZ
P QOHZR -QZR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
4 L0*L1*L10; 59 L0*L3*L3; 2 L0*L3*L14; 410 L0*L4*TX_R_
49 L0*L7*TX_R_; 12 L0*L11*L17; 24 L0*L13*L17; 38 L0*L17*L21
45 L0*L17*L25; 70 L0*L17*RY_P; 51 L0*L18*L35; 2 L0*L22*TX_R_
196 L0*L27*TX_R_; 32 L0*RX_P*TX_R_; 12 L1*L1*L4; 32 L1*L1*L12
150 L1*L3*L6; 12 L1*L4*L4; 3 L1*L4*L33; 13 L1*L6*L22
1 L1*L8*L21; 1 L1*L10*L12; 6 L1*L10*L16; 4 L1*L10*L32
51 L1*L11*L18; 448 L1*L12*+OCF; 30 L1*L12*DROP_OHP_YZ; 12 L1*L12*RY_P
6 L1*L12*DROP_OCQ_Y; 505 L1*L12*DROP_OCR_YQ; 127 L1*L16*L18; 208 L1*L17*L17
24 L1*L18*L29; 72 L1*L18*TX_R_; 94 L1*L20*TY_R_; 2 L1*L22*RX_P
1 L1*L25*L25; 4 L1*L25*L30; 4 L1*L32*L32; 39 L2*L14*TY_R_
2 L2*L17*L31; 56 L2*L17*DROP_OCQ_Y; 149 L2*L25*L28; 17 L2*RX_P*TY_R_
72 L3*L3*L21; 2 L3*L3*RX_P; 4 L3*L5*L32; 117 L3*L6*L17
501 L3*L6*TY_R_; 6 L3*L8*RY_P; 76 L3*L9*L18; 66 L3*L10*L17
186 L3*L10*L18; 177 L3*L11*L18; 7 L3*L12*RY_P; 89 L3*L14*L27
113 L3*L16*L18; 72 L3*L17*L20; 6 L3*L17*TY_R_; 200 L3*L18*L21
50 L3*L18*L28; 72 L3*L18*L34; 241 L3*L18*TY_R_; 72 L3*L20*RX_P
1 L3*L20*TY_R_; 250 L3*L28*TX_R_; 6 L3*L30*RX_P; 1 L3*L35*DROP_OCR_YQ
151 L4*L4*TX_R_; 88 L4*L6*L17; 19 L4*L6*TX_R_; 12 L4*L9*L17
4 L4*L11*L17; 9 L4*L12*L28; 33 L4*L14*L17; 490 L4*L17*L24
120 L4*L17*L25; 354 L4*L17*L27; 138 L4*L17*DROP_OCQ_Y; 145 L4*L17*TY_R_
51 L4*L18*L30; 444 L4*L27*TX_R_; 1 L4*L31*TX_R_; 46 L5*L5*L25
69 L5*L13*L18; 59 L5*L14*L25; 145 L5*L18*L25; 118 L5*L22*L25
33 L5*L25*L27; 1 L5*L25*L30; 74 L5*RX_P*TY_R_; 1 L6*L8*TY_R_
55 L6*L11*L17; 1 L6*L17*L36; 117 L6*L17*+OCF; 59 L6*L18*RX_P
33 L6*L28*TY_R_; 4 L6*L30*TY_R_; 1 L7*L12*+OCF; 123 L7*L27*L27
30 L7*L27*L29; 1 L7*L28*L29; 6 L8*L8*RX_P; 1 L8*L11*L18
3 L8*L13*L35; 4 L8*L17*L17; 54 L8*L17*L27; 51 L8*L18*L28
2 L8*L23*L30; 1 L8*L30*L30; 31 L9*L10*L12; 1 L9*L12*L12
1 L9*L18*L36; 2 L10*L12*L21; 11 L10*L13*L17; 56 L10*L17*L24
6 L10*L17*L32; 69 L10*L17*DROP_OHP_YZ; 1 L10*L17*DROP_OCR_YQ; 1 L10*L18*L30
2 L10*L21*L31; 1 L11*L18*L25; 10 L11*L21*RX_P; 7 L12*L16*L17
9 L12*L18*L19; 2 L12*L24*RY_P; 1 L12*L29*RX_P; 9 L12*RY_P*RY_P
3 L13*L17*RX_P; 12 L13*L18*L26; 87 L14*L18*L25; 28 L14*L31*L31
13 L15*L17*L24; 2 L15*L22*L25; 59 L16*L25*TY_R_; 2 L16*L28*L30
167 L16*L28*RX_P; 38 L17*L17*L28; 73 L17*L17*L34; 288 L17*L17*DROP_OCR_YQ
158 L17*L18*L20; 819 L17*L18*L24; 59 L17*L19*TX_R_; 65 L17*L20*L27
44 L17*L20*-OHD; 14 L17*L23*L24; 198 L17*L23*L26; 2 L17*L23*L34
508 L17*L26*L26; 109 L17*L26*L34; 217 L17*L27*C_OHD_Z; 59 L17*L27*TX_R_
32 L17*L28*TX_R_; 11 L17*L30*L32; 4 L17*L30*RX_P; 6 L17*L35*L35
2 L17*L36*-OHD; 126 L17*+OCF*RY_P; 96 L17*DROP_OCQ_Y*TX_R_; 10 L18*L20*L35
156 L18*L20*RX_P; 109 L18*L20*TY_R_; 473 L18*L24*RX_P; 293 L18*L25*L27
32 L18*L25*DROP_OCQ_Y; 22 L18*L26*TX_R_; 34 L18*L28*+OCF; 69 L18*L30*RX_P
57 L18*C_OHD_Z*RX_P; 118 L18*TX_R_*TY_R_; 50 L20*L27*L28; 77 L20*L27*TY_R_
2 L21*L25*L27; 2 L21*L27*L34; 2 L22*L25*L25; 5 L22*L27*L29
107 L22*L27*RX_P; 214 L23*RX_P*TY_R_; 288 L25*L27*L28; 77 L25*L27*DROP_OCQ_Y
9 L25*L28*TY_R_; 123 L25*TY_R_*TY_R_; 123 L27*L27*TX_R_; 143 L27*L28*RX_P
74 L27*RY_P*TX_R_; 4 L28*L28*L28; 4 L28*L29*L30; 62 L28*L30*RX_P
168 L28*RX_P*TY_R_; 2 L31*L31*L31; 11 L36*RX_P*TY_R_; 2 RX_P*RX_P*DROP_OCQ_Y
21 +OYZ*L2; 10 +OYZ*L21; 28 +OYZ*L31; 13 +OYZ*RY_P
3 -HCY*L3; 2 -HCY*L21; 56 -HCY*RX_P; 32 -OHZ*L1
1 -OHZ*L10; 12 -OHZ*L19; 378 -OHZ*L23; 389 -OHZ*L33
382 -OHZ*DROP_OCQ_Y; 530 -OHZ*DROP_OCR_YQ; 548 -OHZ*TX_R_; 89 +OCP*L3
165 +OCP*L25; 168 -CDP*L0; 242 -CDP*L5; 59 -CDP*L6
74 -CDP*L8; 28 -CDP*L21; 655 -CDP*L24; 17 -CDP*L31
4 -CDP*L35; 77 -CDP*L36; 252 -CDP*DROP_OCR_YQ; 9 -CYP*L2
1 -CYP*L12; 1 -CYP*L24; 1 -CYP*L26; 50 -CYP*+OCF
69 -CYP*DROP_OHP_YZ; 70 +HZP*L17; 432 -HFR*L3; 131 -HFR*L4
4 -HFR*L8; 732 -HFR*L12; 212 -HFR*L14; 96 -HFR*L19
50 -HFR*L25; 187 -HFR*L36; 15 -HFR*DROP_OCQ_Y; 83 -HFR*DROP_OCR_YQ
50 -HFR*TX_R_; 312 -DFR*L0; 226 -DFR*L3; 19 -DFR*L6
114 -DFR*L14; 213 -DFR*L22; 1 -DFR*L24; 77 -DFR*L27
187 -DFR*+OCF; 60 -DFR*DROP_OHP_YZ; 118 -DFR*RY_P; 55 +FYR*L17
13 +OQR*L1; 2 +OQR*L14; 1 +OQR*L24; 43 +OQR*L26
28 +OQR*RX_P; 128 +OQR*TY_R_; 24 -DPR*L1; 2 -DPR*L12
98 -DPR*L14; 1 -DPR*L21; 652 -DPR*L27; 1 -DPR*L31
252 -DPR*+OCF; 288 -DPR*RX_P; 32 -DPR*DROP_OCQ_Y; 145 -DPR*TY_R_
13 +CYZ*L18; 10 +CYZ*L20; 13 +OYQ*L1; 16 +OYQ*L16
13 +OYQ*L28; 2 +OYQ*L30; 7 -OZQ*L8; 17 -OZQ*L25
2 -OZQ*RX_P; 549 -OZR*L29; 2 +HPQ*L14; 62 +HPQ*L26
3 +HPQ*L31; 94 +HPQ*TY_R_; 21 +CFQ*L14; 31 +CFQ*L17
104 +CFQ*L26; 213 +CFQ*TY_R_; 1 +OYR*L3; 1 +OYR*L18
1 +CPQ*L25; 2 +CPQ*L28; 1 -DQR*L25; 28 -DQR*RX_P
65 +FQR*L17; 93 +FQR*L27; 13 -YZQ*L4; 2 +ZPQ*L17
32 C_HCR_Q*L17; 173 C_CFZ_YQ*L1; 6 C_CFZ_YQ*L19; 21 C_CFZ_YQ*L23
549 C_CFZ_YQ*L24; 148 C_CFZ_YQ*-OHD; 25 C_CFZ_YQ*DROP_OCR_YQ; 114 C_CFZ_YQ*TY_R_
1 C_CZQ_Y*L3; 24 C_CZR_YQ*L0; 17 C_CZR_YQ*L2; 142 C_CZR_YQ*L4
13 C_CZR_YQ*L17; 12 C_CZR_YQ*RY_P; 152 TPX_R_*L3; 159 TPY_R_*L27
13 SP_OCRH_ZQ_CH-1*L17; 6 Q_OYQH_Z*L17; 82 Q_HCPD_Q*L17; 1 Q_HZCQ_Y*L3
2 Q_CPQZ_Y*L1; 13 Q_CPQZ_Y*L5; 17 Q_CPQZ_Y*L24; 7 Q_CPQZ_Y*L31
6 Q_CPQZ_Y*+OCF; 1 Q_DFZP_Q*L17
```

Upper bound: `-241517001/62500000`.

### Leaf RUTpmpmmpmmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ -CQR +HDQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DOHCQ -DOQ
P DOHZQ -DZQ
P DOFPQ -DPQ
P DOFQR -DQR
P DHCYQ -DYQ
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR -PQR
P QOHCR -QHR
P QOHFZ +QFZ
P QOHZR -QZR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
29 L0*L1*TX_R_; 8 L0*L4*TX_R_; 5 L0*L5*RX_P; 1 L0*L7*L7
9 L0*L7*L22; 3 L0*L14*L21; 26 L0*L17*L29; 4 L0*L20*L25
60 L0*L21*TX_R_; 12 L0*L21*TY_R_; 8 L0*L25*RX_P; 36 L0*L29*DROP_OCQ_Y
10 L0*L29*DROP_OCR_YQ; 82 L0*DROP_OCQ_Y*TX_R_; 27 L1*L2*L20; 12 L1*L5*L17
6 L1*L6*RY_P; 15 L1*L12*L26; 8 L1*L12*RY_P; 8 L1*L17*L19
9 L1*L17*TX_R_; 4 L1*L20*RY_P; 24 L2*L2*L27; 1 L2*L14*L23
20 L2*L17*L22; 2 L2*L17*L25; 6 L2*L17*TY_R_; 8 L2*L18*L25
8 L2*L18*L34; 6 L2*L23*L27; 3 L2*L24*L27; 10 L2*L29*TY_R_
39 L2*RY_P*TX_R_; 25 L3*L6*L18; 3 L3*L14*TX_R_; 9 L3*L17*L36
11 L3*L18*L18; 40 L3*L18*L20; 37 L3*L18*L28; 36 L3*L18*DROP_OCQ_Y
6 L3*L26*L26; 3 L3*L26*L36; 4 L4*L4*L21; 45 L4*L4*RX_P
4 L4*L6*RY_P; 28 L4*L12*RX_P; 30 L4*L17*L20; 46 L4*L17*L24
25 L4*L17*C_OCF_Y; 3 L4*L17*DROP_OHP_YZ; 8 L4*L19*TX_R_; 18 L4*L20*TX_R_
1 L4*L24*RY_P; 79 L4*L27*TX_R_; 6 L5*L15*L17; 6 L5*L18*L25
11 L5*L18*DROP_OCR_YQ; 9 L5*L25*L25; 17 L6*L17*L34; 15 L6*L17*RY_P
47 L6*L18*L21; 3 L7*L14*DROP_OCQ_Y; 7 L7*L17*L18; 3 L7*L18*L19
13 L7*L18*L27; 31 L7*L21*L27; 22 L7*L22*RX_P; 2 L7*L27*DROP_OCR_YQ
69 L10*L27*TX_R_; 3 L12*L18*L23; 6 L12*L24*L27; 3 L12*L27*L28
27 L12*RY_P*DROP_OCR_YQ; 8 L13*L17*L23; 14 L14*L29*DROP_OHP_YZ; 31 L15*L17*L27
2 L15*L17*RX_P; 59 L15*L17*DROP_OCR_YQ; 6 L15*L25*TX_R_; 15 L16*L17*L26
15 L16*L17*C_OHD_Z; 22 L17*L17*DROP_OCQ_Y; 42 L17*L18*L20; 17 L17*L18*L24
37 L17*L18*DROP_OCQ_Y; 3 L17*L20*L34; 72 L17*L20*-OHD; 1 L17*L21*L27
14 L17*L23*L27; 2 L17*L24*+OCF; 48 L17*L25*DROP_OCQ_Y; 25 L17*L27*+OCF
32 L17*L27*DROP_OHP_YZ; 2 L17*L29*DROP_OCQ_Y; 3 L17*L36*DROP_OCQ_Y; 37 L17*RY_P*DROP_OCQ_Y
4 L18*L20*L25; 20 L18*L20*RX_P; 5 L18*L22*L25; 10 L18*L25*L28
8 L18*L28*RX_P; 8 L18*RY_P*TX_R_; 10 L20*L27*RY_P; 43 L20*RY_P*TX_R_
4 L21*L25*L28; 2 L21*L34*RX_P; 1 L23*TX_R_*TX_R_; 1 L25*L25*DROP_OCQ_Y
1 L25*L28*RX_P; 4 L25*L28*TY_R_; 13 L27*L29*C_OHD_Z; 30 L27*L29*RY_P
69 L27*L32*TX_R_; 14 L28*RX_P*RX_P; 2 L34*RX_P*RX_P; 17 KLOW*L21
35 KLOW*L23; 2 KLOW*L25; 42 KLOW*DROP_OHP_YZ; 7 KLOW*RY_P
1 +CDF*L17; 26 -OHZ*L1; 10 -OHZ*L19; 15 -OHZ*RX_P
26 -OHZ*RY_P; 18 -OHZ*TY_R_; 28 +OCP*L3; 45 -CDP*L5
10 -CDP*L15; 84 -CDP*L20; 40 -CDP*L24; 28 -CDP*L33
12 -CDP*L34; 48 -CDP*DROP_OCQ_Y; 34 -CDP*TX_R_; 4 +DFQ*L4
38 +DFQ*DROP_OCR_YQ; 29 -HFR*L1; 6 -HFR*L19; 6 -HFR*L23
73 -HFR*L27; 6 -HFR*L33; 6 -HFR*+OCF; 118 -HFR*DROP_OCQ_Y
14 -DFR*L0; 12 -DFR*L16; 41 +OQR*L1; 7 +OQR*L4
38 +OQR*L6; 2 +OQR*L14; 11 +OQR*L19; 69 +OQR*L27
2 +OQR*L36; 19 +OQR*DROP_OHP_YZ; 28 -DPR*L14; 30 -DPR*L17
8 -DPR*L18; 18 -DPR*L20; 15 -DPR*L23; 3 -DPR*L28
17 -DPR*+OCF; 2 -DPR*C_OHD_Z; 47 -DPR*RX_P; 3 -OZQ*L7
9 -OZR*L25; 4 -FPQ*L5; 3 -FPQ*L14; 11 -FPQ*L18
2 -FPQ*L21; 68 -FPQ*L23; 32 -FPQ*L24; 22 -FPQ*RX_P
68 -FPQ*DROP_OCQ_Y; 2 -CQR*L20; 6 -CQR*L26; 4 -CQR*L34
3 +HDQ*L14; 4 +HDQ*L19; 42 +HDQ*+OCF; 77 +HDQ*DROP_OHP_YZ
42 +HDQ*DROP_OCR_YQ; 60 +HDQ*TX_R_; 11 +CPQ*L18; 2 +CPQ*L21
1 -DQR*L6; 3 -DQR*L14; 1 +FQR*L6; 11 +FQR*L19
2 +FQR*L20; 15 +FQR*-OHD; 75 +FQR*DROP_OCR_YQ; 8 +HQR*L4
5 +ZQR*L7; 3 +ZQR*L18; 5 C_OPR_YQ*L0; 15 C_HCZ_Y*RX_P
3 C_HCZ_Y*DROP_OCQ_Y; 6 C_HCZ_Y*TX_R_; 4 C_HDR_Q*L18; 7 C_CZR_YQ*L2
11 C_CZR_YQ*L6; 2 C_CZR_YQ*L21; 3 C_CZR_YQ*L24; 7 C_CZR_YQ*+OCF
30 C_CZR_YQ*RY_P; 72 TPX_R_*L27; 31 TPY_R_*L16; 5 TPY_R_*RX_P
45 Q_OCRF_YQ*L17; 3 Q_OPDR_YQ*L27; 7 Q_HDRF_Q*L3; 1 Q_HDRF_Q*L7
5 Q_CDQZ_Y*L17; 4 Q_CRFZ_YQ*L17; 2 Q_CPQZ_Y*TX_R_
```

Upper bound: `-259472419/200000000`.

### Leaf RUTpmpmmpmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ -FPQ +CQR`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DCFPQ -DPQ
P DCFQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPR +ZPR
P POHZQ -PZQ
P POFQR -PQR
P QOHFR -QHR
P QOHZR -QZR
P QOCYR -QYR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
13 L0*L0*TX_R_; 26 L0*L2*TX_R_; 13 L0*L4*L21; 4 L0*L7*L22
2 L0*L10*L17; 1 L0*L18*L21; 5 L0*L18*L27; 30 L0*L18*TX_R_
39 L0*L21*L26; 27 L0*L22*TX_R_; 7 L0*L27*TX_R_; 8 L0*RY_P*TX_R_
4 L1*L1*L6; 20 L1*L2*L26; 2 L1*L2*RY_P; 13 L1*L4*L17
5 L1*L5*L27; 5 L1*L5*TY_R_; 2 L1*L6*RY_P; 10 L1*L8*TY_R_
34 L1*L17*L26; 4 L1*L17*TX_R_; 5 L1*L19*TY_R_; 5 L1*L22*L24
10 L1*L31*TY_R_; 2 L2*L5*L23; 19 L2*L6*TY_R_; 2 L2*L23*L25
35 L2*L25*L28; 2 L2*L25*TY_R_; 19 L2*L27*TY_R_; 4 L3*L3*DROP_OCQ_Y
30 L3*L18*L27; 1 L3*L18*DROP_OCQ_Y; 48 L3*L18*TX_R_; 6 L3*L22*TX_R_
2 L3*L27*TX_R_; 20 L4*L4*TX_R_; 9 L4*L17*RX_P; 2 L4*L17*DROP_OCQ_Y
21 L4*L22*TX_R_; 87 L4*L27*TX_R_; 26 L5*L7*L27; 1 L6*L18*L23
1 L6*TY_R_*TY_R_; 7 L7*L21*L28; 2 L8*L17*L26; 2 L8*L17*+OCF
2 L10*L17*TY_R_; 43 L16*L17*TY_R_; 79 L17*L17*DROP_OCR_Y; 10 L17*L18*L24
60 L17*L18*DROP_OHP_YZ; 19 L17*L18*TX_R_; 4 L17*L25*DROP_OCQ_Y; 13 L17*L26*L27
36 L17*L26*TY_R_; 17 L17*L27*-OHD; 2 L17*L28*L32; 9 L17*L28*TX_R_
1 L17*L32*C_OCF_Y; 2 L17*L35*C_OCF_Y; 2 L17*L35*DROP_OCR_Y; 11 L17*C_OCF_Y*RY_P
60 L17*DROP_OHP_YZ*RY_P; 26 L17*RX_P*TY_R_; 19 L17*RY_P*TX_R_; 1 L18*L21*L28
13 L19*L29*TY_R_; 5 L21*L25*L28; 4 L21*RX_P*TY_R_; 21 L22*L28*TX_R_
22 L27*L27*RX_P; 9 L27*L29*TY_R_; 9 KLOW*L25; 20 KLOW*L26
25 KLOW*DROP_OHP_YZ; 2 KLOW*RY_P; 57 KLOW*TX_R_; 10 KLOW*TY_R_
20 +HCD*L17; 13 +HDF*L17; 3 +OCY*L17; 11 +OCP*L17
13 -CDP*L18; 4 -CDP*L21; 48 -CDP*TX_R_; 30 +CDQ*L27
8 -HFR*L4; 2 -HFR*L24; 2 -HFR*L25; 7 -HFR*L27
13 -HFR*-OHD; 50 -HFR*+OCF; 64 -HFR*DROP_OCQ_Y; 19 -DFR*L22
33 -DFR*RX_P; 49 -DFR*RY_P; 44 -DFR*DROP_OCQ_Y; 30 -DFR*TY_R_
13 +HPQ*L4; 7 +HPQ*L7; 5 +HPQ*L25; 60 +HPQ*L26
11 -FPQ*L1; 22 -FPQ*L5; 111 -FPQ*L26; 42 -FPQ*TY_R_
71 +CQR*L27; 4 +CQR*RX_P; 54 +CQR*RY_P; 27 +CQR*DROP_OCR_Y
56 +CQR*TY_R_; 6 +CPQ*L6; 13 -DPQ*L25; 45 -DPQ*L27
11 -DPQ*DROP_OCR_Y; 7 -DPQ*TX_R_; 13 +FQR*L27; 21 -PQR*L0
62 -PQR*L4; 2 C_OHP_YZ*L1; 9 C_OPQ_Y*L28; 6 C_OPQ_Y*L29
4 C_OPQ_Y*TY_R_; 4 C_HFP_Q*L1; 6 C_HFP_Q*L2; 2 C_HFP_Q*L4
1 C_HFP_Q*L23; 13 C_HFP_Q*L26; 21 C_CFP_Q*L27; 42 C_CPR_Q*L22
53 TPX_R_*L27; 5 Q_ORFH_Z*L18; 22 Q_OCRF_Y*L17; 11 Q_OCPQ_Y*L3
10 Q_OPRF_YQ*L17; 27 Q_HPDF_Q*L2; 11 Q_HPDR_Q*L2; 11 Q_CPDR_Q*L2
13 Q_CPDR_Q*L19; 63 Q_CPDR_Q*L27; 1 Q_CPDR_Q*DROP_OCQ_Y; 12 Q_CPRF_Q*L22
```

Upper bound: `-253371993/500000000`.

### Leaf RUTpmpmmppmmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR -HDQ -YZP`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YHDZP +YDZ
P ZODPR +ZPR
P POHZQ -PZQ
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
2 L28*L28; 39 L0*L2*L5; 87 L0*L3*L12; 92 L0*L5*RX_P
4 L0*L17*DROP_OCQ_Y; 31 L0*L20*L27; 64 L0*L27*L29; 24 L0*L28*L31
26 L1*L1*L6; 4 L1*L3*DROP_OCQ_Y; 12 L1*L3*TY_R_; 73 L1*L6*L10
61 L1*L6*L12; 5 L1*L6*L14; 97 L1*L6*L17; 181 L1*L6*L18
1 L1*L6*L22; 9 L1*L6*L29; 73 L1*L6*L35; 20 L1*L8*L27
50 L1*L9*L25; 158 L1*L10*L12; 2 L1*L10*L17; 56 L1*L12*L25
81 L1*L17*TX_R_; 4 L1*L18*L21; 86 L1*L24*L27; 75 L1*L25*L25
41 L1*L25*L31; 28 L1*L28*L30; 6 L1*L35*RX_P; 12 L2*L14*L17
50 L2*L17*L32; 43 L2*L17*TY_R_; 55 L2*L19*L30; 50 L2*L27*RX_P
68 L2*RX_P*TY_R_; 111 L3*L3*L10; 19 L3*L6*L11; 10 L3*L6*L18
5 L3*L7*L34; 136 L3*L10*L12; 1 L3*L10*L22; 36 L3*L10*L27
181 L3*L10*RX_P; 288 L3*L14*L31; 15 L3*L14*L35; 25 L3*L14*TY_R_
82 L3*L17*L33; 48 L3*L17*L35; 162 L3*L18*L18; 168 L3*L18*L28
80 L3*L18*L34; 57 L3*L18*TY_R_; 1 L3*L22*L36; 6 L3*L27*L30
54 L3*L36*RX_P; 83 L4*L5*L17; 30 L4*L6*L17; 2 L4*L12*RY_P
48 L4*L17*-OHD; 80 L4*L17*RX_P; 96 L4*L17*DROP_OCR_YQ; 8 L4*L21*L27
32 L5*L8*L25; 6 L5*L12*L35; 1 L5*L20*TY_R_; 1 L5*L22*L25
14 L5*L24*L35; 14 L5*L25*L32; 16 L5*L27*RX_P; 21 L5*L28*RX_P
42 L6*L8*L19; 48 L6*L8*L27; 67 L6*L10*L17; 2 L6*L11*L23
2 L6*L17*L23; 6 L6*L18*L35; 4 L6*L19*L32; 71 L6*L25*RY_P
89 L6*L25*TY_R_; 10 L6*RX_P*RY_P; 10 L6*RX_P*TY_R_; 12 L7*L25*L27
29 L7*L27*L27; 41 L7*L27*C_OHD_Z; 26 L8*L23*L27; 2 L8*L25*L27
16 L8*L27*L27; 16 L8*L27*TY_R_; 29 L9*L18*TY_R_; 1 L10*L17*L24
134 L10*L28*RX_P; 23 L11*L17*RY_P; 6 L12*L17*L24; 6 L12*L17*L29
19 L12*L17*DROP_OCQ_Y; 20 L12*L18*TX_R_; 51 L12*L18*TY_R_; 2 L12*L20*L28
2 L12*L24*L27; 5 L12*L26*L28; 6 L12*L26*L31; 19 L12*L28*DROP_OHP_YZ
6 L12*L35*RY_P; 6 L12*DROP_OHP_YZ*TX_R_; 52 L13*L17*-OHD; 43 L13*L27*L29
30 L14*L14*L17; 49 L14*L14*L31; 18 L14*L17*L21; 27 L14*L17*L27
33 L14*L17*RY_P; 5 L14*L27*TX_R_; 6 L14*L35*RX_P; 17 L15*L17*L32
34 L15*L28*RX_P; 137 L16*L17*L19; 28 L16*L17*L32; 1 L16*RX_P*TY_R_
72 L17*L17*-OHD; 120 L17*L18*L18; 2 L17*L18*L21; 44 L17*L18*L25
18 L17*L18*L27; 137 L17*L18*DROP_OHP_YZ; 120 L17*L18*RY_P; 128 L17*L19*L35
1 L17*L20*C_OHD_Z; 2 L17*L22*RX_P; 2 L17*L25*RY_P; 83 L17*L27*L30
9 L17*L27*-OHD; 5 L17*L27*DROP_OCR_YQ; 47 L17*L28*L31; 34 L17*L30*C_OCF_Y
82 L17*L31*+OCF; 100 L17*L32*DROP_OHP_YZ; 19 L17*+OCF*DROP_OCR_YQ; 44 L18*L25*RX_P
20 L18*L25*TY_R_; 82 L19*L19*L30; 2 L19*L25*L27; 56 L19*L27*L31
17 L19*L30*L34; 69 L19*L30*RY_P; 18 L19*RX_P*TY_R_; 2 L20*L28*L30
1 L20*L28*RX_P; 26 L21*L27*L32; 14 L23*L27*L29; 9 L25*L25*TY_R_
22 L25*L27*L27; 39 L25*L27*L28; 38 L25*L27*-OHD; 86 L25*L28*TY_R_
2 L25*L30*TY_R_; 18 L27*L27*DROP_OHP_YZ; 82 L27*L30*DROP_OHP_YZ; 85 L27*L32*RX_P
9 L27*TX_R_*TX_R_; 19 L28*L29*L30; 56 L28*RX_P*RX_P; 76 L34*RX_P*TY_R_
19 L36*RX_P*TY_R_; 22 TX_R_*TY_R_*TY_R_; 22 KLOW*L30; 26 -OHF*L1
27 +OCD*L17; 42 +HDF*L12; 16 +OYZ*L2; 41 +OYZ*L6
30 +OYZ*L28; 53 -HCY*L1; 152 -HCY*L14; 42 -HCY*L15
177 -HCY*L18; 1 -HCY*L20; 37 -HCY*L29; 116 -HCY*+OCF
118 -HCY*RX_P; 53 -HCY*RY_P; 20 -HCY*DROP_OCR_YQ; 5 -HCY*TX_R_
258 -OHZ*L10; 240 -OHZ*L23; 37 -OHZ*+OCF; 240 -OHZ*DROP_OCQ_Y
174 +OCZ*L17; 20 -HFZ*L17; 56 -HFZ*L24; 21 -CDP*L5
19 -CDP*L9; 150 -CDP*L10; 162 -CDP*L18; 1 -CDP*L24
124 -CDP*L34; 12 -CDP*C_OCF_Y; 201 -CDP*DROP_OHP_YZ; 1 +CDQ*L27
2 -CZQ*L17; 37 -HFR*L2; 96 -HFR*L9; 5 -HFR*L14
1 -HFR*L21; 171 -HFR*L23; 83 -HFR*L25; 9 -HFR*L29
81 -HFR*DROP_OHP_YZ; 175 -HFR*DROP_OCQ_Y; 77 -HFR*DROP_OCR_YQ; 22 -DFR*L4
19 -DFR*L10; 1 -DFR*L20; 19 -DFR*L35; 18 +HDR*L6
8 +HDR*L25; 13 -DZR*L1; 2 -DZR*TY_R_; 69 -DPR*L1
83 -DPR*L5; 13 -DPR*L14; 36 -DPR*L19; 1 -DPR*L25
43 +CYZ*L4; 282 +CYZ*L14; 1 +CYZ*L20; 438 +CYZ*L23
55 +CYZ*L29; 203 +CYZ*L36; 83 +CYZ*+OCF; 97 +CYZ*C_OHD_Z
395 +CYZ*RX_P; 26 +CYZ*RY_P; 439 +CYZ*DROP_OCQ_Y; 69 +CYZ*DROP_OCR_YQ
5 +CYZ*TX_R_; 124 -OYP*L1; 53 -OYP*L14; 118 -OYP*L18
1 -OYP*L23; 2 +OYQ*L19; 26 +OYQ*L27; 15 -OZQ*L17
3 +FPQ*L0; 2 +FPQ*L10; 2 +FPQ*L16; 4 -CQR*L0
1 -HDQ*L8; 10 -HDQ*L27; 1 -HDQ*TX_R_; 132 -YZP*L1
125 -YZP*L3; 7 -YZP*L4; 30 -YZP*L14; 1 -YZP*L20
1 -YZP*L25; 20 -YZP*L29; 203 -YZP*L33; 149 -YZP*-OHD
193 -YZP*DROP_OHP_YZ; 33 -YZP*RY_P; 1 -YZP*DROP_OCQ_Y; 85 -YZP*DROP_OCR_YQ
12 +CPR*L3; 81 +CPR*L12; 1 -DPQ*L31; 1 -DPQ*RX_P
1 -DQR*L2; 2 -DQR*RX_P; 1 -DQR*TY_R_; 15 -CFQ*L27
1 -YZQ*L17; 16 -DYZ*L27; 1 +ZQR*RX_P; 1 -PQR*L17
152 C_OZP_Y*L2; 173 C_OZP_Y*L31; 69 C_OPR_YQ*L1; 71 C_OPR_YQ*L6
36 C_OPR_YQ*L19; 1 C_OPR_YQ*L25; 56 C_OPR_YQ*L30; 57 C_OPR_YQ*L31
4 C_OPR_YQ*L36; 24 C_HCZ_Y*L5; 18 C_HCZ_Y*L28; 11 C_HCZ_Y*L32
91 C_HCZ_Y*RX_P; 24 C_CZP_Y*L5; 25 C_CZP_Y*L9; 203 C_CZP_Y*L12
193 C_CZP_Y*L17; 19 C_CZR_YQ*L0; 56 C_CZR_YQ*L6; 6 C_CZR_YQ*L31
17 C_CZR_YQ*RY_P; 24 C_FPR_Q*L27; 22 TPY_R_*L27; 30 Q_ODFH_Z*L17
47 Q_OYFH_Z*L17; 1 SP_OPRH_ZQ_OR-1*L27; 8 Q_OCPF_Y*L17; 3 Q_OPRZ_YQ*TY_R_
65 Q_HYPD_Q*L17; 182 Q_DRFP_Q*L0; 67 Q_DRFP_Q*L8; 24 Q_DRFP_Q*L19
```

Upper bound: `-4105884007/1000000000`.

### Leaf RUTpmpmmppmmpm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR -HDQ +YZP -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPR +ZPR
P ZOYPQ +ZPQ
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
480 L0*L1*L12; 209 L0*L1*L17; 9 L0*L5*L12; 1198 L0*L10*L17
209 L0*L17*L28; 829 L0*L17*L35; 91 L0*L17*+OCF; 302 L0*L17*RX_P
295 L1*L1*L6; 588 L1*L4*L6; 172 L1*L6*L6; 8 L1*L6*L9
285 L1*L6*L14; 627 L1*L6*L25; 136 L1*L6*L26; 7 L1*L6*RY_P
64 L1*L12*L27; 284 L1*L14*L17; 397 L1*L17*L27; 455 L1*L25*L25
66 L1*L28*L31; 353 L2*L3*L28; 328 L2*L11*L17; 128 L2*L12*TY_R_
351 L2*L17*RY_P; 1 L2*L20*TY_R_; 213 L3*L4*L5; 44 L3*L5*L8
2 L3*L5*L20; 1 L3*L5*L22; 80 L3*L5*L32; 2 L3*L5*TX_R_
17 L3*L6*L10; 15 L3*L7*L18; 1273 L3*L8*L28; 661 L3*L9*L18
132 L3*L10*L12; 11 L3*L10*L27; 125 L3*L10*L35; 341 L3*L11*L30
664 L3*L12*L17; 563 L3*L14*L32; 664 L3*L17*L36; 386 L3*L18*L20
386 L3*L18*L21; 1 L3*L18*L24; 430 L3*L18*-OHD; 1 L3*L18*DROP_OCQ_Y
2 L3*L22*L27; 1 L3*L23*L25; 3 L3*L25*L27; 18 L3*L27*L27
11 L3*L27*L36; 164 L3*L27*C_OHD_Z; 3 L3*L27*TX_R_; 27 L3*L28*L36
7 L3*L29*TY_R_; 880 L3*L30*L32; 111 L4*L11*L17; 32 L4*L17*L24
398 L4*L17*L30; 23 L4*L17*L36; 443 L4*L17*TY_R_; 167 L5*L5*L8
348 L5*L5*RX_P; 118 L5*L8*L8; 107 L5*L8*L30; 44 L5*L11*L30
47 L5*L12*L27; 1 L5*L18*L20; 260 L5*L18*L25; 875 L5*L18*L30
595 L5*L18*RX_P; 2 L5*L20*L30; 38 L5*L25*L32; 437 L5*L25*TY_R_
396 L5*L27*L30; 79 L5*L28*L30; 3 L5*L29*L35; 92 L5*L30*L30
349 L5*L30*TY_R_; 400 L6*L6*TY_R_; 7 L6*L8*TY_R_; 53 L6*L12*L19
10 L6*L12*RY_P; 46 L6*L14*L25; 29 L6*L17*C_OHD_Z; 8 L6*L18*L27
1 L6*L22*L31; 447 L6*L25*TY_R_; 5 L6*L26*L31; 7 L6*L32*DROP_OHP_YZ
41 L6*L32*TY_R_; 8 L6*RX_P*TY_R_; 192 L6*TY_R_*TY_R_; 38 L7*L17*L28
127 L7*L18*L27; 9 L7*L25*L27; 1766 L8*L10*L17; 44 L8*L17*L18
2 L8*L17*L25; 383 L8*L17*L31; 1196 L8*L18*L27; 111 L8*L18*L28
2839 L8*L18*L30; 1112 L8*L28*L30; 66 L9*L10*L28; 47 L9*L17*L27
31 L9*L27*L31; 2097 L10*L13*L17; 45 L10*L17*L20; 821 L10*L17*L30
44 L10*L17*DROP_OCQ_Y; 282 L10*L18*RX_P; 123 L12*L12*RY_P; 86 L12*L14*L25
177 L12*L14*L31; 177 L12*L14*RX_P; 266 L12*L16*TY_R_; 257 L12*L17*L26
272 L12*L17*L32; 358 L12*L17*DROP_OCQ_Y; 1 L12*L18*L19; 859 L12*L18*L28
54 L12*L18*L36; 1173 L12*L18*TY_R_; 1 L12*L25*L27; 56 L12*L27*L30
117 L12*L27*L31; 428 L12*L28*L28; 263 L12*L28*L35; 54 L14*L14*L25
246 L14*L17*L21; 219 L14*L17*L25; 46 L14*L17*L29; 54 L14*L17*L34
68 L14*L18*RX_P; 80 L14*L35*RX_P; 1 L15*L25*L25; 232 L16*L17*DROP_OCR_YQ
615 L17*L17*C_OHD_Z; 346 L17*L18*L28; 44 L17*L18*L33; 37 L17*L18*L34
4 L17*L18*-OHD; 1 L17*L18*DROP_OCQ_Y; 44 L17*L19*L30; 113 L17*L20*L34
44 L17*L22*L35; 3 L17*L23*L27; 2 L17*L25*L35; 213 L17*L27*L33
225 L17*L27*RX_P; 143 L17*L27*DROP_OCR_YQ; 451 L17*L28*L31; 383 L17*L31*L35
272 L17*L32*L36; 387 L17*L32*RY_P; 125 L17*RY_P*RY_P; 1 L18*L18*L29
104 L18*L18*L30; 79 L18*L20*L28; 2 L18*L20*L30; 2 L18*L21*L27
79 L18*L21*L28; 1 L18*L24*L25; 386 L18*L24*L28; 381 L18*L25*L27
524 L18*L25*TY_R_; 246 L18*L28*L29; 15 L18*L30*TX_R_; 1162 L18*L30*TY_R_
1 L21*RY_P*TY_R_; 1 L24*L25*L28; 8 L24*L28*RX_P; 425 L25*L27*L27
865 L25*L27*L28; 1 L25*L27*DROP_OHP_YZ; 10 L25*L28*L28; 2 L25*L28*L31
85 L25*TY_R_*TY_R_; 510 L27*L27*TX_R_; 153 L27*L28*L29; 34 L27*L35*RX_P
280 L28*L31*L31; 1322 L28*L35*RX_P; 73 L28*RX_P*RX_P; 31 L30*L30*TY_R_
11 L34*RX_P*TY_R_; 7 RX_P*RX_P*TY_R_; 223 +OYZ*L4; 191 +OYZ*L10
54 +OYZ*L15; 56 +OYZ*L18; 1088 +OYZ*L24; 1091 +OYZ*L25
11 +OYZ*L26; 3016 +OYZ*L31; 35 +OYZ*-OHD; 710 +OYZ*DROP_OHP_YZ
3250 +OYZ*RX_P; 3 +OYZ*DROP_OCQ_Y; 88 -HCY*L5; 119 -HCY*L8
537 -HCY*L14; 1075 -HCY*L19; 10 -HCY*L24; 1273 -HCY*L30
66 -HCY*L32; 506 -HCY*RY_P; 233 -OHZ*L1; 366 -OHZ*L2
102 -OHZ*L8; 800 -OHZ*L10; 575 -OHZ*L19; 786 -OHZ*RY_P
285 -HFZ*L1; 64 -HFZ*L26; 387 +HCP*L17; 455 -CDP*L1
117 -CDP*L14; 80 -CDP*L16; 2 -CDP*L20; 1 -CDP*L22
1 -CDP*L24; 1029 -CDP*L32; 460 -CDP*L35; 155 -CDP*L36
134 -CDP*TY_R_; 467 -CYP*L3; 191 -CYP*L10; 106 -CYP*L14
1 -CYP*L19; 30 -CYP*L25; 349 -CYP*L27; 46 -CYP*L31
1190 -CYP*-OHD; 421 -CYP*+OCF; 17 -CYP*TX_R_; 326 -CYP*TY_R_
154 +CDQ*L17; 42 +HYQ*L17; 599 -HFR*L1; 361 -HFR*L5
172 -HFR*L6; 8 -HFR*L9; 456 -HFR*L25; 588 -HFR*-OHD
8 -HFR*DROP_OHP_YZ; 865 -HFR*DROP_OCR_YQ; 39 +CDR*L17; 112 +CDR*L18
18 +CDR*L27; 767 -DFR*L0; 400 -DFR*L6; 112 -DFR*L19
134 -DFR*L23; 10 -DFR*L30; 38 -DFR*L32; 3 -DYR*L3
12 -DYR*L12; 2 +OQR*L30; 386 -DPR*L1; 46 -DPR*L6
134 -DPR*L22; 1 -DPR*L24; 388 -DPR*L27; 13 -DPR*L31
532 -DPR*TY_R_; 865 +CYZ*L17; 3 +OYQ*L36; 1 -OZQ*L6
201 -OZQ*L17; 3 -OZQ*L35; 12 -OZR*L3; 86 -OZR*L12
54 -OZR*L14; 204 -OZR*L17; 12 -OZR*L31; 55 +FPQ*L5
1 +FPQ*L12; 1 +FPQ*L18; 57 +FPQ*L26; 1 +FPQ*L31
80 +FPQ*TY_R_; 156 -HDQ*L17; 191 +YZP*L11; 3193 +YZP*L12
54 +YZP*L14; 105 +YZP*L18; 3 +YZP*L20; 1090 +YZP*L23
15 +YZP*L24; 11 +YZP*L27; 4 +YZP*L28; 3016 +YZP*L30
155 +YZP*+OCF; 497 +YZP*C_OHD_Z; 1090 +YZP*DROP_OCQ_Y; 1016 -ODY*L3
362 -ODY*L5; 1817 -ODY*L18; 47 -ODY*L27; 233 -ODY*L28
1739 -ODY*L30; 110 -ODY*L32; 219 -ODY*L34; 35 -DQR*L18
169 -DQR*L27; 2 -DQR*L30; 1 -DQR*+OCF; 168 -DQR*RY_P
169 -DQR*TY_R_; 2 -CFQ*L27; 1 +ZQR*L6; 46 C_ZPR_YQ*L6
17 TPX_R_*L27; 192 TPY_R_*L28; 24 Q_OYFH_Z*L17; 155 Q_OCQZ_Y*L17
1 Q_OCRZ_YQ*TX_R_; 367 Q_DRFP_Q*L27
```

Upper bound: `-854388497/250000000`.

### Leaf RUTpmpmmppmmpp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR -HDQ +YZP +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYQ +ODQ
P OHDZP -OZP
P OHFQR -OFQ
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPQ -DPQ
P DOHQR -DQR
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FHCZQ +FZQ
P YOHDQ +YDQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPR +ZPR
P ZOYPQ +ZPQ
P QOHZR -QZR
P QOCPR +QPR
M OHDQZY 1
M ODHQYZ -1
M HODYZQ -1
M HDOYQZ 1
M DOHZYQ 1
M DHOZQY -1
```

```c1top-bounds
T OHD YZQ 0 lower 823/1000
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
123 L0*L0*TX_R_; 56 L0*L3*L12; 62 L0*L3*L18; 12 L0*L3*L28
6 L0*L3*L29; 1 L0*L3*DROP_OCQ_Y; 47 L0*L4*TX_R_; 13 L0*L6*L32
16 L0*L8*RX_P; 15 L0*L15*RX_P; 3 L0*L16*L31; 26 L0*L17*L36
6 L0*L17*-OHD; 25 L0*L17*C_OCF_Y; 6 L0*L17*TY_R_; 14 L0*L18*L33
19 L0*L18*TX_R_; 29 L0*L20*TX_R_; 5 L0*L21*RX_P; 47 L0*L22*TX_R_
35 L0*L29*TX_R_; 81 L0*L34*TX_R_; 29 L0*RX_P*TX_R_; 10 L1*L4*L6
35 L1*L6*L6; 13 L1*L6*L11; 17 L1*L6*L14; 35 L1*L6*L25
85 L1*L6*DROP_OCQ_Y; 19 L1*L6*DROP_OCR_YQ; 24 L1*L7*L27; 2 L1*L10*L18
1 L1*L12*DROP_OCQ_Y; 5 L1*L24*L31; 2 L1*L27*L33; 22 L1*L27*TX_R_
1 L1*L31*L31; 5 L2*L4*L31; 32 L2*L6*L19; 13 L2*L14*L21
6 L2*L18*L32; 2 L2*L22*RX_P; 38 L3*L4*L17; 8 L3*L10*L17
5 L3*L12*L14; 20 L3*L12*L18; 66 L3*L17*RY_P; 2 L3*L18*L34
19 L3*L18*DROP_OCQ_Y; 6 L3*L20*L28; 33 L3*L32*TX_R_; 29 L3*TY_R_*TY_R_
8 L4*L5*L17; 23 L4*L6*L17; 3 L4*L6*TX_R_; 4 L4*L12*L13
21 L4*L17*L28; 75 L4*L17*DROP_OHP_YZ; 41 L4*L17*DROP_OCQ_Y; 53 L4*L17*DROP_OCR_YQ
26 L4*L18*TX_R_; 3 L4*L20*L31; 1 L4*L27*L30; 20 L4*L31*TX_R_
29 L5*L17*L18; 3 L5*L32*RX_P; 1 L6*L6*L15; 4 L6*L6*RY_P
13 L6*L8*TY_R_; 1 L6*L10*L19; 1 L6*L10*L21; 10 L6*L16*RY_P
3 L6*L17*DROP_OCQ_Y; 17 L6*L22*TX_R_; 6 L6*L23*L25; 12 L6*L25*L26
27 L6*L26*RX_P; 1 L6*L32*RY_P; 3 L7*L7*L27; 2 L7*L14*L18
11 L7*L27*+OCF; 9 L7*L27*DROP_OHP_YZ; 3 L8*L17*L22; 8 L8*L18*L29
2 L8*L32*RX_P; 15 L9*L17*L27; 11 L9*L17*RY_P; 9 L10*L27*TX_R_
6 L10*L35*RX_P; 9 L11*L18*RX_P; 3 L12*L12*RX_P; 8 L12*L17*L28
11 L12*L28*TX_R_; 4 L12*L32*TX_R_; 3 L12*L36*RX_P; 31 L13*L17*L27
14 L13*L18*RX_P; 14 L15*L16*L17; 3 L15*L17*L25; 20 L16*L17*DROP_OCQ_Y
2 L16*L20*L27; 26 L16*L27*L27; 7 L16*L27*L32; 2 L17*L18*L26
9 L17*L18*L32; 36 L17*L18*DROP_OCR_YQ; 10 L17*L18*TX_R_; 9 L17*L23*L27
20 L17*L23*RX_P; 32 L17*L25*L32; 11 L17*L25*DROP_OCQ_Y; 7 L17*L27*L35
10 L17*L27*DROP_OHP_YZ; 20 L17*L27*TY_R_; 22 L17*L31*TY_R_; 29 L17*-OHD*DROP_OCQ_Y
9 L18*L20*RY_P; 4 L18*L20*TX_R_; 13 L18*L21*L24; 46 L18*L24*L27
33 L18*L27*-OHD; 3 L18*L30*L33; 9 L18*-OHD*RX_P; 23 L18*-OHD*TX_R_
9 L18*RX_P*DROP_OCQ_Y; 29 L18*RX_P*TY_R_; 1 L19*L32*L32; 17 L20*L27*TY_R_
5 L20*L28*RX_P; 17 L21*L26*L27; 1 L23*L28*RX_P; 9 L25*L27*L31
32 L25*L27*DROP_OCQ_Y; 43 L27*L29*-OHD; 8 L27*L29*DROP_OCQ_Y; 12 L27*L29*TX_R_
14 L27*L33*DROP_OHP_YZ; 9 L27*L35*TX_R_; 32 L27*DROP_OCQ_Y*TX_R_; 1 L28*L30*L30
2 L31*L34*RX_P; 5 L32*L32*RX_P; 25 KLOW*L17; 45 KLOW*RY_P
13 -OHF*L1; 26 +HCD*L27; 10 -HCY*L2; 11 -HCY*L14
33 -HCY*L24; 11 -HCY*L34; 36 -HCY*DROP_OHP_YZ; 35 -HFY*L17
12 -HFY*RX_P; 12 -OHZ*L0; 50 -OHZ*L4; 32 -OHZ*L5
42 -OHZ*L25; 43 -OHZ*L29; 3 -OHZ*L30; 1 -OHZ*L31
34 -OHZ*DROP_OHP_YZ; 1 -OHZ*DROP_OCQ_Y; 21 -HFZ*L3; 4 -HFZ*L8
1 -HFZ*RX_P; 2 -HFZ*RY_P; 77 -HFZ*DROP_OCR_YQ; 19 +CDZ*L27
42 +OCP*L3; 12 +OCP*DROP_OCQ_Y; 60 -CDP*L0; 29 -CDP*L5
20 -CDP*L7; 88 -CDP*L17; 17 -CDP*L20; 5 -CDP*L31
3 -CDP*L35; 217 -CDP*DROP_OHP_YZ; 14 -CDP*DROP_OCQ_Y; 29 -CDP*DROP_OCR_YQ
7 -CYP*L30; 4 -CZP*L8; 17 +CDQ*L27; 2 -CZQ*L18
4 -HFR*L8; 52 -HFR*L16; 66 -HFR*L34; 138 -HFR*-OHD
175 -HFR*DROP_OCQ_Y; 193 -HFR*DROP_OCR_YQ; 1 +FYR*L4; 20 -DZR*L27
37 +OPR*L27; 1 -OYP*L12; 17 +OYQ*L16; 1 +OYQ*L30
2 -OZR*L12; 2 -OZR*L25; 25 +FPQ*L0; 17 +FPQ*L4
6 +FPQ*L24; 1 +FPQ*L31; 16 +FPQ*-OHD; 26 +FPQ*C_OCF_Y
9 +FPQ*RY_P; 17 +FPQ*TX_R_; 2 -CQR*L3; 34 -CQR*L4
10 -CQR*L14; 3 -HDQ*L25; 21 -HDQ*L29; 9 -HDQ*DROP_OCR_YQ
4 +YZP*L20; 3 +YZP*L33; 14 -OZP*L17; 9 -OFQ*L18
1 +CPQ*L12; 5 -DQR*RX_P; 9 +FPR*L18; 7 +FQR*RX_P
2 +FZQ*L0; 1 -YZQ*L7; 13 -YZQ*L17; 1 -DYZ*L8
16 -DYZ*L16; 1 -DYZ*DROP_OHP_YZ; 4 -DYZ*RX_P; 31 C_OHP_YZ*L27
34 C_ODZ_Y*L2; 1 C_ODZ_Y*L8; 5 C_ODZ_Y*L33; 16 C_ODZ_Y*-OHD
39 C_ODZ_Y*DROP_OHP_YZ; 14 C_ODR_YQ; 3 C_ODR_YQ*L6; 11 C_ODR_YQ*L13
3 C_ODR_YQ*L21; 7 C_ODR_YQ*L31; 1 C_ODR_YQ*L32; 46 C_ODR_YQ*-OHD
45 C_ODR_YQ*C_OCF_Y; 27 C_ODR_YQ*RX_P; 50 C_ODR_YQ*DROP_OCQ_Y; 74 C_ODR_YQ*DROP_OCR_YQ
1 C_HCZ_Y*L8; 1 C_HZP_Y*L0; 6 C_CZR_YQ*L1; 10 C_CZR_YQ*L23
29 C_CZR_YQ*L26; 2 C_CZR_YQ*L33; 21 C_CZR_YQ*-OHD; 35 C_CZR_YQ*DROP_OHP_YZ
2 C_CZR_YQ*TX_R_; 5 C_FPR_Q*L0; 21 C_FPR_Q*L6; 4 C_ZPQ_Y*L6
9 SP_OPRH_ZQ_PH-1*L27; 4 Q_ODQZ_Y*L2; 17 Q_ODQZ_Y*L16; 2 Q_ODQZ_Y*L19
2 Q_ODQZ_Y*-OHD; 6 Q_ODQZ_Y*C_OCF_Y; 10 Q_ODQZ_Y*DROP_OCR_YQ; 3 Q_OPQZ_Y*L12
2 Q_OPRZ_YQ*L6; 10 Q_HCPR_Q*L17; 23 SP_HZPD_YQ_HP1*L6; 11 SP_HZPD_YQ_HP1*-OHD
10 SP_HZPD_YQ_HP1*+OCF; 32 SP_HZPD_YQ_HP1*TX_R_; 2 SP_HZPD_YQ_ZD1*L6; 53 Q_HPRF_Q*L4
52 Q_HPRF_Q*L12; 14 Q_CDFY_Q*L17; 24 Q_CPDZ_Y*L6; 53 Q_CPDZ_Y*L17
38 Q_CPRF_Q*L0; 1 SP_DFZP_YQ_DZ-1*L6; 3 Q_DQZP_Y*L31; 9 Q_DRZP_YQ*L27
3 M_HDOYQZ_1_2*TX_R_; 3 M_HDOYQZ_1_3*L12; 1 M_HDOYQZ_1_4*L2
```

Upper bound: `-1904029863/500000000`.

### Leaf RUTpmpmmppmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ -CQR +HDQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DOHCQ -DOQ
P DOHZQ -DZQ
P DOFPQ -DPQ
P DOFQR -DQR
P DHCYQ -DYQ
P FOCPQ +FCQ
P FODPR +FPR
P FODQR +FQR
P FOYPQ +FYQ
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHCR -QHR
P QOHZR -QZR
P QOCPR +QPR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
T OCR YQ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 98/125 1
```

```c1top-sum
28 L0*L1*L3; 33 L0*L1*L16; 7 L0*L3*L9; 41 L0*L4*L21
112 L0*L4*TX_R_; 9 L0*L7*L22; 1 L0*L9*L34; 1 L0*L11*RX_P
1 L0*L13*L14; 4 L0*L13*TY_R_; 137 L0*L17*L20; 1 L0*L17*L32
2 L0*L17*DROP_OHP_YZ; 5 L0*L19*RX_P; 5 L0*L21*L27; 10 L0*L21*RX_P
15 L0*L21*TX_R_; 49 L0*L22*L29; 10 L0*L24*L25; 1 L0*L24*L28
2 L0*L25*L32; 1 L0*L26*L27; 4 L0*L27*L33; 7 L0*L28*DROP_OHP_YZ
7 L0*L29*TX_R_; 38 L1*L3*L17; 2 L1*L3*L31; 1 L1*L3*L35
13 L1*L12*L21; 10 L1*L12*L22; 9 L1*L17*L22; 1 L1*L20*DROP_OCQ_Y
1 L1*L27*DROP_OCR_YQ; 1 L1*L31*RX_P; 1 L2*L8*L19; 2 L2*L12*L15
8 L2*L12*L17; 6 L2*L17*L17; 43 L2*L17*L26; 91 L2*L17*DROP_OCQ_Y
1 L2*L30*L34; 1 L2*L30*TX_R_; 1 L3*L3*L12; 118 L3*L4*L17
105 L3*L6*L18; 27 L3*L7*L7; 1 L3*L10*L17; 3 L3*L14*L17
20 L3*L14*L18; 6 L3*L16*RX_P; 161 L3*L18*L22; 164 L3*L18*L23
27 L3*L18*TX_R_; 38 L3*L20*L27; 9 L3*L20*L34; 41 L3*L21*L28
38 L3*L25*L27; 25 L3*L25*L28; 28 L3*L25*C_OHD_Z; 1 L3*L25*TY_R_
19 L3*L27*L29; 3 L3*L27*DROP_OCR_YQ; 1 L3*DROP_OCQ_Y*DROP_OCR_YQ; 2 L4*L4*L13
73 L4*L6*L21; 36 L4*L6*L23; 12 L4*L6*L33; 1 L4*L11*C_OCF_Y
1 L4*L12*TX_R_; 68 L4*L17*L20; 51 L4*L17*L24; 20 L4*L17*L29
7 L4*L17*RY_P; 7 L4*L17*TY_R_; 6 L4*L23*L24; 3 L4*RX_P*RX_P
16 L5*L6*L17; 1 L5*L18*L33; 10 L5*L25*L25; 3 L5*L25*TY_R_
1 L6*L10*L17; 113 L6*L17*DROP_OCQ_Y; 7 L6*L18*L29; 16 L6*L23*L24
2 L7*L12*L23; 3 L7*L17*RY_P; 4 L7*L18*DROP_OCR_YQ; 34 L7*L25*L27
8 L7*L25*L28; 10 L8*L17*L23; 6 L8*L17*L30; 6 L8*L17*L31
2 L8*L17*L34; 1 L8*L18*TX_R_; 1 L8*L33*RX_P; 2 L8*L34*RX_P
1 L8*RX_P*TX_R_; 1 L9*L18*RX_P; 1 L10*L12*TY_R_; 1 L10*L18*L33
1 L10*L25*C_OHD_Z; 1 L11*L13*L27; 1 L12*L13*L16; 2 L12*L13*L18
2 L12*L17*L17; 1 L12*L17*L36; 1 L12*L18*L27; 1 L12*L18*L28
1 L12*L21*L27; 1 L12*L23*TX_R_; 2 L12*L28*L28; 2 L12*L28*RX_P
1 L12*L32*TX_R_; 1 L12*C_OCF_Y*TX_R_; 1 L13*L18*L35; 2 L13*RX_P*RX_P
2 L14*L17*L34; 1 L14*L35*C_OCF_Y; 2 L15*L15*L17; 1 L15*L33*RY_P
3 L16*L18*L23; 32 L16*L25*L27; 1 L17*L17*L30; 1 L17*L17*L35
18 L17*L18*L34; 1 L17*L18*L35; 44 L17*L18*+OCF; 7 L17*L23*L25
10 L17*L23*L31; 1 L17*L24*+OCF; 1 L17*L25*L31; 1 L17*L26*L30
1 L17*L27*C_OHD_Z; 22 L17*L27*DROP_OHP_YZ; 1 L17*L30*-OHD; 6 L17*L31*L33
1 L17*L32*DROP_OHP_YZ; 1 L17*L32*RY_P; 2 L17*L34*-OHD; 5 L17*-OHD*RY_P
25 L18*L20*L29; 7 L18*L20*TX_R_; 4 L18*L21*C_OHD_Z; 1 L18*L24*L28
26 L18*L25*L27; 26 L18*L27*TX_R_; 1 L18*L30*L36; 19 L18*L34*RX_P
56 L18*RX_P*RY_P; 3 L18*RX_P*DROP_OCQ_Y; 42 L20*L27*L29; 2 L21*L22*L23
10 L21*L25*L28; 19 L21*L27*TX_R_; 12 L21*L28*L29; 5 L21*L28*TY_R_
2 L21*DROP_OCQ_Y*DROP_OCQ_Y; 19 L23*L25*L25; 32 L25*RX_P*TY_R_; 7 L27*L27*L29
56 L27*L28*L29; 10 L27*L28*RX_P; 22 L27*RX_P*RX_P; 29 L28*L28*RX_P
1 L28*L30*L34; 1 L29*L35*RX_P; 1 L31*L34*TX_R_; 1 L31*L36*RX_P
1 L34*RX_P*RY_P; 44 KLOW*L5; 67 KLOW*L7; 2 KLOW*L14
71 KLOW*L21; 1 KLOW*L31; 33 KLOW*DROP_OHP_YZ; 4 KLOW*RX_P
57 KLOW*RY_P; 5 +HCF*L17; 1 +OYZ*L25; 1 -HYZ*L0
1 +OCY*RY_P; 1 -HCY*L2; 1 -HCY*L28; 1 -OHZ*L20
10 -OHZ*DROP_OCQ_Y; 3 +OCP*L20; 46 +OCP*DROP_OHP_YZ; 100 -CDP*L6
109 -CDP*L17; 28 -CDP*L21; 69 -CDP*L28; 1 -CDP*L32
3 -CDP*C_OCF_Y; 121 -CDP*DROP_OHP_YZ; 86 -CDP*RY_P; 27 -CDP*TX_R_
46 -CDP*TY_R_; 1 +DZP*TY_R_; 82 +CDQ*L17; 68 +DFQ*L14
68 +DFQ*L15; 15 +DFQ*L18; 117 +DFQ*L24; 32 +DFQ*L29
14 +DFQ*L33; 156 +DFQ*+OCF; 145 +DFQ*RX_P; 41 +DFQ*RY_P
45 +DFQ*DROP_OCR_YQ; 1 -CYQ*DROP_OCR_YQ; 12 -HFR; 2 -HFR*L5
102 -HFR*L20; 8 -HFR*L25; 7 -HFR*L29; 1 -HFR*L31
53 -HFR*+OCF; 1 +HZR*L4; 1 +HZR*L24; 1 +FZR*L12
63 +OQR*L6; 8 +OQR*L12; 41 +OQR*+OCF; 16 -DPR*L17
2 +CYZ*L28; 7 -OZQ*L25; 9 +FPQ*L1; 44 +FPQ*L5
25 +FPQ*L7; 6 +FPQ*L23; 6 +FPQ*DROP_OCQ_Y; 7 +FPQ*TX_R_
50 -CQR*L0; 4 -CQR*TX_R_; 49 +HDQ*L7; 14 +HDQ*L13
31 +HDQ*L18; 89 +HDQ*+OCF; 98 +HDQ*C_OCF_Y; 146 +HDQ*RX_P
37 +HDQ*RY_P; 107 +HDQ*TX_R_; 18 -OFQ*L18; 16 -DQR*RX_P
62 +FQR*L3; 15 +FQR*L25; 50 +FQR*L28; 1 +FYQ*L26
11 +HQR*L6; 1 +ZQR*L24; 16 -PQR*L17; 1 C_OHQ_Z*DROP_OCQ_Y
1 C_HDF_Q*L12; 39 C_HDF_Q*L20; 1 C_CFZ_Y*L30; 1 C_CFZ_Y*L35
4 C_CFR_Q*L18; 10 C_CFR_Q*L27; 1 C_CZR_YQ*L6; 8 C_CZR_YQ*L20
3 C_CZR_YQ*+OCF; 1 C_CZR_YQ*RY_P; 1 C_CZR_YQ*TX_R_; 32 C_DFP_Q*L6
2 C_DZR_Q*L3; 9 C_FPR_Q*L0; 7 C_FPR_Q*L6; 1 C_FPR_Q*L30
113 TPX_R_*L0; 33 TPY_R_*L3; 18 TPY_R_*L18; 1 SP_ODRH_ZQ_DH-1*RY_P
1 Q_OCRF_YQ*L10; 16 Q_OCPQ_Y*L17; 23 Q_OPDQ_Y*L18; 3 Q_HZCP_Y*RX_P
14 Q_HDRF_Q*L2; 5 Q_HDRF_Q*L16; 10 Q_HDRF_Q*L25; 3 Q_HDRF_Q*DROP_OCR_YQ
50 Q_CPDF_Q*L27; 44 Q_DRFP_Q*L22; 3 Q_DRFP_Q*RX_P; 1 Q_DRZP_Q*L12
```

Upper bound: `-277879943/100000000`.

### Leaf RUTpmpmmpppmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ +CQR -HDQ -YZP`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YHDZP +YDZ
P ZODPR +ZPR
P POHZQ -PZQ
P QOHZR -QZR
P QOCYR -QYR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
2 L0*L1*L10; 5 L0*L6*L30; 40 L0*L12*RY_P; 225 L0*L12*TY_R_
34 L0*L17*L22; 17 L0*L17*DROP_OHP_YZ; 1 L0*L18*L28; 8 L0*L24*RX_P
2 L0*L30*RY_P; 2 L1*L1*RY_P; 1 L1*L3*L32; 2 L1*L5*L5
54 L1*L5*L33; 199 L1*L6*L26; 30 L1*L6*+OCF; 12 L1*L8*L12
94 L1*L12*L17; 37 L1*L17*L28; 35 L1*L17*L35; 13 L1*L17*TY_R_
1 L1*L19*L28; 1 L1*L24*L28; 25 L1*L25*L25; 47 L1*L25*TY_R_
92 L1*L27*L30; 1 L1*L28*L29; 10 L1*L31*L31; 217 L2*L2*RY_P
130 L2*L2*TY_R_; 95 L2*L5*L5; 134 L2*L5*TY_R_; 52 L2*L6*RY_P
43 L2*L14*L31; 1 L2*L14*L35; 16 L2*L16*L17; 150 L2*L17*RY_P
168 L2*L19*TY_R_; 7 L2*L35*TY_R_; 33 L3*L3*L15; 16 L3*L3*DROP_OHP_YZ
70 L3*L3*TY_R_; 7 L3*L4*L10; 41 L3*L5*L34; 17 L3*L5*RX_P
19 L3*L12*L27; 16 L3*L17*RX_P; 131 L3*L18*L18; 46 L3*L18*L27
122 L3*L18*L34; 52 L3*L18*TX_R_; 17 L3*L19*L31; 19 L3*L27*TX_R_
66 L3*L28*TX_R_; 15 L3*L34*RX_P; 81 L3*L34*TY_R_; 131 L4*L4*L17
2 L4*L5*L11; 5 L4*L6*L17; 5 L4*L6*RY_P; 133 L4*L6*TY_R_
59 L4*L14*L17; 154 L4*L15*L17; 83 L4*L17*L23; 105 L4*L17*L27
66 L4*L17*-OHD; 2 L4*L18*L32; 106 L4*L27*L27; 68 L4*L27*TX_R_
50 L5*L5*L12; 53 L5*L5*L27; 2 L5*L10*L19; 132 L5*L25*L27
56 L5*L25*L28; 27 L5*L25*L30; 2 L5*L28*L32; 19 L6*L8*RY_P
83 L6*L8*TY_R_; 5 L6*L9*L14; 65 L6*L14*TY_R_; 9 L6*L17*L18
25 L6*L25*TY_R_; 64 L6*L30*RY_P; 24 L6*RY_P*RY_P; 5 L8*L9*L26
22 L8*L14*L17; 51 L8*L27*DROP_OHP_YZ; 51 L9*L17*TY_R_; 7 L10*L12*L33
24 L10*L15*RX_P; 25 L10*L27*TX_R_; 2 L10*L28*-OHD; 25 L11*L27*L29
1 L11*L27*C_OCF_Y; 5 L12*L12*L35; 2 L12*L18*RY_P; 50 L12*L18*TY_R_
44 L12*L25*L26; 20 L12*L25*DROP_OHP_YZ; 5 L12*L27*L31; 7 L12*L28*L29
50 L12*L28*RY_P; 20 L13*L17*L24; 32 L14*L14*L31; 22 L14*L17*L28
2 L14*L17*RY_P; 19 L14*L17*TX_R_; 73 L15*L17*L27; 82 L16*L27*TY_R_
3 L16*L28*L30; 17 L17*L17*-OHD; 188 L17*L18*L18; 52 L17*L18*L24
116 L17*L18*RY_P; 49 L17*L18*DROP_OCQ_Y; 34 L17*L23*L28; 15 L17*L24*L27
7 L17*L24*-OHD; 52 L17*L24*RY_P; 54 L17*L26*-OHD; 58 L17*L26*DROP_OCR_Y
3 L17*L31*-OHD; 37 L17*L32*C_OHD_Z; 19 L17*L34*L36; 49 L17*RY_P*DROP_OCQ_Y
62 L17*RY_P*TY_R_; 15 L17*TX_R_*TY_R_; 71 L18*L18*RX_P; 6 L18*L24*L28
14 L18*L27*L27; 62 L18*L27*RX_P; 14 L18*L27*DROP_OCR_Y; 5 L18*L33*L35
17 L19*L30*L36; 25 L24*L27*L35; 13 L25*L27*L27; 44 L25*L30*TY_R_
53 L26*TY_R_*TY_R_; 53 L27*L27*L27; 69 L27*L27*L29; 140 L27*L27*RX_P
13 L27*L27*TX_R_; 91 L27*L28*L29; 22 L27*L28*RX_P; 5 L27*L30*L31
19 L27*L31*TX_R_; 76 KLOW*L11; 2 KLOW*L14; 84 KLOW*L30
229 KLOW*TX_R_; 25 +HDF*L6; 70 -HYZ*L3; 29 -HYZ*RX_P
2 -HYZ*TY_R_; 15 -HCY*L13; 75 -HCY*L14; 30 -HCY*L23
19 -HCY*L24; 14 -HCY*L29; 30 -HCY*DROP_OCQ_Y; 94 -HCY*DROP_OCR_Y
119 -OHZ*L4; 75 -OHZ*L10; 24 -OHZ*L15; 63 -OHZ*L17
90 -OHZ*L18; 5 -OHZ*L30; 16 -OHZ*L33; 35 -OHZ*TX_R_
68 +OCZ*L17; 33 -HFZ*L2; 60 -HFZ*L26; 71 -HFZ*TY_R_
141 +OCP*L17; 55 -CDP*L0; 229 -CDP*L4; 210 -CDP*L18
52 -CDP*L24; 7 -CDP*L30; 122 -CDP*L34; 1 -HFR*L1
19 -HFR*L9; 47 -HFR*L12; 25 -HFR*L25; 190 -HFR*L27
25 -HFR*L29; 149 -HFR*+OCF; 57 -HFR*RY_P; 226 -HFR*DROP_OCR_Y
10 -HFR*TY_R_; 32 -DFR*L3; 25 -DFR*L6; 6 -DFR*L14
13 -DFR*L28; 15 -DFR*RX_P; 117 -DFR*RY_P; 12 +HDR*L12
63 -DPR*L1; 77 +CYZ*L0; 209 +CYZ*L14; 5 +CYZ*L18
19 +CYZ*L24; 346 +CYZ*L26; 270 +CYZ*L27; 14 +CYZ*L29
158 +CYZ*L36; 151 +CYZ*DROP_OHP_YZ; 34 -OYP*L2; 44 -OYP*L14
73 -OYP*L26; 2 -OYP*RY_P; 19 -OYP*TX_R_; 19 -OZR*L2
19 -YZP*L14; 19 -YZP*L24; 78 -YZP*L27; 19 -YZP*L29
146 -YZP*L33; 2 -YZP*-OHD; 19 -YZP*+OCF; 2 -YZP*RY_P
151 -YZP*DROP_OCR_Y; 25 -DYZ*L17; 37 C_OZP_Y*L2; 8 C_HCZ_Y*L30
19 C_HCZ_Y*RX_P; 122 C_CDR_Q*L27; 124 C_CZP_Y*L9; 166 C_CZP_Y*L12
69 C_DFP_Q*L27; 138 TPX_R_*L3; 143 TPX_R_*L18; 11 TPX_R_*L34
36 TPY_R_*L12; 4 Q_OCDH_YZQ*L17; 63 Q_OCDZ_Y*L17; 9 Q_OCPF_Y*L17
5 Q_OPDR_YQ*L6; 56 Q_CPDR_Q*L1; 188 Q_CPDR_Q*L2; 195 Q_CPDR_Q*L5
6 Q_CPDR_Q*L14; 1 Q_CPDR_Q*L18; 52 Q_CPDR_Q*L26; 12 Q_CPDR_Q*L31
8 Q_CPDR_Q*RY_P; 57 Q_DRFP_Q*L0; 3 Q_DRFP_Q*L4; 130 Q_DRFP_Q*L27
83 Q_DRFP_Q*L30; 24 Q_DRFP_Q*RY_P
```

Upper bound: `-586903351/125000000`.

### Leaf RUTpmpmmpppmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ +CQR -HDQ +YZP`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DHCPQ -DPQ
P DHCQR -DQR
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPR +ZPR
P ZOYPQ +ZPQ
P QOHZR -QZR
P QOCYR -QYR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
102 L0*L0*L30; 19 L0*L1*L3; 29 L0*L1*L21; 10 L0*L2*L17
133 L0*L3*L10; 39 L0*L7*L18; 43 L0*L14*L21; 17 L0*L21*L35
48 L0*L27*TX_R_; 32 L0*L34*TX_R_; 79 L0*RX_P*RX_P; 58 L1*L1*L6
115 L1*L1*L31; 63 L1*L2*L21; 42 L1*L2*L25; 390 L1*L2*TY_R_
241 L1*L4*L6; 65 L1*L4*L12; 47 L1*L6*L6; 20 L1*L6*L10
90 L1*L6*L14; 27 L1*L6*L21; 41 L1*L6*L23; 143 L1*L6*L24
83 L1*L6*L25; 106 L1*L6*L29; 20 L1*L6*L35; 76 L1*L8*L17
93 L1*L8*L18; 25 L1*L8*L23; 120 L1*L8*L28; 69 L1*L10*L21
61 L1*L12*L19; 4 L1*L12*L21; 206 L1*L12*L26; 11 L1*L12*L31
301 L1*L12*DROP_OCQ_Y; 32 L1*L14*L25; 133 L1*L14*L31; 79 L1*L17*L17
41 L1*L17*L23; 29 L1*L25*L31; 81 L1*L25*TY_R_; 61 L1*L27*+OCF
32 L1*L28*TX_R_; 37 L2*L2*L5; 133 L2*L3*L14; 44 L2*L5*L25
68 L2*L6*TY_R_; 88 L2*L14*L23; 20 L2*L17*RY_P; 109 L2*L18*L31
108 L2*L23*L28; 25 L2*L23*TY_R_; 89 L2*L25*L27; 10 L2*L27*DROP_OHP_YZ
61 L3*L3*L27; 301 L3*L5*L27; 3 L3*L6*L10; 50 L3*L11*L18
116 L3*L11*L21; 1 L3*L11*L23; 19 L3*L12*L27; 490 L3*L14*L18
388 L3*L14*L27; 55 L3*L16*L17; 86 L3*L17*L34; 157 L3*L18*L24
223 L3*L18*L27; 125 L3*L18*L36; 51 L3*L18*TX_R_; 36 L3*L22*L35
7 L3*L25*L28; 239 L3*L27*L27; 2 L3*L27*L29; 57 L3*L27*DROP_OCQ_Y
141 L4*L6*TY_R_; 12 L4*L8*L17; 88 L4*L11*L17; 44 L4*L12*TY_R_
84 L4*L14*L17; 57 L4*L17*L17; 422 L4*L17*L27; 106 L4*L17*L28
91 L4*L17*RX_P; 184 L4*L17*DROP_OCR_Y; 106 L4*L18*L30; 21 L4*L18*L35
264 L4*L27*TX_R_; 52 L5*L5*L20; 119 L5*L25*TY_R_; 145 L6*L6*TY_R_
16 L6*L16*TY_R_; 13 L6*L17*L23; 30 L6*L20*TY_R_; 31 L6*L22*TY_R_
89 L6*L25*TY_R_; 127 L6*L26*TY_R_; 2 L7*L14*L18; 62 L7*L23*L27
182 L7*L27*L28; 14 L8*L11*L23; 43 L8*L12*L27; 10 L8*L16*L17
89 L8*L17*L18; 22 L8*L18*L27; 6 L8*L24*L34; 12 L9*L18*L18
41 L9*L21*TY_R_; 90 L10*L12*L21; 133 L10*L12*L35; 27 L10*L12*TX_R_
27 L10*L14*L21; 133 L10*L14*L31; 79 L10*L17*L17; 60 L10*L17*L22
13 L10*L17*L24; 93 L10*L17*RY_P; 29 L10*L21*L31; 2 L10*L21*TY_R_
2 L10*L22*L27; 21 L11*L18*L28; 1 L11*L21*RX_P; 15 L12*L13*L23
126 L12*L17*L27; 199 L12*L17*C_OHD_Z; 39 L12*L17*DROP_OCR_Y; 41 L12*L21*DROP_OCR_Y
102 L12*L23*L27; 44 L12*L28*L28; 48 L14*L16*TY_R_; 116 L14*L17*L21
89 L14*L17*RX_P; 116 L14*L21*TY_R_; 23 L14*L25*L31; 133 L14*L31*L31
48 L15*L17*L27; 177 L15*L17*DROP_OCQ_Y; 15 L15*L21*L27; 10 L16*L17*L35
55 L16*L17*DROP_OHP_YZ; 63 L16*L17*DROP_OCQ_Y; 14 L16*L32*TX_R_; 55 L17*L17*RX_P
87 L17*L18*L26; 75 L17*L18*L28; 55 L17*L18*L33; 54 L17*L18*L36
64 L17*L18*TX_R_; 112 L17*L21*L28; 27 L17*L23*L35; 8 L17*L23*TY_R_
13 L17*L25*C_OHD_Z; 22 L17*L26*L35; 26 L17*L27*L29; 106 L17*L27*L33
112 L17*L30*DROP_OCQ_Y; 22 L17*L30*TY_R_; 27 L17*L34*TX_R_; 18 L17*L36*RY_P
64 L17*RY_P*TX_R_; 229 L18*L20*L30; 41 L18*L23*RX_P; 175 L18*L27*L27
175 L18*L27*DROP_OCR_Y; 2 L18*L29*L34; 81 L18*L30*RY_P; 177 L18*L30*DROP_OCQ_Y
27 L18*L30*TX_R_; 1 L18*L33*RX_P; 116 L18*L34*RX_P; 28 L18*L35*-OHD
8 L18*L35*+OCF; 87 L18*RX_P*TY_R_; 41 L20*L27*L30; 42 L20*L28*L28
1 L20*L28*L30; 30 L21*L25*L27; 30 L21*L27*TX_R_; 63 L21*L28*L31
14 L21*L32*L35; 8 L22*L27*DROP_OHP_YZ; 91 L22*L35*RX_P; 63 L22*RX_P*RX_P
59 L23*L28*L31; 15 L23*L30*L30; 55 L25*L27*L28; 22 L25*L27*L35
39 L27*L27*L29; 2 L27*L28*L29; 89 L27*L29*TX_R_; 2 L27*L35*DROP_OCQ_Y
22 L27*L35*TX_R_; 4 L33*RX_P*TY_R_; 118 KLOW*L23; 79 KLOW*RX_P
88 KLOW*TX_R_; 187 +OYZ*L5; 93 +OYZ*L18; 78 +OYZ*L21
30 +OYZ*L27; 266 +OYZ*L31; 23 +OYZ*RX_P; 73 -HYZ*L17
133 -HCY*L1; 185 -HCY*L13; 133 -HCY*L14; 3 -HCY*L29
3 -HCY*RX_P; 120 -HCY*RY_P; 211 -HCY*DROP_OCQ_Y; 8 +CFY*L21
360 -OHZ*L4; 94 -OHZ*L9; 101 -OHZ*L31; 126 -OHZ*C_OCF_Y
301 -OHZ*DROP_OCQ_Y; 217 -OHZ*TY_R_; 58 -HFZ*L1; 13 -HFZ*L17
32 -HFZ*C_OCF_Y; 10 -HFZ*TY_R_; 73 +OCP*L3; 41 +OCP*L23
29 +OCP*L24; 124 +OCP*L26; 149 +OCP*L30; 411 -CDP*L0
59 -CDP*L24; 100 -CDP*L32; 34 -CDP*RX_P; 120 -CDP*TX_R_
21 -CYP*L5; 22 -CYP*L27; 4 +CDQ*L12; 40 +CDQ*L18
3 +DFQ*L17; 112 +HZQ*L17; 47 -HFR*L5; 44 -HFR*L21
405 -HFR*L27; 59 -HFR*L29; 22 -HFR*L31; 83 -HFR*C_OCF_Y
493 -HFR*DROP_OCR_Y; 129 -DFR*L0; 79 -DFR*L3; 309 -DFR*L4
145 -DFR*L6; 44 -DFR*L20; 168 -DFR*L28; 22 -DFR*L32
10 -DFR*L34; 31 -DFR*DROP_OCQ_Y; 20 +CYZ*L17; 59 +OYQ*L4
119 +OYQ*L10; 50 +OYQ*L15; 8 +OYQ*L25; 240 +OYQ*L30
92 +OYQ*L31; 127 +OYQ*L34; 230 +OYQ*RX_P; 28 +OYQ*DROP_OCR_Y
8 +OYQ*TX_R_; 3 -OZQ*L6; 17 -OZQ*L35; 216 -OZR*L4
43 -OZR*L9; 207 -OZR*L24; 207 -OZR*L25; 23 -OZR*L29
162 -OZR*DROP_OCQ_Y; 41 +HPQ*L18; 41 +FPQ*L0; 63 +CQR*L3
62 +CQR*L4; 10 +CQR*L8; 85 +CQR*L10; 88 +CQR*L14
125 +CQR*L16; 143 +CQR*L27; 74 +CQR*L28; 181 +CQR*TY_R_
61 -HDQ*L4; 95 -HDQ*L8; 3 -HDQ*L12; 27 -HDQ*L24
28 -HDQ*L32; 43 -HDQ*L34; 17 -HDQ*TX_R_; 200 +YZP*L3
187 +YZP*L4; 89 +YZP*L17; 93 +YZP*L19; 229 +YZP*L20
222 +YZP*+OCF; 177 +YZP*DROP_OCQ_Y; 27 +YZP*TX_R_; 32 -CFQ*L18
62 -CFQ*L27; 63 -DQR*L3; 116 -DQR*L5; 3 -DQR*L6
10 -DQR*L8; 85 -DQR*L10; 74 -DQR*L34; 115 -DQR*DROP_OHP_YZ
38 -DQR*TY_R_; 10 +FQR*L17; 13 -FYZ*L17; 30 -YZQ*L27
133 -YZQ*L35; 3 +ZQR*L6; 49 C_HCZ_Y*L18; 12 Q_HZPD_YQ*L18
20 Q_CDRZ_YQ*L6; 405 Q_CPDR_Q*L1; 106 Q_CPDR_Q*L5; 68 Q_CPDR_Q*L6
52 Q_CPDR_Q*L11; 300 Q_CPDR_Q*L14; 8 Q_CPDR_Q*L22; 238 Q_CPDR_Q*L27
10 Q_CPDR_Q*L35
```

Upper bound: `-1960627671/500000000`.

### Leaf RUTpmpmmpppp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPQ +FPQ +CQR +HDQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OCFYQ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P COFQR -CFQ
P DOHCQ -DOQ
P DOHZQ -DZQ
P DOFPQ -DPQ
P DOFQR -DQR
P DHCYQ -DYQ
P FOCYQ +FYQ
P FODPR +FPR
P FODQR +FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHDR -QHR
P QOHZR -QZR
P QOCYR -QYR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OHR Z 12 lower 279/1000
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 279/1000 1
t 27/50 1
```

```c1top-sum
5 L0*L0*TX_R_; 91 L0*L4*TX_R_; 1 L0*L9*L17; 31 L0*L17*L26
39 L0*L21*L26; 44 L0*L22*TX_R_; 18 L0*L24*RY_P; 7 L0*L26*L27
37 L0*L27*DROP_OCQ_Y; 1 L0*L30*L34; 40 L0*RX_P*TY_R_; 1 L1*L2*L10
25 L1*L6*DROP_OCQ_Y; 28 L1*L6*TY_R_; 13 L1*L18*L24; 1 L1*L25*RX_P
1 L2*L3*-OHD; 26 L2*L23*L28; 1 L2*L26*TX_R_; 22 L2*TY_R_*TY_R_
19 L3*L18*L28; 1 L4*L4*L9; 11 L4*L4*L11; 22 L4*L4*RX_P
25 L4*L6*TY_R_; 10 L4*L10*TY_R_; 62 L4*L14*L17; 10 L4*L17*L33
61 L4*L17*L34; 35 L4*L17*DROP_OCR_Y; 15 L4*L20*L27; 44 L4*L25*L27
1 L4*L27*L31; 6 L5*L5*L25; 21 L5*L11*L18; 11 L5*L17*L27
1 L5*L18*L21; 1 L5*L25*L25; 17 L5*L25*L28; 7 L5*L27*TY_R_
1 L6*L11*L17; 1 L6*L18*L25; 6 L6*L18*TY_R_; 6 L6*L23*RY_P
29 L6*L23*TY_R_; 1 L7*L11*L17; 3 L7*L26*L27; 54 L7*L27*DROP_OCQ_Y
9 L10*L12*L17; 1 L10*L15*L17; 1 L10*L17*DROP_OCR_Y; 21 L10*L18*L27
11 L10*L27*TY_R_; 9 L12*L17*L32; 20 L12*RY_P*TY_R_; 1 L13*L18*L20
1 L14*L21*L28; 5 L16*L17*L20; 5 L17*L17*L27; 5 L17*L17*DROP_OCR_Y
47 L17*L18*DROP_OCQ_Y; 58 L17*L18*TY_R_; 5 L17*L21*DROP_OHP_YZ; 8 L17*L21*TY_R_
11 L17*L23*L26; 43 L17*L23*TY_R_; 8 L17*L24*DROP_OCQ_Y; 16 L17*L26*L27
9 L17*L27*C_OHD_Z; 10 L17*L28*L33; 1 L17*L28*TX_R_; 1 L17*L32*L34
60 L17*DROP_OCQ_Y*DROP_OCR_Y; 30 L18*L27*L27; 30 L18*L27*DROP_OCR_Y; 6 L18*L28*TX_R_
5 L18*L29*-OHD; 47 L18*RX_P*DROP_OCQ_Y; 58 L18*RX_P*TY_R_; 5 L18*DROP_OCQ_Y*TX_R_
30 L21*L27*TY_R_; 30 L21*TY_R_*TY_R_; 37 L23*L27*L28; 37 L23*L27*DROP_OCR_Y
16 L25*L27*RY_P; 18 L26*L27*L29; 7 L27*L27*L28; 20 L27*L27*+OCF
6 L27*L28*L29; 18 L27*L28*RX_P; 37 L27*DROP_OCQ_Y*TY_R_; 1 L28*L35*RX_P
1 L28*L36*RX_P; 20 L30*RY_P*TY_R_; 21 L35*RY_P*TY_R_; 6 KLOW*L19
1 KLOW*L33; 46 KLOW*RY_P; 35 KLOW*DROP_OCQ_Y; 94 KLOW*TY_R_
10 +HCD*L17; 1 -OHZ*L18; 1 -OHZ*C_OHD_Z; 7 +OCP*TY_R_
76 -CDP*L26; 1 -CDP*L36; 1 -CYP*TY_R_; 9 +CDQ*L0
52 +DFQ*TY_R_; 24 -HFR*L19; 5 -HFR*C_OHD_Z; 69 -HFR*DROP_OCQ_Y
31 -OFR*L0; 1 +CYZ*-OHD; 1 -OZR*L4; 1 +CQR*RY_P
57 +CQR*TY_R_; 27 +HDQ*DROP_OCR_Y; 37 +HDQ*TY_R_; 5 +CPQ*TY_R_
3 -CFQ*L27; 1 -DPQ*L12; 36 -DQR*L4; 10 -DQR*L10
8 -DQR*L16; 6 -DQR*L19; 45 -DQR*L26; 15 -DQR*L28
10 -DQR*L32; 16 +FPR*L27; 28 +FQR*L4; 11 +FQR*L27
12 C_ODR_Q*L17; 27 C_HDF_Q*L4; 31 C_HDF_Q*L26; 1 C_CDR_Q*TX_R_
1 C_DFP_Q*L24; 1 SP_ODRH_ZQ_DH-1*L27; 6 Q_ORFH_Z*L17; 36 Q_HDRF_Q*L4
5 Q_HDRF_Q*DROP_OHP_YZ; 63 Q_HDRF_Q*DROP_OCR_Y; 1 Q_HYDR_Q*L2; 12 Q_CPDR_Q*L5
1 Q_CPDR_Q*L14; 32 Q_CPDR_Q*L27; 65 Q_CPDR_Q*L28; 48 Q_CPDR_Q*DROP_OCQ_Y
36 Q_DRFP_Q*L0; 15 Q_DRFP_Q*L27
```

Upper bound: `-180977409/500000000`.

### Leaf RUTpmpmp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR`.

```c1top-geometry
P OHFZR -OFZ
P OHFQR -OFQ
P OHYZP -OZP
P OHYZR +OYR
P OCFYZ -OFY
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHFQ -ZFQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P QOHFR -QHR
C OFY Z Q +FYQ 101661/147500
C OYR Z Q -YRQ 1971423483/2934365000
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCQ Y 11 lower 93/295
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 907/1000
m 63/200 907/1000
r 129/500 1
t 98/125 1
```

```c1top-sum
360 L0*L0*TX_R_; 8 L0*L3*L4; 24 L0*L3*L10; 18 L0*L3*L14
6 L0*L3*L24; 63 L0*L4*TX_R_; 2 L0*L6*L17; 59 L0*L8*L30
19 L0*L9*L21; 283 L0*L10*TX_R_; 1 L0*L12*L17; 61 L0*L12*L27
6 L0*L23*RX_P; 25 L0*L27*L31; 59 L0*L27*TX_R_; 5 L0*L31*L31
12 L0*L33*RX_P; 69 L1*L1*L6; 47 L1*L1*L25; 56 L1*L1*L31
1 L1*L6*L6; 1 L1*L6*L20; 3 L1*L6*RX_P; 4 L1*L6*DROP_OCQ_Y
12 L1*L12*L22; 1 L1*L14*L28; 5 L1*L17*L20; 17 L1*L17*L24
4 L1*L18*DROP_OHP_YZ; 7 L1*L20*L27; 6 L1*L21*TY_R_; 194 L1*L24*L27
2 L1*L30*L34; 71 L2*L2*L17; 38 L2*L12*L27; 27 L2*L14*RX_P
13 L3*L3*DROP_OCQ_Y; 34 L3*L5*L8; 6 L3*L5*L15; 11 L3*L5*L18
54 L3*L8*L10; 11 L3*L8*L34; 33 L3*L10*L12; 10 L3*L10*L18
37 L3*L10*L25; 4 L3*L11*L21; 26 L3*L12*L18; 28 L3*L13*L27
72 L3*L14*L24; 23 L3*L14*L27; 71 L3*L17*+OCF; 119 L3*L18*L20
61 L3*L18*L21; 12 L3*L18*L36; 10 L3*L18*DROP_OCQ_Y; 24 L3*L20*L28
28 L3*L22*L30; 13 L3*L23*L25; 30 L3*L23*L34; 13 L3*L23*TY_R_
7 L3*L24*L27; 5 L3*L27*L29; 22 L3*L27*TY_R_; 5 L3*L28*-OHD
33 L3*L28*DROP_OCQ_Y; 6 L3*L31*TY_R_; 3 L3*L32*L35; 6 L4*L5*L21
1 L4*L6*L21; 7 L4*L6*TX_R_; 2 L4*L6*TY_R_; 43 L4*L8*L17
2 L4*L14*L21; 6 L4*L17*L18; 16 L4*L17*L24; 22 L4*L17*L27
3 L5*L5*L20; 5 L5*L8*L25; 2 L5*L12*L27; 3 L5*L18*L20
1 L5*L20*L30; 1 L5*L21*L35; 2 L5*L21*RY_P; 7 L6*L6*TY_R_
2 L6*L17*L27; 13 L6*L25*TY_R_; 25 L8*L8*L17; 2 L8*L8*L27
14 L8*L14*L17; 25 L8*L17*L35; 8 L8*L18*L23; 18 L8*L18*RX_P
3 L8*L20*L28; 7 L8*L27*L27; 19 L8*L30*L32; 6 L8*RX_P*TY_R_
21 L9*L9*L14; 8 L9*L10*L10; 46 L9*L10*L12; 26 L9*L12*L22
15 L9*L14*L21; 3 L9*L17*L22; 19 L9*L17*RY_P; 9 L9*L22*L22
4 L10*L13*L17; 9 L10*L14*L17; 11 L10*L17*L20; 19 L10*L17*L30
6 L10*L17*L32; 9 L10*L17*L34; 36 L10*L17*DROP_OCR_YZ; 20 L10*L21*L22
22 L10*L21*L25; 68 L10*L21*L31; 12 L10*L21*TY_R_; 18 L10*L22*L31
11 L10*L23*RX_P; 19 L10*L31*L31; 2 L11*L12*L18; 4 L11*L17*L18
8 L11*L17*L25; 36 L11*L17*L26; 3 L11*L17*DROP_OCQ_Y; 7 L11*L23*L30
26 L12*L14*L25; 24 L12*L14*L27; 142 L12*L14*L31; 7 L12*L17*L19
6 L12*L17*DROP_OCR_YZ; 4 L12*L18*L32; 13 L12*L21*TY_R_; 27 L12*L22*L27
124 L12*L22*L31; 74 L12*L27*L27; 24 L12*L27*L36; 4 L14*L17*L30
6 L14*L18*RX_P; 20 L14*L21*L23; 74 L14*L24*L27; 104 L14*L24*L31
1 L14*L28*-OHD; 7 L14*L31*L31; 18 L16*L17*L19; 1 L16*L17*DROP_OCR_YZ
8 L16*L17*TX_R_; 9 L16*L22*L28; 8 L17*L17*L24; 8 L17*L17*L29
46 L17*L18*+OCF; 6 L17*L18*RY_P; 14 L17*L18*TX_R_; 19 L17*L20*RY_P
32 L17*L24*L27; 63 L17*L26*DROP_OCR_YZ; 2 L17*L27*+OCF; 9 L17*L27*DROP_OCQ_Y
10 L17*L31*L34; 8 L17*L32*DROP_OCQ_Y; 4 L17*L33*L34; 6 L17*L34*TX_R_
6 L17*L36*RY_P; 8 L17*+OCF*DROP_OHP_YZ; 6 L17*RY_P*RY_P; 32 L17*TX_R_*TY_R_
5 L18*L20*L28; 8 L18*L21*L35; 19 L18*L21*RX_P; 6 L18*L30*L35
3 L18*L30*-OHD; 1 L18*L30*DROP_OHP_YZ; 4 L18*L32*RX_P; 14 L18*RX_P*TX_R_
18 L19*RX_P*RX_P; 9 L20*L28*RX_P; 2 L21*L25*L28; 13 L21*L27*L31
9 L21*L27*L35; 11 L21*L28*L35; 13 L21*L28*DROP_OCR_YZ; 29 L23*L23*L30
68 L23*L30*L30; 11 L23*L30*L32; 9 L23*RX_P*TY_R_; 23 L25*L27*L28
14 L25*L27*L30; 7 L25*L27*L35; 13 L25*L27*TX_R_; 11 L25*L28*RX_P
14 L25*L30*TY_R_; 7 L25*L31*TY_R_; 3 L25*TY_R_*TY_R_; 2 L26*L30*L30
41 L27*L27*L29; 52 L27*L27*RX_P; 3 L27*L27*TX_R_; 3 L27*L28*TX_R_
21 L27*L31*DROP_OCQ_Y; 13 L27*TX_R_*TX_R_; 6 L28*L30*RX_P; 8 L30*L32*L32
1 RX_P*RX_P*TY_R_; 11 RX_P*TY_R_*TY_R_; 9 KLOW*TX_R_; 13 -OHC*L17
22 -OHF*L1; 49 -OHF*L26; 12 +OYZ*L1; 83 +OYZ*L10
8 +OYZ*L18; 31 +OYZ*L21; 36 +OYZ*L22; 165 +OYZ*L24
32 +OYZ*L27; 151 +OYZ*L31; 66 +OYZ*L35; 27 +OYZ*-OHD
29 +OYZ*DROP_OHP_YZ; 51 -HCY*L1; 20 -HCY*L8; 18 -HCY*L14
12 -HCY*L19; 33 -HCY*L20; 44 -HCY*L27; 78 -HCY*L30
15 -HCY*L35; 76 -HCY*+OCF; 16 -HCY*RX_P; 69 -HCY*DROP_OCR_YZ
42 +OCZ*L17; 4 +OCP*L6; 6 -CDP*L7; 40 -CDP*L8
108 -CDP*L17; 28 -CDP*L20; 6 -CDP*L36; 5 -CDP*+OCF
119 -CDP*DROP_OHP_YZ; 12 -CDP*TX_R_; 10 -HDP*L17; 6 -CYP*L12
9 -CYP*L14; 21 -CYP*L20; 2 -CYP*L24; 6 -CYP*L32
9 -CYP*L34; 1 -HFQ*L6; 3 +CDQ*L0; 11 +CDQ*RY_P
4 +DFQ*L0; 1 +DFQ*L6; 10 -CYQ*L17; 1 -CYQ*L27
14 +HZQ*L17; 218 -HFR*L0; 283 -HFR*L10; 2 -HFR*L20
94 -HFR*-OHD; 13 -HFR*+OCF; 155 -HFR*DROP_OCR_YZ; 58 -DFR*L0
2 -DFR*L4; 15 -DFR*L6; 27 -DFR*DROP_OHP_YZ; 18 -DFR*RX_P
5 -OFR*L17; 6 -DZR*L17; 41 +CYZ*L2; 23 +CYZ*L4
73 +CYZ*L6; 73 +CYZ*L7; 178 +CYZ*L8; 18 +CYZ*L11
142 +CYZ*L12; 138 +CYZ*L20; 29 +CYZ*L23; 35 +CYZ*L25
23 +CYZ*TY_R_; 6 -OYP*L31; 11 +OYQ*L0; 43 +OYQ*L30
27 +OYQ*L36; 45 -OZQ*L3; 27 -OZQ*L11; 8 -OZQ*L19
13 -OZQ*L24; 109 -OZQ*L31; 61 -OZQ*+OCF; 10 -OZQ*DROP_OCR_YZ
59 +OZR*L3; 4 +OZR*L8; 59 +OZR*L10; 35 +OZR*L20
74 +OZR*L27; 2 +OZR*L28; 59 +OZR*L32; 26 +OZR*L33
100 +OZR*+OCF; 28 +OZR*DROP_OCQ_Y; 6 -OFZ*L17; 14 -OZP*L21
13 +CPQ*L6; 16 +CPQ*L9; 14 +CPQ*L12; 13 +CPQ*L29
5 -DPQ*L1; 3 -DPQ*L31; 2 -DQR*L14; 13 -DQR*L27
14 -DQR*L30; 8 -YZQ*L18; 20 -YZQ*L23; 22 -YZQ*L24
9 -YZQ*L27; 12 -YZQ*L31; 10 C_OHP_YZ*L17; 7 C_OYR_Z*L27
13 C_OQR_Z*L3; 53 C_HCZ_Y*L3; 1 C_HCZ_Y*L18; 10 TPX_R_*L0
2 Q_OCDR_YZQ*L21; 5 Q_OPDR_YZQ*L6; 5 Q_OPDR_YZQ*L28; 2 Q_OPDR_YZQ*L31
6 Q_OYRF_Z*L17; 13 Q_OYQR_Z*L27; 36 Q_OYQR_Z*L30; 8 Q_HZCF_Y*L3
1 Q_HZCP_Y*L23
```

Upper bound: `-18752456329/22750000000`.

### Leaf RUTpmpp

Assumptions: `+CYZ -OYP +OYQ +OZQ`.

```c1top-geometry
C OCQ YZ P -CQP 160539/200000
P OHFQR -OFQ
P OHYZP -OZP
P OHYQR +OYR
P OHZQR +OZR
P OCFYQ -OFY
P OCFZQ -OFZ
P HODPR +HPR
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P QOHFR -QHR
C OFY Z Q +FYQ 101661/147500
C OYR Z Q -YRQ 1971423483/2934365000
P FOYZQ +FZQ
P QOYZR -QZR
```

```c1top-bounds
T OCQ YZ 1 lower 694/907
T OCQ YZ 11 lower 694/885
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 153/200 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 93/1000 907/1000
m 98/125 907/1000
r 129/500 1
t 98/125 1
```

```c1top-sum
1 L0*L1*L3; 5 L0*L2*L5; 8 L0*L3*L29; 27 L0*L4*TX_R_
2 L0*L6*L30; 3 L0*L6*L36; 4 L0*L8*RX_P; 5 L0*L8*TX_R_
3 L0*L12*L23; 8 L0*L12*L30; 53 L0*L17*L29; 10 L0*L17*L33
2 L0*L17*-OHD; 27 L0*L17*TY_R_; 22 L0*L20*L27; 1 L0*L28*L30
16 L0*-OHD*TX_R_; 5 L0*RX_P*RX_P; 5 L0*RX_P*DROP_OCQ_YZ; 90 L0*RX_P*TX_R_
2 L1*L1*L6; 21 L1*L2*L6; 6 L1*L5*L25; 2 L1*L6*L24
61 L1*L6*DROP_OHP_YZ; 9 L1*L6*TX_R_; 8 L1*L9*L21; 2 L1*L9*L25
1 L1*L9*L27; 1 L1*L10*L31; 1 L1*L12*L14; 7 L1*L12*C_OCF_YZ
6 L1*L17*+OCF; 17 L1*L24*L27; 3 L1*L33*TY_R_; 89 L2*L5*L17
3 L2*L18*L31; 8 L2*L20*L28; 23 L2*L27*RX_P; 74 L3*L3*L17
43 L3*L3*L29; 27 L3*L3*RX_P; 22 L3*L4*L28; 24 L3*L5*L21
23 L3*L5*L24; 14 L3*L6*L17; 3 L3*L10*L24; 5 L3*L11*L22
7 L3*L11*RX_P; 10 L3*L12*L34; 3 L3*L13*L19; 3 L3*L14*L26
15 L3*L18*L28; 28 L3*L18*TX_R_; 30 L3*L27*-OHD; 1 L3*L34*L35
3 L3*L35*L36; 1 L4*L14*L30; 16 L4*L17*L31; 173 L4*L17*DROP_OHP_YZ
10 L4*L17*TX_R_; 22 L5*L5*L17; 1 L5*L10*L12; 4 L5*L11*RX_P
9 L5*L12*L22; 1 L5*L14*L36; 1 L5*L14*C_OCF_YZ; 9 L5*L19*L31
1 L5*L24*L35; 3 L5*L25*L30; 10 L5*L28*RX_P; 14 L6*L9*DROP_OCQ_YZ
2 L6*L9*TY_R_; 7 L6*L11*RX_P; 3 L6*L14*L28; 14 L6*L14*L30
12 L6*L15*L17; 4 L6*L16*RY_P; 14 L6*L17*+OCF; 5 L6*L17*DROP_OCR_YZ
4 L6*L18*RX_P; 2 L6*L19*L31; 10 L6*L21*L26; 21 L6*L23*L26
21 L6*L23*RY_P; 93 L6*L26*RX_P; 5 L6*DROP_OCQ_YZ*TY_R_; 16 L7*L8*L27
5 L7*L10*L17; 8 L7*L27*C_OCF_YZ; 8 L8*L18*L21; 2 L8*L18*L32
36 L8*L18*RX_P; 6 L8*L22*TX_R_; 4 L9*L9*L12; 1 L9*L9*L35
1 L9*L11*L35; 5 L9*L14*L24; 12 L9*L17*L18; 33 L9*L17*-OHD
12 L9*L21*L27; 3 L9*L27*RX_P; 26 L10*L12*TX_R_; 2 L10*L24*L27
5 L10*L25*L31; 5 L10*L25*RX_P; 12 L10*L30*RX_P; 4 L10*L31*L31
8 L11*L13*L17; 6 L11*L16*L30; 4 L11*L25*L30; 4 L11*L30*L30
2 L11*L35*RX_P; 5 L12*L23*RX_P; 5 L12*L27*L29; 10 L12*L27*L33
3 L12*L27*-OHD; 16 L12*L28*DROP_OHP_YZ; 35 L12*L31*DROP_OCQ_YZ; 14 L13*L14*TX_R_
1 L13*L27*TX_R_; 3 L13*L31*L35; 13 L13*DROP_OCQ_YZ*TY_R_; 1 L14*L14*L27
2 L14*L14*L31; 1 L14*L14*TY_R_; 11 L14*L17*L21; 12 L14*L17*L24
2 L14*L17*L27; 31 L14*L17*C_OCF_YZ; 9 L14*L17*DROP_OCQ_YZ; 15 L14*L20*L27
17 L14*L22*RX_P; 8 L14*L24*L31; 3 L14*L30*L31; 17 L14*L31*DROP_OCQ_YZ
3 L14*RX_P*RX_P; 3 L15*L17*L17; 30 L15*L17*L31; 12 L15*L17*TX_R_
3 L15*L27*L31; 1 L15*L30*L30; 90 L16*L17*TY_R_; 132 L16*L18*RX_P
13 L16*L20*L28; 5 L16*L22*L32; 3 L16*L25*L28; 2 L16*L27*L30
51 L17*L17*L20; 31 L17*L17*+OCF; 132 L17*L18*DROP_OHP_YZ; 3 L17*L19*L21
1 L17*L20*L36; 51 L17*L20*DROP_OHP_YZ; 3 L17*L20*RY_P; 1 L17*L21*L30
1 L17*L21*L35; 11 L17*L22*-OHD; 14 L17*L22*DROP_OHP_YZ; 16 L17*L24*DROP_OCQ_YZ
2 L17*L27*L36; 53 L17*L27*C_OCF_YZ; 90 L17*L27*DROP_OHP_YZ; 10 L17*L28*L29
7 L17*L33*L34; 53 L17*-OHD*RX_P; 16 L17*DROP_OHP_YZ*RX_P; 8 L18*L20*L30
21 L18*L22*TX_R_; 3 L19*L21*L35; 21 L19*L22*L24; 8 L19*L23*L30
9 L19*L30*L30; 15 L20*L27*RX_P; 3 L20*L30*TY_R_; 17 L21*L27*DROP_OCR_YZ
17 L22*L24*L27; 31 L22*L24*RX_P; 3 L22*L30*TX_R_; 9 L22*L31*DROP_OHP_YZ
5 L22*C_OCF_YZ*TX_R_; 14 L22*RX_P*RX_P; 12 L23*L31*RX_P; 1 L24*L26*L30
12 L24*L28*DROP_OCQ_YZ; 1 L25*L27*L31; 5 L25*L27*+OCF; 2 L25*L28*L28
1 L25*L32*TY_R_; 7 L25*C_OCF_YZ*TY_R_; 27 L27*L27*RX_P; 15 L27*L28*TX_R_
9 L27*L29*L29; 14 L27*L31*L31; 1 L27*L32*TX_R_; 27 L27*RX_P*TY_R_
7 L28*L28*TX_R_; 16 L28*L30*C_OCF_YZ; 16 L28*L30*RX_P; 2 L28*L32*RX_P
45 L28*C_OCF_YZ*RX_P; 27 L28*RX_P*TY_R_; 4 L30*L30*DROP_OCR_YZ; 1 L30*L32*L34
7 L30*L34*RX_P; 1 L30*L35*L35; 49 L32*RX_P*RX_P; 16 RX_P*RX_P*RX_P
33 KLOW*TX_R_; 8 +HDF*L25; 33 +OYZ*L6; 56 +OYZ*L9
36 +OYZ*L20; 12 +OYZ*L33; 22 +OYZ*+OCF; 59 +OYZ*DROP_OHP_YZ
42 +OYZ*DROP_OCR_YZ; 34 +OYZ*TX_R_; 8 -HYZ*L30; 1 -HCY*L5
33 -HCY*L8; 60 -HCY*L16; 8 -HCY*L21; 2 -HCY*-OHD
22 -HCY*+OCF; 11 -HCY*TX_R_; 3 +CDY*L6; 1 -OHZ*L28
13 -HFZ*L2; 15 -CDP*L5; 3 -CDP*L10; 13 -CDP*-OHD
45 -CDP*C_OCF_YZ; 83 -CDP*DROP_OHP_YZ; 23 -CDP*TX_R_; 47 -CYP*L3
9 -CYP*L5; 2 -CYP*L6; 14 -CYP*L8; 24 -CYP*L12
35 -CYP*L20; 4 -CYP*L24; 3 -CYP*L35; 2 -CYP*-OHD
49 -CYP*DROP_OHP_YZ; 27 -HFQ*L6; 26 -HFQ*L25; 1 +DFQ*L10
12 +DFQ*L23; 21 +DFQ*L24; 1 +DFQ*L35; 15 +DFQ*+OCF
11 +DFQ*C_OCF_YZ; 3 -CYQ*L17; 1 +HZQ*L6; 13 +HZQ*L17
8 -HFR*L9; 6 -HFR*L12; 7 -HFR*L17; 26 -HFR*L20
36 -HFR*L29; 1 -HFR*L32; 20 -HFR*-OHD; 12 -HFR*+OCF
94 -HFR*RX_P; 5 -DFR*L4; 13 -DFR*L20; 9 -DFR*L27
2 -DFR*-OHD; 9 +HDR*L6; 31 -CYR*L17; 17 +OQR*L27
22 +OQR*L28; 16 +OQR*TY_R_; 67 +CYZ*L8; 1 +CYZ*L11
2 +CYZ*L14; 54 +CYZ*L20; 19 +CYZ*L25; 1 +CYZ*L28
26 +CYZ*+OCF; 13 +CYZ*TX_R_; 1 -OYP*L10; 49 -OYP*L12
8 -OYP*L22; 19 -OYP*L31; 90 +OZQ*L8; 8 +OZQ*L18
3 +OZQ*L28; 1 +OZQ*L29; 26 +OZQ*RX_P; 43 +OZQ*DROP_OCR_YZ
22 -OZP*L31; 42 +OZR*L10; 12 +OZR*L23; 14 +OZR*L30
16 -OFZ*L27; 4 -DQR*L8; 21 -DQR*L29; 3 -DQR*L36
1 -DQR*+OCF; 16 -DQR*RX_P; 12 -DQR*DROP_OCQ_YZ; 24 -DQR*DROP_OCR_YZ
24 +FQR*L3; 14 +FQR*L4; 27 +FQR*L6; 22 +FQR*L8
12 +FQR*L22; 3 +FQR*L33; 9 +FQR*DROP_OCR_YZ; 46 +YQR*L8
6 +YQR*L12; 39 +YQR*L14; 56 +YQR*L31; 31 +YQR*RX_P
19 +FZQ*L27; 15 +ZQR*L3; 27 C_OCQ_YZ*L3; 14 C_OCQ_YZ*L9
11 C_OCQ_YZ*L24; 5 C_OCQ_YZ*L32; 29 C_OYQ_Z*L13; 9 C_OYQ_Z*L30
19 C_OYQ_Z*L36; 35 C_OPQ_YZ*L31; 3 C_OPQ_YZ*L35; 8 C_OPQ_YZ*L36
1 C_HCZ_Y*L1; 23 C_HCZ_Y*RX_P; 3 TPX_R_*L14; 7 TPX_R_*L20
10 TPX_R_*-OHD; 2 Q_OYQR_Z*L2; 1 Q_OYQR_Z*L6; 3 Q_OYQR_Z*L36
1 Q_CDRY_Q*L1
```

Upper bound: `-98001737/500000000`.

### Leaf RUTpp

Assumptions: `+CYZ +OYP`.

```c1top-geometry
C OCP Y Z -POZ 3239749/6167600
P OHDYP -ODY
P OHDYR +OYR
P OHFYP -OFY
P OHFQR -OFQ
P OHYPQ +OYQ
P HODPR +HPR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P DCFQR -DQR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YODPR +YPR
P ZHDPR +ZPR
P POCYQ -PYQ
P QOHFR -QHR
C CZP Y Q +ZPQ 16331508917/27291630000
```

```c1top-bounds
T OCP Y 9 lower 93/295
T OCQ Y 11 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 63/200 297/500
l 93/1000 907/1000
m 63/200 907/1000
r 129/500 1
t 27/50 1
```

```c1top-sum
5 L28*RX_P; 3 L0*L1*L17; 13 L0*L6*TY_R_; 9 L1*L2*L33
3 L1*L3*L5; 7 L1*L3*L25; 48 L1*L6*L26; 7 L1*L6*RX_P
28 L1*L6*RY_P; 21 L1*L6*DROP_OCR_Y; 3 L1*L10*L31; 62 L1*L12*L18
2 L1*L12*DROP_OHP_Z; 59 L1*L12*RY_P; 4 L1*L14*TX_R_; 17 L1*L16*TY_R_
2 L1*L18*L25; 3 L1*L19*L31; 21 L1*L25*L26; 162 L1*L26*L31
5 L1*L31*RX_P; 11 L2*L3*L5; 4 L2*L5*L35; 56 L2*L11*TY_R_
33 L2*L14*L27; 17 L2*L17*L35; 7 L2*L26*RX_P; 9 L2*L28*L30
41 L2*L30*RY_P; 68 L2*RY_P*RY_P; 4 L3*L3*L10; 26 L3*L12*L18
21 L3*L14*L17; 58 L3*L14*L18; 64 L3*L14*TY_R_; 36 L3*L17*L27
25 L3*L17*DROP_OCR_Y; 215 L3*L18*DROP_OCP_Y; 464 L3*L18*TY_R_; 175 L3*L26*L27
7 L3*L27*L29; 78 L3*TY_R_*TY_R_; 129 L4*L4*L17; 44 L4*L10*L17
79 L4*L13*L17; 62 L4*L14*L17; 296 L4*L14*L31; 37 L4*L17*L30
13 L5*L5*L26; 13 L5*L5*L27; 10 L5*L6*L27; 31 L5*L25*DROP_OCP_Y
42 L5*L27*L31; 11 L5*RX_P*RX_P; 32 L6*L10*TY_R_; 1 L6*L12*L13
7 L6*L16*TY_R_; 22 L6*L17*L26; 18 L6*L17*L27; 17 L6*L17*L30
19 L6*L18*L19; 19 L6*L19*TY_R_; 3 L6*L27*L36; 1 L6*L36*L36
19 L6*RY_P*RY_P; 68 L6*RY_P*TY_R_; 5 L6*TY_R_*TY_R_; 1 L7*L12*L14
8 L7*L12*L16; 7 L7*L17*L34; 55 L7*L26*L27; 2 L8*L17*L27
17 L8*L17*L29; 1 L8*L17*L34; 3 L9*L10*L32; 33 L9*L18*L18
2 L10*L10*L17; 3 L10*L10*L31; 2 L10*L17*L30; 3 L10*L17*L36
179 L10*L26*RX_P; 36 L10*RX_P*RY_P; 22 L11*L17*L27; 9 L12*L16*L25
83 L12*L16*TY_R_; 186 L12*L17*L26; 2 L12*L19*L35; 69 L12*L19*RY_P
56 L12*L23*TY_R_; 7 L12*L24*L27; 15 L12*L25*RY_P; 15 L12*L31*DROP_OCP_Y
43 L12*L32*DROP_OCP_Y; 13 L12*RX_P*RY_P; 56 L12*DROP_OCQ_Y*TY_R_; 11 L13*L17*RY_P
9 L13*L17*TX_R_; 28 L14*L17*RY_P; 141 L14*L17*DROP_OCR_Y; 41 L14*L31*RY_P
135 L14*L31*DROP_OCR_Y; 327 L14*L31*TY_R_; 29 L15*L17*RY_P; 3 L16*L28*L36
2 L16*L35*TY_R_; 11 L17*L18*+OCF; 22 L17*L19*L34; 10 L17*L25*RY_P
114 L17*L26*L26; 52 L17*L26*L34; 89 L17*L26*L36; 3 L17*L32*L34
23 L17*L36*DROP_OCP_Y; 216 L17*DROP_OCP_Y*DROP_OCR_Y; 10 L17*RY_P*TX_R_; 183 L17*RY_P*TY_R_
11 L18*L18*L25; 29 L18*L24*L28; 2 L18*L31*L31; 68 L18*L31*TY_R_
4 L19*L19*L25; 45 L19*L27*L31; 47 L19*L27*RX_P; 2 L19*L30*L30
69 L19*L30*RY_P; 7 L25*L27*L34; 17 L25*L27*DROP_OCP_Y; 42 L27*L31*RY_P
7 L27*L36*TX_R_; 32 L28*C_OCF_Y*TY_R_; 27 L28*DROP_OCP_Y*TX_R_; 22 L28*RX_P*RY_P
2 L31*L35*DROP_OCP_Y; 97 RX_P*TY_R_*TY_R_; 55 KLOW*RY_P; 5 +HCD*L17
3 +HDF*L16; 7 +HDF*TY_R_; 6 +OYZ*L5; 3 +OYZ*L10
36 +OYZ*L26; 61 +OYZ*DROP_OCR_Y; 3 -HYZ*L17; 32 -HCY*L4
3 -HCY*L14; 130 -HCY*L26; 4 -HCY*+OCF; 32 -HFY*TY_R_
29 -OHZ*L18; 59 -OHZ*RY_P; 10 -HFZ*DROP_OCP_Y; 56 -CDP*L5
35 -CDP*L8; 38 -CDP*L10; 44 -CDP*L13; 58 -CDP*L14
11 -CDP*L16; 7 -CDP*L24; 322 -CDP*L26; 30 -CDP*L32
147 -CDP*DROP_OCP_Y; 36 -CDP*TY_R_; 1 +HZP*L12; 4 -HFR*L15
28 -HFR*L26; 57 -HFR*DROP_OCP_Y; 7 -HFR*RX_P; 69 -HFR*RY_P
39 +CDR*L5; 13 -DFR*L12; 13 -DFR*L13; 76 -DFR*RY_P
17 -DFR*DROP_OCR_Y; 12 -OFR*L27; 7 +HDR*L16; 69 -DPR*L1
22 -DPR*L3; 37 -DPR*L5; 14 -DPR*L18; 17 -DPR*L27
15 -DPR*L33; 19 +CYZ*L4; 3 +CYZ*L11; 43 +CYZ*L12
43 +CYZ*L14; 19 +CYZ*L16; 41 +CYZ*L19; 365 +CYZ*L26
3 +CYZ*L28; 43 +CYZ*L36; 17 +OYP*L13; 123 +OYP*L26
3 +OYP*L28; 2 +OYP*L35; 37 +OYP*C_OCF_Y; 36 +OYP*RY_P
32 +OYP*TY_R_; 11 TPY_R_*L28; 27 TPY_R_*TY_R_; 10 Q_OPFH_Z*L17
3 Q_OCRF_Y*L17; 26 Q_OCPZ_Y*L3; 24 Q_OCPZ_Y*L31
```

Upper bound: `-177261617/1000000000`.

### Leaf RTUmmm

Assumptions: `-CYZ -OYP -OYQ`.

```c1top-geometry
P OHDYQ +ODY
P OHDQR +ODR
P OHYZP -OZP
P OHYZQ -OZQ
P OCDYZ +ODZ
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOFPR -DPR
P DOFQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOCDZ +YDZ
P YOCZP -YZP
P YOCZQ -YZQ
P YODPQ +YPQ
P YHCFZ +YFZ
P YHCZR -YZR
P ZODPQ +ZPQ
P QOCDR -QCR
P QODPR -QPR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ YZ 10 lower 347/500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 93/1000 907/1000
t 21/200 907/1000
```

```c1top-sum
1 L0*L11*TX_Q_; 70 L0*L30*TY_Q_; 14 L1*L1*RY_P; 4 L1*L2*L6
12 L1*L3*L9; 3 L1*L3*L20; 17 L1*L4*L12; 15 L1*L5*+OCF
13 L1*L6*L15; 49 L1*L6*L22; 4 L1*L8*L8; 107 L1*L8*L22
29 L1*L8*-OHD; 22 L1*L8*DROP_OHP_YZ; 28 L1*L8*RY_P; 79 L1*L8*TY_Q_
8 L1*L10*L20; 14 L1*L12*L31; 8 L1*L14*L18; 6 L1*L15*L30
16 L1*L16*+OCF; 8 L1*L18*L36; 9 L1*L21*L34; 31 L1*L22*+OCF
14 L1*L32*L33; 4 L1*L33*TX_Q_; 9 L1*L34*TX_Q_; 14 L1*-OHD*RY_P
8 L1*RX_P*RX_P; 2 L2*L4*L36; 17 L2*L10*L17; 8 L2*L10*L34
40 L2*L10*TY_Q_; 5 L2*L15*L28; 4 L2*L15*RX_P; 51 L2*L15*TY_Q_
7 L2*L18*L21; 8 L2*L18*L30; 1 L2*L20*L32; 7 L2*L21*TY_Q_
24 L2*L22*L34; 22 L2*L30*TY_Q_; 4 L3*L3*L14; 23 L3*L4*L17
6 L3*L5*L32; 2 L3*L5*DROP_OHP_YZ; 15 L3*L8*L19; 6 L3*L13*L17
21 L3*L14*L17; 7 L3*L17*L18; 21 L3*L18*C_OHD_YZ; 32 L3*L18*TY_Q_
11 L3*L23*L32; 3 L3*L34*L35; 30 L4*L4*TX_Q_; 1 L4*L6*L11
6 L4*L9*L12; 35 L4*L11*L12; 16 L4*L12*L36; 56 L4*L14*L17
8 L4*L17*L17; 25 L4*L17*+OCF; 1 L4*L20*L32; 4 L4*L22*L35
18 L4*L23*TX_Q_; 4 L4*L35*RX_P; 4 L5*L10*L23; 24 L5*L16*TY_Q_
23 L5*L18*L21; 8 L5*L18*L22; 8 L5*L18*L23; 63 L5*L21*TY_Q_
67 L5*RX_P*TY_Q_; 2 L6*L30*TY_Q_; 8 L6*L34*L35; 30 L8*L14*L19
11 L8*L14*L21; 14 L8*L15*L17; 11 L8*L18*L23; 32 L8*L23*L23
3 L8*L23*-OHD; 9 L8*L30*-OHD; 4 L8*L31*TY_Q_; 6 L8*-OHD*RX_P
1 L9*L12*L20; 8 L9*L12*L32; 19 L9*L14*L18; 32 L10*L21*TY_Q_
11 L11*L12*+OCF; 14 L11*L12*DROP_OHP_YZ; 12 L11*L17*L22; 2 L12*L12*TY_Q_
14 L12*L15*L32; 4 L12*L16*RY_P; 4 L12*L16*TY_Q_; 7 L12*L18*L31
4 L12*L19*L20; 4 L12*L21*RY_P; 5 L12*L22*L29; 137 L12*L22*L32
10 L12*L22*RX_P; 7 L12*L23*+OCF; 1 L12*L29*L35; 2 L12*L29*TY_Q_
37 L12*L32*RY_P; 70 L12*L32*TY_Q_; 18 L12*L33*TY_Q_; 32 L12*L35*C_OHD_YZ
7 L12*L35*RY_P; 9 L12*L35*TY_Q_; 5 L13*L15*L34; 4 L14*L17*L17
13 L14*L17*L18; 16 L14*L17*L23; 13 L14*L18*RX_P; 16 L14*L20*RX_P
2 L15*L16*TY_Q_; 11 L15*L20*L35; 4 L16*L17*L18; 26 L16*L21*TY_Q_
21 L16*L34*TY_Q_; 40 L16*TY_Q_*TY_Q_; 8 L17*L17*L28; 33 L17*L17*TY_Q_
26 L17*L20*L23; 31 L17*L21*L36; 14 L17*L22*L32; 3 L17*L35*L36
15 L18*L20*L32; 10 L18*L21*-OHD; 33 L18*L21*DROP_OHP_YZ; 43 L18*L21*TY_Q_
4 L18*L22*L35; 4 L18*L23*L35; 2 L18*L28*TX_Q_; 4 L18*RX_P*RX_P
7 L21*L23*L31; 4 L23*L29*L34; 7 L23*L34*RX_P; 3 L23*RY_P*TX_Q_
2 L28*L35*TX_Q_; 8 L31*L31*L34; 14 L31*L34*L34; 7 L34*L35*TX_Q_
3 L35*L36*RX_P; 1 L35*L36*TX_Q_; 1 L35*C_OHD_YZ*TX_Q_; 5 CENT*L9
9 CENT*L28; 16 CENT*DROP_OHP_YZ; 23 -HYZ*L0; 8 -HYZ*L10
14 -HYZ*L20; 137 -HYZ*L22; 8 -HYZ*L35; 12 -HYZ*-OHD
30 -HYZ*+OCF; 28 -HYZ*RY_P; 5 -OHZ*L20; 29 -OHZ*L32
19 +OCP*L3; 1 +OCP*L10; 33 -CDP*L14; 7 -CDP*L20
21 -CDP*L22; 21 -CDP*L28; 22 -CDP*L35; 46 -CDP*TY_Q_
3 -OFP*L1; 7 -HFQ*L18; 5 -HFQ*L30; 35 +CDQ*L18
5 -DFQ*L5; 2 -DFQ*L10; 7 -DFQ*L22; 4 -DFQ*L30
2 -DFQ*-OHD; 35 -DFQ*RY_P; 1 +HDQ*L4; 8 -CYQ*L1
24 -DPQ*L5; 26 -DPQ*L10; 155 -DPQ*L17; 188 -DPQ*DROP_OHP_YZ
40 -DPQ*TY_Q_; 49 -CYZ*L5; 31 -CYZ*L20; 79 -CYZ*L22
14 -CYZ*L34; 27 -CYZ*-OHD; 21 -CYZ*RY_P; 15 -OYQ*L5
5 -OYQ*L16; 32 -OYQ*L22; 26 -OYQ*L33; 19 -OYQ*L36
26 -OYQ*C_OHD_YZ; 9 -OYQ*RX_P; 11 -OYQ*RY_P; 4 +ODY*L30
1 -YZP*L3; 14 -YZQ*RX_P; 4 C_OZP_Y*L17; 37 C_OZQ_Y*L8
33 TPY_Q_*L18; 9 Q_OQFH_YZR*L1; 4 Q_OQFH_YZR*L9; 4 Q_OQFH_YZR*L15
28 Q_OQFH_YZR*L22; 2 Q_OQFH_YZR*L35; 8 Q_OQFH_YZR*RY_P; 10 Q_OQFH_YZR*TY_Q_
```

Upper bound: `-95759593481/45500000000`.

### Leaf RTUmmpmmmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPR -CFR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P HODPR -HDR
P HODQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPR -DPR
P DOHQR +DQR
P FOHCR +FOR
P FOCYR +FYR
P FODPQ +FPQ
P FODQR -FQR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPQ +ZPQ
P POHFR +PFR
P POHQR +PQR
P QOHCR -QCR
P QOHYR -QYR
P ROHDY -RDY
M OHPRZY 1
M OPHRYZ -1
M HOPYZR -1
M HPOYRZ 1
M POHZYR 1
M PHOZRY -1
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHP YZR 0 lower 823/1000
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
13 L0*L1*L12; 6 L0*L2*L3; 13 L0*L3*L8; 1 L0*L3*L11
6 L0*L12*L17; 55 L0*L17*L22; 16 L0*L17*L27; 11 L0*L17*L30
8 L0*L34*TX_Q_; 1 L1*L1*L1; 4 L1*L1*L6; 4 L1*L2*L11
37 L1*L2*L19; 9 L1*L2*C_OHD_ZR; 89 L1*L2*DROP_OCR_Y; 3 L1*L3*L6
10 L1*L4*L6; 2 L1*L5*L24; 9 L1*L6*L14; 29 L1*L6*L17
7 L1*L6*L21; 4 L1*L6*L25; 22 L1*L6*RY_P; 65 L1*L6*DROP_OCQ_Y
21 L1*L6*TY_Q_; 12 L1*L6*DROP_OCR_Y; 1 L1*L10*L14; 21 L1*L10*L30
7 L1*L10*RX_P; 6 L1*L12*L19; 1 L1*L15*L17; 13 L1*L16*L21
26 L1*L16*TY_Q_; 26 L1*L21*RX_P; 61 L1*L21*TY_Q_; 37 L1*L21*DROP_OCR_Y
62 L1*L23*L24; 20 L1*L23*RX_P; 17 L1*L27*L30; 8 L1*L28*L31
16 L1*L28*RX_P; 13 L1*L30*DROP_OCR_Y; 2 L1*L31*L36; 2 L1*L34*L36
2 L2*L2*L27; 40 L2*L2*RY_P; 1 L2*L5*L28; 2 L2*L8*L27
21 L2*L12*L32; 6 L2*L12*RX_P; 6 L2*L15*RY_P; 24 L2*L17*L28
76 L2*L17*TY_Q_; 39 L2*L19*L24; 9 L2*L19*L27; 177 L2*L20*RY_P
7 L2*L23*L26; 2 L2*L23*L32; 1 L2*L23*RY_P; 10 L2*L24*L28
16 L2*L24*L34; 15 L2*L24*TY_Q_; 1 L2*L27*L32; 8 L2*L31*RY_P
3 L2*RX_P*TY_Q_; 7 L2*TY_Q_*TY_Q_; 1 L3*L4*L6; 1 L3*L7*L30
7 L3*L10*L14; 3 L3*L14*L30; 7 L3*L15*L23; 6 L3*L17*L36
7 L3*L23*L30; 26 L4*L4*L17; 1 L4*L5*L30; 25 L4*L6*RY_P
32 L4*L6*TY_Q_; 1 L4*L9*L23; 1 L4*L12*TY_Q_; 204 L4*L17*L20
50 L4*L17*L23; 72 L4*L17*L29; 1 L5*L10*L12; 1 L5*L15*L30
22 L5*L18*L21; 1 L5*L19*L24; 29 L5*L21*L21; 3 L5*L23*DROP_OHP_YZR
1 L6*L11*L12; 1 L6*L11*RX_P; 1 L6*L12*L31; 1 L6*L13*L22
45 L6*L17*RY_P; 26 L6*L21*DROP_OCR_Y; 18 L6*L22*TY_Q_; 21 L6*L24*TY_Q_
4 L6*L26*L35; 43 L6*L26*RY_P; 1 L6*L31*L35; 49 L6*DROP_OHP_YZR*TY_Q_
28 L6*RX_P*TY_Q_; 39 L6*TY_Q_*DROP_OCR_Y; 2 L7*L14*L23; 8 L8*L8*L17
5 L8*L8*L19; 1 L8*L8*L21; 5 L8*L8*L23; 3 L8*L8*RY_P
6 L8*L10*L30; 6 L8*L10*L35; 2 L8*L12*L36; 8 L8*L17*L36
1 L8*L17*RY_P; 8 L8*L18*L30; 2 L8*L23*L27; 2 L8*L27*TY_Q_
1 L8*L30*TX_Q_; 6 L10*L10*L30; 19 L10*L12*L35; 1 L10*L14*RX_P
1 L10*L17*L29; 10 L10*L17*C_OCF_Y; 2 L10*L17*TY_Q_; 1 L10*L21*L26
5 L10*L24*TY_Q_; 1 L10*L30*TX_Q_; 1 L11*L17*L17; 6 L12*L12*L27
2 L12*L12*L30; 2 L12*L13*L33; 6 L12*L14*L27; 7 L12*L19*L24
1 L12*L19*TX_Q_; 5 L12*L19*DROP_OCR_Y; 1 L12*L21*L31; 1 L12*L21*TY_Q_
1 L12*L23*L29; 18 L12*L23*C_OCF_Y; 6 L12*L27*L32; 1 L12*L28*L34
3 L12*L31*L32; 7 L12*L31*L34; 1 L12*L32*L34; 11 L12*L32*DROP_OCQ_Y
6 L12*L33*C_OCF_Y; 3 L13*L17*L27; 2 L14*L23*L25; 1 L14*L26*RX_P
1 L15*L17*L27; 1 L15*L28*TX_Q_; 4 L15*L31*L36; 28 L16*L18*TY_Q_
25 L16*TY_Q_*TY_Q_; 18 L17*L17*L22; 16 L17*L17*L23; 8 L17*L17*L30
70 L17*L17*TY_Q_; 118 L17*L18*L20; 27 L17*L23*L23; 22 L17*L23*L24
10 L17*L23*L27; 72 L17*L23*TX_Q_; 10 L17*L26*L31; 8 L17*L30*L31
8 L17*L30*RX_P; 10 L17*L30*DROP_OCR_Y; 1 L17*L32*L34; 5 L17*L34*RY_P
45 L17*RY_P*TX_Q_; 28 L18*L18*L21; 10 L18*L21*L26; 1 L18*L21*L35
2 L19*L20*L23; 18 L19*L20*L24; 11 L19*L24*L28; 5 L19*L24*L34
5 L19*L34*DROP_OHP_YZR; 72 L20*L20*RY_P; 6 L20*L26*L34; 24 L21*L21*DROP_OCR_Y
1 L21*L23*L28; 24 L21*L24*TY_Q_; 1 L21*L26*L30; 4 L21*L26*RX_P
1 L21*L36*TY_Q_; 1 L23*L23*L33; 2 L23*L25*L28; 1 L23*L25*L30
1 L23*L30*RX_P; 4 L23*L30*DROP_OCR_Y; 20 L26*RX_P*TY_Q_; 6 L30*L36*DROP_OCR_Y
3 L31*L31*TY_Q_; 8 L31*C_OHD_ZR*TY_Q_; 1 L31*RY_P*TY_Q_; 1 L34*L34*L34
1 L34*L35*L36; 24 KLOW*L17; 23 KLOW*L20; 25 KLOW*L27
6 KLOW*L31; 13 KLOW*L36; 38 KLOW*RY_P; 19 KLOW*TY_Q_
11 CENT*L1; 4 CENT*L14; 1 CENT*L18; 18 CENT*RX_P
10 +OYZ*L8; 21 -HYZ*L10; 6 -HYZ*L17; 5 -HYZ*L18
3 -HYZ*C_OHD_ZR; 37 -HYZ*C_OCF_Y; 6 -HCY*L23; 5 -OHZ*L35
10 -HFZ*L4; 2 -HFZ*L11; 12 -HFZ*TY_Q_; 64 -HFZ*DROP_OCR_Y
46 -CDP*L2; 1 -CDP*L5; 6 -CDP*L6; 5 -CDP*L15
245 -CDP*L20; 2 -CDP*L31; 1 -CDP*L32; 5 -CDP*TX_Q_
35 -CDP*DROP_OCR_Y; 2 +DYP*L17; 10 -HFQ*L25; 2 -HFQ*L32
9 -HFQ*L34; 31 -HFQ*+OCF; 10 -HFQ*C_OHD_ZR; 22 -HFQ*C_OCF_Y
57 -HFQ*RX_P; 25 -HFQ*RY_P; 39 -HFQ*DROP_OCQ_Y; 23 -HFQ*TY_Q_
46 -HFQ*DROP_OCR_Y; 8 +CDQ*TY_Q_; 24 -DFQ*L3; 27 -DFQ*L4
31 -DFQ*L24; 25 -DFQ*L28; 5 -DFQ*RY_P; 25 -DFQ*DROP_OCR_Y
1 -DZQ*L23; 17 -HFR*L1; 41 -HFR*L4; 3 -HFR*L10
7 -HFR*L21; 26 -HFR*TY_Q_; 10 +OQR*L3; 1 +OQR*L8
1 +OQR*L10; 6 +OQR*L14; 35 +OQR*L18; 24 +OQR*L21
33 +OQR*L27; 1 +OQR*L28; 1 +OQR*L33; 22 +OQR*DROP_OHP_YZR
33 +OQR*DROP_OCR_Y; 25 -DPQ*L1; 72 -DPQ*L6; 29 -DPQ*L18
54 -DPQ*L23; 26 -DPQ*L27; 73 -DPQ*RX_P; 1 -DPQ*RY_P
51 -DPQ*DROP_OCQ_Y; 72 -DPQ*TX_Q_; 18 -CYZ*L3; 1 -CYZ*L4
27 -CYZ*L8; 3 -CYZ*L10; 7 -CYZ*L22; 37 -CYZ*L24
37 -CYZ*L25; 6 -CYZ*L27; 35 -CYZ*DROP_OHP_YZR; 2 -OYP*L17
10 -OYP*L24; 1 -OYP*L27; 1 -OYP*L28; 28 -OYP*L33
7 -OYP*-OHD; 2 -OYP*TY_Q_; 1 -OYP*DROP_OCR_Y; 1 +OYQ*L8
6 -HPR*L7; 6 -HPR*L12; 30 -HPR*L17; 18 -HPR*L20
17 -HPR*-OHD; 78 -HPR*+OCF; 30 -HPR*RX_P; 23 -HPR*DROP_OCQ_Y
13 -HPR*TY_Q_; 3 -CFR*L8; 7 -CFR*L14; 29 -CFR*L19
19 -CFR*L21; 27 -CFR*L27; 7 -CFR*L32; 2 -CFR*+OCF
108 -CFR*C_OHD_ZR; 49 -CFR*DROP_OHP_YZR; 14 -CFR*RY_P; 27 -CFR*DROP_OCQ_Y
27 -CFR*DROP_OCR_Y; 7 +OYR*L5; 6 +OYR*L6; 6 +OYR*L18
5 +OYR*L31; 10 +OYR*RX_P; 1 +CPQ*L30; 1 +CPR*L30
24 +DQR*L2; 10 -YZR*L2; 1 +YPR*L28; 2 -FPR*L2
2 +YQR*L0; 1 +YQR*L18; 11 +ZPR*L31; 1 C_OFP_YR*L12
9 C_OZP_Y*L12; 5 TPX_Q_*L23; 7 TPX_Q_*L25; 10 Q_OYFH_Z*L14
3 Q_OYFH_Z*L18; 2 Q_OYFH_Z*L22; 30 Q_OPFH_YZR*TY_Q_; 52 Q_OQFH_ZR*L17
28 Q_ORFH_Z*L17; 2 Q_OCDR_Y*L23; 9 Q_OCPZ_Y*L30; 3 Q_OPDR_Y*L6
5 M_HOPYZR_-1_3*L18; 4 M_HOPYZR_-1_3*L23; 5 M_HOPYZR_-1_3*L31
```

Upper bound: `-96411113/145600000`.

### Leaf RTUmmpmmmpmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPR +CFR -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDZQ +ODZ
P OHDQR +ODR
P OHFZR -OFR
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P HODPR -HDR
P HODQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOCPR -FPR
P FOCQR -FQR
P FODPQ +FPQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZOHFR -ZFR
P ZODPQ +ZPQ
P POHQR +PQR
P QOHYR -QYR
C OFY Z R +FYR 101661/147500
M OHPRZY 1
M OPHRYZ -1
M HOPYZR -1
M HPOYRZ 1
M POHZYR 1
M PHOZRY -1
M OCFRYZ -1
M OFCRZY 1
M COFZYR 1
M CFOZRY -1
M FOCYZR -1
M FCOYRZ 1
M OFPRZY 1
M OPFRYZ -1
M FOPYZR -1
M FPOYRZ 1
M POFZYR 1
M PFOZRY -1
```

```c1top-bounds
T OCF YZR 1 lower 823/1000
T OCZ Y 7 lower 93/295
T OHP YZR 0 lower 823/1000
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 823/1000 1
c 823/1000 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
16 L0*L1*L16; 4 L0*L2*L35; 5 L0*L3*L30; 2 L0*L4*L31
1 L0*L5*L18; 6 L0*L5*L20; 2 L0*L5*TY_Q_; 1 L0*L12*L17
1 L0*L14*L23; 6 L0*TX_Q_*TY_Q_; 1 L1*L1*L12; 6 L1*L3*L20
3 L1*L6*L15; 14 L1*L6*RY_P; 8 L1*L8*RX_P; 1 L1*L10*C_OHD_ZR
4 L1*L10*RX_P; 3 L1*L12*L23; 51 L1*L17*L17; 8 L1*L17*L18
4 L1*L17*L20; 13 L1*L17*L28; 9 L1*L18*L30; 3 L1*L23*TX_Q_
11 L1*L26*RX_P; 1 L1*L28*L30; 1 L1*L28*L35; 1 L1*L30*DROP_OCR_Y
4 L2*L4*L13; 5 L2*L6*L23; 5 L2*L6*TY_Q_; 68 L2*L17*TY_Q_
111 L2*L17*DROP_OCR_Y; 21 L2*L19*L28; 1 L2*L22*L30; 16 L2*L24*RY_P
4 L2*L28*L36; 16 L2*C_OHD_ZR*TY_Q_; 2 L3*L4*L14; 30 L3*L4*L17
43 L3*L11*L17; 1 L3*L14*L18; 36 L3*L17*L18; 21 L3*L18*L22
44 L3*L18*DROP_OCR_Y; 5 L3*L20*L28; 1 L3*L26*L29; 31 L3*L26*TY_Q_
39 L4*L4*L17; 26 L4*L6*TY_Q_; 99 L4*L17*L20; 57 L4*L17*L23
16 L4*L17*L24; 42 L4*L17*L32; 22 L4*L17*RY_P; 38 L4*L17*DROP_OCQ_Y
4 L4*L24*L28; 11 L5*L6*L18; 41 L5*L11*L17; 2 L5*L12*RY_P
4 L5*L12*TY_Q_; 5 L5*L13*L18; 1 L5*L18*L36; 7 L5*L21*L26
47 L5*L21*L28; 1 L5*L24*TY_Q_; 40 L5*L26*RX_P; 1 L5*L34*RY_P
160 L5*DROP_OHP_YZR*TY_Q_; 7 L5*RX_P*TY_Q_; 7 L6*L10*L17; 3 L6*L15*L23
28 L6*L17*DROP_OCR_Y; 14 L6*L19*TY_Q_; 1 L7*L8*L14; 1 L10*L12*L15
2 L10*L28*DROP_OHP_YZR; 2 L11*L17*L34; 8 L12*L18*L19; 1 L12*L22*L30
2 L12*L23*L23; 1 L12*L23*L36; 5 L12*L26*RY_P; 1 L12*L34*TY_Q_
4 L12*TY_Q_*DROP_OCR_Y; 2 L14*L17*L35; 3 L14*L21*DROP_OCR_Y; 2 L14*L23*L24
2 L14*L26*RX_P; 14 L15*L17*L17; 2 L15*L17*DROP_OCR_Y; 2 L15*L23*TY_Q_
42 L17*L17*DROP_OCR_Y; 100 L17*L18*L24; 31 L17*L18*L26; 8 L17*L18*L32
60 L17*L20*L23; 60 L17*L20*DROP_OCQ_Y; 6 L17*L21*L32; 20 L17*L22*L23
24 L17*L22*L25; 32 L17*L23*L26; 22 L17*L23*RY_P; 58 L17*L27*DROP_OHP_YZR
3 L17*L29*C_OHD_ZR; 2 L17*L32*L33; 14 L17*L34*DROP_OHP_YZR; 2 L17*L36*-OHD
31 L17*RY_P*DROP_OCR_Y; 24 L17*TX_Q_*DROP_OCR_Y; 19 L18*L18*L21; 8 L18*L20*RY_P
19 L18*L21*L28; 73 L18*L21*TY_Q_; 39 L18*L21*DROP_OCR_Y; 8 L18*L30*RY_P
48 L18*RX_P*TY_Q_; 26 L21*L28*TY_Q_; 3 L21*L28*DROP_OCR_Y; 1 L22*L28*TX_Q_
1 L23*L24*L28; 1 L23*L28*L34; 1 L23*L30*+OCF; 8 L26*DROP_OHP_YZR*TY_Q_
2 L36*TY_Q_*TY_Q_; 53 RX_P*TY_Q_*TY_Q_; 2 KLOW*L14; 2 CENT*L4
39 QUADR*L17; 1 +HDF*L8; 10 +OYZ*L18; 9 -HYZ*L18
1 -HYZ*L29; 3 -HYZ*DROP_OHP_YZR; 3 -HFZ*L14; 23 -CDP*L1
55 -CDP*L5; 12 -CDP*L11; 99 -CDP*L20; 60 -CDP*L22
16 -CDP*L24; 5 -CDP*L28; 5 -CDP*TX_Q_; 72 -CDP*DROP_OCR_Y
5 -CYP*L6; 27 -HFQ*L5; 63 -HFQ*L18; 16 -HFQ*L23
53 +CDQ*L23; 1 -DFQ*L8; 6 -DFQ*C_OHD_ZR; 5 -DFQ*DROP_OHP_YZR
26 -DFQ*RY_P; 5 -DFQ*DROP_OCQ_Y; 1 +HDQ*L3; 6 +HCR*L19
1 +HCR*+OCF; 139 +HCR*DROP_OHP_YZR; 20 +HCR*RY_P; 53 +HCR*DROP_OCQ_Y
21 +HCR*TY_Q_; 11 +HCR*DROP_OCR_Y; 1 -HFR*L14; 3 +OQR*L14
29 +OQR*L18; 3 +OQR*C_OHD_ZR; 44 +OQR*DROP_OHP_YZR; 98 -DPQ*L3
97 -DPQ*L4; 114 -DPQ*L5; 1 -DPQ*L10; 26 -DPQ*L18
82 -DPQ*L28; 1 -DPQ*L35; 73 -DPQ*DROP_OCQ_Y; 11 -DPQ*DROP_OCR_Y
21 -OYP*L22; 18 -OYP*L23; 1 -OYP*L33; 8 -OYP*RY_P
5 -OYP*TX_Q_; 9 -OZR*L16; 2 -OZR*L19; 1 -OZR*L34
5 -OZR*RY_P; 6 -OZR*TY_Q_; 1 -HPR*L2; 10 -HPR*L23
100 -HPR*DROP_OHP_YZR; 84 -HPR*DROP_OCQ_Y; 11 -HPR*DROP_OCR_Y; 2 +CFR*L15
43 +CFR*L22; 5 +CFR*-OHD; 3 +CFR*C_OHD_ZR; 5 +CFR*RX_P
11 +CFR*DROP_OCR_Y; 1 -OFZ*L14; 7 -OFZ*L18; 6 -OFZ*L22
4 -OFZ*L34; 2 -OFZ*-OHD; 2 -OFZ*DROP_OCR_Y; 3 +ODR*L5
25 +CQR*L17; 4 -DYR*L18; 2 -FYZ*TY_Q_; 1 -YZR*L14
2 -YZR*L22; 2 +FYR*TY_Q_; 16 C_OFQ_ZR*L14; 12 C_OFQ_ZR*L22
42 C_OFQ_ZR*L28; 16 C_OFQ_ZR*L34; 10 C_OFQ_ZR*-OHD; 75 C_OFQ_ZR*RY_P
5 C_OFR_Z*L0; 55 C_HCF_R*L22; 2 C_HCF_R*L27; 9 C_HCF_R*DROP_OHP_YZR
12 C_HCF_R*RY_P; 1 C_HCP_R*L3; 36 C_HCP_R*L17; 8 C_HCP_R*TY_Q_
23 TPY_Q_*L18; 2 Q_OCFH_YZR*L1; 1 Q_OCFH_YZR*L13; 2 Q_OCFH_YZR*L28
65 Q_OCFH_YZR*RY_P; 47 Q_OCFH_YZR*TY_Q_; 1 Q_OCPH_YZR*L14; 6 Q_OCPH_YZR*L21
5 SP_OCQH_YR_OQ1*L17; 7 Q_OYFH_Z*L17; 9 Q_OCRZ_Y*L17; 2 Q_OYRF_Z*L18
1 Q_OYRF_Z*L34; 5 Q_HYQF_R*L17; 12 M_FCOYRZ_1_2*L4; 10 M_FCOYRZ_1_2*L19
6 M_FCOYRZ_1_2*L20; 5 M_FCOYRZ_1_2*L29; 43 M_FCOYRZ_1_2*DROP_OHP_YZR; 4 M_FCOYRZ_1_3*L2
4 M_FCOYRZ_1_4*L3; 2 M_FCOYRZ_1_4*RY_P; 2 M_HOPYZR_-1_0*L34; 4 M_HOPYZR_-1_4*TY_Q_
5 M_PFOZRY_-1_0*L15; 41 M_PFOZRY_-1_0*L22; 11 M_PFOZRY_-1_0*L26; 1 M_PFOZRY_-1_4*L2
```

Upper bound: `-2236767593/7000000000`.

### Leaf RTUmmpmmmpmpmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPR +CFR -ODY +OFZ -OFR -DZR`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHYQR +OYR
P HODPQ +HPQ
P HODPR -HDR
P HODQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHYZ -FYZ
P FOHZR +FZR
P FOCPR -FPR
P FOCQR -FQR
P FODPQ +FPQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODPR +ZPR
P POHQR +PQR
P QOHYR -QYR
M OHPRZY 1
M OPHRYZ -1
M HOPYZR -1
M HPOYRZ 1
M POHZYR 1
M PHOZRY -1
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHP YZR 0 lower 823/1000
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
S Q - 2 upper 628/721
Y Q - 11 lower 7233571/12759537
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 283/500 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
13 L0*L12*L29; 75 L0*L17*L30; 40 L1*L1*L2; 52 L1*L1*L6
40 L1*L1*L25; 38 L1*L2*L5; 39 L1*L2*L21; 51 L1*L2*L23
119 L1*L3*L12; 6 L1*L3*RY_P; 30 L1*L6*L8; 95 L1*L6*L15
8 L1*L6*L17; 18 L1*L6*L18; 36 L1*L6*L21; 13 L1*L6*L23
55 L1*L6*L29; 27 L1*L6*RY_P; 79 L1*L6*DROP_OCR_Y; 30 L1*L8*L8
30 L1*L8*L10; 9 L1*L8*L27; 30 L1*L8*L36; 13 L1*L8*RX_P
19 L1*L10*L17; 61 L1*L12*L17; 72 L1*L12*L21; 59 L1*L12*L27
13 L1*L12*DROP_OCR_Y; 52 L1*L14*L21; 10 L1*L15*L24; 43 L1*L17*L19
26 L1*L17*L20; 17 L1*L17*L27; 48 L1*L17*L33; 3 L1*L18*L31
4 L1*L20*L24; 91 L1*L21*L21; 30 L1*L21*L30; 41 L1*L21*DROP_OCR_Y
29 L1*L24*RY_P; 16 L1*L24*TY_Q_; 10 L1*L25*L30; 80 L1*L27*RX_P
30 L1*L30*L35; 63 L1*L34*RX_P; 76 L1*DROP_OHP_YZR*TY_Q_; 17 L2*L2*L15
145 L2*L5*L12; 30 L2*L6*L34; 47 L2*L6*TY_Q_; 180 L2*L14*L17
129 L2*L17*RY_P; 12 L2*L17*DROP_OCR_Y; 161 L2*L19*L24; 133 L2*L24*RY_P
5 L2*L25*TY_Q_; 24 L2*L27*L34; 95 L2*L27*RY_P; 84 L2*L27*TY_Q_
126 L2*L31*RY_P; 17 L3*L3*L10; 1 L3*L5*L10; 34 L3*L7*L14
33 L3*L11*L17; 1 L3*L11*L23; 137 L3*L12*TY_Q_; 1 L3*L14*L18
1 L3*L14*L23; 148 L3*L17*L17; 4 L3*L18*L18; 23 L3*L18*L30
4 L4*L4*L31; 36 L4*L6*L17; 18 L4*L6*L31; 6 L4*L6*L36
4 L4*L6*TY_Q_; 8 L4*L17*L17; 78 L4*L17*L24; 16 L4*L17*L27
15 L4*L17*L34; 5 L4*L17*C_OHD_ZR; 91 L4*L17*DROP_OCQ_Y; 28 L4*L20*L31
9 L4*L23*TX_Q_; 34 L5*L5*L12; 59 L5*L5*L21; 2 L5*L8*L18
35 L5*L12*L22; 29 L5*L12*L27; 41 L5*L12*L30; 24 L5*L14*L21
33 L5*L17*L18; 55 L5*L18*L21; 9 L5*L21*TY_Q_; 19 L5*L26*L30
34 L5*L30*TY_Q_; 15 L6*L6*L15; 127 L6*L6*TY_Q_; 8 L6*L17*L26
13 L6*L18*L21; 4 L6*L20*RY_P; 129 L6*L21*TY_Q_; 3 L6*L24*L36
29 L6*L24*RY_P; 4 L6*RY_P*RY_P; 16 L7*L8*L14; 49 L7*L8*L23
27 L7*L12*L14; 4 L7*L18*L18; 15 L7*L23*L29; 31 L7*L23*TX_Q_
23 L8*L10*L17; 33 L8*L18*TY_Q_; 6 L8*L23*L28; 6 L8*L28*TY_Q_
6 L10*L12*L23; 6 L10*L14*L17; 113 L10*L17*L20; 33 L10*L17*L22
176 L10*L17*L24; 23 L10*L17*L28; 27 L10*L17*DROP_OCR_Y; 6 L10*L20*L27
3 L11*L12*L24; 12 L11*L17*L18; 41 L12*L12*L23; 41 L12*L12*TY_Q_
6 L12*L14*TY_Q_; 23 L12*L15*L17; 36 L12*L17*L22; 4 L12*L18*L27
23 L12*L18*L30; 137 L12*+OCF*TY_Q_; 54 L12*TY_Q_*DROP_OCR_Y; 95 L14*L14*L17
15 L14*L17*L22; 32 L14*L17*L27; 95 L14*L17*L34; 20 L14*L18*L21
48 L14*L21*L26; 17 L14*L29*L30; 6 L14*L30*TY_Q_; 148 L17*L17*+OCF
114 L17*L18*L20; 49 L17*L18*L23; 7 L17*L18*L31; 4 L17*L18*DROP_OCR_Y
75 L17*L20*L23; 20 L17*L20*L27; 33 L17*L21*TY_Q_; 29 L17*L23*L24
51 L17*L23*L26; 55 L17*L23*+OCF; 114 L17*L23*DROP_OHP_YZR; 35 L17*L23*RY_P
149 L17*L24*-OHD; 10 L17*L25*L34; 88 L17*L27*L30; 47 L17*L28*RY_P
115 L17*L29*TY_Q_; 23 L17*L30*L32; 7 L17*L35*RY_P; 36 L17*L36*TY_Q_
14 L18*L20*RY_P; 1 L18*L21*L24; 50 L18*L21*L26; 16 L18*L25*L30
1 L18*L25*TY_Q_; 27 L18*L26*L30; 109 L20*L20*RY_P; 47 L20*L24*RY_P
113 L20*L31*RY_P; 9 L21*L21*TY_Q_; 1 L21*L27*TY_Q_; 1 L23*L24*TY_Q_
9 L23*TX_Q_*TX_Q_; 91 L24*L31*RY_P; 13 L26*L30*RX_P; 6 L26*L30*TY_Q_
1 L31*L34*RY_P; 4 L31*RY_P*RY_P; 1 CENT*L5; 17 +OYZ*L12
88 -HYZ*L24; 55 +OCY*L1; 46 -CDP*L2; 9 -CDP*L4
173 -CDP*L20; 85 -CDP*L24; 79 -CDP*L31; 86 -CYP*L1
13 -HFQ*L4; 30 -HFQ*L8; 41 -HFQ*L12; 52 -HFQ*L14
8 -HFQ*L19; 91 -HFQ*L21; 18 -HFQ*L25; 77 -HFQ*L27
55 -HFQ*L29; 24 -HFQ*+OCF; 45 -HFQ*RX_P; 117 -HFQ*DROP_OCR_Y
33 +CDQ*L1; 30 -DFQ*L1; 28 -DFQ*L2; 127 -DFQ*L6
23 -DFQ*L10; 3 -DFQ*L14; 11 -DFQ*L20; 18 -DFQ*L24
23 -DFQ*L35; 58 -DFQ*-OHD; 134 -DFQ*DROP_OHP_YZR; 16 -DFQ*DROP_OCR_Y
12 +HCR*L4; 18 +HCR*L6; 9 +HCR*L11; 95 +HCR*L19
5 +HCR*L20; 32 +HCR*L22; 13 +HCR*L30; 24 +HCR*L34
80 +HCR*-OHD; 348 +HCR*DROP_OHP_YZR; 52 +HCR*DROP_OCQ_Y; 145 +HZR*L2
29 +HZR*L6; 5 +OQR*L3; 6 +OQR*L10; 48 +OQR*L14
67 +OQR*L18; 1 +OQR*L23; 64 -DPQ*L1; 17 -DPQ*L6
20 -DPQ*L14; 14 -DPQ*L18; 109 -DPQ*L20; 109 -DPQ*L23
29 -DPQ*L24; 17 -DPQ*L27; 55 -DPQ*L28; 54 -DPQ*DROP_OHP_YZR
60 -DPQ*RX_P; 109 -DPQ*DROP_OCQ_Y; 17 -CYZ*L2; 17 -CYZ*L12
39 -CYZ*L14; 146 -CYZ*L23; 39 -CYZ*L34; 180 -CYZ*DROP_OHP_YZR
145 -CYZ*DROP_OCQ_Y; 15 -OYP*L6; 6 -OYP*L14; 4 -OYP*L19
98 -OYP*L20; 186 -OYP*L24; 167 -OYP*L33; 90 -OYP*-OHD
46 -OYP*+OCF; 2 -OYP*DROP_OCQ_Y; 15 -OYP*TX_Q_; 30 -OYP*TY_Q_
27 -OYP*DROP_OCR_Y; 16 -OZR*RY_P; 49 -HPR*L1; 29 -HPR*L6
111 -HPR*L8; 189 -HPR*L12; 32 -HPR*L14; 4 -HPR*L19
20 -HPR*L20; 1 -HPR*L28; 300 -HPR*L33; 111 -HPR*-OHD
68 -HPR*DROP_OCQ_Y; 85 -ODY*L5; 12 -ODY*L14; 49 -ODY*L18
118 -ODY*L20; 179 -ODY*L24; 46 -ODY*L33; 7 -ODY*L34
72 -ODY*DROP_OHP_YZR; 54 -ODY*RY_P; 34 -ODY*DROP_OCQ_Y; 25 -ODY*DROP_OCR_Y
92 +OFZ*L1; 5 +OFZ*L3; 33 +OFZ*L8; 10 +OFZ*L12
71 +OFZ*L22; 10 +OFZ*RY_P; 24 +OFZ*TY_Q_; 32 -OFR*L0
28 -OFR*L2; 36 -OFR*L17; 10 -OFR*L19; 16 -OFR*L23
15 -OFR*L29; 36 -DZR*L1; 47 -DZR*L6; 88 -DZR*L8
1 -DZR*L18; 35 -DZR*-OHD; 145 -DZR*+OCF; 36 -DZR*DROP_OHP_YZR
1 -DZR*RY_P; 1 -DZR*TY_Q_; 85 +OYR*L12; 6 +OYR*L18
13 +OYR*L23; 55 +FZR*L1; 16 +FZR*L4; 15 +FZR*L6
10 +FZR*L18; 40 +FZR*L23; 8 +FZR*L27; 8 +FZR*DROP_OCR_Y
9 -YZR*L1; 36 C_OHF_Z*L1; 209 C_OHR_Z*L17; 52 C_OCD_Y*L17
15 TPY_Q_*L1; 8 TPY_Q_*L18; 41 TPY_Q_*L30; 81 Q_OQFH_ZR*L17
16 Q_ORFH_Z*L1; 10 Q_ORFH_Z*L2; 122 Q_OCPD_Y*L17; 167 Q_OCPZ_Y*L8
23 Q_OCPZ_Y*L30; 36 Q_OCRZ_Y*L17; 10 M_HOPYZR_-1_3*L17; 6 M_HOPYZR_-1_3*L18
7 M_HOPYZR_-1_3*L23
```

Upper bound: `-244020773/500000000`.

### Leaf RTUmmpmmmpmpmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPR +CFR -ODY +OFZ -OFR +DZR`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHYQR +OYR
P HODPQ +HPQ
P HODPR -HDR
P HODQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHYZ -FYZ
P FOHZR +FZR
P FOCPR -FPR
P FOCQR -FQR
P FODPQ +FPQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODQR -ZQR
P POHQR +PQR
P QOHYR -QYR
M OHPRZY 1
M OPHRYZ -1
M HOPYZR -1
M HPOYRZ 1
M POHZYR 1
M PHOZRY -1
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHP YZR 0 lower 823/1000
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
S Q - 2 upper 628/721
Y Q - 11 lower 7233571/12759537
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 283/500 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
6 L0*L2*RX_P; 2 L0*L2*TX_Q_; 66 L0*L2*TY_Q_; 7 L0*L12*L21
2 L0*L15*L18; 2 L0*L17*L34; 15 L0*L18*L29; 76 L1*L1*L6
39 L1*L1*L17; 72 L1*L2*DROP_OCR_Y; 33 L1*L3*L6; 2 L1*L3*L31
8 L1*L4*L21; 26 L1*L4*L25; 5 L1*L4*L30; 5 L1*L6*L13
4 L1*L6*L24; 10 L1*L6*L26; 40 L1*L6*L29; 15 L1*L6*RY_P
42 L1*L6*DROP_OCQ_Y; 14 L1*L7*L17; 4 L1*L8*-OHD; 21 L1*L12*L24
33 L1*L17*L21; 57 L1*L17*L23; 18 L1*L17*L30; 17 L1*L17*L35
166 L1*L17*DROP_OHP_YZR; 61 L1*L18*L21; 75 L1*L18*L24; 40 L1*L21*L21
104 L1*L21*L22; 45 L1*L21*L24; 6 L1*L21*DROP_OCR_Y; 46 L1*L24*L28
9 L1*L24*L34; 3 L1*L24*L35; 5 L1*L24*RX_P; 12 L1*L24*TY_Q_
13 L1*L26*L30; 7 L1*L34*RX_P; 7 L2*L2*L23; 11 L2*L3*L10
4 L2*L3*L34; 14 L2*L5*L24; 11 L2*L5*RY_P; 4 L2*L6*L28
1 L2*L9*L12; 9 L2*L10*L13; 10 L2*L14*L27; 4 L2*L17*DROP_OCQ_Y
20 L2*L19*TY_Q_; 11 L2*L22*L23; 63 L2*L24*L28; 15 L2*L27*TY_Q_
11 L2*TY_Q_*TY_Q_; 1 L3*L3*L12; 12 L3*L10*L18; 66 L3*L12*L18
2 L3*L12*L27; 11 L3*L15*L17; 1 L3*L17*L36; 1 L3*L18*L26
70 L4*L4*L17; 41 L4*L6*TY_Q_; 4 L4*L12*RY_P; 13 L4*L17*L17
34 L4*L17*L21; 70 L5*L5*L16; 2 L5*L8*L14; 2 L5*L8*L26
130 L5*L18*L21; 107 L5*L21*TY_Q_; 3 L5*L24*L30; 203 L5*DROP_OHP_YZR*TY_Q_
74 L6*L6*TY_Q_; 4 L6*L18*L21; 82 L6*L21*TY_Q_; 83 L6*L22*TY_Q_
45 L6*L24*TY_Q_; 45 L6*DROP_OHP_YZR*TY_Q_; 29 L6*RY_P*TY_Q_; 13 L7*L23*L29
42 L7*L23*TX_Q_; 1 L8*L18*L36; 10 L9*L12*L28; 5 L9*L17*L27
10 L9*L18*L18; 5 L10*L17*RY_P; 7 L10*L17*DROP_OCR_Y; 10 L10*L18*RX_P
4 L10*L24*L28; 13 L10*L24*L34; 5 L11*L12*-OHD; 12 L11*L16*L17
2 L12*L13*L18; 247 L12*L17*L17; 235 L12*L17*RY_P; 146 L12*L17*TY_Q_
66 L12*L19*RY_P; 4 L12*L19*TY_Q_; 1 L12*L31*RX_P; 7 L12*C_OHD_ZR*TX_Q_
109 L12*RY_P*DROP_OCQ_Y; 4 L12*TY_Q_*DROP_OCR_Y; 20 L14*L16*TY_Q_; 66 L14*L17*L21
94 L14*L17*L23; 1 L14*L17*L32; 2 L14*L18*L34; 71 L15*L17*L20
20 L15*L17*RY_P; 4 L15*L24*TY_Q_; 5 L16*L23*TY_Q_; 247 L17*L17*L36
81 L17*L17*DROP_OCR_Y; 46 L17*L18*L21; 10 L17*L18*L23; 81 L17*L18*L24
12 L17*L18*L30; 47 L17*L19*L34; 8 L17*L20*L28; 19 L17*L21*L27
19 L17*L23*L24; 8 L17*L23*L26; 7 L17*L23*L29; 7 L17*L25*L36
7 L17*L26*L36; 7 L17*L27*L28; 14 L17*L29*C_OHD_ZR; 1 L17*L30*L36
30 L17*L31*-OHD; 5 L17*L31*DROP_OCR_Y; 4 L17*L34*L34; 10 L18*L18*L21
5 L18*L18*L31; 5 L18*L21*L23; 43 L18*L21*L26; 54 L18*L21*L28
46 L18*L21*RX_P; 14 L18*L24*TY_Q_; 7 L18*L26*L30; 10 L18*L28*RX_P
1 L18*L30*+OCF; 2 L18*L36*L36; 27 L21*L23*L23; 27 L21*L23*TY_Q_
22 L23*L28*L29; 7 L23*L29*RX_P; 7 L24*L28*L30; 22 L26*RX_P*TY_Q_
17 L31*L34*L34; 2 KLOW*L0; 13 KLOW*L3; 16 KLOW*L19
10 KLOW*L27; 7 KLOW*L31; 3 KLOW*DROP_OCQ_Y; 10 CENT*L18
13 CENT*DROP_OCR_Y; 30 QUADR*L17; 22 -HYZ*L17; 4 -HYZ*L26
22 -HYZ*-OHD; 8 -HYZ*+OCF; 113 -OHZ*L17; 41 -OHZ*L27
22 -OHZ*L32; 8 -OHZ*L35; 41 +OCP*L21; 4 +OCP*L26
2 -HFP*L12; 26 -CDP*L1; 64 -HDP*L12; 9 -CYP*L0
7 -CYP*L3; 8 -CYP*L12; 27 -CYP*L13; 17 -CYP*L14
17 -CYP*L17; 9 -CYP*L24; 3 -CYP*L27; 5 -CYP*RY_P
5 +DYP*L17; 38 -HFQ*L3; 69 -HFQ*L5; 40 -HFQ*L21
35 -HFQ*L23; 4 -HFQ*L24; 10 -HFQ*L26; 40 -HFQ*L29
139 -HFQ*DROP_OCQ_Y; 71 -DFQ*L4; 74 -DFQ*L6; 41 -DFQ*L16
40 -DFQ*L24; 4 -DFQ*+OCF; 84 -DFQ*C_OHD_ZR; 29 -DFQ*RY_P
81 -DFQ*DROP_OCQ_Y; 41 +HCR*L3; 17 +HCR*L11; 24 +HCR*L14
46 +HCR*L22; 40 +HCR*L28; 26 +HCR*L33; 37 +HCR*-OHD
5 +HCR*C_OHD_ZR; 35 +HCR*DROP_OHP_YZR; 4 -CYR*L4; 10 -CYR*L12
9 -CYR*L17; 183 +OQR*L1; 47 +OQR*L4; 77 +OQR*L17
4 +OQR*L21; 4 +OQR*L23; 186 +OQR*C_OHD_ZR; 70 +OQR*RY_P
4 +OQR*TX_Q_; 7 -DPQ*L1; 4 -DPQ*L6; 150 -DPQ*L17
10 -DPQ*L18; 230 -DPQ*L23; 96 -DPQ*L24; 146 -DPQ*L30
146 -DPQ*L31; 150 -DPQ*RX_P; 22 -DPQ*DROP_OCQ_Y; 203 -DPQ*TY_Q_
113 -DPQ*DROP_OCR_Y; 37 -CYZ*L16; 8 -CYZ*L19; 10 -CYZ*L25
17 -CYZ*L34; 4 -CYZ*RX_P; 18 -OYP*L2; 1 -OYP*L34
27 -HPR*L4; 9 -HPR*L8; 8 -HPR*L10; 3 -HPR*L14
40 -HPR*L20; 48 -HPR*L23; 54 -HPR*L33; 28 -HPR*-OHD
57 -HPR*RY_P; 78 -HPR*DROP_OCQ_Y; 10 +CFR*L22; 2 -ODY*L14
13 -ODY*L17; 6 -ODY*L26; 67 +DZR*L5; 70 +DZR*L6
10 +DZR*L8; 46 +DZR*L14; 88 +DZR*L17; 67 +DZR*L20
46 +DZR*L34; 77 +DZR*+OCF; 70 +DZR*RY_P; 109 +DZR*DROP_OCQ_Y
70 +DZR*TX_Q_; 54 -DPR*L12; 4 +DQR*L6; 4 +DQR*TY_Q_
75 +ZPR*L1; 68 +ZPR*L2; 18 +ZPR*L10; 4 +ZPR*L15
81 +ZPR*L17; 67 +ZPR*L19; 137 +ZPR*L20; 95 +ZPR*-OHD
114 +ZPR*DROP_OCQ_Y; 76 C_OHF_Z*L1; 166 C_HZP_R*L17; 18 C_HZP_R*L31
30 TPY_Q_*L5; 45 TPY_Q_*L23; 1 Q_OCPH_YZR*L2; 26 Q_OCPH_YZR*L28
20 Q_OCPH_YZR*TY_Q_; 5 Q_OYDZ_R*L18; 5 SP_OPDZ_YR_OD1*L1; 8 SP_OPDZ_YR_OD1*L17
4 SP_OPDZ_YR_PZ-1*L2; 9 Q_OPDQ_Y*L12; 4 M_HOPYZR_-1_3*L34; 10 M_HOPYZR_-1_4*L18
```

Upper bound: `-3027706809/22750000000`.

### Leaf RTUmmpmmmpmpp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPR +CFR -ODY +OFZ +OFR`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDFR +ODR
P OHDYR +OYR
P OHDZP -OZP
P HODPQ +HPQ
P HODPR -HDR
P HODQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHYZ -FYZ
P FOHYR -FYR
P FOHPR -FPR
P FOHQR -FQR
P FODPQ +FPQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YOFQR +YQR
P ZODPQ +ZPQ
P POHQR +PQR
M OHPRZY 1
M OPHRYZ -1
M HOPYZR -1
M HPOYRZ 1
M POHZYR 1
M PHOZRY -1
```

```c1top-bounds
T OHF ZR 0 lower 6903218/8301179
T OHF ZR 3 lower 347/500
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
S Q - 2 upper 71/102
X Q - 10 lower 8549039/9947000
Y Q - 11 lower 26257/35394
```

```c1top-box
h 831/1000 1
c 347/500 177/200
d 437/1000 697/1000
f 347/500 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 859/1000 1
m 741/1000 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
1 L1*L2*L28; 1 L1*L4*L24; 1 L1*L5*DROP_OCQ_Y; 4 L1*L6*+OCF
2 L1*L6*C_OHD_ZR; 7 L1*L6*DROP_OCR_Y; 2 L1*L16*DROP_OCR_Y; 2 L1*L18*DROP_OHP_YZR
1 L1*L21*L23; 2 L1*L21*TY_Q_; 7 L1*L21*DROP_OCR_Y; 1 L1*L22*L24
1 L1*L23*L23; 1 L1*L23*TY_Q_; 8 L1*C_OCF_Y*DROP_OHP_YZR; 3 L1*DROP_OHP_YZR*DROP_OHP_YZR
1 L2*L2*L35; 6 L2*L2*RY_P; 1 L2*L5*RX_P; 2 L2*L6*L11
1 L2*L6*L15; 7 L2*L20*RY_P; 7 L2*L21*C_OHD_ZR; 6 L2*L27*DROP_OHP_YZR
2 L2*L29*DROP_OHQ_ZR; 2 L3*L18*L18; 1 L4*L9*L20; 4 L4*L17*DROP_OCR_Y
3 L4*C_OHD_ZR*TX_Q_; 26 L5*L6*DROP_OHP_YZR; 12 L5*L6*DROP_OCR_Y; 1 L5*L8*DROP_OHP_YZR
4 L5*L16*L21; 2 L5*L18*TX_Q_; 50 L5*L21*DROP_OHP_YZR; 1 L5*L27*L29
2 L5*+OCF*DROP_OHP_YZR; 2 L6*L19*TY_Q_; 4 L6*L27*RX_P; 1 L6*L34*RX_P
2 L7*L8*L18; 1 L7*L18*DROP_OCR_Y; 1 L8*L17*L18; 1 L10*L20*L21
1 L10*L20*TX_Q_; 1 L11*L20*L29; 46 L16*L16*TY_Q_; 1 L16*L19*L31
2 L17*L18*L22; 7 L17*L18*DROP_OHQ_ZR; 2 L17*L23*DROP_OCR_Y; 8 L18*L21*L29
37 L18*L21*DROP_OHP_YZR; 2 L18*L21*DROP_OCR_Y; 1 L18*L22*L29; 2 L18*-OHD*RX_P
2 L18*DROP_OHP_YZR*TY_Q_; 5 L19*L24*DROP_OHP_YZR; 2 L21*L29*+OCF; 1 L23*L24*DROP_OHP_YZR
1 L23*L25*L29; 3 L23*RX_P*RX_P; 1 L24*RX_P*DROP_OCQ_Y; 1 +OCY*L29
1 -HCY*L20; 1 +OCP*L1; 2 +OCP*L21; 1 -CDP*L2
9 -CDP*L20; 1 -CDP*C_OHD_ZR; 6 -CDP*C_OCF_Y; 12 -CDP*DROP_OHP_YZR
2 -CYP*L7; 2 -CYP*L21; 7 -HFQ*L3; 2 -HFQ*-OHD
8 -HFQ*C_OCF_Y; 7 -HFQ*DROP_OCR_Y; 6 -DFQ*L21; 3 -DFQ*L23
1 -DFQ*L25; 3 -DFQ*-OHD; 33 -DFQ*DROP_OHP_YZR; 3 -DFQ*RY_P
6 -DFQ*DROP_OHQ_ZR; 3 -DFQ*TY_Q_; 12 -DFQ*DROP_OCR_Y; 3 +HCR*L5
4 +HCR*L7; 8 +HCR*L21; 6 +HCR*DROP_OHP_YZR; 3 +HCR*RY_P
2 -DPQ*L18; 26 -DPQ*+OCF; 24 -DPQ*DROP_OHP_YZR; 20 -DPQ*RX_P
3 -DPQ*DROP_OCR_Y; 2 -OYP*L20; 4 -HPR*L7; 2 -HPR*L23
4 -HPR*C_OCF_Y; 5 -HPR*DROP_OHP_YZR; 1 -HPR*TY_Q_; 1 -ODY*DROP_OHP_YZR
1 -ODY*TX_Q_; 1 +OFR*L18; 4 +OFR*RX_P; 1 +OFR*RY_P
1 +CPQ*L2; 8 +CPQ*L6; 2 +CPQ*L18; 1 +CPR*L29
1 -FQR*L18; 9 C_ODP_Y*L20; 3 C_OPR_Y*L29; 1 C_HCP_R*L1
1 TPX_Q_*L24; 3 Q_OCPH_YZR*L3; 2 Q_OCPH_YZR*L17; 1 Q_OCPH_YZR*DROP_OCQ_Y
2 Q_OCPH_YZR*DROP_OCR_Y; 2 Q_OPDH_YZR*L29; 10 Q_OCPD_Y*L17; 5 Q_OCPD_Y*TX_Q_
```

Upper bound: `-8770079/162500000`.

### Leaf RTUmmpmmmpp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR -HPR +CFR +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHFYQ -OFY
P OHYQR +OYR
P HODPQ +HPQ
P HODPR -HDR
P HODQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHPR -DPR
P DOHQR +DQR
P FODPQ +FPQ
P FHCPR -FPR
P FHCQR -FQR
P YOHDR +YDR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCDZ +YDZ
P YOCZP -YZP
P ZODPQ +ZPQ
P POHQR +PQR
P QOHYR -QYR
M OHDRZY 1
M ODHRYZ -1
M HODYZR -1
M HDOYRZ 1
M DOHZYR 1
M DHOZRY -1
M OHPRZY 1
M OPHRYZ -1
M HOPYZR -1
M HPOYRZ 1
M POHZYR 1
M PHOZRY -1
```

```c1top-bounds
T OHD YZR 0 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 4379/10000 359/400
f 93/1000 4173/5000
u 279/1000 699/1000
v 21/200 5797/10000
z 93/1000 513/1000
w 197/625 7899/10000
p 8433/10000 1
q 21/200 371/625
l 347/500 1
m 1351/2500 1
r 279/1000 907/1000
t 197/625 907/1000
```

```c1top-sum
15 L1*L22; 22 L0*L1*RX_P; 2 L0*L1*TY_Q_; 10 L0*L20*L34
30 L1*L1*L10; 2 L1*L1*L22; 2 L1*L1*L28; 34 L1*L2*L11
64 L1*L2*L16; 25 L1*L2*L18; 42 L1*L2*L26; 6 L1*L2*TY_Q_
37 L1*L3*L3; 11 L1*L4*L33; 1 L1*L5*L12; 12 L1*L6*L7
7 L1*L6*L21; 14 L1*L6*+OCF; 19 L1*L8*L22; 2 L1*L8*L24
21 L1*L8*L33; 48 L1*L8*DROP_OCR_Y; 19 L1*L9*L26; 72 L1*L10*L17
22 L1*L10*L20; 30 L1*L10*L34; 30 L1*L11*L36; 34 L1*L12*L18
41 L1*L12*L23; 10 L1*L14*L29; 19 L1*L14*C_OCF_Y; 32 L1*L16*L18
12 L1*L17*L33; 12 L1*L17*DROP_OCQ_Y; 15 L1*L18*L25; 8 L1*L19*L24
19 L1*L20*L20; 7 L1*L20*L30; 3 L1*L21*L23; 4 L1*L21*L25
22 L1*L21*L26; 16 L1*L21*L33; 1 L1*L21*RX_P; 3 L1*L21*TY_Q_
4 L1*L24*L27; 13 L1*L24*RX_P; 6 L1*L24*RY_P; 19 L1*L24*DROP_OCQ_Y
2 L1*L25*L30; 20 L1*L27*L27; 20 L1*L27*L33; 20 L1*L27*DROP_OCR_Y
16 L1*L28*+OCF; 10 L1*L29*-OHD; 59 L1*L30*-OHD; 10 L1*L34*TX_Q_
2 L1*-OHD*-OHD; 197 L2*L2*RY_P; 3 L2*L2*TY_Q_; 3 L2*L4*L32
3 L2*L4*TY_Q_; 55 L2*L10*RX_P; 25 L2*L10*TY_Q_; 89 L2*L12*L17
31 L2*L12*L19; 89 L2*L17*L17; 191 L2*L17*L18; 66 L2*L17*L23
45 L2*L17*DROP_OCR_Y; 166 L2*L20*RY_P; 27 L2*L23*L24; 109 L2*L24*RY_P
27 L2*L24*TY_Q_; 19 L2*L27*TY_Q_; 43 L2*L30*RY_P; 9 L2*L34*L34
20 L2*L34*RX_P; 25 L2*L34*TY_Q_; 24 L3*L14*L18; 56 L3*L17*TY_Q_
3 L3*L18*TY_Q_; 9 L3*L23*L29; 7 L4*L8*L9; 40 L4*L8*L25
2 L4*L8*L28; 11 L4*L11*L17; 80 L4*L12*L17; 21 L4*L12*L31
107 L4*L17*L24; 103 L4*L17*+OCF; 170 L4*L17*DROP_OHP_YZR; 2 L4*L20*L23
4 L4*L20*L27; 17 L4*L27*L30; 3 L4*L29*+OCF; 1 L4*C_OCF_Y*TX_Q_
11 L5*L8*L23; 3 L5*L12*L21; 43 L5*L12*L23; 43 L5*L12*DROP_OCQ_Y
9 L6*L17*L17; 18 L6*L20*L23; 4 L8*L8*L19; 6 L8*L10*L17
21 L8*L14*L35; 62 L8*L14*RY_P; 62 L8*L14*TY_Q_; 1 L8*L20*L27
1 L8*L23*L25; 28 L8*L23*L26; 2 L8*L27*RY_P; 15 L9*L10*L30
19 L9*L12*L26; 8 L9*L15*L17; 66 L10*L12*L23; 41 L10*L12*L35
21 L10*L14*L30; 22 L10*L17*DROP_OCR_Y; 11 L10*L20*RX_P; 6 L10*L30*L31
23 L11*L12*L19; 4 L11*L12*L20; 4 L11*L15*L20; 29 L12*L14*L32
89 L12*L17*RX_P; 43 L12*L17*TY_Q_; 17 L12*L19*L32; 9 L12*L22*L29
1 L12*L24*L32; 17 L12*L28*DROP_OCR_Y; 41 L12*L32*L35; 20 L12*L32*DROP_OCR_Y
36 L13*L17*RY_P; 9 L14*L14*RX_P; 39 L14*L17*L17; 7 L14*L17*L31
32 L14*L17*DROP_OCQ_Y; 12 L14*L17*DROP_OCR_Y; 4 L15*L24*L24; 20 L15*L24*L35
12 L15*L24*RY_P; 9 L17*L17*TX_Q_; 18 L17*L17*TY_Q_; 18 L17*L18*L20
30 L17*L18*RY_P; 101 L17*L20*DROP_OHP_YZR; 4 L17*L20*DROP_OCR_Y; 92 L17*L21*RX_P
13 L17*L22*L31; 46 L17*L23*L24; 61 L17*L23*+OCF; 15 L17*L24*L27
5 L17*L27*L28; 17 L17*L27*-OHD; 3 L17*L28*L36; 32 L17*L28*RY_P
35 L17*L30*L30; 3 L17*L31*RY_P; 89 L17*L33*DROP_OHP_YZR; 9 L17*L34*L36
32 L17*L34*TY_Q_; 30 L17*RY_P*RY_P; 2 L17*RY_P*DROP_OCQ_Y; 2 L18*L18*L21
17 L18*L21*L26; 1 L18*L21*TY_Q_; 9 L18*L30*L30; 3 L18*L30*RX_P
1 L19*L20*L31; 1 L20*L23*RY_P; 42 L20*L24*RY_P; 17 L20*L27*RY_P
3 L20*C_OCF_Y*RY_P; 12 L23*L29*L29; 31 L23*L30*+OCF; 43 L23*L30*RX_P
15 L24*L24*RY_P; 35 L30*L30*DROP_OHP_YZR; 11 CENT*L18; 7 CENT*L26
5 TOPCOUNT*L12; 16 +HCF*L1; 91 +OYZ*L12; 49 -HYZ*L14
21 -HYZ*L31; 59 -HYZ*-OHD; 62 -HYZ*RY_P; 41 -HYZ*TY_Q_
3 +CDY*L17; 26 -OHZ*L11; 197 -CDP*L2; 113 -CDP*L4
117 -CDP*L5; 11 -CDP*L11; 35 -CDP*L14; 61 -CDP*L24
235 -CDP*DROP_OHP_YZR; 3 -CDP*DROP_OCQ_Y; 25 -CDP*DROP_OCR_Y; 6 -CYP*L30
3 -HFQ*L2; 3 -HFQ*L5; 6 -HFQ*L13; 19 -HFQ*L21
12 -HFQ*L29; 5 -DFQ*L13; 56 +HCR*L3; 32 +HCR*L24
32 +HCR*L25; 17 +HCR*L28; 9 +HCR*L36; 5 +HCR*-OHD
93 +HCR*DROP_OHP_YZR; 25 +HCR*RY_P; 19 +HCR*TY_Q_; 6 -HFR*L12
113 +HZR*L2; 12 +HZR*L15; 15 +HZR*L24; 18 +OPQ*L17
2 +OQR*L12; 21 +OQR*L18; 170 -DPQ*L2; 1 -DPQ*L4
4 -DPQ*L12; 2 -DPQ*L18; 46 -DPQ*L24; 21 -DPQ*L27
227 -CYZ*L4; 32 -CYZ*L12; 182 -CYZ*L23; 38 -CYZ*L28
13 -CYZ*+OCF; 68 -CYZ*RX_P; 206 -CYZ*TY_Q_; 17 -CYZ*DROP_OCR_Y
51 -OYP*L1; 10 -OYP*L2; 19 -OYP*L20; 1 +OYQ*L9
4 +OYQ*L14; 19 +OYQ*+OCF; 30 +OYQ*RX_P; 28 +OYQ*DROP_OCR_Y
32 -OZR*L8; 12 -OZR*L12; 4 -OZR*L20; 12 -HPR*L15
62 -HPR*L18; 62 -HPR*L19; 4 -HPR*L21; 15 -HPR*L24
22 -HPR*L32; 70 -HPR*+OCF; 20 -HPR*DROP_OCQ_Y; 4 +CFR*L12
62 +ODY*L4; 27 +ODY*L13; 12 +ODY*L24; 65 +ODY*L28
7 +ODY*L31; 47 +ODY*L33; 12 +ODY*-OHD; 83 +ODY*DROP_OHP_YZR
11 +ODY*DROP_OCQ_Y; 6 +ODY*DROP_OCR_Y; 17 +OYR*L14; 23 +OYR*L18
1 +OYR*L30; 67 +OYR*RX_P; 4 +OYR*DROP_OCR_Y; 2 -FQR*L12
67 -YZR*L2; 4 +YPQ*L12; 59 -YZP*L12; 22 +YQR*L1
1 +YQR*L8; 9 -DZR*L0; 49 -DZR*L9; 4 -DZR*L21
19 -DZR*L24; 4 -DZR*L35; 12 -DZR*L36; 21 -DZR*+OCF
22 +ZPR*L2; 29 C_OHR_Z*L17; 32 C_OCZ_Y*L30; 10 C_OCR_Y*L12
39 C_OZP_Y*L17; 8 C_HCD_R*L17; 3 TPX_Q_*L23; 3 Q_OCQH_YZR*L12
3 Q_ODFH_YZR*L1; 67 Q_OYRH_Z*L17; 4 Q_OYRH_Z*L27; 25 Q_OYRH_Z*RY_P
50 Q_OCPZ_Y*L30; 47 Q_HCPD_R*L17; 19 Q_HZPD_R*L2; 31 M_HDOYRZ_1_0*L12
```

Upper bound: `-151219873273/3250000000000`.

### Leaf RTUmmpmmpmmmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR -CFR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHPR -DPR
P DOHQR +DQR
P FOHCR +FOR
P FOCYR +FYR
P FODPQ +FPQ
P FODQR -FQR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPQ +ZPQ
P POHZR -PZR
P POFQR +PQR
P QOHCR -QCR
P QOHYR -QYR
P ROHDY -RDY
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
10 L0*L0*L3; 71 L0*L3*L18; 58 L0*L3*L26; 59 L0*L6*TY_Q_
18 L0*L10*L17; 1 L0*L12*L36; 1 L0*L12*TY_Q_; 4 L0*L13*L17
38 L0*L18*L21; 20 L0*L18*L25; 46 L0*L21*L25; 147 L0*L21*L26
21 L1*L1*L19; 9 L1*L2*L30; 9 L1*L2*RX_P; 42 L1*L3*L23
6 L1*L6*L10; 33 L1*L6*L18; 40 L1*L6*L27; 6 L1*L8*L14
5 L1*L9*L17; 25 L1*L14*L30; 259 L1*L17*L18; 108 L1*L17*L20
161 L1*L17*L25; 33 L1*L17*-OHD; 70 L1*L17*C_OCF_Y; 67 L1*L17*TY_Q_
195 L1*L17*DROP_OCR_Y; 8 L1*L20*L20; 14 L1*L21*L24; 78 L1*L23*L24
33 L1*L24*L28; 13 L1*L24*RX_P; 4 L2*L3*L12; 9 L2*L3*L23
9 L2*L3*TY_Q_; 10 L2*L10*L34; 5 L2*L10*RX_P; 16 L2*L12*L15
1 L2*L12*TY_Q_; 21 L2*L17*L26; 15 L2*L17*L35; 15 L2*L17*+OCF
85 L2*L17*C_OHD_ZR; 13 L2*L19*L19; 20 L2*L19*L23; 92 L2*L19*L27
196 L2*L20*RY_P; 13 L2*L23*L24; 17 L2*L23*TY_Q_; 63 L2*L27*RY_P
89 L2*L27*TY_Q_; 3 L3*L3*L14; 21 L3*L3*L26; 1 L3*L8*RY_P
7 L3*L10*L32; 16 L3*L14*L14; 15 L3*L17*L31; 81 L3*L18*L18
57 L3*L21*L26; 8 L3*L25*L28; 4 L3*L26*TY_Q_; 63 L4*L5*L17
14 L4*L17*L17; 194 L4*L17*L23; 20 L4*L17*L27; 5 L4*L17*L30
2 L4*L17*L35; 16 L4*L17*+OCF; 78 L4*L17*DROP_OCQ_Y; 4 L5*L6*L18
104 L5*L17*L23; 7 L5*L17*L29; 17 L5*L21*L23; 21 L5*L21*L28
27 L6*L16*TY_Q_; 44 L6*L18*L25; 41 L6*L18*L27; 60 L6*L18*TY_Q_
50 L6*L24*TY_Q_; 8 L6*RX_P*TY_Q_; 17 L8*L8*L34; 7 L8*L12*L31
1 L8*L12*TY_Q_; 3 L8*L17*TY_Q_; 1 L8*L28*RX_P; 31 L9*L14*L17
6 L9*L17*L30; 7 L9*L34*L34; 12 L10*L12*L17; 7 L10*L12*L32
12 L10*L17*L31; 2 L10*L17*RY_P; 6 L10*L17*DROP_OCQ_Y; 8 L11*L14*L17
6 L11*L17*L22; 1 L12*L13*L18; 34 L12*L14*L35; 3 L12*L16*TY_Q_
6 L12*L17*L31; 18 L12*L18*L35; 1 L12*L23*L32; 1 L12*L23*+OCF
1 L12*L30*RY_P; 4 L12*L31*L31; 17 L12*L31*L32; 5 L12*L31*C_OHD_ZR
4 L12*L35*L35; 1 L12*L35*DROP_OCQ_Y; 1 L13*L14*L30; 34 L14*L16*L17
4 L14*RX_P*RX_P; 30 L15*L17*RX_P; 3 L15*L19*L19; 7 L17*L17*L23
21 L17*L17*C_OHD_ZR; 78 L17*L18*L18; 134 L17*L18*L20; 78 L17*L18*RY_P
28 L17*L18*TX_Q_; 2 L17*L19*L32; 10 L17*L19*DROP_OCQ_Y; 129 L17*L20*L26
169 L17*L20*RY_P; 56 L17*L23*L23; 129 L17*L23*L24; 24 L17*L23*L26
36 L17*L23*L28; 3 L17*L23*L30; 145 L17*L24*L28; 6 L17*L35*L35
78 L18*L18*L21; 43 L18*L21*L21; 24 L18*L21*L26; 98 L18*L21*L28
60 L18*L25*L28; 68 L18*RX_P*TY_Q_; 19 L19*L19*L19; 31 L19*L23*L29
9 L19*L31*L31; 43 L20*L20*RY_P; 56 L20*L23*RY_P; 8 L21*L21*L28
6 L21*L23*L28; 42 L21*L27*TY_Q_; 17 L23*L23*L29; 42 L23*L24*TY_Q_
35 L23*L27*L29; 1 L30*L30*L34; 3 L31*L31*L34; 3 L31*L34*L35
16 L31*L34*L36; 28 KLOW*L7; 7 KLOW*L12; 71 KLOW*L18
42 KLOW*L22; 209 KLOW*L27; 19 KLOW*L31; 10 KLOW*L34
31 KLOW*RX_P; 53 -HYZ*L1; 14 -HYZ*L2; 60 -HYZ*L4
3 -HYZ*L11; 34 -HYZ*L14; 4 -HYZ*L16; 18 -HYZ*L18
60 -HYZ*L28; 24 -HYZ*L31; 16 -HCY*L12; 8 -OHZ*L4
42 -OHZ*L11; 10 -OHZ*L14; 1 -OHZ*L18; 7 -OHZ*L28
68 -CDP*L18; 196 -CDP*L20; 17 -CDP*L22; 2 -CDP*L33
8 -CDP*+OCF; 7 -CYP*L6; 116 -HFQ*L19; 6 -HFQ*TY_Q_
27 -DFQ*L16; 23 -DFQ*L23; 94 -DFQ*L24; 37 -DFQ*C_OHD_ZR
8 -DFQ*RX_P; 42 -DFQ*RY_P; 63 -DFQ*DROP_OCR_Y; 28 -HFR*L2
79 -HFR*L17; 114 -HFR*L18; 17 +DFR*L23; 147 +OQR*L0
44 +OQR*L3; 25 +OQR*L4; 104 +OQR*L18; 34 +OQR*L21
42 +OQR*L23; 44 +OQR*L29; 21 +OQR*RX_P; 212 -DPQ*L5
7 -DPQ*L17; 246 -DPQ*L18; 56 -DPQ*L23; 108 -DPQ*L24
80 -DPQ*L27; 20 -DPQ*L28; 169 -DPQ*RY_P; 26 -CYZ*L0
7 -CYZ*L10; 43 -CYZ*L27; 33 -CYZ*DROP_OHP_YZ; 5 -CYZ*RX_P
43 -CYZ*DROP_OCR_Y; 6 -OYP*L10; 7 -OYP*L29; 23 -OYP*L33
8 -OYP*L36; 18 -OYP*C_OHD_ZR; 33 +HPR*L5; 28 +HPR*L16
22 +HPR*L20; 39 +HPR*L23; 7 +HPR*+OCF; 33 +HPR*C_OHD_ZR
108 +HPR*DROP_OCQ_Y; 86 +HPR*TX_Q_; 106 -FPR*L1; 93 -FPR*L5
333 -FPR*-OHD; 35 -FPR*C_OCF_Y; 28 -FPR*RX_P; 173 -FPR*DROP_OCQ_Y
253 -HDR*L17; 124 -HDR*L20; 44 -HDR*TX_Q_; 44 -CFR*L21
170 -CFR*L27; 185 -CFR*L28; 82 -CFR*-OHD; 21 -CFR*RX_P
156 -CFR*RY_P; 58 -CFR*DROP_OCQ_Y; 170 -CFR*DROP_OCR_Y; 8 +DQR*L2
34 +DQR*L20; 30 C_OHQ_ZR*L4; 24 C_OCZ_Y*L8; 11 C_OZP_Y*L12
262 C_HFP_R*L18; 42 C_HFP_R*L24; 14 C_HFP_R*TY_Q_; 42 TPY_Q_*L28
6 Q_OYFH_Z*L10; 11 Q_OCPZ_Y*L30; 7 Q_HPDF_R*L17
```

Upper bound: `-1284414309/1000000000`.

### Leaf RTUmmpmmpmmmpmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDZQ +ODZ
P OHDQR +ODR
P OHFZR -OFR
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOCQR -FQR
P FODPQ +FPQ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZOHFR -ZFR
P ZODPQ +ZPQ
P POHZR -PZR
P POFQR +PQR
P QOHYR -QYR
C OFY Z R +FYR 101661/147500
M OCFRYZ -1
M OFCRZY 1
M COFZYR 1
M CFOZRY -1
M FOCYZR -1
M FCOYRZ 1
M OFPRZY 1
M OPFRYZ -1
M FOPYZR -1
M FPOYRZ 1
M POFZYR 1
M PFOZRY -1
```

```c1top-bounds
T OCF YZR 1 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 823/1000 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
7 L0*L1*L8; 7 L0*L1*L31; 20 L0*L4*L9; 4 L0*L4*TX_Q_
14 L0*L12*TY_Q_; 2 L0*L13*L27; 1 L0*L14*L17; 4 L0*L14*L31
2 L0*L18*L30; 9 L0*L21*L27; 7 L0*L22*L31; 23 L0*L23*L24
34 L0*L31*TY_Q_; 8 L1*L4*L30; 43 L1*L17*L26; 3 L1*L17*DROP_OHP_YZ
17 L1*L17*RY_P; 2 L1*L24*TY_Q_; 18 L1*L24*DROP_OCR_Y; 10 L1*L28*RX_P
17 L1*L30*DROP_OCR_Y; 4 L1*L34*RX_P; 4 L1*TX_Q_*TY_Q_; 2 L2*L2*L30
2 L2*L3*L33; 24 L2*L3*TY_Q_; 11 L2*L18*RX_P; 3 L2*L23*L36
38 L2*L26*TY_Q_; 8 L3*L3*L19; 24 L3*L3*L22; 2 L3*L3*L31
3 L3*L4*L6; 4 L3*L4*L12; 54 L3*L4*L23; 110 L3*L5*TY_Q_
2 L3*L7*L32; 3 L3*L9*L17; 7 L3*L10*L18; 2 L3*L11*L24
3 L3*L12*L22; 1 L3*L12*-OHD; 6 L3*L14*L22; 78 L3*L16*TY_Q_
2 L3*L17*L32; 3 L3*L17*DROP_OHP_YZ; 78 L3*L17*DROP_OCQ_Y; 29 L3*L18*L21
29 L3*L18*L22; 12 L3*L18*C_OHD_ZR; 108 L3*L18*DROP_OHP_YZ; 7 L3*L18*RY_P
85 L3*L18*DROP_OCQ_Y; 87 L3*L18*TY_Q_; 49 L3*L18*DROP_OCR_Y; 3 L3*L20*L23
13 L3*L23*L32; 64 L3*L23*DROP_OCR_Y; 18 L3*L24*L27; 8 L3*L27*TX_Q_
1 L3*L32*L32; 63 L4*L10*L17; 2 L4*L10*L25; 7 L4*L17*L20
106 L4*L17*L22; 92 L4*L17*DROP_OHP_YZ; 99 L4*L17*TY_Q_; 70 L4*L17*DROP_OCR_Y
19 L4*L28*RX_P; 5 L4*L28*TX_Q_; 5 L4*L30*RX_P; 3 L4*L30*TY_Q_
3 L5*L22*L30; 12 L6*L10*L23; 3 L6*L17*L22; 1 L6*L17*DROP_OHP_YZ
8 L6*L18*TY_Q_; 3 L6*L22*L27; 3 L6*L28*RX_P; 9 L6*C_OHD_ZR*TY_Q_
11 L7*L10*DROP_OCR_Y; 1 L7*L17*RX_P; 1 L8*L13*L18; 8 L8*L17*L26
3 L8*L18*L32; 7 L8*L18*RY_P; 14 L8*L18*TY_Q_; 3 L10*L10*L17
1 L10*L12*L33; 16 L10*L17*L22; 7 L10*L17*RY_P; 79 L10*L17*DROP_OCR_Y
6 L10*L19*L21; 1 L10*L30*L30; 2 L11*L30*RX_P; 1 L11*L31*L31
1 L12*L16*L32; 4 L12*L17*L28; 3 L12*L17*DROP_OHP_YZ; 1 L14*RX_P*DROP_OCR_Y
3 L15*L17*L18; 2 L15*L17*L27; 3 L16*L17*L31; 67 L16*L23*TY_Q_
3 L17*L17*DROP_OCR_Y; 10 L17*L18*L27; 70 L17*L22*L23; 17 L17*L22*DROP_OCQ_Y
47 L17*L23*DROP_OHP_YZ; 1 L17*L24*L32; 38 L17*L26*TY_Q_; 18 L17*L27*DROP_OCQ_Y
3 L17*L30*RX_P; 47 L17*DROP_OHP_YZ*DROP_OCQ_Y; 4 L17*RY_P*DROP_OCR_Y; 18 L17*DROP_OCR_Y*DROP_OCR_Y
15 L18*L19*L24; 14 L18*L21*L23; 33 L18*L21*DROP_OCR_Y; 3 L18*L25*RX_P
3 L18*L34*DROP_OHP_YZ; 27 L21*L26*L28; 39 L21*L28*DROP_OCR_Y; 3 L21*+OCF*TY_Q_
4 L22*L28*TX_Q_; 2 L27*L35*RX_P; 3 L28*L28*L30; 17 L28*L29*TY_Q_
1 L28*L35*RX_P; 1 L28*L36*RX_P; 11 L28*+OCF*TY_Q_; 6 L32*L32*RX_P
82 L32*RX_P*TY_Q_; 3 KLOW*L25; 9 KLOW*RY_P; 1 CENT*DROP_OHP_YZ
3 -HYZ*L1; 41 -HYZ*L22; 20 -HYZ*DROP_OCR_Y; 11 +OCP*L1
39 +OCP*L21; 24 -CDP*L2; 63 -CDP*L5; 1 -CDP*L15
102 -CDP*L16; 10 -CDP*L20; 81 -CDP*L22; 26 -CDP*L27
6 -CDP*L35; 55 -CDP*DROP_OCQ_Y; 10 -ODP*L17; 5 -CYP*L3
2 -CYP*L8; 3 -CYP*L11; 5 -CYP*L17; 65 -CYP*L22
57 -CYP*L26; 14 -CYP*L28; 7 -CYP*RY_P; 12 -DFQ*L4
3 -DFQ*DROP_OHP_YZ; 10 -DFQ*DROP_OCQ_Y; 5 -DFQ*DROP_OCR_Y; 6 -HFR*L4
3 -HFR*L16; 11 -HFR*L18; 32 +OQR*L0; 17 -DPQ*L5
92 -DPQ*L17; 14 -DPQ*L23; 92 -DPQ*DROP_OHP_YZ; 61 -DPQ*DROP_OCR_Y
2 -CYZ*L2; 2 -CYZ*L8; 3 -CYZ*L22; 2 -CYZ*DROP_OCR_Y
34 -OYP*L22; 1 -OYP*L33; 19 -OYP*DROP_OCR_Y; 6 +OYQ*L18
46 -OZR*L22; 21 -OZR*L26; 2 -OZR*L28; 1 -OZR*DROP_OHP_YZ
13 +HPR*L1; 15 +HPR*L19; 29 +HPR*L22; 6 +HPR*+OCF
3 +HPR*RX_P; 53 +HPR*DROP_OCQ_Y; 18 +HPR*DROP_OCR_Y; 2 -HDR*L10
17 +CFR*L19; 76 +CFR*L22; 18 +CFR*L24; 12 +CFR*L28
5 +CFR*+OCF; 3 +CFR*RX_P; 70 +CFR*DROP_OCQ_Y; 8 +CFR*TX_Q_
43 +CFR*DROP_OCR_Y; 2 -OFZ*L0; 76 -OFZ*L22; 4 -OFZ*DROP_OHP_YZ
2 -OFZ*TY_Q_; 41 -OFZ*DROP_OCR_Y; 10 -OFR*L28; 9 +CPR*L0
1 +CPR*L14; 21 -DPR*L0; 26 +DQR*L0; 28 -FQR*L18
5 +YPR*L17; 2 +FZR*TY_Q_; 23 +FYR*L22; 11 +FYR*DROP_OCR_Y
13 C_OHQ_ZR*L4; 1 C_OCZ_Y*RX_P; 1 C_ODF_ZR*L18; 11 C_OFQ_ZR*L10
10 C_OFQ_ZR*L23; 20 C_OFQ_ZR*RY_P; 48 C_OFQ_ZR*DROP_OCR_Y; 18 C_OFR_Z*L24
8 C_OFR_Z*-OHD; 8 C_OFR_Z*TX_Q_; 2 C_HCF_R*L14; 5 C_HFP_R*L0
2 C_CFY_R*L2; 8 Q_OCFH_YZR*L22; 6 Q_OQFH_ZR*L17; 6 Q_ORFH_Z*L1
1 Q_ORFH_Z*L5; 10 Q_OCPF_YZR*L28; 2 Q_OCPZ_Y*L1; 2 Q_OYRF_Z*L2
21 Q_OYRF_Z*L22; 10 Q_OYRF_Z*DROP_OCR_Y; 1 Q_OPRZ_Y*L17; 1 Q_HYCF_R*L2
9 M_FCOYRZ_1_2*L20; 3 M_FCOYRZ_1_2*C_OHD_ZR; 10 M_FCOYRZ_1_2*RY_P; 1 M_FCOYRZ_1_2*TY_Q_
21 M_FCOYRZ_1_2*DROP_OCR_Y; 2 M_FCOYRZ_1_3*L0; 44 M_FCOYRZ_1_4*L22; 21 M_FCOYRZ_1_4*DROP_OCR_Y
```

Upper bound: `-46361011807/45500000000`.

### Leaf RTUmmpmmpmmmpmpmmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR -ODY +OFZ -OFR -DZR -FYR`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHYZ -FYZ
P FOHZR +FZR
P FOCQR -FQR
P FODPQ +FPQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YOFQR +YQR
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR +PQR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
S Q - 2 upper 628/721
Y Q - 11 lower 7233571/12759537
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 283/500 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
1 L0*L0*L29; 9 L0*L0*TX_Q_; 23 L0*L5*L12; 20 L0*L7*L7
2 L0*L7*L14; 9 L0*L7*L26; 28 L0*L7*L30; 80 L0*L7*TX_Q_
18 L0*L17*RX_P; 9 L0*L21*L30; 6 L0*L23*L25; 51 L0*L23*L30
12 L0*TX_Q_*TX_Q_; 16 L1*L1*L6; 106 L1*L2*L17; 27 L1*L2*L24
25 L1*L3*L12; 1 L1*L3*L35; 19 L1*L4*L24; 38 L1*L6*L9
32 L1*L6*L12; 33 L1*L6*L26; 77 L1*L8*L17; 188 L1*L8*L18
215 L1*L8*L24; 4 L1*L9*L15; 34 L1*L9*L35; 34 L1*L9*TY_Q_
73 L1*L10*L17; 4 L1*L10*L20; 163 L1*L10*L30; 11 L1*L12*L28
52 L1*L12*TY_Q_; 12 L1*L15*L24; 25 L1*L17*L24; 64 L1*L17*TY_Q_
148 L1*L17*DROP_OCR_Y; 1 L1*L18*L21; 25 L1*L18*L24; 2 L1*L20*L36
11 L1*L21*L24; 19 L1*L21*L27; 18 L1*L23*L24; 44 L1*L24*L30
84 L2*L10*L30; 2 L2*L10*TY_Q_; 102 L2*L12*L28; 75 L2*L12*TY_Q_
164 L2*L17*TY_Q_; 45 L3*L3*L11; 19 L3*L5*L5; 11 L3*L5*L6
190 L3*L5*L18; 22 L3*L5*L24; 18 L3*L5*L26; 16 L3*L5*L28
7 L3*L5*L35; 74 L3*L6*L18; 40 L3*L9*L23; 87 L3*L10*L14
159 L3*L10*L18; 202 L3*L12*L14; 45 L3*L12*L22; 1 L3*L14*L18
22 L3*L14*RX_P; 8 L3*L15*L35; 16 L3*L18*L21; 66 L3*L18*L28
63 L3*L23*L29; 67 L3*L28*TY_Q_; 40 L3*L31*TY_Q_; 60 L4*L17*L23
189 L4*L17*TY_Q_; 18 L4*L27*L31; 17 L5*L5*L5; 81 L5*L5*L21
99 L5*L5*RX_P; 39 L5*L6*L12; 125 L5*L8*L18; 43 L5*L8*L21
73 L5*L10*L12; 14 L5*L10*L17; 14 L5*L10*TX_Q_; 12 L5*L12*L27
27 L5*L17*L18; 95 L5*L18*L21; 13 L5*L18*L30; 26 L5*L21*L23
19 L5*L28*RX_P; 34 L6*L6*L15; 67 L6*L9*L15; 57 L6*L10*L17
169 L6*L10*L27; 18 L6*L10*L36; 25 L6*L15*L17; 112 L6*L17*L18
53 L6*L17*L22; 42 L6*L17*L27; 112 L6*L17*RY_P; 20 L6*L24*L34
7 L6*L24*TY_Q_; 4 L6*L35*TY_Q_; 1 L6*RY_P*RY_P; 14 L7*L7*L14
64 L7*L8*L14; 112 L7*L8*L26; 10 L7*L18*L35; 3 L7*L23*L24
61 L7*L23*L29; 30 L7*L23*L30; 9 L7*L23*TX_Q_; 61 L7*L26*L30
10 L8*L14*TX_Q_; 42 L8*L17*L23; 23 L8*L18*L21; 262 L8*L18*L30
15 L8*L18*RX_P; 12 L8*L23*L25; 168 L9*L17*L27; 61 L9*L17*L28
9 L9*L18*L18; 131 L9*L31*L34; 19 L10*L12*L21; 154 L10*L12*L30
65 L10*L17*L27; 15 L10*L17*DROP_OHP_YZ; 9 L10*L18*RX_P; 12 L10*L21*L24
29 L10*L24*L29; 262 L10*L31*RX_P; 2 L11*L12*L28; 65 L11*L18*L24
43 L12*L12*L32; 41 L12*L15*L35; 16 L12*L17*RY_P; 12 L12*L18*L27
164 L12*L18*L31; 1 L12*L21*L21; 28 L12*L21*L26; 28 L12*L23*L25
30 L12*L23*L29; 91 L12*L26*RX_P; 156 L12*L34*L35; 83 L14*L14*RX_P
16 L14*L17*L19; 48 L14*L17*L24; 425 L14*L17*L31; 12 L14*L17*L34
2 L14*L23*L29; 1 L14*TX_Q_*TX_Q_; 95 L15*L15*L17; 280 L15*L15*L31
9 L15*L20*L31; 22 L15*L31*L31; 23 L16*L17*L23; 416 L17*L17*L18
18 L17*L17*-OHD; 72 L17*L17*RY_P; 120 L17*L18*+OCF; 611 L17*L18*RX_P
25 L17*L18*DROP_OCR_Y; 32 L17*L20*C_OHD_ZR; 4 L17*L21*TY_Q_; 26 L17*L22*L22
12 L17*L23*L25; 16 L17*L23*L35; 12 L17*L26*L34; 14 L17*L27*TY_Q_
48 L17*L31*C_OHD_ZR; 2 L17*L32*DROP_OCQ_Y; 136 L17*-OHD*DROP_OCR_Y; 1 L17*C_OHD_ZR*C_OHD_ZR
14 L17*DROP_OCQ_Y*DROP_OCR_Y; 1 L18*L18*TX_Q_; 32 L18*L21*L23; 5 L18*L21*L27
28 L18*L21*L29; 4 L18*L21*TX_Q_; 5 L18*L23*L24; 1 L18*L23*RX_P
7 L18*L23*TX_Q_; 45 L18*L24*L29; 44 L18*L24*L30; 25 L18*L28*RX_P
1 L18*L29*L34; 3 L18*L35*TX_Q_; 16 L18*L36*RX_P; 267 L18*RX_P*RX_P
1 L20*L20*L36; 9 L21*L21*L28; 9 L21*L28*L28; 67 L23*L28*RX_P
23 L23*RX_P*RX_P; 27 L26*L29*L30; 1 L28*L32*RX_P; 4 KLOW*TX_Q_
81 CENT*L6; 116 CENT*L18; 6 CENT*L20; 17 CENT*L22
36 CENT*L30; 34 -HYZ*L4; 110 -HYZ*L7; 197 -HYZ*L10
133 -HYZ*L31; 44 -HYZ*DROP_OHP_YZ; 412 +OCY*L17; 158 +CDY*L17
48 -OHZ*L30; 31 -HCZ*L12; 14 +OCP*L1; 1 +OCP*L23
135 -CDP*L3; 221 -CDP*L5; 5 -CDP*L6; 77 -CDP*L10
72 -CDP*L17; 138 -CDP*L20; 94 -CDP*L24; 174 -CDP*L33
26 -CDP*L35; 104 -CDP*-OHD; 61 -CYP*L5; 69 -CYP*L6
595 -CYP*L8; 143 -CYP*L12; 103 -CYP*L14; 520 -CYP*L17
9 -CYP*L21; 62 -CYP*L25; 327 -CYP*L33; 633 -CYP*RX_P
1 -HFQ*L4; 3 -HFQ*L9; 4 -HFQ*L11; 2 -HFQ*L14
128 -HFQ*L17; 1 -HFQ*L18; 21 -HFQ*L20; 19 -HFQ*L27
88 -HFQ*L29; 84 -HFQ*RX_P; 6 -DFQ*L3; 29 -DFQ*L8
13 -DFQ*L21; 28 -DFQ*L24; 18 -DFQ*L26; 1 -DFQ*L28
14 -DFQ*-OHD; 138 -DFQ*DROP_OHP_YZ; 17 +OQR*L7; 12 +OQR*L8
28 +OQR*L12; 102 +OQR*L17; 88 -DPQ*L5; 26 -DPQ*L8
14 -DPQ*L11; 118 -DPQ*L17; 1 -DPQ*L19; 28 -DPQ*L21
26 -DPQ*L23; 25 -DPQ*L27; 118 -DPQ*RX_P; 31 -DPQ*TX_Q_
20 -DPQ*DROP_OCR_Y; 201 -CYZ*L1; 197 -CYZ*L12; 197 -CYZ*L15
118 -CYZ*L24; 201 -CYZ*-OHD; 448 -CYZ*DROP_OHP_YZ; 19 -CYZ*DROP_OCQ_Y
15 -CYZ*TX_Q_; 72 -OYP*L1; 388 -OYP*L2; 80 -OYP*L6
99 -OYP*L17; 9 -OYP*L20; 65 -OYP*L27; 139 -OYP*L30
472 -OYP*L31; 103 -OYP*L36; 9 -OYP*RY_P; 19 -OZR*L1
230 +HPR*L8; 45 +HPR*L18; 12 +HPR*L20; 23 +HPR*L23
45 +HPR*L29; 32 +HPR*L33; 12 +HPR*L36; 19 +HPR*RY_P
17 +HPR*DROP_OCQ_Y; 28 -HDR*L20; 49 -HDR*L31; 52 -ODY*L14
86 -ODY*L18; 74 -ODY*L24; 21 -ODY*L29; 13 -ODY*TX_Q_
2 +OFZ*L20; 69 -OFR*L3; 54 -OFR*L6; 91 -OFR*L11
153 -OFR*L18; 216 -OFR*L23; 174 -OFR*L32; 157 -OFR*L35
51 -OFR*L36; 55 -OFR*RY_P; 211 -OFR*DROP_OCQ_Y; 38 -OFR*DROP_OCR_Y
19 -DZR*L0; 20 -DZR*L6; 25 -DZR*L8; 18 -DZR*L10
19 -DZR*L19; 101 -DZR*+OCF; 124 -DZR*RX_P; 246 -FYR*L3
37 -FYR*L4; 54 -FYR*L6; 176 -FYR*L11; 65 -FYR*L18
17 -FYR*L20; 19 -FYR*L23; 118 -FYR*L33; 21 -FYR*L35
197 -FYR*-OHD; 247 -FYR*+OCF; 92 -FYR*RX_P; 67 -DYZ*L17
30 -DYR*L17; 96 +FZR*L2; 93 +FZR*L9; 18 +FZR*L10
7 +FZR*L19; 72 +FZR*L27; 72 +FZR*DROP_OCR_Y; 90 -FQR*L17
25 C_OHR_Z*L17; 3 C_OFQ_R*L0; 6 C_HDZ_R*L1; 25 C_HDZ_R*L31
3 TPX_Q_*L18; 38 SP_OYFH_ZR_OF-1*L26; 24 SP_OYFH_ZR_YH-1*L7; 21 SP_OYFH_ZR_YH-1*L8
197 SP_OYFH_ZR_YH-1*L10; 5 SP_OYFH_ZR_YH-1*L21; 19 SP_OYFH_ZR_YH-1*TY_Q_; 76 Q_OCRZ_Y*L17
26 Q_OQFZ_R*L17; 1 Q_HZDF_R*L1; 4 Q_HZYF_R*L1; 19 Q_DQFZ_R*L6
6 Q_DQFZ_R*L18; 12 Q_DQFZ_R*L27
```

Upper bound: `-2952129331/1000000000`.

### Leaf RTUmmpmmpmmmpmpmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR -ODY +OFZ -OFR -DZR +FYR`.

```c1top-geometry
C CFY R Z -FYZ 881332897/1467182500
P OHDFY -OFY
P OHDFZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHZR +FZR
P FOCQR -FQR
P FODPQ +FPQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR +PQR
P QOHYR -QYR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
S Q - 2 upper 628/721
Y Q - 11 lower 7233571/12759537
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 283/500 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
88 L0*L3*L8; 246 L0*L3*L14; 378 L0*L3*L27; 109 L0*L10*L29
267 L0*L14*TX_Q_; 385 L0*L17*L23; 64 L0*L17*C_OHD_ZR; 69 L1*L1*L6
70 L1*L1*L8; 389 L1*L1*L12; 69 L1*L1*L21; 291 L1*L2*L12
58 L1*L3*L10; 409 L1*L3*L25; 529 L1*L4*L17; 373 L1*L6*L17
150 L1*L6*L30; 119 L1*L8*L18; 335 L1*L8*L27; 159 L1*L8*TY_Q_
150 L1*L11*L17; 447 L1*L12*L21; 6 L1*L12*L24; 204 L1*L12*L35
715 L1*L12*TY_Q_; 193 L1*L14*L21; 74 L1*L17*L30; 284 L1*L17*L31
6 L1*L17*L36; 64 L1*L17*DROP_OCR_Y; 56 L1*L21*L30; 45 L1*L21*TY_Q_
269 L1*L23*L25; 69 L1*L23*TX_Q_; 64 L1*L25*L28; 931 L2*L3*L10
4 L2*L3*L28; 1534 L2*L4*L17; 174 L2*L10*L23; 19 L2*L12*TY_Q_
190 L2*L17*L27; 40 L3*L3*L15; 971 L3*L3*L18; 288 L3*L3*L27
4 L3*L3*L34; 274 L3*L5*L23; 52 L3*L5*L28; 39 L3*L6*L18
53 L3*L6*L27; 48 L3*L8*L14; 749 L3*L8*L18; 602 L3*L8*L27
64 L3*L10*TY_Q_; 22 L3*L12*L14; 92 L3*L14*L17; 364 L3*L14*L18
136 L3*L14*L21; 176 L3*L14*L23; 449 L3*L17*L17; 2011 L3*L17*L18
126 L3*L17*L32; 365 L3*L18*L18; 612 L3*L18*L20; 700 L3*L18*L23
175 L3*L18*L25; 152 L3*L18*L28; 106 L3*L20*L27; 444 L3*L23*L24
435 L3*L23*L26; 120 L3*L23*L30; 368 L4*L6*L17; 874 L4*L12*L17
318 L4*L14*L17; 307 L4*L17*L18; 113 L4*L17*L23; 576 L4*L17*L25
36 L4*L17*L26; 584 L4*L17*L28; 673 L4*L17*L30; 245 L4*L17*TY_Q_
130 L5*L5*L12; 907 L5*L5*L21; 542 L5*L5*RX_P; 244 L5*L8*L14
165 L5*L8*L21; 222 L5*L8*TY_Q_; 165 L5*L10*L17; 529 L5*L14*L21
68 L5*L14*L30; 1178 L5*L18*L21; 27 L5*L21*L21; 354 L5*L21*L23
216 L5*L23*L30; 52 L5*L30*L30; 201 L5*L30*RX_P; 16 L6*L10*L23
81 L6*L12*L28; 648 L6*L12*TY_Q_; 41 L6*L27*TY_Q_; 476 L6*RX_P*TY_Q_
429 L7*L8*L18; 164 L7*L14*L23; 177 L7*L18*L23; 183 L7*L23*L23
259 L7*L23*L30; 128 L8*L8*L27; 91 L8*L8*L28; 307 L8*L10*L21
518 L8*L14*L27; 307 L8*L14*TX_Q_; 499 L8*L17*L18; 1111 L8*L17*L23
67 L8*L18*L21; 177 L8*L18*L23; 343 L8*L18*L29; 99 L8*L23*L24
16 L8*L23*L28; 119 L8*L27*RX_P; 231 L10*L12*L25; 176 L10*L12*L34
440 L10*L14*L17; 440 L10*L14*L29; 499 L10*L17*L17; 58 L10*L17*L18
193 L10*L17*L23; 333 L10*L17*L24; 1064 L10*L17*TX_Q_; 16 L10*L18*L21
130 L10*L21*L27; 486 L10*L24*L30; 671 L10*L27*L29; 180 L10*L29*L30
307 L10*L30*TX_Q_; 38 L12*L18*L23; 19 L12*L22*RX_P; 145 L12*L23*L24
85 L12*L23*L28; 68 L12*L26*L34; 52 L12*L28*L30; 147 L14*L17*L23
108 L14*L18*L21; 6 L14*L18*L25; 14 L14*L21*L27; 145 L14*L23*L24
244 L14*L24*TX_Q_; 1530 L17*L17*L18; 449 L17*L17*+OCF; 1530 L17*L17*RY_P
394 L17*L20*TY_Q_; 400 L17*L20*DROP_OCR_Y; 370 L17*L23*L23; 43 L17*L23*L24
349 L17*L23*L27; 19 L17*L23*L30; 368 L17*L23*TX_Q_; 6 L17*L26*L36
325 L18*L18*L21; 27 L18*L21*L21; 370 L18*L21*L23; 284 L18*L21*L25
385 L18*L21*L28; 349 L18*L23*L25; 6 L18*L24*L30; 325 L18*RX_P*TY_Q_
65 L21*L21*L26; 15 L21*L23*L25; 169 L21*L23*L28; 99 L21*L27*L30
50 L23*L24*TX_Q_; 120 L23*L29*L30; 112 L24*L28*L30; 359 L27*L30*L30
130 L27*L30*TY_Q_; 179 KLOW*L4; 87 CENT*L1; 22 CENT*L13
269 CENT*L18; 94 CENT*L20; 220 CENT*L24; 444 CENT*L27
17 CENT*L28; 180 CENT*L31; 92 CENT*RX_P; 349 CENT*TX_Q_
176 CENT*TY_Q_; 89 +OYZ*L30; 176 -HYZ*L14; 214 -HYZ*L25
89 -HYZ*L30; 459 -OHZ*L1; 140 -OHZ*L7; 295 -OHZ*L13
176 -OHZ*L14; 269 -OHZ*L18; 129 -OHZ*L24; 444 -OHZ*L27
388 -OHZ*L29; 64 -OHZ*L31; 93 -OHZ*L33; 557 -OHZ*L35
166 -OHZ*RX_P; 321 -OHZ*TX_Q_; 976 -OHZ*TY_Q_; 363 -CDP*L1
399 -CDP*L6; 209 -CDP*L14; 1530 -CDP*L17; 307 -CDP*L18
77 -CDP*L20; 274 -CDP*L23; 220 -CDP*L25; 177 -CDP*L27
594 -CDP*L28; 570 -CDP*L35; 4 -CDP*+OCF; 399 -CDP*TX_Q_
80 -CYP*L1; 434 -CYP*L6; 440 -CYP*L14; 1456 -CYP*L17
483 -CYP*L18; 259 -CYP*L21; 63 -CYP*L23; 455 -CYP*L24
975 -CYP*RX_P; 425 -CYP*RY_P; 395 -CYP*TX_Q_; 69 -HFQ*L1
499 -HFQ*L8; 269 -HFQ*L12; 460 -HFQ*L14; 112 -HFQ*L17
261 -HFQ*L25; 269 -HFQ*L27; 283 -HFQ*TY_Q_; 420 -DFQ*L14
368 -DFQ*L16; 283 -DFQ*L23; 861 -DFQ*L24; 120 -DFQ*L35
212 -DFQ*-OHD; 71 -DFQ*C_OHD_ZR; 476 -DFQ*RX_P; 349 -DFQ*DROP_OCR_Y
448 +DFR*L10; 132 +DFR*L12; 161 +OQR*L0; 130 +OQR*L4
106 +OQR*L7; 343 +OQR*L9; 99 +OQR*L12; 224 +OQR*L17
64 +OQR*L18; 65 +OQR*L21; 313 +OQR*L23; 444 +OQR*L29
1131 -DPQ*L8; 16 -DPQ*L10; 108 -DPQ*L14; 19 -DPQ*L17
325 -DPQ*L18; 27 -DPQ*L21; 1147 -DPQ*L23; 356 -DPQ*L25
349 -DPQ*L27; 385 -DPQ*-OHD; 19 -DPQ*+OCF; 19 -DPQ*RX_P
776 -DPQ*TY_Q_; 176 -CYZ*L0; 184 -CYZ*L7; 132 -CYZ*L29
16 -CYZ*RY_P; 307 -CYZ*TX_Q_; 238 -CYZ*DROP_OCR_Y; 230 -OYP*L0
18 -OYP*L17; 116 -OYP*L20; 150 -OYP*L23; 116 -OYP*L24
812 -OYP*TX_Q_; 36 -OYP*TY_Q_; 254 -OZR*L10; 64 +HPR*L1
292 +HPR*L2; 562 +HPR*L4; 261 +HPR*L6; 118 +HPR*L31
6 +HPR*L36; 62 -HDR*L14; 64 -HDR*L18; 261 -HDR*L20
486 +CFR*L8; 1194 +CFR*L11; 220 +CFR*L13; 682 +CFR*L14
219 +CFR*L18; 551 +CFR*L20; 219 +CFR*L28; 160 +CFR*L32
312 +CFR*DROP_OHP_YZ; 288 +CFR*RX_P; 396 +CFR*RY_P; 435 +CFR*DROP_OCQ_Y
188 -ODY*L5; 120 -ODY*L6; 305 -ODY*L12; 328 -ODY*L14
458 -ODY*L17; 389 -ODY*L18; 1090 -ODY*L20; 11 -ODY*L23
346 -ODY*L25; 698 -ODY*L27; 34 -ODY*L28; 143 -ODY*L30
771 -ODY*RX_P; 193 +OFZ*L1; 274 +OFZ*L2; 311 +OFZ*L22
617 +OFZ*L25; 60 +OFZ*L26; 316 +OFZ*L35; 420 +OFZ*TY_Q_
22 -DZR*L2; 861 -DZR*L6; 244 -DZR*L21; 198 -DZR*L31
68 -DZR*L34; 16 -DZR*L35; 130 -DZR*TY_Q_; 445 +FYR*L13
756 +FYR*L14; 1696 +FYR*L17; 568 +FYR*L18; 486 +FYR*L30
1698 +FYR*+OCF; 109 +FYR*C_OHD_ZR; 1933 +FYR*RX_P; 568 +FYR*RY_P
130 +FYR*DROP_OCQ_Y; 430 +DQR*L1; 104 +DQR*L10; 463 +DQR*L18
244 +DQR*L30; 130 +DQR*TY_Q_; 234 -FQR*L10; 14 -FQR*L14
623 -FQR*L17; 177 -FQR*L18; 183 -FQR*L23; 112 C_OHQ_ZR*L17
528 C_CFY_R*L17; 38 Q_OCPZ_Y*L23
```

Upper bound: `-430328257/125000000`.

### Leaf RTUmmpmmpmmmpmpmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR -ODY +OFZ -OFR +DZR`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHYZ -FYZ
P FOHZR +FZR
P FOCQR -FQR
P FODPQ +FPQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P ZODQR -ZQR
P POHZR -PZR
P POFQR +PQR
P QOHYR -QYR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
S Q - 2 upper 628/721
Y Q - 11 lower 7233571/12759537
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 283/500 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
1 L0*L9*L31; 1 L0*L14*TX_Q_; 6 L0*L16*L17; 8 L1*L2*L2
53 L1*L2*L26; 3 L1*L2*L31; 13 L1*L4*L6; 47 L1*L4*L17
1 L1*L4*L25; 6 L1*L4*L30; 2 L1*L6*L15; 2 L1*L6*L17
25 L1*L6*L23; 2 L1*L6*L25; 41 L1*L6*DROP_OCQ_Y; 20 L1*L6*TX_Q_
13 L1*L6*DROP_OCR_Y; 9 L1*L8*L34; 3 L1*L11*RX_P; 5 L1*L12*L33
55 L1*L14*L17; 4 L1*L17*L25; 16 L1*L17*L30; 11 L1*L17*RX_P
4 L1*L17*TX_Q_; 17 L1*L18*L24; 3 L1*L21*L24; 5 L1*L21*L28
18 L1*L21*TY_Q_; 44 L1*L26*RX_P; 4 L1*L30*L30; 6 L1*L34*DROP_OHP_YZ
1 L2*L2*L5; 22 L2*L2*L23; 2 L2*L3*L8; 3 L2*L5*L21
8 L2*L12*L23; 2 L2*L17*L27; 1 L2*L35*RX_P; 1 L2*RX_P*TY_Q_
1 L3*L9*L31; 2 L3*L14*L17; 30 L3*L14*L18; 27 L3*L15*L27
7 L3*L18*L28; 26 L3*L18*-OHD; 47 L3*L18*TY_Q_; 3 L3*L21*L26
82 L3*L22*L34; 29 L3*L22*L36; 8 L3*L23*L26; 41 L3*L23*L29
1 L3*L27*TY_Q_; 1 L3*L32*L35; 3 L4*L4*L15; 27 L4*L9*L12
19 L4*L12*L25; 17 L4*L12*L28; 1 L4*L12*L31; 6 L4*L17*DROP_OCR_Y
3 L5*L6*L24; 2 L5*L8*L30; 9 L5*L10*L30; 1 L5*L10*L33
3 L5*L14*L28; 22 L5*L16*L21; 14 L5*L16*TY_Q_; 30 L5*L17*L18
53 L5*L18*L21; 7 L5*L21*L21; 6 L5*L25*L28; 33 L5*L28*RX_P
3 L5*L30*L32; 3 L5*L34*L36; 5 L6*L15*L34; 1 L6*L16*L27
23 L6*L16*TY_Q_; 23 L6*L18*TY_Q_; 18 L6*L24*TY_Q_; 23 L6*RY_P*TY_Q_
10 L6*DROP_OCQ_Y*TY_Q_; 16 L6*TY_Q_*DROP_OCR_Y; 2 L7*L18*L24; 36 L7*L23*C_OHD_ZR
1 L8*L17*L17; 5 L8*L18*L28; 3 L9*L9*L31; 15 L9*L9*L34
7 L9*L15*L17; 2 L9*L17*L35; 3 L9*L30*TY_Q_; 16 L10*L12*L32
2 L10*L18*L31; 11 L10*L31*RX_P; 5 L10*L31*TY_Q_; 16 L11*L12*L35
1 L11*L18*RX_P; 1 L12*L14*L21; 3 L12*L14*L27; 3 L12*L15*L17
10 L12*L15*L18; 9 L12*L17*L19; 9 L12*L17*L31; 7 L12*L17*C_OHD_ZR
15 L12*L18*TY_Q_; 10 L12*L20*L27; 7 L12*L21*C_OHD_ZR; 12 L12*L22*L25
74 L12*L22*L27; 106 L12*L22*L32; 23 L12*L22*L35; 7 L12*L23*L23
3 L12*L25*RY_P; 6 L12*L27*RY_P; 24 L12*RX_P*DROP_OCR_Y; 3 L14*L17*L26
15 L15*L15*L31; 10 L15*L15*RX_P; 9 L15*L16*RX_P; 24 L15*L21*L24
5 L15*L22*L31; 45 L15*L31*L34; 7 L16*L21*TY_Q_; 5 L16*L23*L32
6 L16*L23*L35; 52 L16*L24*L28; 22 L16*L24*TY_Q_; 13 L16*L28*L28
41 L16*L28*TY_Q_; 1 L16*L35*RY_P; 1 L16*RX_P*TY_Q_; 4 L17*L17*L26
4 L17*L18*L24; 1 L17*L18*TX_Q_; 4 L17*L21*DROP_OCR_Y; 13 L17*L23*L23
50 L17*L27*L34; 10 L17*L34*L34; 9 L17*L35*L36; 32 L18*L21*L23
26 L18*L21*L24; 64 L18*L21*TY_Q_; 15 L18*L22*L30; 30 L18*L23*RX_P
62 L18*L24*TY_Q_; 4 L18*L25*L28; 14 L18*L27*L30; 1 L18*L29*DROP_OHP_YZ
16 L18*L30*L34; 30 L18*DROP_OHP_YZ*TY_Q_; 1 L20*L34*L36; 20 L21*L21*DROP_OCR_Y
28 L21*L23*DROP_OCR_Y; 20 L21*L24*TY_Q_; 76 L21*L26*L34; 2 L22*L31*L31
79 L22*L31*L34; 5 L23*L23*RX_P; 28 L23*L24*TY_Q_; 20 L23*L29*L29
5 L23*L30*L32; 3 L23*L30*L34; 3 L24*L34*L34; 3 L24*L36*TY_Q_
27 L26*L36*RX_P; 62 L27*RX_P*TY_Q_; 5 L28*L36*RX_P; 15 L28*RX_P*TY_Q_
5 L29*L34*L34; 22 L31*L31*L34; 11 L31*L34*RX_P; 18 L31*L34*RY_P
27 L31*L34*TY_Q_; 21 L31*L36*RY_P; 20 L31*L36*TY_Q_; 24 L32*RX_P*TY_Q_
7 L33*TY_Q_*TY_Q_; 30 L34*L35*RX_P; 2 L35*L35*RX_P; 1 L35*RX_P*RX_P
6 L35*RX_P*TY_Q_; 3 L36*L36*RY_P; 7 DROP_OHP_YZ*TY_Q_*TY_Q_; 34 RX_P*TY_Q_*TY_Q_
10 KLOW*L5; 20 KLOW*L10; 15 KLOW*TY_Q_; 5 CENT*L18
9 CENT*C_OHD_ZR; 72 CENT*DROP_OCR_Y; 2 TOPCOUNT*L23; 34 -HYZ*L9
79 -HYZ*L22; 72 -HYZ*L27; 25 -HYZ*DROP_OHP_YZ; 35 -HYZ*RY_P
34 -HYZ*TY_Q_; 32 -OHZ*L4; 74 -OHZ*L27; 1 -OHZ*L30
4 -OHZ*L32; 42 -OHZ*L35; 10 -OHZ*RY_P; 5 -HCZ*L1
24 -HCZ*L10; 54 +OCP*L3; 14 +OCP*L5; 2 +OCP*L17
3 +OCP*L21; 20 +OCP*L30; 10 -CDP*L10; 3 -CDP*L20
15 -CDP*L27; 38 -CDP*L28; 39 -CDP*L35; 5 -CDP*L36
56 -CDP*TY_Q_; 9 -CYP*L8; 72 -CYP*L17; 2 -CYP*L32
25 -CYP*-OHD; 62 -CYP*DROP_OHP_YZ; 10 -CYP*RX_P; 15 -CYP*DROP_OCQ_Y
97 -HFQ*L1; 20 -HFQ*L21; 18 -HFQ*L22; 20 -HFQ*L28
82 -HFQ*C_OHD_ZR; 20 -HFQ*TX_Q_; 22 -HFQ*DROP_OCR_Y; 19 +CDQ*L5
54 +CDQ*L18; 32 +CDQ*L23; 82 -DFQ*L4; 21 -DFQ*L24
20 -DFQ*-OHD; 23 -DFQ*DROP_OHP_YZ; 65 -DFQ*DROP_OCR_Y; 15 +HCR*L18
53 +HZR*L17; 7 +HZR*L21; 4 +OQR; 36 +OQR*L0
3 +OQR*L3; 65 +OQR*L4; 8 +OQR*L17; 20 +OQR*L21
28 +OQR*L23; 3 +OQR*L29; 63 +OQR*L34; 14 +OQR*L36
36 +OQR*RY_P; 23 -DPQ*L1; 31 -DPQ*L5; 171 -DPQ*L17
7 -DPQ*L21; 30 -DPQ*L24; 172 -DPQ*DROP_OHP_YZ; 32 -DPQ*TY_Q_
36 -DPQ*DROP_OCR_Y; 16 -CYZ; 7 -CYZ*L5; 3 -CYZ*L9
72 -CYZ*L26; 54 -CYZ*L34; 20 -CYZ*DROP_OCQ_Y; 21 -OYP*L36
3 +HPR*L1; 30 +HPR*L5; 80 +HPR*L14; 2 +HPR*L20
5 +HPR*DROP_OHP_YZ; 50 +HPR*DROP_OCQ_Y; 2 +HPR*TX_Q_; 48 +HPR*TY_Q_
20 -HDR*L12; 10 +CFR*L1; 2 +CFR*L16; 3 +CFR*L20
22 +CFR*L22; 49 +CFR*TY_Q_; 27 -ODY*L12; 1 -ODY*L14
34 -ODY*RX_P; 6 +OFZ*L1; 6 +DZR*L4; 31 +DZR*L6
4 +DZR*L14; 31 +DZR*L17; 20 +DZR*L19; 74 +DZR*L22
75 +DZR*+OCF; 71 +DZR*C_OHD_ZR; 75 +DZR*RX_P; 31 +DZR*TX_Q_
14 +OYR*L18; 3 +CPR*L12; 1 -ZQR*L15; 3 +ZPR*L1
9 +ZPR*L17; 3 C_DZP_R*L12; 22 TPY_Q_*L5; 8 TPY_Q_*L23
37 TPY_Q_*L28; 24 Q_OCFH_YZR*TY_Q_; 5 Q_OYDZ_R*L18
```

Upper bound: `-64747878187/91000000000`.

### Leaf RTUmmpmmpmmmpmpp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR -ODY +OFZ +OFR`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDFR +ODR
P OHDYR +OYR
P OHDZP -OZP
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHYZ -FYZ
P FOHYR -FYR
P FOHQR -FQR
P FODPQ +FPQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YOFQR +YQR
P ZODPQ +ZPQ
P POHZR -PZR
P POFQR +PQR
```

```c1top-bounds
T OHF ZR 0 lower 6903218/8301179
T OHF ZR 3 lower 347/500
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
S Q - 2 upper 71/102
X Q - 10 lower 8549039/9947000
Y Q - 11 lower 26257/35394
```

```c1top-box
h 831/1000 1
c 347/500 177/200
d 437/1000 697/1000
f 347/500 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 859/1000 1
m 741/1000 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
5 L0*L17*DROP_OHQ_ZR; 7 L0*L20*TX_Q_; 4 L0*L23*DROP_OHP_YZ; 1 L0*L31*RY_P
1 L1*L2*L22; 8 L1*L2*DROP_OCR_Y; 2 L1*L4*L6; 1 L1*L4*L24
31 L1*L6*DROP_OCR_Y; 1 L1*L10*RX_P; 5 L1*L20*L27; 2 L1*L21*L24
23 L1*L21*DROP_OCR_Y; 3 L1*L22*L24; 7 L2*L2*L11; 9 L2*L2*L19
1 L2*L5*L12; 1 L2*L5*L19; 3 L2*L6*L15; 23 L2*L18*L21
1 L2*L19*L30; 2 L3*L4*L10; 9 L3*L4*L29; 1 L3*L16*L31
3 L3*L18*L32; 42 L3*L18*DROP_OCR_Y; 4 L3*L29*C_OHD_ZR; 2 L3*L29*DROP_OCR_Y
7 L4*L17*L17; 18 L4*L17*L20; 9 L4*L17*DROP_OCR_Y; 1 L4*L20*L35
8 L4*L20*RY_P; 30 L4*L29*DROP_OCR_Y; 4 L4*L31*DROP_OCR_Y; 4 L4*C_OHD_ZR*TX_Q_
2 L4*RY_P*TX_Q_; 24 L5*L6*DROP_OHP_YZ; 3 L5*L6*RX_P; 10 L5*L6*RY_P
2 L5*L11*RX_P; 8 L5*L16*L16; 104 L5*L16*DROP_OCR_Y; 3 L5*L21*L25
14 L5*L21*DROP_OHP_YZ; 13 L5*L21*TY_Q_; 1 L5*L36*RX_P; 8 L6*L16*L19
3 L6*L34*RX_P; 25 L6*DROP_OHP_YZ*TY_Q_; 1 L6*TY_Q_*TY_Q_; 25 L6*TY_Q_*DROP_OCR_Y
1 L7*L12*L18; 3 L7*L12*L20; 1 L7*L12*TY_Q_; 9 L7*L18*L22
5 L7*L18*C_OHD_ZR; 1 L7*L24*C_OHD_ZR; 1 L8*L26*L29; 3 L9*L20*L21
13 L10*L17*DROP_OCR_Y; 3 L12*L21*TX_Q_; 1 L12*L29*RY_P; 1 L12*RX_P*TY_Q_
1 L14*DROP_OHP_YZ*RX_P; 1 L15*L16*L16; 1 L15*L16*L22; 27 L16*L16*TY_Q_
11 L16*L18*L21; 2 L16*L18*L36; 1 L16*L18*TY_Q_; 2 L16*L22*L31
9 L16*L29*TY_Q_; 1 L16*L31*+OCF; 2 L17*L18*L33; 2 L17*L18*L34
8 L17*L18*DROP_OHQ_ZR; 8 L17*L18*TX_Q_; 4 L17*L23*L28; 4 L17*L23*RY_P
79 L17*L23*DROP_OCR_Y; 1 L17*L29*L34; 1 L17*L34*TY_Q_; 1 L18*L18*L25
17 L18*L21*L26; 62 L18*L21*DROP_OCR_Y; 2 L18*L22*L29; 1 L18*L24*RY_P
1 L18*L31*RX_P; 3 L18*RX_P*DROP_OCQ_Y; 2 L18*RX_P*DROP_OCR_Y; 2 L19*L29*DROP_OCR_Y
3 L21*L30*DROP_OHQ_ZR; 1 L23*L29*L29; 1 L23*L29*DROP_OHP_YZ; 1 L29*L31*DROP_OCR_Y
1 L29*L34*TY_Q_; 1 L29*C_OHD_ZR*RX_P; 1 KLOW*L9; 1 KLOW*L25
11 KLOW*TX_Q_; 8 KLOW*DROP_OCR_Y; 1 +ODF*L18; 8 +OCP*L3
1 +OCP*L19; 17 +OCP*L21; 9 -CDP*L3; 3 -CDP*L11
7 -CDP*L17; 39 -CDP*DROP_OHP_YZ; 4 -CDP*DROP_OHQ_ZR; 33 -CDP*DROP_OCR_Y
14 -CYP*L3; 2 -CYP*L22; 1 -CYP*L28; 7 -CYP*C_OCF_Y
13 -CYP*DROP_OCR_Y; 5 -HFQ*L17; 12 -HFQ*+OCF; 7 -HFQ*DROP_OHQ_ZR
6 -HFQ*DROP_OCQ_Y; 25 -HFQ*DROP_OCR_Y; 1 -DFQ*L13; 4 -DFQ*L22
4 -DFQ*-OHD; 11 -DFQ*+OCF; 11 -DFQ*RY_P; 9 -DFQ*DROP_OCQ_Y
54 -DFQ*DROP_OCR_Y; 1 +HZR*L29; 2 -DPQ*L10; 27 -DPQ*L16
1 -DPQ*L18; 2 -DPQ*L31; 42 -DPQ*+OCF; 79 -DPQ*DROP_OCR_Y
7 -OYP*L2; 1 -OYP*L17; 2 +OYQ*L18; 1 +HPR*L5
1 +HPR*L27; 2 +HPR*RY_P; 1 +HPR*DROP_OCR_Y; 2 -HDR*TX_Q_
3 -ODY*L16; 1 -ODY*L28; 1 -ODY*RY_P; 1 -ODY*DROP_OCQ_Y
4 -ODY*DROP_OCR_Y; 2 +OFR*RY_P; 1 +OFR*TY_Q_; 34 +CPQ*L2
1 +CPQ*L18; 3 -FQR*C_OHD_ZR; 2 C_OHF_ZR*RX_P; 4 C_OHF_ZR*RY_P
3 C_OHF_ZR*TY_Q_; 3 C_OHF_ZR*DROP_OCR_Y; 5 C_ODP_Y*L29; 1 C_ODP_Y*L31
1 TPX_Q_*RY_P; 26 TPY_Q_*L16; 22 TPY_Q_*RX_P; 1 SP_OPDH_YR_OD1*L20
1 Q_OQFH_ZR*L29; 32 Q_OCPD_Y*L17; 26 Q_OCPD_Y*L20; 1 Q_OCRZ_Y*L29
```

Upper bound: `-276460797/500000000`.

### Leaf RTUmmpmmpmmmpp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHFYQ -OFY
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHPR -DPR
P DOHQR +DQR
P FODPQ +FPQ
P FHCQR -FQR
P YOHDR +YDR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCDZ +YDZ
P YOCZP -YZP
P ZODPQ +ZPQ
P POHZR -PZR
P POFQR +PQR
P QOHYR -QYR
M OHDRZY 1
M ODHRYZ -1
M HODYZR -1
M HDOYRZ 1
M DOHZYR 1
M DHOZRY -1
```

```c1top-bounds
T OHD YZR 0 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
48 L0*L1*L22; 46 L0*L1*L36; 6 L0*L3*L18; 48 L0*L7*L17
112 L0*L17*L30; 4 L0*L18*TX_Q_; 2 L0*L21*L23; 79 L1*L1*L30
23 L1*L2*L2; 17 L1*L2*L26; 131 L1*L2*L32; 260 L1*L3*L10
36 L1*L3*L30; 10 L1*L4*L6; 26 L1*L4*L21; 1 L1*L6*L27
95 L1*L8*L14; 17 L1*L8*L27; 11 L1*L9*L31; 48 L1*L9*L35
11 L1*L10*L17; 5 L1*L10*L23; 23 L1*L10*L25; 37 L1*L10*L30
3 L1*L11*L21; 107 L1*L11*L31; 4 L1*L13*+OCF; 92 L1*L14*L14
30 L1*L16*L18; 8 L1*L16*RX_P; 40 L1*L17*L29; 18 L1*L17*DROP_OCQ_Y
9 L1*L18*L29; 5 L1*L19*L36; 6 L1*L20*L24; 24 L1*L21*L28
8 L1*L22*L33; 48 L1*L23*L28; 7 L1*L23*L29; 5 L1*L23*L35
24 L1*L23*DROP_OCQ_Y; 3 L1*L24*L29; 3 L1*L25*+OCF; 39 L1*L27*L31
22 L1*L30*+OCF; 5 L1*L31*TX_Q_; 24 L1*L34*TX_Q_; 31 L1*-OHD*+OCF
215 L1*RX_P*RY_P; 24 L1*TY_Q_*TY_Q_; 16 L2*L3*L12; 8 L2*L4*L21
1 L2*L4*L23; 2 L2*L4*RY_P; 13 L2*L4*TX_Q_; 4 L2*L4*TY_Q_
145 L2*L10*L30; 154 L2*L10*L34; 1 L2*L11*L23; 12 L2*L12*L13
33 L2*L12*TY_Q_; 86 L2*L17*-OHD; 14 L2*L17*+OCF; 9 L2*L18*L21
1 L2*L18*L36; 39 L3*L3*L11; 62 L3*L3*L14; 23 L3*L3*L32
14 L3*L3*RX_P; 200 L3*L3*TY_Q_; 78 L3*L8*L17; 15 L3*L12*L28
195 L3*L17*L23; 9 L3*L18*L29; 2 L3*L18*TY_Q_; 1 L3*L23*L28
200 L3*L23*RX_P; 3 L3*L27*TY_Q_; 228 L3*L30*L32; 22 L4*L4*L21
1 L4*L4*L25; 2 L4*L5*L17; 18 L4*L10*L31; 113 L4*L11*L12
455 L4*L12*L32; 48 L4*L12*L35; 197 L4*L14*L17; 25 L4*L15*L20
47 L4*L17*L17; 274 L4*L17*+OCF; 18 L4*L20*RY_P; 1 L4*L36*RY_P
12 L5*L8*L18; 1 L5*L12*L23; 1 L5*L14*L18; 1 L6*L12*L15
3 L6*L23*L24; 23 L7*L14*L23; 37 L8*L8*L36; 68 L8*L14*L23
4 L8*L14*L31; 237 L8*L14*RX_P; 12 L8*L17*L30; 123 L8*L17*-OHD
82 L8*L17*+OCF; 166 L8*L18*L30; 167 L8*L30*RY_P; 37 L9*L12*L31
1 L9*L12*TY_Q_; 1 L9*L17*L21; 192 L10*L12*L32; 33 L10*L20*RX_P
9 L11*L12*L22; 167 L11*L12*RX_P; 32 L12*L16*L23; 124 L12*L17*L18
10 L12*L17*L21; 68 L12*L17*L31; 1 L12*L22*L23; 12 L12*L30*RX_P
1 L12*L30*DROP_OCQ_Y; 16 L12*L31*C_OCF_Y; 65 L12*L35*RX_P; 1 L13*L18*L30
1 L13*L20*L34; 8 L14*L14*RX_P; 124 L14*L17*L17; 234 L14*L17*L18
3 L14*L17*L32; 234 L14*L18*RX_P; 1 L14*L20*TY_Q_; 1 L14*L23*L29
1 L14*L30*DROP_OHP_YZ; 8 L15*L17*L34; 46 L15*L34*L34; 4 L16*L17*L31
103 L16*L18*RX_P; 15 L16*L20*L25; 1 L16*L20*L30; 103 L17*L17*L19
4 L17*L17*L33; 185 L17*L18*-OHD; 15 L17*L21*L24; 63 L17*L21*L34
8 L17*L21*L36; 9 L17*L21*DROP_OCR_Y; 9 L17*L22*L24; 2 L17*L22*DROP_OCQ_Y
13 L17*L23*L27; 25 L17*L23*L36; 98 L17*L23*C_OCF_Y; 10 L17*L27*DROP_OCQ_Y
4 L17*L30*RX_P; 95 L17*L33*DROP_OCQ_Y; 3 L17*L35*L36; 1 L18*L18*L30
2 L18*L20*TY_Q_; 19 L18*L21*L28; 11 L18*L28*L31; 1 L18*L30*RY_P
8 L20*L28*RX_P; 2 L20*TY_Q_*TY_Q_; 2 L21*L23*L23; 2 L23*L23*L29
2 L23*L28*TX_Q_; 33 L23*L30*RX_P; 12 L30*L30*DROP_OHP_YZ; 161 L31*L34*L34
62 CENT*L2; 174 CENT*L22; 161 CENT*L28; 102 -HYZ*L1
39 -HYZ*L3; 616 -HYZ*L4; 192 -HYZ*L10; 87 -HYZ*L13
154 -HYZ*L14; 166 -HYZ*L23; 415 -HYZ*L31; 235 -HYZ*RX_P
378 +OCY*L1; 154 -OHZ*L14; 91 -OHZ*L32; 327 -OHZ*L35
13 +OCP*L4; 13 +OCP*L14; 25 +OCP*-OHD; 266 +OCP*RX_P
274 -CDP*L2; 222 -CDP*L14; 216 -CDP*-OHD; 8 -CDP*TX_Q_
2 -CDP*TY_Q_; 11 -CYP*L1; 5 -HFQ*L3; 5 -HFQ*L8
1 -HFQ*L13; 24 -HFQ*L14; 3 -HFQ*L25; 2 -DFQ*L28
5 -DFQ*L31; 2 -CFQ*L23; 71 +HZQ*L17; 1 +FZQ*L12
1 -DZQ*L23; 2 -HFR*L22; 23 -CYR*L1; 25 -DPQ*L15
2 -DPQ*L23; 373 -CYZ*L8; 64 -CYZ*L24; 64 -CYZ*L25
154 -CYZ*L34; 330 -CYZ*-OHD; 175 -CYZ*DROP_OCQ_Y; 3 +OYQ*L1
77 +OYQ*L14; 33 +OYQ*RX_P; 3 +HPR*L22; 1 -HDR*L4
1 +CFR*L1; 2 +CFR*L22; 428 +ODY*L0; 106 +ODY*L4
60 +ODY*L5; 167 +ODY*L8; 18 +ODY*L32; 144 +ODY*L33
48 +ODY*C_OCF_Y; 4 +FPQ*L1; 2 C_OHR_Z*L20; 18 C_ODZ_Y*L30
5 C_OZP_Y*L1; 5 TPX_Q_*L8; 18 Q_OCDZ_Y*L12; 1 Q_OCPZ_Y*L12
124 Q_OCPZ_Y*L17; 11 Q_OCPQ_Y*L1; 9 Q_OCQR_Y*L17; 38 Q_HCPD_R*L17
15 Q_HYCF_R*L1; 9 Q_HYDF_R*L1; 8 Q_HPDF_R*L17; 87 Q_HZYD_R*L12
```

Upper bound: `-1805094471/1000000000`.

### Leaf RTUmmpmmpmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR +HDR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHZR -DZR
P DOFPR -DPR
P DOFQR +DQR
P DHCYR -DYR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR +PQR
P QOHCR -QCR
P QOHYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
42 L0*L0*L25; 16 L0*L0*L29; 59 L0*L0*TX_Q_; 132 L0*L3*TX_Q_
74 L0*L7*L28; 15 L0*L10*L17; 13 L0*L12*L30; 13 L0*L12*L35
4 L0*L14*L30; 1 L0*L16*L17; 173 L0*L17*L23; 8 L0*L17*L26
134 L0*L18*L21; 94 L0*L18*L29; 2 L0*L23*L24; 181 L0*L23*L29
109 L0*L23*TX_Q_; 26 L0*L27*RX_P; 2 L0*L31*RX_P; 11 L0*L35*RX_P
17 L0*RX_P*TX_Q_; 30 L0*TX_Q_*TX_Q_; 132 L1*L1*L20; 153 L1*L2*L6
7 L1*L2*L14; 4 L1*L2*L24; 27 L1*L2*L27; 393 L1*L4*L6
2 L1*L4*L8; 18 L1*L4*L24; 2 L1*L14*L14; 107 L1*L17*L20
87 L1*L20*L20; 2 L1*L20*L24; 1 L1*L31*L31; 87 L2*L4*L27
12 L2*L11*L17; 10 L2*L17*L36; 10 L2*L17*DROP_OHP_YZ; 16 L3*L3*L35
77 L3*L4*L10; 48 L3*L4*L23; 22 L3*L5*L18; 21 L3*L8*L14
11 L3*L14*L14; 109 L3*L18*L27; 4 L3*L18*L30; 210 L3*L18*-OHD
24 L3*L18*RX_P; 59 L3*L18*RY_P; 167 L3*L18*TX_Q_; 172 L3*L21*L21
14 L3*L23*L27; 70 L3*L28*L29; 4 L3*L34*L36; 174 L4*L4*L17
68 L4*L11*L17; 12 L4*L12*L32; 4 L4*L14*L17; 815 L4*L17*L20
40 L4*L17*L24; 39 L4*L17*L25; 293 L4*L17*L27; 44 L4*L17*L31
314 L4*L17*-OHD; 106 L4*L18*L21; 41 L4*L18*L25; 96 L4*L23*TX_Q_
12 L4*L24*L29; 7 L6*L7*L18; 97 L6*L18*RX_P; 80 L7*L23*L23
17 L7*L23*RX_P; 44 L8*L17*L18; 44 L8*L17*RY_P; 68 L8*L18*L19
18 L8*L18*RY_P; 5 L9*L14*L18; 1 L9*L17*L32; 7 L10*L17*L30
4 L10*L17*L34; 8 L11*L12*L14; 22 L12*L12*L28; 30 L12*L14*L32
10 L12*L16*RX_P; 11 L12*L28*L32; 7 L12*L32*RX_P; 10 L14*L17*L29
10 L15*L17*TX_Q_; 1 L16*L17*L23; 10 L17*L17*L30; 10 L17*L17*L31
24 L17*L18*L20; 217 L17*L18*L23; 68 L17*L18*L27; 86 L17*L18*L32
28 L17*L19*L29; 197 L17*L20*L23; 10 L17*L21*L34; 139 L17*L23*L23
67 L17*L23*L27; 243 L17*L23*RY_P; 7 L17*L27*TX_Q_; 70 L17*L29*RY_P
68 L18*L18*L25; 239 L18*L20*L21; 117 L18*L21*L23; 9 L18*L21*L24
98 L18*L21*L27; 110 L18*L27*TX_Q_; 27 L18*RX_P*TY_Q_; 1 L21*L21*L27
8 L21*L21*L28; 1 L21*L23*L24; 94 L21*L23*L28; 42 L21*L23*L29
42 L21*L23*RX_P; 247 L21*L28*RX_P; 22 L22*RX_P*TY_Q_; 22 L23*L23*L29
4 L23*L24*L29; 79 L23*L24*RY_P; 14 L23*L27*L29; 23 L23*L29*L29
2 L24*RX_P*TY_Q_; 1 L28*RX_P*RX_P; 11 L31*L34*L34; 2 L34*L36*L36
23 RX_P*RX_P*TY_Q_; 27 KLOW*L1; 141 KLOW*L4; 34 KLOW*L7
37 KLOW*L10; 24 KLOW*L15; 54 KLOW*L19; 181 KLOW*L22
17 KLOW*L25; 52 KLOW*L27; 61 KLOW*L29; 11 KLOW*L31
18 FAN*L8; 21 CENT*L10; 1 CENT*L18; 1 CENT*L23
4 CENT*L30; 21 CENT*L35; 1 CENT*RY_P; 4 -HYZ*L3
35 -HYZ*L14; 12 -HYZ*L27; 11 -HYZ*C_OHD_Z; 12 -HYZ*DROP_OHP_YZ
2 -HYZ*RY_P; 1 -HYZ*TY_Q_; 12 -HYZ*DROP_OCR_Y; 20 +OCY*L17
5 +OCY*L30; 9 -OHZ*L8; 5 -OHZ*L14; 4 -OHZ*L16
14 -OHZ*L30; 36 -OHZ*L35; 2 -OHZ*RY_P; 209 +OCP*L17
269 +OCP*L21; 17 +OCP*L23; 7 +OCP*L24; 23 +OCP*L27
136 +OCP*RX_P; 141 -CDP*L0; 86 -CDP*L11; 4 -CDP*L14
482 -CDP*L20; 197 -CDP*L23; 7 -CDP*L25; 87 -CDP*L27
70 -CDP*L29; 42 -CDP*C_OCF_Y; 267 -CDP*DROP_OCQ_Y; 45 -CYP*L19
12 -CYP*L27; 30 -CYP*L28; 4 -CYP*L36; 40 -CYP*RY_P
12 -CYP*DROP_OCR_Y; 85 -HFQ*L7; 113 -HFQ*L17; 48 -HFQ*L18
146 -HFQ*L24; 98 -HFQ*L29; 149 -HFQ*C_OHD_Z; 10 -HFQ*RY_P
171 -DFQ*L0; 102 -DFQ*L23; 77 -HFR*L4; 119 -HFR*L21
42 +DFR*L27; 7 +OQR*L17; 347 -DPQ*L4; 785 -DPQ*L17
27 -DPQ*L18; 239 -DPQ*L20; 117 -DPQ*L23; 9 -DPQ*L24
207 -DPQ*L27; 173 -DPQ*L28; 763 -DPQ*DROP_OHP_YZ; 46 -DPQ*RX_P
9 -CYZ*L1; 4 -CYZ*L14; 1 -CYZ*L23; 59 -CYZ*C_OHD_Z
8 -OYP*L2; 7 -OYP*L4; 8 -OYP*L30; 34 -FPR*L1
7 -FPR*L7; 68 -FPR*L18; 140 -FPR*L22; 42 -HQR*L1
138 -HQR*L4; 135 -HQR*L6; 24 -HQR*L21; 15 -HQR*L22
42 -HQR*L27; 233 +HDR*L4; 5 +HDR*L20; 116 +HDR*L23
42 +HDR*L27; 12 +HDR*L29; 9 +HDR*+OCF; 175 +HDR*DROP_OCQ_Y
27 +CPQ*L18; 41 +DQR*L18; 7 -FQR*L6; 178 -FQR*L19
23 -FQR*L20; 15 -FQR*L23; 42 -FQR*DROP_OCR_Y; 215 C_OHQ_ZR*L4
73 C_OHQ_ZR*TX_Q_; 90 C_HDF_R*L4; 35 C_HDF_R*L27; 14 TPY_Q_*L23
12 Q_OCPZ_Y*L8; 152 Q_HDQF_R*L6; 61 Q_HDQF_R*L16; 65 Q_HDQF_R*L21
69 Q_HDQF_R*L26; 69 Q_HDQF_R*RX_P; 29 Q_HDQF_R*TY_Q_
```

Upper bound: `-747831929/1000000000`.

### Leaf RTUmmpmmpmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR +HQR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P HODQR +HDR
P CODPQ +CPQ
P CODPR +CPR
P DOHZR -DZR
P DOFPR -DPR
P DOFQR +DQR
P DHCYR -DYR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR +PQR
P QOHZR -QZR
P QOCDR -QCR
P QOCYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 7841/10000 1
c 347/500 177/200
d 4379/10000 359/400
f 93/1000 4173/5000
u 279/1000 699/1000
v 21/200 5797/10000
z 93/1000 513/1000
w 197/625 7899/10000
p 8433/10000 1
q 21/200 371/625
l 279/1000 1
m 1351/2500 1
r 279/1000 907/1000
t 197/625 907/1000
```

```c1top-sum
2 L0*L4*L27; 13 L0*L4*TX_Q_; 2 L0*L5*L27; 3 L0*L17*L25
7 L0*L17*TX_Q_; 5 L0*L17*TY_Q_; 1 L0*L20*L29; 6 L0*L20*TX_Q_
63 L0*L22*TX_Q_; 3 L0*L25*RX_P; 6 L0*L25*TX_Q_; 3 L0*L29*TX_Q_
13 L0*RX_P*TY_Q_; 13 L0*DROP_OCQ_Y*TX_Q_; 29 L0*TX_Q_*DROP_OCR_Y; 3 L1*L2*L24
15 L1*L2*DROP_OCQ_Y; 5 L1*L2*DROP_OCR_Y; 12 L1*L3*L4; 2 L1*L6*TY_Q_
5 L1*L17*L23; 3 L1*L17*L29; 22 L1*L22*L24; 6 L1*L24*TY_Q_
7 L2*L4*RY_P; 19 L2*L4*TY_Q_; 2 L2*L6*TY_Q_; 1 L2*L17*DROP_OHP_YZ
7 L2*L24*TY_Q_; 2 L2*RY_P*TX_Q_; 1 L3*L18*L20; 5 L3*L18*-OHD
58 L3*L18*TY_Q_; 11 L3*L22*L27; 3 L4*L17*L29; 54 L4*L17*TY_Q_
79 L4*L17*DROP_OCR_Y; 31 L4*L23*TX_Q_; 1 L4*L24*TX_Q_; 63 L4*L24*TY_Q_
8 L4*L27*RX_P; 9 L4*L27*TX_Q_; 8 L5*L18*L29; 4 L5*L18*RX_P
25 L5*L21*TY_Q_; 1 L6*L17*L28; 2 L6*L22*L29; 6 L6*L24*TY_Q_
4 L6*L27*TX_Q_; 1 L6*TY_Q_*TY_Q_; 1 L7*L18*L21; 1 L7*L23*L25
5 L7*L23*TX_Q_; 1 L7*L27*TY_Q_; 3 L16*L21*DROP_OCQ_Y; 1 L17*L17*C_OCF_Y
2 L17*L17*RY_P; 9 L17*L18*L20; 4 L17*L18*L28; 36 L17*L18*DROP_OCR_Y
29 L17*L22*L27; 12 L17*L23*L23; 11 L17*L23*L26; 4 L17*L23*TX_Q_
4 L18*L21*L28; 56 L18*L21*DROP_OCR_Y; 12 L18*L22*TX_Q_; 9 L18*RX_P*TX_Q_
36 L18*RX_P*DROP_OCR_Y; 5 L20*L27*RY_P; 1 L21*RX_P*TY_Q_; 3 L22*L24*TY_Q_
11 L23*L27*RX_P; 5 L23*L28*L29; 2 L23*L29*C_OHD_Z; 1 L25*L28*L29
5 L27*TX_Q_*TY_Q_; 7 L28*RX_P*TX_Q_; 6 L28*TX_Q_*TX_Q_; 3 KLOW*L17
14 KLOW*DROP_OCQ_Y; 8 KLOW*TX_Q_; 21 KLOW*TY_Q_; 5 KLOW*DROP_OCR_Y
3 +OCP*L17; 8 +OCP*TY_Q_; 2 -CDP*L17; 17 -CDP*L22
5 -CDP*L28; 10 -CDP*TX_Q_; 33 -CDP*TY_Q_; 36 -CDP*DROP_OCR_Y
27 +CDQ*L5; 7 +CDQ*L24; 6 -DFQ*L6; 15 -DFQ*L23
12 -DFQ*RY_P; 7 -CFQ*L17; 4 -HFR*L6; 6 -HFR*L21
11 -HFR*DROP_OCR_Y; 12 -DPQ*L5; 12 -DPQ*L23; 4 -DPQ*L28
1 -DPQ*L29; 51 -DPQ*DROP_OCR_Y; 6 +HQR*L5; 4 +HQR*L7
11 +HQR*L26; 1 +HQR*L29; 21 +HQR*DROP_OCQ_Y; 1 +DQR*L3
63 +DQR*L4; 9 +DQR*L6; 6 +DQR*L21; 1 +FPQ*L4
6 -FQR*L21; 13 -FQR*L22; 7 -FQR*C_OHD_Z; 3 -FQR*TY_Q_
11 -FQR*DROP_OCR_Y; 4 C_HDF_R*L21; 33 C_HFQ_R*L4; 12 C_HFQ_R*L22
11 C_HFQ_R*L26; 4 C_HFQ_R*L29; 43 C_HFQ_R*DROP_OCQ_Y; 12 C_HFQ_R*TX_Q_
2 TPX_Q_*L23; 1 TPY_Q_*L2; 13 TPY_Q_*L5; 1 Q_OCQF_Y*L21
3 Q_HDQF_R*L6; 1 Q_HDQF_R*L21; 1 Q_HDQF_R*L22; 2 Q_HDQF_R*L24
4 Q_HDQF_R*DROP_OHP_YZ; 22 Q_HDQF_R*TY_Q_
```

Upper bound: `-16756392257/1000000000000`.

### Leaf RTUmmpmmppmmmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR -HQR -HDR -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDZQ +ODZ
P OHDQR +ODR
P OHFZR -OFR
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FOZPR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P POHZR -PZR
P QOHCR -QCR
P QOHYR -QYR
P QOHPR -QPR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
80 L0*L1*L21; 95 L0*L3*L18; 257 L0*L6*L23; 304 L0*L8*L30
25 L0*L12*L21; 198 L0*L12*TY_Q_; 228 L0*L17*L18; 41 L0*L24*TY_Q_
117 L1*L1*L6; 210 L1*L1*L8; 390 L1*L1*L17; 710 L1*L1*L30
15 L1*L2*L6; 709 L1*L3*L10; 420 L1*L3*L14; 24 L1*L5*L30
35 L1*L6*L14; 10 L1*L6*L18; 11 L1*L6*L21; 183 L1*L6*L30
158 L1*L6*TY_Q_; 139 L1*L8*L12; 218 L1*L8*L14; 97 L1*L8*L17
162 L1*L10*L30; 1025 L1*L12*L23; 263 L1*L12*RX_P; 897 L1*L14*L30
93 L1*L17*L27; 54 L1*L17*DROP_OHP_YZ; 39 L1*L21*L28; 33 L1*L23*L25
176 L1*RX_P*RX_P; 122 L2*L3*L5; 29 L2*L6*TY_Q_; 285 L2*L10*L30
145 L2*L17*C_OHD_ZR; 1907 L2*L17*TY_Q_; 133 L3*L3*L14; 513 L3*L3*L18
204 L3*L4*L17; 74 L3*L5*L8; 762 L3*L5*L14; 479 L3*L10*L31
40 L3*L10*L36; 447 L3*L14*L14; 803 L3*L14*L18; 27 L3*L14*L20
147 L3*L14*L30; 122 L3*L17*L19; 260 L3*L18*L18; 32 L3*L18*L21
1107 L3*L18*L28; 730 L3*L18*L30; 29 L3*L21*L32; 325 L3*L23*L23
181 L3*L28*L30; 57 L3*L28*L32; 74 L3*L28*L35; 136 L3*L30*L32
190 L4*L6*L30; 540 L4*L14*L17; 641 L4*L17*L20; 185 L4*L17*L24
217 L4*L17*L29; 181 L4*L17*L33; 5 L5*L6*L24; 65 L5*L6*TY_Q_
121 L5*L14*L20; 82 L5*L18*L21; 201 L5*L21*L23; 304 L5*L21*L28
325 L5*RX_P*TY_Q_; 669 L6*L10*L30; 163 L6*L10*L31; 20 L6*L14*L21
93 L6*L14*L30; 268 L6*L14*TY_Q_; 325 L6*L17*L22; 26 L6*L17*TY_Q_
69 L6*L18*L21; 29 L6*L18*L27; 23 L6*L18*L29; 149 L6*L18*L31
1 L6*L18*L36; 11 L6*L18*RY_P; 19 L6*L18*TX_Q_; 24 L6*L22*L23
46 L6*L23*TY_Q_; 12 L6*L24*L28; 86 L7*L23*L23; 1 L7*L23*L26
179 L8*L10*L17; 122 L8*L17*RY_P; 125 L8*L18*L28; 1316 L8*L18*L30
92 L10*L10*L13; 1 L10*L12*L21; 129 L10*L12*L35; 76 L10*L14*L17
221 L10*L14*L30; 115 L10*L17*L28; 1082 L10*L17*L30; 59 L10*L17*L35
597 L10*L17*C_OHD_ZR; 114 L10*L31*RX_P; 578 L12*L14*RX_P; 883 L12*L18*L30
344 L12*L18*L31; 168 L14*L17*L21; 305 L14*L17*L30; 246 L14*L17*DROP_OCQ_Y
168 L14*L17*TX_Q_; 65 L14*L17*DROP_OCR_Y; 122 L17*L17*L32; 822 L17*L17*TY_Q_
822 L17*L18*L20; 305 L17*L20*L26; 305 L17*L23*L24; 11 L17*L23*L27
63 L17*L23*L29; 171 L17*L23*-OHD; 97 L17*L23*DROP_OCQ_Y; 66 L17*L27*L30
66 L17*L27*L31; 11 L17*L27*RY_P; 207 L17*L28*L29; 228 L17*L28*RY_P
182 L17*L29*DROP_OCR_Y; 65 L17*L36*DROP_OCR_Y; 228 L18*L21*L23; 149 L18*L21*L28
14 L18*L24*L28; 11 L18*L24*TY_Q_; 59 L18*L30*L32; 26 L20*L28*L30
98 L21*L23*L28; 25 L21*L28*L36; 325 L23*RX_P*TY_Q_; 11 L24*L28*TY_Q_
390 L28*L28*RX_P; 175 L28*L30*RX_P; 176 L31*L31*L34; 447 L31*L34*L34
282 CENT*L7; 27 CENT*L21; 190 +HDF*L30; 474 -HYZ*L1
879 -HYZ*L4; 904 -HYZ*L5; 503 -HYZ*L6; 480 -HYZ*L9
162 -HYZ*L10; 221 -HYZ*L14; 75 -HYZ*L17; 6 -HYZ*L18
339 -HYZ*L29; 431 -HYZ*L33; 1 -HYZ*TX_Q_; 825 +OCY*L17
236 -HFZ*L1; 409 -HFZ*L3; 37 -HFZ*L6; 431 -HFZ*L12
676 -HFZ*L14; 363 -HFZ*L17; 1114 -HFZ*L22; 154 -HFZ*L23
1 -HFZ*L24; 394 -HFZ*L31; 65 -HFZ*RY_P; 263 -HFZ*TY_Q_
122 -CDP*L0; 122 -CDP*L2; 120 -CDP*L6; 9 -CDP*L10
786 -CDP*L14; 228 -CDP*L18; 1695 -CDP*L20; 1 -CDP*L25
715 -CDP*L28; 356 -CDP*L30; 172 -CDP*TX_Q_; 1174 -CYP*L8
99 -CYP*L14; 1685 -CYP*L17; 32 -CYP*L18; 175 -CYP*L21
164 -CYP*L23; 59 -CYP*L32; 306 -CYP*C_OHD_ZR; 1172 -CYP*DROP_OHP_YZ
635 -CYP*RX_P; 119 -CYP*TX_Q_; 164 -CYP*TY_Q_; 505 -HFQ*L5
25 -HFQ*L14; 462 -HFQ*L18; 98 -HFQ*L22; 55 -HFQ*L25
93 -HFQ*L26; 119 -HFQ*-OHD; 29 -HFQ*+OCF; 440 -HFQ*RY_P
100 -DFQ*L14; 169 -DFQ*L18; 111 -DFQ*L23; 150 -DFQ*L27
65 -DFQ*L28; 263 -HFR*L16; 11 -HFR*L21; 75 -HFR*L23
43 -HFR*L29; 1 -HFR*L30; 42 -HFR*RX_P; 41 -HFR*RY_P
27 +OQR*L4; 38 +OQR*L6; 166 +OQR*L17; 40 +OQR*L23
14 +OQR*RY_P; 75 -DPQ*L1; 1022 -DPQ*L3; 228 -DPQ*L5
26 -DPQ*L10; 17 -DPQ*L21; 228 -DPQ*L23; 67 -DPQ*L24
246 -DPQ*L34; 26 -DPQ*L35; 822 -DPQ*RX_P; 17 -DPQ*TX_Q_
180 -DPQ*DROP_OCR_Y; 58 -CYZ*L5; 608 -CYZ*L8; 59 -CYZ*L10
431 -CYZ*L12; 2050 -CYZ*L26; 2050 -CYZ*L27; 43 -CYZ*+OCF
474 -CYZ*C_OHD_ZR; 653 -CYZ*DROP_OHP_YZ; 82 -CYZ*RY_P; 347 -OYP*L0
823 -OYP*L2; 7 -OYP*L4; 1637 -OYP*L30; 1496 -OYP*L31
23 -OYP*L36; 32 -OYP*RY_P; 30 -OYP*TX_Q_; 26 +OYQ*L17
43 +FPR*L6; 1 +FPR*L12; 11 +FPR*L18; 67 +FPR*L20
93 +FPR*C_OHD_ZR; 191 +FPR*TY_Q_; 1 -HDR*L9; 286 -HDR*L17
67 -HDR*L20; 240 -OFZ*L0; 30 -OFZ*L4; 163 -OFZ*L8
679 -OFZ*L14; 64 -OFZ*L18; 20 -OFZ*L21; 43 -OFZ*L23
1 -OFZ*L25; 37 -OFZ*L29; 524 -OFZ*L30; 260 -OFZ*L31
665 -OFZ*L32; 663 -OFZ*C_OHD_ZR; 531 -OFZ*DROP_OHP_YZ; 17 +DQR*L6
272 +DQR*L16; 43 +DQR*L19; 93 +DQR*L28; 132 +DQR*DROP_OHP_YZ
122 +DQR*RY_P; 40 +DQR*TY_Q_; 178 C_OHR_Z*L17; 653 C_OCZ_Y*L17
416 C_OFQ_ZR*L0; 396 C_OFQ_ZR*L17; 143 C_OFQ_ZR*L23; 59 C_OFQ_ZR*L27
233 C_OFQ_ZR*L34; 23 TPX_Q_*L3; 197 SP_OCDH_YR_CH-1*L17; 665 Q_OYFH_Z*L14
149 Q_OYFH_Z*L17; 505 Q_OYFH_Z*L30; 81 Q_OCRF_YZ*L17; 883 Q_OCPZ_Y*L30
34 Q_OYDF_ZR*L17
```

Upper bound: `-3365936219/1000000000`.

### Leaf RTUmmpmmppmmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR -HQR -HDR -ODY +OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHYZ -FYZ
P FOHPR +FOR
P FOCPR +FCR
P FODZR +FZR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P ZODPQ +ZPQ
P POHZR -PZR
P QOHCR -QCR
P QOHYR -QYR
P QOHPR -QPR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
S Q - 2 upper 628/721
Y Q - 11 lower 7233571/12759537
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 109/125
f 279/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 283/500 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
28 L0*L17*L26; 2 L0*L17*L32; 32 L1*L1*L6; 2 L1*L1*L15
2 L1*L1*L16; 2 L1*L2*L8; 10 L1*L2*L24; 16 L1*L2*L28
48 L1*L2*TY_Q_; 27 L1*L4*L12; 2 L1*L6*L8; 17 L1*L6*L27
48 L1*L6*+OCF; 68 L1*L6*DROP_OCQ_Y; 44 L1*L10*RX_P; 15 L1*L12*DROP_OCR_Y
4 L1*L15*L34; 52 L1*L21*L21; 10 L1*L21*L24; 10 L1*L23*L24
5 L1*L30*C_OHD_ZR; 7 L2*L3*L34; 4 L2*L5*L17; 65 L2*L5*L21
4 L2*L5*DROP_OCR_Y; 14 L2*L6*L34; 16 L2*L7*L23; 13 L2*L10*L17
18 L2*L10*TY_Q_; 1 L2*L14*L30; 4 L2*L16*L28; 25 L2*L16*TY_Q_
53 L2*L17*L27; 20 L2*L21*L28; 3 L2*L23*L24; 4 L2*L23*L27
8 L2*L23*L34; 10 L2*L28*RX_P; 49 L3*L5*L23; 2 L3*L6*L10
14 L3*L6*DROP_OCR_Y; 7 L3*L8*L18; 3 L3*L9*L34; 39 L3*L11*L18
7 L3*L12*L14; 21 L3*L18*L18; 75 L3*L18*L23; 80 L3*L18*L28
32 L3*L18*TX_Q_; 10 L3*L34*L35; 1 L4*L6*L25; 3 L4*L12*L13
5 L4*L12*L32; 10 L4*L17*L24; 7 L4*L17*L34; 2 L4*L24*L34
6 L4*L31*L34; 102 L5*L5*RX_P; 1 L5*L9*L16; 16 L5*L9*L18
3 L5*L10*L21; 2 L5*L12*L14; 2 L5*L12*L30; 2 L5*L12*TY_Q_
86 L5*L16*TY_Q_; 20 L5*L17*L18; 75 L5*L18*L21; 41 L5*L18*L24
3 L5*L21*L21; 20 L5*L21*L25; 11 L5*L21*L27; 54 L5*L21*TY_Q_
51 L5*L23*L29; 1 L5*L24*L29; 42 L6*L6*L19; 1 L6*L14*L15
1 L6*L14*L25; 10 L6*L15*L21; 17 L6*L15*L22; 30 L6*L16*TY_Q_
35 L6*L17*L18; 12 L6*L17*RY_P; 39 L6*L17*DROP_OCR_Y; 2 L6*L19*L31
46 L6*L19*TY_Q_; 7 L6*L21*L26; 52 L6*L21*TY_Q_; 34 L6*L22*RY_P
1 L6*L23*L35; 31 L6*L23*RX_P; 73 L6*L26*TY_Q_; 1 L6*L30*TY_Q_
2 L6*L31*RY_P; 26 L6*L34*RY_P; 10 L6*L34*TX_Q_; 13 L6*L34*DROP_OCR_Y
85 L6*RY_P*TY_Q_; 4 L7*L18*L18; 6 L7*L18*L27; 5 L8*L18*TX_Q_
2 L8*L23*TY_Q_; 10 L10*L12*L28; 5 L10*L12*L30; 2 L10*L12*RX_P
1 L10*L17*L20; 1 L10*L17*L23; 3 L10*L18*L21; 12 L10*L21*RX_P
6 L11*L12*L25; 6 L11*L12*L27; 15 L11*L16*TY_Q_; 1 L12*L18*L31
1 L12*L19*L32; 4 L12*L21*L27; 2 L12*L22*TY_Q_; 20 L12*L23*C_OHD_ZR
1 L12*L26*RX_P; 4 L12*L27*TX_Q_; 1 L12*L28*L30; 6 L12*L35*DROP_OCR_Y
1 L14*L21*RX_P; 2 L14*L28*L30; 1 L15*L16*L21; 4 L15*L18*L21
1 L15*L31*L31; 3 L15*L31*L36; 37 L16*L18*L21; 25 L16*L23*TY_Q_
39 L16*L24*TY_Q_; 20 L16*L27*L28; 1 L16*L30*L32; 3 L16*L34*TY_Q_
17 L17*L18*L26; 41 L17*L18*DROP_OCQ_Y; 23 L17*L18*TX_Q_; 39 L17*L23*L25
1 L17*L34*DROP_OCR_Y; 1 L17*L35*L36; 60 L18*L20*RX_P; 25 L18*L21*L23
9 L18*L21*L31; 30 L18*L23*L29; 1 L18*L24*L36; 7 L18*L24*TY_Q_
20 L18*L25*L28; 13 L18*L27*RX_P; 11 L18*L27*TX_Q_; 41 L18*RX_P*TY_Q_
25 L18*RX_P*DROP_OCR_Y; 75 L21*L23*L28; 32 L21*L25*L28; 17 L23*L23*L24
28 L23*L28*RX_P; 27 L23*RX_P*TY_Q_; 17 L25*TY_Q_*TY_Q_; 2 L30*TY_Q_*TY_Q_
4 L31*L31*L34; 5 L31*L34*L36; 2 L34*L34*L36; 1 L34*RX_P*TY_Q_
26 RX_P*TY_Q_*TY_Q_; 4 RX_P*TY_Q_*DROP_OCR_Y; 9 KLOW*L3; 1 KLOW*L13
15 KLOW*L17; 70 KLOW*L20; 12 KLOW*L28; 16 KLOW*L29
5 KLOW*RY_P; 30 KLOW*TY_Q_; 8 CENT*L14; 4 CENT*L19
1 CENT*L20; 1 +HDF*L12; 22 -HYZ*L3; 14 -HYZ*L4
1 -HYZ*L13; 1 -HYZ*L17; 4 -HYZ*L31; 9 -HYZ*-OHD
20 -HYZ*C_OCF_Y; 1 -HYZ*RY_P; 1 +OCY*L34; 4 -HCY*L34
15 -HFY*L12; 2 +CFY*L12; 28 -OHZ*L11; 5 -OHZ*L14
20 -OHZ*L22; 16 -OHZ*L29; 36 -OHZ*RY_P; 15 -OHZ*DROP_OCR_Y
6 -HCZ*L31; 6 -HFZ*L1; 10 +OCP*L3; 54 +OCP*L8
1 +OCP*L14; 9 +OCP*L28; 10 -CDP*L2; 101 -CDP*L5
65 -CDP*L20; 14 -CDP*L25; 28 -CDP*L28; 7 -CDP*L34
35 -CDP*L35; 20 -CYP*L4; 1 -CYP*L14; 4 -CYP*L28
1 -CYP*L30; 37 -CYP*-OHD; 19 -CYP*DROP_OCQ_Y; 13 -CYP*TX_Q_
78 -HFQ*L1; 50 -HFQ*L2; 42 -HFQ*L7; 84 -HFQ*L14
24 -HFQ*L19; 52 -HFQ*L21; 47 -HFQ*L22; 85 -HFQ*L25
20 -HFQ*L26; 1 -HFQ*L30; 84 -HFQ*L34; 28 -HFQ*TY_Q_
12 -DFQ*L0; 38 -DFQ*L23; 75 -DFQ*L24; 2 -DFQ*RX_P
58 +DFR*TY_Q_; 20 +OQR*L1; 2 +OQR*L15; 62 +OQR*L17
21 +OQR*L18; 43 +OQR*L23; 92 +OQR*RY_P; 24 -DPQ*L1
23 -DPQ*L5; 3 -DPQ*L10; 4 -DPQ*L15; 21 -DPQ*L18
89 -DPQ*L23; 3 -DPQ*L29; 22 -DPQ*+OCF; 63 -DPQ*TY_Q_
114 -DPQ*DROP_OCR_Y; 7 -CYZ; 11 -CYZ*L6; 1 -CYZ*L9
9 -CYZ*-OHD; 13 -OYP*L2; 13 -OYP*L6; 2 -OYP*L23
14 +FPR*L3; 4 +FPR*L18; 3 +FPR*L20; 132 +FPR*L27
20 +FPR*L28; 1 +FPR*L36; 30 +FPR*C_OHD_ZR; 110 +FPR*TY_Q_
132 +FPR*DROP_OCR_Y; 10 -HDR*L3; 28 -HDR*L19; 42 -HDR*L20
10 -HDR*L23; 19 -HDR*L27; 42 -HDR*RY_P; 85 -HDR*TX_Q_
19 -HDR*DROP_OCR_Y; 8 -ODY*L1; 3 -ODY*L6; 10 -ODY*L14
34 -ODY*RX_P; 2 -ODY*TY_Q_; 12 +OFZ*L7; 11 +OFZ*L8
7 +OFZ*L14; 17 +OFZ*L22; 1 +OFZ*L24; 6 +OFZ*L36
3 +OFZ*+OCF; 2 +OFZ*DROP_OHP_YZ; 25 +OFZ*RY_P; 12 +OFZ*DROP_OCR_Y
21 +CPQ*L18; 3 +CPR*L21; 100 +DQR*L3; 10 +DQR*L6
2 +DQR*L14; 43 +DQR*L22; 97 +DQR*+OCF; 40 +DQR*C_OHD_ZR
62 +DQR*DROP_OHP_YZ; 32 +DQR*RY_P; 39 -CFR*L17; 12 -CFR*L18
6 +FZR*L12; 6 -YZR*L12; 32 C_OHF_Z*L1; 6 C_OHF_Z*L36
10 C_OHF_Z*TY_Q_; 9 C_OCZ_Y*L23; 1 TPX_Q_*L14; 3 TPX_Q_*L21
1 Q_CQFY_R*L23; 1 Q_CPQF_R*L23; 3 Q_DQFY_R*L12; 1 Q_DFZP_R*L6
42 Q_DQFP_R*L6
```

Upper bound: `-66464533/1000000000`.

### Leaf RTUmmpmmppmmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR -HQR -HDR +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHFYQ -OFY
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHPR -DPR
P DOHQR +DQR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHDR +YDR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCDZ +YDZ
P YOCZP -YZP
P ZODPQ +ZPQ
P POHZR -PZR
P QOHCR -QCR
P QOHYR -QYR
P QOHPR -QPR
M OHDRZY 1
M ODHRYZ -1
M HODYZR -1
M HDOYRZ 1
M DOHZYR 1
M DHOZRY -1
```

```c1top-bounds
T OHD YZR 0 lower 823/1000
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
1 L0*L1*L14; 1 L0*L1*L18; 13 L0*L1*L25; 2 L0*L1*DROP_OHP_YZ
5 L0*L3*L3; 27 L0*L3*L14; 18 L0*L5*L17; 7 L0*L7*L18
26 L0*L8*L27; 128 L0*L17*L26; 3 L0*L17*L29; 18 L0*L17*DROP_OCQ_Y
18 L0*L18*TX_Q_; 29 L0*L20*L25; 79 L0*L20*TY_Q_; 18 L0*L23*TX_Q_
1 L1*L1*L10; 1 L1*L1*L32; 104 L1*L2*L8; 21 L1*L2*L25
54 L1*L3*L10; 10 L1*L3*L19; 1 L1*L4*L4; 19 L1*L4*L6
1 L1*L4*L36; 7 L1*L5*L6; 1 L1*L6*L6; 26 L1*L6*L10
29 L1*L6*L18; 70 L1*L6*L22; 14 L1*L6*L27; 8 L1*L6*+OCF
13 L1*L8*L8; 7 L1*L10*L17; 4 L1*L10*L24; 18 L1*L17*L17
2 L1*L17*-OHD; 17 L1*L17*RX_P; 111 L1*L21*L26; 3 L1*L21*L31
3 L1*L21*L35; 3 L1*L21*TY_Q_; 34 L1*L23*L24; 1 L1*L28*L34
1 L1*L28*RY_P; 52 L1*L30*DROP_OCQ_Y; 6 L2*L2*L11; 29 L2*L2*L35
12 L2*L4*L25; 43 L2*L6*RY_P; 7 L2*L8*RY_P; 19 L2*L11*L12
8 L2*L14*L15; 25 L2*L15*TY_Q_; 19 L2*L18*L23; 20 L2*L34*TY_Q_
48 L3*L3*L14; 15 L3*L4*L6; 31 L3*L5*L30; 14 L3*L10*L23
14 L3*L14*L18; 57 L3*L17*L30; 21 L3*L18*L25; 56 L3*L18*L28
22 L3*L18*-OHD; 17 L3*L27*L30; 32 L3*L32*TY_Q_; 15 L3*L36*L36
32 L4*L4*L17; 6 L4*L12*L36; 14 L4*L14*L17; 2 L4*L17*L17
2 L4*L17*L18; 21 L4*L17*L20; 45 L4*L17*L24; 7 L4*L20*L27
25 L4*L21*L26; 34 L4*L23*RX_P; 12 L4*L30*L33; 6 L4*L30*L34
43 L4*L30*C_OCF_Y; 8 L5*L6*L17; 1 L5*L12*L23; 2 L5*L12*L24
15 L5*L23*L24; 89 L5*L28*RX_P; 2 L6*L13*L24; 34 L6*L17*DROP_OCR_Y
17 L6*L18*L23; 49 L6*L22*TY_Q_; 23 L6*L25*TY_Q_; 1 L6*TY_Q_*TY_Q_
14 L7*L10*L23; 8 L7*L12*DROP_OCQ_Y; 8 L7*L18*L30; 17 L7*L18*TY_Q_
1 L7*L23*L28; 6 L8*L8*TY_Q_; 8 L8*L10*L23; 1 L8*L15*L23
32 L8*L17*L18; 10 L8*L17*RY_P; 26 L8*L17*DROP_OCQ_Y; 3 L8*L21*L28
25 L8*L23*TY_Q_; 6 L9*L12*TY_Q_; 19 L10*L12*L35; 7 L10*L14*L17
19 L10*L14*L30; 9 L10*L21*L23; 5 L10*L21*L27; 2 L10*L28*L30
1 L10*L30*-OHD; 8 L10*L30*DROP_OCQ_Y; 21 L11*L12*TY_Q_; 15 L12*L16*L35
7 L12*L18*L29; 5 L12*L23*DROP_OCR_Y; 2 L12*L25*TX_Q_; 15 L12*L27*L28
53 L12*L32*DROP_OCR_Y; 16 L12*TY_Q_*TY_Q_; 2 L13*L21*L24; 5 L15*L21*L21
15 L16*L18*L21; 1 L16*L23*L27; 8 L16*L24*L34; 1 L17*L17*-OHD
38 L17*L18*DROP_OCQ_Y; 7 L17*L20*L23; 1 L17*L22*L22; 7 L17*L23*L25
35 L17*L26*TY_Q_; 29 L17*L30*DROP_OHP_YZ; 12 L18*L19*L24; 7 L18*L20*L21
15 L18*L20*RX_P; 2 L18*L21*TY_Q_; 34 L18*L24*TY_Q_; 9 L18*L25*L29
23 L18*L30*RX_P; 15 L18*RX_P*DROP_OCQ_Y; 12 L18*RX_P*DROP_OCR_Y; 2 L19*L20*L23
9 L20*L26*TY_Q_; 6 L20*L30*L32; 1 L21*L27*L31; 7 L23*L23*L29
16 L23*L23*L30; 2 L23*L23*RX_P; 2 L23*L24*L31; 9 L23*L24*TY_Q_
5 L23*L30*DROP_OCR_Y; 23 L23*RX_P*RY_P; 1 L23*RX_P*DROP_OCQ_Y; 8 L27*L30*RX_P
29 L30*RX_P*RX_P; 13 L31*L31*L34; 31 L31*L34*L36; 7 L34*L35*RX_P
6 KLOW*L20; 3 KLOW*L36; 18 KLOW*RX_P; 6 CENT*L4
7 CENT*L14; 20 CENT*L23; 8 CENT*DROP_OHP_YZ; 2 +HCD*L17
24 +OYZ*L1; 29 +OYZ*L8; 7 +OYZ*L10; 3 -HYZ*L11
19 -HYZ*L14; 54 -HYZ*L26; 70 -HYZ*+OCF; 53 -HYZ*C_OCF_Y
35 -HYZ*DROP_OCQ_Y; 30 +OCY*L30; 8 -OHZ*L21; 37 -OHZ*L23
57 -OHZ*L35; 3 -HFZ*DROP_OCR_Y; 2 +OCP*L16; 7 +OCP*L24
89 -CDP*L0; 23 -CDP*L6; 14 -CDP*L14; 133 -CDP*L17
15 -CDP*L20; 30 -CDP*L30; 131 -CDP*DROP_OHP_YZ; 56 -CDP*TY_Q_
52 -HFQ*L5; 26 -HFQ*L10; 64 -HFQ*L22; 41 -HFQ*L25
8 -HFQ*L33; 7 -HFQ*DROP_OHP_YZ; 97 -HFQ*DROP_OCR_Y; 12 +CDQ*L1
37 -HFR*L19; 36 -HFR*RY_P; 5 +DFR*L2; 5 +DFR*L8
25 +DFR*L16; 12 +DFR*L21; 1 +DFR*RY_P; 39 +OQR*L10
7 +OQR*L17; 18 +OQR*L23; 18 -DPQ*L1; 7 -DPQ*TX_Q_
104 -CYZ*L1; 35 -CYZ*L3; 30 -CYZ*L8; 25 -CYZ*L24
165 -CYZ*-OHD; 8 -CYZ*DROP_OHP_YZ; 25 -CYZ*TY_Q_; 38 +OYQ*L1
9 +OYQ*L9; 28 +OYQ*L14; 7 +OYQ*L28; 68 +OYQ*L32
26 +OYQ*DROP_OHP_YZ; 112 +OYQ*DROP_OCR_Y; 67 -OZR*L8; 9 +HPR*L6
128 +FPR*L0; 8 +FPR*L8; 145 +FPR*L17; 12 +FPR*L19
7 +FPR*L20; 1 +FPR*L23; 20 +FPR*+OCF; 145 +FPR*DROP_OHP_YZ
35 +FPR*TY_Q_; 2 -HQR*L30; 45 -HDR*L1; 17 -HDR*L5
2 -HDR*L9; 24 -HDR*L10; 2 -HDR*L12; 21 -HDR*L29
15 -HDR*L34; 43 -HDR*-OHD; 48 -HDR*DROP_OCQ_Y; 12 -HDR*TX_Q_
56 +ODY*L4; 37 +ODY*L13; 8 +ODY*L20; 60 +ODY*L22
62 +ODY*L24; 56 +ODY*L28; 6 +ODY*L31; 2 +ODY*L32
55 +ODY*L33; 12 +ODY*L34; 53 +ODY*C_OCF_Y; 5 +ODY*TX_Q_
53 +ODY*DROP_OCR_Y; 63 +OYR*L4; 39 +OYR*L10; 23 +OYR*L12
20 +OYR*L17; 66 +OYR*L23; 13 +OYR*L31; 72 -OFR*L18
2 -CFR*L6; 12 -CFR*L18; 14 -FQR*L0; 13 -DYR*L17
42 +YQR*L4; 2 +YQR*L8; 68 +YQR*L10; 9 +YQR*L22
2 +YQR*L30; 12 -DZR*L0; 15 -DZR*L22; 30 -DZR*L31
29 -DZR*L35; 16 -DZR*TY_Q_; 7 C_OHQ_ZR*L16; 20 C_OCR_Y*L17
18 C_ODR_Y*L1; 26 C_HDZ_R*L31; 6 C_CFQ_R*L23; 28 Q_OYFH_Z*L4
8 Q_OYFH_Z*L12; 8 Q_OYQH_ZR*L12; 7 Q_OPDZ_Y*L12; 16 Q_ODRZ_Y*L3
2 Q_OPDQ_Y*L18; 2 Q_ODQR_Y*L3; 19 Q_ODQR_Y*L6; 1 Q_HPDF_R*L6
22 M_HDOYRZ_1_3*L2; 1 M_HDOYRZ_1_3*L11; 85 M_HDOYRZ_1_3*L17; 17 M_HDOYRZ_1_3*L31
28 M_HDOYRZ_1_3*L32; 85 M_HDOYRZ_1_3*DROP_OHP_YZ; 31 M_HDOYRZ_1_3*TY_Q_; 8 M_HDOYRZ_1_4*L17
```

Upper bound: `-610379829/125000000`.

### Leaf RTUmmpmmppmp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR -HQR +HDR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHZR -DZR
P DOFPR -DPR
P DOFQR +DQR
P DHCYR -DYR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHCR -QCR
P QOHYR -QYR
P QOHPR -QPR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
5 L0*L1*L16; 38 L0*L3*L4; 3 L0*L3*L24; 6 L0*L3*DROP_OCR_Y
10 L0*L4*L17; 36 L0*L4*L21; 12 L0*L6*RX_P; 12 L0*L21*L23
7 L0*L21*RX_P; 7 L0*L21*DROP_OCQ_Y; 1 L0*L21*DROP_OCR_Y; 32 L0*L23*L23
32 L0*L23*DROP_OCQ_Y; 20 L0*L29*TY_Q_; 10 L1*L3*L23; 78 L1*L4*L6
1 L1*L19*L27; 6 L2*L2*L17; 5 L2*L3*L4; 6 L2*L6*RY_P
3 L2*L17*TY_Q_; 6 L2*L23*L29; 3 L3*L3*L29; 82 L3*L4*L27
29 L3*L5*L18; 11 L3*L5*L29; 82 L3*L18*DROP_OCR_Y; 3 L3*RX_P*RX_P
13 L4*L4*L17; 16 L4*L17*L24; 64 L4*L17*DROP_OCR_Y; 46 L4*L18*L21
31 L4*L24*L27; 26 L5*L5*RX_P; 8 L5*L25*TY_Q_; 9 L6*L16*L27
6 L7*L18*RX_P; 36 L7*L18*TY_Q_; 20 L7*L28*RX_P; 2 L16*L20*L27
2 L16*L23*L23; 5 L16*L28*L28; 6 L17*L18*TX_Q_; 1 L17*L20*L22
25 L17*L21*L26; 23 L17*L24*TY_Q_; 32 L17*L26*L26; 8 L17*L27*TY_Q_
11 L18*L21*L23; 17 L18*L21*TY_Q_; 22 L18*L21*DROP_OCR_Y; 1 L18*L22*RX_P
25 L18*L23*L29; 1 L18*L23*DROP_OHP_YZ; 14 L18*L24*TY_Q_; 5 L18*L25*L27
14 L18*L27*L29; 22 L18*L29*C_OHD_Z; 1 L19*L28*L29; 1 L20*RX_P*TY_Q_
1 L21*L23*+OCF; 2 L21*L23*TY_Q_; 5 L21*L24*L28; 6 L21*L28*TY_Q_
2 L22*L23*TX_Q_; 5 L23*L23*RX_P; 2 L23*L24*RX_P; 31 L23*L28*L29
2 L26*RX_P*TX_Q_; 11 L27*L27*L29; 11 L27*L27*RX_P; 4 L28*RX_P*TY_Q_
6 RX_P*RX_P*TY_Q_; 31 KLOW*L4; 19 KLOW*L17; 21 KLOW*L19
25 KLOW*L22; 17 KLOW*L25; 19 KLOW*L29; 19 KLOW*RX_P
3 TOPCOUNT*L28; 15 -CDP*L20; 1 -CDP*L22; 19 -CDP*L25
30 -CDP*TY_Q_; 73 -CDP*DROP_OCR_Y; 9 +CDQ*L27; 7 -DFQ*L23
5 -HFR*L2; 8 -HFR*L16; 23 +CDR*L0; 21 +DFR*L5
84 +DFR*L23; 29 +DFR*-OHD; 3 +DFR*+OCF; 20 +DFR*DROP_OHP_YZ
20 +DFR*RY_P; 100 +DFR*DROP_OCQ_Y; 32 +DFR*DROP_OCR_Y; 20 +OQR*L4
26 +OQR*L17; 1 +OQR*DROP_OCR_Y; 29 -DPQ*L4; 4 -DPQ*L10
9 -DPQ*L17; 2 -DPQ*L22; 4 -DPQ*L32; 15 -DPQ*RX_P
32 -DPQ*DROP_OCR_Y; 33 +FPR*L5; 16 +FPR*L23; 40 +FPR*DROP_OCQ_Y
20 +FPR*DROP_OCR_Y; 6 -HQR*L4; 1 -HQR*DROP_OCR_Y; 42 +HDR*L7
31 +HDR*L23; 25 +HDR*L29; 8 +HDR*DROP_OHP_YZ; 31 +HDR*DROP_OCQ_Y
5 +HDR*TX_Q_; 1 +HDR*DROP_OCR_Y; 3 +ODR*L18; 5 +CPQ*L23
2 +DQR*L2; 9 +DQR*L4; 3 +DQR*L18; 1 +DQR*DROP_OHP_YZ
5 -OFR*L18; 29 -CFR*L0; 23 -CFR*L18; 9 -CFR*L23
13 -FQR*L18; 45 C_OHQ_ZR*L4; 94 C_HDF_R*L4; 73 C_HDF_R*L24
7 C_HDQ_R*RX_P; 4 C_HDQ_R*RY_P; 4 C_CDF_R*L23; 6 Q_HDQF_R*L2
9 Q_HDQF_R*TY_Q_; 21 Q_DQFP_R*L28
```

Upper bound: `-306273493/250000000`.

### Leaf RTUmmpmmppp

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR +HQR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P HODQR +HDR
P CODPQ +CPQ
P CODPR +CPR
P DOHZR -DZR
P DOFPR -DPR
P DOFQR +DQR
P DHCYR -DYR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHZR -QZR
P QOCDR -QCR
P QOCYR -QYR
P QODPR -QPR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
1 L0*L1*L2; 8 L0*L1*L20; 4 L0*L1*TX_Q_; 15 L0*L4*L7
4 L0*L7*L18; 1 L0*L16*L25; 11 L0*L17*L18; 10 L0*L20*TX_Q_
2 L0*L25*DROP_OCR_Y; 24 L0*RX_P*TY_Q_; 50 L0*RY_P*TX_Q_; 67 L0*DROP_OCQ_Y*TX_Q_
46 L0*TX_Q_*TY_Q_; 29 L0*TX_Q_*DROP_OCR_Y; 19 L1*L2*L4; 6 L1*L3*L23
11 L1*L16*RY_P; 8 L1*L18*L20; 11 L1*L21*L22; 52 L1*L22*L24
4 L2*L5*L24; 9 L2*L6*TY_Q_; 11 L2*L18*RY_P; 6 L2*RX_P*TY_Q_
8 L2*TX_Q_*TY_Q_; 41 L3*L18*DROP_OCR_Y; 7 L4*L4*L5; 9 L4*L5*L24
11 L4*L17*L18; 62 L4*L17*L23; 1 L4*L17*L25; 2 L4*L17*RX_P
48 L4*L17*DROP_OCQ_Y; 37 L4*L24*L27; 10 L4*L24*TY_Q_; 7 L4*RY_P*RY_P
14 L5*L5*L18; 19 L5*L16*TY_Q_; 7 L5*L18*L18; 6 L5*L18*L25
3 L5*L21*L23; 23 L5*L21*DROP_OCR_Y; 5 L6*L17*L18; 4 L6*L18*L21
51 L6*L22*RY_P; 1 L7*L16*RY_P; 23 L7*L18*DROP_OCR_Y; 8 L7*L23*L23
2 L16*L16*L27; 8 L16*L20*L27; 8 L16*L23*L27; 2 L16*L23*RX_P
4 L16*L24*TY_Q_; 1 L16*L26*RX_P; 46 L16*L26*TY_Q_; 32 L16*L27*DROP_OCR_Y
9 L17*L18*C_OCF_Y; 11 L17*L26*L26; 54 L18*L21*DROP_OCR_Y; 4 L18*L25*L27
1 L19*L29*L29; 1 L21*L22*L23; 11 L21*L23*TY_Q_; 4 L21*L27*RX_P
26 L21*L27*TY_Q_; 8 L21*L29*TY_Q_; 12 L21*TY_Q_*TY_Q_; 36 L21*TY_Q_*DROP_OCR_Y
9 L22*L24*L27; 10 L22*L24*TY_Q_; 36 L22*L27*RX_P; 2 L23*-OHD*RX_P
19 L26*L28*RX_P; 36 L26*RX_P*TY_Q_; 10 L27*L27*L29; 1 L27*L27*RX_P
9 L27*L27*TX_Q_; 4 L28*L28*L29; 4 L29*L29*TY_Q_; 2 RX_P*RX_P*TY_Q_
3 KLOW*L1; 5 KLOW*TX_Q_; 36 KLOW*DROP_OCR_Y; 7 QUADP*L27
9 QUADR*L27; 5 +OCP*L21; 8 +OCP*RX_P; 11 +OCP*TY_Q_
3 -CDP*L6; 47 -CDP*L26; 1 -CFP*TX_Q_; 16 -HFQ*L21
1 +HDQ*L16; 13 -HFR*L18; 23 -HFR*TY_Q_; 15 +DFR*L20
15 +DFR*L22; 4 +DFR*L29; 6 +DFR*RY_P; 17 +DFR*DROP_OCQ_Y
37 +DFR*DROP_OCR_Y; 2 +OQR*L21; 1 -DPQ*L1; 19 -DPQ*L23
1 -DPQ*L24; 36 -DPQ*L28; 4 -DPQ*DROP_OHP_YZ; 19 -DPQ*DROP_OCQ_Y
66 -DPQ*DROP_OCR_Y; 4 +OYQ*L6; 1 +FPR*L20; 13 +FPR*TY_Q_
42 +FPR*DROP_OCR_Y; 32 +HQR*L1; 5 +HQR*L21; 20 +HQR*L28
1 +HQR*L29; 1 +HQR*RX_P; 58 +HQR*DROP_OCQ_Y; 48 +HQR*TX_Q_
3 +HQR*TY_Q_; 15 +HQR*DROP_OCR_Y; 4 +DQR*L6; 7 +DQR*L21
2 +DQR*+OCF; 2 +DQR*RX_P; 13 +DQR*RY_P; 2 -CFR*L16
11 -CFR*L28; 4 -CFR*TX_Q_; 33 -FQR*L20; 51 -FQR*L22
42 -FQR*L28; 23 -FQR*DROP_OCR_Y; 27 +CQR*L0; 13 +PQR*L0
1 C_OHP_YZ*TY_Q_; 4 C_OHR_Z*L27; 2 C_HDF_R*L16; 17 C_HFQ_R*L21
55 C_HFQ_R*L22; 43 C_HFQ_R*L24; 5 C_HFQ_R*+OCF; 36 C_HFQ_R*RY_P
25 C_HFQ_R*DROP_OCQ_Y; 4 C_FPQ_R*RX_P; 2 Q_ORFH_Z*L17; 6 Q_ORFH_Z*L21
25 Q_ORFH_Z*TY_Q_; 4 SP_OPQF_YR_OQ1*L6; 31 Q_HDQF_R*L22; 6 Q_HDQF_R*L24
2 Q_HDQF_R*L27; 23 Q_HDQF_R*RY_P; 11 Q_CPDF_R*L18; 11 Q_CPDF_R*L23
4 Q_CDQF_R*L28; 17 Q_DQFP_R*L4; 7 Q_DQFP_R*L20; 20 Q_DQFP_R*L23
```

Upper bound: `-2506414401/500000000`.

### Leaf RTUmmpmp

Assumptions: `-CYZ -OYP +OYQ -OZQ +OZR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDZR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYZR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOFPR -DPR
P DOFQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZOHDR +ZDR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P QOCDR -QCR
P QOCYR -QYR
P QODPR -QPR
P ROCDY -RDY
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OHQ Z 10 lower 279/1000
T OCR YZ 1 lower 694/907
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 153/200 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 1
m 27/50 1
r 93/1000 907/1000
t 98/125 907/1000
```

```c1top-sum
4 L0*L3*L10; 5 L0*L14*L21; 60 L0*L21*L27; 4 L0*L23*L29
5 L0*L23*TX_Q_; 29 L0*L24*L29; 4 L0*L24*RX_P; 25 L0*L24*TX_Q_
76 L0*L27*L29; 2 L0*L29*TX_Q_; 41 L1*L2*L22; 33 L1*L2*L36
2 L1*L2*RX_P; 1 L1*L3*L5; 30 L1*L3*L6; 6 L1*L3*L21
72 L1*L3*L30; 17 L1*L4*L21; 13 L1*L5*L17; 34 L1*L6*L7
86 L1*L6*L8; 70 L1*L6*L14; 58 L1*L6*L33; 4 L1*L6*RX_P
2 L1*L6*TY_Q_; 23 L1*L8*L12; 10 L1*L8*L17; 5 L1*L9*TY_Q_
5 L1*L10*L30; 6 L1*L10*RX_P; 1 L1*L11*L25; 136 L1*L12*L26
9 L1*L14*L24; 17 L1*L16*L17; 19 L1*L17*L22; 2 L1*L17*L31
42 L1*L17*DROP_OCR_YZ; 11 L1*L18*L24; 6 L1*L19*L30; 3 L1*L21*L21
58 L1*L21*L26; 4 L1*L21*RX_P; 5 L1*L22*L30; 7 L1*L24*L27
42 L1*L26*RX_P; 86 L1*L29*L30; 50 L1*L30*L31; 26 L1*L30*L33
86 L1*L30*DROP_OHP_YZ; 70 L1*L30*DROP_OCR_YZ; 28 L2*L3*L10; 27 L2*L3*L17
5 L2*L8*L27; 89 L2*L10*RX_P; 7 L2*L14*L29; 37 L2*L17*L29
47 L2*L17*TY_Q_; 42 L2*L21*L27; 9 L2*L21*L34; 35 L2*L27*L27
14 L2*L27*RX_P; 106 L3*L3*L18; 94 L3*L4*L17; 12 L3*L5*L5
115 L3*L5*L18; 98 L3*L5*L23; 1 L3*L6*L18; 59 L3*L14*L25
40 L3*L14*L27; 15 L3*L14*-OHD; 9 L3*L14*TX_Q_; 17 L3*L15*L30
2 L3*L18*L21; 61 L3*L18*RX_P; 14 L3*L23*L27; 45 L3*L23*L28
1 L3*L35*L35; 25 L4*L4*TX_Q_; 33 L4*L17*L19; 45 L4*L17*L20
134 L4*L17*L23; 45 L4*L17*L27; 2 L4*L17*L29; 44 L4*L23*TX_Q_
5 L4*L27*L29; 92 L5*L17*L17; 43 L5*L18*L21; 54 L5*L21*TY_Q_
125 L5*RX_P*TY_Q_; 4 L6*L6*TY_Q_; 37 L6*L17*DROP_OHP_YZ; 14 L6*L18*TY_Q_
2 L6*L26*L36; 132 L6*L26*TY_Q_; 11 L6*TY_Q_*TY_Q_; 10 L7*L7*L23
5 L7*L14*L27; 36 L7*L23*L23; 14 L7*L23*L24; 26 L7*L23*L29
5 L8*L8*RX_P; 95 L8*L14*L27; 53 L8*L17*L18; 68 L8*L27*L27
5 L9*L9*L31; 6 L9*L17*L34; 68 L9*L26*L26; 115 L10*L12*L17
97 L10*L12*L30; 4 L10*L14*L17; 5 L10*L19*L30; 66 L10*L23*L30
9 L10*L24*L30; 9 L10*L24*L31; 5 L10*L30*L32; 66 L10*L30*DROP_OCQ_Y
171 L12*L14*RX_P; 9 L12*L17*DROP_OCQ_Y; 59 L12*L18*L27; 98 L12*L18*L30
50 L12*L18*L33; 23 L12*L27*L27; 32 L12*L27*L29; 59 L12*L27*L30
5 L12*L30*L33; 17 L13*L18*L24; 1 L13*L30*L30; 6 L14*L17*L18
5 L14*L17*L26; 9 L14*L17*L29; 2 L14*L17*DROP_OHP_YZ; 23 L14*L24*L27
25 L14*L24*L29; 59 L14*L24*L30; 51 L14*L24*L31; 55 L14*RX_P*RX_P
23 L15*L17*L30; 9 L15*L17*TX_Q_; 62 L15*L31*L31; 241 L16*L17*L31
33 L16*L18*L27; 37 L17*L17*L20; 250 L17*L17*L33; 92 L17*L18*L20
61 L17*L19*C_OCF_Y; 37 L17*L20*C_OCF_Y; 92 L17*L23*RX_P; 18 L17*L24*L34
31 L17*L27*L30; 250 L17*L30*DROP_OHP_YZ; 9 L17*L31*L35; 9 L17*L31*RX_P
5 L17*L36*DROP_OCR_YZ; 37 L17*RX_P*TX_Q_; 33 L17*RY_P*TY_Q_; 33 L17*RY_P*DROP_OCR_YZ
2 L17*DROP_OCQ_Y*TX_Q_; 2 L18*L21*L21; 2 L18*L21*L27; 14 L18*L21*L28
2 L18*L21*L29; 16 L18*L23*L27; 15 L18*L23*C_OCF_Y; 33 L18*L23*RX_P
26 L18*L25*L30; 16 L18*L27*DROP_OCQ_Y; 18 L18*L30*+OCF; 53 L18*L30*RX_P
31 L21*L21*L27; 19 L21*L23*L24; 10 L21*L23*L28; 12 L21*L27*TX_Q_
2 L22*L27*RX_P; 37 L23*L24*L29; 12 L23*L27*L29; 59 L26*L31*L36
5 L26*L35*RX_P; 62 L27*L30*-OHD; 8 L27*L30*+OCF; 4 L30*L30*L30
5 L30*L30*L31; 4 L30*L30*L35; 49 L31*L31*L34; 5 L31*L35*L36
5 L35*L35*RX_P; 22 CENT*L25; 53 CENT*L33; 1 TOPCOUNT*L3
4 +OYZ*L10; 35 +OYZ*L12; 2 +OYZ*L29; 99 -HYZ*L31
131 -HYZ*+OCF; 86 -HYZ*RX_P; 132 -HYZ*DROP_OCR_YZ; 157 +OCY*L17
5 +CDY*L1; 67 -HFZ*L1; 17 -OHP*L17; 20 -CDP*L1
116 -CDP*L5; 138 -CDP*L20; 18 -CDP*L23; 5 -CDP*L27
14 -CDP*-OHD; 1 -CDP*RY_P; 1 -CDP*TX_Q_; 5 +DFP*L27
265 -CYP*L3; 2 -CYP*L6; 5 -CYP*L11; 127 -CYP*L12
4 -CYP*L14; 65 -CYP*L30; 6 -CYP*-OHD; 98 -CYP*+OCF
5 -CYP*DROP_OCR_YZ; 11 -HFQ*L3; 15 -HFQ*L6; 5 -HFQ*L18
3 -HFQ*L21; 34 -HFQ*L23; 4 -HFQ*DROP_OHP_YZ; 17 -HFQ*DROP_OCQ_Y
21 -HFQ*TY_Q_; 138 -DFQ*L0; 4 -DFQ*L6; 23 -DFQ*L18
22 -DFQ*L20; 2 -DFQ*L26; 14 -DFQ*RY_P; 27 +HCR*L6
19 +HCR*L14; 5 +HCR*L21; 35 +HCR*L27; 74 +HCR*L30
52 +HCR*L31; 1 +HCR*L35; 5 -HFR*L12; 4 -HFR*L14
5 -HFR*L19; 27 -HFR*L23; 31 -HFR*L29; 75 -HFR*C_OHD_Z
32 -HFR*C_OCF_Y; 26 -HFR*DROP_OCQ_Y; 20 -HFR*TX_Q_; 120 -HFR*TY_Q_
1 +DFR*L1; 13 +HYR*RX_P; 75 +HZR*L0; 23 +HZR*L7
27 +HZR*L12; 27 +HZR*DROP_OCR_YZ; 47 -DPQ*L3; 42 -DPQ*L5
2 -DPQ*L7; 2 -DPQ*L21; 2 -DPQ*L27; 19 -DPQ*C_OHD_Z
92 -DPQ*RX_P; 297 -CYZ*L4; 136 -CYZ*L12; 4 -CYZ*L19
297 -CYZ*L23; 2 -CYZ*L29; 1 -CYZ*L32; 100 -CYZ*+OCF
119 -CYZ*DROP_OHP_YZ; 297 -CYZ*TY_Q_; 167 -OYP*L2; 2 -OYP*L21
17 -OYP*L25; 65 -OYP*L31; 112 -OYP*L33; 2 -OYP*TX_Q_
3 -OZQ*L1; 9 -OZQ*L17; 70 +OZR*L2; 44 +OZR*L11
86 +OZR*L14; 13 +OZR*L17; 59 +OZR*L18; 51 +OZR*L27
3 +OZR*L29; 88 +OZR*L32; 86 +OZR*L36; 85 +OZR*+OCF
53 -OZP*L17; 118 +DQR*L1; 14 -FQR*L7; 19 -FQR*L21
37 -FQR*L29; 1 -YZR*L1; 39 -YZR*L17; 9 -YZP*L24
52 C_OCR_YZ*L17; 66 C_OCR_YZ*RX_P; 10 C_OYR_Z*L14; 5 C_OZP_Y*L18
5 TPX_Q_*L18; 20 TPX_Q_*L21; 29 TPY_Q_*L23; 158 Q_OYRH_Z*L14
6 Q_OYRH_Z*L18; 1 Q_OCPZ_Y*L18; 148 Q_OCPZ_Y*L30; 8 Q_HZQF_R*L1
```

Upper bound: `-77373759/1000000000`.

### Leaf RTUmmpp

Assumptions: `-CYZ -OYP +OYQ +OZQ`.

```c1top-geometry
P OHDQR +ODR
P OHFYQ -OFY
P OHFZQ -OFZ
P OHYZP -OZP
P OHYQR +OYR
P OHZQR +OZR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOFPR -DPR
P DOFQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCZP -YZP
P YHCDZ +YDZ
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P QOCDR -QCR
P QOCYR -QYR
P QOCZR -QZR
P QODPR -QPR
P ROCDY -RDY
P ROCDZ -RDZ
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OCQ YZ 11 lower 694/885
T OCR YZ 1 lower 694/907
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 153/200 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 21/200 297/500
l 129/500 1
m 98/125 1
r 93/1000 907/1000
t 98/125 907/1000
```

```c1top-sum
1 L0*L1*L30; 5 L0*L3*L9; 1 L0*L5*L23; 2 L0*L6*TY_Q_
4 L0*L8*L23; 4 L0*L12*TX_Q_; 1 L0*L16*L27; 5 L0*L17*L29
3 L0*L17*L31; 4 L0*L17*L34; 2 L0*L20*TX_Q_; 4 L0*L23*L24
11 L0*L23*TX_Q_; 4 L0*L28*RX_P; 2 L0*L29*TX_Q_; 7 L0*-OHD*TX_Q_
1 L1*L1*L19; 1 L1*L1*L33; 5 L1*L2*L13; 2 L1*L4*L17
1 L1*L6*L20; 7 L1*L6*C_OCF_YZ; 5 L1*L6*DROP_OHP_YZ; 9 L1*L8*L12
1 L1*L8*L27; 1 L1*L8*L28; 3 L1*L8*RX_P; 2 L1*L9*L11
7 L1*L14*L16; 2 L1*L15*L21; 18 L1*L16*L30; 2 L1*L16*TY_Q_
4 L1*L17*DROP_OCQ_YZ; 6 L1*L18*L20; 5 L1*L18*L33; 2 L1*L18*TY_Q_
2 L1*L21*+OCF; 5 L1*L30*L30; 30 L1*L30*+OCF; 1 L1*L30*RY_P
1 L1*L35*L35; 18 L2*L3*L18; 3 L2*L4*L23; 1 L2*L14*L30
10 L2*L21*L23; 1 L2*L27*TY_Q_; 11 L2*RX_P*TY_Q_; 17 L3*L3*L20
1 L3*L4*DROP_OCR_YZ; 19 L3*L6*L16; 5 L3*L7*L10; 17 L3*L7*RX_P
35 L3*L8*L17; 5 L3*L10*L12; 1 L3*L10*DROP_OHP_YZ; 7 L3*L11*L20
2 L3*L12*L13; 2 L3*L13*L31; 2 L3*L13*RX_P; 3 L3*L16*L27
24 L3*L16*L30; 3 L3*L18*DROP_OCQ_YZ; 2 L3*L22*DROP_OCQ_YZ; 1 L3*L26*TX_Q_
4 L3*L30*L32; 3 L3*L33*TY_Q_; 3 L3*L34*L35; 17 L3*C_OCF_YZ*TX_Q_
2 L4*L4*L17; 1 L4*L6*TX_Q_; 1 L4*L14*L23; 1 L4*L18*TY_Q_
1 L4*L27*L27; 16 L5*L8*RX_P; 2 L5*L14*L16; 11 L5*L23*TX_Q_
1 L5*L26*RX_P; 15 L5*RX_P*RX_P; 3 L6*L9*L17; 4 L6*L10*L23
5 L6*L10*RX_P; 5 L6*L14*L33; 4 L6*L16*L30; 7 L6*L16*TY_Q_
4 L6*L17*L33; 8 L6*L19*L31; 1 L6*L30*L32; 15 L6*L30*DROP_OCQ_YZ
1 L7*L14*RX_P; 6 L7*L17*L31; 1 L7*L23*TX_Q_; 14 L8*L14*TX_Q_
33 L8*L17*+OCF; 2 L8*L17*DROP_OHP_YZ; 13 L8*L18*TX_Q_; 2 L8*L23*L23
2 L8*L23*TY_Q_; 7 L9*L23*TX_Q_; 10 L9*L31*L34; 42 L10*L12*L17
5 L10*L15*L17; 12 L10*L17*DROP_OHP_YZ; 4 L10*L17*TX_Q_; 3 L10*L20*L23
8 L10*L20*L36; 21 L10*L23*RX_P; 1 L10*L27*L32; 4 L10*L30*-OHD
18 L10*L30*TX_Q_; 19 L10*L31*TX_Q_; 1 L10*L35*DROP_OCR_YZ; 2 L12*L16*L17
32 L12*L16*L23; 1 L12*L18*L34; 6 L12*L22*L30; 3 L12*L23*L33
11 L12*L23*TX_Q_; 2 L12*L30*DROP_OHP_YZ; 9 L13*L17*L31; 7 L14*L17*L17
34 L14*L17*L33; 1 L14*L18*TY_Q_; 2 L14*L19*L30; 15 L14*L20*RX_P
33 L14*L30*C_OCF_YZ; 33 L14*L30*DROP_OHP_YZ; 9 L14*L30*DROP_OCQ_YZ; 5 L14*L30*TX_Q_
3 L14*L32*RX_P; 1 L14*L32*TX_Q_; 5 L16*L17*L19; 2 L16*L23*L26
1 L16*L26*TX_Q_; 7 L16*L28*TX_Q_; 32 L16*L31*L36; 3 L16*L36*TY_Q_
11 L17*L17*L28; 24 L17*L18*DROP_OHP_YZ; 5 L17*L21*DROP_OCQ_YZ; 9 L17*L22*L30
1 L17*L23*RY_P; 4 L17*L23*DROP_OCR_YZ; 3 L17*L26*C_OCF_YZ; 24 L17*L33*L35
5 L17*L36*RX_P; 8 L17*-OHD*RX_P; 8 L18*L20*L23; 1 L18*L22*L28
6 L18*L22*L30; 1 L18*L22*RX_P; 1 L18*L28*L28; 8 L18*L29*RX_P
22 L18*L30*DROP_OHP_YZ; 20 L18*RX_P*RX_P; 1 L19*L36*L36; 1 L20*L23*L29
7 L20*L23*L30; 2 L21*L36*DROP_OCQ_YZ; 5 L21*DROP_OHP_YZ*TY_Q_; 8 L22*L33*L36
2 L23*L23*L29; 3 L23*L24*L26; 1 L23*L26*L26; 1 L23*L28*L33
5 L23*L28*RX_P; 18 L23*L33*RX_P; 3 L23*L34*RX_P; 1 L23*L34*RY_P
9 L23*+OCF*TX_Q_; 8 L23*RY_P*TX_Q_; 3 L26*L26*TX_Q_; 1 L26*L26*TY_Q_
1 L26*L31*L32; 1 L27*RX_P*TX_Q_; 1 L27*RX_P*TY_Q_; 2 L28*L28*C_OCF_YZ
6 L28*RX_P*TY_Q_; 2 L30*L30*RX_P; 2 L30*L31*RX_P; 2 L30*RX_P*RX_P
10 L30*RX_P*RY_P; 2 L30*DROP_OCQ_YZ*TY_Q_; 1 L31*L31*DROP_OCQ_YZ; 1 L32*RX_P*DROP_OCR_YZ
7 L33*RX_P*TY_Q_; 3 CENT*L1; 4 CENT*L31; 10 CENT*TX_Q_
7 -OHF*L1; 1 +HDF*L1; 13 +OYZ*L3; 27 +OYZ*L12
16 +OYZ*L14; 10 +OYZ*TX_Q_; 4 -HYZ*L16; 10 -HYZ*L21
31 -HYZ*+OCF; 15 -HYZ*DROP_OHP_YZ; 4 -HYZ*DROP_OCQ_YZ; 4 -HFY*L1
2 +CFY*L17; 1 -HFZ*L1; 3 -OHP*L17; 3 +OCP*L30
1 -HFP*L30; 4 -CDP*L5; 6 -CDP*L8; 2 -CDP*L20
5 -CDP*-OHD; 15 -CDP*C_OCF_YZ; 27 -CDP*DROP_OHP_YZ; 8 -OFP*L17
2 -CYP*L12; 5 -CYP*L16; 11 -CYP*L21; 10 -CYP*+OCF
4 -CYP*DROP_OCQ_YZ; 7 -CZP*L30; 4 -HFQ*L12; 6 -HFQ*L19
11 -HFQ*L23; 4 -HFQ*L27; 17 -HFQ*L34; 2 -HFQ*C_OCF_YZ
7 -HFQ*DROP_OHP_YZ; 2 -HFQ*TX_Q_; 2 +HDQ*L3; 1 +HDQ*L6
21 -CYZ*L3; 14 -CYZ*L7; 27 -CYZ*L12; 47 -CYZ*L20
14 -CYZ*L29; 89 -CYZ*DROP_OHP_YZ; 21 -CYZ*DROP_OCQ_YZ; 2 -OYP*L15
7 -OYP*L16; 15 -OYP*L20; 7 -OYP*L29; 46 -OYP*L30
45 -OYP*L31; 7 -OYP*C_OCF_YZ; 17 -OYP*DROP_OCQ_YZ; 19 +OZQ*L3
24 +OZQ*L16; 1 +OZQ*L20; 21 +OZQ*L23; 1 +OZQ*L28
12 +OZQ*L31; 21 +OZQ*L32; 22 +OZQ*+OCF; 4 -FQR*L0
3 -FQR*DROP_OCR_YZ; 16 -YZQ*L14; 1 +YPQ*L30; 11 C_OCZ_Y*L23
1 C_OFY_Z*L14; 1 C_OZP_Y*L6; 12 C_OZP_Y*L17; 4 TPX_Q_*DROP_OCQ_YZ
1 TPY_Q_*L6; 18 Q_OCPZ_Y*L3; 35 Q_OCPZ_Y*L8; 6 Q_OCPZ_Y*L12
9 Q_OCPZ_Y*L20; 8 Q_OCPQ_YZ*L30; 3 Q_OYQF_Z*L23; 2 Q_HCQF_R*L30
1 Q_HZQF_R*L4; 17 Q_HZQF_R*L14; 6 Q_HZQF_R*L18; 5 Q_HZQF_R*L30
4 Q_HZQF_R*L32; 6 Q_HZQF_R*+OCF; 23 Q_HZQF_R*DROP_OCQ_YZ
```

Upper bound: `-703083877/500000000`.

### Leaf RTUmp

Assumptions: `-CYZ +OYP`.

```c1top-geometry
C OCP Y Z -POZ 3239749/6167600
P OHDYP -ODY
P OHDYQ +OYQ
P OHDQR +ODR
P OHFYP -OFY
P OHYPR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOCYR -DYR
P DOFPR -DPR
P DOFQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOHDZ +YDZ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YODPQ +YPQ
P YODPR +YPR
P ZHDPQ +ZPQ
P QOCDR -QCR
P QOCYR -QYR
P QODPR -QPR
```

```c1top-bounds
T OCZ Y 7 lower 93/295
T OCP Y 9 lower 93/295
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 63/200 79/100
p 843/1000 1
q 63/200 297/500
l 129/500 1
m 27/50 1
r 93/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
40 L0*L1*L17; 37 L0*L3*L23; 18 L0*L8*L23; 77 L0*L12*L15
97 L0*L12*L21; 34 L0*L12*L32; 13 L0*L12*L36; 9 L0*L12*RX_P
879 L0*L17*DROP_OCQ_Y; 18 L0*L23*L30; 433 L0*L23*TX_Q_; 2 L0*L31*RX_P
67 L1*L1*L6; 10 L1*L6*L10; 71 L1*L6*L14; 53 L1*L6*L21
76 L1*L6*L22; 16 L1*L6*L30; 677 L1*L6*RY_P; 4 L1*L6*TY_Q_
18 L1*L10*L17; 10 L1*L10*L21; 124 L1*L10*L30; 32 L1*L12*L17
110 L1*L12*L28; 580 L1*L17*DROP_OCP_Y; 40 L1*L28*L29; 40 L1*L28*RX_P
5 L2*L9*L23; 139 L2*L11*L17; 2 L2*L17*L34; 128 L2*L18*L21
5 L2*L30*TY_Q_; 5 L3*L3*L14; 1729 L3*L5*L18; 270 L3*L5*L28
69 L3*L6*L10; 14 L3*L6*L17; 48 L3*L6*TY_Q_; 20 L3*L8*L28
64 L3*L10*L14; 79 L3*L10*TY_Q_; 128 L3*L17*DROP_OCQ_Y; 1632 L3*L18*L18
507 L3*L18*L28; 270 L3*L18*TY_Q_; 846 L4*L17*L17; 309 L4*L17*L20
203 L4*L17*L28; 734 L5*L5*L21; 562 L5*L5*RX_P; 124 L5*L6*L18
11 L5*L10*L13; 19 L5*L10*L20; 50 L5*L12*L34; 198 L5*L14*RX_P
68 L5*L17*L35; 720 L5*L17*RY_P; 135 L5*L17*TX_Q_; 927 L5*L18*L21
40 L5*L21*L36; 2 L5*L23*RX_P; 308 L6*L6*TY_Q_; 92 L6*L7*L23
6 L6*L10*L23; 33 L6*L10*L33; 80 L6*L13*TY_Q_; 53 L6*L14*L21
33 L6*L14*L30; 7 L6*L14*RY_P; 128 L6*L17*L23; 14 L6*L17*L33
54 L6*L17*L36; 392 L6*L18*L23; 392 L6*L21*TY_Q_; 295 L6*L22*TY_Q_
24 L6*L23*L34; 19 L6*L28*L28; 63 L6*L30*RY_P; 73 L6*TY_Q_*TY_Q_
33 L7*L12*L23; 269 L7*L23*L23; 17 L7*L28*L30; 131 L8*L11*L17
5 L8*L14*L23; 11 L9*L9*L23; 131 L9*L10*RX_P; 50 L9*L31*L34
40 L9*L34*L34; 323 L10*L12*L19; 52 L10*L12*L30; 31 L10*L13*L23
412 L10*L14*RX_P; 211 L10*L16*L17; 272 L10*L18*L33; 3 L10*L29*RX_P
211 L10*DROP_OHP_Z*RX_P; 231 L10*DROP_OCP_Y*RX_P; 243 L10*RX_P*TY_Q_; 140 L11*L12*L18
26 L11*L17*L22; 11 L12*L12*RY_P; 50 L12*L14*L28; 68 L12*L17*L20
26 L12*L18*L29; 621 L12*L18*L32; 117 L12*L18*L35; 37 L12*L18*TX_Q_
3 L12*L21*L28; 37 L12*L23*RX_P; 12 L12*L29*L34; 70 L12*L31*L34
20 L12*L34*RX_P; 31 L12*L35*TY_Q_; 68 L13*L17*TX_Q_; 1 L14*L14*L21
188 L14*L17*L23; 20 L14*L17*L33; 183 L14*L17*DROP_OCQ_Y; 45 L14*L21*L28
5 L14*L23*RX_P; 136 L15*L15*L31; 46 L15*L17*L29; 298 L15*L18*L31
18 L15*L31*L36; 258 L17*L17*RX_P; 580 L17*L18*L28; 1411 L17*L18*RY_P
182 L17*L19*L22; 8 L17*L20*-OHD; 13 L17*L20*TY_Q_; 309 L17*L21*DROP_OCP_Y
309 L17*L21*RY_P; 685 L17*L23*L23; 367 L17*L23*-OHD; 32 L17*L23*RY_P
26 L17*L28*L30; 157 L17*-OHD*DROP_OCQ_Y; 846 L17*+OCF*RY_P; 1495 L17*DROP_OHP_Z*DROP_OCP_Y
258 L17*DROP_OHP_Z*RX_P; 1411 L17*DROP_OCP_Y*DROP_OCP_Y; 1495 L17*RX_P*RY_P; 150 L18*L18*L21
231 L18*L18*L31; 13 L18*L21*L21; 532 L18*L21*L23; 490 L18*L28*TX_Q_
646 L18*L31*L34; 117 L18*L31*L36; 272 L18*L31*TY_Q_; 57 L20*L21*L23
97 L21*L21*TY_Q_; 722 L21*L23*L28; 11 L21*L28*L28; 80 L21*L28*L31
11 L23*L30*L33; 37 L23*L31*L34; 154 L23*RY_P*TX_Q_; 154 L23*TX_Q_*TX_Q_
11 L28*L30*L31; 4 L28*L30*C_OCF_Y; 10 L28*L32*TX_Q_; 8 L28*RX_P*TX_Q_
11 L30*L30*TY_Q_; 2 L31*L31*L34; 42 L31*L36*TY_Q_; 1 L34*L34*TX_Q_
12 KLOW*L8; 88 KLOW*L12; 409 KLOW*L19; 562 KLOW*RY_P
87 KLOW*TX_Q_; 41 CENT*L9; 8 CENT*L12; 28 CENT*L16
47 CENT*L29; 16 TOPCOUNT*L10; 124 -HYZ*L10; 40 -HYZ*L34
628 -HYZ*DROP_OCP_Y; 462 +OCY*L6; 439 +OCY*L13; 464 +OCY*L14
349 +OCY*L21; 142 +OCY*L35; 780 +OCY*DROP_OCP_Y; 349 +OCY*TX_Q_
322 +OCY*TY_Q_; 52 -OHZ*L17; 6 -OHZ*L35; 116 -HFZ*L1
79 -HFZ*L2; 21 -HFZ*L13; 8 -HFZ*L16; 53 -HFZ*L21
77 -HFZ*L22; 53 -HFZ*DROP_OCP_Y; 60 -HFZ*RY_P; 42 -CDP*L10
63 -CDP*L12; 198 -CDP*L14; 598 -CDP*L23; 832 -CDP*L28
777 -CDP*C_OCF_Y; 1402 -CDP*DROP_OCP_Y; 777 -CDP*RX_P; 596 -CDP*DROP_OCQ_Y
42 -CYP*L17; 42 +DYP*L17; 80 -HFQ*L8; 180 -HFQ*L19
635 -HFQ*L20; 635 -HFQ*L21; 97 -HFQ*L23; 47 -HFQ*L36
385 -HFQ*TY_Q_; 236 -DFQ*L0; 308 -DFQ*L6; 6 -DFQ*L11
6 -DFQ*L14; 84 -DFQ*L21; 190 -DFQ*L23; 458 -DFQ*L28
80 -DFQ*L31; 128 -DFQ*RX_P; 366 -DFQ*RY_P; 852 -DPQ*L1
128 -DPQ*L8; 37 -DPQ*L13; 13 -DPQ*L21; 1159 -DPQ*L23
180 -DPQ*L28; 128 -DPQ*L31; 3 -DPQ*L32; 150 -DPQ*DROP_OCP_Y
473 -DPQ*TY_Q_; 42 -CYZ*L5; 289 -CYZ*L6; 256 -CYZ*L7
134 -CYZ*L11; 52 -CYZ*L12; 153 -CYZ*L15; 863 -CYZ*L18
44 -CYZ*L31; 9 -CYZ*L35; 272 +OYP*L5; 63 +OYP*L6
430 +OYP*L14; 481 +OYP*L19; 272 +OYP*L22; 18 +OYP*L32
712 +OYP*DROP_OCP_Y; 18 -YZP*L10; 28 C_OCP_Y*L12; 372 TPX_Q_*L0
8 TPX_Q_*L2; 86 Q_OCPD_Y*L17
```

Upper bound: `-108092499/500000000`.

### Leaf RTUpmm

Assumptions: `+CYZ -OYP -OYQ`.

```c1top-geometry
P OHDYQ +ODY
P OHDQR +ODR
P OHYZP -OZP
P OHYZQ -OZQ
P OCDYZ +ODZ
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOFPR -DPR
P DOFQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YODPQ +YPQ
P ZODPQ +ZPQ
P QOCDR -QCR
P QODPR -QPR
```

```c1top-bounds
T OHQ YZ 10 lower 347/500
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 93/1000 907/1000
t 21/200 907/1000
```

```c1top-sum
11 L0*L7*L29; 11 L1*L2*TY_Q_; 20 L1*L3*L6; 42 L1*L4*L6
29 L1*L4*+OCF; 21 L1*L6*L22; 9 L1*L6*L29; 31 L1*L6*DROP_OHP_YZ
40 L1*L6*RY_P; 22 L1*L6*TX_Q_; 29 L1*L17*L18; 18 L1*L17*L20
29 L1*L17*RY_P; 27 L1*L17*TY_Q_; 14 L1*L18*L21; 33 L1*L29*TY_Q_
14 L1*TX_Q_*TY_Q_; 10 L2*L2*L23; 49 L2*L4*L17; 31 L2*L4*TY_Q_
2 L2*L6*TY_Q_; 11 L2*L21*TY_Q_; 98 L2*RY_P*TY_Q_; 19 L3*L18*C_OHD_YZ
44 L3*L18*RX_P; 77 L4*L4*L17; 36 L4*L6*TY_Q_; 5 L4*L7*L17
77 L4*L17*L17; 61 L4*L17*L18; 85 L4*L23*L29; 10 L4*L23*TX_Q_
42 L5*L5*L21; 37 L5*L16*L21; 97 L5*L16*TY_Q_; 5 L5*RX_P*RX_P
30 L6*L6*TY_Q_; 5 L6*L21*TY_Q_; 16 L7*L23*L29; 16 L7*L23*TX_Q_
79 L16*L16*TY_Q_; 30 L16*L21*L23; 18 L16*L21*L28; 24 L16*L23*TY_Q_
18 L17*L17*L23; 42 L17*L18*L20; 61 L18*L18*L21; 25 L18*L21*L22
30 L18*L21*TX_Q_; 61 L18*L22*RX_P; 24 L18*L22*TX_Q_; 25 L18*TX_Q_*TY_Q_
10 L21*L23*L28; 29 L23*L29*RX_P; 16 L23*L29*RY_P; 11 L23*L29*TX_Q_
18 L23*RX_P*RX_P; 1 L29*RY_P*TX_Q_; 44 KLOW*TY_Q_; 39 +OCP*L3
3 +OCP*L5; 2 +OCP*L6; 11 +OCP*L21; 29 +OCP*L28
19 +OCP*C_OHD_YZ; 47 -CDP*L1; 5 -CDP*L3; 35 -CDP*L17
77 -CDP*L22; 18 -CDP*-OHD; 3 -CDP*TX_Q_; 129 -CDP*TY_Q_
13 -HFQ*L5; 42 -HFQ*L18; 4 -HFQ*L23; 63 +CDQ*L18
1 -DFQ*L1; 29 -DFQ*L6; 45 -DFQ*DROP_OHP_YZ; 40 -DFQ*RY_P
4 -DFQ*TY_Q_; 9 -DPQ*L3; 136 -DPQ*L4; 357 -DPQ*L17
61 -DPQ*L18; 24 -DPQ*L23; 27 -DPQ*L28; 17 -DPQ*L29
399 -DPQ*DROP_OHP_YZ; 30 -DPQ*TX_Q_; 22 TPX_Q_*L21; 15 TPY_Q_*L18
23 Q_OCFH_YZ*L1; 60 Q_OQFH_YZR*L4; 20 Q_OQFH_YZR*L7; 23 Q_OQFH_YZR*C_OHD_YZ
31 Q_OQFH_YZR*DROP_OHP_YZ; 82 Q_OQFH_YZR*RY_P; 22 Q_OQFH_YZR*TX_Q_
```

Upper bound: `-643424261/710937500`.

### Leaf RTUpmpmmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR -HPR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P HODPR -HDR
P HODQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPR -DPR
P DOHQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P POHFR +PFR
P POHQR +PQR
P QOHCR -QCR
P QOHYR -QYR
P ROHDY -RDY
M OHPRZY 1
M OPHRYZ -1
M HOPYZR -1
M HPOYRZ 1
M POHZYR 1
M PHOZRY -1
P YHDZP +YDZ
```

```c1top-bounds
T OHP YZR 0 lower 823/1000
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
23 L17*L18; 28 L0*L3*L31; 13 L0*L8*L30; 1 L0*L12*L31
7 L0*L17*L31; 1 L0*L28*L30; 10 L0*L30*RY_P; 3 L0*RX_P*TY_Q_
12 L1*L1*L3; 70 L1*L1*L6; 10 L1*L1*L21; 35 L1*L1*L31
36 L1*L3*L3; 11 L1*L3*L28; 12 L1*L4*L6; 36 L1*L6*L21
7 L1*L6*L22; 16 L1*L6*L29; 80 L1*L12*L18; 31 L1*L12*-OHD
135 L1*L17*DROP_OHP_YZR; 22 L1*L17*DROP_OCQ_Y; 53 L1*L21*L21; 7 L1*L21*TY_Q_
13 L1*L31*L31; 14 L1*L35*RX_P; 50 L2*L2*L19; 102 L2*L2*RY_P
23 L2*L3*L23; 62 L2*L4*L17; 34 L2*L8*RY_P; 64 L2*L12*TY_Q_
31 L2*L14*L17; 269 L2*L17*L17; 561 L2*L17*DROP_OHP_YZR; 47 L2*L19*L19
19 L2*L19*L30; 169 L2*L20*RY_P; 13 L2*L23*L32; 60 L3*L5*C_OCF_Y
7 L3*L10*L28; 12 L3*L10*L34; 2 L3*L14*L23; 59 L3*L17*TY_Q_
28 L3*L18*L18; 27 L3*L31*TY_Q_; 49 L3*L34*RX_P; 72 L4*L4*L17
109 L4*L6*L17; 16 L4*L6*TY_Q_; 16 L4*L10*L17; 116 L4*L17*L20
214 L4*L17*L23; 86 L4*L17*L29; 20 L4*L17*L36; 20 L4*L20*L28
20 L5*L17*L34; 46 L5*L18*L21; 4 L5*L18*L29; 5 L5*L20*L20
3 L5*L30*L32; 48 L6*L6*TY_Q_; 5 L6*L18*L21; 18 L6*L20*RY_P
65 L6*L21*TY_Q_; 31 L7*L13*L17; 9 L8*L12*L31; 69 L8*L14*L17
11 L8*L19*L34; 3 L8*L32*RY_P; 9 L9*L9*L12; 3 L9*L10*L18
21 L9*L10*RX_P; 6 L10*L13*L23; 13 L10*L17*DROP_OCQ_Y; 14 L10*L23*RX_P
53 L10*L28*RX_P; 18 L10*RX_P*RX_P; 9 L11*L17*L20; 7 L12*L17*L32
64 L12*L17*DROP_OCQ_Y; 3 L12*L19*L28; 64 L12*L22*RX_P; 23 L12*L23*L28
23 L12*L23*RY_P; 3 L12*L32*TY_Q_; 9 L12*L35*+OCF; 20 L12*C_OHD_ZR*TY_Q_
23 L14*L23*RX_P; 10 L15*L17*L31; 128 L16*TY_Q_*TY_Q_; 291 L17*L17*C_OCF_Y
4 L17*L18*L23; 17 L17*L18*TY_Q_; 39 L17*L19*L35; 67 L17*L20*L27
67 L17*L20*DROP_OCR_Y; 9 L17*L21*L32; 143 L17*L23*L23; 27 L17*L23*L31
30 L17*L28*L31; 91 L17*L31*L34; 23 L17*L31*RY_P; 44 L17*L32*RX_P
15 L17*L32*RY_P; 39 L17*L33*C_OHD_ZR; 11 L17*L34*L35; 21 L18*L31*L31
54 L19*L19*L30; 12 L19*L20*RY_P; 15 L19*L28*RX_P; 6 L21*L21*TY_Q_
17 L21*L23*L28; 21 L21*TY_Q_*TY_Q_; 21 L23*L23*TX_Q_; 19 L23*L29*L29
9 L23*L29*-OHD; 23 L23*L29*RX_P; 3 L23*L31*L34; 27 L23*L35*RX_P
14 L23*RY_P*TX_Q_; 6 L23*TX_Q_*TX_Q_; 26 KLOW*L19; 16 KLOW*L20
61 -OHF*L1; 50 +OYZ*L2; 43 -HYZ*L19; 34 -HCY*L1
9 -HCY*L4; 52 -HCY*L14; 12 -HCY*L18; 71 -HCY*L22
43 -HCY*L23; 27 -HCY*L33; 232 -HCY*DROP_OHP_YZR; 46 -OHZ*L3
29 -OHZ*L4; 46 -OHZ*L7; 52 -OHZ*L10; 31 -OHZ*L18
32 -OHZ*-OHD; 46 -HFP*L12; 125 -CDP*L2; 7 -CDP*L8
55 -CDP*L10; 3 -CDP*L15; 43 -CDP*L16; 19 -CDP*L19
116 -CDP*L20; 83 -CDP*L23; 64 -CDP*L33; 83 -CDP*DROP_OCQ_Y
10 -HFQ*L1; 52 -HFQ*L21; 100 -HFQ*L27; 16 -HFQ*L29
25 -HFQ*TY_Q_; 100 -HFQ*DROP_OCR_Y; 31 -DFQ*L4; 48 -DFQ*L6
23 -DFQ*L27; 37 -DFQ*C_OHD_ZR; 10 -DFQ*RY_P; 25 -DFQ*TY_Q_
23 -DFQ*DROP_OCR_Y; 23 -DPQ*L6; 83 -DPQ*L23; 53 -DPQ*+OCF
12 -DPQ*RY_P; 69 -DPQ*TY_Q_; 55 +CYZ*L4; 99 +CYZ*L14
3 +CYZ*L19; 150 +CYZ*L27; 52 +CYZ*L28; 21 +CYZ*L31
99 +CYZ*L36; 433 +CYZ*DROP_OHP_YZR; 28 +CYZ*DROP_OCQ_Y; 150 +CYZ*DROP_OCR_Y
78 -OYP*L1; 51 -OYP*L14; 54 -OYP*L18; 5 -OYP*C_OCF_Y
129 -YZP*L4; 126 -YZP*L5; 21 -YZP*L31; 99 -YZP*L33
15 -YZP*+OCF; 154 -YZP*DROP_OHP_YZR; 25 -YZP*DROP_OCQ_Y; 1 C_OHQ_ZR*L20
75 C_OZP_Y*L2; 131 C_OZP_Y*L17; 2 C_OZP_Y*L23; 36 C_OZP_Y*L31
71 C_HYP_R*L17; 25 C_HYP_R*L23; 99 C_CZP_Y*L12; 23 C_CZP_Y*L17
2 C_CZP_Y*L31; 40 C_CZP_Y*L35; 11 TPX_Q_*L21; 64 TPY_Q_*L23
13 Q_HYCP_R*L12; 9 Q_HYCQ_R*L17; 48 Q_HZCP_YR*L3; 12 SP_HZCP_YR_HC1*L3
12 Q_HZCR_Y*L3; 43 Q_CPDZ_Y*L17; 3 M_HOPYZR_-1_2*L5; 21 M_HOPYZR_-1_2*L17
```

Upper bound: `-444037193/1000000000`.

### Leaf RTUpmpmmpmmmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR -CFR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHPR -DPR
P DOHQR +DQR
P FOHCR +FOR
P FOCYR +FYR
P FODPQ +FPQ
P FODQR -FQR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P POHZR -PZR
P POFQR +PQR
P QOHCR -QCR
P QOHYR -QYR
P ROHDY -RDY
```

```c1top-bounds
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
54 L0*L2*L23; 133 L0*L6*TY_Q_; 70 L0*L18*L21; 108 L0*L21*L25
86 L0*L21*DROP_OCR_Y; 34 L1*L1*L20; 25 L1*L2*L17; 54 L1*L2*RY_P
3 L1*L3*L24; 142 L1*L4*L17; 95 L1*L6*L17; 9 L1*L6*L18
136 L1*L17*L22; 217 L1*L17*L25; 15 L1*L17*C_OHD_ZR; 86 L1*L17*DROP_OCR_Y
9 L1*L19*L19; 24 L1*L20*L20; 15 L1*L24*L28; 92 L2*L2*RY_P
8 L2*L3*L18; 67 L2*L5*L17; 382 L2*L17*L22; 40 L2*L19*L19
72 L2*L19*L27; 97 L2*L19*RY_P; 45 L2*L24*L28; 25 L2*L27*TY_Q_
8 L2*RX_P*TY_Q_; 137 L3*L18*L18; 28 L3*L18*DROP_OCR_Y; 39 L3*L21*L26
8 L3*L23*L29; 28 L4*L6*L17; 170 L4*L17*L17; 14 L4*L17*L18
269 L4*L17*L20; 72 L4*L17*L23; 147 L4*L17*L25; 15 L4*L17*TX_Q_
76 L4*L17*TY_Q_; 10 L5*L21*L27; 42 L5*L21*L28; 37 L6*L18*L25
98 L6*L18*L27; 41 L6*L18*TY_Q_; 94 L6*L24*TY_Q_; 19 L6*RX_P*TY_Q_
5 L7*L17*L19; 92 L17*L17*TY_Q_; 65 L17*L17*DROP_OCR_Y; 111 L17*L18*L23
87 L17*L18*L24; 170 L17*L18*RX_P; 92 L17*L18*TX_Q_; 36 L17*L20*-OHD
124 L17*L20*DROP_OCR_Y; 72 L17*L23*L23; 124 L17*L23*L24; 58 L17*L23*+OCF
95 L17*L23*TX_Q_; 13 L17*L29*RY_P; 206 L17*C_OHD_ZR*RY_P; 170 L17*RX_P*RY_P
111 L18*L18*L21; 32 L18*L20*TY_Q_; 54 L18*L21*L26; 159 L18*L21*L28
16 L18*L25*L28; 21 L18*L25*TY_Q_; 97 L18*L28*RX_P; 39 L19*L23*TX_Q_
5 L20*L20*L27; 95 L20*L20*RY_P; 14 L21*L21*L28; 72 L21*L23*L28
34 L21*L28*L28; 5 L23*L25*TX_Q_; 48 L23*L27*L29; 22 L26*RX_P*RX_P
76 L26*RX_P*TY_Q_; 24 L27*L28*L29; 62 KLOW*L18; 63 KLOW*L21
54 KLOW*L22; 23 KLOW*L25; 173 KLOW*L27; 54 KLOW*RY_P
82 KLOW*TX_Q_; 100 -CDP*L2; 289 -CDP*L20; 125 -CDP*L26
27 -CDP*TX_Q_; 19 -HFQ*L2; 122 -HFQ*L17; 157 -HFQ*L19
34 -HFQ*L24; 72 -HFQ*RY_P; 72 -HFQ*TY_Q_; 180 -DFQ*L0
61 -DFQ*L19; 94 -DFQ*L24; 3 -DFQ*C_OHD_ZR; 45 -DFQ*RX_P
76 -DFQ*DROP_OCR_Y; 63 -HFR*L2; 35 -HFR*L17; 70 -HFR*L18
158 +OQR*L0; 36 +OQR*L3; 141 +OQR*L18; 16 +OQR*L21
72 +OQR*L23; 39 +OQR*L29; 48 +OQR*RX_P; 76 -DPQ*L5
616 -DPQ*L17; 111 -DPQ*L18; 95 -DPQ*L20; 72 -DPQ*L23
76 -DPQ*L24; 86 -DPQ*L27; 393 -DPQ*DROP_OHP_YZ; 316 -DPQ*RX_P
15 +HPR*L0; 72 +HPR*L22; 80 +HPR*L27; 38 +HPR*+OCF
76 +HPR*TX_Q_; 15 +HPR*TY_Q_; 80 +HPR*DROP_OCR_Y; 3 -FPR*L6
87 -FPR*L16; 383 -FPR*L23; 38 -FPR*+OCF; 101 -FPR*C_OHD_ZR
579 -FPR*DROP_OCQ_Y; 52 -FPR*TY_Q_; 223 -HDR*L17; 149 -HDR*L20
22 -CFR*L3; 3 -CFR*L6; 168 -CFR*L19; 39 -CFR*L21
271 -CFR*L27; 197 -CFR*C_OHD_ZR; 81 -CFR*DROP_OHP_YZ; 53 -CFR*DROP_OCQ_Y
271 -CFR*DROP_OCR_Y; 45 +DQR*L2; 21 +DQR*L20; 72 -FQR*L0
72 -FQR*L23; 73 C_OHQ_ZR*L4; 303 C_HFP_R*L18; 41 C_HFP_R*L24
50 C_HFP_R*TY_Q_; 35 C_CFP_R*L0; 38 Q_OCRF_Y*L17; 13 Q_HCPF_R*L17
10 Q_HPDQ_R*L20
```

Upper bound: `-214568709/100000000`.

### Leaf RTUpmpmmpmmmpm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR -YZP`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHPR -DPR
P DOHQR +DQR
P FODPQ +FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YHDZP +YDZ
P ZODPQ +ZPQ
P POHZR -PZR
P POFQR +PQR
P QOHYR -QYR
P ROHDY -RDY
```

```c1top-bounds
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
102 L0*L1*L21; 5 L0*L8*L19; 51 L0*L8*RY_P; 47 L0*L10*RX_P
4 L0*L12*L36; 59 L0*L17*L28; 8 L0*L17*DROP_OCR_Y; 27 L1*L1*L6
66 L1*L1*L9; 59 L1*L1*RX_P; 127 L1*L2*L17; 56 L1*L2*L23
36 L1*L4*L6; 1 L1*L6*L27; 10 L1*L6*RY_P; 32 L1*L8*L23
15 L1*L9*L17; 1 L1*L9*L31; 70 L1*L11*L12; 14 L1*L12*L27
29 L1*L12*L31; 36 L1*L17*L24; 139 L1*L18*L21; 9 L1*L21*L21
29 L1*L28*L29; 28 L1*L35*RX_P; 65 L2*L2*L19; 330 L2*L2*RY_P
17 L2*L8*L19; 78 L2*L14*L17; 34 L2*L14*L30; 33 L2*L14*TY_Q_
42 L2*L15*L35; 96 L2*L17*L19; 64 L2*L17*L26; 52 L2*L19*L19
158 L2*L20*RY_P; 13 L2*L23*L27; 1 L2*L27*L28; 1 L2*L32*L35
1 L3*L10*L24; 49 L3*L10*L28; 1 L3*L10*L30; 115 L3*L12*RY_P
12 L3*L12*DROP_OCR_Y; 173 L3*L18*L18; 19 L3*L18*L21; 19 L3*L18*L24
94 L3*L18*L34; 68 L3*L18*TY_Q_; 18 L3*L23*L24; 12 L3*L23*L25
20 L3*L24*L34; 465 L4*L4*L17; 137 L4*L7*L23; 1 L4*L8*L35
251 L4*L17*L20; 302 L4*L17*L23; 80 L4*L17*L24; 15 L4*L17*L27
266 L4*L17*L28; 10 L4*L17*L34; 319 L4*L17*+OCF; 352 L4*L17*TY_Q_
13 L4*L20*L28; 1 L4*L23*L24; 7 L4*L24*L28; 89 L5*L5*L21
15 L5*L5*L24; 1 L5*L12*L32; 239 L5*L18*L21; 134 L5*L21*L23
19 L5*L21*RX_P; 22 L5*L27*L29; 120 L7*L23*C_OHD_ZR; 3 L7*L27*L28
1 L8*L12*L31; 98 L8*L17*L18; 14 L8*L17*L34; 9 L8*L17*DROP_OCQ_Y
59 L8*L19*L34; 1 L8*L30*L34; 1 L8*L35*L36; 22 L8*RY_P*RY_P
1 L9*L10*L12; 1 L9*L10*L23; 1 L9*L12*L12; 273 L9*L12*L18
22 L9*L17*L17; 1 L9*L23*L36; 5 L10*L11*L12; 29 L10*L12*L19
1 L10*L12*L33; 259 L10*L12*RX_P; 141 L10*L17*L18; 1 L10*L24*L34
8 L10*L28*RX_P; 76 L10*RX_P*RX_P; 54 L11*L17*L23; 30 L11*L17*L34
19 L12*L12*L19; 20 L12*L15*L24; 34 L12*L17*C_OHD_ZR; 22 L12*L18*L19
23 L12*L19*C_OHD_ZR; 10 L12*L20*L32; 23 L12*L22*TY_Q_; 10 L12*L23*L24
101 L12*L23*-OHD; 10 L12*L23*DROP_OHP_YZ; 23 L12*L23*DROP_OCQ_Y; 20 L12*L27*RX_P
12 L12*L30*TY_Q_; 1 L12*L33*L35; 34 L12*L34*RX_P; 22 L12*RY_P*TY_Q_
1 L14*L15*L17; 119 L14*L16*L17; 29 L14*L17*L19; 10 L14*L17*DROP_OCQ_Y
2 L14*L23*RX_P; 1 L15*L17*L34; 85 L16*TY_Q_*TY_Q_; 112 L17*L18*L34
106 L17*L18*TY_Q_; 8 L17*L19*L27; 93 L17*L20*L23; 98 L17*L22*C_OHD_ZR
85 L17*L23*L23; 39 L17*L23*L27; 148 L17*L23*-OHD; 6 L17*L24*DROP_OCQ_Y
43 L17*L32*TY_Q_; 22 L17*L35*DROP_OHP_YZ; 1 L18*L21*L27; 16 L18*L23*L25
230 L18*L24*TY_Q_; 121 L18*L28*RX_P; 106 L19*L20*RY_P; 19 L19*L23*L29
119 L19*L30*RY_P; 47 L19*L30*TY_Q_; 93 L20*L20*RY_P; 155 L21*L23*L28
137 L21*L28*TY_Q_; 1 L22*L30*L30; 7 L23*L23*L24; 7 L23*L26*TX_Q_
19 L23*L29*DROP_OCQ_Y; 50 L23*L32*RX_P; 9 L23*L35*DROP_OHP_YZ; 24 L24*L28*TY_Q_
6 L24*RX_P*TY_Q_; 207 L27*RX_P*TY_Q_; 23 L28*L30*RY_P; 4 L30*L32*L34
1 L30*L35*TY_Q_; 138 L34*RX_P*TY_Q_; 10 KLOW*L3; 38 KLOW*L30
10 -HCY*L2; 48 -HCY*L4; 4 -HCY*L11; 138 -HCY*L14
175 -HCY*L23; 1 -HCY*L25; 19 -HCY*-OHD; 26 -HCY*RY_P
208 -HCY*DROP_OCQ_Y; 1 -HCY*DROP_OCR_Y; 85 -OHZ*L2; 32 -OHZ*L21
124 -OHZ*L22; 48 -OHZ*L25; 14 -OHZ*L27; 16 -OHZ*L31
214 +OCZ*L17; 117 +OCP*L17; 167 -CDP*L8; 144 -CDP*L10
121 -CDP*L18; 139 -CDP*L20; 19 -CDP*L23; 74 -CDP*L24
1 -CDP*L26; 167 -CDP*L31; 86 -CDP*L33; 240 -CDP*L34
77 -CDP*+OCF; 75 -CDP*DROP_OHP_YZ; 94 -CYP*L3; 5 -CYP*L9
68 -CYP*TY_Q_; 196 -HFQ*L1; 301 -HFQ*L4; 12 -HFQ*L13
19 -HFQ*L19; 297 -HFQ*L28; 11 -HFQ*DROP_OCQ_Y; 19 +CDQ*L23
304 -DFQ*L0; 172 -DFQ*L23; 24 -DFQ*L27; 180 -DFQ*DROP_OCQ_Y
24 +HCR*L17; 4 -HFR*L1; 42 -HFR*L22; 209 -HFR*TY_Q_
28 +CDR*L12; 33 -CYR*L12; 7 +OQR*RY_P; 158 -DPQ*L1
239 -DPQ*L5; 220 -DPQ*L17; 106 -DPQ*L19; 93 -DPQ*L20
220 -DPQ*DROP_OHP_YZ; 7 -DPQ*DROP_OCR_Y; 54 +CYZ*L5; 357 +CYZ*L27
5 +CYZ*L35; 142 +CYZ*-OHD; 217 +CYZ*C_OCF_Y; 376 +CYZ*RX_P
147 +CYZ*RY_P; 150 +CYZ*DROP_OCQ_Y; 358 +CYZ*DROP_OCR_Y; 112 -OYP*L1
67 -OYP*L4; 53 -OYP*L14; 34 -OYP*L22; 12 -OYP*L25
21 -OZR*L17; 1 -OZR*L18; 13 -OZR*L31; 88 +HPR*L2
1 +HPR*L14; 8 +HPR*L18; 1 +HPR*L31; 23 +HPR*DROP_OCQ_Y
230 +HPR*TY_Q_; 8 -FPR*L1; 7 -HQR*L23; 68 -HDR*L2
5 -HDR*-OHD; 12 -HDR*DROP_OHP_YZ; 33 -HDR*TY_Q_; 23 +CFR*L22
13 +CFR*DROP_OCQ_Y; 185 +CFR*TY_Q_; 49 -YZP*L1; 149 -YZP*L23
13 -YZP*L25; 49 -YZP*L28; 5 -YZP*L31; 19 -YZP*L33
107 -YZP*C_OCF_Y; 98 -YZP*DROP_OHP_YZ; 141 -YZP*RY_P; 299 -YZP*DROP_OCQ_Y
20 -YZR*L12; 1 -YZR*L16; 9 C_OHQ_ZR*L20; 241 C_OZP_Y*L2
83 C_OZP_Y*L31; 69 C_HCZ_Y*L32; 63 C_HDP_R*L2; 33 C_CZP_Y*L24
1 C_CZP_Y*L27; 181 C_CZP_Y*L31; 23 C_CZP_Y*L35; 22 C_CZP_Y*RX_P
141 TPX_Q_*L23; 25 TPX_Q_*L26; 12 TPY_Q_*L12; 1 Q_OYRH_Z*L34
10 SP_OPQH_YR_OQ1*L12; 12 Q_OPDZ_Y*L12; 81 Q_HYCF_R*L1; 72 Q_HZCF_YR*L1
23 Q_HZCF_YR*TY_Q_; 12 Q_HYDF_R*L12; 75 Q_CPDZ_Y*L17
```

Upper bound: `-5648612223/1000000000`.

### Leaf RTUpmpmmpmmmppm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR +YZP -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDZQ +ODZ
P OHDQR +ODR
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FODPQ +FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZOYPR +ZPR
P POFQR +PQR
P QOHYR -QYR
```

```c1top-bounds
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 7841/10000 1
c 347/500 177/200
d 4379/10000 359/400
f 93/1000 4173/5000
u 279/1000 699/1000
v 21/200 5797/10000
z 93/1000 513/1000
w 21/200 7899/10000
p 8433/10000 1
q 21/200 371/625
l 347/500 1
m 1351/2500 1
r 279/1000 907/1000
t 197/625 907/1000
```

```c1top-sum
34 L0*L0*TX_Q_; 34 L0*L1*L21; 3 L0*L3*L14; 2 L0*L3*C_OCF_Y
2 L0*L4*TX_Q_; 63 L0*L6*TY_Q_; 80 L0*L17*TY_Q_; 5 L0*L24*TX_Q_
9 L0*L26*TX_Q_; 10 L0*L30*TY_Q_; 19 L0*L32*RX_P; 15 L1*L1*L6
27 L1*L1*L9; 31 L1*L1*L17; 12 L1*L1*L24; 50 L1*L3*L5
2 L1*L3*L20; 57 L1*L4*L12; 14 L1*L4*L31; 5 L1*L6*L18
3 L1*L6*L25; 3 L1*L7*L17; 7 L1*L9*L14; 20 L1*L12*L16
78 L1*L12*DROP_OCR_Y; 34 L1*L16*L18; 48 L1*L17*L20; 12 L1*L17*L26
3 L1*L17*L35; 47 L1*L18*L21; 36 L1*L18*L24; 15 L1*L21*L24
75 L1*L24*L31; 27 L1*L24*TY_Q_; 32 L1*L31*DROP_OCR_Y; 3 L2*L9*L14
1 L2*L17*L19; 8 L2*L17*L27; 8 L3*L3*L4; 2 L3*L3*TX_Q_
193 L3*L4*L18; 346 L3*L5*L18; 5 L3*L6*L17; 8 L3*L11*L21
40 L3*L12*L26; 2 L3*L14*L21; 7 L3*L14*L32; 2 L3*L17*L21
52 L3*L18*L22; 5 L3*L18*L27; 68 L3*L18*L32; 2 L3*L21*L26
2 L3*L21*RX_P; 28 L3*L23*L23; 72 L3*L23*L24; 76 L3*L23*L28
27 L3*L23*DROP_OCR_Y; 75 L3*L24*TY_Q_; 5 L3*L27*TY_Q_; 20 L4*L7*L23
45 L4*L10*L17; 3 L4*L12*L19; 14 L4*L12*L21; 36 L4*L14*L25
49 L4*L17*L20; 98 L4*L17*L23; 87 L4*L17*L24; 5 L4*L17*L28
83 L4*L17*-OHD; 88 L5*L8*L24; 18 L5*L8*L28; 13 L5*L12*L24
26 L5*L12*L27; 121 L5*L16*TY_Q_; 112 L5*L18*L21; 21 L5*L18*L24
28 L5*L21*L23; 22 L5*L21*TY_Q_; 27 L5*L23*L24; 149 L5*RX_P*TY_Q_
2 L6*L12*L27; 2 L6*L17*DROP_OHP_YZ; 20 L6*L24*TY_Q_; 1 L6*L35*TY_Q_
2 L6*RX_P*RX_P; 12 L6*RX_P*TY_Q_; 3 L7*L14*L26; 8 L7*L18*L24
29 L7*L18*TY_Q_; 50 L7*L23*L28; 29 L7*L23*-OHD; 4 L7*L23*DROP_OCR_Y
12 L7*L28*TX_Q_; 6 L8*L18*L21; 9 L8*L18*TY_Q_; 13 L9*L18*L28
42 L10*L12*RY_P; 17 L10*L12*TX_Q_; 36 L10*L15*L17; 4 L10*L17*L17
51 L10*L17*L20; 126 L10*L17*L24; 60 L10*L17*L28; 11 L10*L17*L34
3 L10*L17*DROP_OCR_Y; 43 L10*L18*RX_P; 9 L10*L23*RX_P; 1 L10*RX_P*TX_Q_
9 L11*L12*L29; 30 L12*L23*DROP_OHP_YZ; 11 L12*L24*TY_Q_; 2 L12*L29*TY_Q_
17 L12*L31*TY_Q_; 209 L12*L31*DROP_OCR_Y; 57 L12*RX_P*DROP_OCR_Y; 10 L12*RY_P*DROP_OCR_Y
30 L13*L23*RX_P; 3 L14*L17*L27; 3 L14*L17*RX_P; 10 L14*L21*L26
3 L14*L23*RX_P; 1 L14*L25*L29; 35 L14*L26*L31; 32 L14*L26*RX_P
42 L14*L28*RX_P; 10 L14*L31*TY_Q_; 5 L14*L32*RX_P; 3 L15*L16*L23
41 L15*L17*L24; 5 L17*L17*DROP_OCQ_Y; 69 L17*L18*L23; 23 L17*L18*L24
65 L17*L18*DROP_OCQ_Y; 27 L17*L19*L27; 4 L17*L19*L35; 19 L17*L20*DROP_OCR_Y
4 L17*L22*+OCF; 11 L17*L23*L24; 59 L17*L23*C_OHD_ZR; 57 L17*L31*TY_Q_
39 L17*L34*RY_P; 5 L17*RX_P*DROP_OCQ_Y; 4 L18*L19*TX_Q_; 27 L18*L21*L23
54 L18*L24*L30; 19 L18*L24*L33; 24 L18*L24*L36; 23 L18*L24*RX_P
15 L18*L24*TY_Q_; 39 L18*L30*RY_P; 22 L18*-OHD*RX_P; 2 L21*L21*L28
97 L21*L23*L28; 76 L21*L28*TY_Q_; 1 L23*L23*L29; 5 L23*L24*L28
10 L23*L25*L31; 5 L23*L25*L34; 27 L23*RX_P*TY_Q_; 10 L24*L30*TY_Q_
1 L24*L34*TX_Q_; 15 L27*RX_P*TY_Q_; 2 KLOW*L29; 1 TOPCOUNT*L18
37 +OYZ*L21; 3 -HYZ*L17; 10 -HYZ*L23; 9 +OCY*L17
28 -HCY*L4; 54 -HCY*L14; 76 -HCY*L23; 83 -HCY*L24
32 -HCY*L26; 105 -HCY*RY_P; 19 +CDY*L12; 7 +CFY*L12
70 -OHZ*L1; 43 -OHZ*L17; 43 -OHZ*L21; 2 -OHZ*C_OCF_Y
44 -OHZ*DROP_OHP_YZ; 47 -OHZ*RY_P; 13 -OHZ*TY_Q_; 78 -OHZ*DROP_OCR_Y
8 +OCP*L3; 83 +OCP*L28; 141 +OCP*L30; 81 -CDP*L5
45 -CDP*L14; 4 -CDP*L19; 63 -CDP*L20; 46 -CDP*L22
87 -CDP*L24; 68 -CDP*L28; 8 -CDP*L31; 130 -CDP*L35
1 -CDP*TX_Q_; 73 -CYP*L4; 1 -CYP*L6; 42 -CYP*L15
2 -CYP*L17; 9 -CYP*L21; 8 -CYP*L23; 83 -CYP*L25
32 -CYP*L27; 45 -CYP*C_OHD_ZR; 17 -CYP*DROP_OCQ_Y; 30 -HFQ*L5
2 -HFQ*L13; 68 -HFQ*L14; 10 -HFQ*L21; 59 -HFQ*L22
38 -HFQ*L23; 11 -HFQ*L24; 68 -HFQ*L34; 2 -HFQ*C_OCF_Y
12 -HFQ*TX_Q_; 9 -HFQ*DROP_OCR_Y; 3 +CDQ*L18; 12 -DFQ*L6
2 -DFQ*L21; 20 -DFQ*L24; 46 -DFQ*L27; 1 -DFQ*L35
156 -DFQ*C_OHD_ZR; 14 -DFQ*RX_P; 29 -DFQ*RY_P; 66 -DFQ*DROP_OCR_Y
17 +HDQ*L12; 36 +HZQ*L17; 4 -OHR*L17; 2 -HFR*L21
1 +DFR*L18; 12 +OQR*L4; 54 +OQR*L14; 22 +OQR*L23
11 +OQR*L29; 7 +OQR*RX_P; 20 +OQR*RY_P; 174 -DPQ*L1
103 -DPQ*L3; 2 -DPQ*L7; 57 -DPQ*L8; 1 -DPQ*L10
4 -DPQ*L18; 27 -DPQ*L23; 12 -DPQ*L26; 126 -DPQ*L28
48 -DPQ*L33; 1 -OZQ*L9; 44 -OZQ*L27; 21 -OZQ*L31
23 -OZQ*RX_P; 209 -OZR*L3; 36 -OZR*L4; 18 -OZR*L18
1 -OZR*L21; 41 -OZR*L27; 209 -OZR*L31; 169 -OZR*DROP_OHP_YZ
59 -OZR*DROP_OCQ_Y; 2 -OZR*TX_Q_; 41 -OZR*DROP_OCR_Y; 12 +HPR*L1
23 +HPR*L18; 8 +HPR*TX_Q_; 27 +HPR*TY_Q_; 4 -HQR*L17
20 -HDR*L20; 9 -HDR*L31; 3 +CFR*L14; 8 +CFR*L16
9 +CFR*L20; 27 +CFR*RY_P; 46 +CFR*TY_Q_; 89 +YZP*L4
3 +YZP*L17; 39 +YZP*L19; 59 +YZP*L20; 200 +YZP*L22
200 +YZP*L23; 209 +YZP*L24; 47 +YZP*L28; 3 +YZP*C_OCF_Y
35 +YZP*DROP_OCR_Y; 104 -ODY*L13; 72 -ODY*L18; 56 -ODY*L20
107 -ODY*L24; 18 -ODY*L28; 52 -ODY*L34; 138 -ODY*RX_P
112 +CPR*L12; 4 +DQR*L2; 8 +DQR*L18; 22 -FQR*L23
3 -YZR*L18; 9 C_OCD_Y*L17; 19 C_HCF_R*L1; 1 C_HCF_R*L18
4 C_HFP_R*L18; 2 TPX_Q_*L33; 1 TPX_Q_*RX_P; 29 TPY_Q_*L28
14 SP_OPDH_YR_OD1*L12; 1 Q_OYQH_ZR*L18; 5 SP_OPQH_YR_OQ1*L12; 6 Q_OPQR_Y*L12
27 Q_HYCF_R*L1; 5 Q_HYCF_R*L17; 76 Q_HYCF_R*TY_Q_; 3 Q_HZCF_YR*L1
14 Q_HZCF_YR*TY_Q_; 2 Q_HCPF_R*L12; 19 Q_HPDQ_R*L12; 4 Q_CPRZ_Y*L18
```

Upper bound: `-3388972221/125000000000`.

### Leaf RTUpmpmmpmmmppp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR -HDR +CFR +YZP +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHFYQ -OFY
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P COFQR +CQR
P DOHPR -DPR
P DOHQR +DQR
P FODPQ +FPQ
P FHCQR -FQR
P YOHDR +YDR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZOYPR +ZPR
P POFQR +PQR
P QOHYR -QYR
M OHDRZY 1
M ODHRYZ -1
M HODYZR -1
M HDOYRZ 1
M DOHZYR 1
M DHOZRY -1
```

```c1top-bounds
T OHD YZR 0 lower 823/1000
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
57 L0*L0*TX_Q_; 12 L0*L1*L6; 235 L0*L7*L23; 117 L0*L15*L17
17 L0*L17*L17; 17 L0*L17*RX_P; 7 L0*L17*DROP_OCQ_Y; 4 L0*L23*L29
35 L0*L23*L30; 50 L0*L23*TX_Q_; 79 L1*L1*L3; 4 L1*L3*L11
52 L1*L3*L18; 114 L1*L4*L6; 117 L1*L4*L12; 66 L1*L6*TX_Q_
153 L1*L8*L17; 23 L1*L8*L18; 6 L1*L8*L20; 12 L1*L10*L12
117 L1*L11*L17; 34 L1*L12*L20; 44 L1*L17*L20; 39 L1*L17*L29
94 L1*L17*TY_Q_; 63 L1*L18*L27; 63 L1*L18*DROP_OCR_Y; 4 L1*L28*L30
22 L1*RX_P*TX_Q_; 7 L2*L12*L36; 12 L3*L3*L4; 9 L3*L11*RX_P
54 L3*L15*L17; 10 L3*L17*L22; 72 L3*L18*L22; 86 L3*L18*L32
72 L3*L18*-OHD; 78 L3*L32*TY_Q_; 15 L3*TY_Q_*TY_Q_; 97 L4*L8*L17
59 L4*L12*L31; 53 L4*L12*RX_P; 70 L4*L20*L32; 8 L4*L23*TX_Q_
40 L5*L18*L30; 104 L5*RX_P*TY_Q_; 23 L6*L18*L30; 27 L7*L7*L23
39 L7*L23*L29; 52 L8*L12*RY_P; 104 L8*L17*L18; 156 L8*L17*L34
21 L8*L18*TY_Q_; 37 L8*L23*L23; 6 L9*L23*RX_P; 156 L10*L12*L17
28 L10*L12*L21; 28 L10*L17*L20; 3 L10*L18*RX_P; 107 L11*L17*RY_P
1 L12*L13*L18; 7 L12*L13*RX_P; 151 L12*L17*L28; 4 L12*L17*L30
113 L12*L18*L28; 73 L12*L19*TY_Q_; 79 L12*L20*RY_P; 4 L12*L30*RY_P
102 L14*L17*L21; 12 L15*L17*L20; 21 L17*L17*L23; 144 L17*L18*L28
104 L17*L18*L35; 12 L17*L19*L21; 119 L17*L22*L34; 9 L17*L22*DROP_OCQ_Y
91 L17*L23*L35; 21 L17*L23*RX_P; 56 L17*L28*L31; 4 L17*L30*L36
12 L18*L20*L33; 12 L18*L20*RX_P; 144 L18*L28*RX_P; 1 L18*L30*L30
54 L18*L30*L31; 98 L18*L30*DROP_OCQ_Y; 23 L18*L30*TX_Q_; 28 L21*L23*L28
22 L21*L23*L32; 7 L21*L23*L35; 6 L21*L28*RX_P; 7 L21*L35*TY_Q_
9 L23*L23*L29; 81 L23*L28*RX_P; 15 L31*TY_Q_*TY_Q_; 28 L32*RX_P*TY_Q_
9 RX_P*TY_Q_*TY_Q_; 79 -HCY*L0; 6 -HCY*L21; 62 -HCY*L23
140 -HCY*RY_P; 51 -HCY*DROP_OCQ_Y; 39 -HCY*TY_Q_; 47 +CDY*L12
10 -OHZ*L1; 9 -OHZ*L4; 12 -OHZ*L10; 7 -OHZ*L21
35 -OHZ*L23; 230 -OHZ*RY_P; 2 +OCP*L9; 89 +OCP*L32
95 +OCP*-OHD; 30 +OCP*TY_Q_; 9 -CDP*L2; 114 -CDP*L5
11 -CDP*L20; 42 -CDP*L22; 128 -CDP*L32; 7 -CDP*L35
79 -CDP*-OHD; 9 -CYP*L3; 28 -HFQ*L0; 27 -HFQ*L3
28 -HFQ*L23; 66 -HFQ*L29; 124 -HFQ*-OHD; 17 -HFQ*RX_P
28 -HFQ*TY_Q_; 181 -DFQ*L0; 9 -DFQ*L23; 33 -DFQ*-OHD
17 -DFQ*C_OCF_Y; 41 +HDQ*L12; 6 -DYQ*L3; 85 -DPQ*L1
11 -DPQ*L3; 28 +OYQ*L13; 85 +OYQ*L16; 38 +OYQ*L23
60 +OYQ*L28; 81 +OYQ*-OHD; 16 +OYQ*TY_Q_; 4 +YZP*L14
114 +YZP*L20; 98 +YZP*L23; 4 +YZP*L36; 117 +YZP*-OHD
54 +YZP*C_OCF_Y; 217 +YZP*DROP_OCQ_Y; 54 +ODY*L1; 3 +ODY*L19
107 +ODY*L20; 55 +ODY*L33; 147 +ODY*-OHD; 58 +ODY*RY_P
73 +ODY*TY_Q_; 43 -DYZ*L6; 4 -DYZ*L13; 117 -DYZ*L18
71 -DYZ*L20; 117 -DYZ*L28; 54 -DYZ*C_OCF_Y; 204 -DYZ*DROP_OHP_YZ
117 -DYZ*RY_P; 119 -DYZ*DROP_OCQ_Y; 43 -DYZ*TX_Q_; 31 C_OHQ_ZR*L4
27 TPX_Q_*L23; 17 TPX_Q_*RX_P; 17 TPY_Q_*L17; 54 SP_HZCD_YR_HC1*L17
83 Q_HYCF_R*L1; 5 Q_HYCF_R*L22; 72 Q_HYCF_R*TY_Q_; 54 Q_HZCR_Y*L17
44 Q_HZYD_R*L17; 3 RIGHTSUP
```

Upper bound: `-565595111/1000000000`.

### Leaf RTUpmpmmpmmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR -HQR +HDR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHZR -DZR
P DOFPR -DPR
P DOFQR +DQR
P DHCYR -DYR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR +PQR
P QOHCR -QCR
P QOHYR -QYR
```

```c1top-bounds
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
12 L0*L0*L25; 28 L0*L0*TX_Q_; 18 L0*L3*L29; 1 L0*L3*RX_P
38 L0*L3*TX_Q_; 6 L0*L7*RX_P; 1 L0*L20*L29; 36 L0*L21*L28
39 L0*L23*TX_Q_; 24 L0*RX_P*TY_Q_; 22 L1*L1*L2; 62 L1*L1*L20
135 L1*L2*L4; 34 L1*L2*L20; 13 L1*L2*L24; 34 L1*L2*L27
187 L1*L4*L6; 142 L1*L4*L20; 10 L1*L4*L24; 13 L1*L6*L27
7 L1*L17*L17; 31 L1*L17*L27; 35 L1*L18*L25; 2 L1*L20*L20
14 L2*L2*L17; 16 L2*L4*L27; 10 L2*L17*RY_P; 14 L3*L3*RX_P
120 L3*L4*L18; 4 L3*L18*L18; 16 L3*L18*L27; 23 L3*L18*L29
170 L4*L4*L17; 301 L4*L17*L22; 582 L4*L17*L23; 68 L4*L17*L27
33 L4*L17*DROP_OHP_YZ; 53 L4*L18*L21; 201 L4*L23*TX_Q_; 126 L5*L18*RX_P
24 L5*L23*L29; 67 L7*L23*L23; 40 L17*L17*L22; 117 L17*L18*L23
22 L17*L18*L27; 6 L17*L18*L29; 50 L17*L18*RX_P; 40 L17*L18*TX_Q_
6 L17*L20*L23; 136 L17*L23*L23; 8 L17*L23*C_OHD_Z; 7 L17*L23*C_OCF_Y
46 L17*L29*RY_P; 102 L18*L18*L21; 22 L18*L18*L25; 136 L18*L21*L23
32 L18*L21*L27; 58 L18*L21*-OHD; 6 L18*L21*TX_Q_; 32 L18*L23*L24
15 L18*L23*L29; 50 L18*RX_P*RX_P; 16 L18*RY_P*TX_Q_; 28 L21*L23*L28
29 L21*L28*L28; 20 L21*L28*RX_P; 7 L28*RX_P*RX_P; 22 KLOW*L1
35 KLOW*L4; 15 KLOW*L7; 9 KLOW*L8; 16 KLOW*L16
24 KLOW*L22; 16 KLOW*L25; 34 KLOW*L27; 9 KLOW*L31
68 KLOW*RY_P; 47 KLOW*TX_Q_; 63 +OCP*L3; 49 +OCP*L4
13 +OCP*L6; 42 +OCP*L21; 60 +OCP*L28; 5 +OCP*RY_P
8 -CDP*L1; 150 -CDP*L23; 16 -CDP*L27; 36 -CDP*C_OCF_Y
174 -CDP*DROP_OCQ_Y; 36 -CDP*TX_Q_; 25 -HFQ*L1; 54 -HFQ*L4
38 -HFQ*L7; 20 -HFQ*L17; 26 -HFQ*L19; 11 -HFQ*L23
92 -HFQ*L24; 56 -DFQ*L23; 32 -HFR*L6; 67 -HFR*L21
51 +DFR*L27; 3 +OQR*L18; 202 -DPQ*L4; 126 -DPQ*L18
136 -DPQ*L23; 219 -DPQ*L27; 32 -DPQ*L28; 7 -DPQ*+OCF
40 -DPQ*DROP_OHP_YZ; 6 -DPQ*TX_Q_; 151 -DPQ*DROP_OCR_Y; 31 -FPR*L1
22 -FPR*L18; 52 -FPR*L22; 16 -FPR*TY_Q_; 51 -HQR*L1
86 -HQR*L4; 35 -HQR*L6; 51 -HQR*L27; 39 +HDR*L1
57 +HDR*L4; 25 +HDR*L6; 5 +HDR*L19; 51 +HDR*L27
29 +HDR*C_OCF_Y; 51 +HDR*DROP_OCQ_Y; 25 +HDR*TX_Q_; 9 +CPQ*L18
11 +DQR*L18; 57 -FQR*L5; 32 -FQR*L6; 22 -FQR*RY_P
51 -FQR*DROP_OCR_Y; 172 C_OHQ_ZR*L4; 3 C_OHQ_ZR*L29; 2 C_OHQ_ZR*TX_Q_
69 TPX_Q_*L0; 62 TPX_Q_*L3; 4 TPX_Q_*L17; 38 TPX_Q_*L23
54 Q_HDQF_R*L0; 60 Q_HDQF_R*L4; 6 Q_HDQF_R*L6; 25 Q_HDQF_R*L25
26 Q_HDQF_R*DROP_OHP_YZ; 5 Q_HDQF_R*RY_P; 17 Q_HDQF_R*DROP_OCR_Y
```

Upper bound: `-25954683/1000000000`.

### Leaf RTUpmpmmpmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR -FPR +HQR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P HODQR +HDR
P CODPQ +CPQ
P CODPR +CPR
P DOHZR -DZR
P DOFPR -DPR
P DOFQR +DQR
P DHCYR -DYR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZODPR +ZPR
P POFQR +PQR
P QOHZR -QZR
P QOCDR -QCR
P QOCYR -QYR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
1 L0*L3*L19; 15 L0*L3*L22; 16 L0*L3*TX_Q_; 6 L0*L4*L25
21 L0*L4*TX_Q_; 1 L0*L19*L24; 92 L0*L22*TX_Q_; 8 L0*L25*TX_Q_
6 L0*L29*TX_Q_; 1 L0*DROP_OHP_YZ*TX_Q_; 1 L0*RX_P*DROP_OCQ_Y; 7 L0*RY_P*TX_Q_
18 L0*TX_Q_*TX_Q_; 20 L0*TX_Q_*DROP_OCR_Y; 6 L1*L2*L24; 3 L1*L2*DROP_OCR_Y
17 L1*L6*TY_Q_; 6 L1*L24*DROP_OCQ_Y; 3 L2*L2*L27; 24 L2*L4*TY_Q_
22 L2*L6*TY_Q_; 10 L2*L21*TY_Q_; 21 L3*L4*L27; 1 L3*L15*L18
30 L3*L16*L18; 23 L3*L18*L20; 10 L3*L18*L23; 26 L3*L18*TY_Q_
10 L3*L23*TX_Q_; 5 L3*DROP_OHP_YZ*RX_P; 13 L4*L6*TX_Q_; 23 L4*L6*TY_Q_
9 L4*L7*L23; 9 L4*L7*L27; 36 L4*L17*L20; 33 L4*L17*L23
20 L4*L17*RY_P; 22 L4*L17*TX_Q_; 67 L4*L17*TY_Q_; 53 L4*L17*DROP_OCR_Y
5 L4*L19*L24; 2 L4*L23*L27; 13 L4*L23*L29; 3 L4*L24*TX_Q_
2 L4*L27*RY_P; 1 L5*L7*L7; 40 L5*L21*TY_Q_; 6 L5*L27*DROP_OHP_YZ
5 L6*L23*L27; 2 L7*L18*L20; 14 L7*L23*TX_Q_; 45 L16*L16*TY_Q_
11 L16*L21*TY_Q_; 5 L17*L17*+OCF; 30 L17*L17*TX_Q_; 30 L17*L18*L20
20 L17*L18*DROP_OCQ_Y; 33 L17*L18*TX_Q_; 21 L17*L18*DROP_OCR_Y; 15 L17*L21*DROP_OCQ_Y
14 L17*L22*L27; 14 L17*L23*L23; 13 L17*L23*L26; 5 L17*L27*DROP_OCQ_Y
6 L17*L28*TX_Q_; 5 L17*+OCF*C_OCF_Y; 30 L17*DROP_OHP_YZ*TX_Q_; 14 L18*L21*L23
15 L18*L21*DROP_OHP_YZ; 4 L18*L21*TX_Q_; 27 L18*L21*DROP_OCR_Y; 2 L18*L23*L26
5 L18*L25*TY_Q_; 33 L18*RX_P*TX_Q_; 20 L18*RX_P*TY_Q_; 21 L18*RX_P*DROP_OCR_Y
3 L20*L21*L28; 7 L21*L24*L28; 2 L21*L28*TX_Q_; 10 L21*L28*DROP_OCR_Y
11 L21*TY_Q_*DROP_OCR_Y; 2 L23*L24*L24; 2 L25*L27*TX_Q_; 3 L26*L29*L29
2 L27*RY_P*TY_Q_; 10 L28*L29*TX_Q_; 6 KLOW*L20; 15 KLOW*DROP_OCQ_Y
25 KLOW*TX_Q_; 15 KLOW*TY_Q_; 3 KLOW*DROP_OCR_Y; 1 TOPCOUNT*L3
10 +OCP*L5; 26 +OCP*L21; 30 +OCP*RX_P; 2 -CDP*L1
49 -CDP*L20; 33 -CDP*TX_Q_; 36 -CDP*TY_Q_; 21 -CDP*DROP_OCR_Y
1 +DFP*L27; 14 +CDQ*L0; 12 +CDQ*TY_Q_; 26 -DFQ*L4
23 -DFQ*L6; 6 -DFQ*L23; 4 -DFQ*L28; 5 -DFQ*-OHD
12 -CFQ*L17; 6 -HFR*L3; 5 -HFR*L4; 2 -HFR*L6
1 -HFR*L19; 2 -HFR*L25; 12 -DPQ*L5; 2 -DPQ*L7
1 -DPQ*L14; 25 -DPQ*L20; 20 -DPQ*L21; 14 -DPQ*L23
1 -DPQ*L34; 45 -DPQ*DROP_OHP_YZ; 27 -DPQ*DROP_OCR_Y; 5 -FPR*L22
1 +HQR*L7; 1 +HQR*L23; 2 +HQR*L25; 17 +HQR*DROP_OCQ_Y
1 +HQR*TX_Q_; 10 +DQR*L4; 10 +DQR*L28; 5 +DQR*DROP_OCQ_Y
5 -FQR*L5; 10 -FQR*L22; 1 -FQR*TX_Q_; 13 C_HFQ_R*L5
5 C_HFQ_R*L17; 5 C_HFQ_R*L19; 59 C_HFQ_R*L22; 13 C_HFQ_R*L25
23 C_HFQ_R*L29; 8 C_HFQ_R*+OCF; 17 C_HFQ_R*DROP_OCQ_Y; 13 C_HFQ_R*TX_Q_
20 C_HFQ_R*DROP_OCR_Y; 10 TPX_Q_*L0; 33 TPY_Q_*L23; 3 TPY_Q_*L24
19 TPY_Q_*RX_P; 42 Q_HDQF_R*L22; 10 Q_HDQF_R*L24
```

Upper bound: `-951620493/1000000000`.

### Leaf RTUpmpmmppmmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR -HQR -HDR -YZP`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHPR -DPR
P DOHQR +DQR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YHDZP +YDZ
P ZODPQ +ZPQ
P POHZR -PZR
P QOHCR -QCR
P QOHYR -QYR
P QOHPR -QPR
P ROHDY -RDY
```

```c1top-bounds
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
42 L0*L10*RX_P; 4 L0*L12*L31; 19 L0*L17*L29; 8 L0*L30*TY_Q_
9 L1*L1*L12; 13 L1*L1*L31; 20 L1*L6*L18; 53 L1*L6*L22
11 L1*L6*L27; 23 L1*L6*+OCF; 1 L1*L7*L23; 3 L1*L9*TY_Q_
12 L1*L12*L18; 23 L1*L16*TY_Q_; 40 L1*L17*L24; 24 L1*L17*RX_P
33 L1*L19*L31; 15 L1*L21*L21; 4 L1*L22*L23; 48 L1*L23*L24
3 L1*L23*C_OCF_Y; 22 L1*L23*DROP_OHP_YZ; 9 L1*L28*L30; 29 L2*L5*L21
5 L2*L12*TY_Q_; 81 L2*L14*L17; 5 L2*L14*L23; 14 L2*L17*L21
17 L2*L17*TX_Q_; 2 L2*L19*L25; 4 L2*L19*L27; 28 L2*L19*RY_P
19 L2*L28*RX_P; 18 L2*L28*TY_Q_; 1 L2*L32*TY_Q_; 46 L2*RY_P*TY_Q_
9 L3*L4*L10; 33 L3*L5*L18; 4 L3*L5*DROP_OHP_YZ; 20 L3*L6*L18
5 L3*L16*TY_Q_; 58 L3*L18*L18; 8 L3*L18*L20; 2 L3*L18*L24
83 L3*L18*L34; 1 L3*L23*+OCF; 4 L4*L5*L23; 4 L4*L5*L31
54 L4*L6*L17; 1 L4*L8*L17; 43 L4*L12*L17; 17 L4*L12*L35
5 L4*L13*TY_Q_; 16 L4*L14*L17; 6 L4*L16*L17; 52 L4*L17*L26
48 L5*L5*L21; 12 L5*L5*RX_P; 12 L5*L8*L18; 8 L5*L12*L14
1 L5*L12*L23; 13 L5*L12*L31; 10 L5*L16*L34; 86 L5*L16*TY_Q_
12 L5*L17*L23; 72 L5*L18*L21; 30 L5*L18*RX_P; 34 L5*L21*L25
10 L5*L21*L28; 15 L5*L21*DROP_OHP_YZ; 4 L5*L23*L23; 43 L5*L23*L24
11 L5*RX_P*TY_Q_; 17 L6*L16*RX_P; 5 L6*L16*RY_P; 10 L6*L17*L22
17 L6*L17*DROP_OHP_YZ; 50 L6*L19*L22; 3 L6*L20*L27; 8 L6*L21*DROP_OCQ_Y
29 L6*L22*RY_P; 27 L6*L25*TY_Q_; 6 L6*L27*L28; 9 L6*L28*L29
1 L6*L28*TX_Q_; 9 L6*RX_P*TY_Q_; 31 L6*TY_Q_*DROP_OCR_Y; 8 L7*L21*L23
51 L7*L23*DROP_OCR_Y; 6 L8*L12*L19; 1 L8*L17*L20; 56 L8*L18*L23
10 L8*L19*L19; 2 L8*L19*L28; 10 L10*L14*L17; 5 L10*L17*L28
3 L10*L21*L23; 3 L10*L23*L28; 15 L10*L34*RX_P; 3 L11*L14*L23
1 L11*L17*C_OHD_ZR; 13 L12*L14*RX_P; 24 L12*L17*TY_Q_; 3 L12*L18*L28
17 L12*L18*L33; 10 L12*L18*RY_P; 3 L12*L19*L34; 3 L12*L28*RY_P
5 L12*L30*RY_P; 1 L12*L30*DROP_OCQ_Y; 8 L12*L34*TY_Q_; 24 L12*RX_P*RY_P
1 L13*L23*L35; 3 L14*L14*L17; 5 L14*L14*L31; 11 L14*L17*L35
1 L15*L19*L35; 3 L15*L23*L35; 18 L16*L23*L33; 13 L16*L23*L34
21 L16*L23*RX_P; 44 L16*L24*TY_Q_; 39 L16*L27*L28; 16 L16*L27*TY_Q_
4 L16*L28*L35; 22 L17*L18*L21; 10 L17*L18*L34; 1 L17*L20*L35
3 L17*L21*L33; 1 L17*L21*C_OHD_ZR; 1 L17*L22*L30; 16 L17*L23*L26
45 L17*L26*C_OHD_ZR; 46 L17*L26*TX_Q_; 24 L17*L34*RX_P; 1 L17*L35*-OHD
3 L18*L21*L21; 1 L18*L21*L25; 4 L18*L23*L32; 10 L18*L32*RX_P
3 L20*L23*DROP_OHP_YZ; 12 L21*L23*C_OHD_ZR; 8 L21*L26*L28; 2 L21*L27*L27
6 L23*L23*L35; 2 L23*L24*L27; 1 L23*L25*RX_P; 29 L23*L28*L29
4 L23*L28*TY_Q_; 5 L23*L31*L34; 60 L23*L32*RX_P; 3 L23*L35*C_OHD_ZR
4 L23*L35*RY_P; 6 L23*L35*TY_Q_; 19 L23*+OCF*TY_Q_; 4 L23*C_OHD_ZR*RY_P
1 L23*RX_P*RX_P; 20 L24*L24*L28; 1 L25*RX_P*TY_Q_; 2 L30*TY_Q_*TY_Q_
5 L31*TY_Q_*TY_Q_; 79 L34*RX_P*TY_Q_; 11 KLOW*L14; 3 KLOW*L20
14 -OHF*L12; 14 -HYZ*L19; 22 -HCY*L1; 48 -HCY*L3
42 -HCY*L14; 19 -HCY*L33; 48 -HCY*+OCF; 30 -HCY*DROP_OCQ_Y
7 -OHZ*L1; 33 -OHZ*L10; 42 -OHZ*L27; 14 -OHZ*L29
42 -OHZ*DROP_OCR_Y; 29 -CDP*L16; 30 -CDP*L18; 8 -CDP*L20
4 -CDP*L27; 19 -CDP*L33; 60 -CDP*L34; 23 -CDP*L36
51 -CDP*TY_Q_; 90 -CYP*L3; 90 -CYP*L12; 47 -CZP*L12
64 -HFQ*L19; 15 -HFQ*L21; 96 -HFQ*L25; 57 -HFQ*L26
14 -HFQ*L29; 27 +CDQ*L23; 10 -DFQ*L0; 64 -DFQ*L24
9 +ODQ*L23; 3 -DYQ*L23; 10 -HFR*L1; 40 -HFR*L16
10 -HFR*L28; 35 -HFR*DROP_OCQ_Y; 22 -HFR*DROP_OCR_Y; 1 +OQR*L3
10 +OQR*L4; 6 +OQR*L6; 4 +OQR*L18; 2 +OQR*L21
39 +OQR*L23; 20 +OQR*L27; 1 +OQR*-OHD; 90 +OQR*RY_P
64 -DPQ*L1; 53 -DPQ*L4; 111 -DPQ*L5; 24 -DPQ*L17
3 -DPQ*L21; 85 -DPQ*DROP_OCR_Y; 52 +CYZ*L1; 8 +CYZ*L4
68 +CYZ*L14; 60 +CYZ*L36; 95 +CYZ*-OHD; 79 +CYZ*C_OCF_Y
150 +CYZ*RX_P; 79 +CYZ*DROP_OCQ_Y; 49 -OYP*L1; 27 -OYP*L14
12 -OYP*L22; 70 +HPR*TY_Q_; 1 +FPR*L20; 90 +FPR*L23
84 +FPR*C_OHD_ZR; 5 +FPR*DROP_OHP_YZ; 91 +FPR*DROP_OCQ_Y; 14 +FPR*TY_Q_
67 -HDR*L19; 20 -HDR*L24; 22 -HDR*L27; 17 -HDR*RY_P
96 -HDR*TX_Q_; 18 -HDR*TY_Q_; 3 -YZP*L14; 70 -YZP*L23
60 -YZP*L33; 10 -YZP*RY_P; 142 -YZP*DROP_OCQ_Y; 37 +ODZ*L17
5 +CPQ*L12; 2 +DQR*L20; 146 +DQR*L22; 107 +DQR*L23
1 +DQR*L29; 64 +DQR*C_OHD_ZR; 43 +DQR*DROP_OHP_YZ; 22 +DQR*DROP_OCR_Y
89 C_OZP_Y*L2; 11 C_OZP_Y*L31; 19 C_HCZ_Y*L8; 9 C_HCZ_Y*L32
3 C_HDY_R*L17; 34 C_HDP_R*L6; 69 C_CZP_Y*L9; 24 C_CZP_Y*L17
71 C_CZP_Y*L31; 10 C_CZP_Y*L35; 14 TPX_Q_*L18; 13 TPY_Q_*L6
1 SP_OPQH_YR_OQ1*L17; 5 Q_OCPZ_Y*L23; 5 Q_OCPR_Y*L17; 12 Q_HYCQ_R*L23
4 Q_HZCR_Y*L5; 23 Q_HPDF_R*L6; 2 Q_HZYD_R*L28; 1 Q_HPQF_R*L6
20 Q_DQFP_R*L2
```

Upper bound: `-159877179/250000000`.

### Leaf RTUpmpmmppmmpm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR -HQR -HDR +YZP -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDZQ +ODZ
P OHDQR +ODR
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHYZ -DYZ
P DOHYR -DYR
P DOHPR -DPR
P DOHQR +DQR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZOYPR +ZPR
P QOHCR -QCR
P QOHYR -QYR
P QOHPR -QPR
```

```c1top-bounds
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
123 L0*L4*L17; 62 L0*L6*TY_Q_; 40 L0*L7*L23; 85 L0*L12*L19
194 L0*L16*L17; 22 L0*L17*C_OCF_Y; 21 L0*L17*DROP_OCR_Y; 61 L0*L24*TY_Q_
112 L0*L30*RX_P; 73 L1*L1*L6; 1 L1*L1*L21; 1 L1*L2*L6
60 L1*L2*L23; 5 L1*L3*L35; 417 L1*L4*L12; 17 L1*L5*RX_P
22 L1*L6*L6; 30 L1*L6*L10; 36 L1*L6*L14; 144 L1*L6*L21
2 L1*L6*L25; 160 L1*L6*RY_P; 52 L1*L6*DROP_OCR_Y; 281 L1*L10*L12
16 L1*L12*L25; 86 L1*L12*C_OCF_Y; 134 L1*L12*DROP_OCR_Y; 123 L1*L14*L31
144 L1*L21*L21; 2 L1*L21*L24; 13 L2*L6*TY_Q_; 2 L2*L7*L12
12 L2*L21*TY_Q_; 96 L3*L4*L18; 51 L3*L5*L12; 18 L3*L5*L16
9 L3*L5*L24; 2 L3*L6*L30; 2 L3*L6*RX_P; 58 L3*L9*L20
163 L3*L10*RX_P; 1 L3*L12*L24; 16 L3*L14*DROP_OHP_YZ; 123 L3*L15*L18
16 L3*L17*C_OHD_ZR; 450 L3*L18*L22; 462 L3*L18*L23; 88 L3*L18*L35
26 L3*L18*DROP_OCR_Y; 5 L3*L20*L28; 58 L3*L21*L35; 21 L3*L23*L26
51 L3*L23*L30; 12 L3*L23*TX_Q_; 20 L3*L24*L28; 60 L3*L32*TY_Q_
29 L4*L8*L17; 51 L4*L12*L17; 13 L4*L15*L17; 176 L4*L17*L17
43 L4*L17*L19; 6 L4*L17*L29; 145 L4*L17*DROP_OCQ_Y; 110 L5*L5*L12
138 L5*L8*L18; 40 L5*L8*RX_P; 2 L5*L10*L27; 83 L5*L12*L27
10 L5*L14*L21; 160 L5*L16*L28; 17 L5*L16*L35; 114 L5*L16*TY_Q_
57 L5*L18*L23; 14 L5*L23*L24; 2 L5*L27*L35; 110 L5*L28*L30
109 L6*L6*TY_Q_; 5 L6*L8*TY_Q_; 25 L6*L9*L26; 49 L6*L16*TY_Q_
2 L6*L17*L36; 2 L6*L18*L30; 36 L6*L19*L35; 139 L6*L21*TY_Q_
4 L6*L22*L31; 8 L6*L23*RX_P; 20 L6*L26*L35; 2 L6*L31*RX_P
6 L6*L32*TY_Q_; 135 L6*TY_Q_*DROP_OCR_Y; 2 L7*L17*L30; 85 L7*L18*L28
2 L7*L23*L25; 35 L8*L15*L17; 52 L8*L18*L21; 36 L8*L18*L23
54 L8*L18*L28; 48 L8*L23*L27; 30 L8*L24*L28; 67 L8*L24*TY_Q_
26 L9*L14*L18; 51 L9*L17*L24; 163 L10*L12*L17; 98 L10*L12*RY_P
163 L10*L17*L17; 69 L10*L17*L20; 142 L10*L17*L23; 348 L10*L17*L34
124 L10*L17*TY_Q_; 49 L10*L17*DROP_OCR_Y; 12 L10*L23*L29; 31 L11*L18*L23
48 L11*L23*RX_P; 17 L11*L28*RX_P; 51 L12*L17*L23; 23 L12*L18*L19
67 L12*L18*TY_Q_; 2 L12*L20*L27; 17 L12*L20*RY_P; 2 L12*L23*L25
1 L12*L25*RX_P; 102 L12*L27*L28; 130 L12*L27*TY_Q_; 1 L12*C_OHD_ZR*TX_Q_
216 L12*TY_Q_*DROP_OCR_Y; 283 L13*L17*L18; 1 L13*L17*L24; 10 L14*L17*L18
63 L14*L17*L23; 69 L14*L17*L27; 128 L14*L17*L35; 227 L14*L18*L21
33 L14*L21*TY_Q_; 353 L14*L32*RX_P; 17 L15*L17*L20; 84 L16*L21*TY_Q_
191 L16*L23*TY_Q_; 41 L16*L24*TY_Q_; 283 L17*L17*L34; 18 L17*L17*DROP_OCR_Y
19 L17*L18*L21; 43 L17*L18*L32; 23 L17*L18*DROP_OCR_Y; 43 L17*L20*L23
69 L17*L22*L31; 33 L17*L22*L34; 215 L17*L23*L26; 51 L17*L25*L35
35 L17*L27*L31; 34 L17*L30*DROP_OCR_Y; 1 L17*L32*TY_Q_; 64 L17*L34*TY_Q_
30 L17*L34*DROP_OCR_Y; 23 L18*L18*L29; 10 L18*L18*L31; 2 L18*L20*L27
41 L18*L21*L21; 293 L18*L21*L23; 41 L18*L21*L24; 60 L18*L21*L28
19 L18*L21*RX_P; 102 L18*L21*TY_Q_; 213 L18*L23*L24; 57 L18*L23*-OHD
116 L18*L24*L28; 171 L18*L24*L30; 22 L18*L24*L34; 23 L18*L24*L35
86 L18*L25*L28; 21 L18*L25*RX_P; 43 L18*L28*DROP_OHP_YZ; 57 L18*L28*DROP_OCQ_Y
33 L18*L30*RY_P; 77 L18*L30*DROP_OCR_Y; 163 L18*L31*RX_P; 31 L19*L23*L35
9 L20*L28*L34; 423 L21*L23*L28; 31 L21*L23*TY_Q_; 90 L21*L25*L28
5 L21*L28*L31; 6 L21*L28*L35; 230 L21*L28*TY_Q_; 31 L21*TY_Q_*TY_Q_
250 L23*L24*L28; 86 L23*L25*L34; 67 L23*L25*L35; 33 L23*L34*TX_Q_
22 L24*L32*RX_P; 24 L25*L28*L35; 7 L27*L28*L31; 19 L27*L31*TY_Q_
112 L28*L35*RX_P; 51 L30*RX_P*TY_Q_; 5 L35*RX_P*DROP_OCR_Y; 95 TOPCOUNT*L23
22 +HDF*L6; 244 +OYZ*L4; 17 +OYZ*L21; 171 +OYZ*L25
99 +OYZ*L27; 237 +OYZ*RX_P; 2 -HCY*L7; 476 -HCY*L14
166 -HCY*L19; 11 -HCY*L20; 55 -HCY*L24; 51 -HCY*L27
256 -HCY*RY_P; 58 -HCY*DROP_OCR_Y; 69 -OHZ*L1; 25 -OHZ*L3
634 -OHZ*L10; 16 -OHZ*L21; 53 -OHZ*L22; 253 -OHZ*RY_P
237 -OHZ*DROP_OCR_Y; 69 -HFZ*L1; 15 -HFZ*L18; 24 -HFZ*L26
53 -HFZ*TY_Q_; 237 +OCP*L30; 26 +OCP*TY_Q_; 15 -CDP*L1
142 -CDP*L11; 176 -CDP*L17; 119 -CDP*L20; 314 -CDP*L32
88 -CDP*L35; 28 -CDP*DROP_OCR_Y; 204 -CYP*L3; 66 -CYP*L4
120 -CYP*L16; 69 -CYP*L21; 28 -CYP*L25; 1 -CYP*L27
123 -CYP*L34; 368 -CYP*+OCF; 33 -CYP*RY_P; 65 -HFQ*L4
6 -HFQ*L10; 1 -HFQ*L12; 9 -HFQ*L15; 157 -HFQ*L19
144 -HFQ*L21; 152 -HFQ*L24; 168 -HFQ*L25; 8 -HFQ*-OHD
1 -HFQ*+OCF; 160 -HFQ*TY_Q_; 67 -HFQ*DROP_OCR_Y; 13 +CDQ*L6
25 +CDQ*L18; 269 -DFQ*L0; 131 -DFQ*L6; 4 -DFQ*L20
55 -DFQ*L24; 1 -DFQ*L30; 76 -DFQ*L34; 12 -HFR*L1
31 -HFR*L4; 24 -HFR*L10; 24 -HFR*L15; 2 -HFR*L31
2 +DFR*L17; 5 +HYR*L3; 2 -CYR*L6; 28 +OQR*L2
127 +OQR*L4; 5 +OQR*L8; 229 +OQR*L14; 37 +OQR*L21
190 +OQR*L23; 98 -DPQ*L1; 69 -DPQ*L3; 274 -DPQ*L5
41 -DPQ*L6; 227 -DPQ*L14; 41 -DPQ*L21; 207 -DPQ*L23
140 -DPQ*L26; 117 +CYZ*L17; 49 -OYP*L12; 130 -OZQ*L27
24 -OZR*L1; 123 -OZR*L4; 2 -OZR*L7; 22 -OZR*L18
113 -OZR*L23; 49 -OZR*L31; 196 -OZR*DROP_OHP_YZ; 49 -OZR*RX_P
397 -OZR*DROP_OCQ_Y; 7 +HPR*RX_P; 114 +FPR*L5; 23 +FPR*L18
41 +FPR*L21; 77 +FPR*L23; 51 +FPR*L28; 44 +FPR*L35
16 -HQR*L12; 94 -HDR*L20; 170 -HDR*L23; 12 -HDR*L28
14 -HDR*TX_Q_; 237 +YZP*L2; 176 +YZP*L4; 2 +YZP*L6
283 +YZP*L17; 10 +YZP*L19; 17 +YZP*L20; 544 +YZP*L23
220 +YZP*L24; 353 +YZP*C_OHD_ZR; 476 +YZP*DROP_OCQ_Y; 99 +YZP*DROP_OCR_Y
68 -ODY*L3; 10 -ODY*L6; 188 -ODY*L15; 38 -ODY*L17
359 -ODY*L18; 126 -ODY*L24; 110 -ODY*L28; 256 -ODY*L34
51 -ODY*DROP_OCR_Y; 18 +ODR*L12; 2 +CPR*TY_Q_; 75 -DYZ*L18
5 +DQR*L9; 18 +DQR*L12; 32 +DQR*L15; 37 +DQR*L20
80 +DQR*L23; 41 +DQR*L29; 67 +DQR*L34; 92 +DQR*DROP_OHP_YZ
70 +DQR*RX_P; 138 +DQR*RY_P; 126 +DQR*TY_Q_; 145 -FQR*L23
2 +FYR*L17; 20 +FYR*L18; 12 -FYZ*L18; 24 -YZR*L5
2 -YZR*L6; 67 -YZR*L23; 49 +YPR*L12; 121 +YQR*L17
6 TPX_Q_*L35; 80 TPY_Q_*L18; 119 SP_OCDH_YR_OD1*L17; 83 Q_HZCP_Y*L17
29 Q_HZCR_Y*L17; 15 Q_CPQF_R*L23; 24 Q_CPRZ_Y*L17
```

Upper bound: `-48099259/12500000`.

### Leaf RTUpmpmmppmmpp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR -HQR -HDR +YZP +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDQR +ODR
P OHFYQ -OFY
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHPR -DPR
P DOHQR +DQR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHDR +YDR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZOYPR +ZPR
P QOHCR -QCR
P QOHYR -QYR
P QOHPR -QPR
M OHDRZY 1
M ODHRYZ -1
M HODYZR -1
M HDOYRZ 1
M DOHZYR 1
M DHOZRY -1
```

```c1top-bounds
T OHD YZR 0 lower 823/1000
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 823/1000 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
217 L0*L1*L12; 3 L0*L2*L23; 2 L0*L5*L8; 341 L0*L8*TY_Q_
31 L0*L12*L32; 65 L0*L17*L23; 97 L0*L17*L25; 206 L0*L17*L34
75 L0*L17*TY_Q_; 142 L0*L17*DROP_OCR_Y; 12 L0*L21*L23; 88 L0*L23*L29
2 L0*L31*RX_P; 211 L1*L4*L6; 81 L1*L4*L17; 6 L1*L6*L10
187 L1*L6*L14; 13 L1*L6*L17; 28 L1*L6*L27; 41 L1*L6*DROP_OCQ_Y
7 L1*L14*L17; 4 L1*L14*L24; 111 L1*L17*L30; 205 L1*L17*L32
7 L1*L17*L35; 56 L1*L20*L23; 37 L1*L21*L35; 1 L1*L25*RX_P
3 L1*L27*L30; 9 L2*L3*TY_Q_; 4 L2*L17*TX_Q_; 2 L2*L20*L32
3 L2*L30*L34; 2 L3*L3*L10; 30 L3*L3*C_OCF_Y; 48 L3*L5*L32
1 L3*L5*RX_P; 38 L3*L10*L20; 3 L3*L15*L17; 12 L3*L15*L18
64 L3*L17*RX_P; 9 L3*L17*DROP_OCQ_Y; 53 L3*L18*L21; 48 L3*L18*L27
189 L3*L18*RX_P; 41 L3*L21*L28; 4 L3*L21*L35; 9 L3*L22*RX_P
3 L3*L33*RX_P; 33 L3*RX_P*RX_P; 113 L4*L12*L19; 81 L4*L13*L18
60 L4*L17*L22; 124 L4*L17*L24; 72 L4*L17*L27; 50 L4*L17*L34
3 L5*L8*L17; 83 L5*L12*L23; 56 L5*L17*L18; 52 L5*L20*L24
32 L5*L23*L31; 155 L5*L28*RX_P; 1 L6*L8*L31; 1 L6*L9*L9
1 L6*L9*+OCF; 9 L6*L11*TY_Q_; 8 L6*L13*L18; 4 L6*L16*RX_P
21 L6*L17*L22; 11 L6*L18*L30; 23 L6*L21*L26; 79 L6*L22*TY_Q_
26 L6*L25*TY_Q_; 21 L6*L26*TY_Q_; 9 L6*L35*RY_P; 44 L7*L18*L28
189 L8*L17*L22; 26 L8*L17*L34; 17 L8*L18*L27; 2 L8*L27*TY_Q_
6 L9*L12*L18; 6 L9*L20*L28; 1 L9*L27*RX_P; 4 L10*L12*TY_Q_
12 L10*L17*L34; 155 L11*RX_P*TY_Q_; 4 L12*L12*L35; 2 L12*L14*RX_P
19 L12*L16*L32; 1 L12*L18*L29; 66 L12*L20*RY_P; 17 L12*L23*L32
3 L12*RX_P*RX_P; 10 L13*L17*L18; 40 L13*L17*L21; 86 L14*L17*L21
22 L14*L20*L35; 12 L14*L32*RX_P; 34 L16*L16*L17; 9 L16*L17*L32
4 L17*L17*L29; 7 L17*L17*L34; 3 L17*L17*L36; 34 L17*L17*RX_P
47 L17*L18*L22; 8 L17*L18*L25; 82 L17*L18*L28; 168 L17*L18*L32
17 L17*L21*L25; 4 L17*L21*+OCF; 45 L17*L22*L26; 259 L17*L22*L34
3 L17*L25*L32; 3 L17*L30*L36; 3 L17*L31*L36; 9 L17*L35*RY_P
8 L17*RX_P*DROP_OCR_Y; 49 L18*L21*L23; 74 L18*L21*L32; 49 L18*L21*TY_Q_
104 L18*L22*L30; 5 L18*L24*L29; 2 L18*L24*L30; 11 L18*L24*TY_Q_
48 L18*L27*L29; 91 L18*L28*RX_P; 1 L18*L30*L33; 20 L18*L30*TX_Q_
154 L18*L30*TY_Q_; 159 L18*L32*RX_P; 47 L18*RX_P*TY_Q_; 13 L21*L23*L27
70 L21*L27*L28; 20 L21*L28*TY_Q_; 33 L23*L23*L24; 2 L23*L24*L32
19 L23*L24*TY_Q_; 64 L23*L28*L29; 17 L27*L32*RX_P; 4 L28*L30*RX_P
2 L28*L32*RX_P; 2 L28*DROP_OHP_YZ*RX_P; 206 L32*RX_P*TY_Q_; 111 -OHF*L1
3 +OYZ*L25; 2 -HYZ*L0; 71 -HYZ*L17; 1 -HCY*L8
12 -HCY*L14; 161 -HCY*L19; 43 -HCY*L21; 121 -HCY*L22
1 -HCY*L25; 17 -HCY*L27; 2 -HCY*L28; 2 -HCY*L33
151 -HCY*DROP_OCQ_Y; 90 -HCY*TY_Q_; 43 -OHZ*L10; 150 -OHZ*L22
51 -OHZ*L23; 1 -OHZ*L25; 10 -OHZ*DROP_OHP_YZ; 241 -OHZ*RY_P
187 -HFZ*L1; 46 -HFZ*L4; 155 -HFZ*L22; 32 +OCP*L5
12 +OCP*L15; 214 +OCP*L17; 53 +OCP*L21; 91 +OCP*-OHD
197 +OCP*RX_P; 59 -CDP*L5; 812 -CDP*L16; 801 -CDP*L17
5 -CDP*L25; 320 -CDP*L32; 8 -CDP*C_OCF_Y; 96 -CDP*TY_Q_
1 -CYP*L9; 119 -HFQ*L0; 11 -HFQ*L11; 127 -HFQ*L25
237 -HFQ*-OHD; 115 -HFQ*RY_P; 90 -HFQ*DROP_OCQ_Y; 73 -HFQ*DROP_OCR_Y
49 +CDQ*L18; 78 -DFQ*L24; 58 -HFR*L1; 50 -HFR*L4
17 -HFR*L10; 10 -HFR*L16; 55 +HZR*L18; 41 +OQR*L2
73 +OQR*L4; 6 +OQR*L6; 75 +OQR*L8; 22 +OQR*L17
15 +OQR*RY_P; 63 -DPQ*L1; 103 -DPQ*L35; 1 +CYZ*L12
272 +OYQ*L1; 84 +OYQ*L16; 75 +OYQ*L24; 5 +OYQ*L27
22 +OYQ*L34; 272 +OYQ*-OHD; 106 +OYQ*RY_P; 8 +OYQ*DROP_OCQ_Y
66 -OZR*L18; 1 -OZR*RX_P; 23 +HPR*L6; 71 +FPR*L4
127 +FPR*L23; 142 +FPR*L28; 17 +FPR*L32; 135 +FPR*DROP_OCQ_Y
38 -HDR*L3; 20 -HDR*L4; 3 -HDR*L10; 61 -HDR*L19
62 -HDR*L20; 31 -HDR*L22; 36 -HDR*L29; 58 -HDR*-OHD
99 -HDR*DROP_OHP_YZ; 68 -HDR*TX_Q_; 275 +YZP*L4; 5 +YZP*L13
86 +YZP*L20; 101 +YZP*L23; 3 +YZP*L24; 225 +YZP*L28
396 +YZP*DROP_OCQ_Y; 398 +ODY*L1; 4 +ODY*L15; 211 +ODY*L20
349 +ODY*L22; 107 +ODY*L28; 235 +ODY*-OHD; 162 +ODY*RY_P
9 +ODY*TX_Q_; 75 +OYR*L21; 3 +DQR*L3; 5 +DQR*L11
20 +DQR*TY_Q_; 40 -OFR*L18; 8 -CFR*L17; 21 -FQR*L17
8 +FYR*L18; 16 -YZR*L0; 18 +YQR*L19; 70 +YQR*L23
35 +YQR*-OHD; 2 +YQR*C_OCF_Y; 2 +YQR*RX_P; 2 +YQR*RY_P
64 +YQR*DROP_OCQ_Y; 55 -DYZ*L4; 10 -DYZ*L18; 64 -DYZ*L20
88 -DYZ*L22; 196 -DYZ*-OHD; 90 -DYZ*DROP_OHP_YZ; 4 -DYZ*RX_P
185 -DYZ*DROP_OCQ_Y; 246 C_OHQ_ZR*L0; 60 C_OHQ_ZR*L10; 3 C_OHQ_ZR*L24
266 C_ODF_YR*L23; 179 C_ODZ_Y*L16; 2 C_ODZ_Y*L20; 31 C_ODR_Y*L17
5 C_HZP_Y*L12; 2 C_FYQ_R*L23; 28 TPY_Q_*L18; 8 TPY_Q_*L23
12 Q_ODRZ_Y*L1; 32 Q_ODQR_Y*L1; 38 Q_ODQR_Y*L3; 17 Q_ODQR_Y*L6
96 Q_OYQF_R*L18; 9 SP_HZPD_YR_HP1*L17; 36 SP_HZPD_YR_HP1*L23; 1 SP_HZPD_YR_HP1*L30
1 Q_HZPR_Y*L17; 32 M_HDOYRZ_1_2*L18; 3 M_HDOYRZ_1_3*L17; 10 M_HDOYRZ_1_3*L18
1 M_HDOYRZ_1_3*RX_P
```

Upper bound: `-5016785883/1000000000`.

### Leaf RTUpmpmmppmp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR -HQR +HDR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOHZR -DZR
P DOFPR -DPR
P DOFQR +DQR
P DHCYR -DYR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHCR -QCR
P QOHYR -QYR
P QOHPR -QPR
```

```c1top-bounds
T OHQ ZR 10 lower 347/500
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 347/500 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
19 L0*L1*L16; 5 L0*L3*L6; 5 L0*L3*+OCF; 15 L0*L3*DROP_OHP_YZ
26 L0*L3*RY_P; 13 L0*L3*DROP_OCQ_Y; 18 L0*L4*L25; 42 L0*L17*DROP_OCR_Y
8 L0*L21*L23; 14 L0*L21*DROP_OCR_Y; 1 L0*L25*C_OHD_Z; 22 L0*L25*RY_P
32 L1*L4*L6; 19 L1*L17*L28; 1 L1*L20*L27; 6 L1*L21*L28
5 L2*L3*TY_Q_; 4 L2*L6*L17; 10 L2*L17*L19; 10 L2*L27*TY_Q_
4 L3*L16*L17; 23 L3*L16*L28; 4 L3*L16*RX_P; 7 L3*L18*L18
40 L3*L18*L28; 20 L3*L18*DROP_OCR_Y; 5 L4*L6*L17; 15 L4*L6*RY_P
47 L4*L17*L23; 4 L4*L17*L27; 2 L4*L17*L28; 28 L4*L17*DROP_OCQ_Y
21 L4*L24*L27; 7 L5*L5*L16; 13 L5*L18*L21; 18 L5*L21*L23
13 L5*RX_P*TY_Q_; 10 L6*L23*TY_Q_; 7 L6*L26*L27; 13 L7*L23*L28
10 L17*L18*+OCF; 3 L17*L22*L27; 5 L17*L23*+OCF; 21 L17*L26*DROP_OCR_Y
4 L17*L29*+OCF; 2 L18*L21*DROP_OCQ_Y; 31 L18*L21*DROP_OCR_Y; 8 L18*L23*C_OCF_Y
7 L18*L23*RX_P; 9 L18*L24*L28; 27 L18*L24*TY_Q_; 21 L18*L28*L29
7 L18*RX_P*TY_Q_; 2 L18*TX_Q_*TY_Q_; 33 L21*L23*L28; 1 L21*L26*TY_Q_
5 L21*L27*L28; 28 L21*L28*TY_Q_; 20 L22*L23*L23; 20 L23*L23*L23
1 L23*L23*L24; 10 L23*L27*L29; 12 L23*L28*TX_Q_; 5 L23*L29*RX_P
15 L24*L28*RX_P; 15 L28*L29*RX_P; 14 L28*RX_P*TY_Q_; 10 L28*RX_P*DROP_OCR_Y
10 KLOW*L29; 9 KLOW*+OCF; 23 KLOW*DROP_OHP_YZ; 18 KLOW*RY_P
21 KLOW*DROP_OCQ_Y; 6 KLOW*TY_Q_; 28 +OCD*L17; 19 +OCP*L3
11 +OCP*L28; 40 -CDP*L5; 19 -CDP*C_OCF_Y; 13 -CDP*RY_P
27 -CDP*DROP_OCQ_Y; 20 -CDP*DROP_OCR_Y; 1 -HFR*L1; 55 -HFR*L4
15 -HFR*L16; 30 +DFR*L22; 11 +DFR*L28; 54 +DFR*-OHD
21 +DFR*C_OHD_Z; 15 +DFR*DROP_OHP_YZ; 11 +DFR*RY_P; 28 +DFR*DROP_OCR_Y
21 +OQR*L4; 7 +OQR*L26; 1 +OQR*DROP_OCQ_Y; 11 -DPQ*L17
19 -DPQ*L18; 11 -DPQ*DROP_OHP_YZ; 33 -DPQ*DROP_OCR_Y; 7 +FPR*L5
32 +FPR*L28; 22 +FPR*DROP_OCQ_Y; 8 +FPR*TY_Q_; 21 +FPR*DROP_OCR_Y
27 +HDR*L23; 15 +HDR*L29; 36 +HDR*DROP_OCQ_Y; 8 +HDR*TX_Q_
19 +CPQ*L18; 9 +DQR*L0; 7 +DQR*L27; 13 -OFR*L18
10 -CFR*L0; 3 -FQR*L18; 14 C_OHP_YZ*L23; 8 C_OHQ_ZR*L4
14 C_OFQ_R*L18; 26 C_HDF_R*L4; 23 C_HDF_R*L24; 35 C_HDF_R*L27
37 C_HDF_R*RY_P; 14 C_HDQ_R*L1; 8 C_HDQ_R*L25; 1 TPY_Q_*L28
5 TPY_Q_*RX_P; 10 Q_HDQF_R*L27; 8 Q_HDQF_R*RY_P; 10 Q_HDQF_R*TY_Q_
26 Q_DQFP_R*L0; 20 Q_DQFP_R*L23; 9 Q_DQFP_R*L28
```

Upper bound: `-948825769/1000000000`.

### Leaf RTUpmpmmppp

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR +HPR +FPR +HQR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDQR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYQR +OYR
P HODPQ +HPQ
P HODQR +HDR
P CODPQ +CPQ
P CODPR +CPR
P DOHZR -DZR
P DOFPR -DPR
P DOFQR +DQR
P DHCYR -DYR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZODPQ +ZPQ
P ZODPR +ZPR
P QOHZR -QZR
P QOCDR -QCR
P QOCYR -QYR
P QODPR -QPR
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OHR Z 12 lower 279/1000
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 1
m 27/50 1
r 279/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
3 L0*L1*L6; 28 L0*L3*TX_Q_; 2 L0*L5*L21; 11 L0*L7*L22
1 L0*L17*L20; 17 L0*L17*DROP_OCR_Y; 5 L0*L18*TY_Q_; 17 L0*L20*TX_Q_
182 L0*L22*TX_Q_; 14 L0*L23*L27; 3 L0*L25*L27; 5 L0*L26*RX_P
14 L0*L27*DROP_OCQ_Y; 17 L0*L29*DROP_OCR_Y; 9 L0*DROP_OHP_YZ*TY_Q_; 15 L0*RX_P*DROP_OCQ_Y
46 L0*DROP_OCQ_Y*TX_Q_; 11 L1*L2*L6; 6 L1*L6*L18; 1 L1*L13*L21
4 L1*L22*L24; 5 L2*L5*TY_Q_; 10 L2*L6*L27; 1 L2*L9*L12
1 L2*L12*L17; 1 L2*L12*L27; 7 L2*L17*RY_P; 2 L2*L18*L23
3 L2*L20*L27; 4 L2*L20*TY_Q_; 5 L2*L21*L24; 26 L2*DROP_OCQ_Y*TY_Q_
7 L3*L4*L24; 31 L3*L18*TX_Q_; 53 L3*L18*DROP_OCR_Y; 34 L3*L22*L22
5 L3*L25*TX_Q_; 1 L3*L36*TY_Q_; 1 L4*L6*L25; 1 L4*L7*L14
2 L4*L10*L17; 13 L4*L17*L23; 5 L4*L17*L24; 44 L4*L17*L26
2 L4*L17*L34; 14 L4*L17*TX_Q_; 14 L4*L22*L25; 11 L4*L24*TY_Q_
1 L4*L34*TX_Q_; 1 L4*C_OCF_Y*RX_P; 5 L5*L18*L18; 3 L5*L18*L25
12 L5*L21*TY_Q_; 1 L5*L25*L25; 2 L6*L16*L27; 2 L6*L18*RX_P
1 L6*L24*L27; 27 L6*L24*TY_Q_; 2 L6*L34*RX_P; 2 L7*L15*RX_P
14 L7*L18*DROP_OCR_Y; 7 L7*L27*DROP_OCQ_Y; 2 L10*L17*TY_Q_; 1 L12*L31*RX_P
2 L14*L17*L22; 2 L14*L17*DROP_OHP_YZ; 2 L14*DROP_OHP_YZ*TY_Q_; 2 L15*L16*L17
2 L16*L18*L25; 4 L16*L18*L36; 66 L16*TY_Q_*DROP_OCR_Y; 2 L17*L17*DROP_OCR_Y
4 L17*L18*L34; 4 L17*L21*TY_Q_; 16 L17*L22*L22; 22 L17*L22*L28
2 L17*L22*L32; 9 L17*L23*TX_Q_; 19 L17*DROP_OCR_Y*DROP_OCR_Y; 7 L18*L20*L21
7 L18*L21*L24; 6 L18*L21*TX_Q_; 70 L18*L21*DROP_OCR_Y; 10 L18*L23*L28
5 L18*L23*DROP_OCQ_Y; 3 L18*L24*TY_Q_; 5 L18*L28*RY_P; 4 L18*-OHD*RX_P
5 L18*TY_Q_*TY_Q_; 14 L21*L21*L22; 4 L21*L22*TY_Q_; 3 L21*L27*L29
14 L21*L27*DROP_OCR_Y; 4 L21*L29*DROP_OCQ_Y; 14 L21*TX_Q_*TY_Q_; 59 L21*TY_Q_*DROP_OCR_Y
21 L22*L24*L27; 59 L22*L24*TY_Q_; 4 L23*L23*TX_Q_; 14 L23*L28*L29
4 L24*L27*RY_P; 7 L24*RX_P*TY_Q_; 12 L26*L28*RX_P; 7 L27*L27*TX_Q_
13 L28*RX_P*TX_Q_; 4 +OCF*TY_Q_*TY_Q_; 16 DROP_OHP_YZ*TY_Q_*TY_Q_; 1 KLOW*L13
13 KLOW*L20; 1 KLOW*L25; 17 KLOW*TX_Q_; 10 KLOW*TY_Q_
18 KLOW*DROP_OCR_Y; 7 +OCP*L17; 17 +OCP*TX_Q_; 15 -CDP*L5
3 -CDP*L24; 4 -CDP*L28; 14 -CDP*TX_Q_; 53 -CDP*DROP_OCR_Y
28 +CDQ*L5; 5 +CDQ*L23; 15 +CDQ*L24; 1 +CDQ*L29
3 -DFQ*L24; 2 -DFQ*L27; 2 -DFQ*RY_P; 1 +HDQ*RY_P
3 -HFR*L0; 60 -HFR*L4; 58 -HFR*TY_Q_; 29 +DFR*L20
44 +DFR*L22; 1 +DFR*L24; 1 +DFR*L28; 29 +DFR*DROP_OCQ_Y
1 +HZR*L2; 5 +OQR*L17; 38 -DPQ*L26; 13 -DPQ*TX_Q_
31 -DPQ*DROP_OCR_Y; 1 -OZR*L16; 2 +FPR*L17; 7 +FPR*L21
3 +FPR*L22; 19 +FPR*DROP_OCR_Y; 14 +HQR*L23; 3 +HQR*L27
73 +HQR*DROP_OCQ_Y; 42 +HQR*TX_Q_; 1 +HDR*L1; 2 +CPQ*L6
2 +CPQ*TY_Q_; 12 +DQR*L4; 11 +DQR*L21; 12 +DQR*RX_P
4 +DQR*DROP_OCR_Y; 5 -OFR*L18; 5 -CFR*L5; 22 -CFR*L20
10 -FQR*L2; 31 -FQR*L20; 6 -FQR*-OHD; 16 -FQR*C_OHD_Z
22 -FQR*DROP_OCR_Y; 19 +CQR*L0; 1 C_HFQ_R*L19; 25 C_HFQ_R*L21
83 C_HFQ_R*L22; 42 C_HFQ_R*L24; 11 C_HFQ_R*RX_P; 105 C_HFQ_R*DROP_OCQ_Y
3 C_DFP_R*L4; 2 C_FPQ_R*L23; 24 TPY_Q_*L24; 4 Q_ORFH_Z*L27
3 Q_ODQF_R*L21; 6 Q_OPDQ_Y*L2; 1 Q_HZCP_Y*TY_Q_; 15 Q_HDQF_R*L22
7 Q_HDQF_R*DROP_OCQ_Y; 1 Q_CDFZ_YR*L18; 2 Q_CPDF_R*L25; 14 Q_CDQF_R*L0
5 Q_CDQF_R*L18; 1 Q_CPQF_R*L14; 16 Q_DQFP_R*L20; 1 Q_DQFP_R*L34
7 Q_DQFP_R*-OHD
```

Upper bound: `-5407902313/1000000000`.

### Leaf RTUpmpmpm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR -HPR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDZR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYZR +OYR
P HODPQ +HPQ
P HODPR -HDR
P HODQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPR -DPR
P DOHQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHDR +ZDR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P POHFR +PFR
P POHQR +PQR
P QOHCR -QCR
P QOHYR -QYR
P ROHDY -RDY
```

```c1top-bounds
```

Exclusion: `cluster OHP R OPR YZ`.

### Leaf RTUpmpmppm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPR -FPR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDZR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYZR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOFPR -DPR
P DOFQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHDR +ZDR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P POFQR +PQR
P QOCDR -QCR
P QOCYR -QYR
P ROCDY -RDY
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCR YZ 1 lower 694/907
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 153/200 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 1
m 27/50 1
r 93/1000 907/1000
t 98/125 907/1000
```

```c1top-sum
34 L0*L0*TX_Q_; 109 L0*L1*L24; 842 L0*L7*TX_Q_; 28 L0*L12*L23
788 L0*L23*TX_Q_; 1196 L0*L24*TX_Q_; 98 L0*L30*L30; 213 L1*L1*L20
118 L1*L1*L25; 218 L1*L1*L31; 203 L1*L2*L4; 160 L1*L3*L6
136 L1*L3*L17; 159 L1*L3*L18; 314 L1*L3*L21; 25 L1*L3*L23
185 L1*L3*L26; 222 L1*L3*L31; 218 L1*L3*L36; 11 L1*L5*L30
591 L1*L6*L17; 1322 L1*L6*L18; 175 L1*L6*L30; 64 L1*L6*TX_Q_
44 L1*L6*TY_Q_; 91 L1*L9*L26; 108 L1*L12*L12; 216 L1*L12*L22
11 L1*L12*TY_Q_; 702 L1*L14*L17; 65 L1*L14*L31; 3548 L1*L17*L17
137 L1*L17*L24; 3955 L1*L17*L27; 262 L1*L17*L28; 312 L1*L17*L30
3548 L1*L17*DROP_OHP_YZ; 713 L1*L17*TY_Q_; 33 L1*L18*RX_P; 3728 L1*L21*L26
319 L1*L21*L30; 25 L1*L23*L30; 35 L1*L25*L30; 2 L1*L31*TX_Q_
507 L2*L2*L27; 231 L2*L10*L17; 603 L2*L10*L31; 611 L2*L14*L17
17 L2*L14*L29; 691 L2*L17*L22; 4190 L2*L17*L27; 1057 L3*L3*L18
151 L3*L3*L28; 385 L3*L3*L34; 163 L3*L3*TY_Q_; 18 L3*L5*L5
631 L3*L5*L23; 728 L3*L5*L30; 656 L3*L6*L18; 454 L3*L6*L26
665 L3*L6*TY_Q_; 177 L3*L14*L18; 359 L3*L15*L26; 5407 L3*L17*L17
5436 L3*L17*L18; 369 L3*L17*L26; 2278 L3*L18*L18; 168 L3*L18*L20
1059 L3*L18*L23; 84 L3*L18*L25; 3039 L3*L18*L26; 156 L3*L18*L30
18 L3*L23*L23; 20 L3*L23*L36; 477 L3*L26*L30; 344 L3*L26*L36
21 L3*L26*TY_Q_; 634 L3*L28*L30; 214 L3*L30*TY_Q_; 214 L3*L35*TY_Q_
288 L4*L4*TX_Q_; 1258 L4*L5*L17; 1130 L4*L6*L17; 239 L4*L6*TX_Q_
1179 L4*L8*L17; 190 L4*L11*L17; 81 L4*L12*TX_Q_; 498 L4*L14*L17
7320 L4*L17*L17; 490 L4*L17*L21; 633 L4*L17*L23; 523 L4*L17*L27
419 L4*L17*L33; 403 L4*L17*-OHD; 1440 L4*L17*+OCF; 5461 L4*L17*DROP_OHP_YZ
964 L4*L23*TX_Q_; 3105 L4*L27*TX_Q_; 190 L5*L12*L18; 86 L5*L12*L21
2278 L5*L18*RX_P; 172 L5*L21*L23; 1031 L5*L21*L28; 508 L6*L6*TY_Q_
2047 L6*L18*L27; 483 L6*L21*TY_Q_; 4000 L6*L26*TY_Q_; 183 L6*L30*TY_Q_
21 L6*TY_Q_*TY_Q_; 841 L7*L23*L23; 907 L7*L23*L24; 159 L7*L23*L30
504 L7*L23*TX_Q_; 338 L8*L17*L17; 185 L8*L17*L26; 31 L8*L23*L30
8 L9*L10*L17; 338 L9*L17*L18; 1037 L10*L12*L17; 212 L10*L14*L17
205 L10*L17*L24; 31 L10*L21*L31; 31 L12*L14*L21; 733 L12*L17*L23
807 L12*L18*L21; 2 L12*L18*L23; 531 L12*L21*L28; 178 L12*L21*TY_Q_
80 L12*L23*L26; 31 L12*L23*L30; 41 L12*L27*L29; 533 L14*L17*L23
702 L14*L17*L26; 245 L14*L17*L29; 341 L14*L18*L21; 178 L14*L21*L21
18 L14*L21*L23; 80 L14*L21*L27; 498 L14*L21*L28; 13 L14*L21*L29
509 L17*L17*L22; 338 L17*L17*L35; 5407 L17*L17*+OCF; 3915 L17*L18*L20
115 L17*L20*L27; 12 L17*L20*L32; 702 L17*L22*L26; 1224 L17*L23*L23
2511 L17*L23*L27; 183 L17*L23*L31; 190 L17*L23*L32; 3406 L17*L23*RX_P
720 L17*L27*L30; 187 L17*L27*TX_Q_; 45 L17*L28*TX_Q_; 423 L17*L30*L32
245 L17*L34*TX_Q_; 21 L17*TX_Q_*TY_Q_; 190 L18*L18*L21; 318 L18*L18*L25
171 L18*L20*L30; 21 L18*L21*L21; 1224 L18*L21*L23; 302 L18*L21*L24
3147 L18*L21*L27; 1549 L18*L21*L28; 4 L18*L21*L29; 565 L18*L23*L24
102 L18*L24*L28; 331 L18*L25*L30; 318 L18*L26*RX_P; 631 L18*L26*TX_Q_
218 L18*L30*L31; 212 L18*L30*L35; 190 L18*L30*TY_Q_; 42 L18*L31*L32
190 L18*RX_P*TY_Q_; 786 L21*L23*L28; 119 L21*L26*TY_Q_; 248 L21*L28*L28
119 L23*L23*L24; 163 L23*L29*L29; 18 L30*TY_Q_*TY_Q_; 18 L31*TY_Q_*TY_Q_
182 +OYZ*L0; 239 +OYZ*L3; 17 +OYZ*L6; 262 +OYZ*L13
212 +OYZ*L18; 150 +OYZ*L21; 1423 +OYZ*L24; 703 +OYZ*L27
36 +OYZ*L28; 2560 +OYZ*L31; 218 -HCY*L1; 202 -HCY*L8
65 -HCY*L14; 144 -HCY*L20; 7 -HCY*L23; 1134 -HCY*L25
91 -HCY*L26; 416 -HCY*L30; 759 -HCY*RX_P; 42 -HCY*RY_P
17 -HCY*TX_Q_; 32 -HCY*TY_Q_; 2051 +OCP*L3; 175 +OCP*L6
392 +OCP*L23; 192 -CDP*L1; 481 -CDP*L6; 5774 -CDP*L17
2278 -CDP*L18; 4099 -CDP*L20; 666 -CDP*L23; 3357 -CDP*L26
1362 -CDP*L30; 36 -CDP*L36; 564 -CYP*L2; 1460 -CYP*L12
212 -CYP*L14; 338 -CYP*L16; 12 -CYP*L21; 539 -CYP*L24
430 -CYP*L31; 190 -CYP*TY_Q_; 154 -HFQ*L3; 44 -HFQ*L5
21 -HFQ*L18; 2 -HFQ*L23; 159 -HFQ*L30; 702 -HFQ*L36
482 -DFQ*L5; 747 -DFQ*L6; 183 -DFQ*L8; 102 -DFQ*L13
728 -DFQ*L18; 21 -DFQ*L20; 698 -DFQ*L23; 535 -DFQ*+OCF
719 -DFQ*RX_P; 749 -DFQ*RY_P; 895 -DFQ*DROP_OCR_YZ; 34 -HFR*L0
2491 -HFR*L3; 675 -HFR*L12; 702 -HFR*L14; 473 -HFR*L17
907 -HFR*L20; 907 -HFR*L29; 1593 -HFR*C_OCF_Y; 2393 -HFR*RY_P
593 -HFR*DROP_OCQ_Y; 2393 -HFR*TY_Q_; 520 +HYR*L31; 334 -CYR*L17
1769 -CYR*L30; 210 +HZR*L12; 54 +HZR*L23; 12 +HZR*TX_Q_
313 -DPQ*L0; 4 -DPQ*L7; 183 -DPQ*L10; 978 -DPQ*L12
533 -DPQ*L14; 851 -DPQ*L18; 662 -DPQ*L19; 21 -DPQ*L21
1224 -DPQ*L23; 3881 -DPQ*L27; 1258 -DPQ*L28; 183 -DPQ*L35
3915 -DPQ*RX_P; 679 +CYZ*L1; 385 +CYZ*L3; 36 +CYZ*L4
2560 +CYZ*L8; 262 +CYZ*L12; 181 +CYZ*L20; 903 +CYZ*L25
703 +CYZ*L26; 17 +CYZ*L29; 461 +CYZ*-OHD; 31 +OYQ*L30
205 -OZQ*L1; 36 -OZQ*L4; 13 -OZQ*L7; 31 -OZQ*L12
245 -OZQ*L17; 192 -OZQ*L19; 178 -OZQ*L21; 1087 -OZQ*L22
1105 -OZQ*L23; 634 -OZQ*L24; 622 -OZQ*L26; 31 -OZQ*L31
163 -OZQ*C_OCF_Y; 1734 +OZR*L1; 1032 +OZR*L4; 12 +OZR*L6
310 +OZR*L8; 246 +OZR*L17; 622 +OZR*L20; 1734 +OZR*L28
210 +OZR*L30; 75 +OZR*+OCF; 702 +OZR*RY_P; 757 +OZR*DROP_OCQ_Y
262 +HPR*L0; 302 +HPR*L6; 247 +HPR*L9; 720 +HPR*L12
702 +HPR*L14; 33 +HPR*L19; 302 +HPR*L21; 668 +HPR*L23
623 +HPR*L31; 3694 -FPR*L1; 285 -FPR*L18; 102 +DQR*L18
3728 -FQR*L0; 907 -FQR*L7; 634 -FQR*L12; 702 -FQR*L14
588 -FQR*L17; 119 -FQR*L23; 827 -YZR*L3; 276 C_OCR_YZ*L1
3337 C_OCR_YZ*L4; 463 C_OCR_YZ*L6; 86 C_OCR_YZ*L9; 306 C_OCR_YZ*L12
3992 C_OCR_YZ*L17; 41 C_OCR_YZ*L22; 507 C_OCR_YZ*L31; 612 C_OCR_YZ*L35
2289 C_OYR_Z*L30; 588 C_OQR_Z*L17; 246 C_CZR_Y*L17; 21 TPX_Q_*L18
107 Q_OQFH_ZR*L17; 609 Q_HZCR_Y*L17; 20 Q_HZCR_Y*L23; 221 Q_HZCR_Y*L30
```

Upper bound: `-718199573/500000000`.

### Leaf RTUpmpmppp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPR +FPR`.

```c1top-geometry
P OHDZQ +ODZ
P OHDZR +ODR
P OHFYQ -OFY
P OHYZP -OZP
P OHYZR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOFPR -DPR
P DOFQR +DQR
P FOHPR +FOR
P FOCPR +FCR
P FODPQ +FPQ
P FODQR -FQR
P FOYPR +FYR
P FHCZR +FZR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHDR +ZDR
P ZOHFR -ZOF
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P QOCDR -QCR
P QOCYR -QYR
P QODPR -QPR
P ROCDY -RDY
```

```c1top-bounds
T OHQ Z 10 lower 279/1000
T OCR YZ 1 lower 694/907
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 153/200 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 279/1000 1
m 27/50 1
r 93/1000 907/1000
t 98/125 907/1000
```

```c1top-sum
10 L23*RX_P; 4 L0*L0*L11; 4 L0*L1*L35; 9 L0*L2*L17
22 L0*L2*TY_Q_; 4 L0*L6*L31; 6 L0*L8*L27; 15 L0*L8*RX_P
5 L0*L14*L17; 4 L0*L17*L22; 2 L0*L18*L29; 1 L0*L20*L36
10 L0*L23*L30; 7 L0*L24*L31; 59 L0*L24*TY_Q_; 6 L0*L26*RX_P
24 L1*L6*L18; 55 L1*L6*L22; 34 L1*L6*RY_P; 119 L1*L6*TY_Q_
4 L1*L8*L28; 2 L1*L13*L35; 1 L1*L21*RX_P; 2 L1*L21*TY_Q_
15 L2*L3*L32; 1 L2*L6*L31; 8 L2*L21*TY_Q_; 8 L2*+OCF*TY_Q_
8 L2*RX_P*TY_Q_; 4 L3*L3*L6; 19 L3*L3*L18; 73 L3*L5*L18
1 L3*L6*L35; 6 L3*L7*RX_P; 9 L3*L12*L18; 7 L3*L13*RX_P
26 L3*L15*L27; 7 L3*L17*L36; 17 L3*L17*DROP_OCQ_Y; 72 L3*L18*L22
5 L3*L18*L24; 7 L3*L18*L31; 3 L3*L21*DROP_OCQ_Y; 2 L3*L23*L36
28 L3*L26*L28; 2 L3*L27*L30; 8 L3*L27*+OCF; 17 L3*L34*RX_P
14 L3*RX_P*DROP_OCR_YZ; 17 L4*L6*RX_P; 62 L4*L6*TY_Q_; 109 L4*L17*L17
3 L4*L17*L34; 123 L4*L17*DROP_OHP_YZ; 22 L4*L18*L21; 6 L4*L23*L26
3 L4*L26*L30; 8 L4*L28*RX_P; 34 L5*L5*L21; 10 L5*L5*RX_P
3 L5*L8*L18; 1 L5*L11*L17; 68 L5*L16*TY_Q_; 6 L5*L21*L26
50 L5*L21*L28; 9 L5*L27*TY_Q_; 2 L6*L10*L13; 8 L6*L10*L15
1 L6*L10*L23; 3 L6*L10*RY_P; 1 L6*L11*L18; 6 L6*L11*L34
13 L6*L12*RY_P; 3 L6*L14*TY_Q_; 2 L6*L15*C_OHD_Z; 1 L6*L17*L20
7 L6*L17*L31; 13 L6*L18*L27; 12 L6*L18*L34; 5 L6*L26*L29
19 L6*L26*TY_Q_; 3 L6*L35*DROP_OCR_YZ; 4 L7*L17*L27; 1 L8*L26*L34
13 L8*L27*RX_P; 7 L9*L17*C_OHD_Z; 7 L9*L17*TX_Q_; 6 L9*L26*TY_Q_
3 L9*L28*DROP_OCR_YZ; 3 L10*L18*TY_Q_; 6 L10*L21*RX_P; 7 L11*L17*L25
1 L12*L18*L29; 9 L12*L23*L28; 13 L13*L18*TY_Q_; 7 L14*L28*RX_P
7 L15*L17*+OCF; 16 L15*L17*DROP_OCR_YZ; 6 L15*L21*L26; 3 L15*L21*L28
1 L15*L27*L30; 8 L16*L17*L18; 74 L16*L18*L21; 30 L16*L27*L28
38 L16*L28*TY_Q_; 74 L16*RX_P*TY_Q_; 7 L17*L20*L30; 4 L17*L20*+OCF
7 L17*L21*L36; 5 L17*L21*C_OCF_YZ; 30 L17*L22*L26; 7 L17*L22*L36
4 L17*L23*TX_Q_; 32 L17*L26*-OHD; 16 L17*L27*L36; 2 L17*L28*L28
3 L17*L29*C_OHD_Z; 1 L17*L29*TX_Q_; 1 L17*DROP_OHP_YZ*DROP_OCR_YZ; 61 L18*L21*L26
6 L18*L21*L31; 9 L18*L21*L34; 8 L18*L21*+OCF; 24 L18*L21*C_OHD_Z
11 L18*L26*L29; 6 L18*L26*L31; 1 L18*L28*L31; 3 L18*L35*TY_Q_
8 L18*RX_P*RX_P; 3 L19*L23*L30; 1 L21*L23*+OCF; 13 L21*L28*L33
4 L21*RX_P*TY_Q_; 2 L23*L23*L27; 1 L23*L25*L36; 42 L24*L28*TY_Q_
8 L26*L28*TY_Q_; 6 L26*L30*TY_Q_; 2 L26*TY_Q_*TY_Q_; 8 L27*L28*-OHD
8 L27*L28*DROP_OCQ_Y; 29 L27*L28*TX_Q_; 2 L27*L30*RX_P; 1 L27*L30*TX_Q_
9 L27*L32*C_OCF_YZ; 2 L28*L28*L29; 2 L28*L34*RX_P; 5 L31*-OHD*TY_Q_
91 RX_P*TY_Q_*DROP_OCR_YZ; 4 KLOW*L7; 9 KLOW*L12; 5 KLOW*L14
8 KLOW*L24; 61 KLOW*L27; 26 -OHF*L1; 24 -OHF*RY_P
7 +OYZ*L2; 16 +OYZ*L24; 2 +OYZ*L29; 7 +OYZ*TY_Q_
16 +OYZ*DROP_OCR_YZ; 10 -HYZ*L8; 10 -HCY*L4; 7 -HCY*L23
7 -HCY*L25; 10 -HCY*L30; 16 -HCY*L33; 20 -HCY*DROP_OHP_YZ
9 -HCY*RX_P; 1 -HCY*TX_Q_; 3 -HFY*L17; 4 +CFY*L3
15 +CFY*L26; 26 -HFZ*L26; 2 -HFZ*L35; 32 +OCP*L3
8 +OCP*L12; 9 +OCP*L21; 2 -CDP*L1; 5 -CDP*L15
50 -CDP*L20; 17 -CDP*DROP_OHP_YZ; 17 -CDP*TX_Q_; 72 -CDP*TY_Q_
12 -CYP*L2; 4 -CYP*L6; 24 -CYP*L24; 6 -CYP*L27
6 -CYP*TX_Q_; 2 -HFQ*TY_Q_; 46 +CDQ*L5; 25 +CDQ*L28
9 -DFQ*L1; 101 -HFR*L1; 38 -HFR*L5; 56 -HFR*L19
129 -HFR*C_OHD_Z; 209 -HFR*DROP_OCQ_Y; 41 +DFR*L3; 6 +DFR*L11
17 +DFR*L12; 64 +DFR*L28; 3 +DFR*L36; 41 +DFR*+OCF
64 +DFR*DROP_OCQ_Y; 60 +DFR*DROP_OCR_YZ; 83 -DPQ*L3; 7 -DPQ*L14
33 -DPQ*L28; 34 -DPQ*+OCF; 70 -DPQ*DROP_OHP_YZ; 116 -DPQ*DROP_OCR_YZ
10 +CYZ*L4; 10 +CYZ*L8; 82 +CYZ*L17; 7 +CYZ*L23
98 +CYZ*DROP_OHP_YZ; 10 -OZQ*L4; 74 -OZQ*L18; 90 -OZQ*L19
79 -OZQ*L24; 13 -OZQ*+OCF; 7 -OZQ*DROP_OHP_YZ; 87 -OZQ*DROP_OCR_YZ
38 +OZR*L6; 16 +OZR*L8; 16 +OZR*L10; 12 +OZR*L19
41 +OZR*L20; 26 +OZR*-OHD; 16 +OZR*RX_P; 93 +OZR*DROP_OCQ_Y
38 +OZR*TX_Q_; 2 +FPR*L9; 6 +FPR*L10; 14 +FPR*L12
43 +FPR*L22; 43 +FPR*L28; 13 +FPR*-OHD; 19 +FPR*+OCF
12 +FPR*TY_Q_; 13 +ODZ*L18; 13 +DQR*L13; 34 +DQR*L19
60 +DQR*L27; 21 +DQR*RY_P; 33 -OFR*L0; 19 -OFR*L18
68 -CFR*L0; 14 -CFR*L3; 5 -CFR*L17; 53 -CFR*L28
16 -CFR*TY_Q_; 1 -FQR*L8; 29 -FQR*L14; 60 -FQR*L27
9 +FYR*L28; 1 +FYR*TY_Q_; 12 +FZR*L18; 3 -YZR*L4
16 -YZR*RX_P; 2 -OFZ*L6; 17 C_OCR_YZ*L1; 4 C_OCR_YZ*L12
11 C_OCR_YZ*RY_P; 14 C_OCR_YZ*DROP_OCQ_Y; 61 C_OCR_YZ*TY_Q_; 44 C_OFQ_ZR*L0
16 C_OYR_Z*L36; 1 C_OQR_Z*L30; 65 C_OQR_Z*L36; 9 C_HCZ_Y*L3
11 C_HCZ_Y*L8; 14 C_HCZ_Y*L20; 4 C_HCZ_Y*L22; 2 C_FZQ_R*L0
55 TPY_Q_*L18; 3 Q_OYFH_Z*L18; 1 SP_OPQF_YR_PF-1*L17; 5 Q_HZCP_Y*L8
1 Q_HZCP_Y*L21; 8 Q_HZCR_Y*L3; 2 Q_FYPQ_R*L17
```

Upper bound: `-2173152901/500000000`.

### Leaf RTUpmpp

Assumptions: `+CYZ -OYP +OYQ +OZQ`.

```c1top-geometry
P OHDQR +ODR
P OHFYQ -OFY
P OHFZQ -OFZ
P OHYZP -OZP
P OHYQR +OYR
P OHZQR +OZR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOFPR -DPR
P DOFQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P QOCDR -QCR
P QOCYR -QYR
P QOCZR -QZR
P QODPR -QPR
P ROCDY -RDY
P ROCDZ -RDZ
```

```c1top-bounds
T OCQ YZ 11 lower 694/885
T OCR YZ 1 lower 694/907
T OCR YZ 13 lower 694/885
```

```c1top-box
h 98/125 1
c 153/200 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 21/200 297/500
l 129/500 1
m 98/125 1
r 93/1000 907/1000
t 98/125 907/1000
```

```c1top-sum
108 L0*L0*TX_Q_; 14 L0*L3*L4; 5 L0*L3*L8; 4 L0*L3*L14
23 L0*L3*L26; 1 L0*L7*L18; 10 L0*L7*L28; 38 L0*L14*TX_Q_
18 L0*L17*L21; 24 L0*L17*L33; 32 L0*L17*-OHD; 50 L0*L23*L29
6 L0*L23*TX_Q_; 4 L0*L24*TX_Q_; 23 L0*L26*L33; 60 L0*L26*TX_Q_
37 L1*L1*L2; 14 L1*L1*L6; 15 L1*L1*L31; 53 L1*L2*L31
13 L1*L2*TY_Q_; 46 L1*L3*L12; 18 L1*L4*L6; 19 L1*L6*L6
12 L1*L6*L9; 14 L1*L6*L10; 34 L1*L6*L21; 12 L1*L6*L25
6 L1*L13*L21; 8 L1*L17*L35; 34 L1*L17*RX_P; 5 L1*L21*L21
11 L1*L21*L31; 1 L1*L21*L35; 28 L1*L23*L30; 15 L1*L24*L28
23 L1*L30*L31; 86 L2*L3*TY_Q_; 63 L2*L12*L23; 1 L2*L23*TX_Q_
26 L3*L3*L15; 56 L3*L3*C_OCF_YZ; 56 L3*L3*RX_P; 1 L3*L3*DROP_OCR_YZ
8 L3*L6*L22; 4 L3*L7*L18; 29 L3*L8*L18; 1 L3*L9*L26
33 L3*L10*L23; 88 L3*L13*L17; 1 L3*L14*TY_Q_; 25 L3*L17*L17
99 L3*L17*L19; 19 L3*L18*L20; 73 L3*L18*L28; 9 L3*L18*C_OCF_YZ
31 L3*L18*DROP_OCQ_YZ; 8 L3*L20*L26; 2 L3*L21*TY_Q_; 14 L3*L23*L35
86 L3*L23*C_OCF_YZ; 5 L3*L24*L28; 3 L3*L24*L32; 1 L3*L26*+OCF
9 L3*L26*DROP_OCQ_YZ; 4 L3*L28*L29; 5 L3*L32*L32; 1 L3*L34*TY_Q_
1 L3*L35*TY_Q_; 5 L4*L6*TX_Q_; 1 L4*L17*L31; 87 L4*L17*DROP_OHP_YZ
10 L5*L6*RX_P; 11 L5*L12*L23; 10 L5*L21*L23; 1 L5*L25*TY_Q_
13 L6*L6*TY_Q_; 9 L6*L10*L17; 2 L6*L13*TY_Q_; 4 L6*L14*RX_P
14 L6*L21*L26; 15 L6*L22*L31; 3 L6*L22*TY_Q_; 5 L6*L23*TX_Q_
19 L6*L26*RX_P; 2 L6*L30*TY_Q_; 2 L6*L31*RY_P; 14 L7*L17*L27
7 L7*L26*L28; 1 L8*L18*TY_Q_; 11 L8*L23*L23; 44 L8*L23*L30
37 L8*L28*RX_P; 70 L8*L30*L32; 16 L9*L10*L10; 19 L9*L12*L14
2 L9*L14*L24; 26 L9*L14*RX_P; 7 L9*L23*L31; 1 L9*L26*L28
1 L9*L27*TY_Q_; 5 L10*L10*L31; 1 L10*L11*L17; 41 L10*L12*L23
123 L10*L12*L31; 9 L10*L14*L17; 8 L10*L17*L35; 12 L10*L17*RX_P
1 L10*L18*RX_P; 1 L10*L20*L28; 38 L10*L21*L31; 83 L10*L31*L31
1 L11*L17*RY_P; 11 L11*L21*L23; 6 L11*L21*L30; 1 L11*L26*L31
34 L11*L30*L30; 20 L11*L30*L35; 24 L12*L14*L17; 10 L12*L14*L21
41 L12*L14*L31; 18 L12*L17*L22; 59 L12*L17*RX_P; 2 L12*L17*TX_Q_
12 L12*L18*RX_P; 1 L12*L18*TX_Q_; 10 L12*L23*L30; 2 L12*L27*L31
59 L13*L17*DROP_OHP_YZ; 29 L13*L23*RX_P; 12 L14*L14*L17; 12 L14*L17*L34
101 L14*L20*L31; 1 L14*L23*L24; 1 L14*L24*L35; 12 L14*L28*RX_P
6 L14*L31*L35; 12 L15*L17*L22; 8 L16*L23*L23; 25 L17*L17*+OCF
8 L17*L19*L23; 13 L17*L20*L26; 8 L17*L21*DROP_OCR_YZ; 10 L17*L22*L29
8 L17*L22*RY_P; 5 L17*L23*L24; 4 L17*L23*L35; 43 L17*L23*C_OCF_YZ
5 L17*L25*L28; 29 L17*L36*C_OCF_YZ; 2 L17*L36*TX_Q_; 56 L17*+OCF*+OCF
1 L18*L20*L30; 3 L18*L21*L35; 8 L18*L28*+OCF; 1 L18*L29*L30
1 L18*L30*L32; 8 L18*L30*L35; 12 L18*L30*DROP_OHP_YZ; 13 L21*L23*L27
7 L21*L23*L34; 1 L21*L23*L36; 9 L21*L24*L28; 9 L21*L25*TY_Q_
6 L21*L30*L32; 1 L21*L33*TY_Q_; 6 L21*TY_Q_*TY_Q_; 13 L23*L23*L24
5 L23*L23*RX_P; 6 L23*L23*TX_Q_; 15 L23*L24*C_OCF_YZ; 9 L23*L24*TX_Q_
1 L23*L26*L30; 46 L23*L27*L29; 8 L23*L33*TY_Q_; 44 L23*RX_P*TY_Q_
1 L24*L28*L35; 7 L24*L28*TY_Q_; 1 L26*L30*L32; 32 L28*L28*RX_P
10 L28*TX_Q_*TX_Q_; 24 L30*L34*RX_P; 12 L36*RX_P*TY_Q_; 31 RX_P*TY_Q_*TY_Q_
1 KLOW*L24; 34 QUADP*L17; 18 QUADQ*L17; 130 +OYZ*L6
292 +OYZ*L10; 5 +OYZ*L14; 12 +OYZ*L23; 2 +OYZ*L24
64 +OYZ*L31; 16 +OYZ*L32; 266 +OYZ*L35; 5 +OYZ*L36
256 +OYZ*C_OCF_YZ; 18 +OYZ*RX_P; 121 +OYZ*TX_Q_; 15 -HCY*L1
31 -HCY*L2; 104 -HCY*L8; 8 -HCY*L19; 27 -HCY*L21
5 -HCY*L29; 14 -HCY*L30; 79 -HCY*L33; 58 -HCY*RX_P
28 -HCY*DROP_OCQ_YZ; 5 -HFY*L17; 81 +OCP*L3; 65 -CDP*L0
78 -CDP*L2; 64 -CDP*L5; 13 -CDP*L6; 36 -CDP*L8
83 -CDP*L17; 12 -CDP*L33; 172 -CDP*DROP_OHP_YZ; 27 -CDP*DROP_OCQ_YZ
16 -CDP*TX_Q_; 1 -CYP*L5; 1 -CYP*L6; 54 -CYP*L8
25 -CYP*L12; 9 -CYP*L14; 4 -CYP*L20; 16 -CYP*L35
8 -CYP*-OHD; 44 -CYP*DROP_OHP_YZ; 4 -CYP*DROP_OCQ_YZ; 108 -HFQ*L0
17 -HFQ*L3; 9 -HFQ*L8; 35 -HFQ*L14; 8 -HFQ*L21
140 -HFQ*L27; 32 -DFQ*L6; 10 -DFQ*RX_P; 3 -DFQ*TX_Q_
1 +HDQ*L3; 3 +HDQ*L14; 13 +HDQ*L21; 1 +HDQ*L23
1 +HDQ*L30; 15 -CYQ*L17; 1 +HCR*L6; 36 +HCR*L23
3 -HFR*L1; 9 -HFR*L6; 1 -HFR*L9; 14 -HFR*L10
2 -HFR*L14; 1 -HFR*L17; 17 -HFR*L18; 5 -HFR*L21
6 -HFR*RX_P; 17 -HFR*RY_P; 246 -HFR*DROP_OCQ_YZ; 16 -HFR*TY_Q_
7 +DFR*L1; 57 +OQR*L1; 16 +CYZ*L1; 87 +CYZ*L3
323 +CYZ*L8; 16 +CYZ*L11; 65 +CYZ*L12; 9 +CYZ*L18
22 +CYZ*L20; 2 +CYZ*L25; 9 +CYZ*L29; 52 +CYZ*+OCF
29 +CYZ*DROP_OHP_YZ; 12 +CYZ*DROP_OCQ_YZ; 7 -OYP*L10; 25 -OYP*L12
33 -OYP*L17; 46 -OYP*L31; 11 +OYQ*L17; 49 +OZQ*L0
81 +OZQ*L6; 42 +OZQ*L8; 40 +OZQ*L10; 16 +OZQ*L23
3 +OZQ*L28; 81 +OZQ*L29; 10 +OZQ*L36; 2 +OZQ*RX_P
7 +OZQ*DROP_OCR_YZ; 37 -OFZ*L23; 10 +OZR*L14; 2 +OZR*L31
1 +DQR*L35; 5 +DQR*RX_P; 6 +DQR*TY_Q_; 195 -FQR*L0
10 -FQR*L10; 2 -FQR*L14; 6 -FQR*L28; 9 -FQR*L29
1 -FQR*L31; 10 -FQR*L32; 4 -FYZ*L3; 3 -FYZ*L17
24 +ZQR*L1; 1 +ZQR*L10; 10 +ZQR*L14; 8 +ZQR*L22
2 C_OCR_YZ*L6; 1 C_OCR_YZ*L9; 1 C_OCR_YZ*L10; 23 C_OCR_YZ*L20
19 C_OYQ_Z*L3; 2 C_OYQ_Z*L18; 11 C_OYQ_Z*L23; 76 C_OYQ_Z*L30
3 TPX_Q_*L23; 4 TPY_Q_*L30; 2 Q_OPDF_YZ*L17; 1 Q_HYQF_R*L18
25 Q_HYQF_R*L31
```

Upper bound: `-181763859/1000000000`.

### Leaf RTUpp

Assumptions: `+CYZ +OYP`.

```c1top-geometry
C OCP Y Z -POZ 3239749/6167600
P OHDYP -ODY
P OHDYQ +OYQ
P OHDQR +ODR
P OHFYP -OFY
P OHYPR +OYR
P HODPQ +HPQ
P CODPQ +CPQ
P CODPR +CPR
P DOCYR -DYR
P DOFPR -DPR
P DOFQR +DQR
P FODPQ +FPQ
P FHDQR -FQR
P YOHDZ +YDZ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YODPQ +YPQ
P YODPR +YPR
P ZHDPQ +ZPQ
P QOCDR -QCR
P QOCYR -QYR
P QODPR -QPR
C CZP Y R +ZPR 16331508917/27291630000
```

```c1top-bounds
T OCP Y 9 lower 93/295
T OCR Y 13 lower 93/295
```

```c1top-box
h 98/125 1
c 347/500 177/200
d 437/1000 449/500
f 93/1000 167/200
u 279/1000 699/1000
v 21/200 29/50
z 93/1000 513/1000
w 21/200 79/100
p 843/1000 1
q 63/200 297/500
l 129/500 1
m 27/50 1
r 93/1000 907/1000
t 63/200 907/1000
```

```c1top-sum
2 L0*L3*L9; 15 L0*L3*L23; 2 L0*L16*L28; 83 L1*L2*L10
2 L1*L2*L30; 8 L1*L2*RY_P; 9 L1*L5*DROP_OHP_Z; 129 L1*L6*L22
3 L1*L6*L36; 90 L1*L12*L22; 18 L1*L16*L16; 127 L1*L21*L22
3 L1*L21*L30; 3 L1*L21*RX_P; 218 L1*L22*L31; 5 L1*L23*DROP_OCP_Y
10 L1*L31*L33; 144 L2*L5*TY_Q_; 34 L2*L9*L18; 14 L2*L12*L23
7 L2*L12*RY_P; 48 L2*L12*TY_Q_; 75 L2*L17*DROP_OCQ_Y; 61 L2*L19*C_OCF_Y
103 L2*L19*DROP_OCP_Y; 301 L2*L19*RY_P; 38 L3*L3*L10; 45 L3*L5*L5
65 L3*L5*L14; 18 L3*L5*L17; 51 L3*L5*+OCF; 3 L3*L10*L28
18 L3*L10*L33; 9 L3*L10*RY_P; 55 L3*L11*L12; 12 L3*L12*L32
9 L3*L14*C_OCF_Y; 17 L3*L16*L28; 827 L3*L18*TY_Q_; 374 L3*L22*L23
17 L4*L6*L19; 52 L4*L6*TY_Q_; 48 L4*L9*L23; 95 L4*L10*L17
1 L4*L17*L33; 82 L4*L17*RX_P; 28 L4*L17*RY_P; 18 L5*L5*L6
27 L5*L5*L20; 154 L5*L8*L14; 5 L5*L14*DROP_OCP_Y; 5 L5*L18*L34
62 L5*L21*TY_Q_; 24 L5*L23*DROP_OCP_Y; 18 L5*L23*TY_Q_; 1 L5*L29*L36
3 L5*L32*RX_P; 23 L6*L17*L18; 13 L6*L22*RY_P; 106 L6*L22*TY_Q_
15 L7*L18*L23; 47 L7*L22*L23; 22 L7*L23*TY_Q_; 2 L7*L28*L28
69 L8*L19*RY_P; 96 L8*L19*TY_Q_; 6 L9*L10*L12; 21 L9*L14*L22
7 L9*L14*L31; 67 L9*L15*L23; 3 L10*L12*L17; 59 L10*L14*L17
92 L10*L17*TY_Q_; 96 L10*L19*RX_P; 286 L10*L22*RX_P; 14 L10*L23*+OCF
9 L11*L17*L20; 25 L12*L14*L19; 3 L12*L15*L22; 25 L12*L15*RY_P
2 L12*L19*L32; 5 L12*L19*L35; 2 L12*L23*L28; 35 L12*L23*C_OCF_Y
24 L12*TX_Q_*TY_Q_; 2 L14*L16*L31; 57 L14*L17*DROP_OCQ_Y; 3 L14*L20*L31
260 L14*L22*L31; 101 L14*L31*RY_P; 205 L14*L31*DROP_OCQ_Y; 160 L14*L31*TY_Q_
47 L14*L35*DROP_OCP_Y; 57 L14*RX_P*TY_Q_; 2 L15*L29*TY_Q_; 3 L15*L30*TY_Q_
1 L15*L31*L31; 25 L16*L23*TY_Q_; 101 L17*L17*L22; 24 L17*L17*L28
78 L17*L20*DROP_OCP_Y; 24 L17*L20*DROP_OCQ_Y; 9 L17*L21*L32; 63 L17*L22*L23
75 L17*L22*-OHD; 163 L17*L22*DROP_OCQ_Y; 3 L17*L29*L34; 2 L17*L32*L34
14 L17*+OCF*TY_Q_; 753 L17*DROP_OCP_Y*DROP_OCP_Y; 305 L17*DROP_OCP_Y*RY_P; 23 L17*DROP_OCP_Y*TX_Q_
28 L17*DROP_OCP_Y*TY_Q_; 249 L17*DROP_OCQ_Y*DROP_OCQ_Y; 448 L18*L18*RX_P; 59 L18*L21*L23
27 L18*L31*RY_P; 5 L18*TY_Q_*TY_Q_; 28 L19*L19*TX_Q_; 24 L19*L23*L23
98 L19*L23*L31; 5 L19*L28*TY_Q_; 5 L21*L22*L31; 15 L21*L23*L30
20 L21*L23*L31; 9 L21*L23*L33; 24 L21*L23*RX_P; 48 L23*L28*L31
18 L23*RY_P*TY_Q_; 1 L28*+OCF*DROP_OCP_Y; 78 L28*RX_P*DROP_OCQ_Y; 315 RX_P*TY_Q_*TY_Q_
62 KLOW*RY_P; 63 KLOW*TY_Q_; 3 +HCF*L17; 2 +HDF*L34
83 +OYZ*L4; 52 +OYZ*L18; 1 +OYZ*L20; 150 +OYZ*L22
38 +OYZ*L31; 9 +OYZ*L33; 86 -HCY*L14; 3 -HCY*L20
266 -HCY*L22; 10 -HCY*+OCF; 61 -HCY*DROP_OCP_Y; 92 -OHZ*L22
3 -OHZ*TX_Q_; 5 +HCP*L17; 2 -HFP*TY_Q_; 5 -CDP*L1
40 -CDP*L13; 57 -CDP*L14; 45 -CDP*L16; 101 -CDP*L20
422 -CDP*L22; 51 -CDP*C_OCF_Y; 277 -CDP*DROP_OCP_Y; 31 -CDP*DROP_OCQ_Y
217 -CDP*TY_Q_; 89 -CYP*L12; 40 -CZP*L17; 40 +DZP*L17
11 -HFQ*L16; 127 -HFQ*L22; 24 -DFQ*L13; 2 -DFQ*L14
27 -DFQ*L22; 35 -DFQ*DROP_OCQ_Y; 2 +FZQ*L5; 71 -DPQ*L5
28 -DPQ*L19; 100 -DPQ*RX_P; 86 +CYZ*L0; 10 +CYZ*L4
154 +CYZ*L12; 145 +CYZ*L14; 76 +CYZ*L16; 44 +CYZ*L19
3 +CYZ*L20; 566 +CYZ*L22; 145 +CYZ*L36; 10 +CYZ*RX_P
7 +OYP*L2; 32 +OYP*L8; 96 +OYP*L19; 194 +OYP*L22
61 +OYP*L34; 47 +OYP*C_OCF_Y; 59 +CPQ*TY_Q_; 32 -YZP*L31
36 TPX_Q_*L4; 15 TPX_Q_*L18; 2 Q_OCPZ_Y*L1; 43 Q_OCPZ_Y*L3
52 Q_OCPZ_Y*L31; 11 Q_HCQF_R*L17
```

Upper bound: `-2066427093/1000000000`.

### Leaf UTLmm

Assumptions: `-CYZ -OYP`.

```c1top-geometry
P OHFPQ -OFP
P OHYZP -OZP
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FODPQ +FPQ
P FODPR -FPR
P YOCZP -YZP
P YHCDZ +YDZ
P YHCFZ +YFZ
P YHCZQ -YZQ
P YHCZR -YZR
P YHFQR +YQR
P ZHFQR +ZQR
P POHFY +PFY
P POHFZ +PFZ
P POHFQ -PHQ
P POHYQ -PYQ
P POHYR -PYR
P POHZQ -PZQ
P POHZR -PZR
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP YZ 0 lower 694/907
T OHP YZ 8 lower 694/885
```

```c1top-box
h 153/200 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 907/1000
q 93/1000 907/1000
l 27/50 1
m 129/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
272 L0*L3*L4; 18 L0*L6*L17; 631 L0*L12*L21; 20 L0*L12*L28
490 L0*L12*TX_Q_; 2270 L0*L12*LY_R; 42 L0*L17*L18; 35 L0*L18*L30
105 L0*L23*L24; 748 L0*L27*L33; 250 L0*L27*L34; 3 L0*L31*TY_Q_
22 L1*L1*L11; 525 L1*L1*L21; 727 L1*L1*TX_Q_; 250 L1*L1*LY_R
421 L1*L3*L30; 32 L1*L7*L29; 1236 L1*L8*L14; 139 L1*L8*L17
23 L1*L8*TX_Q_; 17 L1*L11*TX_Q_; 268 L1*L12*L32; 1034 L1*L14*L24
15 L1*L14*L29; 313 L1*L15*L34; 515 L1*L16*L23; 97 L1*L17*TX_Q_
766 L1*L21*L21; 919 L1*L21*L24; 918 L1*L21*TX_Q_; 83 L1*L24*L30
727 L1*L27*L29; 243 L1*L30*L30; 22 L1*L34*L35; 316 L2*L3*L4
179 L2*L5*L18; 4 L2*L10*L21; 15 L2*L10*L28; 621 L2*L17*L23
180 L2*L17*L28; 397 L2*L18*L28; 275 L2*L18*TY_Q_; 97 L2*L21*L28
175 L2*L21*TY_Q_; 5 L2*L22*L30; 297 L2*L27*TY_Q_; 80 L2*TY_Q_*TY_Q_
447 L3*L3*L14; 171 L3*L3*L32; 141 L3*L4*L6; 23 L3*L4*L14
460 L3*L4*L17; 207 L3*L4*L19; 326 L3*L4*L20; 123 L3*L4*L23
122 L3*L4*L28; 7 L3*L4*L30; 11 L3*L4*L32; 1 L3*L4*L35
5 L3*L4*LX_R; 121 L3*L6*L27; 88 L3*L8*L14; 952 L3*L8*L32
327 L3*L10*L16; 4 L3*L11*TX_Q_; 715 L3*L12*L14; 2 L3*L14*L21
1 L3*L14*L24; 47 L3*L16*L19; 333 L3*L17*L32; 75 L3*L17*L34
308 L3*L18*L21; 38 L3*L18*L24; 244 L3*L18*L30; 184 L3*L20*L27
15 L3*L23*L34; 252 L3*L24*L27; 84 L3*L24*L32; 39 L3*L27*L34
252 L3*L27*LX_R; 3 L3*L29*L34; 148 L3*L31*L34; 186 L4*L4*TX_Q_
2 L4*L12*L25; 1015 L4*L16*TX_Q_; 107 L4*L22*L27; 107 L4*L23*L27
165 L4*L23*TX_Q_; 22 L4*TX_Q_*TX_Q_; 5 L5*L17*L25; 343 L5*L21*L21
7 L5*L21*L30; 733 L6*L8*L27; 713 L6*L9*L27; 3 L6*L10*TY_Q_
14 L6*L18*L21; 244 L6*L21*TY_Q_; 120 L6*L22*L27; 591 L6*L27*L29
218 L6*L27*L32; 561 L6*L27*-OHD; 376 L7*L7*L23; 15 L7*L10*L14
290 L7*L12*L27; 2 L7*L14*L23; 31 L7*L14*L24; 148 L7*L21*L23
7 L7*L23*L23; 434 L7*L23*L24; 206 L7*L23*L29; 438 L8*L12*L35
368 L8*L14*L17; 8 L8*L14*TY_Q_; 22 L8*L15*L21; 1 L8*L16*TY_Q_
47 L8*L17*L18; 1 L8*L17*L23; 8 L8*L17*LY_R; 2 L8*L18*L29
999 L8*L18*L30; 22 L9*L22*L27; 330 L9*L34*L34; 22 L10*L12*L21
12 L10*L12*L23; 763 L10*L12*L36; 47 L10*L17*L17; 104 L10*L17*L24
999 L10*L17*L30; 2 L10*L17*TX_Q_; 18 L10*L21*L34; 202 L10*L24*L27
202 L10*L27*LX_R; 133 L12*L14*L35; 26 L12*L15*L22; 229 L12*L17*L32
262 L12*L18*L32; 118 L12*L21*L27; 2 L12*L23*L29; 26 L12*L23*L34
22 L12*L23*LY_R; 178 L12*L24*L34; 83 L12*L27*L29; 291 L12*L27*L30
303 L12*L27*L34; 2123 L12*L27*LY_R; 20 L12*L28*LY_R; 32 L14*L14*L17
39 L14*L17*L23; 23 L14*L18*L21; 116 L14*L21*L24; 13 L14*L21*L28
153 L14*L24*L30; 1207 L14*L24*LY_R; 250 L14*L27*L34; 15 L14*L32*TX_Q_
32 L15*L15*L16; 108 L15*L16*L35; 15 L15*L16*TY_Q_; 22 L15*L27*L29
22 L15*L34*L35; 194 L16*L27*TX_Q_; 31 L16*L34*L35; 28 L17*L17*L26
245 L17*L23*L23; 194 L17*L23*L24; 15 L17*L24*LY_R; 8 L17*L27*L30
245 L18*L21*L23; 460 L18*L21*L28; 317 L20*L26*L27; 398 L21*L21*L27
25 L21*L21*L28; 221 L21*L23*L24; 7 L21*L23*L27; 140 L21*L23*L29
398 L21*L24*L27; 319 L21*L27*L28; 56 L21*L27*L32; 579 L21*L27*LX_R
394 L21*L27*LY_R; 203 L21*L28*L28; 7 L23*L23*L24; 58 L23*L24*L24
22 L23*L24*L28; 184 L23*L24*L29; 36 L23*L25*L27; 34 L23*L27*L30
181 L24*L25*L27; 916 L24*L27*L34; 41 L24*L27*TY_Q_; 2 L24*L36*TY_Q_
240 L24*TX_Q_*LY_R; 15 L25*L27*DROP_OHP_YZ; 181 L25*L27*LX_R; 18 L27*L28*L29
41 L27*L28*LX_R; 58 L27*L34*TX_Q_; 250 L27*L36*L36; 28 L27*DROP_OHP_YZ*DROP_OHP_YZ
104 L34*L34*L34; 177 TX_Q_*TX_Q_*LY_R; 287 KLOW*L12; 3 CENT*L28
495 -OHF*L27; 131 +CDF*L3; 757 +OYZ*L8; 56 +OYZ*L27
306 -HYZ*L0; 110 -HYZ*L6; 1557 -HYZ*L8; 48 -HYZ*L12
896 -HYZ*L14; 304 -HYZ*L17; 227 -HYZ*L18; 318 -HYZ*L21
4 -HYZ*L22; 1314 -HYZ*L31; 342 -HYZ*TX_Q_; 229 -HYZ*LX_R
416 -OHZ*L2; 7 -OHZ*L22; 767 -OHZ*L27; 589 -OHZ*L32
40 -OHZ*L33; 49 -OHZ*TX_Q_; 161 -OHZ*LX_R; 18 +CDZ*L27
20 +HCP*L2; 184 +HCP*L4; 687 +HCP*L8; 97 +HCP*L21
54 +HCP*L23; 34 +HCP*L24; 244 +HCP*L30; 200 +CDP*L0
1 +CDP*L8; 184 +CDP*L14; 345 +CDP*L24; 245 +CDP*L28
146 +CDP*L34; 447 +CDP*+OCF; 1170 +CDP*TX_Q_; 215 +CDP*TY_Q_
349 +CDP*LX_R; 53 +DFP*L1; 301 +DFP*L3; 422 -CYP*L2
4 -CYP*L14; 47 -CYP*L17; 5 -CYP*L23; 5 -CYP*L29
2 -CYP*TX_Q_; 258 +CDQ*L4; 102 +CDQ*L7; 8 +CDQ*L8
336 +CDQ*L17; 36 +CDQ*L21; 80 +CDQ*L22; 297 +CDQ*L27
3 +CDQ*L35; 7 +CDQ*L36; 55 -DFQ*L1; 186 -DFQ*L4
614 -DFQ*L6; 3 -DFQ*L10; 180 -DFQ*L16; 311 -DFQ*L21
637 -DFQ*L29; 72 -CFQ*L1; 1171 -OHR*L27; 954 +HFR*L0
209 +HFR*L7; 307 +HFR*L13; 564 +HFR*L21; 205 +HFR*L22
2 +HFR*L28; 37 +HFR*L30; 17 +HFR*L35; 1089 +HFR*-OHD
35 +HFR*+OCF; 249 +HZR*L3; 2 +HZR*L4; 31 +HZR*L7
291 +HZR*L8; 196 +HZR*L14; 116 +HZR*L21; 331 +HZR*L33
8 +HZR*DROP_OHP_YZ; 2045 +HZR*LY_R; 77 -FZR*L27; 22 -FQR*L5
508 -FQR*L7; 135 -FQR*L12; 2 -FQR*L14; 194 -FQR*L17
221 -FQR*L21; 7 -FQR*L23; 58 -FQR*L24; 51 -FQR*L29
133 -FQR*L33; 77 -FQR*LY_R; 599 -CYZ*L3; 952 -CYZ*L8
715 -CYZ*L12; 35 -CYZ*L18; 1557 -CYZ*L20; 1559 -CYZ*L21
1 -CYZ*L23; 87 -CYZ*L24; 17 -CYZ*-OHD; 75 -CYZ*DROP_OHP_YZ
8 -CYZ*TY_Q_; 3 -CYZ*LX_R; 229 -OYP*L14; 5 -OYP*L22
117 -OYP*L24; 999 -OYP*L30; 372 -OYP*L34; 402 -OYP*-OHD
262 -OYP*+OCF; 5 -OYP*LX_R; 444 -DPQ*L2; 14 -DPQ*L6
2 -DPQ*L8; 23 -DPQ*L14; 245 -DPQ*L23; 460 -DPQ*L28
512 +FPQ*L3; 8 -YZP*L24; 2 -YZQ*L1; 56 -YZQ*L27
248 C_OHP_YZ*L3; 59 C_OHP_YZ*L6; 177 C_OHP_YZ*L12; 42 C_OHP_YZ*L18
742 C_OHP_YZ*L35; 56 C_OHP_YZ*LX_R; 4 Q_CDQY_P*L15
```

Upper bound: `-3279780203/1000000000`.

### Leaf UTLmpmmm

Assumptions: `-CYZ +OYP -OZP -OZQ -OZR`.

```c1top-geometry
C OHR Z Y +ROY 3239749/6167600
P OHDZQ +ODZ
P OHFZR +OFZ
P OHFPQ -OFP
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOHYZ -FYZ
P FOHZP +FZP
P FODPQ +FPQ
P FODPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOFPR +ZPR
P ZOFQR +ZQR
P POHFQ -PHQ
P POHZQ -PZQ
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ Y 11 lower 279/1000
T OHR Z 12 lower 93/295
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 279/1000 1
r 63/200 297/500
t 843/1000 1
```

```c1top-sum
137 L0*L3*L27; 17 L0*L4*L27; 3 L0*L4*LX_R; 2 L0*L10*L21
895 L0*L27*TX_Q_; 59 L1*L1*L10; 2 L1*L1*L24; 205 L1*L6*L27
204 L1*L7*L8; 1 L1*L7*L23; 1631 L1*L7*L24; 303 L1*L7*L29
47 L1*L10*L10; 197 L1*L10*L24; 12 L1*L10*L31; 332 L1*L11*L12
1 L1*L12*L22; 40 L1*L12*TX_Q_; 591 L1*L21*L21; 162 L1*L21*L24
40 L1*L21*L31; 3 L1*L21*TY_Q_; 1429 L1*L24*L24; 900 L1*L24*L29
42 L1*L27*L35; 81 L1*L29*L31; 34 L1*L31*L31; 291 L2*L3*L10
209 L2*L10*TX_Q_; 2 L2*L12*L23; 1 L2*L12*L27; 43 L2*L21*L28
84 L2*L22*L29; 82 L2*L27*L32; 465 L2*L27*DROP_OHQ_Z; 32 L2*L29*LY_R
242 L3*L3*L4; 95 L3*L4*L6; 406 L3*L4*L8; 143 L3*L4*L23
292 L3*L4*LX_R; 26 L3*L8*L8; 155 L3*L10*L12; 49 L3*L10*L21
10 L3*L10*L31; 6 L3*L12*L34; 172 L3*L23*L23; 91 L3*L23*L29
262 L4*L4*TX_Q_; 219 L4*L8*TX_Q_; 69 L4*L14*L27; 78 L4*L20*L27
50 L4*L23*L24; 371 L4*L23*TX_Q_; 243 L4*L27*DROP_OHP_Z; 9 L4*L27*TY_Q_
54 L4*L27*DROP_OHR_Z; 54 L4*L27*LX_R; 2 L4*L30*TX_Q_; 55 L4*LX_R*LX_R
55 L5*L8*L29; 9 L5*L22*L27; 142 L6*L10*L27; 651 L6*L21*L27
890 L6*L22*L27; 304 L6*L27*L29; 154 L6*L27*L33; 1143 L6*L27*DROP_OHR_Z
13 L7*L7*L8; 32 L7*L7*L34; 26 L7*L9*L29; 60 L7*L9*L34
153 L7*L12*L26; 182 L7*L21*L23; 226 L7*L21*L27; 310 L7*L23*L24
340 L7*L23*L29; 270 L7*L24*L34; 83 L7*L27*L31; 202 L7*L27*LX_R
107 L7*L31*L34; 560 L7*TX_Q_*LY_R; 147 L8*L8*L27; 445 L8*L12*LY_R
13 L8*L21*TY_Q_; 59 L8*L27*L27; 60 L8*L27*L28; 82 L8*L27*L31
13 L8*L29*L29; 4 L9*L9*L34; 41 L9*L21*L34; 120 L9*L24*L34
64 L9*L27*L30; 13 L9*L31*L31; 93 L9*L31*L34; 12 L10*L10*L15
59 L10*L11*L27; 449 L10*L12*L25; 26 L10*L12*L34; 12 L10*L12*L35
51 L10*L24*L27; 511 L10*L24*L30; 511 L10*L24*L31; 312 L10*L24*L36
142 L10*L29*L36; 197 L10*L29*LY_R; 59 L10*L32*LY_R; 12 L10*L34*L35
142 L10*L34*LX_R; 81 L11*L12*L21; 44 L11*L12*L24; 63 L12*L15*+OCF
88 L12*L21*LY_R; 2 L12*L22*L29; 69 L12*L27*TY_Q_; 271 L12*L29*DROP_OCR_Y
14 L12*LY_R*LY_R; 146 L13*L27*L27; 170 L14*L27*L31; 69 L14*L27*TY_Q_
32 L14*L29*L29; 141 L15*L24*L24; 243 L16*L27*TY_Q_; 243 L17*L22*L27
624 L17*L27*DROP_OHR_Z; 84 L20*L27*DROP_OHR_Z; 3 L21*L22*L28; 35 L21*L23*L24
9 L21*L23*L27; 160 L21*L23*DROP_OHR_Z; 119 L21*L27*L29; 2 L21*L28*L32
43 L21*L29*LY_R; 40 L21*L31*L34; 13 L21*L31*TY_Q_; 88 L21*L34*DROP_OHR_Z
591 L21*TX_Q_*LY_R; 68 L21*TY_Q_*TY_Q_; 396 L21*TY_Q_*LX_R; 69 L22*L27*L36
9 L23*L23*L24; 68 L23*L23*TX_Q_; 900 L23*L27*LX_R; 55 L24*L24*TY_Q_
51 L24*L27*L30; 624 L24*L27*DROP_OHP_Z; 298 L24*L29*TY_Q_; 816 L24*L31*L34
9 L26*L27*L27; 38 L26*L27*+OCF; 50 L26*L29*L29; 202 L27*L27*L29
17 L27*L27*L35; 897 L27*L27*TX_Q_; 9 L27*L28*L28; 69 L27*L28*L30
129 L27*L28*L31; 82 L27*L29*L31; 42 L27*L30*LY_R; 17 L27*L32*LY_R
51 L27*L35*DROP_OHR_Z; 90 L27*L36*DROP_OHR_Z; 104 L27*+OCF*DROP_OHR_Z; 104 L27*C_OCF_Y*LX_R
9 L27*LY_R*LY_R; 148 L31*L31*L34; 2 TX_Q_*LY_R*LY_R; 209 KLOW*L10
226 KLOW*L25; 608 KLOW*LX_R; 57 CENT*L13; 40 CENT*TX_Q_
83 CENT*LX_R; 210 -HYZ*L9; 81 -HYZ*L21; 130 -HYZ*L25
167 -HYZ*L29; 72 -HYZ*C_OCF_Y; 983 -HYZ*DROP_OHR_Z; 12 +OCY*L10
76 +OCY*L21; 108 +OCY*L27; 416 +CDY*L3; 45 +CDY*L8
55 +CDY*L20; 96 +CDY*L24; 166 +CDY*TX_Q_; 14 -OHZ*L1
164 -OHZ*L7; 310 -OHZ*L20; 399 -OHZ*L21; 1 -OHZ*L22
650 -OHZ*L30; 358 -OHZ*L35; 244 -OHZ*C_OCF_Y; 771 -OHZ*DROP_OHR_Z
30 +CDQ*L6; 400 +CDQ*L17; 13 +CDQ*L21; 201 +CDQ*L23
90 +CDQ*L25; 175 +CDQ*+OCF; 400 +CDQ*DROP_OHP_Z; 29 +CDQ*TY_Q_
90 -DFQ*L2; 262 -DFQ*L4; 73 -DFQ*L6; 41 -DFQ*L21
59 -DFQ*L23; 2 -DFQ*L30; 2 -DFQ*L35; 54 -DFQ*DROP_OHQ_Z
306 -DFQ*LX_R; 1 -DFQ*LY_R; 74 +HCR*L27; 3 +HFR*L4
118 +HFR*L7; 165 +HFR*L8; 338 +HFR*L10; 74 +HFR*L21
900 +HFR*L22; 1429 +HFR*L24; 714 +HFR*L29; 204 +HFR*+OCF
200 +HFR*DROP_OCR_Y; 2 +HFR*LY_R; 388 -FQR*L3; 50 -FQR*L4
286 -FQR*L7; 591 -FQR*L21; 9 -FQR*L23; 84 -FQR*L25
900 -FQR*LY_R; 115 -CYZ*L2; 34 -CYZ*L9; 12 -CYZ*L10
463 -CYZ*L24; 170 -CYZ*DROP_OCR_Y; 381 -OZR*L8; 170 -OZR*L10
443 -OZR*L21; 270 -OZR*L29; 354 -OZR*DROP_OHQ_Z; 141 -OZR*DROP_OHR_Z
128 C_OHR_Z*L27; 2 TPY_Q_*L10; 434 TPY_Q_*L29; 117 TPY_Q_*DROP_OHR_Z
129 Q_OCDQ_YP*L27; 90 Q_OCRZ_Y*L27
```

Upper bound: `-1342504803/1000000000`.

### Leaf UTLmpmmpmmmmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ -CPR -HDP -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYQ +OYQ
P OHDYR +OYR
P OHDZQ +ODZ
P OHFZP -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFPR +CFP
P COFQR +CQR
P DOHYZ -DYZ
P DOFQR +DQR
P DHCPQ -DPQ
P DHCPR -DPR
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHFP -ZFP
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POFQR +PQR
M OCFPYZ -1
M OFCPZY 1
M COFZYP 1
M CFOZPY -1
M FOCYZP -1
M FCOYPZ 1
M OCRPYZ -1
M ORCPZY 1
M CORZYP 1
M CROZPY -1
M ROCYZP -1
M RCOYPZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCF YZP 1 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
14 L0*L0*L25; 64 L0*L0*LX_R; 5 L0*L3*L25; 12 L0*L6*L19
125 L0*L6*L30; 4 L0*L17*L31; 2 L0*L17*TX_Q_; 29 L0*L18*L30
3 L0*L20*LX_R; 22 L0*L22*LX_R; 12 L0*L25*L34; 61 L0*L31*LX_R
17 L1*L1*L3; 1 L1*L3*TX_Q_; 154 L1*L8*L24; 24 L1*L10*L13
2 L1*L14*L17; 1 L1*L14*L21; 4 L1*L16*L30; 66 L1*L17*L27
1 L1*L23*L24; 118 L1*L24*L30; 5 L1*L24*DROP_OHP_Z; 31 L1*L24*LY_R
52 L1*L27*DROP_OCR_YZP; 103 L1*L30*L30; 95 L1*L30*LY_R; 36 L2*L6*L27
1 L2*L21*TY_Q_; 7 L3*L3*L4; 1 L3*L3*DROP_OCR_YZP; 2 L3*L4*L33
17 L3*L6*L32; 85 L3*L8*L14; 77 L3*L8*L19; 2 L3*L9*TY_Q_
4 L3*L10*L24; 41 L3*L12*L18; 20 L3*L12*LY_R; 3 L3*L13*L32
3 L3*L13*C_OHD_Z; 12 L3*L14*L33; 11 L3*L14*DROP_OHP_Z; 1 L3*L14*TX_Q_
105 L3*L14*DROP_OCR_YZP; 1 L3*L15*L21; 18 L3*L15*L32; 6 L3*L17*L28
14 L3*L17*L34; 5 L3*L17*DROP_OHQ_Z; 114 L3*L17*DROP_OCR_YZP; 74 L3*L18*L30
7 L3*L18*LX_R; 7 L3*L19*L24; 4 L3*L20*L26; 5 L3*L20*DROP_OHP_Z
2 L3*L22*-OHD; 2 L3*L23*L31; 5 L3*L23*DROP_OCR_YZP; 64 L3*L26*DROP_OHP_Z
40 L3*L27*C_OHD_Z; 1 L3*L28*L29; 2 L3*L28*L30; 165 L3*L30*-OHD
9 L3*L31*LY_R; 27 L3*L35*LY_R; 36 L3*DROP_OCR_YZP*DROP_OCR_YZP; 1 L4*L6*TY_Q_
1 L4*L10*L23; 2 L4*L17*L27; 3 L4*L27*L33; 2 L5*L27*TX_Q_
114 L6*L8*L27; 1 L6*L9*L18; 1 L6*L9*L22; 4 L6*L10*L30
1 L6*L11*L18; 7 L6*L14*L17; 3 L6*L14*L36; 11 L6*L16*L27
1 L6*L18*L21; 82 L6*L27*L30; 41 L6*L27*LY_R; 7 L7*L14*L24
209 L8*L10*L13; 3 L8*L10*L25; 260 L8*L10*L30; 108 L8*L10*L31
96 L8*L14*LY_R; 41 L8*L15*L27; 35 L8*L16*L27; 79 L8*L27*L34
14 L9*L10*L34; 3 L9*L27*TX_Q_; 2 L10*L12*L21; 14 L10*L12*L35
32 L10*L13*LX_R; 23 L10*L17*L26; 15 L10*L21*L26; 2 L10*L21*DROP_OHQ_Z
2 L10*L23*L30; 4 L10*L23*DROP_OHQ_Z; 1 L10*L23*LY_R; 18 L10*L29*-OHD
152 L10*L30*L31; 1 L10*L30*DROP_OHP_Z; 2 L10*L30*TY_Q_; 161 L10*L30*DROP_OCR_YZP
161 L10*L31*DROP_OCR_YZP; 3 L10*L31*LX_R; 5 L10*L33*DROP_OHQ_Z; 4 L10*L35*C_OHD_Z
1 L10*L35*DROP_OHP_Z; 106 L10*L36*DROP_OCR_YZP; 28 L10*+OCF*LX_R; 28 L10*DROP_OHP_Z*LY_R
2 L10*DROP_OHQ_Z*TX_Q_; 21 L12*L21*L27; 30 L12*L27*TX_Q_; 3 L13*L27*L28
2 L14*L21*L33; 88 L14*L24*L30; 20 L14*L24*L31; 12 L14*L24*L35
29 L14*L27*DROP_OHP_Z; 3 L14*L30*DROP_OHQ_Z; 88 L14*L30*LX_R; 35 L16*L27*L31
24 L16*L27*L32; 41 L17*L27*C_OHD_Z; 2 L18*L20*L31; 3 L18*L20*LX_R
46 L18*L24*L27; 101 L18*L27*L30; 73 L19*L27*L30; 1 L19*L30*L30
3 L20*L20*L27; 17 L21*L27*-OHD; 3 L21*L27*DROP_OHP_Z; 3 L21*L27*TX_Q_
14 L22*L24*L27; 14 L22*L27*LX_R; 1 L22*L28*L30; 1 L22*L28*L35
10 L22*L32*LX_R; 52 L26*L27*-OHD; 46 L27*L27*DROP_OHP_Z; 1 L27*L27*DROP_OHQ_Z
3 L27*L29*L32; 36 L27*L30*+OCF; 12 L27*L30*DROP_OHQ_Z; 5 L27*L35*TX_Q_
3 L30*TX_Q_*LY_R; 2 KLOW*L22; 2 CENT*L14; 103 CENT*L30
14 CENT*TX_Q_; 79 CENT*DROP_OCR_YZP; 200 -HYZ*L8; 11 -HYZ*L21
4 -HYZ*L24; 200 -HYZ*L31; 2 -HYZ*DROP_OHP_Z; 95 -HYZ*LY_R
79 +OCY*L27; 33 +OCY*L31; 77 -HFZ*L27; 18 +HCP*L14
1 +HCP*L19; 14 +HCP*L25; 8 +HCP*L33; 2 +HCP*L35
32 +HCP*C_OHD_Z; 2 +HCP*DROP_OHQ_Z; 49 +HCP*LY_R; 6 +CDP*L3
1 -CYP*L31; 16 -CYP*L34; 2 +HZP*L10; 2 +OCQ*L3
14 -HFQ*L27; 5 +CDQ*DROP_OCR_YZP; 1 -DFQ*L0; 1 -DFQ*L2
1 -DFQ*L4; 8 +OCR*L3; 137 +HFR*L8; 12 +HFR*L15
96 +HFR*L30; 25 +HFR*L31; 31 +HFR*L32; 19 +HFR*L33
27 +HFR*-OHD; 19 +HFR*DROP_OHP_Z; 3 +HFR*DROP_OHQ_Z; 43 +HFR*DROP_OCR_YZP
2 +DFR*L27; 13 -FZR*L3; 22 -FQR*L0; 1 -FQR*L3
9 -FQR*L32; 1 -FQR*L35; 47 -CYZ*L3; 331 -CYZ*L8
1 -CYZ*L17; 2 -CYZ*L19; 79 -CYZ*+OCF; 18 -CYZ*DROP_OHQ_Z
184 -CYZ*DROP_OCR_YZP; 36 -CYZ*LX_R; 1 -OZP*L8; 14 -OZP*L24
29 -OZP*LY_R; 1 -OZQ*L1; 5 -OZQ*L8; 29 +OZR*L3
7 -CPR*L6; 21 -CPR*L11; 29 -CPR*L21; 15 -CPR*+OCF
33 -CPR*DROP_OHQ_Z; 48 -CPR*DROP_OCR_YZP; 57 -OFZ*L6; 65 -OFZ*L8
18 -OFZ*L18; 64 -OFZ*L29; 91 -OFZ*L30; 3 -OFZ*L34
8 -OFZ*-OHD; 7 -OFZ*DROP_OHP_Z; 2 -OFZ*DROP_OHQ_Z; 122 -OFZ*DROP_OCR_YZP
7 -OFZ*LX_R; 1 +HQR*L3; 2 -DYZ*L10; 2 -DPR*L27
1 +ZPQ*L12; 18 +FYP*L34; 1 +FYP*L35; 19 +FYP*-OHD
2 +FYP*DROP_OHQ_Z; 49 +FYP*LY_R; 20 C_OCZ_Y*L3; 115 C_OCZ_Y*L30
14 C_OFP_Z*L24; 12 C_HCR_P*L27; 24 Q_OYPH_Z*L3; 2 Q_OCDQ_YP*L27
14 Q_OCPZ_Y*LX_R; 1 Q_ODQR_Z*L27; 21 Q_CFRY_P*L18; 12 Q_CRZY_P*L10
26 M_CFOZPY_-1_3*L3; 5 LEFTSUP
```

Upper bound: `-36710829/250000000`.

### Leaf UTLmpmmpmmmmpm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ -CPR -HDP -ODY +OFZ -ODP`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDFP -OFP
P OHDYQ +OYQ
P OHDYR +OYR
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFPR +CFP
P COFQR +CQR
P DOHYZ -DYZ
P DOHZP +DZP
P DOCPQ -DPQ
P DOCPR -DPR
P DOFQR +DQR
P FOHYZ -FYZ
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P POFQR +PQR
M OCRPYZ -1
M ORCPZY 1
M CORZYP 1
M CROZPY -1
M ROCYZP -1
M RCOYPZ 1
```

```c1top-bounds
T OCD YP 1 lower 6903218/8301179
T OCD YP 2 lower 347/500
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 71/102
X Q - 10 lower 26257/35394
Y Q - 11 lower 8549039/9947000
```

```c1top-box
h 347/500 177/200
c 831/1000 1
d 347/500 167/200
f 437/1000 697/1000
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 741/1000 1
m 859/1000 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
11 L0*L0*L3; 9 L0*L3*L16; 12 L0*L3*L27; 2 L0*L6*L35
7 L0*L7*L14; 34 L0*L7*LY_R; 9 L0*L16*L21; 22 L0*L16*L27
10 L0*L23*L29; 20 L0*L24*L27; 1 L0*L29*L30; 3 L0*L29*L31
1 L0*L32*L35; 2 L0*L34*DROP_OHP_Z; 18 L0*DROP_OHP_Z*LX_R; 8 L0*TX_Q_*LX_R
3 L1*L3*L30; 30 L1*L6*L28; 1 L1*L10*L10; 5 L1*L13*L24
1 L2*L7*L32; 1 L2*L10*L27; 9 L2*L22*L27; 11 L2*L28*LY_R
8 L3*L4*-OHD; 38 L3*L4*DROP_OHP_Z; 33 L3*L4*DROP_OCQ_YP; 38 L3*L4*DROP_OCR_YZP
2 L3*L9*L19; 7 L3*L12*L26; 8 L3*L13*L23; 4 L3*L18*TX_Q_
15 L3*L18*DROP_OCR_YZP; 4 L3*L19*L21; 9 L3*L19*L23; 1 L3*L23*L34
37 L3*L23*DROP_OHP_Z; 59 L3*L23*DROP_OCR_YZP; 2 L3*L25*DROP_OCR_YZP; 2 L3*L26*L31
4 L3*L26*C_OCF_YP; 1 L3*L36*LY_R; 14 L4*L6*L27; 9 L4*L7*L14
38 L4*L7*L26; 153 L4*L7*DROP_OCR_YZP; 1 L4*L8*L34; 1 L4*L9*L16
2 L4*L9*C_OHD_Z; 9 L4*L18*L21; 5 L4*L18*L25; 14 L4*L23*C_OHD_Z
2 L4*L25*DROP_OHQ_Z; 18 L4*L25*TX_Q_; 32 L4*DROP_OHP_Z*TX_Q_; 1 L5*L7*L12
4 L5*L8*L24; 2 L5*L10*L30; 1 L5*L24*L30; 2 L6*L6*L32
18 L6*L6*TY_Q_; 1 L6*L12*L35; 1 L6*L21*L22; 1 L6*L21*LX_R
20 L6*L22*L25; 33 L6*L22*TY_Q_; 43 L6*L22*LY_R; 67 L6*L27*DROP_OHP_Z
3 L6*L28*+OCF; 1 L7*L7*TX_Q_; 3 L7*L7*DROP_OCR_YZP; 3 L7*L10*L12
1 L7*L14*L24; 4 L7*L18*L24; 1 L7*L20*L24; 19 L7*L23*TX_Q_
223 L7*L23*DROP_OCR_YZP; 195 L7*L26*DROP_OCR_YZP; 1 L7*L27*L30; 1 L8*L10*L31
1 L8*L27*L30; 1 L9*L12*L32; 5 L9*L26*DROP_OHP_Z; 1 L10*L12*L13
1 L10*L24*L32; 2 L10*L28*L31; 1 L10*L30*L30; 2 L10*LX_R*LX_R
2 L11*L24*L24; 1 L12*L16*L27; 3 L12*L19*L28; 38 L12*L22*LY_R
15 L12*L23*L26; 1 L12*L28*LX_R; 1 L12*L31*DROP_OCR_YZP; 16 L13*L23*L28
1 L13*LY_R*LY_R; 2 L14*L16*L21; 3 L14*L19*L24; 32 L14*L23*L24
3 L14*L28*DROP_OHP_Z; 2 L16*L24*L27; 4 L16*L27*L31; 3 L16*L28*L29
2 L17*L20*L34; 10 L17*L27*L28; 4 L17*L28*C_OCF_YP; 3 L18*L21*L24
1 L18*L33*LX_R; 5 L21*L23*L29; 46 L21*L23*DROP_OCR_YZP; 10 L21*L26*L28
59 L21*L27*DROP_OHP_Z; 26 L21*L27*TY_Q_; 3 L21*C_OCF_YP*LY_R; 56 L22*L23*L24
33 L22*C_OHD_Z*LX_R; 56 L23*L24*DROP_OHP_Z; 16 L23*L24*TY_Q_; 183 L23*L24*DROP_OCR_YZP
6 L24*L28*L31; 1 L24*L33*LY_R; 5 L24*L34*LY_R; 5 L25*L28*L34
1 L26*L31*L35; 6 L28*L29*LX_R; 1 L28*L31*L34; 4 L31*L34*LX_R
9 L34*TY_Q_*LX_R; 7 C_OCF_YP*TY_Q_*LX_R; 10 KLOW*TY_Q_; 1 CENT*L10
3 CENT*LX_R; 5 +OYZ*L4; 4 -HYZ*L6; 2 -HYZ*L17
2 -HYZ*-OHD; 2 -HYZ*DROP_OHP_Z; 1 -HYZ*DROP_OCR_YZP; 9 -OHZ*L27
6 +HCP*L1; 7 +HCP*L5; 7 +HCP*+OCF; 11 +HCP*TX_Q_
22 +HCP*DROP_OCR_YZP; 11 +HCP*LX_R; 2 -CYP*L7; 1 -CYP*L12
9 -HFQ*L3; 12 +CDQ*L3; 9 +CDQ*L19; 5 +CDQ*L20
8 +CDQ*L25; 1 +CDQ*L34; 12 +CDQ*+OCF; 37 +CDQ*DROP_OHP_Z
33 +CDQ*DROP_OCQ_YP; 50 +CDQ*DROP_OCR_YZP; 16 -DFQ*+OCF; 35 -DFQ*C_OHD_Z
33 -DFQ*DROP_OHP_Z; 12 -DFQ*DROP_OHQ_Z; 33 -DFQ*DROP_OCQ_YP; 174 -DFQ*DROP_OCR_YZP
12 -DFQ*LX_R; 48 -DFQ*LY_R; 17 -OHR*L1; 17 +HFR*L1
5 +HFR*L30; 2 +HFR*L35; 20 +HFR*-OHD; 15 +HFR*DROP_OHP_Z
11 +HFR*TX_Q_; 2 +HZR*L19; 23 +HZR*L23; 3 +HZR*LY_R
56 -FQR*L1; 8 -FQR*L6; 72 -FQR*L22; 86 -FQR*-OHD
56 -FQR*DROP_OHP_Z; 195 -FQR*DROP_OCR_YZP; 2 +OYP*L1; 1 +OYP*L12
1 -OZP*L24; 1 +OZR*L11; 1 +OZR*L16; 9 +OZR*L27
14 +OZR*C_OHD_Z; 7 +OZR*C_OCF_YP; 7 -CPR*L12; 7 -CPR*L33
13 -CPR*-OHD; 3 -CPR*DROP_OHQ_Z; 3 -CPR*LX_R; 1 +OFZ*L17
5 +OFZ*L29; 7 +OFZ*-OHD; 1 +OFZ*+OCF; 2 +OFZ*DROP_OHP_Z
1 -ODP*L8; 11 -ODP*L20; 4 -ODP*TX_Q_; 14 -ODP*LY_R
2 +ODZ*L24; 3 +HPR*L3; 42 +HQR*L0; 12 +HQR*L26
11 +DQR*L0; 2 -YZP*L4; 16 +ZQR*L4; 1 +YPR*L29
3 C_OHP_Z*L28; 15 C_HCR_P*L1; 5 C_CYR_P*L6; 1 C_CYR_P*L10
1 C_CYR_P*L34; 1 TPX_Q_*L3; 9 TPY_Q_*LY_R; 2 Q_OCRH_YZP*L3
8 Q_OCRH_YZP*L7; 1 Q_OCRH_YZP*L10; 7 Q_OCRH_YZP*L19; 1 Q_OCRH_YZP*L30
14 Q_OCRH_YZP*DROP_OHP_Z; 1 Q_OPDH_Z*L3; 3 Q_OFRH_Z*L21; 63 Q_OFRH_Z*L22
25 Q_OFRH_Z*TY_Q_; 1 Q_OYRH_Z*L3; 3 Q_OYPR_Z*L28; 1 M_OCRPYZ_-1_3*L24
1 M_OCRPYZ_-1_4*L0; 1 M_OCRPYZ_-1_4*L5; 1 M_OCRPYZ_-1_4*LX_R
```

Upper bound: `-1440702967/728000000`.

### Leaf UTLmpmmpmmmmppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ -CPR -HDP -ODY +OFZ +ODP -DZP`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYQ +OYQ
P OHDYR +OYR
P OHFPQ -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFPR +CFP
P COFQR +CQR
P DOHYZ -DYZ
P DOHYP -DYP
P DOHPQ -DPQ
P DOHPR -DPR
P DOFQR +DQR
P FOHYZ -FYZ
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POFQR +PQR
M OCRPYZ -1
M ORCPZY 1
M CORZYP 1
M CROZPY -1
M ROCYZP -1
M RCOYPZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
T OCR YZP 1 lower 823/1000
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
5 L0*L1*L24; 10 L0*L1*L30; 17 L0*L3*L8; 76 L0*L3*L21
2 L0*L4*L29; 12 L0*L5*L30; 19 L0*L7*L7; 19 L0*L10*L17
41 L0*L12*L23; 60 L0*L12*L27; 5 L0*L12*TX_Q_; 13 L0*L14*L29
110 L0*L14*TX_Q_; 9 L0*L17*L30; 22 L0*L18*L31; 4 L0*L24*TY_Q_
42 L0*L26*TX_Q_; 1 L0*L27*L31; 14 L1*L3*L3; 40 L1*L3*L4
20 L1*L3*L9; 4 L1*L3*L19; 21 L1*L3*L27; 3 L1*L3*L34
1 L1*L3*L35; 2 L1*L8*L12; 14 L1*L8*L24; 12 L1*L12*L14
13 L1*L12*L21; 5 L2*L3*L18; 8 L2*L4*L23; 37 L2*L18*L27
18 L2*L27*L27; 9 L2*L27*L35; 16 L3*L3*L11; 21 L3*L3*L14
19 L3*L3*DROP_OCR_YZP; 12 L3*L4*L6; 80 L3*L4*L12; 41 L3*L4*L17
88 L3*L4*TX_Q_; 26 L3*L6*L27; 5 L3*L8*L14; 30 L3*L10*L13
29 L3*L10*L17; 8 L3*L10*L20; 12 L3*L10*-OHD; 2 L3*L10*DROP_OCR_YZP
28 L3*L12*L22; 18 L3*L12*L34; 62 L3*L14*L19; 1 L3*L14*L23
3 L3*L14*L25; 212 L3*L14*L26; 31 L3*L14*DROP_OHQ_Z; 9 L3*L17*L23
10 L3*L17*LY_R; 24 L3*L18*L23; 13 L3*L19*L21; 190 L3*L21*L22
11 L3*L23*L24; 15 L3*L23*L30; 104 L3*L23*TX_Q_; 89 L3*L23*LY_R
29 L3*TX_Q_*LY_R; 7 L4*L4*L21; 29 L4*L4*L30; 7 L4*L4*L31
24 L4*L6*L19; 62 L4*L6*L36; 47 L4*L6*TX_Q_; 12 L4*L7*L18
1 L4*L8*LY_R; 57 L4*L12*L27; 1 L4*L13*L31; 43 L4*L14*TX_Q_
45 L4*L16*L27; 24 L4*L18*TX_Q_; 92 L4*L20*L36; 291 L4*L20*TX_Q_
37 L4*L24*LY_R; 15 L4*L25*L31; 85 L4*TX_Q_*LX_R; 77 L4*TX_Q_*LY_R
79 L5*L14*L24; 101 L6*L6*L27; 33 L6*L6*L34; 13 L6*L10*L25
59 L6*L19*L27; 421 L6*L21*L27; 12 L6*L22*L27; 44 L6*L24*L27
37 L6*L27*L27; 10 L6*L27*L31; 63 L6*L27*L36; 21 L6*L27*DROP_OHP_Z
13 L6*L31*L34; 5 L6*L34*L34; 134 L7*L7*L23; 1 L7*L10*L10
3 L7*L10*L20; 1 L7*L10*L32; 122 L7*L14*L18; 85 L7*L14*L21
244 L7*L23*L24; 73 L7*L23*L29; 26 L7*L26*TX_Q_; 8 L8*L14*L21
27 L8*L14*L27; 3 L8*L21*L27; 19 L8*L27*L27; 22 L10*L12*L19
43 L10*L14*L17; 33 L10*L15*DROP_OHP_Z; 1 L10*L15*TX_Q_; 10 L10*L17*TX_Q_
19 L10*L24*L27; 19 L10*L25*L34; 32 L10*L25*DROP_OHP_Z; 3 L10*L29*L29
3 L10*TX_Q_*LX_R; 18 L12*L13*L27; 405 L12*L18*L27; 38 L12*L18*LX_R
15 L12*L24*L34; 65 L12*L26*TX_Q_; 199 L12*L27*L27; 147 L12*L27*TY_Q_
2 L14*L16*LY_R; 12 L14*L17*L23; 101 L14*L17*L27; 63 L14*L17*TX_Q_
12 L14*L18*L21; 116 L14*L18*L29; 3 L14*L18*L30; 65 L14*L21*L24
4 L14*L21*L28; 199 L14*L24*L27; 66 L14*L24*L28; 3 L14*L24*L30
41 L14*L24*TY_Q_; 33 L14*L27*+OCF; 18 L14*L29*L30; 39 L14*L29*TX_Q_
105 L14*TX_Q_*LY_R; 20 L16*L21*L23; 76 L16*L23*L24; 47 L16*L23*LY_R
4 L16*L26*TX_Q_; 6 L16*L27*L31; 64 L16*L27*L36; 54 L16*TX_Q_*LY_R
56 L17*L27*L27; 7 L17*L27*TY_Q_; 165 L18*L21*L27; 3 L18*L21*L30
26 L18*L24*L30; 1 L18*L24*LY_R; 10 L18*L29*L30; 55 L19*L24*L27
20 L19*TX_Q_*TX_Q_; 44 L20*L24*LY_R; 372 L21*L21*L27; 12 L21*L22*L27
122 L21*L23*L24; 8 L21*L24*L28; 18 L21*L27*DROP_OHP_Z; 234 L22*L27*L27
125 L22*L27*DROP_OHP_Z; 234 L22*L27*DROP_OCR_YZP; 110 L23*L24*L24; 113 L23*L24*TX_Q_
12 L23*L26*TX_Q_; 66 L24*L26*TX_Q_; 24 L24*L27*L27; 24 L24*L27*LY_R
15 L24*L28*L30; 363 L26*TX_Q_*TX_Q_; 43 L27*L27*C_OCF_YP; 3 L27*L35*L36
5 CENT*L2; 13 CENT*L6; 7 TOPCOUNT*L24; 10 -HYZ*L0
13 -HYZ*L4; 2 -HYZ*L18; 118 +OCY*L19; 7 +OCY*L29
43 +OCY*L36; 91 +OCY*DROP_OCR_YZP; 1 -HFZ*L10; 33 +HCP*L9
33 +HCP*L20; 47 +HCP*L23; 3 +HCP*L32; 24 +HCP*L33
15 +HCP*DROP_OHP_Z; 18 +HCP*DROP_OHQ_Z; 54 +HCP*TX_Q_; 64 +HCP*LX_R
19 +HYP*L27; 1 +HZP*L31; 28 +CDQ*L3; 8 +CDQ*L5
1 +CDQ*L14; 83 +CDQ*L16; 16 +CDQ*L18; 98 +CDQ*L19
15 +CDQ*L24; 15 +CDQ*L30; 28 +CDQ*L33; 40 +CDQ*-OHD
12 +CDQ*DROP_OHQ_Z; 282 +CDQ*TX_Q_; 82 +CDQ*LY_R; 35 -DFQ*L1
40 -DFQ*L6; 30 -DFQ*L8; 38 -DFQ*L17; 59 -DFQ*L18
9 -DFQ*L20; 2 -DFQ*L30; 32 -DFQ*L31; 214 -DFQ*C_OCF_YP
92 -DFQ*LX_R; 5 +HFR*L0; 26 +HFR*L3; 40 +HFR*L4
52 +HFR*L6; 37 +DFR*L27; 12 +HZR*L15; 41 +HZR*L23
1 +HZR*L35; 18 +HZR*TX_Q_; 47 +OPQ*L4; 41 +OPQ*L6
12 +OPQ*L15; 87 +OPQ*L17; 20 +OPQ*L21; 5 +OPQ*L25
60 +OPQ*L30; 60 +OPQ*L31; 32 +OPQ*+OCF; 87 +OPQ*DROP_OHP_Z
224 +OPQ*DROP_OCR_YZP; 107 -FQR*L3; 114 -FQR*L12; 105 -FQR*L14
59 -FQR*L19; 349 -FQR*L21; 110 -FQR*L24; 112 -FQR*L33
37 -FQR*-OHD; 79 -FQR*DROP_OHP_Z; 340 -FQR*TX_Q_; 62 -CYZ*L17
57 -CYZ*L18; 8 -CYZ*L21; 16 -CYZ*L24; 77 -CYZ*DROP_OHP_Z
10 -CYZ*LY_R; 152 -OZP*L3; 13 -OZP*L4; 47 -OZP*L23
16 -OZP*TX_Q_; 5 -OZP*LY_R; 45 -OZQ*L4; 55 +OZR*L0
12 +OZR*L14; 83 +OZR*L17; 513 +OZR*L18; 112 +OZR*L21
18 +OZR*L24; 199 +OZR*L27; 18 +OZR*L30; 14 +OZR*L31
5 +OZR*+OCF; 31 +OZR*DROP_OHQ_Z; 187 +OZR*TY_Q_; 18 +OZR*LX_R
10 -CPR*L6; 9 -CPR*L9; 88 -CPR*L11; 235 -CPR*L14
59 -CPR*L22; 203 -CPR*L27; 82 -CPR*L28; 19 -CPR*L33
105 -CPR*-OHD; 15 -CPR*DROP_OHP_Z; 166 -CPR*LY_R; 15 -HDP*L13
15 -HDP*L16; 29 -HDP*L20; 21 -HDP*L27; 3 -HDP*L34
43 -HDP*L35; 22 -HDP*DROP_OHQ_Z; 64 -HDP*LX_R; 15 -ODY*L3
81 -ODY*L19; 15 -ODY*L20; 22 -ODY*L23; 42 -ODY*DROP_OHP_Z
22 -ODY*TY_Q_; 93 -ODY*DROP_OCR_YZP; 44 +OFZ*L4; 6 +OFZ*L7
112 +OFZ*L17; 238 +OFZ*L18; 126 +OFZ*L21; 167 +OFZ*L22
63 +OFZ*L27; 5 +OFZ*L30; 8 +OFZ*L33; 5 +OFZ*L36
29 +OFZ*-OHD; 58 +OFZ*C_OCF_YP; 80 +OFZ*DROP_OHQ_Z; 1 -DZP*L9
36 -DZP*L10; 128 -DZP*L17; 47 -DZP*L22; 3 -DZP*L34
103 -DZP*-OHD; 124 -DZP*+OCF; 144 -DZP*DROP_OHP_Z; 47 -DZP*DROP_OHQ_Z
64 -DZP*LX_R; 103 -DZP*LY_R; 42 +ODZ*L10; 88 -DPR*L10
2 +ZPQ*L24; 94 +YPR*L4; 10 +YPR*L6; 15 +YPR*L16
3 +YPR*L20; 40 +YPR*L34; 19 +YPR*LY_R; 1 C_OCD_Y*L25
16 C_OCZ_Y*L3; 65 C_OCQ_YP*L27; 38 C_HCR_P*L3; 29 C_HDZ_P*L4
6 C_DZR_P*L10; 62 TPY_Q_*L14; 40 Q_OCDH_YZP*TX_Q_; 24 Q_OCRH_YZP*L27
34 Q_OCRH_YZP*TX_Q_; 5 Q_HZDQ_P*L27; 1 Q_CDQZ_P*L4; 13 M_OCRPYZ_-1_3*L3
13 M_OCRPYZ_-1_3*L4; 15 M_OCRPYZ_-1_3*L16; 16 M_OCRPYZ_-1_3*L24
```

Upper bound: `-93110623947/18200000000`.

### Leaf UTLmpmmpmmmmppp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ -CPR -HDP -ODY +OFZ +ODP +DZP`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYQ +OYQ
P OHDYR +OYR
P OHFPQ -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFPR +CFP
P COFQR +CQR
P DOHYZ -DYZ
P DOHYP -DYP
P DOHPQ -DPQ
P DOHPR -DPR
P DOFQR +DQR
P FOHYZ -FYZ
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P POFQR +PQR
M OCRPYZ -1
M ORCPZY 1
M CORZYP 1
M CROZPY -1
M ROCYZP -1
M RCOYPZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
T OCR YZP 1 lower 823/1000
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
3 L0*L0*LX_R; 6 L0*L1*L9; 210 L0*L3*L12; 104 L0*L3*LY_R
5 L0*L9*L12; 26 L0*L9*L31; 45 L0*L10*L25; 70 L0*L10*L31
180 L0*L18*L25; 41 L0*L18*L30; 136 L0*L21*L27; 42 L0*L24*L27
59 L0*L27*L35; 1 L0*L31*TY_Q_; 13 L1*L1*L16; 79 L1*L1*L24
38 L1*L3*L3; 99 L1*L3*L6; 29 L1*L3*L23; 268 L1*L3*L30
68 L1*L5*L21; 4 L1*L6*LY_R; 46 L1*L8*L10; 59 L1*L10*L26
56 L1*L12*L24; 88 L1*L12*L28; 4 L1*L16*LY_R; 82 L1*L18*L27
18 L1*L21*TY_Q_; 165 L1*L22*L27; 146 L2*L3*L10; 136 L2*L8*L27
51 L2*L10*L13; 47 L2*L17*L27; 50 L2*L21*L28; 47 L2*L27*TY_Q_
26 L2*L28*TY_Q_; 162 L3*L3*L4; 121 L3*L3*L12; 26 L3*L3*L22
121 L3*L3*L36; 18 L3*L3*-OHD; 98 L3*L3*DROP_OCR_YZP; 37 L3*L4*L6
6 L3*L4*L18; 6 L3*L4*L24; 66 L3*L4*DROP_OHP_Z; 63 L3*L4*TY_Q_
3 L3*L6*L10; 44 L3*L6*L18; 74 L3*L7*L34; 82 L3*L10*L17
5 L3*L10*L18; 14 L3*L10*L28; 119 L3*L12*L18; 257 L3*L12*L27
252 L3*L14*L24; 6 L3*L14*LY_R; 41 L3*L17*L23; 102 L3*L17*LY_R
29 L3*L18*L21; 119 L3*L18*L23; 254 L3*L18*L30; 105 L3*L18*LY_R
43 L3*L19*L24; 33 L3*L22*L36; 27 L3*L23*L24; 136 L3*L23*L27
37 L3*L25*L34; 83 L3*L26*L27; 29 L3*L28*L34; 88 L3*L29*LY_R
92 L3*L32*L34; 50 L3*TX_Q_*LY_R; 50 L4*L4*TX_Q_; 175 L4*L6*L27
9 L4*L9*L10; 6 L4*L10*L25; 319 L4*L12*L27; 121 L4*L18*TX_Q_
18 L4*L23*TX_Q_; 22 L4*L34*TX_Q_; 4 L4*TX_Q_*TX_Q_; 1 L5*L10*L21
19 L5*L16*L21; 41 L5*L16*L24; 30 L5*L18*L24; 3 L5*L24*L30
35 L6*L6*TY_Q_; 145 L6*L20*L27; 116 L6*L21*L27; 35 L6*L21*TY_Q_
6 L6*L25*L27; 107 L6*L27*L29; 96 L6*L27*-OHD; 44 L6*L27*DROP_OHP_Z
7 L6*L34*TY_Q_; 101 L7*L7*L23; 7 L7*L14*L14; 31 L7*L16*L23
46 L7*L18*L27; 26 L7*L21*L23; 113 L7*L23*L24; 16 L7*L23*L29
135 L7*L27*L34; 24 L8*L8*L27; 4 L8*L10*TY_Q_; 130 L8*L16*L28
148 L8*L18*L27; 1 L9*L22*L27; 116 L10*L12*L32; 2 L10*L12*L33
3 L10*L15*L20; 134 L10*L15*L24; 80 L10*L15*L31; 11 L10*L16*L28
19 L10*L16*LY_R; 50 L10*L18*L36; 50 L10*L19*L34; 165 L10*L22*L27
134 L10*L25*L34; 4 L10*L28*L29; 92 L10*L29*DROP_OHP_Z; 2 L10*L30*L33
36 L10*L31*L36; 4 L10*L32*DROP_OHQ_Z; 1 L10*TY_Q_*LX_R; 4 L12*L19*L21
189 L12*L22*L27; 45 L12*L23*L28; 66 L12*L27*L34; 7 L12*L28*L30
4 L14*L16*L21; 6 L14*L23*L29; 32 L14*L24*TX_Q_; 80 L16*L21*L23
14 L16*L23*L29; 104 L16*L24*L28; 106 L16*L28*L30; 101 L17*L22*L27
115 L17*L27*L27; 19 L18*L21*L24; 80 L18*L21*TX_Q_; 20 L18*L24*TY_Q_
82 L18*L27*-OHD; 121 L18*L27*TX_Q_; 83 L19*L24*L27; 10 L19*L24*TX_Q_
154 L20*L27*L34; 78 L21*L21*L27; 141 L21*L22*L27; 78 L21*L23*L24
38 L21*L23*L29; 6 L21*L24*L28; 6 L21*L24*LY_R; 32 L21*L27*L36
29 L21*L27*DROP_OHP_Z; 48 L21*L28*L28; 42 L21*L28*TY_Q_; 48 L21*L28*LY_R
24 L21*TY_Q_*LY_R; 108 L22*L22*LX_R; 165 L22*L27*L32; 67 L22*L34*LX_R
9 L23*L24*TY_Q_; 43 L23*L24*LY_R; 52 L24*L28*L30; 32 L27*L27*DROP_OHP_Z
43 L27*L27*DROP_OHQ_Z; 3 L27*L29*L34; 68 L27*L34*+OCF; 6 L27*TX_Q_*LX_R
34 L31*L31*L34; 3 L31*L34*TY_Q_; 66 L34*L34*LX_R; 33 CENT*L9
1 CENT*L10; 221 CENT*L17; 114 CENT*LX_R; 47 -HYZ*L1
14 -HYZ*L7; 115 -HYZ*L10; 323 -HYZ*L17; 91 -HYZ*L18
7 -HYZ*L24; 41 -HYZ*L28; 100 -HYZ*L29; 27 -HYZ*L31
7 -HYZ*L33; 3 -HYZ*TY_Q_; 120 -HYZ*DROP_OCR_YZP; 3 +OCY*L6
48 +OCY*L15; 14 +OCY*L36; 9 +OCY*DROP_OCR_YZP; 30 +CDY*L27
17 +HCP*L1; 124 +HCP*L11; 130 +HCP*L13; 133 +HCP*L14
54 +HCP*L21; 104 +HCP*L25; 308 +HCP*L30; 102 +HCP*+OCF
54 +HCP*DROP_OHQ_Z; 184 +HCP*DROP_OCR_YZP; 34 +HCP*LX_R; 7 -CYP*L9
45 -CYP*L22; 204 -CYP*L27; 91 -CYP*L34; 14 -CZP*L27
4 -HFQ*L10; 89 +CDQ*L5; 81 +CDQ*L12; 54 +CDQ*L17
63 +CDQ*L18; 6 +CDQ*L24; 80 +CDQ*L27; 26 +CDQ*L33
22 +CDQ*L36; 13 +CDQ*DROP_OHQ_Z; 25 +CDQ*TX_Q_; 50 -DFQ*L4
65 -DFQ*L6; 3 -DFQ*L11; 121 -DFQ*L18; 60 -DFQ*L21
23 -DFQ*L22; 34 -DFQ*L29; 28 -DFQ*L33; 2 -DFQ*-OHD
124 -DFQ*DROP_OHP_Z; 39 -DFQ*DROP_OHQ_Z; 211 -DFQ*DROP_OCR_YZP; 4 -DYQ*L10
34 +HFR*L16; 110 +HFR*L22; 73 +HFR*L34; 27 +HFR*TY_Q_
40 +HZR*L1; 175 +HZR*L3; 56 +HZR*L8; 48 +HZR*L23
42 +HZR*LY_R; 43 -FZR*L27; 63 +OPQ*L5; 80 +OPQ*L6
80 +OPQ*L21; 21 -FQR*L3; 108 -FQR*L4; 113 -FQR*L7
70 -FQR*L12; 70 -FQR*L13; 122 -FQR*L14; 121 -FQR*L19
78 -FQR*L21; 22 -FQR*L27; 117 -FQR*TY_Q_; 65 -FQR*LY_R
28 -CYZ*L1; 49 -CYZ*L4; 114 -CYZ*L6; 46 -CYZ*L23
33 -CYZ*-OHD; 155 -CYZ*+OCF; 59 -CYZ*DROP_OCR_YZP; 2 -OZQ*L10
264 +OZR*L4; 63 +OZR*L9; 75 +OZR*L17; 101 +OZR*L18
60 +OZR*L19; 32 +OZR*L20; 238 +OZR*L22; 86 +OZR*L27
180 +OZR*L32; 66 +OZR*L34; 66 +OZR*-OHD; 64 -CPR*L4
59 -CPR*L8; 41 -CPR*L14; 174 -CPR*L18; 174 -CPR*L19
101 -CPR*L22; 83 -CPR*L27; 180 -CPR*L32; 82 -CPR*L33
4 -CPR*L35; 20 -CPR*+OCF; 19 -CPR*DROP_OHQ_Z; 10 -CPR*TX_Q_
74 +OFZ*L2; 161 +OFZ*L22; 32 +OFZ*L24; 59 +OFZ*L34
29 +OFZ*TY_Q_; 61 +ODP*L14; 106 +ODP*L17; 7 +ODP*L18
55 +ODP*L21; 18 +ODP*L23; 105 +ODP*L27; 210 +ODP*L30
100 +ODP*L31; 30 +ODP*L32; 68 +ODP*L34; 30 +ODP*L35
106 +ODP*DROP_OHP_Z; 124 +ODP*LX_R; 45 +DZP*L4; 422 +DZP*L8
106 +DZP*L9; 42 +DZP*L11; 7 +DZP*L12; 4 +DZP*L21
75 +DZP*L24; 55 +DZP*L27; 133 +DZP*-OHD; 221 +DZP*+OCF
45 +DZP*TY_Q_; 41 -DYP*L0; 323 -DYP*L12; 54 -DYP*L24
3 -YZP*TY_Q_; 13 +YPR*L4; 7 +YPR*L33; 32 C_ODZ_P*L24
13 C_ODQ_P*L21; 34 C_ODQ_P*L27; 113 C_CYR_P*L3; 24 C_CYR_P*L9
54 C_CYR_P*L17; 55 C_CYR_P*L18; 1 C_CYR_P*L22; 180 C_CYR_P*L34
28 TPY_Q_*L12; 46 SP_OCFH_ZP_OF-1*L27; 39 Q_OCDZ_YP*L10; 7 SP_OCDZ_YP_OD1*L18
17 Q_OYDQ_P*L27; 8 Q_OYDR_ZP*L10; 188 Q_CDZY_P*L3; 1 Q_DQZY_P*L10
1 M_OCRPYZ_-1_0*L10; 4 M_OCRPYZ_-1_3*L4; 42 M_OCRPYZ_-1_3*L23; 7 M_OCRPYZ_-1_3*L30
```

Upper bound: `-4757410687/1000000000`.

### Leaf UTLmpmmpmmmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ -CPR -HDP +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYP +ODP
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFPR +CFP
P COFQR +CQR
P DOHPQ -DPQ
P DOHPR -DPR
P DOFQR +DQR
P FOCPQ +FPQ
P FOCPR -FPR
P YOHDP +YDP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOCDZ +YDZ
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHFZ +PFZ
P POHZQ -PZQ
P POFQR +PQR
C ODZ Y P -DZP 101661/147500
M OHDPZY 1
M ODHPYZ -1
M HODYZP -1
M HDOYPZ 1
M DOHZYP 1
M DHOZPY -1
M OCRPYZ -1
M ORCPZY 1
M CORZYP 1
M CROZPY -1
M ROCYZP -1
M RCOYPZ 1
M ODRPYZ -1
M ORDPZY 1
M DORZYP 1
M DROZPY -1
M RODYZP -1
M RDOYPZ 1
```

```c1top-bounds
T OHD YZP 0 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
T OCR YZP 1 lower 823/1000
```

```c1top-box
h 823/1000 177/200
c 823/1000 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
2 L0*L0*L30; 1 L0*L0*L35; 1 L0*L2*L32; 50 L0*L4*TX_Q_
7 L0*L6*L17; 87 L0*L7*TX_Q_; 4 L0*L8*L35; 11 L0*L8*TX_Q_
25 L0*L12*TX_Q_; 3 L0*L16*L36; 102 L0*L21*L27; 8 L0*L21*L29
47 L0*L27*DROP_OHP_Z; 54 L1*L3*L3; 49 L1*L3*TX_Q_; 3 L1*L4*L16
9 L1*L6*L18; 61 L1*L6*L23; 278 L1*L6*L27; 146 L1*L7*L24
4 L1*L7*L32; 2 L1*L7*TY_Q_; 12 L1*L8*L29; 25 L1*L10*TX_Q_
4 L1*L11*L24; 66 L1*L16*TX_Q_; 2 L1*L21*L22; 14 L1*L24*L24
49 L1*L24*L31; 158 L1*L24*DROP_OHQ_Z; 58 L1*L24*TX_Q_; 315 L1*L24*DROP_OCR_YZP
4 L1*L30*L35; 5 L2*L8*L32; 6 L2*L9*L34; 5 L2*L10*L28
2 L2*L14*L31; 3 L2*L15*LY_R; 2 L2*L20*L30; 2 L2*L21*L36
24 L2*L24*LY_R; 2 L2*L27*L30; 1 L2*L29*TY_Q_; 1 L3*L3*L23
6 L3*L4*L6; 4 L3*L4*L35; 18 L3*L6*L14; 9 L3*L10*L21
25 L3*L10*L27; 4 L3*L12*L26; 7 L3*L16*TX_Q_; 3 L3*L18*L21
1 L3*L18*L23; 2 L3*L19*L27; 7 L3*L21*DROP_OHP_Z; 69 L3*L22*L27
86 L3*L22*TX_Q_; 10 L3*L27*DROP_OHP_Z; 33 L3*L27*DROP_OCR_YZP; 4 L3*L35*LY_R
2 L4*L4*L29; 4 L4*L6*L19; 5 L4*L8*L27; 51 L4*L17*L24
1 L4*L19*L24; 4 L4*L20*L30; 4 L4*L31*TX_Q_; 16 L4*TX_Q_*LX_R
52 L4*TX_Q_*LY_R; 1 L5*L8*L24; 16 L6*L14*L23; 13 L6*L14*TX_Q_
7 L6*L16*TX_Q_; 49 L6*L17*L27; 10 L6*L19*L24; 97 L6*L20*L27
39 L6*L21*TX_Q_; 120 L6*L27*DROP_OHP_Z; 69 L7*L7*L23; 7 L7*L16*L20
73 L7*L18*L24; 1 L7*L19*LX_R; 39 L7*L21*TX_Q_; 1 L7*L23*L35
108 L7*L23*TX_Q_; 1 L8*L9*L14; 2 L8*L16*L34; 2 L8*L21*C_OCF_YP
1 L8*L23*DROP_OHP_Z; 58 L8*L24*LY_R; 3 L8*L32*LY_R; 5 L9*L10*L27
3 L9*L12*L27; 2 L9*L14*L16; 3 L10*L12*L17; 5 L10*L16*L27
56 L10*L27*LX_R; 1 L11*L32*LY_R; 1 L12*L18*L30; 3 L12*L19*L22
1 L12*L19*DROP_OHP_Z; 313 L12*L20*L27; 67 L12*L22*L27; 25 L12*L23*L29
9 L12*L25*L32; 148 L12*L27*DROP_OCR_YZP; 8 L12*L27*LX_R; 10 L13*L16*LY_R
31 L14*L24*L25; 10 L14*L24*L31; 18 L14*L24*LY_R; 14 L14*L27*C_OCF_YP
13 L14*L29*TX_Q_; 1 L15*L16*L30; 76 L16*L21*L27; 12 L16*L23*L24
4 L16*L27*L30; 7 L16*L29*L29; 1 L17*L18*L30; 7 L17*L29*C_OCF_YP
1 L18*L21*L21; 4 L18*L23*TX_Q_; 5 L18*L30*LY_R; 3 L19*L22*L30
1 L19*TX_Q_*TX_Q_; 89 L20*L21*L27; 211 L20*L27*L30; 175 L20*L27*L31
110 L20*L27*C_OCF_YP; 3 L21*L29*-OHD; 4 L23*L23*DROP_OHP_Z; 100 L23*L24*L24
39 L23*L24*C_OCF_YP; 64 L23*L24*DROP_OHP_Z; 107 L23*L24*TX_Q_; 1 L23*L24*TY_Q_
6 L23*L27*TX_Q_; 2 L23*L28*TX_Q_; 13 L23*L29*DROP_OHP_Z; 76 L24*L27*DROP_OHP_Z
129 L24*L27*LY_R; 8 L25*L27*L28; 58 L25*L27*L35; 5 L27*L29*TY_Q_
1 L27*L30*L31; 1 L27*L35*L35; 25 L27*L35*DROP_OHQ_Z; 5 L27*DROP_OHQ_Z*TY_Q_
100 L27*TX_Q_*LX_R; 129 L27*DROP_OCR_YZP*LX_R; 58 L29*TX_Q_*LY_R; 35 L30*TX_Q_*LY_R
1 L30*LY_R*LY_R; 25 L35*TX_Q_*LY_R; 18 TX_Q_*TX_Q_*LY_R; 3 QUADP*L30
95 -OHF*L27; 6 +CDF*L7; 9 +OYZ*L24; 4 -HYZ*L11
1 +CDY*L36; 101 +HCP*L20; 1 +HCP*L28; 9 +HCP*L29
4 +HCP*L36; 1 +HCP*DROP_OHP_Z; 117 +HCP*DROP_OHQ_Z; 87 +HCP*DROP_OCR_YZP
87 +HCP*LX_R; 12 +CDP*L8; 1 +CDP*L14; 1 +CDP*DROP_OHP_Z
34 +HZP*L27; 7 -CZP*L0; 2 -CZP*L29; 60 -OHQ*L27
79 -HFQ*L12; 11 -HFQ*L29; 86 +CDQ*L21; 1 -DFQ*L4
4 -DFQ*L18; 12 -DFQ*L24; 5 -DFQ*L29; 6 -DFQ*+OCF
19 -DFQ*TX_Q_; 61 -DFQ*DROP_OCR_YZP; 34 -DFQ*LX_R; 38 +HZQ*L27
24 +FZQ*L2; 9 +HFR*L19; 61 +HFR*L22; 12 +HFR*L30
4 +HFR*L32; 137 +HFR*DROP_OHP_Z; 176 +HFR*DROP_OHQ_Z; 182 +HFR*DROP_OCR_YZP
4 +HZR*LY_R; 16 -FZR*L27; 4 +OPQ*L5; 14 +OPQ*L8
2 +OPQ*L10; 4 +OPQ*L23; 57 +OPQ*L24; 13 +OPQ*L31
54 +OPQ*DROP_OCR_YZP; 5 +OPQ*LX_R; 1 +OPQ*LY_R; 248 -FQR*L21
1 -FQR*L22; 100 -FQR*L24; 4 -FQR*L28; 1 -FQR*L31
38 -FQR*L33; 16 -FQR*L36; 17 -FQR*DROP_OHP_Z; 161 -FQR*DROP_OHQ_Z
176 -FQR*TX_Q_; 3 -CYZ*L3; 15 -CYZ*L6; 9 -CYZ*L9
1 -CYZ*L11; 3 -CYZ*+OCF; 2 -CYZ*DROP_OHP_Z; 9 -CYZ*TX_Q_
29 -CYZ*DROP_OCR_YZP; 5 +OYP*L6; 6 +OYP*L20; 2 +OYP*L22
8 +OYP*L31; 4 +OYP*L32; 10 +OYP*+OCF; 1 -OZP*L13
1 -OZP*L17; 55 +OZR*L4; 12 +OZR*L12; 90 +OZR*L20
12 +OZR*L30; 14 +OZR*L35; 52 +OZR*TY_Q_; 129 +OZR*DROP_OCR_YZP
31 +OZR*LX_R; 284 -CPR*L20; 76 -CPR*L21; 4 -CPR*L31
6 -CPR*L33; 5 -CPR*L34; 11 -CPR*-OHD; 76 -CPR*LX_R
9 -HDP*L8; 157 -HDP*L20; 5 -HDP*L22; 51 -HDP*L24
5 -HDP*L32; 14 -HDP*+OCF; 6 -HDP*DROP_OCR_YZP; 15 +ODY*L6
1 +ODY*L12; 4 +ODY*L31; 24 +ODY*+OCF; 12 +ODY*TX_Q_
1 +ODY*LX_R; 1 +OYR*L27; 147 +HQR*L7; 18 +HQR*L21
4 -FPR*L21; 9 -DYP*L2; 10 -DYP*L27; 5 -YZP*L7
1 -YZP*L10; 4 -DYZ*L21; 7 +ZPR*TX_Q_; 1 +ZPQ*L0
1 +ZPQ*L3; 6 +ZPQ*L24; 55 +ZPQ*L27; 4 -DZP*L1
1 -DZP*L32; 7 C_OCZ_Y*L27; 33 C_OCR_YZP*L27; 25 C_ODQ_YP*L6
67 C_ODQ_YP*L20; 4 C_ODQ_YP*L31; 65 C_ODQ_YP*+OCF; 50 C_ODQ_YP*C_OCF_YP
2 C_ODQ_YP*TY_Q_; 2 C_HCD_P*L5; 2 C_HCD_P*L17; 123 C_HCD_P*L20
1 C_HCD_P*L33; 32 C_HCD_P*DROP_OHQ_Z; 7 C_HCR_P*L19; 14 C_HCR_P*L24
57 C_HCR_P*TX_Q_; 2 C_HDZ_P*C_OCF_YP; 1 TPX_Q_*L4; 5 TPX_Q_*L24
1 TPY_Q_*L23; 57 Q_OCDH_YZP*TX_Q_; 61 Q_OCDH_YZP*LX_R; 65 Q_OCRH_YZP*L23
9 Q_OPFH_Z*L27; 14 Q_OYRH_Z*L14; 3 Q_OCDZ_Y*LY_R; 79 Q_OCPZ_Y*L27
1 Q_OCQZ_YP*L1; 12 Q_ODPZ_Y*L20; 4 Q_ODPZ_Y*L32; 36 Q_OYFR_Z*L27
1 Q_HYCD_P*L10; 3 Q_HYCD_P*L24; 8 Q_HCDR_P*L27; 10 M_HODYZP_-1_0*L6
30 M_HODYZP_-1_0*L22; 110 M_HODYZP_-1_0*DROP_OHQ_Z; 264 M_HODYZP_-1_0*DROP_OCR_YZP; 21 M_HODYZP_-1_0*LX_R
1 M_HODYZP_-1_3*L1; 4 M_HODYZP_-1_3*L35; 1 M_HODYZP_-1_4*L17; 4 M_HODYZP_-1_4*L31
5 M_HODYZP_-1_4*DROP_OHQ_Z; 16 M_HODYZP_-1_4*DROP_OCR_YZP; 139 M_DROZPY_-1_0*L20; 4 M_OCRPYZ_-1_0*L30
10 M_OCRPYZ_-1_1*L3; 1 M_OCRPYZ_-1_4*L5
```

Upper bound: `-285996249141/91000000000`.

### Leaf UTLmpmmpmmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ -CPR +HDP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CFP
P COFQR +CQR
P DOHCP -DOP
P DOHZP -DZP
P DOFPQ -DPQ
P DOFQR +DQR
P DHCYP -DYP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POCDR +PDR
P POFQR +PQR
M OCRPYZ -1
M ORCPZY 1
M CORZYP 1
M CROZPY -1
M ROCYZP -1
M RCOYPZ 1
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
T OCR YZP 1 lower 823/1000
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
26 L0*L0*L30; 28 L0*L3*L20; 84 L0*L3*L22; 30 L0*L3*L25
36 L0*L3*L30; 102 L0*L3*DROP_OHP_Z; 32 L0*L3*TX_Q_; 24 L0*L7*L15
1 L0*L7*LY_R; 35 L0*L8*L31; 15 L0*L10*TX_Q_; 1 L0*L12*L25
14 L0*L12*TX_Q_; 28 L0*L15*L29; 11 L0*L15*L31; 1 L0*L17*L35
47 L0*L17*LX_R; 56 L0*L17*LY_R; 97 L0*L18*L25; 7 L0*L18*L30
147 L0*L22*LX_R; 1 L0*L25*L28; 30 L0*L27*TX_Q_; 2 L1*L1*L30
23 L1*L3*L4; 56 L1*L4*L16; 15 L1*L7*L10; 6 L1*L8*L8
1 L1*L8*L27; 73 L1*L10*L33; 1 L1*L14*L17; 84 L1*L14*L30
21 L1*L16*L30; 25 L1*L16*TX_Q_; 33 L2*L24*L27; 53 L3*L3*L4
32 L3*L4*L12; 28 L3*L4*L13; 242 L3*L4*L20; 16 L3*L4*L27
3 L3*L4*L36; 9 L3*L4*TX_Q_; 8 L3*L6*L14; 96 L3*L7*L10
16 L3*L8*L14; 3 L3*L8*L17; 3 L3*L8*DROP_OHP_Z; 7 L3*L10*L14
75 L3*L12*L14; 6 L3*L12*L22; 24 L3*L12*LY_R; 12 L3*L14*L16
3 L3*L14*L19; 15 L3*L14*C_OCF_YP; 28 L3*L18*L21; 17 L3*L18*L27
45 L3*L19*TX_Q_; 50 L3*L23*L23; 54 L3*L23*DROP_OHP_Z; 210 L3*L23*TX_Q_
37 L3*L23*DROP_OCR_YZP; 238 L3*L26*TX_Q_; 1 L3*L27*L29; 12 L3*L27*DROP_OHP_Z
21 L4*L6*TX_Q_; 11 L4*L6*LX_R; 4 L4*L8*LX_R; 10 L4*L12*L17
1 L4*L12*L32; 14 L4*L16*L23; 3 L4*L17*L21; 129 L4*L20*TX_Q_
24 L4*L21*L27; 11 L4*L23*L24; 5 L4*L23*L26; 19 L4*L23*TX_Q_
108 L4*DROP_OHP_Z*TX_Q_; 74 L4*DROP_OHP_Z*LX_R; 78 L4*TX_Q_*DROP_OCR_YZP; 58 L4*TX_Q_*LY_R
9 L5*L8*L14; 2 L5*L19*L21; 24 L6*L6*L27; 1 L6*L8*LY_R
23 L6*L17*L27; 127 L6*L26*L27; 53 L6*L27*L32; 53 L7*L10*DROP_OCR_YZP
1 L7*L14*L19; 2 L7*L14*L27; 24 L7*L23*TX_Q_; 63 L7*L26*TX_Q_
41 L8*L10*L33; 1 L8*L10*L36; 15 L8*L17*L27; 24 L8*L24*L27
2 L8*L27*L33; 6 L9*L18*L21; 8 L9*L27*L29; 1 L9*L27*L31
41 L9*L31*L34; 1 L10*L11*C_OCF_YP; 5 L10*L12*L13; 3 L10*L12*L21
1 L10*L13*L32; 15 L10*L17*L24; 2 L10*L17*L29; 6 L10*L17*L36
9 L10*L18*L21; 15 L10*L20*L30; 14 L10*L20*L36; 15 L10*L21*L32
80 L10*L21*C_OCF_YP; 12 L10*L23*L33; 1 L10*L24*L30; 5 L10*L24*L36
5 L10*L27*L33; 61 L10*L27*C_OHD_Z; 1 L10*L36*DROP_OHP_Z; 15 L11*L21*L35
5 L12*L14*L30; 22 L12*L16*L27; 6 L12*L20*L27; 9 L12*L25*L27
28 L12*L27*L27; 2 L14*L16*TX_Q_; 5 L14*L18*L25; 1 L14*L18*TX_Q_
5 L14*L21*L24; 2 L14*L21*L35; 4 L14*L21*DROP_OHP_Z; 1 L14*L23*DROP_OHP_Z
28 L14*L24*L27; 5 L14*L24*LX_R; 5 L14*L32*DROP_OHP_Z; 3 L15*L21*L31
86 L16*L23*L24; 8 L16*L26*L27; 99 L16*TX_Q_*LY_R; 4 L17*L25*TY_Q_
6 L17*L27*LY_R; 5 L17*L31*L34; 17 L18*L21*L22; 1 L18*L27*L29
3 L18*L27*LX_R; 2 L18*L30*TX_Q_; 3 L18*L31*TX_Q_; 17 L19*L23*TX_Q_
17 L19*L24*TX_Q_; 2 L19*L32*TX_Q_; 24 L21*L21*L28; 24 L21*L21*LY_R
51 L21*L27*TY_Q_; 446 L22*L22*LX_R; 181 L22*L24*L27; 11 L22*L25*L28
5 L22*L27*TY_Q_; 11 L22*L31*LX_R; 14 L23*L23*L23; 31 L23*L23*L24
5 L23*L23*LY_R; 15 L23*L24*L24; 11 L23*L24*L30; 24 L23*L24*TX_Q_
363 L23*L27*TX_Q_; 5 L23*L29*L29; 4 L23*L30*DROP_OHP_Z; 5 L24*L27*L33
15 L24*TX_Q_*LY_R; 2 L25*L31*L34; 181 L27*L27*DROP_OHQ_Z; 9 L27*L30*LX_R
5 L27*L34*DROP_OHP_Z; 53 L27*C_OCF_YP*LX_R; 13 L31*L34*TX_Q_; 24 KLOW*L9
61 KLOW*L22; 47 KLOW*TX_Q_; 25 KLOW*TY_Q_; 65 CENT*L2
84 CENT*L14; 7 CENT*L19; 6 CENT*LX_R; 28 CENT*LY_R
16 QUADP*L27; 53 +OCD*L3; 16 +CDF*L23; 71 +OYZ*L12
7 +OYZ*L27; 15 -HYZ*L7; 121 -HYZ*L8; 121 -HYZ*L9
82 -HYZ*L10; 5 -HYZ*L17; 29 -HYZ*L27; 13 -HYZ*DROP_OHQ_Z
13 -HYZ*LX_R; 14 +OCY*L2; 82 -HCY*L10; 115 +CDY*L6
95 +CDY*L16; 9 +CDY*L36; 24 +CDY*LX_R; 6 +CDP*L14
27 +CDP*L24; 30 +DFP*L27; 65 +CDQ*L19; 50 +CDQ*L23
138 +CDQ*L24; 149 +CDQ*L25; 2 +CDQ*L32; 103 +CDQ*DROP_OHQ_Z
107 +CDQ*TX_Q_; 102 +CDQ*DROP_OCR_YZP; 31 -DFQ*L7; 48 -DFQ*L18
31 -DFQ*L22; 31 -DFQ*LX_R; 60 -DFQ*LY_R; 66 -CFQ*L4
28 +HFR*L3; 97 +HFR*L18; 185 +HFR*L22; 16 +HFR*L30
1 +HFR*L34; 1 +HFR*L36; 59 +HFR*DROP_OHP_Z; 2 +HFR*TY_Q_
4 +CDR*L30; 1 +HZR*L4; 53 -FZR*L0; 29 +OPQ*L1
47 +OPQ*L3; 15 +OPQ*L4; 8 +OPQ*L8; 7 +OPQ*L11
1 +OPQ*L14; 4 +OPQ*L17; 58 +OPQ*L21; 71 +OPQ*L24
55 +OPQ*DROP_OHQ_Z; 68 +OPQ*LY_R; 39 -FQR*L7; 65 -FQR*L19
142 -FQR*L21; 415 -FQR*L22; 15 -FQR*L24; 149 -FQR*L26
166 -FQR*DROP_OHQ_Z; 30 -FQR*LY_R; 83 -CYZ*L11; 198 -CYZ*L12
1 -CYZ*L18; 19 -CYZ*L24; 123 -CYZ*L30; 81 -CYZ*L31
11 -CYZ*C_OHD_Z; 18 -CYZ*DROP_OHQ_Z; 23 -CYZ*DROP_OCR_YZP; 1 +OYP*L14
4 -OZP*L16; 2 -OZP*L21; 3 +OZR*L6; 6 +OZR*L20
28 +OZR*L27; 1 +OZR*L28; 2 +OZR*L31; 5 +OZR*L32
44 +OZR*-OHD; 23 +OZR*+OCF; 5 +OZR*LX_R; 9 -CPR*L3
156 -CPR*L7; 5 -CPR*L14; 95 -CPR*L20; 15 -CPR*L25
7 -CPR*L33; 143 -CPR*DROP_OHQ_Z; 65 -CPR*TY_Q_; 2 +HDP*L22
69 +HDP*L25; 19 +HDP*L30; 1 +HDP*L32; 6 +HDP*L36
107 +HDP*+OCF; 69 +HDP*DROP_OHQ_Z; 70 +HDP*TX_Q_; 26 +HDP*DROP_OCR_YZP
36 +HDP*LX_R; 58 +HDP*LY_R; 15 +HPR*TX_Q_; 2 +CFP*L10
97 +ODP*L27; 1 -DZP*L10; 3 -DPQ*L21; 95 +FPQ*L0
3 +FPQ*L9; 48 -FPR*L4; 14 -DYZ*L3; 7 +ZPQ*L3
4 +ZPQ*L16; 11 +ZPQ*L24; 12 -DPR*L2; 15 -DPR*L30
3 +PQR*L27; 15 +YPR*L25; 16 C_OPR_Z*TX_Q_; 1 C_CYR_P*L31
11 TPY_Q_*L6; 9 Q_OCDZ_Y*L8; 19 Q_OCDZ_Y*L24; 53 Q_OCDQ_YP*L27
41 Q_OCDR_YZP*TX_Q_; 51 Q_OCFR_YZP*L27; 10 Q_OCQZ_YP*L10; 2 Q_CDQZ_P*L10
107 M_OCRPYZ_-1_2*TX_Q_; 2 M_OCRPYZ_-1_3*L29; 2 M_OCRPYZ_-1_4*L3
```

Upper bound: `-197874431463/45500000000`.

### Leaf UTLmpmmpmpmmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP -CFP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DHCPQ -DPQ
P FOCYP +FYP
P FODPQ +FPQ
P FODPR -FPR
P FHCZP +FZP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
134 L0*L0*L27; 15 L0*L3*L3; 30 L0*L3*L4; 9 L0*L3*L8
87 L0*L3*L22; 21 L0*L6*L17; 28 L0*L9*L27; 6 L0*L10*L30
2 L0*L12*L35; 2 L0*L12*L36; 11 L0*L16*L27; 32 L0*L27*L30
134 L1*L1*LY_R; 8 L1*L2*L28; 25 L1*L3*L17; 2 L1*L6*L10
91 L1*L6*L12; 95 L1*L6*L27; 72 L1*L9*L24; 53 L1*L20*L24
4 L1*L21*L23; 26 L1*L24*L24; 89 L1*L24*L30; 5 L1*L24*L33
2 L1*L31*L31; 7 L2*L2*L19; 28 L2*L2*L28; 10 L2*L2*L30
29 L2*L5*L21; 19 L2*L5*L29; 30 L2*L5*LY_R; 37 L2*L16*L27
3 L2*L16*TY_Q_; 33 L2*L21*L28; 24 L2*L23*L24; 10 L3*L3*L12
15 L3*L3*L14; 128 L3*L3*L22; 156 L3*L4*L6; 65 L3*L6*L18
111 L3*L6*L22; 19 L3*L8*L8; 46 L3*L8*L14; 10 L3*L10*L24
9 L3*L10*L31; 49 L3*L14*L24; 37 L3*L17*LY_R; 39 L3*L18*L22
32 L3*L20*L27; 64 L3*L22*L27; 4 L5*L17*L24; 41 L6*L8*L27
1 L6*L11*L24; 70 L6*L13*L27; 128 L6*L17*L27; 103 L6*L18*L21
65 L6*L18*L27; 2 L6*L19*L24; 44 L6*L21*L27; 134 L6*L21*TY_Q_
302 L6*L22*L27; 40 L6*L27*L28; 12 L6*L27*L29; 41 L6*L27*L31
11 L6*L27*L32; 240 L6*L27*-OHD; 1 L7*L10*LX_R; 59 L7*L23*LY_R
2 L8*L8*L27; 6 L8*L10*LY_R; 7 L8*L30*LY_R; 12 L9*L10*L12
9 L9*L24*L27; 10 L9*L31*L31; 68 L10*L12*L31; 2 L10*L12*L36
26 L10*L24*L33; 6 L10*L26*L35; 9 L10*L27*LX_R; 38 L12*L14*L27
2 L12*L14*L30; 2 L12*L14*L34; 10 L12*L27*L29; 32 L12*L27*L34
6 L12*L27*L36; 24 L14*L24*L30; 30 L17*L21*L23; 70 L17*L21*L27
43 L17*L21*L28; 107 L17*L23*L24; 17 L17*L23*L26; 58 L17*L24*L27
58 L17*L24*LY_R; 37 L17*TX_Q_*LY_R; 30 L18*L21*L21; 49 L18*L21*L27
65 L18*L23*L24; 128 L21*L21*L27; 40 L21*L22*L27; 128 L21*L23*L24
4 L21*L23*L28; 21 L21*L23*L29; 11 L21*L24*L27; 4 L21*L25*L28
72 L21*L28*L29; 17 L23*L24*L29; 40 L23*L24*TY_Q_; 19 L23*L29*L29
131 L23*L29*LY_R; 33 L24*L27*DROP_OHQ_Z; 9 L24*L35*LY_R; 23 L24*TX_Q_*LY_R
20 L27*L28*DROP_OHP_Z; 4 L27*L30*L30; 41 KLOW*L3; 21 KLOW*L6
33 KLOW*L9; 49 KLOW*L12; 105 KLOW*L20; 5 KLOW*L23
26 KLOW*L25; 8 KLOW*L28; 1 KLOW*L35; 4 FAN*L27
39 -HYZ*L2; 9 -HYZ*L8; 2 -HYZ*L12; 31 -HYZ*L17
10 -HYZ*L24; 31 -HYZ*DROP_OHP_Z; 8 -HYZ*DROP_OCR_YZ; 36 +OCY*L3
92 +OCY*L30; 30 +OCY*L31; 22 +CDP*L4; 24 +CDP*L6
89 +CDP*L23; 4 +CDP*L24; 39 +CDQ*L0; 62 +CDQ*L5
125 +CDQ*L18; 8 +CDQ*L25; 67 +CDQ*L27; 47 +CDQ*L29
8 +CDQ*DROP_OHP_Z; 21 +CDQ*DROP_OHQ_Z; 114 -DFQ*L2; 56 -DFQ*L21
196 -OHR*L1; 10 -OHR*L6; 168 -OHR*L23; 58 +HFR*L13
50 +HFR*L14; 58 +HFR*L17; 168 +HFR*L22; 23 +HFR*L24
2 +HFR*L30; 21 +HFR*L33; 50 +HFR*L34; 2 +HFR*L35
146 +HFR*C_OHD_Z; 72 +HFR*DROP_OHQ_Z; 3 +HDR*L24; 59 +HZR*L1
2 +HZR*L12; 10 +HZR*L29; 6 +HZR*L30; 8 +HZR*L35
58 +HZR*-OHD; 6 +OPQ*L27; 20 -FQR*L6; 107 -FQR*L17
65 -FQR*L18; 128 -FQR*L21; 531 -FQR*L27; 32 -FQR*L29
40 -FQR*TY_Q_; 531 -FQR*DROP_OCR_YZ; 15 -CYZ*L3; 120 -CYZ*L8
49 -CYZ*L9; 16 -CYZ*L24; 8 +OZR*L0; 10 +OZR*L6
2 +OZR*L12; 62 -CPQ*L3; 103 -CPQ*L4; 83 -CPQ*L6
36 -CPQ*L23; 62 -HDP*L3; 80 -HDP*L20; 31 -HDP*L27
55 -CFP*L3; 39 -CFP*L4; 114 -CFP*L6; 87 -CFP*L21
91 -CFP*DROP_OHQ_Z; 39 -CFP*TY_Q_; 2 -CFP*LX_R; 22 -DPQ*L4
24 -DPQ*L6; 53 -DPQ*L17; 30 -DPQ*L21; 36 -DPQ*L22
58 -DPQ*C_OCF_Y; 53 -DPQ*DROP_OHP_Z; 11 -DPQ*DROP_OCR_YZ; 43 C_OCZ_Y*L24
143 C_OCQ_YP*L6; 36 C_OCQ_YP*TY_Q_; 53 TPY_Q_*L2; 36 TPY_Q_*L21
8 Q_OYRH_Z*L14; 40 Q_CDQF_P*L4; 58 Q_CDQF_P*L20; 40 Q_CDQF_P*L23
5 Q_CDQF_P*L24; 58 Q_CDQF_P*L26; 6 Q_CDQF_P*TX_Q_; 39 Q_CDQF_P*LY_R
```

Upper bound: `-1829628579/1000000000`.

### Leaf UTLmpmmpmpmmpmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYQ +OYQ
P OHDYR +OYR
P OHDZQ +ODZ
P OHFZP -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOFQR +DQR
P DHCPQ -DPQ
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHFP -ZFP
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
M OCFPYZ -1
M OFCPZY 1
M COFZYP 1
M CFOZPY -1
M FOCYZP -1
M FCOYPZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCF YZP 1 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
71 L0*L2*L27; 192 L0*L3*L30; 16 L0*L6*L27; 16 L0*L6*L30
11 L0*L24*LY_R; 45 L0*L26*L27; 139 L1*L2*L24; 43 L1*L8*L30
189 L1*L24*L30; 89 L1*L27*LY_R; 11 L1*L30*LY_R; 45 L1*LY_R*LY_R
64 L2*L3*L14; 10 L2*L3*L27; 11 L2*L3*TX_Q_; 128 L2*L6*L27
29 L2*L24*L27; 57 L3*L6*L8; 46 L3*L6*L13; 4 L3*L6*L19
11 L3*L6*L33; 57 L3*L7*L30; 11 L3*L8*L21; 185 L3*L8*L27
130 L3*L8*L32; 130 L3*L8*LY_R; 8 L3*L10*DROP_OHQ_Z; 70 L3*L14*L26
2 L3*L14*L35; 4 L3*L18*DROP_OCR_YZ; 4 L3*L18*LX_R; 4 L3*L19*L25
23 L3*L20*L26; 11 L3*L21*L31; 108 L3*L26*L27; 125 L3*L26*LY_R
23 L3*L30*C_OHD_Z; 10 L3*+OCF*LY_R; 53 L3*C_OHD_Z*DROP_OCR_YZ; 29 L3*LX_R*LY_R
4 L6*L6*L34; 38 L6*L6*LY_R; 22 L6*L8*L27; 4 L6*L19*L27
17 L7*L10*L26; 4 L7*L27*L29; 121 L7*L30*LY_R; 33 L8*L10*L21
151 L8*L10*L36; 27 L8*L14*LX_R; 11 L8*L14*LY_R; 78 L8*L15*L27
56 L8*L27*+OCF; 9 L8*L27*DROP_OHQ_Z; 2 L9*L27*L32; 12 L9*L35*L35
126 L10*L12*L13; 57 L10*L12*L27; 272 L10*L12*L30; 41 L10*L12*TX_Q_
11 L10*L13*LY_R; 23 L10*L15*L24; 32 L10*L21*L26; 81 L10*L30*L30
317 L10*L30*L33; 41 L10*L30*DROP_OHQ_Z; 10 L10*L30*LX_R; 8 L10*L31*TX_Q_
10 L10*L31*LX_R; 31 L10*+OCF*LX_R; 54 L12*L24*L27; 54 L12*L24*LY_R
2 L12*L27*L34; 2 L15*L27*L30; 13 L18*L27*DROP_OCR_YZ; 13 L19*L26*L27
4 L19*L27*L29; 23 L20*L27*L30; 23 L21*L27*L33; 106 L24*L27*C_OHD_Z
17 L27*L27*L29; 12 L27*L30*-OHD; 32 L27*L35*TX_Q_; 19 L35*L35*L35
10 KLOW*L3; 10 CENT*L0; 92 CENT*L2; 10 CENT*L25
16 CENT*L29; 37 +OYZ*L3; 151 -HYZ*L12; 24 -HYZ*L24
43 -HYZ*L30; 108 -HYZ*L33; 21 -HYZ*LY_R; 76 +OCY*L9
29 +OCY*L31; 43 +OCY*L35; 15 -OHR*L29; 50 -OHR*LY_R
61 +HFR*L0; 152 +HFR*L2; 34 +HFR*L7; 54 +HFR*L8
121 +HFR*L30; 45 +HFR*DROP_OCR_YZ; 21 -FZR*L10; 96 -CYZ*L2
317 -CYZ*L8; 2 -CYZ*L35; 10 -CYZ*-OHD; 76 -CYZ*+OCF
70 -CYZ*DROP_OCR_YZ; 51 -CYZ*LX_R; 86 -OFZ*L2; 70 -OFZ*L6
75 -OFZ*L7; 18 -OFZ*L8; 95 -OFZ*L26; 8 -OFZ*L32
13 -OFZ*L35; 2 -YZR*L10; 31 C_OCZ_Y*L24; 16 C_CFY_P*L9
28 Q_OYFR_Z*L27
```

Upper bound: `-941570119/1000000000`.

### Leaf UTLmpmmpmpmmpmpm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP -ODY +OFZ -ODP`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDFP -OFP
P OHDYQ +OYQ
P OHDYR +OYR
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOHZP +DZP
P DOCPQ -DPQ
P DOFQR +DQR
P FOHYZ -FYZ
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OCD YP 1 lower 6903218/8301179
T OCD YP 2 lower 347/500
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 71/102
X Q - 10 lower 26257/35394
Y Q - 11 lower 8549039/9947000
```

```c1top-box
h 347/500 177/200
c 831/1000 1
d 347/500 167/200
f 437/1000 697/1000
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 741/1000 1
m 859/1000 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
20 L0*L4*L36; 11 L0*L6*L27; 3 L0*L7*L12; 3 L0*L12*L17
1 L0*L12*L30; 2 L0*L35*LX_R; 2 L1*L21*L21; 3 L1*L24*L30
11 L3*L4*L26; 4 L3*L4*-OHD; 5 L3*L4*TY_Q_; 2 L3*L18*L21
1 L3*L20*L26; 1 L3*L22*L24; 4 L3*L22*L27; 42 L4*L7*L26
1 L4*L7*DROP_OHP_Z; 22 L4*L7*LY_R; 2 L4*L8*TX_Q_; 2 L4*L9*L20
2 L4*L9*L22; 70 L4*L22*L27; 12 L4*L23*C_OHD_Z; 58 L4*L26*TX_Q_
38 L4*TX_Q_*LX_R; 1 L5*L24*L26; 1 L6*L10*L21; 1 L6*L10*L23
1 L6*L10*L28; 1 L6*L11*L12; 3 L6*L14*L27; 3 L6*L21*-OHD
2 L6*L21*LX_R; 9 L6*L27*DROP_OHP_Z; 11 L6*L28*DROP_OHP_Z; 3 L6*L28*DROP_OHQ_Z
2 L7*L7*L7; 2 L7*L7*TX_Q_; 7 L7*L7*LY_R; 4 L7*L9*L26
3 L7*L15*L26; 8 L7*L17*LY_R; 3 L7*L18*L20; 1 L7*L18*L24
2 L7*L20*L24; 95 L7*L23*L26; 2 L7*L23*L30; 3 L7*L24*C_OCF_YP
3 L7*L26*L30; 21 L7*L26*TX_Q_; 46 L7*L26*DROP_OCR_YZ; 2 L7*L30*LY_R
1 L7*L35*LY_R; 1 L8*L20*L28; 1 L8*L24*L28; 1 L10*L21*DROP_OCR_YZ
2 L10*L24*L27; 1 L10*L24*L29; 2 L10*L24*LY_R; 1 L12*L17*L27
30 L12*L22*LY_R; 3 L12*L24*L28; 2 L12*L25*TY_Q_; 2 L12*L27*L30
1 L14*L17*L24; 37 L14*L23*L24; 1 L14*L24*L25; 6 L14*L24*L27
2 L14*L24*L30; 2 L16*L24*LY_R; 2 L16*L28*C_OCF_YP; 3 L17*L23*L26
2 L17*L24*L26; 4 L17*L26*TX_Q_; 2 L17*L28*L33; 3 L18*L21*LX_R
3 L18*L23*L24; 1 L18*L24*TX_Q_; 2 L20*L21*LY_R; 1 L20*L28*L35
4 L21*L24*L28; 33 L21*L27*TY_Q_; 2 L21*TY_Q_*LX_R; 33 L22*L23*L24
6 L22*L25*L34; 70 L22*L27*TY_Q_; 70 L23*L23*L26; 43 L23*L24*L26
1 L24*L27*L28; 10 L27*L27*L28; 10 L27*L28*DROP_OCR_YZ; 10 L28*L28*L36
1 L28*+OCF*DROP_OCQ_YP; 2 KLOW*L25; 18 KLOW*TY_Q_; 5 +HDF*L24
1 -HYZ*LX_R; 1 +OCY*L0; 1 +DFY*L24; 1 +DFZ*L24
1 +CDP*L4; 2 +DFP*L24; 1 +CDQ*L25; 23 +CDQ*-OHD
7 +CDQ*C_OHD_Z; 8 +CDQ*LY_R; 9 -DFQ*L6; 36 -DFQ*L26
11 -DFQ*C_OHD_Z; 7 -DFQ*DROP_OHP_Z; 56 -DFQ*DROP_OCR_YZ; 30 -DFQ*LX_R
1 +FYQ*L4; 2 -DYQ*L6; 21 -OHR*L1; 4 -OHR*L7
4 -OHR*TX_Q_; 3 -OHR*LY_R; 33 +HFR*L27; 5 +HFR*L36
2 +HFR*DROP_OHP_Z; 61 +HFR*DROP_OCR_YZ; 2 +DFR*L0; 7 +DFR*L21
17 +HZR*L1; 1 +HZR*L17; 31 +HZR*L23; 6 +HZR*L27
1 +HZR*L30; 7 +HZR*-OHD; 30 -FQR*L7; 5 -FQR*L17
2 -FQR*L21; 33 -FQR*L22; 1 -FQR*L32; 76 -FQR*C_OHD_Z
43 -FQR*LY_R; 1 -CYZ*L24; 5 +OZR*L0; 1 +OZR*L8
1 +OZR*L30; 1 +OZR*LX_R; 1 +CPR*L21; 3 +CPR*L23
6 +OFZ*L1; 1 +OFZ*L30; 8 +OFZ*DROP_OCR_YZ; 2 -ODP*L23
32 +HQR*L0; 2 +HQR*L28; 5 -DPQ*LX_R; 1 C_OCD_YP*L21
2 C_OCD_YP*-OHD; 6 C_OCD_YP*TY_Q_; 3 C_OCD_YP*LY_R; 2 C_OFR_Z*L34
2 C_OQR_Z*L4; 31 TPY_Q_*LY_R; 3 Q_OFRH_Z*L6; 37 Q_OFRH_Z*L22
24 Q_OFRH_Z*L27
```

Upper bound: `-65673981/1000000000`.

### Leaf UTLmpmmpmpmmpmppmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP -ODY +OFZ +ODP -DZP -FYP`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYQ +OYQ
P OHDYR +OYR
P OHFPQ -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYP -DYP
P DOHPQ -DPQ
P DOFQR +DQR
P FOHYZ -FYZ
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ -YPQ
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
9 L3*L29; 54 L0*L7*L7; 14 L0*L12*L35; 3 L1*L1*L8
8 L1*L3*L36; 11 L1*L3*LY_R; 24 L1*L4*L21; 13 L1*L4*L24
18 L1*L6*L36; 139 L1*L8*L24; 73 L1*L9*L27; 74 L1*L9*DROP_OCR_YZ
17 L1*L10*L11; 42 L1*L16*L21; 26 L1*L16*L24; 14 L1*L18*L31
14 L1*L19*L24; 1 L1*L22*TX_Q_; 18 L1*L24*L28; 76 L1*L24*L30
181 L1*L24*L31; 70 L1*L26*TX_Q_; 6 L1*L33*LY_R; 4 L1*LY_R*LY_R
1 L2*L3*TY_Q_; 2 L2*L5*LY_R; 28 L2*L12*L28; 98 L2*TX_Q_*LY_R
22 L3*L3*L21; 2 L3*L4*L8; 15 L3*L4*L11; 57 L3*L4*L12
8 L3*L4*DROP_OHP_Z; 36 L3*L4*DROP_OHQ_Z; 21 L3*L6*LY_R; 22 L3*L7*L29
6 L3*L9*L27; 33 L3*L12*L14; 9 L3*L12*L35; 30 L3*L14*L29
14 L3*L15*L21; 65 L3*L16*L27; 52 L3*L18*L24; 18 L3*L18*L30
7 L3*L18*L36; 14 L3*L18*TX_Q_; 8 L3*L21*L22; 80 L3*L23*C_OCF_YP
28 L3*L23*TX_Q_; 17 L3*L23*DROP_OCR_YZ; 75 L3*L24*L27; 68 L3*L24*LY_R
2 L3*L26*L28; 17 L3*L27*L32; 43 L3*L35*TX_Q_; 80 L4*L6*TX_Q_
2 L4*L9*LY_R; 24 L4*L10*L21; 1 L4*L13*L17; 17 L4*L16*L27
24 L4*L20*LY_R; 15 L4*L24*L29; 1 L4*L30*L30; 19 L4*L33*TX_Q_
140 L4*TX_Q_*LY_R; 8 L5*L7*L24; 24 L5*L7*L27; 7 L5*L10*L29
5 L5*L12*L32; 15 L5*L12*L35; 36 L5*L21*DROP_OHQ_Z; 22 L6*L9*L9
70 L6*L10*L17; 20 L6*L10*L19; 15 L6*L10*L29; 39 L6*L10*TX_Q_
61 L6*L10*LX_R; 18 L6*L12*L34; 38 L6*L18*L27; 7 L6*L19*L24
92 L6*L27*L31; 5 L7*L7*L18; 12 L7*L7*L28; 22 L7*L7*L33
16 L7*L7*LY_R; 92 L7*L8*L26; 20 L7*L12*DROP_OHQ_Z; 63 L7*L12*TX_Q_
23 L7*L14*L16; 4 L7*L14*L27; 11 L7*L14*L29; 63 L7*L21*LY_R
40 L7*L23*L24; 16 L7*L23*L26; 1 L7*L23*L34; 10 L7*L23*L35
41 L7*L23*DROP_OHP_Z; 162 L7*L23*LY_R; 22 L8*L8*L21; 1 L8*L10*L30
18 L8*L14*L30; 71 L8*L16*L27; 43 L8*L23*L24; 12 L8*L24*L28
5 L8*L30*L30; 5 L9*L9*L35; 60 L9*L10*LX_R; 5 L9*L12*L12
51 L9*L12*L15; 9 L9*L12*L31; 83 L9*L17*L27; 5 L9*L18*L23
11 L9*L18*L31; 139 L9*L20*L27; 12 L9*L23*TX_Q_; 69 L9*L27*L30
91 L9*L27*L31; 126 L9*TX_Q_*LY_R; 17 L10*L10*L15; 81 L10*L12*L13
29 L10*L12*L19; 17 L10*L12*L21; 33 L10*L12*LY_R; 10 L10*L13*L36
14 L10*L13*TX_Q_; 15 L10*L13*DROP_OCR_YZ; 17 L10*L15*L24; 11 L10*L16*L31
14 L10*L17*L20; 20 L10*L17*L22; 39 L10*L17*L27; 70 L10*L17*-OHD
35 L10*L17*C_OCF_YP; 105 L10*L17*TX_Q_; 75 L10*L17*LX_R; 2 L10*L18*L21
63 L10*L20*L33; 21 L10*L25*L33; 8 L10*L28*L33; 99 L10*L30*LX_R
17 L10*L34*L35; 9 L10*L36*DROP_OHQ_Z; 50 L11*L12*L24; 22 L11*L26*TX_Q_
14 L12*L12*TY_Q_; 87 L12*L17*L23; 91 L12*L21*L21; 36 L12*L21*L28
9 L12*L23*L29; 9 L12*L23*L35; 23 L12*L26*L27; 6 L12*L27*L28
37 L12*L27*DROP_OHP_Z; 38 L12*L31*L34; 9 L12*L31*TY_Q_; 22 L12*L32*TX_Q_
50 L13*L21*L21; 6 L13*L23*L27; 41 L13*TX_Q_*TX_Q_; 14 L14*L14*TX_Q_
36 L14*L15*L24; 14 L14*L18*TX_Q_; 36 L14*L24*L30; 14 L14*L24*TX_Q_
5 L14*L24*TY_Q_; 33 L14*L29*TX_Q_; 30 L14*L29*LY_R; 14 L14*L36*TX_Q_
3 L15*L15*L31; 2 L15*L17*LY_R; 2 L15*L24*L25; 20 L16*L24*L28
11 L16*L27*LX_R; 39 L16*L35*LY_R; 9 L16*TX_Q_*LY_R; 11 L18*L21*TX_Q_
17 L18*L23*L31; 11 L18*L24*L25; 15 L19*L21*L24; 14 L19*L21*L36
5 L19*L22*L24; 2 L19*L25*L34; 11 L20*L24*LY_R; 126 L20*L31*L34
1 L21*L23*-OHD; 11 L21*L23*DROP_OHP_Z; 23 L21*L24*L27; 54 L21*L27*L29
12 L21*L28*DROP_OHQ_Z; 80 L21*TX_Q_*DROP_OCR_YZ; 63 L22*L24*L27; 34 L23*L24*L24
21 L23*L24*L29; 22 L23*L24*L35; 50 L23*L24*DROP_OHP_Z; 5 L23*L27*DROP_OHP_Z
79 L23*L29*L29; 120 L23*L31*DROP_OHP_Z; 23 L24*L27*L36; 77 L24*L27*+OCF
85 L24*L27*LY_R; 36 L24*L29*LY_R; 25 L24*L33*LY_R; 85 L24*LY_R*LY_R
3 L25*L32*TX_Q_; 13 L26*L29*TX_Q_; 80 L26*TX_Q_*TX_Q_; 63 L26*TX_Q_*DROP_OCR_YZ
23 L27*L30*L31; 1 L27*L31*L31; 4 L27*L31*TX_Q_; 1 L28*L31*L31
64 L29*L30*LY_R; 1 L29*L31*LY_R; 22 L31*L31*TX_Q_; 18 L31*L34*L34
17 L31*L34*L35; 14 L31*L34*LX_R; 12 L32*TX_Q_*TX_Q_; 36 L33*L36*LY_R
28 L33*TX_Q_*LY_R; 72 L34*DROP_OHP_Z*TX_Q_; 4 -OHD*LY_R*LY_R; 2 KLOW*L28
20 +OYZ*L21; 82 -HYZ*L31; 111 +OCY*L6; 73 +OCY*L17
9 +OCY*L23; 84 +OCY*L30; 30 +OCY*L31; 39 +OCY*L36
15 -HCY*L1; 6 +CFY*L10; 6 -HCZ*L27; 39 +DFP*L12
28 -CYP*L9; 7 -CYP*L15; 62 +HZP*L16; 87 -HFQ*L7
41 +CDQ*L16; 25 +CDQ*L21; 7 +CDQ*L25; 61 +CDQ*DROP_OHQ_Z
35 -DFQ*L6; 7 -DFQ*L17; 24 -DFQ*L32; 62 -DFQ*+OCF
54 -DFQ*C_OCF_YP; 12 -DFQ*DROP_OHQ_Z; 57 -DFQ*LX_R; 164 -DFQ*LY_R
55 -OHR*L14; 62 -OHR*LY_R; 4 +HFR*L9; 91 +HFR*L17
64 +HFR*L22; 25 +HFR*L29; 72 +HFR*L31; 64 +HFR*L33
18 +HZR*L0; 111 +HZR*L8; 14 +HZR*L20; 14 +HZR*L29
19 +HZR*L35; 36 +HZR*L36; 101 +HZR*DROP_OHP_Z; 5 +HZR*TY_Q_
23 +HZR*LY_R; 125 +OPQ*L2; 120 +OPQ*L9; 11 +OPQ*L21
19 +OPQ*L24; 37 +OPQ*L27; 16 +OPQ*L32; 36 +OPQ*L33
175 +OPQ*LX_R; 70 -FQR*L1; 1 -FQR*L15; 223 -FQR*L16
22 -FQR*L18; 84 -FQR*L21; 34 -FQR*L24; 198 -FQR*L27
15 -FQR*L33; 22 -FQR*L35; 84 -FQR*TX_Q_; 261 -FQR*DROP_OCR_YZ
27 -CYZ*L1; 24 -CYZ*L6; 113 -CYZ*L8; 6 -CYZ*L11
91 -CYZ*L12; 82 -CYZ*L25; 30 -CYZ*L31; 20 -CYZ*L36
65 -CYZ*-OHD; 39 -CYZ*DROP_OHP_Z; 106 -CYZ*DROP_OHQ_Z; 5 +OYP*TX_Q_
60 -OZP*L3; 9 -OZP*L7; 70 -OZP*L24; 23 +OZR*L0
3 +CPR*L1; 79 +CPR*L8; 50 +CPR*L12; 17 +CPR*L22
114 +CPR*L30; 17 +CPR*L32; 92 +CPR*DROP_OHQ_Z; 82 +CPR*TX_Q_
9 +CPR*LX_R; 27 -HDP*L6; 88 -HDP*L9; 106 -HDP*L20
16 -HDP*L26; 162 -HDP*L30; 34 -HDP*L35; 2 -HDP*L36
62 -HDP*DROP_OHP_Z; 21 +OFZ*L1; 6 +OFZ*L7; 60 +OFZ*L17
19 +OFZ*L19; 5 +OFZ*L29; 10 +OFZ*L30; 33 +OFZ*TX_Q_
27 +OFZ*LY_R; 73 -DZP*L8; 62 -DZP*L17; 72 -DZP*L20
1 -DZP*L27; 34 -DZP*L35; 33 -DZP*+OCF; 125 -DZP*DROP_OHP_Z
20 -DZP*LX_R; 90 -FYP*L6; 201 -FYP*L7; 6 -FYP*L10
34 -FYP*L14; 22 -FYP*L22; 39 -FYP*L30; 16 -FYP*-OHD
59 -FYP*C_OCF_YP; 164 -FYP*DROP_OHQ_Z; 105 -FYP*LX_R; 17 +HPR*L10
62 -DPQ*L12; 14 +FPQ*L10; 11 +FPQ*L12; 16 +FPQ*LY_R
12 -YZP*L3; 6 -YZP*L10; 14 -YZP*L24; 43 -YPQ*L24
1 +ZPQ*L27; 65 +YPR*L3; 2 +YPR*L34; 40 +YPR*TX_Q_
49 C_HDZ_P*L31; 64 TPX_Q_*L24; 97 Q_OCDH_YZP*TX_Q_; 4 SP_OCDH_YP_CH-1*L24
9 Q_OCQZ_YP*L10; 14 Q_ODQZ_P*L12; 12 Q_OYQF_P*L21; 2 SP_OYFR_ZP_YR-1*L24
2 Q_HZYD_P*LY_R; 12 Q_HZDR_P*L31; 13 Q_DQFZ_P*L12
```

Upper bound: `-67632769877/18200000000`.

### Leaf UTLmpmmpmpmmpmppmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP -ODY +OFZ +ODP -DZP +FYP`.

```c1top-geometry
C CFY P Z -FYZ 36132509/53513000
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYQ +OYQ
P OHDYR +OYR
P OHFPQ -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYP -DYP
P DOHPQ -DPQ
P DOFQR +DQR
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCQR +PQR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
563 L0*L1*L12; 5 L0*L3*L10; 91 L1*L1*L17; 628 L1*L1*L24
266 L1*L2*L17; 64 L1*L2*L18; 512 L1*L3*L19; 254 L1*L3*L27
2439 L1*L6*L27; 295 L1*L7*L21; 829 L1*L7*L24; 109 L1*L8*L17
651 L1*L10*L27; 1930 L1*L12*L27; 25 L1*L12*TY_Q_; 593 L1*L14*L17
786 L1*L17*L24; 222 L1*L17*L29; 246 L1*L17*TX_Q_; 436 L1*L17*LY_R
555 L1*L18*L21; 47 L1*L19*L24; 914 L1*L21*L24; 2340 L1*L21*L27
225 L1*L21*L30; 31 L1*L22*L24; 1727 L1*L24*L24; 89 L1*L24*L29
520 L1*L24*L30; 500 L1*L24*TY_Q_; 36 L1*L30*L30; 1 L2*L4*L23
543 L2*L8*TY_Q_; 249 L2*L12*TY_Q_; 81 L2*L17*L22; 417 L2*L30*LY_R
216 L3*L3*L4; 70 L3*L3*L7; 981 L3*L3*L14; 121 L3*L3*L18
216 L3*L3*L23; 121 L3*L3*L27; 176 L3*L4*L14; 141 L3*L4*L24
328 L3*L4*L27; 153 L3*L4*TX_Q_; 795 L3*L8*L14; 420 L3*L9*L27
90 L3*L10*L16; 342 L3*L10*L23; 828 L3*L10*L36; 357 L3*L10*DROP_OHQ_Z
755 L3*L10*TX_Q_; 70 L3*L12*L27; 21 L3*L14*L14; 515 L3*L14*L17
358 L3*L14*TX_Q_; 106 L3*L16*L27; 282 L3*L19*L21; 63 L3*L21*TY_Q_
331 L3*L22*L27; 550 L3*L23*L30; 183 L3*L23*TX_Q_; 830 L3*L27*L34
1 L4*L4*L31; 2 L4*L4*TX_Q_; 833 L4*L6*L27; 157 L4*L10*L21
308 L4*L10*L29; 464 L4*L10*TX_Q_; 256 L4*L17*TX_Q_; 2 L4*L23*TX_Q_
556 L4*TX_Q_*LY_R; 406 L5*L14*L21; 423 L5*L21*L21; 141 L5*L21*L24
312 L5*L21*L30; 751 L6*L7*L27; 2 L6*L10*L21; 59 L6*L10*L30
341 L6*L17*L27; 445 L6*L19*L27; 129 L6*L22*L27; 383 L6*L27*L30
44 L7*L7*L14; 866 L7*L7*L23; 995 L7*L7*LY_R; 184 L7*L8*L14
286 L7*L8*L23; 116 L7*L10*TX_Q_; 42 L7*L14*L17; 591 L7*L14*L21
232 L7*L14*L23; 178 L7*L14*L24; 739 L7*L21*L23; 393 L7*L21*LY_R
33 L7*L23*L23; 611 L7*L23*L24; 372 L7*L23*L30; 1529 L7*L24*LY_R
99 L7*L27*L27; 65 L7*LY_R*LY_R; 185 L8*L12*L28; 747 L8*L14*L17
78 L8*L14*L28; 406 L8*L14*TX_Q_; 118 L8*L18*L21; 108 L8*L18*TY_Q_
225 L8*L21*L28; 1588 L8*L24*L27; 489 L8*L27*TY_Q_; 741 L9*L22*L27
1588 L9*L24*L27; 78 L10*L10*L13; 122 L10*L10*L30; 122 L10*L10*L31
664 L10*L12*L19; 252 L10*L12*L27; 268 L10*L12*L31; 406 L10*L13*TX_Q_
200 L10*L14*L30; 110 L10*L16*L23; 116 L10*L16*TX_Q_; 2 L10*L17*L21
2 L10*L17*L24; 59 L10*L17*L30; 651 L10*L27*-OHD; 275 L12*L12*L27
91 L12*L12*L28; 91 L12*L14*L17; 14 L12*L14*L27; 66 L12*L14*L28
1274 L12*L17*L28; 99 L12*L18*L21; 1768 L12*L18*L27; 792 L12*L21*L27
275 L12*L24*L27; 163 L12*L27*L27; 1362 L12*L27*L28; 282 L12*L27*L30
1640 L12*L27*TY_Q_; 66 L14*L14*L17; 99 L14*L17*L21; 225 L14*L17*L23
225 L14*L18*L21; 284 L14*L18*L29; 792 L14*L21*L24; 1389 L14*L21*L27
47 L14*L21*L29; 1617 L14*L24*L27; 1913 L14*L24*L28; 23 L14*L24*L29
282 L14*L24*L30; 1454 L14*L24*LY_R; 132 L14*L30*LY_R; 764 L16*L22*L27
81 L16*L23*L23; 1666 L16*L27*L34; 185 L17*L21*L27; 2 L17*L27*L30
15 L17*L27*+OCF; 319 L17*L27*TY_Q_; 2 L18*L30*TY_Q_; 81 L19*L21*L23
185 L19*L21*L24; 31 L19*L24*L29; 456 L21*L21*L27; 456 L21*L23*L24
33 L21*L23*L27; 70 L21*L23*L29; 77 L21*L24*L27; 543 L21*L27*C_OCF_YP
1 L21*TY_Q_*TY_Q_; 1345 L22*L24*L27; 33 L23*L23*L24; 1 L23*L23*TX_Q_
77 L23*L24*L24; 402 L23*L24*L29; 59 L23*L27*L30; 311 L23*L30*LY_R
1345 L27*L27*TX_Q_; 2 L28*L28*L30; 89 KLOW*L6; 417 CENT*L2
52 CENT*L14; 85 CENT*LX_R; 2 -HYZ*L1; 299 -HYZ*L6
36 -HYZ*L8; 129 -HYZ*L16; 311 -HYZ*L23; 981 +OCY*L3
78 +OCY*L10; 104 +OCY*L12; 490 +OCY*L17; 293 +OCY*L18
345 +OCY*L20; 215 +OCY*L23; 85 +OCY*L24; 259 +OCY*L28
231 +OCY*L30; 1080 +OCY*L36; 1172 +OCY*TX_Q_; 601 +OCY*TY_Q_
254 +OCY*LY_R; 819 -OHZ*L27; 222 +DFP*L12; 216 +CDQ*L3
1 +CDQ*L5; 153 +CDQ*L7; 1093 +CDQ*L8; 418 +CDQ*L10
126 +CDQ*L12; 311 +CDQ*L14; 364 +CDQ*L17; 328 +CDQ*L19
141 +CDQ*L24; 316 +CDQ*TX_Q_; 2 -DFQ*L4; 231 -DFQ*L8
96 -DFQ*L14; 883 -DFQ*L18; 469 -DFQ*L21; 537 -DFQ*L30
110 -DFQ*L35; 206 -DFQ*+OCF; 109 -DFQ*C_OCF_YP; 183 -DFQ*DROP_OHP_Z
1028 -DFQ*DROP_OCR_YZ; 556 -DFQ*LY_R; 541 +HFR*L1; 907 +HFR*L7
788 +HFR*L17; 688 +HFR*L21; 2896 +HFR*L22; 1451 +HFR*L24
89 +HFR*L29; 383 +HFR*L30; 639 +HFR*L34; 163 +HFR*LY_R
221 +HZR*L8; 2 +HZR*L11; 54 +HZR*L12; 146 +HZR*L14
529 +HZR*L18; 225 +HZR*L21; 25 +HZR*L23; 275 +HZR*L24
2055 +HZR*L27; 500 +HZR*L28; 829 +HZR*-OHD; 2 +HZR*DROP_OHP_Z
1891 +HZR*LY_R; 290 +OPQ*L2; 432 +OPQ*L5; 113 +OPQ*L6
386 +OPQ*L21; 81 +OPQ*L23; 123 +OPQ*L28; 432 +OPQ*L34
165 +OPQ*L36; 1586 -FQR*L1; 208 -FQR*L7; 1389 -FQR*L14
185 -FQR*L17; 445 -FQR*L19; 456 -FQR*L21; 33 -FQR*L23
77 -FQR*L24; 543 -FQR*L29; 591 -FQR*-OHD; 1345 -FQR*LY_R
563 -CYZ*L3; 176 -CYZ*L4; 231 -CYZ*L8; 200 -CYZ*L10
1545 -CYZ*L17; 293 -CYZ*L18; 132 -CYZ*L20; 907 -CYZ*DROP_OHP_Z
274 -CYZ*TX_Q_; 311 -CYZ*TY_Q_; 254 -CYZ*DROP_OCR_YZ; 610 +OYP*L12
471 -OZP*L10; 651 +OZR*L0; 347 +OZR*L2; 150 +OZR*L18
567 +OZR*L21; 61 +OZR*L30; 1413 +OZR*TY_Q_; 121 +CPR*L3
328 +CPR*L4; 631 +CPR*L6; 2 +CPR*L9; 576 +CPR*L34
558 -HDP*L4; 1167 -HDP*L13; 63 -HDP*L14; 686 -HDP*L17
320 -HDP*L24; 1180 -HDP*L27; 238 -HDP*L30; 487 -HDP*+OCF
686 -HDP*DROP_OHP_Z; 246 -HDP*DROP_OHQ_Z; 555 -HDP*TY_Q_; 320 -HDP*LX_R
527 -HDP*LY_R; 57 +CFP*L8; 328 +CFP*L22; 90 +CFP*L24
550 -ODY*L3; 773 -ODY*L19; 556 -ODY*L20; 2 -ODY*L28
3 -ODY*L34; 53 -ODY*L36; 658 -ODY*TX_Q_; 639 +OFZ*L1
44 +OFZ*L7; 614 +OFZ*L8; 372 +OFZ*L10; 801 +OFZ*L17
461 +OFZ*L19; 639 +OFZ*L21; 1529 +OFZ*L22; 201 +OFZ*L24
749 +OFZ*L27; 96 +OFZ*TY_Q_; 2714 -DZP*L1; 2 -DZP*L4
1171 -DZP*L12; 66 -DZP*L14; 99 -DZP*L21; 759 -DZP*L24
1089 -DZP*L27; 1080 -DZP*L30; 843 -DZP*L35; 2185 -DZP*-OHD
124 -DZP*C_OCF_YP; 759 -DZP*LX_R; 883 +FYP*L4; 110 +FYP*L23
59 +FYP*L31; 372 +FYP*L36; 118 +FYP*TX_Q_; 2 +FYP*LX_R
270 -DPQ*L21; 445 -DPQ*L27; 573 +FPQ*L3; 165 +FPQ*L12
373 +FPQ*L14; 185 +FPQ*L24; 116 +FPQ*TX_Q_; 73 C_OCZ_Y*L14
239 C_OCZ_Y*L24; 331 C_OCQ_YP*L27; 94 C_ODQ_P*L27; 195 TPY_Q_*L27
122 Q_OYRH_Z*L14; 489 Q_OYDQ_P*L27
```

Upper bound: `-2169100011/1000000000`.

### Leaf UTLmpmmpmpmmpmppp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP -ODY +OFZ +ODP +DZP`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYQ +OYQ
P OHDYR +OYR
P OHFPQ -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOHYP -DYP
P DOHPQ -DPQ
P DOFQR +DQR
P FOHYZ -FYZ
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
87 L0*L10*L31; 13 L0*L12*L17; 46 L0*L12*L35; 68 L0*L17*L27
22 L0*L27*-OHD; 55 L1*L1*L6; 285 L1*L1*L24; 83 L1*L1*L30
15 L1*L1*L32; 21 L1*L1*L35; 24 L1*L2*L18; 130 L1*L2*L29
33 L1*L3*L35; 36 L1*L4*L35; 22 L1*L6*L10; 22 L1*L7*L17
210 L1*L7*L24; 60 L1*L7*L30; 42 L1*L7*L34; 21 L1*L7*L36
39 L1*L9*L36; 283 L1*L12*L12; 159 L1*L12*L15; 17 L1*L12*L21
298 L1*L12*L34; 68 L1*L13*L27; 35 L1*L17*L24; 250 L1*L17*L30
52 L1*L18*L21; 20 L1*L18*L29; 160 L1*L18*L30; 4 L1*L18*L33
35 L1*L21*L23; 87 L1*L21*L29; 8 L1*L21*L33; 27 L1*L21*-OHD
35 L1*L21*TY_Q_; 41 L1*L22*DROP_OHP_Z; 283 L1*L24*L30; 49 L1*L24*L31
9 L1*L24*TX_Q_; 11 L1*L26*L29; 27 L1*L30*TX_Q_; 15 L1*LY_R*LY_R
143 L2*L8*L28; 118 L2*L10*L19; 9 L2*L10*TX_Q_; 112 L2*L14*L30
21 L2*L14*TY_Q_; 28 L2*L16*L23; 3 L2*L19*L28; 59 L2*L24*LY_R
67 L2*L27*TX_Q_; 24 L2*L30*TY_Q_; 159 L3*L4*L9; 8 L3*L4*L12
4 L3*L10*L22; 45 L3*L10*L27; 58 L3*L10*L36; 20 L3*L11*L27
100 L3*L14*L18; 1 L3*L14*L21; 568 L3*L14*L24; 152 L3*L14*L27
24 L3*L18*L21; 126 L3*L18*L23; 44 L3*L18*L24; 270 L3*L18*L30
60 L3*L18*L35; 31 L3*L19*L27; 21 L3*L19*L31; 1 L3*L21*L23
8 L3*L21*L32; 4 L3*L21*-OHD; 20 L3*L27*L29; 63 L3*L27*L32
66 L3*L27*L33; 44 L3*L27*DROP_OHP_Z; 130 L3*L31*LY_R; 92 L3*L35*LY_R
23 L3*L36*LY_R; 32 L4*L6*L27; 28 L4*L7*TX_Q_; 4 L4*L10*L21
219 L4*L12*L17; 1 L4*L12*L34; 71 L4*L17*TX_Q_; 153 L4*L18*TX_Q_
8 L4*L34*TX_Q_; 1 L4*L36*LX_R; 3 L5*L13*L21; 20 L5*L14*L21
65 L5*L18*L24; 3 L5*L21*L27; 17 L5*L21*L30; 1 L5*L24*L36
7 L5*L27*L29; 79 L6*L19*L27; 70 L6*L21*TY_Q_; 7 L6*L25*L27
157 L6*L27*L29; 94 L6*L27*L30; 21 L6*L27*L34; 22 L6*L27*L35
1 L7*L7*L14; 155 L7*L7*L23; 123 L7*L7*LY_R; 13 L7*L14*L24
20 L7*L19*L21; 22 L7*L19*L24; 26 L7*L21*L23; 21 L7*L21*LY_R
42 L7*L23*L24; 7 L7*L24*LY_R; 3 L8*L8*L23; 19 L8*L14*TX_Q_
116 L8*L15*L27; 17 L8*L20*L27; 51 L8*L27*L34; 20 L8*L30*L30
20 L9*L9*L9; 219 L9*L9*L34; 167 L9*L10*L33; 117 L9*L10*L36
39 L9*L12*L35; 8 L9*L14*L21; 194 L9*L17*L27; 3 L9*L22*L24
108 L9*L31*L34; 117 L9*L34*L35; 36 L10*L10*L28; 27 L10*L12*L21
37 L10*L12*L25; 275 L10*L12*L27; 121 L10*L12*L30; 19 L10*L12*LX_R
30 L10*L13*L35; 62 L10*L16*LY_R; 52 L10*L19*L24; 19 L10*L21*DROP_OCR_YZ
214 L10*L24*L36; 36 L10*L28*L32; 39 L10*L28*DROP_OHP_Z; 46 L10*L30*L35
46 L10*L31*L35; 27 L10*L33*L36; 62 L10*L34*L34; 76 L10*L34*C_OCF_YP
20 L12*L12*L35; 270 L12*L13*L27; 264 L12*L17*L27; 397 L12*L18*L27
13 L12*L21*L24; 23 L12*L24*LY_R; 205 L12*L27*L28; 403 L12*L27*-OHD
113 L12*L31*L34; 45 L12*TY_Q_*LY_R; 13 L13*L21*L27; 69 L13*L27*L32
71 L14*L16*L28; 32 L14*L17*L24; 1 L14*L20*L21; 45 L14*L23*L24
34 L14*L23*L29; 270 L14*L24*L30; 44 L15*L31*L34; 75 L15*L31*L35
28 L16*L27*L30; 119 L16*L27*L34; 344 L16*L28*L30; 11 L17*L23*LY_R
10 L18*L23*TX_Q_; 102 L18*L24*L27; 231 L18*L24*L30; 10 L18*L24*L35
28 L18*L24*L36; 17 L19*L21*L27; 10 L19*L21*TY_Q_; 27 L19*L23*L24
34 L20*L27*C_OCF_YP; 57 L21*L21*L27; 1 L21*L21*L28; 54 L21*L23*L24
13 L21*L24*L36; 56 L21*L27*LX_R; 1 L21*L34*TX_Q_; 3 L21*TY_Q_*LX_R
27 L21*LY_R*LY_R; 74 L22*L27*DROP_OHP_Z; 3 L22*L31*L31; 27 L23*L24*L27
6 L23*L24*L29; 3 L23*L29*L29; 23 L24*L24*L34; 59 L24*L27*+OCF
14 L24*L27*TX_Q_; 102 L27*L27*DROP_OHP_Z; 7 L27*L27*DROP_OCR_YZ; 64 L27*L29*TY_Q_
391 L27*L30*L34; 19 L27*L35*DROP_OHQ_Z; 70 L27*DROP_OHQ_Z*LX_R; 7 L27*LY_R*LY_R
1 L29*L34*TX_Q_; 109 L29*TX_Q_*LY_R; 62 L34*L34*L35; 36 CENT*L5
1 CENT*L6; 80 CENT*L17; 28 TOPCOUNT*L7; 296 -HYZ*L9
61 -HYZ*L15; 515 -HYZ*L17; 183 -HYZ*L18; 23 -HYZ*L23
443 -HYZ*L26; 72 -HYZ*L29; 147 -HYZ*L31; 27 -HYZ*TX_Q_
23 -HYZ*TY_Q_; 80 -HYZ*LX_R; 7 +OCY*L6; 91 +OCY*L16
137 +OCY*L30; 30 -HCY*L10; 1 +CDY*TX_Q_; 40 +CDP*L10
1 +CDQ*L1; 4 +CDQ*L11; 6 +CDQ*L13; 13 +CDQ*L15
62 +CDQ*L18; 61 +CDQ*L21; 105 +CDQ*L27; 18 +CDQ*L30
59 +CDQ*DROP_OHQ_Z; 3 +CDQ*LX_R; 111 -DFQ*L0; 3 -DFQ*L9
25 -DFQ*L14; 153 -DFQ*L18; 110 -DFQ*L25; 135 -DFQ*LY_R
23 +HFR*L0; 244 +HFR*L7; 22 +HFR*L17; 39 +HFR*L26
69 +HFR*L30; 22 +HFR*L32; 51 +HFR*L34; 12 +HFR*L36
237 +HFR*+OCF; 33 +HFR*TY_Q_; 14 +HFR*LX_R; 130 +HZR*L3
33 +HZR*L4; 245 +HZR*L8; 22 +HZR*L10; 283 +HZR*L13
683 +HZR*L14; 13 +HZR*L17; 51 +HZR*L18; 45 +HZR*L23
23 +HZR*L25; 870 +HZR*L27; 9 +HZR*TX_Q_; 450 +HZR*DROP_OCR_YZ
381 +HZR*LY_R; 28 +OPQ*L2; 72 +OPQ*L28; 12 -FQR*L0
155 -FQR*L3; 3 -FQR*L8; 41 -FQR*L14; 2 -FQR*L16
2 -FQR*L17; 79 -FQR*L19; 57 -FQR*L21; 39 -FQR*L27
158 -FQR*L29; 225 -CYZ*L12; 23 -CYZ*L14; 160 -CYZ*L19
348 -CYZ*L24; 478 -CYZ*L27; 67 -CYZ*L34; 75 -CYZ*L35
563 -CYZ*DROP_OCR_YZ; 710 +OZR*L0; 98 +OZR*L3; 155 +OZR*L4
4 +OZR*L7; 12 +OZR*L12; 16 +OZR*L17; 34 +OZR*L19
41 +OZR*L22; 75 +OZR*L27; 8 +OZR*L31; 291 +OZR*L34
237 +OZR*L35; 50 +CPR*L1; 44 +CPR*L3; 22 +CPR*L6
22 +CPR*L8; 260 +CPR*L14; 65 +CPR*L28; 262 +CPR*L30
62 +CPR*L35; 36 +CPR*-OHD; 4 +CPR*DROP_OHQ_Z; 22 +CFP*L3
64 +CFP*L22; 32 +OFZ*TY_Q_; 70 +ODP*L6; 107 +ODP*L9
102 +ODP*L11; 116 +ODP*L13; 67 +ODP*L21; 72 +ODP*L23
223 +ODP*L30; 168 +ODP*L33; 47 +ODP*L36; 47 +ODP*-OHD
54 +ODP*DROP_OHP_Z; 425 +ODP*DROP_OCR_YZ; 403 +DZP*L12; 488 +DZP*L17
3 +DZP*L25; 515 +DZP*L30; 23 +DZP*L32; 47 +DZP*-OHD
104 +DZP*+OCF; 488 +DZP*DROP_OHP_Z; 4 +DZP*DROP_OHQ_Z; 524 +DZP*DROP_OCR_YZ
20 -OFP*L21; 10 -DYP*L3; 515 -DYP*L12; 23 -DYP*L34
34 -DPQ*L27; 20 +FPQ*L1; 4 +ZPR*L21; 114 +ZPR*L27
12 +PQR*L27; 60 C_OHF_Z*L27; 1 C_OCQ_YP*L1; 146 C_ODZ_P*L27
3 C_DYZ_P*L24; 110 TPX_Q_*L24; 41 TPY_Q_*L21; 41 SP_OCQH_ZP_OQ-1*L27
1 SP_OCDZ_YP_OD1*L7; 54 SP_OCDZ_YP_OD1*L16; 3 SP_OCDZ_YP_OD1*L24; 112 SP_OCDZ_YP_CZ-1*L12
31 SP_OCDZ_YP_CZ-1*L27; 1 Q_CDZY_P*L34
```

Upper bound: `-3373094413/1000000000`.

### Leaf UTLmpmmpmpmmpp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYP +ODP
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHPQ -DPQ
P DOFQR +DQR
P FOCPQ +FPQ
P FOCPR -FPR
P YOHDP +YDP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOCDZ +YDZ
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHFZ +PFZ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
C ODZ Y P -DZP 101661/147500
M OHDPZY 1
M ODHPYZ -1
M HODYZP -1
M HDOYPZ 1
M DOHZYP 1
M DHOZPY -1
M ODRPYZ -1
M ORDPZY 1
M DORZYP 1
M DROZPY -1
M RODYZP -1
M RDOYPZ 1
```

```c1top-bounds
T OHD YZP 0 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 823/1000 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
5 L0*L1*L16; 78 L0*L7*L12; 13 L0*L12*L19; 16 L0*L12*L35
144 L0*C_OCF_YP*TX_Q_; 8 L0*C_OCF_YP*LX_R; 29 L1*L1*L33; 12 L1*L2*L14
25 L1*L2*L30; 50 L1*L4*TX_Q_; 33 L1*L7*L26; 2 L1*L9*L29
2 L1*L9*L32; 2 L1*L10*L17; 15 L1*L17*L33; 5 L1*L18*L30
13 L1*L18*L33; 18 L1*L18*TX_Q_; 52 L1*L20*L27; 3 L1*L20*L34
13 L1*L21*DROP_OHP_Z; 41 L1*L24*L31; 37 L1*L24*+OCF; 24 L1*L24*DROP_OHP_Z
297 L1*L24*DROP_OHQ_Z; 13 L1*L30*L30; 7 L1*L30*-OHD; 13 L1*L31*L33
24 L1*L32*C_OCF_YP; 45 L2*L2*L21; 5 L2*L3*L4; 3 L2*L3*L8
5 L2*L4*L28; 30 L2*L6*L19; 3 L2*L9*L20; 3 L2*L9*TY_Q_
22 L2*L12*L34; 4 L2*L16*L34; 44 L2*L19*TX_Q_; 8 L2*L19*LY_R
79 L2*L20*L34; 3 L2*L30*L33; 5 L2*L32*LY_R; 3 L2*L35*L36
3 L3*L4*L21; 43 L3*L6*L27; 9 L3*L10*L17; 29 L3*L10*L30
8 L3*L12*L18; 24 L3*L18*L26; 45 L3*L21*L29; 3 L3*L27*DROP_OHP_Z
19 L4*L6*TX_Q_; 4 L4*L7*L21; 11 L4*L17*L20; 45 L4*L20*L30
19 L4*L21*L24; 40 L4*L27*DROP_OHP_Z; 50 L4*L30*L31; 5 L5*L17*L21
1 L5*L24*L27; 225 L6*L6*L27; 95 L6*L7*L27; 122 L6*L12*L27
20 L6*L18*L27; 47 L6*L20*L29; 3 L6*L21*L31; 47 L6*L21*TX_Q_
19 L6*L22*L27; 37 L6*L27*L30; 157 L6*L27*DROP_OHP_Z; 47 L7*L20*L21
3 L7*L21*L23; 27 L7*L23*L29; 3 L7*L23*TX_Q_; 35 L7*L27*L28
1 L8*L10*L17; 2 L8*L10*L32; 21 L8*L16*L27; 10 L8*L21*DROP_OHP_Z
39 L8*L24*LY_R; 4 L9*L16*L23; 5 L9*L17*LY_R; 1 L9*L23*L29
39 L9*L27*LX_R; 2 L10*L10*L30; 3 L10*L14*TX_Q_; 4 L10*L17*L22
4 L10*L23*+OCF; 3 L10*L23*DROP_OCR_YZ; 5 L10*L30*L33; 1 L10*L30*DROP_OHP_Z
3 L10*L34*DROP_OHQ_Z; 3 L11*L20*L29; 12 L11*L27*C_OCF_YP; 5 L12*L14*L35
1 L12*L17*L23; 18 L12*L19*L20; 149 L12*L27*TX_Q_; 3 L12*L36*C_OCF_YP
5 L13*L23*LY_R; 27 L14*L15*L24; 1 L14*L16*L30; 5 L14*L16*L34
30 L14*L24*TX_Q_; 32 L14*L24*LX_R; 2 L15*L19*L27; 10 L16*L21*L35
56 L16*L23*L29; 4 L16*L23*L35; 90 L16*L27*TX_Q_; 1 L16*L30*TY_Q_
3 L17*L17*L27; 2 L17*L18*L29; 12 L17*L27*L30; 5 L18*L21*L21
18 L18*L21*L30; 4 L18*L24*L29; 2 L18*L27*TX_Q_; 5 L18*L29*L29
30 L18*L29*LY_R; 5 L19*TX_Q_*TX_Q_; 33 L20*L25*L27; 20 L20*L27*DROP_OHQ_Z
3 L21*L29*L35; 7 L22*L24*LY_R; 5 L22*L26*L30; 59 L23*L24*DROP_OHP_Z
7 L23*L27*L31; 2 L23*L27*DROP_OHP_Z; 16 L23*L29*TX_Q_; 3 L23*L29*LY_R
2 L23*L31*L35; 3 L23*L35*LY_R; 33 L24*L27*TX_Q_; 1 L25*L27*L28
19 L26*L27*TX_Q_; 20 L26*TX_Q_*TX_Q_; 1 L27*L33*DROP_OHQ_Z; 7 L27*L35*L36
3 L29*L36*LY_R; 150 L29*TX_Q_*LY_R; 4 L30*C_OCF_YP*LY_R; 11 TX_Q_*LY_R*LY_R
3 LX_R*LY_R*LY_R; 4 KLOW*L12; 23 KLOW*L35; 5 CENT*L0
25 CENT*L30; 32 -OHF*L27; 6 +OYZ*L12; 6 -HYZ*L2
5 -HYZ*L18; 30 -HYZ*L31; 24 -OHZ*L30; 5 +CDP*L2
61 +CDP*L6; 50 +CDP*TX_Q_; 5 +CDP*LY_R; 8 -HFQ*L0
45 -HFQ*L24; 5 -HFQ*L29; 16 +CDQ*L21; 35 +CDQ*L27
16 -DFQ*L20; 9 -DFQ*DROP_OHP_Z; 35 -DFQ*DROP_OCR_YZ; 13 -DFQ*LX_R
3 -CYQ*L1; 132 -OHR*L1; 49 -OHR*L27; 49 +HFR*L3
17 +HFR*L4; 2 +HFR*L10; 30 +HFR*L18; 33 +HFR*L25
69 +HFR*L33; 2 +HFR*L35; 222 +HFR*DROP_OHQ_Z; 17 +HFR*TY_Q_
41 +HFR*DROP_OCR_YZ; 27 +HZR*L1; 141 +HZR*L6; 153 +HZR*L7
121 +HZR*L20; 18 +HZR*L25; 12 +HZR*DROP_OHP_Z; 57 +OPQ*L2
2 +OPQ*L16; 9 +OPQ*L31; 25 +OQR*L27; 10 -FQR*L1
33 -FQR*L6; 209 -FQR*L27; 67 -FQR*L29; 59 -FQR*DROP_OHP_Z
157 -FQR*DROP_OCR_YZ; 27 -CYZ*L6; 27 -CYZ*L7; 14 -CYZ*-OHD
13 -CYZ*DROP_OHP_Z; 79 -CYZ*DROP_OHQ_Z; 10 -CYZ*DROP_OCR_YZ; 18 +OYP*L13
88 +OYP*L20; 33 +OYP*L31; 3 +OYP*L35; 21 +OYP*+OCF
28 +OYP*DROP_OHP_Z; 4 -OZQ*L1; 28 +OZR*L20; 27 +OZR*L34
14 +OZR*LX_R; 4 +CPR*L8; 35 +CPR*L20; 8 +CPR*L24
30 +CPR*-OHD; 3 +CPR*DROP_OHP_Z; 114 +CPR*DROP_OHQ_Z; 8 +CPR*LX_R
35 -HDP*L12; 163 -HDP*L20; 41 -HDP*L31; 60 -HDP*L33
34 -HDP*DROP_OHP_Z; 104 -HDP*DROP_OHQ_Z; 45 -HDP*DROP_OCR_YZ; 12 -HDP*LX_R
11 +CFP*L24; 108 +ODY*L20; 87 +ODY*L31; 3 +ODY*L32
22 +ODY*L33; 74 +ODY*DROP_OHP_Z; 31 +ODY*DROP_OHQ_Z; 67 +HQR*L29
10 -DPQ*L29; 2 +FPQ*L17; 18 +FPQ*LY_R; 24 -YZP*L3
2 -DZP*L9; 1 -DZP*L11; 46 -DZP*L20; 50 -DZP*L31
21 -DZP*DROP_OHP_Z; 4 C_OCZ_Y*L15; 19 C_ODZ_Y*L8; 5 C_ODP_Y*L14
50 C_ODP_Y*L24; 13 C_ODQ_YP*L8; 1 C_ODQ_YP*L12; 36 C_ODQ_YP*L24
13 C_ODQ_YP*L31; 34 C_ODQ_YP*DROP_OHP_Z; 55 C_ODQ_YP*LX_R; 25 C_HCD_P*L27
50 TPX_Q_*L1; 8 TPX_Q_*L24; 23 SP_OCQH_ZP_CH-1*L27; 16 SP_OCQH_ZP_CH1*L27
22 Q_OCDP_Y*L17; 5 Q_OCDR_YZP*TX_Q_; 19 Q_ODQF_YP*L29; 6 Q_ODFR_YZP*L29
3 Q_ODPZ_Y*L10; 7 Q_ODPZ_Y*L16; 32 Q_ODPZ_Y*L20; 20 Q_OPQR_Z*L27
3 Q_CFZY_P*L27; 3 Q_CQFZ_P*L10; 39 M_HODYZP_-1_0*L8; 83 M_HODYZP_-1_0*L26
5 M_HODYZP_-1_1*L34; 5 M_HODYZP_-1_3*L15; 1 M_HODYZP_-1_3*L30; 28 M_HODYZP_-1_4*L16
79 M_HODYZP_-1_4*L20; 34 M_HODYZP_-1_4*L31; 2 M_HODYZP_-1_4*L35
```

Upper bound: `-228472376557/45500000000`.

### Leaf UTLmpmmpmpmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR +HDP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHCP -DOP
P DOHZP -DZP
P DOFPQ -DPQ
P DOFQR +DQR
P DHCYP -DYP
P FODPQ +FPQ
P FODPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
4 L0*L0*L30; 4 L0*L1*L7; 6 L0*L1*L27; 4 L0*L3*L4
11 L0*L3*L14; 36 L0*L3*L22; 36 L0*L3*L27; 44 L0*L3*L30
11 L0*L4*L17; 16 L0*L10*L25; 6 L0*L10*L27; 1 L0*L12*L35
128 L0*L17*L25; 38 L0*L17*TX_Q_; 43 L0*L17*LX_R; 376 L0*L22*LX_R
18 L0*L25*L25; 39 L0*L27*DROP_OHP_Z; 266 L0*L27*LX_R; 24 L1*L2*TX_Q_
47 L1*L3*L21; 1 L1*L6*L30; 10 L1*L8*L10; 22 L1*L8*L24
10 L1*L8*L30; 34 L1*L16*L23; 95 L1*L16*L24; 3 L1*L19*L29
18 L1*L24*L24; 27 L1*L24*L29; 4 L1*L24*LY_R; 6 L1*L27*L36
3 L1*L30*L30; 23 L2*L3*L9; 48 L2*L3*L18; 2 L2*L3*LY_R
60 L2*L4*TX_Q_; 94 L2*L16*L23; 35 L2*L16*LY_R; 49 L2*L18*L27
39 L2*L23*DROP_OHP_Z; 38 L2*L23*TX_Q_; 34 L3*L3*L4; 1 L3*L4*L4
64 L3*L4*L24; 85 L3*L4*L27; 16 L3*L5*L29; 1 L3*L6*L10
45 L3*L8*L8; 69 L3*L8*L14; 43 L3*L10*L30; 29 L3*L13*L27
27 L3*L14*L24; 57 L3*L18*L21; 66 L3*L19*L22; 42 L3*L19*L27
20 L3*L22*L22; 248 L3*L24*L27; 78 L3*L25*L25; 32 L3*L27*L34
2 L3*L29*L34; 9 L4*L6*L17; 205 L4*L6*L27; 21 L4*L12*L27
48 L4*L17*L24; 68 L4*L18*TX_Q_; 43 L4*L19*L24; 53 L4*L21*TX_Q_
55 L4*L24*TX_Q_; 24 L4*TX_Q_*LY_R; 2 L5*L19*L21; 38 L5*L21*L21
106 L6*L7*L27; 74 L6*L12*L27; 2 L6*L14*L30; 13 L6*L17*L27
9 L6*L19*L27; 174 L6*L21*L27; 80 L6*L24*L27; 83 L6*L27*L33
88 L6*L27*TY_Q_; 63 L7*L7*L23; 6 L7*L14*L24; 43 L7*L23*L29
1 L8*L10*L21; 31 L8*L10*L25; 128 L10*L12*L13; 6 L10*L13*L34
1 L10*L14*L21; 38 L10*L14*L25; 10 L10*L14*L29; 37 L10*L14*L33
10 L10*L14*LX_R; 2 L10*L21*L29; 1 L10*L21*L36; 2 L10*L21*DROP_OHQ_Z
31 L10*L24*L30; 16 L10*L24*L34; 26 L10*L26*L36; 93 L10*L30*L30
70 L10*L30*L31; 32 L10*L30*L36; 1 L10*L30*DROP_OHQ_Z; 2 L10*L30*LX_R
2 L10*L31*LX_R; 8 L11*L17*L27; 6 L12*L12*LY_R; 3 L12*L13*L27
130 L12*L17*L27; 30 L12*L27*TY_Q_; 8 L12*L27*LX_R; 2 L12*L29*L34
4 L12*L31*L34; 9 L14*L24*L30; 7 L14*L24*LX_R; 31 L14*L27*L35
115 L16*L23*L24; 98 L16*TX_Q_*LY_R; 17 L17*L20*L27; 25 L17*L21*L28
117 L17*L27*L27; 14 L17*L27*L28; 130 L17*L27*L30; 130 L17*L27*L31
19 L18*L25*L27; 8 L18*L27*L31; 98 L19*L24*L27; 107 L21*L21*L27
1 L21*L21*L28; 86 L21*L22*L27; 107 L21*L22*LX_R; 38 L21*L23*L29
91 L21*L27*L29; 68 L21*L27*C_OCF_Y; 12 L21*L27*TY_Q_; 1 L21*L27*LY_R
2 L21*L32*TX_Q_; 152 L22*L22*LX_R; 379 L22*L24*L27; 30 L22*L27*L33
53 L23*L23*L24; 81 L23*L24*L24; 168 L23*L24*L29; 25 L25*L31*L34
8 L25*L34*L34; 1 L25*L34*LX_R; 1 L26*L34*TX_Q_; 378 L27*L27*DROP_OHQ_Z
1 L27*L29*L34; 59 L27*L30*L34; 6 L27*L32*L34; 81 L27*DROP_OHQ_Z*LX_R
1 L28*TX_Q_*TX_Q_; 23 L31*L31*L35; 10 L31*L34*L35; 65 KLOW*L9
69 KLOW*L12; 203 KLOW*L17; 28 KLOW*L19; 71 KLOW*L20
3 KLOW*L23; 42 KLOW*TY_Q_; 111 CENT*L2; 6 CENT*L33
7 +OYZ*L30; 106 -HYZ*L1; 102 -HYZ*L10; 7 -HYZ*L14
2 -HYZ*L29; 3 -HYZ*L30; 102 -HYZ*L32; 59 -HYZ*DROP_OCR_YZ
3 -HYZ*LX_R; 28 +OCY*L8; 2 +OCY*L20; 21 +OCY*L33
64 +OCY*L36; 20 -OHZ*L27; 1 -OHZ*L29; 9 -HDZ*L27
25 +CDP*L0; 165 +CDP*L24; 4 +CDQ*L0; 25 +CDQ*L16
32 +CDQ*L18; 142 +CDQ*L25; 17 +CDQ*L27; 16 +CDQ*LX_R
108 -DFQ*L2; 68 -DFQ*L18; 38 -DFQ*L21; 55 -DFQ*L24
75 -DFQ*L25; 52 -DFQ*DROP_OHP_Z; 1 -DFQ*LX_R; 28 -DFQ*LY_R
22 +HFR*L2; 136 +HFR*L16; 25 +HFR*L18; 376 +HFR*L22
261 +HFR*L27; 4 +HFR*L28; 3 +HFR*L30; 3 +HFR*L31
1 +HFR*LX_R; 158 +OPQ*L2; 34 +OPQ*L5; 55 +OPQ*L21
34 +OPQ*L23; 167 +OPQ*L24; 6 +OPQ*DROP_OCR_YZ; 28 +OPQ*LY_R
97 -FQR*L7; 52 -FQR*L17; 34 -FQR*L19; 107 -FQR*L21
98 -FQR*L22; 81 -FQR*L24; 165 -FQR*L27; 10 -FQR*L29
543 -FQR*DROP_OCR_YZ; 42 -CYZ*L0; 159 -CYZ*L6; 151 -CYZ*L8
7 -CYZ*L15; 41 -CYZ*L21; 31 -CYZ*L24; 116 -CYZ*L29
41 -CYZ*TX_Q_; 31 -CYZ*LY_R; 8 +OYP*L27; 29 +OZR*L2
58 +OZR*L11; 6 +OZR*L21; 6 +OZR*L32; 9 +OZR*L36
11 +OZR*-OHD; 6 +OZR*TX_Q_; 8 +OZR*LX_R; 48 +CPR*L2
101 +CPR*L20; 34 +CPR*L23; 50 +CPR*L28; 117 +CPR*DROP_OCR_YZ
192 -DPR*L1; 11 -DPR*L4; 213 -DPR*L12; 213 -DPR*L33
217 -DPR*-OHD; 268 -DPR*DROP_OHQ_Z; 11 +HDP*L4; 238 +HDP*L12
74 +HDP*L21; 34 +HDP*L23; 169 +HDP*L25; 238 +HDP*L33
185 +HDP*DROP_OHQ_Z; 43 +HDP*LX_R; 75 +ODP*L27; 55 -DPQ*L21
28 +FPQ*L0; 34 +FPQ*L22; 26 C_OCZ_Y*L8; 53 C_OCQ_YP*L6
27 C_HDR_P*L29; 17 C_CDR_P*L0; 50 C_CDR_P*L3; 1 C_CDR_P*L4
18 C_CDR_P*L18; 248 C_CDR_P*L24; 48 C_CDR_P*TX_Q_; 1 SP_OCQR_ZP_OQ-1*L27
117 Q_CDFR_P*L27; 20 Q_CQFR_P*L22
```

Upper bound: `-35041367/40000000`.

### Leaf UTLmpmmpmppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR +DPR -CFP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOCPR -DOP
P DOFPQ -DPQ
P DOFQR +DQR
P DOZPR -DZP
P DHCPR -DHP
P DHFYP -DYP
P FOCYP +FYP
P FODPQ +FPQ
P FODPR -FPR
P FHCZP +FZP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHZQ -PZQ
P POCQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
3 L0*L1*TX_Q_; 1 L0*L2*L19; 1 L0*L2*L27; 1 L0*L8*LY_R
3 L0*L21*L21; 5 L1*L6*L17; 1 L1*L6*LY_R; 1 L1*L7*L34
1 L1*L8*TY_Q_; 1 L1*L9*L22; 4 L1*L16*L23; 4 L1*L18*TX_Q_
8 L1*L20*L24; 3 L1*L20*TX_Q_; 1 L1*L24*L34; 1 L1*L24*DROP_OHP_Z
6 L1*L24*TX_Q_; 1 L1*L27*L30; 1 L1*L28*L31; 1 L2*L3*L5
2 L2*L3*L23; 1 L2*L3*TY_Q_; 16 L2*L7*L24; 6 L2*L19*L21
1 L2*L19*L29; 5 L2*L19*LX_R; 7 L2*L20*L23; 8 L2*L21*-OHD
6 L2*L23*DROP_OHP_Z; 16 L2*L24*L33; 7 L2*L24*TY_Q_; 1 L2*L27*L33
2 L2*L27*DROP_OCR_YZ; 2 L2*L28*DROP_OHP_Z; 3 L2*L28*DROP_OCR_YZ; 1 L2*L29*LY_R
30 L3*L4*L6; 3 L3*L4*L20; 5 L3*L24*L26; 16 L3*L24*L29
6 L4*L6*LX_R; 2 L4*L22*L27; 1 L4*L23*L24; 1 L5*L12*L27
4 L5*L21*L29; 2 L5*L23*LY_R; 10 L5*L24*L29; 6 L6*L6*L27
1 L6*L12*L21; 1 L6*L12*L27; 14 L6*L17*L18; 1 L6*L21*L21
1 L6*L21*L31; 7 L6*L23*L24; 38 L6*L27*C_OCF_Y; 1 L6*TX_Q_*TX_Q_
2 L7*L7*L23; 1 L7*L21*L29; 7 L7*L23*L24; 13 L7*L29*LY_R
3 L8*L21*L28; 2 L8*L27*-OHD; 3 L9*L17*L27; 1 L12*L20*L27
9 L12*L23*L24; 1 L12*L27*L29; 1 L14*L24*LY_R; 1 L15*L27*LX_R
14 L16*L16*L27; 7 L18*L24*TX_Q_; 5 L19*L19*L29; 3 L19*L21*L24
1 L21*L21*L21; 5 L21*L21*L28; 2 L21*L23*L24; 7 L21*L23*L29
1 L21*L24*L30; 7 L21*L26*TX_Q_; 3 L21*L28*L31; 6 L21*L29*-OHD
1 L21*L30*LX_R; 1 L21*TY_Q_*DROP_OCR_YZ; 5 L22*L24*L27; 10 L23*L24*L33
10 L23*L24*DROP_OHP_Z; 1 L23*L27*TX_Q_; 14 L24*L27*+OCF; 20 L24*C_OCF_Y*LY_R
3 L26*L29*TX_Q_; 2 L27*L27*C_OCF_Y; 2 L27*L27*TX_Q_; 1 L27*L28*L33
1 L27*L30*DROP_OHQ_Z; 3 L27*L31*DROP_OHP_Z; 1 L28*L29*L29; 1 TX_Q_*TX_Q_*TX_Q_
5 TX_Q_*TX_Q_*LY_R; 3 TX_Q_*LY_R*LY_R; 5 KLOW*L6; 5 KLOW*L17
6 KLOW*L19; 9 KLOW*L20; 1 KLOW*L27; 1 KLOW*L28
12 KLOW*DROP_OHQ_Z; 8 KLOW*LX_R; 4 TOPCOUNT*L2; 5 +CDP*L18
3 +DFP*L3; 32 +DFP*L17; 5 +DFP*L18; 46 +DFP*DROP_OHP_Z
23 +DFP*DROP_OHQ_Z; 7 +DFP*LX_R; 4 -HFQ*L2; 4 -OHR*L21
18 +HFR*L20; 6 +HFR*L22; 9 +HFR*L25; 16 +HFR*L29
12 +HFR*+OCF; 1 +HFR*C_OHD_Z; 1 +HFR*DROP_OHP_Z; 4 +OPQ*L1
6 +OPQ*L2; 15 +OPQ*L6; 6 -FQR*L1; 1 -FQR*L4
2 -FQR*L21; 2 -FQR*L24; 10 -FQR*C_OCF_Y; 11 -FQR*DROP_OHP_Z
5 -FQR*DROP_OCR_YZ; 2 -FQR*LX_R; 1 -CPQ*L3; 5 +DPR*L7
7 +DPR*L29; 3 +DPR*C_OCF_Y; 14 +DPR*DROP_OHP_Z; 11 +DPR*DROP_OHQ_Z
12 -CFP*L5; 5 -CFP*L6; 12 -CFP*L21; 7 -CFP*L28
12 -CFP*DROP_OHQ_Z; 2 -CFP*LX_R; 2 +ODP*L2; 8 +ODP*L24
1 -DPQ*L24; 8 -DPQ*L29; 3 +HDP*L29; 7 +PQR*L2
14 C_OCQ_YP*L6; 42 C_CDF_P*L6; 14 C_CDF_P*L18; 10 C_CDF_P*L25
2 C_CDF_P*L26; 17 C_DFR_P*L2; 1 Q_HDQF_P*L24; 9 Q_HDFR_P*L24
12 Q_CDQF_P*DROP_OHP_Z; 4 Q_CDQF_P*TX_Q_; 9 Q_DQFR_P*L21
```

Upper bound: `-26721791/1000000000`.

### Leaf UTLmpmmpmpppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR +DPR +CFP -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYQ +OYQ
P OHDYR +OYR
P OHDZQ +ODZ
P OHFPQ -OFP
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOCPR -DOP
P DOFYP -DYP
P DOFPQ -DPQ
P DOFQR +DQR
P DOZPR -DZP
P DHCPR -DHP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
71 L0*L3*L3; 1 L0*L3*L10; 91 L0*L3*L12; 41 L0*L3*L29
135 L0*L3*L30; 36 L0*L3*DROP_OHP_Z; 5 L0*L5*L21; 32 L0*L7*L12
106 L0*L7*L23; 7 L0*L7*L27; 13 L0*L7*L35; 4 L0*L10*L27
1 L0*L12*L35; 3 L0*L27*L30; 17 L0*TX_Q_*LX_R; 4 L1*L3*L14
39 L1*L3*L23; 34 L1*L4*C_OCF_YP; 3 L1*L4*LX_R; 12 L1*L6*L10
1 L1*L9*L35; 2 L1*L10*L17; 29 L1*L13*L24; 3 L1*L18*L24
1 L1*L24*L31; 45 L1*L24*DROP_OHP_Z; 96 L1*L24*TY_Q_; 10 L1*L26*C_OCF_YP
23 L1*L31*L31; 18 L1*L31*L34; 41 L2*L17*LY_R; 87 L2*L24*TY_Q_
89 L3*L4*L17; 17 L3*L4*L25; 66 L3*L4*L30; 154 L3*L4*DROP_OHQ_Z
44 L3*L4*TX_Q_; 3 L3*L7*L14; 14 L3*L8*L23; 194 L3*L10*L20
5 L3*L10*L25; 78 L3*L10*DROP_OHP_Z; 5 L3*L14*L14; 3 L3*L14*L18
3 L3*L14*L24; 64 L3*L16*L23; 48 L3*L17*L27; 20 L3*L18*L21
120 L3*L18*L23; 1 L3*L19*L31; 112 L3*L20*L23; 66 L3*L23*L30
36 L3*L23*TX_Q_; 15 L3*L24*L27; 1 L3*L26*TX_Q_; 9 L3*L27*-OHD
6 L3*L34*TX_Q_; 78 L4*L9*L16; 5 L4*L9*L18; 174 L4*L9*L20
9 L4*L9*L34; 7 L4*L9*LX_R; 10 L4*L12*L27; 105 L4*L12*LY_R
2 L4*L13*TX_Q_; 4 L4*L15*L16; 115 L4*L16*L27; 1 L4*L16*L36
212 L4*L16*TX_Q_; 52 L4*L18*TX_Q_; 5 L4*L19*L31; 2 L4*L20*L35
1 L4*L24*L36; 98 L4*L25*TX_Q_; 9 L5*L10*L12; 2 L5*L10*L21
56 L5*L24*L27; 36 L5*L24*L29; 4 L6*L9*L10; 1 L6*L14*L27
25 L6*L18*TX_Q_; 8 L6*L31*L34; 147 L7*L7*L23; 62 L7*L7*L26
173 L7*L7*LY_R; 29 L7*L9*L26; 5 L7*L14*L28; 103 L7*L18*L26
63 L7*L19*L23; 1 L7*L19*L36; 26 L7*L21*LY_R; 11 L7*L23*L24
5 L7*L23*L28; 93 L7*L24*L27; 159 L7*L24*LY_R; 88 L7*L26*TX_Q_
6 L7*LY_R*LY_R; 1 L8*L10*L21; 22 L8*L18*L29; 29 L8*L21*L27
5 L8*L24*TY_Q_; 3 L8*L27*L30; 5 L8*L30*L30; 10 L9*L9*L10
10 L9*L9*L12; 32 L9*L9*L34; 23 L9*L15*L31; 52 L9*L31*L34
5 L9*L35*L35; 10 L10*L12*L29; 71 L10*L12*L30; 78 L10*L12*L31
2 L10*L12*L35; 1 L10*L12*LY_R; 1 L10*L13*L24; 6 L10*L14*L25
2 L10*L14*L32; 2 L10*L14*L36; 2 L10*L18*L33; 1 L10*L19*C_OCF_YP
2 L10*L19*DROP_OCR_YZ; 6 L10*L20*L30; 1 L10*L21*L32; 4 L10*L27*L35
2 L10*L31*C_OHD_Z; 4 L10*L31*TX_Q_; 4 L10*L32*DROP_OCR_YZ; 2 L10*L34*L35
2 L10*L34*L36; 1 L10*L35*DROP_OHQ_Z; 5 L12*L12*L35; 1 L12*L16*L27
20 L12*L21*L27; 6 L12*L27*L27; 3 L12*L27*L31; 62 L12*L31*L34
13 L12*L34*L35; 52 L14*L21*L24; 6 L14*L21*L31; 55 L14*L23*L24
38 L14*L24*L28; 3 L14*L24*L30; 55 L14*L24*TY_Q_; 14 L14*L24*LX_R
57 L17*L23*L24; 43 L17*L24*L28; 93 L17*L26*L27; 17 L17*L26*L29
18 L17*L26*TY_Q_; 2 L17*L27*L32; 20 L18*L21*L21; 57 L18*L21*L24
18 L18*L26*TX_Q_; 2 L18*L31*L34; 5 L19*L21*L29; 93 L19*L24*L26
2 L19*L26*L35; 20 L19*TX_Q_*TX_Q_; 112 L21*L21*L27; 1 L21*L23*L23
63 L21*L23*L24; 36 L21*L23*L26; 66 L21*L24*L27; 26 L21*L24*L28
51 L21*L28*L29; 64 L21*L28*L30; 58 L21*L30*LY_R; 90 L22*L24*L27
9 L22*L24*TY_Q_; 1 L23*L23*TX_Q_; 66 L23*L24*L24; 9 L23*L24*L28
87 L23*L24*L29; 4 L23*L24*L30; 45 L23*L26*TX_Q_; 1 L24*L24*L34
15 L24*L27*L33; 52 L24*L27*TY_Q_; 71 L24*L27*LY_R; 14 L24*L28*LY_R
71 L24*LY_R*LY_R; 28 L26*L26*TX_Q_; 28 L26*L30*TX_Q_; 49 L26*TX_Q_*TX_Q_
112 L26*TX_Q_*LY_R; 6 L27*L34*LX_R; 3 L30*L30*LY_R; 4 L30*L32*LY_R
18 L31*L34*L34; 2 L31*L34*LX_R; 1 L31*L34*LY_R; 1 L32*TX_Q_*LY_R
1 L33*TX_Q_*LY_R; 1 TX_Q_*LY_R*LY_R; 7 KLOW*L3; 38 KLOW*L12
6 KLOW*L17; 1 KLOW*L18; 86 KLOW*L22; 58 KLOW*TX_Q_
4 CENT*L28; 3 TOPCOUNT*L21; 78 -HYZ*L2; 13 -HYZ*L4
2 -HYZ*L10; 13 -HYZ*L12; 40 -HYZ*L21; 7 -HYZ*L29
57 -HYZ*L31; 46 -HYZ*DROP_OHQ_Z; 3 -HYZ*LX_R; 17 +OCY*L6
108 +OCY*L13; 78 +OCY*L16; 81 +OCY*L20; 66 +OCY*L30
13 +OCY*L34; 109 +OCY*DROP_OHQ_Z; 3 +OCY*LY_R; 73 -OHZ*L27
2 +DFP*L12; 5 +DFP*L14; 45 +DFP*L24; 3 +DFP*LY_R
2 -CYP*LY_R; 176 +CDQ*L3; 191 +CDQ*L8; 123 +CDQ*L19
66 +CDQ*L30; 176 +CDQ*L31; 46 +CDQ*-OHD; 17 +CDQ*DROP_OHP_Z
103 +CDQ*DROP_OHQ_Z; 44 +CDQ*TX_Q_; 188 -DFQ*L18; 6 -OHR*L10
34 -OHR*L14; 3 -OHR*L23; 51 -OHR*LY_R; 148 +HFR*L7
39 +HFR*L13; 222 +HFR*L22; 5 +HFR*L36; 42 +HFR*TX_Q_
6 +HFR*LY_R; 114 +HZR*L5; 6 +HZR*L11; 28 +HZR*L17
6 +HZR*L27; 3 +HZR*L33; 28 +HZR*DROP_OHP_Z; 1 +HZR*TX_Q_
15 +HZR*LX_R; 10 +OPQ*L1; 55 +OPQ*L3; 160 +OPQ*L6
1 +OPQ*L12; 63 +OPQ*L21; 8 +OPQ*L23; 106 +OPQ*L25
98 +OPQ*L27; 5 +OPQ*L28; 1 +OPQ*L35; 2 +OPQ*-OHD
114 -FQR*L1; 3 -FQR*L4; 182 -FQR*L7; 1 -FQR*L12
63 -FQR*L21; 9 -FQR*L23; 66 -FQR*L24; 1 -FQR*L35
195 -FQR*DROP_OHP_Z; 141 -FQR*DROP_OCR_YZ; 13 -CYZ*L6; 128 -CYZ*L12
2 -CYZ*L18; 4 -CYZ*L23; 5 -CYZ*L24; 144 -CYZ*L27
66 -CYZ*L30; 13 -CYZ*L34; 150 -CYZ*C_OHD_Z; 4 -CYZ*TY_Q_
145 -CYZ*LY_R; 4 -OZP*L24; 67 +OZR*L0; 19 +OZR*L4
49 +OZR*L21; 110 +DPR*L1; 212 +DPR*L7; 1 +DPR*L12
195 +DPR*L20; 93 +DPR*L27; 107 +DPR*-OHD; 107 +DPR*C_OCF_YP
22 +CFP*L8; 4 +CFP*L15; 89 +CFP*L21; 117 +CFP*L22
2 +CFP*L28; 1 +CFP*L35; 1 +CFP*+OCF; 64 +CFP*DROP_OHQ_Z
97 +CFP*TX_Q_; 126 +CFP*TY_Q_; 107 +CFP*LX_R; 2 +CFP*LY_R
5 -ODY*L6; 168 -ODY*L20; 78 -ODY*DROP_OHP_Z; 24 -ODY*DROP_OHQ_Z
2 -ODY*LX_R; 3 +HQR*L4; 88 +HDP*L24; 107 +FPQ*L3
1 +FPQ*L10; 273 +FPQ*L20; 210 +FPQ*L21; 115 +FPQ*L29
1 +FPQ*L30; 3 +FPQ*-OHD; 8 +FPQ*TY_Q_; 117 +FPQ*DROP_OCR_YZ
150 +FPQ*LX_R; 5 +ZPQ*L24; 12 C_OCD_Y*L1; 14 C_OCD_Y*L9
59 TPX_Q_*L21; 122 TPX_Q_*L24
```

Upper bound: `-2702834069/500000000`.

### Leaf UTLmpmmpmpppp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR +DPR +CFP +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYP +ODP
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHPR -DHP
P DOFPQ -DPQ
P DOFQR +DQR
P DOYPR -DYP
P DOZPR -DZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOCDZ +YDZ
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
20 L0*L1*L12; 834 L0*L12*L30; 62 L0*L27*L28; 35 L0*L27*L31
1164 L0*L27*TX_Q_; 608 L1*L1*L24; 59 L1*L1*L30; 27 L1*L2*L34
27 L1*L3*L3; 4 L1*L3*L4; 48 L1*L3*L10; 807 L1*L3*L12
52 L1*L4*L30; 206 L1*L7*L7; 41 L1*L7*L21; 1 L1*L7*L23
387 L1*L7*L30; 58 L1*L10*TX_Q_; 362 L1*L12*L12; 530 L1*L12*L34
298 L1*L14*L30; 19 L1*L21*L24; 5 L1*L23*L24; 4 L1*L23*L29
154 L1*L24*L24; 432 L1*L24*L29; 1103 L1*L24*L30; 62 L1*L27*L32
327 L1*L29*L30; 59 L1*L30*TX_Q_; 129 L1*L30*LY_R; 3 L1*L31*TX_Q_
335 L2*L2*L27; 139 L2*L3*L23; 285 L2*L10*TX_Q_; 1 L2*L14*TX_Q_
128 L2*L18*L27; 5 L2*L18*TX_Q_; 155 L2*L27*DROP_OHP_Z; 12 L3*L3*L4
53 L3*L3*L8; 489 L3*L3*L14; 60 L3*L3*L22; 113 L3*L4*L24
159 L3*L4*L30; 105 L3*L8*L8; 243 L3*L8*L14; 104 L3*L8*L23
249 L3*L10*L21; 285 L3*L10*L29; 925 L3*L12*L14; 70 L3*L14*L14
3 L3*L21*L34; 53 L3*L21*TY_Q_; 512 L3*L22*L27; 288 L3*L23*L30
213 L3*L27*L30; 31 L3*LY_R*LY_R; 123 L4*L8*L30; 185 L4*L12*L30
10 L4*L18*L29; 304 L4*L20*L30; 53 L4*L21*L24; 55 L4*L21*TX_Q_
5 L4*L23*L24; 18 L4*L24*L25; 4 L4*L24*LX_R; 136 L4*L25*TX_Q_
62 L4*L27*-OHD; 23 L4*L30*TX_Q_; 71 L5*L21*L21; 338 L5*L27*TX_Q_
349 L6*L7*L27; 6 L6*L12*L27; 326 L6*L18*L27; 149 L6*L21*L27
467 L6*L22*L27; 225 L6*L25*L27; 685 L6*L27*L30; 158 L6*L27*LY_R
138 L7*L7*L23; 100 L7*L21*L23; 94 L7*L23*L24; 83 L7*L23*L29
53 L8*L10*L30; 158 L8*L23*L27; 249 L8*L27*L27; 213 L8*L27*L30
213 L8*L27*L31; 264 L8*L27*DROP_OHQ_Z; 461 L10*L12*L30; 74 L10*L12*L32
46 L10*L12*L35; 120 L10*L14*L30; 58 L10*L21*L27; 249 L10*L24*L27
213 L10*L24*L36; 62 L11*L27*-OHD; 216 L12*L21*L27; 39 L12*L21*L28
959 L12*L27*L30; 213 L12*L27*L32; 239 L12*L27*-OHD; 308 L12*L27*C_OCF_YP
3 L12*L27*LX_R; 959 L14*L24*L30; 22 L14*L24*TX_Q_; 52 L14*L27*+OCF
22 L16*L24*L27; 31 L17*L22*L24; 14 L17*L23*TX_Q_; 437 L18*L21*L27
14 L18*L21*TX_Q_; 13 L18*L24*L29; 127 L18*L24*TX_Q_; 279 L18*L27*C_OCF_YP
82 L18*L29*TX_Q_; 141 L21*L21*L23; 251 L21*L21*L27; 251 L21*L23*L24
69 L21*L23*L27; 78 L21*L23*L29; 141 L21*L23*TX_Q_; 237 L21*L27*L30
69 L21*L27*TY_Q_; 437 L22*L27*DROP_OHP_Z; 49 L23*L24*L29; 158 L23*L27*L31
360 L24*L27*C_OCF_YP; 357 L24*L29*LY_R; 31 L27*L27*C_OCF_YP; 3 L27*L30*LX_R
3 L27*L31*LX_R; 26 L27*L33*L34; 96 L27*DROP_OHP_Z*TX_Q_; 335 L29*L29*LY_R
32 L29*L36*LY_R; 362 L31*L31*L34; 53 L31*L31*L35; 58 L31*L34*L34
58 L35*TX_Q_*LY_R; 124 FAN*L27; 87 CENT*L26; 1 CENT*L29
78 +OCD*L27; 23 +CDF*L12; 374 +CDF*L27; 443 +OYZ*L8
108 -HYZ*L4; 362 -HYZ*L9; 572 -HYZ*L14; 369 -HYZ*L21
340 -HYZ*L29; 464 -HYZ*L36; 711 -HYZ*C_OCF_YP; 367 -HYZ*DROP_OHQ_Z
340 -HYZ*LX_R; 131 -HYZ*LY_R; 8 +CDY*L1; 211 +CDY*L3
234 +CDY*L9; 108 +CDY*L14; 234 +CDY*L20; 4 +CDY*L22
29 +CDY*L24; 104 +CDY*L35; 297 +CDY*DROP_OHQ_Z; 58 +CFY*L27
116 +CDP*L1; 50 +CDP*L6; 68 +CDP*L21; 5 +CDP*L23
116 +CDP*-OHD; 22 +CDP*LX_R; 199 +CDQ*L2; 104 +CDQ*L8
155 +CDQ*L16; 35 +CDQ*L19; 10 +CDQ*L20; 288 +CDQ*L30
4 +CDQ*L32; 121 +CDQ*TX_Q_; 670 +CDQ*DROP_OCR_YZ; 49 +CDQ*LX_R
84 -DFQ*L8; 67 -DFQ*L17; 127 -DFQ*L21; 358 -OHR*L27
195 +HFR*L8; 50 +HFR*L21; 1160 +HFR*L22; 132 +HFR*L24
158 +HFR*L26; 533 +HFR*L29; 516 +HFR*L30; 141 +HFR*L33
32 +HFR*L36; 9 +HFR*TX_Q_; 1052 +HZR*L1; 720 +HZR*L14
22 +HZR*L24; 115 +HZR*L29; 732 +HZR*L30; 444 +HZR*-OHD
22 +HZR*DROP_OHQ_Z; 200 +HZR*DROP_OCR_YZ; 55 +OPQ*L6; 73 +OPQ*L21
296 +OPQ*L27; 13 +OPQ*LX_R; 35 -FQR*L5; 143 -FQR*L7
84 -FQR*L9; 61 -FQR*L17; 40 -FQR*L18; 251 -FQR*L21
1164 -FQR*L27; 104 -FQR*DROP_OHP_Z; 1164 -FQR*LY_R; 126 -CYZ*L3
443 -CYZ*L8; 120 -CYZ*L10; 925 -CYZ*L12; 12 -CYZ*L14
896 -CYZ*L21; 108 -CYZ*L23; 552 -CYZ*L24; 201 -CYZ*-OHD
898 -CYZ*DROP_OHQ_Z; 108 -CYZ*TY_Q_; 145 -CYZ*LY_R; 390 +OZR*L0
71 +OZR*L6; 450 +OZR*L27; 170 +OZR*L30; 156 +OZR*L31
239 +OZR*L32; 57 +OZR*L33; 694 +OZR*L34; 225 +OZR*C_OCF_YP
22 +OZR*LX_R; 40 +DPR*L22; 22 +DPR*L24; 155 +DPR*C_OCF_YP
140 +DPR*TX_Q_; 4 +CFP*L7; 15 +CFP*L22; 408 +CFP*L27
25 +CFP*TY_Q_; 104 +ODY*L10; 58 +ODY*L21; 4 +ODY*L23
288 +ODY*L24; 687 +ODY*L30; 227 +ODY*L31; 236 +ODY*L33
108 +ODY*L36; 64 +ODY*-OHD; 737 +ODY*C_OCF_YP; 61 +ODY*LX_R
78 +FPQ*L2; 35 +FPQ*L4; 59 +FPQ*L20; 629 +FPQ*L26
78 +FPQ*L29; 64 +FPQ*DROP_OCR_YZ; 249 -YZR*L27; 4 C_ODQ_YP*L1
267 C_ODQ_YP*L2; 4 C_ODQ_YP*L10; 160 C_ODQ_YP*L17; 130 C_ODQ_YP*L21
146 C_ODQ_YP*L27; 76 C_ODQ_YP*L31; 26 Q_OYRH_Z*L14; 908 Q_OCDZ_Y*L8
185 Q_OCDZ_Y*L30; 219 Q_OCDQ_YP*L27
```

Upper bound: `-260022021/250000000`.

### Leaf UTLmpmmpp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR +CPQ`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFPQ -CFP
P COFPR +CPR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOCYP +FYP
P FODPQ +FPQ
P FODPR -FPR
P FHCZP +FZP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHFQ -PHQ
P POHZQ -PZQ
P POCYQ -PYQ
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 279/1000 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
3 L0*L0*L33; 1 L0*L1*L17; 14 L0*L3*L16; 7 L0*L3*L18
13 L0*L3*TX_Q_; 2 L0*L19*L21; 20 L0*L20*LX_R; 10 L0*L21*TX_Q_
1 L0*L23*L33; 7 L0*L24*L28; 1 L1*L1*L12; 2 L1*L2*L28
2 L1*L5*L7; 21 L1*L6*L17; 20 L1*L6*TX_Q_; 1 L1*L12*L22
28 L1*L24*L29; 1 L1*L24*TX_Q_; 9 L1*L24*TY_Q_; 10 L2*L3*L19
56 L2*L6*TY_Q_; 6 L2*L17*L22; 13 L2*L19*TY_Q_; 114 L2*L20*TY_Q_
7 L2*L20*LY_R; 1 L2*L27*DROP_OHQ_Z; 2 L2*L27*DROP_OCR_YZ; 8 L2*L27*LX_R
13 L2*+OCF*TY_Q_; 15 L2*DROP_OHP_Z*TY_Q_; 14 L2*TX_Q_*LY_R; 26 L2*TY_Q_*TY_Q_
36 L2*TY_Q_*LX_R; 4 L3*L4*L18; 5 L3*L4*TX_Q_; 3 L3*L23*L26
8 L3*L24*DROP_OCR_YZ; 10 L4*L6*TY_Q_; 7 L4*L21*L24; 7 L4*L23*TX_Q_
8 L4*L24*L27; 3 L5*L5*L21; 7 L5*L21*TY_Q_; 123 L6*L18*TX_Q_
5 L6*L18*TY_Q_; 16 L6*L21*L28; 12 L6*L21*TY_Q_; 1 L6*L22*L27
2 L6*L23*LY_R; 1 L6*L24*L31; 12 L6*L24*TY_Q_; 2 L6*L25*L27
14 L6*L27*+OCF; 119 L6*L27*DROP_OHP_Z; 33 L6*L27*DROP_OHQ_Z; 20 L7*L23*TX_Q_
1 L7*L24*+OCF; 1 L9*L24*L29; 1 L10*L26*L30; 2 L10*L27*DROP_OCR_YZ
2 L11*L26*L27; 1 L12*L27*L34; 1 L12*L27*C_OCF_Y; 31 L16*L26*TX_Q_
37 L17*L20*TY_Q_; 3 L17*L21*L24; 3 L17*L24*DROP_OHQ_Z; 1 L17*L24*TY_Q_
5 L17*L25*L27; 6 L17*L28*L29; 1 L17*-OHD*-OHD; 24 L18*TX_Q_*TX_Q_
2 L18*TX_Q_*LY_R; 4 L19*L21*L28; 9 L19*L24*L29; 5 L20*L24*L25
8 L21*L21*L24; 6 L21*L22*L27; 4 L21*L23*L24; 8 L21*L24*DROP_OHQ_Z
52 L21*L27*DROP_OHP_Z; 2 L21*L27*LX_R; 17 L21*L28*LX_R; 7 L21*TY_Q_*TY_Q_
2 L22*L27*+OCF; 7 L23*L23*TX_Q_; 83 L23*L24*DROP_OHP_Z; 6 L23*L24*TY_Q_
2 L23*L26*DROP_OHP_Z; 5 L24*L24*TX_Q_; 5 L24*L25*L29; 63 L24*L27*DROP_OHP_Z
10 L24*L27*TY_Q_; 12 L24*L28*L29; 68 L24*DROP_OHP_Z*LY_R; 2 L26*L26*L29
4 L27*TX_Q_*TX_Q_; 6 TX_Q_*DROP_OCR_YZ*LY_R; 3 KLOW*L1; 11 KLOW*L6
12 KLOW*L20; 8 KLOW*L22; 2 KLOW*L28; 20 KLOW*DROP_OHP_Z
23 KLOW*TX_Q_; 1 +OYZ*L27; 21 +CDP*L20; 4 +CDP*L23
19 +CDP*TX_Q_; 8 +DFP*L20; 33 -HFQ*L7; 5 -HFQ*L18
14 -HFQ*L21; 4 -HFQ*L26; 7 -DFQ*L2; 10 -DFQ*L4
21 -DFQ*L6; 5 -DFQ*L19; 24 -DFQ*L21; 1 -DFQ*L22
6 -DFQ*DROP_OCR_YZ; 5 -OHR*L1; 17 +HFR*L22; 13 +HFR*L29
2 +HFR*+OCF; 68 +HFR*DROP_OHP_Z; 2 +HFR*TY_Q_; 1 +DFR*L17
2 +DFR*L27; 3 +HZR*L1; 6 -FQR*L7; 2 -FQR*L25
20 -FQR*L29; 84 -FQR*DROP_OHP_Z; 6 -FQR*TY_Q_; 10 -FQR*LY_R
1 -OZQ*L26; 3 +OZR*L0; 3 +CPQ*L7; 9 +CPQ*L24
7 +CPQ*C_OHD_Z; 12 +CPQ*DROP_OHQ_Z; 25 +CPQ*TX_Q_; 9 +CPQ*TY_Q_
4 +HQR*TX_Q_; 10 -CFP*L3; 10 -DPQ*L7; 4 -DPQ*L23
3 -DPQ*L29; 7 +FPQ*L1; 10 +FPQ*L4; 90 +FPQ*L6
13 +FPQ*L23; 2 +FPQ*DROP_OCR_YZ; 9 +FPQ*LX_R; 13 C_CDQ_P*L1
45 C_CDQ_P*L6; 122 C_CDQ_P*L20; 45 C_CDQ_P*L21; 13 C_CDQ_P*L28
13 C_CDQ_P*C_OCF_Y; 5 C_CDQ_P*DROP_OHP_Z; 17 C_CDQ_P*TY_Q_; 25 C_CDQ_P*LX_R
21 TPX_Q_*L29; 24 TPY_Q_*L2; 1 Q_OCQZ_Y*L27; 4 Q_CDQF_P*L4
31 Q_CDQF_P*L20; 16 Q_CDQF_P*TX_Q_
```

Upper bound: `-839794803/1000000000`.

### Leaf UTLmpmp

Assumptions: `-CYZ +OYP -OZP +OZQ`.

```c1top-geometry
P OHFZQ -OFZ
P OHFZR +OZR
P OHFPQ -OFP
P OHYZQ +OYQ
P OHYZR +OYR
P OCFYZ -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FODPQ +FPQ
P FODPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHFP -ZFP
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P ZOFQR +ZQR
P POHFQ -PHQ
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
5 L0*L0*L27; 1 L0*L2*L3; 14 L0*L2*TX_Q_; 2 L0*L6*L35
12 L0*L12*L23; 1 L0*L18*L30; 2 L0*L20*L27; 4 L0*L24*L31
9 L0*TX_Q_*TX_Q_; 2 L0*TX_Q_*LY_R; 13 L1*L3*L12; 24 L1*L8*L30
9 L1*L9*L9; 1 L1*L10*L20; 4 L1*L12*L24; 21 L1*L13*L33
1 L1*L18*L31; 10 L1*L20*L30; 11 L1*L23*LY_R; 9 L1*L24*L29
21 L1*L24*L30; 11 L1*L24*-OHD; 2 L1*L24*DROP_OHP_Z; 3 L1*L27*L30
13 L1*L30*L30; 47 L1*L30*L31; 5 L1*L30*DROP_OHP_Z; 1 L2*L3*L24
16 L2*L10*TX_Q_; 1 L2*L14*LX_R; 11 L2*L30*LY_R; 17 L3*L4*L6
16 L3*L4*L20; 10 L3*L5*L12; 1 L3*L5*DROP_OHP_Z; 9 L3*L6*L13
26 L3*L6*L23; 4 L3*L6*L30; 7 L3*L7*L15; 21 L3*L8*L14
4 L3*L8*TX_Q_; 2 L3*L11*L18; 14 L3*L12*L20; 1 L3*L13*L18
4 L3*L14*L16; 7 L3*L14*L22; 2 L3*L14*L28; 15 L3*L14*+OCF
5 L3*L17*L32; 5 L3*L18*L20; 2 L3*L18*L36; 3 L3*L20*L23
69 L3*L20*L30; 67 L3*L21*L30; 10 L3*L21*L32; 2 L3*L23*L31
2 L3*L27*L29; 10 L3*L30*TY_Q_; 1 L3*L31*LY_R; 13 L3*L36*TX_Q_
1 L4*L15*L24; 44 L4*L26*TX_Q_; 5 L5*L12*L24; 25 L6*L6*TY_Q_
36 L6*L8*L27; 5 L6*L9*L9; 60 L6*L10*L30; 25 L6*L10*L31
28 L6*L13*L27; 4 L6*L14*L19; 109 L6*L14*L30; 6 L6*L14*TY_Q_
2 L6*L16*L27; 6 L6*L18*L30; 22 L6*L21*TY_Q_; 3 L6*L22*LX_R
2 L6*L26*L27; 9 L6*L27*L28; 5 L6*L27*L29; 3 L7*L7*L23
5 L7*L16*L23; 19 L7*L23*TX_Q_; 5 L8*L8*TX_Q_; 2 L8*L12*L23
8 L8*L14*L27; 30 L8*L23*L24; 20 L8*L23*L29; 11 L8*L23*L30
4 L8*L23*TX_Q_; 13 L8*L26*TX_Q_; 2 L8*L32*TX_Q_; 11 L9*L10*L33
1 L9*L15*L36; 11 L9*L22*L33; 2 L9*L26*L27; 31 L9*L31*L34
1 L9*L34*L34; 28 L10*L12*L21; 20 L10*L12*L30; 55 L10*L12*L33
16 L10*L13*L18; 17 L10*L14*TX_Q_; 37 L10*L16*L30; 37 L10*L16*L31
7 L10*L20*L30; 11 L10*L20*L33; 8 L10*L26*L34; 8 L10*L26*LY_R
8 L10*L27*DROP_OCR_YZ; 39 L10*L29*L30; 2 L10*L29*L35; 17 L10*L31*C_OCF_YZ
10 L10*L33*+OCF; 11 L10*L33*LX_R; 1 L10*-OHD*TX_Q_; 11 L12*L14*LX_R
20 L12*L26*TX_Q_; 2 L12*L27*DROP_OCR_YZ; 2 L12*TX_Q_*LY_R; 2 L13*L13*L18
1 L13*L22*L31; 2 L14*L15*DROP_OHP_Z; 30 L14*L17*L31; 1 L14*L17*L34
1 L14*L19*L30; 168 L14*L20*L30; 12 L14*L20*L32; 5 L14*L20*L35
115 L14*L21*L30; 8 L14*L27*L35; 109 L14*L29*L30; 2 L14*L30*DROP_OHP_Z
11 L14*L30*LX_R; 4 L17*L24*TX_Q_; 8 L17*L27*TX_Q_; 5 L20*L20*L27
4 L20*L22*L30; 2 L20*L27*L27; 9 L21*L21*LY_R; 18 L21*L22*L27
9 L21*L27*TY_Q_; 5 L21*L31*L35; 53 L22*L30*L30; 43 L22*L30*L31
5 L22*LY_R*LY_R; 28 L23*L24*L27; 29 L23*L24*C_OCF_YZ; 8 L23*L24*DROP_OHP_Z
28 L23*L24*TX_Q_; 31 L23*L24*LY_R; 27 L23*L26*TX_Q_; 3 L23*L33*TX_Q_
1 L24*L33*C_OCF_YZ; 5 L24*L36*TY_Q_; 4 L24*DROP_OHP_Z*TX_Q_; 25 L24*TX_Q_*TY_Q_
2 L26*L26*L27; 5 L26*L26*L28; 5 L26*L27*TY_Q_; 12 L27*L29*L30
1 L27*L29*+OCF; 2 L27*L30*LY_R; 29 L29*TX_Q_*LY_R; 17 L30*TX_Q_*LY_R
2 LY_R*LY_R*LY_R; 1 KLOW*L18; 6 KLOW*TX_Q_; 2 CENT*L10
10 CENT*L21; 4 CENT*L27; 2 QUADQ*L3; 31 -HYZ*L8
1 -HYZ*L19; 35 -HYZ*L20; 61 -HYZ*L31; 35 -HYZ*L33
1 -HYZ*DROP_OHP_Z; 11 -HYZ*LX_R; 13 -OHY*L3; 9 +OCY*L9
16 +OCY*L13; 2 +OCY*L19; 10 -HDY*L3; 2 -HFY*L10
1 +OCZ*L3; 7 -OHP*L3; 3 +HCP*L30; 3 -HFP*L3
1 +CDP*TX_Q_; 10 -HFQ*L24; 6 -DFQ*L14; 25 -DFQ*L26
25 -DFQ*LX_R; 7 -CFQ*L14; 10 -OHR*L1; 31 -OHR*L23
11 -OHR*L30; 11 +HFR*L0; 20 +HFR*L7; 30 +HFR*L8
16 +HFR*L13; 10 +HFR*L20; 6 +HFR*L31; 2 +HFR*DROP_OHP_Z
4 +CDR*L14; 1 +HZR*L3; 14 -FQR*L6; 30 -FQR*L8
5 -FQR*L12; 4 -FQR*L20; 116 -FQR*L27; 29 -FQR*L29
8 -FQR*DROP_OHP_Z; 119 -FQR*DROP_OCR_YZ; 47 -CYZ*L6; 109 -CYZ*L12
68 -CYZ*L17; 11 -CYZ*L20; 26 -CYZ*L29; 1 -CYZ*L34
104 -CYZ*DROP_OHP_Z; 2 -OZP*L20; 1 -OZP*L34; 2 -OZP*TX_Q_
8 +OZQ*L0; 8 +OZQ*L6; 23 +OZQ*L17; 1 +OZQ*L20
57 +OZQ*L30; 15 +OZQ*L31; 4 +OZQ*L34; 20 +OZQ*+OCF
34 +OZQ*DROP_OHP_Z; 1 -DPQ*L7; 6 +FPQ*L9; 4 +FPQ*L14
3 -YZP*L3; 1 +FZP*L3; 17 +FZP*L10; 4 +ZPQ*L36
10 C_OCZ_Y*L3; 1 C_OCZ_Y*L28; 6 C_OPQ_Z*L30; 10 TPX_Q_*L26
18 Q_OCDQ_YZP*L6; 6 Q_OCDQ_YZP*L15; 1 Q_OCDQ_YZP*L17; 16 Q_OCDQ_YZP*L20
2 Q_OCPZ_Y*L20; 2 Q_OCPZ_Y*L36; 4 Q_OCPZ_Y*TX_Q_
```

Upper bound: `-3903090687/2600000000`.

### Leaf UTLmpp

Assumptions: `-CYZ +OYP +OZP`.

```c1top-geometry
P OHFPQ -OFP
P OHYPQ +OYQ
P OHYPR +OYR
P OHZPQ +OZQ
P OHZPR +OZR
P OCFYP -OFY
P OCFZP -OFZ
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FODPQ +FPQ
P FODPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOFQR +ZQR
P POHFQ -PHQ
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP YZ 9 lower 347/500
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 21/200 907/1000
q 347/500 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
9 L0*L3*L3; 1 L0*L3*L13; 66 L0*L3*L30; 9 L0*L3*+OCF
7 L0*L18*TX_Q_; 7 L0*TX_Q_*LX_R; 14 L1*L1*L30; 2 L1*L3*L14
23 L1*L6*TX_Q_; 1 L1*L14*L32; 1 L1*L14*LY_R; 14 L1*L21*LY_R
8 L1*L22*L30; 32 L1*L24*L30; 1 L1*L27*L35; 18 L1*L29*L30
13 L1*L30*-OHD; 12 L1*L30*TX_Q_; 6 L2*L3*L9; 10 L2*L3*L12
7 L2*L3*L21; 4 L2*L10*L17; 1 L2*L19*L34; 3 L3*L3*L4
2 L3*L3*L26; 6 L3*L4*L21; 1 L3*L5*L34; 10 L3*L6*L30
7 L3*L6*L31; 3 L3*L7*L8; 29 L3*L8*L18; 19 L3*L12*L14
5 L3*L12*L35; 5 L3*L13*L31; 16 L3*L14*L29; 2 L3*L14*L34
5 L3*L17*L27; 5 L3*L19*L24; 44 L3*L19*L30; 14 L3*L20*L27
7 L3*L21*L36; 11 L3*L22*L29; 3 L3*L23*L23; 11 L3*L23*C_OCF_YZ
3 L3*L23*TY_Q_; 4 L3*L24*L26; 6 L3*L30*+OCF; 7 L3*L33*TX_Q_
2 L3*C_OCF_YZ*DROP_OCR_YZ; 4 L3*DROP_OCR_YZ*LX_R; 1 L4*L10*L21; 3 L4*L14*TX_Q_
1 L4*L18*L30; 6 L4*L19*L20; 5 L4*L26*TX_Q_; 1 L4*L27*L30
1 L5*L11*L36; 2 L5*L13*L24; 22 L6*L10*L31; 3 L6*L12*L35
2 L6*L13*L14; 12 L6*L14*L35; 45 L6*L17*L22; 23 L6*L18*TX_Q_
34 L6*L21*L27; 26 L6*L23*L27; 67 L6*L27*L30; 26 L6*L27*DROP_OCR_YZ
23 L6*L27*LX_R; 3 L6*L31*L36; 1 L7*L10*-OHD; 3 L7*L13*L23
3 L7*L13*LY_R; 4 L7*L21*L23; 5 L7*L21*L24; 4 L7*L23*L23
12 L7*L23*L24; 1 L7*L23*LY_R; 5 L7*L25*TX_Q_; 51 L7*L27*L30
5 L7*L27*L35; 13 L8*L9*L18; 101 L8*L10*L13; 23 L8*L10*L30
2 L8*L14*L15; 29 L8*L14*TX_Q_; 2 L8*L21*L27; 8 L8*L24*L30
14 L8*L26*TX_Q_; 1 L8*L27*L27; 4 L9*L9*L11; 4 L9*L9*L19
22 L9*L18*TX_Q_; 1 L9*L23*L26; 1 L9*L26*L26; 2 L10*L13*L15
1 L10*L13*L22; 10 L10*L13*TX_Q_; 1 L10*L14*LY_R; 15 L10*L20*L30
5 L10*L23*L24; 8 L10*L25*C_OCF_YZ; 17 L10*L29*L33; 86 L10*L30*C_OCF_YZ
10 L10*L30*TX_Q_; 25 L10*L31*TX_Q_; 1 L10*L33*DROP_OCR_YZ; 4 L10*L36*+OCF
7 L10*L36*TX_Q_; 1 L11*L12*L21; 1 L11*L14*L26; 19 L11*L30*L30
20 L12*L19*L23; 4 L12*L22*L27; 16 L12*L23*L24; 11 L12*L31*L31
17 L13*L14*L19; 3 L13*L17*TY_Q_; 5 L13*L18*TY_Q_; 3 L13*L28*LX_R
6 L14*L16*L35; 17 L14*L16*L36; 19 L14*L16*TX_Q_; 7 L14*L16*TY_Q_
4 L14*L18*TX_Q_; 27 L14*L19*L20; 6 L14*L21*L31; 8 L14*L24*L36
1 L14*L30*LY_R; 1 L15*L20*L24; 9 L15*L31*L31; 9 L16*L23*L23
1 L16*L23*L30; 9 L18*L20*L23; 10 L18*L20*L30; 1 L18*L28*+OCF
2 L18*L29*L36; 17 L18*L30*L30; 14 L18*L30*TX_Q_; 14 L19*TX_Q_*TX_Q_
10 L20*L21*L24; 24 L20*L23*L24; 23 L20*L24*L27; 11 L21*L21*L27
1 L21*L23*L23; 10 L21*L25*TX_Q_; 9 L21*L27*LY_R; 17 L21*L30*LY_R
5 L21*+OCF*LY_R; 8 L21*TX_Q_*LY_R; 17 L23*L24*L29; 5 L23*L24*L32
11 L23*L24*C_OCF_YZ; 2 L23*L24*TY_Q_; 42 L23*L24*DROP_OCR_YZ; 10 L24*L26*L27
8 L24*L30*L36; 23 L24*TX_Q_*DROP_OCR_YZ; 10 L24*LY_R*LY_R; 8 L25*L30*L30
1 L26*L31*TY_Q_; 2 L26*C_OCF_YZ*TX_Q_; 43 L26*TX_Q_*TX_Q_; 22 L26*TX_Q_*DROP_OCR_YZ
1 L27*L28*L36; 4 L28*L29*TX_Q_; 16 L29*TX_Q_*LY_R; 11 L31*L31*L36
6 L31*L34*TX_Q_; 1 TX_Q_*TY_Q_*TY_Q_; 12 TX_Q_*LY_R*LY_R; 2 KLOW*TX_Q_
1 CENT*L14; 1 +HDF*L10; 1 +OYZ*L1; 6 +OYZ*L3
49 -HYZ*L8; 35 -HYZ*L12; 8 -HYZ*L22; 36 -HYZ*L30
85 -HYZ*L31; 21 -HYZ*TX_Q_; 1 -HYZ*LY_R; 9 +OCY*L21
2 +OCY*L27; 6 +OCY*L36; 7 +OCY*C_OCF_YZ; 1 +CDY*L18
1 -HCZ*L10; 7 +CDP*TX_Q_; 3 +DFP*L12; 3 +DFP*L14
7 +DFP*L22; 3 -HFQ*L7; 7 -HFQ*L18; 8 -HFQ*TX_Q_
1 -DFQ*L4; 4 -DFQ*L6; 1 -DFQ*L8; 1 -DFQ*L11
3 -DFQ*L14; 1 -DFQ*L31; 6 -DFQ*DROP_OCR_YZ; 1 +HDQ*L27
3 -CFQ*L4; 16 -OHR*L1; 2 -OHR*L9; 3 -OHR*L27
7 -OHR*LY_R; 12 +HFR*L0; 15 +HFR*L8; 15 +HFR*L13
23 +HFR*L22; 7 +HFR*TX_Q_; 17 +HFR*DROP_OCR_YZ; 2 +DFR*L23
5 +CFR*L10; 1 +HZR*L21; 1 +OPQ*L1; 6 +OPQ*L5
26 +OPQ*L6; 5 +OPQ*L8; 11 +OPQ*L23; 19 +OPQ*L29
4 +OPQ*L30; 1 +OPQ*L32; 5 +OPQ*TX_Q_; 18 -FQR*L1
29 -FQR*L7; 20 -FQR*L8; 4 -FQR*L13; 24 -FQR*L20
23 -FQR*C_OCF_YZ; 42 -FQR*DROP_OCR_YZ; 1 -CYZ*L4; 86 -CYZ*L8
21 -CYZ*L12; 8 -CYZ*L29; 2 -CYZ*L36; 29 -CYZ*+OCF
19 -CYZ*TX_Q_; 8 -CYZ*LX_R; 34 +OZP*L8; 6 +OZP*L11
3 +OZP*L22; 17 +OZP*L36; 45 +OZP*C_OCF_YZ; 19 +OZP*TX_Q_
4 +OZP*TY_Q_; 2 +OZQ*L11; 22 +OZQ*L19; 4 +OZQ*L32
4 +OZQ*LY_R; 3 -OFZ*L23; 2 -OFZ*L30; 5 -OFZ*L35
20 +HQR*L30; 2 -DPQ*L23; 7 -DPQ*L29; 7 +FPQ*L3
54 +FPQ*L6; 8 +FPQ*L9; 1 +FPQ*L10; 23 +FPQ*L21
17 +FPQ*TX_Q_; 5 +PQR*L3; 10 C_OCP_YZ*L9; 7 C_OCP_YZ*L20
4 C_OYP_Z*L3; 6 TPY_Q_*L3; 3 Q_OCDH_YZ*L3; 5 Q_OCFH_YZ*L3
7 Q_OCDQ_YZP*L6; 7 Q_OCDQ_YZP*L17
```

Upper bound: `-535527983/1000000000`.

### Leaf UTLpmmm

Assumptions: `+CYZ -OYP -OYQ -OYR`.

```c1top-geometry
C OHR Y Z +ROZ 3239749/6167600
P OHDYQ +ODY
P OHFYR +OFY
P OHFPQ -OFP
P OHYZP -OZP
P OHYZQ -OZQ
```

```c1top-bounds
```

Exclusion: `gp OHYZR`.

### Leaf UTLpmmpm

Assumptions: `+CYZ -OYP -OYQ +OYR -OZR`.

```c1top-geometry
P OHDYQ +ODY
P OHDZR +ODZ
P OHFZR +OFZ
P OHFPQ -OFP
P OHYZP -OZP
P OHYZQ -OZQ
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOHZP +FZP
P FODPQ +FPQ
P FODPR -FPR
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P ZOFPR +ZPR
P ZOFQR +ZQR
P POHFY +PFY
P POHFQ -PHQ
P POHYQ -PYQ
P POHZQ -PZQ
P POFQR +PQR
```

```c1top-bounds
T OHP YZ 0 lower 694/907
T OHP YZ 8 lower 694/885
T OHQ YZ 10 lower 694/885
T OHR Z 12 lower 93/295
```

```c1top-box
h 153/200 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 907/1000
q 93/1000 907/1000
l 98/125 1
m 129/500 1
r 63/200 297/500
t 843/1000 1
```

```c1top-sum
219 L0*L0*LX_R; 3 L0*L3*C_OHD_YZ; 2 L0*L12*L30; 2 L0*L17*DROP_OHQ_YZ
45 L0*L17*LX_R; 74 L0*L24*L27; 16 L0*L25*TY_Q_; 135 L0*L25*LX_R
38 L0*L27*L27; 54 L0*L27*LX_R; 8 L1*L5*L21; 32 L1*L7*LY_R
5 L1*L21*TX_Q_; 33 L1*L21*LX_R; 1 L1*L22*L24; 71 L1*L24*L24
69 L1*L24*L29; 35 L1*L24*LY_R; 2 L2*L11*DROP_OHR_Z; 8 L3*L4*L4
8 L3*L4*L5; 11 L3*L4*L6; 15 L3*L4*LX_R; 6 L3*L6*L23
17 L3*L7*C_OHD_YZ; 1 L3*L8*L20; 2 L3*L10*L24; 2 L3*L12*L14
44 L3*L12*C_OHD_YZ; 17 L3*L15*DROP_OHR_Z; 1 L3*L18*L27; 2 L3*L19*L24
17 L3*L19*DROP_OHR_Z; 1 L3*L21*L30; 1 L3*L23*L33; 23 L3*L26*L27
6 L3*L27*TY_Q_; 4 L3*L32*DROP_OHR_Z; 2 L4*L6*TX_Q_; 2 L4*L15*L20
1 L4*L16*LY_R; 4 L4*L21*L27; 4 L4*L24*L25; 2 L4*L27*L30
1 L4*L29*L29; 4 L4*LX_R*LX_R; 6 L5*L21*L21; 23 L5*L21*LX_R
5 L5*L27*+OCF; 1 L6*L11*L12; 86 L6*L12*LY_R; 13 L6*L27*+OCF
11 L6*L27*DROP_OHQ_YZ; 43 L6*L27*TX_Q_; 55 L6*L27*LX_R; 8 L7*L7*L14
10 L7*L7*L28; 5 L7*L7*DROP_OCR_Y; 11 L7*L25*L34; 23 L7*L26*L29
3 L7*L28*L29; 20 L7*DROP_OHR_Z*DROP_OCR_Y; 3 L8*L12*L34; 96 L8*L12*LY_R
13 L8*L27*C_OHD_YZ; 1 L8*L35*-OHD; 6 L9*L12*L34; 111 L9*L12*LY_R
3 L12*L12*L32; 9 L12*L26*TX_Q_; 9 L12*L27*DROP_OHQ_YZ; 7 L12*L27*TY_Q_
29 L12*L27*DROP_OHR_Z; 8 L12*TY_Q_*LY_R; 2 L13*L21*C_OHD_YZ; 26 L14*L21*L24
2 L14*L23*L24; 3 L14*L29*TX_Q_; 38 L14*TX_Q_*DROP_OHR_Z; 12 L15*L29*L29
6 L16*L21*DROP_OHR_Z; 1 L17*L20*L32; 6 L17*L25*DROP_OHQ_YZ; 34 L18*L29*LX_R
1 L21*L22*LY_R; 12 L21*L25*L28; 9 L21*L25*L36; 12 L21*L27*-OHD
1 L21*L28*L33; 6 L21*L28*DROP_OHQ_YZ; 8 L21*L33*L34; 3 L21*L34*LX_R
1 L21*+OCF*TY_Q_; 4 L22*L29*L29; 1 L23*L27*TX_Q_; 1 L23*C_OHD_YZ*TX_Q_
29 L24*L25*L34; 125 L24*L26*L27; 6 L24*L34*TY_Q_; 38 L26*L27*DROP_OCR_Y
38 L27*L27*LY_R; 6 L27*L30*TY_Q_; 6 L27*L32*DROP_OHQ_YZ; 95 L27*-OHD*LX_R
125 L27*LX_R*LY_R; 3 L28*L29*TX_Q_; 3 L29*LY_R*LY_R; 1 L32*DROP_OHP_YZ*DROP_OHQ_YZ
19 KLOW*L25; 26 QUADR*L27; 8 TOPCOUNT*L24; 71 -OHF*L27
1 +CDF*L30; 1 +CDF*L31; 3 -HYZ*L9; 3 -HYZ*L11
1 -HCY*L9; 4 -HCY*L13; 3 -HCY*L14; 3 -HCY*L35
18 -OHZ*L9; 20 -OHZ*L27; 37 -OHZ*+OCF; 10 -OHZ*TY_Q_
86 -OHZ*DROP_OHR_Z; 19 -OHZ*DROP_OCR_Y; 78 -OHZ*LX_R; 4 +CDP*L6
1 +CDP*L26; 15 +CDP*DROP_OHR_Z; 30 +CDP*LX_R; 1 +HCQ*L12
6 +HCQ*L27; 6 -HFQ*L3; 1 -HFQ*L21; 19 +CDQ*L7
10 +CDQ*L29; 2 +CDQ*L34; 22 +CDQ*DROP_OHR_Z; 22 +CDQ*LX_R
1 -DFQ*L25; 1 -DFQ*L33; 11 -DFQ*LY_R; 12 -OFQ*L7
5 -CFQ*L2; 1 -CFQ*L20; 6 -DYQ*L27; 17 -OHR*L27
36 +HFR*L8; 28 +HFR*L14; 11 +HFR*L22; 11 +HFR*L28
36 +HFR*L31; 28 +HFR*L36; 68 +HFR*-OHD; 233 +HFR*C_OHD_YZ
21 +HFR*TX_Q_; 38 +HFR*LX_R; 128 +HFR*LY_R; 33 -FQR*L7
11 -FQR*L8; 11 -FQR*L9; 3 -FQR*DROP_OHR_Z; 6 +CYZ*L14
3 +CYZ*L34; 3 +CYZ*L35; 3 +CYZ*L36; 2 -OZR*L4
30 -OZR*L27; 39 -OZR*L29; 8 -OZR*TY_Q_; 60 -OZR*DROP_OHR_Z
30 -OZR*DROP_OCR_Y; 89 -OZR*LX_R; 2 +ODY*L27; 3 +HQR*L24
34 -DPQ*LX_R; 34 +FPQ*LX_R; 1 +ZQR*L7; 1 C_OHP_YZ*L4
2 C_OHP_YZ*DROP_OHQ_YZ; 45 C_OHP_YZ*LX_R; 2 C_HCZ_Y*L5; 17 C_HCZ_Y*L6
3 C_HCZ_Y*L8; 2 C_HCZ_Y*L22; 72 C_HCZ_Y*DROP_OHR_Z; 15 C_HCZ_Y*LX_R
15 TPY_Q_*L6; 5 TPY_Q_*+OCF; 12 Q_HZCD_Y*L3; 1 Q_HZCD_Y*L12
12 Q_HZCD_Y*TX_Q_
```

Upper bound: `-227517997/1000000000`.

### Leaf UTLpmmpp

Assumptions: `+CYZ -OYP -OYQ +OYR +OZR`.

```c1top-geometry
P OHDYQ +ODY
P OHFPQ -OFP
P OHYZP -OZP
P OHYZQ -OZQ
P OCDYZ +ODZ
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FODPQ +FPQ
P FODPR -FPR
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHFY +PFY
P POHFZ +PFZ
P POHFQ -PHQ
P POHYQ -PYQ
P POHZQ -PZQ
P POFQR +PQR
```

```c1top-bounds
T OHP YZ 0 lower 694/907
T OHP YZ 8 lower 694/885
T OHQ YZ 10 lower 694/885
```

```c1top-box
h 153/200 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 907/1000
q 93/1000 907/1000
l 98/125 1
m 129/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
111 L0*L1*L12; 345 L0*L8*L30; 634 L0*L10*L27; 704 L0*L27*L32
178 L0*L30*L30; 48 L0*L30*L32; 48 L1*L1*L9; 523 L1*L1*L24
627 L1*L2*L30; 13 L1*L2*L32; 13 L1*L3*L34; 295 L1*L4*L7
7 L1*L4*L8; 312 L1*L4*L16; 321 L1*L4*L24; 48 L1*L4*TX_Q_
127 L1*L7*L7; 11 L1*L7*L34; 77 L1*L8*L22; 365 L1*L8*L24
58 L1*L10*L21; 155 L1*L10*L24; 494 L1*L10*L30; 327 L1*L12*L12
464 L1*L12*L32; 220 L1*L12*L34; 1 L1*L16*L16; 57 L1*L16*LY_R
11 L1*L18*TX_Q_; 685 L1*L21*L24; 319 L1*L21*L30; 235 L1*L21*TX_Q_
224 L1*L22*L24; 421 L1*L24*L29; 149 L1*L24*L30; 619 L1*L24*TX_Q_
352 L1*L27*L27; 704 L1*L27*L28; 200 L1*L29*TX_Q_; 289 L1*L30*L31
519 L2*L2*TY_Q_; 637 L2*L16*L32; 952 L2*L16*TY_Q_; 157 L2*L16*LY_R
181 L2*L21*L28; 757 L2*L21*TY_Q_; 33 L2*L23*L27; 69 L2*L24*TY_Q_
305 L2*L27*L32; 87 L2*L27*L34; 232 L2*L30*L32; 71 L3*L3*L4
48 L3*L4*L4; 7 L3*L4*L10; 717 L3*L4*L17; 250 L3*L4*L20
118 L3*L4*L23; 55 L3*L4*L25; 64 L3*L4*L30; 78 L3*L4*TX_Q_
26 L3*L4*LY_R; 25 L3*L7*L11; 247 L3*L7*L32; 19 L3*L11*L23
79 L3*L14*L21; 672 L3*L16*L23; 46 L3*L19*L30; 62 L3*L23*L23
434 L3*L23*L30; 188 L3*L23*TX_Q_; 258 L3*L27*L30; 175 L3*L27*TX_Q_
127 L3*L30*L34; 25 L3*L32*TX_Q_; 10 L4*L4*TX_Q_; 64 L4*L7*L12
453 L4*L8*L17; 62 L4*L8*TX_Q_; 8 L4*L16*L23; 983 L4*L16*TX_Q_
44 L4*L21*TY_Q_; 18 L4*L23*TX_Q_; 57 L4*L24*LY_R; 704 L4*L27*L27
704 L4*L27*LY_R; 64 L4*L30*TX_Q_; 100 L4*TX_Q_*TX_Q_; 15 L5*L21*L24
80 L5*L27*L29; 397 L6*L7*L27; 322 L6*L21*L32; 41 L6*L21*TY_Q_
12 L6*L27*L36; 11 L6*L27*TY_Q_; 275 L7*L8*L27; 256 L7*L9*L27
11 L7*L16*L19; 17 L7*L23*L23; 114 L7*L23*TX_Q_; 214 L7*L29*LY_R
357 L7*TX_Q_*LY_R; 450 L8*L12*L27; 169 L8*L16*LY_R; 195 L8*L18*L29
229 L8*L20*L27; 587 L8*L21*TY_Q_; 342 L8*L27*L27; 35 L8*L27*C_OHD_YZ
52 L9*L10*L27; 655 L10*L12*L21; 183 L10*L17*L27; 229 L10*L24*L29
52 L10*L27*L30; 70 L10*L27*L34; 655 L11*L21*L30; 18 L12*L13*L27
120 L12*L15*L24; 13 L12*L21*L22; 757 L12*L21*L27; 134 L12*L21*C_OHD_YZ
621 L12*L27*L33; 345 L12*L27*LY_R; 345 L13*L26*L27; 757 L14*L21*L24
12 L14*L24*L29; 519 L14*L24*L30; 87 L14*L27*L31; 185 L14*L27*DROP_OHQ_YZ
11 L16*L18*L29; 1 L16*L19*L27; 1 L16*L19*LY_R; 192 L16*L20*L27
8 L16*L23*L23; 60 L16*L23*TX_Q_; 14 L16*L27*L33; 14 L16*L30*LY_R
25 L16*TX_Q_*LY_R; 183 L17*L27*L35; 25 L17*L27*LX_R; 60 L18*L21*L21
8 L18*L21*L22; 8 L18*L23*L29; 13 L18*L29*L30; 113 L20*L21*L27
600 L20*L21*L32; 113 L20*L27*TX_Q_; 364 L21*L21*L28; 365 L21*L23*L29
185 L21*L27*L32; 167 L21*L27*DROP_OHP_YZ; 69 L23*L24*L29; 185 L23*L24*L35
69 L23*L27*L27; 69 L23*L27*DROP_OCR_YZ; 55 L23*L29*L29; 655 L23*L30*L30
13 L23*L30*TX_Q_; 25 L25*L27*DROP_OHP_YZ; 342 L27*L27*L31; 352 L27*L27*-OHD
393 L27*L28*L29; 175 L27*L29*DROP_OHQ_YZ; 185 L27*L34*DROP_OHQ_YZ; 70 L27*L35*L36
143 L27*+OCF*DROP_OHP_YZ; 342 QUADR*L27; 16 +OCD*L3; 447 +HCD*L27
533 +OYZ*L1; 87 +OYZ*L7; 127 +OYZ*L9; 542 +OYZ*L10
127 +OYZ*L12; 239 +OYZ*L21; 663 +OYZ*L24; 17 +OYZ*L27
915 +OYZ*L31; 546 +OYZ*-OHD; 78 -HYZ*TX_Q_; 7 -HCY*L5
68 -HCY*L7; 251 -HCY*L12; 542 -HCY*L14; 169 -HCY*L17
19 -HCY*L23; 191 -HCY*L25; 1353 -HCY*L30; 542 -HCY*L35
177 -HCY*DROP_OHQ_YZ; 221 -HCY*TX_Q_; 338 -HCY*DROP_OCR_YZ; 69 +CDY*L16
553 -OHZ*L27; 1 +DFZ*L27; 523 +CDP*L9; 1780 +CDP*L20
8 +CDP*L23; 11 +CDP*DROP_OHP_YZ; 983 +CDP*TX_Q_; 382 +DFP*L3
208 -CYP*L21; 19 +CDQ*L1; 113 +CDQ*L2; 48 +CDQ*L4
153 +CDQ*L8; 1532 +CDQ*L17; 204 +CDQ*L21; 62 +CDQ*L23
351 +CDQ*L29; 434 +CDQ*L30; 773 -DFQ*L2; 10 -DFQ*L4
127 -DFQ*L8; 100 -DFQ*L29; 29 -DFQ*LY_R; 29 +ODQ*L27
60 -CFQ*L16; 33 -CYQ*L27; 353 +HFR*L4; 898 +HFR*L7
962 +HFR*L8; 363 +HFR*L9; 1 +HFR*L12; 11 +HFR*L15
389 +HFR*L31; 11 +HFR*-OHD; 39 +HFR*TY_Q_; 405 +HFR*DROP_OCR_YZ
119 +DFR*L27; 285 +OFR*L27; 63 +HYR*L27; 843 +HZR*L1
445 +HZR*L2; 87 +HZR*L6; 464 +HZR*L10; 220 +HZR*L14
294 +HZR*L21; 149 +HZR*L30; 37 +HZR*L31; 63 -DYR*L27
8 +OPQ*L3; 13 +OPQ*L12; 69 -FQR*L7; 9 +CYZ*L6
928 +CYZ*L8; 317 +CYZ*L20; 663 +CYZ*L25; 127 +CYZ*L30
529 +CYZ*L32; 13 +CYZ*L35; 132 -OYQ*L9; 941 -OYQ*L12
31 -OYQ*L17; 820 -OYQ*L21; 214 -OYQ*L24; 160 -OYQ*L26
101 -OYQ*L29; 523 -OYQ*L31; 221 -OYQ*TX_Q_; 58 -OYQ*LY_R
398 +OZR*L2; 1 +OZR*L4; 99 +OZR*L7; 313 +OZR*L8
368 +OZR*L10; 397 +OZR*L13; 462 +OZR*L21; 93 +OZR*L30
832 +OZR*L32; 220 +OZR*L34; 1830 -DPQ*L2; 60 -DPQ*L21
11 +FPQ*L1; 601 +FPQ*L3; 195 +FPQ*L8; 8 +FPQ*L23
13 +FPQ*L30; 777 +YPQ*L3; 312 C_OHP_YZ*L3; 312 C_OHP_YZ*L4
1 C_OHP_YZ*L16; 1 C_OHP_YZ*L19; 247 C_OHP_YZ*L20; 11 C_OHP_YZ*L22
14 C_OHP_YZ*L30; 25 C_OHP_YZ*TX_Q_; 57 C_OHP_YZ*LY_R; 9 C_HCZ_Y*TX_Q_
291 TPY_Q_*L21; 9 TPY_Q_*L23; 309 Q_OYRH_Z*L0; 258 Q_OYRH_Z*L3
63 Q_OYRH_Z*L4; 185 Q_OYRH_Z*L22; 229 Q_OYRH_Z*TX_Q_; 247 Q_HZCP_Y*L21
370 Q_CDQY_P*L12; 239 Q_CDQY_P*L16; 15 Q_CDQY_P*L24
```

Upper bound: `-721554957/1000000000`.

### Leaf UTLpmpmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR`.

```c1top-geometry
C OHR Z Y +ROY 3239749/6167600
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFZR +OFZ
P OHFPQ -OFP
P OHYZP -OZP
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOHYZ -FYZ
P FOHZP +FZP
P FODPQ +FPQ
P FODPR -FPR
P YOHFP -YFP
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOFPR +ZPR
P ZOFQR +ZQR
P POHFQ -PHQ
P POHZQ -PZQ
P POFQR +PQR
```

```c1top-bounds
T OHP YZ 0 lower 694/907
T OHP YZ 8 lower 694/885
T OCQ Y 11 lower 279/1000
T OHR Z 12 lower 93/295
```

```c1top-box
h 153/200 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 907/1000
q 93/1000 907/1000
l 27/50 1
m 279/1000 1
r 63/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L3*L28; 3 L0*L4*TX_Q_; 13 L0*L7*L29; 1 L0*L8*L23
69 L0*L17*LX_R; 1 L0*L18*L21; 32 L0*TX_Q_*LX_R; 161 L0*LX_R*LX_R
16 L1*L2*L12; 32 L1*L6*L21; 7 L1*L7*L10; 7 L1*L11*L21
1 L1*L11*DROP_OHR_Z; 6 L1*L12*L20; 4 L1*L16*L24; 59 L1*L21*DROP_OHR_Z
118 L1*L24*L24; 143 L1*L24*TX_Q_; 77 L1*L27*DROP_OHR_Z; 126 L1*L27*LX_R
8 L1*L32*TX_Q_; 8 L1*TX_Q_*TX_Q_; 6 L2*L7*L7; 6 L2*L21*LX_R
2 L3*L3*L34; 1 L3*L3*L36; 23 L3*L4*L6; 1 L3*L4*L20
26 L3*L4*LX_R; 18 L3*L7*L27; 6 L3*L7*TX_Q_; 13 L3*L12*L23
4 L3*L14*L27; 2 L3*L15*L20; 11 L3*L16*L23; 7 L3*L18*L27
21 L3*L18*TX_Q_; 24 L3*L20*L27; 14 L3*L20*L34; 8 L3*L24*L24
8 L3*L27*LY_R; 44 L3*L34*DROP_OHR_Z; 2 L3*DROP_OHR_Z*LY_R; 9 L4*L16*LX_R
13 L4*L17*L27; 39 L4*L24*TX_Q_; 3 L4*L25*LY_R; 8 L4*L26*TX_Q_
6 L4*TX_Q_*LX_R; 13 L6*L15*L21; 51 L6*L27*-OHD; 36 L6*L27*C_OHD_Z
148 L6*L27*DROP_OHQ_Z; 74 L6*L27*LX_R; 34 L6*L27*LY_R; 13 L7*L12*L22
24 L7*L12*-OHD; 6 L7*L16*L23; 6 L7*L24*DROP_OHQ_Z; 2 L7*L27*DROP_OHP_YZ
120 L8*L12*TX_Q_; 8 L8*L27*L28; 5 L8*L27*LY_R; 120 L9*L12*TX_Q_
8 L9*L27*TY_Q_; 7 L10*L27*DROP_OHQ_Z; 6 L11*L27*TX_Q_; 5 L11*L27*DROP_OHR_Z
73 L12*L26*TX_Q_; 2 L12*DROP_OCR_Y*LY_R; 113 L12*LX_R*LY_R; 17 L14*L21*L24
60 L14*L21*DROP_OHR_Z; 18 L14*L27*DROP_OHR_Z; 2 L16*L20*L27; 10 L16*L22*L29
2 L16*L23*DROP_OHR_Z; 27 L17*L25*L25; 3 L17*L27*L27; 13 L17*L27*TY_Q_
5 L17*L27*LY_R; 13 L18*L20*L27; 16 L18*L20*L29; 4 L18*L21*LX_R
30 L18*L29*LX_R; 1 L19*L27*DROP_OHR_Z; 16 L19*L29*TX_Q_; 6 L20*L25*L29
5 L21*L21*LY_R; 13 L21*L24*L27; 11 L21*L25*TY_Q_; 8 L21*L27*-OHD
19 L21*L28*L29; 4 L21*L33*LY_R; 23 L22*L27*DROP_OHR_Z; 13 L22*L27*LX_R
13 L23*L24*L24; 7 L23*L27*L31; 23 L23*TX_Q_*DROP_OHR_Z; 4 L24*L27*L28
39 L24*L34*LX_R; 8 L25*L25*L29; 8 L26*L27*L29; 8 L26*TX_Q_*TX_Q_
17 L27*L34*LX_R; 2 L27*+OCF*LX_R; 3 L27*DROP_OHP_YZ*DROP_OCR_Y; 2 L27*DROP_OHQ_Z*DROP_OCR_Y
5 L27*TY_Q_*LX_R; 83 L27*DROP_OHR_Z*DROP_OHR_Z; 83 L27*DROP_OHR_Z*LX_R; 4 L29*L29*TY_Q_
8 TX_Q_*LY_R*LY_R; 2 KLOW*L3; 2 QUADP*L27; 3 +OCD*L16
8 +HCD*L27; 3 +HDF*L27; 4 -HYZ*L26; 29 -HYZ*TX_Q_
7 +OCY*L27; 1 -HCY*-OHD; 29 -HCY*TX_Q_; 39 -OHZ*L20
149 -OHZ*LX_R; 6 -OHZ*LY_R; 9 +CDP*L25; 3 +CDP*L29
39 +CDP*DROP_OHR_Z; 57 +CDP*LX_R; 7 +DFP*L6; 30 +DFP*LX_R
5 -CYP*L27; 30 -HFQ*L7; 12 -HFQ*L21; 4 +CDQ*+OCF
7 +CDQ*DROP_OCR_Y; 3 -DFQ*L0; 6 -DFQ*L29; 10 -DFQ*LX_R
100 +HFR*L6; 1 +HFR*L11; 12 +HFR*L22; 41 +HFR*-OHD
116 +HFR*DROP_OHQ_Z; 3 +HFR*TY_Q_; 4 +HFR*LX_R; 41 +HFR*LY_R
19 +CDR*TX_Q_; 3 +DFR*L21; 4 +HDR*L27; 15 -FQR*L1
38 -FQR*L7; 2 -FQR*L17; 13 -FQR*L24; 12 -FQR*DROP_OHQ_Z
4 +CYZ*L26; 29 +CYZ*TX_Q_; 4 -OYP*L24; 4 +OYQ*DROP_OHR_Z
2 -OZR*L2; 77 -OZR*L20; 35 -OZR*C_OHD_Z; 39 -OZR*LX_R
35 -OZR*LY_R; 17 +OFZ*L27; 13 -DPQ*L6; 1 -DPQ*C_OHD_Z
1 -DPQ*LX_R; 13 +FPQ*L3; 10 +FPQ*L6; 4 +YPQ*L24
5 +YPR*L27; 8 +HPQ*L27; 5 +PQR*L27; 1 C_OHP_YZ*TY_Q_
69 C_OHP_YZ*LX_R; 7 C_OPQ_Y*L3; 84 C_HCZ_Y*DROP_OHR_Z; 42 C_HCZ_Y*LX_R
15 TPX_Q_*L29; 10 TPX_Q_*DROP_OHR_Z; 41 TPY_Q_*L6; 6 TPY_Q_*L17
17 TPY_Q_*LX_R; 3 TPY_Q_*LY_R; 7 Q_OYFH_Z*L27; 6 Q_OQFH_Z*L27
7 Q_OCFR_Y*L27; 16 Q_HZCD_Y*L3; 4 Q_HZCP_Y*L24; 1 Q_CDQY_P*LY_R
13 Q_CDQZ_YP*L29
```

Upper bound: `-6879907/8000000`.

### Leaf UTLpmpmpmm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR -CPQ -CPR`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHFPQ -OFP
P OHYZP -OZP
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CFP
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHFP -YFP
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POFQR +PQR
P PCDFR +PDR
```

```c1top-bounds
```

Exclusion: `cluster OCR Z CRZ YP`.

### Leaf UTLpmpmpmpm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR -CPQ +CPR -DPR`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHFPQ -OFP
P OHYZP -OZP
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FODPQ +FPQ
P FODPR -FPR
P YOHFZ +YFZ
P YOHFP -YFP
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POCQR +PQR
```

```c1top-bounds
T OHP YZ 0 lower 694/907
T OHP YZ 8 lower 694/885
T OCQ YP 11 lower 347/500
```

```c1top-box
h 153/200 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 907/1000
q 93/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1954 L0*L1*L12; 323 L0*L3*L6; 192 L0*L3*TY_Q_; 130 L0*L12*L21
25 L0*L14*L21; 4469 L0*L17*L27; 1 L0*L18*L30; 171 L0*L27*L30
9656 L0*L27*TX_Q_; 882 L1*L3*L3; 55 L1*L3*L4; 552 L1*L3*L12
387 L1*L3*L16; 5291 L1*L3*L27; 445 L1*L4*L16; 1028 L1*L4*L24
458 L1*L4*TX_Q_; 2093 L1*L7*L21; 171 L1*L8*L27; 6 L1*L10*L16
101 L1*L10*L24; 4 L1*L11*L21; 843 L1*L12*L17; 238 L1*L12*L22
2017 L1*L12*L24; 5819 L1*L12*L27; 180 L1*L12*L35; 569 L1*L12*TY_Q_
291 L1*L16*L24; 894 L1*L16*TX_Q_; 17 L1*L18*L21; 166 L1*L21*L22
4099 L1*L21*L27; 826 L1*L23*L24; 123 L1*L24*L24; 6877 L1*L24*L27
36 L1*L24*L31; 3540 L1*L24*TX_Q_; 1955 L1*L27*L27; 24 L2*L3*L18
24 L2*L3*L32; 73 L2*L10*L21; 2111 L2*L21*TY_Q_; 27 L3*L3*L19
933 L3*L3*L22; 906 L3*L3*L34; 533 L3*L4*L12; 735 L3*L4*L24
2704 L3*L4*L27; 409 L3*L6*L34; 375 L3*L14*L22; 50 L3*L14*L32
6470 L3*L16*L23; 537 L3*L17*L22; 3370 L3*L17*L27; 2 L3*L17*L32
164 L3*L18*L23; 262 L3*L20*L27; 157 L3*L22*L23; 2587 L3*L22*L27
53 L3*L22*L28; 21 L3*L22*L32; 413 L3*L24*L27; 5291 L3*L27*L34
2030 L3*L27*TY_Q_; 28 L3*L32*TY_Q_; 384 L4*L4*TX_Q_; 1675 L4*L6*L27
348 L4*L12*L23; 7185 L4*L16*TX_Q_; 2152 L4*L24*L27; 297 L4*TX_Q_*TX_Q_
166 L5*L18*L21; 3532 L5*L21*L21; 5 L5*L24*L29; 1 L5*L32*DROP_OHP_YZ
5 L6*L8*L27; 409 L6*L14*L21; 57 L6*L17*L27; 1935 L6*L17*TY_Q_
735 L6*L18*L21; 55 L6*L19*L27; 4840 L6*L21*L27; 2850 L6*L21*TY_Q_
10016 L6*L22*L27; 1041 L6*L27*+OCF; 1626 L6*L27*TX_Q_; 859 L6*L27*TY_Q_
558 L7*L7*L23; 404 L7*L12*L27; 1364 L7*L23*L29; 2898 L7*TX_Q_*LY_R
183 L8*L12*L27; 6 L8*L16*L28; 41 L8*L18*L27; 9 L9*L14*L21
111 L10*L12*L21; 38 L10*L12*L23; 365 L10*L12*L27; 41 L10*L17*L27
16 L10*L18*L21; 5 L10*L21*L24; 27 L10*L21*TY_Q_; 1282 L12*L12*L27
575 L12*L14*L21; 435 L12*L14*L31; 11 L12*L18*L21; 16 L12*L18*L27
917 L12*L21*L22; 438 L12*L21*L27; 544 L12*L21*TY_Q_; 5291 L12*L22*L27
226 L12*L22*TY_Q_; 64 L12*L23*L31; 455 L12*L27*+OCF; 757 L12*L27*DROP_OHP_YZ
399 L12*L27*LX_R; 52 L14*L16*L32; 109 L14*L16*L35; 2 L14*L18*L21
1456 L14*L21*L21; 199 L14*L21*L22; 2189 L14*L21*L24; 5291 L14*L21*L27
38 L14*L21*L35; 391 L14*L24*L31; 994 L16*L21*L22; 11 L16*L23*L35
2635 L16*L24*TY_Q_; 1857 L17*L21*L27; 11 L17*L30*TY_Q_; 994 L18*L21*L21
778 L18*L21*L24; 48 L18*L24*L27; 48 L18*L27*LX_R; 127 L20*L22*L27
2148 L20*L27*L27; 4 L20*L27*L32; 2747 L21*L21*L27; 2747 L21*L23*L24
2588 L21*L23*L29; 2219 L21*L24*L27; 2865 L21*L24*LY_R; 5 L21*L27*L30
316 L21*L27*TY_Q_; 166 L21*L28*TY_Q_; 5 L21*L31*TY_Q_; 3063 L22*L27*L27
3063 L22*L27*DROP_OCR_YZ; 27 L23*L23*L30; 974 L23*L24*L29; 190 L23*L24*TY_Q_
5 L23*L30*TX_Q_; 399 L24*L24*L34; 413 L24*L27*L29; 2152 L24*L27*TY_Q_
1954 L24*LY_R*LY_R; 1955 L27*L27*-OHD; 1954 L27*L27*LX_R; 4 L32*TX_Q_*LY_R
4 TX_Q_*LY_R*LY_R; 75 +OYZ*L0; 476 +OYZ*L2; 435 +OYZ*L12
109 +OYZ*L16; 161 +OYZ*L18; 111 +OYZ*L21; 574 +OYZ*L24
216 -HCY*L12; 75 -HCY*L14; 4 -HCY*L16; 6 -HCY*L19
5183 -OHZ*L27; 8 +CDP*L1; 2185 +CDP*L3; 166 +CDP*L4
1 +CDP*L10; 464 +CDP*L20; 485 +CDP*L22; 5 +CDP*L30
7186 +CDP*TX_Q_; 2635 +CDP*LX_R; 2 -CYP*L14; 131 -CYP*L21
624 +CDQ*L2; 190 +CDQ*L4; 1794 +CDQ*L6; 27 +CDQ*L10
537 +CDQ*L12; 1291 +CDQ*L17; 320 +CDQ*L19; 543 +CDQ*L21
1515 +CDQ*L27; 1933 +CDQ*L29; 5 +CDQ*L31; 574 +CDQ*L34
355 +CDQ*TY_Q_; 841 +CDQ*LY_R; 3101 -DFQ*L2; 384 -DFQ*L4
1285 -DFQ*L8; 700 -DFQ*L16; 2692 -DFQ*L21; 190 -DFQ*L23
931 -DFQ*L26; 303 -DFQ*L29; 1285 -DFQ*L31; 6 -DFQ*LX_R
732 +HFR*L3; 458 +HFR*L4; 2093 +HFR*L7; 4 +HFR*L11
409 +HFR*L12; 3311 +HFR*L16; 7 +HFR*L19; 13769 +HFR*L22
233 +HFR*L24; 4102 +HFR*L27; 805 +HFR*TX_Q_; 1954 +HZR*L1
569 +HZR*L4; 323 +HZR*L8; 105 +HZR*L10; 1100 +HZR*L12
327 +HZR*L14; 757 +HZR*L16; 1 +HZR*L19; 130 +HZR*L21
832 +HZR*L23; 508 +HZR*L25; 409 +HZR*L29; 359 +HZR*L31
1133 +HZR*DROP_OCR_YZ; 359 -FQR; 499 -FQR*L3; 5 -FQR*L8
414 -FQR*L13; 3370 -FQR*L17; 2747 -FQR*L21; 11995 -FQR*L27
384 -FQR*L28; 2272 -FQR*L29; 190 -FQR*TY_Q_; 646 -FQR*LX_R
14146 -FQR*LY_R; 401 +CYZ*L3; 6 -OYP*L0; 134 -OYP*L2
159 -OYP*L14; 3 -OYP*L20; 5 -OYP*L22; 41 -OYP*L27
318 +OYQ*L3; 27 +OYQ*L23; 484 -OZQ*L2; 1435 -OZQ*L21
1407 -OZQ*L24; 1954 +OZR*L0; 312 +OZR*L3; 263 +OZR*L4
409 +OZR*L6; 219 +OZR*L8; 260 +OZR*L10; 181 +OZR*L12
16 +OZR*L18; 717 +OZR*L21; 109 +OZR*L24; 1133 +OZR*L27
327 +OZR*L34; 832 +OZR*TY_Q_; 1995 -CPQ*L2; 483 -CPQ*L5
5 -CPQ*L10; 5 -CPQ*L12; 994 -CPQ*L21; 2 -CPQ*L28
138 -CPQ*L31; 735 -CPQ*LX_R; 1512 +CPR*L21; 3370 -DPR*L3
1 -DPR*TX_Q_; 26 -DPQ*L1; 2349 -DPQ*L2; 6 -DPQ*L12
7 +FPQ*L1; 3816 +FPQ*L3; 393 C_OHP_YZ*L3; 464 C_OHP_YZ*L4
2 C_OHP_YZ*L9; 34 C_OHP_YZ*L13; 17 C_OHP_YZ*L23; 467 C_OHP_YZ*L25
4469 C_OHP_YZ*L27; 52 C_OHP_YZ*L36; 894 C_OHP_YZ*TX_Q_; 3311 C_OHP_YZ*LX_R
2 C_CZQ_YP*L1; 505 C_CZQ_YP*L3; 574 C_CZQ_YP*L5; 2092 C_CZQ_YP*L6
1683 C_CZQ_YP*L7; 651 C_CZQ_YP*L12; 2 C_CZQ_YP*L18; 21 C_CZQ_YP*L21
199 C_CZQ_YP*L22; 65 C_CZQ_YP*L25; 5291 C_CZQ_YP*L27; 75 C_CZQ_YP*L30
27 C_CZQ_YP*L32; 11 Q_OPQZ_Y*L35; 377 Q_CDQY_P*L3; 127 Q_CDQY_P*L16
5 Q_CDQY_P*L24
```

Upper bound: `-57856323/125000000`.

### Leaf UTLpmpmpmpp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR -CPQ +CPR +DPR`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHFPQ -OFP
P OHYZP -OZP
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOCPR -DOP
P DOFPQ -DPQ
P DOFQR +DQR
P DOZPR -DZP
P DHCPR -DHP
P DHFYP -DYP
P FODPQ +FPQ
P FODPR -FPR
P YOHDP +YOD
P YOHFZ +YFZ
P YOHFP -YFP
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POCQR +PQR
```

```c1top-bounds
T OHP YZ 0 lower 694/907
T OHP YZ 8 lower 694/885
T OCQ YP 11 lower 347/500
```

```c1top-box
h 38257993/50000000 177/200
c 78418079/100000000 1
d 93/1000 83454097/100000000
f 43792733/100000000 89746417/100000000
u 31525423/100000000 78983051/100000000
v 93/1000 513/1000
z 5254237/50000000 28983051/50000000
w 93/1000 699/1000
p 78418079/100000000 907/1000
q 93/1000 907/1000
l 13511579/25000000 1
m 347/500 1
r 5254237/50000000 2967713/5000000
t 210829/250000 1
```

```c1top-sum
65146 L27*L31; 1076 L0*L1*L22; 223028 L0*L1*DROP_OCR_YZ; 143375 L0*L9*L24
23551 L0*L18*L21; 86636 L1*L2*L12; 1022319 L1*L2*L16; 514780 L1*L3*L6
90859 L1*L3*L30; 50687 L1*L3*DROP_OHQ_Z; 399964 L1*L4*L24; 379 L1*L4*L30
354838 L1*L4*LX_R; 37025 L1*L6*L35; 379 L1*L6*LY_R; 649020 L1*L14*DROP_OHP_YZ
649020 L1*L15*DROP_OHP_YZ; 12878 L1*L16*L29; 280388 L1*L16*L30; 1019691 L1*L20*L24
365770 L1*L21*L27; 1076 L1*L23*-OHD; 1306134 L1*L24*TX_Q_; 880252 L1*L27*L27
223028 L1*L27*L32; 379 L1*L27*L33; 880252 L1*L27*DROP_OCR_YZ; 93735 L1*L27*LX_R
655520 L1*L31*DROP_OHQ_Z; 58240 L2*L3*L11; 1161 L2*L3*L30; 1161 L2*L3*L35
235541 L2*L5*LY_R; 237691 L2*L11*DROP_OCR_YZ; 30530 L2*L13*L21; 352894 L2*L18*L30
401332 L2*L21*DROP_OCR_YZ; 110213 L2*L23*L30; 117704 L2*L24*L28; 33729 L2*L27*L29
1538581 L2*L27*DROP_OHP_YZ; 606496 L2*C_OHD_YZ*TX_Q_; 57445 L3*L4*L9; 77610 L3*L4*L18
157437 L3*L4*L20; 52913 L3*L4*L23; 106613 L3*L10*L21; 30530 L3*L12*L20
1161 L3*L12*L29; 31458 L3*L16*L32; 25672 L3*L18*L29; 486405 L3*L20*L27
50971 L3*L21*L22; 17705 L4*L4*L11; 1767 L4*L4*TX_Q_; 24697 L4*L4*LX_R
17705 L4*L5*L32; 57065 L4*L7*L8; 213893 L4*L7*L12; 75737 L4*L7*L19
75853 L4*L10*LX_R; 2090 L4*L12*L34; 700 L4*L12*TX_Q_; 1262 L4*L12*TY_Q_
883 L4*L14*TX_Q_; 125 L4*L15*L24; 406174 L4*L16*LX_R; 23551 L4*L16*LY_R
597503 L4*L17*L24; 75737 L4*L18*TX_Q_; 83614 L4*L21*L29; 1262 L4*L22*L30
75737 L4*L23*DROP_OHP_YZ; 883 L4*L23*TX_Q_; 605336 L4*L27*C_OCF_Y; 2090 L4*L30*L34
45126 L4*L35*LY_R; 883 L4*DROP_OHQ_Z*TY_Q_; 398472 L4*TX_Q_*DROP_OCR_YZ; 1711 L5*L8*L34
268154 L5*L11*LY_R; 537492 L5*L17*L27; 189007 L5*L29*LY_R; 582323 L6*L12*LY_R
883 L6*L14*L27; 799 L6*L15*L35; 450863 L6*L18*L27; 1675368 L6*L21*LY_R
1739 L6*L27*L27; 515619 L6*L27*L28; 333065 L6*L27*DROP_OHQ_Z; 199687 L6*L27*TX_Q_
379179 L7*L7*L23; 606037 L7*L7*LY_R; 1161 L7*L12*C_OCF_Y; 336367 L7*L13*LY_R
464 L7*L14*L35; 379 L7*L17*L35; 12174 L7*L21*L34; 305836 L7*L23*L24
576533 L7*L23*L29; 387443 L7*L27*L32; 3920161 L8*L11*C_OHD_YZ; 379 L8*L17*TX_Q_
38287 L8*L24*L27; 57445 L8*L29*TY_Q_; 3920161 L9*L11*C_OHD_YZ; 3122 L9*L15*L21
379 L9*L16*L21; 80550 L9*L22*L24; 38287 L9*TX_Q_*LY_R; 1262 L10*L14*L21
309543 L10*L16*L21; 14348 L10*L21*L25; 66202 L10*L21*LX_R; 124535 L10*L24*L28
165607 L10*L24*L29; 1262 L11*L21*L28; 93685 L11*L21*LY_R; 223028 L11*L27*L28
22877 L12*L18*L29; 801116 L12*L20*L27; 349436 L12*L21*LY_R; 135167 L12*L22*TX_Q_
883 L12*L27*TY_Q_; 379 L12*L28*L28; 379 L12*L28*LY_R; 103606 L12*L29*TY_Q_
220110 L12*DROP_OHP_YZ*TY_Q_; 38287 L13*L24*L27; 883 L15*L21*L28; 883 L15*L21*LY_R
201905 L16*L22*L30; 89434 L16*L23*L31; 48947 L16*L27*LX_R; 48947 L17*L24*LY_R
196898 L17*L28*L29; 233709 L18*L21*L29; 92982 L18*L26*L29; 18205 L18*L30*TX_Q_
449043 L20*L21*L27; 859460 L20*L23*L24; 128151 L20*L29*L32; 135167 L21*L23*L33
398472 L21*L27*L28; 657246 L21*L35*LY_R; 379 L21*TY_Q_*LY_R; 1739 L21*DROP_OCR_YZ*LY_R
1262 L22*L27*L33; 379 L22*TX_Q_*LY_R; 783079 L23*L24*L29; 389098 L23*L24*L33
1262 L23*L27*L31; 8772 L23*L27*LX_R; 13701 L23*L29*L30; 567396 L23*L29*C_OHD_YZ
487211 L23*L29*DROP_OHQ_Z; 32403 L24*L28*L30; 32403 L24*L28*TX_Q_; 756025 L26*L29*TX_Q_
553309 L27*L27*L35; 618958 L27*L30*DROP_OHQ_Z; 38287 L27*L30*LX_R; 553309 L27*L35*DROP_OCR_YZ
59401 L29*L29*LY_R; 197876 L29*TX_Q_*LY_R; 1262 L32*L36*TX_Q_; 749669 L32*TX_Q_*LY_R
1262 L36*TX_Q_*LY_R; 410417 TX_Q_*TX_Q_*LY_R; 10511 TX_Q_*LY_R*LY_R; 379 KLOW*L1
192198 KLOW*L21; 517147 +OCD*L21; 144994 +OCD*C_OHD_YZ; 1767 +HCD*L4
22930 +CDF*L4; 7924 -HYZ*TX_Q_; 75673 -HCY*L25; 59401 -HCY*+OCF
44486 -HCY*TX_Q_; 35299 -HCY*LX_R; 16806 -OHZ*L29; 700 +CDZ*TX_Q_
567396 +CDP*L1; 1249536 +CDP*L3; 517233 +CDP*L18; 517233 +CDP*L19
24697 +CDP*L23; 330017 +CDP*L33; 2368541 +CDP*DROP_OHQ_Z; 829517 +CDP*TX_Q_
24697 +CDP*TY_Q_; 1267195 +CDP*DROP_OCR_YZ; 1395206 +CDP*LX_R; 455081 +DFP*L2
110287 +DFP*L30; 109907 +DFP*L31; 83614 +DFP*TX_Q_; 83614 +DFP*LX_R
543845 +DFP*LY_R; 31458 +HYP*L2; 143375 -CYP*L24; 739536 -HFQ*L1
222930 -HFQ*L16; 410417 -HFQ*L21; 919519 +CDQ*L2; 379 +FZQ*L27
763466 -OHR*L23; 124535 +HFR*L11; 711797 +HFR*L13; 893954 +HFR*L20
1273731 +HFR*TX_Q_; 32024 +ODR*L12; 45126 +HYR*L4; 160689 +HZR*L3
125737 +HZR*L20; 792531 -FQR*L2; 955712 -FQR*L7; 859460 -FQR*L20
246443 -FQR*L33; 772238 -FQR*-OHD; 132561 -FQR*DROP_OHP_YZ; 8772 -FQR*LY_R
9186 +CYZ*L3; 251859 +CYZ*L21; 9186 +CYZ*L29; 652803 -OYP*L4
1622129 -OYP*L6; 727970 -OYP*L7; 379 -OYP*L15; 1037154 -OYP*TX_Q_
652803 -OYP*TY_Q_; 143375 -OYP*LX_R; 317883 +OYQ*L3; 61949 +OYQ*L6
727611 +OYQ*L16; 921618 +OYQ*L18; 268815 +OYQ*L19; 80550 +OYQ*L24
1262 +OYQ*L28; 262904 +OYQ*DROP_OHQ_Z; 1262 +OYQ*LY_R; 142655 -OZQ*L24
227520 -OZQ*L29; 160689 +OZR*L2; 504 +OZR*L5; 160676 +OZR*DROP_OHQ_Z
52913 -CPQ*L5; 355492 -CPQ*L7; 384352 -CPQ*L8; 567396 -CPQ*L10
567396 -CPQ*L32; 919519 -CPQ*+OCF; 38169 -CPQ*DROP_OHQ_Z; 25672 +CPR*L2
1033599 +DPR*L2; 24697 +DPR*L4; 395696 +DPR*L6; 479311 +DPR*L29
379 +DPR*L36; 588109 -OFY*L1; 75853 -OFY*L4; 379 +HPR*L12
132561 +HQR*L16; 959297 +HDP*L2; 379 +HDP*L8; 293839 +HDP*L21
307914 +HDP*L24; 272799 +HDP*L29; 379 -DYP*L14; 543845 +FPQ*L0
578239 +FPQ*L3; 18205 +FPQ*L30; 38169 +FPQ*DROP_OHQ_Z; 73173 +ODY*L21
262904 -YZQ*L21; 23551 C_OHP_YZ*L22; 280009 C_OHP_YZ*L30; 649331 C_OHP_YZ*TX_Q_
489423 C_OHP_YZ*LX_R; 1521041 C_ODQ_YP*L2; 73173 C_ODQ_YP*L8; 1972178 C_OPQ_Y*L3
22824 C_OPQ_Y*L4; 652803 C_OPQ_Y*L35; 379 C_OPR_YZ*L14; 215775 C_HCZ_Y*TX_Q_
239693 C_CZQ_YP*L6; 262904 C_CZQ_YP*L20; 32403 C_DFY_P*L24; 379 Q_HCDQ_P*LY_R
237691 Q_CDFY_P*L27; 133204 Q_CQFY_P*L24; 883 Q_DQFZ_P*L4
```

Upper bound: `-286563407226101507104383/500000000000000000000000`.

### Leaf UTLpmpmpp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +CPQ`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHFPQ -OFP
P OHYZP -OZP
P HOFPR +HPR
P HOFQR +HQR
P COFPQ -CFP
P COFPR +CPR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOCYP +FYP
P FODPQ +FPQ
P FODPR -FPR
P FHCZP +FZP
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHFQ -PHQ
P POHZQ -PZQ
P POFQR +PQR
```

```c1top-bounds
T OHP YZ 0 lower 694/907
T OHP YZ 8 lower 694/885
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 153/200 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 907/1000
q 93/1000 907/1000
l 27/50 1
m 279/1000 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
26 L0*L0*L17; 3 L0*L2*L17; 92 L0*L3*L4; 124 L0*L3*L6
153 L0*L3*-OHD; 4 L0*L4*L13; 381 L0*L4*TX_Q_; 5 L0*L8*L35
8 L0*L12*L31; 5 L0*L12*TX_Q_; 4 L0*L12*TY_Q_; 42 L0*L17*DROP_OHQ_Z
3 L0*L20*L30; 5 L0*L21*L30; 14 L0*L24*L32; 23 L0*L30*TX_Q_
3 L0*L30*LX_R; 92 L0*TX_Q_*TX_Q_; 165 L0*TX_Q_*LX_R; 115 L1*L4*L24
23 L1*L8*L17; 1 L1*L8*TY_Q_; 5 L1*L11*L30; 85 L1*L27*L27
4 L1*L30*L30; 5 L1*L32*DROP_OHP_YZ; 5 L2*L3*L27; 5 L2*L3*L31
733 L2*L6*TY_Q_; 18 L2*L9*L27; 13 L2*L9*TX_Q_; 20 L2*L11*L12
6 L2*L12*TY_Q_; 1 L2*L20*L30; 1 L2*L29*L30; 6 L2*L30*TY_Q_
5 L2*L35*LY_R; 5 L2*L36*LY_R; 443 L2*TY_Q_*TY_Q_; 122 L2*TY_Q_*LY_R
24 L3*L4*LY_R; 5 L3*L6*LY_R; 60 L3*L19*L23; 739 L3*L23*TX_Q_
39 L3*L24*TY_Q_; 31 L3*L26*TX_Q_; 28 L3*L26*LY_R; 2 L3*L30*L31
1 L3*L30*L34; 5 L3*L30*TX_Q_; 8 L3*L30*LY_R; 1 L3*L36*TX_Q_
3 L3*LY_R*LY_R; 60 L4*L4*L17; 8 L4*L6*L9; 144 L4*L6*TY_Q_
3 L4*L8*TX_Q_; 3 L4*L16*L30; 15 L4*L17*L24; 1 L4*L17*DROP_OHP_YZ
24 L4*L17*LY_R; 204 L4*TX_Q_*TY_Q_; 69 L4*TX_Q_*LY_R; 9 L4*LY_R*LY_R
50 L5*L9*LY_R; 14 L5*L11*L12; 61 L5*L17*L21; 60 L5*L19*L21
24 L5*L20*L24; 4 L5*L24*TX_Q_; 1 L5*L30*TX_Q_; 21 L6*L6*L25
1 L6*L6*L34; 292 L6*L6*TY_Q_; 136 L6*L18*TX_Q_; 47 L6*L19*L27
45 L6*L19*-OHD; 40 L6*L20*L21; 20 L6*L20*TX_Q_; 23 L6*L20*LY_R
302 L6*L21*TY_Q_; 566 L6*L23*L27; 73 L6*L24*LY_R; 891 L6*L27*DROP_OCR_YZ
5 L6*L31*L31; 1 L7*L17*L18; 42 L7*L21*L24; 191 L7*L26*TX_Q_
3 L8*L8*L9; 3 L8*L8*L17; 3 L8*L10*TX_Q_; 1 L8*L12*L30
9 L8*L12*TX_Q_; 14 L8*L12*LY_R; 3 L8*L17*L36; 34 L8*L17*DROP_OCR_YZ
7 L8*L18*L34; 32 L8*L19*LY_R; 2 L8*L20*LY_R; 1 L8*L24*L27
1 L8*L24*LY_R; 22 L8*L27*C_OCF_Y; 10 L8*L28*LY_R; 13 L8*L29*LY_R
1 L8*L30*L30; 11 L8*L33*TX_Q_; 107 L9*LY_R*LY_R; 14 L10*L12*TY_Q_
24 L10*L12*LY_R; 3 L10*L13*L16; 15 L10*L15*L20; 4 L10*L18*TY_Q_
4 L10*L19*TY_Q_; 5 L10*L27*L36; 1 L10*L30*TX_Q_; 4 L10*L31*TX_Q_
5 L10*L36*LY_R; 3 L10*C_OHD_Z*TX_Q_; 5 L11*L14*C_OHD_Z; 3 L12*L16*L30
3 L12*L18*TY_Q_; 8 L12*L20*L27; 8 L12*L20*LY_R; 1 L12*L22*L30
4 L12*L22*TX_Q_; 9 L12*L27*TX_Q_; 61 L12*L27*DROP_OCR_YZ; 7 L12*L28*TY_Q_
8 L12*L30*TX_Q_; 3 L12*L31*L31; 4 L12*L34*TX_Q_; 18 L12*L35*LY_R
7 L12*L36*LY_R; 16 L12*TX_Q_*TY_Q_; 46 L12*TY_Q_*LY_R; 119 L13*L27*LY_R
3 L14*L17*DROP_OHP_YZ; 3 L14*L19*L24; 2 L14*L21*L27; 2 L14*L22*L30
1 L14*L23*TX_Q_; 2 L14*L24*L30; 55 L14*L24*LY_R; 1 L14*L29*LY_R
1 L14*L30*TX_Q_; 1 L14*L34*TX_Q_; 3 L14*TX_Q_*TX_Q_; 2 L14*TX_Q_*LY_R
7 L15*L30*LY_R; 37 L16*L20*LY_R; 54 L16*L21*DROP_OHP_YZ; 54 L17*L17*L20
3 L17*L18*L30; 74 L17*L20*L22; 17 L17*L20*L32; 27 L17*L20*TY_Q_
27 L17*L22*L24; 4 L17*L22*L30; 13 L17*L22*TX_Q_; 10 L17*L24*LY_R
6 L17*L27*L30; 41 L17*L27*TX_Q_; 6 L17*L30*LY_R; 3 L17*L32*TX_Q_
1 L17*L34*DROP_OCR_YZ; 34 L17*L35*LY_R; 1 L17*DROP_OHP_YZ*TY_Q_; 50 L17*TX_Q_*LY_R
240 L17*TY_Q_*TY_Q_; 32 L17*TY_Q_*LY_R; 2 L18*L26*TX_Q_; 1 L18*DROP_OHP_YZ*TX_Q_
113 L18*TX_Q_*TX_Q_; 34 L18*TX_Q_*LY_R; 240 L19*L21*TY_Q_; 2 L19*L30*LY_R
21 L19*TX_Q_*TX_Q_; 8 L20*L20*L34; 890 L20*L27*L27; 133 L20*L27*L28
5 L20*L30*L31; 1 L20*L30*L32; 4 L20*L32*TX_Q_; 1 L20*L32*LX_R
40 L20*L32*LY_R; 6 L20*L34*DROP_OHP_YZ; 21 L20*DROP_OHQ_Z*LX_R; 1 L20*TX_Q_*LY_R
1 L20*LY_R*LY_R; 518 L21*L23*L24; 138 L21*L25*L27; 519 L21*L26*TX_Q_
6 L21*L27*L32; 1 L21*L34*TY_Q_; 333 L22*L24*L27; 13 L22*L24*TY_Q_
7 L22*L28*L30; 77 L22*L28*TX_Q_; 1 L22*L30*L30; 1 L22*L34*LX_R
3 L22*L36*DROP_OHP_YZ; 893 L23*L24*L26; 5 L23*L30*DROP_OHP_YZ; 9 L23*LY_R*LY_R
42 L24*L27*TX_Q_; 42 L24*L27*DROP_OCR_YZ; 7 L24*L30*L32; 21 L24*TX_Q_*TX_Q_
114 L24*TX_Q_*LY_R; 122 L24*TY_Q_*LY_R; 42 L24*LY_R*LY_R; 4 L25*L27*L34
6 L25*TY_Q_*TY_Q_; 4 L26*L34*TX_Q_; 1 L26*L35*LY_R; 185 L26*TX_Q_*LY_R
86 L27*L27*-OHD; 1 L27*L28*L30; 2 L27*L28*DROP_OHP_YZ; 9 L27*L30*TX_Q_
2 L27*L30*DROP_OCR_YZ; 2 L27*L32*TX_Q_; 4 L27*DROP_OHP_YZ*TY_Q_; 25 L27*DROP_OHP_YZ*DROP_OCR_YZ
10 L27*DROP_OHP_YZ*LX_R; 65 L27*DROP_OHQ_Z*LX_R; 76 L27*TX_Q_*TY_Q_; 7 L28*L28*L30
90 L28*L28*TX_Q_; 1 L28*L30*LY_R; 5 L28*L35*TX_Q_; 24 L28*TX_Q_*TX_Q_
5 L29*L31*L33; 3 L29*L32*DROP_OHP_YZ; 3 L30*L30*DROP_OHP_YZ; 5 L30*L30*TX_Q_
3 L30*L30*LY_R; 1 L30*L31*L31; 2 L30*L31*LY_R; 15 L30*TX_Q_*TY_Q_
46 L30*TY_Q_*LY_R; 110 L30*LY_R*LY_R; 11 L31*DROP_OHP_YZ*TY_Q_; 2 L31*TX_Q_*LY_R
7 L32*L34*DROP_OHP_YZ; 11 L32*TX_Q_*TX_Q_; 10 L32*TX_Q_*LX_R; 2 L35*TX_Q_*LY_R
3 L36*L36*TX_Q_; 23 DROP_OHP_YZ*TX_Q_*TY_Q_; 21 DROP_OHP_YZ*LY_R*LY_R; 69 TX_Q_*TY_Q_*LY_R
28 TX_Q_*LY_R*LY_R; 9 TY_Q_*LY_R*LY_R; 123 KLOW*L6; 156 KLOW*-OHD
402 KLOW*TY_Q_; 32 QUADP*L17; 2 QUADQ*L34; 9 QUADR*L3
8 QUADR*L10; 2 QUADR*L30; 25 QUADR*TX_Q_; 31 QUADR*LY_R
2 -HYZ*L0; 17 +OCY*L12; 5 +OCY*L20; 5 -HCY*TX_Q_
2 +OCZ*L31; 11 +OCZ*LY_R; 270 +CDP*L4; 28 +CDP*L24
43 +CDP*L25; 1 +CDP*L26; 3 +CDP*L30; 3 +CDP*L34
3 +CDP*+OCF; 570 +CDP*TY_Q_; 13 +CDP*LY_R; 57 +DFP*L20
6 +HYP*L12; 14 +HYP*L24; 3 -CYP*L17; 5 -CYP*L24
3 -CZP*L31; 3 -CZP*DROP_OHP_YZ; 2 -CZP*LY_R; 10 -HFQ*L13
241 -HFQ*L27; 3 +CDQ*L3; 1 +CDQ*L32; 1 +CDQ*L34
30 -DFQ*L4; 459 -DFQ*L6; 77 -DFQ*LY_R; 4 -CYQ*L14
10 -CYQ*L26; 4 -CZQ*L35; 5 -CZQ*LX_R; 1 -DYQ*TY_Q_
173 -OHR*L1; 163 -OHR*L23; 42 +HFR*L20; 366 +HFR*L22
1 +HYR*L2; 6 +HYR*L17; 5 +HYR*L18; 54 +HZR*L1
2 +HZR*L20; 47 +HZR*L26; 6 -DYR*L28; 2 -FZR*L34
191 -FQR*L7; 327 -FQR*L21; 1104 -FQR*DROP_OCR_YZ; 1 +CYZ*L3
5 +CYZ*L24; 2 +CYZ*L26; 5 +CYZ*LY_R; 7 -OYP*L7
9 -OYP*L12; 2 -OYP*L22; 2 -OYP*L28; 7 -OYP*L34
7 -OYP*LY_R; 2 +OYQ*L30; 7 -OZQ*L8; 18 -OZQ*L10
6 -OZQ*L16; 8 -OZQ*L24; 2 -OZQ*L34; 5 +OZR*L8
2 +OZR*L30; 2 +OZR*L34; 5 +OZR*DROP_OCR_YZ; 6 +CPQ*L8
32 +CPQ*L16; 330 +CPQ*L22; 21 +CPQ*TX_Q_; 113 +CPQ*TY_Q_
21 +CPQ*LX_R; 3 -OZP*TY_Q_; 23 +HPR*L20; 3 +HPR*LY_R
87 +HQR*L0; 17 +HQR*L8; 1 +HQR*L14; 18 +HQR*L17
6 +HQR*L22; 1 +HQR*L30; 8 +HQR*L31; 191 +HQR*TX_Q_
1 +HQR*TY_Q_; 11 -CFP*LY_R; 3 +CPR*L34; 3 +CQR*L3
23 -DPQ*L7; 205 -DPQ*L22; 3 -DPQ*L30; 14 -DPQ*L31
44 +FPQ*L6; 1 -FYZ*L29; 5 -YZQ*L20; 9 +YPQ*L20
2 +YPQ*L26; 11 +YPQ*TX_Q_; 2 +YPQ*TY_Q_; 4 +YPQ*LX_R
34 +YPQ*LY_R; 1 +YQR*L30; 50 +HPQ*TX_Q_; 32 +PQR*L17
98 C_OHP_YZ*L20; 42 C_OHP_YZ*DROP_OCR_YZ; 3 C_OPQ_Y*L30; 35 C_OPQ_Y*C_OCF_Y
32 C_OPR_YZ*L17; 6 C_OPR_YZ*L30; 5 C_OPR_YZ*L32; 2 C_HCZ_Y*L12
3 C_HCZ_Y*L30; 76 C_CDF_P*L0; 1 C_CDF_P*L10; 4 C_CDF_P*L24
185 C_CDQ_P*L19; 719 C_CDQ_P*L20; 28 C_CDQ_P*L25; 281 C_CDQ_P*L28
132 C_CDQ_P*DROP_OCR_YZ; 591 TPX_Q_*L2; 142 TPX_Q_*L29; 297 TPY_Q_*L1
6 Q_OYQH_Z*L0; 3 Q_OYQH_Z*L4; 8 Q_OYQH_Z*L6; 8 Q_OYQH_Z*L12
2 Q_OYQH_Z*L14; 7 Q_OYQH_Z*L24; 4 Q_OYQH_Z*L31; 6 Q_OPRH_YZ*L12
75 Q_OCDQ_YP*L23; 3 Q_OCDQ_YP*L30; 2 Q_OCPQ_Y*L24; 6 Q_HCDQ_P*L12
2 Q_HZCP_Y*TY_Q_; 1 Q_HZCQ_Y*L20; 138 Q_CDQF_P*L4; 25 Q_CDQF_P*DROP_OHQ_Z
3 Q_CDQY_P*L23; 1 Q_CPRZ_Y*L26; 388 LEFTSUP
```

Upper bound: `-133138539/62500000`.

### Leaf UTLpmpp

Assumptions: `+CYZ -OYP +OYQ +OZQ`.

```c1top-geometry
P OHFYQ -OFY
P OHFYR +OYR
P OHFZQ -OFZ
P OHFZR +OZR
P OHFPQ -OFP
P OHYZP -OZP
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FODPQ +FPQ
P FODPR -FPR
P YOHFZ +YFZ
P YOHFP -YFP
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHFP -ZFP
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P ZOFQR +ZQR
P POHFQ -PHQ
P POFQR +PQR
```

```c1top-bounds
T OHP YZ 0 lower 694/907
T OHP YZ 8 lower 694/885
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 153/200 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 907/1000
q 93/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L1*L6; 1 L0*L3*L5; 9 L0*L3*L25; 1 L0*L7*L28
19 L0*L17*L20; 1 L0*L25*TX_Q_; 3 L0*L27*DROP_OHP_YZ; 2 L0*L33*L35
7 L0*C_OCF_YZ*TX_Q_; 20 L0*TX_Q_*LY_R; 2 L1*L4*L24; 43 L1*L6*L17
2 L1*L10*L12; 2 L1*L14*L16; 8 L1*L20*L24; 2 L1*L21*L32
5 L1*L21*L33; 3 L1*L23*C_OCF_YZ; 3 L1*L24*L29; 5 L1*L24*L33
3 L1*L30*L30; 1 L1*-OHD*TX_Q_; 3 L2*L5*L28; 35 L2*L6*TY_Q_
4 L2*L16*LY_R; 38 L2*L18*TX_Q_; 8 L2*L21*LY_R; 2 L2*TY_Q_*LY_R
2 L3*L3*L12; 2 L3*L3*L36; 7 L3*L3*DROP_OHP_YZ; 3 L3*L4*L4
11 L3*L4*L8; 46 L3*L4*L20; 7 L3*L4*L27; 4 L3*L4*L33
11 L3*L4*-OHD; 4 L3*L7*LY_R; 5 L3*L8*LY_R; 1 L3*L10*L22
2 L3*L11*L30; 14 L3*L11*TX_Q_; 5 L3*L12*L32; 1 L3*L14*L30
1 L3*L15*L27; 4 L3*L17*L27; 1 L3*L21*TX_Q_; 3 L3*L27*C_OCF_YZ
1 L3*L27*LX_R; 1 L3*L28*L30; 3 L3*L29*LY_R; 19 L3*TX_Q_*DROP_OCR_YZ
2 L4*L6*TY_Q_; 3 L4*L16*L27; 8 L4*L16*TX_Q_; 3 L4*L30*TX_Q_
5 L4*TX_Q_*LX_R; 1 L4*TX_Q_*LY_R; 1 L5*L19*L21; 3 L5*L24*DROP_OHP_YZ
1 L5*L29*LY_R; 2 L5*C_OCF_YZ*TY_Q_; 48 L6*L6*L17; 6 L6*L10*L17
3 L6*L14*L29; 48 L6*L17*L21; 67 L6*L17*L22; 3 L6*L18*L27
1 L6*L18*L35; 1 L6*L20*L21; 6 L6*L21*L28; 1 L6*L27*L27
2 L6*L27*L30; 1 L6*L27*L34; 16 L6*L27*LX_R; 1 L7*L7*TX_Q_
7 L7*L7*LY_R; 3 L7*L21*L27; 4 L7*L21*L32; 5 L7*L23*L24
5 L7*L23*L30; 7 L7*L24*L28; 3 L7*L28*L30; 1 L8*L9*TY_Q_
7 L8*L12*L23; 18 L8*L14*L17; 4 L8*L17*L20; 11 L8*L18*LX_R
2 L8*L21*L30; 2 L8*L21*L35; 2 L8*L23*L28; 5 L8*L24*LY_R
2 L8*L35*LY_R; 7 L9*L12*L14; 5 L9*L12*L22; 1 L9*L12*TX_Q_
2 L9*L12*LY_R; 4 L9*L17*L28; 3 L9*L27*TX_Q_; 1 L10*L12*L29
2 L10*L12*L31; 8 L10*L17*L30; 8 L10*L17*C_OCF_YZ; 7 L10*L17*TX_Q_
11 L10*L17*LX_R; 1 L10*L19*TX_Q_; 1 L10*L24*L30; 1 L10*L24*L35
2 L10*L35*DROP_OCR_YZ; 3 L11*L12*L21; 2 L11*L21*L27; 2 L11*L23*L30
6 L11*L24*C_OCF_YZ; 4 L11*TX_Q_*TX_Q_; 2 L12*L12*LY_R; 2 L12*L14*L21
16 L12*L14*L31; 7 L12*L17*TY_Q_; 3 L12*L23*L29; 2 L12*L23*L30
5 L12*L24*L27; 1 L12*L27*L30; 1 L13*L18*L24; 3 L13*TX_Q_*LY_R
3 L14*L21*TX_Q_; 2 L14*L31*L31; 3 L14*L31*TX_Q_; 3 L14*TX_Q_*TX_Q_
1 L15*L17*-OHD; 4 L16*L21*L35; 23 L17*L20*L28; 20 L17*L20*L34
11 L17*L21*L32; 1 L17*L22*L35; 1 L17*L23*L28; 1 L17*L23*LY_R
11 L17*L24*-OHD; 48 L17*L24*TX_Q_; 7 L17*L28*L33; 3 L17*L28*-OHD
12 L17*L28*C_OCF_YZ; 11 L17*L28*LX_R; 7 L17*C_OCF_YZ*C_OCF_YZ; 48 L17*TX_Q_*LX_R
14 L17*TY_Q_*LX_R; 1 L18*L20*L27; 13 L18*L20*L30; 14 L18*L20*LX_R
3 L18*L27*C_OCF_YZ; 1 L19*L24*L30; 1 L19*L24*L31; 16 L20*L24*L27
4 L20*L26*TX_Q_; 8 L21*L28*C_OCF_YZ; 1 L21*L29*TX_Q_; 3 L21*L30*LY_R
2 L21*L32*L35; 4 L21*L32*TX_Q_; 2 L21*L35*L36; 2 L21*DROP_OCR_YZ*LY_R
18 L23*L24*L26; 9 L23*L24*C_OCF_YZ; 4 L23*L24*TX_Q_; 1 L23*L27*L30
2 L23*L28*L31; 1 L23*L29*L34; 2 L23*+OCF*LY_R; 5 L24*L27*L30
1 L24*+OCF*LY_R; 15 L24*TX_Q_*LY_R; 2 L26*L35*L35; 3 L27*L30*L33
1 L28*L31*L31; 3 L28*C_OCF_YZ*LY_R; 50 L29*TX_Q_*LY_R; 3 L30*C_OCF_YZ*LY_R
1 L35*L36*TX_Q_; 20 TX_Q_*LY_R*LY_R; 1 KLOW*L28; 3 +ODF*L24
23 +OYZ*L16; 1 +OYZ*L23; 18 +OYZ*L24; 4 +OYZ*L31
10 +OYZ*L33; 15 +OYZ*+OCF; 21 +OYZ*TX_Q_; 1 +OYZ*DROP_OCR_YZ
19 +OYZ*LX_R; 4 -HCY*L3; 3 -HCY*L7; 2 -HCY*L10
23 -HCY*DROP_OHP_YZ; 14 +CDY*L3; 32 +HCP*L6; 2 +HCP*L30
3 +HCP*LY_R; 22 +CDP*L6; 33 +CDP*L8; 37 +CDP*L9
52 +CDP*L20; 18 +CDP*L29; 12 +CDP*LX_R; 3 +DFP*LY_R
22 -CYP*L6; 15 -CYP*L12; 14 -CYP*L20; 11 -CYP*L25
8 -CYP*L30; 16 -CYP*+OCF; 2 -CYP*C_OCF_YZ; 2 -HFQ*L0
21 -HFQ*L7; 4 -HFQ*L21; 77 -HFQ*L24; 13 +CDQ*L24
1 -DFQ*L1; 2 -DFQ*L4; 1 -DFQ*L12; 6 -DFQ*L25
1 -DFQ*L31; 13 -DFQ*C_OCF_YZ; 5 -DFQ*LX_R; 7 +ODQ*L17
14 +HDQ*L17; 1 -OHR*L27; 12 -OHR*TX_Q_; 2 +HFR*L4
9 +HFR*L7; 20 +HFR*L20; 19 +HFR*L22; 68 +HFR*TX_Q_
5 -DYR*L3; 1 -FQR*L12; 118 -FQR*L20; 113 -FQR*L21
36 -FQR*L24; 5 -FQR*L30; 1 -FQR*L36; 22 -FQR*C_OCF_YZ
36 -FQR*LX_R; 19 -FQR*LY_R; 11 +CYZ*L1; 5 +CYZ*L8
31 +CYZ*L12; 1 +CYZ*L19; 1 +CYZ*L22; 1 +CYZ*L27
11 +CYZ*-OHD; 8 -OYP*L12; 12 -OYP*L29; 23 +OZQ*L8
2 +OZQ*L10; 9 +OZQ*L13; 3 +OZQ*L29; 20 +OZQ*DROP_OHP_YZ
1 +OZQ*DROP_OCR_YZ; 5 -OFY*L3; 5 -OZP*L9; 1 +HQR*L26
5 +HQR*L30; 1 -DPQ*DROP_OCR_YZ; 3 -YZQ*L30; 64 C_OHP_YZ*TX_Q_
2 C_OYQ_Z*L27; 2 C_OYQ_Z*L35; 6 C_OPQ_YZ*L3; 1 C_OPQ_YZ*L4
81 C_OPQ_YZ*L6; 13 C_OPQ_YZ*L14; 14 C_OPQ_YZ*L25; 1 C_OPQ_YZ*L35
13 C_OPQ_YZ*L36; 6 C_OPQ_YZ*+OCF; 2 Q_OCDQ_YZP*L5; 6 Q_OCDQ_YZP*LX_R
12 Q_HZCP_Y*L8; 5 Q_HZCP_Y*L30; 4 Q_CDQZ_YP*L30
```

Upper bound: `-4302890507/45500000000`.

### Leaf UTLppmmm

Assumptions: `+CYZ +OYP -OZP -OZQ -OZR`.

```c1top-geometry
C OHR Z Y +ROY 3239749/6167600
P OHDZQ +ODZ
P OHFZR +OFZ
P OHFPQ -OFP
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOHYZ -FYZ
P FOHZP +FZP
P FODPQ +FPQ
P FODPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOFPR +ZPR
P ZOFQR +ZQR
P POHFQ -PHQ
P POHZQ -PZQ
P POFQR +PQR
```

```c1top-bounds
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ Y 11 lower 279/1000
T OHR Z 12 lower 93/295
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 279/1000 1
r 63/200 297/500
t 843/1000 1
```

```c1top-sum
207 L0*L0*LX_R; 2 L0*L3*L32; 5 L0*L8*L34; 6 L0*L10*LX_R
8 L0*L11*L29; 123 L0*L25*LX_R; 50 L0*L27*TX_Q_; 6 L0*L30*LX_R
27 L1*L1*L7; 5 L1*L4*L8; 18 L1*L6*L12; 4 L1*L7*L17
61 L1*L7*L21; 8 L1*L7*L22; 6 L1*L11*L24; 1 L1*L17*TX_Q_
2 L1*L19*L24; 3 L1*L21*L22; 24 L1*L21*L30; 39 L1*L21*C_OCF_Y
47 L1*L22*L27; 106 L1*L24*L29; 24 L1*L27*L30; 67 L1*L27*DROP_OHR_Z
1 L1*L29*DROP_OHP_Z; 25 L1*L29*DROP_OCR_Y; 28 L1*DROP_OHQ_Z*TX_Q_; 18 L2*L9*L27
36 L2*L12*L35; 106 L2*L14*LX_R; 2 L2*L18*L25; 59 L2*L27*DROP_OHQ_Z
96 L3*L4*L6; 44 L3*L4*L17; 5 L3*L4*L32; 39 L3*L4*DROP_OHP_Z
19 L3*L9*L34; 10 L3*L9*DROP_OHR_Z; 13 L3*L10*L24; 5 L3*L10*L26
3 L3*L11*L14; 9 L3*L13*L34; 8 L3*L15*L17; 25 L3*L17*TY_Q_
1 L3*L18*L34; 1 L3*L18*DROP_OHR_Z; 55 L3*L20*L34; 22 L3*L21*L36
49 L3*L22*L27; 18 L3*L26*L30; 43 L3*L26*TX_Q_; 3 L3*L27*DROP_OHP_Z
3 L3*L34*L34; 31 L4*L4*TX_Q_; 21 L4*L7*L7; 9 L4*L8*L35
12 L4*L9*TX_Q_; 3 L4*L10*TX_Q_; 1 L4*L20*L25; 10 L4*L20*LX_R
17 L4*L27*C_OCF_Y; 130 L4*L27*DROP_OHR_Z; 9 L4*L31*L35; 4 L4*-OHD*LX_R
6 L4*DROP_OHP_Z*TX_Q_; 75 L4*TX_Q_*LX_R; 6 L5*L21*L28; 17 L5*L21*L29
9 L5*L21*DROP_OHP_Z; 3 L6*L11*L21; 25 L6*L12*L21; 48 L6*L18*L27
43 L6*L22*L27; 48 L6*L27*C_OCF_Y; 8 L7*L8*L14; 10 L7*L8*L24
3 L7*L10*L28; 27 L7*L12*L29; 6 L7*L12*L35; 52 L7*L12*+OCF
3 L7*L14*L15; 48 L7*L15*TX_Q_; 44 L7*L17*TX_Q_; 2 L7*L19*L21
39 L7*L21*L23; 26 L7*L23*L27; 26 L7*L24*L24; 337 L7*L24*LY_R
249 L7*L27*LX_R; 10 L7*L35*LY_R; 44 L7*DROP_OHP_Z*TX_Q_; 8 L8*L12*L29
11 L8*L12*LY_R; 21 L8*L18*L27; 15 L8*L23*L29; 23 L8*L27*LX_R
2 L8*L36*TX_Q_; 54 L9*L12*L21; 14 L9*L21*L36; 17 L9*L27*L34
9 L9*L27*DROP_OHQ_Z; 11 L10*L14*L25; 10 L10*L24*TX_Q_; 3 L11*L21*TX_Q_
11 L12*L12*TX_Q_; 11 L12*L12*LX_R; 1 L12*L19*L35; 8 L12*L19*+OCF
80 L12*L20*L27; 11 L12*L20*L30; 1 L12*L20*TX_Q_; 33 L12*L21*L22
16 L12*L21*L32; 60 L12*L22*LY_R; 84 L12*L23*LY_R; 1 L12*L25*L28
11 L12*L25*L36; 24 L12*L27*L32; 6 L12*L28*DROP_OHP_Z; 49 L12*L31*DROP_OHQ_Z
12 L12*L31*DROP_OCR_Y; 28 L12*L33*LY_R; 37 L12*L34*+OCF; 190 L12*TX_Q_*LY_R
333 L12*LX_R*LY_R; 23 L13*L18*L27; 33 L13*L23*TX_Q_; 27 L13*L29*TX_Q_
3 L14*L14*L29; 1 L14*L14*L31; 2 L14*L19*L24; 191 L14*L21*DROP_OHR_Z
229 L14*L25*L25; 81 L14*L25*LX_R; 1 L15*L17*L35; 1 L15*L21*TX_Q_
1 L16*L20*L27; 295 L17*L27*DROP_OHR_Z; 15 L17*L27*DROP_OCR_Y; 14 L18*L21*L21
1 L18*L21*LX_R; 99 L18*L24*L27; 17 L19*L20*L21; 21 L19*L27*L30
149 L19*L27*DROP_OHR_Z; 4 L19*TX_Q_*TX_Q_; 51 L21*L21*L27; 29 L21*L21*L28
1 L21*L21*L36; 3 L21*L23*L35; 10 L21*L27*L35; 3 L21*L32*TY_Q_
26 L21*DROP_OHP_Z*TY_Q_; 13 L21*TY_Q_*LX_R; 47 L22*L27*-OHD; 9 L23*L24*L30
9 L23*L29*LY_R; 384 L24*L24*LY_R; 130 L24*L27*TY_Q_; 11 L24*L32*L36
27 L24*LY_R*LY_R; 26 L25*L25*LX_R; 27 L25*L27*L27; 65 L26*L27*DROP_OHP_Z
130 L26*TX_Q_*LY_R; 17 L27*L28*L29; 23 L27*L30*DROP_OHR_Z; 30 L27*L31*L36
10 L27*L32*TX_Q_; 17 L27*L36*+OCF; 24 L27*L36*DROP_OHQ_Z; 295 L27*DROP_OHP_Z*DROP_OHR_Z
222 L27*DROP_OHR_Z*DROP_OHR_Z; 162 L27*LX_R*LX_R; 10 L29*L35*DROP_OHR_Z; 5 L31*C_OHD_Z*TX_Q_
48 L34*TX_Q_*LX_R; 18 DROP_OHQ_Z*TX_Q_*LY_R; 20 TX_Q_*TX_Q_*DROP_OCR_Y; 5 TOPCOUNT*L1
101 +CDF*L24; 9 +CDF*L30; 134 -HYZ*L3; 7 -HYZ*LX_R
13 -HCY*L6; 169 -HCY*L13; 5 -HCY*L14; 1 -HCY*L18
42 -HCY*L26; 5 -HCY*L28; 5 +CDY*L12; 1 +CDY*DROP_OHQ_Z
32 -OHZ*L11; 19 -OHZ*L17; 24 -OHZ*L23; 44 -OHZ*L25
84 -OHZ*L33; 31 -OHZ*L35; 205 -OHZ*DROP_OHQ_Z; 59 -OHZ*DROP_OCR_Y
278 -OHZ*LX_R; 42 -HCZ*L12; 6 +CDZ*TX_Q_; 3 -HFP*L7
8 +CDP*L21; 6 +CDP*L30; 6 +CDP*L31; 12 +HYP*L12
17 +HZP*L12; 17 -CZP*L12; 54 -HFQ*L7; 19 -HFQ*L30
76 +CDQ*L7; 9 +CDQ*-OHD; 33 +CDQ*DROP_OHP_Z; 101 +CDQ*LX_R
16 -DFQ*L9; 15 -DFQ*L33; 6 -DFQ*DROP_OHP_Z; 54 -DFQ*DROP_OHR_Z
18 -DFQ*DROP_OCR_Y; 54 -DFQ*LX_R; 23 -OFQ*L21; 3 -DYQ*L21
2 +HFR*L19; 207 +HFR*L22; 261 +HFR*L24; 106 +HFR*L29
14 +HFR*L30; 97 +HFR*-OHD; 82 +HFR*C_OHD_Z; 88 +HFR*DROP_OHQ_Z
1 +HFR*TY_Q_; 50 +HFR*DROP_OCR_Y; 24 +HDR*L21; 6 +OPQ*L6
17 +OPQ*L30; 2 +OPQ*C_OHD_Z; 7 +OPQ*C_OCF_Y; 209 -FQR*L1
101 -FQR*L3; 1 -FQR*L9; 29 -FQR*L21; 130 -FQR*L26
29 +CYZ*L6; 1 +CYZ*L14; 1 +CYZ*L18; 102 +CYZ*L22
102 +CYZ*L23; 10 +CYZ*-OHD; 7 +CYZ*DROP_OHP_Z; 16 +CYZ*TX_Q_
23 +CYZ*DROP_OHR_Z; 47 +CYZ*DROP_OCR_Y; 17 +OYP*L6; 18 +OYP*L14
19 +OYP*L36; 17 +OYP*TX_Q_; 24 -OZQ*L27; 181 -OZR*L7
101 -OZR*L8; 39 -OZR*L13; 27 -OZR*L17; 2 -OZR*L18
143 -OZR*L20; 132 -OZR*L31; 11 -OZR*-OHD; 27 -OZR*DROP_OHP_Z
310 -OZR*LX_R; 15 +OYQ*L2; 17 +OYQ*L17; 10 +OYQ*L24
1 +HPR*TX_Q_; 17 +HQR*L21; 9 +DQR*L12; 26 -DPQ*L21
2 +FPQ*L1; 3 +FPQ*L8; 3 +FPQ*L9; 1 +FPQ*+OCF
50 -FPR*L27; 1 -FPR*L29; 6 -YZP*L2; 2 +ZPR*L3
17 +HPQ*L12; 154 C_OHF_Z*L27; 63 C_OHR_Z*L27; 40 C_OCQ_Y*L27
97 C_HCZ_Y*L6; 11 C_HCZ_Y*L20; 115 C_HCZ_Y*L30; 6 C_CZP_Y*L31
31 TPX_Q_*L4; 26 TPX_Q_*L24; 60 TPY_Q_*L2; 13 TPY_Q_*L8
18 Q_ODQH_Z*L27; 7 Q_OCDQ_YP*L17; 6 Q_HZCD_Y*L3; 1 Q_CDQZ_YP*L6
10 Q_CDRZ_Y*L12
```

Upper bound: `-4813491731/1000000000`.

### Leaf UTLppmmpmm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ -CPR`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CFP
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POFQR +PQR
P PCDFR +PDR
```

```c1top-bounds
```

Exclusion: `cluster OCR Z CRZ YP`.

### Leaf UTLppmmpmpmmm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP -CFP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DHCPQ -DPQ
P FOCYP +FYP
P FODPQ +FPQ
P FODPR -FPR
P FHCZP +FZP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCQR +PQR
```

```c1top-bounds
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
17 L0*L0*L31; 1 L0*L0*TY_Q_; 19 L0*L1*L17; 55 L0*L3*L4
32 L0*L3*L24; 49 L0*L3*DROP_OHP_Z; 1 L0*L4*L32; 32 L0*L6*L29
1 L0*L6*L34; 182 L0*L6*TX_Q_; 50 L0*L7*L12; 2 L0*L12*L19
19 L0*L12*L21; 44 L0*L12*L29; 1 L0*L18*L25; 1 L0*L21*TY_Q_
1 L0*L28*L35; 1 L0*L31*LX_R; 124 L1*L1*L24; 2 L1*L2*L31
34 L1*L2*TY_Q_; 41 L1*L3*L17; 1 L1*L5*L31; 8 L1*L10*L12
1 L1*L23*LY_R; 45 L1*L24*L27; 2 L1*L24*L30; 135 L1*L24*TX_Q_
58 L1*L28*L29; 3 L2*L2*L11; 7 L2*L2*L19; 27 L2*L2*L28
42 L2*L2*TY_Q_; 28 L2*L7*LY_R; 3 L2*L8*L28; 1 L2*L12*L28
1 L2*L19*TY_Q_; 61 L2*L23*L24; 2 L2*L31*TY_Q_; 28 L2*DROP_OHP_Z*TY_Q_
103 L3*L3*L22; 1 L3*L4*L18; 1 L3*L6*L10; 150 L3*L6*L15
98 L3*L6*L18; 260 L3*L6*L22; 39 L3*L6*L27; 198 L3*L6*L34
3 L3*L10*L18; 2 L3*L10*L27; 1 L3*L14*L22; 33 L3*L17*L23
5 L3*L18*L21; 1 L3*L18*L26; 2 L3*L18*LX_R; 1 L5*L8*L29
69 L5*L21*L29; 263 L6*L7*L27; 2 L6*L9*L22; 1 L6*L9*L27
384 L6*L12*TY_Q_; 408 L6*L14*L21; 43 L6*L17*L27; 2 L6*L19*L24
1 L6*L19*L27; 216 L6*L21*TY_Q_; 110 L6*L24*L27; 9 L6*L27*L27
3 L6*L27*L34; 77 L6*L27*-OHD; 140 L6*L27*LX_R; 1 L6*L28*L34
1 L7*L14*L18; 31 L7*L23*L23; 80 L7*L23*L24; 11 L7*L26*L27
1 L7*L31*TY_Q_; 15 L7*LY_R*LY_R; 2 L9*L21*L28; 10 L10*L12*L17
2 L10*L12*L27; 2 L10*L17*L26; 10 L12*L18*L30; 1 L12*L19*L22
8 L12*L21*L22; 1 L12*L21*L28; 57 L12*L21*LY_R; 15 L12*L22*L31
5 L12*L24*LY_R; 9 L12*L27*L31; 38 L12*L27*+OCF; 6 L12*L27*LX_R
9 L12*L31*LY_R; 9 L13*L23*L27; 3 L14*L18*L31; 2 L14*L18*L35
8 L14*L21*L21; 1 L14*L21*L26; 15 L14*L21*L31; 11 L14*L24*LX_R
2 L14*L27*L31; 1 L17*L21*L34; 72 L17*L23*L24; 6 L17*L23*L29
31 L17*L24*L27; 31 L17*L24*LY_R; 60 L17*TX_Q_*LY_R; 1 L18*L21*L34
1 L18*L24*L29; 2 L19*L27*L30; 122 L21*L21*L27; 122 L21*L23*L24
1 L21*L23*L28; 42 L21*L24*L26; 2 L21*L27*L31; 32 L21*L28*L29
12 L21*DROP_OHP_Z*LY_R; 42 L22*L23*L24; 1 L22*L27*-OHD; 82 L23*L24*L24
10 L23*L24*L36; 42 L23*L27*TX_Q_; 12 L23*L29*TX_Q_; 12 L24*L26*L27
123 L24*TX_Q_*LY_R; 12 L24*LY_R*LY_R; 96 L29*TX_Q_*LY_R; 2 L30*TX_Q_*LY_R
25 KLOW*L3; 5 KLOW*L9; 7 KLOW*L13; 8 KLOW*L14
14 KLOW*L16; 14 KLOW*L19; 60 KLOW*L28; 129 KLOW*TX_Q_
9 +OYZ*L1; 1 +OYZ*L29; 18 -HCY*L1; 5 -HCY*L17
7 -HCY*L18; 5 -HCY*DROP_OHP_Z; 4 +CDY*L3; 61 -OHZ*L6
8 -OHZ*L10; 3 -OHZ*L18; 45 -OHZ*L27; 9 -OHZ*L31
11 -OHZ*LX_R; 28 +CDP*L4; 84 +CDP*L23; 1 +DFP*L14
27 -CYP*L0; 91 -HFQ*L24; 43 +CDQ*L1; 1 +CDQ*L15
110 +CDQ*L18; 1 +CDQ*L21; 30 +CDQ*L28; 2 +CDQ*L31
15 +CDQ*+OCF; 74 +CDQ*DROP_OHP_Z; 77 -DFQ*L2; 111 -DFQ*L21
180 -OHR*L1; 8 -OHR*L2; 119 -OHR*L23; 17 -OHR*L27
14 +HFR*L3; 1 +HFR*L8; 42 +HFR*L10; 2 +HFR*L12
170 +HFR*L17; 11 +HFR*L24; 5 +HFR*L27; 42 +HFR*L32
2 +HFR*L34; 140 +HFR*DROP_OHP_Z; 311 +HFR*TX_Q_; 2 +HZR*L18
38 +HZR*L29; 38 +HZR*DROP_OHQ_Z; 11 +HZR*LX_R; 92 -FQR*L6
20 -FQR*L13; 72 -FQR*L17; 122 -FQR*L21; 42 -FQR*L22
82 -FQR*L24; 472 -FQR*L27; 1 -FQR*L36; 99 -FQR*+OCF
472 -FQR*DROP_OCR_YZ; 1 +CYZ*L3; 1 +CYZ*L6; 5 +CYZ*L18
10 +CYZ*L21; 2 +CYZ*L27; 9 +CYZ*-OHD; 10 +CYZ*DROP_OHQ_Z
27 +OYP*L0; 10 +OYP*L13; 2 +OYP*L27; 1 -OZP*L2
1 -OZQ*L18; 19 -OZQ*L21; 27 -OZQ*L24; 10 -OZQ*L29
15 -OZQ*L31; 49 +OZR*L6; 9 +OZR*L22; 20 -CPQ*L0
131 -CPQ*L3; 56 -CPQ*L4; 66 -CPQ*L6; 19 -HDP*L0
76 -HDP*L3; 44 -HDP*L20; 1 -HDP*L23; 30 -HDP*TX_Q_
124 -CFP*L3; 5 -CFP*L10; 134 -CFP*L20; 68 -CFP*L21
28 -CFP*L22; 39 -CFP*L24; 1 -CFP*DROP_OCR_YZ; 42 -CFP*LX_R
19 -DPQ*L1; 28 -DPQ*L4; 34 -DPQ*L21; 60 -DPQ*C_OCF_Y
34 -DPQ*DROP_OHQ_Z; 30 C_CDF_P*L17; 1 C_CZQ_YP*L2; 380 C_CZQ_YP*L6
1 C_CZQ_YP*L16; 2 C_CZQ_YP*L19; 11 C_CZQ_YP*L20; 38 C_CZQ_YP*LX_R
82 TPY_Q_*L21; 5 Q_OCDQ_YP*L12; 34 Q_CDQF_P*L0; 54 Q_CDQF_P*L2
2 Q_CDQF_P*L4; 1 Q_CDQF_P*L14; 27 Q_CDQF_P*L19; 33 Q_CDQF_P*L20
1 Q_CDQF_P*L23; 4 Q_CDQF_P*L30; 4 Q_CDQF_P*L31; 79 Q_CDQF_P*TX_Q_
```

Upper bound: `-266828839/1000000000`.

### Leaf UTLppmmpmpmmpmm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYQ +OYQ
P OHDYR +OYR
P OHDZQ +ODZ
P OHFZP -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOFQR +DQR
P DHCPQ -DPQ
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHFP -ZFP
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
```

Exclusion: `cluster OCF Z CFZ YP`.

### Leaf UTLppmmpmpmmpmp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP -ODY +OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYQ +OYQ
P OHDYR +OYR
P OHFPQ -OFP
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOFQR +DQR
P DHCPQ -DPQ
P FOHYZ -FYZ
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
4 L0*L0*TY_Q_; 1 L0*L1*-OHD; 53 L0*L12*L23; 8 L1*L1*L4
96 L1*L1*L6; 5 L1*L1*L23; 55 L1*L1*L31; 22 L1*L2*L31
10 L1*L3*L12; 4 L1*L4*L4; 67 L1*L4*L9; 3 L1*L4*L23
11 L1*L6*L12; 74 L1*L6*L24; 30 L1*L7*LY_R; 41 L1*L9*L27
82 L1*L12*L35; 5 L1*L12*DROP_OCR_YZ; 33 L1*L14*L31; 20 L1*L21*TY_Q_
54 L1*L23*L24; 5 L1*L24*L27; 154 L1*L24*L29; 9 L2*L2*L27
154 L2*L5*L21; 5 L2*L8*TY_Q_; 18 L2*L21*TY_Q_; 32 L2*L28*L28
34 L2*TY_Q_*TY_Q_; 51 L3*L3*L10; 12 L3*L3*L15; 28 L3*L3*L22
35 L3*L3*L34; 75 L3*L3*TY_Q_; 9 L3*L3*LY_R; 19 L3*L4*L4
129 L3*L4*L6; 78 L3*L4*L23; 1 L3*L4*L25; 16 L3*L5*L10
14 L3*L6*L10; 21 L3*L6*L15; 9 L3*L6*L34; 9 L3*L7*L14
82 L3*L10*L20; 8 L3*L10*L23; 45 L3*L11*L24; 38 L3*L14*L31
17 L3*L14*L35; 88 L3*L23*L23; 16 L3*L23*L24; 1 L3*L23*L31
1 L3*L26*L27; 8 L3*L27*TY_Q_; 46 L3*L27*LY_R; 2 L3*L28*L34
26 L3*L35*LY_R; 47 L3*LY_R*LY_R; 111 L4*L4*TX_Q_; 1 L4*L5*TY_Q_
13 L4*L10*TX_Q_; 43 L4*L12*L21; 8 L4*L12*L23; 8 L4*L12*L27
111 L4*L23*TX_Q_; 8 L5*L9*L24; 22 L5*L12*L35; 6 L5*L21*L31
29 L5*L21*TY_Q_; 4 L6*L6*L27; 28 L6*L6*TY_Q_; 14 L6*L11*L27
158 L6*L21*L27; 21 L6*L21*TY_Q_; 9 L6*L27*L28; 40 L6*L27*L36
89 L6*L27*-OHD; 5 L6*L30*TY_Q_; 2 L6*TY_Q_*TY_Q_; 16 L7*L7*L14
64 L7*L7*L23; 48 L7*L12*L14; 81 L7*L14*TX_Q_; 109 L7*L23*L24
47 L7*L23*L29; 2 L7*L23*L34; 1 L7*L23*L35; 58 L7*L29*LY_R
11 L7*TX_Q_*LY_R; 26 L8*L21*L27; 16 L8*L28*L28; 17 L9*L27*L29
317 L10*L12*L27; 3 L10*L14*TX_Q_; 14 L10*L20*L27; 77 L10*L24*L27
77 L10*L24*LY_R; 13 L11*L27*C_OCF_YP; 63 L12*L12*L21; 77 L12*L12*L27
28 L12*L13*L27; 3 L12*L14*L23; 43 L12*L15*L27; 61 L12*L20*L27
32 L12*L21*L23; 63 L12*L21*L30; 63 L12*L21*L35; 3 L12*L22*LY_R
32 L12*L23*TX_Q_; 79 L12*L24*L35; 79 L12*L27*L31; 209 L12*L27*+OCF
29 L12*L27*TX_Q_; 17 L12*L28*L35; 43 L12*L34*LY_R; 70 L14*L21*L24
80 L14*L27*L31; 170 L14*L31*TX_Q_; 11 L20*L24*LY_R; 154 L21*L21*L27
38 L21*L23*L24; 36 L21*L23*L29; 11 L21*L24*DROP_OCR_YZ; 3 L21*L27*L34
64 L21*L28*L31; 20 L21*L28*TY_Q_; 1 L22*L28*L28; 9 L23*L24*TY_Q_
9 L23*L27*TX_Q_; 3 L24*L31*TY_Q_; 116 L26*TX_Q_*TX_Q_; 7 L27*L28*C_OCF_YP
43 L27*L30*C_OCF_YP; 1 L28*L28*L28; 6 L28*L30*TY_Q_; 1 L28*L31*TY_Q_
3 L30*L34*TY_Q_; 23 L31*TX_Q_*LY_R; 39 -HCY*L1; 52 -HCY*L3
55 -HCY*L4; 55 -HCY*L12; 20 -HCY*L14; 74 -HCY*L20
8 -HCY*L22; 41 -HCY*L27; 47 -HCY*+OCF; 14 -HCY*TX_Q_
48 +CDQ*L5; 26 +CDQ*L7; 3 +CDQ*L8; 3 +CDQ*L15
54 +CDQ*L23; 2 +CDQ*L24; 19 +CDQ*-OHD; 101 +CDQ*+OCF
4 +CDQ*C_OCF_YP; 18 +CDQ*DROP_OHQ_Z; 11 +CDQ*LY_R; 53 -DFQ*L2
109 -DFQ*L4; 28 -DFQ*L6; 13 -DFQ*L10; 18 -DFQ*L21
8 -DFQ*L23; 2 -DFQ*L25; 43 -DFQ*L33; 59 -DFQ*+OCF
8 -DFQ*LY_R; 24 -OHR*L1; 19 +HFR*L1; 9 +HFR*L9
58 +HFR*L29; 85 +HFR*L34; 11 +HFR*TX_Q_; 8 +HFR*TY_Q_
8 +HZR*L4; 84 +HZR*L6; 77 +HZR*L10; 9 +HZR*L12
43 +HZR*L14; 64 +HZR*L23; 48 +HZR*L27; 95 +HZR*L29
9 +HZR*L30; 43 +HZR*LY_R; 88 -FQR*L7; 187 -FQR*L8
205 -FQR*L9; 38 -FQR*L21; 23 -FQR*L29; 35 -FQR*L30
14 -FQR*L35; 2 -FQR*-OHD; 9 -FQR*TY_Q_; 13 +CYZ*L1
55 +CYZ*L3; 40 +CYZ*L4; 79 +CYZ*L7; 3 +CYZ*L22
80 +CYZ*L27; 170 +CYZ*DROP_OHQ_Z; 79 +CYZ*LX_R; 166 -OZQ*L24
23 +OZR*L7; 160 +OZR*L10; 91 +OZR*L12; 55 +OZR*L20
64 +OZR*L22; 250 +OZR*L27; 88 +OZR*L31; 43 +OZR*L36
61 +OZR*C_OCF_YP; 255 +OZR*DROP_OCR_YZ; 9 -ODY*L0; 1 -ODY*L2
67 -ODY*L20; 16 -ODY*L28; 3 -ODY*L34; 40 -ODY*L36
6 -ODY*TX_Q_; 5 -ODY*TY_Q_; 11 -ODY*LX_R; 43 +OFZ*L4
66 +OFZ*L9; 3 +OFZ*L10; 48 +OFZ*L12; 65 +OFZ*L21
39 +OFZ*L27; 131 +OFZ*L29; 104 +OFZ*L31; 41 +OFZ*DROP_OHQ_Z
2 +OFZ*TY_Q_; 34 +OFZ*LX_R; 87 +OFZ*LY_R; 40 C_CFZ_YP*L5
3 C_CFZ_YP*L27; 2 C_CFZ_YP*L28; 65 C_CZQ_YP*L6; 3 C_CZQ_YP*L11
3 C_CZQ_YP*L28; 40 C_CZQ_YP*LX_R; 3 C_CZQ_YP*LY_R; 10 Q_OCDQ_YP*L27
30 Q_HZCD_YP*L3
```

Upper bound: `-20122143/31250000`.

### Leaf UTLppmmpmpmmpp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR -HDP +CFP +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYP +ODP
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HODPQ +HPQ
P HODPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHPQ -DPQ
P DOFQR +DQR
P FOCPQ +FPQ
P FOCPR -FPR
P YOHDP +YDP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHFZ +PFZ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
M OHDPZY 1
M ODHPYZ -1
M HODYZP -1
M HDOYPZ 1
M DOHZYP 1
M DHOZPY -1
M ODRPYZ -1
M ORDPZY 1
M DORZYP 1
M DROZPY -1
M RODYZP -1
M RDOYPZ 1
```

```c1top-bounds
T OHD YZP 0 lower 823/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 823/1000 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
5 L0*L3*L4; 5 L0*L3*L32; 1 L0*L6*L30; 21 L0*L7*TX_Q_
3 L0*L15*L34; 23 L0*L17*L29; 8 L0*L20*L30; 6 L0*L23*C_OCF_YP
23 L0*L27*L30; 9 L0*L34*TX_Q_; 3 L0*L36*LX_R; 53 L0*DROP_OHP_Z*TX_Q_
55 L0*TX_Q_*TX_Q_; 37 L1*L2*L24; 8 L1*L3*L22; 5 L1*L4*L10
3 L1*L14*L14; 2 L1*L18*L21; 1 L1*L20*L24; 3 L1*L21*L34
89 L1*L24*L27; 46 L1*L24*L30; 38 L1*L24*L31; 19 L1*L24*DROP_OHP_Z
26 L1*L24*TX_Q_; 70 L1*L24*LY_R; 81 L1*L27*LX_R; 5 L2*L24*L28
8 L3*L3*L22; 16 L3*L4*C_OCF_YP; 29 L3*L4*DROP_OHP_Z; 13 L3*L4*TX_Q_
52 L3*L6*L18; 2 L3*L10*L20; 2 L3*L14*L18; 3 L3*L18*DROP_OHP_Z
42 L3*L18*TX_Q_; 99 L3*L27*TX_Q_; 10 L3*L27*LX_R; 7 L4*L9*L21
5 L4*L11*L27; 2 L4*L12*L19; 1 L4*L35*TX_Q_; 5 L4*L35*LY_R
1 L5*L9*L12; 7 L5*L12*L12; 10 L5*L20*L21; 34 L6*L22*TX_Q_
15 L6*L24*LY_R; 51 L6*L27*DROP_OHP_Z; 27 L6*L27*DROP_OHQ_Z; 125 L6*L27*DROP_OCR_YZ
35 L7*L16*LY_R; 53 L7*L23*DROP_OHP_Z; 15 L7*L27*LX_R; 3 L8*L12*L34
3 L8*L21*L23; 4 L8*L23*L24; 8 L8*L27*DROP_OHQ_Z; 4 L8*L27*TY_Q_
1 L8*L28*L29; 3 L9*L12*L22; 1 L9*L18*L24; 8 L10*L23*L24
1 L10*TX_Q_*LY_R; 2 L11*L18*TX_Q_; 1 L11*L24*TX_Q_; 2 L12*L13*L18
3 L12*L13*L32; 7 L12*L18*L25; 3 L12*L24*L35; 7 L12*L27*L33
14 L12*L27*DROP_OHP_Z; 31 L12*L27*TX_Q_; 5 L12*L31*LY_R; 2 L12*L32*L34
3 L12*L32*DROP_OHP_Z; 7 L12*L35*C_OCF_YP; 2 L14*L14*L31; 7 L14*L24*L30
30 L14*L29*TX_Q_; 1 L16*L22*L27; 21 L16*TX_Q_*LY_R; 24 L17*L27*C_OCF_YP
5 L18*L20*L21; 2 L19*L32*TX_Q_; 1 L20*L27*TY_Q_; 4 L20*L27*LY_R
11 L21*L21*L34; 32 L21*L23*L29; 5 L21*L23*DROP_OHP_Z; 57 L21*L27*DROP_OCR_YZ
75 L21*TX_Q_*LY_R; 2 L22*L24*L27; 12 L22*L27*L31; 17 L23*L24*L33
91 L23*L24*DROP_OHP_Z; 2 L23*L27*TX_Q_; 67 L23*L27*LX_R; 5 L23*L29*L29
28 L23*L29*DROP_OHP_Z; 46 L23*L29*TX_Q_; 3 L26*L27*C_OCF_YP; 5 L27*L29*L34
1 L27*L30*TY_Q_; 25 L27*DROP_OHP_Z*DROP_OHP_Z; 12 L30*TX_Q_*LY_R; 3 L31*TX_Q_*TY_Q_
11 L34*TX_Q_*LY_R; 5 C_OCF_YP*TX_Q_*LY_R; 16 TX_Q_*DROP_OCR_YZ*LY_R; 7 +OCD*L27
23 +OYZ*L2; 4 -HYZ*TX_Q_; 6 -HCY*L14; 7 -HCY*L26
5 -HCY*L34; 16 -HCY*DROP_OHP_Z; 4 -OHZ*L9; 37 -OHZ*L27
80 -OHZ*TX_Q_; 119 -HFQ*L24; 3 +CDQ*L24; 12 +CDQ*L29
10 -DFQ*L17; 12 -DFQ*L21; 1 -DFQ*L35; 5 -DFQ*LX_R
1 +FYQ*L1; 68 -OHR*L1; 75 +HFR*L6; 31 +HFR*L13
7 +HFR*L18; 7 +HFR*L22; 8 +HFR*L30; 5 +HFR*L33
7 +HFR*L36; 7 +HFR*DROP_OHP_Z; 74 +HFR*DROP_OCR_YZ; 6 +HYR*L23
2 +HZR*L1; 1 +HZR*L8; 7 +HZR*L17; 36 +HZR*L21
13 +HZR*L27; 41 +HZR*DROP_OHQ_Z; 4 -FQR*L8; 1 -FQR*L10
103 -FQR*L27; 91 -FQR*L29; 5 -FQR*L33; 3 -FQR*+OCF
91 -FQR*DROP_OHP_Z; 66 -FQR*DROP_OHQ_Z; 172 -FQR*DROP_OCR_YZ; 13 +CYZ*L3
2 +CYZ*L14; 28 +CYZ*L20; 26 +CYZ*L21; 6 +CYZ*L22
5 +OYP*DROP_OHQ_Z; 27 -OZQ*L24; 28 -OZQ*L29; 9 +OZR*L22
24 +OZR*L24; 4 +OZR*L30; 2 +OZR*C_OCF_YP; 18 +OZR*DROP_OHP_Z
33 +OZR*DROP_OHQ_Z; 13 +OZR*DROP_OCR_YZ; 14 +OZR*LX_R; 51 +CPR*L20
25 +CPR*DROP_OHP_Z; 18 +CPR*DROP_OHQ_Z; 10 +CPR*LX_R; 3 -HDP*L9
8 -HDP*L17; 68 -HDP*L20; 10 -HDP*L30; 21 -HDP*C_OCF_YP
16 -HDP*DROP_OHP_Z; 11 -HDP*DROP_OCR_YZ; 20 -HDP*LX_R; 7 +CFP*L27
6 +ODY*L6; 11 +ODY*L14; 6 +ODY*L22; 4 +ODY*L29
6 +ODY*L33; 11 +ODY*L34; 64 +HQR*L29; 141 +HQR*TX_Q_
5 +FPQ*L21; 5 -FPR*L1; 4 -DYP*L1; 5 -DYP*TX_Q_
1 -FYZ*L24; 5 -YZP*L29; 1 -YZP*C_OCF_YP; 5 +FZP*L21
28 +ZPQ*L2; 6 -DYZ*L4; 3 -DYZ*L8; 6 -DYZ*L33
6 -DYZ*-OHD; 14 -DYZ*DROP_OHP_Z; 38 -DYZ*DROP_OHQ_Z; 6 -DYZ*TY_Q_
1 C_OCP_Y*L23; 16 C_ODZ_Y*LX_R; 10 C_ODP_Y*L6; 10 C_ODP_Y*L20
11 C_ODP_Y*L26; 8 C_ODP_Y*DROP_OHP_Z; 9 C_ODQ_YP*L6; 28 C_ODQ_YP*L20
13 C_ODQ_YP*L30; 25 C_ODQ_YP*L33; 16 C_ODQ_YP*+OCF; 69 C_ODQ_YP*DROP_OHP_Z
12 C_ODQ_YP*DROP_OHQ_Z; 5 C_CDZ_Y*L23; 16 C_CDZ_Y*L24; 1 C_CDZ_Y*L33
4 C_CDZ_Y*+OCF; 1 C_CDR_P*L22; 30 C_CFZ_YP*TX_Q_; 3 C_CFR_P*L27
7 C_CZP_Y*L9; 2 C_CZP_Y*L14; 2 C_CZP_Y*L28; 19 C_CZQ_YP*L6
21 C_CZQ_YP*L20; 9 C_CZQ_YP*L21; 10 C_CZQ_YP*C_OCF_YP; 11 C_CZQ_YP*DROP_OCR_YZ
15 C_CZQ_YP*LX_R; 2 TPX_Q_*L24; 5 TPX_Q_*L29; 2 Q_OCQF_YP*LY_R
12 Q_ODPZ_Y*L8; 3 Q_ODPZ_Y*L33; 2 Q_ODPZ_Y*L36; 17 Q_ODPZ_Y*C_OCF_YP
11 Q_ODPZ_Y*DROP_OHP_Z; 4 Q_ODPZ_Y*TX_Q_; 2 Q_HYCD_P*L0; 5 Q_HYCD_P*L22
2 Q_HZCD_YP*L18; 7 SP_HZCD_YP_HC1*L26; 2 SP_HZCD_YP_HC1*L34; 22 SP_HZCD_YP_HC1*DROP_OHP_Z
5 SP_HZCD_YP_ZD1*L3; 11 SP_HZCD_YP_ZD1*L16; 34 SP_HZCD_YP_ZD1*L20; 3 SP_HZCD_YP_ZD1*L30
10 SP_HZCD_YP_ZD1*TX_Q_; 1 SP_HZCD_YP_ZD1*LX_R; 12 Q_HZCF_YP*L27; 34 Q_CDPZ_Y*L20
13 Q_CDPZ_Y*L25; 3 Q_CDQZ_YP*L31; 1 SP_CDRZ_YP_CR-1*L23; 1 Q_CDQR_P*L0
4 Q_CPRZ_Y*L12; 10 Q_CPRZ_Y*L24; 1 Q_DQFZ_P*LY_R; 2 M_RDOYPZ_1_4*L0
31 M_HODYZP_-1_0*TX_Q_; 2 M_HODYZP_-1_4*L0; 1 M_HODYZP_-1_4*L25; 2 LEFTSUP
```

Upper bound: `-4582283369/1000000000`.

### Leaf UTLppmmpmpmp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR -DPR +HDP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHCP -DOP
P DOHZP -DZP
P DOFPQ -DPQ
P DOFQR +DQR
P DHCYP -DYP
P FODPQ +FPQ
P FODPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L0*L13; 21 L0*L1*L17; 7 L0*L2*L21; 2 L0*L3*L4
15 L0*L3*L19; 30 L0*L3*DROP_OHP_Z; 45 L0*L3*TX_Q_; 4 L0*L4*TX_Q_
10 L0*L6*L21; 19 L0*L6*TX_Q_; 52 L0*L12*TX_Q_; 6 L0*L14*L29
3 L0*L17*L20; 12 L0*L17*L25; 35 L0*L17*L33; 61 L0*L17*LX_R
10 L0*L18*L21; 6 L0*L18*L25; 26 L0*L23*L29; 12 L0*L27*L33
32 L0*L34*TX_Q_; 26 L0*L34*LX_R; 24 L0*TX_Q_*LX_R; 32 L0*TX_Q_*LY_R
10 L1*L3*L3; 17 L1*L12*L18; 10 L1*L12*L23; 1 L1*L12*LY_R
3 L1*L24*L27; 9 L1*L24*TX_Q_; 12 L2*L7*L24; 42 L2*L23*L24
3 L2*L27*LY_R; 12 L3*L3*L4; 10 L3*L3*L34; 7 L3*L4*L14
16 L3*L4*L20; 5 L3*L4*L27; 12 L3*L4*LX_R; 3 L3*L6*L15
15 L3*L6*L22; 10 L3*L14*L21; 5 L3*L15*LY_R; 4 L3*L17*L36
11 L3*L18*L29; 12 L3*L18*LX_R; 6 L3*L19*L27; 166 L3*L20*L27
3 L3*L21*L23; 5 L3*L23*L27; 9 L3*L23*L29; 62 L3*L24*L27
12 L3*L25*LX_R; 7 L3*L27*DROP_OCR_YZ; 37 L3*L34*LX_R; 21 L4*L6*L27
17 L4*L12*L17; 12 L4*L26*TX_Q_; 17 L5*L12*L24; 5 L5*L12*L27
38 L6*L6*L27; 50 L6*L17*L27; 57 L6*L21*L27; 2 L6*L21*TY_Q_
1 L6*L24*L27; 44 L6*L27*L29; 23 L6*L27*-OHD; 11 L6*L27*TY_Q_
21 L7*L7*L23; 4 L7*L12*L17; 22 L7*L21*L23; 12 L7*TX_Q_*LY_R
32 L12*L12*L27; 4 L12*L16*L29; 39 L12*L21*L22; 64 L12*L22*L27
2 L12*L24*TY_Q_; 32 L12*L27*L33; 7 L14*L21*L28; 9 L14*L24*L29
5 L14*L27*L29; 1 L16*L16*LY_R; 10 L16*L23*LY_R; 73 L16*TX_Q_*LY_R
1 L17*L18*L24; 30 L17*L21*L27; 6 L17*L21*TY_Q_; 23 L17*L27*L33
25 L17*L27*+OCF; 30 L17*L27*DROP_OHQ_Z; 30 L18*L21*L27; 6 L18*L21*TX_Q_
57 L21*L21*L27; 19 L21*L21*L28; 31 L21*L22*L27; 7 L21*L25*L28
9 L21*L27*L28; 39 L21*L34*TX_Q_; 19 L21*TX_Q_*LY_R; 20 L22*L27*DROP_OHP_Z
68 L23*L24*L29; 74 L23*L24*DROP_OHP_Z; 13 L23*L24*TX_Q_; 31 L23*L26*TX_Q_
7 L23*L29*L34; 32 L23*L29*TX_Q_; 4 L24*L24*L27; 4 L24*L24*LY_R
4 L24*L27*L27; 2 L26*L36*TX_Q_; 90 L26*TX_Q_*TX_Q_; 1 L27*L27*L29
4 L27*L27*LX_R; 25 L27*L28*DROP_OHP_Z; 20 KLOW*L14; 23 KLOW*L17
7 KLOW*L18; 18 KLOW*L28; 16 KLOW*TY_Q_; 18 KLOW*LY_R
59 -OHZ*L27; 31 +CDP*L0; 11 +CDP*L3; 60 +CDP*L24
28 -HFQ*L24; 23 +CDQ*L2; 7 +CDQ*L14; 5 +CDQ*L16
103 +CDQ*L25; 5 +CDQ*L27; 11 +CDQ*LX_R; 4 -DFQ*L0
6 -DFQ*L16; 20 -DFQ*L26; 3 -OHR*L24; 26 +HFR*L0
43 +HFR*L3; 23 +HFR*L16; 1 +HFR*L24; 54 +HFR*TX_Q_
29 +HZR*L23; 4 +OPQ*L0; 45 +OPQ*L6; 39 +OPQ*L24
35 +OPQ*LY_R; 8 -FQR*L12; 45 -FQR*L21; 144 -FQR*L27
7 -FQR*L34; 22 -FQR*-OHD; 94 -FQR*+OCF; 53 -FQR*TX_Q_
144 -FQR*DROP_OCR_YZ; 8 -OZP*L20; 12 -OZP*L26; 33 -OZP*L29
10 -OZQ*L2; 54 -OZQ*L21; 72 -OZQ*L24; 20 -OZQ*L29
29 +OZR*L1; 26 +OZR*L6; 17 +OZR*L18; 71 +OZR*L22
36 +OZR*L29; 55 +OZR*-OHD; 9 +OZR*DROP_OHQ_Z; 17 +OZR*TY_Q_
34 -CPQ*L12; 9 +CPR*L0; 4 +CPR*L12; 39 +CPR*L20
6 +CPR*L26; 21 -DPR*L3; 17 -DPR*L14; 19 -DPR*L33
15 -DPR*-OHD; 50 -DPR*+OCF; 1 -DPR*DROP_OHP_Z; 119 -DPR*DROP_OHQ_Z
6 -DPR*DROP_OCR_YZ; 21 +HDP*L1; 32 +HDP*L7; 17 +HDP*L14
31 +HDP*L20; 53 +HDP*L29; 35 +HDP*L33; 1 +HDP*DROP_OHP_Z
45 +HDP*DROP_OHQ_Z; 18 +HDP*DROP_OCR_YZ; 97 +HDP*LX_R; 19 -DPQ*L21
1 +FPQ*L2; 21 +ZPQ*L0; 20 +ZPQ*L21; 35 +ZPQ*L24
5 +ZPQ*L27; 39 +ZPQ*L29; 5 +PQR*L21; 52 C_HCZ_Y*TX_Q_
9 C_HDF_P*L21; 7 C_HDR_P*L29; 7 C_CDR_P*L6; 33 C_CDR_P*L20
62 C_CDR_P*L24; 14 C_CZQ_YP*L2; 34 C_CZQ_YP*L17; 35 C_CZQ_YP*L20
17 C_CZQ_YP*-OHD; 98 C_CZQ_YP*LX_R; 12 SP_ODQH_ZP_DH-1*L27; 3 Q_HDFR_P*L27
4 Q_CDPZ_Y*L0; 24 Q_CDPZ_Y*L3; 35 Q_CDPZ_Y*L24; 6 Q_CDPZ_Y*TX_Q_
```

Upper bound: `-1422852851/1000000000`.

### Leaf UTLppmmpmppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR +DPR -CFP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOCPR -DOP
P DOFPQ -DPQ
P DOFQR +DQR
P DOZPR -DZP
P DHCPR -DHP
P DHFYP -DYP
P FOCYP +FYP
P FODPQ +FPQ
P FODPR -FPR
P FHCZP +FZP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHZQ -PZQ
P POCQR +PQR
```

```c1top-bounds
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
8 L0*L3*L21; 5 L0*L12*L31; 16 L1*L2*L2; 24 L1*L6*L21
1 L1*L12*L22; 49 L1*L20*L24; 66 L1*L24*L29; 11 L1*L24*L33
18 L1*L24*DROP_OHP_Z; 8 L1*L24*TX_Q_; 27 L2*L3*L21; 7 L2*L4*L17
27 L2*L6*L21; 70 L2*L6*L23; 10 L2*L21*TY_Q_; 1 L2*L23*L28
3 L2*L23*C_OHD_Z; 10 L2*L23*DROP_OHP_Z; 14 L2*L28*L29; 42 L3*L4*L6
34 L3*L4*L20; 10 L3*L6*L18; 9 L3*L6*L34; 8 L3*L12*L20
4 L3*L17*L27; 6 L3*L23*TX_Q_; 25 L4*L6*LX_R; 9 L4*L7*L21
11 L4*L16*L17; 9 L4*L17*L20; 5 L5*L6*L21; 1 L5*L21*L23
1 L5*L24*L30; 13 L5*L24*L33; 9 L6*L6*L19; 86 L6*L6*L27
64 L6*L12*L27; 79 L6*L14*L21; 32 L6*L17*L18; 77 L6*L20*L27
44 L6*L24*TY_Q_; 104 L6*L27*L29; 8 L7*L12*L21; 5 L7*L14*L21
16 L7*L18*L24; 9 L7*L23*L24; 35 L7*L23*L29; 1 L7*L23*L34
29 L7*TX_Q_*LY_R; 1 L8*L24*L35; 1 L9*L24*L31; 11 L10*L12*LX_R
1 L10*L17*L24; 1 L11*L24*L31; 11 L12*L12*L27; 1 L12*L22*L28
15 L12*L24*TY_Q_; 11 L12*L27*L33; 20 L12*L27*TX_Q_; 11 L12*L32*LX_R
5 L15*L21*L24; 31 L16*L16*L27; 8 L17*L21*L26; 6 L18*L21*L29
12 L18*L24*TX_Q_; 19 L21*L21*L24; 1 L21*L22*L22; 34 L21*L23*L24
19 L21*L24*+OCF; 19 L21*L24*TX_Q_; 51 L21*L26*L29; 26 L21*L28*L29
19 L21*L29*L29; 8 L21*L29*L33; 19 L21*L29*LX_R; 1 L23*L23*TX_Q_
21 L23*L24*DROP_OHP_Z; 34 L23*L24*TX_Q_; 18 L24*L28*DROP_OHP_Z; 61 L29*TX_Q_*LY_R
5 KLOW*L14; 3 KLOW*L23; 5 KLOW*L36; 2 KLOW*C_OCF_Y
32 KLOW*DROP_OHQ_Z; 44 KLOW*TX_Q_; 27 KLOW*LX_R; 5 +CDP*LX_R
26 +DFP*L17; 2 +DFP*L22; 36 +DFP*+OCF; 67 +DFP*DROP_OHP_Z
38 +DFP*DROP_OHQ_Z; 9 +DFP*LX_R; 56 -HFQ*L24; 41 -OHR*L29
33 +HFR*L29; 77 +HFR*DROP_OHQ_Z; 57 +HFR*TX_Q_; 12 +OPQ*L6
10 +OPQ*L16; 16 +OPQ*LX_R; 19 -FQR*L13; 115 -FQR*L27
18 -FQR*L29; 37 -FQR*DROP_OHP_Z; 115 -FQR*DROP_OCR_YZ; 6 -OZP*L2
3 -OZQ*L21; 7 -OZQ*L24; 61 +OZR*L6; 7 +OZR*C_OCF_Y
2 +OZR*DROP_OHQ_Z; 7 -CPQ*L0; 2 -CPQ*L4; 1 -CPQ*L24
8 +DPR*L21; 33 +DPR*+OCF; 31 +DPR*DROP_OHP_Z; 37 +DPR*TX_Q_
12 -CFP*L5; 8 -CFP*L21; 7 -CFP*L28; 25 -CFP*DROP_OHQ_Z
1 -DYP*L24; 7 +FPQ*L0; 10 +FPQ*L17; 21 -FPR*L2
6 +ZPQ*L2; 4 +PQR*L2; 11 C_HCZ_Y*L6; 3 C_HCZ_Y*L20
6 C_HDF_P*L21; 72 C_CDF_P*L6; 19 C_CDF_P*L18; 97 C_CDF_P*LX_R
1 C_CZQ_YP*L1; 63 C_CZQ_YP*L6; 4 C_CZQ_YP*L21; 1 C_CZQ_YP*L28
7 C_CZQ_YP*DROP_OHQ_Z; 11 C_CZQ_YP*LX_R; 63 C_DFR_P*L2; 7 Q_OCDP_Y*L24
4 SP_ODQR_ZP_DR-1*L2; 30 Q_HDFR_P*L2; 20 Q_HDFR_P*L21; 24 Q_CDQF_P*L8
24 Q_CDQF_P*L9; 2 Q_CDQF_P*L18; 1 Q_CDQF_P*L23; 12 Q_CDQF_P*L24
1 Q_CDQF_P*L36; 14 Q_CDQF_P*+OCF; 17 Q_CDQF_P*TX_Q_; 1 Q_DQFR_P*L12
17 Q_DQFR_P*L21
```

Upper bound: `-1065353367/500000000`.

### Leaf UTLppmmpmpppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR +DPR +CFP -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYQ +OYQ
P OHDYR +OYR
P OHDZQ +ODZ
P OHFPQ -OFP
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHYZ -DYZ
P DOCPR -DOP
P DOFYP -DYP
P DOFPQ -DPQ
P DOFQR +DQR
P DOZPR -DZP
P DHCPR -DHP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHFZ +PFZ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
S Q - 3 upper 628/721
X Q - 10 lower 7233571/12759537
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 283/500 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
14 L0*L3*L10; 7 L0*L3*L19; 26 L0*L3*LX_R; 2 L0*L7*L16
9 L0*L8*L30; 1 L0*L9*L10; 11 L0*L12*TY_Q_; 9 L0*L16*TX_Q_
2 L0*L24*L25; 1 L0*L27*-OHD; 4 L1*L1*L5; 1 L1*L1*L21
6 L1*L2*L4; 22 L1*L3*L12; 4 L1*L3*L34; 6 L1*L6*L10
18 L1*L6*L23; 1 L1*L9*L15; 30 L1*L10*L12; 7 L1*L10*L35
4 L1*L11*L24; 11 L1*L12*L22; 4 L1*L17*L29; 18 L1*L18*L24
26 L1*L18*L31; 24 L1*L24*C_OCF_YP; 11 L1*L24*TX_Q_; 11 L1*L24*TY_Q_
1 L1*L26*LY_R; 11 L1*L31*LY_R; 2 L1*C_OCF_YP*LY_R; 1 L2*L14*TY_Q_
6 L2*L21*L29; 24 L3*L3*L4; 6 L3*L3*DROP_OHQ_Z; 22 L3*L4*L6
4 L3*L4*L21; 36 L3*L4*L33; 6 L3*L6*L20; 4 L3*L7*L26
31 L3*L10*L20; 10 L3*L10*L27; 52 L3*L10*DROP_OHP_Z; 22 L3*L10*TX_Q_
10 L3*L18*L23; 12 L3*L19*L26; 12 L3*L19*L30; 15 L3*L23*L30
9 L3*L23*L31; 8 L3*L23*DROP_OHQ_Z; 47 L3*L26*TX_Q_; 9 L3*L29*L32
5 L3*L32*L34; 15 L4*L9*L12; 41 L4*L9*L20; 2 L4*L9*L34
13 L4*L12*L21; 30 L4*L16*TX_Q_; 1 L4*L24*L25; 1 L4*L24*LY_R
11 L4*L26*TX_Q_; 9 L4*L35*DROP_OHP_Z; 8 L4*L35*TX_Q_; 9 L4*-OHD*TX_Q_
51 L4*TX_Q_*LX_R; 1 L4*LX_R*LY_R; 1 L5*L7*L17; 12 L5*L21*L29
1 L5*L21*L34; 33 L5*L24*TX_Q_; 1 L6*L9*L9; 14 L6*L18*L27
4 L6*L35*TX_Q_; 9 L7*L7*L23; 37 L7*L7*L26; 5 L7*L7*LY_R
4 L7*L9*TX_Q_; 10 L7*L18*L21; 10 L7*L19*L23; 7 L7*L19*L24
12 L7*L19*L35; 2 L7*L19*LY_R; 31 L7*L20*L26; 15 L7*L21*L24
14 L7*L23*L30; 9 L7*L23*+OCF; 15 L7*L24*DROP_OHQ_Z; 2 L7*L30*L32
4 L7*L32*TX_Q_; 8 L8*L8*L21; 6 L8*L10*LY_R; 19 L8*L12*L31
18 L8*L17*L26; 6 L8*L24*L28; 1 L8*L27*L27; 1 L8*TX_Q_*LY_R
3 L9*L9*L23; 6 L9*L9*DROP_OHQ_Z; 1 L9*L10*L27; 19 L9*L12*L31
2 L9*L12*DROP_OHQ_Z; 4 L9*L19*L24; 17 L9*L24*L27; 4 L9*L27*DROP_OHP_Z
17 L9*L27*LX_R; 1 L9*LY_R*LY_R; 7 L10*L10*LY_R; 33 L10*L12*L27
1 L10*L12*TY_Q_; 2 L10*L12*LX_R; 8 L10*L22*LX_R; 7 L10*L26*L35
6 L10*TX_Q_*LY_R; 7 L11*L21*L23; 2 L11*L21*L26; 15 L11*L23*L24
2 L11*L24*L33; 2 L12*L12*L19; 3 L12*L14*L17; 30 L12*L16*L27
4 L12*L21*L27; 64 L12*L22*L31; 2 L12*L24*TY_Q_; 49 L12*L27*L31
4 L12*L27*LX_R; 21 L12*L28*L31; 1 L12*L32*LY_R; 49 L12*L35*LY_R
13 L12*TX_Q_*DROP_OCR_YZ; 2 L13*L24*L28; 6 L14*L17*L24; 2 L14*L18*L21
13 L14*L18*L31; 15 L14*L21*L24; 1 L14*L22*L31; 7 L14*L24*L27
4 L14*L26*L31; 15 L16*L21*L23; 14 L17*L23*L24; 7 L17*L26*L29
36 L17*L26*L30; 1 L17*L26*L32; 14 L18*L21*L24; 13 L18*L24*L32
9 L18*L26*TX_Q_; 1 L19*L21*L21; 2 L19*L21*L23; 9 L19*L21*L27
9 L19*L21*L29; 12 L19*L24*L35; 6 L19*L29*L35; 14 L19*TX_Q_*TX_Q_
1 L20*L35*L35; 1 L21*L22*LY_R; 6 L21*L23*L29; 5 L21*L23*C_OHD_Z
1 L21*L27*TY_Q_; 10 L21*L28*L31; 2 L21*L30*L36; 2 L21*L31*L32
2 L21*L32*L35; 7 L21*L32*TY_Q_; 3 L22*L31*L31; 2 L23*L23*DROP_OHP_Z
26 L23*L24*L30; 9 L23*L24*L31; 4 L24*L24*L34; 1 L24*L27*C_OCF_YP
1 L24*L29*DROP_OCR_YZ; 31 L26*L30*TX_Q_; 15 L26*L35*TX_Q_; 9 L26*C_OHD_Z*TX_Q_
26 L27*L31*DROP_OHP_Z; 27 L29*TX_Q_*LY_R; 1 L35*L35*TX_Q_; 4 KLOW*L17
6 +OYZ*L21; 1 -HCY*L4; 12 -HCY*L6; 9 -HCY*L8
26 -HCY*L18; 2 -HCY*L25; 1 -HCY*L26; 5 -HCY*L36
9 -HCY*+OCF; 17 -HCY*DROP_OHQ_Z; 12 -HCY*LY_R; 9 +CDY*L9
39 -OHZ*L3; 9 -OHZ*L27; 2 -OHZ*L29; 24 -OHZ*L35
8 +DFP*L10; 9 +DFP*L24; 1 +DFP*C_OCF_YP; 25 +DFP*TX_Q_
52 -CYP*L12; 22 -HFQ*L3; 3 -HFQ*L7; 6 +CDQ*L7
1 +CDQ*L10; 3 +CDQ*L13; 1 +CDQ*L14; 31 +CDQ*L19
17 +CDQ*L21; 12 +CDQ*L33; 5 +CDQ*-OHD; 31 +CDQ*DROP_OHQ_Z
29 +CDQ*LX_R; 25 -DFQ*L6; 31 -DFQ*L18; 15 -OHR*L1
9 -OHR*L8; 11 -OHR*L21; 2 -OHR*L25; 31 +HFR*L7
13 +HFR*L9; 15 +HFR*L17; 7 +HFR*L18; 26 +HFR*L20
2 +HFR*L22; 1 +HYR*L4; 12 +HZR*L5; 8 +HZR*L14
1 +OPQ*L1; 21 +OPQ*L6; 3 +OPQ*L8; 17 +OPQ*L11
2 +OPQ*L23; 2 +OPQ*L27; 36 +OPQ*LX_R; 24 -FQR*L3
37 -FQR*L7; 6 -FQR*L21; 14 -FQR*L30; 9 -FQR*L32
64 -FQR*DROP_OHP_Z; 29 +CYZ*L3; 13 +CYZ*L18; 1 +CYZ*L22
29 +CYZ*+OCF; 52 +CYZ*DROP_OHP_Z; 68 +CYZ*DROP_OHQ_Z; 4 +CYZ*LY_R
6 -OZP*L12; 27 -OZP*L21; 52 -OZP*L31; 12 -OZP*DROP_OHQ_Z
2 -OZQ*L4; 28 -OZQ*L9; 2 -OZQ*L18; 15 -OZQ*L20
12 -OZQ*L24; 37 -OZQ*L31; 31 -OZQ*C_OCF_YP; 12 +OZR*L4
4 +OZR*L7; 85 +OZR*L10; 8 +OZR*L17; 17 +OZR*L27
8 +OZR*L34; 49 +OZR*C_OCF_YP; 10 +OZR*DROP_OCR_YZ; 4 +OZR*LX_R
5 -CPQ*L0; 46 +DPR*L1; 24 +DPR*L8; 1 +DPR*L10
2 +DPR*L12; 47 +DPR*-OHD; 29 +DPR*C_OCF_YP; 8 +DPR*DROP_OHQ_Z
56 +DPR*TX_Q_; 18 +CFP*L8; 7 +CFP*L11; 5 +CFP*L21
24 +CFP*L22; 14 +CFP*L28; 14 +CFP*DROP_OHQ_Z; 17 +CFP*TY_Q_
33 +CFP*LX_R; 12 +CFP*LY_R; 1 -ODY*L3; 3 -ODY*L13
37 -ODY*L20; 1 -ODY*L27; 9 -ODY*L31; 2 -ODY*L36
1 -ODY*+OCF; 4 -ODY*C_OHD_Z; 30 -ODY*DROP_OHP_Z; 26 -ODY*TX_Q_
18 -ODY*LX_R; 4 +HQR*L35; 28 -DPQ*L2; 3 -DPQ*L8
2 -DPQ*L12; 6 -DPQ*L24; 9 +HDP*L21; 17 +HDP*L24
7 +FPQ*L0; 17 +FPQ*L10; 42 +FPQ*L17; 32 +FPQ*L29
42 +FPQ*DROP_OHP_Z; 2 +FPQ*DROP_OCR_YZ; 38 +FPQ*LX_R; 2 +ZPQ*L12
15 +ZPQ*L21; 2 +ZPQ*L24; 4 +PQR*L3; 20 C_HDF_P*L24
10 TPX_Q_*L0; 8 TPX_Q_*L21; 10 TPX_Q_*DROP_OCR_YZ; 1 SP_ODQH_ZP_DH-1*L0
2 SP_ODQH_ZP_DH-1*L24; 2 SP_ODQR_ZP_DR-1*L10; 6 Q_HDQR_P*L21; 1 Q_DQFR_P*L24
```

Upper bound: `-675680581/1000000000`.

### Leaf UTLppmmpmppppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR +DPR +CFP +ODY -OFZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDYP +ODP
P OHFYZ -OFY
P OHFYR +OYR
P OHFZP -OFP
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHPR -DHP
P DOFPQ -DPQ
P DOFQR +DQR
P DOYPR -DYP
P DOZPR -DZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHFP -ZFP
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
```

Exclusion: `cluster OCF Z CFZ YP`.

### Leaf UTLppmmpmppppp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -CPQ +CPR +DPR +CFP +ODY +OFZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHDYP +ODP
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOHPR -DHP
P DOFPQ -DPQ
P DOFQR +DQR
P DOYPR -DYP
P DOZPR -DZP
P FOHYZ -FYZ
P FOHZP +FZP
P FOCPQ +FPQ
P FOCPR -FPR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PHQ
P POHZQ -PZQ
P POCYR -PYR
P POCQR +PQR
```

```c1top-bounds
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YP 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
881 L0*L1*L12; 357 L0*L12*L29; 208 L0*L21*L34; 207 L0*L21*LY_R
2 L0*L32*TX_Q_; 16 L1*L1*L9; 1222 L1*L1*L24; 237 L1*L1*L31
15 L1*L2*L16; 884 L1*L2*L24; 67 L1*L4*L8; 384 L1*L4*L30
1 L1*L9*TY_Q_; 26 L1*L10*L17; 480 L1*L12*L12; 703 L1*L12*L22
108 L1*L12*L24; 851 L1*L12*L27; 284 L1*L12*L34; 496 L1*L13*L21
291 L1*L14*L31; 160 L1*L21*L23; 119 L1*L21*L30; 757 L1*L23*L24
253 L1*L24*L24; 15 L1*L24*L31; 1837 L1*L24*TX_Q_; 321 L1*L29*L29
29 L1*L29*LY_R; 94 L2*L2*L27; 202 L2*L4*L27; 627 L2*L4*TX_Q_
874 L2*L7*L10; 187 L2*L10*L21; 108 L2*L10*L27; 2689 L2*L12*L27
114 L3*L3*L4; 14 L3*L4*L10; 39 L3*L4*L14; 237 L3*L4*L17
95 L3*L4*LY_R; 656 L3*L10*L29; 947 L3*L12*LY_R; 383 L3*L14*L21
109 L3*L21*-OHD; 275 L3*L21*TY_Q_; 530 L3*L23*L29; 140 L3*L26*L29
10 L3*L27*L35; 94 L4*L6*L27; 29 L4*L7*L8; 94 L4*L7*L23
341 L4*L7*DROP_OHP_Z; 285 L4*L8*L27; 2 L4*L10*L21; 709 L4*L12*L23
82 L4*L12*L27; 423 L4*L14*TX_Q_; 105 L4*L16*TX_Q_; 50 L4*L17*L24
403 L4*L17*L27; 287 L4*L21*L24; 18 L4*L21*L30; 480 L4*L21*TX_Q_
7 L4*L21*LY_R; 2 L4*L22*L30; 94 L4*L23*L24; 75 L4*L24*L31
82 L4*L24*LY_R; 246 L5*L21*L21; 236 L6*L14*L21; 44 L6*L19*L21
514 L6*L27*L27; 237 L7*L7*LY_R; 169 L7*L10*LY_R; 60 L7*L14*TX_Q_
19 L7*L18*L23; 1050 L7*L21*L23; 19 L7*L23*L23; 1109 L7*L23*L24
1593 L7*L23*L29; 3 L7*L23*L31; 216 L7*L26*TX_Q_; 233 L7*L29*LY_R
152 L7*TX_Q_*LY_R; 40 L7*LY_R*LY_R; 157 L8*L18*L21; 26 L8*L18*L27
11 L8*L21*L27; 4 L9*L16*L27; 18 L10*L12*L17; 578 L10*L12*L27
149 L10*L14*L29; 212 L10*L17*L21; 114 L10*L17*L24; 1 L10*L21*L30
1 L10*L21*L35; 302 L10*L24*L27; 302 L10*L24*LY_R; 101 L11*L15*L21
26 L11*L17*LY_R; 132 L12*L14*L21; 251 L12*L14*L29; 45 L12*L17*L23
297 L12*L17*L27; 205 L12*L18*L21; 18 L12*L19*L31; 980 L12*L21*L26
1001 L12*L21*LY_R; 289 L12*L23*L23; 71 L12*L23*L29; 2154 L12*L24*L27
18 L12*L24*L28; 190 L12*L24*L35; 3203 L12*L27*L27; 599 L12*L27*L29
293 L12*L27*L31; 190 L12*L29*L32; 161 L14*L17*L21; 315 L14*L17*L24
340 L14*L17*L29; 79 L14*L18*L29; 315 L14*L21*L27; 221 L14*L21*L32
1027 L14*L21*LX_R; 2847 L14*L24*L27; 2336 L14*L24*L29; 103 L14*L24*L31
132 L14*L27*L29; 168 L14*L27*L31; 315 L14*L27*TX_Q_; 19 L14*L29*L29
257 L14*L29*TX_Q_; 120 L14*L35*TX_Q_; 286 L17*L23*L27; 15 L17*L24*LY_R
4 L17*L26*L29; 111 L17*L31*LY_R; 446 L18*L21*L27; 160 L18*L23*L24
328 L18*L24*L27; 50 L18*L24*L29; 14 L18*L31*TX_Q_; 40 L19*L21*L31
11 L19*L21*LX_R; 7 L19*L29*L29; 276 L21*L21*L27; 2731 L21*L23*L24
1546 L21*L23*L29; 289 L21*L23*L34; 129 L21*L23*LY_R; 2285 L21*L24*L27
2455 L21*L26*TX_Q_; 289 L21*L27*L27; 2 L21*L27*L35; 11 L21*L27*DROP_OHP_Z
772 L21*L27*LX_R; 119 L21*L30*L34; 1 L21*L32*L32; 129 L22*L23*L24
289 L22*L23*L29; 10 L22*L24*L31; 1528 L23*L24*L24; 289 L23*L24*L27
2053 L23*L24*L29; 518 L23*L26*L29; 2 L23*L29*L35; 40 L23*L29*LY_R
15 L24*L24*TY_Q_; 681 L24*L27*L27; 246 L24*L27*L28; 1513 L24*L27*C_OCF_YP
681 L24*L27*LY_R; 1513 L24*L29*LY_R; 356 L24*L36*LY_R; 10 L26*L29*L30
16 L26*L29*L34; 1704 L26*L29*TX_Q_; 328 L27*L27*DROP_OHP_Z; 235 L29*L29*LY_R
13 L29*L34*LY_R; 1639 L29*TX_Q_*LY_R; 336 KLOW*L7; 342 KLOW*L12
556 KLOW*L29; 1530 KLOW*TX_Q_; 494 +OYZ*L21; 301 -HYZ*L4
253 -HCY*L1; 270 -HCY*L5; 15 -HCY*L12; 159 -HCY*L14
111 -HCY*L17; 1 -HCY*TY_Q_; 121 +CDY*L0; 799 +CDY*L3
152 +CDY*L14; 911 +CDY*L16; 709 +CDY*L18; 2 +CDY*L22
56 +CDY*L24; 285 +CDY*L27; 274 +CDY*TX_Q_; 246 +CDY*LX_R
480 -OHZ*L12; 459 -OHZ*L21; 7 +CDP*L3; 110 +CDP*L9
634 +CDP*L20; 709 +CDP*L22; 1239 +CDP*L26; 64 +CDP*L34
548 +CDP*L35; 18 +CDP*L36; 29 +CDP*TX_Q_; 65 +CDP*LX_R
64 +CDP*LY_R; 351 +CDQ*L6; 18 +CDQ*L12; 289 +CDQ*L15
1026 +CDQ*L17; 709 +CDQ*L19; 1736 +CDQ*L20; 148 +CDQ*L27
2 +CDQ*L35; 55 +CDQ*-OHD; 691 +CDQ*C_OCF_YP; 85 +CDQ*DROP_OHQ_Z
609 +CDQ*LX_R; 128 -DFQ*L24; 1728 -OHR*L27; 58 +HFR*L1
464 +HFR*L7; 171 +HFR*L10; 15 +HFR*L17; 167 +HFR*L22
185 +HFR*L27; 562 +HFR*L29; 13 +HFR*L36; 1791 +HFR*TX_Q_
82 +HZR*L4; 15 +HZR*L9; 132 +HZR*L10; 284 +HZR*L14
716 +HZR*L23; 253 +HZR*L24; 533 +HZR*L29; 313 +HZR*-OHD
1318 +HZR*+OCF; 46 +HZR*DROP_OHQ_Z; 1477 +HZR*LY_R; 578 +OPQ*L3
709 +OPQ*L4; 71 +OPQ*L6; 98 +OPQ*L13; 134 +OPQ*L21
141 +OPQ*L23; 368 +OPQ*L27; 10 +OPQ*L30; 79 +OPQ*L36
61 +OPQ*LX_R; 207 -FQR*L1; 94 -FQR*L4; 1744 -FQR*L6
2 -FQR*L11; 2773 -FQR*L14; 160 -FQR*L18; 2731 -FQR*L21
129 -FQR*L22; 1513 -FQR*L24; 1595 -FQR*L27; 3343 -FQR*L29
10 -FQR*L30; 2853 -FQR*L36; 139 -FQR*DROP_OHP_Z; 1306 -FQR*DROP_OCR_YZ
132 +CYZ*L1; 143 +CYZ*L3; 453 +CYZ*L4; 162 +CYZ*L18
462 +CYZ*L20; 168 +CYZ*L27; 143 +CYZ*DROP_OHP_Z; 190 +CYZ*LX_R
657 +OYP*L3; 709 +OYP*L4; 244 +OYP*L20; 114 +OYP*L25
162 +OYP*L36; 26 +OYP*DROP_OCR_YZ; 1507 +OZR*L0; 2801 +OZR*L6
278 +OZR*L9; 279 +OZR*L10; 315 +OZR*L17; 82 +OZR*L19
927 +OZR*L21; 637 +OZR*L22; 2256 +OZR*L24; 4680 +OZR*L27
284 +OZR*L34; 2686 +OZR*C_OCF_YP; 18 +DPR*L12; 82 +DPR*L14
15 +DPR*L24; 328 +DPR*L27; 114 +DPR*L31; 128 +DPR*TX_Q_
67 +CFP*L21; 1303 +CFP*L27; 291 +ODY*L21; 2772 +OFZ*L2
423 +OFZ*L4; 29 +OFZ*L10; 251 +OFZ*L12; 1677 +OFZ*L21
4603 +OFZ*L24; 384 +OFZ*L27; 336 +OFZ*L29; 310 +OFZ*L31
15 +HDP*L29; 16 +FZP*L21; 304 +FPQ*L3; 14 +FPQ*L9
79 +FPQ*L14; 134 +FPQ*L20; 141 +FPQ*L22; 71 +FPQ*L25
1143 +FPQ*L26; 340 +FPQ*L33; 7 +FPQ*LX_R; 33 -YZP*L21
4 +ZPQ*L8; 489 +ZPQ*L27; 2455 C_ODQ_YP*L2; 2548 C_ODQ_YP*L21
147 C_ODQ_YP*L24; 305 C_ODQ_YP*L29; 48 C_ODQ_YP*LY_R; 162 C_CZQ_YP*L2
1365 C_CZQ_YP*L6; 4 C_CZQ_YP*L10; 251 C_CZQ_YP*L12; 483 C_CZQ_YP*L17
423 C_CZQ_YP*L28; 4 C_CZQ_YP*L35; 289 C_CZQ_YP*TY_Q_; 1909 C_CZQ_YP*LX_R
410 C_CZQ_YP*LY_R; 175 C_DFR_P*L21; 22 Q_CDPZ_Y*L1; 571 Q_CDPZ_Y*L27
22 Q_CDPZ_Y*L32; 140 Q_CDPZ_Y*L35; 340 Q_CDPZ_Y*TX_Q_
```

Upper bound: `-21652261/125000000`.

### Leaf UTLppmmpp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR +CPQ`.

```c1top-geometry
P OHDZQ +ODZ
P OHFPQ -OFP
P OHYZR +OYR
P OHYPQ +OYQ
P OCFYP -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFPQ -CFP
P COFPR +CPR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FOCYP +FYP
P FODPQ +FPQ
P FODPR -FPR
P FHCZP +FZP
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHFQ -PHQ
P POHZQ -PZQ
P POCYQ -PYQ
P POFQR +PQR
```

```c1top-bounds
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 279/1000 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L23*L30; 1 L0*L1*L20; 1 L0*L3*L13; 1 L0*L3*L16
35 L0*L3*L20; 4 L0*L3*DROP_OCR_YZ; 1 L0*L7*L12; 1 L0*L12*L23
9 L0*L17*L29; 1 L0*L20*L32; 28 L0*L20*LX_R; 41 L0*L23*TX_Q_
103 L0*L26*TX_Q_; 3 L1*L2*L7; 4 L1*L2*L27; 1 L1*L5*L27
9 L1*L6*L17; 1 L1*L12*L17; 2 L1*L13*L31; 37 L1*L21*TY_Q_
59 L1*L22*L24; 15 L1*L27*LX_R; 1 L1*L35*DROP_OHQ_Z; 15 L1*TX_Q_*TX_Q_
4 L2*L3*L25; 23 L2*L3*TY_Q_; 2 L2*L5*DROP_OHQ_Z; 3 L2*L9*TY_Q_
1 L2*L10*L23; 1 L2*L14*L17; 1 L2*L15*L19; 1 L2*L20*L34
208 L2*L20*TY_Q_; 3 L2*L22*L23; 1 L2*L26*TY_Q_; 32 L2*L27*DROP_OHQ_Z
27 L2*L28*TY_Q_; 5 L2*L30*TY_Q_; 52 L2*DROP_OHP_Z*TY_Q_; 24 L2*TX_Q_*LY_R
26 L2*TY_Q_*TY_Q_; 42 L2*TY_Q_*LX_R; 13 L3*L4*TX_Q_; 10 L3*L6*L10
68 L3*L18*L20; 4 L3*L24*C_OCF_Y; 9 L3*L26*DROP_OCR_YZ; 27 L3*L27*LX_R
3 L4*L6*L32; 24 L4*L6*TY_Q_; 5 L4*L12*L21; 1 L4*L15*L24
25 L4*L20*TX_Q_; 31 L4*L23*TX_Q_; 43 L4*L24*L27; 1 L4*L26*L34
7 L4*L26*TX_Q_; 3 L4*L27*LX_R; 2 L5*L6*L27; 1 L5*L10*L12
1 L5*L14*L27; 28 L5*L17*TX_Q_; 3 L5*L24*L28; 1 L5*L24*L31
1 L5*L27*L33; 10 L5*L28*L29; 24 L6*L6*TY_Q_; 32 L6*L7*L27
16 L6*L9*L18; 1 L6*L9*+OCF; 1 L6*L10*TY_Q_; 1 L6*L12*LY_R
7 L6*L14*L27; 18 L6*L17*L21; 18 L6*L17*DROP_OHQ_Z; 1 L6*L18*L36
114 L6*L18*TX_Q_; 15 L6*L21*L28; 61 L6*L21*TY_Q_; 31 L6*L27*+OCF
172 L6*L27*DROP_OHP_Z; 52 L6*L27*DROP_OHQ_Z; 2 L7*L8*L28; 1 L7*L12*L19
2 L7*L23*L24; 47 L7*L23*TX_Q_; 19 L7*L23*DROP_OCR_YZ; 1 L8*L12*TY_Q_
12 L8*L17*L20; 4 L10*L12*L17; 10 L10*L17*TX_Q_; 2 L10*L26*TX_Q_
1 L11*L21*L28; 4 L12*L19*L31; 7 L12*L22*L31; 6 L12*L27*DROP_OCR_YZ
1 L12*L28*L35; 5 L14*L20*L31; 16 L16*L23*TX_Q_; 130 L17*L20*L27
12 L17*L20*L35; 1 L17*L22*TX_Q_; 12 L17*L23*LX_R; 25 L17*L27*LX_R
1 L18*L20*L36; 1 L18*L24*TX_Q_; 2 L18*L31*TX_Q_; 1 L19*L28*L29
25 L20*L24*TY_Q_; 1 L20*L26*L35; 45 L21*L21*L27; 6 L21*L22*L27
5 L21*L23*L28; 50 L21*L24*LY_R; 1 L21*L27*L30; 24 L21*TY_Q_*TY_Q_
26 L21*TY_Q_*LX_R; 3 L22*L23*L24; 10 L22*L23*L29; 63 L22*L24*L27
24 L23*L23*TX_Q_; 119 L23*L24*DROP_OHP_Z; 1 L23*L29*L32; 1 L23*L35*LX_R
27 L24*L27*TX_Q_; 43 L24*L27*TY_Q_; 27 L24*L29*LY_R; 17 L24*DROP_OHP_Z*LY_R
77 L24*DROP_OHQ_Z*LY_R; 3 L24*TY_Q_*LY_R; 103 L26*TX_Q_*LY_R; 9 L27*L27*L29
6 L27*TX_Q_*TX_Q_; 1 L28*L31*DROP_OHQ_Z; 1 L31*TY_Q_*LX_R; 3 TY_Q_*TY_Q_*LX_R
31 KLOW*L20; 11 KLOW*L22; 9 KLOW*DROP_OHP_Z; 25 KLOW*DROP_OHQ_Z
44 KLOW*TY_Q_; 4 TOPCOUNT*L5; 3 -HCY*L13; 3 +CDY*L6
1 -OHZ*L22; 29 +CDP*L3; 15 +CDP*L20; 25 +CDP*DROP_OHP_Z
14 +CDP*TX_Q_; 24 +DFP*TX_Q_; 4 -CYP*L12; 13 -CYP*TX_Q_
64 -HFQ*L7; 15 -HFQ*L21; 39 -DFQ*L4; 43 -DFQ*L21
38 -DFQ*DROP_OHP_Z; 12 -DFQ*DROP_OHQ_Z; 13 -DFQ*LY_R; 1 +HDQ*L12
2 -DYQ*L2; 37 -OHR*L21; 30 -OHR*L23; 2 +HFR*L6
91 +HFR*L20; 92 +HFR*L22; 15 +HFR*L26; 27 +HFR*L29
17 +HFR*DROP_OHP_Z; 1 +DFR*L14; 1 +HZR*L7; 6 -FZR*L27
2 -FQR*L10; 51 -FQR*L21; 130 -FQR*DROP_OHP_Z; 6 -FQR*TY_Q_
103 -FQR*DROP_OCR_YZ; 11 +CYZ*DROP_OHQ_Z; 15 +OYP*L20; 1 -OZQ*L4
1 -OZQ*L8; 1 -OZQ*L18; 6 -OZQ*L31; 2 -OZQ*DROP_OHP_Z
1 +OZR*L6; 29 +CPQ*L3; 1 +CPQ*L5; 1 +CPQ*L26
25 +CPQ*DROP_OHP_Z; 54 +CPQ*DROP_OHQ_Z; 13 +CPQ*TY_Q_; 1 +ODZ*L27
1 -CFP*L34; 9 +DQR*L2; 25 -DPQ*L16; 13 -DPQ*L22
37 -DPQ*DROP_OHQ_Z; 1 +FPQ*L4; 140 +FPQ*L6; 2 +FPQ*L24
2 +FPQ*L29; 1 C_HCZ_Y*DROP_OHP_Z; 1 C_CDQ_P*L8; 13 C_CDQ_P*L18
64 C_CDQ_P*L28; 5 C_CDQ_P*L33; 17 C_CDQ_P*-OHD; 124 C_CDQ_P*DROP_OHQ_Z
29 C_CDQ_P*TX_Q_; 51 C_CDQ_P*LX_R; 4 TPX_Q_*L10; 1 TPX_Q_*L14
19 TPY_Q_*L2; 3 TPY_Q_*L5; 17 TPY_Q_*L23; 1 Q_OCPQ_Y*L27
1 Q_CDQF_P*L4; 58 Q_CDQF_P*L20; 2 Q_CDQZ_YP*L17
```

Upper bound: `-927104739/200000000`.

### Leaf UTLppmp

Assumptions: `+CYZ +OYP -OZP +OZQ`.

```c1top-geometry
P OHFZQ -OFZ
P OHFZR +OZR
P OHFPQ -OFP
P OHYZQ +OYQ
P OHYZR +OYR
P OCFYZ -OFY
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FODPQ +FPQ
P FODPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOHFP -ZFP
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P ZOFQR +ZQR
P POHFQ -PHQ
P POFQR +PQR
```

```c1top-bounds
T OHP Z 8 lower 93/295
T OCP Y 9 lower 279/1000
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 63/200 907/1000
q 279/1000 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
3 L0*L0*L29; 7 L0*L2*L32; 44 L0*L3*L16; 18 L0*L3*L19
33 L0*L3*C_OCF_YZ; 26 L0*L3*LX_R; 205 L0*L6*TX_Q_; 6 L0*L8*L34
4 L0*L8*TX_Q_; 29 L0*L12*L19; 25 L0*L12*L30; 50 L0*L17*L31
1 L0*L18*L25; 29 L0*L18*L31; 3 L0*L34*LX_R; 73 L0*TX_Q_*LX_R
17 L1*L1*L9; 31 L1*L3*L6; 7 L1*L6*L9; 52 L1*L6*L17
6 L1*L9*L9; 1 L1*L9*L23; 1 L1*L9*L27; 5 L1*L12*L24
4 L1*L13*L36; 26 L1*L14*L17; 3 L1*L14*L24; 4 L1*L14*L30
10 L1*L14*L31; 5 L1*L17*L18; 5 L1*L17*L19; 1 L1*L19*L24
85 L1*L21*L21; 17 L1*L21*L31; 19 L1*L24*L29; 4 L1*L24*L30
89 L1*L24*TX_Q_; 2 L1*L30*L35; 30 L1*L35*DROP_OHP_Z; 3 L2*L17*LY_R
20 L2*L24*L28; 52 L3*L3*L4; 15 L3*L3*L16; 102 L3*L4*L20
34 L3*L4*L24; 23 L3*L4*DROP_OHP_Z; 56 L3*L4*LX_R; 6 L3*L6*L18
9 L3*L7*L14; 9 L3*L7*L23; 4 L3*L7*DROP_OHP_Z; 19 L3*L8*L16
34 L3*L8*L18; 7 L3*L8*L32; 4 L3*L8*DROP_OCR_YZ; 9 L3*L9*L20
10 L3*L9*-OHD; 35 L3*L10*L13; 22 L3*L10*L20; 1 L3*L10*L28
21 L3*L11*L15; 2 L3*L11*LY_R; 9 L3*L13*L21; 9 L3*L13*LX_R
44 L3*L14*L30; 16 L3*L14*L32; 54 L3*L15*DROP_OHP_Z; 27 L3*L18*L20
21 L3*L18*L33; 21 L3*L18*-OHD; 2 L3*L19*L24; 13 L3*L19*L30
6 L3*L19*L36; 5 L3*L22*L30; 3 L3*L23*L24; 150 L3*L26*TX_Q_
2 L3*L27*L35; 33 L3*L27*+OCF; 9 L3*L30*TX_Q_; 6 L3*L31*LY_R
1 L4*L4*TX_Q_; 3 L4*L6*L9; 1 L4*L20*L35; 5 L4*L30*TX_Q_
3 L4*L36*TX_Q_; 51 L4*TX_Q_*TX_Q_; 4 L5*L12*L12; 18 L5*L21*L30
1 L5*L24*DROP_OHP_Z; 56 L5*L24*TX_Q_; 37 L6*L6*TY_Q_; 11 L6*L9*L19
9 L6*L9*C_OCF_YZ; 8 L6*L14*L21; 3 L6*L14*L28; 47 L6*L16*L27
4 L6*L17*L31; 128 L6*L18*TX_Q_; 103 L6*L20*L27; 103 L6*L21*L27
212 L6*L21*TY_Q_; 61 L7*L7*L23; 6 L7*L14*L24; 110 L7*L23*L24
69 L7*L23*TX_Q_; 1 L8*L18*LY_R; 9 L8*L21*L28; 17 L8*L23*TX_Q_
47 L8*L26*TX_Q_; 11 L9*L9*L18; 5 L9*L9*TY_Q_; 23 L9*L17*L21
4 L9*L17*L29; 9 L9*L17*L32; 3 L9*L18*L18; 23 L9*L18*TX_Q_
17 L9*L21*TY_Q_; 1 L10*L10*L31; 1 L10*L12*L31; 6 L10*L17*L33
5 L10*L17*LX_R; 1 L11*L23*TY_Q_; 64 L12*L14*L17; 76 L12*L14*L31
9 L12*L17*L27; 27 L12*L17*TY_Q_; 1 L12*L17*LY_R; 53 L12*L18*L23
4 L12*L18*L25; 1 L12*L18*TX_Q_; 10 L12*L22*L35; 1 L12*L23*L23
46 L12*L23*L24; 4 L12*L28*L30; 10 L12*L28*L31; 1 L12*L30*L35
3 L13*L18*LY_R; 23 L14*L17*L18; 2 L14*L17*L24; 2 L14*L21*L28
4 L14*L21*L35; 5 L14*L35*DROP_OHP_Z; 1 L15*L17*LX_R; 2 L15*L22*L24
17 L16*L26*TX_Q_; 1 L16*L30*L32; 12 L17*L18*DROP_OCR_YZ; 12 L17*L19*L26
32 L17*L20*L35; 9 L17*L21*L35; 123 L17*L23*L24; 9 L17*L23*L29
102 L17*L27*TX_Q_; 15 L17*L31*+OCF; 5 L17*L32*LX_R; 1 L18*L22*L25
17 L18*L23*L24; 18 L18*L26*TX_Q_; 1 L19*L27*L35; 2 L19*L35*L36
72 L21*L21*TY_Q_; 194 L21*L26*TX_Q_; 3 L21*L27*L31; 1 L22*L28*L30
1 L22*L35*TY_Q_; 1 L23*L23*L30; 1 L23*L24*L24; 44 L23*L24*L30
2 L23*L24*L34; 243 L23*L24*DROP_OHP_Z; 2 L23*L24*DROP_OCR_YZ; 72 L23*TX_Q_*TX_Q_
52 L24*L27*DROP_OHP_Z; 52 L24*DROP_OHP_Z*LY_R; 1 L24*TX_Q_*LY_R; 2 L26*L26*TX_Q_
146 L26*L29*TX_Q_; 1 L26*L30*L32; 194 L26*TX_Q_*TX_Q_; 1 L27*L30*L35
5 L30*L31*TY_Q_; 1 L30*L32*L32; 1 L30*L35*L36; 8 KLOW*L12
5 KLOW*TX_Q_; 24 +OYZ*L17; 41 +OYZ*L18; 23 +OYZ*L20
141 +OYZ*L33; 11 -HYZ*L30; 10 -HCY*L1; 7 -HCY*L8
22 -HCY*L21; 27 -HCY*L33; 91 -HCY*DROP_OHP_Z; 5 -HDZ*L3
21 +CDP*L3; 134 +CDP*L12; 1 +CDP*L25; 3 +DFP*L2
112 -CYP*L12; 6 -CYP*L14; 96 -HFQ*L24; 3 +CDQ*L24
1 -DFQ*L4; 19 -DFQ*L25; 8 -DFQ*L30; 37 -DFQ*LX_R
61 +FZQ*L24; 54 -OHR*L1; 1 -OHR*L8; 19 -OHR*L21
1 -OHR*DROP_OHP_Z; 4 +HFR*L8; 2 +HFR*L22; 124 +HFR*L27
47 +HFR*DROP_OHP_Z; 278 +HFR*TX_Q_; 124 +HFR*DROP_OCR_YZ; 44 -FQR*L12
18 -FQR*L18; 62 -FQR*L21; 1 -FQR*L24; 659 -FQR*L27
44 -FQR*L30; 120 -FQR*DROP_OHP_Z; 62 -FQR*TX_Q_; 660 -FQR*DROP_OCR_YZ
1 +CYZ*L11; 206 +CYZ*L12; 82 +CYZ*L17; 27 +CYZ*C_OCF_YZ
226 +CYZ*DROP_OHP_Z; 36 +OYP*L2; 30 +OYP*L34; 13 -OZP*L9
31 -OZP*L11; 46 -OZP*L13; 20 -OZP*L18; 301 -OZP*L20
174 -OZP*L21; 14 -OZP*L29; 65 -OZP*L31; 4 -OZP*LX_R
2 +OZQ*L1; 67 +OZQ*L7; 5 +OZQ*L13; 53 +OZQ*L18
1 +OZQ*L23; 120 +OZQ*L30; 169 +OZQ*DROP_OHP_Z; 1 +OZQ*TY_Q_
59 +OZQ*LX_R; 56 -OFZ*L24; 7 +OZR*L17; 108 -DPQ*L12
9 +FPQ*L3; 128 +FPQ*L6; 34 +FPQ*L9; 3 -FPR*L3
17 -YZP*L17; 3 -YZP*L18; 23 -YZP*L20; 11 -YZP*L31
17 -YZP*DROP_OHP_Z; 34 C_OPQ_Z*L30; 23 C_HCZ_Y*L30; 26 C_CZP_Y*L1
9 C_CZP_Y*L6; 26 C_CZP_Y*L9; 62 C_CZP_Y*L12; 45 TPX_Q_*L7
71 TPX_Q_*L21; 5 TPX_Q_*L29; 32 Q_OCDH_YZ*L3; 50 Q_OCDQ_YZP*L6
110 Q_OCDQ_YZP*L9; 9 Q_OCDQ_YZP*L10; 107 Q_OCDQ_YZP*L20; 3 Q_OCDQ_YZP*LX_R
47 Q_OCPZ_Y*L12; 19 Q_OCPZ_Y*L20; 27 Q_HZCR_Y*L3; 125 Q_CDQZ_YP*L30
10 Q_CDQZ_YP*L35
```

Upper bound: `-438350839617/91000000000`.

### Leaf UTLppp

Assumptions: `+CYZ +OYP +OZP`.

```c1top-geometry
P OHFPQ -OFP
P OHYPQ +OYQ
P OHYPR +OYR
P OHZPQ +OZQ
P OHZPR +OZR
P OCFYP -OFY
P OCFZP -OFZ
P HOFPR +HPR
P HOFQR +HQR
P COFQR +CQR
P DOFQR +DQR
P DCFPQ -DPQ
P FODPQ +FPQ
P FODPR -FPR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFQR +YQR
P ZOFQR +ZQR
P POHFQ -PHQ
P POFQR +PQR
```

```c1top-bounds
T OCP YZ 9 lower 347/500
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 21/200 907/1000
q 347/500 907/1000
l 27/50 1
m 347/500 1
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
9 L0*L3*L30; 27 L0*L3*TX_Q_; 75 L0*L6*TX_Q_; 3 L0*L12*TX_Q_
1 L0*L23*L27; 10 L1*L6*L9; 17 L1*L7*L9; 12 L1*L7*L24
19 L1*L8*L31; 10 L1*L9*L21; 1 L1*L13*L24; 10 L1*L13*L30
32 L1*L21*L24; 9 L1*L21*L30; 4 L1*L21*LY_R; 1 L1*L27*L30
1 L1*L27*L31; 13 L2*L18*L30; 5 L3*L3*L4; 25 L3*L4*L6
9 L3*L4*L22; 3 L3*L5*L17; 22 L3*L6*L13; 3 L3*L9*L14
3 L3*L9*L24; 11 L3*L10*L12; 22 L3*L12*L24; 1 L3*L12*L28
22 L3*L12*LX_R; 4 L3*L14*L15; 3 L3*L15*L33; 4 L3*L15*L36
6 L3*L16*L22; 10 L3*L18*L23; 1 L3*L18*L25; 7 L3*L18*L35
7 L3*L18*-OHD; 1 L3*L18*TY_Q_; 10 L3*L21*L28; 9 L3*L21*-OHD
7 L3*L22*L22; 13 L3*L22*L25; 1 L3*L23*+OCF; 19 L3*L23*TX_Q_
1 L3*L26*-OHD; 6 L3*L27*+OCF; 12 L3*L28*C_OCF_YZ; 22 L3*L31*L32
11 L5*L6*L21; 10 L5*L18*L24; 16 L6*L7*L27; 9 L6*L9*L27
11 L6*L17*L22; 14 L6*L18*TX_Q_; 4 L6*L19*L27; 63 L6*L21*L27
40 L6*L21*L28; 3 L6*L22*L27; 1 L6*L23*TY_Q_; 1 L6*L27*L30
9 L6*L27*+OCF; 5 L6*L31*LY_R; 27 L7*L7*L23; 8 L7*L9*L18
15 L7*L10*L18; 10 L7*L18*L21; 12 L7*L18*L26; 21 L7*L21*L23
7 L7*L23*TX_Q_; 1 L7*L23*LY_R; 36 L8*L9*L18; 2 L8*L12*L35
9 L8*L19*L24; 4 L8*L30*L32; 2 L9*L9*L12; 3 L9*L12*L24
4 L9*L13*L18; 9 L9*L18*L20; 1 L9*L21*L27; 1 L9*L23*TX_Q_
3 L9*L24*L33; 1 L10*L16*L23; 29 L10*L17*L31; 4 L10*L31*L31
8 L12*L14*L17; 70 L12*L14*L31; 3 L12*L16*L23; 1 L12*L30*L30
5 L13*L18*+OCF; 8 L13*L18*LX_R; 41 L14*L16*L31; 1 L14*L23*DROP_OCR_YZ
62 L16*L26*TX_Q_; 16 L17*L23*TX_Q_; 4 L17*L27*L27; 4 L17*L27*LY_R
16 L18*L20*L21; 16 L18*L20*L23; 2 L18*L20*LY_R; 16 L18*L22*TX_Q_
15 L18*L23*L31; 9 L18*L24*L30; 8 L18*L30*L30; 9 L18*L30*TX_Q_
15 L18*L32*TX_Q_; 62 L18*TX_Q_*LX_R; 2 L19*L21*L27; 1 L19*L24*L33
39 L21*L21*L27; 3 L21*L25*L28; 1 L21*L30*TY_Q_; 1 L22*L27*L34
1 L23*L24*L31; 12 L23*L24*+OCF; 1 L23*L28*TX_Q_; 1 L23*L31*C_OCF_YZ
17 L24*L28*TX_Q_; 39 L26*TX_Q_*TX_Q_; 2 L27*L30*L30; 1 L28*L29*L30
1 L30*L30*L36; 2 L30*L30*LY_R; 7 KLOW*TX_Q_; 10 -OHF*L3
2 +HDF*L18; 3 +HDF*L24; 1 +CDF*L21; 25 +OYZ*L9
2 +OYZ*L10; 21 +OYZ*L12; 58 +OYZ*L16; 58 +OYZ*L33
2 +OYZ*L35; 12 -HYZ*L30; 34 -HCY*L6; 26 -HCY*L8
10 -HCY*L20; 10 -HCY*L21; 35 -HCY*L29; 13 -HCY*L30
8 +CDP*L22; 14 +DFP*L6; 7 +DFP*L8; 1 +DFP*L13
4 +DFP*L21; 10 +DFP*L22; 6 +DFP*L31; 12 -HFQ*L18
78 -HFQ*L24; 1 +CDQ*L8; 7 +CDQ*L23; 19 +CDQ*TX_Q_
14 -DFQ*LX_R; 18 -OFQ*L24; 15 -CYQ*L18; 18 -OHR*L1
9 -OHR*L21; 2 -OHR*L29; 71 +HFR*L7; 3 +HFR*L9
35 +HFR*L20; 4 +HFR*L29; 1 +HFR*L30; 10 +DFR*L18
12 +OPQ*L5; 30 +OPQ*L6; 17 +OPQ*L7; 1 +OPQ*L9
1 +OPQ*L10; 4 +OPQ*L12; 1 +OPQ*L14; 18 +OPQ*L21
19 +OPQ*L23; 12 +OPQ*C_OCF_YZ; 7 +OPQ*DROP_OCR_YZ; 20 -FQR*L6
1 -FQR*L9; 62 -FQR*L16; 150 -FQR*L27; 150 -FQR*DROP_OCR_YZ
95 +CYZ*L8; 26 +CYZ*L9; 63 +CYZ*L12; 23 +CYZ*L16
8 +CYZ*+OCF; 6 +OYP*L3; 68 +OZP*L8; 36 +OZP*L13
1 +OZP*L27; 2 +OZP*-OHD; 18 +OZP*C_OCF_YZ; 2 +OZP*LY_R
8 -DPQ*L7; 1 -DPQ*L9; 1 -DPQ*L12; 4 -DPQ*L21
1 -DPQ*L27; 6 -DPQ*L29; 1 -DPQ*LY_R; 10 +FPQ*L4
30 +FPQ*L20; 33 +FPQ*L21; 18 +FPQ*L22; 2 +FPQ*L27
62 +FPQ*LX_R; 29 -YZP*L30; 1 +HPQ*L22; 4 +HPQ*L27
13 C_OCP_YZ*L9; 1 C_OCP_YZ*L28; 1 C_OCP_YZ*L35; 6 C_OCP_YZ*TX_Q_
1 TPX_Q_*L18; 15 TPX_Q_*L21; 11 TPY_Q_*L21; 19 Q_OCDH_YZ*L3
43 Q_OCDQ_YZP*L6; 8 Q_OCDQ_YZP*L17; 8 Q_OCDQ_YZP*L22; 2 Q_OCDQ_YZP*L33
6 Q_OCDQ_YZP*LX_R; 6 Q_HZCR_Y*L3
```

Upper bound: `-70088954123/91000000000`.

### Leaf TULmm

Assumptions: `-CYZ -OYP`.

```c1top-geometry
P OHDYP +ODY
P OHDPQ +ODQ
P OHYZP -OZP
P OCDYZ +ODZ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOCDZ +YDZ
P YOCZP -YZP
P YHCFZ +YFZ
P YHCZQ -YZQ
P YHCZR -YZR
P YHFPR +YPR
P ZHFPR +ZPR
P POCDQ -PCQ
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP YZ 8 lower 694/885
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 129/500 1
l 21/200 907/1000
m 93/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
5 L0*L2*TY_P_; 11 L0*L8*L27; 2 L0*L17*L29; 11 L0*L27*L28
7 L1*L1*L16; 1 L1*L1*L29; 30 L1*L2*L30; 9 L1*L2*L31
14 L1*L2*DROP_OHP_YZ; 10 L1*L5*L30; 6 L1*L6*L30; 5 L1*L8*L18
16 L1*L8*L28; 9 L1*L8*L31; 10 L1*L8*L33; 12 L1*L8*TX_P_
6 L1*L9*L14; 1 L1*L10*L15; 11 L1*L10*L27; 6 L1*L10*TX_P_
5 L1*L11*L31; 7 L1*L12*L15; 24 L1*L12*L17; 43 L1*L12*L32
29 L1*L12*+OCF; 6 L1*L12*LX_R; 7 L1*L13*L30; 15 L1*L14*DROP_OHP_YZ
11 L1*L17*TY_P_; 7 L1*L18*L30; 9 L1*L19*L30; 3 L1*L24*LY_R
5 L1*L27*L27; 24 L1*L27*L30; 11 L1*L27*L32; 8 L1*L27*+OCF
3 L1*L31*TX_P_; 7 L1*L32*TX_P_; 8 L2*L3*L8; 7 L2*L4*LY_R
4 L2*L6*TY_P_; 141 L2*L8*TY_P_; 7 L2*L10*LY_R; 4 L2*L12*L34
13 L2*L14*L17; 14 L2*L14*TY_P_; 4 L2*L27*TX_P_; 5 L2*L28*TY_P_
43 L2*L31*TY_P_; 12 L2*-OHD*TY_P_; 8 L3*L3*L30; 2 L3*L4*L15
4 L3*L4*L36; 16 L3*L4*DROP_OHP_YZ; 16 L3*L8*L19; 7 L3*L8*L30
4 L3*L10*L10; 15 L3*L10*L17; 5 L3*L11*L34; 2 L3*L14*L16
4 L3*L15*L32; 17 L3*L17*L34; 6 L3*L17*LY_R; 3 L3*L19*TX_P_
15 L3*L27*L36; 9 L3*L30*L32; 8 L4*L6*TY_P_; 3 L4*L10*L17
5 L4*L12*L27; 4 L4*L12*L30; 13 L4*L12*L34; 11 L4*L14*L27
3 L4*L15*L30; 14 L4*L16*L19; 4 L4*L16*L27; 4 L4*L26*TX_P_
11 L4*L27*L34; 4 L5*L12*L36; 2 L6*L6*L27; 6 L6*L27*L34
2 L6*L27*TX_P_; 4 L6*L27*TY_P_; 1 L7*L10*L12; 4 L7*L13*LY_R
10 L7*L18*LY_R; 7 L8*L8*L30; 23 L8*L12*L19; 6 L8*L12*L27
16 L8*L14*L25; 23 L8*L14*L30; 19 L8*L14*TY_P_; 10 L8*L18*LY_R
1 L8*L19*L24; 6 L8*L24*L27; 9 L8*L27*LX_R; 4 L8*L27*LY_R
2 L8*DROP_OHP_YZ*LY_R; 8 L9*L27*TY_P_; 7 L10*L10*L30; 1 L10*L15*L32
2 L10*L19*L30; 21 L10*L27*DROP_OHP_YZ; 2 L10*L29*L30; 1 L10*L29*L35
3 L10*L29*TY_P_; 14 L10*L30*L30; 1 L11*L12*L29; 14 L11*L12*L31
1 L11*L27*L35; 2 L11*L30*TX_P_; 10 L12*L12*L31; 12 L12*L12*LY_R
1 L12*L16*L27; 64 L12*L16*L35; 1 L12*L19*L29; 1 L12*L19*L36
22 L12*L28*L31; 1 L12*L28*DROP_OHP_YZ; 7 L12*L31*L35; 10 L12*L31*L36
29 L12*L32*TY_P_; 6 L14*L19*L30; 12 L14*L24*L30; 3 L14*L27*LX_R
15 L14*L29*LY_R; 1 L14*L30*DROP_OHP_YZ; 7 L14*L30*TY_P_; 11 L15*L16*L27
7 L15*L31*L35; 11 L15*TX_P_*LY_R; 22 L16*L30*LY_R; 6 L16*L31*L34
1 L16*L32*L35; 24 L17*L26*L30; 11 L17*L28*TY_P_; 5 L17*L29*TY_P_
2 L17*L29*LY_R; 1 L17*TY_P_*TY_P_; 15 L18*L24*L27; 1 L18*L24*L30
15 L18*L24*LY_R; 2 L18*L30*LY_R; 1 L19*L19*TX_P_; 4 L24*L27*+OCF
5 L27*L27*-OHD; 2 L27*L29*L30; 1 L27*L31*L35; 4 L27*L31*LX_R
8 L29*L32*LY_R; 1 L29*-OHD*LY_R; 13 L30*LY_R*LY_R; 9 L31*L31*L34
7 L31*L35*L35; 9 L31*LY_R*LY_R; 1 L32*L35*TX_P_; 1 L34*L35*L35
6 L34*L35*DROP_OHP_YZ; 1 L35*L35*LY_R; 8 FAN*L14; 2 CENT*L35
23 CENT*TY_P_; 7 +OCD*L34; 7 -HYZ*L10; 10 -HYZ*L25
3 -HYZ*L28; 16 -HYZ*L31; 28 -HYZ*L33; 25 -HYZ*+OCF
47 -HYZ*DROP_OHP_YZ; 21 -OHZ*L30; 52 -OHZ*L32; 7 -OHZ*L34
16 +CDP*L2; 103 +CDP*L8; 25 +CDP*L12; 17 +CDP*L14
1 +CDP*L19; 6 +CDP*L28; 27 +CDP*L33; 17 +CDP*-OHD
53 +CDP*DROP_OHP_YZ; 7 -DFP*L4; 3 -DFP*L11; 5 -DFP*L16
1 -CFP*L4; 1 -CFP*L19; 4 +FZP*L1; 10 -OHR*L1
9 +OCR*L27; 8 +HFR*L11; 14 +HFR*L18; 4 +HFR*L30
16 +HFR*-OHD; 8 +HYR*L1; 6 +HZR*L13; 2 +HZR*L18
3 +HZR*L26; 6 +HZR*L30; 1 -FPR*L12; 32 -CYZ*L1
36 -CYZ*L12; 26 -CYZ*L18; 26 -CYZ*L28; 22 -CYZ*L30
17 -CYZ*-OHD; 38 -CYZ*DROP_OHP_YZ; 6 -OYP*L15; 14 -OYP*L18
14 -OYP*L19; 21 -OYP*L26; 2 -OYP*L32; 23 -OYP*L33
4 -OYP*-OHD; 8 +ODY*L27; 1 -OZP*L12; 20 -DYZ*L3
11 C_ODZ_Y*L8; 1 TPX_P_*L4; 4 TPY_P_*L2; 2 Q_OCDH_YZ*L27
3 Q_OPFH_YZQ*L3; 15 Q_OCDZ_Y*L8; 5 Q_OCDZ_Y*L27
```

Upper bound: `-81597137/500000000`.

### Leaf TULmpmmm

Assumptions: `-CYZ +OYP -OZP -OZQ -OZR`.

```c1top-geometry
C OHR Z Y +ROY 3239749/6167600
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFZR +OFZ
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FOHYZ -FYZ
P FHDPQ -FPQ
P FHDQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YHCDZ +YDZ
P ZOFPR +ZPR
P POCDQ -PCQ
P POCYQ -PYQ
P QOHZR -QZR
P QOCDY -QDY
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OHR Z 12 lower 93/295
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 63/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L3*L27; 8 L0*L10*L30; 14 L0*L10*L32; 181 L0*L12*L17
14 L1*L1*L11; 43 L1*L5*L17; 98 L1*L6*L27; 150 L1*L7*L17
662 L1*L7*L24; 248 L1*L7*L29; 139 L1*L8*L12; 10 L1*L8*L29
1 L1*L11*L27; 87 L1*L12*L35; 84 L1*L12*DROP_OHR_Z; 57 L1*L12*LY_R
22 L1*L14*L27; 9 L1*L17*L21; 301 L1*L24*L29; 53 L1*L24*TX_P_
40 L1*L27*DROP_OHP_Z; 14 L1*L31*L31; 4 L1*L35*L35; 188 L2*L3*L10
18 L2*L9*L10; 12 L2*L10*TX_P_; 55 L2*L11*L17; 54 L2*L12*L35
23 L2*L17*L21; 160 L2*L17*TY_P_; 23 L2*L17*DROP_OHQ_Z; 10 L2*L19*L27
447 L2*L27*TX_P_; 491 L2*L27*DROP_OHR_Z; 91 L3*L3*L4; 27 L3*L4*L6
122 L3*L4*L8; 284 L3*L4*LX_R; 11 L3*L19*L19; 18 L3*L19*L24
31 L3*L19*L29; 195 L4*L4*TX_P_; 57 L4*L7*L19; 2 L4*L8*LX_R
282 L4*L17*L24; 10 L4*L19*L24; 14 L4*L19*L29; 11 L4*L19*TX_P_
14 L4*L27*L27; 10 L4*L27*C_OCF_Y; 109 L4*L27*DROP_OHR_Z; 65 L4*TX_P_*TX_P_
13 L4*TX_P_*LX_R; 41 L5*L17*L17; 53 L5*L17*L28; 54 L5*L17*L29
33 L5*L17*DROP_OHP_Z; 10 L5*L17*LY_R; 22 L5*L27*L36; 551 L6*L17*L27
24 L6*L27*L30; 154 L7*L7*L19; 39 L7*L9*L34; 312 L7*L12*L17
41 L7*L19*L29; 218 L7*L19*TX_P_; 90 L7*L24*L34; 11 L7*L27*L28
14 L7*L31*L34; 202 L7*TX_P_*LY_R; 6 L8*L12*L29; 54 L8*L12*L31
95 L8*L12*LY_R; 6 L8*L17*DROP_OHR_Z; 18 L9*L9*L34; 36 L9*L12*L32
77 L9*L24*L34; 121 L9*L31*L34; 27 L9*L34*TX_P_; 54 L10*L12*L32
6 L10*L16*L29; 30 L10*L22*L27; 30 L10*L23*L27; 176 L10*L24*L33
1 L10*L27*L35; 1 L10*L32*DROP_OCR_Y; 27 L11*L12*TX_P_; 312 L12*L17*DROP_OHR_Z
312 L12*L17*LX_R; 161 L12*L24*L32; 24 L12*L27*L28; 512 L12*L27*DROP_OHR_Z
47 L12*L29*L32; 6 L12*L29*L35; 155 L12*L29*LY_R; 9 L12*L31*L32
54 L12*L35*L35; 167 L12*L35*DROP_OHR_Z; 102 L12*TX_P_*LY_R; 566 L13*L27*DROP_OHR_Z
22 L14*L27*L28; 1 L14*L27*L29; 54 L15*L24*L24; 59 L15*L24*L31
14 L15*L31*L31; 40 L16*L27*L32; 204 L17*L17*L27; 96 L17*L19*L24
218 L17*L19*L29; 9 L17*L19*DROP_OHQ_Z; 301 L17*L19*DROP_OHR_Z; 9 L17*L20*TY_P_
9 L17*L21*L28; 6 L17*L24*L35; 147 L17*L27*L29; 34 L17*L27*L30
40 L17*L27*L35; 204 L17*L27*DROP_OHP_Z; 14 L18*L26*L27; 48 L19*L24*L24
396 L19*L24*TX_P_; 1 L20*L27*L27; 19 L21*L27*DROP_OHR_Z; 1 L22*L24*L27
409 L24*L24*LY_R; 108 L24*L27*L28; 19 L24*L27*DROP_OHQ_Z; 273 L24*L31*L34
68 L24*L34*TX_P_; 14 L27*L27*TY_P_; 1 L27*L28*L30; 10 L27*L29*TY_P_
152 L27*L29*DROP_OHR_Z; 1 L27*L31*L32; 643 L27*C_OCF_Y*LX_R; 561 L27*DROP_OHP_Z*DROP_OHR_Z
609 L27*TX_P_*LX_R; 409 L27*DROP_OHR_Z*DROP_OHR_Z; 14 KLOW*L2; 206 KLOW*L25
262 KLOW*LX_R; 178 CENT*L25; 18 -HYZ*L9; 69 -HYZ*L17
103 -HYZ*L31; 30 -HYZ*DROP_OHP_Z; 66 -HYZ*TX_P_; 504 -HYZ*DROP_OHR_Z
65 +OCY*L2; 22 +OCY*L17; 14 +OCY*L31; 122 +CDY*L3
51 +CDY*L16; 2 +CDY*LX_R; 189 -OHZ*L1; 72 -OHZ*L8
309 -OHZ*L16; 201 -OHZ*L29; 132 -OHZ*L32; 174 -OHZ*DROP_OHR_Z
79 -OHZ*DROP_OCR_Y; 1 +DFZ*L27; 31 +CDP*L12; 214 +CDP*L17
36 +CDP*L19; 282 +CDP*L25; 31 +CDP*L33; 152 +CDP*DROP_OHP_Z
119 +CDP*TX_P_; 25 +CDP*TY_P_; 72 -DFP*L4; 228 -DFP*L6
293 -DFP*L29; 13 -DFP*LX_R; 99 +HFR*L12; 461 +HFR*L17
109 +HFR*L26; 496 +HFR*L29; 24 +HFR*L30; 513 +HFR*DROP_OHP_Z
455 +HFR*DROP_OHR_Z; 46 +HFR*LX_R; 1 +HZR*L27; 6 -FYR*L17
1 -DYR*L27; 1 +OQR*L27; 300 -FPR*L3; 10 -FPR*L4
361 -FPR*L7; 100 -FPR*L25; 148 -FPR*DROP_OHR_Z; 32 -CYZ*L9
123 -CYZ*L21; 14 -CYZ*L29; 123 -CYZ*DROP_OHQ_Z; 1 -CYZ*DROP_OCR_Y
155 -OZR*L2; 158 -OZR*L7; 95 -OZR*L8; 115 -OZR*L17
182 -OZR*DROP_OHP_Z; 54 -OZR*DROP_OHR_Z; 1 -YZR*L27; 66 C_OHR_Z*L17
123 TPX_P_*L4; 136 TPY_P_*L2; 10 TPY_P_*DROP_OCR_Y; 109 Q_OCFR_Y*L27
```

Upper bound: `-75966379/1000000000`.

### Leaf TULmpmmpmmmmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR -HDQ -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFZQ -OFQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOHQR -DQR
P DOFPR +DPR
P FOCPQ -FPQ
P FOCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHFQ -ZFQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
M OCFQYZ -1
M OFCQZY 1
M COFZYQ 1
M CFOZQY -1
M FOCYZQ -1
M FCOYQZ 1
M OCRQYZ -1
M ORCQZY 1
M CORZYQ 1
M CROZQY -1
M ROCYZQ -1
M RCOYQZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCF YZQ 1 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L0*LX_R; 3 L0*L1*L31; 2 L0*L2*L3; 7 L0*L2*TY_P_
3 L0*L12*LY_R; 3 L0*L17*L22; 4 L0*L17*DROP_OCP_Y; 1 L0*L21*L31
1 L0*L21*L36; 3 L0*L21*DROP_OCR_YZQ; 4 L0*L22*LX_R; 1 L0*L23*L30
6 L0*L24*L27; 31 L0*L27*L30; 5 L0*DROP_OCP_Y*LX_R; 32 L0*TX_P_*LX_R
2 L0*TY_P_*DROP_OHQ_Z; 21 L0*DROP_OCR_YZQ*LX_R; 1 L1*L2*L4; 5 L1*L6*DROP_OHP_ZQ
1 L1*L6*TX_P_; 3 L1*L13*L24; 12 L1*L16*L30; 1 L1*L17*L35
9 L1*L17*DROP_OCR_YZQ; 2 L1*L18*L24; 19 L1*L18*L27; 2 L1*L22*L31
4 L1*L24*L29; 7 L1*L24*LY_R; 2 L1*L30*TX_P_; 4 L2*L31*TY_P_
9 L2*+OCF*TY_P_; 73 L2*DROP_OHP_ZQ*TY_P_; 4 L2*TY_P_*TY_P_; 138 L2*TY_P_*DROP_OHQ_Z
184 L2*TY_P_*DROP_OCR_YZQ; 2 L2*LY_R*LY_R; 9 L3*L4*L16; 5 L3*L4*LX_R
1 L3*L10*L30; 1 L3*L10*L31; 7 L3*L10*DROP_OCR_YZQ; 8 L3*L14*L20
24 L3*L14*DROP_OCR_YZQ; 65 L3*L17*TY_P_; 4 L3*L18*L24; 7 L3*L22*L30
2 L4*L4*L9; 1 L4*L8*L23; 3 L4*L10*TX_P_; 6 L4*L16*L35
1 L4*L16*TY_P_; 11 L4*L16*LX_R; 1 L4*L18*L21; 1 L4*L20*TY_P_
3 L5*L6*DROP_OHQ_Z; 1 L5*L10*L29; 23 L5*L17*DROP_OHQ_Z; 3 L5*L27*DROP_OHQ_Z
5 L6*L8*L11; 40 L6*L9*DROP_OHQ_Z; 1 L6*L10*L13; 3 L6*L10*TX_P_
30 L6*L17*DROP_OCR_YZQ; 2 L6*L22*L28; 3 L6*L29*TY_P_; 12 L6*L30*DROP_OCR_YZQ
5 L6*L31*DROP_OCP_Y; 6 L6*L35*DROP_OCR_YZQ; 11 L6*DROP_OHP_ZQ*TY_P_; 10 L6*DROP_OCP_Y*TX_P_
1 L7*L12*L14; 2 L8*L14*L17; 1 L8*L14*LX_R; 1 L8*L18*L30
1 L8*L18*L31; 4 L8*L23*L24; 12 L8*L23*L27; 5 L8*L23*L30
1 L8*L27*L29; 1 L8*L27*TY_P_; 3 L9*L11*L27; 1 L9*L14*L20
1 L10*L13*L14; 1 L10*L21*L28; 3 L10*L27*DROP_OCP_Y; 12 L10*L27*DROP_OHQ_Z
46 L10*L30*DROP_OCR_YZQ; 43 L10*L31*DROP_OCR_YZQ; 1 L10*-OHD*TX_P_; 2 L10*TY_P_*LX_R
3 L12*L14*LY_R; 13 L12*L16*L27; 12 L12*L18*L27; 3 L12*L19*L24
4 L12*L22*L31; 2 L12*L22*LY_R; 1 L12*L27*L29; 2 L12*L27*+OCF
2 L12*L27*DROP_OCR_YZQ; 12 L13*L27*DROP_OCP_Y; 2 L14*L23*DROP_OCR_YZQ; 3 L14*L27*DROP_OHQ_Z
4 L14*L30*LY_R; 9 L14*DROP_OCR_YZQ*LX_R; 2 L15*L22*L27; 4 L17*L19*L28
5 L17*L22*L26; 1 L17*L23*L25; 3 L17*L27*DROP_OHQ_Z; 15 L17*L30*LY_R
2 L18*L20*LX_R; 3 L18*L27*L35; 19 L18*L27*-OHD; 1 L19*L24*L29
4 L21*L27*L30; 5 L21*L27*TY_P_; 1 L21*L30*L32; 11 L24*L27*L30
27 L24*L27*DROP_OCR_YZQ; 11 L26*L27*L30; 27 L26*L27*LX_R; 45 L27*L27*DROP_OCR_YZQ
4 L27*L29*-OHD; 11 L27*L30*LX_R; 15 L27*L31*DROP_OHP_ZQ; 11 L27*L31*LY_R
45 L27*DROP_OCR_YZQ*DROP_OCR_YZQ; 2 KLOW*L18; 1 KLOW*L28; 2 KLOW*L31
1 KLOW*DROP_OHQ_Z; 3 KLOW*LX_R; 1 CENT*L2; 1 +OYZ*L8
1 -HYZ*L14; 1 -HYZ*L33; 37 -HYZ*DROP_OCR_YZQ; 3 -HYZ*LY_R
1 +OCY*L36; 4 +OCY*DROP_OHQ_Z; 13 +CDP*L2; 4 +CDP*L5
11 +CDP*L25; 9 +CDP*-OHD; 175 +CDP*DROP_OHP_ZQ; 4 +CDP*DROP_OCP_Y
138 +CDP*DROP_OHQ_Z; 207 +CDP*DROP_OCR_YZQ; 8 -DFP*L2; 2 +HCQ*L13
2 -CYQ*L17; 1 -CYQ*TY_P_; 7 -OHR*LY_R; 31 +HFR*L7
4 +HFR*L8; 10 +HFR*L16; 7 +HFR*L22; 1 +HFR*L32
3 +HFR*L33; 16 +HFR*DROP_OHP_ZQ; 5 +HFR*DROP_OCP_Y; 27 +HFR*DROP_OCR_YZQ
1 +HZR*L35; 3 +OPQ*L0; 5 +OPQ*L26; 3 +OPQ*+OCF
2 +OPQ*LX_R; 2 -FPR*L5; 3 -FPR*L12; 2 -FPR*L28
1 -CYZ*L8; 25 -CYZ*DROP_OCR_YZQ; 8 -OZQ*L2; 19 -OZQ*L26
2 -OZQ*DROP_OHP_ZQ; 19 +OZR*TY_P_; 4 -CQR*L5; 4 -CQR*L12
5 -CQR*L14; 1 -CQR*L24; 4 -CQR*L30; 6 -CQR*L34
2 -CQR*DROP_OCP_Y; 3 -CQR*TX_P_; 9 -CQR*LY_R; 2 -HDQ*L0
4 -ODY*L3; 6 -ODY*DROP_OHP_ZQ; 3 -OFZ*L8; 2 -OFZ*L16
3 -OFZ*L22; 2 -OFZ*TX_P_; 3 -OFZ*DROP_OHQ_Z; 34 -OFZ*DROP_OCR_YZQ
2 +OYQ*L14; 1 +HQR*L24; 1 -DQR*L4; 3 -DQR*L6
6 +DPR*L2; 1 -YZQ*L0; 10 -YZQ*L27; 5 +FYQ*L1
1 +FYQ*L2; 2 +FYQ*L4; 3 +FYQ*L6; 4 +FYQ*L12
1 +FYQ*L15; 1 +FYQ*L19; 7 +FYQ*L26; 5 +FYQ*L30
4 +FYQ*-OHD; 2 +YQR*TY_P_; 2 C_OCQ_Y*L27; 3 C_ODF_ZQ*L6
2 C_OFY_Z*L17; 7 C_OFP_ZQ*L4; 18 C_OFP_ZQ*L7; 3 C_OFP_ZQ*L21
3 C_OFP_ZQ*L33; 3 C_OFP_ZQ*-OHD; 49 C_OFP_ZQ*DROP_OHP_ZQ; 1 C_OFP_ZQ*DROP_OCP_Y
55 C_OFP_ZQ*DROP_OHQ_Z; 50 C_OFP_ZQ*DROP_OCR_YZQ; 1 C_OFQ_Z*L18; 3 C_OYR_Z*L6
1 C_OYR_Z*L14; 2 Q_OCRH_YZQ*L11; 4 Q_OCRH_YZQ*L31; 6 Q_OCRH_YZQ*TX_P_
1 Q_OCRH_YZQ*LX_R; 5 Q_ODPH_ZQ*L27; 2 Q_OCQZ_Y*LY_R; 5 Q_OYPF_ZQ*L6
11 Q_OYQF_Z*L2; 3 Q_OQFR_Z*L6; 1 Q_HCPF_Q*L10; 3 Q_HYDP_Q*L27
3 Q_CPRY_Q*L6; 2 Q_DPFY_Q*L4; 1 Q_FZYP_Q*L12; 4 M_RCOYQZ_1_1*L3
19 M_RCOYQZ_1_1*TY_P_; 9 M_RCOYQZ_1_4*DROP_OCR_YZQ; 4 M_FCOYQZ_1_0*L5; 1 M_FCOYQZ_1_0*L18
1 M_FCOYQZ_1_0*L36; 2 M_FCOYQZ_1_4*TX_P_
```

Upper bound: `-61900527587/45500000000`.

### Leaf TULmpmmpmmmmpmmmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR -HDQ -ODY +OFZ -OFQ -DZQ -FYQ -ZPQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOHQR -DQR
P DOFPR +DPR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ +YPQ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHQR -PQR
M OCRQYZ -1
M ORCQZY 1
M CORZYQ 1
M CROZQY -1
M ROCYZQ -1
M RCOYQZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OCR YZQ 1 lower 823/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
24 L0*L10*L25; 20 L0*L12*LY_R; 5 L0*L19*TX_P_; 1 L0*L29*DROP_OHP_ZQ
1 L1*L3*L6; 6 L1*L3*L21; 1 L1*L3*L34; 7 L1*L4*L11
9 L1*L7*L17; 5 L1*L7*L24; 27 L1*L8*L24; 36 L1*L9*L27
14 L1*L10*L31; 21 L1*L12*L17; 20 L1*L12*L22; 64 L1*L12*TY_P_
10 L1*L17*L22; 26 L1*L17*L31; 10 L1*L19*L21; 20 L1*L20*L24
6 L1*L20*L35; 8 L1*L23*L24; 7 L1*L24*L27; 16 L1*L24*L36
17 L1*L27*DROP_OHP_ZQ; 91 L2*L12*TY_P_; 21 L2*L12*LY_R; 5 L2*L14*L17
39 L2*L14*TY_P_; 1 L2*L15*L28; 14 L2*L16*TX_P_; 13 L2*L22*TX_P_
39 L2*L27*L27; 94 L2*L27*TY_P_; 39 L3*L4*L4; 12 L3*L4*L5
6 L3*L4*L9; 47 L3*L4*L19; 19 L3*L4*L21; 3 L3*L4*L33
47 L3*L4*DROP_OHP_ZQ; 14 L3*L6*L17; 38 L3*L8*L27; 24 L3*L10*L21
22 L3*L10*L22; 2 L3*L10*L30; 5 L3*L10*C_OCF_YQ; 1 L3*L12*L14
5 L3*L12*L22; 15 L3*L14*L19; 27 L3*L14*L24; 14 L3*L17*L17
6 L3*L17*L19; 20 L3*L19*L19; 4 L3*L19*L23; 14 L3*L21*L27
15 L3*L22*LY_R; 27 L3*L30*LY_R; 69 L3*DROP_OHP_ZQ*LY_R; 18 L4*L4*L30
26 L4*L9*L16; 3 L4*L9*L18; 1 L4*L9*L24; 7 L4*L10*L15
42 L4*L10*L27; 8 L4*L13*L27; 14 L4*L13*L35; 87 L4*L15*DROP_OHP_ZQ
54 L4*L16*L31; 3 L4*L19*DROP_OHP_ZQ; 12 L4*L19*DROP_OHQ_Z; 23 L4*L21*L24
25 L4*L24*L27; 25 L4*L24*LY_R; 112 L4*L27*DROP_OCR_YZQ; 8 L4*L30*LY_R
3 L4*L31*L31; 7 L4*L34*L35; 2 L4*L34*DROP_OHQ_Z; 18 L4*L35*DROP_OHQ_Z
1 L4*L35*LX_R; 54 L4*L36*DROP_OHP_ZQ; 3 L4*TX_P_*DROP_OCR_YZQ; 42 L5*L10*L27
8 L6*L10*L30; 3 L6*L21*L27; 52 L6*L27*DROP_OCP_Y; 19 L6*L27*TX_P_
2 L7*L9*L19; 10 L7*L10*L16; 14 L7*L14*L27; 1 L7*L14*C_OCF_YQ
4 L7*L17*L32; 19 L7*L19*TX_P_; 31 L7*L22*L27; 14 L8*L10*LY_R
18 L8*L14*L17; 28 L8*L17*DROP_OCP_Y; 35 L8*L27*L29; 7 L8*L27*L35
11 L8*L27*L36; 2 L8*L27*DROP_OHP_ZQ; 17 L9*L10*DROP_OHP_ZQ; 23 L9*L19*L36
13 L9*L20*L27; 30 L9*L27*TY_P_; 9 L10*L17*L29; 17 L10*L17*L31
33 L10*L17*L33; 8 L10*L24*L31; 52 L10*L25*DROP_OHP_ZQ; 31 L10*L27*L27
6 L10*L27*-OHD; 72 L10*L27*DROP_OHP_ZQ; 25 L11*L12*L17; 9 L11*L12*L27
23 L11*L14*L17; 6 L11*L27*L34; 1 L12*L13*L19; 2 L12*L15*LY_R
98 L12*L18*L27; 41 L12*L19*L19; 15 L12*L27*+OCF; 67 L12*L27*DROP_OCP_Y
8 L12*L27*DROP_OHQ_Z; 18 L12*L31*TY_P_; 1 L13*L19*TX_P_; 8 L14*L15*L27
27 L14*L17*L17; 23 L14*L17*L28; 83 L14*L17*TY_P_; 22 L14*L23*L24
9 L14*L24*L35; 11 L14*L27*L30; 9 L15*L19*L24; 31 L15*L27*L27
7 L15*L27*L36; 6 L17*L17*L28; 52 L17*L18*L27; 8 L17*L19*L19
17 L17*L19*L28; 28 L17*L19*L30; 9 L17*L26*L30; 14 L17*L27*TX_P_
1 L17*L30*L34; 2 L17*-OHD*TX_P_; 8 L19*L19*TX_P_; 10 L19*L20*L24
72 L19*L22*L24; 14 L19*L24*TX_P_; 11 L19*L27*L30; 129 L19*L27*DROP_OHQ_Z
12 L19*L34*TX_P_; 52 L19*TX_P_*DROP_OCR_YZQ; 35 L20*TX_P_*LY_R; 3 L20*LY_R*LY_R
13 L21*L27*L35; 66 L21*L27*TY_P_; 29 L22*L27*L30; 34 L23*L24*L27
7 L23*L27*L33; 13 L24*L27*DROP_OCR_YZQ; 18 L24*LY_R*LY_R; 36 L26*L27*DROP_OHQ_Z
31 L27*L27*L32; 130 L27*L27*DROP_OCP_Y; 5 L27*L27*LX_R; 2 L27*L30*-OHD
22 L27*L31*L32; 31 L27*L34*DROP_OCR_YZQ; 31 L27*L35*TX_P_; 1 L27*L36*L36
1 L27*L36*TX_P_; 18 L27*-OHD*DROP_OCP_Y; 25 L27*-OHD*DROP_OHQ_Z; 25 L27*DROP_OHP_ZQ*DROP_OHQ_Z
123 L27*DROP_OCP_Y*DROP_OHQ_Z; 18 L27*DROP_OCP_Y*LY_R; 112 L27*TY_P_*DROP_OCR_YZQ; 1 L30*L30*LY_R
32 L30*TX_P_*LY_R; 7 KLOW*L10; 22 CENT*L23; 60 CENT*L25
1 CENT*L30; 57 CENT*DROP_OHP_ZQ; 1 CENT*TX_P_; 61 CENT*DROP_OCR_YZQ
2 CENT*LY_R; 3 QCENT*L27; 2 +HCF*L27; 1 -HYZ*L3
20 -HYZ*L20; 9 +OCY*L28; 7 +OCY*L30; 6 +OCY*L31
1 +OCY*LX_R; 5 -HFP*TX_P_; 27 +CDP*L4; 47 +CDP*L12
54 +CDP*L14; 6 +CDP*L17; 20 +CDP*L19; 143 +CDP*L21
100 +CDP*L23; 183 +CDP*DROP_OHQ_Z; 62 +CDP*DROP_OCR_YZQ; 1 -DFP*L10
1 -DFP*L30; 53 +OCQ*L27; 1 +HCQ*L0; 20 +HCQ*L9
58 +HCQ*L16; 5 +HCQ*L29; 2 +HCQ*L33; 38 +HCQ*DROP_OHP_ZQ
6 +HCQ*LX_R; 2 +HYQ*L1; 2 -CYQ*L2; 12 +HFR*L0
30 +HFR*L30; 5 +HFR*TX_P_; 36 +HFR*DROP_OHQ_Z; 12 +HFR*LY_R
18 +CDR*L10; 95 +HZR*L4; 2 +HZR*L14; 5 +HZR*L17
87 +HZR*L19; 10 +HZR*L21; 1 +HZR*L29; 18 +HZR*LY_R
14 +OPQ*L6; 41 +OPQ*L9; 4 +OPQ*L22; 9 +OPQ*L26
23 +OPQ*L29; 27 +OPQ*L32; 77 +OPQ*L36; 72 +OPQ*DROP_OCP_Y
62 +OPQ*TY_P_; 14 +OPQ*LX_R; 14 +OPQ*LY_R; 17 -FPR*L0
12 -FPR*L15; 35 -FPR*L19; 4 -FPR*L21; 1 -FPR*L23
3 -FPR*L35; 35 -FPR*DROP_OCP_Y; 14 -FPR*TX_P_; 16 -CYZ*L5
14 -CYZ*L8; 14 -CYZ*L9; 14 -CYZ*L21; 118 -OZQ*L17
5 -OZQ*L24; 77 +OZR*L0; 49 +OZR*L5; 9 +OZR*L11
2 +OZR*L15; 27 +OZR*L24; 40 +OZR*L27; 12 +OZR*L31
204 +OZR*DROP_OCP_Y; 27 +OZR*TX_P_; 46 +OZR*TY_P_; 27 +OZR*LX_R
86 -CQR*L1; 19 -CQR*L8; 21 -CQR*L13; 22 -CQR*L14
69 -CQR*L16; 39 -CQR*L27; 44 -CQR*L32; 58 -CQR*-OHD
8 -CQR*+OCF; 100 -CQR*TY_P_; 10 -HDQ*L4; 33 -HDQ*L16
5 -HDQ*L35; 2 -HDQ*-OHD; 28 -HDQ*DROP_OHP_ZQ; 3 -ODY*L9
13 -ODY*L21; 15 -ODY*L28; 81 -ODY*DROP_OHP_ZQ; 3 -ODY*TY_P_
39 -ODY*DROP_OCR_YZQ; 1 +OFZ*L10; 12 -OFQ*L3; 7 -OFQ*L19
8 -OFQ*L30; 18 -OFQ*DROP_OCR_YZQ; 48 -DZQ*L1; 66 -DZQ*L4
36 -DZQ*L9; 23 -DZQ*L25; 48 -DZQ*L28; 23 -DZQ*L32
59 -DZQ*+OCF; 99 -DZQ*DROP_OHP_ZQ; 88 -DZQ*DROP_OCP_Y; 4 -FYQ*L17
29 -FYQ*L27; 8 -FYQ*L30; 38 -ZPQ*L4; 41 -ZPQ*L9
185 -ZPQ*L21; 23 -ZPQ*L32; 63 -ZPQ*+OCF; 143 -ZPQ*DROP_OCP_Y
185 -ZPQ*DROP_OHQ_Z; 10 +HQR*L8; 11 +DPQ*L27; 8 -FPQ*L19
2 -FQR*L10; 17 -FQR*L27; 18 +ZQR*L3; 22 +ZQR*L27
87 +YQR*L12; 81 +YQR*L13; 55 +YQR*L16; 23 +YQR*L28
8 +YQR*L30; 1 +YQR*-OHD; 40 +YQR*+OCF; 27 +YQR*DROP_OCP_Y
11 C_OHQ_Z*L10; 50 C_OZP_Q*L4; 27 C_OZP_Q*L17; 72 C_OZP_Q*L19
78 C_OZP_Q*L20; 73 C_OZP_Q*L22; 19 C_OZP_Q*L24; 48 C_OPR_ZQ*L4
24 C_OPR_ZQ*L10; 6 C_HCR_Q*L3; 46 C_HCR_Q*L30; 2 C_HDZ_Q*L22
1 C_HDZ_Q*LX_R; 40 C_CYR_Q*L4; 3 C_YZP_Q*L24; 23 SP_OCDH_YQ_CH-1*L27
41 Q_OCRH_YZQ*L14; 70 Q_OCRH_YZQ*TY_P_; 14 SP_OCPZ_YQ_OP-1*L27; 1 SP_OCPZ_YQ_OP1*L12
4 SP_OCPZ_YQ_OP1*L22; 2 SP_OYFR_ZQ_OF-1*L10; 2 Q_DPFZ_Q*L10; 2 M_RCOYQZ_1_1*L3
59 M_RCOYQZ_1_3*L16; 23 M_RCOYQZ_1_3*TY_P_
```

Upper bound: `-63180031099/13000000000`.

### Leaf TULmpmmpmmmmpmmmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR -HDQ -ODY +OFZ -OFQ -DZQ -FYQ +ZPQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOHQR -DQR
P DOFPR +DPR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ +YPQ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHQR -PQR
M OCRQYZ -1
M ORCQZY 1
M CORZYQ 1
M CROZQY -1
M ROCYZQ -1
M RCOYQZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OCR YZQ 1 lower 823/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
9 L0*L1*L24; 12 L0*L1*C_OCF_YQ; 21 L0*L3*DROP_OHQ_Z; 2 L0*L6*L23
4 L0*L10*L29; 20 L0*L17*L22; 5 L0*L36*LX_R; 1 L1*L2*L34
7 L1*L3*L29; 5 L1*L8*L12; 4 L1*L8*TX_P_; 3 L1*L8*TY_P_
5 L1*L9*DROP_OHQ_Z; 3 L1*L9*LY_R; 3 L1*L13*L28; 32 L1*L17*L20
56 L1*L18*L24; 25 L1*L20*L24; 2 L1*L20*L32; 8 L1*L27*DROP_OHQ_Z
88 L2*L2*TY_P_; 2 L2*L5*L10; 76 L2*L6*TY_P_; 9 L2*L10*L21
26 L2*L12*L19; 12 L2*L15*L24; 36 L2*L17*L28; 3 L2*L17*LX_R
17 L2*L18*L34; 3 L2*L24*L34; 18 L2*L27*L31; 3 L2*L32*TY_P_
38 L2*TY_P_*DROP_OHQ_Z; 10 L2*TY_P_*LX_R; 9 L3*L3*LY_R; 39 L3*L4*L17
13 L3*L4*L21; 10 L3*L4*L24; 1 L3*L4*L34; 3 L3*L7*TX_P_
3 L3*L10*L34; 13 L3*L12*L27; 45 L3*L14*L14; 20 L3*L14*L19
12 L3*L14*L22; 12 L3*L14*L26; 15 L3*L14*DROP_OHQ_Z; 17 L3*L17*L32
94 L3*L18*L27; 16 L3*L19*L23; 10 L3*L19*L24; 4 L3*L27*DROP_OHP_ZQ
8 L3*L27*LY_R; 7 L3*-OHD*TX_P_; 8 L3*LY_R*LY_R; 2 L4*L4*L7
14 L4*L6*TY_P_; 5 L4*L8*TX_P_; 1 L4*L12*L29; 14 L4*L13*L24
50 L4*L16*L31; 12 L4*L19*TX_P_; 11 L4*L20*L27; 3 L4*L20*TY_P_
3 L4*L23*TX_P_; 20 L4*L24*LY_R; 9 L4*L27*TY_P_; 2 L4*L30*LY_R
1 L4*L36*C_OCF_YQ; 58 L4*TX_P_*LY_R; 11 L5*L6*L17; 17 L5*L17*L28
16 L6*L6*TY_P_; 7 L6*L8*L27; 1 L6*L9*L22; 4 L6*L9*L27
6 L6*L10*L30; 9 L6*L14*L23; 10 L6*L14*LY_R; 5 L6*L17*L27
5 L6*L18*L30; 11 L6*L20*L27; 7 L6*L22*TY_P_; 5 L6*L31*TY_P_
7 L6*L34*TY_P_; 8 L7*L20*LY_R; 1 L7*L23*TX_P_; 1 L7*L30*LY_R
3 L8*L10*L19; 31 L8*L12*L19; 5 L8*L21*L27; 15 L8*L22*L27
5 L8*L23*L24; 18 L8*L27*L30; 9 L8*L27*L31; 11 L8*L27*DROP_OCP_Y
7 L8*TY_P_*DROP_OHQ_Z; 23 L9*L12*L27; 29 L10*L10*L21; 4 L10*L11*C_OCF_YQ
9 L10*L12*L23; 20 L10*L12*L25; 3 L10*L12*L28; 6 L10*L16*L23
21 L10*L21*L24; 15 L10*L21*TX_P_; 29 L10*L22*L30; 3 L10*L24*L30
8 L10*L24*L35; 7 L10*L26*L31; 4 L10*L27*C_OCF_YQ; 5 L10*L29*DROP_OHP_ZQ
3 L10*L30*TY_P_; 13 L10*L34*DROP_OHQ_Z; 29 L10*L34*LX_R; 15 L10*L35*LX_R
10 L10*L36*DROP_OHP_ZQ; 2 L10*C_OCF_YQ*LY_R; 15 L10*DROP_OHQ_Z*LY_R; 18 L11*L14*L27
4 L11*L18*L27; 55 L12*L14*L19; 4 L12*L14*L27; 4 L12*L16*L28
16 L12*L18*L30; 2 L12*L27*L28; 14 L12*TY_P_*LX_R; 2 L13*L27*LX_R
44 L14*L14*L29; 1 L14*L16*L28; 15 L14*L17*L27; 3 L14*L22*L30
3 L15*L15*L20; 4 L16*L20*L23; 4 L16*L27*L31; 15 L17*L23*L27
3 L17*L24*+OCF; 4 L17*L30*LY_R; 9 L18*L20*LY_R; 37 L18*L24*L27
15 L18*L27*L27; 51 L18*L27*LY_R; 15 L19*L27*L27; 15 L19*L27*L30
4 L19*L27*L35; 9 L19*L27*TY_P_; 51 L19*L27*LY_R; 17 L20*L20*L27
22 L20*L30*LY_R; 3 L20*TY_P_*LY_R; 6 L21*L27*LY_R; 2 L22*L23*L24
18 L22*L24*L27; 12 L22*L25*L27; 2 L23*L27*DROP_OHQ_Z; 2 L24*L27*L30
2 L24*L27*L35; 105 L24*L27*DROP_OCR_YZQ; 12 L24*LY_R*LY_R; 6 L25*L27*-OHD
20 L27*L27*DROP_OHP_ZQ; 12 L27*L28*L31; 4 L27*L30*L34; 2 L27*L32*LX_R
18 L27*L35*L36; 56 L27*C_OCF_YQ*DROP_OCP_Y; 17 L27*DROP_OCP_Y*LX_R; 9 L27*TY_P_*TY_P_
94 L27*LX_R*LY_R; 42 KLOW*TY_P_; 9 CENT*L6; 16 CENT*L20
1 CENT*L34; 2 CENT*DROP_OCP_Y; 1 CENT*TY_P_; 19 CENT*DROP_OCR_YZQ
2 -HYZ*L0; 1 -HYZ*LX_R; 28 +OCY*L27; 24 +CDY*L27
4 +CDP*L7; 40 +CDP*L27; 1 +CDP*L34; 133 +CDP*-OHD
88 +CDP*C_OCF_YQ; 40 +CDP*DROP_OHQ_Z; 87 +CDP*LY_R; 16 -DFP*L4
17 -DFP*L6; 21 -DFP*L12; 12 -DFP*L23; 25 -DFP*L33
12 -DFP*C_OCF_YQ; 1 -DFP*TX_P_; 16 -DFP*DROP_OHQ_Z; 9 -DFP*DROP_OCR_YZQ
22 -DFP*LY_R; 5 +HCQ*L2; 26 +HCQ*L17; 16 +HCQ*L18
2 +DFQ*L12; 22 -CYQ*L10; 21 +HFR*L0; 29 +HFR*L4
45 +HFR*L18; 17 +HFR*L30; 2 +HFR*L35; 8 +HFR*DROP_OHQ_Z
108 +HFR*DROP_OCR_YZQ; 10 +HZR*L10; 10 +HZR*L12; 12 +HZR*L14
5 +HZR*L31; 6 +OPQ*L10; 39 +OPQ*L12; 14 -FPR*L12
42 -CYZ*L22; 33 -CYZ*L24; 26 -CYZ*DROP_OHP_ZQ; 4 -OZQ*L5
16 -OZQ*L13; 53 -OZQ*L21; 1 -OZQ*L23; 27 -OZQ*L26
15 -OZQ*L31; 12 -OZQ*L34; 71 -OZQ*DROP_OHP_ZQ; 55 -OZQ*DROP_OCP_Y
1 -OZQ*TX_P_; 14 +OZR*L0; 41 +OZR*L8; 37 +OZR*L9
10 +OZR*L21; 63 +OZR*L22; 10 +OZR*L30; 14 +OZR*L31
18 +OZR*L35; 10 +OZR*DROP_OHP_ZQ; 22 -HPQ*L20; 20 -CQR*L11
24 -CQR*L13; 32 -CQR*L14; 7 -CQR*L30; 25 -CQR*-OHD
17 -CQR*+OCF; 17 -HDQ*L3; 3 -HDQ*L4; 16 -HDQ*L19
2 -HDQ*L33; 57 -HDQ*DROP_OHP_ZQ; 3 -ODY*L10; 45 -ODY*L16
7 -ODY*L20; 1 +OFZ*L6; 6 +OFZ*L8; 45 +OFZ*L18
14 +OFZ*L19; 5 -OFQ*L15; 12 -OFQ*L30; 20 -OFQ*L34
5 -OFQ*L35; 27 -OFQ*DROP_OHQ_Z; 27 -OFQ*LY_R; 16 -DZQ*L6
11 -FYQ*L24; 9 -FYQ*L31; 27 -FYQ*L34; 5 +ZPQ*L6
57 +ZPQ*L12; 110 +ZPQ*L19; 41 +ZPQ*L30; 26 +ZPQ*L31
18 +ZPQ*-OHD; 110 +ZPQ*DROP_OCP_Y; 26 +ZPQ*DROP_OHQ_Z; 15 +ZPQ*LY_R
2 +HQR*LY_R; 20 +DPR*L27; 55 +FZQ*L18; 27 +FZQ*L21
4 +FZQ*L28; 11 +FZQ*L34; 9 +FZQ*+OCF; 1 +FZQ*TX_P_
16 -FPQ*L1; 10 -FPQ*L4; 11 +YQR*L6; 3 +YQR*L10
10 +YQR*L12; 4 +YQR*L22; 30 +YQR*L34; 9 +YQR*L35
10 +YQR*L36; 17 +YQR*C_OCF_YQ; 65 C_OHP_ZQ*L4; 12 C_OCD_Y*L27
26 C_OFP_Q*L14; 22 C_HCR_Q*L1; 7 C_HCR_Q*L3; 29 C_HZP_Q*L20
55 C_FZP_Q*L14; 58 TPY_P_*L2; 8 TPY_P_*L12; 2 TPY_P_*L36
14 SP_OCDH_YQ_OD-1*L27; 8 SP_OCFH_ZQ_OF1*L27; 9 Q_OCRH_YZQ*TY_P_; 2 Q_OQRH_Z*L18
9 Q_OQRH_Z*L35; 17 Q_OQRH_Z*DROP_OHQ_Z; 5 SP_OYFR_ZQ_OF-1*L17; 1 SP_OYFR_ZQ_YR-1*L0
5 SP_OYFR_ZQ_YR-1*L22; 2 SP_OYFR_ZQ_YR-1*L34; 14 Q_OQFR_Z*L27; 2 Q_OQFR_Z*TY_P_
8 Q_OYQR_Z*L27; 3 Q_HZPF_Q*L10; 1 Q_DPFZ_Q*L17; 10 M_RCOYQZ_1_3*L16
1 M_RCOYQZ_1_3*L23; 10 M_RCOYQZ_1_3*L24; 26 M_RCOYQZ_1_3*L27; 5 M_RCOYQZ_1_3*TX_P_
2 M_RCOYQZ_1_4*L14; 22 LEFTSUP
```

Upper bound: `-7114227417/91000000000`.

### Leaf TULmpmmpmmmmpmmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR -HDQ -ODY +OFZ -OFQ -DZQ +FYQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOHQR -DQR
P DOFPR +DPR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
M OCRQYZ -1
M ORCQZY 1
M CORZYQ 1
M CROZQY -1
M ROCYZQ -1
M RCOYQZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OCR YZQ 1 lower 823/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 4173/5000
f 4379/10000 8711/10000
u 197/625 7899/10000
v 93/1000 513/1000
z 21/200 5797/10000
w 279/1000 699/1000
p 7841/10000 1
q 1111/2500 1
l 197/625 907/1000
m 279/1000 907/1000
r 21/200 371/625
t 8433/10000 1
```

```c1top-sum
3 L0*L7*L27; 4 L0*L10*L30; 27 L0*L11*L27; 1 L0*L19*L24
2 L0*L20*L27; 15 L0*L22*LX_R; 1 L0*L24*L32; 3 L0*L24*LY_R
6 L1*L1*L3; 9 L1*L2*L8; 4 L1*L3*DROP_OCR_YZQ; 1 L1*L7*L28
1 L1*L8*-OHD; 15 L1*L8*C_OCF_YQ; 1 L1*L10*L19; 1 L1*L10*L28
10 L1*L10*LX_R; 1 L1*L11*L12; 3 L1*L12*L24; 7 L1*L12*+OCF
23 L1*L17*DROP_OHQ_Z; 2 L1*L24*L25; 20 L1*L24*TY_P_; 27 L1*L27*L35
3 L1*L27*LX_R; 1 L1*L28*L29; 1 L2*L3*L14; 1 L2*L4*L27
5 L2*L24*LY_R; 20 L2*L28*TY_P_; 2 L2*C_OCF_YQ*TY_P_; 14 L2*TY_P_*DROP_OHQ_Z
6 L3*L4*L5; 4 L3*L4*L6; 13 L3*L4*L10; 4 L3*L4*TX_P_
1 L3*L8*L19; 30 L3*L8*LY_R; 14 L3*L10*L19; 12 L3*L10*L25
3 L3*L12*DROP_OCR_YZQ; 1 L3*L14*L14; 3 L3*L15*LY_R; 9 L3*L16*L19
20 L3*L16*L22; 18 L3*L16*DROP_OCR_YZQ; 18 L3*L18*L27; 6 L3*L19*L19
34 L3*L19*L20; 10 L3*L19*L23; 6 L3*L19*-OHD; 6 L3*L19*LY_R
11 L3*L21*LY_R; 4 L3*L23*L24; 12 L3*L27*DROP_OHP_ZQ; 1 L4*L4*L35
2 L4*L5*L12; 1 L4*L6*L9; 7 L4*L6*TY_P_; 3 L4*L9*L22
1 L4*L10*L35; 2 L4*L12*L28; 4 L4*L14*TX_P_; 8 L4*L16*L19
7 L4*L18*L35; 8 L4*L21*L24; 3 L5*L6*L10; 1 L5*L8*L16
15 L5*L8*L19; 2 L5*L8*L20; 7 L5*L10*L19; 1 L5*L10*L28
17 L5*L17*L28; 2 L5*L17*TY_P_; 6 L5*L27*L27; 3 L5*L27*L31
3 L6*L6*LY_R; 13 L6*L8*TY_P_; 5 L6*L12*TY_P_; 3 L6*L15*DROP_OCP_Y
1 L6*L15*LX_R; 4 L6*L18*L34; 11 L6*L27*L30; 4 L6*L31*L34
4 L6*L34*L36; 10 L6*L34*TY_P_; 2 L7*L8*L23; 13 L7*L10*L16
7 L7*L10*L31; 31 L7*L10*DROP_OCR_YZQ; 11 L7*L12*LY_R; 2 L7*L14*L14
1 L7*L14*L28; 1 L7*L19*TX_P_; 1 L7*L27*TX_P_; 1 L8*L16*L19
6 L8*L17*L27; 1 L8*L17*L34; 13 L8*L19*DROP_OHQ_Z; 45 L8*L22*L27
3 L8*L27*L29; 9 L8*L27*L33; 42 L8*L27*DROP_OCP_Y; 1 L8*L28*L28
9 L8*L30*DROP_OCP_Y; 9 L8*L31*TY_P_; 7 L8*TY_P_*LX_R; 3 L9*L14*L14
7 L9*L27*DROP_OHQ_Z; 1 L10*L11*TY_P_; 10 L10*L12*L19; 1 L10*L16*TX_P_
1 L10*L19*L32; 8 L10*L21*TY_P_; 13 L10*L29*DROP_OHQ_Z; 3 L10*L30*L34
10 L10*L31*TY_P_; 1 L10*L31*DROP_OCR_YZQ; 13 L10*TX_P_*DROP_OHQ_Z; 31 L10*TX_P_*DROP_OCR_YZQ
20 L11*L12*L20; 11 L11*L12*L27; 7 L11*L14*L24; 17 L11*L27*DROP_OHQ_Z
3 L12*L14*L25; 7 L12*L14*L28; 4 L12*L15*L24; 3 L12*L19*DROP_OCP_Y
7 L12*L20*L27; 24 L12*L22*L27; 15 L12*L23*TY_P_; 2 L12*L27*TY_P_
3 L12*TY_P_*TY_P_; 2 L13*L14*L17; 2 L14*L17*L28; 2 L14*L17*LY_R
12 L14*L20*TY_P_; 3 L14*L22*TX_P_; 7 L14*L24*L35; 1 L14*L24*TX_P_
18 L14*L24*TY_P_; 5 L14*L26*TX_P_; 4 L14*L27*DROP_OHP_ZQ; 4 L14*L28*L30
6 L14*L29*TX_P_; 2 L14*L30*TX_P_; 4 L14*L30*LY_R; 1 L16*L26*L30
3 L16*L27*DROP_OHP_ZQ; 4 L17*L17*L25; 1 L17*L22*L27; 1 L17*L23*LY_R
5 L17*L27*L32; 3 L17*L27*TX_P_; 5 L18*L20*LX_R; 6 L18*L27*L27
11 L18*L27*DROP_OHQ_Z; 1 L19*L20*LY_R; 1 L19*L24*L28; 10 L20*L27*L29
11 L20*L30*LY_R; 14 L21*L27*TX_P_; 10 L21*L27*TY_P_; 11 L22*L24*L27
18 L22*L30*LX_R; 3 L22*L31*TY_P_; 2 L24*L27*L29; 3 L24*L27*+OCF
7 L26*L30*L30; 11 L27*L27*DROP_OHQ_Z; 1 L27*L30*L32; 9 L27*DROP_OHP_ZQ*DROP_OHQ_Z
6 L27*TY_P_*DROP_OCR_YZQ; 7 L30*L31*LY_R; 16 L30*TY_P_*LY_R; 1 CENT*L15
20 CENT*L20; 12 CENT*L25; 1 CENT*TX_P_; 2 QUADP*L27
3 +OYZ*L17; 7 -HYZ*L20; 7 -HYZ*L35; 2 -HYZ*DROP_OCP_Y
14 -HYZ*TY_P_; 20 -HYZ*DROP_OCR_YZQ; 4 -HYZ*LX_R; 26 +CDP*L5
37 +CDP*L8; 28 +CDP*L9; 25 +CDP*L14; 9 +CDP*L16
6 +CDP*L19; 7 +CDP*L23; 2 +CDP*L29; 20 +CDP*L34
22 +CDP*DROP_OHQ_Z; 33 +CDP*DROP_OCR_YZQ; 7 -DFP*L4; 13 -DFP*L30
11 -DFP*-OHD; 2 -DFP*C_OCF_YQ; 16 -DFP*DROP_OHQ_Z; 14 -DFP*LY_R
26 -DYP*L27; 10 +FZP*L10; 4 +HCQ*DROP_OCR_YZQ; 5 +HCQ*LX_R
9 +HYQ*L27; 26 -CYQ*L6; 3 +HFR*L7; 9 +HFR*L11
2 +HFR*L12; 2 +HFR*L16; 15 +HFR*L22; 2 +HFR*L25
2 +HFR*-OHD; 14 +HFR*TY_P_; 5 +HFR*DROP_OHQ_Z; 1 +HZR*L2
8 +HZR*L14; 2 +HZR*L17; 15 +OPQ*L14; 5 +OPQ*L25
12 +OPQ*L27; 7 +OPQ*L28; 18 +OPQ*L34; 19 +OPQ*L35
24 +OPQ*C_OCF_YQ; 24 +OPQ*LY_R; 3 -FPR*L0; 7 -FPR*L8
9 -FPR*L12; 1 -CYZ*L18; 5 -CYZ*TY_P_; 1 -CYZ*DROP_OCR_YZQ
7 -OZQ*L7; 11 -OZQ*L17; 42 -OZQ*L24; 16 -OZQ*TX_P_
20 +OZR*L1; 5 +OZR*L14; 24 +OZR*L22; 3 +OZR*L27
11 +OZR*L29; 14 +OZR*L32; 9 +OZR*L36; 32 +OZR*-OHD
4 +OZR*DROP_OHP_ZQ; 18 +OZR*TY_P_; 34 +OZR*DROP_OHQ_Z; 10 -CQR*L5
35 -CQR*L8; 50 -CQR*L24; 50 -CQR*L25; 1 -CQR*L31
6 -CQR*DROP_OHP_ZQ; 11 -CQR*DROP_OCR_YZQ; 11 -HDQ*L3; 23 -HDQ*L16
1 -ODY*L3; 1 -ODY*L6; 29 -ODY*L16; 8 -ODY*L19
4 -ODY*L21; 16 -ODY*L23; 9 -ODY*L35; 45 -ODY*DROP_OCR_YZQ
7 -ODY*LX_R; 15 +OFZ*L7; 3 +OFZ*L8; 22 +OFZ*L11
6 +OFZ*L18; 6 +OFZ*L22; 5 +OFZ*L28; 4 +OFZ*L33
1 +OFZ*L36; 4 +OFZ*+OCF; 5 +OFZ*DROP_OHP_ZQ; 9 +OFZ*DROP_OCP_Y
2 +OFZ*TY_P_; 7 +OFZ*DROP_OHQ_Z; 23 +OFZ*DROP_OCR_YZQ; 10 +OFZ*LX_R
2 -OFQ*L12; 6 -DZQ*L1; 8 -DZQ*L6; 3 -DZQ*L14
21 -DZQ*L17; 7 -DZQ*L32; 16 -DZQ*DROP_OHP_ZQ; 7 -DZQ*DROP_OCP_Y
8 -DZQ*LX_R; 7 +FYQ*L9; 13 +FYQ*L13; 3 +FYQ*L14
47 +FYQ*L17; 1 +FYQ*-OHD; 34 +FYQ*C_OCF_YQ; 60 +FYQ*DROP_OHP_ZQ
25 +FYQ*DROP_OCP_Y; 71 +FYQ*DROP_OCR_YZQ; 16 +HQR*L30; 1 +HPR*L12
2 +DPQ*L2; 6 +DPQ*L8; 8 +DPR*L12; 17 +FZQ*L27
17 -YZQ*L27; 1 -YZR*L1; 7 +YPQ*L10; 5 C_OCZ_Y*L17
1 C_OCZ_Y*L19; 8 C_OCR_YZQ*L27; 4 C_OPR_ZQ*L4; 3 C_CZR_Q*L27
9 C_FYP_Q*L12; 3 TPY_P_*L10; 7 SP_OCFH_ZQ_CH-1*L27; 6 Q_OCRH_YZQ*TY_P_
3 Q_OQFH_Z*L27; 1 Q_OFRH_Z*L6; 14 Q_OCPQ_Y*L27; 3 Q_OYPF_Q*L10
9 Q_OPFZ_Q*L10; 1 Q_HZCR_Q*L3; 2 Q_HZDP_Q*L6; 1 Q_FZYP_Q*L16
2 M_RCOYQZ_1_1*L30; 18 M_RCOYQZ_1_2*TY_P_; 3 M_RCOYQZ_1_3*L14; 7 M_RCOYQZ_1_3*L35
7 M_RCOYQZ_1_3*DROP_OCP_Y; 15 M_RCOYQZ_1_3*TY_P_; 1 M_RCOYQZ_1_4*L16
```

Upper bound: `-36973318349/18200000000000`.

### Leaf TULmpmmpmmmmpmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR -HDQ -ODY +OFZ -OFQ +DZQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOHQR -DQR
P DOFPR +DPR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ -ZPQ
P POHYQ -PYQ
P POHQR -PQR
M OCRQYZ -1
M ORCQZY 1
M CORZYQ 1
M CROZQY -1
M ROCYZQ -1
M RCOYQZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OCR YZQ 1 lower 823/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
13 L0*L0*L3; 8 L0*L8*LY_R; 30 L0*L9*L34; 11 L0*L9*TY_P_
1 L0*L21*L22; 37 L0*L24*L27; 6 L0*L24*L30; 141 L0*L26*L27
1 L0*L30*L30; 24 L0*TX_P_*LY_R; 24 L0*TY_P_*DROP_OHQ_Z; 10 L1*L3*LX_R
3 L1*L4*L20; 11 L1*L6*L27; 2 L1*L8*L17; 2 L1*L8*L19
15 L1*L8*L22; 29 L1*L10*L20; 8 L1*L10*L35; 10 L1*L12*L19
7 L1*L12*L22; 5 L1*L14*L20; 2 L1*L16*L35; 17 L1*L17*L20
24 L1*L17*L28; 3 L1*L19*L19; 1 L1*L19*DROP_OHP_ZQ; 25 L1*L22*DROP_OHP_ZQ
12 L1*L24*DROP_OHP_ZQ; 3 L1*L25*L28; 141 L1*L27*DROP_OCR_YZQ; 8 L1*L30*L31
29 L1*L30*LY_R; 6 L1*TX_P_*TX_P_; 29 L2*L5*TY_P_; 68 L2*L6*TY_P_
11 L2*L14*L17; 34 L2*L14*L28; 8 L2*L14*LY_R; 2 L2*L17*TY_P_
16 L2*L20*L28; 66 L2*L20*TY_P_; 22 L2*L22*L27; 17 L2*L22*TY_P_
24 L2*L24*LY_R; 2 L2*L27*L28; 23 L2*L34*TY_P_; 3 L3*L4*L5
1 L3*L4*L23; 11 L3*L4*LY_R; 8 L3*L5*L22; 4 L3*L7*L7
4 L3*L7*L27; 4 L3*L8*L15; 2 L3*L8*L17; 4 L3*L10*L11
58 L3*L10*L12; 10 L3*L10*DROP_OHQ_Z; 2 L3*L12*L27; 28 L3*L12*L32
15 L3*L14*L22; 6 L3*L15*L30; 22 L3*L15*DROP_OHP_ZQ; 5 L3*L18*L27
34 L3*L18*L34; 23 L3*L18*LY_R; 3 L3*L19*L19; 5 L3*L20*L22
21 L3*L20*LY_R; 3 L3*L22*L30; 13 L3*L23*L34; 4 L3*L23*TX_P_
6 L3*L23*LY_R; 33 L3*L34*DROP_OHQ_Z; 3 L3*L35*LY_R; 11 L3*TX_P_*DROP_OCR_YZQ
8 L4*L6*L28; 9 L4*L9*L24; 66 L4*L12*L27; 6 L4*L12*L30
10 L4*L23*L24; 4 L4*L35*DROP_OHP_ZQ; 7 L5*L14*L17; 14 L5*L17*L17
24 L5*L17*L28; 25 L5*L17*L30; 19 L5*L17*L31; 12 L5*L17*+OCF
116 L5*L17*DROP_OHQ_Z; 10 L5*L20*L27; 5 L5*L20*DROP_OHQ_Z; 8 L5*L25*L30
1 L5*L29*L30; 6 L6*L14*L34; 11 L6*L17*L28; 7 L6*L20*L27
113 L6*L20*TY_P_; 3 L6*L24*L32; 6 L6*L27*L29; 10 L6*L27*+OCF
2 L6*L31*L36; 7 L6*L31*LY_R; 30 L6*L33*TY_P_; 2 L6*L34*TY_P_
4 L7*L11*L27; 5 L7*L17*L22; 2 L7*L27*DROP_OCP_Y; 1 L7*DROP_OHP_ZQ*LY_R
2 L8*L8*L17; 3 L8*L8*L19; 8 L8*L9*L12; 2 L8*L10*L17
16 L8*L27*LY_R; 3 L9*L9*L18; 15 L9*L9*L34; 1 L9*L10*L22
2 L9*L12*L16; 2 L9*L12*L19; 13 L9*L12*L28; 2 L9*L19*LY_R
16 L9*L22*L34; 8 L9*L27*L35; 2 L9*L36*TX_P_; 8 L10*L10*L13
8 L10*L10*L36; 25 L10*L12*L27; 2 L10*L17*L28; 1 L10*L18*L21
14 L10*L20*L34; 1 L10*L24*L28; 28 L10*L24*LY_R; 8 L10*L30*LY_R
8 L10*L34*L35; 7 L11*L17*L24; 16 L12*L19*L22; 33 L12*L19*DROP_OHQ_Z
13 L12*L23*TY_P_; 2 L12*L24*L34; 30 L12*L27*L32; 39 L12*L27*DROP_OHP_ZQ
4 L12*L27*DROP_OCR_YZQ; 4 L12*L31*TY_P_; 8 L12*L35*L35; 21 L12*L35*LY_R
5 L13*L19*L24; 4 L13*L27*LX_R; 2 L14*L19*L19; 6 L14*L20*L27
13 L14*L20*TY_P_; 8 L14*L24*L25; 2 L14*L24*L32; 27 L14*L27*L31
4 L14*L27*LX_R; 13 L15*L17*L20; 6 L16*L17*LY_R; 9 L16*L27*L28
7 L16*L27*L30; 6 L16*L27*L34; 2 L16*L31*L35; 45 L17*L20*L22
15 L17*L22*L30; 2 L17*L22*L31; 1 L17*L22*L32; 16 L17*L22*L34
5 L17*L22*TY_P_; 27 L17*L27*L27; 6 L17*L27*DROP_OHP_ZQ; 5 L17*L27*DROP_OHQ_Z
1 L17*L34*TY_P_; 17 L17*L34*DROP_OHQ_Z; 4 L17*TY_P_*DROP_OHQ_Z; 2 L18*L18*L34
10 L18*L24*LY_R; 5 L19*L19*L20; 1 L19*L19*L30; 2 L19*L20*L28
4 L19*L21*TX_P_; 19 L19*L22*L27; 38 L19*L27*+OCF; 41 L19*L27*DROP_OHQ_Z
51 L20*L28*L30; 13 L20*L30*TY_P_; 1 L20*L32*TY_P_; 45 L20*TY_P_*DROP_OHQ_Z
13 L20*LY_R*LY_R; 75 L21*L27*DROP_OCP_Y; 2 L21*L34*L35; 13 L22*L24*L27
6 L22*L27*L33; 19 L22*L27*DROP_OCP_Y; 3 L23*L24*L31; 3 L23*L24*L32
5 L23*L24*TX_P_; 12 L24*L27*L30; 28 L24*L27*TY_P_; 12 L24*L35*DROP_OCR_YZQ
8 L24*L36*TY_P_; 2 L27*L30*TY_P_; 15 L27*L31*-OHD; 5 L27*L34*C_OCF_YQ
116 L27*DROP_OCP_Y*DROP_OHQ_Z; 28 L27*TY_P_*LX_R; 2 L30*L34*LX_R; 1 L31*TY_P_*TY_P_
3 L35*DROP_OHQ_Z*LY_R; 17 TX_P_*DROP_OCR_YZQ*LY_R; 6 CENT*L14; 38 CENT*L21
41 CENT*L22; 63 CENT*L25; 6 CENT*L36; 11 CENT*TY_P_
6 CENT*LY_R; 47 -HYZ*L4; 8 -HYZ*L10; 1 -HYZ*L17
47 -HYZ*L28; 24 -HYZ*L31; 16 -HYZ*L33; 1 -HYZ*LX_R
31 -HYZ*LY_R; 2 +CDY*TY_P_; 1 -OHZ*L29; 2 -HCZ*L6
51 -HCZ*L10; 41 +CDP*L1; 17 +CDP*L12; 2 +CDP*L17
2 +CDP*L19; 61 +CDP*L21; 37 +CDP*L22; 32 +CDP*L28
3 +CDP*L32; 127 +CDP*DROP_OHQ_Z; 31 +CDP*DROP_OCR_YZQ; 8 -DFP*L4
2 -DFP*L18; 30 -DFP*L33; 114 -DFP*DROP_OHQ_Z; 2 +FZP*L27
18 +HCQ*L9; 40 +HCQ*L13; 46 +HCQ*L14; 5 +HCQ*L20
20 +HCQ*L27; 17 +HCQ*-OHD; 19 +HCQ*TY_P_; 29 +HCQ*LY_R
27 -CYQ*L34; 8 -CYQ*L35; 5 +HZQ*L21; 1 +HZQ*L22
3 -OHR*LX_R; 3 -OHR*LY_R; 29 +HFR*L0; 23 +HFR*L4
6 +HFR*L7; 10 +HFR*L8; 1 +HFR*L16; 6 +HFR*L22
10 +HFR*L28; 6 +HFR*L33; 6 +HFR*TY_P_; 43 +HFR*DROP_OCR_YZQ
39 +HZR*L1; 3 +HZR*L14; 1 +HZR*L19; 7 +HZR*L23
3 +HZR*L24; 3 +HZR*L36; 28 +HZR*+OCF; 19 +OPQ*L4
5 +OPQ*L7; 25 +OPQ*L10; 61 +OPQ*L13; 44 +OPQ*L19
4 +OPQ*L25; 13 +OPQ*L30; 26 +OPQ*L32; 16 +OPQ*L34
47 +OPQ*DROP_OCP_Y; 45 +OPQ*DROP_OHQ_Z; 8 -FPR*L5; 10 -FPR*L27
27 -CYZ*L8; 24 -CYZ*L10; 65 -CYZ*L21; 36 -CYZ*L22
15 -CYZ*-OHD; 42 -OZQ*L10; 45 -OZQ*L20; 68 +OZR*L4
8 +OZR*L9; 46 +OZR*L14; 23 +OZR*L24; 35 +OZR*L31
21 +OZR*L32; 46 +OZR*L34; 34 +OZR*TX_P_; 27 +OZR*DROP_OHQ_Z
34 +OZR*LX_R; 10 -CQR*L4; 4 -CQR*L7; 11 -CQR*L9
18 -CQR*L13; 1 -CQR*L19; 6 -CQR*L24; 29 -CQR*L25
15 -CQR*L34; 15 -CQR*-OHD; 9 -CQR*LY_R; 9 -ODY*L12
4 +OFZ*L2; 1 +DZQ*L7; 64 +DZQ*L8; 60 +DZQ*L16
63 +DZQ*L19; 1 +DZQ*L23; 16 +DZQ*L33; 47 +DZQ*-OHD
93 +DZQ*DROP_OCP_Y; 50 +DZQ*DROP_OHQ_Z; 4 -OFY*L27; 3 +HPR*L30
1 +DPR*L8; 7 +DPR*L34; 2 +FZQ*L30; 6 +FZQ*LY_R
3 -YZQ*L3; 27 -YZQ*L24; 1 -YZQ*TX_P_; 13 -ZPQ*L5
1 -ZPQ*L19; 2 +YPQ*L12; 4 +YPQ*L24; 1 +YQR*L4
36 +YQR*L9; 18 +YQR*L13; 7 +YQR*L15; 3 +YQR*L17
21 +YQR*L29; 27 +YQR*L30; 16 +YQR*-OHD; 24 +YQR*LX_R
20 C_ODZ_Q*L17; 1 C_OFP_Q*L12; 6 C_OFP_Q*LY_R; 2 C_OFR_Z*TY_P_
27 C_OZP_Q*L20; 47 C_HCR_Q*L30; 11 C_CYR_Q*L0; 4 C_CYR_Q*L22
7 C_DYZ_Q*L12; 11 TPX_P_*L17; 14 TPX_P_*L27; 2 TPY_P_*L19
2 TPY_P_*L34; 67 TPY_P_*C_OCF_YQ; 21 SP_OCDH_YQ_CH-1*L27; 25 Q_OCRH_YZQ*L14
12 Q_OFRH_Z*TY_P_; 3 SP_OCDZ_YQ_OD1*L12; 1 SP_OCDZ_YQ_OD1*L22; 2 Q_OQFR_Z*L12
9 Q_HZCR_Q*L27; 11 Q_HZCR_Q*DROP_OHP_ZQ; 26 Q_HZYD_Q*L12; 2 Q_HZYD_Q*L27
16 Q_CFRY_Q*L27; 18 Q_CRZY_Q*L35; 12 M_RCOYQZ_1_2*TY_P_; 18 M_RCOYQZ_1_3*L12
7 M_RCOYQZ_1_4*L10; 2 M_RCOYQZ_1_4*L17; 4 M_RCOYQZ_1_4*L27
```

Upper bound: `-36847085649/13000000000`.

### Leaf TULmpmmpmmmmpp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR -HDQ -ODY +OFZ +OFQ`.

```c1top-geometry
C OHF ZQ Y +FOY 72039/90700
P OHDFZ +ODZ
P OHDFQ +ODQ
P OHDYQ +OYQ
P OHDYR +OYR
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOHQR -DQR
P DOFPR +DPR
P FOHYZ -FYZ
P FOHYQ -FYQ
P FOHPQ -FPQ
P FOHQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ +YPQ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHQR -PQR
```

```c1top-bounds
```

Exclusion: `central_endpoint_top OF R ZQ`.

### Leaf TULmpmmpmmmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR -HDQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHPQ +DPQ
P DOHQR -DQR
P DOFPR +DPR
P FHCPQ -FPQ
P FHCQR -FQR
P YOHDQ +YDQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOCDZ +YDZ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
C ODZ Y Q -DZQ 101661/147500
M OHDQZY 1
M ODHQYZ -1
M HODYZQ -1
M HDOYQZ 1
M DOHZYQ 1
M DHOZQY -1
M OCRQYZ -1
M ORCQZY 1
M CORZYQ 1
M CROZQY -1
M ROCYZQ -1
M RCOYQZ 1
M ODRQYZ -1
M ORDQZY 1
M DORZYQ 1
M DROZQY -1
M RODYZQ -1
M RDOYQZ 1
```

```c1top-bounds
T OHD YZQ 0 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OCR YZQ 1 lower 823/1000
```

```c1top-box
h 823/1000 177/200
c 823/1000 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
2 L7*LY_R; 7 L0*L0*L30; 1 L0*L3*L20; 9 L0*L9*L30
4 L0*L12*TX_P_; 80 L0*L12*LY_R; 20 L0*L21*LY_R; 8 L0*L29*L35
83 L1*L2*L22; 118 L1*L2*L27; 2 L1*L3*L28; 56 L1*L3*LY_R
29 L1*L4*L12; 38 L1*L4*DROP_OHP_ZQ; 26 L1*L7*L28; 24 L1*L8*L10
51 L1*L11*L17; 24 L1*L11*L30; 51 L1*L11*TX_P_; 31 L1*L12*L30
32 L1*L17*L18; 3 L1*L17*L36; 9 L1*L20*L30; 20 L1*L20*L32
1 L1*L20*TX_P_; 1 L1*L20*LX_R; 68 L1*L24*LY_R; 198 L1*L27*DROP_OCR_YZQ
17 L1*L30*TY_P_; 2 L2*L4*L34; 72 L2*L8*L27; 205 L2*L10*L30
11 L2*L24*L27; 43 L2*L27*L33; 1 L3*L4*L6; 10 L3*L4*L10
10 L3*L4*L16; 84 L3*L4*L30; 6 L3*L8*L14; 34 L3*L8*L19
13 L3*L10*L19; 16 L3*L10*L27; 68 L3*L11*L30; 1 L3*L12*L12
7 L3*L14*L14; 5 L3*L14*L30; 3 L3*L17*TY_P_; 41 L3*L18*L27
1 L3*L19*L19; 15 L3*L19*L21; 3 L3*L19*L22; 32 L3*L19*L29
2 L3*L19*L30; 11 L3*L19*L31; 23 L3*L19*DROP_OCR_YZQ; 15 L3*L22*L24
86 L3*L22*LY_R; 67 L3*L27*L34; 16 L3*L27*DROP_OHQ_Z; 249 L4*L8*L30
56 L4*L11*L27; 19 L4*L12*L27; 37 L4*L12*L31; 15 L4*L17*DROP_OHQ_Z
11 L4*L23*L24; 141 L4*L27*DROP_OHQ_Z; 5 L4*L31*TX_P_; 1 L4*L33*TX_P_
9 L4*TX_P_*LX_R; 2 L5*L19*L20; 55 L5*L27*DROP_OHP_ZQ; 8 L6*L6*L27
5 L6*L17*TY_P_; 11 L6*L25*L27; 2 L6*L27*L30; 21 L6*L27*DROP_OCR_YZQ
9 L7*L24*DROP_OCR_YZQ; 19 L8*L8*L23; 57 L8*L12*L27; 1 L8*L12*TY_P_
54 L8*L13*L27; 20 L8*L14*L23; 15 L8*L19*LY_R; 1 L8*DROP_OHP_ZQ*TY_P_
5 L8*TX_P_*DROP_OCR_YZQ; 2 L9*L10*L22; 5 L9*L17*L27; 2 L9*L19*L34
3 L10*L16*L21; 113 L10*L18*L27; 39 L10*L20*L30; 3 L11*L17*L23
5 L11*L17*L35; 57 L11*L18*L27; 148 L11*L27*DROP_OCR_YZQ; 13 L12*L14*L25
12 L12*L14*L35; 78 L12*L18*L27; 9 L12*L21*LY_R; 98 L12*L22*L27
18 L13*L27*L30; 44 L14*L24*L27; 1 L14*L29*TY_P_; 1 L16*L16*L35
156 L16*L27*LY_R; 33 L16*DROP_OHQ_Z*LY_R; 1 L17*L17*L30; 7 L17*L17*LY_R
1 L17*L19*L28; 3 L17*L21*L24; 33 L17*L22*L24; 3 L17*L22*L35
3 L17*L24*DROP_OHQ_Z; 16 L17*L26*TX_P_; 5 L17*L28*L29; 3 L17*L29*DROP_OCR_YZQ
9 L18*L24*L29; 33 L18*TX_P_*LY_R; 1 L19*L20*DROP_OHP_ZQ; 22 L19*L25*L27
26 L19*L27*LX_R; 1 L19*L35*L36; 3 L19*C_OCF_Y*TX_P_; 12 L20*L36*LY_R
5 L21*L27*L30; 92 L22*L27*C_OCF_Y; 10 L23*L24*L30; 51 L23*L25*L27
19 L23*L30*L30; 6 L24*L27*DROP_OHQ_Z; 48 L24*TY_P_*LY_R; 198 L26*L27*-OHD
148 L27*L27*L35; 51 L27*L27*DROP_OHQ_Z; 40 L27*L30*TY_P_; 44 L27*L30*LY_R
192 L27*L31*DROP_OCR_YZQ; 55 L27*L34*DROP_OHQ_Z; 56 L27*L35*TY_P_; 72 L27*-OHD*DROP_OHQ_Z
39 L27*C_OCF_Y*DROP_OHP_ZQ; 33 L27*DROP_OHP_ZQ*TY_P_; 7 L28*L29*LY_R; 6 L29*L34*LY_R
1 L29*L36*L36; 13 L29*L36*LY_R; 31 L30*L30*LY_R; 48 L30*L31*LY_R
54 L30*C_OCF_Y*LY_R; 7 L31*L34*L34; 7 -OHD*TX_P_*TX_P_; 9 TX_P_*TX_P_*DROP_OCR_YZQ
156 TX_P_*DROP_OCR_YZQ*LY_R; 8 CENT*L25; 215 +OYZ*L8; 84 +OYZ*L30
59 -HYZ*L12; 12 -HYZ*L14; 5 -HYZ*L21; 20 -HYZ*L23
154 -HYZ*L30; 188 -HYZ*L31; 145 -HYZ*C_OCF_Y; 2 +CDY*L0
29 +OCP*L27; 27 -HFP*L3; 9 -HFP*L7; 26 +CDP*L12
3 +CDP*L14; 15 +CDP*L21; 26 +CDP*L22; 23 +CDP*L26
26 +CDP*L30; 43 +CDP*+OCF; 38 +CDP*LY_R; 1 -DFP*L15
4 -DFP*L21; 4 -DFP*DROP_OHQ_Z; 26 -DFP*DROP_OCR_YZQ; 9 -DFP*LX_R
4 -OFP*L17; 23 +HCQ*L18; 8 +HCQ*L25; 15 +HCQ*L28
52 +HCQ*L30; 21 +HCQ*L33; 15 +HCQ*+OCF; 34 +HCQ*DROP_OHP_ZQ
405 +HCQ*DROP_OCR_YZQ; 7 +CDQ*L3; 12 +HZQ*L12; 7 +HFR*L3
2 +HFR*L7; 8 +HFR*L8; 19 +HFR*L15; 33 +HFR*L18
2 +HFR*L25; 33 +HFR*L28; 43 +HFR*L32; 16 +HFR*L33
221 +HFR*DROP_OCR_YZQ; 71 +HZR*L1; 152 +HZR*L27; 43 -FYR*L27
25 +OPQ*L4; 9 -FPR*L3; 277 -CYZ*L8; 64 -CYZ*L10
6 -CYZ*L13; 2 -CYZ*L18; 198 -CYZ*L21; 13 -CYZ*L24
64 -CYZ*L32; 246 -CYZ*DROP_OHQ_Z; 16 -CYZ*DROP_OCR_YZQ; 12 +OYP*L4
50 -OZQ*L24; 42 +OZR*L2; 37 +OZR*L18; 56 +OZR*L22
144 +OZR*L27; 30 +OZR*L33; 95 +OZR*-OHD; 66 +OZR*DROP_OHQ_Z
278 +OZR*DROP_OCR_YZQ; 53 -CQR*L0; 28 -CQR*L4; 17 -CQR*L5
56 -CQR*L12; 47 -CQR*L33; 34 -CQR*DROP_OHP_ZQ; 192 -CQR*DROP_OCR_YZQ
31 -HDQ*L9; 23 -HDQ*L13; 23 -HDQ*L18; 20 -HDQ*+OCF
8 -HDQ*C_OCF_Y; 238 -HDQ*DROP_OCR_YZQ; 5 +ODY*L6; 14 +ODY*L13
9 +ODY*L17; 12 +ODY*L18; 120 +ODY*L21; 309 +ODY*L30
112 +ODY*L31; 154 +ODY*DROP_OHQ_Z; 15 +OYQ*L0; 12 +OYQ*L3
3 +OYQ*L10; 4 +OYQ*L17; 28 +OYQ*L27; 48 -DQR*L27
1 -FPQ*L17; 1 -FQR*L17; 54 -YZQ*L1; 63 -YZQ*L3
27 +ZQR*LY_R; 1 +YPQ*L17; 19 -DZQ*L31; 44 +YQR*L0
13 +YQR*L30; 30 +YQR*L31; 43 +YQR*DROP_OCR_YZQ; 60 C_ODZ_Y*L27
36 C_HCD_Q*L3; 2 C_HCD_Q*L11; 171 C_HCD_Q*L30; 74 C_HCR_Q*L1
20 C_HCR_Q*L12; 24 C_HCR_Q*L13; 70 C_HCR_Q*L14; 36 C_HCR_Q*L23
2 C_HCR_Q*L24; 15 C_HCR_Q*TY_P_; 8 C_HCR_Q*DROP_OHQ_Z; 31 C_HDZ_Q*L2
1 C_HDZ_Q*TX_P_; 7 TPY_P_*L2; 45 Q_OCDH_YZQ*L16; 40 Q_OCDH_YZQ*L27
4 Q_OCRH_YZQ*L3; 3 Q_OYPH_ZQ*L14; 12 Q_OQRH_Z*L3; 5 Q_ODQZ_Y*L30
6 Q_OYQR_Z*L24; 9 M_RCOYQZ_1_2*L24; 11 M_RCOYQZ_1_2*TY_P_; 4 M_RCOYQZ_1_4*L31
83 M_OHDQZY_1_0*L12; 32 M_OHDQZY_1_0*L22; 46 M_OHDQZY_1_0*TY_P_; 224 M_OHDQZY_1_0*DROP_OCR_YZQ
69 M_OHDQZY_1_4*L9; 15 M_OHDQZY_1_4*LY_R; 23 M_ORDQZY_1_2*DROP_OCR_YZQ; 17 M_ORDQZY_1_4*L30
```

Upper bound: `-1677481437/500000000`.

### Leaf TULmpmmpmmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR +HDQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCDR +QDR
M OCRQYZ -1
M ORCQZY 1
M CORZYQ 1
M CROZQY -1
M ROCYZQ -1
M RCOYQZ 1
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OCR YZQ 1 lower 823/1000
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
7 L0*L4*TX_P_; 3 L0*L9*L17; 37 L0*L10*L25; 12 L0*L12*L17
4 L0*L12*L36; 2 L0*L17*L21; 81 L0*L17*L22; 18 L0*L17*LY_R
12 L1*L1*L16; 69 L1*L1*L30; 32 L1*L2*L14; 65 L1*L2*L20
27 L1*L3*L3; 7 L1*L3*L12; 23 L1*L10*L13; 11 L1*L12*TX_P_
2 L1*L17*TX_P_; 32 L1*L18*L30; 15 L1*L19*L24; 8 L1*L20*L30
3 L1*L20*L31; 4 L1*L20*TX_P_; 59 L1*L20*LY_R; 38 L1*L30*L31
13 L1*L30*TX_P_; 11 L2*L3*L19; 15 L2*L9*L10; 16 L2*L10*L23
54 L2*L10*TY_P_; 9 L2*L10*LY_R; 17 L2*L11*L27; 25 L2*L14*LY_R
48 L2*L18*L27; 56 L2*L20*LY_R; 8 L2*L24*L27; 11 L2*L30*TY_P_
5 L3*L3*L23; 32 L3*L4*L4; 4 L3*L4*L6; 2 L3*L4*L14
207 L3*L4*L16; 88 L3*L4*L19; 15 L3*L4*L22; 92 L3*L4*DROP_OHQ_Z
1 L3*L8*L30; 12 L3*L10*L25; 18 L3*L10*LX_R; 15 L3*L12*L14
11 L3*L12*L16; 49 L3*L12*LY_R; 43 L3*L14*L24; 21 L3*L16*L23
55 L3*L19*L19; 18 L3*L19*L33; 115 L3*L19*DROP_OHQ_Z; 105 L3*L19*DROP_OCR_YZQ
22 L3*L23*L24; 11 L3*L23*DROP_OHQ_Z; 14 L3*L27*L29; 1 L3*L31*L36
40 L4*L8*TY_P_; 5 L4*L11*L12; 55 L4*L16*L19; 27 L4*L16*L23
6 L4*L19*L24; 27 L4*L20*TY_P_; 16 L4*L21*L24; 56 L4*L27*DROP_OHQ_Z
15 L4*L27*LX_R; 40 L4*L30*DROP_OHP_ZQ; 81 L4*L30*DROP_OHQ_Z; 3 L5*L27*L28
49 L6*L8*L27; 20 L6*L10*L27; 3 L6*L18*L30; 30 L6*L27*TY_P_
3 L7*L10*L31; 1 L7*L21*L27; 18 L8*L10*L30; 12 L8*L12*L27
5 L8*L14*L17; 8 L8*L14*LY_R; 6 L8*L16*L19; 18 L8*L22*L27
42 L8*L27*L27; 21 L8*L27*L33; 22 L9*L10*L29; 31 L9*L24*L27
46 L10*L12*L27; 29 L10*L12*L30; 15 L10*L13*L17; 6 L10*L17*L18
6 L10*L17*L25; 7 L10*L21*L25; 38 L10*L23*L25; 9 L10*L24*L30
1 L10*L25*L25; 1 L10*L25*L28; 44 L10*L27*L27; 150 L10*L27*L30
44 L10*L27*-OHD; 2 L10*L27*C_OCF_Y; 44 L10*L27*LY_R; 18 L10*L30*L31
5 L10*L31*L33; 24 L10*L31*LX_R; 29 L10*L34*DROP_OHQ_Z; 1 L11*L12*L12
1 L11*L24*L24; 26 L12*L12*L32; 4 L12*L19*TX_P_; 88 L12*L22*LY_R
11 L12*L25*L27; 25 L12*L27*L27; 12 L12*L27*L29; 88 L12*L27*DROP_OHQ_Z
7 L12*L30*L30; 4 L13*L16*L19; 11 L13*TX_P_*LY_R; 1 L14*L25*TX_P_
38 L14*L27*L31; 126 L14*L27*DROP_OHQ_Z; 39 L15*L20*L27; 25 L15*L25*L27
7 L16*L19*L20; 45 L16*L20*L27; 83 L16*L27*LY_R; 5 L17*L17*L21
7 L17*L17*L22; 2 L17*L22*TX_P_; 41 L17*L23*L27; 2 L17*L27*L30
32 L17*L27*L35; 45 L17*L27*DROP_OHQ_Z; 11 L17*L31*L36; 3 L18*L27*L34
3 L19*L21*TX_P_; 29 L19*L24*L27; 32 L19*L27*L30; 3 L19*L27*L36
6 L19*L35*TX_P_; 1 L20*L20*LY_R; 41 L21*L27*TY_P_; 12 L22*L25*L27
19 L23*L27*L31; 11 L24*L30*LY_R; 34 L25*L27*L28; 53 L27*L27*DROP_OHP_ZQ
1 L27*L27*TX_P_; 3 L27*L27*TY_P_; 30 L27*L28*L29; 150 L27*L30*L32
88 L27*L30*DROP_OHQ_Z; 33 L27*L31*L31; 23 L27*L31*DROP_OHP_ZQ; 81 L27*L31*DROP_OHQ_Z
21 L27*L33*C_OHD_Z; 14 L27*L33*TX_P_; 34 L27*L34*DROP_OHP_ZQ; 42 L27*L35*LX_R
16 L27*+OCF*DROP_OCR_YZQ; 13 L27*+OCF*LY_R; 3 L27*TY_P_*LY_R; 1 L27*DROP_OHQ_Z*DROP_OHQ_Z
12 L27*DROP_OHQ_Z*LY_R; 7 L30*L30*L36; 28 L31*L31*L34; 56 KLOW*L10
8 KLOW*L18; 70 KLOW*TY_P_; 22 CENT*L23; 31 CENT*L25
42 CENT*L27; 2 CENT*L28; 118 CENT*L30; 11 CENT*DROP_OHP_ZQ
58 CENT*LY_R; 30 +OCD*L3; 7 +CDF*L19; 7 +CDF*LY_R
74 +OYZ*L14; 13 -HYZ*L1; 86 -HYZ*L3; 21 -HYZ*L4
94 -HYZ*L12; 17 -HYZ*L23; 183 -HYZ*L31; 4 -HYZ*L36
32 -HYZ*TY_P_; 2 -HYZ*DROP_OHQ_Z; 220 -HYZ*DROP_OCR_YZQ; 57 +OCY*L17
22 +OCY*L30; 3 +CDY*L6; 18 +CDY*L12; 164 +CDY*L16
97 +CDY*L20; 72 +CDY*DROP_OHP_ZQ; 40 +CDY*TY_P_; 16 +DFY*L27
10 -HCZ*L10; 66 +CDP*L4; 1 +CDP*L6; 11 +CDP*L8
119 +CDP*L18; 174 +CDP*L19; 118 +CDP*L20; 81 +CDP*L23
30 +CDP*L33; 77 +CDP*-OHD; 98 +CDP*DROP_OCR_YZQ; 2 -DFP*L20
3 -DFP*L30; 1 -CFP*L1; 3 -CFP*L20; 4 +HCQ*L30
6 +CDQ*L4; 24 -CYQ*L31; 12 +HZQ*L4; 50 +HZQ*L12
20 +OCR*L27; 1 +HFR*L18; 7 +HFR*L20; 13 +HFR*L30
1 +HFR*C_OCF_Y; 30 +HFR*DROP_OCR_YZQ; 26 -CYR*L27; 64 +HZR*L27
81 +OPQ*L0; 2 +OPQ*L7; 6 +OPQ*L17; 6 +OPQ*L25
1 -FPR*L3; 7 -FPR*L4; 4 -FPR*L12; 6 -FPR*L21
29 -FPR*L27; 6 -FPR*L35; 19 -CYZ*L3; 140 -CYZ*L8
103 -CYZ*L13; 64 -CYZ*L21; 9 -CYZ*L24; 133 -CYZ*DROP_OHQ_Z
1 -CYZ*LX_R; 6 +OYP*L24; 113 -OZQ*L3; 43 -OZQ*L4
137 -OZQ*L12; 94 -OZQ*L24; 302 -OZQ*L26; 78 -OZQ*L30
17 -OZQ*L35; 79 -OZQ*L36; 44 -OZQ*C_OCF_Y; 50 -OZQ*DROP_OHP_ZQ
32 -OZQ*TY_P_; 1 -OZQ*DROP_OHQ_Z; 49 -OZQ*LY_R; 5 +OZR*L3
1 +OZR*L6; 116 +OZR*L8; 56 +OZR*L21; 188 +OZR*L22
125 +OZR*L35; 15 +OZR*DROP_OHP_ZQ; 50 +OZR*TY_P_; 151 +OZR*DROP_OHQ_Z
40 +OZR*DROP_OCR_YZQ; 54 -HPQ*L4; 2 -HPQ*L17; 37 -CQR*L6
12 -CQR*L9; 38 -CQR*L11; 66 -CQR*L12; 29 -CQR*L14
8 -CQR*L24; 35 -CQR*L27; 21 -CQR*L28; 127 -CQR*-OHD
19 -CQR*+OCF; 37 -CQR*TX_P_; 97 -CQR*TY_P_; 12 -CQR*DROP_OHQ_Z
109 -CQR*LY_R; 104 +HDQ*L1; 2 +HDQ*L6; 71 +HDQ*L8
9 +HDQ*L10; 49 +HDQ*L14; 64 +HDQ*L18; 16 +HDQ*L25
42 +HDQ*L31; 81 +HDQ*L33; 45 +HDQ*-OHD; 17 +HDQ*TY_P_
11 +HDQ*DROP_OHQ_Z; 61 +ODZ*L27; 1 +HPR*L3; 10 +HQR*L20
28 +HQR*L30; 9 +CPQ*L27; 35 -DZQ*L17; 27 -DZQ*L27
49 -YZQ*L27; 9 -YZQ*L30; 16 -DQR*L4; 34 -DQR*L14
16 +YQR*L18; 33 +YQR*L31; 125 +YQR*L34; 16 +YQR*TY_P_
1 +YQR*DROP_OHQ_Z; 86 +YQR*LY_R; 30 C_OHP_ZQ*L1; 1 C_OHP_ZQ*L6
9 C_OHP_ZQ*L12; 15 C_OPR_ZQ*L0; 2 C_OPR_ZQ*L4; 25 C_OPR_ZQ*L10
4 C_OPR_ZQ*L12; 34 C_OPR_ZQ*L15; 49 C_OPR_ZQ*L22; 1 C_OQR_Z*L24
47 SP_OCPH_YQ_CH-1*L27; 15 Q_OYQR_Z*L16; 7 Q_OYQR_Z*L24; 18 Q_CDRY_Q*L27
16 M_RCOYQZ_1_3*L18; 79 M_RCOYQZ_1_3*L36; 15 M_RCOYQZ_1_4*L16; 1 M_RCOYQZ_1_4*L20
16 M_RCOYQZ_1_4*TY_P_
```

Upper bound: `-1696415073/500000000`.

### Leaf TULmpmmpmpmmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ -CFQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P DOHPQ +DPQ
P DOFPR +DPR
P FOHCQ +FOQ
P FOCYQ +FYQ
P FODPQ -FPQ
P FODQR -FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PCQ
P POHYQ -PYQ
P POHQR -PQR
P QOHDY -QDY
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
5 L0*L2*LX_R; 3 L0*L3*L12; 1 L0*L12*L19; 5 L0*L17*DROP_OHP_ZQ
1 L0*L19*L30; 13 L0*L27*TY_P_; 4 L1*L1*L1; 17 L1*L2*L22
2 L1*L8*L21; 13 L1*L9*L27; 2 L1*L12*L17; 4 L1*L13*L27
50 L1*L17*DROP_OHQ_Z; 31 L1*L18*L24; 4 L1*L19*L27; 6 L1*L23*L25
32 L1*L24*TY_P_; 19 L1*L24*DROP_OHQ_Z; 51 L1*L27*DROP_OHP_ZQ; 6 L1*L27*DROP_OHQ_Z
6 L1*L27*DROP_OCR_YZ; 2 L1*L29*L30; 1 L1*L29*L33; 11 L1*TY_P_*DROP_OHQ_Z
8 L2*L3*L23; 8 L2*L5*L22; 24 L2*L5*DROP_OHQ_Z; 1 L2*L7*L19
9 L2*L7*L28; 2 L2*L8*L23; 20 L2*L12*TY_P_; 2 L2*L13*TY_P_
1 L2*L14*LY_R; 1 L2*L17*L34; 22 L2*L21*LY_R; 23 L2*L22*L27
5 L2*L28*TY_P_; 18 L2*L30*TY_P_; 17 L2*L31*TY_P_; 1 L2*L36*TY_P_
6 L2*DROP_OHP_ZQ*TY_P_; 14 L2*TY_P_*LY_R; 1 L3*L5*L8; 12 L3*L6*L22
3 L3*L6*L26; 1 L3*L12*L27; 5 L3*L17*L19; 7 L3*L18*L27
22 L3*L27*DROP_OHQ_Z; 13 L3*L27*DROP_OCR_YZ; 1 L4*L19*L21; 3 L4*L20*L27
4 L4*L20*L28; 1 L4*L20*L35; 7 L4*L20*TY_P_; 41 L4*L24*L27
1 L4*L24*L33; 37 L4*L24*LY_R; 13 L4*L27*-OHD; 4 L5*L17*TX_P_
1 L5*L24*L29; 9 L5*L29*DROP_OHQ_Z; 2 L5*TX_P_*LY_R; 1 L6*L6*L11
1 L6*L8*L27; 1 L6*L10*LX_R; 2 L6*L12*LY_R; 34 L6*L18*L27
12 L6*L22*L27; 2 L6*L22*L30; 12 L6*L22*TY_P_; 2 L6*L24*L36
68 L6*L27*DROP_OCR_YZ; 5 L6*+OCF*TY_P_; 54 L6*TY_P_*DROP_OHQ_Z; 2 L7*L13*L24
4 L7*L29*LY_R; 1 L8*L10*L30; 2 L8*L17*L18; 3 L8*L23*L24
13 L8*L27*LY_R; 1 L9*L18*L27; 1 L10*L13*L16; 2 L10*L17*DROP_OHQ_Z
3 L10*L18*L27; 1 L10*L19*L21; 4 L10*L27*DROP_OHP_ZQ; 1 L10*L30*L33
3 L10*LX_R*LY_R; 1 L11*TY_P_*DROP_OHQ_Z; 1 L12*L14*L30; 1 L12*L17*L32
1 L12*L19*L21; 1 L12*L26*L28; 2 L12*L27*TX_P_; 2 L12*L27*DROP_OHQ_Z
1 L12*L30*L34; 1 L13*L24*L28; 2 L13*L27*DROP_OCR_YZ; 4 L14*L16*L27
6 L14*L27*DROP_OCR_YZ; 1 L15*L24*LY_R; 1 L15*L25*L27; 2 L16*L27*TY_P_
5 L17*L17*L28; 3 L17*L23*L33; 4 L17*L26*L27; 17 L17*L28*C_OCF_Y
22 L17*L28*DROP_OCR_YZ; 8 L18*L27*+OCF; 17 L18*L27*LY_R; 3 L19*L26*L35
2 L19*L27*DROP_OHP_ZQ; 17 L19*L27*DROP_OCR_YZ; 3 L20*L30*TY_P_; 2 L20*L31*TY_P_
5 L21*L24*+OCF; 22 L21*L27*TY_P_; 8 L21*L27*LX_R; 1 L21*L28*L30
22 L23*TX_P_*LY_R; 13 L24*L27*DROP_OHQ_Z; 22 L24*LY_R*LY_R; 4 L25*TY_P_*LY_R
13 L26*L27*L31; 6 L26*L27*L34; 22 L27*L27*LX_R; 9 L27*L29*TY_P_
3 L27*L36*DROP_OHP_ZQ; 21 L27*DROP_OHQ_Z*LX_R; 1 L29*L36*LY_R; 1 L30*L30*L32
3 KLOW*L16; 5 KLOW*L18; 6 KLOW*L25; 1 KLOW*L29
24 KLOW*DROP_OHP_ZQ; 21 KLOW*TY_P_; 3 KLOW*DROP_OHQ_Z; 1 CENT*L16
2 +ODF*L24; 1 -HYZ*L2; 1 -HYZ*L20; 1 -HCY*L16
1 -HFP*L14; 1 +CDP*L8; 3 +CDP*L17; 8 +CDP*L22
5 +CDP*L28; 12 +CDP*-OHD; 17 +CDP*+OCF; 4 +CDP*TX_P_
17 +CDP*DROP_OHQ_Z; 12 -DFP*L22; 32 -DFP*DROP_OHQ_Z; 4 +HDP*L27
8 -OHR*L19; 8 -OHR*L20; 23 -OHR*L27; 2 -OHR*L31
22 -OHR*LY_R; 7 +HFR*L4; 4 +HFR*L7; 5 +HFR*L8
4 +HFR*L13; 43 +HFR*L18; 49 +HFR*L27; 3 +HFR*L35
9 +HFR*DROP_OHQ_Z; 96 +HFR*DROP_OCR_YZ; 1 +HZR*L4; 2 +HZR*L7
2 +HZR*L27; 2 +HZR*DROP_OHQ_Z; 8 +OPQ*L1; 32 +OPQ*L3
15 +OPQ*L4; 2 +OPQ*L30; 23 +OPQ*+OCF; 19 +OPQ*LY_R
24 -FPR*L0; 1 -FPR*L34; 10 -FPR*+OCF; 1 -CYZ*L21
1 -OZQ*+OCF; 1 +OZR*L0; 4 +CQR*L6; 7 -HDQ*L4
9 -HDQ*L7; 2 -HDQ*L8; 22 -HDQ*L16; 11 -HDQ*L18
3 -HDQ*L33; 6 -HDQ*-OHD; 22 -HDQ*C_OCF_Y; 28 -HDQ*DROP_OHP_ZQ
6 -HDQ*LY_R; 8 -CFQ*L3; 8 -CFQ*L18; 9 -CFQ*L21
5 -CFQ*L25; 2 -CFQ*L30; 17 -CFQ*-OHD; 12 -CFQ*DROP_OHP_ZQ
9 -CFQ*DROP_OHQ_Z; 23 -CFQ*DROP_OCR_YZ; 2 +OYQ*L24; 10 +HPR*L2
6 +DPQ*L3; 5 +DPQ*L4; 2 +DPQ*L17; 11 +DPQ*-OHD
20 +DPQ*LY_R; 1 +FYQ*L24; 13 -FPQ*LY_R; 2 +YPQ*L16
13 TPY_P_*L1; 22 TPY_P_*DROP_OHQ_Z; 4 SP_OCPR_YQ_OP-1*L27; 5 Q_CDPF_Q*LY_R
```

Upper bound: `-240550311/1000000000`.

### Leaf TULmpmmpmpmmpmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ +CFQ -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFZQ -OFQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOFPR +DPR
P FOCPQ -FPQ
P FOCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHFQ -ZFQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
M OCFQYZ -1
M OFCQZY 1
M COFZYQ 1
M CFOZQY -1
M FOCYZQ -1
M FCOYQZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCF YZQ 1 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
2 L0*L0*L3; 2 L0*L0*L31; 12 L0*L6*L30; 2 L0*L7*L10
13 L0*L12*L13; 1 L1*L1*L35; 3 L1*L1*LY_R; 3 L1*L2*L16
22 L1*L2*L30; 23 L1*L2*L31; 9 L1*L2*DROP_OHQ_Z; 6 L1*L3*L27
17 L1*L6*L6; 10 L1*L6*L8; 11 L1*L8*L30; 5 L1*L10*DROP_OHP_ZQ
1 L1*L17*L24; 12 L1*L24*L33; 2 L1*L24*L34; 16 L1*L27*L29
53 L2*L2*TY_P_; 4 L2*L3*L27; 3 L2*L7*L12; 76 L2*L8*TY_P_
1 L2*L9*L10; 1 L2*L19*L31; 37 L2*L31*TY_P_; 13 L2*L32*TY_P_
49 L2*-OHD*TY_P_; 18 L2*TY_P_*TY_P_; 91 L2*TY_P_*DROP_OHQ_Z; 53 L2*TY_P_*LY_R
2 L2*LX_R*LY_R; 18 L3*L4*DROP_OHP_ZQ; 17 L3*L10*DROP_OHP_ZQ; 2 L3*L10*DROP_OHQ_Z
8 L3*L12*L14; 2 L3*L14*L22; 5 L3*L14*L30; 5 L3*L21*L27
1 L3*L22*L34; 2 L3*L23*L30; 3 L3*L27*L27; 1 L3*L27*L35
5 L4*L6*TY_P_; 1 L4*L10*L13; 1 L4*L10*L35; 5 L4*L16*L32
8 L4*L16*LY_R; 3 L4*L27*-OHD; 14 L5*L8*L17; 6 L5*L9*L27
9 L5*L17*L28; 1 L5*L22*L24; 8 L6*L6*L15; 18 L6*L6*LY_R
7 L6*L8*TX_P_; 7 L6*L9*TX_P_; 2 L6*L12*L23; 3 L6*L12*L29
3 L6*L12*L36; 3 L6*L13*TX_P_; 11 L6*L16*L36; 4 L6*L21*DROP_OHP_ZQ
1 L6*L22*L28; 1 L6*L22*L34; 17 L6*L27*L29; 43 L6*L27*DROP_OHQ_Z
1 L6*L34*L35; 12 L8*L10*L30; 6 L8*L19*L27; 1 L8*L22*TY_P_
6 L8*L27*TY_P_; 1 L9*L22*L36; 1 L10*L20*L36; 1 L10*L28*L31
5 L11*L17*L28; 1 L11*L27*DROP_OHQ_Z; 1 L12*L17*L22; 1 L14*L15*L24
4 L14*L18*L27; 3 L14*L27*DROP_OCR_YZ; 1 L14*L34*LX_R; 11 L14*TX_P_*LX_R
1 L15*L17*DROP_OHQ_Z; 4 L17*L19*TY_P_; 18 L17*L27*DROP_OCP_Y; 13 L17*L27*DROP_OHQ_Z
3 L17*L30*-OHD; 4 L17*TY_P_*TY_P_; 18 L17*TY_P_*DROP_OCR_YZ; 7 L17*LY_R*LY_R
1 L19*L23*L31; 12 L19*L24*DROP_OHQ_Z; 4 L19*L26*L27; 4 L19*L27*-OHD
1 L22*L24*L32; 33 L24*L27*DROP_OHQ_Z; 2 L24*L29*LY_R; 33 L24*DROP_OHQ_Z*LY_R
2 L27*L27*L33; 7 L27*L27*DROP_OHP_ZQ; 35 L27*L27*DROP_OHQ_Z; 3 L27*L28*L34
1 L27*L28*DROP_OHQ_Z; 4 L27*L34*DROP_OCP_Y; 3 L27*L36*LY_R; 17 L27*-OHD*DROP_OHP_ZQ
4 L27*DROP_OCP_Y*DROP_OCR_YZ; 35 L27*DROP_OHQ_Z*DROP_OCR_YZ; 1 L28*L31*L31; 12 L30*L30*L32
14 L30*L30*-OHD; 12 L31*L31*L34; 1 L33*LY_R*LY_R; 2 KLOW*L12
6 KLOW*L26; 1 KLOW*L35; 3 KLOW*TX_P_; 9 KLOW*DROP_OHQ_Z
15 KLOW*LX_R; 4 CENT*L9; 3 CENT*L13; 3 CENT*TX_P_
1 +OYZ*L10; 5 +OYZ*L12; 1 +OYZ*L14; 1 -HYZ
1 -HYZ*L6; 16 -HYZ*L12; 24 -HYZ*L31; 2 -HYZ*-OHD
7 +OCY*L21; 1 +OCY*L27; 19 +OCY*L30; 11 +OCY*L33
1 +OCY*TY_P_; 7 +OCY*DROP_OHQ_Z; 48 +CDP*L1; 97 +CDP*L2
36 +CDP*L8; 53 +CDP*L26; 18 +CDP*L28; 10 +CDP*L35
39 +CDP*-OHD; 103 +CDP*DROP_OHP_ZQ; 18 +CDP*DROP_OCP_Y; 91 +CDP*DROP_OHQ_Z
5 -DFP*L4; 14 -DYP*L2; 5 -HFQ*L24; 1 -OHR*L17
16 -OHR*L29; 1 -OHR*L33; 3 -OHR*DROP_OHQ_Z; 35 +HFR*L7
8 +HFR*L18; 5 +HFR*L19; 2 +HFR*L25; 11 +HFR*L33
5 +HFR*-OHD; 35 +HFR*DROP_OHQ_Z; 3 +HZR*L1; 3 +OPQ*L4
3 -FPR*L1; 12 -FPR*DROP_OHQ_Z; 11 -CYZ*L3; 13 -CYZ*L8
1 -CYZ*L21; 23 -CYZ*+OCF; 1 -OZQ*L0; 1 -OZQ*L9
1 -OZQ*L17; 2 -OZQ*L21; 1 -OZQ*L28; 2 -OZQ*L29
1 -OZQ*L36; 2 -OZQ*DROP_OHQ_Z; 5 +OZR*L0; 11 +OZR*L6
3 -HPQ*L4; 5 +CQR*L29; 1 +CQR*L32; 4 +CFQ*L8
1 +CFQ*L30; 3 +CFQ*L31; 2 +CFQ*L33; 3 -ODY*L3
8 -ODY*L16; 3 -ODY*DROP_OHP_ZQ; 15 -OFZ*L2; 18 -OFZ*L7
4 -OFZ*L26; 1 -PQR*L4; 2 +FYQ*L13; 1 +FYQ*L28
2 +FYQ*L34; 26 C_OCD_Y*L16; 22 C_OFP_ZQ*L2; 7 C_OFP_ZQ*L7
11 C_OFP_ZQ*L8; 1 C_OFP_ZQ*L11; 4 C_OFP_ZQ*-OHD; 15 C_OFP_ZQ*+OCF
29 C_OFP_ZQ*DROP_OHP_ZQ; 7 C_OFP_ZQ*DROP_OCP_Y; 26 C_OFP_ZQ*DROP_OHQ_Z; 27 C_OFP_ZQ*DROP_OCR_YZ
1 C_CFY_Q*L12; 13 C_CFR_Q*L0; 7 Q_OCDH_YZQ*L3; 7 Q_OCPF_YZQ*L6
1 Q_OYQF_Z*L30; 1 Q_CPFZ_Q*L10; 3 M_FCOYQZ_1_1*L12; 1 M_FCOYQZ_1_2*L23
1 M_FCOYQZ_1_3*L28; 1 M_FCOYQZ_1_3*L33; 1 M_FCOYQZ_1_3*L34; 1 M_FCOYQZ_1_4*L8
8 LEFTSUP
```

Upper bound: `-1186971253/1000000000`.

### Leaf TULmpmmpmpmmpmpmmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ +CFQ -ODY +OFZ -OFQ -DZQ -FYQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOFPR +DPR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ +YPQ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
92 L0*L1*L12; 56 L0*L2*L23; 508 L0*L3*L27; 125 L0*L12*TX_P_
84 L0*L19*TX_P_; 32 L1*L1*L3; 82 L1*L1*L21; 408 L1*L1*L24
81 L1*L1*L30; 601 L1*L2*TY_P_; 124 L1*L3*L4; 193 L1*L4*TX_P_
402 L1*L7*L17; 285 L1*L7*L31; 42 L1*L10*L36; 462 L1*L10*DROP_OHQ_Z
41 L1*L12*L28; 190 L1*L12*L34; 590 L1*L17*L24; 84 L1*L17*TY_P_
531 L1*L17*DROP_OHQ_Z; 802 L1*L18*L24; 517 L1*L20*L24; 224 L1*L23*L24
273 L1*L24*L29; 11 L1*L24*L33; 190 L1*L24*L35; 860 L1*L24*TY_P_
4 L1*L30*TY_P_; 14 L2*L3*L23; 5 L2*L3*L28; 139 L2*L4*TX_P_
5 L2*L5*L8; 73 L2*L5*L20; 388 L2*L5*TY_P_; 87 L2*L6*TY_P_
157 L2*L7*L10; 23 L2*L7*L14; 5 L2*L8*TY_P_; 9 L2*L10*L32
53 L2*L12*TY_P_; 39 L2*L12*LY_R; 50 L2*L17*L28; 140 L2*L17*TY_P_
22 L2*L19*L34; 36 L2*L20*L28; 434 L2*L20*TY_P_; 14 L2*L23*L24
18 L2*L23*L28; 275 L2*L23*L34; 7 L2*L23*L35; 262 L2*L23*TX_P_
57 L3*L3*L27; 107 L3*L8*L27; 4 L3*L10*L16; 408 L3*L14*L24
686 L3*L16*L27; 260 L3*L17*L23; 114 L3*L22*L27; 82 L3*L27*L27
18 L3*L27*L28; 297 L4*L4*TX_P_; 100 L4*L6*TY_P_; 10 L4*L10*L17
293 L4*L19*TX_P_; 528 L5*L17*L17; 13 L5*L17*L22; 78 L5*L17*L24
10 L5*L17*L30; 288 L5*L17*TY_P_; 35 L5*L19*L24; 134 L5*L22*L24
253 L6*L6*TY_P_; 443 L6*L7*L27; 344 L6*L12*L27; 683 L6*L17*L27
594 L6*L17*TY_P_; 78 L6*L19*L27; 116 L6*L22*L27; 213 L6*L27*L27
267 L6*L27*L28; 423 L6*L27*L30; 565 L6*L27*L31; 41 L6*L27*L34
218 L6*L27*DROP_OCP_Y; 6 L6*L31*L34; 200 L7*L7*L19; 211 L7*L7*LY_R
64 L7*L10*L20; 126 L7*L10*LY_R; 347 L7*L14*L22; 173 L7*L14*L24
686 L7*L17*L19; 318 L7*L19*L24; 134 L7*L19*L29; 1 L7*L19*L30
167 L7*L19*TX_P_; 151 L7*L29*LY_R; 9 L8*L10*LY_R; 5 L8*L14*L30
50 L8*L20*L27; 369 L8*L27*L34; 32 L9*L27*L27; 6 L9*L27*TX_P_
180 L9*L27*LX_R; 117 L9*L31*L34; 35 L10*L10*L21; 255 L10*L10*LX_R
395 L10*L12*L27; 116 L10*L12*L29; 42 L10*L14*L27; 42 L10*L14*LY_R
31 L10*L19*L20; 273 L10*L21*L27; 501 L10*L23*L24; 35 L10*L23*L31
233 L10*L24*L36; 297 L10*L27*L31; 51 L10*L27*L35; 106 L10*L27*C_OCF_YQ
5 L10*L33*L36; 39 L10*L36*DROP_OHP_ZQ; 114 L12*L12*L27; 246 L12*L14*L27
86 L12*L17*L28; 134 L12*L27*L27; 19 L12*L27*L29; 109 L12*L27*L30
19 L12*L27*TY_P_; 6 L13*L17*L27; 22 L14*L17*L28; 81 L14*L17*L29
22 L14*L17*LY_R; 444 L14*L20*L27; 77 L14*L22*L29; 134 L14*L24*L27
46 L14*L24*L30; 41 L14*L24*TY_P_; 94 L14*L28*L30; 173 L14*L30*LY_R
216 L15*L31*L34; 378 L16*L20*L27; 39 L16*L31*L34; 723 L17*L17*L27
786 L17*L19*L24; 52 L17*L19*L29; 86 L17*L22*L29; 278 L17*L22*LY_R
109 L17*L27*L28; 42 L17*L27*TY_P_; 119 L17*L30*LY_R; 583 L18*L24*L27
114 L18*L24*L30; 186 L19*L20*L27; 103 L19*L21*L24; 62 L19*L24*TX_P_
42 L19*L24*TY_P_; 486 L19*L27*L27; 5 L19*L29*L31; 72 L19*L29*L34
228 L20*L27*L32; 56 L20*L28*L31; 14 L21*L27*L31; 58 L22*L24*L30
275 L22*L24*TX_P_; 174 L22*L24*TY_P_; 114 L23*L24*LY_R; 6 L23*L29*TX_P_
215 L23*L31*L34; 31 L23*L31*TY_P_; 930 L24*L27*L27; 180 L24*L27*L31
325 L24*L27*TX_P_; 259 L24*L27*TY_P_; 930 L24*L27*LY_R; 180 L24*L29*LY_R
841 L27*L27*DROP_OHP_ZQ; 486 L27*L27*DROP_OCP_Y; 114 L27*L27*DROP_OHQ_Z; 79 L27*L30*L34
32 L27*L31*LY_R; 51 L27*L35*L35; 82 L27*TY_P_*DROP_OHQ_Z; 43 L29*L31*LY_R
51 L30*L30*LY_R; 48 L31*L31*L34; 7 L31*L34*L34; 6 L31*L34*LY_R
121 KLOW*L10; 190 KLOW*L12; 11 KLOW*L16; 31 KLOW*L28
841 KLOW*TY_P_; 29 CENT*L7; 9 CENT*L10; 81 CENT*L17
407 CENT*L26; 30 CENT*L30; 26 -HYZ*L2; 25 -HYZ*L12
132 -HYZ*L23; 39 -HYZ*L25; 145 -HYZ*L31; 4 -HYZ*TY_P_
116 -HYZ*LX_R; 79 -HYZ*LY_R; 460 +OCY*L3; 34 +OCY*L6
124 +OCY*L16; 70 +OCY*L21; 128 +OCY*L27; 94 +OCY*L28
5 +OCY*L30; 115 +OCY*L33; 209 +OCY*L36; 17 +OCY*TY_P_
222 +OCY*LX_R; 25 +CDP*L3; 21 +CDP*L10; 63 +CDP*L12
90 +CDP*L14; 87 +CDP*L17; 890 +CDP*L21; 259 +CDP*L22
533 +CDP*L27; 388 +CDP*L28; 20 +CDP*L29; 10 +CDP*L30
1397 +CDP*DROP_OHQ_Z; 243 +CDP*LY_R; 649 -DFP*L1; 397 -DFP*L4
246 -DFP*L8; 31 -DFP*L11; 58 -DFP*L13; 68 -DFP*L15
360 -DFP*L17; 4 -DFP*L19; 212 -DFP*L20; 31 -DFP*L22
253 -DFP*L24; 246 -DFP*L31; 226 -DFP*-OHD; 629 -DFP*DROP_OCR_YZ
253 -DFP*LX_R; 19 -DZP*L27; 411 +HZQ*L10; 50 +HZQ*L27
84 -OHR*L1; 194 +HFR*L1; 124 +HFR*L7; 43 +HFR*L10
402 +HFR*L17; 985 +HFR*L18; 154 +HFR*L20; 180 +HFR*L24
532 +HFR*L27; 238 +HFR*L29; 247 +HFR*L31; 194 +HFR*L34
300 +HFR*L36; 819 +HFR*TY_P_; 365 +HZR*L1; 650 +HZR*L3
89 +HZR*L6; 212 +HZR*L8; 233 +HZR*L11; 545 +HZR*L14
225 +HZR*L22; 180 +HZR*L25; 134 +HZR*L27; 41 +HZR*L28
46 +HZR*L36; 630 +HZR*+OCF; 73 +OPQ*L3; 278 +OPQ*L4
333 +OPQ*L7; 146 +OPQ*L24; 278 +OPQ*LY_R; 35 -FPR*L5
577 -FPR*L7; 114 -FPR*L9; 114 -FPR*L12; 723 -FPR*L17
120 -FPR*L20; 116 -FPR*L22; 190 -FPR*L25; 400 -FPR*L26
41 -FPR*L34; 42 -FPR*TY_P_; 134 -FPR*LX_R; 183 -FPR*LY_R
35 -CYZ*L8; 223 -CYZ*L15; 39 -CYZ*L16; 4 -CYZ*L19
784 -CYZ*L23; 388 -CYZ*L24; 90 -CYZ*L28; 30 -CYZ*L33
134 -CYZ*-OHD; 18 -CYZ*C_OCF_YQ; 631 -CYZ*DROP_OCR_YZ; 12 -OZQ*L1
94 -OZQ*L14; 329 +OZR*L0; 180 +OZR*L24; 116 -HPQ*L27
14 +CQR*L3; 208 +CQR*L5; 275 +CQR*L7; 192 +CQR*L11
64 +CQR*L12; 218 +CQR*L14; 686 +CQR*L16; 114 +CQR*L27
64 +CQR*L30; 564 +CQR*L32; 190 +CQR*DROP_OCP_Y; 100 +CQR*TY_P_
82 -HDQ*L1; 73 -HDQ*L3; 56 -HDQ*L9; 31 -HDQ*L10
94 -HDQ*L12; 402 -HDQ*L26; 94 -HDQ*L36; 165 -HDQ*+OCF
202 -HDQ*DROP_OHP_ZQ; 278 -HDQ*DROP_OCP_Y; 517 -HDQ*TX_P_; 363 -HDQ*LX_R
1 +OFZ*L8; 411 +OFZ*L10; 56 +OFZ*L12; 83 -OFQ*L0
278 -OFQ*L14; 241 -OFQ*L17; 116 -OFQ*L19; 64 -OFQ*L31
94 -DZQ*L34; 58 -DZQ*LX_R; 175 -DZQ*LY_R; 420 -FYQ*L1
472 -FYQ*L4; 64 -FYQ*L6; 291 -FYQ*L10; 701 -FYQ*L14
503 -FYQ*L28; 70 -FYQ*+OCF; 31 -FYQ*DROP_OCP_Y; 188 +HQR*L17
78 +DPQ*L24; 259 +DPR*L27; 58 +FZQ*L6; 291 +FZQ*L10
255 +YQR*L10; 589 TPY_P_*L1; 263 Q_OFRH_Z*L27; 68 Q_OPFZ_Q*L4
58 Q_OPFZ_Q*L7; 53 Q_OPFZ_Q*L8; 37 Q_OPFZ_Q*L19; 262 Q_OPFZ_Q*L24
56 Q_OPFZ_Q*L30; 494 Q_OPFZ_Q*LY_R; 135 Q_HZDP_Q*L27; 83 Q_HZYF_Q*L27
81 Q_DPFZ_Q*L17
```

Upper bound: `-3188299757/1000000000`.

### Leaf TULmpmmpmpmmpmpmmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ +CFQ -ODY +OFZ -OFQ -DZQ +FYQ`.

```c1top-geometry
C CFY Q Z -FYZ 36132509/53513000
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOFPR +DPR
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
15 L0*L1*L2; 99 L0*L1*L12; 25 L0*L5*L12; 25 L0*L6*L32
33 L0*L6*L35; 20 L0*L8*L27; 5 L0*L19*TX_P_; 105 L1*L1*L24
3 L1*L2*L30; 5 L1*L3*L4; 18 L1*L3*L23; 1 L1*L5*L5
6 L1*L5*L31; 44 L1*L6*L27; 16 L1*L7*TX_P_; 1 L1*L8*L19
8 L1*L10*L27; 33 L1*L10*L29; 32 L1*L12*L12; 29 L1*L12*L19
2 L1*L12*L31; 57 L1*L17*L28; 118 L1*L17*DROP_OHQ_Z; 57 L1*L17*LY_R
51 L1*L18*L24; 33 L1*L21*L29; 39 L1*L24*L33; 59 L1*L24*DROP_OCP_Y
187 L1*L24*TY_P_; 171 L2*L5*TY_P_; 28 L2*L12*L28; 3 L2*L15*TY_P_
1 L2*L19*L21; 12 L2*L19*L22; 2 L2*L19*L24; 5 L2*L19*TY_P_
12 L2*L20*L28; 9 L2*L21*LY_R; 30 L2*L22*LY_R; 157 L2*TY_P_*LY_R
8 L3*L6*L14; 5 L3*L10*L12; 5 L3*L10*L20; 6 L3*L10*L22
36 L3*L10*L27; 10 L3*L10*TX_P_; 17 L3*L12*L18; 26 L3*L12*L23
32 L3*L12*L26; 14 L3*L13*L27; 17 L3*L14*L19; 11 L3*L14*L23
6 L3*L16*L22; 1 L3*L17*L18; 72 L3*L27*L34; 9 L3*L27*+OCF
6 L3*L27*DROP_OHP_ZQ; 1 L4*L4*L34; 3 L4*L6*L32; 64 L4*L6*TY_P_
45 L4*L9*L27; 8 L4*L10*L29; 4 L4*L16*L17; 6 L4*L24*L27
122 L4*L27*LY_R; 4 L5*L5*L8; 1 L5*L5*L14; 108 L5*L5*L17
15 L5*L8*L12; 6 L5*L10*L24; 40 L5*L17*L30; 14 L5*L20*L30
12 L5*L27*C_OCF_YQ; 2 L6*L6*L23; 1 L6*L7*L22; 17 L6*L17*L27
48 L6*L18*L27; 47 L6*L18*L34; 44 L6*L20*TY_P_; 13 L6*L27*L36
63 L6*L27*DROP_OCP_Y; 33 L6*L27*TX_P_; 30 L6*L27*DROP_OHQ_Z; 16 L6*L27*LX_R
3 L7*L7*L10; 6 L7*L10*L23; 23 L7*L10*L25; 29 L7*L12*L27
26 L7*L14*L24; 3 L7*L17*L19; 50 L7*L19*L30; 47 L7*L27*L32
34 L7*L30*LY_R; 37 L8*L14*L23; 19 L8*L17*L27; 28 L8*L18*L27
19 L8*L19*L24; 88 L8*L22*L27; 12 L8*L23*L29; 15 L8*L23*TY_P_
7 L8*L24*L28; 8 L8*L24*LY_R; 57 L8*L27*L34; 40 L9*L9*L27
37 L9*L12*L27; 1 L9*L14*L24; 31 L9*L27*L29; 8 L10*L12*L21
7 L10*L12*TX_P_; 43 L10*L17*L21; 31 L10*L17*L29; 77 L10*L17*DROP_OHQ_Z
4 L10*L18*L29; 17 L10*L20*TX_P_; 22 L10*L21*L24; 49 L10*L21*L27
6 L10*L25*L28; 8 L10*L27*DROP_OCR_YZ; 39 L10*L29*L34; 86 L12*L14*L27
86 L12*L15*L27; 7 L12*L16*L32; 17 L12*L17*L23; 2 L12*L19*L24
15 L12*L20*LY_R; 34 L12*L27*L33; 52 L12*L27*TY_P_; 48 L12*L27*LY_R
34 L13*L14*L24; 6 L13*L21*L27; 27 L13*L27*L28; 2 L13*L27*DROP_OHP_ZQ
9 L14*L19*L29; 36 L14*L21*L27; 57 L14*L24*L35; 31 L14*L24*TY_P_
122 L14*L27*DROP_OCP_Y; 48 L14*L27*LX_R; 6 L14*L29*L30; 1 L16*L17*L26
18 L16*L24*L27; 1 L16*L24*TY_P_; 2 L17*L19*L23; 5 L17*L19*L28
1 L17*L20*TY_P_; 22 L17*L22*LY_R; 32 L17*L23*L30; 1 L17*L23*TX_P_
3 L17*L23*TY_P_; 8 L17*L27*-OHD; 25 L18*L27*L27; 122 L18*L27*L34
1 L19*L19*L21; 15 L19*L20*L30; 35 L19*L21*L27; 26 L19*L27*DROP_OHQ_Z
1 L19*L29*TX_P_; 49 L20*L27*TX_P_; 22 L21*L27*L30; 19 L22*L24*TY_P_
39 L22*L30*LY_R; 2 L24*L24*LY_R; 18 L24*TX_P_*LY_R; 2 L25*L25*L27
8 L25*L27*L35; 97 L27*L27*DROP_OCP_Y; 40 L27*L30*L31; 22 L27*L32*TX_P_
8 L27*L35*LY_R; 122 L27*TY_P_*LY_R; 37 L28*L30*DROP_OHQ_Z; 6 L30*TY_P_*LY_R
16 KLOW*L6; 12 KLOW*L28; 3 KLOW*L34; 3 KLOW*L35
168 KLOW*TY_P_; 12 KLOW*LX_R; 1 CENT*L3; 5 CENT*L18
1 CENT*L33; 19 CENT*DROP_OHQ_Z; 3 CENT*LY_R; 8 TOPCOUNT*L24
70 +OYZ*L24; 3 +OYZ*L28; 3 -HYZ*-OHD; 6 -HYZ*C_OCF_YQ
108 -HYZ*DROP_OCR_YZ; 32 -HYZ*LX_R; 20 +OCY*L19; 41 +OCY*TX_P_
95 -OHZ*L27; 174 +CDP*L12; 191 +CDP*L13; 177 +CDP*L19
19 +CDP*L22; 126 +CDP*L26; 11 +CDP*L32; 171 +CDP*TY_P_
68 -DFP*L1; 1 -DFP*L3; 64 -DFP*L4; 43 -DFP*L9
11 -DFP*L10; 8 -DFP*L25; 65 -DFP*L26; 43 -DFP*L30
120 -DFP*DROP_OHQ_Z; 39 +HDP*L27; 27 -DYP*L27; 60 -HFQ*L27
6 -OHR*L14; 16 +HFR*L7; 4 +HFR*L13; 35 +HFR*L14
34 +HFR*L22; 2 +HFR*L24; 136 +HFR*L27; 33 +HFR*L30
25 +HFR*L32; 28 +HFR*L33; 16 +HFR*DROP_OHP_ZQ; 111 +HFR*DROP_OCP_Y
156 +HFR*TY_P_; 214 +HFR*DROP_OCR_YZ; 99 +HZR*L1; 179 +HZR*L12
209 +HZR*L13; 39 +HZR*L22; 23 +HZR*C_OCF_YQ; 7 +HZR*DROP_OHP_ZQ
31 +HZR*TY_P_; 22 +OPQ*L4; 30 +OPQ*L7; 107 +OPQ*L18
108 +OPQ*L19; 15 +OPQ*L35; 3 +OPQ*DROP_OHP_ZQ; 113 +OPQ*DROP_OCR_YZ
35 +OPQ*LY_R; 19 -FPR*L8; 2 -FPR*L12; 1 -FPR*L17
49 -FPR*L21; 1 -FPR*L29; 36 -CYZ*L4; 39 -CYZ*L5
25 -CYZ*L21; 48 -CYZ*L24; 40 -CYZ*L26; 8 -CYZ*LX_R
10 -OZQ*L7; 62 -OZQ*L10; 83 +OZR*L0; 7 +OZR*L17
3 +OZR*L30; 148 +OZR*L32; 17 +OZR*C_OCF_YQ; 27 +OZR*DROP_OCP_Y
48 +OZR*DROP_OCR_YZ; 36 +CQR*L0; 30 +CQR*L6; 5 +CQR*L16
12 +CQR*L18; 9 +CQR*L31; 36 +CQR*L34; 19 +CQR*TY_P_
6 -DQR*L27; 40 -HDQ*L8; 90 -HDQ*L16; 71 -HDQ*L30
54 -HDQ*L31; 25 -HDQ*L32; 41 -HDQ*-OHD; 22 -HDQ*DROP_OCP_Y
33 -HDQ*TX_P_; 72 -HDQ*DROP_OCR_YZ; 66 -HDQ*LY_R; 9 +CFQ*L2
6 +CFQ*L11; 18 +CFQ*L30; 24 +CFQ*L34; 4 -ODY*L5
30 -ODY*L21; 15 -ODY*L23; 39 +OFZ*L18; 33 +OFZ*L21
61 +OFZ*L22; 26 +OFZ*L24; 76 +OFZ*L32; 18 -DZQ*L2
43 -DZQ*L6; 25 -DZQ*L35; 27 -DZQ*C_OCF_YQ; 39 +FYQ*L0
93 +FYQ*L12; 87 +FYQ*L13; 37 +FYQ*L14; 49 +FYQ*L17
15 +FYQ*L18; 39 +FYQ*L33; 32 +FYQ*TX_P_; 94 +FYQ*DROP_OCR_YZ
29 +FYQ*LX_R; 7 +OYQ*L24; 57 +OYQ*L27; 5 +HQR*L17
6 +HQR*L27; 13 -DYQ*L27; 1 +DPQ*L2; 20 +DPQ*L12
4 +DPQ*L17; 126 +DPQ*L27; 13 -FPQ*L1; 5 -FPQ*L12
13 -FQR*L30; 14 +YPQ*L6; 30 C_OCQ_Y*L27; 14 C_OFR_Z*L27
5 C_HYP_Q*L27; 1 TPY_P_*L2; 91 TPY_P_*LY_R; 64 Q_OFRH_Z*L27
32 Q_OYRH_Z*L1; 91 Q_OYRH_Z*L14; 8 Q_OYRH_Z*L27; 42 Q_OPFZ_Q*L1
6 Q_OPFZ_Q*L30; 7 Q_DPFY_Q*L24; 40 Q_DPFZ_Q*L8
```

Upper bound: `-27143011/125000000`.

### Leaf TULmpmmpmpmmpmpmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ +CFQ -ODY +OFZ -OFQ +DZQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOFPR +DPR
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ -ZPQ
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
3 L0*L7*L16; 20 L0*L12*L21; 6 L0*L24*L32; 15 L0*L27*TX_P_
5 L1*L2*L28; 36 L1*L2*L30; 38 L1*L2*TY_P_; 4 L1*L3*L29
14 L1*L4*L13; 1 L1*L4*TX_P_; 19 L1*L7*L24; 1 L1*L7*L31
2 L1*L9*L25; 56 L1*L12*L19; 77 L1*L12*L34; 14 L1*L13*TX_P_
7 L1*L17*DROP_OHQ_Z; 9 L1*L22*L30; 4 L1*L22*LX_R; 14 L1*L24*DROP_OHP_ZQ
21 L1*L24*DROP_OCP_Y; 3 L1*L28*TX_P_; 8 L1*L31*L31; 3 L2*L2*L9
3 L2*L3*L31; 2 L2*L3*+OCF; 6 L2*L4*L31; 41 L2*L5*L26
6 L2*L5*L33; 15 L2*L5*DROP_OHQ_Z; 4 L2*L10*L28; 87 L2*L13*TY_P_
7 L2*L17*L28; 7 L2*L22*L35; 4 L2*L23*L28; 26 L2*L24*TY_P_
8 L2*L27*L35; 64 L2*L28*TY_P_; 29 L2*L28*DROP_OHQ_Z; 74 L2*TY_P_*DROP_OHQ_Z
26 L2*TY_P_*LX_R; 5 L3*L3*L29; 2 L3*L6*L22; 5 L3*L7*L29
6 L3*L15*L20; 12 L3*L18*L34; 8 L3*L18*L35; 5 L3*L23*L31
1 L3*L23*L36; 9 L3*L27*DROP_OHQ_Z; 7 L3*L34*DROP_OCR_YZ; 2 L4*L4*L27
26 L4*L6*TY_P_; 8 L4*L12*L23; 10 L4*L12*L29; 4 L4*L12*L31
12 L4*L12*L35; 5 L4*L20*TY_P_; 76 L4*L27*L27; 76 L4*L27*DROP_OCR_YZ
11 L4*L29*LY_R; 4 L4*L34*TX_P_; 29 L5*L5*L17; 13 L5*L6*L17
59 L5*L17*DROP_OHQ_Z; 6 L5*L17*LX_R; 3 L5*L21*L31; 2 L5*L26*TY_P_
12 L5*L27*L33; 11 L5*L27*DROP_OHQ_Z; 2 L5*L29*L30; 14 L5*L30*DROP_OHQ_Z
10 L6*L6*TY_P_; 1 L6*L14*L30; 3 L6*L17*L23; 1 L6*L17*L35
2 L6*L19*L30; 4 L6*L22*L28; 5 L6*L22*TY_P_; 1 L6*L25*L27
2 L6*L27*DROP_OHQ_Z; 58 L6*L27*DROP_OCR_YZ; 16 L6*L30*TY_P_; 55 L6*TY_P_*DROP_OHQ_Z
6 L6*TY_P_*LX_R; 27 L7*L7*LY_R; 1 L7*L9*L17; 5 L7*L10*L12
3 L7*L10*DROP_OCR_YZ; 1 L7*L24*LY_R; 3 L7*L28*L28; 2 L8*L10*L11
3 L8*L10*L30; 3 L8*L10*L35; 17 L8*L17*L22; 8 L8*L17*LY_R
7 L8*L27*-OHD; 3 L8*L34*TX_P_; 27 L9*L9*L34; 12 L9*L12*L32
23 L9*L26*L27; 15 L9*L27*+OCF; 30 L9*L27*LY_R; 5 L9*L34*DROP_OHP_ZQ
5 L10*L10*L30; 5 L10*L12*L19; 38 L10*L12*L27; 5 L10*L13*L36
10 L10*L14*L17; 2 L10*L14*L19; 5 L10*L15*L34; 1 L10*L16*L29
5 L10*L18*L25; 5 L10*L22*L30; 5 L10*L22*L31; 6 L10*L25*LY_R
3 L10*L27*TX_P_; 5 L10*L30*L34; 2 L10*L36*DROP_OHP_ZQ; 7 L10*L36*DROP_OCP_Y
1 L10*DROP_OHQ_Z*LY_R; 2 L12*L15*TY_P_; 10 L12*L18*L31; 10 L12*L19*TX_P_
3 L12*L19*TY_P_; 9 L12*L20*TY_P_; 31 L12*L22*L27; 8 L12*L23*L24
5 L12*L24*L30; 39 L12*L27*L29; 11 L12*L27*L31; 52 L12*L27*DROP_OCR_YZ
32 L12*L27*LX_R; 2 L12*L28*L35; 1 L12*L29*L34; 11 L12*L32*L35
4 L13*TX_P_*LY_R; 7 L14*L17*L17; 2 L14*L19*L30; 21 L14*L21*L27
17 L14*L24*L35; 13 L14*L24*LX_R; 3 L14*L27*DROP_OHQ_Z; 8 L15*L25*L34
55 L15*L27*L30; 2 L15*L31*TY_P_; 9 L15*L35*DROP_OCP_Y; 2 L16*L16*L27
27 L16*L22*L27; 5 L16*L27*TY_P_; 10 L16*L31*L34; 2 L17*L17*L18
2 L17*L17*DROP_OCR_YZ; 12 L17*L18*L24; 5 L17*L19*DROP_OCR_YZ; 7 L17*L20*L34
8 L17*L27*L30; 8 L17*L28*L30; 3 L17*L32*LY_R; 3 L17*L36*TY_P_
2 L18*L24*TY_P_; 2 L18*L26*L31; 2 L19*L24*DROP_OCP_Y; 2 L19*L26*TY_P_
12 L19*L27*L33; 5 L19*L27*+OCF; 2 L19*L27*DROP_OCP_Y; 27 L19*L27*LY_R
2 L19*TX_P_*TX_P_; 6 L20*L28*L34; 9 L20*L32*TY_P_; 5 L20*L34*L35
5 L21*L27*TY_P_; 28 L21*L30*LY_R; 19 L21*L31*L34; 4 L22*L24*L28
20 L22*L24*L30; 1 L22*L24*L35; 23 L22*L24*TY_P_; 3 L22*L29*TX_P_
3 L22*L36*C_OCF_YQ; 18 L22*C_OCF_YQ*LY_R; 19 L24*L24*L34; 6 L24*L27*L32
47 L24*L27*DROP_OCP_Y; 5 L24*L30*L36; 12 L24*TX_P_*TY_P_; 12 L24*TY_P_*LY_R
46 L24*LY_R*LY_R; 12 L25*L31*L34; 52 L26*L27*L30; 82 L26*L29*LY_R
22 L27*L27*DROP_OHP_ZQ; 46 L27*L27*LX_R; 2 L27*L28*L30; 8 L27*L28*DROP_OHQ_Z
5 L27*L30*L33; 9 L27*L31*DROP_OHQ_Z; 101 L27*C_OCF_YQ*LY_R; 27 L27*DROP_OCP_Y*LY_R
14 L27*TY_P_*LX_R; 17 L30*TY_P_*DROP_OHQ_Z; 2 L30*TY_P_*LY_R; 14 L31*L34*DROP_OCP_Y
5 L32*TY_P_*LX_R; 5 L34*L35*L36; 7 C_OCF_YQ*C_OCF_YQ*TY_P_; 15 KLOW*L10
8 KLOW*LY_R; 45 CENT*LY_R; 2 TOPCOUNT*L29; 2 QCENT*L27
19 -HYZ*L4; 42 -HYZ*L21; 16 -HYZ*L22; 19 -HYZ*L31
52 -HYZ*-OHD; 12 -HYZ*DROP_OHP_ZQ; 19 -HYZ*TY_P_; 5 -HYZ*LX_R
1 +OCY*L17; 30 +OCY*L36; 5 -HCY*L10; 5 -HCY*L24
13 -HCY*L34; 48 -OHZ*L27; 6 -HCZ*L10; 6 -HCZ*L21
3 -HCZ*TY_P_; 5 -HFP*L5; 3 -HFP*L29; 34 +CDP*L0
64 +CDP*L5; 60 +CDP*L9; 29 +CDP*L17; 23 +CDP*L22
6 +CDP*L27; 68 +CDP*L30; 3 +CDP*L36; 7 +CDP*+OCF
29 +CDP*DROP_OHP_ZQ; 76 +CDP*DROP_OHQ_Z; 23 -DFP*L1; 35 -DFP*L4
5 -DFP*L11; 9 -DFP*L22; 4 -DFP*L36; 4 -DFP*DROP_OHP_ZQ
55 -DFP*DROP_OHQ_Z; 10 -DFP*DROP_OCR_YZ; 18 -DFP*LX_R; 3 -CYP*L34
31 +HZP*L27; 1 -DZP*L27; 5 +HCQ*L3; 6 +HYQ*LY_R
6 -CYQ*L15; 13 -CYQ*L36; 9 +HZQ*L19; 11 -OHR*L3
30 +HFR*L7; 24 +HFR*L13; 26 +HFR*DROP_OCP_Y; 17 +HFR*TY_P_
74 +HFR*DROP_OCR_YZ; 77 +HZR*L14; 33 +HZR*L17; 7 +HZR*L23
19 +HZR*L25; 52 +HZR*L27; 18 +HZR*+OCF; 47 +HZR*DROP_OHP_ZQ
44 +HZR*DROP_OCP_Y; 76 +HZR*LY_R; 3 +OPQ*L3; 32 +OPQ*L4
15 +OPQ*L11; 46 +OPQ*L14; 7 +OPQ*L17; 44 +OPQ*L27
17 +OPQ*L30; 57 +OPQ*L36; 57 +OPQ*DROP_OHQ_Z; 71 +OPQ*DROP_OCR_YZ
2 -FPR*L4; 4 -FPR*L12; 4 -FPR*L13; 20 -FPR*LY_R
4 -CYZ*L5; 5 -CYZ*L11; 8 -CYZ*L18; 4 -CYZ*L22
5 -CYZ*L36; 23 -CYZ*-OHD; 7 -CYZ*DROP_OHQ_Z; 55 -CYZ*LY_R
17 -OZQ*L12; 57 -OZQ*L20; 3 -OZQ*TY_P_; 117 +OZR*L0
51 +OZR*L4; 5 +OZR*L12; 2 +OZR*L17; 23 +OZR*L27
22 +OZR*L34; 17 +OZR*L35; 13 +OZR*LX_R; 7 +CQR*L1
5 +CQR*L6; 8 +CQR*L10; 20 +CQR*L14; 19 +CQR*L27
4 +CQR*L28; 28 +CQR*L30; 9 +CQR*L35; 25 +CQR*-OHD
23 +CQR*TY_P_; 25 -DQR*L27; 11 -ODY*L12; 5 +DZQ*L4
34 +DZQ*L8; 17 +DZQ*L12; 27 +DZQ*L18; 45 +DZQ*L21
15 +DZQ*L32; 38 +DZQ*+OCF; 72 +DZQ*DROP_OHP_ZQ; 45 +DZQ*DROP_OHQ_Z
37 +DZQ*DROP_OCR_YZ; 38 -DYQ*L12; 6 +DPQ*L10; 4 +FZQ*L19
3 -FQR*L6; 7 -YZQ*L3; 21 +ZQR*L1; 7 -ZPQ*L17
57 -ZPQ*L20; 10 +YPQ*L12; 10 C_OZP_Q*L2; 16 C_OZP_Q*L10
3 C_OZP_Q*L19; 11 C_OZP_Q*L22; 30 C_OPR_ZQ*L34; 4 TPX_P_*L17
24 TPY_P_*L2; 14 TPY_P_*L8; 6 TPY_P_*L28; 1 SP_OCFH_ZQ_CH-1*L27
2 SP_OCDZ_YQ_OD1*L14; 3 Q_OCPR_YZQ*L27; 6 Q_OYQR_Z*L27; 2 Q_HZYD_Q*L1
```

Upper bound: `-974999871/200000000`.

### Leaf TULmpmmpmpmmpmpp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ +CFQ -ODY +OFZ +OFQ`.

```c1top-geometry
C OHF ZQ Y +FOY 72039/90700
P OHDFZ +ODZ
P OHDFQ +ODQ
P OHDYQ +OYQ
P OHDYR +OYR
P HODQR +HQR
P HOFPR +HPR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOFPR +DPR
P FOHYZ -FYZ
P FOHYQ -FYQ
P FOHPQ -FPQ
P FOHQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ +YPQ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
```

Exclusion: `central_endpoint_top OF R ZQ`.

### Leaf TULmpmmpmpmmpp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ +CFQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPQ +CPQ
P COFPR +CPR
P DOHPQ +DPQ
P DOFPR +DPR
P FHCPQ -FPQ
P FHCQR -FQR
P YOHDQ +YDQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOCDZ +YDZ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
C ODZ Y Q -DZQ 101661/147500
M OHDQZY 1
M ODHQYZ -1
M HODYZQ -1
M HDOYQZ 1
M DOHZYQ 1
M DHOZQY -1
M ODRQYZ -1
M ORDQZY 1
M DORZYQ 1
M DROZQY -1
M RODYZQ -1
M RDOYQZ 1
```

```c1top-bounds
T OHD YZQ 0 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 823/1000 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
11 L0*L1*L15; 55 L0*L3*L30; 45 L0*L8*L30; 10 L0*L10*LX_R
15 L1*L1*L21; 62 L1*L3*LY_R; 10 L1*L4*L17; 5 L1*L5*L7
20 L1*L8*L34; 67 L1*L10*L12; 27 L1*L11*L29; 4 L1*L13*L24
32 L1*L14*L18; 32 L1*L14*L19; 9 L1*L14*L24; 11 L1*L14*-OHD
70 L1*L14*C_OCF_Y; 1 L1*L16*L21; 90 L1*L17*DROP_OCR_YZ; 29 L1*L18*L21
13 L1*L19*L33; 11 L1*L21*L29; 12 L1*L21*L30; 16 L1*L22*L33
52 L1*L24*L30; 47 L1*L24*+OCF; 145 L1*L24*DROP_OCR_YZ; 79 L1*L26*TX_P_
20 L1*L27*DROP_OHQ_Z; 13 L1*L30*L30; 5 L1*L30*L32; 4 L1*L30*TX_P_
21 L1*L31*L35; 10 L1*L32*DROP_OHQ_Z; 32 L2*L4*L30; 4 L2*L4*TX_P_
14 L2*L4*LY_R; 2 L2*L5*L16; 21 L2*L5*DROP_OHQ_Z; 15 L2*L7*LY_R
35 L2*L10*L34; 1 L2*L10*TY_P_; 3 L2*L12*L17; 10 L2*L12*L23
19 L2*L12*L27; 3 L2*L17*L32; 5 L2*L18*L21; 35 L2*L22*L30
13 L2*L22*TY_P_; 29 L2*L34*L34; 7 L2*L36*TY_P_; 27 L2*L36*LY_R
2 L2*TY_P_*DROP_OHQ_Z; 4 L2*DROP_OHQ_Z*LY_R; 14 L3*L4*L24; 12 L3*L5*L27
8 L3*L7*L9; 12 L3*L8*L29; 52 L3*L10*L20; 18 L3*L11*L22
27 L3*L14*L14; 18 L3*L14*L22; 6 L3*L17*-OHD; 2 L3*L19*L23
12 L3*L27*DROP_OCR_YZ; 3 L4*L5*L30; 6 L4*L7*L24; 22 L4*L8*L27
7 L4*L10*L27; 7 L4*L11*L27; 1 L4*L12*L28; 23 L4*L12*L35
10 L4*L15*L24; 3 L4*L17*L23; 3 L4*L21*TX_P_; 17 L4*L22*L30
6 L4*L22*TX_P_; 1 L4*L29*L36; 2 L4*L30*L34; 2 L4*L36*TX_P_
2 L5*L7*L15; 2 L5*L7*L30; 7 L5*L8*L8; 5 L5*L17*DROP_OCR_YZ
5 L6*L7*L30; 2 L6*L9*L24; 5 L6*L12*L27; 8 L6*L21*L27
11 L6*L22*L27; 4 L6*L27*L30; 4 L7*L9*L19; 3 L7*L12*L17
3 L7*L12*LX_R; 12 L7*L17*L30; 6 L7*L19*L22; 7 L7*L19*-OHD
16 L7*L19*LY_R; 1 L7*L22*L25; 1 L7*L24*LY_R; 3 L7*L32*LY_R
7 L8*L10*L35; 46 L8*L14*L30; 6 L8*L17*DROP_OCR_YZ; 58 L8*L22*L31
26 L8*L24*L36; 1 L8*L24*TX_P_; 36 L8*L27*DROP_OHQ_Z; 3 L8*L29*TX_P_
30 L8*L29*LY_R; 8 L8*L30*TY_P_; 26 L8*TX_P_*LY_R; 16 L9*L12*L19
9 L9*L17*L32; 2 L9*L27*C_OCF_Y; 7 L10*L10*L30; 5 L10*L12*L17
1 L10*L19*L30; 7 L10*L21*L27; 7 L10*L23*L24; 58 L10*L24*L27
7 L10*L30*L30; 1 L10*L30*TY_P_; 58 L10*L30*DROP_OHQ_Z; 20 L10*TX_P_*LY_R
31 L11*L13*L27; 47 L11*L27*+OCF; 1 L12*L12*L19; 14 L12*L12*L27
15 L12*L12*L28; 1 L12*L17*L24; 3 L12*L17*L30; 14 L12*L18*L27
1 L12*L21*TY_P_; 17 L12*L26*LY_R; 41 L12*L27*L27; 40 L12*L27*L36
1 L12*L29*+OCF; 39 L12*L30*L32; 5 L12*L32*TY_P_; 45 L13*L29*LY_R
28 L14*L24*L30; 16 L14*L27*L29; 8 L15*L20*L35; 8 L15*L23*L31
41 L15*L27*L30; 19 L15*L29*LY_R; 20 L16*L35*LY_R; 1 L17*L23*L29
3 L17*L24*L28; 1 L17*L24*L30; 2 L17*L29*L32; 3 L17*L30*L33
5 L17*L30*DROP_OHP_ZQ; 1 L17*L34*DROP_OHQ_Z; 1 L17*LX_R*LY_R; 1 L19*L20*L28
2 L19*L20*L29; 30 L20*L20*L27; 30 L21*L21*LY_R; 8 L21*L27*L28
4 L21*L31*LY_R; 24 L22*L24*TY_P_; 1 L22*TX_P_*LY_R; 1 L24*L27*TX_P_
31 L24*L27*TY_P_; 133 L24*L27*DROP_OCR_YZ; 3 L24*L30*C_OCF_Y; 31 L24*TY_P_*LY_R
9 L27*L32*L33; 23 L27*+OCF*LY_R; 6 L27*C_OCF_Y*TX_P_; 28 L27*TY_P_*DROP_OHQ_Z
133 L27*DROP_OCR_YZ*LX_R; 4 L29*L30*C_OCF_Y; 3 L29*L30*LX_R; 26 L29*TY_P_*LY_R
1 L30*L30*TY_P_; 2 L30*L36*LY_R; 5 L30*TX_P_*TX_P_; 58 L30*LY_R*LY_R
33 L31*L34*L34; 1 CENT*L16; 127 CENT*L26; 9 +OYZ*L10
38 -HYZ*L4; 16 -HYZ*L10; 46 -HYZ*L13; 23 -HYZ*L21
10 -HYZ*L23; 54 -HYZ*L29; 10 -HYZ*L31; 36 -HYZ*DROP_OHQ_Z
54 -HYZ*LX_R; 65 +CDY*L1; 11 -OHP*L27; 4 +CDP*L11
8 +CDP*L14; 37 +CDP*L22; 6 +CDP*L30; 10 +CDP*L34
5 -DFP*L21; 6 -DFP*DROP_OHQ_Z; 5 -DFP*DROP_OCR_YZ; 3 -CFP*L0
60 +CDQ*L0; 16 +CDQ*L30; 3 +HYQ*L12; 1 -CZQ*L17
76 +HFR*L8; 44 +HFR*L13; 36 +HFR*L14; 3 +HFR*L16
11 +HFR*L21; 11 +HFR*L22; 145 +HFR*L26; 14 +HFR*L28
17 +HFR*L31; 55 +HFR*L34; 17 +HFR*TY_P_; 11 +CFR*L27
46 +HZR*L8; 141 +HZR*L12; 197 +HZR*L13; 14 +HZR*L18
6 +HZR*-OHD; 1 +HZR*DROP_OHQ_Z; 23 +OPQ*L4; 3 +OPQ*L24
1 +OPQ*LX_R; 7 -FPR*L3; 68 -CYZ*L10; 35 -CYZ*L15
57 -CYZ*L20; 10 -CYZ*L22; 63 -CYZ*L24; 68 -CYZ*L32
80 -CYZ*-OHD; 5 -CYZ*TY_P_; 190 -CYZ*DROP_OCR_YZ; 4 +OYP*L6
15 +OYP*L31; 63 +OZR*L2; 28 +OZR*L12; 89 +OZR*L32
45 +OZR*L35; 27 +OZR*DROP_OHQ_Z; 32 +CQR*L8; 28 +CQR*L13
26 +CQR*L18; 24 +CQR*L28; 7 +CQR*L32; 45 +CQR*-OHD
3 +CQR*DROP_OHP_ZQ; 3 -DQR*L7; 10 -DQR*L15; 19 -HDQ*L3
2 -HDQ*L5; 25 -HDQ*L14; 27 -HDQ*L18; 42 -HDQ*L31
49 -HDQ*-OHD; 70 -HDQ*C_OCF_Y; 40 -HDQ*DROP_OCR_YZ; 34 +ODY*L2
2 +ODY*L6; 1 +ODY*L11; 47 +ODY*L14; 4 +ODY*L18
17 +ODY*L22; 22 +ODY*L24; 22 +ODY*L27; 3 +ODY*L28
80 +ODY*L31; 67 +ODY*L36; 43 +ODY*-OHD; 45 +ODY*C_OCF_Y
57 +ODY*DROP_OHQ_Z; 58 +OYR*L27; 55 +OYQ*L3; 20 +OYQ*L4
89 +OYQ*L14; 72 +OYQ*L15; 42 +OYQ*L24; 3 +OYQ*DROP_OHQ_Z
75 +HQR*L1; 2 -FPQ*L24; 1 -FPQ*LY_R; 16 -FYZ*L27
9 +YPQ*L3; 4 +YPQ*L4; 5 +YPQ*L30; 10 +YQR*L34
23 -DZQ*L0; 2 -DZQ*L28; 55 -DZQ*L31; 2 -DZQ*L34
3 -DZQ*DROP_OHQ_Z; 20 C_ODQ_Y*L12; 35 C_ODQ_Y*LY_R; 2 C_OPR_ZQ*L29
16 C_HDZ_Q*L12; 1 C_CDR_Q*L14; 6 TPY_P_*L22; 7 TPY_P_*C_OCF_Y
34 Q_OCDH_YZQ*L8; 6 Q_OCDH_YZQ*L30; 123 Q_OYRH_Z*L14; 17 Q_OCDZ_Y*L1
14 Q_OCDQ_Y*L24; 2 Q_OCDR_YZQ*TX_P_; 48 Q_ODQZ_Y*L3; 38 Q_ODQZ_Y*L24
5 Q_ODPQ_Y*L12; 5 Q_ODPQ_Y*L31; 1 Q_HCDR_Q*TX_P_; 60 Q_HZYD_Q*L1
3 M_OHDQZY_1_0*L6; 47 M_OHDQZY_1_0*L12; 3 M_OHDQZY_1_0*L16; 77 M_OHDQZY_1_0*L26
16 M_OHDQZY_1_3*L4; 6 M_OHDQZY_1_3*L20; 2 M_OHDQZY_1_4*L15; 3 M_OHDQZY_1_4*L21
10 M_OHDQZY_1_4*L24; 64 M_OHDQZY_1_4*L31; 3 M_ORDQZY_1_2*L17
```

Upper bound: `-17309237877/7000000000`.

### Leaf TULmpmmpmpmpm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR +HDQ -CFQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FOHCQ +FOQ
P FOCYQ +FYQ
P FODPQ -FPQ
P FODQR -FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PCQ
P POHYQ -PYQ
P POHQR -PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
22 L0*L2*TY_P_; 2 L0*L3*L19; 2 L0*L17*L25; 9 L0*L17*TX_P_
34 L0*L26*LX_R; 80 L0*TY_P_*LX_R; 25 L1*L16*L27; 6 L1*L17*L28
15 L1*L21*L21; 1 L1*L24*L24; 2 L1*L24*C_OCF_Y; 2 L1*L24*TX_P_
20 L1*L24*TY_P_; 24 L1*L24*DROP_OHQ_Z; 3 L1*L25*L27; 1 L2*L3*L4
1 L2*L3*L19; 4 L2*L6*TY_P_; 1 L2*L19*L24; 7 L2*L22*LY_R
8 L2*L23*DROP_OHQ_Z; 5 L2*L26*L29; 21 L2*L28*DROP_OHQ_Z; 11 L2*TY_P_*LY_R
5 L3*L3*L27; 3 L3*L4*L6; 4 L3*L4*L18; 7 L3*L17*TY_P_
3 L3*L18*L22; 6 L3*L22*LX_R; 1 L3*L24*LY_R; 18 L3*L27*LY_R
8 L4*L23*L24; 16 L4*L24*L27; 16 L4*L24*LY_R; 5 L4*L27*L27
5 L4*L27*DROP_OCR_YZ; 1 L5*L5*L29; 1 L5*L17*L28; 25 L5*L27*DROP_OHQ_Z
5 L6*L17*L22; 8 L6*L22*LX_R; 1 L6*L27*TY_P_; 48 L6*L27*DROP_OHQ_Z
37 L6*L27*DROP_OCR_YZ; 1 L6*TY_P_*TY_P_; 7 L7*L17*L19; 3 L17*L17*L22
1 L17*L19*L21; 1 L17*L19*L22; 1 L17*L22*TY_P_; 9 L17*L22*LX_R
15 L17*L23*LY_R; 1 L17*L25*L25; 1 L17*L27*TY_P_; 2 L17*L28*L29
1 L17*LY_R*LY_R; 5 L19*L21*L28; 11 L19*L22*L24; 1 L19*L23*L29
1 L19*L24*TY_P_; 24 L20*L21*L27; 24 L20*L23*L24; 3 L20*L23*L29
13 L20*L27*TX_P_; 10 L21*L25*L28; 5 L21*TY_P_*LX_R; 15 L22*L24*LY_R
10 L22*L27*C_OCF_Y; 5 L23*L23*L29; 1 L23*L24*TX_P_; 15 L23*L27*LX_R
8 L23*L28*L29; 6 L23*L29*LY_R; 2 L23*TX_P_*TX_P_; 40 L24*L27*TY_P_
1 L24*L29*LY_R; 1 L27*L27*DROP_OHP_ZQ; 1 L27*+OCF*DROP_OHQ_Z; 18 L27*+OCF*DROP_OCR_YZ
4 L27*TY_P_*DROP_OHQ_Z; 40 L27*TY_P_*LX_R; 1 L29*TY_P_*LX_R; 9 KLOW*L23
22 KLOW*L25; 2 KLOW*DROP_OHP_ZQ; 42 KLOW*TY_P_; 18 KLOW*DROP_OCR_YZ
18 -OHF*L27; 1 +CDP*L2; 4 +CDP*L19; 6 +CDP*L21
2 +CDP*L25; 56 +CDP*C_OHD_Z; 7 +CDP*DROP_OHP_ZQ; 4 +CDP*TY_P_
6 +CDP*DROP_OHQ_Z; 1 -DFP*L24; 18 -DFP*LY_R; 30 +ODP*L27
9 -HFQ*L27; 3 +DFQ*L18; 1 +DFQ*LX_R; 1 +HFR*L24
40 +HFR*L27; 5 +HFR*+OCF; 68 +HFR*TY_P_; 52 +HFR*DROP_OHQ_Z
77 +HFR*DROP_OCR_YZ; 15 +OPQ*L0; 1 +OPQ*L3; 22 +OPQ*L4
8 +OPQ*L16; 9 +OPQ*DROP_OHQ_Z; 9 +OPQ*LX_R; 20 -FPR*L0
11 -FPR*L4; 15 -FPR*L21; 11 -FPR*-OHD; 1 -FPR*TY_P_
23 -HPQ*L4; 9 -HPQ*L16; 9 -HPQ*L20; 28 -DQR*L1
8 -DQR*L4; 2 -DQR*L6; 11 -DQR*L18; 42 -DQR*-OHD
17 -DQR*C_OCF_Y; 24 -DQR*DROP_OHQ_Z; 3 +HDQ*L3; 8 +HDQ*L4
10 +HDQ*L18; 39 +HDQ*L25; 5 +HDQ*L26; 24 +HDQ*DROP_OHQ_Z
16 -CFQ*L3; 6 -CFQ*L6; 2 -CFQ*L18; 5 -CFQ*L23
5 -CFQ*L25; 8 -CFQ*L28; 9 -CFQ*-OHD; 16 -CFQ*C_OCF_Y
11 -CFQ*DROP_OHQ_Z; 31 -CFQ*DROP_OCR_YZ; 18 +HQR*L2; 1 +DPQ*L2
1 +DPQ*L24; 15 +DPQ*L27; 12 C_OHP_ZQ*L4; 11 C_OCP_Y*L27
21 C_OCQ_Y*L27; 1 C_OPR_ZQ*L21; 5 C_HDP_Q*LY_R; 2 C_HDR_Q*L29
8 Q_OCDQ_Y*L6; 5 Q_HDPF_Q*L2; 11 Q_HDPF_Q*L17; 3 Q_CDPF_Q*L4
9 Q_CDPF_Q*L26; 3 Q_CDPF_Q*DROP_OHP_ZQ; 1 Q_CDPF_Q*TX_P_; 2 Q_CDPF_Q*LY_R
```

Upper bound: `-1811596989/1000000000`.

### Leaf TULmpmmpmpmppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR +HDQ +CFQ -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZP +ODZ
P OHDPQ +ODQ
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHZQ -DZQ
P DOCYQ -DYQ
P DOFPQ +DPQ
P DOFPR +DPR
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
16 L0*L3*L7; 96 L0*L3*L19; 60 L0*L3*TX_P_; 31 L0*L7*L19
7 L0*L10*L17; 30 L0*L10*L25; 23 L0*L12*L23; 2 L0*L12*L29
1 L0*L17*L24; 1 L0*L17*L30; 8 L0*L19*TX_P_; 24 L0*L27*L34
143 L0*L27*+OCF; 307 L0*L27*DROP_OHP_ZQ; 24 L0*L27*LY_R; 88 L1*L2*L23
8 L1*L2*L30; 17 L1*L3*L20; 72 L1*L12*L24; 2 L1*L12*TX_P_
8 L1*L14*L30; 1 L1*L16*L31; 1 L1*L16*L36; 4 L1*L20*L35
17 L1*L21*L27; 12 L1*L23*L24; 98 L1*L24*L27; 34 L1*L24*L31
19 L1*L24*TY_P_; 32 L1*L27*LX_R; 4 L1*L30*L30; 50 L1*L31*L34
32 L2*L4*TX_P_; 18 L2*L4*LY_R; 14 L2*L10*L21; 3 L2*L17*TY_P_
28 L2*L19*L20; 22 L2*L23*L24; 91 L2*L23*LY_R; 12 L2*L27*L33
5 L2*L27*LX_R; 1 L3*L4*L14; 50 L3*L4*L20; 3 L3*L4*L31
10 L3*L8*L8; 44 L3*L8*L14; 6 L3*L8*L19; 18 L3*L10*L23
43 L3*L10*L24; 41 L3*L11*L27; 4 L3*L12*L14; 27 L3*L14*L14
1 L3*L14*L17; 113 L3*L18*L27; 3 L3*L19*L29; 3 L3*L19*TX_P_
97 L3*L23*L27; 5 L3*L25*L27; 18 L3*L27*L28; 26 L3*L27*L36
12 L3*L27*+OCF; 103 L3*L27*DROP_OHQ_Z; 1 L4*L4*L17; 22 L4*L4*L21
2 L4*L9*L12; 21 L4*L12*L21; 2 L4*L16*L23; 213 L4*L16*LY_R
4 L4*L21*L24; 1 L4*L21*L34; 2 L4*L22*TX_P_; 197 L4*L23*L24
1 L4*L24*L29; 53 L4*L24*L31; 8 L4*L24*L34; 66 L4*L24*L35
6 L4*L24*LX_R; 5 L5*L17*L20; 85 L6*L7*L27; 27 L6*L10*L19
36 L6*L27*L34; 53 L6*L27*L36; 33 L6*L27*+OCF; 60 L6*L27*DROP_OHP_ZQ
85 L7*L7*L19; 4 L7*L17*L19; 8 L7*L19*L19; 90 L7*L19*L24
1 L8*L14*L17; 15 L8*L27*L28; 12 L8*L27*L35; 12 L9*L9*L27
10 L9*L9*L31; 21 L9*L10*DROP_OHQ_Z; 4 L9*L27*DROP_OHQ_Z; 7 L9*L31*L34
7 L10*L12*L30; 65 L10*L12*L31; 3 L10*L13*L19; 15 L10*L13*L23
14 L10*L13*L24; 3 L10*L14*L17; 12 L10*L14*L31; 7 L10*L16*L28
3 L10*L19*L26; 43 L10*L20*L30; 22 L10*L20*L31; 7 L10*L22*L29
27 L10*L24*LY_R; 24 L10*L27*-OHD; 30 L10*L27*DROP_OHP_ZQ; 26 L10*L27*DROP_OHQ_Z
12 L10*L31*L34; 12 L10*L31*LY_R; 9 L10*L34*DROP_OCR_YZ; 24 L11*L14*L27
27 L11*L27*LX_R; 4 L12*L13*L27; 10 L12*L21*L27; 30 L12*L23*L27
15 L12*L27*L28; 54 L12*L27*LX_R; 7 L12*L31*L34; 1 L14*L17*L28
10 L14*L21*L24; 16 L14*L24*L25; 4 L14*L24*L30; 108 L14*L27*C_OHD_Z
81 L14*L27*DROP_OHQ_Z; 89 L14*L27*LX_R; 84 L14*L27*LY_R; 15 L14*L30*LY_R
2 L15*L17*L23; 37 L15*L25*L27; 3 L15*L31*L31; 29 L16*L22*L27
6 L16*L24*L27; 4 L16*L27*TX_P_; 7 L17*L19*L28; 4 L17*L21*L27
25 L17*L27*L29; 70 L17*L27*DROP_OCP_Y; 219 L18*L19*L27; 2 L18*L23*L24
3 L18*L27*L35; 219 L18*L27*DROP_OCP_Y; 2 L19*L20*L34; 26 L19*L23*L29
1 L19*L29*L34; 85 L20*L27*L29; 2 L20*L28*L31; 43 L20*L31*L34
31 L21*L27*DROP_OCP_Y; 4 L22*L24*L31; 4 L22*L24*TX_P_; 50 L22*L27*L33
15 L23*L31*L34; 6 L24*L26*TX_P_; 199 L24*L27*TY_P_; 85 L24*L27*DROP_OHQ_Z
37 L24*L36*LY_R; 84 L26*L27*L36; 99 L27*L27*L33; 24 L27*L27*C_OHD_Z
199 L27*L27*DROP_OHP_ZQ; 15 L27*L34*L35; 70 L27*TX_P_*TY_P_; 85 L27*DROP_OHQ_Z*LX_R
50 L31*L34*L34; 77 KLOW*L5; 11 KLOW*L12; 14 KLOW*L17
39 KLOW*L23; 52 KLOW*L25; 12 KLOW*L35; 12 KLOW*TX_P_
295 KLOW*TY_P_; 12 KLOW*LX_R; 11 CENT*L30; 72 CENT*L31
43 CENT*DROP_OHQ_Z; 36 +HDF*L27; 4 +OYZ*L27; 45 -HYZ*L3
65 -HYZ*L12; 23 -HYZ*L14; 9 -HYZ*L21; 15 -HYZ*L23
34 -HYZ*L25; 58 -HYZ*L30; 1 +OCY*L17; 15 +OCY*L22
92 +OCY*L24; 61 +OCY*L30; 23 +OCY*L36; 107 -OHZ*L27
181 +CDP*L1; 35 +CDP*L3; 6 +CDP*L8; 572 +CDP*L14
50 +CDP*L22; 37 +CDP*L29; 571 +CDP*L34; 34 +CDP*DROP_OHQ_Z
89 +CDP*DROP_OCR_YZ; 37 +CDP*LX_R; 89 -DFP*L1; 32 -DFP*L2
1 -DFP*L5; 7 -DFP*L11; 7 -DFP*L19; 2 -DFP*L22
5 -DFP*L24; 29 -DFP*-OHD; 1 -DFP*DROP_OHQ_Z; 200 -DFP*LY_R
101 +DFQ*L27; 65 +HZQ*L27; 76 +HFR*L2; 11 +HFR*L20
261 +HFR*TY_P_; 139 +CDR*L27; 57 +HZR*L10; 15 -DYR*L27
40 +OPQ*L4; 7 +OPQ*L10; 2 +OPQ*L14; 123 -FPR*L3
6 -FPR*L14; 4 -FPR*L17; 1 -FPR*L21; 29 -FPR*L23
6 -FPR*L28; 85 -FPR*L29; 27 -FPR*L32; 6 -FPR*L34
131 -FPR*DROP_OCR_YZ; 27 -CYZ*L10; 1 -CYZ*L17; 52 -CYZ*L20
49 -CYZ*L24; 27 -CYZ*L32; 23 -CYZ*L34; 75 -CYZ*+OCF
11 -CYZ*DROP_OCR_YZ; 3 -OZP*L10; 30 -OZQ*L14; 21 -OZQ*L24
30 -OZQ*L34; 34 -OZQ*+OCF; 38 -OZQ*LY_R; 15 +OZR*L14
15 +OZR*L19; 11 +OZR*L20; 22 +OZR*L22; 16 +OZR*L29
57 +OZR*L32; 4 +OZR*L33; 28 +OZR*C_OCF_Y; 15 +OZR*TY_P_
16 +OZR*LX_R; 63 -HPQ*L2; 11 -HPQ*L5; 1 -HPQ*L24
1 -HPQ*TY_P_; 124 +CQR*L1; 50 +CQR*L5; 74 +CQR*L12
15 +CQR*L15; 63 +CQR*L16; 52 +CQR*L19; 238 +CQR*L26
40 +CQR*L30; 40 +CQR*L35; 76 +CQR*DROP_OCP_Y; 439 -DQR*L1
147 -DQR*L4; 10 -DQR*L6; 88 -DQR*L8; 56 -DQR*L12
7 -DQR*L14; 6 -DQR*L25; 18 -DQR*L31; 66 -DQR*L35
303 -DQR*-OHD; 59 -DQR*DROP_OHP_ZQ; 55 -DQR*DROP_OCP_Y; 288 -DQR*DROP_OHQ_Z
368 -DQR*DROP_OCR_YZ; 201 +HDQ*L4; 7 +HDQ*L8; 34 +HDQ*L12
8 +HDQ*L14; 314 +HDQ*L17; 288 +HDQ*L20; 288 +HDQ*L25
73 +HDQ*L28; 36 +HDQ*L32; 343 +HDQ*DROP_OHP_ZQ; 3 +HDQ*TY_P_
11 +HDQ*LX_R; 109 +HDQ*LY_R; 8 -ODY*L3; 2 -ODY*L12
6 -ODY*L16; 123 -ODY*L24; 65 +HPR*L27; 288 +HQR*L20
7 -FPQ*L10; 1 -FPQ*L19; 6 -FQR*L24; 131 -FQR*L27
15 -YZR*L27; 355 C_OHP_ZQ*L4; 29 C_OHP_ZQ*L21; 24 C_OCD_Y*L24
15 C_ODR_ZQ*L27; 281 C_OPR_ZQ*L0; 1 C_OPR_ZQ*L34; 22 C_HDR_Q*L2
49 C_HDR_Q*L4; 39 Q_ODQH_Z*L27; 3 Q_OYPR_ZQ*L27
```

Upper bound: `-54560729/100000000`.

### Leaf TULmpmmpmpmppp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR +HDQ +CFQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHYQ -DYQ
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOCDZ +YDZ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
M ODRQYZ -1
M ORDQZY 1
M DORZYQ 1
M DROZQY -1
M RODYZQ -1
M RDOYQZ 1
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
19 L0*L0*L21; 4 L0*L1*L4; 35 L0*L3*L22; 13 L0*L8*L17
142 L0*L8*L30; 38 L0*L12*L27; 15 L0*L12*L31; 5 L0*L17*L27
4 L0*L17*L34; 7 L0*L19*L27; 27 L1*L1*L8; 42 L1*L1*L30
4 L1*L2*L2; 8 L1*L2*L18; 184 L1*L2*L30; 2 L1*L2*TX_P_
8 L1*L4*DROP_OHQ_Z; 20 L1*L5*L8; 1 L1*L6*L8; 59 L1*L8*L14
1 L1*L10*DROP_OHQ_Z; 2 L1*L11*L29; 13 L1*L12*L19; 39 L1*L12*DROP_OCR_YZ
6 L1*L16*L30; 1 L1*L17*TX_P_; 12 L1*L20*L29; 26 L1*L22*L24
16 L1*L24*L30; 9 L1*L24*+OCF; 15 L1*L24*DROP_OHQ_Z; 1 L1*L26*TX_P_
20 L1*L27*+OCF; 8 L2*L3*L10; 12 L2*L3*L34; 30 L2*L10*L34
33 L2*L12*L23; 4 L2*L17*L23; 8 L2*L17*LY_R; 22 L2*L19*L20
163 L2*L22*L30; 4 L2*L23*L34; 7 L2*L24*LY_R; 8 L2*L36*TY_P_
15 L2*L36*LY_R; 11 L3*L3*L14; 1 L3*L4*L6; 55 L3*L4*L8
2 L3*L4*L13; 12 L3*L4*L14; 2 L3*L4*L22; 169 L3*L8*L14
59 L3*L8*L27; 2 L3*L10*L22; 132 L3*L10*L27; 8 L3*L14*L16
28 L3*L14*L21; 4 L3*L14*L22; 3 L3*L14*L30; 10 L3*L14*LY_R
8 L3*L16*L32; 11 L3*L17*L22; 26 L3*L18*L27; 28 L3*L22*L24
103 L3*L27*L30; 57 L3*L27*DROP_OHQ_Z; 6 L4*L8*L28; 103 L4*L8*L30
1 L4*L10*L21; 10 L4*L11*L24; 2 L4*L12*L19; 3 L4*L12*L29
65 L4*L12*L31; 8 L4*L12*L35; 4 L4*L16*L21; 6 L4*L16*L30
3 L4*L16*L35; 70 L4*L20*L30; 53 L4*L24*L27; 156 L4*L24*L30
57 L4*L24*LY_R; 4 L4*L26*L27; 40 L4*L30*LY_R; 4 L4*LY_R*LY_R
8 L5*L10*L30; 18 L5*L21*L27; 2 L6*L12*L27; 9 L6*L27*L27
3 L6*L29*DROP_OHQ_Z; 73 L8*L10*L27; 1 L8*L16*L23; 7 L8*L17*L27
19 L8*L19*L27; 144 L8*L23*L30; 15 L8*L24*L34; 1 L8*L27*L29
47 L8*L27*L34; 41 L8*L27*TY_P_; 8 L9*L15*L34; 19 L10*L11*L12
10 L10*L12*L17; 26 L10*L12*L19; 2 L10*L12*L31; 53 L10*L12*L35
10 L10*L16*LY_R; 144 L10*L30*DROP_OHQ_Z; 73 L10*L30*LY_R; 15 L11*L20*L27
8 L12*L14*LY_R; 5 L12*L19*L20; 1 L12*L19*L22; 34 L12*L22*L27
1 L12*L24*TX_P_; 12 L12*L27*L28; 2 L12*L32*LY_R; 1 L12*TX_P_*TX_P_
1 L12*TX_P_*LX_R; 2 L13*L18*L27; 1 L13*L23*TY_P_; 75 L13*L27*L32
4 L14*L17*L28; 32 L14*L24*L32; 93 L14*L27*L31; 35 L14*L27*L33
3 L14*L27*DROP_OHP_ZQ; 37 L15*L27*DROP_OHQ_Z; 7 L15*L31*L34; 2 L16*L23*L24
3 L16*L27*L36; 3 L17*L20*L29; 5 L17*L20*L34; 5 L17*L23*LY_R
7 L17*L27*L30; 1 L17*L27*DROP_OHQ_Z; 4 L17*L32*LY_R; 5 L18*L23*L24
9 L19*L27*L30; 1 L19*L31*DROP_OHQ_Z; 31 L20*L27*L29; 43 L20*L27*LX_R
3 L20*L29*TX_P_; 28 L20*L30*LY_R; 2 L20*L35*LY_R; 1 L20*TX_P_*LY_R
26 L21*L27*L35; 3 L22*L29*L30; 3 L22*L30*LY_R; 1 L23*L24*L24
42 L24*L27*DROP_OHQ_Z; 9 L27*L27*L29; 43 L27*L30*L34; 7 L27*-OHD*TY_P_
8 L29*L30*LY_R; 1 L30*DROP_OHP_ZQ*TX_P_; 15 L31*L31*L34; 25 L31*L34*L34
14 L31*TX_P_*LY_R; 8 KLOW*TY_P_; 25 KLOW*LY_R; 14 CENT*L4
1 +HCF*L27; 82 +OYZ*L8; 3 +OYZ*L30; 9 +OYZ*LY_R
66 -HYZ*L2; 28 -HYZ*L7; 73 -HYZ*L10; 8 -HYZ*L15
6 -HYZ*L16; 13 -HYZ*L18; 167 -HYZ*L21; 2 -HYZ*L22
157 -HYZ*L31; 45 -HYZ*-OHD; 107 -HYZ*DROP_OHQ_Z; 28 -HYZ*LX_R
89 -HYZ*LY_R; 16 +CDY*L12; 4 +CDP*L1; 1 +CDP*L7
4 +CDP*L14; 22 +CDP*L22; 8 +CDP*L30; 4 +CDP*L32
8 +CDP*L35; 3 -DFP*L12; 2 -DFP*L31; 5 -CYP*L27
7 +CDQ*L0; 5 +CDQ*L24; 2 -CYQ*L10; 29 -CYQ*L27
8 +HFR*L30; 15 +HFR*L31; 13 +HFR*DROP_OHQ_Z; 44 +CDR*L27
64 +HZR*L4; 5 +OPQ*L0; 8 +OPQ*L3; 9 +OPQ*L4
8 +OPQ*L30; 1 -FPR*L3; 8 -CYZ*L3; 13 -CYZ*L4
154 -CYZ*L8; 2 -CYZ*L11; 177 -CYZ*L12; 180 -CYZ*L13
8 -CYZ*L24; 32 -CYZ*L34; 8 -CYZ*TX_P_; 13 -CYZ*TY_P_
204 -CYZ*DROP_OHQ_Z; 166 -CYZ*DROP_OCR_YZ; 8 -CYZ*LX_R; 1 +OYP*L6
4 +OYP*L20; 13 +OYP*LY_R; 28 -OZQ*L3; 1 -OZQ*L17
2 +OZR*L6; 59 +OZR*L11; 54 +OZR*L28; 5 +OZR*-OHD
4 +OZR*DROP_OHP_ZQ; 7 +OZR*TY_P_; 15 -HPQ*L2; 1 -HPQ*L6
13 +CQR*L1; 33 +CQR*L3; 38 +CQR*L8; 7 +CQR*L24
22 +CQR*L28; 33 +CQR*L33; 37 +CQR*-OHD; 8 +CQR*DROP_OHP_ZQ
22 +CQR*TY_P_; 53 +CQR*DROP_OCR_YZ; 68 -DQR*L3; 48 -DQR*L8
26 -DQR*L18; 8 -DQR*L24; 40 -DQR*L28; 61 -DQR*L33
10 -DQR*L35; 32 -DQR*-OHD; 34 -DQR*C_OCF_Y; 10 -DQR*DROP_OHP_ZQ
22 -DQR*DROP_OCR_YZ; 19 +HDQ*L1; 35 +HDQ*L3; 5 +HDQ*L18
29 +HDQ*L25; 37 +HDQ*L28; 15 +HDQ*L29; 131 +HDQ*L30
46 +HDQ*L31; 1 +HDQ*L34; 6 +HDQ*DROP_OHP_ZQ; 16 +HDQ*LX_R
28 +ODY*L2; 3 +ODY*L4; 33 +ODY*L13; 11 +ODY*L23
80 +ODY*L26; 111 +ODY*L30; 49 +ODY*L33; 8 +ODY*L35
5 +ODY*DROP_OHP_ZQ; 10 +ODY*TY_P_; 23 +ODY*DROP_OHQ_Z; 24 +ODZ*L27
2 +OYQ*L14; 26 +HQR*L27; 3 +DPQ*L4; 1 +DPQ*L6
3 -FPQ*L30; 13 -DYZ*L24; 10 +YPQ*L4; 5 +YPQ*L27
1 C_OHP_ZQ*L31; 2 C_ODZ_Y*L19; 5 C_OQR_Z*L27; 40 C_HDR_Q*L4
35 C_HDR_Q*L30; 48 C_HDR_Q*DROP_OHQ_Z; 26 C_HDR_Q*LY_R; 38 C_CDR_Q*L8
13 C_CDR_Q*L14; 24 C_CDR_Q*L22; 94 C_CDR_Q*L30; 26 Q_OYRH_Z*L14
21 Q_OCDZ_Y*L24; 1 M_ORDQZY_1_3*L4; 2 M_ORDQZY_1_3*L11; 144 M_ORDQZY_1_3*L31
36 M_ORDQZY_1_3*-OHD; 60 M_ORDQZY_1_3*+OCF; 4 M_ORDQZY_1_3*DROP_OHP_ZQ; 37 M_ORDQZY_1_3*LY_R
```

Upper bound: `-3748757813/1000000000`.

### Leaf TULmpmmpmppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR -CFQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHQR -DHQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOZQR -DZQ
P DHCYQ -DYQ
P FOHCQ +FOQ
P FOCYQ +FYQ
P FODPQ -FPQ
P FODQR -FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PCQ
P POHYQ -PYQ
P POHQR -PQR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
42 L0*L1*L24; 36 L0*L3*L4; 14 L0*L10*L31; 1 L0*L12*L28
2 L0*L27*L34; 21 L0*L27*DROP_OHQ_Z; 17 L1*L1*L1; 2 L1*L1*L35
20 L1*L2*L6; 4 L1*L2*L10; 7 L1*L2*L14; 1 L1*L2*TY_P_
23 L1*L3*L23; 28 L1*L6*L27; 12 L1*L9*L27; 2 L1*L10*L29
8 L1*L12*L24; 2 L1*L14*L24; 12 L1*L17*L24; 6 L1*L23*L24
1 L1*L24*L32; 92 L1*L24*DROP_OHQ_Z; 2 L1*L27*L36; 2 L1*L27*DROP_OCR_YZ
8 L1*L28*L29; 4 L1*L29*L30; 2 L1*L29*L31; 3 L1*L29*L36
2 L2*L2*L30; 4 L2*L2*L34; 18 L2*L2*TY_P_; 1 L2*L3*L8
1 L2*L4*L23; 37 L2*L5*L20; 2 L2*L9*L27; 1 L2*L9*L31
3 L2*L10*L30; 2 L2*L10*LX_R; 6 L2*L11*L26; 1 L2*L12*LY_R
8 L2*L17*L22; 1 L2*L17*L31; 44 L2*L19*TY_P_; 17 L2*L20*L27
9 L2*L23*L24; 1 L2*L23*L29; 13 L2*L23*L32; 1 L2*L23*L34
25 L2*L23*C_OHD_Z; 6 L2*L23*C_OCF_Y; 14 L2*L23*DROP_OHQ_Z; 103 L2*L23*DROP_OCR_YZ
2 L2*L27*+OCF; 26 L2*L27*TX_P_; 18 L2*L27*LX_R; 12 L3*L4*L4
23 L3*L4*L6; 34 L3*L4*L27; 26 L3*L24*LY_R; 1 L3*L30*L30
2 L3*L31*L36; 12 L4*L5*L17; 20 L4*L6*L23; 11 L4*L6*L32
15 L4*L13*L27; 3 L4*L19*L24; 105 L4*L20*L27; 128 L4*L24*LY_R
7 L5*L5*L29; 1 L5*L9*L17; 1 L5*L14*L24; 10 L5*L17*L19
5 L5*L17*L23; 8 L5*L18*L24; 7 L5*L22*L24; 10 L5*L23*L29
22 L5*L24*L29; 34 L5*L29*LY_R; 2 L6*L14*L23; 7 L6*L18*L21
58 L6*L18*L27; 68 L6*L22*L27; 3 L6*L24*L35; 13 L6*L24*TY_P_
39 L6*L27*L33; 62 L6*L27*DROP_OHQ_Z; 2 L7*L10*L28; 3 L7*L24*L31
2 L8*L14*L35; 1 L8*L17*L24; 1 L8*L17*C_OCF_Y; 3 L8*L23*L24
1 L8*L24*L35; 6 L8*L27*L27; 1 L8*L27*LX_R; 6 L9*L10*L27
1 L9*L10*L36; 1 L9*L15*L26; 1 L10*L10*L29; 15 L10*L14*L30
1 L10*L15*DROP_OHQ_Z; 1 L10*L23*L30; 6 L10*L24*L27; 1 L10*L24*L30
15 L10*L30*L34; 2 L10*L36*LX_R; 1 L12*L17*L25; 3 L12*L27*+OCF
44 L12*L27*LX_R; 15 L13*L19*L27; 14 L13*L24*LY_R; 3 L14*L24*L35
28 L14*L24*LX_R; 4 L14*L27*DROP_OHQ_Z; 1 L15*L23*L24; 2 L15*L24*L24
2 L15*L24*L29; 2 L16*L17*L19; 15 L16*L27*L34; 10 L17*L19*L22
34 L17*L19*L28; 20 L17*L19*L29; 44 L17*L19*LY_R; 13 L17*L21*L23
5 L17*L22*L24; 17 L17*L22*L28; 27 L17*L22*LY_R; 29 L17*L24*TY_P_
21 L17*L26*L27; 36 L17*L27*DROP_OHP_ZQ; 5 L17*L27*DROP_OHQ_Z; 2 L17*L28*C_OCF_Y
1 L17*L28*LY_R; 1 L17*LY_R*LY_R; 133 L18*L24*L27; 44 L18*L27*DROP_OHP_ZQ
10 L19*L19*L21; 5 L19*L28*L29; 2 L19*TX_P_*TX_P_; 13 L21*L21*TY_P_
1 L21*L23*L24; 3 L21*L26*L34; 16 L21*L27*TY_P_; 14 L22*L24*L27
50 L22*L24*L29; 12 L22*L24*TY_P_; 11 L23*L23*L29; 30 L24*L24*L28
11 L24*L27*L30; 47 L24*L27*C_OHD_Z; 5 L24*L27*TX_P_; 33 L24*L27*DROP_OHQ_Z
58 L24*L27*DROP_OCR_YZ; 22 L24*L28*L29; 1 L24*L30*DROP_OHP_ZQ; 5 L24*TX_P_*LY_R
104 L24*TY_P_*LY_R; 14 L27*L27*DROP_OHQ_Z; 1 L27*L30*-OHD; 6 L27*L31*L32
4 L27*L33*C_OHD_Z; 11 L27*L33*LX_R; 8 L27*TX_P_*TX_P_; 10 L27*TY_P_*LX_R
1 L27*DROP_OHQ_Z*DROP_OHQ_Z; 1 L27*DROP_OCR_YZ*DROP_OCR_YZ; 58 L27*LX_R*LY_R; 26 L29*TX_P_*LY_R
2 L31*L33*LY_R; 1 LY_R*LY_R*LY_R; 4 KLOW*L9; 2 KLOW*L10
24 KLOW*L21; 33 KLOW*L23; 32 KLOW*L25; 8 KLOW*L34
28 KLOW*TX_P_; 110 KLOW*TY_P_; 24 KLOW*DROP_OHQ_Z; 10 KLOW*DROP_OCR_YZ
54 KLOW*LX_R; 3 CENT*L31; 8 CENT*L34; 8 CENT*LY_R
3 +OYZ*L8; 1 +OYZ*L12; 2 -HYZ*L0; 2 -HYZ*L12
8 -HYZ*L14; 2 -HYZ*L30; 2 +OCY*L2; 1 -HCY*L10
2 -HFZ*L2; 104 +CDP*L0; 19 +CDP*L2; 57 +CDP*L4
51 +CDP*L5; 1 +CDP*L9; 44 +CDP*L19; 77 +CDP*L22
20 +CDP*DROP_OHP_ZQ; 41 +ODP*L27; 6 +HDP*L27; 14 -DZP*L27
1 +CDQ*L34; 53 +DFQ*L8; 53 +DFQ*L9; 88 +DFQ*L18
51 +DFQ*L26; 7 +DFQ*L28; 11 +DFQ*L29; 10 +DFQ*L32
114 +DFQ*-OHD; 43 +DFQ*+OCF; 4 +DFQ*TX_P_; 28 +DFQ*DROP_OHQ_Z
18 -OHR*L22; 1 +HFR*L8; 123 +HFR*L18; 36 +HFR*L33
45 +HFR*C_OHD_Z; 26 +HFR*TX_P_; 92 +HFR*DROP_OHQ_Z; 112 +HFR*DROP_OCR_YZ
1 -CYR*L12; 8 +HZR*L27; 1 +HZR*L35; 3 +HZR*+OCF
1 +HZR*TY_P_; 30 +HZR*LX_R; 2 +HZR*LY_R; 71 +OPQ*L4
19 +OPQ*L17; 13 +OPQ*L20; 17 +OPQ*-OHD; 39 +OPQ*TX_P_
19 -FPR*LY_R; 5 -CYZ*L2; 2 -CYZ*L6; 11 -CYZ*L10
8 -CYZ*L15; 2 -CYZ*L25; 11 -CYZ*L32; 8 -CYZ*DROP_OCR_YZ
3 -OZQ*L10; 43 -HPQ*L4; 10 -HPQ*L18; 3 +CQR*L24
27 +DQR*L7; 1 +DQR*L14; 16 +DQR*L17; 12 +DQR*L18
30 +DQR*L24; 14 +DQR*L27; 7 +DQR*L28; 17 +DQR*L29
18 +DQR*-OHD; 16 +DQR*DROP_OHQ_Z; 16 -CFQ*L5; 16 -CFQ*L7
22 -CFQ*L12; 11 -CFQ*L23; 28 -CFQ*L25; 37 -CFQ*L28
20 -CFQ*L30; 7 -CFQ*L31; 13 -CFQ*L35; 1 -CFQ*L36
58 -CFQ*-OHD; 8 -CFQ*DROP_OHP_ZQ; 77 -CFQ*TY_P_; 14 -CFQ*DROP_OHQ_Z
103 -CFQ*DROP_OCR_YZ; 20 +DPQ*L17; 63 +DPQ*LY_R; 19 -OFQ*L24
1 +FYQ*L10; 3 +FYQ*L24; 49 -FPQ*L5; 35 -FPQ*LY_R
11 -FQR*L17; 14 -FQR*L20; 2 +FZQ*L10; 6 -YZR*L27
32 +CPQ*L6; 1 -PQR*L34; 5 C_OCZ_Y*L8; 71 C_CDF_Q*L6
45 C_CDF_Q*L22; 6 C_CDF_Q*LX_R; 8 C_DFR_Q*L6; 63 TPY_P_*L1
46 TPY_P_*L17; 73 Q_OQFR_Z*L27; 13 Q_HDPF_Q*L24; 4 Q_HDFR_Q*L17
29 Q_HDPR_Q*L17; 29 Q_CDPF_Q*DROP_OHP_ZQ; 32 Q_DPFR_Q*L2; 7 Q_DPFR_Q*L4
12 Q_DPFR_Q*L22
```

Upper bound: `-2566735661/1000000000`.

### Leaf TULmpmmpmpppmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ -ODY -OFZ`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFZQ -OFQ
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHQR -DHQ
P DOCYQ -DYQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOZQR -DZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHFQ -ZFQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
M OCFQYZ -1
M OFCQZY 1
M COFZYQ 1
M CFOZQY -1
M FOCYZQ -1
M FCOYQZ 1
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCF YZQ 1 lower 823/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
4 L0*L2*L27; 15 L0*L2*LY_R; 2 L0*L6*TX_P_; 10 L0*L8*L30
6 L1*L8*L8; 1 L1*L23*TY_P_; 7 L1*L24*+OCF; 22 L1*L24*DROP_OCP_Y
4 L1*L30*L30; 2 L1*LX_R*LX_R; 9 L2*L3*DROP_OCR_YZ; 1 L2*L4*L13
3 L2*L4*L19; 11 L2*L4*LY_R; 3 L2*L11*L33; 5 L2*L13*L19
61 L2*L17*L28; 1 L2*L18*L23; 5 L2*L18*L30; 1 L2*L19*L21
218 L2*L26*TY_P_; 6 L2*L33*TY_P_; 3 L2*L35*TY_P_; 1 L2*L35*DROP_OCR_YZ
22 L2*TY_P_*TY_P_; 7 L3*L4*L6; 1 L3*L4*L31; 2 L3*L14*+OCF
1 L3*L14*DROP_OHP_ZQ; 1 L3*L21*L27; 9 L3*L27*L33; 1 L3*L30*L30
2 L4*L4*TX_P_; 1 L4*L6*L36; 1 L4*L10*L15; 1 L4*L12*L35
3 L4*L16*L35; 6 L4*L24*LY_R; 1 L4*L32*L36; 22 L4*DROP_OHP_ZQ*TY_P_
10 L5*L24*DROP_OCP_Y; 1 L6*L7*L22; 2 L6*L18*L21; 2 L6*L22*TX_P_
2 L6*L26*L32; 4 L6*L27*L29; 8 L6*L27*-OHD; 3 L6*L27*DROP_OHQ_Z
23 L6*L27*DROP_OCR_YZ; 3 L8*L14*L29; 3 L8*L17*L28; 1 L8*L18*L21
1 L8*L19*L30; 1 L8*L24*L30; 1 L8*L24*L31; 2 L8*L26*LY_R
2 L8*L27*DROP_OCR_YZ; 1 L9*L24*+OCF; 2 L9*L31*L32; 4 L10*L12*L17
1 L10*L16*L34; 5 L10*L27*L27; 5 L10*L27*DROP_OCR_YZ; 1 L12*L13*L33
3 L12*L17*L26; 4 L12*L17*+OCF; 5 L12*L27*LY_R; 1 L12*L31*TY_P_
1 L13*L14*L24; 4 L13*L17*TY_P_; 1 L13*L27*L32; 1 L13*L30*L30
1 L13*L31*L36; 2 L14*L21*L26; 2 L14*L24*L36; 5 L14*L27*LX_R
4 L14*L30*LX_R; 2 L15*L15*L24; 1 L15*L27*L31; 3 L17*L17*L26
11 L17*L19*L29; 4 L17*L19*L33; 3 L17*L19*TY_P_; 1 L17*L21*L24
1 L17*L22*L24; 1 L17*L24*L26; 2 L17*L24*DROP_OCP_Y; 37 L17*L26*L28
20 L17*L27*TY_P_; 23 L17*L27*DROP_OCR_YZ; 2 L17*C_OHD_Z*LX_R; 3 L17*DROP_OCP_Y*DROP_OCP_Y
20 L17*TY_P_*DROP_OCR_YZ; 18 L17*LY_R*LY_R; 1 L18*L31*L31; 1 L19*L23*LY_R
1 L21*L24*DROP_OCP_Y; 1 L21*L24*TX_P_; 1 L21*L24*LX_R; 3 L21*L27*LY_R
1 L21*L31*TY_P_; 1 L21*LY_R*LY_R; 2 L22*L27*L30; 1 L22*L27*DROP_OCP_Y
4 L22*L27*LX_R; 1 L23*L25*L33; 1 L24*L25*DROP_OHQ_Z; 11 L24*L26*TY_P_
29 L24*L27*DROP_OCP_Y; 1 L24*L27*DROP_OHQ_Z; 33 L24*L27*DROP_OCR_YZ; 1 L24*L31*L36
2 L24*L34*L35; 2 L24*DROP_OCP_Y*TX_P_; 9 L24*DROP_OCP_Y*LY_R; 2 L24*TY_P_*LX_R
1 L24*DROP_OHQ_Z*LY_R; 33 L24*LY_R*LY_R; 3 L27*DROP_OHP_ZQ*DROP_OHP_ZQ; 6 L27*DROP_OHQ_Z*DROP_OCR_YZ
28 L29*LY_R*LY_R; 1 L30*L30*L34; 4 L31*L31*L34; 1 L34*L35*DROP_OHP_ZQ
13 KLOW*L1; 5 KLOW*L9; 9 KLOW*L12; 8 KLOW*L17
5 KLOW*L25; 22 KLOW*L26; 11 KLOW*DROP_OCP_Y; 7 KLOW*TX_P_
4 CENT*L33; 6 QUADR*L27; 1 +CDF*L24; 7 -HYZ*L31
5 -HYZ*+OCF; 2 -HYZ*C_OHD_Z; 4 -HYZ*DROP_OHP_ZQ; 2 -HYZ*LY_R
18 +OCY*L9; 1 +OCY*L17; 23 +OCY*L30; 4 +OCY*TY_P_
5 +CDY*L3; 7 -OHZ*L27; 7 +CDP*L12; 1 +CDP*L24
23 +CDP*L28; 13 +CDP*L30; 12 +CDP*L31; 36 +CDP*-OHD
15 +CDP*DROP_OHP_ZQ; 22 +CDP*DROP_OCP_Y; 164 +CDP*DROP_OCR_YZ; 49 +CDP*LY_R
3 -CYP*L4; 5 +DFQ*DROP_OCR_YZ; 3 +DFQ*LX_R; 2 -OHR*L8
2 -OHR*L23; 7 -OHR*+OCF; 45 -OHR*LY_R; 22 +HCR*L27
4 +HFR*L4; 4 +HFR*L7; 1 +HFR*L21; 69 +HFR*L27
30 +HFR*DROP_OCP_Y; 120 +HFR*DROP_OCR_YZ; 1 +CDR*L4; 2 +HDR*L24
2 +HZR*L0; 1 +HZR*L3; 1 -CZR*L17; 6 -CYZ*L3
7 -CYZ*L8; 1 -CYZ*L27; 17 -CYZ*+OCF; 2 -OZQ*L26
2 -HPQ*LX_R; 1 +DQR*+OCF; 5 +DQR*DROP_OCR_YZ; 10 -ODY*L3
3 -ODY*L18; 1 -ODY*DROP_OHQ_Z; 1 -OFZ*L30; 3 -OFZ*L33
5 -OFZ*+OCF; 1 -OFZ*TY_P_; 2 +HQR*L27; 1 -YZR*L2
5 +ZPR*L27; 2 +FYQ*L26; 1 C_OCD_Y*L24; 4 C_OCD_Y*LX_R
5 C_OCZ_Y*L30; 2 C_OFP_ZQ*L0; 17 C_OFP_ZQ*L7; 1 C_OFP_ZQ*L15
56 C_OFP_ZQ*L26; 14 C_OFP_ZQ*+OCF; 6 C_OFP_ZQ*DROP_OHP_ZQ; 9 C_OFP_ZQ*DROP_OCP_Y
28 C_OFP_ZQ*DROP_OCR_YZ; 62 C_HDP_Q*L2; 7 C_DFR_Q*L27; 2 C_DFR_Q*L28
2 C_DFR_Q*DROP_OHP_ZQ; 10 C_DFR_Q*DROP_OCP_Y; 4 C_DFR_Q*DROP_OHQ_Z; 7 C_DFR_Q*DROP_OCR_YZ
3 TPY_P_*L6; 2 Q_OPFH_ZQ*L17; 2 Q_OYRH_Z*L14; 4 Q_OCDZ_Y*L6
5 Q_OCDP_Y*L27; 14 Q_OCPF_YZQ*L6; 5 Q_OCPZ_Y*L27; 4 Q_HCFR_Q*L2
1 Q_HZDF_Q*L2; 1 Q_HDPR_Q*L2; 1 Q_CDPR_Q*L24; 2 Q_DFRZ_Q*L17
2 Q_DPFR_Q*L4
```

Upper bound: `-11132065931/6500000000`.

### Leaf TULmpmmpmpppmpmm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ -ODY +OFZ -OFQ -FYQ`.

```c1top-geometry
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHQR -DHQ
P DOCYQ -DYQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOZQR -DZQ
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ +YPQ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
139 L0*L1*L12; 29 L0*L1*L16; 46 L0*L7*L12; 43 L0*L10*L17
43 L0*L10*TX_P_; 6 L0*L12*L19; 98 L0*L12*L30; 15 L0*L14*TX_P_
17 L0*L21*TX_P_; 35 L0*L22*TX_P_; 148 L1*L1*L24; 19 L1*L2*L2
17 L1*L2*L31; 26 L1*L4*L12; 46 L1*L4*L29; 15 L1*L6*L27
2 L1*L7*L20; 48 L1*L7*L24; 5 L1*L7*LY_R; 1 L1*L10*L22
59 L1*L10*L30; 19 L1*L10*-OHD; 49 L1*L13*L24; 23 L1*L13*LY_R
44 L1*L14*L17; 18 L1*L16*L31; 70 L1*L17*L24; 30 L1*L19*L21
9 L1*L21*L24; 18 L1*L21*L31; 38 L1*L24*L27; 65 L1*L24*L30
31 L1*L24*C_OCF_YQ; 1 L1*L27*DROP_OHQ_Z; 25 L1*L28*L31; 5 L1*L29*L32
46 L1*L31*L31; 27 L1*L31*TY_P_; 19 L1*L34*L35; 18 L2*L4*TX_P_
7 L2*L7*L23; 4 L2*L15*L27; 73 L2*L27*DROP_OHQ_Z; 1 L2*L36*LY_R
12 L3*L3*L4; 200 L3*L4*L4; 27 L3*L4*L9; 3 L3*L4*L14
131 L3*L4*L16; 383 L3*L4*L19; 12 L3*L4*L21; 58 L3*L4*L23
4 L3*L10*L18; 6 L3*L12*L12; 153 L3*L19*L19; 8 L3*L19*L22
48 L3*L19*L26; 37 L3*L19*L31; 18 L3*L19*TX_P_; 9 L4*L4*TX_P_
9 L4*L4*LX_R; 50 L4*L6*L27; 28 L4*L6*TX_P_; 87 L4*L9*L24
9 L4*L10*L21; 26 L4*L10*L29; 22 L4*L10*L33; 39 L4*L12*TX_P_
183 L4*L16*L19; 24 L4*L16*L21; 5 L4*L17*L22; 4 L4*L23*TX_P_
100 L4*L24*TY_P_; 22 L4*L27*L30; 97 L4*L27*DROP_OHP_ZQ; 48 L4*L27*DROP_OHQ_Z
48 L4*L27*LX_R; 64 L4*L31*TX_P_; 9 L4*TX_P_*DROP_OHQ_Z; 63 L4*TX_P_*LY_R
22 L5*L14*L24; 23 L5*L19*L24; 15 L5*L24*L24; 189 L6*L9*L27
112 L6*L10*L33; 134 L6*L10*LX_R; 5 L6*L17*L27; 2 L7*L7*L26
51 L7*L7*LY_R; 38 L7*L8*L19; 65 L7*L10*L20; 10 L7*L10*L22
46 L7*L12*L19; 5 L7*L14*L14; 6 L7*L14*L19; 19 L7*L14*L29
108 L7*L17*L19; 35 L7*L19*L19; 8 L7*L19*TX_P_; 50 L7*L23*L27
13 L7*L23*L31; 10 L7*L24*L28; 48 L7*L26*L30; 38 L7*L27*LY_R
9 L7*L29*LY_R; 54 L7*L30*LY_R; 70 L8*L17*L28; 87 L8*L24*TY_P_
37 L9*L9*L34; 2 L9*L10*L23; 46 L9*L10*L27; 184 L9*L10*L33
4 L9*L10*DROP_OHP_ZQ; 1 L9*L12*L14; 10 L9*L19*L31; 141 L9*L31*L34
75 L10*L10*L36; 50 L10*L14*L17; 50 L10*L14*TX_P_; 27 L10*L15*L19
33 L10*L15*L24; 58 L10*L19*DROP_OHQ_Z; 110 L10*L20*L29; 2 L10*L21*LX_R
42 L10*L23*L24; 1 L10*L23*L36; 35 L10*L23*DROP_OHP_ZQ; 49 L10*L26*L31
89 L10*L27*L33; 3 L10*L29*L31; 4 L10*L30*TX_P_; 2 L10*L30*DROP_OHQ_Z
81 L10*L31*L36; 27 L10*L36*DROP_OCP_Y; 20 L12*L12*LY_R; 69 L12*L13*L27
6 L12*L19*L27; 106 L12*L20*L27; 15 L12*L21*LY_R; 2 L12*L22*L29
2 L12*L23*L31; 7 L12*L25*L27; 140 L12*L27*C_OCF_YQ; 23 L12*L29*TY_P_
12 L12*L31*L34; 29 L14*L14*L17; 1 L14*L17*L23; 136 L14*L17*L24
6 L14*L19*L24; 17 L14*L24*L29; 89 L14*L24*L30; 69 L14*L24*L35
17 L14*L29*L29; 4 L15*L16*L31; 29 L16*L34*L34; 51 L17*L19*L24
5 L17*L19*LY_R; 16 L17*L20*L27; 16 L17*L22*L24; 10 L17*L24*L28
15 L17*L24*LY_R; 40 L17*L27*DROP_OCP_Y; 136 L17*L30*LY_R; 66 L18*L23*L31
1 L19*L23*L30; 51 L19*L24*TX_P_; 45 L19*L26*TX_P_; 18 L19*L29*TX_P_
48 L20*L27*L27; 106 L20*L27*L30; 6 L21*L26*L29; 68 L21*L27*L31
45 L22*L24*L27; 9 L22*L24*L29; 4 L23*L24*LY_R; 2 L23*L31*L35
26 L23*L31*TY_P_; 1 L23*L34*L35; 7 L24*L24*L34; 15 L24*L24*TY_P_
1 L24*L24*LY_R; 1 L24*L25*DROP_OCR_YZ; 32 L24*L27*DROP_OHQ_Z; 37 L24*L29*DROP_OCP_Y
2 L24*L29*DROP_OCR_YZ; 22 L27*L31*L34; 153 L27*L31*L36; 49 L27*L31*DROP_OHP_ZQ
22 L28*L31*LY_R; 3 L29*L36*LY_R; 82 L31*L31*L34; 10 L31*L31*TY_P_
51 L31*L34*L34; 6 L31*L34*L35; 27 L31*L34*TY_P_; 54 L31*L34*LX_R
6 L31*L36*L36; 187 L31*L36*LY_R; 3 KLOW*L7; 23 KLOW*L12
8 KLOW*TY_P_; 35 CENT*L28; 1 CENT*L30; 19 CENT*L35
50 -HYZ*L1; 81 -HYZ*L4; 75 -HYZ*L10; 66 -HYZ*L17
106 -HYZ*L25; 201 -HYZ*L31; 57 +OCY*L3; 48 +OCY*L5
122 +OCY*L21; 5 +OCY*L22; 70 +OCY*L27; 182 +OCY*L30
41 +OCY*L35; 100 +OCY*DROP_OHP_ZQ; 30 +OCY*TY_P_; 11 +OCY*DROP_OHQ_Z
124 +OCY*LY_R; 95 +CDY*L16; 25 -OHZ*L27; 256 +CDP*L4
23 +CDP*L12; 183 +CDP*L19; 84 +CDP*L23; 372 +CDP*L24
302 +CDP*L25; 56 +CDP*L28; 46 +CDP*L31; 82 +CDP*LX_R
48 +CDP*LY_R; 28 -DFP*L6; 69 -DFP*L12; 75 -DFP*L22
52 -DFP*L30; 41 -DFP*LY_R; 31 -CFP*L19; 49 -HFQ*L10
6 +CDQ*L10; 7 +DFQ*L17; 5 +HZQ*L27; 99 -OHR*L10
15 -OHR*L14; 68 +HFR*L4; 126 +HFR*L13; 18 +HFR*L15
44 +HFR*L16; 42 +HFR*L21; 38 +HFR*L27; 60 +HFR*L29
6 +HFR*DROP_OCP_Y; 3 +HYR*L10; 87 +HZR*L17; 6 +HZR*L19
322 +HZR*L27; 72 +HZR*L28; 117 +HZR*L30; 102 +HZR*L32
25 +HZR*+OCF; 15 +HZR*DROP_OHQ_Z; 23 +HZR*LX_R; 322 +HZR*LY_R
53 -FPR*L3; 87 -FPR*L9; 43 -FPR*L20; 253 -CYZ*L4
56 -CYZ*L12; 286 -CYZ*L19; 214 -CYZ*L24; 42 -CYZ*L27
64 -CYZ*L31; 56 -CYZ*L36; 4 -CYZ*DROP_OHP_ZQ; 312 -CYZ*TY_P_
107 -CYZ*LX_R; 55 -CYZ*LY_R; 1 -OZQ*L10; 15 -OZQ*L24
144 +OZR*L0; 51 +OZR*L4; 28 +OZR*L12; 16 +OZR*L24
151 +OZR*L31; 43 -HPQ*L6; 18 -HPQ*L31; 5 -HPQ*TY_P_
18 -HPQ*LX_R; 2 +CQR*L24; 57 +DQR*L4; 9 +DQR*L7
42 +DQR*L11; 174 +DQR*L12; 22 +DQR*L17; 30 +DQR*L24
145 +DQR*L27; 174 +DQR*L30; 101 +DQR*-OHD; 12 +DQR*+OCF
96 +DQR*LY_R; 21 -ODY*L7; 10 -ODY*L8; 49 -ODY*L14
95 -ODY*TX_P_; 174 -ODY*DROP_OHQ_Z; 49 +OFZ*L10; 80 -OFQ*L9
7 -OFQ*L12; 107 -OFQ*L21; 34 -OFQ*L27; 2 -OFQ*L33
94 -OFQ*L35; 11 -OFQ*DROP_OHP_ZQ; 12 -OFQ*DROP_OCP_Y; 107 -OFQ*DROP_OHQ_Z
161 -OFQ*LX_R; 26 -FYQ*L1; 45 -FYQ*L6; 2 -FYQ*L9
346 -FYQ*L12; 343 -FYQ*L13; 26 -FYQ*L28; 1 -FYQ*L36
66 -FYQ*DROP_OHP_ZQ; 93 -FYQ*DROP_OCP_Y; 134 -FYQ*LX_R; 15 +HPR*L24
5 +FZQ*L6; 1 +FZQ*L18; 5 +FZQ*DROP_OCR_YZ; 18 -FPQ*L3
18 -FPQ*L8; 1 -FPQ*L14; 38 -FPQ*L17; 57 -FPQ*L19
35 -FPQ*L32; 38 -FPQ*TX_P_; 53 -FPQ*TY_P_; 25 -FPQ*LX_R
57 -PQR*L4; 34 C_OHP_ZQ*L4; 49 C_OCD_Y*L3; 26 C_OCD_Y*L27
11 C_OFP_Q*L3; 6 C_OFP_Q*L12; 2 C_OFP_Q*L14; 4 C_OPR_ZQ*L3
67 C_OPR_ZQ*L4; 82 TPY_P_*L17; 17 SP_OYFH_ZQ_YH-1*L17; 21 Q_OQFH_Z*L27
1 SP_OYFR_ZQ_YR-1*L0; 49 SP_OYFR_ZQ_YR-1*L17; 2 SP_OYFR_ZQ_YR-1*L29; 41 Q_OPFZ_Q*L7
54 Q_OPFZ_Q*L12; 5 Q_OPFZ_Q*L14; 5 Q_OPFZ_Q*L20; 39 Q_OPFZ_Q*L24
10 Q_OPFZ_Q*L26; 54 Q_OPFZ_Q*L30; 2 Q_HDFR_Q*L24; 53 Q_DPFR_Q*L4
```

Upper bound: `-884177201/200000000`.

### Leaf TULmpmmpmpppmpmp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ -ODY +OFZ -OFQ +FYQ`.

```c1top-geometry
C CFY Q Z -FYZ 36132509/53513000
P OHDFY -OFY
P OHDFZ +ODZ
P OHDYR +OYR
P OHDPQ +ODQ
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHQR -DHQ
P DOCYQ -DYQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOZQR -DZQ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
90 L0*L1*L12; 5 L0*L2*L9; 4 L0*L6*L23; 3 L0*L7*L14
19 L0*L10*L25; 45 L0*L19*TX_P_; 4 L1*L1*DROP_OHQ_Z; 17 L1*L2*L30
2 L1*L2*TX_P_; 2 L1*L3*L10; 3 L1*L3*L12; 42 L1*L4*TX_P_
112 L1*L8*L17; 3 L1*L9*L36; 20 L1*L10*L23; 2 L1*L10*DROP_OCR_YZ
47 L1*L10*LX_R; 33 L1*L12*L21; 82 L1*L12*L27; 2 L1*L14*L33
87 L1*L17*L24; 9 L1*L17*TX_P_; 8 L1*L21*L24; 30 L1*L22*L24
4 L1*L24*L30; 66 L1*L24*TX_P_; 118 L1*L24*TY_P_; 88 L1*L24*LY_R
2 L1*L26*L35; 99 L1*L27*DROP_OHQ_Z; 5 L1*L30*LY_R; 211 L2*L2*TY_P_
10 L2*L10*L23; 1 L2*L16*TY_P_; 9 L2*L17*L28; 33 L2*L17*L34
148 L2*L24*TY_P_; 19 L2*L26*LY_R; 20 L2*L30*TY_P_; 12 L3*L4*L4
40 L3*L4*L19; 55 L3*L4*L21; 8 L3*L4*L36; 7 L3*L4*LX_R
122 L3*L8*L23; 54 L3*L10*L25; 6 L3*L10*L30; 51 L3*L10*DROP_OHP_ZQ
40 L3*L10*TX_P_; 136 L3*L10*DROP_OHQ_Z; 6 L3*L12*L19; 3 L3*L12*DROP_OCP_Y
57 L3*L14*L24; 25 L3*L19*L19; 11 L3*L19*L27; 26 L3*L19*L30
30 L3*L19*DROP_OHQ_Z; 11 L3*L19*LY_R; 94 L3*L21*L27; 17 L3*L23*L30
9 L3*L26*TX_P_; 2 L3*L30*LY_R; 10 L4*L4*LX_R; 72 L4*L6*L9
49 L4*L9*LX_R; 10 L4*L10*L30; 96 L4*L12*LY_R; 35 L4*L16*L27
256 L4*L16*L31; 8 L4*L17*L22; 24 L4*L20*L31; 21 L4*L21*L24
3 L4*L22*L31; 9 L4*L23*L24; 3 L4*L28*L31; 25 L4*L35*LX_R
10 L4*TX_P_*LX_R; 12 L5*L7*L17; 8 L5*L12*L27; 3 L5*L14*L17
76 L5*L14*L24; 38 L5*L17*L30; 51 L6*L10*L36; 20 L6*L14*L27
43 L6*L18*L27; 43 L6*L27*L30; 63 L7*L7*LY_R; 9 L7*L8*LY_R
58 L7*L10*L14; 53 L7*L10*L30; 1 L7*L12*L15; 24 L7*L14*L21
57 L7*L19*L30; 8 L7*TY_P_*LY_R; 27 L8*L8*L19; 61 L8*L8*L23
9 L8*L8*L28; 15 L8*L8*TY_P_; 25 L8*L10*L29; 6 L8*L12*L27
11 L8*L12*TY_P_; 95 L8*L14*L23; 11 L8*L14*L27; 2 L8*L17*L23
150 L8*L17*L28; 8 L8*L19*L22; 46 L8*L19*L24; 66 L8*L19*L30
24 L8*L21*L27; 65 L8*L23*L30; 27 L8*L23*TY_P_; 10 L8*L24*L35
10 L8*L24*TY_P_; 7 L8*L26*TX_P_; 10 L9*L10*LX_R; 10 L9*L16*L27
65 L10*L12*L21; 10 L10*L12*L35; 25 L10*L12*LY_R; 27 L10*L17*LX_R
55 L10*L21*L24; 20 L10*L21*L27; 18 L10*L21*TX_P_; 20 L10*L22*L36
20 L10*L22*LX_R; 20 L10*L23*L34; 115 L10*L30*TX_P_; 37 L10*L35*DROP_OHP_ZQ
45 L10*TX_P_*LX_R; 2 L11*L17*LY_R; 15 L12*L12*LY_R; 2 L12*L14*L27
29 L12*L16*L27; 11 L12*L19*L20; 32 L12*L19*LY_R; 15 L12*L21*L27
14 L12*L23*L29; 34 L12*L24*L35; 106 L12*L27*LY_R; 33 L14*L17*L23
15 L14*L21*L24; 33 L14*L23*TX_P_; 15 L14*L24*L30; 14 L14*L24*L32
66 L14*L24*TX_P_; 32 L14*L24*TY_P_; 12 L16*L21*L27; 3 L17*L17*C_OHD_Z
5 L17*L17*TY_P_; 30 L17*L19*L24; 45 L17*L19*L28; 21 L17*L22*L24
9 L17*L22*L26; 21 L17*L22*L29; 41 L17*L24*TY_P_; 2 L17*L26*L27
49 L17*L29*LY_R; 4 L17*L31*L34; 2 L17*LY_R*LY_R; 16 L18*L20*L27
27 L19*L24*L29; 19 L19*L24*C_OCF_YQ; 5 L19*DROP_OHP_ZQ*TX_P_; 3 L20*L27*DROP_OCP_Y
6 L21*L24*LY_R; 9 L21*L27*TX_P_; 11 L23*L30*TX_P_; 6 L24*L24*L28
3 L24*L24*L34; 3 L24*L24*L36; 159 L24*L27*L27; 6 L24*L27*L36
159 L24*L27*DROP_OCR_YZ; 27 L24*L30*DROP_OCP_Y; 10 L24*L30*TY_P_; 2 L27*L29*L35
19 L27*L33*LY_R; 44 L27*C_OCF_YQ*TX_P_; 1 L31*L31*TY_P_; 2 L32*TX_P_*LY_R
12 TX_P_*TX_P_*LY_R; 101 KLOW*TY_P_; 2 CENT*L1; 33 CENT*L16
50 CENT*L23; 9 CENT*L31; 21 CENT*LX_R; 10 -HYZ*L29
3 -HYZ*LY_R; 25 +OCY*L36; 60 +OCY*TX_P_; 172 +OCY*DROP_OHQ_Z
147 -OHZ*L27; 8 -HCZ*L4; 90 +CDP*L0; 15 +CDP*L4
5 +CDP*L17; 104 +CDP*L19; 175 +CDP*L23; 12 +CDP*L29
43 +CDP*L30; 200 +CDP*+OCF; 79 +CDP*DROP_OCP_Y; 15 +CDP*DROP_OHQ_Z
53 -DFP*L1; 26 -DFP*L22; 8 -DFP*L27; 10 -DFP*TY_P_
15 +CDQ*L12; 123 +DFQ*L19; 10 +DFQ*TX_P_; 72 +HFR*L7
27 +HFR*L17; 8 +HFR*L21; 34 +HFR*L23; 2 +HFR*L29
19 +HFR*L30; 2 +HFR*L34; 86 +HFR*DROP_OCP_Y; 2 +HZR*L3
34 +HZR*L8; 16 +HZR*L14; 50 +HZR*L22; 75 +HZR*L27
72 +HZR*L28; 28 +HZR*L35; 14 +HZR*L36; 32 +HZR*TY_P_
9 +HZR*LX_R; 162 +HZR*LY_R; 33 +OPQ*L0; 44 +OPQ*L4
45 +OPQ*L7; 12 +OPQ*L14; 34 +OPQ*L24; 119 +OPQ*L26
78 +OPQ*L31; 55 -FPR*L3; 38 -FPR*L12; 5 -FPR*L16
45 -CYZ*L6; 10 -CYZ*L8; 10 -CYZ*L10; 4 -CYZ*L17
30 -CYZ*L22; 34 -CYZ*L24; 9 -CYZ*L29; 15 -OZQ*L24
154 +OZR*L0; 9 +OZR*L17; 50 +OZR*L23; 3 +OZR*L24
75 +OZR*TX_P_; 4 -HPQ*L0; 5 -HPQ*L4; 8 -HPQ*L6
33 -HPQ*L12; 6 -HPQ*L24; 68 -HPQ*L26; 5 +CQR*L10
62 +DQR*L1; 24 +DQR*L9; 25 +DQR*L11; 68 +DQR*L12
31 +DQR*L17; 6 +DQR*L24; 10 +DQR*L29; 84 +DQR*L33
49 +DQR*-OHD; 27 +DQR*DROP_OCP_Y; 85 +CFQ*L1; 83 +CFQ*L5
174 +CFQ*L8; 18 +CFQ*L13; 80 +CFQ*L14; 39 +CFQ*L25
85 +CFQ*L32; 27 +CFQ*L33; 86 +CFQ*DROP_OCP_Y; 89 +CFQ*TY_P_
55 +CFQ*LX_R; 26 -ODY*L3; 3 -ODY*L5; 35 -ODY*L8
11 -ODY*L12; 153 -ODY*L16; 42 -ODY*L19; 49 -ODY*L23
74 -ODY*L24; 10 -ODY*L35; 3 -ODY*-OHD; 42 -ODY*DROP_OCP_Y
146 -ODY*LX_R; 36 +OFZ*L18; 24 +OFZ*L21; 19 +OFZ*L34
16 +OFZ*L35; 1 +OFZ*L36; 19 +OFZ*LY_R; 8 -OFQ*L10
140 +FYQ*L4; 115 +FYQ*L5; 37 +FYQ*L7; 203 +FYQ*L8
143 +FYQ*L13; 125 +FYQ*L14; 50 +FYQ*-OHD; 35 +FYQ*+OCF
9 +FYQ*DROP_OHP_ZQ; 35 +FYQ*DROP_OCP_Y; 55 +FYQ*LX_R; 18 +HDQ*L27
8 +DPQ*L1; 10 -DZQ*L10; 171 -FPQ*L4; 35 -FPQ*L10
64 -FPQ*L13; 12 -FPQ*L14; 28 -FPQ*L24; 43 -FPQ*L26
27 -FPQ*L29; 36 -FPQ*L33; 21 -FPQ*-OHD; 4 -FQR*L17
78 +YPQ*L30; 18 -PQR*L4; 66 C_OHP_ZQ*L4; 74 C_OHP_ZQ*L27
10 C_OYR_Z*L17; 46 C_DPR_Q*L2; 10 C_DPR_Q*L4; 25 C_FYP_Q*L6
1 C_FYP_Q*LX_R; 30 TPX_P_*L19; 19 TPY_P_*L2; 10 TPY_P_*L19
14 Q_OYRH_Z*L14; 6 SP_OCPR_YQ_CR-1*L17; 16 Q_OPFZ_Q*L3; 42 Q_OPFZ_Q*L8
21 Q_OPFZ_Q*L14; 47 Q_DPFR_Q*L12; 3 Q_DPFR_Q*L14; 26 Q_DPFR_Q*L20
9 Q_DPFR_Q*L23; 42 Q_DPFR_Q*L30
```

Upper bound: `-57782931/15625000`.

### Leaf TULmpmmpmpppmpp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ -ODY +OFZ +OFQ`.

```c1top-geometry
C OHF ZQ Y +FOY 72039/90700
P OHDFZ +ODZ
P OHDFQ +ODQ
P OHDYQ +OYQ
P OHDYR +OYR
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHQR -DHQ
P DOCYQ -DYQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOZQR -DZQ
P FOHYZ -FYZ
P FOHYQ -FYQ
P FOHPQ -FPQ
P FOHQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ +YPQ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
```

Exclusion: `central_endpoint_top OF R ZQ`.

### Leaf TULmpmmpmpppp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHQR -DHQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOYQR -DYQ
P DOZQR -DZQ
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOCDZ +YDZ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
32 L0*L1*L1; 115 L0*L8*L27; 624 L0*L12*L27; 591 L0*L12*L30
92 L0*L17*L27; 32 L0*L27*L27; 114 L1*L1*L3; 23 L1*L1*L18
515 L1*L1*L30; 107 L1*L2*L36; 55 L1*L3*L4; 72 L1*L3*L17
414 L1*L4*L30; 31 L1*L4*TX_P_; 37 L1*L6*LY_R; 66 L1*L7*L8
25 L1*L7*L32; 25 L1*L8*L24; 44 L1*L10*L24; 660 L1*L12*L12
247 L1*L12*L34; 260 L1*L12*L35; 988 L1*L14*L30; 113 L1*L14*TX_P_
9 L1*L17*L17; 1 L1*L17*L19; 94 L1*L17*L24; 72 L1*L17*L29
5 L1*L19*L24; 30 L1*L19*L29; 5 L1*L19*L30; 23 L1*L19*LY_R
365 L1*L24*L29; 977 L1*L24*L30; 3 L1*L24*TY_P_; 356 L1*L24*LY_R
89 L1*L27*L31; 408 L1*L29*L30; 100 L1*L29*L32; 20 L1*L29*L34
93 L1*L29*L36; 415 L1*L30*L30; 57 L1*TX_P_*LY_R; 32 L1*LY_R*LY_R
329 L2*L8*L27; 148 L2*L10*L30; 116 L2*L10*TX_P_; 847 L2*L13*L27
12 L2*L15*L17; 398 L2*L24*LY_R; 326 L2*L27*L31; 148 L2*L27*L32
294 L2*L27*TX_P_; 52 L3*L3*L4; 157 L3*L3*L14; 214 L3*L4*L14
314 L3*L4*L16; 93 L3*L4*L19; 93 L3*L4*L30; 21 L3*L5*L27
326 L3*L6*L27; 242 L3*L10*L12; 38 L3*L10*L14; 356 L3*L10*L17
76 L3*L10*L29; 840 L3*L12*L14; 563 L3*L12*LY_R; 250 L3*L14*L14
273 L3*L14*L19; 2 L3*L14*TX_P_; 58 L3*L14*LY_R; 125 L3*L19*L19
294 L3*L19*L24; 194 L3*L19*L29; 477 L3*L19*L30; 106 L3*L19*TX_P_
127 L3*L27*L27; 12 L4*L4*L29; 64 L4*L8*L27; 171 L4*L8*L30
29 L4*L8*TY_P_; 26 L4*L10*TX_P_; 35 L4*L11*L30; 113 L4*L16*L19
491 L4*L16*L30; 31 L4*L16*L32; 23 L4*L19*TX_P_; 186 L4*L24*L27
28 L4*L29*TX_P_; 39 L4*L30*TX_P_; 82 L4*DROP_OHP_ZQ*TX_P_; 3 L5*L6*L27
14 L5*L12*L17; 154 L5*L12*L27; 27 L5*L17*L17; 481 L6*L8*L27
23 L6*L22*L27; 229 L6*L27*LY_R; 9 L7*L7*L14; 28 L7*L8*L19
31 L7*L10*L17; 26 L7*L10*L19; 90 L7*L17*L19; 148 L7*L19*L24
72 L7*L19*L29; 39 L7*L19*L30; 75 L7*L19*TX_P_; 81 L7*L27*LX_R
74 L8*L8*L32; 3 L8*L10*L27; 399 L8*L12*L27; 74 L8*L14*L30
399 L8*L17*L27; 149 L8*L19*L27; 170 L8*L24*L27; 421 L9*L17*L27
3 L9*L27*L31; 444 L10*L12*L35; 444 L10*L14*L30; 42 L10*L24*L27
92 L10*L24*L36; 42 L10*L26*L27; 55 L10*L27*DROP_OHQ_Z; 74 L10*L30*L30
31 L11*L17*L29; 474 L12*L13*L27; 151 L12*L17*L27; 122 L12*L27*L27
881 L12*L27*L30; 629 L12*L27*+OCF; 151 L12*L27*TX_P_; 49 L13*L14*L27
1355 L14*L24*L30; 21 L14*L24*TX_P_; 17 L15*L17*L29; 7 L15*L17*L31
23 L15*L19*L27; 12 L17*L19*L19; 57 L17*L34*L34; 23 L18*L27*L34
1 L19*L19*L24; 12 L19*L19*TX_P_; 29 L19*L24*L24; 5 L19*L24*L30
154 L19*L27*L33; 5 L19*L31*LY_R; 1 L19*TX_P_*LY_R; 55 L20*L27*L34
289 L21*L27*L30; 8 L22*L27*L29; 55 L23*L27*L30; 81 L24*L27*L29
170 L24*L27*L31; 326 L24*L27*L33; 147 L24*L27*+OCF; 35 L27*L28*TX_P_
59 L27*L29*LY_R; 95 L27*L30*L34; 3 L27*L30*L35; 154 L27*L30*TY_P_
289 L27*L30*DROP_OHQ_Z; 326 L27*L33*LX_R; 122 L27*L34*LX_R; 42 L27*L35*DROP_OCR_YZ
63 L27*-OHD*-OHD; 117 L27*+OCF*TY_P_; 29 L27*TX_P_*LX_R; 326 L29*L29*LY_R
26 L30*TX_P_*LY_R; 326 L31*L31*L34; 234 L31*L34*L34; 9 L34*TX_P_*TX_P_
352 CENT*L13; 488 CENT*L33; 16 CENT*L34; 414 -HYZ*L4
444 -HYZ*L14; 225 -HYZ*L17; 74 -HYZ*L30; 59 -HYZ*L31
513 -HYZ*+OCF; 251 -HYZ*TX_P_; 254 -HYZ*LX_R; 297 -HYZ*LY_R
3 -HFY*L27; 246 +CDY*L3; 390 +CDY*L14; 404 +CDY*L16
20 +CDY*L18; 430 +CDY*L35; 95 +CDY*DROP_OHP_ZQ; 38 +CDY*TX_P_
12 +CDY*TY_P_; 90 +CDY*LY_R; 194 +CDP*L2; 31 +CDP*L11
273 +CDP*L14; 125 +CDP*L19; 474 +CDP*L21; 477 +CDP*L30
35 +CDP*-OHD; 9 +CDP*DROP_OHP_ZQ; 98 +CDP*TX_P_; 474 +CDP*DROP_OHQ_Z
34 -DFP*L1; 51 -DFP*L2; 12 -DFP*L4; 108 -DFP*L8
26 -DFP*L10; 15 -DFP*L17; 11 -DFP*L19; 35 -DFP*L22
28 -DFP*L29; 39 -DFP*L30; 85 -DFP*L31; 503 +HFR*L8
237 +HFR*L17; 170 +HFR*L29; 125 +HFR*L32; 483 +HFR*L33
148 +HFR*TX_P_; 3 +HFR*TY_P_; 225 +HFR*DROP_OCR_YZ; 186 +CDR*L27
314 +HZR*L3; 48 +HZR*L7; 169 +HZR*L10; 807 +HZR*L14
5 +HZR*L17; 5 +HZR*L19; 418 +HZR*L27; 753 +HZR*L30
425 +HZR*+OCF; 481 +HZR*LY_R; 294 -FPR*L3; 35 -FPR*L4
119 -FPR*L7; 5 -FPR*L8; 1 -FPR*L19; 35 -FPR*L23
29 -FPR*L24; 449 -CYZ*L5; 1424 -CYZ*L8; 846 -CYZ*L9
444 -CYZ*L10; 36 -CYZ*L17; 346 -CYZ*L24; 264 -CYZ*-OHD
658 -CYZ*+OCF; 2 -CYZ*TX_P_; 58 -CYZ*LY_R; 610 +OZR*L0
234 +OZR*L2; 5 +OZR*L4; 27 +OZR*L6; 72 +OZR*L9
344 +OZR*L11; 26 +OZR*L16; 186 +OZR*L27; 603 +OZR*L30
761 +OZR*L34; 5 +OZR*TY_P_; 35 +DQR*L19; 8 +CFQ*L27
720 +ODY*L2; 61 +ODY*L6; 394 +ODY*L10; 88 +ODY*L17
3 +ODY*L19; 17 +ODY*L28; 999 +ODY*L30; 398 +ODY*L31
73 +ODY*L34; 283 +ODY*L36; 194 +ODY*+OCF; 5 +HPR*L12
55 +HQR*L27; 35 -FPQ*L5; 7 -FPQ*L17; 7 -FPQ*L24
7 -FPQ*TX_P_; 3 -FPQ*DROP_OCR_YZ; 7 -FPQ*LX_R; 55 -FQR*L27
122 -FYZ*L27; 55 -YZQ*L27; 42 C_OYR_Z*L27; 83 Q_OYRH_Z*L14
1110 Q_OCDZ_Y*L8; 31 Q_OCPQ_Y*L27
```

Upper bound: `-697792817/1000000000`.

### Leaf TULmpmmppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR +HPQ -CQR`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYQ -PYQ
P QOCDR +QDR
P QOCPR +QPR
M OCRQYZ -1
M ORCQZY 1
M CORZYQ 1
M CROZQY -1
M ROCYZQ -1
M RCOYQZ 1
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OCR YZQ 1 lower 823/1000
```

```c1top-box
h 347/500 177/200
c 823/1000 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L3*L12; 1 L0*L5*L12; 9 L0*L7*L19; 4 L0*L7*L25
2 L0*L8*L17; 1 L0*L9*L35; 23 L0*L10*L25; 21 L0*L11*L21
1 L0*L13*L23; 51 L0*L16*L21; 39 L0*L16*LY_R; 11 L0*L21*L21
23 L0*L21*L29; 12 L0*L21*L31; 14 L0*L23*TX_P_; 3 L0*L25*L25
6 L0*L25*L34; 1 L0*L30*L35; 22 L0*L35*DROP_OHQ_Z; 60 L0*DROP_OHP_Z*LX_R
8 L0*TX_P_*LY_R; 59 L0*DROP_OCR_YZQ*LX_R; 1 L1*L2*L28; 10 L1*L8*L20
7 L1*L12*DROP_OHQ_Z; 6 L1*L17*+OCF; 33 L1*L17*DROP_OHQ_Z; 16 L1*L18*L20
9 L1*L20*L20; 1 L1*L29*L36; 12 L1*L30*TX_P_; 7 L1*TX_P_*TX_P_
16 L2*L4*TX_P_; 7 L2*L10*TX_P_; 13 L2*L12*L27; 33 L2*L16*L27
72 L2*L16*TY_P_; 4 L2*L18*LY_R; 1 L2*L20*LY_R; 17 L2*L22*L27
1 L2*L23*L31; 18 L2*L27*TX_P_; 8 L2*L33*TY_P_; 69 L2*DROP_OHP_Z*TY_P_
2 L2*TY_P_*LX_R; 3 L3*L3*LY_R; 18 L3*L4*-OHD; 11 L3*L11*DROP_OCR_YZQ
5 L3*L14*TX_P_; 40 L3*L14*DROP_OCR_YZQ; 33 L3*L16*L23; 6 L3*L16*L35
13 L3*L17*L23; 6 L3*L17*L35; 14 L3*L19*TX_P_; 28 L3*L20*C_OHD_Z
30 L3*L23*TX_P_; 2 L3*L24*L27; 6 L4*L6*L9; 30 L4*L6*TX_P_
1 L4*L8*L36; 1 L4*L12*L17; 29 L4*L12*L27; 51 L4*L16*TX_P_
2 L4*L21*LX_R; 24 L4*L26*L27; 7 L4*L30*TX_P_; 1 L4*L36*TX_P_
76 L4*TX_P_*DROP_OHQ_Z; 24 L5*L27*DROP_OCR_YZQ; 6 L6*L10*TX_P_; 6 L6*L10*LX_R
2 L6*L14*L31; 37 L6*L17*L17; 48 L6*L17*TY_P_; 1 L6*L18*L34
14 L6*L22*L27; 22 L6*L27*C_OHD_Z; 30 L6*L27*DROP_OHP_Z; 7 L6*L27*TX_P_
21 L6*L27*DROP_OHQ_Z; 41 L6*L27*LY_R; 1 L7*L7*L19; 37 L7*L17*L17
9 L7*L18*L27; 5 L7*L27*L32; 1 L8*L9*L27; 9 L8*L21*L25
1 L8*L23*L27; 20 L8*L27*L32; 56 L8*L27*L34; 17 L9*L14*L24
19 L9*L18*L24; 3 L9*L20*L36; 1 L9*L27*L35; 4 L9*L34*TX_P_
56 L10*L12*L27; 2 L10*L17*C_OCF_Y; 12 L11*L17*L27; 3 L12*L14*L25
2 L12*L17*L32; 1 L12*L22*L27; 6 L12*L23*LX_R; 30 L12*L27*TX_P_
24 L12*L27*TY_P_; 1 L12*L28*L35; 7 L12*L29*TY_P_; 7 L12*L32*TX_P_
3 L12*L35*DROP_OHQ_Z; 13 L13*L27*L29; 9 L14*L24*TX_P_; 11 L14*L24*LX_R
3 L14*L25*L30; 4 L15*L20*L24; 9 L15*L27*L29; 58 L16*L21*L27
28 L16*L27*C_OCF_Y; 8 L17*L17*L18; 7 L17*L18*L20; 2 L17*L18*L24
28 L17*L20*LY_R; 2 L17*L21*LY_R; 23 L17*L22*L27; 17 L17*L34*LY_R
2 L17*TY_P_*LX_R; 27 L18*L20*LX_R; 7 L18*L27*L30; 23 L18*L27*DROP_OHQ_Z
2 L19*L21*L25; 11 L19*L27*L29; 8 L19*TX_P_*TX_P_; 7 L20*L27*L30
2 L21*L25*L34; 6 L21*L34*LX_R; 7 L22*TX_P_*TX_P_; 1 L23*L24*L25
4 L23*L24*TX_P_; 1 L23*L30*LY_R; 1 L24*L27*L30; 10 L24*L27*L36
1 L24*L27*DROP_OHQ_Z; 3 L24*L32*LX_R; 9 L24*L35*DROP_OHQ_Z; 10 L25*L27*C_OHD_Z
1 L27*L28*DROP_OHP_Z; 2 L27*L29*L31; 17 L27*L29*DROP_OCR_YZQ; 19 L27*L31*L32
8 L27*L31*-OHD; 16 L27*L31*DROP_OHQ_Z; 12 L27*L31*LX_R; 10 L27*L34*LX_R
19 L27*L35*TX_P_; 3 KLOW*TY_P_; 2 FAN*L27; 29 CENT*L20
28 CENT*TX_P_; 2 CENT*LX_R; 2 +ODF*L27; 27 +HCF*L27
1 +OYZ*L21; 36 -HYZ*L21; 1 -HYZ*L28; 30 -HYZ*DROP_OHP_Z
65 -HYZ*DROP_OCR_YZQ; 28 -HYZ*LX_R; 1 -HCY*L0; 14 +CDP*L0
7 +CDP*L2; 2 +CDP*L30; 1 +CDP*L31; 148 +CDP*DROP_OHP_Z
7 +CDP*TX_P_; 14 +CDP*DROP_OHQ_Z; 2 +CDP*LX_R; 14 +CDP*LY_R
45 -DFP*L6; 14 -DFP*L29; 7 -DFP*L30; 1 -DFP*L34
8 -DFP*C_OCF_Y; 16 -DFP*DROP_OHP_Z; 62 -DFP*DROP_OHQ_Z; 9 +FYP*L0
19 -HFQ*L3; 11 +CDQ*L27; 23 +HZQ*L27; 2 +HFR*L2
9 +HFR*L10; 8 +HFR*L14; 14 +HFR*L22; 18 +HFR*L30
8 +HFR*L34; 37 +HFR*DROP_OHP_Z; 7 +HFR*TX_P_; 18 +HFR*DROP_OHQ_Z
47 +HFR*DROP_OCR_YZQ; 24 +CFR*L27; 1 +HZR*L1; 13 +HZR*L17
9 +OPR*L27; 30 -CYZ*L0; 33 -CYZ*TX_P_; 27 -CYZ*DROP_OHQ_Z
30 -CYZ*LY_R; 6 +OYP*L6; 19 +OYP*L20; 28 +OYP*L24
24 +OYP*LY_R; 3 -OZQ*L6; 9 -OZQ*L9; 165 -OZQ*L16
106 -OZQ*L17; 2 -OZQ*L21; 9 -OZQ*L24; 2 +OZR*L4
2 +OZR*L6; 9 +OZR*L9; 14 +OZR*L11; 55 +OZR*L16
23 +OZR*L22; 11 +OZR*L25; 8 +OZR*L32; 35 +OZR*C_OHD_Z
1 +HPQ*L1; 28 +HPQ*L8; 92 +HPQ*L17; 12 +HPQ*L30
29 +HPQ*+OCF; 56 +HPQ*DROP_OHP_Z; 29 +HPQ*TX_P_; 29 +HPQ*LX_R
30 +HPQ*LY_R; 3 -CQR*L3; 5 -CQR*L6; 80 -CQR*L16
88 -CQR*L24; 102 -CQR*L25; 6 -CQR*L27; 2 -CQR*L33
15 -OFY*L27; 23 +OYQ*L14; 16 +HDQ*L2; 2 +HQR*L20
8 +HQR*L27; 12 +HQR*L30; 13 +DPQ*L27; 7 -FPQ*L7
16 -FQR*L3; 7 -FQR*L17; 12 -YZP*L24; 17 -YZP*L27
7 -DYZ*L6; 2 +ZQR*L3; 15 +YPQ*L0; 9 -PQR*L12
9 -PQR*L26; 21 -PQR*L30; 36 +YQR*L16; 17 +YQR*L21
14 +YQR*L34; 9 +YQR*L36; 4 +YQR*TX_P_; 14 +YQR*DROP_OHQ_Z
13 +YQR*LX_R; 16 C_OQR_Z*L1; 30 C_OQR_Z*L18; 12 C_OQR_Z*LY_R
23 C_HFP_Q*L3; 30 C_HPR_Q*L23; 20 TPY_P_*L17; 1 TPY_P_*L31
1 Q_OYQH_Z*L3; 2 Q_OYRH_Z*L3; 1 Q_OQRH_Z*L1; 3 Q_OCDZ_Y*L27
2 Q_OCFR_YZQ*TY_P_; 1 Q_HYCR_Q*DROP_OHQ_Z; 30 Q_HDPF_Q*L17; 2 Q_CDRY_Q*L20
1 Q_DFRY_Q*L0; 9 M_RCOYQZ_1_3*L6; 25 M_RCOYQZ_1_3*L21; 4 M_RCOYQZ_1_3*L25
59 M_RCOYQZ_1_3*DROP_OHP_Z; 23 M_RCOYQZ_1_3*DROP_OHQ_Z
```

Upper bound: `-178166120941/45500000000`.

### Leaf TULmpmmpppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR +HPQ +CQR -DQR`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHDPQ -FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCDQ -PCQ
P POCYQ -PYQ
P QOCYR -QYR
P QODPR +QPR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
27 L0*L0*L25; 126 L0*L3*L16; 7 L0*L3*L26; 5 L0*L3*C_OHD_Z
4 L0*L3*DROP_OHP_Z; 1 L0*L4*L21; 14 L0*L4*TX_P_; 3 L0*L10*L30
4 L0*L10*L33; 2 L0*L12*L35; 1 L0*L14*L32; 2 L0*L18*L21
32 L0*L21*L21; 28 L0*L21*L25; 24 L0*L21*TX_P_; 2 L0*L24*L31
13 L0*L25*L25; 37 L0*L25*TX_P_; 17 L0*L26*L27; 36 L0*L26*TX_P_
42 L0*L27*DROP_OHQ_Z; 2 L0*TX_P_*TX_P_; 1 L1*L1*L36; 3 L1*L1*DROP_OHQ_Z
1 L1*L6*L9; 11 L1*L6*L17; 15 L1*L6*L27; 17 L1*L6*TY_P_
3 L1*L8*L10; 1 L1*L13*L24; 71 L1*L20*L20; 1 L1*L23*L33
17 L1*L27*-OHD; 16 L1*L27*LX_R; 17 L1*L27*LY_R; 2 L1*L31*LY_R
2 L2*L3*L7; 1 L2*L3*L31; 104 L2*L6*TY_P_; 5 L2*L17*L24
5 L2*L17*LX_R; 2 L2*L23*L28; 1 L2*L24*L30; 53 L2*L24*LY_R
3 L2*L27*DROP_OHQ_Z; 45 L2*L28*TY_P_; 78 L2*L28*DROP_OHQ_Z; 2 L2*L34*DROP_OHQ_Z
3 L3*L4*L4; 42 L3*L4*L16; 11 L3*L4*L25; 2 L3*L4*L27
5 L3*L4*TX_P_; 1 L3*L7*L15; 1 L3*L12*L29; 1 L3*L12*LX_R
124 L3*L16*L27; 11 L3*L17*L23; 7 L3*L18*L21; 21 L3*L19*TX_P_
2 L3*L21*L22; 10 L3*L27*LX_R; 1 L3*L30*L33; 3 L3*L34*L36
1 L3*L34*LX_R; 3 L3*TX_P_*TX_P_; 1 L3*TX_P_*LX_R; 16 L4*L16*TY_P_
22 L4*L24*TX_P_; 3 L4*TX_P_*TY_P_; 16 L5*L17*L20; 10 L5*L17*L24
23 L5*L17*L28; 7 L5*L23*L29; 5 L5*L27*-OHD; 5 L5*L27*LY_R
3 L6*L6*L27; 1 L6*L6*L31; 1 L6*L6*L32; 16 L6*L6*TY_P_
3 L6*L17*L17; 1 L6*L17*L31; 4 L6*L18*L23; 18 L6*L24*LY_R
2 L6*L26*L31; 1 L6*L35*TX_P_; 1 L7*L10*L17; 1 L7*L32*LY_R
11 L8*L11*L27; 21 L8*L17*TY_P_; 1 L8*L23*L29; 16 L8*L27*C_OCF_Y
3 L9*L10*DROP_OCR_YZ; 1 L9*L12*+OCF; 1 L9*L17*LY_R; 1 L9*L25*L34
6 L9*L27*L30; 1 L10*L11*L36; 18 L10*L12*L27; 1 L10*L14*L35
3 L10*L15*L33; 1 L10*L17*L23; 1 L10*L20*TX_P_; 1 L10*L32*C_OCF_Y
1 L11*L17*L24; 1 L12*L17*L17; 1 L12*L25*L32; 1 L12*L27*L31
5 L12*L27*L35; 16 L12*L27*L36; 1 L12*L32*TX_P_; 1 L12*L32*LX_R
15 L13*L13*L27; 27 L13*L27*-OHD; 1 L13*L27*DROP_OHQ_Z; 13 L14*L16*L27
2 L14*L27*L30; 1 L15*L17*L23; 12 L15*L27*DROP_OHP_Z; 1 L16*L17*L32
10 L16*L20*L27; 1 L16*L24*L31; 4 L17*L17*L22; 3 L17*L17*L29
1 L17*L17*L30; 1 L17*L17*L35; 47 L17*L17*LY_R; 15 L17*L19*L28
15 L17*L21*L28; 1 L17*L23*L35; 72 L17*L24*TY_P_; 14 L17*L25*LY_R
1 L17*L28*TX_P_; 21 L17*L31*TY_P_; 11 L18*L21*L24; 2 L18*L24*L31
60 L18*L27*L27; 66 L18*L27*DROP_OCR_YZ; 7 L19*L24*L27; 26 L19*L25*TX_P_
40 L20*L23*L24; 1 L21*L27*L36; 20 L21*L27*TX_P_; 40 L21*L27*DROP_OHQ_Z
1 L22*L25*L34; 2 L23*L23*L29; 37 L23*L28*L29; 4 L23*TX_P_*TX_P_
19 L24*L27*DROP_OHP_Z; 7 L24*L27*TY_P_; 1 L24*L29*L35; 1 L25*L31*TX_P_
1 L25*L34*L35; 5 L27*L27*TY_P_; 4 L27*L29*DROP_OHP_Z; 17 L27*L30*L34
4 L27*L31*L35; 2 L27*L35*L35; 12 L27*L35*+OCF; 10 L27*C_OHD_Z*LX_R
35 L27*C_OCF_Y*DROP_OHP_Z; 1 L27*TX_P_*TX_P_; 15 L27*TX_P_*TY_P_; 5 L27*TX_P_*LX_R
1 L29*L29*L29; 1 L30*L34*L34; 6 L31*L34*L34; 3 L31*L34*L36
27 KLOW*L6; 17 KLOW*L21; 62 KLOW*DROP_OHP_Z; 23 KLOW*TX_P_
3 CENT*L18; 48 QCENT*L27; 28 +HDF*L27; 2 -HYZ*L0
2 -HYZ*L14; 3 -HYZ*L19; 1 -HYZ*L25; 15 -HYZ*L26
1 -HYZ*TX_P_; 1 -HYZ*LX_R; 16 +OCY*L27; 3 -HCY*L1
31 -OHZ*L27; 4 -HCZ*L10; 166 +CDP*L20; 34 +CDP*L22
84 +CDP*L25; 34 +CDP*L27; 41 +CDP*L28; 4 +CDP*C_OHD_Z
2 -DFP*L2; 14 -DFP*L17; 3 -DFP*L18; 11 -DFP*L23
17 -DFP*C_OHD_Z; 15 -DFP*DROP_OHP_Z; 19 -DFP*TX_P_; 56 -DFP*DROP_OHQ_Z
37 -DFP*LX_R; 34 -DFP*LY_R; 3 -HFQ*L7; 32 -HFQ*L17
3 -HFQ*L20; 2 +CDQ*L22; 1 +DFQ*LX_R; 3 +HZQ*L1
3 +HFR*L2; 2 +HFR*L8; 24 +HFR*L20; 7 +HFR*L23
40 +HFR*L28; 1 +HFR*L35; 2 +HFR*DROP_OHP_Z; 25 +DFR*L0
36 +OPQ*L27; 1 -FPR*TX_P_; 6 -CYZ*L0; 3 -CYZ*L4
1 -CYZ*L11; 1 -CYZ*L25; 6 -CYZ*L34; 3 -CYZ*TY_P_
2 +OYP*L24; 1 -OZQ*L4; 4 -OZQ*L6; 11 -OZQ*L16
11 -OZQ*L17; 3 -OZQ*L24; 4 -OZQ*L29; 10 -OZQ*C_OHD_Z
1 -OZQ*TY_P_; 14 -OZQ*LY_R; 9 +OZR*L21; 14 +OZR*L22
2 +OZR*L32; 11 +OZR*DROP_OHQ_Z; 45 +HPQ*L3; 1 +HPQ*L14
52 +HPQ*L16; 174 +HPQ*L17; 15 +HPQ*L18; 4 +HPQ*L22
36 +HPQ*L26; 141 +HPQ*TX_P_; 42 +HPQ*DROP_OHQ_Z; 117 +HPQ*LX_R
7 +CQR*L1; 3 +CQR*L3; 170 +CQR*L16; 2 +CQR*L21
46 +CQR*L28; 3 +CQR*L33; 34 +CQR*TY_P_; 55 -DQR*L1
29 -DQR*L3; 19 -DQR*L4; 247 -DQR*L16; 7 -DQR*L22
43 -DQR*-OHD; 58 -DQR*TX_P_; 19 -DQR*TY_P_; 7 -DQR*DROP_OCR_YZ
4 +HQR*L22; 19 +HQR*L29; 13 +DPQ*L0; 57 +DPQ*L3
19 +DPQ*L17; 4 +DPQ*L23; 13 -FQR*L5; 17 -FQR*L17
3 -FQR*L21; 2 -FQR*L23; 44 -FQR*L28; 2 +ZQR*L2
3 +CPQ*L4; 1 +YQR*TX_P_; 32 -PQR*L6; 57 -PQR*L8
1 -PQR*L14; 42 -PQR*L20; 57 -PQR*L31; 15 -PQR*TY_P_
7 C_OQR_Z*L29; 13 C_OQR_Z*L34; 45 C_HPR_Q*L17; 1 C_CDR_Q*L21
43 C_CDR_Q*L24; 81 TPY_P_*L2; 2 TPY_P_*L23; 19 Q_OPFH_ZQ*L27
6 Q_OQRH_Z*L1; 7 Q_OQRH_Z*LY_R; 3 Q_HDFR_Q*L4; 14 Q_HDFR_Q*L17
29 Q_HDPR_Q*L2; 65 Q_HDPR_Q*L20; 22 Q_HPFR_Q*L17; 9 Q_HPFR_Q*L22
13 Q_HPFR_Q*L25; 15 Q_CDPR_Q*L6
```

Upper bound: `-2368313257/1000000000`.

### Leaf TULmpmmppppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR +HPQ +CQR +DQR -CFQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FOHCQ +FOQ
P FOCYQ +FYQ
P FODPQ -FPQ
P FODQR -FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCDQ -PCQ
P POCYQ -PYQ
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
2 L0*L21*LX_R; 8 L0*TX_P_*TX_P_; 8 L1*L2*L16; 10 L1*L6*L6
8 L1*L6*L21; 5 L1*L6*L27; 1 L1*C_OCF_Y*TY_P_; 6 L2*L2*L17
21 L2*L2*TY_P_; 2 L2*L3*C_OHD_Z; 13 L2*L6*L23; 3 L2*L17*-OHD
16 L2*L23*DROP_OHP_Z; 4 L2*L25*DROP_OHP_Z; 12 L2*L25*TY_P_; 20 L2*DROP_OHP_Z*TY_P_
13 L3*L4*L16; 12 L3*L17*L29; 20 L4*L6*TX_P_; 18 L4*L6*LX_R
14 L4*L16*L21; 4 L4*L17*L17; 12 L5*L16*L17; 6 L6*L6*TX_P_
6 L6*L6*LX_R; 6 L6*L18*L21; 6 L6*L19*L24; 1 L6*L25*LY_R
18 L6*L27*L29; 1 L6*L27*L31; 4 L6*L27*-OHD; 16 L6*L27*DROP_OHQ_Z
1 L8*L16*L27; 1 L9*L27*TX_P_; 2 L14*L17*DROP_OHQ_Z; 17 L16*L17*L27
3 L17*L19*DROP_OHQ_Z; 2 L17*L21*L27; 2 L17*L23*L29; 12 L17*L24*L29
6 L17*L24*DROP_OHP_Z; 1 L17*L26*LX_R; 11 L17*L28*L29; 8 L17*L28*C_OCF_Y
6 L17*L29*L29; 3 L17*L29*C_OHD_Z; 2 L17*L34*DROP_OHQ_Z; 2 L19*L22*L29
13 L19*L29*TX_P_; 7 L20*L24*L27; 3 L23*TX_P_*TX_P_; 22 L24*L27*TX_P_
10 L24*L29*TY_P_; 6 L24*TX_P_*TX_P_; 22 L24*TX_P_*LY_R; 7 L24*DROP_OHQ_Z*LY_R
9 L27*L29*DROP_OHQ_Z; 17 L27*DROP_OHP_Z*DROP_OHP_Z; 2 L28*L29*L29; 14 KLOW*DROP_OHP_Z
35 KLOW*TX_P_; 1 KLOW*TY_P_; 16 KLOW*LX_R; 36 +CDP*L27
26 +CDP*L29; 6 +CDP*DROP_OHP_Z; 36 +CDP*DROP_OCR_YZ; 2 -OFP*L17
4 +DFQ*L29; 14 +DFQ*DROP_OHP_Z; 8 +DFR*L17; 2 +HPQ*L17
9 +HPQ*L29; 4 +HPQ*DROP_OHP_Z; 3 +HPQ*LX_R; 2 -CFQ*L5
15 -CFQ*DROP_OHP_Z; 2 -CFQ*TY_P_; 9 +HQR*L2; 6 +HQR*L17
22 -FPQ*L6; 9 -FPQ*L7; 9 -FPQ*L29; 3 -FPQ*LX_R
10 -FQR*L17; 7 C_HFP_Q*L2; 20 C_HFP_Q*L17; 31 C_CDF_Q*L16
4 C_CDF_Q*L21; 4 C_CDF_Q*L22; 18 Q_OCDP_Y*L6; 1 Q_OCQR_YZ*L17
2 Q_HCPF_Q*L24; 16 Q_HDPF_Q*L2; 10 Q_HDPF_Q*L17; 2 Q_HDPF_Q*L24
8 Q_HDFR_Q*L2; 26 Q_HPFR_Q*L7; 25 Q_HPFR_Q*L16; 7 Q_HPFR_Q*DROP_OHQ_Z
3 Q_CDPF_Q*L3; 21 Q_CDPF_Q*L16; 6 Q_CDPF_Q*DROP_OHP_Z; 17 Q_CDPF_Q*LX_R
4 Q_DPFR_Q*L2; 8 Q_DPFR_Q*L6; 6 Q_DPFR_Q*L12; 7 Q_DPFR_Q*L17
6 Q_DPFR_Q*L30; 6 Q_DPFR_Q*L31
```

Upper bound: `-17436341/20000000`.

### Leaf TULmpmmpppppm

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR +HPQ +CQR +DQR +CFQ -PQR`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYQ -PYQ
P QOCYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L0*LX_R; 58 L0*L1*L27; 1 L0*L3*L3; 17 L0*L3*L19
20 L0*L3*L30; 15 L0*L3*L31; 4 L0*L4*TX_P_; 26 L0*L7*L20
8 L0*L12*L30; 33 L0*L13*L17; 3 L0*L14*TX_P_; 190 L0*L19*TX_P_
9 L0*L20*L29; 1 L0*L20*L36; 31 L0*L25*L25; 45 L0*L25*TX_P_
2 L0*L26*L30; 4 L0*L29*LX_R; 81 L1*L3*L27; 5 L1*L9*L17
5 L1*L12*L31; 75 L1*L17*L17; 185 L1*L17*TY_P_; 160 L1*L18*L24
10 L1*L20*L20; 54 L1*L24*L27; 1 L1*L24*L33; 9 L1*L24*DROP_OHQ_Z
4 L1*L27*L35; 123 L2*L2*TY_P_; 9 L2*L7*L23; 47 L2*L10*L13
19 L2*L10*L31; 8 L2*L14*L30; 5 L2*L18*LY_R; 112 L2*L24*TY_P_
139 L2*L27*TX_P_; 6 L3*L3*L35; 89 L3*L4*L16; 15 L3*L4*L24
8 L3*L4*-OHD; 8 L3*L8*L12; 39 L3*L10*L17; 14 L3*L14*L24
19 L3*L15*L17; 62 L3*L17*L22; 2 L3*L19*L19; 10 L3*L19*TX_P_
6 L3*L31*L31; 2 L4*L4*L31; 4 L4*L8*L19; 2 L4*L16*TY_P_
7 L4*L19*L25; 24 L4*L19*DROP_OHQ_Z; 6 L4*L20*L23; 1 L4*L20*L36
3 L4*L21*L27; 8 L4*L23*LX_R; 16 L4*L24*TX_P_; 57 L4*L27*L27
4 L4*L29*LY_R; 5 L4*TX_P_*TX_P_; 14 L5*L17*L24; 19 L5*L17*L29
10 L5*L17*L33; 50 L6*L6*L27; 1 L6*L10*L27; 1 L6*L10*L30
1 L6*L10*LY_R; 3 L6*L12*L21; 5 L6*L12*L29; 301 L6*L16*L27
1 L6*L17*L24; 109 L6*L17*LY_R; 1 L6*L18*L34; 133 L6*L26*L27
141 L6*L27*L29; 49 L6*L27*L30; 47 L6*L27*L31; 29 L6*L27*LX_R
2 L7*L10*L17; 1 L7*L10*L23; 1 L7*L12*L17; 379 L7*L16*L27
1 L7*L16*L29; 23 L7*L19*L23; 9 L7*L21*L23; 2 L7*L23*L30
2 L7*L23*L35; 39 L7*L23*TX_P_; 17 L8*L10*L17; 13 L8*L12*LY_R
11 L8*L14*L30; 1 L8*L15*L27; 1 L8*L17*L29; 4 L8*L19*TY_P_
86 L8*L27*LX_R; 9 L9*L17*L35; 2 L9*L27*-OHD; 88 L9*L27*LX_R
2 L10*L13*L24; 3 L10*L13*L27; 4 L10*L15*L27; 4 L10*L23*DROP_OCR_YZ
13 L10*L24*L33; 4 L10*L26*L34; 26 L10*L30*DROP_OHP_Z; 11 L11*L12*L30
4 L11*L22*L27; 4 L12*L14*L23; 26 L12*L17*L34; 3 L12*L21*L29
1 L12*L22*TX_P_; 2 L12*L25*L32; 3 L12*L27*L32; 49 L12*L27*DROP_OHP_Z
4 L12*L29*L29; 1 L12*L29*TX_P_; 4 L13*L31*L31; 2 L14*L14*L17
2 L14*L14*LX_R; 26 L14*L16*L30; 6 L14*L24*L32; 2 L14*L27*L30
1 L14*TX_P_*DROP_OHQ_Z; 159 L16*L27*L27; 1 L16*L30*C_OCF_Y; 64 L17*L17*L27
19 L17*L17*TY_P_; 4 L17*L19*L28; 130 L17*L19*L29; 28 L17*L22*L27
25 L17*L23*L29; 12 L17*L23*LX_R; 78 L17*L24*L28; 1 L17*L24*LX_R
95 L17*L24*LY_R; 32 L17*L26*LY_R; 18 L17*L29*C_OHD_Z; 73 L17*C_OCF_Y*TY_P_
64 L17*TY_P_*LX_R; 1 L17*LX_R*LX_R; 4 L18*L18*L30; 5 L18*L23*L24
2 L18*L23*L31; 57 L18*L27*DROP_OCR_YZ; 1 L19*L25*L25; 19 L19*TX_P_*TX_P_
140 L20*L26*L27; 2 L20*L26*L29; 6 L20*L27*LX_R; 1 L20*L30*LY_R
12 L21*L27*DROP_OHP_Z; 2 L21*L34*LX_R; 1 L22*L27*L31; 2 L22*L30*TX_P_
2 L22*L35*TX_P_; 10 L23*L23*L25; 2 L23*L24*L33; 23 L23*L24*TY_P_
18 L23*L27*+OCF; 10 L23*L27*DROP_OHQ_Z; 96 L24*L24*TY_P_; 6 L24*L27*DROP_OHQ_Z
29 L24*TY_P_*LY_R; 2 L25*L27*L30; 57 L27*L27*TY_P_; 140 L27*L27*DROP_OHQ_Z
49 L27*L33*TX_P_; 58 L27*-OHD*-OHD; 5 L27*+OCF*TY_P_; 157 L27*TX_P_*LY_R
2 L31*L31*L31; 14 L31*L31*L34; 2 L34*L34*TX_P_; 1 L35*DROP_OHQ_Z*LY_R
16 KLOW*L9; 28 KLOW*L12; 4 KLOW*L21; 48 KLOW*L26
14 KLOW*DROP_OHP_Z; 63 KLOW*TX_P_; 204 KLOW*TY_P_; 59 KLOW*LX_R
1 FAN*L30; 1 CENT*L2; 8 CENT*L13; 15 CENT*L31
5 TOPCOUNT*L7; 34 +HCF*L27; 2 +CDF*L3; 8 +CDF*L23
11 +OYZ*L12; 31 -HYZ*L6; 7 -HYZ*L16; 32 -HYZ*L29
6 -HCY*L12; 80 +CDY*L6; 1 +CDY*L25; 80 +CDY*TX_P_
1 +DFY*L17; 93 +CDP*L0; 86 +CDP*L6; 5 +CDP*L19
77 +CDP*L25; 123 +CDP*-OHD; 125 +CDP*C_OCF_Y; 67 +CDP*TX_P_
2 +CDP*TY_P_; 87 +CDP*DROP_OHQ_Z; 1 -HFQ*L10; 22 -HFQ*L20
4 -HFQ*LX_R; 1 +CDQ*L23; 54 -OHR*L27; 1 -OHR*TX_P_
139 -FPR*L0; 11 -CYZ*L8; 19 -CYZ*L16; 14 -CYZ*L24
30 -CYZ*C_OCF_Y; 1 +OYP*L23; 26 -OZQ*L0; 5 -OZQ*L12
2 -OZQ*L17; 10 -OZQ*L24; 4 -OZQ*L36; 1 -OZQ*TX_P_
26 -OZQ*LY_R; 5 +OZR*L0; 7 +OZR*L10; 2 +OZR*L12
13 +OZR*L18; 13 +OZR*L19; 9 +OZR*L20; 8 +OZR*L22
2 +OZR*L24; 13 +OZR*L35; 2 +OZR*L36; 1 +HPQ*-OHD
84 +HPQ*DROP_OHP_Z; 249 +HPQ*TX_P_; 268 +HPQ*DROP_OHQ_Z; 268 +HPQ*LX_R
9 +CQR*L4; 16 +DQR*L6; 86 +DQR*L12; 58 +DQR*L16
24 +DQR*L19; 5 +DQR*L23; 1 +DQR*L24; 29 +DQR*L26
87 +DQR*L33; 1 +DQR*DROP_OHQ_Z; 140 -PQR*L6; 83 -PQR*L7
96 -PQR*L8; 95 -PQR*L31; 1 -PQR*-OHD; 334 -PQR*DROP_OHP_Z
267 -PQR*DROP_OHQ_Z; 29 -PQR*DROP_OCR_YZ; 10 +ODZ*L17; 1 +HDQ*L29
6 +HQR*L2; 235 +HQR*L20; 1 +HQR*L34; 1 +CPQ*L22
8 -FPQ*L3; 54 -FQR*L17; 23 -FQR*L19; 31 -FQR*L21
1 -FQR*L24; 43 -FQR*TX_P_; 1 -YZQ*L27; 1 -DYZ*LX_R
29 C_OHQ_Z*L17; 28 C_OQR_Z*L19; 5 C_OQR_Z*L23; 7 C_OQR_Z*L36
2 C_HFP_Q*L8; 140 C_HFP_Q*L17; 12 C_HFP_Q*L25; 1 C_HFP_Q*L34
46 C_HPR_Q*L2; 269 C_HPR_Q*L17; 13 C_HPR_Q*L29; 50 C_DPR_Q*L1
34 C_DPR_Q*L2; 95 C_DPR_Q*L24; 22 TPY_P_*L3; 17 TPY_P_*L17
17 Q_OQRH_Z*L4; 16 Q_OQRH_Z*L17; 83 Q_OCDP_Y*L24; 18 Q_OCQZ_Y*L27
1 SP_OCPR_YQ_OP1*L17; 1 SP_OCPR_YQ_OP1*L22; 1 SP_OCPR_YQ_OP1*TX_P_; 51 Q_OPFR_ZQ*L0
23 Q_OPFR_ZQ*L27; 1 Q_HDPF_Q*L9; 4 Q_HPFR_Q*L4; 19 Q_HPFR_Q*L7
37 Q_HPFR_Q*L20; 31 Q_HPFR_Q*L25
```

Upper bound: `-188409211/62500000`.

### Leaf TULmpmmpppppp

Assumptions: `-CYZ +OYP -OZP -OZQ +OZR +HPQ +CQR +DQR +CFQ +PQR`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YHCDZ +YDZ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYQ -PYQ
P QOCYR -QYR
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
16 L0*L3*L7; 40 L0*L3*L27; 7 L0*L8*L30; 3 L0*L10*L21
164 L0*L12*L30; 393 L0*L16*L27; 17 L0*L23*L29; 1 L0*L23*L36
438 L1*L1*L24; 215 L1*L1*L30; 71 L1*L2*L2; 159 L1*L2*L24
713 L1*L2*TY_P_; 18 L1*L3*L30; 199 L1*L4*L12; 16 L1*L4*TX_P_
353 L1*L6*L27; 286 L1*L7*L24; 27 L1*L7*L30; 5 L1*L8*L16
62 L1*L8*L24; 43 L1*L10*L30; 7 L1*L12*L18; 10 L1*L12*L20
100 L1*L13*L24; 7 L1*L14*L17; 43 L1*L14*L30; 48 L1*L15*L24
825 L1*L17*L17; 702 L1*L17*L24; 34 L1*L17*L33; 314 L1*L17*TY_P_
53 L1*L17*LY_R; 3 L1*L23*L24; 153 L1*L24*L28; 1117 L1*L24*TY_P_
14 L1*L24*DROP_OHQ_Z; 7 L1*L31*TY_P_; 748 L2*L2*TY_P_; 156 L2*L3*L10
41 L2*L3*L31; 302 L2*L6*TY_P_; 942 L2*L10*TX_P_; 22 L2*L10*LX_R
4 L2*L10*LY_R; 46 L2*L14*L30; 380 L2*L17*TY_P_; 58 L2*L27*L28
191 L2*L27*TY_P_; 122 L2*L31*TY_P_; 28 L2*L34*LY_R; 306 L3*L3*L4
82 L3*L3*L8; 82 L3*L4*L6; 148 L3*L4*L8; 106 L3*L4*L12
9 L3*L4*L15; 105 L3*L4*L24; 257 L3*L4*TY_P_; 4 L3*L7*L23
123 L3*L8*L8; 420 L3*L8*L14; 61 L3*L10*L29; 4 L3*L10*L35
146 L3*L12*L27; 51 L3*L14*L14; 99 L3*L14*L24; 2 L3*L17*L23
118 L3*L17*L27; 83 L3*L18*L27; 3 L3*L23*L27; 281 L4*L4*TX_P_
123 L4*L6*TX_P_; 7 L4*L7*L34; 9 L4*L8*LY_R; 41 L4*L12*L30
11 L4*L12*L35; 33 L4*L19*L24; 314 L4*L19*TX_P_; 7 L4*L30*TX_P_
62 L4*TX_P_*LX_R; 1 L5*L10*L30; 146 L5*L12*L27; 281 L5*L17*L27
342 L6*L6*L27; 23 L6*L12*L27; 1325 L6*L17*L27; 401 L6*L18*L27
1603 L6*L27*TY_P_; 7 L6*L27*DROP_OHQ_Z; 87 L6*L27*LY_R; 372 L7*L7*L19
7 L7*L7*L23; 423 L7*L17*L19; 298 L7*L19*L24; 168 L7*L19*L29
78 L7*L24*L26; 558 L7*L26*TX_P_; 11 L8*L14*L17; 43 L8*L24*L27
4 L8*L26*L27; 2 L8*L27*TY_P_; 16 L9*L15*L27; 161 L10*L12*L31
43 L10*L12*L35; 11 L10*L13*L17; 33 L10*L13*L29; 4 L10*L14*L21
56 L10*L14*L30; 13 L10*L14*L31; 116 L10*L17*L17; 1 L10*L17*L19
75 L10*L17*DROP_OHP_Z; 41 L10*L17*TX_P_; 1 L10*L17*TY_P_; 10 L10*L17*LX_R
3 L10*L21*L27; 3 L10*L23*L24; 4 L10*L24*L32; 116 L10*L24*L34
4 L10*L26*L27; 4 L10*L27*L35; 3 L10*L29*LY_R; 55 L11*L14*L24
4 L11*L27*L32; 9 L12*L14*L27; 2 L12*L17*L23; 31 L12*L17*L27
1 L12*L22*L27; 11 L12*L23*L24; 4 L12*L23*L32; 211 L12*L24*LY_R
118 L12*L27*L30; 42 L12*L27*L35; 164 L12*L27*+OCF; 378 L12*L27*C_OHD_Z
23 L13*L14*L24; 23 L14*L17*L24; 4 L14*L23*L24; 1 L14*L23*-OHD
2 L14*L23*TX_P_; 146 L14*L24*L28; 94 L14*L24*L30; 1 L14*L24*TY_P_
168 L14*L30*LY_R; 181 L17*L17*L28; 348 L17*L19*L29; 35 L17*L19*L31
2 L17*L23*L33; 1 L17*L27*L36; 81 L17*L27*TY_P_; 90 L17*L27*DROP_OCR_YZ
314 L17*L28*TY_P_; 61 L17*L29*LY_R; 35 L17*L31*TY_P_; 204 L17*TX_P_*LY_R
3 L18*L23*L24; 90 L18*L24*L27; 7 L18*L24*L30; 2 L18*L27*L31
71 L19*L24*L24; 76 L19*L24*L29; 73 L19*L24*TX_P_; 4 L20*L27*L36
3 L21*L27*TY_P_; 4 L22*L24*L29; 3 L23*L24*L27; 3 L23*L34*TX_P_
90 L24*L24*L27; 168 L24*L24*L36; 53 L24*L27*L28; 90 L24*L27*LX_R
71 L24*TX_P_*LY_R; 239 L26*L29*TX_P_; 277 L26*TX_P_*TX_P_; 7 L27*L29*L34
43 L27*L30*LX_R; 4 L27*L31*L34; 18 L27*L31*L36; 4 L27*L33*DROP_OHQ_Z
4 L27*L35*LY_R; 81 L27*DROP_OHP_Z*TY_P_; 3 L27*DROP_OHQ_Z*LY_R; 33 L29*L31*L34
41 L31*L31*L31; 29 L31*L34*L34; 17 L31*TX_P_*LY_R; 73 KLOW*L10
71 KLOW*L12; 38 KLOW*L15; 39 KLOW*L31; 1105 KLOW*TY_P_
67 CENT*L1; 53 CENT*L31; 118 TOPCOUNT*L24; 217 +OYZ*L8
130 +OYZ*L27; 119 -HYZ*L1; 16 -HYZ*L4; 43 -HYZ*L10
34 -HYZ*L14; 336 -HYZ*L16; 347 -HYZ*L17; 7 -HYZ*L19
99 -HYZ*L25; 46 -HYZ*L30; 120 +OCY*L17; 121 +OCY*L24
460 +OCY*L30; 90 +OCY*L31; 5 +OCY*TY_P_; 2 -HCY*L4
160 +CDY*L3; 174 +CDY*L6; 874 +CDY*L16; 9 +CDY*L34
11 +CDY*LY_R; 72 +CDP*L7; 174 +CDP*L9; 7 +CDP*L14
32 +CDP*L17; 646 +CDP*L21; 110 +CDP*L27; 257 +CDP*L28
129 +CDP*-OHD; 870 +CDP*C_OCF_Y; 646 +CDP*DROP_OHQ_Z; 402 -DFP*L1
281 -DFP*L4; 41 -DFP*L8; 7 -DFP*L15; 184 -DFP*L16
282 -DFP*L29; 7 -DFP*L30; 467 -DFP*LX_R; 1 -DYP*L10
4 -HFQ*L1; 16 -HFQ*L13; 11 -HFQ*L17; 3 -HFQ*L19
3 -HFQ*L32; 11 -HFQ*TX_P_; 11 -HFQ*LX_R; 204 -OHR*L1
81 -OHR*L29; 456 +HFR*L18; 43 +HFR*L30; 1055 +HFR*TY_P_
4 -CYR*L10; 332 +HZR*L1; 168 +HZR*L7; 119 +HZR*L11
177 +HZR*L14; 23 +HZR*L17; 4 +HZR*L23; 215 +HZR*L28
118 +HZR*L30; 88 +HZR*-OHD; 2 +HZR*DROP_OHQ_Z; 168 +HZR*LX_R
485 -CYZ*L6; 432 -CYZ*L7; 420 -CYZ*L12; 22 -CYZ*L14
99 -CYZ*L24; 86 -CYZ*L29; 374 -CYZ*L30; 7 -CYZ*TY_P_
52 +OYP*L3; 31 +OYP*L6; 1 +OYP*L10; 10 +OYP*L24
4 -OZQ*L10; 4 -OZQ*L27; 378 +OZR*L0; 69 +OZR*L4
29 +OZR*L32; 23 +OZR*L35; 17 +CFQ*L1; 3 +CFQ*L27
76 +PQR*L6; 3 +PQR*L11; 17 +PQR*L13; 1 +PQR*L15
41 +PQR*L19; 76 +PQR*L29; 3 +PQR*C_OHD_Z; 73 +PQR*TX_P_
73 +PQR*LX_R; 3 +PQR*LY_R; 1 +HDQ*L12; 3 +HDQ*L27
6 +HQR*L12; 59 -FPQ*L2; 41 -FPQ*L19; 3 -FPQ*L32
17 -FPQ*L33; 35 -FPQ*-OHD; 73 -FPQ*TX_P_; 80 -FPQ*LX_R
41 -FPQ*LY_R; 72 -FQR*L2; 73 -FQR*L25; 1 -FQR*L36
66 -FQR*DROP_OHP_Z; 33 C_FPR_Q*L4; 467 C_FPR_Q*L7; 17 C_FPR_Q*L9
3 C_FPR_Q*L10; 24 C_FPR_Q*L12; 41 C_FPR_Q*L18; 413 C_FPR_Q*L21
38 C_FPR_Q*L23; 144 C_FPR_Q*L24; 306 C_FPR_Q*L27; 420 C_FPR_Q*DROP_OHQ_Z
393 C_FPR_Q*LY_R; 72 TPX_P_*L24; 662 TPY_P_*L1; 255 TPY_P_*L17
214 TPY_P_*L24; 580 TPY_P_*L27; 146 Q_OCDZ_Y*L3; 41 Q_OCDZ_Y*L30
151 Q_OCDP_Y*L27; 186 Q_HPFR_Q*L7; 7 Q_HPFR_Q*L14; 439 Q_HPFR_Q*L17
168 Q_HPFR_Q*L24; 79 Q_HPFR_Q*L29; 53 Q_HPFR_Q*LY_R; 105 Q_DPFR_Q*L2
333 Q_DPFR_Q*L17; 53 Q_DPFR_Q*L27
```

Upper bound: `-1102627243/250000000`.

### Leaf TULmpmp

Assumptions: `-CYZ +OYP -OZP +OZQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDZQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYZQ +OYQ
P OHZQR +OZR
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YHCDZ +YDZ
P ZOHDQ +ZDQ
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P POCDQ -PCQ
P POCYQ -PYQ
P QOCDY -QDY
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP Y 9 lower 279/1000
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 27/50 1
q 279/1000 1
l 21/200 907/1000
m 347/500 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
198 L0*L1*L24; 58 L0*L3*L17; 319 L0*L3*L30; 58 L0*L3*TX_P_
106 L0*L3*DROP_OCR_YZ; 3 L0*L6*TY_P_; 200 L0*L20*L27; 188 L0*L27*L36
6 L1*L1*L8; 170 L1*L1*L30; 165 L1*L3*L4; 50 L1*L3*L14
33 L1*L4*L24; 12 L1*L5*L17; 46 L1*L6*L10; 44 L1*L7*L17
129 L1*L7*L23; 136 L1*L7*L24; 382 L1*L7*L30; 61 L1*L7*LY_R
26 L1*L9*L30; 52 L1*L9*L36; 2 L1*L12*L14; 11 L1*L13*L24
173 L1*L14*L24; 2 L1*L14*L30; 58 L1*L17*L23; 201 L1*L17*L24
7 L1*L19*L30; 85 L1*L22*L27; 143 L1*L22*L30; 352 L1*L24*L24
54 L1*L24*L29; 438 L1*L24*L30; 35 L1*L24*TY_P_; 197 L1*L27*L30
14 L1*L30*TX_P_; 52 L1*L31*L36; 68 L2*L3*L23; 15 L2*L3*L27
119 L2*L10*L13; 104 L2*L12*L27; 12 L3*L4*L6; 1 L3*L4*L8
18 L3*L4*L14; 13 L3*L4*L17; 140 L3*L4*L19; 11 L3*L4*L24
151 L3*L4*-OHD; 71 L3*L4*TY_P_; 92 L3*L6*L14; 7 L3*L6*L19
226 L3*L8*L8; 267 L3*L8*L14; 232 L3*L8*L22; 23 L3*L9*TX_P_
50 L3*L11*L27; 23 L3*L12*TX_P_; 81 L3*L14*L17; 140 L3*L14*L20
102 L3*L14*+OCF; 105 L3*L14*TX_P_; 31 L3*L14*LX_R; 105 L3*L15*L27
11 L3*L18*L34; 1 L3*L18*L35; 140 L3*L19*L19; 11 L3*L19*L24
125 L3*L22*L35; 68 L3*L22*+OCF; 176 L3*L23*L30; 2 L3*L23*LY_R
265 L3*L24*L27; 3 L3*L25*LX_R; 104 L3*L26*L30; 14 L3*L27*DROP_OCR_YZ
56 L3*L27*LX_R; 23 L3*L30*TX_P_; 15 L3*L31*LY_R; 36 L3*L32*LX_R
61 L4*L4*TX_P_; 4 L4*L6*L27; 13 L4*L6*TX_P_; 7 L4*L8*TX_P_
3 L4*L9*L27; 2 L4*L10*L17; 1 L4*L12*L23; 10 L4*L12*TX_P_
67 L4*L19*TX_P_; 5 L4*L20*L27; 1 L4*L23*TX_P_; 140 L4*L27*DROP_OCR_YZ
83 L5*L5*L17; 18 L5*L14*L17; 73 L5*L17*L19; 3 L6*L9*L24
24 L6*L9*L34; 2 L6*L10*L19; 25 L6*L17*L22; 132 L6*L18*L27
94 L6*L20*L27; 297 L6*L22*L27; 350 L6*L27*L30; 73 L6*L27*+OCF
139 L6*L27*DROP_OHP_Z; 1 L6*L31*TY_P_; 10 L7*L14*L17; 7 L7*L14*L19
4 L7*L19*L23; 3 L7*L19*L24; 85 L7*L19*TX_P_; 120 L7*L22*L24
25 L7*L23*TX_P_; 3 L7*L24*L31; 73 L7*L27*LX_R; 12 L7*TX_P_*LY_R
38 L8*L14*TX_P_; 89 L8*L27*L36; 226 L8*L27*C_OHD_Z; 11 L8*L27*TX_P_
226 L9*L9*L31; 67 L9*L9*L34; 115 L9*L22*L36; 89 L9*L27*L31
36 L9*L31*L34; 429 L10*L12*L31; 489 L10*L12*L35; 5 L10*L13*L18
195 L10*L13*L20; 14 L10*L13*TX_P_; 5 L10*L15*L17; 35 L10*L15*L21
24 L10*L16*L30; 50 L10*L17*L27; 100 L10*L17*L31; 18 L10*L20*L33
344 L10*L20*L36; 19 L10*L22*LX_R; 6 L10*L23*DROP_OHP_Z; 124 L10*L31*DROP_OHP_Z
59 L10*L31*DROP_OCR_YZ; 46 L10*-OHD*LX_R; 96 L12*L17*L27; 75 L12*L19*L23
36 L12*L19*L27; 13 L12*L20*L23; 14 L12*L23*L23; 81 L14*L17*L22
14 L14*L20*L23; 188 L14*L27*-OHD; 36 L15*L17*L27; 172 L16*L24*L27
5 L16*L26*L27; 45 L16*L27*LY_R; 3 L17*L22*L22; 96 L17*L27*L30
85 L17*L27*L35; 85 L17*L27*DROP_OHP_Z; 140 L18*L27*L27; 55 L19*L20*L27
55 L19*L22*L24; 51 L19*L24*L27; 85 L19*L24*TX_P_; 68 L20*L27*L30
244 L20*L27*C_OHD_Z; 107 L21*L27*LX_R; 19 L22*L24*L27; 68 L22*L24*L30
19 L22*L24*LY_R; 85 L22*L27*-OHD; 165 L22*L30*LY_R; 173 L22*L31*L36
3 L23*L23*TX_P_; 146 L23*L27*L31; 209 L24*L27*+OCF; 162 L24*TX_P_*LY_R
2 L27*L28*+OCF; 89 L27*L30*L35; 29 L27*L31*L32; 36 L27*L32*TX_P_
140 L27*TY_P_*DROP_OCR_YZ; 15 KLOW*L3; 176 CENT*L1; 10 QUADQ*L27
14 QUADR*L27; 344 +OYZ*L3; 129 -HYZ*L9; 238 -HYZ*L17
7 -HYZ*L19; 68 -HYZ*L20; 309 -HYZ*L22; 31 -HYZ*L24
32 -HYZ*L29; 338 -HYZ*C_OCF_Y; 252 -HYZ*DROP_OHP_Z; 54 +OCY*L5
71 +OCY*L28; 23 +OCY*L29; 1047 +OCY*L30; 79 +OCY*L33
5 +OCY*LX_R; 9 -HFZ*L27; 1 +CDP*L12; 18 +CDP*L14
103 +CDP*L17; 211 +CDP*L19; 11 +CDP*L24; 14 +CDP*L27
1 +CDP*L30; 103 +CDP*DROP_OHP_Z; 71 +CDP*TY_P_; 11 +CDP*LY_R
13 -DFP*L2; 61 -DFP*L4; 13 -DFP*L6; 16 -DFP*L12
76 -DFP*L17; 1 -DFP*L23; 6 -DFP*L30; 2 -DFP*L32
76 -DFP*DROP_OHP_Z; 2 -DFP*LY_R; 173 +HCQ*L14; 138 +HCQ*L27
10 -HFQ*L0; 13 -HFQ*L12; 12 -HFQ*L20; 285 -HFQ*L25
13 -HFQ*TX_P_; 26 -HFQ*LX_R; 2 +CDQ*L1; 125 +CDQ*L10
6 +HZQ*L0; 145 -OHR*L1; 7 -OHR*L17; 334 -OHR*L22
36 -OHR*L27; 7 +HFR*L2; 19 +HFR*L17; 80 +HFR*L18
203 +HFR*L21; 299 +HFR*L22; 245 +HFR*L24; 350 +HFR*L30
11 +HFR*L31; 4 +HFR*TY_P_; 51 +HFR*LY_R; 220 +OQR*L0
13 -FPR*L21; 2 -FPR*L23; 10 -FPR*L25; 51 -FPR*L27
9 -FPR*-OHD; 85 -FPR*TX_P_; 7 -CYZ*L4; 543 -CYZ*L6
525 -CYZ*L7; 1047 -CYZ*L12; 488 -CYZ*L20; 31 -CYZ*L25
1047 -CYZ*L30; 102 -CYZ*+OCF; 24 -CYZ*DROP_OHP_Z; 7 -CYZ*TY_P_
105 -CYZ*LY_R; 10 -OZP*L7; 88 -OZP*L22; 5 -OZP*L35
36 -OZP*LY_R; 42 +OZQ*L1; 348 +OZQ*L2; 1 +OZQ*L4
13 +OZQ*L6; 292 +OZQ*L9; 309 +OZQ*L11; 119 +OZQ*L17
14 +OZQ*L18; 13 +OZQ*L20; 14 +OZQ*L23; 119 +OZQ*DROP_OHP_Z
165 +OZQ*DROP_OCR_YZ; 2 +HQR*L4; 203 +HQR*L6; 173 +HQR*L14
125 +HQR*L17; 58 +HQR*L19; 107 +HQR*L24; 68 +HQR*L30
394 +HQR*-OHD; 111 +HQR*DROP_OHP_Z; 93 -FPQ*L1; 13 -FPQ*L7
7 -FPQ*L9; 7 -FPQ*L14; 13 -FPQ*L24; 19 -FQR*L10
7 -FQR*L14; 16 -FYZ*L27; 36 +ZPQ*L1; 5 +ZPQ*L9
3 -DYQ*L27; 69 C_OYQ_Z*L3; 2 C_OPQ_Z*L9; 5 Q_OPFH_ZQ*L3
22 Q_OYQH_Z*L27; 6 Q_OCPQ_YZ*L10; 2 Q_OCPQ_YZ*L27; 4 Q_OPFR_ZQ*L0
6 Q_OPFR_ZQ*L4
```

Upper bound: `-75818199/125000000`.

### Leaf TULmpp

Assumptions: `-CYZ +OYP +OZP`.

```c1top-geometry
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHFZP -OFZ
P OHFZR +OZR
P OHYPQ +OYQ
P OHZPQ +OZQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YHCDZ +YDZ
P ZOFPR +ZPR
P POCDQ -PCQ
P POCYQ -PYQ
P POCZQ -PZQ
P QOCDY -QDY
P QOCDZ -QDZ
```

```c1top-bounds
T OCZ Y 7 lower 279/1000
T OCP YZ 9 lower 347/500
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 279/1000 699/1000
p 27/50 1
q 347/500 1
l 21/200 907/1000
m 347/500 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L0*L3; 3 L0*L0*LX_R; 2 L0*L10*L17; 1 L0*L12*L35
11 L0*L14*TX_P_; 2 L1*L1*L18; 4 L1*L3*L15; 7 L1*L4*L30
2 L1*L6*L30; 5 L1*L8*L24; 21 L1*L8*L30; 6 L1*L14*L29
11 L1*L16*L24; 14 L1*L16*L30; 8 L1*L17*L17; 7 L1*L17*L24
3 L1*L19*L33; 1 L1*L24*L25; 6 L1*L24*L26; 5 L1*L24*L34
4 L1*L24*+OCF; 41 L1*L30*L31; 7 L1*L30*TY_P_; 7 L3*L3*L12
4 L3*L3*L18; 7 L3*L3*L30; 3 L3*L4*LX_R; 5 L3*L6*L7
1 L3*L6*L14; 5 L3*L6*L24; 1 L3*L6*L34; 5 L3*L6*LX_R
4 L3*L8*L8; 11 L3*L8*L14; 7 L3*L8*+OCF; 2 L3*L11*-OHD
15 L3*L12*L18; 9 L3*L14*L33; 4 L3*L14*LX_R; 4 L3*L15*L27
13 L3*L17*L34; 3 L3*L18*DROP_OCR_YZ; 3 L3*L19*LY_R; 5 L3*L24*LY_R
14 L4*L6*TX_P_; 3 L4*L6*LX_R; 3 L4*L16*TX_P_; 9 L4*L25*TX_P_
8 L5*L24*TX_P_; 24 L6*L6*L27; 2 L6*L10*TY_P_; 3 L6*L14*L36
5 L6*L14*TX_P_; 5 L6*L14*LX_R; 12 L6*L17*L18; 17 L6*L17*L27
4 L6*L18*L27; 2 L6*L18*L35; 4 L6*L18*LX_R; 12 L6*L26*L27
14 L6*L27*L29; 1 L6*L27*-OHD; 8 L6*L27*LX_R; 5 L7*L12*L19
5 L7*L14*LY_R; 10 L7*L19*TX_P_; 23 L7*L26*TX_P_; 8 L7*TX_P_*LY_R
4 L8*L14*LX_R; 4 L9*L9*L31; 10 L9*L15*L31; 2 L9*L18*L24
12 L10*L12*L13; 50 L10*L12*L30; 30 L10*L12*L31; 7 L10*L12*L36
13 L10*L13*L18; 12 L10*L13*C_OCF_YZ; 14 L10*L13*DROP_OCR_YZ; 5 L10*L16*L25
40 L10*L16*L30; 40 L10*L16*L31; 28 L10*L16*L36; 7 L10*L18*L30
5 L10*L24*TX_P_; 3 L10*L25*DROP_OCR_YZ; 2 L10*L28*TX_P_; 4 L10*L30*LX_R
4 L10*L31*LX_R; 7 L10*L33*L36; 2 L10*DROP_OCR_YZ*LX_R; 5 L11*L24*L27
8 L12*L18*L27; 22 L12*L19*L24; 11 L12*L19*TX_P_; 32 L12*L26*TX_P_
8 L14*L14*L31; 4 L14*L16*L30; 9 L14*L16*TX_P_; 8 L14*L16*LY_R
4 L14*L20*TX_P_; 4 L14*L21*TX_P_; 7 L14*L27*L29; 10 L14*L30*L35
9 L14*L30*-OHD; 55 L14*L30*C_OCF_YZ; 3 L14*L36*TX_P_; 2 L15*L24*TX_P_
7 L16*L24*L27; 5 L16*L27*L30; 5 L17*L19*L24; 8 L17*L27*C_OCF_YZ
6 L17*L27*DROP_OCR_YZ; 8 L17*TX_P_*LY_R; 6 L18*L24*L27; 2 L18*L27*L27
4 L18*L27*-OHD; 7 L18*L30*L30; 13 L18*L31*L36; 3 L19*L24*L29
15 L19*L24*C_OCF_YZ; 7 L19*L31*L35; 2 L19*LY_R*LY_R; 1 L21*L24*DROP_OCR_YZ
5 L24*L33*LY_R; 3 L24*TX_P_*LY_R; 3 L26*TX_P_*TX_P_; 13 L30*TX_P_*LY_R
1 L31*L34*L34; 6 L31*TX_P_*LY_R; 2 FAN*L3; 22 +OYZ*L3
7 -HYZ*L4; 1 -HYZ*L12; 48 -HYZ*L16; 26 -HYZ*L17
20 -HYZ*L31; 4 -HYZ*-OHD; 21 -HYZ*C_OCF_YZ; 7 -HYZ*TY_P_
2 -HYZ*LY_R; 4 -OHY*L3; 5 +OCY*L33; 14 +OCY*L36
11 -HCZ*L10; 1 +CDZ*TX_P_; 3 +CDP*LX_R; 1 -DFP*L33
3 -DFP*TX_P_; 14 -DFP*LX_R; 5 -CFP*L13; 7 +HYP*L3
4 -CZP*L3; 1 -OHR*L3; 9 -OHR*L19; 2 +HFR*L12
9 +HFR*L18; 6 +HFR*L24; 5 +HFR*L29; 5 +HFR*L30
2 +HFR*L32; 2 +HFR*L36; 5 +HFR*-OHD; 6 +HFR*DROP_OCR_YZ
7 +HFR*LX_R; 6 +HZR*TX_P_; 7 -FPR*L7; 2 -FPR*L8
30 -FPR*L12; 19 -FPR*L16; 24 -FPR*L17; 6 -FPR*L26
14 -FPR*L29; 4 -FPR*LX_R; 4 -CYZ*L6; 60 -CYZ*L12
9 -CYZ*L15; 81 -CYZ*L16; 34 -CYZ*L17; 13 -CYZ*L18
4 -CYZ*L25; 13 -CYZ*-OHD; 5 -CYZ*+OCF; 12 -CYZ*DROP_OCR_YZ
1 +OZP*L8; 11 +OZP*L16; 11 +OZP*L29; 7 +OZP*L33
3 +OZP*L34; 11 +OZP*+OCF; 8 +OZP*DROP_OCR_YZ; 8 +OZP*LX_R
2 -OFZ*L0; 3 -OFZ*L24; 5 +OZR*L24; 2 -YZR*L1
14 C_OCZ_Y*L30
```

Upper bound: `-245368281/250000000`.

### Leaf TULpmm

Assumptions: `+CYZ -OYP -OYQ`.

```c1top-geometry
P OHDYP +ODY
P OHDPQ +ODQ
P OHYZP -OZP
P OHYZQ -OZQ
P OCDYZ +ODZ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YHFPR +YPR
P ZHFPR +ZPR
P POCDQ -PCQ
P QOHYR -QYR
P QOHZR -QZR
```

```c1top-bounds
T OHP YZ 8 lower 694/885
T OHQ YZ 0 lower 694/907
T OHQ YZ 10 lower 694/885
```

```c1top-box
h 153/200 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 129/500 1
l 98/125 907/1000
m 93/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
576 L0*L1*L29; 2174 L0*L2*L27; 10 L0*L8*L30; 390 L0*L17*L27
338 L0*L24*L27; 8 L0*L30*TX_P_; 1833 L1*L1*L2; 173 L1*L2*L2
25 L1*L2*L11; 103 L1*L2*L14; 35 L1*L3*L35; 147 L1*L3*TX_P_
1266 L1*L3*LY_R; 181 L1*L6*L29; 281 L1*L7*L23; 41 L1*L8*L15
21 L1*L8*L19; 10 L1*L9*L35; 35 L1*L10*L24; 90 L1*L12*L12
328 L1*L13*L24; 161 L1*L13*LY_R; 85 L1*L15*L20; 42 L1*L20*L22
634 L1*L20*L25; 85 L1*L20*L26; 14 L1*L20*L35; 617 L1*L20*TY_P_
207 L1*L22*L27; 19 L1*L22*L30; 57 L1*L23*L24; 58 L1*L23*L29
90 L1*L23*TX_P_; 190 L1*L24*L25; 401 L1*L24*DROP_OHP_YZ; 537 L1*L24*TY_P_
202 L1*L25*TX_P_; 126 L1*L27*L33; 1013 L1*L27*+OCF; 132 L1*L29*TY_P_
49 L1*L30*L32; 20 L2*L2*L35; 1181 L2*L2*TY_P_; 28 L2*L4*L11
9 L2*L4*L31; 11 L2*L6*L31; 1 L2*L6*L35; 56 L2*L8*TY_P_
288 L2*L12*LY_R; 19 L2*L14*L34; 4 L2*L19*L32; 600 L2*L20*TY_P_
300 L2*L27*L29; 8 L2*L30*L30; 44 L2*L30*L32; 14 L2*L30*TY_P_
3 L2*L31*LX_R; 17 L3*L4*L32; 86 L3*L10*L12; 31 L3*L12*L12
112 L3*L17*L17; 442 L3*L17*L23; 66 L3*L17*L30; 23 L3*L17*L34
5 L3*L19*L29; 15 L3*L23*L29; 3 L3*L24*L30; 3 L3*L24*TX_P_
152 L3*L27*L33; 292 L3*L27*TY_P_; 287 L3*L29*LY_R; 408 L4*L6*L21
7 L4*L6*L32; 6 L4*L8*L21; 17 L4*L8*L36; 50 L4*L12*LY_R
1 L4*L14*L25; 5 L4*L14*LX_R; 153 L4*L16*L29; 867 L4*L17*L20
15 L4*L19*L29; 3 L4*L21*L32; 749 L4*L27*L27; 59 L4*L27*L29
77 L5*L8*L17; 97 L5*L12*L17; 29 L5*L14*L17; 252 L5*L17*L23
6 L5*L24*LY_R; 173 L5*L27*-OHD; 224 L5*L29*DROP_OHQ_YZ; 1 L6*L12*L19
21 L6*L17*L30; 25 L6*L17*TY_P_; 5 L6*L18*L29; 504 L6*L27*-OHD
181 L6*L27*LX_R; 14 L6*L29*TX_P_; 7 L7*L7*L30; 135 L7*L8*L17
5 L7*L8*L30; 176 L7*L17*L27; 7 L7*L17*L29; 199 L7*L17*C_OHD_YZ
8 L7*L27*L33; 20 L7*L27*+OCF; 14 L7*L29*L33; 9 L7*L34*LY_R
14 L7*TX_P_*TX_P_; 95 L7*LY_R*LY_R; 15 L8*L13*TX_P_; 9 L8*L16*L29
68 L8*L17*+OCF; 34 L8*L19*L27; 17 L8*L19*L34; 7 L8*L24*L36
8 L9*L28*L29; 13 L9*L29*L30; 8 L9*L29*L31; 7 L9*L29*TX_P_
113 L10*L17*L29; 15 L10*L17*L32; 15 L10*L17*LY_R; 1 L10*L23*L29
267 L10*L27*L33; 5 L10*L29*TX_P_; 6 L11*L17*L24; 6 L11*L22*L29
48 L11*L24*L27; 2 L12*L14*L25; 43 L12*L14*L31; 112 L12*L17*L18
37 L12*L17*L35; 16 L12*L17*L36; 9 L12*L19*DROP_OHQ_YZ; 19 L12*L23*L32
89 L12*L24*L36; 16 L12*L25*L25; 89 L12*L25*L27; 109 L12*L27*L33
7 L12*L27*L35; 219 L12*L27*-OHD; 6 L12*L27*DROP_OHP_YZ; 21 L12*L29*TX_P_
7 L12*L31*LX_R; 17 L12*L32*TY_P_; 122 L12*L34*LY_R; 23 L13*L13*L29
165 L13*L27*L27; 61 L13*L27*L32; 307 L13*L29*LY_R; 70 L14*L20*L35
12 L14*L23*L29; 61 L14*L24*TY_P_; 174 L14*L24*LY_R; 236 L16*L20*LY_R
112 L17*L17*L31; 7 L17*L17*DROP_OHP_YZ; 112 L17*L19*L31; 694 L17*L19*DROP_OHQ_YZ
334 L17*L20*TY_P_; 236 L17*L21*L27; 475 L17*L22*L29; 9 L17*L22*L36
360 L17*L22*TX_P_; 145 L17*L22*LY_R; 9 L17*L23*L34; 5 L17*L23*L35
3 L17*L25*+OCF; 171 L17*L28*+OCF; 15 L17*L30*L32; 15 L17*L30*L35
6 L17*L30*LY_R; 7 L17*L31*L36; 5 L17*L32*DROP_OHQ_YZ; 16 L17*L33*L36
22 L17*L33*+OCF; 112 L17*L33*TY_P_; 15 L17*L35*L35; 112 L17*L35*TX_P_
7 L17*TX_P_*TX_P_; 197 L18*L19*L29; 205 L18*L20*L29; 145 L18*L20*LY_R
207 L18*L22*L27; 1094 L18*L26*L27; 34 L18*L27*L30; 226 L18*L29*DROP_OHQ_YZ
404 L19*L20*L20; 5 L19*L20*L32; 212 L19*L23*L29; 95 L19*L27*L33
17 L19*L29*L34; 12 L19*L29*+OCF; 404 L20*L22*TX_P_; 7 L20*L31*C_OHD_YZ
207 L22*L27*L28; 39 L22*L27*+OCF; 39 L22*L29*LY_R; 207 L23*L27*TY_P_
100 L24*L24*L34; 16 L24*L24*L36; 276 L24*L27*L29; 7 L24*L27*L31
28 L24*L27*L36; 3 L24*L29*+OCF; 282 L24*L29*LY_R; 7 L24*L35*LY_R
173 L26*L27*L27; 1094 L27*L27*TY_P_; 173 L27*L28*-OHD; 115 L27*L28*DROP_OHP_YZ
346 L27*L28*LY_R; 272 L27*L29*TY_P_; 241 L27*L30*L32; 241 L27*L31*L32
15 L27*L32*TX_P_; 41 L27*L32*LX_R; 19 L27*L33*L36; 37 L27*L34*LX_R
173 L27*LY_R*LY_R; 435 L29*L29*LY_R; 56 L29*L36*LY_R; 22 L29*+OCF*DROP_OHP_YZ
3 L30*L35*+OCF; 321 KLOW*L2; 34 KLOW*L18; 241 KLOW*L21
785 +OCD*L3; 7 +OCD*L6; 310 +OCD*L16; 5 +OCD*L35
312 +ODF*L17; 1 +CDF*L30; 21 +OYZ*L3; 41 +OYZ*L14
17 +OYZ*L19; 82 +OYZ*L22; 28 +OYZ*L24; 46 +OYZ*L31
39 +OYZ*L32; 41 +OYZ*L36; 25 +OYZ*-OHD; 7 +OYZ*DROP_OHP_YZ
70 +OYZ*DROP_OHQ_YZ; 39 -HYZ*L32; 3 -HCY*L13; 66 -HCY*L14
24 -HCY*L18; 20 -HCY*L19; 19 -HCY*L23; 1 -HCY*L29
10 -HCY*LY_R; 10 -HFY*L27; 1 +CDY*L12; 36 +CDY*L27
36 +DFY*L27; 24 -HDZ*L27; 37 +CFZ*L27; 260 -OHP*L27
794 +CDP*L2; 1211 +CDP*L8; 17 +CDP*L14; 197 +CDP*L19
212 +CDP*L22; 14 +CDP*L30; 1150 +CDP*L31; 115 +CDP*LY_R
427 -DFP*L22; 5 -DFP*L35; 2 +FYP*L17; 5 +FYP*L29
15 +CDQ*L2; 23 +DFQ*L13; 12 +DFQ*L15; 840 +DFQ*L18
146 +DFQ*L23; 7 +DFQ*L32; 15 +DFQ*+OCF; 113 -CYQ*L17
392 -OHR*L1; 441 +HFR*L1; 354 +HFR*L9; 57 +HFR*L23
174 +HFR*L25; 95 +HFR*L26; 254 +HFR*L29; 354 +HFR*L30
65 +HFR*L34; 866 +HFR*-OHD; 199 +HFR*DROP_OHP_YZ; 476 +HFR*TY_P_
6 +ODR*L27; 6 +HYR*L20; 28 +HZR*L2; 35 +HZR*L10
85 +HZR*L13; 147 +HZR*L14; 61 +HZR*L18; 117 +HZR*L25
67 +HZR*L28; 7 +HZR*L35; 6 +HZR*L36; 165 +HZR*LY_R
6 -DYR*L17; 6 -DYR*L20; 175 +OPQ*L1; 452 +OPQ*L3
130 +OPQ*L4; 15 +OPQ*L12; 6 +OPQ*L25; 241 +OPQ*L26
130 +OPQ*L28; 659 +OPQ*L29; 12 +OPQ*L34; 360 +OPQ*TX_P_
17 +CYZ*L4; 46 +CYZ*L8; 85 +CYZ*L12; 12 +CYZ*L23
7 +CYZ*L25; 21 +CYZ*L29; 21 +CYZ*LX_R; 113 -OYP*L17
70 -OYQ*L14; 109 -OYQ*L16; 533 +ODQ*L17; 824 +DPQ*L2
184 +DPQ*L6; 5 +DPQ*L10; 12 +DPQ*L14; 197 +DPQ*L18
146 +DPQ*L22; 6 +DPQ*L24; 115 +DPQ*C_OHD_YZ; 700 -FPQ*L12
677 -FPQ*L13; 302 -FPQ*L19; 404 -FPQ*L20; 146 -FPQ*L22
95 -FPQ*L26; 326 -FPQ*L28; 499 -FPQ*TY_P_; 212 +CPQ*L4
389 C_OHQ_YZ*L5; 14 C_OHQ_YZ*L11; 175 C_OHQ_YZ*L18; 42 C_OHQ_YZ*L22
640 C_OHQ_YZ*L25; 85 C_OHQ_YZ*L34; 234 C_OHQ_YZ*+OCF; 241 C_OHQ_YZ*DROP_OHP_YZ
348 C_OHQ_YZ*TY_P_; 85 C_OHQ_YZ*LY_R; 19 C_HCZ_Y*L34; 5 TPY_P_*L10
252 TPY_P_*L22; 7 TPY_P_*L33; 17 TPY_P_*L36; 653 TPY_P_*LY_R
23 Q_OPFR_Q*L17
```

Upper bound: `-2729242181/500000000`.

### Leaf TULpmpmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR`.

```c1top-geometry
C OHR Z Y +ROY 3239749/6167600
P OHDYP +ODY
P OHDYQ +ODQ
P OHDZQ +ODZ
P OHFZR +OFZ
P OHYZP -OZP
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOHDQ +YDQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOFPR +ZPR
P POCDQ -PCQ
P QOHZR -QZR
```

```c1top-bounds
T OHP YZ 8 lower 694/885
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OHR Z 12 lower 93/295
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 129/500 1
l 63/200 907/1000
m 279/1000 907/1000
r 63/200 297/500
t 843/1000 1
```

```c1top-sum
2 L0*L3*L34; 13 L0*L10*L17; 15 L0*L12*L34; 2 L0*L16*L35
6 L0*L16*TX_P_; 17 L0*L27*L30; 1 L0*L27*L33; 2 L0*L28*LX_R
3 L0*L30*DROP_OHR_Z; 58 L0*LX_R*LX_R; 6 L1*L3*L4; 2 L1*L3*L17
2 L1*L6*L7; 19 L1*L7*L7; 15 L1*L7*L10; 2 L1*L7*L31
13 L1*L7*LY_R; 1 L1*L9*TX_P_; 10 L1*L10*L12; 79 L1*L12*DROP_OHP_YZ
113 L1*L12*LX_R; 6 L1*L17*L17; 7 L1*L17*L18; 24 L1*L17*-OHD
11 L1*L17*LY_R; 1 L1*L21*L29; 386 L1*L24*L24; 27 L1*L27*DROP_OCR_Y
10 L1*L29*L29; 7 L1*L29*TY_P_; 13 L1*L32*TX_P_; 35 L2*L2*TY_P_
2 L2*L3*TX_P_; 6 L2*L27*TY_P_; 10 L2*L29*LY_R; 4 L2*L30*TY_P_
2 L2*L31*TX_P_; 15 L3*L3*DROP_OHR_Z; 49 L3*L4*L13; 12 L3*L4*DROP_OCR_Y
2 L3*L8*L17; 2 L3*L8*LX_R; 1 L3*L12*DROP_OHR_Z; 30 L3*L14*L17
76 L3*L17*L22; 76 L3*L17*L23; 15 L3*L17*L27; 67 L3*L18*L27
19 L3*L19*L29; 1 L3*L21*L27; 31 L3*L27*L33; 17 L3*L27*L36
174 L3*L27*DROP_OHR_Z; 66 L3*L27*LX_R; 1 L3*L30*L35; 47 L4*L6*TX_P_
58 L4*L7*L12; 1 L4*L9*L35; 1 L4*L10*L29; 1 L4*L11*L11
12 L4*L17*TX_P_; 11 L4*L21*L27; 41 L4*L24*L27; 24 L4*L27*LX_R
23 L4*L29*TX_P_; 5 L4*L33*TX_P_; 33 L4*TX_P_*DROP_OHR_Z; 11 L4*TX_P_*DROP_OCR_Y
64 L4*TX_P_*LY_R; 1 L5*L17*L35; 18 L5*L27*L27; 1 L5*L35*L35
17 L6*L10*L27; 7 L6*L12*L29; 7 L6*L12*L35; 35 L6*L14*L27
14 L6*L17*L27; 37 L6*L23*L27; 14 L6*L25*L25; 51 L6*L27*L33
46 L6*L27*L36; 7 L7*L7*L12; 16 L7*L8*L24; 2 L7*L13*L19
1 L7*L17*L23; 14 L7*L24*L24; 18 L7*L24*L29; 15 L7*L24*L31
3 L7*L26*L30; 1 L7*L35*TX_P_; 1 L7*L35*TY_P_; 29 L7*+OCF*LY_R
366 L7*DROP_OHR_Z*LY_R; 1 L8*L16*L17; 1 L8*L16*L23; 3 L8*L16*L34
6 L9*L24*L27; 7 L10*L13*L27; 1 L10*L16*L17; 1 L10*L17*L20
3 L10*L17*L27; 2 L10*-OHD*TX_P_; 1 L10*TX_P_*TX_P_; 7 L11*L12*TX_P_
17 L11*L27*LX_R; 9 L12*L14*L27; 6 L12*L14*L31; 7 L12*L17*L31
9 L12*L17*L32; 67 L12*L19*L27; 2 L12*L19*L29; 21 L12*L22*L27
52 L12*L28*L29; 5 L12*L28*L30; 1 L12*L30*TY_P_; 7 L12*L31*TX_P_
1 L12*L31*TY_P_; 7 L12*L35*LY_R; 122 L12*+OCF*LY_R; 69 L13*L19*L27
9 L14*L14*L27; 1 L14*L17*L20; 91 L14*L17*L24; 9 L14*L27*L36
21 L15*L27*DROP_OHQ_Z; 3 L15*L29*DROP_OHR_Z; 2 L16*L21*L32; 37 L16*L26*L27
77 L17*L19*LY_R; 6 L17*L22*L26; 7 L17*L26*TY_P_; 1 L17*L27*DROP_OHQ_Z
1 L17*L35*TX_P_; 21 L18*L27*DROP_OHQ_Z; 2 L19*L26*L30; 70 L19*TX_P_*LY_R
1 L21*DROP_OHR_Z*LY_R; 27 L23*L27*TX_P_; 1 L24*L24*L31; 93 L24*L27*L29
76 L24*L27*+OCF; 2 L24*L29*L31; 48 L24*L29*TY_P_; 24 L25*L25*L25
17 L25*L29*L29; 1 L25*L29*L36; 27 L26*L26*L27; 17 L26*L27*L31
15 L26*L29*TX_P_; 17 L27*L27*L29; 54 L27*L27*DROP_OHP_YZ; 301 L27*L27*DROP_OHR_Z
27 L27*L27*LY_R; 42 L27*L29*-OHD; 4 L27*L30*L30; 6 L27*L31*LX_R
40 L27*L33*L33; 1 L27*TX_P_*DROP_OHQ_Z; 17 L27*TY_P_*DROP_OHR_Z; 1 L27*DROP_OHQ_Z*LX_R
301 L27*DROP_OHR_Z*DROP_OCR_Y; 1 L29*DROP_OHR_Z*LX_R; 55 L29*DROP_OHR_Z*LY_R; 1 L30*L35*+OCF
1 L30*LX_R*LX_R; 66 KLOW*L25; 7 KLOW*TY_P_; 32 KLOW*LX_R
22 TOPCOUNT*L7; 36 +ODF*L17; 15 +ODF*L27; 19 +HCD*L3
1 +CDF*L35; 6 +CDF*LY_R; 9 -HYZ*DROP_OHR_Z; 2 -HCY*DROP_OHP_YZ
9 -HCY*DROP_OHR_Z; 180 -OHZ*L10; 176 -OHZ*L11; 15 -OHZ*L14
58 -OHZ*L30; 70 -OHZ*L31; 114 -OHZ*DROP_OHP_YZ; 209 -OHZ*DROP_OHR_Z
64 -OHZ*LX_R; 14 -OHZ*LY_R; 6 +CDZ*L12; 5 +CDP*L30
54 +CDP*+OCF; 76 +CDP*DROP_OHR_Z; 28 +CDP*LX_R; 1 -DFP*L10
8 -DFP*L24; 18 -DFP*DROP_OCR_Y; 46 -DFP*LX_R; 64 -DFP*LY_R
11 +HZP*L27; 40 -CZP*L27; 11 +FZP*L27; 2 -HFQ*L17
11 +DFQ*L27; 21 -CZQ*L27; 147 +HFR*L7; 105 +HFR*L9
1 +HFR*L21; 2 +HFR*L28; 102 +HFR*L30; 506 +HFR*DROP_OHR_Z
58 +HFR*DROP_OCR_Y; 179 +HFR*LX_R; 17 +HYR*L27; 9 -FPR*L17
9 -FPR*TX_P_; 9 +CYZ*L24; 3 +CYZ*DROP_OHP_YZ; 1 -OYP*L3
1 -OYP*L6; 2 -OYP*L27; 110 -OZR*L6; 67 -OZR*L17
111 -OZR*L29; 44 -OZR*L33; 158 -OZR*DROP_OHP_YZ; 17 -OZR*DROP_OCR_Y
8 +HPR*L7; 1 -FPQ*L17; 1 -YZQ*L16; 17 +ZPR*L27
21 +CPQ*L27; 1 C_OPQ_Y*L17; 45 C_HCZ_Y*-OHD; 144 C_HCZ_Y*DROP_OHR_Z
43 C_HCZ_Y*LY_R; 34 TPX_P_*DROP_OHR_Z; 11 TPY_P_*L25; 1 TPY_P_*DROP_OHP_YZ
92 Q_OPFH_YZQ*L3; 41 Q_OFRH_Z*L27; 7 Q_OPFR_YQ*L6; 44 Q_OPFR_YQ*L29
26 Q_HZCD_Y*L16
```

Upper bound: `-150331641/100000000`.

### Leaf TULpmpmpm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR -HPQ`.

```c1top-geometry
P OHDYP +ODY
P OHDYQ +ODQ
P OHDZQ +ODZ
P OHYZP -OZP
P OHYZR +OYR
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOHDQ +YDQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PCQ
P POHQR -PQR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
M OPRQYZ -1
M ORPQZY 1
M PORZYQ 1
M PROZQY -1
M ROPYZQ -1
M RPOYQZ 1
P YHFZP +YFZ
P ZODPQ +ZDQ
```

```c1top-bounds
T OHP YZQ 0 lower 823/1000
T OHP YZQ 8 lower 823/885
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 823/1000 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 929/1000 1
q 129/500 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
243 L0*L1*L8; 21 L0*L4*L35; 113 L0*L11*TX_P_; 36 L0*L20*L27
167 L1*L1*L21; 502 L1*L1*L24; 74 L1*L2*L4; 142 L1*L2*L10
36 L1*L2*L33; 21 L1*L4*L11; 48 L1*L4*L20; 78 L1*L5*L27
123 L1*L6*L29; 52 L1*L6*LY_R; 8 L1*L7*L19; 193 L1*L7*L32
59 L1*L7*L35; 432 L1*L10*L17; 41 L1*L10*L20; 66 L1*L12*L12
37 L1*L12*L15; 95 L1*L12*L19; 2 L1*L12*L23; 150 L1*L12*L27
217 L1*L16*L17; 91 L1*L18*L24; 36 L1*L19*L29; 366 L1*L22*L24
103 L1*L22*TX_P_; 148 L1*L23*L29; 120 L1*L24*L32; 121 L1*L24*L33
138 L1*L24*L36; 94 L1*L24*TX_P_; 76 L1*L24*TY_P_; 17 L1*L28*L29
10 L1*L29*DROP_OCR_YZ; 283 L1*L31*TX_P_; 83 L1*L34*TX_P_; 73 L2*L2*TY_P_
48 L2*L6*L17; 298 L2*L10*L17; 179 L2*L12*L27; 55 L2*L17*L19
115 L2*L23*L27; 236 L3*L4*L4; 40 L3*L4*L16; 404 L3*L4*L19
319 L3*L4*L30; 115 L3*L4*L36; 76 L3*L7*C_OHD_YZ; 85 L3*L17*L22
48 L3*L17*L31; 184 L3*L19*L19; 79 L3*L19*TX_P_; 25 L3*L22*L29
14 L3*L23*L30; 207 L3*L27*TX_P_; 28 L3*L32*TX_P_; 115 L4*L12*TX_P_
194 L4*L14*L17; 48 L4*L16*L19; 168 L4*L16*L34; 32 L4*L18*L30
13 L4*L24*L32; 47 L4*L35*TX_P_; 4 L5*L7*L32; 112 L5*L8*L27
359 L5*L13*L17; 43 L5*L13*L27; 76 L5*L17*L30; 465 L6*L9*L27
21 L6*L17*L32; 19 L6*L18*L29; 35 L6*L25*L27; 90 L6*L26*L29
57 L6*L27*L35; 204 L6*L27*DROP_OCR_YZ; 46 L7*L7*DROP_OCR_YZ; 28 L7*L8*L14
25 L7*L11*L22; 28 L7*L12*L32; 18 L7*L14*L14; 137 L7*L17*L27
10 L7*L19*L23; 55 L7*L22*L27; 10 L8*L18*L29; 23 L8*L19*L23
184 L8*L24*L27; 184 L8*L27*LX_R; 143 L9*L14*L17; 99 L9*L27*TY_P_
23 L10*L17*L22; 372 L10*L17*L24; 8 L10*L17*TY_P_; 81 L10*L21*L27
12 L10*L29*L29; 25 L11*L20*L29; 317 L12*L12*TY_P_; 315 L12*L14*L17
163 L12*L14*L27; 551 L12*L18*L27; 10 L12*L18*TY_P_; 196 L12*L22*L27
48 L12*L24*L29; 8 L12*L27*LX_R; 48 L12*L29*TX_P_; 115 L12*L29*TY_P_
48 L12*L29*LX_R; 143 L13*L17*L32; 18 L14*L15*L29; 17 L14*L16*L17
21 L14*L17*L22; 83 L14*L17*C_OHD_YZ; 236 L14*L17*TY_P_; 83 L14*L29*LY_R
6 L14*TX_P_*TX_P_; 290 L15*L17*L25; 76 L16*L27*L30; 2 L17*L18*L24
111 L17*L19*L28; 48 L17*L24*L31; 209 L17*L24*L32; 47 L17*L26*L31
159 L17*L26*L33; 144 L17*L26*LY_R; 183 L17*L27*L35; 241 L17*L27*DROP_OCR_YZ
48 L17*L29*+OCF; 24 L17*L31*TY_P_; 48 L17*L35*LX_R; 84 L17*L35*LY_R
1 L17*L36*L36; 11 L18*L18*L29; 98 L18*L24*L27; 13 L18*L29*TY_P_
53 L19*L27*L29; 92 L19*L27*L33; 162 L19*L27*DROP_OHQ_Z; 35 L19*L29*L32
4 L19*L29*+OCF; 12 L19*L30*TX_P_; 8 L19*L32*TX_P_; 162 L22*L27*DROP_OHP_YZQ
13 L22*L29*L29; 221 L22*L29*LY_R; 81 L23*L27*L31; 25 L23*L29*L35
35 L24*L27*L33; 591 L24*L27*C_OHD_YZ; 35 L24*L29*DROP_OCR_YZ; 43 L25*L27*L36
43 L27*L33*LY_R; 144 L27*-OHD*TX_P_; 136 L27*DROP_OHP_YZQ*DROP_OHP_YZQ; 91 L27*TX_P_*TX_P_
48 L29*L30*DROP_OHP_YZQ; 260 L29*LY_R*LY_R; 338 L30*TX_P_*LY_R; 12 L32*TX_P_*TX_P_
230 TX_P_*TX_P_*LY_R; 36 KLOW*L29; 71 QUADR*L27; 118 +OCD*L3
97 +OCD*L16; 22 +OCD*TY_P_; 43 +OCD*LY_R; 106 +OYZ*L17
571 +OYZ*L24; 307 -HYZ*L20; 243 -HCY*L1; 313 -HCY*L12
313 -HCY*L13; 18 -HCY*L15; 91 -HCY*L17; 146 -HCY*L18
25 -HCY*L22; 21 -HCY*TY_P_; 259 -HCY*DROP_OHQ_Z; 404 -HCY*DROP_OCR_YZ
138 -HCY*LX_R; 4 -HDY*L7; 81 -HFY*L27; 130 -HFZ*L27
43 +CDZ*L27; 253 +CDP*L4; 36 +CDP*L10; 110 +CDP*L16
159 +CDP*L19; 294 +CDP*L22; 294 +CDP*L23; 319 +CDP*L30
168 +CDP*L34; 191 +CDP*+OCF; 43 -DFP*L35; 3 +FZP*L7
199 +OCQ*L27; 48 +CDQ*L1; 323 +HYQ*L27; 12 -CYQ*L29
217 -CZQ*L27; 217 -OHR*L1; 147 +OCR*L27; 94 +HFR*L7
72 +HFR*L18; 176 +HFR*L22; 495 +HFR*L26; 85 +HFR*L28
192 +HFR*L33; 138 +HFR*L35; 413 +HFR*DROP_OHP_YZQ; 18 +HZR*L10
580 +HZR*L14; 92 +HZR*L18; 707 +HZR*L22; 66 +HZR*L33
4 +HZR*TY_P_; 250 +HZR*LY_R; 577 +CYZ*L1; 111 +CYZ*L4
18 +CYZ*L12; 18 +CYZ*L36; 476 +CYZ*-OHD; 489 +CYZ*DROP_OHP_YZQ
168 +CYZ*TY_P_; 245 +CYZ*DROP_OHQ_Z; 404 +CYZ*DROP_OCR_YZ; 179 +CYZ*LX_R
283 -OYP*L3; 12 -OYP*L5; 250 -OYP*L12; 236 -OYP*L18
72 -OYP*L22; 436 -OYP*L24; 435 -OYP*C_OHD_YZ; 24 -OYP*DROP_OHP_YZQ
168 -OYP*DROP_OHQ_Z; 44 -OYP*LX_R; 68 -OYP*LY_R; 169 +OYQ*L14
134 +OYQ*L17; 35 +OYQ*L23; 149 -OZQ*L1; 182 -OZQ*L8
150 -OZQ*L10; 28 -OZQ*L12; 75 -OZQ*L18; 35 -OZQ*L23
312 -OZQ*DROP_OCR_YZ; 112 +OZR*L2; 4 +OZR*L4; 66 +OZR*L12
334 +OZR*L15; 547 +OZR*L18; 309 +OZR*L22; 307 +OZR*L27
18 +OZR*L32; 83 +OZR*L34; 447 +OZR*-OHD; 45 -HPQ*L13
103 -HPQ*L19; 115 -HPQ*L30; 148 -HPQ*L33; 67 -HPQ*L35
83 -HPQ*-OHD; 111 -HPQ*+OCF; 272 +ODY*L17; 31 +OYR*L27
705 +HQR*L15; 13 -FPQ*L29; 27 -YZQ*L3; 67 -YZQ*L6
231 -YZQ*L14; 67 -YZQ*L19; 35 -YZQ*L22; 404 -YZQ*L26
250 -YZQ*L36; 451 -YZQ*C_OHD_YZ; 521 -YZQ*DROP_OHP_YZQ; 54 -YZQ*TX_P_
100 -YZR*L17; 27 -YZP*L2; 137 -YZP*L6; 250 -YZP*L12
1 -YZP*L14; 12 -YZP*L16; 179 -YZP*L18; 312 -YZP*L21
116 -YZP*L22; 392 -YZP*L24; 57 -YZP*TY_P_; 506 C_OZP_Y*L2
16 C_OZP_Y*L4; 1 C_OZP_Y*L10; 66 C_OZP_Y*L12; 217 C_OZP_Y*L21
129 C_OZP_Y*L29; 174 C_HCZ_Y*TX_P_; 72 TPY_P_*LY_R; 111 Q_OYRH_Z*L17
85 Q_OCQZ_Y*L17; 75 Q_OPFR_YZQ*L3; 25 Q_OPFR_YZQ*L19; 10 Q_OPFR_YZQ*L23
138 Q_OPFR_YZQ*L30; 109 Q_OYQR_Z*L0; 152 Q_OPQZ_Y*L1; 173 Q_OPQZ_Y*L9
222 Q_OPQZ_Y*L12; 19 Q_OPQZ_Y*L14; 103 Q_OPQZ_Y*L19; 13 Q_OPQZ_Y*L29
259 Q_OPQZ_Y*L31; 320 Q_OPQZ_Y*LY_R; 4 Q_HZCD_Y*L4; 83 Q_HCPR_Q*L27
47 Q_CPFZ_Y*L27; 2 Q_CPFZ_Y*L29; 14 Q_CPRZ_YQ*L27; 13 Q_FRYP_Q*L4
31 Q_FRYP_Q*L27; 30 M_OHPQZY_1_0*L3; 158 M_OHPQZY_1_2*L27; 40 M_OHPQZY_1_3*L17
250 M_OHPQZY_1_4*L0; 2 M_OPRQYZ_-1_1*L17; 10 M_OPRQYZ_-1_2*L0; 114 M_OPRQYZ_-1_2*L34
284 M_OPRQYZ_-1_4*L0
```

Upper bound: `-23090675533/5687500000`.

### Leaf TULpmpmpp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ`.

```c1top-geometry
P OHDYP +ODY
P OHDYQ +ODQ
P OHDZQ +ODZ
P OHYZP -OZP
P OHYZR +OYR
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHYQ -DYQ
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCDQ -PCQ
```

```c1top-bounds
T OHP YZ 8 lower 694/885
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 129/500 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
47 L0*L3*L4; 53 L0*L4*TX_P_; 793 L0*L13*L27; 766 L0*L30*L30
216 L0*L30*L32; 16 L0*L30*TX_P_; 33 L0*L32*TX_P_; 232 L0*TX_P_*TX_P_
80 L1*L1*L3; 804 L1*L1*L24; 27 L1*L2*L14; 354 L1*L2*L29
146 L1*L2*L30; 857 L1*L2*TX_P_; 353 L1*L2*TY_P_; 252 L1*L5*L17
83 L1*L6*L12; 90 L1*L6*L27; 5 L1*L8*L15; 30 L1*L8*L17
265 L1*L11*L12; 523 L1*L12*L12; 264 L1*L12*L32; 190 L1*L12*L34
673 L1*L17*L17; 623 L1*L17*L24; 49 L1*L17*TY_P_; 152 L1*L18*L24
857 L1*L21*L27; 488 L1*L24*TY_P_; 247 L1*L27*L31; 31 L1*L29*L35
4397 L2*L2*TY_P_; 40 L2*L4*L30; 72 L2*L4*TX_P_; 437 L2*L5*L17
531 L2*L6*L27; 61 L2*L8*L32; 426 L2*L11*L30; 1522 L2*L12*L27
1527 L2*L12*TY_P_; 783 L2*L17*TY_P_; 597 L2*L24*TY_P_; 1101 L2*L24*LY_R
103 L2*L27*L27; 511 L2*L27*L33; 262 L3*L4*L4; 2075 L3*L4*L17
262 L3*L4*L19; 47 L3*L4*L35; 189 L3*L8*L27; 46 L3*L14*L17
238 L3*L17*L32; 456 L3*L27*L29; 270 L3*L27*LX_R; 225 L3*L29*L32
78 L3*L30*L34; 61 L4*L4*TX_P_; 37 L4*L6*L32; 73 L4*L6*TX_P_
300 L4*L6*TY_P_; 324 L4*L8*L29; 6 L4*L8*LY_R; 226 L4*L12*TX_P_
490 L4*L16*L29; 39 L4*L16*L35; 101 L4*L16*TX_P_; 47 L4*L17*L30
245 L4*L19*TX_P_; 421 L4*L26*L27; 488 L5*L17*L17; 113 L5*L17*L24
24 L5*L17*L27; 245 L5*L17*TY_P_; 228 L6*L17*TY_P_; 190 L6*L18*L27
357 L6*L25*L27; 269 L6*L27*L29; 153 L6*L27*L31; 245 L7*L7*L19
34 L7*L16*L27; 184 L7*L19*TX_P_; 2 L7*L35*LY_R; 1272 L8*L24*L27
156 L8*L27*L27; 802 L10*L12*L17; 271 L10*L14*L17; 49 L10*L17*L17
175 L10*L17*L24; 4 L10*L24*L30; 103 L10*L24*LY_R; 838 L11*L12*L27
531 L11*L17*L30; 586 L12*L12*LY_R; 1138 L12*L14*L27; 248 L12*L17*L27
53 L12*L19*L27; 271 L12*L19*L35; 586 L12*L24*L34; 83 L12*L25*L27
271 L12*L27*L30; 793 L12*L27*-OHD; 400 L12*L27*DROP_OCR_YZ; 196 L14*L17*L24
271 L14*L24*L30; 511 L14*L25*L27; 838 L14*L27*L30; 300 L14*L27*L33
300 L15*L27*L29; 300 L15*L27*LX_R; 253 L16*L29*L32; 783 L17*L19*L29
49 L17*L19*L35; 203 L17*L22*L27; 622 L17*L24*L27; 53 L17*L27*L30
53 L17*L27*L35; 622 L17*L27*LX_R; 421 L18*L27*L27; 53 L19*L27*L30
531 L19*L30*L30; 49 L19*L32*TX_P_; 1188 L24*L27*L31; 271 L24*L27*TY_P_
357 L24*L29*LY_R; 70 L25*L27*L32; 271 L27*L27*DROP_OHP_YZ; 857 L27*L27*DROP_OHQ_Z
83 L27*L30*LX_R; 189 L27*L30*LY_R; 203 L27*TY_P_*DROP_OHQ_Z; 421 L27*TY_P_*DROP_OCR_YZ
857 L27*DROP_OHQ_Z*LY_R; 55 L29*L29*LY_R; 4 L30*L31*LY_R; 270 KLOW*L1
662 KLOW*L12; 225 KLOW*L24; 247 KLOW*L27; 625 KLOW*TY_P_
103 QUADR*L27; 40 +OCD*L12; 1361 +OCD*L16; 994 +OYZ*L0
731 +OYZ*L2; 1257 +OYZ*L9; 216 +OYZ*L10; 233 +OYZ*L12
271 +OYZ*L18; 1015 +OYZ*L24; 46 +OYZ*L29; 320 +OYZ*+OCF
130 +OYZ*TX_P_; 838 +OYZ*LY_R; 130 -HYZ*TX_P_; 216 -HCY*L0
634 -HCY*L2; 695 -HCY*L14; 47 -HCY*L18; 549 -HCY*L25
987 -HCY*L30; 216 -HCY*L35; 247 -HCY*TX_P_; 6 -HCY*TY_P_
68 -HCY*LX_R; 51 -HFY*L27; 324 +CDP*L0; 262 +CDP*L4
750 +CDP*L7; 3987 +CDP*L8; 53 +CDP*L11; 1527 +CDP*L12
210 +CDP*L22; 210 +CDP*L23; 597 +CDP*L24; 4397 +CDP*L31
174 -DFP*L1; 668 -DFP*L2; 361 -DFP*L4; 73 -DFP*L6
37 -DFP*L10; 550 -DFP*L12; 387 -DFP*L17; 324 -DFP*L30
153 -DFP*+OCF; 450 -DFP*LY_R; 1320 +HFR*L2; 178 +HFR*L6
142 +HFR*L12; 216 +HFR*L17; 640 +HFR*TY_P_; 33 +HFR*LY_R
804 +HZR*L1; 188 +HZR*L10; 254 +HZR*L13; 190 +HZR*L14
245 +HZR*L30; 795 +HZR*L31; 33 +HZR*TX_P_; 33 -FYR*L27
318 +CYZ*L0; 1024 +CYZ*L12; 886 +CYZ*L25; 84 +CYZ*L29
1257 +CYZ*L30; 216 +CYZ*L32; 129 +CYZ*LX_R; 23 -OYP*L4
1334 -OYP*L12; 271 -OYP*L14; 95 -OYP*L17; 175 -OYP*L24
207 -OYP*L29; 531 -OYP*L31; 46 -OYP*TX_P_; 53 -OYP*LY_R
33 +OZR*L6; 654 +OZR*L8; 615 +OZR*L10; 229 +OZR*L17
211 +OZR*L26; 166 +OZR*L30; 804 +OZR*L32; 192 +OZR*L33
190 +OZR*L34; 28 +OZR*+OCF; 203 +DPQ*L27; 271 +DPR*L27
101 C_OHP_YZ*L4; 156 C_HCZ_Y*L12; 133 C_HCZ_Y*L32; 46 C_HCZ_Y*TX_P_
193 Q_OYRH_Z*L3; 4 Q_OYRH_Z*L30; 32 Q_OPFR_YZQ*L4; 6 Q_HYDF_Q*L27
72 Q_HPFR_Q*L3; 152 Q_HPFR_Q*L4; 502 Q_HPFR_Q*L7; 18 Q_HPFR_Q*L10
226 Q_HPFR_Q*L13; 441 Q_HPFR_Q*L17; 227 Q_HPFR_Q*L22; 227 Q_HPFR_Q*L23
33 Q_HPFR_Q*L32; 71 Q_HPFR_Q*L35
```

Upper bound: `-3791270027/6500000000`.

### Leaf TULpmpp

Assumptions: `+CYZ -OYP +OYQ +OZQ`.

```c1top-geometry
P OHDYP +ODY
P OHDYQ +ODQ
P OHYZP -OZP
P OHYQR +OYR
P OHZQR +OZR
P OCDYZ +ODZ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOHDQ +YDQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOHPR +YPR
P ZOHDQ +ZDQ
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P POCDQ -PCQ
```

```c1top-bounds
T OHP YZ 8 lower 694/885
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 129/500 1
l 21/200 907/1000
m 347/500 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
9 L0*L1*L32; 6 L0*L3*L8; 18 L0*L17*TY_P_; 6 L0*L18*L29
14 L0*L20*L32; 2 L0*L22*L35; 2 L0*L27*L30; 6 L0*TX_P_*TX_P_
9 L0*LY_R*LY_R; 9 L1*L1*L13; 5 L1*L1*+OCF; 30 L1*L2*L2
40 L1*L2*L16; 29 L1*L2*L24; 50 L1*L2*DROP_OCR_YZ; 10 L1*L3*L32
19 L1*L4*L8; 38 L1*L4*L10; 61 L1*L5*L17; 58 L1*L8*L18
4 L1*L8*L21; 62 L1*L8*L24; 1 L1*L9*L14; 62 L1*L9*L24
18 L1*L10*L23; 44 L1*L10*L27; 14 L1*L11*L30; 9 L1*L12*L30
52 L1*L14*L24; 38 L1*L17*L20; 73 L1*L17*L32; 50 L1*L18*L23
62 L1*L18*L24; 50 L1*L19*L23; 12 L1*L21*L31; 13 L1*L21*L33
16 L1*L23*L32; 6 L1*L24*L24; 68 L1*L24*L32; 58 L1*L24*TY_P_
6 L1*L24*LX_R; 9 L1*L27*DROP_OCR_YZ; 10 L1*L29*LX_R; 28 L1*L30*L33
11 L1*L30*DROP_OHP_YZ; 29 L1*L31*TY_P_; 26 L1*L33*TY_P_; 4 L1*L35*TX_P_
9 L1*L35*LY_R; 17 L2*L2*L17; 3 L2*L2*L23; 196 L2*L2*TY_P_
20 L2*L2*LY_R; 13 L2*L8*TY_P_; 21 L2*L12*L27; 15 L2*L20*L27
26 L2*L23*TY_P_; 3 L2*L25*LY_R; 20 L2*L27*L31; 3 L2*L27*LX_R
45 L2*+OCF*TY_P_; 21 L3*L3*L32; 19 L3*L4*L13; 18 L3*L4*L22
17 L3*L6*L17; 11 L3*L10*L30; 11 L3*L11*L35; 7 L3*L12*L22
36 L3*L15*L30; 17 L3*L17*L31; 6 L3*L19*L19; 27 L3*L23*L34
21 L3*L26*L30; 54 L3*L27*DROP_OCR_YZ; 2 L3*L34*TX_P_; 3 L4*L7*LX_R
11 L4*L8*L32; 8 L4*L11*L24; 14 L4*L11*DROP_OCR_YZ; 10 L4*L12*L35
99 L4*L16*L27; 16 L4*L19*TX_P_; 17 L4*L20*L27; 7 L4*L20*L34
19 L4*L22*LX_R; 7 L4*L23*L30; 26 L4*L30*DROP_OCR_YZ; 13 L4*L30*LY_R
38 L4*L35*LY_R; 22 L5*L17*L19; 14 L6*L6*L27; 1 L6*L7*L8
1 L6*L13*TX_P_; 17 L6*L17*L31; 34 L6*L22*L27; 10 L6*L23*L35
45 L6*L27*-OHD; 100 L6*L27*DROP_OHP_YZ; 1 L6*L30*LX_R; 1 L6*L34*TX_P_
1 L7*L9*L24; 14 L7*L10*L27; 9 L7*L13*L24; 2 L7*L17*L23
3 L7*L18*L24; 43 L8*L12*L23; 9 L8*L12*L25; 4 L8*L13*L32
20 L8*L16*L29; 3 L8*L19*L24; 5 L8*L22*L27; 9 L8*L23*L30
9 L8*L23*TY_P_; 54 L8*L27*LY_R; 8 L8*L34*LY_R; 1 L9*L12*L27
36 L9*L17*L34; 69 L9*L18*L27; 19 L9*L30*TY_P_; 27 L10*L12*L17
10 L10*L14*L17; 19 L10*L17*L31; 69 L10*L17*LY_R; 54 L10*L24*LY_R
53 L10*L27*L28; 5 L11*L17*L23; 9 L11*L21*L30; 7 L11*L27*+OCF
4 L12*L14*L31; 1 L12*L14*L35; 58 L12*L18*L23; 31 L12*L19*L27
9 L12*L24*L29; 1 L12*L24*TX_P_; 9 L12*L25*L31; 9 L12*L27*L34
31 L12*L27*TY_P_; 4 L12*L30*L32; 1 L12*L35*LY_R; 2 L13*L23*TX_P_
2 L14*L17*LY_R; 9 L14*L30*LY_R; 1 L15*L30*L34; 16 L16*L20*L27
114 L16*L23*LY_R; 6 L17*L17*L19; 6 L17*L17*TY_P_; 87 L17*L17*DROP_OCR_YZ
26 L17*L17*LY_R; 19 L17*L19*L25; 18 L17*L19*L28; 28 L17*L22*L34
2 L17*L23*L36; 6 L17*L23*+OCF; 4 L17*L23*TY_P_; 3 L17*L24*L34
94 L17*L26*TX_P_; 9 L17*L30*LY_R; 1 L17*L36*LX_R; 2 L17*L36*LY_R
8 L17*-OHD*LY_R; 112 L17*+OCF*TY_P_; 91 L17*LY_R*LY_R; 3 L18*L20*L30
10 L18*L20*L32; 4 L18*L23*TX_P_; 43 L18*L24*L27; 43 L18*L24*LY_R
145 L20*L27*DROP_OCR_YZ; 18 L22*L24*TY_P_; 32 L22*L27*-OHD; 16 L23*L25*TX_P_
46 L23*L25*LY_R; 16 L23*L26*L27; 5 L23*L27*L30; 27 L23*L28*L29
7 L23*L29*L36; 20 L23*L29*DROP_OHP_YZ; 3 L23*L30*TX_P_; 23 L23*L32*TX_P_
48 L23*-OHD*TX_P_; 13 L23*+OCF*TX_P_; 97 L23*TX_P_*LY_R; 9 L23*LX_R*LY_R
16 L23*LY_R*LY_R; 169 L24*L26*LY_R; 169 L24*L27*DROP_OCR_YZ; 13 L24*L30*LY_R
13 L25*L26*L30; 1 L25*L30*L32; 1 L26*L30*L36; 13 L26*L30*TX_P_
81 L27*L27*DROP_OHP_YZ; 154 L27*L28*DROP_OHP_YZ; 1 L27*L30*L30; 18 L27*-OHD*LY_R
4 L28*L29*L35; 1 L29*L29*L34; 3 L29*L35*DROP_OHP_YZ; 11 TX_P_*LY_R*LY_R
1 KLOW*L20; 89 KLOW*TY_P_; 50 +OCD*L3; 4 +CDF*L32
69 +OYZ*L1; 29 +OYZ*L5; 25 +OYZ*L12; 9 +OYZ*L14
39 +OYZ*L18; 83 +OYZ*L20; 42 +OYZ*L31; 20 +OYZ*L33
14 +OYZ*L35; 62 +OYZ*-OHD; 66 +OYZ*DROP_OHP_YZ; 24 -HYZ*L3
11 -HYZ*L11; 3 -HYZ*L32; 1 -HYZ*LY_R; 29 -HCY*L2
41 -HCY*L13; 29 -HCY*L19; 15 -HCY*L30; 43 -HCY*DROP_OHP_YZ
55 -HCY*DROP_OCR_YZ; 15 -HCY*LY_R; 2 -HDY*L23; 19 +CDY*L30
11 +CDY*L32; 7 -HFZ*L27; 10 +CDZ*L35; 11 +CDP*L4
215 +CDP*L12; 3 +CDP*L14; 6 +CDP*L19; 11 +CDP*L28
215 +CDP*L33; 76 +CDP*+OCF; 178 +CDP*DROP_OHP_YZ; 4 -DFP*L23
6 -CFP*L4; 1 +HCQ*L14; 42 -HFQ*L7; 7 -HFQ*L18
29 -HFQ*L26; 11 -HFQ*L28; 10 -HFQ*+OCF; 29 -HFQ*LX_R
4 +HYQ*L17; 5 +HZQ*L4; 73 -OHR*L1; 3 +HFR*L6
11 +HFR*L17; 42 +HFR*L21; 13 +HFR*L24; 8 +CDR*L32
54 -CYR*L27; 7 +HZR*L4; 3 +HZR*L22; 48 +OQR*L0
20 +OQR*L4; 47 +OQR*L18; 29 +CYZ*L4; 56 +CYZ*L8
29 +CYZ*L19; 10 +CYZ*L34; 14 +CYZ*DROP_OHP_YZ; 19 -OYP*L9
107 -OYP*L12; 10 -OYP*L14; 41 -OYP*L20; 7 -OYP*L29
44 -OYP*L33; 69 -OYP*DROP_OCR_YZ; 4 -OYP*LX_R; 51 +OZQ*L1
83 +OZQ*L8; 45 +OZQ*L18; 46 +OZQ*-OHD; 46 +OZQ*DROP_OHP_YZ
12 +OZQ*TY_P_; 59 +OZQ*DROP_OCR_YZ; 23 +ODY*L1; 3 -OZP*L4
57 +OZR*L23; 19 +HPR*L17; 15 +HQR*L2; 80 +HQR*L10
52 +HQR*L14; 163 +HQR*L18; 42 +HQR*L24; 169 +HQR*L26
57 +HQR*L28; 13 +HQR*L30; 94 +HQR*L32; 34 +HQR*DROP_OHP_YZ
55 +HQR*LX_R; 54 +DPQ*LY_R; 3 -FPQ*L3; 7 -FQR*L8
14 -FQR*L11; 63 -FQR*L27; 5 -FQR*L30; 7 -FQR*L36
18 -FQR*DROP_OHP_YZ; 86 -FQR*DROP_OCR_YZ; 13 -FQR*LX_R; 46 -YZQ*DROP_OHP_YZ
2 -YZR*L17; 3 C_OCQ_YZ*L2; 41 C_OYQ_Z*L13; 9 C_OYQ_Z*L30
2 C_OYR_Z*L17; 20 C_OPQ_YZ*L9; 56 C_OPQ_YZ*L12; 8 C_OPQ_YZ*L13
25 C_OPQ_YZ*L33; 18 C_OPQ_YZ*L35; 26 C_OPQ_YZ*L36; 100 C_OPQ_YZ*DROP_OCR_YZ
56 C_OPQ_YZ*LY_R; 77 C_HCZ_Y*L8; 4 C_HCZ_Y*L12; 3 TPY_P_*L8
3 TPY_P_*LX_R; 15 Q_OPFH_YZQ*L4; 9 Q_OYQH_Z*L18; 1 Q_OYRH_Z*L30
13 Q_OCFR_YZ*L27; 1 Q_OPFR_YZQ*L0; 3 Q_OPFR_YZQ*L29; 9 Q_HZCD_Y*L23
10 Q_HZCQ_Y*L14; 26 Q_HZCQ_Y*TY_P_; 11 Q_HZCR_Y*L1
```

Upper bound: `-610491546787/91000000000`.

### Leaf TULppmmm

Assumptions: `+CYZ +OYP -OZP -OZQ -OZR`.

```c1top-geometry
C OHR Z Y +ROY 3239749/6167600
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFZR +OFZ
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FOHYZ -FYZ
P FHDPQ -FPQ
P FHDQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOFPR +ZPR
P POCDQ -PCQ
P POCYQ -PYQ
P QOHZR -QZR
P QOCDY -QDY
```

```c1top-bounds
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
T OHR Z 12 lower 93/295
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 63/200 297/500
t 843/1000 1
```

```c1top-sum
3 L8*L17; 13 L0*L0*L34; 157 L0*L0*LX_R; 18 L0*L2*L35
61 L0*L3*L8; 34 L0*L9*L27; 167 L0*L12*TX_P_; 2 L0*L15*L30
10 L0*L17*L19; 10 L0*L19*TX_P_; 252 L0*L25*LX_R; 34 L0*L27*L30
13 L1*L1*L14; 9 L1*L1*L31; 5 L1*L3*L19; 223 L1*L6*L17
10 L1*L7*L34; 180 L1*L7*TX_P_; 134 L1*L7*DROP_OHR_Z; 191 L1*L12*L16
121 L1*L12*L33; 5 L1*L15*L29; 11 L1*L17*L17; 560 L1*L24*L24
38 L1*L27*LY_R; 199 L1*L29*DROP_OHR_Z; 3 L1*L35*LX_R; 2 L2*L3*L25
6 L2*L3*L32; 6 L2*L9*L29; 6 L2*L12*L31; 3 L2*L12*TX_P_
2 L2*L17*L35; 2 L2*L17*LY_R; 12 L2*L19*L32; 45 L2*L29*L34
38 L2*L29*LY_R; 4 L2*L35*DROP_OHR_Z; 11 L3*L3*L4; 1 L3*L3*L17
6 L3*L3*L36; 88 L3*L4*L6; 9 L3*L4*L10; 48 L3*L4*L12
66 L3*L4*TX_P_; 19 L3*L4*DROP_OHR_Z; 13 L3*L8*L10; 30 L3*L8*L15
7 L3*L9*L19; 9 L3*L10*L15; 13 L3*L14*L19; 62 L3*L15*L30
71 L3*L16*L19; 1 L3*L18*L27; 40 L3*L19*L29; 3 L3*L27*L30
9 L3*L34*L34; 56 L3*L34*DROP_OHP_Z; 20 L3*L34*TX_P_; 9 L4*L12*L25
3 L4*L12*L35; 7 L4*L13*TX_P_; 3 L4*L15*TX_P_; 35 L4*L16*L27
2 L4*L30*TX_P_; 9 L4*L30*LX_R; 25 L4*TX_P_*TX_P_; 93 L4*TX_P_*LX_R
5 L5*L13*L17; 56 L5*L16*L17; 11 L5*L17*L36; 37 L5*L17*C_OCF_Y
9 L6*L10*L27; 163 L6*L17*L27; 107 L6*L19*L27; 5 L6*L27*+OCF
3 L7*L7*L12; 1 L7*L7*L17; 3 L7*L8*L10; 3 L7*L8*L35
2 L7*L10*L24; 7 L7*L10*TY_P_; 203 L7*L12*L17; 203 L7*L12*DROP_OHP_Z
142 L7*L12*LY_R; 2 L7*L17*L31; 11 L7*L19*L36; 149 L7*L19*DROP_OHR_Z
81 L7*L26*LY_R; 3 L7*L29*L30; 3 L7*L30*L30; 14 L7*L34*L35
1 L8*L9*L26; 11 L8*L10*L32; 41 L8*L12*L34; 21 L8*L14*L17
8 L8*L26*TX_P_; 11 L8*L29*+OCF; 62 L8*L30*L34; 8 L9*L27*L35
51 L10*L12*L30; 14 L10*L15*TX_P_; 8 L10*L25*L29; 2 L10*L27*DROP_OHP_Z
11 L11*L19*L30; 7 L11*L25*LY_R; 3 L11*L27*DROP_OHR_Z; 11 L11*L30*L30
9 L11*TX_P_*LY_R; 1 L12*L15*L29; 15 L12*L16*LY_R; 3 L12*L17*L33
189 L12*L17*C_OHD_Z; 21 L12*L18*L30; 24 L12*L19*L33; 20 L12*L19*LX_R
38 L12*L26*L31; 3 L12*L36*TX_P_; 29 L12*L36*LY_R; 138 L12*LX_R*LY_R
5 L13*L27*L32; 69 L13*L27*L33; 17 L14*L17*TY_P_; 78 L14*L25*L25
45 L14*L25*L31; 13 L14*L25*L32; 60 L14*L25*LX_R; 38 L14*L27*DROP_OHP_Z
15 L14*L29*LY_R; 63 L15*L17*L25; 7 L15*L17*L28; 3 L15*L17*L32
16 L15*L17*LX_R; 10 L15*L17*LY_R; 23 L15*L24*L34; 92 L15*L24*TX_P_
7 L15*L34*DROP_OHR_Z; 35 L16*L19*L27; 152 L16*L27*L27; 17 L16*L27*L30
384 L16*L27*LX_R; 105 L17*L17*L27; 105 L17*L27*DROP_OHP_Z; 15 L17*L29*L34
42 L17*L33*LY_R; 12 L17*L35*DROP_OCR_Y; 17 L17*TY_P_*LY_R; 152 L18*L24*L27
37 L19*L24*L24; 7 L19*L24*L32; 20 L19*L24*L34; 8 L19*L24*L36
40 L19*L29*TX_P_; 11 L19*L31*L32; 17 L19*L34*TX_P_; 405 L24*TX_P_*LY_R
2 L25*L31*L31; 43 L26*L29*LY_R; 13 L27*L27*L27; 8 L27*L30*L35
40 L27*L33*L33; 68 L27*L33*DROP_OHP_Z; 43 L27*L33*LY_R; 43 L27*L34*LX_R
286 L27*-OHD*DROP_OHR_Z; 260 L27*-OHD*LX_R; 18 L27*TX_P_*TY_P_; 1001 L27*TX_P_*DROP_OHR_Z
248 L27*TX_P_*LX_R; 692 L27*DROP_OHR_Z*DROP_OHR_Z; 692 L27*DROP_OHR_Z*LX_R; 1 L29*L29*DROP_OHP_Z
3 L29*L32*TX_P_; 6 L29*L33*L35; 3 L29*L35*TX_P_; 113 L29*TX_P_*DROP_OCR_Y
11 L30*L32*L35; 1 L31*L31*LY_R; 6 L32*TX_P_*LX_R; 10 L32*DROP_OHR_Z*LY_R
8 L35*TX_P_*LY_R; 13 LY_R*LY_R*LY_R; 12 KLOW*L14; 2 KLOW*L35
92 KLOW*LX_R; 39 TOPCOUNT*L29; 36 +CDF*L19; 27 +CDF*L24
9 -HYZ*L34; 9 -HYZ*TX_P_; 18 +OCY*L12; 29 -HCY*L13
62 -HCY*L17; 27 -HCY*L18; 3 -HCY*L25; 50 -HCY*L30
78 -HCY*DROP_OHP_Z; 72 +CDY*L12; 12 +CDY*L24; 9 +CDY*TX_P_
20 +CDY*LX_R; 20 -OHZ*L1; 336 -OHZ*L16; 75 -OHZ*L28
40 -OHZ*L31; 109 -OHZ*L33; 41 -OHZ*L36; 179 -OHZ*DROP_OHR_Z
179 -OHZ*LX_R; 46 -OHZ*LY_R; 15 +OCZ*L27; 1 -HFZ*L12
1 +OCP*L27; 12 +CDP*L10; 21 +CDP*L13; 21 +CDP*L17
3 +CDP*L36; 40 +CDP*+OCF; 52 +CDP*DROP_OHP_Z; 32 -DFP*L24
51 -DFP*DROP_OHP_Z; 125 -DFP*LX_R; 36 -CFP*L4; 3 +FZP*L12
5 +FZP*L30; 165 +HFR*L7; 421 +HFR*L16; 156 +HFR*L29
166 +HFR*-OHD; 446 +HFR*DROP_OHR_Z; 138 +HFR*LX_R; 6 -FYR*L17
3 -FZR*L4; 27 -FPR*L0; 178 -FPR*L7; 7 -FPR*L11
11 -FPR*L17; 125 -FPR*L26; 28 -FPR*L36; 37 -FPR*DROP_OHR_Z
20 +CYZ*L0; 9 +CYZ*L15; 236 +CYZ*L16; 201 +CYZ*L17
13 +CYZ*L18; 63 +CYZ*L30; 3 +CYZ*TY_P_; 5 +OYP*L6
20 +OYP*L13; 7 +OYP*L33; 17 +OYP*L34; 170 -OZR*L7
13 -OZR*L11; 29 -OZR*L15; 171 -OZR*L16; 3 -OZR*L28
88 -OZR*L30; 133 -OZR*L31; 50 -OZR*L33; 39 -OZR*-OHD
43 -OZR*DROP_OCR_Y; 138 -OZR*LX_R; 11 +HPR*L17; 27 +HPR*L27
54 C_HCZ_Y*L6; 29 C_HCZ_Y*L8; 28 C_HCZ_Y*L16; 138 C_HCZ_Y*DROP_OHR_Z
32 TPX_P_*L7; 7 TPX_P_*L35; 13 TPY_P_*L6; 27 TPY_P_*L24
15 Q_ODFH_ZQ*L27; 1 Q_OCFZ_Y*L17; 51 Q_HZCD_Y*L3; 29 Q_HZCD_Y*TX_P_
```

Upper bound: `-5004451097/1000000000`.

### Leaf TULppmmpmm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ -CQR`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOFPQ +DPQ
P DOFPR +DPR
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCDY -QDY
P QOCDR +QDR
```

```c1top-bounds
```

Exclusion: `cluster OCR Z CRZ YQ`.

### Leaf TULppmmpmpmmm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ -CFQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPR +CPR
P DOHPQ +DPQ
P DOFPR +DPR
P FOHCQ +FOQ
P FOCYQ +FYQ
P FODPQ -FPQ
P FODQR -FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PCQ
P POHYQ -PYQ
P POHQR -PQR
P QOHDY -QDY
```

```c1top-bounds
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
16 L0*L3*L22; 13 L0*L6*L25; 14 L0*L24*LY_R; 4 L1*L2*L6
14 L1*L2*L17; 7 L1*L2*L22; 5 L1*L3*L19; 24 L1*L16*L24
42 L1*L17*DROP_OHQ_Z; 11 L1*L18*L21; 6 L1*L18*L27; 21 L1*L21*DROP_OHP_ZQ
8 L1*L21*TY_P_; 19 L1*L24*+OCF; 32 L1*L24*TX_P_; 4 L1*L26*TX_P_
20 L2*L6*TY_P_; 9 L2*L17*L19; 8 L2*L18*L23; 14 L2*L18*L28
2 L2*L18*LY_R; 14 L2*L19*L28; 12 L2*L19*TY_P_; 20 L2*L22*L27
45 L2*L23*DROP_OHP_ZQ; 6 L2*L23*TX_P_; 19 L2*L27*DROP_OHP_ZQ; 2 L2*L27*DROP_OCR_YZ
14 L2*L28*DROP_OHQ_Z; 5 L2*TY_P_*TY_P_; 41 L2*TY_P_*DROP_OHQ_Z; 8 L2*TY_P_*DROP_OCR_YZ
3 L2*DROP_OHQ_Z*LY_R; 9 L4*L6*TY_P_; 6 L4*L18*L27; 2 L4*L19*L24
41 L4*L26*L27; 8 L5*L17*DROP_OCR_YZ; 11 L5*L22*L24; 2 L5*TX_P_*LY_R
2 L6*L6*L23; 49 L6*L18*L27; 5 L6*L18*TY_P_; 5 L6*L20*TY_P_
19 L6*L22*TY_P_; 27 L6*L27*DROP_OHP_ZQ; 9 L6*L27*DROP_OHQ_Z; 20 L6*L27*DROP_OCR_YZ
14 L6*L27*LY_R; 8 L8*L17*L19; 9 L16*L18*L27; 10 L16*L23*L27
8 L17*L19*L31; 11 L17*L19*DROP_OCR_YZ; 10 L17*L22*TY_P_; 2 L17*-OHD*TY_P_
6 L18*L20*TY_P_; 66 L18*L24*L27; 63 L18*L24*LY_R; 41 L18*L27*L27
2 L18*TY_P_*LX_R; 4 L19*L19*DROP_OHQ_Z; 10 L19*L22*L24; 16 L19*L24*L26
1 L19*L24*+OCF; 6 L19*L26*L28; 6 L20*L27*TX_P_; 64 L20*L27*DROP_OCR_YZ
1 L21*L24*L28; 2 L22*L24*L29; 3 L22*L28*LX_R; 14 L24*L26*L27
5 L24*L27*DROP_OHQ_Z; 5 L24*DROP_OHQ_Z*LY_R; 14 L24*LY_R*LY_R; 23 L27*L27*DROP_OHP_ZQ
64 L27*L27*DROP_OHQ_Z; 4 L27*TX_P_*LY_R; 41 L27*TY_P_*DROP_OCR_YZ; 19 L29*TX_P_*LY_R
8 TY_P_*DROP_OHQ_Z*LX_R; 5 KLOW*L16; 7 KLOW*L18; 10 KLOW*-OHD
4 KLOW*DROP_OHQ_Z; 10 KLOW*LY_R; 10 -OHC*L27; 3 +CDF*L24
5 +CDP*L5; 17 +CDP*L16; 7 +CDP*L19; 49 +CDP*L20
26 +CDP*L21; 20 +CDP*L22; 10 -DFP*L1; 9 -DFP*L4
7 -DFP*L18; 22 -DFP*L20; 16 -DFP*L22; 4 -HFQ*L2
2 +DFQ*LY_R; 10 -OHR*L21; 3 -OHR*L22; 65 +HFR*L18
19 +HFR*L29; 46 +HFR*DROP_OHP_ZQ; 7 +HFR*DROP_OHQ_Z; 14 +HFR*DROP_OCR_YZ
34 +OPQ*L4; 11 +OPQ*L27; 17 +OPQ*TX_P_; 10 +OPQ*TY_P_
14 +OPQ*LX_R; 14 +OPQ*LY_R; 6 -FPR*L21; 18 -FPR*L22
18 -FPR*DROP_OCR_YZ; 8 +CQR*TY_P_; 3 -DQR*L29; 4 -HDQ*L4
7 -HDQ*L7; 23 -HDQ*L16; 19 -HDQ*L18; 9 -HDQ*L25
12 -HDQ*+OCF; 39 -HDQ*DROP_OHP_ZQ; 10 -CFQ*L0; 7 -CFQ*L3
20 -CFQ*L18; 6 -CFQ*L28; 7 -CFQ*L29; 6 -CFQ*-OHD
33 -CFQ*DROP_OHP_ZQ; 20 -CFQ*DROP_OCR_YZ; 5 -CFQ*LX_R; 7 +ODQ*L19
2 +HPR*L19; 17 +DPQ*L2; 4 +DPQ*L5; 17 +DPQ*L17
6 +DPQ*L26; 14 +DPQ*-OHD; 10 C_OHP_ZQ*L24; 8 TPY_P_*L0
20 TPY_P_*L2; 1 Q_OCPF_YQ*L24; 6 Q_CDPF_Q*L23; 2 Q_CPFR_Q*L27
```

Upper bound: `-2067595147/1000000000`.

### Leaf TULppmmpmpmmpm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ +CFQ -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZP +ODZ
P OHDPQ +ODQ
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHYQ -DYQ
P DOHPQ +DPQ
P DOFPR +DPR
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
24 L4*L27; 403 L0*L1*L12; 203 L0*L3*L10; 195 L0*L3*L20
114 L0*L5*L27; 80 L0*L12*TX_P_; 3 L0*L20*LY_R; 93 L1*L1*L6
64 L1*L1*L10; 632 L1*L1*L24; 193 L1*L1*L31; 64 L1*L1*L35
49 L1*L3*L4; 115 L1*L3*L19; 14 L1*L3*L35; 65 L1*L3*LY_R
264 L1*L4*L12; 134 L1*L4*L24; 292 L1*L4*TX_P_; 37 L1*L6*L12
68 L1*L6*L27; 22 L1*L8*L10; 14 L1*L8*L12; 51 L1*L8*L24
121 L1*L9*L14; 18 L1*L12*L12; 180 L1*L12*L23; 54 L1*L12*L24
36 L1*L14*L24; 123 L1*L17*L22; 571 L1*L17*DROP_OHQ_Z; 8 L1*L19*L20
20 L1*L19*L30; 15 L1*L20*L28; 162 L1*L20*L31; 3 L1*L20*L35
46 L1*L21*TX_P_; 26 L1*L22*L24; 80 L1*L24*TX_P_; 396 L1*L24*TY_P_
114 L1*L27*TY_P_; 2 L1*L30*L31; 34 L1*L31*TY_P_; 4 L1*L35*L35
16 L2*L3*L14; 3 L2*L3*L19; 132 L2*L3*L23; 50 L2*L3*LY_R
64 L2*L5*L17; 381 L2*L5*TY_P_; 398 L2*L6*TY_P_; 35 L2*L13*L27
241 L2*L17*L27; 65 L2*L19*L27; 21 L2*L19*L35; 25 L2*L25*L27
46 L2*L28*L35; 27 L2*TY_P_*TY_P_; 305 L3*L3*L10; 39 L3*L3*L22
88 L3*L4*L17; 75 L3*L9*L27; 101 L3*L10*L16; 320 L3*L10*L20
12 L3*L10*L35; 30 L3*L12*L19; 40 L3*L14*L17; 339 L3*L14*L31
26 L3*L14*L35; 105 L3*L17*L23; 147 L3*L19*L20; 20 L3*L19*L23
31 L3*L19*TX_P_; 50 L3*L20*L34; 196 L3*L22*L24; 115 L3*L22*L34
53 L3*L22*L35; 38 L3*L22*TX_P_; 194 L3*L27*DROP_OHQ_Z; 135 L4*L6*TY_P_
9 L4*L7*L24; 35 L4*L21*L27; 9 L4*L24*L31; 4 L4*L35*L35
273 L5*L5*L17; 45 L5*L12*L17; 15 L5*L14*L24; 4 L5*L17*L22
50 L5*L17*L31; 20 L5*L19*L30; 9 L5*L24*L29; 103 L6*L6*L17
409 L6*L6*TY_P_; 121 L6*L9*L27; 13 L6*L12*LY_R; 51 L6*L17*L17
62 L6*L17*L23; 311 L6*L17*TY_P_; 197 L6*L20*TY_P_; 298 L6*L25*L27
42 L6*L27*L29; 106 L6*L27*L33; 23 L6*L27*L34; 92 L6*L27*-OHD
334 L6*L27*DROP_OCP_Y; 152 L6*L27*TX_P_; 157 L7*L7*L19; 248 L7*L7*LY_R
27 L7*L19*L19; 194 L7*L19*L24; 23 L7*L19*L34; 164 L7*L24*LY_R
100 L7*L29*LY_R; 51 L7*TX_P_*TX_P_; 216 L8*L12*L27; 3 L8*L19*L35
108 L8*L27*L31; 9 L9*L24*L28; 68 L9*L27*L28; 4 L10*L10*L28
613 L10*L12*L27; 64 L10*L24*L27; 64 L10*L24*LY_R; 110 L10*L27*L31
9 L11*L17*L27; 43 L12*L14*L21; 209 L12*L17*L22; 765 L12*L17*L27
18 L12*L17*TY_P_; 31 L12*L18*L31; 48 L12*L19*L23; 61 L12*L19*L27
20 L12*L19*L28; 34 L12*L19*L35; 205 L12*L20*L27; 133 L12*L22*L27
29 L12*L22*TY_P_; 108 L12*L27*L33; 245 L12*L27*-OHD; 841 L12*L27*DROP_OHP_ZQ
176 L12*L27*TY_P_; 64 L12*L31*TY_P_; 194 L12*L32*LY_R; 20 L14*L14*L21
97 L14*L14*L31; 207 L14*L17*L22; 32 L14*L19*L24; 270 L14*L21*L24
161 L14*L24*TY_P_; 15 L14*L27*DROP_OHP_ZQ; 37 L14*L31*TY_P_; 145 L16*L22*L27
496 L16*L27*TX_P_; 288 L16*L27*DROP_OHQ_Z; 42 L17*L17*L27; 538 L17*L19*L24
285 L17*L19*L29; 37 L17*L19*TX_P_; 209 L17*L22*L31; 7 L17*L22*TY_P_
18 L17*L31*TY_P_; 79 L18*L21*L27; 18 L18*L24*L31; 114 L18*L27*-OHD
7 L19*L19*L20; 209 L19*L20*L30; 34 L19*L21*L24; 27 L19*L24*L28
18 L19*L30*TX_P_; 3 L19*L31*L31; 37 L19*TX_P_*TX_P_; 23 L20*L27*L29
62 L22*L24*L35; 38 L22*L24*TX_P_; 163 L22*L24*TY_P_; 46 L23*L28*L30
61 L24*L27*L31; 25 L24*L27*DROP_OHQ_Z; 61 L24*L31*LY_R; 121 L27*L29*L31
265 L27*L29*TY_P_; 108 L27*L30*L30; 110 L27*L31*L32; 18 L27*L31*TX_P_
9 L27*L31*TY_P_; 62 L27*L35*DROP_OHQ_Z; 96 L27*DROP_OCP_Y*DROP_OHQ_Z; 42 L28*L28*L30
13 L28*L30*L30; 87 L28*L30*L34; 3 L30*L32*TY_P_; 53 KLOW*L27
263 KLOW*TY_P_; 41 +OYZ*L10; 40 +OYZ*L17; 124 +OYZ*L27
278 -HCY*L1; 50 -HCY*L3; 9 -HCY*L4; 29 -HCY*L11
30 -HCY*L13; 164 -HCY*L14; 9 -HCY*L23; 12 -HCY*L30
150 -HCY*-OHD; 58 -HCY*DROP_OCP_Y; 358 -HCY*DROP_OHQ_Z; 223 -HCY*DROP_OCR_YZ
120 +CDP*L3; 27 +CDP*L8; 64 +CDP*L12; 381 +CDP*L19
158 +CDP*L21; 163 +CDP*L22; 436 +CDP*L27; 120 +CDP*L29
171 +CDP*-OHD; 297 +CDP*DROP_OHP_ZQ; 407 +CDP*TY_P_; 207 +CDP*DROP_OHQ_Z
162 -DFP*L2; 135 -DFP*L4; 409 -DFP*L6; 22 -DFP*L17
27 -DFP*L19; 355 -DFP*+OCF; 293 -DFP*DROP_OHQ_Z; 463 -DFP*LY_R
638 -CYQ*L12; 109 -OHR*L12; 482 +HFR*L7; 100 +HFR*L30
100 +HFR*L31; 93 +HFR*-OHD; 361 +HFR*DROP_OCP_Y; 171 +HFR*TY_P_
50 +HFR*DROP_OHQ_Z; 134 +HFR*LX_R; 44 +HZR*L3; 30 +HZR*L7
64 +HZR*L10; 87 +HZR*L14; 134 +HZR*L19; 50 +HZR*L21
151 +HZR*L22; 49 +HZR*L25; 1140 +HZR*L27; 5 +HZR*L33
80 +HZR*DROP_OHP_ZQ; 91 +HZR*TY_P_; 415 +HZR*DROP_OCR_YZ; 725 +HZR*LY_R
165 +OPQ*L1; 151 +OPQ*L4; 209 +OPQ*L9; 42 +OPQ*L10
209 +OPQ*L12; 207 +OPQ*L14; 275 +OPQ*L16; 145 +OPQ*L26
62 +OPQ*L29; 42 +OPQ*L32; 36 +OPQ*+OCF; 7 +OPQ*DROP_OCP_Y
225 -FPR*L3; 27 -FPR*L5; 23 -FPR*L15; 538 -FPR*L17
237 -FPR*L21; 45 -FPR*L27; 194 -FPR*L29; 18 -FPR*L30
203 -FPR*DROP_OHQ_Z; 45 -FPR*LY_R; 242 +CYZ*L0; 355 +CYZ*L3
41 +CYZ*L12; 707 +CYZ*L14; 611 +CYZ*L15; 37 +CYZ*L28
41 +CYZ*L30; 41 +CYZ*L35; 101 +CYZ*DROP_OHP_ZQ; 37 +CYZ*DROP_OCP_Y
687 +CYZ*DROP_OHQ_Z; 115 +CYZ*LY_R; 58 -OZP*L24; 61 -OZP*L31
420 -OZQ*L9; 43 -OZQ*L12; 20 -OZQ*L14; 207 -OZQ*L18
475 -OZQ*L24; 42 -OZQ*L28; 267 -OZQ*L31; 361 -OZQ*+OCF
115 -OZQ*DROP_OCR_YZ; 689 +OZR*L0; 113 +OZR*L2; 30 +OZR*L6
743 +OZR*L10; 5 +OZR*L12; 22 +OZR*L17; 65 +OZR*L18
98 +OZR*L22; 49 +OZR*L24; 87 +OZR*L34; 85 +OZR*TY_P_
254 +OZR*DROP_OHQ_Z; 9 +CQR*L0; 171 +CQR*L3; 215 +CQR*L16
20 +CQR*L18; 25 +CQR*L24; 115 +CQR*L34; 62 +CQR*L35
38 +CQR*TX_P_; 163 +CQR*TY_P_; 49 -HDQ*L3; 96 -HDQ*L7
159 -HDQ*L9; 50 -HDQ*L12; 75 -HDQ*L14; 311 -HDQ*L16
110 -HDQ*L26; 34 -HDQ*L35; 307 -HDQ*DROP_OHP_ZQ; 151 -HDQ*DROP_OCP_Y
18 -HDQ*LY_R; 220 -ODY*L0; 72 -ODY*L3; 62 -ODY*L19
13 -ODY*L23; 76 -ODY*L26; 19 -ODY*L30; 10 -ODY*L35
121 -ODY*L36; 95 -ODY*DROP_OHP_ZQ; 42 -ODY*TY_P_; 193 -ODY*DROP_OHQ_Z
20 +HQR*L19; 3 -DYQ*L1; 50 -DYQ*L12; 275 +DPQ*L17
9 -YZP*L27; 9 -YZQ*L2; 34 -YZQ*L28; 45 Q_HYCP_Q*L27
```

Upper bound: `-1687661589/500000000`.

### Leaf TULppmmpmpmmpp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR -HDQ +CFQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODQR +HQR
P HOFPR +HPR
P COFPQ +CPQ
P COFPR +CPR
P DOHPQ +DPQ
P DOFPR +DPR
P FHCPQ -FPQ
P FHCQR -FQR
P YOHDQ +YDQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
M OHDQZY 1
M ODHQYZ -1
M HODYZQ -1
M HDOYQZ 1
M DOHZYQ 1
M DHOZQY -1
M ODRQYZ -1
M ORDQZY 1
M DORZYQ 1
M DROZQY -1
M RODYZQ -1
M RDOYQZ 1
```

```c1top-bounds
T OHD YZQ 0 lower 823/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 823/1000 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
111 L0*L0*L3; 148 L0*L0*L30; 11 L0*L1*L4; 1 L0*L1*DROP_OHQ_Z
51 L0*L2*TX_P_; 124 L0*L6*TY_P_; 94 L0*L7*L12; 16 L0*L8*L11
19 L0*L8*L15; 66 L0*L10*L27; 66 L0*L11*LY_R; 20 L0*L12*TX_P_
11 L0*L17*L21; 24 L0*L18*L27; 15 L0*L20*TY_P_; 57 L0*L23*L30
19 L0*L24*L35; 75 L0*L24*TX_P_; 29 L0*L30*TY_P_; 11 L0*TY_P_*LY_R
47 L1*L1*L31; 31 L1*L2*L22; 19 L1*L2*L33; 32 L1*L3*L4
42 L1*L4*L29; 99 L1*L6*TX_P_; 65 L1*L7*L14; 8 L1*L9*L36
33 L1*L10*L17; 7 L1*L12*L28; 2 L1*L12*L30; 104 L1*L14*L24
9 L1*L17*L36; 34 L1*L19*DROP_OCR_YZ; 38 L1*L20*L24; 16 L1*L20*L27
33 L1*L22*L29; 183 L1*L24*L29; 97 L1*L24*TY_P_; 251 L1*L24*DROP_OCR_YZ
134 L1*L27*L31; 13 L1*L31*TY_P_; 8 L1*TX_P_*TX_P_; 53 L2*L3*L11
13 L2*L3*DROP_OCR_YZ; 20 L2*L4*TX_P_; 25 L2*L5*L5; 51 L2*L6*TY_P_
17 L2*L19*L24; 26 L2*L19*DROP_OHQ_Z; 3 L2*L24*L27; 29 L2*L27*TY_P_
18 L2*L32*L32; 20 L2*L35*TY_P_; 158 L2*TX_P_*LY_R; 46 L3*L4*L17
20 L3*L7*L27; 11 L3*L10*L10; 19 L3*L14*L29; 22 L3*L17*L19
62 L3*L17*L22; 20 L3*L19*L31; 2 L3*L22*L29; 5 L3*L27*L28
93 L3*L27*DROP_OCR_YZ; 20 L3*L34*TX_P_; 58 L4*L4*TX_P_; 47 L4*L7*L19
144 L4*L12*L27; 12 L4*L19*L24; 6 L4*L21*L24; 18 L4*L21*L27
25 L5*L5*L17; 16 L5*L8*L17; 10 L5*L11*L29; 14 L5*L17*L17
26 L5*L22*L24; 7 L5*L29*L30; 5 L6*L6*L27; 13 L6*L8*L27
36 L6*L13*L27; 33 L6*L27*DROP_OHQ_Z; 346 L6*L27*DROP_OCR_YZ; 36 L7*L7*L19
8 L7*L10*L12; 5 L7*L17*L28; 12 L7*L19*L19; 26 L7*L19*L21
2 L7*L19*L22; 30 L7*L19*L29; 58 L7*L26*L27; 98 L7*TX_P_*LY_R
64 L8*L12*TY_P_; 54 L8*L14*L17; 38 L8*L17*L20; 1 L8*L19*L28
4 L8*L19*L30; 5 L8*L19*L34; 66 L8*L27*L27; 5 L8*L27*L35
5 L9*L13*L27; 14 L10*L12*TY_P_; 66 L10*L27*L27; 45 L10*L27*L33
5 L10*L27*DROP_OHP_ZQ; 5 L10*TX_P_*LY_R; 8 L11*L17*L30; 9 L12*L12*TY_P_
46 L12*L17*L22; 9 L12*L18*L30; 1 L12*L22*L29; 73 L12*L27*L29
47 L12*L27*DROP_OHQ_Z; 187 L12*L27*DROP_OCR_YZ; 8 L12*L29*L32; 61 L12*L32*LY_R
104 L12*L34*LY_R; 16 L13*L23*L27; 11 L14*L19*TX_P_; 84 L14*L20*L27
187 L14*L27*LX_R; 11 L14*TX_P_*LY_R; 18 L17*L19*L29; 38 L17*L20*L35
5 L17*L22*L28; 10 L17*L22*L35; 10 L17*L23*L32; 66 L17*L27*+OCF
11 L17*L27*TY_P_; 160 L17*L29*LY_R; 19 L17*L32*L36; 11 L17*L34*TY_P_
57 L18*L20*L27; 39 L18*L24*L27; 11 L18*L35*LY_R; 2 L19*L20*L29
47 L19*L20*L30; 6 L19*L20*LY_R; 1 L19*L23*L29; 11 L19*L27*L30
75 L19*L27*LX_R; 20 L19*L29*L29; 8 L19*L29*L32; 58 L19*L29*DROP_OHQ_Z
4 L19*L30*L32; 11 L19*L32*LY_R; 11 L19*TX_P_*LY_R; 1 L20*L34*TX_P_
2 L21*L27*L35; 2 L22*L24*L29; 29 L22*L24*TY_P_; 2 L22*L27*L31
111 L22*L27*C_OCF_Y; 33 L23*L27*TX_P_; 3 L24*L27*L35; 3 L24*L31*LY_R
3 L24*L32*LY_R; 114 L27*L27*DROP_OHP_ZQ; 2 L27*L31*DROP_OHQ_Z; 11 L27*-OHD*TY_P_
73 L27*C_OCF_Y*LY_R; 15 L29*L29*LY_R; 4 L30*L35*TY_P_; 5 L30*L35*LY_R
66 L35*LY_R*LY_R; 1 TOPCOUNT*L8; 5 TOPCOUNT*L30; 85 -OHF*L27
11 +OYZ*L24; 43 -HYZ*L27; 5 -HYZ*L35; 31 -HCY*L2
17 -HCY*L5; 16 -HCY*L11; 71 -HCY*L13; 23 -HCY*L14
46 -HCY*L18; 93 -HCY*L20; 74 -HCY*L23; 3 -HCY*L29
34 -HCY*-OHD; 3 -HCY*LX_R; 112 -HFZ*L27; 33 -HFP*L29
54 -HFP*TX_P_; 5 +CDP*L7; 48 +CDP*L11; 11 +CDP*L15
3 +CDP*L17; 20 +CDP*L18; 20 +CDP*L19; 55 +CDP*L22
79 +CDP*L27; 25 +CDP*L28; 9 +CDP*DROP_OHQ_Z; 58 -DFP*L4
60 -DFP*L8; 25 -DFP*L10; 32 -DFP*L12; 58 -DFP*L31
19 -DFP*L33; 104 -DFP*DROP_OCR_YZ; 19 -DFP*LY_R; 66 -OHQ*L27
382 -OHR*L27; 208 +HFR*L0; 81 +HFR*L2; 5 +HFR*L10
185 +HFR*L13; 190 +HFR*L14; 152 +HFR*L18; 33 +HFR*L22
101 +HFR*L28; 108 +HFR*L29; 115 +HFR*L34; 192 +HFR*DROP_OCR_YZ
10 +HZR*L10; 159 +HZR*L14; 13 +HZR*L17; 266 +HZR*L21
174 +HZR*L22; 55 +HZR*L34; 311 +HZR*DROP_OHQ_Z; 476 +HZR*LY_R
1 +OPQ*L19; 34 +OPQ*L24; 33 -FPR*L1; 11 -FPR*L14
62 -FPR*L17; 22 -FPR*L28; 13 -FPR*L30; 17 -FPR*+OCF
34 -FPR*DROP_OHQ_Z; 114 -FPR*DROP_OCR_YZ; 72 +CYZ*L1; 19 +CYZ*L3
82 +CYZ*L13; 28 +CYZ*L16; 36 +CYZ*L18; 74 +CYZ*L23
11 +CYZ*L25; 23 +CYZ*L32; 135 +CYZ*-OHD; 93 +CYZ*DROP_OHQ_Z
28 +OYP*L28; 109 +OYP*L30; 137 +OYP*L31; 19 +OYP*L36
83 +OYP*DROP_OHQ_Z; 112 -OZQ*L0; 21 -OZQ*L16; 497 +OZR*L0
101 +OZR*L4; 89 +OZR*L6; 120 +OZR*L12; 44 +OZR*L21
289 +OZR*L27; 120 +OZR*L33; 11 +OZR*TY_P_; 47 +CQR*L12
26 +CQR*L28; 74 +CQR*L34; 112 +CQR*-OHD; 2 +CQR*+OCF
46 +CQR*DROP_OHP_ZQ; 2 +CQR*TX_P_; 29 +CQR*TY_P_; 39 +CQR*DROP_OCR_YZ
4 -HDQ*L4; 165 -HDQ*L8; 16 -HDQ*L10; 51 -HDQ*L18
114 -HDQ*L21; 6 -HDQ*L24; 201 -HDQ*L31; 4 -HDQ*L34
74 -HDQ*-OHD; 114 -HDQ*DROP_OHQ_Z; 156 -HDQ*DROP_OCR_YZ; 197 +ODY*L8
87 +ODY*L9; 99 +ODY*L10; 18 +ODY*L14; 45 +ODY*L18
57 +ODY*L23; 44 +ODY*L26; 112 +ODY*L31; 113 +ODY*L32
18 +ODY*L36; 69 +ODY*DROP_OHQ_Z; 98 +ODZ*L27; 18 -OFY*L19
1 +OYQ*L7; 74 +OYQ*L14; 20 +OYQ*L17; 7 +OYQ*L28
25 +OYQ*L30; 21 +OYQ*L33; 62 +HPR*L17; 13 +HPR*L30
33 +DPQ*L27; 4 +DPR*L0; 1 -FPQ*L19; 1 -DYQ*L7
55 -YZQ*L0; 117 -YZQ*L3; 11 -YZQ*L8; 39 -YZQ*L17
2 -YZQ*L27; 96 +YPQ*L3; 51 +YPQ*L4; 36 +YPQ*L8
47 +YPQ*L12; 5 -PQR*L0; 22 -DYZ*L18; 63 -DYZ*L21
44 -DYZ*L26; 19 -DYZ*L30; 25 -DYZ*L31; 18 -DYZ*L32
41 -DYZ*-OHD; 74 -DYZ*C_OCF_Y; 38 C_ODZ_Y*L2; 10 C_ODZ_Y*L12
11 C_ODZ_Y*L14; 7 C_ODZ_Y*L22; 235 C_ODZ_Y*L24; 11 C_HCZ_Y*L28
18 C_CFR_Q*L27; 63 C_CZQ_Y*L12; 74 C_CZQ_Y*LY_R; 2 TPX_P_*L21
11 TPY_P_*L19; 15 TPY_P_*L35; 34 Q_ODRH_YZQ*L19; 39 Q_OQRH_Z*L27
11 Q_ODPF_Y*L17; 4 Q_ODQZ_Y*L4; 74 Q_ODQZ_Y*L10; 167 Q_ODQZ_Y*L31
56 Q_ODQZ_Y*-OHD; 43 Q_ODQZ_Y*+OCF; 5 Q_ODQZ_Y*DROP_OHP_ZQ; 10 Q_ODQZ_Y*DROP_OCR_YZ
75 Q_ODQZ_Y*LY_R; 19 SP_HZCD_YQ_HC1*L12; 13 SP_HZCD_YQ_HC1*L16; 25 SP_HZCD_YQ_HC1*L19
24 Q_HYCF_Q*L27; 21 Q_HYCP_Q*L27; 1 Q_CDQZ_Y*TX_P_; 64 M_OHDQZY_1_0*L6
44 M_OHDQZY_1_0*L16; 12 M_OHDQZY_1_0*L28; 81 M_OHDQZY_1_0*L30; 79 M_OHDQZY_1_4*L0
63 M_OHDQZY_1_4*L12; 13 M_ORDQZY_1_4*L17
```

Upper bound: `-2735143707/1000000000`.

### Leaf TULppmmpmpmp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR -DQR +HDQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHDPQ -FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PCQ
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
24 L0*L1*L12; 29 L0*L1*TX_P_; 106 L0*L3*L4; 266 L0*L3*L14
20 L0*L12*L17; 79 L0*L12*L23; 46 L0*L14*L21; 32 L0*L21*L29
107 L0*L27*L31; 364 L0*L27*DROP_OHQ_Z; 65 L1*L1*L20; 85 L1*L2*L16
379 L1*L2*L23; 24 L1*L3*L34; 299 L1*L4*L16; 87 L1*L7*L24
31 L1*L8*L17; 23 L1*L10*L30; 485 L1*L12*L22; 55 L1*L12*L24
264 L1*L15*L24; 12 L1*L16*TX_P_; 153 L1*L17*L23; 284 L1*L17*L27
29 L1*L17*L28; 86 L1*L19*L20; 102 L1*L19*L29; 45 L1*L20*L29
37 L1*L20*L31; 399 L1*L22*L27; 51 L1*L23*L31; 118 L1*L24*L24
55 L1*L24*L30; 29 L1*L24*L34; 14 L1*L24*TY_P_; 1 L1*L29*TX_P_
23 L1*L30*L31; 1 L1*L31*TX_P_; 87 L2*L3*L23; 9 L2*L3*LY_R
4 L2*L19*L35; 69 L2*L21*L27; 112 L2*L23*L24; 288 L2*L23*LY_R
13 L2*L27*L28; 457 L2*L27*L32; 78 L3*L3*L27; 45 L3*L4*L4
150 L3*L4*L17; 59 L3*L4*L23; 84 L3*L7*L28; 325 L3*L8*L27
83 L3*L11*L17; 521 L3*L12*L27; 78 L3*L14*L17; 40 L3*L14*L24
51 L3*L17*L19; 41 L3*L17*L23; 106 L3*L17*LY_R; 16 L3*L19*L30
343 L3*L23*L27; 176 L3*L24*L27; 325 L3*L27*L35; 31 L3*L27*L36
3 L3*L27*TX_P_; 718 L3*L27*DROP_OCR_YZ; 1 L3*L32*TX_P_; 3 L4*L6*TX_P_
327 L4*L10*L27; 16 L4*L12*L17; 512 L4*L12*L21; 147 L4*L14*L27
1 L4*L17*L32; 128 L4*L21*L24; 476 L4*L23*L24; 53 L4*L24*TX_P_
327 L4*L27*L30; 327 L4*L27*L35; 147 L4*L27*L36; 248 L4*L27*LX_R
64 L5*L17*L17; 576 L5*L24*L27; 58 L6*L7*L27; 2 L6*L16*L27
8 L6*L17*L23; 12 L6*L17*L32; 208 L6*L22*L27; 87 L6*L24*L27
16 L6*L27*TX_P_; 140 L7*L17*L19; 1 L7*L19*L19; 5 L7*L19*L28
81 L7*L19*L30; 72 L7*L19*TX_P_; 63 L7*L21*L27; 80 L7*L27*L35
1 L7*L28*TX_P_; 221 L8*L17*L27; 4 L8*L17*TY_P_; 3 L8*L19*L19
20 L8*L19*L30; 71 L9*L12*L27; 80 L10*L17*L27; 3 L10*L17*TY_P_
80 L10*L27*TX_P_; 71 L11*L12*L27; 49 L12*L17*L27; 1 L12*L19*L29
3 L12*L21*L27; 3 L12*L21*LY_R; 540 L12*L22*L27; 172 L12*L22*TY_P_
505 L12*L27*+OCF; 268 L12*L27*C_OHD_Z; 80 L12*L27*TX_P_; 71 L13*L27*L35
124 L14*L17*L22; 540 L14*L21*L27; 24 L14*L25*L27; 24 L14*L27*L27
4 L16*L17*L32; 4 L17*L17*L23; 40 L17*L17*L28; 115 L17*L18*L27
89 L17*L21*L28; 9 L17*L22*TY_P_; 45 L17*L23*L30; 48 L17*L23*L34
190 L17*L27*L31; 4 L17*L28*L35; 20 L17*L30*L32; 115 L18*L27*TX_P_
2 L19*L19*L29; 45 L19*L20*L30; 9 L19*L23*TX_P_; 31 L19*L24*L30
12 L21*L29*L32; 399 L22*L27*C_OHD_Z; 4 L22*TX_P_*TX_P_; 51 L23*L24*L29
45 L24*L27*TX_P_; 371 L24*L27*TY_P_; 30 L24*L29*LY_R; 24 L27*L27*L36
770 L27*L27*DROP_OHP_ZQ; 29 L27*L29*TY_P_; 399 L27*TX_P_*DROP_OCR_YZ; 9 KLOW*L3
266 KLOW*L14; 104 KLOW*L21; 391 KLOW*TY_P_; 23 +OYZ*L10
78 +OYZ*L17; 80 +OYZ*L22; 32 +OYZ*L24; 23 +OYZ*L31
157 -HYZ*L3; 157 -HYZ*L8; 24 -HYZ*LY_R; 4 -HCY*L4
56 -HCY*L7; 23 -HCY*L11; 393 -HCY*L14; 130 -HCY*L15
51 -HCY*L23; 180 -HCY*L30; 16 -HCY*DROP_OHP_ZQ; 4 -HCY*TY_P_
37 -HCY*DROP_OHQ_Z; 107 -HCY*DROP_OCR_YZ; 55 -HCY*LX_R; 24 -HCY*LY_R
328 +OCZ*L27; 2 +CDP*L4; 16 +CDP*L14; 196 +CDP*L17
2 +CDP*L18; 48 +CDP*L22; 106 +CDP*L27; 16 +CDP*L36
413 +CDP*-OHD; 85 +CDP*C_OHD_Z; 146 +CDP*TX_P_; 389 +CDP*DROP_OHQ_Z
130 +CDP*LX_R; 98 -DFP*L2; 16 -DFP*L4; 16 -DFP*L17
18 -DFP*L19; 16 -DFP*TY_P_; 4 -DFP*DROP_OHQ_Z; 5 -DFP*LX_R
448 -DFP*LY_R; 29 -CFP*L27; 87 +HCQ*L27; 43 +CDQ*L4
16 +CDQ*L12; 277 +DFQ*L27; 86 +HFR*L2; 121 +HFR*L5
75 +HFR*L22; 118 +HFR*L24; 29 +HFR*L28; 298 +HFR*TY_P_
35 +HFR*DROP_OHQ_Z; 179 +OPQ*L0; 181 +OPQ*L3; 39 +OPQ*L4
45 +OPQ*L12; 143 +OPQ*L14; 25 +OPQ*L21; 19 +OPQ*TX_P_
113 -FPR*L3; 7 -FPR*L5; 74 -FPR*L7; 56 -FPR*L17
1 -FPR*L19; 9 -FPR*L23; 45 -FPR*L25; 80 -FPR*L30
21 -FPR*LY_R; 238 +CYZ*L0; 310 +CYZ*L3; 180 +CYZ*L8
23 +CYZ*L11; 51 +CYZ*L23; 55 +CYZ*L25; 310 +CYZ*+OCF
78 +CYZ*DROP_OHP_ZQ; 25 +CYZ*DROP_OHQ_Z; 20 +OYP*L3; 18 +OYP*L17
3 +OYP*L19; 8 +OYP*L20; 23 +OYP*L24; 20 +OYP*L30
29 +OYP*L34; 24 +OYP*LY_R; 256 -OZQ*L1; 571 -OZQ*L3
29 -OZQ*L11; 25 -OZQ*L21; 549 -OZQ*L24; 596 -OZQ*+OCF
172 -OZQ*TY_P_; 292 -OZQ*DROP_OCR_YZ; 181 +OZR*L19; 833 +OZR*L22
293 +OZR*L28; 15 +OZR*C_OCF_Y; 181 +OZR*TY_P_; 526 +OZR*DROP_OHQ_Z
178 -HPQ*L2; 87 +CQR*L3; 16 +CQR*L5; 400 +CQR*L16
94 +CQR*L24; 359 +CQR*L34; 30 +CQR*TX_P_; 48 +CQR*TY_P_
718 +CQR*LY_R; 434 -DQR*L1; 76 -DQR*L3; 412 -DQR*L4
879 -DQR*L12; 827 -DQR*L14; 58 -DQR*L18; 94 -DQR*L24
58 -DQR*L29; 353 -DQR*L36; 430 -DQR*DROP_OHP_ZQ; 291 -DQR*DROP_OHQ_Z
1464 -DQR*DROP_OCR_YZ; 463 +HDQ*L4; 54 +HDQ*L7; 302 +HDQ*L14
89 +HDQ*L17; 19 +HDQ*L18; 291 +HDQ*L20; 326 +HDQ*L25
94 +HDQ*L28; 3 +HDQ*L33; 368 +HDQ*+OCF; 217 +HDQ*DROP_OCR_YZ
160 +HDQ*LY_R; 1 +OYQ*L7; 11 +OYQ*L17; 291 +HQR*L20
37 +DPQ*L17; 335 +DPQ*L27; 75 -FPQ*L0; 30 -FPQ*L2
12 -FPQ*L8; 23 -FPQ*L25; 4 -FPQ*TX_P_; 420 -FQR*L27
25 -YZQ*L20; 23 -YZQ*L25; 55 +YPQ*L1; 12 +YPQ*L6
29 +YPQ*L14; 23 +YPQ*L25; 55 +YPQ*C_OHD_Z; 22 +YPQ*DROP_OHP_ZQ
25 +YPQ*DROP_OHQ_Z; 325 -PQR*L27; 378 C_OHP_ZQ*L4; 24 C_OHP_ZQ*L17
268 C_ODR_ZQ*L27; 263 C_OPR_ZQ*L0; 18 C_OPR_ZQ*L2; 56 C_OPR_ZQ*L17
1 C_OPR_ZQ*L19; 49 C_OPR_ZQ*L30; 239 C_HCZ_Y*L11; 308 C_HCZ_Y*L23
7 C_HDF_Q*L27; 112 C_CDR_Q*L24; 1 TPX_P_*L29; 24 Q_YPRZ_Q*L27
```

Upper bound: `-883692363/200000000`.

### Leaf TULppmmpmppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR -CFQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHQR -DHQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOZQR -DZQ
P DHCYQ -DYQ
P FOHCQ +FOQ
P FOCYQ +FYQ
P FODPQ -FPQ
P FODQR -FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHCQ -PCQ
P POHYQ -PYQ
P POHQR -PQR
```

```c1top-bounds
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
10 L0*L2*L23; 2 L0*L3*L6; 15 L0*L17*L29; 30 L1*L2*L21
36 L1*L2*TY_P_; 18 L1*L4*L24; 15 L1*L16*L24; 2 L1*L17*L22
1 L1*L19*L19; 18 L1*L24*TX_P_; 13 L2*L4*L17; 3 L2*L5*TY_P_
10 L2*L5*DROP_OHQ_Z; 10 L2*L6*L23; 27 L2*L16*L27; 25 L2*L19*L20
9 L2*L19*L23; 5 L2*L19*TY_P_; 14 L2*L23*L29; 15 L2*L23*DROP_OCR_YZ
4 L2*L23*LX_R; 13 L2*L24*TY_P_; 8 L3*L4*L4; 6 L3*L4*L6
40 L3*L27*TY_P_; 27 L4*L6*L23; 12 L4*L17*L23; 5 L4*L17*TY_P_
13 L4*L17*DROP_OHQ_Z; 8 L4*L20*L27; 1 L4*L24*L28; 11 L4*L25*L27
42 L5*L17*LY_R; 1 L5*L18*L24; 5 L5*L19*L21; 3 L5*L19*L29
5 L5*L21*L24; 3 L5*L23*L29; 15 L6*L12*L27; 6 L6*L18*L27
14 L6*L22*L27; 9 L6*L23*L24; 7 L6*L24*L25; 15 L6*L27*L33
3 L6*L27*LX_R; 12 L7*L17*L27; 6 L7*L19*L21; 7 L7*L24*TX_P_
7 L7*L24*TY_P_; 10 L8*L17*L19; 3 L16*L17*L22; 7 L16*L17*L28
6 L16*L19*L27; 12 L16*L20*L27; 1 L17*L17*L26; 10 L17*L19*L31
1 L17*L19*LY_R; 18 L17*L21*L28; 12 L17*L21*LY_R; 2 L17*L23*LY_R
1 L17*L24*TY_P_; 3 L17*L27*LY_R; 5 L17*L28*L29; 15 L18*L24*L27
9 L18*L27*TY_P_; 1 L19*L19*-OHD; 3 L19*L21*TX_P_; 9 L19*L22*L24
1 L19*L24*TY_P_; 9 L19*L27*TY_P_; 5 L21*L27*LX_R; 4 L22*L24*L25
7 L22*L24*TY_P_; 2 L24*L24*L27; 39 L24*L27*DROP_OCR_YZ; 2 L24*L27*LX_R
7 L24*TX_P_*LX_R; 6 L24*TY_P_*LX_R; 15 L24*TY_P_*LY_R; 9 L24*DROP_OHQ_Z*LY_R
4 L26*L27*L29; 3 L26*L27*TX_P_; 4 L27*L27*C_OCF_Y; 4 L27*L29*DROP_OHQ_Z
6 L27*TX_P_*TY_P_; 39 L27*LX_R*LY_R; 14 L29*TX_P_*LY_R; 3 KLOW*L19
9 KLOW*L21; 16 KLOW*L25; 8 KLOW*DROP_OHP_ZQ; 23 KLOW*TY_P_
4 KLOW*DROP_OHQ_Z; 17 KLOW*LX_R; 5 +CDP*L19; 28 +CDP*L22
24 +CDP*L26; 2 +CDP*+OCF; 10 +CDP*DROP_OHP_ZQ; 16 +CDP*LY_R
2 -DFP*L17; 5 -DFP*L27; 1 +ODP*L24; 9 +DFQ*L7
34 +DFQ*L18; 17 +DFQ*L19; 30 +DFQ*-OHD; 23 +DFQ*+OCF
34 +DFQ*DROP_OHP_ZQ; 7 +DFQ*TY_P_; 4 -OHR*L19; 7 -OHR*L22
1 -OHR*L28; 1 -OHR*LY_R; 2 +HFR*L4; 15 +HFR*L6
34 +HFR*L16; 29 +HFR*L18; 4 +HFR*L23; 29 +HFR*L29
41 +HFR*DROP_OCR_YZ; 29 +OPQ*L4; 12 +OPQ*L16; 11 +OPQ*L29
4 +OPQ*LY_R; 9 -FPR*L1; 3 -FPR*L6; 25 -HPQ*L2
10 -HPQ*L4; 6 -HPQ*L16; 10 +DQR*L12; 10 +DQR*L14
7 +DQR*L19; 4 +DQR*L26; 13 +DQR*L29; 10 +DQR*L36
1 +DQR*-OHD; 7 +DQR*TY_P_; 4 +DQR*LX_R; 11 -CFQ*L5
11 -CFQ*L7; 7 -CFQ*L28; 18 -CFQ*-OHD; 14 -CFQ*+OCF
25 -CFQ*DROP_OHP_ZQ; 19 -CFQ*TY_P_; 15 -CFQ*LY_R; 1 +HPR*L17
1 +HPR*L19; 9 +HDQ*L24; 3 +DPQ*L17; 19 +DPQ*LY_R
2 -FPQ*L29; 24 -FPQ*LY_R; 1 -FQR*L0; 9 -PQR*L2
2 C_HDF_Q*L19; 6 C_HDP_Q*L27; 7 C_CDF_Q*L4; 31 C_CDF_Q*L6
2 C_DFR_Q*L25; 6 TPY_P_*L24; 4 Q_OQRH_Z*L27; 9 Q_OCDP_Y*L27
10 Q_OQFR_Z*L27; 2 Q_HDPR_Q*L23; 4 Q_HDPR_Q*L29; 2 Q_CDPF_Q*L3
6 Q_CDPF_Q*L22; 3 Q_CDPF_Q*L28; 2 Q_CDPF_Q*TX_P_; 9 Q_CDPF_Q*DROP_OCR_YZ
8 Q_DPFR_Q*L4
```

Upper bound: `-600976881/1000000000`.

### Leaf TULppmmpmpppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZP +ODZ
P OHDPQ +ODQ
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHYZ -DYZ
P DOHQR -DHQ
P DOCYQ -DYQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOZQR -DZQ
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OCD Y 2 lower 279/1000
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
S P - 3 upper 628/721
Y P - 9 lower 2210517/4973500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 279/1000 167/200
f 437/1000 109/125
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 111/250 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L3*L4; 51 L0*L3*L10; 30 L0*L12*LY_R; 26 L0*L19*L29
11 L0*L21*L29; 28 L0*L26*TX_P_; 3 L0*L32*TX_P_; 14 L1*L1*L2
14 L1*L1*L13; 88 L1*L1*L24; 9 L1*L2*L21; 2 L1*L3*L23
7 L1*L3*L31; 15 L1*L4*L12; 19 L1*L6*L27; 21 L1*L9*L12
45 L1*L10*L27; 14 L1*L10*L29; 4 L1*L10*DROP_OHQ_Z; 34 L1*L12*L18
3 L1*L12*L24; 25 L1*L12*L27; 13 L1*L17*L23; 16 L1*L17*L30
24 L1*L18*L31; 13 L1*L22*L31; 72 L1*L24*L29; 30 L1*L27*L35
10 L1*L30*L31; 35 L1*L31*LY_R; 14 L1*L35*LY_R; 11 L2*L5*L17
15 L2*L12*TY_P_; 36 L2*L16*L27; 7 L2*L17*L21; 15 L2*L24*L28
20 L2*L27*L27; 15 L2*L35*LY_R; 2 L3*L3*L4; 116 L3*L3*L10
5 L3*L3*L22; 9 L3*L4*L4; 21 L3*L4*L6; 55 L3*L4*L9
40 L3*L4*L19; 2 L3*L4*L24; 2 L3*L4*L35; 1 L3*L7*L14
108 L3*L10*L12; 41 L3*L10*L16; 72 L3*L10*DROP_OHP_ZQ; 31 L3*L10*DROP_OHQ_Z
10 L3*L12*LY_R; 9 L3*L14*L19; 2 L3*L14*L23; 123 L3*L14*L31
7 L3*L16*L20; 31 L3*L19*L19; 3 L3*L19*L22; 13 L3*L19*L31
12 L3*L19*LY_R; 8 L3*L27*L32; 9 L3*L29*LY_R; 15 L3*L31*LY_R
64 L4*L6*L27; 10 L4*L7*L24; 82 L4*L9*L16; 1 L4*L10*L35
6 L4*L10*LX_R; 18 L4*L12*LY_R; 24 L4*L14*L31; 16 L4*L16*TX_P_
14 L4*L17*L17; 6 L4*L19*TX_P_; 7 L4*L20*L35; 3 L4*L24*L28
3 L4*L31*TY_P_; 1 L4*TX_P_*DROP_OHQ_Z; 5 L5*L15*L17; 12 L5*L17*LY_R
5 L5*L23*L30; 33 L5*L24*L30; 23 L5*L27*L31; 23 L6*L8*L27
1 L6*L10*L30; 6 L6*L14*L31; 35 L6*L17*L24; 2 L6*L22*L27
13 L6*L24*TY_P_; 16 L6*L27*L33; 28 L6*L27*DROP_OHP_ZQ; 1 L7*L8*L14
33 L7*L8*L19; 22 L7*L13*L19; 14 L7*L14*L27; 4 L7*L16*L19
10 L7*L17*L35; 14 L7*L19*L21; 26 L7*L19*L24; 23 L7*L19*L34
9 L7*L26*L30; 16 L7*L26*TX_P_; 3 L7*L34*LY_R; 41 L8*L17*L30
5 L8*L20*L27; 30 L8*L24*TY_P_; 41 L9*L9*L16; 41 L9*L12*L16
11 L9*L12*L22; 1 L9*L20*L24; 1 L9*L29*L32; 11 L10*L12*L21
10 L10*L17*L17; 17 L10*L21*L27; 7 L10*L24*L36; 12 L10*L26*TX_P_
23 L10*L27*DROP_OHP_ZQ; 14 L10*LY_R*LY_R; 4 L11*L17*L19; 3 L11*L17*L28
14 L11*L27*L27; 6 L12*L12*L23; 6 L12*L16*TY_P_; 81 L12*L18*L31
20 L12*L22*L31; 15 L12*L22*TY_P_; 11 L12*L24*TY_P_; 30 L12*L27*L35
33 L12*L27*-OHD; 53 L12*L27*C_OCF_Y; 7 L12*L27*DROP_OCP_Y; 20 L12*L27*DROP_OCR_YZ
47 L12*L31*TY_P_; 8 L12*L32*TX_P_; 4 L13*L19*LY_R; 24 L14*L17*L22
11 L14*L17*L24; 27 L14*L18*L31; 31 L14*L21*L31; 11 L14*L21*L35
13 L14*L22*L31; 23 L14*L24*L31; 7 L14*L27*TX_P_; 23 L15*L27*L31
62 L16*L19*TX_P_; 58 L16*L27*DROP_OHP_ZQ; 10 L16*L35*TX_P_; 6 L17*L17*L22
35 L17*L17*L24; 74 L17*L17*L26; 10 L17*L17*L30; 62 L17*L17*TY_P_
4 L17*L19*L23; 24 L17*L19*L28; 96 L17*L19*L29; 6 L17*L19*L30
11 L17*L22*L24; 1 L17*L22*L28; 1 L17*L24*C_OHD_Z; 35 L17*L24*TX_P_
16 L17*L24*TY_P_; 65 L17*L26*L29; 8 L17*L28*L28; 49 L17*TX_P_*LY_R
12 L18*L23*L24; 6 L18*L24*L31; 4 L18*L24*TY_P_; 2 L19*L19*L21
12 L19*L19*L24; 12 L19*L20*L27; 1 L19*L21*L29; 6 L19*L23*TX_P_
16 L19*L26*TX_P_; 15 L19*L29*L29; 10 L19*L32*TX_P_; 13 L20*L24*TY_P_
3 L20*L27*L31; 2 L20*L27*TX_P_; 2 L20*L29*LY_R; 16 L21*L24*L28
3 L21*L24*L32; 2 L21*L27*L27; 1 L21*L27*L28; 2 L21*L27*LY_R
17 L22*L24*L32; 1 L23*L29*L35; 1 L23*L31*LX_R; 6 L23*TX_P_*TX_P_
13 L24*L28*L32; 1 L24*L30*DROP_OHQ_Z; 23 L24*L31*TY_P_; 20 L26*L27*L30
8 L26*L28*L29; 20 L27*L31*LY_R; 23 L29*L29*LY_R; 6 L35*TX_P_*TY_P_
49 TX_P_*TX_P_*LY_R; 50 -HCY*L1; 38 -HCY*L3; 39 -HCY*L4
10 -HCY*L8; 44 -HCY*L21; 13 -HCY*L22; 1 -HCY*L25
31 -HCY*L33; 16 -HCY*DROP_OHP_ZQ; 24 -HCY*DROP_OCP_Y; 49 -HCY*DROP_OHQ_Z
7 -HCY*LX_R; 9 +CDY*L9; 6 -OHZ*L12; 32 -OHZ*L31
38 +CDP*L1; 68 +CDP*L3; 12 +CDP*L4; 16 +CDP*L10
16 +CDP*L12; 9 +CDP*L14; 96 +CDP*L16; 31 +CDP*L19
26 +CDP*L23; 71 +CDP*L25; 12 +CDP*L26; 13 +CDP*L35
66 +CDP*+OCF; 1 +CDP*DROP_OHQ_Z; 45 -DFP*L0; 40 -DFP*L16
22 -DFP*L22; 1 +CDQ*L27; 3 +HYQ*L24; 46 -CYQ*L12
48 -OHR*L17; 95 -OHR*L27; 51 -OHR*LY_R; 45 +HFR*L4
17 +HFR*L10; 27 +HFR*L18; 34 +HFR*L23; 38 +HFR*L29
6 +HFR*L31; 3 +HFR*L36; 29 +HFR*DROP_OHP_ZQ; 34 +HFR*TX_P_
34 +HZR*L5; 12 +HZR*L12; 26 +HZR*L14; 38 +HZR*L19
6 +HZR*L30; 20 +HZR*C_OCF_Y; 44 +HZR*LY_R; 15 +OPQ*L4
2 +OPQ*L7; 7 +OPQ*L10; 55 +OPQ*L14; 1 +OPQ*DROP_OHP_ZQ
18 +OPQ*LY_R; 1 -FPR*L1; 101 -FPR*L3; 25 -FPR*L7
11 -FPR*L11; 16 -FPR*L19; 16 -FPR*L22; 7 -FPR*L34
14 -FPR*TX_P_; 123 +CYZ*L3; 34 +CYZ*L4; 203 +CYZ*L14
203 +CYZ*L15; 13 +CYZ*L22; 129 +CYZ*DROP_OHP_ZQ; 27 +CYZ*DROP_OCP_Y
35 +CYZ*DROP_OHQ_Z; 23 +CYZ*DROP_OCR_YZ; 7 +CYZ*LX_R; 32 -OZP*L23
11 -OZP*L24; 129 -OZP*L31; 31 -OZQ*L1; 36 -OZQ*L9
20 -OZQ*L26; 20 -OZQ*L28; 41 -OZQ*L31; 11 -OZQ*L32
6 -OZQ*L33; 18 -OZQ*C_OCF_Y; 57 -OZQ*DROP_OCP_Y; 41 +OZR*L18
20 +OZR*L22; 44 +OZR*L27; 6 +OZR*L30; 42 +OZR*L31
7 +OZR*L32; 26 +OZR*L34; 34 +OZR*C_OHD_Z; 16 -HPQ*L4
14 -HPQ*L19; 17 -HPQ*L27; 13 -HPQ*LX_R; 16 +DQR*L1
6 +DQR*L8; 7 +DQR*L11; 20 +DQR*L15; 1 +DQR*L29
4 +DQR*DROP_OCP_Y; 5 +CFQ*L2; 5 +CFQ*L6; 2 +CFQ*L14
3 +CFQ*DROP_OCP_Y; 26 +CFQ*TY_P_; 2 +CFQ*LY_R; 35 -ODY*L3
10 -ODY*L9; 42 -ODY*L13; 22 -ODY*L16; 5 -ODY*L23
23 -ODY*L26; 9 -ODY*L36; 39 -ODY*-OHD; 80 -ODY*DROP_OHP_ZQ
3 -ODY*TY_P_; 13 -ODY*DROP_OHQ_Z; 6 -ODY*LX_R; 5 +HPR*L1
4 +HQR*L35; 3 +HDQ*L24; 13 -FPQ*L1; 3 -FPQ*L4
7 -FPQ*L10; 2 -FPQ*L15; 3 -FPQ*DROP_OHP_ZQ; 16 -FPQ*DROP_OCP_Y
19 -FPQ*LY_R; 1 -FQR*L7; 6 -FQR*L10; 2 -PQR*L17
1 +YQR*L3; 16 C_OHP_ZQ*L3; 11 C_OCD_Y*L27; 21 TPY_P_*L2
8 TPY_P_*L26; 20 Q_OCDZ_Y*L12; 15 Q_OCDZ_Y*L27; 5 Q_HYDF_Q*L12
80 Q_DPFR_Q*L2; 3 Q_DPFR_Q*L4; 24 Q_DPFR_Q*L6; 47 Q_DPFR_Q*L8
87 Q_DPFR_Q*L17; 8 Q_DPFR_Q*L31; 22 Q_DPFR_Q*L33; 14 Q_DPFR_Q*L34
```

Upper bound: `-9338731/200000000`.

### Leaf TULppmmpmppppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ +ODY -OFZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDPQ +ODQ
P OHFYZ -OFY
P OHFYR +OYR
P OHFZQ -OFQ
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHQR -DHQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOYQR -DYQ
P DOZQR -DZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHFQ -ZFQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
```

Exclusion: `cluster OCF Z CFZ YQ`.

### Leaf TULppmmpmpppppmm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ +ODY +OFZ -OFQ -DYZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHQR -DHQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOYQR -DYQ
P DOZQR -DZQ
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
42 L0*L1*L12; 2 L0*L3*L10; 6 L0*L8*L27; 19 L0*L12*L17
19 L0*L12*L31; 4 L0*L27*TY_P_; 4 L1*L1*L5; 32 L1*L1*L24
18 L1*L3*L8; 7 L1*L3*L36; 1 L1*L4*L10; 8 L1*L4*L12
1 L1*L4*L35; 4 L1*L4*LY_R; 13 L1*L6*L19; 10 L1*L6*LY_R
2 L1*L10*L17; 30 L1*L12*L24; 27 L1*L13*L27; 2 L1*L14*L31
8 L1*L16*L17; 81 L1*L17*L31; 3 L1*L18*L35; 2 L1*L19*L33
17 L1*L24*L25; 71 L1*L24*L31; 7 L1*L24*L35; 33 L1*L24*L36
42 L1*L24*C_OCF_YQ; 81 L1*L31*TX_P_; 11 L2*L3*LY_R; 2 L2*L7*L24
2 L2*L19*L32; 14 L2*L19*TX_P_; 36 L2*L24*TY_P_; 3 L2*L27*TY_P_
72 L2*L28*L30; 14 L3*L3*L10; 25 L3*L3*L15; 9 L3*L4*L14
19 L3*L4*L24; 160 L3*L6*L10; 24 L3*L6*L34; 63 L3*L12*L27
6 L3*L14*L31; 28 L3*L15*L16; 56 L3*L16*L34; 14 L3*L19*L31
29 L3*L24*L27; 17 L3*L27*L31; 41 L3*L27*L35; 29 L3*L27*LX_R
3 L3*TX_P_*LY_R; 21 L4*L7*L24; 39 L4*L8*L27; 10 L4*L16*TX_P_
5 L4*L19*L24; 42 L4*L24*LY_R; 2 L5*L17*L24; 6 L5*L17*L29
31 L6*L12*L27; 13 L6*L18*L27; 8 L6*L21*L27; 2 L6*L24*L31
20 L6*L27*L27; 72 L6*L27*L31; 26 L6*L27*L33; 8 L6*L27*DROP_OHQ_Z
2 L7*L19*L19; 9 L7*L19*L24; 1 L7*L19*L29; 3 L7*L24*L27
1 L8*L17*LY_R; 6 L8*L19*L19; 3 L8*L19*L29; 10 L8*L27*DROP_OCR_YZ
41 L9*L12*L14; 10 L9*L12*L28; 155 L9*L14*L27; 7 L9*L17*L24
98 L10*L12*L27; 1 L10*L19*L27; 2 L10*L24*L29; 5 L10*L24*LY_R
17 L11*L12*L24; 2 L11*L17*L19; 5 L11*L19*L24; 4 L11*L19*L29
3 L11*L19*LY_R; 8 L12*L17*L27; 22 L12*L18*L27; 22 L12*L24*LY_R
36 L12*L27*L28; 74 L12*L27*L31; 14 L12*L27*L33; 185 L12*L27*+OCF
10 L14*L24*LY_R; 6 L16*L24*L35; 8 L16*L27*DROP_OHP_ZQ; 8 L17*L19*L24
28 L17*L19*C_OCF_YQ; 56 L17*L24*L27; 59 L17*L24*LY_R; 5 L17*L27*TY_P_
53 L17*L29*LY_R; 44 L18*L24*L27; 4 L18*L35*TX_P_; 8 L19*L24*L34
5 L19*L24*TY_P_; 5 L19*L27*L31; 4 L19*L27*L32; 5 L19*L29*L32
4 L19*L31*TX_P_; 17 L24*L24*L36; 11 L24*L27*DROP_OCR_YZ; 8 L24*L30*TY_P_
2 L24*L35*TX_P_; 44 L24*TY_P_*LY_R; 11 L25*L26*L27; 23 L27*L27*L29
10 L27*L27*L30; 18 L27*L28*C_OCF_YQ; 5 L27*L30*LX_R; 14 L27*L33*L33
58 L27*L33*L35; 5 L27*L35*LX_R; 23 L27*C_OCF_YQ*LY_R; 1 L27*TX_P_*LX_R
8 L29*L29*LY_R; 38 +OYZ*L2; 23 +OCY*L27; 2 -HCY*L4
25 -HCY*L13; 4 -HCY*L14; 5 -HCY*L18; 6 -HCY*L27
24 -HCY*L29; 66 -HCY*+OCF; 19 -HCY*C_OCF_YQ; 18 -HCY*LX_R
72 +CDY*L16; 8 -HFP*TX_P_; 2 +CDP*L10; 124 +CDP*L12
107 +CDP*L13; 9 +CDP*L29; 5 +CDP*L31; 17 +CDP*L36
10 +CDP*TX_P_; 19 +CDP*LX_R; 2 +CDP*LY_R; 17 -DFP*L14
3 -DFP*LY_R; 27 +HFR*L9; 17 +HFR*L13; 36 +HFR*L17
53 +HFR*L18; 3 +HFR*L26; 17 +HFR*L29; 48 +HFR*L31
7 +HFR*L34; 3 +HFR*-OHD; 44 +HZR*L1; 8 +HZR*L5
22 +HZR*L9; 18 +HZR*L12; 47 +HZR*L14; 19 +HZR*L17
2 +HZR*L32; 66 +HZR*+OCF; 17 +HZR*LX_R; 55 -FPR*L3
8 -FPR*L12; 22 -FPR*L17; 5 -FPR*L18; 2 -FPR*L25
5 -FPR*L35; 13 -FPR*TX_P_; 178 +CYZ*L3; 4 +CYZ*L4
134 +CYZ*L6; 257 +CYZ*L12; 4 +CYZ*L19; 274 +CYZ*L33
2 +CYZ*-OHD; 83 +CYZ*DROP_OHP_ZQ; 19 +CYZ*LX_R; 11 +OYP*L2
2 +OYP*L28; 81 +OZR*L0; 95 +OZR*L4; 102 +OZR*L8
2 +OZR*L10; 23 +OZR*L15; 22 +OZR*L18; 97 +OZR*L31
18 +OZR*L33; 24 +OZR*L34; 19 +OZR*DROP_OHP_ZQ; 10 +OZR*DROP_OCR_YZ
2 +ODY*L1; 63 +ODY*L3; 63 +ODY*L12; 4 +ODY*L14
106 +ODY*L30; 106 +ODY*L31; 9 +ODY*TX_P_; 111 +ODY*DROP_OCR_YZ
130 +OFZ*L2; 20 +OFZ*L24; 2 -OFQ*L27; 236 -DYZ*L3
154 -DYZ*L6; 58 -DYZ*L13; 2 -DYZ*L18; 361 -DYZ*C_OCF_YQ
83 -DYZ*DROP_OHP_ZQ; 150 -DYZ*DROP_OCR_YZ; 46 C_ODF_YQ*L8; 16 C_ODF_YQ*L17
14 C_ODF_YQ*L19; 117 C_ODF_YQ*L30; 3 C_ODF_YQ*LY_R; 23 C_ODZ_Y*L12
17 C_ODZ_Y*L17; 100 C_ODZ_Y*L24; 27 C_ODZ_Y*L27; 36 C_ODZ_Y*L29
36 C_OFP_Q*LY_R; 112 C_HCZ_Y*L3; 2 C_HCZ_Y*L19; 18 C_HCZ_Y*L30
14 C_CDZ_Y*L3; 35 C_CDZ_Y*L12; 4 C_CDZ_Y*L35; 7 C_CFZ_YQ*L1
7 C_CFZ_YQ*L5; 24 C_CFZ_YQ*TY_P_; 1 C_CFZ_YQ*LX_R; 21 C_DFR_Q*L17
13 Q_OCDH_YZ*L27; 2 SP_OCFH_ZQ_OF-1*L27; 3 Q_ODRH_YZ*L27; 4 Q_OYRH_Z*L17
9 Q_OCDP_Y*L27; 14 Q_OPFZ_Q*L4; 1 Q_OPFZ_Q*L29; 5 Q_DPFR_Q*L0
21 Q_DPFR_Q*L6; 8 Q_DPFR_Q*L30; 74 Q_DPFR_Q*C_OCF_YQ; 6 Q_FZYP_Q*L19
3 Q_FZYP_Q*L25; 5 Q_FZYP_Q*L26
```

Upper bound: `-300042773/1000000000`.

### Leaf TULppmmpmpppppmp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ +ODY +OFZ -OFQ +DYZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHQR -DHQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOYQR -DYQ
P DOZQR -DZQ
P FOHYZ -FYZ
P FOHZQ +FZQ
P FOCPQ -FPQ
P FOCQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ -PYQ
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
17 L0*L1*L7; 23 L0*L24*L30; 52 L0*L27*LX_R; 49 L1*L1*L12
49 L1*L1*LX_R; 83 L1*L2*L4; 66 L1*L2*L9; 37 L1*L2*L10
40 L1*L2*LX_R; 43 L1*L3*L19; 130 L1*L3*L24; 73 L1*L3*L27
102 L1*L6*L31; 8 L1*L7*L8; 249 L1*L8*L24; 176 L1*L10*L17
115 L1*L12*L17; 35 L1*L12*L19; 185 L1*L12*L26; 23 L1*L12*L30
148 L1*L12*+OCF; 128 L1*L13*L17; 105 L1*L14*L31; 310 L1*L18*L24
97 L1*L18*L27; 49 L1*L24*L35; 86 L1*L26*TX_P_; 63 L1*L27*L31
194 L1*L27*L33; 194 L1*L29*TY_P_; 93 L1*L31*TY_P_; 184 L1*L31*LY_R
22 L1*L34*TX_P_; 22 L1*TX_P_*LY_R; 113 L2*L14*L17; 60 L2*L17*TY_P_
209 L2*L24*L32; 64 L2*L24*LY_R; 149 L2*L27*L32; 141 L3*L3*L4
143 L3*L4*L6; 201 L3*L4*L16; 126 L3*L4*L36; 196 L3*L4*LX_R
149 L3*L9*L27; 141 L3*L10*L29; 168 L3*L12*L15; 632 L3*L12*L27
207 L3*L17*L19; 83 L3*L19*L32; 66 L3*L30*L32; 93 L4*L6*L34
121 L4*L6*L36; 90 L4*L8*LX_R; 81 L4*L12*L15; 45 L4*L13*L32
65 L4*L14*L35; 32 L4*L14*TX_P_; 68 L4*L15*L24; 65 L4*L15*LY_R
420 L4*L16*L30; 51 L4*L16*L32; 61 L4*L17*L24; 283 L4*L17*TX_P_
65 L4*L27*L36; 32 L4*L27*LX_R; 58 L4*L30*L35; 75 L4*L30*L36
269 L4*L30*C_OCF_YQ; 287 L4*L30*LX_R; 111 L4*L30*LY_R; 58 L4*L31*L32
65 L4*L32*L36; 49 L4*TX_P_*LY_R; 49 L5*L17*L17; 18 L5*L17*-OHD
32 L5*L24*LY_R; 55 L6*L11*L17; 165 L6*L14*L27; 113 L6*L27*TY_P_
11 L7*L7*L19; 51 L7*L14*L14; 122 L7*L14*L24; 10 L7*L14*L29
73 L7*L17*L19; 59 L7*L17*DROP_OCR_YZ; 64 L7*L24*DROP_OCR_YZ; 155 L7*L27*L31
66 L7*LY_R*LY_R; 38 L8*L12*L17; 64 L8*L17*L35; 64 L8*L17*+OCF
7 L8*L19*L30; 34 L8*L27*TY_P_; 7 L9*L10*L17; 43 L9*L15*L27
149 L9*L27*+OCF; 6 L10*L12*L27; 170 L10*L12*TY_P_; 49 L10*L12*LY_R
125 L10*L14*L17; 108 L10*L17*L17; 213 L10*L17*L24; 173 L10*L17*TX_P_
28 L10*L24*L27; 380 L12*L14*L27; 38 L12*L17*L35; 517 L12*L18*L27
86 L12*L19*L29; 130 L12*L19*L35; 275 L12*L24*L35; 59 L12*L27*L29
275 L12*L27*L31; 387 L12*L27*+OCF; 22 L14*L17*L28; 89 L14*L24*L29
32 L14*L24*TY_P_; 42 L14*L29*L35; 113 L14*L29*TX_P_; 146 L14*L29*TY_P_
175 L14*L35*TX_P_; 34 L16*L27*L35; 17 L16*L27*+OCF; 44 L16*L27*LX_R
44 L17*L24*LY_R; 59 L17*L26*L27; 93 L17*L27*L28; 64 L17*L31*L35
65 L17*L31*TY_P_; 97 L18*L27*-OHD; 41 L19*L24*L31; 59 L19*L24*LY_R
21 L19*L29*L34; 64 L24*L27*L29; 28 L26*L27*L31; 59 L27*L27*+OCF
138 L27*L31*DROP_OHP_ZQ; 31 QUADR*L27; 50 +OYZ*L3; 87 +OYZ*L7
66 -HCY*L5; 68 -HCY*L7; 23 -HCY*L10; 105 -HCY*L14
109 -HCY*L27; 75 -HCY*L28; 23 -HCY*L30; 23 -HCY*L35
269 -HCY*TY_P_; 209 -HCY*LX_R; 259 -HCY*LY_R; 337 +CDY*L3
148 +CDY*L8; 408 +CDY*L16; 147 +CDY*L34; 196 +CDY*+OCF
32 -OHZ*L17; 20 -HFP*L4; 143 +CDP*L6; 22 +CDP*L8
86 +CDP*L13; 167 +CDP*L14; 332 +CDP*L17; 351 +CDP*L35
196 +CDP*LX_R; 99 -DFP*L14; 32 +HFR*L9; 184 +HFR*L18
32 +HFR*TY_P_; 188 +HFR*DROP_OCR_YZ; 28 +HYR*L27; 231 +HZR*L3
148 +HZR*L12; 380 +HZR*L14; 44 +HZR*L17; 35 +HZR*L18
49 +HZR*L32; 126 +HZR*L33; 155 -FPR*L3; 187 -FPR*L8
83 +CYZ*L8; 222 +CYZ*L12; 145 +OYP*L3; 232 +OYP*L4
68 +OYP*L27; 176 +OYP*L34; 130 +OYP*L36; 80 +OYP*LX_R
212 -OZP*L4; 82 +OZR*L1; 59 +OZR*L7; 275 +OZR*L9
49 +OZR*L10; 482 +OZR*L18; 100 +OZR*L28; 23 +OZR*L33
313 +OZR*-OHD; 172 +OZR*C_OCF_YQ; 44 +OZR*DROP_OHP_ZQ; 136 +ODY*L12
45 +ODY*L24; 22 +OFZ*L0; 112 +OFZ*L7; 269 +OFZ*L9
92 +OFZ*L12; 94 +OFZ*L15; 499 +OFZ*L18; 152 +OFZ*L24
62 +OFZ*L26; 124 +OFZ*L33; 217 +OFZ*L35; 21 +OFZ*DROP_OHP_ZQ
126 +DYZ*L1; 76 +DYZ*L9; 6 +DYZ*L14; 300 +DYZ*L18
229 +DYZ*L33; 126 +DYZ*-OHD; 261 +DYZ*DROP_OHP_ZQ; 15 +DYZ*TX_P_
146 +DYZ*DROP_OCR_YZ; 422 +DYZ*LX_R; 185 +ODZ*L17; 59 +HPR*L27
55 C_CFZ_YQ*L30; 88 C_DFZ_YQ*L19; 1 C_DFZ_YQ*LY_R; 44 Q_ODPH_YZQ*L27
122 Q_OFRH_Z*L27; 184 Q_OYPF_Q*L3; 67 Q_OYPF_Q*L4; 166 Q_OYPF_Q*L17
159 Q_OPFZ_Q*L7; 139 Q_OPFZ_Q*L14; 8 Q_OPFZ_Q*L17; 12 Q_OPFZ_Q*L24
34 Q_OPFZ_Q*L30; 14 Q_CFRY_Q*L17; 127 Q_DPFZ_YQ*L12; 135 Q_DPFZ_YQ*L24
1 Q_FZYP_Q*L4; 6 Q_FZYP_Q*L14; 7 Q_FZYP_Q*L30; 101 Q_FZYP_Q*DROP_OHP_ZQ
102 Q_FZYP_Q*DROP_OCR_YZ; 148 Q_FZYP_Q*LX_R
```

Upper bound: `-6138442871/1000000000`.

### Leaf TULppmmpmpppppp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR -HPQ +CQR +DQR +CFQ +ODY +OFZ +OFQ`.

```c1top-geometry
C OHF ZQ Y +FOY 72039/90700
P OHDFZ +ODZ
P OHDFQ +ODQ
P OHFYQ +OYQ
P OHFYR +OYR
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHQR -DHQ
P DOFPQ +DPQ
P DOFPR +DPR
P DOYQR -DYQ
P DOZQR -DZQ
P FOHYZ -FYZ
P FOHYQ -FYQ
P FOHPQ -FPQ
P FOHQR -FQR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPQ +YPQ
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHQR -PQR
P QOCYR -QYR
```

```c1top-bounds
```

Exclusion: `central_endpoint_top OF R ZQ`.

### Leaf TULppmmppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR +HPQ -CQR`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P COFQR +CFQ
P COPQR +CPQ
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYQ -PYQ
P QOCDR +QDR
P QOCPR +QPR
```

```c1top-bounds
```

Exclusion: `cluster OCR Z CRZ YQ`.

### Leaf TULppmmpppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR +HPQ +CQR -DQR`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHDPQ -FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCDQ -PCQ
P POCYQ -PYQ
P QOCYR -QYR
P QODPR +QPR
```

```c1top-bounds
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L1*L21; 8 L0*L3*L18; 55 L0*L3*DROP_OHP_Z; 24 L0*L7*TX_P_
34 L0*L7*LX_R; 10 L0*L9*L21; 36 L0*L17*L21; 83 L0*L17*TX_P_
13 L0*L21*L25; 24 L0*L25*TX_P_; 9 L0*L29*L29; 5 L0*L30*TX_P_
3 L1*L1*L17; 2 L1*L1*L31; 11 L1*L3*L22; 11 L1*L5*L20
33 L1*L6*L24; 3 L1*L6*L31; 42 L1*L7*L20; 9 L1*L9*L17
2 L1*L9*L20; 12 L1*L12*L24; 12 L1*L12*L27; 1 L1*L12*+OCF
10 L1*L16*L31; 3 L1*L18*L20; 10 L1*L24*L29; 52 L1*L24*DROP_OHQ_Z
2 L1*L24*LY_R; 57 L2*L2*TY_P_; 2 L2*L3*L34; 12 L2*L17*L24
4 L2*L17*L32; 9 L2*L20*L32; 17 L2*L22*TY_P_; 47 L2*L24*TY_P_
52 L2*L27*L34; 3 L2*L28*TY_P_; 12 L2*L30*TY_P_; 13 L2*TY_P_*DROP_OHQ_Z
2 L3*L3*L4; 3 L3*L3*L13; 11 L3*L3*L23; 16 L3*L4*L23
37 L3*L4*C_OHD_Z; 54 L3*L4*DROP_OHQ_Z; 1 L3*L7*L32; 5 L3*L8*L25
2 L3*L9*L21; 1 L3*L12*TX_P_; 40 L3*L15*L27; 63 L3*L16*L27
57 L3*L18*L27; 5 L3*L25*L35; 14 L3*L25*TX_P_; 9 L3*L28*L29
11 L3*L28*TX_P_; 1 L3*L36*TX_P_; 5 L4*L9*L24; 9 L4*L20*TY_P_
15 L4*L22*TX_P_; 22 L4*L23*L24; 31 L4*L24*L27; 7 L4*L27*L28
30 L4*L27*LX_R; 2 L4*L30*TX_P_; 7 L5*L5*L27; 1 L5*L12*L29
7 L5*L27*-OHD; 1 L6*L11*L29; 106 L6*L17*TY_P_; 22 L6*L22*TY_P_
15 L6*L27*DROP_OHP_Z; 17 L6*L27*TX_P_; 24 L6*L27*DROP_OCR_YZ; 31 L6*TY_P_*DROP_OHQ_Z
1 L7*L10*L28; 1 L7*L11*L34; 4 L7*L12*L18; 17 L7*L19*L29
3 L7*L27*+OCF; 7 L7*L35*TY_P_; 1 L8*L12*L27; 12 L8*L17*L28
9 L8*L17*DROP_OHQ_Z; 5 L8*L19*L20; 2 L8*L27*L34; 7 L8*L27*DROP_OCR_YZ
2 L8*L28*L29; 8 L9*L20*LY_R; 20 L9*L27*DROP_OHP_Z; 2 L9*L27*LX_R
1 L10*L12*L21; 1 L10*L12*L23; 2 L10*L27*L34; 6 L10*L27*C_OHD_Z
7 L10*L27*LY_R; 1 L10*TX_P_*TX_P_; 1 L11*L17*L19; 2 L11*L17*L27
2 L11*L25*L27; 11 L12*L17*L18; 3 L12*L18*L27; 3 L12*L18*LY_R
1 L12*L22*L29; 1 L12*L23*L35; 41 L12*L27*DROP_OHP_Z; 4 L13*L17*L28
4 L13*L21*L27; 22 L14*L21*L24; 2 L14*L26*L35; 3 L14*L29*DROP_OHQ_Z
1 L14*L31*LX_R; 29 L16*L27*L30; 38 L17*L17*TY_P_; 78 L17*L17*LY_R
13 L17*L18*L24; 11 L17*L22*L31; 2 L17*L24*L31; 65 L17*L24*TY_P_
1 L17*L25*L28; 18 L17*L28*+OCF; 3 L17*L28*LY_R; 26 L17*L29*TY_P_
11 L17*L33*TY_P_; 9 L17*L35*DROP_OHQ_Z; 38 L17*DROP_OHP_Z*TY_P_; 22 L18*L21*L27
57 L18*L27*L29; 1 L19*L23*L29; 67 L19*L27*DROP_OHP_Z; 1 L19*L35*TX_P_
9 L20*L27*L27; 8 L20*L30*LY_R; 13 L20*L31*TY_P_; 3 L20*L34*TX_P_
12 L21*L27*DROP_OHP_Z; 9 L22*L24*L27; 7 L22*L27*-OHD; 7 L23*L27*C_OHD_Z
11 L23*L28*L29; 3 L23*L30*TX_P_; 2 L24*L24*L31; 2 L24*L27*L35
16 L24*L27*TY_P_; 39 L24*L27*DROP_OHQ_Z; 2 L24*L31*LX_R; 2 L24*L35*TX_P_
16 L24*TY_P_*LY_R; 2 L25*L28*L28; 20 L27*L27*DROP_OHP_Z; 2 L27*L35*TX_P_
7 L27*L35*DROP_OCR_YZ; 7 L27*-OHD*LX_R; 67 L27*DROP_OHP_Z*TY_P_; 12 L27*DROP_OHP_Z*DROP_OHQ_Z
20 L27*TX_P_*LY_R; 22 L27*TY_P_*DROP_OHQ_Z; 39 L27*DROP_OHQ_Z*LX_R; 13 L30*TY_P_*LX_R
21 L31*TY_P_*LX_R; 1 L32*TX_P_*TX_P_; 3 KLOW*L12; 88 KLOW*L16
30 KLOW*L21; 21 KLOW*L26; 2 KLOW*L35; 60 KLOW*TY_P_
25 QUADQ*L12; 17 TOPCOUNT*L17; 22 +HCD*L27; 43 +HCF*L27
1 +OYZ*L24; 24 +OCY*L12; 5 -HCY*L1; 5 -HCY*L17
8 -HCY*L20; 3 -HCY*-OHD; 2 -HFY*L27; 3 -OHZ*L18
1 -OHZ*TX_P_; 57 +CDP*L2; 22 +CDP*L6; 14 +CDP*L8
11 +CDP*L13; 30 +CDP*L17; 83 +CDP*L20; 18 +CDP*L22
3 +CDP*L28; 96 +CDP*-OHD; 16 -DFP*L13; 30 -DFP*DROP_OHP_Z
31 -DFP*DROP_OHQ_Z; 13 -DFP*DROP_OCR_YZ; 105 -DFP*LY_R; 10 +ODP*L12
4 -HFQ*L30; 25 -CYQ*L12; 50 +HFR*L16; 60 +HFR*L20
19 +HFR*L24; 5 +HFR*L26; 40 +HFR*TY_P_; 5 +CYZ*L1
7 +CYZ*L17; 23 +CYZ*L20; 5 +CYZ*-OHD; 1 +CYZ*LX_R
2 +OYP*L2; 3 +OYP*L6; 4 +OYP*L16; 9 +OYP*DROP_OHQ_Z
1 -OZP*L3; 41 -OZQ*L2; 49 -OZQ*L17; 22 -OZQ*L24
23 -OZQ*L31; 59 -OZQ*DROP_OHP_Z; 46 +OZR*L8; 45 +OZR*L10
45 +OZR*L35; 20 +OZR*DROP_OHP_Z; 31 +HPQ*L3; 161 +HPQ*L17
69 +HPQ*DROP_OHP_Z; 99 +HPQ*TX_P_; 120 +HPQ*LX_R; 5 +CQR*L2
27 +CQR*L5; 55 +CQR*L16; 6 +CQR*L31; 14 +CQR*DROP_OHP_Z
25 -DQR*L1; 3 -DQR*L3; 5 -DQR*L4; 13 -DQR*L9
13 -DQR*L14; 2 -DQR*L19; 13 -DQR*L36; 15 -DQR*-OHD
167 -DQR*DROP_OHP_Z; 3 +HDQ*L18; 3 +DPQ*L4; 21 -FPQ*L25
1 -FQR*L9; 16 -FQR*L19; 11 -FQR*L28; 37 -FQR*TY_P_
6 +YQR*L2; 47 -PQR*L6; 8 -PQR*L8; 26 -PQR*L29
1 C_OHQ_Z*L1; 6 C_OHQ_Z*L12; 24 C_OPR_ZQ*L0; 18 C_OQR_Z*L5
19 C_OQR_Z*TY_P_; 2 C_HCZ_Y*L2; 12 C_HCZ_Y*L25; 12 C_HCZ_Y*L26
44 C_HCZ_Y*DROP_OHQ_Z; 6 C_HDR_Q*L4; 2 C_HPR_Q*L4; 85 C_HPR_Q*L17
45 C_HPR_Q*L20; 11 C_CDR_Q*L3; 21 C_CDR_Q*TX_P_; 6 TPY_P_*L10
30 TPY_P_*L17; 21 TPY_P_*L25; 40 Q_ODPH_Z*L27; 7 Q_OQRH_Z*L2
10 Q_OQRH_Z*L27; 5 Q_OCDP_Y*L27; 21 Q_OPFR_ZQ*L0; 53 Q_HDPR_Q*L20
81 Q_HPFR_Q*L17; 19 Q_HPFR_Q*L25; 16 Q_HPFR_Q*L29; 13 Q_CDPZ_Y*L24
40 Q_CDPR_Q*L6; 45 Q_CPFR_Q*L0; 7 SP_CPRZ_YQ_PZ-1*L16; 2 Q_FRYP_Q*TX_P_
```

Upper bound: `-775582107/250000000`.

### Leaf TULppmmppppm

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR +HPQ +CQR +DQR -CFQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FOHCQ +FOQ
P FOCYQ +FYQ
P FODPQ -FPQ
P FODQR -FQR
P FHCZQ +FZQ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCDQ -PCQ
P POCYQ -PYQ
```

```c1top-bounds
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 27/50 1
q 279/1000 1
l 63/200 907/1000
m 279/1000 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L3*L4; 4 L0*L17*L18; 3 L0*L18*L21; 3 L0*L20*TY_P_
30 L0*TX_P_*TX_P_; 26 L1*L2*L16; 8 L1*L2*DROP_OHQ_Z; 16 L1*L6*L8
24 L1*L6*L21; 8 L1*L6*L27; 16 L1*L6*L31; 18 L1*L17*L24
17 L1*L24*TX_P_; 28 L1*L24*DROP_OHQ_Z; 10 L2*L5*DROP_OHP_Z; 8 L2*L5*DROP_OHQ_Z
55 L2*L16*L23; 18 L2*L16*L27; 1 L2*L17*L19; 7 L2*L18*L19
8 L2*L18*L27; 7 L2*L18*TY_P_; 16 L2*TX_P_*LY_R; 60 L2*TY_P_*DROP_OHQ_Z
8 L2*TY_P_*LY_R; 8 L3*L4*L6; 36 L3*L4*L16; 2 L3*L4*L23
2 L3*L17*LY_R; 7 L3*L18*L24; 19 L4*L6*TX_P_; 4 L4*L6*LX_R
3 L4*L7*L19; 7 L4*L21*TX_P_; 3 L4*L21*LX_R; 14 L5*L16*L17
2 L5*L23*L29; 26 L6*L6*LY_R; 12 L6*L17*L24; 4 L6*L18*L23
14 L6*L18*LX_R; 6 L6*L18*LY_R; 5 L6*L22*TY_P_; 8 L6*L27*-OHD
5 L7*L7*L17; 12 L7*L17*L24; 1 L7*L18*L27; 9 L7*L19*L29
7 L7*L27*DROP_OHP_Z; 8 L16*L19*L27; 4 L16*L21*L27; 4 L16*L27*TY_P_
9 L17*L17*L21; 42 L17*L19*DROP_OHQ_Z; 9 L17*L21*DROP_OHP_Z; 2 L17*L29*-OHD
1 L17*+OCF*TY_P_; 26 L17*TY_P_*DROP_OHQ_Z; 4 L17*TY_P_*LY_R; 1 L18*L21*L27
13 L18*L27*C_OHD_Z; 1 L19*L24*L24; 1 L22*L27*TX_P_; 15 L23*L24*TX_P_
16 L23*TX_P_*TX_P_; 3 L24*L24*L27; 1 L24*L24*TY_P_; 3 L24*L24*LY_R
5 L24*L27*C_OCF_Y; 39 L24*L27*DROP_OHQ_Z; 5 L24*L29*LY_R; 11 L24*TY_P_*DROP_OHQ_Z
39 L27*DROP_OHQ_Z*LX_R; 28 KLOW*L16; 5 KLOW*L25; 18 KLOW*DROP_OHP_Z
8 KLOW*DROP_OHQ_Z; 80 +CDP*DROP_OHQ_Z; 10 -DFP*L17; 44 +DFQ*L16
18 +DFQ*DROP_OHP_Z; 19 +DFQ*TX_P_; 4 +DFQ*LX_R; 1 -OHR*L29
5 +HFR*L6; 3 +HPQ*L4; 11 +HPQ*L17; 14 +HPQ*DROP_OHP_Z
24 +HPQ*TX_P_; 34 -CFQ*L16; 21 -CFQ*DROP_OHP_Z; 20 -CFQ*TX_P_
3 +ODQ*L17; 4 +HQR*L17; 3 +HQR*L24; 11 +DPQ*L17
9 -FPQ*L4; 11 -FPQ*L6; 1 -FPQ*L27; 7 -FPQ*L29
13 -FPQ*C_OCF_Y; 11 -FPQ*LX_R; 4 -FQR*L6; 2 -FQR*L24
7 +CPQ*L4; 10 C_OFP_Q*L17; 11 C_CDF_Q*L21; 2 C_CDF_Q*L22
1 Q_OQFH_Z*L24; 7 Q_HCPF_Q*L24; 16 Q_HDFR_Q*L2; 31 Q_HPFR_Q*L7
3 Q_HPFR_Q*TX_P_; 31 Q_HPFR_Q*DROP_OHQ_Z; 14 Q_CDPF_Q*L6; 31 Q_CDPF_Q*L16
14 Q_CDPF_Q*DROP_OHP_Z; 1 Q_CDPF_Q*DROP_OCR_YZ; 10 Q_CDPF_Q*LX_R; 6 Q_CDPF_Q*LY_R
10 Q_DPFR_Q*L17; 3 Q_DPFR_Q*L20; 1 Q_DPFR_Q*L24; 9 Q_DPFR_Q*DROP_OHQ_Z
```

Upper bound: `-976857319/500000000`.

### Leaf TULppmmppppp

Assumptions: `+CYZ +OYP -OZP -OZQ +OZR +HPQ +CQR +DQR +CFQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYPQ +OYQ
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPQ +CPQ
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHCPQ -FPQ
P FHCQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ -PZQ
P POCYQ -PYQ
P QOCYR -QYR
```

```c1top-bounds
T OCP Y 9 lower 279/1000
T OHQ Z 10 lower 93/295
T OCQ Y 11 lower 279/1000
```

```c1top-box
h 347/500 177/200
c 7841/10000 1
d 93/1000 4173/5000
f 4379/10000 359/400
u 197/625 7899/10000
v 93/1000 513/1000
z 21/200 5797/10000
w 93/1000 699/1000
p 1351/2500 1
q 279/1000 1
l 197/625 907/1000
m 279/1000 907/1000
r 21/200 371/625
t 8433/10000 1
```

```c1top-sum
878 L0*L0*L3; 490 L0*L1*L17; 125 L0*L3*L3; 2636 L0*L3*L4
1555 L0*L3*L19; 4750 L0*L3*TX_P_; 1065 L0*L4*L30; 160 L0*L8*TX_P_
2215 L0*L12*LY_R; 929 L0*L17*L21; 102 L0*L17*L35; 239 L0*L19*TX_P_
1568 L0*L20*L30; 2522 L0*L21*L29; 2918 L0*TX_P_*TX_P_; 844 L1*L1*L31
359 L1*L2*L31; 5257 L1*L2*TY_P_; 1983 L1*L7*L17; 266 L1*L8*L23
407 L1*L8*L27; 515 L1*L12*L12; 1363 L1*L12*L21; 491 L1*L12*L32
1259 L1*L12*L35; 349 L1*L14*L21; 5603 L1*L17*L17; 6823 L1*L17*L24
553 L1*L17*L30; 316 L1*L17*L34; 306 L1*L17*TY_P_; 2533 L1*L18*L24
1964 L1*L20*L24; 1321 L1*L20*L31; 790 L1*L22*L24; 12 L1*L23*L30
123 L1*L24*L24; 24 L1*L24*L29; 2037 L1*L24*L30; 551 L1*L24*TY_P_
1899 L1*L24*LY_R; 139 L1*L27*DROP_OHP_Z; 1613 L1*L27*TY_P_; 502 L1*L27*DROP_OHQ_Z
3629 L2*L10*L21; 696 L2*L10*L27; 1489 L2*L14*TY_P_; 2840 L2*L17*TY_P_
3730 L3*L3*L4; 310 L3*L3*L19; 912 L3*L3*L32; 56 L3*L3*L34
3232 L3*L4*L6; 3420 L3*L4*L8; 240 L3*L4*L20; 1257 L3*L4*L27
443 L3*L4*L28; 113 L3*L4*L32; 1130 L3*L4*L34; 948 L3*L4*TY_P_
718 L3*L7*L23; 160 L3*L7*L32; 278 L3*L10*L23; 422 L3*L12*L27
1277 L3*L14*L17; 1086 L3*L14*L23; 810 L3*L17*L32; 352 L3*L19*L19
453 L3*L21*L27; 1671 L3*L23*L29; 240 L3*L23*TX_P_; 422 L3*L27*L36
4245 L4*L4*TX_P_; 146 L4*L6*L23; 2341 L4*L6*L27; 258 L4*L6*L32
1701 L4*L6*TX_P_; 500 L4*L8*TX_P_; 1246 L4*L14*TX_P_; 341 L4*L16*TX_P_
2581 L4*L19*TX_P_; 134 L4*L20*TX_P_; 744 L4*L27*L30; 51 L4*L30*TX_P_
497 L5*L17*L17; 819 L5*L17*L24; 2243 L5*L17*TY_P_; 340 L6*L11*L27
484 L6*L12*L27; 1064 L6*L17*L23; 6546 L6*L17*L27; 179 L6*L17*L32
131 L6*L22*L27; 21 L6*L27*L29; 1209 L6*L27*C_OHD_Z; 1044 L6*L27*DROP_OHQ_Z
93 L6*L27*DROP_OCR_YZ; 1824 L7*L7*L19; 484 L7*L14*L24; 71 L7*L19*L23
472 L7*L23*L30; 500 L7*L27*TY_P_; 359 L8*L10*L27; 202 L8*L16*L27
699 L8*L17*L19; 278 L8*L19*L23; 466 L8*L27*L27; 3 L9*L14*L27
3 L9*L27*L36; 2861 L10*L12*L27; 348 L10*L14*L17; 1785 L10*L17*L21
781 L11*L17*L17; 171 L11*L17*L23; 622 L12*L14*L21; 3035 L12*L14*L31
1785 L12*L17*L22; 1141 L12*L17*L32; 1166 L12*L18*L27; 3415 L12*L20*L27
1610 L12*L22*L29; 2972 L12*L22*L31; 3331 L12*L27*DROP_OHQ_Z; 2542 L13*L27*DROP_OHQ_Z
707 L13*L27*LX_R; 1236 L14*L17*L22; 731 L14*L17*L27; 845 L14*L20*L27
3 L14*L24*L29; 202 L14*L24*TX_P_; 744 L14*L24*TY_P_; 309 L14*L27*DROP_OHP_Z
1613 L14*L27*TY_P_; 64 L16*L17*L27; 232 L16*L27*L27; 2367 L16*L27*TY_P_
2367 L17*L18*L27; 3717 L17*L19*L29; 240 L17*L22*L24; 64 L17*L22*TY_P_
107 L17*L23*L32; 202 L17*L27*L30; 1141 L17*L34*L35; 64 L19*L23*TX_P_
147 L19*L24*L27; 82 L19*L35*TX_P_; 453 L21*L27*L29; 240 L21*L27*TX_P_
17 L23*L27*L29; 308 L23*L27*L33; 278 L23*L29*L32; 1785 L23*L30*TX_P_
306 L23*L34*TX_P_; 4384 L24*L27*L27; 1803 L24*L27*L30; 379 L24*L27*TY_P_
1380 L24*L27*DROP_OCR_YZ; 2565 L24*L27*LY_R; 440 L27*L27*LX_R; 48 L27*L28*L29
147 L27*L28*LX_R; 359 L27*L30*L32; 466 L27*L30*DROP_OCR_YZ; 1803 L27*L30*LX_R
1613 L27*L34*TY_P_; 466 L27*L36*LX_R; 64 L27*TX_P_*TX_P_; 82 L31*TY_P_*TY_P_
3185 KLOW*L3; 112 KLOW*L6; 1070 KLOW*L8; 101 KLOW*L21
1022 KLOW*L30; 878 KLOW*L32; 2716 KLOW*TY_P_; 139 QUADP*L27
56 +OYZ*L2; 359 +OYZ*L4; 295 +OYZ*L17; 269 +OYZ*L21
1044 -HCY*L1; 815 -HCY*L2; 1022 -HCY*L12; 1468 -HCY*L14
468 -HCY*L16; 1583 -HCY*L18; 2575 -HCY*L20; 278 -HCY*L22
1479 -HCY*L24; 249 -HCY*L28; 1637 -HCY*L29; 1476 -HCY*LX_R
48 -HCY*LY_R; 1433 +CDY*L0; 3420 +CDY*L3; 91 +CDY*L19
744 +CDY*L27; 321 -OHZ*L4; 404 -OHZ*L12; 2920 -OHZ*L27
67 -OHZ*TX_P_; 310 +CDP*L3; 3 +CDP*L11; 9860 +CDP*L14
9860 +CDP*L15; 1744 +CDP*L19; 22 +CDP*L23; 561 +CDP*L27
598 +CDP*-OHD; 82 +CDP*DROP_OHP_Z; 794 +CDP*TX_P_; 1473 +CDP*TY_P_
240 +CDP*DROP_OHQ_Z; 2715 -DFP*L2; 4245 -DFP*L4; 3013 -DFP*L6
258 -DFP*L10; 500 -DFP*L12; 1246 -DFP*L14; 453 -DFP*L17
67 -DFP*L19; 86 -DFP*L22; 1312 -DFP*L29; 552 -DFP*L30
134 -DFP*DROP_OHQ_Z; 3161 -DFP*LY_R; 422 -CZP*L27; 326 +OCQ*L27
82 +DFQ*L1; 2013 -CYQ*L12; 611 -OHR*L4; 473 -OHR*L21
4862 +HFR*L2; 317 +HFR*L6; 2594 +HFR*TY_P_; 744 +HZR*L5
67 +HZR*L7; 126 +HZR*L8; 282 +HZR*L10; 728 +HZR*L17
424 +HZR*L18; 486 +HZR*L22; 123 +HZR*L24; 3518 +HZR*L27
111 +HZR*L30; 699 +HZR*DROP_OHQ_Z; 2705 +HZR*LY_R; 1468 +CYZ*L0
56 +CYZ*L3; 3035 +CYZ*L12; 2711 +CYZ*L17; 1130 +CYZ*L18
3 +CYZ*L24; 3989 +CYZ*DROP_OHP_Z; 359 +CYZ*TY_P_; 6205 +CYZ*DROP_OHQ_Z
872 +OYP*L0; 179 +OYP*L6; 781 +OYP*L17; 1944 +OYP*L20
278 +OYP*L23; 173 +OYP*L28; 538 +OYP*L34; 951 +OYP*L36
82 +OYP*TY_P_; 269 -OZQ*L2; 3535 -OZQ*L12; 2912 -OZQ*L14
930 -OZQ*L18; 4205 -OZQ*L24; 5936 -OZQ*L31; 2912 -OZQ*L36
159 -OZQ*DROP_OHP_Z; 498 -OZQ*LY_R; 2239 +OZR*L0; 234 +OZR*L9
2938 +OZR*L10; 111 +OZR*L12; 308 +OZR*L16; 320 +OZR*L18
3506 +OZR*L20; 667 +OZR*L22; 1050 +OZR*L24; 622 +OZR*TX_P_
82 +HPQ*L4; 313 +HPQ*L9; 903 +HPQ*L12; 150 +HPQ*L14
1030 +HPQ*L17; 1368 +HPQ*L29; 684 +HPQ*DROP_OHP_Z; 1154 +HPQ*TX_P_
240 +DQR*L17; 1671 +CFQ*L2; 650 +CFQ*L6; 278 +CFQ*L10
2014 +CFQ*L12; 1086 +CFQ*L14; 22 +CFQ*TY_P_; 232 +DPR*L27
82 -FPQ*L4; 649 -FPQ*L9; 1854 -FPQ*L12; 780 -FPQ*L15
158 -FPQ*L16; 1609 -FPQ*L31; 650 -FPQ*TX_P_; 502 -FQR*L0
347 -FQR*L27; 159 -YZQ*L17; 347 +ZQR*L27; 951 +YPQ*L12
2602 C_HFP_Q*TX_P_; 4841 Q_HPFR_Q*L3; 2175 Q_HPFR_Q*L4; 274 Q_HPFR_Q*L7
6095 Q_HPFR_Q*L17; 67 Q_HPFR_Q*L18; 1738 Q_HPFR_Q*L20; 199 Q_HPFR_Q*L23
1803 Q_HPFR_Q*L30; 340 Q_HPFR_Q*L32; 466 Q_HPFR_Q*L34; 579 Q_DPFR_Q*L17
```

Upper bound: `-1519165460789/500000000000`.

### Leaf TULppmpm

Assumptions: `+CYZ +OYP -OZP +OZQ -HPQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDZQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYZQ +OYQ
P OHZQR +OZR
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHDQ +ZDQ
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P POHCQ -PCQ
P POHYQ -PYQ
P POHQR -PQR
P QOCDY -QDY
```

```c1top-bounds
T OHP ZQ 8 lower 694/885
T OCP Y 9 lower 279/1000
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 98/125 1
q 279/1000 1
l 21/200 907/1000
m 347/500 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L1*TX_P_; 71 L0*L3*L4; 26 L0*L3*L30; 27 L0*L3*TX_P_
128 L0*L8*L27; 10 L0*L24*L31; 48 L0*L30*L30; 71 L1*L1*L3
29 L1*L1*C_OHD_Z; 13 L1*L3*L12; 91 L1*L3*L17; 21 L1*L3*L20
12 L1*L3*L29; 23 L1*L4*L6; 202 L1*L4*L24; 202 L1*L5*L24
174 L1*L7*L17; 30 L1*L7*L23; 7 L1*L9*L17; 10 L1*L9*L19
40 L1*L10*L17; 36 L1*L14*L17; 205 L1*L14*L24; 174 L1*L17*L24
150 L1*L18*L24; 83 L1*L19*L31; 1 L1*L21*L21; 11 L1*L21*L30
11 L1*L21*L31; 52 L1*L22*L31; 202 L1*L24*L27; 26 L1*L24*L33
38 L1*L24*-OHD; 290 L1*L27*L27; 32 L1*L30*L35; 29 L1*LY_R*LY_R
109 L2*L3*L14; 73 L2*L17*TY_P_; 39 L2*L27*L30; 156 L2*LY_R*LY_R
113 L3*L3*L4; 11 L3*L3*L11; 58 L3*L4*L5; 45 L3*L4*L6
1 L3*L4*L10; 74 L3*L4*L19; 69 L3*L4*L22; 82 L3*L4*L27
78 L3*L4*DROP_OHP_ZQ; 96 L3*L8*L10; 62 L3*L8*L27; 2 L3*L10*L30
8 L3*L10*L32; 31 L3*L12*L22; 135 L3*L14*L17; 4 L3*L14*L20
33 L3*L14*L22; 8 L3*L15*L35; 102 L3*L16*L19; 53 L3*L18*L27
143 L3*L19*L19; 69 L3*L19*L22; 19 L3*L22*L35; 68 L3*L23*L27
79 L3*L23*L30; 67 L3*L26*L27; 68 L3*L27*L35; 65 L3*L30*L34
4 L3*L32*TX_P_; 64 L4*L4*TX_P_; 21 L4*L7*L24; 83 L4*L19*TX_P_
192 L4*L23*L27; 142 L4*TX_P_*LY_R; 39 L5*L5*L17; 1 L5*L10*L17
191 L5*L12*L27; 48 L5*L17*L19; 272 L5*L17*L23; 5 L5*L17*L27
192 L5*L23*L27; 11 L5*L28*L29; 80 L6*L17*TY_P_; 126 L6*L18*L27
29 L6*L22*L27; 26 L6*L25*L27; 207 L6*L27*L27; 16 L6*L27*L29
81 L6*L27*C_OHD_Z; 12 L7*L10*L19; 22 L7*L17*L22; 10 L7*L19*+OCF
16 L7*L19*TX_P_; 205 L7*L24*LY_R; 45 L7*L35*LY_R; 40 L8*L19*L27
18 L8*L19*L30; 62 L8*L20*L27; 20 L8*L27*TX_P_; 21 L9*L19*L22
4 L9*TX_P_*LY_R; 8 L10*L10*L17; 113 L10*L12*L17; 235 L10*L12*L27
62 L10*L17*L31; 189 L10*L20*L27; 8 L11*L19*L30; 113 L12*L14*L31
49 L12*L17*L23; 44 L12*L17*L34; 400 L12*L18*L27; 39 L12*L19*L24
9 L12*L20*L23; 312 L12*L27*L32; 18 L12*L27*LX_R; 23 L12*L29*TY_P_
6 L12*L29*DROP_OCR_YZ; 63 L13*L17*LY_R; 131 L13*L19*LY_R; 18 L13*L24*LY_R
191 L13*L27*TY_P_; 12 L14*L17*L17; 16 L14*L17*L20; 12 L14*L17*L23
8 L14*L17*L35; 113 L14*L27*LX_R; 77 L14*L31*LY_R; 14 L15*L17*L27
33 L16*L22*L30; 33 L16*L22*L35; 53 L16*L27*L32; 335 L16*L27*LY_R
12 L17*L19*L28; 12 L17*L19*L30; 12 L17*L19*L35; 95 L17*L22*L24
172 L17*L22*L27; 12 L17*L23*TY_P_; 63 L17*L27*C_OCF_Y; 137 L17*L27*DROP_OCR_YZ
47 L17*L28*L28; 2 L19*L21*L29; 172 L19*L22*L24; 12 L19*L22*DROP_OHP_ZQ
12 L19*L23*L30; 44 L19*L30*L30; 93 L19*L30*LY_R; 12 L19*L32*TX_P_
12 L20*L35*LY_R; 63 L21*L27*L30; 95 L21*L27*DROP_OHP_ZQ; 205 L22*L30*LY_R
68 L22*L31*LY_R; 205 L24*L24*L27; 205 L24*L24*LY_R; 17 L24*L27*-OHD
26 L24*L27*DROP_OHP_ZQ; 24 L26*L30*TX_P_; 319 L27*L27*C_OHD_Z; 75 L27*L27*C_OCF_Y
63 L27*L29*DROP_OHP_ZQ; 113 L27*L34*LX_R; 58 L27*-OHD*C_OHD_Z; 45 L29*L30*LY_R
198 TX_P_*LY_R*LY_R; 11 TOPCOUNT*L24; 5 QCENT*L27; 5 +CDF*L3
56 +OYZ*L9; 10 +OYZ*L10; 89 +OYZ*L17; 1 +OYZ*L19
233 +OYZ*L20; 183 +OYZ*L31; 22 -HYZ*L3; 85 -HCY*L1
12 -HCY*L3; 4 -HCY*L7; 99 -HCY*L8; 45 -HCY*L11
202 -HCY*L13; 45 -HCY*L14; 100 -HCY*L16; 121 -HCY*L21
9 -HCY*DROP_OCR_YZ; 41 -OHZ*L17; 8 -HFP*L4; 162 +CDP*L3
46 +CDP*L6; 1 +CDP*L10; 23 +CDP*L12; 213 +CDP*L19
245 +CDP*L22; 82 +CDP*-OHD; 162 +CDP*+OCF; 29 +CDP*TX_P_
69 +CDP*TY_P_; 75 -DFP*L4; 172 -DFP*L23; 10 -DFP*L24
23 -DFP*L30; 23 -DFP*L31; 4 -DFP*DROP_OHP_ZQ; 137 -DFP*LY_R
1 +HCQ*L7; 11 +HCQ*L12; 2 +HCQ*L17; 85 +HYQ*L0
77 +HYQ*L10; 8 +HYQ*L12; 137 +HYQ*L27; 18 +HYQ*L31
312 +HZQ*L27; 298 +HCR*L27; 198 +HFR*L1; 16 +HFR*L2
150 +HFR*L18; 208 +HFR*L21; 30 +HFR*L23; 205 +HFR*L24
45 +HFR*L30; 45 +HFR*L35; 33 +HFR*DROP_OHP_ZQ; 379 +OQR*L0
20 +OQR*L10; 63 +OQR*L12; 16 -FPR*L7; 208 -FPR*L20
172 -FPR*L22; 26 -FPR*L25; 189 +CYZ*L3; 196 +CYZ*L8
1 +CYZ*L18; 103 +CYZ*L21; 43 +CYZ*L22; 8 +CYZ*L27
53 +CYZ*L32; 189 +CYZ*+OCF; 158 +CYZ*DROP_OHP_ZQ; 85 +CYZ*LY_R
472 -OZP*L1; 29 -OZP*L3; 69 -OZP*L9; 12 -OZP*L17
350 -OZP*L20; 175 -OZP*L22; 39 -OZP*L25; 14 -OZP*L26
44 -OZP*L33; 8 -OZP*L35; 250 -OZP*C_OHD_Z; 423 +OZQ*L8
449 +OZQ*L9; 187 +OZQ*L18; 9 +OZQ*L20; 113 +OZQ*L30
125 +OZQ*-OHD; 333 +OZQ*DROP_OHP_ZQ; 517 +OZQ*LY_R; 71 -HPQ*L3
61 -HPQ*L4; 61 -HPQ*L5; 144 -HPQ*L8; 125 -HPQ*L12
187 -HPQ*L14; 2 -HPQ*L20; 1 -HPQ*L25; 40 -HPQ*L35
15 -HPQ*DROP_OCR_YZ; 207 -HPQ*LX_R; 151 -HPQ*LY_R; 39 +OZR*L17
385 +HQR*L3; 10 +HQR*L8; 45 +HQR*L10; 205 +HQR*L14
236 +HQR*-OHD; 385 +HQR*+OCF; 1 +HQR*DROP_OHP_ZQ; 30 -FPQ*L3
2 -FPQ*L21; 114 -FPQ*L27; 112 -FQR*L17; 43 -YZQ*L35
99 +ZPQ*L3; 120 C_OCQ_YZ*L0; 30 C_OCQ_YZ*L6; 55 C_OCQ_YZ*L9
76 C_OCQ_YZ*L14; 62 C_OCQ_YZ*L35; 177 C_OCQ_YZ*TY_P_; 33 C_OYQ_Z*L19
96 C_OYQ_Z*L30; 35 C_OYQ_Z*L35; 43 C_OYQ_Z*L36; 151 C_OPQ_Z*L1
42 C_OPQ_Z*L30; 91 C_HCZ_Y*L16; 1 C_HCZ_Y*L19; 65 C_HCZ_Y*L30
8 TPX_P_*L23; 67 TPY_P_*L17; 77 Q_OCDH_YZ*L27; 53 SP_OCPH_YQ_OP1*L27
9 Q_OCFR_YZ*L27; 69 Q_OYPQ_Z*L30; 8 Q_OYPQ_Z*L35; 108 Q_HZCD_Y*L3
113 SP_HZCP_YQ_ZP1*L12
```

Upper bound: `-4712788343/1000000000`.

### Leaf TULppmpp

Assumptions: `+CYZ +OYP -OZP +OZQ +HPQ`.

```c1top-geometry
P OHDZP +ODZ
P OHDZQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHYZQ +OYQ
P OHZQR +OZR
P HODPQ +HDQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOHZQ -DZQ
P DOFPQ +DPQ
P DOFPR +DPR
P DHCYQ -DYQ
P FHDPQ -FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P POCDQ -PCQ
P POCYQ -PYQ
```

```c1top-bounds
T OCP Y 9 lower 279/1000
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 27/50 1
q 279/1000 1
l 21/200 907/1000
m 347/500 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
13 L0*L0*L7; 28 L0*L3*L3; 113 L0*L3*L4; 253 L0*L3*L19
11 L0*L3*L21; 47 L0*L3*TX_P_; 83 L0*L12*L29; 15 L0*L17*L31
7 L0*L22*TX_P_; 86 L0*L27*L29; 36 L0*L27*L36; 55 L0*L30*TX_P_
142 L0*TX_P_*TX_P_; 232 L1*L1*L24; 1 L1*L2*L14; 74 L1*L2*L31
61 L1*L2*TY_P_; 220 L1*L6*L12; 24 L1*L6*L23; 97 L1*L9*L24
51 L1*L16*L27; 449 L1*L17*L17; 109 L1*L17*TY_P_; 16 L1*L19*L27
51 L1*L24*TX_P_; 32 L1*L27*L35; 23 L1*L27*C_OCF_Y; 96 L1*L31*TX_P_
16 L1*TY_P_*LY_R; 18 L2*L3*L10; 56 L2*L3*L14; 380 L2*L6*TY_P_
209 L2*L12*TY_P_; 367 L2*L17*TY_P_; 29 L2*L24*L36; 56 L2*L27*LX_R
239 L2*L31*TY_P_; 18 L2*TY_P_*TY_P_; 143 L3*L3*L4; 5 L3*L4*L24
135 L3*L4*L27; 39 L3*L4*L28; 71 L3*L4*L30; 100 L3*L4*-OHD
23 L3*L8*L32; 16 L3*L10*L20; 7 L3*L15*L27; 1 L3*L15*L34
66 L3*L19*L19; 52 L3*L19*L30; 138 L3*L19*TX_P_; 3 L3*L22*L32
44 L3*L30*L32; 155 L3*L30*L34; 279 L4*L4*TX_P_; 334 L4*L6*L27
111 L4*L6*TX_P_; 157 L4*L19*TX_P_; 3 L4*L22*TX_P_; 1 L4*L23*L24
214 L4*L24*LY_R; 16 L4*L27*C_OHD_Z; 19 L4*L30*TX_P_; 40 L5*L12*L17
7 L5*L27*L30; 30 L6*L9*L27; 115 L6*L14*L27; 453 L6*L17*L27
232 L6*L17*TY_P_; 26 L6*L20*L27; 82 L6*L27*L27; 79 L6*L27*L36
104 L6*L27*TX_P_; 27 L6*L27*LX_R; 43 L7*L7*L7; 119 L7*L17*L19
26 L7*L23*L24; 6 L7*L23*TX_P_; 6 L8*L19*L23; 5 L8*L22*L35
67 L8*L23*L30; 27 L8*L23*TX_P_; 188 L8*L30*L32; 41 L9*L10*L17
5 L9*L10*L23; 70 L9*L20*L27; 43 L10*L14*L27; 8 L10*L17*L24
32 L10*L27*L27; 7 L10*L27*L36; 32 L10*L27*LY_R; 188 L10*L31*L31
6 L11*L17*L23; 3 L11*L27*C_OCF_Y; 10 L12*L14*L21; 587 L12*L14*L31
11 L12*L17*L27; 140 L12*L17*L32; 98 L12*L17*TY_P_; 81 L12*L20*L27
164 L12*L23*L29; 10 L12*L23*L30; 5 L12*L23*L31; 11 L12*L23*L35
84 L12*L23*TX_P_; 35 L12*L24*L27; 1 L12*L24*L36; 7 L12*L27*TY_P_
94 L12*L30*L32; 235 L12*L31*TY_P_; 1 L13*L13*L24; 1 L13*L15*L24
23 L13*L18*L24; 1 L13*L24*TY_P_; 8 L14*L14*L31; 8 L14*L17*L27
14 L14*L17*L29; 15 L14*L17*L31; 1 L14*L17*LY_R; 155 L14*L20*L31
11 L14*L20*L35; 1 L14*L24*LY_R; 36 L14*L27*L32; 7 L14*L31*LY_R
26 L16*L23*L24; 82 L17*L17*TY_P_; 275 L17*L19*L29; 43 L17*L21*L27
27 L17*L23*L30; 21 L17*L23*L33; 8 L17*L23*LY_R; 437 L17*L24*L27
437 L17*L24*LY_R; 22 L17*L27*L29; 44 L17*L28*L29; 106 L17*L28*TY_P_
78 L17*L31*TY_P_; 20 L17*L34*TX_P_; 1 L18*L23*L25; 192 L18*L24*L27
16 L18*L27*L27; 40 L19*L30*L30; 78 L19*L30*TX_P_; 82 L19*TX_P_*TX_P_
16 L19*LY_R*LY_R; 7 L21*L27*L28; 70 L21*L27*DROP_OHP_Z; 73 L21*L30*L32
102 L22*L26*L27; 9 L22*L27*TX_P_; 70 L23*L24*L30; 102 L23*L27*DROP_OCR_YZ
21 L23*L29*TX_P_; 24 L24*L27*L28; 35 L24*L27*L36; 95 L24*L27*+OCF
27 L24*L29*DROP_OCR_YZ; 192 L24*TY_P_*LY_R; 36 L27*L27*L33; 27 L27*L29*TY_P_
14 L27*L30*TX_P_; 35 L27*L31*C_OHD_Z; 22 L27*L31*TX_P_; 36 L27*L33*LY_R
36 L27*L34*LX_R; 24 L27*C_OHD_Z*LX_R; 94 L30*L30*L34; 87 KLOW*L3
40 KLOW*L20; 185 KLOW*TY_P_; 124 +OCD*L3; 1 +OYZ*L4
105 +OYZ*L13; 141 +OYZ*L14; 140 +OYZ*L15; 78 +OYZ*L18
179 +OYZ*L20; 107 +OYZ*L24; 425 +OYZ*L31; 67 +OYZ*+OCF
33 +OYZ*TX_P_; 76 +OYZ*LX_R; 77 -HCY*L7; 7 -HCY*L14
96 -HCY*L17; 30 -HCY*L21; 3 -HCY*L22; 282 -HCY*L30
134 -HCY*C_OCF_Y; 212 -HCY*DROP_OHP_Z; 10 -HCY*DROP_OCR_YZ; 34 -HCY*LX_R
19 +CDY*L3; 235 +CDY*L12; 109 +CDY*L16; 3 +CDY*L24
1 +CDZ*L24; 51 +HCP*L27; 319 +CDP*L0; 52 +CDP*L2
1 +CDP*L6; 138 +CDP*L12; 32 +CDP*L17; 701 +CDP*L18
749 +CDP*L19; 86 +CDP*L27; 58 +CDP*L28; 187 +CDP*L31
175 -DFP*L2; 279 -DFP*L4; 262 -DFP*L6; 50 -DFP*L17
4 -DFP*L19; 3 -DFP*L22; 30 -DFP*L26; 152 -DFP*L29
19 -DFP*L30; 189 -DFP*LY_R; 57 +ODP*L27; 27 -CFP*L4
7 -CYP*L27; 3 -DYP*L24; 43 -HFQ*L4; 27 -HFQ*L8
248 -HFQ*L12; 44 -HFQ*L19; 21 -HFQ*+OCF; 197 -HFQ*TX_P_
171 -HFQ*LX_R; 2 +DFQ*L1; 24 +DFQ*L27; 7 +HYQ*L27
219 -OHR*L1; 55 -OHR*L9; 15 -OHR*L23; 16 -OHR*L30
39 +HFR*L2; 116 +HFR*L6; 16 +HFR*L22; 81 +HFR*L31
145 +HFR*TY_P_; 13 +HFR*LY_R; 95 +DFR*L27; 1 +HDR*L14
49 +HDR*L27; 8 +HYR*L17; 25 +HZR*L17; 56 +CYZ*L3
1023 +CYZ*L12; 7 +CYZ*L14; 783 +CYZ*L16; 632 +CYZ*L17
14 +CYZ*L21; 591 +CYZ*L30; 74 +CYZ*TX_P_; 31 +CYZ*LX_R
6 +OYP*L23; 3 +OYP*L24; 40 +OYP*L30; 78 +OYP*L36
20 -OZP*L17; 237 -OZP*L20; 22 -OZP*L25; 48 -OZP*L29
194 -OZP*L31; 78 -OZP*L35; 11 -OZP*+OCF; 2 -OZP*LX_R
493 +OZQ*L16; 256 +OZQ*L17; 83 +OZQ*L30; 11 +OZQ*L35
169 +OZQ*+OCF; 1 +HPQ*L0; 171 +HPQ*L6; 105 +HPQ*L13
24 +ODQ*L27; 197 +HQR*L6; 70 +HQR*L9; 81 +HQR*L12
27 +HQR*L17; 1 +HQR*L28; 1 +HQR*DROP_OHP_Z; 43 +HQR*TY_P_
7 -DYQ*L27; 1 -FPQ*L27; 43 -FQR*TY_P_; 7 -YZP*L27
73 -YZQ*L30; 85 TPY_P_*L17; 77 Q_OCDP_Y*L27; 92 Q_HPFR_Q*L3
211 Q_HPFR_Q*L4; 193 Q_HPFR_Q*L7; 327 Q_HPFR_Q*L17; 4 Q_HPFR_Q*L18
171 Q_HPFR_Q*L21; 65 Q_HPFR_Q*L30; 7 Q_HPFR_Q*L31; 52 Q_CDPZ_Y*L6
```

Upper bound: `-1585411957/500000000`.

### Leaf TULppp

Assumptions: `+CYZ +OYP +OZP`.

```c1top-geometry
P OHDPQ +ODQ
P OHFYP -OFY
P OHFYR +OYR
P OHFZP -OFZ
P OHFZR +OZR
P OHYPQ +OYQ
P OHZPQ +OZQ
P HOFPR +HPR
P HOFQR +HQR
P COFPR +CPR
P DOFPQ +DPQ
P DOFPR +DPR
P FHDPQ -FPQ
P FHDQR -FQR
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P YOFPR +YPR
P ZOFPR +ZPR
P POCDQ -PCQ
P POCYQ -PYQ
P POCZQ -PZQ
P QOCDY -QDY
P QOCDZ -QDZ
```

```c1top-bounds
T OCP YZ 9 lower 347/500
T OCQ YZ 11 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 27/50 1
q 347/500 1
l 21/200 907/1000
m 347/500 907/1000
r 21/200 297/500
t 843/1000 1
```

```c1top-sum
1 L0*L1*L3; 2 L0*L1*L21; 31 L0*L1*L30; 58 L0*L3*L14
23 L0*L3*L17; 53 L0*L3*C_OCF_YZ; 51 L0*L6*TX_P_; 38 L0*L9*L10
26 L0*L10*L31; 15 L0*L13*L27; 17 L1*L1*L9; 1 L1*L1*L12
114 L1*L6*L24; 88 L1*L8*L35; 1 L1*L10*L21; 1 L1*L10*L24
15 L1*L12*LY_R; 54 L1*L14*L17; 73 L1*L17*L17; 8 L1*L17*L24
2 L1*L17*L28; 67 L1*L17*L31; 3 L1*L23*L24; 1 L1*L23*L27
64 L1*L24*L31; 15 L1*L24*DROP_OCR_YZ; 69 L1*L30*L30; 75 L1*L30*L35
4 L1*L31*TY_P_; 48 L2*L3*L19; 15 L2*L3*L36; 15 L3*L3*L9
15 L3*L3*L30; 5 L3*L4*L4; 5 L3*L4*L30; 16 L3*L4*TX_P_
5 L3*L4*TY_P_; 6 L3*L5*L6; 106 L3*L6*L16; 106 L3*L6*L17
88 L3*L6*L19; 91 L3*L6*LY_R; 2 L3*L8*L8; 42 L3*L8*L10
11 L3*L8*L17; 28 L3*L9*L18; 82 L3*L10*L30; 60 L3*L10*LX_R
27 L3*L13*L19; 8 L3*L13*L27; 4 L3*L14*L19; 151 L3*L14*L30
22 L3*L16*L19; 11 L3*L16*L30; 11 L3*L17*L36; 4 L3*L17*-OHD
16 L3*L17*DROP_OCR_YZ; 5 L3*L18*L19; 20 L3*L18*L29; 54 L3*L18*L34
5 L3*L18*TY_P_; 2 L3*L19*LX_R; 2 L3*L22*L27; 30 L3*L24*L26
43 L3*L25*L32; 19 L3*L25*LY_R; 10 L3*L27*L29; 2 L3*L27*L30
2 L3*L27*L34; 4 L3*L28*L36; 43 L3*L29*L32; 24 L3*L30*L34
35 L3*DROP_OCR_YZ*LY_R; 1 L4*L13*L35; 48 L4*L14*TX_P_; 14 L4*L16*TX_P_
24 L4*L24*L27; 1 L4*L30*L30; 11 L4*L30*TX_P_; 1 L5*L12*L12
1 L5*L12*L24; 2 L6*L9*L9; 93 L6*L9*L14; 99 L6*L14*L31
145 L6*L18*L27; 10 L6*L18*L31; 116 L6*L27*L27; 120 L6*L27*L29
18 L6*L27*L30; 46 L6*L27*L31; 3 L6*L27*-OHD; 120 L6*L27*DROP_OCR_YZ
61 L6*L27*LX_R; 4 L7*L7*L7; 80 L7*L7*L19; 9 L7*L17*L19
17 L7*L19*L19; 33 L8*L19*L24; 33 L8*L30*L30; 2 L8*L35*LY_R
15 L8*TX_P_*LY_R; 33 L9*L9*L9; 66 L9*L9*L12; 114 L9*L9*L14
76 L9*L9*L19; 23 L9*L10*L10; 170 L9*L10*L12; 80 L9*L10*L17
69 L9*L10*L31; 33 L9*L12*L12; 197 L9*L12*L14; 1 L9*L14*L35
22 L9*L18*L24; 53 L9*L18*L27; 37 L9*L27*LY_R; 23 L10*L10*L31
84 L10*L12*L35; 2 L10*L24*L27; 2 L10*L27*LX_R; 2 L11*L22*L27
6 L11*L24*L31; 3 L12*L14*L17; 197 L12*L14*L31; 54 L12*L18*L27
72 L12*L19*L19; 9 L12*L19*L30; 17 L12*L24*L35; 45 L12*L26*TX_P_
2 L12*TX_P_*LY_R; 2 L13*L27*L27; 2 L14*L17*L24; 72 L14*L19*TX_P_
2 L14*L24*TX_P_; 24 L14*L26*TX_P_; 2 L15*L24*L27; 2 L15*L24*L29
2 L16*L22*L27; 43 L16*L24*L27; 16 L16*L27*L31; 41 L17*L18*L27
1 L17*L22*DROP_OCR_YZ; 23 L17*L27*L30; 58 L17*L27*+OCF; 5 L17*L27*LY_R
6 L17*L30*L34; 2 L17*L35*LY_R; 73 L17*TX_P_*LY_R; 24 L18*L24*L36
20 L18*L24*LY_R; 64 L19*L24*L29; 41 L19*L26*TX_P_; 54 L19*L30*LY_R
1 L20*L27*L32; 3 L21*L27*L27; 3 L22*L26*TX_P_; 2 L23*L27*L35
43 L24*L26*TX_P_; 154 L24*L27*L29; 8 L24*L27*+OCF; 24 L24*L27*TY_P_
173 L24*L29*LY_R; 6 L24*L30*L32; 72 L26*TX_P_*TX_P_; 37 L27*L27*L31
37 L27*L31*-OHD; 2 L29*L35*L35; 7 L29*TX_P_*LY_R; 69 L30*L30*L32
47 L30*L32*L32; 3 L30*L32*TX_P_; 2 L31*L35*LY_R; 2 L32*TX_P_*LY_R
36 CENT*L3; 4 +OYZ*L4; 93 +OYZ*L6; 271 +OYZ*L9
18 +OYZ*L10; 254 +OYZ*L12; 117 +OYZ*L16; 58 +OYZ*L19
122 +OYZ*L31; 261 +OYZ*L33; 54 +OYZ*-OHD; 1 -HCY*L1
112 -HCY*L6; 163 -HCY*L8; 6 -HCY*L10; 18 -HCY*L14
85 -HCY*L17; 54 -HCY*L18; 31 -HCY*L29; 75 -HCY*L33
4 -HCY*TY_P_; 26 +CDY*L3; 1 +CDY*L14; 22 +CDY*L16
1 +CDY*L30; 76 +CDY*TX_P_; 22 +CDP*L31; 6 +CDP*+OCF
22 +CDP*TX_P_; 48 -DFP*L14; 40 -DFP*L16; 49 -DFP*L17
65 -DFP*L31; 11 -DFP*L33; 2 -HFQ*L27; 2 -CYQ*L27
8 -OHR*L17; 86 -OHR*L19; 12 -OHR*LY_R; 10 +HFR*L0
85 +HFR*L6; 6 +HFR*L12; 109 +HFR*L18; 144 +HFR*L29
69 +HFR*L31; 10 -CZR*L3; 80 -FPR*L7; 56 -FPR*L8
24 -FPR*L12; 24 -FPR*L14; 2 -FPR*L26; 66 -FPR*+OCF
3 -FPR*LY_R; 39 +CYZ*L1; 83 +CYZ*L7; 355 +CYZ*L8
19 +CYZ*L11; 324 +CYZ*L12; 37 +CYZ*L17; 58 +CYZ*L18
170 +CYZ*L24; 4 +CYZ*L28; 73 +CYZ*C_OCF_YZ; 182 +CYZ*LX_R
13 +OZP*L6; 76 +OZP*L8; 72 +OZP*L19; 221 +OZP*L27
85 +OZP*L30; 54 +OZP*-OHD; 221 +OZP*DROP_OCR_YZ; 1 +OZQ*L24
2 +HQR*L0; 1 +HQR*L10; 3 +HQR*L26; 1 -FPQ*L27
1 -FPQ*DROP_OCR_YZ; 27 -YZP*L3; 76 -YZP*L30; 1 -DZQ*L24
23 C_OYP_Z*L3; 10 C_HCZ_Y*L3; 2 C_CZR_Y*L27; 9 Q_OYFH_Z*L3
4 Q_OCFR_YZ*L3; 2 Q_HZCD_Y*L3
```

Upper bound: `-78356547/125000000`.

### Leaf TLU

Assumptions: ``.

```c1top-geometry
P OHDPR +ODR
P OHFQR +OFR
P HOFPQ +HPQ
P HOFQR -HQR
P COFPQ +CPQ
P DOFPQ +DPQ
P DOFPR +DPR
P FOHCR -FCR
P FOHPR -FPR
P FOHQR +FQR
P YHFPQ +YPQ
P ZHFPQ +ZPQ
P POCDR -PCR
P QOHCR -QCR
P QOHDR -QDR
P QOHPR -QPR
C OHQ R Y +QOY 3239749/6167600
C OHQ R Z +QOZ 3239749/6167600
P OHYQR +OYR
P OHZQR +OZR
P YOHZQ -YZQ
P YOHZR -YZR
P QOHYR -QYR
P QOHZR -QZR
P ROHFY -RFY
P ROHFZ -RFZ
P ROCDY -RDY
P ROCDZ -RDZ
P ROCYP +RYP
P ROCZP +RZP
```

```c1top-bounds
T OHQ R 10 lower 93/295
T OCR YZ 13 lower 347/500
```

```c1top-box
h 347/500 177/200
c 98/125 1
d 93/1000 167/200
f 437/1000 449/500
u 63/200 79/100
v 93/1000 513/1000
z 21/200 29/50
w 93/1000 699/1000
p 27/50 1
q 129/500 1
l 63/200 297/500
m 843/1000 1
r 21/200 907/1000
t 347/500 907/1000
```

```c1top-sum
8 L0*L3*TX_P_; 29 L0*L21*L24; 30 L0*L21*TY_P_; 21 L0*L22*TX_P_
3 L0*L24*TY_P_; 41 L0*L24*LX_Q; 26 L0*L24*LY_Q; 70 L0*LX_Q*LX_Q
26 L1*L4*TX_P_; 11 L1*L7*DROP_OCQ_YZ; 13 L1*L19*L24; 65 L1*L23*LX_Q
29 L1*L24*DROP_OHQ_R; 5 L1*L25*L29; 36 L1*L29*TY_P_; 10 L1*-OHD*TX_P_
21 L1*LY_Q*LY_Q; 59 L2*L16*L23; 1 L2*TX_P_*TX_P_; 17 L3*L4*TX_P_
12 L3*L4*DROP_OHQ_R; 79 L3*L4*LX_Q; 1 L3*L7*L7; 8 L3*L7*L18
2 L3*L16*TX_P_; 1 L3*L23*-OHD; 64 L3*L23*DROP_OHQ_R; 64 L3*L23*LX_Q
88 L3*L26*LX_Q; 1 L4*L13*L23; 16 L4*L16*LX_Q; 17 L4*L20*LY_Q
5 L4*L21*TX_P_; 6 L4*L21*DROP_OHQ_R; 64 L4*L22*L23; 17 L4*+OCF*TX_P_
5 L4*TX_P_*DROP_OCQ_YZ; 60 L4*TX_P_*LX_Q; 6 L4*LX_Q*LX_Q; 57 L5*L6*L17
9 L5*L17*L23; 90 L6*L6*L23; 36 L6*L16*L23; 107 L6*L23*DROP_OCQ_YZ
65 L6*L23*LX_Q; 56 L7*L7*L22; 1 L7*L12*L17; 1 L7*L13*TX_P_
38 L7*L17*L26; 22 L7*L17*L28; 24 L7*L19*L26; 22 L7*L19*LY_Q
3 L7*L22*L29; 72 L7*L22*TX_P_; 54 L7*L24*LY_Q; 5 L7*L28*L29
1 L8*L23*L34; 1 L12*TX_P_*TX_P_; 1 L16*L23*+OCF; 19 L17*L17*L27
1 L17*L17*L33; 15 L17*L18*L23; 37 L17*L20*L26; 11 L17*L21*TY_P_
32 L17*L22*TX_P_; 17 L17*L23*LX_Q; 10 L17*L28*LY_Q; 32 L17*TY_P_*LX_Q
32 L18*L20*L23; 15 L18*L23*LX_Q; 18 L19*L20*L29; 11 L19*L20*TX_P_
6 L19*L23*L29; 18 L21*L23*L25; 43 L22*L23*L23; 103 L23*L23*LX_Q
14 L23*L25*-OHD; 25 L23*L26*L29; 64 L23*L28*DROP_OCQ_YZ; 1 L23*L31*L34
1 L23*L34*DROP_OHQ_R; 1 L23*L34*LX_Q; 173 L23*-OHD*DROP_OHQ_R; 15 L23*TX_P_*TY_P_
17 L23*TY_P_*LX_Q; 103 L23*DROP_OCQ_YZ*LX_Q; 43 L23*LY_Q*LY_Q; 18 L24*DROP_OHQ_R*LY_Q
6 L26*L28*TX_P_; 1 L26*L32*DROP_OHQ_R; 19 L26*TX_P_*TX_P_; 36 L26*TX_P_*DROP_OHQ_R
17 TX_P_*DROP_OHQ_R*LY_Q; 3 KLOW*TX_P_; 11 TOPCOUNT*L7; 12 +CDF*L20
1 +DFZ*L23; 20 -HFP*L26; 36 +CDP*L1; 74 +CDP*L6
79 +CDP*L21; 6 +CDP*L22; 5 +CDP*L25; 31 +CDP*L26
32 -DFP*L6; 3 -DFP*L7; 9 -DFP*L27; 15 -DFP*DROP_OCQ_YZ
40 -DFP*LX_Q; 97 +HFQ*L6; 5 +HFQ*L18; 136 +HFQ*L22
13 +HFQ*L25; 30 +HFQ*L27; 13 +HFQ*L28; 13 +HFQ*-OHD
22 +HFQ*TX_P_; 55 +HFQ*DROP_OHQ_R; 1 +CDQ*L23; 5 +HCR*L17
5 +HCR*L20; 3 -HFR*TY_P_; 2 +OQR*L4; 34 +OQR*L20
33 +OQR*L21; 5 +OQR*L29; 2 +OQR*TY_P_; 22 +OQR*LX_Q
131 +OQR*LY_Q; 61 -FPQ*L3; 102 -FPQ*L17; 4 -FPQ*L21
12 -FPQ*-OHD; 69 -FPQ*TX_P_; 4 -FPQ*DROP_OHQ_R; 100 -HQR*L1
5 -HQR*L8; 5 -HQR*L17; 13 -HQR*L18; 22 -HQR*L21
5 -HQR*L31; 74 -HQR*-OHD; 103 -HQR*DROP_OCQ_YZ; 103 -HQR*LX_Q
25 +CFR*L23; 5 -FPR*L3; 44 +FQR*L0; 10 +FQR*L18
85 +FQR*L21; 29 +FQR*L23; 19 +FQR*LX_Q; 5 +DQR*L17
45 C_OHQ_R*L26; 31 C_OCR_YZ*TY_P_; 93 C_OCR_YZ*LX_Q; 5 Q_OCDH_YZ*L23
1 SP_OCQH_ZR_CH-1*L23
```

Upper bound: `-102575007/100000000`.
