# Two lower points, both side caps, and one central point

This note excludes the whole C1 count
\((k,j,r,t,l)=(2,1,1,0,1)\). Use the actual anchors

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad d\le h,\quad f\le c,
\]

and assume every unsigned actual doubled triangle area is at least
\(s=93/1000\). The two lower points lie in \(OHC\). Of the other
three points, one is in \(HCDF\), one is in the right cap \(CD(1,0)\),
and one is in the left cap \(HF(0,1)\).
All actual points are distinct and no actual triple is collinear.

The proof gives three exhaustive angular roots and a fixed binary
refinement of one root. Every terminal is an explicit geometric
contradiction or a displayed positive-integer cubic combination with
negative rational upper bound. The printed tables and the factor and
inference definitions below are the proof; the companion checker is
only an exact transcription check.

## 1. A uniform box from the two occupied side caps

Put

\[
 \rho=347/500,\quad B=22/25,\quad b_0=\rho/B=347/440,
 \quad a_0=s/B=93/880,\quad W=B-2a_0=1471/2200,
 \quad \delta=\frac{s}{b_0(1-b_0)}=968/1735.
 \tag{1}
\]

The two-interior-point triangle bound gives \(hc>\rho\). The two
occupied side caps give

\[
 dc(1-c)\ge s,\qquad fh(1-h)\ge s.
 \tag{2}
\]

If \(h=\max(h,c)\), then \(f\le c\le h\) makes (2) imply
\(h^2(1-h)\ge s\). If \(c=\max(h,c)\), use \(d\le h\le c\)
instead. The function \(z^2(1-z)\) decreases for \(z\ge2/3\), and
\(B^2(1-B)=.092928<s\). Since the maximum is greater than
\(\sqrt\rho>2/3\), both \(h,c<B\). Equation (2) now gives

\[
 b_0<h,c<B,\qquad \delta<d,f<B.
 \tag{3}
\]

Indeed \(hc>\rho\) gives the lower endpoints for \(h,c\), and
\(z(1-z)\) decreases for \(z\ge b_0>1/2\).

For a right-cap point \(S=(x_S,y_S)\), the actual clearances give

\[
 d(x_S-c)-(1-c)y_S\ge s,\qquad cy_S\ge s,
 \qquad dc(x_S-c)\ge s.
\]

Consequently

\[
 b_0+a_0\le x_S\le1,\qquad
 a_0\le y_S\le B-\frac{s}{1-b_0}=11/25.
 \tag{4}
\]

The lower bound for \(x_S\) uses \(cd\le B\); the upper bound for
\(y_S\) uses \(x_S\le1\). For the left-cap point \(T\), transpose
(4). A central point \(U\in HCDF\) has

\[
 a_0\le x_U,y_U\le1-s,\qquad
 x_U+y_U\ge(\rho+s)/B.
 \tag{5}
\]

The lower bounds are \(hx_U,cy_U\ge s\). For the upper bounds,
use the two positive central clearances adjacent to each extreme
anchor. The exact identities are

\[
\begin{aligned}
 (1-f)[CDU]+(1-c)[DFU]&=[CDF](1-x_U),\\
 (1-d)(-[HFU])+(1-h)[DFU]&=[HDF](1-y_U).
\end{aligned}
\]

Here \([CDF]\le1-f\), \([HDF]\le1-d\), and both terms on each
left side have their actual clearance at least \(s\). Division gives
\(1-x_U\ge s\), \(1-y_U\ge s\).
The sum bound follows directly from
\(h x_U+c y_U\ge hc+s\ge\rho+s\).

Choose the lower point \(Y=(u,v)\) with smaller barycentric coordinate
at \(O\) in \(OHC\), and denote the other by \(Z=(z,w)\). Then
\(Z\) is outside \(HCY\). Transpose the whole square if necessary
so that \(Z\in OHY\). This is the only use of transposition; both
possible relative locations of the side points after it remain in the
angular catalogue below. The lower clearances imply

\[
\begin{gathered}
 h u\ge3s,\quad h(u-z)\ge2s,\quad h(c-u)\ge2s,\\
 c(h-v)\ge4s,\quad h(c-z)\ge2s,\quad c(h-w)\ge2s,\\
 hu+cv-hz-cw\ge0.
\end{gathered}
 \tag{6}
\]

For example, the first two follow by dividing \(OHY\) at \(Z\),
and the third follows by adding the clearances of \(HCY\) and
\(OCY\). The fourth follows from \(hu\ge3s\) and the clearance
of \(HCY\). Hence the initial lower-point box is

\[
 u\in[3a_0,W],\quad v\in[a_0,B-4a_0],\quad
 z\in[a_0,B-4a_0],\quad w\in[a_0,W].
 \tag{7}
\]

Both lower points also satisfy

\[
 u+v,\ z+w\le B-a_0.
 \tag{8}
\]

To verify this, write a lower point as
\(\alpha O+\beta H+\gamma C\). Its \(HC\) clearance is
\(hc\alpha\ge s\), whereas
\(B^2-B(x+y)=B^2\alpha+B(B-h)\beta+B(B-c)\gamma\ge hc\alpha\).
The weaker upper bounds \(u+v,z+w\le1-s\) are valid by the same
argument with \(B=1\).

## 2. Three exhaustive angular roots and their initial signs

Label the upper points \(P,Q,R\) in increasing angle from the
positive horizontal ray at \(O\). This is strict, because their
pairwise determinants with \(O\) are nonzero. The right-cap point
comes before the left-cap point: (4) bounds their respective slopes
by \((11/25)/(b_0+a_0)<1\) and its reciprocal.
Thus the only region words, in the order \(P,Q,R\), are

\[
 \mathrm{URL},\qquad\mathrm{RUL},\qquad\mathrm{RLU}.
 \tag{9}
\]

Here \(U\) means central, and \(R,L\) mean right and left cap.
These names are region codes; point labels are always capital letters
\(O,H,C,D,F,Y,Z,P,Q,R\).

The complete initial signs are specified as follows. A token \(+ABC\)
means \([ABC]>0\), and a minus means the reverse orientation.

```text
-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF
+OYZ -HYZ +OPQ +OPR +OQR
```

For either lower point, the signs of the listed anchor edges are

| Edge | OH | OC | HC | HD | HF | CD | CF | DF |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| Lower point | − | + | − | − | − | + | + | + |

For each upper point, \(OH<0,OC>0,HC>0\). Its further signs are

| Region | HF | CD | DF | OD | OF | HD | CF |
|---|---:|---:|---:|---:|---:|---:|---:|
| U | − | + | + | unspecified | unspecified | unspecified | unspecified |
| R | − | − | + | − | − | − | − |
| L | + | + | + | + | + | + | + |

These are the oriented edge tests for the actual anchor pentagon and
its three caps. For a lower point \(V\) and any upper point \(T\),
\([HVT]>0\) and \([CVT]<0\). If \(T\) is in the right cap,
\([DVT],[FVT]>0\); if it is in the left cap, both are negative.
These cross signs follow by taking the value of the indicated affine
linear determinant at the three vertices of the appropriate cap;
the entire lower triangle is on the stated side.

There are seven more initial signs. Write \(S\) for the right-cap
point and \(T\) for the left-cap point. Then

\[
 [OST],[YST],[ZST]>0,\qquad [DST],[FST]<0,
 \qquad [OZS]<0,\quad[OYT]>0.
 \tag{10}
\]

Indeed \(x_T<c<x_S\) and \(y_S<h<y_T\). The line \(ST\) has
negative slope, passes above both \(H,C\), and below both \(D,F\).
Thus it also passes above all of \(OHC\), proving the first five
signs. For the sixth, if \([OZS]>0\), the ordered lower rays put
both \(Y,Z\) inside the actual triangle \(OCS\). Its doubled area
is at most \(B(11/25)=242/625<\rho\), contrary to its two-interior
cost. The last sign follows by the reflected argument in \(OHT\).

## 3. Finite geometric deductions and conditional boxes

Every split in the printed tree is into the two nonzero signs of an
actual determinant. A leaf's trace uses three rules:

* `P abcde +UVW` (or a minus) is the five-point identity
  \([abc][ade]-[abd][ace]+[abe][acd]=0\). Two summands have the same
  known sign, and the third contains exactly one unknown determinant.
  Its sign is forced to be the displayed one.
* `M ABCYZX e` is a distributed mesh, with orientation
  \(e=-\operatorname{sign}[ABC]\). The three indicated points are
  inside \(ABC\), with \(Z\in ABY\), \(X\in ACY\). Since a
  clustered triple in an actual square triangle is excluded by
  CLUSTERED_TRIANGLE.md, the full twenty mesh signs follow. They are
  obtained from the fixed template below by replacing
  \(O,H,C,Y,Z,X\) by \(A,B,C,Y,Z,X\), and multiplying by \(e\).
* `C ABC I T -UVW b` (or a plus) says that the indicated points
  \(I\) are already inside \(ABC\), whose unsigned doubled area is
  at most the displayed \(b\). This triangle has capacity
  \(|I|\), by the table below or by the universal capacity three.
  Two edge tests for \(T\) point inward; the third must point
  outward, giving the printed sign. All these edge signs are known
  before the inference.

The fixed clockwise mesh template is

```text
-OHC -OHY -OHZ -OHX +OCY +OCZ +OCX +OYZ -OYX -OZX
-HCY -HCZ -HCX -HYZ -HYX +HZX +CYZ +CYX +CZX +YZX
```

The complete capacities used in the traces are:

| Region root | Triangle | Upper bound for its unsigned area | Capacity |
|---|---|---:|---:|
| URL | OCQ | \(B(11/25)=242/625\) | 1 |
| RLU | OHQ | \(B(11/25)=242/625\) | 1 |
| RUL | CZP | \((b_0-a_0)(11/25)+W(1-b_0)=427687/968000\) | 1 |
| RUL | DZP | \((1-a_0)(B-a_0)=2681309/3872000\) | 1 |
| RUL | OYR, OZP | \(W-a_0^2=509143/774400\) | 1 |
| RUL | OCQ | \(B(1-s)=9977/12500\) | 2 |
| RUL | OCR, OHP | \(B=22/25\) | 3 |

The capacity-one bounds are all below \(\rho\); the capacity-two
bound is below \(.823\). For the only less immediate area estimates,
write the right point as \(P=(p,q)\). Then
\(-[CZP]=(c-z)q+w(p-c)\). Maximize successively in \(q,w,p\),
then minimize in \(z,c\), using the base box; the result is the
stated bound. Likewise
\([DZP]=(1-z)(d-q)+(1-p)(w-d)\). Maximize first in \(d\), whose
coefficient \(p-z\) is positive; then \(d=B>w\), so maximizing in
\(p\), and minimizing in \(z,q\), gives the displayed value.
The remaining entries are immediate products or differences of
products from (3)--(7).

A terminal `mesh ABCYZX e` is a geometric contradiction: its mesh
premises hold, but at least one of the twenty implied signs contradicts
a sign already in the trace. This is the only geometric terminal
form in the following tables.

Some polynomial leaves improve the base box with a short list of
occupied coordinate triangles. In a line

```text
OHV i b POINTS
```

(or `OCV`), all indicated points are strictly inside that actual
triangle. With \(n\) indicated points, its required doubled area is

\[
 t_0=s,\quad t_1=3s,\quad t_2=\rho,\quad t_3=.823.
 \tag{11}
\]

Since \(A(OHV)=h x_V\), division by the current upper bound for
one coordinate gives the displayed lower bound \(b\) for the other.
For \(OCV\), use \(c y_V\). Indices are zero-based in the coordinate
order below. Apply these printed lines in order to the base box
(3)--(7), then enlarge to the leaf's displayed rational box. This is
finite interval arithmetic from occupied actual triangles; no numerical
optimization is a premise.

## 4. Every factor in a printed cubic is nonnegative

The coordinate order is

```text
h c d f u v z w p q l m r t
```

where \(P=(p,q),Q=(l,m),R=(r,t)\). For the leaf's printed box,

\[
 L_{2i}=a_i-\ell_i,\qquad L_{2i+1}=u_i-a_i,
 \qquad 0\le i<14.
\]

The remaining indexed affine factors, in order \(L_{28},\ldots,L_{39}\),
are

\[
\begin{gathered}
 h-d,\ c-f,\ u-z-2s,\ c-u-2s,\ h-v-4s,\ c-z-2s,\ h-w-2s,\\
 1-s-u-v,\ 1-s-z-w,\
 x_U+y_U-(\rho+s)/B,\ B-a_0-u-v,\ B-a_0-z-w.
\end{gathered}
 \tag{12}
\]

They follow from (5)--(8) and \(h,c\le1\). The named common factors
are

| Name | Polynomial |
|---|---|
| `KLOW` | \(hc-\rho\) |
| `FAN` | \(hu-3s\) |
| `CENT` | \(hu+cv-hz-cw\) |
| `RIGHTSUP` | \(dc(1-c)-s\) |
| `LEFTSUP` | \(fh(1-h)-s\) |
| `QUADV` | \(h x_V+c y_V-8s\), for \(V=P,Q,R\) |

For the last row, the actual convex quadrilateral \(OHVC\) contains
both lower points, and its area is \(hx_V+cy_V\). Its two-interior
cost is \(8s\).

All other factor names include their own geometric witnesses:

| Name | Definition and premise |
|---|---|
| `+ABC`, `-ABC` | The indicated signed actual determinant minus \(s\). Its sign is in the leaf's trace. |
| `C_ABC_I` | \(A(ABC)-t_{|I|}\). Every listed point \(I\) is strictly inside the triangle. |
| `DROP_OHV_I` | \(x_V-t_{|I|}\), with the same containment premise; follows from \(h\le1\). |
| `DROP_OCV_I` | \(y_V-t_{|I|}\), similarly. |
| `Q_ABCD_I` | \([ABC]+[ACD]-q_{|I|}\), for the indicated positively oriented convex actual quadrilateral and its listed interior points. |
| `RX_V`, `RY_V` | \(x_V-c-s,\ d-y_V-s\), for the right point. |
| `LX_V`, `LY_V` | \(f-x_V-s,\ y_V-h-s\), for the left point. |

The side factors follow by weakening the positive cap clearances.
The quadrilateral costs used here are

\[
 q_1=.449,\qquad q_2=8s,\qquad q_3=93/91.
 \tag{13}
\]

The first is below \(2(1+\sqrt2)s\), and the third is the theorem
SQUARE_QUADRILATERAL_THREE.md. Every containment in these names is
checked by all oriented edge signs already proved.

For `SP_ABCD_UV_IJe`, both diagonals of the positively oriented
quadrilateral \(ABCD\) strictly separate its two interior points
\(U,V\), \(IJ\) is one of those diagonals, and \(e=\pm1\). The factor is

\[
 A(ABCD)-(1457/250)s+e\bigl([JUV]-[IUV]\bigr).
 \tag{14}
\]

It is nonnegative by the threshold-free form of
QUADRILATERAL_SPREAD.md, since \(1457/250<3+2\sqrt2\).

Finally `M_ABCYZX_e_j` uses the mesh proved by a trace rule above.
Put \(A_0=-e[ABC]\) and
\(E_0=-e[ABZ], E_1=e[ACX], E_2=-e[BCY]\). The mesh factors for
\(j=0,1,2,3,4\), respectively, are

\[
 A_0-E_0-(3927/500)s,\quad
 A_0-E_1-(3927/500)s,\quad
 A_0-E_2-(3927/500)s,\quad
 \tfrac85s-e[YZX],\quad
 -e[BYZ]-e[AZX]+e[CYX]-(2427/500)s.
 \tag{15}
\]

These are the outer-area-minus-ear, central-face, and connector bounds
proved in C1_PENTAGON_GEOMETRY.md, Sections 1--2, with orientation
adjusted. Their outer triangle is an actual triangle in the unit square;
the same hypotheses hold for every repeated mesh.

## 5. Fixed exact contradictions

Each fixed sum \(P\) below has positive integer coefficients and
products of the nonnegative factors just defined, so \(P\ge0\).
Translate by the lower box endpoints, \(a_i=\ell_i+z_i\), with
\(0\le z_i\le u_i-\ell_i=:d_i\). If

\[
 P(\ell+z)=\sum_\alpha c_\alpha z^\alpha,
\]

then

\[
 P\le c_0+\sum_{\alpha\ne0,\ c_\alpha>0}
 c_\alpha\prod_i d_i^{\alpha_i}.
 \tag{16}
\]

Every leaf prints the exact rational value of this upper bound, and
every value is negative. Thus each gives \(0\le P<0\).
The finite table exhausts (9), so the entire count is excluded.

The companion [check_c1_two_lower_both_sides.py](check_c1_two_lower_both_sides.py)
reads only this manuscript. It reconstructs every sign, containment,
capacity, box endpoint, factor and cubic sum with exact arithmetic.
It imports no solver or discovery data.

Counts: `20 2 5473 379`.

```c1bs-tree
RUL CYZ
RULm OYP
RULmm OYQ
RULmmp OZQ
RULmmpm OZR
RULp OYP
RULpm OYQ
RULpmm OZR
RULpmp OZQ
RULpmpm OZR
RULpmpmp HPQ
RULpmpmpp FPQ
RULpmpmppm CQR
RULpmpmppmp DQR
RULpmpmppmpm HDQ
RULpmpmppmpmm CFQ
RULpmpmppmpmmp YZP
RULpmpmppmpmmpp PQR
RULpmpmppmpmmppp ODY
```

### Leaf URL

Assumptions: ``.

```c1bs-geometry
P OHDPQ -ODP
P OHFPQ -OFP
P OHZPQ -OZP
P HODQR +HQR
P HOFPR +HPR
P CODPQ -CPQ
P CODQR +CQR
P DOHCP +DHP
P DOCPQ +DPQ
P DOCPR -DPR
P FODPR -FPR
P YOHZR -YZR
P POHCQ -PHQ
P POHDZ +PDZ
P POHFZ +PFZ
P POHZQ -PZQ
P POHZR -PZR
P PODFQ -PFQ
P PODQR +PQR
C OCQ P Y -QOY 242/625
P OHYPQ -OYP
P YOHPR +YPR
P POHDY +PDY
P POHFY +PFY
P POHYQ -PYQ
```

```c1bs-bounds
OHP 8 347/440 YZ
OCQ 11 279/880 P
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 197/250 907/1000
q 21/200 907/1000
l 447/500 1
m 317/1000 11/25
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
1 L0*L1*L21; 4 L0*L3*L5; 1 L0*L8*RX_Q; 2 L0*L21*RY_Q
1 L0*L23*L26; 1 L0*L27*L28; 1 L1*L1*DROP_OCR_Y; 1 L1*L2*L9
4 L1*L2*L16; 2 L1*L3*L26; 11 L1*L3*DROP_OHQ_YZ; 1 L1*L4*L20
1 L1*L12*L20; 4 L1*L16*DROP_OCQ_P; 2 L1*L21*L21; 1 L1*L26*RY_Q
1 L1*L27*DROP_OCR_Y; 3 L1*+OCF*RX_Q; 10 L2*L20*L23; 4 L2*L21*L37
6 L2*L23*+OCF; 1 L3*L3*L17; 1 L3*L5*L31; 2 L3*L8*L28
1 L3*L12*DROP_OCQ_P; 2 L3*L20*L30; 6 L3*L21*L23; 8 L3*L21*DROP_OHQ_YZ
1 L3*L27*L27; 1 L3*L27*DROP_OCR_Y; 1 L3*DROP_OCQ_P*LY_R; 3 L4*L21*-OHD
1 L4*RX_Q*LY_R; 4 L5*L18*RX_Q; 6 L5*L23*RX_Q; 1 L6*L29*DROP_OHP_YZ
1 L8*L21*DROP_OCQ_P; 1 L8*L23*RY_Q; 5 L12*L20*L23; 2 L12*L21*+OCF
2 L14*L28*RX_Q; 4 L16*L21*L37; 1 L16*L21*+OCF; 9 L16*DROP_OCQ_P*RX_Q
4 L18*L22*RX_Q; 1 L20*L20*L21; 5 L20*L20*LY_R; 5 L20*L21*L26
1 L20*L21*L32; 5 L20*L28*RX_Q; 1 L21*L21*RX_Q; 4 L21*L22*L37
1 L21*L28*L28; 2 L21*L31*+OCF; 1 L21*L32*DROP_OCQ_P; 4 L21*L33*DROP_OCQ_P
1 L21*L34*RX_Q; 7 L21*-OHD*DROP_OCQ_P; 2 L21*-OHD*RY_Q; 2 L21*-OHD*DROP_OCR_Y
2 L21*+OCF*+OCF; 3 L21*+OCF*DROP_OHQ_YZ; 4 L21*+OCF*RX_Q; 1 L21*+OCF*RY_Q
5 L21*DROP_OHP_YZ*DROP_OCQ_P; 1 L22*L28*L31; 2 L22*L32*RX_Q; 1 L23*L31*L33
1 L23*L31*-OHD; 2 L23*-OHD*DROP_OHQ_YZ; 2 L28*L31*RX_Q; 2 L28*L34*RX_Q
5 L28*DROP_OCQ_P*RX_Q; 4 L28*RX_Q*RX_Q; 2 L28*RX_Q*LY_R; 1 L29*L29*DROP_OHP_YZ
3 KLOW*L23; 1 CENT*L21; 1 -HDY*L21; 1 -OHP*L21
4 +HCP*L2; 1 -CDQ*L9; 1 -CDQ*L26; 5 -CDQ*L28
8 -CDQ*DROP_OHQ_YZ; 8 -CDQ*DROP_OCQ_P; 5 -CDQ*RY_Q; 1 -CYQ*L21
1 +OPQ*L4; 1 +OPQ*-OHD; 3 +OPQ*DROP_OHQ_YZ; 8 +OPQ*RX_Q
1 -OZQ*L21; 5 -CPQ*L12; 5 -CPQ*L33; 4 -CPQ*-OHD
3 -CPQ*+OCF; 5 -CPQ*DROP_OHP_YZ; 12 -CPQ*DROP_OHQ_YZ; 2 -CPQ*DROP_OCQ_P
6 -CPQ*RY_Q; 3 +DPQ*L28; 4 +DPQ*RY_Q; 4 C_OHP_YZ*DROP_OCQ_P
1 C_CYQ_P*DROP_OCQ_P; 1 Q_OPQH_YZ*L16
```

Upper bound: `-358173083/2200000000`.

### Leaf RULmmm

Assumptions: `-CYZ -OYP -OYQ`.

```c1bs-geometry
P OHYZQ -OZQ
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHZR -YZR
P YOHQR +YQR
P YOCZP -YZP
P YOCZQ -YZQ
P YHCDZ +YDZ
P YHCFZ +YFZ
P QOHZR -QZR
C OZP Y Q +ZPQ 509143/774400
P POYZQ -PYQ
```

