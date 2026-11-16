# The exact-pentagon child of the one-corner family

**Theorem.** Let ten actual points lie in the unit square, with the five
selected C1 anchors

\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad d\le h,\quad f\le c.
\]

If their actual convex hull is exactly the pentagon \(O,C,D,F,H\),
some actual triangle has ordinary area less than \(93/2000<A_*\).
This closes the whole exact-pentagon child. It makes no claim about a C1
configuration having further hull vertices outside this selected pentagon.

The geometric reductions are proved in
[C1_PENTAGON_GEOMETRY.md](C1_PENTAGON_GEOMETRY.md). This note supplies the
remaining exhaustive orientation catalogue and fixed exact polynomial
inequalities. All areas below are doubled, and
\(s=93/1000\). Suppose, for a contradiction, that every actual triangle
has unsigned doubled area at least \(s\).

The geometric note gives exactly three lower points
\(Y=(u,v),Z=(z,w),X=(x,a)\), and two upper points
\(P=(p,q),Q=(\ell,m)\). Their labels satisfy the distributed lower
mesh, \(u\ge v\), and \(D(H,P,Q)<0\). Here
\(D(A,B,C)=\det(B-A,C-A)\). No zero orientation occurs among actual
points. Consequently every binary split printed below is exhaustive.

## 1. The fixed rational box and globally nonnegative factors

Use the coordinate order
\((h,c,d,f,u,v,z,w,x,a,p,q,\ell,m)\). In the machine-readable tables
`l` denotes \(\ell\). The lower and upper bounds are:

```c1-box
h 823/1000 1
c 823/1000 1
d 93/1000 907/1000
f 93/1000 907/1000
u 365211/1000000 157/250
v 279/1000 907/2000
z 93/1000 27/100
w 279/1000 157/250
x 149/500 157/250
a 93/1000 27/100
p 93/1000 1
q 93/1000 1
l 93/1000 1
m 93/1000 1
```

If coordinate \(i\), numbered from zero, has bounds \(b_i,B_i\), put
\(L_{2i}=v_i-b_i\), \(L_{2i+1}=B_i-v_i\). The other affine factors are:

```c1-affines
L28 x-a-41/200
L29 h+c-907/500
L30 h-d
L31 c-f
L32 u-z-2*s
L33 v-a-2*s
L34 u-v
L35 u+v-(3927/500)*s
L36 h-s
L37 c-s
```

The following further factors are nonnegative by Sections 2--5 of the
geometric note. The notation `D_ABC` in this table means \(D(A,B,C)\).
All constants in the table are rational.

```c1-global-factors
M1 h*(c-z)-(3927/500)*s
M2 c*(h-a)-(3927/500)*s
M3 h*u+c*v-(3927/500)*s
M4 -D_HYZ-D_OZX+D_CYX-(2427/500)*s
M5 (8/5)*s-D_YZX
ED h*h+d-h
EF c*c+f-c
CAPZXP 1-2*s-15*s*s-D_ZXP
CAPZXQ 1-2*s-15*s*s-D_ZXQ
CAPCDY 1-4*s+3*s*s-D_CDY
CAPHFY 1-4*s+3*s*s+D_HFY
CAPDFY 1-4*s+s*s-D_DFY
EPH q+h*h*p-h
EPC p+c*c*q-c
EQH m+h*h*l-h
EQC l+c*c*m-c
```



For an orientation already established in a row, write

\[
 T_{+ABC}=D(A,B,C)-s,\qquad
 T_{-ABC}=-D(A,B,C)-s.
 \tag{30}
\]

The table tokens `TpABC` and `TmABC` mean these two factors. Every such
factor used below has its sign justified by the global geometry, the
row's path, or its printed derivation. It is therefore nonnegative.
The complete list of starting orientations is printed next. A plus or
minus precedes the three letters in the displayed order.

```c1-global-signs
-OHC -OHD -OHF +OCD +OCF +ODF +HCD +HCF
+HDF +CDF -OHY -OHZ -OHX +OCY +OCZ +OCX
+OYZ -OYX -OZX -HCY -HCZ -HCX -HYZ -HYX
+HZX +CYZ +CYX +CZX +YZX -HDY -HFY +CDY
+CFY +DFY -HDZ -HFZ +CDZ +CFZ +DFZ -HDX
-HFX +CDX +CFX +DFX -OHP +OCP +HCP -HFP
+CDP +DFP -OHQ +OCQ +HCQ -HFQ +CDQ +DFQ
+ODZ -OFX -OFY -HPQ +ZXP +ZXQ +HYP -CYP
+HYQ -CYQ +HZP -CZP +HZQ -CZQ +HXP -CXP
+HXQ -CXQ
```

The anchor signs follow from the convex pentagon; the lower six-point
signs are exactly its distributed mesh. The remaining signs are the
upper cell edge tests, the cross signs, and the three additional signs
\(ODZ>0,OFX<0,OFY<0\) proved in the geometric note.

## 2. Exact rules for the geometric derivation rows

The finite derivation rows make the sign premises of every area factor
explicit. They use only the following elementary rules and previously
proved geometric statements.

An `imp ABC e rule` row asserts the sign \(e\in\{-1,1\}\) of
\(D(A,B,C)\), by the indicated rule. Their meanings are:

| Rule | Geometric implication |
|---|---|
| `ray` | \(OYR>0\Rightarrow OXR>0\); \(OYR<0\Rightarrow OZR<0\). |
| `beyond` | \(OYR>0\Rightarrow YZR<0\); \(OYR<0\Rightarrow YXR>0\), by Section 4 of the geometric note. |
| `containD` | \(DYR>0\) or \(ODR<0\) puts the upper point on the negative side of \(HD\). |
| `containF` | \(FYR<0\) or \(OFR>0\) puts the upper point on the positive side of \(CF\). |
| `ear` | An isolated vertex of the upper quadrilateral puts both upper points in its ear, as in Section 7 of the geometric note. |
| `lower` | \(OPQ,CPQ,HPQ<0\) put every point of \(OHC\) on the negative side of \(PQ\). |
| `cluster` | The four endpoint no-cluster implications (24)--(25) of the geometric note. |
| `inner` | The straddling inner-quadrilateral argument in Section 8 puts \(X,Y,Z\) on the same side of \(PQ\) as \(O\). |
| `cutD` | If all lower points are above \(OD\), an upper point cannot be inside \(OHD\); thus its \(OD\) and \(HD\) signs agree. |
| `cutF` | If all lower points are below \(OF\), an upper point cannot be inside \(OCF\); thus its \(OF\) and \(CF\) signs agree. |

For `containD`, the relevant containing triangle is \(CDY\) or
\(OCD\); both lie on the indicated side of \(HD\). For `containF`,
use \(HFY\) or \(OHF\). The two cut rules use the exclusion of four
interior points in an actual triangle, together with these same edge
containments. Only the rules actually cited in a row are used there.

A `mesh ABCYZX e` row applies the full distributed mesh with outer
vertices \(A,B,C\), central label \(Y\), and side labels \(Z,X\).
Here \(e=1\) means the same clockwise outer orientation as \(O,H,C\),
and \(e=-1\) reverses every mesh sign. These are precisely the repeated
meshes justified in Section 7 of the geometric note: the two straddling
meshes, an endpoint triangle containing all three lower points, or
\(OPQ\) containing all three. The point with middle ray at the first
outer vertex is the central label. The derivation row adds all twenty
signs among those six actual points.

A `via R ABC IJ e` row is ordinary strict barycentric interpolation.
Its earlier signs put \(R\) strictly inside \(ABC\). They also put
all three vertices \(A,B,C\) on the weak side \(e\) of the directed
line \(IJ\), with at least one strictly on that side. Endpoints of
\(IJ\) have zero determinant. Writing
\(R=\alpha A+\beta B+\gamma C\) with positive coefficients summing to
one gives

\[
 D(I,J,R)=\alpha D(I,J,A)+\beta D(I,J,B)+\gamma D(I,J,C),
 \tag{31}
\]

which has the asserted strict sign. Every containment is checked by the
three directed edge signs; no sample coordinates enter this rule.

A geometric leaf ends with an `exclude` row. `four ABC WXYZ` lists four
strict interior points of an actual triangle. `cap ABC UV` lists two
interior points of one of the capacity-one triangles \(ZXP,ZXQ,HFY,DFY,CDY\).
`cluster ABC R IJR UV` lists a clustered triple \(R,U,V\) in \(ABC\),
with \(U,V\) in the actual fan triangle \(IJR\). Each is excluded by
the proved geometric theorems. A cyclic `rays` row, if present, would
contradict the angular order of rays in the first quadrant. A contrary
`imp`, `mesh`, or `via` conclusion would contradict the already fixed
sign of an actual triangle.

## 3. The local factor definitions

Each polynomial leaf defines its additional factors `B0`, `B1`, and so
on. They have the following explicit meanings. The listed point words
are part of their premises, verified by the preceding signs.

For an actual convex triangle or quadrilateral \(K\), let \(A(K)\)
be its positive doubled area. In its listed cyclic order this is the
appropriately signed sum
\(\sum_{i=1}^{r-2}D(K_0,K_i,K_{i+1})\), a quadratic polynomial on the
row. Define the rational costs

| Interior count \(k\) | Triangle cost \(t_k\) | Quadrilateral cost \(q_k\) |
|---|---|---|
| 0 | \(s\) | \(2s\) |
| 1 | \(3s\) | \(449/1000\) |
| 2 | \(694/1000\) | \(8s\) |
| 3 | \(823/1000\) | \(93/91\) |
| 4 | Impossible | \(1102/1000\) |
| 5 | Impossible | \(1517/1000\) |
| 6 | Impossible | \(1646/1000\) |

The first four rows are the established actual-triangle and
actual-quadrilateral bounds. For the last three rows, split the
quadrilateral along an actual diagonal. Neither side can contain four
points. The least possible sums of the two triangle costs are therefore
\(3s+823/1000\), \(694/1000+823/1000\), and \(2(823/1000)\), respectively.
Only the counts explicitly used below are needed.

The local definition syntax is:

| Definition | Nonnegative polynomial and premise |
|---|---|
| `triangle ABC k POINTS` | \(A(ABC)-t_k\); the listed \(k\) points are strictly inside. |
| `quad ABCD k POINTS` | \(A(ABCD)-q_k\); the listed vertices form a convex quadrilateral containing the listed points. For \(k=0\), `-` is the empty list. |
| `drop variable ABC k POINTS` | `variable`\(-t_k\), when \(ABC\) is \(OHP,OCP,OHQ\), or \(OCQ\) and its area is \(h\) or \(c\) times that coordinate. The multiplier is at most one. |
| `ear NAME` | The affine consequence of an occupied upper ear, listed below. |
| `mesh ABCYZX e j` | One of the four distributed-mesh inequalities in (32) below. |
| `spread ABCD UV IJ e r` | \(A(ABCD)-rs+e[D(J,U,V)-D(I,U,V)]\), under the two-diagonal separation premise. |

The ear codes have the exact meanings

\[
\begin{array}{c|c|c}
\text{code}&\text{factor}&\text{premise}\\\hline
\texttt{HDF1\_dmax}&1-3s-d&\text{one upper point in }HDF\\
\texttt{CDF1\_fmax}&1-3s-f&\text{one upper point in }CDF\\
\texttt{CDF\_dmin}&d-177/250&\text{both in }CDF\\
\texttt{CDF\_fmax}&153/500-f&\text{both in }CDF\\
\texttt{HDF\_fmin}&f-177/250&\text{both in }HDF\\
\texttt{HDF\_dmax}&153/500-d&\text{both in }HDF\\
\texttt{HCD\_dmin}&d-157/250&\text{both in }HCD\\
\texttt{HCF\_fmin}&f-157/250&\text{both in }HCF.
\end{array}
\]

These are proved in Section 9 of the geometric note. For a printed mesh
\(ABCYZX\) with orientation \(e\), put
\(W=-eD(A,B,C)\). The four factors, indexed by \(j=0,1,2,3\), are

\[
\begin{split}
 W+eD(A,B,Z)-(3927/500)s,&\\
 W-eD(A,C,X)-(3927/500)s,&\\
 W+eD(B,C,Y)-(3927/500)s,&\\
 (8/5)s-eD(Y,Z,X).&
\end{split}
 \tag{32}
\]

They are the three outer-area-minus-ear bounds and the central-face
bound. The latter applies because the containing actual triangle lies
in the original unit square.

For a `spread` factor, both actual diagonals of the listed quadrilateral
strictly separate \(U,V\). The threshold-free two-diagonal spread theorem
in [QUADRILATERAL_SPREAD.md](QUADRILATERAL_SPREAD.md) gives both signs of
the displayed inequality with \(r=1457/250<3+2\sqrt2\). When the hull
is \(HCDF\), its doubled area is at most one, so its normalized threshold
is at least \(s>1/11\), and the stronger value \(r=6\) applies. The
coordinate-difference numerator along a diagonal is exactly
\(D(J,U,V)-D(I,U,V)\); division by the quadrilateral area gives the
affine normalized coordinate difference. This proves the stated factor
without any assumption on the sign of that difference.

## 4. How the exact sums give contradictions

Every term printed in a sum is a positive integer times a product of
nonnegative factors. Let its full sum be \(W\). Hence \(W\ge0\).
Its total degree is at most three.

For an entirely rational upper bound, replace each coordinate by
\(v_i=b_i+t_i\), where \(0\le t_i\le B_i-b_i\). Expand

\[
 W=c_0+\sum_{\alpha\ne0}c_\alpha t^\alpha.
\]

Discard its negative-coefficient monomials and bound each remaining
monomial by its coordinate-box maximum. Thus

\[
 W\le U(W):=c_0+
 \sum_{\substack{\alpha\ne0\\c_\alpha>0}}
 c_\alpha\prod_i(B_i-b_i)^{\alpha_i}.
 \tag{33}
\]

The exact value of \(U(W)\) printed after every sum is negative.
This contradicts \(W\ge0\). All products, integer coefficients,
geometric premises, and rational box endpoints are printed here.
Equation (33) uses no coordinate subdivision, numerical optimization,
or search over configurations.

The accompanying `check_c1_pentagon.py` is an optional transcription
check using Python's exact `Fraction` arithmetic. It reads this
manuscript, verifies the finite tree coverage and the explicit geometric
witnesses, expands the printed products, and recomputes (33). It imports
no optimizer, numerical package, discovery output, or hidden table.
The proof consists of the displayed geometric arguments and finite
rational inequalities.

## 5. Exhaustive anchor-line roots and binary refinements

Because \(HPQ<0\), the positive anchor vertices along \(PQ\) form one
nonempty interval in the cyclic order \(O,C,D,F\). The singleton
\(O\) is impossible since both upper points lie in \(HCDF\).
The following nine roots are exactly the remaining intervals. The four
sign columns are \(OPQ,CPQ,DPQ,FPQ\), in that order.

```c1-roots
R1 1 1 -1 -1
R2 1 1 1 -1
R3 1 1 1 1
R4 -1 1 -1 -1
R5 -1 1 1 -1
R6 -1 1 1 1
R7 -1 -1 1 -1
R8 -1 -1 1 1
R9 -1 -1 -1 1
```

At each listed internal node, the three-letter word is the actual
triangle being split. Its negative and positive children follow in that
order. A child absent from the internal-node list is one of the fully
printed leaves in Section 6. Each leaf inherits its root's four signs
and every sign along its path.

```c1-tree
R1 OYP R1m R1p
R1m OYQ R1mm R1mp
R2 OYP R2m R2p
R2p OZP R2pm R2pp
R2pm OZQ R2pmm R2pmp
R2pmm YXP R2pmmm R2pmmp
R5 OYP R5m R5p
R6 OYP R6m R6p
R6p OYQ R6pm R6pp
R7 OYP R7m R7p
R7p OYQ R7pm R7pp
R7pm DYQ R7pmm R7pmp
R7pmp HDP R7pmpm R7pmpp
R7pmpm OZP R7pmpmm R7pmpmp
R7pmpmm OXQ R7pmpmmm R7pmpmmp
R7pmpmmp YXP R7pmpmmpm R7pmpmmpp
R7pmpmmpp YZQ R7pmpmmppm R7pmpmmppp
R8 OYP R8m R8p
R8p OYQ R8pm R8pp
R8pm FYP R8pmm R8pmp
R8pmm DYQ R8pmmm R8pmmp
R8pmmp HDP R8pmmpm R8pmmpp
R8pmmpm CFQ R8pmmpmm R8pmmpmp
R8pmmpmm OZP R8pmmpmmm R8pmmpmmp
R8pmmpmp OZP R8pmmpmpm R8pmmpmpp
R8pmmpmpm OXQ R8pmmpmpmm R8pmmpmpmp
R8pmmpmpmp YXP R8pmmpmpmpm R8pmmpmpmpp
R8pmmpmpmpm YZQ R8pmmpmpmpmm R8pmmpmpmpmp
R8pmmpp CFQ R8pmmppm R8pmmppp
R8pmmppp OZP R8pmmpppm R8pmmpppp
R8pmmpppm OXQ R8pmmpppmm R8pmmpppmp
R9 OYP R9m R9p
R9p OYQ R9pm R9pp
```

## 6. The complete fixed leaves

There are 34 polynomial leaves and eight geometric leaves. The polynomial
leaves contain 3,317 positive integer entries in total, with largest
coefficient 8,438. Every printed coefficient-box upper bound is
strictly below \(-1/100\). The size of these tables is explicit; the
argument uses their fixed rational entries, not a claim about a numerical
search.

### Leaf R1mm

This is terminal leaf 1 of 42.

