# Complete exclusion of three lower points and two top-cap points

**Theorem.** A C1 configuration with three free points in the actual
triangle \(OHC\) and both remaining free points in the exterior top
cap \(DF(1,1)\) has an actual triangle of ordinary area less than
\(93/2000<A_*\).

This closes the entire exterior count \((k,j,r,t,l)=(3,0,0,2,0)\)
of C1_EXTERIOR_REDUCTION.md. It does not address the other remaining
three-lower placements.

All areas below are doubled. Suppose every actual triangle has unsigned
area at least \(s=93/1000\). Use the same coordinates as
C1_PENTAGON_GEOMETRY.md:

\[
 O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
 \quad Y=(u,v),\ Z=(z,w),\ X=(x,a),\ P=(p,q),\ Q=(\ell,m).
\]

The points \(Y,Z,X\) are the three lower points; here \(P,Q\) denote
the two top-cap points. Their names are independent of the names \(X,Y\)
used for the cap pair in C1_THREE_LOWER_TOP_PAIR.md.

## 1. Geometry and the four remaining roots

The lower triple is distributed, by CLUSTERED_TRIANGLE.md. Choose its
central label \(Y\) by the least \(O\)-barycentric coordinate and its
side labels as in (4) of C1_PENTAGON_GEOMETRY.md. Transposition preserves
the top cap, so arrange \(u\ge v\). Independently interchange \(P,Q\)
to arrange \(HPQ<0\).

The rational coordinate box, affine factors \(L_0,\ldots,L_{37}\),
and factors \(M_1,\ldots,M_5,ED,EF\), the four cubic endpoint
factors, and the five capacity factors from C1_PENTAGON.md remain
valid. Their derivations use only the lower distributed triple, the
C1 anchor restrictions, and the fact that both other points are above
\(HC\). They do not require those two points to be inside \(HCDF\).
In particular, all three lower points are inside every convex actual
quadrilateral \(OHRC\), for \(R=D,F,P,Q\), so its area exceeds
\(93/91\). Both endpoint-seven inequalities remain valid as well.

Use the globally printed starting signs of C1_PENTAGON.md with exactly
the following changes and additions, for each \(R\in\{P,Q\}\):

\[
 DFR<0,\quad ODR>0,\quad OFR<0,\quad
 HDR>0,\quad CFR<0,\quad FYR>0,\quad DYR<0.
 \tag{34}
\]

The first sign replaces the positive \(DFR\) sign for an upper
interior point; the others are additions. They follow by testing the
vertices \(D,F,(1,1)\) of the top cap. For the two signs at \(Y\),
use \(Y\in OHC\), which puts \(Y\) strictly below every edge of
\(HCDF\). The signs \(HFR<0\) and \(CDR>0\) from the starting
list are unchanged.

By C1_THREE_LOWER_TOP_PAIR.md, \(DPQ\) and \(FPQ\) have opposite
signs. The positive anchor vertices of the line \(PQ\), if any,
form a single interval in the order \(O,C,D,F\), since \(HPQ<0\).
The singleton \(O\) is impossible because both cap points are above
\(HC\). The opposite \(D,F\) signs therefore leave exactly the
following four roots, with columns \(OPQ,CPQ,DPQ,FPQ\):

```c1tt-roots
R2 1 1 1 -1
R5 -1 1 1 -1
R7 -1 -1 1 -1
R9 -1 -1 -1 1
```

The first three roots have \(Q\in DFP\); the fourth has
\(P\in DFQ\), directly from their three edge tests. Thus the
triangular outer-hull alternative is included completely.

The finite sign derivation rows below use the `ray`, `beyond`, `lower`,
`cluster`, `mesh`, and `via` rules defined in Section 2 of C1_PENTAGON.md.
All repeated meshes use actual endpoint triangles and the lower triple;
their justifications are unchanged because the relevant containments
depend only on \(P,Q\) being above \(HC\). No isolated-ear rule for
a point assumed inside \(HCDF\) is used.

## 2. The additional top-cap factors

Use all factor definitions from Sections 1 and 3 of C1_PENTAGON.md,
with the corrected starting signs (34). A local `triangle`, `quad`,
`drop`, `mesh`, or `spread` factor is justified by its explicitly
printed containment witnesses, just as there. No cost for two points
inside \(HCDF\) is assumed.

Four additional local factor types occur. For a top-cap point
\(R=(R_x,R_y)\), suppose the actual triangle \(DFR\) contains the
listed \(k\) points. Put \(b=t_k\), with
\(t_0=s,t_1=3s,t_2=694/1000,t_3=823/1000\).
Its positive doubled area is

\[
 r_R=-D(D,F,R)
 =(1-d)(R_x-f)-(1-f)(1-R_y)
 =(1-f)(R_y-d)-(1-d)(1-R_x)\ge b.
\]

The subtracted terms are nonnegative. Hence the following four
polynomials are nonnegative:

| Definition code | Factor |
|---|---|
| `topx R k POINTS` | \(R_x-f-t_k\) |
| `topy R k POINTS` | \(R_y-d-t_k\) |
| `topprojx R k POINTS` | \((1-d)(R_x-f)-t_k\) |
| `topprojy R k POINTS` | \((1-f)(R_y-d)-t_k\) |

For the first two use \(1-d,1-f\le1\). When \(k=0\), `-`
denotes the empty point list, and the actual triangle's own area
clearance gives \(r_R\ge s\). The preceding root containments
frequently permit \(k=1\).

## 3. The fixed sums and their upper bounds

Each sum is a positive integer combination of products of the
nonnegative factors just defined. Its total degree is at most three.
Use exactly the rational box in C1_PENTAGON.md and its coefficient-box
upper bound (33): translate to the lower endpoints, discard negative
nonconstant monomials, and bound every positive monomial by the product
of its interval widths. The resulting rational upper bound printed
for each sum is strictly negative, contradicting nonnegativity.

The following finite binary tree is exhaustive. Its columns are the
node, actual triangle being split, negative child, and positive child.
A child absent from the list is a complete leaf below. There are no
zero signs under the minimum-area assumption.

