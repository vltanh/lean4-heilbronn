# One lower point, one central point, a side pair, and a top point

Let \(s=93/1000\). Use the actual C1 contacts

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad d\le h,\quad f\le c.
\]

Every unsigned actual doubled triangle area is at least \(s\).
This note excludes the complete exterior count
\((k,j,r,t,l)=(1,1,2,1,0)\), and hence its transpose
\((1,1,0,1,2)\). There is one point \(Y=(u,v)\) inside
\(OHC\), one point \(Z=(z,w)\) inside \(HCDF\), two points
in the right cap \(CD(1,0)\), and one point \(R=(r,t)\) in
the top cap \(DF(1,1)\). Points may lie on square sides. No
additional ordering of the contact coordinates is imposed.

## 1. The side pair and a complete uniform box

The intercept construction in C1_EXTERIOR_REDUCTION.md, Section 2,
labels the right points \(P=(p,q),Q=(l,m)\) so that

\[
 Q\in CDP\cap ODP,\qquad
 -[CDP]\ge3s,\qquad d>\rho:=347/500.
 \tag{1}
\]

This labeling is exhaustive: the four actual points \(C,D,P,Q\)
have triangular outer hull, and its third vertex is \(P\).
The top point and (1) satisfy precisely the hypotheses of
C1_SIDE_PAIR_TOP_BOUNDS.md, Sections 1--4. Put

\[
 a=897/1000,\quad b=157/250,\quad c_0=3s,\quad p_0=851/1000,
 \qquad q_0=s/b,\quad q_1=a-3s/(1-c_0).
\]

The cited analytic bounds give \(d<a\), \(.165<c<b\),
\(p>p_0\), and \(q_0<q<q_1\) once \(c\ge c_0\).
Here the lower point supplies \(hc\ge3s\), so \(c\ge c_0\).
They also give the four affine bounds

\[
\begin{aligned}
 9l&\ge5c+2+2p,&9l&\le2c+2p+5,\\
 9m&\ge2d+2q,&9m&\le5d+2q.
\end{aligned}
 \tag{2}
\]

For clarity, (2) follows from an actual triangle, not a relaxation
of its shape. Its area satisfies \(-[CDP]<(9/2)s\); each of the
three barycentric weights of \(Q\) in \(CDP\) is therefore
greater than \(2/9\). The remaining weights are nonnegative and
sum to \(1/3\). The extrema \(c\le p\le1\) and
\(0\le q\le d\) give (2).

The complete closed initial box is as follows. Closed endpoints are
weaker than the strict analytic inequalities and include all allowed
square-side contacts.

| Coordinate | Lower endpoint | Upper endpoint |
|---|---:|---:|
| \(h\) | \(\rho\) | \(1\) |
| \(c\) | \(c_0\) | \(b\) |
| \(d\) | \(\rho\) | \(a\) |
| \(f\) | \(s\) | \(b\) |
| \(u\) | \(s\) | \(b-2s\) |
| \(v\) | \(s/b\) | \(1-2s/b\) |
| \(z\) | \(s\) | \(1-s\) |
| \(w\) | \(s/b\) | \(1-s\) |
| \(p\) | \(p_0\) | \(1\) |
| \(q\) | \(q_0\) | \(q_1\) |
| \(l\) | \((5c_0+2+2p_0)/9\) | \((2b+7)/9\) |
| \(m\) | \(2(\rho+q_0)/9\) | \((5a+2q_1)/9\) |
| \(r\) | \(s+s/(1-\rho)\) | \(1\) |
| \(t\) | \(\rho+s/(1-s)\) | \(1\) |

The lower-point bounds use only the single lower point:

\[
 hu,cv\ge s,\quad hc-hu-cv\ge s,\quad
 h(c-u)\ge2s,\quad c(h-v)\ge2s,\quad u+v\le1-s.
 \tag{3}
\]

For the sum bound, write \(Y=\alpha O+\beta H+\gamma C\).
Then \(1-u-v\ge hc\alpha=A(HCY)\ge s\).
The central bounds follow from the actual \(OH,OC\) clearances
and the weighted central-edge identities in
C1_TWO_LOWER_TOP_GEOMETRY.md, Section 1; those identities concern
one central point and require no lower pair. The top bounds are
the inequalities \(r\ge f+s/(1-d)\) and
\(t\ge d+s/(1-f)\), with \(d\ge\rho,f\ge s\).

## 2. All initial signs and the single exhaustive root

The proof has one root, named `RRT`: \(P,Q\) are the two right
points in the forced labeling (1), and \(R\) is the top point.
The central point is always \(Z\). No angular comparison between
\(Y,Z\) and the cap points is assumed. The initial common signs are

```text
-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF
+OPQ +OPR +OQR -DPQ +CPQ -DPR -DQR
```

The first line consists of the contact orientations. The signs
\(OPQ>0,DPQ<0,CPQ>0\) follow from (1). Both right points lie
below \(OD\), while \(R\) lies above it, giving \(OPR,OQR>0\).
For a right point \(V=(x,y)\),

\[
 -[DVR]=(1-x)(t-d)+(d-y)(1-r)\ge0.
\]

The cap and square inequalities make both summands nonnegative;
the actual positive triangle threshold makes their sum strictly
positive. This proves \(DPR,DQR<0\), including side contacts.

The full region-edge signs are

| Region / points | OH | OC | HC | HF | CD | DF | OD | OF | HD | CF |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Lower / Y | − | + | − | − | + | + | free | free | − | + |
| Central / Z | − | + | + | − | + | + | free | free | free | free |
| Right / P,Q | − | + | + | − | − | + | − | − | − | − |
| Top / R | − | + | + | − | + | − | + | − | + | − |

These are the oriented edge tests for \(OHC\), \(HCDF\), and
the caps. The remaining fixed cross signs are

\[
 [HYV]>0,\ [CYV]<0\quad(V=Z,P,Q,R),
 \qquad [DYP],[DYQ],[FYP],[FYQ],[FYR]>0,\quad [DYR]<0.
\]

For each displayed sign, evaluate the affine determinant in \(Y\)
at \(O,H,C\). The table gives the required weak sign at all three
vertices and a strict sign at a vertex with positive barycentric
weight. This proves every cross sign without another case assumption.

## 3. Finite geometry and interval refinements

Use the exact rules `P`, `M`, `V`, `C`, triangle costs
\(s,3s,.694,.823\), quadrilateral costs, and static monotonicity
certificates in C1_TWO_LOWER_TOP_GEOMETRY.md, Sections 3--5.
These rules concern actual triangles or quadrilaterals in the unit
square, so they apply to the present placements. This proof uses its
own initial box and signs from Sections 1--2, and none of that note's
extra two-lower fan assumptions.

The static table `c1top-upper` supplies thirteen explicit signed
triangle bounds. In a row, each token such as `h+` or `c-` replaces
one coordinate by the indicated initial-box endpoint. Its partial
derivative has the appropriate sign throughout the remaining box;
substitution yields the printed rational bound. These are finite
monotonicity calculations. Every `C` inference cites one of these
bounds and all known occupants and edge signs.

The conditional interval rules `T`, `S`, `X`, `Y`, `O` have the
meanings in Section 4 of the common note. The sole top point is
\(R\); a top-triangle cost is justified by its displayed actual
occupants. There are two additional coordinate rules:

* `B x Q` or `B y Q` substitutes the current contact and outer-point
  endpoints in (2), giving the indicated lower or upper endpoint of
  \(l\) or \(m\).
* `N x Y` gives \(u\le c_{\max}-2s/h_{\max}\), and
  `N y Y` gives \(v\le h_{\max}-2s/c_{\max}\), by (3).

An `E OD I` rule lists three free points below the actual line
\(OD\). Together with \(O,C,D\), these are six points in
the endpoint container \(O,D,(1,0)\) of doubled area \(d\).
Its actual hull is nontriangular: \(O,C,D\) remain extreme and
the actual right point \(P\) is outside \(OCD\). The
nontriangular endpoint-six theorem therefore gives \(d>9s\).
The `E OF I` version uses \(O,H,F,(0,1)\) and the universal
endpoint-six cost \(.823\). Its three ray signs must be known.
The corresponding factors are named `EP6_OD_I`, `EP6_OF_I`.

All interval updates are applied in the printed order, with positive
denominators. Each printed final box is an outward rational rounding
of these proved endpoints. The four geometric leaves are two explicit
clustered triples and two contradictions with the distributed mesh;
their actual containment witnesses appear in full below.

## 4. Complete factor definitions

For the printed box in the coordinate order

```text
h c d f u v z w p q l m r t
```

let \(L_{2i}=a_i-\ell_i\), \(L_{2i+1}=u_i-a_i\) for
\(0\le i<14\). The seven further affine factors, in order
\(L_{28},\ldots,L_{34}\), are

\[
\begin{gathered}
 h-d,\quad c-f,\quad 9l-5c-2-2p,\quad 2c+2p+5-9l,\\
 9m-2d-2q,\quad 5d+2q-9m,\quad 1-s-u-v.
\end{gathered}
\]

The common named factors for this count are exactly

| Name | Definition and premise |
|---|---|
| `KLOW` | \(hc-3s\), since \(Y\in OHC\) |
| `PAIRSUP` | \(dc(1-c)-s(1+2c)\), from the side-pair bound |
| `TOPCOUNT` | \((1-d)(1-f)-s\), since the top cap contains \(R\) |
| `QCENT` | \(1-(h-d)(c-f)-.449\), since \(Z\in HCDF\) |

There are no lower-pair factors `FAN`, `CENT` or `QUADV` in this
proof. A signed token `+ABC` or `-ABC` is the indicated actual
signed determinant minus \(s\). The factors `C_`, `Q_`, `DROP_`,
`SP_`, `M_`, `TX_`, `TY_`, `TPX_`, `TPY_` retain their definitions
and actual geometric premises from Section 5 of the common note.
For \(V=P,Q\),

\[
 \texttt{RX\_V}=x_V-c-s,\qquad
 \texttt{RY\_V}=d-y_V-s.
\]

These follow from \(-[CDV]\ge s\) by dropping nonnegative
terms and coefficients at most one. All containment, convexity,
diagonal separation and mesh premises are proved by the initial
signs and the printed trace before a factor is used.

## 5. Exact contradiction and complete coverage

Every cubic leaf prints a positive-integer sum \(W\) of products
of the nonnegative factors, so \(W\ge0\). After substituting
\(a_i=\ell_i+z_i\), \(0\le z_i\le u_i-\ell_i\), write
\(W=\sum c_\alpha z^\alpha\). Then

\[
 W\le c_0+\sum_{\alpha\ne0,\ c_\alpha>0}
       c_\alpha\prod_i(u_i-\ell_i)^{\alpha_i}.
\]

The displayed upper bound is negative at every leaf. The fixed tree
has 34 binary splits and 35 leaves: 31 cubic contradictions with
7,430 printed positive terms, and the four geometric contradictions.
There are 908 printed geometric deductions and 114 interval updates.
Every split is the sign of an actual nonzero determinant, so its two
children are exhaustive. This closes the whole right-pair count;
transposition closes the left-pair count without any new assumption.

The companion
[check_c1_one_lower_side_pair_top.py](check_c1_one_lower_side_pair_top.py)
reads this manuscript, replays the fixed geometry and intervals,
reconstructs every factor, and expands every displayed identity using
exact rational arithmetic. No numerical feasibility computation is
a premise of the proof.

## 6. Fixed tree and all rational identities

Counts: `31 4 7430 908 114`.

```c1top-upper
RRT CYP -1 34090543187/56598500000 u- v+ c- p+ q+
RRT DPR -1 311605061/667250000 q- r- d+ t+ p-
RRT DYP 1 106644153/157000000 d+ u- v+ p+ q-
RRT OCD 1 140829/250000 c+ d+
RRT OCF 1 157/250 c+
RRT OCP 1 57734709/180250000 c+ q+
RRT OCQ 1 207719321/540750000 c+ m+
RRT OCR 1 157/250 c+ t+
RRT OCZ 1 142399/250000 c+ w+
RRT OFP -1 619351/628000 f- p+ q-
RRT OHF -1 157/250 h+ f+
RRT OHP -1 1 h+ p+
RRT OYP -1 433351/628000 u- v+ p+ q-
```

```c1top-tree
RRT FPQ
RRTm OYP
RRTmm OZP
RRTmmm OYQ
RRTmmmm OZQ
RRTmmmmm OYR
RRTmmmmmm OZR
RRTmmmmmmm HPQ
RRTmmmmmmmm YZP
RRTmmmmmmmmm YZQ
RRTmmmmmmmmmm YZR
RRTmmmmmmmmmmm OFY
RRTmmmmmmmmmmmm OFZ
RRTmmmmmmmmmmmmm OYZ
RRTmmmmmmmmmmmmmm HDZ
RRTmmmmmmmmmmmmmmm HZP
RRTmmmmmmmmmmmmmmmm FZP
RRTmmmmmmmmmmp OFY
RRTmmmmmmp HPQ
RRTmmmmmmpm YZP
RRTmmmmmmpmm YZQ
RRTmmmmmmpmmm ODZ
RRTmmmmmmpmmmp OFY
RRTmmmmmmpmmmpm HDZ
RRTmmmmmmpmmmpmm HZP
RRTmmmmmmpmmmpmmm CZR
RRTmmmmmmpmmmpmmmp DYZ
RRTmmmmmmpmmmpmmmpm FZP
RRTmmmmmmpmmmpmmmpmm YPQ
RRTmmmmmp OZR
RRTmmmmmpm HPQ
RRTmmmmmpmm ODY
RRTmmmmmpp HPQ
RRTp PQR
```

### Leaf RRTmmmmmmmmmmmmmmmmm

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ -YZR -OFY -OFZ -OYZ -HDZ -HZP -FZP`.

```c1top-geometry
C OCF Y Z -CFZ 157/250
P OHDYR +ODY
P OHDZR +ODZ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOZPQ -HZQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P FOZPQ -FZQ
P YODZR +YDZ
P YODPR +YPR
P YODQR +YQR
P ZOHCR +ZCR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
T OHR YZ 12 lower 347/500
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 347/500 1
t 199/250 1
```

```c1top-sum
143 L0*L8*L17; 110 L0*L17*L18; 10 L0*L17*L28; 416 L1*L1*L6
417 L1*L2*L6; 311 L1*L2*TY_R_; 592 L1*L6*L6; 173 L1*L6*L18
885 L1*L6*L25; 460 L1*L6*L26; 58 L1*L6*L32; 64 L1*L8*L18
416 L1*L8*L28; 42 L1*L12*L15; 7 L1*L25*L28; 36 L2*L2*L5
41 L2*L2*L32; 372 L2*L4*TY_R_; 95 L2*L5*L10; 181 L2*L5*L22
195 L2*L5*L25; 390 L2*L6*L19; 112 L2*L8*L28; 417 L2*L10*L15
7 L2*L10*L28; 277 L2*L10*TY_R_; 177 L2*L15*L17; 243 L2*L16*TY_R_
94 L2*L17*L32; 1 L2*L30*L32; 243 L3*L3*L18; 216 L3*L5*L18
434 L3*L5*L27; 112 L3*L8*TY_R_; 403 L3*L11*L18; 219 L3*L12*L28
210 L3*L15*L18; 185 L3*L15*L28; 262 L3*L17*L18; 427 L3*L18*L18
1508 L3*L18*L27; 11 L3*L18*L30; 2708 L3*L18*TY_R_; 199 L3*L27*L27
274 L3*L27*L28; 44 L3*L27*L32; 406 L4*L4*L17; 72 L4*L5*L6
529 L4*L6*L17; 375 L4*L8*L17; 660 L4*L8*TY_R_; 592 L4*L12*L17
26 L4*L12*TY_R_; 158 L4*L14*L17; 169 L4*L17*L17; 505 L4*L17*L18
155 L4*L17*L20; 3447 L4*L17*L27; 1193 L5*L5*L25; 24 L5*L5*L30
227 L5*L6*L26; 824 L5*L8*L15; 600 L5*L18*L25; 719 L5*L25*L27
102 L5*L25*L32; 36 L5*L27*L30; 59 L5*L28*L30; 19 L5*RX_Q*RX_Q
460 L6*L6*L19; 83 L6*L10*L13; 41 L6*L10*L21; 571 L6*L10*L28
5 L6*L10*L30; 67 L6*L13*TY_R_; 359 L6*L14*L17; 1048 L6*L14*TY_R_
733 L6*L16*TY_R_; 169 L6*L18*L19; 185 L6*L18*L25; 1345 L6*L19*TY_R_
126 L6*L27*RX_P; 349 L6*L27*TY_R_; 76 L7*L18*L18; 104 L7*L18*L27
117 L8*L8*L27; 120 L8*L14*L17; 400 L8*L15*L18; 368 L8*L17*L27
375 L8*L18*L25; 133 L8*L19*L27; 660 L8*L28*TY_R_; 150 L9*L27*L29
45 L10*L10*L13; 120 L10*L13*L17; 1101 L10*L15*L17; 7 L10*L17*L25
447 L10*L27*L29; 701 L11*L12*L18; 133 L11*L16*TY_R_; 278 L12*L12*L28
75 L12*L12*TY_R_; 24 L12*L14*L17; 436 L12*L15*L16; 131 L12*L17*L18
452 L12*L17*L27; 452 L12*L18*L25; 284 L12*L18*L28; 679 L12*L24*L28
72 L12*L27*L28; 2 L12*L28*L30; 30 L12*L28*L32; 165 L12*L28*L34
75 L13*L13*L27; 131 L14*L17*L17; 80 L14*L17*L18; 165 L15*L16*L18
317 L15*L16*L28; 16 L15*L17*L32; 16 L15*L18*L30; 46 L15*L28*L30
124 L16*L16*TY_R_; 357 L16*L18*TY_R_; 485 L16*L25*TY_R_; 168 L16*L30*TY_R_
2042 L16*TY_R_*TY_R_; 85 L17*L17*L18; 49 L17*L17*L28; 42 L17*L17*L32
1083 L17*L18*L22; 381 L17*L18*RX_Q; 131 L17*L18*TX_R_; 846 L17*L22*L27
343 L17*L22*L28; 485 L17*L24*L27; 171 L17*L24*L32; 192 L17*L25*L28
2213 L17*L27*L27; 504 L17*L27*L28; 31 L17*L27*RX_Q; 13 L17*L28*L30
1 L17*L30*L32; 545 L18*L18*L25; 120 L18*L18*L30; 241 L18*L18*RX_P
172 L18*L25*L27; 214 L18*L25*L28; 45 L18*L25*L32; 188 L18*L27*L30
65 L18*L28*L30; 1 L18*L30*L30; 138 L18*L30*TY_R_; 58 L24*L28*L32
27 L25*L28*L30; 86 L25*L28*TY_R_; 199 L27*L27*L29; 41 L27*L28*L30
58 L27*L29*L32; 1 L28*L28*L30; 88 L28*L29*RX_P; 5 L28*L30*L30
4 L28*L30*L31; 16 L28*L32*+OCF; 148 +OPQ*L15; 23 +OPQ*L17
356 +CPQ*L0; 1092 +CPQ*L5; 417 +CPQ*L15; 654 +CPQ*L17
1322 +CPQ*L18; 1295 +CPQ*L24; 818 +CPQ*L27; 96 +CPQ*L31
1045 +CPQ*DROP_OHQ_Y; 1163 -DPR*L5; 185 -DPR*L6; 375 -DPR*L8
133 -DPR*L11; 452 -DPR*L12; 1312 -DPR*L14; 39 -DPR*L16
545 -DPR*L18; 172 -DPR*L27; 214 -DPR*L28; 125 -DPR*L30
45 -DPR*L32; 412 -DPR*DROP_OHQ_Y; 372 -HCY*L5; 304 -HCY*L7
169 -HCY*L8; 786 -HCY*L12; 417 -HCY*L15; 38 -HCY*L24
170 -HCY*L27; 7 -HCY*L28; 423 -HFY*L1; 91 -HFY*L2
442 -HFY*L10; 706 -HFY*L14; 143 -HFY*L17; 38 -HFY*L25
540 -HFY*L26; 190 -HFY*L29; 135 -HFY*RY_P; 494 -HFZ*L9
505 -HFZ*L11; 460 -HFZ*L13; 245 -HFZ*L19; 782 -HFZ*L20
139 -HFZ*L24; 266 -HFZ*L27; 205 -HFZ*L29; 116 -HFZ*L31
79 -HFZ*L32; 259 -HFZ*RX_Q; 714 -HFZ*RY_Q; 279 -HFZ*TY_R_
72 +DFZ*L28; 403 +OCP*L11; 177 +OCP*L13; 124 +OCP*L14
409 +OCP*L17; 667 +OCP*L25; 27 +OCP*L32; 456 +OCP*RX_Q
1743 +OCP*TY_R_; 555 -CDQ*L5; 214 -CDQ*L6; 417 -CDQ*L15
1083 -CDQ*L18; 138 -CDQ*L21; 1081 -CDQ*L24; 697 -CDQ*L27
209 -CDQ*L28; 25 -CDQ*L30; 214 -CDQ*TX_R_; 175 -HFR*L2
333 -HFR*L5; 987 -HFR*L6; 290 -HFR*L10; 1156 -HFR*L13
85 -HFR*L15; 86 -HFR*L27; 7 -HFR*L28; 58 -HFR*L32
950 -DFR*L12; 421 -DFR*L16; 461 -DFR*L27; 101 -OYR*L6
127 -OYR*L17; 647 -OZR*L2; 643 -OZR*L8; 1164 -OZR*L10
83 -OZR*L15; 251 -OZR*L17; 159 -HPQ*L3; 655 -HPQ*L5
417 -HPQ*L15; 64 -HPQ*L17; 117 -HPQ*L18; 551 -HPQ*L22
246 -HPQ*L25; 372 -HPQ*L27; 8 -HPQ*L30; 61 -HPQ*L33
13 -HPQ*-OHD; 1179 -YZR*L1; 38 -YZR*L3; 968 -YZR*L4
139 -YZR*L6; 117 -YZR*L8; 385 -YZR*L12; 125 -YZR*L14
120 -YZR*L17; 889 -YZR*-OHD; 204 -YZR*RY_P; 515 -OFY*L4
210 -OFY*L6; 957 -OFY*L12; 899 -OFY*L14; 134 -OFY*L16
1221 -OFY*L28; 818 -OYZ*L4; 901 -OYZ*L6; 117 -OYZ*L9
45 -OYZ*L10; 385 -OYZ*L13; 830 -OYZ*L14; 955 -OYZ*L15
385 -OYZ*L24; 19 -OYZ*L32; 824 -OYZ*+OCF; 168 -OYZ*RY_Q
1296 -OYZ*TY_R_; 457 -HDZ*L9; 50 -HDZ*L10; 738 -HDZ*L12
42 -HDZ*L14; 130 -HDZ*L17; 47 -HDZ*L18; 458 -HDZ*L21
928 -HDZ*L24; 644 -HDZ*L29; 53 -HDZ*L30; 30 -HDZ*L32
767 -HDZ*TX_R_; 1 -HDZ*TY_R_; 608 -FZP*L0; 177 -FZP*L3
460 -FZP*L6; 266 -FZP*L8; 835 -FZP*L11; 460 -FZP*L12
131 -FZP*L17; 245 -FZP*L18; 33 -FZP*L28; 266 -FZP*L34
1312 -FZP*TY_R_; 609 -DZR*L3; 664 -DZR*L11; 385 -DZR*L13
42 -DZR*L15; 276 -DZR*L16; 805 -DZR*L19; 204 -DZR*L28
375 -DZR*L34; 96 -DZR*DROP_OHP_YQ; 302 -DZR*RY_P; 159 +FYZ*L18
1172 -DYZ*L27; 52 C_OFZ_Y*L28; 191 C_OFR_YZ*L15; 566 C_CDP_Q*L6
71 Q_HYRF_Z*L18
```

Upper bound: `-388660927/1000000000`.

### Leaf RRTmmmmmmmmmmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ -YZR -OFY -OFZ -OYZ -HDZ -HZP +FZP`.

```c1top-geometry
C OCF Y Z -CFZ 157/250
C OFP YZQ R +FPR 619351/628000
P OHDYR +ODY
P OHDZR +ODZ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOZPQ -HZQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODQR +FQR
P YODZR +YDZ
P YODPR +YPR
P YODQR +YQR
P ZOHCR +ZCR
P ZOHPR +ZPR
P ZOHQR +ZQR
P POHZQ +PZQ
P POHQR -PQR
M OFPZYQ 1
M OPFZQY -1
M FOPQYZ -1
M FPOQZY 1
M POFYQZ 1
M PFOYZQ -1
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
T OHR YZ 12 lower 347/500
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 347/500 1
t 199/250 1
```

```c1top-sum
5 L22*L27; 10 L27*L30; 52 L0*L3*L8; 57 L0*L3*L18
16 L0*L3*L32; 88 L0*L3*TY_R_; 7 L0*L9*L32; 2 L0*L12*L17
15 L0*L13*L32; 67 L0*L20*TY_R_; 246 L0*L22*L29; 9 L0*L30*RY_P
6 L0*L30*TX_R_; 119 L1*L2*L4; 3 L1*L2*L6; 29 L1*L2*L10
67 L1*L2*L12; 24 L1*L4*L30; 6 L1*L6*L8; 29 L1*L11*L12
13 L1*L12*L26; 54 L1*L12*TY_R_; 4 L1*L13*L34; 25 L1*L17*L19
65 L1*L17*DROP_OHP_YQ; 76 L1*L20*L22; 144 L1*L20*+OCF; 16 L1*L21*L34
8 L1*L24*L30; 22 L1*L27*DROP_OHQ_Y; 1 L1*L30*L33; 225 L2*L10*L23
57 L2*L10*RY_Q; 50 L2*L12*L19; 8 L2*L14*L30; 182 L2*L19*L29
258 L2*L20*L23; 77 L2*L26*L27; 24 L2*L26*L29; 41 L2*L26*TX_R_
24 L2*RX_P*TY_R_; 47 L3*L6*L32; 5 L3*L10*L18; 43 L3*L15*L27
113 L3*L17*L19; 121 L3*L21*L22; 41 L3*L24*TY_R_; 77 L3*L28*TY_R_
8 L3*L32*RX_P; 4 L4*L6*L34; 4 L4*L8*L9; 4 L4*L9*L10
13 L4*L12*L27; 10 L4*L13*L19; 2 L4*L14*L32; 41 L4*L17*L27
97 L4*L17*L31; 8 L4*L24*L29; 10 L4*L30*TY_R_; 7 L5*L6*L17
4 L5*L8*L34; 92 L5*L12*L17; 17 L5*L15*L25; 73 L5*L16*L30
21 L5*L18*L24; 39 L5*L18*RX_Q; 22 L5*L29*L30; 1 L5*L30*DROP_OHQ_Y
39 L6*L8*TY_R_; 5 L6*L10*L29; 2 L6*L10*L34; 6 L6*L12*TY_R_
20 L6*L13*L28; 33 L6*L14*TY_R_; 17 L6*L15*L18; 10 L6*L15*L32
395 L6*L20*TY_R_; 25 L6*L26*L31; 16 L6*L30*RY_P; 14 L6*RY_Q*TY_R_
7 L7*L13*L32; 2 L7*L25*L32; 40 L7*L27*TY_R_; 7 L7*L32*RY_Q
4 L8*L8*L27; 4 L8*L11*L16; 41 L8*L17*L22; 97 L8*L17*L26
47 L8*L18*L23; 101 L8*L22*L23; 90 L8*L22*RX_Q; 85 L8*L27*+OCF
43 L8*L28*L29; 197 L8*L28*RX_Q; 11 L8*L28*TY_R_; 4 L8*L30*TY_R_
4 L9*L12*L27; 174 L9*L17*L28; 5 L9*L18*L30; 63 L9*L19*TY_R_
223 L9*L20*TY_R_; 10 L9*L22*L30; 17 L9*L25*L32; 5 L9*L27*L30
14 L9*RX_Q*TY_R_; 122 L10*L12*L17; 4 L10*L12*L25; 10 L10*L15*L16
29 L10*L15*RX_Q; 35 L10*L16*TY_R_; 21 L10*L17*L21; 148 L10*L17*L28
69 L10*L18*RX_Q; 18 L10*L21*L32; 32 L10*L26*L29; 102 L10*L28*RX_P
31 L10*L29*TY_R_; 6 L11*L15*L21; 5 L11*L17*L30; 6 L11*L17*L32
180 L11*L25*L28; 3 L11*L31*L32; 6 L12*L17*L31; 17 L12*L17*+OCF
96 L12*L18*L25; 11 L12*L19*L19; 94 L12*L22*L25; 33 L12*L23*L29
30 L12*L25*L32; 45 L12*L26*L29; 27 L12*L30*TY_R_; 6 L13*L16*L30
146 L13*L17*TY_R_; 45 L13*L18*L24; 69 L13*L20*L27; 13 L13*L27*L27
3 L13*L32*L32; 51 L14*L17*L22; 3 L14*L17*L33; 2 L14*L19*L32
10 L14*L22*L30; 6 L14*L24*L30; 40 L14*L25*L28; 2 L14*L30*L32
15 L14*L30*-OHD; 8 L15*L23*L32; 13 L15*L25*TY_R_; 2 L15*L32*L32
1 L15*L32*L33; 59 L16*L26*L34; 39 L16*L27*TY_R_; 21 L16*L28*L30
149 L16*L29*TY_R_; 2 L17*L17*L26; 204 L17*L18*L22; 120 L17*L18*RY_Q
275 L17*L22*DROP_OHP_YQ; 303 L17*L22*RX_Q; 49 L17*L24*L26; 49 L17*L25*TY_R_
53 L17*L27*L28; 147 L17*L28*L29; 105 L17*L28*RY_Q; 12 L17*L29*L32
3 L17*L30*L33; 65 L17*L32*+OCF; 33 L17*+OCF*RY_P; 59 L17*RY_P*RY_P
275 L17*RY_P*DROP_OHQ_Y; 8 L18*L18*RX_P; 7 L18*L22*L30; 73 L18*L25*L28
23 L18*L25*L31; 7 L18*L27*L30; 15 L18*L30*DROP_OHP_YQ; 1 L18*L31*L31
3 L18*L31*L32; 15 L18*RX_P*RX_P; 12 L19*L25*L32; 97 L21*L22*L28
55 L21*L26*L27; 9 L22*L22*L31; 50 L22*L25*RX_Q; 22 L24*L26*L30
141 L25*L26*L32; 42 L25*L27*L28; 147 L25*L27*L32; 22 L25*L30*TY_R_
1 L25*L31*L32; 35 L25*L32*DROP_OHP_YQ; 40 L26*L26*L29; 19 L26*L27*L30
10 L27*L28*L30; 42 L27*L28*TX_R_; 5 L27*L32*RX_P; 11 L28*L30*RX_Q
14 L28*L32*RX_Q; 11 L29*L30*-OHD; 4 L30*L34*-OHD; 14 L30*DROP_OHP_YQ*TY_R_
1 L32*L32*RX_Q; 52 L34*RX_P*TY_R_; 60 DROP_OHQ_Y*TY_R_*TY_R_; 15 +HDF*L11
23 +OPQ*L18; 324 +OPQ*L20; 215 +OPQ*L26; 16 +OPQ*L31
210 +OPQ*-OHD; 507 +OPQ*DROP_OHP_YQ; 320 +OPQ*TX_R_; 78 +CPQ*L0
38 +CPQ*L5; 102 +CPQ*L12; 180 +CPQ*L34; 39 +CPQ*TX_R_
34 -DPR*L9; 138 -DPR*L17; 12 -DPR*L25; 73 -DPR*-OHD
110 -DPR*DROP_OHP_YQ; 12 -DPR*TX_R_; 60 -DQR*L22; 217 -HCY*L2
48 -HCY*L7; 4 -HCY*L13; 74 -HCY*L14; 277 -HCY*L19
115 -HCY*L26; 47 -HCY*L31; 18 -HCY*L33; 312 -HCY*RX_P
569 -HCY*DROP_OHQ_Y; 186 -HFY*L3; 110 +CFY*L1; 31 -HFZ*L27
52 +OCP*L13; 19 -OFP*L17; 135 -CDQ*L12; 52 -CDQ*L14
182 -CDQ*L19; 286 -CDQ*-OHD; 676 -CDQ*DROP_OHP_YQ; 12 -HDQ*L30
42 -DFR*L15; 30 -DFR*L16; 54 -DFR*L20; 59 +HDR*L12
76 +HYZ*TY_R_; 164 -CYQ*L6; 99 -CYR*L17; 195 -OYP*L17
55 -OYQ*L28; 51 -OZR*L20; 3 -YZQ*L32; 4 -YZR*L8
107 -YZR*L10; 107 -YZR*L11; 51 -YZR*L28; 39 -YZR*L29
13 -YZR*L31; 129 -YZR*-OHD; 66 -YZR*DROP_OHP_YQ; 273 -YZR*DROP_OHQ_Y
25 -OFY*L0; 2 -OFY*L9; 22 -OFY*L23; 39 -OFY*L24
9 -OFY*L33; 367 -OFY*-OHD; 134 -OFY*DROP_OHQ_Y; 63 -OYZ*L4
92 -OYZ*L19; 119 -OYZ*L20; 223 -OYZ*L24; 190 -OYZ*L26
58 -OYZ*L28; 125 -OYZ*TX_R_; 36 -HDZ*L5; 9 -HZP*L20
59 -HZP*L25; 66 -HZP*+OCF; 5 -HZP*RY_P; 59 +FZP*L7
104 +FZP*L23; 1 +FZP*L31; 3 +FZP*L32; 69 +FZP*+OCF
111 +FZP*DROP_OHQ_Y; 22 +FZP*TX_R_; 7 -CFZ*L30; 8 -CFZ*L32
111 +ODY*L2; 148 +ODY*L17; 11 +ODZ*L32; 20 -HZQ*L6
25 -HZQ*RY_P; 4 -CZQ*L8; 43 -CZQ*L27; 15 -CZQ*L30
60 +CQR*L22; 60 +CQR*TY_R_; 73 -DZR*L1; 108 -DZR*L20
13 -DZR*L27; 63 +FYZ*L26; 15 +FYZ*L30; 67 +FZR*L0
38 +FZR*+OCF; 22 -DYZ*L22; 25 -DYZ*TY_R_; 45 -FZQ*L10
6 -FZQ*L14; 6 -FZQ*L15; 103 -FZQ*L19; 17 -FZQ*L25
62 -FZQ*L28; 86 -FZQ*L29; 27 -FZQ*L33; 68 -FZQ*-OHD
267 -FZQ*+OCF; 132 -FZQ*RX_P; 119 -FZQ*TY_R_; 193 -YPQ*L0
4 -YPQ*L8; 10 -YPQ*L14; 9 -YPQ*L19; 648 -YPQ*L21
78 -YPQ*L22; 192 -YPQ*L24; 76 -YPQ*L26; 73 -YPQ*L28
205 -YPQ*DROP_OHP_YQ; 785 -YPQ*DROP_OHQ_Y; 22 C_OFR_YZ*L32; 153 C_HFP_Z*L2
227 C_HFP_Z*L10; 63 C_HFP_Z*L14; 25 C_HFP_Z*DROP_OHP_YQ; 150 C_HFP_Z*DROP_OHQ_Y
23 C_CDP_Q*L2; 24 C_CDP_Q*L17; 96 C_CDP_Q*L29; 15 C_CDP_Q*L32
27 C_CDP_Q*TY_R_; 111 C_CFP_ZQ*L28; 50 C_CFP_ZQ*DROP_OHQ_Y; 86 C_FPQ_Z*L6
144 C_FPQ_Z*L11; 135 C_FPQ_Z*L18; 201 C_FPQ_Z*L26; 116 C_FPQ_Z*-OHD
130 C_FPQ_Z*RY_P; 290 Q_OCFH_Y*L10; 205 Q_OQFH_Y*L17; 1 SP_OPRH_ZQ_PH1*L30
63 Q_OCPY_Q*L2; 169 Q_OQDF_YZ*L17; 96 Q_OQRF_YZ*L17; 59 Q_HCQR_Z*L17
5 Q_HYPD_Z*L32; 1 Q_HPDR_Z*L30; 22 Q_HPRF_Z*L20; 11 Q_CDRF_Z*L30
52 Q_CPDR_Q*L18; 12 Q_FQPR_Z*L32; 144 M_OPFZQY_-1_3*L2; 175 M_OPFZQY_-1_3*L6
4 M_OPFZQY_-1_3*L8; 97 M_OPFZQY_-1_3*L19; 76 M_OPFZQY_-1_3*L26; 263 M_OPFZQY_-1_3*-OHD
137 M_OPFZQY_-1_3*DROP_OHQ_Y; 344 M_OPFZQY_-1_3*TX_R_; 5 M_OPFZQY_-1_4*L6
```

