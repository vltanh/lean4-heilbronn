# One lower point, one central point, and all three caps

Let \(s=93/1000\). Use the actual C1 contacts

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad d\le h,\quad f\le c.
\]

Every unsigned actual doubled triangle area is at least \(s\).
This note excludes the complete count
\((k,j,r,t,l)=(1,1,1,1,1)\): a lower point \(Y=(u,v)\)
in \(OHC\), a central point \(Z=(z,w)\) in \(HCDF\), a
right point \(P=(p,q)\) in \(CD(1,0)\), a top point
\(Q=(l,m)\) in \(DF(1,1)\), and a left point \(R=(r,t)\)
in \(HF(0,1)\). Square-side contacts are allowed.

## 1. A complete rational box

Transpose the square, if necessary, so \(h\ge c\). This preserves
the lower and central roles, exchanges the two occupied side caps,
and relabels their points as \(P,R\). No other symmetry or coordinate
order is imposed. Put

\[
 d_0=4s=93/250,\quad a=213/250,\quad b=219/250,\quad
 \ell=s/b,\quad \chi=a-s/(1-d_0),\quad
 \theta=d_0+s/(1-d_0).
 \tag{1}
\]

For the right point, its cap clearance and \(cq\ge s\) give

\[
 d(p-c)-(1-c)q\ge s,\qquad dc(1-c)\ge s.
 \tag{2}
\]

The second inequality follows by multiplying the first by \(c\),
using \(cq\ge s\), and then \(p\le1\). In particular
\(d\ge4s\), since \(c(1-c)\le1/4\). Transposition gives

\[
 fh(1-h)\ge s,\qquad f\ge4s.
 \tag{3}
\]

The top cap requires \((1-d)(1-f)\ge s\). Equations (2)--(3)
therefore imply \(d,f<a\), since

\[
 s-(1-a)(1-d_0)=7/125000>0.
\]

The function \(x(1-x)\) decreases for \(x\ge b>1/2\), and

\[
 s-ab(1-b)=1767/3906250>0.
\]

Thus (2)--(3) force \(h,c<b\). The projections give
\(h,c\ge d_0\). Subdivision at the sole lower point gives
\(hc\ge3s\); hence \(h^2\ge hc\ge3s\) and
\(h>66/125\), using

\[
 3s-(66/125)^2=27/125000>0.
\]

The actual \(OH,OC\) clearances give every free coordinate a lower
bound \(\ell\), unless a stronger bound is stated below. The
single lower point satisfies

\[
 h(c-u)\ge2s,\qquad c(h-v)\ge2s,\qquad u+v\le1-s,
 \tag{4}
\]

so \(u,v\le b-2s/b\). The sum inequality follows by writing
\(Y=\alpha O+\beta H+\gamma C\): then
\(1-u-v\ge hc\alpha=A(HCY)\ge s\).
The weighted central-edge identities in
C1_TWO_LOWER_TOP_GEOMETRY.md, Section 1, give \(z,w\le1-s\).

Before using \(p\le1\) in (2), the same calculation gives
\(p\ge c+s/(dc)\). The function \(x+s/(ax)\) increases for
\(x\ge d_0\), because

\[
 ad_0^2-s=48639/1953125>0.
\]

Consequently

\[
 p\ge d_0+\frac{s}{ad_0}>\frac{133}{200},\qquad
 d_0+\frac{s}{ad_0}-\frac{133}{200}=\frac{91}{213000}>0.
 \tag{5}
\]

Also (2) and \(p\le1\) give
\(q\le d-s/(1-c)\le\chi\). The left point has the transposed
bounds. The top clearance gives

\[
 l\ge f+s/(1-d)\ge\theta,\qquad
 m\ge d+s/(1-f)\ge\theta.
\]

The complete closed initial box is therefore

| Coordinate | Lower endpoint | Upper endpoint |
|---|---:|---:|
| \(h\) | \(66/125\) | \(b\) |
| \(c\) | \(d_0\) | \(b\) |
| \(d,f\) | \(d_0\) | \(a\) |
| \(u,v\) | \(\ell\) | \(b-2s/b\) |
| \(z,w\) | \(\ell\) | \(1-s\) |
| \(p\) | \(133/200\) | \(1\) |
| \(q\) | \(\ell\) | \(\chi\) |
| \(l,m\) | \(\theta\) | \(1\) |
| \(r\) | \(\ell\) | \(\chi\) |
| \(t\) | \(133/200\) | \(1\) |

All these are weakened closed consequences of the stated exact
inequalities. No numerical optimizer is used in obtaining the box.

## 2. Every initial sign

There is one exhaustive root, named `RTL`. The right point is below
\(OD\), the top point is between \(OD\) and \(OF\), and the
left point is above \(OF\). Their strict angular order at \(O\)
therefore gives \(OPQ,OPR,OQR>0\). The common initial signs are

```text
-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF +HDF +CDF
+OPQ +OPR +OQR -DPQ -FQR -DPR -FPR +CPR +HPR
```

The complete region-edge table is

| Points | OH | OC | HC | HF | CD | DF | OD | OF | HD | CF |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Y, lower | − | + | − | − | + | + | free | free | − | + |
| Z, central | − | + | + | − | + | + | free | free | free | free |
| P, right | − | + | + | − | − | + | − | − | − | − |
| Q, top | − | + | + | − | + | − | + | − | + | − |
| R, left | − | + | + | + | + | + | + | + | + | + |

These follow from the actual pentagon and cap definitions, using the
projections \(d\le h,f\le c\). For every \(V=Z,P,Q,R\),
\([HYV]>0,[CYV]<0\). The other lower/cap cross signs are

\[
 [DYP],[FYP],[FYQ]>0,\qquad [DYQ],[DYR],[FYR]<0.
\]

They follow by evaluating the determinant, as an affine function of
\(Y\), at \(O,H,C\). The edge table gives a weak sign at all
three vertices and a strict sign at a vertex with positive barycentric
weight.

For completeness, the six cap/cap signs in the common list have the
following direct identities:

\[
\begin{aligned}
 -[DPQ]&=(1-p)(m-d)+(d-q)(1-l),\\
 -[FQR]&=(l-f)(1-t)+(1-m)(f-r),\\
 -[DPR]&=(1-p)(t-d)+(d-q)(1-r),\\
 -[FPR]&=(p-f)(1-t)+(1-q)(f-r),\\
 [CPR]&=(p-c)t+q(c-r),\\
 [HPR]&=p(t-h)+(h-q)r.
\end{aligned}
 \tag{6}
\]

Every summand is nonnegative by the cap and square constraints.
Each actual determinant is nonzero under the positive minimum, so
the displayed signs are strict, including side-contact cases.

## 3. Finite geometry and all conditional intervals

Use the exact `P`, `M`, `V`, `C` rules, actual triangle and
quadrilateral costs, and monotone static-area certificates from
C1_TWO_LOWER_TOP_GEOMETRY.md, Sections 3--5. They concern actual
geometric objects and apply to these placements. Only the present
initial box and signs are used; none of that note's two-lower fan
assumptions is imported.

A static row in `c1top-upper` specifies an actual signed triangle,
an upper bound and coordinate substitutions such as `h+`, `c-`.
At each substitution the partial derivative has the indicated sign
throughout the remaining initial box, so the row proves its exact
upper bound. Each printed `C` inference cites such a row and every
necessary containment and edge sign.

The `T`, `S`, `X`, `Y` interval rules retain the meanings in the
common note. Here the only top point is \(Q\). The `O` rules
`dh`, `fc`, `hc` propagate, respectively, \(d\le h\),
\(f\le c\), \(c\le h\). An `N x Y` or `N y Y` rule,
if used, propagates (4) as
\(u\le c_{\max}-2s/h_{\max}\) or
\(v\le h_{\max}-2s/c_{\max}\).

The additional rule `E5 OD I` lists two actual free points below
\(OD\). Together with \(O,C,D\), these are five points in
the triangle \(O,D,(1,0)\), whose doubled area is \(d\) and
whose endpoints \(O,D\) are actual. The endpoint-five theorem
in TYPE_II.md, Section 1, therefore gives

\[
 d\ge(3+2\sqrt2)s>(1457/250)s.
 \tag{7}
\]

The reflected `E5 OF I` rule gives the same bound for \(f\).
Every listed ray sign is already known. If three free points are
listed instead, `E OD I` or `E OF I` uses the endpoint-six bound
\(9s\). Such a triple necessarily includes \(P\), respectively
\(R\), so the six actual points have nontriangular hull: the three
contact vertices remain extreme and the side point lies outside
their triangle. All divisions use positive bounds, and the printed
final box is an outward rational rounding of the proved endpoints.

## 4. The one geometric terminal

The shared-central endpoint lemma from QUADRILATERAL_SUPPORT.md
excludes two points in both \(OFH\) and \(OFR\). To see its
precise application here, the supporting line \(FR\) meets the
left side at height

\[
 b_R=\frac{ft-r}{f-r}\le1.
\]

The strict left-cap condition gives \(b_R>h\), so the support
triangle with actual endpoints \(O,F\) and virtual vertex
\((0,b_R)\) contains the convex contact quadrilateral
\(O,H,R,F\). Its doubled area is \(fb_R\le f\le a\).
Two actual points in both contact triangles \(OFH,OFR\) are
the shared central pair of that support normalization. The universal
lemma requires doubled support area at least

\[
 (299/31)s=897/1000>a=852/1000,
\]

a contradiction. A terminal `central_endpoint_top OF R YZ` lists
the two occupants; all six inward edge signs are printed before it
is used. This argument uses the actual corner \(O\).

## 5. Complete factor definitions

The coordinate order is

```text
h c d f u v z w p q l m r t
```

For each leaf box, \(L_{2i}=a_i-\ell_i\) and
\(L_{2i+1}=u_i-a_i\), \(0\le i<14\). The additional
factors \(L_{28},L_{29},L_{30},L_{31}\) are exactly

\[
 h-d,\qquad c-f,\qquad h-c,\qquad 1-s-u-v.
\]

The common named factors are

| Name | Definition |
|---|---|
| `KLOW` | \(hc-3s\) |
| `RIGHTSUP` | \(dc(1-c)-s\) |
| `LEFTSUP` | \(fh(1-h)-s\) |
| `TOPCOUNT` | \((1-d)(1-f)-s\) |
| `QCENT` | \(1-(h-d)(c-f)-.449\) |

Their premises are, respectively, the actual lower point, the two
side caps, the top point, and the central point in \(HCDF\).
There are no two-lower factors `FAN`, `CENT` or `QUADV`.

A signed token `+ABC` or `-ABC` means the indicated actual signed
determinant minus \(s\). The factors `C_`, `Q_`, `DROP_`, `SP_`,
`M_`, `TX_`, `TY_`, `TPX_`, `TPY_` have the exact definitions and
geometric premises in Section 5 of the common note. The last four
apply to the sole top point \(Q\). The side factors are

\[
 \texttt{RX\_P}=p-c-s,\quad \texttt{RY\_P}=d-q-s,\quad
 \texttt{LX\_R}=f-r-s,\quad \texttt{LY\_R}=t-h-s.
\]

They follow from the actual cap triangle clearances by dropping
nonnegative terms and coefficients at most one. An `EP6_OD_I` or
`EP6_OF_I` factor, if used, is \(d-9s\) or \(f-9s\), with
the endpoint-six witnesses just described. Each factor's containment,
convexity, diagonal-separation or mesh premise must already follow
from the initial signs and the printed leaf trace.

## 6. Exact sums and complete coverage

Every cubic leaf prints a positive-integer sum \(W\) of products
of these nonnegative factors. Thus \(W\ge0\). Substituting
\(a_i=\ell_i+z_i\), \(0\le z_i\le u_i-\ell_i\), and
writing \(W=\sum c_\alpha z^\alpha\), gives

\[
 W\le c_0+\sum_{\alpha\ne0,\ c_\alpha>0}
       c_\alpha\prod_i(u_i-\ell_i)^{\alpha_i}.
\]

Every displayed rational upper bound is negative. The complete
fixed tree has 37 binary splits and 38 leaves: 37 cubic contradictions
with 7,280 printed positive terms, and the geometric contradiction
in Section 4. It contains 1,053 geometric deductions and 250 interval
updates. Every split is an actual nonzero determinant, and both
children are present. The single symmetry and fixed region labeling
therefore cover the entire count \((1,1,1,1,1)\).

The companion
[check_c1_one_lower_three_caps.py](check_c1_one_lower_three_caps.py)
reads this manuscript, replays its geometry and intervals, reconstructs
every factor, and expands all displayed sums with rational arithmetic.
No numerical search is a premise of the proof.

## 7. Fixed tree and all rational identities

Counts: `37 1 7280 1053 250`.

```c1top-upper
RTL OCP 1 12101283/19625000 c+ q+
RTL OHR -1 12101283/19625000 h+ r+
```

```c1top-tree
RTL OYP
RTLm OZP
RTLmm OYQ
RTLmmm OZQ
RTLmmmm OYR
RTLmmmmp OZR
RTLmmmmpp YZP
RTLmmmmppm YZQ
RTLmmmmppmm YZR
RTLmmmmppmmp OFY
RTLmmmmppmmpm OFZ
RTLmmmmppmmpp OFZ
RTLmmmp OYR
RTLmmmpp YZP
RTLmmmppm ODZ
RTLmmmppmm OFY
RTLmmmppmp OFY
RTLmmmppmpm HDZ
RTLmmmppmpmm HZP
RTLmmmppmpmmm CFZ
RTLmmmppmpmmmm CZQ
RTLmmmppmpp HDZ
RTLmmmppmppm HZP
RTLmmmppmppmm CFZ
RTLmmp OZQ
RTLmmpm OZR
RTLmmpmp YZR
RTLmmpmpp ODY
RTLmmpmppp OFZ
RTLmmpmpppm HDZ
RTLmmpmpppmm HZP
RTLmmpmpppmp HZQ
RTLmmpmpppmpp CFZ
RTLmmpp YZP
RTLmmppm YZQ
RTLmmppmp ODY
RTLmmppmpp ODZ
```

### Leaf RTLmmmmm

Assumptions: `-OYP -OZP -OYQ -OZQ -OYR`.

```c1top-geometry
P OHDYQ +ODY
P OHDZQ +ODZ
P OHFYR +OFY
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODPQ +FPQ
P FHDZQ +FZQ
P FHDZR -FZR
P YODPQ +YPQ
P YODPR +YPR
P YOFQR +YQR
P ZOCDQ +ZCQ
P ZODPQ +ZPQ
P POFQR +PQR
C OHR Y Z +ROZ 12101283/19625000
P OHYZR -OYZ
P ZOHYR -ZYR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
T OHR Y 12 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF YR 3 lower 135501/250000
O fc - 1 lower 135501/250000
O hc - 0 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 159/500 88/125
t 133/200 1
```

```c1top-sum
14 L21*L27; 5 L29*LY_R; 4 L0*L4*TX_Q_; 29 L0*L22*LX_R
7 L0*L30*LX_R; 3 L1*L3*L24; 3 L1*L5*RX_P; 23 L1*L7*L24
2 L1*L10*L24; 2 L1*L18*L21; 12 L1*L23*L24; 7 L1*L24*+OCF
21 L1*L24*DROP_OHQ_Y; 2 L2*L4*L17; 1 L2*L4*L29; 6 L2*L8*LY_R
3 L2*L11*L29; 19 L2*L22*LX_R; 5 L2*L29*-OHD; 2 L3*L3*L11
10 L3*L6*L27; 3 L3*L7*L11; 12 L3*L7*L18; 13 L3*L7*L23
1 L3*L11*L30; 2 L3*L18*L21; 1 L3*L18*L30; 19 L3*L23*L24
1 L3*L30*L30; 22 L4*L4*TX_Q_; 1 L4*L6*L29; 48 L4*L17*L20
25 L4*L17*L23; 2 L4*L17*C_OHD_Y; 14 L4*L17*DROP_OHQ_Y; 4 L4*L20*L29
12 L4*L23*TX_Q_; 4 L4*L28*L29; 9 L5*L5*L21; 46 L5*L16*L21
7 L5*L21*RX_P; 7 L5*RX_P*TY_Q_; 39 L6*L7*L27; 1 L6*L17*L27
5 L6*L21*TY_Q_; 22 L6*L22*L27; 7 L6*L22*LX_R; 19 L6*L27*-OHD
38 L6*L27*DROP_OHQ_Y; 38 L7*L7*L23; 42 L7*L23*L24; 5 L7*L23*RX_P
6 L7*L23*TX_Q_; 1 L7*L29*LY_R; 18 L7*TX_Q_*LY_R; 5 L8*L20*LY_R
3 L10*L20*L29; 1 L11*L20*L24; 3 L11*L21*LX_R; 6 L16*L21*TY_Q_
1 L16*L27*DROP_OHQ_Y; 1 L16*L27*TX_Q_; 3 L16*TY_Q_*TY_Q_; 15 L17*L23*L23
2 L17*L23*L24; 8 L17*L23*TX_Q_; 2 L18*L20*L21; 12 L18*L21*L23
4 L19*L23*L29; 20 L20*L29*RY_P; 12 L21*L22*L27; 11 L21*L27*-OHD
12 L22*L22*LX_R; 2 L23*L29*C_OHD_Y; 1 L23*L29*DROP_OHP_Y; 6 L23*L29*RY_P
2 L23*L30*RX_P; 5 L29*RY_P*DROP_OHQ_Y; 10 TOPCOUNT*L18; 31 -DPQ*L1
1 -DPQ*L4; 26 -DPQ*L7; 12 -DPQ*L23; 1 -DPQ*+OCF
29 -DPQ*C_OHD_Y; 2 -DPQ*DROP_OHQ_Y; 32 -FQR*L1; 38 -FQR*L7
2 -FQR*L17; 12 -FQR*L22; 3 -FQR*+OCF; 42 -FQR*C_OHD_Y
46 -OHY*L25; 19 -OHY*L26; 8 -OHY*DROP_OHQ_Y; 6 -HCY*L3
6 -HCY*L21; 1 -HCY*-OHD; 9 -HCY*DROP_OHQ_Y; 6 -HCY*DROP_OHR_Y
35 +OCP*L3; 12 +OCP*L7; 5 +OCP*L21; 9 -CDP*L5
1 -CDP*L28; 1 -CDP*+OCF; 28 -CDP*DROP_OHQ_Y; 1 -CDP*TY_Q_
11 +CDQ*L18; 8 -DFQ*L4; 1 -DFQ*L6; 1 -DFQ*L20
8 -DFQ*-OHD; 26 -DFQ*DROP_OHP_Y; 10 -DFQ*RY_P; 30 +HFR*L3
10 +HFR*L22; 9 +HFR*-OHD; 17 +HFR*+OCF; 2 +HFR*DROP_OHQ_Y
20 +HFR*TX_Q_; 2 -OYR*L1; 6 -OYR*+OCF; 21 -OYR*C_OHD_Y
4 -OYR*DROP_OHQ_Y; 3 +HQR*L29; 2 C_OHR_Y*L1; 17 C_OHR_Y*L11
4 C_OHR_Y*L23; 2 Q_OQFH_YZ*L30
```

Upper bound: `-173097313/500000000`.

### Leaf RTLmmmmpm

Assumptions: `-OYP -OZP -OYQ -OZQ +OYR -OZR`.

```c1top-geometry
P OHDYQ +ODY
P OHDZQ +ODZ
P OHFZR +OFZ
P OHYZR +OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOHCZ -FCZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR -FZR
P FODPQ +FPQ
P YOHDZ +YDZ
P YOHZP -YZP
P YOHZQ -YZQ
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHCR +ZCR
P ZOHFY -ZFY
P ZOHYR +ZYR
P ZOCDQ +ZCQ
P ZODFR +ZDR
P ZODPQ +ZPQ
P ZODPR +ZPR
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
T OHR Z 12 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF ZR 3 lower 135501/250000
O fc - 1 lower 135501/250000
O hc - 0 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 159/500 88/125
t 133/200 1
```

```c1top-sum
20 L6*L27; 6 L21*L27; 1 L0*L4*L17; 3 L0*L10*L21
63 L0*L22*LX_R; 3 L0*L30*LX_R; 4 L1*L3*L24; 3 L1*L7*L23
5 L1*L7*L24; 1 L1*L8*L27; 1 L1*L22*L24; 7 L1*L24*L31
12 L1*L24*DROP_OHQ_Y; 22 L1*L24*DROP_OCR_Y; 1 L1*L29*TX_Q_; 5 L2*L4*L17
4 L2*L4*L29; 2 L2*L17*L27; 5 L2*L21*L29; 1 L2*L23*L29
4 L2*L27*DROP_OHQ_Y; 6 L3*L6*L27; 8 L3*L7*L18; 31 L3*L7*L23
1 L3*L10*L27; 1 L3*L18*L21; 1 L3*L18*L30; 1 L3*L27*RX_P
32 L4*L4*TX_Q_; 4 L4*L5*L29; 6 L4*L6*L17; 56 L4*L17*L20
36 L4*L17*L23; 19 L4*L17*DROP_OHQ_Y; 1 L4*L17*LX_R; 2 L4*L20*L29
3 L4*L20*LX_R; 10 L4*L23*TX_Q_; 1 L4*L28*L29; 9 L4*TX_Q_*LX_R
14 L5*L5*L21; 7 L5*L7*L29; 71 L5*L16*L21; 2 L5*L21*L24
1 L5*L21*L28; 14 L5*RX_P*TY_Q_; 8 L6*L7*L27; 1 L6*L9*L27
1 L6*L10*L21; 4 L6*L11*L27; 6 L6*L17*L27; 7 L6*L21*TY_Q_
56 L6*L22*L27; 20 L6*L22*LX_R; 17 L6*L27*-OHD; 28 L6*L27*DROP_OCR_Y
12 L7*L23*L24; 6 L7*L23*L31; 8 L7*L23*TX_Q_; 4 L8*L21*L22
2 L8*L23*L29; 2 L8*L23*L30; 3 L8*L27*+OCF; 4 L9*L23*LY_R
4 L10*L21*L21; 2 L10*L27*DROP_OHQ_Y; 1 L11*L21*L27; 1 L11*L26*L29
2 L11*L29*TX_Q_; 5 L11*L30*TX_Q_; 3 L16*L21*TY_Q_; 5 L16*L27*DROP_OHQ_Y
4 L16*TY_Q_*TY_Q_; 4 L17*L21*L27; 18 L17*L23*L23; 9 L17*L23*L24
4 L17*L23*TX_Q_; 3 L17*L29*DROP_OCR_Y; 1 L18*L20*L21; 10 L18*L21*L23
1 L18*L21*C_OHD_Y; 1 L19*L23*L29; 28 L20*L29*RY_P; 32 L21*L22*L27
17 L21*L27*-OHD; 15 L21*L27*DROP_OCR_Y; 2 L21*L28*L29; 32 L22*L22*LX_R
15 L22*L27*DROP_OHR_Z; 17 L23*L29*RY_P; 1 L28*RX_P*TY_Q_; 5 L29*+OCF*DROP_OHQ_Y
1 L29*+OCF*DROP_OCR_Y; 5 L29*DROP_OHQ_Y*DROP_OCR_Y; 12 L31*TX_Q_*LY_R; 4 RX_P*TY_Q_*TY_Q_
18 TOPCOUNT*L18; 53 -DPQ*L1; 28 -DPQ*L7; 10 -DPQ*L23
54 -DPQ*C_OHD_Y; 1 -DPQ*DROP_OHQ_Y; 27 -FQR*L1; 2 -FQR*L3
3 -FQR*L7; 9 -FQR*L17; 32 -FQR*L22; 3 -FQR*L31
48 -FQR*C_OHD_Y; 15 -FQR*DROP_OCR_Y; 3 -HCY*TX_Q_; 3 -HCY*LX_R
52 +OCP*L3; 10 +OCP*L7; 5 +OCP*L21; 1 +OCP*L25
17 -CDP*L5; 1 -CDP*L6; 1 -CDP*L28; 5 -CDP*+OCF
32 -CDP*DROP_OHQ_Y; 5 -CDP*TY_Q_; 1 -CDP*LX_R; 23 +CDQ*L18
4 -DFQ*L4; 6 -DFQ*L6; 1 -DFQ*L20; 33 -DFQ*DROP_OHP_Y
23 -DFQ*RY_P; 10 -DFQ*LX_R; 12 +HFR*L9; 14 +HFR*L11
39 +HFR*L22; 9 +HFR*L26; 3 +HFR*-OHD; 3 +HFR*TX_Q_
2 +HFR*DROP_OHR_Z; 4 +HFR*DROP_OCR_Y; 2 -FYR*L29; 2 -OYQ
4 -OYQ*L1; 1 -OYQ*L7; 4 -OYQ*L21; 9 -OYQ*DROP_OHR_Z
12 -OYQ*DROP_OCR_Y; 9 +OYR*L27; 19 C_OHR_Z*L1; 15 C_OHR_Z*L10
7 C_HYR_Z; 7 C_HYR_Z*L1; 2 C_HYR_Z*L23; 5 C_HYR_Z*+OCF
9 C_HYR_Z*DROP_OHQ_Y; 9 C_HYR_Z*DROP_OCR_Y; 5 TPY_Q_*L18; 1 Q_OCFH_YZ*L29
1 Q_OQFH_YZ*L29; 15 Q_OYRH_Z*L0; 10 Q_OYRH_Z*L22; 4 Q_OQRH_YZ*L30
1 Q_OCDR_Y*L29; 1 Q_OCQR_Y*L29; 2 Q_HYFR_Z*L29; 7 Q_HYFR_Z*L30
2 Q_HYFR_Z*LX_R
```

Upper bound: `-267461983/250000000`.

### Leaf RTLmmmmppmmm

Assumptions: `-OYP -OZP -OYQ -OZQ +OYR +OZR -YZP -YZQ -YZR`.

```c1top-geometry
P OHDYQ +ODY
P OHDZQ +ODZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODPQ +FPQ
P FHDZQ +FZQ
P FHDZR -FZR
P YOHZR -YOZ
P YOHPR +YPR
P YOHQR +YQR
P YOCDZ +YDZ
P YODPQ +YPQ
P YHFZR +YFZ
P ZOCDQ +ZCQ
P ZOCYR +ZCR
P ZOCPR +ZPR
P ZOCQR +ZQR
P ZODYR +ZDR
P ZODPQ +ZPQ
P ZHCFY +ZCF
P ZCDFP -ZFP
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
T OCR YZ 1 lower 347/500
T OCR YZ 13 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
O hc - 0 lower 347/500
```

```c1top-box
h 347/500 219/250
c 347/500 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 99/125 1
```

```c1top-sum
8 L0*L1*L29; 1 L0*L7*L17; 14 L0*L8*L27; 3 L0*L8*LX_R
9 L0*L17*L21; 4 L0*TY_Q_*LX_R; 10 L1*L1*L2; 2 L1*L1*L24
2 L1*L2*L22; 1 L1*L3*L24; 2 L1*L4*L17; 2 L1*L4*L24
1 L1*L8*L30; 13 L1*L9*LY_R; 5 L1*L10*L29; 1 L1*L17*TX_Q_
6 L1*L21*RX_P; 4 L1*L23*L29; 1 L1*L29*-OHD; 5 L1*L31*TX_Q_
4 L1*L31*LY_R; 1 L2*L7*L18; 3 L2*L8*L27; 1 L2*L10*L21
4 L2*L21*L27; 1 L3*L4*L24; 1 L3*L7*L23; 2 L3*L11*L30
4 L3*L17*L23; 5 L3*L18*DROP_OHP_Y; 17 L3*L18*DROP_OHQ_Y; 1 L3*L23*L31
1 L3*L30*L31; 1 L4*L4*TX_Q_; 1 L4*L6*TX_Q_; 1 L4*L8*L27
2 L4*L17*-OHD; 14 L4*L17*+OCF; 5 L4*L17*DROP_OHP_Y; 8 L4*L17*DROP_OHQ_Y
4 L4*L27*DROP_OHQ_Y; 4 L4*L27*TX_Q_; 1 L4*DROP_OHQ_Y*TX_Q_; 4 L5*L21*DROP_OHP_Y
2 L5*L21*DROP_OCR_YZ; 1 L6*L6*TY_Q_; 12 L6*L16*TY_Q_; 13 L6*L27*-OHD
1 L6*TY_Q_*LX_R; 1 L7*L23*TX_Q_; 1 L8*L21*LY_R; 2 L8*L27*DROP_OHQ_Y
2 L8*L27*TX_Q_; 3 L9*L29*LY_R; 8 L10*L21*L24; 14 L10*L27*DROP_OHQ_Y
1 L11*L25*L30; 4 L11*L30*LY_R; 24 L16*RX_P*TY_Q_; 1 L17*L23*TX_Q_
24 L18*L21*DROP_OHP_Y; 1 L18*L21*DROP_OHQ_Y; 16 L21*L28*DROP_OHP_Y; 11 L27*-OHD*DROP_OHQ_Y
3 L27*+OCF*DROP_OHQ_Y; 5 -DPQ*L1; 5 -DPQ*L3; 5 -DPQ*C_OHD_Y
24 -DPQ*DROP_OHP_Y; 1 -DPQ*DROP_OHQ_Y; 2 -HCY*L3; 2 -HCY*L23
8 -HCY*L25; 6 -HCY*DROP_OHQ_Y; 1 -HCY*DROP_OCR_YZ; 3 -HCY*LY_R
1 -CDP*L6; 5 -CDP*L16; 8 -CDP*L20; 14 -CDP*DROP_OHQ_Y
1 +DFP*L23; 1 +CDQ*L24; 11 -DFQ*DROP_OHP_Y; 1 -DFQ*RY_P
1 -DFQ*LX_R; 5 +HFR*L9; 4 +HFR*L28; 10 +HFR*-OHD
8 -OYQ*L1; 21 -OYQ*L24; 7 -OYQ*+OCF; 3 -OYQ*C_OHD_Y
21 -OYQ*DROP_OCR_YZ; 1 +FPQ*L4; 1 C_OYR_Z*L0; 7 C_OYR_Z*L22
11 C_OYR_Z*C_OHD_Y; 13 C_OYR_Z*DROP_OHQ_Y; 1 C_OYR_Z*TY_Q_; 10 C_OQR_YZ*L0
6 C_OQR_YZ*L4; 1 C_OQR_YZ*L30; 7 C_OQR_YZ*L31; 24 C_HYR_Z*L1
2 C_HYR_Z*L4; 14 C_HYR_Z*L22; 13 C_HYR_Z*-OHD; 6 C_HYR_Z*+OCF
1 TPY_Q_*L2; 3 TPY_Q_*L6; 4 Q_HYCR_Z*L1
```

Upper bound: `-184932501/250000000`.

### Leaf RTLmmmmppmmpmm

Assumptions: `-OYP -OZP -OYQ -OZQ +OYR +OZR -YZP -YZQ +YZR -OFY -OFZ`.

```c1top-geometry
P OHDYQ +ODY
P OHDZQ +ODZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P YHDZQ +YDZ
P ZOCDQ +ZCQ
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 66/125 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
4 L0*L0*L17; 1 L0*L0*L23; 1 L0*L22*L30; 5 L0*L22*LX_R
2 L1*L1*L21; 5 L1*L2*L2; 14 L1*L16*L24; 6 L1*L21*LY_R
1 L1*L22*L24; 1 L1*L24*TY_Q_; 10 L1*L24*LY_R; 2 L2*L2*L17
18 L2*L17*RY_P; 37 L2*RY_P*TY_Q_; 6 L3*L3*L21; 10 L3*L18*L30
12 L3*L18*RX_P; 4 L4*L4*L17; 13 L4*L17*L17; 41 L4*L17*L21
17 L5*L16*L16; 4 L5*L16*TY_Q_; 9 L5*L21*L23; 22 L5*L21*DROP_OHP_Y
9 L5*L21*TY_Q_; 1 L5*L21*DROP_OCR_Y; 9 L6*L17*L27; 13 L6*L27*C_OHD_Y
29 L6*L27*DROP_OHP_Y; 14 L6*L27*DROP_OCR_Y; 116 L16*L16*TY_Q_; 7 L16*L23*L24
4 L16*L28*L28; 4 L16*L28*TY_Q_; 2 L16*TY_Q_*LY_R; 1 L17*L17*L17
2 L17*L17*L29; 4 L17*L21*L27; 37 L17*L21*RY_P; 11 L17*L21*DROP_OCR_Y
1 L17*L30*L30; 7 L18*L21*-OHD; 79 L18*L21*DROP_OHP_Y; 2 L18*L21*DROP_OCR_Y
5 L21*L27*DROP_OCR_Y; 4 L21*L28*L28; 7 L21*L28*+OCF; 3 L21*L30*L30
5 L23*L27*LX_R; 6 L28*RX_P*TY_Q_; 1 RX_P*RX_P*RX_P; 5 KLOW*L2
1 KLOW*L17; 6 KLOW*L22; 3 KLOW*RY_P; 29 -DPQ*L4
7 -DPQ*-OHD; 116 -DPQ*DROP_OHP_Y; 2 -DPQ*DROP_OCR_Y; 5 -FQR*L1
1 -FQR*L5; 10 -FQR*-OHD; 7 -FQR*DROP_OHP_Y; 5 -FQR*DROP_OCR_Y
43 +OCP*L3; 10 +OCP*L17; 16 +OCP*L21; 10 +OCP*L27
4 +OCP*C_OHD_Y; 23 +OCP*TY_Q_; 10 +OCP*DROP_OCR_Y; 2 -CDP*-OHD
21 -CDP*+OCF; 6 -CDP*C_OHD_Y; 4 -CDP*DROP_OHP_Y; 16 -CDP*DROP_OHQ_Y
43 -CDP*TY_Q_; 29 +CDQ*L18; 49 -OHR*L1; 1 -OHR*L5
13 -OHR*L23; 2 -OHR*DROP_OHP_Y; 1 -OHR*DROP_OCR_Y; 14 +HFR*L22
16 +HFR*-OHD; 13 +HFR*DROP_OHP_Y; 9 +HFR*DROP_OCR_Y; 9 C_OFQ_YZ
58 C_OFQ_YZ*L4; 21 C_OFQ_YZ*DROP_OHP_Y; 15 C_OFQ_YZ*DROP_OCR_Y
```

Upper bound: `-134315143/500000000`.

### Leaf RTLmmmmppmmpmp

