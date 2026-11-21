# A side pair and the opposite cap: the two central alternatives

This excludes both remaining C1 count families

\[
 (k,j,r,t,l)=(0,2,2,0,1),\qquad (1,1,2,0,1),
\]

and their transposes. All points are in the closed unit square, all
unsigned actual doubled triangle areas are at least \(s=93/1000\),
and the actual anchors are

\[
 O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
 \qquad d\le h,\quad f\le c.
\]

The right cap has an outer point \(P=(p,q)\) and another point
\(Q=(l,m)\); the left cap has \(R=(r,t)\). The two remaining actual
points are \(Y=(u,v),Z=(z,w)\). In case 0 both are in \(HCDF\);
in case 1, \(Y\in OHC\) and \(Z\in HCDF\).

The proof has three polynomial rows: one for case 0 and two for the
sign of \([HPQ]\) in case 1. They contain 454 positive-integer
terms in total. Every factor, sign deduction, and area upper bound
is specified below. No numerical search is a premise.

## 1. The shared side-pair box and the inner point

The support construction in C1_EXTERIOR_REDUCTION.md, Section 2,
allows the right points to be named so that

\[
 Q\in CDP\cap ODP,\qquad -[CDP]\ge3s.
 \tag{1}
\]

The left point gives \(fh(1-h)\ge s\). The proof of Section 1 in
C1_SIDE_PAIR_OPPOSITE_TOP.md uses only these side occupancies; its
top point is not used until Section 3. Thus it gives here

\[
 .71<d\le h<.79,\qquad .45<f\le c<.56,
 \tag{2}
\]

and that note's Section 2 gives

\[
 p>.947,\quad q>.166,\quad r>.117,\quad t>.943.
 \tag{3}
\]

From \(-[CDP]\le(1-c)(d-q)\), (1)--(2) further give
\(q<.79-3s/.55<.283\). The ordinary left-cap clearance similarly
gives \(r<.56-s/.29<.24\).

The outer triangle in (1) satisfies

\[
 -[CDP]\le(1-c)(d-q)<(.55)(.624)=.3432<4s.
 \tag{4}
\]

Every barycentric coordinate of its actual interior point \(Q\)
is therefore greater than \(1/4\). The coordinate extrema of the
vertices \(C,D,P\) give four useful affine inequalities:

\[
\begin{gathered}
 4l-2c-1-p\ge0,\qquad 2+c+p-4l\ge0,\\
 4m-d-q\ge0,\qquad 2d+q-4m\ge0.
\end{gathered}
 \tag{5}
\]

For example, remove one quarter of each vertex from the positive
barycentric expression for \(Q\); the remaining quarter is a point
of \(CDP\), whose horizontal coordinate is between \(c\) and 1,
and whose vertical coordinate is between 0 and \(d\).
Also \(l\ge c+s/(cd)>.711\), using the single-point support bound
and (2), and (5) gives \(l<.89\), \(.219<m<.466\).

Here is the complete coarse box used for the area upper bounds.
All finite decimals denote exact rationals.

| Coordinates | Case 0 | Case 1 |
|---|---|---|
| \(h,d\) | \([.71,.79]\) | same |
| \(c,f\) | \([.45,.56]\) | same |
| \(u\) | \([.117,.907]\) | \([.117,.443]\) |
| \(v\) | \([.166,.907]\) | \([.166,.624]\) |
| \(z,w\) | \([.117,.907],[.166,.907]\) | same |
| \(p,q\) | \([.947,1],[.166,.283]\) | same |
| \(l,m\) | \([.711,.89],[.219,.466]\) | same |
| \(r,t\) | \([.117,.24],[.943,1]\) | same |

All free points have \(hx,cy\ge s\). For a central point,
\(x,y\le1-s\) follows from the identities

\[
\begin{aligned}
 (1-f)[CDT]+(1-c)[DFT]&=[CDF](1-x_T),\\
 (1-d)(-[HFT])+(1-h)[DFT]&=[HDF](1-y_T),
\end{aligned}
\]