```c1bs-bounds
OCZ 7 279/880 Y
OHQ 10 347/440 YZ
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 317/1000 669/1000
p 447/500 1
q 21/200 11/25
l 197/250 907/1000
m 21/200 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
5 L0*L1*L25; 1 L0*L6*L27; 1 L0*L7*L24; 7 L0*L12*L38
30 L0*L17*L26; 3 L0*L22*L27; 1 L0*L23*RX_P; 15 L0*L26*L27
9 L0*L28*RX_P; 7 L1*L2*L27; 5 L1*L3*L19; 4 L1*L4*L24
2 L1*L7*L10; 1 L1*L7*L22; 9 L1*L8*L33; 8 L1*L8*DROP_OHP_YZ
4 L1*L10*DROP_OHQ_YZ; 9 L1*L14*L27; 4 L1*L15*L32; 4 L1*L15*LY_R
5 L1*L16*L22; 9 L1*L17*L25; 9 L1*L17*LY_R; 2 L1*L18*L24
3 L1*L19*L30; 1 L1*L19*L33; 1 L1*L23*DROP_OCR_Y; 1 L1*L24*L29
1 L1*L24*RX_P; 6 L1*L26*DROP_OHQ_YZ; 28 L1*L27*DROP_OHP_YZ; 2 L1*L29*L32
2 L1*L29*LY_R; 4 L1*L30*LY_R; 2 L1*L32*DROP_OCR_Y; 1 L1*LY_R*LY_R
2 L2*L2*L28; 6 L2*L3*L34; 3 L2*L8*L28; 8 L2*L8*LY_R
3 L2*L10*L21; 3 L2*L10*L34; 7 L2*L14*L27; 2 L2*L16*L28
27 L2*L17*L37; 10 L2*L17*L38; 4 L2*L17*DROP_OCR_Y; 25 L2*L18*RX_P
8 L2*L20*L36; 1 L2*L21*L22; 5 L2*L27*L30; 3 L2*L34*L34
5 L3*L5*L30; 1 L3*L6*DROP_OHQ_YZ; 10 L3*L8*L16; 3 L3*L10*L30
2 L3*L11*L18; 10 L3*L11*RX_P; 6 L3*L12*L14; 8 L3*L12*L21
17 L3*L12*LY_R; 10 L3*L14*L14; 22 L3*L16*L18; 2 L3*L16*DROP_OHP_YZ
1 L3*L30*L39; 12 L3*L30*DROP_OCR_Y; 1 L4*L10*L17; 1 L4*L17*L24
3 L4*L29*LY_R; 2 L5*L8*LY_R; 2 L5*L10*LY_R; 1 L5*L17*DROP_OHP_YZ
4 L5*L30*DROP_OHP_YZ; 1 L5*L31*L31; 4 L5*L31*RX_P; 1 L5*+OCF*LY_R
4 L5*RX_P*LY_R; 1 L6*L10*L38; 2 L6*L17*DROP_OHP_YZ; 1 L6*L21*L28
1 L7*L21*DROP_OHP_YZ; 1 L7*L25*L28; 15 L8*L8*L34; 5 L8*L8*L36
3 L8*L10*L27; 17 L8*L14*L21; 6 L8*L16*LY_R; 2 L8*L18*LY_R
2 L8*L21*L22; 4 L8*L21*L32; 6 L8*L27*RX_P; 3 L8*L37*L38
1 L8*DROP_OHQ_YZ*LY_R; 1 L9*L10*L19; 4 L9*L15*L34; 3 L9*L31*L39
5 L9*L38*L39; 1 L10*L10*L21; 1 L10*L12*LY_R; 8 L10*L14*L30
2 L10*L21*L21; 7 L10*L21*L39; 2 L10*L22*L30; 4 L10*L23*L27
4 L10*L27*L37; 7 L10*L27*RX_P; 1 L10*L29*L38; 1 L10*L30*RX_P
1 L10*L38*RX_P; 3 L11*L18*L20; 3 L11*L20*L38; 1 L11*L28*RX_P
3 L11*L31*LY_R; 14 L12*L13*L32; 4 L12*L13*+OCF; 11 L12*L13*DROP_OHP_YZ
7 L12*L14*L35; 18 L12*L16*L38; 5 L12*L22*L38; 13 L12*L26*L27
2 L12*L26*L32; 1 L12*L28*DROP_OCR_Y; 13 L12*L31*L38; 21 L12*L32*DROP_OHP_YZ
18 L12*L32*DROP_OCR_Y; 14 L12*L35*-OHD; 3 L13*L19*L21; 5 L14*L17*+OCF
11 L14*RX_P*DROP_OHQ_YZ; 7 L15*L31*L39; 11 L16*L20*L32; 3 L16*L20*L39
4 L16*L27*L32; 1 L17*L17*+OCF; 2 L17*L17*LX_R; 10 L17*L22*L33
3 L17*L22*L35; 9 L17*L22*+OCF; 6 L17*L22*LY_R; 2 L17*L25*DROP_OHP_YZ
1 L17*L27*L28; 6 L17*L27*RY_P; 6 L18*L26*RX_P; 15 L18*L30*DROP_OHQ_YZ
4 L19*L21*L31; 1 L20*L21*L32; 1 L20*L24*L32; 6 L20*L26*L28
7 L20*L27*+OCF; 13 L20*L38*DROP_OHP_YZ; 1 L21*L21*L28; 7 L21*L28*L31
1 L22*L24*L34; 1 L22*L28*L29; 1 L22*L29*L37; 2 L23*L27*-OHD
13 L27*L27*L34; 3 L27*L27*-OHD; 1 L27*L30*L36; 3 L27*L35*+OCF
13 L27*L36*LY_R; 1 L27*L38*L39; 2 L28*L38*LY_R; 1 L28*RX_P*RX_P
10 L29*DROP_OHP_YZ*LY_R; 1 L29*RX_P*DROP_OHQ_YZ; 3 L31*L34*L38; 2 L34*L34*L38
2 -OHD*RX_P*RX_P; 10 FAN*L27; 2 CENT*L27; 8 +OYZ*L1
9 -HYZ*L9; 15 -HYZ*L14; 7 -HYZ*L22; 17 -HYZ*L31
14 -HYZ*L33; 7 -HYZ*-OHD; 13 -HYZ*RX_P; 14 -HYZ*DROP_OCR_Y
10 -OHY*L1; 9 +OCY*L21; 8 -OHZ*L17; 1 -OHZ*L32
1 +CDZ*L17; 12 +OCP*L3; 3 +HCP*L17; 5 -CDP*L13
3 -CDP*-OHD; 2 +HYP*L27; 11 +HCQ*L17; 3 +CDQ*L3
2 +CDQ*L10; 1 +CDQ*L22; 6 +CDQ*L27; 3 +CDQ*+OCF
1 +DFQ*L7; 1 +DFQ*L37; 1 +DFQ*LX_R; 5 +HCR*L1
3 +HFR*L4; 7 +HFR*L16; 3 +HFR*+OCF; 3 +HFR*RX_P
1 +HYR*L21; 1 +HZR*L4; 1 +HZR*L14; 1 +HZR*L23
9 +OPQ*L2; 1 +YPR*L1; 6 -CYZ*L5; 7 -CYZ*L18
5 -CYZ*L31; 10 -CYZ*-OHD; 12 -CYZ*+OCF; 27 -CYZ*RX_P
7 -CYZ*RY_P; 5 -CYZ*DROP_OCR_Y; 1 -OYP*L2; 11 -OYQ*L9
2 -OYQ*L21; 22 -OYQ*L30; 15 -OYQ*L31; 7 -OYQ*L34
4 -OYQ*-OHD; 20 -OYQ*DROP_OHP_YZ; 4 -OYQ*RX_P; 4 -OYQ*LY_R
6 +CPQ*L30; 2 +CPQ*L32; 12 +CPQ*L33; 25 +CPQ*+OCF
6 +CPQ*DROP_OCR_Y; 2 -DPQ*L0; 7 -DPQ*L2; 1 -YZR*L1
5 -YZP*L3; 18 +ZPQ*L2; 1 +YPQ*L11; 3 C_OHQ_YZ*L38
3 C_OCZ_Y*L1; 7 C_OCR_Y*L17; 2 C_OZQ_Y*L8; 8 C_OZQ_Y*L17
1 Q_OCDR_Y*L17; 15 Q_OPQZ_Y*L8
```

Upper bound: `-179261633847/242000000000`.

### Leaf RULmmpmm

Assumptions: `-CYZ -OYP +OYQ -OZQ -OZR`.

```c1bs-geometry
P OHDZR +ODZ
P OHFZR +OFZ
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOCZP -YZP
P YHCDZ +YDZ
P YHCFZ +YFZ
P QOHZR -QZR
C OZP Y Q +ZPQ 509143/774400
```

```c1bs-bounds
OCZ 7 279/880 Y
OHQ 10 279/880 Z
OCQ 11 279/880 Y
OHR 12 279/880 Z
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 317/1000 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 317/1000 11/25
t 447/500 1
```

```c1bs-sum
4 L0*L0*L9; 1 L0*L0*L21; 3 L0*L0*L23; 6 L0*L9*L9
34 L0*L12*RX_P; 6 L0*L14*L25; 4 L0*L17*L25; 8 L0*L24*LY_R
153 L0*L25*L30; 6 L0*L25*L32; 32 L0*L25*LX_R; 7 L0*L29*RX_P
75 L0*L29*LY_R; 12 L1*L3*L8; 10 L1*L3*L21; 145 L1*L3*L30
12 L1*L6*L7; 3 L1*L7*L23; 14 L1*L12*L14; 17 L1*L12*L30
6 L1*L17*L31; 10 L1*L17*L33; 21 L1*L17*L39; 66 L1*L24*L24
1 L1*L26*L28; 5 L1*L27*+OCF; 4 L1*L27*DROP_OCQ_Y; 4 L1*L27*LX_R
1 L1*L28*L33; 145 L1*L29*L30; 4 L1*L29*L38; 1 L2*L3*L28
1 L2*L5*L20; 4 L2*L6*L29; 2 L2*L10*L28; 1 L2*L10*L34
4 L2*L17*L33; 1 L2*L17*L37; 4 L2*L24*L38; 7 L2*L25*L28
10 L2*L26*L28; 57 L2*L27*L30; 11 L2*L28*RX_P; 15 L2*L29*L33
5 L3*L3*L11; 35 L3*L3*L14; 4 L3*L3*RX_P; 15 L3*L3*DROP_OCR_Y
3 L3*L4*L5; 13 L3*L4*LY_R; 6 L3*L5*L19; 4 L3*L6*L7
4 L3*L10*L29; 1 L3*L11*L14; 3 L3*L11*L17; 9 L3*L11*LY_R
4 L3*L12*RX_P; 4 L3*L12*LX_R; 4 L3*L16*L17; 11 L3*L17*DROP_OCR_Y
71 L3*L18*L30; 11 L3*L18*+OCF; 34 L3*L18*DROP_OHP_YZ; 25 L3*L18*LY_R
1 L3*L23*L29; 50 L3*L24*L30; 15 L3*L26*L29; 11 L3*L29*L30
7 L3*L37*LY_R; 1 L3*RX_P*DROP_OHQ_Z; 7 L4*L12*RX_P; 1 L4*L14*L27
7 L4*L17*DROP_OHR_Z; 13 L4*L27*L30; 2 L4*L27*DROP_OCQ_Y; 3 L5*L5*RX_P
2 L5*L7*C_OHD_Z; 7 L5*L7*RX_P; 6 L5*L18*RX_P; 1 L5*L24*L34
9 L5*L27*L33; 1 L5*L29*+OCF; 41 L5*L30*RX_P; 3 L6*L11*L28
3 L6*L20*L27; 4 L6*L27*L29; 2 L6*L28*L32; 9 L7*L8*L8
25 L7*L11*L30; 7 L7*L12*L24; 3 L7*L12*L26; 4 L7*L23*LY_R
7 L7*L24*L36; 54 L7*L25*L30; 4 L7*L26*L31; 12 L7*L29*LY_R
70 L7*DROP_OHR_Z*LY_R; 7 L7*DROP_OCR_Y*LY_R; 36 L8*L12*L29; 88 L8*L12*LY_R
98 L8*L14*L25; 2 L8*L17*L39; 13 L8*L19*L27; 9 L8*L23*L28
33 L8*L26*L29; 11 L8*L27*RX_P; 45 L8*L29*L36; 9 L9*L9*L31
9 L9*L15*L24; 53 L9*L26*L27; 9 L9*L29*L30; 26 L9*L29*LY_R
9 L9*L34*DROP_OHR_Z; 10 L10*L12*L27; 45 L10*L12*L29; 2 L10*L15*L17
4 L10*L17*L28; 19 L10*L17*L30; 2 L10*L17*RY_P; 4 L10*L17*LY_R
5 L10*L24*L28; 7 L10*L25*L25; 2 L10*L25*-OHD; 8 L10*L26*L29
1 L10*L27*L34; 9 L10*L27*DROP_OHP_YZ; 13 L10*L27*RY_P; 53 L10*L27*DROP_OHR_Z
14 L10*L27*LY_R; 24 L10*L29*L30; 30 L10*L31*RX_P; 13 L11*L19*L27
17 L12*L16*L39; 9 L12*L22*L28; 35 L12*L24*L36; 88 L12*L26*L27
5 L12*L26*L28; 10 L12*L27*L34; 14 L12*L28*C_OHD_Z; 11 L12*L29*RX_P
112 L12*L30*LY_R; 9 L12*L38*+OCF; 14 L12*RX_P*RY_P; 3 L14*L16*L27
48 L14*L17*L31; 21 L14*L17*LY_R; 147 L14*L25*L30; 5 L14*L27*DROP_OCQ_Y
31 L15*L17*L30; 5 L15*L21*L27; 7 L15*L25*L29; 6 L15*L29*C_OHD_Z
1 L16*L17*L23; 4 L16*L17*+OCF; 1 L17*L21*DROP_OHP_YZ; 3 L17*L25*C_OHD_Z
11 L17*L27*L30; 13 L17*L28*LY_R; 11 L17*L29*L38; 11 L17*L29*+OCF
2 L17*L35*L36; 34 L17*-OHD*DROP_OHP_YZ; 3 L17*RY_P*RY_P; 2 L18*L18*L31
12 L18*L27*+OCF; 48 L18*L30*L30; 3 L21*L26*L29; 10 L21*L27*DROP_OHP_YZ
1 L21*L29*L30; 1 L21*L29*L34; 1 L21*RX_P*RX_P; 3 L23*L27*LX_R
2 L23*L28*LY_R; 1 L23*RX_P*RX_P; 7 L24*L24*L38; 16 L24*L24*LY_R
73 L24*L27*L34; 1 L24*L28*LY_R; 11 L24*L29*LY_R; 7 L25*L25*L30
1 L26*L27*L37; 14 L26*L27*L38; 13 L26*L28*L38; 25 L27*L27*RX_P
7 L27*L27*DROP_OHQ_Z; 1 L27*L28*DROP_OHR_Z; 10 L27*L30*L34; 153 L27*L30*DROP_OHR_Z
153 L27*L30*LX_R; 15 L27*L30*LY_R; 1 L27*L32*L39; 11 L27*L33*DROP_OHP_YZ
25 L27*L34*RX_P; 5 L27*L36*DROP_OCQ_Y; 11 L27*+OCF*DROP_OHR_Z; 48 L27*DROP_OHP_YZ*LY_R
10 L27*RX_P*DROP_OHQ_Z; 4 L27*DROP_OCQ_Y*DROP_OHR_Z; 16 L27*LX_R*LX_R; 9 L28*L30*DROP_OCQ_Y
1 L28*L34*DROP_OCR_Y; 34 L28*DROP_OHP_YZ*RX_P; 7 L28*RX_P*LX_R; 37 L28*RX_P*LY_R
54 L29*L30*DROP_OHR_Z; 39 L29*L30*LY_R; 11 L29*L31*RX_P; 7 L29*L34*+OCF
11 L29*L36*RX_P; 6 L29*L36*LY_R; 7 L29*DROP_OCQ_Y*LY_R; 63 L29*LY_R*LY_R
16 L31*L34*DROP_OHR_Z; 1 L37*LY_R*LY_R; 24 RX_P*LY_R*LY_R; 4 KLOW*L35
10 FAN*L25; 4 CENT*L0; 42 +OYZ*L12; 6 -HYZ*L10
31 -HYZ*L16; 6 -HYZ*L35; 35 -HYZ*DROP_OHR_Z; 59 -HYZ*DROP_OCR_Y
41 -HYZ*LX_R; 25 -OHY*L17; 50 -OHY*L27; 53 -OHZ*L8
14 -OHZ*L14; 186 -OHZ*L30; 27 -OHZ*L35; 18 -OHZ*DROP_OHP_YZ
10 -OHZ*RX_P; 15 -OHZ*RY_P; 36 -OHZ*LX_R; 69 -OHZ*LY_R
2 -CDP*L11; 23 -CDP*L16; 41 -CDP*L30; 21 -CDP*L33
10 -CDP*RX_P; 24 -CDP*LY_R; 27 -CYP*L12; 2 -CYP*L19
49 -CYP*L30; 12 -CYP*-OHD; 13 -CYP*LY_R; 1 -OHQ*L29
1 +DFQ*L2; 5 +HZQ*L27; 5 +HFR*L2; 26 +HFR*L26
195 +HFR*L30; 9 +HFR*L32; 6 +HFR*-OHD; 50 +HFR*DROP_OHR_Z
49 +HFR*DROP_OCR_Y; 5 +DFR*L10; 14 -CZR*L27; 6 -FYR*L27
6 -CYZ*L30; 19 -CYZ*+OCF; 59 -CYZ*RX_P; 16 -CYZ*DROP_OCR_Y
4 -CYZ*LX_R; 1 -OYP*L0; 6 -OYP*L13; 20 -OYP*L33
1 -OZR*L5; 90 -OZR*L8; 110 -OZR*L30; 2 -OZR*L33
6 -OZR*-OHD; 11 -OZR*+OCF; 7 +HQR*L27; 59 -YZR*L27
48 -YZP*L12; 11 -FYZ*L17; 6 -FYZ*L27; 9 C_OHR_Z*L3
```

Upper bound: `-4376669193/5500000000`.

### Leaf RULmmpmp

Assumptions: `-CYZ -OYP +OYQ -OZQ +OZR`.

```c1bs-geometry
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOCZP -YZP
P YHCDZ +YDZ
P YHCFZ +YFZ
P ZOHQR +ZQR
C OYR Z Q -YRQ 509143/774400
C OZP Y Q +ZPQ 509143/774400
```

```c1bs-bounds
OCZ 7 279/880 Y
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 317/1000 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
12 L0*L0*L28; 1 L0*L1*RX_P; 7 L0*L3*L15; 8 L0*L4*L28
25 L0*L14*L17; 17 L0*L16*L29; 5 L0*L29*L31; 2 L1*L1*L4
44 L1*L1*L6; 27 L1*L1*L8; 21 L1*L1*L30; 86 L1*L1*DROP_OHP_YZ
129 L1*L2*L30; 17 L1*L3*L17; 28 L1*L3*L18; 42 L1*L3*-OHD
8 L1*L5*L18; 8 L1*L5*RY_P; 8 L1*L6*RX_P; 5 L1*L7*L39
39 L1*L8*L12; 27 L1*L8*L16; 2 L1*L8*L28; 23 L1*L8*L38
46 L1*L8*RX_P; 63 L1*L10*L24; 98 L1*L12*L27; 2 L1*L17*L38
5 L1*L18*DROP_OCR_YZ; 137 L1*L24*L26; 3 L1*L24*L33; 39 L1*L27*+OCF
1 L1*L28*L29; 34 L1*L29*-OHD; 38 L1*L29*LY_R; 44 L1*L30*L35
86 L1*L30*RX_P; 2 L1*L30*RY_P; 74 L2*L14*L17; 45 L2*L17*L33
2 L2*L18*L19; 27 L3*L3*L4; 20 L3*L3*L10; 8 L3*L3*L27
45 L3*L3*DROP_OHP_YZ; 27 L3*L4*L28; 8 L3*L7*L19; 45 L3*L8*L32
41 L3*L9*L9; 32 L3*L9*L10; 21 L3*L10*L14; 39 L3*L10*L27
28 L3*L10*L28; 2 L3*L11*L18; 24 L3*L12*L24; 4 L3*L12*L28
21 L3*L12*L33; 22 L3*L12*RX_P; 18 L3*L12*LY_R; 10 L3*L14*L14
5 L3*L14*RX_P; 55 L3*L16*L16; 106 L3*L17*L27; 8 L3*L18*L25
3 L3*L18*-OHD; 57 L3*L19*L27; 24 L3*L24*L30; 21 L3*L24*L32
106 L3*L27*DROP_OHP_YZ; 25 L3*L28*L32; 31 L3*L30*L38; 66 L3*LY_R*LY_R
27 L4*L4*L17; 28 L4*L17*L31; 7 L4*L27*L30; 2 L4*L27*LY_R
1 L4*L29*-OHD; 4 L5*L7*L9; 18 L5*L8*L10; 5 L5*L8*DROP_OHP_YZ
7 L5*L27*L32; 48 L6*L10*L27; 9 L6*L10*L30; 4 L6*L14*RX_P
4 L6*L25*L27; 2 L6*L27*L28; 1 L6*L27*L30; 48 L6*L27*L32
3 L7*L7*L14; 11 L7*L8*L12; 1 L7*L12*L29; 1 L7*L13*L29
3 L7*L14*LX_R; 8 L7*L17*L18; 4 L7*L17*L28; 4 L7*L24*LY_R
1 L7*L30*L30; 1 L7*L30*RX_P; 4 L7*RX_P*LY_R; 80 L8*L8*L17
69 L8*L10*L17; 10 L8*L10*L29; 142 L8*L10*L30; 37 L8*L13*L27
23 L8*L17*L17; 23 L8*L17*L31; 77 L8*L17*L39; 73 L8*L18*L30
4 L8*L18*L38; 19 L8*L18*LY_R; 26 L8*L27*L39; 4 L8*L28*L29
18 L8*L28*DROP_OHP_YZ; 1 L8*L29*L33; 18 L9*L10*L28; 36 L9*L17*L30
2 L9*L18*L28; 20 L9*L27*L38; 41 L9*L38*L38; 80 L10*L12*L17
30 L10*L12*L27; 102 L10*L12*L30; 10 L10*L12*L39; 21 L10*L13*L24
43 L10*L17*+OCF; 19 L10*L17*DROP_OCR_YZ; 4 L10*L18*L30; 25 L10*L24*L39
20 L10*L30*LY_R; 2 L11*L17*L28; 4 L11*LY_R*LY_R; 20 L12*L12*L17
9 L12*L14*L25; 96 L12*L14*RX_P; 23 L12*L16*L17; 1 L12*L17*LX_R
33 L12*L18*L30; 18 L12*L18*L35; 17 L12*L27*L30; 118 L12*L27*DROP_OCR_YZ
10 L12*L29*L38; 1 L12*L29*L39; 8 L12*L39*LY_R; 43 L13*L17*L27
23 L13*L17*L34; 107 L13*L27*LY_R; 50 L14*L17*L35; 112 L14*L17*DROP_OCR_YZ
34 L14*L24*RX_P; 49 L14*L30*LY_R; 39 L15*L17*L30; 118 L16*L27*L34
8 L17*L17*L19; 55 L17*L17*+OCF; 138 L17*L17*DROP_OHP_YZ; 2 L17*L18*L18
2 L17*L18*RY_P; 8 L17*L19*RX_P; 24 L17*L24*L31; 24 L17*L24*LY_R
1 L17*L25*L30; 24 L17*L25*+OCF; 29 L17*L25*DROP_OCR_YZ; 24 L17*L27*L30
21 L17*L27*LX_R; 23 L17*L30*RX_P; 27 L17*L32*L39; 138 L17*DROP_OHP_YZ*DROP_OHP_YZ
17 L17*LX_R*LY_R; 40 L17*LY_R*LY_R; 10 L18*L24*L27; 1 L18*L28*+OCF
8 L18*L29*RX_P; 2 L18*LY_R*LY_R; 10 L24*L27*L36; 10 L24*L27*RY_P
10 L24*L30*LY_R; 24 L24*L38*RX_P; 10 L24*L38*LY_R; 1 L25*L28*L29
7 L25*L28*RX_P; 8 L26*L26*L27; 96 L26*L29*LY_R; 40 L27*L27*DROP_OHP_YZ
61 L27*L27*LY_R; 24 L27*L28*RX_P; 10 L27*L31*LY_R; 4 L27*L32*DROP_OCR_YZ
1 L27*L35*LX_R; 5 L27*-OHD*RY_P; 29 L27*-OHD*LY_R; 64 L27*LY_R*LY_R
27 L28*L28*RX_P; 25 L28*L30*RX_P; 7 L28*L35*-OHD; 7 L28*L38*LY_R
72 L28*RX_P*LY_R; 5 L29*L29*LY_R; 1 L29*L30*L34; 1 L29*L30*L38
1 L29*L31*L36; 2 L29*L34*LY_R; 25 L29*DROP_OCR_YZ*DROP_OCR_YZ; 20 L30*L30*RX_P
1 L31*L31*L38; 29 L31*L38*L38; 6 L39*RX_P*LY_R; 2 RY_P*LY_R*LY_R
12 LY_R*LY_R*LY_R; 29 CENT*L11; 2 CENT*L28; 5 CENT*L33
2 CENT*RY_P; 10 QUADP*L27; 67 -HYZ*L9; 22 -HYZ*L12
22 -HYZ*L18; 36 -HYZ*-OHD; 62 -HYZ*+OCF; 117 -HYZ*DROP_OHP_YZ
85 -HYZ*LY_R; 68 +OCZ*L27; 4 +DFZ*L17; 2 -CDP*L18
7 -CDP*L25; 30 -CDP*L26; 21 -CDP*L30; 28 -CDP*+OCF
18 -CDP*LY_R; 83 -CYP*L3; 2 -CYP*L4; 41 -CYP*L8
2 -CYP*L15; 1 -CYP*L25; 19 -CYP*L26; 30 -CYP*L30
63 -CYP*+OCF; 126 +HFR*L26; 2 +HFR*L28; 5 +HFR*L29
4 +HFR*L33; 6 +HFR*L34; 34 +HFR*-OHD; 45 -CYR*L27
26 +HZR*L1; 2 +HZR*L4; 92 +HZR*L14; 1 +HZR*L30
14 +HZR*L32; 8 +HZR*L33; 38 +HZR*-OHD; 66 +HZR*DROP_OCR_YZ
3 -CZR*L29; 5 -FZR*L27; 10 -DZR*L27; 106 -CYZ*L8
91 -CYZ*L12; 10 -CYZ*L14; 51 -CYZ*L23; 46 -CYZ*L24
44 -CYZ*+OCF; 163 -CYZ*DROP_OHP_YZ; 51 -CYZ*DROP_OCQ_Y; 64 -CYZ*DROP_OCR_YZ
72 -OYP*L2; 1 -OYP*L24; 123 -OYP*L30; 125 -OYP*L31
20 -OYP*L39; 30 -OYP*+OCF; 40 +OZR*L3; 15 +OZR*L4
71 +OZR*L27; 13 +OZR*L28; 47 +OZR*L31; 86 +OZR*L32
36 +OZR*L34; 73 +OZR*DROP_OHP_YZ; 40 C_OCZ_Y*L3; 24 C_OYR_Z*L17
84 C_OZP_Y*L3; 67 Q_OYRH_Z*L1; 74 Q_OYRH_Z*L14; 55 Q_OYRH_Z*L27
8 Q_OCPZ_Y*L1; 82 Q_OCPZ_Y*L8; 33 Q_OCPZ_Y*L30
```

Upper bound: `-79445437089/96800000000`.

### Leaf RULmmpp

Assumptions: `-CYZ -OYP +OYQ +OZQ`.

```c1bs-geometry
C OCQ YZ P -CQP 9977/12500
P OHZQR +OZR
P HODPR +HPR
P HOFQR +HQR
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOCZP -YZP
P YHCDZ +YDZ
P YHCFZ +YFZ
P ZOHPQ +ZPQ
C OYR Z Q -YRQ 509143/774400
P QOYZR -QZR
```

