# Three lower points, one side-cap point and one top-cap point

**Theorem.** A C1 configuration with three free points in the actual
triangle \(OHC\), one free point in either exterior side cap, and one
free point in the exterior top cap has an actual triangle of ordinary
area less than \(93/2000<A_*\).

This closes the entire count \((k,j,r,t,l)=(3,0,1,1,0)\), together
with its transposition, in C1_EXTERIOR_REDUCTION.md. All areas here are
doubled. Suppose every actual triangle has unsigned area at least
\(s=93/1000\).

## 1. Coordinates, symmetry and fixed bounds

Use the coordinates and lower mesh of C1_PENTAGON_GEOMETRY.md:

\[
 O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
 \quad Y=(u,v),\ Z=(z,w),\ X=(x,a),\ P=(p,q),\ Q=(\ell,m).
\]

The three lower points are \(Y,Z,X\). They form the distributed
mesh, since the clustered alternative is impossible. Choose the same
central label and side labels as in that manuscript. Use transposition
once to arrange \(u\ge v\); it interchanges the side caps but preserves
the top cap. Then interchange \(P,Q\), independently, to arrange
\(HPQ<0\). This leaves exactly these four location models:

| Model | Location of \(P\) | Location of \(Q\) |
|---|---|---|
| RT | right cap \(CD(1,0)\) | top cap \(DF(1,1)\) |
| TR | top cap \(DF(1,1)\) | right cap \(CD(1,0)\) |
| LT | left cap \(FH(0,1)\) | top cap \(DF(1,1)\) |
| TL | top cap \(DF(1,1)\) | left cap \(FH(0,1)\) |

The virtual cap corners need not be actual points. Points on the outer
square sides are allowed; points on the actual chords \(CD,DF,FH\)
would give a zero actual triangle and are excluded by the hypothesis.

Use the rational box, \(L_0,\ldots,L_{37}\), and global polynomial
factors printed in C1_PENTAGON.md. They remain valid because their
proofs require only the lower distributed triple, the anchor bounds,
and \(P,Q\) above \(HC\), as explained also in
C1_THREE_LOWER_TWO_TOP.md, Section 1. In particular

\[
 hc>\rho:=823/1000,\quad h,c>\rho,\quad
 3s\le u,v\le1-4s,\quad s\le d,f\le1-s. \tag{1}
\]

No assertion that \(P,Q\) lie in \(HCDF\) is used.

## 2. Complete cap signs and quantitative side bounds

For each \(R\in\{P,Q\}\), retain the global signs \(OHR<0\),
\(OCR>0\), \(HCR>0\) and all lower/upper cross signs from
C1_PENTAGON.md. Replace the signs at the three cap edges and add the
following signs according to the actual location of \(R\):

| Location | \(HFR\) | \(CDR\) | \(DFR\) | \(ODR\) | \(OFR\) | \(HDR\) | \(CFR\) | \(FYR\) | \(DYR\) |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| right | − | − | + | − | − | − | − | + | + |
| top | − | + | − | + | − | + | − | + | − |
| left | + | + | + | + | + | + | + | − | − |

These are affine vertex tests on the three virtual cap triangles. The
\(FYR,DYR\) tests additionally use \(Y\in OHC\), hence \(Y\)
below every edge of \(HCDF\).

For a right-cap point \(R=(R_x,R_y)\), the two actual clearances

\[
 d(R_x-c)-(1-c)R_y\ge s,\qquad cR_y\ge s
\]

imply

\[
 R_x-c\ge s,\quad d-R_y\ge s,\quad
 dc(1-c)\ge s,\quad d\ge4s. \tag{2}
\]

For the second inequality rewrite the first area as
\(d(R_x-1)+(1-c)(d-R_y)\), and use \(R_x\le1\).
The support inequality follows by multiplying the first clearance by
\(c\), the second by \(1-c\), and adding; then \(R_x\le1\).
The last follows from \(c(1-c)\le1/4\).

Because \(c>\rho>1/2\), \(d\le1-s\) and \(hc>\rho\), these
also give the following fixed rational bounds:

\[
 c<177/200,\quad h>929/1000,\quad d>319/500,
 \quad R_y<191/500. \tag{3}
\]

Here are exact margins for every rounding in (3):