```c1-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp HDP -1 ear
imp HDQ -1 ear
via X OCZ DZ 1
via Z OHY FY -1
via Y OHP FP -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FP -1
via Z OHY FQ -1
```

```c1-exclude
cluster OHP Q OHQ YZ
```

### Leaf R1mp

This is terminal leaf 2 of 42.

```c1-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp HDP -1 ear
imp HDQ -1 ear
imp OFP -1 cluster
imp ODP -1 cluster
imp ODQ 1 cluster
mesh OHPQZY 1
via Y OHP DP -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHD DP -1
via X OCY DQ 1
via Z OHY FY -1
via Y OHP FP -1
via Z OHX FX -1
via Z OHY FP -1
via X OCY PQ 1
via Y OZP DZ 1
```

```c1-factors
B0 ear HCD_dmin
B1 drop p OHP 3 YZQ
B2 triangle HDY 1 Q
B3 triangle HXP 2 YQ
B4 quad OPDH 3 YZQ
B5 quad OPFH 3 YZQ
B6 quad OPDF 1 Y
B7 quad OPDZ 1 Y
B8 quad HZPD 1 Q
B9 quad HZYP 1 Q
```

```c1-sum
340 B0*B0*L34; 176 B0*L15*L34; 378 B0*L16*L34; 448 B0*L23*L34
221 B0*L3; 407 B0*L3*L15; 474 B0*L3*L22; 7 B0*L3*L28
403 B0*L3*L30; 43 B0*L34*L35; 87 B0*L4*L34; 18 B1*L1*L28
102 B1*L1*L33; 176 B1*L1*L6; 824 B1*L3*L30; 9 B1*L30*L34
182 B1*L5*L11; 108 B1*L5*L28; 181 B1*L7*L11; 474 B1*TmOYX
30 B1*TpHZX; 13 B2*L12; 166 B3; 575 B3*L10
29 B3*L12; 625 B3*L15; 164 B3*L36; 978 B3*L37
176 B3*L6; 474 B3*L9; 280 B4*L34; 890 B5*L1
50 B6*L7; 229 B7*L34; 524 B8*L18; 162 B9*L1
1002 L1*L1*L6; 116 L1*L15*L17; 228 L1*L15*L35; 423 L1*L16*L30
436 L1*L16*L35; 9 L1*L17*L21; 461 L1*L17*L22; 464 L1*L21*L34
154 L1*L3*L21; 382 L1*L3*L22; 31 L1*L5*L16; 304 L1*L5*L6
381 L1*L5*L9; 16 L1*L6*L11; 1140 L1*L6*L22; 488 L1*L6*L31
99 L1*L6*L9; 74 L1*L9*L30; 30 L11*L12*L28; 152 L11*L12*L30
682 L11*L14*L16; 401 L11*L16*L30; 670 L11*L21*L28; 279 L12*L22*L30
5 L12*L34; 231 L14*L30*L34; 670 L16*L23*L34; 101 L17*L34*L35
108 L18*L23; 109 L18*L30; 69 L19*L34*L35; 101 L28*L35*L35
102 L3*L14*L22; 304 L3*L15*L23; 924 L3*L17*L30; 21 L3*L23*L36
685 L3*L4*L21; 13 L3*L6*L14; 488 L3*L6*L23; 14 L3*L7*L10
127 L4*L12*L23; 332 L4*L21*L34; 403 L4*L34*L35; 24 L5*L11*L12
407 L5*L11*L15; 448 L5*L11*L23; 449 L5*L11*L35; 45 L5*L12*L29
113 L5*L12*L36; 458 L5*L14*L16; 458 L5*L18*L32; 715 L5*L5*L21
71 L5*L5*L31; 427 L5*L5*L35; 73 L5*L7*L11; 95 L5*L7*L15
97 L5*L7*L21; 538 L5*L7*L7; 101 L5*L7*L9; 633 L5*L9*L16
251 L5*L9*L28; 1 L6*L14*L34; 227 L6*L21*L34; 17 L6*L23*L34
7 L7*L15*L35; 227 L7*L21*L35; 29 L9*L18*L32; 14 TmHFY*L12
95 TmHFZ*L1; 71 TmHYX*L1; 1509 TmODP*L3; 58 TmOFY*L5
12 TmOHF*L34; 6 TmOHZ; 902 TmOHZ*L11; 224 TmOHZ*L19
293 TmOHZ*L23; 12 TmOHZ*L28; 249 TmOHZ*L30; 49 TmOHZ*L5
14 TmOHZ*L7; 148 TmOYP*L16; 460 TmOYP*L18; 450 TmOYP*L35
2049 TmOYX*L0; 201 TmOYX*L11; 95 TmOYX*L14; 1246 TmOYX*L23
23 TmOYX*L30; 202 TmOYX*L9; 54 TmYZP*L0; 71 TmYZP*L19
30 TmYZP*L28; 407 TmYZP*L30; 161 TmYZP*L36; 1609 TpCDP
407 TpCDP*L15; 925 TpCDP*L16; 53 TpCDP*L28; 403 TpCDP*L30
71 TpCDP*L5; 488 TpCDP*L6; 14 TpCYZ*L7; 203 TpDFP*L0
16 TpDFP*L11; 176 TpDFP*L17; 614 TpDFP*L30; 47 TpDFP*L36
619 TpDFP*L9; 662 TpDYP*B0; 461 TpDYP*L1; 577 TpDYP*L16
685 TpDYP*L28; 450 TpDYP*L35; 193 TpDYP*L4; 635 TpDYP*L6
45 TpDZX*L3; 13 TpHDF; 17 TpHDF*L1; 94 TpHDF*L15
176 TpHDF*L16; 614 TpHDF*L23; 488 TpHDF*L31; 542 TpHDF*L4
115 TpHDF*L9; 587 TpHZX*L11; 625 TpHZX*L23; 50 TpHZX*L29
458 TpHZX*L30; 30 TpHZX*L9; 53 TpOCX*L23
```

There are 167 positive integer entries. The exact upper bound (33) is

`-193434811523553/18200000000000000`.

### Leaf R1p

This is terminal leaf 3 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp HDP -1 ear
imp HDQ -1 ear
imp ODP 1 cluster
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCP DP 1
via Y OCP DQ 1
via X OCZ DZ 1
via X OCY DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHY YQ 1
via Y OCP PQ 1
via X OCY PQ 1
```

```c1-factors
B0 triangle HDY 2 PQ
```

```c1-sum
24 B0; 27 B0*L36; 3 B0*L37; 11 L1*L9*L36
3 L29*L30*L34; 24 L30*L35; 2 L30*L35*L36; 3 M3*L5
3 TmOFY*L5; 19 TmOHY*L5; 2 TpCFY*L1; 1 TpHDF
```

There are 12 positive integer entries. The exact upper bound (33) is

`-2207027657/62500000000`.

### Leaf R2m

This is terminal leaf 4 of 42.

```c1-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
via X OCZ DZ 1
via Z OHY FY -1
via Y OHP FP -1
via Z OHX FX -1
via Z OHY FP -1
```

```c1-factors
B0 quad OCQH 3 YZX
B1 triangle OHP 3 YZQ
B2 drop p OHP 3 YZQ
B3 triangle DFQ 1 P
B4 quad OCDF 3 YXP
```

```c1-sum
7 B0*L22; 245 B0*L31; 12 B0*L7; 9 B1*L3
8 B1*L6; 14 B2*L1; 2 B2*L1*L23; 9 B2*L1*L26
16 B2*L1*L4; 15 B2*L10*L24; 11 B2*L11*L25; 26 B2*L27
10 B2*L27*L31; 1 B2*L27*L34; 261 B2*L3; 9 B2*L3*L5
6 B2*L4*L34; 3 B2*L5*L21; 9 B2*L5*L36; 2 B2*L5*L9
10 B2*L6; 2 B2*L6*L22; 25 B2*L9*L26; 3 B2*TmHFY
1548 B2*TpCDQ; 1617 B2*TpDFQ; 262 B2*TpHCF; 2 B3*L34
307 B4*L5; 5 L1*L22; 2 L1*L25; 1 L1*L25*L34
1 L1*L27; 25 L1*L3*L31; 190 L1*L31; 20 L1*L4*L25
1 L1*L5*L24; 2 L1*L6*L7; 8 L1*L7*L24; 3 L3*L11*L23
270 L3*L26*L31; 12 L3*L7*L26; 3 L4*L20*L34; 13 L4*L25*L34
307 L5*L5*L31; 4 L5*L7*L11; 10 L5*L7*L25; 5 L5*L7*L7
7 L7*L11*L26; 7 TmCYQ*L23; 11 TmFPQ*L11; 2 TmFPQ*L20
4 TmFPQ*L9; 3 TmHCY*L23; 2 TmHPQ*L23; 271 TmHPQ*L31
3 TmHPQ*L34; 34 TmHPQ*L4; 2 TmHPQ*L7; 11 TmOFY*L22
8 TmOFY*L5; 27 TmOYP*L25; 7 TmOYP*L26; 3 TmOYP*L6
1558 TpCDP*L25; 2 TpCDP*L6; 1629 TpDFP*L25; 18 TpDPQ
2 TpDPQ*L20; 1558 TpDPQ*L31; 9 TpDPQ*L34; 9 TpDPQ*L36
61 TpDPQ*L7; 2 TpDPQ*L8; 3 TpFYP*L1; 25 TpHCQ*L31
4 TpHDF*L7; 2 TpOPQ*L23; 270 TpOPQ*L31; 13 TpOPQ*L34
1 TpOPQ*L35; 34 TpOPQ*L4; 12 TpOPQ*L7
```

There are 83 positive integer entries. The exact upper bound (33) is

`-460061911143/13000000000000`.

### Leaf R2pmmm

This is terminal leaf 5 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCP DP 1
via X OCZ DZ 1
via X OCY DP 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHY YQ 1
via Q OHP YX -1
via Y OCP PQ 1
via X OCY PQ 1
via Y OCQ DQ 1
via X OCY DQ 1
```

```c1-factors
B0 triangle OHP 2 ZQ
B1 triangle OHQ 1 Z
B2 drop p OHP 2 ZQ
B3 drop q OCP 2 YX
B4 drop l OHQ 1 Z
B5 drop m OCQ 2 YX
B6 triangle HCX 1 Y
B7 triangle CXP 1 Y
B8 triangle DFQ 1 P
B9 spread OCPH YQ CH 1 1457/250
B10 quad OCDQ 2 YX
B11 quad OCPQ 2 YX
B12 quad HXCP 2 YQ
B13 quad HXCQ 1 Y
B14 quad HXYP 1 Q
```

```c1-sum
3 B0*L26; 35 B0*L33; 3 B0*L36; 13 B0*L7
12 B1*L23; 3 B10*B2; 6 B11*L1; 35 B12*L18
1 B13*L10; 5 B13*L23; 6 B14*L18; 1 B2*B3*L5
9 B2*L1*L25; 63 B2*L16*L33; 14 B2*L23*L33; 11 B2*L26
13 B2*L26*L36; 11 B2*L28; 5 B2*L30*L31; 186 B2*L33
19 B2*L33*L36; 19 B2*L33*L37; 2 B2*L4*L23; 3 B2*L4*L26
10 B2*L5*L22; 14 B2*L6*L26; 31 B2*L7*L30; 4 B2*TpHCQ
2 B3*B3*L28; 3 B3*L1*L31; 401 B3*L11*L16; 59 B3*L16*L16
34 B3*L18; 31 B3*L3*L36; 3 B3*L3*L7; 63 B3*L9*L16
14 B3*L9*L23; 2 B3*TmHCY; 13 B3*TpDFP; 16 B4*L23
6 B4*L23*L31; 49 B4*L5*L23; 5 B4*L5*L7; 24 B4*TmHFP
5 B4*TpDFP; 4 B5*L3*L4; 53 B5*L7*L23; 9 B5*L7*L30
4 B5*L7*L31; 7 B5*L7*L7; 13 B5*TpCDF; 29 B6*L10
54 B7*L1; 23 B7*L10; 8 B8*B3; 4 B9*L1
32 L1*L16*L37; 5 L1*L20*L25; 29 L1*L4*L6; 16 L1*L6
24 L1*L6*L7; 43 L1*L9*L16; 136 L1*L9*L22; 138 L10*L17
360 L10*L17*L17; 20 L10*L17*L36; 307 L11*L16*L16; 18 L17*L18
24 L17*L18*L35; 17 L17*L23*L23; 4 L28*L28*L34; 31 L3*L11*L16
129 L3*L11*L22; 5 L3*L22*L27; 14 L3*L22*L34; 90 L3*L22*L36
19 L3*L23*L28; 21 L3*L23*L33; 1 L3*L4*L26; 3 L3*L5*L27
6 L33*L33; 36 L5*L7*L7; 13 L7*L23*L23; 5 L7*L23*L30
4 L9*L17*L17; 63 L9*L22*L33; 5 L9*L33; 35 TmFPQ
10 TmFPQ*L30; 6 TmFPQ*L31; 47 TmFPQ*L5; 5 TmFPQ*L7
191 TmHCY*L22; 3 TmHCY*L26; 53 TmHCY*L28; 31 TmHFP*L4
25 TmHFP*L7; 25 TmHPQ*L6; 16 TmOHX*L3; 64 TmOYX*L11
112 TmOYX*L17; 494 TmOYX*L22; 180 TmYXP; 62 TmYXP*L10
63 TmYXP*L16; 14 TmYXP*L23; 57 TmYXP*L36; 18 TmYXP*L37
61 TpDFP*L27; 1 TpDFP*L29; 36 TpDFP*L7; 2 TpHCQ*L5
3 TpHYQ*L36; 6 TpOCP*L1; 27 TpOCY*L1; 26 TpODP*L1
2 TpODQ*B2; 80 TpOYP*L18
```

There are 118 positive integer entries. The exact upper bound (33) is

`-27075939209/1000000000000`.

### Leaf R2pmmp

This is terminal leaf 6 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCP DP 1
via X OCZ DZ 1
via X OCY DP 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHY YQ 1
via Y OCP PQ 1
via X OCY PQ 1
via Y HXP DX -1
via Y OCQ DQ 1
via X OCY DQ 1
```

```c1-factors
B0 triangle OCQ 2 YX
B1 drop p OHP 2 ZQ
B2 drop q OCP 2 YX
B3 drop l OHQ 1 Z
B4 drop m OCQ 2 YX
B5 triangle OXP 1 Y
B6 triangle HCZ 1 Y
B7 triangle HXP 2 YQ
B8 triangle DFQ 1 P
B9 quad HYDF 2 PQ
B10 quad HXDF 3 YPQ
```

```c1-sum
3 B0*L7; 91 B1*L1*L21; 42 B1*L1*L22; 7 B1*L1*L27
9 B1*L1*L30; 60 B1*L1*L37; 1 B1*L16*L34; 1 B1*L18*L34
81 B1*L7*L23; 69 B10*L31; 25 B2*B2*L31; 1 B2*B2*L7
26 B2*B3*L31; 10 B2*L17*L31; 10 B2*L3*L7; 10 B2*L7*L21
1 B2*TmHPQ; 1 B3*L15*L30; 43 B3*L23*L30; 12 B3*L3*L23
12 B3*L3*L4; 66 B3*L5*L23; 6 B3*L6*L15; 12 B3*L6*L23
96 B3*L7*L30; 96 B3*TmHFP; 39 B4*L1*L21; 42 B4*L21*L31
6 B4*L31; 29 B4*L7; 10 B4*L7*L16; 119 B4*L7*L23
54 B4*L7*L36; 10 B4*TpCDF; 111 B5*L23; 9 B5*L27
14 B5*L35; 5 B6*B3; 108 B7*L22; 9 B7*L26
10 B7*L30; 183 B7*L37; 2 B7*L5; 65 B7*L6
3 B8*L31; 2 B9*L31; 250 L1*L17*L20; 78 L1*L17*L22
10 L1*L17*L25; 9 L1*L17*L26; 10 L1*L17*L30; 70 L1*L17*L31
3 L1*L17*L37; 127 L1*L2*L20; 3 L1*L20*L25; 67 L1*L21*L23
59 L1*L6*L20; 6 L1*L6*L37; 7 L1*L7*L23; 2 L10*L14*L31
2 L12*L26*L30; 2 L14*L25*L31; 1 L14*L30*L31; 3 L16*L23*L23
70 L16*L23*L31; 162 L16*L30*L31; 3 L18*L20*L23; 170 L18*L21*L31
12 L18*L23; 1 L21*L28*L35; 12 L28*L30*L31; 86 L3*L18*L20
26 L3*L4*L23; 21 L3*L4*L4; 2 L30*L31*L34; 12 L4*L17*L23
28 L4*L5*L7; 37 L5*L24*L31; 75 L5*L7*L21; 71 L5*L7*L23
1 L7*L10*L21; 1 L7*L10*L30; 1 L7*L15*L30; 1 L7*L16*L30
2 L7*L18; 64 L7*L30*L31; 1 L7*L30*L35; 7 L7*L7*L30
9 TmCXP*L1; 2 TmDXP*L1; 103 TmDXP*L31; 2 TmDYP*L31
17 TmFPQ; 10 TmFPQ*L16; 92 TmFPQ*L20; 1 TmFPQ*L23
54 TmFPQ*L30; 54 TmFPQ*L5; 3 TmFPQ*L6; 2 TmHCY*L14
231 TmHFP*L16; 10 TmHFP*L28; 63 TmHFP*L4; 10 TmHPQ*L17
5 TmHPQ*L2; 92 TmHPQ*L21; 2 TmOFY*L15; 12 TmOYX*L21
16 TmOYX*L23; 2 TmOZQ*L30; 4 TmOZQ*L6; 24 TpCDF*L5
2 TpCDP*L16; 25 TpCDP*L22; 10 TpCDP*L27; 51 TpCDP*L4
253 TpCDP*L6; 1 TpCDX*L5; 2 TpCYZ; 3 TpCYZ*L36
9 TpDFP; 10 TpDFP*L19; 25 TpDFP*L22; 118 TpDFP*L27
2 TpDFP*L28; 63 TpDFP*L36; 242 TpDFP*L37; 51 TpDFP*L4
3 TpDFP*L6; 48 TpDPQ*L31; 83 TpDPQ*L7; 1 TpDYX*L7
10 TpHCQ*L23; 24 TpOCX; 336 TpOCX*L20; 12 TpOCX*L5
89 TpODP*L31; 14 TpOYP; 17 TpOYP*L17; 17 TpOYP*L19
2 TpOYP*L36; 2 TpOYP*L37; 29 TpYXP; 1 TpYXP*L36
1 TpYXP*L6
```

There are 145 positive integer entries. The exact upper bound (33) is

`-18410217851/1625000000000`.

### Leaf R2pmp

This is terminal leaf 7 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCP DP 1
via X OCZ DZ 1
via Z OCQ DP 1
via Z OCQ DQ 1
via X OCY DP 1
via X OCZ DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHY YQ 1
via Y OCP PQ 1
via Z OCQ PQ 1
via X OCY PQ 1
via Y OCQ DQ 1
mesh OCQYXZ -1
```

