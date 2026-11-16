# Eight boundary points: all corner-edge oblique sign failures are excluded

This note closes the entire N8-4/4-CORNER-OBLIQUE obligation. Square
symmetries reduce any one of the four oblique failures to ADO<0. Seven
exhaustive rows then have fully printed nonnegative cubic contradictions.
All integer coefficients and exact negative bounds are included below.
No optimizer, numerical assertion, coordinate cover, or external certificate
file is a premise.

Together with ASYMMETRIC_SIGN_CHAMBER.md, this proves the sharp upper bound
and candidate equality classification throughout the corner-edge 4/4 class.
The separate same-side-edge exclusion is supplied by N8_SIDE_CONTAINED.md
and N8_SIDE_OUTSIDE.md; N8_COMPLETE.md assembles the full N8 theorem.

All areas are doubled. Put s=93/1000 and use

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,1), H=(0,h),
    O=(x,y), P=(u,v), U=u-x, V=v-y.

Assume every actual unsigned triangle area is at least s. Write
D(I,J,K)=det(J-I,K-I) and d_I=D(I,O,P). The corner-edge representative
has its line entering the octagon through AB and leaving through EF.
Order O before P on this segment. Its signs are

    d_A,d_F,d_G,d_H>0;       d_B,d_C,d_D,d_E<0.          (1)

Both points are strictly inside the boundary octagon by N8_OP_LINE_CAPS.md.
The candidate has 2A*>s, so an exclusion at s suffices.

## 1. Forced quadrilateral placement and its two separating diagonals

The convex caps AHGF and BCDE have all their vertices strictly on one side
of OP, so neither cap contains O or P. Their complementary sides in the
octagon intersect in the actual quadrilateral ABEF. Consequently

    O,P inside ABEF;       AFO,AFP<0;       BEO,BEP>0.   (2)

The four triangles ABE,AEF,ABF,BEF each contain at most one interior
point by N8_TRIANGLE_CAPS.md. Thus both diagonals AE and BF strictly
separate O,P. For any chord IJ the determinant identity is

    D(I,J,P)-D(I,J,O)=d_I-d_J.

Apply (1) to AE and BF. Their forced signs are

    AEO<0<AEP,       BFO>0>BFP.                        (3)

The four same-side quadrilateral capacities from N8_OP_LINE_CAPS.md
supply four additional signs:

    ADP>0,       BGP<0,       CFO>0,       EHO>0.        (4)

Here is the complete line-intersection argument. The line's segment in
ABCD starts at AB and ends at AD; its segment in ABGH starts at AB and
ends at BG. If the later point P belonged to either quadrilateral, O
would also belong, contrary to capacity one. This gives the first two
signs in (4). The segment in CDEF starts at CF and ends at EF; the segment
in EFGH starts at EH and ends at EF. If the earlier point O belonged to
either, P would too. This gives the last two signs. Strict signs follow
because every actual triangle has positive area.

The contact overlaps in N8_BOUNDARY_RANGES.md give e>a and f>b. Every
interior point of AB therefore has both coordinates smaller than every
interior point of EF. The chosen ordering yields U,V>0. The actual OP
triangle sums give, more precisely,

    U-(f-b)V=d_F-d_B>=2s,
    V-(e-a)U=d_A-d_E>=2s.

Since both overlaps are positive, we may use the weaker affine bounds

    U>=2s,       V>=2s.                                (5)

## 2. An explicit square-symmetry reduction of all four failures

Define the four signed oblique expressions

    tau=(D(A,D,O), -D(B,G,O), D(C,F,P), D(E,H,P)).

The candidate-sign theorem applies when all four are positive. None is
zero, by the positive minimum. Otherwise at least one is negative.

Reflection S(x,y)=(y,x) swaps the boundary labels
A/B, C/H, D/G, E/F and preserves the order O before P. The determinant
changes sign, so its action on the four signed expressions is

    S: (tau1,tau2,tau3,tau4) -> (tau2,tau1,tau4,tau3).

The half-turn R(x,y)=(1-x,1-y), followed by interchanging O and P,
swaps A/E, B/F, C/G, D/H and acts as

    R: (tau1,tau2,tau3,tau4) -> (tau4,tau3,tau2,tau1).

These maps preserve every domain condition above. Their permutations
are transitive on the four entries. We can therefore put a negative
entry first and assume, exhaustively,

    ADO<0.                                             (6)

No sign restriction on the other three oblique expressions is assumed
at this stage. They are split explicitly in Section 5.

## 3. The full basic sign catalogue and rational affine factors

The following determinants, and only those explicitly supplied by a row,
are used as signed triangle premises:

1. Every boundary triple in increasing cyclic order is positive.
2. Every directed consecutive octagon edge has positive determinant
   with O or P.
3. Every ordered pair from the arc B,C,D,E has positive determinant
   with O or P. The same holds for every ordered pair in the cyclic
   arc F,G,H,A, in that printed order. Indeed each point is outside
   the corresponding arc cap and inside the octagon; every remaining
   cap vertex is on the stated nonnegative chord side. In particular,
   the pairs F,A and G,A give AFO,AFP,AGO,AGP<0.
4. The eight OP signs (1), the four diagonal signs (3), the four cap
   signs (4), and the negative ADO sign (6) hold.

Put ell=31/251 and c0=31657/55000. In the coordinate order
z=(a,b,c,d,e,f,g,h,x,y,u,v), use the box from N8_BOUNDARY_RANGES.md:

    lo=(ell,ell,1-c0,ell,1-c0,1-c0,ell,1-c0,ell,ell,ell,ell),
    hi=(c0,c0,1-ell,c0,1-ell,1-ell,c0,1-ell,
        1-ell,1-ell,1-ell,1-ell).

For i=0,...,11 define L_(2i)=z_i-lo_i and L_(2i+1)=hi_i-z_i.
The remaining nonnegative affine factors are

```text
L24=h-a-5115/31657; L25=753/1000-h+a
L26=c-b-5115/31657; L27=753/1000-c+b
L28=e-d-5115/31657; L29=753/1000-e+d
L30=f-g-5115/31657; L31=753/1000-f+g
L32=e-a-21/250; L33=h-d-21/250
L34=f-b-21/250; L35=c-g-21/250
L36=u-x-2s; L37=v-y-2s
```

The first thirty-six follow from the uniform boundary ranges. The last
two follow from (5). Endpoints are included in this box only to enlarge
the domain for an upper bound.

## 4. Every nonlinear factor has a proved geometric sign

For increasing labels I,J,K in the order A,B,C,D,E,F,G,H,O,P, put

    T+IJK=D(I,J,K)-s;       T-IJK=-D(I,J,K)-s.

Each T factor is nonnegative by the basic catalogue or the row's explicit
signs. For a cyclic boundary triangle or quadrilateral Q, let A(Q) be its
doubled area, computed by the actual fan from its first vertex:

    A(IJK)=D(I,J,K),
    A(IJKL)=D(I,J,K)+D(I,K,L).

The occupancy factors are

    C_IJK_1=A(IJK)-3s;          C_IJK_2=A(IJK)-(149/20)s;
    C_IJKL_1=A(IJKL)-(24/5)s;   C_IJKL_2=A(IJKL)-8s.