using \([CDF]\le1-f\) and \([HDF]\le1-d\). For the lower point
in case 1, its \(HC\) clearance gives instead
\(u\le c-s/h<.443\), \(v\le h-s/c<.624\).

Before each polynomial row, strengthen this coarse box by replacing
the lower endpoints of \(u,z,r\) by \(s/.79=93/790\), and those
of \(v,w,q\) by \(s/.56=93/560\). These are the same actual
\(OH\) and \(OC\) clearances. The printed box is an outward
rounding of that valid exact box.

## 2. Common geometry and the three exhaustive rows

Both \(Y,Z\) are above \(OD\). Otherwise that point, together
with \(O,D,C,P,Q\), would give six actual points in
\(O,D,(1,0)\), including its two actual base endpoints. The
six-point endpoint theorem requires its doubled area to exceed
\(.823\), while (2) gives \(d<.79\).

Both \(Y,Z\) are also below the ray \(OR\). A point on the other
side of that ray, inside the anchor pentagon, would lie in the
actual triangle \(OHR\); its area is
\(hr<(.79)(.24)=.1896<3s\), so it contains no actual point.

In case 0 name \(Y,Z\) in increasing angular order from \(O\).
Then \([OYZ]>0\), and \([OFY]<0\). If the latter sign were positive,
both points would be above \(OF\); together with \(O,F,H,R\), they
would give six actual points in \(O,F,(0,1)\) with doubled area
\(f<.56<.823\), another endpoint contradiction.
No angular ordering of \(Y,Z\) is imposed in case 1.

The three rows are therefore:

| Row | Case | Additional sign |
|---|---:|---|
| C0 | 0 | none |
| C1m | 1 | \([HPQ]<0\) |
| C1p | 1 | \([HPQ]>0\) |

Every actual determinant is nonzero, so this is exhaustive.

For precision, the complete common initial sign list is

```text
-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF
+OPQ +OPR +OQR +CPQ -DPQ -DPR -DQR -FPR -FQR
+ODY +ODZ +OYR +OZR
```

All free points have \(OH<0,OC>0\). Their further anchor-edge signs
are fixed by their region as follows:

| Region | HC | HF | CD | DF | HD | CF | OD | OF |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Lower | − | − | + | + | − | + | unspecified | unspecified |
| Central | + | − | + | + | unspecified | unspecified | unspecified | unspecified |
| Right | + | − | − | + | − | − | − | − |
| Left | + | + | + | + | + | + | + | + |

In both cases, for \(V=Y,Z\),

\[
 [CVP],[CVQ]<0,\qquad [HVR]>0,\qquad [DVP],[DVQ]>0.
 \tag{6}
\]

The first three signs hold throughout the anchor pentagon, as is
checked at its vertices from the cap tests. For the last two, use
\(V\) above \(OD\) and the right point below it; directly,
\([DVP]\ge(1-x_V)(dp-q)>0\), and the same calculation applies to \(Q\).
In case 1, for \(T=Z,P,Q,R\), also \([HYT]>0,[CYT]<0\), and
\([YPR],[YQR]>0\). The first pair are the opposite-side tests across
\(HC\). For the latter pair, the lines from either right point to
\(R\) have negative slope and pass above both \(H,C\), hence above
all of \(OHC\). Case 0 has the two angular signs proved above.

## 3. Explicit area bounds and their short endpoint checks

All triangle upper bounds used in the proof are printed in the
`c1pc-upper` table below. A row has the form

```text
case ABC sign upper endpoint-list
```

It bounds the polynomial \(\operatorname{sign}[ABC]\) on the
coarse box of Section 1. A token `h+` replaces \(h\) by its upper
endpoint; `h-` uses its lower endpoint. Apply the tokens in the
printed order. Before every replacement, the partial derivative is
an affine polynomial whose sign throughout the remaining box is
nonnegative for `+`, or nonpositive for `-`. Its sign is checked by
bounding its positive terms above/below with their corresponding
box endpoints. After all replacements, the polynomial is exactly
the printed upper bound. Every row has at most six such elementary
steps. This gives explicit monotonicity certificates, rather than
an unexplained numerical bound or a subdivision of configurations.

