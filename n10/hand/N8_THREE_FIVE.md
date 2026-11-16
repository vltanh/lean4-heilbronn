# Eight boundary points: complete exclusion of the 3/5 line class

This note closes the entire N8-3/5 class. Its ten sign rows are exhaustive,
and each has a fully printed nonnegative cubic whose exact upper bound is
negative. The tables contain 1,807 entries, all positive integers at most 12,175. Every geometric premise,
factor formula, and coefficient is supplied here or in the cited hand lemmas;
no numerical optimizer, adaptive coordinate cover, or external certificate
file is a premise. The other two N8 line classes remain separate obligations.

All areas are doubled. Put s=93/1000 and use

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,1), H=(0,h),
    O=(x,y), P=(u,v), U=u-x, V=v-y.

The boundary order is strict. Assume every actual unsigned triangle area is
at least s. The candidate has 2A*>s, so this exclusion suffices. Write
D(I,J,K)=det(J-I,K-I), and d_I=D(I,O,P). By the exhaustive catalogue in
N8_OP_LINE_CAPS.md, the 3/5 class can be oriented and relabeled so that

    d_A,d_B,d_C,d_D,d_E<0;       d_F,d_G,d_H>0.

No sign assumption on V is made.

## 1. Fixed geometric placement and all basic triangle signs

N8_TRIANGLE_CAPS.md proves, for this whole class,

    O inside AHF and AEH;       P inside AEF,
    AFO+, AFP-, AGP-, DGO+, CHP-, BGP-, EHO+,
    BFO+, CFO+, DFO+.

It also proves both points are strictly above AE and on the inner side of
HF in the boundary octagon. The following full basic sign catalogue follows.
A plus or minus always means the sign of the actual determinant D in the
printed order, and therefore gives a lower bound s on that signed area.

1. Every boundary triple in increasing cyclic order has positive determinant.
2. Every consecutive octagon edge, directed A to B through H to A, has
   positive determinant with either O or P.
3. For i<j within the arc A,B,C,D,E, both D(i,j,O) and D(i,j,P) are positive.
   The same holds for i<j within F,G,H. For the first arc, all vertices of
   the opposite cap AHGFE lie on the nonnegative side of each such chord;
   both points lie strictly in that cap. For the second arc, use their
   inner-side placement relative to HF. Strictness follows from the
   positive minimum area.
4. The eight OP signs are exactly the signs stated above.
5. The ten explicitly displayed derived signs above hold. In addition,
   EGO is positive and BHP is negative.

For the last two signs, O is inside AEH, whose vertices are on the
nonnegative side of EG, with strict signs at A and H. Hence EGO>0. Also

    D(B,H,P)=h*D(B,G,P)-v*[h*g+b*(1-h)]<0.

This proves BHP<0 directly. Thus no basic triangle orientation in this
proof is inferred from a numerical example.

## 2. The rational box and thirty-eight affine factors

N8_BOUNDARY_RANGES.md proves the constants

    ell=31/251,       c0=31657/55000,
    5115/31657 <= h-a,c-b,e-d,f-g <753/1000,
    e-a,h-d,f-b,c-g >21/250,       U>62/251.

Its coordinate bounds give the following closed box. Endpoints are included
only to enlarge the domain used in the polynomial upper bounds.

| i | Coordinate z_i | Lower l_i | Upper r_i |
|---:|---|---:|---:|
| 0 | a | ell | c0 |
| 1 | b | ell | c0 |
| 2 | c | 1-c0 | 1-ell |
| 3 | d | ell | c0 |
| 4 | e | 1-c0 | 1-ell |
| 5 | f | 1-c0 | 1-ell |
| 6 | g | ell | c0 |
| 7 | h | 1-c0 | 1-ell |
| 8 | x | ell | 1-ell |
| 9 | y | ell | 1-ell |
| 10 | u | ell | 1-ell |
| 11 | v | ell | 1-ell |

For i=0,...,11 set L_(2i)=z_i-l_i and L_(2i+1)=r_i-z_i.
Define the remaining factors by

```text
L24=h-a-5115/31657; L25=753/1000-h+a
L26=c-b-5115/31657; L27=753/1000-c+b
L28=e-d-5115/31657; L29=753/1000-e+d
L30=f-g-5115/31657; L31=753/1000-f+g
L32=e-a-21/250; L33=h-d-21/250
L34=f-b-21/250; L35=c-g-21/250
L36=u-x-62/251; L37=h-a-3s
```

All are nonnegative. The last one follows because the actual triangle AEH
contains O: its three fan triangles give area2(AEH)=h-a>=3s.

## 3. Nonlinear factors and their complete admissibility rules

For increasing labels I,J,K in the order A,B,C,D,E,F,G,H,O,P, define

    T+IJK=D(I,J,K)-s,       T-IJK=-D(I,J,K)-s.

A T factor is used only with a basic sign from Section 1 or an explicit
sign in its row below. These signs prove that it is nonnegative.

For a triangle or convex quadrilateral Q with boundary vertices in their
increasing cyclic order, write A(Q) for its doubled area. Explicitly,

    A(IJK)=D(I,J,K),
    A(IJKL)=D(I,J,K)+D(I,K,L).

The following factors are available when the indicated number n of O,P
is strictly inside Q:

| Factor | Formula | Required interior points |
|---|---|---:|
| C_IJK_1 | A(IJK)-3s | at least one |
| C_IJK_2 | A(IJK)-(149/20)s | both |
| C_IJKL_1 | A(IJKL)-(24/5)s | at least one |
| C_IJKL_2 | A(IJKL)-8s | both |

The first is the three-triangle fan bound. The second follows from
Gamma2=4+2sqrt(3)>149/20. The one-point quadrilateral theorem in
U3_FOUR_ONE_SIDE.md Section 3 gives the stronger constant 2(1+sqrt(2))>24/5.
The two-point quadrilateral bound is proved in N8_OP_LINE_CAPS.md Section 2.
For every C factor used in a row, the table below it names the contained
points. Membership is the explicit edge test D(Q_i,Q_(i+1),X)>0 around
the polygon; every one of those signs belongs to the basic catalogue or
the row signs. Thus there is no unlisted geometric occupancy assumption.

For each of the eight triangles

    AEF, CGH, ABE, CDG, BEF, DGH, ABF, CDH,

put K_Q=69/100-A(Q). These factors are positive by N8_TRIANGLE_CAPS.md;
the list is precisely the eight square-symmetry images of AEF.

Finally, suppose both O,P lie inside a convex quadrilateral Q=IJKL and
its two diagonals IK and JL strictly separate them. For either diagonal
MN, define

    R_Q_MN=A(Q)-(29/5)s-|d_N-d_M|.

This factor is nonnegative by the threshold-free spread theorem in
QUADRILATERAL_SPREAD.md: the stronger coefficient is 3+2sqrt(2)>29/5.
The diagonal vectors have determinant A(Q); hence the absolute difference
of the corresponding diagonal coordinate of P and O is |d_N-d_M|/A(Q).
In every use, M,N have opposite OP signs, so the absolute value has a
fixed polynomial sign. In particular,

    |d_N-d_M|=d_N-d_M if M is in ABCDE and N is in FGH,
    |d_N-d_M|=d_M-d_N in the reverse case.

Each R factor's table supplies both contained points and the signs at O,P
for both diagonals. Opposite signs prove strict separation. No upper bound
on A(Q), nor any assumption s/A(Q)>=1/11, is used here.

## 4. Ten exhaustive rows

The signs split the domain in this order: BHO, DHO, EHP, AGO, then BGO.
In the negative BGO branch split CHO and, if CHO is negative, CFP.
In the positive BGO branch split CFP and, if CFP is positive, BFP.
Every split uses an actual triangle, so a zero sign is impossible.
The table is therefore exhaustive, and its rows are disjoint. A dash
means no restriction on that triangle's sign.

| Row | BHO | DHO | EHP | AGO | BGO | CHO | CFP | BFP | Entries |
|---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|---:|
| 1 | + | — | — | — | — | — | — | — | 106 |
| 2 | - | - | — | — | — | — | — | — | 147 |
| 3 | - | + | + | — | — | — | — | — | 204 |
| 4 | - | + | - | + | — | — | — | — | 156 |
| 5 | - | + | - | - | - | + | — | — | 184 |
| 6 | - | + | - | - | - | - | + | — | 227 |
| 7 | - | + | - | - | - | - | - | — | 190 |
| 8 | - | + | - | - | + | — | - | — | 190 |
| 9 | - | + | - | - | + | — | + | + | 199 |
| 10 | - | + | - | - | + | — | + | - | 204 |

