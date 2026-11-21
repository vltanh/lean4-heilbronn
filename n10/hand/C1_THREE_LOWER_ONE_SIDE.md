# Three lower points, one central point and one side-cap point

**Theorem.** A C1 configuration with three free points in the actual
triangle \(OHC\), one free point in the actual quadrilateral \(HCDF\),
and one free point in either exterior side cap has an actual triangle
of ordinary area less than \(93/2000<A_*\).

This closes the entire count \((k,j,r,t,l)=(3,1,1,0,0)\), and its
transposition, in C1_EXTERIOR_REDUCTION.md. With the already closed
exact-pentagon, two-top, side/top and central/top children, it completes
**all C1 configurations with three lower points**. It makes no claim
about C1 counts with zero, one or two lower points.

Assume every actual unsigned doubled triangle area is at least
\(s=93/1000\).

## 1. Coordinates, proved bounds and the four location models

Use the lower distributed mesh, coordinates, rational box, affine
factors \(L_0,\ldots,L_{37}\), and global factors printed in
C1_PENTAGON.md and C1_PENTAGON_GEOMETRY.md:

\[
 O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
 \quad Y=(u,v),\ Z=(z,w),\ X=(x,a),\ P=(p,q),\ Q=(\ell,m).
\]

The lower points are \(Y,Z,X\), labeled by the same central-barycentric
choice and side-fan order. Transpose once to arrange \(u\ge v\).
This can interchange the left and right caps. Independently interchange
\(P,Q\) to arrange \(HPQ<0\). The following four location models
therefore cover the entire family without a second use of symmetry:

| Model | Location of \(P\) | Location of \(Q\) |
|---|---|---|
| RU | right cap \(CD(1,0)\) | inside \(HCDF\) |
| UR | inside \(HCDF\) | right cap \(CD(1,0)\) |
| LU | left cap \(FH(0,1)\) | inside \(HCDF\) |
| UL | inside \(HCDF\) | left cap \(FH(0,1)\) |

The global box and polynomial factors remain valid because both
nonlower points lie above \(HC\); their derivations do not require
both inside \(HCDF\). Keep the original starting signs for the
central point. For the side-cap point use exactly the right or left
sign row in C1_THREE_LOWER_SIDE_TOP.md, Section 2, including its
proved \(OYR<0\) or \(OYR>0\) sign.

That same section proves every additional quantitative side bound and
every `sidebound CODE R` factor used here. In particular a right point
has \(c<177/200\), \(h>929/1000\), \(d>319/500\),
\(R_y<191/500\); the left bounds are their reflections. Their
proofs require only three lower points and the occupied side cap, so
they apply with the other point central. The tables below use the
original common coefficient box and these proved nonnegative factors;
no finer coordinate subdivision is introduced. Outer-square boundary
faces are allowed throughout.

## 2. Exhaustive anchor-line cases and their fixed refinements

The positive anchors for the line \(PQ\) form a consecutive interval
in \(O,C,D,F\), since \(HPQ<0\). The line passes through the
central point inside the actual pentagon, so the interval is nonempty.
The singleton \(O\) would put the line below \(HC\), contrary to
both upper points lying on it. Thus the following nine rows, with
columns \(OPQ,CPQ,DPQ,FPQ\), are exhaustive in each model:

```c1si-roots
R0 1 1 -1 -1
R1 1 1 1 -1
R2 1 1 1 1
R3 -1 1 -1 -1
R4 -1 1 1 -1
R5 -1 1 1 1
R6 -1 -1 1 -1
R7 -1 -1 1 1
R8 -1 -1 -1 1
```

The following fixed binary refinements split the indicated actual
triangle into its strict negative and positive alternatives. Their
columns are node, triangle, negative child and positive child. A node
name starts with its location model. A name absent from the table is
one of the complete terminal rows below.

```c1si-tree
RU.R0 OYQ RU.R0m RU.R0p
UR.R6 OYP UR.R6m UR.R6p
UR.R6m OXP UR.R6mm UR.R6mp
UR.R6mp OXQ UR.R6mpm UR.R6mpp
UR.R7 OYP UR.R7m UR.R7p
UR.R7m OXP UR.R7mm UR.R7mp
UR.R7mp OXQ UR.R7mpm UR.R7mpp
UR.R7p OZP UR.R7pm UR.R7pp
UR.R7pm OXQ UR.R7pmm UR.R7pmp
LU.R5 OYQ LU.R5m LU.R5p
LU.R7 OYQ LU.R7m LU.R7p
LU.R7m OZP LU.R7mm LU.R7mp
LU.R7mp OXQ LU.R7mpm LU.R7mpp
LU.R7mpp HDQ LU.R7mppm LU.R7mppp
LU.R7mppm CFQ LU.R7mppmm LU.R7mppmp
LU.R7mppmp YZQ LU.R7mppmpm LU.R7mppmpp
LU.R7p OZP LU.R7pm LU.R7pp
LU.R7pp OZQ LU.R7ppm LU.R7ppp
LU.R7ppm HDQ LU.R7ppmm LU.R7ppmp
LU.R7ppmm CFQ LU.R7ppmmm LU.R7ppmmp
LU.R7ppmmp YXQ LU.R7ppmmpm LU.R7ppmmpp
LU.R8 OYQ LU.R8m LU.R8p
LU.R8p OZP LU.R8pm LU.R8pp
LU.R8pp OZQ LU.R8ppm LU.R8ppp
LU.R8ppm CFQ LU.R8ppmm LU.R8ppmp
```

The permitted geometric rules are precisely those of
C1_THREE_LOWER_SIDE_TOP.md, Section 3. Its two qualifications on the
endpoint `cluster` implications are essential here: the inference to
\(ODR>0\) requires \(CDR>0\), and the inference to \(OFR<0\)
requires \(HFR<0\). The printed derivations respect both guards.
No isolated-ear implication assuming both points inside \(HCDF\)
is used. Every repeated mesh, affine interpolation and occupancy bound
has its actual geometric witnesses printed.

## 3. Factors and complete exact contradictions

Use the global factors and local `triangle`, `quad`, `drop`, `ear`,
`mesh`, and `spread` definitions of C1_PENTAGON.md, with their
explicit actual-containment premises, and the side factors from
C1_THREE_LOWER_SIDE_TOP.md, Section 2. No cost for two free points
inside \(HCDF\) is assumed.

Each printed sum is a positive integer combination of products of
nonnegative factors, of degree at most three. The coefficient-box rule
(33) of C1_PENTAGON.md gives the stated exact negative upper bound,
contradicting nonnegativity. The other rows give a fixed direct
geometric contradiction.

There are 36 starting rows, 25 binary splits, 51 polynomial leaves
and 10 geometric leaves. The sums contain 2,264 positive integer entries;
the largest coefficient is 59,515. Every printed upper bound is below
\(-1/100\).

### Leaf RU.R0m

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
via Q OHP HD -1
via X OCZ DZ 1
via Z OHC DP -1
via X OHC DP -1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
```

```c1si-exclude
cluster OHP Q OHQ YZ
```

### Leaf RU.R0p

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
mesh OHPQZY 1
via Q OHP HD -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP -1
via X OHC DP -1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via X OCY PQ 1
via Y OZP DZ 1
```

```c1si-factors
B0 sidebound right_x P
B1 sidebound right_ymax P
B2 sidebound right_cmax P
B3 drop m OCQ 2 YX
B4 triangle OCQ 2 YX
B5 triangle HCP 1 Q
B6 quad OCDH 4 YZXQ
B7 quad OCQH 3 YZX
B8 sidebound right_y P
```

```c1si-sum
7 B0*B3; 17 B4*L20; 6 B5*B3; 3 B6*L21
6 B7; 1 B7*B8; 7 B7*L23; 7 B7*L36
17 L20*L26*B2; 22 L24*B1; 2 L27*B1; 1 L36*B0*B3
2 L36*B2; 5 L37*L37*B1; 2 L4*L24*B1; 10 L5*B0
10 TmCDP; 2 TmCDP*L26; 3 TmCDP*L37; 23 TmHPQ
7 TmHPQ*L36; 2 TmHPQ*L4
```

There are 22 positive integer entries. The exact coefficient-box upper bound is

`-1406812789/22750000000`.

### Leaf RU.R1

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
via D CPQ OQ -1
via Q OHP HD -1
via D CPQ ZX 1
via Z OHC DP -1
via X OHC DP -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
```

```c1si-factors

```

```c1si-sum
1 TmODP*L25; 1 TpDPQ; 1 TpODQ*L21
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf RU.R2

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
via D CPQ OQ -1
via Q OHP HD -1
via D CPQ ZX 1
via Z OHC DP -1
via X OHC DP -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Y OCF PQ 1
via X OCF PQ 1
via D CPQ YQ -1
via D CPQ XQ -1
```

```c1si-factors
B0 sidebound right_ymax P
B1 triangle OPQ 1 D
B2 triangle HFQ 1 P
B3 drop p OHP 3 YZQ
B4 triangle CPQ 1 D
B5 quad OCFH 3 YZX
B6 quad OCQH 3 YZX
B7 quad HQDF 1 P
```

```c1si-sum
1 B1*L6; 2 B2*B3; 1 B4; 1 B5*B0
1 B6*L21; 1 B7*B3; 2 B7*L25; 2 L1*L20*L25
1 L25*B0; 1 L37*L37*B0; 1 L6*L21*L26; 3 L6*L25*B0
1 TmHPQ; 2 TmHPQ*L24; 3 TmHPQ*L7; 4 TmODP*L25
4 TpDPQ; 2 TpDPQ*L24; 1 TpDPQ*L7; 4 TpFPQ
1 TpFPQ*L36; 1 TpODQ; 5 TpODQ*L21; 1 TpODQ*L6
```

There are 24 positive integer entries. The exact coefficient-box upper bound is

`-2117837117/91000000000`.

### Leaf RU.R3

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
via Q OCP OD -1
via Q OCD OF -1
via Y OHP OQ 1
via Z OHD OQ 1
via Q OCD HD -1
via Y OHQ DQ -1
via X OCZ DZ 1
via Z OHC DP -1
via Z OHD DQ -1
via X OHC DP -1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
via X OCY YQ -1
via Y OHP PQ -1
via Z OHD PQ -1
```

```c1si-factors
B0 sidebound right_cmax P
B1 sidebound right_ymax P
B2 quad OCPY 2 XQ
```

```c1si-sum
1 B0; 2 B2; 1 L37*B1; 1 L37*L37*B1
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-11963813/200000000`.

### Leaf RU.R4

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
via Q OCP OD -1
via Q OCD OF -1
via Y OHP OQ 1
via Z OHD OQ 1
via Q OCD HD -1
via Y OHP DQ -1
via D CPQ ZX 1
via Z OHC DP -1
via Z OHD DQ -1
via X OHC DP -1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
via X OCY YQ -1
via Y OHP PQ -1
via Z OHY PQ -1
via D CPQ OY -1
via D CPQ YX 1
```

```c1si-factors
B0 sidebound right_ymax P
B1 sidebound right_x P
B2 drop q OCP 1 Q
B3 drop l OHQ 2 YZ
B4 triangle CPQ 1 D
B5 quad OCQH 3 YZX
```

```c1si-sum
6 B4; 3 B4*L27; 2 B5; 1 L25*B0
3 L27*B2*B3; 3 L27*L27*B1; 6 L37*L37*B0; 3 TmOPQ
```

There are 8 positive integer entries. The exact coefficient-box upper bound is

`-329139883/18200000000`.

### Leaf RU.R5

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
via Q OCP OD -1
via Q OCD OF -1
via Y OHP OQ 1
via Z OHD OQ 1
via Q OCD HD -1
via Y OHP DQ -1
via D CPQ ZX 1
via Z OHC DP -1
via Z OHD DQ -1
via X OHC DP -1
via Z OHY FY -1
via Y OHP FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
via X OCY YQ -1
via Y OHP PQ -1
via Z OHY PQ -1
via D CPQ OY -1
via D CPQ YX 1
```

```c1si-factors
B0 sidebound right_ymax P
B1 sidebound right_x P
B2 drop q OCP 1 Q
B3 drop l OHQ 2 YZ
B4 triangle OFQ 2 YP
B5 triangle CPQ 1 D
B6 quad OCQH 3 YZX
```

```c1si-sum
2 B4*B2; 7 B5; 2 B5*L20; 1 B5*L24
4 B5*L27; 1 B6*L27; 2 L20*L37*B0; 5 L27*B2*B3
4 L27*L27*B1; 7 L37*L37*B0; 4 TmOPQ; 2 TmOPQ*L20
2 TmOPQ*L24; 2 TpFPQ
```

There are 14 positive integer entries. The exact coefficient-box upper bound is

`-34727263/1000000000`.

### Leaf RU.R6

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Y OHP OQ 1
via Z OHY OQ 1
via X OCZ DZ 1
via Z OHC DP -1
via X OHC DP -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Y HXP XQ 1
imp OFQ -1 cluster
via Y OHQ FQ -1
via Z OHY FQ -1
```

```c1si-factors