The trace rule `C ABC I T token upper` uses the already proved
containment \(I\in ABC\) and one of these bounds below
\(\rho=347/500\). A second actual point cannot be inside \(ABC\).
Two inward edge signs for \(T\) are known, so the third is the
printed outward sign. The only other trace rule is
`P abcde token`, using
\([abc][ade]-[abd][ace]+[abe][acd]=0\): two summands have the same
known sign, and the third has one unknown determinant whose sign
is thereby forced. Every trace is printed in full.

## 4. Nonnegative factors, including the support inequalities

Coordinates in every row are ordered as

```text
h c d f u v z w p q l m r t
```

For its printed box, let \(L_{2i}=a_i-\ell_i\) and
\(L_{2i+1}=u_i-a_i\), for \(0\le i<14\). The additional indexed
factors \(L_{28},\ldots,L_{33}\) are, in order,

\[
 h-d,\quad c-f,\quad
 4l-2c-1-p,\quad 2+c+p-4l,\quad
 4m-d-q,\quad 2d+q-4m.
 \tag{7}
\]

Their signs were proved in (2) and (5). The following further names
are used:

| Name | Polynomial and premise |
|---|---|
| `LEFTSUP` | \(fh(1-h)-s\) |
| `+ABC`, `-ABC` | The indicated signed actual determinant minus \(s\); its sign is known. |
| `C_ABC_I` | \(A(ABC)-3s\), for the one indicated actual interior point \(I\). |
| `DROP_OHV_I` | \(x_V-t_{|I|}\), with every named point strictly inside \(OHV\). Here \(t_1=3s,t_2=\rho\). |
| `Q_ABCD_I` | \([ABC]+[ACD]-q_{|I|}\), with the named positive convex quadrilateral and actual interior points; \(q_1=.449,q_2=8s\). |
| `RX_V`, `RY_V` | \(x_V-c-s,d-y_V-s\), for \(V=P,Q\) in the right cap. |
| `LX_R`, `LY_R` | \(f-r-s,t-h-s\), from the left cap. |

The triangle and quadrilateral costs are the established actual-point
bounds. Every containment in a factor name is witnessed by all its
edge signs in the trace. The dropped-coordinate bound uses \(h\le1\).
The cap factors follow by dropping nonnegative terms from the cap
clearance and then using coefficients at most one.

A factor `QS_ABCD_I_X_box_q` or `QS_ABCD_I_Y_box_q` uses the
positive cyclic actual quadrilateral \(ABCD\) and its one or two
listed actual occupants \(I\). Put

\[
 X=[ABC],\quad Y=[ABD],\quad Z=[ACD],\quad\Delta=Y-Z.
\]

By QUADRILATERAL_SUPPORT.md,

\[
 XY\ge qs\Delta.
 \tag{8}
\]

For one occupant, \(q\) is \(29/5,149/20,12\), according as the
unordered occupancy counts of \(ACD,BCD\) are \((0,0),(0,1),(1,1)\).
For two occupants the costs are \(9,9,139/10,12,199/10,149/5\)
for \((0,0),(0,1),(0,2),(1,1),(1,2),(2,2)\), respectively.
If both lie in both \(ABC,ABD\), the cost \(299/31\) is also valid.
The chosen rational \(q\) is part of each factor name, and its
containment conditions are checked from the proved signs.

Let \(L_X\) or \(L_Y\) be the upper bound for \(X\) or \(Y\)
from the area table. The two factor definitions are

\[
 L_XY-qs\Delta,\qquad L_YX-qs\Delta,
 \tag{9}
\]

respectively. They are nonnegative because \(X,Y>0\).
The sole name with `yF` in place of `box` bounds the triangle
\(FOC\) by \(y_F=1\), and uses the same formula.
The support theorem already covers \(\Delta\le0\), including zero,
so no unprinted support-line sign case occurs here.

## 5. The three exact contradictions

In each row, multiply the indicated factors and sum with their
printed positive integer weights. The resulting polynomial \(W\)
has degree at most three and is nonnegative. Translate coordinates
by the lower endpoints of the row's box. Drop negative nonconstant
monomials and replace each positive monomial by its value at the
box widths. The exact resulting upper bound is printed below the
sum, and is negative in all three rows. Thus each gives
\(0\le W<0\).