## 5. Exact polynomial rule

An entry `n factor` means n times the displayed factor or product. Every n
is a positive integer and all factors are nonnegative in that row. Their
sum W therefore satisfies W>=0. All displayed products have degree at most
three.

For its upper bound substitute z_i=l_i+t_i, where
0<=t_i<=w_i:=r_i-l_i, and expand

    W=c_0+sum_(e!=0) c_e t_0^e0 ... t_11^e11.

Discard negative nonconstant terms and bound each positive monomial at
its upper box endpoints. The exact rational upper bound is

    U(W)=c_0+sum_(e!=0,c_e>0) c_e product_i w_i^e_i.

Each row below prints the exact result of this expansion. All are negative,
contradicting W>=0. The optional checker reads these printed tables and
uses rational arithmetic only; it is not a premise of the inequalities.

## 6. All coefficient tables

### Row 1: BHO+

There are 106 positive integer entries. Their exact bound is

    U(W)=-100006954960894252259695893/83287339459152125000000000<0.

```text
16 L11*L16;  30 L12*L15;  136 L15*L16
4 L15*L25;  125 L15*L31;  297 L0*L3*L16
193 L0*L5*L27;  2 L0*L7*L16;  3 L0*L10*L11
5 L0*L25*L27;  132 L0*L27*L27;  2 L0*L27*L29
36 L1*L16*L31;  292 L2*L3*L15;  10 L2*L5*L29
4 L2*L11*L29;  4 L2*L15*L34;  133 L2*L25*L25
17 L3*L3*L14;  312 L3*L3*L19;  12 L3*L8*L16
48 L3*L16*L25;  22 L3*L19*L26;  22 L3*L26*L37
22 L3*L37*L37;  31 L4*L15*L31;  59 L5*L27*L29
76 L5*L29*L29;  1 L5*L29*L30;  29 L6*L10*L11
37 L6*L27*L27;  13 L6*L27*L29;  3 L8*L11*L16
13 L9*L11*L29;  13 L9*L16*L29;  77 L11*L16*L32
15 L11*L18*L29;  32 L11*L18*L31;  5 L11*L29*L29
12 L16*L25*L34;  12 L25*L27*L31;  268 T+ABC
214 T+ABC*L5;  12 T+ABC*L12;  9 T+ABC*L16
5 T+ABC*L25;  110 T+ABC*L27;  2 T+ABC*L29
18 T+BCD;  12 T+BCD*L11;  37 T+BCD*L27
13 T+BCD*L29;  17 T+BCF*L16*L25;  51 T+CDE
10 T+CDE*L2;  12 T+CDE*L10;  59 T+CDE*L27
76 T+CDE*L29;  1 T+CDE*L30;  12 T+CEF*L16
27 T+DEF;  2 T+DEF*L0;  20 T+DEF*L10
5 T+DEF*L29;  9 T+DEF*L34;  122 T+FGH
9 T+FGH*L2;  19 T+FGH*L4;  12 T+FGH*L17
4 T+ABO*L12;  94 T+AEO*L11;  29 T+AEP*L11
31 T+AEP*L16;  30 T+GHO;  15 T+GHO*L2
18 T+EFP;  15 T+EFP*L16;  17 T+EFP*L20
12 T+EFP*L27;  13 T+EFP*L29;  346 T-AHO
357 T-AHO*L3;  38 T-AHO*L26;  10 T-AOP
12 T-AOP*L4;  8 T-AOP*L10;  17 T-AOP*L21
12 T-AOP*L34;  13 T-EOP*L10;  17 T-EOP*L20
12 T-EOP*L27;  13 T-EOP*L29;  13 T+FOP*L29
106 T+AFO;  33 T+AFO*L21;  2 T+AFO*L29
32 T+AFO*L31;  2 T-AFP*L17;  12 T-AFP*L27
17 T-AFP*L36;  172 T+BHO;  324 T+BHO*L3
10 T+BHO*L26;  12 T+BHO*L35;  111 C_ABH_1*L25
29 C_AEF_1*L11
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_ABH_1 | O | all polygon edges positive |
| C_AEF_1 | P | all polygon edges positive |

### Row 2: BHO-,DHO-

There are 147 positive integer entries. Their exact bound is

    U(W)=-12070303920859971732131297/4164366972957606250000000<0.

```text
156 L5*L6;  7 L0*L6*L17;  240 L0*L10*L11
44 L0*L10*L15;  47 L0*L11*L36;  17 L0*L15*L27
37 L0*L17*L21;  54 L0*L17*L27;  278 L0*L17*L36
157 L0*L21*L21;  62 L0*L21*L36;  17 L0*L27*L32
125 L1*L6*L16;  10 L1*L6*L27;  34 L2*L9*L25
3 L2*L15*L29;  2 L2*L17*L25;  55 L2*L25*L25
1 L2*L25*L29;  2 L2*L25*L36;  2 L5*L6*L10
27 L5*L6*L16;  14 L5*L6*L20;  2 L5*L9*L36
2 L5*L11*L18;  94 L5*L29*L29;  3 L5*L29*L37
155 L6*L9*L16;  249 L6*L9*L27;  15 L6*L12*L15
260 L6*L16*L17;  71 L6*L16*L36;  100 L6*L16*L37
2 L6*L19*L27;  76 L8*L21*L25;  140 L8*L25*L36
102 L9*L9*L11;  274 L9*L11*L14;  178 L9*L11*L19
82 L9*L16*L29;  133 L10*L15*L36;  240 L11*L11*L18
32 L11*L14*L14;  125 L11*L14*L18;  99 L11*L14*L21
62 L11*L14*L37;  227 L11*L15*L16;  86 L11*L16*L18
81 L11*L19*L36;  34 L11*L21*L37;  73 L11*L23*L25
93 L12*L15*L25;  15 L12*L19*L25;  15 L15*L15*L21
15 L15*L15*L36;  101 L15*L16*L16;  57 L15*L21*L25
39 L15*L25*L36;  94 L15*L36*L36;  546 L16*L29*L29
245 L19*L21*L25;  245 L19*L25*L36;  105 L21*L25*L25
94 L21*L25*L36;  114 L25*L25*L36;  10 T+ABC*L7
17 T+ABC*L15;  54 T+ABC*L17;  3 T+ABC*L28
17 T+ABC*L32;  42 T+ABH;  4 T+ABH*L17
2 T+ABH*L20;  55 T+ABH*L25;  38 T+ABH*L29
34 T+ADH*L5*L6;  193 T+BCD;  249 T+BCD*L9
31 T+BCD*L16;  2 T+BCD*L19;  12 T+BCD*L20
34 T+BCD*L24;  42 T+CDE;  2 T+CDE*L10
3 T+CDE*L14;  2 T+CDE*L17;  94 T+CDE*L29
2 T+CDE*L36;  18 T+DEF*L18;  93 T+FGH*L25
149 T+EFP;  149 T+EFP*L1;  1 T+EFP*L5
102 T+EFP*L9;  103 T+EFP*L16;  244 T+EFP*L18
258 T+EFP*L20;  1 T+EFP*L22;  274 T+EFP*L24
9 T-AOP*L0;  276 T-AOP*L11;  21 T-EOP
149 T-EOP*L1;  2 T-EOP*L5;  102 T-EOP*L9
258 T-EOP*L11;  593 T-EOP*L16;  245 T-EOP*L18
258 T-EOP*L20;  1 T-EOP*L22;  210 T-EOP*L24
149 T+FOP*L1;  1 T+FOP*L5;  103 T+FOP*L9
526 T+FOP*L16;  245 T+FOP*L18;  258 T+FOP*L20
1 T+FOP*L22;  201 T+FOP*L24;  9 T+HOP*L14
67 T+HOP*L16;  29 T+AFO*L0;  524 T+AFO*L8
240 T+AFO*L11;  245 T+AFO*L19;  164 T+AFO*L21
76 T+AFO*L25;  18 T+AFO*L28;  359 T+AFO*L36
111 T-AFP*L16;  15 T+DGO*L25;  424 T+EHO
44 T+EHO*L1;  360 T+EHO*L10;  73 T+EHO*L15
361 T+EHO*L17;  245 T+EHO*L19;  527 T+EHO*L29
233 T+EHO*L36;  475 T-DHO;  132 T-DHO*L1
256 T-DHO*L9;  260 T-DHO*L17;  104 T-DHO*L24
546 T-DHO*L29;  71 T-DHO*L36;  18 C_DEH_1*L0*L10
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_DEH_1 | O | all polygon edges positive |