They are nonnegative when at least the indicated one or two points of
O,P lie strictly inside the polygon. The constants follow from the
three-triangle fan, the two-interior triangle theorem, and the one-
and two-interior quadrilateral theorems in TRIANGLE_OCCUPANCY.md,
U3_FOUR_ONE_SIDE.md Section 3, and N8_OP_LINE_CAPS.md Section 2.
Every used occupancy factor has its contained points named below its
coefficient table. All of its cyclic edge tests are positive signs in
the basic catalogue or that row. Thus occupancy is explicitly justified.

For Q in {AEF,CGH,ABE,CDG,BEF,DGH,ABF,CDH}, set

    K_Q=69/100-A(Q)>0.

These are exactly the eight triangle bounds in N8_TRIANGLE_CAPS.md.

There are two further quadratic factors. Put k=e-a, l=f-b and

    Q0=A(ABEF)=1-k*l.

The two actual diagonals have determinant Q0, and 0<k,l<1 gives
0<Q0<1. By (2)–(3), the hypotheses of the stronger quadrilateral
spread lemma hold, with normalized minimum s/Q0>s>1/11. Thus
QUADRILATERAL_SPREAD.md gives

    S_BF=Q0-6s-[U-lV]>=0,
    S_AE=Q0-6s-[V-kU]>=0.                              (7)

The positive expressions in brackets are precisely the OP area sums
in Section 1. This checks the absolute-coordinate signs and does not
impose any new orientation on an oblique triangle.

## 5. Seven exhaustive oblique rows

With ADO negative, split BGO. If BGO is positive, split CFP; a positive
CFP gives the first row without restricting EHP, and a negative CFP is
split by EHP. If BGO is negative, split both CFP and EHP. These seven
rows are disjoint and exhaustive because all actual determinants are
nonzero.

| Row | BGO | CFP | EHP | Entries |
|---:|:---:|:---:|:---:|---:|
| 1 | + | + | — | 212 |
| 2 | + | - | + | 213 |
| 3 | + | - | - | 244 |
| 4 | - | + | + | 207 |
| 5 | - | + | - | 210 |
| 6 | - | - | + | 170 |
| 7 | - | - | - | 186 |

Each table is a finite polynomial W: an entry `n factor` means n times
the indicated factor or product. Every entry is nonnegative, so W>=0.
All products have degree at most three. To obtain the upper bound,
substitute z_i=lo_i+t_i with 0<=t_i<=hi_i-lo_i, expand as
W=c_0+sum_(e!=0)c_e*t^e, discard negative nonconstant terms, and bound
each positive monomial at its upper endpoints:

    U(W)=c_0+sum_(e!=0,c_e>0)c_e*product_i(hi_i-lo_i)^e_i.

Each exact rational U(W) is printed below and is negative. Its value
requires only expansion of the displayed products and rational addition.
The optional checker verifies the transcription; it is not a premise.

## 6. The seven complete integer tables

### Row 1: BGO+,CFP+

There are 212 positive integer entries. Their exact bound is

    U(W)=-43268738454953329752642998015671081/16693542120512899668070825000000000<0.

```text
133 L0*L2*L13;  123 L0*L2*L28;  80 L0*L6*L11
520 L0*L13*L18;  1 L0*L13*L21;  265 L1*L1*L5
46 L1*L3*L16;  259 L1*L5*L6;  623 L1*L5*L16
853 L1*L5*L18;  6 L1*L5*L24;  1298 L1*L5*L29
109 L1*L11*L16;  6 L2*L2*L7;  31 L2*L5*L23
669 L2*L7*L16;  155 L2*L7*L37;  44 L2*L9*L9
6 L2*L9*L15;  21 L2*L11*L23;  75 L2*L15*L23
109 L2*L16*L23;  294 L2*L16*L28;  316 L2*L16*L33
50 L2*L28*L28;  87 L3*L5*L37;  29 L3*L11*L15
135 L3*L18*L21;  213 L3*L24*L30;  6 L5*L5*L6
13 L5*L5*L29;  104 L5*L6*L6;  77 L5*L6*L13
155 L5*L6*L23;  6 L5*L6*L24;  830 L5*L6*L29
210 L5*L6*L30;  245 L5*L9*L11;  91 L5*L11*L18
91 L5*L11*L37;  70 L5*L13*L37;  47 L5*L23*L27
19 L5*L24*L29;  342 L5*L29*L29;  36 L6*L13*L13
423 L6*L13*L18;  12 L6*L13*L30;  228 L6*L32*L36
12 L7*L7*L16;  51 L7*L15*L16;  80 L8*L8*L36
56 L8*L18*L35;  21 L8*L30*L30;  36 L9*L11*L11
106 L9*L11*L16;  1 L9*L11*L21;  144 L9*L11*L27
214 L9*L11*L29;  172 L9*L16*L21;  594 L10*L16*L28
126 L10*L28*L28;  23 L11*L13*L37;  127 L11*L15*L18
33 L11*L15*L29;  147 L11*L18*L29;  67 L12*L15*L15
99 L12*L15*L16;  5 L12*L15*L23;  188 L13*L13*L18
200 L13*L14*L18;  187 L13*L18*L21;  1248 L13*L18*L27
190 L13*L18*L30;  408 L14*L14*L30;  87 L14*L28*L30
23 L14*L30*L33;  10 L15*L15*L16;  105 L15*L15*L31
42 L15*L16*L21;  101 L15*L16*L28;  1177 L15*L16*L31
13 L15*L23*L27;  135 L16*L28*L28;  58 L16*L32*L32
152 L18*L28*L30;  17 L18*L30*L32;  27 L23*L27*L27
48 L28*L30*L30;  113 L32*L32*L36;  398 L32*L34*L37
29 T+ABH*L12;  80 T+ABH*L23;  6 T+BCD*L3
6 T+BCD*L5;  50 T+BCD*L6;  486 T+CDE
739 T+CDE*L1;  13 T+CDE*L5;  118 T+CDE*L13
294 T+CDE*L16;  336 T+CDE*L18;  42 T+CDE*L23
25 T+CDE*L24;  1166 T+CDE*L29;  15 T+CDE*L30
918 T+CDE*L32;  46 T+DEF*L0;  159 T+DEF*L4
126 T+DEF*L7;  89 T+DEF*L9;  591 T+DEF*L16
299 T+DEF*L18;  42 T+DEF*L22;  33 T+DEF*L25
48 T+DEF*L30;  36 T+DEF*L35;  133 T+EFG*L5
15 T+EFG*L11;  69 T+EFG*L13;  336 T+FGH
242 T+FGH*L3;  87 T+FGH*L8;  216 T+FGH*L14
1496 T+FGH*L16;  127 T+FGH*L18;  5 T+FGH*L23
110 T+FGH*L33;  1091 T+BCO*L13;  472 T+BCO*L32
186 T+DEP*L16;  93 T+FGP*L5;  812 T-AHO
153 T-AHO*L3;  134 T-AHO*L7;  64 T-AHO*L13
10 T-AHO*L15;  42 T-AHO*L21;  22 T-AHO*L28
79 T-AHO*L32;  319 T-AHO*L34;  156 T-AHO*L35
2549 T+ABO;  7 T+ABO*L8;  7 T+ABO*L13
323 T+ABO*L21;  211 T+ABO*L28;  213 T+ABO*L30
271 T+ABO*L32;  72 T+ABO*L33;  80 T+EFP*L1
323 T+EFP*L5;  109 T+EFP*L16;  144 T+EFP*L27
296 T+AEP;  323 T+AEP*L3;  228 T+AEP*L6
80 T+AEP*L8;  95 T+AEP*L16;  1178 T+AEP*L26
113 T+AEP*L32;  1 T+AEP*L35;  1511 T-BFP
217 T-BFP*L5;  554 T-BFP*L6;  485 T-BFP*L8
114 T-BFP*L11;  109 T-BFP*L16;  8 T-BFP*L25
27 T-BFP*L27;  486 T-BFP*L32;  844 T-ADO
985 T-ADO*L2;  107 T-ADO*L8;  3 T-ADO*L10
186 T-ADO*L21;  294 T-ADO*L27;  143 T-ADO*L28
247 T-ADO*L32;  3 T-ADO*L33;  1197 T+BGO
123 T+BGO*L0;  87 T+BGO*L5;  270 T+BGO*L6
606 T+BGO*L8;  165 T+BGO*L13;  72 T+BGO*L14
187 T+BGO*L21;  213 T+BGO*L30;  1407 T+CFP
24 T+CFP*L3;  74 T+CFP*L5;  512 T+CFP*L6
602 T+CFP*L8;  114 T+CFP*L11;  23 T+CFP*L13
13 T+CFP*L25;  13 T+CFP*L32;  265 C_BCF_1*L1*L32
398 C_BCF_1*L6*L37;  6 C_BCF_1*L7*L32;  467 C_BCF_1*L8*L36
573 C_BCF_1*L8*L37;  156 C_BCF_1*L15*L16;  1940 C_BCF_1*L16*L32
6 C_BCF_1*L24*L32;  94 C_BCF_1*L28*L32;  1179 C_BCF_1*L32*L36
60 C_ABCD_1*L6;  154 C_ABCD_1*L13;  62 C_ABCD_1*L18
67 C_ABGH_1*L15;  381 C_BCFG_1*L18*L32
```