The companion [check_c1_side_pair_opposite_central.py](check_c1_side_pair_opposite_central.py)
replays all 58 printed sign deductions, the 27 short monotonicity
certificates, every factor premise, and the 454 integer terms with
exact rational arithmetic. It reads only this manuscript and calls
no optimizer.

Together with C1_SIDE_PAIR_OPPOSITE_TOP.md, this also excludes every
C1 placement with a side pair and a point in the opposite cap:
C1_EXTERIOR_REDUCTION.md gives \(k\le1,t\le1\); if \(t=1\) the
analytic top note applies, and if \(t=0\) the two cases here exhaust
\(k+j=2\).

```c1pc-upper
0 DFP 1 35433/100000 d+ f- p- q-
0 DFQ 1 18737/50000 d+ f- l- m-
0 DRO 1 91693/100000 d- r- t+
0 FRO 1 443/1000 f+ r- t+
0 HCF 1 14/25 c+ h- f+
0 ODF 1 1361/2000 d- f-
0 OFR 1 443/1000 f+ r- t+
0 OPH 1 79/100 h+ p+
0 PDC 1 429/1250 c- d+ p+ q-
0 RHF 1 12847/100000 h- f+ r- t+
1 CDF 1 11/20 c- d- f-
1 CDR 1 81307/100000 c- d+ r- t+
1 CPF 1 11/20 c- f- p+ q+
1 CPH 1 11237/20000 h+ c- p+ q+
1 CPR 1 644239/1000000 c- p+ q+ r- t+
1 CPZ 1 593089/1000000 z- w+ c- p+ q+
1 CQO 1 1631/6250 c+ m+
1 DFH 1 29/100 h- d- f+
1 DYC 1 62453/100000 c+ d+ u- v+
1 DZC 1 2381/3125 z- d+ w+ c-
1 HCP 1 11237/20000 h+ c- p+ q+
1 OCD 1 553/1250 c+ d+
1 OCR 1 14/25 c+ t+
1 PDY 1 34437/62500 d+ u- v+ p+ q-
1 QHO 1 7031/10000 h+ l+
1 ROF 1 443/1000 f+ r- t+
1 YCD 1 62453/100000 c+ d+ u- v+
```

### Row C0

```c1pc-geometry
C ODF Y Z -FOZ 1361/2000
P OHDYP -OYP
P OHDYQ -OYQ
P OHDZP -OZP
P OHDZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P CODPR +CPR
P CODQR +CQR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR -FZR
P FODYR -FYR
C HCF Z Y -CFY 14/25
P COFYZ +CYZ
P COFYR +CYR
```

```c1pc-box
h 71/100 79/100
c 9/20 14/25
d 71/100 79/100
f 9/20 14/25
u 117/1000 907/1000
v 83/500 907/1000
z 117/1000 907/1000
w 83/500 907/1000
p 947/1000 1
q 83/500 283/1000
l 711/1000 89/100
m 219/1000 233/500
r 117/1000 6/25
t 943/1000 1
```

