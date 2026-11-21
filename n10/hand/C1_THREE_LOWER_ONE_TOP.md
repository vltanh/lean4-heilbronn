# Three lower points, one central point and one top-cap point

**Theorem.** A C1 configuration with three free points in the actual
triangle \(OHC\), one free point in the actual quadrilateral \(HCDF\),
and one free point in the exterior top cap \(DF(1,1)\) has an actual
triangle of ordinary area less than \(93/2000<A_*\).

This closes the entire count \((k,j,r,t,l)=(3,1,0,1,0)\) of
C1_EXTERIOR_REDUCTION.md. All areas below are doubled. Suppose that
every actual triangle has unsigned area at least \(s=93/1000\).

## 1. Coordinates and exhaustive location models

Use the lower distributed mesh, coordinates, rational box, affine
factors \(L_0,\ldots,L_{37}\), and global factors of
C1_PENTAGON.md and C1_PENTAGON_GEOMETRY.md:

\[
 O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
 \quad Y=(u,v),\ Z=(z,w),\ X=(x,a),\ P=(p,q),\ Q=(\ell,m).
\]

The three lower points are \(Y,Z,X\), with central label and side
labels chosen as in the mesh construction. Transpose once to arrange
\(u\ge v\). This preserves both the central quadrilateral and top
cap. Independently interchange \(P,Q\) to arrange \(HPQ<0\).
There are exactly two resulting location models:

| Model | Location of \(P\) | Location of \(Q\) |
|---|---|---|
| TU | top cap \(DF(1,1)\) | inside \(HCDF\) |
| UT | inside \(HCDF\) | top cap \(DF(1,1)\) |

The lower-box and global-factor derivations remain valid for both
models: they require the two other points to lie above \(HC\), and
do not require them both inside \(HCDF\). See
C1_THREE_LOWER_TWO_TOP.md, Section 1. Keep the starting signs from
C1_PENTAGON.md for the central point. For the top-cap point \(R\),
replace \(DFR>0\) by \(DFR<0\) and add

\[
 ODR>0,\quad OFR<0,\quad HDR>0,\quad CFR<0,
 \quad FYR>0,\quad DYR<0. \tag{1}
\]

These are the cap-vertex tests proved in
C1_THREE_LOWER_SIDE_TOP.md, Section 2. Square-side faces are allowed;
zero actual chord incidences are excluded by the area hypothesis.

## 2. The complete anchor-line and binary catalogues

Since \(HPQ<0\), positive anchor vertices of the line \(PQ\) form
a consecutive interval in \(O,C,D,F\). The interval cannot be
empty: the line passes through the central point in the interior of
the actual pentagon. It cannot be just \(O\): the separating line
would intersect \(OH\) and \(OC\), putting every point above
\(HC\) strictly on the negative side. Thus the following nine
rows, with columns \(OPQ,CPQ,DPQ,FPQ\), are exhaustive in both
location models:

```c1ti-roots
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

The fixed binary refinements below split the indicated actual triangle
into its negative and positive alternatives. There are no zero signs.
The columns are node, triangle, negative child and positive child. A
node name starts with its location model. A name absent from this table
is a complete terminal row below.

```c1ti-tree
TU.R1 OYP TU.R1m TU.R1p
TU.R1m OYQ TU.R1mm TU.R1mp
TU.R1mp OXP TU.R1mpm TU.R1mpp
TU.R1mpp HDQ TU.R1mppm TU.R1mppp
TU.R1mppp CFQ TU.R1mpppm TU.R1mpppp
TU.R1mpppp YXQ TU.R1mppppm TU.R1mppppp
TU.R1p OZP TU.R1pm TU.R1pp
TU.R1pm OZQ TU.R1pmm TU.R1pmp
TU.R1pmm HDQ TU.R1pmmm TU.R1pmmp
TU.R1pmmm CFQ TU.R1pmmmm TU.R1pmmmp
TU.R1pmmmm YXP TU.R1pmmmmm TU.R1pmmmmp
TU.R1pmmmmp YXQ TU.R1pmmmmpm TU.R1pmmmmpp
TU.R1pmmp CFQ TU.R1pmmpm TU.R1pmmpp
TU.R1pmmpp YXP TU.R1pmmppm TU.R1pmmppp
TU.R1pmmppp YXQ TU.R1pmmpppm TU.R1pmmpppp
TU.R1pmp HDQ TU.R1pmpm TU.R1pmpp
TU.R4 OYP TU.R4m TU.R4p
TU.R4m OXP TU.R4mm TU.R4mp
TU.R4p OYQ TU.R4pm TU.R4pp
TU.R4pm OZP TU.R4pmm TU.R4pmp
TU.R4pmm HDQ TU.R4pmmm TU.R4pmmp
TU.R4pmmm CFQ TU.R4pmmmm TU.R4pmmmp
TU.R4pmmmm YZQ TU.R4pmmmmm TU.R4pmmmmp
TU.R6 OYP TU.R6m TU.R6p
TU.R6p OYQ TU.R6pm TU.R6pp
TU.R6pm OZP TU.R6pmm TU.R6pmp
TU.R6pmm OXQ TU.R6pmmm TU.R6pmmp
TU.R6pmmp HDQ TU.R6pmmpm TU.R6pmmpp
UT.R8 OYP UT.R8m UT.R8p
UT.R8p OYQ UT.R8pm UT.R8pp
UT.R8pm OZP UT.R8pmm UT.R8pmp
UT.R8pmm OXQ UT.R8pmmm UT.R8pmmp
UT.R8pmmp CFP UT.R8pmmpm UT.R8pmmpp
```

All geometric rules are those specified for exterior points in
C1_THREE_LOWER_SIDE_TOP.md, Section 3. In particular the two endpoint
`cluster` implications have their stated \(CDR>0\) and \(HFR<0\)
guards; both guards hold for central and top-cap points. The isolated-ear
rule assuming both points inside \(HCDF\) is never used. Repeated
meshes, affine `via` interpolations and all local area costs use actual
containments displayed in their witnesses.

## 3. Nonnegative factors and fixed exact contradictions

Use the global and local factor definitions from C1_PENTAGON.md.
For a top point, also use the four factor types `topx`, `topy`,
`topprojx`, `topprojy` defined in
C1_THREE_LOWER_TWO_TOP.md, Section 2. Their cost is determined by the
listed actual points inside the triangle \(DFR\). Thus each factor
has an explicitly proved nonnegative sign. No area cost for two free
points inside \(HCDF\) is assumed.

Each sum is a positive integer combination of products of those factors,
of degree at most three. The coefficient-box rule (33) of
C1_PENTAGON.md bounds it above by the exact negative rational printed
below. This contradicts the sum's nonnegativity.

There are 18 starting rows, 33 binary splits, 47 polynomial leaves
and 4 geometric leaves. The sums contain 3,455 positive integer entries;
the largest coefficient is 10,845. Every printed upper bound is below
\(-1/100\).

### Leaf TU.R0

```c1ti-geometry
via Q OHP OD 1
via D FPQ HQ 1
via D HPQ ZX 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
```

```c1ti-factors

```

```c1ti-sum
1 TmDPQ; 1 TmHDQ*L21; 1 TpHDP*L25
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf TU.R1mm

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
via Y OHP OD 1
via Q OHP OD 1
via X OCY DY 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
```

```c1ti-exclude
cluster OHP Q OHQ YZ
```

### Leaf TU.R1mpm

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
mesh OHPQZY 1
```

```c1ti-exclude
mesh OHPYZX 1
```

### Leaf TU.R1mppm

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
mesh OHPQZY 1
via Y OHP OD 1
via X OCY DY 1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Q HZP DZ -1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via X OCY PQ 1
```

```c1ti-factors
B0 drop p OHP 3 YZQ
B1 topy P 0 -
B2 drop q OCP 1 X
B3 drop m OCQ 2 YX
B4 topx P 0 -
B5 drop l OHQ 1 Z
B6 triangle OCF 2 YX
B7 triangle OCQ 2 YX
B8 triangle HDY 1 Q
B9 triangle HYP 1 Q
B10 triangle HXP 2 YQ
B11 spread OCPH XQ OP 1 1457/250
B12 quad OCQH 3 YZX
B13 quad OPFH 3 YZQ
B14 quad OXPH 3 YZQ
B15 quad ODPQ 1 Y
B16 quad HYCD 1 Q
B17 mesh OHPQZY 1 1
B18 mesh OHPQZY 1 2
```

```c1ti-sum
162 B10*L4; 42 B11*L34; 219 B12*B1; 22 B12*L35
57 B12*L5; 32 B13*L23; 32 B13*L4; 42 B14*L34
19 B15*L1; 42 B16*B0; 19 B17*B3; 7 B18*L11
277 B18*L3; 103 B18*L4; 229 B7*B0; 62 B7*B1
42 B7*L20; 72 B7*L22; 6 B7*L6; 7 B7*L9
29 B8*B0; 46 B9*B3; 5 L0*L24*L34; 22 L1*B0
59 L1*L25*B1; 122 L1*L25*B2; 135 L1*L3; 173 L1*L3*L20
41 L1*L3*L22; 39 L1*L3*L24; 160 L1*L4*L17; 118 L1*L6*B1
10 L1*L6*L25; 37 L1*L6*L37; 10 L1*L6*L6; 4 L1*L9*L24
26 L11*L23*B3; 61 L11*L23*B4; 19 L2*L27*B1; 257 L2*L30*B1
106 L2*L35*B1; 168 L2*L6*B1; 4 L20*L22*L34; 2 L21*L21*L35
77 L21*L35*B1; 41 L22*L22*L34; 74 L22*L34; 66 L22*L34*B4
17 L23*L35*B5; 17 L24*L34*B2; 24 L26*L34*B2; 17 L27*L34
27 L3*B0*B3; 33 L3*B4*B3; 107 L3*L20*B3; 1 L3*L27*L34
16 L3*L35*B3; 15 L3*L4*B3; 19 L30*L35*B5; 103 L34
10 L34*L36; 42 L35*B2*B2; 1 L4*B0*B0; 162 L4*L16*L23
20 L4*L22*L34; 15 L4*L34; 5 L4*L34*B4; 20 L4*L35*B2
51 L4*L6*B1; 7 L4*L6*L11; 32 L5*L21*B1; 159 L5*L21*L29
178 L5*L5*L21; 17 L6*L11*L21; 32 L6*L6*B1; 10 L6*L6*B3
53 L7*L11*B0; 6 L7*L34; 32 TmDFP*B2; 120 TmDFP*L2
4 TmDFP*L25; 231 TmDFP*L27; 81 TmDFP*L29; 5 TmDFP*L35
51 TmDFP*L4; 32 TmDFP*L6; 40 TmHCY*L23; 95 TmHDQ*B0
178 TmHDQ*L20; 104 TmHDQ*L22; 277 TmHDQ*L3; 19 TmHDQ*L35
4 TmHDQ*L6; 4 TmHFP*B5; 231 TmHFQ*B1; 22 TmHFQ*B6
17 TmHFQ*L37; 10 TmHFQ*L6; 61 TmHPQ*L34; 27 TmOHP*L34
22 TmOHQ*L34; 102 TmOYP; 7 TmOYP*L21; 87 TmOYP*L22
103 TmOYP*L24; 30 TmOYP*L27; 42 TmOYP*L31; 126 TmOYP*L36
45 TmOYP*L4; 29 TmOYP*L7; 189 TpCDP; 277 TpCDP*L24
334 TpCDP*L26; 260 TpCDP*L30; 107 TpCDP*L35; 32 TpCDP*L7
174 TpHCQ*B0; 63 TpHYQ*B0; 40 TpHYQ*L20; 130 TpHYQ*L23
46 TpYPQ*L1
```

There are 121 positive integer entries. The exact coefficient-box upper bound is

`-1354067954511/45500000000000`.

### Leaf TU.R1mpppm

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
mesh OHPQZY 1
via Y OHP OD 1
via Q CDF OF -1
via X OCY DY 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via X OCY PQ 1
```

```c1ti-factors
B0 drop m OCQ 2 YX
B1 ear HDF1_dmax
B2 ear CDF1_fmax
B3 topx P 0 -
B4 drop p OHP 3 YZQ
B5 drop q OCP 1 X
B6 topy P 0 -
B7 triangle OHC 3 YZX
B8 triangle OHP 3 YZQ
B9 triangle OCQ 2 YX
B10 triangle OFP 2 YQ
B11 triangle HDF 1 Q
B12 drop l OHQ 1 Z
B13 triangle HDP 1 Q
B14 triangle CDF 1 Q
B15 spread OCPH XQ CH -1 1457/250
B16 spread OCPH XQ CH 1 1457/250
B17 quad OPFH 3 YZQ
B18 quad ODPF 2 YQ
```

```c1ti-sum
17 B10*B1; 21 B11*B12; 2 B11*B5; 7 B11*L4
18 B13*L2; 29 B14*B0; 6 B14*L0; 2 B15*L34
2 B16*L34; 8 B17*B0; 15 B17*L4; 5 B18*L29
5 B7*L21; 8 B7*L27; 9 B8*L4; 5 B9
8 B9*L22; 1 B9*L36; 7 B9*L6; 1 L1*L25*B1
16 L1*L4*L6; 6 L11*L23*L31; 4 L2*L30*B1; 1 L20*L31*L34
3 L21*L30*L31; 10 L21*L30*L37; 3 L21*L31*L35; 14 L21*L37*B1
2 L23*L29*B2; 3 L29*B3*B1; 8 L3*B0; 2 L3*L36*B0
4 L3*L4*L4; 7 L3*L6*B0; 2 L31*L34*B4; 5 L31*L34*B5
1 L7*L22*L34; 3 M3*B6; 4 M3*L21; 8 TmCFQ
8 TmCFQ*L23; 10 TmCFQ*L30; 19 TmCFQ*L5; 1 TmHCY*L23
3 TmHCY*L5; 8 TmHPQ; 3 TmOYP; 6 TmOYP*L31
4 TmOYP*L36; 1 TmOYP*L37; 23 TpCDP; 1 TpCDP*L36
3 TpCDP*L7; 46 TpDFQ; 3 TpDFQ*L36; 21 TpHDQ*L7
```

There are 56 positive integer entries. The exact coefficient-box upper bound is

`-60138697939/812500000000`.