### Row 3: EHP+,BHO-,DHO+

There are 204 positive integer entries. Their exact bound is

    U(W)=-352035561848494912715091/344162559748562500000000<0.

```text
11999 L0*L2*L5;  345 L0*L5*L6;  1569 L0*L5*L11
523 L0*L5*L15;  523 L0*L5*L18;  938 L0*L5*L31
308 L0*L11*L12;  8 L0*L12*L21;  29 L0*L15*L16
367 L0*L21*L31;  3845 L0*L27*L27;  3271 L0*L27*L36
510 L0*L36*L36;  1154 L2*L5*L19;  777 L2*L5*L25
5123 L2*L8*L36;  6802 L2*L9*L16;  297 L2*L9*L19
5306 L2*L11*L23;  7249 L2*L12*L15;  692 L2*L15*L21
1069 L3*L16*L23;  154 L5*L5*L29;  76 L5*L6*L12
119 L5*L6*L16;  101 L5*L6*L29;  509 L5*L6*L36
374 L5*L11*L18;  166 L5*L12*L29;  5221 L5*L15*L16
224 L5*L23*L29;  520 L5*L27*L29;  808 L5*L29*L29
132 L6*L9*L27;  547 L6*L11*L23;  126 L6*L23*L27
263 L6*L27*L27;  149 L6*L27*L29;  83 L6*L27*L36
1202 L8*L8*L36;  13 L8*L12*L36;  4357 L8*L16*L36
3673 L8*L36*L36;  1239 L9*L9*L16;  627 L9*L9*L21
1244 L9*L11*L11;  339 L9*L11*L15;  7100 L9*L11*L16
52 L9*L15*L16;  28 L9*L15*L21;  56 L9*L21*L21
386 L9*L21*L25;  3472 L11*L11*L15;  4771 L11*L11*L18
299 L11*L12*L29;  494 L11*L15*L15;  2599 L11*L15*L16
285 L11*L15*L18;  1632 L11*L15*L21;  9452 L11*L15*L31
208 L11*L18*L25;  1273 L11*L18*L31;  406 L11*L23*L27
4127 L11*L23*L36;  8068 L12*L15*L25;  2500 L12*L15*L36
29 L15*L15*L31;  1059 L15*L16*L21;  11581 L15*L16*L31
1796 L15*L31*L31;  10845 T+ABC*L2;  49 T+ABC*L6
297 T+ABC*L8;  1537 T+ABC*L11;  523 T+ABC*L15
3996 T+ABC*L17;  523 T+ABC*L18;  3845 T+ABC*L27
938 T+ABC*L31;  3373 T+ABC*L36;  105 T+BCD
132 T+BCD*L9;  76 T+BCD*L12;  17 T+BCD*L20
126 T+BCD*L23;  263 T+BCD*L27;  149 T+BCD*L29
67 T+BCD*L36;  640 T+CDE;  297 T+CDE*L0
154 T+CDE*L5;  101 T+CDE*L6;  166 T+CDE*L12
103 T+CDE*L20;  224 T+CDE*L23;  520 T+CDE*L27
808 T+CDE*L29;  406 T+CDE*L36;  299 T+DEF*L12
547 T+DEF*L23;  8068 T+FGH*L0;  8187 T+FGH*L2
8377 T+FGH*L11;  23 T+FGH*L14;  9840 T+FGH*L16
8121 T+FGH*L19;  1543 T+FGH*L31;  2862 T+FGH*L36
1106 T+ABO;  394 T+ABO*L11;  1859 T+ABO*L14
455 T+ABO*L17;  988 T+ABO*L19;  1409 T+ABO*L20
1643 T+ABO*L24;  2665 T+ABO*L27;  1722 T+ABO*L31
550 T+ABO*L32;  1403 T+GHO;  2131 T+GHO*L2
1328 T+GHO*L11;  8121 T+GHO*L15;  109 T+GHO*L20
253 T+GHO*L31;  208 T+EFP*L0;  1244 T+EFP*L11
2388 T+EFP*L16;  117 T+EFP*L21;  226 T+EFP*L25
37 T-AOP*L8;  534 T-AOP*L12;  6524 T-AOP*L21
5145 T-AOP*L34;  3912 T-EOP;  208 T-EOP*L0
11095 T-EOP*L2;  37 T-EOP*L9;  4711 T-EOP*L11
684 T-EOP*L16;  12175 T-EOP*L20;  831 T-EOP*L27
425 T-EOP*L35;  405 T+FOP*L0;  5306 T+FOP*L2
1244 T+FOP*L11;  594 T+FOP*L16;  406 T+FOP*L27
662 T+FOP*L36;  5741 T+HOP*L16;  4989 T+HOP*L36
4800 T+AFO*L11;  277 T+AFO*L13;  8614 T+AFO*L15
68 T+AFO*L16;  2339 T+AFO*L21;  196 T+AFO*L23
32 T+AFO*L35;  547 T-AFP*L8;  196 T-AFP*L19
3347 T-AFP*L36;  3186 T+EHP;  6467 T+EHP*L2
611 T+EHP*L9;  3585 T+EHP*L11;  2215 T+EHP*L17
28 T+EHP*L24;  336 T+EHP*L27;  438 T+EHP*L35
8675 T+EHP*L36;  787 T-BHO*L1;  1154 T-BHO*L3
846 T-BHO*L9;  3187 T-BHO*L11;  455 T-BHO*L16
988 T-BHO*L18;  2478 T-BHO*L21;  1511 T-BHO*L26
409 T-BHO*L31;  2202 C_AEH_2*L16;  2193 C_AEH_2*L0*L2
1398 C_AEH_2*L1*L16;  846 C_AEH_2*L2*L9;  2255 C_AEH_2*L2*L16
2515 C_AEH_2*L2*L19;  734 C_AEH_2*L2*L26;  2660 C_AEH_2*L2*L30
1931 C_AEH_2*L2*L34;  3633 C_AEH_2*L2*L36;  103 C_AEH_2*L4*L36
113 C_AEH_2*L8*L10;  4800 C_AEH_2*L11*L11;  546 C_AEH_2*L11*L15
3239 C_AEH_2*L11*L16;  226 C_AEH_2*L11*L23;  28 C_AEH_2*L14*L36
8093 C_AEH_2*L15*L16;  1143 C_AEH_2*L16*L17;  988 C_AEH_2*L16*L19
6629 C_AEH_2*L16*L27;  1038 C_AEH_2*L16*L31;  795 C_AEH_2*L16*L32
2246 C_AEH_2*L16*L36;  909 C_AEH_2*L30*L36;  3686 C_AEH_2*L36*L36
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_AEH_2 | OP | all polygon edges positive |

### Row 4: EHP-,BHO-,DHO+,AGO+

There are 156 positive integer entries. Their exact bound is

    U(W)=-3391787241618025267483426148307/527325461051675764225000000000<0.

```text
9 L0*L5;  116 L0*L2*L7;  156 L0*L2*L15
105 L0*L2*L28;  15 L0*L5*L10;  7 L0*L5*L12
3 L0*L5*L17;  69 L0*L11*L11;  3 L0*L11*L36
1004 L0*L12*L13;  84 L0*L13*L16;  46 L0*L15*L27
5 L0*L15*L36;  252 L0*L17*L27;  21 L0*L21*L30
5 L0*L25*L36;  4 L0*L27*L36;  130 L1*L15*L16
47 L2*L7*L19;  23 L2*L11*L29;  42 L2*L12*L15
58 L2*L15*L25;  7 L2*L15*L31;  614 L2*L16*L33
58 L2*L19*L28;  4 L5*L6*L17;  4 L5*L6*L25
55 L5*L6*L29;  51 L5*L11*L37;  7 L5*L13*L18
47 L6*L6*L17;  25 L6*L9*L11;  7 L6*L9*L16
24 L6*L11*L21;  490 L6*L11*L29;  9 L6*L11*L35
27 L6*L12*L19;  112 L6*L13*L18;  49 L6*L15*L31
4 L6*L21*L27;  13 L7*L13*L16;  38 L7*L15*L16
32 L8*L13*L36;  496 L9*L11*L11;  71 L9*L11*L15
227 L9*L11*L16;  11 L11*L11*L23;  19 L11*L11*L29
526 L11*L12*L15;  636 L11*L15*L16;  14 L11*L15*L19
309 L11*L15*L29;  108 L11*L16*L25;  30 L11*L16*L29
15 L11*L27*L29;  369 L12*L15*L25;  388 L12*L25*L25
907 L13*L13*L18;  2 L13*L13*L32;  112 L13*L18*L30
94 L15*L25*L31;  271 L16*L25*L28;  33 L16*L25*L35
32 L16*L28*L30;  15 L25*L25*L31;  45 L30*L30*L37
4 T+ABC*L8;  66 T+ABC*L10;  46 T+ABC*L15
252 T+ABC*L17;  43 T+ABC*L28;  4 T+ABC*L36
379 T+ABH*L19;  58 T+ABH*L28;  1 T+ADH*L6*L11
42 T+BCD*L11;  4 T+BCD*L15;  4 T+BCD*L21
55 T+CDE;  47 T+CDE*L0;  55 T+CDE*L6
333 T+DEF;  4 T+DEF*L4;  443 T+DEF*L6
380 T+DEF*L15;  24 T+DEF*L21;  4 T+DEF*L26
1 T+DEF*L29;  19 T+DEF*L31;  1 T+DEF*L32
28 T+DEF*L35;  2 T+EFG*L30;  722 T+FGH
23 T+FGH*L7;  34 T+FGH*L10;  688 T+FGH*L16
14 T+FGH*L19;  70 T+FGH*L20;  107 T+FGH*L23
109 T+FGH*L25;  12 T+FGH*L30;  51 T+FGH*L35
201 T+ABO*L14;  7 T+ABO*L31;  120 T+ABO*L33
58 T+FGP*L10;  107 T+FGP*L14;  15 T+FGP*L37
5 T+GHO*L25;  26 T+EFP;  4 T+EFP*L1
8 T+EFP*L10;  37 T+EFP*L30;  1100 T-AHO*L13
271 T-AHO*L28;  29 T-AHO*L35;  3 T-AFP*L11
4 T-AFP*L15;  10 T-AFP*L25;  21 T-AFP*L31
22 T-EHP;  4 T-EHP*L1;  70 T-EHP*L30
488 T-BHO;  473 T-BHO*L1;  4 T-BHO*L24
7 T-BHO*L30;  58 T-BHO*L32;  54 T-BHO*L33
358 T+DHO;  548 T+DHO*L2;  47 T+DHO*L6
12 T+DHO*L24;  66 T+DHO*L27;  63 T+DHO*L30
7 T+DHO*L32;  62 T+DHO*L35;  456 T+AGO
5 T+AGO*L0;  7 T+AGO*L5;  139 T+AGO*L6
907 T+AGO*L13;  9 T+AGO*L14;  112 T+AGO*L30
33 C_AGH_1*L13;  345 C_AGH_1*L15;  15 C_AGH_1*L23
407 C_AGH_1*L25;  51 C_ADEH_1*L15*L16;  5 C_EFGH_1*L0
9 C_EFGH_1*L5;  71 C_EFGH_1*L6;  493 C_EFGH_1*L11
290 C_EFGH_1*L16;  42 C_EFGH_1*L27;  51 C_EFGH_1*L31
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_ADEH_1 | O | all polygon edges positive |
| C_AGH_1 | O | all polygon edges positive |
| C_EFGH_1 | P | all polygon edges positive |