Assumptions: `-OYP -OZP -OYQ -OZQ +OYR +OZR -YZP -YZQ +YZR -OFY +OFZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHDYQ +ODY
P OHFYZ +OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR -FZR
P FODPQ +FPQ
P YOHDZ +YDZ
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOCDQ +ZCQ
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF ZR 3 lower 135501/250000
O fc - 1 lower 135501/250000
O hc - 0 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
11 L1*L24; 17 L0*L4*L17; 24 L0*L8*L29; 9 L0*L27*TX_Q_
10 L1*L1*L2; 14 L1*L1*L9; 12 L1*L1*L16; 6 L1*L2*L4
2 L1*L6*L8; 20 L1*L6*L27; 69 L1*L8*L21; 31 L1*L8*L27
1 L1*L9*L24; 8 L1*L9*L29; 31 L1*L10*L29; 9 L1*L20*LY_R
3 L1*L21*L27; 21 L1*L23*L29; 4 L1*L23*L31; 48 L1*L24*+OCF
12 L1*L24*DROP_OHP_Y; 35 L1*L24*DROP_OCR_Y; 9 L1*L29*LY_R; 12 L1*L30*RX_P
49 L1*L31*TX_Q_; 9 L2*L2*L11; 104 L2*L4*L17; 7 L2*L10*L17
5 L2*L17*L27; 119 L2*L21*L28; 1 L2*L27*-OHD; 3 L2*L29*DROP_OCR_Y
27 L3*L3*L18; 25 L3*L5*L18; 26 L3*L18*L30; 2 L3*L18*TY_Q_
28 L3*L23*L30; 15 L3*L23*L31; 25 L3*L23*RX_P; 5 L4*L4*L17
36 L4*L4*TX_Q_; 53 L4*L6*L17; 6 L4*L8*L17; 6 L4*L10*L17
257 L4*L17*L20; 41 L4*L17*L23; 22 L4*L23*L29; 269 L5*L16*L21
1 L5*L21*L21; 5 L5*L21*L28; 58 L5*L21*RX_P; 1 L6*L8*TY_Q_
14 L6*L9*L27; 33 L6*L10*L30; 21 L6*L10*TY_Q_; 54 L6*L11*L27
131 L6*L16*TY_Q_; 4 L6*L17*L27; 22 L6*L22*L27; 38 L6*L27*+OCF
30 L6*L27*DROP_OCR_Y; 24 L6*RX_P*TY_Q_; 6 L8*L18*L21; 14 L8*L20*L27
7 L8*L21*TY_Q_; 15 L8*L23*L27; 4 L10*L17*L29; 6 L10*L18*L21
7 L10*L21*L21; 50 L10*L21*L30; 18 L10*L21*TY_Q_; 4 L10*L22*L30
30 L11*L21*L27; 46 L16*L21*TY_Q_; 15 L16*L27*DROP_OHQ_Y; 14 L17*L23*L23
12 L17*L23*L24; 46 L17*L23*TX_Q_; 14 L18*L21*L23; 23 L18*L21*L30
10 L21*L22*L27; 9 L21*L28*L28; 10 L22*L23*L24; 12 L23*L24*L31
10 L23*L27*L29; 5 L23*L30*RX_P; 6 L23*L31*RX_P; 5 L27*+OCF*DROP_OHP_Y
3 L27*C_OCF_Y*C_OCF_Y; 28 L28*RX_P*TY_Q_; 183 -DPQ*L3; 5 -DPQ*L4
6 -DPQ*L8; 6 -DPQ*L10; 14 -DPQ*L23; 23 -DPQ*C_OHD_Y
213 -DPQ*C_OCF_Y; 21 -FQR*L1; 15 -FQR*L17; 10 -FQR*L22
14 -FQR*L31; 21 -HCY*L1; 9 -HCY*L3; 12 -HCY*L17
36 -HCY*L20; 26 -HCY*L23; 1 -HCY*L24; 83 -HCY*TX_Q_
10 -HCY*LY_R; 23 +OCP*L1; 127 +OCP*L3; 3 +OCP*L5
145 +OCP*L21; 26 +OCP*C_OHD_Y; 1 -CDP*L0; 52 -CDP*L20
22 -CDP*L28; 74 -CDP*+OCF; 40 -CDP*DROP_OHQ_Y; 6 -CDP*TY_Q_
5 +CDQ*L18; 36 -DFQ*L4; 1 -DFQ*L8; 35 -DFQ*L10
184 -DFQ*L16; 14 -DFQ*L22; 25 -DFQ*RX_P; 3 -OHR*L1
5 -OHR*L2; 12 -OHR*L14; 4 -OHR*LY_R; 12 +HFR*L15
9 +HFR*LY_R; 10 -CYQ*L27; 75 -OYQ; 24 -OYQ*L4
102 -OYQ*L6; 7 -OYQ*L21; 18 -OYQ*L22; 69 -OYQ*+OCF
25 -OYQ*DROP_OCR_Y; 14 -OFY*L4; 7 -OFY*L17; 95 -OFY*L22
52 -OFY*C_OHD_Y; 9 -OFY*C_OCF_Y; 102 -OFY*DROP_OHQ_Y; 19 -OFY*DROP_OCR_Y
2 +OFZ*DROP_OHP_Y; 12 +OFZ*LY_R; 20 +HZR*L3; 20 +HZR*C_OCF_Y
16 Q_OCFH_YZ*L27; 2 Q_OQFZ_Y*L17; 21 Q_HYFR_Z*L22; 17 Q_HYFR_Z*C_OHD_Y
42 Q_HYFR_Z*C_OCF_Y; 12 Q_HYFR_Z*DROP_OHP_Y; 21 Q_HYFR_Z*DROP_OCR_Y
```

Upper bound: `-83183527/500000000`.

### Leaf RTLmmmmppmmppm

Assumptions: `-OYP -OZP -OYQ -OZQ +OYR +OZR -YZP -YZQ +YZR +OFY -OFZ`.

```c1top-geometry
P OHDFY +ODY
P OHDZQ +ODZ
P OHFYZ -OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOHYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHPR +YPR
P YOHQR +YQR
P YODZQ +YDZ
P YODPQ +YPQ
P ZOCDQ +ZCQ
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF YR 3 lower 135501/250000
O fc - 1 lower 135501/250000
O hc - 0 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
940 L6*L27; 89 L27*L27; 1 L0*L4*L17; 321 L0*L8*L27
603 L1*L1*L24; 184 L1*L2*L2; 13 L1*L2*L4; 191 L1*L2*L24
3 L1*L4*L8; 66 L1*L4*L29; 347 L1*L6*L24; 445 L1*L6*L29
101 L1*L8*L11; 25 L1*L8*L21; 404 L1*L8*L29; 603 L1*L8*L30
89 L1*L11*L29; 100 L1*L20*L27; 163 L1*L21*L29; 81 L1*L23*L24
144 L1*L24*L24; 262 L1*L24*L27; 910 L2*L4*L17; 638 L2*L4*L29
813 L2*L8*L27; 207 L2*L17*RY_P; 648 L2*L18*L29; 149 L2*L19*L27
188 L2*L27*RY_P; 132 L2*L27*DROP_OHQ_Y; 47 L2*L27*TX_Q_; 26 L3*L6*L27
200 L3*L23*L24; 145 L4*L4*L17; 445 L4*L4*TX_Q_; 283 L4*L5*L29
1083 L4*L6*L17; 767 L4*L6*L29; 60 L4*L8*TX_Q_; 480 L4*L17*L17
20 L4*L17*L18; 495 L4*L17*L20; 509 L4*L17*L23; 6 L4*L17*L27
18 L4*L20*L27; 82 L4*L23*L29; 806 L5*L16*L21; 347 L5*L18*RX_P
1322 L5*L21*L21; 16 L5*L21*L28; 575 L5*L21*L29; 9 L5*L28*RX_P
224 L5*RX_P*RX_P; 376 L6*L8*L27; 125 L6*L11*L27; 403 L6*L17*L27
736 L6*L21*L27; 2281 L6*L21*TY_Q_; 53 L6*L22*L27; 2 L6*L22*L29
115 L6*L27*-OHD; 201 L6*L27*TY_Q_; 241 L7*L23*L24; 15 L7*L23*L29
3 L8*L8*L27; 3 L8*L10*L29; 92 L8*L10*L30; 93 L8*L21*L23
20 L8*L22*L27; 245 L8*L23*L29; 1189 L8*L24*L27; 829 L8*L27*L27
89 L10*L11*L29; 829 L10*L24*L27; 813 L10*L24*L29; 3 L10*L29*TY_Q_
93 L11*L21*L21; 108 L11*L21*L29; 20 L11*L21*LY_R; 169 L11*L23*L29
25 L16*L21*L28; 335 L16*L21*TY_Q_; 182 L16*L23*L27; 427 L17*L18*L23
11 L17*L18*L30; 378 L17*L21*L27; 403 L17*L23*L24; 427 L18*L18*L21
18 L18*L20*L27; 335 L18*L21*L21; 247 L18*L21*L30; 165 L18*L21*LY_R
11 L18*L28*RX_P; 47 L18*L29*L29; 1201 L21*L21*L27; 1201 L21*L23*L24
25 L21*RX_P*LY_R; 90 L23*L29*L29; 90 L23*L29*L30; 16 L26*L27*L29
16 L27*L27*+OCF; 46 L27*L29*TX_Q_; 82 L28*RX_P*TY_Q_; 184 L29*L29*-OHD
47 L29*RY_P*TX_Q_; 863 -DPQ*L1; 427 -DPQ*L4; 47 -DPQ*L7
427 -DPQ*L18; 335 -DPQ*L21; 944 -DPQ*C_OHD_Y; 182 -DPQ*DROP_OCR_Y
101 -FQR*L3; 582 -FQR*L7; 163 -FQR*L8; 62 -FQR*L10
403 -FQR*L17; 1201 -FQR*L21; 100 -FQR*L30; 893 -HCY*L6
138 -HCY*L21; 169 -HCY*L22; 89 -HCY*L31; 3 -HCY*TY_Q_
1175 +OCP*L3; 33 +OCP*L5; 301 +OCP*L6; 42 +OCP*L19
600 +OCP*L21; 149 +OCP*L27; 1 +OCP*L30; 38 +OCP*RX_P
364 -CDP*L5; 393 -CDP*L6; 256 -CDP*L17; 50 -CDP*L19
246 -CDP*L20; 188 -CDP*L27; 10 -CDP*L28; 414 -CDP*+OCF
155 -CDP*DROP_OHQ_Y; 66 -DFQ*L1; 163 -DFQ*L4; 720 -DFQ*L6
60 -DFQ*L8; 696 -DFQ*L16; 987 -DFQ*L21; 201 -DFQ*L27
311 -DFQ*+OCF; 41 -DFQ*DROP_OHP_Y; 263 -OHR*L8; 81 +HFR*L2
628 +HFR*L6; 163 +HFR*L21; 12 +HFR*L22; 16 +HFR*L27
207 +HFR*L31; 773 +HYR*L1; 282 +HYR*L7; 89 +HYR*L8
282 +HYR*L10; 192 +HYR*L23; 144 +HYR*L24; 247 +HYR*L27
170 +HYR*-OHD; 110 +HYR*+OCF; 163 +HYR*DROP_OHQ_Y; 345 +OYR*L0
703 +OYR*L2; 702 +OYR*L6; 195 +OYR*L11; 254 +OYR*L22
1045 +OYR*L24; 582 +OYR*L27; 86 +OYR*L31; 333 +OYR*C_OHD_Y
101 +OFY*L1; 491 +OFY*L2; 44 +OFY*L6; 3 +OFY*L8
89 +OFY*L11; 35 +OFY*L16; 148 +OFY*L22; 1396 +OFY*L24
252 +OFY*DROP_OHP_Y; 179 +OFY*DROP_OHQ_Y; 85 +OFY*TY_Q_; 62 +OFY*LY_R
20 C_FYQ_Z*L1; 93 C_FYQ_Z*L21; 163 C_FYQ_Z*L25; 41 C_FYQ_Z*L27
22 C_FYQ_Z*L29; 223 C_FYQ_Z*+OCF; 82 Q_OQFY_Z*L4; 287 Q_OQFY_Z*L17
222 Q_OQFY_Z*L29; 65 Q_OQFY_Z*L30
```

Upper bound: `-319924601/200000000`.

### Leaf RTLmmmmppmmppp

Assumptions: `-OYP -OZP -OYQ -OZQ +OYR +OZR -YZP -YZQ +YZR +OFY +OFZ`.

```c1top-geometry
P OHDFY +ODY
P OHDFZ +ODZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOHCZ -FCZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR -FZR
P FODPQ +FPQ
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P YHDZQ +YDZ
P ZOCDQ +ZCQ
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
```

Exclusion: `central_endpoint_top OF R YZ`.

### Leaf RTLmmmmppmp

Assumptions: `-OYP -OZP -OYQ -OZQ +OYR +OZR -YZP +YZQ`.

```c1top-geometry
P OHDYQ +ODY
P OHDZQ +ODZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODPQ +FPQ
P FHDZQ +FZQ
P FHDZR -FZR
P YOHZQ +YOZ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P YHFZQ -YFZ
P ZOHYQ -ZHQ
P ZOHQR +ZQR
P ZOCDQ +ZCQ
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
T OHQ YZ 0 lower 347/500
T OHQ YZ 10 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 99/125 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
579 L0*L1*L8; 56 L0*L8*L17; 626 L0*L8*L29; 19 L0*L12*L29
468 L0*L20*L27; 162 L0*L24*TY_Q_; 18 L1*L1*L10; 252 L1*L1*L12
383 L1*L1*L24; 305 L1*L2*L27; 930 L1*L3*L18; 15 L1*L3*L29
34 L1*L4*L17; 85 L1*L4*L29; 1109 L1*L6*L27; 6 L1*L7*L7
459 L1*L7*L29; 33 L1*L7*RX_P; 23 L1*L7*LY_R; 1027 L1*L8*L21
517 L1*L8*L24; 72 L1*L11*L21; 1726 L1*L11*L24; 25 L1*L12*L17
34 L1*L12*L23; 103 L1*L12*TX_Q_; 33 L1*L17*L29; 2 L1*L17*L31
33 L1*L17*LY_R; 122 L1*L18*TX_Q_; 657 L1*L21*RX_P; 6 L1*L22*L27
79 L1*L23*L24; 160 L1*L23*L29; 547 L1*L24*L29; 703 L1*L24*TX_Q_
3 L1*L29*L30; 122 L1*L29*RY_P; 204 L1*L29*TX_Q_; 6 L2*L12*L27
155 L2*L19*L27; 97 L2*L27*+OCF; 278 L2*L27*DROP_OHQ_YZ; 1110 L3*L18*L30
20 L3*L18*RX_P; 52 L3*L18*TX_Q_; 8 L3*L23*L30; 4 L4*L4*L17
64 L4*L4*TX_Q_; 64 L4*L5*L29; 121 L4*L6*L27; 2 L4*L11*L20
58 L4*L12*L17; 452 L4*L17*L17; 2241 L4*L17*L20; 278 L4*L17*L23
296 L4*L17*L27; 189 L4*L17*RY_P; 129 L4*L18*L29; 1914 L4*L20*L29
10 L4*L23*L24; 10 L4*L23*L29; 201 L4*L27*DROP_OHQ_YZ; 32 L4*L29*L29
26 L4*L29*TX_Q_; 174 L5*L5*RX_P; 42 L5*L16*L27; 189 L5*L18*RX_P
78 L5*RX_P*RX_P; 1042 L6*L7*L27; 77 L6*L12*L27; 207 L6*L17*L27
669 L6*L21*TY_Q_; 1208 L6*L22*L27; 1 L6*L27*L31; 141 L6*L27*+OCF
89 L6*L27*DROP_OHP_Y; 48 L6*L27*TX_Q_; 1 L7*L12*L18; 129 L7*L18*L23
151 L7*L23*L24; 267 L7*L23*RX_P; 77 L8*L16*TY_Q_; 33 L8*L17*L23
141 L8*L18*L21; 3 L8*L19*L27; 327 L8*L22*L27; 278 L8*L22*L29
1726 L8*L27*-OHD; 817 L8*L27*+OCF; 11 L8*L27*RY_P; 585 L8*L27*DROP_OHQ_YZ
578 L8*L27*TX_Q_; 1 L8*L29*RY_P; 30 L10*L17*L29; 820 L10*L21*L24
1 L10*L29*L30; 2 L11*L17*L23; 2 L11*L17*L30; 31 L11*L17*TX_Q_
2 L11*L18*L21; 14 L11*L18*L24; 179 L11*L20*L30; 35 L11*L21*L23
18 L11*L30*L30; 64 L12*L18*L30; 64 L12*L18*LY_R; 90 L12*L21*L27
57 L12*L21*L28; 1 L12*L21*TY_Q_; 49 L12*L22*L27; 83 L12*L23*L24
42 L12*L23*LY_R; 83 L12*L28*L29; 72 L13*L18*L27; 135 L14*L16*L27
1 L14*L17*L29; 1 L14*L21*L21; 7 L14*L21*L24; 90 L14*L21*L27
6 L14*L24*L29; 1133 L16*L16*TY_Q_; 657 L16*L21*L28; 611 L16*L21*TY_Q_
33 L16*L27*L28; 118 L16*L27*DROP_OHQ_YZ; 11 L16*TY_Q_*TY_Q_; 665 L17*L18*L20
135 L17*L18*TX_Q_; 80 L17*L22*L27; 11 L17*L23*L23; 118 L17*L23*L24
952 L17*L23*TX_Q_; 135 L17*L29*RY_P; 160 L18*L18*L21; 985 L18*L20*L21
225 L18*L21*L27; 43 L18*L21*L28; 1213 L18*L21*L29; 126 L18*L21*RX_P
160 L18*RX_P*TY_Q_; 10 L18*TX_Q_*LY_R; 923 L21*L21*L27; 250 L21*L21*L28
240 L21*L21*TY_Q_; 673 L21*L23*L24; 484 L21*L23*L29; 644 L21*L23*RX_P
160 L21*L27*TY_Q_; 6 L22*L27*+OCF; 315 L22*L27*DROP_OHP_Y; 336 L23*L29*L29
557 L23*L29*RX_P; 6 L23*L30*L30; 160 L23*L30*TX_Q_; 6 L23*L30*LY_R
207 L23*RX_P*RX_P; 240 L23*TX_Q_*TX_Q_; 160 L23*TX_Q_*LY_R; 33 L28*L28*RX_P
174 L28*RX_P*TY_Q_; 97 L29*L29*DROP_OCR_Y; 250 TX_Q_*TX_Q_*LY_R; 305 KLOW*L27
143 -DPQ*L3; 246 -DPQ*L4; 228 -DPQ*L7; 2 -DPQ*L11
141 -DPQ*L12; 160 -DPQ*L18; 772 -DPQ*L27; 174 -DPQ*-OHD
926 -DPQ*DROP_OHP_Y; 985 -DPQ*TX_Q_; 537 -DPQ*DROP_OCR_Y; 1112 -FQR*L1
278 -FQR*L3; 10 -FQR*L4; 517 -FQR*L7; 278 -FQR*L9
83 -FQR*L12; 118 -FQR*L17; 673 -FQR*L21; 16 -HCY*L0
33 -HCY*L17; 81 -HCY*L18; 702 -HCY*L20; 657 -HCY*L25
2 -HCY*L28; 18 -HCY*L30; 159 -HCY*TX_Q_; 160 -HCY*LX_R
53 +OCP*L1; 1084 +OCP*L3; 32 +OCP*L5; 73 +OCP*L6
77 +OCP*L9; 79 +OCP*L10; 147 +OCP*L12; 836 +OCP*L21
4 +OCP*L23; 155 +OCP*L27; 52 +OCP*DROP_OHP_Y; 21 -CDP*L1
281 -CDP*L5; 77 -CDP*L8; 2 -CDP*L10; 83 -CDP*L13
213 -CDP*L17; 52 -CDP*-OHD; 46 -CDP*RX_P; 1992 -CDP*DROP_OHQ_YZ
125 -CDP*TX_Q_; 164 -CDP*TY_Q_; 96 -DFQ*L1; 83 -DFQ*L13
1111 -DFQ*L16; 129 -DFQ*L18; 58 -DFQ*L29; 93 -DFQ*RX_P
20 +HFR*L1; 111 +HFR*L4; 300 +HFR*L9; 10 +HFR*L18
41 +HFR*L20; 1048 +HFR*L22; 612 +HFR*L29; 1 +HFR*L31
356 +HFR*DROP_OHQ_YZ; 306 +HFR*TX_Q_; 175 +HYZ; 252 +HYZ*L1
102 +HYZ*L3; 1 +HYZ*L7; 25 +HYZ*L17; 75 +HYZ*L23
160 +HYZ*DROP_OHQ_YZ; 1193 +HYR*L1; 41 +HYR*L4; 319 +HYR*L7
176 +HYR*L23; 830 +HYR*-OHD; 746 +HYR*+OCF; 10 +HYR*RY_P
6 +HYR*TX_Q_; 252 -OZQ*L0; 1102 -OZQ*L9; 31 -OZQ*L17
35 -OZQ*L22; 103 -OZQ*+OCF; 46 -OZQ*DROP_OCR_Y; 1699 +OYR*L0
325 +OYR*L6; 5 +OYR*L19; 464 +OYR*L22; 390 +OYR*-OHD
71 +OYR*+OCF; 879 +OYR*DROP_OHQ_YZ; 39 +OYR*TY_Q_; 1 -YZP*+OCF
141 -YZP*DROP_OHQ_YZ; 1 -YZP*TX_Q_; 135 -YZP*DROP_OCR_Y; 1044 +YZQ*L1
1 +YZQ*L20; 35 +YZQ*L22; 103 +YZQ*+OCF; 1296 +YZQ*C_OHD_Y
110 +YZQ*DROP_OHP_Y; 136 +YZQ*DROP_OCR_Y; 86 -OYZ*L16; 1082 -OYZ*L21
40 -OYZ*L23; 78 C_OHQ_YZ*L4; 644 C_OHQ_YZ*L27; 579 C_OYQ_Z*L2
1102 C_OYQ_Z*L12; 1 C_OYQ_Z*L21; 1705 C_OYQ_Z*L24; 7 Q_OZRH_Y*L21
6 Q_OZRH_Y*L29; 136 Q_DQYP_Z*L27
```

Upper bound: `-22042673/5000000`.

### Leaf RTLmmmmppp

Assumptions: `-OYP -OZP -OYQ -OZQ +OYR +OZR +YZP`.

```c1top-geometry
P OHDYQ +ODY
P OHDZQ +ODZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODPQ +FPQ
P FHDZQ +FZQ
P FHDZR -FZR
P YOHZP +YOZ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODZP -YDZ
P YODZQ +YZQ
P YODPQ +YPQ
P YHDFZ -YFZ
P ZOHDY -ZHD
P ZOHDQ -ZHQ
P ZOHDR +ZDR
P ZOHYP -ZHP
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZOCDQ +ZCQ
P ZODPQ +ZPQ
P ZHDFP -ZFP
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OHZ Y 6 lower 93/292
T OHP YZ 8 lower 347/438
T OHQ YZ 10 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 99/125 1
q 53/500 88/125
l 99/125 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
4 L1*L24; 4 L0*L8*L27; 1 L0*L8*RX_P; 3 L0*L8*TY_Q_
1 L0*L18*L21; 1 L0*L27*L30; 10 L1*L1*+OCF; 2 L1*L1*DROP_OCR_Y
1 L1*L4*L20; 1 L1*L6*L27; 3 L1*L8*L11; 9 L1*L8*L18
1 L1*L8*L23; 4 L1*L9*L24; 1 L1*L10*L29; 4 L1*L11*RX_P
4 L1*L12*L21; 5 L1*L12*DROP_OHP_YZ; 14 L1*L12*RX_P; 1 L1*L12*LY_R
1 L1*L14*L20; 1 L1*L15*L16; 2 L1*L16*L31; 1 L1*L19*L24
8 L1*L19*L29; 8 L1*L20*L20; 1 L1*L20*L27; 10 L1*L21*RX_P
1 L1*L22*L24; 3 L1*L23*L27; 5 L1*L24*DROP_OHP_YZ; 5 L1*L24*DROP_OHQ_YZ
10 L1*L24*DROP_OCR_Y; 10 L1*L26*L29; 10 L1*L29*-OHD; 1 L1*L29*DROP_OHP_YZ
1 L1*L29*RY_P; 4 L1*L29*DROP_OHQ_YZ; 4 L1*DROP_OHP_YZ*TX_Q_; 17 L2*L12*L19
1 L2*L19*L27; 53 L2*L20*RY_P; 1 L2*L27*RY_P; 1 L3*L11*L11
1 L3*L15*L18; 1 L3*L18*L27; 8 L4*L17*L17; 51 L4*L17*L20
8 L4*L17*TX_Q_; 1 L5*L8*L23; 2 L5*L11*RX_P; 4 L5*L16*L16
46 L5*L16*L21; 1 L5*L17*L27; 1 L5*L27*DROP_OHQ_YZ; 61 L6*L16*TY_Q_
4 L6*L19*L27; 9 L6*L20*RY_P; 4 L6*L27*DROP_OHQ_YZ; 9 L6*L27*DROP_OCR_Y
3 L7*L31*LY_R; 6 L8*L10*L27; 5 L8*L16*L28; 2 L8*L23*DROP_OHP_YZ
3 L8*L23*DROP_OHQ_YZ; 7 L8*L27*-OHD; 7 L8*L27*DROP_OHQ_YZ; 2 L9*L21*TY_Q_
1 L10*L21*L29; 8 L11*L16*L20; 1 L11*L16*L23; 1 L11*L16*L30
1 L11*L18*TX_Q_; 10 L11*RX_P*DROP_OHQ_YZ; 17 L11*RX_P*DROP_OCR_Y; 16 L12*L16*TY_Q_
14 L12*L17*L23; 7 L12*L19*L20; 2 L12*L19*LY_R; 9 L12*L21*TY_Q_
2 L12*L23*L27; 11 L12*L26*RY_P; 6 L12*L26*TY_Q_; 12 L12*DROP_OHP_YZ*TY_Q_
26 L12*RY_P*DROP_OHQ_YZ; 4 L12*TY_Q_*LY_R; 3 L14*L16*L21; 1 L14*L18*L21
2 L14*L19*L24; 12 L14*L20*L27; 9 L14*L21*L21; 5 L14*L21*RX_P
1 L14*RX_P*TY_Q_; 3 L15*L18*L24; 15 L15*L27*DROP_OHP_YZ; 3 L15*L27*RX_P
1 L15*L29*RY_P; 46 L16*L16*TY_Q_; 42 L16*L18*L21; 6 L16*L21*L28
7 L16*L21*TY_Q_; 4 L17*L17*L23; 27 L17*L20*L23; 5 L17*L23*L24
13 L17*L23*TX_Q_; 2 L19*L29*DROP_OCR_Y; 33 L20*L20*RY_P; 1 L20*L21*L27
5 L20*L27*DROP_OHP_YZ; 8 L21*L21*L28; 1 L21*L26*L27; 1 L23*L24*DROP_OCR_Y
3 L23*L27*-OHD; 1 L27*DROP_OHQ_YZ*DROP_OHQ_YZ; 2 L29*RY_P*DROP_OCR_Y; 1 L31*RX_P*LY_R
27 -DPQ; 1 -DPQ*L0; 9 -DPQ*L6; 2 -DPQ*L9
1 -DPQ*L10; 34 -DPQ*L12; 42 -DPQ*DROP_OHP_YZ; 33 -DPQ*DROP_OHQ_YZ
5 -FQR*L17; 1 -FQR*DROP_OCR_Y; 6 +OCY*L27; 6 -HCY*L10
14 -HCY*L13; 9 -HCY*L19; 1 -HCY*DROP_OHP_YZ; 1 -HCY*RY_P
10 -HCY*DROP_OHQ_YZ; 9 -HCY*DROP_OCR_Y; 1 +HCZ*L1; 14 +HCZ*L9
1 +HCZ*L19; 4 +HCZ*L21; 1 +HCZ*RY_P; 3 -CDP*L11
1 -CDP*L14; 38 -CDP*L20; 16 -CDP*DROP_OHQ_YZ; 1 -CDP*LY_R
18 -DFQ*L16; 1 -DFQ*L26; 26 -DFQ*DROP_OHP_YZ; 1 -DFQ*LY_R
4 +HFR*L9; 2 +HFR*L11; 9 +HFR*L19; 1 +HFR*L22
8 +HFR*L26; 5 +HFR*DROP_OHP_YZ; 4 +HFR*DROP_OHQ_YZ; 1 +HFR*LY_R
19 +HYZ*DROP_OHP_YZ; 4 +HYZ*TY_Q_; 1 -CYZ*L22; 16 -CYZ*DROP_OHP_YZ
3 -CYZ*DROP_OCR_Y; 9 +HYR*L10; 1 +HYR*-OHD; 1 +HYR*DROP_OHP_YZ
1 +HYR*DROP_OHQ_YZ; 1 +HYR*DROP_OCR_Y; 18 -OZQ*L9; 1 -OZQ*L18
9 -OZQ*L21; 2 -OZQ*L27; 1 -OZQ*-OHD; 25 -OZQ*DROP_OHP_YZ
1 -OZQ*RX_P; 15 -OZQ*DROP_OCR_Y; 21 +OYR*L0; 3 +OYR*L11
15 +OYR*L15; 18 +OYR*L18; 6 +OYR*L20; 1 +OYR*L27
1 +YZP*L22; 23 +YZP*L27; 1 +YZP*-OHD; 16 +YZP*+OCF
18 +YZP*DROP_OHQ_YZ; 40 +YZP*DROP_OCR_Y; 1 +CPQ*L12; 1 -DZQ*L27
2 -OYZ*L2; 4 -OYZ*L17; 1 -OYZ*RY_P; 4 -OYZ*TY_Q_
7 +DYZ*L17; 1 +FYZ*RY_P; 1 C_OHQ_YZ*L27; 1 C_OYQ_Z*RY_P
12 C_HCP_Z*L8; 2 Q_OQFH_YZ*L27; 15 Q_OZRH_Y*L10; 5 Q_OZRH_Y*L19
18 Q_OPQY_Z*L12; 7 Q_HYCP_Z*L11; 11 LEFTSUP
```

Upper bound: `-48223897/500000000`.

### Leaf RTLmmmpm

Assumptions: `-OYP -OZP -OYQ +OZQ -OYR`.

```c1top-geometry
P OHDYQ +ODY
P OHFYR +OFY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFQR +DQR
P DCFZP +DZP
P DCFZQ -DZQ
P FOHYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YODPQ +YPQ
P YODPR +YPR
P YOFZR +YZR
P YOFQR +YQR
P ZOHFQ -ZHQ
P ZOHYQ -ZYQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
T OHR Y 12 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF YR 3 lower 135501/250000
O fc - 1 lower 135501/250000
O hc - 0 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 159/500 88/125
t 133/200 1
```

```c1top-sum
15 L21*L27; 7 L29*LY_R; 2 L0*L4*L17; 3 L0*L4*TX_Q_
1 L0*L8*L30; 30 L0*L22*LX_R; 11 L0*L30*LX_R; 8 L1*L3*L24
4 L1*L5*RX_P; 18 L1*L7*L24; 2 L1*L10*L24; 2 L1*L18*L21
10 L1*L23*L24; 10 L1*L24*+OCF; 18 L1*L24*DROP_OHQ_Y; 2 L2*L4*L17
2 L2*L4*L29; 5 L2*L8*LY_R; 22 L2*L22*LX_R; 4 L2*L29*-OHD
5 L3*L3*L11; 14 L3*L6*L27; 1 L3*L7*L11; 10 L3*L7*L18
12 L3*L7*L23; 1 L3*L11*L30; 1 L3*L18*L21; 1 L3*L18*L30
25 L3*L23*L24; 24 L4*L4*TX_Q_; 2 L4*L6*L29; 44 L4*L17*L20
27 L4*L17*L23; 14 L4*L17*DROP_OHQ_Y; 4 L4*L20*L29; 13 L4*L23*TX_Q_
5 L4*L28*L29; 9 L5*L5*L21; 41 L5*L16*L21; 4 L5*L21*RX_P
8 L5*RX_P*TY_Q_; 38 L6*L7*L27; 4 L6*L21*TY_Q_; 19 L6*L22*L27
5 L6*L22*LX_R; 23 L6*L27*-OHD; 37 L6*L27*DROP_OHQ_Y; 36 L7*L7*L23
40 L7*L23*L24; 10 L7*L23*RX_P; 5 L7*L23*TX_Q_; 15 L7*TX_Q_*LY_R
4 L8*L20*LY_R; 3 L10*L20*L29; 3 L11*L21*LX_R; 8 L16*L21*TY_Q_
3 L16*TY_Q_*TY_Q_; 16 L17*L23*L23; 12 L17*L23*TX_Q_; 4 L18*L20*L21
13 L18*L21*L23; 5 L19*L23*L29; 21 L20*L29*RY_P; 11 L21*L22*L27
12 L21*L27*-OHD; 11 L22*L22*LX_R; 2 L23*L29*C_OHD_Y; 1 L23*L29*DROP_OHP_Y
6 L23*L29*RY_P; 2 L23*L30*RX_P; 3 L26*L30*TX_Q_; 4 L29*RY_P*DROP_OHQ_Y
11 TOPCOUNT*L18; 30 -DPQ*L1; 2 -DPQ*L4; 25 -DPQ*L7
13 -DPQ*L23; 1 -DPQ*+OCF; 27 -DPQ*C_OHD_Y; 4 -DPQ*DROP_OHQ_Y
32 -FQR*L1; 38 -FQR*L7; 11 -FQR*L22; 47 -FQR*C_OHD_Y
1 -OHY*L7; 49 -OHY*L25; 20 -OHY*L26; 6 -OHY*DROP_OHQ_Y
6 -HCY*L3; 1 -HCY*L7; 6 -HCY*L21; 1 -HCY*-OHD
9 -HCY*DROP_OHQ_Y; 5 -HCY*DROP_OHR_Y; 35 +OCP*L3; 10 +OCP*L7
3 +OCP*L21; 10 -CDP*L5; 1 -CDP*L28; 2 -CDP*+OCF
27 -CDP*DROP_OHQ_Y; 2 -CDP*TY_Q_; 13 +CDQ*L18; 8 -DFQ*L4
2 -DFQ*L6; 2 -DFQ*L20; 8 -DFQ*-OHD; 25 -DFQ*DROP_OHP_Y
11 -DFQ*RY_P; 32 +HFR*L3; 9 +HFR*L22; 11 +HFR*-OHD
16 +HFR*+OCF; 3 +HFR*DROP_OHQ_Y; 15 +HFR*TX_Q_; 4 -OYR*L1
5 -OYR*+OCF; 23 -OYR*C_OHD_Y; 3 -OYR*DROP_OHQ_Y; 3 +HQR*L29
18 C_OHR_Y*L11; 4 C_OHR_Y*L23
```