```c1pc-sum
1 L0*L2*L21; 16 L0*L17*L32; 40 L0*L27*+OCF
35 L1*L5*L30; 38 L1*L5*L31; 1 L1*L6*L31
1 L1*L7*L24; 9 L1*L12*L18; 3 L1*L20*L24
1 L1*L21*L30; 66 L1*L24*L32; 29 L1*L24*RY_Q
40 L2*L4*L28; 15 L2*L4*L29; 2 L2*L7*L17
21 L2*L14*L15; 37 L2*L17*L32; 32 L2*L27*RY_Q
4 L2*L29*L30; 2 L3*L3*L21; 27 L3*L5*L5
1125 L3*L5*L18; 1 L3*L6*L31; 56 L3*L14*L27
5 L3*L14*L28; 41 L3*L17*L30; 88 L3*L17*L33
674 L3*L18*L18; 3 L3*L18*L21; 66 L3*L18*L28
436 L4*L4*L25; 58 L4*L5*L12; 3 L4*L5*L31
13 L4*L17*LX_R; 11 L4*L20*L29; 23 L4*L29*L32
879 L5*L5*L5; 29 L5*L7*L14; 28 L5*L12*L15
58 L5*L12*L18; 33 L5*L14*L27; 157 L5*L17*L27
250 L5*L17*RY_Q; 4 L5*L21*L27; 235 L5*L23*L24
10 L5*L24*RY_P; 202 L5*L27*L29; 165 L5*L27*RX_P
13 L5*L29*+OCF; 2 L5*L29*LX_R; 1 L6*L7*L18
1 L6*L7*RX_P; 55 L6*L15*L27; 37 L6*L17*L25
12 L6*L19*L24; 1 L6*L20*L29; 531 L6*L22*L27
235 L6*L27*RY_Q; 1 L6*L29*RY_P; 2 L7*L12*L17
28 L7*L14*L18; 37 L7*L16*L24; 5 L7*L17*L28
1 L7*L17*L31; 1 L7*L27*L31; 79 L12*L14*L27
28 L12*L14*L28; 2 L12*L16*L29; 4 L12*L17*L20
120 L12*L23*L27; 226 L12*L23*L28; 48 L12*L27*L27
17 L12*L27*L28; 38 L12*L27*L32; 48 L12*L27*LY_R
57 L12*L28*L32; 1 L13*L17*L30; 21 L14*L14*L29
51 L14*L17*L22; 26 L14*L17*L23; 8 L14*L17*L27
6 L14*L17*L33; 1 L14*L17*-OHD; 6 L14*L17*RY_P
11 L14*L18*L29; 33 L14*L19*L27; 25 L14*L19*L29
133 L14*L22*L27; 48 L14*L24*L27; 48 L14*L24*LY_R
8 L14*L27*L31; 23 L14*L28*LX_R; 38 L15*L18*L24
33 L15*L27*L32; 8 L15*L29*LY_R; 342 L16*L17*L22
79 L16*L18*L25; 10 L16*L18*L27; 10 L16*L24*L28
16 L16*L28*L32; 1 L16*L29*L29; 1 L16*L29*RX_P
20 L17*L18*L19; 127 L17*L18*L22; 422 L17*L18*+OCF
440 L17*L18*RY_Q; 494 L17*L19*L20; 91 L17*L19*L24
197 L17*L21*L32; 56 L17*L22*+OCF; 609 L17*L22*RX_Q
45 L17*L23*L31; 314 L17*L23*RY_P; 14 L17*L25*L27
14 L17*L25*LY_R; 2 L17*L27*L30; 2 L17*L27*L31
1 L17*L27*L32; 49 L17*L29*L32; 76 L17*L29*RY_P
8 L17*L29*RX_Q; 40 L17*L30*+OCF; 20 L17*RY_P*RY_P
23 L18*L18*L25; 23 L18*L19*LX_R; 52 L18*L23*L29
14 L18*L25*L29; 12 L18*L25*RX_P; 118 L18*L28*L29
128 L18*L29*RY_Q; 90 L19*L25*L28; 1 L20*L28*L31
2 L20*L29*L31; 2 L21*L27*+OCF; 12 L21*L28*L32
2 L21*L29*LY_R; 12 L22*L28*L30; 494 L22*L28*LX_R
185 L23*L24*L27; 235 L23*L25*L28; 185 L23*L27*LX_R
149 L23*L28*LX_R; 4 L23*L29*L29; 361 L23*L29*RY_Q
28 L27*L29*L32; 1 L27*L31*RY_P; 19 L27*L33*+OCF
10 L27*RX_P*RY_P; 80 L28*L33*LX_R; 23 L29*L32*L33
53 L29*L32*+OCF; 52 L29*L32*RX_P; 13 L29*RX_P*RY_Q
9 L29*RX_Q*RX_Q; 8 -OHZ*L28; 12 +HCZ*L4
28 +HCZ*L18; 40 +HCZ*L27; 10 -HFZ*L25
504 +OCP*L5; 35 +OCP*L15; 312 +OCP*L18
310 +OCP*L22; 310 +OCP*L23; 1 +OCP*L31
141 -CDQ*L5; 11 -CDQ*L6; 386 -CDQ*L18
374 -CDQ*L20; 4 -CDQ*L26; 94 -CDQ*L31
8 -OHR*L1; 10 +HFR*L13; 35 +HFR*L22
1 +HFR*L30; 74 +HFR*L32; 36 +HFR*L33
161 +HFR*RY_Q; 261 +DFR*L4; 78 +DFR*L15
3 +DFR*L17; 26 +DFR*RY_Q; 33 +OPQ*L28
24 +CPQ*L1; 189 +CPQ*L2; 118 +CPQ*L5
191 +CPQ*L16; 386 +CPQ*L18; 85 +CPQ*L30
86 +CPQ*L31; 109 -DPQ*L2; 232 -DPQ*L5
105 -DPQ*L17; 415 -DPQ*L18; 3 -DPQ*L21
31 -DPQ*L32; 123 -DPQ*RY_Q; 3 -DPQ*LY_R
169 +HZR*L5; 10 +HZR*L6; 79 +HZR*L14
1 +HZR*L20; 38 +HZR*L32; 8 +HZR*-OHD
153 +HZR*RY_Q; 67 +OFZ*L5; 21 +OFZ*L14
31 +OFZ*L18; 68 +OFZ*L23; 17 +OFZ*L32
15 +OFZ*LY_R; 32 -OZQ*L27; 20 C_CDP_Q*L14
105 C_CDP_Q*RX_P; 1 QS_OPDH_Q_Y_box_29/5*L29; 18 Q_OFRH_Z*L4
2 QS_OFRH_Z_X_box_29/5*L29; 1 QS_FRHO_Z_Y_box_149/20*L29; 8 QS_DFOQ_Y_Y_box_29/5*L29
9 QS_DROP_Q_X_box_149/20*L29; 7 QS_RHCF_Z_Y_box_149/20*L17; 104 Q_CPDF_YQ*L5
87 QS_DFCP_YQ_Y_box_9*L17; 5 QS_PDZC_Q_Y_box_29/5*L28
```