Upper bound: `-62128934103/1000000000`.

### Leaf RRTmmmmmmmmmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ -YZR -OFY -OFZ -OYZ -HDZ +HZP`.

```c1top-geometry
C OHP YZQ R +HPR 1
C OCF Y Z -CFZ 157/250
P OHDYR +ODY
P OHDZR +ODZ
P HODZR +HZR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODZR +YDZ
P YODPR +YPR
P YODQR +YQR
P ZOHCR +ZCR
P ZOHFP -ZFP
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
T OHP YZQ 0 lower 823/1000
T OHR YZ 12 lower 347/500
```

```c1top-box
h 823/1000 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 347/500 1
t 199/250 1
```

```c1top-sum
46 L0*L1*L8; 1 L0*L2*L32; 9 L0*L3*L8; 21 L0*L5*L8
21 L0*L8*L13; 35 L0*L8*RY_P; 17 L0*L14*L17; 330 L0*L17*TY_R_
13 L0*L22*L25; 2 L0*L22*L31; 1 L0*L31*DROP_OHP_YZQ; 43 L1*L2*L10
21 L1*L2*L12; 113 L1*L2*L24; 10 L1*L2*L29; 2 L1*L2*L31
28 L1*L5*RX_Q; 48 L1*L6*L6; 7 L1*L6*L14; 12 L1*L6*L25
1 L1*L6*L33; 42 L1*L6*RY_P; 2 L1*L6*RX_Q; 248 L1*L6*TY_R_
145 L1*L17*L24; 258 L1*L25*TY_R_; 1 L1*L30*RX_Q; 8 L2*L2*L19
2 L2*L4*L31; 3 L2*L4*L34; 12 L2*L9*TY_R_; 26 L2*L10*L15
38 L2*L12*RY_P; 4 L2*L14*L17; 1 L2*L15*L24; 176 L2*L19*L24
317 L2*L19*TY_R_; 5 L2*L26*L34; 15 L3*L10*L10; 1 L3*L12*L32
49 L3*L17*L21; 11 L3*L17*+OCF; 160 L3*L18*TY_R_; 154 L4*L5*L17
9 L4*L5*L20; 30 L4*L6*L13; 18 L4*L6*L28; 3 L4*L6*L31
14 L4*L8*L19; 9 L4*L10*L13; 10 L4*L13*L17; 111 L4*L17*L23
2 L4*L17*L31; 130 L4*L17*-OHD; 33 L4*L17*DROP_OHP_YZQ; 54 L4*L17*RX_Q
23 L4*L19*L24; 2 L4*L28*L31; 1 L4*L31*RY_Q; 1 L5*L6*L32
22 L5*L8*L8; 1 L5*L12*L30; 12 L5*L17*L33; 132 L5*L18*L25
48 L5*L25*L28; 234 L5*L25*TY_R_; 1 L5*L29*L30; 82 L6*L6*TY_R_
19 L6*L9*L10; 4 L6*L9*L19; 41 L6*L10*L17; 6 L6*L11*L18
15 L6*L12*TY_R_; 28 L6*L14*L25; 2 L6*L20*L23; 13 L6*L23*TY_R_
2 L6*L25*L32; 65 L6*L26*RY_P; 446 L6*L26*TY_R_; 10 L6*L27*L29
57 L8*L14*RY_P; 64 L8*L14*TY_R_; 3 L8*L17*L30; 3 L8*L17*L32
8 L8*L26*L27; 8 L8*TY_R_*TY_R_; 50 L9*L15*L17; 6 L9*L15*L26
57 L10*L15*L17; 70 L10*L15*L24; 38 L11*L13*L17; 14 L11*L17*L27
4 L12*L17*L18; 5 L12*L17*L32; 34 L12*L18*L25; 5 L12*L18*L30
2 L12*L19*L26; 22 L12*L19*L29; 11 L12*L25*C_OHD_YZ; 14 L12*L27*L28
17 L12*L28*L34; 6 L13*L18*L18; 4 L14*L17*L17; 6 L14*L17*L19
2 L14*L17*L27; 1 L14*L25*L28; 34 L15*L17*L24; 1 L15*L18*L24
4 L16*L19*L22; 18 L17*L17*L22; 47 L17*L17*L26; 11 L17*L17*+OCF
4 L17*L18*L23; 2 L17*L18*L30; 48 L17*L18*C_OHD_YZ; 4 L17*L18*RX_P
76 L17*L19*L26; 100 L17*L19*L28; 2 L17*L20*RY_P; 211 L17*L22*L24
1 L17*L22*L27; 1 L17*L23*L31; 168 L17*L24*L26; 18 L17*L24*L33
23 L17*L24*-OHD; 14 L17*L25*L34; 168 L17*L25*TY_R_; 234 L17*L27*L27
56 L17*L27*L28; 5 L17*L27*L30; 234 L17*L27*TY_R_; 34 L17*L29*-OHD
3 L17*L30*L34; 5 L17*L31*+OCF; 1 L17*L33*RX_Q; 2 L17*-OHD*-OHD
76 L18*L18*L25; 2 L18*L21*L26; 62 L18*L25*L28; 2 L19*L21*L23
1 L22*L28*L30; 23 L25*L27*L27; 169 L25*L27*L28; 23 L25*L27*TY_R_
44 -OHF*L10; 3 +HDF*L16; 44 +OPQ*L12; 2 +OPQ*L24
1 -DPQ*L26; 28 +CPQ*L2; 48 +CPQ*L24; 141 -DPR*L6
1 -DPR*L10; 30 -DPR*L13; 14 -DPR*L14; 76 -DPR*L18
145 -DPR*L25; 289 -DPR*L27; 33 -DPR*L30; 51 -DPR*L31
14 -DPR*L34; 211 -DPR*DROP_OHQ_Y; 145 -DPR*TX_R_; 289 -DPR*TY_R_
19 -DQR*L6; 29 -OHY*L0; 17 +OCY*L24; 21 -HCY*L4
17 -HCY*L12; 26 -HCY*L15; 57 -HCY*L19; 15 -HCY*L24
29 -HCY*L27; 20 -HCY*L29; 15 -HCY*L34; 20 -HCY*RX_P
111 -HFY*L10; 85 -HFY*L17; 23 -HFY*L18; 124 -HFY*L26
24 +CFY*TY_R_; 14 -HFZ*L5; 20 -HFZ*L6; 73 -HFZ*L10
14 -HFZ*L18; 50 -HFZ*L22; 79 -HFZ*DROP_OHP_YZQ; 66 +OCP*L28
28 -CDQ*L2; 7 -CDQ*L12; 48 -CDQ*L24; 3 -CDQ*L27
3 -CDQ*TY_R_; 1 -ODQ*TY_R_; 48 -HFR*L6; 36 -HFR*L12
127 -HFR*L13; 7 -HFR*L14; 18 -HFR*L31; 1 -HFR*L33
48 -HFR*RX_P; 65 -HFR*RY_P; 165 -HFR*DROP_OHQ_Y; 427 -HFR*TY_R_
46 -DFR*L12; 138 -DFR*L28; 194 -DFR*RY_P; 42 -DFR*TY_R_
36 +HDR*L6; 17 +HYZ*L1; 20 -CYZ*L6; 5 +HYP*L17
23 -CYQ*L17; 11 -DYR*L6; 8 -DYR*L28; 5 -FPQ*DROP_OHP_YZQ
6 -OYR*L4; 34 -OZR*L8; 167 -OZR*L10; 95 -OZR*L15
16 -HPQ*L16; 2 -HPQ*L22; 3 -HPQ*-OHD; 47 -YZR*L1
28 -YZR*L6; 95 -YZR*L14; 12 -YZR*L31; 55 -YZR*-OHD
7 -YZR*RX_P; 14 -YZR*RY_P; 106 -YZR*DROP_OHQ_Y; 136 -OFY*L14
38 -OFY*L22; 17 -OFY*L25; 100 -OFY*L27; 83 -OFY*L28
4 -OFY*L33; 12 -OFY*L34; 38 -OFY*RY_P; 14 -OYZ*L10
95 -OYZ*L15; 301 -OYZ*L22; 92 -OYZ*L23; 122 -OYZ*L28
14 -OYZ*L34; 7 -OYZ*DROP_OHP_YZQ; 58 -OYZ*RY_P; 209 -OYZ*RY_Q
48 -OYZ*TX_R_; 165 -OYZ*TY_R_; 78 -HDZ*L17; 17 +HZP*L1
15 +HZP*L7; 87 +HZP*L9; 57 +HZP*L10; 20 +HZP*L21
26 +HZP*L22; 12 +HZP*L27; 3 +HZP*L33; 4 +HZP*RX_P
20 +HZP*DROP_OHQ_Y; 64 +HZP*TX_R_; 15 -CFZ*L8; 12 +ODY*L6
2 -DZR*L34; 7 +FYZ*L8; 22 -DYZ*L8; 14 -DYZ*L18
16 -DYZ*L25; 116 C_OHZ_Y*L17; 3 C_OHQ_Y*L17; 36 C_OFZ_Y*L11
274 C_OFR_YZ*L0; 1 C_OFR_YZ*L2; 17 C_OFR_YZ*L8; 83 C_OFR_YZ*L15
22 C_OFR_YZ*L27; 4 C_HCP_ZQ*L3; 33 C_HCP_ZQ*L11; 24 C_HCP_ZQ*L18
88 C_HCP_ZQ*L25; 3 C_HCP_ZQ*L30; 24 C_HCP_ZQ*L34; 16 C_HCP_ZQ*C_OHD_YZ
9 C_CDP_Q*L8; 87 C_CDP_Q*L12; 294 C_CDP_Q*L24; 58 C_CFP_ZQ*L18
192 C_CFP_ZQ*TY_R_; 45 C_FYR_Z*L17; 82 TPY_R_*L6; 28 Q_OCFH_Y*L10
16 Q_OCZH_Y*L25; 17 Q_OCPH_YZQ*L19; 1 Q_OCPH_YZQ*L30; 66 Q_OCPH_YZQ*RY_P
286 Q_OCPH_YZQ*TY_R_; 149 Q_OZFH_Y*L11; 26 Q_OZFH_Y*L19; 96 Q_OZFH_Y*L26
20 Q_OZFH_Y*L29; 6 Q_OZFH_Y*L33; 24 Q_OZFH_Y*L34; 14 Q_OZFH_Y*TY_R_
4 Q_OPFH_YZQ*L8; 2 Q_OCZF_Y*L8; 35 Q_HCRF_Z*L17; 15 Q_HYCP_ZQ*L8
11 Q_HYCP_ZQ*L17; 15 Q_HYCP_ZQ*L25; 33 Q_HYRF_Z*L12
```

Upper bound: `-115081160833/13000000000`.

### Leaf RRTmmmmmmmmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ -YZR -OFY -OFZ -OYZ +HDZ`.

```c1top-geometry
C OCF Y Z -CFZ 157/250
P OHDYR +ODY
P OHDZR +ODZ
P HODZP -HZP
P HODZQ -HZQ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ -DYZ
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
16 L0*L1*L4; 16 L0*L1*L12; 21 L0*L3*L3; 34 L0*L3*C_OHD_Y
23 L0*L3*TY_R_; 67 L0*L13*L24; 11 L0*L15*L25; 43 L0*L17*L18
9 L0*L22*L25; 13 L0*L25*RX_Q; 97 L1*L2*L6; 13 L1*L4*L18
120 L1*L6*L6; 26 L1*L6*L10; 13 L1*L6*L12; 1 L1*L8*L18
34 L1*L17*L22; 9 L1*L27*L32; 3 L2*L2*L32; 1 L2*L6*L33
8 L2*L13*L16; 34 L2*L28*L28; 3 L2*L30*L32; 286 L3*L4*L4
2 L3*L4*L7; 23 L3*L4*L21; 139 L3*L4*L27; 59 L3*L10*L25
17 L3*L12*L28; 28 L3*L17*L26; 25 L3*L18*L30; 45 L3*L18*RY_Q
33 L3*L18*TX_R_; 227 L3*L18*TY_R_; 183 L3*L22*L27; 1 L3*L25*L30
7 L3*L28*L34; 83 L3*L28*DROP_OHQ_Y; 12 L3*L28*TX_R_; 84 L4*L4*L13
28 L4*L4*TX_R_; 105 L4*L7*L28; 70 L4*L8*L15; 1 L4*L13*L13
22 L4*L13*L17; 90 L4*L13*L28; 11 L4*L15*DROP_OHR_Y; 1 L4*L17*L33
15 L4*L18*L19; 188 L4*L18*L27; 59 L4*L22*L28; 9 L4*L26*L33
188 L4*L27*RY_P; 16 L4*L28*L28; 7 L4*L28*L33; 1 L4*L31*L31
2 L4*L31*TY_R_; 1 L4*L33*RY_P; 42 L5*L9*L17; 23 L5*L17*L29
8 L5*L18*L32; 1 L5*L30*L30; 4 L5*L32*DROP_OHR_Y; 35 L6*L10*TY_R_
18 L6*L14*L15; 105 L6*L14*L17; 21 L6*L15*TX_R_; 78 L6*L17*L22
36 L6*L18*L27; 6 L6*L19*L20; 25 L6*L28*TX_R_; 4 L6*L30*RY_P
22 L7*L13*L27; 27 L7*L17*L32; 80 L7*L18*L28; 3 L8*L13*L14
1 L8*L13*RX_Q; 43 L8*L15*L17; 60 L8*L15*L28; 1 L8*L17*RX_P
11 L8*L21*L26; 1 L8*L22*L32; 6 L8*L29*TY_R_; 1 L8*L31*DROP_OHP_YQ
4 L9*L15*TY_R_; 3 L9*L17*L29; 5 L9*L17*RX_Q; 34 L9*L21*L28
1 L9*L27*L30; 4 L9*L28*L30; 3 L10*L13*L13; 4 L10*L13*L26
13 L10*L13*L28; 27 L10*L17*L19; 120 L10*L17*L22; 1 L10*L28*RX_P
56 L11*L13*L17; 8 L11*L17*L25; 13 L11*L17*L32; 18 L12*L14*L27
16 L12*L15*L28; 131 L12*L17*C_OHD_Y; 22 L12*L21*L27; 52 L12*L27*DROP_OHP_YQ
22 L12*L27*DROP_OHQ_Y; 1 L12*L34*+OCF; 18 L13*L15*TY_R_; 8 L13*L17*L17
4 L13*L17*L31; 36 L13*L17*DROP_OHQ_Y; 24 L13*L18*L25; 3 L13*L28*TX_R_
24 L14*L25*L28; 28 L15*L17*TX_R_; 1 L16*L17*DROP_OHR_Y; 8 L16*L18*L30
41 L17*L17*TY_R_; 42 L17*L18*TX_R_; 154 L17*L20*L23; 1 L17*L22*L28
92 L17*L22*+OCF; 95 L17*L22*RX_P; 407 L17*L22*DROP_OHQ_Y; 14 L17*L25*L27
6 L17*L25*L33; 30 L17*L25*-OHD; 6 L17*L25*+OCF; 13 L17*L25*C_OHD_Y
6 L17*L25*RX_Q; 14 L17*L25*TY_R_; 164 L17*L26*L26; 4 L17*L27*L30
164 L17*L27*TY_R_; 16 L17*L29*RY_Q; 29 L17*L32*TY_R_; 22 L17*-OHD*TX_R_
6 L17*RY_Q*TX_R_; 9 L18*L20*L30; 1 L18*L30*TX_R_; 29 L18*L30*TY_R_
41 L18*RX_P*RX_Q; 170 L18*RX_Q*RX_Q; 3 L19*L22*L22; 13 L20*L20*L25
6 L21*L23*L28; 2 L22*L22*L33; 103 L25*L27*L28; 52 L25*L28*TY_R_
6 L26*L28*L30; 9 L27*L28*L32; 46 L27*L28*RX_P; 50 L27*L28*TX_R_
6 L28*L29*L34; 19 L28*L29*RX_P; 1 L28*L30*L30; 27 L28*L30*+OCF
2 L28*L30*TX_R_; 1 L28*L32*RX_P; 76 L28*RX_Q*RX_Q; 13 L28*RX_Q*TY_R_
251 -OHF*L10; 26 -OHF*L13; 23 -OHF*L15; 22 -OHF*L19
25 -OHF*L25; 222 +OPQ*L2; 16 +OPQ*L26; 64 +CPQ*L7
1 +CPQ*L11; 45 +CPQ*L18; 621 +CPQ*L20; 340 +CPQ*L25
22 +CPQ*L31; 105 +CPQ*RX_P; 394 +CPQ*DROP_OHR_Y; 302 +CPQ*TY_R_
24 -DPR*L13; 18 -DPR*L20; 44 -DPR*L28; 13 -DPR*RX_P
16 -DPR*DROP_OHQ_Y; 9 -OHY*L15; 6 -OHY*L22; 6 -OHY*RY_Q
5 -OHY*TY_R_; 178 +OCY*L13; 48 +OCY*L25; 53 -HCY*L3
29 -HCY*L25; 41 -HCY*L31; 1 -HCY*RY_P; 371 -HCY*DROP_OHQ_Y
39 -HCY*TX_R_; 5 -HFY*L26; 9 -HFY*RX_Q; 6 -HFZ*L19
23 +DFZ*L0; 82 +DFZ*L10; 1 +DFZ*L13; 18 +DFZ*L14
27 +DFZ*L23; 9 +DFZ*L31; 31 +DFZ*L32; 28 +DFZ*L33
99 +DFZ*+OCF; 116 +DFZ*RX_P; 78 +DFZ*DROP_OHQ_Y; 69 +DFZ*TX_R_
48 -OHP*L17; 59 +OCP*L30; 1 +OCP*L32; 45 +OCP*RY_P
69 +OCP*TY_R_; 7 -HFP*L8; 30 -CDQ*L1; 190 -CDQ*L20
322 -CDQ*L27; 58 -CDQ*L32; 57 -CDQ*L33; 45 -CDQ*+OCF
54 -CDQ*TX_R_; 441 -CDQ*TY_R_; 84 +DFQ*L17; 23 +HCR*L17
9 +ODR*L28; 72 +HYQ*L17; 72 -CYQ*L17; 49 -OYR*L10
49 -OYR*L15; 13 -OYR*L28; 45 -HPQ*L18; 133 -HPQ*L27
19 -HPQ*L30; 51 -HPQ*L32; 50 -HPQ*L33; 1 -HPQ*L34
92 -HPQ*DROP_OHP_YQ; 7 -HPQ*TX_R_; 192 -HPQ*TY_R_; 49 -YZR*L10
28 -YZR*L17; 13 -YZR*L28; 48 -OFY*L2; 52 -OFY*L12
134 -OFY*L14; 102 -OFY*L27; 29 -OFY*L32; 29 -OFY*L33
216 -OFY*-OHD; 13 -OFY*DROP_OHR_Y; 137 -OFY*TY_R_; 82 -OYZ*L1
52 -OYZ*L6; 49 -OYZ*L11; 3 -OYZ*L13; 380 -OYZ*L20
52 -OYZ*L26; 42 -OYZ*L31; 95 -OYZ*+OCF; 82 +HDZ*L10
16 +HDZ*L14; 113 +HDZ*L21; 119 +HDZ*L29; 28 +HDZ*L32
25 +HDZ*L33; 16 +HDZ*-OHD; 10 +HDZ*+OCF; 131 +HDZ*DROP_OHP_YQ
113 +HDZ*RX_Q; 27 +HDZ*RY_Q; 70 +HDZ*TX_R_; 13 +HDZ*TY_R_
49 +ODY*L17; 49 +FZR*L6; 44 -PQR*L0; 6 C_OFR_YZ*L34
184 C_HDF_Z*L6; 73 C_HDF_Z*L11; 199 C_HDF_Z*L12; 86 C_HDF_Z*L18
20 C_CFR_Z*L28; 109 Q_OCFH_Y*L10; 39 Q_OCFH_Y*L29; 59 Q_OZFH_Y*L4
52 Q_OZFH_Y*L34; 33 Q_ORFH_YZ*L4; 20 Q_OPRY_Q*L17; 11 Q_HYCP_Q*L17
66 Q_HDRF_Z*L2; 26 Q_HDRF_Z*L12; 36 Q_HDRF_Z*RY_P; 34 Q_CQRF_Z*L28
1 Q_FYQR_Z*L28
```

Upper bound: `-2236617149/1000000000`.

### Leaf RRTmmmmmmmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ -YZR -OFY -OFZ +OYZ`.

```c1top-geometry
C OCF Y Z -CFZ 157/250
C OCZ Y P -CZP 142399/250000
C OCZ Y Q -CZQ 142399/250000
C OCZ Y R -CZR 142399/250000
P OHDYR +ODY
P OHDZR +ODZ
P HODPR +HPR
P HODQR +HQR
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P YODPR +YPR
P YODQR +YQR
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
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 291/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
133 L0*L3*L17; 27 L0*L8*L15; 303 L0*L15*L29; 3 L0*L17*L30
197 L0*L17*DROP_OHP_YQ; 22 L0*L18*L21; 168 L1*L4*L6; 9 L1*L4*L8
129 L1*L6*L10; 24 L1*L6*L12; 251 L1*L6*L14; 49 L1*L6*L17
303 L1*L6*L26; 54 L1*L6*C_OCF_Y; 9 L1*L10*L25; 82 L1*L12*L15
17 L1*L17*L19; 37 L1*L17*L26; 14 L1*L27*L27; 9 L1*C_OCF_Y*TY_R_
13 L2*L2*L11; 8 L2*L2*L32; 98 L2*L4*L15; 156 L2*L8*TY_R_
51 L2*L10*TY_R_; 8 L2*L12*L15; 222 L2*L15*L26; 46 L2*L15*C_OCF_Y
182 L2*L25*L28; 1 L2*L30*L32; 39 L3*L3*L18; 118 L3*L3*L22
28 L3*L3*L27; 48 L3*L3*L34; 14 L3*L5*L17; 14 L3*L6*L27
61 L3*L8*L28; 42 L3*L10*L28; 17 L3*L17*L33; 38 L3*L18*L25
7 L3*L18*L32; 74 L3*L18*TY_R_; 34 L3*L22*L27; 31 L3*L24*L28
3 L3*L25*L32; 49 L3*L27*L27; 42 L3*L27*L34; 64 L3*L27*TY_R_
12 L3*L28*L30; 67 L4*L6*L17; 27 L4*L8*L25; 94 L4*L8*L29
11 L4*L10*L25; 869 L4*L17*L26; 833 L4*L17*L27; 3 L4*L17*L31
232 L4*L17*DROP_OHQ_Y; 39 L4*L24*L28; 8 L4*L25*RX_Q; 23 L4*L25*TY_R_
7 L4*L27*L32; 23 L5*L5*+OCF; 16 L5*L6*L13; 13 L5*L19*L30
62 L5*L22*L27; 4 L5*L24*TY_R_; 9 L5*L25*L32; 14 L5*L27*TY_R_
1 L5*L30*L32; 27 L5*L30*TY_R_; 57 L6*L6*L28; 41 L6*L9*L14
18 L6*L9*TY_R_; 27 L6*L17*TY_R_; 26 L7*L15*L15; 54 L8*L12*L15
50 L8*L15*L15; 94 L8*L15*L29; 50 L10*L12*L15; 38 L12*L26*L28
40 L12*L28*L29; 20 L13*L15*L28; 30 L13*L27*L28; 20 L15*L15*L29
325 L15*L28*L29; 93 L16*L20*TY_R_; 60 L16*L27*L30; 8 L17*L17*L23
131 L17*L17*L28; 8 L17*L17*L32; 33 L17*L17*RY_P; 15 L17*L18*L30
127 L17*L18*DROP_OHR_Y; 35 L17*L19*RX_P; 31 L17*L21*L32; 67 L17*L22*C_OCF_Y
56 L17*L22*TY_R_; 32 L17*L25*L33; 7 L17*L26*L32; 2 L17*L27*-OHD
337 L17*L27*DROP_OHQ_Y; 358 L17*L27*RX_Q; 39 L17*L28*RY_P; 45 L17*L32*DROP_OHQ_Y
1 L17*L33*L33; 57 L17*TY_R_*TY_R_; 57 L18*L18*L21; 46 L18*L18*RX_Q
6 L18*L22*L30; 3 L18*L24*L28; 27 L18*L25*L27; 42 L18*L25*-OHD
48 L18*L25*RX_P; 5 L18*L27*L32; 5 L18*L27*L33; 136 L18*L27*RX_Q
8 L18*L30*RX_P; 14 L18*L30*DROP_OHQ_Y; 4 L18*L30*DROP_OHR_Y; 29 L18*L30*TY_R_
30 L19*L25*TY_R_; 7 L25*L32*TY_R_; 14 L27*L27*L28; 7 L27*L31*TY_R_
12 L28*L30*DROP_OHQ_Y; 3 -OHF*L3; 50 -OHF*L14; 235 -OHF*TY_R_
66 +CPQ*L1; 33 +CPQ*L19; 242 +CPQ*L20; 50 +CPQ*L22
66 +CPQ*-OHD; 91 +CPQ*+OCF; 287 +CPQ*DROP_OHR_Y; 138 +CPQ*TY_R_
58 -DPR*L3; 181 -DPR*L17; 53 -DPR*L18; 72 -DPR*L27
2 -DPR*L32; 39 -DPR*C_OHD_Y; 301 -DPR*DROP_OHP_YQ; 93 -DPR*RY_P
249 -DPR*DROP_OHQ_Y; 68 -DQR*L5; 67 -DQR*TY_R_; 16 +OCY*L1
61 -HCY*L3; 94 -HCY*L13; 213 -HCY*DROP_OHR_Y; 9 -HCY*TY_R_
99 -HFY*L14; 59 +CFY*L1; 403 -HFZ*L4; 94 -HFZ*L8
198 -HFZ*L10; 8 -HFZ*L12; 1253 -HFZ*L14; 1151 -HFZ*L15
68 -HFZ*L26; 57 -HFZ*L29; 27 +DFZ*L7; 10 +DFZ*L10
15 +DFZ*L25; 15 +DFZ*TX_R_; 62 +OCP*L3; 31 +OCP*L5
13 +OCP*L17; 287 +OCP*L25; 24 +OCP*L26; 21 +OCP*L30
55 -CDQ*L20; 257 -CDQ*L24; 8 -CDQ*L30; 6 -CDQ*L32
9 -CDQ*DROP_OHQ_Y; 105 -CDQ*TY_R_; 94 -HFR*L9; 15 -DFR*L6
76 -DFR*L8; 68 -DFR*L15; 40 -DFR*L16; 118 +HDR*L8
7 -DYR*L27; 9 -OYR*L1; 156 -OYR*L5; 349 -OYR*L12
235 -OYR*L14; 47 -OYR*L18; 23 -OYR*L32; 213 -OYR*C_OCF_Y
211 -OYR*RY_Q; 7 -OYR*TY_R_; 73 -HPQ*L5; 4 -HPQ*L23
11 -HPQ*L32; 60 -HPQ*RX_P; 112 -HPQ*RX_Q; 95 -HPQ*RY_Q
155 -OFY*L15; 10 -OFY*L28; 235 +OYZ*L4; 41 +OYZ*L6
54 +OYZ*L12; 50 +OYZ*L15; 460 +OYZ*L22; 460 +OYZ*L23
126 +OYZ*-OHD; 94 +OYZ*C_OCF_Y; 349 +OYZ*DROP_OHR_Y; 235 +OYZ*TY_R_
46 -CFZ*L2; 401 -CFZ*L4; 20 -CFZ*L15; 222 -CFZ*L26
628 -CFZ*L28; 14 +ODY*L25; 15 +CQR*L18; 15 -DZR*L7
197 -DZR*L9; 10 -DZR*L34; 15 -DZR*C_OCF_Y; 68 +FZR*L4
83 +FZR*L10; 15 +FZR*L29; 262 C_OFR_YZ*L4; 222 C_OFR_YZ*L15
18 C_OFR_YZ*L17; 142 C_OZR_Y*L34; 8 Q_OCZH_Y*L12; 49 Q_ORFH_YZ*L17
66 Q_CPDR_Q*L18
```

Upper bound: `-1815882819/200000000`.

### Leaf RRTmmmmmmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ -YZR -OFY +OFZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHDYR +ODY
P OHFYZ +OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHDZ +YDZ
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OHF Z 3 lower 279/1000
T OCZ Y 1 lower 279/907
T OCZ Y 7 lower 279/628
S R - 2 upper 628/721
X R - 12 lower 29729/51000
Y R - 13 lower 296687/360500
B x Q 10 lower 792119/1360500
B y Q 11 upper 1937737/3244500
```

```c1top-box
h 347/500 1
c 307/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 291/500 459/500
m 187/1000 299/500
r 291/500 1
t 411/500 1
```

```c1top-sum
75 L0*L17*L25; 66 L0*L17*RX_P; 126 L1*L1*L6; 78 L1*L1*L9
1 L1*L1*L13; 1 L1*L2*L31; 299 L1*L6*L9; 35 L1*L6*L21
553 L1*L6*L25; 1328 L1*L6*L26; 962 L1*L6*C_OCF_Y; 219 L1*L6*DROP_OHP_YQ
5 L1*L8*L17; 81 L1*L9*L26; 2 L1*L10*L16; 2 L1*L10*L24
104 L1*L10*L29; 476 L1*L16*L25; 336 L1*L25*L25; 41 L1*L25*L31
6 L1*L27*RX_Q; 176 L1*L29*TX_R_; 12 L2*L10*L15; 119 L2*L25*L28
218 L3*L3*L27; 82 L3*L3*L32; 1 L3*L9*L18; 19 L3*L10*L25
672 L3*L17*L26; 245 L3*L17*RY_Q; 307 L3*L18*RX_Q; 472 L3*L18*TX_R_
46 L3*L27*L32; 958 L3*L27*TX_R_; 87 L3*L30*TY_R_; 430 L4*L8*L29
1 L4*L9*L31; 14 L4*L11*L29; 1 L4*L11*L31; 1019 L4*L17*C_OCF_Y
665 L4*L17*DROP_OHR_Y; 1 L4*L18*L34; 13 L4*L23*L29; 80 L4*L24*L31
20 L4*L26*L31; 61 L4*L29*L31; 192 L4*L29*RY_Q; 409 L4*L29*DROP_OHR_Y
10 L4*L31*L31; 925 L4*C_OCF_Y*TX_R_; 2 L5*L8*L16; 2 L5*L8*L18
2 L5*L11*L25; 32 L5*L16*L27; 4 L5*L18*L25; 3 L5*L18*L30
1 L5*L18*L31; 55 L5*L25*L30; 45 L5*L27*L30; 544 L6*L6*TY_R_
13 L6*L8*L15; 7 L6*L10*L28; 11 L6*L11*L21; 13 L6*L15*L34
972 L6*L16*TY_R_; 39 L6*L26*L31; 23 L6*L27*L32; 71 L6*L29*L32
144 L7*L7*TY_R_; 87 L7*L17*L32; 23 L7*L17*RY_P; 79 L7*L18*L27
126 L7*L27*TX_R_; 45 L7*L27*TY_R_; 1 L8*L12*L17; 12 L8*L19*TY_R_
430 L8*L28*L29; 1 L9*L13*L16; 6 L9*L17*L23; 42 L9*L27*L28
1 L9*L28*L31; 12 L10*L14*L29; 1 L10*L17*L18; 2 L10*L19*TY_R_
3 L10*L22*L29; 136 L10*L25*L26; 6 L10*L25*DROP_OHQ_Y; 1 L10*L27*L30
9 L10*RX_P*TY_R_; 2 L10*RX_Q*RX_Q; 1 L11*L18*L30; 1 L14*L25*RX_Q
3769 L14*L27*C_OCF_Y; 53 L15*L27*L29; 3715 L15*L27*C_OCF_Y; 31 L16*L17*L33
1 L16*L18*L32; 682 L16*L25*TY_R_; 8 L17*L18*L22; 2 L17*L18*RY_P
152 L17*L20*L32; 23 L17*L22*L27; 6 L17*L22*L34; 72 L17*L22*DROP_OHP_YQ
391 L17*L22*DROP_OHR_Y; 1150 L17*L24*L27; 28 L17*L24*RY_P; 54 L17*L26*L27
6 L17*L26*L28; 170 L17*L26*RX_Q; 61 L17*L27*DROP_OHP_YQ; 20 L17*L28*L30
15 L17*L30*L33; 198 L17*-OHD*TX_R_; 352 L17*C_OHD_Y*TX_R_; 23 L18*L21*L30
14 L18*L22*L25; 2 L18*L22*L34; 468 L18*L24*L25; 2 L18*L27*L34
6 L18*L27*DROP_OHQ_Y; 41 L18*L27*DROP_OHR_Y; 71 L18*L29*L30; 27 L18*L30*TX_R_
326 L18*RX_Q*RX_Q; 3 L19*L22*L24; 707 L20*L20*TY_R_; 6 L20*L27*L34
52 L22*L24*L29; 945 L22*L29*L29; 536 L25*L25*L27; 536 L25*L25*TY_R_
322 L25*L27*L28; 4 L25*L28*L30; 958 L25*C_OCF_Y*TY_R_; 193 L25*TY_R_*TY_R_
59 L26*L27*DROP_OHQ_Y; 12 L26*L28*L29; 7 L27*L27*L30; 193 L27*L27*TX_R_
125 L27*L29*RY_P; 9 L27*L30*L30; 60 L28*L29*RX_Q; 13 L28*L30*DROP_OHQ_Y
242 L29*L29*RY_P; 302 L29*L29*RY_Q; 2 L30*L30*C_OHD_Y; 5 L30*L32*C_OCF_Y
227 +OPQ*L17; 17 +CPQ*L5; 4 +CPQ*L9; 3 +CPQ*L11
1136 +CPQ*L24; 1304 +CPQ*L29; 157 +CPQ*L31; 1594 +CPQ*DROP_OHQ_Y
256 +CPQ*RX_Q; 10 -DPR*L10; 4 -DPR*L18; 890 -DPR*L20
364 -DPR*L25; 41 -DPR*L26; 2 -DPR*L32; 841 -DPR*+OCF
831 -DPR*DROP_OHR_Y; 189 -DQR*L5; 52 -DQR*L6; 745 -DQR*L17
113 -HCY*L7; 3 -HCY*L21; 2 -HCY*L29; 938 -HCY*TX_R_
6 +HCZ*L26; 1 -HFZ*C_OHD_Y; 7 -HFZ*DROP_OHR_Y; 484 +OCP*L3
1369 +OCP*L25; 161 +OCP*L30; 533 +OCQ*L17; 189 -CDQ*L4
2 -CDQ*L11; 423 -CDQ*L24; 415 -CDQ*L27; 4 -CDQ*L34
619 -CDQ*C_OCF_Y; 400 -CDQ*RX_P; 661 -CDQ*TX_R_; 562 -HFR*L6
1307 -HFR*L9; 127 -HFR*L10; 336 -HFR*L25; 322 -HFR*L26
45 -HFR*L31; 655 -HFR*C_OCF_Y; 214 -DFR*L12; 214 -DFR*L13
206 -DFR*L23; 461 -DFR*L24; 55 -DFR*L26; 1678 -DFR*C_OCF_Y
1244 -DFR*DROP_OHP_YQ; 4 +HYZ*L1; 7 +HYZ*L24; 6 +HYZ*L28
6 -CYZ*L5; 1307 -OYR*L6; 421 -OYR*L17; 1901 -OYR*L20
47 -OYR*L23; 136 -OYR*L26; 211 -OYR*L31; 13 -OYR*L32
8 -OYR*L33; 129 -OYR*-OHD; 497 -OYR*C_OCF_Y; 422 -HPQ*L7
4 -HPQ*L9; 2 -HPQ*L10; 6 -HPQ*L26; 77 -HPQ*L30
84 -HPQ*L31; 383 -HPQ*DROP_OHQ_Y; 989 -OFY*L6; 21 -OFY*L8
2 -OFY*L17; 622 -OFY*L27; 21 -OFY*L34; 234 -OFY*-OHD
22 -OFY*+OCF; 529 -OFY*DROP_OHR_Y; 604 -OFY*TX_R_; 2 +OFZ*L2
8 +ODY*L18; 7 +OYZ*L25; 2 +OYZ*RX_P; 3 -FYZ
2 -FYZ*RX_P; 258 C_OFR_Y*L17; 2 C_HFY_Z*L14; 254 C_HFY_Z*L21
23 C_HFY_Z*L25; 693 C_HFY_Z*+OCF; 25 C_HFY_Z*C_OHD_Y; 266 C_HFY_Z*RX_Q
386 C_HFY_Z*TX_R_; 4 C_CDP_Q*L4; 3 C_CDP_Q*L8; 193 TPY_R_*L4
47 Q_OCFH_YZ*L1; 7 SP_OCFH_YZ_OF1*L25; 6 SP_OCFH_YZ_CH-1*TY_R_; 6 Q_OYFH_Z*L4
21 Q_OYFH_Z*L10; 1 Q_OYFH_Z*L15; 195 Q_OYFH_Z*L25; 1013 Q_OYFH_Z*L26
605 Q_OYFH_Z*C_OCF_Y; 96 Q_OCQF_Y*L17; 2 Q_OPFZ_YQ*L17; 105 Q_HYCF_Z*L1
33 Q_CPDR_Q*L27; 26 Q_CPRF_Q*L17
```

Upper bound: `-883350247/200000000`.

### Leaf RRTmmmmmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ -YZR +OFY`.