```c1bs-bounds
OCZ 7 279/880 Y
OCQ 11 347/440 YZ
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 317/1000 669/1000
p 447/500 1
q 21/200 11/25
l 21/200 907/1000
m 197/250 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
8 L0*L1*L2; 7 L0*L3*L12; 5 L0*L9*L36; 5 L0*L10*L25
8 L0*L13*L27; 6 L0*L17*L27; 2 L0*L24*L27; 2 L0*L26*L28
8 L0*L27*L31; 1 L0*L30*L30; 5 L0*L30*RX_P; 4 L0*RX_P*RX_P
1 L1*L5*L20; 10 L1*L12*L22; 8 L1*L12*L26; 22 L1*L16*L30
4 L1*L16*RX_P; 5 L1*L17*L32; 1 L1*L18*L37; 8 L1*L21*L30
1 L1*L22*LY_R; 2 L1*L23*L35; 3 L1*L24*L37; 16 L1*L24*DROP_OHP_YZ
4 L1*L28*RX_P; 15 L1*L30*L37; 5 L1*L30*DROP_OCR_YZ; 4 L1*L31*L33
2 L1*L34*RX_P; 7 L1*RX_P*DROP_OCR_YZ; 2 L1*DROP_OCQ_YZ*DROP_OCR_YZ; 4 L2*L3*LY_R
22 L2*L16*L27; 5 L2*L17*L21; 1 L2*L18*L23; 3 L2*L35*LY_R
4 L2*LY_R*LY_R; 7 L3*L3*DROP_OCQ_YZ; 2 L3*L4*L28; 1 L3*L4*LY_R
2 L3*L6*DROP_OCQ_YZ; 2 L3*L7*L24; 2 L3*L7*L25; 4 L3*L8*RX_P
2 L3*L10*L18; 2 L3*L12*L14; 3 L3*L12*L30; 1 L3*L12*+OCF
1 L3*L13*DROP_OCR_YZ; 1 L3*L14*L34; 4 L3*L14*-OHD; 19 L3*L14*DROP_OCQ_YZ
13 L3*L16*DROP_OHP_YZ; 6 L3*L18*L37; 2 L3*L19*DROP_OHP_YZ; 9 L3*L22*L27
7 L3*L22*L31; 5 L3*L23*L35; 3 L3*L26*L38; 4 L3*L27*L27
25 L3*L27*DROP_OHP_YZ; 10 L3*L28*DROP_OCQ_YZ; 4 L3*RX_P*LY_R; 1 L4*L5*L22
2 L4*L6*L27; 1 L4*L6*LY_R; 1 L4*L8*L38; 2 L4*L9*L39
1 L4*L14*RX_P; 1 L4*L17*L18; 2 L4*L17*RY_P; 1 L4*L21*L27
1 L4*L23*L28; 3 L4*L23*L29; 1 L5*L10*RX_P; 1 L5*L12*L16
1 L5*L17*L34; 2 L5*L22*L24; 2 L5*L23*L35; 1 L5*L26*DROP_OCQ_YZ
1 L5*L30*L35; 1 L5*L30*RX_P; 1 L5*L35*RX_P; 1 L6*L18*L23
2 L6*L23*L25; 2 L6*L27*RX_P; 1 L7*L8*DROP_OCR_YZ; 1 L7*L9*LY_R
2 L7*L14*L23; 4 L7*L22*L24; 4 L7*L23*L27; 17 L8*L12*L17
1 L8*L13*L18; 17 L8*L14*RX_P; 10 L8*L17*L18; 16 L8*L17*RX_P
6 L8*L18*L30; 1 L8*L18*L39; 2 L8*L38*LY_R; 1 L9*L9*LY_R
1 L9*L10*L15; 6 L9*L15*L22; 2 L9*L18*L18; 9 L9*L22*L39
1 L9*L29*DROP_OCQ_YZ; 2 L9*L39*L39; 1 L10*L12*L13; 3 L10*L12*L17
10 L10*L12*L30; 4 L10*L12*L31; 7 L10*L13*L37; 1 L10*L15*L27
1 L10*L16*L30; 3 L10*L20*L27; 6 L10*L22*L31; 4 L10*L23*L24
18 L10*L30*L37; 8 L10*L30*RX_P; 6 L10*L30*DROP_OCQ_YZ; 18 L10*L31*L37
14 L10*L31*RX_P; 2 L10*L32*L39; 14 L11*L13*L17; 3 L12*L12*L17
1 L12*L12*L19; 1 L12*L12*L23; 1 L12*L12*LY_R; 1 L12*L16*L27
13 L12*L17*L17; 1 L12*L18*L31; 2 L12*L20*L23; 7 L12*L22*LY_R
1 L12*L23*DROP_OCQ_YZ; 1 L12*L27*L28; 1 L12*L27*L37; 1 L12*L34*L38
3 L13*L14*L27; 1 L13*L23*L23; 1 L13*L27*L31; 2 L13*L27*RX_P
2 L14*L16*L39; 2 L14*L17*L34; 2 L14*L19*L37; 19 L14*L20*RX_P
19 L14*L23*RX_P; 3 L14*L26*L30; 1 L14*L27*L38; 4 L14*L30*L37
2 L14*L35*LY_R; 7 L14*RX_P*RX_P; 21 L14*RX_P*DROP_OCQ_YZ; 2 L15*L26*L28
6 L16*L17*L38; 4 L16*L17*DROP_OCQ_YZ; 4 L16*L20*RX_P; 20 L16*L30*RX_P
17 L16*L31*L39; 13 L17*L17*+OCF; 2 L17*L18*L26; 1 L17*L18*L30
7 L17*L18*L37; 5 L17*L20*DROP_OHP_YZ; 16 L17*L20*LY_R; 7 L17*L22*RY_P
19 L17*L23*L33; 11 L17*L23*RX_P; 6 L17*L24*DROP_OCR_YZ; 6 L17*L29*DROP_OCQ_YZ
7 L17*L30*DROP_OHP_YZ; 6 L17*DROP_OCR_YZ*LX_R; 2 L18*L26*RX_P; 9 L18*L30*RX_P
4 L20*L25*L27; 3 L20*L27*L37; 4 L20*L28*RX_P; 1 L20*DROP_OHP_YZ*RX_P
2 L21*L26*RX_P; 6 L21*L27*DROP_OHP_YZ; 1 L21*DROP_OCQ_YZ*LY_R; 4 L22*L30*L39
21 L23*L23*L27; 21 L23*L27*DROP_OCQ_YZ; 2 L23*L28*L30; 1 L23*L28*-OHD
2 L23*L29*L34; 2 L23*L29*DROP_OHP_YZ; 4 L23*LX_R*LY_R; 1 L24*L26*L28
1 L24*L26*LY_R; 4 L24*L27*L37; 4 L24*L27*RX_P; 4 L24*RX_P*LY_R
2 L25*L29*DROP_OCQ_YZ; 1 L25*LY_R*LY_R; 4 L27*L27*L37; 1 L27*L28*L29
2 L27*L28*L34; 1 L27*L28*L37; 1 L27*L30*L30; 2 L27*L30*L38
4 L27*L37*LY_R; 3 L28*L28*RX_P; 1 L28*L31*L39; 2 L28*RX_P*LY_R
7 L30*DROP_OCQ_YZ*LY_R; 2 L31*L31*L39; 3 L33*L39*RX_P; 2 L36*L38*L38
4 L38*RX_P*RX_P; 2 +HCF*L27; 1 +OYZ*L14; 17 -HYZ*L16
24 -HYZ*L23; 7 -HYZ*L37; 2 -HYZ*L38; 11 -HYZ*-OHD
29 -HYZ*DROP_OCQ_YZ; 11 -HYZ*LY_R; 2 -OHY*L3; 10 -OHZ*L27
1 -HCZ*L10; 2 -CDP*L5; 3 -CDP*L21; 7 -CDP*L37
1 -CDP*RY_P; 2 -CDP*LY_R; 1 -CFP*L1; 9 -CYP*L3
8 -CYP*L8; 9 -CYP*L13; 2 -CYP*L17; 2 -CYP*L19
2 -CYP*-OHD; 3 -OHQ*L27; 9 +HCQ*L27; 1 -HFQ*L8
1 -HFQ*L26; 1 -HFQ*RY_P; 5 +HZQ*L10; 16 +HZQ*L27
9 +HFR*L22; 1 +HDR*L14; 13 +OQR*L0; 9 -CYZ*L3
1 -CYZ*L9; 11 -CYZ*L12; 1 -CYZ*L34; 19 -CYZ*L37
7 -CYZ*-OHD; 35 -CYZ*DROP_OHP_YZ; 18 -OYP*L30; 20 -OYP*L31
2 -OYP*-OHD; 2 +OZQ*L4; 6 +OZQ*L9; 3 +OZQ*L13
21 +OZQ*L16; 1 +OZQ*L24; 9 +OZQ*L32; 2 +OZQ*L37
8 +OZQ*-OHD; 11 +OZQ*LY_R; 1 +OZR*L28; 23 +HQR*L1
8 +HQR*L8; 16 +HQR*L16; 8 +HQR*L35; 3 +HQR*L37
24 +HQR*-OHD; 4 +HQR*RX_P; 1 +HQR*DROP_OCQ_YZ; 2 -FQR*L4
6 -FQR*L16; 2 -FQR*RX_P; 9 -YZQ*L27; 5 -YZR*DROP_OCQ_YZ
13 +YQR*L0; 6 C_OCZ_Y*L30; 6 C_OZP_Y*L8; 7 C_OZP_Y*L17
7 C_OPQ_YZ*L17; 2 C_OPQ_YZ*L39; 2 Q_OYQH_Z*L27; 1 Q_OCDR_YZ*L27
10 Q_OCPZ_Y*L8; 2 Q_OCPZ_Y*L20; 1 Q_OCPZ_Y*L30; 1 Q_OYQR_Z*L12
4 Q_OYQR_Z*L14
```

Upper bound: `-67175141523/242000000000`.

### Leaf RULmp

Assumptions: `-CYZ +OYP`.

```c1bs-geometry
P OHDYP -ODY
P OHFYP -OFY
P OHYPQ +OYQ
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHDZ +YDZ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P POCYQ -PYQ
```

```c1bs-bounds
OCZ 7 279/880 Y
OCP 9 279/880 Y
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 317/1000 669/1000
p 447/500 1
q 317/1000 11/25
l 21/200 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
24 L0*L1*L7; 12 L0*L1*L12; 72 L0*L1*L29; 8 L0*L3*L29
1 L0*L7*L22; 10 L0*L12*L25; 17 L0*L12*L27; 87 L0*L16*L27
102 L0*L17*L18; 9 L0*L17*L20; 46 L0*L17*L24; 17 L0*L28*+OCF
2 L0*L29*L37; 13 L0*L29*-OHD; 12 L1*L1*L8; 26 L1*L3*L8
39 L1*L3*L24; 79 L1*L3*DROP_OCP_Y; 32 L1*L6*L10; 24 L1*L8*L27
20 L1*L8*L29; 73 L1*L8*L31; 25 L1*L10*L14; 10 L1*L15*RX_P
10 L1*L17*L39; 35 L1*L19*L19; 30 L1*L19*L31; 4 L1*L24*L24
5 L1*L24*L28; 3 L1*L24*L29; 26 L1*L24*L30; 71 L1*L25*L27
73 L1*L26*L27; 40 L1*L27*+OCF; 129 L1*L30*RX_P; 80 L1*RX_P*RX_P
46 L2*L3*L27; 77 L2*L4*L27; 2 L2*L4*L29; 214 L2*L8*L19
55 L2*L14*L17; 9 L2*L15*RX_P; 2 L2*L16*L23; 86 L2*L16*L27
1 L2*L19*L23; 21 L2*L19*L26; 15 L2*L19*LX_R; 9 L2*L23*L27
8 L3*L4*L28; 5 L3*L5*L24; 60 L3*L5*L30; 23 L3*L10*L14
44 L3*L12*L12; 18 L3*L15*L27; 42 L3*L17*DROP_OCP_Y; 77 L3*L27*RY_P
42 L3*L28*RX_P; 12 L3*L39*LY_R; 7 L4*L7*L10; 7 L4*L10*L30
7 L4*L10*L31; 23 L4*L12*L28; 11 L4*L12*L38; 8 L4*L17*RY_P
14 L4*L24*LY_R; 2 L4*L29*RY_P; 3 L5*L7*L17; 9 L5*L10*L10
2 L5*L29*L37; 28 L6*L10*RX_P; 3 L6*L13*L27; 9 L6*L27*L32
14 L6*L27*RY_P; 8 L7*L9*L27; 20 L7*L17*L34; 94 L7*L17*LY_R
15 L7*L18*L18; 14 L7*L18*LY_R; 1 L7*L23*L28; 9 L7*L28*L34
79 L8*L8*L17; 95 L8*L8*L19; 15 L8*L12*L28; 34 L8*L13*L17
28 L8*L14*L19; 23 L8*L17*L33; 45 L8*L17*L39; 79 L8*L17*RX_P
41 L8*L17*DROP_OCR_Y; 18 L8*L27*L28; 13 L8*L27*C_OCF_Y; 26 L8*L28*L33
30 L8*L28*DROP_OCP_Y; 44 L9*L12*L13; 18 L9*L14*L28; 4 L9*L34*L36
9 L10*L11*L28; 37 L10*L16*L29; 31 L10*L18*L28; 15 L10*L19*L29
25 L10*L19*DROP_OHP_Z; 31 L10*L27*L29; 180 L10*L30*RX_P; 8 L10*L35*RX_P
12 L10*L39*DROP_OHP_Z; 23 L11*L17*L19; 3 L11*L17*L23; 30 L11*L17*L25
31 L11*L28*DROP_OCP_Y; 6 L12*L12*L27; 31 L12*L14*L27; 49 L12*L16*L19
40 L12*L17*LY_R; 66 L12*L19*RX_P; 6 L12*L27*L30; 33 L12*L27*DROP_OCP_Y
3 L12*L27*DROP_OCQ_Y; 23 L12*L28*L28; 25 L12*L28*L29; 103 L12*L28*RX_P
16 L12*L29*DROP_OCP_Y; 25 L12*L29*RY_P; 4 L12*L30*L32; 15 L12*L31*L32
1 L12*DROP_OCR_Y*LX_R; 40 L14*L17*L25; 12 L14*L17*L29; 39 L14*L17*L38
35 L14*L19*L19; 10 L14*L24*LY_R; 18 L14*L28*L29; 10 L14*L29*-OHD
6 L14*L29*LY_R; 1 L15*L31*L31; 35 L16*L16*L28; 12 L16*L17*L27
45 L16*L28*RX_P; 3 L16*L28*DROP_OCQ_Y; 102 L17*L17*L30; 13 L17*L17*DROP_OCP_Y
13 L17*L17*RY_P; 2 L17*L17*DROP_OCQ_Y; 12 L17*L18*L24; 36 L17*L18*L33
2 L17*L19*L21; 9 L17*L20*LY_R; 18 L17*L22*L26; 4 L17*L23*DROP_OCP_Y
4 L17*L23*RY_P; 41 L17*L26*DROP_OCR_Y; 9 L17*L27*L37; 102 L17*L30*L31
23 L17*L30*RX_P; 23 L17*L31*L35; 61 L17*L31*LY_R; 3 L17*L32*DROP_OCQ_Y
79 L17*L39*RX_P; 15 L17*-OHD*DROP_OCR_Y; 117 L17*DROP_OCP_Y*DROP_OCP_Y; 8 L17*LY_R*LY_R
38 L18*L18*L31; 35 L18*L18*L34; 117 L18*L18*RX_P; 22 L18*L38*RX_P
109 L19*L19*L30; 2 L19*L22*L26; 12 L19*L27*L31; 15 L19*L29*L35
1 L19*L29*DROP_OCQ_Y; 54 L19*L30*L30; 2 L20*L28*DROP_OCR_Y; 3 L21*L27*L36
2 L21*L28*L29; 3 L23*L27*L34; 9 L23*L27*RX_P; 3 L24*L24*L27
3 L24*L24*L28; 3 L24*L27*LX_R; 9 L25*L28*L34; 48 L27*L27*L29
48 L27*L27*RX_P; 2 L27*L28*L37; 30 L27*L32*+OCF; 10 L27*L34*LX_R
3 L27*L37*L39; 1 L27*L38*C_OCF_Y; 73 L27*-OHD*DROP_OCR_Y; 2 L27*RY_P*DROP_OCQ_Y
3 L28*L28*L31; 8 L28*L28*RX_P; 14 L28*L29*DROP_OCP_Y; 170 L28*L30*RX_P
102 L28*DROP_OCP_Y*RX_P; 87 L28*RX_P*DROP_OCR_Y; 12 L29*L30*DROP_OCR_Y; 88 L29*DROP_OHP_Z*LY_R
46 L29*RX_P*LY_R; 44 L31*L39*L39; 12 L34*L34*L38; 9 L34*L38*L38
47 KLOW*L0; 8 KLOW*L17; 18 KLOW*L19; 26 KLOW*RY_P
9 KLOW*LX_R; 19 -HYZ*L11; 82 -HYZ*L31; 17 -HYZ*L36
20 -HYZ*DROP_OHP_Z; 10 -OHY*L28; 21 +OCY*L5; 1 +OCY*L6
50 +OCY*L13; 110 +OCY*L17; 244 +OCY*L30; 11 +OCY*L32
21 +OCY*L39; 41 +OCY*DROP_OHP_Z; 67 +OCY*RX_P; 52 +OCY*RY_P
27 +OCY*LX_R; 7 -HFY*L28; 3 +CDY*L28; 53 -OHZ*L17
44 -OHZ*L31; 12 -OHZ*L38; 13 -HCZ*L12; 204 -CDP*L8
30 -CDP*L10; 66 -CDP*L13; 87 -CDP*L16; 59 -CDP*-OHD
79 -CDP*DROP_OCP_Y; 44 -CDP*DROP_OCR_Y; 15 -CDP*LX_R; 43 -CDP*LY_R
15 +DFP*L18; 1 +DFP*L23; 8 -CYP*L28; 8 +HZP*L29
79 -CZP*L17; 2 +CDQ*L28; 2 +DFQ*L28; 78 -OHR*L1
37 +HFR*L0; 17 +HFR*L12; 20 +HFR*L30; 40 +HFR*L32
13 +HFR*L36; 4 +HFR*-OHD; 30 +HFR*RX_P; 62 +HFR*DROP_OCR_Y
5 +DFR*L3; 9 +DFR*L14; 3 +DFR*L24; 14 +DFR*L27
11 +DFR*RX_P; 3 +HDR*L17; 3 +HDR*L29; 11 +HZR*L0
6 +HZR*L8; 31 +HZR*L14; 1 +HZR*L24; 20 +HZR*DROP_OHP_Z
72 -CYZ*L8; 44 -CYZ*L15; 6 -CYZ*L25; 76 -CYZ*L33
18 -CYZ*DROP_OCP_Y; 84 -CYZ*RX_P; 18 -CYZ*RY_P; 26 +OYP*L3
41 +OYP*L8; 28 +OYP*L14; 49 +OYP*L19; 5 +OYP*L24
12 +OYP*L26; 107 +OYP*L30; 8 +OYP*L32; 22 +OYP*DROP_OHP_Z
22 +OYP*RY_P; 15 +OYP*LX_R; 18 -ODY*L27; 2 +CPQ*L17
12 +CPR*L17; 6 -YZR*L1; 20 -YZR*L17; 34 Q_OYDH_Z*L17
20 Q_OPDH_Z*L17; 23 Q_OYFH_Z*L17
```

Upper bound: `-145267881029/484000000000`.

### Leaf RULpmmm

Assumptions: `+CYZ -OYP -OYQ -OZR`.

```c1bs-geometry
P OHDZR +ODZ
P OHFZR +OFZ
P OHYZQ -OZQ
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHZR -YZR
P YOHQR +YQR
P QOHZR -QZR
```

```c1bs-bounds
OHQ 10 347/440 YZ
OHR 12 279/880 Z
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 197/250 907/1000
m 21/200 907/1000
r 317/1000 11/25
t 447/500 1
```

```c1bs-sum
1 L0*L0*L38; 2 L0*L5*L21; 2 L0*L10*L25; 3 L0*L14*L25
69 L0*L16*L25; 4 L0*L20*LY_R; 1 L0*L21*L22; 1 L0*L21*L38
1 L0*L22*L25; 28 L0*L24*RX_P; 9 L0*L25*L37; 4 L0*L25*-OHD
33 L0*L25*DROP_OCR_Y; 3 L0*L26*L28; 7 L0*L26*L30; 1 L0*L30*LX_R
1 L0*L35*LY_R; 11 L1*L2*L12; 1 L1*L2*L28; 7 L1*L3*L30
1 L1*L3*L37; 7 L1*L3*+OCF; 16 L1*L7*L26; 26 L1*L7*DROP_OHR_Z
2 L1*L8*DROP_OHP_YZ; 21 L1*L13*L27; 1 L1*L23*DROP_OHQ_YZ; 20 L1*L24*L24
1 L1*L25*L30; 3 L1*L27*L36; 24 L1*L27*DROP_OHP_YZ; 56 L1*L27*DROP_OHR_Z
17 L1*L29*DROP_OHP_YZ; 18 L1*L29*RX_P; 21 L1*RX_P*RX_P; 3 L2*L3*L5
12 L2*L3*L9; 15 L2*L3*L26; 20 L2*L7*L16; 5 L2*L8*L27
4 L2*L12*L23; 16 L2*L17*L21; 1 L2*L21*L29; 2 L2*L25*L30
15 L2*L27*RX_P; 17 L2*L29*L36; 12 L2*L29*LY_R; 4 L3*L3*L21
5 L3*L3*L37; 15 L3*L6*L8; 15 L3*L6*L17; 1 L3*L8*+OCF
1 L3*L9*L32; 9 L3*L9*DROP_OCR_Y; 1 L3*L10*L31; 2 L3*L11*LX_R
9 L3*L16*L18; 9 L3*L17*DROP_OHP_YZ; 2 L3*L18*RX_P; 12 L3*L21*DROP_OCR_Y
4 L3*L23*DROP_OHR_Z; 1 L3*L24*L28; 27 L3*L25*L27; 17 L3*L29*L30
10 L3*L31*LY_R; 5 L3*L33*L38; 4 L3*L37*L39; 4 L3*L37*DROP_OHR_Z
11 L3*DROP_OHP_YZ*DROP_OHQ_YZ; 4 L3*DROP_OHQ_YZ*DROP_OHR_Z; 23 L3*DROP_OHR_Z*DROP_OHR_Z; 1 L4*L7*L8
1 L4*L14*L25; 2 L4*L17*+OCF; 1 L4*L20*L32; 2 L4*L24*L27
2 L4*L29*LY_R; 2 L5*L7*LY_R; 3 L5*L14*L27; 4 L5*L16*DROP_OHP_YZ
2 L6*L7*L10; 2 L6*L7*L12; 4 L6*L7*L16; 1 L7*L8*DROP_OHQ_YZ
3 L7*L12*L30; 2 L7*L13*L36; 5 L7*L25*L28; 2 L7*L30*DROP_OHR_Z
2 L7*L30*LX_R; 1 L7*L31*L37; 11 L7*L33*LY_R; 14 L7*DROP_OCR_Y*LY_R
11 L8*L17*L39; 1 L8*L21*L23; 14 L8*L26*RX_P; 1 L10*L17*L22
1 L11*L16*L23; 1 L11*L21*L26; 1 L11*L27*-OHD; 2 L11*DROP_OHR_Z*LY_R
1 L12*L16*L28; 5 L12*L16*L30; 5 L12*L17*L37; 1 L12*L19*L24
3 L12*L20*RX_P; 1 L12*L21*LX_R; 2 L12*L22*L29; 8 L12*L26*L36
12 L12*L27*DROP_OHR_Z; 5 L12*L34*RX_P; 11 L12*L38*DROP_OHP_YZ; 1 L13*L13*L29
2 L13*L14*L27; 6 L13*L25*RX_P; 27 L13*L27*L31; 1 L13*L29*L37
3 L14*L20*L28; 5 L14*L20*RX_P; 5 L14*L22*L25; 4 L14*L25*L37
6 L14*L27*L30; 1 L15*L29*L31; 2 L16*L17*L23; 13 L16*L17*L29
1 L16*L21*L29; 1 L16*L23*RX_P; 2 L16*L25*L35; 13 L16*L29*RX_P
2 L17*L17*L34; 18 L17*L21*L27; 1 L17*L22*DROP_OHP_YZ; 6 L17*L25*L36
3 L17*L26*DROP_OHQ_YZ; 34 L17*L27*L29; 14 L17*L27*RX_P; 4 L17*L29*L37
2 L17*L29*RY_P; 9 L17*+OCF*RX_P; 6 L17*+OCF*LY_R; 14 L17*DROP_OHP_YZ*LY_R
5 L17*DROP_OHQ_YZ*LX_R; 5 L20*L25*RX_P; 8 L20*RX_P*LY_R; 3 L21*L25*L33
13 L21*L27*RX_P; 2 L22*L24*L27; 1 L22*L27*L30; 4 L22*L29*DROP_OHP_YZ
9 L22*L29*LY_R; 1 L23*L25*-OHD; 23 L24*L24*L29; 2 L24*L29*L38
7 L24*L34*RX_P; 5 L25*L25*L27; 23 L25*L25*DROP_OHR_Z; 23 L25*L25*LX_R
47 L25*L27*LY_R; 12 L25*L34*DROP_OHR_Z; 27 L26*L29*DROP_OHR_Z; 3 L27*L28*L34
1 L27*L29*+OCF; 1 L27*L29*C_OHD_Z; 14 L27*L30*DROP_OHP_YZ; 17 L27*L33*-OHD
24 L27*-OHD*DROP_OHP_YZ; 47 L27*DROP_OHR_Z*DROP_OCR_Y; 5 L27*DROP_OHR_Z*LX_R; 3 L28*L34*DROP_OHQ_YZ
1 L28*L38*DROP_OHQ_YZ; 6 L28*RX_P*RX_P; 4 L29*L29*DROP_OHP_YZ; 2 L29*L38*LX_R
9 L29*DROP_OHQ_YZ*LY_R; 1 L29*LY_R*LY_R; 5 L30*L36*RX_P; 5 L31*L34*RX_P
2 L38*RX_P*DROP_OHR_Z; 4 CENT*L3; 1 CENT*L7; 1 -OHC*L3
11 -HYZ*DROP_OHP_YZ; 4 -OHY*L17; 6 -HCY*DROP_OCR_Y; 5 -OHZ*-OHD
10 -OHZ*+OCF; 8 -OHZ*DROP_OCR_Y; 28 -OHZ*LX_R; 16 -OHZ*LY_R
20 +OCZ*L25; 2 +DFZ*RX_P; 10 -CDP*DROP_OHP_YZ; 2 +FZP*L17
1 +DFQ*L10; 1 +DFQ*L35; 2 +DFQ*+OCF; 5 -CZQ*L17
1 -CZQ*L29; 25 +HFR*L26; 9 +HFR*L37; 4 +HFR*-OHD
22 +HFR*+OCF; 34 +HFR*DROP_OHP_YZ; 31 +HFR*DROP_OHR_Z; 13 +HFR*DROP_OCR_Y
2 +CDR*L27; 4 -CZR*L27; 4 -DZR*L3; 5 -DZR*L29
1 -FPR*L12; 2 +OYR*L27; 1 +CYZ*L6; 6 +CYZ*DROP_OCR_Y
1 -OYQ*L27; 5 -OZR*L1; 8 -OZR*L6; 1 -OZR*L18
9 -OZR*L22; 8 -OZR*-OHD; 25 -OZR*+OCF; 13 -OZR*DROP_OHP_YZ
1 -OZR*RY_P; 12 -OZR*DROP_OCR_Y; 12 -OZR*LX_R; 1 +ODZ*L27
14 +OFZ*L25; 5 +CPQ*+OCF; 2 -DPQ*L2; 1 C_OHQ_YZ*L34
1 C_OHQ_YZ*DROP_OCR_Y; 2 C_OQR_Y*L27; 2 C_HCZ_Y*L3; 1 C_HCZ_Y*L4
17 C_HCZ_Y*L6; 1 C_HCZ_Y*L8; 4 C_HCZ_Y*L22; 14 C_HCZ_Y*DROP_OHR_Z
15 C_HCZ_Y*DROP_OCR_Y; 14 Q_OFRH_Z*L27; 7 Q_HZCP_Y*L3; 9 Q_HZCQ_Y*L27
8 Q_CFRZ_Y*L27
```

Upper bound: `-5368465689/5500000000`.

### Leaf RULpmmp

Assumptions: `+CYZ -OYP -OYQ +OZR`.

```c1bs-geometry
P OHYZQ -OZQ
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHZR -YZR
P YOHQR +YQR
P ZOHQR +ZQR
```

```c1bs-bounds
OHQ 10 347/440 YZ
```

```c1bs-box
h 3943/5000 22/25
c 3943/5000 22/25
d 5579/10000 22/25
f 5579/10000 22/25
u 317/1000 6687/10000
v 66/625 4573/10000
z 66/625 4573/10000
w 66/625 6687/10000
p 8943/10000 1
q 66/625 11/25
l 3943/5000 907/1000
m 66/625 907/1000
r 66/625 11/25
t 8943/10000 1
```