```

```c1si-sum
1 TmCDP; 1 TmCPQ; 1 TpCDQ; 1 TpDPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf RU.R7

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Y OHP OQ 1
via Z OHY OQ 1
via X OCZ DZ 1
via Z OHC DP -1
via X OHC DP -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Y HXP XQ 1
imp OFQ -1 cluster
via Y OHP FQ -1
via Z OHY FQ -1
```

```c1si-factors

```

```c1si-sum
1 TmCDP; 1 TmCPQ; 1 TpCDQ; 1 TpDPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf RU.R8

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Q DFP OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via Q DFP CF -1
via X OCZ DZ 1
via Z OHC DP -1
via X OHC DP -1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y HXP XQ 1
```

```c1si-factors
B0 sidebound right_dmin P
B1 sidebound right_x P
B2 sidebound right_ymax P
B3 drop l OHQ 2 YZ
B4 sidebound right_y P
B5 ear CDF1_fmax
B6 drop p OHP 2 YZ
B7 triangle DPQ 1 C
B8 quad OQFH 3 YZP
```

```c1si-sum
2 B2*B3; 11 B7; 1 B7*L20; 3 B7*L27
2 B7*L36; 1 B7*L6; 1 B8*B2; 1 L20*L22*B5
3 L21*B0; 8 L22*L25; 1 L22*L25*L30; 1 L22*L25*L36
11 L26*B1; 1 L26*L30*B6; 1 L26*L36*B1; 8 L4*L6*B2
1 L6*L26*B4; 2 TmHPQ*L5; 1 TmHPQ*L7; 1 TmOPQ*L36
9 TmOPQ*L4; 1 TmOPQ*L7; 3 TpDFQ*L22; 3 TpDFQ*L27
1 TpFPQ*L20; 3 TpFPQ*L27; 1 TpFPQ*L36; 11 TpFPQ*L4
1 TpHDF*B6; 1 TpHDF*L25
```

There are 30 positive integer entries. The exact coefficient-box upper bound is

`-3166309427/22750000000`.

### Leaf UR.R0

```c1si-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via Y OHQ OP 1
via Z OHY OP 1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
via X OCY YP -1
```

```c1si-exclude
cluster OHP Q OHQ YZ
```

### Leaf UR.R1

```c1si-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via P DFQ OF -1
via Y OHQ OP 1
via Z OHY OP 1
via P DFQ CF -1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Y OHC FP -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via X OCY YP -1
via P DFQ YQ 1
via P DFQ ZQ 1
via P DFQ XQ 1
```

```c1si-exclude
cluster OHP Q OHQ YZ
```

### Leaf UR.R2

```c1si-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via Y OHQ OP 1
via Z OHY OP 1
via C DPQ FP 1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
via X OCY YP -1
via Y OCF PQ 1
via P HFQ ZQ 1
via X OCF PQ 1
```

```c1si-exclude
cluster OHP Q OHQ YZ
```

### Leaf UR.R3

```c1si-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
via Y OHQ PQ -1
via Z OHD PQ -1
```

```c1si-factors

```

```c1si-sum
1 TmCDQ; 1 TmDPQ; 1 TpCDP; 1 TpCPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf UR.R4

```c1si-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via P DFQ OF -1
via P DFQ CF -1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Y OHC FP -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OHQ PQ -1
via Z OHY PQ -1
via P DFQ XQ 1
```

```c1si-factors
B0 sidebound right_x Q
B1 sidebound right_dmin Q
B2 triangle DPQ 1 C
```

```c1si-sum
2 B2; 11 L21*L26; 10 L22*B0; 1 L25*B1
9 TmCDQ*L22; 1 TmHPQ*L4; 1 TmOPQ*L5; 9 TpCDP*L26
10 TpCPQ; 9 TpCPQ*L4
```

There are 10 positive integer entries. The exact coefficient-box upper bound is

`-452032469/1000000000`.

### Leaf UR.R5

```c1si-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
via C DPQ FP 1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
via Y OHQ PQ -1
via Z OHY PQ -1
via P HFQ XQ 1
```

```c1si-factors
B0 triangle FPQ 1 C
```

```c1si-sum
1 B0; 11 TmCFQ*L22; 11 TpCFP*L26; 10 TpCPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-1167465749/1000000000`.

### Leaf UR.R6mm

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHPYZX 1
via X OHP OQ 1
via P DFQ CF -1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Y OHC FP -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y HZP ZQ 1
mesh OHQYZX 1
```

```c1si-factors
B0 sidebound right_cmax Q
B1 sidebound right_dmin Q
B2 drop p OHP 3 YZX
B3 sidebound right_x Q
B4 triangle OYP 1 X
B5 triangle CDF 1 P
B6 quad OCDH 3 YZX
B7 quad OCPH 3 YZX
B8 quad OCQH 3 YZX
B9 quad OPFH 3 YZX
B10 quad OQPY 1 X
B11 mesh OHPYZX 1 2
B12 sidebound right_support Q
```

```c1si-sum
3 B1*B2; 1 B10*L2; 8 B10*L29; 21 B11
3 B11*L24; 4 B11*L36; 9 B11*L4; 5 B12
2 B4*B1; 7 B5*L26; 2 B6*L1; 2 B7*L34
10 B8*B0; 1 B9*B1; 1 B9*B3; 6 ED*B0
8 L1*L20*L37; 3 L11*L24*B2; 1 L21*L27*L29; 11 L23*L23*B0
2 L23*L23*B3; 2 L23*L26*B2; 4 L23*L30*B3; 4 L24*B1*B2
2 L26*B0; 7 L37*B1*B2; 6 L4*L22*L25; 1 L5*L22*L31
6 M3*L5; 21 TmCDQ*L23; 7 TmCPQ; 1 TmCPQ*L23
16 TmCPQ*L4; 2 TmFPQ; 7 TmFPQ*L4; 1 TmHCY
11 TmHCY*L20; 9 TmHCY*L23; 3 TmHCY*L24; 9 TmHCY*L36
3 TmHCY*L4; 1 TmHDY*B0; 4 TmHPQ*B1; 2 TmHPQ*L6
4 TmOPQ*L5; 7 TpCDP*L10; 4 TpCDP*L24; 23 TpCDP*L27
1 TpCDP*L35; 1 TpCDP*L37; 1 TpCDP*L6; 4 TpDPQ*L29
1 TpDPQ*L6; 8 TpHCD*L25; 2 TpHCP*L25; 9 TpHCP*L34
2 TpHCQ*B2; 2 TpHDF*L21; 1 TpHDF*L24; 1 TpHDF*L29
3 TpHYQ*B0; 2 TpOCQ*B2
```

There are 62 positive integer entries. The exact coefficient-box upper bound is

`-6758176190277/91000000000000`.

### Leaf UR.R6mpm

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHQYZX 1
via P DFQ CF -1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Y OHC FP -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound right_ymax Q
B1 sidebound right_cmax Q
B2 sidebound right_x Q
B3 ear CDF1_fmax
B4 drop p OHP 2 YZ
B5 drop q OCP 1 X
B6 sidebound right_dmin Q
B7 sidebound right_y Q
B8 sidebound right_d Q
B9 triangle OCZ 1 X
B10 quad OCPH 3 YZX
B11 quad OCDF 3 YXP
B12 quad OCQZ 1 X
B13 quad OQDF 3 YXP
B14 quad OXPF 1 Y
B15 quad HZCP 1 Y
B16 quad HZCQ 1 Y
B17 quad CQDF 1 P
B18 quad FZQP 1 Y
```

```c1si-sum
4 B10*L25; 17 B11*L25; 194 B12*B1; 684 B12*L28
1 B13*L25; 4 B14*B1; 48 B15*L34; 278 B16*L34
4 B17*B3; 41 B18*L1; 39 B9*L1; 27 CAPZXP*L25
13 CAPZXQ*L1; 355 CAPZXQ*L34; 38 EF*L1; 8 L1*B0
2 L1*L11*L21; 41 L1*L14*L31; 100 L1*L15*B2; 36 L1*L15*L16
13 L1*L16; 167 L1*L16*L37; 356 L1*L2*L14; 48 L1*L2*L20
65 L1*L2*L23; 141 L1*L2*L24; 7 L1*L2*L31; 29 L1*L23*L37
230 L1*L27*L37; 32 L1*L28*L35; 2 L1*L31*B0; 1 L1*L31*L35
29 L1*L6*L11; 17 L1*L6*L23; 36 L1*L6*L7; 14 L1*L7*L21
234 L1*L9*L14; 149 L11*B1*B4; 30 L11*B3*B4; 202 L11*L14*B1
70 L11*L28*B4; 8 L12*L17*L27; 36 L12*L17*L35; 225 L12*L19
389 L12*L19*L35; 70 L12*L22*B1; 5 L12*L26*L28; 34 L12*L28*L34
125 L12*L29*B0; 36 L12*L36*B0; 167 L14*B1*B1; 13 L14*L16*L21
200 L14*L16*L25; 953 L14*L18*L25; 84 L14*L21*B1; 202 L14*L25*L35
317 L14*L26*B1; 89 L14*L28*B1; 3 L15*L25*L27; 132 L15*L25*L29
1 L16*L16*L25; 27 L16*L18*L25; 45 L16*L24*L34; 89 L16*L25
45 L16*L25*L35; 415 L16*L26*B4; 3 L16*L26*L34; 73 L16*L34
70 L18*L20*L25; 69 L18*L20*L34; 77 L18*L21*B1; 353 L18*L21*B2
25 L18*L29*B1; 2 L18*L33*B2; 32 L18*L34*L36; 39 L18*L35*B1
99 L19*B1*B1; 17 L2*L25*L30; 19 L20*L25*L35; 4 L20*L25*L37
163 L20*L26*B1; 73 L20*L26*L34; 4 L21*L25*L29; 2 L21*L27*L34
19 L21*L35*B1; 73 L22*B1*B1; 57 L22*L25*L35; 72 L22*L26*L34
486 L23*L25*B6; 493 L23*L26*B1; 1 L24*L28*L28; 8 L24*L34*B5
1 L25*L25*B7; 1 L25*L30*B6; 4 L25*L34; 9 L25*L35*L36
49 L25*L37; 230 L26*B1*B4; 1 L26*B6*B4; 9 L26*L26*B3
15 L26*L35*B3; 72 L26*L35*B5; 11 L27*L34*B1; 189 L28*B1
17 L3*L14*L34; 45 L3*L22*L34; 39 L33*B1*B1; 19 L34*B2*B4
12 L34*B2*B5; 39 L5*B3*B3; 52 L5*L21*B2; 500 L5*L23*B1
5 L5*L25*B5; 6 L5*L26*B2; 1 L5*L30*B2; 46 L5*L5*B3
46 L5*L5*B4; 3 L6*L18*B4; 3 L6*L18*L25; 15 L7*L22*L34
11 L7*L34*L36; 26 L8*L25; 96 M3*L25; 52 TmCDQ*L21
501 TmCDQ*L23; 6 TmCDQ*L26; 1 TmCDQ*L30; 317 TmCPQ
31 TmCPQ*L17; 8 TmCPQ*L27; 14 TmCPQ*L31; 70 TmCPQ*L32
63 TmCPQ*L35; 41 TmCPQ*L36; 69 TmCPQ*L37; 54 TmCXQ*L10
632 TmCXQ*L13; 996 TmCXQ*L14; 31 TmCXQ*L16; 4 TmCXQ*L18
546 TmCXQ*L20; 36 TmCXQ*L35; 10 TmCXQ*L36; 1 TmCXQ*L6
97 TmCZP*L25; 150 TmCZQ*L34; 7 TmFPQ*B6; 3 TmFPQ*B8
3 TmFPQ*L16; 18 TmFPQ*L2; 9 TmFPQ*L26; 15 TmFPQ*L35
753 TmHCY*L14; 48 TmHCY*L20; 53 TmHCY*L23; 173 TmHCY*L24
287 TmHCY*L27; 165 TmHCY*L28; 8 TmHCY*L31; 37 TmHCY*L37
48 TmHCZ*L34; 195 TmOHX*L34; 70 TmOHZ*L27; 37 TmOHZ*L33
641 TmOXQ*L14; 51 TmOXQ*L2; 96 TmOXQ*L21; 514 TmOXQ*L32
3 TmOXQ*L33; 253 TmOXQ*L35; 640 TmOXQ*L37; 2 TmOXQ*L6
37 TmOYP*B2; 74 TmOYP*L24; 153 TmOYP*L26; 78 TmOYP*L3
53 TmOYP*L36; 30 TmOYP*L7; 114 TmOYX; 353 TmOYX*L14
393 TmOYX*L24; 523 TmOZX*L25; 54 TpCFY*L1; 592 TpCYX*L12
365 TpCYZ*L25; 679 TpCZX*B0; 236 TpCZX*B2; 206 TpCZX*L1
84 TpCZX*L21; 223 TpCZX*L9; 9 TpDFP*L26; 47 TpDFP*L5
14 TpDPQ*B3; 6 TpHDF*B3; 14 TpHDF*B4; 1 TpHDF*B8
57 TpHDF*L23; 1 TpHDF*L26; 1 TpHDF*L31; 28 TpHDF*L7
459 TpOCX*L25; 18 TpOCX*L34; 3 TpOXP*L6; 27 TpYXP*B1
406 TpYXQ*L12; 1074 TpYZQ*L17; 346 TpYZQ*L2; 70 TpYZQ*L21
287 TpYZQ*L29; 70 TpYZX*L20; 772 TpYZX*L24; 229 TpYZX*L36
139 TpYZX*L37
```