```c1top-geometry
C OHF Y Z +FOZ 157/250
P OHDFY +ODY
P OHDZR +ODZ
P OHFYZ -OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODZR +YDZ
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OHF Y 3 lower 279/1000
T OHZ Y 6 lower 279/1000
S R - 2 upper 628/721
X R - 12 lower 29729/51000
Y R - 13 lower 296687/360500
B y Q 11 upper 1937737/3244500
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 299/500
r 291/500 1
t 411/500 1
```

```c1top-sum
254 L0*L7*L17; 223 L0*L7*L29; 1 L0*L12*L17; 1158 L0*L17*L17
168 L0*L17*L18; 631 L0*L17*L23; 1053 L0*L17*DROP_OHP_YQ; 235 L0*L17*RX_Q
160 L0*L20*L27; 1093 L0*L25*L27; 379 L0*L29*L29; 27 L0*L29*L30
8 L0*L29*L32; 2 L1*L1*L2; 358 L1*L2*L2; 608 L1*L2*L8
1 L1*L2*L12; 347 L1*L2*TY_R_; 184 L1*L4*L4; 416 L1*L4*L6
989 L1*L6*L6; 553 L1*L6*L25; 712 L1*L6*L26; 8 L1*L6*L33
6 L1*L8*L11; 2 L1*L8*L12; 81 L1*L8*L14; 263 L1*L8*L18
226 L1*L8*L29; 58 L1*L8*L33; 111 L1*L8*TY_R_; 1 L1*L11*L16
1226 L1*L17*L27; 358 L1*L18*L25; 93 L1*L20*L25; 96 L1*L25*TY_R_
1 L1*L28*L30; 55 L1*L29*RX_P; 44 L1*L31*TY_R_; 182 L2*L5*L8
69 L2*L27*L32; 414 L3*L3*L18; 36 L3*L5*L27; 58 L3*L10*L17
1 L3*L15*L18; 5 L3*L15*L27; 46 L3*L17*L33; 453 L3*L18*L22
433 L3*L18*L27; 255 L3*L18*L28; 71 L3*L18*L30; 163 L3*L28*L29
3 L3*L32*L32; 37 L3*L32*TY_R_; 295 L4*L4*RX_P; 576 L4*L6*TY_R_
55 L4*L10*L31; 421 L4*L11*L21; 1 L4*L13*L17; 2 L4*L13*L18
4 L4*L15*L17; 65 L4*L15*L29; 1532 L4*L17*L22; 1144 L4*L17*L23
115 L4*L17*L31; 2226 L4*L17*DROP_OHQ_Y; 180 L4*L22*L29; 218 L4*L24*L29
228 L4*L29*RY_P; 17 L5*L5*L8; 184 L5*L5*L28; 885 L5*L6*L25
1 L5*L8*L18; 57 L5*L8*L31; 230 L5*L8*DROP_OHP_YQ; 30 L5*L10*L17
141 L5*L11*L25; 1 L5*L12*L26; 1 L5*L12*L32; 2 L5*L12*L34
72 L5*L17*L32; 974 L5*L18*L25; 745 L5*L25*TY_R_; 4 L5*L30*L32
584 L6*L6*TY_R_; 1 L6*L15*L17; 188 L6*L18*L28; 3 L6*L22*L29
1429 L6*L26*TY_R_; 10 L6*L27*L31; 17 L7*L8*L11; 21 L8*L10*L25
2 L8*L12*L28; 2 L8*L14*L19; 2 L8*L15*RY_P; 17 L8*L18*L19
76 L8*L19*L23; 66 L8*L22*L25; 204 L8*L27*L29; 8 L8*L32*RY_P
4 L10*L10*L29; 503 L10*L21*L29; 2 L10*L22*L29; 286 L10*L29*L29
159 L10*L29*RX_P; 1 L10*L29*TX_R_; 71 L11*L15*L29; 141 L11*L17*L27
141 L11*L17*L29; 141 L11*L18*L25; 4 L11*L28*L29; 1 L12*L17*L23
1 L12*L21*L27; 3 L12*L28*L28; 1 L12*L28*C_OHD_Y; 201 L12*L28*TX_R_
3 L13*L18*L27; 5 L13*L27*L28; 1 L13*L27*L32; 201 L13*L28*TX_R_
2 L15*L17*L27; 2 L15*L17*L28; 2 L15*L20*L26; 2 L15*L20*L28
2 L15*L22*L29; 71 L15*L28*L29; 1 L15*L29*+OCF; 1 L15*L29*RX_Q
1 L15*L30*TY_R_; 1067 L16*TY_R_*TY_R_; 215 L17*L17*L22; 215 L17*L17*L23
480 L17*L17*L26; 400 L17*L18*L24; 190 L17*L18*L26; 1 L17*L19*L29
98 L17*L22*L22; 768 L17*L22*L24; 1485 L17*L22*L27; 340 L17*L22*+OCF
177 L17*L23*RY_P; 25 L17*L25*L33; 562 L17*L27*L27; 110 L17*L27*L30
1118 L17*L27*-OHD; 549 L17*L27*+OCF; 306 L17*L27*RY_Q; 1 L17*L28*L28
7 L17*L28*L30; 148 L17*L32*C_OHD_Y; 138 L17*C_OHD_Y*DROP_OHR_Y; 199 L18*L18*RX_Q
1 L18*L21*L29; 9 L18*L21*TY_R_; 11 L18*L22*L30; 83 L18*L24*L29
91 L18*L24*RX_P; 505 L18*L25*TY_R_; 83 L18*L27*L30; 617 L18*L27*RX_Q
93 L18*L28*L30; 11 L20*L29*RY_Q; 11 L21*L28*L32; 6 L24*L28*L30
110 L27*L28*L30; 114 L27*L29*L32; 262 L27*L29*L34; 193 L27*L29*-OHD
845 L27*L29*RY_Q; 5 L28*L28*RX_Q; 4 L28*L30*L30; 185 L28*RX_Q*TY_R_
1 L29*L32*RX_Q; 146 +OPQ*L17; 218 +OPQ*L29; 42 -DPQ*L2
345 -DPQ*L4; 41 -DPQ*L6; 345 -DPQ*L8; 179 +CPQ*L4
2 +CPQ*L11; 2 +CPQ*L15; 256 +CPQ*L18; 301 +CPQ*L20
1941 +CPQ*L27; 804 +CPQ*-OHD; 11 +CPQ*RX_P; 1155 +CPQ*DROP_OHR_Y
546 -DPR*L1; 83 -DPR*L6; 141 -DPR*L11; 25 -DPR*L19
192 -DPR*L23; 1038 -DPR*L27; 260 -DPR*DROP_OHP_YQ; 988 -DPR*DROP_OHQ_Y
1544 -DPR*TY_R_; 66 -DQR*L8; 12 -DQR*L15; 3 -OHY*L11
34 -OHY*L12; 100 -OHY*L14; 723 -OHY*L22; 489 -OHY*L24
94 -OHY*L31; 145 -OHY*L34; 773 -OHY*+OCF; 514 -OHY*DROP_OHP_YQ
1243 -OHY*RY_Q; 402 -OHY*TX_R_; 951 -OHY*TY_R_; 570 -HCY*L6
4 -HCY*L10; 34 -HCY*L12; 71 -HCY*L14; 231 -HCY*L16
70 -HCY*L20; 64 -HCY*L31; 378 -HCY*RY_P; 262 -HCY*TY_R_
33 -HFZ*L2; 52 -HFZ*L11; 251 -HFZ*L26; 4 -HFZ*C_OHD_Y
1 +DFZ*L17; 3 +DFZ*L27; 2 +DFZ*RX_Q; 313 +OCP*L0
221 +OCP*L3; 377 +OCP*L11; 1 +OCP*L14; 1144 +OCP*L25
122 +OCP*L30; 22 +OCP*L32; 37 +OCP*TY_R_; 258 -CDQ*L0
237 -CDQ*L9; 2 -CDQ*L13; 505 -CDQ*L18; 1093 -CDQ*L24
809 -CDQ*L27; 329 -CDQ*L28; 29 -CDQ*L32; 1 -CDQ*L34
140 -CDQ*C_OHD_Y; 301 -CDQ*DROP_OHQ_Y; 59 -CDQ*TX_R_; 573 -HFR*L4
553 -HFR*L6; 891 -HFR*L8; 246 -HFR*L15; 845 -HFR*L23
525 -HFR*L25; 7 -HFR*L31; 94 -HFR*L32; 43 -HFR*RX_Q
525 -HFR*DROP_OHR_Y; 1189 -HFR*TY_R_; 59 +CDR*L8; 1248 -DFR*L0
385 -DFR*L4; 584 -DFR*L6; 240 -DFR*L26; 173 -DFR*L32
153 -DFR*L33; 214 -DFR*+OCF; 111 -DFR*RX_Q; 76 -OYQ*L4
295 -HPQ*L3; 95 -HPQ*L7; 345 -HPQ*L9; 1 -HPQ*L11
1 -HPQ*L12; 2 -HPQ*L15; 134 -HPQ*L17; 176 -HPQ*L22
570 -HPQ*L27; 29 -HPQ*L33; 301 -HPQ*RX_Q; 15 -HPQ*RY_Q
164 -HPQ*TX_R_; 31 -YZR*L3; 6 -YZR*L5; 15 -YZR*L11
31 -YZR*L17; 16 -YZR*L31; 142 -YZR*DROP_OHQ_Y; 476 +OFY*L7
19 +OFY*L14; 848 +OFY*L26; 56 +OFY*L31; 141 +OFY*L34
120 +OFY*-OHD; 298 +OFY*+OCF; 188 +OFY*DROP_OHP_YQ; 799 +OFY*DROP_OHR_Y
21 -OYZ*L0; 8 -OYZ*L27; 12 -DZR*L22; 5 -DZR*L28
34 +FYZ*L3; 15 +FYZ*L11; 5 +FYZ*L18; 22 +FYZ*L23
6 +FYZ*L26; 3 +FYZ*L32; 72 +FYZ*-OHD; 208 +FZR*L0
43 +FZR*C_OHD_Y; 1 -DYZ*L1; 1 -DYZ*L18; 4 C_OHF_Y*L1
72 C_CDP_Q*L2; 798 C_FYR_Z*L6; 124 C_FYR_Z*L8; 160 C_FYR_Z*L10
15 C_FYR_Z*L15; 577 C_FYR_Z*L27; 3 C_FYR_Z*L32; 3 C_FYR_Z*L33
125 TPX_R_*L17; 117 Q_ORFH_YZ*L17; 167 Q_ORFH_YZ*L29; 609 Q_ORFY_Z*L29
574 Q_HYRF_Z*L4; 145 Q_HYRF_Z*L34; 577 Q_HYRF_Z*TY_R_
```

Upper bound: `-620871113/200000000`.

### Leaf RRTmmmmmmmmmmpm

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ +YZR -OFY`.

```c1top-geometry
P OHDYR +ODY
P OHDZR +ODZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHZR +YOZ
P YOCFZ -YFZ
P YODPR +YPR
P YODQR +YQR
P ZOHYR -ZHR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
P OHFYZ -OFZ
C OCF Y Z -CFZ 157/250
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
T OHR YZ 12 lower 347/500
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 347/500 1
t 199/250 1
```

```c1top-sum
1 L0*L3*L30; 4 L0*L15*L17; 13 L0*L16*L34; 136 L1*L1*L6
11 L1*L2*L3; 93 L1*L2*L6; 13 L1*L2*L18; 27 L1*L5*L12
35 L1*L6*L10; 179 L1*L6*L22; 71 L1*L6*L24; 46 L1*L6*L26
38 L1*L6*+OCF; 172 L1*L6*RY_Q; 111 L1*L8*L11; 138 L1*L8*L28
4 L1*L8*RY_P; 9 L1*L11*L16; 17 L1*L11*L25; 4 L1*L12*L18
4 L1*L15*L19; 119 L1*L17*L17; 3 L1*L21*L25; 2 L1*L25*L28
13 L1*+OCF*TY_R_; 12 L1*TX_R_*TY_R_; 20 L2*L3*L27; 66 L2*L4*TY_R_
4 L2*L10*L27; 89 L2*L17*L27; 204 L2*L25*TY_R_; 1 L2*L28*L32
2 L2*L30*L32; 107 L3*L3*L11; 4 L3*L4*L4; 6 L3*L5*L29
2 L3*L9*L28; 157 L3*L17*L28; 71 L3*L17*TY_R_; 24 L3*L18*L30
20 L3*L18*L31; 3 L3*L18*TY_R_; 204 L3*L24*L27; 14 L3*L25*L32
13 L3*L27*L28; 36 L3*L27*L32; 2 L3*L34*RY_P; 3 L4*L6*L32
182 L4*L7*L17; 68 L4*L8*L25; 76 L4*L17*L17; 25 L4*L17*L18
51 L4*L17*L29; 8 L4*L24*L28; 322 L5*L5*L25; 382 L5*L16*TY_R_
26 L5*L17*L30; 465 L5*L18*L25; 14 L5*L22*L30; 18 L5*L27*L30
15 L5*L30*TY_R_; 52 L6*L10*L25; 105 L6*L11*TY_R_; 2 L6*L14*TY_R_
31 L6*L15*L28; 121 L6*L17*L18; 237 L6*L17*L26; 18 L6*L19*L20
15 L6*L22*TY_R_; 1 L6*L23*L30; 2 L6*L26*L33; 4 L6*L26*TY_R_
2 L6*L31*RY_P; 1 L6*L32*RX_Q; 237 L6*DROP_OHP_YQ*TY_R_; 4 L7*L18*L28
1 L8*L18*L28; 2 L8*L20*TY_R_; 1 L8*L22*L30; 16 L8*L28*L29
11 L9*L27*L28; 21 L10*L10*L25; 55 L10*L16*TY_R_; 12 L10*L17*L24
55 L10*L18*L25; 1 L10*L20*L32; 52 L10*L25*L25; 6 L10*L29*TY_R_
3 L12*L17*RY_P; 3 L12*L18*L27; 3 L12*L25*TY_R_; 1 L13*L18*L24
3 L13*L18*DROP_OHP_YQ; 3 L14*L16*TY_R_; 2 L14*L25*L25; 87 L16*L16*TY_R_
11 L16*L28*L28; 7 L16*TY_R_*TY_R_; 6 L17*L17*L24; 6 L17*L17*L32
71 L17*L18*L20; 42 L17*L18*L27; 9 L17*L18*L32; 50 L17*L18*TX_R_
76 L17*L22*L29; 78 L17*L22*L30; 14 L17*L22*L32; 17 L17*L22*C_OHD_Y
178 L17*L24*L28; 2 L17*L24*L30; 5 L17*L24*L31; 20 L17*L24*L32
29 L17*L24*DROP_OHQ_Y; 2 L17*L27*L28; 11 L17*L28*-OHD; 9 L17*L32*RY_P
17 L17*L32*DROP_OHQ_Y; 28 L17*L32*TY_R_; 70 L17*L33*RX_Q; 67 L18*L20*L25
17 L18*L20*L28; 130 L18*L22*L25; 10 L18*L23*L30; 24 L18*L24*L30
30 L18*L25*DROP_OHP_YQ; 20 L18*L26*L30; 38 L18*L27*L27; 61 L18*L27*DROP_OHQ_Y
3 L18*L30*L30; 7 L18*L30*DROP_OHP_YQ; 30 L18*L30*TY_R_; 25 L18*L32*RX_Q
1 L19*TX_R_*TY_R_; 29 L20*L27*TY_R_; 4 L20*L30*TY_R_; 36 L20*RX_P*TY_R_
1 L21*L21*L34; 169 L22*L26*L27; 6 L24*L28*L30; 1 L24*L28*L32
52 L24*L34*TY_R_; 53 L25*L28*L29; 1 L25*TY_R_*TY_R_; 16 L27*L27*L29
19 L27*L27*L32; 4 L27*L30*RX_Q; 4 L28*L30*L30; 1 L28*L30*L31
1 L28*L34*RX_Q; 3 L30*TY_R_*TY_R_; 7 +OCF*RY_Q*TY_R_; 69 +HCD*L17
68 +OPQ*L27; 227 +CPQ*L6; 50 +CPQ*L17; 181 +CPQ*L22
51 +CPQ*L30; 17 +CPQ*-OHD; 190 +CPQ*+OCF; 50 +CPQ*RY_P
52 +CPQ*RY_Q; 229 +CPQ*TX_R_; 326 +CPQ*TY_R_; 332 -DPR*L5
57 -DPR*L10; 3 -DPR*L12; 3 -DPR*L14; 475 -DPR*L17
5 -DPR*L18; 4 -DPR*L30; 173 -DPR*+OCF; 2 -DPR*C_OHD_Y
570 -DPR*DROP_OHP_YQ; 1 -DPR*TY_R_; 130 -DQR*L18; 13 +OCY*L17
35 -HCY*L7; 36 -HCY*L15; 11 -HCY*L23; 39 -HCY*L30
45 -HCY*L31; 1 -HCY*L32; 48 -HCY*DROP_OHQ_Y; 303 -HCY*TX_R_
271 -HFY*L1; 247 -HFY*L2; 255 -HFY*L10; 36 -HFY*L14
4 -HFY*L18; 19 -HFY*L24; 66 -HFY*L26; 45 -HFY*L32
45 -HFY*L33; 163 -HFY*C_OHD_Y; 31 -HFZ*L1; 27 -HFZ*L4
15 -HFZ*L27; 5 +OCP*L6; 235 +OCP*L25; 2 +OCP*L32
108 +OCP*RX_Q; 9 -CDQ*L0; 229 -CDQ*L5; 1 -CDQ*L11
20 -CDQ*L17; 213 -CDQ*L20; 104 -CDQ*L24; 9 -CDQ*L26
7 -CDQ*L30; 44 -CDQ*L32; 30 -CDQ*L33; 223 -HFR*L2
1 -HFR*L6; 323 -HFR*L9; 83 -HFR*L10; 10 -HFR*L22
12 -HFR*L27; 2 -HFR*-OHD; 19 -DFR*L0; 26 -DFR*L24
1 -DFR*L33; 16 -DFR*L34; 18 -DFR*DROP_OHQ_Y; 143 +HDR*L16
31 +HYZ*L1; 15 +HYZ*L27; 1 -CYP*TY_R_; 75 -FPQ*L17
3 -FPQ*L26; 67 -OZR*L5; 50 -OZR*L9; 2 -OZR*L17
270 -OZR*L22; 89 -OZR*L24; 26 -OZR*L28; 30 -OZR*L33
39 -OZR*L34; 54 -OZR*TY_R_; 8 -HPQ*L4; 64 -HPQ*L20
46 -HPQ*L24; 132 -HPQ*RX_P; 173 -HPQ*RX_Q; 4 -YZP*L1
2 -YZP*L24; 596 +YZR*L4; 596 +YZR*L5; 61 +YZR*L18
91 +YZR*L24; 54 +YZR*L26; 26 +YZR*C_OHD_Y; 92 -OFY*L2
27 -OFY*L11; 86 -OFY*L15; 4 -OFY*L19; 267 -OFY*L24
185 -OFY*L26; 273 -OFY*-OHD; 223 -OFY*C_OHD_Y; 42 -OFY*TY_R_
2 -DZR*L19; 61 -OYZ*L18; 2 -PQR*L8; 36 -CFZ*L4
36 -CFZ*L11; 35 -CFZ*L28; 6 C_OHR_YZ*L4; 55 C_OFR_YZ*L3
51 C_OFR_YZ*L11; 280 C_OYR_Z*L6; 21 C_OYR_Z*L10; 89 C_OYR_Z*L12
39 C_OYR_Z*L14; 143 C_OYR_Z*L25; 2 C_OYR_Z*L27; 73 C_OYR_Z*L28
303 C_OYR_Z*+OCF; 14 C_OYR_Z*DROP_OHP_YQ; 63 C_OYR_Z*RY_P; 5 C_CPR_Q*L18
1 TPY_R_*L29; 1 Q_OZFH_Y*L4; 86 Q_OZFH_Y*L10; 17 Q_OZFH_Y*L26
58 Q_ODRY_Z*L6; 24 Q_HYCP_Q*L17; 1 Q_CPDR_Q*L8
```

Upper bound: `-640955201/100000000`.

### Leaf RRTmmmmmmmmmmpp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP -YZQ +YZR +OFY`.

```c1top-geometry
C OHF Y Z +FOZ 157/250
P OHDFY +ODY
P OHDZR +ODZ
P OHFYZ -OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODPR +YPR
P YODQR +YQR
P ZOHYR -ZHR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHQR -PQR
```

```c1top-bounds
T OHF Y 3 lower 279/1000
T OHZ Y 6 lower 279/1000
T OHR YZ 12 lower 347/500
S R - 2 upper 628/721
Y R - 13 lower 296687/360500
B y Q 11 upper 1937737/3244500
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 299/500
r 347/500 1
t 411/500 1
```

```c1top-sum
34 L0*L2*L17; 44 L0*L7*L27; 326 L0*L17*L25; 351 L0*L17*L26
30 L0*L20*L29; 119 L0*L25*L27; 469 L0*L27*L29; 30 L0*L29*L32
108 L0*L29*RY_P; 26 L1*L2*L2; 122 L1*L2*L6; 72 L1*L6*L6
190 L1*L6*L25; 545 L1*L6*L26; 259 L1*L7*L17; 45 L1*L8*L16
375 L1*L8*L26; 28 L1*L8*L31; 136 L1*L8*DROP_OHQ_Y; 99 L1*L16*L17
64 L1*L16*L18; 28 L1*L19*L29; 216 L1*L25*L25; 17 L1*L25*L32
22 L2*L4*L29; 340 L2*L6*TY_R_; 26 L3*L3*L18; 7 L3*L4*L4
67 L3*L7*L22; 49 L3*L10*L17; 13 L3*L17*L29; 4 L3*L17*L31
281 L3*L18*L21; 188 L3*L18*L27; 16 L3*L18*L30; 88 L3*L18*L32
89 L3*L18*TX_R_; 202 L3*L27*L28; 9 L3*L27*L29; 8 L4*L4*L31
172 L4*L5*L24; 51 L4*L17*L25; 92 L4*L17*L28; 796 L4*L17*+OCF
250 L4*L17*RX_Q; 391 L4*L17*TY_R_; 163 L4*L22*L29; 3 L4*L24*L31
230 L4*L24*TY_R_; 3 L4*L29*L31; 105 L4*L29*DROP_OHP_YQ; 72 L4*L29*TX_R_
36 L5*L17*L32; 482 L5*L18*L25; 92 L5*L25*L28; 29 L5*L26*L29
41 L5*L28*L30; 127 L6*L6*TY_R_; 110 L6*L10*L17; 316 L6*L17*L27
156 L6*L17*+OCF; 169 L6*L17*RX_P; 216 L6*L25*TY_R_; 69 L7*L10*L29
6 L7*L17*L19; 13 L7*L18*L18; 1 L7*L24*L32; 46 L7*L27*L32
98 L7*L28*L29; 29 L10*L17*L17; 117 L10*L21*L29; 267 L11*L27*L29
68 L16*L16*L17; 169 L16*L17*L29; 49 L16*L17*TY_R_; 3 L16*L29*L32
49 L17*L17*L26; 29 L17*L17*L34; 305 L17*L17*DROP_OHQ_Y; 13 L17*L18*L33
32 L17*L19*RY_P; 42 L17*L21*L33; 61 L17*L22*L22; 80 L17*L22*L31
432 L17*L27*+OCF; 361 L17*L27*C_OHD_Y; 169 L17*L27*TX_R_; 135 L17*L27*TY_R_
19 L17*L30*C_OHD_Y; 30 L17*L30*DROP_OHP_YQ; 4 L17*L30*RX_P; 7 L17*L30*RY_Q
58 L17*L32*-OHD; 45 L17*L32*DROP_OHQ_Y; 169 L17*TX_R_*TY_R_; 26 L18*L18*L21
13 L18*L18*L31; 7 L18*L22*L30; 37 L18*L22*RX_P; 196 L18*L24*L27
29 L18*L24*L32; 28 L18*L27*L30; 26 L18*L28*L30; 289 L18*L28*RX_Q
9 L18*L29*RY_P; 43 L19*L27*L29; 275 L20*L27*L27; 131 L21*L22*L29
7 L22*L27*L30; 15 L22*L29*L30; 9 L23*L24*L29; 20 L24*L29*RY_P
153 L26*L27*L29; 20 L26*L29*RX_Q; 82 L27*L29*DROP_OHP_YQ; 2 L27*L30*+OCF
31 L27*L30*TY_R_; 115 L28*L29*TX_R_; 5 L28*L30*RX_Q; 2 L29*L33*RY_P
1 L30*L32*TY_R_; 161 +OPQ*L29; 331 +CPQ*L0; 366 +CPQ*L21
131 +CPQ*L24; 376 +CPQ*L27; 189 +CPQ*L28; 36 +CPQ*L30
54 +CPQ*L31; 7 +CPQ*L32; 129 +CPQ*RY_P; 580 +CPQ*DROP_OHQ_Y
89 +CPQ*TX_R_; 105 -DPR*L1; 337 -DPR*L5; 22 -DPR*L29
29 -DPR*L33; 332 -DPR*+OCF; 196 -DPR*TY_R_; 114 -DQR*L28
101 -OHY; 120 -OHY*L24; 641 -OHY*L26; 52 -OHY*L31
47 -OHY*RX_P; 231 -OHY*DROP_OHQ_Y; 653 -OHY*TX_R_; 207 -HCY*L1
117 -HCY*L21; 220 -HCY*L24; 267 -HCY*L26; 207 -HCY*C_OHD_Y
49 -HCY*DROP_OHP_YQ; 167 -HCY*TX_R_; 31 +OCP*L20; 534 +OCP*L25
36 +OCP*L28; 23 +OCP*L32; 38 +OCP*RX_Q; 18 +OCQ*L17
433 -CDQ*L18; 61 -CDQ*L22; 569 -CDQ*L27; 3 -CDQ*+OCF
250 -CDQ*C_OHD_Y; 47 -CDQ*DROP_OHQ_Y; 228 -CDQ*TX_R_; 193 -CDQ*TY_R_
141 -HFR*L7; 387 -HFR*L8; 73 -HFR*L19; 216 -HFR*L25
119 -HFR*L26; 24 -HFR*L31; 33 -HFR*L32; 453 -HFR*+OCF
497 -HFR*DROP_OHP_YQ; 26 -HFR*RY_Q; 268 -DFR*L6; 32 -DFR*L14
32 -DFR*L15; 163 -DFR*L22; 34 -DFR*L26; 2 -DFR*L33
87 -DFR*-OHD; 296 -DFR*DROP_OHP_YQ; 199 -DFR*DROP_OHQ_Y; 572 -HPQ*L21
154 -HPQ*L24; 114 -HPQ*L27; 184 -HPQ*L29; 69 -HPQ*L30
65 -HPQ*TX_R_; 31 +OFY*L6; 287 +OFY*L24; 267 +OFY*L26
13 +OFY*L31; 382 +OFY*DROP_OHP_YQ; 124 +OFY*RX_P; 100 +OFY*TX_R_
38 C_OHP_YQ*L29; 387 C_OYR_Z*L29; 63 C_CDP_Q*L17; 70 C_CDP_Q*L24
422 Q_ORFY_Z*L17
```

Upper bound: `-439631447/100000000`.

### Leaf RRTmmmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ -YZP +YZQ`.

```c1top-geometry
P OHDYR +ODY
P OHDZR +ODZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHZQ +YOZ
P YODZQ -YDZ
P YODZR +YZR
P YODPR +YPR
P YODQR +YQR
P YOZPQ +YPQ
P YHDFZ -YFZ
P ZOHDY -ZHD
P ZOHDR -ZHR
P ZOHYQ -ZHQ
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P ZOYPQ +ZPQ
P ZHDFQ -ZFQ
P POHZQ +PHZ
P POHQR -PQR
P POFZQ +PFZ
```

```c1top-bounds
```

Exclusion: `cluster OHP Y HPY ZQ`.

### Leaf RRTmmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR -HPQ +YZP`.

```c1top-geometry
P OHDYR +ODY
P OHDZR +ODZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHZP +YOZ
P YODZP -YDZ
P YODZR +YZR
P YODPR +YPR
P YODQR +YQR
P YHDFZ -YFZ
P ZOHDY -ZHD
P ZOHDR -ZHR
P ZOHYP -ZHP
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P ZHDFP -ZFP
P POHQR -PQR
C OYP Z Q +YPQ 433351/628000
P YOZPQ +YZQ
P ZOHYQ -ZHQ
P ZHDFQ -ZFQ
P POYZQ -PZQ
```

```c1top-bounds
```

Exclusion: `mesh HOPZYQ -1`.

### Leaf RRTmmmmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR -OZR +HPQ`.

```c1top-geometry
P OHDYR +ODY
P OHDZR +ODZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YODPR +YPR
P YODQR +YQR
P ZOCDR +ZCR
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ -PYQ
P POFQR -PQR
```