\[
\begin{aligned}
 {s\over1-s}-{177\over200}\left(1-{177\over200}\right)
   &={27603\over36280000}>0,\\
 {\rho\over177/200}-{929\over1000}
   &={167\over177000}>0,\\
 {s\over\rho(1-\rho)}-{319\over500}
   &={10317\over24278500}>0,\\
 {191\over500}-\left(1-s-{s\over1-\rho}\right)
   &={1\over2360}>0.
\end{aligned}
\]

The last line follows from
\((1-c)(d-R_y)\ge s\). In particular, \(R_x>\rho+s\), so

\[
 OYR=uR_y-vR_x
 <(1-4s){191\over500}-3s(\rho+s)
 =-{3917\over250000}<0. \tag{4}
\]

Transposition gives all corresponding left-cap inequalities and
\(OYR>0\). It is used here to prove a reflected statement, not to
impose a second normalization on the configuration.

The local factor `sidebound CODE R` means the following nonnegative
polynomial; its premise is that \(R\) lies in the side cap named by
`CODE`.

| CODE | Nonnegative polynomial |
|---|---|
| right_x | \(R_x-c-s\) |
| right_y | \(d-R_y-s\) |
| right_d | \(d-4s\) |
| right_support | \(dc(1-c)-s\) |
| right_cmax | \(177/200-c\) |
| right_hmin | \(h-929/1000\) |
| right_dmin | \(d-319/500\) |
| right_ymax | \(191/500-R_y\) |
| left_x | \(f-R_x-s\) |
| left_y | \(R_y-h-s\) |
| left_f | \(f-4s\) |
| left_support | \(fh(1-h)-s\) |
| left_hmax | \(177/200-h\) |
| left_cmin | \(c-929/1000\) |
| left_fmin | \(f-319/500\) |
| left_xmax | \(191/500-R_x\) |

For the top-cap point use the four `topx`, `topy`, `topprojx`, and
`topprojy` factor definitions and actual-containment witnesses in
C1_THREE_LOWER_TWO_TOP.md, Section 2.

## 3. Exhaustive anchor-line cases and the permitted implications

Since \(HPQ<0\), positive anchor vertices on the line \(PQ\) form
one consecutive interval in the order \(O,C,D,F\), or the interval
is empty. The singleton \(O\) is impossible: its separating line
intersects both \(OH\) and \(OC\), so all square points above
\(HC\) lie strictly on the negative side, whereas \(P,Q\) lie
on the line. Both exterior points may lie on a line leaving all anchors
negative, so that empty-interval row is retained. The following ten
rows, with columns \(OPQ,CPQ,DPQ,FPQ\), are therefore exhaustive
in **each** of the four location models.

```c1st-roots
R0 -1 -1 -1 -1
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

The fixed geometric derivations use the same lower mesh, ray order,
linearity of side tests, and actual-triangle/actual-quadrilateral capacity
rules as C1_PENTAGON.md. The `via` and repeated `mesh` rules are
unchanged. The `lower`, `ray`, `beyond`, `cutD`, `cutF`, `containD`,
`containF`, and `inner` rules depend only on the displayed containments
and on the upper points lying above \(HC\).

There are exactly two qualifications to the old `cluster` rules:

- The inference \(OYR>0\Rightarrow ODR>0\) is used only when
  \(CDR>0\). Then an opposite \(ODR\) sign would put \(R\)
  inside the actual triangle \(OCD\), yielding the same clustered
  lower-triple contradiction as in the original proof.
- The reflected inference \(OYR<0\Rightarrow OFR<0\) is used
  only when \(HFR<0\), for the corresponding actual triangle
  \(OHF\).

The implications \(OYR>0,CFR>0\Rightarrow OFR>0\) and
\(OYR<0,HDR<0\Rightarrow ODR<0\) retain their original
actual-triangle proofs. No isolated-ear rule that assumes an upper point
inside \(HCDF\) is used. Conditional `ear` **factors**, when they
occur, require the explicit three-edge actual containment test in their
definition; they do not infer containment from a single edge sign.

## 4. The fixed complete rows

Each row below begins with its location model and one of the ten anchor
sign rows. No further orientation split is needed. Every geometric
inference, capacity witness, local factor and positive integer product
is printed. All base factor definitions and the coefficient-box upper
bound are those of C1_PENTAGON.md. The degree of each product is at most
three. Thus every sum is nonnegative under the hypothesis, but its exact
coefficient-box bound is negative.

There are 19 polynomial rows and 21 geometric rows. The polynomial
sums contain 246 positive integer entries, with largest coefficient
635. Every displayed rational upper bound is below \(-1/100\).

### Leaf RT.R0

```c1st-geometry