There are 213 positive integer entries. The exact coefficient-box upper bound is

`-2030214251/200000000000`.

### Leaf UR.R6mpp

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCQ OD -1
via P DFQ CF -1
via Z OHD DX -1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Y OHC FP -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound right_ymax Q
B1 sidebound right_x Q
B2 ear CDF1_fmax
B3 sidebound right_cmax Q
B4 drop q OCP 1 X
B5 drop m OCQ 1 X
B6 sidebound right_d Q
B7 triangle OHX 1 Z
B8 triangle HCX 1 Y
B9 triangle DFQ 1 P
B10 quad OCDH 3 YZX
B11 quad OCFH 3 YZX
B12 quad OCPH 3 YZX
B13 quad OCPF 2 YX
B14 quad CQDF 1 P
```

```c1si-sum
2 B10*L25; 2 B11*B0; 1 B12*L34; 2 B13*B0
1 B14*L5; 33 B7*B0; 26 B8; 8 B8*L37
3 B9*L23; 1 B9*L30; 1 EF*B0; 8 EF*L1
26 L16*B0; 11 L16*L36*B0; 18 L16*L37*B0; 39 L18*B1
6 L18*L36*B1; 55 L2*B0; 6 L2*L36*B0; 1 L26*L30*B3
7 L29*B3; 13 L37*L37*B0; 1 L4*L25*L36; 70 L5*B1
11 L5*B2; 1 L5*L21*L37; 8 L5*L36*B1; 2 L5*L5*L24
1 M3*B4; 1 M3*L21; 70 TmCDQ; 2 TmCDQ*L22
8 TmCDQ*L36; 1 TmCDQ*L37; 2 TmCPQ*L5; 3 TmFPQ*B6
1 TmOYP*L36; 1 TmOYP*L37; 13 TpCFX*L1; 1 TpDFP*B5
3 TpDPQ; 1 TpDPQ*L37; 9 TpHDF; 2 TpHDF*L4
84 TpOCX; 11 TpOCX*L24; 2 TpOCX*L7; 33 TpOXQ
43 TpOXQ*L36; 14 TpOXQ*L37
```

There are 50 positive integer entries. The exact coefficient-box upper bound is

`-1339652626119/91000000000000`.

### Leaf UR.R6p

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via P DFQ OF -1
via P DFQ CF -1
via Y OCP DP 1
via X OCZ DZ 1
via Z OHC DQ -1
via X OCY DP 1
via X OHC DQ -1
via Z OHY FY -1
via Y OHC FP -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound right_x Q
B1 sidebound right_cmax Q
B2 sidebound right_hmin Q
B3 sidebound right_ymax Q
B4 ear CDF1_fmax
B5 drop q OCP 2 YX
B6 sidebound right_dmin Q
B7 sidebound right_y Q
B8 triangle OHC 3 YZX
B9 triangle OCP 2 YX
B10 quad OCQH 3 YZX
B11 quad OCPF 2 YX
B12 quad OCQY 1 X
```

```c1si-sum
23 B10*B1; 4 B11*L25; 190 B12*L17; 5 B12*L19
59 B12*L20; 95 B12*L30; 31 B12*L31; 654 B12*L5
622 B2*B4*B4; 288 B8*B4; 1770 B9*B3; 1793 B9*B6
28 B9*L1; 59 B9*L10; 1266 B9*L6; 63 B9*L9
116 L1*L23*L25; 92 L10*L25*L30; 25 L10*L25*L31; 96 L11*L16*L28
90 L16*L16*L34; 1109 L16*L18*L25; 56 L16*L23*L34; 78 L16*L25
71 L16*L25*L36; 785 L16*L26*B1; 582 L16*L26*B2; 29 L16*L26*B6
11 L16*L34*B1; 57 L18*L20*L34; 95 L18*L25*L26; 508 L18*L25*L36
426 L19*B1*B1; 138 L2*L23*L25; 239 L20*L26*B1; 533 L20*L26*B2
707 L21*B1*B2; 99 L21*B2*B4; 10 L21*L29*L35; 8 L21*L34*B1
56 L21*L34*B2; 21 L21*L34*B4; 95 L22*L25*L26; 24 L22*L26*B1
99 L23*L29*B4; 17 L25*L26; 46 L25*L30*B5; 148 L25*L34*B6
67 L25*L35; 2146 L25*L36*B5; 442 L25*L36*B6; 371 L26*B2*B4
17 L26*B4*B4; 1106 L26*L26*B1; 95 L26*L26*B4; 182 L26*L28*B1
675 L26*L30*B1; 35 L26*L30*L34; 45 L26*L34*B1; 37 L27*L29*L34
32 L28*B0*B2; 18 L28*L29*L35; 36 L28*L30*B0; 6 L28*L34*B1
18 L28*L34*B2; 181 L30*L31*B1; 23 L30*L34*B0; 4 L35*B1*B4
46 L4*L20*L25; 1543 L4*L25; 1011 L4*L25*L26; 396 L5*B2*B4
639 L5*B4*B4; 17 L5*L10*L21; 361 L5*L11*B0; 808 L5*L20*B1
889 L5*L20*B2; 163 L5*L21*B3; 83 L5*L21*B4; 148 L5*L25*L35
1805 L5*L26*B1; 276 L5*L26*L34; 312 L5*L26*L35; 319 L5*L30*B0
330 L5*L30*B4; 130 L5*L31*B1; 52 L5*L34*B0; 442 L5*L5*B0
46 L5*L5*L20; 42 L5*L5*L34; 43 L5*L5*L35; 361 L5*L8*L30
17 L6*L21*L26; 22 L6*L21*L35; 4 L6*L34*B1; 5 L7*L10*L25
12 L7*L25*B5; 163 L7*L26*B1; 129 L8*L26*B1; 126 L8*L26*L30
88 L9*L28*L28; 432 M2*B7; 30 M2*L16; 63 M2*L18
24 M2*L20; 180 M2*L31; 10 M2*L4; 438 M2*L7
454 M3*B4; 361 M3*B7; 83 M3*L20; 63 M3*L23
21 M3*L31; 1269 TmCDQ; 37 TmCDQ*L19; 46 TmCDQ*L20
1794 TmCDQ*L22; 1011 TmCDQ*L26; 36 TmCDQ*L28; 761 TmCDQ*L30
75 TmCDQ*L34; 313 TmCDQ*L37; 28 TmCFP*B2; 44 TmCXQ
1116 TmCXQ*L16; 95 TmCXQ*L26; 90 TmCXQ*L34; 93 TmCXQ*L35
584 TmCXQ*L36; 37 TmCXQ*L4; 15 TmCYQ*L29; 447 TmDYP*L5
134 TmFPQ*B1; 381 TmFPQ*B2; 95 TmFPQ*L26; 1841 TmFPQ*L30
86 TmFPQ*L36; 17 TmFPQ*L7; 60 TmFPQ*L9; 23 TmHCY*L24
348 TmHCY*L27; 39 TmHCY*L28; 460 TmHCY*L7; 1773 TmHFP*B3
1348 TmHFP*B6; 734 TmHFP*L2; 17 TmHFP*L34; 1157 TmHFP*L6
92 TmOYX*L16; 57 TmOYX*L20; 57 TmOYX*L23; 188 TmOYX*L24
4 TmOYX*L26; 97 TmOYX*L28; 1744 TpDFP*B2; 820 TpDFP*B3
16 TpDFP*L11; 858 TpDFP*L27; 765 TpDFP*L3; 493 TpDFP*L30
1141 TpDFP*L6; 492 TpHDF*B4; 163 TpHDF*B7; 17 TpHDF*L10
1058 TpHDF*L20; 453 TpHDF*L31; 835 TpHDF*L7; 313 TpOCD*L25
337 TpOCQ*B1; 446 TpOCX*B7; 152 TpOCX*L1; 4 TpOCX*L17
3 TpOCX*L27; 618 TpOCX*L31; 67 TpOCX*L34; 59 TpOCX*L35
60 TpOYP; 59 TpOYP*L24; 57 TpOYP*L28; 63 TpOYP*L30
43 TpOYP*L31; 20 TpOYP*L37; 383 TpOYP*L5
```

There are 183 positive integer entries. The exact coefficient-box upper bound is

`-38179026397/3640000000000`.

### Leaf UR.R7mm

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHPYZX 1
via X OHP OQ 1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Y OHP FP -1
via Z OHX FX -1
via Z OHY FP -1
via Z OHC FQ -1
via X OHP FP -1
via X OHC FQ -1
via Y HZP ZQ 1
```

```c1si-exclude
cluster OFQ P OFP YX
```

### Leaf UR.R7mpm

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHQYZX 1
via X OCZ DZ 1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Y OHP FP -1
via Z OHX FX -1
via Z OHY FP -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound right_cmax Q
B1 sidebound right_x Q
B2 drop p OHP 2 YZ
B3 drop q OCP 1 X
B4 sidebound right_ymax Q
B5 sidebound right_hmin Q
B6 triangle OCZ 1 X
B7 triangle OCP 1 X
B8 triangle OFP 1 Y
B9 triangle FZQ 2 YP
B10 quad OCPH 3 YZX
B11 quad OCQF 3 YXP
B12 triangle OCF 2 YX
B13 quad OCQZ 1 X
B14 quad HZCP 1 Y
B15 quad HZCQ 1 Y
B16 quad CQFZ 2 YP
```

```c1si-sum
35 B10*L25; 10 B11*B12; 32 B11*B2; 11 B11*L13
9 B11*L17; 113 B11*L2; 39 B11*L29; 124 B13*B0
303 B13*L28; 29 B14*L34; 140 B15*L34; 9 B16*L25
13 B6*L1; 31 B7*L25; 350 B8*B0; 7 B8*L1
43 B9*L1; 102 CAPZXP*L25; 181 CAPZXQ*L34; 43 L1*L14*L31
118 L1*L15*B1; 2 L1*L15*L16; 6 L1*L15*L35; 26 L1*L16
72 L1*L16*L37; 50 L1*L2*L14; 119 L1*L2*L24; 21 L1*L20*L37
12 L1*L21*B1; 11 L1*L23*L31; 27 L1*L23*L37; 4 L1*L27*L31
118 L1*L27*L37; 4 L1*L28*L35; 14 L1*L31*L37; 3 L1*L6*L11
34 L1*L9*L14; 17 L1*L9*L23; 5 L10*L12*L17; 31 L11*B0*B2
26 L11*B1*B2; 8 L11*L14*B0; 130 L11*L14*B1; 5 L11*L28*B1
66 L11*L28*B2; 12 L12*B0; 181 L12*L19*L35; 22 L12*L29*B4
30 L12*L33; 94 L12*L36*B4; 47 L14*B0*B0; 24 L14*L14*L25
29 L14*L15*B0; 4 L14*L15*L16; 2 L14*L16*L31; 376 L14*L18*L25
44 L14*L21*B0; 9 L14*L25*L35; 126 L14*L26*B0; 9 L14*L34*L36
7 L15*L16*B2; 66 L16*L22*L25; 67 L16*L22*L34; 372 L16*L26*B2
54 L16*L34; 255 L18*L20*L25; 50 L18*L25*B2; 8 L18*L25*L35
22 L18*L29*B0; 9 L18*L31*B0; 19 L18*L33*B1; 28 L18*L35*B0
410 L2*L18*B2; 45 L2*L26*B0; 24 L21*L25*B5; 10 L22*L24*L34
27 L22*L25; 21 L22*L34; 7 L23*L29*B0; 9 L25*L35
21 L25*L35*L36; 156 L25*L37*B3; 126 L26*B0*B2; 8 L26*L28*L34
8 L26*L28*L35; 4 L26*L31*L34; 11 L26*L35*B0; 11 L26*L35*B2
71 L28*B0; 22 L28*L36*B0; 37 L3*L12*L22; 164 L3*L19*L25
32 L3*L25*L33; 11 L3*L27*L34; 8 L34*L36; 4 L6*L22*L34
6 L6*L25*B3; 233 L6*L26*B0; 10 L7*L14*B0; 9 L7*L25*L33
2 L7*L34*L37; 4 L7*L35*B0; 13 M2*L31; 29 TmCFQ*L25
284 TmCPQ; 35 TmCPQ*L17; 38 TmCPQ*L24; 7 TmCPQ*L31
37 TmCPQ*L32; 17 TmCPQ*L35; 25 TmCPQ*L7; 367 TmCXQ*B2
2 TmCXQ*L10; 266 TmCXQ*L13; 406 TmCXQ*L14; 19 TmCXQ*L18
127 TmCXQ*L20; 19 TmCXQ*L32; 34 TmCXQ*L6; 139 TmCZP*L25
14 TmCZQ*L34; 111 TmHCY*B4; 327 TmHCY*L14; 33 TmHCY*L20
47 TmHCY*L23; 119 TmHCY*L24; 50 TmHCY*L27; 94 TmHCY*L28
1 TmHCY*L31; 1 TmOFX*L34; 9 TmOFY*B2; 98 TmOHX*L34
6 TmOHZ*L33; 30 TmOXQ; 184 TmOXQ*L13; 274 TmOXQ*L14
87 TmOXQ*L21; 25 TmOXQ*L31; 126 TmOXQ*L32; 160 TmOXQ*L35
235 TmOXQ*L37; 150 TmOYP*L16; 15 TmOYP*L18; 63 TmOYP*L24
25 TmOYP*L36; 152 TmOYX*L14; 120 TmOYX*L21; 16 TmOYX*L23
150 TmOYX*L24; 2 TmOYX*L26; 1 TmOYX*L7; 285 TmOZX*L25
284 TpCYX*L12; 149 TpCYZ*L25; 61 TpCZX*B1; 280 TpCZX*B4
98 TpCZX*L1; 28 TpCZX*L15; 44 TpCZX*L21; 11 TpCZX*L31
101 TpCZX*L9; 303 TpFPQ*B0; 38 TpFPQ*B1; 52 TpFPQ*L3
4 TpFPQ*L35; 2 TpFXQ*L12; 11 TpFYP*B0; 4 TpFYP*L1
1 TpHCP*L25; 33 TpOCX*L34; 2 TpOXP; 83 TpOXP*L35
9 TpOXP*L7; 52 TpYXP; 35 TpYXP*L3; 9 TpYXP*L6
176 TpYXQ*L12; 24 TpYZQ*L15; 470 TpYZQ*L17; 60 TpYZQ*L2
37 TpYZQ*L21; 162 TpYZQ*L29; 9 TpYZQ*L31; 24 TpYZX*L14
37 TpYZX*L20; 325 TpYZX*L24; 24 TpYZX*L27; 3 TpYZX*L29
99 TpYZX*L36; 49 TpYZX*L37; 9 TpYZX*L6
```