```c1tt-tree
R2 OYP R2m R2p
R2m OYQ R2mm R2mp
R2p OZP R2pm R2pp
R2pm OZQ R2pmm R2pmp
R2pmm YXP R2pmmm R2pmmp
R2pmmp YXQ R2pmmpm R2pmmpp
R5 OYP R5m R5p
R5p OYQ R5pm R5pp
```

There are ten polynomial leaves and two geometric leaves. The sums contain
1,068 positive integer entries, with largest coefficient 26,949. Every
printed upper bound is strictly below \(-1/100\). All factor premises,
integer products, and rational bounds are printed in the fixed tables.

### Leaf R2mm

```c1tt-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
via Y OHP OD 1
via X OCY DY 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1tt-exclude
cluster OHP Q OHQ YZ
```

### Leaf R2mp

```c1tt-geometry
imp OZP -1 ray
imp YXP 1 beyond
imp OXQ 1 ray
imp YZQ -1 beyond
mesh OHPQZY 1
via Y OHP OD 1
via X OCY DY 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via X OCY PQ 1
```

```c1tt-factors
B0 topy P 1 Q
B1 drop l OHQ 1 Z
B2 drop p OHP 3 YZQ
B3 topx P 1 Q
B4 topx Q 0 -
B5 topy Q 0 -
B6 triangle OCQ 2 YX
B7 triangle OPQ 1 Y
B8 triangle DFP 1 Q
B9 quad OCDH 3 YZX
B10 quad OPFH 3 YZQ
B11 drop m OCQ 2 YX
B12 quad CDPF 1 Q
B13 mesh OHPQZY 1 2
```

```c1tt-sum
51 B10*B11; 22 B10*L3; 7 B12*L29; 27 B13*L4
246 B6*B0; 43 B6*L20; 57 B6*L5; 87 B6*L6
50 B7*L1; 88 B7*L11; 108 B7*L4; 43 B8*L29
68 B9*B4; 52 L1*L2*L23; 96 L1*L2*L25; 16 L1*L4*L6
36 L11*L23*B3; 26 L2*L21*L36; 11 L2*L29*B0; 18 L20*L22*L34
34 L21*B0; 18 L21*L22*L35; 31 L21*L27*L29; 164 L21*L27*L36
48 L21*L30*L37; 40 L21*L35; 17 L21*L35*L36; 56 L22*L34
17 L3*L11*L23; 41 L3*L23*L23; 78 L3*L4*B1; 55 L34
23 L34*L36; 81 L4*B2*B1; 2 L4*B4*B2; 2 L4*L16*B0
6 L4*L25*B0; 10 L4*L29*B3; 6 L4*L4*B2; 6 L4*L6*B0
6 L5*L21*B5; 42 L5*L21*L23; 9 L5*L21*L25; 37 L5*L5*L21
24 L5*L7*L21; 17 L6*L21*L34; 23 L7*L11*L23; 30 L7*L21*L35
8 L7*L22*L34; 14 L7*L34*B2; 46 L8*L23*L29; 5 M3*B0
50 TmCFP*L34; 57 TmCFQ*L4; 130 TmDFQ*L0; 246 TmDFQ*L23
65 TmDFQ*L29; 6 TmDFQ*L4; 7 TmHCY; 4 TmHCY*L20
82 TmHCY*L23; 5 TmHCY*L5; 145 TmHFP*B5; 108 TmHFP*L25
50 TmHFQ*B0; 108 TmHFQ*L20; 22 TmHFQ*L37; 13 TmHFQ*L5
72 TmHPQ; 76 TmHPQ*L31; 105 TmHPQ*L5; 32 TmHPQ*L7
23 TmOHP*L34; 131 TmOYP; 90 TmOYP*L26; 5 TmOYP*L31
41 TmOYP*L36; 54 TmOYP*L7; 68 TpCDP; 18 TpCDP*B4
36 TpCDP*B5; 40 TpCDP*L23; 57 TpCDP*L24; 210 TpCDP*L26
7 TpCDP*L31; 2 TpCDX*B0; 8 TpOYQ; 90 TpOYQ*L22
```

There are 88 positive integer entries. The exact coefficient-box upper bound is

`-1398972785747/91000000000000`.

### Leaf R2pmmm