```c1top-bounds
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
8 L0*L0*L21; 87 L0*L4*L21; 51 L0*L7*L32; 2 L0*L15*L29
35 L0*L17*L33; 238 L0*L27*DROP_OHQ_Y; 56 L0*L29*L31; 71 L1*L2*L29
72 L1*L12*L17; 72 L1*L13*L17; 2 L1*L13*L28; 420 L1*L17*DROP_OHQ_Y
339 L1*L17*DROP_OHR_Y; 239 L1*L18*RX_Q; 143 L1*L27*L29; 43 L1*L28*DROP_OHQ_Y
88 L2*L2*L33; 95 L2*L2*TY_R_; 32 L2*L5*L33; 17 L2*L6*L33
67 L2*L20*L33; 24 L2*L24*L33; 101 L2*L27*L28; 51 L2*L28*C_OHD_Y
55 L2*L33*TY_R_; 104 L3*L3*L27; 534 L3*L4*L4; 426 L3*L18*L20
47 L3*L18*L32; 624 L3*L18*TY_R_; 50 L3*L29*L33; 10 L3*L32*TX_R_
205 L4*L4*L29; 44 L4*L6*L31; 202 L4*L7*L27; 144 L4*L7*RY_P
9 L4*L17*L18; 101 L4*L20*L31; 69 L4*L24*L31; 47 L4*L26*L31
142 L4*L27*L29; 71 L4*L27*L30; 26 L4*L29*-OHD; 2 L4*L29*RX_P
119 L4*L29*DROP_OHQ_Y; 48 L4*L32*TX_R_; 1172 L5*L5*L20; 31 L5*L17*L31
380 L5*L22*L25; 749 L5*L22*L27; 70 L5*L28*+OCF; 136 L6*L6*TY_R_
346 L6*L18*TY_R_; 165 L6*L26*L28; 4 L6*L31*L32; 35 L7*L19*L29
178 L7*L22*L28; 17 L7*L22*L30; 2 L7*L28*L28; 43 L7*L32*DROP_OHR_Y
10 L14*L22*L29; 2 L15*L18*L29; 1 L15*L29*L32; 6 L16*L25*L32
439 L16*L26*L28; 21 L17*L17*L28; 52 L17*L17*TY_R_; 43 L17*L18*L24
4 L17*L19*L30; 116 L17*L20*RY_Q; 134 L17*L22*L23; 193 L17*L22*DROP_OHQ_Y
30 L17*L26*L31; 45 L17*L27*-OHD; 17 L17*L28*L33; 1 L17*L31*L32
2 L17*L32*L32; 4 L17*-OHD*RY_P; 220 L18*L21*L22; 24 L18*L21*L33
128 L18*L21*C_OHD_Y; 654 L18*L22*L27; 15 L18*L31*DROP_OHR_Y; 11 L18*RY_P*RX_Q
40 L19*L19*L29; 77 L19*L22*L29; 232 L19*L24*L29; 102 L19*L28*TX_R_
175 L19*L29*RX_Q; 37 L19*L29*RY_Q; 70 L20*L26*L29; 169 L20*L27*+OCF
172 L20*L28*+OCF; 459 L21*L28*DROP_OHQ_Y; 559 L22*L27*RY_P; 428 L22*L27*RY_Q
48 L23*L27*L33; 106 L25*L26*L28; 106 L25*L27*L28; 19 L25*L27*+OCF
19 L25*+OCF*TY_R_; 178 L27*DROP_OHQ_Y*RX_Q; 51 L28*L28*RX_P; 31 L28*L29*RY_P
4 L28*L30*L31; 38 L28*L31*DROP_OHR_Y; 59 L28*L31*TY_R_; 36 L28*L32*TX_R_
24 L28*L33*TX_R_; 76 L28*RX_P*TX_R_; 4 L29*L30*L32; 11 L29*-OHD*DROP_OHP_Y
2 L31*L31*TY_R_; 110 -OHF*L17; 9 +HCF*L17; 54 +HDF*L17
223 +OPQ*L28; 29 +OQR*L28; 30 -DPQ*L7; 33 -DPR*L1
320 -DPR*L5; 43 -DPR*RX_Q; 50 -DQR*L7; 2 +OCZ*L28
2 -HFZ*L28; 7 +OCP; 321 +OCP*L1; 401 +OCP*L6
29 +OCP*L32; 75 +OCP*RY_P; 386 +OCP*RX_Q; 176 +OCP*DROP_OHR_Y
514 +OCP*TY_R_; 23 -HFP*L27; 446 +OCQ*L29; 112 -CDQ*L1
411 -CDQ*L6; 295 -CDQ*L20; 32 -CDQ*-OHD; 61 -CDQ*+OCF
233 -CDQ*DROP_OHP_Y; 307 -CDQ*DROP_OHR_Y; 644 -CDQ*TY_R_; 242 -OFQ*L17
182 -DFR*L4; 136 -DFR*L6; 34 -DFR*L17; 17 -DFR*L31
73 -DFR*L32; 143 -DFR*RY_P; 135 -DFR*DROP_OHQ_Y; 336 -FPQ*L20
20 -FPQ*L32; 742 -FPQ*-OHD; 281 -FPQ*+OCF; 58 -FPQ*RX_P
457 -FPQ*DROP_OHQ_Y; 181 -FPQ*RY_Q; 434 -FPQ*DROP_OHR_Y; 657 -FPQ*TY_R_
96 +HPQ*L5; 265 +HPQ*L7; 37 +HPQ*L31; 50 +HPQ*L32
51 +HPQ*-OHD; 1130 +HPQ*DROP_OHQ_Y; 449 +HPQ*RY_Q; 100 +HPQ*DROP_OHR_Y
241 +HPQ*TX_R_; 657 +HPQ*TY_R_; 150 +HQR*L17; 79 +CQR*L28
55 C_ODP_Q*L29; 99 C_CDP_Q*L29; 6 C_CDP_Q*L32; 135 Q_OCFH_Y*L17
34 Q_ORFH_YZ*L3; 33 Q_OCPD_Q*L28; 79 Q_CPDR_Q*L0; 151 Q_CPDR_Q*L22
```

Upper bound: `-18397673753/500000000`.

### Leaf RRTmmmmmmpmmmm

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ -ODZ`.

```c1top-geometry
C OCD Z Y -DOY 140829/250000
P OHDFZ -OFZ
P OHDYZ -OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCZ +DHZ
P DOHYZ +DYZ
P DOCZP +DZP
P DOCZQ +DZQ
P DOCZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODZR +YZR
P YODPR +YPR
P YODQR +YQR
P YHDFZ -YFZ
P ZOHFR -ZHR
P POHQR -PQR
C DYP Z Q -YPQ 106644153/157000000
P POYZQ +PZQ
```

```c1top-bounds
T OCD Z 1 lower 93/299
T OHZ Y 6 lower 279/1000
E OD ZPQ 2 lower 837/1000
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
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 73/125 459/500
m 109/500 153/250
r 663/1000 1
t 939/1000 1
```

```c1top-sum
53 L0*L0*L3; 13 L0*L0*L11; 18 L0*L2*L30; 109 L0*L3*L3
19 L0*L3*L13; 13 L0*L5*L11; 1 L0*L7*L30; 5 L0*L8*L33
13 L0*L10*L28; 1 L0*L11*L31; 19 L0*L12*TY_R_; 16 L0*L15*RX_Q
14 L0*L16*L30; 39 L0*L17*L24; 13 L0*L18*L30; 12 L0*L24*L27
63 L0*L28*L29; 137 L0*L28*TX_R_; 3 L1*L1*L9; 6 L1*L1*L21
51 L1*L3*L17; 7 L1*L3*L34; 64 L1*L4*L6; 79 L1*L5*L20
5 L1*L6*L6; 90 L1*L6*L12; 8 L1*L7*L18; 4 L1*L7*L32
11 L1*L9*L25; 70 L1*DROP_OHP_YQ*TY_R_; 126 L2*L3*L17; 16 L2*L4*L32
93 L2*L5*L12; 329 L2*L5*L26; 39 L2*L5*L34; 164 L2*L5*TY_R_
3 L2*L12*L25; 10 L2*L12*L32; 13 L2*L13*L28; 59 L2*L19*TY_R_
11 L2*L28*L30; 3 L2*L32*DROP_OHP_YQ; 51 L3*L3*L28; 540 L3*L4*L27
11 L3*L6*TY_R_; 16 L3*L7*L11; 37 L3*L10*L18; 101 L3*L11*L21
8 L3*L11*L25; 21 L3*L11*L31; 59 L3*L11*RX_P; 28 L3*L11*TX_R_
1 L3*L13*L30; 13 L3*L13*L34; 126 L3*L14*L18; 81 L3*L18*L21
26 L3*L22*L25; 17 L3*L22*L26; 13 L4*L4*L30; 3 L4*L5*L8
476 L4*L6*TY_R_; 6 L4*L9*L32; 14 L4*L11*L24; 2 L4*L12*L32
85 L4*L13*L21; 105 L4*L13*RX_Q; 85 L4*L14*L17; 13 L4*L17*L17
147 L4*L17*DROP_OHQ_Y; 17 L4*L25*L27; 2 L4*L29*L30; 37 L5*L6*L26
164 L5*L8*L20; 22 L5*L9*L27; 16 L5*L9*L30; 114 L5*L12*L25
62 L5*L14*L20; 102 L5*L14*L25; 163 L5*L22*RX_Q; 33 L5*L27*L34
123 L5*DROP_OHP_YQ*TY_R_; 6 L6*L9*L32; 7 L6*L10*L30; 1 L6*L12*L25
34 L6*L15*L17; 19 L6*L17*C_OHD_Y; 9 L6*L21*L32; 5 L6*L27*L29
80 L6*L28*L29; 37 L7*L10*L22; 104 L7*L10*L27; 2 L7*L12*L27
1 L7*L13*L24; 6 L7*L22*L31; 99 L7*L22*TY_R_; 4 L7*L27*DROP_OHR_Y
13 L8*L12*L28; 51 L8*L14*L17; 25 L8*L15*L18; 3 L8*L15*L31
39 L8*L24*TY_R_; 38 L8*L27*DROP_OHR_Y; 34 L8*L28*L29; 24 L8*L28*RX_P
32 L8*L28*RY_P; 2 L9*L22*L32; 23 L9*L27*L32; 96 L9*L27*RY_Q
26 L9*L32*+OCF; 28 L9*L32*DROP_OHP_YQ; 28 L10*L17*L31; 144 L10*L17*+OCF
9 L10*L20*L30; 11 L10*L22*L30; 1 L10*L24*L25; 3 L10*L25*L32
23 L11*L13*L22; 16 L11*L13*RX_Q; 13 L11*L14*L17; 41 L11*L17*TY_R_
26 L11*L18*L18; 1 L11*L18*L32; 24 L11*L18*RY_P; 87 L11*L21*L27
33 L11*L22*L27; 8 L11*L22*RY_P; 33 L11*L27*RY_Q; 12 L12*L17*L27
1 L12*L17*L29; 108 L12*L17*RY_Q; 26 L12*L18*L28; 34 L12*L18*L29
1 L12*L24*L30; 19 L12*L27*L28; 20 L12*L27*L32; 218 L12*L27*RY_Q
6 L12*L32*L34; 2 L12*L32*C_OHD_Y; 1 L13*L17*L17; 2 L13*L17*L20
1 L13*L17*TX_R_; 12 L13*L18*L24; 6 L13*L24*RX_Q; 48 L13*L27*RY_P
65 L13*L28*L29; 1 L13*L30*DROP_OHQ_Y; 198 L14*L17*+OCF; 18 L14*L17*C_OHD_Y
108 L14*L17*RX_Q; 3 L14*L24*L32; 44 L15*L28*RX_P; 7 L15*L30*TY_R_
33 L16*L17*L25; 19 L16*L18*TY_R_; 17 L16*L28*L31; 5 L16*L30*TY_R_
70 L16*C_OHD_Y*TY_R_; 198 L17*L18*L22; 18 L17*L22*DROP_OHP_YQ; 224 L17*L22*RY_P
32 L17*L22*RY_Q; 33 L17*L24*DROP_OHP_YQ; 84 L17*L25*L28; 16 L17*L25*RY_P
25 L17*L27*L29; 10 L17*L27*DROP_OHP_YQ; 132 L17*L27*RY_Q; 8 L17*L32*TX_R_
126 L17*+OCF*+OCF; 61 L17*RY_P*RY_Q; 34 L18*L21*L21; 123 L18*L22*RX_Q
5 L18*L24*L27; 26 L18*L24*RX_Q; 17 L18*L30*RY_Q; 17 L18*L31*RX_Q
11 L18*L34*RX_Q; 32 L19*L27*L29; 13 L19*L28*L30; 8 L20*L32*DROP_OHP_YQ
295 L22*L25*L27; 295 L22*L27*DROP_OHR_Y; 21 L22*L30*TY_R_; 47 L22*RX_P*RX_Q
12 L24*L26*L28; 56 L27*L28*DROP_OHQ_Y; 5 L27*RY_P*TX_R_; 182 L27*DROP_OHQ_Y*RY_Q
24 L28*L29*DROP_OHP_YQ; 5 L29*L32*DROP_OHP_YQ; 4 L31*L32*+OCF; 5 L31*L32*TY_R_
9 L32*L34*DROP_OHQ_Y; 157 -OHF*TY_R_; 284 +HDF*L5; 61 +HDF*L27
6 +HDF*L32; 74 +OPQ*L6; 27 +OPQ*L14; 378 +OPQ*L20
111 -DPQ*L17; 74 +CPQ*L9; 279 +CPQ*L22; 43 +CPQ*L31
297 +CPQ*RY_Q; 26 +CPQ*TX_R_; 83 -DPR*L5; 12 -DPR*L12
60 -DPR*L18; 50 -DPR*RY_P; 95 -DQR*L1; 38 -DQR*L28
42 -OHY*L7; 61 -OHY*L27; 24 -OHY*L30; 51 -OHY*L31
30 -OHY*TX_R_; 10 -HCY*L1; 63 -HCY*L7; 59 -HCY*L12
10 -HCY*L14; 42 -HCY*L21; 24 -HCY*L31; 64 -HCY*RX_P
63 -HCY*RY_P; 19 -HCY*DROP_OHR_Y; 40 -HFY*L3; 25 -HFY*L12
67 -HFY*L26; 41 -HFY*DROP_OHP_YQ; 8 -HFY*DROP_OHQ_Y; 37 -HFY*RY_Q
37 -HFY*TY_R_; 45 +HCZ*L8; 25 +HCZ*L17; 59 +CDZ*L6
137 +CDZ*L21; 41 +CDZ*L22; 250 +CDZ*L27; 135 +CDZ*RY_P
223 +CDZ*TY_R_; 206 +OCP*L3; 18 +OCP*L6; 174 +OCP*L12
17 +OCP*L26; 76 +OCQ*L5; 107 -CDQ*L13; 45 -CDQ*L21
24 -CDQ*RX_P; 85 -HFR*L6; 6 -HFR*L33; 19 -HFR*+OCF
194 -HFR*C_OHD_Y; 437 -DFR*L4; 102 -DFR*L12; 25 -DFR*L17
42 -DFR*L19; 75 -DFR*L25; 43 -DFR*RY_Q; 80 -DFR*TX_R_
7 +ODR*L8; 85 +HDR*L6; 39 +HYZ*L18; 54 -CYZ*L17
6 +HYQ*L28; 134 -CYQ*L17; 1 +FYR*L25; 3 -FPQ*L30
128 -OYP*L17; 115 -YZQ*L2; 23 -ODZ*L6; 126 -ODZ*L23
39 -ODZ*L30; 34 -ODZ*L31; 12 -ODZ*L32; 107 -ODZ*RX_P
58 -ODZ*RY_P; 5 -OYZ*L30; 10 -OYZ*L32; 32 -CZQ*L10
43 -CZQ*L16; 128 -CZQ*L21; 62 -CZQ*L26; 188 -CZQ*RX_Q
23 +CQR*L22; 14 +DYZ*L27; 16 +DZQ*L1; 13 +DZQ*L10
60 +DZQ*RX_Q; 102 -DZR*L5; 6 -DZR*L28; 6 +FZR*L28
3 +YZR*L32; 43 -YPQ; 55 -YPQ*L6; 65 -YPQ*L12
27 -YPQ*L14; 102 -YPQ*L22; 73 -YPQ*L27; 23 -YPQ*L31
137 -YPQ*DROP_OHP_YQ; 294 -YPQ*DROP_OHQ_Y; 88 -YPQ*RY_Q; 8 -ZPQ*L34
52 C_ODP_ZQ*L2; 41 C_ODP_ZQ*L14; 37 C_ODP_ZQ*L27; 26 C_ODP_ZQ*L29
45 C_ODP_ZQ*+OCF; 136 C_ODP_ZQ*DROP_OHP_YQ; 27 C_ODP_ZQ*DROP_OHR_Y; 90 C_ODQ_Z*L17
13 C_CDP_Q*L17; 8 C_CFP_Q*L27; 1 C_CYP_Q*L28; 42 C_CZP_Q*L11
27 C_CZP_Q*L17; 185 C_CZP_Q*L20; 59 C_CZP_Q*L29; 13 C_CZP_Q*L31
101 C_CZP_Q*+OCF; 70 C_CZP_Q*C_OHD_Y; 9 C_CPR_Q*L18; 46 TPX_R_*L9
301 TPX_R_*L28; 43 SP_OCDH_YZ_CH-1*L17; 18 SP_OCDH_YZ_CH1*L17; 3 Q_OCPH_YQ*L30
6 Q_OZFH_Y*L28; 45 Q_OQRH_Y*L17; 29 Q_OCPD_ZQ*L6; 172 Q_OCQD_Z*L2
64 Q_OCQD_Z*L10; 33 Q_OCPY_Q*TY_R_; 9 Q_OCPZ_Q*L1; 10 Q_OCPZ_Q*L10
5 SP_CPDY_ZQ_CD-1*L32; 14 SP_CPDY_ZQ_PY1*TY_R_; 14 Q_CPDR_Q*L11; 5 Q_CPDR_Q*L22
25 Q_CPZY_Q*L6
```

Upper bound: `-2001081013/500000000`.

### Leaf RRTmmmmmmpmmmpmmmm

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ +ODZ -OFY -HDZ -HZP -CZR`.

```c1top-geometry
C OCR Z P -CRP 157/250
C OCR Z Q -CRQ 157/250
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOZPQ -HZQ
P CODZP -CZP
P CODZQ -CZQ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ -YFZ
P YODPR +YPR
P YODQR +YQR
P ZOHYR -ZYR
P ZOCPR +ZPR
P ZOCQR +ZQR
P POHZQ +PZQ
P POHQR -PQR
C OCF Y Z -CFZ 157/250
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
2672 L0*L5*L17; 162 L0*L15*L17; 57 L0*L27*L32; 517 L0*L27*RY_Q
1436 L1*L3*L5; 648 L1*L3*L6; 402 L1*L4*L27; 232 L1*L5*L6
29 L1*L6*L17; 464 L1*L6*L27; 52 L1*L17*L21; 392 L1*L17*L27
182 L1*L17*L30; 2462 L1*L17*+OCF; 157 L2*L2*L32; 391 L2*L4*L28
2355 L2*L13*L28; 37 L2*L13*L32; 200 L2*L14*L28; 142 L2*L21*L28
648 L2*L25*L28; 877 L2*L27*L27; 650 L2*L27*+OCF; 270 L2*L27*DROP_OHR_Y
3068 L2*L27*TY_R_; 3 L2*L30*L32; 179 L2*L32*TY_R_; 2088 L3*L3*L18
482 L3*L5*L13; 2408 L3*L5*TY_R_; 648 L3*L7*L27; 558 L3*L12*L18
515 L3*L12*L27; 15 L3*L12*L28; 487 L3*L14*L17; 1224 L3*L17*RY_Q
1003 L3*L18*L18; 894 L3*L18*L24; 162 L3*L18*L30; 4124 L3*L18*TY_R_
245 L3*L25*L27; 58 L4*L12*L28; 196 L4*L13*L27; 1741 L4*L17*TY_R_
290 L4*L25*L28; 908 L5*L5*L25; 51 L5*L6*L14; 464 L5*L6*TY_R_
260 L5*L12*L18; 155 L5*L13*L32; 494 L5*L17*L30; 439 L5*L17*L31
371 L5*L18*L25; 155 L5*L18*L30; 551 L5*L21*L27; 134 L5*L25*TY_R_
155 L5*L27*TX_R_; 240 L5*L28*L30; 228 L5*L30*TY_R_; 63 L6*L14*TY_R_
63 L6*L15*L28; 6 L6*L17*L32; 1126 L6*L27*DROP_OCR_Z; 39 L7*L15*L17
12 L7*L17*RY_P; 314 L7*L27*L33; 1433 L7*L27*TY_R_; 414 L10*L27*DROP_OHP_YQ
414 L11*L27*DROP_OHP_YQ; 314 L12*TY_R_*TY_R_; 925 L13*L22*L27; 314 L13*L27*L27
102 L13*L28*L30; 21 L13*L30*L32; 206 L14*L17*TY_R_; 103 L14*L27*L30
21 L14*L30*L30; 196 L15*L17*L32; 18 L15*L17*L33; 178 L15*L18*L30
144 L15*L24*L28; 1260 L15*L27*+OCF; 23 L15*L28*L30; 289 L16*L17*L33
367 L17*L18*L32; 210 L17*L18*L33; 686 L17*L19*L27; 1627 L17*L22*L23
2417 L17*L22*-OHD; 1627 L17*L23*L23; 64 L17*L24*L31; 472 L17*L25*L28
64 L17*L25*L31; 1905 L17*L26*+OCF; 1452 L17*L26*DROP_OCR_Z; 40 L17*L27*RX_P
376 L17*L27*RY_Q; 173 L17*L28*L33; 506 L17*L28*DROP_OHQ_Y; 472 L17*L28*TX_R_
28 L17*L30*L32; 369 L17*L30*RY_P; 46 L17*L31*L32; 124 L17*L31*RY_P
229 L17*L31*DROP_OCR_Z; 498 L17*L32*DROP_OHP_YQ; 692 L17*L32*TY_R_; 157 L18*L18*L30
162 L18*L21*L30; 115 L18*L27*-OHD; 206 L18*L27*DROP_OHR_Y; 173 L18*L28*L30
349 L18*L30*TY_R_; 3463 L20*L27*RY_P; 811 L20*L27*RX_Q; 85 L21*L27*L30
207 L25*L27*L28; 1403 L26*L27*RX_Q; 307 L27*L27*L29; 259 L27*L27*L30
1970 L27*L27*DROP_OHP_YQ; 314 L27*L29*L32; 208 L27*L30*DROP_OHP_YQ; 103 L27*L32*DROP_OHR_Y
142 L28*L30*TY_R_; 1 L30*L30*TY_R_; 449 QCENT*L17; 7102 +CPQ*L5
1339 +CPQ*L6; 2450 +CPQ*L13; 1813 +CPQ*L15; 2108 +CPQ*L18
7279 +CPQ*L26; 1339 +CPQ*L29; 50 +CPQ*L30; 863 +CPQ*-OHD
3817 +CPQ*DROP_OHP_YQ; 819 -DPR*L2; 207 -HCY*L27; 51 -HFZ*L5
1518 +OCP*L3; 233 +OCP*L4; 3134 +OCP*L12; 544 +OCP*L17
291 +OCP*L30; 159 +OCP*L32; 725 +OCP*RX_Q; 739 +OCP*RY_Q
75 +OCP*DROP_OHR_Y; 601 +HCQ*L27; 863 -CDQ*L0; 1305 -CDQ*L13
65 -CDQ*L15; 1417 -CDQ*L18; 1408 -CDQ*DROP_OHP_YQ; 98 -CDQ*RX_P
43 -CDQ*DROP_OHQ_Y; 1857 -CDQ*DROP_OCR_Z; 5490 -CDQ*TY_R_; 648 -HFR*L3
646 -HFR*L5; 63 -HFR*L14; 464 -DFR*L28; 674 -OZQ*L17
1973 +OZR*L2; 945 +OZR*L5; 1748 +OZR*L22; 1261 +OZR*L27
37 +OZR*L31; 2098 +OZR*RX_P; 551 +OZR*RY_P; 515 +OZR*DROP_OHR_Y
2605 +OZR*DROP_OCR_Z; 142 -HPQ*L3; 1896 -HPQ*L5; 717 -HPQ*L12
208 -HPQ*L15; 691 -HPQ*L18; 676 -HPQ*TY_R_; 2371 +ODZ*L2
290 +ODZ*L17; 171 +ODZ*L32; 2769 -HZP*L2; 182 -HZP*L30
1605 -CZR*L2; 1728 -CZR*L23; 37 -CZR*L31; 461 -CZR*L32
315 -CZR*-OHD; 1055 -CZR*DROP_OHP_YQ; 1044 -CZR*RX_P; 671 -CZR*RY_Q
515 -CZR*DROP_OHR_Y; 1981 -CZR*DROP_OCR_Z; 558 -HZQ*L17; 1232 -CZP*L17
21 -CZQ*L30; 108 -DZR*L1; 172 -DZR*L3; 371 -DZR*L18
288 -DZR*TY_R_; 925 +ZQR*L27; 143 -ZPQ*L4; 400 -ZPQ*L31
711 -ZPQ*RX_P; 3551 -ZPQ*DROP_OHQ_Y; 1960 -ZPQ*RX_Q; 207 SP_OCRH_YZ_CH-1*L27
52 Q_OQFH_Y*L17; 760 Q_OCPD_Q*L27
```

Upper bound: `-1681901249/500000000`.

### Leaf RRTmmmmmmpmmmpmmmpmmm

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ +ODZ -OFY -HDZ -HZP +CZR -DYZ -FZP -YPQ`.

```c1top-geometry
C OYP Q R +YPR 433351/628000
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOZPQ -HZQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P COFZR -CFZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P FOZPQ -FZQ
P YODQR +YQR
P ZOHYR -ZYR
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
58 L0*L1*L8; 6 L0*L1*L30; 22 L0*L8*L9; 19 L0*L10*L30
42 L0*L17*+OCF; 7 L0*L18*L30; 28 L1*L1*L6; 46 L1*L1*L26
151 L1*L2*DROP_OHP_YQ; 239 L1*L6*L25; 181 L1*L6*L26; 8 L1*L6*L31
23 L1*L6*DROP_OHP_YQ; 344 L1*L6*DROP_OHQ_Y; 79 L1*L17*RY_P; 9 L1*L17*TY_R_
97 L1*L18*L21; 105 L1*L18*L27; 316 L1*L20*L25; 90 L1*L25*L25
94 L1*L25*L29; 35 L1*L27*L32; 24 L1*L32*+OCF; 59 L2*L2*L5
166 L2*L2*L23; 396 L2*L2*RY_P; 216 L2*L2*TY_R_; 15 L2*L10*L30
123 L2*L10*TY_R_; 1 L2*L24*L32; 28 L2*L25*TY_R_; 57 L2*L27*L28
565 L2*L27*TY_R_; 17 L2*L30*TY_R_; 3 L2*L32*L33; 392 L2*TY_R_*TY_R_
80 L3*L4*L11; 328 L3*L4*L18; 151 L3*L6*L18; 8 L3*L8*L32
37 L3*L11*L34; 106 L3*L11*TX_R_; 46 L3*L18*L18; 1 L3*L18*L22
79 L3*L18*L27; 353 L3*L18*L28; 98 L3*L18*TX_R_; 28 L3*L24*L27
286 L4*L5*L20; 295 L4*L6*TY_R_; 221 L4*L7*L8; 17 L4*L10*L30
238 L4*L17*RX_P; 107 L4*L17*DROP_OHQ_Y; 154 L4*L18*L27; 49 L4*L18*TY_R_
259 L4*L21*L27; 72 L4*L24*L28; 221 L4*L28*TX_R_; 6 L4*L34*RX_P
39 L5*L5*L6; 49 L5*L5*L18; 10 L5*L5*L30; 83 L5*L6*L28
91 L5*L7*L27; 300 L5*L9*L22; 42 L5*L17*L31; 24 L5*L19*L30
22 L5*L27*L32; 67 L5*L27*-OHD; 283 L5*L27*TY_R_; 251 L5*L28*RX_Q
91 L6*L6*L11; 120 L6*L10*L23; 120 L6*L17*L27; 69 L6*L19*L26
282 L6*L20*TY_R_; 79 L6*L22*L29; 79 L6*L27*TX_R_; 1 L6*L28*L30
29 L6*L30*RY_P; 19 L6*L32*RX_P; 79 L7*L24*L28; 13 L7*L30*TY_R_
15 L8*L10*L29; 61 L8*L17*L18; 69 L8*L17*RY_Q; 11 L8*L18*L30
127 L8*L18*TY_R_; 131 L8*L19*L29; 220 L8*L22*L28; 166 L8*L27*DROP_OHP_YQ
179 L8*L28*RX_Q; 224 L8*L28*TX_R_; 77 L8*L28*TY_R_; 24 L8*L30*TY_R_
22 L8*L31*L32; 68 L9*L22*L22; 3 L9*L25*TY_R_; 66 L9*L27*+OCF
26 L10*L10*L17; 140 L10*L17*L30; 2 L10*L17*L33; 136 L10*L17*-OHD
35 L10*L17*DROP_OHP_YQ; 83 L10*L17*TY_R_; 93 L10*L20*L30; 8 L10*L20*L32
24 L10*L30*TY_R_; 21 L11*L11*RX_P; 83 L11*L17*L24; 44 L11*L18*TX_R_
92 L16*L17*L32; 9 L16*L30*TY_R_; 148 L17*L17*L20; 63 L17*L18*DROP_OHP_YQ
44 L17*L19*L30; 74 L17*L19*L34; 78 L17*L20*TY_R_; 79 L17*L22*L31
112 L17*L25*RY_P; 78 L17*L26*L26; 43 L17*L27*L29; 1 L17*L27*L32
129 L17*L27*DROP_OHP_YQ; 40 L17*L28*L33; 58 L17*L28*RY_P; 81 L17*L32*-OHD
24 L17*L32*RY_P; 14 L17*L32*TY_R_; 52 L17*L33*RY_Q; 148 L17*DROP_OHP_YQ*DROP_OHQ_Y
166 L18*L21*L21; 212 L18*L21*RX_Q; 69 L18*L25*L27; 113 L18*L27*L27
69 L18*L27*TX_R_; 23 L18*L28*L30; 10 L18*L30*L31; 294 L18*RX_P*RX_Q
4 L20*L32*L33; 170 L22*L24*L27; 473 L22*L27*L28; 9 L22*L30*L31
4 L22*L30*L32; 56 L22*L30*RY_P; 509 L23*L27*L27; 57 L24*L27*L28
170 L24*L27*RY_Q; 12 L24*L32*L34; 78 L27*L27*DROP_OHP_YQ; 46 L27*L28*L28
18 L27*L28*L33; 17 L27*L29*L30; 3 L27*L29*L34; 29 L27*L30*RY_P
12 L27*L31*L34; 73 L27*L32*RX_Q; 57 L27*L33*TY_R_; 6 L28*L28*L30
24 L28*L30*DROP_OHP_YQ; 48 L28*RX_P*RX_P; 57 L29*TY_R_*TY_R_; 1 L30*L30*L32
3 L30*L32*RX_P; 8 L30*L32*TY_R_; 12 L32*L32*DROP_OHP_YQ; 3 L34*TX_R_*TY_R_
123 +OCD*L17; 439 +OPQ*L2; 787 +OPQ*L9; 411 +OPQ*L16
66 +OPQ*L18; 783 +OPQ*L20; 7 +OPQ*L32; 72 +OPQ*TY_R_
237 +CPQ*L6; 263 +CPQ*L7; 96 +CPQ*L11; 7 +CPQ*L33
541 +CPQ*-OHD; 961 +CPQ*DROP_OHP_YQ; 369 +CPQ*RY_Q; 107 +CPQ*TX_R_
294 +CPQ*TY_R_; 26 -OHY*L31; 22 -HCY*L9; 97 -HCY*L10
281 -HCY*L27; 187 -HCY*L32; 143 -HCY*L33; 333 -HCY*DROP_OHP_YQ
77 -HCY*RX_P; 224 -HCY*TX_R_; 338 -HCY*TY_R_; 63 -HFY*L1
85 -HFY*L2; 25 -HFY*L24; 338 -HFY*L26; 6 -HFY*L31
66 -HFY*DROP_OHP_YQ; 52 -HFY*RX_P; 27 +CDY*L27; 9 -OHP*L27
6 +OCP*L25; 311 +OCQ*L10; 40 +OCQ*L30; 267 -CDQ*L16
93 -CDQ*L24; 166 -CDQ*L29; 19 -CDQ*L30; 366 -CDQ*-OHD
458 -CDQ*DROP_OHP_YQ; 31 -HFR*L0; 316 -HFR*L20; 90 -HFR*L25
57 -HFR*L27; 104 -HFR*L32; 104 -HFR*L33; 202 -HFR*+OCF
76 -DFR*L4; 11 -DFR*L24; 69 -DFR*DROP_OHP_YQ; 131 -CYQ*L6
422 -OYP*L17; 148 -OYR*L2; 230 -OYR*L17; 2 -OYR*L30
12 -OYR*L32; 15 -OFY*L9; 45 -OFY*L10; 523 -OFY*L18
254 -OFY*L19; 620 -OFY*L22; 52 -OFY*L24; 483 -OFY*L28
82 -OFY*L33; 58 -OFY*RX_Q; 91 -OFY*TX_R_; 238 -YPQ*L6
430 -YPQ*L22; 175 -YPQ*L28; 40 -YPQ*L33; 325 -YPQ*RX_P
1768 -YPQ*DROP_OHQ_Y; 107 -YPQ*TX_R_; 107 -YPQ*TY_R_; 1 C_CYP_Q*L32
52 C_DFP_Z*L17; 44 C_DYR_Z*L18; 115 C_DYR_Z*RX_P; 3 C_DYR_Z*TY_R_
71 TPX_R_*L5; 11 TPX_R_*L25; 202 Q_OCFH_Y*L10; 217 Q_OCQH_Y*L17
89 Q_OQFH_Y*L17; 32 Q_OCPF_YQ*L17; 67 Q_OCPY_Q*L2; 5 Q_OCPY_Q*L10
148 Q_OCPY_Q*L17; 112 Q_OCPR_Q*L17; 51 Q_ODRY_Z*L17; 10 Q_ODRY_Z*L30
5 Q_HYDF_Z*L28; 117 Q_HYDR_Z*L3; 216 Q_CPDR_ZQ*L2; 48 Q_CPDR_ZQ*L18
115 Q_CPDR_ZQ*L27; 226 Q_CQDR_Z*L5; 69 Q_DRFY_Z*L28; 79 Q_DRFQ_Z*L6
```

Upper bound: `-15623214397/500000000`.

### Leaf RRTmmmmmmpmmmpmmmpmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ +ODZ -OFY -HDZ -HZP +CZR -DYZ -FZP +YPQ`.