There are 191 positive integer entries. The exact coefficient-box upper bound is

`-128599794807/11375000000000`.

### Leaf UR.R7mpp

```c1si-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCQ OD -1
via Z OHD DX -1
via Z OHC DQ -1
via X OHC DQ -1
via Z OHY FY -1
via Y OHP FP -1
via Z OHX FX -1
via Z OHY FP -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound right_ymax Q
B1 sidebound right_x Q
B2 sidebound right_cmax Q
B3 triangle OHX 1 Z
B4 triangle HCX 1 Y
```

```c1si-sum
6 B3*B0; 10 B4; 1 B4*L37; 2 EF*L1
17 L16*B0; 5 L16*L37*B0; 18 L18*B1; 6 L18*L36*B1
19 L2*B0; 3 L29*B2; 7 L37*L37*B0; 28 L5*B1
3 L5*L7; 28 TmCDQ; 7 TpCFX*L1; 3 TpHDF
35 TpOCX; 19 TpOXQ; 6 TpOXQ*L36; 3 TpOXQ*L37
```

There are 20 positive integer entries. The exact coefficient-box upper bound is

`-6142633/500000000`.

### Leaf UR.R7pmm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHQYZX 1
via Y OCP DP 1
via X OCZ DZ 1
via Z OHC DQ -1
via X OCY DP 1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound right_ymax Q
B1 sidebound right_cmax Q
B2 sidebound right_d Q
B3 sidebound right_x Q
B4 sidebound right_dmin Q
B5 triangle OHX 1 Z
B6 triangle OCZ 1 X
B7 triangle HCX 1 Y
B8 quad OCDH 3 YZX
B9 quad OCQZ 1 X
B10 quad HZCQ 1 Y
B11 quad HQDF 1 P
B12 quad HXQD 1 Y
B13 quad HZQF 2 YP
```

```c1si-sum
297 B10*L34; 34 B11*L1; 16 B12*L12; 4 B13*L34
148 B5*L34; 57 B6*L1; 37 B7*L12; 6 B8*L25
278 B9*B1; 560 B9*L28; 115 CAPZXQ*L1; 2 CAPZXQ*L25
68 CAPZXQ*L34; 34 ED*L25; 82 EF*L1; 49 L1*B0
6 L1*L14*L31; 165 L1*L15*B3; 4 L1*L15*L16; 37 L1*L16
57 L1*L16*L27; 41 L1*L16*L35; 139 L1*L16*L37; 174 L1*L2*L14
60 L1*L27*L37; 9 L1*L6*L34; 50 L1*L6*L7; 49 L1*L8*L15
173 L1*L9*L14; 305 L11*L14*B1; 72 L12*L17; 3 L12*L17*L27
163 L12*L17*L35; 23 L12*L19*L26; 232 L12*L19*L35; 59 L12*L24*L33
163 L12*L28*L34; 15 L12*L29*B0; 80 L12*L33; 148 L12*L36*B0
60 L12*L37*B0; 268 L14*B1*B1; 728 L14*L16*L34; 929 L14*L18*L25
75 L14*L19*B1; 70 L14*L25*L35; 371 L14*L26*B1; 6 L14*L28*B1
57 L14*L28*B3; 206 L15*L34*L37; 157 L16*L18*L25; 174 L16*L34
98 L16*L34*L36; 2 L18*L25*L26; 57 L18*L25*L29; 33 L18*L25*L35
3 L18*L27*L34; 68 L18*L33*B3; 29 L18*L34; 79 L25*B2
2 L25*L27*B4; 6 L25*L33*B1; 28 L25*L34; 16 L25*L34*L36
142 L25*L36*B4; 53 L26*B1; 15 L26*L28*L34; 19 L26*L28*L35
259 L26*L36*B1; 148 L28*B1; 13 L28*L28; 66 L28*L36*B1
121 L34*B1; 82 L36*B1*B1; 128 L4*L25*L36; 82 L5*B1
16 L5*L12*L24; 5 L5*L24*B1; 1 L5*L30*B3; 305 L5*L36*B1
7 L5*L7*L31; 44 L5*L7*L7; 4 L6*L26*L34; 11 L7*L11*B1
7 L7*L30*B1; 10 L7*L7*L11; 86 TmCDQ; 2 TmCDQ*L27
1 TmCDQ*L30; 306 TmCDQ*L36; 1 TmCDQ*L37; 16 TmCXQ*L10
500 TmCXQ*L13; 834 TmCXQ*L14; 152 TmCXQ*L16; 90 TmCXQ*L18
172 TmCXQ*L36; 270 TmCXQ*L37; 2 TmCZQ*L25; 6 TmFYZ*L1
135 TmHCY; 807 TmHCY*L14; 82 TmHCY*L19; 281 TmHCY*L27
205 TmHCY*L28; 6 TmHCY*L7; 6 TmOFY*L3; 11 TmOFY*L36
10 TmOFY*L7; 282 TmOHY*L25; 36 TmOHZ*L3; 7 TmOHZ*L33
714 TmOXQ*L14; 2 TmOXQ*L26; 5 TmOXQ*L28; 768 TmOXQ*L32
17 TmOXQ*L33; 450 TmOXQ*L37; 794 TmOYX*L14; 287 TmOYX*L24
33 TmOYX*L26; 630 TmOZX*L25; 394 TpCYX*L12; 304 TpCYZ*L25
465 TpCZX*B0; 270 TpCZX*B3; 398 TpCZX*L1; 16 TpHDF
33 TpHDF*L36; 51 TpHDF*L7; 380 TpOCX*L25; 203 TpOCX*L34
66 TpOYZ*L25; 72 TpYXQ*L12; 799 TpYZQ*L17; 17 TpYZQ*L2
281 TpYZQ*L29; 118 TpYZX; 514 TpYZX*L24; 72 TpYZX*L27
290 TpYZX*L36; 205 TpYZX*L37
```

There are 142 positive integer entries. The exact coefficient-box upper bound is

`-11638956527/500000000000`.

### Leaf UR.R7pmp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCQ OD -1
via Y OCP DP 1
via Z OHD DX -1
via Z OHC DQ -1
via X OCD DP 1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound right_ymax Q
B1 sidebound right_x Q
B2 sidebound right_cmax Q
B3 triangle OHX 1 Z
B4 triangle HCX 1 Y
```

```c1si-sum
3 B3*B0; 4 B4; 1 B4*L37; 8 L16*B0
2 L16*L37*B0; 7 L18*B1; 3 L18*L36*B1; 7 L2*B0
1 L2*L36*B0; 1 L29*B2; 3 L37*L37*B0; 11 L5*B1
1 L5*L36*B1; 1 L5*L7; 11 TmCDQ; 1 TmCDQ*L36
3 TpCFX*L1; 1 TpHDF; 15 TpOCX; 8 TpOXQ
3 TpOXQ*L36; 2 TpOXQ*L37
```

There are 22 positive integer entries. The exact coefficient-box upper bound is

`-17409789/1000000000`.

### Leaf UR.R7pp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Y OCP DP 1
via X OCZ DZ 1
via Z OCP DP 1
via Z OHC DQ -1
via X OCY DP 1
via X OHC DQ -1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound right_cmax Q
B1 sidebound right_x Q
B2 triangle OCY 1 X
B3 sidebound right_ymax Q
B4 triangle OCP 3 YZX
B5 quad OCFH 3 YZX
B6 quad OCPH 3 YZX
B7 quad OCQH 3 YZX
B8 quad OCDP 3 YZX
B9 quad OCQY 1 X
B10 quad OCQP 3 YZX
B11 quad OQDP 2 YZ
B12 mesh OCPYXZ -1 2
B13 sidebound right_y Q
```

```c1si-sum
54 B0; 1 B10*L20; 1 B11*L1; 10 B12
1 B12*B13; 2 B12*L24; 61 B12*L36; 4 B12*L37
5 B12*L6; 3 B2*B3; 4 B4*L9; 1 B5*B0
54 B5*L1; 5 B6; 2 B6*L21; 8 B6*L36
1 B7*B0; 2 B8*L25; 3 B9; 5 B9*L20
17 L1*L21*L21; 3 L1*L6*L22; 3 L1*L9*L27; 4 L10*L25
2 L21*L23*L31; 3 L22*L36*B0; 64 L23*L31*L36; 7 L26*B0
16 L36*B0; 5 L36*L36*B0; 4 L5*B1; 2 L5*L20*L29
4 L5*L36*B1; 2 TmCDQ; 3 TmCDQ*L21; 5 TmCDQ*L36
4 TmCYP*L25; 4 TmHCY*L21; 61 TmHCY*L22; 4 TmHCY*L24
4 TmHCY*L27; 5 TmHCY*L6; 5 TmHFP; 2 TmHFP*L21
2 TmHFP*L24; 2 TmHFP*L34; 3 TmHFP*L35; 62 TmHFP*L36
1 TmHPQ*L21; 3 TmHPQ*L37; 2 TmHPQ*L6; 5 TmHPQ*L9
5 TmOHF*B0; 4 TpHCF*L1; 61 TpHCP*L10; 1 TpHYP*L26
1 TpHYP*L30
```

There are 57 positive integer entries. The exact coefficient-box upper bound is

`-3200817170099/91000000000000`.

### Leaf UR.R8

```c1si-geometry
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via D CPQ OP -1
via D OPQ HP -1
via D CPQ YP -1
via D HPQ ZX 1
via D CPQ ZP -1
via D HPQ ZQ 1
via D CPQ XP -1
via D HPQ XQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1si-factors

```

```c1si-sum
1 TmDPQ; 1 TmHDQ*L21; 1 TpHDP*L25
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf LU.R0

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Q OHP OF 1
via Y OCF OQ -1
via X OCF OQ -1
via Q OHF CF 1
via Y OCP DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OCF FQ 1
via F HPQ ZX 1
via Z OHC FP 1
via X OHC FP 1
via X OCF FQ 1
via Z OHY YQ 1
via Y OCP PQ 1
via X OCY PQ 1
```

```c1si-factors
B0 sidebound left_xmax P
B1 sidebound left_y P
B2 drop p OHP 1 Q
B3 drop m OCQ 2 YX
B4 triangle HPQ 1 F
B5 quad OCQH 3 YZX
```

```c1si-sum
2 B4; 1 B4*L25; 1 B5; 1 L25*B2*B3
1 L25*L25*B1; 1 L27*B0; 2 L36*L36*B0; 1 TpOPQ
```

There are 8 positive integer entries. The exact coefficient-box upper bound is

`-593793927/45500000000`.

### Leaf LU.R1

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Q OHP OF 1
via Y OCF OQ -1
via X OCF OQ -1
via Q OHF CF 1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OCF FQ 1
via F HPQ ZX 1
via Z OHC FP 1
via X OHC FP 1
via X OCF FQ 1
via Z OHY YQ 1
via Y OCP PQ 1
via X OCY PQ 1
```

```c1si-factors
B0 sidebound left_xmax P
B1 sidebound left_y P
B2 drop p OHP 1 Q
B3 drop m OCQ 2 YX
B4 triangle HPQ 1 F
B5 quad OCQH 3 YZX
```