Upper bound: `-516505519/1000000000`.

### Leaf RTLmmmppmmm

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP -ODZ -OFY`.

```c1top-geometry
P OHDFZ -OFZ
P OHDYQ +ODY
P OHDZR +OZR
P OHYZQ -OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHCZ +DHZ
P DOHYZ +DYZ
P DOCZP +DZP
P DOCZQ -DZQ
P DOCZR -DZR
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHFZ -YFZ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODZQ +YZQ
P YODPQ +YPQ
P ZOHFQ -ZHQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OD ZP 2 lower 135501/250000
O dh - 0 lower 135501/250000
S Q - 3 upper 91249/114499
X Q - 10 lower 16460907/28624750
Y Q - 11 lower 27086157/39250000
```

```c1top-box
h 271/500 219/250
c 93/250 219/250
d 271/500 213/250
f 93/250 797/1000
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 23/40 1
m 69/100 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
743 L0*L6*L27; 781 L0*L6*L28; 68 L0*L6*L29; 29 L0*L17*L27
47 L0*L27*L27; 97 L0*L27*L30; 15 L1*L1*L24; 44 L1*L1*L29
19 L1*L3*L13; 194 L1*L3*L24; 70 L1*L8*L28; 25 L1*L11*L13
39 L1*L17*L24; 303 L1*L18*L24; 722 L1*L21*L24; 416 L1*L21*RX_P
71 L1*L24*LY_R; 137 L1*L29*LY_R; 54 L1*L30*L30; 50 L1*L30*L31
47 L1*LY_R*LY_R; 261 L2*L4*L17; 102 L3*L4*L4; 37 L3*L4*L30
46 L3*L13*L18; 2 L3*L13*LY_R; 89 L3*L14*L18; 138 L3*L18*L27
294 L3*L18*L30; 177 L3*L18*RX_P; 3 L3*L29*LY_R; 45 L3*L31*LY_R
555 L4*L4*L17; 553 L4*L4*LX_R; 878 L4*L6*L17; 1068 L4*L6*L27
1623 L4*L6*L28; 130 L4*L6*L29; 76 L4*L8*L28; 17 L4*L8*RY_P
32 L4*L9*L17; 85 L4*L10*L21; 4 L4*L12*L17; 78 L4*L12*L28
12 L4*L13*L30; 78 L4*L14*L17; 97 L4*L17*L17; 308 L4*L17*L18
218 L4*L17*L21; 1305 L4*L17*L23; 22 L4*L17*L27; 17 L4*L17*L31
365 L4*L21*L27; 96 L4*L23*L24; 55 L4*L24*LY_R; 652 L5*L18*L21
283 L5*L18*RX_P; 7 L5*L21*L28; 501 L6*L6*L27; 8 L6*L6*RY_P
1216 L6*L6*TY_Q_; 10 L6*L8*L27; 1 L6*L10*L27; 48 L6*L17*L27
82 L6*L18*L21; 265 L6*L18*L27; 265 L6*L18*L30; 1988 L6*L21*L27
634 L6*L21*L28; 784 L6*L21*TY_Q_; 346 L6*L22*L27; 333 L6*L24*L27
384 L6*L27*L27; 348 L6*L27*L30; 74 L7*L23*RX_P; 236 L7*L24*LY_R
146 L7*L29*LY_R; 159 L7*LY_R*LY_R; 22 L8*L12*L28; 4 L8*L16*L27
47 L8*L17*L28; 69 L8*L18*L30; 40 L8*L22*L29; 28 L8*L23*L27
42 L8*L23*L30; 4 L10*L16*L27; 23 L10*L17*L29; 99 L10*L18*L29
34 L11*L17*L30; 2 L11*L21*L24; 7 L11*L21*L28; 44 L11*L24*L30
50 L11*L30*L30; 455 L11*L30*TX_Q_; 2 L12*L18*L21; 2 L12*L27*L29
78 L13*L18*L30; 2 L13*L21*L27; 2 L13*L23*L24; 2 L13*L23*L29
2 L13*L23*RX_P; 78 L15*L17*L30; 176 L16*L16*TY_Q_; 464 L16*L21*L28
769 L16*L28*TY_Q_; 750 L16*TY_Q_*TY_Q_; 591 L17*L18*L23; 236 L17*L22*L30
517 L17*L23*L23; 34 L17*L23*L24; 26 L17*L26*L30; 25 L17*L28*L30
29 L17*L29*LY_R; 96 L17*L30*TY_Q_; 3 L17*L30*LY_R; 4 L17*L31*LY_R
591 L18*L18*L21; 436 L18*L21*L28; 107 L18*L21*RX_P; 233 L18*L21*TY_Q_
8 L18*L29*L29; 784 L21*L21*L27; 395 L21*L22*L27; 784 L21*L23*L24
569 L21*L24*L27; 48 L21*L27*L30; 76 L21*L28*L28; 58 L21*L28*L31
48 L21*RX_P*LY_R; 395 L22*L23*L24; 15 L22*L24*RX_P; 569 L23*L24*L24
15 L23*L24*L30; 404 L23*L24*L31; 69 L23*L29*RX_P; 69 L23*RX_P*RX_P
553 L24*L28*L28; 55 L27*L28*LX_R; 22 L28*L28*RX_P; 76 L28*L30*TX_Q_
102 L30*L30*-OHD; 3 L30*L30*DROP_OCR_Y; 432 L31*TX_Q_*LY_R; 498 -DPQ*L5
82 -DPQ*L6; 171 -DPQ*L9; 58 -DPQ*L13; 591 -DPQ*L18
436 -DPQ*-OHD; 402 -DPQ*+OCF; 107 -DPQ*DROP_OHP_Y; 233 -DPQ*TY_Q_
257 -FQR*L1; 96 -FQR*L4; 569 -FQR*L6; 481 -FQR*L9
404 -FQR*L11; 2 -FQR*L13; 48 -FQR*L17; 784 -FQR*L21
395 -FQR*L22; 569 -FQR*L24; 305 -FQR*C_OHD_Y; 46 -HCY*L1
50 -HCY*L3; 95 -HCY*L4; 22 -HCY*L12; 25 -HCY*L15
51 -HCY*L17; 99 -HCY*L18; 89 -HCY*L24; 48 -HCY*DROP_OHQ_Y
492 -HCY*TX_Q_; 26 -HCY*DROP_OCR_Y; 19 -HCY*LY_R; 4 +CDZ*L6
22 +CDZ*L9; 25 +CDZ*L10; 60 +CDZ*L17; 67 +CDZ*L19
18 +CDZ*L20; 22 +CDZ*RY_P; 213 +CDZ*DROP_OHQ_Y; 263 +OCP*L3
344 +OCP*L12; 278 +OCP*L21; 116 +OCP*L27; 48 +OCP*L30
205 +OCP*RX_P; 450 -CDP*L13; 102 -CDP*L28; 37 -CDP*L29
1071 -DFQ*L4; 1337 -DFQ*L6; 58 -DFQ*L9; 113 -DFQ*L10
420 -DFQ*L16; 233 -DFQ*L23; 95 -DFQ*RX_P; 269 -DFQ*LY_R
861 -OHR*L1; 34 -OHR*L3; 511 -OHR*L4; 22 -OHR*L7
30 -OHR*L8; 141 -OHR*L10; 9 -OHR*L17; 38 -OHR*L18
39 -OHR*L21; 254 -OHR*L23; 241 -OHR*LY_R; 204 +HFR*L3
649 +HFR*L4; 214 +HFR*L7; 60 +HFR*L8; 52 +HFR*L11
29 +HFR*L17; 265 +HFR*L18; 634 +HFR*L21; 220 +HFR*L22
350 +HFR*L27; 417 +HFR*-OHD; 126 +HFR*DROP_OCR_Y; 11 +HYZ*L4
49 +HYR*L21; 45 +HYR*L30; 388 -OYQ; 47 -OYQ*L1
269 -OYQ*L4; 448 -OYQ*L6; 171 -OYQ*L13; 85 -OYQ*+OCF
171 -OYQ*DROP_OHP_Y; 28 -OYQ*DROP_OCR_Y; 52 -OYQ*LX_R; 30 -YZP
22 -YZP*L4; 25 -YZP*-OHD; 22 -YZP*+OCF; 171 -YZP*DROP_OHQ_Y
65 -ODZ*L3; 171 -ODZ*L9; 25 -ODZ*L10; 72 -ODZ*L20
392 -ODZ*RX_P; 11 -ODZ*RY_P; 101 -ODZ*DROP_OHQ_Y; 213 -OFY*L4
34 -OFY*L6; 414 -OFY*L17; 480 -OFY*L22; 25 -OFY*L27
37 -OFY*+OCF; 74 -OFY*C_OHD_Y; 437 -OFY*DROP_OHP_Y; 99 -OFY*RY_P
500 -OFY*DROP_OHQ_Y; 228 -CZP; 25 -CZP*L1; 22 -CZP*L5
4 -CZP*L7; 231 -CZP*L21; 11 +DYZ*L4; 78 +DZP*L28
4 +DZP*L29; 171 -DZQ*L8; 60 -DZQ*L16; 323 Q_OCPD_Z*L6
47 Q_OCPD_Z*L8; 22 Q_OCPD_Z*L27; 28 Q_CPDY_Z*L17; 70 Q_CPDY_Z*L28
5 Q_DQYP_Z*L28
```

Upper bound: `-83844127/1000000000`.

### Leaf RTLmmmppmmp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP -ODZ +OFY`.

```c1top-geometry
P OHDFY +ODY
P OHDFZ -OFZ
P OHDYZ -OYZ
P OHDZR +OZR
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHCZ +DHZ
P DOHYZ +DYZ
P DOCZP +DZP
P DOCZQ -DZQ
P DOCZR -DZR
P DOFQR +DQR
P FOHYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODZQ +YZQ
P YODPQ +YPQ
P ZOHFQ -ZHQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OD ZP 2 lower 135501/250000
E5 OF YR 3 lower 135501/250000
O dh - 0 lower 135501/250000
O fc - 1 lower 135501/250000
S Q - 2 upper 91249/114499
S Q - 3 upper 91249/114499
X Q - 10 lower 21327228999/28624750000
Y Q - 11 lower 21327228999/28624750000
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 271/500 797/1000
f 271/500 797/1000
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 149/200 1
m 149/200 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
9 L0*L4*L17; 22 L0*L4*TX_Q_; 8 L0*L8*LY_R; 3 L0*L10*L29
2 L0*L17*L17; 31 L0*L20*L29; 4 L0*L23*L29; 30 L1*L1*L24
25 L1*L2*L2; 30 L1*L2*L8; 43 L1*L2*L21; 12 L1*L4*L24
90 L1*L6*L6; 17 L1*L6*L8; 31 L1*L6*L21; 3 L1*L8*L13
3 L1*L8*L16; 6 L1*L8*L21; 57 L1*L8*L22; 2 L1*L8*L27
1 L1*L11*L21; 1 L1*L12*L24; 1 L1*L12*L29; 38 L1*L23*L24
23 L1*L24*LY_R; 24 L1*L28*L29; 2 L1*L29*L29; 2 L1*RX_P*RX_P
23 L2*L2*L21; 119 L2*L4*L17; 40 L2*L4*L29; 32 L2*L4*TX_Q_
1 L2*L7*L14; 7 L2*L8*RY_P; 1 L2*L13*L28; 1 L2*L15*L29
2 L2*L21*L27; 14 L2*L29*+OCF; 87 L3*L4*L4; 22 L3*L18*L30
33 L3*L18*RX_P; 14 L3*L30*L30; 299 L4*L4*TX_Q_; 76 L4*L5*L29
140 L4*L6*L17; 103 L4*L6*L27; 7 L4*L6*L31; 212 L4*L6*TX_Q_
4 L4*L8*L19; 4 L4*L11*L17; 1 L4*L13*L30; 1 L4*L17*L17
36 L4*L17*L20; 334 L4*L17*L23; 27 L4*L17*C_OHD_Y; 8 L4*L17*RY_P
19 L4*L20*L29; 31 L4*L23*L24; 304 L4*L23*TX_Q_; 81 L5*L16*L21
156 L5*L18*RX_P; 220 L5*L21*L21; 78 L5*L21*L29; 6 L5*L29*RY_P
8 L6*L7*L18; 26 L6*L9*L27; 2 L6*L12*L27; 85 L6*L18*L21
218 L6*L21*L27; 304 L6*L21*TY_Q_; 3 L6*L23*L27; 2 L6*L27*L27
46 L6*L27*+OCF; 115 L6*L27*C_OHD_Y; 14 L6*L30*L30; 26 L7*L10*L24
1 L7*L13*LY_R; 6 L7*L18*L23; 1 L7*L23*L24; 72 L7*L23*L30
68 L7*L24*LY_R; 2 L7*LY_R*LY_R; 3 L8*L19*L27; 5 L8*L23*L29
6 L8*L23*L30; 1 L8*L27*RY_P; 1 L8*L28*LY_R; 64 L8*L30*LY_R
2 L9*L28*L29; 3 L10*L11*L29; 4 L10*L13*L29; 3 L10*L16*L29
3 L10*L19*L24; 1 L10*L24*RY_P; 5 L10*L28*L29; 33 L10*L29*L30
1 L10*L30*TX_Q_; 51 L11*L23*L29; 3 L13*L18*L30; 1 L13*L28*L29
3 L15*L17*L30; 147 L17*L18*L23; 180 L17*L23*L23; 81 L17*L23*L29
14 L17*L23*L30; 168 L18*L18*L21; 180 L18*L21*L23; 14 L18*L21*L30
8 L18*L29*L29; 21 L18*RX_P*TY_Q_; 44 L20*L26*L29; 9 L20*L30*L30
115 L21*L21*L27; 67 L21*L22*L27; 115 L21*L23*L24; 68 L21*L24*L27
52 L21*L27*L28; 44 L21*TY_Q_*TY_Q_; 44 L23*L23*TX_Q_; 132 L23*L24*L24
14 L23*L24*L29; 8 L23*L24*LY_R; 20 L23*L28*L29; 27 L23*L29*C_OHD_Y
67 L23*L29*TX_Q_; 67 L23*L30*TX_Q_; 67 L23*TX_Q_*LY_R; 64 L24*TX_Q_*LY_R
33 L29*L29*C_OHD_Y; 15 L30*L30*DROP_OHQ_Y; 32 L30*TX_Q_*LY_R; 8 TX_Q_*LY_R*LY_R
174 -DPQ*L4; 85 -DPQ*L6; 168 -DPQ*L18; 180 -DPQ*L23
112 -DPQ*L27; 67 -DPQ*+OCF; 14 -DPQ*C_OHD_Y; 112 -DPQ*DROP_OCR_Y
31 -FQR*L4; 58 -FQR*L6; 6 -FQR*L8; 110 -FQR*L17
115 -FQR*L21; 132 -FQR*L24; 73 -FQR*+OCF; 67 -FQR*C_OHD_Y
110 -FQR*DROP_OHP_Y; 8 -FQR*DROP_OCR_Y; 76 -OHY*L27; 3 -HCY*L11
3 -HCY*L12; 3 -HCY*L17; 51 -HCY*L22; 5 -HCY*L28
33 -HCY*L30; 64 -HCY*LX_R; 3 +CDZ*L2; 16 +CDZ*RY_P
65 +OCP*L3; 12 +OCP*L5; 2 +OCP*L7; 49 +OCP*L12
81 +OCP*L21; 3 +OCP*L30; 34 +OCP*RX_P; 1 +OCP*TY_Q_
43 -CDP*L2; 115 -CDP*L5; 19 -CDP*L6; 49 -CDP*L13
16 -CDP*L15; 19 -CDP*L28; 20 -CDP*TY_Q_; 217 -DFQ*L4
212 -DFQ*L6; 6 -DFQ*L18; 122 -DFQ*L21; 35 -DFQ*L23
51 -DFQ*L26; 56 -DFQ*-OHD; 91 -DFQ*+OCF; 45 -DFQ*DROP_OHP_Y
10 -DFQ*DROP_OCR_Y; 2 -OHR*L1; 107 -OHR*L10; 10 +HFR*L4
27 +HFR*L11; 1 +HFR*L12; 59 +HFR*L30; 64 +HFR*L31
58 +HFR*TX_Q_; 4 +HYZ*L4; 110 +HYR*L1; 30 +HYR*L3
1 +HYR*L4; 15 +HYR*L7; 8 +HYR*L10; 114 +HYR*L23
94 +HYR*+OCF; 6 +HYR*DROP_OHQ_Y; 23 +HYR*DROP_OCR_Y; 6 -OYQ*L24
1 -OYQ*L29; 46 +OYR*L6; 8 +OYR*L11; 3 +OYR*L19
113 +OYR*L22; 23 +OYR*L27; 134 +OYR*C_OHD_Y; 1 -YZP
4 -YZP*L4; 7 -YZP*+OCF; 15 -ODZ*L3; 4 -ODZ*L4
4 -ODZ*L9; 15 -ODZ*DROP_OHP_Y; 35 -ODZ*RX_P; 50 +OFY*L1
19 +OFY*L2; 2 +OFY*L4; 3 +OFY*L11; 4 +OFY*L13
51 +OFY*L22; 58 +OFY*L24; 12 +OFY*L29; 3 +OFY*DROP_OHP_Y
1 +OFY*TX_Q_; 91 +OFY*DROP_OCR_Y; 59 +HQR*L29; 93 -CZP*L1
4 -CZP*L3; 93 -CZP*C_OHD_Y; 10 +DZP*L5; 3 +DZP*L28
1 Q_OCPD_Z*L17; 9 Q_OPDY_Z*L29
```

Upper bound: `-652855997/500000000`.

### Leaf RTLmmmppmpmmmmm

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ -OFY -HDZ -HZP -CFZ -CZQ`.

```c1top-geometry
P OHDYQ +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFZR +CZR
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FOCYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHYQ -ZYQ
P ZOCPQ +ZPQ
P ZOCQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
5037 L27*L27; 1345 L0*L0*L9; 3 L0*L0*L13; 1754 L0*L0*L21
1026 L0*L0*L31; 167 L0*L0*TY_Q_; 25007 L0*L0*LX_R; 576 L0*L2*L27
3487 L0*L4*L17; 167 L0*L4*L28; 2 L0*L6*L13; 4856 L0*L6*L27
1 L0*L6*L29; 833 L0*L8*L11; 2618 L0*L8*L17; 141 L0*L8*L30
576 L0*L9*L27; 1026 L0*L10*L30; 10 L0*L13*L21; 11 L0*L13*L24
139 L0*L13*L27; 6101 L0*L16*L27; 364 L0*L17*L17; 1096 L0*L17*L30
5755 L0*L19*L27; 19221 L0*L20*L27; 335 L0*L21*L24; 478 L0*L21*L31
2159 L0*L23*L24; 718 L0*L24*L31; 6320 L0*L27*L27; 6320 L0*L27*L28
10085 L0*L27*RY_P; 3765 L0*L27*TY_Q_; 29100 L0*L27*LX_R; 982 L0*L30*L30
2671 L1*L3*L18; 15518 L1*L4*L24; 2385 L1*L10*L24; 361 L1*L17*L24
316 L1*L17*L29; 1754 L1*L21*L30; 209 L1*L24*L24; 138 L1*L24*L29
274 L1*L31*RX_P; 364 L1*RX_P*RX_P; 4169 L2*L4*L27; 204 L2*L8*L27
370 L2*L14*L27; 1152 L2*L27*RY_P; 984 L3*L10*L18; 4173 L3*L17*L18
1177 L3*L18*L21; 6740 L3*L18*L30; 167 L4*L4*L30; 4097 L4*L6*L17
14195 L4*L6*L27; 111 L4*L6*TY_Q_; 910 L4*L10*L17; 139 L4*L12*L27
5777 L4*L17*L17; 35 L4*L17*L22; 11756 L4*L17*L27; 157 L4*L17*TY_Q_
1511 L4*L20*L27; 630 L4*L21*L30; 267 L4*L23*L24; 3162 L4*L23*L29
157 L5*L18*L21; 3400 L5*L21*L27; 785 L5*RX_P*RX_P; 1045 L6*L10*L17
2939 L6*L10*L27; 196 L6*L10*L30; 2 L6*L13*L27; 2 L6*L14*L29
500 L6*L17*L27; 2074 L6*L18*L21; 159 L6*L21*L27; 631 L6*L21*TY_Q_
15452 L6*L22*L27; 120 L6*L24*L27; 18270 L6*L27*L27; 1 L6*L27*L29
204 L8*L17*L27; 1314 L8*L22*L27; 2176 L8*L23*L30; 583 L9*L21*L27
578 L10*L10*L29; 140 L10*L17*L17; 204 L10*L17*L27; 48 L10*L18*L21
908 L10*L21*L27; 347 L11*L17*L29; 504 L11*L18*L29; 70 L11*L21*L30
48 L11*L23*RX_P; 478 L11*L30*RX_P; 140 L11*RX_P*RX_P; 1 L12*L18*L21
10 L13*L21*L27; 10 L13*L23*L24; 3 L13*L23*L29; 1 L13*L23*RX_P
37 L14*L27*L29; 1 L15*L21*L27; 1 L15*L23*L24; 986 L17*L17*L23
1336 L17*L18*L21; 183 L17*L21*L27; 551 L17*L22*L29; 183 L17*L23*L24
139 L17*L29*TY_Q_; 334 L18*L21*L27; 334 L18*L23*L24; 15841 L18*L27*L30
631 L21*L21*L27; 631 L21*L23*L24; 265 L21*L27*L28; 120 L21*L27*L30
1 L21*L27*TY_Q_; 120 L21*L27*LX_R; 353 L21*L28*L29; 1 L22*L23*L24
3384 L22*L24*L27; 406 L23*L24*L31; 1344 L23*L29*RX_P; 996 L23*L30*L30
350 L23*RX_P*RX_P; 1883 L23*LY_R*LY_R; 2107 L27*L27*L27; 3384 L27*L27*DROP_OHQ_Y
1883 L27*L27*DROP_OCQ_Z; 334 L27*L29*RY_P; 167 L29*TY_Q_*TY_Q_; 204 L31*RX_P*LY_R
2107 LY_R*LY_R*LY_R; 4579 -DPQ*L3; 157 -DPQ*L5; 2074 -DPQ*L6
48 -DPQ*L10; 1 -DPQ*L12; 1336 -DPQ*L17; 5781 -DPQ*L27
5781 -DPQ*DROP_OCR_Y; 15452 -FQR*L1; 120 -FQR*L3; 267 -FQR*L4
1443 -FQR*L9; 10 -FQR*L13; 1 -FQR*L15; 183 -FQR*L17
334 -FQR*L18; 631 -FQR*L21; 1 -FQR*L22; 120 -FQR*L25
406 -FQR*L31; 3384 -FQR*LY_R; 2094 -HCY*L1; 619 -HCY*L3
3487 -HCY*L4; 833 -HCY*L11; 2140 -HCY*L17; 726 -HCY*L18
1628 -HCY*L23; 120 -HCY*L24; 257 -HCY*DROP_OHQ_Y; 1849 -HCY*TX_Q_
440 -HCY*DROP_OCR_Y; 136 -HCY*LY_R; 144 +OCP*L1; 5955 +OCP*L3
1686 +OCP*L10; 517 +OCP*L17; 3412 +OCP*L21; 299 +OCP*L22
11672 +OCP*L27; 2703 -CDP*L0; 862 -CDP*L10; 3656 -CDP*L17
6814 -CDP*L20; 854 -CDP*L22; 5655 -CDP*L27; 785 -CDP*L30
277 -DFQ*L4; 9 -DFQ*L12; 2162 -DFQ*L16; 1226 -DFQ*RX_P
6130 -OHR*L1; 103 -OHR*L3; 1924 -OHR*L4; 71 -OHR*L6
1010 -OHR*L9; 1781 -OHR*L10; 3 -OHR*L12; 45 -OHR*L17
7446 -OHR*L27; 1248 -OHR*DROP_OHQ_Y; 1788 -OHR*DROP_OCQ_Z; 32 -OHR*LX_R
31137 +HFR*L0; 120 +HFR*L2; 13594 +HFR*L4; 1849 +HFR*L8
1322 +HFR*L10; 8 +HFR*L12; 316 +HFR*L17; 353 +HFR*L20
19207 +HFR*L22; 241 +HFR*L24; 21655 +HFR*L27; 1 +HFR*L29
1266 +HYR*L21; 3461 -OYQ*L0; 2203 -OYQ*L2; 168 -OYQ*L4
23 -OYQ*L6; 1 -OYQ*L14; 4763 -OYQ*L17; 1 -OYQ*L23
1266 -OYQ*LX_R; 4130 -OYQ*LY_R; 6 +OZQ*L0; 1 +OZQ*L8
371 +OZQ*L27; 613 -OFY*L0; 833 -OFY*L10; 1 -OFY*L14
896 -OFY*L16; 838 -OFY*L18; 2395 -OFY*L27; 1653 -OFY*C_OCF_Y
958 -OFY*DROP_OHP_Y; 1729 -OFY*DROP_OHQ_Y; 81 -OFY*DROP_OCQ_Z; 120 -OFY*TX_Q_
1904 -OFY*TY_Q_; 120 -OFY*LX_R; 2 -HDZ*L1; 10 -HDZ*TX_Q_
139 -HZP*L27; 43 -CFZ*L0; 4015 -CFZ*L4; 1412 -CFZ*L11
3245 -CFZ*L17; 3 -CFZ*L21; 167 -CFZ*L23; 120 -CFZ*L24
2 -CFZ*L29; 334 -CFZ*RY_P; 407 -CFZ*LY_R; 3 -CZQ*L1
3 -CZQ*L7; 1 -CZQ*L11; 371 -CZQ*L27; 10 -CZQ*-OHD
3 -CZQ*+OCF; 1 -CZQ*DROP_OCQ_Z; 139 +DZP*L27; 1 +YZQ*L22
2356 C_ODF_YZ*L21; 1226 C_ODF_YZ*RX_P; 5962 C_HDP_Z*L27; 4015 SP_OCQF_YZ_CF-1*L4
1411 SP_OCQF_YZ_CF-1*L11; 3246 SP_OCQF_YZ_CF-1*L17; 168 SP_OCQF_YZ_CF-1*L23; 120 SP_OCQF_YZ_CF-1*L24
334 SP_OCQF_YZ_CF-1*RY_P; 371 SP_OCQF_YZ_CF-1*LY_R; 561 Q_ODQY_Z*L6; 4736 Q_ODQY_Z*L16
5444 Q_ODQY_Z*L27; 121 Q_ODQY_Z*L28; 27 Q_ODQY_Z*RX_P; 819 Q_CPDF_Z*L23
```

Upper bound: `-1016351221/1000000000`.

### Leaf RTLmmmppmpmmmmp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ -OFY -HDZ -HZP -CFZ +CZQ`.

```c1top-geometry
P OHDYQ +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFZR +CZR
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FOCYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHYQ -ZYQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
35 L0*L0*L3; 13 L0*L0*L21; 29 L0*L6*L21; 39 L0*L6*L27
33 L0*L6*TY_Q_; 9 L0*L8*L23; 8 L0*L10*L21; 3 L0*L17*L18
24 L0*L21*L27; 51 L0*L23*L24; 35 L1*L1*L29; 1 L1*L17*RY_P
1 L1*L24*L29; 3 L1*L24*+OCF; 1 L1*L24*TY_Q_; 9 L1*L24*DROP_OCR_Y
1 L1*L27*L29; 4 L1*L29*TX_Q_; 13 L2*L2*L21; 3 L2*L10*TY_Q_
2 L2*L21*TY_Q_; 4 L3*L18*L23; 6 L3*L18*L30; 11 L3*L18*RX_P
4 L3*L23*L23; 3 L3*L23*TX_Q_; 1 L4*L4*L29; 4 L4*L4*TX_Q_
3 L4*L17*L23; 18 L4*L17*L27; 11 L4*L17*-OHD; 15 L4*L17*DROP_OHP_Y
18 L4*L17*DROP_OCR_Y; 3 L4*L23*TX_Q_; 7 L6*L6*TY_Q_; 19 L6*L8*L27
14 L6*L11*L27; 25 L6*L22*L27; 1 L6*L27*L29; 23 L6*L27*-OHD
2 L6*L27*+OCF; 1 L6*L27*TY_Q_; 21 L6*L27*DROP_OCR_Y; 15 L8*L21*L27
22 L8*L23*L27; 1 L10*L21*L28; 11 L10*L22*L27; 3 L10*L29*TY_Q_
8 L11*L21*L27; 15 L11*L30*TX_Q_; 5 L17*L18*DROP_OHQ_Y; 1 L17*L20*DROP_OCR_Y
4 L17*L23*L27; 2 L17*L23*+OCF; 5 L17*L23*DROP_OHP_Y; 4 L17*L23*DROP_OCR_Y
1 L17*L27*DROP_OHQ_Y; 4 L18*L30*RX_P; 6 L21*L27*DROP_OCR_Y; 25 L21*L28*L29
13 L23*L24*DROP_OCR_Y; 9 L23*L30*L30; 10 L23*L30*L31; 11 L23*L31*LY_R
8 L27*L27*DROP_OHQ_Y; 31 L28*L29*TY_Q_; 1 L29*TY_Q_*TY_Q_; 13 L30*L30*TX_Q_
24 L31*TX_Q_*LY_R; 1 KLOW*L27; 6 +OCD*L17; 8 -DPQ*L3
5 -DPQ*L27; 5 -DPQ*DROP_OHP_Y; 6 -DPQ*DROP_OCR_Y; 9 -FQR*L9
24 -FQR*-OHD; 13 -FQR*DROP_OCR_Y; 10 -HCY*L7; 10 -HCY*L23
36 -HCY*DROP_OHQ_Y; 18 -HCY*TX_Q_; 38 +OCP*L3; 7 +OCP*L21
1 +OCP*L30; 6 +OCP*DROP_OHP_Y; 1 -DFQ*L0; 36 -DFQ*L4
7 -DFQ*L6; 51 -OHR*L1; 5 -OHR*L9; 11 -OHR*L23
4 -OHR*-OHD; 1 -OHR*DROP_OCR_Y; 18 +HFR*L0; 4 +HFR*L8
38 +HFR*L22; 8 +HFR*L26; 1 +HFR*L29; 29 +HFR*-OHD
2 +HFR*+OCF; 1 +HFR*TY_Q_; 5 -OYQ*L4; 12 -OYQ*L6
22 -OYQ*L27; 35 -OYQ*+OCF; 55 -OYQ*DROP_OCR_Y; 15 -OFY*L0
3 -OFY*L4; 35 -OFY*L22; 16 -OFY*+OCF; 43 -OFY*DROP_OHQ_Y
38 -OFY*DROP_OCR_Y; 2 C_CDQ_Z*L5; 6 C_CDQ_Z*L10; 14 C_CDQ_Z*L21
31 C_CDQ_Z*L28; 4 Q_OCDH_YZ*L17; 4 Q_ODQY_Z*L2; 29 Q_ODQY_Z*L6
9 Q_CPDQ_Z*L0; 3 Q_CPDQ_Z*L23; 17 Q_CPDQ_Z*+OCF; 9 Q_CPDQ_Z*DROP_OHP_Y
15 Q_CPDQ_Z*DROP_OHQ_Y; 31 LEFTSUP
```

Upper bound: `-134566783/1000000000`.

### Leaf RTLmmmppmpmmmp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ -OFY -HDZ -HZP +CFZ`.