The occupancy factors used in this row have these strict edge tests.

| Factor | Interior points | Edge tests |
|---|---|---|
| C_ABCD_1 | O | all cyclic polygon edges positive |
| C_ABGH_1 | O | all cyclic polygon edges positive |
| C_BCFG_1 | P | all cyclic polygon edges positive |
| C_BCF_1 | P | all cyclic polygon edges positive |

### Row 2: BGO+,CFP-,EHP+

There are 213 positive integer entries. Their exact bound is

    U(W)=-4770619008766315623260415607973/2636627305258378821125000000000<0.

```text
57 L7*L16;  13 L0*L0*L13;  19 L0*L0*L30
5 L0*L2*L7;  2 L0*L2*L30;  8 L0*L5*L5
18 L0*L5*L21;  3 L0*L5*L25;  13 L0*L13*L18
110 L0*L18*L30;  23 L0*L18*L35;  1 L0*L30*L30
24 L1*L1*L26;  5 L1*L7*L26;  13 L1*L12*L15
7 L1*L12*L36;  89 L1*L18*L34;  8 L1*L26*L26
11 L1*L28*L34;  1 L1*L34*L34;  5 L2*L5*L18
2 L3*L12*L15;  35 L3*L15*L16;  209 L3*L15*L31
4 L4*L7*L12;  45 L4*L7*L16;  14 L4*L7*L20
14 L4*L7*L25;  22 L4*L7*L31;  5 L4*L9*L23
10 L4*L16*L33;  26 L4*L28*L30;  5 L5*L6*L18
1 L5*L13*L18;  179 L5*L18*L27;  6 L5*L18*L29
2 L5*L34*L37;  2 L6*L34*L37;  1 L7*L9*L35
12 L7*L12*L15;  23 L7*L12*L16;  6 L7*L12*L18
2 L7*L15*L31;  58 L7*L16*L25;  69 L7*L16*L31
3 L7*L20*L26;  2 L7*L26*L32;  27 L8*L18*L30
1 L8*L28*L30;  1 L9*L9*L35;  1 L9*L9*L36
1 L9*L11*L23;  33 L9*L11*L31;  4 L9*L12*L37
1 L9*L15*L21;  25 L9*L20*L26;  37 L9*L26*L36
27 L9*L31*L31;  4 L10*L10*L37;  49 L10*L16*L28
30 L10*L16*L33;  1 L10*L28*L28;  12 L10*L32*L36
2 L10*L34*L37;  3 L12*L12*L15;  12 L12*L15*L19
7 L12*L15*L21;  13 L12*L15*L26;  6 L12*L15*L28
59 L12*L15*L31;  8 L12*L18*L34;  1 L12*L25*L34
42 L14*L30*L30;  7 L15*L15*L17;  3 L15*L15*L31
65 L15*L21*L26;  10 L15*L21*L31;  2 L15*L26*L31
98 L15*L31*L31;  1 L15*L34*L34;  1 L16*L28*L28
42 L16*L28*L30;  2 L18*L22*L30;  29 L18*L27*L30
17 L18*L30*L30;  14 L19*L26*L26;  16 L20*L32*L34
64 L21*L25*L25;  8 L26*L26*L37;  19 L27*L34*L37
37 L32*L34*L36;  11 L33*L35*L36;  11 L34*L34*L37
14 T+ABC*L1;  3 T+ABC*L15;  5 T+ABC*L16
7 T+ABC*L32;  5 T+ADE*L7*L16;  31 T+AGH*L1
2 T+AGH*L9;  1 T+AGH*L12;  38 T+AGH*L36
34 T+CDE;  7 T+CDE*L0;  1 T+CDE*L8
4 T+CDE*L10;  37 T+CDE*L16;  7 T+CDE*L20
1 T+DEF*L7;  14 T+EFG;  6 T+EFG*L11
12 T+EFG*L14;  42 T+EFG*L16;  7 T+EFG*L18
10 T+EFG*L21;  4 T+EFG*L22;  53 T+EFG*L31
2 T+EFG*L32;  26 T+EFG*L35;  99 T+FGH
16 T+FGH*L0;  148 T+FGH*L3;  27 T+FGH*L16
21 T+FGH*L18;  3 T+FGH*L25;  2 T+FGH*L26
2 T+FGH*L28;  117 T+FGH*L31;  61 T+FGH*L34
143 T+BCO;  23 T+BCO*L1;  157 T+BCO*L5
8 T+BCO*L7;  6 T+BCO*L9;  22 T+BCO*L13
2 T+BCO*L23;  3 T+BCO*L30;  6 T+BCO*L34
8 T+DEP*L4;  2 T+DEP*L17;  3 T+DEP*L26
11 T+DEP*L35;  48 T-AHO*L7;  2 T-AHO*L26
7 T-AHO*L33;  33 T-AHO*L34;  305 T+ABO
7 T+ABO*L2;  6 T+ABO*L8;  2 T+ABO*L14
3 T+ABO*L32;  2 T+ABO*L33;  3 T+ABO*L35
4 T+EFP*L5;  3 T-AEO*L7;  211 T+AEP
31 T+AEP*L10;  45 T+AEP*L12;  2 T+AEP*L16
78 T+AEP*L25;  17 T+AEP*L27;  13 T+AEP*L32
70 T+AEP*L34;  165 T-ADO;  7 T-ADO*L4
53 T-ADO*L10;  60 T-ADO*L12;  3 T-ADO*L15
1 T-ADO*L20;  6 T-ADO*L28;  3 T-ADO*L32
2 S_BF*L7;  98 T+BGO;  128 T+BGO*L0
6 T+BGO*L6;  16 T+BGO*L8;  2 T+BGO*L10
2 T+BGO*L22;  18 T+BGO*L25;  6 T+BGO*L27
17 T+BGO*L30;  7 T+BGO*L34;  67 T-CFP
5 T-CFP*L9;  4 T-CFP*L10;  2 T-CFP*L18
172 T-CFP*L24;  8 T-CFP*L27;  13 T-CFP*L34
232 T+EHP;  37 T+EHP*L4;  45 T+EHP*L12
1 T+EHP*L15;  63 T+EHP*L25;  39 T+EHP*L26
12 T+EHP*L32;  26 T+EHP*L34;  10 C_AEH_1*L0*L10
1 C_AEH_1*L3*L34;  1 C_AEH_1*L4*L36;  36 C_AEH_1*L10*L36
21 C_AEH_1*L18*L34;  172 C_AEH_1*L22*L34;  172 C_AEH_1*L23*L26
19 C_ABGH_1*L7;  5 C_ABGH_1*L9;  16 C_ABGH_1*L23
13 C_ABGH_1*L26;  4 C_ABGH_1*L34;  16 C_ABGH_1*L37
8 C_ADEH_1*L0*L10;  14 C_CDEF_1*L15;  20 C_CDEF_1*L18
```

