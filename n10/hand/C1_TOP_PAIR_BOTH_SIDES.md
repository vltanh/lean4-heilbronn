# Two top-cap points cannot coexist with both side caps

Use the C1 anchors and cap definitions of
[C1_EXTERIOR_REDUCTION.md](C1_EXTERIOR_REDUCTION.md):

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad D=(1,d),\quad
 F=(f,1),\qquad 0<d\le h\le1,\quad0<f\le c\le1.
\]

Write \([ABC]=\det(B-A,C-A)\), and suppose every unsigned
actual doubled triangle area is at least \(s=93/1000\).
This note excludes two actual top-cap points together with an actual
point in each side cap. The fifth free point is unrestricted. Thus it
closes both complete C1 count families

\[
 (k,j,r,t,l)=(0,1,1,2,1),\qquad(1,0,1,2,1).
\]

All finite decimals below are exact rationals. The only finite
algebraic table is one displayed sum of 158 products of nonnegative
polynomials; its verification uses no configuration search.

## 1. The nontriangular top hull is impossible

Let \(P=(p,q)\) be a right-cap point and \(R=(r,t)\) a left-cap
point. The side-cap support inequalities, proved in Section 1 of
C1_EXTERIOR_REDUCTION, give

\[
 dc(1-c)\ge s,\qquad fh(1-h)\ge s,\qquad d,f\ge4s=.372,
 \tag{1}
\]

and

\[
 p\ge c+\frac{s}{cd},\quad q\ge\frac{s}{c},\qquad
 t\ge h+\frac{s}{fh},\quad r\ge\frac{s}{h}.
 \tag{2}
\]

Suppose the hull of \(D,F\) and the two top points is
nontriangular. The nontriangular four-point endpoint theorem in
[TYPE_II.md](TYPE_II.md), Section 1, gives

\[
 (1-d)(1-f)\ge4s.
\]

Together with (1), this yields

\[
 d,f\le1-\frac{4s}{1-4s}<.408.
 \tag{3}
\]

If \(c\ge.65\), then \(c(1-c)\le(.65)(.35)\), so
\(dc(1-c)<(.408)(.65)(.35)=.09282<s\), a contradiction.
The same argument applies to \(h\). Thus \(h,c<.65\).
By (2) and the arithmetic--geometric mean inequality,

\[
 p\ge2\sqrt{s/d}>.954,\qquad q>s/.65>.143,
 \qquad t>.954,\quad r>.143.
 \tag{4}
\]

The square comparison establishing the first strict bound is
\((.408)(.954/2)^2<s\).

For any actual top point \(V=(u,v)\), its cap position gives
\(u>f\), \(v>d\). The side-cap positions give \(q<d\) and
\(r<f\). Consequently the following signed areas are positive:

\[
\begin{aligned}
 -[DPV]&=(1-p)(v-d)+(d-q)(1-u),\\
 -[FVR]&=(1-t)(u-f)+(f-r)(1-v).
\end{aligned}
\tag{5}
\]

The expressions are nonnegative by the square bounds and strictly
positive because an actual collinear triple is forbidden. Equations
(3)--(4) therefore imply

\[
 s\le-[DPV]<(.046)(.628)+(.265)(1-u),
\]

and its transposed version with \(v\) in place of \(u\).
Since

\[
 (.046)(.628)+(.265)(.241)=.092753<s,
\]

both \(u,v<.759\). But

\[
 -[DFV]=(1-d)u+(1-f)v-1+df.
\]

This increases with \(u,v\) and decreases with \(d,f\) on the
stated box. Hence

\[
 s\le-[DFV]
 <2(.628)(.759)-1+(.372)^2=.091688<s.
\]

This rules out the entire nontriangular alternative, including cap
points on square sides.

## 2. The triangular alternative and its uniform box

The two anchors \(D,F\) are extreme in the hull of themselves and
the top points: each lies on a square side, and three actual collinear
points are impossible. Thus the remaining alternative has an actual
triangular hull \(DFT\), where \(T=(u,v)\) is one top point and
the other is strictly inside. Subdivision into its three actual
triangles gives

\[
 [DTF]=-[DFT]\ge3s,
 \qquad(1-d)(1-f)\ge3s.
 \tag{6}
\]

Together with (1), the second inequality gives

\[
 d,f\le1-\frac{3s}{1-4s}<.556.
\]

Because \((.556)(.79)(.21)=.0922404<s\), (1) then implies
\(h,c<.79\). Also \(h\ge d\ge.372\) and
\(c\ge f\ge.372\). Equation (2) gives