```c1top-geometry
P OHDYQ +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFZQ -CZQ
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FOCZP +FZP
P FOCZQ +FZQ
P FOCZR -FZR
P FODPQ +FPQ
P YOHFZ -YFZ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHYQ -ZYQ
P ZOCPQ +ZPQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OCF YZ 1 lower 347/500
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 347/500 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
9 L16*L30; 25 L30*RX_P; 5 L0*L0*L21; 54 L0*L2*L13
18 L0*L2*L21; 47 L0*L6*L15; 17 L0*L6*L17; 10 L0*L7*L27
12 L0*L9*L27; 5 L0*L9*L30; 1 L0*L14*L21; 25 L0*L27*DROP_OHQ_Y
104 L0*L27*TX_Q_; 19 L1*L1*L24; 54 L1*L2*L17; 70 L1*L3*L24
8 L1*L3*L31; 1 L1*L7*L24; 10 L1*L12*TX_Q_; 5 L1*L14*L24
5 L1*L16*L30; 16 L1*L24*DROP_OCQ_Z; 1 L1*L24*LY_R; 8 L1*L30*RX_P
48 L1*L30*LX_R; 34 L2*L4*L17; 68 L2*L4*TX_Q_; 7 L2*L5*L27
3 L2*L7*L27; 1 L2*L10*L27; 7 L2*L14*L21; 17 L2*L14*TY_Q_
12 L2*L15*L17; 1 L2*L15*L27; 37 L2*L17*L22; 12 L2*L27*L29
20 L2*L27*TX_Q_; 6 L3*L4*L27; 4 L3*L5*L18; 47 L3*L6*L18
2 L3*L11*L30; 14 L3*L12*L23; 1 L3*L15*L18; 60 L3*L18*L20
45 L3*L18*DROP_OHQ_Y; 17 L3*L21*RX_P; 43 L4*L6*L27; 5 L4*L13*L23
25 L4*L17*+OCF; 152 L4*L17*DROP_OHQ_Y; 8 L4*L17*TY_Q_; 6 L4*L21*L27
8 L4*L21*L30; 45 L4*L23*L24; 2 L6*L7*L27; 4 L6*L8*L27
7 L6*L11*L27; 1 L6*L14*L27; 7 L6*L17*L23; 54 L6*L18*L21
6 L6*L21*TY_Q_; 138 L6*L27*DROP_OCQ_Z; 7 L6*L30*TY_Q_; 5 L7*L11*L30
2 L7*L23*TX_Q_; 25 L8*L15*L30; 4 L8*L21*L27; 5 L10*L22*L27
1 L10*L27*TX_Q_; 5 L11*L23*L30; 48 L11*L30*TX_Q_; 49 L12*L18*TX_Q_
39 L12*L23*L24; 25 L12*L23*L27; 19 L12*L23*RX_P; 39 L12*TX_Q_*LY_R
30 L13*L17*L23; 12 L13*L30*DROP_OCQ_Z; 12 L14*L17*TY_Q_; 25 L14*L23*L24
1 L15*L17*L23; 1 L15*L18*L21; 6 L16*L30*DROP_OCQ_Z; 2 L20*L27*TX_Q_
7 L20*L28*L30; 2 L21*L21*L27; 4 L21*L23*L24; 8 L21*L28*L28
43 L23*L24*L31; 5 L23*L29*RX_P; 5 L23*L31*LY_R; 1 L24*L27*DROP_OCQ_Z
1 L27*L27*TX_Q_; 6 L28*L30*DROP_OHQ_Y; 17 L30*RX_P*DROP_OHQ_Y; 7 L30*RX_P*DROP_OCQ_Z
20 L30*DROP_OCQ_Z*LX_R; 48 L31*TX_Q_*LY_R; 55 -DPQ*L3; 8 -DPQ*L5
54 -DPQ*L6; 47 -DPQ*L27; 47 -DPQ*DROP_OCR_Y; 116 -FQR*L1
32 -FQR*L3; 45 -FQR*L4; 2 -FQR*L7; 39 -FQR*L12
25 -FQR*L14; 4 -FQR*L17; 4 -FQR*L21; 43 -FQR*L31
4 -FQR*DROP_OHP_Y; 1 -FQR*DROP_OCR_Y; 5 -HCY*L1; 2 -HCY*L3
25 -HCY*L15; 5 -HCY*L23; 48 -HCY*TX_Q_; 12 -HCY*DROP_OCR_Y
114 +OCP*L3; 4 +OCP*L5; 9 +OCP*L7; 53 +OCP*L12
89 +OCP*L25; 114 -CDP*L2; 56 -CDP*L6; 12 -CDP*L15
160 -CDP*DROP_OHQ_Y; 32 -HFQ*L17; 5 -DFQ*L1; 5 -DFQ*L14
31 -DFQ*L17; 39 -DFQ*DROP_OHP_Y; 10 -DFQ*DROP_OCR_Y; 71 -OHR*L1
20 -OHR*L3; 1 -OHR*L7; 16 -OHR*DROP_OCQ_Z; 1 -OHR*DROP_OCR_Y
5 +HFR*L14; 77 +HFR*L22; 71 +HFR*DROP_OCQ_Z; 18 -OYQ*L6
3 -OYQ*L17; 3 -OYQ*DROP_OHP_Y; 79 -OYQ*DROP_OCR_Y; 1 +OZQ*L1
18 +OZQ*L3; 5 +OZQ*L5; 39 +OZQ*L6; 13 +OZQ*L18
39 +OZQ*DROP_OHP_Y; 28 +OZQ*RX_P; 24 -OFY*L1; 5 -OFY*L3
25 -OFY*L12; 25 -OFY*L14; 8 -OFY*L17; 8 -OFY*DROP_OHP_Y
43 -OFY*DROP_OHQ_Y; 43 -OFY*DROP_OCQ_Z; 41 -OFY*DROP_OCR_Y; 27 -HZP*L27
54 -HZP*+OCF; 13 -HZP*DROP_OCQ_Z; 49 -HZP*TX_Q_; 27 -HZP*DROP_OCR_Y
6 +CFZ*L0; 25 +CFZ*L8; 25 +CFZ*L10; 11 +CFZ*L19
66 +CFZ*DROP_OHP_Y; 39 +CFZ*DROP_OHQ_Y; 25 +CFZ*DROP_OCQ_Z; 5 +CFZ*TY_Q_
1 +CFZ*DROP_OCR_Y; 32 -OYZ; 29 -OYZ*L1; 25 -OYZ*L6
4 -OYZ*DROP_OCR_Y; 12 +CQR*L30; 17 +FZQ*L17; 29 +FYZ*LY_R
25 +YZQ*L27; 13 C_OHP_Y*L30; 72 C_ODF_YZ*L21; 45 C_ODF_YZ*L23
117 C_ODF_YZ*RX_P; 12 C_ODF_YZ*LY_R; 17 C_OFZ_Y*L1; 25 Q_ODQY_Z*L6
36 Q_ODQY_Z*L27; 3 Q_HCFR_Z*L30; 13 Q_CDQY_Z*L27
```

Upper bound: `-107940181/50000000`.

### Leaf RTLmmmppmpmmp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ -OFY -HDZ +HZP`.

```c1top-geometry
P OHDYQ +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHFZ -YFZ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHFP -ZFP
P ZOHYQ -ZYQ
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OHZ Y 6 lower 93/292
T OHP YZ 8 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 99/125 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
10 L0*L27; 22 L0*L1*L17; 286 L0*L1*L24; 5 L0*L3*L17
21 L0*L4*L13; 20 L0*L4*L17; 237 L0*L6*L27; 12 L0*L6*RY_P
19 L0*L8*L17; 6 L0*L8*TX_Q_; 36 L0*L10*L17; 35 L0*L10*L21
2 L0*L12*L21; 9 L0*L13*L27; 14 L0*L17*L17; 51 L0*L17*L23
87 L0*L17*L27; 1 L0*L17*RY_P; 28 L0*L17*TX_Q_; 8 L0*L18*L21
12 L0*L27*+OCF; 55 L0*L27*DROP_OHQ_Y; 266 L1*L1*L1; 12 L1*L1*L29
36 L1*L1*L31; 20 L1*L2*L24; 13 L1*L4*L12; 68 L1*L4*L24
5 L1*L6*L24; 3 L1*L8*L21; 4 L1*L8*L24; 160 L1*L8*L27
209 L1*L10*L24; 16 L1*L12*L23; 18 L1*L12*L24; 30 L1*L16*L24
2 L1*L18*L31; 6 L1*L21*RX_P; 1 L1*L22*L24; 21 L1*L31*TX_Q_
14 L1*RX_P*LY_R; 1 L2*L4*TX_Q_; 8 L2*L6*RY_P; 4 L2*L17*RY_P
1 L2*L27*DROP_OHQ_Y; 15 L3*L18*L18; 1 L4*L4*L13; 58 L4*L4*TX_Q_
53 L4*L6*L17; 101 L4*L6*L27; 9 L4*L6*TX_Q_; 98 L4*L9*L17
45 L4*L10*L17; 1 L4*L14*L17; 11 L4*L17*L17; 29 L4*L17*L18
38 L4*L17*L23; 3 L4*L17*L27; 39 L4*L21*L27; 53 L4*L23*L24
53 L4*L23*TX_Q_; 1 L5*L18*RX_P; 5 L6*L6*L27; 7 L6*L10*L21
7 L6*L10*L27; 118 L6*L10*RY_P; 16 L6*L12*L27; 33 L6*L17*L27
25 L6*L18*L21; 51 L6*L22*L27; 17 L6*L27*+OCF; 12 L6*L27*RY_P
20 L6*RY_P*TY_Q_; 14 L8*L17*RY_P; 27 L8*L18*L21; 16 L8*L18*L27
25 L8*L22*RY_P; 50 L8*L23*L27; 149 L8*L27*-OHD; 3 L8*L27*+OCF
38 L8*L29*RY_P; 3 L8*RY_P*TY_Q_; 6 L10*L17*L21; 27 L10*L17*L23
16 L10*L17*L27; 5 L10*L17*L29; 1 L10*L21*L30; 50 L10*L27*DROP_OHQ_Y
14 L11*L17*L17; 21 L11*L17*TX_Q_; 2 L11*L18*L30; 10 L12*L18*L23
13 L13*L18*L21; 13 L14*L17*L20; 10 L15*L18*L21; 5 L17*L17*L23
17 L17*L18*L23; 3 L17*L18*L30; 5 L17*L20*RY_P; 63 L17*L21*L27
53 L17*L23*L23; 55 L17*L23*L24; 3 L17*L23*L30; 20 L17*L23*TX_Q_
17 L18*L18*L21; 20 L18*L20*L21; 53 L18*L21*L23; 18 L18*L21*L28
28 L18*L21*L30; 3 L27*L29*L31; 2 KLOW*L27; 3 -DPQ*L3
4 -DPQ*L5; 25 -DPQ*L6; 123 -DPQ*L9; 42 -DPQ*L10
86 -DPQ*L12; 16 -DPQ*L15; 5 -DPQ*L17; 17 -DPQ*L18
53 -DPQ*L23; 10 -DPQ*L28; 44 -DPQ*-OHD; 20 -DPQ*DROP_OHQ_Y
55 -FQR*L1; 1 -FQR*L3; 53 -FQR*L4; 63 -FQR*L17
3 +OCY*L27; 4 -HCY*L17; 6 -HCY*TX_Q_; 12 +OCP*L4
36 +OCP*L21; 8 -CDP*L6; 39 -CDP*L8; 6 -CDP*L17
13 -CDP*L18; 10 -CDP*L20; 4 -DFQ*L0; 1 -DFQ*L2
58 -DFQ*L4; 9 -DFQ*L6; 18 -DFQ*L16; 20 -DFQ*RY_P
16 -OHR*L1; 3 -OHR*L4; 26 -OHR*L10; 2 -OHR*L12
5 -OHR*L22; 10 -OHR*-OHD; 2 -OHR*+OCF; 5 -OHR*RY_P
1 -OHR*LX_R; 292 +HFR*L0; 18 +HFR*L2; 48 +HFR*L4
5 +HFR*L6; 3 +HFR*L8; 183 +HFR*L10; 16 +HFR*L12
51 +HFR*L22; 30 +HFR*DROP_OHP_YZ; 12 +HFR*RY_P; 130 +HYZ*L17
10 +HYZ*LY_R; 29 -OYQ*L6; 123 -OYQ*L9; 1 -OYQ*L19
15 -OYQ*-OHD; 5 -OYQ*+OCF; 82 -OYQ*DROP_OHP_YZ; 42 -OYQ*RY_P
14 -OYQ*DROP_OHQ_Y; 63 -OYQ*DROP_OCR_Y; 10 +OZQ*L4; 86 +OZQ*L16
10 -YZP*L1; 3 -YZP*L5; 47 -YZP*L27; 111 -YZP*DROP_OHQ_Y
14 -YZP*TX_Q_; 66 -YZP*DROP_OCR_Y; 41 +ODZ*L6; 86 +ODZ*L16
114 +ODZ*L21; 16 +ODZ*TY_Q_; 78 -OFY*L0; 3 -OFY*L4
47 -OFY*L12; 47 -OFY*L14; 40 -OFY*L22; 6 -OFY*+OCF
22 -OFY*DROP_OHP_YZ; 118 -OFY*RY_P; 23 -OFY*DROP_OHQ_Y; 173 -OFY*DROP_OCR_Y
10 +HZP*L1; 18 +HZP*L5; 16 +HZP*L7; 130 +HZP*L9
2 +HZP*L21; 2 +HZP*L27; 16 +HZP*TY_Q_; 21 +HZP*DROP_OCR_Y
58 -OYZ; 3 -OYZ*L4; 62 -OYZ*L6; 126 -OYZ*L21
9 -OYZ*L27; 15 +DZP*L4; 2 +DZP*L6; 29 +DZP*L20
6 -DZQ*L18; 42 C_OHP_YZ*L6; 92 C_OHP_YZ*L27; 47 C_OFZ_Y*L31
25 C_HYP_Z*L1; 130 C_HYP_Z*L12; 14 C_HYP_Z*L17; 15 C_HYP_Z*L23
24 C_HYP_Z*TX_Q_; 123 Q_ODQY_Z*L8; 41 Q_ODQY_Z*L16; 1 Q_ODQY_Z*L18
14 Q_ODQY_Z*L21; 11 Q_ODQY_Z*L27; 6 Q_OZQF_Y*L4; 2 Q_HYCP_Z*L18
3 Q_DQYP_Z*L27; 181 LEFTSUP
```

Upper bound: `-203250949/500000000`.

### Leaf RTLmmmppmpmp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ -OFY +HDZ`.

```c1top-geometry
P OHDYQ +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZP -HZP
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHYZ -DYZ
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHFZ -YFZ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHDQ -ZHQ
P ZOHYQ -ZYQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 66/125 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
327 L0*L0*L13; 125 L0*L0*L21; 73 L0*L1*L1; 12 L0*L1*L8
4 L0*L3*L27; 156 L0*L6*L15; 11 L0*L6*L21; 195 L0*L6*L29
4 L0*L8*L17; 39 L0*L8*L27; 80 L0*L8*TX_Q_; 34 L0*L8*TY_Q_
191 L0*L10*L13; 3 L0*L10*L21; 44 L0*L10*L27; 11 L0*L10*L30
190 L0*L12*L17; 157 L0*L13*L16; 136 L0*L17*L30; 3 L0*L21*L28
10 L0*L27*L30; 5 L0*L27*LX_R; 13 L1*L1*L24; 68 L1*L3*L18
2 L1*L4*L24; 11 L1*L8*L21; 20 L1*L11*L30; 31 L1*L12*L24
136 L1*L14*L24; 13 L1*L15*L21; 5 L1*L17*L24; 4 L1*L17*L29
3 L1*L21*L27; 143 L1*L21*L30; 22 L1*L23*L31; 123 L1*L24*TX_Q_
3 L1*L24*LY_R; 74 L1*L30*L30; 7 L1*L30*L31; 33 L1*L31*LY_R
12 L2*L4*L28; 26 L2*L8*L27; 4 L2*L10*L17; 62 L3*L11*L30
2 L3*L17*L18; 381 L3*L18*L30; 59 L3*L21*L27; 20 L3*L23*L24
24 L3*L23*L29; 10 L3*L29*LY_R; 55 L3*L31*LY_R; 12 L4*L5*L17
161 L4*L6*L13; 261 L4*L6*TY_Q_; 20 L4*L6*LX_R; 117 L4*L8*L13
2 L4*L8*L17; 79 L4*L12*L17; 5 L4*L12*L27; 3 L4*L12*TX_Q_
28 L4*L13*L28; 15 L4*L13*TY_Q_; 13 L4*L17*L19; 57 L4*L17*L27
265 L4*L17*+OCF; 128 L4*L17*C_OHD_Y; 16 L4*L17*DROP_OHQ_Y; 28 L4*L17*TY_Q_
57 L4*L17*DROP_OCR_Y; 33 L4*L21*L24; 1 L4*L21*L27; 1 L4*L23*L24
13 L5*L18*RX_P; 59 L5*L30*L30; 83 L6*L6*L15; 16 L6*L7*L27
43 L6*L10*L13; 1 L6*L10*L17; 212 L6*L13*L18; 5 L6*L13*L27
391 L6*L14*L27; 7 L6*L17*L27; 12 L6*L18*RX_P; 58 L6*L21*TY_Q_
11 L6*L27*L29; 60 L6*L27*L30; 46 L6*L27*TX_Q_; 3 L6*L27*TY_Q_
2 L8*L18*L21; 2 L8*L18*L23; 97 L8*L18*L30; 17 L8*L21*TY_Q_
14 L8*L23*L27; 79 L8*L23*L30; 6 L8*L27*L27; 28 L8*L27*L29
17 L10*L21*L21; 6 L10*L27*L27; 49 L10*L27*L29; 14 L11*L21*L27
22 L11*L23*L30; 187 L11*L30*TX_Q_; 12 L13*L18*L21; 5 L13*L21*L27
5 L13*L23*L24; 28 L14*L21*L27; 141 L14*L23*L24; 12 L15*L17*L21
113 L15*L21*LY_R; 20 L15*L24*L29; 20 L15*L24*L30; 12 L17*L20*L23
2 L17*L21*L27; 2 L17*L23*L24; 5 L17*L23*TX_Q_; 12 L17*L29*RY_P
14 L18*L20*L21; 53 L18*L20*L30; 28 L18*L21*L28; 3 L18*L21*TX_Q_
15 L20*L24*LY_R; 58 L21*L21*L27; 58 L21*L23*L24; 28 L21*L27*L31
15 L21*L27*LX_R; 4 L21*L27*LY_R; 35 L21*L28*L28; 138 L21*L28*L29
123 L23*L24*L24; 4 L23*L24*L30; 261 L23*L24*L31; 4 L23*L24*LY_R
24 L23*L30*RX_P; 2 L23*L31*RX_P; 123 L24*TX_Q_*LY_R; 136 L28*L30*RX_P
9 L28*L30*TX_Q_; 35 L29*TX_Q_*LY_R; 10 L30*L30*LY_R; 233 L31*TX_Q_*LY_R
6 L31*LY_R*LY_R; 251 -DPQ*L1; 28 -DPQ*L5; 2 -DPQ*L8
2 -DPQ*L10; 12 -DPQ*L13; 227 -DPQ*-OHD; 24 -DPQ*+OCF
14 -DPQ*DROP_OHQ_Y; 3 -DPQ*TX_Q_; 88 -FQR*L1; 24 -FQR*L3
1 -FQR*L4; 123 -FQR*L6; 5 -FQR*L13; 141 -FQR*L14
2 -FQR*L17; 58 -FQR*L21; 123 -FQR*L24; 261 -FQR*L31
81 -FQR*-OHD; 4 -FQR*DROP_OCR_Y; 31 -HCY*L1; 62 -HCY*L3
2 -HCY*L4; 4 -HCY*L17; 101 -HCY*L18; 24 -HCY*L23
125 -HCY*L27; 95 -HCY*DROP_OHQ_Y; 229 -HCY*TX_Q_; 131 -HCY*DROP_OCR_Y
120 +DFZ*L0; 63 +DFZ*L6; 102 +DFZ*L8; 184 +DFZ*L10
212 +DFZ*L16; 5 +DFZ*L21; 75 +DFZ*L28; 207 +DFZ*-OHD
141 +DFZ*TY_Q_; 5 +DFZ*DROP_OCR_Y; 20 +DFZ*LX_R; 76 +OCP*L1
497 +OCP*L3; 1 +OCP*L5; 21 +OCP*L6; 97 +OCP*L8
103 +OCP*L10; 14 +OCP*L17; 196 +OCP*L21; 43 -CDP*L0
2 -CDP*L11; 215 -CDP*L20; 12 -CDP*L28; 233 -CDP*-OHD
116 -CDP*+OCF; 9 -CDP*TX_Q_; 46 -DFQ*L4; 123 -OHR*L1
43 -OHR*L13; 89 -OHR*L15; 1 -OHR*L17; 16 -OHR*TX_Q_
2 -OHR*LY_R; 68 +HFR*L0; 2 +HFR*L4; 245 +HFR*L14
4 +HFR*L17; 15 +HFR*L20; 7 +HFR*L22; 4 +HFR*L27
230 +HFR*TX_Q_; 43 -OYQ*L1; 6 -OYQ*L4; 261 -OYQ*L6
31 -OYQ*L12; 113 -OYQ*L14; 381 -OYQ*L17; 17 -OYQ*L21
137 -OYQ*+OCF; 381 -OYQ*DROP_OHP_Y; 2 -OYQ*RY_P; 14 -OYQ*DROP_OCR_Y
100 +OZQ*L5; 255 +OZQ*L6; 47 +OZQ*L8; 119 +OZQ*L10
213 +OZQ*L16; 17 +OZQ*L21; 33 +OZQ*LX_R; 225 -OFY*L1
77 -OFY*L6; 58 -OFY*L12; 184 -OFY*L14; 1 -OFY*L17
206 -OFY*L22; 246 -OFY*-OHD; 42 -OFY*+OCF; 261 -OFY*DROP_OHQ_Y
55 -OFY*TY_Q_; 21 -OFY*DROP_OCR_Y; 292 +HDZ*L0; 84 +HDZ*L6
191 +HDZ*L10; 1 +HDZ*L22; 73 +HDZ*L24; 46 +HDZ*-OHD
346 +HDZ*DROP_OHP_Y; 124 +HDZ*TY_Q_; 102 -OYZ*L6; 31 -OYZ*L21
113 -OYZ*L23; 212 +DZP*L6; 126 -DZQ*L0; 260 -DZQ*L6
15 -DZQ*L8; 6 -DZQ*L10; 225 -DZQ*L16; 17 -DZQ*L21
33 -DZQ*LX_R; 100 +FZQ*L4; 39 +YZQ; 12 SP_ODQH_YZ_DH-1*L0
48 SP_ODQH_YZ_DH-1*L4; 84 SP_ODQH_YZ_DH-1*L6
```

Upper bound: `-3571506903/1000000000`.

### Leaf RTLmmmppmppmmm

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ +OFY -HDZ -HZP -CFZ`.

```c1top-geometry
P OHDFY +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFZR +CZR
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FOHYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHYQ -ZYQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF YR 3 lower 135501/250000
O fc - 1 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 347/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 1061/10000 6637/10000
v 1061/10000 6637/10000
z 199/625 907/1000
w 1061/10000 907/1000
p 133/200 1
q 1061/10000 88/125
l 69/100 1
m 23/40 1
r 1061/10000 88/125
t 133/200 1
```

```c1top-sum
143 L27*L27; 1473 L0*L1*L8; 185 L0*L6*L11; 2 L0*L6*L13
1 L0*L6*L30; 1 L0*L8*L17; 444 L0*L8*L23; 971 L0*L8*L27
1244 L0*L8*L29; 6 L0*L12*L17; 2 L0*L13*L27; 1 L0*L17*L18
1472 L1*L1*L24; 177 L1*L2*L27; 348 L1*L4*L29; 273 L1*L6*L6
527 L1*L7*L29; 637 L1*L8*L24; 1 L1*L14*L29; 4 L1*L17*L24
1 L1*L18*L21; 444 L1*L23*L24; 33 L1*L24*L24; 125 L1*L24*L27
1536 L1*L24*L29; 385 L1*L29*L29; 228 L1*L29*L30; 202 L2*L2*L27
1926 L2*L4*L17; 1069 L2*L8*L27; 1384 L2*L18*L29; 1369 L2*L21*L27
658 L2*L27*RY_P; 438 L4*L4*L17; 1458 L4*L4*TX_Q_; 1803 L4*L6*L17
1497 L4*L6*L29; 5 L4*L13*L17; 1678 L4*L17*L17; 1598 L4*L17*L18
1086 L4*L17*L20; 1934 L4*L17*L23; 488 L4*L20*L29; 38 L4*L23*L24
367 L4*L23*TX_Q_; 208 L4*L29*TY_Q_; 16 L4*L29*LY_R; 780 L5*L16*L27
1940 L5*L21*L21; 760 L5*L21*L29; 1787 L5*L21*RX_P; 163 L5*L23*L29
148 L5*L29*L29; 795 L6*L6*L11; 2654 L6*L7*L27; 399 L6*L11*L27
3 L6*L13*L27; 1389 L6*L17*L27; 623 L6*L18*L27; 478 L6*L21*L27
3851 L6*L21*TY_Q_; 400 L6*L22*L27; 297 L6*L24*L27; 310 L6*L27*-OHD
1994 L6*L27*+OCF; 3 L7*L10*L29; 756 L7*L23*L24; 397 L7*L23*L29
655 L8*L11*L29; 272 L8*L24*L27; 2039 L8*L27*L27; 677 L8*L27*L29
655 L10*L11*L29; 2039 L10*L24*L27; 1507 L10*L24*L29; 415 L10*L27*L29
1040 L10*L29*L29; 1040 L10*L29*L30; 308 L11*L23*L29; 3 L13*L21*L27
3 L13*L23*L24; 1 L13*L23*L29; 1 L13*L28*L29; 2 L14*L29*TX_Q_
2 L15*L17*L29; 1 L15*L29*L29; 5 L15*L29*RY_P; 4 L16*L21*L28
10 L16*L23*L27; 624 L17*L17*L23; 624 L17*L18*L21; 1649 L17*L18*L23
1386 L17*L21*L27; 367 L17*L23*L23; 1389 L17*L23*L24; 717 L17*L23*L29
1 L17*L23*LY_R; 4 L17*TX_Q_*LY_R; 1649 L18*L18*L21; 367 L18*L21*L23
761 L18*L21*L27; 772 L18*L23*L24; 1 L18*L28*RX_P; 417 L18*L29*L29
232 L18*L29*TY_Q_; 2305 L21*L21*L27; 2305 L21*L23*L24; 297 L21*L24*L27
81 L21*L27*L27; 162 L21*L27*L28; 297 L23*L24*L24; 81 L23*L24*L27
1369 L23*L24*L29; 309 L23*L29*L29; 310 L23*L29*L30; 1 L23*L30*L30
81 L27*L27*+OCF; 149 L27*L29*RY_P; 81 L27*L29*LY_R; 358 L29*L29*DROP_OCR_Y
157 L29*L30*LY_R; 417 L29*RY_P*TX_Q_; 1 -DPQ*L1; 691 -DPQ*L3
645 -DPQ*L4; 417 -DPQ*L7; 88 -DPQ*L13; 624 -DPQ*L17
1649 -DPQ*L18; 367 -DPQ*L23; 1408 -DPQ*+OCF; 11 -DPQ*DROP_OCR_Y
162 -FQR*L0; 38 -FQR*L4; 1605 -FQR*L7; 3 -FQR*L13
1389 -FQR*L17; 772 -FQR*L18; 2305 -FQR*L21; 297 -FQR*L24
81 -FQR*L27; 222 -FQR*L29; 1147 -FQR*+OCF; 385 -HCY*L0
35 -HCY*L6; 308 -HCY*L22; 415 -HCY*L27; 655 -HCY*L31
239 -HCY*LX_R; 904 +OCP*L3; 291 +OCP*L5; 671 +OCP*L6
3 +OCP*L13; 42 +OCP*L19; 60 +OCP*L21; 16 +OCP*L27
1054 +OCP*RX_P; 690 +OCP*TY_Q_; 363 -CDP*L1; 208 -CDP*L5
1131 -CDP*L6; 3 -CDP*L12; 1054 -CDP*L17; 607 -CDP*L19
481 -CDP*L21; 791 -CDP*L27; 156 -CDP*+OCF; 303 -CDP*DROP_OHQ_Y
1227 -DFQ*L6; 65 -DFQ*L12; 565 -DFQ*L19; 1546 -DFQ*L21
371 -DFQ*L22; 171 -DFQ*L27; 320 -DFQ*DROP_OHP_Y; 770 -DFQ*RX_P
1251 -DFQ*RY_P; 386 +HFR*L0; 4 +HFR*L17; 147 +HFR*L22
1185 +HFR*L29; 1167 +HFR*L31; 2507 +HYR*L1; 350 +HYR*L7
1599 +HYR*L8; 1599 +HYR*L10; 1 +HYR*L17; 753 +HYR*L23
33 +HYR*L24; 125 +HYR*L27; 649 +HYR*-OHD; 589 +HYR*+OCF
2 +OZQ*L27; 2289 +OYR*L0; 1157 +OYR*L2; 841 +OYR*L6
753 +OYR*L22; 239 +OYR*L24; 1914 +OYR*L27; 1599 +OYR*L31
3 +ODZ*L21; 2 +ODZ*RX_P; 57 +OFY*L0; 76 +OFY*L2
308 +OFY*L22; 1998 +OFY*L24; 249 +OFY*L29; 655 +OFY*L31
993 +OFY*+OCF; 353 +OFY*DROP_OCR_Y; 6 -HDZ*L17; 1 -HDZ*L29
2 -HDZ*L30; 2 -HDZ*LY_R; 1 -CFZ*L0; 1 -CFZ*L2
1 -CFZ*L6; 2 -CFZ*L17; 65 -CFZ*L21; 5 -CFZ*RY_P
62 -CZP*L21; 26 +DZP*L20; 26 -DZQ*L16; 2 -DZQ*L27
63 -DZQ*L29; 62 -DZQ*RX_P; 394 C_ODQ_Z*L21; 38 C_ODQ_Z*L27
364 Q_CPDF_Z*L0; 557 Q_CPDF_Z*L18; 922 Q_CPDF_Z*L23; 1 Q_CDQF_Z*L0
812 Q_CDQF_Z*L18; 371 Q_CDQF_Z*L23; 107 Q_CDQF_Z*L29
```

Upper bound: `-20590202151/100000000000`.

### Leaf RTLmmmppmppmmp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ +OFY -HDZ -HZP +CFZ`.

```c1top-geometry
P OHDFY +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFZQ -CZQ
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FOHYZ +FYZ
P FOCZP +FZP
P FOCZQ +FZQ
P FOCZR -FZR
P FODPQ +FPQ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHYQ -ZYQ
P ZOCPQ +ZPQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF YR 3 lower 135501/250000
O fc - 1 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 347/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
15 L0*L0*L13; 158 L0*L0*L29; 229 L0*L0*TX_Q_; 175 L0*L1*L8
2 L0*L3*L17; 109 L0*L4*L17; 836 L0*L4*TX_Q_; 16 L0*L5*L27
8 L0*L6*L21; 53 L0*L6*RX_P; 1 L0*L8*L29; 51 L0*L8*TX_Q_
16 L0*L10*L11; 88 L0*L10*L29; 94 L0*L12*L17; 102 L0*L12*L21
15 L0*L12*L30; 120 L0*L13*L29; 4 L0*L14*L27; 139 L0*L14*L29
16 L0*L17*L17; 35 L0*L17*L21; 86 L0*L17*L30; 88 L0*L17*RY_P
138 L0*L18*L21; 43 L0*L18*L29; 161 L0*L20*L30; 395 L0*L23*L27
12 L0*L25*L27; 66 L0*L27*L29; 73 L0*L27*+OCF; 19 L1*L3*L24
4 L1*L8*L24; 52 L1*L10*L24; 56 L1*L17*L24; 437 L1*L18*L30
53 L1*L24*L30; 54 L1*L24*TX_Q_; 47 L1*L24*LY_R; 10 L1*L29*L30
24 L1*RX_P*RX_P; 123 L3*L6*L27; 240 L3*L18*L23; 447 L3*L18*L30
18 L3*L18*LY_R; 391 L4*L4*TX_Q_; 279 L4*L6*L17; 155 L4*L12*L17
138 L4*L17*L17; 44 L4*L17*L20; 429 L4*L17*L23; 18 L4*L17*RY_P
16 L4*L17*LY_R; 168 L4*L21*L30; 21 L4*L23*L24; 412 L4*L23*L29
16 L4*L27*L30; 55 L4*TX_Q_*LY_R; 470 L5*L18*L30; 1 L5*L21*L21
208 L5*L21*L28; 19 L5*L21*RX_P; 74 L5*L28*RX_P; 52 L5*RX_P*RX_P
139 L5*RX_P*TY_Q_; 2 L6*L6*L11; 85 L6*L6*TY_Q_; 99 L6*L7*L27
34 L6*L11*L27; 43 L6*L11*L30; 8 L6*L12*L27; 120 L6*L13*L18
4 L6*L15*L27; 49 L6*L17*L27; 199 L6*L21*TY_Q_; 442 L6*L22*L27
21 L6*L27*L27; 79 L6*L27*L30; 294 L6*L27*TX_Q_; 551 L7*L23*L24
110 L7*L23*L29; 190 L7*L23*L30; 104 L8*L10*L27; 4 L8*L20*L27
72 L8*L27*L27; 36 L8*L27*TX_Q_; 20 L8*L30*LY_R; 72 L10*L24*L27
40 L10*L24*TX_Q_; 6 L10*L29*L30; 2 L10*TX_Q_*TX_Q_; 2 L11*L21*L21
16 L11*L30*L31; 8 L12*L21*L27; 155 L12*L21*L28; 8 L12*L23*L24
63 L13*L23*L29; 21 L14*L29*L30; 3 L15*L17*L29; 90 L15*L18*L29
156 L15*L23*L29; 4 L15*L27*L30; 18 L17*L18*L23; 88 L17*L18*L30
222 L17*L23*L24; 75 L17*L23*L30; 222 L17*TX_Q_*LY_R; 18 L18*L18*L21
2 L18*L21*L29; 1 L18*L30*TX_Q_; 206 L21*L21*L27; 95 L21*L21*L28
110 L21*L23*L24; 21 L21*L27*L27; 429 L23*L24*L24; 290 L23*L24*L29
451 L23*L24*L30; 334 L23*L29*L29; 731 L23*L29*L30; 395 L23*L29*LY_R
397 L23*L30*L30; 395 L23*L30*LY_R; 429 L24*TX_Q_*LY_R; 86 L28*L28*RX_P
19 L28*L29*L29; 63 L28*RX_P*TY_Q_; 140 L29*L29*LY_R; 44 L29*L30*RY_P
140 L29*L30*LY_R; 250 L29*TX_Q_*LY_R; 411 L30*TX_Q_*LY_R; 95 TX_Q_*TX_Q_*LY_R
21 TX_Q_*LY_R*LY_R; 386 -DPQ*L3; 18 -DPQ*L4; 2 -DPQ*L7
257 -DPQ*L12; 18 -DPQ*L18; 137 -DPQ*-OHD; 311 -DPQ*C_OCF_Z
223 -FQR*L3; 21 -FQR*L4; 412 -FQR*L7; 8 -FQR*L12
222 -FQR*L17; 110 -FQR*L21; 429 -FQR*L24; 369 -FQR*L30
431 -FQR*+OCF; 72 -HCY*L0; 40 -HCY*L6; 6 -HCY*L30
16 -HCY*L31; 20 -HCY*LX_R; 414 +OCP*L1; 368 +OCP*L3
144 +OCP*L5; 14 +OCP*L7; 128 +OCP*L12; 10 +OCP*L17
30 +OCP*L19; 172 +OCP*L21; 30 +OCP*L23; 54 +OCP*-OHD
2 +OCP*DROP_OCR_Y; 124 -CDP*L5; 57 -CDP*L6; 117 -CDP*L17
36 -CDP*L19; 210 -CDP*L23; 238 -CDP*L28; 115 -CDP*L30
31 -CDP*DROP_OHP_Y; 250 -CDP*DROP_OHQ_Y; 16 -CDP*DROP_OCR_Y; 644 -DFQ*L0
391 -DFQ*L4; 105 -DFQ*L6; 96 -DFQ*L21; 180 -DFQ*-OHD
199 -DFQ*DROP_OHP_Y; 25 -DFQ*RX_P; 34 -DFQ*DROP_OCR_Y; 15 -OHR*L8
7 -OHR*L17; 57 +HFR*L0; 69 +HFR*L11; 49 +HFR*L17
82 +HFR*L22; 33 +HFR*L29; 96 +HFR*L30; 47 +HFR*L31
432 +HFR*TX_Q_; 273 +HYR*L1; 57 +HYR*L3; 65 +HYR*L7
16 +HYR*L8; 182 +HYR*L10; 68 +HYR*C_OCF_Z; 51 +HYR*DROP_OHQ_Y
34 +HYR*DROP_OCR_Y; 14 +OZQ*L3; 122 +OZQ*L6; 8 +OZQ*L21
164 +OZQ*DROP_OHP_Y; 94 +OZQ*RX_P; 288 +OYR*L0; 9 +OYR*L2
76 +OYR*L6; 62 +OYR*L11; 11 +OYR*L21; 106 +OYR*L27
16 +OYR*L31; 102 +ODZ*L21; 51 +OFY*L24; 1 +OFY*L27
21 +OFY*-OHD; 12 +OFY*C_OCF_Z; 5 +OFY*DROP_OHQ_Y; 83 +OFY*DROP_OCR_Y
102 -HDZ*L17; 82 -HZP*L2; 8 -HZP*L17; 53 -HZP*C_OCF_Z
137 -HZP*DROP_OHQ_Y; 120 -HZP*TX_Q_; 159 +CFZ*L0; 52 +CFZ*L6
56 +CFZ*L16; 4 +CFZ*L27; 54 +CFZ*DROP_OHP_Y; 13 +CFZ*RX_P
90 +CFZ*RY_P; 63 +CFZ*DROP_OHQ_Y; 66 +CFZ*DROP_OCQ_Z; 90 +CFZ*TY_Q_
8 -CZP*RX_P; 44 +FZQ*L29; 8 +FZQ*TX_Q_
```