```

```c1st-exclude
four DPQ OHCF
```

### Leaf RT.R1

```c1st-geometry
imp OZP -1 ray
imp YXP 1 beyond
via X OCZ DZ 1
via Z OHC DP -1
via Z OHC DQ 1
via X OHC DP -1
via X OHC DQ 1
via Z OHY FY -1
via F DPQ ZX 1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1st-factors
B0 triangle DPQ 2 HF
B1 quad OPFH 3 YZQ
```

```c1st-sum
1 B0; 1 B1*L25; 1 TmDFQ*L20; 11 TmHDP*L24
9 TmHPQ; 1 TmHPQ*L7; 10 TpHDQ*L20
```

There are 7 positive integer entries. The exact coefficient-box upper bound is

`-31029058057/45500000000`.

### Leaf RT.R2

```c1st-geometry
imp OZP -1 ray
imp YXP 1 beyond
via D CPQ ZX 1
via Z OHC DP -1
via Z OHC DQ 1
via X OHC DP -1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1st-factors

```

```c1st-sum
1 TmDFQ; 1 TmFPQ; 1 TpDFP; 1 TpDPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf RT.R3

```c1st-geometry
imp OZP -1 ray
imp YXP 1 beyond
via D CPQ ZX 1
via Z OHC DP -1
via Z OHC DQ 1
via X OHC DP -1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OCF PQ 1
via P HFQ ZQ 1
via X OCF PQ 1
via Q CZP OZ -1
```

```c1st-factors

```

```c1st-sum
1 TmDZQ; 1 TmZPQ; 1 TpDPQ; 1 TpDZP
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf RT.R4

```c1st-geometry

```

```c1st-exclude
rays DPQ -1
```

### Leaf RT.R5

```c1st-geometry

```

```c1st-exclude
rays DPQ -1
```

### Leaf RT.R6

```c1st-geometry

```

```c1st-exclude
rays DPQ -1
```

### Leaf RT.R7

```c1st-geometry

```

```c1st-exclude
rays DPQ -1
```

### Leaf RT.R8

```c1st-geometry

```

```c1st-exclude
rays DPQ -1
```

### Leaf RT.R9

```c1st-geometry

```

```c1st-exclude
rays DPQ -1
```

### Leaf TR.R0

```c1st-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via D HPQ ZX 1
via D CPQ ZP -1
via D HPQ ZQ 1
via D CPQ XP -1
via D HPQ XQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1st-factors

```

```c1st-sum
1 TmDPQ; 1 TmODQ*L21; 1 TpODP*L25
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf TR.R1

```c1st-geometry

```

```c1st-exclude
rays DPQ 1
```

### Leaf TR.R2

```c1st-geometry

```

```c1st-exclude
rays DPQ 1
```

### Leaf TR.R3

```c1st-geometry

```

```c1st-exclude
rays DPQ 1
```

### Leaf TR.R4

```c1st-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via D HPQ ZX 1
via Z OHC DP 1
via Z OHC DQ -1
via X OHC DP 1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OHQ PQ -1
via Z OHD PQ -1
```

```c1st-factors

```