### Leaf TU.R1mppppm

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp OFQ 1 cluster
mesh OHPQZY 1
via Y OHP OD 1
via Z OHQ OF 1
via X OCY DY 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Y OCF FZ 1
via Y OCF FQ 1
via Z OHF FX -1
via Z OHC FP -1
via X OHC FP -1
via X OCF FQ 1
via X OCY PQ 1
```

```c1ti-factors
B0 topy P 0 -
B1 drop l OHQ 1 Z
B2 triangle OCF 2 YX
B3 ear HDF1_dmax
B4 drop p OHP 3 YZQ
B5 drop m OCQ 2 YX
B6 topx P 0 -
B7 drop q OCP 1 X
B8 triangle OHF 2 ZQ
B9 triangle OCQ 2 YX
B10 triangle OZP 1 Y
B11 triangle HCZ 1 Y
B12 triangle HCX 1 Y
B13 triangle HDP 1 Q
B14 triangle HXP 2 YQ
B15 spread OCFH YQ CH 1 1457/250
B16 quad OCQH 3 YZX
B17 quad OXPH 3 YZQ
B18 quad OCPY 1 X
B19 spread OCPZ YX CZ 1 1457/250
B20 quad OPQZ 1 Y
B21 quad HZXC 1 Y
B22 spread HZCP YQ HC 1 1457/250
B23 spread HZCP YQ ZP 1 1457/250
B24 quad HXCQ 1 Y
B25 quad HDPF 1 Q
B26 mesh OHPQZY 1 3
```

```c1ti-sum
43 B10*L16; 25 B11*B1; 12 B12*L12; 13 B13*L21
10 B14*L12; 6 B15*L1; 5 B16*L15; 35 B16*L33
13 B17*L4; 21 B18*L1; 3 B19*L34; 39 B20*L18
152 B21*B1; 1 B22*L34; 3 B23*L34; 11 B24*L12
1 B25*L1; 86 B26*L21; 17 B8*L4; 43 B9*B0
41 B9*L16; 7 EF*L1; 47 L0*L21*L35; 5 L1*B0
5 L1*L1; 23 L1*L10*L25; 76 L1*L11*B1; 12 L1*L16*L24
13 L1*L2*L26; 4 L1*L2*L35; 109 L1*L20*B2; 35 L1*L20*L28
82 L1*L20*L37; 10 L1*L25*B0; 57 L1*L25*L35; 22 L1*L3*B1
9 L1*L30*L31; 8 L1*L31*B3; 15 L1*L31*B4; 41 L1*L4*B1
10 L1*L9*L26; 25 L10*L12*L17; 16 L11*L12*L16; 186 L11*L16*L22
113 L11*L16*L26; 106 L11*L20*L28; 25 L11*L28; 18 L12*L16*L34
18 L12*L17*L35; 77 L12*L19*L20; 77 L15*L20*B1; 9 L15*L21*L25
8 L15*L27*L34; 8 L15*L27*L35; 10 L15*L34*B1; 29 L15*L35*B1
145 L16*L22*B5; 25 L16*L23*L34; 14 L16*L26*L34; 39 L16*L30*B5
56 L16*L30*L34; 13 L16*L34*L36; 27 L16*L36*B5; 118 L18*L21*B1
8 L18*L21*B3; 16 L18*L21*B5; 12 L18*L21*L24; 15 L18*L25*L34
23 L18*L29*B4; 16 L19*L21*L29; 154 L2*L2*B0; 136 L2*L21*L27
45 L2*L27*L35; 15 L2*L33*B0; 9 L2*L35*B0; 45 L20*L28*B5
64 L21*B3*B1; 75 L21*B3*B3; 13 L21*L21*L30; 6 L21*L23*B3
15 L21*L27*L31; 2 L21*L27*L34; 15 L21*L30*B1; 19 L21*L30*L35
10 L21*L35*L36; 10 L23*L29*B1; 28 L23*L34*B1; 53 L28*B4*B5
32 L28*B7*B1; 5 L3*L14*B5; 57 L3*L14*L16; 8 L3*L15*B1
50 L3*L18*L21; 61 L3*L20*L34; 61 L3*L21*L35; 103 L3*L23*L23
86 L3*L26*L34; 17 L3*L27*L28; 25 L3*L3*L11; 16 L3*L3*L4
103 L3*L33*B1; 117 L3*L4; 12 L3*L4*L16; 86 L3*L4*L23
53 L3*L4*L24; 9 L3*L4*L34; 25 L34*B4*B5; 61 L4*B4*B1
43 L4*B4*B5; 27 L4*L11*B4; 10 L4*L11*L20; 13 L4*L16*B3
157 L4*L16*B4; 80 L4*L23*B4; 17 L4*L23*B6; 23 L4*L4*B1
88 L4*L4*B4; 56 L9*L28*B0; 34 M4*B1; 12 M4*L2
67 M4*L21; 17 TmCFP*L4; 17 TmCYQ*L28; 36 TmHCY*B0
8 TmHCY*L14; 56 TmHCY*L20; 133 TmHCY*L25; 81 TmHCY*L26
71 TmHCY*L28; 7 TmHCY*L29; 15 TmHFQ*L21; 67 TmHPQ*B2
32 TmHPQ*L17; 87 TmHPQ*L32; 75 TmHPQ*L33; 53 TmHPQ*L34
100 TmHPQ*L35; 84 TmHPQ*L37; 16 TmHYX*B1; 34 TmHYX*L21
14 TmHYZ*L21; 143 TmOYP*B1; 15 TmOYP*L1; 25 TmOYP*L17
103 TmOYP*L19; 74 TmOYP*L24; 146 TmOYP*L26; 26 TmOYX
17 TmOYX*B0; 2 TmOYX*L14; 24 TmOYX*L20; 128 TmOYX*L26
66 TmOZQ; 22 TmOZQ*L19; 8 TmOZQ*L33; 5 TmOZQ*L36
93 TmOZQ*L37; 47 TmYXQ; 4 TmYXQ*L15; 130 TmYXQ*L20
146 TmYXQ*L22; 39 TmYXQ*L30; 32 TmYXQ*L36; 148 TmYXQ*L37
56 TmYZP*L16; 42 TpCDP; 103 TpCDP*L23; 140 TpCDP*L24
43 TpCDP*L26; 19 TpCDP*L34; 15 TpCDP*L36; 155 TpCDP*L37
13 TpCDP*L4; 13 TpCDX*B0; 157 TpCDX*B4; 12 TpCDX*L3
76 TpCYZ*B1; 46 TpCYZ*L17; 9 TpCYZ*L2; 10 TpCYZ*L27
8 TpCYZ*L29; 5 TpHCQ*L1; 72 TpHCQ*L28; 39 TpHDQ*L28
12 TpHDQ*L29; 73 TpHDQ*L37; 24 TpHDQ*L4; 39 TpHYQ*L4
32 TpHZX*L20; 114 TpHZX*L25; 4 TpHZX*L26; 52 TpOCQ*L1
29 TpOCX*B0; 139 TpOCX*B5; 120 TpOCX*L25; 84 TpOCX*L34
2 TpODY*L1; 10 TpOXP*L12
```

There are 198 positive integer entries. The exact coefficient-box upper bound is

`-53777205401/1625000000000`.

### Leaf TU.R1mppppp

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp OFQ 1 cluster
mesh OHPQZY 1
via Y OHP OD 1
via Z OHQ OF 1
via X OCY DY 1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Y OCF FZ 1
via Y OCF FQ 1
via Z OHF FX -1
via Z OHC FP -1
via X OHC FP -1
via X OCF FQ 1
via X OCY PQ 1
via Y OXQ FX -1
```

```c1ti-factors
B0 drop q OCP 1 X
B1 drop p OHP 3 YZQ
B2 topx P 0 -
B3 drop m OCQ 2 YX
B4 drop l OHQ 1 Z
B5 ear HDF1_dmax
B6 triangle OHY 1 Z
B7 triangle OHQ 1 Z
B8 triangle OCQ 2 YX
B9 triangle OFP 1 Y
B10 triangle OPQ 1 Y
B11 triangle HCX 1 Y
B12 triangle HFX 2 YQ
B13 triangle HYP 1 Q
B14 triangle HXQ 1 Y
B15 spread OCFH XQ CH -1 1457/250
B16 spread OCFH XQ CH 1 1457/250
B17 quad OXFQ 1 Y
B18 quad OPFQ 1 Y
B19 quad HXCQ 1 Y
```

```c1ti-sum
2 B10*L4; 83 B11*B3; 5 B12*L2; 13 B12*L27
20 B13*L18; 84 B14*L11; 49 B14*L34; 2 B15*L21
3 B16*L1; 15 B17*L27; 3 B17*L29; 15 B18*B3
10 B18*L3; 1 B18*L9; 37 B19*L34; 2 B6*L21
18 B7*L34; 11 B8*L17; 32 B9*L11; 2 CAPHFY*L21
1 EF*L1; 1 L0*L16*L21; 25 L1*L17*L24; 44 L1*L17*L35
37 L1*L17*L37; 2 L1*L2*L30; 10 L1*L20*L37; 21 L1*L28*B1
3 L1*L29*L31; 3 L1*L5*L17; 8 L11*L17*L23; 11 L11*L17*L27
10 L11*L27*B2; 15 L16*L23*B4; 33 L16*L27*L35; 3 L17*B5*B3
40 L17*L23*B3; 1 L17*L34; 9 L18*L21*L26; 13 L19*L27*L34
18 L2*L27*L28; 13 L20*L34*B4; 13 L21*L24*B5; 2 L21*L24*L30
13 L21*L24*L35; 8 L21*L26*B5; 22 L21*L26*L34; 13 L21*L27*L28
11 L21*L27*L37; 15 L21*L30; 55 L21*L30*L37; 9 L21*L34
42 L21*L35*L36; 48 L22*L24*L34; 10 L27*L28*L31; 16 L27*L28*L35
1 L28*L29*L29; 6 L29*L35*B4; 14 L3*L11; 4 L3*L17*L23
7 L3*L18*L36; 2 L3*L21*L26; 3 L3*L23*L23; 6 L3*L24*L34
6 L3*L3*L11; 2 L3*L3*L17; 7 L3*L34; 8 L3*L4
60 L3*L4*L24; 9 L3*L4*L26; 5 L3*L4*L6; 7 L3*L6*L18
17 L33*B2*B3; 12 L34*B0; 16 L4*B2*B3; 3 L4*L23*B2
10 L7*L17*L23; 10 L7*L34*L36; 3 M3*L28; 16 TmCFP*B3
3 TmCFP*L4; 72 TmCXQ*L1; 27 TmCYQ*L18; 9 TmDFP*B3
10 TmDFP*L2; 10 TmFPQ*L17; 51 TmFYQ; 40 TmFYQ*L22
10 TmFYQ*L36; 9 TmFYQ*L37; 7 TmFYQ*L4; 9 TmHCY*B2
39 TmHCY*L17; 63 TmHCY*L24; 8 TmHCY*L27; 12 TmHCY*L3
5 TmHCY*L30; 20 TmHPQ; 14 TmHPQ*L19; 25 TmHPQ*L28
6 TmHPQ*L34; 55 TmHPQ*L35; 65 TmHPQ*L37; 2 TmHPQ*L4
237 TmHYX*L26; 6 TmHYX*L30; 6 TmHYX*L5; 52 TmOFY*B4
22 TmOFY*L19; 15 TmOFY*L22; 33 TmOFY*L24; 95 TmOFY*L26
70 TmOYP; 109 TmOYP*L24; 2 TmOYP*L28; 2 TmOYP*L6
7 TpCDF*L11; 57 TpCDP; 5 TpCDP*L17; 3 TpCDP*L23
15 TpCDP*L24; 16 TpCDP*L26; 5 TpCDX*L20; 4 TpCDX*L27
5 TpCDX*L3; 2 TpCDY*L18; 43 TpCYX*B3; 2 TpCYX*L1
50 TpDPQ*L2; 6 TpDYX*L1; 22 TpFXP*L11; 62 TpHCQ*L18
14 TpHCQ*L34; 7 TpHDQ*L18; 189 TpHYQ*L18; 3 TpOCX
3 TpOCX*L5; 15 TpOCX*L6; 4 TpOCX*L9; 35 TpOFQ*L33
87 TpOFQ*L35; 2 TpOXP*L34; 85 TpOYQ*B2; 44 TpYXQ
2 TpYXQ*L20; 40 TpYXQ*L23; 7 TpYXQ*L30; 228 TpYXQ*L36
42 TpYXQ*L37
```

There are 149 positive integer entries. The exact coefficient-box upper bound is

`-5776089267/500000000000`.

### Leaf TU.R1pmmmmm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Q CDF OF -1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OCQ ZQ -1
via Q OHP YX -1
via Y OCP PQ 1
via X OCY PQ 1
via Y CXP FX 1
```

```c1ti-factors
B0 drop p OHP 2 ZQ
B1 drop q OCP 2 YX
B2 drop m OCQ 2 YX
B3 triangle OHD 2 ZQ
B4 drop l OHQ 1 Z
B5 topx P 0 -
B6 ear CDF1_fmax
B7 triangle OHX 1 Z
B8 triangle OHP 2 ZQ
B9 triangle OCY 1 X
B10 triangle OCQ 2 YX
B11 triangle HCX 1 Y
B12 triangle CXP 1 Y
B13 quad OPFH 2 ZQ
B14 quad HXCF 1 Y
B15 quad HCPF 1 Q
B16 spread CPFX YQ CF -1 1457/250
B17 spread CPFX YQ PX -1 1457/250
B18 quad CQFX 1 Y
B19 quad CPQX 1 Y
B20 quad FXYP 1 Q
```

```c1ti-sum
5 B10*L1; 6 B11*L18; 4 B12*L10; 46 B13*L33
3 B14*L33; 5 B15*B2; 2 B16*L10; 12 B16*L23
2 B17*L33; 2 B18*L10; 2 B19*L33; 12 B20*L23
6 B7*L3; 2 B7*L34; 19 B8*B1; 22 B8*L0
4 B8*L33; 17 B9*L1; 40 B9*L17; 5 L0*B0*B1
3 L0*L17*L23; 4 L0*L22*B0; 3 L1*L23*L28; 4 L1*L6
9 L1*L6*L22; 32 L1*L6*L33; 1 L1*L7*B2; 9 L1*L9
30 L1*L9*L22; 85 L10*L17; 49 L10*L17*L17; 16 L10*L17*L22
12 L10*L23*B5; 24 L11*L16*L16; 93 L11*L16*L22; 5 L17*L18
10 L17*L18*L35; 1 L18*L23*L31; 9 L23*L23*B6; 12 L23*L23*L31
3 L23*L30*B6; 4 L28*L28*L34; 20 L3*L11*L22; 16 L3*L22*B3
21 L3*L22*L36; 7 L3*L23*B2; 6 L3*L23*L33; 6 L3*L26*L36
1 L3*L9; 42 L33*B0; 3 L33*L36*B0; 7 L36*B0*B2
3 L4*L6*B1; 1 L4*L6*B2; 8 L5*L23*B4; 25 L6*B1*B1
7 L6*B1*B2; 12 L8*L23*L23; 2 L9*L17*L17; 14 TmCFQ*B3
6 TmCFQ*L0; 25 TmCFQ*L23; 15 TmDFP*L24; 1 TmDFP*L27
14 TmFPQ*L0; 2 TmFYX*L18; 25 TmFYX*L23; 37 TmHCY
40 TmHCY*L22; 6 TmHCY*L28; 15 TmHDQ*B5; 9 TmHDQ*L23
28 TmHFP*L22; 15 TmHFP*L25; 22 TmHFP*L36; 1 TmHFQ
16 TmHFQ*L22; 2 TmOFY*L18; 21 TmOHF*L1; 19 TmOYX*L17
153 TmOYX*L22; 46 TmOYX*L37; 94 TmYXP; 2 TmYXP*L10
6 TmYXP*L36; 16 TpCFY*L1; 1 TpCFY*L33; 1 TpOPQ*L30
6 TpOPQ*L36; 6 TpOYP*L18
```

There are 90 positive integer entries. The exact coefficient-box upper bound is

`-2166926993/200000000000`.

### Leaf TU.R1pmmmmpm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Q CDF OF -1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OCQ ZQ -1
via Y OCP PQ 1
via X OCY PQ 1
via Y HXP DX -1
via Y CXQ FX 1
```

```c1ti-factors
B0 topy P 0 -
B1 drop m OCQ 2 YX
B2 drop q OCP 2 YX
B3 drop l OHQ 1 Z
B4 topx P 0 -
B5 ear CDF1_fmax
B6 triangle OHX 1 Z
B7 triangle OCY 1 X
B8 triangle OXP 1 Y
B9 triangle HDX 2 YQ
B10 triangle CFX 1 Y
B11 triangle FXP 2 YQ
B12 triangle XPQ 1 Y
B13 quad OXFH 1 Z
B14 quad OQFH 1 Z
B15 spread OCPF YQ CF -1 1457/250
B16 quad OYPF 1 Q
B17 quad CQFX 1 Y
```

```c1ti-sum
14 B10*B0; 44 B11*L0; 40 B11*L27; 8 B11*L4
120 B12*L11; 13 B13*B1; 13 B13*L11; 13 B14*B0
28 B14*B2; 9 B14*L19; 39 B14*L33; 2 B15*L18
10 B16*L18; 3 B17*L10; 55 B6*L23; 6 B6*L34
1 B7*B0; 39 B8*B1; 8 B8*L30; 24 B9*B3
12 L0*L1*L25; 2 L18*L30*B4; 2 L18*L30*L31; 34 L2*B0
1 L2*L27*L30; 40 L21*L30; 2 L23*L28; 3 L23*L30*B5
1 L23*L30*L31; 9 L27*L30*L31; 15 L3*B1; 20 L3*L11
8 L3*L16*L36; 8 L3*L36*B1; 13 L30*L31*B3; 15 L30*L34*B3
12 L4*L6*B2; 10 L5*L35*B3; 2 L5*L8*L23; 1 L6*B2
3 L8*L23*L30; 110 TmCFQ*L0; 10 TmCFQ*L30; 3 TmCFQ*L33
15 TmCFQ*L36; 3 TmDFP*B3; 2 TmDFP*L18; 3 TmFYX*L27
28 TmHCY; 9 TmHCY*L16; 3 TmHCY*L22; 4 TmHDQ*B4
24 TmHDQ*L17; 2 TmHDQ*L29; 11 TmHDQ*L31; 15 TmHDQ*L34
11 TmHDQ*L35; 10 TmHDQ*L36; 123 TmHFQ; 15 TmHFQ*L11
14 TmHFQ*L4; 5 TmHPQ*L10; 11 TmOFY*L18; 9 TmOYX*B1
2 TmOYX*L29; 38 TmYXQ; 125 TmYXQ*L22; 51 TpCDP
2 TpCDP*L33; 9 TpCFY*B1; 3 TpFYQ*L19; 113 TpHCF*B1
1 TpHDP*B3; 8 TpOCX*B0; 10 TpOPQ*L18; 5 TpOYP*L30
115 TpYPQ*L18; 2 TpYXP*B1; 123 TpYXP*L26
```

There are 79 positive integer entries. The exact coefficient-box upper bound is

`-15743103583/200000000000`.