```c1tt-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Y OCP OQ -1
via X OCY OQ -1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
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

```c1tt-factors
B0 drop p OHP 2 ZQ
B1 drop q OCP 2 YX
B2 drop m OCQ 2 YX
B3 topx P 1 Q
B4 topy P 1 Q
B5 triangle OHX 1 Z
B6 triangle OHP 2 ZQ
B7 triangle OCY 1 X
B8 triangle HCX 1 Y
B9 triangle DFP 1 Q
B10 quad OCDH 3 YZX
B11 quad OXFH 1 Z
B12 quad OPFH 2 ZQ
B13 quad HXCF 1 Y
B14 quad HDPF 1 Q
B15 quad CDPX 1 Y
B16 spread CPFX YQ CF -1 1457/250
B17 spread CPFX YQ PX -1 1457/250
B18 quad CPQX 1 Y
B19 quad FXYP 1 Q
```

```c1tt-sum
2 B10*B0; 3 B11*L1; 54 B12*L33; 2 B13*L10
1 B14*B2; 6 B14*L6; 9 B15*L10; 10 B16*L23
2 B17*L33; 2 B18*L33; 6 B19*L0; 16 B19*L23
4 B5*L11; 9 B6*B1; 3 B6*B3; 9 B6*L0
3 B6*L33; 10 B6*L4; 2 B6*L7; 36 B7*L1
50 B7*L17; 5 B8*L18; 6 B9*L29; 12 L0*B0*B1
14 L0*L22*B0; 20 L0*L3*L22; 11 L1*L4*L6; 4 L1*L6*B1
17 L1*L6*L22; 19 L1*L6*L33; 28 L1*L9*L22; 69 L10*L17
84 L10*L17*L17; 16 L10*L23*B3; 42 L11*L16*L16; 86 L11*L16*L22
10 L17*L18; 18 L17*L18*L35; 8 L18*L31; 3 L21*L30*B0
10 L23*L23*L31; 7 L28*L28*L34; 9 L29*B0*B1; 22 L3*L11*L22
12 L3*L22*L36; 5 L3*L23*L33; 5 L3*L4*L20; 6 L3*L9
36 L33*B0; 1 L33*L36*B0; 7 L36*B0*B2; 6 L4*B0*B0
45 L6*B1*B1; 1 L6*B1*B2; 11 L7*L23*L23; 16 L8*L23*L23
7 L9*L17*L17; 10 TmCFQ*L23; 1 TmDFQ*L0; 1 TmDFQ*L23
5 TmDFQ*L36; 1 TmFPQ*L30; 5 TmFPQ*L36; 1 TmFYX*L18
31 TmFYX*L23; 41 TmHCY; 5 TmHCY*L16; 34 TmHCY*L22
5 TmHCY*L28; 50 TmHFP*L22; 9 TmHFP*L36; 6 TmHFP*L7
1 TmHFQ*B4; 3 TmHPQ*B4; 3 TmHPQ*L22; 1 TmHPQ*L30
6 TmOHF*L1; 10 TmOHX*L3; 35 TmOYX*L17; 143 TmOYX*L22
60 TmOYX*L37; 99 TmYXP; 1 TmYXP*L10; 3 TpCDP*B3
9 TpCDP*L11; 6 TpCDP*L20; 3 TpCDP*L7; 38 TpCFY*L1
5 TpOPQ*B4; 1 TpOPQ*L22; 6 TpOYP*L18
```

There are 91 positive integer entries. The exact coefficient-box upper bound is

`-2024520779017/182000000000000`.

### Leaf R2pmmpm

```c1tt-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Y OCP OQ -1
via X OCY OQ -1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
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

```c1tt-factors
B0 topx Q 0 -
B1 drop m OCQ 2 YX
B2 drop p OHP 2 ZQ
B3 drop l OHQ 1 Z
B4 topy P 1 Q
B5 drop q OCP 2 YX
B6 topy Q 0 -
B7 topx P 1 Q
B8 topprojx Q 0 -
B9 triangle OHX 1 Z
B10 triangle OCP 2 YX
B11 triangle OCQ 2 YX
B12 triangle OXP 1 Y
B13 triangle HCX 1 Y
B14 triangle CXQ 1 Y
B15 triangle FXP 2 YQ
B16 triangle XPQ 1 Y
B17 quad OCDH 3 YZX
B18 quad OCFH 3 YZX
B19 quad OXFH 1 Z
B20 quad OQFH 1 Z
B21 quad OXYH 1 Z
B22 quad OYPH 2 ZQ
B23 quad CPFX 2 YQ
B24 quad CQFX 1 Y
```

```c1tt-sum
33 B10*L6; 24 B11*L1; 12 B11*L6; 12 B12*B1
10 B12*L11; 1 B12*L29; 1 B12*L6; 1 B13*L21
4 B14*L21; 1 B15*B0; 4 B15*L27; 25 B15*L29
1 B15*L34; 124 B16*L11; 35 B17*B0; 2 B17*L27
7 B17*L3; 14 B18*B5; 45 B19*B1; 41 B20*L33
6 B21*L23; 15 B22*L18; 1 B23*L18; 5 B24*L33
1 B8*L21; 1 B9*L11; 27 B9*L23; 12 B9*L34
17 L0*L22*B0; 4 L0*L23*L25; 2 L0*L35*B0; 25 L0*L4*B0
4 L0*L8*L23; 24 L1*L25*B1; 4 L1*L25*L29; 6 L11*L16*L20
8 L16*L23*L26; 1 L16*L23*L35; 28 L16*L23*L37; 5 L18*L20*L25
1 L18*L31*B0; 1 L18*L31*L35; 2 L2*L25*L33; 1 L21*B6*B6
1 L21*L23*L30; 1 L21*L24*L33; 1 L21*L26*B4; 2 L21*L26*B6
4 L21*L27*L28; 6 L21*L27*L29; 3 L21*L27*L30; 7 L21*L27*L36
5 L21*L30*L30; 12 L21*L30*L37; 1 L23*L23*B0; 1 L23*L24*L34
2 L23*L27*B0; 1 L23*L35*B0; 5 L29*B4*B0; 9 L29*L30*B0
2 L3*L18*L25; 3 L3*L19*B0; 23 L3*L23; 4 L3*L23*L30
10 L3*L23*L34; 9 L3*L4*B0; 38 L3*L4*L20; 19 L3*L4*L24
2 L3*L4*L27; 6 L3*L4*L30; 4 L3*L4*L36; 4 L4*B2*B3
27 L5*L21*L37; 8 L5*L6*B1; 1 L6*B4*B1; 1 L6*B4*B5
26 L6*B6*B1; 43 L6*L22*B1; 1 L7*L23*B0; 5 L9*L21*L26
22 TmCFQ*L0; 1 TmDFQ*L22; 45 TmDFQ*L36; 10 TmFPQ*L0
6 TmFPQ*L10; 2 TmFYX*L18; 25 TmFYX*L27; 13 TmFYX*L29
21 TmHCY; 12 TmHCY*L16; 14 TmHCY*L20; 5 TmHCY*L22
8 TmHCY*L25; 1 TmHCY*L28; 2 TmHCY*L7; 50 TmHFP*L25
12 TmHFQ; 25 TmHFQ*B6; 14 TmHFQ*L11; 50 TmHFQ*L20
45 TmHFQ*L22; 1 TmHFQ*L26; 9 TmHFQ*L30; 13 TmHFQ*L37
4 TmHPQ*L0; 4 TmHPQ*L10; 1 TmHPQ*L17; 1 TmHPQ*L23
2 TmHPQ*L27; 14 TmHPQ*L35; 1 TmHPQ*L4; 50 TmHPQ*L7
45 TmOYX*B1; 33 TmYXQ; 9 TmYXQ*L20; 149 TmYXQ*L22
39 TpCDP; 1 TpCDP*L23; 7 TpCDP*L24; 1 TpCDP*L26
6 TpCDP*L30; 3 TpCDP*L36; 1 TpCYX*B5; 5 TpCYX*L27
23 TpOCX*B7; 36 TpOCX*L25; 26 TpOPQ*L18; 17 TpOYP*L0
10 TpOYP*L25; 8 TpOYP*L3; 124 TpYPQ*L18; 149 TpYXP*L26
2 TpYXP*L37
```