```c1st-sum
1 TmCDQ; 1 TmDPQ; 1 TpCDP; 1 TpCPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf TR.R5

```c1st-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ -1
via X OHC DP 1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OHQ PQ -1
via Z OHY PQ -1
```

```c1st-factors
B0 topy P 0 -
B1 sidebound right_x Q
```

```c1st-sum
2 B0*B1; 2 L21*L26; 2 TmCDQ; 2 TpCPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-8649/250000`.

### Leaf TR.R6

```c1st-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ -1
via X OHC DP 1
via X OHC DQ -1
via Z OHY FY -1
via F DPQ ZX 1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OHQ PQ -1
via Z OHY PQ -1
via P HFQ XQ 1
```

```c1st-factors
B0 sidebound right_x Q
B1 topx P 0 -
B2 sidebound right_y Q
B3 topy P 0 -
B4 drop l OHQ 2 YZ
B5 triangle DPQ 2 CF
```

```c1st-sum
2 B1*B2; 1 B3*B4; 1 B5; 1 B5*L20
1 L20*L20*B2; 1 L21*L21*L26; 9 L21*L26; 10 L22*B0
4 TmCDQ*L22; 2 TmDFP; 4 TpCDP*L26; 9 TpCPQ
1 TpCPQ*L21; 4 TpCPQ*L4; 2 TpFPQ
```

There are 15 positive integer entries. The exact coefficient-box upper bound is

`-26136871/125000000`.

### Leaf TR.R7

```c1st-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ -1
via X OHC DP 1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1st-factors
B0 sidebound right_dmin Q
B1 sidebound right_y Q
B2 topx P 0 -
B3 topy P 0 -
B4 sidebound right_cmax Q
B5 sidebound right_hmin Q
B6 sidebound right_d Q
B7 triangle OHC 3 YZX
B8 triangle OHX 1 Z
B9 quad OCDH 3 YZX
B10 quad OCFH 3 YZX
B11 quad OCQH 3 YZX
```

```c1st-sum
52 B10*L1; 11 B11*L28; 26 B7*B1; 221 B7*B2
56 B7*L27; 11 B8*L25; 17 B9*L25; 51 L1*L1*L6
11 L1*L2*L4; 42 L1*L21*L21; 42 L1*L6*L21; 109 L18*L25*L36
45 L2*B0; 407 L2*L20*B0; 164 L2*L6*B1; 33 L20*L25*B6
407 L20*L26*B4; 87 L21*B0*B0; 260 L21*L23*L26; 163 L23*B2*B0
260 L23*L23*L25; 23 L23*L25; 172 L24*B0*B0; 267 L25*B0
9 L25*L30*B0; 254 L26*B2*B4; 48 L26*L36*B4; 3 L3*L16*L26
14 L31*B2*B5; 608 L4*L20*L25; 255 L4*L29*B2; 97 L5*L21*L23
259 L5*L21*L26; 78 L5*L25*B0; 93 L6*B0*B0; 265 L6*B3*B0
134 L6*L20*B0; 254 L6*L21*B3; 69 L6*L21*L26; 73 L6*L6*B0
394 L6*L6*B3; 121 L7*B2*B5; 211 L7*L23*B2; 20 L7*L23*B4
11 M2*L27; 6 M3*L17; 52 TmCDQ; 72 TmCDQ*B2
590 TmCDQ*L20; 17 TmCDQ*L31; 8 TmCDQ*L36; 129 TmCXQ*L36
65 TmDFP; 20 TmDFP*L24; 172 TmDFP*L4; 319 TmDFP*L6
2 TmHCY; 160 TmHFP; 43 TmHFP*L21; 136 TmHFP*L31
97 TmHFP*L37; 255 TmHFP*L4; 89 TmOFP*L25; 5 TmOHX*L34
8 TmOYX; 1 TmOYX*L36; 75 TpDPQ; 260 TpDPQ*L23
259 TpDPQ*L5; 69 TpDPQ*L6; 91 TpOCQ*B4
```

There are 71 positive integer entries. The exact coefficient-box upper bound is

`-602831793237/22750000000000`.

### Leaf TR.R8

```c1st-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ -1
via X OHC DP 1
via X OHC DQ -1
via Z OHY FY -1
via F DPQ ZX 1
via F DPQ ZP -1
via F DZP ZQ 1
via F DPQ XP -1
via F DZP XQ 1
via Y CFZ ZP -1
via P HFZ OY 1
via X OCY OP -1
```

```c1st-factors
B0 topx P 0 -
B1 quad OQDH 2 YZ
B2 quad HXCD 1 Y
B3 quad HXQD 1 Y
```

```c1st-sum
2 B0; 12 B1*B0; 1 B2*B0; 5 B3*B0
5 L13*L23; 13 L15*B0; 4 L4*B0; 5 TmDFP
17 TmDFP*L24; 1 TmDFP*L37; 2 TmFXP; 5 TmFXP*L24
13 TmFZP; 12 TmHFP; 4 TmHFP*L17; 12 TmOFP*L25
1 TpCFX*L23; 14 TpFPQ; 5 TpFPQ*L17
```

There are 19 positive integer entries. The exact coefficient-box upper bound is

`-46131063/1000000000`.

### Leaf TR.R9

```c1st-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via D HPQ ZX 1
via D CPQ ZP -1
via D HPQ ZQ 1
via D CPQ XP -1
via D HPQ XQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1st-factors