### Leaf TU.R1pmmmmpp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Q CDF OF -1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OCQ ZQ -1
via Y OCP PQ 1
via X OCY PQ 1
via Y HXP DX -1
```

```c1ti-factors
B0 drop m OCQ 2 YX
B1 ear CDF1_fmax
B2 topy P 0 -
B3 drop q OCP 2 YX
B4 drop p OHP 2 ZQ
B5 drop l OHQ 1 Z
B6 topx P 0 -
B7 triangle OHP 2 ZQ
B8 triangle HCX 1 Y
B9 triangle HDY 1 Q
B10 triangle HDX 2 YQ
B11 triangle FYP 1 Q
B12 spread OXQH YZ OQ 1 1457/250
B13 quad OXPQ 1 Y
B14 quad HXQF 1 Y
B15 quad CDPF 1 Q
```

```c1ti-sum
59 B10*L3; 14 B11*L3; 106 B12*B2; 28 B13*L23
745 B14*L11; 121 B15*L23; 13 B7*L3; 20 B8*B0
81 B8*L1; 25 B9*L18; 78 L0*L1*L3; 43 L0*L3*B0
103 L1*L1*L17; 13 L1*L1*L6; 14 L1*L16*L23; 88 L1*L17*B3
17 L1*L17*L22; 11 L1*L17*L24; 7 L1*L17*L37; 53 L1*L18*L24
23 L1*L21*L21; 42 L1*L21*L30; 7 L1*L21*L34; 49 L1*L3*L27
26 L1*L34*B2; 26 L1*L35*B2; 12 L1*L5*L6; 32 L1*L6*B2
17 L1*L6*L17; 114 L1*L6*L21; 65 L1*L6*L26; 89 L1*L6*L6
17 L1*L9*L17; 12 L10*L21*L30; 15 L11*L17; 42 L11*L17*B2
33 L11*L17*L20; 30 L11*L17*L22; 104 L11*L18*L20; 50 L16*L29*B2
346 L16*L30*B5; 47 L16*L35*B2; 52 L17*B0; 179 L17*B2*B0
119 L17*L20*B0; 108 L17*L22*B0; 7 L17*L23*L29; 50 L17*L30*L34
133 L18*B2*B5; 22 L18*L35*B1; 24 L19*L34*B2; 81 L2*B2*B0
16 L2*L21*L30; 96 L2*L5*L5; 12 L2*L6*B2; 8 L21*L21*B0
46 L21*L23; 7 L21*L23*L25; 42 L21*L23*L30; 11 L21*L23*L31
148 L21*L25*L30; 14 L21*L27*L30; 11 L21*L29*B2; 3 L21*L30*L35
92 L23*B1; 90 L23*L23*B1; 3 L23*L25*B1; 24 L23*L28*B5
65 L23*L30*L31; 24 L28*L35*B2; 11 L3*B4*B0; 69 L3*L11*L17
27 L3*L11*L20; 78 L3*L18*L36; 76 L3*L23*L26; 12 L3*L23*L34
78 L3*L4*L11; 50 L3*L4*L17; 3 L3*L4*L23; 44 L3*L4*L4
26 L5*L16*L23; 18 L5*L17*L34; 7 L5*L21*L21; 23 L5*L21*L23
23 L5*L21*L27; 31 L5*L21*L28; 6 L5*L21*L29; 7 L5*L23*B5
34 L5*L5*L21; 76 L6*B2*B0; 23 L6*B2*B5; 22 L6*L11*L17
40 L6*L17*B3; 17 L6*L21*B0; 13 L6*L21*B2; 89 L6*L23*B1
16 L7*L18*L27; 42 L8*L23*L30; 104 L9*L18; 105 L9*L18*L20
25 L9*L18*L30; 100 L9*L18*L36; 76 TmCFQ*L30; 143 TmDFP*B5
21 TmDFP*L29; 163 TmDXP*B0; 26 TmDXP*L23; 143 TmDYQ*L23
18 TmHCY; 14 TmHCY*B6; 74 TmHCY*L17; 30 TmHCY*L20
65 TmHCY*L22; 88 TmHDQ*B4; 140 TmHDQ*B6; 170 TmHDQ*L16
58 TmHDQ*L20; 45 TmHDQ*L22; 204 TmHDQ*L28; 17 TmHDQ*L30
2 TmHDQ*L33; 52 TmHDQ*L36; 2 TmHDQ*L9; 22 TmHFP*B2
40 TmHFP*L17; 24 TmHFP*L21; 9 TmHFP*L22; 140 TmHFP*L25
76 TmHFP*L26; 43 TmHFP*L30; 13 TmHFP*L37; 89 TmHFP*L6
69 TmHFQ*L1; 746 TmHFQ*L10; 52 TmHYX*B2; 22 TmHYX*B6
19 TmHYX*L1; 17 TmHYX*L20; 141 TmHYX*L22; 744 TmHYX*L26
106 TmOZQ*B2; 81 TpCDP*L11; 59 TpCDP*L16; 11 TpCDP*L25
158 TpCDP*L26; 50 TpCDP*L5; 6 TpCDP*L7; 209 TpDPQ
28 TpDPQ*L17; 7 TpDPQ*L21; 84 TpDPQ*L22; 2 TpDPQ*L34
20 TpDPQ*L36; 11 TpDPQ*L37; 16 TpDPQ*L4; 20 TpDPQ*L6
22 TpFYQ*L18; 620 TpHYQ*L18; 79 TpODQ*L23; 60 TpOPQ*L0
80 TpOPQ*L10; 56 TpOPQ*L23; 188 TpOPQ*L33; 266 TpOPQ*L35
532 TpOYP*B0; 267 TpOYP*B5; 7 TpOYP*L1; 75 TpOYP*L17
242 TpOYP*L5; 2 TpOYP*L6; 125 TpOYQ*L21; 225 TpOYQ*L23
106 TpYPQ; 19 TpYPQ*L1; 101 TpYPQ*L19; 3 TpYPQ*L28
342 TpYPQ*L4; 3 TpYPQ*L7; 122 TpYXQ; 144 TpYXQ*L20
344 TpYXQ*L22; 236 TpYXQ*L30; 536 TpYXQ*L36
```

There are 183 positive integer entries. The exact coefficient-box upper bound is

`-3048097021/250000000000`.

### Leaf TU.R1pmmmp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Y OCQ ZQ -1
via Y OCP PQ 1
via X OCY PQ 1
imp OFQ 1 cluster
via Z OHQ OF 1
via Y OCF FQ 1
via X OCF FQ 1
```

```c1ti-factors
B0 topy P 0 -
B1 topx P 0 -
B2 drop p OHP 2 ZQ
B3 drop q OCP 2 YX
B4 drop l OHQ 1 Z
B5 drop m OCQ 2 YX
B6 triangle OHD 2 ZQ
B7 triangle OHF 2 ZQ
B8 triangle OCQ 2 YX
B9 quad OCQH 3 YZX
B10 quad OCPQ 2 YX
```

```c1ti-sum
2 B10*L1; 73 B7*B0; 274 B7*B3; 309 B7*B4
174 B7*L1; 136 B8*B1; 309 B8*B2; 45 B8*B3
17 B8*L3; 10 B8*L4; 19 B9*B0; 16 B9*L29
54 B9*L5; 36 L1*B0; 136 L1*B1*B2; 23 L1*B1*B5
78 L1*L1*L20; 88 L1*L1*L6; 20 L1*L21*B0; 304 L1*L21*B4
37 L1*L21*L29; 201 L1*L25*B1; 32 L1*L25*B2; 31 L1*L25*B3
272 L1*L3*B1; 37 L1*L3*B2; 15 L1*L3*L20; 238 L1*L3*L25
5 L1*L3*L5; 28 L1*L31*B5; 93 L1*L6*B0; 170 L1*L6*B3
336 L1*L6*B4; 30 L1*L7*B5; 114 L2*B0*B0; 138 L2*B0*B4
224 L2*L2*B0; 171 L2*L21*B0; 35 L2*L5*L21; 136 L21*L23*L31
37 L29*B0*B4; 445 L3*B1*B5; 398 L3*L20*B5; 36 L3*L23*B1
222 L3*L23*B4; 30 L3*L23*B5; 25 L3*L3*L23; 18 L3*L3*L4
63 L3*L30*B5; 102 L4*B1*B5; 72 L5*B0*B4; 94 L5*L21*B0
20 L5*L5*L21; 537 L7*L23*B4; 62 TmDFP; 20 TmDFP*L23
537 TmDFP*L24; 102 TmDFP*L26; 72 TmHDQ*B0; 537 TmHDQ*B1
398 TmHDQ*B2; 14 TmHDQ*B6; 222 TmHDQ*L3; 24 TmHDQ*L36
136 TmHFP*L21; 20 TmHFP*L22; 102 TmHFP*L27; 36 TmHFP*L3
20 TmHFP*L30; 82 TmHFP*L36; 18 TmHFQ*L1; 114 TpCDP*B0
100 TpCDP*L2; 398 TpCDP*L24; 15 TpCDP*L29; 91 TpCDP*L37
74 TpCPQ*L1; 309 TpHCQ*B1; 89 TpHCQ*B2; 94 TpHCQ*L23
15 TpHDP*L1
```

There are 81 positive integer entries. The exact coefficient-box upper bound is

`-139839497/13000000000`.

### Leaf TU.R1pmmpm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Q CDF OF -1
via Y OCP OQ -1
via X OCY OQ -1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OCQ ZQ -1
via Y OCP PQ 1
via X OCY PQ 1
```

```c1ti-factors
B0 ear CDF1_fmax
B1 drop m OCQ 2 YX
B2 ear HDF1_dmax
B3 triangle OHC 3 YZX
B4 triangle OCQ 2 YX
B5 triangle HDF 1 Q
B6 drop l OHQ 1 Z
B7 triangle CDF 1 Q
B8 quad OCDQ 2 YX
```

```c1ti-sum
20 B2*B0*B0; 1 B2*B2*B0; 5 B3*L25; 8 B3*L5
15 B3*L7; 11 B4*L6; 2 B5*B1; 29 B5*B6
8 B5*L31; 17 B5*L4; 57 B7*B1; 8 B7*L0
5 B8*L3; 6 L0*B0; 23 L0*L25*B0; 13 L0*L4*L25
8 L0*L7*B0; 11 L25*B2*B0; 5 L3*L3*L4; 13 L3*L36*B1
9 L3*L6*B1; 11 L6*L6*B1; 15 TmCFQ; 13 TmCFQ*L30
44 TmCFQ*L5; 1 TmCFQ*L7; 78 TpDFQ; 11 TpDFQ*L36
2 TpDFQ*L4; 12 TpDFQ*L7; 5 TpHDQ*L31; 2 TpHDQ*L4
47 TpHDQ*L7
```

There are 33 positive integer entries. The exact coefficient-box upper bound is

`-6408539/500000000`.

### Leaf TU.R1pmmppm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Y OCQ ZQ -1
via Q OHP YX -1
via Y OCP PQ 1
via X OCY PQ 1
imp OFQ 1 cluster
via Z OHQ OF 1
via Y CXP FX 1
via Y OCF FQ 1
via X OCF FQ 1
```

```c1ti-factors
B0 drop p OHP 2 ZQ
B1 topx P 0 -
B2 triangle OHD 1 Z
B3 drop q OCP 2 YX
B4 ear HDF1_dmax
B5 triangle OHF 2 ZQ
B6 triangle OCY 1 X
B7 triangle OCP 2 YX
B8 triangle HCX 1 Y
B9 spread OCFH YQ OF 1 1457/250
B10 quad OCQH 3 YZX
B11 quad OPFH 2 ZQ
B12 quad OCDP 2 YX
B13 quad CDPX 1 Y
B14 quad CPFX 1 Y
```

```c1ti-sum
2 B10*B1; 34 B11*L33; 16 B12*L1; 5 B13*L10
4 B14*L10; 35 B5*B3; 15 B5*L22; 4 B5*L33
6 B5*L4; 37 B6*L17; 7 B7*L1; 4 B8*L10
7 B9*L1; 5 ED*B1; 21 ED*L3; 1 L0*L4*B1
5 L1*L21; 7 L1*L21*L36; 26 L1*L6*L22; 10 L1*L6*L33
4 L1*L9; 18 L1*L9*L22; 7 L1*L9*L36; 71 L10*L17
5 L11*L16; 48 L11*L16*L22; 7 L11*L28; 2 L18*L21*L36
22 L21*B4*B4; 12 L3*L11*L22; 13 L3*L4; 17 L3*L4*L5
21 L33*B0; 2 L33*L36*B0; 2 L33*L37*B0; 10 L4*B1*B2
5 L4*L4*B0; 17 L4*L4*B1; 4 L9*L16*B3; 4 TmCFP*L4
20 TmDFP*L25; 1 TmDFP*L29; 9 TmDFP*L36; 17 TmDFP*L4
20 TmFPQ; 38 TmFYX*L23; 3 TmFYX*L29; 8 TmHCY
1 TmHCY*L16; 25 TmHCY*L22; 4 TmHCY*L28; 21 TmHCY*L36
4 TmHFP*L19; 20 TmHFP*L24; 13 TmHFP*L36; 4 TmOFY*L18
8 TmOYX*L20; 91 TmOYX*L22; 35 TmOYX*L37; 67 TmYXP
21 TpCDF*L23; 19 TpCDP; 5 TpCDP*L11; 17 TpCDP*L30
2 TpCDQ*B1; 16 TpCFY*L1; 2 TpHDQ; 18 TpHDQ*B1
7 TpOFQ*L1; 8 TpOYP*L16; 5 TpOYP*L18
```

There are 71 positive integer entries. The exact coefficient-box upper bound is

`-513259138129/45500000000000`.

### Leaf TU.R1pmmpppm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Y OCQ ZQ -1
via Y OCP PQ 1
via X OCY PQ 1
imp OFQ 1 cluster
via Z OHQ OF 1
via Y HXP DX -1
via Y OCF FQ 1
via X OCF FQ 1
```

```c1ti-factors
B0 topx P 0 -
B1 drop q OCP 2 YX
B2 drop l OHQ 1 Z
B3 topy P 0 -
B4 ear HDF1_dmax
B5 drop p OHP 2 ZQ
B6 drop m OCQ 2 YX
B7 triangle OHD 1 Z
B8 triangle OCF 2 YX
B9 triangle OHF 2 ZQ
B10 triangle OCY 1 X
B11 triangle OCP 2 YX
B12 triangle OXP 1 Y
B13 quad HDPF 1 Q
B14 quad HYPF 1 Q
```

```c1ti-sum
29 B10*L1; 34 B11*L1; 37 B12*B6; 185 B12*L11
44 B13*L21; 16 B14*L18; 6 B9*B0; 33 B9*B2
213 B9*L1; 44 B9*L4; 35 L0*B0*B0; 129 L0*L21*L33
20 L0*L34*B0; 206 L1*L1*L20; 5 L1*L1*L6; 4 L1*L10*B0
102 L1*L10*L25; 29 L1*L11*B2; 92 L1*L11*L21; 54 L1*L16*B2
22 L1*L16*L21; 188 L1*L17*B0; 171 L1*L17*L20; 3 L1*L17*L25
5 L1*L18; 158 L1*L2*L20; 14 L1*L2*L3; 27 L1*L2*L35
13 L1*L20*B2; 43 L1*L21; 27 L1*L21*L34; 10 L1*L25*B1
154 L1*L25*L33; 207 L1*L29*B0; 32 L1*L4*L6; 4 L1*L6*B0
59 L1*L6*L31; 8 L1*L7*B1; 8 L1*L9; 88 L1*L9*L24
20 L10*L17*B1; 33 L10*L21*L21; 1 L14*L21*B4; 10 L15*L22*B2
147 L15*L35*B2; 153 L16*L23*B0; 37 L16*L23*B6; 42 L17*L21*L27
61 L17*L23*B2; 57 L18*B5*B5; 90 L18*L20*B5; 18 L18*L25*B5
37 L18*L26*B0; 148 L2*L21*B3; 30 L2*L21*B4; 18 L2*L21*L27
10 L2*L33*B3; 19 L21*B4*B4; 91 L21*L21*B4; 15 L21*L27*L31
9 L21*L30*L33; 10 L21*L31*B4; 16 L21*L35*B1; 16 L23*L34*B0
155 L3*L11*B5; 67 L3*L15*B2; 246 L3*L18*L20; 148 L3*L23*B0
52 L3*L23*L23; 27 L3*L23*L34; 20 L3*L3*L11; 16 L3*L3*L23
15 L3*L3*L4; 209 L3*L33*B2; 19 L3*L4*B5; 55 L3*L4*L11
176 L3*L4*L20; 52 L3*L4*L23; 83 L3*L4*L24; 34 L4*B0*B2
47 L4*B5*B5; 9 L4*L10*B2; 87 L4*L11*B5; 4 L4*L15*B2
52 L4*L23*B0; 10 L4*L23*B2; 2 L4*L35*B2; 63 L4*L4*B0
19 L4*L4*B5; 29 L4*L9*L23; 35 L7*L16*L23; 9 L7*L21*L23
92 L7*L7*L23; 6 L8*L15*L23; 139 TmCYQ*L12; 9 TmDFP*L29
63 TmDFP*L4; 39 TmFPQ; 45 TmHCY; 3 TmHCY*B3
51 TmHCY*L14; 184 TmHCY*L20; 30 TmHCY*L22; 19 TmHCY*L25
27 TmHCY*L3; 36 TmHFP; 35 TmHFP*B0; 172 TmHFP*L16
16 TmHFP*L28; 148 TmHFP*L3; 17 TmHFP*L34; 9 TmHFP*L5
57 TmHFP*L7; 15 TmHFQ*L21; 195 TmHPQ*L17; 33 TmHPQ*L2
154 TmHPQ*L33; 153 TmHPQ*L35; 133 TmHYX*B2; 307 TmOYX*B6
99 TmOYX*L23; 10 TmOZQ*B1; 55 TmOZQ*B8; 128 TmOZQ*L10
124 TmOZQ*L37; 1 TmOZQ*L4; 139 TmOZQ*L9; 122 TmYXQ
153 TmYXQ*L20; 307 TmYXQ*L22; 5 TpCDF*B2; 194 TpCDP
49 TpCDP*L11; 52 TpCDP*L23; 34 TpCDP*L24; 16 TpCDP*L3
9 TpCDP*L7; 97 TpCDY*B2; 10 TpCFY*L1; 5 TpCYZ*B7
282 TpCYZ*L24; 42 TpCYZ*L36; 23 TpHDQ; 12 TpHDQ*L10
10 TpHDQ*L23; 39 TpHDQ*L31; 15 TpHDQ*L37; 92 TpHDQ*L9
10 TpOCX*B3; 246 TpOCX*B5; 2 TpOCX*B6; 209 TpOCX*L25
37 TpOFQ*L18; 153 TpOPQ*L18; 87 TpOYP*B5; 7 TpOYP*L15
169 TpOYP*L18; 98 TpOYP*L20; 20 TpOYP*L25; 27 TpOYP*L3
29 TpOYP*L30; 3 TpOYP*L36; 1 TpOYP*L6; 153 TpYXP*L20
133 TpYXP*L24; 307 TpYXP*L26
```

There are 166 positive integer entries. The exact coefficient-box upper bound is

`-877450769/31250000000`.

### Leaf TU.R1pmmpppp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Y OCQ ZQ -1
via Y OCP PQ 1
via X OCY PQ 1
imp OFQ 1 cluster
via Z OHQ OF 1
via Y HXP DX -1
via Y OCF FQ 1
via X OCF FQ 1
via Y OXQ FX -1
```

