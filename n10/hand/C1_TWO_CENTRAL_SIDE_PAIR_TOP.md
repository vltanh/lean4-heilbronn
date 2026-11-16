# Two central points, a side pair, and a top point

Let \(s=93/1000\). Use the actual C1 contacts

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad d\le h,\quad f\le c.
\]

Every unsigned actual doubled triangle area is at least \(s\).
This note excludes the complete exterior count
\((k,j,r,t,l)=(0,2,2,1,0)\), and hence its transpose
\((0,2,0,1,2)\). There are two points \(Y=(u,v),Z=(z,w)\)
in the central quadrilateral \(HCDF\), two points in the right
cap \(CD(1,0)\), and one point \(R=(r,t)\) in the top cap
\(DF(1,1)\). All ten named points are actual. Points may lie on
square sides. There is no lower point in \(OHC\).

## 1. Exhaustive labeling and a complete uniform box

Transpose the square if needed to put the occupied side cap on the
right. This imposes no order on \(h,c\). The intercept construction
in C1_EXTERIOR_REDUCTION.md, Section 2, labels the right points
\(P=(p,q),Q=(l,m)\) so that

\[
 Q\in CDP\cap ODP,\qquad
 -[CDP]\ge3s,\qquad d>\rho:=347/500.
 \tag{1}
\]

This labeling is exhaustive: \(C,D,P,Q\) have triangular outer
hull, and \(P\) is its third vertex. Independently label the two
central points so that \([OYZ]>0\). Their determinant with the
actual point \(O\) is nonzero, so exactly one of their two labelings
has this sign. No central-point ray order relative to \(P,Q,R\)
is imposed.

The top point and (1) satisfy C1_SIDE_PAIR_TOP_BOUNDS.md, Sections
1--4. Put

\[
 a=897/1000,\quad b=157/250,\quad c_0=33/200,\quad
 p_0=851/1000,\qquad q_0=s/b,\quad q_1=a-3s/(1-c_0).
\]

The cited analytic bounds give \(d<a\), \(c_0<c<b\),
\(p>p_0\), and \(q_0<q<q_1\). They also give

\[
\begin{aligned}
 9l&\ge5c+2+2p,&9l&\le2c+2p+5,\\
 9m&\ge2d+2q,&9m&\le5d+2q.
\end{aligned}
 \tag{2}
\]

Indeed \(-[CDP]<(9/2)s\), so each barycentric weight of \(Q\)
in \(CDP\) exceeds \(2/9\). Subtracting those three weights
leaves nonnegative remainders summing to \(1/3\); the extrema
\(c\le p\le1\) and \(0\le q\le d\) give (2).

The following is the complete closed initial box. Its endpoints are
weaker than the strict analytic bounds and include square-side contacts.

| Coordinate | Lower endpoint | Upper endpoint |
|---|---:|---:|
| \(h\) | \(\rho\) | \(1\) |
| \(c\) | \(c_0\) | \(b\) |
| \(d\) | \(\rho\) | \(a\) |
| \(f\) | \(s\) | \(b\) |
| \(u,z\) | \(s\) | \(1-s\) |
| \(v,w\) | \(s/b\) | \(1-s\) |
| \(p\) | \(p_0\) | \(1\) |
| \(q\) | \(q_0\) | \(q_1\) |
| \(l\) | \((5c_0+2+2p_0)/9\) | \((2b+7)/9\) |
| \(m\) | \(2(\rho+q_0)/9\) | \((5a+2q_1)/9\) |
| \(r\) | \(s+s/(1-\rho)\) | \(1\) |
| \(t\) | \(\rho+s/(1-s)\) | \(1\) |

For either central point \(T=(x,y)\), the actual \(OH,OC\)
clearances give \(hx,cy\ge s\). The upper coordinate bounds follow
from the central-edge identities

\[
\begin{aligned}
 (1-f)[CDT]+(1-c)[DFT]&=[CDF](1-x),\\
 (1-d)(-[HFT])+(1-h)[DFT]&=[HDF](1-y),
\end{aligned}
 \tag{3}
\]

using \([CDF]\le1-f,[HDF]\le1-d\). These identities concern one
central point at a time and use no lower-point assumption. For the
top point, the two forms of \(-[DFR]\ge s\) give
\(r\ge f+s/(1-d)\) and \(t\ge d+s/(1-f)\), yielding the displayed
endpoints. The central quadrilateral has doubled area

\[
 [HCD]+[HDF]=1-(h-d)(c-f)\ge8s,
 \tag{4}
\]

by the two-interior-point quadrilateral theorem.

## 2. All initial signs and the single exhaustive root

There is one root, `RRT`: \(P,Q\) are the right pair in (1),
\(R\) is the top point, and \(Y,Z\) are the ordered central pair.
The complete common signs are

```text
-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF
+OPQ +OPR +OQR -DPQ +CPQ -DPR -DQR +OYZ
```

The first line records the contact orientations. The signs
\(OPQ>0,DPQ<0,CPQ>0\) follow from (1). Both right points lie
below \(OD\), while \(R\) lies above it, giving \(OPR,OQR>0\).
For a right point \(V=(x,y)\),

\[
 -[DVR]=(1-x)(t-d)+(d-y)(1-r)\ge0.
 \tag{5}
\]

Both summands are nonnegative by the cap and square bounds. The
actual triangle threshold makes the sum strictly positive, proving
\(DPR,DQR<0\), including side contacts.

The complete region-edge signs are

| Region / points | OH | OC | HC | HF | CD | DF | OD | OF | HD | CF |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Central / Y,Z | − | + | + | − | + | + | free | free | free | free |
| Right / P,Q | − | + | + | − | − | + | − | − | − | − |
| Top / R | − | + | + | − | + | − | + | − | + | − |

These are the oriented edge tests for \(HCDF\) and the two caps.
Together with the displayed common signs, this table is the entire
initial sign set. In particular, there are no initial cross signs
obtained by treating \(Y\) or \(Z\) as a point of \(OHC\).

## 3. Finite geometry and interval refinements

Use the exact geometric rules and actual-point costs of
C1_TWO_LOWER_TOP_GEOMETRY.md, Sections 3--5. Their definitions are
universal rules for actual triangles and quadrilaterals in the unit
square. The present proof uses only the initial box and signs in
Sections 1--2 above. The triangle costs for zero through three
interior points are \(s,3s,347/500,823/1000\).

Each `P abcde token` deduction uses
\([abc][ade]-[abd][ace]+[abe][acd]=0\) with two summands of the
same known sign and the indicated remaining sign forced opposite.
Each `C` deduction cites a signed actual-triangle upper bound,
its known occupants, and two inward edge signs for a possible extra
occupant; the cost of that extra occupant exceeds the upper bound,
forcing the third edge sign outward. These are the only two
deduction types used in this fixed proof.

The fourteen static bounds in `c1top-upper` are explicit
monotonicity certificates. A token such as `h+` or `c-` substitutes
the indicated initial-box endpoint. At each step the partial
derivative has the needed sign on the remaining box, and the final
value is the printed exact rational bound.

The conditional interval rules `T`, `S`, `X`, `Y`, `O` have the
meanings in Section 4 of the common note. Their top-point arguments
are always \(R\); actual triangle occupants justify each cost.
The rule `B x Q` or `B y Q` substitutes the current endpoints in
(2), giving the stated lower or upper endpoint of \(l\) or \(m\).
There is no lower-point interval rule in this proof.

Every endpoint rule appearing below is `E OD YPQ`: its proved
signs put \(Y,P,Q\) below \(OD\). Together with \(O,C,D\),
these are six actual points inside the endpoint container
\(O,D,(1,0)\), of doubled area \(d\). Its actual hull is
nontriangular: \(O,C,D\) remain extreme, and \(P\) is outside
\(OCD\). Thus the nontriangular endpoint-six theorem gives
\(d>9s\), explaining the printed lower endpoint \(837/1000\).

All interval updates are made in the displayed order with positive
denominators. The final box at a cubic leaf is an outward rational
rounding of those proved endpoints. The sixteen geometric leaves
consist of six impossible determinant identities, five actual
triangle occupancy contradictions, and five clustered triples.
The witnesses and every needed edge sign appear in their full traces.

## 4. Complete factor definitions

Use the coordinate order

```text
h c d f u v z w p q l m r t
```

For the printed box, put \(L_{2i}=a_i-\ell_i\) and
\(L_{2i+1}=u_i-a_i\), for \(0\le i<14\). The six additional
affine factors \(L_{28},\ldots,L_{33}\), in order, are

\[
 h-d,\quad c-f,\quad 9l-5c-2-2p,\quad 2c+2p+5-9l,\quad
 9m-2d-2q,\quad 5d+2q-9m.
\]

The remaining common named factors are exactly

| Name | Definition and premise |
|---|---|
| `PAIRSUP` | \(dc(1-c)-s(1+2c)\), from the side-pair bound |
| `TOPCOUNT` | \((1-d)(1-f)-s\), from the occupied top cap |
| `QCENT` | \(1-(h-d)(c-f)-8s\), from the two central points |

A signed token `+ABC` or `-ABC` is that signed actual determinant
minus \(s\). The factors `C_`, `Q_`, `DROP_`, `SP_`, `TX_`,
`TY_`, `TPX_`, `TPY_` retain their explicit definitions and actual
geometric premises in Section 5 of the common note. In particular,
the quadrilateral spread factors require that the two displayed
occupants lie on opposite sides of both diagonals. For \(V=P,Q\),

\[
 \texttt{RX\_V}=x_V-c-s,\qquad
 \texttt{RY\_V}=d-y_V-s.
\]

They follow from \(-[CDV]\ge s\) by dropping nonnegative terms
and coefficients at most one. Every containment, convexity and
diagonal-separation premise is established before the corresponding
factor is used. No lower-point sum or lower-fan factor occurs.

## 5. Exact contradiction and complete coverage

At each cubic leaf a positive-integer sum \(W\) of products of
these nonnegative factors is printed, so \(W\ge0\). Substitute
\(a_i=\ell_i+z_i\), with \(0\le z_i\le u_i-\ell_i\), and write
\(W=\sum c_\alpha z^\alpha\). Then

\[
 W\le c_0+\sum_{\alpha\ne0,\ c_\alpha>0}
             c_\alpha\prod_i(u_i-\ell_i)^{\alpha_i}.
\]

This exact upper bound is negative at every cubic leaf. The fixed
tree has 76 binary splits and 77 leaves: 61 cubic contradictions
with 9,344 printed positive terms, and sixteen geometric
contradictions. There are 2,528 geometric deductions and 274
interval updates. Every split is on an actual nonzero determinant,
so the two children are exhaustive. The labeling in Section 1
therefore closes the complete right-pair count, and transposition
closes its left-pair counterpart.

The companion
[check_c1_two_central_side_pair_top.py](check_c1_two_central_side_pair_top.py)
reads this manuscript, replays its fixed geometry and intervals,
reconstructs every factor, and expands every printed identity with
exact rational arithmetic. No numerical feasibility calculation is
a premise of the proof.

## 6. Fixed tree and all rational identities

Counts: `61 16 9344 2528 274`.

```c1top-upper
RRT CDR 1 2148523/3187500 r- t+ c- d-
RRT DFP 1 1703963/2453125 d+ f- p- q-
RRT DPR -1 311605061/667250000 q- r- d+ t+ p-
RRT DYP 1 106878083/157000000 u- d+ v+ p- q-
RRT DZP 1 106878083/157000000 z- d+ w+ p- q-
RRT HCF 1 157/250 c+ h- f+
RRT HDF 1 153/500 h- d- f+
RRT HPQ -1 139928870261/235971000000 p+ h+ q+ l- m-
RRT OCD 1 140829/250000 c+ d+
RRT OCP 1 14757843/41750000 c+ q+
RRT OCQ 1 49035967/125250000 c+ m+
RRT OCR 1 157/250 c+ t+
RRT OCZ 1 142399/250000 c+ w+
RRT OHF -1 157/250 h+ f+
```

```c1top-tree
RRT FPQ
RRTm CYZ
RRTmm OYP
RRTmmm OYQ
RRTmmmm OYR
RRTmmmmm HPQ
RRTp PQR
RRTmp OYP
RRTmmmmp OZR
RRTmmmmpm HPQ
RRTmmmmpp HPQ
RRTmmmmpmm ODY
RRTmmmmppm YZR
RRTmpm OYQ
RRTmpmm OYR
RRTmpmmm HPQ
RRTmpmmp OZR
RRTmpmmmm YZP
RRTmpmmmmm YZQ
RRTmpmmmmp YZQ
RRTmpmmmmmm OFY
RRTmmmmppmp ODY
RRTmpmmmmmmm OFZ
RRTmpmmmmmmmm HDY
RRTmpmmmmmmmmm HDZ
RRTmpmmmmpp YZR
RRTmpmmmmppm OFY
RRTmpmmmmppmm OFZ
RRTmpmmmmppmmm HDY
RRTmpmmmmppmmmm HDZ
RRTmpmmmmppmmmmm HYZ
RRTmpmmmmppmmmmmm HYP
RRTmpmmmmppmmmmmmm HZP
RRTmpmmmmppp OFY
RRTmpmmmmpppm OFZ
RRTmpmmmmpppmm HDY
RRTmpmmpm HPQ
RRTmpmmpmm YZP
RRTmpmmpmmm YZQ
RRTmpmmpmmmm ODY
RRTmpmmpmmmmp OFZ
RRTmpmmpmmmmpm HDY
RRTmpmmpmmmmpmm HDZ
RRTmpmmpmmmmpmmm HYZ
RRTmpmmpmmmmpmmmp HYP
RRTmpmmpmmmmpmmmpp HYQ
RRTmpmmpmmmmpmmmppp HZP
RRTmpmmpmmp YZQ
RRTmpmmpmmpp ODY
RRTmpmmpmmppp OFZ
RRTmpmmpmmpppm HDY
RRTmpmmpmmpppmm HDZ
RRTmpmmpmmpppmmm HYZ
RRTmpmmpmmpppmmmm HYP
RRTmpmmpmmpppmmmmm HZP
RRTmpmmpmmpppmmmmmp HZQ
RRTmpmmpmmpppmmmmmpp CFY
RRTmpmmpmmpppmmmmmppm CFZ
RRTmpmmpmmpppmmmmmppmm CYR
RRTmpmmpmmpppmmmmmppmmp DYZ
RRTmpmmpp HPQ
RRTmpmmppm YZP
RRTmpmmppmm YZQ
RRTmpmmppmmm YZR
RRTmpmmppmp YZQ
RRTmpmmppmpp YZR
RRTmpmmppmppm ODY
RRTpm CYZ
RRTpmp OYP
RRTpmpm OYQ
RRTpmpmm OYR
RRTpmpmmp OZR
RRTpmpmmpm YZP
RRTpmpmmpmm YZQ
RRTpmpmmpmmm ODY
RRTpmpmmpmp YZQ
```

### Leaf RRTmmmmmm

Assumptions: `-FPQ -CYZ -OYP -OYQ -OYR -HPQ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDYR +FYR
P FHDZR +FZR
P YOHCZ -YHZ
P YOCDZ +YDZ
P YOCDR +YCR
P YOCZP -YZP
P YOCZQ -YZQ
P YOCZR -YZR
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OCZ Y 1 lower 279/907
T OCZ Y 7 lower 279/628
B x Q 10 lower 792119/1360500
```

```c1top-box
h 347/500 1
c 307/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 291/500 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
608 L4*L17; 142 L11*L17; 121 L17*L18; 921 L17*L27
265 L0*L0*L29; 126 L0*L1*L17; 7 L0*L3*L17; 158 L0*L4*L29
182 L0*L5*L17; 67 L0*L8*L17; 47 L0*L10*L29; 33 L0*L14*L17
126 L0*L15*L25; 233 L0*L15*L29; 52 L0*L17*L21; 10 L0*L17*L25
126 L0*L17*-OHD; 86 L0*L17*DROP_OHP_Q; 67 L0*L17*TY_R_; 51 L0*L27*L29
132 L1*L2*L4; 305 L1*L2*L8; 263 L1*L3*L6; 12 L1*L3*L30
262 L1*L3*TY_R_; 151 L1*L4*L8; 326 L1*L6*L6; 69 L1*L6*L10
58 L1*L6*L13; 225 L1*L6*L15; 252 L1*L6*L25; 143 L1*L6*TY_R_
28 L1*L8*L15; 8 L1*L9*L18; 313 L1*L18*L25; 449 L2*L2*L15
12 L2*L2*L32; 210 L2*L4*L15; 17 L2*L4*L31; 119 L2*L8*TY_R_
131 L2*L10*L15; 131 L2*L10*L25; 25 L2*L10*L29; 17 L2*L12*L27
455 L2*L12*L28; 273 L2*L15*L24; 241 L2*L15*L26; 35 L2*L15*L32
252 L2*L25*L28; 51 L2*L27*L32; 1 L2*L30*L32; 76 L3*L3*L18
120 L3*L5*L5; 375 L3*L5*L18; 304 L3*L5*L27; 119 L3*L8*L28
205 L3*L11*L18; 125 L3*L11*L27; 67 L3*L13*L27; 59 L3*L17*L18
85 L3*L18*L18; 458 L3*L18*L27; 43 L3*L18*L28; 82 L4*L4*L13
169 L4*L4*L19; 358 L4*L5*L17; 40 L4*L8*L15; 216 L4*L12*L28
158 L4*L14*L17; 22 L4*L16*L17; 128 L4*L17*L18; 49 L4*L17*L25
363 L4*L17*+OCF; 481 L4*L17*TY_R_; 197 L4*L28*L29; 89 L5*L5*L5
169 L5*L5*L18; 543 L5*L5*L25; 18 L5*L5*L30; 84 L5*L6*L25
9 L5*L11*L30; 50 L5*L17*L32; 585 L5*L18*L25; 69 L5*L18*L30
57 L5*L25*TY_R_; 10 L5*L27*L30; 32 L5*L28*L30; 58 L6*L6*TY_R_
45 L6*L10*TY_R_; 58 L6*L15*L29; 10 L6*L18*L25; 29 L6*L27*L27
267 L6*L27*L29; 47 L8*L17*L27; 33 L8*L17*L28; 84 L8*L18*L28
150 L8*L27*L28; 84 L9*L18*TY_R_; 356 L10*L18*L25; 216 L10*L25*L28
159 L10*L28*L29; 47 L11*L17*L25; 213 L11*L17*L26; 53 L11*L17*L32
311 L11*L17*-OHD; 20 L11*L17*+OCF; 227 L11*L17*TY_R_; 53 L11*L18*L30
44 L11*L28*L30; 33 L12*L27*L27; 440 L12*L28*L29; 33 L13*L17*L28
60 L13*L18*L28; 4 L13*L18*TY_R_; 1 L13*L28*L30; 89 L14*L17*L22
136 L14*L17*L27; 111 L14*L17*-OHD; 87 L14*L17*+OCF; 20 L14*L17*RY_P
132 L14*L18*L25; 10 L14*L18*L30; 33 L14*L25*TY_R_; 4 L15*L25*L28
289 L15*L28*L29; 21 L15*L28*L31; 59 L16*L17*L27; 3 L16*L17*L33
17 L16*L17*RY_Q; 89 L17*L17*L22; 576 L17*L18*L22; 59 L17*L18*L24
22 L17*L18*-OHD; 77 L17*L18*RX_Q; 131 L17*L20*L22; 43 L17*L21*L28
287 L17*L22*-OHD; 552 L17*L22*+OCF; 52 L17*L26*L27; 61 L17*L27*L32
351 L17*L27*+OCF; 10 L17*L28*TX_R_; 576 L18*L18*RX_Q; 52 L18*L25*TY_R_
61 L18*L27*L30; 44 L18*L28*L30; 2 L18*L30*L30; 21 L27*L28*L29
35 L27*L28*L30; 456 L28*L29*L29; 1 L28*L29*L31; 60 L28*L29*RY_P
252 L28*L29*TX_R_; 1 L28*L30*L30; 391 +OPQ*L2; 254 +CPQ
446 +CPQ*L5; 880 +CPQ*L11; 274 +CPQ*L14; 2 +CPQ*L16
686 +CPQ*L18; 864 +CPQ*L27; 287 +CPQ*-OHD; 402 +CPQ*+OCF
207 +CPQ*RX_Q; 313 -DPR*L1; 589 -DPR*L5; 10 -DPR*L6
440 -DPR*L10; 136 -DPR*L14; 351 -DPR*+OCF; 59 -DPR*DROP_OHP_Q
52 -DPR*TY_R_; 131 +HCY*L14; 92 +HCY*L19; 366 +HCY*L26
151 +HCY*-OHD; 424 +HCY*+OCF; 100 +HCY*DROP_OHP_Q; 116 -HFY*L15
163 -HFZ; 382 -HFZ*L7; 275 -HFZ*L10; 113 -HFZ*L26
1 -HFZ*L31; 265 -HFZ*-OHD; 900 -HFZ*+OCF; 60 -HFZ*RY_P
215 -HFZ*TY_R_; 169 +DFZ*L1; 80 +DFZ*L2; 197 +DFZ*L4
115 +DFZ*L10; 523 +DFZ*L27; 440 +DFZ*L29; 1 +DFZ*L31
463 +DFZ*+OCF; 60 +DFZ*RY_P; 56 +OCP*L1; 207 +OCP*L10
351 +OCP*L25; 60 +OCP*L30; 12 +OCP*L32; 396 -CDQ*L5
480 -CDQ*L11; 185 -CDQ*L14; 576 -CDQ*L18; 98 -CDQ*L20
407 -CDQ*L27; 50 -CDQ*L28; 237 -CDQ*-OHD; 151 -CDQ*+OCF
197 -HFR*L15; 258 -DFR*L0; 267 -DFR*L3; 326 -DFR*L6
654 -DFR*L15; 29 -DFR*L26; 687 +OYZ*L1; 400 +OYZ*L22
332 +OYZ*L24; 360 +OYZ*L26; 841 +OYZ*-OHD; 449 +OYZ*+OCF
87 +OYZ*DROP_OHP_Q; 294 +OYZ*RY_P; 25 +OYZ*TX_R_; 371 -CYZ*L1
332 -CYZ*L24; 227 -CYZ*L26; 44 -CYZ*L32; 951 -CYZ*-OHD
449 -CYZ*+OCF; 120 -CYZ*DROP_OHP_Q; 205 -CYZ*RY_P; 25 -CYZ*TX_R_
13 -CYZ*TY_R_; 65 -OYR*L4; 119 -OYR*L14; 216 -OYR*-OHD
488 -OYR*+OCF; 47 -OYR*DROP_OHP_Q; 84 -OYR*RY_P; 400 -HPQ*L11
185 -HPQ*L14; 110 -HPQ*L18; 316 -HPQ*L27; 83 -HPQ*+OCF
137 -HPQ*DROP_OHP_Q; 76 -HPQ*RX_Q; 55 -DZR*L0; 84 -DZR*L3
41 -DZR*L4; 74 -DZR*L11; 5 -DZR*L19; 23 -DZR*L27
531 +FZR*L4; 45 +FZR*L10; 151 +HYZ*L28; 33 -DYZ*L17
384 C_OZR_Y*L1; 57 C_OZR_Y*TY_R_; 8 C_HCZ_Y*L0; 33 C_HCZ_Y*L17
107 C_HCZ_Y*L28; 55 C_HCP_Q*L17; 10 Q_ORFH_YZ*L17
```

Upper bound: `-5738021047/1000000000`.

### Leaf RRTmmmmmp

Assumptions: `-FPQ -CYZ -OYP -OYQ -OYR +HPQ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDYR +FYR
P FHDZR +FZR
P YOHCZ -YHZ
P YOCDZ +YDZ
P YOCDR +YCR
P YOCZP -YZP
P YOCZQ -YZQ
P YOCZR -YZR
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POFQR -PQR
```

```c1top-bounds
T OCZ Y 1 lower 279/907
T OCZ Y 7 lower 279/628
B x Q 10 lower 792119/1360500
```

```c1top-box
h 347/500 1
c 307/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 291/500 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
2 L4*L28; 3 L17*L27; 3 L29*RY_P; 5 L0*L0*L7
7 L0*L3*L7; 2 L0*L7*L32; 1 L0*L18*L31; 9 L1*L2*L17
4 L1*L16*L17; 11 L1*L16*L28; 14 L1*L17*L22; 2 L1*L17*L29
17 L1*L18*RX_Q; 8 L2*L2*L33; 12 L3*L3*L3; 2 L3*L4*L30
24 L3*L5*L18; 3 L3*L5*L29; 5 L3*L7*-OHD; 4 L3*L16*L28
2 L3*L18*-OHD; 38 L3*L18*RY_P; 9 L4*L4*L7; 24 L4*L4*L29
4 L4*L17*L18; 40 L4*L17*L23; 6 L4*L17*RX_Q; 5 L4*L17*RY_Q
12 L4*L18*L21; 2 L4*L29*L32; 9 L5*L5*L20; 4 L5*L5*L30
30 L5*L17*L27; 28 L5*L18*RX_Q; 41 L7*L16*L28; 6 L7*L28*L31
35 L16*L22*L28; 16 L16*L28*-OHD; 7 L16*L28*RX_Q; 12 L17*-OHD*+OCF
52 L17*+OCF*RY_Q; 3 L19*L29*RX_P; 11 L21*L28*RX_P; 4 L22*L28*RX_P
1 L28*+OCF*RY_P; 5 L28*RX_P*RY_P; 31 L28*RY_P*RX_Q; 4 L29*L32*-OHD
1 L29*L32*+OCF; 7 L29*-OHD*RY_P; 12 L29*+OCF*RY_P; 18 -DPQ*L7
32 -DPQ*L29; 3 -DPR*L1; 30 -DPR*L5; 3 -DPR*-OHD
35 +OCP*L1; 66 +OCP*L5; 58 +OCP*L21; 4 +OCP*RX_P
38 +OCP*RY_P; 5 -HFQ*L28; 43 -CDQ*L1; 19 -CDQ*L5
1 -CDQ*L6; 2 -CDQ*L16; 7 -CDQ*-OHD; 62 -CDQ*+OCF
48 -FPQ*L1; 10 -FPQ*L4; 4 -FPQ*L16; 107 -FPQ*-OHD
10 -FPQ*+OCF; 61 +HPQ*L1; 11 +HPQ*L3; 55 +HPQ*L7
4 +HPQ*L16; 66 +HPQ*-OHD; 52 C_CDP_Q*L4; 2 C_CDP_Q*L7
3 TPX_R_*L1; 3 TPX_R_*-OHD; 30 TPX_R_*RY_P; 1 Q_OPDH_Q*L28
```

Upper bound: `-1426361639/1000000000`.

### Leaf RRTmmp

Assumptions: `-FPQ -CYZ +OYP`.

```c1top-geometry
P OHDYP -ODY
P OHDYR +OYR
P OHFYP -OFY
P OHYPQ +OYQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCZ -YHZ
P YOHCP -YHP
P YOHCQ -YHQ
P YOHFR -YHR
P YODFP -YFP
P YODFQ -YFQ
P YODPR +YPR
P YODQR +YQR
P POCYQ -PYQ
P POFQR -PQR
C OCD Y Z -DOZ 140829/250000
C OCP Y Z -POZ 14757843/41750000
C OCQ Y Z -QOZ 49035967/125250000
P DOCYZ -DYZ
P YODZP -YZP
P YODZQ -YZQ
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCZ Y 7 lower 279/628
T OCP Y 1 lower 15531/31333
T OCP Y 9 lower 279/628
T OCQ Y 11 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 32274961/46999500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 99/200 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 111/250 563/1000
l 343/500 459/500
m 111/250 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
2 L0*L0*L7; 1 L0*L5*L16; 1 L0*L6*L25; 2 L1*L1*RY_P
2 L1*L3*L32; 3 L1*L6*DROP_OCP_Y; 4 L2*L3*L10; 3 L2*L7*L20
4 L2*L11*L27; 1 L2*L12*TY_R_; 2 L2*L13*TY_R_; 1 L2*L15*RY_Q
1 L2*L19*L25; 2 L2*L23*L24; 7 L2*RY_P*RY_P; 7 L3*L10*L26
5 L3*L16*TY_R_; 3 L3*L18*L20; 4 L3*L18*L32; 3 L3*L18*-OHD
4 L3*L22*L32; 9 L3*L23*L27; 1 L3*L27*L32; 1 L3*L28*RX_P
3 L4*L5*-OHD; 10 L4*L6*TY_R_; 1 L4*L15*RX_Q; 2 L4*L17*L31
8 L4*L17*TY_R_; 15 L4*L23*TY_R_; 3 L5*L5*L9; 19 L5*L5*L21
4 L5*L5*L27; 7 L5*L5*L32; 9 L5*L9*L22; 4 L5*L9*DROP_OCP_Y
2 L5*L10*L16; 22 L5*L16*L20; 6 L5*L18*L19; 20 L5*L18*L22
1 L5*L18*TX_R_; 1 L5*L19*L33; 7 L5*L19*RX_P; 1 L5*L20*L20
1 L5*L20*-OHD; 7 L5*L22*L27; 8 L5*L22*RX_P; 12 L5*L25*L26
1 L5*L26*L31; 4 L5*L27*RY_P; 2 L5*L28*L28; 4 L5*L32*RY_P
4 L5*L32*RY_Q; 2 L6*L16*TY_R_; 2 L6*L17*L21; 4 L6*L17*L26
2 L6*L17*RX_Q; 4 L6*L21*DROP_OCP_Y; 1 L6*L22*L33; 21 L6*L22*TY_R_
6 L6*L23*DROP_OCQ_Y; 17 L6*L26*L27; 17 L6*L26*TY_R_; 1 L6*L27*L29
2 L7*L10*L16; 13 L7*L22*L22; 12 L7*L22*L26; 4 L7*L27*RX_P
5 L8*L17*DROP_OCQ_Y; 13 L8*L19*L22; 1 L8*L23*DROP_OCQ_Y; 1 L9*L17*L32
4 L9*L17*RY_P; 1 L9*L17*RX_Q; 1 L9*L18*L32; 4 L9*L22*L28
1 L9*L28*L32; 1 L10*L16*L27; 4 L10*L19*L20; 5 L10*L21*L27
1 L10*L21*-OHD; 3 L11*L17*L32; 1 L11*L30*TY_R_; 1 L12*L21*L27
1 L13*L26*L26; 1 L13*TY_R_*TY_R_; 1 L14*L27*-OHD; 1 L15*L17*RX_Q
1 L15*L27*TX_R_; 2 L16*L18*L19; 4 L16*L20*TY_R_; 5 L16*L21*L28
1 L16*L25*TY_R_; 2 L16*L28*DROP_OCP_Y; 1 L17*L31*-OHD; 2 L17*L32*L32
2 L17*L32*L33; 3 L17*L32*DROP_OCP_Y; 1 L17*L32*RX_P; 6 L17*L32*RY_P
5 L17*L33*RY_P; 1 L17*+OCF*+OCF; 6 L17*+OCF*DROP_OCP_Y; 2 L17*DROP_OCP_Y*RX_P
19 L17*DROP_OCP_Y*RY_Q; 3 L18*L21*L32; 4 L18*L22*L25; 2 L18*L25*RX_Q
1 L18*L27*L32; 2 L18*L32*RX_Q; 1 L18*+OCF*TY_R_; 18 L18*RY_P*RX_Q
3 L18*RX_Q*RX_Q; 2 L19*L27*RY_P; 5 L20*L22*L27; 2 L20*L27*L30
1 L20*L32*TY_R_; 1 L21*L27*TX_R_; 5 L22*L22*L25; 33 L22*L22*TY_R_
4 L22*L27*L32; 3 L24*L27*RY_Q; 3 L26*L27*RX_Q; 1 L27*L29*TX_R_
1 L27*RX_P*RX_P; 2 QCENT*L17; 3 +OCD*L17; 1 +HDF*-OHD
3 +OPQ*L7; 4 +OPQ*DROP_OCP_Y; 7 -DPQ*+OCF; 1 -DPR*L32
1 -OHY*L17; 2 +HCY*L19; 2 +HCY*L32; 1 +HCY*DROP_OCQ_Y
4 +OCP*L17; 1 +OCP*L28; 2 -HFP*L18; 4 -ODP*L17
1 -HDP*L17; 1 -OHQ*L17; 7 -CDQ*L32; 3 -CDQ*DROP_OCP_Y
25 -CDQ*RY_Q; 3 -ODQ*L2; 4 -CFQ*L17; 1 -HFR*L6
2 -HFR*L16; 8 -HFR*L22; 1 -HFR*TX_R_; 14 -DFR*L4
1 -FPQ*L32; 23 -FPQ*DROP_OCQ_Y; 2 +OYP*L32; 6 +OYP*RX_P
3 -ODY*L17; 1 -OFY*L17; 4 +OYQ*L4; 1 +OYQ*RY_P
3 -CYP*L3; 1 -CYP*RX_P; 1 -CYQ*L23; 3 +CQR*TY_R_
1 -HDY*L17; 1 -DZR*L27; 4 +YPQ*DROP_OCP_Y; 1 -PQR*L24
2 -PQR*+OCF; 2 -PQR*RY_P; 5 -PQR*DROP_OCQ_Y; 1 C_CDP_Q*L8
7 C_CDP_Q*+OCF; 9 C_CDP_Q*RX_P; 21 TPX_R_*L26; 2 TPX_R_*L32
1 SP_OCPD_YQ_OP1*L33; 3 SP_OCPD_YQ_CD-1*L19; 1 SP_OCPD_YQ_CD1*L28; 3 Q_OCPQ_Y*L20
1 Q_OCPQ_Y*L25; 6 Q_OCPQ_Y*L32; 2 Q_OCPQ_Y*+OCF; 16 Q_OCPQ_Y*RY_P
19 Q_OCPQ_Y*RY_Q; 1 Q_OYPD_Q*L2; 1 Q_HYPF_Q*L28; 4 Q_CPDY_Q*L32
2 Q_CPDY_Q*RY_P
```

Upper bound: `-725823289/500000000`.

### Leaf RRTmmmp

Assumptions: `-FPQ -CYZ -OYP +OYQ`.

```c1top-geometry
P OHDYQ -ODY
P OHDYR +OYR
P OHFYQ -OFY
P OHYZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCZ -YHZ
P YOHCQ -YHQ
P YOHFR -YHR
P YOCZP -YZP
P YOCPQ +YPQ
P YODFQ -YFQ
P YODQR +YQR
P POFYQ +PFY
P POFYR -PYR
P POFQR -PQR
C OCD Y Z -DOZ 140829/250000
C OCQ Y Z -QOZ 49035967/125250000
C DYP Q Z -DYZ 106878083/157000000
P YODZQ -YZQ
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCZ Y 7 lower 279/628
T OCQ Y 1 lower 139779/312331
T OCQ Y 11 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 309190727/468496500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 447/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 659/1000 459/500
m 111/250 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
1 L0*L3*L26; 2 L0*L22*RX_Q; 1 L1*L3*L17; 3 L1*L4*L26
1 L1*L5*L21; 1 L1*L6*L24; 1 L1*RX_Q*TY_R_; 3 L2*L5*L26
2 L2*L19*L24; 3 L2*L23*L24; 1 L2*RY_P*RY_P; 1 L2*TX_R_*TY_R_
5 L3*L18*RX_Q; 5 L3*L22*L29; 2 L3*L22*L32; 1 L3*L22*L33
11 L3*L22*RY_Q; 5 L4*L4*L27; 12 L4*L7*L20; 1 L4*L7*L26
2 L4*L7*RX_Q; 6 L4*L17*L24; 1 L4*L22*TX_R_; 12 L4*L26*L27
18 L4*L26*TX_R_; 5 L5*L7*L17; 2 L5*L25*L30; 1 L5*L27*RX_P
8 L5*L27*RY_P; 1 L6*L17*L21; 14 L6*L20*TY_R_; 1 L6*L21*L22
4 L6*L22*TY_R_; 3 L6*RY_Q*TY_R_; 1 L7*L19*RY_P; 1 L7*L20*L31
5 L7*L20*+OCF; 6 L7*L20*RX_Q; 7 L7*L22*L24; 1 L7*L28*RY_P
1 L17*L17*RY_P; 2 L17*L18*L22; 1 L17*L18*RX_Q; 1 L17*L19*L20
10 L17*L20*L28; 2 L17*L21*L32; 1 L17*L23*L33; 1 L17*L24*L26
2 L17*L32*RX_Q; 3 L17*RY_P*RX_Q; 4 L18*L18*L27; 9 L18*L20*L27
2 L18*L27*L32; 1 L18*L27*-OHD; 4 L18*L27*TX_R_; 5 L18*L27*TY_R_
2 L19*L29*RY_P; 6 L20*L26*L27; 3 L21*L22*-OHD; 5 L22*L22*L25
1 L22*L24*L27; 4 L22*L25*TY_R_; 2 L22*L27*L32; 5 L23*L27*-OHD
1 L25*L27*RX_P; 1 L26*L28*L33; 1 L26*L28*RX_P; 2 L27*L27*L33
1 L27*L33*TX_R_; 18 L27*DROP_OCQ_Y*RY_Q; 1 L29*L32*RY_Q; 2 L29*RY_P*RY_P
1 TOPCOUNT*-OHD; 5 +OCD*L17; 3 +ODF*L17; 1 +HCD*L17
4 +OPQ*L17; 1 +OQR*L28; 10 -DPQ*L29; 6 -DQR*L6
10 -DQR*L17; 5 -DQR*L22; 2 -DQR*TX_R_; 1 +HCP*L27
3 -CDQ*L24; 22 -CDQ*L27; 2 -CDQ*L29; 3 -CDQ*L32
1 -CDQ*-OHD; 4 -CDQ*+OCF; 27 -CDQ*RY_Q; 23 -CDQ*TY_R_
1 +DFQ*L2; 1 -HFR*L6; 2 -HFR*L16; 1 -HFR*L23
1 -HFR*TX_R_; 4 +CDR*L5; 8 -DFR*L20; 1 -DFR*L32
1 -DFR*L33; 8 -OFR*L17; 1 -FPQ*L6; 3 -FPQ*L24
2 -FPQ*L32; 1 -FPQ*-OHD; 26 -FPQ*RY_Q; 1 -FPQ*TX_R_
16 -FPQ*TY_R_; 10 +HQR*L17; 1 -PQR*L24; 6 -PQR*L27
11 C_OCQ_Y*L23; 4 C_OCQ_Y*L25; 4 C_OCQ_Y*RY_P; 2 C_OCQ_Y*RX_Q
3 C_OCQ_Y*TX_R_; 8 C_OPQ_Y*L20; 8 C_OPQ_Y*L25; 1 C_OPQ_Y*-OHD
10 C_OPQ_Y*TX_R_; 1 TPX_R_*L3; 12 TPX_R_*L20; 3 TPX_R_*L24
12 TPX_R_*L26; 3 TPX_R_*RX_P; 7 TPY_R_*L16; 2 Q_ODFH_Z*L17
3 Q_OCDR_Y*L17; 2 Q_OCPQ_Y*L19; 2 Q_OCPQ_Y*L24; 1 Q_OCPQ_Y*L26
2 Q_OCPQ_Y*L31; 1 Q_OCPQ_Y*-OHD; 2 Q_OCPQ_Y*RY_P; 11 Q_OCPQ_Y*RX_Q
1 Q_CPDR_Q*L7
```

Upper bound: `-45553791/100000000`.

### Leaf RRTmmmmpmp

Assumptions: `-FPQ -CYZ -OYP -OYQ +OYR -OZR +HPQ`.

```c1top-geometry
C OCZ Y R -CZR 142399/250000
P OHDZR +ODZ
P OHFYR -OFY
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P COYZR -CYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCZ -YHZ
P YOHCR -YHR
P YOCZP -YZP
P YOCZQ -YZQ
P YOCPR +YPR
P YOCQR +YQR
P ZOCDY -ZDY
P ZOCYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POFQR -PQR
```

```c1top-bounds
T OCZ Y 1 lower 279/907
T OCZ Y 7 lower 279/628
B x Q 10 lower 792119/1360500
```

```c1top-box
h 347/500 1
c 307/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 291/500 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
21 L0*L6*L17; 29 L0*L17*L25; 85 L0*L17*+OCF; 3 L0*L24*L31
30 L0*L27*L32; 42 L0*L29*L32; 229 L1*L17*L22; 14 L1*L17*L33
5 L1*L25*L30; 25 L1*L26*L29; 30 L2*L2*L33; 47 L2*L5*L20
63 L2*L5*L28; 75 L2*L5*TY_R_; 26 L2*L12*L27; 26 L2*L13*L27
3 L2*L20*L27; 5 L2*L20*L33; 51 L2*L22*L28; 112 L2*L28*RY_Q
6 L2*L33*L33; 15 L2*L33*TY_R_; 93 L3*L4*L22; 52 L3*L5*L29
78 L3*L6*L18; 31 L3*L18*L25; 19 L3*L18*RX_Q; 34 L3*L22*TX_R_
4 L3*L32*RX_Q; 136 L4*L4*L27; 32 L4*L4*L31; 192 L4*L4*TX_R_
34 L4*L5*L25; 3 L4*L6*L29; 25 L4*L16*L17; 31 L4*L20*L31
22 L4*L24*L29; 113 L4*L27*L27; 30 L4*L27*L33; 81 L4*L28*L29
10 L4*L28*L30; 27 L4*L31*TY_R_; 165 L5*L17*TY_R_; 24 L5*L25*+OCF
10 L5*L29*RY_P; 21 L5*L30*TY_R_; 113 L5*TY_R_*TY_R_; 1 L6*L6*L33
28 L6*L17*L26; 5 L6*L22*L31; 11 L6*L25*L32; 2 L6*L27*L29
12 L6*L27*-OHD; 2 L6*L29*DROP_OCR_Y; 37 L6*L33*TY_R_; 4 L7*L18*TX_R_
40 L7*L22*L32; 45 L7*L28*RX_P; 16 L7*L32*RX_Q; 6 L8*L17*L31
6 L9*L17*L31; 106 L10*L17*DROP_OCR_Y; 106 L11*L17*DROP_OCR_Y; 25 L16*L17*L27
56 L16*L19*L28; 33 L16*L20*L28; 29 L16*L24*L28; 21 L16*L28*L29
145 L16*L28*TY_R_; 4 L17*L18*L33; 19 L17*L18*RX_Q; 84 L17*L20*L27
19 L17*L20*RY_P; 82 L17*L22*RY_Q; 52 L17*L25*RY_Q; 99 L17*L27*-OHD
6 L17*L27*DROP_OCR_Y; 77 L17*+OCF*DROP_OCR_Y; 25 L17*RX_P*TY_R_; 6 L18*L19*L30
28 L18*L20*L25; 64 L18*L21*L26; 42 L18*L21*-OHD; 18 L18*L23*RX_P
11 L18*L30*TY_R_; 2 L18*L32*RX_P; 9 L18*L33*RX_Q; 29 L19*L24*L29
24 L19*L28*L30; 43 L19*L29*+OCF; 12 L20*L27*L28; 30 L20*L29*RY_P
164 L21*L22*TY_R_; 1 L21*L28*L30; 5 L22*L24*L29; 134 L22*L28*RX_P
49 L23*L29*RY_P; 44 L26*L28*L31; 30 L26*L28*L32; 50 L26*L28*RX_P
13 L26*L28*TX_R_; 3 L27*L27*L30; 14 L27*L29*L31; 18 L27*L30*RY_Q
29 L27*RX_Q*DROP_OCR_Y; 21 L28*L29*+OCF; 5 L28*L30*L32; 3 L28*L31*L32
6 L28*L31*+OCF; 20 L28*L31*RX_Q; 10 L28*L31*TX_R_; 3 L28*RX_P*TX_R_
3 L29*L31*-OHD; 14 L29*L31*TY_R_; 6 L29*L32*L33; 20 L29*L32*+OCF
15 L29*L32*RY_P; 4 L29*-OHD*RY_P; 60 -OHC*L17; 38 -DPQ*L7
221 +CPQ*L4; 42 +CPQ*L7; 12 -DPR*L5; 14 -DPR*L23
39 -DQR*L4; 13 -DQR*L27; 3 -DQR*RX_Q; 137 +OCP*L1
67 +OCP*L3; 37 +OCP*L6; 18 +OCP*L19; 111 +OCP*L23
54 +OCP*L24; 12 +OCP*L32; 26 +OCP*DROP_OCR_Y; 19 -CFP*L17
126 -CDQ*L5; 93 -CDQ*L6; 32 -CDQ*L16; 85 -CDQ*L20
49 -CDQ*+OCF; 239 -CDQ*DROP_OCR_Y; 31 -CDQ*TX_R_; 3 -CFQ*L17
13 -HFR*L26; 181 -DFR*L4; 15 -DFR*L32; 9 -DFR*L33
27 +HDR*L18; 107 -FPQ*L6; 192 -FPQ*L20; 238 -FPQ*L26
166 -FPQ*L28; 12 -FPQ*L33; 215 -FPQ*-OHD; 113 -FPQ*RX_P
91 -FPQ*RY_P; 148 -FPQ*DROP_OCR_Y; 102 -FPQ*TX_R_; 73 +HPQ*L12
73 +HPQ*L13; 161 +HPQ*L20; 43 +HPQ*L25; 21 +HPQ*L33
114 +HPQ*RX_P; 128 +HPQ*RY_P; 28 +HPQ*RX_Q; 132 +HPQ*DROP_OCR_Y
121 +HPQ*TX_R_; 276 +HPQ*TY_R_; 27 +CPR*L28; 14 -PQR*L18
55 C_OPR_YQ*L29; 115 C_HFP_Q*L18; 40 C_CDP_Q*L28; 81 C_CDP_Q*L29
123 TPX_R_*L20; 13 Q_OCQR_Y*L27; 80 Q_OQRF_Y*L17; 4 Q_HCRF_YZ*L17
13 Q_HCRF_YZ*L27
```

Upper bound: `-853014947/100000000`.

### Leaf RRTmmmmppp

Assumptions: `-FPQ -CYZ -OYP -OYQ +OYR +OZR +HPQ`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCZ -YHZ
P YOHFR -YHR
P YOCZP -YZP
P YOCZQ -YZQ
P ZOHFR -ZHR
P POFQR -PQR
```

```c1top-bounds
T OCZ Y 1 lower 279/907
T OCZ Y 7 lower 279/628
B x Q 10 lower 792119/1360500
```

```c1top-box
h 347/500 1
c 307/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 291/500 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
3 L0*L0*L31; 2 L0*L6*L33; 10 L0*L7*L22; 30 L0*L16*L21
2 L0*L16*TX_R_; 20 L0*L18*TY_R_; 2 L0*L29*L31; 3 L0*L33*TX_R_
84 L0*RX_P*TY_R_; 7 L0*RY_P*TX_R_; 18 L0*RX_Q*TX_R_; 6 L1*L3*L17
2 L1*L6*L17; 13 L1*L17*L32; 161 L1*L17*TY_R_; 3 L2*L2*L27
14 L2*L4*TX_R_; 9 L2*L6*TY_R_; 2 L2*L21*L32; 30 L3*L4*L29
5 L3*L4*L33; 10 L3*L7*L28; 7 L3*L16*L22; 12 L3*L18*L24
9 L3*L18*RY_P; 185 L3*L18*TY_R_; 55 L3*L22*L25; 63 L3*L22*L28
47 L3*L22*TY_R_; 4 L3*L24*L28; 5 L3*L27*RY_Q; 6 L3*L28*-OHD
39 L4*L4*L29; 36 L4*L4*L30; 3 L4*L16*L31; 19 L4*L17*L23
20 L4*L18*L28; 8 L4*L18*L31; 13 L4*L19*TX_R_; 20 L4*L19*TY_R_
2 L4*L21*L30; 38 L4*L22*TX_R_; 26 L4*L23*L27; 48 L4*L26*L31
3 L4*L26*L33; 54 L4*L27*L27; 15 L4*L27*RY_P; 2 L4*L28*L31
26 L4*L29*+OCF; 50 L4*TX_R_*TY_R_; 83 L5*L27*+OCF; 6 L6*L17*TY_R_
22 L6*L18*L21; 154 L6*L18*TY_R_; 12 L6*L20*L23; 21 L6*L20*L28
10 L6*L27*L32; 22 L6*L33*TY_R_; 15 L7*L18*L20; 17 L7*L21*L28
26 L12*L28*TY_R_; 26 L13*L28*TY_R_; 7 L16*L27*L32; 83 L16*L28*TY_R_
28 L17*L17*L23; 1 L17*L17*TY_R_; 28 L17*L20*L28; 2 L17*L20*L33
5 L17*L25*TY_R_; 5 L17*L26*TX_R_; 7 L17*L27*RY_P; 6 L17*L27*TY_R_
2 L17*L28*RX_P; 1 L17*L31*TY_R_; 2 L17*L32*-OHD; 5 L17*RX_P*RY_Q
20 L18*L27*-OHD; 8 L18*L28*L31; 29 L18*RX_Q*TY_R_; 3 L19*L29*L32
6 L20*L27*RX_P; 1 L21*L28*L30; 2 L21*L29*L33; 7 L24*L27*L32
1 L24*L28*L30; 9 L24*L28*TY_R_; 6 L24*L33*+OCF; 27 L25*L27*RY_Q
54 L26*L26*L28; 54 L26*L27*-OHD; 24 L27*L27*+OCF; 1 L27*L29*L30
9 L27*L29*RY_P; 37 L27*L29*TY_R_; 4 L27*L33*RX_P; 7 L27*L33*TX_R_
8 L28*L29*L32; 3 L28*L29*RX_Q; 42 L28*L31*TY_R_; 9 L28*-OHD*TX_R_
3 L30*TY_R_*TY_R_; 31 TOPCOUNT*L27; 26 +ODF*L17; 3 +HCD*L17
18 +OPQ*L28; 42 -DPQ*L28; 5 +OCP; 3 +OCP*L32
3 +OCP*RX_P; 33 +OCP*RY_P; 245 +OCP*TY_R_; 23 -HFP*L18
43 +DFP*L28; 20 -CFP*L27; 33 -OHQ*L27; 58 -HFQ*L17
21 -CDQ*L1; 14 -CDQ*-OHD; 84 -CDQ*TY_R_; 9 -HFR*L26
9 -HFR*-OHD; 27 -HFR*RX_Q; 31 -HFR*RY_Q; 55 -DFR*L26
5 -DFR*L31; 4 -DFR*L32; 46 -DFR*+OCF; 87 -DFR*RY_P
23 -DFR*RX_Q; 12 -OFR*L17; 27 -FPQ*L20; 56 -FPQ*L22
56 -FPQ*L23; 101 -FPQ*-OHD; 30 -FPQ*RY_P; 383 -FPQ*TY_R_
63 +HPQ*L7; 67 +HPQ*L22; 25 +HPQ*-OHD; 47 +HPQ*+OCF
18 +HPQ*RX_P; 30 +HPQ*RY_P; 27 +HPQ*RX_Q; 67 +HPQ*RY_Q
412 +HPQ*TY_R_; 27 +FQR*L27; 91 -PQR*L4; 6 TPX_R_*L20
49 TPX_R_*L22; 4 TPX_R_*L32; 19 Q_OCDR_YZ*L17; 89 Q_OCDR_YZ*L27
26 Q_OPDR_YZQ*L7; 1 Q_OPDR_YZQ*L17; 14 Q_OPDR_YZQ*L29; 39 Q_OQDR_YZ*L6
38 Q_OQDR_YZ*L20; 4 Q_OQDR_YZ*L31; 109 Q_OQDR_YZ*TY_R_; 28 Q_CPDR_Q*L27
```

Upper bound: `-79250596099/45500000000`.

### Leaf RRTmmmmpmmm

Assumptions: `-FPQ -CYZ -OYP -OYQ +OYR -OZR -HPQ -ODY`.

```c1top-geometry
C OCD Y Z -DOZ 140829/250000
C OCZ Y R -CZR 142399/250000
P OHDFY -OFY
P OHDZP -OZP
P OHDZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P COYZR -CYR
P DOHCY +DHY
P DOCYZ -DYZ
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCZ -YHZ
P YOHCR -YHR
P YOCZP -YZP
P YOCZQ -YZQ
P YOCPR +YPR
P YOCQR +YQR
P ZOCYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCZ Y 7 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 261983/448500
B y Q 11 lower 51553/235500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 311/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 73/125 459/500
m 109/500 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
195 L0*L0*L7; 192 L0*L4*L13; 183 L0*L15*L24; 12 L0*L17*L31
15 L0*L17*DROP_OCR_Y; 147 L0*L17*TY_R_; 460 L0*L22*L27; 195 L0*L24*L28
209 L1*L2*L28; 83 L1*L6*L22; 39 L1*L6*L24; 17 L1*L6*L29
9 L1*L6*L30; 9 L1*L13*L30; 15 L1*L18*RX_P; 1 L1*L30*L31
85 L2*L5*L25; 12 L2*L5*L29; 60 L2*L6*TY_R_; 41 L2*L8*L32
24 L2*L10*L15; 22 L2*L10*L31; 66 L2*L11*L27; 47 L2*L12*L28
19 L2*L15*L17; 17 L2*L15*L32; 11 L2*L20*L32; 202 L2*L21*L28
4 L2*L24*L32; 13 L2*L27*L31; 402 L2*L27*TY_R_; 209 L2*L28*TY_R_
136 L3*L3*L18; 59 L3*L3*L27; 62 L3*L4*L24; 123 L3*L4*L27
86 L3*L5*L32; 103 L3*L7*L18; 89 L3*L10*L25; 8 L3*L12*L27
201 L3*L14*L18; 47 L3*L17*L22; 507 L3*L18*TY_R_; 22 L3*L22*L25
58 L3*L22*L32; 131 L3*L27*L28; 92 L3*L27*DROP_OCR_Y; 129 L3*L28*RX_Q
583 L4*L4*L13; 993 L4*L5*L17; 105 L4*L8*L15; 162 L4*L8*L28
112 L4*L12*L17; 179 L4*L13*L27; 44 L4*L14*L21; 54 L4*L16*L21
733 L4*L16*L27; 123 L4*L17*DROP_OCR_Y; 35 L4*L18*L30; 5 L4*L27*L30
429 L5*L5*L12; 96 L5*L8*L25; 8 L5*L8*L32; 155 L5*L10*L25
9 L5*L10*L31; 15 L5*L12*L18; 18 L5*L12*L32; 56 L5*L17*L24
806 L5*L18*L25; 460 L5*L22*L27; 10 L5*L22*L30; 1009 L5*L25*L27
64 L5*L27*L29; 19 L5*L32*RX_Q; 39 L6*L6*L15; 237 L6*L7*L28
76 L6*L8*TY_R_; 8 L6*L9*L26; 395 L6*L10*TY_R_; 8 L6*L14*L25
9 L6*L14*L30; 115 L6*L17*L22; 30 L6*L17*L26; 7 L6*L18*L31
41 L6*L26*RX_Q; 7 L6*L31*TY_R_; 383 L7*L17*L28; 20 L7*L17*L32
83 L7*L23*L28; 101 L8*L15*L27; 19 L8*L17*L22; 120 L8*L17*L27
108 L8*L17*RY_Q; 120 L8*L18*L25; 172 L8*L24*L28; 30 L8*L27*L28
209 L8*L28*L28; 2 L8*L28*L29; 24 L8*L28*L30; 29 L8*L28*RX_Q
15 L8*L32*TY_R_; 73 L9*L17*L28; 18 L9*L18*L26; 187 L9*L20*L28
38 L9*L25*L28; 225 L10*L12*TY_R_; 326 L10*L14*L25; 89 L10*L17*L20
107 L10*L18*L25; 134 L10*L20*L27; 34 L10*L28*L29; 4 L10*L28*L31
98 L11*L17*-OHD; 155 L11*L17*TY_R_; 34 L11*L27*L29; 10 L11*L28*L30
113 L12*L17*L27; 22 L12*L18*L27; 131 L12*L20*L28; 86 L12*L25*L28
128 L12*L26*L28; 11 L12*L27*L32; 156 L12*L27*DROP_OCR_Y; 21 L12*L28*L32
21 L12*L28*L33; 156 L13*L26*L27; 39 L13*L27*L29; 155 L14*L17*L22
113 L14*L17*L24; 19 L14*L17*L29; 17 L14*L17*L32; 148 L14*L17*-OHD
34 L14*L17*RY_P; 34 L14*L18*L30; 148 L14*L20*L28; 47 L15*L24*L29
55 L15*L25*L28; 101 L15*L27*RX_Q; 8 L16*L17*L26; 97 L16*L17*L28
7 L16*L18*L32; 1 L16*L28*L30; 34 L17*L17*L18; 59 L17*L17*L33
124 L17*L18*L20; 38 L17*L21*TY_R_; 122 L17*L22*L27; 59 L17*L22*RY_P
137 L17*L22*RX_Q; 707 L17*L22*DROP_OCR_Y; 89 L17*L23*TY_R_; 2 L17*L25*L33
8 L17*L28*L32; 53 L17*L33*DROP_OHP_Q; 30 L17*L33*TY_R_; 268 L18*L21*L22
227 L18*L26*RX_Q; 110 L18*L27*DROP_OHP_Q; 2 L18*L30*L30; 26 L18*L30*RX_P
70 L20*L28*TY_R_; 10 L21*L26*L30; 460 L22*L26*L28; 1 L22*L27*L31
286 L24*L25*L28; 1236 L24*L27*L27; 190 L25*L28*L29; 166 L25*L28*TY_R_
1 L25*L30*L32; 481 L25*TY_R_*TY_R_; 545 L26*L28*TX_R_; 390 L27*L27*L29
2 L27*L29*L30; 293 L27*L29*-OHD; 21 L27*L29*RX_P; 169 L27*DROP_OHP_Q*RY_P
755 L27*TX_R_*TY_R_; 49 L28*L29*DROP_OHP_Q; 275 L28*L29*DROP_OCR_Y; 3 L28*L31*L31
2 L30*L30*TY_R_; 3 L32*L32*DROP_OHP_Q; 353 QCENT*L17; 3 -OHF*L21
489 +OCD*L17; 259 +HDF*L6; 201 +CPQ*L2; 503 +CPQ*L4
70 +CPQ*L9; 126 +CPQ*L11; 131 +CPQ*L12; 457 +CPQ*L14
268 +CPQ*L23; 44 +CPQ*L29; 52 +CPQ*L30; 70 +CPQ*-OHD
258 +CPQ*DROP_OHP_Q; 229 +CPQ*DROP_OCR_Y; 18 +CPQ*TX_R_; 162 -DPR*L1
827 -DPR*L5; 120 -DPR*L8; 155 -DPR*L10; 348 -DQR*L14
9 -DQR*L30; 351 +HCY*L1; 34 +HCY*L14; 190 +HCY*L25
391 +HCY*L26; 18 +HCY*L29; 23 +HCY*L31; 142 +HCY*-OHD
161 +HCY*+OCF; 77 +HCY*RX_Q; 362 -HFY*TY_R_; 106 +DFY*L17
112 -OHZ*L17; 178 -HFZ*L1; 39 -HFZ*L7; 34 -HFZ*L10
84 -HFZ*L20; 178 -HFZ*-OHD; 558 +OCP*L1; 522 +OCP*L3
152 +OCP*L8; 126 +OCP*L10; 131 +OCP*L13; 118 +OCP*L15
287 +OCP*L20; 473 +OCP*L28; 229 +OCP*L29; 512 +OCP*DROP_OCR_Y
191 -OHQ*L17; 386 +OCQ*L17; 70 +HCQ*L27; 112 -CDQ*L9
126 -CDQ*L11; 131 -CDQ*L12; 259 -CDQ*L14; 152 -CDQ*L18
251 -CDQ*L22; 41 -CDQ*L30; 62 -CDQ*TX_R_; 67 +OCR*L27
20 -HFR*L8; 86 -HFR*L13; 286 -HFR*L25; 259 -HFR*L26
195 -HFR*-OHD; 106 -HFR*DROP_OCR_Y; 5 -DFR*L0; 49 -DFR*L8
372 -DFR*L12; 136 +HDR*L6; 34 -CYZ*L0; 192 -CYZ*L17
75 -CYZ*L32; 75 -CYZ*L33; 192 -CYZ*DROP_OHP_Q; 441 -CYZ*DROP_OCR_Y
133 -OYQ*L2; 350 -OYQ*L15; 101 -OYQ*L24; 83 -OYQ*TY_R_
48 +OYR*L18; 131 -OZR*L3; 666 -OZR*L10; 329 -OZR*L27
11 -OZR*L33; 70 -HPQ*L9; 126 -HPQ*L11; 131 -HPQ*L12
148 -HPQ*L14; 37 -HPQ*L30; 180 -HPQ*RX_P; 105 -ODY*L1
26 -ODY*L6; 330 -ODY*L14; 106 -ODY*L20; 298 -ODY*L23
282 -ODY*L24; 7 -ODY*L30; 47 -ODY*L32; 143 -ODY*RX_P
47 +ODZ*L6; 192 -CYQ*L2; 350 -CYQ*L14; 89 -CYQ*L16
101 -CYQ*L25; 51 -CYQ*L26; 340 -CYR*L15; 290 -DZR*L2
46 -DZR*L23; 39 -DZR*L25; 329 -DZR*L26; 23 -DZR*L33
128 -DZR*-OHD; 113 -DZR*RX_P; 67 -DZR*RY_P; 325 -DZR*TX_R_
286 +FZR*L24; 168 +ZQR*L4; 10 C_ODP_YQ*L9; 46 C_ODP_YQ*L10
19 C_ODP_YQ*L13; 33 C_ODP_YQ*L24; 71 C_ODP_YQ*L29; 6 C_ODP_YQ*L33
801 C_ODP_YQ*+OCF; 343 C_ODP_YQ*TY_R_; 47 C_HCZ_Y*L6; 83 TPX_R_*L22
13 Q_OCRH_Y*L27; 53 Q_OQDH_Y*L27; 84 Q_OCPD_YQ*L17; 7 Q_OCPD_YQ*L27
36 Q_OCQD_Y*L5; 70 Q_OCQD_Y*L28; 26 Q_OCPF_Q*L17; 247 Q_OCQZ_Y*TY_R_
19 Q_OPDZ_YQ*L17
```

Upper bound: `-7336787771/1000000000`.

### Leaf RRTmmmmpmmp

Assumptions: `-FPQ -CYZ -OYP -OYQ +OYR -OZR -HPQ +ODY`.

```c1top-geometry
C OCZ Y R -CZR 142399/250000
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYR -OFY
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P COYZR -CYR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCZ -YHZ
P YOHCR -YHR
P YOCDZ +YDZ
P YOCZP -YZP
P YOCZQ -YZQ
P YOCPR +YPR
P YOCQR +YQR
P ZOCYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OCZ Y 1 lower 279/907
T OCZ Y 7 lower 279/628
B x Q 10 lower 792119/1360500
```

```c1top-box
h 347/500 1
c 769/2500 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 2221/5000 907/1000
p 851/1000 1
q 37/250 5629/10000
l 2911/5000 4587/5000
m 1871/10000 1247/2000
r 3969/10000 1
t 1593/2000 1
```

```c1top-sum
56 L0*L17*L32; 553 L1*L1*L3; 180 L1*L1*L25; 211 L1*L2*L17
248 L1*L2*L32; 985 L1*L3*L3; 1137 L1*L4*L8; 1675 L1*L5*L25
2961 L1*L6*L6; 616 L1*L6*L18; 2961 L1*L6*L25; 90 L1*L6*L28
288 L1*L8*L27; 168 L1*L17*L31; 636 L1*L17*-OHD; 316 L1*L17*RY_P
616 L1*L18*L25; 186 L1*L18*L30; 91 L1*L28*L30; 1950 L2*L2*L15
682 L2*L2*L32; 2703 L2*L3*L10; 4867 L2*L4*L13; 3765 L2*L4*L28
51 L2*L4*L33; 4405 L2*L6*L15; 72 L2*L6*L32; 1015 L2*L7*L27
5035 L2*L10*L15; 1037 L2*L10*L28; 10 L2*L10*L30; 4049 L2*L12*L28
1089 L2*L15*L25; 133 L2*L15*L28; 173 L2*L17*L24; 294 L2*L17*L26
643 L2*L17*L32; 3540 L2*L22*L27; 2745 L2*L27*L28; 2934 L2*L27*L29
4816 L2*L28*L29; 1272 L3*L5*L6; 11771 L3*L5*L18; 476 L3*L6*L18
277 L3*L8*L17; 4195 L3*L8*L28; 977 L3*L10*L27; 2364 L3*L13*L27
1853 L3*L15*L27; 5412 L3*L18*L18; 10 L3*L18*L30; 1645 L3*L18*TY_R_
1007 L3*L27*L32; 912 L4*L4*L13; 598 L4*L8*L15; 1164 L4*L12*L27
6211 L4*L20*L27; 527 L4*L27*L31; 3977 L4*L28*L29; 4288 L5*L5*L5
509 L5*L5*L25; 872 L5*L5*L30; 14 L5*L6*L30; 614 L5*L8*L27
354 L5*L13*L17; 1869 L5*L17*L19; 14802 L5*L17*L22; 1340 L5*L18*L30
1934 L5*L27*L29; 180 L5*L30*L32; 2 L6*L8*L15; 412 L6*L10*L15
390 L6*L17*L17; 296 L6*L17*L18; 390 L6*L17*L20; 234 L6*L17*L32
390 L6*L17*RX_P; 955 L6*L17*RY_Q; 86 L6*L18*L30; 2961 L6*L27*L29
50 L6*L28*L30; 150 L7*L11*L17; 406 L7*L27*L32; 2 L8*L12*L27
2 L8*L15*L25; 264 L8*L17*L27; 264 L8*L17*TY_R_; 536 L8*L18*L28
1944 L8*L25*L28; 39 L8*L27*L27; 2 L8*L27*L29; 1543 L8*L27*+OCF
39 L8*L27*DROP_OCR_Y; 369 L8*L28*L28; 10 L8*L28*L30; 89 L8*L28*L32
150 L9*L15*L17; 989 L9*L15*L28; 92 L9*L17*L30; 92 L9*L17*L31
459 L9*L28*L29; 150 L10*L17*L29; 290 L10*L17*L33; 4803 L10*L28*L29
150 L11*L12*L17; 402 L11*L17*L18; 1250 L11*L17*-OHD; 1808 L11*L17*RY_Q
89 L11*L18*L30; 1221 L11*L27*L29; 179 L11*L28*L30; 1229 L12*L17*L18
615 L12*L17*L32; 875 L12*L27*RX_P; 434 L12*L28*L29; 5531 L13*L17*L22
1314 L13*L17*-OHD; 875 L13*L17*TY_R_; 1464 L15*L17*+OCF; 1164 L15*L27*L29
1604 L15*L28*L29; 530 L16*L17*-OHD; 13 L16*L27*L29; 87 L17*L17*L24
782 L17*L17*RY_Q; 84 L17*L17*TY_R_; 721 L17*L18*L19; 275 L17*L18*L32
169 L17*L18*-OHD; 1702 L17*L18*DROP_OHP_Q; 1647 L17*L20*L32; 694 L17*L20*L33
14590 L17*L22*L22; 6897 L17*L22*DROP_OCR_Y; 379 L17*L22*TX_R_; 2181 L17*L23*L28
3517 L17*L23*RX_Q; 1398 L17*L25*L28; 43 L17*L25*L30; 3170 L17*L26*TY_R_
1145 L17*L27*-OHD; 2003 L17*L27*RY_P; 3170 L17*L27*DROP_OCR_Y; 1007 L17*L28*TX_R_
730 L17*L30*RY_Q; 172 L17*L31*-OHD; 42 L17*L31*TY_R_; 167 L17*L32*RX_Q
214 L17*L33*RY_P; 6112 L17*-OHD*RX_Q; 1702 L17*RX_P*RY_P; 3536 L17*RY_P*TY_R_
390 L17*RX_Q*TX_R_; 1210 L18*L18*L30; 1686 L18*L27*L29; 180 L18*L30*L32
766 L18*L30*TY_R_; 2407 L27*L28*L29; 164 L27*L28*L30; 3652 L27*L29*RY_Q
2556 L28*L28*L29; 509 L28*L28*TX_R_; 434 L28*L29*L29; 135 L28*L30*L30
1367 QCENT*L17; 665 +OPQ*L2; 3752 +OPQ*L27; 5436 +CPQ*L1
1218 +CPQ*L6; 2411 +CPQ*L11; 2678 +CPQ*L17; 7647 +CPQ*L18
33068 +CPQ*L20; 14590 +CPQ*L22; 8860 +CPQ*L27; 2460 +CPQ*L31
2942 +CPQ*-OHD; 18037 +CPQ*TY_R_; 369 +HCY*L1; 4684 +HCY*L2
2378 +HCY*L4; 5035 +HCY*L14; 1484 +HCY*L24; 1509 +HCY*L27
10 +HCY*L31; 10 +HCY*L32; 99 +HCY*L33; 536 +HCY*RY_P
461 +HCY*TX_R_; 1314 +HCZ*L17; 857 -HFZ*L5; 6024 -HFZ*L10
434 -HFZ*L25; 295 -HFZ*L26; 4483 -HFZ*+OCF; 617 -HFZ*DROP_OCR_Y
434 -HFZ*TX_R_; 857 +DFZ*L1; 5045 +DFZ*L2; 912 +DFZ*L4
2 +DFZ*L8; 6437 +DFZ*L10; 1164 +DFZ*L26; 434 +DFZ*L29
3871 +DFZ*+OCF; 4140 +OCP*L5; 2322 +OCP*L10; 2013 +OCP*L18
709 +OCP*L28; 170 +OCP*L29; 755 +OCP*L30; 257 +DFP*L27
5499 +OCQ*L17; 1064 -CDQ*L1; 11089 -CDQ*L5; 574 -CDQ*L6
1607 -CDQ*L11; 2009 -CDQ*L16; 1163 -CDQ*L18; 14590 -CDQ*L22
1214 -CDQ*L30; 4856 -CDQ*+OCF; 2352 -CDQ*DROP_OHP_Q; 329 -HFR*L0
1959 -HFR*L3; 2693 -HFR*L5; 2961 -HFR*L6; 2 -HFR*L8
1221 -HFR*L11; 912 -HFR*L15; 616 -HFR*L18; 58 -HFR*L20
6 -HFR*L31; 391 +CDR*L17; 13520 +OYZ*L27; 461 +OYZ*L29
5035 -CYZ*L4; 150 -CYZ*L17; 61 -CYZ*L25; 15595 -CYZ*L27
6771 -CYZ*L28; 1950 -CYZ*+OCF; 16284 -CYZ*DROP_OCR_Y; 461 -CYZ*TX_R_
6668 +OYR*L4; 400 +OYR*L12; 14210 +OYR*L14; 7554 +OYR*L27
1968 +OYR*L28; 3035 +OYR*+OCF; 7554 +OYR*DROP_OCR_Y; 4535 -OZR*L4
398 -OZR*L8; 14210 -OZR*L10; 1064 -HPQ*L1; 1123 -HPQ*L3
446 -HPQ*L6; 1607 -HPQ*L11; 3578 -HPQ*L27; 246 -HPQ*L28
10927 -HPQ*RX_Q; 2106 -HPQ*DROP_OCR_Y; 431 +ODY*L12; 429 +ODY*L13
4850 +ODY*L14; 1944 +ODY*L24; 462 +ODY*L29; 10 +ODY*L31
1337 +ODY*-OHD; 6714 +ODY*+OCF; 264 +ODY*RX_P; 357 +ODY*RY_P
804 +ODY*RY_Q; 614 +ODY*TY_R_; 165 +FZR*L28; 747 -YZR*L1
1489 -YZR*L3; 5713 -YZR*L5; 1302 -YZR*L22; 145 -YZR*L33
289 -YZR*RY_P; 2934 Q_HCRF_YZ*L2; 3277 Q_HCRF_YZ*L4; 2826 Q_HCRF_YZ*L28
379 Q_HCQR_Y*L17
```

Upper bound: `-201095799919/50000000000`.

### Leaf RRTmpp

Assumptions: `-FPQ +CYZ +OYP`.

```c1top-geometry
P OHDYP -ODY
P OHDYR +OYR
P OHFYP -OFY
P OHYPQ +OYQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCP -YHP
P YOHCQ -YHQ
P YOHFR -YHR
P YOCDZ +YDZ
P YOCZP -YZP
P YOCZQ -YZQ
P YODFP -YFP
P YODFQ -YFQ
P YODPR +YPR
P YODQR +YQR
P POCYQ -PYQ
P POFQR -PQR
C OCD Y Z -DOZ 140829/250000
C OCP Y Z -POZ 14757843/41750000
C OCQ Y Z -QOZ 49035967/125250000
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCP Y 1 lower 15531/31333
T OCP Y 9 lower 279/628
T OCQ Y 11 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 32274961/46999500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 99/200 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 111/250 563/1000
l 343/500 459/500
m 111/250 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
3 L2*L4*L19; 1 L3*L18*L19; 2 L3*L18*RX_P; 1 C_OCP_Y*L4
2 C_OCP_Y*RX_P; 1 C_CDP_Q*+OCF; 1 C_CDP_Q*RX_P; 1 C_CDP_Q*RY_P
```

Upper bound: `-43132779/500000000`.

### Leaf RRTmpmp

Assumptions: `-FPQ +CYZ -OYP +OYQ`.

```c1top-geometry
P OHDYQ -ODY
P OHDYR +OYR
P OHFYQ -OFY
P OHYZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCQ -YHQ
P YOHFR -YHR
P YOCDZ +YDZ
P YOCZQ -YZQ
P YOCPQ +YPQ
P YODFQ -YFQ
P YODQR +YQR
P POFYQ +PFY
P POFYR -PYR
P POFQR -PQR
C OCD Y Z -DOZ 140829/250000
C OCQ Y Z -QOZ 49035967/125250000
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCQ Y 1 lower 139779/312331
T OCQ Y 11 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 309190727/468496500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 447/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 659/1000 459/500
m 111/250 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
2 L1*L3*L22; 3 L1*L4*L17; 1 L2*L5*L23; 3 L3*L4*L4
2 L3*L22*-OHD; 1 L3*L22*DROP_OCQ_Y; 8 L4*L4*L7; 8 L4*L7*DROP_OCQ_Y
2 L4*L17*L26; 3 L4*L17*-OHD; 1 L4*L17*+OCF; 1 L5*L16*TY_R_
1 L7*L19*DROP_OCQ_Y; 1 L27*DROP_OCQ_Y*RX_Q; 3 -DPR*L5; 2 -CDQ
2 -CDQ*L5; 1 -CDQ*TY_R_; 2 -FPQ; 1 -FPQ*DROP_OCQ_Y
3 C_OCQ_Y*RY_P; 2 C_ODP_YQ*RY_Q; 1 TPX_R_; 10 TPX_R_*L4
1 TPX_R_*L32; 1 Q_OCPQ_Y*L1; 1 Q_OCPQ_Y*-OHD; 1 Q_OCPQ_Y*DROP_OCQ_Y
1 Q_CPDR_Q*DROP_OCQ_Y
```

Upper bound: `-11636437/1000000000`.

### Leaf RRTmpmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR +HPQ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDYR +FYR
P FHDZR +FZR
P YOCDR +YCR
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POFQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
8 L17*L27; 20 L29*RY_P; 9 L0*L1*L17; 7 L0*L3*L4
15 L0*L4*L7; 2 L0*L7*L21; 4 L0*L7*L32; 36 L0*L17*L23
1 L0*L17*L33; 6 L0*L18*L31; 2 L0*L29*L32; 94 L1*L3*L18
13 L1*L5*L5; 2 L1*L5*L30; 1 L1*L7*L17; 9 L1*L16*L28
14 L1*L17*L21; 1 L1*L17*L31; 1 L1*L17*L32; 8 L1*L17*RY_P
2 L1*L28*RX_P; 13 L1*L28*RX_Q; 3 L2*L2*L33; 2 L2*L6*L33
53 L3*L18*-OHD; 27 L4*L4*L7; 4 L4*L17*L23; 26 L4*L17*TY_R_
3 L4*L29*L32; 1 L4*L29*RY_P; 6 L5*L5*L5; 4 L5*L5*L20
5 L5*L5*L25; 41 L5*L7*L18; 17 L5*L16*L17; 1 L5*L17*L27
1 L5*L17*RY_P; 5 L5*L18*L25; 2 L6*L18*L31; 2 L6*L20*L28
54 L7*L16*L28; 4 L7*L17*L18; 1 L7*L18*L30; 55 L7*L21*L28
1 L7*L28*RX_P; 8 L16*L17*L28; 1 L16*L19*L29; 25 L16*L28*RX_P
7 L16*L29*RY_P; 23 L17*+OCF*RY_Q; 23 L20*L28*+OCF; 2 L29*L32*-OHD
1 L29*-OHD*RY_P; 37 -DPQ*L7; 20 +CPQ*L4; 3 -DPR*L1
27 -DPR*L5; 3 -DPR*-OHD; 98 +OCP*L1; 6 +OCP*L16
8 +OCP*L21; 2 +OCP*L31; 29 +OCP*-OHD; 15 +HCP*L28
4 -HFP*L17; 2 +OCQ*L29; 57 -CDQ*L1; 4 -CDQ*L5
19 -CDQ*L6; 22 -CDQ*-OHD; 23 -CDQ*+OCF; 45 -FPQ*L1
25 -FPQ*L4; 23 -FPQ*L16; 115 -FPQ*-OHD; 53 +HPQ*L1
61 +HPQ*L7; 66 +HPQ*-OHD; 23 +HPQ*RX_P; 8 C_CDP_Q*L0
9 C_CDP_Q*L3; 11 C_CDP_Q*L7; 6 TPX_R_*L1; 6 TPX_R_*-OHD
22 TPX_R_*RY_P; 2 Q_OCPF_Q*L17
```

Upper bound: `-75215953/40000000`.

### Leaf RRTmpmmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ -YZP +YZQ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDYR +FYR
P FHDZR +FZR
P YOCDR +YCR
P YODZP +YDZ
P YODZR -YZR
P YODPR +YPR
P YODQR +YQR
P YOZPQ -YPQ
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P ZOYPQ -ZPQ
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
52 L0*L3*TY_R_; 76 L0*L4*L15; 8 L0*L5*L25; 57 L0*L7*L15
2 L0*L11*L11; 58 L0*L12*L17; 72 L0*L12*RX_Q; 8 L0*L12*TX_R_
171 L0*L15*L29; 28 L0*L17*L17; 37 L0*L25*L27; 3 L0*L25*L30
223 L0*L28*L29; 22 L1*L2*RY_Q; 101 L1*L2*TX_R_; 16 L1*L4*L4
25 L1*L5*L9; 2 L1*L5*L22; 8 L1*L5*L30; 209 L1*L6*L6
118 L1*L6*L10; 255 L1*L6*L26; 3 L1*L8*L30; 30 L1*L9*L20
2 L1*L10*L10; 17 L1*L11*L17; 70 L1*L14*L29; 39 L1*L17*L30
1 L1*L19*L27; 17 L1*L19*+OCF; 2 L1*L20*L32; 76 L1*L20*+OCF
279 L1*L22*L25; 217 L1*L22*TY_R_; 30 L1*L23*L29; 2 L1*L30*RY_Q
29 L2*L2*L33; 26 L2*L5*L12; 128 L2*L5*L28; 13 L2*L7*L28
17 L2*L8*L27; 45 L2*L9*L28; 28 L2*L11*L12; 103 L2*L12*TY_R_
264 L2*L14*RY_P; 8 L2*L18*L30; 50 L2*L19*RY_Q; 53 L2*RX_Q*TY_R_
38 L3*L8*L18; 145 L3*L10*L17; 127 L3*L12*L28; 154 L3*L14*L17
101 L3*L15*L18; 120 L3*L17*L32; 50 L3*L17*L33; 84 L3*L18*L32
76 L3*L27*L32; 42 L3*L28*RX_P; 8 L3*L31*L32; 288 L4*L5*L12
15 L4*L5*L32; 28 L4*L9*L29; 5 L4*L12*L33; 86 L4*L12*RY_P
242 L4*L15*L24; 148 L4*L15*RX_Q; 85 L4*L17*L18; 16 L4*L17*-OHD
295 L4*L17*RX_Q; 37 L4*L24*L27; 15 L5*L5*L32; 1 L5*L5*L33
81 L5*L6*L29; 17 L5*L9*L10; 50 L5*L9*L27; 7 L5*L10*L17
152 L5*L12*L25; 53 L5*L13*L19; 85 L5*L13*RX_Q; 89 L5*L14*L25
62 L5*L14*L30; 76 L5*L15*-OHD; 99 L5*L17*L24; 95 L5*L17*L29
31 L5*L18*L21; 9 L5*L20*L30; 95 L5*L25*+OCF; 40 L5*L25*TY_R_
15 L5*L27*-OHD; 4 L5*L27*RY_P; 16 L5*L28*TY_R_; 15 L5*L30*L32
62 L6*L6*L27; 45 L6*L8*L27; 3 L6*L10*TY_R_; 27 L6*L11*L15
30 L6*L12*TY_R_; 141 L6*L14*L17; 13 L6*L14*TY_R_; 81 L6*L25*TY_R_
14 L6*L26*RY_P; 1 L6*L32*RY_Q; 235 L6*-OHD*TY_R_; 67 L7*L7*L28
25 L7*L8*L15; 35 L7*L13*L17; 37 L7*L18*L27; 1 L7*L25*L28
25 L8*L10*TY_R_; 14 L8*L12*L15; 58 L8*L15*L25; 4 L8*L15*L29
34 L8*L15*RX_P; 113 L8*L17*L27; 3 L8*L17*L32; 120 L8*L18*L25
3 L8*L18*L30; 3 L8*L27*L32; 4 L9*L10*L32; 17 L9*L11*L27
1 L9*L15*L31; 12 L9*L17*L19; 80 L9*L25*L27; 45 L9*L28*TX_R_
3 L9*L30*L32; 3 L9*L33*TY_R_; 7 L10*L10*L25; 58 L10*L12*L25
75 L10*L12*L28; 1 L10*L12*L30; 78 L10*L14*L17; 12 L10*L17*L17
75 L10*L17*L26; 82 L10*L17*TX_R_; 1 L10*L20*L32; 80 L10*L25*L25
11 L10*L28*L29; 3 L10*L30*L30; 4 L11*L11*L30; 89 L11*L17*L24
17 L11*L19*L29; 75 L11*L27*DROP_OHP_Q; 18 L12*L12*RY_P; 5 L12*L13*L26
22 L12*L14*L28; 36 L12*L15*TY_R_; 93 L12*L17*L26; 105 L12*L17*RY_P
343 L12*L17*RY_Q; 150 L12*L18*TY_R_; 28 L12*L19*L30; 103 L12*L27*L29
5 L12*L28*L33; 164 L12*L28*TX_R_; 18 L13*L14*L17; 5 L13*L14*L25
2 L13*L24*L32; 8 L13*L32*L32; 1738 L14*L17*L22; 90 L14*L17*L25
16 L14*L17*L32; 19 L14*L17*-OHD; 154 L14*L17*RX_P; 150 L14*L17*TY_R_
95 L14*L29*L29; 24 L14*L30*+OCF; 36 L15*L15*L24; 149 L15*L17*L21
60 L15*L18*L21; 14 L15*L18*L31; 116 L15*L20*L21; 17 L15*L21*L24
126 L15*L22*L31; 481 L15*L22*RX_Q; 113 L15*L27*L32; 2 L15*L30*L30
3 L15*L31*RX_Q; 38 L15*L32*L32; 38 L15*L32*L33; 38 L15*L32*+OCF
14 L15*L32*RX_P; 113 L15*L32*TY_R_; 17 L16*L21*TY_R_; 20 L16*L28*L29
53 L16*L32*TY_R_; 139 L17*L17*L22; 74 L17*L18*L24; 124 L17*L18*RX_Q
67 L17*L21*L23; 30 L17*L21*L32; 808 L17*L22*+OCF; 15 L17*L23*L32
114 L17*L26*RY_P; 11 L17*L26*TX_R_; 45 L17*L27*L33; 39 L17*L28*L30
9 L17*L32*L32; 27 L17*-OHD*RX_P; 106 L18*L18*L25; 23 L18*L21*L30
37 L18*L21*TY_R_; 3 L18*L25*L25; 4 L18*L26*L32; 9 L18*L30*L32
15 L18*L30*RY_Q; 36 L19*L23*L27; 32 L21*L27*L30; 24 L21*L27*L31
3 L21*L28*DROP_OHP_Q; 283 L22*L22*TY_R_; 35 L22*L25*L25; 279 L22*L25*L28
18 L22*L27*L30; 220 L22*L28*TY_R_; 31 L22*L33*TY_R_; 2 L23*L29*RY_P
4 L24*L25*L32; 3 L24*L28*L30; 66 L25*L28*L29; 7 L25*L32*+OCF
17 L27*L28*L30; 2 L27*L30*L33; 6 L27*RY_P*RY_P; 18 L28*L28*L29
9 L28*L29*L32; 155 L28*L29*RY_Q; 167 L28*L29*TX_R_; 31 L28*L29*TY_R_
8 L28*L30*+OCF; 64 L28*RX_Q*TY_R_; 31 L29*L33*TY_R_; 1 L30*L31*TY_R_
7 L32*RY_P*TY_R_; 75 TOPCOUNT*L15; 54 TOPCOUNT*L25; 171 -OHF*L29
107 +HDF*L2; 247 +HDF*L6; 35 +OPQ*L0; 238 +OPQ*L8
663 +OPQ*L13; 93 +OPQ*L14; 62 +OPQ*L18; 996 +OPQ*L22
215 +OPQ*+OCF; 49 +CPQ*L3; 73 +CPQ*L27; 273 -DPR*L5
69 -DPR*L8; 48 -DPR*L12; 74 -DPR*L16; 475 -DPR*L22
11 -DPR*L25; 53 -DPR*L33; 15 -DPR*+OCF; 29 -OHY*L29
19 +OCY*TY_R_; 7 -HFY*L16; 17 -HFY*L19; 10 -HFY*L27
19 +CDY*L1; 76 +DFY*L17; 487 +OCZ*L17; 14 +HCZ*L17
241 +HCZ*L28; 29 -HFZ*L8; 121 -HFZ*L10; 22 -HFZ*L14
292 -HFZ*L20; 490 -HFZ*L21; 241 -HFZ*-OHD; 198 -HFZ*RX_Q
48 -HFZ*RY_Q; 171 -HFZ*TX_R_; 79 +DFZ*L1; 133 +DFZ*L7
22 +DFZ*L14; 19 +DFZ*L24; 13 +DFZ*L27; 36 +DFZ*L33
34 -HFP*TY_R_; 114 +OCQ*L8; 144 +OCQ*L13; 1033 +OCQ*L14
566 +OCQ*L19; 535 +OCQ*L23; 78 +OCQ*L24; 476 +OCQ*L27
78 +OCQ*L31; 47 +OCQ*L33; 91 +OCQ*RX_Q; 83 -CDQ*L13
814 -CDQ*L14; 74 -CDQ*L19; 1 -CDQ*L20; 259 -CDQ*L23
6 -CDQ*L28; 132 -CDQ*L32; 284 -CDQ*+OCF; 11 -HFR*L5
72 -HFR*L6; 45 -HFR*L9; 13 -HFR*L16; 37 -HFR*L26
8 +CDR*L6; 3 +ODR*TY_R_; 10 +HDR*L11; 13 +HDR*L16
41 +OYZ*L30; 116 +CYZ*L17; 109 -OYR*L3; 8 -OYR*L11
37 -OYR*L12; 129 -OYR*L14; 44 -OYR*L16; 80 -OYR*L25
101 -OYR*RY_P; 72 -HPQ*L12; 58 -YZP*L12; 85 -YZP*L13
380 -YZP*L14; 22 -YZP*L16; 328 -YZP*L23; 52 -YZP*L24
19 -YZP*L28; 587 -YZP*+OCF; 535 -YZP*RX_Q; 227 +YZQ*L2
89 +YZQ*L4; 17 +YZQ*L6; 35 +YZQ*L11; 380 +YZQ*L14
644 +YZQ*L19; 204 +YZQ*L21; 41 +YZQ*L32; 626 +YZQ*DROP_OHP_Q
17 +YZQ*TX_R_; 32 +ODY*L15; 13 +ODY*L18; 178 +ODY*L27
18 +ODY*L29; 5 +ODY*L30; 89 +ODZ*L17; 17 -CYQ*L25
30 -CYQ*L28; 5 +DYP*L1; 43 +DYQ*L15; 19 -DYR*L5
19 -DZR*L0; 23 -DZR*L9; 18 -DZR*L13; 36 -DZR*L15
19 -DZR*L24; 3 -DZR*L31; 53 -DZR*RY_P; 8 +FYR*L28
94 +FZR*L10; 19 +FZR*L24; 134 +FZR*L29; 36 +FZR*L32
141 +FZR*RX_P; 48 +FZR*RY_Q; 63 -CYR*L2; 19 -CYR*L11
28 -DYZ*L22; 129 -DYZ*L27; 19 -YZR*L1; 35 -YZR*L11
13 -YZR*L12; 101 -YZR*RY_P; 28 +YPR*L2; 30 -YPQ*L0
373 -YPQ*L12; 246 -YPQ*L15; 262 -YPQ*L22; 13 -YPQ*L32
26 C_ODZ_Y*L1; 103 C_OZP_YQ*L2; 150 C_OZP_YQ*TY_R_; 3 C_OZR_Y*L30
25 C_CYP_Q*L18; 117 C_CZP_YQ*L20; 576 C_CZP_YQ*L22; 143 C_CZP_YQ*L26
143 C_CZP_YQ*L32; 143 C_CPR_Q*L15; 122 C_ZPQ_Y*L4; 373 C_ZPQ_Y*L9
704 C_ZPQ_Y*L10; 380 C_ZPQ_Y*L15; 139 C_ZPQ_Y*L16; 255 C_ZPQ_Y*L18
204 C_ZPQ_Y*L20; 53 TPY_R_*L5; 100 TPY_R_*L25; 306 Q_OCDZ_Y*L17
8 Q_OCPY_Q*L10; 7 Q_OCPY_Q*L12; 9 Q_OCPZ_YQ*L12; 31 Q_DRZQ_Y*L32
```

Upper bound: `-6985874673/200000000`.

### Leaf RRTmmmmppmm

Assumptions: `-FPQ -CYZ -OYP -OYQ +OYR +OZR -HPQ -YZR`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCZ -YHZ
P YOHFR -YHR
P YOCZP -YZP
P YOCZQ -YZQ
P YOCZR +YCR
P YOCPR +YPR
P YOCQR +YQR
P YCDZR +YDZ
P ZOHFR -ZHR
P ZOCYR +ZCR
P ZOCPR +ZPR
P ZOCQR +ZQR
P POHQR -PQR
```

```c1top-bounds
```

Exclusion: `area_cap OCR YZ 157/250 347/500`.

### Leaf RRTmmmmppmpm

Assumptions: `-FPQ -CYZ -OYP -OYQ +OYR +OZR -HPQ +YZR -ODY`.

```c1top-geometry
C OCD Y Z -DOZ 140829/250000
P OHDFY -OFY
P OHDZP -OZP
P OHDZQ -OZQ
P OHFZR -OFZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYZ -DYZ
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCZ -YHZ
P YOHFR -YHR
P YOCZP -YZP
P YOCZQ -YZQ
P YOFZR -YFZ
P ZOHFR -ZHR
P POHQR -PQR
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCZ Y 7 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 261983/448500
B y Q 11 lower 51553/235500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 311/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 73/125 459/500
m 109/500 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
15 L17*L24; 16 L0*L1*L31; 20 L0*L2*L13; 185 L0*L3*L8
93 L0*L3*+OCF; 62 L0*L6*L30; 71 L0*L6*L32; 43 L0*L6*TX_R_
25 L0*L8*L13; 31 L0*L8*L21; 25 L0*L9*L13; 171 L0*L17*L22
64 L0*L17*L30; 271 L0*L18*L25; 47 L0*L20*L27; 37 L0*L24*L31
8 L0*L30*RY_Q; 379 L1*L6*TY_R_; 87 L1*L14*L22; 301 L1*L17*L26
17 L1*L27*RX_P; 111 L1*L28*RX_P; 472 L2*L6*TY_R_; 342 L2*L10*L28
3 L2*L17*L31; 144 L2*L21*L28; 346 L2*L28*RY_Q; 3 L3*L3*L30
40 L3*L4*L9; 319 L3*L4*L11; 104 L3*L4*L14; 3018 L3*L4*L22
79 L3*L4*L29; 316 L3*L4*RY_P; 81 L3*L6*L10; 5 L3*L6*L30
114 L3*L8*L27; 218 L3*L12*L18; 5 L3*L14*RX_Q; 10 L3*L17*RX_P
781 L3*L18*L23; 1055 L3*L18*L26; 267 L3*L18*RY_P; 2852 L3*L22*L27
1 L3*L24*L31; 219 L3*L24*-OHD; 3 L3*L24*+OCF; 2 L3*L30*L31
19 L3*L30*-OHD; 1 L3*L30*TX_R_; 476 L4*L5*L17; 57 L4*L6*L31
323 L4*L6*TY_R_; 29 L4*L7*L14; 63 L4*L8*L31; 59 L4*L9*L22
3 L4*L9*L33; 167 L4*L9*TY_R_; 556 L4*L10*L17; 4 L4*L10*L31
170 L4*L12*L28; 8 L4*L13*L31; 68 L4*L14*L28; 4 L4*L15*L31
327 L4*L17*L28; 150 L4*L17*RX_P; 446 L4*L18*L29; 18 L4*L20*L32
135 L4*L24*L33; 150 L4*L27*DROP_OHP_Q; 1 L4*L30*L31; 58 L4*RX_Q*TY_R_
90 L5*L6*RX_P; 106 L5*L8*L10; 158 L5*L8*L17; 52 L5*L12*L17
59 L5*L17*L30; 890 L5*L28*L29; 2 L6*L7*L15; 114 L6*L8*L23
4 L6*L8*L32; 854 L6*L8*TY_R_; 56 L6*L13*L27; 2 L6*L14*L29
7 L6*L14*L30; 1 L6*L14*L31; 2 L6*L17*L33; 6 L6*L18*L30
595 L6*L22*L27; 333 L6*L26*L28; 57 L6*L27*L33; 34 L6*L27*TX_R_
31 L6*L30*TY_R_; 7 L6*L31*+OCF; 16 L6*L31*RX_Q; 133 L7*L11*L27
21 L7*L16*L18; 97 L7*L17*L19; 80 L7*L18*RX_Q; 121 L7*L21*L27
11 L8*L11*L28; 448 L8*L17*L22; 482 L8*L17*RY_Q; 58 L8*L19*L28
79 L8*L23*L27; 125 L8*L25*L27; 48 L8*L27*L27; 57 L8*L27*L31
3 L8*L28*L30; 169 L8*L28*+OCF; 96 L9*L10*L27; 114 L9*L17*TY_R_
37 L9*L18*L32; 13 L9*L22*L32; 77 L9*L22*RX_Q; 14 L9*L23*L28
29 L9*L28*L32; 96 L10*L10*L25; 114 L10*L17*L24; 46 L10*L17*L32
331 L10*L17*+OCF; 12 L10*L25*L30; 31 L10*L27*L30; 260 L10*L27*L32
48 L10*L27*TX_R_; 1 L10*L30*L30; 1 L10*L30*L32; 4 L11*L17*L17
439 L11*L17*L22; 62 L11*L17*L27; 451 L11*L17*RY_P; 198 L11*L24*L24
68 L11*L24*L28; 45 L11*L24*L30; 260 L11*L27*L32; 28 L12*L17*L19
81 L12*L20*L28; 53 L12*L22*L27; 182 L12*L27*L27; 80 L13*L17*L23
14 L13*L17*L32; 12 L13*L17*TY_R_; 45 L13*L18*RX_Q; 56 L13*L21*L27
56 L13*L27*L29; 4 L13*L28*L30; 119 L14*L17*L26; 218 L14*L17*-OHD
25 L14*L27*L31; 229 L14*L27*RX_Q; 182 L14*L27*TX_R_; 6 L14*L30*TX_R_
21 L15*L17*RY_Q; 170 L15*L17*TY_R_; 21 L15*L18*L21; 25 L15*L24*L29
4 L15*L28*L31; 10 L15*L28*L33; 19 L15*L28*RY_P; 71 L16*L17*L22
127 L16*L17*L28; 173 L16*L27*L29; 92 L16*L27*RX_Q; 1 L16*L30*L32
92 L17*L20*L27; 1279 L17*L22*L22; 1395 L17*L22*RY_Q; 33 L17*L25*TY_R_
354 L17*L27*L27; 466 L17*L27*TY_R_; 43 L17*L28*L29; 57 L17*L32*RX_P
433 L17*L32*TY_R_; 65 L17*L33*DROP_OHP_Q; 10 L17*+OCF*DROP_OHP_Q; 488 L17*RY_P*RY_Q
116 L18*L21*L22; 441 L18*L30*TY_R_; 27 L20*L23*L28; 503 L20*L27*TY_R_
59 L21*L28*L33; 16 L21*L29*L30; 2 L21*L30*L32; 1 L22*L30*L33
33 L24*L27*+OCF; 33 L24*L27*RX_P; 33 L24*L28*L31; 112 L27*L27*L29
4 L27*L31*L32; 56 L27*L31*TY_R_; 34 L27*L32*RX_Q; 34 L28*L29*L29
52 L28*L29*L32; 70 L28*L30*TX_R_; 4 L28*L31*L32; 1 L32*L32*RX_Q
279 QCENT*L28; 1228 -OHF*L1; 43 -OHF*L25; 19 -OHF*L33
39 -OHF*+OCF; 11 -OHF*RX_Q; 994 -OHF*TY_R_; 126 +OCD*L28
81 +CPQ*L7; 226 +CPQ*L12; 226 +CPQ*L13; 53 +CPQ*L14
468 +CPQ*L18; 27 +CPQ*L23; 121 +CPQ*-OHD; 3313 +CPQ*TY_R_
271 -DPR*L28; 331 +HCY*L1; 34 +HCY*L2; 11 +HCY*L10
248 +HCY*L22; 429 +HCY*L25; 17 +HCY*L27; 9 -HFY*L6
332 +CDY*L17; 53 -OHZ*L17; 153 -HFZ*L4; 752 +OCP*L3
665 +OCP*L10; 952 +OCP*L11; 173 +OCP*L12; 115 +OCP*L14
435 +OCP*L19; 288 +OCP*L20; 201 +OCP*RX_P; 752 +OCP*RY_P
493 +DFP*L27; 155 -ODP*L27; 874 +OCQ*L17; 139 -CDQ*L11
125 -CDQ*RX_Q; 686 -OFQ*L27; 573 -HDQ*L17; 84 -HFR*L4
198 -HFR*L8; 189 -HFR*L9; 85 -HFR*L11; 949 -HFR*-OHD
844 -DFR*L8; 85 -DFR*L12; 182 -DFR*L14; 206 -DFR*L17
1582 -DFR*L20; 34 -DFR*L25; 112 -DFR*L27; 158 -DFR*L31
17 +OYZ*L6; 7 +OYZ*L28; 608 -FPQ*L27; 111 -CYZ*L4
53 -CYZ*L10; 140 -CYZ*L27; 5 -CYZ*RX_Q; 74 -OYP*L18
42 -OYQ*L10; 7 -OYQ*L31; 120 -OYQ*RY_Q; 372 -HPQ*L3
45 -HPQ*L12; 32 -HPQ*L14; 47 -HPQ*L27; 59 -HPQ*L29
11 -HPQ*L32; 143 -HPQ*-OHD; 17 +YZR*L1; 53 +YZR*L10
36 +YZR*L18; 87 +YZR*L27; 18 +YZR*L32; 111 +YZR*RY_Q
78 -ODY*L1; 296 -ODY*L24; 59 -ODY*L26; 9 -ODY*L30
17 -ODY*L32; 28 -ODY*+OCF; 17 +ODZ*TX_R_; 38 -CYQ*L7
42 -CYQ*L11; 53 -CYQ*L14; 77 -CYQ*L20; 43 -CYQ*L29
10 -CYQ*L31; 306 -CYQ*RY_P; 278 -CYQ*TY_R_; 7 -HDY*L17
17 -DYZ*L6; 80 -DYZ*L14; 80 -DYZ*L15; 5 -DYZ*L21
5 -DYZ*+OCF; 53 +DZQ*L10; 170 -DZR*L4; 85 -DZR*L7
95 -DZR*L26; 6 -DZR*L31; 44 -DZR*+OCF; 10 +HYZ*L28
17 +HZR*L0; 38 C_OCZ_Y*L27; 222 C_ODP_YQ*L2; 149 C_ODP_YQ*L14
42 C_ODP_YQ*L32; 349 C_ODP_YQ*+OCF; 437 C_ODP_YQ*DROP_OHP_Q; 890 C_ODP_YQ*RY_P
136 C_OFP_Q*L17; 254 C_CDP_Q*L18; 198 C_DYR_Z*L6; 42 C_DYR_Z*L10
53 C_DYR_Z*L14; 515 C_DYR_Z*L20; 754 C_DYR_Z*L22; 918 C_DYR_Z*L23
88 C_DYR_Z*RY_Q; 198 C_DYR_Z*TX_R_; 135 C_DYR_Z*TY_R_; 1029 TPX_R_*L4
968 TPX_R_*L23; 52 TPX_R_*L25; 34 TPY_R_*L6; 7 Q_OCZH_Y*L28
15 Q_OCDZ_Y*L2; 58 Q_OCQD_Y*L27; 10 Q_OYDF_Z*L28; 53 Q_OYDR_Z*L10
21 Q_OQDZ_Y*L21; 131 Q_HCQD_Y*L28; 33 Q_CPDY_Q*L18; 169 Q_CPDZ_Q*L18
81 Q_CPDR_Q*L17
```

Upper bound: `-19696032169/1000000000`.

### Leaf RRTmmmmppmpp

Assumptions: `-FPQ -CYZ -OYP -OYQ +OYR +OZR -HPQ +YZR +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYR -OFY
P OHFZR -OFZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCZ -YHZ
P YOHFR -YHR
P YOCDZ +YDZ
P YOCZP -YZP
P YOCZQ -YZQ
P YOFZR -YFZ
P ZOHFR -ZHR
P POHQR -PQR
```

```c1top-bounds
T OCZ Y 1 lower 279/907
T OCZ Y 7 lower 279/628
B x Q 10 lower 792119/1360500
```

```c1top-box
h 347/500 1
c 307/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 291/500 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
49 L4*L15; 186 L20*L27; 25 L0*L3*RX_Q; 77 L0*L4*L21
67 L0*L7*L17; 18 L0*L10*TX_R_; 388 L0*L13*L27; 194 L0*L17*L26
1501 L0*L28*TX_R_; 30 L1*L2*L27; 15 L1*L6*L6; 42 L1*L6*L20
126 L1*L6*L22; 42 L1*L12*L17; 93 L2*L2*L15; 71 L2*L2*L27
41 L2*L2*L33; 236 L2*L4*L13; 38 L2*L5*L8; 181 L2*L9*L28
136 L2*L14*L17; 72 L2*L15*TY_R_; 602 L2*L22*L27; 30 L2*L23*L28
156 L2*L28*+OCF; 6 L2*L33*L33; 42 L3*L4*L10; 80 L3*L6*L10
163 L3*L15*L27; 178 L3*L17*L26; 119 L3*L18*L21; 578 L3*L18*L22
356 L3*L24*L28; 71 L3*L27*L29; 1187 L3*L27*TY_R_; 351 L4*L4*L17
90 L4*L6*L13; 48 L4*L6*RY_P; 66 L4*L10*L17; 66 L4*L13*L16
242 L4*L17*L22; 184 L4*L17*L24; 268 L4*L17*L25; 114 L4*L17*L28
108 L4*L17*L32; 374 L4*L19*RY_Q; 282 L4*L24*L27; 1576 L4*L24*TY_R_
1915 L4*L26*L28; 1960 L4*L27*L28; 58 L4*L27*RY_Q; 690 L4*L29*TY_R_
1 L4*L31*L32; 14 L4*L31*TY_R_; 13 L5*L18*L28; 33 L5*L18*L30
147 L5*L27*TX_R_; 63 L6*L6*L15; 136 L6*L15*L16; 1 L6*L16*L30
5 L6*L17*L20; 252 L6*L17*-OHD; 18 L6*L27*RY_P; 76 L7*L10*L17
198 L7*L14*L27; 185 L7*L17*L28; 18 L7*L17*L32; 3 L7*L17*+OCF
3 L7*L18*L28; 3 L8*L14*L17; 14 L8*L16*L17; 77 L9*L17*L22
9 L9*L17*L33; 14 L9*L17*DROP_OHP_Q; 21 L9*L21*L27; 2 L9*L27*L30
46 L9*L27*+OCF; 11 L9*L28*L28; 3 L10*L13*L17; 9 L10*L17*L31
77 L10*L17*RX_Q; 76 L11*L17*L29; 22 L11*L17*L32; 22 L11*L17*L33
205 L11*L27*+OCF; 133 L12*L16*L27; 21 L12*L28*L30; 7 L13*L17*L32
7 L13*L17*L33; 74 L13*L27*-OHD; 190 L13*L28*RX_Q; 80 L15*L24*L29
106 L16*L18*L27; 505 L16*L26*L27; 33 L17*L17*L23; 20 L17*L18*L22
37 L17*L18*-OHD; 23 L17*L21*L33; 421 L17*L22*L22; 310 L17*L22*L28
125 L17*L22*DROP_OHP_Q; 57 L17*L25*L26; 92 L17*L25*RY_Q; 178 L17*L26*L29
194 L17*L27*-OHD; 12 L17*L28*L31; 178 L17*L29*RY_Q; 76 L17*L30*RY_Q
102 L17*L32*+OCF; 53 L17*L32*RX_Q; 133 L17*L32*TY_R_; 2 L17*L33*L33
159 L17*RX_P*RY_Q; 390 L17*RY_Q*TY_R_; 10 L18*L18*L30; 113 L18*L18*RX_Q
13 L18*L18*TY_R_; 438 L18*L20*L27; 37 L18*L20*L28; 433 L18*L22*L27
374 L18*L22*TY_R_; 81 L18*L24*RX_Q; 13 L18*L28*RY_P; 7 L18*L30*L32
31 L19*L25*L27; 117 L19*L27*RX_P; 310 L20*L22*L28; 50 L20*L28*L29
58 L20*L28*TX_R_; 139 L21*L27*TY_R_; 57 L24*L27*RX_P; 888 L25*L27*L28
19 L25*L27*L30; 19 L25*L27*L31; 505 L27*L27*DROP_OHP_Q; 1327 L27*L29*TY_R_
139 L27*L30*RY_P; 6 L27*L32*RY_P; 15 L27*L32*TX_R_; 35 L27*+OCF*RY_Q
139 L28*L29*RY_Q; 23 L28*L33*TX_R_; 409 -OHF*L1; 78 -OHF*L11
28 -OHF*L12; 15 -OHF*L25; 39 -OHF*L26; 13 -OHF*L29
2 -OHF*L33; 1189 -OHF*TY_R_; 105 +OPQ*L2; 528 +CPQ*L5
140 +CPQ*L16; 1406 +CPQ*L22; 810 +CPQ*L26; 76 +CPQ*L32
135 +CPQ*L33; 1116 +CPQ*+OCF; 48 -OHY*L27; 83 +OCY*L15
45 +OCY*L24; 64 +HCY*L3; 245 +HCY*+OCF; 30 +HCY*TY_R_
28 -HFZ*L6; 92 +DFZ*L1; 3 +DFZ*L16; 688 +OCP*L3
44 +OCP*L19; 81 +OCP*L24; 120 +OCP*L30; 153 -OHQ*L17
14 +OCQ*L6; 768 +OCQ*L17; 14 -CDQ*L7; 521 -CDQ*L16
332 -CDQ*L18; 225 -CDQ*L20; 431 -CDQ*L22; 1383 -CDQ*L26
169 -CDQ*L28; 25 -CDQ*L31; 134 -CDQ*TY_R_; 53 -CFQ*L17
586 -HFR*L14; 647 -HFR*L22; 1276 -HFR*L26; 1910 -HFR*L28
23 -HFR*L33; 150 -HFR*RX_Q; 647 -HFR*RY_Q; 80 -DFR*L12
150 -DFR*L21; 344 -DFR*L22; 992 -DFR*L28; 46 -DFR*DROP_OHP_Q
53 +OYZ*L1; 627 +OYZ*L20; 235 +OYZ*L26; 27 +OYZ*L30
96 +OYZ*L31; 80 +OYZ*TX_R_; 36 -FPQ*L17; 257 -CYZ*L5
80 -CYZ*L7; 136 -CYZ*L16; 80 -CYZ*L24; 235 -CYZ*L26
62 -CYZ*L32; 62 -CYZ*L33; 93 -CYZ*+OCF; 111 -HPQ*L20
806 -HPQ*L22; 331 -HPQ*L23; 92 -HPQ*L25; 12 -HPQ*L31
18 -HPQ*L33; 18 +YZR*L1; 34 +YZR*L2; 21 +YZR*L5
15 +ODY*L4; 247 +ODY*L20; 27 +ODY*L28; 27 +ODY*L31
317 -OFZ*L27; 139 +CQR*L27; 17 +DYP*L17; 319 -DZR*L2
11 -DZR*L6; 93 -DZR*L28; 423 +FZR*L1; 148 +FZR*L2
90 +FZR*L6; 64 +FZR*DROP_OHP_Q; 68 +FZR*RX_P; 72 +FZR*TY_R_
21 +HYZ*L4; 72 +FYZ*L28; 205 +HZR*L2; 72 +HZR*L27
83 C_OCZ_Y*L10; 35 C_ODZ_Y*L24; 1 C_ODZ_Y*RX_P; 183 C_ODP_Q*L27
94 C_ODR_YZ*L2; 194 C_ODR_YZ*L22; 9 C_ODR_YZ*L30; 389 C_ODR_YZ*-OHD
152 C_ODR_YZ*DROP_OHP_Q; 606 C_ODR_YZ*TY_R_; 5 C_DYR_Z*L17; 14 TPX_R_*RX_Q
22 Q_OPDZ_YQ*L28; 88 Q_CPDY_Q*L2; 25 Q_DRFY_Z*L0; 21 Q_DRFY_Z*L27
```

Upper bound: `-153830163/200000000`.

### Leaf RRTmpmmmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ -YZP -YZQ +OFY`.

```c1top-geometry
C OHF Y Z +FOZ 157/250
P OHDFY +ODY
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
```

```c1top-bounds
```

Exclusion: `gp OHFYZ`.

### Leaf RRTmpmmmmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ -YZP -YZQ -OFY +OFZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHDYR +ODY
P OHDZP -OZP
P OHDZQ -OZQ
P OHFZR -OZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR +FZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P YOCDR +YCR
P YODZP +YDZ
P YODZR -YZR
P YODPR +YPR
P YODQR +YQR
P YOFZP -YFP
P YOFZQ -YFQ
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
C HCF Z Y -CFY 157/250
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCP - 1 lower 5177/31333
S R - 2 upper 628/721
X R - 12 lower 29729/51000
Y R - 13 lower 296687/360500
B x Q 10 lower 70939883/140998500
B y Q 11 upper 329963279/541831500
O fc - 1 lower 279/1000
B x Q 10 lower 1699/3000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 283/500 459/500
m 187/1000 609/1000
r 291/500 1
t 411/500 1
```

```c1top-sum
45 L0*L0*L29; 119 L0*L3*L29; 63 L0*L11*L29; 15 L0*L12*L30
5 L0*L17*TY_R_; 23 L0*L24*L29; 19 L0*L29*DROP_OHP_Q; 20 L1*L2*L12
66 L1*L2*L20; 17 L1*L3*L31; 5 L1*L4*L8; 44 L1*L4*L25
1 L1*L4*L31; 55 L1*L4*+OCF; 16 L1*L5*L13; 4 L1*L5*L16
28 L1*L5*L21; 2 L1*L5*L26; 62 L1*L6*L10; 4 L1*L6*L23
10 L1*L6*RY_P; 7 L1*L7*L31; 5 L1*L8*L15; 28 L1*L10*L17
4 L1*L11*L31; 5 L1*L12*L18; 19 L1*L12*L25; 73 L1*L17*L17
145 L1*L20*L25; 2 L1*L25*L33; 17 L1*L25*TY_R_; 7 L2*L3*L26
14 L2*L4*L5; 20 L2*L6*L17; 5 L2*L6*L33; 93 L2*L6*TY_R_
6 L2*L8*L27; 16 L2*L9*L18; 47 L2*L11*TY_R_; 14 L2*L15*L18
37 L2*L15*L24; 7 L2*L25*L32; 53 L2*RY_P*TX_R_; 47 L3*L4*L17
10 L3*L4*L31; 5 L3*L29*L32; 15 L4*L4*RX_Q; 53 L4*L6*L27
5 L4*L12*L19; 8 L4*L17*DROP_OHP_Q; 62 L4*L20*L29; 19 L4*L26*L29
81 L5*L7*L17; 81 L5*L10*L25; 3 L5*L12*L28; 4 L5*L15*L17
42 L5*L25*L27; 2 L5*L25*L32; 21 L6*L6*L15; 47 L6*L10*TY_R_
95 L6*L12*TY_R_; 66 L6*L13*L26; 24 L6*L14*L29; 52 L6*L17*L18
56 L6*L19*L25; 141 L6*L20*TY_R_; 5 L6*L24*L33; 8 L6*L28*TY_R_
17 L6*L29*L33; 20 L7*L17*L24; 88 L7*L29*RY_P; 20 L8*L15*L17
4 L8*L26*L30; 18 L9*L17*L26; 20 L10*L12*L17; 39 L10*L15*L29
191 L10*L17*+OCF; 81 L10*L18*L25; 6 L10*L25*L30; 1 L11*L16*L17
3 L11*L17*L21; 18 L11*L17*L25; 81 L11*L17*TY_R_; 2 L11*L24*L31
16 L11*L26*L29; 9 L11*L29*L33; 23 L11*L29*RX_Q; 141 L12*L17*L26
5 L12*L19*TY_R_; 5 L12*L23*L26; 4 L12*L28*RY_Q; 66 L12*L28*TX_R_
1 L12*L31*RY_P; 46 L13*L17*L26; 1 L13*L29*RY_Q; 31 L14*L15*L29
30 L14*L17*L25; 13 L14*L17*L27; 9 L14*L17*RX_Q; 4 L14*L21*L29
5 L14*L26*L29; 4 L14*L27*L31; 31 L15*L21*L27; 2 L15*L21*L30
11 L15*L23*L29; 97 L15*L29*RX_Q; 14 L15*L29*RY_Q; 36 L16*L17*L19
1 L16*L17*L32; 13 L16*L18*L25; 20 L16*L24*L29; 32 L16*L25*TY_R_
2 L16*L26*L27; 3 L16*L27*TY_R_; 61 L17*L17*L26; 73 L17*L17*-OHD
47 L17*L18*L24; 196 L17*L18*RX_Q; 152 L17*L23*RX_Q; 11 L17*L24*L32
15 L17*L27*L30; 32 L17*L27*TX_R_; 11 L17*L29*L33; 2 L17*L30*L32
15 L17*L30*RY_P; 12 L17*L31*-OHD; 20 L17*+OCF*TX_R_; 4 L18*L25*L27
16 L18*L25*L29; 4 L18*L25*L30; 6 L18*L26*L27; 1 L18*L26*L28
1 L18*L27*TY_R_; 6 L18*RX_Q*TY_R_; 6 L19*L20*TY_R_; 12 L19*L29*L29
100 L19*L29*-OHD; 102 L19*L29*+OCF; 22 L19*L29*RY_Q; 111 L19*L29*TY_R_
110 L22*L24*L29; 33 L22*L27*L27; 18 L22*L27*L29; 4 L22*L27*-OHD
33 L22*L29*RY_P; 56 L23*L29*-OHD; 4 L26*L26*L33; 18 L26*L26*TY_R_
190 L26*L28*L29; 18 L27*L27*L27; 333 L28*L29*+OCF; 433 L28*L29*RX_Q
93 L28*L29*TX_R_; 17 L29*L33*TX_R_; 230 L29*RY_P*RX_Q; 11 L29*RY_P*RY_Q
3 L29*RY_P*TX_R_; 34 +HCD*L17; 36 +OPQ*L11; 9 +OPQ*L12
70 +OPQ*L24; 60 +OPQ*L29; 29 -DPQ*L24; 9 -DPR*L1
81 -DPR*L10; 66 -DPR*L13; 4 -DPR*L14; 3 -DPR*L23
4 -DPR*L27; 9 -DPR*L30; 26 -DQR*L16; 3 -DQR*L18
32 -OHZ*L29; 90 +HCZ*L0; 54 +HCZ*L11; 31 +HCZ*L14
48 +HCZ*L22; 37 +HCZ*L24; 5 +HCZ*L26; 7 +HCZ*DROP_OHP_Q
5 +HCZ*RY_P; 93 +HCZ*RX_Q; 30 -HFZ*L1; 77 -HFZ*L14
306 -HFZ*L20; 30 -HFZ*L31; 5 -HFZ*L32; 119 -HFZ*-OHD
192 -HFZ*RX_Q; 122 -HFZ*TX_R_; 5 -HFZ*TY_R_; 67 +OCP*L3
11 +OCP*L9; 5 +OCP*TY_R_; 86 -OHQ*L17; 47 -CDQ*L2
1 -CDQ*L9; 8 -CDQ*L15; 108 -CDQ*L24; 22 -CDQ*L28
7 -ODQ*L4; 7 +HCR*L29; 145 -HFR*L20; 19 -HFR*L22
85 -HFR*+OCF; 41 -HFR*RY_Q; 3 -DFR*L32; 8 -DFR*-OHD
74 -DFR*DROP_OHP_Q; 9 -DFR*RY_Q; 133 -OFR*L17; 17 +HDR*L27
3 -FPQ*TY_R_; 56 -OYR*L3; 27 -OYR*L6; 36 -OYR*L20
58 -OYR*DROP_OHP_Q; 36 -HPQ*L11; 24 -HPQ*DROP_OHP_Q; 11 -YZP*L12
11 -YZP*L13; 8 -YZQ*L4; 9 -YZQ*L17; 8 -YZQ*L27
15 -YZQ*L31; 103 -YZQ*+OCF; 131 -YZQ*RX_Q; 54 -OFY*L17
45 +OFZ*L1; 35 +OFZ*L5; 53 +OFZ*L7; 54 +OFZ*L10
45 +OFZ*L14; 93 +OFZ*L24; 3 +OFZ*L26; 3 +OFZ*L33
46 +OFZ*+OCF; 36 +OFZ*DROP_OHP_Q; 128 +OFZ*RX_Q; 1 +ODY*L29
81 -CYP*L17; 65 -CYQ*L15; 77 -CYQ*L17; 28 -DZR*L6
8 -FYZ*TY_R_; 24 +FZP*L29; 4 +FZR*L18; 5 -DYZ*L0
49 +YPR*L17; 27 +YPR*L29; 32 +FYP*L17; 65 +FYQ*L15
97 +FYQ*L17; 4 +FYQ*L29; 8 +FYQ*TY_R_; 1 +ZQR*L6
1 -CFY*L0; 59 -CFY*L2; 10 -CFY*L31; 2 C_ODP_Q*L28
4 C_CDP_Q*L4; 25 C_CFP_YQ*L10; 12 C_CFP_YQ*L15; 6 C_CFP_YQ*L26
32 C_CFP_YQ*L30; 138 C_CFP_YQ*-OHD; 77 C_CFP_YQ*TX_R_; 11 C_CZQ_Y*L17
51 Q_OCPH_Q*L29; 110 Q_OYFH_Z*L17; 66 Q_ORFH_YZ*L4; 47 Q_OCPD_Q*L29
5 Q_OCPR_Q*L1; 30 Q_OQRZ_Y*L17; 28 Q_HCYF_Z*L14; 20 Q_HCYF_Z*L19
64 Q_HCYF_Z*L20; 23 Q_HCYF_Z*L23; 29 Q_HCYF_Z*L26; 7 Q_HCYF_Z*L33
41 Q_HCYF_Z*RX_P; 59 Q_HCYF_Z*RX_Q; 34 Q_HCYF_Z*TY_R_; 45 Q_HCPF_YZQ*L1
22 Q_HCPF_YZQ*L4; 24 Q_HCPF_YZQ*L13; 31 Q_HCPF_YZQ*L14; 66 Q_HCPF_YZQ*DROP_OHP_Q
104 Q_HCPF_YZQ*TY_R_; 18 Q_HCQF_YZ*L26; 2 Q_CPDZ_YQ*TY_R_; 4 Q_CPRY_Q*L2
```

Upper bound: `-163452160877/91000000000`.

### Leaf RRTmpmmmmmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ -YZP -YZQ -OFY -OFZ +HDY`.

```c1top-geometry
C HDF Y Z -HDZ 153/500
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYZ -HYZ
P HODYP -HYP
P HODYQ -HYQ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ +DYZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
```

```c1top-bounds
```

Exclusion: `gp YOHZP`.

### Leaf RRTmpmmmmmmmmmm

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ -YZP -YZQ -OFY -OFZ -HDY -HDZ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCR +YCR
P YODZP +YDZ
P YODZR -YZR
P YODPR +YPR
P YODQR +YQR
P ZOHCR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
T OHR YZ 12 lower 347/500
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 347/500 1
t 199/250 1
```

```c1top-sum
345 L0*L17*L25; 82 L1*L1*L6; 496 L1*L2*L17; 86 L1*L3*L6
1730 L1*L4*L6; 1 L1*L4*L31; 557 L1*L6*L6; 290 L1*L6*L12
945 L1*L6*L15; 46 L1*L6*L18; 644 L1*L6*L25; 5 L1*L6*L31
78 L1*L12*L28; 114 L1*L16*L18; 8 L1*L18*L31; 21 L1*L29*L29
101 L2*L2*L33; 1001 L2*L4*L17; 31 L2*L4*TY_R_; 8 L2*L5*L31
377 L2*L6*L19; 10 L2*L6*L33; 50 L2*L8*L33; 396 L2*L11*TY_R_
142 L2*L14*TY_R_; 81 L2*L17*L33; 455 L2*L19*L19; 19 L2*L19*L33
215 L2*L19*TY_R_; 22 L2*L27*TY_R_; 74 L2*L28*L31; 5 L2*L28*L33
15 L2*L28*TY_R_; 14 L2*L33*TY_R_; 145 L3*L8*TY_R_; 563 L3*L12*L18
182 L3*L18*L18; 75 L3*L18*L27; 48 L3*L18*L30; 127 L3*L28*L29
567 L4*L4*L17; 125 L4*L6*L17; 683 L4*L6*TY_R_; 19 L4*L8*TY_R_
202 L4*L11*L17; 2024 L4*L12*L17; 254 L4*L15*L29; 995 L4*L17*L17
1091 L4*L17*L18; 1041 L4*L17*L25; 635 L4*L17*L27; 4 L4*L25*L31
2 L4*L31*TY_R_; 4 L5*L5*L30; 228 L5*L8*L25; 7 L5*L8*L30
630 L5*L15*L25; 566 L5*L16*TY_R_; 2044 L5*L18*L25; 722 L5*L25*L27
7 L5*L25*L30; 1338 L6*L6*TY_R_; 190 L6*L8*TY_R_; 83 L6*L9*L18
33 L6*L10*L25; 26 L6*L10*L27; 83 L6*L11*L17; 79 L6*L14*L25
35 L6*L14*L31; 2263 L6*L16*TY_R_; 970 L6*L18*L25; 39 L6*L19*TY_R_
543 L6*L27*TY_R_; 500 L6*L28*L29; 3 L8*L15*L30; 310 L8*L16*TY_R_
281 L8*L18*L25; 19 L8*L18*TY_R_; 29 L8*L25*L32; 91 L8*L25*TY_R_
93 L8*L27*TY_R_; 92 L8*L30*TY_R_; 9 L8*L32*TY_R_; 29 L9*L17*L27
2 L9*L27*L27; 13 L9*L27*L29; 3 L10*L12*L30; 337 L10*L16*TY_R_
153 L10*L18*L25; 91 L10*L25*L25; 96 L10*L25*L27; 63 L10*L25*L30
15 L10*L25*L32; 6 L10*L30*TY_R_; 202 L11*L17*L27; 61 L11*L27*L29
1523 L12*L17*L27; 80 L12*L17*L32; 1523 L12*L18*L25; 19 L12*L18*L27
80 L12*L18*L30; 29 L12*L24*L32; 15 L12*L25*L27; 2018 L12*L25*L28
407 L12*L26*L28; 29 L12*L27*L30; 9 L12*L27*L32; 346 L12*L28*L29
65 L12*L28*L30; 37 L13*L27*L27; 131 L13*L27*L29; 85 L13*L28*L28
1642 L15*L16*TY_R_; 1661 L15*L18*L25; 15 L15*L25*L25; 263 L15*L25*L28
15 L15*L25*L32; 37 L15*L25*TY_R_; 193 L15*L27*L29; 196 L15*L28*L29
6 L15*L30*TY_R_; 761 L16*L16*TY_R_; 47 L16*L17*L28; 1067 L16*L18*TY_R_
146 L16*L25*TY_R_; 38 L16*L27*TY_R_; 29 L16*L28*L28; 36 L16*L28*L29
769 L16*L28*TY_R_; 761 L17*L17*L27; 1052 L17*L18*L27; 11 L17*L18*L32
146 L17*L24*L27; 100 L17*L27*L27; 199 L17*L27*L29; 7 L17*L28*L31
1 L17*L28*L33; 2119 L18*L18*L25; 11 L18*L18*L30; 138 L18*L25*L27
723 L18*L25*L28; 7 L18*L28*L30; 112 L19*L27*L29; 244 L25*L28*L29
490 L25*L28*TY_R_; 22 L27*L27*L29; 15 L27*L28*L29; 4 L28*L28*L31
372 +OPQ*L2; 634 +OPQ*L12; 300 +OPQ*L17; 102 +OPQ*L24
42 +OPQ*L26; 175 +OPQ*L29; 65 +OPQ*TY_R_; 737 -DPQ*L2
60 -DPQ*L17; 102 -DPQ*L24; 466 -DPQ*L29; 107 -DPQ*TY_R_
44 +CPQ*L1; 439 +CPQ*L3; 44 +CPQ*L4; 396 +CPQ*L7
262 +CPQ*L9; 498 +CPQ*L12; 300 +CPQ*L16; 248 +CPQ*L18
9185 -DPR*L4; 9104 -DPR*L5; 970 -DPR*L6; 223 -DPR*L8
123 -DPR*L10; 1581 -DPR*L12; 1631 -DPR*L15; 2119 -DPR*L18
138 -DPR*L27; 769 -DPR*L28; 199 -DPR*+OCF; 188 +OCY*L28
1178 +HCZ*L6; 8 +HCZ*L28; 82 -HFZ*L1; 3386 -HFZ*L18
152 -HFZ*L21; 3726 -HFZ*L23; 434 -HFZ*L24; 2098 -HFZ*L26
414 -HFZ*L32; 585 -HFZ*+OCF; 152 -HFZ*RX_P; 2558 -HFZ*RY_P
1030 +OCP*L9; 1656 +OCP*L12; 426 +OCP*L19; 199 +OCP*L25
87 +OCP*L28; 203 +OCQ*L9; 891 -CDQ*L8; 135 -CDQ*L10
135 -CDQ*L15; 73 -CDQ*L18; 466 -CDQ*L29; 129 -CDQ*TY_R_
1078 -HFR*L6; 645 -HFR*L13; 204 -HFR*L15; 46 -HFR*L18
490 -HFR*L27; 683 -DFR*L4; 838 -DFR*L6; 154 -DFR*L8
1094 -DFR*L16; 39 -DFR*L19; 737 +OYZ*L2; 632 +OYZ*L6
988 +OYZ*L17; 188 +CYZ*L1; 335 +CYZ*L5; 277 +CYZ*L24
55 +CYZ*L31; 154 +CYZ*L32; 154 +CYZ*L33; 970 +CYZ*+OCF
1081 +CYZ*RX_P; 135 +CYZ*RY_Q; 363 +CYZ*TY_R_; 188 -OYR*L1
937 -OYR*L6; 391 -OYR*L7; 257 -OYR*L14; 161 -OYR*L17
92 -OYR*L18; 414 -OYR*L23; 76 -OYR*L25; 40 -OYR*L27
63 -OYR*L30; 46 -OYR*L32; 219 -OYR*RX_P; 37 -HPQ*L1
712 -HPQ*L3; 152 -HPQ*L12; 416 -HPQ*L18; 191 -HPQ*L27
106 -HPQ*L29; 60 -HPQ*RX_P; 270 -HPQ*RY_P; 191 -HPQ*TY_R_
1133 -YZP*L2; 83 -YZP*L6; 58 -YZP*L17; 29 -YZP*L31
135 -YZQ*L4; 412 -YZQ*L12; 412 -YZQ*L13; 262 -YZQ*L24
131 -YZQ*L31; 419 -YZQ*+OCF; 1180 -YZQ*RX_Q; 50 -YZQ*TY_R_
1019 -OFZ*L28; 72 -HDZ*L1; 190 -HDZ*L3; 379 -HDZ*L25
190 -HDZ*L27; 104 -HDZ*L29; 65 -HDZ*L30; 278 -DZR*L1
486 -DZR*L5; 172 -DZR*L16; 93 -DZR*L27; 36 -DYZ*L6
111 -DYZ*L17; 188 -YZR*L1; 204 -YZR*L5; 513 -YZR*L6
30 -YZR*L19; 15 -YZR*L24; 29 -YZR*L31; 15 -YZR*L33
56 -YZR*TY_R_; 1429 C_OHR_YZ*L12; 345 C_OHR_YZ*L17; 244 C_OHR_YZ*L29
3401 C_OFR_YZ*L4; 86 C_OFR_YZ*L11; 2087 C_OFR_YZ*L15; 158 C_OFR_YZ*L19
74 C_OFR_YZ*L27; 1622 C_OFR_YZ*L28; 9 C_OFR_YZ*L29; 219 C_OZR_Y*L2
257 C_OZR_Y*L11; 231 C_OZR_Y*L17; 190 C_CDP_Q*L17; 60 C_CZQ_Y*L6
43 Q_OCPD_Q*L17; 99 Q_OCQZ_Y*L6; 754 Q_CPDZ_YQ*L6
```

Upper bound: `-814087077/200000000`.

### Leaf RRTmpmmmmmmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ -YZP -YZQ -OFY -OFZ -HDY +HDZ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYZ +HYZ
P HODYR +HYR
P HODZP -HZP
P HODZQ -HZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ -DYZ
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCR +YCR
P YOHZR -YZR
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
107 L0*L2*L23; 74 L0*L2*L29; 12 L0*L6*L13; 9 L0*L7*L15
5 L0*L8*L29; 9 L0*L8*TX_R_; 4 L0*L15*L21; 54 L0*L15*RX_P
355 L0*L17*+OCF; 8 L0*L18*L31; 70 L0*L18*RX_Q; 132 L1*L1*L6
2 L1*L4*L8; 15 L1*L6*L22; 109 L1*L6*L27; 211 L1*L12*L28
32 L1*L16*L28; 2 L2*L9*L12; 3 L2*L11*L19; 101 L2*L12*TY_R_
8 L2*L15*L21; 6 L2*L17*L21; 17 L2*L17*L33; 142 L2*L19*L23
147 L2*L19*+OCF; 239 L2*L19*DROP_OHR_Y; 325 L2*L23*RY_Q; 1 L2*L26*TY_R_
32 L2*L27*C_OHD_Y; 72 L2*L28*RX_Q; 326 L2*+OCF*RY_P; 30 L3*L4*L12
32 L3*L4*L27; 81 L3*L12*L27; 74 L3*L14*L17; 25 L4*L5*L6
87 L4*L5*L12; 192 L4*L5*L17; 2 L4*L8*L32; 14 L4*L8*RY_Q
4 L4*L9*RY_P; 55 L4*L11*L16; 4 L4*L11*L24; 86 L4*L12*L25
17 L4*L12*L30; 8 L4*L12*L33; 92 L4*L14*L17; 174 L4*L16*TY_R_
174 L4*L17*L26; 253 L4*L17*DROP_OHR_Y; 72 L4*L24*L28; 7 L4*L24*L29
4 L4*L32*RX_Q; 148 L5*L6*L25; 2 L5*L6*RY_P; 22 L5*L17*L17
5 L5*L17*L32; 59 L5*L28*L29; 2 L6*L8*TY_R_; 2 L6*L9*L13
4 L6*L9*L27; 141 L6*L12*TY_R_; 3 L6*L14*L17; 82 L6*L15*L19
1 L6*L16*TY_R_; 4 L6*L17*L32; 191 L6*L18*L27; 3 L6*L27*L27
79 L6*L28*L28; 9 L6*L28*L31; 7 L6*RX_P*RY_P; 273 L7*L12*L28
2 L8*L12*L29; 4 L8*L15*L29; 31 L8*L17*L19; 169 L8*L17*L21
193 L8*L17*L26; 16 L8*L17*L33; 169 L8*L17*+OCF; 169 L8*L17*RX_Q
4 L8*L26*L27; 2 L8*L28*L29; 132 L9*L17*RY_Q; 1 L9*L18*L26
22 L10*L17*L18; 2 L10*L17*RX_P; 4 L10*L25*L27; 99 L11*L17*L22
1 L11*L17*L31; 11 L11*L17*L33; 297 L11*L17*+OCF; 193 L11*L17*DROP_OHR_Y
1 L11*L18*L25; 82 L12*L14*L28; 172 L12*L17*L18; 1 L12*L18*L30
80 L12*L18*TY_R_; 24 L12*L28*L32; 157 L12*L28*RX_Q; 131 L12*L28*TX_R_
3 L12*L29*L33; 76 L12*L29*RY_Q; 404 L13*L17*L27; 17 L13*L19*L27
107 L13*L25*L28; 161 L13*L28*L29; 349 L13*L28*+OCF; 95 L14*L14*L17
174 L14*L17*L17; 61 L14*L17*L18; 14 L14*L17*L28; 23 L14*L17*L32
4 L14*L24*L27; 95 L15*L15*+OCF; 10 L15*L17*L21; 109 L15*L18*L29
1 L15*L20*L25; 141 L15*L25*L29; 4 L15*L25*TY_R_; 14 L15*L28*RX_Q
7 L15*L31*RY_P; 64 L15*RX_P*TY_R_; 6 L16*L17*L20; 10 L16*L20*L29
25 L16*L28*RX_Q; 3 L17*L17*L24; 23 L17*L17*L32; 1 L17*L17*RX_P
41 L17*L17*RY_Q; 65 L17*L18*L20; 31 L17*L18*-OHD; 12 L17*L18*TY_R_
15 L17*L21*L25; 13 L17*L21*RX_Q; 187 L17*L22*+OCF; 91 L17*L22*DROP_OHP_Q
3 L17*L24*L31; 5 L17*L29*+OCF; 1 L17*L30*+OCF; 1 L17*L30*TX_R_
3 L17*L31*RY_Q; 8 L17*L32*C_OHD_Y; 71 L17*C_OHD_Y*RY_Q; 55 L18*L21*L27
6 L18*L27*L30; 7 L21*L22*C_OHD_Y; 72 L21*L28*L29; 207 L22*L28*L29
1 L22*L28*DROP_OHP_Q; 7 L22*L28*RX_Q; 74 L25*L27*L28; 244 L25*L28*+OCF
103 L26*L28*L29; 74 L27*L28*TX_R_; 320 L28*L29*DROP_OHP_Q; 244 L28*L29*TX_R_
6 L28*L32*+OCF; 1 L28*RX_Q*TX_R_; 188 -OHF*L17; 214 -OHF*L19
2 -OHF*L32; 58 -OHF*TY_R_; 63 +HCD*L17; 65 +OPQ*L15
31 -DPQ*DROP_OHP_Q; 3 +CPQ*L32; 57 -DPR*L8; 57 -DPR*L9
80 -DPR*L13; 86 -DPR*L21; 85 -DPR*RX_Q; 5 -DQR*L6
118 -OHY*L17; 3 -OHY*L25; 6 +OCY*L4; 356 +OCY*L17
4 +HCY*L12; 52 +CDY*L17; 211 -HFZ*L1; 10 -HFZ*L8
127 -HFZ*L14; 263 -HFZ*L18; 157 -HFZ*L20; 95 -HFZ*L32
72 -HFZ*L33; 155 -HFZ*DROP_OHP_Q; 367 -HFZ*RX_P; 244 -HFZ*TX_R_
82 +DFZ*L14; 207 +DFZ*L22; 17 +DFZ*L31; 99 +DFZ*+OCF
228 +DFZ*RX_P; 197 +DFZ*RX_Q; 244 +DFZ*TX_R_; 146 +OCP*L3
94 +OCP*L27; 150 +OCQ*L1; 153 +OCQ*L12; 272 +OCQ*L14
30 +OCQ*L33; 426 +OCQ*RY_P; 33 -HFQ*L17; 37 -CDQ*L13
32 -CDQ*L16; 69 -CDQ*L19; 13 -CDQ*L23; 2 -CDQ*L33
85 +OCR*L17; 72 +CDR*L28; 6 +OYZ*L6; 9 -FPQ*L12
2 +CYZ*L2; 6 +CYZ*L5; 3 +CYZ*RX_P; 6 -OYR*L12
3 -OYR*L14; 193 -OYR*L17; 1 -OYR*L19; 3 -OYR*RY_Q
24 -HPQ*L21; 44 -HPQ*DROP_OHP_Q; 9 -YZQ*L17; 93 -OFZ*L0
278 -OFZ*L17; 344 -OFZ*L18; 253 -OFZ*L28; 289 +HDZ*+OCF
3 +ODY*L27; 246 -OZP*L17; 71 -OZR*L17; 5 +HYZ*L2
9 +HYZ*L4; 118 +HYZ*L17; 6 +HYZ*TX_R_; 11 -HZQ*L2
114 -HZQ*L6; 105 -DYZ*L17; 3 -DYR*L15; 137 -DZR*L6
3 -DZR*L10; 253 -DZR*L17; 90 +FZR*L3; 6 +FZR*L8
1 +FZR*L27; 69 -ZPQ*L4; 1 C_OHR_Y*L21; 23 C_ODP_Q*L0
137 C_OFR_YZ*L0; 38 C_OFR_YZ*L4; 189 C_OFR_YZ*L19; 4 C_OFR_YZ*RX_Q
10 C_OZQ_Y*L28; 92 C_OZR_Y*L2; 3 C_OZR_Y*L11; 98 C_HDF_Z*L13
33 C_HDF_Z*L21; 571 C_HDF_Z*+OCF; 98 C_CDP_Q*L2; 95 C_CZP_YQ*L14
22 C_CZP_YQ*L18; 590 C_CZP_YQ*L22; 418 C_CZP_YQ*L23; 36 C_CZP_YQ*L31
11 C_CZP_YQ*L32; 67 C_CZP_YQ*-OHD; 272 C_CZP_YQ*+OCF; 342 C_CZP_YQ*RX_Q
308 C_CZP_YQ*DROP_OHR_Y; 16 C_CZP_YQ*TX_R_; 64 C_CZP_YQ*TY_R_; 43 Q_OCPH_Q*L17
205 Q_OCPD_Q*L2; 54 Q_OCPD_Q*L29; 258 Q_OCPD_Q*+OCF; 1 Q_OCRZ_Y*L27
5 Q_OQRZ_Y*L6; 2 Q_HYDF_Z*L2; 7 Q_HYDF_Z*L5; 2 Q_HYDF_Z*L18
4 Q_HYDF_Z*L27; 1 Q_HDRF_Z*L15; 93 Q_HDRF_Z*+OCF; 2 Q_HYRF_Z*L19
4 Q_HYRF_Z*TY_R_; 3 Q_CPDY_Q*L18; 301 PAIRSUP
```

Upper bound: `-25760649039/1000000000`.

### Leaf RRTmpmmmmpm

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP -YZQ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDYR +FYR
P FHDZR +FZR
P YOCDR +YCR
P YODZQ +YDZ
P YODZR -YZR
P YODPR +YPR
P YODQR +YQR
P YOZPQ +YPQ
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P ZOYPQ +ZPQ
P POHYQ +PHY
P POHZQ +PHZ
P POHQR -PQR
P POFYQ +PFY
P POFZQ +PFZ
P QOHYP +QHY
P QOHZP +QHZ
P QOFYP +QFY
P QOFZP +QFZ
```

```c1top-bounds
```

Exclusion: `cluster OHP Q OHQ YZ`.

### Leaf RRTmpmmmmppmmmmmmmm

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ -YZR -OFY -OFZ -HDY -HDZ -HYZ -HYP -HZP`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYPQ -HYQ
P HOZPQ -HZQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCR +YCR
P YOHFZ +YFZ
P YOHPR +YPR
P YOHQR +YQR
P ZOHCR +ZCR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ +PYQ
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
T OHR YZ 12 lower 347/500
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 347/500 1
t 199/250 1
```

```c1top-sum
11 L27*L29; 4 L28*L28; 1 L0*L0*L30; 2 L0*L3*L5
6 L0*L3*TY_R_; 8 L0*L16*L28; 7 L0*L17*L18; 2 L0*L25*L28
21 L1*L4*L6; 2 L1*L6*L8; 40 L1*L6*L16; 2 L1*L6*RY_Q
55 L1*L17*L24; 13 L1*L17*RY_Q; 8 L1*L17*TX_R_; 1 L3*L3*L7
3 L3*L4*L5; 1 L3*L4*L17; 4 L3*L5*L25; 1 L3*L5*L29
14 L3*L7*L18; 4 L3*L7*L27; 1 L3*L18*L29; 49 L3*L18*-OHD
13 L3*L28*L28; 13 L4*L5*L6; 2 L4*L5*L8; 8 L4*L5*L21
9 L4*L5*L25; 3 L4*L9*L27; 6 L4*L10*L17; 33 L4*L17*L22
10 L4*L17*RY_P; 2 L5*L8*L25; 28 L5*L8*RY_P; 9 L5*L10*L16
29 L5*L16*L25; 4 L5*L16*L26; 3 L5*L16*L32; 21 L5*L16*TY_R_
1 L5*L20*TY_R_; 5 L5*L25*L26; 6 L5*L25*-OHD; 25 L5*L25*RY_P
10 L5*L29*TY_R_; 15 L6*L16*TY_R_; 26 L6*DROP_OHP_Q*TY_R_; 3 L7*L20*L28
29 L7*L27*DROP_OHP_Q; 7 L7*L27*RY_P; 1 L8*L17*RY_P; 7 L8*RY_P*TY_R_
1 L9*L16*L28; 2 L9*L18*TY_R_; 22 L9*L27*RY_P; 1 L10*L16*L17
10 L10*L17*L27; 2 L10*L18*L25; 1 L11*L17*L17; 23 L11*L17*TY_R_
6 L16*L16*L28; 3 L16*L16*TY_R_; 1 L16*L17*L27; 2 L16*L18*L25
48 L16*L20*L28; 3 L16*L28*L30; 1 L17*L18*L24; 22 L17*L22*RY_Q
2 L17*L27*+OCF; 13 L17*L27*RY_P; 8 L17*L27*RY_Q; 9 L18*L25*RY_P
3 L18*L25*RY_Q; 38 L18*-OHD*RX_Q; 8 L18*RY_P*RX_Q; 6 L20*L26*L27
8 L20*L28*L29; 52 L20*L28*RY_P; 67 L20*L28*TX_R_; 6 L22*L25*L27
2 L26*L28*L30; 5 L27*L29*L32; 2 L27*L29*DROP_OHP_Q; 5 L27*L29*RY_P
7 L28*L28*RX_Q; 39 L28*L29*-OHD; 13 L28*L29*DROP_OHP_Q; 12 L28*L29*RY_P
3 L28*L30*-OHD; 3 L28*L30*RY_Q; 1 L28*L30*TX_R_; 1 L32*+OCF*RY_P
4 L32*DROP_OHP_Q*RY_Q; 2 L32*RY_P*TX_R_; 3 +CPQ*L1; 6 +CPQ*L4
8 +CPQ*L19; 17 +CPQ*L26; 41 +CPQ*-OHD; 3 +CPQ*+OCF
3 +CPQ*DROP_OHP_Q; 1 -DPR*L1; 11 -DPR*L9; 39 -DPR*L10
4 -DPR*L16; 11 -DPR*L20; 13 -HFY*L25; 6 -HFY*L26
1 -HFY*DROP_OHP_Q; 1 -OHP*L32; 14 +OCP*L7; 1 +OCP*L17
56 +OCP*-OHD; 14 +OCP*RY_P; 4 -HDP*L32; 24 +HCQ*L27
28 -HFQ*TY_R_; 18 -CDQ*L0; 16 -CDQ*L28; 4 -CDQ*-OHD
1 -OHR*L32; 2 +HCR*L32; 2 -HFR*L8; 5 -HFR*L17
6 -HFR*L26; 39 -HFR*-OHD; 74 -HFR*DROP_OHP_Q; 4 -HFR*RX_P
8 -HFR*RY_P; 18 -HFR*RY_Q; 11 -DFR*L8; 16 -DFR*L16
7 -CFR*L32; 5 -OYR*L27; 2 -HPQ*TY_R_; 9 +CQR*L28
5 -DYR; 13 -DYR*L7; 11 -DYR*L16; 5 -DYR*L26
37 -DYR*RY_P; 9 C_HCP_Q*L5; 8 C_HDQ_YZ*+OCF; 60 C_HDQ_YZ*DROP_OHP_Q
52 C_HDQ_YZ*RY_P; 23 C_HDQ_YZ*RY_Q; 85 C_HDQ_YZ*TX_R_; 22 C_HQR_YZ*L0
25 C_HQR_YZ*L4; 11 C_HQR_YZ*L16; 6 C_HQR_YZ*L26; 19 C_HQR_YZ*-OHD
13 C_CPR_Q*L18; 2 TPX_R_*L8; 1 TPX_R_*L11; 1 TPX_R_*-OHD
2 Q_OPFH_Q*L32; 4 Q_OCDF_YZ*L32; 1 Q_HCPY_ZQ*L17; 13 Q_HPDR_YZ*L6
1 Q_HQPY_Z*L1; 11 Q_HQPY_Z*L25; 6 Q_HQPY_Z*L26; 1 Q_HQPY_Z*-OHD
3 Q_HQPY_Z*DROP_OHP_Q; 6 Q_CPDR_Q*L5
```

Upper bound: `-252204107/62500000`.

### Leaf RRTmpmmmmppmmmmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ -YZR -OFY -OFZ -HDY -HDZ -HYZ -HYP +HZP`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYPQ -HYQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCR +YCR
P YOHFZ +YFZ
P YOHPR +YPR
P YOHQR +YQR
P ZOHCR +ZCR
P ZOHFP -ZFP
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
T OHR YZ 12 lower 347/500
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 347/500 1
t 199/250 1
```

```c1top-sum
32 L0*L11*L12; 52 L0*L12*L17; 11 L0*L12*L29; 6 L0*L15*L29
77 L0*L17*L17; 134 L0*L17*L18; 45 L0*L17*L27; 6 L0*L28*L29
75 L1*L1*L6; 17 L1*L2*L2; 8 L1*L2*L6; 112 L1*L4*L6
25 L1*L6*L6; 17 L1*L6*L17; 60 L1*L6*L18; 30 L1*L6*L26
22 L1*L8*L17; 11 L1*L8*L18; 13 L1*L8*L27; 104 L1*L12*L28
9 L1*L16*L18; 36 L1*L27*L29; 27 L2*L3*L28; 84 L2*L4*L17
88 L2*L5*L19; 51 L2*L14*TY_R_; 112 L2*L16*TY_R_; 85 L2*L17*L19
34 L2*L19*TY_R_; 112 L2*L25*L28; 31 L2*L28*L28; 5 L3*L18*L18
12 L3*L28*L29; 18 L4*L4*L17; 39 L4*L6*L17; 45 L4*L6*TY_R_
31 L4*L8*L17; 3 L4*L9*L12; 32 L4*L11*L12; 65 L4*L12*L17
250 L4*L17*L17; 290 L4*L17*L18; 26 L4*L17*L25; 11 L4*L17*L27
45 L4*L28*L29; 20 L5*L5*L16; 8 L5*L8*L18; 101 L5*L16*L25
9 L5*L16*TY_R_; 357 L5*L18*L25; 217 L5*L25*L27; 64 L5*L25*L28
2 L6*L10*L17; 2 L6*L11*L12; 75 L6*L12*TY_R_; 32 L6*L14*L19
54 L6*L14*L25; 108 L6*L16*TY_R_; 44 L6*L18*TY_R_; 13 L6*L25*TY_R_
76 L6*L27*TY_R_; 25 L8*L12*L28; 14 L8*L16*L28; 13 L8*L25*L28
3 L9*L28*L28; 1 L10*L12*L17; 11 L10*L17*L18; 32 L11*L12*L19
32 L11*L15*L17; 95 L12*L17*L27; 29 L12*L25*L28; 3 L12*L27*TY_R_
75 L12*L28*L29; 1 L13*L18*L27; 22 L13*L27*L27; 25 L14*L25*L27
53 L14*L27*L29; 95 L15*L17*L25; 4 L15*L17*L27; 3 L15*L18*L25
250 L16*L16*TY_R_; 30 L16*L25*L27; 240 L16*L27*TY_R_; 70 L16*L28*TY_R_
250 L17*L17*L27; 290 L17*L18*L27; 56 L17*L24*L27; 21 L17*L28*L29
290 L18*L18*L25; 86 L18*L24*L25; 240 L18*L25*L27; 44 L18*L28*L29
15 L25*L27*L28; 67 -DPR*L5; 59 -DPR*L6; 60 -DPR*L9
8 -DPR*L10; 60 -DPR*L12; 495 -DPR*L17; 290 -DPR*L18
86 -DPR*L24; 240 -DPR*L27; 136 -DPR*-OHD; 112 -DPR*+OCF
495 -DPR*DROP_OHP_ZQ; 3 -HFY*L1; 3 -HFY*L14; 6 +HCZ*L0
51 +HCZ*L4; 189 +HCZ*L6; 1 +HCZ*L17; 2 +HCZ*L26
251 -HFZ; 66 -HFZ*L1; 133 -HFZ*L4; 2 -HFZ*L9
3 -HFZ*L11; 138 -HFZ*L24; 234 -HFZ*L26; 129 -HFZ*+OCF
34 -HFZ*DROP_OHP_ZQ; 32 -HFZ*RY_P; 6 -HFZ*TX_R_; 8 +OCP*L3
4 +OCP*L7; 57 +OCP*L13; 9 +OCP*L17; 79 +OCP*L19
112 +OCP*L25; 46 +OCP*L28; 18 +OCP*-OHD; 69 +OCP*RY_P
32 -HFR*L6; 123 -HFR*L13; 136 -HFR*L18; 15 -HFR*TY_R_
108 -DFR*L16; 13 -DFR*L25; 26 +OYZ*L1; 29 +OYZ*L18
3 +OYZ*L25; 14 +OYZ*L27; 37 -OYR*L4; 2 -OYR*L6
76 -OYR*L13; 32 -OYR*L15; 10 -OYR*L17; 11 -OYR*L19
73 -OYR*L24; 60 +YZP*L25; 29 -YZR*L4; 2 -YZR*L6
426 -YZR*L17; 8 -YZR*L26; 3 -YZR*-OHD; 462 -YZR*DROP_OHP_ZQ
3 -YZR*RY_P; 6 -OFZ*L6; 20 -OFZ*L17; 75 -OFZ*L28
29 -HDY*L12; 10 -HYZ*L17; 13 -HYZ*L24; 22 -HYZ*L27
2 -HYP*L6; 24 -HYP*L13; 32 -HYP*L14; 11 -HYP*L18
8 -HYP*TY_R_; 32 +HZP*L1; 1 +HZP*L3; 14 +HZP*L7
26 +HZP*L9; 4 +HZP*L27; 1 +DYP*L12; 3 -DYR*L0
3 -DYR*L4; 32 -DYR*L14; 105 -DYR*L16; 73 -DYR*L25
8 -DYR*L26; 60 C_OHR_YZ*L4; 63 C_OHR_YZ*L12; 112 C_OHR_YZ*L29
182 C_OFR_YZ*L0; 182 C_OFR_YZ*L4; 150 C_OFR_YZ*L15; 92 C_OFR_YZ*L19
90 C_OFR_YZ*L27; 3 C_OZR_Y*L1; 137 C_OZR_Y*L6; 76 C_OZR_Y*L8
33 C_OZR_Y*L27; 56 C_HCP_ZQ*L3; 22 C_HCP_ZQ*L5; 55 C_HCP_ZQ*L7
53 C_HCP_ZQ*L12; 77 C_HCP_ZQ*L17; 153 C_HCP_ZQ*L18; 32 C_HCP_ZQ*L28
34 C_HCP_ZQ*TY_R_; 64 C_CDP_Q*L2; 5 C_CDP_Q*L12; 13 C_CDP_Q*L28
59 Q_CPRZ_YQ*L6
```

Upper bound: `-909119023/500000000`.

### Leaf RRTmpmmmmppmmmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ -YZR -OFY -OFZ -HDY -HDZ -HYZ +HYP`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYZP +HZP
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCR +YCR
P YOHFZ +YFZ
P YOHFP -YFP
P YODPR +YPR
P YODQR +YQR
P ZOHCR +ZCR
P ZOHFP -ZFP
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OHP YZQ 0 lower 823/1000
T OCP - 1 lower 5177/31333
T OHR YZ 12 lower 347/500
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 823/1000 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 347/500 1
t 199/250 1
```

```c1top-sum
11 L17*C_OHD_YZ; 1 L0*L6*L17; 10 L1*L6*L26; 1 L1*L17*TX_R_
7 L2*L19*L26; 1 L2*L19*DROP_OHP_YZQ; 3 L2*DROP_OHP_YZQ*TY_R_; 3 L3*L28*L29
2 L4*L17*+OCF; 2 L4*L17*C_OHD_YZ; 4 L4*L19*L24; 5 L5*L17*L24
5 L5*L18*L25; 4 L5*L25*L28; 4 L6*C_OHD_YZ*TY_R_; 5 L6*DROP_OHP_YZQ*TY_R_
1 L6*RY_P*TY_R_; 1 L16*L28*TY_R_; 2 L17*L27*C_OHD_YZ; 1 L17*C_OHD_YZ*DROP_OHP_YZQ
1 L17*RY_P*TY_R_; 1 L18*L18*L25; 10 L19*L28*L29; 1 L19*L29*DROP_OHP_YZQ
14 -DPR*L1; 1 -DPR*L18; 2 -DPR*L28; 12 -DPR*-OHD
3 +OCP*L25; 4 +OCP*L28; 3 +OCP*C_OHD_YZ; 9 -HFR
3 -DFR*+OCF; 4 -DFR*C_OHD_YZ; 5 -DFR*DROP_OHP_YZQ; 1 -DFR*RY_P
6 C_ODP_Q*L2; 6 C_OFR_YZ*L0; 10 C_OFR_YZ*RY_P; 5 C_HCD_YZ*L17
6 C_HCP_YZQ*L18; 6 C_HCP_YZQ*L27; 3 C_CDP_Q*L2; 3 Q_OCPH_YZQ*L5
3 Q_OCPH_YZQ*L26; 1 Q_OCPH_YZQ*RX_P; 6 Q_OCPH_YZQ*RY_P; 3 Q_OCPH_YZQ*TX_R_
3 Q_OCRH_YZ*L17; 1 Q_OCPD_Q*L2; 3 Q_OCPF_YZQ*L17; 6 Q_OCPF_YZQ*L27
11 Q_OCPF_YZQ*L28; 1 Q_OPDR_Q*L2; 4 Q_HCPF_YZQ; 16 Q_HCPF_YZQ*L26
1 Q_HCPF_YZQ*DROP_OHP_YZQ; 3 Q_HCPF_YZQ*RX_P
```

Upper bound: `-36225093743/91000000000`.

### Leaf RRTmpmmmmppmmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ -YZR -OFY -OFZ -HDY -HDZ +HYZ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCR +YCR
P YOHDZ +YDZ
P YOHZP +YHP
P YOHZQ +YHQ
P YOHPR +YPR
P YOHQR +YQR
P ZOHCR +ZCR
P ZOHYP +ZHP
P ZOHYQ +ZHQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ +PYQ
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
T OHR YZ 12 lower 347/500
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 347/500 1
t 199/250 1
```

```c1top-sum
36 L5*L16; 17 L16*TY_R_; 3 L28*L28; 4 L0*L3*L27
27 L0*L7*L28; 1 L0*L9*L28; 50 L0*L11*L16; 2 L0*L16*L17
50 L0*L16*L28; 31 L0*L17*L27; 2 L0*L17*L32; 17 L0*L18*L25
8 L1*L5*L16; 14 L1*L5*L24; 12 L1*L6*RY_P; 4 L1*L16*L18
1 L1*L18*L30; 6 L2*L28*TY_R_; 3 L3*L4*L5; 1 L3*L17*L18
74 L3*L18*-OHD; 2 L3*L18*TX_R_; 7 L4*L6*TY_R_; 4 L4*L17*L32
1 L4*L24*L32; 1 L5*L9*DROP_OHP_Q; 1 L5*L16*L16; 4 L5*L16*L18
7 L5*L20*TY_R_; 2 L5*L25*RY_P; 8 L5*L29*TY_R_; 1 L5*L30*-OHD
4 L5*-OHD*RX_Q; 1 L5*DROP_OHP_Q*RX_Q; 3 L5*RX_Q*TX_R_; 12 L6*L19*L26
2 L6*L26*RY_P; 21 L6*RY_P*TY_R_; 2 L6*RY_Q*TY_R_; 5 L8*L16*L28
7 L8*L17*L18; 21 L9*L17*L28; 7 L11*L16*L17; 4 L16*L16*L27
5 L16*L17*L28; 34 L16*L20*L28; 7 L16*L23*TY_R_; 14 L16*L25*L28
1 L16*L27*TY_R_; 3 L16*L28*L29; 3 L16*L28*RY_Q; 1 L17*L19*L32
1 L17*L24*L32; 3 L17*L32*-OHD; 1 L17*L32*TX_R_; 5 L18*L30*-OHD
21 L18*RY_P*RX_Q; 18 L18*RX_Q*TX_R_; 1 L19*L25*TY_R_; 4 L20*L28*RY_P
23 L20*L28*TX_R_; 1 L25*L28*TY_R_; 1 L26*L27*RX_Q; 1 L26*L28*L30
2 L27*L29*RY_P; 22 L28*L29*-OHD; 24 L28*L29*RY_P; 1 L28*L30*RY_Q
1 L32*+OCF*RY_P; 1 L32*+OCF*RY_Q; 2 L32*+OCF*TX_R_; 2 L32*DROP_OHP_Q*RY_Q
3 -DPQ*L6; 3 +CPQ*L4; 21 +CPQ*L19; 56 +CPQ*-OHD
7 +CPQ*+OCF; 15 +CPQ*TX_R_; 30 -DPR*L1; 4 -DPR*L17
3 -DPR*L21; 57 -DPR*-OHD; 1 +OCP*L17; 63 +OCP*-OHD
6 +OCP*RY_P; 7 +OCP*RX_Q; 9 +OCP*TX_R_; 1 -HFP*TY_R_
7 +OCQ*L17; 7 +OCQ*+OCF; 18 +OCQ*RY_P; 5 +HCQ*L27
5 -HFQ*TY_R_; 3 -CDQ*L28; 13 -CDQ*-OHD; 1 -HFR*L17
7 -HFR*L18; 6 -OYR*L17; 6 -OYR*-OHD; 43 -OYR*RY_P
1 +HPR*L32; 10 +CQR*L28; 7 -DYR*L16; 7 -HYP*L17
50 -HYP*-OHD; 11 C_ODF_YZ*L28; 3 C_HDP_YZ*L2; 7 C_HDQ_YZ*L26
36 C_HDQ_YZ*DROP_OHP_Q; 22 C_HDQ_YZ*RY_P; 12 C_HDQ_YZ*RY_Q; 24 C_HDQ_YZ*TX_R_
17 C_HQR_YZ*L4; 2 C_HQR_YZ*L17; 1 C_HQR_YZ*L26; 1 C_HQR_YZ*RY_P
3 C_CDP_Q*TY_R_; 4 C_CPR_Q*L5; 2 C_CPR_Q*L18; 13 TPX_R_*L1
1 TPX_R_*L17; 17 TPX_R_*-OHD; 1 Q_OCDF_YZ*L32; 1 Q_OCRF_YZ*L32
22 Q_HCQD_YZ*L28; 42 Q_HYDF_Z*-OHD; 2 Q_HYDF_Z*DROP_OHP_Q; 16 Q_HYDR_Z*L16
6 Q_HYRF_Z*-OHD; 1 Q_HYRF_Z*DROP_OHP_Q; 43 Q_HYRF_Z*RY_P; 1 Q_HPRF_YZ*TY_R_
2 Q_CPDR_Q*L18; 1 Q_CPDR_Q*TY_R_
```

Upper bound: `-2348404543/500000000`.

### Leaf RRTmpmmmmppmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ -YZR -OFY -OFZ -HDY +HDZ`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYZ +HYZ
P HODYR +HYR
P HODZP -HZP
P HODZQ -HZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ -DYZ
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCR +YCR
P YOHZP +YHP
P YOHZQ +YHQ
P YOHPR +YPR
P YOHQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L0*L0*L17; 17 L0*L8*L19; 1 L0*L9*TY_R_; 5 L0*L16*L17
5 L0*L16*L29; 5 L0*L29*DROP_OHP_Q; 3 L1*L6*L16; 8 L1*L7*L28
1 L1*L18*L30; 1 L1*L28*L29; 4 L2*L12*L19; 15 L3*L13*L18
5 L3*L17*L18; 7 L3*L17*L27; 7 L3*L20*L28; 7 L4*L6*TY_R_
4 L4*L8*L17; 1 L4*L9*DROP_OHR_Y; 2 L4*L10*L17; 1 L4*L17*L26
19 L4*L17*+OCF; 1 L4*L25*TY_R_; 16 L6*L19*L26; 3 L7*L12*L28
3 L7*L16*L28; 1 L7*L26*L28; 11 L7*L28*+OCF; 8 L7*L28*DROP_OHP_Q
2 L7*L28*DROP_OHR_Y; 8 L8*L16*L28; 2 L8*L26*L27; 2 L8*L27*L28
1 L8*L27*TY_R_; 1 L8*L28*RY_P; 1 L8*L28*TX_R_; 2 L10*L25*L27
1 L12*L28*L29; 9 L13*L16*L28; 4 L16*L16*TY_R_; 7 L16*L18*L25
1 L17*L17*L32; 1 L17*L18*L30; 1 L17*L27*L27; 1 L18*L25*L27
1 L18*L30*-OHD; 1 L19*L28*L29; 1 L25*L28*DROP_OHP_Q; 8 -OHF*L1
1 -OHF*TY_R_; 7 -DPQ*L2; 21 +CPQ*L1; 22 +CPQ*C_OHD_Y
13 -DPR*L1; 2 -DPR*L10; 1 -DPR*L27; 13 -DPR*-OHD
7 -DPR*DROP_OHP_Q; 18 -HFZ*L17; 1 -HFZ*+OCF; 18 -HFZ*DROP_OHP_Q
11 +OCP*L1; 2 +OCP*L5; 1 +OCP*L7; 12 +OCP*L13
6 +OCP*L17; 1 +OCP*L27; 11 +OCP*-OHD; 1 +OCP*RX_P
2 -OHQ*L28; 4 +OCQ*L17; 6 -CDQ*L1; 6 -CDQ*-OHD
4 -CDQ*DROP_OHP_Q; 3 -OYR*L1; 2 -OYR*L27; 3 -OYR*-OHD
18 -OYR*RY_P; 2 -HPQ*L17; 1 -HPQ*-OHD; 7 -HPQ*RX_P
14 +YZP*L1; 14 +YZP*-OHD; 12 +HDZ*L6; 13 +HDZ*L9
12 +HDZ*L16; 1 +HDZ*DROP_OHP_Q; 2 -HYP*L26; 1 C_ODF_YZ*L0
8 C_ODF_YZ*L28; 1 C_CDP_Q*L6; 3 C_CDP_Q*L17; 1 C_CDP_Q*L26
1 Q_OCPD_Q*L2; 13 Q_HYDF_Z*L13; 12 Q_HYDF_Z*L16; 1 Q_HYDF_Z*DROP_OHP_Q
2 Q_HYDF_Z*RY_P; 2 Q_HYDF_Z*DROP_OHR_Y; 11 Q_HPDF_YZ*L2; 4 Q_HPDF_YZ*L12
1 Q_HDRF_Z*L4; 13 Q_HDRF_Z*L16; 1 Q_HPDZ_Y*L6; 1 Q_HYRF_Z*L1
16 Q_HYRF_Z*RY_P
```

Upper bound: `-202751161/1000000000`.

### Leaf RRTmpmmmmppmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ -YZR -OFY -OFZ +HDY`.

```c1top-geometry
C HDF Y Z -HDZ 153/500
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYZ -HYZ
P HODYP -HYP
P HODYQ -HYQ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ +DYZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZR -YHR
P YOHPR +YPR
P YOHQR +YQR
P YOCDR +YCR
P ZOHCR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
T OHR YZ 12 lower 347/500
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 347/500 1
t 199/250 1
```

```c1top-sum
4 L7*L27; 2 L0*L0*L17; 1 L0*L1*L12; 1 L0*L3*L27
3 L0*L16*L17; 2 L0*L16*TY_R_; 1 L0*L17*L22; 1 L0*L25*TY_R_
2 L1*L6*L24; 1 L1*L13*L27; 1 L2*L2*L19; 4 L2*L17*RY_P
2 L3*L3*L18; 3 L3*L20*L28; 1 L4*L5*L21; 1 L4*L6*L23
1 L4*L16*L17; 2 L4*L17*+OCF; 16 L4*L17*C_OHD_Z; 1 L4*L21*RX_P
2 L7*L17*L27; 16 L7*L18*L25; 4 L13*L27*-OHD; 2 L13*L28*L28
1 L14*L27*L29; 4 L15*L28*L29; 1 L15*L29*TY_R_; 3 L16*L17*L27
3 L16*L18*L25; 1 L16*L20*L28; 9 L16*L25*L28; 7 L16*L25*TY_R_
3 L16*L28*L29; 1 L17*L18*L30; 2 L17*L22*L28; 7 L17*L27*TX_R_
2 L18*L28*RX_Q; 1 L18*L30*RX_P; 1 L20*L28*L28; 3 L28*L29*-OHD
3 L28*L29*RY_P; 4 -DPQ*L2; 9 +CPQ*L1; 2 +CPQ*L5
16 +CPQ*C_OHD_Z; 16 -DPR*L7; 17 -DPR*-OHD; 3 -DPR*DROP_OHP_Q
19 +DFY*L1; 19 +DFY*-OHD; 3 +HCZ*L28; 1 +HCZ*TY_R_
3 +OCP*L5; 14 +OCP*L17; 7 +OCP*RX_P; 4 +OCP*RX_Q
9 +OCQ*L17; 2 -CDQ*L5; 5 -CDQ*-OHD; 3 -CDQ*DROP_OHP_Q
1 +OYZ*L27; 1 -OYR*L15; 2 -HPQ*-OHD; 3 -HPQ*RX_P
13 -YZR*L1; 13 -YZR*-OHD; 3 -OFZ*-OHD; 4 -OFZ*TY_R_
5 +HDY*L1; 7 +HDY*L7; 11 +HDY*L13; 5 +HDY*-OHD
11 +HDY*TX_R_; 13 C_OHR_YZ*L7; 6 C_OHR_YZ*L15; 3 C_OHR_YZ*L17
17 C_OHR_YZ*L19; 1 C_OHR_YZ*TY_R_; 3 C_OFR_YZ*L15; 4 C_OFR_YZ*L16
6 C_OZR_Y*L0; 1 C_OZR_Y*L10; 2 C_HDF_Y*L4; 18 C_HDF_Y*L8
3 C_HDF_Y*L19; 12 C_HDF_Y*L24; 3 C_HDF_Y*C_OHD_Z; 1 C_HDF_Y*RY_Q
4 C_HDR_Y*L12; 11 C_HDR_Y*L16; 8 Q_OCPD_Q*L2; 1 Q_OCPD_Q*L17
4 Q_HZDF_Y*L24; 3 Q_HDRF_Y*L16; 11 Q_HZDR_Y*L9
```

Upper bound: `-174515507/500000000`.

### Leaf RRTmpmmmmppmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ -YZR -OFY +OFZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHDYR +ODY
P OHDZP -OZP
P OHDZQ -OZQ
P OHFZR -OZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR +FZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P YOCDR +YCR
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
C HCF Z Y -CFY 157/250
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCP - 1 lower 5177/31333
S R - 2 upper 628/721
X R - 12 lower 29729/51000
Y R - 13 lower 296687/360500
B x Q 10 lower 70939883/140998500
B y Q 11 upper 329963279/541831500
O fc - 1 lower 279/1000
B x Q 10 lower 1699/3000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 283/500 459/500
m 187/1000 609/1000
r 291/500 1
t 411/500 1
```

```c1top-sum
1122 L4*L17; 312 L4*L29; 1682 L17*L27; 540 L17*L29
45 L17*L31; 477 L27*L29; 1131 L0*L0*L29; 952 L0*L1*L17
134 L0*L2*L32; 491 L0*L7*L17; 6 L0*L7*L29; 1 L0*L11*L29
46 L0*L12*L31; 113 L0*L17*L21; 272 L0*L17*L32; 1912 L0*L17*-OHD
226 L0*L17*RX_P; 90 L0*L18*L30; 1318 L0*L19*L29; 252 L0*L21*L29
29 L0*L28*L30; 13 L0*L29*L31; 10 L0*L29*L32; 2318 L0*L29*RY_P
22 L1*L2*L2; 14 L1*L6*L29; 1540 L1*L12*L18; 801 L1*L12*L27
412 L1*L12*L28; 282 L1*L17*L28; 65 L1*L18*L25; 1 L2*L4*L11
571 L2*L4*L27; 135 L2*L4*L32; 22 L2*L7*L27; 3 L2*L11*L27
24 L2*L12*L27; 34 L2*L12*L32; 24 L2*L15*L25; 12 L2*L15*TY_R_
282 L2*L27*L32; 72 L2*L29*L32; 816 L2*L29*RY_P; 3 L3*L15*L27
113 L3*L17*L27; 818 L3*L18*L18; 2500 L3*L18*L27; 3 L4*L4*L31
550 L4*L4*TX_R_; 530 L4*L5*L17; 181 L4*L6*L28; 69 L4*L12*L29
230 L4*L17*L18; 935 L4*L17*L25; 274 L4*L17*DROP_OHP_Q; 884 L4*L17*RX_Q
63 L4*L29*RX_P; 1317 L5*L18*L25; 1322 L5*L25*L28; 58 L5*L27*L30
2 L6*L25*L28; 5 L7*L15*L17; 21 L7*L15*L29; 612 L7*L18*L27
458 L7*L27*L28; 50 L7*L28*L29; 1 L9*L27*L27; 4 L10*L17*TY_R_
4 L11*L18*L25; 1 L11*L25*TY_R_; 2 L11*L27*L29; 1 L11*L28*L29
14 L11*L29*-OHD; 48 L12*L19*L29; 69 L12*L25*L28; 2 L12*L27*L27
3 L13*L27*L28; 3 L14*L18*L25; 442 L14*L27*L29; 20 L15*L17*L29
29 L15*L17*+OCF; 3 L15*L17*TY_R_; 135 L15*L19*L29; 107 L15*L21*L29
86 L15*L22*L29; 2 L15*L25*L27; 668 L15*L28*L29; 20 L15*L29*L31
1425 L15*L29*RY_P; 291 L15*L29*TY_R_; 93 L17*L17*-OHD; 142 L17*L18*L32
22 L17*L18*TX_R_; 1896 L17*L22*L24; 1160 L17*L22*L27; 64 L17*L22*TX_R_
11 L17*L24*L32; 279 L17*L26*L29; 2 L17*L27*L27; 211 L17*L27*L32
180 L17*L27*-OHD; 274 L17*L27*RX_P; 320 L17*L27*RY_P; 825 L17*L27*RX_Q
27 L17*L28*L32; 278 L17*L28*RY_P; 36 L17*L29*RY_P; 3 L17*L31*-OHD
137 L17*L31*TY_R_; 142 L18*L18*L30; 62 L18*L18*TX_R_; 62 L18*L19*L29
2 L18*L25*L27; 340 L18*L27*L30; 169 L18*L28*L30; 753 L19*L28*L29
897 L24*L28*L28; 3 L25*L27*L28; 203 L27*L28*L30; 268 L27*L29*-OHD
1037 L27*L29*RY_P; 22 L28*L28*L29; 68 L28*L28*L30; 18 L28*L29*L31
7 L29*L31*RY_P; 74 L29*+OCF*RY_P; 98 -DPQ*L29; 2715 +CPQ*L0
633 +CPQ*L4; 310 +CPQ*L12; 140 +CPQ*L16; 925 +CPQ*L18
1412 +CPQ*L24; 4887 +CPQ*L27; 851 +CPQ*-OHD; 647 +CPQ*+OCF
647 +CPQ*TX_R_; 25 -DPR; 1243 -DPR*L1; 626 -DPR*L5
4 -DPR*L11; 3 -DPR*L14; 62 -DPR*L19; 2 -DPR*L20
2 -DPR*L27; 2056 -DPR*RX_Q; 668 +HCZ*L0; 453 +HCZ*L4
16 +HCZ*L11; 1689 +HCZ*L19; 107 +HCZ*L21; 86 +HCZ*L22
748 +HCZ*L26; 20 +HCZ*L31; 69 -HFZ*L7; 16 -HFZ*L11
310 -HFZ*L16; 812 -HFZ*L19; 417 -HFZ*L21; 86 -HFZ*L22
67 -HFZ*L31; 256 -HFZ*-OHD; 2418 -HFZ*RY_P; 24 -HFZ*TX_R_
1552 -HFZ*TY_R_; 404 +OCP*L6; 241 +OCP*L13; 129 +OCP*L14
652 +OCP*L18; 287 +OCP*L23; 2 +OCP*L25; 912 +OCP*L27
719 +OCP*L28; 81 +OCP*L30; 8 +OCP*L33; 710 +OCQ*L17
1600 -CDQ*L0; 58 -CDQ*L16; 1282 -CDQ*L18; 2059 -CDQ*L24
2350 -CDQ*L27; 580 -CDQ*L28; 177 -CDQ*-OHD; 528 -HFR*L5
22 -HFR*L6; 93 -HFR*L13; 1178 -HFR*L19; 83 -HFR*L28
814 -HFR*-OHD; 3 -HFR*TY_R_; 460 -DFR*L0; 753 -DFR*L4
2 -DFR*L6; 4 -DFR*L10; 69 -DFR*L12; 7 -DFR*L15
955 -DFR*L16; 753 -DFR*L18; 3 -DFR*L27; 925 -DFR*-OHD
2 -DFR*RX_P; 14 -OYR*L1; 1 -OYR*L4; 2 -OYR*L15
2 -OYR*L27; 15 -OYR*-OHD; 802 -HPQ*L0; 103 -HPQ*L3
517 -HPQ*L4; 485 -HPQ*L7; 310 -HPQ*L12; 1830 -HPQ*L27
69 -HPQ*-OHD; 140 -HPQ*RX_P; 358 -HPQ*RY_P; 18 -YZR*L1
2 -YZR*L5; 18 -YZR*-OHD; 2 -YZR*TY_R_; 408 +OFZ*L1
1 +OFZ*L10; 312 +OFZ*L16; 459 +OFZ*L19; 727 +OFZ*L21
66 +OFZ*DROP_OHP_Q; 1211 +OFZ*RY_P; 807 +OFZ*TY_R_; 2 -DYR*TY_R_
3 -FYZ*L4; 2 -FYZ*L27; 24 +FZR*L29; 2 +FYR*L15
15 -CFY*L14; 5 -CFY*L27; 662 C_CDP_Q*L29; 437 Q_ORFH_YZ*L4
5 Q_ORFH_YZ*L15; 387 Q_ORFH_YZ*L17; 144 Q_OCPD_Q*L29; 291 Q_OCRF_Y*L17
48 Q_DFZP_Y*L29
```

Upper bound: `-70521577/40000000`.

### Leaf RRTmpmmmmppmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ -YZR +OFY`.

```c1top-geometry
C OHF Y Z +FOZ 157/250
P OHDFY +ODY
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
```

```c1top-bounds
```

Exclusion: `gp OHFYZ`.

### Leaf RRTmpmmmmpppmmm

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ +YZR -OFY -OFZ -HDY`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYR +HYR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHCR +YCR
P YOHZR +YHZ
P YODZR -YDZ
P YODPR +YPR
P YODQR +YQR
P YOFZR +YFZ
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
P ROHYZ +RHZ
P HODYZ -HDZ
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
T OHR YZ 12 lower 347/500
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 347/500 1
t 199/250 1
```

```c1top-sum
68 L0*L12*L29; 8 L0*L12*TY_R_; 92 L0*L27*L29; 37 L0*L28*L29
37 L1*L1*L6; 42 L1*L2*L2; 148 L1*L2*L6; 50 L1*L2*L8
8 L1*L2*TY_R_; 69 L1*L4*L6; 622 L1*L6*L6; 403 L1*L6*L8
187 L1*L6*L16; 130 L1*L6*L18; 939 L1*L6*L25; 80 L1*L6*L26
212 L1*L8*L8; 305 L1*L8*L11; 85 L1*L8*TY_R_; 98 L1*L11*L29
244 L1*L12*L14; 121 L1*L12*L18; 161 L1*L12*L27; 37 L1*L12*L28
33 L1*L16*L18; 259 L1*L16*L25; 513 L2*L4*L17; 104 L2*L5*L25
286 L2*L12*L27; 380 L2*L12*L28; 43 L2*L13*TY_R_; 639 L2*L17*L19
235 L2*L19*L19; 7 L2*L27*L33; 6 L2*L28*L31; 11 L3*L14*L14
292 L3*L18*L18; 250 L3*L18*L27; 263 L4*L4*L17; 100 L4*L6*L11
252 L4*L6*TY_R_; 9 L4*L8*L28; 26 L4*L8*TY_R_; 39 L4*L28*L29
208 L5*L5*L16; 950 L5*L5*L25; 216 L5*L8*L25; 275 L5*L11*L29
32 L5*L12*L27; 9 L5*L15*L25; 42 L5*L16*L16; 145 L5*L16*L18
1403 L5*L16*L25; 142 L5*L16*L28; 8 L5*L16*L30; 1231 L5*L16*TY_R_
2422 L5*L18*L25; 31 L5*L18*L30; 1 L5*L25*L27; 203 L5*L25*L28
12 L5*L27*L30; 1188 L6*L6*TY_R_; 25 L6*L10*L29; 276 L6*L10*TY_R_
32 L6*L15*TY_R_; 1768 L6*L16*TY_R_; 314 L6*L18*L25; 3 L6*L26*L32
373 L8*L12*L28; 1305 L8*L16*TY_R_; 1309 L8*L18*L25; 555 L8*L25*L28
4 L9*L16*L27; 8 L9*L16*L28; 184 L9*L28*L29; 275 L10*L28*L29
373 L11*L14*L29; 318 L12*L12*L27; 95 L12*L12*L28; 121 L12*L16*L28
329 L12*L25*L28; 47 L12*L27*L29; 309 L12*L28*L29; 3 L12*L28*TY_R_
23 L15*L25*L28; 195 L15*L27*L29; 26 L15*L28*L29; 406 L16*L16*TY_R_
105 L16*L17*L28; 406 L16*L18*L25; 1293 L16*L18*TY_R_; 76 L16*L25*L32
4 L16*L27*L29; 1 L16*L27*L33; 1 L16*L28*L28; 123 L16*L28*L29
15 L16*L28*L30; 11 L16*L28*L33; 156 L16*L28*TY_R_; 76 L16*L30*TY_R_
36 L17*L18*L32; 1293 L18*L18*L25; 36 L18*L18*L30; 227 L18*L25*L28
1 L18*L27*L30; 16 L18*L28*L30; 44 L19*L27*L29; 130 L19*L28*L29
137 L25*L28*L29; 11 L25*L28*L30; 44 L27*L28*L29; 3 L27*L29*L33
28 L28*L29*L29; 1 L28*L29*L31; 10 L28*L30*TY_R_; 1 L29*TY_R_*TY_R_
62 -DPQ*L2; 109 -DPQ*L17; 106 +CPQ*L5; 6 +CPQ*L6
368 +CPQ*L18; 579 +CPQ*L24; 79 +CPQ*L26; 101 +CPQ*-OHD
36 +CPQ*+OCF; 26 +CPQ*DROP_OHP_Q; 916 -DPR*L1; 1399 -DPR*L5
314 -DPR*L6; 1309 -DPR*L8; 1293 -DPR*L18; 299 -DPR*L20
1143 -DPR*-OHD; 254 -DPR*DROP_OHP_Q; 382 -DPR*RX_Q; 121 -HFY*L3
9 -HFY*L4; 212 -HFY*L9; 305 -HFY*L10; 771 -HFY*L13
9 -HFY*L14; 125 -HFY*L16; 439 -HFY*L24; 25 -HFY*TX_R_
720 +HCZ*L1; 26 +HCZ*L5; 373 +HCZ*L10; 11 +HCZ*L14
121 +HCZ*L18; 230 +HCZ*L24; 195 +HCZ*L27; 757 +HCZ*-OHD
146 +HCZ*TX_R_; 771 -HFZ*L8; 131 -HFZ*L10; 282 -HFZ*L25
1 +OCP*L1; 58 +OCP*L7; 121 +OCP*L13; 121 +OCP*L15
1240 +OCP*L17; 47 +OCP*L19; 197 +OCP*L25; 358 +OCP*L27
5 +OCP*L32; 232 +OCP*-OHD; 575 +OCP*RX_P; 74 +OCP*RY_P
36 +OCP*RX_Q; 36 +OCQ*L2; 107 +OCQ*L17; 14 +OCQ*L28
5 +OCQ*TY_R_; 6 -CDQ*L6; 97 -CDQ*L16; 326 -CDQ*L18
579 -CDQ*L24; 24 -CDQ*L27; 87 -CDQ*L28; 44 -HFR*L4
800 -HFR*L6; 1055 -HFR*L9; 62 -HFR*L11; 330 -HFR*L12
180 -HFR*L16; 17 -DFR*L0; 214 -DFR*L4; 1217 -DFR*L6
1277 -DFR*L16; 44 -DFR*L19; 1 -DFR*L27; 787 +OYZ*L1
305 +OYZ*L9; 305 +OYZ*L11; 140 +OYZ*L12; 305 +OYZ*L15
926 +OYZ*L24; 1090 +OYZ*L26; 1007 +OYZ*-OHD; 88 +OYZ*DROP_OHP_Q
33 +OYZ*RX_P; 167 +OYZ*TX_R_; 350 +OYZ*TY_R_; 445 -OYR*L12
891 -OYR*L14; 1 -HPQ*L1; 6 -HPQ*L6; 56 -HPQ*L16
42 -HPQ*L18; 101 -HPQ*L25; 87 -HPQ*L26; 17 -HPQ*DROP_OHP_Q
62 -HPQ*RX_P; 4 -HPQ*TY_R_; 1799 +YZR*L1; 32 +YZR*L5
464 +YZR*L6; 305 +YZR*L8; 318 +YZR*L12; 1822 +YZR*-OHD
195 +YZR*+OCF; 9 -OFZ*L27; 36 -OFZ*L28; 915 -HDY*L13
12 -HDY*L17; 1286 -HDY*L24; 23 -HDY*L27; 361 -HDY*L29
891 -OZR*L11; 85 -DYR*L1; 195 -DYR*L3; 32 -DYR*L4
305 -DYR*L9; 133 -DYR*L12; 553 -HYZ*L12; 233 -HYZ*L15
121 -HYZ*L16; 474 -HYZ*L29; 458 +DYZ*L2; 95 +DYZ*L12
196 +DYZ*L25; 3 +DYZ*TY_R_; 146 -FYZ*L2; 305 -FYZ*L11
72 -FYZ*L15; 167 -FYZ*L26; 385 -FYZ*TY_R_; 148 C_OHR_YZ*L29
214 C_OFR_YZ*L11; 334 C_OFR_YZ*L14; 39 C_OFR_YZ*L28; 19 C_CDP_Q*L2
52 C_CDP_Q*L6; 121 C_CDP_Q*L12; 212 Q_OYFH_Z*L8; 556 Q_OCPD_Q*L2
1249 Q_HZDR_Y*L8; 309 Q_HZDR_Y*L29; 592 Q_HZRF_Y*L8; 181 Q_HZRF_Y*L29
```

Upper bound: `-1902707787/500000000`.

### Leaf RRTmpmmmmpppmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ +YZR -OFY -OFZ +HDY`.

```c1top-geometry
C HDF Y Z -HDZ 153/500
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODYZ -HYZ
P HODYP -HYP
P HODYQ -HYQ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ +DYZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOCDR +YCR
P YODPR +YPR
P YODQR +YQR
P ZOHCR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
35 L4*L17; 30 L17*L27; 6 L0*L1*L17; 2 L0*L2*L3
6 L0*L2*L7; 25 L0*L2*TX_R_; 73 L0*L6*L11; 7 L0*L7*L17
58 L0*L9*-OHD; 17 L0*L9*DROP_OHP_Q; 38 L0*L10*L29; 8 L0*L12*L25
5 L0*L12*L29; 29 L0*L17*L18; 20 L0*L17*L22; 5 L0*L17*L25
1 L0*L17*L31; 10 L0*L17*-OHD; 10 L0*L17*DROP_OHP_Q; 4 L0*L27*L29
9 L0*L29*TX_R_; 1 L1*L4*L31; 3 L1*L9*L28; 6 L1*L28*L29
34 L2*L12*L27; 27 L2*L17*L19; 2 L3*L17*L18; 56 L3*L18*L18
14 L3*L20*L28; 13 L4*L4*L9; 30 L4*L6*L9; 6 L4*L6*L11
2 L4*L9*L14; 58 L4*L9*L27; 58 L4*L11*DROP_OHR_Z; 8 L4*L12*L19
116 L4*L17*L18; 46 L4*L17*+OCF; 93 L4*L17*C_OHD_Z; 39 L4*L19*L25
7 L4*L19*RX_P; 30 L4*L19*RX_Q; 7 L4*L27*L29; 3 L4*L31*-OHD
1 L4*L31*DROP_OHP_Q; 21 L6*L6*L11; 2 L6*L10*L17; 20 L6*L11*L14
10 L6*L11*L16; 5 L6*L14*L25; 5 L6*L17*L27; 85 L7*L9*L28
6 L7*L10*L28; 5 L7*L25*L28; 19 L7*L28*L29; 30 L9*L12*L28
1 L9*L17*L28; 6 L12*L28*L29; 5 L13*L17*L28; 8 L13*L18*L28
1 L13*L28*L28; 4 L15*L27*L29; 3 L15*L28*L29; 7 L16*L17*L23
3 L16*L17*L27; 1 L16*L17*L33; 3 L17*L18*L24; 105 L17*L18*L27
1 L17*L18*L30; 9 L17*L18*L32; 7 L17*L18*RX_Q; 16 L17*L27*+OCF
58 L17*L27*C_OHD_Z; 5 L17*L28*TX_R_; 105 L18*L18*L25; 9 L18*L18*L30
58 L18*L25*L28; 49 L18*L28*RX_Q; 7 L28*L29*-OHD; 9 L28*L29*DROP_OHP_Q
8 L28*L29*RX_P; 10 TOPCOUNT*L28; 18 -OHF*L26; 5 -OHF*L29
14 -DPQ*L2; 36 +CPQ*L1; 3 +CPQ*L17; 109 +CPQ*L18
61 +CPQ*C_OHD_Z; 24 -DPR*L1; 105 -DPR*L18; 82 -DPR*-OHD
16 -DPR*+OCF; 3 -DPR*DROP_OHP_Q; 7 +CDY*L28; 95 +DFY*L1
197 +DFY*-OHD; 12 +DFY*DROP_OHP_Q; 16 +HCZ*L1; 3 +HCZ*L5
10 +HCZ*L17; 8 +HCZ*L18; 4 +HCZ*L27; 18 +HCZ*-OHD
10 +HCZ*RX_P; 34 +HCZ*DROP_OHR_Z; 15 -HFZ*L10; 26 -HFZ*L24
30 +OCP*L1; 5 +OCP*L13; 8 +OCP*L15; 79 +OCP*L17
2 +OCP*L19; 16 +OCP*L25; 3 +OCP*L32; 30 +OCP*-OHD
41 +OCP*RX_P; 12 +OCQ*L17; 79 -CDQ*L18; 19 -CDQ*-OHD
10 -CDQ*DROP_OHP_Q; 44 +OYZ*L1; 46 +OYZ*-OHD; 5 +OYZ*DROP_OHP_Q
32 +OYZ*DROP_OHR_Z; 51 -OYR*L4; 1 -HPQ*L17; 29 -HPQ*L18
5 -HPQ*-OHD; 14 -HPQ*RX_P; 2 +YZR*L7; 32 +YZR*L12
27 -OFZ*L27; 49 +HDY*L1; 6 +HDY*L5; 116 +HDY*L7
30 +HDY*L12; 2 +HDY*L15; 104 +HDY*-OHD; 11 +HDY*DROP_OHP_Q
1 +ODZ*L28; 2 -HYZ*L7; 32 -HYZ*L12; 5 -HYZ*L16
21 +FYR*L6; 7 -CYR*L4; 23 C_ODF_YZ*L28; 38 C_OFR_YZ*L0
3 C_OFR_YZ*L4; 9 C_OFR_YZ*L9; 23 C_OFR_YZ*L14; 11 C_HDF_Y*L4
8 C_CDP_Q*L2; 5 C_CDP_Q*L12; 2 TPY_R_*L28; 35 Q_OYFH_Z*L15
23 Q_OYFH_Z*L25; 33 Q_OCPD_Q*L2; 11 Q_HZDF_Y*L29; 1 Q_HDRF_Y*L2
59 Q_HDRF_Y*L4; 19 Q_HDRF_Y*L6; 5 Q_HDRF_Y*L16; 11 Q_HZRF_Y*L7
32 Q_HZRF_Y*L8; 32 Q_HZRF_Y*L13; 19 Q_HZRF_Y*L29; 15 Q_HZRF_Y*+OCF
32 Q_CPDY_Q*L0
```

Upper bound: `-826161457/500000000`.

### Leaf RRTmpmmmmpppmp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ +YZR -OFY +OFZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHDYR +ODY
P OHDZP -OZP
P OHDZQ -OZQ
P OHFZR -OZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR +FZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P YOCDR +YCR
P YODZR -YDZ
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
C HCF Z Y -CFY 157/250
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCP - 1 lower 5177/31333
S R - 2 upper 628/721
X R - 12 lower 29729/51000
Y R - 13 lower 296687/360500
B x Q 10 lower 70939883/140998500
B y Q 11 upper 329963279/541831500
O fc - 1 lower 279/1000
B x Q 10 lower 1699/3000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 283/500 459/500
m 187/1000 609/1000
r 291/500 1
t 411/500 1
```

```c1top-sum
16 L4*L17; 5 L27*L29; 4 L28*L29; 3 L0*L1*L17
5 L0*L2*L27; 4 L0*L2*TX_R_; 3 L0*L7*L17; 1 L0*L13*L27
2 L0*L14*L29; 1 L0*L14*TX_R_; 3 L0*L17*-OHD; 1 L0*L17*DROP_OHP_Q
30 L1*L2*L6; 8 L1*L6*L6; 4 L1*L6*L25; 5 L1*L12*L27
2 L1*L28*+OCF; 7 L2*L2*L19; 2 L2*L5*L12; 1 L2*L6*L19
22 L2*L6*TY_R_; 29 L2*L12*L27; 6 L2*L12*L28; 60 L2*L16*TY_R_
21 L2*L28*TX_R_; 8 L3*L4*L4; 2 L3*L5*L18; 3 L3*L17*L18
13 L3*L17*L27; 1 L3*L18*L30; 5 L3*L18*TX_R_; 23 L4*L4*L25
3 L4*L5*L17; 5 L4*L14*L29; 1 L4*L17*L18; 1 L4*L17*L21
2 L4*L17*L23; 32 L4*L17*TY_R_; 1 L4*L27*L29; 4 L4*L27*TX_R_
6 L5*L5*L25; 6 L5*L6*L12; 35 L5*L18*L25; 1 L5*L25*L25
1 L5*L25*TY_R_; 4 L5*L28*L29; 3 L5*L28*+OCF; 9 L6*L16*TY_R_
3 L6*L18*L25; 1 L6*L25*TY_R_; 16 L7*L17*L27; 3 L7*L18*L24
23 L12*L27*L29; 6 L13*L28*TX_R_; 23 L14*L29*TX_R_; 7 L15*L27*L29
2 L16*L17*L28; 5 L16*L25*TY_R_; 4 L17*L17*L22; 4 L17*L18*RX_Q
3 L17*L27*L27; 5 L17*L27*TX_R_; 1 L17*L32*+OCF; 3 L18*L25*L27
1 L27*L28*+OCF; 1 L27*L29*-OHD; 2 L28*L29*DROP_OHP_Q; 3 L29*-OHD*TX_R_
1 -DPQ*L29; 11 +CPQ; 2 +CPQ*L5; 1 +CPQ*L7
7 +CPQ*+OCF; 1 -DPR; 35 -DPR*L5; 4 -DPR*L6
3 -DPR*L27; 57 -DPR*+OCF; 14 +HCZ*L1; 5 +HCZ*L5
1 +HCZ*L7; 7 +HCZ*L27; 12 +HCZ*-OHD; 29 +HCZ*TX_R_
7 -HFZ*L2; 5 -HFZ*L5; 6 -HFZ*L6; 1 +OCP*L5
5 +OCP*L17; 50 +OCP*L25; 2 +OCP*L30; 4 -CDQ*L1
2 -CDQ*L5; 1 -CDQ*L7; 4 -CDQ*-OHD; 2 -CDQ*DROP_OHP_Q
1 -CDQ*RX_P; 23 -HFR*L12; 4 -DFR*L4; 5 -DFR*L16
5 -DFR*L24; 1 -HPQ*L1; 1 -HPQ*-OHD; 4 -HPQ*DROP_OHP_Q
7 +OFZ*L26; 9 +OFZ*-OHD; 29 +OFZ*TX_R_; 18 C_OHF_Z*L2
2 C_OHF_Z*L6; 6 C_OHF_Z*L15; 3 C_CDP_Q*L17; 11 C_FZR_Y*L1
12 C_FZR_Y*-OHD; 52 C_FZR_Y*+OCF; 1 Q_ORFH_YZ*L4; 4 Q_ORFH_YZ*L29
1 Q_OCPD_Q*L29; 2 Q_CPRF_YQ*L29; 12 Q_DRFZ_Y*L6; 6 Q_DRFZ_Y*L25
9 Q_DRFZ_Y*+OCF
```

Upper bound: `-33392627/200000000`.

### Leaf RRTmpmmmmpppp

Assumptions: `-FPQ +CYZ -OYP -OYQ -OYR -HPQ +YZP +YZQ +YZR +OFY`.

```c1top-geometry
C OHF Y Z +FOZ 157/250
P OHDFY +ODY
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
```

```c1top-bounds
```

Exclusion: `gp OHFYZ`.

### Leaf RRTmpmmpmmmmm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ -ODY`.

```c1top-geometry
C OCD Y Z -DOZ 140829/250000
P OHDFY -OFY
P OHDZP -OZP
P OHDZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYZ -DYZ
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
P POYZR -PYR
P QOYZR -QYR
```

```c1top-bounds
T OCD Y 1 lower 93/299
E OD YPQ 2 lower 837/1000
B x Q 10 lower 261983/448500
B y Q 11 lower 51553/235500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 311/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 73/125 459/500
m 109/500 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
5 L4*L27; 1 L12*L17; 2 L17*L31; 5 L28*L29
3 L0*L1*L17; 3 L0*L7*L28; 29 L0*L12*L25; 7 L0*L15*L29
15 L0*L17*L21; 5 L0*L17*L22; 62 L0*L17*+OCF; 43 L0*L17*DROP_OHP_Q
27 L0*L17*TY_R_; 4 L0*L28*L29; 1 L0*L28*DROP_OHP_Q; 61 L1*L2*L17
38 L1*L4*L17; 15 L1*L6*L6; 12 L1*L12*L28; 1 L1*L28*L30
205 L2*L3*L17; 27 L2*L5*L5; 157 L2*L5*L6; 161 L2*L5*L25
10 L2*L15*L17; 205 L2*L17*+OCF; 12 L2*L17*RY_Q; 1 L3*L4*L12
11 L3*L7*L15; 30 L3*L7*L18; 132 L4*L5*L6; 16 L4*L6*L17
104 L4*L6*L27; 16 L4*L7*L15; 6 L4*L7*L28; 11 L4*L12*L25
8 L4*L13*L17; 7 L4*L15*L17; 4 L4*L17*L19; 9 L4*L17*L21
19 L4*L17*L22; 9 L4*L17*L24; 10 L4*L17*L26; 2 L4*L17*L31
79 L4*L17*-OHD; 186 L4*L17*+OCF; 113 L4*L17*TY_R_; 2 L4*L18*L30
19 L4*L28*L29; 12 L4*L28*RX_Q; 119 L4*L28*TX_R_; 114 L5*L5*L13
5 L5*L6*L6; 3 L5*L6*L13; 137 L5*L6*L25; 19 L5*L6*RY_P
101 L5*L18*L25; 4 L5*L25*TY_R_; 1 L6*L6*L33; 81 L6*L6*TY_R_
32 L6*L12*L27; 13 L6*L17*L27; 1 L6*L17*L33; 21 L6*L18*L25
21 L7*L7*L15; 2 L7*L17*L32; 1 L7*L18*L30; 7 L7*L22*L28
32 L7*L25*L28; 23 L12*L18*RX_Q; 8 L13*L17*L27; 5 L14*L16*L17
11 L14*L17*RY_Q; 3 L15*L16*L30; 11 L15*L17*L22; 1 L15*L17*L32
1 L15*L18*L30; 23 L15*L18*RX_Q; 18 L17*L27*-OHD; 17 L17*L27*+OCF
1 L17*L27*TY_R_; 1 L18*L25*TY_R_; 1 L18*L29*L30; 16 L20*L28*L29
12 L20*L28*DROP_OHP_Q; 10 L28*L29*RX_P; 1 L28*L29*RX_Q; 7 L28*L29*RY_Q
2 L28*L30*RX_P; 1 L29*L29*L32; 14 +CPQ; 54 +CPQ*L4
23 +CPQ*L12; 34 +CPQ*L15; 9 +CPQ*+OCF; 47 +CPQ*DROP_OHP_Q
2 +CPQ*RX_Q; 5 -DPR; 9 -DPR*L1; 123 -DPR*L5
21 -DPR*L6; 8 -DPR*L13; 17 -DPR*+OCF; 1 -DPR*TY_R_
12 -OHZ*L28; 6 +HCZ*L0; 11 +HCZ*L6; 12 -HFZ*L1
16 -HFZ*L4; 18 -HFZ*L25; 19 -HFZ*-OHD; 36 -HFZ*+OCF
35 -HFZ*RX_Q; 21 -HFZ*TX_R_; 154 +OCP*L1; 33 +OCP*L5
44 +OCP*L7; 1 +OCP*L13; 5 +OCP*L14; 45 +OCP*L17
10 +OCP*L23; 17 +OCP*L25; 154 +OCP*-OHD; 9 -CDQ*L0
1 -CDQ*L3; 12 -CDQ*L4; 20 -CDQ*L7; 2 -CDQ*L13
34 -CDQ*L15; 10 -CDQ*L18; 101 -HFR*L5; 36 -HFR*L6
33 -HFR*L13; 44 -DFR*L6; 3 -DFR*L13; 4 -OZR*L6
5 -HPQ*L1; 2 -HPQ*L3; 25 -HPQ*L4; 18 -HPQ*L6
47 -HPQ*DROP_OHP_Q; 2 -HPQ*RX_Q; 7 C_ODP_YQ*L14; 190 C_ODP_YQ*+OCF
1 C_ODP_YQ*DROP_OHP_Q; 10 C_ODP_YQ*RY_Q; 9 C_ODP_YQ*TX_R_; 14 C_CZQ_Y*L1
34 C_CZQ_Y*L4; 2 C_CZQ_Y*L20; 14 C_CZQ_Y*-OHD; 23 C_CZQ_Y*DROP_OHP_Q
23 TPX_R_; 229 TPX_R_*L0; 39 TPX_R_*L6; 19 TPX_R_*L19
4 TPX_R_*L26; 145 TPX_R_*+OCF; 8 Q_ORFH_Z*L17; 35 Q_OCQZ_Y*L6
```

Upper bound: `-8196949/500000000`.

### Leaf RRTmpmmpmmmmpmmmm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ +ODY -OFZ -HDY -HDZ -HYZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZP -YHP
P YOHZQ -YHQ
P YOHZR -YZR
P YOHPR +YPR
P YOHQR +YQR
P YODZP +YDZ
P YOFZP -YFP
P YOFZQ -YFQ
P ZOHCR +ZCR
P ZOHYP -ZHP
P ZOHYQ -ZHQ
P ZODPR +ZPR
P ZODQR +ZQR
P ZOFYP -ZFP
P ZOFYQ -ZFQ
P POHQR -PQR
```

```c1top-bounds
```

Exclusion: `cluster OHP Q OHQ YZ`.

### Leaf RRTmpmmpmmmmpmmmpm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ +ODY -OFZ -HDY -HDZ +HYZ -HYP`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYZP -HZP
P HOYPQ -HYQ
P HOZPQ -HZQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P ZOHCR +ZCR
P ZOHYR +ZYR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ +PYQ
P POHZQ +PZQ
P POHQR -PQR
P POYZR -PYR
P QOYZR -QYR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
5 L0*L1*L17; 2 L0*L3*L17; 1 L0*L5*L12; 4 L0*L14*L17
1 L0*L17*L25; 1 L0*L28*L30; 2 L1*L1*L25; 1 L1*L4*L31
2 L1*L5*L25; 1 L1*L5*+OCF; 1 L1*L6*L15; 1 L1*L12*L17
39 L1*L17*+OCF; 4 L1*L17*DROP_OHR_Z; 3 L2*L5*-OHD; 54 L2*L5*DROP_OHP_Q
1 L2*L5*TY_R_; 2 L2*L16*L28; 15 L3*L4*L17; 1 L3*L7*L32
17 L3*L12*L28; 1 L3*L18*TX_R_; 1 L4*L27*RX_Q; 4 L5*L17*TX_R_
1 L5*L25*L27; 1 L5*L25*TY_R_; 1 L5*L27*L29; 3 L5*L29*TY_R_
5 L6*DROP_OHP_Q*TY_R_; 1 L7*L17*L28; 1 L7*L27*RY_P; 15 L12*L16*L28
3 L17*L22*L26; 3 L17*L25*-OHD; 4 L20*L28*+OCF; 1 L20*L28*RY_P
3 L27*L29*DROP_OHP_Q; 2 L27*RY_P*RX_Q; 3 L28*L29*-OHD; 12 L28*L29*DROP_OHP_Q
1 L28*L29*RY_P; 2 L28*L29*RY_Q; 2 +HDF*L13; 5 +HDF*L21
1 +CPQ*L1; 2 +CPQ*L26; 2 -OHZ*L5; 2 -HFZ*DROP_OHP_Q
1 +DFZ*L16; 41 +OCP*L1; 41 +OCP*-OHD; 1 +OCP*TX_R_
2 -OHQ*L27; 5 +OCQ*L7; 6 +OCQ*L19; 5 +OCQ*-OHD
1 +OCQ*TX_R_; 2 -HFQ*L1; 5 -HFQ*TY_R_; 5 -HFR*-OHD
8 -HFR*DROP_OHP_Q; 1 -HFR*RY_P; 4 -HFR*RY_Q; 2 +CDR*L17
2 -HDZ*L7; 1 -HDZ*L16; 4 -HDZ*-OHD; 17 -HDZ*RX_P
4 C_ODR_Y*L23; 7 C_ODR_Y*DROP_OHP_Q; 1 C_ODR_Y*RY_Q; 4 C_HDP_YZ*L13
54 C_HDP_YZ*+OCF; 4 C_HDQ_YZ*L29; 1 C_HDQ_YZ*RY_P; 3 C_HZP_Y*-OHD
8 C_HQR_YZ*L4; 1 C_HQR_YZ*L16; 7 C_HQR_YZ*-OHD; 18 C_CZP_YQ*L1
18 C_CZP_YQ*-OHD; 2 Q_OCDR_Y*L5; 1 Q_OCPR_YQ*L5; 2 Q_OQDF_YZ*L27
1 Q_HQPZ_Y*-OHD
```

Upper bound: `-580484223/500000000`.

### Leaf RRTmpmmpmmmmpmmmppm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ +ODY -OFZ -HDY -HDZ +HYZ +HYP -HYQ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYZQ -HZQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P YOHFP -YFP
P YOHPQ -YPQ
P YOHPR +YPR
P ZOHCR +ZCR
P ZOHYR +ZYR
P ZOHQR +ZQR
P ZODPR +ZPR
P POHQR -PQR
P POYZQ +PZQ
P QOYZR -QYR
C HPQ Y Z +HPZ 139928870261/235971000000
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L0*L0*L30; 2 L0*L1*L17; 1 L0*L4*L30; 10 L0*L7*L27
3 L0*L15*RX_Q; 14 L0*L20*L27; 2 L0*L30*DROP_OHP_YQ; 3 L1*L3*L18
8 L1*L3*L22; 26 L1*L4*L6; 163 L1*L6*DROP_OHP_YQ; 3 L1*L15*L17
21 L1*L17*L20; 1 L1*L17*L30; 49 L1*L17*DROP_OHP_YQ; 17 L1*L17*RY_P
18 L1*L17*DROP_OHR_Z; 16 L1*L22*L25; 1 L1*L22*RX_Q; 1 L1*L25*L32
176 L1*L25*DROP_OHP_YQ; 7 L1*L32*DROP_OHP_YQ; 27 L2*L5*DROP_OHP_YQ; 1 L2*L5*RY_P
7 L2*L13*L28; 10 L2*L19*L28; 4 L3*L4*L15; 14 L3*L12*L28
60 L3*L15*DROP_OHP_YQ; 96 L3*L18*DROP_OHP_YQ; 5 L3*L32*RY_P; 1 L3*L32*RY_Q
5 L4*L4*L17; 1 L4*L14*L17; 6 L4*L17*L18; 31 L4*L17*L21
2 L4*L17*L22; 56 L4*L17*DROP_OHP_YQ; 2 L5*L12*L22; 14 L5*L12*DROP_OHP_YQ
7 L5*L16*L27; 3 L5*L19*L25; 90 L5*L25*DROP_OHP_YQ; 8 L5*L25*RY_P
2 L5*L27*DROP_OHP_YQ; 134 L6*DROP_OHP_YQ*TY_R_; 127 L7*L27*DROP_OHP_YQ; 59 L12*L28*DROP_OHP_YQ
4 L12*L28*RX_Q; 74 L14*L16*L17; 7 L15*L18*RX_Q; 8 L15*L22*DROP_OHP_YQ
9 L15*DROP_OHP_YQ*RX_Q; 15 L16*L17*L27; 23 L16*L17*L32; 3 L16*L28*L28
2 L17*L18*L22; 17 L17*L20*TY_R_; 14 L17*L28*L29; 2 L17*L30*TY_R_
1 L18*L30*DROP_OHP_YQ; 49 L20*L27*DROP_OHP_YQ; 2 L20*L28*+OCF; 140 L20*L28*DROP_OHP_YQ
30 L20*L28*RY_P; 2 L27*L28*DROP_OHP_YQ; 14 L27*L29*DROP_OHP_YQ; 1 L27*L29*RY_P
3 L28*L28*DROP_OHP_YQ; 7 L28*L29*-OHD; 137 L28*L29*DROP_OHP_YQ; 22 L28*L30*DROP_OHP_YQ
23 L32*DROP_OHP_YQ*RX_P; 4 L32*DROP_OHP_YQ*DROP_OHR_Z; 4 L32*DROP_OHP_YQ*TX_R_; 1 L32*RX_P*TX_R_
1 L32*RY_P*RX_Q; 2 -OHF*L1; 13 +HDF*L21; 19 +OPQ*L1
11 +OPQ*L16; 5 +OPQ*DROP_OHP_YQ; 4 +CPQ*L26; 2 -DPR*L1
18 -DPR*DROP_OHP_YQ; 16 +OCP*L17; 7 +HCP*L32; 6 -OHQ*L27
210 +OCQ*L16; 82 +OCQ*L19; 9 +OCQ*L23; 47 +OCQ*-OHD
78 +OCQ*RY_P; 9 +OCQ*TX_R_; 4 +OCQ*TY_R_; 5 -HFR*L4
23 -HFR*-OHD; 275 -HFR*DROP_OHP_YQ; 14 -HFR*RY_P; 9 -HDZ*-OHD
55 -HDZ*DROP_OHP_YQ; 17 -HDZ*RX_P; 8 -HDZ*RX_Q; 1 C_ODR_Y
59 C_ODR_Y*DROP_OHP_YQ; 13 C_ODR_Y*RY_P; 8 C_ODR_Y*RY_Q; 2 C_OPR_YQ*L2
7 C_HCP_YQ*L15; 17 C_HCP_YQ*L18; 5 C_HDQ_YZ; 13 C_HDQ_YZ*L7
4 C_HDQ_YZ*L13; 6 C_HDQ_YZ*L14; 7 C_HDQ_YZ*L23; 2 C_HDQ_YZ*+OCF
277 C_HDQ_YZ*DROP_OHP_YQ; 27 C_HDQ_YZ*RY_P; 5 C_HDQ_YZ*RY_Q; 6 C_HZQ_Y*L5
7 C_HZQ_Y*L18; 9 C_HZQ_Y*-OHD; 14 C_HZQ_Y*DROP_OHP_YQ; 5 C_HPQ_Y*L1
16 C_HQR_YZ*L0; 12 C_HQR_YZ*L4; 7 C_HQR_YZ*-OHD; 81 C_HQR_YZ*DROP_OHP_YQ
8 C_HQR_YZ*RY_P; 2 C_CDP_Q*L18; 4 C_CZP_YQ*L4; 70 C_CZP_YQ*L17
2 C_CZP_YQ*L18; 10 C_CZP_YQ*-OHD; 144 C_CZP_YQ*DROP_OHP_YQ; 5 C_CZQ_Y*L17
2 C_CPR_Q*L18; 1 SP_OPDH_ZQ_OD-1*L5; 14 Q_OCDR_Y*L5; 10 Q_OCQR_Y*L28
10 Q_OPDF_YZQ*L27; 8 Q_OQDF_YZ*L27; 2 Q_OPDR_YQ*L2; 1 SP_HCPD_ZQ_CD-1*L18
1 SP_HCPR_ZQ_HP1*L32; 14 Q_HQPF_Y*L1; 11 Q_HQPF_Y*L16; 12 Q_HQPF_Y*L26
1 Q_HQPZ_Y*L5; 5 Q_CPDR_Q*L17; 3 Q_CPDR_Q*L18
```

Upper bound: `-14953060567/1000000000`.

### Leaf RRTmpmmpmmmmpmmmpppm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ +ODY -OFZ -HDY -HDZ +HYZ +HYP +HYQ -HZP`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOZPQ -HZQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P YOHFP -YFP
P YOHFQ -YFQ
P YOHPR +YPR
P YOHQR +YQR
P ZOHCR +ZCR
P ZOHYR +ZYR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L1*L27; 3 L27*L29; 1 L0*L1*L17; 9 L0*L14*L17
10 L1*L4*L6; 2 L1*L4*L17; 1 L1*L5*L13; 9 L1*L6*L15
1 L1*L17*L18; 8 L1*L17*-OHD; 1 L1*L17*DROP_OHR_Z; 1 L1*L27*+OCF
1 L1*L29*TY_R_; 6 L2*L15*L17; 39 L2*L17*L19; 1 L2*L17*RY_P
46 L2*L19*DROP_OHP_YQ; 3 L2*L27*DROP_OHP_YQ; 1 L3*L4*L17; 1 L3*L12*L28
11 L3*L14*L17; 1 L5*L13*L25; 1 L6*L13*TY_R_; 11 L7*L12*L28
4 L12*L16*L28; 1 L12*L28*DROP_OHP_YQ; 1 L14*L17*L18; 1 L14*L17*DROP_OHP_YQ
1 L14*L17*DROP_OHR_Z; 1 L17*L28*L29; 3 L28*L29*DROP_OHP_YQ; 8 +HDF*L25
2 -DPR*L1; 10 -HFZ; 8 -HFZ*L4; 1 -HFZ*-OHD
7 -HFZ*DROP_OHR_Z; 15 +OCP*L12; 6 +OCP*RX_P; 3 +OCP*DROP_OHR_Z
8 -HFR*L13; 11 -HFR*L17; 11 -HFR*DROP_OHP_YQ; 1 -DFR*-OHD
1 +HDR*L6; 11 -OFZ*L18; 8 -OFZ*L28; 8 -HDZ*L0
18 -HDZ*L7; 4 -HDZ*DROP_OHP_YQ; 1 -HDZ*RX_P; 1 -HDZ*TX_R_
9 -HZP*L0; 1 -HZP*L18; 7 -DZR*L6; 1 -CZR*L17
9 C_OZP_YQ*L2; 2 C_OPR_YQ*L1; 4 C_OPR_YQ*L2; 1 C_OPR_YQ*L13
1 C_HDP_Z*L29; 6 C_CZP_YQ*L21; 6 C_CZP_YQ*+OCF; 32 C_CZP_YQ*DROP_OHP_YQ
6 C_CZP_YQ*DROP_OHQ_Y; 2 C_CZP_YQ*DROP_OHR_Z; 1 TPX_R_*-OHD; 32 Q_OCPZ_YQ*L17
```

Upper bound: `-1095003/20000000`.

### Leaf RRTmpmmpmmmmpmmmpppp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ +ODY -OFZ -HDY -HDZ +HYZ +HYP +HYQ +HZP`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P YOHFP -YFP
P YOHFQ -YFQ
P YOHPR +YPR
P YOHQR +YQR
P ZOHCR +ZCR
P ZOHFP -ZFP
P ZOHYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OHP YZQ 0 lower 823/1000
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 823/1000 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L17*L28; 10 L27*L29; 1 L28*L29; 4 L0*L1*L2
1 L0*L1*L25; 6 L0*L29*C_OHD_YZ; 11 L0*L29*DROP_OHP_YZQ; 1 L0*L29*DROP_OHR_Z
1 L1*L3*L25; 2 L1*L4*L6; 3 L1*L6*L18; 2 L1*L6*+OCF
1 L3*L17*L28; 4 L7*L17*C_OHD_YZ; 8 L17*L26*+OCF; 2 L17*C_OHD_YZ*C_OHD_YZ
1 L17*C_OHD_YZ*DROP_OHP_YZQ; 2 L19*L28*L29; 1 L19*L29*C_OHD_YZ; 8 L19*L29*DROP_OHP_YZQ
1 L27*L28*L29; 3 L27*L29*C_OHD_YZ; 1 L27*L29*RY_P; 4 +OCP*L17
15 -HFR; 6 -HFR*C_OHD_YZ; 7 -HFR*DROP_OHP_YZQ; 1 -DFR*L0
2 +HDR*L6; 15 C_OPR_YQ*+OCF; 8 C_OPR_YQ*DROP_OHP_YZQ; 2 C_HCP_YZQ*L1
4 C_HCP_YZQ*-OHD; 1 C_HCP_YZQ*RX_P; 1 C_HCP_YZQ*TX_R_; 1 Q_OCDH_YZ*L17
5 Q_OCPH_YZQ*L24; 10 Q_OCPH_YZQ*TX_R_; 8 Q_OPRH_YZQ*L17; 2 Q_OCPF_YZQ*L19
5 Q_OCPF_YZQ*L27; 2 Q_OCPF_YZQ*L28; 7 Q_OCRF_Z*L17; 2 Q_HCPD_YZQ*L29
2 Q_HCPF_YZQ*L18; 4 Q_HCPF_YZQ*L26; 9 Q_HCPF_YZQ*DROP_OHP_YZQ; 1 Q_HCPF_YZQ*RX_P
```

Upper bound: `-109296521/1000000000`.

### Leaf RRTmpmmpmmmmpmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ +ODY -OFZ -HDY +HDZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYZ +HYZ
P HODYR +HYR
P HODZP -HZP
P HODZQ -HZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ -DYZ
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHZQ +PZQ
P POHQR -PQR
P POYZR -PYR
P QOYZR -QYR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L15*L17; 2 L0*L18*L29; 2 L1*L2*L19; 3 L2*L5*L19
33 L2*L19*L23; 23 L3*L12*L28; 1 L3*L17*L23; 1 L3*L20*L28
1 L4*L6*L17; 3 L4*L7*L18; 16 L4*L12*L17; 1 L4*L18*RX_Q
3 L5*L13*L17; 8 L5*L17*L29; 3 L5*L28*L29; 9 L6*L15*L17
6 L7*L12*L28; 7 L7*L28*RX_P; 1 L15*L17*L19; 1 L17*L23*C_OHD_Y
24 L17*+OCF*C_OHD_Y; 2 L17*C_OHD_Y*RY_Q; 25 L28*L29*DROP_OHP_Q; 4 -OHF*L1
1 -OHF*L14; 1 -DPQ*L2; 11 -HFZ*L17; 3 -HFZ*L18
1 -HFZ*-OHD; 21 -HFZ*DROP_OHP_Q; 23 -HFZ*RX_P; 1 +DFZ*L19
23 +DFZ*RX_P; 5 +OCP*L1; 17 +OCP*L3; 4 +OCP*L5
5 +OCP*L12; 1 +OCP*L14; 4 +OCP*L17; 4 +OCP*RX_P
27 +OCQ*L19; 1 +OCQ*DROP_OHP_Q; 2 -CDQ*L19; 1 -HPQ*L17
1 -HPQ*L19; 1 -HPQ*RX_P; 17 -OFZ*L18; 14 +HDZ*L6
16 C_HDF_Z*L2; 8 C_HDF_Z*L13; 1 C_HDF_Z*L19; 32 C_CZP_YQ*L1
1 C_CZP_YQ*L18; 32 C_CZP_YQ*C_OHD_Y; 4 Q_OCDH_Y*L17; 3 Q_OCDF_YZ*L28
21 Q_OCPD_Q*L2; 5 Q_OCPD_Q*L13; 3 Q_OCPD_Q*L23
```

Upper bound: `-835168731/1000000000`.

### Leaf RRTmpmmpmmmmpmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ +ODY -OFZ +HDY`.

```c1top-geometry
C HDF Y Z -HDZ 153/500
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYZ -HYZ
P HODYP -HYP
P HODYQ -HYQ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ +DYZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDR -YHR
P YOHFZ +YFZ
```

```c1top-bounds
```

Exclusion: `gp YOHZP`.

### Leaf RRTmpmmpmmmmpp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP -YZQ +ODY +OFZ`.

```c1top-geometry
C OHF Z Y +FOY 157/250
P OHDFZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR +FZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P YODZP +YDZ
P YOFZP -YFP
P YOFZQ -YFQ
P YOFZR -YZR
P YOFPR +YPR
P YOFQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
C HCF Z Y -CFY 157/250
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCP - 1 lower 5177/31333
S R - 2 upper 628/721
X R - 12 lower 29729/51000
Y R - 13 lower 296687/360500
B x Q 10 lower 70939883/140998500
B y Q 11 upper 329963279/541831500
O fc - 1 lower 279/1000
B x Q 10 lower 1699/3000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 283/500 459/500
m 187/1000 609/1000
r 291/500 1
t 411/500 1
```

```c1top-sum
6 L1*L17*L29; 4 L16*L19*L29; 3 L16*L29*RY_P; 9 L19*L29*DROP_OHP_Q
22 L28*L29*DROP_OHP_Q; 11 L29*DROP_OHP_Q*RY_P; 7 Q_OPDH_Q*L29; 3 Q_HCPF_YZQ*L1
3 Q_HCPF_YZQ*-OHD; 28 Q_HCPF_YZQ*DROP_OHP_Q
```

Upper bound: `-29257936389/91000000000`.

### Leaf RRTmpmmpmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ -YZP +YZQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P YOZPQ -YPQ
P YCDZP +YDZ
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P ZOYPQ -ZPQ
P POHQR -PQR
P POYZR -PYR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L1*L27; 9 L17*L20; 5 L27*L29; 1 L0*L0*L29
11 L0*L14*L17; 12 L0*L15*L25; 13 L1*L4*L6; 3 L1*L5*L20
1 L1*L5*L25; 2 L1*L5*L30; 7 L1*L6*L6; 1 L1*L6*L16
25 L1*L6*L25; 7 L1*L13*L27; 2 L1*L25*L25; 6 L1*L27*+OCF
6 L1*L29*TY_R_; 2 L2*L2*L19; 7 L2*L2*RY_P; 8 L2*L2*RY_Q
14 L2*L5*L15; 4 L2*L17*TY_R_; 70 L2*L19*L23; 6 L3*L3*L32
1 L3*L7*L27; 25 L3*L7*L28; 42 L3*L12*L28; 2 L3*L15*L30
5 L3*L17*RY_P; 2 L3*L18*L25; 3 L3*L18*L30; 4 L4*L5*L17
3 L4*L12*L28; 1 L4*L16*L17; 3 L4*L17*L19; 1 L4*L17*L23
5 L4*L17*TY_R_; 5 L4*L28*L29; 8 L5*L5*L25; 4 L5*L12*L18
1 L5*L12*L32; 1 L5*L14*L30; 1 L5*L17*L32; 2 L5*L18*L25
1 L5*L25*TY_R_; 1 L5*L28*L30; 1 L5*L30*-OHD; 2 L5*L30*+OCF
1 L5*L30*DROP_OHP_Q; 16 L6*L6*TY_R_; 3 L6*L17*L26; 28 L6*L17*L28
11 L6*L28*L29; 4 L7*L12*L28; 1 L7*L14*L17; 2 L7*L17*L27
2 L7*L25*L27; 47 L12*L16*L28; 1 L12*L25*L28; 4 L14*L16*L17
20 L14*L17*L22; 1 L14*L17*-OHD; 13 L15*L29*-OHD; 1 L17*L26*L27
10 L17*L28*+OCF; 1 L18*L25*TY_R_; 1 L27*L29*-OHD; 1 L27*L29*+OCF
6 L27*L29*DROP_OHP_Q; 12 L28*L29*-OHD; 13 L28*L29*DROP_OHP_Q; 5 L28*L29*RX_P
9 -OHC*L17; 3 +HDF*L25; 10 +OPQ*L0; 42 +OPQ*L13
2 +OPQ*L28; 11 +OPQ*RX_P; 1 -DPR*L1; 2 -DPR*L5
1 -DPR*TY_R_; 5 -OHZ*L27; 2 +HCZ*L0; 11 +HCZ*L28
6 -HFZ*L7; 11 -HFZ*L17; 13 -HFZ*-OHD; 16 -HFZ*DROP_OHP_Q
42 -HFZ*RX_P; 6 -HFZ*TX_R_; 1 +DFZ*L25; 4 +DFZ*L29
47 +DFZ*RX_P; 7 +OCP*L24; 3 +OCP*L31; 22 +OCQ*L1
33 +OCQ*L17; 65 +OCQ*L19; 1 +OCQ*L24; 10 +OCQ*-OHD
65 +OCQ*RX_P; 12 +OCQ*RY_P; 12 -CDQ*L5; 20 -CDQ*L14
13 -CDQ*L19; 12 -CDQ*-OHD; 18 -CDQ*+OCF; 10 -CDQ*DROP_OHP_Q
31 -HFR*L6; 8 -HFR*L13; 2 -HFR*L25; 6 -DFR*L0
4 +HDR*L6; 31 -CZQ*L17; 8 +FZR*L7; 1 C_OPR_YQ*L1
9 C_OPR_YQ*L2; 3 C_CZP_YQ*L1; 13 C_CZP_YQ*L5; 42 C_CZP_YQ*L20
20 C_CZP_YQ*L22; 3 C_CZP_YQ*-OHD; 27 C_CZP_YQ*DROP_OHP_Q; 26 C_ZPQ_Y*L1
11 C_ZPQ_Y*L4; 38 C_ZPQ_Y*-OHD; 11 C_ZPQ_Y*DROP_OHP_Q; 5 TPX_R_*L28
33 Q_OCPZ_YQ*L17; 1 Q_OPDZ_YQ*L17; 12 Q_DRZQ_Y*L1
```

Upper bound: `-712651513/500000000`.

### Leaf RRTmpmmpmmpm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP -YZQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P YOZPQ +YPQ
P YCDZQ +YDZ
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P ZOYPQ +ZPQ
P POHYQ +PHY
P POHYR -PYR
P POHZQ +PHZ
P POHQR -PQR
P POFYQ +PFY
P POFZQ +PFZ
P QOHYP +QHY
P QOHYR -QYR
P QOHZP +QHZ
P QOFYP +QFY
P QOFZP +QFZ
```

```c1top-bounds
```

Exclusion: `cluster OHP Q OHQ YZ`.

### Leaf RRTmpmmpmmppm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ -ODY`.

```c1top-geometry
C OCD Y Z -DOZ 140829/250000
P OHDFY -OFY
P OHDZP -OZP
P OHDZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYZ -DYZ
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
C DZP Y Q -ZPQ 106878083/157000000
P POYZQ +PYQ
```

```c1top-bounds
T OCD Y 1 lower 93/299
E OD YPQ 2 lower 837/1000
B x Q 10 lower 261983/448500
B y Q 11 lower 51553/235500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 311/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 73/125 459/500
m 109/500 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
3 L8*L17; 5 L1*L4*L17; 3 L1*L5*L6; 1 L1*L6*TY_R_
41 L2*L3*L17; 33 L2*L5*L25; 41 L2*L17*+OCF; 4 L2*L17*RY_P
2 L3*L3*L3; 1 L3*L4*L9; 6 L3*L8*L18; 2 L3*L18*L25
2 L3*L18*RX_P; 5 L3*L18*TY_R_; 4 L4*L8*L17; 2 L4*L17*L25
3 L4*L17*L26; 1 L4*L17*L29; 5 L4*L17*-OHD; 28 L4*L17*+OCF
1 L4*L17*TY_R_; 17 L5*L5*L25; 3 L5*L5*RX_P; 3 L5*L6*L10
3 L5*L6*L26; 4 L5*L6*-OHD; 30 L5*L6*+OCF; 3 L5*L6*DROP_OHP_Q
4 L5*L8*L27; 23 L5*L16*TY_R_; 23 L5*L18*L25; 4 L5*L25*TY_R_
3 L11*L27*+OCF; 1 L14*L28*TX_R_; 3 L17*L27*+OCF; 2 -OHF*L1
1 -OHF*L14; 3 -DPR*L2; 26 -DPR*L5; 3 -DPR*L10
17 +OCY*L17; 3 +CDY*L4; 3 +CDY*L16; 10 +CDY*DROP_OHP_Q
1 -HFZ*L1; 1 -HFZ*L26; 1 -HFZ*-OHD; 11 +OCP*L3
35 +OCP*L8; 2 +OCP*L17; 5 +OCP*L25; 2 +OCP*TY_R_
2 -DFR*+OCF; 1 -OZR*L1; 21 -ODY*L3; 16 -ODY*DROP_OHP_Q
3 -ODY*TY_R_; 9 -CYP*L17; 7 -DYR*L4; 3 -DYR*L19
1 -DYR*+OCF; 38 C_ODP_YQ*L2; 29 C_CYP_Q*+OCF; 9 C_CYP_Q*DROP_OHP_Q
3 C_CYP_Q*TY_R_; 5 TPX_R_; 3 TPX_R_*L10; 1 TPX_R_*L15
2 TPX_R_*L16; 3 TPX_R_*L26; 28 TPX_R_*+OCF; 20 Q_CPDY_Q*L3
```

Upper bound: `-203756231/500000000`.

### Leaf RRTmpmmpmmpppmmmmmm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ -HYZ -HYP -HZP`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYPQ -HYQ
P HOZPQ -HZQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZR -YZR
P ZOHCR +ZCR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ +PYQ
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
24 L0*L5*L25; 19 L0*L6*TY_R_; 25 L0*L17*L25; 5 L0*L17*TY_R_
5 L1*L3*L4; 36 L1*L4*L6; 4 L1*L6*L17; 23 L1*L6*DROP_OHP_Q
12 L1*L6*RY_P; 1 L1*L17*L24; 8 L1*L17*L27; 4 L1*L17*RY_P
2 L1*L28*L29; 2 L3*L4*L5; 10 L3*L4*L18; 3 L3*L7*L18
8 L3*L18*-OHD; 14 L3*L18*RY_P; 2 L3*L18*TX_R_; 15 L4*L5*L6
5 L4*L5*L17; 6 L4*L5*L25; 9 L4*L17*L32; 1 L4*L27*RX_P
23 L5*L16*L25; 6 L5*L25*-OHD; 15 L5*L25*RY_P; 15 L6*L16*TY_R_
4 L6*DROP_OHP_Q*TY_R_; 10 L6*RY_P*TY_R_; 7 L7*L20*L28; 10 L7*L27*DROP_OHP_Q
3 L7*L27*RY_P; 4 L16*L18*L27; 20 L16*L20*L28; 12 L16*L24*L28
3 L17*L18*L18; 39 L17*L22*RY_Q; 2 L17*L26*L32; 27 L18*-OHD*RX_Q
2 L19*L32*DROP_OHP_Q; 17 L20*L26*L28; 6 L20*L28*+OCF; 47 L20*L28*RY_P
27 L20*L28*RY_Q; 1 L20*L28*TX_R_; 1 L23*L28*L30; 2 L28*L29*-OHD
19 L28*L29*DROP_OHP_Q; 4 L28*L30*DROP_OHP_Q; 1 L28*L30*RY_Q; 1 L32*+OCF*RY_P
8 L32*DROP_OHP_Q*RY_Q; 18 +HDF*L25; 8 +CPQ*L1; 12 +CPQ*L4
4 +CPQ*L26; 22 +CPQ*-OHD; 12 -DPR*L1; 1 -OHP*L32
3 +OCP*L7; 20 +OCP*-OHD; 17 +OCP*RY_P; 2 +OCP*TX_R_
3 -HDP*L32; 4 -CDQ*-OHD; 29 -HFR*L17; 67 -HFR*DROP_OHP_Q
12 -HFR*RY_P; 19 -DFR*L0; 18 +HDR*L6; 26 C_ODR_Y*L1
4 C_ODR_Y*L16; 6 C_ODR_Y*DROP_OHP_Q; 8 C_HDP_YZ*L17; 17 C_HDQ_YZ*L26
6 C_HDQ_YZ*L29; 53 C_HDQ_YZ*DROP_OHP_Q; 35 C_HDQ_YZ*RY_P; 45 C_HDQ_YZ*RY_Q
2 C_HDQ_YZ*TX_R_; 3 C_CPR_Q*L18; 36 TPX_R_*L0; 11 TPX_R_*L4
12 TPX_R_*RY_P; 1 Q_OCDF_YZ*L32; 1 Q_OCPR_Q*L32; 3 Q_OPDR_YQ*L5
```

Upper bound: `-1091914119/1000000000`.

### Leaf RRTmpmmpmmpppmmmmmpm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ -HYZ -HYP +HZP -HZQ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYZQ -HYQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZR -YZR
P ZOHCR +ZCR
P ZOHFP -ZFP
P ZOHPQ -ZPQ
P ZOHQR +ZQR
P ZODPR +ZPR
P POHYQ +PYQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L0*L30*-OHD; 3 L0*L30*DROP_OHP_ZQ; 5 L1*L1*L17; 1 L1*L3*L18
2 L1*L4*L6; 17 L1*L6*DROP_OHP_ZQ; 13 L1*L16*L17; 10 L1*L16*L25
2 L1*L16*L28; 7 L1*L18*DROP_OHP_ZQ; 58 L1*L25*DROP_OHP_ZQ; 14 L1*L32*DROP_OHP_ZQ
5 L2*L5*L17; 1 L2*L5*RY_P; 2 L3*L32*RY_P; 2 L4*L5*L6
4 L4*L5*L17; 2 L4*L17*L18; 3 L4*L28*L29; 1 L5*L16*L18
7 L5*L16*L25; 4 L5*L16*DROP_OHP_ZQ; 9 L5*L20*DROP_OHP_ZQ; 7 L5*L25*DROP_OHP_ZQ
70 L6*DROP_OHP_ZQ*TY_R_; 1 L17*L28*L29; 1 L19*L30*-OHD; 2 L19*L30*DROP_OHP_ZQ
2 L20*L28*+OCF; 11 L20*L28*DROP_OHP_ZQ; 12 L20*L28*RY_P; 5 L28*L29*-OHD
64 L28*L29*DROP_OHP_ZQ; 9 L28*L30*DROP_OHP_ZQ; 14 L32*-OHD*DROP_OHP_ZQ; 1 L32*DROP_OHP_ZQ*DROP_OHP_ZQ
1 L32*DROP_OHP_ZQ*RX_P; 5 -OHF*TY_R_; 1 +HDF*L4; 1 +HDF*L25
1 +OPQ*-OHD; 4 +OCP*L17; 4 +OCP*RY_P; 1 +HCP*L32
9 +OCQ*L16; 9 +OCQ*L19; 9 +OCQ*-OHD; 19 +OCQ*RY_P
4 -HFR*L17; 5 -HFR*-OHD; 77 -HFR*DROP_OHP_ZQ; 4 +HDR*L0
4 +HDR*L4; 1 +HDR*L6; 5 +HDR*L16; 4 C_ODR_Y*L1
3 C_ODR_Y*DROP_OHP_ZQ; 7 C_HCP_ZQ*L18; 2 C_HDQ_YZ*+OCF; 105 C_HDQ_YZ*DROP_OHP_ZQ
12 C_HDQ_YZ*RY_P; 9 C_HPQ_Z*-OHD; 13 C_HPQ_Z*DROP_OHP_ZQ; 9 C_CDP_Q*L17
3 C_CDP_Q*L18; 3 TPX_R_*L0; 7 TPX_R_*DROP_OHP_ZQ; 4 Q_OPDR_YQ*L5
1 Q_OPDR_YQ*L17; 1 Q_HQPF_Z*-OHD; 7 Q_HQPF_Z*DROP_OHP_ZQ
```

Upper bound: `-925760907/1000000000`.

### Leaf RRTmpmmpmmpppmmmmmppmmm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ -HYZ -HYP +HZP +HZQ -CFY -CFZ -CYR`.

```c1top-geometry
C OCR Y P -CRP 157/250
C OCR Y Q -CRQ 157/250
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYPQ -HYQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P COYZR -CZR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZR -YZR
P YOCPR +YPR
P YOCQR +YQR
P ZOHFP -ZFP
P ZOHFQ -ZFQ
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
T OCR Y 1 lower 279/1000
B x Q 10 lower 1699/3000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 283/500 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
12 L0*L9*L27; 10 L0*L11*L17; 10 L0*L17*L26; 2 L0*L17*TY_R_
28 L1*L2*L17; 36 L1*L3*L6; 25 L1*L3*L25; 1 L1*L5*L25
2 L1*L6*L10; 33 L1*L6*DROP_OHP_ZQ; 1 L1*L6*RX_Q; 13 L1*L11*L25
37 L1*L17*L24; 3 L1*L17*L29; 1 L1*L25*TY_R_; 1 L2*L4*L28
4 L2*L9*L19; 21 L2*L9*L28; 8 L2*L16*L28; 12 L2*L25*L28
39 L2*L27*DROP_OHP_ZQ; 6 L2*L27*DROP_OHR_Z; 1 L2*L28*RX_Q; 9 L3*L5*L9
2 L3*L5*L18; 4 L3*L5*L27; 9 L3*L9*TY_R_; 3 L3*L18*L27
2 L4*L17*DROP_OHQ_Z; 1 L4*L17*TY_R_; 1 L5*L25*TY_R_; 3 L8*L17*L19
10 L8*L17*L28; 7 L8*L17*-OHD; 12 L8*L17*RY_P; 4 L9*L16*L28
2 L9*L20*L28; 3 L9*L27*+OCF; 5 L9*L27*RY_P; 15 L10*L16*L17
1 L10*L27*L29; 7 L11*L17*-OHD; 74 L11*L17*+OCF; 2 L11*L17*DROP_OHQ_Z
5 L11*L17*DROP_OCR_Y; 1 L16*L17*L28; 28 L17*L26*+OCF; 5 L17*L26*RY_P
2 L17*L28*RX_P; 5 L18*L27*DROP_OHP_ZQ; 3 L27*L28*DROP_OHP_ZQ; 3 L27*L28*RX_P
37 L27*L29*RX_P; 37 L27*+OCF*+OCF; 6 L27*+OCF*DROP_OHR_Z; 3 +OPQ*L9
2 +OPQ*L16; 1 +CPQ; 1 +CPQ*L26; 2 +CPQ*+OCF
1 +CPQ*DROP_OHP_ZQ; 3 -DPR*L2; 10 -DPR*L10; 11 -DPR*+OCF
1 -DPR*TY_R_; 4 +CDY*L27; 16 +OCP*L17; 2 -CDQ*+OCF
4 -CDQ*DROP_OHP_ZQ; 1 -CDQ*DROP_OCR_Y; 2 -HFR*L10; 37 -HFR*RX_P
1 +OYR*L1; 14 +OYR*L5; 1 +OYR*L26; 90 +OYR*DROP_OHP_ZQ
14 +OYR*RX_P; 17 +OYR*RY_P; 12 +OYR*DROP_OHR_Z; 2 +ODY*L20
3 -HYP*L4; 30 -HYP*+OCF; 12 -HYP*DROP_OHP_ZQ; 2 -HYP*DROP_OHQ_Z
2 -HYP*DROP_OCR_Y; 8 -CYR*L19; 6 -CYR*L28; 11 -CYR*-OHD
104 -CYR*DROP_OHP_ZQ; 19 -CYR*RY_P; 12 -CYR*DROP_OHR_Z; 1 +HYR*L27
1 +DYQ*L27; 2 -DYR*L1; 2 -DYR*L3; 5 -YPQ*L17
8 -YPQ*DROP_OHP_ZQ; 1 -YPQ*DROP_OCR_Y; 1 C_ODR_Y*L18; 14 C_OPR_YQ*L2
1 C_OPR_YQ*L5; 1 C_OPR_YQ*TY_R_; 1 C_HCP_ZQ*L4; 10 C_HCP_ZQ*L8
17 C_HCP_ZQ*L11; 14 C_HCP_ZQ*+OCF; 15 C_HCP_ZQ*RX_P; 2 C_HCP_ZQ*DROP_OHQ_Z
20 C_HCP_ZQ*DROP_OCR_Y; 10 C_CDP_Q*L11; 2 C_CYP_Q*TY_R_; 3 SP_OPDH_YQ_OD-1*L17
5 Q_HCQD_YZ*L17
```

Upper bound: `-282755553/500000000`.

### Leaf RRTmpmmpmmpppmmmmmppmmpm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ -HYZ -HYP +HZP +HZQ -CFY -CFZ +CYR -DYZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYPQ -HYQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZR -YZR
P ZOHCR +ZCR
P ZOHFP -ZFP
P ZOHFQ -ZFQ
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHQR -PQR
C DZP Y Q -ZPQ 106878083/157000000
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
117 L4*L17; 149 L14*L17; 124 L17*L21; 1 L17*L27
28 L0*L1*L6; 13 L0*L2*L27; 91 L0*L6*TY_R_; 4 L0*L9*L17
1 L0*L9*L28; 502 L0*L13*L17; 489 L0*L15*L29; 122 L0*L16*L17
54 L0*L17*L18; 99 L0*L17*+OCF; 7 L0*L17*DROP_OHP_ZQ; 14 L0*L24*L27
198 L1*L3*L27; 38 L1*L4*L6; 16 L1*L5*L25; 8 L1*L5*L30
40 L1*L6*L10; 485 L1*L6*L12; 118 L1*L6*L18; 1 L1*L12*L27
1 L1*L17*L32; 44 L1*L17*RY_P; 17 L1*L17*TX_R_; 139 L1*L18*L25
2 L1*L18*L30; 375 L1*L25*L25; 16 L1*L25*L30; 17 L1*L25*TY_R_
223 L2*L2*L19; 38 L2*L2*L33; 38 L2*L5*L6; 785 L2*L5*L14
37 L2*L6*L23; 17 L2*L8*L28; 2 L2*L11*L24; 1 L2*L12*L27
2 L2*L12*L33; 52 L2*L17*L28; 20 L2*L19*L19; 79 L2*L19*L28
554 L2*L20*L28; 1 L2*L25*TY_R_; 1 L2*L28*L30; 2 L3*L3*L27
18 L3*L5*L18; 10 L3*L5*L27; 18 L3*L10*L17; 311 L3*L12*L28
1 L3*L15*L27; 402 L3*L17*L22; 5 L3*L18*L18; 3 L3*L27*TY_R_
69 L4*L6*TY_R_; 8 L4*L12*L28; 27 L4*L17*L23; 21 L4*L17*DROP_OHP_ZQ
1 L4*L17*TX_R_; 4 L4*L27*L29; 40 L4*L28*L29; 9 L5*L6*L6
36 L5*L6*L25; 52 L5*L8*L18; 29 L5*L8*L27; 39 L5*L13*L30
32 L5*L14*L17; 6 L5*L18*L25; 4 L5*L18*L30; 18 L5*L29*TY_R_
1 L5*L30*L30; 29 L6*L10*TY_R_; 2 L6*L14*L33; 24 L6*L17*L23
18 L6*L17*RY_Q; 277 L6*L18*L21; 10 L6*L18*TY_R_; 358 L6*L20*L28
74 L6*L20*TY_R_; 119 L6*L25*L28; 378 L6*L25*TY_R_; 9 L6*L28*L29
9 L6*L30*TY_R_; 21 L7*L17*L22; 32 L8*L17*RY_Q; 6 L8*L18*L31
1 L8*L27*L31; 1 L8*L28*L29; 5 L8*L28*L31; 27 L8*L28*TY_R_
42 L9*L17*L28; 3 L9*L17*L32; 8 L9*L28*L28; 1 L9*L28*L30
1 L9*L30*TY_R_; 29 L10*L17*L18; 19 L10*L17*L28; 7 L10*L17*DROP_OHP_ZQ
1 L11*L17*L29; 3 L11*L17*RY_P; 5 L12*L17*L32; 5 L12*L18*L30
1 L12*L25*L28; 60 L12*L28*L31; 158 L13*L17*L28; 1 L13*L27*L28
12 L13*L28*L28; 2 L14*L17*L18; 1 L14*L17*L23; 30 L14*L17*-OHD
976 L15*L28*L29; 99 L15*L29*L33; 11 L17*L18*L31; 1 L17*L18*RY_P
1 L17*L22*L22; 24 L17*L23*L31; 10 L17*L31*-OHD; 26 L17*L31*RY_Q
330 L17*+OCF*RY_Q; 4 L17*RY_P*RY_Q; 4 L18*L25*TY_R_; 5 L18*L30*L30
4 L19*L27*TX_R_; 3 L20*L28*L30; 3 L24*L27*L29; 1 L24*L28*L30
1 L25*L30*TY_R_; 10 L27*L28*+OCF; 2 L27*L28*DROP_OHR_Z; 1 L27*L31*TX_R_
19 L28*L28*DROP_OHP_ZQ; 30 L28*L28*DROP_OHQ_Z; 4 L28*L31*L31; 23 L29*TY_R_*TY_R_
14 -OHF*L30; 102 +OPQ*L9; 38 +OPQ*L17; 17 +OPQ*L28
79 +CPQ*L17; 13 -HFY*L18; 23 -HFY*L27; 10 -HFY*L28
707 -HFZ; 7 -HFZ*L4; 9 -HFZ*L6; 2 -HFZ*L26
18 -HFZ*-OHD; 144 -HFZ*+OCF; 276 -HFZ*DROP_OHP_ZQ; 34 -HFZ*RY_P
323 -HFZ*DROP_OHQ_Z; 1 -HFZ*RY_Q; 494 -HFZ*DROP_OHR_Z; 43 +OCP*L9
357 +OCP*L15; 356 +OCP*L21; 70 +OCP*L32; 220 +OCQ*L0
1 +OCQ*L9; 844 +OCQ*L13; 563 +OCQ*L19; 1 +OCQ*L29
69 +OCQ*RY_P; 213 -HFQ*L17; 337 -CDQ*L2; 862 -CDQ*L12
15 -CDQ*L14; 1 -OHR*L17; 68 -HFR*L4; 50 -HFR*L10
495 -HFR*L13; 184 -HFR*L17; 138 -HFR*L18; 1 -HFR*L22
375 -HFR*L25; 1 -HFR*L26; 167 -HFR*DROP_OHP_ZQ; 66 -HFR*DROP_OHQ_Z
83 -HFR*RX_Q; 71 -DFR*L0; 71 -DFR*L4; 19 -DFR*L10
27 -DFR*L14; 10 -DFR*L18; 1 -OZR*L3; 3 -HPQ*L12
49 -HPQ*L31; 180 +ODY*L1; 112 +ODY*L8; 112 +ODY*L13
35 +ODY*L19; 348 +ODY*DROP_OHP_ZQ; 152 +ODY*RX_P; 315 +ODY*RX_Q
1 +ODY*TY_R_; 3 -HYP*L5; 1 -HYP*L6; 9 -HYP*L13
32 -HYP*L18; 19 -HYP*L28; 6 -HYP*L30; 5 +HZP*L31
30 +HZQ*L1; 990 +HZQ*L7; 9 +HZQ*L9; 4 +HZQ*L18
816 +HZQ*L21; 1 +HZQ*L22; 159 +HZQ*DROP_OHP_ZQ; 346 +HZQ*RX_P
1036 -CFZ*L0; 45 -CFZ*L6; 1 -CFZ*L16; 401 -CFZ*L18
46 -CFZ*L27; 161 -CFZ*L28; 101 -CFZ*L33; 467 -CFZ*-OHD
1 -CFZ*DROP_OHR_Z; 198 +CYR*L1; 2 +CYR*L3; 24 +CYR*TY_R_
357 -DYZ*L17; 17 -DYZ*L26; 385 -DYZ*DROP_OHP_ZQ; 71 -OZP*L17
44 -HYQ*L17; 12 -CYQ*L17; 148 -DYR*L1; 5 -DYR*L5
161 +DZQ*L17; 17 -FYZ*L27; 13 -ZPQ*L4; 277 -ZPQ*L6
9 -ZPQ*L8; 1856 -ZPQ*L17; 2 -ZPQ*L18; 30 -ZPQ*-OHD
1927 -ZPQ*DROP_OHP_ZQ; 10 -ZPQ*RX_P; 1 -ZPQ*RY_Q; 178 C_ODZ_Y*L6
63 C_ODZ_Y*L30; 2 C_ODZ_Y*L32; 2 C_ODZ_Y*TY_R_; 129 C_HCP_ZQ*L18
5 C_HCP_ZQ*L31; 478 C_DZQ_Y*L6; 91 C_DZQ_Y*L30; 207 SP_OPDZ_YQ_OD-1*L1
39 SP_OPDZ_YQ_OD-1*L5; 112 SP_OPDZ_YQ_OD-1*L8; 5 SP_OPDZ_YQ_OD-1*L19; 330 SP_OPDZ_YQ_OD-1*DROP_OHP_ZQ
60 SP_OPDZ_YQ_OD-1*RX_P; 370 SP_OPDZ_YQ_OD-1*RX_Q; 1 SP_OPDZ_YQ_OD-1*TX_R_; 60 SP_OPDZ_YQ_OD1*L17
19 Q_ODRZ_Y*L5; 495 Q_ODRZ_Y*L6; 198 SP_CPDZ_YQ_CD-1*L0; 24 SP_CPDZ_YQ_CD-1*L4
20 SP_CPDZ_YQ_PZ1*L17; 47 Q_CPDR_YQ*L15; 23 Q_CQDR_Y*L1; 44 Q_CQDR_Y*L5
38 Q_CQDR_Y*L6; 1 Q_CQDR_Y*L8; 2 Q_CQDR_Y*TY_R_; 24 Q_CYRF_Z*L27
809 Q_DZQP_Y*L2; 217 Q_DZQP_Y*L17; 6 Q_DZQP_Y*L19
```

Upper bound: `-1634465049/62500000`.

### Leaf RRTmpmmpmmpppmmmmmppmmpp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ -HYZ -HYP +HZP +HZQ -CFY -CFZ +CYR +DYZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYPQ -HYQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHZR -YZR
P ZOHCR +ZCR
P ZOHFP -ZFP
P ZOHFQ -ZFQ
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
23 L17*L27; 3 L27*L28; 23 L1*L2*L6; 197 L1*L4*L6
148 L1*L6*L6; 3 L1*L6*L9; 14 L1*L6*L11; 123 L1*L6*L14
171 L1*L6*L25; 11 L1*L9*L17; 11 L1*L17*L24; 53 L1*L27*L29
7 L2*L4*L17; 13 L2*L5*L19; 47 L2*L6*L19; 10 L2*L8*L28
99 L2*L11*L15; 5 L2*L11*L28; 13 L2*L11*TY_R_; 69 L2*L17*RY_P
424 L2*L19*TY_R_; 39 L3*L6*L14; 37 L3*L18*L27; 10 L3*L27*L28
5 L4*L6*L9; 27 L4*L11*L24; 110 L4*L12*L17; 117 L4*L12*L28
73 L4*L14*L17; 16 L4*L17*L18; 72 L4*L17*TY_R_; 131 L4*L24*L28
39 L5*L6*L25; 20 L5*L8*L27; 10 L5*L12*L27; 42 L5*L15*L17
280 L5*L17*L27; 10 L5*L18*L25; 17 L5*L25*L27; 14 L5*L25*L28
351 L5*L27*DROP_OHP_ZQ; 23 L6*L6*TY_R_; 5 L6*L14*L25; 13 L6*L14*TY_R_
26 L6*L27*L28; 1 L6*L28*L28; 1 L7*L11*L27; 3 L7*L27*L27
4 L8*L27*L28; 121 L9*L17*-OHD; 6 L9*L28*L28; 16 L11*L12*L28
58 L11*L28*L29; 76 L12*L17*L27; 26 L12*L19*L28; 194 L12*L24*L28
14 L12*L27*TY_R_; 22 L12*L28*L29; 63 L13*L18*L27; 8 L13*L27*L28
76 L14*L17*DROP_OHR_Z; 63 L14*L18*L25; 14 L14*L25*L27; 178 L14*L27*L29
17 L15*L28*L29; 44 L17*L27*L27; 11 L17*L27*+OCF; 15 L19*L19*L19
28 L19*L19*L29; 1 L25*L28*L28; 10 L27*L27*L29; 44 L27*L27*DROP_OHP_ZQ
18 TOPCOUNT*L27; 136 -OHF*L14; 81 +OCD*L17; 58 -HFY*TY_R_
40 -HFZ; 1 -HFZ*L11; 18 -HFZ*L19; 8 -HFZ*RY_P
34 -HFZ*TX_R_; 21 -HFZ*TY_R_; 47 +OCP*L6; 228 +OCP*L15
238 +OCP*L17; 48 +OCP*L26; 6 +OCP*DROP_OHP_ZQ; 163 +OCP*RX_P
44 +OCP*RY_P; 410 +OCP*TY_R_; 1 -HFR*L1; 144 -HFR*L4
205 -HFR*L6; 71 -HFR*L11; 35 -HFR*L13; 13 -HFR*L15
214 -HFR*L17; 214 -HFR*DROP_OHP_ZQ; 1 +OYZ*L6; 110 +OYZ*L17
24 -OZR*L1; 140 -OZR*L4; 99 -OZR*L11; 301 -OZR*L17
123 -OZR*L18; 377 -OZR*DROP_OHP_ZQ; 92 +ODY*L27; 6 -HDY*L1
72 -HDY*L4; 3 -HDY*L6; 15 -HDY*L15; 39 -HDY*L17
9 -HDY*L26; 10 -HDY*+OCF; 149 -HDY*DROP_OHP_ZQ; 105 -CFZ*L1
39 -CFZ*L6; 1 -CFZ*L10; 113 -CFZ*L18; 177 -CFZ*L26
122 -CFZ*-OHD; 17 -CFZ*TY_R_; 13 +CYR*L5; 99 +CYR*L15
50 +CYR*L28; 13 +CYR*-OHD; 13 +CYR*TY_R_; 4 +DYZ*L1
1 +DYZ*L7; 210 +DYZ*L17; 292 +DYZ*L26; 320 +DYZ*DROP_OHP_ZQ
9 +DYZ*TY_R_; 71 -DYR*L5; 202 -DYR*L14; 3 -DYR*L28
13 +FYR*L27; 11 -YZR*L0; 177 -YZR*L4; 194 C_HDZ_Y*L24
135 C_CDF_YZ*L27; 3 C_CDR_Y*L27; 203 C_DZR_Y*L11; 60 C_DZR_Y*L19
6 Q_OCDH_YZ*L17; 11 Q_OCRH_Z*L17; 163 Q_OCPD_Q*L2; 55 Q_OCPD_Q*L19
39 Q_ODRZ_Y*L6; 14 Q_ODRZ_Y*L27; 126 Q_HZDF_Y*L4; 23 Q_HZDF_Y*L29
72 Q_CPDR_YQ*L5; 115 Q_CPDR_YQ*L14; 71 Q_CPDR_YQ*L18
```

Upper bound: `-151628681/125000000`.

### Leaf RRTmpmmpmmpppmmmmmppmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ -HYZ -HYP +HZP +HZQ -CFY +CFZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYPQ -HYQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P COFZR -CZR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FOCYZ -FYZ
P FOCZP +FZP
P FOCZQ +FZQ
P FOCZR +FZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P YOHZR -YZR
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHQR -PQR
```

```c1top-bounds
T OCF Z 1 lower 279/1000
T OHY Z 4 lower 279/1000
B x Q 10 lower 1699/3000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 283/500 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
49 L4*L17; 32 L17*L27; 1 L17*L31; 159 L0*L2*TY_R_
3 L0*L5*L12; 1 L0*L10*L17; 212 L0*L12*L17; 109 L0*L14*L29
51 L0*L17*DROP_OHP_ZQ; 308 L0*L17*RX_P; 2 L0*L25*L29; 25 L1*L2*L12
3 L1*L2*L27; 52 L1*L4*L17; 1 L1*L8*L27; 8 L1*L9*L17
7 L1*L13*L27; 139 L1*L17*L24; 48 L1*L25*L25; 189 L2*L2*L19
96 L2*L2*L27; 8 L2*L8*L28; 2 L2*L11*L27; 15 L2*L12*TY_R_
8 L2*L13*L28; 91 L2*L15*L29; 50 L2*L18*L25; 40 L2*L19*L29
1 L2*L25*L32; 19 L2*L28*TY_R_; 33 L2*L29*-OHD; 148 L2*L29*RY_P
27 L3*L12*L27; 1 L3*L18*L27; 33 L4*L4*L29; 20 L4*L5*L6
2 L4*L6*L11; 1 L4*L8*L28; 2 L4*L9*L27; 27 L4*L17*DROP_OHQ_Z
2 L4*L17*TY_R_; 1 L5*L11*L25; 11 L5*L12*L29; 5 L5*L25*TY_R_
19 L5*L27*L29; 48 L6*L25*TY_R_; 174 L7*L17*L28; 4 L7*L17*L29
1 L8*L18*L27; 8 L9*L17*L26; 9 L9*L17*-OHD; 7 L9*L17*TY_R_
9 L9*L28*L29; 15 L10*L17*L24; 1 L10*L17*L27; 2 L10*L27*L29
1 L10*L28*L29; 7 L12*L25*L28; 34 L12*L29*TY_R_; 52 L13*L28*L29
34 L14*L25*L29; 7 L14*L27*L29; 3 L14*L28*L29; 6 L14*L29*L29
147 L15*L17*L29; 4 L16*L17*L28; 6 L17*L18*DROP_OHR_Z; 25 L17*L25*L28
3 L17*L25*L33; 1 L17*L27*-OHD; 143 L17*L27*+OCF; 26 L17*L27*DROP_OHQ_Z
2 L17*L27*TY_R_; 4 L17*L29*+OCF; 18 L17*-OHD*TX_R_; 2 L18*L25*TY_R_
3 L25*L27*L28; 46 L25*L28*L29; 45 L27*L29*-OHD; 40 L27*L29*DROP_OHP_ZQ
94 L27*L29*RX_P; 45 L28*L29*+OCF; 226 L28*L29*DROP_OHP_ZQ; 4 L29*L29*DROP_OHP_ZQ
2 L29*L29*TY_R_; 37 +OPQ*L9; 5 +OPQ*DROP_OHR_Z; 36 -DPQ*L9
21 -DPQ*L29; 31 +CPQ; 1 +CPQ*L8; 13 +CPQ*DROP_OHP_ZQ
21 +CPQ*TX_R_; 32 -DPR*L3; 1 -DPR*L10; 26 -DPR*RX_Q
2 -DPR*TY_R_; 3 +HCZ*L4; 45 +HCZ*L7; 20 +HCZ*L21
7 +HCZ*L26; 84 +HCZ*+OCF; 212 +HCZ*DROP_OHP_ZQ; 20 +HCZ*DROP_OHQ_Z
42 +HCZ*TX_R_; 360 +OCP*L17; 1 -CDQ*L8; 101 -CDQ*DROP_OHP_ZQ
5 -CDQ*DROP_OHR_Z; 21 -CDQ*TX_R_; 45 -HFR*L5; 10 -HFR*L9
1 -HFR*L10; 35 -HFR*L12; 337 -HFR*L17; 48 -HFR*L25
363 -HFR*DROP_OHP_ZQ; 144 -HFR*RX_P; 3 -HFR*TY_R_; 178 -DFR*L0
47 -DFR*L2; 52 -DFR*L4; 2 -DFR*L6; 10 -DFR*L8
7 -DFR*L12; 20 +OYR*L3; 4 +OYR*L5; 6 +OYR*L16
1 +OYR*L18; 76 -OZR*L29; 4 +ODY*L30; 44 -OFZ*L1
3 -OFZ*L4; 7 -OFZ*L26; 44 -OFZ*-OHD; 210 -OFZ*DROP_OHP_ZQ
2 -OFZ*RX_P; 42 -OFZ*DROP_OHR_Z; 2 -HDY*L4; 9 -HDY*L24
112 +CFZ*-OHD; 359 +CFZ*DROP_OHP_ZQ; 78 +CFZ*DROP_OHR_Z; 6 +CFZ*TX_R_
1 +DYP*L27; 13 +DYQ*L17; 5 -DYR; 1 -DYR*L5
1 -DYR*-OHD; 20 -DYR*RX_P; 107 -YPQ*L17; 120 -YPQ*DROP_OHP_ZQ
23 C_ODF_YZ*L27; 131 C_ODR_Y*L1; 3 C_ODR_Y*TY_R_; 130 C_HCF_Z*TY_R_
52 C_HCP_ZQ*L5; 81 C_HCP_ZQ*L7; 1 C_HCP_ZQ*L9; 1 C_HCP_ZQ*L10
1 C_HCP_ZQ*L27; 22 C_HCP_ZQ*+OCF; 418 C_HCP_ZQ*DROP_OHP_ZQ; 54 C_HCP_ZQ*TX_R_
350 C_CDP_Q*L2; 52 C_CDP_Q*L4; 1 C_CDP_Q*L11; 2 C_CDP_Q*L31
31 C_CDP_Q*TX_R_; 8 Q_OCDH_YZ*L17; 54 Q_OCPH_ZQ*L17; 30 Q_OCRH_Z*L17
1 SP_OPDH_YQ_OD1*L17; 36 Q_OCRF_Z*L17; 13 Q_OCPY_Q*L17; 3 Q_ODRF_YZ*L27
21 Q_OPDR_YQ*L2; 52 Q_OPDR_YQ*L5; 9 Q_HCPD_YZQ*L17; 65 Q_HCQD_YZ*L17
```

Upper bound: `-2593886247/91000000000`.

### Leaf RRTmpmmpmmpppmmmmmppp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ -HYZ -HYP +HZP +HZQ +CFY`.

```c1top-geometry
C HCF Y Z -CFZ 157/250
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYPQ -HYQ
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
```

```c1top-bounds
```

Exclusion: `gp COFYZ`.

### Leaf RRTmpmmpmmpppmmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ -HYZ +HYP`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOYZP +HZP
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ +YFZ
P YOHFP -YFP
P YOHZR -YZR
P YOHPR +YPR
P ZOHCR +ZCR
P ZOHFP -ZFP
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OHP YZQ 0 lower 823/1000
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 823/1000 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L17*L28; 10 L27*L29; 1 L28*L29; 4 L0*L1*L2
1 L0*L1*L25; 6 L0*L29*C_OHD_YZ; 11 L0*L29*DROP_OHP_YZQ; 1 L0*L29*DROP_OHR_Z
1 L1*L3*L25; 2 L1*L4*L6; 3 L1*L6*L18; 2 L1*L6*+OCF
1 L3*L17*L28; 4 L7*L17*C_OHD_YZ; 8 L17*L26*+OCF; 2 L17*C_OHD_YZ*C_OHD_YZ
1 L17*C_OHD_YZ*DROP_OHP_YZQ; 2 L19*L28*L29; 1 L19*L29*C_OHD_YZ; 8 L19*L29*DROP_OHP_YZQ
1 L27*L28*L29; 3 L27*L29*C_OHD_YZ; 1 L27*L29*RY_P; 4 +OCP*L17
15 -HFR; 6 -HFR*C_OHD_YZ; 7 -HFR*DROP_OHP_YZQ; 1 -DFR*L0
2 +HDR*L6; 15 C_OPR_YQ*+OCF; 8 C_OPR_YQ*DROP_OHP_YZQ; 2 C_HCP_YZQ*L1
4 C_HCP_YZQ*-OHD; 1 C_HCP_YZQ*RX_P; 1 C_HCP_YZQ*TX_R_; 1 Q_OCDH_YZ*L17
5 Q_OCPH_YZQ*L24; 10 Q_OCPH_YZQ*TX_R_; 8 Q_OPRH_YZQ*L17; 2 Q_OCPF_YZQ*L19
5 Q_OCPF_YZQ*L27; 2 Q_OCPF_YZQ*L28; 7 Q_OCRF_Z*L17; 2 Q_HCPD_YZQ*L29
2 Q_HCPF_YZQ*L18; 4 Q_HCPF_YZQ*L26; 9 Q_HCPF_YZQ*DROP_OHP_YZQ; 1 Q_HCPF_YZQ*RX_P
```

Upper bound: `-109296521/1000000000`.

### Leaf RRTmpmmpmmpppmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY -HDZ +HYZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYR +HYR
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P YOHZP +YHP
P YOHZQ +YHQ
P ZOHCR +ZCR
P ZOHYP +ZHP
P ZOHYQ +ZHQ
P ZOHYR +ZYR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHYQ +PYQ
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
24 L0*L5*L25; 19 L0*L6*TY_R_; 25 L0*L17*L25; 5 L0*L17*TY_R_
5 L1*L3*L4; 36 L1*L4*L6; 4 L1*L6*L17; 23 L1*L6*DROP_OHP_Q
12 L1*L6*RY_P; 1 L1*L17*L24; 8 L1*L17*L27; 4 L1*L17*RY_P
2 L1*L28*L29; 2 L3*L4*L5; 10 L3*L4*L18; 3 L3*L7*L18
8 L3*L18*-OHD; 14 L3*L18*RY_P; 2 L3*L18*TX_R_; 15 L4*L5*L6
5 L4*L5*L17; 6 L4*L5*L25; 9 L4*L17*L32; 1 L4*L27*RX_P
23 L5*L16*L25; 6 L5*L25*-OHD; 15 L5*L25*RY_P; 15 L6*L16*TY_R_
4 L6*DROP_OHP_Q*TY_R_; 10 L6*RY_P*TY_R_; 7 L7*L20*L28; 10 L7*L27*DROP_OHP_Q
3 L7*L27*RY_P; 4 L16*L18*L27; 20 L16*L20*L28; 12 L16*L24*L28
3 L17*L18*L18; 39 L17*L22*RY_Q; 2 L17*L26*L32; 27 L18*-OHD*RX_Q
2 L19*L32*DROP_OHP_Q; 17 L20*L26*L28; 6 L20*L28*+OCF; 47 L20*L28*RY_P
27 L20*L28*RY_Q; 1 L20*L28*TX_R_; 1 L23*L28*L30; 2 L28*L29*-OHD
19 L28*L29*DROP_OHP_Q; 4 L28*L30*DROP_OHP_Q; 1 L28*L30*RY_Q; 1 L32*+OCF*RY_P
8 L32*DROP_OHP_Q*RY_Q; 18 +HDF*L25; 8 +CPQ*L1; 12 +CPQ*L4
4 +CPQ*L26; 22 +CPQ*-OHD; 12 -DPR*L1; 1 -OHP*L32
3 +OCP*L7; 20 +OCP*-OHD; 17 +OCP*RY_P; 2 +OCP*TX_R_
3 -HDP*L32; 4 -CDQ*-OHD; 29 -HFR*L17; 67 -HFR*DROP_OHP_Q
12 -HFR*RY_P; 19 -DFR*L0; 18 +HDR*L6; 26 C_ODR_Y*L1
4 C_ODR_Y*L16; 6 C_ODR_Y*DROP_OHP_Q; 8 C_HDP_YZ*L17; 17 C_HDQ_YZ*L26
6 C_HDQ_YZ*L29; 53 C_HDQ_YZ*DROP_OHP_Q; 35 C_HDQ_YZ*RY_P; 45 C_HDQ_YZ*RY_Q
2 C_HDQ_YZ*TX_R_; 3 C_CPR_Q*L18; 36 TPX_R_*L0; 11 TPX_R_*L4
12 TPX_R_*RY_P; 1 Q_OCDF_YZ*L32; 1 Q_OCPR_Q*L32; 3 Q_OPDR_YQ*L5
```

Upper bound: `-1091914119/1000000000`.

### Leaf RRTmpmmpmmpppmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ -HDY +HDZ`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYZ +HYZ
P HODYR +HYR
P HODZP -HZP
P HODZQ -HZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ -DYZ
P DOHYP +DYP
P DOHYQ +DYQ
P DOHYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHZP +YHP
P YOHZQ +YHQ
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L0*L1*L29; 47 L0*L8*L19; 16 L1*L2*L4; 18 L1*L7*L28
6 L1*L8*L28; 7 L1*L17*RX_Q; 1 L1*L28*RX_Q; 22 L2*L4*RX_P
79 L3*L3*L18; 1 L3*L18*L18; 4 L3*L18*L30; 9 L4*L4*L17
13 L4*L6*L19; 1 L4*L8*L19; 7 L4*L16*L17; 2 L4*L16*L31
1 L4*L17*L18; 2 L4*L31*DROP_OHP_Q; 2 L5*L17*L32; 22 L5*L17*RX_Q
2 L5*L18*L30; 1 L6*L15*L18; 18 L6*L28*RX_Q; 31 L7*L12*L28
4 L7*L28*-OHD; 22 L7*L28*+OCF; 38 L7*L28*DROP_OHP_Q; 6 L7*L28*RY_P
33 L8*L16*L28; 1 L10*L17*L18; 1 L13*L16*L28; 5 L16*L17*-OHD
1 L16*L17*RY_Q; 12 L16*L28*RX_Q; 1 L17*L18*L20; 50 L17*L18*+OCF
34 L17*L22*+OCF; 1 L17*L28*L29; 14 L19*L28*L29; 14 L28*L29*RY_P
14 -OHF*L1; 51 +CPQ*L1; 18 +CPQ*L5; 18 +CPQ*L20
11 +CPQ*+OCF; 51 +CPQ*C_OHD_Y; 12 +CPQ*DROP_OHP_Q; 44 -HFZ*L17
44 -HFZ*DROP_OHP_Q; 1 -HFZ*RY_P; 20 +OCP*L5; 1 +OCP*L14
11 +OCP*L17; 28 +OCP*-OHD; 48 +OCP*RX_P; 64 +OCP*RX_Q
1 -OHQ*L28; 32 +OCQ*L2; 20 +HCQ*L17; 18 -CDQ*L5
1 -CDQ*L18; 2 -CDQ*L21; 22 -CDQ*DROP_OHP_Q; 2 -CDQ*RX_P
20 -CDQ*RX_Q; 13 -HPQ*RX_P; 18 -HPQ*RX_Q; 36 +YZP*L1
36 +YZP*-OHD; 14 +ODY*L1; 9 +ODY*L19; 8 +ODY*-OHD
38 +ODY*RY_P; 32 +HDZ*L6; 33 +HDZ*L9; 32 +HDZ*L16
1 +HDZ*L19; 2 +HDZ*DROP_OHP_Q; 21 C_ODF_YZ*L28; 8 C_HCP_Q*L17
1 C_CYP_Q*L18; 3 Q_OCDF_YZ*L28; 6 Q_HYDF_Z*L1; 33 Q_HYDF_Z*L13
23 Q_HYDF_Z*L16; 9 Q_HYDF_Z*L19; 10 Q_HYDF_Z*DROP_OHP_Q; 38 Q_HYDF_Z*RY_P
13 Q_HPDF_YZ*L4; 32 Q_HPDF_YZ*L12; 36 Q_HQDF_YZ*L2; 2 Q_HQDF_YZ*L31
1 SP_CPDZ_YQ_CD-1*L18
```

Upper bound: `-217896731/1000000000`.

### Leaf RRTmpmmpmmpppmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY -OFZ +HDY`.

```c1top-geometry
C HDF Y Z -HDZ 153/500
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYZ -OFY
P HODYZ -HYZ
P HODYP -HYP
P HODYQ -HYQ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ +DYZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDR -YHR
P YOHFZ +YFZ
P YOHZR -YZR
P ZOHCR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ +PYQ
P POHQR -PQR
```

```c1top-bounds
T OHY Z 4 lower 279/1000
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 279/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
17 L7*L27; 20 L0*L1*L9; 22 L0*L7*L10; 17 L0*L9*-OHD
1 L1*L4*TY_R_; 3 L4*L5*DROP_OHR_Z; 1 L4*-OHD*TY_R_; 17 L7*L9*L28
3 L9*L28*-OHD; 17 -OHF*L1; 23 +DFY*L1; 25 +DFY*L26
21 +DFY*-OHD; 4 +OYR*L1; 25 +OYR*L5; 4 +OYR*C_OHD_Z
19 +HDY*L1; 17 +HDY*L7; 19 +HDY*-OHD; 3 Q_HDRF_Y*L1
3 Q_HDRF_Y*L5; 25 Q_HDRF_Y*L10; 3 Q_HDRF_Y*-OHD
```

Upper bound: `-217624447/1000000000`.

### Leaf RRTmpmmpmmpppp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR -HPQ +YZP +YZQ +ODY +OFZ`.

```c1top-geometry
C OHF Z Y +FOY 157/250
P OHDFZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR +FZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P YOFZR -YZR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
C HCF Z Y -CFY 157/250
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCP - 1 lower 5177/31333
S R - 2 upper 628/721
X R - 12 lower 29729/51000
Y R - 13 lower 296687/360500
B x Q 10 lower 70939883/140998500
B y Q 11 upper 329963279/541831500
O fc - 1 lower 279/1000
B x Q 10 lower 1699/3000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 283/500 459/500
m 187/1000 609/1000
r 291/500 1
t 411/500 1
```

```c1top-sum
2329 L4*L17; 633 L4*L29; 2096 L17*L27; 493 L17*L29
17 L17*L31; 341 L27*L29; 18 L29*L29; 1289 L0*L0*L29
746 L0*L1*L17; 150 L0*L2*L32; 204 L0*L3*L17; 740 L0*L7*L17
47 L0*L12*L31; 350 L0*L17*L32; 2177 L0*L17*-OHD; 18 L0*L17*RX_P
238 L0*L17*RY_P; 241 L0*L18*L30; 1356 L0*L19*L29; 27 L0*L28*L30
42 L0*L29*L31; 3214 L0*L29*RY_P; 9 L0*L29*TX_R_; 8 L1*L1*L29
16 L1*L1*L30; 76 L1*L2*L29; 84 L1*L6*L29; 1836 L1*L12*L18
857 L1*L12*L27; 406 L1*L12*L28; 676 L1*L17*L28; 150 L1*L18*L25
62 L1*L25*L28; 12 L1*L29*L33; 661 L2*L4*L27; 211 L2*L4*L32
9 L2*L12*L27; 42 L2*L12*L32; 298 L2*L27*L32; 79 L2*L29*L32
28 L2*L29*RY_P; 56 L3*L17*L18; 625 L3*L17*L27; 701 L3*L18*L18
2548 L3*L18*L27; 715 L4*L4*L29; 79 L4*L4*L31; 950 L4*L5*L17
89 L4*L6*L28; 25 L4*L6*L29; 2 L4*L7*L17; 84 L4*L12*L29
85 L4*L17*L22; 50 L4*L17*L32; 1124 L4*L17*RX_Q; 362 L4*L17*TY_R_
22 L4*L24*L29; 34 L4*L29*+OCF; 1758 L5*L18*L25; 1586 L5*L25*L28
61 L5*L27*L30; 9 L6*L25*L28; 2 L7*L15*L17; 37 L7*L15*L29
18 L7*L17*L27; 142 L7*L18*L27; 450 L7*L27*L28; 9 L7*L27*L29
37 L12*L19*L29; 84 L12*L25*L28; 737 L14*L27*L29; 26 L15*L17*L29
11 L15*L17*+OCF; 204 L15*L19*L29; 43 L15*L21*L29; 106 L15*L22*L29
758 L15*L28*L29; 28 L15*L29*L31; 1655 L15*L29*RY_P; 34 L15*L29*TY_R_
69 L16*L17*TY_R_; 18 L17*L17*-OHD; 914 L17*L18*L22; 46 L17*L18*L32
203 L17*L18*RY_P; 121 L17*L18*TX_R_; 186 L17*L24*L32; 346 L17*L27*L32
40 L17*L27*-OHD; 166 L17*L27*RY_P; 858 L17*L27*RX_Q; 121 L17*L29*RY_P
91 L17*L31*TY_R_; 13 L17*L33*TY_R_; 148 L18*L18*L30; 166 L18*L18*TX_R_
166 L18*L19*L29; 359 L18*L27*L30; 75 L18*L28*L30; 417 L19*L28*L29
883 L24*L28*L28; 215 L27*L28*L30; 305 L27*L29*-OHD; 1041 L27*L29*RY_P
65 L28*L28*L30; 23 L28*L29*L31; 628 L29*+OCF*RY_P; 208 -DPQ*L29
2907 +CPQ*L0; 2022 +CPQ*L4; 378 +CPQ*L12; 1025 +CPQ*L18
965 +CPQ*L24; 5172 +CPQ*L27; 1216 +CPQ*-OHD; 709 +CPQ*+OCF
709 +CPQ*TX_R_; 1466 -DPR*L1; 492 -DPR*L3; 1507 -DPR*L5
166 -DPR*L19; 125 -DPR*L30; 546 -DPR*RX_Q; 758 +HCZ*L0
864 +HCZ*L4; 1859 +HCZ*L19; 43 +HCZ*L21; 106 +HCZ*L22
9 +HCZ*L24; 771 +HCZ*L26; 28 +HCZ*L31; 28 -HFZ*L0
75 -HFZ*L7; 378 -HFZ*L16; 421 -HFZ*L21; 106 -HFZ*L22
225 -HFZ*L28; 74 -HFZ*L31; 99 -HFZ*-OHD; 3695 -HFZ*RY_P
19 -HFZ*TX_R_; 1628 -HFZ*TY_R_; 152 +OCP*L5; 444 +OCP*L6
294 +OCP*L13; 582 +OCP*L18; 305 +OCP*L23; 9 +OCP*L25
811 +OCP*L27; 910 +OCP*L28; 89 +OCP*L30; 1065 +OCQ*L17
2412 -CDQ*L0; 127 -CDQ*L4; 266 -CDQ*L16; 1330 -CDQ*L18
1674 -CDQ*L24; 2486 -CDQ*L27; 365 -CDQ*-OHD; 231 -HFR*L5
94 -HFR*L13; 1299 -HFR*L19; 945 -HFR*-OHD; 17 -HFR*RY_P
329 -DFR*L0; 804 -DFR*L4; 84 -DFR*L12; 623 -DFR*L16
417 -DFR*L18; 1109 -DFR*-OHD; 7 -OFR*L17; 751 -HPQ*L0
297 -HPQ*L3; 1061 -HPQ*L4; 502 -HPQ*L7; 378 -HPQ*L12
1936 -HPQ*L27; 220 -HPQ*-OHD; 305 -HPQ*RY_P; 406 +OFZ*L1
415 +OFZ*L16; 756 +OFZ*L21; 5 +OFZ*L31; 37 +OFZ*DROP_OHP_Q
1836 +OFZ*RY_P; 9 +OFZ*TX_R_; 857 +OFZ*TY_R_; 9 +FZR*L29
486 C_CDP_Q*L29; 12 TPX_R_*L29; 634 Q_ORFH_Z*L17; 62 Q_OCPD_Q*L29
37 Q_DFZP_Y*L29
```

Upper bound: `-1379098951/1000000000`.

### Leaf RRTmpmmpmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR -OZR +HPQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POFQR -PQR
P RODYZ -RYZ
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
8 L17*L27; 19 L29*RY_P; 8 L0*L1*L17; 13 L0*L4*L7
3 L0*L7*L21; 3 L0*L7*L32; 11 L0*L17*L20; 25 L0*L17*L23
2 L0*L17*L33; 6 L0*L18*L31; 2 L0*L29*L32; 88 L1*L3*L18
5 L1*L5*L5; 2 L1*L5*L27; 3 L1*L5*L30; 2 L1*L7*L17
8 L1*L16*L28; 1 L1*L17*L31; 3 L1*L28*RX_P; 9 L1*L28*RX_Q
3 L2*L2*L33; 2 L2*L6*L33; 57 L3*L18*-OHD; 16 L4*L4*L7
6 L4*L17*L23; 1 L4*L17*L33; 23 L4*L17*TY_R_; 2 L4*L29*L32
5 L4*L29*RY_P; 7 L5*L5*L5; 2 L5*L5*L20; 10 L5*L5*L25
28 L5*L7*L18; 15 L5*L16*L17; 7 L5*L17*RY_P; 8 L5*L18*L25
2 L5*L27*-OHD; 2 L6*L18*L31; 2 L6*L20*L28; 1 L6*L28*L30
47 L7*L16*L28; 3 L7*L17*L18; 4 L7*L18*L20; 1 L7*L18*RX_Q
46 L7*L21*L28; 6 L7*L28*RX_P; 10 L16*L17*L28; 4 L16*L19*L29
2 L16*L28*L32; 26 L16*L28*RX_P; 6 L16*L28*RY_P; 7 L16*L29*RY_P
1 L17*L17*RY_Q; 1 L17*L20*RY_P; 20 L17*+OCF*RY_Q; 1 L17*RY_P*TY_R_
1 L18*L27*RX_P; 24 L20*L28*+OCF; 2 L29*L32*-OHD; 2 L29*-OHD*RY_P
39 -DPQ*L7; 21 +CPQ*L4; 3 -DPR*L1; 24 -DPR*L5
3 -DPR*-OHD; 93 +OCP*L1; 7 +OCP*L16; 1 +OCP*L19
2 +OCP*L21; 2 +OCP*L31; 31 +OCP*-OHD; 12 +HCP*L28
4 -HFP*L17; 1 +OCQ*L29; 60 -CDQ*L1; 19 -CDQ*L6
4 -CDQ*L16; 22 -CDQ*-OHD; 24 -CDQ*+OCF; 48 -FPQ*L1
21 -FPQ*L4; 23 -FPQ*L16; 115 -FPQ*-OHD; 56 +HPQ*L1
62 +HPQ*L7; 65 +HPQ*-OHD; 24 +HPQ*RX_P; 16 C_CDP_Q*L0
10 C_CDP_Q*L3; 9 C_CDP_Q*L7; 9 TPX_R_*L1; 9 TPX_R_*-OHD
16 TPX_R_*RY_P; 2 Q_OCPF_Q*L17; 2 Q_OQDR_Y*L5; 1 Q_CPDR_Q*L18
```

Upper bound: `-55003187/25000000`.

### Leaf RRTmpmmppmmmm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR +OZR -HPQ -YZP -YZQ -YZR`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P YOZPR +YPR
P YOZQR +YQR
P YCDZP +YDZ
P ZOHFR -ZHR
P ZOYPR +ZPR
P ZOYQR +ZQR
P POHQR -PQR
```

```c1top-bounds
```

Exclusion: `cluster OPR Q ORQ YZ`.

### Leaf RRTmpmmppmmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR +OZR -HPQ -YZP -YZQ +YZR`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P YOHZR -YHZ
P YOCZR -YCR
P YOFZR -YFZ
P YHCFZ -YCF
P YCDFZ +YDZ
P ZOHFR -ZHR
P ZOCFY -ZCF
P ZOCYR -ZCR
P POHQR -PQR
```

```c1top-bounds
```

Exclusion: `area_cap CDR YZ 2148523/3187500 347/500`.

### Leaf RRTmpmmppmmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR +OZR -HPQ -YZP +YZQ`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P YOZPQ -YPQ
P YCDZP +YDZ
P ZOHFR -ZHR
P ZOYPQ -ZPQ
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L1*L5*L17; 1 L1*L18*L27; 37 L2*L19*L23; 4 L2*L19*TY_R_
1 L3*L4*L6; 1 L3*L4*L18; 1 L3*L4*L24; 2 L3*L5*L17
3 L3*L12*L28; 1 L3*L17*L23; 3 L3*L18*L22; 9 L4*L6*L15
14 L4*L12*L17; 1 L4*L21*L24; 2 L5*L6*L14; 10 L5*L6*+OCF
11 L5*L12*L27; 3 L5*L13*L17; 1 L5*L18*L24; 2 L6*L15*L16
8 L6*L15*RX_P; 3 L6*L17*L28; 2 L12*L16*L28; 1 L12*L17*RY_P
15 L12*L18*L27; 1 L12*L27*DROP_OHP_Q; 1 L12*L28*RY_P; 1 L13*L17*TY_R_
7 L14*L17*L18; 5 L14*L27*RX_P; 3 L15*L17*L29; 1 L16*L17*L22
1 L17*L20*RY_P; 1 L18*L27*-OHD; 8 -OHF*L1; 1 -OHF*RX_P
3 -OHF*TY_R_; 1 +OPQ*L13; 2 -HFZ*RX_P; 4 +DFZ*DROP_OHP_Q
11 +DFZ*RX_P; 4 +OCP*L1; 4 +OCP*L5; 2 +OCP*L12
7 +OCP*L14; 5 +OCP*L17; 7 +OCP*L19; 2 +OCP*L21
2 +OCP*L27; 4 +OCP*-OHD; 2 +OCP*RX_P; 32 +OCQ*L19
1 +OCQ*RY_P; 1 -CDQ*L1; 1 -CDQ*L19; 1 -CDQ*-OHD
1 -CDQ*DROP_OHP_Q; 1 -CDQ*TY_R_; 3 -HFR*-OHD; 1 -HFR*DROP_OHP_Q
13 +OZR*L5; 19 +OZR*L18; 1 +OZR*DROP_OHP_Q; 4 +OZR*RX_P
1 -HPQ*L4; 3 -OZQ*L17; 5 -DZR*L3; 5 -DZR*L16
1 -DZR*L21; 1 -DZR*RY_P; 1 +HZR*L3; 3 +HZR*L4
1 +HZR*L21; 2 -ZPQ*L17; 14 C_CZP_YQ*L1; 7 C_CZP_YQ*L18
2 C_CZP_YQ*L20; 6 C_CZP_YQ*L26; 14 C_CZP_YQ*-OHD; 2 C_CZP_YQ*+OCF
5 C_CZP_YQ*DROP_OHP_Q; 2 C_ZPQ_Y*L1; 2 C_ZPQ_Y*-OHD; 11 TPX_R_*L14
7 TPX_R_*L16; 3 TPX_R_*-OHD; 4 TPX_R_*DROP_OHP_Q; 3 Q_OCPZ_YQ*L17
3 Q_OPDR_YZQ*L2
```

Upper bound: `-29505710009/91000000000`.

### Leaf RRTmpmmppmpm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR +OZR -HPQ +YZP -YZQ`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P YOZPQ +YPQ
P YCDZQ +YDZ
P ZOHFR -ZHR
P ZOYPQ +ZPQ
P POHYQ +PHY
P POHYR -PYR
P POHZQ +PHZ
P POHZR -PZR
P POHQR -PQR
P POFYQ +PFY
P POFZQ +PFZ
P QOHYP +QHY
P QOHYR -QYR
P QOHZP +QHZ
P QOHZR -QZR
P QOFYP +QFY
P QOFZP +QFZ
```

```c1top-bounds
```

Exclusion: `cluster OHP Q OHQ YZ`.

### Leaf RRTmpmmppmppmm

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR +OZR -HPQ +YZP +YZQ -YZR -ODY`.

```c1top-geometry
C OCD Y Z -DOZ 140829/250000
P OHDFY -OFY
P OHDZP -OZP
P OHDZQ -OZQ
P OHFZR -OFZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYZ -DYZ
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P ZOHFR -ZHR
P POHQR -PQR
C DZP Y Q -ZPQ 106878083/157000000
P POYZQ +PYQ
```

```c1top-bounds
T OCD Y 1 lower 93/299
E OD YPQ 2 lower 837/1000
B x Q 10 lower 261983/448500
B y Q 11 lower 51553/235500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 311/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 73/125 459/500
m 109/500 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
1 L0*L13*L24; 8 L1*L4*L17; 14 L1*L6*TY_R_; 1 L1*L27*L28
37 L2*L3*L17; 3 L2*L15*L17; 37 L2*L17*+OCF; 6 L3*L3*L15
16 L3*L4*L13; 8 L3*L16*L18; 4 L3*L18*RX_P; 3 L4*L4*L7
2 L4*L5*L24; 2 L4*L6*TY_R_; 15 L4*L12*L27; 1 L4*L13*L17
3 L4*L13*L28; 4 L4*L14*L17; 1 L4*L17*L29; 8 L4*L17*-OHD
24 L4*L17*+OCF; 8 L4*L17*DROP_OHP_Q; 13 L5*L6*+OCF; 2 L12*L17*TY_R_
22 L12*L27*+OCF; 1 L12*L27*DROP_OHP_Q; 1 L14*L17*L24; 1 L14*L17*TX_R_
1 L15*L17*L29; 1 L27*L28*-OHD; 3 -OHF*L1; 1 -OHF*L5
4 -OHF*L19; 14 -OHF*TY_R_; 4 +HCZ*L4; 1 +HCZ*L24
1 -HFZ*L4; 5 +OCP*L1; 4 +OCP*L5; 20 +OCP*L17
5 +OCP*L25; 5 +OCP*-OHD; 29 +OCP*RX_P; 1 -HFR*L17
1 -HFR*DROP_OHP_Q; 13 -DFR; 4 -DFR*L4; 8 +OZR*L4
20 +OZR*+OCF; 3 +OZR*DROP_OHP_Q; 2 -DZR*L3; 7 -DZR*L5
1 C_ODP_YQ*L29; 4 C_ODP_YQ*DROP_OHP_Q; 4 C_CZP_Q*L4; 2 TPX_R_
1 TPX_R_*L14; 13 TPX_R_*+OCF; 5 Q_OCPZ_Q*L24; 24 Q_CPDZ_YQ*+OCF
3 Q_CPDZ_YQ*DROP_OHP_Q
```

Upper bound: `-175098079/500000000`.

### Leaf RRTmpmmppmppmp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR +OZR -HPQ +YZP +YZQ -YZR +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYR -OFY
P OHFZR -OFZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P ZOHFR -ZHR
P POHQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 413/2500 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 5629/10000
l 5031/10000 4587/5000
m 1871/10000 1247/2000
r 3969/10000 1
t 1593/2000 1
```

```c1top-sum
4626 L4*L17; 5093 L17*L20; 7642 L0*L0*L17; 4965 L0*L0*L29
1817 L0*L0*TX_R_; 19424 L0*L4*TX_R_; 853 L0*L6*L31; 81 L0*L17*L25
603 L0*L18*L31; 2984 L0*L28*DROP_OHP_Q; 4658 L0*L28*RX_Q; 282 L1*L17*TX_R_
789 L1*L27*L30; 1363 L1*L27*RX_Q; 1168 L1*L28*L29; 6388 L2*L21*L28
6625 L2*L28*RY_Q; 1795 L3*L4*L24; 6540 L3*L18*L18; 2128 L3*L18*L28
669 L4*L4*L17; 10196 L4*L4*L29; 9211 L4*L4*TX_R_; 13 L4*L5*L6
369 L4*L6*L17; 1934 L4*L6*L31; 4318 L4*L6*TY_R_; 6734 L4*L17*L20
159 L4*L17*L25; 5031 L4*L17*-OHD; 428 L4*L17*+OCF; 982 L4*L17*RY_P
1110 L4*L17*RY_Q; 500 L4*L18*L31; 2787 L4*L24*L30; 2030 L4*L28*L30
325 L4*L31*L32; 1570 L5*L17*TX_R_; 1324 L7*L27*DROP_OHP_Q; 337 L16*L17*L22
1435 L16*L18*L28; 447 L17*L17*L19; 3194 L17*L17*-OHD; 188 L17*L17*RY_P
377 L17*L18*L32; 1300 L17*L18*RY_P; 1316 L17*L20*-OHD; 26329 L17*L22*L22
960 L17*L25*-OHD; 38 L17*L32*-OHD; 317 L17*L32*DROP_OHP_Q; 3054 L17*-OHD*RY_P
3194 L17*RY_P*RX_Q; 1677 L18*L18*L30; 325 L18*L30*L32; 1597 L20*L28*L30
789 L27*L30*-OHD; 1363 L27*-OHD*RX_Q; 861 L28*L29*-OHD; 1316 L28*L29*DROP_OHP_Q
10980 -OHF*L1; 11934 -OHF*L26; 716 -OHF*L30; 1236 -OHF*RX_Q
5521 -OHF*TY_R_; 6532 +OPQ*L2; 8093 +OPQ*L4; 7136 +CPQ*L1
3469 +CPQ*L18; 14373 +CPQ*L20; 26329 +CPQ*L22; 12138 +CPQ*-OHD
4080 +OCP*L1; 7539 +OCP*L5; 2379 +OCP*L17; 8205 +OCP*L18
5772 +OCP*L23; 6396 +OCP*RX_P; 6532 +OCP*RX_Q; 10188 +OCQ*L0
1431 +OCQ*L4; 14582 +OCQ*L17; 13057 +HCQ*L17; 9962 -CDQ*L4
5303 -CDQ*L16; 14373 -CDQ*L20; 26329 -CDQ*L22; 1438 -CDQ*-OHD
1431 -CDQ*DROP_OHP_Q; 2461 -CDQ*RY_P; 2251 -HFR*L17; 17455 -HFR*-OHD
3575 -HFR*DROP_OHP_Q; 4318 -DFR*L4; 4658 -HPQ*L0; 6388 -HPQ*L3
9282 -HPQ*L4; 1597 -HPQ*L30; 5772 -HPQ*RY_P; 3916 C_ODR_YZ*L5
2862 C_ODR_YZ*L20; 7045 C_ODR_YZ*DROP_OHP_Q; 4814 C_ODR_YZ*RX_Q; 20716 TPX_R_*L0
19420 TPX_R_*L4; 1623 TPX_R_*L30; 4535 TPX_R_*-OHD; 2803 TPX_R_*RX_Q
12929 Q_OCPD_Q*L2; 823 Q_OCPD_Q*L17; 7645 Q_OCDR_YZ*L17
```

Upper bound: `-90392632401/100000000000`.

### Leaf RRTmpmmppmppp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR +OZR -HPQ +YZP +YZQ +YZR`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P YOHZR -YHZ
P YOCZR -YCR
P YOFZR -YFZ
P YOZPR -YPR
P YOZQR -YQR
P YHCFZ -YCF
P YHCZP +YHP
P YHCZQ +YHQ
P YHFZP +YFP
P YHFZQ +YFQ
P YCDFZ +YDZ
P ZOHFR -ZHR
P ZOHYP +ZHP
P ZOHYQ +ZHQ
P ZOCFY -ZCF
P ZOCYR -ZCR
P ZOFYP +ZFP
P ZOFYQ +ZFQ
P ZOYPR -ZPR
P ZOYQR -ZQR
P POHYQ +PYQ
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
```

Exclusion: `area_cap CDR YZ 2148523/3187500 347/500`.

### Leaf RRTmpmmppp

Assumptions: `-FPQ +CYZ -OYP -OYQ +OYR +OZR +HPQ`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P ZOHFR -ZHR
P POFQR -PQR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
12 L4*TX_R_; 2 L27*L29; 1 L0*L1*L31; 8 L0*L3*L4
3 L0*L4*L7; 5 L0*L7*L21; 1 L0*L7*RX_P; 2 L0*L16*L31
1 L0*L18*L31; 1 L0*L29*L32; 39 L1*L3*L18; 3 L1*L4*L31
12 L1*L5*L17; 2 L1*L5*L27; 1 L1*L7*L17; 11 L1*L16*L28
1 L1*L17*L19; 9 L1*L18*RX_Q; 6 L1*L28*RX_P; 1 L2*L2*L33
1 L2*L6*L33; 1 L3*L3*L3; 4 L3*L5*L18; 2 L3*L16*L18
8 L3*L18*L24; 11 L3*L18*-OHD; 10 L4*L4*L7; 1 L4*L16*L31
1 L4*L31*+OCF; 2 L4*+OCF*TX_R_; 16 L4*RY_P*TX_R_; 8 L5*L6*L27
3 L5*L16*L17; 1 L5*L17*L32; 10 L5*L18*RX_Q; 2 L5*L27*-OHD
14 L6*L18*L21; 1 L6*L18*L31; 12 L7*L16*L28; 11 L7*L21*L28
1 L7*L28*L31; 1 L16*L19*L28; 5 L16*L28*-OHD; 5 L16*L28*RX_P
1 L16*L28*RY_P; 4 L17*L22*L29; 1 L29*+OCF*RY_P; 50 +OCP*L1
9 +OCP*L5; 1 +OCP*L21; 8 +OCP*L24; 9 +OCP*-OHD
2 +OCP*RX_P; 4 +HCP*L28; 6 -HFQ*L17; 22 -CDQ*L1
4 -CDQ*L6; 8 -CDQ*L16; 2 -CDQ*-OHD; 5 -CDQ*+OCF
1 -OFQ*L17; 8 -DFR*L4; 34 -FPQ*L1; 12 -FPQ*L16
46 -FPQ*-OHD; 5 -FPQ*+OCF; 41 +HPQ*L1; 10 +HPQ*L5
23 +HPQ*L7; 13 +HPQ*L16; 31 +HPQ*-OHD; 18 TPX_R_*L1
1 TPX_R_*L4; 19 TPX_R_*-OHD; 16 TPX_R_*RY_P; 1 Q_OCPF_Q*L17
13 Q_OPDR_YZQ*L7; 1 Q_OPDR_YZQ*L29; 1 Q_OQDR_YZ; 10 Q_OQDR_YZ*L5
14 Q_OQDR_YZ*L6; 1 Q_OQDR_YZ*+OCF
```

Upper bound: `-420078709/1000000000`.

### Leaf RRTpmm

Assumptions: `+FPQ -PQR -CYZ`.

```c1top-geometry
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDYR +FYR
P FHDZR +FZR
P YOHCZ -YHZ
P POHFQ -PHQ
```

```c1top-bounds
T OCZ Y 1 lower 279/907
T OCZ Y 7 lower 279/628
B x Q 10 lower 792119/1360500
```

```c1top-box
h 347/500 1
c 769/2500 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 2221/5000 907/1000
p 851/1000 1
q 37/250 5629/10000
l 2911/5000 4587/5000
m 1871/10000 1247/2000
r 3969/10000 1
t 1593/2000 1
```

```c1top-sum
13297 L4*L17; 7163 L7*L27; 185 L28*L28; 1516 L0*L0*L17
1768 L0*L2*L28; 10335 L0*L6*L28; 396 L0*L8*L28; 197 L0*L12*L28
73 L0*L17*L18; 4495 L1*L3*L27; 4771 L1*L5*L6; 1186 L1*L13*L27
652 L1*L14*L27; 1943 L1*L17*L27; 36 L1*L17*L33; 6009 L2*L2*L15
2734 L2*L2*L33; 1141 L2*L4*L28; 9672 L2*L5*L5; 64 L2*L5*L10
257 L2*L5*L13; 1914 L2*L5*L31; 517 L2*L10*L28; 13 L2*L12*L15
12656 L2*L17*L19; 11596 L2*L17*L23; 362 L2*L17*L33; 6576 L2*L17*RY_Q
4491 L2*L24*L28; 52 L2*L28*L32; 532 L2*L33*L33; 10806 L3*L3*L3
50469 L3*L3*L18; 4683 L3*L5*L6; 10494 L3*L5*L25; 6297 L3*L5*L27
845 L3*L10*L13; 4 L3*L10*L15; 2 L3*L12*L27; 41757 L3*L18*L21
5754 L3*L18*L28; 13968 L3*L27*RY_Q; 32820 L4*L6*L17; 4728 L4*L6*L28
396 L4*L8*L28; 991 L4*L12*L28; 1415 L4*L14*L17; 7136 L4*L17*L18
14633 L4*L17*L21; 35366 L4*L17*L23; 14916 L4*L17*L25; 8862 L4*L17*L26
1367 L4*L17*RX_P; 15473 L4*L17*TY_R_; 20 L4*L28*L31; 396 L5*L5*L8
729 L5*L5*L13; 24807 L5*L5*L25; 3864 L5*L5*L30; 6 L5*L6*L11
125 L5*L6*L12; 1232 L5*L6*L15; 8218 L5*L6*L19; 6948 L5*L6*L25
2274 L5*L6*L31; 906 L5*L6*L33; 795 L5*L8*L14; 19 L5*L10*L25
138 L5*L12*L13; 747 L5*L15*L31; 20511 L5*L18*L25; 3722 L5*L18*L30
23251 L5*L21*L27; 1462 L5*L25*L31; 445 L5*L30*L31; 93 L5*L31*L33
4751 L6*L6*L19; 1789 L6*L6*L32; 2653 L6*L6*TY_R_; 89 L6*L10*L13
25 L6*L10*L15; 25 L6*L10*L28; 138 L6*L13*L15; 668 L6*L14*L33
130 L6*L15*L17; 1450 L6*L15*L18; 1073 L6*L17*RY_P; 5098 L6*L18*L28
7775 L6*L18*L29; 1842 L6*L18*L32; 1168 L6*L22*L28; 106 L6*L28*L31
391 L6*L31*L33; 1397 L6*L31*TY_R_; 406 L6*L32*L33; 1250 L7*L12*L28
962 L7*L15*L27; 3899 L7*L19*L27; 848 L7*L25*L28; 120 L7*L27*L31
8796 L7*L27*RX_P; 11093 L7*L27*RY_P; 224 L7*L28*L33; 96 L8*L12*L15
214 L8*L15*L28; 2 L9*L12*L28; 2 L9*L13*L27; 2 L9*L25*L28
96 L10*L13*L13; 2 L10*L13*L25; 132 L10*L13*L28; 449 L11*L12*L28
138 L12*L12*L28; 212 L12*L17*L28; 259 L12*L28*L29; 672 L12*L28*L33
129 L13*L16*L27; 1422 L13*L18*L28; 78 L13*L19*L27; 652 L14*L27*-OHD
14 L14*L27*+OCF; 25 L15*L17*L18; 114 L15*L17*L23; 130 L15*L17*L25
78 L15*L17*TY_R_; 13 L15*L18*L31; 224 L15*L25*L28; 6408 L16*L17*L27
1633 L16*L23*L27; 2264 L16*L27*L28; 33239 L16*L27*RY_Q; 1155 L17*L17*L26
108 L17*L18*L30; 31796 L17*L18*TX_R_; 484 L17*L20*L33; 2502 L17*L24*L33
9879 L17*L27*L31; 21565 L17*L27*RX_P; 11297 L17*L28*TX_R_; 219 L17*L33*L33
7432 L17*L33*TX_R_; 4026 L18*L24*L28; 1389 L18*L25*L30; 328 L18*L28*RX_Q
54 L18*L30*L31; 219 L18*L31*L33; 6312 L19*L27*+OCF; 3303 L21*L25*L28
8702 L21*L27*-OHD; 12006 L21*L27*RX_P; 34872 L21*L27*RY_P; 3455 L23*L28*L29
1252 L25*L28*L29; 4495 L27*-OHD*RX_P; 1516 L28*L28*RX_P; 967 L28*L33*TX_R_
11181 -OHF*L1; 3710 -OHF*L3; 13 -OHF*L13; 826 -OHF*L14
11170 -OHF*L19; 2350 -OHF*L21; 716 -OHF*L25; 283 -OHF*L32
982 -OHF*TY_R_; 39998 -DPQ*L6; 412 -DPQ*L17; 2257 -DPQ*L18
2809 -DPQ*L28; 21819 -DQR*L3; 30832 -DQR*L5; 6126 -DQR*L14
39373 -DQR*L19; 4002 -DQR*L31; 5625 -DQR*L32; 745 +OCY*L13
773 +OCY*L15; 650 +HCY*L1; 89 +HCY*L6; 87 +HCY*L13
769 +HCY*L14; 2 +HCY*L25; 254 +HCY*-OHD; 787 -HFZ*L0
347 -HFZ*L2; 89 -HFZ*L9; 25 -HFZ*L11; 138 -HFZ*L12
212 -HFZ*L17; 1422 -HFZ*L19; 1384 -HFZ*L25; 58 -HFZ*L28
672 -HFZ*L33; 55400 +OCP*L3; 41509 +OCP*L7; 11041 +OCP*L10
11148 +OCP*L15; 11717 +OCP*L17; 5826 +OCP*L19; 61954 +OCP*L21
2331 +OCP*L23; 5137 +OCP*L25; 6186 +OCP*L28; 1411 +OCP*L33
6297 -CDP*L27; 13143 -CDQ*L5; 595 -CDQ*L14; 4621 -CDQ*L17
28547 -CDQ*L18; 4042 -CDQ*L24; 3302 -CDQ*L26; 4785 -CDQ*L33
2989 -CDQ*-OHD; 24606 -CDQ*+OCF; 7964 -CDQ*TX_R_; 10665 -CDQ*TY_R_
5075 -HFR*L2; 3325 -HFR*L4; 1384 -HFR*L12; 962 -HFR*L15
10563 -HFR*L17; 2743 -HFR*L19; 367 -HFR*L30; 8534 -DFR*L2
2653 -DFR*L6; 18039 -DFR*L17; 3507 -DFR*L30; 1750 -DFR*L33
434 +OYZ*L1; 4904 +OYZ*L2; 257 +OYZ*L6; 109 +OYZ*L12
11041 +OYZ*L18; 16105 +FPQ*L6; 36 +FPQ*L14; 49297 +FPQ*L17
8993 +FPQ*L19; 16665 +FPQ*L20; 48522 +FPQ*L25; 467 +FPQ*L28
3653 +FPQ*L33; 11373 +FPQ*-OHD; 15000 +FPQ*RX_Q; 15750 +FPQ*TY_R_
8702 -PQR*L0; 11000 -PQR*L4; 41426 -PQR*L7; 78 -PQR*L15
46770 -PQR*L17; 26502 -PQR*L20; 7097 -PQR*L29; 1058 -PQR*L30
50622 -PQR*RY_Q; 1441 -CYZ*L2; 460 -CYZ*L5; 347 -CYZ*L6
13 -CYZ*L12; 11041 -CYZ*L18; 2 -CYZ*L25; 121 -CYZ*L28
3463 -CYZ*+OCF; 6048 +DZQ*L27; 204 -DZR*L1; 1384 -DZR*L7
2 -DZR*L9; 212 -DZR*L17; 78 -DZR*L19; 968 -DZR*L23
2 -DZR*+OCF; 5080 -DZR*RY_Q; 342 +FZR*L17; 982 +FZR*L28
1104 C_OCZ_Y*L2; 66 C_OCZ_Y*L33; 648 C_HCZ_Y*L28; 3579 TPX_R_*L6
19 TPX_R_*L10; 287 TPX_R_*L15; 3271 TPX_R_*L17; 1713 TPX_R_*L28
65 TPX_R_*L33; 14 Q_CPDZ_Q*L27
```

Upper bound: `-3360799772973/125000000000`.

### Leaf RRTpmpmmm

Assumptions: `+FPQ -PQR +CYZ -OYP -OYQ -OYR`.

```c1top-geometry
P OHDYR +ODY
P OHYZP -OZP
P OHYZQ -OZQ
P OHYZR -OZR
P OCDYZ +ODZ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDYR +FYR
P FHDZR +FZR
P YOCDR +YCR
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHFQ -PHQ
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 8261/50000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 1851/12500 907/1000
z 93/1000 907/1000
w 1851/12500 907/1000
p 851/1000 1
q 1851/12500 56287/100000
l 6289/12500 45867/50000
m 18713/100000 31171/50000
r 9923/25000 1
t 79653/100000 1
```

```c1top-sum
2790 L4*L17; 2074 L0*L8*L27; 421 L0*L13*L28; 5538 L0*L16*L27
409 L1*L3*L27; 2112 L1*L4*L17; 823 L1*L7*L28; 189 L1*L8*L28
822 L1*L9*L27; 105 L1*L11*L17; 1267 L1*L12*L28; 4 L1*L13*L27
948 L1*L28*L29; 627 L2*L2*L33; 3076 L2*L3*L5; 442 L2*L5*L31
14 L2*L11*L17; 2653 L3*L3*L3; 11598 L3*L3*L18; 45 L3*L3*L32
3811 L3*L5*L6; 29 L3*L5*L11; 1517 L3*L5*L18; 1952 L3*L5*L25
1353 L3*L5*L28; 119 L3*L6*L11; 2261 L3*L6*L14; 412 L3*L7*L28
136 L3*L9*L18; 34 L3*L15*L25; 3832 L3*L16*L27; 1419 L3*L18*L18
16825 L3*L18*L21; 3202 L3*L18*L28; 2615 L3*L18*TX_R_; 841 L3*L27*-OHD
272 L3*L27*RY_P; 3221 L4*L5*L17; 78 L4*L5*L31; 1757 L4*L6*L17
2634 L4*L8*L27; 21 L4*L9*L17; 57 L4*L11*L17; 2 L4*L12*L27
1049 L4*L17*L17; 2149 L4*L17*L18; 2781 L4*L17*L23; 4732 L4*L17*L25
9304 L4*L17*+OCF; 3072 L4*L17*TY_R_; 271 L4*L20*L27; 423 L4*L24*L28
7698 L5*L5*L25; 751 L5*L5*L30; 1314 L5*L6*L8; 1321 L5*L6*L11
1871 L5*L6*L15; 8393 L5*L6*L25; 2115 L5*L6*L31; 26 L5*L8*L28
17 L5*L9*L18; 86 L5*L11*L21; 71 L5*L12*L28; 169 L5*L13*L27
3815 L5*L16*L28; 4517 L5*L17*L29; 61 L5*L17*L31; 7562 L5*L18*L25
984 L5*L18*L30; 1474 L5*L21*L27; 1030 L5*L25*L31; 123 L5*L27*L31
385 L5*L29*L33; 119 L5*L31*L33; 4758 L6*L6*L19; 646 L6*L6*L32
4585 L6*L6*TY_R_; 1179 L6*L9*L27; 1179 L6*L10*L25; 706 L6*L10*L27
589 L6*L16*L28; 2087 L6*L18*L25; 1399 L6*L18*L29; 27 L6*L18*L31
622 L6*L19*L33; 1726 L6*L28*L29; 162 L6*L29*L33; 71 L6*L33*TX_R_
1487 L7*L8*L28; 2189 L7*L11*L27; 183 L7*L15*L28; 3653 L7*L17*L28
1470 L7*L19*L27; 9118 L7*L21*L27; 1075 L7*L25*L28; 1029 L7*L27*L28
179 L7*L27*L32; 1102 L7*L27*RY_P; 168 L8*L15*L28; 20 L8*L28*L29
50 L9*L18*L28; 168 L10*L12*L28; 105 L10*L16*L28; 14 L10*L17*L29
10 L11*L17*L33; 10 L11*L18*L31; 189 L11*L28*L29; 7 L11*L29*L33
37 L12*L28*L29; 4 L12*L28*TY_R_; 34 L13*L27*+OCF; 243 L15*L28*L29
614 L16*L17*L27; 89 L16*L18*L28; 447 L16*L27*L32; 587 L16*L27*RX_Q
90 L17*L17*L33; 728 L17*L18*L29; 90 L17*L18*L31; 24 L17*L18*L33
2544 L17*L18*TX_R_; 1071 L17*L24*L33; 447 L17*L26*L33; 1328 L17*L27*L31
7021 L17*L29*TY_R_; 45 L17*L33*-OHD; 421 L17*L33*+OCF; 1068 L17*L33*RY_Q
377 L17*L33*TX_R_; 213 L18*L18*L30; 403 L18*L21*L28; 1084 L18*L24*L31
4546 L18*L28*TX_R_; 119 L18*L31*L33; 4465 L21*L27*-OHD; 9268 L21*L27*RX_P
87 L24*L28*L33; 111 L27*L28*L31; 136 L27*L29*L32; 1380 L28*L29*-OHD
279 L28*L29*RY_P; 378 L28*L29*RY_Q; 42 L28*L30*TY_R_; 563 L28*L33*TX_R_
89 L29*L33*L33; 860 -OHF*L14; 17281 -DPQ*L6; 1180 -DPQ*L17
1814 -DPQ*L18; 13076 -DPQ*L27; 2586 -DPR*L6; 9214 -DQR*L3
4262 -DQR*L5; 151 -DQR*L10; 13072 -DQR*L19; 1867 -DQR*L32
189 +HCY*L28; 20 -HFY*L2; 2162 -HFY*L13; 2732 -HFY*L15
50 -HFY*L19; 655 -HFY*L24; 26 -HFY*TY_R_; 14 +DFY*L17
2196 +HCZ*L6; 243 +HCZ*L28; 1445 -HFZ*L1; 34 -HFZ*L2
1271 -HFZ*L4; 2162 -HFZ*L8; 2732 -HFZ*L10; 3 -HFZ*L29
3 +DFZ*L29; 2533 +OCP*L1; 792 +OCP*L7; 136 +OCP*L9
366 +OCP*L11; 400 +OCP*L14; 11012 +OCP*L17; 1410 +OCP*L18
19980 +OCP*L21; 3968 +OCP*L23; 123 +OCP*L33; 4172 +OCP*-OHD
12762 +OCP*RX_P; 393 +OCP*TX_R_; 3845 -CDQ*L2; 7573 -CDQ*L5
65 -CDQ*L11; 634 -CDQ*L17; 8812 -CDQ*L18; 8909 -CDQ*L24
378 -CDQ*L28; 1392 -CDQ*L29; 800 -CDQ*L33; 359 -CDQ*TX_R_
1222 -CDQ*TY_R_; 1730 -HFR*L6; 655 -HFR*L9; 2921 -HFR*L11
2856 -DFR*L6; 330 -DFR*L18; 100 -DFR*L33; 2564 +OYZ*L1
168 +OYZ*L5; 2261 +OYZ*L6; 400 +OYZ*L19; 1930 +FPQ*L1
2071 +FPQ*L5; 7917 +FPQ*L6; 65 +FPQ*L11; 6849 +FPQ*L17
9759 +FPQ*L25; 800 +FPQ*L33; 7372 +FPQ*-OHD; 3209 +FPQ*RX_P
3731 +FPQ*TY_R_; 54 -PQR*L3; 1255 -PQR*L4; 9118 -PQR*L7
151 -PQR*L11; 3270 -PQR*L17; 5845 -PQR*-OHD; 16807 -PQR*RY_Q
98 +CYZ*L7; 400 +CYZ*L18; 3059 -OYR*L1; 1017 -OYR*L5
2027 -OYR*L6; 14 -OYR*L17; 84 -OYR*L19; 138 -OYR*-OHD
20 -OYR*RX_P; 467 +ODY*L27; 34 -OZR*L6; 99 +ODZ*L28
151 +DYP*L27; 26 -DYR*L5; 173 -DYR*L7; 6 -DYR*L17
67 -DYR*L19; 20 -DYR*L29; 174 -DZR*L5; 34 -DZR*L29
1843 C_CDP_Q*L28; 2459 TPX_R_*L6; 1193 TPX_R_*L11; 174 TPX_R_*L15
3671 TPX_R_*L28; 4242 Q_ORFH_YZ*L17; 1054 Q_ORFH_YZ*L28; 974 Q_OPDY_Q*L27
440 Q_DRFP_Q*L17
```

Upper bound: `-81641702305787/50000000000000`.

### Leaf RRTpmpmmpmmmm

Assumptions: `+FPQ -PQR +CYZ -OYP -OYQ +OYR -OZR -YZP -YZQ -ODY`.

```c1top-geometry
C OCD Y Z -DOZ 140829/250000
P OHDFY -OFY
P OHDZP -OZP
P OHDZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYZ -DYZ
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHFQ -PHQ
P POYZR -PYR
P QOYZR -QYR
```

```c1top-bounds
T OCD Y 1 lower 93/299
E OD YPQ 2 lower 837/1000
B x Q 10 lower 261983/448500
B y Q 11 lower 51553/235500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 311/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 73/125 459/500
m 109/500 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
141 L4*L27; 2 L10*L17; 126 L17*L24; 7 L17*L31
1 L28*L29; 7 L0*L17*L33; 42 L0*L17*TY_R_; 7 L0*L18*L31
41 L1*L4*L17; 105 L1*L6*L6; 22 L1*L6*L17; 11 L1*L6*L27
11 L1*L6*L28; 112 L1*L12*L28; 44 L1*L17*L17; 533 L1*L21*L27
11 L1*L25*L28; 2 L2*L2*L33; 1893 L2*L3*L17; 185 L2*L5*L5
1089 L2*L5*L6; 348 L2*L5*L25; 1893 L2*L17*+OCF; 155 L2*L27*L29
2 L2*L27*+OCF; 9 L3*L3*L4; 11 L3*L3*L15; 282 L3*L4*L21
714 L3*L4*L25; 8 L3*L4*L28; 144 L3*L5*L15; 457 L3*L7*L18
258 L3*L7*L28; 3 L3*L10*L18; 4 L3*L12*L18; 155 L3*L16*L27
180 L3*L18*L24; 8 L3*L18*TY_R_; 78 L3*L27*L31; 81 L4*L5*L6
93 L4*L5*L31; 482 L4*L6*L17; 3 L4*L10*L17; 26 L4*L13*L17
1 L4*L15*L31; 167 L4*L17*L18; 774 L4*L17*L23; 450 L4*L17*L26
57 L4*L17*-OHD; 1014 L4*L17*+OCF; 256 L4*L17*TY_R_; 85 L4*L18*L31
5 L4*L25*L28; 13 L4*L27*+OCF; 36 L4*L28*RX_Q; 3 L5*L5*L9
64 L5*L5*L13; 701 L5*L5*L25; 233 L5*L6*L15; 309 L5*L6*L25
52 L5*L6*L31; 1 L5*L9*L18; 165 L5*L13*L27; 302 L5*L17*L24
616 L5*L18*L25; 54 L5*L25*L31; 6 L5*L27*L31; 172 L6*L6*TY_R_
6 L6*L25*L32; 236 L7*L12*L28; 2 L7*L14*L17; 510 L7*L16*L27
35 L7*L18*L31; 3 L7*L19*L27; 105 L7*L25*L28; 55 L7*L27*L31
7 L7*L27*RY_P; 5 L7*L28*RX_P; 93 L12*L17*L26; 2 L12*L22*L28
27 L12*L28*L29; 1 L12*L28*L32; 27 L12*L28*RX_P; 93 L13*L16*L27
4 L13*L22*L27; 2 L14*L17*L26; 24 L14*L17*L29; 1 L14*L17*TY_R_
2 L15*L16*L27; 4 L15*L21*L27; 74 L15*L28*L29; 490 L16*L16*L27
9 L16*L18*L27; 428 L16*L21*L27; 4 L16*L22*L27; 22 L16*L27*-OHD
222 L17*L17*L26; 86 L17*L17*TY_R_; 1 L17*L18*L33; 247 L17*L19*TX_R_
5 L17*L24*L32; 11 L17*L24*RY_P; 8 L17*L29*L33; 25 L17*L29*RY_Q
43 L17*L31*TY_R_; 8 L18*L18*L21; 768 L18*L21*L24; 74 L18*L28*L29
6 L18*L29*L31; 591 L21*L27*-OHD; 4 L24*L28*L33; 45 L28*L29*RY_Q
3 L28*L33*TX_R_; 48 -OHF*L5; 108 -DPQ*L3; 208 -DPQ*L6
79 -DPR*L3; 45 -DPR*L6; 218 -DQR; 81 -DQR*L1
766 -DQR*L5; 4 -DQR*L15; 410 -DQR*RX_P; 17 -DQR*RY_P
112 -OHZ*L28; 263 +HCZ*L6; 287 -HFZ*L1; 2 -HFZ*L5
10 -HFZ*L22; 74 -HFZ*L26; 287 -HFZ*-OHD; 27 -HFZ*+OCF
27 -HFZ*RX_P; 859 +OCP*L1; 20 +OCP*L5; 396 +OCP*L7
24 +OCP*L9; 1 +OCP*L10; 28 +OCP*L12; 5 +OCP*L14
46 +OCP*L25; 839 +OCP*-OHD; 5 +OCP*RX_P; 3 +OCP*RY_P
10 +OCP*TY_R_; 326 -CDQ*L7; 24 -CDQ*L13; 11 -CDQ*L15
9 -CDQ*L18; 575 -CDQ*L24; 21 -CDQ*L29; 130 -CDQ*TX_R_
11 -HFR*L0; 105 -HFR*L6; 74 -HFR*L15; 74 -DFR*L0
265 -DFR*L2; 116 -DFR*L6; 215 -DFR*L20; 1 -DFR*L33
68 +FPQ*L1; 476 +FPQ*L3; 69 +FPQ*L5; 404 +FPQ*L16
768 +FPQ*L25; 147 +FPQ*-OHD; 13 +FPQ*TY_R_; 98 -PQR*L1
691 -PQR*L4; 601 -PQR*L7; 8 -PQR*L18; 109 -PQR*L29
236 -PQR*-OHD; 404 -PQR*RX_P; 31 +CYZ*L1; 6 +CYZ*L23
31 +CYZ*-OHD; 6 -OYQ; 24 -OYQ*RX_P; 35 -OZR*L2
164 -OZR*L5; 3 -YZP*L1; 3 -YZP*-OHD; 24 -YZP*+OCF
20 -YZQ*L1; 24 -YZQ*L3; 3 -YZQ*L4; 20 -YZQ*-OHD
6 -CYQ*L15; 24 -CYQ*L17; 3 +DYQ*L5; 25 -DZR*L3
5 -DZR*L22; 1 -DZR*L32; 1182 C_ODP_YQ*L2; 5 C_ODP_YQ*L14
1 C_CZP_Y*L6; 6 C_CZQ_Y*L10; 91 C_FPR_Q*L17; 23 TPX_R_*L0
715 TPX_R_*L2; 15 TPX_R_*L4; 56 TPX_R_*L6; 161 TPX_R_*L15
1 Q_OCDZ_Y*L17; 7 Q_OCPD_YQ*L28; 45 Q_OCQD_Y*L28; 44 Q_HPRF_Q*L17
3 Q_CPDY_Q*L15; 1 Q_CPDY_Q*L18; 64 Q_CPDZ_YQ*L5; 262 Q_CPDZ_YQ*L6
3 Q_CPDZ_YQ*L10; 24 Q_CPDZ_YQ*L21; 74 Q_CPRZ_YQ*L1; 11 Q_CPRZ_YQ*L3
3 Q_CPRZ_YQ*L5; 1 Q_CPRZ_YQ*L33
```

Upper bound: `-5488062129/1000000000`.

### Leaf RRTpmpmmpmmmp

Assumptions: `+FPQ -PQR +CYZ -OYP -OYQ +OYR -OZR -YZP -YZQ +ODY`.

```c1top-geometry
P OHDYZ +ODZ
P OHDZP -OZP
P OHDZQ -OZQ
P OHFYR -OFY
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFYP +DYP
P DOFYQ +DYQ
P DOFYR -DYR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P YODZP +YDZ
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHFQ -PHQ
P POYZR -PYR
P QOYZR -QYR
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
4 L1*L27; 1193 L4*L17; 1709 L7*L27; 2 L0*L17*L33
941 L0*L28*L29; 486 L1*L3*L27; 2668 L1*L6*L6; 166 L1*L6*L17
2508 L1*L6*L25; 86 L1*L7*L27; 915 L1*L13*L27; 122 L1*L17*L27
3935 L1*L21*L27; 494 L2*L2*L33; 1982 L2*L3*L5; 53 L2*L5*L33
508 L2*L17*L19; 5609 L2*L17*RY_Q; 126 L2*L24*L33; 2 L2*L29*L33
2600 L3*L3*L3; 12369 L3*L3*L18; 2142 L3*L4*L17; 4130 L3*L5*L6
770 L3*L5*L15; 4240 L3*L5*L18; 2895 L3*L5*L25; 356 L3*L5*L28
31 L3*L6*L10; 50 L3*L7*L28; 10 L3*L12*L15; 311 L3*L12*L18
20 L3*L15*L27; 2807 L3*L17*L18; 1091 L3*L17*L27; 2579 L3*L18*L21
218 L3*L23*L27; 486 L3*L27*-OHD; 1215 L3*L27*RY_P; 797 L3*L27*RY_Q
502 L4*L5*L6; 238 L4*L5*L31; 8547 L4*L6*L17; 314 L4*L6*L28
590 L4*L8*L17; 13 L4*L10*L17; 98 L4*L12*L28; 381 L4*L15*L17
678 L4*L16*L17; 812 L4*L17*L18; 11024 L4*L17*L21; 5183 L4*L17*L23
232 L4*L17*L25; 1259 L4*L17*L26; 193 L4*L17*-OHD; 3001 L4*L17*TY_R_
68 L4*L25*L28; 4573 L5*L5*L25; 356 L5*L5*L30; 135 L5*L6*L11
162 L5*L6*L13; 1708 L5*L6*L15; 2371 L5*L6*L25; 2258 L5*L6*L31
1314 L5*L7*L27; 74 L5*L8*L33; 171 L5*L9*L15; 13 L5*L9*L18
48 L5*L9*L31; 2673 L5*L18*L25; 824 L5*L21*L27; 1417 L5*L25*L31
355 L5*L29*L33; 46 L5*L31*L33; 3058 L6*L6*L19; 469 L6*L6*L32
2668 L6*L7*L27; 28 L6*L8*L33; 77 L6*L10*L15; 135 L6*L10*L28
196 L6*L11*L17; 125 L6*L14*L17; 1568 L6*L17*RY_P; 1665 L6*L18*L29
352 L6*L18*L31; 48 L6*L19*L33; 206 L6*L29*L33; 2319 L7*L12*L28
118 L7*L13*L27; 1 L7*L15*L28; 146 L7*L17*L28; 375 L7*L18*L28
728 L7*L19*L27; 11687 L7*L21*L27; 318 L7*L25*L28; 110 L8*L17*L27
197 L8*L19*L27; 76 L8*L27*L32; 54 L8*L27*RY_P; 2 L9*L12*L15
12 L9*L12*L18; 14 L9*L12*L28; 5 L9*L15*L15; 5 L9*L15*L18
2 L9*L15*L28; 369 L9*L16*L27; 472 L9*L17*L18; 100 L9*L17*L33
2 L9*L18*L28; 100 L9*L18*L31; 56 L9*L27*RX_P; 5 L10*L14*L17
472 L10*L16*L17; 274 L10*L16*L27; 535 L10*L17*L24; 74 L10*L17*L33
74 L10*L18*L31; 65 L10*L27*L31; 2 L11*L12*L12; 5 L11*L12*L15
12 L11*L12*L17; 161 L11*L12*L28; 81 L11*L15*L29; 2 L11*L17*L28
107 L11*L27*RX_Q; 12 L12*L14*L17; 5 L12*L15*L18; 294 L12*L16*L28
472 L12*L17*L18; 1177 L12*L18*L25; 379 L12*L18*L28; 174 L12*L25*L28
12 L12*L26*L28; 131 L13*L16*L27; 56 L13*L27*L29; 989 L13*L27*-OHD
5 L14*L15*L17; 2 L14*L17*L28; 85 L14*L27*L29; 472 L15*L16*L17
1046 L15*L17*L24; 1102 L15*L28*L29; 3470 L16*L17*L27; 222 L16*L17*L33
162 L16*L17*RY_Q; 61 L16*L18*L27; 3060 L16*L27*L29; 222 L17*L18*L30
573 L17*L18*L33; 162 L17*L18*RX_Q; 3829 L17*L18*TX_R_; 516 L17*L19*L27
1353 L17*L24*L33; 1765 L17*L27*L31; 224 L17*L28*L29; 46 L17*L33*L33
419 L17*L33*TX_R_; 573 L18*L18*L31; 187 L18*L24*L31; 2 L18*L28*L31
95 L18*L28*TX_R_; 46 L18*L31*L33; 4057 L21*L27*-OHD; 1616 L21*L27*RX_P
2 L24*L28*L33; 148 L27*L29*L32; 38 L27*RX_P*RY_P; 161 L28*L28*L29
2 L28*L29*L33; 12 L28*L33*TX_R_; 34 L29*L33*L33; 507 -OHF*L5
14 -OHF*L8; 24 -OHF*L10; 2284 -OHF*L12; 20925 -DPQ*L6
22 -DPQ*L12; 4326 -DPQ*L18; 5193 -DPQ*L27; 14 -DPQ*L28
1111 -DPR*L31; 4460 -DQR*L3; 1934 -DQR*L5; 1046 -DQR*L8
252 -DQR*L11; 131 -DQR*L12; 411 -DQR*L14; 5613 -DQR*L19
725 -DQR*L32; 49 +OCY*L17; 50 +HCZ*L6; 224 +HCZ*L17
1102 +HCZ*L28; 1589 -HFZ; 14 -HFZ*L9; 159 -HFZ*L11
70 -HFZ*L16; 377 -HFZ*L18; 159 -HFZ*L25; 692 -HFZ*L26
1102 -HFZ*-OHD; 1004 -HFZ*TY_R_; 19 +DFZ*L3; 14 +DFZ*L9
71 +DFZ*L18; 1929 +OCP*L1; 1543 +OCP*L7; 91 +OCP*L8
575 +OCP*L11; 411 +OCP*L12; 381 +OCP*L14; 17676 +OCP*L17
1469 +OCP*L19; 6657 +OCP*L21; 389 +OCP*L23; 5 +OCP*L25
1734 +OCP*-OHD; 13360 +OCP*RX_P; 1299 +OCP*TY_R_; 1948 -CDQ*L1
1560 -CDQ*L5; 604 -CDQ*L6; 109 -CDQ*L8; 590 -CDQ*L10
109 -CDQ*L13; 750 -CDQ*L15; 1021 -CDQ*L17; 2424 -CDQ*L18
2633 -CDQ*L23; 2748 -CDQ*L24; 1962 -CDQ*-OHD; 4460 -CDQ*+OCF
2345 -CDQ*TY_R_; 2668 -HFR*L6; 15 -HFR*L13; 1610 -HFR*L15
8021 -DFR*L17; 165 +OYZ*L6; 3900 +FPQ*L1; 6072 +FPQ*L6
252 +FPQ*L9; 8173 +FPQ*L17; 2793 +FPQ*L23; 11687 +FPQ*L25
4020 +FPQ*-OHD; 1234 +FPQ*RX_P; 1123 +FPQ*RY_P; 1330 +FPQ*TY_R_
1463 -PQR*L1; 3440 -PQR*L4; 11687 -PQR*L7; 1046 -PQR*L9
940 -PQR*L10; 131 -PQR*L13; 276 -PQR*L15; 4778 -PQR*L17
539 -PQR*L18; 1585 -PQR*-OHD; 2844 -PQR*+OCF; 6523 -PQR*RY_Q
238 +CYZ*L1; 31 +CYZ*L6; 10 +CYZ*L12; 148 +CYZ*L16
346 +CYZ*L18; 109 +CYZ*L21; 56 +CYZ*L24; 238 +CYZ*-OHD
590 +CYZ*RY_Q; 56 +OYR*L2; 1059 +OYR*L13; 93 +OYR*L14
707 +OYR*L19; 111 +OYR*L32; 75 -YZP*L2; 196 -YZP*L6
12 -YZP*L12; 5 -YZP*L15; 497 -YZP*L17; 276 -YZP*L23
1046 -YZP*L25; 2 -YZP*L28; 12 -YZP*L31; 381 -YZP*TY_R_
380 -YZQ*L1; 338 -YZQ*L4; 511 -YZQ*L16; 276 -YZQ*L18
380 -YZQ*-OHD; 109 -YZQ*RX_P; 233 +ODY*L1; 95 +ODY*L5
153 +ODY*L6; 1076 +ODY*L13; 18 +ODY*L16; 132 +ODY*L19
711 +ODY*L20; 56 +ODY*L24; 111 +ODY*L32; 232 +ODY*-OHD
14 +ODY*RX_Q; 51 +ODY*TY_R_; 237 -CYP*L27; 105 -CZP*L27
43 -DYR*L12; 288 -DYR*L15; 162 -DYR*L18; 135 +DZQ*L27
90 -DZR*L3; 298 -DZR*L7; 1109 -DZR*L9; 300 -DZR*L10
20 -DZR*L32; 306 +FZR*L18; 1610 +FZR*L28; 35 -YZR*L33
511 +YQR*L17; 2182 C_ODZ_Y*L6; 244 C_ODR_Y*L6; 189 C_CDP_Q*L28
1968 TPX_R_*L6; 606 Q_ORFH_Z*L17; 511 Q_OCQZ_Y*L17; 146 Q_ODRZ_Y*L2
1150 Q_ODRZ_Y*L5; 139 Q_ODRZ_Y*L6; 8 Q_ODRZ_Y*L8; 10 Q_CPDZ_YQ*L8
272 Q_CPDZ_YQ*L17; 226 Q_CQDZ_Y*L5; 18 Q_CQDZ_Y*L33; 472 Q_CPRZ_YQ*L5
81 Q_CPRZ_YQ*L10
```

Upper bound: `-6259973283/500000000`.

### Leaf RRTpmpmmpmmp

Assumptions: `+FPQ -PQR +CYZ -OYP -OYQ +OYR -OZR -YZP +YZQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P YOZPQ -YPQ
P YCDZP +YDZ
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P ZOYPQ -ZPQ
P POHFQ -PHQ
P POHYQ -PHY
P POHZQ -PHZ
P POFYQ -PFY
P POFZQ -PFZ
P POYZR -PYR
P QOHYP -QHY
P QOHZP -QHZ
P QOFYP -QFY
P QOFZP -QFZ
```

```c1top-bounds
```

Exclusion: `area_cap DFP YZQ 1703963/2453125 823/1000`.

### Leaf RRTpmpmmpmpm

Assumptions: `+FPQ -PQR +CYZ -OYP -OYQ +OYR -OZR +YZP -YZQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P YOZPQ +YPQ
P YCDZQ +YDZ
P ZOCDR +ZCR
P ZODYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P ZOYPQ +ZPQ
P POHFQ -PHQ
P POYQR -PYR
P QOYZR -QYR
```

```c1top-bounds
```

Exclusion: `area_cap DZP YQ 106878083/157000000 347/500`.

### Leaf RRTpmpmmpmpp

Assumptions: `+FPQ -PQR +CYZ -OYP -OYQ +OYR -OZR +YZP +YZQ`.

```c1top-geometry
P OHDZR +ODZ
P OHFYR -OFY
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHFR -YHR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHFQ -PHQ
P RODYZ -RYZ
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
12 L7*L27; 666 L16*L27; 896 L0*L12*L17; 1538 L0*L12*L29
58 L0*L12*L31; 3 L0*L17*L18; 178 L0*L28*L29; 678 L1*L3*L27
420 L1*L4*L17; 1197 L1*L6*L6; 537 L1*L7*L27; 14 L1*L13*L27
628 L1*L21*L27; 145 L1*L27*L31; 62 L2*L3*L28; 38 L2*L5*L28
71 L2*L5*L31; 27 L2*L5*L33; 51 L2*L7*L28; 658 L2*L12*L28
28 L2*L15*L31; 172 L2*L16*L28; 43 L2*L29*L33; 6 L2*L33*L33
277 L3*L3*L14; 925 L3*L3*L18; 23 L3*L3*L32; 355 L3*L5*L6
430 L3*L5*L12; 74 L3*L5*L15; 935 L3*L5*L18; 490 L3*L5*L25
66 L3*L5*L32; 992 L3*L13*L18; 117 L3*L15*L17; 169 L3*L15*L18
1635 L3*L17*L18; 1466 L3*L18*L21; 140 L3*L18*L28; 2843 L3*L18*TX_R_
1583 L3*L27*-OHD; 395 L4*L5*L6; 4021 L4*L6*L17; 117 L4*L12*L28
14 L4*L17*L17; 327 L4*L17*L18; 1329 L4*L17*L21; 2375 L4*L17*L25
7 L4*L17*L31; 231 L4*L17*L33; 5 L4*L28*L31; 1912 L5*L5*L16
1318 L5*L5*L25; 3 L5*L5*L29; 265 L5*L5*L30; 294 L5*L6*L15
1367 L5*L6*L25; 532 L5*L6*L31; 77 L5*L7*L27; 669 L5*L12*L25
1085 L5*L13*L18; 1505 L5*L13*L27; 1568 L5*L14*L25; 1475 L5*L15*L21
447 L5*L16*L25; 499 L5*L16*L28; 1087 L5*L18*L25; 197 L5*L18*L30
458 L5*L25*L31; 40 L5*L29*L33; 8 L5*L30*TY_R_; 18 L5*L31*L33
1089 L6*L7*L27; 325 L6*L12*TY_R_; 681 L6*L13*L18; 773 L6*L14*L25
30 L6*L15*L18; 711 L6*L16*L28; 1610 L6*L18*L29; 116 L6*L25*L32
23 L6*L27*L29; 11 L6*L27*L33; 1138 L7*L12*L27; 1761 L7*L16*L27
182 L7*L17*L18; 962 L7*L17*L28; 120 L7*L19*L27; 2829 L7*L21*L27
85 L7*L28*L29; 64 L12*L16*L27; 90 L12*L17*L28; 18 L12*L17*L33
181 L12*L19*L33; 546 L12*L24*L28; 86 L12*L24*L33; 86 L12*L27*L31
552 L12*L28*TX_R_; 45 L12*L29*L33; 6 L12*L32*L33; 35 L12*L33*RY_P
36 L13*L17*L18; 600 L13*L18*L25; 182 L13*L19*L27; 580 L13*L27*+OCF
25 L14*L18*L25; 508 L14*L27*L29; 6 L14*L31*L33; 22 L15*L17*L19
162 L15*L17*L21; 1937 L15*L17*L23; 536 L15*L17*L25; 56 L15*L17*TY_R_
151 L15*L27*RX_P; 256 L15*L28*L29; 78 L15*L29*L33; 2404 L16*L17*L27
29 L16*L19*L27; 311 L16*L23*L27; 489 L16*L25*L28; 856 L16*L27*+OCF
6 L16*L27*RY_P; 1 L16*L28*L33; 211 L17*L18*L33; 2560 L17*L18*TX_R_
210 L17*L24*L33; 666 L17*L27*L31; 69 L17*L29*L33; 27 L17*L29*TY_R_
18 L17*L33*L33; 428 L17*L33*TX_R_; 427 L18*L18*L25; 211 L18*L18*L31
736 L18*L21*TX_R_; 51 L18*L24*L31; 214 L18*L25*L32; 11 L18*L28*RX_Q
177 L18*L28*TX_R_; 17 L18*L30*TY_R_; 18 L18*L31*L33; 168 L20*L27*L28
1441 L21*L27*RX_P; 2 L23*L28*L29; 423 L25*L28*L29; 5 L25*L28*L31
5 L27*L29*L32; 268 L27*L31*-OHD; 1456 L27*RX_P*RY_Q; 37 L28*L29*L33
78 L28*L29*-OHD; 160 L28*L29*RX_Q; 254 L28*L29*RY_Q; 3 L28*L33*+OCF
34 L28*L33*TX_R_; 17 L29*L29*L33; 12 L29*L33*L33; 4188 -DPQ*L6
234 -DPQ*L17; 1668 -DPQ*L18; 1672 -DPQ*L25; 552 -DPQ*L27
814 -DPR*L6; 64 -DPR*L28; 117 -DPR*L31; 1225 -DQR*L3
727 -DQR*L5; 1705 -DQR*L14; 275 -DQR*L32; 30 +HCZ*L0
2090 +HCZ*L6; 110 +HCZ*L16; 223 +HCZ*L23; 409 +HCZ*L25
659 +HCZ*L26; 227 +HCZ*L28; 62 +HCZ*RX_P; 160 +HCZ*RX_Q
358 +HCZ*RY_Q; 575 -HFZ; 779 -HFZ*L17; 333 -HFZ*L23
689 -HFZ*L24; 683 -HFZ*L26; 40 -HFZ*L31; 256 -HFZ*-OHD
2009 -HFZ*+OCF; 249 -HFZ*RY_Q; 657 +OCP*L3; 1584 +OCP*L7
1083 +OCP*L13; 35 +OCP*L15; 1839 +OCP*L17; 33 +OCP*L19
1673 +OCP*L21; 1759 +OCP*L23; 69 +OCP*-OHD; 342 +OCP*RX_P
534 +OCP*RY_P; 2292 +OCP*TX_R_; 76 +OCP*TY_R_; 1252 -CDQ*L5
19 -CDQ*L15; 411 -CDQ*L17; 2418 -CDQ*L18; 656 -CDQ*L24
41 -CDQ*L28; 335 -CDQ*L29; 166 -CDQ*L33; 785 -CDQ*TX_R_
1505 -CDQ*TY_R_; 1112 -HFR*L6; 38 -HFR*L15; 489 -HFR*L17
5 -HFR*L30; 137 -DFR*L15; 701 -DFR*L17; 108 -DFR*L28
2236 +FPQ*L1; 1576 +FPQ*L6; 772 +FPQ*L12; 127 +FPQ*L15
4159 +FPQ*L17; 554 +FPQ*L19; 1000 +FPQ*L23; 3918 +FPQ*L25
2557 +FPQ*-OHD; 423 +FPQ*RX_P; 154 +FPQ*TY_R_; 1276 -PQR*L1
216 -PQR*L3; 1421 -PQR*L4; 2871 -PQR*L7; 772 -PQR*L12
2165 -PQR*L15; 3502 -PQR*L17; 1585 -PQR*-OHD; 2473 -PQR*RY_Q
1100 -OZR*L6; 1498 +DZP*L27; 698 +FZR*L17; 38 +FZR*L28
1 +FZR*L33; 477 +HPQ*L6; 7 TPX_R_*L15; 460 Q_DRZP_Y*L27
463 Q_DRZQ_Y; 363 Q_DRZQ_Y*L6; 162 Q_DRZQ_Y*L17; 1518 Q_DRZQ_Y*L19
50 Q_DRZQ_Y*L32; 409 Q_DRZQ_Y*+OCF; 520 Q_DRZQ_Y*RY_P; 460 Q_DRZQ_Y*TY_R_
```

Upper bound: `-6749219079/1000000000`.

### Leaf RRTpmpmmpp

Assumptions: `+FPQ -PQR +CYZ -OYP -OYQ +OYR +OZR`.

```c1top-geometry
P OHFYR -OFY
P OHFZR -OFZ
P OHYZP -OZP
P OHYZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFR -YHR
P ZOHFR -ZHR
P POHFQ -PHQ
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
1 L25*L27; 4 L1*L3*L18; 3 L1*L5*L18; 4 L1*L18*TY_R_
37 L1*L21*L27; 1 L1*L27*L32; 2 L2*L24*L33; 2 L3*L5*L7
4 L3*L5*L16; 4 L3*L5*L20; 9 L3*L5*TX_R_; 1 L3*L7*L18
4 L3*L16*L27; 4 L3*L17*L22; 5 L3*L18*-OHD; 75 L3*L18*TX_R_
11 L4*L17*L20; 11 L4*L17*L22; 5 L4*L17*L26; 3 L4*L17*TY_R_
3 L5*L6*+OCF; 13 L5*L16*L25; 9 L5*L16*TY_R_; 9 L5*L18*L25
3 L5*L18*-OHD; 6 L5*L18*RX_Q; 1 L5*L21*L27; 1 L5*L25*L31
1 L5*L25*L32; 7 L5*L25*TY_R_; 4 L5*L27*RX_P; 3 L6*+OCF*TY_R_
1 L6*RY_Q*TY_R_; 8 L16*L17*L23; 6 L16*L21*L27; 1 L17*L17*L22
8 L17*L18*L20; 18 L17*L23*TX_R_; 8 L17*L24*RY_P; 1 L17*L26*TX_R_
9 L17*RY_P*TX_R_; 6 L17*TX_R_*TY_R_; 26 L18*L21*TX_R_; 5 L18*L25*RX_Q
4 L18*-OHD*TY_R_; 2 L21*L24*L27; 38 L21*L27*-OHD; 12 L21*L27*RX_P
4 L21*L27*TX_R_; 1 L24*L24*L33; 1 L27*L32*-OHD; 1 -OHF*L7
7 -DQR*L3; 10 +OCP*L7; 2 +OCP*L19; 4 +OCP*L21
6 +OCP*RY_P; 61 +OCP*TX_R_; 8 +OCP*TY_R_; 8 -CDQ*L24
19 -CDQ*TX_R_; 1 -HFR*L6; 6 -DFR*L17; 22 -DFR*L20
1 -DFR*L24; 1 -DFR*RY_Q; 5 +ODR*L27; 1 +HDR*L6
46 +FPQ*L1; 26 +FPQ*L25; 46 +FPQ*-OHD; 9 +FPQ*RX_P
68 -PQR*L1; 5 -PQR*L3; 24 -PQR*L4; 18 -PQR*L7
17 -PQR*L16; 68 -PQR*-OHD; 8 -PQR*TX_R_; 3 Q_OPDR_YZQ*L3
11 Q_OPDR_YZQ*L27; 4 Q_OPDR_YZQ*L32; 11 Q_OQDR_YZ*L16; 7 Q_OQDR_YZ*L26
3 Q_OQDR_YZ*+OCF; 17 Q_OQDR_YZ*RY_P; 4 Q_OQDR_YZ*TX_R_; 16 Q_OQDR_YZ*TY_R_
4 Q_CPDR_Q*L5; 4 Q_CPDR_Q*L6; 8 Q_CPDR_Q*L18
```

Upper bound: `-20582991543/91000000000`.

### Leaf RRTpmpmp

Assumptions: `+FPQ -PQR +CYZ -OYP +OYQ`.

```c1top-geometry
P OHDYQ -ODY
P OHDYR +OYR
P OHFYQ -OFY
P OHYZP -OZP
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCQ -YHQ
P YOHFR -YHR
P YOCDZ +YDZ
P YOCZQ -YZQ
P YOCPQ +YPQ
P YODFQ -YFQ
P YODQR +YQR
P POHFQ -PHQ
P POYQR -PYR
C OCD Y Z -DOZ 140829/250000
C OCQ Y Z -QOZ 49035967/125250000
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCQ Y 1 lower 139779/312331
T OCQ Y 11 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 309190727/468496500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 447/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 659/1000 459/500
m 111/250 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
1 L2*L2*L23; 2 L2*L17*L23; 2 L2*L19*L33; 11 L3*L4*L22
6 L3*L4*L27; 12 L3*L5*L16; 1 L3*L16*L18; 2 L3*L18*DROP_OCQ_Y
2 L3*L18*RX_Q; 6 L3*L22*L25; 4 L3*L22*DROP_OCQ_Y; 2 L3*L27*RY_Q
1 L4*L4*L17; 6 L4*L5*L6; 15 L4*L17*+OCF; 13 L4*L17*RY_Q
2 L4*L21*L22; 4 L4*L21*L27; 10 L4*L27*RX_P; 4 L5*L6*DROP_OCQ_Y
15 L5*L16*TY_R_; 1 L5*L20*L25; 2 L5*L25*DROP_OCQ_Y; 3 L5*+OCF*TY_R_
4 L5*RX_P*TY_R_; 5 L6*+OCF*TY_R_; 1 L16*L24*L27; 1 L16*L25*TY_R_
1 L17*L21*DROP_OCQ_Y; 3 L17*L22*L25; 2 L17*L22*DROP_OCQ_Y; 1 L18*L20*L21
13 L18*L21*L26; 2 L19*L21*L27; 3 L21*L27*TX_R_; 11 L22*L22*L25
1 L22*L25*RX_Q; 1 L22*L30*TY_R_; 5 L23*L27*RX_P; 6 -DPR*L5
15 -DQR*L19; 13 -DQR*DROP_OCQ_Y; 2 -DQR*TX_R_; 7 -CDQ
8 -CDQ*L19; 20 -CDQ*L26; 1 -CDQ*L29; 1 -CDQ*RX_Q
1 -CDQ*TX_R_; 1 -DFR*L18; 6 -DFR*+OCF; 4 -PQR*L4
1 -PQR*L16; 1 -PQR*L20; 18 -PQR*DROP_OCQ_Y; 20 -PQR*RY_Q
2 -PQR*TX_R_; 1 C_OCQ_Y*L21; 2 C_OCQ_Y*L23; 1 C_OCQ_Y*L29
13 C_OCQ_Y*RY_P; 1 C_OCQ_Y*TY_R_; 3 C_ODP_YQ*L2; 1 C_CPR_Q*L6
7 TPX_R_*L4; 3 TPX_R_*RX_Q; 3 Q_OCPQ_Y*L1; 3 Q_OCPQ_Y*L3
3 Q_OCPQ_Y*L25; 1 Q_OCPQ_Y*L29; 3 Q_OCPQ_Y*-OHD; 1 Q_OCPQ_Y*RX_P
8 Q_CPDR_Q*L22
```

Upper bound: `-18825789/500000000`.

### Leaf RRTpmpp

Assumptions: `+FPQ -PQR +CYZ +OYP`.

```c1top-geometry
P OHDYP -ODY
P OHDYR +OYR
P OHFYP -OFY
P OHYPQ +OYQ
P HODPR +HPR
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCY +DHY
P DOCYP +DYP
P DOCYQ +DYQ
P DOCYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODYR +FYR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHCP -YHP
P YOHCQ -YHQ
P YOHFR -YHR
P YOCDZ +YDZ
P YOCZP -YZP
P YOCZQ -YZQ
P YODFP -YFP
P YODFQ -YFQ
P YODPR +YPR
P YODQR +YQR
P POHFQ -PHQ
P POCYQ -PYQ
C OCD Y Z -DOZ 140829/250000
C OCP Y Z -POZ 14757843/41750000
C OCQ Y Z -QOZ 49035967/125250000
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCP Y 1 lower 15531/31333
T OCP Y 9 lower 279/628
T OCQ Y 11 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 32274961/46999500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 99/200 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 111/250 563/1000
l 343/500 459/500
m 111/250 78/125
r 663/1000 1
t 939/1000 1
```

```c1top-sum
3 L2*L4*L19; 1 L3*L16*L18; 1 L3*L18*L19; 1 L3*L18*RX_P
1 -DPQ*DROP_OCP_Y; 1 C_OCP_Y*L4; 1 C_OCP_Y*RX_P; 1 C_CDP_Q*+OCF
1 C_CDP_Q*RX_P; 1 C_CDP_Q*RY_P
```

Upper bound: `-28199133/500000000`.

### Leaf RRTpp

Assumptions: `+FPQ +PQR`.

```c1top-geometry
C DPR Q H +PRH 311605061/667250000
C DPR Q C +PRC 311605061/667250000
C DPR Q F +PRF 311605061/667250000
P HODQR +HQR
P CODYP -CYP
P CODYQ -CYQ
P CODZP -CZP
P CODZQ -CZQ
P CODQR +CQR
P DCFYP +DYP
P DCFYQ +DYQ
P DCFYR -DYR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODQR +FQR
P FHDYR +FYR
P FHDZR +FZR
P POHFQ -PHQ
C DPR Q Y +PRY 311605061/667250000
C DPR Q Z +PRZ 311605061/667250000
P PCYQR -PYQ
P PCZQR -PZQ
P RDYPQ +RYQ
P RDZPQ +RZQ
```

```c1top-bounds
T OCP - 1 lower 5177/31333
B x Q 10 lower 70939883/140998500
```

```c1top-box
h 347/500 1
c 33/200 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 907/1000
v 37/250 907/1000
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 563/1000
l 503/1000 459/500
m 187/1000 78/125
r 99/250 1
t 199/250 1
```

```c1top-sum
2 L2*L33; 40 L4*L28; 3 L0*L1*L6; 13 L0*L1*L28
1 L0*L4*L17; 17 L1*L3*L18; 2 L1*L5*L31; 1 L1*L6*L16
3 L1*L17*L33; 33 L1*L18*L21; 4 L1*L27*+OCF; 3 L1*L31*TY_R_
2 L2*L4*L17; 62 L3*L5*L25; 1 L3*L5*L29; 16 L3*L5*TY_R_
46 L3*L7*L18; 1 L3*L16*L18; 146 L3*L18*L25; 18 L3*L18*-OHD
228 L4*L4*L17; 166 L4*L5*L6; 179 L4*L17*L27; 3 L4*L24*L27
1 L4*L25*L33; 47 L5*L5*L16; 101 L5*L5*L25; 6 L5*L6*+OCF
4 L5*L16*L18; 191 L5*L16*TY_R_; 8 L5*L17*L33; 3 L5*L18*L24
1 L5*L18*RX_P; 8 L5*L25*TY_R_; 1 L5*L26*L31; 3 L5*L27*L29
2 L5*L31*-OHD; 1 L5*L31*TX_R_; 8 L5*L31*TY_R_; 18 L6*L16*TY_R_
44 L6*L22*TY_R_; 1 L6*L32*TY_R_; 2 L7*L17*L33; 2 L7*L18*L31
4 L7*L31*TY_R_; 2 L7*L33*+OCF; 3 L16*L17*TY_R_; 2 L16*L18*TY_R_
1 L17*L18*L33; 4 L17*L25*L33; 9 L17*L26*L33; 2 L17*L27*+OCF
2 L17*L31*TY_R_; 3 L17*L33*-OHD; 1 L18*L18*L31; 15 L18*L21*L25
33 L18*L21*-OHD; 49 L18*L21*TY_R_; 4 L18*L31*TY_R_; 3 L20*L25*L33
3 L20*L31*TY_R_; 4 L25*L33*+OCF; 4 L27*-OHD*+OCF; 1 L27*+OCF*+OCF
13 L28*-OHD*-OHD; 1 L29*L31*TY_R_; 3 L31*-OHD*TY_R_; 57 -OHF*L1
8 -OHF*-OHD; 51 -OHF*TY_R_; 160 -DPQ; 62 -DPQ*L7
33 -DPQ*L20; 23 -DPQ*L26; 3 -DPQ*RX_Q; 72 -DPQ*TY_R_
10 +OCP*L1; 38 +OCP*L7; 2 +OCP*L16; 1 +OCP*L21
137 +OCP*L25; 5 +OCP*L27; 11 +OCP*-OHD; 7 +OCP*RY_P
23 -CDQ*L1; 14 -CDQ*L7; 34 -CDQ*L25; 23 -CDQ*-OHD
51 -HFR*-OHD; 46 -DFR*L16; 50 -DFR*L22; 9 -DFR*RX_P
1 -DFR*RY_P; 5 +ODR*L33; 40 +FPQ*L24; 101 +PQR*L1
40 +PQR*L7; 31 +PQR*L20; 101 +PQR*-OHD; 2 +PQR*RX_P
12 +PQR*RY_P; 11 C_DPR_Q*L17; 1 C_DPR_Q*L33; 33 TPX_R_*L1
163 TPX_R_*L4; 2 TPX_R_*L16; 5 TPX_R_*L26; 85 TPX_R_*-OHD
1 Q_OPDH_Q*L28; 3 Q_CPDR_Q*L18
```

Upper bound: `-3133020627/1000000000`.