The occupancy factors used in this row have these strict edge tests.

| Factor | Interior points | Edge tests |
|---|---|---|
| C_ABGH_1 | O | all cyclic polygon edges positive |
| C_ADEH_1 | P | all cyclic polygon edges positive |
| C_AEH_1 | P | all cyclic polygon edges positive |
| C_CDEF_1 | P | all cyclic polygon edges positive |

### Row 3: BGO+,CFP-,EHP-

There are 244 positive integer entries. Their exact bound is

    U(W)=-4588048112362669565671897030827/2636627305258378821125000000000<0.

```text
147 L32*L34;  5 L0*L0*L30;  7 L0*L2*L28
14 L0*L2*L30;  1 L0*L10*L30;  15 L0*L12*L32
132 L0*L18*L30;  7 L0*L18*L35;  66 L0*L28*L30
9 L0*L30*L30;  6 L1*L1*L36;  16 L1*L3*L32
22 L1*L3*L34;  54 L1*L7*L26;  13 L1*L7*L36
95 L1*L8*L34;  14 L1*L11*L24;  81 L1*L23*L26
21 L1*L24*L26;  69 L1*L26*L28;  22 L1*L26*L33
66 L1*L28*L34;  3 L2*L2*L28;  12 L2*L6*L34
6 L2*L8*L28;  133 L2*L16*L28;  10 L2*L16*L33
6 L2*L28*L28;  55 L2*L28*L30;  6 L3*L3*L37
21 L3*L9*L26;  103 L3*L10*L32;  59 L3*L13*L24
21 L3*L13*L37;  84 L3*L21*L24;  23 L3*L24*L26
76 L3*L24*L30;  23 L3*L24*L35;  55 L3*L30*L32
61 L4*L10*L28;  15 L4*L10*L37;  18 L4*L12*L15
53 L4*L15*L23;  12 L4*L16*L28;  131 L4*L23*L26
32 L4*L28*L30;  25 L5*L5*L6;  22 L5*L6*L6
16 L5*L6*L13;  14 L5*L6*L14;  23 L5*L6*L24
26 L5*L6*L30;  18 L5*L9*L32;  53 L5*L14*L21
9 L5*L18*L30;  21 L5*L24*L24;  6 L6*L6*L34
59 L6*L13*L18;  11 L6*L21*L24;  6 L6*L28*L30
14 L6*L30*L30;  12 L7*L12*L15;  61 L7*L12*L16
113 L7*L16*L28;  17 L7*L24*L26;  11 L8*L8*L36
5 L8*L10*L32;  5 L8*L10*L34;  49 L8*L14*L30
22 L8*L14*L36;  76 L8*L18*L30;  70 L8*L24*L30
69 L8*L24*L34;  16 L8*L28*L30;  22 L8*L30*L33
16 L9*L11*L24;  16 L9*L11*L26;  131 L9*L23*L26
13 L9*L23*L35;  69 L9*L24*L26;  2 L9*L26*L26
11 L10*L10*L37;  81 L10*L16*L28;  47 L10*L26*L28
76 L10*L26*L32;  3 L10*L28*L30;  34 L10*L28*L35
18 L11*L15*L34;  135 L11*L21*L24;  11 L11*L21*L33
3 L11*L24*L24;  76 L11*L24*L26;  23 L12*L12*L15
9 L12*L12*L32;  24 L12*L15*L15;  22 L12*L15*L26
19 L12*L15*L28;  4 L12*L23*L26;  16 L12*L28*L28
9 L12*L28*L30;  117 L13*L18*L30;  34 L13*L24*L26
10 L14*L18*L30;  125 L14*L21*L24;  60 L14*L28*L30
1 L15*L15*L34;  1 L15*L16*L28;  1 L15*L24*L26
23 L15*L26*L26;  65 L16*L25*L28;  11 L16*L28*L28
133 L16*L32*L34;  62 L18*L27*L30;  11 L18*L30*L30
132 L18*L32*L34;  6 L21*L24*L24;  72 L21*L24*L29
135 L21*L32*L34;  6 L23*L26*L26;  72 L23*L26*L31
131 L23*L32*L34;  11 L28*L34*L34;  12 L32*L32*L34
9 L32*L34*L34;  22 L33*L33*L35;  23 L33*L35*L35
38 T+ABC*L16;  34 T+ABH*L18;  66 T+AGH*L6
18 T+AGH*L11;  34 T+AGH*L26;  19 T+AGH*L32
50 T+AGH*L37;  18 T+BCD*L9;  55 T+BCD*L12
17 T+BCD*L24;  26 T+BCD*L34;  51 T+BCD*L36
24 T+CDE*L2;  69 T+CDE*L15;  12 T+CDE*L16
2 T+CDE*L27;  32 T+CDE*L30;  18 T+CDE*L32
50 T+CDE*L37;  39 T+DEF*L23;  40 T+EFG*L21
17 T+FGH*L0;  76 T+FGH*L5;  10 T+FGH*L18
2 T+FGH*L25;  60 T+FGH*L28;  18 T+FGH*L34
50 T+FGH*L36;  119 T+BCO;  7 T+BCO*L1
158 T+BCO*L7;  50 T+BCO*L9;  11 T+BCO*L10
68 T+BCO*L30;  8 T+BCO*L34;  119 T+DEP
3 T+DEP*L1;  51 T+DEP*L2;  168 T+DEP*L4
11 T+DEP*L10;  83 T+DEP*L24;  10 T+DEP*L32
115 T+FGP;  50 T+FGP*L0;  12 T+FGP*L3
13 T+FGP*L8;  162 T+FGP*L14;  76 T+FGP*L26
9 T+FGP*L34;  118 T-AHO;  10 T-AHO*L3
12 T-AHO*L8;  50 T-AHO*L11;  164 T-AHO*L13
64 T-AHO*L28;  12 T-AHO*L32;  494 T+ABO
53 T+ABO*L8;  53 T+ABO*L10;  89 T+ABO*L28
98 T+ABO*L30;  17 T+ABO*L32;  10 T+ABO*L33
13 T+ABO*L34;  5 T+ABO*L35;  495 T+EFP
53 T+EFP*L1;  53 T+EFP*L3;  98 T+EFP*L24
105 T+EFP*L26;  11 T+EFP*L32;  10 T+EFP*L33
9 T+EFP*L34;  9 T+EFP*L35;  187 T-ADO
92 T-ADO*L2;  51 T-ADO*L4;  81 T-ADO*L10
61 T-ADO*L12;  2 T-ADO*L15;  124 T-ADO*L28
11 T-ADO*L32;  189 T+BGO;  89 T+BGO*L0
3 T+BGO*L5;  59 T+BGO*L6;  76 T+BGO*L8
50 T+BGO*L14;  129 T+BGO*L30;  11 T+BGO*L34
189 T-CFP;  81 T-CFP*L1;  6 T-CFP*L4
50 T-CFP*L7;  94 T-CFP*L9;  53 T-CFP*L15
132 T-CFP*L26;  11 T-CFP*L34;  187 T-EHP
84 T-EHP*L3;  53 T-EHP*L5;  97 T-EHP*L11
50 T-EHP*L13;  5 T-EHP*L14;  126 T-EHP*L24
11 T-EHP*L32;  219 C_ABCD_1*L21;  33 C_ABCD_1*L24
124 C_ABCD_1*L30;  212 C_ABGH_1*L23;  41 C_ABGH_1*L26
119 C_ABGH_1*L28;  208 C_CDEF_1*L18;  117 C_CDEF_1*L24
19 C_CDEF_1*L30;  213 C_EFGH_1*L16;  120 C_EFGH_1*L26
22 C_EFGH_1*L28
```