```

```c1st-sum
1 TmDFP; 1 TmDPQ; 1 TpDFQ; 1 TpFPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf LT.R0

```c1st-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via F HPQ ZX 1
via F CPQ ZP -1
via F HPQ ZQ 1
via F CPQ XP -1
via F HPQ XQ 1
```

```c1st-factors

```

```c1st-sum
1 TmCFQ*L23; 1 TmFPQ; 1 TpCFP*L27
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf LT.R1

```c1st-geometry

```

```c1st-exclude
rays FPQ 1
```

### Leaf LT.R2

```c1st-geometry

```

```c1st-exclude
rays FPQ 1
```

### Leaf LT.R3

```c1st-geometry

```

```c1st-exclude
rays FPQ 1
```

### Leaf LT.R4

```c1st-geometry
imp OXP 1 ray
imp YZP -1 beyond
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via F HPQ ZX 1
via Z OHC FP 1
via Z OHC FQ -1
via X OHC FP 1
via X OHC FQ -1
via P CDQ YQ -1
via Z OHD PQ -1
via P CDQ XQ -1
via Q HYP OY 1
via X OCY OQ -1
via Z OHY YQ 1
```

```c1st-exclude
cluster OCP Q OCQ YX
```

### Leaf LT.R5

```c1st-geometry
imp OXP 1 ray
imp YZP -1 beyond
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via F HPQ ZX 1
via Z OHC FP 1
via Z OHC FQ -1
via X OHC FP 1
via X OHC FQ -1
```

```c1st-factors

```

```c1st-sum
1 TmCFQ; 1 TmFPQ; 1 TpCFP; 1 TpCPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf LT.R6

```c1st-geometry
imp OXP 1 ray
imp YZP -1 beyond
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHC FQ -1
via X OHC FP 1
via X OHC FQ -1
```

```c1st-factors
B0 triangle FPQ 2 CD
```

```c1st-sum
1 B0; 10 TmCFQ*L22; 1 TmDFQ*L22; 11 TpCFP*L26
10 TpCPQ
```

There are 5 positive integer entries. The exact coefficient-box upper bound is

`-638592571/1000000000`.

### Leaf LT.R7

```c1st-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via F HPQ ZX 1
via F CPQ ZP -1
via F HPQ ZQ 1
via F CPQ XP -1
via F HPQ XQ 1
```

```c1st-factors

```

```c1st-sum
1 TmDFQ; 1 TmFPQ; 1 TpDFP; 1 TpDPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf LT.R8

```c1st-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHC FQ -1
via X OHC FP 1
via X OHC FQ -1
```

```c1st-factors
B0 sidebound left_x P
B1 topy Q 0 -
```

```c1st-sum
2 B0*B1; 2 L23*L25; 2 TmDFQ; 2 TpDPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-8649/250000`.

### Leaf LT.R9

```c1st-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHC FQ -1
via X OHC FP 1
via X OHC FQ -1
```

```c1st-factors
B0 sidebound left_fmin P
B1 sidebound left_x P
B2 topx Q 0 -
B3 sidebound left_hmax P
B4 topy Q 0 -
B5 sidebound left_cmin P
B6 sidebound left_f P
B7 topprojy Q 0 -
B8 triangle OHC 3 YZX
B9 sidebound left_xmax P
B10 quad OCDH 3 YZX
```

```c1st-sum
33 B10*B0; 55 B10*L3; 9 B7*B3; 19 B8*B1
286 B8*B4; 21 B8*B9; 56 B8*L21; 9 L0*B0
509 L0*L26*B0; 19 L0*L3*L6; 91 L0*L4*B1; 9 L0*L5*L12
135 L12*L23*L37; 227 L20*B3*B4; 290 L20*L25*L27; 496 L20*L26*B3
44 L20*L37*B3; 191 L22*B0*B0; 283 L23*B0; 290 L23*L25*L25
38 L23*L26*B6; 14 L23*L29; 22 L23*L36*B0; 189 L25*B0*B4
99 L27*B0*B0; 49 L3*L27*L27; 52 L3*L3*L4; 28 L3*L4*B0
50 L3*L4*L27; 15 L4*B0*B0; 206 L4*B0*B2; 72 L4*L20*L27
138 L4*L26*B0; 283 L4*L27*B2; 80 L4*L4*B0; 429 L4*L4*B2
152 L5*B5*B4; 11 L5*L12*L23; 14 L5*L14*L20; 28 L5*L25*B3
233 L5*L25*B4; 635 L6*L23*L26; 204 L6*L29*B4; 290 L7*L20*L27
99 L7*L23*B0; 100 L7*L25*L27; 18 M1; 46 TmDFQ
50 TmDFQ*L22; 349 TmDFQ*L4; 191 TmDFQ*L6; 104 TmOHP*B3
196 TpCDQ; 50 TpCDQ*L27; 152 TpCDQ*L30; 134 TpCDQ*L36
204 TpCDQ*L6; 83 TpFPQ; 290 TpFPQ*L25; 72 TpFPQ*L4
290 TpFPQ*L7; 53 TpHFP; 100 TpHFP*B4; 623 TpHFP*L26
22 TpHFP*L30; 139 TpHZP*L37; 14 TpHZP*L5; 122 TpODQ*L23
```

There are 68 positive integer entries. The exact coefficient-box upper bound is

`-2036148301/91000000000`.

### Leaf TL.R0

```c1st-geometry