```c1top-geometry
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOZPQ -HZQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P COFZR -CFZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P FOZPQ -FZQ
P YODPR +YPR
P YODQR +YQR
P ZOHYR -ZYR
P POHZQ +PZQ
P POHQR -PQR
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
42 L0*L1*L17; 8 L0*L8*L32; 1 L0*L30*L30; 201 L1*L2*L6
200 L1*L5*L8; 424 L1*L6*L6; 424 L1*L6*L25; 585 L1*L6*L26
80 L1*L6*L31; 787 L1*L8*L20; 28 L1*L8*L29; 21 L1*L13*L17
22 L1*L17*L19; 90 L1*L20*L28; 10 L1*L25*L31; 109 L1*L25*TY_R_
214 L1*L27*L27; 27 L2*L2*L33; 67 L2*L5*TY_R_; 12 L2*L19*L21
382 L2*L20*L27; 65 L2*L24*L33; 3 L2*L27*DROP_OHR_Y; 24 L2*L29*L33
101 L2*L29*TY_R_; 36 L3*L8*DROP_OHQ_Y; 23 L3*L8*RX_Q; 150 L3*L10*L18
35 L3*L12*L17; 95 L3*L17*TY_R_; 1248 L3*L18*TY_R_; 49 L3*L26*L27
113 L4*L6*L9; 104 L4*L6*L31; 197 L4*L6*TY_R_; 8 L4*L8*L32
191 L4*L9*L18; 111 L4*L17*L22; 36 L4*L17*RX_P; 29 L4*L17*DROP_OHQ_Y
273 L4*L17*DROP_OHR_Y; 505 L4*L17*TY_R_; 741 L4*L27*DROP_OHP_YQ; 48 L5*L5*L21
214 L5*L5*L26; 110 L5*L6*L8; 86 L5*L6*L18; 108 L5*L17*L29
413 L5*L25*TY_R_; 481 L5*L27*RX_P; 110 L5*L27*RX_Q; 46 L6*L7*L10
49 L6*L8*L28; 71 L6*L8*L33; 153 L6*L10*L21; 45 L6*L10*L25
14 L6*L15*L17; 87 L6*L18*L29; 109 L6*L26*TY_R_; 9 L6*L32*+OCF
34 L6*L32*TY_R_; 60 L7*L28*L30; 150 L8*L17*L19; 80 L8*L18*L27
62 L8*L19*TX_R_; 1 L8*L20*L31; 142 L8*L22*L25; 149 L8*L27*L28
31 L8*L29*L32; 18 L8*L30*RY_P; 1 L8*L31*L31; 19 L8*L32*RX_Q
50 L8*L32*DROP_OHR_Y; 143 L8*RY_P*TX_R_; 78 L8*RY_P*TY_R_; 20 L9*L18*L32
34 L9*L27*L31; 1 L9*L30*L32; 3 L10*L16*L33; 190 L10*L17*L18
24 L10*L28*L31; 178 L11*L17*L17; 219 L11*L17*L20; 307 L11*L17*L22
158 L11*L17*L26; 236 L11*L17*DROP_OHR_Y; 146 L11*L27*L29; 11 L12*L17*L18
46 L12*L17*L27; 35 L13*L17*L17; 35 L13*L17*RX_P; 11 L14*L17*L17
46 L14*L17*DROP_OHR_Y; 16 L16*L27*L30; 3 L16*L27*TX_R_; 197 L17*L17*L22
56 L17*L18*L25; 203 L17*L18*L27; 7 L17*L18*L33; 202 L17*L18*DROP_OHQ_Y
181 L17*L19*L28; 20 L17*L20*L23; 71 L17*L22*-OHD; 355 L17*L23*L27
265 L17*L25*RY_Q; 405 L17*L26*RX_P; 141 L17*L27*L32; 126 L17*L27*L33
408 L17*L27*DROP_OHP_YQ; 13 L17*L28*L32; 168 L17*L28*L34; 16 L17*L31*TY_R_
36 L17*L32*TX_R_; 2 L18*L21*L30; 33 L18*L21*L32; 386 L18*L23*L27
124 L18*L27*RX_P; 214 L18*L27*TY_R_; 4 L18*L30*L32; 28 L18*L30*DROP_OHR_Y
37 L18*L30*TX_R_; 25 L18*L30*TY_R_; 96 L18*L34*RX_Q; 256 L20*L27*L27
137 L21*L27*RX_Q; 1737 L22*L22*L27; 965 L22*L27*L27; 193 L22*L27*L33
412 L23*L27*L29; 1 L25*L27*L31; 12 L25*L27*DROP_OHQ_Y; 2 L25*L28*L33
214 L27*L27*L28; 179 L27*L28*L29; 107 L27*L32*TY_R_; 137 L27*DROP_OHQ_Y*DROP_OHQ_Y
256 L27*DROP_OHQ_Y*TY_R_; 48 L28*L28*RX_Q; 1 L28*L29*L30; 19 L28*L29*RY_Q
57 L28*L30*DROP_OHR_Y; 1 L30*L30*L34; 12 KLOW*L33; 281 +OCD*L17
46 +ODF*L17; 135 +OPQ*L10; 215 +OCY*L5; 28 +OCY*L32
105 -HCY*L24; 48 -HCY*L28; 28 -HCY*L29; 11 -HCY*L30
32 -HCY*RY_Q; 293 -HCY*TX_R_; 190 -HFY*L18; 383 -HFY*L20
101 -HFY*RY_Q; 46 -HFY*TX_R_; 57 +OCP*L24; 155 +OCP*L28
114 +OCP*L30; 116 +OCP*L31; 45 +OCP*L32; 51 +OCP*L33
178 +OCP*L34; 227 +OCP*RY_P; 321 +OCP*TX_R_; 818 +OCP*TY_R_
136 +OCQ*L17; 159 -CDQ*L0; 136 -CDQ*L11; 77 -CDQ*L16
348 -CDQ*L18; 519 -CDQ*L20; 152 -CDQ*L24; 366 -CDQ*L29
148 -CDQ*L34; 250 -CDQ*DROP_OHR_Y; 440 -OHR*L17; 447 -HFR*L5
470 -HFR*L6; 296 -HFR*L9; 381 -HFR*L16; 226 -HFR*L19
795 -HFR*L22; 83 -HFR*L31; 79 -HFR*L33; 149 -HFR*L34
34 -HFR*RX_P; 109 -HFR*TY_R_; 713 -DFR*L4; 284 -DFR*L28
83 -DFR*L30; 409 -CFR*L17; 19 -CYQ*TY_R_; 425 -FPQ*L10
44 -OYP*L8; 65 -OYQ*L6; 177 -OYQ*L27; 84 -OYR*L1
445 -OYR*L6; 44 -OYR*L9; 129 -OYR*L19; 402 -OYR*L21
579 -OYR*L22; 133 -OYR*L31; 64 -OYR*L33; 95 -OYR*+OCF
1222 -OYR*DROP_OHP_YQ; 42 -HPQ*L1; 31 -HPQ*L5; 1271 -HPQ*L9
10 -HPQ*L11; 65 -HPQ*L16; 64 -HPQ*L27; 12 -HPQ*L30
184 -HPQ*RY_P; 533 -HPQ*DROP_OHR_Y; 643 -HPQ*TX_R_; 390 -OFY*L0
142 -OFY*L19; 526 -OFY*L22; 354 -OFY*L24; 161 -OFY*L31
642 -OFY*DROP_OHP_YQ; 473 -OFY*RY_P; 193 -OFY*TY_R_; 206 +YPQ*L0
1145 +YPQ*L5; 169 +YPQ*L17; 213 +YPQ*L18; 785 +YPQ*L24
199 +YPQ*L32; 92 +YPQ*DROP_OHQ_Y; 1788 +YPQ*RY_Q; 977 +YPQ*TX_R_
158 +YPQ*TY_R_; 124 +ODY*L27; 46 +HZR*L17; 3 +FPR*L17
1458 -PQR*L8; 64 -PQR*L28; 46 C_HCP_Q*L17; 25 C_CDP_Q*L8
63 C_DFY_Z*L27; 98 C_DYR_Z*L1; 6 C_DYR_Z*L20; 186 TPX_R_*L2
9 TPX_R_*L33; 364 TPX_R_*TY_R_; 146 Q_OCFH_Y*L2; 122 Q_OCFH_Y*L19
50 Q_OCFH_Y*L31; 581 Q_OCFH_Y*TY_R_; 47 Q_OCQH_Y*L17; 25 SP_OPDH_ZQ_PH-1*L17
34 Q_ODRY_Z*L28; 18 Q_ODRY_Z*L31; 14 Q_HCDR_Z*L17; 51 Q_HQPD_Z*L2
179 Q_CPDR_ZQ*L1; 237 Q_CPDR_ZQ*L2; 115 Q_CPDR_ZQ*L6; 288 Q_CPDR_ZQ*L10
178 Q_CPDR_ZQ*L18; 182 Q_CPDR_ZQ*L25; 43 Q_CPDR_ZQ*DROP_OHP_YQ; 480 Q_CPDR_ZQ*TY_R_
128 Q_CQDR_Z*L19; 90 Q_CQDR_Z*L21; 431 Q_CQDR_Z*L27; 48 Q_CQDR_Z*L31
182 Q_CQDR_Z*DROP_OHR_Y; 14 SP_DFYP_ZQ_FP-1*L17; 87 Q_DRFP_Z*L6; 69 Q_DRFQ_Z*L2
44 Q_DRYP_ZQ*L8
```

Upper bound: `-6494694557/200000000`.

### Leaf RRTmmmmmmpmmmpmmmpmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ +ODZ -OFY -HDZ -HZP +CZR -DYZ +FZP`.

```c1top-geometry
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOZPQ -HZQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P COFZR -CFZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODPR +YPR
P YODQR +YQR
P ZOHYR -ZYR
P ZOFPR +ZPR
P POHZQ +PZQ
P POHQR -PQR
M OFPZYQ 1
M OPFZQY -1
M FOPQYZ -1
M FPOQZY 1
M POFYQZ 1
M PFOYZQ -1
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
5 L20*L28; 2 L30*RY_P; 127 L0*L0*L27; 25 L0*L1*L6
111 L0*L4*TX_R_; 61 L0*L8*L27; 1 L0*L8*L32; 123 L0*L8*RY_P
3 L0*L11*L22; 27 L0*L13*L22; 6 L0*L15*L22; 21 L0*L17*L22
7 L0*L20*RY_P; 21 L0*L24*L34; 127 L1*L1*TY_R_; 139 L1*L2*L6
2 L1*L3*L30; 12 L1*L6*L14; 76 L1*L6*DROP_OHQ_Y; 1 L1*L15*L32
10 L1*L17*L29; 254 L1*L17*DROP_OHR_Y; 2 L1*L19*L30; 15 L1*L24*L32
105 L1*L28*L29; 23 L1*L29*RY_P; 9 L2*L7*L10; 36 L2*L8*L27
40 L2*L10*L17; 6 L2*L14*TX_R_; 56 L2*L19*DROP_OHR_Y; 71 L2*L27*L29
369 L2*L27*TY_R_; 4 L2*L30*L32; 66 L2*L33*TY_R_; 553 L2*RY_P*TY_R_
654 L2*TY_R_*TY_R_; 7 L3*L3*L32; 72 L3*L4*L17; 9 L3*L8*L32
16 L3*L17*L33; 99 L3*L18*L22; 17 L3*L18*L28; 7 L3*L22*L32
48 L3*L25*L27; 496 L4*L5*L27; 62 L4*L5*L29; 2 L4*L8*RX_P
4 L4*L10*L28; 183 L4*L12*TY_R_; 6 L4*L15*L17; 6 L4*L17*RY_P
7 L4*L22*RX_P; 36 L4*L24*L34; 5 L4*L32*DROP_OHR_Y; 14 L5*L5*L12
22 L5*L6*RX_P; 3 L5*L13*L32; 35 L5*L15*TY_R_; 54 L5*L18*L24
991 L5*L27*L27; 3 L6*L8*L33; 45 L6*L9*L26; 11 L6*L10*L23
12 L6*L13*DROP_OHP_YQ; 2 L6*L14*L33; 55 L6*L17*L18; 42 L6*L22*L28
7 L6*L22*L31; 69 L6*L22*L34; 50 L6*L23*L27; 13 L6*L23*RX_P
7 L6*L27*L30; 13 L6*L27*L32; 8 L6*L31*TY_R_; 17 L6*L33*TY_R_
12 L7*L12*L17; 122 L7*L17*TY_R_; 16 L7*L18*RX_Q; 50 L7*L27*L28
30 L8*L18*L23; 274 L8*L18*TY_R_; 15 L8*L21*RY_P; 32 L8*L25*L28
9 L8*L27*TY_R_; 23 L8*L28*RY_P; 187 L8*L28*TY_R_; 5 L9*L16*L32
59 L9*L17*L26; 3 L10*L17*L32; 9 L10*L17*RX_P; 80 L10*L17*DROP_OHR_Y
294 L10*L17*TY_R_; 5 L10*L18*L30; 1 L10*L30*DROP_OHQ_Y; 32 L11*L17*L22
11 L11*L20*L20; 9 L11*L24*L27; 21 L11*L27*L29; 4 L11*L28*RY_Q
1 L11*L30*L33; 5 L11*L32*DROP_OHQ_Y; 15 L12*L17*L22; 4 L12*L18*L30
31 L12*L20*L27; 29 L12*L22*L28; 19 L12*L22*L29; 11 L12*L27*L28
4 L12*L27*L31; 85 L12*L27*TY_R_; 10 L13*L17*-OHD; 36 L13*L17*RY_Q
7 L13*L17*TY_R_; 125 L13*L18*TY_R_; 5 L13*L22*RX_Q; 21 L13*L32*TY_R_
10 L14*L17*L17; 1 L14*L20*L30; 106 L14*L24*TY_R_; 35 L14*L26*L27
21 L14*L27*TX_R_; 21 L14*L30*TY_R_; 4 L15*L17*-OHD; 9 L15*L17*+OCF
125 L15*L17*TY_R_; 24 L15*L20*L29; 35 L15*L27*TY_R_; 27 L16*L17*L28
437 L16*L27*TY_R_; 190 L17*L17*TY_R_; 28 L17*L18*L22; 111 L17*L18*+OCF
26 L17*L20*L32; 341 L17*L21*L22; 34 L17*L22*L22; 17 L17*L24*DROP_OHP_YQ
17 L17*L25*RX_P; 11 L17*L26*L33; 120 L17*L26*-OHD; 76 L17*L26*DROP_OHP_YQ
97 L17*L26*RX_Q; 98 L17*L31*TY_R_; 4 L17*L32*RY_P; 57 L17*L34*TY_R_
407 L17*+OCF*TY_R_; 809 L17*RX_Q*TY_R_; 36 L18*L24*L34; 421 L18*L24*TY_R_
122 L18*L27*DROP_OHQ_Y; 4 L18*L30*RY_P; 2 L18*L30*TX_R_; 19 L18*RY_P*TX_R_
36 L19*L19*L20; 64 L19*L20*DROP_OHP_YQ; 248 L20*L20*L23; 69 L20*L22*L29
5 L20*L27*RY_P; 136 L20*L27*TX_R_; 3 L20*L28*L32; 15 L20*L28*L34
3 L20*L33*RY_P; 3 L21*L22*L32; 53 L21*L23*L27; 5 L21*L32*RY_Q
1 L22*L28*L31; 2 L23*L29*L32; 1 L23*L30*TY_R_; 195 L24*L27*RX_Q
189 L25*L27*TY_R_; 496 L26*L27*L27; 189 L26*L27*DROP_OHR_Y; 16 L26*L28*L30
1 L27*L31*L32; 37 L27*L31*DROP_OHR_Y; 19 L27*L32*RX_P; 8 L27*L32*TX_R_
146 L27*-OHD*DROP_OHQ_Y; 129 L27*RY_P*DROP_OHQ_Y; 71 L27*RY_Q*TX_R_; 496 L27*TY_R_*TY_R_
1 L28*L30*RX_P; 3 L30*L32*RX_Q; 2 L30*RY_Q*RY_Q; 107 KLOW*TY_R_
120 +ODF*L17; 8 +HDF*L32; 7 +OPQ*L12; 1 +OPQ*L14
26 +OPQ*L18; 198 +OPQ*L20; 62 +OPQ*L25; 19 +OPQ*L32
16 +OPQ*L33; 238 +OPQ*+OCF; 96 +OPQ*DROP_OHP_YQ; 62 +OPQ*TX_R_
272 +OPQ*TY_R_; 119 +OPR*L17; 89 +CPQ*L34; 12 -OHY*TX_R_
88 +OCY*L17; 2 -HCY*L12; 532 -HCY*L20; 79 -HCY*L31
149 -HCY*RY_P; 163 -HCY*RX_Q; 126 -HCY*TY_R_; 53 -HFY*L5
2 +HCZ*L8; 1 -HFZ*L4; 12 +DFZ*L28; 24 -HFP*L17
14 -OFP*L27; 25 +OCQ*L3; 48 +OCQ*L11; 224 +OCQ*TY_R_
10 -CDQ*L13; 73 -CDQ*L22; 293 -CDQ*TY_R_; 84 -HFR*L2
35 -HFR*L9; 254 -HFR*L16; 445 -HFR*L22; 64 -HFR*L33
21 -HFR*L34; 21 -DFR*L26; 102 -CFR*L17; 123 -CYP*L17
167 -OYQ*L2; 10 -OYQ*L30; 36 -OYR*L4; 64 -OYR*L16
16 -OYR*DROP_OHP_YQ; 3 -OYR*DROP_OHQ_Y; 232 -OFY*L17; 115 -OFY*L18
132 -OFY*L28; 346 -OFY*DROP_OHP_YQ; 21 -OFY*DROP_OHQ_Y; 186 -OFY*RY_Q
4 -HZP*L19; 14 -HZP*RY_Q; 1 +CZR*RX_P; 106 +CZR*TY_R_
15 -DYZ*L28; 26 -DYZ*RX_P; 215 -DYZ*TY_R_; 5 +FZP*L21
30 +FZP*RY_Q; 83 +FZP*TY_R_; 17 -OYZ*L6; 2 -OYZ*L30
34 -OYZ*RY_Q; 59 -OYZ*TY_R_; 14 -CZQ*L17; 2 -CZQ*L29
39 +DZP*L2; 11 -DZR*L1; 21 +FZR*L27; 9 +FZR*+OCF
3 +YZR*L21; 4 -ZPQ*L1; 2 -ZPQ*L33; 7 -FZQ*L19
6 -FZQ*L33; 83 -FZQ*TY_R_; 114 -YPQ*L6; 19 -YPQ*L18
37 -YPQ*L31; 58 -YPQ*DROP_OHP_YQ; 468 -YPQ*DROP_OHQ_Y; 274 -YPQ*TY_R_
186 C_OFR_Y*L28; 13 C_OZP_Q*L20; 16 C_HDY_Z*TX_R_; 95 C_HFP_Z*+OCF
5 C_HFP_Z*DROP_OHQ_Y; 257 C_CDR_Z*L27; 12 C_CFP_ZQ*L4; 20 C_CFP_ZQ*L18
10 C_CFP_ZQ*L34; 21 C_CPR_ZQ*L31; 9 C_CPR_ZQ*L32; 36 C_CPR_ZQ*L34
152 C_CPR_ZQ*-OHD; 139 C_CPR_ZQ*+OCF; 164 C_CPR_ZQ*RX_P; 191 C_CPR_ZQ*DROP_OHQ_Y
74 C_CPR_ZQ*DROP_OHR_Y; 437 C_CPR_ZQ*TY_R_; 105 C_FPQ_Z*L11; 13 C_FPQ_Z*L30
5 TPX_R_*L32; 24 TPX_R_*DROP_OHP_YQ; 80 Q_OCFH_Y*L1; 153 Q_OCFH_Y*L10
89 Q_OCFH_Y*RY_P; 136 Q_OCFH_Y*TY_R_; 10 SP_OPDH_ZQ_PH-1*L17; 204 Q_OQFH_Y*L17
24 Q_OCDR_Z*L17; 20 Q_OCPY_Q*RY_P; 2 Q_OCPR_ZQ*L30; 29 Q_ODRF_YZ*L2
19 Q_OPDY_Q*L17; 9 Q_ODRY_Z*L27; 20 Q_OPZY_Q*L20; 79 Q_HYCD_Z*L17
1 SP_HCPD_ZQ_CD1*L30; 4 Q_HCPF_ZQ*L8; 3 Q_HPDF_Z*L30; 5 Q_HQDF_Z*L30
84 Q_HPDR_Z*L2; 16 Q_HQPF_Z*L22; 11 Q_CDRF_Z*L8; 19 Q_CPFY_ZQ*L20
6 Q_CPZY_Q*L2; 47 Q_DFQP_Z*L2; 15 M_OPFZQY_-1_3*L0; 17 M_OPFZQY_-1_3*L6
23 M_OPFZQY_-1_3*L16; 15 M_OPFZQY_-1_3*L27; 40 M_OPFZQY_-1_3*RX_Q; 34 M_OPFZQY_-1_3*RY_Q
289 M_OPFZQY_-1_3*TY_R_; 9 M_OPFZQY_-1_4*L2
```

Upper bound: `-766578563/50000000`.

### Leaf RRTmmmmmmpmmmpmmmpp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ +ODZ -OFY -HDZ -HZP +CZR +DYZ`.

```c1top-geometry
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODZR +HZR
P HODPR +HPR
P HODQR +HQR
P HOZPQ -HZQ
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P COFZR -CFZ
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODZR +YZR
P YODPR +YPR
P YODQR +YQR
P POHZQ +PZQ
P POHQR -PQR
C DYP Z Q -YPQ 106644153/157000000
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
236 L0*L1*L8; 1 L0*L3*L5; 34 L0*L3*L11; 47 L0*L6*L29
7 L0*L8*L17; 25 L0*L17*L17; 99 L0*L18*RX_Q; 237 L0*L24*L28
102 L1*L1*+OCF; 110 L1*L2*L2; 168 L1*L2*L8; 45 L1*L6*L16
23 L1*L6*L33; 85 L1*L6*L34; 38 L1*L6*+OCF; 24 L1*L6*TX_R_
21 L1*L8*L32; 113 L1*L17*RY_Q; 37 L1*L18*L25; 163 L1*L29*TY_R_
1 L1*L34*DROP_OHP_YQ; 23 L2*L6*L30; 58 L2*L6*L33; 23 L2*L7*L30
38 L2*L10*RY_P; 247 L2*L17*L22; 1 L2*L19*L19; 79 L2*L26*L27
2 L2*L32*TY_R_; 111 L2*TY_R_*TY_R_; 90 L3*L3*L3; 92 L3*L3*L18
140 L3*L4*RX_Q; 136 L3*L6*L10; 3 L3*L9*L11; 141 L3*L11*L22
14 L3*L18*L22; 182 L3*L18*L28; 63 L3*L18*L31; 88 L3*L18*L34
104 L3*L18*-OHD; 39 L3*L18*DROP_OHQ_Y; 18 L3*L18*DROP_OHR_Y; 255 L3*L27*L27
102 L3*L28*L28; 133 L3*L28*RX_P; 36 L3*L28*TX_R_; 22 L3*L30*L32
61 L4*L6*TY_R_; 192 L4*L8*L29; 7 L4*L10*L30; 37 L4*L11*L24
315 L4*L17*L20; 96 L4*L17*L28; 23 L4*L17*L29; 118 L4*L17*-OHD
343 L4*L19*L27; 269 L4*L24*L28; 2 L4*L24*L32; 25 L4*L27*L31
4 L4*L32*TX_R_; 16 L5*L5*L17; 9 L5*L6*L31; 4 L5*L7*L32
7 L5*L8*L8; 4 L5*L8*L30; 3 L5*L8*L32; 20 L5*L9*L28
13 L5*L11*L30; 1 L5*L17*L18; 145 L5*L25*L27; 29 L5*L27*DROP_OHQ_Y
112 L5*L28*DROP_OHQ_Y; 4 L5*L29*L30; 24 L5*L32*RX_P; 97 L6*L6*TY_R_
6 L6*L9*L10; 46 L6*L10*L33; 11 L6*L10*TY_R_; 72 L6*L11*L32
97 L6*L17*L23; 144 L6*L18*TY_R_; 37 L6*L19*L28; 8 L6*L19*L30
11 L6*L19*DROP_OHP_YQ; 172 L6*L25*TY_R_; 14 L7*L18*L30; 16 L7*L18*RX_P
3 L8*L9*L32; 1 L8*L10*L17; 5 L8*L11*L21; 29 L8*L11*L22
1 L8*L11*L30; 81 L8*L17*L32; 72 L8*L17*L33; 66 L8*L17*RY_P
116 L8*L21*L32; 213 L8*L25*L28; 18 L8*L27*L27; 29 L8*L27*RY_P
6 L8*L28*L34; 277 L8*L28*TX_R_; 9 L8*L29*L33; 10 L9*L16*L27
18 L9*L22*TY_R_; 3 L9*L28*L30; 3 L9*L32*L34; 18 L9*TY_R_*TY_R_
111 L10*L17*L30; 143 L10*L17*-OHD; 302 L10*L17*DROP_OHP_YQ; 68 L10*L17*TY_R_
15 L10*L28*L30; 5 L10*L29*L32; 18 L11*L20*L27; 78 L11*L21*L28
1 L11*L30*L30; 328 L17*L17*L18; 13 L17*L17*L32; 151 L17*L17*RY_Q
49 L17*L18*L26; 295 L17*L18*DROP_OHP_YQ; 44 L17*L19*L29; 299 L17*L22*L27
304 L17*L28*L29; 68 L17*L28*L30; 3 L17*L28*RY_P; 111 L17*L28*DROP_OHQ_Y
23 L17*L31*L32; 80 L17*L31*-OHD; 19 L17*L32*TX_R_; 25 L17*L32*TY_R_
14 L17*L33*DROP_OHR_Y; 343 L18*L18*L27; 343 L18*L27*RY_P; 2 L18*L28*L30
26 L18*L29*L30; 13 L18*L30*L31; 8 L18*L30*RX_P; 6 L18*L30*TX_R_
19 L18*L31*RX_Q; 124 L20*TY_R_*TY_R_; 77 L21*L27*RY_P; 5 L22*L24*L31
412 L24*L26*L27; 412 L24*L27*L27; 1 L25*L31*L32; 124 L26*L27*RX_Q
7 L26*L28*L30; 10 L26*L34*RX_P; 3 L27*+OCF*RY_Q; 42 L28*L34*RX_Q
13 L28*DROP_OHP_YQ*TY_R_; 9 L30*L30*RY_P; 46 TOPCOUNT*L8; 259 QCENT*L17
24 -OHF*TX_R_; 28 +HDF*L1; 259 +HDF*L2; 71 +HDF*L20
2 +OPQ*L9; 391 +OPQ*L20; 990 +OPQ*DROP_OHQ_Y; 286 +CPQ*L0
573 +CPQ*L29; 270 +CPQ*L31; 204 +CPQ*DROP_OHQ_Y; 47 +CPQ*DROP_OHR_Y
619 +OCY*L17; 23 -HCY*L3; 320 -HCY*L7; 17 -HCY*L18
599 -HCY*L21; 54 -HCY*L32; 33 -HCY*L33; 599 -HCY*DROP_OHQ_Y
139 -HCY*DROP_OHR_Y; 93 -HCY*TY_R_; 236 -HFY*L1; 47 -HFY*L6
6 -HFY*L9; 16 -HFY*L17; 282 -HFY*L26; 8 -HFY*L31
23 -HFY*L33; 1 +OCP*L32; 388 +OCP*RX_Q; 8 +OCQ*TX_R_
55 +OCQ*TY_R_; 429 -CDQ*L21; 21 -CDQ*L27; 332 -CDQ*-OHD
115 -CDQ*+OCF; 39 -CDQ*TX_R_; 628 -HFR*L5; 75 -HFR*L9
37 -HFR*L18; 542 -HFR*L22; 264 -HFR*L28; 542 -HFR*RY_Q
181 -DFR*L0; 366 -DFR*L4; 97 -DFR*L6; 27 -DFR*L10
107 -DFR*L18; 59 +HYQ*L27; 103 +HYR*L3; 15 +ODZ*L1
37 +ODZ*L4; 264 +ODZ*L20; 29 +ODZ*L24; 200 -OFY*L18
156 -OFY*L20; 27 -OFY*L24; 617 -OFY*L28; 902 -OFY*RY_Q
47 -OFY*TX_R_; 42 -YPQ*L31; 28 -YPQ*L32; 28 -YPQ*L33
173 -YPQ*-OHD; 1427 -YPQ*DROP_OHQ_Y; 77 -YPQ*TY_R_; 203 C_ODY_Z*L2
294 C_ODY_Z*L17; 19 C_CDY_Z*L27; 99 C_CDR_Z*L27; 6 C_CDR_Z*L32
46 TPX_R_*L27; 305 TPX_R_*L28; 296 Q_OCFH_Y*L10; 26 SP_OPDH_ZQ_OD-1*L27
220 Q_OCQF_Y*L17; 15 SP_OPDY_ZQ_OD-1*L1; 147 SP_OPDY_ZQ_OD-1*L2; 37 SP_OPDY_ZQ_OD-1*L4
26 SP_OPDY_ZQ_OD-1*L26; 29 SP_OPDY_ZQ_OD-1*L30; 29 SP_OPDY_ZQ_OD-1*DROP_OHR_Y; 75 Q_ODRY_Z*L6
59 Q_OPDZ_Q*L17; 84 SP_CPDY_ZQ_PY1*L6; 93 Q_CPDR_ZQ*L9; 64 Q_CPDR_ZQ*L11
132 Q_CPDR_ZQ*L28; 235 Q_CQDR_Z*L1; 198 Q_CQDR_Z*L5; 8 Q_CQDR_Z*L18
84 Q_CPZY_Q*L6
```

Upper bound: `-11124217339/500000000`.

### Leaf RRTmmmmmmpmmmpmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ +ODZ -OFY -HDZ +HZP`.

```c1top-geometry
C OHP YZQ R +HPR 1
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODZR +HZR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHZP +DZP
P DOHZQ +DZQ
P DOHZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ -YFZ
P YODPR +YPR
P YODQR +YQR
P ZOHFP -ZFP
P ZOHYR -ZYR
P ZOHPR +ZPR
P POHQR -PQR
C OCF Y Z -CFZ 157/250
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
T OHP YZQ 0 lower 823/1000
```

```c1top-box
h 823/1000 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
10 L0*L1*L8; 224 L0*L2*TY_R_; 37 L0*L5*L25; 312 L0*L17*L29
19 L0*L25*L27; 20 L0*L27*L31; 142 L0*L29*L29; 104 L1*L1*L6
276 L1*L2*L27; 304 L1*L2*L28; 331 L1*L4*L6; 262 L1*L6*L6
25 L1*L6*L9; 298 L1*L6*L18; 95 L1*L6*L25; 24 L1*L6*L26
47 L1*L17*L21; 71 L1*L17*-OHD; 27 L1*L28*L29; 229 L2*L2*L19
347 L2*L3*L28; 27 L2*L10*L19; 50 L2*L17*C_OHD_YZ; 71 L2*L18*L27
5 L2*L27*L31; 1 L2*L27*TY_R_; 83 L4*L13*L17; 66 L4*L17*L23
563 L4*L17*L28; 20 L4*L17*TY_R_; 1 L4*L27*TX_R_; 540 L5*L5*L17
20 L5*L26*L30; 16 L6*L11*L25; 123 L6*L18*L25; 367 L6*L26*RX_P
132 L7*L12*L17; 182 L7*L21*L27; 1 L8*L19*DROP_OHR_Y; 57 L9*L27*L29
1 L10*L25*-OHD; 7 L10*L27*L29; 1 L11*L17*L24; 83 L12*L17*L18
132 L12*L17*+OCF; 362 L12*L27*L29; 132 L13*L17*L29; 362 L13*L27*L29
83 L14*L17*L17; 116 L14*L17*L29; 97 L17*L17*L29; 20 L17*L17*L31
131 L17*L17*DROP_OHQ_Y; 97 L17*L17*TX_R_; 22 L17*L18*L32; 131 L17*L18*RY_Q
307 L17*L20*L22; 110 L17*L20*L31; 68 L17*L20*RY_P; 393 L17*L20*RX_Q
232 L17*L22*L24; 66 L17*L22*RY_P; 218 L17*L25*-OHD; 20 L17*L26*TY_R_
239 L17*L28*L29; 45 L17*L28*DROP_OHP_YZQ; 115 L17*L28*TX_R_; 97 L17*L29*RX_P
437 L17*L29*DROP_OHQ_Y; 6 L17*L30*TY_R_; 7 L17*L31*L31; 49 L17*L31*TX_R_
42 L17*L32*-OHD; 35 L17*L32*+OCF; 13 L17*L32*C_OHD_YZ; 55 L17*L33*-OHD
34 L17*L33*DROP_OHQ_Y; 26 L17*L33*DROP_OHR_Y; 58 L17*+OCF*+OCF; 705 L17*C_OHD_YZ*TY_R_
10 L17*RX_P*RX_P; 44 L17*RY_P*RY_P; 52 L17*RY_P*DROP_OHR_Y; 340 L17*DROP_OHQ_Y*DROP_OHR_Y
97 L17*RX_Q*DROP_OHR_Y; 20 L18*L25*L27; 440 L19*L27*L29; 148 L19*L28*L29
27 L21*L27*L30; 452 L25*L27*L29; 4 L25*L28*RX_P; 1 L27*L27*L29
20 L27*L28*L30; 17 L27*L29*L30; 1 L27*L29*RY_P; 29 L27*L29*DROP_OHQ_Y
452 L27*L29*TX_R_; 3 L27*L30*L30; 38 L28*L29*TX_R_; 143 TOPCOUNT*L17
5 +HDF*L28; 44 +OPQ*L0; 108 -DPQ*L0; 26 +CPQ*L32
26 +CPQ*L33; 64 +CPQ*-OHD; 133 -DPR*L1; 127 +OCY*L0
99 -HCY*L0; 34 -HCY*L4; 25 -HCY*L19; 7 -HCY*L27
28 -HCY*L28; 57 -HCY*TX_R_; 137 -HFY*L1; 125 -HFY*L18
25 -HFY*L24; 183 -HFY*TX_R_; 5 -HFY*TY_R_; 116 +DFZ*L17
150 +OCP*L6; 108 -CDQ*L0; 78 -CDQ*L18; 271 -CDQ*DROP_OHP_YZQ
164 +OCR*L17; 811 +HCR*L17; 265 -HFR*L6; 265 -HFR*L9
707 -HFR*L22; 247 -HFR*L31; 79 -HFR*L33; 1829 -HFR*DROP_OHQ_Y
396 -HFR*RX_Q; 19 -HFR*TY_R_; 99 -DFR*L3; 5 -DFR*L5
1 +FYR*L27; 199 -OYR*L0; 61 -OYR*L2; 16 -HPQ*L30
16 -HPQ*L31; 57 -OFY*L2; 5 -OFY*L4; 183 -OFY*L6
45 -OFY*L19; 137 -OFY*C_OHD_YZ; 56 -OFY*DROP_OHR_Y; 83 -CZP*L17
185 C_ODF_YZ*L27; 45 C_ODR_Z*L6; 295 C_OPR_ZQ*L1; 418 C_OPR_ZQ*L2
7 C_OPR_ZQ*L4; 653 C_OPR_ZQ*L26; 123 C_OPR_ZQ*L29; 1 C_OPR_ZQ*L34
726 C_OPR_ZQ*+OCF; 204 C_HCP_ZQ*L1; 39 C_HCP_ZQ*L5; 280 C_HCP_ZQ*L7
44 C_HCP_ZQ*L22; 1099 C_HCP_ZQ*L26; 23 C_HCP_ZQ*L31; 251 C_HCP_ZQ*RX_Q
347 C_CDP_Q*L2; 17 C_CDP_Q*L19; 43 C_CDP_Q*L28; 9 C_CDP_Q*L33
61 C_CDP_Q*TX_R_; 17 C_CFP_ZQ*L5; 2 C_CFP_ZQ*L10; 598 C_CFP_ZQ*L27
19 TPY_R_*L27; 133 Q_OCPH_YZQ*L0; 413 Q_OCPH_YZQ*L24; 237 Q_OCPH_YZQ*L27
87 Q_OCPH_YZQ*L29; 44 Q_OCPH_YZQ*RY_Q; 793 Q_OCPH_YZQ*TX_R_; 356 Q_OCDF_YZ*L17
131 Q_OCPF_YZQ*L28; 285 Q_OCRF_Y*L17; 633 Q_OCPR_ZQ*L27; 85 Q_OQDF_YZ*L17
203 Q_ODRY_Z*L1; 248 Q_ODRY_Z*L6; 7 Q_ODRY_Z*L21; 1 Q_ODRY_Z*L30
1 Q_ODRY_Z*L32; 7 Q_ODRY_Z*RY_Q; 33 Q_CPDZ_Q*L17; 5 Q_CPRY_ZQ*L28
1 Q_DRYP_Z*L27
```

Upper bound: `-28025699903/13000000000`.

### Leaf RRTmmmmmmpmmmpmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ +ODZ -OFY +HDZ`.