```c1bs-sum
283 L0*L1*L12; 221 L0*L2*L17; 5 L0*L5*L5; 99 L0*L6*L28
88 L0*L9*L27; 179 L0*L17*L23; 249 L0*L17*-OHD; 99 L0*L27*L29
21 L0*L27*LY_R; 5 L0*L28*-OHD; 1602 L0*L30*L30; 5 L1*L1*L1
987 L1*L1*L24; 499 L1*L1*L30; 258 L1*L1*RX_P; 55 L1*L2*L8
143 L1*L2*L30; 1153 L1*L3*L18; 775 L1*L3*L24; 16 L1*L3*L39
241 L1*L3*LY_R; 68 L1*L5*L13; 73 L1*L5*L20; 94 L1*L8*L28
50 L1*L10*L20; 254 L1*L10*L30; 608 L1*L11*L29; 1602 L1*L12*L12
100 L1*L12*L19; 73 L1*L12*L32; 137 L1*L12*L34; 812 L1*L12*L38
333 L1*L14*L29; 1631 L1*L17*L29; 68 L1*L17*DROP_OCR_YZ; 1119 L1*L18*L20
886 L1*L18*L24; 1134 L1*L18*L29; 3 L1*L18*L30; 5 L1*L19*L28
349 L1*L20*LY_R; 18 L1*L23*L24; 372 L1*L24*L27; 757 L1*L24*L29
932 L1*L24*L30; 21 L1*L28*DROP_OCR_YZ; 1023 L1*L29*L30; 290 L1*L29*L38
1843 L1*L29*RX_P; 62 L1*L38*RX_P; 1635 L2*L2*L19; 209 L2*L5*L21
59 L2*L10*L29; 44 L2*L14*L19; 1031 L2*L17*L19; 1424 L2*L17*L37
58 L2*L17*L38; 72 L2*L17*DROP_OCR_YZ; 620 L2*L19*L19; 472 L2*L19*L29
235 L2*L24*L32; 51 L2*L29*L34; 60 L2*L30*L30; 850 L3*L3*L11
58 L3*L3*L17; 430 L3*L3*L32; 201 L3*L4*L17; 26 L3*L5*L10
631 L3*L5*L18; 63 L3*L5*L28; 242 L3*L7*L28; 148 L3*L8*L10
1251 L3*L8*L18; 1358 L3*L8*L20; 840 L3*L10*L17; 76 L3*L10*L30
25 L3*L11*L18; 60 L3*L12*L38; 116 L3*L14*L38; 125 L3*L15*L20
1424 L3*L17*L20; 58 L3*L17*L31; 215 L3*L17*L36; 1349 L3*L18*L18
302 L3*L18*L24; 774 L3*L18*L30; 1012 L3*L19*L27; 833 L3*L20*L28
1358 L3*L20*L38; 155 L3*L24*L27; 2598 L3*L27*L27; 1911 L3*L27*L30
171 L3*L27*L38; 505 L3*L27*RX_P; 547 L3*L28*L29; 1001 L3*L28*L30
60 L3*L30*L39; 590 L4*L12*L17; 484 L4*L17*L17; 737 L4*L17*L18
1343 L4*L17*L30; 68 L4*L17*LY_R; 496 L4*L20*L29; 21 L4*L27*L34
177 L4*L29*L29; 113 L5*L8*L29; 49 L5*L16*L28; 1233 L5*L17*L21
198 L5*L18*L24; 148 L5*L20*L30; 34 L5*L20*L38; 54 L5*L22*L29
64 L5*L28*L29; 28 L5*L28*RX_P; 507 L6*L6*L17; 158 L6*L7*L28
460 L6*L17*L22; 1114 L6*L17*L27; 507 L6*L17*L29; 170 L6*L18*L27
1259 L6*L27*L30; 518 L6*L27*L38; 1114 L6*L27*RX_P; 380 L7*L10*L27
36 L7*L13*L28; 507 L7*L17*+OCF; 152 L7*L18*L28; 36 L7*L22*L28
158 L7*L27*LX_R; 212 L7*L28*DROP_OHP_YZ; 215 L8*L17*L17; 1380 L8*L17*L21
276 L8*L23*L27; 14 L8*L23*L28; 679 L8*L27*L30; 641 L9*L12*L27
129 L9*L17*L35; 129 L10*L10*L17; 186 L10*L17*L31; 1385 L10*L17*DROP_OHQ_YZ
78 L10*L20*L29; 610 L10*L20*L30; 679 L10*L24*L30; 62 L10*L27*RX_P
610 L11*L12*L20; 456 L11*L17*RX_P; 70 L11*L20*L24; 148 L11*L20*L38
48 L11*L21*L28; 8 L11*L28*L36; 215 L12*L17*RX_P; 1407 L12*L17*DROP_OHQ_YZ
495 L12*L17*DROP_OCR_YZ; 691 L12*L21*L27; 641 L12*L24*L34; 229 L12*L27*L28
641 L12*L27*L30; 415 L12*L27*L37; 29 L12*L27*LX_R; 257 L13*L14*L17
13 L13*L17*L22; 127 L13*L20*L28; 206 L14*L17*L22; 21 L14*L18*L27
148 L14*L20*L38; 29 L14*L24*L25; 366 L14*L27*+OCF; 21 L14*L27*RY_P
8 L14*L28*L38; 257 L15*L17*L30; 215 L16*L17*L30; 77 L17*L18*L19
720 L17*L18*L29; 91 L17*L18*L37; 91 L17*L20*RY_P; 162 L17*L21*L34
112 L17*L22*L27; 191 L17*L22*L31; 441 L17*L23*L25; 54 L17*L23*RY_P
441 L17*L24*LY_R; 139 L17*L27*DROP_OHQ_YZ; 2207 L17*L27*DROP_OCR_YZ; 9 L17*L28*L34
236 L17*L29*RY_P; 1407 L17*L30*DROP_OHQ_YZ; 62 L17*L30*DROP_OCR_YZ; 315 L17*L31*L32
257 L17*L31*L34; 456 L17*L31*RY_P; 433 L17*L33*LY_R; 162 L17*L34*L37
28 L17*L37*L38; 62 L17*L38*LY_R; 77 L17*RY_P*RY_P; 110 L18*L20*L28
320 L18*L20*L29; 13 L18*L20*L30; 28 L18*L20*L38; 550 L18*L21*L27
1083 L18*L24*L27; 198 L18*L25*L28; 813 L18*L27*LX_R; 152 L18*L29*L37
827 L19*L20*L27; 276 L20*L30*LY_R; 330 L21*L27*L38; 90 L21*L28*RY_P
112 L22*L27*+OCF; 1489 L22*L27*RX_P; 36 L22*L29*L30; 148 L22*L30*L38
54 L23*L27*L35; 335 L23*L29*L29; 610 L23*L30*L30; 155 L24*L27*L29
229 L24*L27*RY_P; 441 L25*L27*DROP_OHP_YZ; 2166 L26*L27*RX_P; 21 L26*L27*LY_R
575 L27*L27*+OCF; 21 L27*L27*DROP_OCR_YZ; 229 L27*L28*L30; 68 L27*L28*+OCF
68 L27*L28*RX_P; 333 L27*L29*L39; 142 L27*L29*DROP_OCR_YZ; 464 L27*L30*+OCF
142 L27*L31*L34; 54 L27*L37*L38; 26 L28*L28*L29; 9 L28*L39*DROP_OHP_YZ
5 L28*-OHD*RY_P; 74 L28*+OCF*DROP_OHQ_YZ; 505 L29*L29*LY_R; 129 L38*L38*RX_P
1056 +OYZ*L9; 125 +OYZ*L10; 60 +OYZ*L12; 169 +OYZ*L21
1114 +OYZ*L24; 1007 +OYZ*L27; 76 +OYZ*L28; 51 +OYZ*L29
1027 +OYZ*L31; 192 +OYZ*L37; 350 +OYZ*-OHD; 1039 +OYZ*DROP_OCR_YZ
68 -HYZ*L28; 400 -HCY*L3; 26 -HCY*L4; 323 -HCY*L14
3 -HCY*L19; 459 -HCY*L20; 16 -HCY*L23; 73 -HCY*L25
8 -HCY*L29; 1749 -HCY*L30; 107 -HCY*L32; 148 -HCY*L35
82 -HCY*L36; 366 -HCY*-OHD; 571 -HCY*DROP_OHP_YZ; 471 -OHZ*L27
42 +OCZ*L17; 1003 +OCP*L17; 365 +OCP*L27; 884 -CDP*L2
126 -CDP*L8; 583 -CDP*L18; 325 -CDP*L23; 762 -CDP*L30
484 +DFP*L17; 239 +CDQ*L12; 393 +CDQ*L17; 318 +CDQ*L19
161 +CDQ*L29; 73 +DFQ*L1; 335 +DFQ*L6; 78 +DFQ*L8
371 +DFQ*L17; 152 +DFQ*L18; 90 +DFQ*L28; 36 +DFQ*L30
1303 +DFQ*RX_P; 259 +HFR*L3; 663 +HFR*L7; 333 +HFR*L14
982 +HFR*L18; 18 +HFR*L23; 3 +HFR*L24; 1272 +HFR*L27
741 +HFR*L30; 898 +HFR*L32; 156 +HFR*L33; 323 +HFR*-OHD
1148 +HFR*LY_R; 1060 +HZR*L1; 547 +HZR*L2; 898 +HZR*L10
137 +HZR*L14; 441 +HZR*L17; 103 +HZR*L18; 3 +HZR*L25
91 +HZR*L29; 561 +HZR*L31; 229 -DYR*L27; 41 +OPR*L27
646 +CYZ*L2; 2023 +CYZ*L8; 125 +CYZ*L11; 44 +CYZ*L23
1063 +CYZ*L25; 60 +CYZ*L30; 184 +CYZ*+OCF; 125 +CYZ*DROP_OHQ_YZ
51 +CYZ*LX_R; 109 +CYZ*LY_R; 456 -OYP*L17; 3 -OYQ*L0
400 -OYQ*L9; 1368 -OYQ*L12; 148 -OYQ*L14; 14 -OYQ*L18
148 -OYQ*L24; 258 -OYQ*L26; 210 -OYQ*L31; 148 -OYQ*L38
45 -OYQ*DROP_OHP_YZ; 1312 -OYQ*RX_P; 14 -OYQ*RY_P; 78 -OYQ*LX_R
220 +OZR*L0; 91 +OZR*L6; 497 +OZR*L10; 103 +OZR*L19
415 +OZR*L22; 26 +OZR*L25; 641 +OZR*L30; 1173 +OZR*L32
137 +OZR*L34; 80 +OZR*L35; 356 +OZR*DROP_OHP_YZ; 85 +OZR*RX_P
44 +CPQ*L1; 270 +CPQ*L4; 1138 +CPQ*L8; 57 +CPQ*L14
146 +CPQ*L18; 302 +CPQ*L24; 472 +CPQ*L29; 28 +CPQ*L32
13 +CPQ*L36; 751 +CPQ*+OCF; 1377 +CPQ*DROP_OCR_YZ; 18 -FQR*L27
18 +YQR*L27; 300 C_OHQ_YZ*L2; 586 C_OHQ_YZ*L8; 903 C_OHQ_YZ*L18
149 C_OHQ_YZ*L30; 349 C_OHQ_YZ*LY_R; 139 C_OQR_YZ*L17; 880 C_HCZ_Y*L3
296 Q_OCFH_YZ*L27; 1276 Q_OYRH_Z*L3; 247 Q_OYRH_Z*L27; 679 Q_OYRH_Z*L30
```

Upper bound: `-14771997784113/60500000000000`.

### Leaf RULpmpmm

Assumptions: `+CYZ -OYP +OYQ -OZQ -OZR`.

```c1bs-geometry
P OHDZR +ODZ
P OHFZR +OFZ
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P QOHZR -QZR
```

```c1bs-bounds
OHQ 10 279/880 Z
OCQ 11 279/880 Y
OHR 12 279/880 Z
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 317/1000 11/25
t 447/500 1
```

```c1bs-sum
14 L0*L1*L2; 1 L0*L3*L10; 15 L0*L3*LY_R; 5 L0*L25*+OCF
2 L0*L25*DROP_OHQ_Z; 24 L0*L25*DROP_OCQ_Y; 1 L0*L27*LX_R; 2 L0*L30*RX_P
2 L1*L1*L30; 5 L1*L1*DROP_OCQ_Y; 16 L1*L2*RX_P; 7 L1*L3*L26
12 L1*L3*DROP_OHP_YZ; 10 L1*L3*DROP_OCQ_Y; 22 L1*L7*DROP_OCQ_Y; 1 L1*L10*L29
1 L1*L11*DROP_OHQ_Z; 5 L1*L22*DROP_OHR_Z; 1 L1*L23*L31; 2 L1*L24*L36
15 L1*L29*DROP_OHR_Z; 1 L1*L30*L34; 1 L1*L37*RX_P; 12 L2*L2*L27
10 L2*L3*L25; 1 L2*L3*L29; 3 L2*L3*L32; 1 L2*L6*L28
1 L2*L17*L21; 5 L2*L17*L30; 11 L2*L24*L27; 4 L2*L26*L27
1 L2*L28*DROP_OCQ_Y; 15 L3*L3*L16; 1 L3*L3*L31; 2 L3*L3*DROP_OCQ_Y
11 L3*L3*LY_R; 1 L3*L6*L21; 10 L3*L6*L24; 1 L3*L6*L33
3 L3*L6*DROP_OHQ_Z; 3 L3*L6*LY_R; 2 L3*L7*DROP_OHQ_Z; 7 L3*L9*L16
2 L3*L9*DROP_OCQ_Y; 1 L3*L14*L38; 1 L3*L14*-OHD; 26 L3*L16*L16
10 L3*L17*L33; 24 L3*L17*RX_P; 1 L3*L17*DROP_OCQ_Y; 1 L3*L18*L20
1 L3*L18*L33; 3 L3*L18*DROP_OCQ_Y; 3 L3*L22*L24; 3 L3*L25*L39
4 L3*L26*L29; 3 L3*L29*DROP_OCQ_Y; 10 L3*L29*DROP_OHR_Z; 3 L3*L30*DROP_OHP_YZ
1 L3*L32*DROP_OHQ_Z; 12 L3*L33*LY_R; 13 L3*L34*DROP_OCQ_Y; 1 L4*L17*L29
1 L5*L12*L24; 1 L5*L12*LX_R; 2 L6*L12*L36; 1 L6*L12*RX_P
1 L6*L12*RY_P; 1 L6*L16*L28; 1 L6*L18*L27; 1 L6*L27*L31
4 L6*L29*LY_R; 5 L7*L9*L24; 5 L7*L25*L38; 1 L7*L26*DROP_OHP_YZ
1 L7*L28*DROP_OCQ_Y; 1 L8*L14*L29; 8 L8*L27*DROP_OCQ_Y; 1 L8*L37*L39
1 L8*RX_P*RX_P; 8 L9*L12*LY_R; 3 L9*L17*DROP_OHQ_Z; 4 L10*L20*RX_P
1 L10*L22*L27; 1 L12*L16*L29; 2 L12*L21*L32; 4 L12*L25*DROP_OHQ_Z
2 L12*L29*L34; 7 L12*L30*LY_R; 25 L12*DROP_OCQ_Y*LY_R; 10 L12*LX_R*LY_R
8 L12*LY_R*LY_R; 2 L13*L34*L38; 1 L14*L17*L29; 2 L14*L24*L29
2 L14*L25*L25; 4 L14*L25*DROP_OHQ_Z; 25 L14*L25*DROP_OCQ_Y; 1 L16*L24*LY_R
1 L17*L17*L31; 4 L17*L21*L38; 4 L17*L30*L38; 4 L17*L31*L38
1 L17*L31*DROP_OHQ_Z; 2 L17*-OHD*DROP_OCQ_Y; 1 L18*L29*DROP_OCQ_Y; 1 L18*LX_R*LY_R
1 L20*L27*L32; 1 L20*L27*-OHD; 4 L21*L24*L38; 1 L21*L27*DROP_OHP_YZ
4 L21*L27*DROP_OHR_Z; 1 L21*RX_P*LY_R; 11 L22*L27*-OHD; 5 L23*LY_R*LY_R
14 L24*L24*LY_R; 8 L24*L27*LX_R; 6 L24*L27*LY_R; 4 L24*L29*L32
4 L25*L25*L25; 4 L25*L26*DROP_OHQ_Z; 6 L25*L27*L29; 4 L25*L30*L37
22 L27*L27*L33; 1 L27*L27*L37; 5 L27*L27*DROP_OCQ_Y; 6 L27*L27*DROP_OHR_Z
1 L27*L31*L37; 7 L27*L31*DROP_OCQ_Y; 1 L27*L32*DROP_OCQ_Y; 3 L27*L33*LX_R
1 L27*L37*LY_R; 21 L27*DROP_OCQ_Y*DROP_OHR_Z; 21 L27*DROP_OCQ_Y*LX_R; 22 L27*DROP_OHR_Z*DROP_OHR_Z
3 L28*RX_P*DROP_OCQ_Y; 16 L29*+OCF*LY_R; 8 L29*DROP_OCQ_Y*LY_R; 1 L38*DROP_OHQ_Z*LY_R
1 RX_P*LX_R*LY_R; 1 FAN*L1; 3 CENT*L3; 10 -HYZ*DROP_OCQ_Y
1 +OCY*L7; 2 -HCY*L1; 3 -HCY*L14; 10 -HCY*L22
1 -HCY*L37; 2 -HCY*-OHD; 4 -HCY*DROP_OHP_YZ; 1 -HFY*L3
1 -OHZ*L14; 3 -OHZ*L17; 1 -OHZ*L19; 2 -OHZ*L30
11 -OHZ*L33; 35 -OHZ*DROP_OCQ_Y; 15 -OHZ*LY_R; 13 +OCZ*L25
1 -CDP*L2; 2 -CDP*DROP_OCQ_Y; 1 +DFP*L22; 1 -OFP*L27
3 +OCQ*L3; 1 +DFQ*L3; 7 +HCR*L27; 1 +HFR*L5
4 +HFR*L6; 11 +HFR*L22; 12 +HFR*L33; 5 +HFR*+OCF
1 +HFR*RY_P; 18 +HFR*DROP_OCQ_Y; 14 +HFR*DROP_OHR_Z; 3 -CZR*L12
2 -CZR*L27; 1 +OPQ*L3; 1 -OZP*L29; 4 +CYZ*L21
2 +CYZ*-OHD; 8 +CYZ*DROP_OHQ_Z; 13 +CYZ*DROP_OCQ_Y; 4 +CYZ*DROP_OHR_Z
2 +OYQ*L13; 2 +OYQ*L34; 8 -OZR*L2; 10 -OZR*L33
10 -OZR*-OHD; 3 -OZR*+OCF; 25 -OZR*DROP_OCQ_Y; 2 -OZR*LX_R
12 -OZR*LY_R; 4 -YZQ*DROP_OHR_Z; 1 -YZR*L7; 3 C_OCQ_Y*L29
4 C_HCZ_Y*L27; 4 C_HCZ_Y*L30; 2 C_HCZ_Y*+OCF; 6 C_HCZ_Y*DROP_OCR_Y
1 C_CZQ_Y*L31; 2 C_CZQ_Y*L38; 10 Q_OCRZ_Y*L27; 3 Q_HZCQ_Y*L24
```

Upper bound: `-406894797/5500000000`.

### Leaf RULpmpmpm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR -HPQ`.

```c1bs-geometry
C OHP YZQ R +HPR 22/25
P HODPQ -HDQ
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P DHCQR -DQR
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P ZOHQR +ZQR
P POHFQ +PFQ
P POHQR -PQR
M OHPQZY 1
M OPHQYZ -1
M HOPYZQ -1
M HPOYQZ 1
M POHZYQ 1
M PHOZQY -1
C OYR Z Q -YRQ 509143/774400
P YHDZP +YDZ
P YHFZP +YFZ
M OPRQYZ -1
M ORPQZY 1
M PORZYQ 1
M PROZQY -1
M ROPYZQ -1
M RPOYQZ 1
```

```c1bs-bounds
OHP 0 823/1000 YZQ
OHP 8 823/880 YZQ
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 823/1000 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 187/200 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
1 L23*L29; 16 L0*L1*L24; 3 L0*L7*L8; 5 L0*L8*L17
10 L0*L10*L27; 2 L0*L24*L30; 5 L0*L30*L30; 5 L0*L30*L33
9 L1*L1*DROP_OCQ_Y; 3 L1*L1*LX_R; 3 L1*L5*L24; 3 L1*L5*L30
8 L1*L6*L31; 13 L1*L6*LY_R; 2 L1*L7*L30; 8 L1*L8*L12
12 L1*L8*L19; 2 L1*L9*L14; 9 L1*L9*L26; 4 L1*L9*+OCF
31 L1*L9*DROP_OHQ_Z; 17 L1*L12*L18; 29 L1*L12*L21; 1 L1*L12*L34
18 L1*L13*L27; 1 L1*L14*L38; 2 L1*L16*L30; 12 L1*L17*L29
37 L1*L17*L37; 25 L1*L17*DROP_OHQ_Z; 5 L1*L18*L22; 12 L1*L18*L24
1 L1*L19*RX_P; 5 L1*L19*DROP_OCQ_Y; 2 L1*L20*L32; 7 L1*L24*L36
24 L1*L24*DROP_OHQ_Z; 4 L1*L27*DROP_OHQ_Z; 14 L1*L27*LX_R; 93 L1*L27*LY_R
4 L1*L28*DROP_OHQ_Z; 9 L1*L28*DROP_OCQ_Y; 8 L1*L29*L31; 33 L1*L29*DROP_OHP_YZQ
17 L1*L29*DROP_OHQ_Z; 1 L1*L30*L35; 14 L1*L31*DROP_OCQ_Y; 6 L1*L31*LX_R
1 L1*DROP_OHP_YZQ*LY_R; 6 L1*RX_P*LX_R; 7 L2*L2*L30; 7 L2*L2*L35
9 L2*L2*RY_P; 7 L2*L3*L36; 4 L2*L5*RY_P; 11 L2*L7*L22
21 L2*L11*RX_P; 15 L2*L12*L21; 3 L2*L14*L29; 34 L2*L14*L30
44 L2*L14*L37; 29 L2*L19*L30; 11 L2*L19*L34; 62 L2*L19*DROP_OHQ_Z
70 L2*L19*DROP_OCQ_Y; 1 L2*L23*L29; 1 L2*L27*DROP_OHP_YZQ; 1 L3*L5*L25
7 L3*L5*-OHD; 40 L3*L5*DROP_OCQ_Y; 2 L3*L9*L27; 5 L3*L10*L31
44 L3*L10*L37; 4 L3*L15*LY_R; 12 L3*L17*DROP_OCQ_Y; 4 L3*L18*L38
7 L3*L19*L28; 10 L3*L22*L29; 2 L3*L26*L38; 18 L3*L27*DROP_OCQ_Y
2 L3*L28*L31; 25 L3*L28*L37; 9 L4*L5*DROP_OCQ_Y; 2 L4*L17*-OHD
59 L4*L17*DROP_OCQ_Y; 2 L4*L25*L28; 10 L4*L28*RX_P; 1 L5*L5*L9
2 L5*L6*L12; 2 L5*L8*L24; 9 L5*L14*RX_P; 2 L5*L15*L33
13 L5*L16*L16; 2 L5*L17*L19; 11 L5*L17*L29; 5 L5*L22*L33
2 L5*L24*L37; 2 L5*L24*RY_P; 9 L5*L28*DROP_OCQ_Y; 9 L5*L39*RX_P
41 L5*RX_P*DROP_OHQ_Z; 14 L6*L17*DROP_OCQ_Y; 1 L6*L20*L29; 4 L6*L27*L30
4 L6*L27*-OHD; 17 L6*L27*DROP_OHQ_Z; 14 L6*L27*DROP_OCR_YZ; 1 L7*L7*DROP_OHQ_Z
1 L7*L16*L24; 1 L7*L16*L37; 4 L7*L18*L20; 2 L7*L19*L28
2 L7*L20*L28; 1 L7*L21*RX_P; 1 L7*L22*L30; 5 L7*L23*L27
4 L8*L9*L16; 7 L8*L16*LY_R; 1 L8*L28*L32; 4 L9*L17*L32
1 L9*L28*L30; 2 L9*L28*RX_P; 4 L9*L38*DROP_OHP_YZQ; 2 L9*RY_P*LY_R
24 L10*L12*L17; 4 L10*L12*L30; 23 L10*L17*L17; 23 L10*L17*RX_P
11 L10*L19*L20; 1 L10*L33*L38; 13 L10*L37*RX_P; 2 L11*L12*L18
3 L11*L14*L27; 6 L11*L17*L25; 4 L12*L12*L13; 23 L12*L12*L35
4 L12*L13*L30; 8 L12*L14*L27; 1 L12*L17*L36; 14 L12*L18*L30
77 L12*L27*DROP_OHQ_Z; 77 L12*L27*DROP_OCQ_Y; 2 L12*L28*L29; 27 L12*L31*L36
5 L12*L31*L38; 38 L12*L31*DROP_OCQ_Y; 23 L13*L14*L17; 15 L13*L17*L37
4 L13*L24*L27; 9 L14*L17*L18; 11 L14*L17*L26; 11 L14*L17*L30
44 L14*L17*L37; 22 L14*L17*DROP_OHP_YZQ; 6 L14*L17*DROP_OCQ_Y; 7 L14*L19*DROP_OHQ_Z
4 L14*L24*LY_R; 5 L14*L27*-OHD; 5 L14*L28*DROP_OHQ_Z; 2 L14*L38*DROP_OHP_YZQ
4 L15*L38*RX_P; 1 L15*L38*LY_R; 4 L16*L28*L28; 2 L16*L32*LY_R
7 L16*DROP_OHP_YZQ*LY_R; 3 L17*L17*L18; 3 L17*L17*RY_P; 21 L17*L17*DROP_OCQ_Y
46 L17*L18*DROP_OHQ_Z; 3 L17*L19*L19; 7 L17*L19*L25; 38 L17*L22*L32
1 L17*L24*L29; 4 L17*L27*L27; 10 L17*L27*L33; 11 L17*L29*RY_P
47 L17*L32*DROP_OHQ_Z; 22 L17*L34*RX_P; 1 L17*L36*L36; 25 L17*RY_P*DROP_OHQ_Z
2 L18*L24*L38; 2 L19*L19*L33; 3 L19*L19*RX_P; 9 L19*L24*LY_R
1 L19*L25*L26; 1 L19*L25*L30; 2 L19*L27*L30; 4 L19*L29*DROP_OHQ_Z
2 L19*L29*LY_R; 19 L19*L30*L33; 60 L19*L30*DROP_OHQ_Z; 40 L19*L30*DROP_OCQ_Y
4 L20*LY_R*LY_R; 3 L21*L38*DROP_OCR_YZ; 5 L23*L27*LX_R; 1 L23*L29*L33
4 L24*L26*L39; 1 L24*L31*RX_P; 1 L24*DROP_OCQ_Y*LY_R; 1 L25*L38*RX_P
3 L26*L26*L28; 31 L26*L27*DROP_OCR_YZ; 2 L26*L28*DROP_OCQ_Y; 2 L27*L28*L37
3 L27*L28*DROP_OCR_YZ; 20 L27*L30*L37; 5 L27*L32*L39; 12 L27*L32*+OCF
10 L27*L38*-OHD; 17 L27*L38*DROP_OHQ_Z; 1 L28*L28*L30; 10 L28*+OCF*RX_P
5 L29*DROP_OCR_YZ*LY_R; 5 L31*L36*L38; 15 L37*L39*RX_P; 31 LY_R*LY_R*LY_R
5 KLOW*L30; 2 QUADQ*L28; 9 QUADR*L17; 14 +OCY*L27
4 -HCY*L4; 5 -HCY*L8; 13 -HCY*L18; 4 -HCY*L33
16 -HCY*L37; 15 -HCY*+OCF; 15 -HCY*DROP_OHQ_Z; 20 -HCY*DROP_OCR_YZ
1 -HCY*LX_R; 39 +OCZ*L17; 11 +OCZ*L27; 24 +OCP*L17
9 -CDP*L2; 9 -CDP*L18; 11 -CDP*L33; 11 -CDP*DROP_OHP_YZQ
7 -CDP*RY_P; 66 -CDP*DROP_OHQ_Z; 59 -CDP*DROP_OCQ_Y; 11 -OFP*L17
10 -CYP*L17; 1 -CYP*L38; 8 +OCQ*L1; 15 -HFQ*L17
10 -CYQ*L3; 2 -CYQ*L5; 11 -CYQ*L18; 20 -CYQ*L27
1 -CYQ*L29; 17 +HFR*L0; 5 +HFR*L30; 15 +HFR*DROP_OHQ_Z
19 +HFR*DROP_OCR_YZ; 2 +DFR*L19; 2 +DFR*L20; 2 +HDR*L38
2 +HYR*L0; 1 +HYR*L19; 2 +HZR*L10; 8 +HZR*L14
10 +HZR*DROP_OHP_YZQ; 9 +HZR*DROP_OHQ_Z; 7 +HZR*DROP_OCQ_Y; 3 -CZR*L1
3 +OPQ*L17; 59 +CYZ*L14; 21 +CYZ*L16; 21 +CYZ*L18
12 +CYZ*L33; 59 +CYZ*L36; 98 +CYZ*DROP_OHQ_Z; 74 +CYZ*DROP_OCQ_Y
4 -OYP*L12; 12 -OYP*L14; 3 -OYP*L16; 9 -OYP*L18
23 -OYP*L22; 1 -OYP*L25; 4 -OYP*L26; 4 -OYP*L35
11 -OYP*+OCF; 9 -OZQ*L12; 29 -OZQ*L31; 10 +OZR*L10
14 +OZR*L18; 8 +OZR*L32; 48 +OZR*DROP_OHQ_Z; 50 +OZR*DROP_OCQ_Y
1 -HPQ*L1; 8 -HPQ*L14; 18 -HPQ*L16; 1 -HPQ*RY_P
4 -PQR*LY_R; 12 -YZP*L3; 9 -YZP*L18; 4 -YZP*L26
44 -YZP*L30; 45 -YZP*L31; 5 -YZP*L35; 23 -YZP*+OCF
60 -YZP*DROP_OHQ_Z; 74 -YZP*DROP_OCQ_Y; 2 +YQR*L28; 2 -DYZ*L17
1 C_OYR_Z*L19; 39 C_OZP_Y*L2; 11 C_OZP_Y*L12; 1 C_OZP_Y*L14
3 C_OZP_Y*L24; 10 C_OZP_Y*L38; 8 C_OZP_Y*LY_R; 6 C_OPQ_Y*LY_R
9 C_HCZ_Y*L19; 5 C_CZQ_Y*L4; 9 C_CZQ_Y*L13; 9 C_CZQ_Y*L31
2 C_CZQ_Y*DROP_OCR_YZ; 7 Q_OYRH_Z*L17; 1 Q_OYRH_Z*L28; 1 Q_OPQZ_Y*RY_P
2 SP_HZCP_YQ_HC-1*L5; 20 SP_HZCP_YQ_HC1*L12; 12 SP_HZCP_YQ_HC1*RX_P; 2 SP_HZCP_YQ_ZP1*LY_R
5 Q_HZCR_Y*L27; 1 Q_CPDZ_Y*L28; 7 M_PORZYQ_1_0*L17
```