There are 133 positive integer entries. The exact coefficient-box upper bound is

`-25386425629/1300000000000`.

### Leaf R2pmmpp

```c1tt-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Y OCP OQ -1
via X OCY OQ -1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
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

```c1tt-factors
B0 drop p OHP 2 ZQ
B1 topx Q 0 -
B2 topy Q 0 -
B3 drop l OHQ 1 Z
B4 drop m OCQ 2 YX
B5 topy P 1 Q
B6 topx P 1 Q
B7 triangle OHD 1 Z
B8 drop q OCP 2 YX
B9 triangle OCF 2 YX
B10 topprojx P 1 Q
B11 quad OXPQ 1 Y
B12 quad HZXC 1 Y
B13 quad HDPF 1 Q
```

```c1tt-sum
572 B10*L29; 6 B11*L23; 91 B12*L11; 127 B12*L18
1 B12*L23; 222 B13*L21; 1784 L0*L0*L17; 193 L0*L0*L34
403 L0*L1*L12; 93 L0*L1*L29; 32 L0*L12*L21; 46 L0*L15*L34
233 L0*L17*L23; 1324 L0*L17*L27; 12690 L0*L18*B0; 11438 L0*L21*L33
329 L0*L23*B1; 900 L0*L23*L35; 270 L0*L25*L29; 235 L0*L28*L35
4148 L0*L3*L11; 68 L0*L3*L15; 16389 L0*L3*L18; 415 L0*L3*L23
2856 L0*L3*L3; 6894 L0*L3*L34; 764 L0*L3*L4; 6460 L0*L33*L35
1020 L0*L34*B0; 441 L0*L35*L35; 1132 L0*L8*L23; 697 L1*L1*L6
33 L1*L12*L29; 303 L1*L21*L21; 2427 L1*L21*L34; 2096 L1*L3*L21
22 L1*L6*B2; 746 L1*L6*B3; 834 L1*L6*B4; 424 L1*L6*L14
9 L1*L6*L17; 3847 L1*L6*L21; 2575 L1*L6*L6; 4609 L10*L21*L21
65 L11*L12*L35; 271 L11*L18*L23; 1907 L11*L21*L23; 6720 L11*L21*L35
36 L12*L21*B5; 37 L12*L21*L23; 35 L12*L29*B5; 91 L12*L29*L33
65 L12*L33*L34; 55 L14*L28*L35; 3 L14*L35*L35; 55 L15*L18*L34
53 L15*L29*L35; 31 L15*L34*L34; 6 L16*L23*L23; 28 L17*L23*L25
27 L18*L21*L25; 5987 L18*L21*L35; 6 L18*L23*B0; 618 L18*L25*L29
11180 L2*L21*B5; 7416 L2*L21*L23; 1400 L2*L29*L29; 472 L2*L6*B2
449 L2*L6*B5; 788 L21*B5*B2; 28 L21*B5*B5; 1806 L21*L21*B2
1904 L21*L21*B5; 1904 L21*L21*L23; 2763 L21*L23*B2; 5949 L21*L23*B5
8738 L21*L23*L23; 1797 L21*L23*L29; 729 L21*L29*B2; 47 L21*L29*B5
2141 L21*L29*L33; 6219 L21*L33*L34; 1059 L23*B1*B0; 747 L23*B6*B3
12488 L23*B6*B4; 10513 L23*L23*B1; 2816 L23*L23*B6; 1439 L23*L23*L34
1439 L23*L23*L35; 232 L23*L28*L35; 901 L23*L29*L34; 503 L23*L33*L34
966 L23*L35*B0; 503 L23*L35*L35; 94 L29*L29*L29; 200 L29*L29*L33
6722 L29*L33*L34; 181 L29*L34*L35; 391 L3*L11*L11; 122 L3*L15*L18
19915 L3*L18*B0; 753 L3*L23*B1; 782 L3*L23*B4; 8933 L3*L23*L23
6525 L3*L23*L35; 6201 L3*L3*L11; 6311 L3*L3*L18; 2751 L3*L3*L23
1410 L3*L3*L3; 2738 L3*L3*L4; 5493 L3*L33*L35; 182 L3*L35*L35
11486 L3*L4*B0; 783 L3*L4*B2; 33 L3*L4*B5; 195 L3*L4*B6
3212 L3*L4*L18; 8153 L3*L4*L23; 4631 L4*L18*B0; 1068 L4*L23*B0
503 L4*L23*B1; 1009 L4*L23*B3; 24 L6*B5*B4; 16 L6*L11*L17
8 L6*L11*L29; 29 L6*L14*B5; 27 L6*L17*B4; 2 L6*L18*L29
1196 L6*L21*B2; 1354 L6*L21*B4; 1294 L6*L21*L23; 2575 L6*L23*B6
8 L6*L33*B4; 8 L6*L9*L18; 234 L8*L15*L18; 11429 L8*L23*L33
243 L9*L18*L23; 123 L9*L18*L29; 3641 L9*L21*L23; 1001 M2*L23
17 M3*L14; 1067 M3*L21; 6063 M3*L23; 32 M4*L21
1500 TmDFQ*L21; 1507 TmDFQ*L23; 461 TmDFQ*L29; 5983 TmFPQ*L0
14333 TmFPQ*L23; 10 TmHCY*B6; 1592 TmHCY*L1; 12121 TmHCY*L11
68 TmHCY*L12; 95 TmHCY*L15; 31 TmHCY*L16; 13729 TmHCY*L18
2371 TmHCY*L20; 1363 TmHCY*L22; 6004 TmHCY*L3; 858 TmHCY*L34
1004 TmHFP*B5; 1925 TmHFP*L25; 4936 TmHFP*L27; 2575 TmHFP*L6
24 TmHFQ*B5; 3188 TmHFQ*B8; 11 TmHFQ*B9; 270 TmHFQ*L1
27 TmHFQ*L17; 1622 TmHFQ*L20; 1410 TmHFQ*L22; 8 TmHFQ*L33
29 TmHFZ*B5; 424 TmHFZ*L1; 2672 TmHPQ*B6; 973 TmHPQ*L10
2369 TmHPQ*L21; 746 TmHPQ*L23; 260 TmHPQ*L28; 283 TmHPQ*L3
26209 TmHPQ*L33; 232 TmHPQ*L9; 257 TmHYX*B0; 17181 TmHYX*B4
233 TmHYX*B8; 15 TmHYX*B9; 1784 TmHYX*L1; 26820 TmHYX*L11
344 TmHYX*L15; 232 TmHYX*L25; 10000 TmHYX*L26; 16 TmHYX*L31
232 TmHYX*L34; 15 TmOHZ*B7; 6 TmOHZ*L23; 49 TmOHZ*L3
111 TmOHZ*L33; 3105 TpCDP; 23 TpCDP*B1; 41 TpCDP*B2
36 TpCDP*L12; 4632 TpCDP*L18; 2011 TpCDP*L21; 8936 TpCDP*L23
742 TpCDP*L26; 2748 TpCDP*L3; 775 TpCDP*L30; 281 TpCDP*L7
10 TpCZX*B7; 1 TpCZX*B8; 9 TpCZX*L11; 127 TpCZX*L19
53 TpCZX*L34; 1477 TpDPQ*L21; 437 TpDPQ*L29; 15763 TpOCX*B0
611 TpOCX*B3; 1417 TpOCX*B5; 8 TpOCX*B6; 2943 TpOCX*B7
2207 TpOCX*B8; 1972 TpOCX*L20; 6328 TpOCX*L3; 11 TpOCX*L34
1334 TpOCX*L35; 1682 TpOPQ*L23; 9 TpOPQ*L29; 4632 TpOYP*B0
8794 TpOYP*L0; 13506 TpOYP*L11; 14263 TpOYP*L18; 5627 TpOYP*L3
732 TpOYP*L34; 709 TpOYQ*L18; 2878 TpOYQ*L23; 3982 TpYPQ
713 TpYPQ*L10; 232 TpYPQ*L16; 26 TpYPQ*L21; 2878 TpYPQ*L23
4 TpYPQ*L30; 26469 TpYPQ*L33; 1328 TpYPQ*L36; 232 TpYPQ*L9
26 TpYXQ*B0; 18685 TpYXQ*B7; 7170 TpYXQ*L0; 26949 TpYXQ*L11
232 TpYXQ*L34; 194 TpYZX*B7; 139 TpYZX*L0; 130 TpYZX*L11
32 TpYZX*L21
```

There are 253 positive integer entries. The exact coefficient-box upper bound is

`-3215863510827/100000000000000`.

### Leaf R2pmp

```c1tt-geometry
imp OXP 1 ray
imp YZP -1 beyond
via Z OCQ OF -1
via Y OCP OQ -1
via X OCY OQ -1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Z OHY YQ 1
via Y OCP PQ 1
via Z OCQ PQ 1
via X OCY PQ 1
mesh OCQYXZ -1
via Y CXQ FX 1
```

```c1tt-factors
B0 topx Q 0 -
B1 drop m OCQ 3 YZX
B2 topy P 1 Q
B3 triangle OPQ 1 Z
B4 mesh OCQYXZ -1 2
```

```c1tt-sum
2 B3*L1; 11 B3*L13; 5 B4; 9 L0*B0
1 L0*L36*B0; 1 L0*L37*B0; 1 L1*L13; 1 L1*L6*L22
1 L1*L9*L26; 1 L21*B2; 1 L21*L23; 1 L21*L27
3 L21*L27*L36; 1 L21*L27*L37; 4 L23*B0; 1 L23*L37*B0
1 L3*L23; 4 L3*L26*L36; 6 L6*B1; 3 L6*L22*B1
4 L9*B1; 3 M1; 19 TmCFQ*L0; 2 TmCFQ*L10
3 TmHCY; 2 TmHCY*L26; 5 TmHFP*L25; 1 TmHFP*L29
22 TmHFQ; 5 TmHFQ*L20; 3 TmHFQ*L22; 2 TmHPQ
1 TmHPQ*L31; 1 TmHPQ*L36; 4 TmHPQ*L7; 2 TmOHF*B1
1 TmOZP; 11 TmOZP*L24; 1 TpCDP; 17 TpHCF*B1
1 TpOZQ; 11 TpOZQ*L20
```

There are 42 positive integer entries. The exact coefficient-box upper bound is

`-25119950729/1000000000000`.

### Leaf R2pp

```c1tt-geometry
imp OXP 1 ray
imp YZP -1 beyond
mesh OCPYXZ -1
via Z OCP OF -1
via Y OCP OQ -1
via Z OCP OQ -1
via X OCY OQ -1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Z OHY YQ 1
via Q OHP YX -1
via Y OCP PQ 1
via Z OCP PQ 1
via X OCY PQ 1
mesh OCQYXZ -1
via Y CXP FX 1
```

```c1tt-factors
B0 drop p OHP 1 Q
B1 drop m OCQ 3 YZX
B2 triangle OCP 3 YZX
B3 triangle HCP 1 Q
B4 quad OCFH 3 YZX
B5 quad OPFH 1 Q
B6 quad OCQF 3 YZX
B7 quad OCYZ 1 X
B8 quad OCPQ 3 YZX
B9 spread OYPF ZQ YF -1 1457/250
B10 quad OZPF 1 Q
B11 quad HZCF 1 Y
B12 drop q OCP 3 YZX
B13 quad HCPF 1 Q
B14 quad HYCP 1 Q
B15 quad HYPF 1 Q
B16 mesh OCPYXZ -1 1
B17 mesh OCPYXZ -1 2
B18 mesh OCQYXZ -1 2
```

```c1tt-sum
10 B10*L0; 5 B11*B12; 4 B13*B1; 5 B14*L14
1 B15*L14; 1 B15*L29; 2 B16*L9; 4 B17*L15
4 B18; 2 B2*L6; 1 B3*L10; 1 B4*L1
2 B5*L14; 4 B6*L23; 6 B7*L20; 3 B7*L22
4 B8*L1; 5 B9*L36; 4 L1*L21*L26; 7 L23*L31*L36
2 L3*L10*B0; 4 L3*L26*L36; 7 M1; 4 M1*L22
1 M1*L7; 22 TmCFQ*L0; 2 TmHCY; 5 TmHCY*L22
15 TmHFP; 17 TmHFQ; 4 TmHFQ*L22; 2 TmHFQ*L36
4 TmHPQ; 3 TmOFZ*L23; 5 TmOHF*B1; 3 TpCFY*L1
4 TpFYQ*L0; 14 TpHCF*B1; 1 TpHCF*L13; 7 TpOZP
4 TpOZP*L35; 9 TpOZP*L37
```

There are 42 positive integer entries. The exact coefficient-box upper bound is

`-1954678742339/91000000000000`.

### Leaf R5m

```c1tt-geometry
imp OZP -1 ray
imp YXP 1 beyond
via Y OHP OD 1
via Y OHP OQ 1
via Z OHY OQ 1
via X OCY DY 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via X OCY YQ -1
via Y OHP PQ -1
via Z OHY PQ -1
```

```c1tt-factors
B0 topy Q 0 -
B1 drop l OHQ 2 YZ
B2 topx P 1 Q
B3 topy P 1 Q
B4 drop p OHP 2 YZ
B5 triangle OHQ 2 YZ
B6 triangle DFP 1 Q
B7 spread OCPH YQ OP 1 1457/250
B8 spread OCPH YQ CH -1 1457/250
B9 spread OCPH ZQ CH -1 1457/250
B10 spread OCPH ZQ CH 1 1457/250
B11 quad ODFH 2 YZ
B12 quad OCPY 2 XQ
B13 quad HYCP 1 Q
B14 quad HXDF 1 Y
```

```c1tt-sum
16 B10*L34; 11 B11*L34; 780 B12*B0; 606 B12*B1
22 B12*B4; 29 B12*L23; 88 B12*L29; 7 B12*L30
183 B12*L35; 101 B12*L5; 96 B12*L6; 314 B13*L34
1 B14*L34; 300 B5*L4; 60 B6*L29; 27 B7*L34
313 B8*L34; 16 B9*L34; 62 CAPCDY*L21; 6 L0*L1*L34
14 L0*L23*L34; 35 L0*L25*L34; 4 L0*L34*L37; 9 L1*L1*L2
38 L1*L1*L6; 482 L1*L2*L23; 256 L1*L2*L25; 66 L1*L2*L6
38 L1*L20*L29; 33 L1*L21*B0; 28 L1*L21*L25; 181 L1*L23*B1
21 L1*L29*B2; 7 L1*L29*L35; 90 L1*L6*B0; 18 L1*L6*L11
3 L1*L6*L21; 28 L1*L6*L25; 188 L11*L28*B1; 1 L18*L24*L34
181 L18*L34*B1; 1015 L2*L18*B1; 950 L2*L2*B0; 88 L2*L2*L23
866 L2*L21*B0; 222 L2*L23*L35; 5 L2*L34*B3; 537 L2*L6*B0
384 L20*L34; 1 L21*L22*L27; 1 L21*L26*B3; 8 L21*L27
272 L21*L27*L36; 170 L21*L30*L35; 383 L21*L35; 91 L21*L35*L36
23 L21*L37*B3; 371 L22*L34; 263 L23*L25*L29; 14 L23*L29*L35
4 L29*L34*B0; 4 L29*L35*B0; 255 L3*L34; 634 L3*L4*B1
171 L3*L4*L35; 4 L3*L6*L34; 195 L34; 232 L34*L36
20 L4*L11*L16; 921 L4*L16*B1; 13 L4*L23*B1; 60 L4*L29*B2
4 L4*L34; 11 L4*L4*B1; 119 L4*L4*B4; 156 L4*L6*B0
1 L4*L9*L28; 232 L5*L21; 11 L5*L21*B0; 264 L5*L21*L37
117 L5*L5*L21; 27 L6*L11*B1; 8 L6*L20*L34; 7 L6*L21
28 L6*L21*L26; 8 L6*L21*L35; 8 L6*L22*L34; 12 L6*L26*L34
15 L6*L6*B0; 391 M3*B3; 337 M3*L21; 93 M4*B1
17 M4*L4; 103 TmDFQ*L0; 12 TmDFQ*L11; 751 TmDFQ*L23
555 TmDFQ*L29; 156 TmDFQ*L4; 15 TmDFQ*L6; 14 TmDFQ*L9
358 TmHCY*B0; 98 TmHCY*B4; 13 TmHCY*L1; 581 TmHCY*L23
257 TmHCY*L25; 9 TmHCY*L6; 84 TmHFP; 751 TmHFP*B0
60 TmHFP*L1; 7 TmHFP*L11; 28 TmHFP*L25; 39 TmHFP*L37
7 TmHFP*L9; 1 TmOHX*L34; 93 TmOHZ*B1; 78 TmOPQ*L1
153 TmOYP*L11; 22 TmOYP*L21; 606 TmOYP*L25; 751 TmOYP*L27
8 TmOYP*L29; 52 TmOYP*L31; 488 TmOYP*L36; 747 TmOYP*L4
210 TmOYP*L9; 141 TmOYQ*L4; 188 TmOYX*B1; 19 TmOYX*L4
79 TmYPQ; 29 TmYPQ*L22; 28 TmYPQ*L31; 350 TmYPQ*L36
321 TmYPQ*L37; 141 TmYPQ*L4; 42 TpCDP*L25; 672 TpCDP*L27
170 TpCDP*L35; 137 TpCDQ*B3; 43 TpCDQ*L20; 1286 TpCDQ*L22
358 TpCDQ*L29; 16 TpCDQ*L31; 14 TpCDQ*L35; 577 TpCDQ*L37
922 TpCDX*B1; 118 TpCDX*L4; 535 TpCPQ*B3; 29 TpCPQ*L11
506 TpCPQ*L23; 27 TpCPQ*L34; 9 TpDPQ*B3; 540 TpDPQ*L2
9 TpDPQ*L23; 718 TpDPQ*L29; 1 TpHDF*L21; 62 TpODY*L21
93 TpYZX*B1; 17 TpYZX*L4
```

There are 158 positive integer entries. The exact coefficient-box upper bound is

`-13187522823/1000000000000`.

### Leaf R5pm

```c1tt-geometry
imp OXP 1 ray
imp YZP -1 beyond
imp OZQ -1 ray
imp YXQ 1 beyond
mesh OCPQXY -1
via Y OHQ OD 1
via X OCY DY 1
via X OCZ DZ 1
via Z OHC DP 1
via Z OHC DQ 1
via X OHC DP 1
via X OHC DQ 1
via Z OHY FY -1
via Z OHX FX -1
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
via Z OHY PQ -1
```

```c1tt-factors
B0 topy P 1 Q
B1 drop l OHQ 2 YZ
B2 drop m OCQ 1 X
B3 topy Q 0 -
B4 topx P 1 Q
B5 drop q OCP 3 YXQ
B6 topx Q 0 -
B7 triangle OCF 2 YX
B8 triangle OHC 3 YZX
B9 triangle OHQ 2 YZ
B10 triangle OCP 3 YXQ
B11 triangle ODP 2 YQ
B12 triangle OPQ 1 Y
B13 triangle DFP 1 Q
B14 quad OCDH 3 YZX
B15 quad OCFH 3 YZX
B16 quad OCDP 3 YXQ
B17 quad CDPF 1 Q
```

```c1tt-sum
101 B10*L6; 41 B11*L21; 48 B11*L29; 22 B12*L3
36 B12*L6; 26 B13*L29; 17 B14*L34; 78 B15*B3
25 B15*L1; 33 B16*B1; 4 B16*B3; 64 B16*L1
22 B16*L21; 11 B17*L29; 61 B8*B3; 14 B8*B4
53 B9*B4; 46 B9*L3; 93 B9*L34; 371 B9*L4
8 L0*L11*B1; 20 L0*L20*L29; 13 L0*L21*L34; 46 L0*L25*L35
22 L0*L3*B0; 165 L0*L3*L27; 17 L1*L21*B2; 70 L1*L21*L21
18 L1*L23*L35; 190 L1*L4*B1; 14 L1*L6; 70 L1*L6*L21
161 L1*L6*L26; 13 L11*L21*L21; 38 L11*L21*L25; 19 L2*B1*B2
4 L2*B3*B3; 103 L2*L23*L36; 257 L2*L6*B3; 4 L21*B3*B3
63 L21*L21*B3; 4 L21*L23; 63 L21*L23*L25; 62 L21*L23*L31
23 L21*L25*B3; 17 L21*L30*L34; 23 L23*L25*L25; 10 L23*L25*L30
7 L23*L25*L34; 32 L23*L25*L35; 103 L23*L25*L36; 16 L23*L25*L37
2 L23*L26*L34; 2 L23*L26*L35; 4 L23*L27*B6; 11 L23*L30*L31
77 L23*L31*L36; 9 L23*L34*B3; 10 L23*L35*B3; 60 L23*L35*L37
22 L29*B4*B2; 29 L29*B6*B5; 20 L29*L34*B5; 11 L29*L37*B3
29 L3*L11*L21; 11 L3*L23*L27; 45 L3*L24*L34; 44 L3*L25*L35
201 L3*L27*B1; 3 L3*L3*L27; 14 L3*L4*L34; 247 L4*B1*B1
24 L4*B4*B1; 28 L4*L6*B4; 17 L6*B0*B1; 14 L6*B3*B5
177 L6*B5*B2; 8 L6*L21*B0; 93 L6*L21*B3; 3 L6*L29*L30
12 L8*L21*L23; 23 M3*B2; 132 M3*B3; 32 M3*B4
126 TmDFQ*B7; 129 TmDFQ*L21; 81 TmDFQ*L29; 72 TmDFQ*L37
2 TmDFQ*L6; 14 TmDYQ*L21; 73 TmHCY*B0; 31 TmHCY*B6
15 TmHCY*L24; 3 TmHCY*L30; 56 TmHCY*L5; 81 TmHFP
4 TmHFP*B3; 70 TmHFP*L21; 53 TmHFP*L24; 183 TmHFP*L26
21 TmHFP*L30; 35 TmHFP*L37; 57 TmOYQ*L20; 131 TmOYQ*L22
43 TmOYQ*L3; 156 TmOYQ*L36; 155 TpCDP*L27; 31 TpCDQ
43 TpCDQ*B6; 111 TpCDQ*L20; 149 TpCDQ*L22; 204 TpCDQ*L24
3 TpCDQ*L35; 99 TpCDQ*L36; 35 TpCPQ; 5 TpCPQ*B3
113 TpCPQ*L10; 63 TpCPQ*L21; 23 TpCPQ*L25; 143 TpCPQ*L30
40 TpCPQ*L35; 11 TpCPQ*L5; 3 TpDPQ*L35; 101 TpOYP
12 TpOYP*L21; 4 TpOYP*L24; 156 TpOYP*L26; 19 TpOYP*L30
13 TpOYP*L36
```

There are 129 positive integer entries. The exact coefficient-box upper bound is

`-835391293539/45500000000000`.

### Leaf R5pp

```c1tt-geometry
imp OXP 1 ray
imp YZP -1 beyond
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
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1tt-exclude
cluster OCP Q OCQ YX
```

### Leaf R7

```c1tt-geometry
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
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1tt-factors
B0 topx P 1 Q
B1 topy P 1 Q
B2 topx Q 0 -
B3 topy Q 0 -
B4 topprojx P 1 Q
B5 topprojy P 1 Q
B6 triangle CDP 1 Q
B7 triangle DFP 1 Q
B8 quad OCFH 3 YZX
B9 quad ODPF 1 Q
```

```c1tt-sum
7 B4*L4; 5 B5*L23; 36 B6*B3; 30 B6*L20
57 B6*L26; 11 B7*L24; 11 B7*L4; 7 B7*L6
25 B8*B1; 33 B9*L29; 6 L0*B0; 5 L0*L36*B0
32 L0*L7*B0; 30 L0*L7*L23; 3 L1*L21*B1; 1 L1*L21*L21
1 L1*L6*B2; 18 L1*L6*L22; 1 L1*L6*L24; 3 L2*B1
29 L2*L22*B1; 35 L2*L5*B1; 32 L21*B1*B1; 4 L21*L21*B1
29 L21*L21*B3; 4 L21*L21*L23; 32 L21*L23*B1; 22 L21*L23*L25
6 L21*L23*L31; 21 L21*L23*L37; 4 L23*B0*B2; 7 L23*L25
25 L23*L25*L36; 3 L27*B0*B0; 2 L3*L4*L26; 23 L4*L20*B0
15 L4*L4*B0; 6 L4*L6*B0; 3 L4*L6*B1; 2 L5*L21*B3
37 L6*L21*B3; 3 L6*L6*B3; 1 L7*L29; 21 L7*L7*L23
14 TmCPQ*B1; 16 TmCPQ*L22; 77 TmCPQ*L5; 8 TmDFQ
36 TmDFQ*L21; 2 TmDFQ*L22; 25 TmDFQ*L36; 38 TmHFP
2 TmHFP*L21; 5 TmHFP*L22; 1 TmHFP*L25; 20 TmHFP*L26
4 TmHFP*L36; 33 TmHFP*L7; 63 TpCDQ*L23; 79 TpDPQ
26 TpDPQ*L21; 30 TpDPQ*L22; 25 TpDPQ*L36; 6 TpDPQ*L7
1 TpHDQ*L21; 5 TpHDQ*L6
```

There are 66 positive integer entries. The exact coefficient-box upper bound is

`-321421679/5687500000`.

### Leaf R9

```c1tt-geometry
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
via Z OHC FP -1
via Z OHC FQ -1
via X OHC FP -1
via X OHC FQ -1
```

```c1tt-factors
B0 topx Q 1 P
B1 topy Q 1 P
B2 topy P 0 -
B3 topx P 0 -
B4 topprojx Q 1 P
B5 topprojy Q 1 P
B6 triangle HFQ 1 P
B7 triangle DFQ 1 P
B8 quad OCDH 3 YZX
B9 quad ODQF 1 P
```

```c1tt-sum
4 B4*L25; 7 B5*L6; 36 B6*B3; 57 B6*L20
30 B6*L26; 11 B7*L22; 8 B7*L4; 11 B7*L6
25 B8*B0; 31 B9*L29; 3 L0*B0; 29 L0*L24*B0
34 L0*L7*B0; 1 L1*L6*L20; 8 L2*B1; 4 L2*L37*B1
32 L2*L5*B1; 30 L2*L5*L25; 3 L21*B1*B1; 6 L23*L25
22 L23*L25*L27; 25 L23*L25*L37; 4 L25*B2*B1; 32 L25*L27*B0
4 L25*L27*L27; 6 L25*L27*L30; 20 L25*L27*L36; 31 L27*B0*B0
3 L27*L27*B0; 29 L27*L27*B3; 4 L3*L27*B0; 2 L3*L27*L27
1 L3*L4*B2; 1 L3*L4*L22; 19 L3*L4*L24; 37 L4*L27*B3
3 L4*L4*B3; 3 L4*L6*B0; 5 L4*L6*B1; 1 L5*L29
21 L5*L5*L25; 19 L6*L26*B1; 15 L6*L6*B1; 2 L7*L27*B3
1 TmCFP*L27; 5 TmCFP*L4; 8 TmDFP; 2 TmDFP*L24
36 TmDFP*L27; 25 TmDFP*L37; 63 TmHFP*L25; 14 TmHPQ*B0
16 TmHPQ*L24; 77 TmHPQ*L7; 39 TpCDQ; 20 TpCDQ*L20
1 TpCDQ*L23; 4 TpCDQ*L24; 2 TpCDQ*L27; 4 TpCDQ*L37
33 TpCDQ*L5; 79 TpFPQ; 30 TpFPQ*L24; 26 TpFPQ*L27
25 TpFPQ*L37; 6 TpFPQ*L5
```

There are 66 positive integer entries. The exact coefficient-box upper bound is

`-2038318719/91000000000`.


## 4. Completion

The convex cap-pair hull was excluded by the two explicit positive
polynomial identities in C1_THREE_LOWER_TOP_PAIR.md. In the complementary
triangular-hull case, the four roots and their binary refinements exhaust
all orientations. Every terminal branch has been excluded by a fixed
geometric contradiction or by a nonnegative cubic sum with a strictly
negative rational upper bound. This proves the theorem and closes the
whole three-lower/two-top-cap count.

The optional `check_c1_three_lower_two_top.py` reads all printed rows,
checks the tree and each geometric premise, and recomputes every sum
with `Fraction` arithmetic. It reuses the already published exact
polynomial and sign utilities from `check_c1_pentagon.py`. It uses no
optimizer, discovery JSON, coordinate search, or numerical rounding.