```c1-factors
B0 mesh OCQYXZ -1 2
B1 drop p OHP 2 ZQ
B2 drop q OCP 2 YX
B3 drop m OCQ 3 YZX
B4 triangle OCQ 3 YZX
B5 triangle ODQ 1 Z
B6 triangle HCP 1 Q
B7 triangle DFQ 1 P
B8 spread OCPH YQ OP 1 1457/250
B9 quad OCYZ 1 X
B10 quad OCPQ 3 YZX
B11 quad HYCP 1 Q
B12 quad HZCP 2 YQ
```

```c1-sum
259 B0*L22; 3 B0*L30; 150 B1*B3; 90 B1*B3*L36
108 B1*B3*L6; 105 B1*L1*L25; 12 B1*TpCDF; 18 B10*B3
46 B10*L1; 349 B11*B3; 106 B11*L1; 14 B12*B3
169 B2*L1*L25; 91 B2*L3; 15 B2*L3*L24; 65 B2*L3*L30
104 B2*L3*L36; 77 B2*TmHCY; 67 B2*TpCDF; 17 B3*L1*L25
59 B3*L3; 21 B3*L3*L20; 95 B3*L3*L36; 144 B3*L5*L7
10 B3*L5*L9; 20 B3*L7*L24; 164 B3*L7*L7; 137 B3*TpCDF
34 B4*B1; 2 B5*L1; 18 B6*L1; 20 B7*B1
164 B7*L7; 5 B8*L1; 1 B9; 13 B9*L36
20 L1*L24*L24; 142 L1*L3; 12 L1*L3*L7; 2 L1*L4*L20
89 L1*L6*L20; 13 L1*L6*L25; 2 L1*L9; 24 L1*L9*L36
29 L3*L10; 39 L3*L4; 34 L3*L4*L20; 132 L3*L4*L26
10 L5*L10*L24; 71 L5*L7*L23; 183 L5*L7*L24; 149 L5*L7*L7
2 L9*L14; 196 TmCYP*L1; 11 TmCYQ*L14; 9 TmDYQ*L1
160 TmFPQ; 20 TmFPQ*L24; 13 TmFPQ*L37; 7 TmFPQ*L5
21 TmHCY*L14; 181 TmHCY*L22; 87 TmHFP*L24; 334 TmHPQ
20 TmHPQ*L25; 18 TmHPQ*L26; 132 TmHPQ*L36; 7 TmHPQ*L4
89 TmHPQ*L6; 132 TpCDF*L5; 15 TpCDF*L6; 132 TpCDP*L4
7 TpCDP*L6; 95 TpCPQ*L1; 25 TpCYZ*L36; 115 TpDFP
20 TpDFP*L25; 22 TpDFP*L37; 132 TpDFP*L4; 39 TpDPQ*L7
342 TpHCQ*L10; 381 TpHCQ*L23; 13 TpHCQ*L7; 11 TpHYQ*L14
259 TpHYQ*L23; 7 TpHYQ*L30; 121 TpHYQ*L36; 6 TpOZQ
13 TpOZQ*L36; 202 TpYPQ*L1
```

There are 90 positive integer entries. The exact upper bound (33) is

`-918885032319/91000000000000`.

### Leaf R2pp

This is terminal leaf 8 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
mesh OCPYXZ -1
via Q OHP OD 1
via Y OCP OQ -1
via Z OCP OQ -1
via X OCY OQ -1
via Y OCP DP 1
via X OCZ DZ 1
via Z OCP DP 1
via X OCY DP 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHY YQ 1
via Q OHP YX -1
via Y OCP PQ 1
via Z OCP PQ 1
via X OCY PQ 1
via Y OCQ DQ 1
via Z OCQ DQ 1
via X OCY DQ 1
mesh OCQYXZ -1
```

```c1-factors
B0 quad OCQH 3 YZX
B1 mesh OCPYXZ -1 1
B2 mesh OCPYXZ -1 2
B3 mesh OCQYXZ -1 1
B4 drop p OHP 1 Q
B5 drop q OCP 3 YZX
B6 drop m OCQ 3 YZX
B7 drop m OCQ 2 YZ
B8 triangle OCZ 1 X
B9 triangle OYP 1 Z
B10 triangle HCP 1 Q
B11 triangle DFQ 1 P
B12 quad OZPH 1 Q
B13 quad OCDP 3 YZX
B14 quad OCYZ 1 X
B15 quad HZCF 1 Y
B16 quad HYCP 1 Q
B17 spread HZCP YQ ZP 1 1457/250
B18 quad HYDF 2 PQ
```

```c1-sum
51 B0*L23; 10 B1*L9; 74 B10*B6; 30 B10*L10
89 B11*B5; 7 B12*B6; 5 B13*L1; 3 B13*L6
3 B14; 14 B14*L20; 3 B15*L1; 6 B16*L14
3 B16*L6; 1 B17*L30; 5 B17*L36; 1 B18*B5
7 B2*L15; 39 B2*L36; 12 B2*L37; 8 B3*L22
1 B3*L30; 5 B3*L36; 23 B4*L7*L30; 12 B5*L13*L36
7 B5*L4*L6; 5 B5*TpCYZ; 4 B6*L4; 5 B6*L7*L30
1 B6*L7*L36; 1 B6*L7*L7; 14 B6*TpCDF; 12 B7*L3
1 B8*L23; 14 B9*L13; 16 EF*L1; 12 L1*L1*L21
5 L1*L21*L37; 4 L1*L9*L22; 1 L23*L30*L31; 3 L29*L29*L29
2 L3*L4*L6; 4 L7*L23*L29; 13 L7*L23*L36; 20 L7*L7*L30
4 L9*L13*L36; 2 M1*L11; 6 M1*L34; 60 TmFPQ
20 TmFPQ*L30; 62 TmFPQ*L5; 1 TmFPQ*L7; 2 TmHCY
36 TmHCY*L22; 3 TmHCY*L31; 6 TmHCY*L37; 53 TmHFP*L24
7 TmHFP*L31; 12 TmHFP*L7; 3 TmHFQ*L0; 53 TmHFQ*L21
26 TmHPQ; 5 TmHPQ*L30; 1 TmHPQ*L36; 54 TmHPQ*L6
7 TpCDQ*L1; 49 TpCPQ*L1; 91 TpDFP*L27; 20 TpDFP*L7
33 TpHCQ*L23; 12 TpHCQ*L30; 7 TpOPQ*L14; 1 TpOPQ*L4
17 TpOZP; 4 TpOZP*L35; 12 TpOZP*L36
```

There are 75 positive integer entries. The exact upper bound (33) is

`-71454691319/6500000000000`.

### Leaf R3

This is terminal leaf 9 of 42.

```c1-geometry
imp CFP 1 ear
imp CFQ 1 ear
via X OCZ DZ 1
via Z OHY FY -1
via Z OHX FX -1
via Y OCF PQ 1
via X OCF PQ 1
```

```c1-factors
B0 quad OCQH 3 YZX
B1 ear HCF_fmin
B2 triangle HFQ 1 P
```

```c1-sum
30 B0*L0; 34 B0*L21; 24 B0*L24; 44 B0*L27
19 B0*L36; 134 B1*TpHCQ; 181 B2*L20; 107 L0*L1*L21
41 L0*L1*L24; 49 L0*L27*L31; 7 L0*L7*L21; 11 L0*L7*L24
66 L0*L7*L27; 113 L0*L7*L36; 7 L1*L2*L31; 59 L1*L20*L20
107 L1*L20*L23; 11 L1*L21*L21; 46 L1*L21*L22; 43 L1*L23*L25
66 L1*L24*L25; 106 L1*L25*L27; 60 L1*L25*L31; 7 L21*L30*L31
41 L22*L30*L31; 44 L27*L27*L31; 92 L3*L21*L23; 27 L3*L21*L26
57 L3*L23*L24; 38 L3*L23*L27; 16 L3*L27*L31; 21 L4*L7*L25
71 L7*L20*L22; 21 L7*L21*L30; 41 L7*L22*L27; 12 L7*L22*L36
69 L7*L24*L27; 51 L7*L27*L36; 278 TmHFP*L25; 116 TmHFP*L29
73 TmHPQ*L20; 158 TmHPQ*L23; 69 TmHPQ*L24; 151 TmHPQ*L27
67 TmHPQ*L31; 150 TmHPQ*L7; 41 TpCDF*L22; 7 TpCDF*L25
93 TpCFP*L21; 7 TpDPQ*L31; 21 TpDPQ*L7; 42 TpFPQ
166 TpFPQ*L20; 69 TpFPQ*L24; 44 TpFPQ*L27; 169 TpFPQ*L36
117 TpFPQ*L37; 59 TpHCQ*L21; 37 TpHCQ*L22; 24 TpHCQ*L25
15 TpHCQ*L3; 18 TpOPQ*L1; 93 TpOPQ*L21; 158 TpOPQ*L23
107 TpOPQ*L27; 158 TpOPQ*L6
```

There are 66 positive integer entries. The exact upper bound (33) is

`-812320291/45500000000`.

### Leaf R4

This is terminal leaf 10 of 42.

```c1-geometry
imp HDP -1 ear
imp HDQ -1 ear
via X OCZ DZ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHD PQ -1
```

```c1-factors
B0 quad OCQH 3 YZX
B1 ear HCD_dmin
B2 triangle CDQ 1 P
```

```c1-sum
33 B0*L2; 34 B0*L23; 45 B0*L25; 24 B0*L26
18 B0*L37; 134 B1*TpHCQ; 179 B2*L22; 93 L1*L21*L23
36 L1*L21*L25; 57 L1*L21*L26; 24 L1*L23*L24; 13 L1*L25*L30
51 L2*L25*L30; 98 L2*L3*L23; 41 L2*L3*L26; 7 L2*L5*L23
66 L2*L5*L25; 12 L2*L5*L26; 115 L2*L5*L37; 41 L20*L30*L31
7 L23*L30*L31; 45 L25*L25*L30; 50 L3*L20*L23; 108 L3*L21*L22
47 L3*L21*L27; 59 L3*L22*L22; 10 L3*L23*L23; 106 L3*L25*L27
68 L3*L26*L27; 60 L3*L27*L30; 73 L5*L20*L22; 42 L5*L20*L25
12 L5*L20*L37; 21 L5*L23*L31; 69 L5*L25*L26; 51 L5*L25*L37
21 L5*L6*L27; 42 TmDPQ; 166 TmDPQ*L22; 45 TmDPQ*L25
69 TmDPQ*L26; 117 TmDPQ*L36; 169 TmDPQ*L37; 7 TmFPQ*L30
21 TmFPQ*L5; 93 TmHDP*L23; 159 TmOPQ*L21; 93 TmOPQ*L23
107 TmOPQ*L25; 18 TmOPQ*L3; 1 TmOPQ*L36; 158 TmOPQ*L4
277 TpCDP*L27; 116 TpCDP*L29; 159 TpCPQ*L21; 73 TpCPQ*L22
151 TpCPQ*L25; 69 TpCPQ*L26; 67 TpCPQ*L30; 149 TpCPQ*L5
12 TpHCQ*L1; 38 TpHCQ*L20; 59 TpHCQ*L23; 24 TpHCQ*L27
41 TpHDF*L20; 7 TpHDF*L27
```

There are 66 positive integer entries. The exact upper bound (33) is

`-2384840547/91000000000`.

### Leaf R5m

This is terminal leaf 11 of 42.

```c1-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
via Q OCP OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via X OCZ DZ 1
via Z OHY FY -1
via Y OHP FP -1
via Z OHX FX -1
via Z OHY FP -1
via X OCY YQ -1
via Y OHP PQ -1
via Z OHY PQ -1
via Y OHQ FQ -1
via Z OHY FQ -1
```

```c1-factors
B0 quad OCQH 3 YZX
B1 triangle OHQ 2 YZ
B2 drop p OHP 2 YZ
B3 drop l OHQ 2 YZ
B4 spread OCPH YQ OP 1 1457/250
B5 quad OCPY 2 XQ
B6 quad OQPF 1 Y
B7 quad CDFY 2 PQ
```

```c1-sum
26 B0*L21; 5 B1*L3; 26 B2*L1*L11; 20 B2*L27*L34
34 B2*L3*L35; 30 B2*L34*L37; 33 B2*TmHCY; 26 B3*L1*L21
790 B3*L11*L23; 67 B3*L11*L35; 102 B3*L3; 51 B3*L3*L22
76 B3*L3*L35; 448 B3*L3*L4; 174 B3*L4*L11; 524 B3*L5*L21
339 B3*L5*L23; 26 B3*L5*L35; 3 B3*L5*L7; 3 B3*TmHCY
3 B3*TpHDF; 66 B4*L34; 778 B5*B3; 156 B5*L24
118 B5*L27; 512 B5*L35; 98 B5*L7; 144 B6*L3
197 B6*L34; 323 B7*B2; 29 B7*L11; 157 B7*L5
37 B7*L6; 33 L1*L20*L34; 28 L1*L3*L21; 20 L1*L34
5 L1*L6*L31; 1 L1*L6*L34; 6 L1*L6*L7; 1 L10*L31*L34
3 L11*L27*L34; 391 L20*L34; 4 L20*L34*L37; 159 L21*L26*L31
399 L21*L26*L35; 417 L22*L24*L34; 127 L22*L34; 20 L26*L31*L34
145 L26*L34; 7 L26*L35*L35; 403 L3*L11*L21; 51 L3*L11*L35
339 L3*L23*L26; 76 L3*L25*L34; 399 L3*L4*L22; 447 L3*L4*L35
125 L3*L4*L5; 71 L3*L4*L6; 66 L3*L5*L23; 43 L34
142 L4*L22*L34; 89 L4*L6*L11; 125 L5*L21*L31; 473 L5*L21*L35
142 L5*L23*L35; 127 L5*L5*L21; 157 L5*L5*L31; 31 L5*L7*L21
40 L6*L20*L34; 137 L6*L21*L27; 40 L6*L21*L35; 16 L6*L31*L35
205 L7*L21*L26; 14 L7*L31*L34; 2 L7*L34*L35; 699 TmCYQ*L21
118 TmCYQ*L22; 71 TmCYQ*L35; 20 TmFPQ*L34; 7 TmHCY*L7
132 TmOPQ*L3; 201 TmOYP; 446 TmOYP*L11; 260 TmOYP*L25
118 TmOYP*L31; 173 TmOYP*L37; 284 TmOYP*L4; 578 TmOYP*L9
160 TmYPQ*L3; 405 TpCDP*L26; 328 TpCDP*L35; 127 TpCDP*L5
45 TpCDP*L6; 119 TpCDP*L8; 66 TpCDQ*L23; 405 TpCPQ*L4
217 TpDFP*L11; 524 TpDFP*L25; 384 TpDPQ; 182 TpDPQ*L10
448 TpDPQ*L31; 26 TpDPQ*L35; 76 TpDPQ*L7; 23 TpFYQ*L21
11 TpHDF*L31; 57 TpOCQ*L34
```

There are 106 positive integer entries. The exact upper bound (33) is

`-91341861657013/7000000000000000`.

### Leaf R5p

This is terminal leaf 12 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
via Y OCP DP 1
via X OCZ DZ 1
via X OCY DP 1
via Z OHY FY -1
via Z OHX FX -1
```

```c1-factors
B0 quad OCQH 3 YZX
B1 triangle OCP 3 YXQ
B2 drop q OCP 3 YXQ
B3 triangle DFQ 1 P
```

```c1-sum
164 B0*L30; 3 B0*L5; 2 B1*L4; 13 B2
175 B2*L1; 8 B2*L1*L7; 8 B2*L25*L30; 8 B2*L27
10 B2*L3; 9 B2*L4; 215 B2*L7; 10 B2*L7*L37
1012 B2*TmHFQ; 1024 B2*TpDFQ; 173 B2*TpHCD; 1 B3*L21
4 L0*L6*L27; 180 L1*L24*L30; 16 L1*L3*L30; 4 L1*L5*L24
4 L3*L26*L30; 127 L3*L30; 4 L3*L5*L26; 8 L3*L6*L27
1 L5*L7*L21; 4 L5*L7*L27; 223 L7*L20*L30; 5 L7*L27*L30
222 L7*L7*L30; 9 TmFPQ; 1020 TmFPQ*L30; 4 TmFPQ*L5
1020 TmHFP*L27; 222 TmHFP*L7; 1 TmOPQ; 177 TmOPQ*L30
7 TmOPQ*L5; 10 TmOPQ*L6; 176 TpCPQ*L30; 10 TpCPQ*L6
1032 TpDFP*L27; 222 TpDFP*L7; 8 TpDPQ; 1 TpDPQ*L6
17 TpHCQ*L30
```