```

```c1st-exclude
four FPQ OHCD
```

### Leaf TL.R1

```c1st-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ 1
via X OHC FP -1
via X OHC FQ 1
via Y OCQ PQ 1
via P CDQ ZQ -1
via X OCY PQ 1
```

```c1st-factors
B0 sidebound left_y Q
B1 topx P 0 -
B2 drop m OCQ 2 YX
B3 topy P 0 -
B4 sidebound left_x Q
B5 triangle FPQ 2 HD
```

```c1st-sum
1 B1*B2; 1 B3*B4; 1 B5; 1 B5*L22
5 L20*B0; 1 L22*L22*B4; 1 L23*L23*L24; 4 L23*L24
1 TmDFP; 1 TmDPQ; 3 TmHFP*L24; 4 TmHPQ
1 TmHPQ*L23; 3 TmHPQ*L6; 3 TpHFQ*L20
```

There are 15 positive integer entries. The exact coefficient-box upper bound is

`-12415253/40000000`.

### Leaf TL.R2

```c1st-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ 1
via X OHC FP -1
via X OHC FQ 1
via Y OCQ PQ 1
via X OCY PQ 1
```

```c1st-factors
B0 topx P 0 -
B1 sidebound left_y Q
```

```c1st-sum
2 B0*B1; 2 L23*L24; 2 TmHPQ; 2 TpHFQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-8649/250000`.

### Leaf TL.R3

```c1st-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via F CPQ ZX 1
via Z OHC FP -1
via Z OHC FQ 1
via X OHC FP -1
via X OHC FQ 1
via Y OCF PQ 1
via X OCF PQ 1
```

```c1st-factors

```

```c1st-sum
1 TmHFP; 1 TmHPQ; 1 TpFPQ; 1 TpHFQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf TL.R4

```c1st-geometry

```

```c1st-exclude
rays FPQ -1
```

### Leaf TL.R5

```c1st-geometry

```

```c1st-exclude
rays FPQ -1
```

### Leaf TL.R6

```c1st-geometry

```

```c1st-exclude
rays FPQ -1
```

### Leaf TL.R7

```c1st-geometry

```

```c1st-exclude
rays FPQ -1
```

### Leaf TL.R8

```c1st-geometry

```

```c1st-exclude
rays FPQ -1
```

### Leaf TL.R9

```c1st-geometry

```

```c1st-exclude
rays FPQ -1
```


## 5. Completion

The four location models cover both side caps and both label orders
without reusing the lower-mesh transposition. Each model has all ten
anchor-line rows. Every one of those forty rows has a displayed
contradiction. This proves the theorem for the entire three-lower,
one-side-cap, one-top-cap count and its reflection.

The optional `check_c1_three_lower_side_top.py` reads the fixed manuscript
and verifies all signs, geometric premises, positive integer products,
and rational bounds using `Fraction` arithmetic. It reuses the published
polynomial/sign routines of `check_c1_pentagon.py` and the four printed
top-factor formulas. It uses no optimizer, discovery data, coordinate
sample or runtime subdivision.