```c1ti-factors
B0 drop q OCP 2 YX
B1 ear HDF1_dmax
B2 drop m OCQ 2 YX
B3 drop l OHQ 1 Z
B4 topy P 0 -
B5 topx P 0 -
B6 drop p OHP 2 ZQ
B7 triangle OCP 2 YX
B8 triangle OCQ 2 YX
B9 triangle HCX 1 Y
B10 triangle HXQ 1 Y
B11 spread OCPH XQ OP 1 1457/250
B12 quad OCQH 3 YZX
B13 quad OXFQ 1 Y
B14 quad HYCP 1 Q
```

```c1ti-sum
75 B10*L11; 5 B11*L1; 7 B12*B5; 9 B13*L10
19 B14*L18; 16 B7*L1; 22 B8*L17; 17 B9*B0
22 B9*B2; 18 B9*L11; 3 B9*L25; 5 L0*L3*B2
1 L0*L7*L26; 6 L1*B0; 7 L1*L17; 13 L1*L17*L22
32 L1*L17*L24; 11 L1*L17*L26; 5 L1*L25*B0; 6 L1*L27
7 L1*L35*B3; 1 L1*L9*B0; 27 L11*L17*L24; 65 L17*B0*B3
2 L21*B1; 2 L21*L24*B1; 18 L21*L26*B1; 5 L21*L30*L37
1 L21*L35*B4; 20 L21*L36*B1; 6 L23*L31*B3; 2 L23*L31*L34
9 L25*L29*L33; 20 L26*L31*L35; 5 L27*L31*L33; 1 L3*L11*B3
5 L3*L21*B2; 18 L3*L23*B2; 1 L3*L4*L11; 5 L3*L4*L20
6 L3*L4*L24; 18 L3*L4*L26; 19 L3*L4*L36; 2 L31*L33*L36
197 L36*B5*B2; 2 L5*L21*L34; 1 L7*L21*L26; 7 L7*L7*L26
28 L9*L18*L24; 13 L9*L18*L36; 5 TmCFP*L10; 6 TmCXQ*L1
4 TmDYQ*L21; 145 TmFPQ; 7 TmFPQ*L34; 5 TmFXQ*L10
2 TmFYQ*L1; 1 TmHCY*L21; 24 TmHCY*L22; 17 TmHCY*L24
202 TmHFP*B2; 20 TmHFP*B3; 13 TmHFQ*L21; 22 TmHPQ*L10
50 TmHPQ*L16; 11 TmHPQ*L2; 15 TmHPQ*L28; 14 TmHPQ*L6
68 TmHPQ*L9; 40 TmHYX*B6; 23 TmHYX*L20; 30 TmHYX*L25
134 TmHYX*L26; 2 TmOFY*L21; 65 TmOYX*L27; 21 TmOYX*L29
6 TpCDP; 6 TpCDP*L24; 18 TpCDP*L26; 20 TpCDP*L36
15 TpCPQ*L33; 11 TpFYX*L27; 80 TpHYQ*L18; 202 TpOFQ*B0
7 TpOFQ*L31; 6 TpOFQ*L33; 14 TpOFQ*L35; 11 TpOYP
61 TpOYP*L24; 23 TpOYP*L36; 1 TpOYP*L37; 3 TpOYP*L6
16 TpYXQ; 65 TpYXQ*L20; 137 TpYXQ*L36; 22 TpYXQ*L37
```

There are 96 positive integer entries. The exact coefficient-box upper bound is

`-43812128659/1000000000000`.

### Leaf TU.R1pmpm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OCQ DQ 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Z OHY YQ 1
via Y OCP PQ 1
via Z OCQ PQ 1
via X OCY PQ 1
mesh OCQYXZ -1
```

```c1ti-factors
B0 drop m OCQ 3 YZX
B1 drop p OHP 2 ZQ
B2 drop q OCP 2 YX
B3 topy P 0 -
B4 topx P 0 -
B5 quad OCQH 3 YZX
B6 quad OCDQ 3 YZX
B7 quad HYCD 1 Q
B8 mesh OCQYXZ -1 2
```

```c1ti-sum
51 B1*B0; 1 B5*B3; 5 B5*L5; 54 B6*L1
25 B7*B0; 22 B7*L1; 53 B8*L22; 43 B8*L36
82 B8*L4; 5 L0*L1*L24; 40 L1*L21*L21; 63 L1*L25*B2
32 L1*L3*L23; 18 L1*L31*B2; 27 L1*L4*L6; 52 L1*L6
27 L1*L6*L27; 40 L1*L6*L7; 62 L1*L9; 41 L1*L9*L36
8 L2*B3*B3; 1 L21*L23*L30; 38 L3*B0; 6 L3*L10
8 L3*L23*L23; 13 L3*L30*B0; 35 L3*L36*B0; 117 L3*L4
13 L3*L4*B3; 30 L3*L4*L22; 41 L3*L4*L30; 3 L5*L21*L23
28 L5*L21*L30; 34 L5*L5*L21; 15 L5*L5*L24; 12 L6*B2*B0
46 L6*L21*B3; 46 L6*L6*B3; 24 L7*B4*B0; 6 L7*L23*B4
2 L7*L23*L23; 24 L7*L23*L24; 58 L7*L7*L23; 71 L9*B0
57 L9*L36*B0; 20 TmDFP; 3 TmDFP*L23; 73 TmDFP*L24
31 TmDFP*L36; 46 TmDFP*L6; 41 TmHCY*B0; 53 TmHCY*B2
9 TmHCY*L1; 41 TmHCY*L25; 83 TmHCY*L4; 92 TmHDQ
73 TmHDQ*B4; 15 TmHDQ*L30; 38 TmHDQ*L36; 9 TmHFP
1 TmHFP*B3; 40 TmHFP*L21; 49 TmHFP*L25; 2 TmHFP*L5
64 TmHFP*L7; 24 TmHFQ*L21; 12 TmHFQ*L22; 27 TmHFQ*L36
24 TmHFQ*L6; 11 TmOHF*L1; 17 TpCDP; 1 TpCDP*L23
62 TpCDP*L5; 14 TpHCF*L1; 63 TpHCQ*L10; 6 TpHCQ*L30
28 TpHCQ*L5; 41 TpHCQ*L9; 31 TpHYQ; 53 TpHYQ*L23
83 TpHYQ*L30; 41 TpHYQ*L37
```

There are 82 positive integer entries. The exact coefficient-box upper bound is

`-79815352823/3640000000000`.

### Leaf TU.R1pmpp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Q OHP OD 1
via Y OCP OQ -1
via X OCY OQ -1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Z OHY YQ 1
via Y OCP PQ 1
via Z OCQ PQ 1
via X OCY PQ 1
mesh OCQYXZ -1
```

```c1ti-factors
B0 drop m OCQ 3 YZX
B1 drop q OCP 2 YX
B2 topx P 0 -
B3 topy P 0 -
B4 drop p OHP 2 ZQ
B5 ear HDF1_dmax
B6 triangle OHD 1 Z
B7 triangle OHP 2 ZQ
B8 triangle OPQ 1 Z
B9 quad OCDQ 3 YZX
B10 quad OCYZ 1 X
B11 quad HDPF 1 Q
B12 mesh OCQYXZ -1 2
```

```c1ti-sum
5 B10*L21; 5 B10*L9; 31 B11*B0; 262 B11*L1
34 B12*B1; 44 B12*B2; 211 B12*B3; 36 B12*B4
130 B12*L22; 40 B7*B0; 135 B8*L1; 42 B8*L13
71 B9*B4; 123 L0*L1*L21; 70 L0*L23*L31; 68 L0*L24*B2
79 L0*L3*B1; 4 L1*L1*L6; 7 L1*L13*L23; 5 L1*L21*B1
6 L1*L21*B3; 14 L1*L21*L21; 35 L1*L31*B0; 142 L1*L4*L6
61 L1*L6*B2; 24 L1*L6*L20; 15 L1*L6*L22; 19 L1*L6*L24
39 L1*L6*L31; 5 L1*L7*L9; 12 L1*L9; 30 L1*L9*B3
30 L1*L9*L22; 51 L1*L9*L24; 13 L1*L9*L26; 35 L10*B4*B0
42 L10*L21*L27; 44 L10*L24*B2; 48 L10*L24*B3; 128 L21*B5*B5
19 L21*L21*B5; 15 L21*L23*L31; 6 L22*B4*B0; 82 L23*L24*L35
6 L23*L26*B2; 11 L23*L36*B2; 4 L3*B0; 11 L3*L10*L27
19 L3*L10*L36; 75 L3*L11*B0; 5 L3*L13*L22; 44 L3*L21*B1
69 L3*L21*B3; 50 L3*L36*B0; 45 L3*L36*B2; 75 L3*L4*B3
129 L3*L4*L20; 32 L3*L4*L22; 32 L3*L4*L30; 89 L30*B4*B0
202 L36*B4*B0; 147 L4*B4*B4; 90 L4*L24*B4; 21 L4*L4*B4
62 L5*L9*B0; 13 L7*L10*L23; 7 L7*L10*L27; 88 L7*L23*L24
35 L7*L23*L29; 101 L7*L7*L23; 13 L7*L9*B0; 147 L9*B3*B0
6 M1*L1; 5 M1*L34; 68 TmDYP*L1; 73 TmDYQ*L1
60 TmFPQ*B6; 15 TmFPQ*L36; 43 TmHCY*B0; 184 TmHCY*B1
41 TmHCY*B2; 172 TmHCY*B3; 3 TmHCY*L13; 2 TmHCY*L14
41 TmHCY*L20; 44 TmHCY*L26; 192 TmHFP*L0; 13 TmHFP*L10
15 TmHFP*L21; 119 TmHFP*L24; 36 TmHFP*L29; 28 TmHFP*L36
100 TmHFP*L7; 6 TmHFQ*L10; 31 TmHFQ*L21; 25 TmHFQ*L23
29 TmHFQ*L9; 313 TmHPQ; 120 TmHPQ*L30; 82 TmHPQ*L35
31 TmHPQ*L6; 5 TmHYZ*L3; 4 TmOZP; 43 TmOZP*L24
6 TmOZP*L37; 7 TpCDF*L10; 12 TpCDP*L10; 127 TpCDP*L20
107 TpCDP*L30; 97 TpCDP*L36; 20 TpCFY*L1; 5 TpCYZ*L20
5 TpCYZ*L34; 4 TpCYZ*L36; 142 TpDFQ*L1; 1 TpHDQ
159 TpHDQ*L10; 19 TpHDQ*L20; 120 TpHDQ*L23; 120 TpHDQ*L36
70 TpHDQ*L4; 228 TpHYQ*L23; 7 TpHZQ*L23; 4 TpOZQ*B1
45 TpOZQ*L20; 1 TpOZQ*L22
```

There are 126 positive integer entries. The exact coefficient-box upper bound is

`-3516713458499/182000000000000`.

### Leaf TU.R1pp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
mesh OCPYXZ -1
via Q OHP OD 1
via Z OCP OF -1
via Y OCP OQ -1
via Z OCP OQ -1
via X OCY OQ -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OCQ DQ 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Z OHY YQ 1
via Q OHP YX -1
via Y OCP PQ 1
via Z OCP PQ 1
via X OCY PQ 1
mesh OCQYXZ -1
via Y CXP FX 1
```

```c1ti-factors
B0 topx P 0 -
B1 drop q OCP 3 YZX
B2 triangle OYP 1 Z
B3 triangle HYP 1 Q
B4 quad OCYZ 1 X
B5 quad OYPF 1 Z
B6 quad HZCF 1 Y
B7 quad HCPF 1 Q
B8 quad HYPF 1 Q
B9 quad HZPF 1 Q
B10 triangle OHD 1 Z
B11 mesh OCPYXZ -1 1
B12 mesh OCPYXZ -1 2
```

```c1ti-sum
8 B11*L9; 1 B12; 6 B12*L15; 10 B12*L37
4 B2*L13; 3 B3*L14; 4 B4; 10 B4*L20
1 B4*L36; 6 B5*L23; 1 B6*L1; 2 B7*L9
6 B8*B1; 3 B8*L0; 3 B8*L14; 5 B9*B10
6 B9*L0; 2 B9*L35; 4 EF*L1; 3 L0*B0
9 L0*L31*B0; 2 L1*L6; 2 L10*B0; 2 L12*L23*L35
2 L13*L21; 1 L14*L36*B0; 1 L3*B0; 1 L3*L22*L36
1 L7*L14*L29; 7 L7*L23*L31; 1 M1; 10 M1*L1
1 M1*L22; 5 M1*L34; 2 TmCFP*L6; 7 TmHCY
8 TmHCY*L37; 15 TmHFP; 9 TmHFP*L31; 1 TmHFP*L36
10 TmHFZ*B1; 10 TmOFZ*L23; 2 TpCFY*L1; 12 TpHCF*L1
10 TpOZP
```

There are 45 positive integer entries. The exact coefficient-box upper bound is

`-6496392701/200000000000`.

### Leaf TU.R2

```c1ti-geometry
via Q OHP OD 1
via F DPQ OQ -1
via Y OCF OQ -1
via X OCF OQ -1
via F DPQ CQ -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OCF FQ 1
via F CPQ ZX 1
via Z OHC FP -1
via X OHC FP -1
via X OCF FQ 1
via Z OHY YQ 1
via Y OCF PQ 1
via X OCF PQ 1
via P HFQ OY 1
via X OCY OP -1
via Z OHY YP 1
```

```c1ti-factors

```

```c1ti-sum
1 TmOFP*L27; 1 TpFPQ; 1 TpOFQ*L23
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf TU.R3

```c1ti-geometry
via Q OCP OF -1
via D FPQ HQ 1
via D HPQ ZX 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
via Z OHD PQ -1
via D HPQ OQ 1
via Z OHD OQ 1
via D HPQ ZQ 1
via Z OHQ FQ -1
via P CDQ OZ -1
```

```c1ti-factors

```

```c1ti-sum
1 TmDPQ; 1 TmHDQ*L21; 1 TpHDP*L25
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf TU.R4mm

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
mesh OHPYZX 1
via Y OHP OD 1
via X OHP OD 1
via Q OCP OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via X OHP OQ 1
via X OCY DY 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
via X OHQ FQ -1
via Q OCP YZ 1
via Y HZQ XQ 1
via Y OHP PQ -1
via Z OHY PQ -1
via X OHP PQ -1
mesh OHQYZX 1
via Y HZP DZ -1
```

```c1ti-factors
B0 triangle OYP 1 X
B1 spread OCPY XQ OP -1 1457/250
B2 quad ODPY 1 X
B3 quad OQPY 1 X
B4 quad CDPY 1 Q
B5 mesh OHPYZX 1 2
```

```c1ti-sum
2 B0*L23; 3 B0*L37; 1 B1; 2 B1*L36
3 B2*L21; 1 B3; 2 B3*L36; 3 B4*L20
1 B5; 2 B5*L22; 2 L3*L4*L20; 1 M3*L21
1 TmHCY*L23; 1 TmOXP; 2 TmOXP*L36; 1 TpHCP*L34
```

There are 16 positive integer entries. The exact coefficient-box upper bound is

`-2350491121/40000000000`.

### Leaf TU.R4mp

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
via Y OHP OD 1
via Q OCP OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via X OCY DY 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
via X OCY YQ -1
via Y OHP PQ -1
via Z OHY PQ -1
```

```c1ti-factors
B0 topy P 0 -
B1 triangle OCP 2 XQ
B2 drop p OHP 2 YZ
B3 spread OCPH ZQ OP -1 1457/250
B4 spread OCPH ZQ OP 1 1457/250
```

```c1ti-sum
34 B1*B2; 14 B1*L20; 34 B1*L29; 16 B1*L35
15 B1*L37; 17 B3*L34; 17 B4*L34; 2 L1*L11*L20
34 L1*L2; 4 L1*L20*L37; 14 L20*L34; 4 L21*B0
2 L21*L30*L35; 1 L21*L35; 48 L21*L37*B0; 16 L22*L34
10 L3*L4*L20; 16 L3*L4*L35; 20 L34; 14 L5*L21*L35
10 L5*L21*L37; 30 M3*L21; 4 TmHCY*L20; 34 TmHCY*L23
1 TmOHP*L34; 38 TmOYP; 34 TmOYP*L36; 34 TmOYP*L37
13 TpCDP; 16 TpCDP*L35; 48 TpCDP*L37; 48 TpOCD*L3
```

There are 32 positive integer entries. The exact coefficient-box upper bound is

`-6391643837/250000000000`.

### Leaf TU.R4pmmmmm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp ODQ -1 cluster
mesh OCPQXY -1
via X OCQ OD -1
via Y OHQ DQ -1
via Z OHD DX -1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Z OHY PQ -1
via Y OZQ DZ 1
via Y OXP DX -1
```