```c1si-sum
6 B4; 3 B4*L25; 2 B5; 3 L25*B2*B3
3 L25*L25*B1; 1 L27*B0; 6 L36*L36*B0; 3 TpOPQ
```

There are 8 positive integer entries. The exact coefficient-box upper bound is

`-329139883/18200000000`.

### Leaf LU.R2

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Q OHP OF 1
via Y OCF OQ -1
via X OCF OQ -1
via Q OHF CF 1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OCF FQ 1
via Z OHX FX -1
via Z OHC FP 1
via X OHC FP 1
via X OCF FQ 1
via Z OHY YQ 1
via Y OCF PQ 1
via X OCF PQ 1
```

```c1si-factors
B0 sidebound left_xmax P
B1 sidebound left_y P
B2 drop p OHP 1 Q
B3 sidebound left_cmin P
B4 spread OCFH YQ OF 1 1457/250
B5 spread OCFH XQ CH -1 1457/250
B6 spread OCFH XQ CH 1 1457/250
B7 quad OCQH 3 YZX
B8 quad OYFH 2 ZQ
```

```c1si-sum
6 B4*B0; 1 B5*L23; 1 B6*L23; 7 B7
1 B7*L36; 5 B7*L6; 6 B8*B0; 9 L0*B0
10 L0*L37*B0; 3 L22*L36*B0; 5 L25*L31*B1; 3 L27*L36*B0
14 L36*L36*B0; 7 L6*L23; 13 L7*B1; 20 TmHFQ*B0
7 TmHPQ; 3 TmHPQ*L22; 1 TmHPQ*L36; 17 TmHPQ*L37
32 TmHPQ*L6; 5 TpCPQ*L7; 4 TpFPQ*B3; 5 TpHCQ*B2
32 TpHFP*L25; 5 TpOFQ*L3; 1 TpOPQ; 2 TpOPQ*L1
3 TpOPQ*L22; 8 TpOPQ*L37; 10 TpOPQ*L6
```

There are 31 positive integer entries. The exact coefficient-box upper bound is

`-7079059139/45500000000`.

### Leaf LU.R3

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
via F HPQ OQ 1
via Q OCP CF 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via F HPQ ZX 1
via Z OHC FP 1
via X OHC FP 1
via Z OHD PQ -1
via F HPQ ZQ 1
```

```c1si-factors
B0 sidebound left_xmax P
B1 triangle OPQ 1 F
B2 triangle HPQ 1 F
B3 triangle CDQ 1 P
B4 drop q OCP 3 YXQ
B5 quad OCDH 3 YZX
B6 quad OCQH 3 YZX
B7 quad CDFQ 1 P
```

```c1si-sum
1 B1*L4; 1 B2; 2 B3*B4; 1 B5*B0
1 B6*L23; 1 B7*B4; 2 B7*L27; 1 L27*B0
2 L3*L22*L27; 1 L36*L36*B0; 1 L4*L23*L24; 3 L4*L27*B0
4 TmDPQ; 1 TmDPQ*L37; 4 TmFPQ; 2 TmFPQ*L26
1 TmFPQ*L5; 1 TmOFQ; 5 TmOFQ*L23; 1 TmOFQ*L4
1 TpCPQ; 2 TpCPQ*L26; 3 TpCPQ*L5; 4 TpOFP*L27
```

There are 24 positive integer entries. The exact coefficient-box upper bound is

`-2117837117/91000000000`.

### Leaf LU.R4

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
via F HPQ OQ 1
via Q OCP CF 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via F HPQ ZX 1
via Z OHC FP 1
via X OHC FP 1
```

```c1si-factors

```

```c1si-sum
1 TmFPQ; 1 TmOFQ*L23; 1 TpOFP*L27
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf LU.R5m

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
mesh OCPQXY -1
via Q OCP CF 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHY FQ -1
via X OHC FP 1
via Z OHY PQ -1
via Y HXP DX -1
via Y OXP FX -1
```

```c1si-factors
B0 sidebound left_y P
B1 sidebound left_xmax P
B2 sidebound left_hmax P
B3 drop l OHQ 2 YZ
B4 triangle OHQ 2 YZ
B5 triangle HCP 1 Q
B6 quad OCFH 4 YZXQ
B7 quad OCQH 3 YZX
B8 sidebound left_x P
```

```c1si-sum
7 B0*B3; 17 B4*L22; 6 B5*B3; 3 B6*L23
6 B7; 1 B7*B8; 7 B7*L21; 7 B7*L37
17 L22*L24*B2; 2 L25*B1; 22 L26*B1; 5 L36*L36*B1
1 L37*B0*B3; 2 L37*B2; 2 L6*L26*B1; 10 L7*B0
23 TpCPQ; 7 TpCPQ*L37; 2 TpCPQ*L6; 10 TpHFP
2 TpHFP*L24; 3 TpHFP*L36
```

There are 22 positive integer entries. The exact coefficient-box upper bound is

`-1406812789/22750000000`.

### Leaf LU.R5p

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
via Q OCP CF 1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP 1
via X OHC FP 1
```

```c1si-exclude
cluster OCP Q OCQ YX
```

### Leaf LU.R6

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via F HPQ OQ 1
via F OPQ CQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via F HPQ YQ 1
via F HPQ ZX 1
via F CPQ ZP -1
via F HPQ ZQ 1
via F CPQ XP -1
via F HPQ XQ 1
```

```c1si-factors

```

```c1si-sum
1 TmFPQ; 1 TmOFQ*L23; 1 TpOFP*L27
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf LU.R7mm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Z OHP OF 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Y OCF FZ 1
via Y OHQ FQ -1
via Z OHF FX -1
via Z OHC FP 1
via Z OHF FQ -1
via X OHC FP 1
```

```c1si-factors
B0 sidebound left_xmax P
B1 sidebound left_y P
B2 sidebound left_hmax P
B3 triangle OCZ 1 X
B4 triangle HCZ 1 Y
```

```c1si-sum
4 B3*B0; 8 B4*L34; 8 L0*B0; 2 L0*L37*B0
18 L12*B1; 18 L14*B0; 1 L29*B2; 6 L36*L36*B0
1 L5*L7; 17 L7*B1; 1 L7*L11; 2 L7*L37*B1
7 TmHCY; 7 TmHCY*L13; 8 TmHCY*L14; 5 TmHDZ*L3
8 TmHYZ*L3; 1 TmOFY; 26 TmOHZ; 18 TmOZP
4 TmOZP*L37; 1 TpCDF; 9 TpCYZ; 7 TpCYZ*L36
17 TpHFP; 2 TpHFP*L37
```

There are 26 positive integer entries. The exact coefficient-box upper bound is

`-3231586347/250000000000`.

### Leaf LU.R7mpm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
mesh OHQYZX 1
mesh OPQYZX 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHY FQ -1
via X OHC FP 1
via X OHQ FQ -1
```

```c1si-factors
B0 sidebound left_hmax P
B1 quad OCDH 3 YZX
B2 quad OCQH 3 YZX
B3 mesh OHQYZX 1 2
```

```c1si-sum
20 B0; 19 B1*L3; 9 B2*L37; 13 B3
13 B3*L37; 22 L25*L30*L37; 1 L3*L27*L27; 9 L37*B0
10 TmCYQ*L0; 14 TmHCY*L24; 11 TmHCY*L27; 22 TpCDQ*L37
13 TpHCQ*L34
```

There are 13 positive integer entries. The exact coefficient-box upper bound is

`-11600551459981/18200000000000`.

### Leaf LU.R7mppmm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp ODQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via X OCQ OD -1
via Y OHQ DQ -1
via Z OHD DX -1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHC FQ -1
via X OHC FP 1
via X OHC FQ -1
```

```c1si-factors
B0 sidebound left_fmin P
B1 sidebound left_hmax P
B2 triangle OHD 1 Z
B3 triangle HCZ 1 Y
B4 triangle CDF 1 Q
B5 spread OCDH ZQ OD 1 1457/250
B6 quad OQDH 2 YZ
B7 quad OCYZ 1 X
B8 sidebound left_support P
```

```c1si-sum
19 B3*L34; 14 B4; 53 B4*L27; 4 B5*L3
27 B6*L3; 3 B7*L0; 3 B7*L29; 378 B8
2 CAPCDY*L3; 55 ED*L3; 307 L0*B0; 5 L12*L23*L37
18 L3*L14*L36; 59 L3*L36*L36; 13 L3*L4*L25; 7 L30
7 L34*B1; 67 L7*L30; 15 L9*L30*L37; 140 M1
5 TmCFQ; 53 TmCFQ*L4; 2 TmHCY; 13 TmHCY*L13
24 TmHCY*L14; 203 TmOHZ*L23; 16 TmOYQ*L37; 68 TpCDQ
2 TpCYZ*L0; 16 TpDYQ*L37; 55 TpHZP; 21 TpOYZ
7 TpOYZ*L36; 14 TpOYZ*L37; 164 TpOZP*B2; 5 TpOZP*L29
34 TpOZP*L36
```

There are 37 positive integer entries. The exact coefficient-box upper bound is

`-80855829/1562500000`.

### Leaf LU.R7mppmpm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp ODQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via X OCQ OD -1
via Y OHQ DQ -1
via Z OHD DX -1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHY FQ -1
via X OHC FP 1
via Y OZQ DZ 1
```

```c1si-factors
B0 sidebound left_hmax P
B1 sidebound left_x P
B2 drop l OHQ 2 YZ
B3 drop m OCQ 1 X
B4 sidebound left_y P
B5 sidebound left_fmin P
B6 triangle OHQ 2 YZ
B7 triangle OFQ 1 Y
B8 triangle OZQ 1 Y
B9 triangle CZP 1 Y
B10 triangle CZQ 1 Y
B11 quad OQDH 2 YZ
B12 quad OCQZ 2 YX
B13 spread OCQZ YX OQ -1 1457/250
B14 spread OCQZ YX CZ 1 1457/250
B15 quad OQDF 1 Y
B16 quad OQDZ 1 Y
B17 quad OXQZ 1 Y
B18 quad HZCP 1 Y
B19 quad CQZX 1 Y
```

```c1si-sum
11 B10*B0; 2 B11*L3; 12 B12*L7; 34 B13*L20
33 B14*L7; 2 B15*L30; 36 B15*L32; 16 B16*L35
34 B17*L20; 1 B18*B0; 33 B19*L7; 1 B6*L30
10 B7*L3; 15 B8*L35; 2 B9*L3; 4 L0*L25*L34
8 L11*L12*L31; 228 L12*L23*L26; 56 L12*L23*L37; 14 L12*L31*B3
12 L13*L30*L34; 2 L13*L30*L35; 9 L14*L31*L34; 31 L20*B0
14 L20*L26*B0; 16 L20*L37*B0; 9 L27*L34*B5; 3 L29*L34*B5
4 L3*L14*L27; 5 L3*L15*B1; 151 L3*L15*L26; 8 L3*L15*L34
9 L3*L20; 13 L3*L20*L26; 11 L3*L22*L27; 7 L3*L25
21 L3*L27*B1; 7 L3*L27*L36; 21 L3*L35; 7 L3*L35*L36
7 L3*L4*L25; 29 L3*L4*L27; 9 L3*L6*L35; 36 L3*L7*L26
6 L3*L7*L34; 12 L31*B0; 2 L31*L35*B0; 6 L31*L37*B4
6 L32*B0*B2; 2 L37*B0*B2; 26 L5*L32*B2; 6 L5*L34*B2
4 L5*L7; 32 L5*L7*L27; 24 L6*L23*L37; 7 L6*L30*L35
28 L7*L11*L25; 196 L7*L14*B3; 44 L7*L14*L25; 10 L7*L27*B4
6 L9*L15*B0; 12 L9*L23*L37; 25 L9*L37*B0; 1 M1*B4
1 M1*L30; 8 TmCYP*B0; 11 TmCYQ*L23; 21 TmHCY*B1
39 TmHCY*L12; 17 TmHCY*L15; 32 TmHCY*L21; 11 TmHCY*L22
6 TmHCY*L26; 6 TmHCY*L37; 12 TmHYZ*B2; 7 TmHYZ*L3
9 TmOFY*L14; 33 TmOFY*L27; 11 TmOFY*L30; 18 TmOHZ*L23
84 TmOYQ; 34 TmOYQ*B1; 17 TmOYQ*L13; 39 TmOYQ*L15
12 TmOYQ*L22; 5 TmOYQ*L36; 27 TmOYQ*L6; 13 TmYZP*L3
150 TmYZQ; 30 TmYZQ*B1; 38 TmYZQ*L21; 6 TmYZQ*L36
84 TmYZQ*L37; 13 TpCDF*B3; 31 TpCFQ*L11; 196 TpCFQ*L14
70 TpCFQ*L32; 14 TpCFQ*L34; 42 TpCFQ*L4; 38 TpCYZ
67 TpCYZ*L21; 84 TpCYZ*L24; 40 TpCYZ*L27; 8 TpCYZ*L37
6 TpCYZ*L6; 27 TpDFQ; 1 TpDFQ*L10; 36 TpDFQ*L12
2 TpDFQ*L4; 44 TpDFQ*L9; 26 TpDYQ*L13; 24 TpDZQ*L34
10 TpHFP*L27; 30 TpHFP*L37; 1 TpHZP; 16 TpHZP*L10
24 TpHZP*L26; 40 TpHZP*L37; 53 TpHZP*L9; 2 TpODF*B0
63 TpOYZ*L25; 204 TpOZP*L26; 16 TpOZP*L34; 19 TpOZP*L36
38 TpOZP*L8
```