\[
 p\ge2\sqrt{s/d}>.817,\qquad q>s/.79>.117,
 \qquad t>.817,\quad r>.117,
\]

where \((.556)(.817/2)^2<s\). The right-cap area and \(p\le1\)
give

\[
 q\le d-\frac{s}{1-c}
 <.556-\frac{s}{.628}<.408;
\]

reflection gives \(r<.408\). Finally the identity in Section 1
also implies

\[
 (1-d)(u-f)\ge3s,
 \qquad(1-f)(v-d)\ge3s,
 \tag{7}
\]

since the omitted terms \((1-f)(1-v)\) and
\((1-d)(1-u)\) are nonnegative. Therefore

\[
 u\ge f+\frac{3s}{1-d}\ge.372+\frac{3s}{.628}>.816,
 \qquad v>.816.
\]

The following closed box contains every remaining configuration:

| Index \(i\) | Variable \(x_i\) | Lower bound \(a_i\) | Upper bound \(b_i\) |
|---:|---|---:|---:|
| 0 | \(h\) | .372 | .790 |
| 1 | \(c\) | .372 | .790 |
| 2 | \(d\) | .372 | .556 |
| 3 | \(f\) | .372 | .556 |
| 4 | \(p\) | .817 | 1 |
| 5 | \(q\) | .117 | .408 |
| 6 | \(u\) | .816 | 1 |
| 7 | \(v\) | .816 | 1 |
| 8 | \(r\) | .117 | .408 |
| 9 | \(t\) | .817 | 1 |

## 3. Every factor in the printed sum is nonnegative

For \(0\le i\le9\), define the twenty affine box factors

\[
 L_{2i}=x_i-a_i,\qquad L_{2i+1}=b_i-x_i.
\]

Further abbreviations are

\[
\begin{aligned}
 \mathit{hd}&=h-d,&\mathit{cf}&=c-f,\\
 \mathit{topx}&=u-f-3s,&\mathit{topy}&=v-d-3s,\\
 \mathit{toppx}&=(1-d)(u-f)-3s,
 &\mathit{toppy}&=(1-f)(v-d)-3s,\\
 \mathit{TopEar}&=[DTF]-3s.
\end{aligned}
\tag{8}
\]

These are all nonnegative by the anchor projection conditions and
(6)--(7). In particular (7), together with \(1-d,1-f\le1\),
justifies the affine factors \(\mathit{topx},\mathit{topy}\).

For each of the eight words

\[
 OCP,\quad ORH,\quad CPD,\quad PDT,\quad TFR,\quad FRH,
 \quad OCF,\quad ODH,
\]

put \(\mathit{T}_{ABC}=[ABC]-s\). All these orientations are
positive. The right and left cap conditions give \([CPD]>0\)
and \([FRH]>0\); \([PDT]\) and \([TFR]\) are the two positive
expressions in (5), with \(V=T\). The remaining four are
\([OCP]=cq\), \([ORH]=hr\), \([OCF]=c\), and \([ODH]=h\).
Each is an actual triangle and therefore has area at least \(s\).
This proves nonnegativity of every factor used below directly; no
unspecified cyclic-order assumption is needed.

## 4. The exact nonnegative sum has a negative upper bound

In the table, `L0` means \(L_0\), `TOCP` means
\(\mathit{T}_{OCP}\), and `*` is multiplication. Let \(W\) be
the sum of the listed coefficient times product. Every coefficient is
a nonnegative integer and every factor was justified in Section 3,
so \(W\ge0\).

Substitute \(x_i=a_i+z_i\), where
\(0\le z_i\le b_i-a_i\), and expand

\[
 W(a+z)=\sum_\alpha w_\alpha z^\alpha.
\]

For a positive nonconstant coefficient use
\(z^\alpha\le\prod_i(b_i-a_i)^{\alpha_i}\); discard all
negative nonconstant terms. The table gives the exact bound

\[
 W\le w_0+
 \sum_{\substack{\alpha\ne0\\w_\alpha>0}}
 w_\alpha\prod_i(b_i-a_i)^{\alpha_i}
 =-\frac{63250709}{250000000}<0.
 \tag{9}
\]

This contradicts \(W\ge0\). The table, the definitions in (8),
and the box contain all arithmetic needed to reproduce (9).