The occupancy factors used in this row have these strict edge tests.

| Factor | Interior points | Edge tests |
|---|---|---|
| C_ABCD_1 | O | all cyclic polygon edges positive |
| C_ABGH_1 | O | all cyclic polygon edges positive |
| C_CDEF_1 | P | all cyclic polygon edges positive |
| C_EFGH_1 | P | all cyclic polygon edges positive |

### Row 4: BGO-,CFP+,EHP+

There are 207 positive integer entries. Their exact bound is

    U(W)=-7239821094097205243065900640497/659156826314594705281250000000<0.

```text
10 L12*L15;  2 L0*L2*L5;  26 L0*L2*L9
2 L0*L2*L15;  19 L0*L3*L12;  28 L0*L11*L11
22 L0*L15*L31;  47 L1*L5*L36;  3 L1*L32*L36
2 L2*L5*L9;  16 L2*L5*L23;  24 L2*L7*L11
88 L2*L7*L16;  37 L2*L7*L19;  491 L2*L7*L23
352 L2*L7*L25;  65 L2*L7*L31;  431 L2*L7*L37
83 L2*L9*L11;  49 L2*L9*L25;  8 L2*L11*L18
17 L2*L15*L18;  34 L2*L15*L36;  21 L2*L23*L28
65 L2*L25*L25;  5 L3*L12*L25;  44 L3*L15*L15
92 L3*L15*L31;  1 L4*L28*L28;  52 L5*L9*L16
2 L5*L11*L25;  4 L5*L15*L31;  49 L6*L15*L21
13 L7*L12*L16;  444 L7*L12*L18;  1 L9*L9*L11
127 L9*L11*L11;  45 L9*L11*L15;  12 L9*L11*L23
20 L9*L11*L27;  90 L9*L11*L31;  24 L9*L15*L16
112 L10*L12*L28;  93 L11*L15*L34;  81 L11*L18*L31
5 L11*L21*L25;  8 L11*L29*L31;  3 L12*L12*L23
65 L12*L12*L28;  15 L12*L15*L19;  76 L12*L15*L31
51 L12*L16*L28;  108 L12*L18*L28;  364 L12*L25*L25
63 L12*L25*L28;  14 L12*L25*L37;  22 L15*L15*L34
504 L15*L17*L31;  34 L15*L21*L27;  39 L15*L25*L31
22 L15*L28*L36;  166 L15*L31*L31;  4 L16*L28*L28
810 L18*L31*L31;  13 L21*L25*L31;  163 L25*L31*L31
4 L32*L32*L36;  8 L32*L34*L36;  82 L32*L34*L37
353 T+ABH*L7;  191 T+ABH*L10;  205 T+ABH*L23
15 T+ABH*L28;  2 T+ABH*L33;  34 T+ABH*L36
58 T+ADE*L12*L15;  271 T+AGH;  101 T+AGH*L3
93 T+AGH*L11;  77 T+AGH*L18;  218 T+AGH*L22
387 T+AGH*L25;  16 T+AGH*L26;  82 T+AGH*L28
169 T+AGH*L31;  66 T+CDE;  1 T+CDE*L1
89 T+CDE*L10;  65 T+CDE*L12;  57 T+CDE*L16
94 T+CDE*L23;  17 T+CDE*L24;  1 T+CDE*L32
1 T+CDE*L33;  117 T+DEF;  19 T+DEF*L1
39 T+DEF*L15;  170 T+DEF*L16;  14 T+DEF*L18
84 T+DEF*L22;  96 T+DEF*L26;  177 T+DEF*L34
194 T+FGH;  504 T+FGH*L17;  26 T+FGH*L21
16 T+FGH*L25;  7 T+FGH*L27;  57 T+FGH*L28
236 T+FGH*L31;  40 T+BCO*L12;  172 T+DEP*L16
1 T+ABO*L7;  71 T+ABO*L9;  13 T+ABO*L12
89 T+ABO*L25;  18 T+EFP*L5;  1 T+EFP*L9
26 T+EFP*L31;  48 T+AOP*L7;  23 T+AOP*L28
254 T-BOP;  48 T-BOP*L1;  5 T-BOP*L4
93 T-BOP*L32;  71 T-BOP*L33;  5 T-EOP*L5
71 T+FOP*L24;  69 T+FOP*L32;  724 T+AEP
66 T+AEP*L1;  147 T+AEP*L3;  5 T+AEP*L17
167 T+AEP*L21;  22 T+AEP*L24;  8 T+AEP*L26
71 T+AEP*L29;  76 T+AEP*L32;  43 T+AEP*L34
430 T+BFO;  33 T+BFO*L3;  269 T+BFO*L23
546 T+BFO*L24;  19 T+BFO*L26;  873 T+BFO*L31
27 T+BFO*L32;  14 T+BFO*L33;  13 T-BFP*L1
8 T-BFP*L2;  10 T-BFP*L10;  269 T-BFP*L19
560 T-BFP*L24;  16 T-BFP*L27;  10 T-BFP*L28
587 T-ADO;  48 T-ADO*L1;  24 T-ADO*L2
99 T-ADO*L11;  172 T-ADO*L21;  19 T-ADO*L24
7 T-ADO*L31;  8 T-ADO*L32;  4 T-ADO*L33
7 T-ADO*L35;  2 S_AE*L5;  127 S_AE*L11
45 S_AE*L15;  167 S_AE*L21;  65 S_AE*L31
674 T-BGO;  185 T-BGO*L1;  28 T-BGO*L3
242 T-BGO*L7;  43 T-BGO*L26;  807 T-BGO*L31
108 T-BGO*L32;  310 T-BGO*L33;  71 T+CFP
30 T+CFP*L2;  13 T+CFP*L10;  94 T+CFP*L28
3 T+CFP*L30;  619 T+EHP;  17 T+EHP*L1
5 T+EHP*L13;  34 T+EHP*L27;  71 T+EHP*L29
7 T+EHP*L30;  73 T+EHP*L32;  66 C_AEH_1*L1*L36
205 C_AEH_1*L30*L37;  91 C_AEH_1*L32*L36;  427 C_AEH_1*L34*L37
2 C_BCF_1*L0*L12;  5 C_BCF_1*L2*L18;  14 C_BCF_1*L12*L25
1 C_BCF_1*L16*L32;  21 C_BFG_1*L2*L23;  20 C_BFG_1*L32*L36
1 C_BCFG_2*L1*L28;  24 C_BCFG_2*L2*L37;  185 C_BCFG_2*L10*L28
15 C_BCFG_2*L10*L37;  65 C_BCFG_2*L12*L28;  64 C_BCFG_2*L16*L28
18 C_BCFG_2*L24*L28;  3 C_BCFG_2*L30*L37;  58 C_BCFG_2*L32*L36
```