There are 125 positive integer entries. The exact coefficient-box upper bound is

`-11706343629/1000000000000`.

### Leaf LU.R7mppmpp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp ODQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via X OCQ OD -1
via Y OHQ DQ -1
via Z OHD DX -1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHY FQ -1
via X OHC FP 1
```

```c1si-factors
B0 drop m OCQ 1 X
B1 sidebound left_y P
B2 sidebound left_hmax P
B3 sidebound left_xmax P
B4 sidebound left_cmin P
B5 triangle OHQ 2 YZ
B6 triangle OPQ 2 YZ
B7 triangle HCZ 1 Y
B8 triangle HZQ 1 Y
B9 quad OCQZ 1 X
B10 quad HZXC 1 Y
B11 quad HZCQ 1 Y
B12 quad CQPZ 1 Y
B13 sidebound left_support P
```

```c1si-sum
49 B10*B0; 13 B11*L34; 29 B12*L18; 11 B12*L34
6 B13; 76 B5*L14; 14 B6*L18; 7 B7*L34
35 B8*L34; 45 B9*B2; 1 CAPHFY*B2; 10 CAPZXP*L23
2 CAPZXP*L3; 8 CAPZXQ*L23; 18 L12*L23; 5 L12*L23*L35
4 L12*L23*L37; 15 L15*L25*L29; 9 L15*L31*L34; 20 L17*B0
5 L18*L37*B3; 1 L19*L20*L29; 14 L20*B2; 1 L20*L37*B2
1 L23*L24; 22 L23*L24*L35; 9 L23*L25*L34; 17 L24*L37*B2
26 L3*B0; 35 L3*L14; 10 L3*L14*L26; 12 L3*L14*L36
6 L3*L17*B1; 8 L3*L22*L34; 5 L3*L24; 13 L3*L27*L32
1 L3*L27*L34; 2 L3*L34*L36; 13 L31*L35*B0; 5 L31*L36*B2
4 L32*L37*B0; 3 L35*B1*B4; 15 L7*B1; 2 L7*L14*L27
8 L7*L14*L35; 11 L7*L15*B0; 2 L9*L21*B2; 44 M4*B0
1 TmCPQ*L18; 3 TmCPQ*L34; 4 TmCYP*B2; 5 TmFYZ*B0
3 TmHCY*B1; 43 TmHCY*L13; 48 TmHCY*L14; 7 TmHCY*L16
7 TmHCY*L21; 10 TmHCY*L22; 48 TmHCY*L24; 3 TmHCY*L27
7 TmHYZ*L18; 3 TmOFY; 17 TmOFY*L15; 11 TmOFY*L26
36 TmOYQ*L12; 20 TmOYX*L14; 18 TmOZX*L23; 35 TmYPQ*L14
45 TmYXP*B0; 36 TmYXP*L15; 8 TmYXP*L29; 1 TmZPQ*L18
18 TpCFQ*L15; 16 TpCFQ*L33; 13 TpCFQ*L35; 2 TpCFX*L23
27 TpCZX; 6 TpCZX*L27; 6 TpCZX*L9; 9 TpHCP*B2
15 TpHFP; 1 TpHXP*B2; 10 TpHXP*L23; 4 TpHZP*L10
10 TpHZP*L22; 7 TpHZP*L33; 5 TpHZP*L37; 4 TpHZP*L9
29 TpHZQ*L3; 6 TpHZX*L34; 33 TpOCZ*B2; 30 TpOXQ
1 TpOXQ*L15; 37 TpOXQ*L22; 7 TpOYZ; 24 TpOYZ*L22
35 TpOYZ*L24; 13 TpOYZ*L26; 4 TpOZP*L0; 32 TpOZP*L10
33 TpOZP*L27; 20 TpOZP*L35; 5 TpYZQ; 46 TpYZQ*L22
50 TpYZQ*L36; 46 TpYZQ*L37
```

There are 106 positive integer entries. The exact coefficient-box upper bound is

`-775264847/31250000000`.

### Leaf LU.R7mppp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Q HDF OD 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHY FQ -1
via X OHC FP 1
via Y OHQ OD 1
via Y HXQ DX -1
```

```c1si-exclude
cluster ODP Q OPQ YZ
```

### Leaf LU.R7pm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Z OHP OF 1
via Z OHP OQ 1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Y OCF FZ 1
via Z OHF FX -1
via Z OHC FP 1
via X OHC FP 1
```

```c1si-factors
B0 sidebound left_xmax P
B1 sidebound left_y P
B2 sidebound left_hmax P
B3 triangle OCZ 1 X
B4 triangle HCZ 1 Y
```

```c1si-sum
4 B3*B0; 8 B4*L34; 8 L0*B0; 2 L0*L37*B0
18 L12*B1; 18 L14*B0; 1 L29*B2; 6 L36*L36*B0
1 L5*L7; 17 L7*B1; 1 L7*L11; 2 L7*L37*B1
7 TmHCY; 7 TmHCY*L13; 8 TmHCY*L14; 5 TmHDZ*L3
8 TmHYZ*L3; 1 TmOFY; 26 TmOHZ; 18 TmOZP
4 TmOZP*L37; 1 TpCDF; 9 TpCYZ; 7 TpCYZ*L36
17 TpHFP; 2 TpHFP*L37
```

There are 26 positive integer entries. The exact coefficient-box upper bound is

`-3231586347/250000000000`.

### Leaf LU.R7ppmmm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Q CDF OF -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHC FQ -1
via X OHC FP 1
via X OHC FQ -1
```

```c1si-factors
B0 drop m OCQ 2 YX
B1 sidebound left_fmin P
B2 sidebound left_cmin P
B3 triangle CDF 1 Q
B4 sidebound left_support P
```

```c1si-sum
21 B3*B0; 6 B4; 6 ED*B1; 1 L29
6 L3*B0; 6 L4*B1; 6 L5*B2; 8 TmCFQ
21 TmCFQ*L5; 27 TpDFQ; 6 TpODQ
```

There are 11 positive integer entries. The exact coefficient-box upper bound is

`-79356991/1000000000`.

### Leaf LU.R7ppmmpm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp OFQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Z OHQ OF 1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Y OCF FZ 1
via Y OCF FQ 1
via Z OHF FX -1
via Z OHC FP 1
via X OHC FP 1
via X OCF FQ 1
```

```c1si-factors
B0 sidebound left_hmax P
B1 drop m OCQ 2 YX
B2 drop l OHQ 1 Z
B3 sidebound left_y P
B4 sidebound left_xmax P
B5 drop q OCP 3 YZX
B6 sidebound left_x P
B7 triangle OHX 1 Z
B8 triangle OCY 1 X
B9 triangle OFP 2 ZQ
B10 triangle OPQ 1 Z
B11 triangle CXQ 1 Y
B12 spread OCFH XQ OF 1 1457/250
B13 quad ODFH 2 ZQ
B14 quad OXPH 1 Z
B15 quad OXQH 1 Z
B16 quad OQPH 1 Z
B17 spread OCFP YQ CP -1 1457/250
B18 quad OCYZ 1 X
B19 quad OYFP 2 ZQ
B20 quad HZXC 1 Y
B21 quad CQPX 1 Y
```

```c1si-sum
13 B10*L30; 41 B11*B0; 163 B11*L10; 16 B12*L23
3 B13*L23; 64 B14*B0; 172 B14*B1; 18 B15*L23
91 B16*L33; 16 B17*L18; 24 B18*L20; 1 B19*L30
33 B20*L10; 16 B21*L10; 62 B21*L33; 51 B7*L3
36 B8*B0; 15 B9*L0; 3 B9*L30; 23 CAPZXQ*L3
19 L10*L12*B0; 190 L10*L17*L17; 27 L10*L24*B0; 53 L11*L16*B1
158 L11*L16*L16; 34 L11*L16*L34; 19 L12*L23*L24; 18 L12*L23*L37
17 L13*L18*L35; 2 L14*L16*L34; 28 L16*L16*B1; 23 L16*L29*B0
4 L16*L29*B1; 5 L16*L31*B1; 2 L16*L34*L34; 21 L17*L18
28 L17*L18*L24; 4 L17*L18*L35; 3 L17*L25*B0; 22 L18*L32*L34
6 L20*B0; 5 L20*B1; 3 L20*L25*B0; 26 L20*L26*B0
64 L23*B2; 10 L23*L24*L35; 7 L23*L25*L34; 1 L23*L26
17 L23*L26*L34; 17 L23*L26*L35; 8 L23*L35; 22 L24*L30*L32
105 L26*L31*B0; 36 L3*L10; 14 L3*L10*L24; 10 L3*L10*L27
3 L3*L15*L21; 3 L3*L15*L24; 22 L3*L17*B1; 31 L3*L23*L26
46 L3*L26; 31 L3*L26*L32; 56 L3*L26*L36; 12 L3*L28*L36
25 L3*L32*B1; 12 L3*L35; 69 L3*L36*B1; 57 L30*B4*B2
4 L30*L32*B2; 1 L31*B3*B1; 13 L4*L20*B0; 5 L5*L7
3 L7*L16; 17 L7*L18*L36; 3 L7*L25*B3; 7 L7*L25*L30
32 L9*B3*B1; 62 L9*L12*B1; 22 L9*L16*B1; 28 L9*L17*L33
8 L9*L18*L35; 2 L9*L25*B3; 140 L9*L26*B0; 3 L9*L9*L17
2 M4*B2; 3 M4*B3; 1 M4*B4; 36 TmCPQ*L0
2 TmCPQ*L12; 20 TmCPQ*L15; 3 TmCPQ*L33; 17 TmFXQ*B0
2 TmFYQ*B0; 5 TmFYQ*L16; 11 TmHCY; 3 TmHCY*L14
23 TmHCY*L16; 1 TmHCY*L21; 3 TmHCY*L22; 234 TmHCY*L26
63 TmHCY*L28; 50 TmHDQ*B4; 7 TmHDQ*B6; 26 TmHDQ*L32
92 TmHPQ; 89 TmHPQ*L11; 4 TmHPQ*L13; 89 TmHPQ*L36
1 TmHPQ*L37; 13 TmHPQ*L4; 24 TmOHZ*L23; 37 TmOYX
22 TmOYX*L11; 18 TmOYX*L15; 60 TmOYX*L17; 16 TmOYX*L22
25 TmOYX*L24; 211 TmOYX*L26; 14 TmOYX*L34; 57 TmOYX*L37
3 TmOYX*L6; 19 TmOZQ*L20; 19 TmOZQ*L22; 18 TmOZQ*L33
36 TmOZQ*L37; 68 TmOZQ*L9; 11 TmOZX*B1; 14 TmOZX*L34
62 TmYXP*L18; 96 TmYXQ; 19 TmYXQ*L14; 28 TmYXQ*L16
66 TmYXQ*L22; 60 TmYXQ*L36; 54 TmYXQ*L37; 61 TpCYX*L18
68 TpCYZ*B2; 26 TpCYZ*B4; 3 TpCYZ*B5; 25 TpCYZ*L17
20 TpCYZ*L27; 9 TpDFQ; 33 TpHCQ*L23; 3 TpHFP*L25
14 TpHFP*L27; 27 TpHXP*B0; 88 TpHXQ*L23; 8 TpHZP*B1
3 TpHZP*L16; 3 TpHZX*B3; 4 TpHZX*L21; 3 TpHZX*L24
8 TpHZX*L27; 61 TpHZX*L34; 30 TpOCX*L25; 23 TpOCX*L32
17 TpOCZ*L23; 12 TpODQ*B0; 102 TpOFQ*B0; 165 TpOYQ*L18
17 TpOYZ*L16; 10 TpOZP; 21 TpOZP*L24; 12 TpOZP*L26
30 TpOZP*L36; 23 TpOZP*L37
```

There are 166 positive integer entries. The exact coefficient-box upper bound is

`-1029467087093/31250000000000`.

### Leaf LU.R7ppmmpp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp OFQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Z OHQ OF 1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Y OCF FZ 1
via Y OCF FQ 1
via Z OHF FX -1
via Z OHC FP 1
via X OHC FP 1
via X OCF FQ 1
via Y HXQ DX -1
via Y OXQ FX -1
```