Upper bound: `-460361485207/5000000000000`.

### Row C1m

```c1pc-geometry
C OCR Y Z -CRZ 14/25
C OCR Y P -CRP 14/25
C OCR Y Q -CRQ 14/25
C HCP Q Z -PHZ 11237/20000
C HCP Q R -PHR 11237/20000
P OHDYP -OYP
P OHDYQ -OYQ
P OHDZP -OZP
P OHDZQ -OZQ
P HODQR +HQR
P HOZPQ -HZQ
P DOHYR -DYR
P FHCYP +FYP
P FHCYQ +FYQ
P FHCYR -FYR
P FHDZR -FZR
P ZHCYP +ZYP
P ZHCYQ +ZYQ
P ZHCYR -ZYR
P POHFQ +PFQ
P POHZQ +PZQ
P POHQR -PQR
C CPR Q Z -PRZ 644239/1000000
P ZOPQR -ZQR
```

```c1pc-box
h 71/100 79/100
c 9/20 14/25
d 71/100 79/100
f 9/20 14/25
u 117/1000 443/1000
v 83/500 78/125
z 117/1000 907/1000
w 83/500 907/1000
p 947/1000 1
q 83/500 283/1000
l 711/1000 89/100
m 219/1000 233/500
r 117/1000 6/25
t 943/1000 1
```