The occupancy factors used in this row have these strict edge tests.

| Factor | Interior points | Edge tests |
|---|---|---|
| C_AEH_1 | P | all cyclic polygon edges positive |
| C_BCFG_2 | OP | all cyclic polygon edges positive |
| C_BCF_1 | P | all cyclic polygon edges positive |
| C_BFG_1 | O | all cyclic polygon edges positive |

### Row 5: BGO-,CFP+,EHP-

There are 210 positive integer entries. Their exact bound is

    U(W)=-2428709453906492272835412194253/2636627305258378821125000000000<0.

```text
2 L32*L32;  32 L0*L2*L15;  18 L0*L2*L28
31 L1*L1*L36;  251 L1*L5*L29;  41 L1*L6*L36
1 L1*L11*L18;  24 L1*L12*L32;  1 L1*L24*L36
16 L2*L2*L7;  9 L2*L2*L37;  9 L2*L5*L15
1 L2*L5*L18;  3 L2*L7*L12;  39 L2*L7*L16
3 L2*L9*L27;  9 L2*L15*L17;  14 L2*L15*L19
9 L2*L15*L21;  16 L2*L15*L23;  93 L2*L15*L25
24 L2*L15*L33;  6 L2*L15*L34;  143 L2*L16*L28
94 L2*L23*L28;  1 L2*L23*L32;  34 L2*L25*L25
9 L2*L25*L28;  6 L2*L28*L28;  101 L2*L28*L37
12 L3*L28*L32;  1 L5*L5*L23;  11 L5*L5*L29
9 L5*L6*L17;  10 L5*L6*L21;  99 L5*L6*L29
24 L5*L8*L32;  2 L5*L11*L29;  113 L5*L23*L24
21 L5*L24*L29;  8 L5*L27*L29;  15 L5*L32*L34
27 L6*L6*L17;  25 L6*L9*L11;  14 L6*L11*L12
10 L6*L11*L16;  18 L6*L11*L18;  13 L6*L11*L20
14 L6*L11*L22;  89 L6*L11*L29;  30 L6*L11*L33
8 L6*L15*L36;  32 L8*L8*L36;  245 L8*L12*L15
41 L8*L15*L36;  19 L9*L11*L21;  23 L9*L11*L24
13 L10*L24*L32;  11 L11*L11*L14;  11 L11*L11*L37
43 L11*L14*L21;  95 L11*L18*L24;  139 L11*L21*L24
6 L11*L24*L24;  7 L11*L24*L29;  102 L11*L24*L37
35 L11*L29*L29;  11 L12*L12*L15;  2 L12*L15*L16
12 L12*L15*L20;  97 L12*L15*L25;  3 L12*L15*L31
113 L12*L18*L28;  18 L12*L25*L28;  8 L12*L25*L31
1 L12*L32*L34;  28 L15*L15*L20;  46 L16*L28*L28
1 L17*L32*L32;  120 L18*L31*L31;  45 L21*L24*L24
122 L23*L27*L27;  7 L32*L32*L34;  41 L32*L33*L36
46 L32*L34*L37;  18 L32*L35*L36;  124 T+ABH
9 T+ABH*L5;  18 T+ABH*L7;  80 T+ABH*L15
9 T+ABH*L17;  28 T+ABH*L18;  18 T+ABH*L21
15 T+ABH*L23;  24 T+ABH*L25;  3 T+ABH*L28
13 T+ABH*L30;  6 T+ABH*L34;  10 T+ADE*L12*L15
6 T+ADH*L5*L6;  63 T+AGH;  161 T+AGH*L8
12 T+AGH*L16;  121 T+AGH*L21;  91 T+AGH*L25
18 T+AGH*L28;  22 T+AGH*L31;  67 T+AGH*L32
13 T+BCD*L3;  6 T+BCD*L6;  19 T+BCD*L11
12 T+BCD*L24;  9 T+BCD*L36;  61 T+CDE
164 T+CDE*L1;  4 T+CDE*L2;  1 T+CDE*L10
125 T+CDE*L16;  19 T+CDE*L21;  15 T+CDE*L24
20 T+CDE*L27;  93 T+CDE*L29;  69 T+CDE*L32
121 T+DEF;  69 T+DEF*L6;  14 T+DEF*L12
20 T+DEF*L14;  18 T+DEF*L16;  19 T+DEF*L18
13 T+DEF*L20;  28 T+DEF*L23;  7 T+DEF*L24
16 T+DEF*L26;  25 T+DEF*L29;  13 T+FGH*L2
11 T+FGH*L10;  6 T+FGH*L15;  10 T+FGH*L28
10 T+FGH*L36;  1 T+BCO*L12;  9 T+DEP*L2
10 T-AHO*L11;  12 T+ABO*L12;  32 T+ABO*L15
34 T+ABO*L25;  7 T+ABO*L28;  19 T+EFP*L5
32 T+EFP*L6;  5 T+EFP*L24;  34 T+EFP*L29
17 T+AOP*L15;  17 T-BOP*L15;  17 T-EOP*L6
17 T+FOP*L6;  197 T+BFO;  21 T+BFO*L12
7 T+BFO*L25;  17 T+BFO*L28;  110 T+BFO*L31
47 T+BFO*L32;  198 T-BFP;  18 T-BFP*L5
1 T-BFP*L6;  1 T-BFP*L11;  16 T-BFP*L24
112 T-BFP*L27;  6 T-BFP*L29;  46 T-BFP*L32
147 T-ADO;  48 T-ADO*L2;  8 T-ADO*L11
4 T-ADO*L15;  5 T-ADO*L25;  125 T-ADO*L27
18 T-ADO*L28;  16 T-ADO*L32;  125 S_AE*L27
123 S_AE*L31;  13 S_AE*L32;  223 T-BGO
9 T-BGO*L2;  1 T-BGO*L4;  20 T-BGO*L12
113 T-BGO*L28;  110 T-BGO*L31;  225 T+CFP
9 T+CFP*L5;  12 T+CFP*L11;  113 T+CFP*L24
114 T+CFP*L27;  148 T-EHP;  9 T-EHP*L2
5 T-EHP*L6;  48 T-EHP*L11;  16 T-EHP*L24
4 T-EHP*L29;  123 T-EHP*L31;  15 T-EHP*L32
6 C_BCF_1*L8*L15;  62 C_BCF_1*L16*L32;  63 C_BCF_1*L20*L32
61 C_BFG_1*L17*L32;  59 C_BFG_1*L21*L32;  13 C_BFG_1*L31*L32
17 C_ABCD_1*L32;  3 C_BCFG_2*L2*L28;  119 C_BCFG_2*L2*L32
109 C_BCFG_2*L11*L32;  43 C_BCFG_2*L32*L36;  18 C_EFGH_1*L32
```