Upper bound: `-349003039133/484000000000`.

### Leaf RULpmpmppmm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ -FPQ -CQR`.

```c1bs-geometry
C OCR YZQ P -CRP 22/25
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P COFQR +CFQ
P DCFPQ -DPQ
P FHCQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P ZOHQR +ZQR
P POHZQ -PZQ
P QOCPR +QPR
P QCDFR +QDR
```

Exclusion: `mesh OCRQYZ -1`.

### Leaf RULpmpmppmpmmm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ -FPQ +CQR -DQR -HDQ -CFQ`.

```c1bs-geometry
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P FOHCQ +FOQ
P FODQR -FQR
P FHCYQ +FYQ
P FHCZQ +FZQ
P YOHFQ -YOF
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOCFZ +YFZ
P YOFQR +YQR
P ZOHQR +ZQR
P POHZQ -PZQ
```

```c1bs-bounds
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
1 L28*L30; 16 L0*L0*L3; 9 L0*L3*-OHD; 19 L0*L6*RX_P
5 L0*L8*L28; 10 L0*L9*RX_P; 3 L0*L19*L32; 11 L0*L19*L37
8 L0*L24*L35; 8 L0*L26*RX_P; 5 L0*L28*L31; 3 L0*L29*L30
4 L1*L2*L5; 8 L1*L2*L8; 1 L1*L2*L36; 98 L1*L2*DROP_OHQ_Z
7 L1*L4*L17; 3 L1*L5*L35; 1 L1*L9*L31; 8 L1*L9*LY_R
8 L1*L17*L37; 3 L1*L19*L30; 11 L1*L19*DROP_OCQ_Y; 3 L1*L20*L31
4 L1*L20*L38; 4 L1*L23*L27; 8 L1*L24*L32; 151 L1*L24*DROP_OHQ_Z
6 L1*L31*DROP_OCR_YZ; 3 L1*L38*RY_P; 1 L1*L38*DROP_OCQ_Y; 9 L2*L5*L12
7 L2*L5*L18; 2 L2*L9*L28; 4 L2*L12*L35; 4 L2*L13*L38
4 L2*L14*L21; 12 L2*L19*L28; 13 L2*L19*L37; 71 L2*L19*DROP_OHQ_Z
11 L2*L21*DROP_OCQ_Y; 19 L2*L23*L30; 13 L2*DROP_OCQ_Y*LY_R; 2 L3*L4*L8
3 L3*L6*L10; 71 L3*L6*DROP_OCQ_Y; 11 L3*L11*L27; 5 L3*L14*L26
2 L3*L14*L30; 9 L3*L17*L30; 10 L3*L18*L18; 2 L3*L18*L24
8 L3*L28*LY_R; 4 L4*L5*L6; 1 L4*L6*L9; 16 L4*L6*L27
1 L4*L8*L19; 2 L4*L9*L24; 3 L4*L24*L30; 4 L4*L24*LY_R
1 L5*L10*L37; 2 L5*L17*RY_P; 1 L5*L18*L38; 4 L5*L24*DROP_OCQ_Y
1 L5*L38*LX_R; 5 L6*L10*L25; 17 L6*L17*L22; 7 L6*L17*L26
10 L6*L18*L33; 2 L6*L21*L22; 7 L6*L22*L23; 222 L6*L27*DROP_OHQ_Z
5 L6*L27*DROP_OCR_YZ; 5 L6*L28*L33; 5 L6*L34*DROP_OCQ_Y; 3 L7*L13*L28
1 L7*L27*L36; 66 L8*L12*L17; 1 L8*L12*L21; 33 L8*L17*L31
27 L8*L17*L37; 2 L8*L19*L23; 1 L8*L27*L31; 17 L8*L27*L37
1 L8*L29*LY_R; 1 L8*L38*DROP_OCQ_Y; 33 L9*L17*+OCF; 1 L10*L11*L26
9 L10*L12*L17; 6 L10*L17*DROP_OHQ_Z; 1 L10*L18*L28; 5 L10*L22*L29
2 L10*L27*L35; 8 L10*L27*RX_P; 2 L10*L27*LX_R; 1 L10*L37*L38
2 L11*L24*DROP_OCR_YZ; 2 L12*L14*L21; 37 L12*L17*L21; 37 L12*L17*DROP_OHQ_Z
9 L12*L18*L30; 8 L12*L19*L21; 1 L12*L19*L23; 9 L12*L19*L33
29 L12*L27*L37; 1 L12*L35*DROP_OCQ_Y; 6 L13*LY_R*LY_R; 4 L14*L17*DROP_OCQ_Y
86 L14*L20*L27; 6 L14*L24*LY_R; 1 L14*L27*L29; 11 L16*L17*L27
17 L17*L17*L18; 6 L17*L17*-OHD; 32 L17*L17*DROP_OHQ_Z; 32 L17*L17*DROP_OCQ_Y
13 L17*L18*+OCF; 17 L17*L18*RX_P; 91 L17*L20*DROP_OCQ_Y; 91 L17*L21*DROP_OCQ_Y
32 L17*L23*L30; 4 L17*L23*L37; 3 L17*L24*L35; 6 L17*L24*DROP_OHQ_Z
8 L17*L24*DROP_OCQ_Y; 6 L17*L29*DROP_OHQ_Z; 33 L17*L30*L30; 9 L17*L30*+OCF
27 L17*L31*DROP_OHQ_Z; 4 L17*L34*DROP_OHQ_Z; 32 L17*L37*RX_P; 6 L17*L37*LX_R
89 L17*-OHD*DROP_OHQ_Z; 7 L17*RX_P*LY_R; 1 L18*L21*L26; 1 L18*L28*C_OCF_Y
4 L19*L24*DROP_OHP_YZ; 1 L19*L27*DROP_OHQ_Z; 8 L19*L29*L29; 39 L19*L29*L37
16 L19*L29*LY_R; 1 L19*L31*L37; 4 L19*L37*DROP_OHQ_Z; 61 L20*L21*L27
40 L20*L24*L27; 96 L20*L24*LY_R; 115 L20*L27*LY_R; 3 L22*L32*RX_P
26 L23*L27*DROP_OCR_YZ; 60 L24*L27*DROP_OHQ_Z; 10 L24*L27*DROP_OCQ_Y; 6 L24*L27*DROP_OCR_YZ
4 L24*L37*LY_R; 3 L24*L38*DROP_OHP_YZ; 6 L24*LY_R*LY_R; 143 L27*L27*DROP_OHQ_Z
4 L27*L28*DROP_OHQ_Z; 3 L27*L28*LX_R; 7 L27*L29*DROP_OHP_YZ; 8 L27*L29*RY_P
8 L27*L32*DROP_OHP_YZ; 115 L27*L34*DROP_OHQ_Z; 1 L27*L35*L35; 22 L27*L37*DROP_OCR_YZ
17 L27*L38*DROP_OHQ_Z; 61 L27*DROP_OHQ_Z*DROP_OHQ_Z; 4 L27*DROP_OCQ_Y*LY_R; 2 L28*L28*LX_R
39 L28*L29*DROP_OHQ_Z; 1 L28*L38*DROP_OCQ_Y; 47 L28*RX_P*DROP_OHQ_Z; 1 L30*L38*DROP_OHQ_Z
1 L37*L38*L38; 17 KLOW*L6; 8 KLOW*L26; 1 KLOW*L39
13 KLOW*-OHD; 10 KLOW*RX_P; 9 KLOW*RY_P; 102 KLOW*DROP_OHQ_Z
2 +OYZ*L2; 2 +OYZ*L14; 2 +OYZ*L36; 7 -HCY*L25
7 -HCY*L27; 3 -HCY*L29; 5 -HCY*L37; 21 -HCY*DROP_OCR_YZ
1 -HDY*L27; 1 -OHZ*L24; 26 -OHZ*L27; 13 -OHP*L17
2 -CDP*L18; 9 -CDP*L20; 9 -CDP*L33; 7 +DFP*L27
44 -HFQ*L17; 7 +HYQ*L17; 13 -CYQ*L12; 17 -CYQ*L27
3 -OHR*LY_R; 3 +HFR*L4; 6 +HFR*L26; 1 +HFR*L30
9 +HFR*L37; 9 +HFR*-OHD; 214 +HFR*DROP_OHQ_Z; 2 +DFR*L10
3 +DFR*L12; 1 +DFR*L27; 6 +HZR*L1; 29 +HZR*L20
2 +CYZ*L12; 17 +CYZ*L21; 27 +CYZ*DROP_OHQ_Z; 2 +CYZ*DROP_OCQ_Y
6 -OYP*L7; 9 -OYP*L12; 3 -OYP*L37; 21 -OYP*DROP_OHQ_Z
4 +OYQ*L4; 30 +OYQ*L8; 5 +OYQ*L20; 30 +OYQ*L31
2 +OYQ*L37; 4 +OYQ*L39; 25 +OYQ*RX_P; 2 -OZQ*L12
29 -OZQ*L27; 4 -OZQ*L38; 3 +HPQ*L31; 2 -FPQ*L7
12 -FPQ*L18; 6 -FPQ*L30; 22 -FPQ*L33; 2 -FPQ*L34
13 -FPQ*-OHD; 39 -FPQ*+OCF; 6 -FPQ*C_OCF_Y; 28 -FPQ*DROP_OHQ_Z
22 -FPQ*DROP_OCQ_Y; 2 -FPQ*LX_R; 17 -CFQ*L5; 5 -CFQ*L11
14 -CFQ*L30; 7 -CFQ*L33; 7 -CFQ*L36; 12 -CFQ*-OHD
11 -CFQ*+OCF; 19 -CFQ*DROP_OHP_YZ; 22 -CFQ*RX_P; 17 -CFQ*RY_P
26 -CFQ*DROP_OHQ_Z; 15 -CFQ*DROP_OCQ_Y; 10 -CFQ*DROP_OCR_YZ; 4 +HQR*L28
8 +CPQ*L18; 15 +CPQ*L37; 2 -OFQ*L27; 6 -OFY*L17
2 -OFY*L24; 7 -YZQ*L21; 2 -YZQ*L23; 1 +YQR*L28
2 C_OFP_YQ*L14; 4 C_OPQ_Y*L0; 2 C_OPQ_Y*L14; 1 C_OPQ_Y*L37
20 C_CFP_Q*L6; 18 C_CFP_Q*L12; 12 C_CFP_Q*-OHD; 12 C_CFP_Q*DROP_OHQ_Z
63 C_CFP_Q*DROP_OCQ_Y; 5 C_CFP_Q*LX_R; 4 Q_OCDH_YZQ*L17; 4 Q_OYQH_Z*L28
20 Q_OCQF_Y*L17; 4 Q_OCQZ_Y*L17; 4 Q_OCPR_YZ*L17; 4 Q_OPQZ_Y*L18
5 Q_OPQZ_Y*L20; 14 Q_OPQZ_Y*L31; 2 Q_OPQZ_Y*L37; 2 Q_HZCP_Y*L6
5 Q_CPDF_Q*L3; 2 Q_CPDF_Q*L5; 39 Q_CPDF_Q*L20; 8 Q_CPDF_Q*LY_R
7 Q_CPFY_Q*L24; 6 Q_CQRZ_Y*L27; 29 LEFTSUP
```

Upper bound: `-35813567507709/10648000000000`.

### Leaf RULpmpmppmpmmpm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ -FPQ +CQR -DQR -HDQ +CFQ -YZP`.

```c1bs-geometry
C OZP Y Q +ZPQ 509143/774400
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P FHCQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YHDZP +YDZ
P YHFZP +YFZ
P ZOHQR +ZQR
P QOCYR -QYR
```

```c1bs-bounds
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
18 L0*L2*L30; 3 L0*L4*L5; 7 L0*L5*L12; 1 L0*L6*L19
3 L0*L7*RX_P; 7 L0*L12*L17; 2 L0*L14*L27; 12 L0*L17*L29
9 L0*L17*LY_R; 11 L0*L27*L30; 1 L0*L29*DROP_OCQ_Y; 3 L1*L1*L21
5 L1*L1*L24; 11 L1*L1*L35; 9 L1*L2*L20; 3 L1*L3*L8
5 L1*L3*L27; 2 L1*L4*L15; 2 L1*L4*L28; 4 L1*L6*LY_R
3 L1*L7*DROP_OHQ_Z; 5 L1*L7*DROP_OCQ_Y; 9 L1*L8*L19; 13 L1*L9*-OHD
11 L1*L10*LY_R; 9 L1*L12*L29; 6 L1*L12*DROP_OCR_YZ; 6 L1*L13*DROP_OCQ_Y
11 L1*L14*DROP_OHP_YZ; 13 L1*L18*L20; 1 L1*L20*L33; 2 L1*L21*L30
1 L1*L25*L38; 11 L1*L26*L38; 2 L1*L27*RY_P; 8 L1*L28*+OCF
9 L1*L29*L35; 3 L1*L29*DROP_OCR_YZ; 6 L1*L31*L33; 10 L1*L31*+OCF
4 L1*RX_P*LY_R; 3 L1*DROP_OHQ_Z*LY_R; 1 L2*L4*L17; 1 L2*L5*L23
8 L2*L9*L27; 9 L2*L10*L27; 3 L2*L11*L28; 7 L2*L14*L19
15 L2*L16*L17; 11 L2*L17*L23; 5 L2*L17*L25; 117 L2*L19*L30
7 L2*L19*+OCF; 28 L2*L19*DROP_OCQ_Y; 8 L2*L23*LY_R; 11 L2*L26*LY_R
1 L3*L3*L22; 18 L3*L10*L22; 14 L3*L10*L37; 16 L3*L12*L37
7 L3*L13*L38; 4 L3*L14*L27; 10 L3*L15*L22; 40 L3*L17*L30
15 L3*L17*DROP_OHP_YZ; 1 L3*L23*RX_P; 5 L3*L24*DROP_OHP_YZ; 17 L3*L27*RY_P
8 L3*L28*L30; 7 L3*L29*RY_P; 4 L3*L34*L39; 7 L3*L37*L39
2 L4*L19*L27; 10 L4*L24*RX_P; 8 L4*L27*L31; 1 L4*L36*L38
5 L4*RX_P*RX_P; 3 L5*L10*DROP_OCQ_Y; 7 L5*L17*L29; 1 L5*L17*LY_R
3 L5*L22*L38; 2 L5*L24*L26; 11 L5*L27*DROP_OCQ_Y; 54 L5*L30*RX_P
17 L5*L31*RX_P; 2 L5*L34*LY_R; 1 L5*L35*L39; 8 L6*L8*L27
9 L6*L12*L27; 3 L6*L16*L27; 1 L6*L24*L30; 2 L6*L27*L28
9 L6*L27*L38; 1 L7*L25*L38; 4 L7*L27*DROP_OHP_YZ; 9 L7*L30*LY_R
55 L8*L14*L17; 20 L8*L16*L19; 40 L8*L17*+OCF; 4 L8*L18*L19
3 L8*L22*L28; 8 L8*L27*L29; 21 L8*L28*RX_P; 13 L9*L27*DROP_OHQ_Z
1 L10*L12*L38; 10 L10*L24*L39; 9 L10*L29*LY_R; 3 L11*L17*L19
11 L11*L17*L37; 5 L11*L23*LY_R; 16 L11*L27*DROP_OHQ_Z; 14 L12*L17*L18
3 L12*L18*L34; 29 L12*L23*RX_P; 1 L12*L23*RY_P; 1 L12*L25*L29
10 L12*L27*+OCF; 17 L12*L27*DROP_OHP_YZ; 19 L12*L27*DROP_OHQ_Z; 31 L12*L27*DROP_OCQ_Y
1 L12*L28*DROP_OHQ_Z; 1 L12*L29*DROP_OCQ_Y; 1 L12*L34*RX_P; 3 L13*L17*L20
1 L13*L28*+OCF; 14 L14*L17*L17; 7 L14*L17*L19; 3 L14*L17*L34
6 L14*L17*L37; 9 L14*L17*DROP_OCQ_Y; 1 L14*L19*L29; 47 L14*L23*RX_P
11 L14*L24*L27; 2 L14*L26*L28; 4 L14*L27*DROP_OHP_YZ; 1 L14*L29*DROP_OCQ_Y
1 L15*L30*L38; 7 L17*L17*DROP_OCQ_Y; 7 L17*L19*L21; 6 L17*L20*L30
15 L17*L22*L26; 20 L17*L22*L30; 1 L17*L23*L29; 16 L17*L23*LY_R
7 L17*L25*LY_R; 18 L17*L27*L28; 3 L17*L28*L32; 20 L17*L32*RX_P
7 L17*L33*-OHD; 6 L17*L38*DROP_OHQ_Z; 16 L17*L38*DROP_OCQ_Y; 11 L17*-OHD*-OHD
2 L18*L38*+OCF; 7 L19*L19*L30; 1 L19*L24*L39; 2 L19*L27*L28
9 L19*L27*L33; 1 L19*L29*-OHD; 1 L19*L30*L30; 31 L19*L30*DROP_OHQ_Z
46 L19*L30*DROP_OCQ_Y; 8 L19*L30*LY_R; 1 L19*L31*L32; 5 L20*L24*LY_R
3 L20*L26*L38; 13 L20*L38*LY_R; 3 L21*L27*-OHD; 1 L22*L29*LY_R
5 L22*L38*LY_R; 9 L23*L27*L33; 19 L23*L38*RX_P; 3 L24*L27*+OCF
7 L24*L27*DROP_OHP_YZ; 5 L24*L27*DROP_OHQ_Z; 10 L24*L27*DROP_OCQ_Y; 6 L24*L28*RX_P
2 L24*L36*LY_R; 10 L24*DROP_OCQ_Y*LY_R; 1 L25*L32*L38; 18 L26*L27*L37
11 L26*L28*DROP_OCQ_Y; 3 L26*L29*L37; 18 L27*L27*DROP_OHQ_Z; 18 L27*L27*DROP_OCQ_Y
3 L27*L31*DROP_OHQ_Z; 5 L27*L31*DROP_OCQ_Y; 12 L27*L33*LY_R; 5 L27*L34*RX_P
11 L27*-OHD*DROP_OCQ_Y; 3 L27*+OCF*LX_R; 7 L28*L30*RX_P; 5 L28*L31*RX_P
20 L28*RX_P*RX_P; 28 L28*RX_P*DROP_OCQ_Y; 2 L28*DROP_OCR_YZ*LX_R; 2 L29*LY_R*LY_R
8 L31*RY_P*LY_R; 9 L37*L39*RX_P; 6 +HCF*L17; 6 +OYZ*L28
7 -HYZ*L28; 12 -HCY*L18; 6 -HCY*L33; 10 -HCY*-OHD
8 -HCY*+OCF; 28 -HCY*DROP_OHP_YZ; 10 -HCY*DROP_OHQ_Z; 20 -HCY*DROP_OCQ_Y
1 -HDY*L1; 15 +OCP*L17; 7 -CDP*L6; 3 -CDP*L10
15 -CDP*L16; 4 -CDP*L25; 17 -CDP*L26; 68 -CDP*L30
28 -CDP*DROP_OCQ_Y; 1 +DFP*L39; 19 -CYP*L12; 1 +DFQ*L12
1 +DFQ*L14; 1 +HFR*L17; 4 +HFR*+OCF; 2 +HFR*RX_P
3 +HFR*DROP_OHQ_Z; 4 +HFR*DROP_OCQ_Y; 2 +HFR*DROP_OCR_YZ; 5 +HZR*L1
6 +HZR*L14; 2 +HZR*L37; 3 +HZR*+OCF; 4 +HZR*DROP_OCQ_Y
7 +OPQ*L17; 14 +CYZ*L2; 10 +CYZ*L7; 1 +CYZ*L12
11 +CYZ*L18; 74 +CYZ*L20; 28 +CYZ*L21; 4 +CYZ*L36
13 +CYZ*-OHD; 99 +CYZ*DROP_OHP_YZ; 75 +CYZ*DROP_OCQ_Y; 10 +CYZ*LX_R
3 -OYP*L1; 33 -OYP*L3; 22 -OYP*L12; 4 -OYP*L14
7 -OYP*L18; 16 -OYP*L37; 1 -OYP*RY_P; 9 -OYP*DROP_OCQ_Y
22 +OYQ*L2; 3 +OYQ*L39; 30 -OZQ*L2; 2 -OZQ*L24
6 +OZR*L15; 12 +OZR*L27; 7 +OZR*L31; 13 +OZR*-OHD
16 +OZR*DROP_OHP_YZ; 18 +OZR*DROP_OHQ_Z; 34 +OZR*DROP_OCQ_Y; 9 +HPQ*L9
5 +HPQ*L30; 1 -YZP*L4; 18 -YZP*L8; 1 -YZP*L10
3 -YZP*L18; 12 -YZP*L22; 17 -YZP*L31; 4 -YZP*L36
12 -YZP*-OHD; 20 -YZP*DROP_OHP_YZ; 43 -YZP*DROP_OHQ_Z; 59 -YZP*DROP_OCQ_Y
2 +HQR*L3; 2 +HQR*L33; 1 -FQR*L17; 10 -YZQ*L17
13 +YPQ*L1; 8 -DYZ*L17; 43 C_OZP_Y*L2; 33 C_OZP_Y*L17
10 C_OZP_Y*L19; 5 C_OZP_Y*L21; 1 C_OZP_Y*L24; 35 C_OZP_Y*L31
8 C_OZP_Y*L38; 14 C_HCZ_Y*L3; 18 C_HCZ_Y*L19; 3 C_CZQ_Y*L38
1 C_CZR_Y*L19; 5 Q_OCPZ_Y*L12; 1 Q_OCQZ_Y*L5; 12 Q_OCQZ_Y*L17
2 Q_HZCF_YQ*L17; 1 Q_HZPD_Q*L1; 1 Q_CQRZ_Y*L17; 3 LEFTSUP
```