### Row 5: EHP-,BHO-,DHO+,AGO-,BGO-,CHO+

There are 184 positive integer entries. Their exact bound is

    U(W)=-109458339660573356099827027/20821834864788031250000000<0.

```text
7 L0*L0*L17;  75 L0*L0*L34;  1 L0*L0*L36
67 L0*L5*L5;  142 L0*L5*L11;  23 L0*L5*L14
73 L0*L5*L19;  6 L0*L5*L20;  93 L0*L5*L27
8 L0*L11*L16;  5 L0*L12*L36;  57 L0*L27*L36
81 L2*L4*L15;  175 L2*L5*L6;  148 L2*L6*L11
148 L2*L15*L17;  549 L2*L15*L18;  6 L2*L25*L36
16 L4*L15*L15;  169 L4*L15*L18;  6 L4*L15*L21
21 L4*L15*L25;  175 L5*L5*L8;  3 L5*L6*L10
29 L5*L6*L14;  33 L5*L6*L27;  30 L5*L6*L37
158 L5*L12*L18;  236 L5*L14*L27;  313 L5*L16*L25
23 L5*L19*L25;  57 L5*L19*L27;  83 L5*L29*L29
10 L6*L9*L27;  104 L6*L10*L11;  152 L6*L11*L16
16 L6*L11*L20;  5 L6*L17*L27;  18 L6*L21*L27
21 L6*L25*L36;  72 L6*L27*L27;  3 L6*L27*L37
13 L8*L12*L36;  24 L8*L15*L31;  60 L8*L21*L25
48 L8*L25*L36;  18 L9*L9*L11;  101 L9*L11*L11
67 L9*L11*L29;  159 L11*L11*L37;  29 L11*L12*L18
15 L11*L12*L23;  12 L11*L15*L36;  472 L11*L16*L25
97 L11*L18*L25;  10 L11*L23*L25;  398 L12*L15*L16
10 L12*L15*L19;  3 L12*L15*L27;  13 L12*L16*L32
597 L12*L19*L25;  23 L15*L15*L17;  1 L15*L15*L21
104 L15*L15*L35;  52 L15*L25*L35;  5 L15*L31*L36
171 L18*L31*L31;  179 L19*L27*L27;  15 L21*L25*L25
14 L25*L25*L36;  12 L25*L31*L36;  160 T+ABC*L5
4 T+ABC*L10;  377 T+ABC*L21;  29 T+ABC*L28
28 T+ABC*L34;  434 T+ABC*L36;  483 T+ABH*L5
395 T+ABH*L12;  253 T+AGH*L2;  276 T+AGH*L11
98 T+AGH*L18;  45 T+BCD;  30 T+BCD*L1
208 T+BCD*L5;  10 T+BCD*L9;  154 T+BCD*L11
5 T+BCD*L17;  59 T+BCD*L18;  18 T+BCD*L21
3 T+BCD*L24;  72 T+BCD*L27;  147 T+CDE
29 T+CDE*L0;  175 T+CDE*L4;  38 T+CDE*L14
38 T+CDE*L19;  83 T+CDE*L29;  21 T+DEF
65 T+DEF*L1;  155 T+DEF*L4;  18 T+DEF*L7
64 T+DEF*L9;  100 T+DEF*L10;  152 T+DEF*L16
38 T+DEF*L18;  16 T+DEF*L20;  6 T+DEF*L34
2 T+DEF*L35;  97 T+FGH*L0;  168 T+FGH*L4
14 T+FGH*L8;  50 T+FGH*L10;  21 T+FGH*L30
104 T+FGH*L36;  2 T+ABO;  6 T+ABO*L1
28 T+ABO*L2;  514 T+ABO*L10;  59 T+ABO*L29
126 T+ABO*L30;  69 T+ABO*L32;  523 T+ABO*L35
195 T+GHO*L4;  21 T+GHO*L12;  155 T+GHO*L24
355 T+GHO*L26;  10 T+GHO*L32;  291 T+GHO*L34
112 T+EFP;  10 T+EFP*L11;  10 T+EFP*L24
6 T+EFP*L27;  21 T+EFP*L29;  2 T+EFP*L31
46 T-AOP*L11;  44 T-AOP*L16;  5 T-AOP*L31
45 T+FOP;  5 T+FOP*L12;  44 T+FOP*L16
489 T+AFO*L3;  503 T+AFO*L12;  7 T+AFO*L20
97 T+AFO*L25;  168 T+AFO*L26;  38 T+AFO*L28
171 T+AFO*L31;  44 T+AFO*L36;  7 T-AFP*L16
6 T-AFP*L27;  21 T-AFP*L29;  12 T-AFP*L31
48 T-EHP;  164 T-EHP*L11;  1 T-EHP*L24
6 T-EHP*L27;  21 T-EHP*L29;  15 T-EHP*L31
162 T-BGO;  9 T-BGO*L2;  17 T-BGO*L10
150 T-BGO*L12;  10 T-BGO*L14;  530 T-BGO*L24
138 T-BGO*L27;  10 T-BGO*L29;  10 T-BGO*L33
162 T+CHO*L2;  21 T+CHO*L6;  30 T+CHO*L8
88 T+CHO*L15;  104 T+CHO*L25;  638 T+CHO*L27
168 T+CHO*L30;  8 T+CHO*L32;  402 T+CHO*L35
88 R_AEFH_EH*L11;  2 C_BFG_1*L6*L11;  166 C_BFG_1*L15*L21
16 C_EFGH_1*L0;  151 C_EFGH_1*L5;  107 C_EFGH_1*L11
63 C_EFGH_1*L36
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_BFG_1 | O | all polygon edges positive |
| C_EFGH_1 | P | all polygon edges positive |
| R_AEFH_EH | OP | AF:+-, EH:+- |

### Row 6: EHP-,BHO-,DHO+,AGO-,BGO-,CHO-,CFP+

There are 227 positive integer entries. Their exact bound is

    U(W)=-86343946065262776220780277/41643669729576062500000000<0.

```text
20 L0*L0*L21;  84 L0*L5*L8;  16 L0*L5*L27
164 L0*L5*L36;  62 L0*L6*L17;  39 L0*L6*L21
33 L0*L8*L36;  106 L0*L9*L11;  30 L0*L10*L15
139 L0*L11*L21;  55 L0*L11*L27;  90 L0*L11*L36
15 L0*L11*L37;  9 L0*L16*L36;  18 L0*L27*L27
100 L0*L27*L36;  9 L0*L31*L36;  160 L2*L4*L15
20 L2*L6*L28;  35 L2*L7*L25;  19 L2*L15*L19
11 L2*L15*L26;  150 L2*L16*L28;  30 L2*L19*L23
43 L2*L19*L25;  9 L2*L19*L28;  16 L2*L25*L28
14 L2*L25*L36;  9 L4*L4*L37;  251 L4*L7*L16
163 L4*L8*L36;  15 L4*L11*L37;  176 L4*L15*L36
9 L5*L5*L25;  35 L5*L6*L19;  57 L5*L11*L23
77 L5*L12*L15;  1 L5*L15*L15;  7 L5*L15*L16
89 L5*L15*L23;  67 L5*L15*L31;  35 L6*L6*L21
35 L6*L6*L36;  89 L6*L10*L11;  195 L6*L11*L16
265 L6*L11*L18;  128 L6*L11*L23;  80 L6*L12*L19
39 L6*L16*L28;  87 L6*L21*L23;  20 L6*L21*L25
87 L6*L23*L36;  73 L6*L25*L36;  15 L6*L27*L36
25 L7*L15*L16;  171 L8*L8*L36;  97 L8*L15*L31
171 L8*L16*L28;  147 L8*L25*L36;  37 L9*L9*L11
12 L9*L11*L12;  7 L9*L11*L21;  38 L9*L16*L23
5 L10*L25*L25;  109 L11*L11*L18;  104 L11*L11*L37
19 L11*L12*L29;  78 L11*L15*L16;  15 L11*L15*L23
129 L11*L18*L23;  52 L11*L23*L25;  74 L11*L29*L29
64 L12*L12*L15;  61 L12*L15*L18;  12 L12*L15*L25
34 L12*L15*L27;  45 L12*L16*L32;  21 L12*L18*L28
18 L15*L15*L27;  37 L15*L15*L36;  1 L15*L16*L16
34 L15*L16*L23;  91 L15*L16*L31;  3 L15*L27*L31
72 L16*L23*L25;  2 L16*L25*L28;  1 L16*L25*L36
84 T+ABC*L8;  121 T+ABC*L12;  35 T+ABC*L14
47 T+ABC*L17;  35 T+ABC*L19;  8 T+ABC*L20
34 T+ABC*L27;  32 T+ABC*L31;  133 T+ABC*L36
2 T+ABH;  35 T+ABH*L7;  144 T+ABH*L16
2 T+ABH*L20;  18 T+ABH*L25;  16 T+ABH*L26
16 T+ABH*L28;  153 T+AGH*L4;  6 T+BCD*L11
20 T+BCD*L28;  15 T+BCD*L36;  20 T+CDE*L6
426 T+CDE*L15;  198 T+DEF;  78 T+DEF*L0
6 T+DEF*L4;  52 T+DEF*L6;  84 T+DEF*L10
19 T+DEF*L12;  438 T+DEF*L14;  238 T+DEF*L16
134 T+DEF*L18;  167 T+DEF*L23;  22 T+DEF*L29
6 T+DEF*L34;  7 T+FGH*L0;  144 T+FGH*L5
47 T+FGH*L6;  85 T+FGH*L8;  28 T+FGH*L10
56 T+FGH*L12;  14 T+FGH*L25;  15 T+FGH*L27
8 T+FGH*L36;  132 T+DEP*L16;  210 T+GHO*L5
42 T+GHO*L7;  8 T+GHO*L12;  9 T+GHO*L20
50 T+GHO*L27;  3 T+GHO*L28;  8 T+GHO*L32
2 T+GHO*L33;  28 T+GHO*L34;  9 T+EFP*L9
2 T+EFP*L11;  6 T+EFP*L27;  52 T+EFP*L29
12 T+EFP*L31;  32 T-AOP*L5;  144 T-AOP*L8
77 T-AOP*L11;  117 T-AOP*L16;  446 T+FOP
105 T+FOP*L8;  38 T+FOP*L14;  117 T+FOP*L16
21 T+FOP*L27;  40 T+FOP*L34;  9 T+HOP*L2
53 T+AFO*L5;  131 T+AFO*L6;  29 T+AFO*L8
95 T+AFO*L11;  38 T+AFO*L15;  72 T+AFO*L22
54 T+AFO*L31;  117 T+AFO*L36;  67 T-AFP*L5
13 T-AFP*L6;  9 T-AFP*L12;  17 T-AFP*L14
10 T-AFP*L16;  24 T-AFP*L27;  20 T-AFP*L37
99 T-EHP;  3 T-EHP*L2;  102 T-EHP*L4
52 T-EHP*L6;  110 T-EHP*L8;  132 T-EHP*L17
38 T-EHP*L18;  37 T-EHP*L25;  67 T-EHP*L31
84 T-EHP*L35;  248 T+DHO;  251 T+DHO*L4
74 T+DHO*L6;  100 T+DHO*L8;  106 T+DHO*L10
132 T+DHO*L21;  87 T+DHO*L23;  38 T+DHO*L25
33 T+DHO*L32;  42 T+DHO*L34;  192 T+DHO*L35
164 T-BGO*L4;  45 T-BGO*L7;  7 T-BGO*L10
54 T-BGO*L15;  9 T-BGO*L21;  30 T-BGO*L23
8 T-BGO*L25;  4 T-BGO*L26;  9 T-BGO*L28
19 T-BGO*L34;  8 T-BGO*L35;  356 T-CHO
94 T-CHO*L3;  85 T-CHO*L13;  10 T-CHO*L20
231 T-CHO*L23;  35 T-CHO*L25;  35 T-CHO*L33
74 T-CHO*L34;  200 T+CFP;  50 T+CFP*L10
141 T+CFP*L14;  10 T+CFP*L16;  231 T+CFP*L19
75 R_AEFH_EH*L11;  45 C_BFG_1*L0*L11;  3 C_BFG_1*L11*L23
30 C_BFG_1*L19*L23;  12 C_CFH_2*L2;  35 C_CFH_2*L8
19 C_CFH_2*L15;  391 C_CFH_2*L28;  8 C_BCFG_2*L2*L19
29 C_BCFG_2*L8*L36;  192 C_BCFG_2*L16*L28
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_BCFG_2 | OP | all polygon edges positive |
| C_BFG_1 | O | all polygon edges positive |
| C_CFH_2 | OP | all polygon edges positive |
| R_AEFH_EH | OP | AF:+-, EH:+- |