```c1ti-factors
B0 ear CDF1_fmax
B1 topx P 0 -
B2 drop l OHQ 2 YZ
B3 drop q OCP 3 YXQ
B4 drop m OCQ 1 X
B5 topy P 0 -
B6 drop p OHP 1 Z
B7 triangle OHQ 2 YZ
B8 triangle OCD 2 XQ
B9 triangle HCZ 1 Y
B10 triangle CDZ 2 YQ
B11 quad OCYZ 1 X
B12 spread OCQZ YX OQ -1 1457/250
B13 spread OCQZ YX CZ 1 1457/250
B14 quad OQDP 1 Y
B15 quad OXQZ 1 Y
B16 quad CDPF 1 Q
B17 quad CPFZ 2 YQ
B18 quad CQZX 1 Y
```

```c1ti-sum
3 B10*B5; 2 B10*L3; 37 B11*L23; 1 B12*L21
4 B13*B5; 39 B14*B2; 7 B14*B4; 12 B14*B6
39 B14*L14; 17 B14*L23; 8 B14*L30; 32 B14*L32
62 B14*L34; 5 B14*L6; 1 B15*L21; 133 B16*L23
4 B17*L3; 4 B18*B5; 15 B5*B2*B4; 46 B7*L15
112 B8*L3; 23 B9*B2; 50 L0*L0*B0; 79 L0*L23*L25
54 L0*L23*L31; 19 L0*L3*L22; 63 L0*L3*L24; 39 L0*L3*L27
50 L0*L34*L34; 56 L0*L35*B1; 64 L0*L35*B2; 4 L0*L5*L25
36 L0*L8*B1; 36 L0*L9*L30; 198 L1*L1*L6; 51 L1*L1*L9
12 L1*L11*B2; 193 L1*L12*B4; 20 L1*L12*L29; 7 L1*L12*L30
27 L1*L21*L21; 41 L1*L3*L32; 40 L1*L35*L35; 90 L1*L5*L21
93 L1*L6*B3; 66 L1*L6*B4; 56 L1*L6*L11; 112 L1*L6*L14
28 L1*L6*L21; 1 L1*L6*L6; 72 L1*L6*L9; 4 L1*L8*L23
20 L10*L21*B2; 109 L10*L21*B5; 8 L11*L12*L21; 227 L11*L12*L25
39 L12*B5*B4; 38 L12*L26*L34; 168 L14*L21*B4; 35 L14*L21*L30
8 L14*L21*L34; 129 L14*L23*L25; 4 L14*L23*L31; 1 L14*L23*L34
1 L14*L23*L35; 155 L14*L25*L34; 116 L14*L25*L35; 10 L15*L21*B2
12 L2*L21*B5; 29 L2*L23*L30; 57 L2*L23*L35; 35 L2*L30*L30
1 L2*L5*L21; 25 L21*L23*B0; 14 L21*L30*B4; 42 L23*B0*B4
63 L23*L23; 68 L23*L23*L31; 15 L23*L25*L27; 9 L23*L25*L32
2 L23*L29*B0; 14 L23*L30*L31; 4 L3*B0*B4; 15 L3*B4*B4
87 L3*L11*L25; 88 L3*L14*B3; 7 L3*L15*B1; 123 L3*L15*B4
139 L3*L15*L24; 5 L3*L15*L26; 36 L3*L15*L30; 46 L3*L15*L34
2 L3*L15*L36; 168 L3*L22*L34; 13 L3*L25*B4; 111 L3*L29*B5
115 L3*L3*L22; 19 L3*L32*B3; 10 L3*L32*B5; 153 L3*L34*B3
121 L3*L34*L34; 60 L3*L35*B4; 23 L3*L4*B5; 7 L3*L4*L34
1 L3*L6*L27; 113 L3*L9*L35; 64 L30*L35*B2; 3 L4*L12*B5
82 L5*L21*L23; 18 L5*L23*B2; 47 L5*L5*L21; 56 L5*L8*L23
84 L5*L9*L21; 27 L6*B3*B4; 4 L6*L11*L12; 2 L6*L21*B5
1 L6*L6*B3; 2 L6*L6*B5; 65 L7*L23*L23; 109 L8*L23*L23
12 L8*L23*L25; 40 L8*L9*L30; 7 L9*L30*L30; 125 L9*L30*L34
25 M3*L23; 61 TmCFQ*L12; 585 TmCYQ*L12; 20 TmDFP*L0
4 TmDFP*L15; 2 TmDFP*L6; 20 TmHCY*B1; 130 TmHCY*B2
146 TmHCY*B4; 41 TmHCY*B5; 75 TmHCY*B6; 119 TmHCY*L1
114 TmHCY*L11; 45 TmHCY*L15; 155 TmHCY*L9; 20 TmHDY*L3
134 TmHFP; 2 TmHFP*L12; 35 TmHFP*L15; 27 TmHFP*L21
69 TmHFP*L26; 20 TmHFP*L37; 14 TmHFP*L5; 1 TmHFP*L6
3 TmHFY*L12; 39 TmHFZ*B3; 4 TmHFZ*B5; 148 TmHFZ*L1
2 TmODQ*L3; 2 TmOHZ*B1; 11 TmOHZ*B5; 93 TmOHZ*L1
41 TmOHZ*L11; 12 TmOHZ*L22; 234 TmOHZ*L26; 1 TmOHZ*L34
3 TmOHZ*L7; 31 TmOYQ*B5; 65 TmOYQ*B6; 2 TmOYQ*L1
125 TmOYQ*L11; 6 TmOYQ*L13; 39 TmOYQ*L15; 260 TmOYQ*L20
26 TmOYQ*L25; 7 TmOYQ*L27; 370 TmOYQ*L9; 7 TmYZP*L3
6 TmYZQ*L21; 31 TmYZQ*L22; 31 TmYZQ*L30; 14 TmYZQ*L36
600 TmYZQ*L37; 532 TmYZQ*L9; 164 TpCDP*B4; 55 TpCDP*B5
157 TpCDQ*L23; 17 TpCDQ*L34; 13 TpCPQ*B2; 12 TpCPQ*B6
186 TpCPQ*L0; 168 TpCPQ*L14; 13 TpCPQ*L23; 15 TpCPQ*L27
40 TpCPQ*L32; 228 TpCPQ*L34; 157 TpCPQ*L4; 5 TpCPQ*L6
242 TpCPQ*L8; 2 TpCYZ*B1; 458 TpCYZ*B2; 35 TpCYZ*B5
36 TpCYZ*L22; 346 TpCYZ*L24; 39 TpCYZ*L27; 8 TpCYZ*L31
1 TpCYZ*L7; 533 TpCYZ*L9; 20 TpDPQ; 105 TpDPQ*L1
228 TpDPQ*L10; 32 TpDPQ*L12; 12 TpDPQ*L21; 13 TpDPQ*L22
13 TpDPQ*L25; 15 TpDPQ*L26; 5 TpDPQ*L31; 8 TpDPQ*L37
15 TpDPQ*L4; 204 TpDPQ*L9; 26 TpDYQ*B6; 86 TpDYQ*L0
26 TpDYQ*L25; 7 TpDYQ*L27; 7 TpDYQ*L30; 145 TpDYQ*L34
19 TpDYQ*L35; 9 TpDZQ*L3; 9 TpFYP*L3; 75 TpHYP*L3
13 TpHYQ*L3; 77 TpHZQ*L3; 285 TpOYP*B2; 5 TpOYP*L14
109 TpOYP*L23; 56 TpOYP*L30
```

There are 230 positive integer entries. The exact coefficient-box upper bound is

`-17067073572999/1000000000000000`.

### Leaf TU.R4pmmmmp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp ODQ -1 cluster
mesh OCPQXY -1
via X OCQ OD -1
via Y OHQ DQ -1
via Z OHD DX -1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Z OHY PQ -1
via Y OXP DX -1
```

```c1ti-factors
B0 ear CDF1_fmax
B1 drop m OCQ 1 X
B2 drop l OHQ 2 YZ
B3 triangle OHD 1 Z
B4 drop q OCP 3 YXQ
B5 topy P 0 -
B6 topx P 0 -
B7 triangle OHQ 2 YZ
B8 triangle OCD 2 XQ
B9 triangle OXP 1 Y
B10 triangle HCZ 1 Y
B11 triangle HZQ 1 Y
B12 triangle CFP 1 Q
B13 triangle CZP 2 YQ
B14 quad OXYH 1 Z
B15 quad OCPZ 3 YXQ
B16 quad OXPZ 1 Y
B17 quad OXQP 1 Y
B18 quad HZXC 1 Y
B19 quad HZCQ 1 Y
B20 quad CDPX 1 Q
B21 quad ZXQP 1 Y
B22 mesh OCPQXY -1 3
```

```c1ti-sum
22 B10*L34; 129 B11*L34; 28 B12*L23; 88 B13*B1
4 B13*L6; 12 B14*L12; 7 B15*L11; 40 B16*B2
19 B16*L11; 53 B17*L12; 141 B18*B1; 49 B19*L34
15 B20*B1; 28 B21*L11; 26 B22*L23; 62 B7*L3
54 B8*L6; 50 B9*L14; 52 L0*L21*B1; 27 L0*L22*L34
46 L0*L23*B0; 63 L0*L23*L25; 15 L0*L24*L34; 40 L0*L25*L35
22 L0*L3*L21; 11 L0*L3*L24; 8 L1*L14*L25; 9 L1*L16*B2
125 L1*L17*B1; 98 L1*L21*L21; 30 L1*L23*L35; 10 L1*L25*L34
44 L1*L32*B1; 3 L1*L6; 153 L1*L6*L21; 45 L1*L6*L22
49 L1*L6*L26; 3 L1*L6*L32; 5 L1*L6*L35; 7 L1*L6*L37
55 L1*L6*L6; 13 L11*B6*B2; 12 L11*L14*B6; 38 L11*L14*L20
6 L11*L17*L21; 13 L12*L23*L24; 6 L12*L35*B6; 78 L13*L18*L22
185 L13*L18*L24; 6 L13*L34*B6; 81 L14*B2*B3; 13 L14*B6*B2
27 L14*L36*B2; 47 L15*L20*L34; 12 L15*L31*L34; 41 L17*L17*B1
9 L17*L17*L17; 41 L17*L18*L24; 8 L17*L21*B1; 12 L17*L22*B1
40 L17*L23*L25; 4 L17*L23*L35; 9 L17*L32*B1; 12 L18*L21
5 L18*L24*L32; 114 L2*L32*B1; 30 L21*L23*B0; 15 L21*L30*B1
40 L21*L34; 4 L22*L34*B0; 28 L23*L23*L31; 123 L23*L25*L30
15 L23*L25*L35; 7 L23*L26*L34; 25 L23*L34*L37; 7 L23*L35*B1
9 L25*L34; 10 L3*L14; 26 L3*L14*L24; 83 L3*L14*L36
90 L3*L22*B1; 10 L3*L22*B3; 104 L3*L22*L36; 39 L3*L26
5 L3*L27*L32; 123 L3*L30*B4; 22 L3*L34*L36; 26 L3*L35*B4
19 L3*L4; 15 L3*L4*L26; 54 L3*L4*L6; 3 L3*L6*L22
5 L3*L7*L11; 20 L3*L9*B1; 12 L34*B0; 16 L6*B4*B2
22 L6*L11*L21; 17 L6*L13*B1; 9 L6*L14*B1; 3 L6*L14*L21
16 L6*L21*B1; 8 L6*L21*B4; 60 L6*L21*B5; 15 L6*L6*B1
56 L6*L6*B4; 60 L6*L6*B5; 12 L6*L9*B4; 5 L7*L12*L23
9 L9*L14*L16; 3 L9*L18*L22; 127 M4*B1; 8 M4*L23
8 TmCFQ*B3; 61 TmCFQ*L0; 18 TmCFQ*L13; 13 TmCFQ*L14
118 TmCFQ*L23; 13 TmCFQ*L32; 15 TmCFQ*L6; 60 TmDFP*L6
21 TmHCY*B4; 84 TmHCY*L13; 82 TmHCY*L14; 6 TmHCY*L21
31 TmHCY*L22; 153 TmHCY*L24; 25 TmHCY*L27; 6 TmHCY*L7
102 TmHFP; 98 TmHFP*L21; 118 TmHFP*L26; 5 TmHFP*L35
15 TmHFP*L37; 56 TmHFP*L6; 138 TmHYX*B1; 9 TmHYX*L25
79 TmOHQ*L3; 5 TmOHZ*B6; 8 TmOHZ*L23; 22 TmOHZ*L27
129 TmOYQ*L12; 15 TmOYX*L14; 41 TmOZP*L11; 18 TmYZP*L18
123 TpCDQ*L23; 185 TpCPQ*L0; 23 TpCPQ*L10; 90 TpCPQ*L15
27 TpCPQ*L33; 53 TpCPQ*L35; 16 TpCPQ*L6; 33 TpCYX*L23
1 TpCZX*L20; 88 TpCZX*L22; 178 TpCZX*L24; 15 TpCZX*L27
129 TpHYQ*L14; 9 TpHZQ*L18; 167 TpOXQ; 69 TpOXQ*L13
41 TpOXQ*L17; 8 TpOXQ*L21; 17 TpOXQ*L35; 5 TpOXQ*L36
36 TpOYP*L13; 51 TpOYP*L15; 5 TpOYP*L17; 38 TpOYP*L24
131 TpOYP*L26; 22 TpOYP*L6; 129 TpOYZ*B2; 31 TpOYZ*L1
68 TpOYZ*L3; 46 TpYXP*L14; 53 TpYZQ*L20; 90 TpYZQ*L22
9 TpYZQ*L28; 13 TpYZQ*L31; 246 TpYZQ*L36; 139 TpYZQ*L37
```

There are 180 positive integer entries. The exact coefficient-box upper bound is

`-10096920023/1000000000000`.

### Leaf TU.R4pmmmp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp ODQ -1 cluster
mesh OCPQXY -1
via X OCQ OD -1
via Y OHQ DQ -1
via Z OHD DX -1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHQ FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
via Q CXP FX 1
via Z OHY PQ -1
via Y OXP DX -1
```

```c1ti-factors
B0 drop p OHP 1 Z
B1 topx P 0 -
B2 drop l OHQ 2 YZ
B3 drop q OCP 3 YXQ
B4 topy P 0 -
B5 drop m OCQ 1 X
B6 triangle OHQ 2 YZ
B7 triangle OCD 2 XQ
B8 quad OCQH 3 YZX
B9 quad OCDP 3 YXQ
B10 mesh OCPQXY -1 2
```

```c1ti-sum
7 B10*L1; 155 B10*L6; 87 B6*B1; 12 B6*L22
1 B6*L31; 10 B6*L7; 12 B7*B0; 129 B7*B1
7 B8; 145 B8*B1; 4 B8*L20; 1 B8*L25
4 B9*L5; 59 B9*L6; 14 L0*L25*B1; 136 L0*L7*B1
71 L1*B1*B2; 5 L1*B3*B2; 9 L1*L3*L22; 2 L1*L3*L26
5 L1*L7*B2; 8 L2*L21*L21; 37 L2*L5*L21; 1 L21*L23*L31
6 L21*L29*B5; 154 L3*B0; 4 L3*L20*L20; 92 L3*L27*B1
10 L3*L4; 48 L3*L4*B1; 18 L3*L4*B4; 62 L3*L4*L20
9 L3*L4*L22; 12 L3*L4*L30; 12 L5*L21*L29; 31 L5*L5*L21
81 L7*B1*B5; 2 L7*L23*L25; 4 L7*L23*L29; 4 L7*L23*L30
4 L7*L7*B5; 136 L7*L7*L23; 52 TmDFP; 1 TmDFP*L21
4 TmDFP*L36; 81 TmDFP*L37; 70 TmHFP; 153 TmHFP*L24
4 TmHFP*L30; 136 TmHFP*L7; 17 TmOFP*L3; 1 TpCDP*B1
12 TpCDP*L30; 15 TpCDP*L5; 59 TpCDP*L7; 85 TpCFQ*B1
150 TpCFQ*L20; 1 TpHCQ*B2
```

There are 58 positive integer entries. The exact coefficient-box upper bound is

`-76755829/3500000000`.