Upper bound: `-364165414161/484000000000`.

### Leaf RULpmpmppmpmmppm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ -FPQ +CQR -DQR -HDQ +CFQ +YZP -PQR`.

```c1bs-geometry
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P FHCQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P ZOHQR +ZQR
P ZOYPQ +ZPQ
P QOCYR -QYR
```

Exclusion: `mesh OPRQYZ -1`.

### Leaf RULpmpmppmpmmpppm

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ -FPQ +CQR -DQR -HDQ +CFQ +YZP +PQR -ODY`.

```c1bs-geometry
P OHDFY -OFY
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DHCPQ -DPQ
P FHCQR -FQR
P YOHDZ +YDZ
P YOHFZ +YFZ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P ZOHQR +ZQR
P ZOYPQ +ZPQ
P QOCYR -QYR
C DZP Y Q -DZQ 2681309/3872000
P DHYZQ -DYQ
P ZOHDQ +ZOD
P QOHDZ +QOD
```

```c1bs-bounds
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
8 L0*L1*L28; 11 L0*L3*RX_P; 79 L0*L5*RX_P; 47 L0*L6*L27
11 L0*L7*L12; 160 L0*L10*L17; 61 L0*L17*L21; 29 L1*L1*L8
17 L1*L1*DROP_OCR_YZ; 18 L1*L2*L4; 29 L1*L2*L21; 139 L1*L3*L10
64 L1*L3*C_OHD_ZQ; 24 L1*L5*L27; 28 L1*L5*L29; 21 L1*L6*L28
30 L1*L7*L19; 2 L1*L7*L37; 2 L1*L8*DROP_OCQ_Y; 57 L1*L12*L18
16 L1*L12*C_OHD_ZQ; 32 L1*L14*LX_R; 45 L1*L14*LY_R; 8 L1*L16*L29
61 L1*L16*L38; 8 L1*L17*L28; 30 L1*L18*L29; 46 L1*L20*L27
35 L1*L21*L21; 27 L1*L21*L23; 22 L1*L21*L31; 11 L1*L24*L37
13 L1*L24*C_OHD_ZQ; 116 L1*L24*DROP_OHQ_Z; 28 L1*L25*L38; 8 L1*L27*L27
70 L1*L28*L30; 18 L1*L29*L37; 133 L1*L29*C_OHD_ZQ; 7 L1*L31*L31
40 L1*L33*LY_R; 45 L1*L36*LY_R; 21 L1*L38*LX_R; 61 L1*RX_P*DROP_OHQ_Z
8 L2*L3*L23; 27 L2*L7*L28; 3 L2*L14*L17; 56 L3*L5*L22
65 L3*L5*L30; 6 L3*L5*LX_R; 9 L3*L7*L23; 8 L3*L7*L27
125 L3*L8*L11; 244 L3*L8*L14; 33 L3*L10*L18; 37 L3*L10*L28
24 L3*L10*RX_P; 2 L3*L11*L14; 81 L3*L11*L20; 79 L3*L12*L28
7 L3*L12*L34; 15 L3*L12*RY_P; 30 L3*L14*L18; 13 L3*L14*L23
19 L3*L15*L27; 13 L3*L17*L34; 12 L3*L17*L37; 22 L3*L17*L39
27 L3*L18*L29; 139 L3*L18*L30; 89 L3*L18*-OHD; 55 L3*L18*DROP_OHQ_Z
26 L3*L18*DROP_OCQ_Y; 24 L3*L19*L27; 38 L3*L21*L23; 31 L3*L23*L23
35 L3*L27*L33; 25 L3*L27*RX_P; 15 L3*L28*DROP_OHQ_Z; 1 L3*L30*L30
304 L3*L30*L32; 28 L3*L30*LY_R; 2 L3*L32*L32; 1 L3*L34*L36
20 L3*L34*DROP_OHQ_Z; 2 L3*L38*DROP_OCQ_Y; 87 L3*L38*DROP_OCR_YZ; 2 L3*L39*L39
4 L4*L10*L38; 15 L4*L11*L12; 21 L4*L12*L17; 14 L4*L12*RY_P
13 L4*L14*L29; 8 L4*L19*L27; 21 L4*L20*L27; 16 L4*L27*L27
4 L4*L28*RX_P; 4 L4*L32*L38; 4 L4*L38*LY_R; 7 L5*L5*L20
9 L5*L7*L11; 13 L5*L7*L38; 41 L5*L8*L8; 80 L5*L8*L30
110 L5*L11*RX_P; 18 L5*L15*L30; 11 L5*L16*L17; 22 L5*L17*L23
64 L5*L18*L23; 64 L5*L18*DROP_OCQ_Y; 4 L5*L24*RX_P; 4 L5*L26*L38
22 L5*L28*DROP_OHQ_Z; 14 L5*L29*DROP_OCQ_Y; 45 L6*L17*L18; 35 L6*L18*RX_P
13 L6*L23*L28; 1 L7*L14*L17; 7 L7*L17*L23; 21 L7*L23*L27
9 L7*L26*L28; 16 L7*L28*L28; 21 L7*L28*L30; 96 L7*L30*LY_R
16 L7*L36*LY_R; 2 L8*L11*RX_P; 8 L8*L12*L38; 18 L8*L16*L27
137 L8*L18*L28; 725 L8*L18*L30; 58 L8*L18*LY_R; 32 L8*L20*L28
2 L8*L20*L38; 16 L8*L24*L39; 33 L8*L24*LY_R; 97 L8*L27*L33
58 L8*L27*RX_P; 139 L8*L28*L30; 20 L8*L28*C_OHD_ZQ; 6 L8*L30*L38
6 L8*L38*L38; 5 L9*L12*L14; 83 L9*L17*L30; 76 L9*L17*DROP_OCQ_Y
1 L9*L23*L29; 20 L9*L29*LY_R; 617 L10*L17*L30; 154 L10*L17*DROP_OHQ_Z
90 L10*L17*DROP_OCR_YZ; 2 L10*L22*L38; 4 L10*L24*L35; 13 L10*L27*L33
30 L11*L17*L17; 2 L11*L18*L37; 4 L11*L24*L31; 2 L11*L28*L30
2 L12*L12*L31; 13 L12*L12*RY_P; 7 L12*L13*L27; 6 L12*L13*L28
2 L12*L13*L38; 13 L12*L17*L34; 12 L12*L17*DROP_OHQ_Z; 7 L12*L24*L36
2 L12*L24*RY_P; 97 L12*L26*L38; 84 L12*L27*L32; 59 L12*L27*C_OCF_Y
126 L12*L27*DROP_OHQ_Z; 1 L12*L29*L35; 35 L12*L30*C_OHD_ZQ; 2 L12*L38*L38
1 L12*L38*LX_R; 2 L13*L24*LX_R; 18 L14*L14*L21; 2 L14*L14*L31
42 L14*L17*L17; 80 L14*L17*L21; 51 L14*L17*L27; 2 L14*L17*L37
12 L14*L19*L24; 23 L14*L21*L29; 15 L14*L24*L31; 15 L14*L24*L32
32 L14*L27*L29; 152 L14*L27*DROP_OHQ_Z; 1 L14*L29*C_OCF_Y; 2 L14*L30*L38
4 L14*L38*DROP_OHQ_Z; 83 L16*L27*L31; 15 L16*L27*L35; 22 L16*L38*RX_P
22 L17*L17*L30; 10 L17*L18*L35; 12 L17*L20*L33; 76 L17*L27*L33
37 L17*L28*L29; 16 L17*L28*L39; 22 L17*L30*L31; 70 L17*L30*DROP_OCQ_Y
41 L17*L30*LY_R; 16 L17*L31*LY_R; 8 L17*L34*-OHD; 12 L17*+OCF*DROP_OCQ_Y
2 L18*L23*L30; 21 L18*L24*L34; 8 L18*L26*L28; 8 L18*L27*DROP_OCR_YZ
42 L18*L30*RX_P; 148 L18*L30*DROP_OHQ_Z; 10 L19*L19*L38; 17 L19*L27*L30
2 L19*L37*L38; 27 L20*L28*L37; 2 L21*L26*L38; 2 L21*L38*RY_P
31 L22*L29*L37; 4 L22*L30*L38; 7 L23*L25*L27; 2 L23*L25*L38
26 L24*L24*L34; 7 L24*L24*L36; 33 L24*L27*L30; 16 L24*L27*L39
2 L24*L31*RY_P; 15 L24*L38*L39; 12 L24*RY_P*LY_R; 7 L24*DROP_OCQ_Y*LY_R
12 L25*L27*L28; 16 L25*L27*L36; 11 L27*L29*L33; 109 L27*L33*DROP_OHQ_Z
8 L27*RY_P*LY_R; 26 L28*L28*L30; 20 L28*L29*L37; 25 L28*L29*RX_P
44 L28*L30*L30; 43 L28*L30*DROP_OHQ_Z; 8 L28*LY_R*LY_R; 109 L29*DROP_OHQ_Z*LY_R
105 L30*L38*DROP_OHP_YZ; 1 L30*L38*RX_P; 6 L31*L32*L38; 2 L37*L38*L38
86 L38*-OHD*RX_P; 40 +HCF*L27; 97 +OYZ*L1; 2 +OYZ*L10
2 +OYZ*L14; 231 +OYZ*L16; 111 +OYZ*L21; 2 +OYZ*L22
18 +OYZ*L24; 468 +OYZ*L31; 100 +OYZ*-OHD; 295 +OYZ*RX_P
24 -HYZ*L28; 50 -HCY*L3; 3 -HCY*L10; 31 -HCY*L14
106 -HCY*L19; 2 -HCY*L23; 6 -HCY*L25; 182 -HCY*L30
29 -HCY*L34; 71 -HCY*+OCF; 53 -HCY*DROP_OHQ_Z; 20 +OCP*L1
4 -CDP*L4; 33 -CDP*L6; 30 -CDP*L14; 25 -CDP*L29
83 -CDP*L32; 16 -CDP*L37; 5 -CDP*DROP_OCQ_Y; 162 -CYP*L0
157 -CYP*L3; 147 -CYP*L12; 4 -CYP*L22; 2 -CYP*L24
255 -CYP*L30; 160 -CYP*L33; 10 -CYP*RY_P; 39 -CYP*DROP_OHQ_Z
75 -CYP*DROP_OCR_YZ; 14 -CZP*L5; 51 -CZP*L27; 1 +FZP*L17
46 -OHQ*L27; 16 +DFQ*L5; 8 +DFQ*L23; 9 +DFQ*L30
14 +DFQ*L33; 13 +DFQ*L34; 38 +DFQ*L37; 14 +DFQ*RX_P
21 +DFQ*DROP_OCR_YZ; 12 -OHR*L27; 2 +HCR*L17; 12 +HFR*L4
23 +HFR*L15; 76 +HFR*L30; 24 +HFR*L36; 96 +HFR*C_OHD_ZQ
2 +HFR*RX_P; 109 +HFR*DROP_OHQ_Z; 83 +HZR*L1; 34 +HZR*L19
26 +HZR*L25; 7 +HZR*L33; 17 +HZR*DROP_OHQ_Z; 18 +HZR*DROP_OCQ_Y
73 +CYZ*L17; 11 +OYQ*L3; 18 -OZQ*L4; 141 -OZQ*L21
4 -OZQ*L23; 152 -OZQ*L26; 4 -OZQ*L29; 9 -OZQ*-OHD
3 -OZQ*RX_P; 137 -OZQ*DROP_OHQ_Z; 28 +OZR*L23; 7 +OZR*L29
83 +OZR*-OHD; 39 +OZR*+OCF; 31 +OZR*DROP_OHP_YZ; 162 +OZR*DROP_OCQ_Y
7 +OZR*LX_R; 7 -FPQ*L17; 22 -HDQ*L2; 8 -HDQ*L21
13 +CFQ*L14; 8 +CFQ*L21; 8 +CFQ*L31; 125 +YZP*L1
470 +YZP*L8; 2 +YZP*L12; 2 +YZP*L23; 148 +YZP*-OHD
71 +YZP*+OCF; 54 +YZP*DROP_OHP_YZ; 111 +YZP*DROP_OHQ_Z; 65 -ODY*L3
147 -ODY*L18; 66 -ODY*L20; 26 -ODY*L28; 307 -ODY*L30
42 -ODY*L39; 21 -OFY*L28; 26 -DPQ*L12; 2 -DYZ*L24
4 +YQR*L17; 9 -DZQ*L1; 13 -DZQ*L4; 17 -DZQ*L7
4 -DZQ*L10; 1 -DZQ*L12; 18 -DZQ*L14; 26 -DZQ*L21
2 -DZQ*L29; 4 -DZQ*L30; 30 -DZQ*DROP_OHQ_Z; 4 -DZQ*DROP_OCQ_Y
2 -DYQ*L38; 11 C_OPQ_Y*L17; 3 C_HCZ_Y*L28; 3 C_CZQ_Y*L12
18 Q_ODFH_ZQ*L17; 37 Q_OPDZ_Y*L38; 2 Q_OPQR_YZ*L38; 37 SP_HZCD_YQ_ZD1*L17
1 Q_HZCR_Y*L29; 10 SP_HZPD_YQ_HP1*L12; 7 Q_DQZP_Y*L17; 4 SP_DRZP_YQ_RP1*L17
2 Q_FRYP_Q*L17
```

Upper bound: `-813854905521/532400000000`.

### Leaf RULpmpmppmpmmpppp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ -FPQ +CQR -DQR -HDQ +CFQ +YZP +PQR +ODY`.

```c1bs-geometry
P OHDYZ +ODZ
P OHDYQ +ODQ
P HODPR +HPR
P HODQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHPQ -DPQ
P FHCQR -FQR
P YOHDQ +YDQ
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P ZOHQR +ZQR
P ZOYPQ +ZPQ
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
P YHDFZ +YFZ
```

```c1bs-bounds
OHD 0 823/1000 YZQ
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 823/1000 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
1 L0*L7*LX_R; 5 L0*L17*L31; 10 L0*L18*L25; 2 L1*L1*L8
16 L1*L2*L14; 3 L1*L3*L4; 15 L1*L3*DROP_OHQ_Z; 15 L1*L4*L20
9 L1*L6*L23; 1 L1*L6*L29; 1 L1*L7*L10; 15 L1*L7*L14
1 L1*L7*L21; 1 L1*L7*L37; 3 L1*L9*L25; 10 L1*L9*DROP_OHP_YZ
8 L1*L11*L23; 1 L1*L12*L14; 1 L1*L14*L17; 1 L1*L14*L31
2 L1*L14*DROP_OCR_YZ; 15 L1*L15*L29; 10 L1*L16*L27; 1 L1*L19*L30
1 L1*L20*RY_P; 21 L1*L24*DROP_OHQ_Z; 117 L1*L24*DROP_OCQ_Y; 35 L1*L26*L37
40 L1*L27*DROP_OHQ_Z; 157 L1*L27*DROP_OCQ_Y; 2 L1*L29*+OCF; 4 L1*L35*DROP_OCQ_Y
2 L2*L3*L4; 5 L2*L3*L12; 5 L2*L17*L32; 12 L2*L22*L27
4 L2*L27*L30; 7 L2*L30*L38; 3 L2*L36*L38; 2 L2*L38*RY_P
8 L3*L3*-OHD; 1 L3*L5*L15; 10 L3*L5*L20; 3 L3*L7*L22
2 L3*L7*DROP_OHQ_Z; 6 L3*L8*L28; 7 L3*L8*L35; 8 L3*L10*L20
18 L3*L10*DROP_OHQ_Z; 2 L3*L11*L19; 5 L3*L11*L26; 1 L3*L15*L29
19 L3*L16*L30; 4 L3*L17*L23; 45 L3*L18*DROP_OHQ_Z; 48 L3*L18*DROP_OCQ_Y
1 L3*L18*DROP_OCR_YZ; 2 L3*L20*L31; 2 L3*L22*L24; 18 L3*L23*L38
5 L3*L26*L28; 2 L3*L28*DROP_OHP_YZ; 26 L3*L28*DROP_OCQ_Y; 1 L3*L31*LY_R
5 L3*L38*+OCF; 2 L4*L6*L27; 5 L4*L7*L38; 1 L4*L12*L28
27 L4*L17*L22; 4 L4*L30*L38; 4 L5*L8*L38; 1 L5*L17*RX_P
4 L5*L24*LY_R; 1 L5*L27*DROP_OHQ_Z; 9 L5*L29*LY_R; 23 L5*L30*L37
4 L6*L8*L27; 2 L6*L22*L38; 2 L6*L27*L27; 8 L6*L27*DROP_OCQ_Y
15 L6*L27*LY_R; 1 L7*L7*LY_R; 4 L7*L8*L18; 5 L7*L10*DROP_OCR_YZ
3 L7*L11*L28; 14 L7*L12*L16; 1 L7*L13*L23; 4 L7*L13*LY_R
1 L7*L19*L38; 15 L7*L22*LY_R; 1 L7*L28*L37; 3 L7*L35*DROP_OHQ_Z
9 L8*L12*L23; 2 L8*L12*L28; 7 L8*L16*L30; 3 L8*L17*L24
4 L9*L9*L17; 21 L9*L17*L31; 7 L10*L12*L17; 11 L10*L12*L27
2 L10*L12*L28; 3 L10*L24*L27; 1 L10*L24*RX_P; 1 L10*L27*RX_P
3 L10*L27*DROP_OCR_YZ; 3 L11*L30*L37; 8 L12*L17*L20; 14 L12*L17*L29
59 L12*L20*L27; 1 L12*L23*RX_P; 3 L12*L26*RX_P; 145 L12*L27*DROP_OCQ_Y
2 L12*L27*DROP_OCR_YZ; 5 L12*L29*RY_P; 1 L12*L34*LY_R; 10 L12*L38*+OCF
5 L14*L17*L23; 7 L14*L17*L27; 1 L14*L25*L29; 1 L14*L27*L33
11 L14*L27*DROP_OCQ_Y; 2 L14*L27*LY_R; 1 L14*L29*DROP_OCQ_Y; 11 L15*L27*L37
1 L15*L29*L37; 5 L16*L17*-OHD; 2 L16*L24*LY_R; 4 L16*L26*LY_R
11 L16*L27*DROP_OHQ_Z; 7 L16*L30*LY_R; 49 L16*L38*DROP_OCQ_Y; 8 L17*L17*L22
1 L17*L22*L34; 23 L17*L22*L39; 49 L17*L23*L30; 2 L17*L24*L26
6 L17*L27*L35; 1 L17*L28*L28; 4 L17*L28*L30; 19 L17*L34*L37
8 L17*L37*L39; 85 L17*L39*DROP_OCQ_Y; 5 L18*L21*RX_P; 141 L18*L22*L30
7 L18*L26*L29; 1 L18*L29*DROP_OCQ_Y; 92 L18*L30*DROP_OHQ_Z; 5 L18*L30*LX_R
1 L18*L31*L37; 19 L18*L35*DROP_OCQ_Y; 24 L20*L23*L27; 7 L20*L24*L38
22 L20*L28*L30; 1 L20*L38*RY_P; 7 L20*L38*LX_R; 27 L21*L27*DROP_OCQ_Y
2 L21*L34*L38; 1 L21*L36*L38; 51 L22*L27*DROP_OHQ_Z; 50 L22*L28*L30
70 L22*L38*RX_P; 3 L23*L28*RX_P; 5 L23*L38*-OHD; 3 L23*RX_P*RX_P
13 L24*L26*LY_R; 13 L24*L27*DROP_OCR_YZ; 4 L24*RY_P*LY_R; 3 L25*L38*DROP_OHP_YZ
3 L26*L27*L38; 7 L27*L30*RY_P; 1 L27*L33*-OHD; 2 L27*L36*DROP_OCR_YZ
123 L27*-OHD*DROP_OCQ_Y; 1 L28*L28*RX_P; 2 L28*L29*L32; 5 L28*L29*DROP_OHQ_Z
7 L28*L30*+OCF; 12 L28*L33*RX_P; 12 L28*RX_P*DROP_OHQ_Z; 2 L29*L31*L37
6 L29*L32*LY_R; 2 L29*L35*L37; 12 L29*L37*LY_R; 7 L29*RY_P*LY_R
5 L30*+OCF*RX_P; 3 L31*L38*DROP_OCQ_Y; 22 L32*L37*RX_P; 7 L33*L38*DROP_OHP_YZ
1 L33*L38*DROP_OHQ_Z; 11 L37*L38*+OCF; 4 L38*-OHD*DROP_OHP_YZ; 10 RX_P*DROP_OHQ_Z*LY_R
4 +OYZ*L24; 3 +OYZ*L31; 37 +OYZ*RX_P; 2 -HYZ*L0
8 -HCY*L1; 3 -HCY*L14; 4 -HCY*L29; 1 -HCY*L33
16 -HCY*L37; 12 -HCY*-OHD; 42 -HCY*DROP_OCQ_Y; 4 -HCY*LX_R
2 -HDZ*L27; 11 +OCP*L1; 35 +OCP*L3; 6 +OCP*L17
21 +OCP*L33; 22 +OCP*L37; 1 -CDP*L17; 23 -CDP*L22
5 -CDP*-OHD; 10 -CDP*+OCF; 17 -CDP*DROP_OHQ_Z; 1 -CDP*LY_R
1 +DFP*DROP_OCQ_Y; 2 -OHQ*L38; 4 +HFR*L0; 6 +HFR*L20
39 +HFR*L22; 3 +HFR*L23; 1 +HFR*L29; 13 +HFR*DROP_OCR_YZ
2 +HZR*L16; 14 +HZR*L20; 4 +HZR*L22; 3 +OYR*L27
1 +OYQ*L18; 2 +OYQ*L29; 12 +OYQ*L39; 29 +OYQ*DROP_OHP_YZ
20 -OZQ*L2; 5 -OZQ*L11; 2 -OZQ*L14; 6 -OZQ*L24
14 -OZQ*L31; 2 -OZQ*L34; 3 -OZQ*L38; 22 -OZQ*DROP_OHP_YZ
7 +OZR*L1; 11 +OZR*L10; 51 +OZR*L22; 46 +OZR*DROP_OHQ_Z
91 +OZR*DROP_OCQ_Y; 5 +HPQ*L17; 8 -HDQ*L8; 19 -HDQ*L12
7 +YZP*L3; 4 +YZP*L25; 4 +YZP*-OHD; 9 +YZP*+OCF
91 +YZP*DROP_OHQ_Z; 141 +YZP*DROP_OCQ_Y; 7 +YZP*DROP_OCR_YZ; 1 +PQR*L30
1 +ODY*+OCF; 4 +ODY*RX_P; 29 +ODY*DROP_OHQ_Z; 55 +ODY*DROP_OCQ_Y
2 +HQR*L8; 3 +HQR*L9; 12 +HQR*L15; 1 -DPQ*L1
3 -YZQ*L9; 4 -YZQ*+OCF; 37 -YZQ*RX_P; 1 -DZQ*L38
67 -DYZ*L20; 38 -DYZ*L22; 90 -DYZ*DROP_OCQ_Y; 6 -DYZ*DROP_OCR_YZ
5 C_OHQ_Z*L27; 2 C_ODZ_Y*L21; 5 C_ODZ_Y*L24; 1 C_ODZ_Y*L28
1 C_ODZ_Y*-OHD; 8 C_ODZ_Y*DROP_OHP_YZ; 27 C_ODZ_Y*DROP_OCQ_Y; 4 C_OPR_YZ*L27
5 C_HCZ_Y*L8; 1 C_HCZ_Y*L28; 1 C_CZR_Y*L29; 2 Q_ODRH_YZQ*L0
2 Q_ODRH_YZQ*L4; 6 Q_ODRH_YZQ*L14; 76 Q_ODRH_YZQ*L22; 3 Q_OYRH_Z*L2
6 Q_OPRH_YZ*L1; 1 Q_OCQZ_Y*L29; 6 Q_ODFR_YZQ*L20; 5 Q_ODFR_YZQ*L30
1 Q_OPDZ_Y*L27; 11 Q_ODQZ_Y*L1; 5 Q_ODQZ_Y*L16; 1 Q_OPFR_YZQ*L38
2 Q_OYQR_Z*RX_P; 1 SP_HZCD_YQ_ZD1*L27; 2 Q_CQRZ_Y*L17; 3 Q_DQZP_Y*L1
3 M_HDOYQZ_1_1*L29
```

Upper bound: `-466726459853/4004000000000`.

### Leaf RULpmpmppmpmp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ -FPQ +CQR -DQR +HDQ`.

```c1bs-geometry
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOHCQ -DOQ
P DOFPQ -DPQ
P DHCYQ -DYQ
P DHCZQ -DZQ
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P ZOHDQ +ZOD
P ZOHQR +ZQR
P ZODPQ +ZPQ
P QOCYR -QYR
```