There are 45 positive integer entries. The exact upper bound (33) is

`-231133789/13000000000`.

### Leaf R6m

This is terminal leaf 13 of 42.

```c1-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp CFP 1 ear
imp CFQ 1 ear
via Q OCP OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via X OCZ DZ 1
via Z OHY FY -1
via Y OHP FP -1
via Y OHP FQ -1
via Z OHX FX -1
via Z OHY FP -1
via Z OHY FQ -1
via X OCY YQ -1
via Y OHP PQ -1
via Z OHY PQ -1
```

```c1-exclude
four OCF YXPQ
```

### Leaf R6pm

This is terminal leaf 14 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp CFP 1 ear
imp CFQ 1 ear
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
mesh OCPQXY -1
via Y OCP DP 1
via X OCZ DZ 1
via X OCY DP 1
via Z OHY FY -1
via Y OCF FP 1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via X OCF FP 1
via Z OHY PQ -1
via Y HXP DX -1
via Y OXP FX -1
```

```c1-factors
B0 mesh OCPQXY -1 1
B1 ear HCF_fmin
B2 drop q OCP 3 YXQ
B3 triangle CZP 2 YQ
B4 triangle CXP 1 Q
B5 quad OCDP 3 YXQ
B6 quad OXFP 1 Y
B7 quad HZCD 1 Y
B8 quad HYCF 2 PQ
B9 quad CPYX 1 Q
```

```c1-sum
131 B0*L34; 73 B1*L1*L14; 484 B1*L1*L17; 1333 B1*L1*L9
124 B1*L34*L34; 1214 B1*TpCDF; 12 B2*L1*L31; 195 B2*L14*L34
195 B2*L14*L35; 325 B2*L3*L11; 210 B2*L3*L15; 219 B2*L3*L17
32 B2*L3*L34; 211 B2*L3*L36; 655 B2*L3*L6; 474 B2*L7*L14
601 B2*L7*L35; 403 B2*TmHYX; 304 B2*TmOFY; 136 B2*TpCDF
424 B2*TpYZX; 814 B3*L11; 1766 B3*L17; 147 B3*L29
76 B3*L30; 994 B3*L37; 362 B4*L12; 593 B5*L3
20 B6*L1; 20 B6*L14; 344 B6*L35; 44 B7*L18
134 B8*L18; 1142 B9*L3; 314 CAPZXP*L3; 43 L1*L11*L35
14 L1*L12; 25 L1*L14*L17; 37 L1*L15*L31; 1227 L1*L17*L21
382 L1*L17*L34; 376 L1*L20*L35; 50 L1*L34*L34; 61 L1*L4*L21
28 L1*L6*L14; 1292 L1*L6*L23; 12 L1*L7*L34; 618 L1*L8*L34
136 L1*L9*L14; 287 L1*L9*L16; 224 L1*L9*L21; 250 L11*L11*L17
355 L11*L12; 390 L11*L12*L22; 42 L11*L18; 308 L12*L17*L22
25 L12*L19*L34; 22 L12*L33*L35; 309 L13*L18*L21; 139 L14*L28*L35
480 L18*L20*L31; 313 L3*L11*L15; 79 L3*L11*L16; 484 L3*L11*L22
239 L3*L14*L35; 303 L3*L15*L17; 295 L3*L15*L20; 98 L3*L22*L34
654 L3*L3*L4; 66 L3*L4*L14; 30 L3*L4*L17; 544 L3*L4*L20
93 L3*L4*L22; 130 L3*L4*L30; 11 L3*L4*L36; 226 L3*L7
87 L3*L7*L11; 369 L3*L7*L14; 476 L3*L7*L23; 72 L5*L12*L22
8 L5*L14*L16; 156 L5*L23*L34; 157 L5*L23*L35; 14 L5*L5*L20
365 L5*L5*L31; 49 L5*L5*L7; 30 L5*L7*L17; 126 L5*L7*L20
95 L5*L7*L30; 231 L5*L7*L7; 501 L6*L18*L21; 603 L7*L11*L14
783 L7*L11*L17; 57 L7*L11*L23; 353 L7*L14*L16; 20 L7*L14*L28
76 L7*L14*L30; 251 L7*L18*L20; 373 L7*L18*L37; 213 L7*L33*L34
125 L7*L35*L35; 752 L7*L7*L10; 504 L7*L9*L18; 200 L8*L12*L19
58 L9*L12; 23 L9*L14*L35; 1095 TmCXP*L12; 1445 TmFYP*B1
1129 TmFYP*L10; 603 TmFYP*L14; 138 TmFYP*L16; 558 TmFYP*L28
89 TmFYP*L3; 313 TmFYP*L4; 827 TmFYP*L9; 169 TmHCY*L18
9 TmHDZ*L18; 1390 TmHFP; 224 TmHFP*L14; 532 TmHFP*L17
145 TmHFP*L19; 198 TmHFP*L33; 130 TmHFP*L4; 1297 TmHFP*L9
100 TmHYX*L11; 144 TmHYX*L15; 696 TmHYX*L21; 171 TmHYX*L22
670 TmHYX*L34; 49 TmHYX*L7; 803 TmOFY*L11; 296 TmOFY*L17
213 TmOFY*L20; 115 TmOFY*L34; 693 TmOFY*L7; 118 TmOHZ*L19
213 TmYZP*L18; 30 TpCDF*L17; 1319 TpCDF*L21; 33 TpCDF*L22
61 TpCDF*L3; 155 TpCDF*L30; 339 TpCDF*L5; 212 TpCFP*L18
29 TpCFX*L12; 596 TpCZX*L2; 1766 TpCZX*L21; 211 TpCZX*L23
170 TpCZX*L29; 373 TpCZX*L31; 239 TpCZX*L34; 10 TpCZX*L5
144 TpDFP; 313 TpDFP*L11; 76 TpDFP*L14; 14 TpDFP*L30
1275 TpDFP*L31; 56 TpDFP*L36; 170 TpDFP*L7; 185 TpFYX*L1
227 TpHYP*L18; 367 TpOCX; 280 TpOCX*L13; 699 TpOCX*L21
54 TpOCX*L5; 1354 TpOFP*L1; 50 TpOFP*L3; 345 TpYXP
302 TpYXP*L11; 211 TpYXP*L14; 1232 TpYXP*L31; 696 TpYXP*L34
575 TpYXP*L36; 23 TpYZX*L35
```

There are 174 positive integer entries. The exact upper bound (33) is

`-5233239882797639/91000000000000000`.

### Leaf R6pp

This is terminal leaf 15 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp CFP 1 ear
imp CFQ 1 ear
via Y OCP DP 1
via Y OCQ DQ 1
via X OCZ DZ 1
via X OCY DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
```

```c1-exclude
cluster OCP Q OCQ YX
```

### Leaf R7m

This is terminal leaf 16 of 42.

```c1-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp OFP -1 cluster
via Q CDF OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via X OCZ DZ 1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y HXP XQ 1
```

```c1-factors
B0 triangle OHC 3 YZX
B1 triangle CDF 2 PQ
B2 triangle OHP 2 YZ
B3 triangle OHQ 2 YZ
B4 ear CDF_dmin
B5 ear CDF_fmax
B6 drop p OHP 2 YZ
B7 quad HCDF 2 PQ
B8 drop l OHQ 2 YZ
B9 triangle CDP 1 Q
B10 quad OPFH 2 YZ
```

```c1-sum
52 B0*L5; 5 B1*L25; 6 B1*L26; 2 B1*L30
8 B10*L3; 59 B2*L4; 50 B2*L7; 5 B3*L5
49 B4*B6*L37; 4 B4*L3; 5 B4*L3*L27; 3 B4*L6*L20
4 B4*L6*L22; 1 B4*L6*L27; 47 B5*L30; 41 B5*L5
36 B6*B7; 4 B6*L1; 2 B6*L1*L4; 19 B6*L11
7 B6*L3; 6 B8*L5*L30; 58 B9*L27; 2 B9*L35
45 B9*L36; 1 B9*L4; 40 B9*L7; 4 L1*L3*L27
9 L11*L23*L23; 21 L2*L22*L30; 2 L21*L30*L35; 8 L22*L23*L34
10 L22*L34; 35 L3*L23*L36; 12 L3*L4*L23; 3 L3*L7*L23
3 L34; 5 L5*L5*L21; 1 TmCFP*L34; 3 TmCFP*L6
11 TmCPQ*L36; 47 TmCPQ*L4; 5 TmCPQ*L7; 9 TmFPQ
6 TmFPQ*L37; 5 TmFPQ*L4; 3 TmHCY*L23; 35 TmHFP*L3
14 TmHPQ*L6; 21 TmOYP; 5 TmOYP*L36; 1 TmOYP*L7
58 TpCDQ*L22; 80 TpDFP*L3; 8 TpDPQ; 6 TpDPQ*L30
5 TpDPQ*L36; 5 TpDPQ*L37; 9 TpDPQ*L6; 32 TpHDF
14 TpHDF*L24; 42 TpHDF*L37; 2 TpHDF*L4
```

There are 63 positive integer entries. The exact upper bound (33) is

`-35101026603/1000000000000`.

### Leaf R7pmm