```c1si-factors
B0 sidebound left_y P
B1 sidebound left_xmax P
B2 drop l OHQ 1 Z
B3 sidebound left_hmax P
B4 sidebound left_x P
B5 drop m OCQ 2 YX
B6 triangle OCQ 2 YX
B7 triangle OXQ 1 Y
B8 triangle HCX 1 Y
B9 triangle HXQ 1 Y
B10 triangle CFP 1 Q
B11 triangle FXP 2 YQ
B12 triangle XPQ 1 Y
B13 spread OCFH XQ OF -1 1457/250
B14 spread OCFH XQ OF 1 1457/250
B15 quad OCPH 3 YZX
B16 quad OXPH 1 Z
B17 spread OCFP YQ OF 1 1457/250
B18 spread OCFP XQ CP -1 1457/250
B19 quad OXFZ 1 Y
B20 quad OXFQ 1 Y
B21 quad OXQZ 1 Y
B22 quad OXQP 2 YZ
B23 spread OXQP YZ OQ 1 1457/250
B24 quad HXCP 1 Y
B25 quad HXCQ 1 Y
B26 mesh OCPYXZ -1 1
```

```c1si-sum
6 B10*L18; 9 B11*L0; 172 B12*L11; 7 B13*B3
5 B14*L23; 14 B15*L33; 7 B16*B3; 9 B17*L18
5 B18*B3; 6 B19*B0; 1 B19*L27; 5 B20*B0
9 B20*L35; 7 B21*B0; 9 B21*L22; 1 B21*L27
9 B21*L5; 21 B22*L30; 7 B23*L30; 7 B24*B5
4 B24*L23; 18 B25*L23; 4 B26*B0; 10 B6*L30
25 B6*L5; 9 B7*L7; 1 B8*B5; 16 B9*L23
8 L12*L23*L26; 2 L12*L26*L30; 1 L12*L27*B5; 39 L13*B0
1 L14*L25*L27; 21 L16*B0; 1 L16*L26*B3; 82 L16*L30*B2
2 L17*L23; 8 L17*L30*B5; 27 L18*B1; 24 L18*L36*B1
47 L23*B2; 11 L25*L28*B3; 10 L26*L31*B0; 12 L3*L11
1 L3*L4*L26; 46 L30*B1*B2; 12 L30*B4*B2; 5 L31*L33*B3
16 L4*L20*B3; 2 L5*B4*B3; 14 L5*L16*B2; 1 L5*L18*L24
10 L5*L20*L26; 9 L5*L23*L24; 11 L5*L24*B3; 9 L7*L11
5 L7*L14*L26; 1 L7*L22*B5; 46 L7*L25*L30; 2 TmCPQ*L18
7 TmCYQ*B3; 11 TmFYQ; 7 TmFYQ*L4; 13 TmHCY
14 TmHCY*L22; 58 TmHDQ*B4; 3 TmHDQ*L14; 62 TmHDQ*L16
1 TmHDQ*L22; 34 TmHDQ*L28; 1 TmHDQ*L36; 17 TmHPQ*L15
18 TmHPQ*L4; 5 TmHYX*L23; 6 TmOFY*B2; 9 TmOFY*B5
8 TmOFY*L17; 33 TmOFY*L26; 5 TmOFY*L30; 4 TmOHP*L33
2 TmOHZ*B5; 7 TmOYX*B0; 11 TmOYX*B3; 172 TmYPQ*L18
174 TmYXP*L26; 19 TmYXP*L36; 3 TpCDF; 40 TpCDF*L26
67 TpDFQ; 2 TpDFQ*L36; 28 TpDFX*B5; 6 TpHFP*L15
48 TpHZP; 4 TpHZP*L22; 24 TpHZP*L26; 10 TpOCP*B3
6 TpOFQ*L14; 33 TpOFQ*L33; 61 TpOFQ*L4; 28 TpYXQ
174 TpYXQ*L22; 1 TpYXQ*L26; 9 TpYXQ*L6
```

There are 103 positive integer entries. The exact coefficient-box upper bound is

`-135131688819/13000000000000`.

### Leaf LU.R7ppmp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP 1
via X OHC FP 1
```

```c1si-factors
B0 drop l OHQ 1 Z
B1 sidebound left_xmax P
B2 ear HDF1_dmax
B3 sidebound left_y P
B4 drop m OCQ 2 YX
B5 triangle HDP 1 Q
B6 triangle CDP 1 Q
B7 quad OCDH 3 YZX
B8 quad OCPH 3 YZX
B9 sidebound left_hmax P
B10 quad OCQH 3 YZX
B11 quad OQPH 1 Z
B12 quad OCQP 3 YZX
```

```c1si-sum
17 B10*B9; 17 B11*B9; 6 B12*B3; 46 B5*B0
24 B5*L4; 5 B6*B2; 31 B6*B4; 14 B6*L0
14 B7*L23; 10 B8*B9; 3 ED*L23; 10 L14*L37*B4
2 L27*B1*B2; 4 L3*L26; 5 L3*L4*L30; 14 L3*L4*L36
6 L4*L21*L23; 25 L5*B1*B2; 2 L5*L23*B0; 9 L7*B3*B2
4 M1; 47 M1*L22; 11 TmCPQ; 10 TmCPQ*L15
23 TmCPQ*L30; 10 TmCPQ*L5; 10 TmOZQ*L22; 25 TpCDQ*L23
86 TpDPQ; 6 TpDPQ*L22; 13 TpHDQ; 46 TpHDQ*L21
9 TpHFP*B2; 10 TpOCZ*L23; 6 TpOZP; 10 TpOZP*L26
53 TpOZP*L36
```

There are 37 positive integer entries. The exact coefficient-box upper bound is

`-2263041/56875000`.

### Leaf LU.R7ppp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
mesh OCQYXZ -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OCQ DQ 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP 1
via X OHC FP 1
```

```c1si-factors
B0 sidebound left_hmax P
B1 drop m OCQ 3 YZX
B2 sidebound left_fmin P
B3 sidebound left_y P
B4 sidebound left_cmin P
B5 sidebound left_xmax P
B6 quad OCPH 3 YZX
B7 quad HZCP 1 Y
B8 quad HZCQ 1 Y
B9 mesh OCQYXZ -1 2
```

```c1si-sum
7 B2*B1; 27 B6*B0; 2 B7*B1; 2 B8*L23
33 B9; 32 B9*L22; 2 B9*L6; 1 EF*L23
10 L20*B1; 2 L20*L25*B1; 2 L23*L36*L36; 1 L24*L30*L31
2 L25*L25*B3; 18 L26*B3*B4; 1 L29*L29*B3; 4 L3*L26*L36
1 L30*L31*B5; 5 L6*L23; 12 L9*B0; 32 L9*B1
29 L9*L22*B0; 32 L9*L22*B1; 4 M3*L7; 88 TmCPQ*L0
2 TmCPQ*L14; 32 TmHCY; 30 TmHCY*L22; 1 TmHCY*L37
10 TmHFQ*L21; 2 TmHFQ*L34; 2 TmHFQ*L35; 91 TmHPQ
2 TmHPQ*L22; 2 TmHPQ*L25; 1 TmHPQ*L37; 37 TmHPQ*L4
9 TmHPQ*L6; 37 TmOHP*B1; 13 TmOHQ*L23; 37 TmOPQ*L30
6 TpDPQ; 2 TpDPQ*L22; 1 TpDPQ*L31; 34 TpDPQ*L36
1 TpHCF*L23; 54 TpHCP*B1; 74 TpHCQ*L23; 1 TpHCQ*L9
10 TpHFP*L25; 2 TpOZQ*L22; 1 TpOZQ*L36
```

There are 51 positive integer entries. The exact coefficient-box upper bound is

`-689760320399/18200000000000`.

### Leaf LU.R8m

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Q DFP OD 1
via Q DFP HD 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHY FQ -1
via X OHC FP 1
via Y OHQ OD 1
via Y HXQ DX -1
```

```c1si-factors
B0 sidebound left_hmax P
B1 sidebound left_f P
B2 sidebound left_cmin P
B3 drop l OHQ 2 YZ
B4 sidebound left_fmin P
B5 drop q OCP 2 YX
B6 triangle OHC 3 YZX
B7 triangle OHQ 2 YZ
B8 sidebound left_xmax P
B9 triangle ODF 2 YQ
B10 triangle OFQ 1 Y
B11 quad OCDH 3 YZX
B12 quad OCPH 3 YZX
B13 quad ODFH 3 YZQ
B14 quad HZCD 1 Y
B15 quad HDFP 1 Q
```

```c1si-sum
38 B10*L11; 35 B11*L34; 10 B12*B0; 2 B13*L29
3 B14*L34; 3 B15*L29; 5 B6*L25; 74 B7*B4
46 B7*B8; 37 B7*L11; 2 B7*L34; 261 B7*L4
25 B9*L7; 22 L12*L23; 56 L20*B0; 11 L20*L24*B0
3 L20*L37*B0; 3 L23*B1; 3 L23*L24; 50 L23*L37*B3
5 L23*L37*B4; 11 L24*L31*B0; 4 L25*L29*L30; 172 L25*L30*B2
6 L27*B0*B2; 11 L3*L7*L27; 10 L3*L7*L34; 43 L37*B0*B3
21 L4*B2*B3; 255 L4*L24*B0; 5 L4*L7*B0; 75 L6*L23
10 L6*L23*L24; 9 L7*L26*B2; 10 L7*L29*L35; 9 L7*L34
11 L7*L34*L36; 9 M1*B5; 20 M3*B4; 3 M3*L12
4 M3*L15; 2 M3*L25; 25 M3*L26; 4 TmDPQ
47 TmDPQ*L37; 35 TmHCY; 9 TmHCY*L27; 9 TmOFY
76 TmOFY*L26; 3 TmOFY*L30; 37 TmOFY*L5; 82 TmOYQ
41 TmOYQ*L36; 25 TpCDF*B4; 180 TpCDQ; 38 TpCDQ*L10
47 TpCDQ*L21; 76 TpCDQ*L6; 18 TpDFQ; 38 TpDFQ*L10
96 TpDFQ*L37; 162 TpHDQ*B2; 47 TpHDQ*L20; 76 TpHDQ*L31
83 TpHFP; 10 TpHFP*L24; 30 TpHZP; 10 TpODQ*L29
38 TpODY*L29; 4 TpOYZ*L36; 3 TpOYZ*L37
```

There are 71 positive integer entries. The exact coefficient-box upper bound is

`-169493220509/9100000000000`.

### Leaf LU.R8pm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Z OHP OF 1
via Z OHP OQ 1
via Q DFP HD 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Y OCF FZ 1
via Z OHF FX -1
via Z OHC FP 1
via X OHC FP 1
```

```c1si-factors
B0 sidebound left_xmax P
B1 sidebound left_y P
B2 sidebound left_hmax P
B3 ear HDF1_dmax
B4 triangle OCZ 1 X
B5 triangle HCZ 1 Y
B6 triangle DFP 1 Q
```

```c1si-sum
10 B4*B0; 6 B5; 8 B5*L34; 2 B5*L36
1 B6*L36; 1 ED*L3; 25 L0*B0; 18 L12*B1
10 L12*L37*B1; 27 L14*B0; 6 L14*L36*B0; 2 L14*L37*B0
3 L29*B2; 5 L31*B3*B3; 9 L36*L36*B0; 1 L4*L36*B0
34 L7*B1; 1 L7*L22*B3; 1 L7*L36*B1; 2 L7*L37*B1
9 TmHCY; 4 TmHCY*L13; 9 TmHCY*L14; 11 TmHDZ*L3
7 TmHYZ*L3; 39 TmOHZ; 1 TmOHZ*L5; 30 TmOZP
3 TmOZP*L36; 12 TmOZP*L37; 2 TpCDF; 1 TpCDF*L22
5 TpCDF*L5; 8 TpCYZ; 9 TpCYZ*L36; 35 TpHFP
2 TpHFP*L37
```

There are 37 positive integer entries. The exact coefficient-box upper bound is

`-16505424437/1000000000000`.

### Leaf LU.R8ppmm

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Q CDF OF -1
via Q DFP HD 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP 1
via Z OHC FQ -1
via X OHC FP 1
via X OHC FQ -1
```

```c1si-factors
B0 drop m OCQ 2 YX
B1 sidebound left_fmin P
B2 ear HDF1_dmax
B3 sidebound left_cmin P
B4 ear CDF1_fmax
B5 drop l OHQ 1 Z
B6 triangle OHC 3 YZX
B7 triangle OCQ 2 YX
B8 triangle HDF 1 Q
B9 triangle CDF 1 Q
B10 sidebound left_x P
B11 triangle DFP 1 Q
B12 quad OCPH 3 YZX
B13 quad HDFP 1 Q
B14 quad CDFP 1 Q
B15 sidebound left_support P
```

```c1si-sum
7 B11*B5; 2 B12*B2; 1 B13; 1 B13*L24
2 B13*L31; 2 B13*L37; 1 B14*B1; 3 B15
2 B2*B4; 11 B3*B2; 4 B6*L21; 2 B7
1 B8*L20; 1 B9*B10; 7 B9*L22; 16 B9*L26
4 L20*B2; 2 L21*L29; 7 L22*B2*B4; 5 L22*B3*B2
3 L23*L37*B1; 1 L23*L37*B5; 3 L3*B0; 3 L37*B2*B4
20 L4*B1; 4 TmCFQ; 16 TmCFQ*L5; 3 TmDPQ
1 TmDPQ*L31; 5 TmDPQ*L7; 19 TpDFQ; 6 TpDFQ*L21
1 TpDFQ*L37; 1 TpHDQ*L20; 2 TpHDQ*L7; 2 TpHFP*L25
```

There are 36 positive integer entries. The exact coefficient-box upper bound is

`-710891999/5687500000`.

### Leaf LU.R8ppmp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp OFQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Z OHQ OF 1
via Q DFP HD 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Y OCF FZ 1
via Y OCF FQ 1
via Z OHF FX -1
via Z OHC FP 1
via X OHC FP 1
via X OCF FQ 1
```