```c1bs-bounds
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
2 L0*L1*L29; 2 L0*L1*L31; 4 L0*L1*DROP_OHQ_Z; 1 L0*L2*L31
2 L0*L3*DROP_OHQ_Z; 31 L0*L3*DROP_OCQ_Y; 2 L0*L7*-OHD; 2 L0*L7*RX_P
2 L0*L12*RX_P; 4 L0*L17*L21; 4 L0*L17*DROP_OHQ_Z; 1 L0*L18*L30
1 L0*L19*+OCF; 2 L0*L21*DROP_OCQ_Y; 5 L0*L22*L30; 3 L0*L25*L30
1 L0*L25*L34; 5 L0*L25*+OCF; 59 L0*L25*DROP_OCQ_Y; 4 L0*RX_P*LX_R
2 L1*L2*L11; 1 L1*L2*L29; 4 L1*L2*LY_R; 8 L1*L5*L27
2 L1*L8*L32; 2 L1*L13*L17; 8 L1*L14*L27; 1 L1*L17*L29
2 L1*L17*L31; 2 L1*L27*L35; 5 L1*L27*DROP_OHQ_Z; 49 L1*L27*DROP_OCQ_Y
1 L1*L30*L30; 1 L2*L4*L17; 3 L2*L10*L21; 18 L2*L12*L17
1 L2*L14*LY_R; 27 L2*L16*L23; 1 L2*L16*L29; 1 L2*L22*L25
1 L2*L23*L34; 1 L2*L25*LY_R; 3 L2*L27*L32; 2 L2*L30*DROP_OCR_YZ
1 L3*L3*L17; 1 L3*L3*DROP_OHQ_Z; 1 L3*L3*DROP_OCQ_Y; 1 L3*L7*L14
1 L3*L8*L29; 3 L3*L10*C_OHD_Z; 19 L3*L13*RX_P; 2 L3*L16*L18
62 L3*L17*DROP_OCQ_Y; 1 L3*L17*LX_R; 7 L3*L17*LY_R; 77 L3*L18*DROP_OCQ_Y
1 L3*L19*L28; 1 L3*L22*L23; 12 L3*L22*L27; 1 L3*L26*L29
2 L4*L17*L33; 54 L4*L17*DROP_OCQ_Y; 2 L4*L24*L30; 1 L5*L18*L33
1 L5*L21*L29; 5 L5*L22*L29; 1 L6*L9*L14; 1 L6*L12*L17
1 L6*L31*L38; 1 L7*L13*L27; 1 L7*L27*DROP_OHQ_Z; 1 L7*L31*DROP_OCR_YZ
1 L8*L9*L24; 1 L8*L10*L25; 6 L8*L27*DROP_OHQ_Z; 1 L9*L15*L27
1 L9*L19*L25; 1 L9*L23*L39; 1 L9*L27*L37; 5 L10*L12*L27
1 L10*L12*L37; 3 L10*L16*L17; 2 L10*L16*L27; 2 L10*L25*L39
2 L12*L17*L27; 1 L12*L18*L28; 1 L12*L19*L21; 2 L12*L19*L27
7 L12*L23*RX_P; 1 L12*L24*LY_R; 1 L12*L27*L30; 4 L12*L27*L32
1 L13*L15*L25; 6 L13*L17*L22; 5 L13*L27*L37; 1 L13*L29*DROP_OHP_YZ
2 L14*L17*L24; 1 L14*L17*DROP_OHP_YZ; 8 L14*L27*-OHD; 7 L15*L21*L27
1 L16*L17*L34; 4 L16*L28*RX_P; 1 L17*L17*L29; 1 L17*L17*DROP_OHQ_Z
1 L17*L18*L37; 20 L17*L18*DROP_OCQ_Y; 1 L17*L21*L27; 3 L17*L23*RX_P
5 L17*L25*-OHD; 1 L17*L25*+OCF; 1 L17*L25*DROP_OCQ_Y; 7 L17*L28*L31
1 L17*L29*DROP_OHP_YZ; 5 L17*L29*DROP_OCQ_Y; 3 L17*L32*RX_P; 1 L17*L37*+OCF
1 L17*RX_P*DROP_OCR_YZ; 21 L17*RY_P*DROP_OCQ_Y; 2 L18*L21*DROP_OHP_YZ; 2 L18*L26*L30
3 L18*L27*DROP_OHQ_Z; 1 L19*L23*L23; 1 L20*L27*RY_P; 6 L21*L25*L28
5 L21*L27*L30; 1 L21*L27*DROP_OCQ_Y; 8 L21*L29*LY_R; 1 L21*RX_P*RX_P
1 L22*L22*L25; 13 L22*L25*L28; 1 L22*L25*L39; 1 L22*L27*L30
7 L24*L27*DROP_OCQ_Y; 1 L25*L27*L31; 5 L25*L27*-OHD; 2 L25*L34*L38
2 L26*L30*L38; 1 L27*L30*LX_R; 49 L27*-OHD*DROP_OCQ_Y; 7 L27*DROP_OCQ_Y*LX_R
9 L29*L37*LY_R; 5 L29*DROP_OHP_YZ*DROP_OCQ_Y; 1 L30*L38*LX_R; 2 L31*L38*LY_R
1 KLOW*L12; 5 KLOW*L21; 4 KLOW*DROP_OHP_YZ; 39 KLOW*DROP_OCQ_Y
6 KLOW*DROP_OCR_YZ; 1 +OYZ*L0; 2 +OYZ*L21; 1 +OYZ*L24
1 -HYZ*L3; 4 -OHY*L17; 3 -HCY*L20; 5 -HCY*DROP_OCQ_Y
3 +CDY*L17; 1 -OHZ*L31; 2 -CDP*L13; 5 -CDP*L16
28 -CDP*L22; 49 -CDP*DROP_OCQ_Y; 2 -CYP*DROP_OCR_YZ; 17 +OCQ*L27
7 +HCR*L17; 1 +HFR*L24; 9 +HFR*DROP_OCQ_Y; 1 +DFR*L7
5 +HZR*L27; 1 -DPR*L17; 1 +CYZ*L6; 7 +CYZ*DROP_OHQ_Z
5 +CYZ*DROP_OCQ_Y; 1 +CYZ*LY_R; 22 -OZQ*L2; 1 -OZQ*L10
16 -OZQ*L16; 8 -OZQ*L24; 11 -OZQ*L26; 1 -OZQ*L33
5 -OZQ*L35; 15 -OZQ*RX_P; 1 -OZQ*DROP_OCQ_Y; 2 -OZQ*LY_R
2 +OZR*L17; 8 +OZR*L20; 7 +OZR*L22; 1 +OZR*L31
1 +OZR*L33; 4 +OZR*-OHD; 5 +OZR*LY_R; 2 -FPQ*L4
1 +CQR*RX_P; 1 -DQR*L5; 3 -DQR*L8; 4 -DQR*L23
14 -DQR*-OHD; 2 -DQR*RY_P; 7 -DQR*DROP_OHQ_Z; 12 -DQR*DROP_OCQ_Y
5 +HDQ*L7; 3 +HDQ*L8; 8 +HDQ*L25; 4 +HDQ*-OHD
4 +HDQ*+OCF; 7 +HDQ*DROP_OHQ_Z; 8 +HDQ*DROP_OCQ_Y; 9 +HDQ*DROP_OCR_YZ
4 +HDQ*LX_R; 10 +HQR*L4; 2 +HQR*L15; 7 +HQR*L37
1 -DZQ*L3; 4 C_OCQ_Y*L27; 2 C_OYR_Z*L0; 3 C_OQR_Z*L30
3 C_HCZ_Y*L23; 1 C_HCZ_Y*L30; 1 C_HDR_Q*L8; 2 C_HDR_Q*L13
7 C_HDR_Q*DROP_OHP_YZ; 1 C_HDR_Q*RY_P; 34 C_HDR_Q*DROP_OCQ_Y; 2 C_HDR_Q*DROP_OCR_YZ
3 C_HDR_Q*LY_R; 2 C_CDR_Q*L18; 1 C_CZQ_Y*L23; 3 Q_OCDH_YZ*L27
1 Q_ODRH_ZQ*L18; 5 Q_ODRH_ZQ*L27; 31 Q_OCQZ_Y*L17; 3 Q_OCPQ_Y*L17
4 Q_OYQR_Z*L39; 7 Q_HDFR_Q*DROP_OCQ_Y; 1 Q_HDFR_Q*LX_R; 1 Q_CPQZ_Y*L12
15 RIGHTSUP
```

Upper bound: `-376339697/22000000000`.

### Leaf RULpmpmppmpp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ -FPQ +CQR +DQR`.

```c1bs-geometry
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DOCQR -DOQ
P DOFPQ -DPQ
P DHCQR -DHQ
P DHFYQ -DYQ
P DHFZQ -DZQ
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P ZOHDQ +ZOD
P ZOHQR +ZQR
P ZODPQ +ZPQ
P QOCYR -QYR
P QODPR -QPR
```

```c1bs-bounds
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
197 L0*L1*L29; 64 L0*L2*RX_P; 66 L0*L3*L18; 93 L0*L3*L29
183 L0*L12*LY_R; 103 L0*L15*L29; 20 L0*L17*L38; 287 L0*L20*L27
17 L0*L24*L27; 19 L1*L1*L14; 19 L1*L1*L39; 251 L1*L1*DROP_OHQ_Z
105 L1*L2*L10; 26 L1*L2*L14; 536 L1*L2*L18; 539 L1*L2*L20
372 L1*L2*L23; 612 L1*L4*L24; 222 L1*L4*RX_P; 59 L1*L7*L24
71 L1*L12*L17; 195 L1*L12*L20; 62 L1*L12*L24; 173 L1*L12*L39
118 L1*L17*L27; 27 L1*L23*L27; 264 L1*L24*L24; 290 L1*L24*L29
14 L1*L24*L30; 23 L1*L24*L36; 405 L1*L24*DROP_OCQ_Y; 49 L1*L27*L38
25 L1*L29*RX_P; 205 L1*L30*L31; 49 L1*RX_P*LY_R; 609 L2*L2*L23
36 L2*L4*L21; 80 L2*L4*L30; 278 L2*L4*L36; 10 L2*L7*L32
13 L2*L10*L21; 127 L2*L12*L39; 147 L2*L14*L17; 64 L2*L14*L23
14 L2*L14*L39; 271 L2*L18*L23; 293 L2*L18*L31; 167 L2*L19*L29
1109 L2*L22*L27; 25 L2*L24*LY_R; 196 L2*L27*L32; 227 L2*L27*L39
286 L2*L27*DROP_OHP_YZ; 609 L2*L29*DROP_OCQ_Y; 27 L2*L30*L38; 105 L2*L38*LY_R
451 L3*L4*L27; 249 L3*L9*L27; 224 L3*L17*L21; 324 L3*L17*L37
275 L3*L18*L37; 597 L3*L18*RX_P; 19 L3*L24*L38; 164 L3*L27*L30
75 L4*L4*L21; 132 L4*L4*L25; 63 L4*L6*L17; 79 L4*L7*L7
231 L4*L8*L17; 64 L4*L8*L23; 31 L4*L12*L21; 4 L4*L12*LY_R
207 L4*L15*L17; 285 L4*L17*C_OHD_Z; 316 L4*L17*DROP_OHP_YZ; 275 L4*L17*DROP_OHQ_Z
670 L4*L17*DROP_OCQ_Y; 51 L4*L18*L29; 27 L4*L21*L24; 380 L4*L21*LY_R
202 L4*L24*L31; 662 L4*L27*DROP_OHQ_Z; 64 L4*L30*L37; 63 L5*L16*L29
140 L5*L23*L29; 48 L5*L29*L32; 20 L6*L17*L38; 106 L6*L22*L27
47 L6*L22*L29; 288 L6*L24*L27; 19 L6*L24*L38; 193 L6*L27*+OCF
49 L7*L8*L17; 43 L7*L8*L23; 22 L7*L15*L38; 32 L7*L23*L29
145 L7*L23*L30; 39 L7*L27*C_OHD_Z; 100 L8*L12*L21; 100 L8*L12*L23
69 L8*L17*+OCF; 19 L8*L25*L29; 115 L8*L27*L30; 121 L8*L27*LY_R
58 L8*L28*L29; 69 L9*L17*L29; 62 L9*L23*L27; 18 L9*L27*L35
18 L10*L10*L27; 183 L10*L12*L27; 26 L10*L17*L26; 49 L10*L17*L28
20 L10*L17*L31; 20 L10*L17*L32; 133 L10*L24*L30; 18 L10*L27*L35
30 L10*L27*DROP_OHP_YZ; 49 L10*L27*LY_R; 48 L10*L28*L29; 13 L10*L29*L35
20 L10*L29*RX_P; 20 L11*L17*L35; 56 L11*L27*RX_P; 36 L11*L29*DROP_OCR_YZ
111 L12*L12*L27; 141 L12*L12*L38; 25 L12*L14*L27; 231 L12*L17*L28
7 L12*L17*L32; 100 L12*L21*L38; 14 L12*L23*L28; 19 L12*L27*L27
70 L12*L31*L38; 77 L13*L23*L27; 77 L13*L27*L36; 81 L13*L28*L29
64 L14*L17*L30; 111 L14*L21*L24; 64 L14*L22*L29; 90 L14*L24*L27
106 L14*L27*LX_R; 22 L14*L29*L35; 80 L14*L29*C_OHD_Z; 31 L15*L21*L29
18 L15*L24*L38; 202 L16*L17*RY_P; 312 L17*L17*DROP_OCR_YZ; 312 L17*L18*L24
24 L17*L18*L28; 228 L17*L18*L39; 202 L17*L18*DROP_OHP_YZ; 139 L17*L22*L28
134 L17*L22*L30; 134 L17*L23*L30; 139 L17*L23*-OHD; 111 L17*L23*+OCF
25 L17*L24*DROP_OCR_YZ; 167 L17*L27*C_OHD_Z; 49 L17*L28*L32; 24 L17*L28*RY_P
64 L17*L33*L34; 100 L17*L37*+OCF; 24 L18*L29*-OHD; 75 L18*L29*DROP_OHQ_Z
228 L18*L39*RX_P; 489 L20*L22*L27; 134 L20*L28*L29; 50 L21*L27*L29
46 L21*L27*L30; 1 L21*L30*LY_R; 34 L22*L24*L29; 107 L23*L24*L30
27 L23*L27*L34; 489 L23*L27*DROP_OHQ_Z; 82 L24*L24*L27; 191 L24*L24*L28
82 L24*L24*LY_R; 57 L24*L27*DROP_OHQ_Z; 313 L24*L28*L29; 147 L26*L29*L34
36 L27*L27*+OCF; 170 L27*L29*L31; 62 L27*L31*L37; 36 L27*L31*DROP_OCR_YZ
22 L27*L33*L37; 27 L27*L37*L39; 49 L27*L38*DROP_OCR_YZ; 25 L27*RX_P*LX_R
71 L28*L29*L34; 140 L28*L29*-OHD; 272 L28*L29*DROP_OCQ_Y; 13 L29*L32*L35
81 L29*L36*LY_R; 742 L29*DROP_OCQ_Y*LY_R; 70 L30*L30*L39; 36 L30*LY_R*LY_R
495 KLOW*L4; 76 KLOW*L14; 63 KLOW*L24; 261 KLOW*DROP_OHQ_Z
99 KLOW*DROP_OCQ_Y; 272 KLOW*LX_R; 36 +OYZ*L1; 102 +OYZ*L2
162 +OYZ*L9; 14 +OYZ*L14; 23 +OYZ*L20; 44 +OYZ*DROP_OHP_YZ
20 -HYZ*L17; 131 -HCY*L2; 36 -HCY*L15; 64 -HCY*L20
30 -HCY*L24; 205 -HCY*L30; 36 -HCY*-OHD; 30 -HCY*LX_R
70 +OCP*L0; 21 +OCP*L15; 826 +OCP*L17; 51 +OCP*L28
62 +OCP*L30; 983 +OCP*RX_P; 90 +OCP*DROP_OCQ_Y; 134 -CDP*L14
752 -CDP*L16; 231 -CDP*L30; 342 -CDP*L34; 260 -CDP*+OCF
116 -CDP*C_OHD_Z; 200 -CDP*DROP_OHQ_Z; 456 -CDP*DROP_OCQ_Y; 167 +DFP*L3
24 +DFP*L28; 75 +DFP*L37; 234 -ODP*L17; 57 -CYP*L12
267 -HFQ*L3; 36 -HFQ*L9; 14 -HFQ*L34; 451 +CDQ*L27
144 +DFQ*L9; 95 +DFQ*L12; 50 +DFQ*L14; 587 +DFQ*L26
263 +DFQ*+OCF; 75 +DFQ*RY_P; 87 +DFQ*LX_R; 200 +DFQ*LY_R
9 -OHR*L29; 25 +HCR*L17; 328 +HFR*L4; 36 +HFR*L11
1 +HFR*L14; 25 +HFR*L16; 134 +HFR*L21; 257 +HFR*L22
93 +HFR*L31; 19 +HYR*L29; 221 +HZR*L1; 4 +HZR*L5
36 +HZR*L10; 354 +HZR*L12; 173 +HZR*L14; 258 +HZR*L22
177 +HZR*DROP_OCQ_Y; 17 +HZR*LY_R; 151 +CYZ*L2; 218 +CYZ*L12
113 +CYZ*L14; 77 +CYZ*L20; 232 +CYZ*L30; 127 +CYZ*L36
50 -OZQ*L5; 77 -OZQ*L6; 100 -OZQ*L9; 335 -OZQ*L16
223 -OZQ*L24; 41 -OZQ*L27; 448 -OZQ*LY_R; 18 +OZR*L2
148 +OZR*L10; 78 +OZR*L13; 18 +OZR*L30; 71 +OZR*L39
111 +OZR*DROP_OHQ_Z; 265 +DQR*L3; 191 +DQR*L24; 230 +DQR*L27
113 +DQR*L29; 279 +DQR*C_OHD_Z; 230 +DQR*LY_R; 160 +HQR*L2
131 +HQR*L4; 116 +HQR*L23; 134 +HQR*L25; 26 +HQR*L31
237 +HQR*L34; 197 +HQR*L39; 116 +HQR*DROP_OCQ_Y; 312 +CPR*L17
46 -DZQ*L29; 327 -FQR*L4; 8 -FQR*L6; 81 -FQR*L30
107 C_DFR_Q*L0; 132 C_DFR_Q*L4; 202 C_DFR_Q*L8; 122 C_DFR_Q*L15
196 C_DFR_Q*L23; 305 C_DFR_Q*DROP_OHQ_Z; 133 Q_OYRH_Z*L30; 335 Q_OCQZ_Y*L17
83 Q_HZCD_Y*L17; 96 Q_HDFR_Q*L3; 8 Q_HDFR_Q*L7; 288 Q_HDFR_Q*L24
577 RIGHTSUP
```

Upper bound: `-337185459/22000000000`.

### Leaf RULpmpmppp

Assumptions: `+CYZ -OYP +OYQ -OZQ +OZR +HPQ +FPQ`.

```c1bs-geometry
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FOHPQ +FOQ
P FOCPQ +FCQ
P FODQR -FQR
P FHCYQ +FYQ
P FHCZQ +FZQ
P YOHFQ -YOF
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P YOCFZ +YFZ
P YOFQR +YQR
P ZOHQR +ZQR
P POHZQ -PZQ
P POFQR +PQR
P QOCFR -QCR
```

```c1bs-bounds
OHQ 10 279/880 Z
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
387 L0*L0*L13; 115 L0*L3*L8; 41 L0*L3*L11; 32 L0*L3*L34
43 L0*L3*+OCF; 137 L0*L3*DROP_OCQ_Y; 176 L0*L5*L17; 237 L0*L6*L28
54 L0*L6*L39; 156 L0*L6*RX_P; 77 L0*L8*L30; 63 L0*L8*RX_P
53 L0*L12*L28; 105 L0*L13*L27; 21 L0*L17*L28; 167 L0*L17*L31
18 L0*L17*L39; 238 L0*L17*DROP_OCQ_Y; 366 L0*L21*L24; 64 L0*L21*L30
9 L0*L24*L32; 207 L1*L2*L21; 33 L1*L11*L17; 19 L1*L14*L21
152 L1*L14*L24; 293 L1*L17*L17; 72 L1*L18*L21; 234 L1*L24*DROP_OHQ_Z
710 L1*L24*DROP_OCQ_Y; 108 L1*L25*L28; 112 L2*L14*L17; 60 L2*L21*L28
218 L2*L24*L27; 115 L2*L24*LY_R; 19 L2*L28*LX_R; 59 L3*L3*L32
43 L3*L3*DROP_OCQ_Y; 224 L3*L6*L23; 80 L3*L6*L28; 4 L3*L10*L12
2 L3*L12*L15; 8 L3*L12*L19; 1 L3*L14*L14; 2 L3*L14*L38
77 L3*L16*L28; 91 L3*L17*L22; 61 L3*L17*-OHD; 162 L3*L18*L22
154 L3*L18*L24; 308 L3*L18*DROP_OHQ_Z; 166 L3*L18*LX_R; 226 L3*L22*L28
2 L3*L22*L38; 1 L3*L23*L30; 2 L3*L28*L35; 9 L4*L6*L38
81 L4*L7*L27; 87 L4*L14*L17; 18 L4*L14*L27; 356 L4*L17*L20
189 L4*L27*L37; 45 L4*L28*C_OCF_Y; 2 L4*L28*LX_R; 1 L5*L10*L21
48 L5*L12*L28; 143 L5*L17*RX_P; 189 L5*L22*L27; 7 L5*L24*L38
2 L5*L25*L28; 9 L5*L27*L31; 131 L6*L6*L19; 143 L6*L6*L23
11 L6*L10*L17; 52 L6*L10*L21; 222 L6*L10*RX_P; 206 L6*L17*DROP_OCQ_Y
231 L6*L17*LY_R; 74 L6*L18*L23; 27 L6*L22*L31; 9 L6*L23*L38
42 L6*L24*L34; 14 L6*L27*L38; 656 L6*L27*DROP_OHQ_Z; 952 L6*L27*DROP_OCQ_Y
14 L6*L28*L30; 11 L7*L18*L30; 22 L7*L23*L28; 47 L7*L25*L28
15 L7*L27*L32; 162 L7*L27*L37; 14 L7*L28*L33; 68 L8*L10*L17
30 L8*L17*L27; 67 L8*L18*L23; 75 L8*L23*L30; 7 L8*L27*LX_R
7 L9*L24*L26; 168 L10*L17*L20; 101 L10*L17*L21; 2 L10*L21*L31
5 L10*L28*L33; 72 L10*L28*DROP_OCR_YZ; 24 L11*L21*L28; 72 L11*L26*L28
3 L11*L27*L33; 9 L12*L14*L27; 89 L12*L17*L17; 44 L12*L17*L18
11 L12*L18*L29; 68 L12*L18*L33; 1 L12*L19*L38; 78 L12*L20*L27
31 L12*L21*LY_R; 1 L12*L22*L31; 226 L12*L23*L27; 42 L12*L27*L29
44 L12*L27*L32; 30 L12*L27*RX_P; 359 L12*L27*DROP_OCQ_Y; 5 L13*L28*L32
44 L14*L17*L17; 68 L14*L17*L28; 68 L14*L17*L38; 19 L14*L21*L28
44 L14*L27*L29; 69 L15*L17*L32; 18 L15*L18*L27; 3 L15*L23*L27
18 L15*L27*RY_P; 30 L16*L17*RY_P; 371 L16*L24*LY_R; 16 L16*L28*L29
233 L16*L28*DROP_OCQ_Y; 89 L17*L17*L30; 89 L17*L17*L35; 293 L17*L17*-OHD
28 L17*L18*L23; 89 L17*L18*L31; 30 L17*L18*RX_P; 160 L17*L19*L29
485 L17*L20*L27; 28 L17*L23*RY_P; 67 L17*L23*LY_R; 422 L17*L27*DROP_OCQ_Y
30 L17*L30*DROP_OCR_YZ; 1 L17*L33*-OHD; 40 L17*-OHD*-OHD; 111 L18*L18*L29
67 L18*L21*L38; 4 L18*L23*L24; 68 L18*L30*L30; 29 L20*L28*L38
42 L21*L28*L29; 165 L21*L28*L31; 73 L21*L30*L32; 1 L21*L34*L38
498 L24*L27*DROP_OHP_YZ; 35 L24*L28*L29; 41 L27*L31*L34; 125 L27*L33*-OHD
3 L27*L36*L37; 485 L27*L37*DROP_OHP_YZ; 103 L27*+OCF*LX_R; 127 L27*DROP_OHP_YZ*LX_R
48 L28*L28*L33; 10 L28*L29*L34; 9 L28*L29*L35; 46 L28*L29*+OCF
12 L28*L29*LY_R; 61 L28*L32*RX_P; 19 L28*L39*RX_P; 129 L28*+OCF*+OCF
150 L28*C_OCF_Y*RX_P; 341 KLOW*L6; 138 KLOW*L12; 49 KLOW*L19
137 KLOW*L26; 67 KLOW*L30; 195 KLOW*RY_P; 60 KLOW*DROP_OHQ_Z
192 KLOW*DROP_OCQ_Y; 212 FAN*L17; 31 FAN*L27; 19 +HCF*L27
51 +OYZ*L9; 46 +OYZ*L12; 1 +OYZ*L14; 9 +OYZ*L22
12 +OYZ*L24; 95 +OYZ*L31; 48 +OYZ*L33; 23 +OYZ*L37
44 +OYZ*DROP_OHP_YZ; 41 +OYZ*LY_R; 46 -HCY*L0; 41 -HCY*L3
23 -HCY*L6; 18 -HCY*L16; 94 -HCY*L19; 5 -HCY*L23
77 -HCY*L30; 62 -OHZ*L21; 200 -OHP*L27; 5 -CDP*L8
61 -CDP*L11; 31 -CDP*L20; 19 -CDP*L33; 209 -CDP*-OHD
16 -CDP*DROP_OCQ_Y; 245 -CYP*L7; 1 -CYP*L14; 12 -CYP*L25
68 -CYP*L30; 34 -CYP*L37; 97 -CYP*-OHD; 19 -CYP*RX_P
199 -CYP*DROP_OHQ_Z; 3 -CYP*LY_R; 155 +DYP*L17; 43 +CDQ*L2
9 +CDQ*L14; 2 +CDQ*L38; 33 +DFQ*L6; 134 +DFQ*L8
9 +DFQ*L11; 10 +DFQ*L15; 34 +DFQ*L24; 107 +DFQ*DROP_OHP_YZ
193 +DFQ*RX_P; 104 +DFQ*DROP_OCQ_Y; 189 +DFQ*DROP_OCR_YZ; 34 +DFQ*LX_R
167 -CYQ*L17; 466 -OHR*L1; 62 -OHR*L19; 61 +HFR*L1
371 +HFR*L16; 130 +HFR*L19; 44 +HFR*L34; 256 +HFR*-OHD
86 +HFR*+OCF; 108 +HFR*RY_P; 494 +HFR*DROP_OHQ_Z; 600 +HFR*DROP_OCQ_Y
21 +DFR*L16; 10 +DFR*L29; 7 +DFR*L31; 391 +HZR*L1
54 +HZR*L7; 9 +HZR*L14; 4 +HZR*-OHD; 12 +HZR*+OCF
105 +HZR*DROP_OHQ_Z; 110 +HZR*DROP_OCQ_Y; 9 -FYR*L28; 44 -OZP*L17
41 +CYZ*L0; 148 +CYZ*L12; 112 +CYZ*L17; 1 +CYZ*L18
54 +CYZ*L21; 9 +CYZ*L23; 12 +CYZ*L25; 145 +CYZ*L30
1 +CYZ*L36; 54 +CYZ*DROP_OHQ_Z; 84 -OYP*L17; 12 -OYP*L24
3 -OYP*L27; 5 +OYQ*L1; 235 +OYQ*L3; 52 +OYQ*L7
2 +OYQ*L8; 101 +OYQ*L18; 73 +OYQ*L30; 23 +OYQ*L39
105 -OZQ*L24; 22 -OZQ*L38; 201 +OZR*L0; 11 +OZR*L6
17 +OZR*L22; 64 +FPQ*L8; 111 +FPQ*L18; 1 +FPQ*L27
76 +FPQ*L29; 38 +FPQ*-OHD; 119 +FPQ*RX_P; 104 +FPQ*DROP_OCQ_Y
101 +CPQ*L6; 230 +CPQ*L9; 119 +CPQ*L17; 111 +CPQ*L19
34 +CPQ*L32; 104 -DPQ*L22; 210 -CFQ*L28; 4 -FQR*L18
1 -OFY*L27; 83 C_CDF_Q*L17; 185 C_DFP_Q*L6; 41 C_DFP_Q*L16
21 C_DFP_Q*L21; 146 C_DFP_Q*L27; 298 C_DFP_Q*L31; 46 C_DFP_Q*L37
39 C_DFP_Q*DROP_OCQ_Y; 21 C_DFP_Q*LX_R; 346 C_DFP_Q*LY_R; 34 Q_OPFH_YZ*L27
34 Q_OYFR_Z*L17; 200 Q_HPDF_Q*L27; 56 Q_CPDF_Q*L6; 139 Q_CPDF_Q*L8
2 Q_CDFR_Q*L28; 3 Q_CPQZ_Y*L27
```