This is terminal leaf 17 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via P CDF OF -1
via Y OCP DP 1
via X OCZ DZ 1
via X OCY DP 1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1-exclude
cap DFY PQ
```

### Leaf R7pmpmmm

This is terminal leaf 18 of 42.

```c1-geometry
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
mesh OHQYZX 1
via P CDF OF -1
via Y OCP DP 1
via X OCZ DZ 1
via Z OHD DQ -1
via X OCY DP 1
via X OHQ DQ -1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1-factors
B0 triangle CDF 2 PQ
B1 mesh OHQYZX 1 2
B2 triangle OHP 1 Z
B3 triangle OPQ 2 YX
B4 ear CDF_dmin
B5 ear CDF_fmax
B6 drop p OHP 1 Z
B7 quad OCQH 3 YZX
B8 drop l OHQ 3 YZX
B9 triangle HDQ 1 P
B10 quad HYQD 1 P
```

```c1-sum
10 B0*B8; 4 B0*L27; 6 B1; 3 B10*L3
10 B2*L3; 20 B3; 10 B3*L37; 3 B4*L3
19 B5*L20*L30; 10 B5*L24*L30; 22 B5*L30; 3 B5*L5
39 B6*B7; 10 B6*L30*L31; 9 B6*L7*L30; 22 B9*L3
3 L23*L30*L31; 3 L25*L30; 25 L25*L30*L37; 20 L3*L4*L20
4 L5*L23*L31; 10 TmCFP*L25; 5 TmCFP*L26; 3 TmCFP*L30
5 TmCFQ*L23; 12 TmCPQ; 4 TmCPQ*L4; 3 TmCYQ*L0
1 TmFPQ; 4 TmFPQ*L5; 3 TmHCY*L27; 59 TmHDP*B5
31 TmHDP*B8; 8 TmHDP*L7; 57 TmHFP; 10 TmHFP*L24
10 TmODQ*L3; 39 TpCDQ; 31 TpCDQ*L20; 1 TpHCQ*L34
29 TpHDF*L21
```

There are 41 positive integer entries. The exact upper bound (33) is

`-22322689849/1000000000000`.

### Leaf R7pmpmmpm

This is terminal leaf 19 of 42.

```c1-geometry
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via X OCQ OD -1
via P CDF OF -1
via Y OCP DP 1
via Z OHD DX -1
via Z OHD DQ -1
via X OCY DP 1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y CXP FX 1
```

```c1-factors
B0 triangle CDF 2 PQ
B1 triangle OPQ 1 Y
B2 triangle OHQ 2 YZ
B3 ear CDF_dmin
B4 ear CDF_fmax
B5 drop p OHP 1 Z
B6 drop q OCP 2 YX
B7 drop l OHQ 2 YZ
B8 drop m OCQ 1 X
B9 triangle OHX 1 Z
B10 triangle CXP 1 Y
B11 triangle XPQ 1 Y
B12 spread OCDH XP CH -1 1457/250
B13 quad OXFH 1 Z
B14 quad OPFH 1 Z
B15 quad OCQY 1 X
B16 quad OQDP 1 Y
B17 quad OXQP 1 Y
B18 quad HQDF 1 P
```

```c1-sum
122 B0*L30; 89 B1*L18; 34 B10*L3; 6 B11*L1
40 B12*L3; 63 B13*B6; 14 B13*L11; 24 B14*L0
15 B14*L30; 92 B14*L33; 61 B15*B5; 72 B15*L17
16 B15*L33; 34 B16*L16; 36 B17*L16; 24 B18*B6
23 B2*L3; 63 B3*B6*L6; 8 B3*L3*L36; 11 B3*TmHCY
51 B4*L20*L30; 9 B4*L30*L35; 23 B4*L30*L36; 3 B4*L5*L25
19 B5*B7*L30; 13 B5*B8*L30; 3 B5*B8*L33; 13 B5*L0*L29
4 B5*L10*L17; 122 B5*L17*L30; 6 B5*L29*L30; 51 B5*L3*L26
4 B5*L30*L35; 101 B5*L8*L30; 8 B5*TmOYX; 23 B6*L1*L9
5 B6*L3*L24; 5 B6*L3*L29; 5 B6*L3*L35; 82 B6*L3*L36
19 B6*L5*L25; 5 B6*L6*L10; 51 B6*L6*L33; 45 B6*TmHCY
8 B6*TmOYX; 20 B6*TpCDQ; 37 B6*TpCFY; 76 B6*TpHDF
13 B7*L23*L30; 13 B7*L3*L36; 3 B7*L30*L34; 13 B7*TmHCY
50 B8*L0*L9; 14 B8*L1*L3; 50 B8*L10*L17; 21 B8*L5*L6
63 B9*L3; 3 B9*L34; 46 L0*L1*L6; 17 L1*L3*L25
6 L1*L5*L35; 25 L1*L6*L10; 8 L10*L17*L25; 7 L11*L18*L24
96 L16*L27*L34; 33 L17*L25*L30; 70 L18*L21; 17 L18*L27*L34
15 L18*L27*L35; 24 L21*L25*L30; 3 L22*L25*L33; 7 L27*L30*L34
8 L27*L30*L35; 30 L3*L11*L21; 38 L3*L11*L24; 22 L3*L16*L36
19 L3*L22*L27; 19 L3*L27*L35; 42 L3*L27*L36; 40 L3*L3*L4
34 L3*L4*L22; 26 L3*L9*L23; 2 L5*L16*L21; 1 L5*L17*L25
122 L5*L30*L31; 6 L7*L25*L33; 58 TmCFP*B8; 43 TmCFP*L30
89 TmCPQ*L11; 6 TmFPQ*L29; 22 TmFPQ*L33; 52 TmFPQ*L36
21 TmFPQ*L4; 9 TmFPQ*L9; 22 TmFYX*B8; 131 TmHCY*L16
68 TmHCY*L21; 50 TmHCY*L24; 69 TmHCY*L27; 199 TmHDP*B4
43 TmHDP*B7; 34 TmHDP*B8; 90 TmHDP*L17; 5 TmHDP*L34
100 TmHDP*L8; 144 TmHFP; 58 TmHFP*L27; 9 TmHFP*L34
28 TmHFP*L36; 32 TmHPQ*L16; 59 TmHPQ*L9; 8 TmOFY*L18
11 TmOYQ*L1; 16 TmOYQ*L11; 7 TmOYQ*L20; 23 TmOYQ*L37
15 TmOYQ*L4; 60 TmOYX*L2; 59 TmOYX*L22; 3 TmOYX*L25
107 TmOYX*L27; 15 TmYPQ*L1; 162 TmYXP; 68 TmYXP*L24
70 TmYXP*L26; 5 TmYXP*L36; 36 TmYXP*L37; 18 TpCDQ*L10
57 TpCDQ*L22; 6 TpCDQ*L6; 1 TpCDQ*L9; 9 TpDFP*L10
6 TpDFP*L29; 9 TpDYQ*L6; 2 TpHDF*L0; 148 TpHDF*L21
35 TpOXQ*L17; 68 TpOXQ*L20; 4 TpOXQ*L29; 24 TpOXQ*L34
62 TpOXQ*L37; 54 TpYXQ; 70 TpYXQ*L22
```

There are 143 positive integer entries. The exact upper bound (33) is

`-17747667531/500000000000`.

### Leaf R7pmpmmppm

This is terminal leaf 20 of 42.

```c1-geometry
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via X OCQ OD -1
via P CDF OF -1
via Y OCP DP 1
via Z OHD DX -1
via Z OHD DQ -1
via X OCY DP 1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OZQ DZ 1
via Y OXP DX -1
```

```c1-factors
B0 triangle CDF 2 PQ
B1 ear CDF_dmin
B2 ear CDF_fmax
B3 ear HCD_dmin
B4 drop p OHP 1 Z
B5 drop q OCP 2 YX
B6 drop l OHQ 2 YZ
B7 drop m OCQ 1 X
B8 triangle CDP 1 Q
B9 triangle ZXQ 1 Y
B10 spread OXPH YZ OP 1 1457/250
B11 spread OXPH YZ XH 1 1457/250
B12 quad OQDP 1 Y
B13 quad OXQZ 1 Y
B14 quad HZCD 3 YPQ
B15 quad HQDF 1 P
B16 quad HXPF 1 Y
B17 quad CDPY 1 Q
```

```c1-sum
403 B0*L3; 671 B0*L5; 3499 B1*B5*L3; 2259 B1*L1*L3
38 B1*L3*L14; 2 B1*L3*L17; 2460 B1*L3*L21; 1752 B1*L3*L25
173 B1*L3*L35; 2979 B1*L3*L5; 1191 B1*L3*L6; 1441 B1*L3*L8
14 B1*L6*L30; 2307 B1*L8*L30; 1732 B1*TmHCY; 4602 B1*TmOHZ
203 B10*L3; 78 B11*L30; 512 B12*L21; 85 B12*L23
1177 B12*L34; 1932 B12*L6; 261 B13*L30; 253 B14*L3
394 B15*L21; 1222 B15*L3; 404 B15*L34; 9 B16*L18
59 B17*L3; 6009 B2*B4*L30; 3956 B2*B5*L5; 4178 B2*B7*L30
16 B2*B7*L6; 280 B2*L11*L25; 465 B2*L3*L15; 10 B2*L30*L30
404 B2*L30*L34; 2926 B2*L5*L5; 127 B2*L5*L6; 280 B2*TmHCY
560 B2*TmOHZ; 685 B3*TmHCY; 512 B4*B4*L30; 844 B4*B5*L30
108 B4*B6*L18; 1349 B4*B7*L18; 1568 B4*L11*L30; 12 B4*L16*L30
467 B4*L18*L30; 906 B4*L25*L30; 629 B4*L3*L10; 512 B4*L3*L23
2723 B4*L30*L30; 969 B4*L30*L34; 1188 B4*L5*L18; 560 B4*TmOHZ
937 B5*B5*L3; 1024 B5*B5*L6; 108 B5*B6*L17; 10 B5*B6*L18
939 B5*B6*L30; 1360 B5*B7*L17; 5703 B5*L0*L3; 559 B5*L1*L12
11 B5*L17*L18; 469 B5*L17*L30; 940 B5*L3*L27; 111 B5*L3*L9
1177 B5*L5*L17; 1499 B5*L5*L25; 1568 B5*L5*L8; 2149 B5*L6*L30
559 B5*TmOHZ; 537 B5*TpCDQ; 1899 B6*L15*L30; 329 B6*L18*L30
83 B6*L5*L17; 34 B6*L5*L18; 2822 B6*L5*L30; 1072 B6*L6*L30
108 B6*TmHYX; 178 B7*L0*L3; 638 B7*L11*L17; 2121 B7*L3*L10
8438 B7*L3*L15; 473 B7*L3*L23; 126 B7*L3*L29; 719 B7*L3*L30
33 B7*L3*L35; 1624 B7*L30*L32; 491 B7*L5*L12; 721 B7*L5*L17
2726 B7*L5*L6; 615 B7*L9*L18; 2880 B7*TmHCY; 721 B7*TmHYX
7819 B7*TmOHZ; 1293 B8*B2; 1916 B8*L1; 719 B8*L27
2307 B8*L5; 460 B9*L30; 624 L0*L1*L3; 3828 L0*L12*L30
1649 L0*L3*L10; 678 L0*L3*L12; 795 L1*L3*L25; 1275 L1*L3*L27
549 L1*L30*L32; 512 L1*L5*L17; 778 L1*L5*L25; 1262 L1*L6*L30
5 L10*L17*L34; 22 L10*L18*L25; 1122 L11*L12*L34; 189 L11*L17*L30
3458 L12*L27*L30; 265 L12*L29*L34; 73 L12*L30*L30; 650 L13*L18*L30
839 L14*L25*L30; 563 L14*L34*L34; 560 L14*L34*L35; 650 L15*L17*L30
108 L17*L25*L30; 392 L18*L24*L30; 684 L2*L30*L34; 130 L25*L30*L34
412 L3*L10*L15; 10 L3*L10*L33; 419 L3*L11*L34; 758 L3*L12*L23
265 L3*L12*L35; 201 L3*L15*L21; 559 L3*L15*L25; 1749 L3*L15*L30
203 L3*L17*L22; 24 L3*L17*L27; 9 L3*L18; 203 L3*L18*L20
7 L3*L18*L22; 24 L3*L18*L26; 27 L3*L18*L30; 523 L3*L23*L25
967 L3*L23*L35; 349 L3*L3*L10; 672 L3*L3*L15; 11 L3*L34*L34
15 L3*L4*L17; 1068 L3*L5*L15; 836 L3*L5*L29; 280 L3*L6*L11
1066 L3*L6*L27; 94 L3*L7*L15; 151 L3*L9*L15; 667 L5*L11*L17
1109 L5*L14*L25; 11 L5*L21*L25; 4140 L5*L5*L21; 651 L5*L5*L25
74 L5*L5*L32; 1117 L5*L5*L34; 1117 L5*L5*L35; 347 L5*L8*L34
394 L5*L9*L18; 308 L5*L9*L25; 111 L6*L6*L27; 127 L6*L6*L30
467 L9*L18*L30; 686 L9*L30*L34; 639 TmCPQ*B2; 512 TmCPQ*B4
4178 TmCPQ*L1; 560 TmCPQ*L12; 939 TmCPQ*L23; 10 TmCPQ*L33
1350 TmCPQ*L35; 280 TmFPQ*L13; 512 TmFPQ*L21; 939 TmFPQ*L22
362 TmFPQ*L29; 1452 TmFPQ*L30; 280 TmFPQ*L32; 1425 TmFPQ*L36
68 TmFPQ*L37; 127 TmFPQ*L6; 627 TmHCY*L1; 678 TmHCY*L10
428 TmHCY*L12; 718 TmHCY*L15; 27 TmHCY*L18; 897 TmHCY*L21
391 TmHCY*L23; 426 TmHCY*L25; 678 TmHCY*L9; 5764 TmHDP*B2
759 TmHDP*B5; 745 TmHDP*L0; 12 TmHDP*L16; 9 TmHDP*L18
2601 TmHDP*L3; 783 TmHDP*L30; 2146 TmHDP*L34; 1595 TmHFP
560 TmHFP*L12; 9 TmHFP*L19; 512 TmHFP*L20; 85 TmHFP*L22
512 TmHFP*L25; 939 TmHFP*L26; 127 TmHFP*L31; 1273 TmHFP*L36
1375 TmHFP*L37; 981 TmHFP*L4; 280 TmHFP*L9; 560 TmHFZ*L25
6 TmHYX*L34; 516 TmHYX*L5; 4526 TmOHZ*L1; 442 TmOHZ*L11
560 TmOHZ*L25; 196 TmOHZ*L9; 3415 TmOYQ*B1; 280 TmOYQ*B2
23 TmOYQ*L18; 1630 TmOYQ*L21; 1359 TmOYQ*L23; 425 TmOYQ*L3
340 TmOYQ*L34; 1484 TmOYQ*L36; 273 TmOYQ*L4; 1127 TmYZQ
560 TmYZQ*L31; 2018 TmYZQ*L36; 5312 TmYZQ*L4; 3600 TpCDQ*L1
1933 TpCDQ*L11; 8438 TpCDQ*L14; 25 TpCDQ*L17; 34 TpCDQ*L19
11 TpCDQ*L21; 657 TpCDQ*L22; 126 TpCDQ*L3; 1742 TpCDQ*L34
859 TpCDQ*L6; 1128 TpCYZ*L10; 420 TpCYZ*L3; 1031 TpCYZ*L36
5580 TpCYZ*L4; 560 TpCYZ*L7; 1130 TpCYZ*L9; 2278 TpDFP*L30
93 TpDPQ*L3; 2171 TpDPQ*L5; 562 TpDYQ*L3; 340 TpDYQ*L34
1522 TpOYP*L25; 108 TpYXP*B6; 1295 TpYXP*B7; 65 TpYXP*L26
391 TpYXP*L30; 1177 TpYXP*L5; 268 TpYZX*L30
```

There are 263 positive integer entries. The exact upper bound (33) is

`-353391850322197/22750000000000000`.

### Leaf R7pmpmmppp

This is terminal leaf 21 of 42.

```c1-geometry
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via X OCQ OD -1
via P CDF OF -1
via Y OCP DP 1
via Z OHD DX -1
via Z OHD DQ -1
via X OCY DP 1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OXP DX -1
```

```c1-factors
B0 triangle CDF 2 PQ
B1 triangle OHP 1 Z
B2 triangle OCP 2 YX
B3 quad ZXQP 1 Y
B4 ear CDF_dmin
B5 ear CDF_fmax
B6 drop p OHP 1 Z
B7 drop q OCP 2 YX
B8 drop l OHQ 2 YZ
B9 drop m OCQ 1 X
B10 triangle OXP 1 Y
B11 triangle HDY 1 P
B12 triangle HXQ 1 Y
B13 triangle ZXP 1 Y
B14 triangle ZPQ 1 Y
B15 spread OCDH ZQ CH 1 1457/250
B16 quad OQDH 3 YZP
B17 quad OXYH 1 Z
B18 spread OXPH YZ XH 1 1457/250
B19 quad OCYZ 1 X
B20 quad OQDP 1 Y
B21 quad OXPZ 1 Y
B22 quad OXQP 1 Y
B23 quad HYCD 2 PQ
B24 quad HZXC 1 Y
B25 quad HZCQ 1 Y
B26 quad HXCP 1 Y
B27 quad HXCQ 1 Y
B28 quad HQDF 1 P
B29 quad HYQD 1 P
B30 quad HXPF 1 Y
B31 quad HZXP 1 Y
B32 quad CFZX 1 Y
B33 quad CPZX 1 Y
B34 quad FZXP 1 Y
```

```c1-sum
4 B0*L16; 9 B0*L23; 12 B0*L27; 53 B0*L30
28 B1*L3; 73 B10*L14; 5 B11*L3; 36 B12*L3
5 B13*L25; 4 B14*L18; 2 B15*L34; 34 B16*L3
14 B17*L12; 1 B18*B8; 3 B18*L0; 6 B18*L3
2 B19*L5; 8 B2*L17; 2 B20*L12; 42 B21*L23
3 B22*L12; 42 B23*L18; 32 B24*B9; 81 B25*L34
22 B26*L34; 22 B27*L34; 17 B28*L12; 13 B29*L3
7 B3*L11; 43 B30*B9; 2 B31*B9; 16 B31*L34
8 B32*L34; 3 B33*L34; 41 B34*B9; 3 B4*B9*L32
69 B4*L3*L22; 46 B4*L3*L26; 2 B4*TpCZX; 6 B5*B9*L17
17 B5*L20*L30; 4 B5*L23*L30; 34 B5*L30; 1 B5*L30*L35
10 B5*L30*L36; 1 B5*L5*L23; 9 B5*L5*L5; 8 B6*L0*L11
17 B6*L16*L30; 36 B6*L28*L30; 4 B6*L30*L30; 2 B6*L5*L32
4 B6*L5*L5; 37 B6*TmHCY; 10 B7*B9*L35; 56 B7*B9*L6
22 B7*L11*L24; 10 B7*L15*L17; 11 B7*L17*L24; 69 B7*L5*L25
8 B7*L6*L17; 10 B7*TmHCY; 59 B7*TmHYX; 20 B7*TpCDQ
9 B8*L14*L23; 9 B8*L5*L14; 95 B8*TmHCY; 2 B9*L0*L35
41 B9*L1*L17; 12 B9*L1*L6; 32 B9*L21*L30; 13 B9*L5*L21
41 B9*L6*L15; 60 B9*M4; 60 B9*TpCYZ; 10 CAPZXQ*L3
3 L0*L3*L20; 3 L0*L3*L24; 3 L1*L1*L32; 18 L11*L17*L21
5 L12*L19*L35; 9 L12*L23*L27; 7 L12*L24*L30; 5 L12*L27*L28
16 L12*L30*L31; 9 L12*L33; 1 L13*L16*L18; 6 L13*L18
2 L13*L18*L22; 52 L13*L18*L24; 17 L14*L16*L27; 34 L14*L17*L30
6 L15*L16*L30; 11 L15*L17*L17; 114 L15*L25*L30; 4 L15*L34
3 L17*L34; 18 L17*L34*L36; 38 L2*L25*L30; 12 L22*L25*L30
9 L22*L26*L34; 1 L23*L27*L34; 11 L23*L30*L31; 3 L25*L30*L32
6 L25*L30*L35; 15 L25*L30*L37; 4 L26*L34*L36; 40 L3*L13*L27
25 L3*L14; 130 L3*L14*L26; 97 L3*L14*L30; 5 L3*L22*L27
106 L3*L23*L26; 8 L3*L23*L32; 32 L34; 37 L4*L13*L18
14 L5*L14*L24; 4 L5*L16*L31; 1 L5*L21*L25; 52 L5*L30*L31
3 L5*L34; 8 L6*L15*L34; 5 L7*L34; 19 L9*L18
9 M3*L12; 14 TmCFP*B9; 50 TmCPQ; 37 TmCPQ*L11
8 TmCPQ*L13; 83 TmCPQ*L14; 23 TmCPQ*L28; 57 TmCPQ*L4
8 TmFPQ*L17; 12 TmFPQ*L30; 71 TmHCY*L13; 83 TmHCY*L14
61 TmHCY*L17; 15 TmHCY*L18; 30 TmHCY*L27; 107 TmHDP*B5
1 TmHDP*B8; 6 TmHDP*L16; 47 TmHDP*L28; 2 TmHDP*L35
80 TmHFP; 42 TmHFP*L27; 7 TmHFP*L36; 3 TmHYX*L12
52 TmHYX*L15; 24 TmHYX*L3; 19 TmOHZ*L27; 11 TmOHZ*L33
5 TmOPQ*L34; 83 TmOZP*B9; 20 TmOZP*L11; 51 TmOZP*L18
42 TmYZP*B7; 18 TmYZP*L18; 9 TpCDQ*L12; 140 TpCDQ*L15
106 TpCDQ*L22; 9 TpCDQ*L35; 13 TpCZX*L16; 83 TpCZX*L22
61 TpCZX*L24; 32 TpCZX*L27; 15 TpCZX*L36; 39 TpCZX*L4
8 TpDFP*L30; 8 TpDZQ*L3; 2 TpFYP*L30; 90 TpHDF*L21
1 TpHDF*L32; 3 TpHYQ*L18; 16 TpOCX*L13; 1 TpOCX*L9
14 TpOXQ*B6; 18 TpOXQ*L23; 2 TpOXQ*L29; 54 TpOYP
32 TpOYP*L15; 18 TpOYP*L17; 5 TpOYP*L25; 16 TpOYP*L27
4 TpOYP*L4; 27 TpOYZ*L28; 42 TpYXP*L22; 67 TpYXP*L27
54 TpYXP*L36; 36 TpYXP*L37; 15 TpYZQ; 1 TpYZQ*L19
5 TpYZQ*L21; 74 TpYZQ*L22; 2 TpYZQ*L28; 114 TpYZQ*L36
82 TpYZQ*L37; 3 TpYZQ*L4
```

There are 198 positive integer entries. The exact upper bound (33) is

`-129080033/12500000000`.

### Leaf R7pmpmp

This is terminal leaf 22 of 42.

```c1-geometry
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
mesh OCPYXZ -1
via P CDF OF -1
via Y OCP DP 1
via X OCZ DZ 1
via Z OCP DP 1
via Z OHD DQ -1
via X OCY DP 1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Z OCP OF -1
via Y CXP FX 1
```

```c1-factors
B0 triangle CDF 2 PQ
B1 mesh OCPYXZ -1 2
B2 ear CDF_fmax
B3 drop q OCP 3 YZX
B4 quad HCDF 2 PQ
B5 drop l OHQ 2 YZ
B6 triangle OPQ 2 YZ
B7 quad OCQP 3 YZX
B8 quad OYPF 1 Z
B9 quad HYDF 1 P
B10 quad HQDF 1 P
```

```c1-sum
1 B0*L27; 25 B1; 4 B10*B3; 2 B2*L20*L30
12 B2*L30; 2 B3*B4; 1 B3*L25*L37; 2 B3*L9
7 B3*TmOHF; 23 B3*TpHCF; 1 B5*L20*L30; 3 B6*L21
3 B7*L20; 1 B7*L4; 2 B8*L30; 2 B9*B3
9 L3*L22*L36; 1 L5*L23*L31; 1 L5*L25*L37; 21 L8*L20*L30
24 TmCFP*L0; 4 TmCFP*L26; 8 TmCFP*L30; 1 TmFPQ*L30
3 TmFPQ*L36; 21 TmHCY; 1 TmHCY*L21; 1 TmHDP*L24
12 TmHDP*L34; 10 TmHDP*L35; 22 TmHDP*L7; 41 TmHFP
4 TmHFP*L27; 9 TmOFP*L30; 4 TpCDQ*L22; 1 TpDPQ*L3
1 TpHCP*L9; 20 TpHDF*L21; 11 TpHDF*L22
```

There are 39 positive integer entries. The exact upper bound (33) is

`-1208261947989/45500000000000`.

### Leaf R7pmpp

This is terminal leaf 23 of 42.

```c1-geometry
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via P CDF OF -1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1-factors
B0 triangle OHC 3 YZX
B1 triangle HDF 1 P
B2 triangle CDF 2 PQ
B3 ear HDF1_dmax
```

```c1-sum
3 B0*L7; 3 B1*L31; 3 B2; 1 B2*L36
1 B3*L31*L36; 3 B3*L7*L31
```

There are 6 positive integer entries. The exact upper bound (33) is

`-50151303/500000000`.

### Leaf R7pp

This is terminal leaf 24 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp CFP -1 ear
imp CFQ -1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via P CDF OF -1
via Q ODP OF -1
via Y OCP DP 1
via Y OCQ DQ 1
via X OCZ DZ 1
via X OCY DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OHC FP -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1-exclude
cap DFY PQ
```