```c1top-geometry
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODZP -HZP
P HODZQ -HZQ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHYZ -DYZ
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHFZ -YFZ
P YODPR +YPR
P YODQR +YQR
P ZOHDR -ZHR
P ZOHYR -ZYR
P POHZQ +PZQ
P POHQR -PQR
C OCF Y Z -CFZ 157/250
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
5 L0*L0*L27; 18 L0*L1*L20; 13 L0*L2*L7; 14 L0*L3*L8
56 L0*L3*DROP_OHR_Y; 60 L0*L3*TY_R_; 9 L0*L5*L33; 1 L0*L8*L32
8 L0*L9*L20; 2 L0*L9*RY_P; 19 L0*L13*L14; 12 L0*L13*L18
29 L0*L13*L28; 792 L0*L13*TY_R_; 1 L0*L17*TY_R_; 16 L0*L21*L31
22 L0*L21*+OCF; 9 L0*L22*TX_R_; 5 L0*L26*L33; 4 L0*L31*RY_P
5 L0*L31*DROP_OHQ_Y; 47 L1*L4*TY_R_; 32 L1*L6*L6; 9 L1*L16*L18
13 L1*L25*L27; 1 L1*L27*L31; 5 L1*L27*L32; 26 L2*L3*L28
30 L2*L10*L17; 6 L2*L15*L18; 4 L2*L17*L32; 31 L3*L4*L32
22 L3*L4*RY_P; 93 L3*L5*L17; 1 L3*L10*L32; 46 L3*L14*L28
4 L3*L15*L32; 25 L3*L17*-OHD; 2 L3*L17*TY_R_; 28 L3*L18*L21
17 L3*L22*L31; 19 L3*L28*L30; 30 L4*L4*L31; 611 L4*L6*TY_R_
8 L4*L9*L24; 1 L4*L12*L15; 14 L4*L13*DROP_OHP_YQ; 12 L4*L13*RY_P
50 L4*L13*DROP_OHR_Y; 47 L4*L15*DROP_OHR_Y; 187 L4*L17*L26; 227 L4*L17*L27
42 L4*L18*L28; 23 L4*L20*L32; 92 L4*L21*DROP_OHQ_Y; 247 L4*L21*TY_R_
84 L4*L23*C_OHD_Y; 36 L4*L26*RY_Q; 42 L4*L28*RY_P; 42 L4*L28*TY_R_
1 L4*L29*L33; 12 L4*L29*DROP_OHQ_Y; 139 L4*+OCF*TY_R_; 12 L5*L5*L17
4 L5*L6*L22; 24 L5*L8*L24; 79 L5*L9*L27; 36 L5*L22*L27
8 L6*L10*L19; 22 L6*L10*L25; 14 L6*L14*L15; 10 L6*L14*L17
47 L6*L14*L27; 131 L6*L15*L26; 33 L6*L15*DROP_OHR_Y; 2 L6*L15*TX_R_
504 L6*L15*TY_R_; 1 L6*L17*DROP_OHQ_Y; 1 L6*L32*TY_R_; 3 L6*DROP_OHP_YQ*RY_P
2 L7*L18*L27; 39 L7*L25*L28; 10 L7*L28*L34; 12 L7*L28*DROP_OHQ_Y
21 L8*L17*L18; 7 L8*L17*TY_R_; 33 L8*L19*L21; 5 L8*L27*DROP_OHR_Y
5 L8*L31*C_OHD_Y; 10 L9*L18*L30; 43 L9*L25*L28; 5 L9*L27*TX_R_
15 L9*L28*L28; 3 L9*L28*RY_Q; 7 L10*L12*L17; 7 L10*L15*RX_P
40 L10*L25*L27; 35 L10*L25*L28; 11 L10*L27*RX_P; 40 L10*L27*TX_R_
39 L11*L17*L20; 11 L11*L17*L26; 7 L11*L17*DROP_OHR_Y; 41 L11*L21*L27
41 L11*L27*RX_Q; 24 L12*L27*RY_Q; 5 L12*L28*RX_P; 5 L13*L17*C_OHD_Y
56 L13*L24*L28; 100 L13*L26*L28; 2 L13*L28*L30; 98 L13*L28*TX_R_
3 L14*L17*L32; 7 L14*L17*L34; 24 L14*L18*RX_Q; 248 L14*L22*L27
3 L14*L27*L30; 248 L14*L27*RY_Q; 42 L14*L28*L29; 36 L15*L17*L27
6 L15*L17*-OHD; 5 L15*L17*RY_P; 31 L15*L17*TY_R_; 8 L15*L27*L29
2 L15*L28*L31; 15 L16*L18*L30; 20 L17*L17*TY_R_; 40 L17*L18*L20
10 L17*L19*L25; 21 L17*L22*L30; 9 L17*L26*DROP_OHP_YQ; 9 L17*L27*L30
1 L17*L30*-OHD; 20 L17*L32*-OHD; 10 L17*L32*RX_P; 16 L17*L33*-OHD
153 L18*L20*L27; 2 L18*L20*L30; 3 L18*L21*L24; 3 L18*L22*L30
9 L18*L28*RX_P; 19 L18*L30*RX_Q; 3 L18*L30*RY_Q; 17 L18*L30*TY_R_
42 L19*L27*+OCF; 81 L20*L28*RX_Q; 18 L21*L28*L28; 11 L25*L27*DROP_OHR_Y
5 L26*L28*L28; 4 L27*L30*L31; 1 L27*L30*L33; 30 L27*L30*DROP_OHQ_Y
9 L27*L30*RX_Q; 6 L27*L31*L33; 11 L27*TX_R_*TX_R_; 79 L28*L29*TY_R_
63 L28*+OCF*RX_Q; 48 L28*DROP_OHR_Y*TX_R_; 5 L30*L32*TY_R_; 22 -OHF*L13
16 -OHF*L15; 81 -OHF*TY_R_; 10 +OPR*L17; 20 -DPQ*L2
85 +CPQ*L5; 61 +CPQ*L9; 39 +CPQ*L14; 49 +CPQ*RX_P
342 +CPQ*DROP_OHQ_Y; 4 -DPR*L4; 4 -OHY*L13; 10 -OHY*L23
54 -OHY*RX_Q; 5 +OCY*L25; 98 -HCY*L5; 7 -HCY*L14
5 -HCY*L25; 36 -HCY*L32; 36 -HCY*L33; 147 -HCY*DROP_OHP_YQ
15 -HFY*L1; 22 -HFY*L27; 9 -HFY*L29; 7 -HFY*RX_Q
7 +DFY*L17; 152 +DFZ*L5; 10 +DFZ*L9; 14 +DFZ*L14
298 +DFZ*L26; 58 +DFZ*L28; 3 +DFZ*L30; 8 +DFZ*L31
43 +DFZ*DROP_OHQ_Y; 72 +DFZ*DROP_OHR_Y; 507 +DFZ*TY_R_; 47 +OCP*RX_Q
17 +OCP*TY_R_; 32 +OCQ*L17; 1 +OCQ*L30; 61 -CDQ*L9
149 -CDQ*L26; 2 -CDQ*L30; 165 -CDQ*DROP_OHQ_Y; 41 -HFR*L6
30 +HDR*L4; 68 +HYZ*L4; 29 -CYZ*L27; 137 +HYQ*L17
177 -CYQ*L17; 14 -OZQ*L4; 16 -OYR*L5; 56 -OYR*L14
56 +OZR*L10; 7 +OZR*L16; 15 +OZR*L24; 113 +OZR*TY_R_
35 -HPQ*L1; 131 -HPQ*L3; 14 -HPQ*L14; 74 -HPQ*L20
76 -HPQ*RX_Q; 3 -HPQ*DROP_OHR_Y; 146 +ODZ*L4; 9 -OFY*L6
8 -OFY*L19; 20 -OFY*L32; 20 -OFY*L33; 104 -OFY*-OHD
23 -OFY*DROP_OHQ_Y; 89 -OFY*TY_R_; 30 +HDZ*L7; 43 +HDZ*L14
24 +HDZ*L15; 9 +HDZ*L17; 68 +HDZ*L29; 2 +HDZ*L30
13 +HDZ*L32; 13 +HDZ*L33; 29 +HDZ*-OHD; 6 +HDZ*RY_P
106 +HDZ*DROP_OHR_Y; 905 +HDZ*TY_R_; 11 -OYZ*L6; 6 -OYZ*L14
3 +HQR*L17; 6 +CQR*L28; 6 -DYZ*L15; 27 -DYZ*L27
17 +DZP*L28; 24 +DZQ*L27; 91 +FZR*L4; 15 +FZR*L25
113 +FZR*L27; 42 +HZR*L4; 233 +YZR*L4; 301 +YZR*L5
22 +YZR*L6; 7 +YZR*L17; 4 C_ODR_Z*L18; 2 C_OFZ_Y*L6
50 C_HDR_Z*L4; 35 C_DYR_Z*L28; 21 TPY_R_*L28; 85 Q_OCFH_Y*L10
3 SP_ODRH_YZ_DH-1*L20; 3 SP_ODRH_YZ_DH-1*L23; 48 SP_ODRH_YZ_DH-1*L25; 13 SP_ODRH_YZ_DH-1*L26
61 SP_ODRH_YZ_DH-1*+OCF; 126 Q_OCDR_Z*L27; 3 Q_OCPF_YQ*L17; 52 Q_ODRF_YZ*L28
22 Q_HDRF_Z*L12; 11 Q_HDRF_Z*L17; 161 Q_HDRF_Z*L22; 5 Q_HDRF_Z*L31
27 Q_HDRF_Z*L34; 54 Q_HDRF_Z*DROP_OHQ_Y; 152 Q_HDRF_Z*RY_Q; 50 Q_HDRF_Z*DROP_OHR_Y
113 Q_HDRF_Z*TY_R_; 7 Q_CPDZ_Q*L27; 15 Q_CPDR_Q*L28; 20 Q_DRFY_Z*L28
```

Upper bound: `-1157696043/1000000000`.

### Leaf RRTmmmmmmpmmmpp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP -YZQ +ODZ +OFY`.

```c1top-geometry
C OHF Y Z +FOZ 157/250
P OHDFY +ODY
P OHFYZ -OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FOHYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODPR +YPR
P YODQR +YQR
P ZOHFR -ZHR
P ZOHYR -ZYR
P POHQR -PQR
```

```c1top-bounds
T OHF Y 3 lower 279/1000
T OHZ Y 6 lower 279/1000
S R - 2 upper 628/721
X R - 12 lower 29729/51000
Y R - 13 lower 296687/360500
B y Q 11 upper 1937737/3244500
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 109/125
f 279/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 299/500
r 291/500 1
t 411/500 1
```

```c1top-sum
178 L0*L4*L29; 171 L0*L6*L17; 292 L0*L17*L27; 16 L0*L17*L31
266 L0*L17*+OCF; 199 L0*L17*RY_Q; 539 L0*L17*TY_R_; 279 L0*L25*L29
443 L0*L27*L29; 230 L1*L1*L2; 29 L1*L1*L6; 207 L1*L1*L8
57 L1*L2*L2; 134 L1*L2*L6; 314 L1*L6*L6; 986 L1*L6*L26
53 L1*L6*TY_R_; 17 L1*L8*L10; 113 L1*L8*L20; 107 L1*L8*L23
388 L1*L8*L29; 218 L1*L8*+OCF; 16 L1*L8*RY_P; 180 L1*L10*L29
143 L1*L17*L24; 241 L1*L18*L25; 9 L1*L25*L32; 440 L1*L25*TY_R_
26 L2*L2*L32; 21 L2*L6*L32; 282 L2*L17*L27; 93 L2*L17*L32
35 L2*L27*L32; 385 L3*L3*L18; 412 L3*L5*L18; 52 L3*L11*TY_R_
21 L3*L17*L20; 120 L3*L17*DROP_OHP_YQ; 387 L3*L18*L22; 532 L3*L18*L27
5 L3*L18*L30; 131 L3*L18*TX_R_; 6 L3*L27*L29; 8 L3*L28*L30
537 L4*L4*L7; 33 L4*L4*RX_Q; 130 L4*L7*L29; 23 L4*L17*L17
1018 L4*L17*L27; 72 L4*L17*L33; 239 L4*L17*L34; 820 L4*L17*DROP_OHQ_Y
714 L4*L17*TY_R_; 275 L4*L22*L29; 526 L4*L27*L29; 131 L4*L29*RY_P
55 L4*L29*TY_R_; 241 L5*L5*RX_Q; 226 L5*L8*L17; 504 L5*L18*L25
80 L5*L18*L30; 136 L5*L25*L27; 66 L5*L27*L30; 39 L5*L28*L30
1 L5*L30*L32; 1 L5*L31*L34; 36 L6*L10*L17; 111 L6*L11*TY_R_
11 L6*L16*L17; 96 L6*L22*L28; 102 L6*L29*TY_R_; 6 L6*L34*TY_R_
274 L7*L10*L29; 1 L7*L11*L30; 337 L7*L27*L29; 159 L8*L17*L24
193 L8*L26*RX_Q; 21 L8*L31*TY_R_; 150 L8*+OCF*TY_R_; 2108 L9*L17*L27
9 L9*L17*L32; 9 L9*L18*L30; 17 L10*L10*L29; 233 L10*L17*C_OHD_Y
159 L10*L17*DROP_OHR_Y; 49 L10*L19*L29; 5 L10*L21*L28; 758 L10*L29*TX_R_
293 L11*L17*+OCF; 669 L11*L27*L29; 16 L11*L29*L29; 2 L16*L29*L30
16 L17*L17*L18; 188 L17*L17*L22; 41 L17*L17*L30; 41 L17*L17*L31
526 L17*L18*L22; 139 L17*L18*L26; 334 L17*L18*DROP_OHQ_Y; 22 L17*L18*DROP_OHR_Y
385 L17*L21*L22; 4 L17*L21*L31; 14 L17*L21*DROP_OHR_Y; 356 L17*L22*L24
740 L17*L22*-OHD; 56 L17*L22*RX_Q; 97 L17*L23*L25; 159 L17*L24*L34
8 L17*L25*RX_P; 20 L17*L25*RY_Q; 293 L17*L27*L27; 52 L17*L27*L30
110 L17*L27*L32; 127 L17*L27*DROP_OHP_YQ; 69 L17*L28*L28; 240 L17*L28*L34
2 L17*L30*TX_R_; 4 L17*L31*L33; 4 L17*L31*RX_Q; 1 L17*L33*L33
158 L17*-OHD*RX_P; 459 L17*C_OHD_Y*TX_R_; 11 L17*DROP_OHP_YQ*TX_R_; 526 L18*L18*RX_Q
255 L18*L21*L27; 226 L18*L24*L28; 293 L18*L25*L27; 180 L18*L27*L30
61 L18*L28*L30; 112 L18*L28*RX_P; 1 L18*L30*L32; 171 L19*L27*L29
10 L21*L27*L29; 455 L22*L27*L29; 41 L25*L27*L28; 29 L25*L28*L28
34 L25*L28*L29; 34 L27*L28*L30; 449 L27*L29*-OHD; 69 L28*L28*RX_Q
4 L28*L29*L31; 1 L28*L30*L30; 1 L29*L31*TY_R_; 20 L29*L32*C_OHD_Y
199 +OPQ*L29; 242 -DPQ*L4; 81 +CPQ*L7; 192 +CPQ*L9
7 +CPQ*L11; 342 +CPQ*L17; 536 +CPQ*L18; 1277 +CPQ*L20
1671 +CPQ*L27; 226 +CPQ*L28; 52 +CPQ*L30; 185 +CPQ*L31
12 +CPQ*L32; 385 +CPQ*-OHD; 788 +CPQ*DROP_OHR_Y; 488 -DPR*L1
615 -DPR*L5; 82 -DPR*L19; 570 -DPR*L20; 293 -DPR*L27
11 -DPR*L31; 41 -DPR*L33; 368 -OHY*L1; 35 -OHY*L10
589 -OHY*L29; 84 -OHY*L32; 853 -OHY*RY_Q; 658 -OHY*DROP_OHR_Y
864 -OHY*TX_R_; 721 -OHY*TY_R_; 161 -HCY*L1; 17 -HCY*L10
151 -HCY*L19; 7 -HCY*L22; 670 -HCY*L26; 5 -HCY*L30
5 -HCY*L31; 293 -HCY*DROP_OHP_YQ; 456 -HCY*DROP_OHR_Y; 302 -HCY*TX_R_
51 -HCY*TY_R_; 166 -HDY*L17; 213 +OCP*L3; 679 +OCP*L25
53 +OCP*L30; 95 +OCP*L34; 49 -CDQ*L3; 410 -CDQ*L5
269 -CDQ*L7; 192 -CDQ*L9; 130 -CDQ*L16; 851 -CDQ*L18
109 -CDQ*L22; 788 -CDQ*L24; 904 -CDQ*L27; 66 -CDQ*L28
354 -CDQ*C_OHD_Y; 79 -CDQ*RX_Q; 29 -HFR*L1; 444 -HFR*L2
314 -HFR*L6; 764 -HFR*L8; 316 -HFR*L21; 721 -HFR*L27
264 -HFR*L32; 244 -HFR*L33; 96 -HFR*RY_Q; 1202 -HFR*TY_R_
363 -DFR*L0; 749 -DFR*L4; 232 -DFR*L7; 6 -DFR*L9
417 -DFR*L10; 417 -DFR*L11; 131 -DFR*L19; 306 -DFR*L20
371 -DFR*L22; 116 -DFR*L27; 1 -DFR*L30; 230 -HPQ*L3
106 -HPQ*L10; 11 -HPQ*L18; 309 -HPQ*L27; 69 -HPQ*L28
280 -HPQ*L29; 9 -HPQ*L30; 113 -HPQ*L34; 203 -HPQ*RX_P
316 -HPQ*DROP_OHR_Y; 180 +OFY*L1; 17 +OFY*L10; 38 +OFY*L16
10 +OFY*L21; 3 +OFY*L25; 498 +OFY*L26; 255 +OFY*L29
24 +OFY*L32; 448 +OFY*+OCF; 220 +OFY*RY_Q; 761 +OFY*TX_R_
288 +OFY*TY_R_; 206 C_ODR_Z*L6; 232 C_ODR_Z*TY_R_; 137 TPX_R_*L28
19 TPY_R_*L27; 6 Q_OQDR_Z*L8; 8 Q_CPDR_Q*L29
```

Upper bound: `-8949940329/1000000000`.

### Leaf RRTmmmmmmpmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ -YZP +YZQ`.

```c1top-geometry
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODZQ -YDZ
P YODZR +YZR
P YODPR +YPR
P YODQR +YQR
P YOZPQ +YPQ
P YHDFZ -YFZ
P ZOHFR -ZHR
P ZOHYQ -ZHQ
P ZOHQR +ZQR
P ZOFYQ -ZFQ
P ZOYPQ +ZPQ
P ZHCDY -ZHD
P POHZQ +PHZ
P POHZR -PZR
P POHQR -PQR
P POFZQ +PFZ
```

```c1top-bounds
```

Exclusion: `cluster OHP Y HPY ZQ`.

### Leaf RRTmmmmmmpmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR -HPQ +YZP`.

```c1top-geometry
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODZP -YDZ
P YODZR +YZR
P YODPR +YPR
P YODQR +YQR
P YHDFZ -YFZ
P ZOHFR -ZHR
P ZOHYP -ZHP
P ZOHPR +ZPR
P ZOFYP -ZFP
P ZHCDY -ZHD
P POHQR -PQR
C OYP Z Q +YPQ 433351/628000
P YOZPQ +YZQ
P ZOHYQ -ZHQ
P ZOHQR +ZQR
P ZOFYQ -ZFQ
P POYZQ -PZQ
```

```c1top-bounds
```

Exclusion: `mesh HOPZYQ -1`.

### Leaf RRTmmmmmmpp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ -OYR +OZR +HPQ`.

```c1top-geometry
P OHDYR +ODY
P OHFZR -OFZ
P OHYZR -OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YODPR +YPR
P YODQR +YQR
P ZOHFY +ZFY
P ZOHFR -ZHR
P ZOHYR -ZYR
P POHYQ -PYQ
P POFQR -PQR
```

```c1top-bounds
T OHZ Y 6 lower 279/1000
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
6 L0*L0*L31; 16 L0*L5*L28; 26 L0*L7*L32; 92 L0*L7*RY_P
37 L0*L21*TY_R_; 169 L0*L22*L27; 13 L0*L28*RY_Q; 1 L1*L1*L15
48 L1*L16*L28; 81 L1*L17*L26; 44 L1*L17*L32; 91 L1*L17*C_OHD_Y
11 L1*L17*DROP_OHR_Y; 63 L1*L18*L20; 23 L1*L28*+OCF; 4 L1*L30*L33
27 L2*L2*TY_R_; 48 L2*L6*L33; 57 L2*L17*TY_R_; 11 L2*L28*L28
8 L2*L30*TY_R_; 19 L3*L3*L3; 23 L3*L3*L33; 9 L3*L11*L17
19 L3*L18*L19; 24 L3*L18*L32; 68 L3*L22*L29; 9 L3*L28*L29
4 L3*L30*L32; 21 L3*TY_R_*TY_R_; 231 L4*L4*L27; 554 L4*L4*TX_R_
6 L4*L6*L25; 375 L4*L7*L27; 11 L4*L17*L17; 33 L4*L18*L31
93 L4*L20*L29; 21 L4*L20*L31; 105 L4*L21*TY_R_; 79 L4*L26*L28
57 L4*L26*L29; 2 L4*L26*L32; 6 L4*L27*L27; 26 L4*L27*L31
42 L4*L27*-OHD; 3 L4*L28*L28; 15 L4*L28*L31; 34 L4*L29*L29
3 L4*L30*L33; 1 L4*L32*TY_R_; 302 L5*L5*L26; 10 L5*L15*L17
36 L5*L18*L27; 152 L5*L20*L20; 27 L5*L25*TY_R_; 234 L5*L29*RY_Q
62 L6*L6*L28; 7 L6*L6*TY_R_; 1 L6*L12*L27; 1 L6*L13*L28
1 L6*L15*L26; 10 L6*L17*L27; 8 L6*L18*L31; 2 L6*L20*TY_R_
23 L6*L28*RX_P; 1 L7*L10*L16; 1 L7*L12*DROP_OHP_Y; 1 L7*L13*C_OHD_Y
1 L7*L13*TY_R_; 22 L7*L17*L33; 25 L7*L28*L31; 5 L8*L17*L18
1 L9*L26*TY_R_; 16 L10*L17*L21; 1 L10*L24*TY_R_; 1 L10*L29*TY_R_
5 L11*L17*L20; 2 L11*L17*L31; 2 L12*L16*L21; 9 L12*L16*L28
1 L12*L17*L29; 8 L12*L27*TY_R_; 3 L13*L17*L20; 9 L13*L17*RY_Q
1 L13*L26*L26; 1 L13*L27*L28; 1 L13*L28*RY_P; 2 L13*L28*TY_R_
9 L14*L17*L21; 8 L14*L25*L27; 11 L15*L16*L28; 10 L15*L17*-OHD
58 L16*L20*L28; 2 L16*RY_P*TY_R_; 2 L17*L17*TY_R_; 20 L17*L18*L22
9 L17*L18*L30; 84 L17*L21*L27; 7 L17*L22*L33; 37 L17*L22*+OCF
105 L17*L23*TY_R_; 11 L17*L24*L28; 9 L17*L26*L27; 33 L17*L26*L28
93 L17*L27*+OCF; 17 L17*L27*RX_P; 22 L17*L29*L32; 25 L17*L33*+OCF
21 L17*RY_P*DROP_OHQ_Y; 11 L17*TY_R_*TY_R_; 12 L18*L21*L33; 95 L18*L21*DROP_OHQ_Y
103 L18*L22*L25; 88 L18*L22*L27; 19 L18*L23*L30; 27 L18*L27*RX_P
19 L18*L27*RY_P; 39 L18*L28*L31; 3 L18*L28*TY_R_; 11 L18*L30*RX_P
1 L18*L31*L31; 32 L19*L29*L29; 93 L19*L29*C_OHD_Y; 102 L19*L29*RY_Q
3 L19*TY_R_*TY_R_; 30 L20*L28*L31; 30 L20*L29*L32; 1 L20*L30*TY_R_
17 L22*L28*L30; 11 L24*L27*L29; 40 L25*L27*C_OHD_Y; 24 L25*L28*L32
3 L26*L27*TY_R_; 17 L26*L28*L32; 1 L26*L30*TY_R_; 50 L27*L27*L32
11 L27*L28*DROP_OHQ_Y; 9 L27*L31*RX_P; 5 L27*L32*L32; 44 L27*L32*RY_Q
50 L27*L32*TY_R_; 41 L27*C_OHD_Y*TX_R_; 6 L28*L30*L33; 1 L28*L32*TY_R_
9 L28*RX_P*RX_P; 1 L28*RX_P*DROP_OHR_Y; 8 L29*L29*L33; 1 L29*L29*TY_R_
3 L29*L33*RX_P; 11 L29*TX_R_*TY_R_; 25 L29*TY_R_*TY_R_; 1 L31*TY_R_*TY_R_
3 TY_R_*TY_R_*TY_R_; 74 -DPQ*L4; 8 -DPQ*L32; 54 +CPQ*L3
24 -DPR*L32; 10 -DPR*L33; 152 -DQR*L4; 1 -HFY*L17
9 +HCZ*L17; 1 +CDZ*TY_R_; 75 +OCP*L3; 214 +OCP*L25
68 +OCP*RY_P; 214 +OCP*DROP_OHR_Y; 214 -CDQ*L5; 257 -CDQ*L6
75 -CDQ*L20; 3 -CDQ*L32; 60 -CDQ*+OCF; 100 -CDQ*DROP_OHP_Y
22 -CDQ*RY_Q; 32 -HFR*L4; 353 -DFR*L4; 19 -DFR*L6
24 -DFR*L26; 26 -DFR*L32; 10 -DFR*RX_P; 50 -DFR*RY_P
99 +HDR*L18; 1 +HYZ*TY_R_; 1 -CYZ*TY_R_; 4 -CYP*L17
1 +FYQ*TY_R_; 75 -FPQ*L6; 151 -FPQ*L21; 234 -FPQ*L26
238 -FPQ*C_OHD_Y; 151 -FPQ*DROP_OHP_Y; 421 -FPQ*DROP_OHQ_Y; 1 -OZP*L28
209 +HPQ*L7; 216 +HPQ*L26; 20 +HPQ*L31; 9 +HPQ*L32
55 +HPQ*-OHD; 112 +HPQ*RX_P; 446 +HPQ*DROP_OHQ_Y; 81 +HPQ*RY_Q
46 +HPQ*TY_R_; 9 -CZQ*L17; 27 +CQR*L18; 2 +CQR*L29
8 -DZR*L27; 1 +FZR*L26; 1 +FQR*DROP_OHQ_Y; 1 +YPQ*TY_R_
213 -PQR*L0; 1 C_OHR_Y*+OCF; 141 C_HFP_Q*L17; 63 C_HFP_Q*L29
87 C_CDP_Q*L29; 13 TPX_R_*L7; 50 TPY_R_*L27; 41 TPY_R_*L28
12 Q_OCQH_Y*L29; 6 SP_OPDH_YQ_OD-1*L28; 5 SP_OPDH_YQ_OD1*L28; 1 SP_OPDH_YQ_PH-1*L17
8 Q_OQDH_Y*L27; 103 Q_OQFH_Y*L17; 1 SP_OPRH_YQ_OR-1*TY_R_; 1 SP_OPRH_YQ_PH-1*TY_R_
14 Q_OCDR_Z*L28; 11 Q_OQDR_Z*TY_R_; 34 Q_CPDF_Q*L28
```

Upper bound: `-3954607003/500000000`.

### Leaf RRTmmmmmpmmm

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ +OYR -OZR -HPQ -ODY`.

```c1top-geometry
C OCD Y Z -DOZ 140829/250000
C OCR Y P -CRP 157/250
C OCR Y Q -CRQ 157/250
P OHDFY -OFY
P OHDYZ +OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P DOCYZ -DYZ
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHPR +YPR
P YOHQR +YQR
P ZOCDR +ZCR
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
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 73/125 459/500
m 109/500 153/250
r 663/1000 1
t 939/1000 1
```

```c1top-sum
77 L0*L3*L4; 12 L0*L4*L17; 25 L0*L6*TY_R_; 13 L0*L7*L10
1 L0*L7*L30; 197 L0*L17*C_OCF_Y; 19 L0*L20*L27; 6 L0*L21*TY_R_
2 L0*L30*L30; 23 L1*L3*L30; 24 L1*L4*L22; 6 L1*L4*L31
1 L1*L6*L31; 70 L1*L6*+OCF; 269 L1*L6*C_OCF_Y; 73 L1*L7*L17
61 L1*L8*L17; 12 L1*L8*L22; 7 L1*L8*L28; 23 L1*L9*+OCF
1 L1*L10*L30; 81 L1*L10*C_OCF_Y; 10 L1*L17*L28; 12 L1*L22*RX_Q
24 L1*L22*TY_R_; 8 L1*L25*L29; 1 L1*L30*-OHD; 7 L1*L34*RX_Q
87 L2*L5*L10; 23 L2*L17*L32; 46 L3*L3*L6; 3 L3*L3*L25
71 L3*L4*L21; 66 L3*L5*L24; 42 L3*L6*+OCF; 28 L3*L7*L17
4 L3*L9*L25; 10 L3*L10*L32; 39 L3*L10*RX_Q; 168 L3*L10*TY_R_
13 L3*L11*L17; 2 L3*L12*L27; 40 L3*L17*L19; 32 L3*L17*L34
2 L3*L22*TY_R_; 1 L3*L25*L30; 4 L3*L25*L32; 40 L3*L27*C_OCF_Y
87 L3*L28*L29; 101 L3*L28*+OCF; 6 L3*RX_Q*TX_R_; 3 L4*L6*L13
1 L4*L9*L24; 3 L4*L10*TY_R_; 45 L4*L17*DROP_OHP_YQ; 49 L4*L17*RY_P
6 L4*L21*L27; 4 L4*L21*TX_R_; 62 L4*L24*L25; 1 L4*L24*L32
6 L4*L24*TY_R_; 2 L4*L25*RY_P; 18 L4*L27*C_OCF_Y; 29 L5*L6*L16
9 L5*L6*RX_Q; 35 L5*L8*RX_Q; 11 L5*L10*L30; 1 L5*L11*RY_Q
50 L5*L18*DROP_OHP_YQ; 315 L5*L25*C_OCF_Y; 12 L5*L27*L29; 8 L5*L30*L34
1 L5*L30*TY_R_; 3 L6*L14*L25; 2 L6*L15*L20; 1 L6*L16*L33
2 L6*L17*L18; 56 L6*L17*L22; 33 L6*L17*DROP_OCR_Y; 11 L6*L25*TY_R_
1 L6*L31*+OCF; 9 L6*C_OCF_Y*TY_R_; 6 L7*L10*L22; 3 L7*L12*L27
6 L7*L15*L27; 12 L7*L27*-OHD; 37 L7*L28*DROP_OCR_Y; 1 L7*L32*L34
52 L8*L16*TY_R_; 48 L8*L17*L26; 3 L8*L17*L31; 25 L8*L17*L32
3 L8*L18*L25; 64 L8*L18*RX_Q; 210 L8*L20*L27; 4 L8*L24*L28
100 L8*L25*L27; 1 L8*L25*L30; 5 L8*L27*L32; 4 L8*L27*RX_Q
227 L8*L28*C_OCF_Y; 1 L8*L29*L32; 1 L8*L32*L32; 129 L8*L32*C_OCF_Y
22 L9*L17*C_OCF_Y; 3 L9*L19*L19; 7 L9*L21*L24; 207 L9*L21*TY_R_
46 L9*L28*L28; 14 L9*L33*TY_R_; 36 L10*L17*L22; 56 L10*L17*DROP_OHP_YQ
7 L10*L21*L25; 6 L10*L21*TY_R_; 6 L10*L22*L31; 100 L10*L24*TY_R_
1 L10*L26*L27; 168 L10*L27*RX_Q; 1 L10*L30*L30; 48 L10*L31*C_OCF_Y
1 L10*TY_R_*TY_R_; 2 L12*L22*L27; 2 L12*L27*RY_Q; 2 L13*L21*L27
2 L13*L27*RX_Q; 33 L16*L30*TY_R_; 24 L17*L18*DROP_OHP_YQ; 87 L17*L20*L28
210 L17*L20*DROP_OCR_Y; 29 L17*L22*L22; 42 L17*L22*L31; 356 L17*L22*+OCF
79 L17*L22*TY_R_; 28 L17*L24*L26; 2 L17*L25*L34; 1 L17*L25*C_OCF_Y
28 L17*L25*DROP_OCR_Y; 287 L17*L27*+OCF; 57 L17*L27*DROP_OHP_YQ; 6 L17*L27*TY_R_
10 L17*L28*RX_P; 27 L17*L29*+OCF; 7 L17*L30*L32; 9 L17*L30*C_OCF_Y
9 L17*L31*+OCF; 25 L17*L32*DROP_OHP_YQ; 2 L17*L32*RY_Q; 31 L17*-OHD*DROP_OHQ_Y
34 L18*L20*L27; 59 L18*L20*TY_R_; 1 L18*L22*L30; 78 L18*L25*C_OCF_Y
6 L18*L25*DROP_OCR_Y; 70 L18*RX_P*RX_Q; 202 L20*L20*L27; 6 L21*L28*L34
24 L22*L26*L28; 4 L22*L27*DROP_OHQ_Y; 24 L23*L27*RY_Q; 75 L24*L28*L29
164 L24*L28*C_OCF_Y; 100 L25*L27*L34; 5 L28*L28*C_OCF_Y; 1 L28*L30*TX_R_
58 L28*DROP_OHQ_Y*RX_Q; 3 L30*L30*TY_R_; 1 L30*L32*L34; 3 L30*L34*DROP_OHP_YQ
22 L30*C_OCF_Y*TY_R_; 63 L32*C_OCF_Y*C_OCF_Y; 339 +CPQ*L8; 5 +CPQ*L24
19 +CPQ*L30; 916 +CPQ*C_OCF_Y; 229 +CPQ*RX_P; 254 +CPQ*DROP_OHQ_Y
25 -DPR*L1; 47 -DPR*+OCF; 6 -DPR*DROP_OCR_Y; 11 -DQR*L5
53 -HCY*L1; 142 -HCY*L3; 91 -HCY*L4; 78 -HCY*L20
4 -HCY*L24; 2 -HCY*L33; 386 -HCY*C_OCF_Y; 124 -HCY*DROP_OHP_YQ
25 +CFY*L1; 385 +OCP*L3; 30 +OCP*L30; 49 +HCQ*L17
85 -CDQ*L9; 284 -CDQ*L20; 101 -CDQ*C_OCF_Y; 25 -HFR*L4
38 -HFR*L10; 409 -HFR*C_OCF_Y; 161 -HFR*RX_P; 61 -DFR*+OCF
28 -DFR*C_OCF_Y; 83 +HDR*L6; 62 +HDR*L25; 3 -CYP*L1
15 -CYQ*L30; 44 +DYP*L17; 3 +DYP*L27; 13 -OYQ*L18
54 -OYQ*L31; 88 -OYQ*L32; 70 -OYQ*L33; 1013 -OYQ*C_OCF_Y
242 -OYQ*RX_Q; 173 -OYQ*TY_R_; 100 +OYR*L5; 20 +OYR*L18
1 +OYR*L30; 12 -HPQ*L1; 63 -HPQ*L8; 149 -HPQ*L20
55 -HPQ*L22; 25 -HPQ*L27; 7 -HPQ*L33; 13 -HPQ*+OCF
21 -HPQ*RY_P; 105 -HPQ*DROP_OHQ_Y; 5 -HPQ*TX_R_; 8 -ODY*L4
19 -ODY*L16; 4 -ODY*L24; 16 -ODY*L32; 421 -ODY*C_OCF_Y
235 -ODY*DROP_OHQ_Y; 155 -ODY*DROP_OCR_Y; 3 -DZR*L6; 34 -PQR*L3
169 C_OCD_Y*L17; 39 C_ODP_YQ*L9; 3 C_ODP_YQ*RY_P; 1 C_OQR_Y*L18
1 TPY_R_*L10; 26 Q_ODFH_Z*L17; 58 Q_OQFH_Y*L17; 50 Q_OCRF_Y*L17
3 Q_OCPR_YQ*L34; 2 Q_OQDZ_Y*L27; 9 Q_CPDR_Q*L21
```

Upper bound: `-4948756017/1000000000`.

### Leaf RRTmmmmmpmmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ +OYR -OZR -HPQ +ODY`.