Upper bound: `-476319213/250000000`.

### Leaf RTLmmmppmppmp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ +OFY -HDZ +HZP`.

```c1top-geometry
P OHDFY +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FOHYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHFP -ZFP
P ZOHYQ -ZYQ
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OHZ Y 6 lower 93/292
T OHP YZ 8 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF YR 3 lower 135501/250000
O fc - 1 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 347/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 99/125 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
138 L0*L1*L8; 27 L0*L2*L17; 29 L0*L8*L23; 4 L0*L11*L17
23 L0*L17*L29; 2 L0*L23*L29; 3 L1*L1*L1; 229 L1*L1*L24
16 L1*L1*RX_P; 13 L1*L2*L2; 7 L1*L2*L6; 3 L1*L2*L27
11 L1*L6*L6; 247 L1*L6*L27; 2 L1*L7*L24; 10 L1*L8*L13
1 L1*L8*L14; 57 L1*L8*L17; 9 L1*L8*L18; 1 L1*L8*L29
5 L1*L8*TX_Q_; 151 L1*L10*L24; 1 L1*L12*L18; 33 L1*L13*L21
3 L1*L13*L27; 12 L1*L13*L29; 1 L1*L15*L24; 172 L1*L16*L24
179 L1*L16*L27; 34 L1*L19*L29; 45 L1*L21*L24; 197 L1*L21*L27
40 L1*L21*L29; 98 L1*L21*RX_P; 99 L1*L22*L27; 2 L1*L24*L29
1 L1*L29*TY_Q_; 20 L1*RX_P*RX_P; 78 L2*L4*L17; 35 L2*L6*RY_P
3 L2*L14*L17; 2 L2*L14*L27; 21 L2*L17*L27; 29 L3*L5*L29
1 L3*L6*L27; 10 L3*L11*L18; 1 L3*L18*L18; 337 L3*L18*L23
41 L3*L18*L30; 75 L4*L4*L17; 349 L4*L4*TX_Q_; 316 L4*L6*L17
102 L4*L6*L27; 10 L4*L6*TX_Q_; 1 L4*L10*L17; 1 L4*L10*L29
3 L4*L12*L17; 46 L4*L17*L17; 75 L4*L17*L18; 105 L4*L17*L20
382 L4*L17*L23; 2 L4*L21*L24; 19 L4*L23*L24; 294 L4*L23*L29
30 L4*L23*TX_Q_; 10 L5*L7*L29; 34 L5*L12*L29; 1 L5*L14*L29
180 L5*L16*L21; 114 L5*L21*L27; 23 L5*L21*L29; 30 L5*L21*TY_Q_
13 L5*L22*L29; 164 L6*L7*L27; 160 L6*L10*L27; 1 L6*L13*L27
1 L6*L14*L17; 254 L6*L22*L27; 56 L6*L27*-OHD; 17 L6*L27*RY_P
111 L6*L27*DROP_OHQ_Y; 64 L6*L27*DROP_OCR_Y; 157 L7*L8*L18; 5 L7*L10*L10
17 L7*L18*L23; 43 L7*L18*LY_R; 162 L7*L23*L24; 110 L7*L23*L29
107 L7*L23*LY_R; 81 L8*L10*L27; 9 L8*L13*L23; 12 L8*L13*L27
9 L8*L14*L21; 12 L8*L15*L24; 1 L8*L18*L21; 1 L8*L18*L23
89 L8*L19*L27; 25 L8*L19*L29; 6 L8*L21*L27; 83 L8*L22*L27
13 L8*L27*+OCF; 235 L8*L27*DROP_OHP_YZ; 7 L8*L27*RY_P; 79 L8*L29*LY_R
91 L8*L30*LY_R; 4 L10*L10*L17; 25 L10*L13*L29; 1 L10*L17*L21
1 L10*L17*L23; 18 L10*L18*L29; 89 L10*L19*L24; 6 L10*L21*L24
95 L10*L21*L27; 12 L10*L23*L24; 24 L10*L24*L29; 7 L10*L24*RY_P
42 L10*L29*DROP_OHP_YZ; 11 L11*L17*L29; 1 L12*L17*L23; 1 L12*L17*LY_R
1 L12*L18*L21; 34 L12*L23*L24; 2 L12*L23*LY_R; 12 L12*L28*L29
8 L12*L29*TY_Q_; 34 L12*TX_Q_*LY_R; 1 L13*L16*L27; 1 L13*L21*L27
18 L13*L23*L29; 1 L14*L21*L27; 2 L15*L23*L29; 148 L16*L20*L27
163 L16*L27*TX_Q_; 258 L16*L27*TY_Q_; 74 L17*L18*L23; 339 L17*L23*L24
3 L17*L23*L29; 55 L17*L23*TX_Q_; 21 L17*L29*DROP_OCR_Y; 28 L17*TX_Q_*LY_R
74 L18*L18*L21; 66 L18*L20*L21; 275 L18*L21*L27; 18 L18*L23*L24
1 L20*L29*RY_P; 13 L21*L21*L27; 13 L21*L23*L24; 10 L21*L23*RX_P
26 L21*L27*TY_Q_; 15 L21*L27*LY_R; 50 L22*L24*L27; 36 L23*L24*LY_R
99 L23*L29*L30; 15 L23*L29*TX_Q_; 99 L23*L29*DROP_OCR_Y; 99 L23*L30*L30
26 L23*L30*TX_Q_; 99 L23*L30*LY_R; 26 L23*TX_Q_*LY_R; 70 L27*L27*DROP_OHQ_Y
1 L28*L29*TY_Q_; 11 L29*L29*-OHD; 208 -DPQ*L1; 73 -DPQ*L4
1 -DPQ*L7; 95 -DPQ*L12; 1 -DPQ*L14; 74 -DPQ*L18
258 -DPQ*L27; 208 -DPQ*-OHD; 3 -DPQ*+OCF; 66 -DPQ*DROP_OHQ_Y
212 -FQR*L1; 19 -FQR*L4; 164 -FQR*L7; 95 -FQR*L10
34 -FQR*L12; 339 -FQR*L17; 18 -FQR*L18; 13 -FQR*L21
85 -FQR*DROP_OCR_Y; 27 -HCY*L6; 7 +HCZ*L8; 29 +HCZ*L17
1 +HCZ*L18; 26 +HCZ*L21; 2 +HCZ*L23; 3 +HCZ*L30
3 +HCZ*LY_R; 4 +OCP*L12; 111 +OCP*L21; 29 +OCP*L23
23 +OCP*L30; 29 +OCP*L31; 27 +OCP*RX_P; 29 -CDP*L2
2 -CDP*L4; 35 -CDP*L6; 1 -CDP*L10; 1 -CDP*L13
1 -CDP*L15; 46 -CDP*L17; 1 -CDP*L18; 140 -CDP*L20
309 -CDP*L23; 350 -DFQ*L4; 37 -DFQ*L6; 60 -DFQ*L13
1 -DFQ*L15; 281 -DFQ*L16; 28 -DFQ*L20; 1 -DFQ*L26
1 -DFQ*RY_P; 99 -DFQ*DROP_OCR_Y; 2 -DFQ*LX_R; 26 +HFR*L9
126 +HFR*L16; 9 +HFR*L18; 40 +HFR*L21; 206 +HFR*L22
21 +HFR*L27; 32 +HFR*L31; 1 +HFR*RX_P; 54 +HYZ*L17
229 +HYR*L1; 50 +HYR*L3; 4 +HYR*L7; 113 +HYR*L10
12 +HYR*L13; 1 +HYR*L15; 9 +HYR*L19; 5 +HYR*L21
29 +HYR*L23; 53 +HYR*+OCF; 57 +HYR*DROP_OHP_YZ; 21 +HYR*DROP_OCR_Y
26 +OZQ*L3; 9 +OZQ*L9; 1 +OZQ*L18; 95 +OZQ*DROP_OHP_YZ
2 +OZQ*DROP_OCR_Y; 151 +OYR*L0; 22 +OYR*L2; 142 +OYR*L6
32 +OYR*L11; 1 +OYR*L14; 80 +OYR*L19; 112 +OYR*L22
21 +OYR*L27; 8 +OYR*-OHD; 179 +OYR*DROP_OHP_YZ; 7 +OYR*RY_P
75 -YZP*L3; 1 -YZP*L22; 129 -YZP*+OCF; 1 -YZP*DROP_OHQ_Y
12 -YZP*LX_R; 20 +ODZ*L8; 38 +ODZ*L16; 35 +ODZ*L21
53 +ODZ*RX_P; 32 +OFY*L1; 27 +OFY*L2; 1 +OFY*L4
5 +OFY*L10; 36 +OFY*L13; 18 +OFY*L18; 95 +OFY*L22
162 +OFY*L24; 186 +OFY*DROP_OHP_YZ; 97 +OFY*DROP_OCR_Y; 54 +HZP*L9
94 +HZP*L21; 1 +HZP*L25; 25 +HZP*L27; 21 +HZP*+OCF
1 +HZP*DROP_OHP_YZ; 25 +HZP*DROP_OCR_Y; 11 +HZP*LX_R; 1 -OYZ*L21
1 -OYZ*L23; 1 -CZP*RX_P; 179 C_OHP_YZ*L27; 16 C_HCP_Z*L1
32 C_HCP_Z*L21; 19 C_HCP_Z*RX_P; 120 C_HYP_Z*L6; 4 C_HYP_Z*L11
54 C_HYP_Z*L12; 18 TPX_Q_*L29; 29 Q_HYCP_Z*L12
```

Upper bound: `-32802883/200000000`.

### Leaf RTLmmmppmppp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR -YZP +ODZ +OFY +HDZ`.

```c1top-geometry
P OHDFY +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODZP -HZP
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHYZ -DYZ
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOHYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODPQ +YPQ
P ZOHDQ -ZHQ
P ZOHYQ -ZYQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF YR 3 lower 135501/250000
O fc - 1 lower 135501/250000
O hc - 0 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
34 L0*L0*L29; 44 L0*L6*L15; 28 L0*L8*L23; 32 L0*L13*L21
131 L0*L13*RX_P; 16 L0*L23*L29; 42 L1*L1*L24; 31 L1*L2*L6
52 L1*L4*L24; 91 L1*L6*L6; 77 L1*L6*L27; 81 L1*L8*L24
94 L1*L8*L27; 54 L1*L8*L29; 32 L1*L10*L24; 13 L1*L10*L29
5 L1*L23*L24; 5 L1*L24*LY_R; 156 L2*L4*L17; 113 L2*L4*L29
139 L2*L8*L27; 33 L2*L12*L17; 272 L2*L18*L29; 50 L3*L23*L24
5 L3*L30*L30; 25 L4*L4*L13; 245 L4*L4*TX_Q_; 17 L4*L6*L13
47 L4*L6*L15; 169 L4*L6*L17; 143 L4*L6*L27; 15 L4*L6*TX_Q_
106 L4*L6*TY_Q_; 1 L4*L8*TX_Q_; 42 L4*L12*L17; 1 L4*L13*L18
3 L4*L13*L27; 1 L4*L15*L17; 253 L4*L17*L20; 290 L4*L17*L23
70 L4*L21*L27; 103 L4*L23*TX_Q_; 1 L4*L28*L29; 15 L4*RY_P*TX_Q_
18 L5*L21*L30; 171 L5*L29*RY_P; 11 L6*L8*L27; 16 L6*L11*L27
7 L6*L11*L29; 75 L6*L13*L18; 15 L6*L13*L27; 5 L6*L15*L27
24 L6*L15*L30; 86 L6*L17*L23; 196 L6*L18*L21; 57 L6*L20*L27
187 L6*L23*L27; 2 L6*L24*L27; 50 L6*L27*L27; 8 L6*L27*DROP_OHQ_Y
91 L6*L27*TX_Q_; 29 L7*L10*L29; 2 L7*L18*L30; 352 L7*L23*L24
102 L7*L23*L29; 57 L7*L23*L30; 120 L7*L28*L29; 19 L7*L29*LY_R
83 L7*L30*L30; 157 L7*L30*LY_R; 16 L8*L21*LY_R; 2 L8*L22*L27
1 L8*L23*L30; 97 L8*L27*L27; 66 L8*L30*LY_R; 51 L9*L30*L30
26 L10*L11*L29; 97 L10*L24*L27; 102 L10*L24*L29; 16 L10*L24*TX_Q_
39 L10*L27*L29; 1 L10*L29*TX_Q_; 2 L10*L30*TX_Q_; 2 L11*L21*LY_R
16 L11*L23*L29; 11 L12*L29*LY_R; 33 L12*L30*L30; 4 L13*L21*L27
4 L13*L23*L24; 11 L13*L27*L30; 33 L13*L28*L29; 2 L13*L28*RX_P
33 L13*L30*RX_P; 13 L13*L30*TY_Q_; 8 L14*L29*L30; 30 L15*L17*L29
13 L15*L20*L29; 4 L16*L23*L29; 18 L17*L20*L23; 102 L17*L23*L23
21 L18*L20*L21; 102 L18*L21*L23; 15 L18*L30*TX_Q_; 34 L20*L29*RY_P
3 L21*L21*L27; 15 L21*L22*L27; 3 L21*L23*L24; 3 L21*L23*L29
3 L21*L23*RX_P; 2 L21*L24*L27; 50 L21*L27*L27; 89 L21*L27*L30
154 L23*L24*L24; 15 L23*L24*TY_Q_; 86 L23*L24*LY_R; 15 L23*L29*L30
15 L23*L30*RX_P; 152 L24*TX_Q_*LY_R; 38 L26*L29*L29; 38 L26*L29*L30
39 L26*L29*TX_Q_; 10 L28*L29*L30; 17 L28*L29*RY_P; 136 L29*TX_Q_*LY_R
136 L30*TX_Q_*LY_R; 136 TX_Q_*LY_R*LY_R; 230 -DPQ*L1; 188 -DPQ*L4
163 -DPQ*L6; 2 -DPQ*L13; 102 -DPQ*L23; 11 -DPQ*+OCF
215 -DPQ*C_OHD_Y; 21 -DPQ*DROP_OHQ_Y; 159 -FQR*L1; 50 -FQR*L3
15 -FQR*L5; 198 -FQR*L7; 2 -FQR*L10; 4 -FQR*L13
3 -FQR*L21; 154 -FQR*L24; 112 -FQR*-OHD; 15 -FQR*TY_Q_
86 -FQR*DROP_OCR_Y; 266 -OHY*L27; 39 -HCY*L1; 26 -HCY*L11
16 -HCY*L22; 39 -HCY*L27; 102 -HCY*LX_R; 8 +CDZ*L30
216 +DFZ*L21; 14 +DFZ*L27; 11 +DFZ*L28; 112 +DFZ*DROP_OHP_Y
66 +DFZ*RX_P; 13 +DFZ*TY_Q_; 386 +OCP*L3; 3 +OCP*L5
146 +OCP*L6; 14 +OCP*L13; 238 +OCP*L21; 2 +OCP*L30
115 -CDP*L2; 174 -CDP*L5; 109 -CDP*L6; 16 -CDP*L13
116 -CDP*L20; 15 -CDP*L28; 160 -CDP*DROP_OHQ_Y; 70 -DFQ*L0
45 -DFQ*L2; 153 -DFQ*L4; 136 -DFQ*L6; 1 -DFQ*L8
198 -DFQ*L13; 2 -DFQ*L23; 107 -DFQ*L26; 52 -OHR*L10
52 +HFR*L4; 29 +HFR*L20; 19 +HFR*L29; 29 +HFR*L30
21 +HFR*L31; 107 +HFR*TX_Q_; 119 +HYR*L1; 27 +HYR*L7
74 +HYR*L10; 44 +HYR*L23; 41 +HYR*-OHD; 113 +HYR*+OCF
16 +HYR*DROP_OHQ_Y; 5 +HYR*DROP_OCR_Y; 1 -OYQ*L29; 64 +OZQ*L1
58 +OZQ*L5; 77 +OZQ*L6; 69 +OZQ*L16; 15 +OZQ*L21
9 +OZQ*L27; 48 +OZQ*RX_P; 13 +OZQ*TY_Q_; 7 +OYR*L0
92 +OYR*L2; 58 +OYR*L6; 74 +OYR*L11; 46 +OYR*L22
102 +OYR*L27; 144 +OYR*C_OHD_Y; 32 +OFY*L1; 37 +OFY*L7
26 +OFY*L11; 17 +OFY*L22; 150 +OFY*L24; 53 +OFY*L27
137 +OFY*+OCF; 2 +OFY*DROP_OHQ_Y; 18 +OFY*DROP_OCR_Y; 33 +HDZ*L1
37 +HDZ*L5; 44 +HDZ*L7; 32 +HDZ*L21; 11 +HDZ*L27
111 +HDZ*DROP_OHP_Y; 55 +HDZ*RX_P; 13 +HDZ*TY_Q_; 30 +DZP*L2
1 +DZP*L4; 75 +DZP*L6; 2 +DZP*L20; 279 -DZQ*L6
46 -DZQ*L16; 15 -DZQ*L21; 64 +FZQ*L0; 35 +FZQ*L2
72 +FZQ*L4; 73 +FZQ*L17; 13 +FZQ*L23; 9 +FZQ*L26
173 TPX_Q_*L18
```

Upper bound: `-284262517/200000000`.

### Leaf RTLmmmppp

Assumptions: `-OYP -OZP -OYQ +OZQ +OYR +YZP`.

```c1top-geometry
P OHDYQ +ODY
P OHFZQ -OFZ
P OHFZR +OZR
P OHYZQ -OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFQR +DQR
P DCFZP +DZP
P DCFZQ -DZQ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZR +YZR
P YOHPR +YPR
P YOHQR +YQR
P YODZP -YDZ
P YODZQ +YZQ
P YODPQ +YPQ
P YHDFZ -YFZ
P ZOHFQ -ZHQ
P ZOHYP -ZHP
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P ZOFYP -ZFP
P ZOFQR +ZQR
P ZHCDY -ZHD
P ZHDFR +ZDR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
T OHP YZ 0 lower 347/500
T OHP YZ 8 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 99/125 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
5823 L27*L27; 932 L0*L0*L17; 6563 L0*L0*L27; 32 L0*L0*RY_P
32 L0*L0*TY_Q_; 1700 L0*L0*LX_R; 7966 L0*L1*L8; 10 L0*L1*L12
853 L0*L4*L17; 180 L0*L4*TX_Q_; 32226 L0*L6*L27; 390 L0*L6*RY_P
754 L0*L6*TY_Q_; 55 L0*L8*L13; 103 L0*L8*RX_P; 6 L0*L12*L27
4039 L0*L17*L24; 9577 L0*L17*L27; 2203 L0*L17*L29; 321 L0*L18*L27
9596 L0*L20*L27; 1538 L0*L20*RY_P; 106 L0*L23*L27; 108 L1*L3*L29
1264 L1*L8*L24; 4037 L1*L8*L27; 3034 L1*L10*L24; 170 L1*L12*L17
401 L1*L21*L29; 28659 L1*L24*L27; 23 L1*L24*L29; 7 L1*L24*L30
952 L1*L29*L30; 881 L2*L4*L17; 2280 L2*L17*RY_P; 558 L2*L20*RY_P
467 L2*L27*RY_P; 738 L3*L5*L29; 50 L3*L11*L11; 457 L3*L12*L18
339 L3*L18*L30; 64 L3*L27*L27; 3688 L4*L4*TX_Q_; 2960 L4*L6*L17
189 L4*L6*TX_Q_; 401 L4*L12*L17; 3374 L4*L17*L17; 2883 L4*L17*L18
758 L4*L17*L20; 4305 L4*L17*L23; 1567 L4*L17*L27; 198 L4*L17*L28
21 L4*L17*LX_R; 336 L4*L20*RY_P; 3688 L4*L23*TX_Q_; 1733 L4*RY_P*TX_Q_
4966 L5*L18*L21; 853 L5*L21*L29; 1815 L5*L21*TY_Q_; 115 L5*L29*L30
419 L6*L6*TY_Q_; 520 L6*L8*RY_P; 651 L6*L17*L27; 1054 L6*L20*RY_P
1068 L6*L21*TY_Q_; 490 L6*L24*L27; 183 L6*L24*RY_P; 21140 L6*L27*L27
2236 L6*L27*L29; 2673 L6*L27*L30; 487 L6*L27*RY_P; 612 L6*L27*TX_Q_
2101 L7*L23*L24; 3510 L7*L23*L29; 1887 L7*L23*L30; 704 L7*L29*LY_R
1092 L8*L11*L18; 116 L8*L11*L27; 38 L8*L13*L27; 20 L8*L14*L29
20 L8*L14*LX_R; 18 L8*L15*L24; 719 L8*L16*L27; 195 L8*L17*RY_P
1244 L8*L18*L27; 18 L8*L18*L29; 3161 L8*L27*L27; 9 L8*L27*RX_P
500 L8*L29*LY_R; 50 L10*L10*L27; 116 L10*L11*L24; 3463 L10*L17*L24
279 L10*L17*L27; 538 L10*L17*L29; 3161 L10*L24*L27; 167 L10*L24*L29
50 L11*L11*L30; 1092 L11*L11*RX_P; 50 L11*L11*LY_R; 361 L11*L30*L30
2048 L11*L30*RX_P; 195 L11*RX_P*RX_P; 1 L12*L18*L30; 1 L14*L17*L30
2035 L16*L21*TY_Q_; 2328 L16*L27*TY_Q_; 1651 L16*TY_Q_*TY_Q_; 1125 L17*L17*L23
227 L17*L18*L21; 2883 L17*L18*L23; 898 L17*L20*RY_P; 3835 L17*L21*L27
2770 L17*L23*L23; 3814 L17*L23*L24; 517 L17*L23*L27; 656 L17*L23*L29
621 L17*L23*TX_Q_; 932 L17*L27*L27; 533 L17*L29*C_OHD_Y; 2883 L18*L18*L21
1120 L18*L21*L23; 3896 L18*L21*L27; 102 L18*L21*L28; 1195 L18*L24*L30
21 L18*L24*TX_Q_; 353 L18*L30*L30; 97 L18*L30*TX_Q_; 321 L18*L30*LY_R
205 L19*L24*L29; 2686 L21*L21*L27; 2481 L21*L23*L24; 1413 L21*L23*L29
1413 L21*L23*RX_P; 490 L21*L24*L27; 2304 L21*L27*L28; 753 L21*L27*TY_Q_
369 L21*L28*TY_Q_; 205 L21*TY_Q_*LX_R; 9484 L22*L24*L27; 490 L23*L24*L24
1905 L23*L24*L29; 1504 L23*L24*L30; 384 L23*L24*TY_Q_; 467 L23*L29*L30
1733 L23*L29*RY_P; 690 L23*L29*LY_R; 467 L23*L30*L30; 106 L23*L30*LY_R
1051 L23*RX_P*LY_R; 369 L23*TX_Q_*LY_R; 2188 L27*L27*L27; 6563 L27*L27*C_OHD_Y
9484 L27*L27*DROP_OHQ_Y; 467 L27*L29*TY_Q_; 401 L29*TX_Q_*LY_R; 995 L29*LY_R*LY_R
127 L31*RX_P*LY_R; 932 RX_P*LY_R*LY_R; 2188 LY_R*LY_R*LY_R; 4230 -DPQ*L1
1849 -DPQ*L5; 1033 -DPQ*L6; 1125 -DPQ*L17; 2883 -DPQ*L18
1120 -DPQ*L23; 3896 -DPQ*L27; 656 -DPQ*+OCF; 5773 -DPQ*C_OHD_Y
21 -DPQ*LX_R; 3298 -FQR*L7; 3835 -FQR*L17; 2686 -FQR*L21
490 -FQR*L24; 743 -FQR*L26; 401 -FQR*L29; 384 -FQR*TY_Q_
1449 -FQR*DROP_OCR_Y; 7292 -FQR*LY_R; 100 -HCY*L11; 55 -HCY*L13
6 -HCY*L14; 2003 -HCY*L16; 579 -HCY*L19; 597 -HCY*L25
519 -HCY*L28; 497 -HCY*L30; 563 -HCY*RX_P; 634 -HCY*RY_P
127 -HCY*LY_R; 170 +HCZ*L17; 756 -CDP*L2; 1653 -CDP*L17
1733 -CDP*L23; 97 -CDP*L29; 3688 -DFQ*L4; 424 -DFQ*L6
384 -DFQ*L23; 582 -DFQ*L27; 545 -DFQ*-OHD; 756 -DFQ*+OCF
1504 -DFQ*DROP_OHP_YZ; 1733 -DFQ*RY_P; 1804 -DFQ*DROP_OCR_Y; 183 -DFQ*LX_R
10571 +HFR*L0; 13 +HFR*L2; 667 +HFR*L8; 3184 +HFR*L16
8424 +HFR*L22; 29629 +HFR*L27; 254 +HFR*L29; 487 +HFR*RY_P
372 +HFR*TY_Q_; 15 +HYZ*L30; 6 +HYZ*LY_R; 399 -CYZ
6 -CYZ*L1; 1435 -CYZ*L19; 1068 -CYZ*DROP_OHP_YZ; 10159 +HYR*L1
115 +HYR*L5; 167 +HYR*L7; 100 +HYR*L10; 6 +HYR*L15
708 +HYR*L19; 1294 +HYR*-OHD; 346 +HYR*+OCF; 855 +HYR*DROP_OHP_YZ
969 +HYR*DROP_OCR_Y; 15 -OZP*L1; 647 -OZP*L9; 6 -OZP*L10
38 -OZP*L24; 513 -OZP*L27; 184 -OZP*+OCF; 227 -OZP*DROP_OHP_YZ
507 -OZP*DROP_OCR_Y; 4949 +OYR*L0; 115 +OYR*L4; 216 +OYR*L11
38 +OYR*L13; 6 +OYR*L14; 1800 +OYR*L18; 4131 +OYR*L27
982 +OYR*L30; 2120 +YZP*L1; 627 +YZP*L16; 38 +YZP*L24
6 +YZP*L27; 1082 +YZP*+OCF; 2105 +YZP*C_OHD_Y; 1087 -CZP*L8
1441 -CZP*L11; 401 +DZP*L17; 448 C_OHP_YZ*L6; 2202 C_OHP_YZ*L8
7714 C_OHP_YZ*L27; 493 C_OHP_YZ*TY_Q_; 1030 C_OYP_Z*L2; 2880 C_OYP_Z*L24
538 C_OYP_Z*L29; 1092 C_CYP_Z*L11; 1012 C_CYP_Z*L13; 1435 C_CYP_Z*L14
432 C_CYP_Z*L17; 115 C_CYP_Z*L18; 1400 C_CYP_Z*L24; 115 C_CYP_Z*L28
1545 C_CYP_Z*L30; 277 Q_OCPY_Z*L0; 572 Q_OCPY_Z*L12; 146 Q_OCPY_Z*L27
115 Q_OCPY_Z*RY_P; 520 Q_OPDY_Z*L6; 195 Q_CPDY_Z*L17
```

Upper bound: `-680786057/250000000`.

### Leaf RTLmmpmm

Assumptions: `-OYP -OZP +OYQ -OZQ -OZR`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHFZR +OFZ
P OHYZQ +OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR -FZR
P FODPQ +FPQ
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFZQ -YZQ
P YOFQR +YQR
P YHDFZ +YDZ
P ZOHCR +ZCR
P ZOHYR +ZYR
P ZOCDQ +ZCQ
P ZODFR +ZDR
P ZODPQ +ZPQ
P ZODPR +ZPR
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
T OHR Z 12 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF ZR 3 lower 135501/250000
O fc - 1 lower 135501/250000
O hc - 0 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 159/500 88/125
t 133/200 1
```

```c1top-sum
3 L21*L27; 2 L30*L30; 4 L0*L0*LX_R; 1 L0*L1*L12
51 L0*L22*LX_R; 3 L0*L29*LX_R; 7 L0*L30*LX_R; 5 L1*L12*L24
4 L1*L12*L30; 6 L1*L15*L24; 2 L1*L21*RX_P; 9 L1*L23*L24
9 L1*L24*TX_Q_; 12 L1*L24*LY_R; 8 L2*L4*L29; 3 L2*L21*TY_Q_
3 L3*L7*L23; 1 L3*L7*LY_R; 2 L3*L18*L21; 8 L3*L23*L24
3 L3*L28*L29; 2 L3*LY_R*LY_R; 28 L4*L4*TX_Q_; 1 L4*L5*L29
12 L4*L17*L20; 31 L4*L17*L23; 23 L4*L17*C_OCF_Y; 13 L4*L23*TX_Q_
2 L4*L28*L29; 12 L5*L5*L21; 1 L5*L7*L29; 16 L5*L16*L21
12 L5*L17*L29; 2 L5*L21*RX_P; 3 L5*L29*DROP_OCQ_Y; 12 L5*RX_P*TY_Q_
2 L6*L7*L27; 1 L6*L15*L27; 7 L6*L21*TY_Q_; 12 L6*L22*LX_R
10 L6*L27*-OHD; 46 L6*L27*DROP_OCQ_Y; 11 L6*L27*DROP_OCR_Y; 1 L7*L7*LY_R
2 L7*L14*L30; 1 L7*L23*L23; 14 L7*L23*L24; 9 L7*L23*RX_P
7 L7*L23*TX_Q_; 9 L7*L23*LY_R; 6 L7*L28*L29; 10 L7*TX_Q_*LY_R
5 L12*L30*LY_R; 5 L15*L25*L29; 1 L15*L29*+OCF; 5 L15*L29*DROP_OCR_Y
2 L16*L21*L28; 3 L16*TY_Q_*TY_Q_; 16 L17*L23*L23; 3 L17*L29*DROP_OCQ_Y
13 L18*L21*L23; 6 L19*L23*L29; 2 L20*L29*-OHD; 5 L21*L27*-OHD
5 L21*L27*+OCF; 20 L21*L27*DROP_OCQ_Y; 7 L21*L27*DROP_OCR_Y; 17 L22*L22*LX_R
1 L23*L29*C_OCF_Y; 9 L23*L29*RY_P; 3 L23*L30*TX_Q_; 3 L23*TX_Q_*LY_R
7 L24*L27*DROP_OCQ_Y; 1 L25*L28*L29; 2 L26*L29*-OHD; 2 L26*L29*DROP_OCR_Y
13 L26*L30*TX_Q_; 2 L28*L29*L30; 1 L28*L29*TX_Q_; 3 L29*-OHD*LX_R
15 TOPCOUNT*L18; 6 KLOW*L29; 34 -DPQ*L3; 13 -DPQ*L23
31 -DPQ*C_OCF_Y; 19 -FQR*L3; 2 -FQR*L7; 18 -FQR*-OHD
11 -FQR*C_OCF_Y; 17 -FQR*DROP_OCQ_Y; 7 -FQR*DROP_OCR_Y; 5 +HCZ
1 +HCZ*+OCF; 1 +HCZ*DROP_OHR_Z; 5 +HCZ*DROP_OCR_Y; 5 -HFZ*L25
3 -HFZ*LX_R; 15 +OCP*L3; 6 +OCP*L19; 3 +OCP*L21
3 -CDP*L1; 16 -CDP*L5; 4 -CDP*L20; 3 -CDP*-OHD
15 -CDP*+OCF; 16 +CDQ*L18; 9 -DFQ*L4; 8 -DFQ*L6
7 -DFQ*+OCF; 12 -DFQ*DROP_OHP_Y; 16 -DFQ*RY_P; 3 +HFR*L13
5 +HFR*L15; 1 +HFR*L20; 5 +HFR*L26; 9 +HFR*L30
24 +HFR*DROP_OCQ_Y; 7 +HFR*TX_Q_; 3 -OZR*L1; 13 -OZR*L3
15 -OZR*+OCF; 19 -OZR*LY_R; 28 +HZR*L1; 19 +HZR*L26
18 +HZR*-OHD; 10 +HZR*+OCF; 3 -FZR*L0; 3 -FZR*L29
8 C_OHR_Z*L14; 12 C_OHR_Z*L27; 1 C_OHR_Z*TX_Q_; 1 Q_OCDR_Y*L29
```

Upper bound: `-7400033/125000000`.

### Leaf RTLmmpmpm

Assumptions: `-OYP -OZP +OYQ -OZQ +OZR -YZR`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHYZQ +OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODPQ +FPQ
P FHDZQ +FZQ
P FHDZR -FZR
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFZR +YFZ
P YOFQR +YQR
P YOZQR -YZQ
P YHDFZ +YDZ
P ZOCDQ +ZCQ
P ZOCYR +ZCR
P ZOCPR +ZPR
P ZOCQR +ZQR
P ZODYR +ZDR
P ZODPQ +ZPQ
P ZHCFY +ZCF
P ZCDFP -ZFP
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
T OCR YZ 1 lower 347/500
T OCR YZ 13 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
O hc - 0 lower 347/500
```