Upper bound: `-6617176367/11000000000`.

### Leaf RULpmpp

Assumptions: `+CYZ -OYP +OYQ +OZQ`.

```c1bs-geometry
C OCQ YZ P -CQP 9977/12500
P OHZQR +OZR
P HODPR +HPR
P HOFQR +HQR
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHZQ -YZQ
P YOHZR -YZR
P YOHPQ +YPQ
P ZOHPQ +ZPQ
C OYR Z Q -YRQ 509143/774400
P QOYZR -QZR
```

```c1bs-bounds
OCQ 11 347/440 YZ
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 21/200 907/1000
m 197/250 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
14 L0*L0*L27; 14 L0*L1*L21; 27 L0*L1*L24; 15 L0*L3*L10
17 L0*L7*L17; 1 L0*L7*L23; 21 L0*L8*L30; 9 L0*L10*RX_P
12 L0*L14*RX_P; 14 L0*L17*L25; 27 L0*L17*L31; 17 L0*L21*L38
27 L0*L22*L38; 53 L0*L23*L29; 9 L0*L29*L32; 3 L0*L29*L37
4 L0*L30*L32; 23 L1*L5*L17; 5 L1*L6*L12; 9 L1*L8*L24
11 L1*L8*L38; 28 L1*L9*L21; 3 L1*L9*L23; 9 L1*L9*LY_R
74 L1*L10*L24; 49 L1*L12*L27; 9 L1*L12*L31; 8 L1*L13*L21
8 L1*L15*L17; 33 L1*L16*L24; 13 L1*L16*L28; 7 L1*L17*RX_P
23 L1*L21*L22; 4 L1*L21*L24; 25 L1*L21*L31; 42 L1*L22*L24
5 L1*L24*L25; 21 L1*L24*L26; 19 L1*L24*L33; 60 L1*L27*L30
30 L1*L27*+OCF; 2 L1*L28*L37; 1 L1*L28*+OCF; 7 L1*L29*L38
1 L1*L30*RX_P; 29 L1*L37*L38; 2 L2*L3*L29; 8 L2*L3*L38
5 L2*L17*L28; 9 L2*L18*RX_P; 22 L2*L20*L27; 9 L2*L24*LY_R
30 L2*L27*L34; 2 L2*L29*L31; 10 L2*L32*RX_P; 26 L3*L3*L17
32 L3*L3*DROP_OHP_YZ; 1 L3*L5*LY_R; 2 L3*L6*L8; 15 L3*L6*L17
18 L3*L8*L28; 32 L3*L9*L17; 3 L3*L10*L11; 22 L3*L11*L31
8 L3*L12*L18; 4 L3*L13*L38; 2 L3*L13*-OHD; 3 L3*L16*L18
31 L3*L17*LY_R; 35 L3*L18*L30; 16 L3*L18*L36; 28 L3*L18*L37
15 L3*L21*L22; 22 L3*L21*L32; 23 L3*L22*L22; 9 L3*L24*L26
12 L3*L27*L39; 17 L3*L27*-OHD; 21 L3*L28*+OCF; 8 L3*L30*RX_P
29 L3*L31*L38; 8 L3*LY_R*LY_R; 12 L4*L17*L29; 12 L4*L24*L27
4 L4*L24*LY_R; 8 L4*L27*LX_R; 2 L4*L29*L31; 2 L4*L29*L37
2 L5*L7*DROP_OCQ_YZ; 3 L5*L7*DROP_OCR_YZ; 1 L5*L13*L22; 10 L5*L16*LY_R
2 L5*L17*L17; 2 L5*L20*L29; 2 L5*L23*L38; 19 L5*L30*RX_P
1 L6*L7*L38; 15 L6*L16*L38; 15 L6*L17*L31; 5 L6*L22*L27
6 L6*L24*LY_R; 4 L6*L27*L30; 8 L6*L27*L37; 6 L6*L27*+OCF
10 L6*L27*DROP_OCR_YZ; 9 L6*L38*LY_R; 6 L7*L14*L17; 14 L7*L17*L27
1 L7*L22*L39; 3 L7*L24*L30; 1 L7*L25*L32; 4 L7*L28*-OHD
5 L7*L38*DROP_OCQ_YZ; 15 L8*L13*L17; 14 L8*L17*L18; 16 L8*L17*L20
13 L8*L17*L27; 14 L8*L17*RY_P; 3 L8*L24*LY_R; 2 L8*L25*L38
4 L8*L27*L29; 19 L8*L27*L30; 16 L8*L27*L38; 11 L8*L30*L30
16 L9*L9*L12; 5 L9*L10*L25; 20 L9*L14*L37; 3 L9*L17*L23
16 L9*L17*L39; 14 L9*L23*L38; 29 L9*L27*L37; 3 L9*L38*DROP_OCR_YZ
4 L10*L11*L24; 15 L10*L17*L29; 53 L10*L17*L37; 14 L10*L24*L32
7 L10*L24*L38; 11 L10*L24*LY_R; 3 L11*L21*L27; 19 L11*L21*L30
18 L11*L23*L29; 6 L11*L31*LY_R; 7 L12*L12*L13; 2 L12*L12*L25
2 L12*L14*L21; 2 L12*L14*L31; 11 L12*L23*L23; 1 L12*L24*RX_P
5 L12*L27*L27; 10 L12*L27*DROP_OCQ_YZ; 3 L12*L28*L37; 7 L12*L30*L39
2 L12*L31*L38; 13 L13*L17*L32; 2 L13*L24*L30; 1 L13*L25*L29
19 L13*L27*L31; 7 L14*L18*RX_P; 11 L14*L20*L23; 12 L14*L20*L31
14 L14*L26*RX_P; 5 L14*L29*LY_R; 19 L14*L31*L37; 3 L15*L20*L28
2 L15*L28*L29; 34 L16*L17*RX_P; 16 L16*L21*L38; 23 L17*L17*DROP_OHP_YZ
6 L17*L21*L34; 7 L17*L23*L24; 15 L17*L24*L34; 1 L17*L25*L36
14 L17*L27*L39; 23 L17*L27*DROP_OCR_YZ; 9 L17*L28*L36; 6 L17*L30*DROP_OCQ_YZ
41 L17*L31*L34; 40 L17*L31*+OCF; 28 L17*L32*L37; 13 L17*L32*LY_R
7 L17*L34*RX_P; 7 L17*L36*L38; 7 L17*L36*RY_P; 7 L17*L37*LY_R
7 L17*-OHD*LX_R; 12 L17*DROP_OCQ_YZ*DROP_OCR_YZ; 25 L18*L22*L30; 8 L19*L30*L30
15 L20*L21*L27; 15 L20*L23*L29; 4 L20*L28*L30; 2 L20*L28*L34
10 L20*L28*DROP_OHP_YZ; 15 L20*L38*LY_R; 15 L21*L22*L24; 58 L21*L23*L27
7 L21*L27*L38; 5 L22*L24*LY_R; 20 L22*L26*RX_P; 71 L22*L27*L27
8 L22*L29*RX_P; 2 L22*L30*L30; 23 L23*L23*L29; 1 L23*L25*L29
9 L23*L25*L30; 10 L23*L25*L38; 20 L23*L27*L31; 2 L23*L28*L30
8 L23*L31*L38; 8 L23*L31*RX_P; 2 L24*L24*L38; 8 L24*L27*L37
2 L24*L30*L31; 2 L25*L29*L30; 14 L26*L38*LY_R; 14 L27*L27*-OHD
10 L27*L28*DROP_OHP_YZ; 9 L27*L30*L37; 9 L27*L31*DROP_OCR_YZ; 11 L27*L32*LX_R
14 L27*L32*LY_R; 71 L27*L37*-OHD; 4 L27*L37*LX_R; 25 L27*L38*RX_P
7 L27*+OCF*DROP_OCR_YZ; 23 L27*RX_P*LY_R; 71 L27*DROP_OCQ_YZ*LY_R; 2 L28*L29*L30
2 L28*L32*DROP_OCQ_YZ; 13 L28*L33*RX_P; 20 L28*L37*RX_P; 13 L28*L39*RX_P
6 L29*L36*LY_R; 7 L30*L30*L34; 8 L30*L31*RX_P; 5 L30*L33*L38
9 L30*L38*+OCF; 5 L30*LY_R*LY_R; 11 L31*L31*L31; 8 L31*L38*DROP_OHP_YZ
5 L34*L38*RX_P; 9 L38*DROP_OHP_YZ*LY_R; 29 L38*RX_P*DROP_OCR_YZ; 1 L38*LX_R*LX_R
11 RX_P*RX_P*RX_P; 4 KLOW*L12; 14 +HCD*L17; 1 +HDF*RX_P
242 +OYZ*L23; 13 +OYZ*L27; 146 +OYZ*L31; 22 +OYZ*L35
105 +OYZ*L37; 17 +OYZ*+OCF; 179 +OYZ*DROP_OCQ_YZ; 10 +OYZ*LY_R
3 -HYZ*L17; 8 -HYZ*L30; 18 -HCY*L8; 4 -HCY*L14
70 -HCY*L22; 41 -HCY*L30; 13 -HCY*L31; 31 -HCY*+OCF
68 -HCY*DROP_OHP_YZ; 15 -OHZ*L27; 1 +CDZ*L27; 6 +CFZ*L17
1 +DFZ*L27; 53 +OCP*L3; 20 -CDP*L20; 20 -CDP*L22
32 -CDP*L30; 11 -CDP*L39; 36 -CDP*+OCF; 2 -CDP*DROP_OHP_YZ
47 -CYP*L8; 2 -CYP*L14; 9 -CYP*L20; 8 -CYP*L22
25 -CYP*+OCF; 7 -CZP*L17; 9 -HFQ*L12; 15 -HFQ*L20
17 -HFQ*L27; 12 -HFQ*L32; 1 -HFQ*+OCF; 6 -HFQ*LX_R
1 +DFQ*L3; 4 +DFQ*L8; 2 +DFQ*L36; 11 +DFQ*DROP_OHP_YZ
17 +HZQ*L27; 61 -OHR*L22; 4 +HFR*L4; 6 +HFR*L6
2 +HFR*L11; 11 +HFR*L16; 10 +HFR*DROP_OCR_YZ; 157 +CYZ*L8
3 +CYZ*L11; 13 +CYZ*L14; 69 +CYZ*L17; 3 +CYZ*L21
13 +CYZ*L36; 34 +CYZ*L37; 14 +CYZ*-OHD; 125 +CYZ*DROP_OHP_YZ
3 +CYZ*DROP_OCR_YZ; 35 -OYP*L9; 80 -OYP*L12; 17 -OYP*L22
19 -OYP*L31; 57 +OZQ*L1; 3 +OZQ*L4; 58 +OZQ*L8
12 +OZQ*L10; 25 +OZQ*L18; 11 +OZQ*L23; 2 +OZQ*L30
52 +OZQ*-OHD; 18 +OZQ*DROP_OCR_YZ; 9 +HQR*L2; 12 +HQR*L8
16 +HQR*L16; 15 +HQR*L21; 31 +HQR*L27; 19 +HQR*L33
67 +HQR*-OHD; 58 +HQR*DROP_OCQ_YZ; 5 +HQR*LX_R; 31 +HQR*LY_R
38 -FQR*L0; 3 -FQR*L16; 6 -FQR*L25; 6 -FQR*L29
9 -FQR*L30; 1 -FQR*L39; 25 -YZQ*L38; 73 +YQR*L0
25 +YQR*L10; 3 +YQR*L24; 6 +ZQR*L17; 2 C_OCQ_YZ*L5
23 C_OCR_YZ*L17; 44 C_OYQ_Z*L30; 37 C_OYQ_Z*L39; 15 C_HCZ_Y*L12
9 C_CZR_Y*L17; 9 Q_HZCR_Y*L1
```

Upper bound: `-21038888353/22000000000`.

### Leaf RULpp

Assumptions: `+CYZ +OYP`.

```c1bs-geometry
P OHDYP -ODY
P OHFYP -OFY
P OHYPQ +OYQ
P HODPR +HPR
P HOFQR +HQR
P CODPQ +CPQ
P CODPR +CPR
P DCFPQ -DPQ
P FHDQR -FQR
P YOHDZ +YDZ
P YOHFZ +YFZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHZR -YZR
P POCYQ -PYQ
C CZP Y Q +ZPQ 427687/968000
```

```c1bs-bounds
OCP 9 279/880 Y
OCQ 11 279/880 Y
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 317/1000 11/25
l 21/200 907/1000
m 317/1000 907/1000
r 21/200 11/25
t 447/500 1
```

```c1bs-sum
2 L0*L1*L27; 3 L0*L3*L26; 1 L0*L4*L5; 6 L0*L17*L30
4 L0*L17*+OCF; 1 L0*L17*DROP_OCQ_Y; 1 L0*L22*L28; 3 L0*L27*DROP_OCP_Y
1 L0*L28*RX_P; 6 L0*L31*RX_P; 1 L1*L1*L6; 1 L1*L3*L22
2 L1*L3*LY_R; 2 L1*L5*RY_P; 1 L1*L7*L19; 22 L1*L9*L30
4 L1*L12*L30; 1 L1*L12*-OHD; 7 L1*L14*L16; 1 L1*L14*RY_P
3 L1*L17*L33; 2 L1*L19*L25; 1 L1*L19*L36; 3 L1*L19*DROP_OCR_Y
11 L1*L24*L30; 2 L1*L24*RY_P; 3 L1*L27*L30; 3 L1*L27*DROP_OHP_Z
7 L1*L34*RX_P; 1 L1*L38*DROP_OHP_Z; 2 L1*-OHD*DROP_OCR_Y; 6 L1*DROP_OHP_Z*DROP_OCP_Y
1 L1*RY_P*RY_P; 3 L2*L5*RX_P; 2 L2*L7*L12; 16 L2*L8*L19
2 L2*L12*L19; 6 L2*L18*L19; 1 L2*L19*L29; 49 L2*L19*L30
16 L2*L19*RX_P; 2 L2*L19*RY_P; 2 L2*L19*DROP_OCR_Y; 5 L2*L28*RX_P
1 L2*L29*LY_R; 1 L2*L30*L31; 1 L2*L32*RY_P; 1 L2*L38*LY_R
1 L2*LY_R*LY_R; 11 L3*L5*L30; 1 L3*L6*DROP_OCP_Y; 1 L3*L7*L10
1 L3*L7*LY_R; 1 L3*L10*L28; 32 L3*L10*L30; 8 L3*L12*L26
1 L3*L12*L29; 3 L3*L17*L28; 20 L3*L17*L30; 1 L3*L17*DROP_OCQ_Y
1 L3*L19*LY_R; 1 L3*L28*RY_P; 15 L3*L31*DROP_OCP_Y; 1 L3*L31*LY_R
2 L4*L14*L17; 2 L4*L17*DROP_OHP_Z; 2 L5*L7*L30; 2 L5*L16*L34
2 L5*L17*L32; 1 L5*L21*LY_R; 1 L5*L24*C_OCF_Y; 1 L5*L24*RX_P
1 L5*L27*DROP_OCQ_Y; 1 L5*L29*DROP_OHP_Z; 1 L5*+OCF*LY_R; 1 L6*L8*L27
1 L6*L10*L17; 1 L6*L26*L28; 2 L6*L28*L30; 8 L7*L30*LY_R
11 L8*L8*L19; 12 L8*L10*RX_P; 2 L8*L12*L31; 5 L8*L12*L34
3 L8*L16*L17; 2 L8*L19*L26; 15 L8*L19*L30; 2 L8*L27*LY_R
1 L8*L28*DROP_OCR_Y; 3 L9*L14*L18; 39 L10*L12*L30; 1 L10*L18*RX_P
1 L11*L17*DROP_OCP_Y; 2 L11*L17*RY_P; 3 L12*L12*L35; 8 L12*L16*LY_R
1 L12*L19*L38; 2 L12*L26*L35; 3 L12*L31*L33; 9 L12*L34*RX_P
2 L12*L39*DROP_OCR_Y; 3 L13*L17*RX_P; 1 L13*L29*L33; 8 L13*RX_P*LY_R
4 L14*L17*L26; 9 L14*L17*L30; 6 L14*L17*RX_P; 1 L14*L24*L27
2 L14*L24*L30; 6 L14*L26*L31; 47 L14*L30*L31; 8 L16*L17*L19
1 L16*L26*L29; 3 L16*L27*L34; 3 L17*L17*L30; 8 L17*L18*RX_P
7 L17*L27*L30; 6 L17*L28*L31; 22 L17*L30*L32; 20 L17*L30*+OCF
3 L17*L36*C_OCF_Y; 1 L17*+OCF*DROP_OCQ_Y; 1 L17*DROP_OCP_Y*DROP_OCQ_Y; 1 L17*RY_P*RY_P
1 L18*L18*RX_P; 1 L18*L19*LY_R; 1 L19*L19*L33; 1 L19*L23*RX_P
2 L19*L27*L30; 1 L19*L27*DROP_OCP_Y; 8 L19*L30*L30; 1 L22*L28*RX_P
1 L27*L28*L30; 2 L27*L28*DROP_OHP_Z; 7 L27*L30*DROP_OHP_Z; 2 L27*L31*DROP_OCR_Y
6 L28*L30*C_OCF_Y; 42 L28*L30*RX_P; 7 L28*-OHD*RX_P; 6 L28*DROP_OCP_Y*RX_P
8 L28*RX_P*RX_P; 2 L28*RX_P*LY_R; 1 L30*L31*L38; 1 L31*L31*L38
6 FAN*L17; 1 CENT*L19; 4 +OYZ*L1; 19 +OYZ*L9
1 +OYZ*L17; 4 +OYZ*-OHD; 10 +OYZ*C_OCF_Y; 4 -HYZ*L12
1 -HCY*L6; 7 -HCY*L8; 8 -HCY*L16; 2 -HCY*L26
16 -HCY*L30; 3 -HCY*L33; 3 -HCY*DROP_OCR_Y; 1 -OHZ*L5
2 -OHZ*L39; 1 -HFP*L1; 1 -CDP*L4; 10 -CDP*L16
4 -CDP*L18; 47 -CDP*L30; 7 -CDP*-OHD; 1 -CDP*DROP_OCQ_Y
8 +HZP*L17; 1 +HFR*L4; 9 +HFR*L30; 1 +CDR*L27
1 +DFR*DROP_OHP_Z; 1 +HDR*LY_R; 1 +HZR*L27; 2 +HZR*L30
28 +CYZ*L8; 7 +CYZ*L16; 38 +CYZ*L30; 4 +CYZ*+OCF
6 +CYZ*DROP_OHP_Z; 4 +CYZ*DROP_OCP_Y; 6 +CYZ*DROP_OCR_Y; 1 +OYP*L29
34 +OYP*L30; 1 +OYP*L34; 2 +OYP*+OCF; 2 +OYP*C_OCF_Y
1 C_OCR_Y*L17; 2 Q_OCPZ_Y*L17; 3 Q_OCPZ_Y*L38
```

Upper bound: `-147793189/1375000000`.

### Leaf RLU

Assumptions: ``.

```c1bs-geometry
P OHDQR +ODR
P OHFQR +OFR
P OHYQR +OYR
P HODPQ +HPQ
P HOFQR -HQR
P CODPQ +CPQ
P CODPR +CPR
P DOFPR -DPR
P FOHCR -FCR
P FOHPR -FPR
P FOHQR +FQR
P YOHZQ -YZQ
P YOHZR -YZR
P QOHCR -QCR
P QOHDR -QDR
P QOHYR -QYR
P QOHPR -QPR
P ROHFY -RFY
P ROCDY -RDY
P ROCYP +RYP
C OHQ R Z +QOZ 242/625
P OHZQR +OZR
P ZOHPR +ZPR
P QOHZR -QZR
P ROHFZ -RFZ
P ROCDZ -RDZ
```

```c1bs-bounds
OHQ 10 279/880 R
OCR 13 347/440 YZ
```

```c1bs-box
h 197/250 22/25
c 197/250 22/25
d 557/1000 22/25
f 557/1000 22/25
u 317/1000 669/1000
v 21/200 229/500
z 21/200 229/500
w 21/200 669/1000
p 447/500 1
q 21/200 11/25
l 317/1000 11/25
m 447/500 1
r 21/200 907/1000
t 197/250 907/1000
```

```c1bs-sum
2 L0*L0*LX_Q; 3 L0*L1*DROP_OCR_YZ; 1 L0*L2*L30; 2 L0*L5*L23
4 L0*L12*L21; 2 L0*L17*L20; 21 L0*L21*L22; 4 L0*L21*L33
7 L0*L21*+OCF; 1 L0*L23*DROP_OHQ_R; 2 L0*L28*DROP_OCQ_YZ; 3 L0*L29*LY_Q
1 L1*L4*L16; 2 L1*L7*LY_Q; 1 L1*L10*L37; 1 L1*L12*RX_P
2 L1*L16*L30; 2 L1*L17*L24; 3 L1*L18*L37; 15 L1*L20*RX_P
13 L1*L22*L29; 6 L1*L23*L27; 9 L1*L23*L37; 3 L1*L28*RX_P
2 L1*RY_P*DROP_OHQ_R; 2 L2*L6*L17; 1 L2*L10*L21; 9 L2*L16*L23
4 L2*L19*LY_Q; 1 L3*L7*DROP_OHP_Z; 2 L3*L8*L22; 1 L3*L12*L22
1 L3*L12*L29; 2 L3*L12*LY_Q; 9 L3*L17*L22; 1 L3*L21*DROP_OHQ_R
1 L3*L21*LX_Q; 6 L3*L21*LY_Q; 1 L3*L22*L23; 2 L3*L23*RY_P
1 L3*L31*DROP_OHQ_R; 3 L3*L33*LY_Q; 2 L4*L17*LY_Q; 1 L4*L17*DROP_OCR_YZ
1 L5*L7*+OCF; 1 L5*L20*L24; 3 L5*L37*LY_Q; 1 L7*L8*DROP_OHQ_R
1 L7*L17*L23; 1 L7*L19*LY_Q; 8 L7*L21*LY_Q; 2 L8*L17*L27
2 L9*L16*L26; 1 L9*L21*L27; 1 L10*L17*-OHD; 1 L12*L20*L23
1 L14*L18*L29; 2 L17*L23*L32; 4 L17*L23*LY_Q; 19 L17*L24*LY_Q
2 L17*L35*DROP_OCQ_YZ; 1 L17*-OHD*DROP_OCR_YZ; 7 L18*L23*DROP_OHQ_R; 1 L18*L23*LX_Q
1 L18*L29*L34; 2 L18*L29*DROP_OHQ_R; 1 L18*L29*LX_Q; 2 L19*L26*DROP_OHQ_R
3 L20*L23*RY_P; 1 L20*L29*L31; 1 L20*L37*LY_Q; 1 L21*L23*L27
2 L21*L25*L27; 1 L21*L25*RY_P; 1 L21*L27*L32; 1 L21*L27*RX_P
3 L21*L28*DROP_OCQ_YZ; 3 L21*L29*L37; 1 L21*-OHD*RY_P; 6 L22*L23*L23
20 L22*L23*DROP_OHQ_R; 1 L23*L23*RX_P; 12 L23*L23*LX_Q; 1 L23*L31*+OCF
2 L23*L33*DROP_OHQ_R; 1 L23*L34*DROP_OHQ_R; 3 L23*-OHD*-OHD; 10 L23*-OHD*DROP_OHQ_R
2 L23*DROP_OHP_Z*DROP_OCQ_YZ; 18 L23*DROP_OHQ_R*DROP_OHQ_R; 23 L23*DROP_OHQ_R*LX_Q; 6 L23*DROP_OCQ_YZ*DROP_OCQ_YZ
33 L23*DROP_OCQ_YZ*LX_Q; 5 L23*LX_Q*LX_Q; 3 L24*L29*DROP_OHQ_R; 6 L24*L29*LY_Q
2 L24*L37*LY_Q; 4 L26*L27*DROP_OHQ_R; 3 L26*-OHD*RX_P; 1 L26*DROP_OHQ_R*LX_Q
3 L27*L28*LY_Q; 3 L28*RX_P*DROP_OCQ_YZ; 4 L29*+OCF*LY_Q; 5 L29*LX_Q*LY_Q
1 L31*RX_P*LY_Q; 1 L35*RX_P*LY_Q; 2 L37*RX_P*LY_Q; 1 QUADP*L21
1 QUADQ*L29; 2 -OHF*L23; 3 +OCP*L3; 1 -HFP*L29
2 -CDP*-OHD; 5 -CDP*LY_Q; 1 -CDP*DROP_OCR_YZ; 1 +DFP*+OCF
2 -CFP*L1; 1 -CYP*DROP_OCQ_YZ; 3 +HFQ*L6; 3 +HFQ*L25
2 +HFQ*-OHD; 2 +HFQ*DROP_OHP_Z; 7 +HFQ*DROP_OHQ_R; 13 +HFQ*DROP_OCQ_YZ
1 +HFQ*DROP_OCR_YZ; 1 +HYQ*L3; 2 +HCR*L17; 1 -HFR*L37
1 +OPQ*L3; 3 +OPQ*L23; 3 +OPR*L23; 23 +OQR*L1
2 +OQR*L6; 9 +OQR*L22; 6 +OQR*DROP_OCQ_YZ; 1 +HPQ*L29
4 -HQR*L3; 16 -HQR*L14; 16 -HQR*L16; 15 -HQR*L22
3 -HQR*L25; 3 -HQR*L27; 1 -HQR*L32; 16 -HQR*L34
3 -HQR*RY_P; 12 -HQR*DROP_OHQ_R; 19 -HQR*LX_Q; 17 -HQR*LY_Q
1 +FQR*L25; 17 +FQR*DROP_OCQ_YZ; 7 +FQR*LX_Q; 1 C_OCR_YZ*L32
1 C_OCR_YZ*RY_P; 1 Q_OCFH_YZR*L7; 9 Q_OFQH_R*L23; 1 Q_OYRH_Z*L23
1 Q_OPQR_Z*L26
```

Upper bound: `-22097544743/125125000000`.