```c1top-geometry
C OCR Y P -CRP 157/250
C OCR Y Q -CRQ 157/250
P OHDZR +ODZ
P OHFYR -OFY
P OHYZR +OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHDZ +YDZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHPR +YPR
P YOHQR +YQR
P ZOCDR +ZCR
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
c 307/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 291/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
150 L0*L8*L27; 28 L0*L8*L29; 89 L0*L17*DROP_OHP_YQ; 552 L0*L27*L29
273 L0*L28*L29; 93 L1*L2*L2; 284 L1*L4*L6; 11 L1*L4*L30
65 L1*L5*L25; 157 L1*L6*L8; 162 L1*L6*L26; 86 L1*L6*-OHD
155 L1*L6*C_OCF_Y; 42 L1*L6*DROP_OCR_Y; 28 L1*L9*L27; 167 L1*L17*L20
32 L1*L17*L24; 8 L1*L17*TX_R_; 5 L1*L25*L34; 21 L2*L2*L32
196 L2*L8*L27; 563 L2*L10*TY_R_; 4 L2*L30*L32; 17 L3*L3*L32
17 L3*L3*TY_R_; 4 L3*L5*L30; 132 L3*L9*L27; 273 L3*L10*L28
111 L3*L10*C_OCF_Y; 8 L3*L17*+OCF; 8 L3*L17*DROP_OHP_YQ; 17 L3*L18*L21
16 L3*L18*L28; 211 L3*L18*RX_Q; 361 L3*L18*TY_R_; 8 L3*L28*L30
182 L3*TY_R_*TY_R_; 40 L4*L4*L7; 202 L4*L5*L17; 121 L4*L6*L29
104 L4*L8*L27; 485 L4*L17*L26; 176 L4*L17*C_OCF_Y; 33 L4*L17*TX_R_
74 L4*L24*L27; 33 L4*L27*L32; 203 L4*L27*-OHD; 297 L4*L27*RY_Q
40 L4*L28*L29; 2 L4*L31*L32; 58 L5*L17*L28; 203 L5*L27*L28
3 L5*L30*L32; 41 L5*L30*TY_R_; 33 L6*L16*TY_R_; 23 L6*L17*DROP_OHQ_Y
24 L6*L27*RX_P; 74 L6*L27*DROP_OCR_Y; 134 L6*C_OCF_Y*TY_R_; 32 L8*L17*+OCF
111 L8*L24*L27; 176 L8*L27*TX_R_; 86 L8*L28*L28; 5 L11*L17*L25
152 L11*L27*L29; 124 L17*L17*L26; 10 L17*L17*L32; 135 L17*L17*-OHD
160 L17*L18*L20; 9 L17*L18*L31; 18 L17*L18*L32; 66 L17*L18*C_OHD_Y
98 L17*L18*DROP_OCR_Y; 23 L17*L20*TX_R_; 167 L17*L21*L21; 37 L17*L21*DROP_OHP_YQ
10 L17*L21*RY_P; 194 L17*L22*L27; 97 L17*L22*L28; 23 L17*L25*DROP_OHQ_Y
73 L17*L26*L26; 70 L17*L28*RY_P; 25 L17*L30*-OHD; 2 L17*L30*TY_R_
23 L17*L31*+OCF; 19 L17*L31*RX_Q; 35 L17*L31*TY_R_; 6 L17*L32*L32
59 L17*L32*C_OCF_Y; 61 L17*L32*DROP_OCR_Y; 36 L17*L32*TY_R_; 32 L17*L34*+OCF
205 L17*C_OHD_Y*RX_P; 38 L17*DROP_OHP_YQ*RY_P; 59 L17*RX_P*DROP_OCR_Y; 14 L17*RY_P*RY_P
294 L17*DROP_OHQ_Y*TY_R_; 119 L18*L22*L27; 22 L18*L22*L30; 255 L18*L22*RX_Q
13 L18*L27*L33; 199 L18*L27*C_OCF_Y; 77 L18*L28*RX_Q; 72 L18*L30*TY_R_
47 L19*L27*DROP_OHP_YQ; 327 L20*L27*L27; 35 L23*L27*DROP_OHP_YQ; 2 L24*L26*L28
264 L24*L28*L29; 116 L27*L28*L29; 23 L27*L28*L31; 162 L27*L28*DROP_OHP_YQ
17 L27*L29*L29; 2 L27*L30*L30; 36 L27*L30*DROP_OCR_Y; 31 L27*L33*C_OCF_Y
6 L30*L30*C_OHD_Y; 2 L30*L30*TY_R_; 25 -OHF*L3; 46 -OHF*TY_R_
9 +HDF*L6; 5 +OPQ*L18; 43 -DPQ*L2; 468 +CPQ*L22
200 +CPQ*L26; 77 +CPQ*L28; 71 +CPQ*L31; 1 +CPQ*L32
1162 +CPQ*DROP_OHQ_Y; 654 +CPQ*TY_R_; 97 +OCY*L4; 104 +OCY*L24
273 -HCY*L1; 224 -HCY*L25; 522 -HCY*L26; 11 -HCY*L31
133 -HCY*RX_P; 98 -HCY*DROP_OHQ_Y; 193 -HCY*TY_R_; 152 -HFY*L1
40 +OCP*L3; 13 +OCP*L28; 56 +OCP*L30; 126 +OCP*TY_R_
26 +HCP*L17; 91 -CDQ*L28; 49 -CDQ*L32; 162 -CDQ*DROP_OHQ_Y
300 -CDQ*DROP_OCR_Y; 279 -CDQ*TY_R_; 65 -HFR*L5; 176 -HFR*L8
152 -HFR*L11; 282 -HFR*L27; 20 -HFR*L31; 182 -HFR*DROP_OHQ_Y
283 -HFR*DROP_OCR_Y; 43 -DFR*L6; 76 -DFR*L27; 13 -DFR*C_OCF_Y
222 +HDR*L6; 122 +HYP*L17; 122 -CYP*L17; 254 +OYR*L6
145 +OYR*L20; 16 +OYR*L31; 125 +OYR*L32; 125 +OYR*L33
381 +OYR*-OHD; 157 +OYR*+OCF; 245 +OYR*TX_R_; 203 -HPQ*L4
98 -HPQ*L20; 3 -HPQ*L32; 230 -HPQ*RX_P; 428 -HPQ*RX_Q
209 -HPQ*TY_R_; 676 +ODY*L24; 166 +ODY*L27; 36 +ODY*L32
36 +ODY*L33; 119 +ODY*-OHD; 445 +ODY*C_OCF_Y; 339 +ODY*DROP_OCR_Y
33 C_ODR_Y*L17; 81 Q_OQDH_Y*L17; 260 Q_ORFH_Z*L4; 412 Q_HYRF_Z*L0
32 Q_HYRF_Z*L17; 43 Q_HYRF_Z*L24; 99 Q_HYRF_Z*L28; 9 Q_HYRF_Z*L29
130 Q_HYRF_Z*C_OCF_Y
```

Upper bound: `-260570627/40000000`.

### Leaf RRTmmmmmpmp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ +OYR -OZR +HPQ`.

```c1top-geometry
C OCR Y P -CRP 157/250
C OCR Y Q -CRQ 157/250
P OHDZR +ODZ
P OHFYR -OFY
P OHYZR +OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P DOFZP +DZP
P DOFZQ +DZQ
P DOFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHZP -YZP
P YOHZQ -YZQ
P YOHPR +YPR
P YOHQR +YQR
P ZOCDY -ZDY
P ZOCDR +ZCR
P ZOCYR +ZYR
P ZODPR +ZPR
P ZODQR +ZQR
P POHYQ -PYQ
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
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 291/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
12 L5*L27; 1 L17*L18; 5 L0*L3*L33; 1 L0*L9*L29
10 L0*L16*L30; 1 L0*L17*L34; 1 L0*L21*RY_Q; 7 L0*L25*L31
28 L0*L25*TY_R_; 1 L0*L31*L32; 5 L0*C_OCF_Y*TX_R_; 6 L1*L3*L3
18 L1*L4*L17; 13 L1*L17*L32; 15 L1*L17*RY_P; 40 L1*L17*DROP_OCR_Y
27 L1*L27*L27; 30 L2*L2*L33; 54 L2*L2*TY_R_; 131 L2*L4*L28
20 L2*L4*L31; 1 L2*L5*L34; 29 L2*L6*L28; 3 L2*L6*TY_R_
93 L2*L29*RY_P; 7 L2*L30*TY_R_; 8 L2*L33*C_OCF_Y; 8 L3*L3*L7
5 L3*L10*L24; 52 L3*L18*TY_R_; 5 L3*L19*L25; 18 L3*L22*L22
19 L3*L27*RX_P; 109 L3*L28*RY_Q; 21 L3*L29*L33; 8 L3*L32*L32
103 L4*L4*L29; 5 L4*L4*L31; 1 L4*L7*L19; 12 L4*L8*TX_R_
27 L4*L8*TY_R_; 27 L4*L9*L28; 2 L4*L10*L30; 27 L4*L17*L19
10 L4*L17*L33; 36 L4*L19*L29; 14 L4*L22*L31; 49 L4*L27*+OCF
17 L4*L29*RY_Q; 13 L4*L32*TX_R_; 55 L5*L5*L16; 4 L5*L6*L17
8 L5*L6*TY_R_; 22 L5*L8*L22; 67 L5*L18*L25; 38 L5*L18*RX_P
193 L5*L20*L20; 5 L5*L25*-OHD; 8 L5*L25*C_OCF_Y; 13 L5*L25*DROP_OCR_Y
54 L5*L27*L28; 7 L5*L29*L29; 15 L5*L30*TY_R_; 2 L6*L10*L28
2 L6*L10*TY_R_; 30 L6*L20*L28; 1 L6*L22*L31; 7 L6*L27*L29
6 L6*L27*TY_R_; 6 L7*L9*L23; 10 L7*L11*L17; 2 L7*L11*L27
24 L7*L28*L32; 1 L7*L31*RY_Q; 5 L8*L27*L27; 3 L8*L27*L32
2 L8*L27*RX_Q; 6 L8*L27*TX_R_; 28 L8*L28*RY_Q; 42 L8*L28*TY_R_
1 L8*L29*L32; 2 L9*L18*L27; 8 L9*L22*L25; 3 L9*L23*L29
6 L9*L25*DROP_OCR_Y; 5 L9*TY_R_*TY_R_; 7 L10*L17*L24; 1 L10*L17*L31
1 L10*L17*-OHD; 16 L10*L18*L19; 16 L10*L19*TY_R_; 8 L10*L21*L28
13 L10*L21*L29; 2 L10*L22*RX_P; 4 L10*L24*L31; 3 L10*L28*TX_R_
3 L10*L29*RX_P; 1 L10*L31*RY_P; 10 L11*L17*C_OCF_Y; 2 L11*L17*RX_P
3 L11*L17*DROP_OHQ_Y; 18 L11*L18*L27; 15 L11*L18*RY_P; 17 L16*L20*L28
31 L17*L17*L27; 30 L17*L17*DROP_OCR_Y; 27 L17*L18*L22; 11 L17*L18*L31
5 L17*L21*L26; 43 L17*L22*L33; 25 L17*L22*RX_P; 19 L17*L24*DROP_OCR_Y
19 L17*L25*L26; 4 L17*L25*L32; 34 L17*L27*L32; 165 L17*L27*C_OCF_Y
2 L17*L28*L29; 6 L17*L29*DROP_OCR_Y; 9 L17*L31*RY_P; 3 L17*L32*C_OCF_Y
23 L17*L32*RX_Q; 36 L17*L32*DROP_OCR_Y; 132 L17*+OCF*DROP_OCR_Y; 11 L18*L20*L34
32 L18*L22*L31; 123 L18*L22*RX_Q; 3 L18*L24*L31; 2 L18*L25*L32
11 L18*L26*L31; 2 L18*L26*L34; 54 L18*L27*-OHD; 2 L18*L28*TX_R_
23 L18*L30*RX_Q; 8 L18*L31*RY_Q; 33 L18*L33*RX_Q; 1 L18*L34*RX_P
2 L19*L29*L29; 7 L19*L29*L31; 27 L19*TY_R_*TY_R_; 98 L20*L27*L28
13 L20*L27*L29; 3 L21*L27*L34; 20 L21*L29*TY_R_; 122 L22*L27*L27
14 L22*L28*L31; 33 L24*L28*TY_R_; 3 L25*L32*L34; 27 L26*L26*L28
4 L26*L29*RX_P; 54 L27*L28*RY_P; 4 L27*L30*DROP_OHQ_Y; 14 L27*L32*DROP_OCR_Y
15 L27*L33*RX_P; 3 L27*L34*RX_Q; 28 L27*+OCF*DROP_OHQ_Y; 48 L28*L29*RY_P
5 L28*L30*L31; 20 L28*L31*+OCF; 4 L28*L31*TX_R_; 7 L28*L32*DROP_OHP_Y
41 L28*RX_P*DROP_OCR_Y; 2 L29*L30*L32; 9 L29*L31*-OHD; 7 L29*L32*L32
3 L29*L32*+OCF; 49 L29*L32*RY_P; 3 L29*L33*RX_P; 2 L29*L34*-OHD
1 L33*L33*C_OCF_Y; 5 TOPCOUNT*L8; 37 TOPCOUNT*L27; 168 +CPQ*L0
78 +CPQ*L4; 17 -DPR*L22; 1 -DQR*L31; 2 +OCY*L28
57 +OCY*TY_R_; 12 -HCY*L4; 3 -HCY*L6; 28 -HCY*L23
1 -HCY*L30; 11 -HCY*DROP_OHP_Y; 1 -HCY*RY_P; 53 -HCY*TY_R_
118 +OCP*L1; 48 +OCP*L3; 16 +OCP*L32; 107 +OCP*DROP_OHQ_Y
5 -OFP*L28; 89 -HFQ*L17; 85 -CDQ*L5; 26 -CDQ*L11
57 -CDQ*L16; 163 -CDQ*L21; 69 -CDQ*L27; 189 -CDQ*C_OCF_Y
203 -CDQ*DROP_OCR_Y; 7 -ODQ*L17; 44 +OCR*L17; 6 -DFR*L8
6 -DFR*L27; 22 -DFR*L32; 44 -DFR*DROP_OHQ_Y; 17 +HDR*L17
11 -CYP*L21; 9 -DYR*TY_R_; 11 -FPQ*L24; 63 -FPQ*L32
215 -FPQ*-OHD; 330 -FPQ*C_OCF_Y; 187 -FPQ*RX_Q; 199 -FPQ*DROP_OCR_Y
1 -OYP*L28; 65 -OYQ*L22; 56 -OYQ*L23; 34 -OYQ*L24
1 -OYQ*L33; 7 -OYQ*+OCF; 1 +OYR*L5; 10 +OYR*L20
24 +OYR*L27; 11 +OYR*L28; 1 +OYR*L31; 3 +OYR*L32
8 +OYR*DROP_OHP_Y; 34 +OYR*DROP_OCR_Y; 101 +HPQ*L7; 29 +HPQ*L17
59 +HPQ*L19; 264 +HPQ*L22; 74 +HPQ*L25; 53 +HPQ*RX_P
397 +HPQ*DROP_OHQ_Y; 88 +HPQ*RY_Q; 52 +HPQ*TX_R_; 98 +HPQ*TY_R_
13 +YPQ*L7; 100 -PQR*L4; 7 -PQR*L7; 4 -PQR*L29
4 C_OPR_YQ*L18; 80 C_CDP_Q*L22; 13 C_CPR_Q*L28; 61 TPX_R_*L4
7 TPY_R_*L6; 29 Q_ODFH_Z*L17; 16 Q_OPDH_YQ*L29; 19 Q_OCDR_Y*L27
5 Q_HPDR_Q*L27; 9 Q_HYRF_Z*L17
```

Upper bound: `-3881085223/1000000000`.