### Leaf R8m

This is terminal leaf 25 of 42.

```c1-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp OFP -1 cluster
via Q CDP OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via X OCZ DZ 1
via Z OHY FY -1
via Y OHP FP -1
via Y OHP FQ -1
via Z OHX FX -1
via Z OHY FP -1
via Z OHY FQ -1
via Y HXP XQ 1
```

```c1-factors
B0 triangle OHC 3 YZX
B1 triangle OHP 2 YZ
B2 drop p OHP 2 YZ
B3 quad HCDF 2 PQ
B4 drop l OHQ 2 YZ
B5 triangle OFP 1 Y
B6 triangle OFQ 2 YP
B7 triangle HFQ 1 P
B8 triangle CDP 1 Q
B9 quad OPFH 2 YZ
B10 quad HYQF 1 P
B11 quad CDFY 2 PQ
```

```c1-sum
13 B0*L5; 34 B1*L4; 14 B10*B2; 3 B11*L0
14 B11*L23; 2 B11*L27; 10 B2*B3; 38 B2*L1
5 B2*L1*L37; 35 B2*L1*L4; 5 B2*L11*L24; 3 B2*L4
66 B2*L4*L26; 13 B2*L4*L4; 3 B2*L9*L26; 3 B2*TpOCQ
8 B4*L30*L31; 25 B5*L11; 14 B6*L21; 8 B6*L30
13 B7*L3; 93 B8*L27; 10 B8*L30; 5 B8*L35
15 B9*L11; 10 L1*L25; 20 L1*L4*L25; 8 L1*L6*L27
89 L2*L5*L22; 39 L2*L5*L26; 5 L2*L5*L35; 8 L21*L30*L31
6 L22*L24*L34; 16 L22*L34; 6 L24*L34; 8 L3*L23
44 L3*L23*L26; 10 L3*L23*L36; 74 L3*L4*L23; 10 L34
1 L4*L20*L34; 4 L4*L22*L34; 8 L5*L20*L29; 5 L5*L21*L27
4 L5*L23*L35; 10 L5*L5*L21; 10 L5*L5*L31; 10 L5*L7*L27
13 L6*L22*L34; 5 L7*L21*L30; 13 L7*L22*L35; 18 TmCPQ
134 TmCPQ*L4; 14 TmCPQ*L6; 27 TmHPQ; 24 TmHPQ*L31
8 TmHPQ*L35; 20 TmHPQ*L4; 13 TmHPQ*L7; 44 TmOYP
20 TmOYP*L24; 8 TmOYP*L26; 8 TmOYP*L4; 153 TpCDQ*L22
14 TpCDQ*L6; 14 TpDFP*L5; 8 TpDPQ*L31; 15 TpDPQ*L7
21 TpFPQ; 13 TpFPQ*L37; 3 TpHCP*L25; 6 TpHCP*L34
13 TpHDF*L2; 29 TpHDF*L25; 4 TpHDF*L4
```

There are 75 positive integer entries. The exact upper bound (33) is

`-12912026117/500000000000`.

### Leaf R8pmmm

This is terminal leaf 26 of 42.

```c1-geometry
imp CFP 1 containF
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
via Y OCP DP 1
via X OCZ DZ 1
via X OCY DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via X OCF FP 1
```

```c1-factors
B0 triangle OCP 2 YX
B1 triangle OHQ 2 YZ
B2 drop q OCP 2 YX
B3 drop l OHQ 2 YZ
B4 triangle CDP 1 Q
B5 triangle DFY 1 Q
B6 triangle DYP 1 Q
B7 quad OCDF 3 YXQ
B8 quad OCQY 1 X
B9 quad CDFP 1 Q
B10 quad CDPY 1 Q
```

```c1-sum
66 B0*L34; 2 B1*L23; 40 B10*B3; 10 B2*B2*L2
5 B2*L1*L25; 20 B2*L1*L7; 83 B2*L1*L8; 89 B2*L2*L20
50 B2*L2*L25; 18 B2*L2*L35; 83 B2*M3; 69 B3*L0*L20
38 B3*L1*L11; 57 B3*L1*L21; 11 B3*L1*L34; 132 B3*L1*L6
46 B3*L11*L34; 38 B3*L3*L10; 22 B3*L3*L4; 132 B3*L4*L20
6 B3*L4*L35; 185 B3*L7*L23; 51 B3*TmHCY; 23 B3*TmHFP
77 B4*L20; 17 B5*L34; 669 B6*B3; 12 B7*L10
70 B7*L23; 3 B7*L26; 17 B8*L34; 17 B9*B2
6 B9*L10; 12 B9*L21; 3 B9*L31; 15 B9*L35
50 B9*L5; 25 L1*L11*L24; 21 L1*L2*L20; 13 L1*L2*L7
58 L1*L20*L25; 15 L1*L20*L34; 53 L1*L25*L31; 82 L1*L3*L21
14 L1*L31*L34; 24 L1*L5; 3 L1*L5*L20; 2 L1*L5*L25
42 L1*L5*L34; 42 L1*L5*L35; 7 L1*L6*L20; 103 L1*L6*L23
16 L1*L6*L9; 4 L1*L7*L21; 11 L1*L7*L34; 5 L1*L7*L35
37 L1*L8*L20; 17 L10*L31*L34; 2 L11*L29*L35; 20 L2*L10*L25
21 L2*L5*L34; 36 L2*L5*L8; 7 L23*L23*L31; 26 L3*L20*L23
2 L3*L23*L31; 20 L3*L4*L20; 15 L3*L7*L23; 3 L30*L31*L31
3 L30*L34*L34; 17 L4*L9*L20; 5 L4*L9*L34; 17 L5*L20*L34
35 L5*L25*L34; 29 L5*L31*L34; 37 L5*L34*L35; 34 L5*L35*L35
50 L5*L5*L31; 12 L7*L20*L23; 9 L7*L23*L23; 3 L7*L26*L29
9 L7*L30*L31; 85 L8*L30*L34; 75 L9*L23*L31; 46 L9*L27*L34
4 M3*L10; 15 M3*L25; 79 M3*L5; 41 TmCPQ
50 TmCPQ*L20; 65 TmCPQ*L34; 82 TmCPQ*L35; 3 TmCPQ*L5
3 TmCPQ*L6; 527 TmDYQ*L21; 12 TmDYQ*L34; 72 TmDYQ*L37
3 TmDYQ*L6; 136 TmDYQ*L8; 13 TmHCY*L34; 4 TmHCY*L4
4 TmHCY*L7; 16 TmHFP*L10; 162 TmHFP*L24; 3 TmHFP*L26
12 TmHFP*L7; 58 TmHFP*L9; 104 TmHPQ*L2; 46 TmOFY*L5
94 TmOYQ*L11; 45 TmOYQ*L2; 182 TmOYQ*L21; 3 TmOYQ*L23
3 TmOYQ*L31; 44 TmOYQ*L37; 42 TmOYQ*L9; 9 TpDFP*L31
127 TpDPQ; 17 TpDPQ*L10; 50 TpDPQ*L20; 3 TpDPQ*L36
54 TpDPQ*L37; 3 TpDPQ*L6; 562 TpDPQ*L9; 3 TpFPQ*L5
3 TpFYQ*L23; 77 TpHYQ*L34; 125 TpOFP*L1; 6 TpOFP*L2
1 TpOFP*L34
```

There are 129 positive integer entries. The exact upper bound (33) is

`-719279836209089/45500000000000000`.

### Leaf R8pmmpmmm

This is terminal leaf 27 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via Z OHP OF 1
via Y OCP DP 1
via X OCZ DZ 1
via Z OHD DQ -1
via X OCY DP 1
via Y OCF FZ 1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FQ -1
via X OCF FP 1
via X OHC FQ -1
```

```c1-factors
B0 triangle OHC 3 YZX
B1 triangle OCP 2 YX
B2 ear CDF1_fmax
B3 ear HCD_dmin
B4 triangle OHF 2 ZP
B5 triangle CDF 1 Q
B6 drop q OCP 2 YX
B7 quad HQDF 1 P
```

```c1-sum
11 B0*L5; 5 B1*L5; 5 B2*L21*L30; 7 B2*L30
22 B4*B3; 15 B4*L1; 103 B4*L26; 2 B5*B6
14 B7; 5 B7*L21; 14 B7*L36; 9 L1*L1*L24
3 L1*L25*L30; 8 L1*L4*L6; 56 L1*L6*L26; 19 L2*L30
5 L29*L30; 3 L5*L23*L31; 77 L5*L26*L31; 44 TmCFQ*L36
77 TmCFQ*L4; 2 TmHDP; 5 TmHDP*L24; 5 TmHPQ
99 TpCDQ; 11 TpCDQ*L36; 32 TpOCQ*L1; 4 TpOFP*B3
1 TpOFP*L4
```

There are 29 positive integer entries. The exact upper bound (33) is

`-27800129/1000000000`.

### Leaf R8pmmpmmp

This is terminal leaf 28 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
mesh OCPYXZ -1
via Y OCP DP 1
via X OCZ DZ 1
via Z OCP DP 1
via Z OHD DQ -1
via X OCY DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OCP FP 1
via Z OHC FQ -1
via X OCF FP 1
via X OHC FQ -1
```

```c1-factors
B0 mesh OCPYXZ -1 2
B1 ear CDF1_fmax
B2 ear HCD_dmin
B3 drop q OCP 3 YZX
B4 drop q OCP 2 YZ
B5 drop l OHQ 2 YZ
B6 triangle OPQ 2 YZ
B7 quad OCQY 1 X
B8 quad OCQP 3 YZX
B9 quad HQDF 1 P
```

```c1-sum
5 B0*L23; 3 B0*L27; 45 B0*L36; 151 B1*B1*L30
146 B1*L20*L30; 92 B1*TpDFP; 136 B2*L3; 56 B2*L3*L27
20 B2*L3*L30; 10 B2*L3*L36; 37 B3*L25*L26; 33 B3*L3*L27
73 B3*L3*L36; 1 B3*L7*L25; 3 B3*TpHYP; 35 B4*TmHPQ
20 B5*L1*L27; 23 B6*B1; 62 B6*B2; 43 B6*L21
87 B6*L23; 68 B6*L27; 3 B7*B3; 4 B7*L6
3 B8*L11; 43 B8*L20; 3 B8*L26; 22 B8*L6
59 B9*B1; 1 L0*L1*L25; 1 L1*L1*L21; 18 L1*L21*L24
17 L1*L23*L24; 82 L1*L25*L26; 105 L1*L6*L23; 44 L3*L20*L26
81 L3*L27*L27; 10 L3*L3*L27; 20 L5*L21*L25; 79 L5*L25*L27
9 L5*L25*L29; 23 L5*L25*L30; 19 L5*L25*L37; 2 TmCFQ*L20
84 TmCFQ*L23; 9 TmCFQ*L29; 75 TmCFQ*L36; 17 TmCFQ*L37
39 TmHCY*L22; 7 TmHCY*L27; 20 TmHDP*L24; 90 TmHDP*L7
197 TmHFP; 90 TmHFP*L22; 84 TmHFP*L26; 91 TmHFP*L7
52 TmHPQ*L22; 102 TmHPQ*L26; 6 TmHPQ*L30; 56 TmHPQ*L5
29 TmODQ*L3; 4 TmOYQ*B1; 159 TpCDQ; 79 TpCDQ*L27
23 TpCDQ*L30; 5 TpCDQ*L36; 34 TpCFP*L1; 62 TpDPQ*L1
44 TpHCP*L10; 42 TpHCP*L26; 36 TpHDF*L21; 59 TpHDF*L25
7 TpHYP*L26; 90 TpOFP*B3; 164 TpOFP*L1
```

There are 75 positive integer entries. The exact upper bound (33) is

`-52330750971/1421875000000`.

### Leaf R8pmmpmpmm

This is terminal leaf 29 of 42.

```c1-geometry
imp CFP 1 containF
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp HDQ -1 containD
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHQYZX 1
via Y OCP DP 1
via X OCZ DZ 1
via X OCY DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via X OHQ FQ -1
```

```c1-exclude
cluster OCF Q OFQ YX
```

### Leaf R8pmmpmpmpmm

This is terminal leaf 30 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via X OCQ OD -1
via Z OHP OF 1
via Y OCP DP 1
via Z OHD DX -1
via Z OHD DQ -1
via X OCY DP 1
via Y OCF FZ 1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via X OCF FP 1
via Y OZQ DZ 1
```

```c1-factors
B0 ear HCD_dmin
B1 ear HCF_fmin
B2 drop p OHP 1 Z
B3 drop q OCP 2 YX
B4 drop l OHQ 2 YZ
B5 drop m OCQ 1 X
B6 triangle HDQ 1 P
B7 triangle HFX 1 P
B8 triangle CZP 1 Y
B9 triangle CZQ 1 Y
B10 spread OCQZ YX OQ -1 1457/250
B11 spread OCQZ YX CZ 1 1457/250
B12 quad OQDF 1 Y
B13 quad OQFP 1 Y
B14 quad HXCQ 1 Y
B15 quad HQDF 1 P
B16 quad HZQD 1 P
B17 quad CQZX 1 Y
B18 quad CQPZ 1 Y
B19 quad CQPX 1 Y
```

```c1-sum
9 B0*L1*L24; 2 B0*L16*L34; 281 B0*L3*L27; 4 B0*L3*L7
46 B0*TpDFP; 3 B1*B5*L7; 44 B1*L1; 20 B1*L1*L21
8 B1*L1*L31; 65 B1*L1*L34; 20 B1*L1*L37; 16 B1*L18*L34
53 B1*L3*L33; 118 B1*M5; 65 B1*TmHCY; 52 B10*L1
118 B11*L7; 44 B12*L16; 1 B12*L28; 1 B13*L18
40 B14*L12; 130 B15*L34; 12 B16*L3; 44 B17*B2
12 B18*L1; 36 B19*L12; 8 B2*B2*L15; 56 B2*B2*L5
63 B2*B3*L7; 52 B2*B4*L5; 45 B2*B5*L3; 31 B2*B5*L9
104 B2*L1*L28; 33 B2*L11*L25; 19 B2*L15*L16; 44 B2*L3*L33
137 B2*L5*L17; 21 B2*L5*L27; 5 B2*L5*L30; 12 B2*L5*L32
69 B2*L5*L33; 32 B2*L5*L34; 10 B2*L5*L5; 15 B2*L5*L7
123 B2*L5*L8; 118 B2*L8*L15; 63 B2*TpDFP; 42 B2*TpHDF
25 B3*L1*L31; 189 B3*L11*L28; 16 B3*L16*L34; 190 B3*L18*L34
2 B3*L3*L24; 43 B3*L3*L27; 23 B3*L3*L34; 11 B3*L3*L36
23 B3*M5; 48 B3*TmHCY; 23 B3*TpHZX; 209 B4*B5*L5
15 B4*L11*L18; 406 B4*L15*L15; 14 B4*L15*L35; 114 B4*L3*L33
21 B4*L5*L18; 22 B4*L5*L23; 35 B4*L5*L34; 31 B4*L5*L35
214 B4*L5*L5; 58 B4*L7*L10; 118 B4*L7*L15; 136 B4*L7*L18
149 B4*M5; 198 B4*TpHZX; 35 B5*B5*L3; 190 B5*B5*L7
299 B5*L12*L15; 69 B5*L3*L30; 94 B5*L3*L7; 293 B5*L7*L14
159 B5*TmHCY; 38 B6*L3; 38 B7*L3; 10 B8*L1
23 B9*L1; 43 CAPZXQ*L3; 22 L1*L10*L25; 1 L1*L11*L24
32 L1*L12*L20; 68 L1*L12*L37; 51 L1*L15; 41 L1*L15*L25
7 L1*L16*L35; 12 L1*L17*L21; 116 L1*L17*L25; 28 L1*L18
32 L1*L20*L25; 7 L1*L21*L21; 143 L1*L21*L34; 12 L1*L25*L30
104 L1*L25*L33; 10 L1*L25*L35; 2 L1*L28*L34; 3 L1*L28*L35
45 L1*L3*L16; 47 L1*L5*L25; 40 L1*L6*L11; 9 L1*L6*L21
43 L1*L6*L25; 97 L1*L9*L20; 112 L1*L9*L26; 99 L1*L9*L37
88 L1*L9*L9; 34 L11*L11*L15; 306 L11*L12; 65 L11*L12*L16
5 L11*L12*L37; 29 L11*L16*L27; 8 L11*L18*L24; 57 L11*L21*L28
132 L11*L27*L28; 107 L12*L15*L26; 15 L12*L26*L31; 12 L12*L34*L34
66 L14*L16*L34; 36 L14*L34*L34; 73 L18*L21*L34; 132 L18*L27*L34
7 L3*L11*L25; 30 L3*L11*L34; 11 L3*L12*L18; 7 L3*L15
72 L3*L15*L15; 70 L3*L15*L20; 310 L3*L15*L26; 19 L3*L15*L35
94 L3*L15*L36; 50 L3*L16*L27; 39 L3*L18*L27; 2 L3*L20*L35
6 L3*L21*L27; 3 L3*L21*L34; 16 L3*L23*L25; 37 L3*L24*L35
36 L3*L25*L34; 48 L3*L26*L35; 59 L3*L34*L34; 1 L3*L4*L4
39 L3*L4*L7; 58 L3*L9*L35; 9 L4*L11*L12; 20 L5*L17*L25
2 L5*L17*L35; 3 L5*L5*L31; 165 L5*L5*L7; 21 L5*L7*L17
101 L5*L7*L25; 8 L5*L7*L31; 5 L5*L7*L33; 70 L5*L7*L35
98 L5*L9*L34; 4 L7*L12; 31 L7*L12*L26; 19 L7*L23*L28
12 L9*L12*L35; 335 L9*L15*L15; 46 M5*L3; 23 TmCPQ*L15
43 TmCPQ*L7; 267 TmCYQ*L12; 25 TmFXP*L3; 25 TmFYP*L1
16 TmFYP*L28; 56 TmHCY*L12; 141 TmHCY*L15; 89 TmHCY*L17
38 TmHCY*L25; 97 TmHCY*L9; 47 TmHDP*B1; 32 TmHDP*B4
100 TmHDP*L17; 7 TmHDP*L21; 12 TmHDP*L30; 13 TmHDP*L32
43 TmHDP*L33; 77 TmHDP*L34; 71 TmHDP*L35; 49 TmHDP*L5
69 TmHDP*L6; 44 TmHPQ; 59 TmHPQ*L10; 36 TmHPQ*L13
23 TmHPQ*L14; 81 TmHPQ*L16; 12 TmHPQ*L30; 170 TmHPQ*L33
56 TmHPQ*L5; 43 TmHPQ*L6; 80 TmHPQ*L9; 131 TmOHZ*L11
80 TmOYQ*L11; 351 TmOYQ*L15; 122 TmOYQ*L16; 31 TmOYQ*L18
77 TmOYQ*L21; 18 TmOYQ*L27; 30 TmOYQ*L36; 31 TmOYQ*L37
28 TmOYQ*L4; 294 TmOYQ*L6; 172 TmOYQ*L9; 8 TmOZP*B2
5 TmYXP*B4; 24 TmYXP*L13; 76 TmYXP*L24; 229 TmYXP*L27
23 TmYXP*L29; 337 TmYZQ; 406 TmYZQ*L15; 44 TmYZQ*L21
49 TmYZQ*L28; 17 TmYZQ*L33; 139 TmYZQ*L36; 378 TmYZQ*L37
10 TmYZQ*L4; 270 TmYZQ*L9; 269 TpCFQ*B0; 43 TpCFQ*B3
57 TpCFQ*L13; 293 TpCFQ*L14; 165 TpCFQ*L16; 39 TpCFQ*L18
26 TpCFQ*L21; 37 TpCFQ*L27; 14 TpCFQ*L32; 207 TpCFQ*L34
84 TpCFQ*L4; 3 TpCFQ*L6; 59 TpCYZ; 89 TpCYZ*L10
72 TpCYZ*L15; 90 TpCYZ*L17; 74 TpCYZ*L20; 23 TpCYZ*L22
433 TpCYZ*L24; 3 TpCYZ*L27; 308 TpCYZ*L9; 37 TpDFP*L17
89 TpDFP*L27; 53 TpDFQ; 202 TpDFQ*L10; 30 TpDFQ*L17
26 TpDFQ*L20; 46 TpDFQ*L22; 227 TpDFQ*L26; 4 TpDFQ*L33
52 TpDFQ*L37; 214 TpDFQ*L5; 163 TpDFQ*L9; 26 TpDPQ*L18
101 TpDYQ*B1; 10 TpDYQ*L15; 5 TpDYQ*L16; 6 TpDYQ*L21
18 TpDYQ*L27; 98 TpDYQ*L34; 33 TpFPQ*L18; 18 TpFPQ*L3
8 TpHDF*L7; 33 TpHYQ*L12; 63 TpHZX*L21; 66 TpHZX*L27
72 TpHZX*L9; 6 TpOXQ*B2; 68 TpOXQ*L35; 75 TpYXQ*B2
49 TpYXQ*L12; 66 TpYXQ*L15; 229 TpYXQ*L23; 14 TpYXQ*L29
57 TpYXQ*L31; 78 TpYXQ*L7
```

There are 282 positive integer entries. The exact upper bound (33) is

`-12399252252551/1000000000000000`.

### Leaf R8pmmpmpmpmp

This is terminal leaf 31 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via X OCQ OD -1
via Z OHP OF 1
via Y OCP DP 1
via Z OHD DX -1
via Z OHD DQ -1
via X OCY DP 1
via Y OCF FZ 1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via X OCF FP 1
```