### Leaf TU.R4pmmp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
mesh OCPQXY -1
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
via Z OHC FP -1
via Z OHY FQ -1
via X OHC FP -1
via Q CXP FX 1
via Z OHY PQ -1
via Y OHQ OD 1
via Y HXP DX -1
```

```c1ti-factors
B0 topx P 0 -
B1 drop l OHQ 2 YZ
B2 drop p OHP 1 Z
B3 ear HDF1_dmax
B4 drop m OCQ 1 X
B5 drop q OCP 3 YXQ
B6 triangle OHC 3 YZX
B7 triangle OHQ 2 YZ
B8 triangle ODP 2 YQ
B9 triangle OPQ 1 Y
B10 triangle HDF 1 Q
B11 quad OCDP 3 YXQ
B12 quad HCDF 1 Q
```

```c1ti-sum
107 B10*B1; 96 B11*L20; 1 B11*L29; 158 B11*L6
46 B12*B1; 53 B6*B0; 9 B6*L7; 30 B7
4 B7*B0; 23 B7*L20; 7 B7*L31; 44 B7*L4
160 B8*L21; 36 B8*L29; 15 B8*L31; 3 B9*L1
6 B9*L11; 19 B9*L21; 134 L0*B0; 64 L0*L21*B0
38 L0*L25*L31; 15 L0*L31*B0; 29 L0*L36*B0; 118 L0*L7*B0
31 L0*L7*L23; 16 L0*L7*L7; 28 L1*L22*B1; 10 L1*L3*L6
30 L1*L4*B1; 32 L1*L6*B1; 14 L1*L6*L6; 20 L21*B0*B4
1 L21*L23; 20 L21*L23*L24; 59 L21*L23*L31; 6 L21*L29*B3
28 L26*L29*B0; 14 L29*L31*B3; 8 L3*L23*L31; 33 L3*L30*B1
126 L3*L4*L20; 63 L3*L4*L6; 21 L4*B2*B1; 30 L4*L6*B0
9 L4*L6*B1; 37 L4*L6*B2; 11 L5*L7*L29; 3 L7*L29*L30
105 L7*L7*L23; 5 TmFPQ*B2; 30 TmFPQ*L6; 187 TmHFP
64 TmHFP*L21; 25 TmHFP*L24; 31 TmHFP*L26; 31 TmHFP*L30
70 TmHFP*L31; 65 TmHFP*L7; 6 TmOYQ*L22; 65 TpCDP*B0
10 TpCDP*L31; 71 TpCDQ; 21 TpCDQ*L20; 10 TpCDQ*L36
6 TpCPQ*B2; 4 TpCPQ*L6; 115 TpDFQ; 3 TpDFQ*L1
31 TpDFQ*L22; 30 TpDFQ*L31; 3 TpDFQ*L37; 21 TpHDQ*B5
10 TpHDQ*L22; 112 TpHDQ*L31; 61 TpHDQ*L7; 6 TpOYP*L26
```

There are 76 positive integer entries. The exact coefficient-box upper bound is

`-14134958757653/45500000000000`.

### Leaf TU.R4pmp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
mesh OCPQXY -1
```

```c1ti-exclude
mesh OCPYXZ -1
```

### Leaf TU.R4pp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
via Q OCP OF -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
```

```c1ti-exclude
cluster OCP Q OCQ YX
```

### Leaf TU.R5

```c1ti-geometry
via Q OCP OF -1
via F DPQ CQ -1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via F CPQ ZX 1
via Z OHC FP -1
via X OHC FP -1
```

```c1ti-factors

```

```c1ti-sum
1 TmCFP*L27; 1 TpCFQ*L23; 1 TpFPQ
```

There are 3 positive integer entries. The exact coefficient-box upper bound is

`-93/1000`.

### Leaf TU.R6m

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Y OHP OD 1
via Q CDP OF -1
via Y OHP OQ 1
via Z OHY OQ 1
via Q CDP CF -1
via X OCY DY 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y HXP XQ 1
```

```c1ti-factors
B0 topy P 0 -
B1 drop p OHP 2 YZ
B2 triangle OHP 2 YZ
B3 triangle CDP 1 Q
```

```c1ti-sum
1 B2*L4; 9 B3; 2 B3*L35; 4 B3*L36
7 L2*B0; 4 L2*L36*B0; 1 L22*L34; 4 L4*B1
4 L4*L4*B1; 2 L5*L21*L30; 1 L5*L5*L21; 1 M3*B0
1 M3*L21; 2 TmHDY*B1; 2 TmOHP*L34; 5 TmOYP
1 TmOYP*L36; 3 TmOYP*L4; 1 TpHCP*L34; 1 TpHDP*L4
```

There are 20 positive integer entries. The exact coefficient-box upper bound is

`-59732071633/1000000000000`.

### Leaf TU.R6pmmm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHQYZX 1
via Q CDP CF -1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1ti-factors
B0 ear CDF1_fmax
B1 topy P 0 -
B2 topx P 0 -
B3 drop p OHP 1 Z
B4 drop l OHQ 3 YZX
B5 drop q OCP 2 YX
B6 triangle OHQ 3 YZX
B7 triangle OPQ 2 YX
B8 triangle CDP 1 Q
B9 quad OCQH 3 YZX
B10 quad CDPF 1 Q
B11 mesh OHQYZX 1 2
```

```c1ti-sum
10 B1*B1*B0; 23 B10*B4; 10 B10*L23; 3 B11*L22
8 B11*L26; 13 B11*L31; 13 B11*L36; 46 B11*L7
26 B6*B2; 3 B7*B4; 4 B7*L11; 32 B7*L21
3 B7*L27; 14 B7*L3; 86 B7*L6; 1 B7*L9
9 B8*B1; 8 B8*L3; 24 B9*B2; 12 L0*L3*B0
58 L1*L21*L21; 40 L1*L6*L21; 3 L1*L6*L25; 15 L1*L6*L7
3 L11*L21*L27; 9 L2*B1*B1; 24 L2*L25*L30; 32 L2*L26*B1
29 L2*L26*L30; 17 L2*L5*B1; 33 L2*L5*L25; 17 L2*L5*L26
58 L21*L23*B0; 24 L23*B0*B0; 1 L23*L25*L35; 3 L24*L26*L34
4 L25*L26*L35; 6 L3*L20*L23; 13 L3*L23*B2; 12 L3*L23*B3
2 L3*L27*L27; 14 L3*L30*B0; 46 L3*L4*L20; 16 L3*L4*L23
7 L3*L4*L26; 21 L3*L4*L30; 29 L3*L4*L5; 36 L3*L4*L6
1 L34*L36*B3; 7 L4*B3*B4; 17 L4*L26*B3; 10 L4*L4*B2
4 L4*L6*B2; 8 L5*L25*B1; 23 L5*L25*L29; 2 L5*L25*L35
59 L5*L5*L25; 45 L6*L25*B1; 13 L6*L6*B5; 1 L7*L11*B4
13 M3*L1; 1 TmCFQ*L34; 19 TmCPQ; 32 TmCPQ*B2
3 TmCPQ*L26; 8 TmCPQ*L31; 18 TmCPQ*L4; 13 TmCYQ*L29
57 TmCYQ*L6; 69 TmDFP*L25; 2 TmDFP*L37; 20 TmDFP*L4
4 TmDFP*L6; 55 TmHCY*B0; 1 TmHCY*B2; 25 TmHCY*B4
18 TmHCY*L27; 13 TmHCY*L3; 2 TmHDY*L3; 43 TmHFP
58 TmHFP*L21; 47 TmHFP*L24; 15 TmHFP*L31; 11 TmHFP*L37
92 TpCDQ; 29 TpCDQ*B1; 53 TpCDQ*L20; 3 TpCDQ*L24
23 TpCDQ*L30; 24 TpCDQ*L31; 2 TpCDQ*L35; 16 TpCDQ*L5
72 TpDFQ*L3; 1 TpDPQ*B1; 3 TpDPQ*B4; 10 TpDPQ*L3
13 TpHCD*L3; 27 TpHCQ*L34; 23 TpHDP*L2; 3 TpHDP*L25
3 TpOYP*L1
```

There are 101 positive integer entries. The exact coefficient-box upper bound is

`-9969827259/500000000000`.

### Leaf TU.R6pmmpm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp ODQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCQ OD -1
via Q CDP CF -1
via Y OHQ DQ -1
via Z OHD DX -1
via Z OHC DP 1
via Z OHD DQ -1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1ti-factors
B0 topx P 0 -
B1 drop p OHP 1 Z
B2 topy P 0 -
B3 ear CDF1_fmax
B4 drop q OCP 2 YX
B5 drop m OCQ 1 X
B6 drop l OHQ 2 YZ
B7 triangle OCD 2 XQ
B8 triangle HCZ 1 Y
B9 triangle CDP 1 Q
```

```c1ti-sum
3506 B7*L0; 3185 B7*L3; 459 B7*L6; 93 B8*L34
147 B9*L21; 283 B9*L23; 1058 B9*L27; 161 B9*L29
2369 B9*L30; 186 B9*L34; 170 B9*L35; 745 B9*L5
147 B9*L6; 757 L0*B0*B3; 229 L0*B0*B5; 10845 L0*L0*B0
2436 L0*L0*B1; 193 L0*L1*B2; 791 L0*L1*L12; 135 L0*L11*L12
232 L0*L12*B2; 24 L0*L12*B3; 3454 L0*L12*B4; 315 L0*L15*B0
831 L0*L21*B0; 247 L0*L23*B0; 7950 L0*L23*B3; 15 L0*L25*B0
218 L0*L25*L34; 2663 L0*L3*B0; 333 L0*L3*B1; 24 L0*L3*L14
207 L0*L3*L25; 49 L0*L3*L34; 1613 L0*L3*L4; 82 L0*L34*B0
10 L0*L34*L35; 3198 L0*L4*B0; 2831 L0*L6*B2; 349 L0*L8*L25
2411 L1*L12*L23; 28 L1*L15*L34; 356 L1*L21*L29; 791 L1*L3*L30
818 L11*L12*L23; 66 L11*L12*L29; 19 L11*L12*L35; 24 L11*L14*B2
12 L11*L25*L34; 12 L11*L34*B5; 35 L12*L23*L23; 30 L12*L23*L27
9 L12*L34*L35; 10 L13*L34*L34; 35 L14*L21*B2; 397 L14*L23*L34
397 L14*L23*L35; 31 L14*L25*B2; 28 L14*L29*L35; 5 L14*L35*L35
1 L15*L23*B6; 24 L15*L34*B2; 12 L15*L34*L34; 2023 L2*L30*B2
407 L21*L23*L30; 171 L21*L25*L34; 2796 L21*L30*L30; 757 L23*B0*B3
154 L23*B0*B5; 111 L23*L23*B3; 154 L23*L23*B6; 147 L23*L29*B0
79 L23*L30*B6; 63 L23*L31*L34; 40 L23*L34; 36 L25*L30*L34
170 L25*L35*B1; 12 L27*L34*L34; 194 L29*L29*B2; 2 L29*L34*B5
10 L29*L34*L34; 53 L3*B2*B6; 27 L3*L14*L27; 72 L3*L15*L23
15 L3*L15*L34; 2354 L3*L23*B3; 83 L3*L23*B5; 437 L3*L23*L23
166 L3*L23*L25; 51 L3*L23*L35; 36 L3*L27*L34; 28 L3*L29*B5
247 L3*L3; 182 L3*L3*L22; 69 L3*L3*L27; 5 L3*L3*L35
3099 L3*L3*L4; 4 L3*L30*B5; 1 L3*L30*L35; 13 L3*L34*L35
46 L3*L4*L14; 1160 L3*L4*L30; 51 L3*L4*L34; 812 L3*L5*L23
91 L30*L34*B0; 4 L34*L34*L37; 12 L4*L34*L34; 318 L4*L6*B2
12 L5*L11*L34; 56 L5*L12*L23; 16 L5*L21*L34; 77 L6*B2*B5
226 L6*L14*B2; 5495 L6*L14*B4; 59 L6*L14*B5; 1441 L6*L21*B2
136 L6*L25*B2; 94 L6*L29*B2; 13 L6*L29*B5; 1441 L6*L6*B2
75 L6*L9*L14; 23 L7*L23*L34; 108 L8*L14*L29; 341 L8*L23*L25
27 L8*L29*B2; 19 L8*L29*B5; 97 M1*B2; 17 M1*B3
795 M1*L1; 912 M3*B0; 397 M3*B6; 77 M3*L1
27 M3*L10; 87 M3*L12; 28 M3*L15; 10 M3*L3
25 M3*L9; 8 M4*B3; 72 M4*B4; 74 TmCPQ
30 TmCPQ*L14; 154 TmCPQ*L23; 79 TmCPQ*L36; 219 TmCPQ*L37
981 TmCPQ*L4; 341 TmCPQ*L9; 147 TmDFP*B1; 77 TmDFP*B5
5300 TmDFP*L0; 91 TmDFP*L10; 90 TmDFP*L14; 124 TmDFP*L23
122 TmDFP*L25; 527 TmDFP*L3; 1085 TmDFP*L36; 318 TmDFP*L4
1441 TmDFP*L6; 91 TmDFP*L9; 912 TmHCY*B0; 99 TmHCY*B2
285 TmHCY*B5; 141 TmHCY*L14; 208 TmHCY*L25; 185 TmHCY*L5
13 TmHFP*B2; 154 TmHFP*B5; 5160 TmHFP*L0; 315 TmHFP*L15
831 TmHFP*L21; 15 TmHFP*L25; 1733 TmHFP*L3; 111 TmHFP*L30
177 TmHFP*L34; 5574 TmHFP*L36; 757 TmHFP*L7; 136 TmHFZ*B2
5812 TmHFZ*B4; 62 TmHFZ*B5; 73 TmODQ*L23; 542 TmODQ*L3
69 TmODQ*L30; 279 TmODQ*L34; 19 TmOHZ*B5; 113 TmOHZ*L10
43 TmOHZ*L3; 25 TmOYQ*L14; 35 TmOZP*B4; 30 TmOZP*B5
54 TmOZP*L4; 422 TpCDQ; 56 TpCDQ*L14; 219 TpCDQ*L21
986 TpCDQ*L22; 69 TpCDQ*L30; 327 TpCDQ*L34; 257 TpCDQ*L36
117 TpCDQ*L37; 14 TpCDQ*L6; 109 TpCYZ*L0; 103 TpCYZ*L23
61 TpCYZ*L34; 25 TpDYQ*L14; 341 TpDYQ*L21; 134 TpDYQ*L29
12 TpDYQ*L34; 123 TpDYQ*L36; 472 TpDYQ*L37; 8 TpOCX*B3
72 TpOCX*B4; 921 TpOYZ*B4; 104 TpOYZ*L1; 14 TpOYZ*L10
75 TpOYZ*L6; 60 TpOYZ*L9; 8 TpYZX*B3; 72 TpYZX*B4
```

There are 216 positive integer entries. The exact coefficient-box upper bound is

`-6053248853717/500000000000000`.

### Leaf TU.R6pmmpp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Q HDF OD 1
via Q CDP CF -1
via Y OHC DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y OHQ OD 1
via Y HXQ DX -1
```

```c1ti-factors
B0 drop l OHQ 2 YZ
B1 topy P 0 -
B2 ear HDF1_dmax
B3 ear CDF1_fmax
B4 triangle OHC 3 YZX
B5 triangle OHQ 2 YZ
B6 triangle ODP 2 YQ
B7 triangle HDF 1 Q
B8 triangle CDF 1 Q
B9 triangle CDP 1 Q
B10 quad OQFH 2 YZ
B11 quad OCDP 3 YXQ
B12 quad HDPF 1 Q
B13 quad CDPF 1 Q
B14 drop m OCQ 1 X
```

```c1ti-sum
3 B1*B2*B3; 3 B10*L2; 3 B11*B2; 2 B11*L6
15 B12*L4; 25 B13*B14; 7 B13*L0; 7 B13*L30
15 B2*B2*B3; 7 B4*B2; 3 B4*L25; 8 B4*L5
5 B4*L7; 2 B5*L1; 7 B5*L4; 6 B6*L1
32 B7*B0; 1 B7*L2; 12 B8*L0; 26 B8*L23
5 B9*L30; 10 L1*B0; 1 L2*L30*B1; 14 L2*L30*B2
15 L23*L36*B3; 3 L24*L29*L30; 3 L25*L30*B3; 5 TmCPQ
25 TmCPQ*L5; 12 TmHFP; 1 TmHFP*L5; 35 TpDFQ
25 TpDFQ*L22; 3 TpDFQ*L37; 3 TpDPQ; 15 TpHDQ
35 TpHDQ*L7
```

There are 37 positive integer entries. The exact coefficient-box upper bound is

`-328491607/22750000000`.

### Leaf TU.R6pmp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
imp OFQ -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Z OCP OF -1
via Q CDP CF -1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Y CXP FX 1
```

```c1ti-factors
B0 topy P 0 -
B1 topx P 0 -
B2 drop q OCP 3 YZX
B3 ear CDF1_fmax
B4 triangle OFY 1 Z
B5 triangle OYP 1 Z
B6 triangle OPQ 2 YZ
B7 quad OCDH 3 YZX
B8 quad OCYZ 1 X
B9 quad OCQP 3 YZX
B10 quad CDPZ 2 YQ
B11 mesh OCPYXZ -1 1
B12 mesh OCPYXZ -1 2
```