The occupancy factors used in this row have these strict edge tests.

| Factor | Interior points | Edge tests |
|---|---|---|
| C_ABCD_1 | O | all cyclic polygon edges positive |
| C_BCFG_2 | OP | all cyclic polygon edges positive |
| C_BCF_1 | P | all cyclic polygon edges positive |
| C_BFG_1 | O | all cyclic polygon edges positive |
| C_EFGH_1 | P | all cyclic polygon edges positive |

### Row 6: BGO-,CFP-,EHP+

There are 170 positive integer entries. Their exact bound is

    U(W)=-9891953394052897205316870332219/2636627305258378821125000000000<0.

```text
7 L4*L7;  5 L4*L9;  12 L0*L0*L11
1 L0*L0*L21;  31 L0*L4*L9;  6 L0*L9*L11
19 L0*L12*L15;  4 L0*L16*L28;  12 L0*L21*L25
5 L0*L25*L31;  55 L1*L1*L26;  2 L1*L23*L26
31 L1*L34*L37;  1 L2*L7*L11;  43 L2*L7*L19
39 L2*L7*L25;  6 L2*L7*L37;  10 L2*L9*L18
24 L2*L9*L21;  4 L3*L12*L25;  8 L3*L15*L31
3 L4*L7*L15;  8 L4*L7*L16;  79 L4*L9*L20
8 L4*L9*L31;  56 L4*L15*L21;  3 L4*L19*L34
5 L4*L23*L26;  12 L4*L23*L33;  1 L6*L15*L21
71 L7*L12*L18;  4 L7*L16*L28;  2 L7*L27*L37
5 L8*L12*L15;  4 L8*L15*L31;  5 L9*L11*L23
27 L9*L11*L31;  39 L10*L10*L28;  3 L10*L25*L28
3 L10*L28*L34;  32 L11*L18*L31;  5 L11*L23*L26
29 L12*L15*L22;  2 L12*L18*L27;  1 L12*L19*L26
50 L12*L25*L25;  1 L12*L28*L34;  1 L15*L20*L28
7 L15*L21*L29;  5 L15*L22*L31;  2 L15*L26*L37
111 L15*L31*L31;  5 L16*L25*L28;  44 L18*L25*L31
26 L18*L28*L34;  12 L18*L31*L31;  1 L20*L28*L28
33 L21*L25*L25;  28 L21*L25*L31;  3 L23*L26*L31
14 L25*L25*L31;  17 L25*L31*L31;  25 T+ABC*L1
7 T+ABC*L16;  2 T+ABC*L20;  31 T+ABC*L32
39 T+ABH*L7;  1 T+ABH*L10;  52 T+AGH
19 T+AGH*L0;  5 T+AGH*L3;  2 T+AGH*L8
23 T+AGH*L18;  113 T+AGH*L22;  50 T+AGH*L25
1 T+AGH*L31;  7 T+BCD*L23;  45 T+BCF*L15*L21
38 T+DEF*L10;  1 T+DEF*L12;  5 T+DEF*L23
3 T+DEF*L25;  4 T+DEF*L34;  24 T+EFG*L1
8 T+EFG*L4;  80 T+FGH;  19 T+FGH*L0
6 T+FGH*L3;  7 T+FGH*L8;  1 T+FGH*L11
23 T+FGH*L17;  50 T+FGH*L21;  14 T+FGH*L25
111 T+FGH*L31;  38 T+BCO;  3 T+BCO*L10
43 T+BCO*L23;  36 T+DEP;  8 T+DEP*L1
1 T+DEP*L7;  24 T+DEP*L16;  3 T+FGP*L4
5 T-AHO*L7;  26 T+EFP*L31;  165 T+AEP
8 T+AEP*L6;  24 T+AEP*L21;  46 T+AEP*L25
45 T+AEP*L30;  45 T+AEP*L34;  21 T+AEP*L35
173 T+BFO;  43 T+BFO*L18;  61 T+BFO*L24
19 T+BFO*L31;  38 T+BFO*L32;  69 T-ADO
8 T-ADO*L10;  24 T-ADO*L21;  4 T-ADO*L28
63 T-ADO*L30;  24 T-ADO*L34;  31 T-ADO*L35
1 K_CDG*L3;  5 K_CDG*L23;  2 K_CDH*L37
31 S_BF*L0;  43 S_BF*L18;  24 S_AE*L21
1 S_AE*L31;  157 T-BGO;  20 T-BGO*L1
3 T-BGO*L5;  18 T-BGO*L7;  1 T-BGO*L27
12 T-BGO*L31;  31 T-BGO*L32;  58 T-BGO*L33
81 T-CFP;  43 T-CFP*L18;  79 T-CFP*L24
5 T-CFP*L26;  21 T-CFP*L32;  31 T-CFP*L33
164 T+EHP;  56 T+EHP*L4;  8 T+EHP*L6
1 T+EHP*L15;  32 T+EHP*L25;  1 T+EHP*L29
45 T+EHP*L34;  45 T+EHP*L35;  74 C_AEH_1*L4*L23
5 C_AEH_1*L9*L36;  3 C_AEH_1*L23*L26;  16 C_AEH_1*L30*L30
23 C_AEH_1*L30*L36;  5 C_AEH_1*L34*L37;  3 C_BFG_1*L2*L37
24 C_BFG_1*L7*L16;  26 C_BFG_1*L10*L37;  47 C_BFG_1*L16*L28
74 C_BFG_1*L24*L37;  48 C_BFG_1*L32*L36;  5 C_BFG_1*L33*L37
21 C_ADEH_1*L4*L23;  21 C_ADEH_1*L10*L37;  24 C_BCFG_1*L1*L36
24 C_BCFG_1*L7*L16;  3 C_CDEF_1*L15
```

The occupancy factors used in this row have these strict edge tests.