### Row 7: EHP-,BHO-,DHO+,AGO-,BGO-,CHO-,CFP-

There are 190 positive integer entries. Their exact bound is

    U(W)=-1819143064850017049018921114579/527325461051675764225000000000<0.

```text
45 L0*L2*L5;  19 L0*L2*L7;  77 L0*L2*L23
72 L0*L5*L10;  16 L0*L5*L15;  10 L0*L6*L21
10 L0*L6*L36;  19 L0*L8*L36;  21 L0*L12*L15
57 L0*L12*L19;  27 L0*L12*L21;  10 L0*L12*L36
19 L0*L16*L28;  4 L0*L21*L25;  113 L0*L27*L27
87 L1*L4*L23;  110 L2*L6*L21;  22 L2*L7*L8
21 L2*L7*L19;  65 L2*L7*L25;  6 L2*L10*L19
37 L2*L10*L23;  4 L2*L12*L15;  4 L2*L12*L19
60 L2*L19*L28;  56 L2*L23*L25;  14 L4*L4*L7
56 L4*L4*L9;  6 L4*L4*L15;  83 L4*L4*L23
50 L4*L7*L16;  36 L4*L7*L23;  20 L4*L9*L9
102 L4*L9*L11;  11 L4*L9*L23;  227 L4*L12*L15
17 L4*L12*L23;  107 L4*L15*L21;  75 L4*L15*L23
53 L4*L16*L33;  93 L4*L23*L26;  1 L4*L28*L28
14 L5*L5*L6;  56 L5*L5*L8;  1 L5*L6*L6
10 L6*L6*L21;  129 L6*L10*L21;  165 L6*L12*L19
3 L6*L16*L28;  187 L6*L21*L27;  11 L8*L8*L36
45 L8*L10*L23;  50 L8*L10*L36;  22 L8*L12*L15
20 L8*L12*L21;  4 L8*L16*L28;  2 L8*L25*L36
82 L9*L11*L11;  64 L11*L11*L18;  21 L11*L11*L37
17 L11*L12*L23;  35 L11*L15*L16;  48 L11*L15*L23
138 L11*L21*L33;  4 L12*L12*L15;  43 L12*L12*L19
12 L12*L15*L25;  39 L12*L15*L28;  197 L12*L16*L32
209 L12*L19*L25;  17 L12*L25*L36;  147 L12*L28*L36
20 L15*L15*L36;  28 L15*L16*L31;  6 L15*L25*L36
7 L21*L25*L25;  11 L25*L25*L36;  1 L28*L28*L36
147 T+ABC;  7 T+ABC*L8;  302 T+ABC*L10
33 T+ABC*L19;  77 T+ABC*L23;  113 T+ABC*L27
1 T+ABC*L28;  35 T+ABC*L30;  18 T+ABC*L33
44 T+ABH;  45 T+ABH*L5;  47 T+ABH*L7
21 T+ABH*L13;  220 T+ABH*L19;  56 T+ABH*L23
18 T+ABH*L25;  1 T+ABH*L30;  18 T+ABH*L33
48 T+AGH*L4;  202 T+AGH*L11;  43 T+AGH*L35
22 T+BCD*L9;  367 T+BCD*L21;  14 T+BCD*L36
19 T+CDE*L0;  23 T+CDE*L8;  9 T+DEF*L15
36 T+DEF*L23;  11 T+FGH*L0;  1 T+FGH*L2
29 T+FGH*L8;  21 T+FGH*L10;  47 T+FGH*L12
9 T+FGH*L28;  332 T+FGH*L36;  154 T+DEP
167 T+DEP*L4;  357 T+DEP*L10;  21 T+DEP*L14
10 T+DEP*L29;  57 T+DEP*L34;  207 T+GHO
19 T+GHO*L7;  126 T+GHO*L10;  22 T+GHO*L25
70 T+GHO*L27;  10 T+GHO*L33;  101 T+GHO*L34
391 T+EFP;  11 T+EFP*L1;  60 T+EFP*L4
2 T+EFP*L9;  60 T+EFP*L10;  27 T+EFP*L15
57 T+EFP*L34;  216 T+AFO;  11 T+AFO*L0
2 T+AFO*L8;  170 T+AFO*L12;  118 T+AFO*L31
54 T+AFO*L34;  125 T-EHP;  107 T-EHP*L5
1 T-EHP*L7;  121 T-EHP*L11;  20 T-EHP*L15
10 T-EHP*L25;  20 T-EHP*L28;  8 T-EHP*L31
55 T+DHO;  3 T+DHO*L0;  4 T+DHO*L6
97 T+DHO*L13;  26 T+DHO*L25;  155 T+DHO*L30
14 T+DHO*L34;  117 T+DHO*L35;  67 T-BGO*L1
29 T-BGO*L4;  135 T-BGO*L7;  17 T-BGO*L10
16 T-BGO*L26;  43 T-BGO*L30;  220 T-BGO*L37
80 T-CHO;  23 T-CHO*L0;  45 T-CHO*L3
6 T-CHO*L5;  2 T-CHO*L9;  25 T-CHO*L13
184 T-CFP;  177 T-CFP*L4;  36 T-CFP*L7
9 T-CFP*L9;  23 T-CFP*L10;  17 T-CFP*L12
75 T-CFP*L15;  93 T-CFP*L34;  69 C_BFG_1*L0*L5
64 C_BFG_1*L0*L16;  57 C_BFG_1*L0*L27;  43 C_BFG_1*L0*L31
147 C_BFG_1*L6*L21;  119 C_BFG_1*L8*L36;  323 C_BFG_1*L15*L21
168 C_BFG_1*L16*L28;  140 C_AFGH_1*L4;  22 C_AFGH_1*L8
11 R_CEFH_CF*L0;  2 R_CEFH_CF*L8;  57 C_EFGH_1*L2
42 C_EFGH_1*L4
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_AFGH_1 | O | all polygon edges positive |
| C_BFG_1 | O | all polygon edges positive |
| C_EFGH_1 | P | all polygon edges positive |
| R_CEFH_CF | OP | CF:+-, EH:+- |

### Row 8: EHP-,BHO-,DHO+,AGO-,BGO+,CFP-

There are 190 positive integer entries. Their exact bound is

    U(W)=-2431829482539277055962565310123/1318313652629189410562500000000<0.

```text
9 L0*L0*L13;  7 L0*L0*L30;  146 L0*L2*L5
42 L0*L2*L15;  2 L0*L2*L23;  12 L0*L2*L30
49 L0*L5*L6;  8 L0*L5*L16;  5 L0*L6*L11
9 L0*L7*L16;  6 L0*L8*L30;  9 L0*L9*L16
30 L0*L11*L21;  22 L0*L15*L16;  118 L0*L16*L30
37 L0*L27*L27;  138 L0*L27*L30;  19 L0*L30*L30
4 L1*L23*L26;  45 L1*L26*L26;  13 L2*L8*L21
13 L3*L8*L16;  22 L3*L15*L26;  3 L3*L15*L28
21 L4*L4*L23;  8 L4*L7*L16;  66 L4*L9*L23
21 L4*L11*L23;  7 L4*L15*L34;  74 L4*L23*L26
10 L5*L6*L6;  2 L5*L6*L19;  90 L5*L6*L27
4 L5*L8*L27;  24 L5*L15*L36;  4 L6*L6*L36
1 L6*L9*L21;  119 L6*L10*L21;  72 L6*L11*L16
15 L6*L12*L19;  16 L6*L19*L34;  6 L6*L21*L30
11 L7*L7*L26;  4 L7*L16*L25;  3 L7*L16*L28
3 L7*L23*L26;  51 L8*L10*L23;  13 L8*L12*L15
10 L8*L12*L23;  36 L8*L34*L36;  92 L9*L11*L26
4 L9*L11*L37;  4 L9*L26*L26;  53 L10*L28*L34
11 L11*L11*L18;  63 L11*L11*L37;  118 L11*L14*L21
17 L11*L21*L33;  13 L12*L12*L15;  65 L12*L15*L16
2 L12*L15*L23;  95 L12*L15*L26;  21 L12*L15*L28
39 L12*L15*L32;  19 L12*L15*L34;  40 L12*L15*L36
12 L12*L19*L32;  51 L15*L16*L31;  27 L15*L22*L34
31 L15*L23*L26;  4 L15*L23*L31;  13 L15*L26*L34
4 L15*L32*L34;  24 L15*L34*L36;  41 L16*L28*L30
27 L16*L28*L34;  8 L16*L30*L33;  15 L19*L32*L34
4 L26*L28*L34;  4 L28*L34*L36;  115 T+ABC
142 T+ABC*L2;  54 T+ABC*L10;  32 T+ABC*L16
20 T+ABC*L21;  4 T+ABC*L23;  147 T+ABC*L30
8 T+ABC*L35;  31 T+BCD;  90 T+BCD*L5
11 T+BCD*L7;  18 T+BCD*L17;  2 T+BCD*L19
78 T+BCD*L21;  3 T+BCD*L23;  4 T+BCD*L34
44 T+DEF*L23;  53 T+DEF*L34;  44 T+FGH*L0
1 T+FGH*L12;  30 T+FGH*L34;  38 T+FGH*L36
45 T+DEP;  72 T+DEP*L4;  64 T+DEP*L10
4 T+DEP*L28;  83 T+DEP*L34;  6 T+DEP*L35
10 T+FGP*L8;  22 T+GHO*L1;  232 T+EFP
33 T+EFP*L4;  6 T+EFP*L7;  20 T+EFP*L26
4 T+EFP*L28;  33 T+EFP*L34;  8 T-AHO*L26
171 T+AFO;  4 T+AFO*L2;  20 T+AFO*L4
16 T+AFO*L6;  55 T+AFO*L12;  44 T+AFO*L31
15 T+AFO*L32;  65 T-EHP;  24 T-EHP*L3
24 T-EHP*L5;  67 T-EHP*L11;  6 T-EHP*L31
9 T-BHO;  27 T-BHO*L0;  6 T-BHO*L4
14 T-BHO*L10;  1 T-BHO*L25;  3 T-BHO*L28
1 T-BHO*L33;  9 T-BHO*L34;  11 T-BHO*L35
30 T+DHO*L3;  2 T+DHO*L6;  133 T+DHO*L30
3 T+DHO*L32;  10 T+DHO*L34;  265 T-AGO
16 T-AGO*L0;  6 T-AGO*L8;  142 T-AGO*L10
30 T-AGO*L14;  3 T-AGO*L30;  16 T-AGO*L35
83 T+BGO;  15 T+BGO*L6;  35 T+BGO*L10
3 T+BGO*L30;  18 T+BGO*L32;  9 T+BGO*L34
16 T+BGO*L35;  83 T-CFP;  21 T-CFP*L4
54 T-CFP*L7;  66 T-CFP*L9;  31 T-CFP*L15
74 T-CFP*L26;  33 R_AEFH_AF*L11;  20 R_AEFH_AF*L26
109 C_BGH_1*L1;  4 C_BGH_1*L23;  25 C_BGH_1*L26
5 C_BGH_1*L32;  1 C_BGH_1*L34;  2 C_ABGH_1*L4
8 C_ABGH_1*L11;  40 C_ABGH_1*L14;  30 C_ABGH_1*L18
2 C_ABGH_1*L23;  1 C_ABGH_1*L26;  4 C_ABGH_1*L31
41 C_AFGH_1*L8;  8 C_AFGH_1*L12;  18 C_AFGH_1*L15
4 C_AFGH_1*L21;  22 C_AFGH_1*L25;  43 C_AFGH_1*L26
21 C_AFGH_1*L28;  49 C_CDEF_1*L0;  10 C_CDEF_1*L6
27 C_CDEF_1*L16;  54 C_CDEF_1*L22;  7 C_EFGH_1*L8
22 C_EFGH_1*L26
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_ABGH_1 | O | all polygon edges positive |
| C_AFGH_1 | O | all polygon edges positive |
| C_BGH_1 | O | all polygon edges positive |
| C_CDEF_1 | P | all polygon edges positive |
| C_EFGH_1 | P | all polygon edges positive |
| R_AEFH_AF | OP | AF:+-, EH:+- |