```c1ti-sum
1 B10*L1; 18 B11*L9; 7 B12*L13; 1 B12*L15
18 B12*L37; 1 B4*L23; 5 B5*L13; 2 B6*L21
1 B7*L3; 1 B8; 19 B8*L20; 3 B9*L6
8 EF*L1; 3 L0*L20*B1; 13 L0*L31*B1; 52 L0*L36*B1
3 L0*L37*B1; 3 L1*L13; 1 L1*L21*B0; 5 L1*L21*L21
5 L1*L6*L21; 1 L12*L23*B1; 3 L12*L23*L34; 3 L12*L23*L35
1 L14*L20*B3; 2 L21*L23*L31; 11 L23*L31*B3; 1 L25*B0
2 L25*L37*B0; 3 L3*L22*L36; 7 L3*L36*L36; 1 L6*L22*B2
8 M1; 8 M1*L34; 1 M1*L7; 1 TmCFP*L10
2 TmCFP*L6; 2 TmCPQ*B1; 1 TmCPQ*L31; 8 TmHCY
2 TmHCY*L22; 8 TmHCY*L37; 12 TmHFP; 2 TmHFP*L21
1 TmHFP*L22; 13 TmHFP*L31; 57 TmHFP*L36; 5 TmHFP*L37
6 TmHFZ*B2; 6 TmOFZ*L23; 51 TmOHF*B2; 2 TpCDQ
1 TpCDQ*L37; 8 TpCFY*L1; 1 TpDPQ*L3; 2 TpFZP*L3
5 TpHCF*L1; 9 TpOZP; 2 TpOZP*L20; 1 TpOZP*L31
1 TpOZP*L35; 6 TpOZP*L36
```

There are 62 positive integer entries. The exact coefficient-box upper bound is

`-4342677451/200000000000`.

### Leaf TU.R6pp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
imp ODQ 1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Q ODP OF -1
via Q CDP CF -1
via Y OCQ DQ 1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via X OCY DQ 1
via Z OHY FY -1
via Y OHC FQ -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1ti-factors
B0 topx P 0 -
B1 drop m OCQ 2 YX
B2 topy P 0 -
B3 drop q OCP 2 YX
B4 ear CDF1_fmax
B5 triangle OCY 1 X
B6 triangle OCQ 2 YX
B7 triangle CDP 1 Q
B8 quad OCYZ 1 X
B9 quad CDPF 1 Q
```

```c1ti-sum
3 B5*L25; 11 B6*L20; 10 B6*L22; 4 B6*L25
25 B6*L4; 2 B6*L6; 3 B6*L8; 206 B7*B1
1 B7*L10; 18 B7*L23; 81 B7*L30; 10 B8*B3
3 B8*L22; 2 B8*L9; 13 B9*L23; 7 B9*L6
26 L0*B0; 28 L0*L21*B0; 1 L0*L23*L24; 20 L0*L24*B0
6 L0*L3*L4; 133 L0*L36*B0; 238 L0*L4*B0; 99 L0*L7*B0
2 L0*L8*B0; 89 L1*L12*L23; 42 L1*L6*B2; 4 L10*L23*L25
14 L10*L24*L25; 3 L10*L25*B0; 2 L12*L23; 6 L2*B2*B2
65 L2*L30*B2; 2 L2*L30*L30; 1 L2*L34*B2; 41 L2*L5*B2
13 L2*L6*B2; 4 L20*L25*B1; 3 L20*L34*B1; 7 L21*B0*B1
48 L21*L23*L30; 7 L21*L29*B2; 65 L23*B4*B4; 4 L23*L24*L25
7 L23*L25*B0; 4 L23*L25*B4; 3 L24*L34*B1; 3 L24*L35*B1
1 L25*L35*B2; 1 L29*B0*B1; 26 L29*B2; 3 L29*L31*B2
56 L3*B1; 9 L3*L15*L23; 10 L3*L23; 5 L3*L23*L24
6 L3*L23*L31; 1 L3*L23*L37; 6 L3*L24*B1; 3 L3*L3*L4
13 L3*L37*B1; 8 L3*L4*L23; 33 L3*L4*L4; 47 L4*L6*B2
178 L4*L6*B3; 1 L5*L10*L25; 58 L5*L21*B2; 4 L5*L21*L29
1 L5*L21*L30; 6 L5*L5*L8; 26 L6*B0*B1; 44 L6*B3*B3
140 L6*L14*B3; 28 L6*L21*B2; 2 L6*L25*B3; 4 L6*L34*B1
6 L6*L34*B2; 27 L6*L6*B2; 1 L6*L7*B1; 2 L7*L10*L25
4 L9*L14*B3; 7 L9*L25*B1; 2 M1*L11; 7 M1*L22
2 M3*B2; 4 M3*L5; 26 TmCPQ; 25 TmCPQ*B2
7 TmCPQ*L21; 10 TmCPQ*L24; 2 TmCPQ*L34; 12 TmCPQ*L37
206 TmCPQ*L5; 16 TmDFP*L22; 2 TmDFP*L34; 4 TmDFP*L37
47 TmDFP*L4; 27 TmDFP*L6; 10 TmDYQ; 2 TmDYQ*B0
14 TmDYQ*L24; 7 TmDYQ*L30; 4 TmDYQ*L31; 27 TmFPQ*L6
3 TmHCY*L14; 6 TmHCY*L22; 1 TmHCY*L37; 2 TmHFP*L15
28 TmHFP*L21; 41 TmHFP*L22; 20 TmHFP*L24; 4 TmHFP*L34
133 TmHFP*L36; 194 TmHFP*L4; 99 TmHFP*L7; 143 TmHFZ*B3
1 TmOHF*B1; 171 TpCDQ*L23; 3 TpCYZ*L0; 9 TpCYZ*L23
1 TpCYZ*L34; 1 TpCYZ*L35; 4 TpDFQ*L10; 10 TpDFQ*L9
223 TpDPQ; 25 TpDPQ*B2; 1 TpDPQ*L1; 14 TpDPQ*L24
6 TpDPQ*L31; 1 TpDPQ*L35; 1 TpDPQ*L37; 4 TpFYP*L0
1 TpFZP*L0; 8 TpODQ*L1; 3 TpODQ*L2; 16 TpODQ*L21
10 TpODQ*L23; 6 TpODQ*L35; 18 TpODQ*L5; 7 TpOYQ*L30
```

There are 140 positive integer entries. The exact coefficient-box upper bound is

`-6925891851859/500000000000000`.

### Leaf TU.R7

```c1ti-geometry
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Q CDP OF -1
via Q CDP CF -1
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Y OHC FQ -1
via F DPQ ZX 1
via F DPQ ZP -1
via Z OHC FQ -1
via F DPQ XP -1
via X OHC FQ -1
via Y CFZ ZP -1
via P HFZ OY 1
via X OCY OP -1
```

```c1ti-factors
B0 topx P 0 -
B1 triangle CFQ 1 P
B2 quad HXCD 1 Y
B3 quad HZXC 1 Y
```

```c1ti-sum
1 B1*L22; 3 B2*B0; 1 B3; 3 L15*B0
2 L36*B0; 1 TmCFP*L27; 3 TmCFP*L28; 2 TmDFP
4 TmDFP*L16; 3 TmDFP*L37; 7 TmFXP; 3 TmFXP*L37
3 TmFZP; 4 TmHDX*B0; 5 TmHFP; 6 TmHFP*L17
2 TpCFX*L23
```

There are 17 positive integer entries. The exact coefficient-box upper bound is

`-4748731/250000000`.

### Leaf TU.R8

```c1ti-geometry
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCZ DZ 1
via Z OHC DP 1
via X OHC DP 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via X OHC FP -1
```

```c1ti-factors

```

```c1ti-sum
1 TmDFP; 1 TmDPQ; 1 TpDFQ; 1 TpFPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf UT.R0

```c1ti-geometry
via P CDQ OF -1
via P CDQ CF -1
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHC FP -1
via F DPQ ZX 1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via P CDQ YQ -1
via P CDQ ZQ -1
via X OCY PQ 1
```

```c1ti-factors
B0 topx Q 0 -
B1 drop p OHP 1 Q
B2 topy Q 0 -
B3 triangle CFP 1 Q
B4 triangle DPQ 1 F
B5 ear CDF1_fmax
B6 quad OCQH 3 YZX
B7 quad OCPF 3 YXQ
```

```c1ti-sum
7 B3*L26; 17 B4*B0; 20 B4*B5; 4 B4*L22
1 B6*L23; 1 B7*B2; 2 L0*L21; 1 L1*L5*B1
4 L21*L25*L30; 11 L21*L27; 12 L23*B0; 4 L23*L31*B2
3 L4*B0; 3 L4*L21*L24; 3 L4*L21*L27; 3 L4*L23*B0
1 L4*L4*B0; 4 TmCFQ*L23; 37 TmDFQ*L20; 4 TmDFQ*L25
2 TmDFQ*L4; 42 TmFPQ; 4 TmFPQ*L25; 5 TmHPQ
4 TmHPQ*B2; 10 TmHPQ*L25; 4 TpCDP*L22; 6 TpCDP*L27
4 TpCPQ*L22; 8 TpCPQ*L5; 33 TpDFP*L24; 1 TpDFP*L27
6 TpHDQ*B1; 9 TpHDQ*L25; 4 TpOPQ*B2; 3 TpOPQ*L24
```

There are 36 positive integer entries. The exact coefficient-box upper bound is

`-35395758473/91000000000`.

### Leaf UT.R1

```c1ti-geometry
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1ti-factors

```

```c1ti-sum
1 TmDFQ; 1 TmFPQ; 1 TpDFP; 1 TpDPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf UT.R2

```c1ti-geometry
via P HFQ OD 1
via P HFQ HD 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
via Y OCF PQ 1
via P HFQ ZQ 1
via X OCF PQ 1
```

```c1ti-factors
B0 topx Q 0 -
B1 triangle OHD 1 Z
B2 drop p OHP 1 Q
B3 triangle HDP 1 Q
B4 triangle FPQ 1 D
```

```c1ti-sum
1 B3*L24; 6 B4; 6 B4*L20; 1 B4*L24
5 B4*L36; 1 B4*L37; 1 L0*L21; 1 L21*L30*B0
2 L22*B0*B1; 2 L27*B0*B1; 3 L27*L36*B0; 4 L6*L21*L26
6 TmHFP*B2; 8 TmHFP*L25; 6 TmHPQ; 2 TmHPQ*B0
6 TmHPQ*L20; 5 TmHPQ*L27; 1 TmHPQ*L31; 4 TmHPQ*L7
1 TpCPQ*B0; 1 TpDPQ*L7; 1 TpHDQ*L6; 2 TpOPQ
5 TpOPQ*L27; 1 TpOPQ*L37; 4 TpOPQ*L6
```

There are 27 positive integer entries. The exact coefficient-box upper bound is

`-90720333/1000000000`.

### Leaf UT.R3

```c1ti-geometry
via P CDQ OF -1
via P CDQ CF -1
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHC FP -1
via F DPQ ZX 1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via P CDQ YQ -1
via Z OHD PQ -1
via P CDQ XQ -1
```

```c1ti-factors
B0 topy Q 0 -
B1 drop q OCP 1 Q
B2 triangle CFP 1 Q
B3 triangle DPQ 1 F
```

```c1ti-sum
1 B2*L26; 7 B3; 6 B3*L22; 1 B3*L26
1 B3*L36; 6 B3*L37; 1 L2*L20*B0; 1 L2*L23
3 L20*L37*B0; 1 L23*L31*B0; 4 L25*L37*B0; 3 L4*L23*L24
2 TmCFQ*L4; 1 TmFPQ*L5; 1 TmHPQ*B0; 2 TmOPQ
5 TmOPQ*L25; 1 TmOPQ*L3; 1 TmOPQ*L36; 5 TmOPQ*L4
6 TpCDP*B1; 9 TpCDP*L27; 7 TpCPQ; 2 TpCPQ*B0
6 TpCPQ*L22; 5 TpCPQ*L25; 1 TpCPQ*L30; 4 TpCPQ*L5
```

There are 28 positive integer entries. The exact coefficient-box upper bound is

`-64794377/1000000000`.

### Leaf UT.R4

```c1ti-geometry
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1ti-factors

```

```c1ti-sum
1 TmDFQ; 1 TmFPQ; 1 TpDFP; 1 TpDPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf UT.R5

```c1ti-geometry
via P HFQ OD 1
via P HFQ HD 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
via P HFQ YQ 1
via Z OHY PQ -1
via P HFQ XQ 1
```

```c1ti-factors
B0 topy Q 0 -
B1 topx Q 0 -
B2 drop q OCP 1 Q
B3 triangle HDP 1 Q
B4 triangle FPQ 1 D
B5 ear HDF1_dmax
B6 quad OCQH 3 YZX
```

```c1ti-sum
2 B3*B1; 6 B3*L24; 18 B4*B0; 20 B4*B5
4 B4*L20; 1 B6*L21; 3 L0*L21; 7 L21*B0
9 L23*L25; 4 L23*L27*L31; 2 L29*B1; 4 L3*L27*B1
2 L3*L7*B2; 2 L6*B0; 3 L6*L21*B0; 3 L6*L23*L25
4 L6*L23*L26; 4 L7*L21*L30; 7 TmCFQ*B2; 10 TmCFQ*L27
38 TmDFQ*L22; 3 TmDFQ*L27; 2 TmDFQ*L6; 4 TmHFP*L20
6 TmHFP*L25; 4 TmHPQ*L20; 7 TmHPQ*L7; 4 TmOPQ*B1
4 TmOPQ*L26; 3 TpCPQ; 4 TpCPQ*B1; 11 TpCPQ*L27
2 TpDFP*L25; 35 TpDFP*L26; 45 TpDPQ; 3 TpDPQ*L27
9 TpHDQ*L21
```

There are 37 positive integer entries. The exact coefficient-box upper bound is

`-1218487019/11375000000`.

### Leaf UT.R6

```c1ti-geometry
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via X OCZ DZ 1
via Z OHC DQ 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1ti-factors

```

```c1ti-sum
1 TmDFQ; 1 TmFPQ; 1 TpDFP; 1 TpDPQ
```

There are 4 positive integer entries. The exact coefficient-box upper bound is

`-93/250`.

### Leaf UT.R7

```c1ti-geometry
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via P HFQ OD 1
via P HFQ HD 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1ti-factors
B0 topy Q 0 -
B1 topx Q 0 -
B2 ear HDF1_dmax
B3 triangle HDP 1 Q
B4 triangle FPQ 1 D
```

```c1ti-sum
4 B3*L24; 4 B4*B0; 18 B4*B2; 4 L21*B0
5 L21*L21*B0; 4 L21*L23*L25; 12 L23*L25; 3 L30*B1*B1
12 L6*L21*B0; 3 L6*L23*B0; 8 L6*L23*L25; 3 L6*L26*B0
7 L6*L6*B0; 4 L7*L21*L30; 20 TmDFQ*B2; 2 TmDFQ*L21
39 TmDFQ*L22; 8 TmDFQ*L6; 5 TmHFP*L20; 7 TmHFP*L25
3 TmHPQ*B1; 5 TmHPQ*L20; 10 TmHPQ*L7; 3 TmOPQ*B0
20 TpDFP*B0; 5 TpDFP*L20; 5 TpDFP*L25; 19 TpDFP*L26
2 TpDFP*L7; 44 TpDPQ; 3 TpDPQ*B1; 20 TpDPQ*L5
9 TpHDQ*L21
```

There are 33 positive integer entries. The exact coefficient-box upper bound is

`-662753631/1000000000`.

### Leaf UT.R8m

```c1ti-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OFP -1 cluster
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via P OFQ OD 1
via Y OHP OQ 1
via Z OHY OQ 1
via P HFQ HD 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHP FP -1
via Z OHX FX -1
via Z OHY FP -1
via Z OHC FQ -1
via X OHC FQ -1
via Y HXP XQ 1
via Y OHP OD 1
via Y HXP DX -1
```

```c1ti-factors
B0 drop p OHP 2 YZ
B1 topy Q 0 -
B2 topx Q 0 -
B3 ear HDF1_dmax
B4 triangle OHP 2 YZ
B5 triangle OHQ 2 YZ
B6 triangle OFQ 2 YP
B7 triangle HDF 1 P
B8 triangle HFQ 1 P
B9 quad OCPH 3 YZX
B10 quad OQFH 3 YZP
B11 quad OCQF 3 YXP
B12 quad HDQF 1 P
```

```c1ti-sum
2 B10*L4; 4 B11*B0; 28 B12*B0; 8 B12*L25
9 B12*L4; 3 B4*L4; 12 B5*L4; 4 B6*L21
16 B6*L36; 18 B6*L4; 20 B6*L7; 19 B7*L25
2 B8*L31; 10 B9*L34; 3 EF*L1; 7 L1*B0
70 L2*B1; 19 L2*L30*B1; 16 L2*L5*B1; 22 L25*B3*B3
9 L25*L30*B3; 9 L34; 22 L4*L6*B2; 11 L6*L29*B1
1 L7*L27*L29; 10 M3*L21; 2 M3*L22; 22 TmDFQ*L6
8 TmDPQ*L24; 4 TmHCY; 5 TmHCY*L23; 10 TmHPQ
28 TmHPQ*L7; 2 TmOYP; 10 TmOYP*L36; 10 TmOYP*L37
67 TpCDQ; 4 TpCDQ*L20; 20 TpCDQ*L30; 15 TpCDQ*L5
9 TpCDQ*L6; 20 TpDFP*L24; 3 TpFPQ; 8 TpFPQ*L24
4 TpODP*L25; 4 TpODP*L29
```

There are 46 positive integer entries. The exact coefficient-box upper bound is

`-420466379341/9100000000000`.