```c1top-box
h 347/500 219/250
c 347/500 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 99/125 1
```

```c1top-sum
63 L0*L0*L31; 272 L0*L0*LX_R; 7 L0*L2*L31; 12 L0*L4*L17
1 L0*L4*L31; 30 L0*L4*TX_Q_; 170 L0*L6*L27; 4 L0*L8*L29
4 L0*L8*LX_R; 34 L0*L9*L27; 63 L0*L10*L30; 3 L0*L11*L17
10 L0*L17*L18; 174 L0*L17*L27; 1 L0*L17*L29; 33 L0*L17*DROP_OCQ_Y
3 L0*L18*L21; 135 L0*L20*L27; 14 L0*L27*-OHD; 2 L0*L27*+OCF
174 L0*L27*DROP_OHP_Y; 14 L0*L30*DROP_OCR_YZ; 6 L0*TY_Q_*LX_R; 23 L1*L2*L10
56 L1*L10*L17; 4 L2*L3*L10; 13 L2*L4*L17; 3 L2*L4*L31
39 L2*L4*TX_Q_; 62 L2*L5*L27; 1 L2*L10*L19; 38 L2*L11*L27
6 L2*L17*L27; 2 L2*L20*L27; 14 L2*L20*RY_P; 73 L2*L21*L28
18 L2*L21*TY_Q_; 86 L2*L23*L27; 19 L2*L27*-OHD; 18 L2*L27*TX_Q_
28 L2*L28*TY_Q_; 6 L2*RY_P*TX_Q_; 6 L2*RY_P*LX_R; 27 L3*L5*L18
54 L3*L8*L18; 6 L3*L10*L24; 3 L3*L23*L24; 13 L4*L4*L17
65 L4*L4*TX_Q_; 17 L4*L6*L27; 1 L4*L10*L30; 123 L4*L17*L20
62 L4*L17*L23; 3 L4*L17*L31; 8 L4*L17*LX_R; 33 L4*L23*L29
32 L4*L23*TX_Q_; 1 L4*L24*L30; 3 L5*L8*L18; 37 L5*L21*L27
12 L5*L21*L28; 40 L5*L21*RX_P; 6 L5*L21*TY_Q_; 1 L5*RX_P*RX_P
1 L6*L17*L27; 284 L6*L22*L27; 33 L6*L27*TX_Q_; 33 L7*L23*L24
21 L7*L23*L29; 75 L7*L23*L30; 2 L8*L8*L27; 17 L8*L10*L17
1 L8*L17*L27; 11 L8*L23*L27; 60 L9*L18*L30; 9 L9*L22*L27
3 L9*L23*LY_R; 1 L9*L29*LY_R; 35 L10*L17*L24; 6 L10*L17*LY_R
3 L10*L23*L24; 20 L11*L21*L27; 12 L17*L18*L20; 2 L17*L21*L27
26 L17*L23*L23; 27 L17*L23*L24; 18 L17*L23*TX_Q_; 25 L17*L26*TX_Q_
26 L18*L21*L23; 26 L18*L21*L28; 6 L18*L25*L30; 10 L18*L30*DROP_OHP_Y
8 L21*L28*L28; 18 L21*RX_P*TY_Q_; 16 L23*L24*L30; 121 L23*L26*L29
12 L23*L29*L29; 25 L23*L29*LY_R; 62 L28*RX_P*TY_Q_; 1 L30*TY_Q_*LX_R
12 RX_P*RX_P*TY_Q_; 92 -DPQ*L3; 26 -DPQ*L23; 26 -DPQ*L28
3 -DPQ*L30; 71 -DPQ*C_OCF_Y; 12 -DPQ*DROP_OHP_Y; 135 -FQR*L1
64 -FQR*L3; 33 -FQR*L7; 27 -FQR*L17; 44 -FQR*C_OCF_Y
22 +OCY*L17; 3 -HCY*L25; 4 -HCY*L30; 2 -HCY*L31
1 -HCY*RX_P; 2 -HCY*RY_P; 3 -HCY*TY_Q_; 34 -HCY*LY_R
3 +OCP*L8; 42 +OCP*L21; 6 +OCP*L27; 12 +OCP*L30
23 -CDP*L0; 11 -CDP*L2; 3 -CDP*L9; 1 -CDP*L16
85 -CDP*L20; 8 -CDP*L25; 23 -CDP*L28; 62 +CDQ*L27
14 -DFQ*L0; 65 -DFQ*L4; 15 -DFQ*-OHD; 34 -DFQ*+OCF
8 -DFQ*DROP_OHP_Y; 25 -DFQ*DROP_OCR_YZ; 305 +HFR*L0; 3 +HFR*L2
1 +HFR*L9; 156 +HFR*L22; 1 +HFR*RX_P; 8 +HFR*TY_Q_
69 -CYP*L1; 4 -CYP*L5; 25 -CYP*L8; 1 -CYP*L11
4 -CYP*L25; 5 -CYP*-OHD; 9 -CYP*DROP_OHP_Y; 6 -CYP*DROP_OCR_YZ
31 -OYP*L2; 8 -OYP*L9; 1 -OYP*L10; 9 -OYP*L17
38 -OYP*L24; 20 +OYQ*L27; 6 C_OCR_YZ*L17; 36 C_OYR_Z*L0
78 C_HYR_Z*L1; 2 C_HYR_Z*L8; 1 C_HYR_Z*L17; 6 C_HYR_Z*L18
3 C_HYR_Z*L23; 45 C_HYR_Z*-OHD; 1 C_HYR_Z*+OCF; 3 C_HYR_Z*DROP_OCR_YZ
3 TPY_Q_*L2; 3 Q_OYRH_Z*L27; 3 Q_HYCR_Z*L10; 3 Q_HYCR_Z*L23
```

Upper bound: `-328721347/500000000`.

### Leaf RTLmmpmppm

Assumptions: `-OYP -OZP +OYQ -OZQ +OZR +YZR -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHDZQ +ODZ
P OHYZQ +OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOCYZ -DYZ
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODPQ +FPQ
P FHDZQ +FZQ
P FHDZR -FZR
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOCDQ +ZCQ
P ZOCYQ +ZYQ
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OD YP 2 lower 135501/250000
O dh - 0 lower 135501/250000
S Q - 3 upper 91249/114499
X Q - 10 lower 16460907/28624750
Y Q - 11 lower 27086157/39250000
```

```c1top-box
h 271/500 219/250
c 93/250 219/250
d 271/500 213/250
f 93/250 797/1000
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 23/40 1
m 69/100 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
214 L4*L17; 80 L0*L6*L27; 78 L0*L8*L17; 48 L0*L8*L30
120 L0*L24*L28; 154 L0*L27*L27; 154 L0*L27*L30; 28 L0*L28*L28
23 L0*L30*L30; 94 L1*L3*L18; 93 L1*L4*L17; 409 L1*L7*L24
11 L1*L9*L30; 6 L1*L9*LY_R; 174 L1*L18*L21; 27 L1*L18*RX_P
29 L1*L21*L24; 67 L1*L23*L24; 105 L1*L24*L27; 2 L1*L24*RX_P
38 L1*L29*L30; 22 L3*L4*L17; 193 L3*L10*L18; 7 L3*L10*L23
40 L3*L18*L18; 3 L3*L18*L27; 98 L3*L23*L24; 197 L4*L4*L23
203 L4*L4*TX_Q_; 285 L4*L5*L17; 184 L4*L5*L24; 149 L4*L6*L17
786 L4*L6*L27; 164 L4*L6*TY_Q_; 42 L4*L8*L30; 93 L4*L9*L17
25 L4*L10*L17; 49 L4*L11*L30; 35 L4*L17*L17; 146 L4*L17*L18
84 L4*L17*L21; 221 L4*L17*L23; 163 L4*L19*L30; 8 L4*L21*L24
24 L4*L21*L30; 174 L4*L22*L30; 402 L4*L23*TX_Q_; 94 L4*L24*TY_Q_
118 L4*L30*RY_P; 146 L4*L30*TY_Q_; 728 L5*L18*L21; 8 L5*L21*L21
333 L5*L21*L28; 514 L6*L6*TY_Q_; 1 L6*L10*L17; 11 L6*L10*TY_Q_
57 L6*L18*L21; 30 L6*L18*L27; 30 L6*L18*L30; 501 L6*L21*L27
422 L6*L21*L28; 156 L6*L21*TY_Q_; 214 L6*L27*L27; 69 L6*L27*L29
12 L6*L27*L30; 233 L7*L23*L24; 469 L7*L23*L30; 176 L7*L23*LY_R
64 L7*L24*LY_R; 92 L7*L29*LY_R; 2 L7*LY_R*LY_R; 2 L8*L9*L28
3 L8*L10*L17; 50 L8*L10*L28; 101 L8*L17*L18; 204 L8*L18*L27
445 L8*L18*L28; 26 L8*L18*TY_Q_; 3 L8*L23*L30; 9 L8*L27*L27
204 L8*L27*L28; 3 L8*L28*TY_Q_; 53 L9*L10*L30; 495 L9*L18*L30
11 L9*L21*L28; 3 L9*L23*RX_P; 9 L9*LY_R*LY_R; 50 L10*L10*L17
101 L10*L17*L17; 332 L10*L17*L18; 3 L10*L17*L20; 204 L10*L17*L27
275 L10*L17*L30; 11 L10*L20*L30; 11 L10*L21*L28; 26 L10*L23*RX_P
157 L16*L27*TY_Q_; 78 L16*L28*L28; 121 L16*TY_Q_*TY_Q_; 35 L17*L17*L23
146 L17*L18*L23; 27 L17*L19*L30; 61 L17*L22*L29; 482 L17*L23*L23
60 L17*L23*L24; 58 L17*L26*TX_Q_; 2 L17*L28*TX_Q_; 78 L17*L30*-OHD
39 L17*L30*DROP_OCQ_Y; 135 L17*L30*TY_Q_; 179 L18*L18*L21; 1 L18*L21*L21
165 L18*L21*L23; 187 L18*L21*L27; 22 L18*L21*RX_P; 30 L18*L23*L24
30 L18*L28*L29; 33 L18*RX_P*TY_Q_; 7 L20*L28*L30; 149 L21*L21*L27
24 L21*L22*L27; 149 L21*L23*L24; 1 L21*L23*L30; 172 L21*L24*L27
9 L21*L28*L28; 1 L21*L28*TY_Q_; 166 L21*L28*LY_R; 1 L21*RX_P*TY_Q_
2 L21*RX_P*LY_R; 5 L21*TY_Q_*TY_Q_; 24 L22*L23*L24; 123 L22*L27*L27
197 L22*L28*L28; 197 L23*L23*L29; 5 L23*L23*TX_Q_; 172 L23*L24*L24
226 L23*L24*LY_R; 247 L23*L26*L30; 73 L23*L28*L30; 377 L23*L29*L29
320 L23*L29*L30; 247 L23*L29*LY_R; 123 L23*LY_R*LY_R; 277 L24*L28*L28
108 L24*L29*LY_R; 16 L24*L30*LY_R; 70 L26*L30*TX_Q_; 51 L27*L27*L27
92 L27*L30*LX_R; 67 L28*L28*L29; 32 L28*L30*TX_Q_; 26 L29*L29*LY_R
26 L29*L30*LY_R; 392 L29*TX_Q_*LY_R; 57 L30*L30*RY_P; 422 L30*TX_Q_*LY_R
57 RX_P*RX_P*TY_Q_; 197 RX_P*TY_Q_*TY_Q_; 226 TX_Q_*LY_R*LY_R; 51 LY_R*LY_R*LY_R
355 -DPQ*L1; 579 -DPQ*L5; 57 -DPQ*L6; 3 -DPQ*L8
179 -DPQ*L18; 1 -DPQ*L21; 165 -DPQ*L23; 157 -DPQ*L27
182 -DPQ*-OHD; 22 -DPQ*DROP_OHP_Y; 467 -FQR*L1; 98 -FQR*L3
94 -FQR*L5; 69 -FQR*L7; 60 -FQR*L17; 30 -FQR*L18
149 -FQR*L21; 172 -FQR*L24; 341 -FQR*-OHD; 24 -FQR*DROP_OCQ_Y
226 -FQR*DROP_OCR_Y; 23 +OCY*L10; 759 +OCY*L17; 183 +OCY*L27
18 -HCY*L3; 23 -HCY*L4; 78 -HCY*L17; 11 -HCY*L20
180 -HCY*L27; 44 -HCY*L30; 3 -HCY*L31; 325 -HCY*RY_P
5 +OCP*L30; 30 -CDP*L6; 102 -CDP*L28; 118 -CDP*L31
297 -DFQ*L0; 404 -DFQ*L4; 506 -DFQ*L6; 11 -DFQ*L10
64 -DFQ*L16; 7 -DFQ*L21; 226 -DFQ*L23; 295 -DFQ*L26
62 -DFQ*C_OCF_Y; 30 -DFQ*RY_P; 122 -DFQ*DROP_OCR_Y; 8 -DFQ*LX_R
542 -OHR*L1; 213 -OHR*L4; 62 -OHR*L7; 362 -OHR*L23
8 -OHR*L29; 462 +HFR*L4; 429 +HFR*L7; 2 +HFR*L16
29 +HFR*L21; 91 +HFR*L22; 213 +HFR*L27; 81 +HFR*L29
160 +HFR*-OHD; 104 +HFR*DROP_OCQ_Y; 380 -CYP*L1; 182 -CYP*L5
55 -CYP*L8; 26 -CYP*L10; 40 -CYP*L18; 22 -CYP*L21
3 -CYP*L27; 333 -CYP*-OHD; 61 -CYP*+OCF; 27 -CYP*DROP_OHP_Y
33 -CYP*DROP_OCQ_Y; 321 -OYP*L0; 157 -OYP*L2; 324 -OYP*L4
1 -OYP*L6; 52 -OYP*L9; 24 -OYP*L10; 128 -OYP*L17
292 -OYP*L18; 25 -OYP*L20; 7 -OYP*L23; 201 -OYP*L27
215 -OYP*+OCF; 76 -ODY*L3; 3 -ODY*L5; 2 -ODY*L9
50 -ODY*L10; 100 -ODY*L17; 613 -ODY*L18; 14 -ODY*L20
204 -ODY*L27; 309 -ODY*-OHD; 121 -ODY*DROP_OHP_Y; 3 -ODY*DROP_OCQ_Y
```

Upper bound: `-141668139/100000000`.

### Leaf RTLmmpmpppmmm

Assumptions: `-OYP -OZP +OYQ -OZQ +OZR +YZR +ODY -OFZ -HDZ -HZP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHYZQ +OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHDZ +YDZ
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHCQ +ZCQ
P ZOHYQ +ZYQ
P ZOHPQ +ZPQ
P ZOHQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OCZ Y 7 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
2 L0*L0*L15; 155 L0*L3*L27; 130 L0*L4*L29; 478 L0*L6*L27
76 L0*L6*RX_P; 4 L0*L8*L23; 146 L0*L8*L27; 3 L0*L12*L29
223 L0*L14*L17; 407 L0*L23*L24; 220 L0*L23*L29; 48 L0*L23*TX_Q_
97 L0*L27*L27; 193 L0*L27*L30; 44 L1*L1*L9; 6 L1*L3*L18
4 L1*L4*L8; 1 L1*L4*L17; 127 L1*L4*L24; 154 L1*L9*L21
83 L1*L10*L29; 163 L1*L12*L17; 11 L1*L12*L30; 1 L1*L14*L21
112 L1*L15*L17; 102 L1*L17*L17; 8 L1*L17*L18; 74 L1*L17*L24
66 L1*L17*L29; 443 L1*L18*L24; 161 L1*L21*L24; 218 L1*L21*L29
64 L1*L21*L31; 48 L1*L21*TY_Q_; 38 L1*L24*L31; 202 L1*L29*LY_R
16 L1*L30*L31; 16 L1*L31*RX_P; 97 L1*LY_R*LY_R; 35 L2*L4*L17
146 L2*L10*L27; 103 L3*L5*L18; 36 L3*L12*L18; 182 L3*L17*L18
195 L3*L18*L27; 535 L3*L18*L30; 50 L3*L21*L27; 9 L4*L4*L13
4 L4*L6*L15; 210 L4*L6*L17; 172 L4*L6*L27; 165 L4*L6*L29
109 L4*L6*TX_Q_; 58 L4*L8*L27; 5 L4*L9*L17; 16 L4*L10*L17
191 L4*L12*L17; 8 L4*L14*L17; 153 L4*L17*L17; 142 L4*L17*L27
2 L4*L21*L30; 183 L4*L27*DROP_OHQ_Z; 24 L5*L30*L30; 200 L6*L7*L27
75 L6*L8*L27; 9 L6*L10*L27; 58 L6*L17*L27; 459 L6*L18*L27
459 L6*L18*L30; 33 L6*L21*TY_Q_; 140 L6*L25*L27; 111 L6*L27*L30
502 L6*L27*-OHD; 240 L6*L27*DROP_OCQ_Y; 183 L6*L27*DROP_OCR_Y; 179 L7*L23*L30
151 L8*L21*L27; 109 L8*L23*L24; 19 L8*L28*L30; 123 L8*L30*TY_Q_
9 L9*L18*L21; 38 L10*L12*L30; 16 L10*L17*L23; 43 L10*L21*L24
132 L10*L29*TY_Q_; 74 L10*L30*TX_Q_; 187 L11*L21*L30; 55 L11*L30*L30
102 L12*L17*L18; 1 L13*L17*L23; 2 L13*L23*L30; 98 L14*L17*L17
8 L14*L17*L18; 58 L14*L17*L29; 2 L14*L30*L30; 4 L14*RX_P*RX_P
2 L15*L29*L29; 141 L16*L22*L27; 66 L17*L23*L24; 1 L17*L23*L27
43 L17*L23*L30; 73 L17*TX_Q_*LY_R; 292 L18*L20*L30; 142 L18*L21*L27
153 L18*L21*L31; 33 L21*L21*L27; 33 L21*L23*L24; 89 L21*L24*LY_R
21 L21*L27*L28; 55 L21*L27*L30; 7 L21*L27*RX_P; 48 L21*L27*DROP_OCR_Y
51 L21*L27*LX_R; 183 L22*L24*L27; 60 L23*L24*L29; 171 L23*L24*L30
96 L23*L29*L29; 96 L23*L29*L30; 135 L27*L27*DROP_OHQ_Z; 90 L28*L28*RX_P
51 L28*L30*L30; 168 L31*RX_P*TY_Q_; 292 -DPQ*L1; 43 -DPQ*L3
71 -DPQ*L12; 335 -DPQ*L14; 142 -DPQ*L27; 168 -DPQ*L31
111 -FQR*L3; 200 -FQR*L7; 151 -FQR*L8; 66 -FQR*L17
33 -FQR*L21; 140 -FQR*L25; 76 -FQR*-OHD; 183 -FQR*DROP_OCR_Y
8 -HCY*L1; 51 -HCY*L3; 99 -HCY*L5; 76 -HCY*L6
38 -HCY*L13; 16 -HCY*L18; 218 -HCY*L21; 146 -HCY*L27
16 -HCY*DROP_OHP_Y; 99 -HCY*DROP_OCQ_Y; 218 -HCY*TY_Q_; 360 +OCP*L3
28 +OCP*L8; 44 +OCP*L12; 29 +OCP*L17; 195 +OCP*L27
99 +OCP*L30; 269 +OCP*-OHD; 148 +OCP*DROP_OHQ_Z; 3 +OCP*DROP_OCQ_Y
13 +OCP*TY_Q_; 29 -CDP*L5; 458 -CDP*L6; 12 -CDP*L9
16 -CDP*L10; 58 -CDP*L12; 228 -CDP*L17; 62 -CDP*L28
83 -CDP*-OHD; 75 -CDP*RX_P; 187 -CDP*DROP_OHQ_Z; 302 -DFQ*L0
274 -DFQ*L6; 19 -DFQ*L9; 1 -DFQ*L12; 4 -DFQ*L14
45 -DFQ*L16; 132 -DFQ*L31; 142 -DFQ*RX_P; 60 -DFQ*LY_R
814 -OHR*L1; 29 -OHR*L7; 38 -OHR*L8; 47 -OHR*L11
9 -OHR*L17; 33 -OHR*L21; 237 -OHR*L23; 68 -OHR*L25
16 -OHR*RY_P; 29 -OHR*LX_R; 750 +HFR*L0; 112 +HFR*L4
76 +HFR*L9; 9 +HFR*L10; 65 +HFR*L17; 459 +HFR*L18
218 +HFR*L21; 64 +HFR*-OHD; 740 +HFR*DROP_OCQ_Y; 4 -CYZ*L30
2 -CYZ*TX_Q_; 16 -CYP*L23; 203 +OYQ*L3; 96 +OYQ*L4
128 +OYQ*L6; 39 +OYQ*L13; 256 +OYQ*L27; 13 +OYQ*L30
441 +OYQ*-OHD; 61 +OYQ*DROP_OHP_Y; 16 +OYQ*RY_P; 43 +OYQ*LX_R
39 -OZQ*L9; 132 -OZQ*L17; 1 -OZQ*L29; 3 -OZQ*L30
335 -OZQ*RY_P; 5 -OZQ*LY_R; 51 +ODY*L6; 38 +ODY*L12
38 +ODY*L14; 133 +ODY*L17; 58 +ODY*L27; 170 +ODY*-OHD
51 +ODY*+OCF; 126 +ODY*DROP_OHP_Y; 378 +ODY*DROP_OHQ_Z; 301 +ODY*DROP_OCQ_Y
1 -OFZ*L21; 4 -OFZ*L23; 2 -OFZ*L29; 336 -HDZ*L0
38 -HDZ*L8; 38 -HDZ*L10; 61 -HDZ*L16; 288 -HDZ*L19
58 -HDZ*+OCF; 39 -HDZ*RY_P; 71 -HDZ*DROP_OHQ_Z; 308 -HDZ*DROP_OCQ_Y
1 -HDZ*TX_Q_; 30 -HDZ*TY_Q_; 15 -HZP; 8 -HZP*L5
2 -HZP*L6; 102 -HZP*L17; 8 -HZP*L18; 319 -HZP*L28
82 -HZP*+OCF; 73 -HZP*DROP_OHQ_Z; 335 -HZP*DROP_OCQ_Y; 61 +OYZ
41 +OYZ*L4; 2 +OYZ*L7; 20 +OYZ*L30; 41 +OYZ*DROP_OHQ_Z
60 +FZQ*L17; 16 -YZP*L30; 4 -YZQ*L4; 115 C_ODF_YZ*L21
186 C_ODF_YZ*L23; 435 C_ODF_YZ*RX_P; 117 C_ODQ_Y*L27; 5 Q_ODQZ_Y*L27
186 Q_OYQF_Z*L4; 61 Q_OYQF_Z*L17; 170 Q_OYQF_Z*L29; 256 Q_OYQF_Z*LY_R
```

Upper bound: `-774393553/200000000`.

### Leaf RTLmmpmpppmmp

Assumptions: `-OYP -OZP +OYQ -OZQ +OZR +YZR +ODY -OFZ -HDZ +HZP`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHYZQ +OYZ
P HODZQ +HZQ
P HODZR +HZR
P HODPQ +HPQ
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHZP +DZP
P DOHZQ -DZQ
P DOHZR -DZR
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHDZ +YDZ
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHCQ +ZCQ
P ZOHFP -ZFP
P ZOHYQ +ZYQ
P ZOHPR +ZPR
P ZOHQR +ZQR
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
T OHD YZ 0 lower 347/500
T OCZ Y 7 lower 93/292
T OHP YZ 8 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 99/125 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
10 L27*L27; 65 L0*L0*L17; 74 L0*L0*L27; 303 L0*L1*L24
330 L0*L6*L27; 31 L0*L8*L17; 27 L0*L8*L27; 38 L0*L12*L17
50 L0*L12*L27; 19 L0*L14*L17; 4 L0*L14*L27; 12 L0*L17*L17
63 L0*L17*L21; 16 L0*L17*L23; 319 L0*L17*L27; 24 L0*L17*L30
110 L0*L17*RY_P; 16 L0*L20*RY_P; 24 L0*L27*L30; 41 L1*L1*L1
54 L1*L1*L9; 173 L1*L1*L21; 98 L1*L1*LY_R; 27 L1*L2*L24
42 L1*L3*L18; 3 L1*L4*L8; 107 L1*L4*L17; 21 L1*L8*L24
92 L1*L9*L21; 35 L1*L10*L29; 7 L1*L12*L30; 5 L1*L13*L24
16 L1*L14*L21; 33 L1*L21*L24; 78 L1*L21*L27; 29 L1*L21*L29
94 L1*L21*RX_P; 5 L1*L24*L29; 13 L1*L29*L29; 16 L1*L29*TY_Q_
151 L1*L29*LY_R; 4 L1*L31*RX_P; 12 L1*RX_P*RX_P; 151 L1*RX_P*LY_R
73 L2*L6*RY_P; 9 L2*L14*L27; 86 L2*L20*RY_P; 45 L3*L10*L17
43 L3*L10*L29; 3 L3*L14*L21; 57 L3*L18*L30; 5 L3*L27*L31
20 L4*L4*L17; 92 L4*L4*TX_Q_; 307 L4*L6*L17; 76 L4*L6*L27
16 L4*L6*L29; 180 L4*L6*TX_Q_; 15 L4*L8*L23; 50 L4*L9*L17
34 L4*L9*L27; 58 L4*L14*L17; 110 L4*L17*L17; 57 L4*L17*L18
13 L4*L17*L21; 20 L4*L17*L23; 17 L4*L17*-OHD; 110 L4*L17*+OCF
47 L4*L23*L24; 7 L5*L8*L24; 37 L5*L14*L24; 37 L5*L18*L21
48 L6*L8*L27; 45 L6*L10*L27; 74 L6*L14*L27; 155 L6*L14*RY_P
138 L6*L17*L27; 7 L6*L20*RY_P; 10 L6*L25*L27; 29 L6*L27*L29
391 L6*L27*-OHD; 11 L6*L27*+OCF; 109 L6*L27*DROP_OCQ_Y; 44 L6*L27*TX_Q_
48 L7*L23*L24; 56 L8*L21*L27; 29 L8*L23*L29; 4 L9*L18*RX_P
17 L9*L22*L27; 4 L10*L17*L17; 4 L10*L17*L30; 122 L10*L21*L27
84 L10*L23*L24; 5 L10*L24*L29; 16 L10*L29*TY_Q_; 20 L12*L18*L30
4 L12*L18*RX_P; 5 L12*L27*L30; 55 L12*L27*TY_Q_; 37 L14*L21*L27
17 L14*L24*TY_Q_; 4 L14*L30*L30; 4 L14*L30*LY_R; 60 L14*RX_P*RX_P
4 L14*RX_P*LY_R; 64 L15*L17*L17; 4 L15*L17*L27; 26 L15*L17*L29
5 L15*L24*L29; 57 L17*L18*L23; 110 L17*L18*L30; 138 L17*L21*L27
138 L17*L23*L24; 57 L18*L18*L21; 18 L21*L25*L27; 18 L21*L27*-OHD
7 L21*L27*+OCF; 31 L22*L24*L27; 56 L22*L24*L31; 7 L23*L24*L29
80 L23*L24*LY_R; 111 TX_Q_*LY_R*LY_R; 20 -DPQ*L4; 7 -DPQ*L6
65 -DPQ*L8; 57 -DPQ*L18; 294 -DPQ*L27; 16 -DPQ*-OHD
294 -DPQ*DROP_OCR_Y; 340 -FQR*L1; 47 -FQR*L4; 73 -FQR*L7
56 -FQR*L8; 11 -FQR*L10; 112 -FQR*L14; 138 -FQR*L17
18 -FQR*L25; 1 -FQR*L27; 7 -FQR*+OCF; 112 -FQR*DROP_OCR_Y
3 -HCY*L6; 18 -HCY*L17; 24 -HCY*L27; 1 +CFY*L27
5 +HCZ*L7; 16 +HCZ*L10; 65 +HCZ*L21; 16 +HCZ*L23
22 +HCZ*DROP_OHP_YZ; 25 +HCZ*RX_P; 13 +HCZ*RY_P; 37 +OCP*L21
53 +OCP*L30; 3 -CDP*L0; 73 -CDP*L6; 58 -CDP*L14
110 -CDP*L17; 214 -CDP*L20; 8 -DFQ*L0; 92 -DFQ*L4
196 -DFQ*L6; 2 -DFQ*L14; 211 -DFQ*L16; 18 -DFQ*L26
27 -DFQ*L31; 16 -DFQ*RX_P; 385 -OHR*L1; 24 -OHR*L5
5 -OHR*L7; 23 -OHR*L8; 92 -OHR*L11; 95 -OHR*L14
4 -OHR*L21; 87 -OHR*L23; 9 -OHR*LX_R; 659 +HFR*L0
11 +HFR*L4; 3 +HFR*L9; 35 +HFR*L10; 5 +HFR*L13
37 +HFR*L15; 29 +HFR*L21; 9 +HFR*L24; 29 +HFR*-OHD
33 +HFR*+OCF; 348 +HFR*DROP_OCQ_Y; 9 +HYZ*L17; 60 +HYZ*L27
16 -CYZ*L5; 40 -CYZ*L6; 32 -CYZ*DROP_OHP_YZ; 39 -CYZ*RX_P
62 -CYZ*DROP_OHQ_Z; 16 -CYZ*DROP_OCQ_Y; 20 -CYZ*DROP_OCR_Y; 100 +OYQ*L5
119 +OYQ*L6; 1 +OYQ*L13; 1 +OYQ*L15; 20 +OYQ*+OCF
162 +OYQ*DROP_OHP_YZ; 2 +OYQ*DROP_OCR_Y; 1 -OZQ*L31; 16 -OZQ*LY_R
5 +YZR*L6; 52 +YZR*L28; 5 +YZR*L30; 113 +YZR*DROP_OCQ_Y
15 +YZR*TY_Q_; 3 +ODY*L1; 11 +ODY*L4; 17 +ODY*L6
127 +ODY*L12; 127 +ODY*L14; 11 +ODY*L27; 100 +ODY*+OCF
116 +ODY*DROP_OHP_YZ; 105 +ODY*DROP_OHQ_Z; 12 +ODY*DROP_OCQ_Y; 112 +ODY*DROP_OCR_Y
7 +ODY*LX_R; 57 -OFZ*L0; 35 -OFZ*L2; 15 -OFZ*L4
26 -OFZ*L17; 114 -OFZ*L23; 155 -OFZ*RY_P; 151 +HZP
7 +HZP*L1; 65 +HZP*L21; 20 +HZP*+OCF; 80 +OYZ
41 +OYZ*L1; 38 +OYZ*L3; 179 +OYZ*L4; 35 +OYZ*L6
2 +OYZ*L21; 112 +OYZ*L23; 84 +OYZ*DROP_OHP_YZ; 80 +OYZ*DROP_OCR_Y
58 +HZQ*L27; 13 +HZR*L4; 65 -YZP*L21; 4 -YZP*RX_P
168 C_OHP_YZ*L27; 3 C_OCZ_Y*L27; 61 C_OCZ_Y*RY_P; 2 C_ODZ_Y*L24
127 C_ODZ_Y*L31; 65 C_ODQ_Y*L27; 126 Q_OYQF_Z*L4; 96 Q_OYQF_Z*L17
119 Q_OYQF_Z*L29; 110 Q_OYQF_Z*L30; 110 Q_OYQF_Z*LY_R; 54 Q_HYCP_Z*L1
4 Q_HYCP_Z*L3; 16 Q_HYCP_Z*L14; 92 Q_HYCP_Z*L21
```

Upper bound: `-1128208663/200000000`.

### Leaf RTLmmpmpppmpm

Assumptions: `-OYP -OZP +OYQ -OZQ +OZR +YZR +ODY -OFZ +HDZ -HZQ`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHYZQ +OYZ
P HODZP -HZP
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHYZ -DYZ
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOCDQ +ZCQ
P ZOCYQ +ZYQ
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 66/125 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
4 L0*L1*L30; 1 L0*L7*L17; 10 L0*L8*TX_Q_; 10 L0*L17*L23
9 L0*L17*L30; 1 L0*L17*L31; 5 L0*L17*TX_Q_; 27 L0*L23*L29
1 L0*L27*L31; 24 L0*L29*TX_Q_; 1 L0*L30*DROP_OCR_Y; 2 L1*L3*L18
1 L1*L7*L24; 2 L1*L18*RX_P; 2 L1*L21*L29; 1 L1*L24*LY_R
1 L1*L27*LX_R; 1 L1*L29*TY_Q_; 2 L1*L30*L30; 1 L1*L30*L31
6 L3*L18*DROP_OCQ_Y; 2 L3*L29*TY_Q_; 1 L4*L4*RX_P; 6 L4*L6*L17
18 L4*L6*TX_Q_; 8 L4*L17*L27; 12 L4*L17*+OCF; 16 L4*L17*C_OHD_Y
3 L4*L17*DROP_OHP_Y; 7 L4*L17*DROP_OCQ_Y; 10 L4*L17*DROP_OCR_Y; 1 L5*L17*L29
12 L5*L21*L31; 1 L6*L7*L27; 1 L6*L23*L27; 4 L6*L27*C_OHD_Y
1 L6*L27*DROP_OCR_Y; 1 L7*L23*L29; 1 L7*L28*L29; 1 L7*L30*-OHD
6 L8*L22*L27; 5 L8*L23*L29; 1 L9*L18*L30; 5 L10*L17*L21
6 L10*L21*L27; 8 L11*L18*L21; 3 L11*L21*RX_P; 5 L11*L23*L29
1 L11*L30*-OHD; 1 L11*L30*DROP_OCR_Y; 1 L16*L17*L23; 1 L17*L29*C_OHD_Y
14 L18*L21*-OHD; 1 L18*L21*DROP_OHP_Y; 4 L18*L27*-OHD; 2 L18*L30*DROP_OHP_Y
4 L18*L30*DROP_OCR_Y; 1 L21*L27*C_OHD_Y; 2 L21*L28*RX_P; 7 L23*L28*L29
5 L23*L29*L29; 3 L23*L30*-OHD; 1 L27*L28*C_OHD_Y; 1 L27*C_OHD_Y*C_OHD_Y
1 L28*L29*TX_Q_; 5 L28*L30*-OHD; 1 L28*L30*DROP_OCR_Y; 3 L30*L30*DROP_OCQ_Y
1 L30*-OHD*C_OHD_Y; 5 L30*-OHD*TX_Q_; 4 L30*RX_P*DROP_OCQ_Y; 8 L31*RX_P*TY_Q_
32 -OHF*L27; 4 -DPQ*L1; 3 -DPQ*L3; 8 -DPQ*L11
18 -DPQ*-OHD; 1 -DPQ*DROP_OHP_Y; 1 -HCY*DROP_OHP_Y; 34 -HCY*DROP_OCQ_Y
8 -HCY*TY_Q_; 1 -HCY*DROP_OCR_Y; 13 +OCP*L1; 8 +OCP*L3
2 +OCP*L21; 1 +OCP*TY_Q_; 4 +OCP*DROP_OCR_Y; 2 +HCP*L30
6 -CDP*L20; 2 -CDP*-OHD; 16 -CDP*+OCF; 2 -CDP*DROP_OHP_Y
6 -CDP*DROP_OCQ_Y; 1 -CDP*TY_Q_; 1 -CDP*DROP_OCR_Y; 1 +CDQ*L18
1 -DFQ*L0; 20 -DFQ*L6; 7 -DFQ*L16; 36 -OHR*L1
6 -OHR*L27; 6 -OHR*DROP_OCR_Y; 1 +HYP*L30; 7 +OYQ*L4
4 +OYQ*L6; 24 +OYQ*L27; 39 +OYQ*C_OHD_Y; 8 +OYQ*DROP_OHP_Y
30 +OYQ*DROP_OCR_Y; 28 +ODY*L20; 25 +ODY*-OHD; 6 +ODY*+OCF
8 +ODY*DROP_OHP_Y; 20 +ODY*DROP_OCQ_Y; 7 +ODY*DROP_OCR_Y; 2 C_OFQ_Z*L30
3 C_HFQ_Z*L7; 10 C_HFQ_Z*L8; 7 C_HFQ_Z*L17; 23 C_HFQ_Z*L29
3 C_HFQ_Z*-OHD; 6 Q_OCPH_Y*L30; 4 Q_OQFH_Z*L30; 10 Q_OYQF_Z*L4
3 Q_OYQF_Z*L30; 1 Q_HQFR_Z*L7; 13 Q_HQFR_Z*L17; 35 Q_HQFR_Z*C_OHD_Y
13 Q_HQFR_Z*DROP_OHP_Y; 1 Q_HQFR_Z*DROP_OCR_Y
```