```c1si-factors
B0 sidebound left_fmin P
B1 sidebound left_hmax P
B2 drop m OCQ 2 YX
B3 ear HDF1_dmax
B4 sidebound left_cmin P
B5 drop l OHQ 1 Z
B6 sidebound left_xmax P
B7 triangle OHD 1 Z
B8 sidebound left_y P
B9 triangle OHF 2 ZQ
B10 triangle OHQ 1 Z
B11 triangle OFP 2 ZQ
B12 triangle DFP 1 Q
```

```c1si-sum
45833 B10*L23; 15032 B11*L0; 420 B11*L14; 668 B11*L3
1867 B11*L4; 3630 B12*B1; 2127 B9*L0; 4459 B9*L23
59515 B9*L3; 33009 L0*L0*L3; 795 L0*L12*B2; 6140 L0*L20*B1
1037 L0*L23; 2632 L0*L3*L14; 3221 L0*L3*L4; 36257 L0*L7*B1
14545 L0*L7*L7; 2416 L12*L14*B2; 26019 L12*L14*L23; 1967 L12*L20*L23
604 L12*L27*B3; 11172 L13*L13*L23; 1147 L13*L21*L23; 1608 L13*L23*L37
2420 L14*L14*L25; 1814 L14*L23; 1038 L20*B3*B3; 3390 L20*L20*B1
3071 L20*L20*B2; 779 L20*L23; 3072 L20*L23*L24; 1676 L23*B0
19350 L3*B1*B2; 17034 L3*B1*B4; 1283 L3*B1*B5; 12170 L3*B4*B2
2312 L3*L12*B2; 1607 L3*L14*L20; 2316 L3*L14*L25; 15660 L3*L20*B1
25764 L3*L23; 22880 L3*L3*L4; 7441 L3*L31*B2; 33 L3*L4*B2
9086 L3*L4*B3; 13789 L3*L4*L20; 3221 L3*L5*L29; 668 L3*L6*L23
604 L4*L12*L23; 1265 L4*L23; 1867 L4*L6*L23; 6951 L6*L23
3072 L6*L23*L24; 10126 L7*B3*B3; 420 L7*L14*L27; 18558 L7*L27*B1
778 L7*L29*B1; 12342 L7*L7*B3; 3072 L7*L7*L27; 14358 M1*B0
17819 M1*B5; 33022 M1*L0; 7449 M1*L13; 2632 M1*L14
19351 M1*L27; 17040 M1*L3; 11382 TmDPQ*B4; 606 TmDPQ*L14
1555 TmDPQ*L29; 1038 TmDPQ*L30; 11473 TmDPQ*L31; 857 TmDPQ*L37
39164 TmHFQ*B1; 3631 TmHFQ*B3; 29832 TmHFQ*B4; 185 TmHFQ*B6
14545 TmHFQ*L31; 8081 TmHPQ*B7; 31083 TmHPQ*L0; 20706 TmHPQ*L13
28551 TmHPQ*L15; 3072 TmHPQ*L20; 25267 TmHPQ*L3; 1038 TmHPQ*L4
14545 TmHPQ*L6; 22463 TmOZQ*B8; 6087 TmOZQ*L1; 2420 TmOZQ*L14
20706 TmOZQ*L20; 2614 TmOZQ*L22; 2316 TmOZQ*L3; 604 TmOZQ*L4
3244 TpCDF*B6; 8228 TpCDF*L21; 5653 TpCDF*L24; 56 TpCDF*L26
6521 TpCDF*L3; 9088 TpCDF*L5; 6522 TpCDF*L7; 19614 TpCDQ*L3
1038 TpDFQ*B3; 5820 TpDFQ*L7; 6943 TpFPQ*B1; 33022 TpHZP*B1
48700 TpHZP*B2; 2887 TpHZP*B5; 21024 TpHZP*L12; 25683 TpHZP*L14
318 TpHZP*L20; 9592 TpHZP*L31; 4767 TpHZP*L7; 2867 TpHZQ*L23
27549 TpOFQ*B1; 2537 TpOFQ*B3; 418 TpOFQ*L15; 30587 TpOFQ*L2
2887 TpOFQ*L20; 5653 TpOFQ*L31; 696 TpOFQ*L37; 420 TpOFZ*L23
14359 TpOZP*B0; 17819 TpOZP*B5; 30154 TpOZP*L0; 9852 TpOZP*L13
336 TpOZP*L14; 2796 TpOZP*L20; 20756 TpOZP*L27; 11200 TpOZP*L3
606 TpOZP*L4
```

There are 129 positive integer entries. The exact coefficient-box upper bound is

`-1377191/100000000`.

### Leaf LU.R8ppp

```c1si-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
mesh OCQYXZ -1
via Q DFP HD 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP 1
via X OHC FP 1
```

```c1si-factors
B0 sidebound left_hmax P
B1 drop m OCQ 3 YZX
B2 sidebound left_fmin P
B3 sidebound left_y P
B4 triangle HDF 1 Q
B5 quad OCPH 3 YZX
B6 quad OCDQ 3 YZX
B7 quad OYQP 1 Z
B8 mesh OCQYXZ -1 2
```

```c1si-sum
23 B2*B1; 2 B4*L20; 17 B5*B0; 1 B6*B3
4 B7*L0; 44 B8; 6 B8*L37; 45 B8*L6
10 EF*B0; 6 L13*L22*B1; 47 L20*B0; 7 L20*B1
11 L20*L25*B1; 11 L20*L37*B0; 5 L22*B2*B1; 30 L25*L25*B0
10 L25*L25*B3; 7 L25*L37*B0; 9 L3*L36*L36; 10 L36*B2*B1
36 L6*L23; 12 L6*L23*L24; 5 L6*L23*L26; 10 L9*B0
30 L9*B1; 5 M1*L22; 21 M3*L7; 10 TmCPQ*B2
2 TmCPQ*L4; 1 TmDPQ*L25; 2 TmDPQ*L36; 3 TmDPQ*L6
49 TmHCY; 6 TmHCY*L26; 7 TmHCY*L37; 22 TmHCY*L6
65 TmHFQ*L21; 2 TmHFQ*L4; 43 TmHFQ*L8; 9 TmHPQ
9 TmHPQ*L25; 2 TmHPQ*L30; 2 TmHPQ*L36; 9 TmHPQ*L37
59 TmHPQ*L6; 11 TmOHF*L3; 2 TmOHP*B1; 4 TmOHP*B2
2 TpCDF*L27; 1 TpCDF*L29; 7 TpCFY*B0; 10 TpFPQ*L29
10 TpHCF*L23; 6 TpHCQ*L10; 8 TpHCQ*L9; 1 TpHDQ*L9
60 TpHFP*L25; 6 TpOZQ*L22
```

There are 58 positive integer entries. The exact coefficient-box upper bound is

`-5393735779853/11375000000000`.

### Leaf UL.R0

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via H FPQ DP -1
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Y OCQ PQ 1
via P CDQ ZQ -1
via X OCY PQ 1
```

```c1si-factors
B0 triangle DPQ 1 H
```

```c1si-sum
1 B0; 11 TmHDP*L24; 10 TmHPQ; 11 TpHDQ*L20
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-1167465749/1000000000`.

### Leaf UL.R1

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via P DFQ OD 1
via P DFQ HD 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Y OCQ PQ 1
via P DFQ ZQ -1
via X OCY PQ 1
```

```c1si-factors
B0 sidebound left_y Q
B1 sidebound left_fmin Q
B2 triangle FPQ 1 H
```

```c1si-sum
1 B2; 1 B2*L37; 4 L20*B0; 1 L20*L37*B0
4 L23*L24; 1 L23*L24*L37; 1 L27*B1; 3 TmHFP*L24
4 TmHPQ; 3 TmHPQ*L6; 1 TpCPQ*L6; 3 TpHFQ*L20
1 TpOPQ*L7
```

There are 13 positive integer entries. The exact coefficient-box upper bound is

`-50559121/250000000`.

### Leaf UL.R2

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Y OCF PQ 1
via X OCF PQ 1
```

```c1si-factors

```

```c1si-sum
1 TmHFP; 1 TmHPQ; 1 TpFPQ; 1 TpHFQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf UL.R3

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via Y OCQ OP -1
via X OCY OP -1
via H FPQ DP -1
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Z OHY YP 1
via P CDQ YQ -1
via Z OHD PQ -1
via P CDQ XQ -1
```

```c1si-exclude
cluster OCP Q OCQ YX
```

### Leaf UL.R4

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via P DFQ OD 1
via Y OCQ OP -1
via X OCY OP -1
via P DFQ HD 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Z OHY YP 1
via P DFQ YQ -1
via P DFQ ZQ -1
via P DFQ XQ -1
```

```c1si-exclude
cluster OCP Q OCQ YX
```

### Leaf UL.R5

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
via Y OCQ OP -1
via X OCY OP -1
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Z OHY YP 1
```

```c1si-exclude
cluster OCP Q OCQ YX
```

### Leaf UL.R6

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via P DFQ OD 1
via Y OCQ OP -1
via X OCY OP -1
via P DFQ HD 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Y CZQ ZP -1
```

```c1si-factors
B0 sidebound left_y Q
B1 sidebound left_fmin Q
B2 sidebound left_xmax Q
B3 drop q OCP 2 YX
B4 sidebound left_x Q
B5 drop m OCQ 2 YX
B6 ear HDF1_dmax
B7 triangle FPQ 1 H
B8 quad OCDP 3 YXQ
```

```c1si-sum
2 B2*B3; 11 B7; 3 B7*L21; 1 B7*L26
1 B7*L37; 1 B7*L4; 1 B8*B2; 10 L20*B0
1 L20*L37*B0; 8 L23*L24; 1 L23*L24*L31; 1 L23*L24*L37
1 L24*L26*B6; 2 L27*B1; 1 L4*L20*B4; 7 L4*L6*B2
1 L7*L23*L26; 1 L7*L26*B5; 1 TmCPQ*L5; 2 TmCPQ*L7
1 TmOPQ*L37; 1 TmOPQ*L5; 8 TmOPQ*L6; 1 TpCDF*B5
3 TpDFP*L21; 3 TpDFP*L24; 3 TpDPQ*L21; 1 TpDPQ*L26
1 TpDPQ*L37; 10 TpDPQ*L6
```

There are 30 positive integer entries. The exact coefficient-box upper bound is

`-5485443001/91000000000`.

### Leaf UL.R7

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Y OCQ OP -1
via X OCY OP -1
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Y CZQ ZP -1
imp ODP 1 cluster
via Y OCP DP 1
via X OCY DP 1
```

```c1si-factors

```

```c1si-sum
1 TmHFP; 1 TmHPQ; 1 TpFPQ; 1 TpHFQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf UL.R8

```c1si-geometry
imp OXQ 1 ray
imp YZQ -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Y OCQ OP -1
via X OCY OP -1
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ 1
via X OHC FQ 1
via Y CZQ ZP -1
imp ODP 1 cluster
via Y OCP DP 1
via X OCY DP 1
```

```c1si-factors

```

```c1si-sum
1 TmHFP; 1 TmHPQ; 1 TpFPQ; 1 TpHFQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.


## 4. Completion and the entire three-lower subfamily

The four location models cover both side caps and both label orders;
each has all nine anchor-line cases, with a complete finite binary
refinement. Every terminal row has been excluded. This proves the
stated central/side-cap theorem.

For completeness, C1_EXTERIOR_REDUCTION.md leaves only the following
possibilities when there are three lower points. The listed proofs now
exclude every one:

| Positions of the other two points | Complete proof |
|---|---|
| both in \(HCDF\) | C1_PENTAGON.md |
| both in the top cap | C1_THREE_LOWER_TWO_TOP.md |
| one side-cap point and one top-cap point | C1_THREE_LOWER_SIDE_TOP.md |
| one point in \(HCDF\) and one top-cap point | C1_THREE_LOWER_ONE_TOP.md |
| one point in \(HCDF\) and one side-cap point | this note |

A side pair and the simultaneous occupancy of both side caps were
already excluded for three lower points by the exterior reduction.
Thus the entire C1 three-lower subfamily has minimum ordinary area
strictly below \(93/2000<A_*\). The C1 parent still requires its
zero-, one-, and two-lower subfamilies.

The optional `check_c1_three_lower_one_side.py` reads this manuscript,
verifies the exhaustive tree and every printed geometric premise,
and reconstructs all products and bounds with `Fraction` arithmetic.
It reuses the published C1 routines and the exterior rules in
`check_c1_three_lower_side_top.py`. It uses no optimizer, discovery
JSON, coordinate sample, or runtime subdivision.