| Factor | Interior points | Edge tests |
|---|---|---|
| C_ADEH_1 | P | all cyclic polygon edges positive |
| C_AEH_1 | P | all cyclic polygon edges positive |
| C_BCFG_1 | O | all cyclic polygon edges positive |
| C_BFG_1 | O | all cyclic polygon edges positive |
| C_CDEF_1 | P | all cyclic polygon edges positive |

### Row 7: BGO-,CFP-,EHP-

There are 186 positive integer entries. Their exact bound is

    U(W)=-6816975829357881628647132329857/2636627305258378821125000000000<0.

```text
42 L4*L23;  33 L0*L2*L15;  4 L1*L1*L36
49 L1*L23*L26;  49 L1*L23*L35;  1 L1*L26*L26
13 L1*L34*L37;  1 L2*L2*L33;  3 L2*L4*L33
7 L2*L7*L16;  4 L2*L15*L36;  21 L2*L19*L28
26 L2*L25*L25;  36 L2*L28*L37;  33 L3*L21*L24
3 L3*L24*L26;  5 L4*L4*L23;  4 L4*L7*L15
13 L4*L7*L19;  44 L4*L7*L23;  21 L4*L7*L25
22 L4*L7*L31;  5 L4*L9*L11;  5 L4*L10*L28
16 L4*L12*L15;  6 L4*L15*L21;  4 L4*L19*L28
68 L4*L23*L25;  82 L4*L23*L31;  4 L4*L28*L34
5 L5*L32*L36;  9 L6*L6*L11;  5 L6*L9*L21
1 L6*L11*L12;  18 L6*L11*L18;  3 L6*L11*L31
1 L6*L14*L21;  1 L6*L15*L36;  13 L6*L21*L27
179 L6*L21*L29;  12 L7*L23*L35;  25 L7*L24*L26
211 L8*L12*L15;  18 L8*L12*L23;  2 L9*L11*L24
1 L9*L11*L32;  24 L10*L10*L28;  14 L10*L12*L15
11 L10*L15*L37;  85 L10*L21*L32;  11 L10*L26*L32
9 L10*L28*L28;  14 L11*L11*L14;  11 L11*L11*L24
13 L11*L14*L21;  9 L11*L15*L23;  105 L11*L21*L24
28 L11*L21*L33;  22 L12*L15*L18;  11 L12*L15*L20
79 L12*L15*L25;  4 L12*L15*L26;  13 L12*L15*L28
61 L12*L18*L28;  15 L12*L23*L32;  88 L12*L25*L25
5 L12*L25*L28;  41 L13*L24*L24;  2 L14*L21*L24
10 L15*L21*L32;  55 L18*L31*L31;  11 L19*L32*L34
14 L20*L28*L28;  16 L21*L24*L24;  27 L21*L24*L29
21 L23*L24*L26;  8 L28*L28*L36;  20 L29*L32*L36
13 L32*L32*L36;  36 L32*L34*L37;  12 L33*L35*L37
14 T+ABH;  7 T+ABH*L0;  13 T+ABH*L13
5 T+ABH*L17;  12 T+ABH*L18;  12 T+ABH*L21
21 T+ABH*L23;  51 T+ABH*L25;  25 T+ABH*L33
4 T+ABH*L34;  100 T+AGH;  136 T+AGH*L8
11 T+AGH*L11;  20 T+AGH*L21;  32 T+AGH*L23
124 T+AGH*L25;  5 T+AGH*L28;  71 T+AGH*L32
34 T+BCD;  4 T+BCD*L1;  1 T+BCD*L3
12 T+BCD*L11;  8 T+BCD*L19;  36 T+BCD*L23
8 T+DEF*L10;  5 T+DEF*L12;  4 T+DEF*L23
12 T+DEF*L34;  5 T+FGH*L2;  25 T+FGH*L10
43 T+FGH*L37;  5 T+BCO*L7;  4 T+BCO*L28
12 T+BCO*L33;  141 T+DEP;  13 T+DEP*L2
8 T+DEP*L4;  158 T+DEP*L6;  28 T+DEP*L10
23 T+DEP*L14;  7 T+DEP*L32;  71 T+FGP*L4
33 T+FGP*L32;  8 T+FGP*L35;  4 T+ABO*L6
1 T+ABO*L15;  305 T+EFP;  7 T+EFP*L9
3 T+EFP*L13;  5 T+EFP*L33;  3 T+EFP*L34
2 T+EFP*L35;  211 T+BFO;  31 T+BFO*L1
54 T+BFO*L15;  18 T+BFO*L29;  68 T+BFO*L31
65 T+BFO*L32;  13 T+BFO*L34;  3 T-BFP*L4
64 T-ADO;  4 T-ADO*L1;  8 T-ADO*L2
1 T-ADO*L15;  8 T-ADO*L29;  177 T-ADO*L30
13 T-ADO*L32;  5 S_AE*L4;  231 T-BGO
35 T-BGO*L7;  54 T-BGO*L15;  38 T-BGO*L28
55 T-BGO*L31;  24 T-BGO*L32;  13 T-BGO*L34
166 T-CFP;  51 T-CFP*L1;  5 T-CFP*L4
8 T-CFP*L7;  3 T-CFP*L12;  58 T-CFP*L15
3 T-CFP*L34;  99 T-EHP;  16 T-EHP*L3
6 T-EHP*L5;  130 T-EHP*L11;  19 T-EHP*L24
6 T-EHP*L29;  15 T-EHP*L31;  6 T-EHP*L32
4 C_BFG_1*L1*L11;  35 C_BFG_1*L1*L37;  177 C_BFG_1*L16*L28
177 C_BFG_1*L17*L32;  20 C_BFG_1*L21*L32;  22 C_ABCD_1*L12
21 C_ABCD_1*L21;  7 C_BCFG_1*L1*L11;  4 C_EFGH_1*L2
20 C_EFGH_1*L4;  2 C_EFGH_1*L15;  16 C_EFGH_1*L16
13 C_EFGH_1*L28;  4 C_EFGH_1*L32;  16 C_EFGH_1*L36
```

The occupancy factors used in this row have these strict edge tests.

| Factor | Interior points | Edge tests |
|---|---|---|
| C_ABCD_1 | O | all cyclic polygon edges positive |
| C_BCFG_1 | O | all cyclic polygon edges positive |
| C_BFG_1 | O | all cyclic polygon edges positive |
| C_EFGH_1 | P | all cyclic polygon edges positive |

## 7. Complete corner-edge conclusion

The seven tables contain 1,442 positive integer entries, all at most
2,549. Every row gives 0<=W<=U(W)<0. By Section 2 this excludes any
failure of any of the four candidate oblique signs, throughout the
complete corner-edge 4/4 line class.

When all four signs hold, (1) supplies the four OP signs and U,V>0,
so ASYMMETRIC_SIGN_CHAMBER.md proves the sharp bound m<=A* and its
candidate equality classification. The excluded rows cannot be equality
cases because their stronger bound is m<s/2<A*. Thus the entire
corner-edge 4/4 class, including all oblique orientations and equality,
is now settled. N8_COMPLETE.md combines it with the separate complete
exclusions of the same-side-edge and 3/5 classes.