```c1-top-pair-sum
8 L10*L15
9 L13*L13
2 L0*L6*L13
44 L0*L6*L19
34 L0*L14*hd
3 L0*hd*TODH
3 L0*hd*topy
18 L1*L1*L15
10 L1*L1*L16
2 L1*L5*cf
2 L1*L6*L10
4 L1*L8*L16
8 L1*L10*L16
25 L1*L13*L16
23 L1*L15*L16
8 L1*L15*L18
39 L1*L16*L16
14 L1*L16*cf
3 L1*hd*hd
21 L1*cf*cf
3 L2*L4*L15
19 L2*L6*L19
11 L2*cf*TODH
15 L3*L3*L10
2 L3*L4*L18
18 L3*L5*L15
33 L3*L7*L15
27 L3*L8*L10
34 L3*L10*L15
14 L3*L10*topy
26 L3*L13*L13
8 L3*L13*L18
24 L4*L4*L9
5 L4*L4*topx
18 L4*L5*L15
26 L4*L5*L16
3 L4*L5*cf
10 L4*L6*L9
56 L4*L6*cf
5 L4*L7*L16
15 L4*L9*cf
37 L4*L12*cf
8 L4*L15*L18
26 L4*L17*hd
71 L4*L18*topx
24 L5*L6*L8
27 L5*L8*L8
47 L5*L8*L10
42 L5*L8*L15
17 L5*L8*L16
2 L5*L8*TODH
38 L5*L13*L16
4 L5*L13*topy
29 L6*L6*L19
10 L6*L7*L10
4 L6*L8*hd
26 L6*L8*topy
2 L6*L10*topy
10 L6*L11*cf
26 L6*L13*L13
69 L6*L13*L19
38 L6*L13*hd
2 L6*L14*L15
39 L6*L16*L19
16 L6*L16*hd
20 L6*cf*topy
31 L7*L7*L15
4 L7*L8*L18
14 L7*L18*L18
1 L7*hd*hd
55 L8*L8*topy
55 L8*L10*L13
23 L8*L13*L15
9 L9*L15*L16
2 L9*L15*L18
9 L9*L15*cf
25 L10*L10*L13
23 L10*L12*L13
6 L10*L12*L15
9 L10*L13*L16
2 L10*L15*L16
57 L11*L12*cf
26 L12*L12*cf
29 L13*L17*hd
15 L13*L19*hd
5 L14*L17*hd
8 L14*L19*hd
29 L15*L16*L18
8 L15*L16*TOCF
18 L15*hd*hd
9 L17*hd*cf
29 L18*L18*topx
9 cf*cf*TODH
16 TOCP*L1
49 TOCP*L3
5 TOCP*L7
22 TOCP*L11
9 TOCP*L17
2 TOCP*L18
15 TOCP*TODH
1 TOCP*topy
54 TORH*L1
11 TORH*L2
58 TORH*L4
10 TORH*L10
14 TORH*L13
93 TORH*L15
14 TORH*L19
32 TORH*topy
3 TCPD*L5
143 TCPD*L6
27 TCPD*L8
22 TCPD*L10
45 TCPD*L13
21 TCPD*L15
9 TCPD*L16
2 TCPD*L19
34 TCPD*cf
2 TCPD*TODH
94 TCPD*topx
31 TPDT*L3
27 TPDT*L4
35 TPDT*L7
55 TPDT*L8
25 TPDT*L10
6 TPDT*L14
9 TPDT*L16
2 TPDT*L18
39 TPDT*TOCF
23 TPDT*topx
5 TTFR*L5
106 TTFR*L6
2 TTFR*L10
77 TTFR*L13
29 TTFR*L18
8 TTFR*TOCF
15 TTFR*TODH
77 TTFR*topx
14 TFRH*L3
4 TFRH*L8
2 TFRH*L11
40 TFRH*L13
29 TFRH*L14
39 TFRH*L16
14 TFRH*L18
25 TFRH*TOCF
44 TFRH*TODH
21 TopEar*L3
17 TopEar*L4
36 TopEar*L6
2 TopEar*L15
16 toppx*L8
2 toppx*L10
23 toppx*L13
76 toppx*L18
14 toppy*L5
74 toppy*L8
29 toppy*L16
```

The companion
[check_c1_top_pair_both_sides.py](check_c1_top_pair_both_sides.py)
reads this printed table, reconstructs every polynomial from the
coordinates, and verifies (9) with exact rational arithmetic. It also
checks the numerical comparisons in Sections 1--2; it does not call
an optimizer or enumerate configurations.