Upper bound: `-2316151/50000000`.

### Leaf RTLmmpmpppmppm

Assumptions: `-OYP -OZP +OYQ -OZQ +OZR +YZR +ODY -OFZ +HDZ +HZQ -CFZ`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHYZQ +OYZ
P HODZP -HZP
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFZR +CZR
P COFQR +CQR
P DOHYZ -DYZ
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOCYZ +FYZ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHCQ +ZCQ
P ZOHYQ +ZYQ
P ZOHPQ +ZPQ
P ZOHQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 66/125 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
134 L0*L6*L30; 6 L0*L8*L17; 13 L0*L10*L17; 32 L0*L10*L30
55 L0*L17*L23; 23 L0*L17*L30; 152 L0*L23*L29; 233 L1*L1*L24
20 L1*L1*L31; 84 L1*L3*L18; 137 L1*L4*L24; 34 L1*L7*L24
45 L1*L8*L24; 78 L1*L9*L21; 122 L1*L10*L21; 34 L1*L10*L29
1 L1*L12*L21; 118 L1*L13*L24; 40 L1*L15*L24; 7 L1*L17*L24
8 L1*L21*L21; 177 L1*L21*L29; 4 L1*L21*TY_Q_; 103 L1*L22*L24
77 L1*L24*L27; 171 L1*L24*L29; 13 L1*L31*RX_P; 10 L2*L8*L17
84 L2*L10*L27; 21 L2*L17*L23; 60 L3*L4*L4; 123 L3*L10*L23
38 L3*L18*L21; 18 L3*L18*L27; 156 L3*L18*L30; 10 L3*L18*RX_P
14 L3*L27*L31; 1 L4*L4*L13; 1 L4*L5*L17; 122 L4*L6*L17
219 L4*L6*L27; 123 L4*L6*L29; 95 L4*L6*TY_Q_; 44 L4*L8*L27
12 L4*L12*L17; 96 L4*L12*L30; 7 L4*L15*L17; 77 L4*L15*L24
9 L4*L17*L17; 7 L4*L17*L19; 88 L4*L17*L23; 175 L4*L17*L27
110 L4*L17*+OCF; 82 L4*L17*C_OHD_Y; 2 L4*L17*DROP_OHQ_Z; 175 L4*L17*DROP_OCR_Y
100 L4*L20*L23; 84 L4*L21*L27; 24 L4*L21*L30; 106 L4*L23*L24
61 L5*L30*L30; 56 L6*L7*L27; 85 L6*L8*L27; 103 L6*L13*L27
95 L6*L14*L27; 67 L6*L14*L30; 36 L6*L17*L27; 36 L6*L18*L21
6 L6*L18*L27; 43 L6*L18*RX_P; 170 L6*L22*L27; 34 L6*L22*L30
34 L6*L25*L27; 79 L6*L27*L27; 81 L6*L27*L29; 340 L6*L27*C_OHD_Y
33 L6*L27*TX_Q_; 18 L7*L29*LY_R; 5 L8*L17*L17; 60 L8*L21*L27
60 L8*L23*L24; 60 L8*L23*L29; 14 L8*L29*LY_R; 5 L8*L30*L30
4 L10*L15*L29; 5 L10*L17*L17; 34 L10*L30*TX_Q_; 108 L11*L21*L30
12 L11*L30*L30; 5 L12*L17*L23; 7 L12*L18*L21; 20 L13*L14*L30
19 L13*L21*L28; 28 L13*L23*L30; 17 L13*L28*L30; 2 L14*L17*L21
13 L14*L21*L30; 4 L15*L17*L23; 4 L15*L18*L21; 41 L15*L21*L27
41 L15*L23*L24; 16 L15*L23*L29; 114 L15*L26*L29; 5 L15*L29*L29
67 L15*L29*LY_R; 46 L17*L21*L27; 96 L17*L23*L23; 36 L17*L23*L24
7 L17*L23*RY_P; 43 L17*L29*RY_P; 6 L17*L29*LY_R; 13 L17*LY_R*LY_R
60 L18*L18*L21; 96 L18*L21*L23; 6 L18*L21*L27; 55 L18*L21*L30
143 L18*L21*L31; 6 L18*L23*L24; 66 L18*RX_P*TY_Q_; 1 L21*L21*L27
1 L21*L23*L24; 1 L21*L23*L29; 1 L21*L23*L30; 34 L21*L25*L27
60 L21*L27*C_OHD_Y; 10 L21*L27*DROP_OHP_Y; 41 L21*L27*DROP_OCQ_Y; 41 L22*L23*L24
136 L23*L24*L29; 14 L23*L28*L29; 171 L23*L29*L29; 171 L23*L29*L30
7 L27*L27*L27; 20 L27*L27*L30; 13 L27*L27*RX_P; 19 L27*L28*RX_P
20 L27*L30*L30; 6 L27*L30*RX_P; 36 L28*L30*RX_P; 25 L29*L29*LY_R
136 L29*TX_Q_*LY_R; 32 L29*LY_R*LY_R; 7 L30*L30*-OHD; 5 L31*RX_P*RX_P
143 L31*RX_P*TY_Q_; 7 LY_R*LY_R*LY_R; 82 -DPQ*L1; 60 -DPQ*L4
36 -DPQ*L6; 7 -DPQ*L12; 4 -DPQ*L15; 60 -DPQ*L18
96 -DPQ*L23; 143 -DPQ*L31; 137 -DPQ*-OHD; 21 -DPQ*+OCF
231 -FQR*L1; 183 -FQR*L4; 34 -FQR*L7; 60 -FQR*L8
41 -FQR*L15; 36 -FQR*L17; 6 -FQR*L18; 1 -FQR*L21
34 -FQR*L25; 136 -FQR*L29; 290 -FQR*-OHD; 41 -FQR*DROP_OCQ_Y
3 +OCY*L17; 7 -HCY*L3; 79 -HCY*L6; 71 -HCY*L10
20 -HCY*L12; 79 -HCY*L15; 60 -HCY*L21; 10 -HCY*L30
7 -HCY*-OHD; 7 -HCY*DROP_OHP_Y; 241 -HCY*DROP_OCQ_Y; 96 -HCY*TY_Q_
47 +DFZ*L5; 26 +DFZ*L7; 20 +DFZ*L8; 8 +DFZ*L11
20 +DFZ*L13; 20 +DFZ*L14; 20 +DFZ*L23; 48 +DFZ*L28
82 +DFZ*L29; 15 +DFZ*TX_Q_; 16 +DFZ*DROP_OCR_Y; 61 +DFZ*LY_R
253 +OCP*L3; 1 +OCP*L5; 6 +OCP*L13; 2 +OCP*L14
24 +OCP*L17; 116 +OCP*L21; 37 +OCP*L27; 9 +OCP*C_OHD_Y
6 +OCP*TY_Q_; 38 +OCP*DROP_OCR_Y; 35 -CDP; 60 -CDP*L5
43 -CDP*L6; 6 -CDP*L12; 2 -CDP*L15; 9 -CDP*L17
19 -CDP*L27; 63 -CDP*-OHD; 87 -CDP*+OCF; 2 -CDP*DROP_OHQ_Z
61 -CDP*DROP_OCQ_Y; 402 -OHR*L1; 24 -OHR*L4; 25 -OHR*L7
6 -OHR*L8; 15 -OHR*L13; 5 -OHR*L15; 22 -OHR*L17
277 -OHR*L23; 31 -OHR*L25; 31 -OHR*L27; 21 -OHR*+OCF
21 -OHR*DROP_OHP_Y; 37 +HFR*L0; 113 +HFR*L4; 39 +HFR*L8
103 +HFR*L13; 35 +HFR*L15; 6 +HFR*L17; 46 +HFR*L27
117 +HFR*L29; 132 +HFR*-OHD; 33 +HFR*+OCF; 321 +HFR*DROP_OCQ_Y
63 +HFR*TX_Q_; 98 -CYZ*L27; 82 +OYQ*L3; 229 +OYQ*L4
9 +OYQ*L12; 75 +OYQ*L14; 339 +OYQ*L27; 262 +OYQ*C_OHD_Y
241 +OYQ*DROP_OCR_Y; 168 -OZQ*L4; 9 -OZQ*L8; 71 -OZQ*L10
20 -OZQ*L13; 20 -OZQ*L15; 2 -OZQ*L17; 10 -OZQ*L21
41 -OZQ*L23; 1 -OZQ*L29; 28 -OZQ*L30; 6 -OZQ*RY_P
116 -OZQ*LY_R; 48 +ODY*L1; 12 +ODY*L14; 44 +ODY*L27
226 +ODY*-OHD; 215 +ODY*DROP_OHQ_Z; 216 +ODY*DROP_OCQ_Y; 53 +ODY*TX_Q_
26 +ODY*TY_Q_; 12 +HDZ*L21; 17 +HDZ*L30; 32 +HZQ*L1
4 +HZQ*L11; 20 +HZQ*L13; 10 +HZQ*L21; 45 -CFZ*L4
20 -CFZ*L8; 20 -CFZ*L13; 4 -CFZ*L15; 12 -CFZ*L23
5 -CFZ*L29; 12 -CFZ*-OHD; 15 -CFZ*TX_Q_; 279 -CFZ*DROP_OCR_Y
9 +OYZ*L21; 75 +OYZ*L23; 20 +OYZ*L30; 123 +FZQ*L4
20 +FZQ*L15; 41 +FZQ*L23; 183 +FZQ*L26; 1 +FZQ*L29
6 +FZQ*RY_P; 10 +FZQ*LY_R; 8 -YZQ*L4; 79 -YZQ*-OHD
98 -YZQ*DROP_OCR_Y; 77 +ZQR*L4; 18 SP_OCQH_YZ_CH-1*L4; 71 SP_OCQH_YZ_CH-1*L10
32 SP_ODQH_YZ_DH-1*L0; 20 SP_ODQH_YZ_DH-1*L2; 96 SP_ODQH_YZ_DH-1*L4; 103 SP_ODQH_YZ_DH-1*L6
20 SP_ODQH_YZ_DH-1*L12; 20 SP_ODQH_YZ_DH-1*L15; 18 SP_ODQH_YZ_DH-1*L20; 4 SP_ODQH_YZ_DH-1*L23
28 SP_OCQF_YZ_CF-1*L4; 4 SP_OCQF_YZ_CF-1*L15; 22 Q_ODQZ_Y*L27; 63 Q_HDFR_Z*L21
```

Upper bound: `-139579617/50000000`.

### Leaf RTLmmpmpppmppp

Assumptions: `-OYP -OZP +OYQ -OZQ +OZR +YZR +ODY -OFZ +HDZ +HZQ +CFZ`.

```c1top-geometry
P OHDZQ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHYZQ +OYZ
P HODZP -HZP
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFZQ -CZQ
P COFQR +CQR
P DOHYZ -DYZ
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOCZP +FZP
P FOCZQ +FZQ
P FOCZR -FZR
P FODPQ +FPQ
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHYQ +ZYQ
P ZOHPQ +ZPQ
P ZOHQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OCF YZ 1 lower 347/500
T OCZ Y 7 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
O hc - 0 lower 347/500
```

```c1top-box
h 347/500 219/250
c 347/500 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
22 L0*L17; 252 L2*L17; 5 L0*L0*L9; 12 L0*L1*L30
16 L0*L2*L13; 19 L0*L2*L31; 153 L0*L2*RY_P; 44 L0*L4*L17
45 L0*L4*L31; 109 L0*L6*L27; 9 L0*L8*L21; 2 L0*L12*L30
13 L0*L13*L17; 1 L0*L13*TX_Q_; 30 L0*L17*L25; 43 L0*L17*C_OHD_Y
22 L0*L17*DROP_OHQ_Z; 68 L0*L17*LX_R; 10 L0*L20*L27; 103 L0*L23*L24
104 L0*L23*L29; 21 L0*L23*L31; 43 L0*L30*DROP_OHP_Y; 80 L1*L24*L27
1 L1*L24*TX_Q_; 17 L1*L30*TX_Q_; 5 L2*L2*L11; 242 L2*L2*L19
51 L2*L2*L31; 402 L2*L2*RY_P; 50 L2*L4*L15; 471 L2*L4*L17
4 L2*L4*L27; 26 L2*L4*L31; 3 L2*L6*L27; 11 L2*L10*TY_Q_
7 L2*L15*L17; 49 L2*L15*L23; 51 L2*L17*L31; 8 L2*L17*C_OHD_Y
304 L2*L17*DROP_OCQ_Y; 111 L2*L18*L21; 4 L2*L18*L23; 50 L2*L23*L31
4 L3*L18*L27; 2 L3*L27*L27; 3 L3*L27*L30; 147 L4*L6*L17
3 L4*L6*L27; 104 L4*L6*TX_Q_; 33 L4*L10*L30; 13 L4*L12*L17
34 L4*L15*L17; 4 L4*L17*L27; 57 L4*L17*L31; 62 L4*L17*-OHD
349 L4*L17*DROP_OHQ_Z; 3 L4*L17*DROP_OCQ_Y; 3 L4*L23*L24; 18 L6*L17*L22
111 L6*L17*L27; 147 L6*L18*L21; 89 L6*L27*L27; 1 L6*L27*DROP_OHQ_Z
117 L6*L27*DROP_OCQ_Y; 34 L6*L27*TX_Q_; 51 L8*L30*RX_P; 26 L8*L30*TY_Q_
32 L10*L20*L30; 10 L10*L23*L30; 11 L11*L30*TY_Q_; 4 L13*L17*L23
34 L15*L17*L23; 39 L15*L18*L21; 16 L15*L21*L30; 4 L15*L21*RX_P
5 L15*RX_P*TY_Q_; 21 L17*L21*L27; 43 L17*L23*L24; 57 L17*L23*L31
57 L18*L21*L31; 1 L21*L23*LY_R; 22 L21*RX_P*LY_R; 1 L22*L23*L24
34 L23*L24*L29; 12 L23*L24*L30; 3 L23*L26*L30; 44 L23*L29*LY_R
22 L23*L30*LY_R; 22 L23*LY_R*LY_R; 6 L27*L27*L27; 22 L27*L27*DROP_OCQ_Y
19 L27*L30*DROP_OCQ_Y; 3 L29*L29*LY_R; 19 L29*LY_R*LY_R; 17 L30*LY_R*LY_R
6 LY_R*LY_R*LY_R; 10 -DPQ*L1; 304 -DPQ*L3; 147 -DPQ*L6
39 -DPQ*L15; 57 -DPQ*L31; 10 -DPQ*C_OHD_Y; 209 -FQR*L1
3 -FQR*L4; 26 -FQR*L7; 43 -FQR*L17; 8 -FQR*L29
209 -FQR*C_OHD_Y; 1 -FQR*DROP_OCQ_Y; 19 -HCY*L1; 5 -HCY*L3
9 -HCY*L21; 51 -HCY*RX_P; 82 -HCY*TY_Q_; 132 +OCP*L3
1 +OCP*L27; 47 +OCP*-OHD; 66 +OCP*DROP_OHQ_Z; 1 +OCP*DROP_OCQ_Y
106 -CDP*L0; 775 -CDP*L2; 104 -CDP*L20; 3 -CDP*L22
4 -CDP*L27; 246 -CDP*DROP_OHQ_Z; 104 -DFQ*L6; 54 -DFQ*L14
252 -OHR*L1; 5 -OHR*L3; 1 -OHR*L7; 30 -OHR*L17
90 -OHR*L23; 10 -OHR*L27; 9 -OHR*-OHD; 68 +HFR*L17
160 +HFR*L22; 70 +HFR*L27; 3 +HFR*L29; 59 +HFR*DROP_OCQ_Y
1 +HFR*TX_Q_; 90 +OYQ*L0; 71 +OYQ*L2; 57 +OYQ*L4
61 +OYQ*L6; 23 +OYQ*L16; 146 +OYQ*L27; 92 +OYQ*RX_P
2 -OZQ*L0; 14 -OZQ*L2; 11 -OZQ*L17; 45 +ODY*L1
57 +ODY*C_OHD_Y; 57 +ODY*DROP_OHQ_Z; 57 +ODY*DROP_OCQ_Y; 19 -OFZ*L21
42 +HDZ*L1; 13 +HDZ*L17; 15 +HDZ*L23; 31 +HDZ*+OCF
58 +HDZ*C_OHD_Y; 1 +HDZ*DROP_OHQ_Z; 42 +HZQ*L1; 15 +HZQ*L5
1 +HZQ*L6; 59 +HZQ*-OHD; 13 +HZQ*+OCF; 1 +HZQ*DROP_OCQ_Y
1 +CFZ*L5; 19 +CFZ*L21; 7 +CFZ*DROP_OHP_Y; 54 +CFZ*TY_Q_
7 +FZQ*L17; 1 +FZQ*L23; 93 C_ODF_YZ*L21; 3 C_HDQ_Z*L27
27 Q_OYQF_Z*L0; 115 Q_OYQF_Z*L17; 61 Q_OYQF_Z*L29; 49 Q_OYQF_Z*L30
146 Q_OYQF_Z*LY_R; 14 Q_HYQR_Z*L30
```

Upper bound: `-385707/20000000`.

### Leaf RTLmmpmpppp

Assumptions: `-OYP -OZP +OYQ -OZQ +OZR +YZR +ODY +OFZ`.

```c1top-geometry
P OHDFZ +ODZ
P OHFYQ -OFY
P OHFYR +OYR
P OHYZQ +OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FOHCZ -FCZ
P FOHYZ -FYZ
P FOHZP +FZP
P FOHZQ +FZQ
P FOHZR -FZR
P FODPQ +FPQ
P YOHDZ +YDZ
P YOHZP -YZP
P YOHPQ +YPQ
P YOHPR +YPR
P YOFZQ -YZQ
P YOFQR +YQR
P ZOCDQ +ZCQ
P ZODPQ +ZPQ
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OF ZR 3 lower 135501/250000
O fc - 1 lower 135501/250000
O hc - 0 lower 135501/250000
S Q - 2 upper 91249/114499
X Q - 10 lower 27086157/39250000
Y Q - 11 lower 16460907/28624750
```

```c1top-box
h 271/500 219/250
c 271/500 219/250
d 93/250 797/1000
f 271/500 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 69/100 1
m 23/40 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
57 L30*L30; 205 L0*L4*L17; 41 L0*L4*L29; 14 L0*L10*L17
35 L0*L10*L30; 14 L0*L12*L27; 73 L0*L17*L23; 172 L0*L20*L29
33 L0*L29*L29; 3 L1*L1*L15; 14 L1*L1*L31; 3 L1*L6*L6
6 L1*L9*L15; 3 L1*L10*L24; 44 L1*L12*L24; 7 L1*L12*L30
10 L1*L15*L24; 397 L1*L21*L24; 46 L1*L21*L31; 131 L1*L24*L24
123 L1*L24*L29; 4 L1*L27*L29; 14 L1*L31*RX_P; 19 L1*L31*TY_Q_
11 L2*L2*L17; 470 L2*L4*L17; 358 L2*L4*L29; 2 L2*L6*L15
14 L2*L8*L17; 3 L2*L10*L27; 6 L2*L12*L27; 220 L2*L21*L27
31 L3*L3*L18; 87 L3*L18*L23; 41 L3*L18*L27; 173 L3*L18*L30
8 L3*L24*L29; 8 L3*L30*RX_P; 14 L3*L31*RX_P; 168 L4*L4*L17
158 L4*L4*TX_Q_; 431 L4*L6*L17; 153 L4*L6*L27; 391 L4*L6*L29
240 L4*L6*TY_Q_; 11 L4*L8*L17; 48 L4*L9*L30; 42 L4*L10*L17
19 L4*L10*L30; 249 L4*L17*L17; 75 L4*L17*L18; 369 L4*L17*L20
466 L4*L17*L23; 6 L4*L17*L27; 79 L4*L18*L21; 140 L4*L23*L24
70 L4*L23*L29; 162 L4*L23*TX_Q_; 1 L4*L24*L31; 72 L4*L26*L29
66 L4*L28*L29; 66 L5*L18*RX_P; 116 L5*RX_P*RX_P; 7 L6*L6*L15
244 L6*L6*L21; 42 L6*L6*RY_P; 253 L6*L6*TY_Q_; 8 L6*L6*LX_R
17 L6*L9*L27; 19 L6*L10*LX_R; 7 L6*L12*L27; 7 L6*L14*L27
134 L6*L17*L23; 133 L6*L18*RX_P; 13 L6*L18*TY_Q_; 257 L6*L21*L21
13 L6*L21*L22; 268 L6*L21*L27; 120 L6*L24*L27; 1 L6*L27*L27
304 L6*L27*L29; 208 L6*L27*-OHD; 79 L6*L27*+OCF; 278 L7*L23*L24
120 L7*L23*L30; 8 L7*L24*L29; 1 L8*L18*L30; 40 L8*L23*L24
1 L8*L27*L29; 14 L8*L30*L30; 32 L8*TX_Q_*LY_R; 6 L9*L21*LY_R
37 L9*L23*L30; 3 L9*L24*L27; 135 L10*L17*L21; 1 L10*L17*L23
190 L10*L20*L30; 19 L10*L23*L30; 3 L10*L24*L29; 2 L10*L24*TX_Q_
7 L10*L27*L29; 7 L10*L29*L30; 3 L11*L24*L24; 22 L11*L30*L30
25 L12*L24*L27; 4 L14*L23*L24; 57 L14*L24*L29; 103 L14*L24*L30
2 L14*L29*L30; 3 L14*L30*L30; 4 L15*L21*LY_R; 3 L16*L27*L27
141 L17*L18*L23; 257 L17*L20*L23; 162 L17*L23*L23; 4 L17*L23*L30
133 L17*L29*RY_P; 3 L17*LY_R*LY_R; 141 L18*L18*L21; 257 L18*L20*L21
78 L18*L20*LY_R; 162 L18*L21*L23; 42 L18*L29*L29; 257 L20*L20*L29
150 L20*L20*L30; 27 L20*L26*L29; 244 L20*L29*L29; 357 L20*L29*L30
137 L20*L30*L30; 107 L20*L30*TX_Q_; 214 L21*L21*L27; 11 L21*L24*L27
86 L21*L27*L28; 15 L21*L27*TY_Q_; 606 L23*L24*L24; 661 L23*L24*L29
343 L23*L24*L30; 43 L23*L24*TX_Q_; 6 L23*L24*LY_R; 401 L23*L29*L29
401 L23*L29*L30; 8 L23*L29*L31; 15 L23*L29*TX_Q_; 78 L23*L29*LY_R
15 L23*L30*TX_Q_; 15 L23*TX_Q_*LY_R; 8 L24*L30*L30; 595 L24*TX_Q_*LY_R
123 L26*L30*TX_Q_; 5 L27*L28*RX_P; 78 L27*RX_P*TY_Q_; 8 L29*L29*L29
25 L29*L30*TX_Q_; 338 L29*TX_Q_*LY_R; 3 L30*L30*DROP_OHP_Y; 143 L30*TX_Q_*LY_R
135 L31*RX_P*TY_Q_; 257 TX_Q_*TX_Q_*LY_R; 6 TX_Q_*LY_R*LY_R; 233 -DPQ*L3
234 -DPQ*L4; 151 -DPQ*L11; 141 -DPQ*L18; 257 -DPQ*L20
162 -DPQ*L23; 78 -DPQ*L27; 78 -DPQ*C_OHD_Y; 229 -DPQ*C_OCF_Y
140 -FQR*L4; 267 -FQR*L7; 38 -FQR*L8; 606 -FQR*L24
66 -FQR*L29; 340 -FQR*-OHD; 252 -FQR*+OCF; 43 -FQR*TX_Q_
6 -FQR*DROP_OCR_Y; 41 -HCY*L3; 32 -HCY*L6; 3 -HCY*L14
8 -HCY*L17; 1 -HCY*L18; 84 -HCY*L21; 9 -HCY*L27
22 -HCY*DROP_OHP_Y; 111 -HCY*DROP_OCQ_Y; 212 -HCY*TY_Q_; 50 +HCZ*L24
1 -HFZ*L4; 1 -HFZ*L6; 12 -HFZ*L27; 16 -HFZ*LX_R
488 +OCP*L3; 52 +OCP*L6; 18 +OCP*L8; 58 +OCP*L11
242 +OCP*L21; 29 +OCP*L27; 45 +OCP*C_OHD_Y; 59 -CDP*L5
164 -CDP*L6; 17 -CDP*L9; 58 -CDP*L10; 133 -CDP*L17
246 -CDP*L20; 70 -CDP*L23; 12 -CDP*L27; 7 -CDP*L28
121 -CDP*-OHD; 242 -CDP*+OCF; 106 -DFQ*L0; 131 -DFQ*L2
332 -DFQ*L4; 602 -DFQ*L6; 18 -DFQ*L8; 8 -DFQ*L11
20 -DFQ*L16; 13 -DFQ*L18; 41 -DFQ*L21; 84 -DFQ*L26
114 -DFQ*DROP_OHP_Y; 138 -OHR*L1; 80 -OHR*L14; 46 -OHR*L29
6 -OHR*TX_Q_; 1 -OHR*LY_R; 58 +HFR*L7; 7 +HFR*L11
192 +HFR*L15; 108 +HFR*L24; 1 +HFR*L27; 273 +HFR*L29
137 +HFR*L30; 191 +HFR*TX_Q_; 3 -CYZ*L24; 1 -CYZ*L30
17 -CYP*L23; 72 +OYQ; 106 +OYQ*L3; 225 +OYQ*L4
64 +OYQ*L6; 2 +OYQ*L24; 267 +OYQ*-OHD; 135 +OYQ*DROP_OHP_Y
17 +OYQ*RY_P; 9 +YZR*L0; 1 +YZR*L4; 24 +YZR*L6
3 +YZR*L24; 1 +YZR*L30; 16 +ODY*L4; 62 +ODY*L6
1 +ODY*L14; 231 +ODY*L20; 138 +ODY*L27; 143 +ODY*C_OHD_Y
28 +ODY*C_OCF_Y; 107 +ODY*DROP_OHP_Y; 242 +ODY*DROP_OCQ_Y; 137 +ODY*DROP_OCR_Y
2 +ODY*LX_R; 34 +OFZ*L1; 1 +OFZ*L4; 48 +OFZ*L24
30 +OFZ*DROP_OCR_Y; 153 +OFZ*LY_R; 7 +HZR*L1; 298 +HZR*L3
1 +HZR*L5; 17 +HZR*L7; 4 +HZR*L23; 23 +HZR*L24
306 +HZR*C_OCF_Y; 24 -FYZ*L6; 4 +FZQ*LY_R; 1 Q_HYFR_Z*L4
```

Upper bound: `-4762473/40000000`.

### Leaf RTLmmppmm

Assumptions: `-OYP -OZP +OYQ +OZQ -YZP -YZQ`.

```c1top-geometry
P OHFYQ -OFY
P OHFYR +OYR
P OHFZQ -OFZ
P OHFZR +OZR
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFQR +DQR
P DCFZP +DZP
P DCFZQ -DZQ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZQ -YOZ
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P YHDZQ +YDZ
P ZOHFQ -ZHQ
P ZOCYQ +ZCQ
P ZOCPQ +ZPQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OCZ Y 7 lower 93/292
T OCQ YZ 1 lower 347/500
T OCQ YZ 11 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
O hc - 0 lower 347/500
```

```c1top-box
h 347/500 219/250
c 347/500 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 99/125 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
6 L17*L30; 3 L18*L30; 25 L0*L0*L17; 1 L0*L2*L17
45 L0*L2*L29; 12 L0*L2*L30; 14 L0*L3*L23; 179 L0*L4*TX_Q_
46 L0*L17*L23; 7 L0*L23*L27; 11 L0*L23*TX_Q_; 16 L0*L29*L29
49 L0*L29*TX_Q_; 1 L1*L3*L31; 53 L1*L7*L24; 5 L1*L21*L27
127 L1*L24*TX_Q_; 27 L1*L24*DROP_OCR_Y; 6 L1*L25*L30; 1 L1*L31*RX_P
5 L1*RX_P*TY_Q_; 10 L2*L21*L28; 119 L2*L23*L27; 19 L2*L27*L28
21 L2*L30*DROP_OCQ_YZ; 48 L2*L30*DROP_OCR_Y; 37 L2*TY_Q_*TY_Q_; 26 L3*L3*L18
45 L3*L4*L30; 19 L3*L5*L18; 321 L3*L6*L27; 1 L3*L9*L18
15 L3*L18*L30; 2 L3*L18*DROP_OHP_Y; 5 L3*L18*RX_P; 44 L3*L18*TY_Q_
9 L3*L18*DROP_OCR_Y; 245 L3*L21*L27; 71 L3*L22*L27; 17 L3*L27*L27
51 L4*L4*TX_Q_; 11 L4*L5*L17; 40 L4*L17*L20; 41 L4*L17*L23
29 L4*L17*L27; 5 L4*L17*-OHD; 47 L4*L17*DROP_OCR_Y; 51 L4*L23*TX_Q_
19 L4*L30*DROP_OHP_Y; 23 L4*L30*RX_P; 49 L4*TX_Q_*LY_R; 4 L5*L5*L21
35 L5*L21*L28; 24 L5*L21*RX_P; 19 L5*L21*TY_Q_; 18 L6*L6*L27
2 L6*L21*L27; 18 L6*L27*L27; 25 L6*L27*L30; 267 L6*L27*DROP_OCQ_YZ
1 L7*L18*LY_R; 102 L7*L23*L30; 24 L7*TX_Q_*LY_R; 1 L8*L10*L17
2 L8*L18*L28; 3 L9*L18*L30; 1 L11*L18*L30; 1 L11*L21*L28
1 L11*L21*RX_P; 6 L17*L17*L23; 61 L17*L22*L22; 10 L17*L22*L27
51 L17*L30*DROP_OCQ_YZ; 24 L18*L21*L23; 31 L18*L21*L28; 62 L18*L21*DROP_OHP_Y
12 L20*L30*-OHD; 7 L20*L30*DROP_OCQ_YZ; 4 L20*L30*TY_Q_; 8 L21*L22*L27
1 L21*L27*L27; 8 L23*L24*TY_Q_; 21 L23*L24*LY_R; 47 L23*L29*L29
7 L23*L30*DROP_OCR_Y; 76 L24*L27*DROP_OCQ_YZ; 50 L26*L30*TX_Q_; 10 L27*RX_P*TY_Q_
25 L28*L28*RX_P; 40 L28*RX_P*TY_Q_; 52 L29*L29*LY_R; 4 L29*L30*LY_R
136 L29*TX_Q_*LY_R; 17 L29*LY_R*LY_R; 390 L30*DROP_OCQ_YZ*LX_R; 107 L30*TX_Q_*LY_R
4 L31*RX_P*TY_Q_; 68 RX_P*RX_P*TY_Q_; 37 RX_P*TY_Q_*TY_Q_; 98 TX_Q_*LY_R*LY_R
107 -DPQ*L3; 27 -DPQ*L5; 1 -DPQ*L11; 24 -DPQ*L23
31 -DPQ*L28; 20 -DPQ*C_OCF_Y; 62 -DPQ*DROP_OHP_Y; 44 -FQR*L1
266 -FQR*L3; 47 -FQR*L7; 95 -FQR*L17; 95 -FQR*DROP_OHP_Y
8 -FQR*TY_Q_; 97 -FQR*DROP_OCR_Y; 1 -HCY*RX_P; 47 +OCP*L3
5 +OCP*TY_Q_; 4 -CDP*L9; 1 -CDP*L11; 6 -CDP*L16
78 -CDP*L20; 9 -CDP*L26; 16 -CDP*L28; 39 -CDP*TY_Q_
4 -HFQ*L30; 130 -DFQ*L0; 24 -DFQ*L4; 8 -DFQ*L23
9 -DFQ*L26; 27 -DFQ*RY_P; 48 -DFQ*DROP_OCR_Y; 44 -OHR*L1
16 -OHR*L7; 22 -OHR*L19; 6 -OHR*+OCF; 16 -OHR*TX_Q_
27 -OHR*DROP_OCR_Y; 36 +HFR*L7; 1 +HFR*L18; 413 +HFR*DROP_OCQ_YZ
111 +HFR*TX_Q_; 1 -CYP*L1; 15 -CYP*L3; 1 -CYP*L8
10 -CYP*L20; 16 -CYP*+OCF; 1 -CYP*DROP_OHP_Y; 8 -CYP*DROP_OCQ_YZ
3 -CYP*TY_Q_; 1 -OYP*L2; 1 -OYP*L17; 5 C_OCQ_YZ*L6
7 C_OCQ_YZ*L8; 7 C_OCQ_YZ*L10; 2 C_OCQ_YZ*L17; 11 C_OCQ_YZ*L19
11 C_OCQ_YZ*L20; 1 C_OCQ_YZ*L23; 207 C_OCQ_YZ*L27; 125 C_OCQ_YZ*LX_R
3 C_OYQ_Z*L3; 11 C_OYQ_Z*L18; 3 C_OYQ_Z*DROP_OHP_Y; 8 C_OYQ_Z*RX_P
7 C_OPQ_YZ*L31; 27 TPY_Q_*L18
```

Upper bound: `-2561825551/1000000000`.

### Leaf RTLmmppmpm

Assumptions: `-OYP -OZP +OYQ +OZQ -YZP +YZQ -ODY`.

```c1top-geometry
P OHDFY -OFY
P OHDYR +OYR
P OHFZQ -OFZ
P OHFZR +OZR
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFQR +DQR
P DCFZP +DZP
P DCFZQ -DZQ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P YHFZQ -YFZ
P YHFZR +YZR
P ZOHFQ -ZHQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OD YP 2 lower 135501/250000
O dh - 0 lower 135501/250000
S Q - 3 upper 91249/114499
X Q - 10 lower 16460907/28624750
Y Q - 11 lower 27086157/39250000
```

```c1top-box
h 271/500 219/250
c 93/250 219/250
d 271/500 213/250
f 93/250 797/1000
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 23/40 1
m 69/100 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
14 L4*L17; 6 L0*L3*L17; 128 L0*L4*L30; 6 L0*L10*L28
51 L0*L11*L30; 10 L0*L17*L23; 9 L0*L23*L27; 263 L0*L24*L28
118 L0*L27*L27; 33 L1*L3*L18; 334 L1*L7*L24; 6 L1*L9*L30
57 L1*L17*L30; 12 L1*L18*L21; 81 L1*L18*L30; 218 L1*L21*L24
8 L1*L23*L30; 128 L1*L24*L27; 129 L1*L25*L30; 31 L1*L27*L30
18 L1*L30*TX_Q_; 46 L3*L4*L17; 37 L3*L4*L27; 4 L3*L9*L30
143 L3*L10*L18; 15 L3*L18*L18; 119 L3*L24*L27; 6 L4*L4*L29
256 L4*L4*TX_Q_; 184 L4*L4*LY_R; 219 L4*L5*L17; 588 L4*L6*L27
99 L4*L6*TY_Q_; 7 L4*L8*L30; 15 L4*L9*L17; 4 L4*L11*L17
1 L4*L17*L17; 22 L4*L17*L18; 28 L4*L17*L20; 78 L4*L17*L23
72 L4*L17*-OHD; 98 L4*L19*L30; 323 L4*L23*TX_Q_; 37 L4*L24*TY_Q_
333 L4*L27*L30; 39 L4*L28*L30; 21 L4*L30*L30; 39 L4*L30*DROP_OHP_Y
219 L5*L18*L21; 26 L5*L18*RX_P; 23 L5*L21*RX_P; 2 L5*L29*L30
6 L5*L30*L31; 192 L6*L6*TY_Q_; 191 L6*L21*L28; 453 L6*L27*L27
166 L6*L27*L29; 2 L7*L18*L21; 84 L7*L23*L23; 258 L7*L23*L24
292 L7*L23*L29; 322 L7*L23*L30; 331 L7*L29*LY_R; 138 L7*L30*LY_R
80 L7*LY_R*LY_R; 4 L8*L9*L28; 4 L8*L10*L28; 253 L8*L18*L28
4 L8*RX_P*RX_P; 16 L9*L10*L30; 4 L9*L17*L17; 7 L9*L17*L30
186 L9*L18*L30; 4 L10*L10*L17; 125 L10*L17*L18; 213 L10*L17*L30
5 L11*L30*DROP_OHP_Y; 2 L16*L28*L28; 48 L17*L18*L23; 249 L17*L23*L23
59 L17*L30*-OHD; 23 L17*L30*DROP_OCQ_Y; 48 L18*L18*L21; 249 L18*L21*L23
23 L18*L21*RX_P; 2 L20*L27*L30; 87 L21*L24*L27; 69 L21*L27*L27
64 L21*L27*TY_Q_; 162 L21*L28*L28; 52 L21*L28*LY_R; 8 L22*L23*L24
9 L22*L27*L27; 87 L23*L24*L24; 20 L23*L24*L29; 57 L23*L24*TY_Q_
41 L23*L24*LY_R; 13 L23*L25*L30; 41 L23*L29*L29; 18 L23*L29*L30
26 L23*L29*LY_R; 26 L23*L30*DROP_OCR_Y; 9 L23*LY_R*LY_R; 37 L24*L28*L28
87 L24*L29*LY_R; 25 L26*L29*L29; 39 L27*L27*L27; 184 L27*L28*L28
1 L27*L30*+OCF; 206 L27*L30*LX_R; 75 L28*L28*L28; 6 L28*L28*L29
35 L28*L30*LY_R; 40 L29*L29*LY_R; 26 L29*L30*DROP_OCR_Y; 40 L29*L30*LY_R
6 L30*L31*-OHD; 16 L30*L31*DROP_OHP_Y; 33 L30*DROP_OCQ_Y*LX_R; 2 L30*TX_Q_*DROP_OCR_Y
23 RX_P*RX_P*TY_Q_; 110 TX_Q_*LY_R*LY_R; 39 LY_R*LY_R*LY_R; 123 -DPQ*L1
23 -DPQ*L3; 97 -DPQ*L5; 2 -DPQ*L7; 30 -DPQ*L8
48 -DPQ*L18; 249 -DPQ*L23; 111 -DPQ*-OHD; 23 -DPQ*DROP_OHP_Y
524 -FQR*L1; 94 -FQR*L5; 191 -FQR*L7; 87 -FQR*L24
252 -FQR*-OHD; 64 -FQR*DROP_OCQ_Y; 41 -FQR*DROP_OCR_Y; 516 +OCY*L17
39 -HCY*L4; 9 -HCY*L17; 4 -HCY*L31; 167 -HCY*RY_P
51 +OCP*L8; 13 -CDP*L31; 18 -OHQ*L30; 183 -DFQ*L0
367 -DFQ*L4; 192 -DFQ*L6; 2 -DFQ*L16; 149 -DFQ*L23
486 -DFQ*L26; 429 -OHR*L1; 141 -OHR*L4; 50 -OHR*L7
27 -OHR*L21; 185 -OHR*L23; 31 -OHR*L27; 196 +HFR*L4
156 +HFR*L7; 191 +HFR*L21; 305 +HFR*L22; 304 +HFR*L27
216 +HFR*L29; 131 +HFR*DROP_OCQ_Y; 145 -CYP*L1; 199 -CYP*L5
20 -CYP*L8; 4 -CYP*L10; 15 -CYP*L18; 197 -CYP*-OHD
1 -CYP*DROP_OHP_Y; 182 -OYP*L0; 244 -OYP*L2; 208 -OYP*L4
20 -OYP*L9; 1 -OYP*L17; 110 -OYP*L18; 30 -OYP*L20
4 -ODY*L9; 4 -ODY*L10; 31 -ODY*L17; 263 -ODY*L18
30 -ODY*L20; 28 -ODY*L23; 192 -ODY*-OHD; 28 -ODY*DROP_OCQ_Y
1 Q_OCPD_Y*L17; 2 Q_OCDQ_YZ*L6; 74 Q_OCDQ_YZ*L18; 405 Q_OCDQ_YZ*L27
51 Q_OCDQ_YZ*L28; 50 Q_OPDQ_YZ*L28; 74 Q_OPDQ_YZ*TY_Q_; 30 Q_CDQY_Z*L17
```

Upper bound: `-1443166641/1000000000`.

### Leaf RTLmmppmppm

Assumptions: `-OYP -OZP +OYQ +OZQ -YZP +YZQ +ODY -ODZ`.

```c1top-geometry
P OHDFZ -OFZ
P OHDYZ -OYZ
P OHDZR +OZR
P OHFYQ -OFY
P OHFYR +OYR
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHCZ +DHZ
P DOHYZ +DYZ
P DOCZP +DZP
P DOCZQ -DZQ
P DOCZR -DZR
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHFZ -YFZ
P YOHZR +YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P ZOHFQ -ZHQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OD ZP 2 lower 135501/250000
O dh - 0 lower 135501/250000
S Q - 3 upper 91249/114499
X Q - 10 lower 16460907/28624750
Y Q - 11 lower 27086157/39250000
```

```c1top-box
h 271/500 219/250
c 93/250 219/250
d 271/500 213/250
f 93/250 797/1000
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 23/40 1
m 69/100 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
12 L4*L17; 7 L17*L23; 12 L0*L1*L30; 7 L0*L4*L11
25 L0*L4*L29; 1 L0*L10*L28; 1 L0*L11*L17; 1 L0*L17*-OHD
9 L0*L20*L29; 59 L0*L23*L29; 1 L0*L24*L30; 4 L1*L3*L18
2 L1*L3*L31; 22 L1*L5*L24; 87 L1*L7*L24; 31 L1*L10*L23
5 L1*L18*L21; 10 L1*L18*RX_P; 21 L1*L21*L31; 16 L1*L23*L24
10 L1*L24*L27; 14 L1*L24*LY_R; 1 L1*L31*RX_P; 6 L2*L4*TX_Q_
22 L3*L4*L10; 10 L3*L8*L28; 2 L3*L10*L17; 18 L3*L10*L23
4 L3*L18*L23; 6 L4*L4*TX_Q_; 21 L4*L6*L27; 93 L4*L6*TX_Q_
2 L4*L9*L17; 16 L4*L17*L20; 3 L4*L17*L23; 6 L4*L17*-OHD
7 L4*L17*+OCF; 9 L4*L17*DROP_OHP_Y; 29 L4*L26*TX_Q_; 33 L4*L27*L30
6 L4*L30*DROP_OHP_Y; 2 L5*L17*L29; 30 L6*L6*L27; 15 L6*L18*L21
74 L6*L21*L27; 18 L6*L22*L27; 1 L6*L27*L27; 9 L6*L27*LX_R
34 L7*L7*LY_R; 2 L7*L17*DROP_OCQ_Y; 24 L7*L23*L29; 5 L7*L23*LY_R
30 L7*L29*LY_R; 3 L7*TX_Q_*LY_R; 2 L7*LY_R*LY_R; 1 L9*L17*L23
2 L9*L18*L30; 12 L9*L23*L30; 1 L10*L17*L21; 3 L10*L20*L30
19 L11*L21*L30; 1 L11*L28*L30; 24 L11*L30*DROP_OCQ_Y; 7 L11*L30*TY_Q_
3 L17*L18*L30; 3 L17*L18*-OHD; 6 L17*L20*L23; 10 L17*L21*DROP_OCQ_Y
7 L17*L23*+OCF; 13 L17*L29*TY_Q_; 1 L17*L30*C_OHD_Y; 5 L17*L30*TY_Q_
16 L18*L20*L21; 12 L18*L21*L31; 16 L18*L30*DROP_OHP_Y; 11 L20*L28*L29
8 L20*L30*-OHD; 15 L21*L21*L27; 15 L21*L23*L24; 39 L21*L27*TY_Q_
3 L22*L27*L27; 6 L22*L27*L30; 10 L23*L24*L29; 20 L23*L24*LY_R
20 L23*L25*L30; 6 L23*L26*L29; 39 L23*L26*TX_Q_; 3 L23*L29*L29
3 L23*LY_R*LY_R; 9 L24*L29*LY_R; 47 L26*L29*TX_Q_; 11 L27*L30*C_OHD_Y
9 L27*L30*LX_R; 11 L29*L30*LY_R; 19 L29*TX_Q_*LY_R; 3 L30*L30*DROP_OCQ_Y
11 L30*L30*DROP_OCR_Y; 2 L30*DROP_OCQ_Y*LX_R; 11 L30*TX_Q_*DROP_OCR_Y; 28 L30*TX_Q_*LY_R
12 L31*RX_P*TY_Q_; 20 TX_Q_*LY_R*LY_R; 5 -DPQ*L1; 15 -DPQ*L6
16 -DPQ*L20; 12 -DPQ*L31; 118 -FQR*L1; 8 -FQR*L7
15 -FQR*L21; 28 -FQR*+OCF; 117 -FQR*C_OHD_Y; 20 -FQR*DROP_OCR_Y
1 -HCY*L1; 10 -HCY*L3; 21 -HCY*L21; 12 -HCY*L22
1 -HCY*RX_P; 9 -HCY*DROP_OCQ_Y; 43 -HCY*TY_Q_; 14 +OCP*L1
11 +OCP*L3; 4 +OCP*DROP_OHP_Y; 1 -HFQ*L24; 6 -DFQ*L4
93 -DFQ*L6; 15 -DFQ*L20; 69 -DFQ*L26; 81 -OHR*L1
3 -OHR*L5; 12 -OHR*L7; 110 -OHR*L23; 5 -OHR*L27
74 +HFR*L7; 10 +HFR*L29; 17 +HFR*-OHD; 38 +HFR*DROP_OCQ_Y
1 +HFR*TX_Q_; 19 +HFR*TY_Q_; 1 +HFR*DROP_OCR_Y; 2 +HYP*L30
44 +OYQ; 52 +OYQ*L4; 52 +OYQ*-OHD; 1 +OYQ*DROP_OHP_Y
44 +ODY*L20; 11 +ODY*+OCF; 49 +ODY*C_OHD_Y; 57 +ODY*DROP_OCQ_Y
7 C_CDY_Z*L17; 5 TPX_Q_*L30; 11 Q_OCDQ_YZ*L6; 33 Q_OCDQ_YZ*L27
6 Q_CPDY_Z; 3 Q_CPDY_Z*L23; 11 Q_CPDY_Z*+OCF; 9 Q_CPDY_Z*DROP_OHP_Y
```

Upper bound: `-16638491/50000000`.

### Leaf RTLmmppmppp

Assumptions: `-OYP -OZP +OYQ +OZQ -YZP +YZQ +ODY +ODZ`.

```c1top-geometry
P OHFYQ -OFY
P OHFYR +OYR
P OHFZQ -OFZ
P OHFZR +OZR
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFZP +DZP
P DOFZQ -DZQ
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHPQ +YPQ
P YOHPR +YPR
P YOFQR +YQR
P YHFZQ -YFZ
P YHFZR +YZR
P ZOHFQ -ZHQ
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 66/125 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 53/500 907/1000
p 133/200 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
1 L0*L20*L27; 5 L0*L22*LX_R; 2 L0*L26*L27; 9 L0*TX_Q_*LX_R
5 L6*L27*L27; 3 L6*L27*C_OHD_Y; 1 L7*L21*L23; 1 L7*L23*TX_Q_
9 L7*L23*DROP_OCR_Y; 7 L23*L24*-OHD; 13 L23*L24*DROP_OCR_Y; 4 L23*L25*L27
5 L23*L27*LX_R; 2 L26*L26*L29; 2 L26*L26*L30; 22 L26*L26*TX_Q_
4 L26*L29*TX_Q_; 3 L26*L29*LY_R; 4 L26*L30*TX_Q_; 3 L26*L30*LY_R
1 L27*L27*L27; 1 L29*TX_Q_*LY_R; 1 L30*TX_Q_*LY_R; 1 LY_R*LY_R*LY_R
1 -FQR*L1; 5 -FQR*L6; 4 -FQR*-OHD; 22 -FQR*DROP_OCR_Y
5 -HFQ*L24; 17 -OHR*L1; 4 -OHR*TX_Q_; 1 +HFR*-OHD
8 +HFR*DROP_OCQ_Y; 10 +HFR*TX_Q_; 4 C_ODQ_YZ; 8 C_ODQ_YZ*L6
2 C_ODQ_YZ*-OHD; 4 C_ODQ_YZ*DROP_OCR_Y
```

Upper bound: `-10885069/100000000`.

### Leaf RTLmmppp

Assumptions: `-OYP -OZP +OYQ +OZQ +YZP`.

```c1top-geometry
P OHFYQ -OFY
P OHFYR +OYR
P OHFZQ -OFZ
P OHFZR +OZR
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFQR +DQR
P DCFZP +DZP
P DCFZQ -DZQ
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YOHZP +YOZ
P YOHZQ +YZQ
P YOHZR +YZR
P YOHPQ +YPQ
P YOHPR +YPR
P YOCFZ -YFZ
P YOFQR +YQR
P YHDZP -YDZ
P ZOHFQ -ZHQ
P ZOHYP -ZHP
P ZOHPQ +ZPQ
P ZOHPR +ZPR
P ZOFYP -ZFP
P ZOFQR +ZQR
P ZHCDY -ZHD
P ZHDFR +ZDR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
T OHP YZ 0 lower 347/500
T OHP YZ 8 lower 347/438
S Q - 2 upper 535/628
S Q - 3 upper 535/628
```

```c1top-box
h 347/500 219/250
c 93/250 219/250
d 93/250 213/250
f 93/250 213/250
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 99/125 1
q 53/500 88/125
l 13/25 1
m 13/25 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
4 L0*L0*L17; 4 L0*L1*L30; 3 L0*L3*L10; 1 L0*L3*TY_Q_
7 L0*L6*TY_Q_; 14 L0*L7*TX_Q_; 1 L0*L8*L9; 1 L0*L8*L23
2 L0*L10*L30; 1 L0*L11*L23; 1 L0*L17*L30; 1 L0*L20*L29
4 L0*L29*TX_Q_; 1 L0*L30*RX_P; 3 L0*L30*DROP_OCQ_Y; 17 L0*TX_Q_*LY_R
2 L1*L1*L31; 4 L1*L2*L27; 7 L1*L3*L18; 1 L1*L3*L31
2 L1*L6*L18; 9 L1*L6*L27; 12 L1*L17*L22; 1 L1*L21*L31
17 L1*L24*DROP_OCQ_Y; 3 L1*L29*TY_Q_; 4 L1*L29*LY_R; 4 L1*L31*RX_P
2 L3*L10*L18; 1 L3*L11*L30; 5 L3*L11*TY_Q_; 10 L3*L18*L20
10 L4*L6*TX_Q_; 1 L4*L11*L17; 3 L4*L17*-OHD; 1 L4*L26*TX_Q_
4 L4*TX_Q_*DROP_OCR_Y; 2 L6*L17*DROP_OCQ_Y; 17 L6*L27*-OHD; 10 L7*L23*L29
7 L7*L23*L30; 1 L7*L23*LY_R; 5 L8*L10*L17; 5 L8*L11*L30
6 L8*L17*L22; 6 L8*L18*L23; 1 L8*L28*L30; 15 L9*L18*L30
2 L10*L17*DROP_OCQ_Y; 3 L10*L17*TY_Q_; 1 L10*L23*RX_P; 12 L17*-OHD*DROP_OCQ_Y
2 L18*L20*L30; 25 L23*L24*DROP_OCR_Y; 2 L23*L26*L29; 5 L23*L29*DROP_OCR_Y
6 L23*L30*DROP_OCR_Y; 3 L23*LY_R*LY_R; 13 L26*TX_Q_*LY_R; 3 L27*L27*DROP_OCQ_Y
1 L30*L31*DROP_OCQ_Y; 12 TX_Q_*DROP_OCR_Y*LY_R; 4 -FQR*L1; 4 -FQR*L27
28 -FQR*DROP_OCR_Y; 16 +OCY*L17; 6 -HCY*L1; 1 -HCY*L9
3 -HCY*L10; 10 -HCY*L19; 1 -HCY*L21; 3 -HCY*DROP_OHP_YZ
1 -HCY*RX_P; 7 -HCY*DROP_OCQ_Y; 1 -HCY*TY_Q_; 3 -CDP*L0
5 -CDP*L11; 1 +OCQ*L17; 15 -HFQ*L7; 2 -HFQ*L18
5 -HFQ*L29; 1 -HFQ*L30; 11 -DFQ*L0; 10 -DFQ*L6
4 -DFQ*DROP_OCR_Y; 1 -OFQ*L30; 13 +HFR*L22; 9 +HFR*DROP_OCQ_Y
1 +HYQ*L30; 14 +OYQ*L18; 11 +OYQ*L27; 8 +OYQ*-OHD
18 +OYQ*DROP_OHP_YZ; 11 +OYQ*DROP_OCR_Y; 3 C_OYP_Z*L10; 6 C_OYP_Z*L20
16 C_OYP_Z*+OCF; 7 C_OYP_Z*DROP_OCQ_Y; 1 C_OPQ_YZ*L2; 1 C_OPQ_YZ*L6
11 C_OPQ_YZ*L9; 1 C_OPQ_YZ*L31; 1 C_HCD_Z*L17; 17 C_CYP_Z*L1
5 C_CYP_Z*L8; 3 C_CYP_Z*L11; 1 C_CYP_Z*L20; 13 C_CYP_Z*-OHD
4 C_CYP_Z*+OCF; 11 Q_OCPY_Z*L20; 1 Q_HYCP_Z*L3; 4 Q_HYCP_Z*L30
1 Q_CPDY_Z*+OCF; 14 LEFTSUP
```

Upper bound: `-358767401/1000000000`.

### Leaf RTLmp

Assumptions: `-OYP +OZP`.

```c1top-geometry
P OHDZP -ODZ
P OHDZQ +OZQ
P OHDZR +OZR
P OHFZP -OFZ
P OHYZP -OYZ
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOHCZ +DHZ
P DOCZP +DZP
P DOCZQ -DZQ
P DOCZR -DZR
P DOFQR +DQR
P FODZQ +FZQ
P FODZR -FZR
P FODPQ +FPQ
P YHDPQ +YPQ
P YHDPR +YPR
P YHFQR +YQR
P ZOHCP -ZHP
P ZOHDY +ZDY
P ZOHFY +ZFY
P ZOHFQ -ZHQ
P ZOHYP -ZYP
P ZOHYQ -ZYQ
P ZOHYR -ZYR
P ZODFP -ZFP
P ZODPQ +ZPQ
P ZODPR +ZPR
P ZOFQR +ZQR
P POFQR +PQR
```

```c1top-bounds
T OHZ Y 6 lower 93/292
T OCP Z 1 lower 14601/36838
T OCP Z 9 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OD ZP 2 lower 135501/250000
O dh - 0 lower 135501/250000
S Q - 3 upper 91249/114499
X Q - 10 lower 16460907/28624750
Y Q - 11 lower 27086157/39250000
```

```c1top-box
h 271/500 219/250
c 99/250 219/250
d 271/500 213/250
f 93/250 797/1000
u 53/500 83/125
v 53/500 83/125
z 159/500 907/1000
w 53/500 907/1000
p 133/200 1
q 159/500 88/125
l 23/40 1
m 69/100 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
5 L27*L28; 17 L0*L6*L27; 3 L0*L6*L28; 9 L0*L17*RY_P
36 L0*L20*RY_P; 9 L1*L3*L18; 5 L1*L5*RX_P; 30 L1*L7*L24
2 L1*L7*L28; 14 L1*L18*L21; 1 L1*L21*L28; 15 L1*L23*L24
3 L2*L2*RY_P; 30 L2*L20*RY_P; 6 L2*L28*RY_P; 9 L3*L13*L18
1 L3*L17*L18; 5 L3*L17*L23; 28 L3*L18*L30; 37 L3*L18*TY_Q_
7 L4*L6*L17; 8 L4*L6*L27; 14 L4*L6*TY_Q_; 2 L4*L13*L17
9 L4*L17*L19; 70 L4*L17*L20; 7 L4*L17*RY_P; 12 L4*L20*RY_P
12 L4*L23*TX_Q_; 5 L5*L13*L30; 14 L5*L18*L21; 1 L5*L18*RX_P
3 L5*L21*L21; 1 L5*L21*TY_Q_; 8 L5*L21*LY_R; 1 L5*L28*L29
40 L5*RX_P*TY_Q_; 10 L6*L6*L27; 49 L6*L6*TY_Q_; 4 L6*L17*L23
65 L6*L21*L27; 35 L6*L21*TY_Q_; 10 L6*RY_P*TY_Q_; 28 L7*L7*LY_R
7 L7*L17*L28; 17 L7*L23*L29; 20 L7*L23*L30; 13 L7*L23*LY_R
1 L13*L17*L23; 5 L13*L18*L30; 7 L13*L28*DROP_OHP_Y; 1 L14*L17*L21
2 L14*L28*L29; 4 L15*L17*L30; 8 L16*L21*TY_Q_; 48 L17*L20*L23
10 L17*L23*L30; 2 L17*L23*-OHD; 15 L17*L23*RY_P; 16 L17*L28*L29
13 L17*L30*L30; 9 L17*L30*DROP_OCP_Z; 15 L18*RX_P*TY_Q_; 2 L19*L28*L29
40 L20*L20*RY_P; 5 L20*L29*RY_P; 41 L21*L21*L27; 1 L21*L21*TY_Q_
33 L21*L23*L24; 2 L21*L25*L28; 14 L21*L28*LX_R; 3 L23*L24*LY_R
16 L23*L30*DROP_OHP_Y; 1 L23*TX_Q_*TX_Q_; 8 L26*TX_Q_*TX_Q_; 2 L27*L28*TX_Q_
23 L28*L29*DROP_OHP_Y; 27 L28*DROP_OHP_Y*TY_Q_; 16 L29*TX_Q_*LY_R; 13 L30*L30*DROP_OHP_Y
16 L30*TX_Q_*LY_R; 3 TX_Q_*LY_R*LY_R; 16 TOPCOUNT*L24; 1 +OPQ*L28
42 -DPQ*L1; 12 -DPQ*L5; 1 -DPQ*L13; 35 -DPQ*L20
65 -DPQ*-OHD; 1 -DPQ*+OCF; 5 -DPQ*TX_Q_; 41 -FQR*L1
2 -FQR*L6; 33 -FQR*L21; 3 -FQR*L26; 49 -FQR*-OHD
1 -OHY*L17; 1 -OHY*DROP_OHP_Y; 8 +HCZ*L11; 7 +HCZ*DROP_OHP_Y
1 +HCZ*DROP_OCP_Z; 1 +CDZ*L19; 5 +CDZ*RY_P; 3 -CDP*L6
8 -CDP*L13; 6 -CDP*L15; 31 -CDP*L20; 3 -CDP*+OCF
40 -CDP*TY_Q_; 18 -HFQ*L24; 15 -DFQ*L4; 33 -DFQ*L6
10 -DFQ*L26; 7 -DFQ*+OCF; 9 -DFQ*DROP_OHP_Y; 10 -DFQ*RY_P
16 -DFQ*LX_R; 17 -OHR*L1; 4 -OHR*L7; 26 -OHR*L23
7 -OHR*L25; 42 +HFR*L7; 6 +HFR*L17; 17 +HFR*-OHD
6 +HFR*DROP_OHP_Y; 2 +HFR*TX_Q_; 1 -CYZ; 8 -CYZ*-OHD
10 +OZP*L1; 8 +OZP*L11; 17 +OZP*-OHD; 1 +OZP*DROP_OCP_Z
21 +OZP*RX_P; 10 -CZP; 1 -CZP*L5; 8 -CZP*L11
10 -CZP*-OHD; 21 -CZP*DROP_OHP_Y; 1 -CZP*DROP_OCP_Z; 2 +DZP*L2
1 +DZP*L20; 5 +DZP*L28; 2 +FZP*L28; 12 C_OCP_Z*L1
8 C_OCP_Z*L10; 12 C_OCP_Z*L12; 31 C_OCP_Z*L17; 28 C_OCP_Z*L30
1 C_OCP_Z*RY_P; 3 C_OCP_Z*TX_Q_; 12 C_OCP_Z*TY_Q_; 11 TPX_Q_*L23
4 TPX_Q_*L30; 3 Q_OCPD_Z*L28
```

Upper bound: `-86301653/200000000`.

### Leaf RTLp

Assumptions: `+OYP`.

```c1top-geometry
P OHDYP -ODY
P OHDYQ +OYQ
P OHDYR +OYR
P OHFYP -OFY
P HODPQ +HPQ
P HOFZR +HZR
P HOFQR +HQR
P CODZP -CZP
P CODPQ +CPQ
P COFQR +CQR
P DOFQR +DQR
P DCFZP +DZP
P DCFZQ -DZQ
P FODPQ +FPQ
P FHDZQ +FZQ
P FHDZR -FZR
P YODPQ +YPQ
P YODPR +YPR
P YOFQR +YQR
P POFQR +PQR
C OCP Y Z -POZ 12101283/19625000
P OHYZP +OYZ
P ZOCYP +ZYP
```

```c1top-bounds
T OCZ Y 7 lower 93/292
T OCP Y 1 lower 14601/36838
T OCP Y 9 lower 93/292
S Q - 2 upper 535/628
S Q - 3 upper 535/628
E5 OD YP 2 lower 135501/250000
O dh - 0 lower 135501/250000
S Q - 3 upper 91249/114499
X Q - 10 lower 16460907/28624750
Y Q - 11 lower 27086157/39250000
```

```c1top-box
h 271/500 219/250
c 99/250 219/250
d 271/500 213/250
f 93/250 797/1000
u 53/500 83/125
v 53/500 83/125
z 53/500 907/1000
w 159/500 907/1000
p 133/200 1
q 159/500 88/125
l 23/40 1
m 69/100 1
r 53/500 88/125
t 133/200 1
```

```c1top-sum
9 L4*L17; 6 L17*L23; 6 L0*L2*L28; 1 L0*L6*L27
1 L0*L6*L28; 16 L0*L6*TY_Q_; 1 L0*L10*L23; 1 L0*L10*RX_P
44 L0*L20*RY_P; 1 L0*L28*RY_P; 6 L1*L1*L9; 9 L1*L3*L18
6 L1*L5*L21; 9 L1*L7*L24; 24 L1*L18*L21; 34 L1*L18*L30
9 L1*L24*DROP_OCQ_Y; 1 L1*L24*LY_R; 3 L2*L28*RY_P; 1 L3*L5*L18
21 L3*L18*TY_Q_; 17 L4*L5*L17; 1 L4*L6*L27; 10 L4*L6*TY_Q_
2 L4*L17*L19; 9 L4*L17*L20; 14 L4*L17*DROP_OCQ_Y; 1 L4*L17*DROP_OCR_Y
10 L4*L20*RY_P; 11 L4*L23*TX_Q_; 24 L5*L5*L21; 1 L5*L7*L28
49 L5*L18*L21; 1 L5*L18*L30; 2 L5*L18*RX_P; 9 L5*L21*TY_Q_
1 L5*L28*L30; 3 L5*L28*RX_P; 25 L5*RX_P*TY_Q_; 21 L6*L6*TY_Q_
2 L6*L18*L21; 25 L6*L21*L27; 15 L6*L21*TY_Q_; 5 L6*L22*L27
20 L6*L27*DROP_OCQ_Y; 12 L7*L7*L23; 8 L7*L7*LY_R; 17 L7*L23*L26
8 L7*L23*L28; 6 L7*TX_Q_*LY_R; 1 L7*LY_R*LY_R; 2 L8*L22*L28
1 L9*L18*L22; 2 L9*L23*RY_P; 3 L10*L22*RX_P; 4 L16*L27*TY_Q_
20 L16*L28*TY_Q_; 7 L17*L20*L23; 1 L17*L23*-OHD; 1 L17*L23*DROP_OCR_Y
1 L17*L27*L29; 4 L17*L29*TY_Q_; 1 L17*L29*DROP_OCR_Y; 7 L18*L18*L21
3 L18*L21*L27; 35 L18*L30*-OHD; 7 L18*RX_P*TY_Q_; 7 L20*L20*RY_P
17 L21*L21*L27; 15 L21*L23*L24; 1 L21*L27*TY_Q_; 8 L21*L28*LX_R
7 L23*L24*LY_R; 1 L23*L26*TX_Q_; 16 L23*L27*L30; 16 L23*L30*DROP_OCR_Y
2 L26*TX_Q_*TX_Q_; 4 L27*L28*TX_Q_; 7 L29*TX_Q_*LY_R; 7 L30*TX_Q_*LY_R
7 TX_Q_*LY_R*LY_R; 8 TOPCOUNT*L24; 9 -DPQ*L1; 4 -DPQ*L3
33 -DPQ*L5; 2 -DPQ*L6; 7 -DPQ*L20; 3 -DPQ*L27
32 -DPQ*-OHD; 7 -DPQ*DROP_OCP_Y; 32 -FQR*L1; 2 -FQR*L7
15 -FQR*L21; 21 -FQR*-OHD; 7 -FQR*DROP_OCR_Y; 26 +OCY*L1
19 +OCY*L16; 21 +OCY*-OHD; 6 +OCY*DROP_OCQ_Y; 6 -HCY*L1
7 -HCY*L27; 1 -HCY*DROP_OCP_Y; 2 -HCY*DROP_OCQ_Y; 7 -HCY*DROP_OCR_Y
24 -CDP*L5; 4 -CDP*L20; 19 -CDP*DROP_OCQ_Y; 8 -CDP*TY_Q_
13 -HFQ*L24; 11 -DFQ*L4; 6 -DFQ*L6; 2 -DFQ*L16
15 -DFQ*-OHD; 6 -DFQ*DROP_OCR_Y; 15 -DFQ*LX_R; 26 -OHR*L1
1 -OHR*L7; 6 -OHR*L23; 16 +HFR*L7; 20 +HFR*DROP_OCQ_Y
5 +HFR*TX_Q_; 1 +HFR*DROP_OCR_Y; 1 +OYP*-OHD; 19 +OYP*+OCF
3 +OYP*DROP_OCQ_Y; 2 +CPQ*L28; 9 C_OCP_Y*L1; 19 C_OCP_Y*L9
1 C_OCP_Y*TY_Q_; 1 TPX_Q_*L23; 7 TPX_Q_*L24
```

Upper bound: `-179107451/500000000`.