```c1-factors
B0 triangle OPQ 1 Y
B1 ear HCF_fmin
B2 drop p OHP 1 Z
B3 drop q OCP 2 YX
B4 drop l OHQ 2 YZ
B5 drop m OCQ 1 X
B6 quad OQDF 1 Y
B7 quad OQDP 1 Y
B8 quad OXQP 1 Y
B9 quad HZCQ 1 Y
```

```c1-sum
9 B0*L12; 82 B0*L18; 2 B1*L1*L21; 6 B2*B5*L31
45 B2*B5*L32; 37 B2*L10*L15; 18 B2*L10*L25; 47 B2*L15*L15
26 B2*L15*L17; 11 B2*L15*L25; 59 B2*L15*L35; 22 B2*L17*L30
27 B2*L25*L33; 2 B2*L3*L4; 2 B2*TpCDQ; 5 B3*L14*L31
54 B3*L16*L27; 8 B3*L3*L15; 5 B3*L3*L27; 4 B3*L9*L14
12 B4*L14*L21; 4 B4*L14*L30; 3 B4*L5*L16; 8 B5*L15*L31
16 B5*L17*L17; 27 B5*L17*L20; 19 B5*L17*L23; 1 B5*L17*L35
7 B5*L3; 4 B5*L3*L3; 5 B5*TmHFP; 9 B5*TmOFY
70 B5*TpCYX; 9 B5*TpCYZ; 4 B5*TpHZP; 2 B6*L14
9 B7*L12; 7 B7*L16; 18 B8*L11; 3 B9*L34
5 L1*L17*L21; 14 L1*L17*L24; 4 L1*L21*L32; 5 L1*L24*L37
4 L1*L27*L31; 29 L1*L9*L14; 28 L1*L9*L20; 75 L1*L9*L22
2 L1*L9*L27; 87 L11*L16; 14 L11*L16*L24; 34 L12*L15*L22
19 L12*L17*L22; 3 L12*L24*L30; 20 L12*L27; 13 L14*L14*L21
7 L14*L16*L21; 5 L16*L16*L27; 11 L17*L18*L24; 47 L18*L21
8 L3*L11; 13 L3*L11*L24; 1 L3*L11*L26; 1 L3*L14*L26
15 L3*L14*L36; 5 L3*L18; 47 L3*L22*L36; 9 L3*L34*L36
7 L3*L9*L22; 5 L5*L12*L24; 4 L5*L17*L25; 10 L5*L20*L34
2 L5*L7*L14; 2 L5*L7*L24; 1 M5*L1; 75 TmCPQ*L11
13 TmCPQ*L14; 8 TmCPQ*L34; 10 TmCYP*L1; 4 TmFYP*L14
38 TmHCY*L14; 84 TmHCY*L22; 27 TmHCY*L24; 9 TmHCY*L27
1 TmHCY*L28; 15 TmHDP*L17; 10 TmHDP*L34; 4 TmHPQ*L12
14 TmHPQ*L16; 2 TmHPQ*L7; 22 TmHPQ*L9; 4 TmOFY*L15
103 TmOYQ*L14; 34 TmOZP*L15; 19 TmOZP*L17; 55 TmOZP*L24
108 TmOZP*L26; 9 TmOZQ*L11; 92 TmYPQ*L14; 23 TmYPQ*L18
84 TmYXP; 14 TmYXP*L24; 105 TmYXP*L26; 1 TpCFQ*B2
5 TpCFQ*B3; 8 TpCFQ*L15; 3 TpCFQ*L20; 8 TpCFQ*L33
1 TpCZX*L1; 2 TpDFP*L24; 2 TpDYQ*L14; 7 TpHCQ*L3
2 TpHCQ*L34; 11 TpHYQ*L3; 3 TpHZQ*L3; 27 TpOCP*L1
13 TpOCZ*L1; 11 TpOXQ*L17; 41 TpOXQ*L20; 132 TpOXQ*L22
1 TpOXQ*L34; 21 TpOYP*L18; 32 TpYZQ; 59 TpYZQ*L20
105 TpYZQ*L22; 7 TpYZQ*L36; 2 TpYZQ*L37
```

There are 127 positive integer entries. The exact upper bound (33) is

`-1010555413/25000000000`.

### Leaf R8pmmpmpmpp

This is terminal leaf 32 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via X OCQ OD -1
via Z OHP OF 1
via Y OCP DP 1
via Z OHD DX -1
via Z OHD DQ -1
via X OCY DP 1
via Y OCF FZ 1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via X OCF FP 1
via Y OXP DX -1
via Y OXP FX -1
```

```c1-factors
B0 ear HCD_dmin
B1 ear HCF_fmin
B2 drop p OHP 1 Z
B3 drop q OCP 2 YX
B4 drop l OHQ 2 YZ
B5 drop m OCQ 1 X
B6 triangle HCX 1 Y
B7 triangle HDX 2 YP
B8 triangle HXP 1 Y
B9 spread OXPH YZ OP 1 1457/250
B10 quad OQDF 1 Y
B11 quad CDFP 1 Q
```

```c1-sum
130 B0*B2*L17; 25 B0*B3*L7; 27 B0*L18*L21; 56 B0*L18*L34
3 B0*L3*L27; 12 B0*L3*L36; 71 B0*L3*L4; 88 B0*L5*L31
73 B0*L5*L7; 17 B1*L1*L34; 2 B10*L34; 209 B11*B0
116 B11*B3; 8 B11*L0; 5 B11*L10; 4 B11*L33
92 B2*B2*L1; 14 B2*B3*L1; 24 B2*B3*L5; 92 B2*B3*L7
23 B2*L1*L31; 69 B2*L1*L7; 67 B2*L5*L16; 46 B2*L5*L18
41 B2*TmOFY; 116 B3*B3*L31; 3 B3*B4*L1; 29 B3*B4*L5
30 B3*B5*L7; 49 B3*L17; 38 B3*L17*L22; 32 B3*L3*L30
116 B3*L5*L17; 23 B3*L7*L31; 134 B3*TmHYX; 160 B3*TmOFY
66 B3*TpCDF; 33 B3*TpDFQ; 1 B4*L30*L34; 4 B4*L5*L30
3 B4*L5*L5; 4 B5*L3*L30; 4 B5*L3*L9; 14 B5*TmOFY
43 B6*B3; 14 B7*L34; 638 B8*L11; 24 B8*L34
3 B9*L5; 20 L0*L3*L7; 13 L1*L11; 25 L1*L11*L21
3 L1*L11*L25; 146 L1*L17*L20; 40 L1*L17*L22; 25 L1*L17*L37
6 L1*L21*L34; 50 L1*L6*L11; 67 L11*L17; 25 L11*L17*L36
28 L3*L11*L17; 25 L3*L18; 9 L3*L23*L35; 37 L3*L4*L11
16 L3*L4*L17; 9 L3*L7*L11; 18 L3*L7*L36; 42 L5*L17*L34
56 L5*L28*L35; 62 L5*L7*L23; 6 L5*L7*L29; 2 L6*L9*L18
4 L7*L18*L23; 134 L7*L21*L30; 12 L7*L23*L34; 3 L7*L30*L35
6 L7*L7; 22 L7*L7*L11; 6 L7*L7*L22; 89 L9*L18
41 L9*L18*L36; 3 TmCPQ*L36; 6 TmCPQ*L4; 5 TmCPQ*L9
3 TmCYQ*L1; 65 TmFYP; 38 TmFYP*L23; 15 TmFYP*L27
17 TmFYP*L31; 128 TmFYP*L4; 2 TmHCY*L1; 38 TmHCY*L17
16 TmHCY*L20; 4 TmHCY*L26; 6 TmHCY*L4; 38 TmHCY*L7
226 TmHDP*B1; 9 TmHDP*L11; 139 TmHDP*L16; 92 TmHDP*L21
14 TmHDP*L23; 4 TmHDP*L27; 42 TmHDP*L28; 6 TmHDP*L3
9 TmHDP*L5; 9 TmHPQ*L11; 5 TmHPQ*L34; 4 TmHPQ*L5
24 TmHYX*L21; 567 TmHYX*L22; 8 TmHYX*L3; 13 TmOFY*L17
94 TmOFY*L20; 88 TmOFY*L30; 4 TmOFY*L31; 3 TmOZP*L5
42 TpCDF*L11; 16 TpCDF*L17; 4 TpCDF*L18; 50 TpCDF*L5
5 TpCFQ*B0; 8 TpCFQ*L4; 179 TpDFP; 2 TpDFP*L1
16 TpDFP*L16; 92 TpDFP*L20; 38 TpDFP*L22; 6 TpDFP*L26
6 TpDFP*L37; 9 TpDFP*L4; 6 TpDFQ*L22; 7 TpDFQ*L5
1 TpDFX*L11; 12 TpDYQ*L23; 655 TpHYP*L18; 7 TpOCX*L9
3 TpOFP*L1; 29 TpOFP*L17; 125 TpOFP*L35; 12 TpOFP*L7
23 TpOYP*L17; 141 TpOYP*L7; 128 TpYXP; 38 TpYXP*L22
113 TpYXP*L30; 592 TpYXP*L36; 12 TpYXP*L6
```

There are 147 positive integer entries. The exact upper bound (33) is

`-9820489931/500000000000`.

### Leaf R8pmmpmpp

This is terminal leaf 33 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
mesh OCPYXZ -1
via Y OCP DP 1
via X OCZ DZ 1
via Z OCP DP 1
via Z OHD DQ -1
via X OCY DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OCP FP 1
via Z OHY FQ -1
via X OCF FP 1
```

```c1-factors
B0 ear HCF_fmin
B1 drop q OCP 3 YZX
B2 drop q OCP 2 YZ
B3 drop l OHQ 2 YZ
B4 ear HCD_dmin
B5 triangle OPQ 2 YZ
B6 quad OCQP 3 YZX
```

```c1-sum
30 B0*L1; 36 B1*L20*L25; 178 B1*L25*L26; 34 B2*L3*L27
160 B3*L1*L21; 208 B3*L5*L26; 173 B5*L27; 109 B6
31 B6*L20; 15 B6*L26; 3 B6*L7; 7 L1*L20*L21
78 L1*L20*L25; 65 L1*L21*L24; 157 L1*L21*L27; 335 L1*L25*L26
21 L20*L20*L30; 33 L3*L20*L26; 54 L3*L26*L26; 169 L3*L27*L27
46 L3*L4; 14 L5*L20*L20; 302 L5*L20*L24; 144 L5*L20*L26
21 L5*L26*L31; 49 L5*L7; 174 L5*L7*L26; 2 L5*L7*L37
65 L7*L20*L30; 28 TmHDP; 299 TmHDP*L24; 178 TmHDP*L26
34 TmHDP*L6; 36 TmHFP*L20; 67 TmHPQ; 4 TmHPQ*L20
335 TmHPQ*L26; 72 TpCDF*L26; 2 TpCDQ*L7; 34 TpCFQ*B1
10 TpCFQ*B4; 3 TpCFQ*L21; 208 TpCFQ*L27; 41 TpCFQ*L4
36 TpDFP*L20; 3 TpDFP*L24; 34 TpDFP*L27; 26 TpDFQ
208 TpDFQ*L26; 63 TpHDF*L20
```

There are 50 positive integer entries. The exact upper bound (33) is

`-27940451/1300000000`.

### Leaf R8pmmppm

This is terminal leaf 34 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FQ -1
via X OCF FP 1
via X OHC FQ -1
```

```c1-factors
B0 triangle HDF 1 P
B1 triangle CDF 1 Q
B2 ear HDF1_dmax
B3 triangle OHC 3 YZX
B4 ear CDF1_fmax
B5 drop q OCP 2 YX
B6 quad OYFH 2 ZP
B7 quad OCQY 1 X
B8 drop l OHQ 2 YZ
B9 spread HCDF PQ HD -1 6
B10 quad HQDF 1 P
B11 quad CDFP 1 Q
```

```c1-sum
2 B0*B2; 69 B0*B4; 85 B0*L2; 26 B0*L25
11 B1*B2; 8 B1*B4; 67 B1*L0; 44 B1*L23
12 B1*L27; 2 B1*L3; 5 B1*L34; 3 B10*B2
5 B10*L34; 44 B11*B2; 22 B2*B2*L25; 3 B2*B2*L31
18 B2*B3; 17 B2*B4*L20; 57 B2*B4*L30; 52 B2*B4*L31
2 B2*B4*L35; 1 B2*B4*L37; 16 B2*L2*L26; 76 B2*L2*L30
1 B2*L24*L34; 25 B2*L25*L29; 3 B2*L34*L36; 11 B2*TmHCY
24 B4*B3; 7 B4*B4*L11; 10 B4*B4*L23; 2 B4*B5*L3
26 B4*L0*L20; 61 B4*L0*L31; 15 B4*L23*L29; 8 B4*L30*L35
3 B4*L5*L29; 13 B4*TmHCY; 22 B6*B5; 2 B6*L2
8 B6*L31; 23 B6*L4; 46 B7*B8; 14 B7*L6
3 B9*L2; 26 B9*L6; 8 L0*L21*L29; 12 L0*L7*L34
11 L3*L34; 7 L3*L4*L26; 2 L5*L29*L35; 43 TmCFQ
2 TmCFQ*L37; 12 TmCFQ*L4; 21 TmFYP; 4 TmHCY*L25
5 TmHCY*L26; 1 TmHCY*L31; 1 TmHCY*L5; 81 TmHFP
10 TmHFP*L31; 11 TmHFP*L37; 11 TmHFP*L5; 3 TmODQ*B4
5 TmODQ*L0; 54 TmODQ*L3; 42 TmODQ*L8; 14 TmOYQ*B4
80 TpCDQ; 1 TpCDQ*L11; 46 TpCDQ*L24; 25 TpCDQ*L30
14 TpCDQ*L36; 3 TpCDQ*L7; 15 TpDFQ*L3; 27 TpDYQ
46 TpDYQ*L24; 6 TpDYQ*L36; 1 TpDYQ*L37; 31 TpHDP
11 TpHDP*L36; 4 TpHDP*L37; 43 TpHDP*L6; 1 TpHDP*L9
11 TpOFP*B2; 37 TpOFP*L1; 21 TpOFP*L10; 4 TpOFP*L2
```

There are 88 positive integer entries. The exact upper bound (33) is

`-256267221/8000000000`.

### Leaf R8pmmpppmm

This is terminal leaf 35 of 42.

```c1-geometry
imp CFP 1 containF
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp HDQ -1 containD
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHQYZX 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via X OHQ FQ -1
```

```c1-exclude
cluster OCF Q OFQ YX
```

### Leaf R8pmmpppmp

This is terminal leaf 36 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
via X OCQ OD -1
via Z OHP OF 1
via Y OHC DP 1
via Z OHD DX -1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Y OCF FZ 1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via X OCF FP 1
```