### Leaf UT.R8pmmm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OHQYZX 1
via Y OHQ OD 1
via X OHQ OD 1
via P HFQ HD 1
via X OCY DY 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
via Y HZQ DZ -1
```

```c1ti-factors
B0 topy Q 0 -
B1 drop l OHQ 3 YZX
B2 topx Q 0 -
B3 ear HDF1_dmax
B4 quad OCQH 3 YZX
B5 quad OCDZ 1 X
B6 quad ODQY 1 X
B7 quad ODQZ 1 X
B8 quad OQYZ 1 X
B9 quad HXCD 1 Y
B10 quad HZCQ 1 Y
B11 quad HXQF 2 YP
B12 mesh OHQYZX 1 0
B13 mesh OHQYZX 1 2
```

```c1ti-sum
3 B10*L34; 1 B11*L3; 6 B12*L4; 5 B13
2 B13*L26; 2 B13*L36; 1 B4*L28; 1 B5*B1
1 B6*L25; 2 B6*L29; 1 B7*L16; 1 B8*L24
1 B8*L36; 3 B9*B1; 1 B9*L27; 3 L1*L24*L37
1 L1*L37*L37; 1 L15*L25*L29; 2 L19*L27*L27; 32 L2*B0
1 L2*L30*B0; 7 L2*L37*B0; 1 L24*L26*L34; 1 L25*L26*L35
1 L25*L30*B3; 1 L25*L35; 3 L26*L28; 1 L28
1 L3*L27*B2; 28 L4*B1; 4 M1*B0; 1 M3*L15
1 M3*L25; 1 TmCFQ*L4; 1 TmHCY; 3 TmHCY*L24
4 TmHCY*L27; 2 TmHCY*L36; 1 TmOHQ*L28; 4 TmOXQ
1 TmOXQ*L13; 1 TmOXQ*L36; 2 TmOXQ*L37; 34 TpCDQ
1 TpCDQ*L24; 1 TpCDQ*L30; 3 TpCDQ*L36; 8 TpCDQ*L37
1 TpCZX*L24; 1 TpHCQ*L34; 5 TpOCD*B1; 1 TpODX*L25
1 TpYZQ*L36; 2 TpYZQ*L37
```

There are 54 positive integer entries. The exact coefficient-box upper bound is

`-121047862527/3640000000000`.

### Leaf UT.R8pmmpm

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Y OHQ OD 1
via P CDF OF -1
via P HFQ HD 1
via X OCY DY 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Y OHC FP -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1ti-factors
B0 drop q OCP 2 YX
B1 topx Q 0 -
B2 ear CDF1_fmax
B3 ear HDF1_dmax
B4 triangle OHC 3 YZX
B5 triangle OCP 2 YX
B6 triangle OFQ 2 YP
B7 triangle HDF 1 P
B8 triangle HFQ 1 P
B9 triangle CDF 1 P
B10 quad OQFH 3 YZP
B11 quad OCDP 2 YX
B12 quad HDQF 1 P
B13 drop p OHP 1 Z
B14 quad CDQF 1 P
```

```c1ti-sum
3 B1*B3*B2; 3 B10*B2; 2 B10*L4; 3 B11*L0
25 B12*B13; 7 B12*L2; 7 B12*L31; 15 B14*L6
15 B3*B2*B2; 7 B4*B2; 3 B4*L23; 5 B4*L5
8 B4*L7; 2 B5*L3; 7 B5*L6; 6 B6*L3
12 B7*L2; 26 B7*L25; 5 B8*L31; 32 B9*B0
1 B9*L0; 1 L0*L31*B1; 14 L0*L31*B2; 3 L22*L29*L31
3 L23*L31*B3; 15 L25*L37*B3; 10 L3*B0; 15 TmCFP
35 TmCFP*L5; 5 TmHPQ; 25 TmHPQ*L7; 12 TpCDQ
1 TpCDQ*L7; 35 TpDFP; 25 TpDFP*L24; 3 TpDFP*L36
3 TpFPQ
```

There are 37 positive integer entries. The exact coefficient-box upper bound is

`-328491607/22750000000`.

### Leaf UT.R8pmmpp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OFP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via Y OHQ OD 1
via Z OHP OF 1
via P HFQ HD 1
via X OCY DY 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Y OCF FZ 1
via Y OCF FP 1
via Z OHF FX -1
via Z OHC FQ -1
via X OCF FP 1
via X OHC FQ -1
```

```c1ti-factors
B0 topx Q 0 -
B1 topy Q 0 -
B2 drop m OCQ 1 X
B3 ear HDF1_dmax
B4 drop p OHP 1 Z
B5 drop l OHQ 2 YZ
B6 drop q OCP 2 YX
B7 triangle OCF 2 YX
B8 triangle OHC 3 YZX
B9 triangle OHF 2 ZP
B10 triangle HFQ 1 P
B11 quad OCDY 1 X
```

```c1ti-sum
64 B10*L17; 963 B10*L21; 227 B10*L25; 108 B10*L27
95 B10*L29; 1386 B10*L31; 75 B10*L4; 1055 B10*L7
105 B11*B5; 8 B11*L1; 121 B8*L3; 2888 B9*L1
3649 B9*L2; 600 B9*L4; 101 L0*L28*L34; 9 L0*L29*L34
703 L0*L31*B0; 79 L0*L31*L31; 89 L0*L34*L34; 102 L1*L1
81 L1*L1*L21; 25 L1*L1*L25; 3174 L1*L1*L6; 76 L1*L1*L9
76 L1*L10*L10; 20 L1*L10*L23; 64 L1*L17*L25; 1634 L1*L2*B1
437 L1*L2*B2; 1573 L1*L2*L6; 120 L1*L23*L31; 1479 L1*L25*B3
37 L1*L25*B4; 391 L1*L25*L25; 146 L1*L25*L34; 110 L1*L25*L35
7 L1*L28*B4; 71 L1*L28*L31; 73 L1*L29*B4; 15 L1*L31*B4
132 L1*L34*B4; 10 L1*L35*B4; 1754 L1*L6*L31; 1494 L1*L7*L25
104 L1*L7*L34; 44 L1*L9*L35; 91 L10*L25*L25; 274 L10*L34*B0
78 L10*L34*B4; 78 L11*L28*B0; 11 L11*L28*L28; 7 L16*L23*L34
557 L16*L34*B5; 10 L17*L25*L34; 428 L18*L25*B3; 10 L18*L28*L34
219 L18*L34*B0; 5 L18*L34*B4; 148 L18*L34*B5; 590 L2*B1*B3
236 L2*B1*B4; 162 L2*L10*L23; 359 L2*L17*B1; 1315 L2*L18*B0
4133 L2*L18*B5; 254 L2*L18*L27; 10162 L2*L2*B1; 1594 L2*L2*B2
392 L2*L25*B1; 7549 L2*L25*B3; 36 L2*L25*B6; 15 L2*L25*L34
608 L2*L27*B1; 43 L2*L28*L35; 254 L2*L3*B0; 114 L2*L3*L27
40 L2*L31*L35; 50 L2*L35*B0; 33 L2*L35*B1; 198 L2*L35*B2
81 L2*L35*B4; 1857 L2*L4*B0; 2456 L2*L6*B1; 52 L2*L7*L25
82 L21*L29*L34; 165 L21*L34*L34; 204 L23*L34*L34; 204 L23*L34*L35
590 L25*B1*B3; 164 L25*B1*B4; 274 L25*L25*B3; 164 L25*L25*B6
449 L25*L27*L31; 567 L25*L28*L35; 108 L25*L29*B1; 36 L25*L31*B6
149 L25*L31*L35; 274 L25*L33*L34; 44 L25*L35*B1; 2441 L27*L31*L31
46 L27*L34*B0; 102 L28*L29*L35; 254 L29*L29*B0; 53 L29*L29*L31
15 L29*L29*L35; 64 L29*L31*L33; 20 L29*L34*B6; 35 L29*L35*B0
627 L3*L18*L25; 719 L3*L27*L29; 145 L3*L28*L34; 52 L3*L31*L31
60 L3*L31*L34; 65 L3*L34*B0; 42 L3*L4*L16; 14 L3*L4*L28
134 L31*L33*L34; 149 L31*L34*B5; 81 L31*L34*B6; 165 L34*L35*B4
164 L4*B0*B4; 1139 L4*L16*B0; 45 L4*L16*B4; 3730 L4*L16*B5
117 L4*L16*L34; 3 L4*L21*L34; 4 L4*L23*B0; 1090 L4*L27*B0
637 L4*L28*B5; 340 L4*L29*B0; 60 L4*L31*L34; 148 L4*L34*B0
153 L4*L35*B0; 1 L4*L35*B4; 1123 L4*L4*B0; 13 L4*L7*L34
75 L4*L8*B2; 9 L4*L8*L23; 31 L7*L27*L34; 53 L7*L29*B0
53 L7*L29*L29; 14 L8*L29*B1; 21 L8*L29*B2; 179 M2*B0
240 M2*B3; 64 M2*L3; 579 M3*B1; 31 M3*B3
146 M3*B6; 122 M3*L17; 111 M3*L18; 183 M3*L3
6 M4*L18; 108 TmDFQ*B2; 164 TmDFQ*B4; 332 TmDFQ*L1
64 TmDFQ*L16; 4754 TmDFQ*L2; 222 TmDFQ*L25; 77 TmDFQ*L34
1197 TmDFQ*L37; 1123 TmDFQ*L4; 297 TmDFQ*L8; 5 TmDPQ*L1
5 TmFYP; 409 TmFYP*L10; 7 TmFYP*L17; 7 TmFYP*L18
9 TmFYP*L30; 276 TmFYP*L36; 100 TmFYP*L37; 409 TmFYP*L9
292 TmHCY*B0; 614 TmHCY*B1; 265 TmHCY*B4; 52 TmHCY*L1
119 TmHCY*L23; 81 TmHCY*L28; 134 TmHCY*L34; 130 TmHCY*L7
180 TmHFP; 22 TmHFP*L1; 490 TmHFP*L10; 7 TmHFP*L17
7 TmHFP*L18; 836 TmHFP*L24; 148 TmHFP*L31; 228 TmHFP*L37
5 TmHFP*L5; 490 TmHFP*L9; 164 TmHPQ*L25; 134 TmHPQ*L36
201 TmHPQ*L37; 800 TmHPQ*L6; 103 TmOYQ*L2; 91 TmOYQ*L25
297 TmOYQ*L31; 81 TmOYQ*L4; 85 TmOYX*B0; 6 TmOYX*B4
1127 TmOYX*B5; 6 TmOYX*L23; 11 TmOYX*L28; 101 TmOYX*L3
164 TpCDQ*B4; 6244 TpCDQ*B7; 769 TpCDQ*L1; 359 TpCDQ*L17
4 TpCDQ*L23; 52 TpCDQ*L25; 608 TpCDQ*L27; 222 TpCDQ*L31
209 TpCDQ*L33; 3697 TpCDQ*L37; 590 TpCDQ*L5; 132 TpCDQ*L9
1075 TpCDX*B0; 72 TpCDX*B4; 4740 TpCDX*B5; 54 TpCDX*L16
117 TpCDX*L34; 128 TpFPQ*L29; 45 TpOCX*B1; 11 TpOCX*L1
7 TpOCX*L21; 87 TpOCX*L25; 142 TpOCX*L34; 315 TpOFP*L1
148 TpOFP*L31; 6 TpYZX*L18
```

There are 230 positive integer entries. The exact coefficient-box upper bound is

`-787391454487/40000000000000`.

### Leaf UT.R8pmp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OZQ -1 ray
imp YXQ 1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
mesh OCPYXZ -1
via Y OHQ OD 1
via P HFQ HD 1
via X OCY DY 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1ti-factors
B0 topx Q 0 -
B1 ear HDF1_dmax
B2 topy Q 0 -
B3 drop l OHQ 2 YZ
B4 drop q OCP 3 YZX
B5 topprojy Q 0 -
B6 triangle OCP 3 YZX
B7 triangle OPQ 2 YZ
B8 triangle HFQ 1 P
B9 quad OCPH 3 YZX
B10 quad OCDY 1 X
B11 quad HDQF 1 P
B12 mesh OCPYXZ -1 2
```

```c1ti-sum
3 B0*B0*B1; 20 B10*L20; 76 B11*B4; 17 B12*B2
8 B12*L24; 55 B12*L5; 3 B12*L6; 10 B5*L23
39 B6*B2; 6 B7*L1; 15 B7*L11; 34 B7*L27
2 B7*L3; 94 B7*L4; 10 B7*L9; 6 B8*L1
4 B8*L3; 25 B8*L7; 29 B9*B2; 10 L0*L20*B0
16 L0*L20*L31; 9 L0*L31*L34; 1 L0*L35*B0; 56 L0*L7*B0
2 L0*L7*L20; 58 L0*L7*L23; 4 L0*L7*L7; 18 L1*L2*B1
18 L1*L25*B2; 31 L1*L31*B1; 15 L1*L4*L6; 15 L1*L6*L20
29 L1*L6*L25; 55 L1*L6*L26; 4 L1*L9*B2; 4 L11*L31*B3
9 L2*B2*B1; 19 L2*L6*B2; 3 L20*L29*B2; 5 L20*L29*L34
2 L23*L30*L31; 3 L23*L31*B0; 2 L23*L31*L34; 47 L25*B1*B1
44 L25*L27*B1; 15 L25*L27*L29; 1 L25*L30*L34; 5 L3*L20*L35
5 L3*L27*B0; 44 L3*L27*L27; 31 L3*L4*B1; 16 L3*L4*L20
9 L3*L4*L23; 13 L3*L4*L27; 23 L4*B3*B3; 32 L4*L23*B0
13 L4*L4*B3; 11 L4*L6*B0; 6 L4*L6*B2; 2 L6*L6*B2
4 L6*L6*B4; 4 L7*L23*L29; 9 L7*L23*L35; 40 L7*L7*L23
10 L7*L7*L27; 5 L9*B1*B4; 11 TmCFQ*L23; 2 TmDFQ*L21
123 TmDFQ*L23; 19 TmDFQ*L29; 1 TmDFQ*L35; 6 TmDFQ*L4
17 TmDFQ*L6; 2 TmDPQ*L34; 53 TmHCY*B1; 15 TmHCY*B2
15 TmHCY*L21; 113 TmHFP; 10 TmHFP*B0; 68 TmHFP*B2
7 TmHFP*L30; 7 TmHFP*L31; 14 TmHFP*L35; 27 TmHFP*L5
22 TmHFP*L7; 2 TmHPQ; 34 TmHPQ*B2; 6 TmHPQ*L30
5 TmHPQ*L37; 12 TmHPQ*L5; 7 TmHPQ*L6; 7 TmOFY*L23
14 TmOYQ*B4; 3 TmOYQ*L1; 8 TmOYQ*L20; 3 TmOYQ*L22
3 TmOYQ*L7; 48 TpCDQ; 2 TpCDQ*L20; 57 TpCDQ*L22
20 TpCDQ*L24; 44 TpCDQ*L27; 15 TpCDQ*L30; 25 TpCDQ*L5
19 TpCFY*L1; 133 TpDFP*L1; 5 TpHDP*L10; 18 TpHDP*L9
65 TpHYP*L4
```

There are 109 positive integer entries. The exact coefficient-box upper bound is

`-556099615803/45500000000000`.

### Leaf UT.R8pp

```c1ti-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp ODP 1 cluster
imp OXQ 1 ray
imp YZQ -1 beyond
imp YPQ -1 lower
imp ZPQ -1 lower
imp XPQ -1 lower
via P HFQ HD 1
via Y OHC DP 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FQ -1
via X OHC FQ -1
```

```c1ti-factors
B0 topx Q 0 -
B1 topy Q 0 -
B2 ear HDF1_dmax
B3 drop m OCQ 2 YX
B4 topprojy Q 0 -
B5 triangle OHC 3 YZX
B6 triangle OCQ 2 YX
B7 triangle HFQ 1 P
B8 quad OCDH 3 YZX
B9 quad HDQF 1 P
```

```c1ti-sum
17 B4*L2; 2 B5*L5; 30 B6*L6; 40 B7
1 B7*L24; 3 B7*L37; 8 B8*B0; 5 B8*L3
2 B9*L25; 7 EF*B3; 32 L0*B0; 6 L25*L37*B2
4 L29*L31; 11 L3*L4*B1; 2 L3*L4*L24; 14 L3*L4*L6
3 L4*L6*B0; 11 L5*L25*B2; 3 L6*L24*B3; 2 L6*L25*B1
9 L6*L6*B3; 6 L7*L7*L27; 2 TmDFQ*L24; 4 TmDFQ*L37
3 TmDFQ*L6; 10 TpCDQ; 7 TpCDQ*L37; 11 TpCDQ*L5
4 TpCDQ*L6
```

There are 29 positive integer entries. The exact coefficient-box upper bound is

`-206083201/3500000000`.


## 4. Completion

The two location models cover both label orders after the independent
normalizations of the lower mesh and upper line. Each model starts with
all nine anchor-line cases, and the finite binary tree exhausts every
remaining sign. All terminal rows have a fixed geometric or exact
polynomial contradiction. This proves the theorem for the whole
three-lower, one-central, one-top count.

The optional `check_c1_three_lower_one_top.py` reads this printed
manuscript, replays its tree and geometric premises, and expands every
integer sum with `Fraction` arithmetic. It reuses the already published
C1 factor/sign routines, as extended by the explicitly stated exterior
rules in `check_c1_three_lower_side_top.py`. It uses no optimizer,
discovery JSON, coordinate sample, or runtime subdivision.