```c1pc-sum
3 L0*L4*L5; 6 L0*L22*L28; 2 L1*L2*L20
3 L1*L4*L16; 10 L1*L4*RX_P; 1 L1*L6*L18
2 L1*L11*L22; 33 L1*L18*L20; 1 L1*L18*L24
3 L1*L18*L28; 16 L1*L18*L31; 93 L1*L22*L32
1 L1*L22*LX_R; 2 L1*L28*L32; 2 L1*L31*RY_Q
16 L1*L32*L33; 2 L1*-OHD*RY_P; 33 L2*L4*L17
5 L2*L5*L20; 15 L2*L12*L32; 15 L2*L13*L32
42 L2*L17*L18; 162 L2*L19*L22; 7 L2*L19*RY_Q
71 L2*L22*L28; 16 L2*L22*L30; 9 L2*L31*L32
17 L2*L32*L32; 43 L2*L32*RY_P; 28 L3*L4*L28
3 L3*L5*RX_Q; 11 L3*L17*L32; 19 L3*L18*L18
8 L4*L4*L27; 30 L4*L5*L5; 1 L4*L5*L24
24 L4*L5*RX_Q; 58 L4*L6*L32; 1 L4*L7*L10
4 L4*L9*L18; 1 L4*L11*L20; 2 L4*L11*L22
24 L4*L16*L29; 86 L4*L17*L22; 87 L4*L17*L32
1 L4*L18*LX_R; 47 L4*L22*L29; 41 L4*L28*L32
6 L4*L28*RY_Q; 40 L4*L29*L32; 1 L4*L30*L30
73 L5*L5*L32; 1 L5*L7*L30; 4 L5*L10*L17
1 L5*L11*L19; 2 L5*L11*L21; 3 L5*L11*RX_Q
25 L5*L16*L17; 1 L5*L17*LY_R; 3 L5*L18*L27
24 L5*L19*L19; 92 L5*L22*L22; 79 L5*L22*L23
99 L5*L22*RY_P; 3 L5*L27*L32; 11 L5*L27*RY_Q
8 L5*L29*RY_Q; 8 L5*L30*L32; 3 L5*L30*L33
8 L5*L32*L33; 7 L6*L20*L32; 7 L7*L17*L23
4 L8*L19*L28; 1 L8*L22*L27; 4 L8*L22*L28
2 L10*L16*L28; 3 L10*L28*RX_Q; 2 L11*L28*L30
62 L17*L17*L22; 233 L17*L18*L22; 5 L17*L18*DROP_OHP_YQ
56 L17*L18*RY_Q; 38 L17*L22*L31; 115 L17*L22*L33
176 L17*L22*DROP_OHQ_Y; 28 L17*L28*L32; 5 L17*L30*L33
51 L17*L32*L32; 7 L18*L19*L30; 20 L18*L21*L30
91 L18*L22*L30; 23 L18*L28*L32; 3 L21*L28*L28
1 L22*L24*L27; 2 L22*L29*L30; 2 L28*L30*L31
10 L28*L30*L32; 5 L28*L30*RY_P; 2 L28*L30*RX_Q
7 L28*L32*L32; 1 L29*L30*L32; 1 -HFY*L5
77 +OCP*L22; 16 +OCP*DROP_OHP_YQ; 16 +OCP*RX_P
59 -CDQ*L20; 238 -CDQ*L22; 23 -CDQ*L31
30 -CDQ*RX_P; 1 +HFR*RY_Q; 31 +OPQ*L17
449 +CPQ*L22; 47 +CPQ*L23; 21 +CPQ*L31
55 +CPQ*L32; 107 +CPQ*RY_Q; 35 -DPQ*L2
9 -DPQ*L17; 4 -CYQ*L28; 36 -HPQ*L5
19 -HPQ*L21; 152 -HPQ*L22; 27 -HPQ*RY_P
1 +HPR*L28; 17 -FPQ*L5; 3 Q_OCQH_Y*L28
8 QS_CQHO_Y_Y_box_12*L17; 8 QS_QHOC_Y_X_box_149/20*L29; 2 QS_OCPD_Q_Y_box_12*L1
5 QS_CDRO_Y_X_box_12*L5; 1 QS_FOCP_Q_X_yF_149/20*L1; 8 QS_ROQF_Y_Y_box_29/5*L2
42 QS_CDFH_Z_X_box_29/5*L17; 25 QS_CPDH_Q_Y_box_29/5*L2; 2 QS_CPRH_Q_Y_box_29/5*L1
13 QS_DFHQ_Z_X_box_29/5*L2; 48 QS_CPDF_Q_Y_box_29/5*L17; 6 QS_PDYC_Q_X_box_29/5*L1
8 QS_DYCP_Q_X_box_149/20*L1; 2 QS_YCPD_Q_Y_box_149/20*L1; 2 QS_CPDZ_Q_Y_box_29/5*L17
3 QS_DZCP_Q_X_box_12*L17; 3 LEFTSUP
```