### Row 9: EHP-,BHO-,DHO+,AGO-,BGO+,CFP+,BFP+

There are 199 positive integer entries. Their exact bound is

    U(W)=-116311419199811591812366427020919777/41733855301282249170177062500000000<0.

```text
3 L0*L5*L16;  13 L0*L5*L29;  78 L0*L5*L36
6 L0*L6*L36;  29 L0*L8*L36;  60 L0*L11*L14
53 L0*L11*L23;  3 L0*L11*L27;  88 L1*L3*L23
16 L2*L6*L36;  101 L2*L8*L36;  94 L2*L16*L28
10 L3*L3*L23;  6 L3*L3*L37;  46 L3*L9*L11
78 L3*L9*L23;  21 L3*L11*L18;  57 L3*L11*L23
5 L3*L11*L37;  81 L3*L12*L15;  16 L3*L15*L15
111 L3*L15*L16;  109 L3*L15*L21;  33 L3*L15*L32
16 L3*L15*L34;  8 L3*L23*L26;  45 L5*L6*L6
90 L5*L6*L19;  30 L5*L6*L23;  88 L5*L6*L25
8 L5*L6*L27;  6 L5*L6*L29;  8 L5*L11*L14
1 L5*L11*L18;  10 L5*L11*L23;  15 L5*L29*L29
6 L6*L8*L36;  13 L6*L10*L11;  146 L6*L11*L14
85 L6*L11*L16;  97 L6*L11*L18;  6 L6*L11*L20
106 L6*L11*L23;  36 L6*L11*L27;  2 L6*L11*L33
34 L6*L11*L37;  10 L6*L25*L36;  26 L6*L27*L27
12 L6*L27*L36;  45 L7*L15*L26;  85 L7*L16*L23
7 L7*L26*L26;  79 L8*L8*L36;  85 L8*L25*L36
31 L10*L28*L28;  20 L11*L11*L18;  9 L11*L11*L37
33 L11*L15*L16;  9 L11*L16*L32;  97 L11*L18*L23
85 L11*L23*L25;  103 L11*L29*L29;  9 L11*L31*L37
18 L12*L15*L15;  29 L12*L15*L32;  4 L12*L15*L34
151 L15*L15*L34;  12 L15*L16*L23;  4 L15*L16*L25
12 L15*L16*L26;  6 L15*L16*L28;  14 L15*L16*L31
2 L15*L21*L26;  1 L15*L21*L34;  27 L15*L23*L31
281 L15*L26*L28;  93 L15*L28*L34;  50 L16*L23*L25
74 L16*L25*L28;  43 L23*L34*L37;  35 L26*L28*L28
75 T+ABC*L36;  25 T+BCD;  8 T+BCD*L5
46 T+BCD*L11;  90 T+BCD*L19;  12 T+BCD*L20
30 T+BCD*L23;  133 T+BCD*L25;  19 T+BCD*L27
25 T+BCD*L28;  45 T+BCD*L32;  26 T+CDE
56 T+CDE*L6;  10 T+CDE*L10;  249 T+CDE*L15
32 T+CDE*L25;  20 T+CDE*L32;  229 T+DEF
40 T+DEF*L0;  3 T+DEF*L10;  286 T+DEF*L14
4 T+DEF*L16;  6 T+DEF*L18;  6 T+DEF*L20
124 T+DEF*L23;  70 T+DEF*L29;  10 T+DEF*L34
3 T+FGH*L0;  32 T+FGH*L3;  26 T+FGH*L8
5 T+FGH*L25;  8 T+FGH*L26;  3 T+FGH*L28
5 T+FGH*L34;  4 T+FGH*L36;  16 T+DEP*L3
12 T+DEP*L16;  54 T+GHO*L1;  7 T+GHO*L15
10 T+GHO*L18;  54 T+GHO*L23;  8 T+GHO*L34
6 T+GHP*L15;  2 T+EFP*L5;  4 T+EFP*L6
17 T-AOP*L6;  6 T-AOP*L8;  222 T+FOP
17 T+FOP*L29;  23 T+FOP*L32;  83 T+AFO*L3
1 T+AFO*L5;  74 T+AFO*L6;  5 T+AFO*L11
73 T+AFO*L22;  14 T+AFO*L31;  134 T-AFP
75 T-AFP*L3;  3 T-AFP*L5;  40 T-AFP*L8
68 T-AFP*L14;  23 T-AFP*L18;  140 T-EHP
62 T-EHP*L0;  99 T-EHP*L2;  10 T-EHP*L6
79 T-EHP*L8;  10 T-EHP*L11;  12 T-EHP*L17
6 T-EHP*L25;  11 T-EHP*L27;  10 T-EHP*L35
154 T-BHO;  54 T-BHO*L1;  90 T-BHO*L7
52 T-BHO*L10;  11 T-BHO*L15;  10 T-BHO*L18
202 T-BHO*L23;  7 T-BHO*L34;  120 T+DHO
110 T+DHO*L2;  6 T+DHO*L8;  67 T+DHO*L10
12 T+DHO*L21;  85 T+DHO*L23;  12 T+DHO*L27
24 T+DHO*L30;  4 T-AGO*L10;  4 T-AGO*L15
1 T+BGO*L0;  8 T+BGO*L3;  3 T+BGO*L11
44 T+BGO*L19;  102 T+BFP;  10 T+BFP*L3
45 T+BFP*L14;  148 T+BFP*L19;  131 T+BFP*L24
8 T+BFP*L26;  78 T+BFP*L29;  48 T+BFP*L33
7 R_AEFH_EH*L3;  13 R_AEFH_EH*L11;  1 C_BFG_1*L0*L11
14 C_BFG_1*L0*L16;  10 C_BFG_1*L8*L36;  10 C_BFG_1*L16*L28
208 C_BFH_2*L8;  156 C_BFH_2*L15;  200 C_BFH_2*L28
3 C_BGH_1*L3;  3 C_BGH_1*L6;  5 C_BGH_1*L36
21 R_ABFG_BG*L14;  54 R_ABFG_BG*L19;  29 C_EFGH_1*L3
8 C_EFGH_1*L5
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_BFG_1 | P | all polygon edges positive |
| C_BFH_2 | OP | all polygon edges positive |
| C_BGH_1 | O | all polygon edges positive |
| C_EFGH_1 | P | all polygon edges positive |
| R_ABFG_BG | OP | AF:+-, BG:+- |
| R_AEFH_EH | OP | AF:+-, EH:+- |

### Row 10: EHP-,BHO-,DHO+,AGO-,BGO+,CFP+,BFP-

There are 204 positive integer entries. Their exact bound is

    U(W)=-4407580042511719289934219122493/1318313652629189410562500000000<0.

```text
12 L0*L0*L13;  10 L0*L0*L35;  54 L0*L2*L5
24 L0*L2*L13;  12 L0*L2*L15;  58 L0*L2*L30
254 L0*L5*L16;  27 L0*L5*L35;  4 L0*L5*L37
10 L0*L6*L30;  5 L0*L8*L21;  15 L0*L8*L30
21 L0*L9*L16;  3 L0*L13*L13;  24 L0*L13*L19
5 L0*L13*L23;  374 L0*L13*L27;  61 L0*L13*L30
168 L0*L16*L30;  57 L2*L5*L29;  44 L2*L6*L9
19 L2*L8*L23;  39 L2*L11*L23;  24 L2*L11*L37
68 L5*L6*L10;  67 L5*L6*L17;  32 L5*L6*L19
6 L5*L6*L23;  1 L5*L6*L27;  31 L5*L6*L29
7 L5*L6*L36;  23 L5*L9*L11;  19 L5*L9*L21
2 L5*L11*L19;  28 L5*L14*L23;  84 L5*L15*L29
19 L5*L23*L37;  183 L5*L29*L29;  6 L6*L6*L17
22 L6*L10*L11;  114 L6*L11*L16;  43 L6*L11*L18
91 L6*L11*L20;  3 L6*L11*L23;  14 L6*L12*L19
2 L6*L23*L27;  5 L6*L25*L27;  26 L6*L27*L27
44 L6*L27*L29;  15 L6*L27*L36;  38 L8*L10*L36
1 L8*L12*L15;  6 L8*L12*L36;  4 L8*L15*L36
9 L8*L28*L36;  7 L8*L32*L36;  22 L9*L11*L11
6 L9*L11*L29;  46 L11*L11*L18;  70 L11*L11*L33
46 L11*L11*L37;  3 L11*L12*L23;  114 L11*L14*L21
43 L11*L14*L29;  47 L11*L15*L23;  8 L11*L29*L37
6 L12*L12*L15;  235 L15*L16*L31;  12 L15*L32*L36
61 L15*L34*L36;  16 L16*L28*L28;  110 T+ABC*L2
350 T+ABC*L13;  232 T+ABC*L16;  2 T+ABC*L30
10 T+ABC*L32;  27 T+ABC*L35;  4 T+ABC*L37
23 T+BCD;  1 T+BCD*L5;  139 T+BCD*L11
75 T+BCD*L17;  24 T+BCD*L19;  2 T+BCD*L23
4 T+BCD*L24;  26 T+BCD*L27;  15 T+BCD*L36
220 T+CDE;  57 T+CDE*L2;  75 T+CDE*L6
64 T+CDE*L10;  84 T+CDE*L15;  8 T+CDE*L19
7 T+CDE*L20;  19 T+CDE*L23;  10 T+CDE*L25
139 T+CDE*L29;  96 T+DEF*L4;  26 T+DEF*L14
69 T+DEF*L16;  29 T+DEF*L18;  91 T+DEF*L20
23 T+DEF*L24;  47 T+DEF*L26;  4 T+DEF*L33
92 T+DEF*L34;  3 T+FGH*L30;  32 T+ABO*L11
52 T+DEP*L16;  46 T+FGP*L0;  3 T+FGP*L5
17 T+GHO*L1;  3 T+GHO*L10;  19 T+GHO*L26
42 T+EFP*L5;  9 T+EFP*L6;  7 T+EFP*L16
137 T+EFP*L27;  14 T-AHO*L0;  110 T-AHO*L31
7 T-AOP*L2;  204 T+AFO;  120 T+AFO*L2
2 T+AFO*L4;  14 T+AFO*L6;  29 T+AFO*L8
167 T+AFO*L12;  51 T+AFO*L23;  46 T+AFO*L31
47 T-EHP;  68 T-EHP*L3;  4 T-EHP*L8
161 T-EHP*L11;  44 T-EHP*L17;  192 T-EHP*L26
6 T-EHP*L31;  12 T-EHP*L32;  92 T-BHO
3 T-BHO*L7;  24 T-BHO*L11;  7 T-BHO*L21
7 T-BHO*L28;  16 T+DHO;  30 T+DHO*L3
111 T+DHO*L13;  52 T+DHO*L21;  9 T+DHO*L28
14 T+DHO*L32;  45 T+DHO*L34;  1 T+DHO*L35
433 T-AGO;  8 T-AGO*L0;  64 T-AGO*L2
15 T-AGO*L8;  210 T-AGO*L10;  33 T-AGO*L14
51 T-AGO*L23;  19 T-AGO*L27;  64 T-AGO*L30
241 T+BGO;  14 T+BGO*L6;  27 T+BGO*L14
51 T+BGO*L23;  18 T+BGO*L24;  64 T+BGO*L30
15 T+BGO*L32;  269 T+CFP;  176 T+CFP*L3
3 T+CFP*L13;  34 T+CFP*L14;  19 T+CFP*L32
13 T+CFP*L33;  22 T+CFP*L34;  266 T-BFP
176 T-BFP*L5;  5 T-BFP*L8;  7 T-BFP*L16
51 T-BFP*L19;  22 T-BFP*L27;  14 T-BFP*L32
22 T-BFP*L34;  114 R_AEFH_EH*L11;  14 C_ABG_1*L0
10 C_ABG_1*L6;  10 C_BCF_1*L8*L15;  397 C_BCF_1*L8*L16
8 C_BCF_1*L8*L19;  2 C_BCF_1*L8*L30;  397 C_BCF_1*L8*L36
2 C_BCF_1*L12*L32;  171 C_BCF_1*L15*L16;  192 C_BCF_1*L15*L36
44 C_BCF_1*L28*L28;  13 C_BGH_1*L1;  13 C_BGH_1*L16
45 C_BGH_1*L19;  3 C_BGH_1*L32;  19 C_ABGH_1*L2
30 C_ABGH_1*L4;  2 C_ABGH_1*L9;  33 C_ABGH_1*L18
6 C_ABGH_1*L21;  9 C_ABGH_1*L31;  49 C_EFGH_1*L5
```

The occupancy and separation factors in this row have the following edge tests.

| Factor | Interior points | Additional diagonal signs at O,P |
|---|---|---|
| C_ABGH_1 | O | all polygon edges positive |
| C_ABG_1 | O | all polygon edges positive |
| C_BCF_1 | P | all polygon edges positive |
| C_BGH_1 | O | all polygon edges positive |
| C_EFGH_1 | P | all polygon edges positive |
| R_AEFH_EH | OP | AF:+-, EH:+- |

## 7. Closure

The ten rows contain 1,807 positive integer entries, all at most 12,175.
Every row has W>=0 by its proved factor signs and W<=U(W)<0 by its printed
rational expansion. The ten-row catalogue covers every possible 3/5
configuration, including every remaining orientation of every triangle
used in these inequalities. The N8-3/5 class is therefore impossible at
minimum doubled area s=93/1000.

This closes N8-3/5 in full. It does not close either remaining N8 4/4 class,
nor the complete HP12-N8 parent.