### Leaf RRTmmmmmppm

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ +OYR +OZR -HPQ`.

```c1top-geometry
C OCR Y Z -CRZ 157/250
C OCR Y P -CRP 157/250
C OCR Y Q -CRQ 157/250
P OHFYR -OFY
P OHFZR -OFZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P COFZR -CFZ
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHPR +YPR
P YOHQR +YQR
P ZOHFR -ZHR
P ZHCYR -ZYR
P POHQR -PQR
```

```c1top-bounds
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 1851/12500 70383/100000
z 93/1000 907/1000
w 1851/12500 907/1000
p 851/1000 1
q 1851/12500 12751/25000
l 56633/100000 45867/50000
m 18713/100000 3823/6250
r 9923/25000 1
t 79653/100000 1
```

```c1top-sum
4810 L0*L10*L17; 3721 L0*L17*L17; 20788 L0*L17*L28; 949 L1*L3*L6
715 L1*L6*L6; 12778 L1*L6*L10; 7381 L1*L6*L17; 375 L1*L6*L18
365 L1*L6*L30; 6602 L1*L8*L17; 8566 L1*L17*DROP_OCR_Y; 30 L2*L3*L27
2905 L2*L3*L28; 106169 L2*L4*L28; 82955 L2*L5*L5; 9244 L2*L6*L28
2905 L2*L8*L28; 2099 L2*L24*L32; 1741 L2*L28*L28; 726 L2*L28*L30
678 L2*L28*L32; 190644 L3*L5*L18; 2877 L3*L5*L32; 1009 L3*L6*L18
9244 L3*L6*TY_R_; 58219 L3*L10*L24; 13482 L3*L10*L27; 33023 L3*L17*L19
3692 L3*L17*L33; 93429 L3*L18*L18; 10613 L3*L18*L24; 23710 L3*L18*L27
84365 L3*L18*L28; 7673 L3*L24*L28; 365 L3*L27*L30; 765 L3*L27*L32
1780 L4*L5*L30; 31008 L4*L8*L17; 40764 L4*L8*L27; 44595 L4*L8*L28
9510 L4*L10*L30; 10366 L4*L17*L17; 9201 L4*L17*L34; 10950 L4*L17*RX_P
19403 L4*L17*DROP_OCR_Y; 276941 L4*L24*L28; 100493 L4*L27*L29; 627 L4*L27*L30
81275 L4*L27*TX_R_; 14189 L5*L5*L6; 46323 L5*L5*L25; 1009 L5*L6*L25
107052 L5*L6*L28; 16850 L5*L8*L18; 10190 L5*L17*L33; 2240 L5*L18*L30
45432 L5*L25*L27; 1668 L5*L28*L30; 36111 L6*TY_R_*TY_R_; 70290 L7*L27*L27
99779 L7*L27*L28; 11834 L8*L17*DROP_OCR_Y; 5009 L8*L18*L32; 31115 L8*L27*L27
57976 L8*L27*L28; 6816 L8*L27*L32; 31162 L8*L28*L28; 6717 L8*L28*L32
13434 L9*L18*L28; 726 L9*L28*L30; 50862 L10*L17*L22; 1353 L10*L17*L32
40335 L10*L17*-OHD; 5785 L10*L17*RY_Q; 1353 L10*L18*L30; 18337 L10*L24*L27
17212 L10*L24*L28; 6816 L10*L24*L32; 12778 L10*L27*TX_R_; 6449 L10*L28*L30
11834 L11*L17*TX_R_; 3136 L17*L17*L18; 29337 L17*L18*L19; 132015 L17*L18*L22
13842 L17*L18*L27; 8917 L17*L18*L31; 30162 L17*L18*-OHD; 7057 L17*L21*L32
10653 L17*L22*L22; 63509 L17*L22*RX_Q; 10653 L17*L22*RY_Q; 14262 L17*L24*L26
2464 L17*L24*L32; 6665 L17*L25*L28; 14262 L17*L25*DROP_OCR_Y; 14994 L17*L26*-OHD
19515 L17*L27*L32; 62287 L17*L27*RY_Q; 9977 L17*L27*TY_R_; 10322 L17*L28*L29
29867 L17*L28*L32; 117170 L17*L28*RY_Q; 7349 L17*L32*DROP_OHP_YQ; 13986 L17*L32*DROP_OCR_Y
25276 L17*-OHD*-OHD; 10193 L17*-OHD*TX_R_; 14668 L18*L18*L30; 2464 L18*L24*L30
1392 L18*L27*L31; 17438 L18*L28*L30; 44895 L21*L27*L27; 70463 L24*L28*L28
869 L24*L28*L30; 4988 L27*L27*L30; 918 L27*L28*L31; 15511 L27*L28*+OCF
30 L27*L29*L29; 365 L27*L29*L30; 6581 L28*L28*L30; 16671 L28*L28*TX_R_
70463 -OHF*L1; 27897 -OHF*L17; 375 -OHF*L18; 715 -OHF*L24
12383 -OHF*L26; 190 -OHF*TX_R_; 32829 -OHF*TY_R_; 9313 +ODF*L17
14113 -DPQ*L17; 172443 +CPQ*L4; 26710 +CPQ*L6; 15206 +CPQ*L8
115295 +CPQ*L10; 137318 +CPQ*L18; 127568 +CPQ*L21; 210861 +CPQ*L28
6537 +CPQ*+OCF; 52026 +CPQ*DROP_OHP_YQ; 127568 +CPQ*DROP_OHQ_Y; 20795 +CPQ*DROP_OCR_Y
26710 +CPQ*TX_R_; 6537 +OCY*L2; 112195 +OCY*L4; 206819 +OCY*L19
58219 +OCY*L24; 63408 +OCY*L28; 15871 +OCY*L32; 53944 -HCY*L2
33810 -HCY*L17; 60449 -HCY*L22; 13385 -HCY*L27; 31162 -HCY*L28
2416 -HCY*L31; 52238 -HCY*RX_P; 26867 -HCY*RY_P; 26867 -HCY*TY_R_
23260 +CDY*L17; 7218 +OCP*L1; 5542 +OCP*L2; 105198 +OCP*L5
15206 +OCP*L9; 103163 +OCP*L10; 31562 +OCP*L18; 420 +OCP*L24
15249 +OCP*L27; 2416 +OCP*L30; 1055 +OCP*L32; 3721 +HCP*L17
86102 -CDQ*L4; 7820 -CDQ*L6; 6537 -CDQ*L9; 32904 -CDQ*L10
127822 -CDQ*L18; 50606 -CDQ*L27; 144313 -CDQ*L28; 6537 -CDQ*+OCF
64517 -CDQ*DROP_OCR_Y; 7820 -CDQ*TX_R_; 905 -HFR*L6; 12778 -HFR*L10
8197 -HFR*L22; 90809 -HFR*L27; 3763 -HFR*L30; 3398 -HFR*L31
911 -HFR*L33; 87134 -HFR*-OHD; 1822 -HFR*RY_P; 90809 -HFR*TY_R_
50292 -DFR*L4; 34179 -DFR*L27; 57856 -DFR*L28; 21743 -OYQ*L3
60449 -OYQ*L5; 45077 -OYQ*L18; 71458 +OYR*L0; 54409 +OYR*L5
10628 +OYR*L18; 31115 +OYR*L27; 12129 +OYR*L32; 11834 +OYR*+OCF
11834 +OYR*RX_P; 47825 +OYR*RY_Q; 9485 -HPQ*L0; 15206 -HPQ*L3
10856 -HPQ*L4; 15206 -HPQ*L8; 58044 -HPQ*L10; 5303 -HPQ*L18
4536 -HPQ*L24; 8266 -HPQ*L26; 49739 -HPQ*-OHD; 11834 -OFY*L17
67586 TPX_R_*L27; 133116 TPX_R_*L28; 17924 Q_OCDH_Y*L17; 3866 Q_CPDR_ZQ*L1
95449 Q_CPDR_ZQ*L5; 1009 Q_CPDR_ZQ*L6; 24942 Q_CPDR_ZQ*L27
```

Upper bound: `-592242203766647/500000000000000`.

### Leaf RRTmmmmmppp

Assumptions: `-FPQ -OYP -OZP -OYQ -OZQ +OYR +OZR +HPQ`.

```c1top-geometry
C OCR Y Z -CRZ 157/250
C OCR Y P -CRP 157/250
C OCR Y Q -CRQ 157/250
P OHFYR -OFY
P OHFZR -OFZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P COFZR -CFZ
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FOCYZ +FYZ
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YOHPR +YPR
P YOHQR +YQR
P ZOHFR -ZHR
P ZHCYR -ZYR
P POHYQ -PYQ
P POFQR -PQR
```

```c1top-bounds
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
13 L0*L3*L32; 26 L0*L7*+OCF; 50 L0*L8*L23; 3 L0*L8*L33
42 L0*L8*TY_R_; 12 L0*L17*L29; 11 L0*L18*L31; 24 L0*L29*L32
75 L0*L29*RY_P; 102 L0*L31*TY_R_; 13 L1*L2*L11; 1 L1*L9*L12
53 L1*L16*L28; 18 L1*L17*L32; 53 L1*L17*-OHD; 690 L1*L17*TY_R_
1 L2*L13*L18; 2 L2*L13*+OCF; 1 L2*L13*TY_R_; 3 L2*L18*L34
17 L2*L30*TY_R_; 3 L3*L3*L22; 91 L3*L4*L20; 19 L3*L15*L17
55 L3*L17*DROP_OCR_Y; 166 L3*L18*L22; 254 L3*L18*L26; 104 L3*L18*L28
213 L3*L18*TY_R_; 3 L3*L21*L32; 271 L3*L26*L28; 27 L3*L27*L31
546 L4*L4*L17; 22 L4*L5*L31; 16 L4*L6*L17; 140 L4*L6*L27
1 L4*L9*L12; 17 L4*L10*L17; 13 L4*L13*L27; 4 L4*L14*TX_R_
1 L4*L21*L34; 6 L4*L22*L31; 311 L4*L22*TX_R_; 463 L4*L26*TX_R_
219 L4*L27*DROP_OHQ_Y; 73 L4*L29*RX_Q; 11 L4*L31*RX_Q; 46 L4*L31*DROP_OCR_Y
100 L4*DROP_OHQ_Y*TX_R_; 136 L5*L6*L28; 12 L5*L10*L12; 2 L5*L11*L29
2 L5*L15*TY_R_; 33 L5*L17*L32; 2 L5*L25*L29; 249 L5*L28*RX_P
50 L6*L17*L28; 85 L6*L17*DROP_OCR_Y; 9 L6*L18*L30; 44 L6*L18*RX_Q
573 L6*L18*TY_R_; 39 L6*L20*L33; 25 L6*L20*TY_R_; 83 L6*L27*L27
24 L6*L28*DROP_OHQ_Y; 6 L6*L29*L32; 122 L6*L33*TY_R_; 1 L7*L15*RX_Q
3 L7*L17*L33; 28 L7*L28*L32; 1 L7*L32*L32; 6 L7*L32*TX_R_
2 L8*L14*TY_R_; 1 L8*L17*TY_R_; 12 L8*L18*RY_P; 1 L8*L19*L21
37 L8*L27*DROP_OCR_Y; 2 L8*L28*RX_Q; 12 L9*L14*L27; 34 L9*L22*L27
23 L9*L28*L28; 14 L10*L13*TY_R_; 2 L10*L17*L26; 2 L10*L17*L31
22 L10*L17*+OCF; 18 L10*L21*RX_P; 3 L10*L22*L31; 71 L10*L23*L24
4 L10*L25*L33; 1 L11*L17*L32; 13 L11*L28*DROP_OHQ_Y; 2 L11*L29*RY_P
11 L13*L23*L27; 12 L13*L27*L28; 1 L13*L27*L32; 3 L14*L17*L30
7 L14*L17*RX_P; 6 L14*L17*DROP_OCR_Y; 2 L14*L26*L27; 25 L15*L17*L20
1 L15*L19*L21; 6 L15*L27*DROP_OHP_Y; 2 L15*L27*TY_R_; 1 L15*L29*TY_R_
81 L16*L17*L22; 128 L16*L23*L27; 48 L16*L28*DROP_OHQ_Y; 482 L16*L28*TY_R_
69 L17*L21*L27; 355 L17*L22*L24; 32 L17*L25*L32; 81 L17*L25*DROP_OCR_Y
16 L17*L26*L32; 15 L17*L27*RX_P; 8 L17*L31*TY_R_; 12 L17*L32*+OCF
81 L17*TX_R_*TY_R_; 61 L18*L20*L23; 278 L18*L20*L27; 80 L18*L27*RX_P
15 L18*L28*RX_P; 1 L18*L30*L32; 7 L18*L30*TX_R_; 3 L18*L31*RY_P
509 L18*RX_Q*TY_R_; 68 L19*L20*L28; 15 L19*L29*-OHD; 270 L21*L28*TY_R_
13 L22*L29*L32; 21 L24*L28*L32; 17 L24*L29*RY_P; 8 L25*L28*L31
16 L25*L28*RX_P; 188 L26*L27*L27; 37 L26*L28*L31; 26 L27*L28*+OCF
71 L27*L29*-OHD; 108 L27*L29*RX_Q; 4 L27*L30*L30; 23 L27*L32*RX_P
201 L27*+OCF*DROP_OCR_Y; 188 L27*DROP_OCR_Y*DROP_OCR_Y; 26 L28*L29*RX_P; 39 L28*L31*DROP_OHQ_Y
2 L29*L32*L33; 3 L29*L32*RY_P; 4 L31*L31*TY_R_; 13 KLOW*L31
123 -OHF*L17; 92 +OPQ*L28; 12 +OCY*L2; 4 +OCY*L31
11 +OCY*L33; 14 +OCY*DROP_OHQ_Y; 92 +OCY*TY_R_; 10 -HCY*L33
42 -HCY*DROP_OCR_Y; 48 -HCY*TY_R_; 1 +OCZ*L27; 22 +OCP*L8
11 +OCP*L18; 52 +OCP*L24; 12 +OCP*L30; 150 +OCP*DROP_OCR_Y
767 +OCP*TY_R_; 10 -HFQ*L17; 143 -CDQ*L5; 33 -CDQ*L6
91 -CDQ*L19; 24 -CDQ*L21; 146 -CDQ*DROP_OCR_Y; 98 -OFQ*L17
17 -HFR*L17; 49 -HFR*L20; 21 -HFR*L32; 140 -HFR*DROP_OHQ_Y
98 -DFR*L3; 190 -DFR*L4; 1 -DFR*L14; 6 -DFR*L31
256 -DFR*RY_P; 83 -DFR*DROP_OCR_Y; 12 +HYZ*L27; 2 -CYZ*TY_R_
19 -CYP*L2; 1 +HYR*L18; 55 -FPQ*L24; 93 -FPQ*L28
17 -FPQ*L31; 179 -FPQ*-OHD; 100 -FPQ*RX_P; 504 -FPQ*DROP_OHQ_Y
220 -FPQ*DROP_OCR_Y; 1071 -FPQ*TY_R_; 34 -OYQ*L23; 5 -OYQ*L32
1 -OYQ*DROP_OHQ_Y; 29 +OYR*L23; 36 +OYR*L28; 1 +OYR*L33
13 +OYR*RY_P; 37 +OYR*DROP_OCR_Y; 1 +OZR*L29; 213 +HPQ*L4
95 +HPQ*L29; 40 +HPQ*L31; 135 +HPQ*RX_P; 712 +HPQ*DROP_OHQ_Y
120 +HPQ*DROP_OCR_Y; 118 +HPQ*TX_R_; 1401 +HPQ*TY_R_; 1 -CZP*L16
1 -CZP*RX_P; 1 -CZQ*L10; 2 +DZQ*L9; 1 -DZR*TX_R_
1 +FZR*L22; 1 +FZR*RY_Q; 2 +FPR*L10; 14 +YPQ*L18
16 +YPQ*L28; 1 +YPQ*L32; 456 -PQR*L4; 103 C_CDP_Q*L0
201 C_CDR_Z*L27; 84 TPX_R_*L2; 3 TPX_R_*L14; 238 TPX_R_*L22
244 TPX_R_*L26; 150 TPX_R_*-OHD; 60 TPX_R_*RY_P; 50 Q_OCDF_YZ*L17
1 Q_OCZR_Y*L24; 57 Q_OPDR_YZQ*L29; 72 Q_OQDR_YZ*L6; 1 Q_OQDR_YZ*L12
19 Q_OQDR_YZ*L23; 1 Q_OQDR_YZ*L25; 36 Q_OQDR_YZ*RX_P; 84 Q_OQDR_YZ*DROP_OHQ_Y
337 Q_OQDR_YZ*TY_R_; 15 Q_CPDY_Q*L28; 1 Q_CPDZ_Q*L29; 52 Q_CPDR_ZQ*L18
31 Q_CPDR_ZQ*L32; 22 Q_CQDR_Z*L7; 8 Q_CQDR_Z*L32; 71 Q_CPRF_Q*L28
```

Upper bound: `-1287776919283/45500000000`.

### Leaf RRTmmmmp

Assumptions: `-FPQ -OYP -OZP -OYQ +OZQ`.

```c1top-geometry
P OHDZQ -ODZ
P OHDZR +OZR
P OHFZQ -OFZ
P OHYZQ -OYZ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCZ +DHZ
P DOCZP +DZP
P DOCZQ +DZQ
P DOCZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YHDPR +YPR
P YHDQR +YQR
P ZOHCQ -ZHQ
P ZOHDY +ZDY
P ZOHFY +ZFY
P ZOHFR -ZHR
P ZOHYQ -ZYQ
P ZOHYR -ZYR
P ZOCPQ +ZPQ
P ZODFQ -ZFQ
P ZODQR +ZQR
P POFZQ +PFZ
P POFZR -PZR
P POFQR -PQR
C OCD Z Y -DOY 140829/250000
```

```c1top-bounds
T OCD Z 1 lower 93/299
T OHZ Y 6 lower 279/1000
T OCQ Z 1 lower 603477/1323053
T OCQ Z 11 lower 279/628
E OD ZPQ 2 lower 837/1000
B x Q 10 lower 1319221201/1984579500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 57/125 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 83/125 459/500
m 111/250 153/250
r 663/1000 1
t 939/1000 1
```

```c1top-sum
1 L1*L6*L20; 1 L1*L6*TY_R_; 1 L1*L13*L17; 4 L1*L16*L22
1 L2*L2*L33; 1 L2*L5*L9; 18 L2*L5*L20; 4 L2*L5*DROP_OHP_Y
4 L2*L8*L23; 1 L2*L10*L27; 1 L2*L11*L24; 5 L2*L19*TY_R_
11 L2*L21*TY_R_; 1 L2*L25*C_OHD_Y; 1 L2*L27*L34; 1 L3*L7*L32
1 L3*L9*L18; 3 L3*L22*L32; 16 L4*L5*L20; 1 L4*L6*L7
4 L4*L6*L27; 3 L4*L8*L23; 1 L4*L17*L30; 1 L4*L31*RY_Q
1 L5*L5*L13; 5 L5*L5*DROP_OHP_Y; 9 L5*L5*RX_Q; 2 L5*L7*L28
1 L5*L8*DROP_OHQ_Y; 1 L5*L12*L18; 12 L5*L16*TY_R_; 13 L5*L20*L25
1 L5*L20*L34; 4 L5*L30*TY_R_; 1 L6*L12*TY_R_; 1 L6*L14*L17
2 L6*L17*RY_P; 4 L6*L18*TY_R_; 20 L6*L20*TY_R_; 4 L6*RY_P*TY_R_
2 L6*RX_Q*TY_R_; 1 L7*L10*L22; 1 L7*L12*L26; 21 L7*L20*L26
7 L7*L22*L26; 2 L7*L30*DROP_OCQ_Z; 1 L10*L17*RY_Q; 1 L10*L22*L23
1 L11*L22*L25; 1 L11*L22*TX_R_; 1 L12*L17*RY_P; 1 L12*L17*TY_R_
2 L12*L26*TY_R_; 2 L13*L18*L22; 2 L13*L22*TY_R_; 1 L13*L27*RX_P
1 L14*L20*L23; 1 L14*L20*TY_R_; 2 L14*L24*L27; 2 L15*L17*L21
1 L15*L27*DROP_OHQ_Y; 10 L16*L20*TY_R_; 2 L16*L22*L30; 10 L16*L24*L27
12 L16*L27*RY_Q; 2 L16*L28*RX_Q; 3 L17*L17*RX_Q; 3 L17*L17*TY_R_
2 L17*L20*L32; 8 L17*L21*RY_P; 9 L17*L24*DROP_OCQ_Z; 3 L17*L25*RY_P
1 L17*L26*L31; 6 L17*L27*TY_R_; 1 L17*L31*DROP_OHQ_Y; 1 L17*L32*RX_Q
2 L17*L32*TX_R_; 1 L17*-OHD*DROP_OHQ_Y; 1 L17*RX_P*TY_R_; 11 L17*DROP_OHQ_Y*DROP_OHQ_Y
8 L17*DROP_OHQ_Y*RY_Q; 1 L17*RX_Q*RX_Q; 1 L18*L18*L29; 10 L18*L21*TY_R_
17 L18*L24*L27; 5 L18*L24*RX_Q; 3 L18*L28*RX_Q; 4 L18*RX_P*RX_Q
2 L20*L27*L31; 2 L21*L23*L24; 5 L22*L24*L33; 13 L22*L26*TX_R_
19 L22*L27*DROP_OHQ_Y; 7 L22*L30*TY_R_; 2 L22*RX_P*RX_P; 1 L24*L33*TY_R_
10 L25*L27*RX_P; 8 L27*L27*RX_P; 17 L27*DROP_OHQ_Y*RX_Q; 2 L28*RX_P*TX_R_
5 L29*RY_P*RY_P; 1 -OHF*TY_R_; 3 +CPQ*L28; 1 -DPR*L7
14 -DPR*TY_R_; 4 -DQR*L2; 1 -DQR*L6; 4 -DQR*L17
7 -DQR*L19; 26 -DQR*L22; 2 -DQR*L32; 1 -CDP*L29
4 -OFP*L17; 2 -CDQ*L15; 14 -CDQ*L20; 19 -CDQ*L26
1 -CDQ*L31; 4 -CDQ*L32; 3 -CDQ*C_OHD_Y; 11 -CDQ*DROP_OHQ_Y
23 -CDQ*RY_Q; 30 -CDQ*TY_R_; 9 -OFQ*L17; 2 -HFR*RX_P
12 -DFR*DROP_OHP_Y; 1 +HYR*L17; 1 -DYR*L17; 3 -FPQ*L32
4 -FPQ*DROP_OHP_Y; 2 -FPQ*DROP_OHQ_Y; 9 -FPQ*RX_Q; 33 -FPQ*RY_Q
20 -FPQ*TY_R_; 2 -OZP*L20; 1 -OZP*L29; 1 +OZQ*L7
3 +OZQ*DROP_OHP_Y; 2 -CZQ*DROP_OHP_Y; 2 -CZQ*RY_Q; 2 +CQR*L27
14 +FQR*L17; 1 +YQR*L2; 2 +ZQR*TY_R_; 7 C_OCQ_Z*L23
2 C_OCQ_Z*L31; 3 C_OCQ_Z*L33; 2 C_OCQ_Z*RY_P; 12 C_ODP_ZQ*L20
1 C_ODP_ZQ*L33; 6 C_OPQ_Z*L4; 6 C_OPQ_Z*L20; 11 C_OPQ_Z*L26
5 C_OPQ_Z*L29; 8 C_OPQ_Z*TX_R_; 2 C_HCQ_Z*L7; 1 C_DZP_Q*L29
2 TPX_R_*L15; 15 TPX_R_*L20; 1 TPX_R_*L33; 8 TPX_R_*RY_P
6 TPX_R_*DROP_OHQ_Y; 1 SP_OCDH_YZ_CH-1*L17; 1 SP_OCQH_YZ_OQ1*L17; 2 Q_OPFH_YZQ*L5
5 Q_OCPD_ZQ*L29; 3 Q_OCQD_Z*L5; 11 Q_OCQD_Z*L27; 1 Q_OCPQ_Z*L15
5 Q_OCPQ_Z*L23; 1 Q_OCPQ_Z*L30; 4 Q_OCPQ_Z*L32; 8 Q_OCPQ_Z*RX_P
6 Q_OCPQ_Z*RY_P; 4 Q_OCPQ_Z*TX_R_; 11 Q_OCPQ_Z*TY_R_; 3 Q_OCQR_Z*L5
3 Q_OCQR_Z*L17; 2 Q_HCDR_Z*L17; 6 Q_CPDR_Q*L27; 1 Q_FZPR_Q*L4
```

Upper bound: `-44302630339/91000000000`.

### Leaf RRTmmmp

Assumptions: `-FPQ -OYP -OZP +OYQ`.

```c1top-geometry
P OHDYQ -ODY
P OHDYR +OYR
P OHFYQ -OFY
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YOHPQ +YPQ
P YOHPR +YPR
P YODQR +YQR
P POFQR -PQR
C OCD Y Z -DOZ 140829/250000
C OCQ Y Z -QOZ 207719321/540750000
P OHDYZ +OYZ
P DOCYZ -DYZ
P YOHZP -YZP
P YODZQ -YZQ
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCZ Y 7 lower 279/628
T OCQ Y 1 lower 603477/1323053
T OCQ Y 11 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 1319221201/1984579500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 57/125 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 83/125 459/500
m 111/250 153/250
r 663/1000 1
t 939/1000 1
```

```c1top-sum
1 L0*TY_R_*TY_R_; 2 L2*L5*L6; 1 L2*L5*TY_R_; 1 L2*L20*L23
2 L2*L26*RY_P; 2 L3*L18*L20; 1 L3*L18*C_OCF_Y; 1 L3*L22*L32
1 L4*L4*TY_R_; 2 L4*L17*+OCF; 1 L4*L17*DROP_OCR_Y; 1 L4*L21*L23
1 L4*L27*L30; 1 L4*L28*TY_R_; 1 L4*L29*L32; 2 L5*L6*DROP_OCQ_Y
2 L5*L18*L29; 1 L5*L20*L24; 1 L5*L20*L30; 1 L5*L26*L26
1 L5*L27*-OHD; 1 L6*L18*L25; 1 L6*L20*L27; 1 L6*L20*L33
2 L6*DROP_OHP_Y*TY_R_; 1 L7*L20*RY_P; 1 L7*L24*RY_P; 1 L7*RY_P*RY_P
1 L9*L22*RX_Q; 1 L16*L22*L25; 2 L16*L22*RX_Q; 1 L16*L27*L33
1 L16*DROP_OCQ_Y*TY_R_; 1 L17*L21*L32; 1 L17*L25*DROP_OCQ_Y; 4 L17*L27*RY_Q
3 L17*C_OCF_Y*DROP_OCR_Y; 6 L17*DROP_OCQ_Y*RY_Q; 4 L17*DROP_OCQ_Y*DROP_OCR_Y; 1 L18*L21*L30
11 L20*L22*TY_R_; 1 L20*L27*L32; 1 L21*L24*L27; 1 L22*L22*L25
3 L25*L25*L27; 3 L25*L25*TY_R_; 1 L25*L29*DROP_OCQ_Y; 1 L26*L27*L28
2 +OCD*L27; 1 -DQR*TX_R_; 1 -CFP*L17; 1 +OCQ*L5
6 -CDQ*L20; 2 -CDQ*L29; 1 -CDQ*L32; 1 -CDQ*DROP_OHP_Y
2 -CDQ*DROP_OCQ_Y; 3 -CDQ*DROP_OCR_Y; 2 -CFQ*L17; 2 +OCR*L17
2 -DFR*DROP_OHP_Y; 6 -FPQ*L20; 4 -FPQ*L22; 1 -FPQ*DROP_OHP_Y
1 -FPQ*RX_P; 1 -FPQ*DROP_OCQ_Y; 6 -FPQ*RY_Q; 1 -PQR*DROP_OCQ_Y
5 C_OCQ_Y*L23; 1 C_OCQ_Y*L24; 1 C_OCQ_Y*RY_P; 1 C_ODP_YQ*+OCF
1 C_ODP_YQ*C_OCF_Y; 3 C_OPQ_Y*L7; 1 C_OPQ_Y*L18; 1 C_OPR_YQ*L2
1 TPX_R_*L18; 2 TPX_R_*+OCF; 1 Q_OCQD_Y*L19; 2 Q_OCPF_YQ*L17
1 Q_OCPQ_Y*L7; 1 Q_OCPQ_Y*L32; 2 Q_OCPQ_Y*DROP_OHP_Y; 4 Q_OCPQ_Y*RY_Q
1 Q_CPDR_Q*C_OCF_Y
```

Upper bound: `-127085237/1000000000`.

### Leaf RRTmmp

Assumptions: `-FPQ -OYP +OZP`.

```c1top-geometry
P OHDZP -ODZ
P OHDZR +OZR
P OHFZP -OFZ
P OHYZP -OYZ
P OHZPQ +OZQ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DOHCZ +DHZ
P DOCZP +DZP
P DOCZQ +DZQ
P DOCZR -DZR
P FODZR +FZR
P FODPR +FPR
P FODQR +FQR
P YHDPR +YPR
P YHDQR +YQR
P ZOHCP -ZHP
P ZOHCQ -ZHQ
P ZOHDY +ZDY
P ZOHFY +ZFY
P ZOHFR -ZHR
P ZOHYP -ZYP
P ZOHYQ -ZYQ
P ZOHYR -ZYR
P ZODFP -ZFP
P ZODFQ -ZFQ
P ZODPR +ZPR
P ZODQR +ZQR
P POCZQ -PZQ
P POFQR -PQR
C OCD Z Y -DOY 140829/250000
C OCQ Z Y -QOY 207719321/540750000
C CYP Z Q +YPQ 34090543187/56598500000
```

```c1top-bounds
T OCD Z 1 lower 93/299
T OHZ Y 6 lower 279/1000
T OCP Z 1 lower 67053/122579
T OCP Z 9 lower 279/628
T OCQ Z 11 lower 279/628
E OD ZPQ 2 lower 837/1000
B x Q 10 lower 131508743/183868500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 547/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 221/500
v 37/250 88/125
z 279/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 111/250 511/1000
l 143/200 459/500
m 111/250 153/250
r 663/1000 1
t 939/1000 1
```

```c1top-sum
5 L1*L5*L27; 1 L1*L5*+OCF; 5 L1*L5*RY_Q; 1 L1*L6*L14
5 L1*L6*DROP_OCP_Z; 3 L2*L14*TY_R_; 23 L2*L19*L20; 2 L2*L19*L29
6 L2*L20*L27; 2 L2*L21*L31; 4 L2*L21*DROP_OHQ_Y; 1 L2*L31*DROP_OHQ_Y
6 L3*L4*L18; 1 L3*L6*L22; 1 L3*L6*DROP_OCP_Z; 3 L3*L16*L18
3 L3*L27*L29; 5 L4*L5*L24; 6 L4*L5*L26; 1 L4*L5*L31
1 L4*L7*TY_R_; 3 L4*L17*L26; 1 L4*L26*L31; 4 L4*L27*DROP_OCP_Z
5 L4*L28*TY_R_; 1 L4*L30*TY_R_; 5 L5*L6*L20; 3 L5*L6*RX_P
1 L5*L13*DROP_OHP_Y; 2 L5*L16*DROP_OHP_Y; 2 L5*L16*RY_P; 1 L5*L18*L33
5 L5*L26*L27; 5 L5*TY_R_*TY_R_; 1 L6*L16*TY_R_; 10 L6*L22*TY_R_
1 L6*L26*RY_Q; 2 L6*L27*RX_P; 2 L6*DROP_OHQ_Y*TY_R_; 2 L7*L27*DROP_OHP_Y
1 L11*L24*L26; 1 L11*L25*TY_R_; 1 L12*L17*L26; 6 L12*L19*L22
1 L12*L21*L28; 2 L12*RY_P*TY_R_; 1 L13*L17*TY_R_; 1 L14*L16*L23
5 L14*L16*TY_R_; 1 L14*L17*L20; 1 L14*L19*L24; 2 L14*L21*RY_Q
1 L14*L25*TY_R_; 4 L14*L26*L27; 2 L14*L29*DROP_OCQ_Z; 2 L15*L17*L27
2 L15*L17*RY_P; 3 L15*L17*DROP_OCQ_Z; 1 L15*L27*TX_R_; 4 L15*L27*TY_R_
1 L16*L19*L24; 3 L16*L22*L25; 1 L16*L33*TY_R_; 2 L16*DROP_OHP_Y*TY_R_
6 L16*TY_R_*TY_R_; 5 L17*L19*L21; 2 L17*L20*RY_P; 6 L17*L22*DROP_OCQ_Z
1 L17*L23*L31; 9 L17*L26*TY_R_; 1 L17*L27*L30; 2 L17*L29*RY_P
2 L17*L32*RY_Q; 1 L17*RY_P*RY_P; 2 L17*DROP_OHQ_Y*DROP_OHQ_Y; 1 L17*DROP_OCQ_Z*TX_R_
2 L17*RX_Q*TY_R_; 2 L18*L22*RX_Q; 1 L18*L26*L33; 5 L18*RY_Q*RY_Q
1 L19*L20*L25; 5 L19*L22*L22; 2 L19*L22*TY_R_; 2 L19*L24*L26
5 L20*L20*TY_R_; 3 L22*L25*L28; 1 L22*L31*DROP_OCP_Z; 1 L25*DROP_OCP_Z*DROP_OCP_Z
1 L26*L28*L32; 6 L27*L27*DROP_OHP_Y; 1 L27*L32*-OHD; 2 L27*RX_Q*RX_Q
1 DROP_OCP_Z*RY_P*TY_R_; 1 TOPCOUNT*L1; 3 +ODF*L17; 1 +CDF*L17
2 +OPQ*L14; 1 -DPQ*L23; 1 +CPQ*L1; 1 -DPR*L14
1 +OCZ*L27; 1 +HCZ*DROP_OHQ_Y; 2 -HFP*TY_R_; 1 -CDQ*L29
1 -CDQ*L30; 1 -CDQ*-OHD; 15 -CDQ*+OCF; 4 -CDQ*RX_P
2 -CDQ*RY_Q; 1 -HDQ*L2; 6 -HFR*L22; 1 -HFR*L33
1 -HFR*DROP_OHP_Y; 1 -HFR*DROP_OCP_Z; 2 -HFR*RY_Q; 1 -DFR*L32
2 -OFR*L28; 1 -FPQ*L24; 1 -FPQ*L27; 1 -FPQ*-OHD
1 -FPQ*DROP_OCP_Z; 1 -FPQ*RX_Q; 6 +OZP*L19; 1 +OZP*L32
2 +OZQ*L26; 3 +CPR*L17; 2 +ZPQ*RY_Q; 2 +ZPQ*TY_R_
3 -PQR*L20; 3 -PQR*L22; 2 -PQR*DROP_OHP_Y; 2 C_OCD_Z*L17
1 C_OCP_Z*RX_P; 3 C_OCP_Z*RX_Q; 1 C_CDP_Q*L25; 1 C_CDP_Q*TX_R_
4 Q_OCFH_Y*L17; 3 Q_OCPH_YZ*L5; 1 Q_ODFH_Y*L5; 1 Q_OZFH_Y*TY_R_
2 Q_OPFH_YQ*L17; 3 Q_OQRH_Y*L17; 1 Q_OCDF_Z*L17; 4 SP_OCPD_ZQ_OP1*L19
6 SP_OCPD_ZQ_CD-1*+OCF; 2 SP_OCPD_ZQ_CD-1*RY_Q; 2 Q_OCDR_Z*L5; 3 Q_OCDR_Z*L17
1 Q_OCPQ_Z*L15; 1 Q_OCPQ_Z*L25; 1 Q_OCPQ_Z*DROP_OHP_Y; 6 Q_OCPQ_Z*RY_P
6 Q_OCPQ_Z*RX_Q; 3 Q_OCPR_ZQ*L19; 2 Q_OCPR_ZQ*L27; 1 Q_OCPR_ZQ*L28
2 Q_HCDR_Z*L18; 1 Q_HZPR_Q*L18; 2 Q_CPDZ_Q*L26; 1 Q_CPDZ_Q*-OHD
8 Q_CPDZ_Q*+OCF; 4 Q_CPDR_Q*L16; 1 Q_DFZP_Q*L28
```

Upper bound: `-22878147/100000000`.

### Leaf RRTmp

Assumptions: `-FPQ +OYP`.

```c1top-geometry
P OHDYP -ODY
P OHDYR +OYR
P OHFYP -OFY
P OHYPQ +OYQ
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YODPR +YPR
P YODQR +YQR
P POCYQ -PYQ
P POFQR -PQR
C OCD Y Z -DOZ 140829/250000
C OCP Y Z -POZ 57734709/180250000
C OCQ Y Z -QOZ 207719321/540750000
P OHDYZ +OYZ
P DOCYZ -DYZ
P YODZP -YZP
P YODZQ -YZQ
```

```c1top-bounds
T OCD Y 1 lower 93/299
T OCZ Y 7 lower 279/628
T OCP Y 1 lower 67053/122579
T OCP Y 9 lower 279/628
T OCQ Y 11 lower 279/628
E OD YPQ 2 lower 837/1000
B x Q 10 lower 131508743/183868500
O dh - 0 lower 837/1000
S R - 3 upper 70/163
X R - 12 lower 108159/163000
Y R - 13 lower 852159/907000
```

```c1top-box
h 837/1000 1
c 547/1000 157/250
d 837/1000 897/1000
f 93/1000 43/100
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 111/250 907/1000
p 851/1000 1
q 111/250 511/1000
l 143/200 459/500
m 111/250 153/250
r 663/1000 1
t 939/1000 1
```

```c1top-sum
1 L2*L19*C_OCF_Y; 1 L3*L4*L22; 1 L5*L20*DROP_OCP_Y; 1 L5*L20*RX_P
1 L5*L25*TY_R_; 1 L16*C_OCF_Y*TY_R_; 1 L17*RY_Q*DROP_OCR_Y; 2 L19*L20*C_OCF_Y
1 L21*L26*DROP_OCP_Y; 1 -DPQ*RY_P; 1 -DPQ*DROP_OCR_Y; 1 -CDQ*+OCF
1 -CDQ*DROP_OCR_Y; 1 SP_OCPD_YQ_CD-1*+OCF; 1 Q_OCPQ_Y*RY_P; 1 Q_CPDY_Q*+OCF
```

Upper bound: `-74919879/1000000000`.

### Leaf RRTpm

Assumptions: `+FPQ -PQR`.

```c1top-geometry
P HODPR +HPR
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODPR +CPR
P CODQR +CQR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODPR +FPR
P FODQR +FQR
P FHDZR +FZR
P YHDPR +YPR
P YHDQR +YQR
P POHFQ -PHQ
P PHCYQ -PYQ
```

```c1top-bounds
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 1851/12500 70383/100000
z 93/1000 907/1000
w 1851/12500 907/1000
p 851/1000 1
q 1851/12500 12751/25000
l 56633/100000 45867/50000
m 18713/100000 3823/6250
r 9923/25000 1
t 79653/100000 1
```

```c1top-sum
6468 L0*L4*L27; 3183 L0*L17*L18; 3234 L0*L27*L32; 24628 L1*L17*L27
1897 L1*L27*RX_Q; 168 L2*L2*L28; 3736 L2*L2*L33; 12917 L2*L3*L5
550 L2*L5*L5; 1812 L2*L5*L6; 37 L2*L5*L31; 3464 L2*L16*L28
9144 L2*L17*L19; 4423 L2*L17*L23; 9286 L2*L18*L27; 5199 L2*L24*L28
56 L2*L28*L31; 1111 L2*L33*L33; 19002 L3*L3*L3; 66894 L3*L3*L18
5867 L3*L5*L25; 5619 L3*L5*L28; 65452 L3*L18*L21; 20326 L3*L18*L28
9294 L3*L25*L27; 6539 L3*L27*L28; 1596 L3*L27*L30; 1970 L3*L27*L32
5246 L3*L27*L33; 9532 L3*L27*TX_R_; 63972 L4*L4*L17; 7598 L4*L5*L27
35564 L4*L6*L17; 5040 L4*L7*L27; 483 L4*L17*L17; 22792 L4*L17*L25
82418 L4*L17*L27; 789 L4*L17*L31; 1065 L4*L17*L33; 11004 L4*L17*-OHD
114826 L4*L17*TY_R_; 8372 L4*L21*L28; 28126 L5*L5*L25; 3959 L5*L5*L30
11575 L5*L6*L6; 21798 L5*L6*L25; 5202 L5*L6*L31; 2649 L5*L6*L33
32842 L5*L18*L25; 3581 L5*L18*L30; 1967 L5*L25*L25; 2942 L5*L25*L27
21598 L5*L25*L28; 1719 L5*L25*L31; 4546 L5*L27*L31; 3799 L5*L27*L32
8608 L5*L28*RX_P; 210 L5*L30*L31; 184 L5*L31*L33; 11610 L6*L6*L19
3124 L6*L6*L32; 17824 L6*L7*L27; 3461 L6*L17*L27; 10260 L6*L18*L29
4061 L6*L18*L32; 2245 L6*L24*L28; 1423 L6*L27*L30; 4071 L6*L28*L31
859 L6*L31*L33; 883 L6*L32*L33; 4888 L7*L17*L18; 868 L7*L27*L32
17602 L7*L27*-OHD; 35619 L16*L17*L27; 21773 L16*L23*L28; 537 L17*L17*L22
51 L17*L17*L33; 6249 L17*L18*L27; 562 L17*L18*L32; 537 L17*L18*RX_Q
41052 L17*L18*TX_R_; 229 L17*L20*L33; 2528 L17*L22*L33; 20117 L17*L23*L29
2774 L17*L24*L33; 6039 L17*L26*L29; 14943 L17*L27*L31; 3984 L17*L27*L33
26686 L17*L27*RX_Q; 10211 L17*L28*TX_R_; 449 L17*L29*-OHD; 693 L17*L33*L33
1489 L17*L33*-OHD; 9700 L17*L33*TX_R_; 6249 L18*L18*L25; 238 L18*L25*L25
3984 L18*L27*L31; 2397 L18*L28*L31; 36098 L18*L28*RX_Q; 17722 L18*L28*TX_R_
25 L18*L30*L31; 412 L18*L31*L33; 7598 L19*L26*L28; 10703 L19*L27*L29
1130 L19*L27*-OHD; 1070 L20*L24*L27; 10062 L20*L27*RX_Q; 5076 L21*L25*L28
5086 L22*L22*L27; 5086 L22*L27*RY_Q; 29104 L23*L27*L28; 1729 L24*L24*L27
1171 L24*L26*L28; 2056 L24*L27*L33; 1353 L25*L27*RY_P; 1729 L25*L27*TX_R_
4477 L25*L28*L31; 1577 L25*L28*RX_P; 674 L25*L31*L33; 2733 L27*L27*L31
625 L27*L27*+OCF; 6091 L27*L27*RX_Q; 2321 L27*L28*L31; 798 L27*L30*L31
119 L27*L31*TX_R_; 1171 L27*-OHD*TX_R_; 56 L28*L29*L30; 4240 L28*L29*L33
684 L28*L33*RX_P; 3192 L28*L33*TX_R_; 3015 KLOW*L17; 11452 -OHF*L3
29683 -OHF*L19; 2245 -OHF*L25; 914 -OHF*L31; 396 -OHF*TY_R_
33266 -DPQ*L6; 10479 -DPQ*L18; 81183 -DPQ*L27; 23639 -DPQ*L28
40331 -DPR*L27; 24498 -DQR*L3; 75327 -DQR*L19; 238 -DQR*L25
1892 -DQR*L31; 11654 -DQR*L32; 27290 -DQR*TY_R_; 91377 +OCP*L3
64631 +OCP*L7; 29197 +OCP*L17; 2446 +OCP*L25; 39342 +OCP*L28
869 +OCP*L30; 10804 +OCP*L31; 3684 +OCP*L33; 5174 +OCP*-OHD
13458 +OCP*RY_P; 35301 -CDQ*L6; 2173 -CDQ*L17; 68665 -CDQ*L18
28186 -CDQ*L23; 32011 -CDQ*L28; 33627 -CDQ*L29; 6865 -CDQ*L33
1841 -CDQ*RY_P; 13725 -CDQ*TX_R_; 29484 -CDQ*TY_R_; 23028 -HFR*L2
10660 -HFR*L17; 5041 -HFR*L30; 661 -HFR*L33; 19169 -DFR*L0
17824 -DFR*L6; 25923 -DFR*L17; 1729 -DFR*L25; 28473 +FPQ*L0
28118 +FPQ*L6; 55901 +FPQ*L17; 59250 +FPQ*L25; 32476 +FPQ*L28
6438 +FPQ*L30; 7947 +FPQ*L33; 16300 +FPQ*+OCF; 19077 +FPQ*RY_P
11620 +FPQ*RX_Q; 13761 +FPQ*TY_R_; 22786 -PQR*L0; 38926 -PQR*L4
893 -PQR*L7; 52782 -PQR*L17; 23472 -PQR*L25; 45798 -PQR*L27
34647 -PQR*L29; 7958 -PQR*L30; 11654 -PQR*L33; 29556 -PQR*RY_P
23710 -PQR*TX_R_; 6484 C_HDP_Q*L27; 19381 TPX_R_*L19; 15088 TPX_R_*L28
3380 Q_OCFH_Y*L2
```

Upper bound: `-32038482211333/20000000000000`.

### Leaf RRTpp

Assumptions: `+FPQ +PQR`.

```c1top-geometry
C DPR Q H +PRH 311605061/667250000
C DPR Q C +PRC 311605061/667250000
C DPR Q F +PRF 311605061/667250000
C DPR Q Y +PRY 311605061/667250000
P HODQR +HQR
P CODZP -CZP
P CODZQ -CZQ
P CODQR +CQR
P DCFZP +DZP
P DCFZQ +DZQ
P DCFZR -DZR
P FODQR +FQR
P FHDZR +FZR
P YHDQR +YQR
P POHFQ -PHQ
P PHCYQ -PYQ
C DPR Q Z +PRZ 311605061/667250000
P PCZQR -PZQ
P RDZPQ +RZQ
```

```c1top-bounds
```

```c1top-box
h 347/500 1
c 279/1000 157/250
d 347/500 897/1000
f 93/1000 157/250
u 93/1000 221/500
v 37/250 88/125
z 93/1000 907/1000
w 37/250 907/1000
p 851/1000 1
q 37/250 511/1000
l 283/500 459/500
m 187/1000 153/250
r 99/250 1
t 199/250 1
```

```c1top-sum
3 L29*L33; 7 L0*L2*L17; 14 L0*L2*RY_Q; 11 L0*L18*L19
7 L0*L24*L30; 2 L0*L33*RX_Q; 28 L1*L4*L18; 9 L1*L6*L6
220 L1*L6*L20; 18 L1*L6*L24; 48 L1*L6*L31; 427 L1*L6*TY_R_
57 L1*L16*L23; 72 L1*L21*TY_R_; 75 L1*L27*L29; 529 L2*L4*RY_Q
45 L2*L6*L19; 85 L2*L27*L28; 909 L2*L27*TY_R_; 7 L2*L28*RX_P
7 L3*L3*L28; 4 L3*L3*TY_R_; 87 L3*L4*L27; 123 L3*L5*TY_R_
41 L3*L16*RY_P; 1004 L3*L18*L26; 5 L3*L24*L33; 1088 L4*L4*L17
998 L4*L6*TY_R_; 48 L4*L17*TX_R_; 135 L4*L18*L25; 485 L4*L19*L24
116 L4*L20*L28; 2667 L4*L22*L27; 170 L4*L24*L32; 593 L4*L27*RY_P
347 L5*L5*L16; 379 L5*L6*RY_P; 205 L5*L16*L27; 40 L5*L16*L33
50 L5*L16*-OHD; 72 L5*L16*TX_R_; 296 L5*L26*L33; 50 L5*L27*RX_P
8 L5*L28*RX_P; 8 L5*L28*TX_R_; 162 L5*L33*TX_R_; 788 L5*RX_P*TY_R_
213 L5*RX_Q*RY_Q; 1383 L5*TY_R_*TY_R_; 167 L6*L17*L22; 327 L6*L18*L27
46 L6*L19*L25; 212 L6*L20*L27; 529 L6*L22*L27; 24 L6*L27*L30
18 L6*L27*TX_R_; 190 L6*L32*TY_R_; 2 L6*L33*+OCF; 99 L6*RX_P*RY_P
34 L6*RX_Q*TY_R_; 207 L6*TY_R_*TY_R_; 133 L7*L17*L18; 2 L7*L17*L33
19 L7*L18*L31; 18 L7*L18*+OCF; 3 L7*L33*L33; 1 L16*L16*L19
26 L16*L17*RY_Q; 29 L16*L18*L25; 23 L16*L19*L20; 901 L16*L22*TY_R_
14 L16*L23*L33; 3 L16*L27*-OHD; 36 L16*RX_P*TY_R_; 32 L16*RX_Q*TY_R_
2274 L16*TY_R_*TY_R_; 22 L17*L18*L18; 91 L17*L18*L22; 140 L17*L18*L23
29 L17*L21*L21; 113 L17*L24*L27; 47 L17*L27*L32; 15 L17*L33*RY_P
24 L18*L18*RX_Q; 13 L18*L18*TX_R_; 76 L18*L20*L25; 961 L18*L20*L27
57 L18*L21*L28; 125 L18*L21*RY_Q; 4 L18*L22*RX_Q; 25 L18*L25*RX_Q
2274 L18*L25*TY_R_; 7 L18*L31*+OCF; 6 L18*L33*-OHD; 32 L18*L33*TY_R_
9 L19*L21*L31; 43 L19*L24*TX_R_; 2 L19*L31*L33; 32 L19*L33*TY_R_
50 L20*L22*L33; 139 L20*L33*TY_R_; 153 L21*L21*L26; 110 L21*L24*L26
9 L21*L33*RX_P; 42 L22*L24*L33; 6 L22*L31*L33; 46 L24*L24*RY_P
7 L24*L25*L28; 1 L24*L27*L29; 14 L24*L28*L29; 229 L25*L27*L32
301 L25*L27*TY_R_; 3 L25*L31*L32; 21 L25*L31*TY_R_; 13 L25*L33*TX_R_
232 L25*L33*TY_R_; 691 L26*L27*L27; 35 L26*L27*L31; 21 L26*L31*TX_R_
218 L26*L31*TY_R_; 14 L27*L27*L29; 9 L27*L29*L29; 301 L27*TX_R_*TY_R_
691 L27*TY_R_*TY_R_; 7 L28*TX_R_*TX_R_; 28 L29*L31*TY_R_; 58 L29*L33*TY_R_
5 L30*L31*TY_R_; 1 L31*L33*+OCF; 20 L31*L33*TY_R_; 278 L31*TY_R_*TY_R_
3 L33*L33*+OCF; 114 -OHF*L19; 18 -OHF*L25; 67 -OHF*L26
24 -OHF*L31; 435 -OHF*TY_R_; 2 +HDF*L6; 272 -DPQ*L19
346 -DPQ*L23; 2790 -DPQ*L26; 288 -DPQ*L29; 45 -DPQ*L30
44 -DPQ*-OHD; 129 -DPQ*RX_P; 387 -DPQ*RY_P; 3002 -DPQ*TY_R_
56 +CPQ*L24; 35 -DPR*L33; 81 -DQR*L17; 52 +OCP*L17
162 +OCP*L19; 1164 +OCP*L26; 4 +OCP*L30; 59 -OHQ*L27
22 -CDQ*L17; 177 -CDQ*L23; 888 -CDQ*L26; 4 -CDQ*L31
27 +OCR*L27; 41 -HFR*+OCF; 49 -HFR*RX_P; 161 +CDR*L18
9 -DFR*L6; 18 -DFR*L25; 495 -DFR*L26; 202 -DFR*L32
445 -DFR*RY_P; 65 +HDR*L6; 7 +HDR*L31; 48 +PQR*L1
241 +PQR*L20; 1323 +PQR*L26; 10 +PQR*L30; 35 +PQR*-OHD
35 +PQR*RX_P; 601 +PQR*RY_P; 369 +PQR*RY_Q; 114 +PQR*TX_R_
2825 +PQR*TY_R_; 11 +CPR*L1; 2 +HQR*L33; 7 +FQR*L31
14 C_CDP_Q*L28; 8 C_CDP_Q*L32; 518 C_DPR_Q*L18; 953 C_DPR_Q*L27
204 TPX_R_*L32; 29 TPX_R_*L33; 196 Q_CPDR_Q*L18; 13 Q_DRFP_Q*L33
```

Upper bound: `-9751687031/500000000`.