Upper bound: `-3307848448347/5000000000000`.

### Row C1p

```c1pc-geometry
C OCR Y Z -CRZ 14/25
C OCR Y P -CRP 14/25
C OCR Y Q -CRQ 14/25
P OHDYP -OYP
P OHDYQ -OYQ
P OHDZP -OZP
P OHDZQ -OZQ
P HODPR +HPR
P HODQR +HQR
P DOHYR -DYR
P FHCYP +FYP
P FHCYQ +FYQ
P FHCYR -FYR
P FHDZR -FZR
P ZHCYR -ZYR
P POHYQ -PYQ
```

```c1pc-box
h 71/100 79/100
c 9/20 14/25
d 71/100 79/100
f 9/20 14/25
u 117/1000 443/1000
v 83/500 78/125
z 117/1000 907/1000
w 83/500 907/1000
p 947/1000 1
q 83/500 283/1000
l 711/1000 89/100
m 219/1000 233/500
r 117/1000 6/25
t 943/1000 1
```

```c1pc-sum
4 L0*L5*L23; 3 L0*L5*L33; 4 L1*L4*L32
1 L1*L18*L30; 3 L1*L21*RY_Q; 1 L2*L17*L20
62 L2*L29*L32; 9 L2*L32*L33; 2 L3*L3*RY_Q
55 L3*L5*L32; 1 L3*L16*L31; 24 L3*L18*L22
1 L3*L18*L30; 133 L3*L18*L32; 10 L3*L22*L28
7 L3*L28*L32; 10 L3*L32*L32; 1 L4*L16*L17
3 L4*L17*L22; 3 L4*L17*L32; 2 L4*L28*+OCF
1 L5*L5*L19; 98 L5*L7*L32; 2 L5*L16*L30
1 L5*L18*L31; 2 L5*L18*DROP_OHQ_Y; 123 L5*L24*L32
7 L5*L31*L32; 6 L5*L31*RY_Q; 31 L6*L17*L32
98 L6*L27*L32; 2 L14*L28*L32; 2 L15*L28*L32
1 L16*L17*L31; 1 L16*L20*L28; 1 L16*L22*L28
30 L16*L28*L32; 2 L17*L17*L32; 2 L17*L18*L28
8 L17*L18*DROP_OHQ_Y; 5 L17*L20*L20; 34 L17*L21*L32
72 L17*L22*L22; 8 L17*L22*L31; 13 L17*L22*L33
31 L17*L22*+OCF; 13 L17*L32*L33; 41 L17*L32*RX_Q
51 L17*L32*RY_Q; 7 L18*L18*L31; 1 L18*L20*L31
1 L18*L23*L28; 2 L18*L27*L28; 2 L18*L28*-OHD
3 L18*L28*RY_Q; 2 L18*L28*LY_R; 5 L18*L30*L33
19 L18*L31*L32; 1 L21*L28*DROP_OHQ_Y; 124 L21*L29*L32
1 L22*L28*L32; 26 L25*L28*L32; 9 L28*L31*L32
54 L28*L32*LX_R; 2 L28*RY_P*RY_Q; 31 L29*L30*L32
92 +OCP*L32; 1 +OCP*L33; 2 +OCP*RX_Q
4 +OCP*RY_Q; 2 -CDQ*L2; 3 -CDQ*L5
77 -CDQ*L32; 2 -CDQ*DROP_OHQ_Y; 26 -OHR*L32
54 +HFR*L32; 44 +DFR*L32; 4 -DPQ*L5
103 -DPQ*L22; 8 -DPQ*L28; 110 -DPQ*L32
1 -DPQ*+OCF; 4 -DPQ*DROP_OHQ_Y; 3 -DPQ*RY_Q
40 +HPQ*L32; 1 +HPQ*DROP_OHQ_Y; 9 +HPQ*RY_Q
```

Upper bound: `-4846229/25000000`.