```c1-factors
B0 triangle OHC 3 YZX
B1 triangle OHP 1 Z
B2 triangle OHQ 2 YZ
B3 ear HDF1_dmax
B4 drop p OHP 1 Z
B5 ear HCF_fmin
B6 triangle OHF 2 ZP
B7 drop q OCP 2 YX
B8 triangle OCD 2 XQ
B9 quad CDFP 1 Q
```

```c1-sum
18 B0*L7; 47 B1*L3; 1 B2*L7; 1 B3*L27*L31
6 B3*L31; 17 B3*L7; 2 B4*L3; 108 B4*L7*L30
3 B6*B7; 147 B8*B4; 8 B8*B5; 21 B8*L3
42 B8*L6; 26 B9; 1 B9*L27; 21 B9*L37
44 L0*L31; 11 L0*L7; 1 L22*L29*L31; 1 L29*L31
14 L3*L3*L22; 82 L3*L4*L20; 29 L3*L4*L6; 1 L7*L25*L30
1 TmCPQ; 140 TmHFP; 18 TmHFP*L37; 1 TmODQ*B5
1 TpCFQ*L22; 65 TpHDP*L37; 108 TpHDP*L6
```

There are 31 positive integer entries. The exact upper bound (33) is

`-4221049/125000000`.

### Leaf R8pmmpppp

This is terminal leaf 37 of 42.

```c1-geometry
imp CFP 1 containF
imp HDQ -1 containD
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFP 1 cluster
imp OFQ -1 cluster
imp ODQ -1 cluster
mesh OCPYXZ -1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OCP FP 1
via Z OHY FQ -1
via X OCF FP 1
```

```c1-factors
B0 mesh OCPYXZ -1 2
B1 ear HDF1_dmax
B2 ear HCF_fmin
B3 drop q OCP 3 YZX
B4 triangle OPQ 2 YZ
B5 triangle CDY 1 Q
B6 triangle CFP 1 Q
B7 quad OCQY 1 X
B8 quad OCQP 3 YZX
B9 quad CDFP 1 Q
```

```c1-sum
77 B0; 2 B0*L27; 1 B0*L30; 4 B0*L36
9 B1*B1*L31; 34 B1*L26*L31; 2 B1*L7; 6 B1*TmHCY
34 B2*L1; 14 B2*L1*L24; 3 B3*L25*L29; 94 B3*L3*L36
4 B3*L9*L30; 2 B3*TmHCY; 2 B4*B1; 3 B4*B2
22 B4*L21; 1 B5; 140 B5*L20; 8 B5*L26
5 B5*L36; 59 B6*L1; 5 B7*B1; 3 B7*L5
3 B8; 2 B8*L10; 22 B8*L20; 3 B8*L36
1 B8*L37; 7 B9*B1; 2 L1*L10*L21; 14 L1*L21*L24
1 L1*L3*L27; 4 L1*L9*L21; 52 L3*L11*L20; 19 L3*L21*L27
12 L3*L22*L27; 2 L3*L4; 58 L3*L4*L20; 1 L4*L20*L34
34 L7*L23; 14 L7*L23*L24; 12 L7*L23*L27; 1 L7*L23*L30
116 L7*L23*L36; 3 TmCPQ*L7; 84 TmHCY*L21; 160 TmHFP
14 TmHFP*L24; 6 TpCDF*L23; 2 TpCDF*L30; 37 TpCDQ
8 TpCDQ*L11; 3 TpCDQ*L20; 37 TpCFP*L1; 34 TpCFQ*B1
12 TpCFQ*B3; 2 TpDFP*L1; 7 TpDYQ; 2 TpDYQ*L22
2 TpFPQ*L3; 3 TpHCQ*L20; 3 TpHDP*L25; 3 TpHDP*L26
85 TpHDP*L37; 1 TpHDP*L4; 78 TpHDP*L9; 18 TpOFP*L1
```

There are 68 positive integer entries. The exact upper bound (33) is

`-659839539139/22750000000000`.

### Leaf R8pmp

This is terminal leaf 38 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFQ -1 cluster
via Y OCP DP 1
via X OCZ DZ 1
via X OCY DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via P DFY OF -1
via Z OHY FP -1
```

```c1-factors
B0 triangle OCP 2 YX
B1 drop q OCP 2 YX
B2 drop l OHQ 2 YZ
B3 triangle OFQ 2 YP
B4 triangle HFQ 1 P
B5 triangle FYQ 1 P
B6 quad HYQF 1 P
B7 quad CDFY 2 PQ
```

```c1-sum
88 B0*L25; 392 B0*L26; 69 B0*L30; 435 B0*L6
498 B1*L0*L31; 15 B1*L0*L34; 308 B1*L1*L3; 35 B1*L1*L6
329 B1*L10*L25; 33 B1*L10*L31; 659 B1*L25; 371 B1*L25*L30
28 B1*L29*L31; 20 B1*L29*L35; 155 B1*L3*L11; 163 B1*L3*L27
149 B1*L3*L34; 277 B1*L3*L6; 58 B1*L4*L6; 65 B1*L5*L25
707 B1*L6*L26; 197 B1*L6*L9; 156 B1*L9*L10; 328 B1*L9*L27
156 B1*L9*L9; 358 B1*TmHCY; 67 B2*L29*L35; 54 B2*L3*L34
679 B2*M3; 585 B3*L3; 521 B3*L35; 834 B4*L26
613 B4*L34; 7202 B5*B1; 413 B6*B1; 95 B7*L3
131 L0*L21*L35; 41 L0*L26*L35; 49 L0*L3*L21; 405 L0*L3*L26
135 L1*L20*L35; 60 L1*L21*L30; 540 L1*L25*L26; 161 L1*L25*L35
53 L1*L27*L34; 715 L1*L3*L27; 33 L1*L5*L6; 86 L1*L9*L34
153 L10*L21*L34; 650 L25*L27*L30; 63 L25*L29*L30; 154 L25*L30*L34
21 L26*L30*L34; 21 L26*L30*L35; 488 L3*L10*L26; 77 L3*L10*L31
163 L3*L11*L27; 56 L3*L11*L34; 88 L3*L20*L27; 65 L3*L26*L27
16 L3*L26*L29; 195 L3*L27*L34; 93 L3*L3*L4; 61 L3*L4
120 L3*L4*L20; 487 L3*L4*L22; 739 L3*L4*L25; 176 L3*L4*L26
909 L3*L4*L34; 45 L3*L4*L5; 785 L3*L4*L6; 103 L3*L6*L27
530 L3*L7*L10; 104 L5*L21*L34; 853 L5*L25*L26; 14 L5*L25*L29
263 L5*L25*L31; 729 L5*L25*L34; 28 L5*L25*L35; 23 L5*L29*L34
22 L5*L29*L35; 13 L5*L30*L31; 58 L5*L31*L34; 46 L5*L5*L21
35 L5*L5*L31; 58 L5*L6*L10; 4 L5*L6*L26; 238 L6*L10*L34
420 L6*L25*L30; 327 L6*L25*L34; 519 L6*L26*L34; 32 L6*L34*L35
58 L7*L10*L30; 655 L7*L21*L30; 327 L7*L25*L35; 44 L7*L35*L35
12 L9*L27*L30; 87 M3*L10; 124 M3*L20; 162 M3*L27
671 M3*L7; 82 M3*L9; 1235 TmCPQ*L0; 29 TmCPQ*L29
45 TmHCY*L5; 333 TmHPQ; 60 TmHPQ*L1; 861 TmHPQ*L10
371 TmHPQ*L26; 60 TmHPQ*L3; 144 TmHPQ*L35; 14 TmHPQ*L4
655 TmHPQ*L7; 816 TmOYQ*L3; 56 TmOYQ*L5; 655 TmOYQ*L7
990 TpCDQ; 556 TpCDQ*L22; 83 TpCDQ*L26; 64 TpCDQ*L30
1015 TpCDQ*L34; 29 TpCDQ*L5; 263 TpCDQ*L7; 49 TpDFP*L30
956 TpDFQ*L3; 120 TpDPQ*L27; 120 TpDPQ*L3; 104 TpDPQ*L34
95 TpDPQ*L5; 655 TpDPQ*L7; 2707 TpFPQ; 6794 TpFPQ*L11
492 TpFPQ*L26; 11 TpFPQ*L30; 40 TpFPQ*L34; 822 TpFPQ*L36
374 TpFYP*L0; 333 TpFYP*L10; 6407 TpFYP*L27; 129 TpFYP*L29
228 TpFYP*L36; 153 TpFYP*L9; 235 TpHDF*L25; 58 TpHDF*L34
174 TpOYP*L11; 1536 TpOYP*L27
```

There are 146 positive integer entries. The exact upper bound (33) is

`-5375628767237/500000000000000`.

### Leaf R8pp

This is terminal leaf 39 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp ODQ 1 cluster
via Y OCP DP 1
via Y OCQ DQ 1
via X OCZ DZ 1
via X OCY DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
```

```c1-factors
B0 triangle OHC 3 YZX
B1 triangle OCQ 2 YX
B2 drop q OCP 2 YX
B3 drop m OCQ 2 YX
B4 triangle HFQ 1 P
B5 triangle CDP 1 Q
```

```c1-sum
77 B0*L7; 49 B1*L30; 5 B1*L5; 82 B1*L6
35 B2*L30*L31; 60 B2*L5*L31; 39 B3*L3; 184 B3*L6
132 B3*TpCDP; 189 B3*TpHCD; 24 B3*TpHCF; 132 B3*TpHCP
214 B4*L21; 151 B4*L22; 25 B4*L31; 62 B4*L37
227 B5*L1; 142 L0*L7*L24; 97 L1*L25; 39 L1*L25*L37
117 L1*L6*L25; 26 L2*L5*L5; 61 L3*L23; 21 L3*L4*L4
42 L5*L20*L30; 10 L5*L24*L29; 52 L7*L22*L30; 63 L7*L30
11 L7*L30*L31; 14 L7*L7*L30; 60 TmCPQ; 267 TmCPQ*L30
27 TmHFP; 214 TmHFP*L24; 19 TmHFP*L27; 181 TmHFP*L4
30 TmHPQ; 177 TmHPQ*L4; 214 TmHPQ*L6; 249 TpCDF*L0
166 TpCDF*L23; 29 TpCDQ*L1; 65 TpDFP*L1; 5 TpDFQ*L1
132 TpDFQ*L22; 11 TpDFQ*L31; 14 TpDFQ*L7; 87 TpDPQ
116 TpDPQ*L36; 42 TpDPQ*L4; 49 TpODQ*L1; 40 TpODQ*L4
25 TpODQ*L7
```

There are 53 positive integer entries. The exact upper bound (33) is

`-22812797/500000000`.

### Leaf R9m

This is terminal leaf 40 of 42.

```c1-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp HDP 1 ear
imp HDQ 1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via P HDF OD 1
via Q HDF OD 1
via Q DFP OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via Y OHC DP 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHP FP -1
via Y OHP FQ -1
via Z OHX FX -1
via Z OHY FP -1
via Z OHY FQ -1
via Y HXP XQ 1
```

```c1-exclude
cap DFY PQ
```

### Leaf R9pm

This is terminal leaf 41 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp HDP 1 ear
imp HDQ 1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp OFQ -1 cluster
via Q HDF OD 1
via Y OHC DP 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHY FQ -1
via Y OHQ OD 1
via Y HXQ DX -1
```

```c1-factors
B0 triangle OHC 3 YZX
B1 triangle HDF 2 PQ
B2 triangle OHQ 2 YZ
B3 ear HDF1_dmax
B4 ear HDF_fmin
B5 ear HDF_dmax
B6 drop l OHQ 2 YZ
B7 triangle OFQ 1 Y
B8 triangle HFQ 1 P
B9 quad OCDF 3 YXQ
```

```c1-sum
59 B0*L7; 4 B1*L10; 7 B1*L25; 32 B1*L26
11 B1*L31; 3 B1*L35; 102 B1*L37; 192 B1*L4
3 B2*L1; 10 B2*L34; 109 B2*L4; 12 B3*TmOFY
27 B4*B4*L4; 117 B4*L1*L4; 2 B4*L4*L16; 109 B4*L4*L26
1 B4*TmOYX; 8 B4*TpCDX; 554 B5*B5*L31; 66 B5*L18*L25
32 B5*L29*L29; 37 B5*L31*L31; 1 B5*L7*L31; 19 B5*M2
75 B6*L1*L2; 14 B6*L1*L29; 7 B6*L1*L31; 9 B6*L1*L35
76 B6*L1*L4; 185 B6*L2*L18; 16 B6*L2*L35; 16 B6*L28
21 B6*L3*L11; 10 B6*L31*L35; 2 B6*L34; 122 B6*L4*L16
63 B6*L4*L28; 28 B6*L4*L35; 10 B6*L6*L34; 186 B6*TpCDX
5 B7*L11; 97 B7*L3; 4 B8*L3; 487 B9*B5
7 B9*L24; 77 B9*L26; 51 B9*L30; 312 B9*L5
23 B9*L9; 11 L0*L31*L31; 32 L1*L1*L4; 1 L18*L26*L31
51 L26*L29*L31; 26 L3*L24*L34; 14 L3*L29*L35; 14 L3*L3*L34
15 L3*L34*L36; 53 L3*L4*L34; 45 L3*L4*L4; 2 L4*L24*L28
28 L4*L24*L34; 5 L4*L6*L28; 6 L5*L18*L31; 1 L7*L18*L25
8 M2*L7; 22 M3*L31; 18 TmHCY*L27; 8 TmHCY*L3
19 TmHCY*L7; 24 TmOFY*L26; 8 TmOFY*L30; 5 TmOFY*L5
9 TmOYQ; 75 TmOYQ*L3; 19 TmOYQ*L36; 18 TmOYQ*L6
15 TpCDF*L2; 4 TpCDF*L29; 1 TpCDF*L34; 149 TpCDF*L4
151 TpCDQ; 2 TpCDQ*L18; 28 TpCDQ*L34; 47 TpCDQ*L35
33 TpCDQ*L36; 50 TpCDQ*L37; 77 TpCDQ*L4; 47 TpCDX*L4
65 TpCDY*L4; 19 TpDFQ*L0; 1 TpDFQ*L17; 1 TpDFQ*L18
50 TpDFQ*L3; 19 TpDFQ*L35; 75 TpHDQ*L2; 18 TpHDQ*L29
1 TpYXQ*B4
```

There are 97 positive integer entries. The exact upper bound (33) is

`-2112645517921/91000000000000`.

### Leaf R9pp

This is terminal leaf 42 of 42.

```c1-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp HDP 1 ear
imp HDQ 1 ear
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
imp ODP 1 cluster
imp ODQ 1 cluster
via Y OHC DP 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
```

```c1-factors
B0 triangle OHC 3 YZX
B1 triangle HDF 2 PQ
B2 triangle OCQ 2 YX
B3 ear HDF_fmin
B4 ear HDF_dmax
B5 drop m OCQ 2 YX
B6 quad HCDF 2 PQ
B7 triangle HFQ 1 P
```

```c1-sum
15 B0*L7; 2 B1*L26; 7 B2; 14 B2*L5
16 B2*L6; 9 B3*B5*L36; 4 B3*L1*L37; 19 B4*L31
15 B4*L7; 14 B5*B6; 2 B5*L1; 9 B7
19 B7*L37; 16 B7*L5; 8 L1*L25*L37; 4 L7*L27*L29
16 TpCDF; 13 TpCDF*L36; 12 TpCDQ*L1; 29 TpDFQ*L1
```

There are 20 positive integer entries. The exact upper bound (33) is

`-101270721/1000000000`.


## 7. Conclusion and scope

The nine roots are exhaustive, and each binary refinement covers both
nonzero signs of its actual triangle. Every terminal branch is excluded
either by a displayed geometric contradiction or by a nonnegative
polynomial sum with a strictly negative rational upper bound. Therefore
the supposed configuration with all doubled triangle areas at least
\(93/1000\) does not exist in the exact-pentagon C1 child. This proves
the theorem stated at the beginning of the note.
