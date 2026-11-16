# Seven boundary points: an occupied right ear and a lower point

**Theorem.** Consider a normalized seven-contact configuration whose
three other points are inside the contact heptagon. Reflect vertically,
if needed, so that the higher left contact is at least as high as the
higher right contact. If one of the three interior points lies in the
actual right ear CDE and another lies below HC, an actual triangle has
unsigned doubled area below s=93/1000.

This is a complete exclusion of the indicated all-interior N7 placement.
Section 1 also gives an exhaustive five-count catalogue. The only
nonanalytic step consists of two fixed cubic inequalities. They contain
349 positive integer terms and use 52 explicitly printed
Plucker deductions. Every factor is defined below. The optional
standard-library checker reads only this manuscript.

All areas are doubled, and [XYZ]=det(Y-X,Z-X).

## 1. The heptagon and the five possible counts

Use the seven actual contacts

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), H=(0,h),

where

    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e<=h, b<=f<=c.

The choice h>=e is available here because all three free points are
inside the boundary heptagon. Vertical reflection preserves that
property and exchanges h,e. It uses no additional lower-point
normalization.

Inside ABCDEFH, the three disjoint regions are the lower quadrilateral
HABC, upper quadrilateral HCEF, and actual triangle CDE. Their
boundaries are actual chords, so no further point lies on a boundary.
Let their free-point counts be k,j,q.

The triangle (0,0),H,C contains A,B and every lower point, with two
actual endpoints H,C. Three lower points would give seven actual
points in it, contrary to THREE_CORNERS.md, since its doubled area
hc<=1. Thus k<=2. Also

    area(HCEF)=1-(h-e)(c-f)<=1,

so the quadrilateral capacity theorem gives j<=2.

There cannot be two free points in CDE. Together with B,C,D,E they
would give six actual points in the virtual triangle B,(1,0),E.
Its two endpoints B,E are actual. Moreover b>=s from ABH, and
EFH=1-h+f(h-e)<=1-e gives e<=1-s. Its area therefore satisfies

    e(1-b)<=(1-s)^2=822649/1000000
            <(4427/500)s<Gamma3*s.

The strict rational gap is 773/1000000. The six-point endpoint theorem
excludes this possibility, so q<=1. Consequently the complete
catalogue is

| k | j | q |
|---:|---:|---:|
| 1 | 2 | 0 |
| 2 | 1 | 0 |
| 0 | 2 | 1 |
| 1 | 1 | 1 |
| 2 | 0 | 1 |

The last row is already impossible by a short area budget. With two
lower points, the nontriangular six-point endpoint theorem for
H,C,A,B and those points gives hc>9s. The occupied actual ear has
area CDE>=3s, but

    CDE<=(1-c)e<=h(1-c)<=1-hc<1-9s=163/1000<3s.

The actual lower hull is nontriangular: A,H are distinct points on
the left leg and B,C are distinct points on the bottom leg. This
justifies the stronger nontriangular six-point bound.

It remains, for the stated theorem, to exclude (k,j,q)=(1,1,1).
Name its points

    G=(g,z) in HABC, O=(x,y) in HCEF, P=(u,v) in CDE.

Unlike the single-exterior N7 notes, G here is strictly inside the
contact heptagon. No external-cap labeling is used.

## 2. A common rational box

Put

    eta=93/790, ell=7347/69700,
    Fmax=1-ell, h0=4s/Fmax, K=149/20.

The boundary estimates in N7_PLACEMENTS.md Section 4 give

    117/1000<c-b<79/100,
    a,d>eta, h-a,e-d<697/790,
    b,1-c>ell, ell<f<Fmax.

The paired-ear Cauchy inequalities

    sqrt(ABC)+sqrt(ABH)<=sqrt(hc),
    sqrt(BCD)+sqrt(CDE)<=sqrt(e(1-b))

give hc,e(1-b)>=4s, and hence h,e>=h0. Since h>=e,
EFH<=1-e gives e<=1-s. It follows that b<=1-4s/(1-s).
The actual side-gap clearances also give a<=1-s and d<=1-2s.

Every interior point T has ell<=x_T<=Fmax and y_T>=eta, from the
actual AH,DE and BC triangles. Since T is inside the heptagon,
FHT,EFT>=s and

    (1-e)FHT+(1-h)EFT=EFH(1-y_T),
    EFH=(1-f)(1-h)+f(1-e)<=2-e-h.

Thus y_T<=1-s. These deductions give the following single closed box,
in the exact coordinate order (a,b,c,d,e,f,g,h,z,x,y,u,v):

| Coordinate | Lower | Upper |
|---|---|---|
| a | eta | 1-s |
| b | ell | 1-4s/(1-s) |
| c | ell | Fmax |
| d | eta | 1-2s |
| e | h0 | 1-s |
| f | ell | Fmax |
| g | ell | Fmax |
| h | h0 | 1 |
| z | eta | 1-s |
| x | ell | Fmax |
| y | eta | 1-s |
| u | ell | Fmax |
| v | eta | 1-s |

For coordinate i, i=0,...,12, let L_(2i) be its value minus its
lower endpoint and L_(2i+1) its upper endpoint minus its value.
The remaining nonnegative affine factors are:

| Index | Factor | Index | Factor |
|---:|---|---:|---|
| 26 | h-a-s | 27 | 697/790-h+a |
| 28 | e-d-s | 29 | 697/790-e+d |
| 30 | c-b-117/1000 | 31 | 79/100-c+b |
| 32 | f-b | 33 | c-f |
| 34 | h-e | 35 | e-a |

Closing every endpoint only enlarges the domain.

## 3. The two orientation rows and their explicit deductions

The common starting signs are completely specified by three rules:

* Every triple of A,B,C,D,E,F,H in that cyclic order is positive.
* Every directed edge test of ABCDEFH is positive at G,O,P.
* Every directed edge test of HABC at G, HCEF at O and CDE at P
  is positive.

Split the actual triangle DFP. Row R1 has DFP>0; row R2 has DFP<0.
This is exhaustive because its unsigned area is at least s.

Every following line has the form "plu ABCDE XYZ sign". Its premise is

    [ABC][ADE]-[ABD][ACE]+[ABE][ACD]=0.

Two of these summands have known equal nonzero signs, and exactly one
factor in the third is unknown. The third summand must have the
opposite sign, forcing the stated sign of XYZ. Permuting triangle
labels has the usual determinant sign. The records are in their
literal deduction order, so every premise is either a starting sign,
the row's DFP sign, or an earlier record.

### Deductions for R1

```n7-ear-R1-trace
plu CABEP CAP -1
plu CABHO CAO -1
plu CAEFP CFP -1
plu CAEHP CHP -1
plu CAEOP COP -1
plu CBEGH CEG 1
plu CBEGP CGP -1
plu CBFGH CFG 1
plu CBGHO CGO -1
plu EACDP EAP 1
plu EADHP EHP 1
plu EBCDP EBP 1
plu ECDGP EGP 1
plu ECDOP EOP 1
plu FACDP FAP 1
plu FBCDP FBP 1
plu FCDEG FDG -1
plu FCDGP FGP 1
plu GCDFH GDH 1
plu GCEFH GEH 1
plu GCEHP GHP -1
plu HABCO HBO 1
plu HABCP HBP 1
plu HACGO HGO 1
```

### Deductions for R2

```n7-ear-R2-trace
plu CABEP CAP -1
plu CABHO CAO -1
plu CAEFP CFP -1
plu CAEHP CHP -1
plu CAEOP COP -1
plu CBEGH CEG 1
plu CBEGP CGP -1
plu CBFGH CFG 1
plu CBGHO CGO -1
plu DACFP DAP -1
plu DAFHP DHP -1
plu DBCFP DBP -1
plu EACDP EAP 1
plu EADHP EHP 1
plu EBCDP EBP 1
plu ECDGP EGP 1
plu ECDOP EOP 1
plu FACEP FAP 1
plu FBCEP FBP 1
plu FCDEG FDG -1
plu FCEGP FGP 1
plu GCDFH GDH 1
plu GCEFH GEH 1
plu GCEHP GHP -1
plu HABCO HBO 1
plu HABCP HBP 1
plu HACGO HGO 1
plu PCDFG PDG -1
```


For an established sign, the token XYZ+ means [XYZ]-s and XYZ- means
-[XYZ]-s. These are nonnegative. The checker verifies every signed
factor against the starting facts and these printed deductions.

## 4. All remaining polynomial factors

The lower virtual triangle (0,0),H,C contains the five actual points
H,C,A,B,G. The five-point endpoint theorem in TYPE_II.md gives
hc>=(3+2sqrt(2))s>(29/5)s. Thus

    EL=hc-(29/5)s>=0.

The point P lies in CDE, so CDE>=3s. Together with BCD>=s, the
paired-ear Cauchy inequality in Section 2 gives

    e(1-b)>=(1+sqrt(3))^2*s=Gamma2*s>Ks.

Thus the two other common factors are

    ER=e(1-b)-Ks,       CCDE_1=CDE-3s.

Each of the positively ordered actual quadrilaterals CDEF,CDEG,CDEO
used in row R2 contains P. Its three-edge and four-vertex signs follow
from Section 3; P is already in CDE. The factors are

    QCDEF_1=area(CDEF)-(24/5)s,
    QCDEG_1=area(CDEG)-(24/5)s,
    QCDEO_1=area(CDEO)-(24/5)s.

Their nonnegativity uses the universal one-interior-point quadrilateral
bound 2(1+sqrt(2))s>(24/5)s. A short proof is in
U3_FOUR_ONE_SIDE.md Section 3: if the four fan areas are a0,b0,c0,d0,
each is at least s and |a0*c0-b0*d0|>=s^2. AM--GM gives their
sum at least 2(1+sqrt(2))s.

One further factor occurs in R2:

    F5_EHACD=CDE+11s[d+(h-e)(1-c)]>=0.

Its sign follows directly from CDE>0,d>0,h>=e,c<=1. Its name is only
a table label. In particular this row needs no additional five-point
support theorem for that factor.

## 5. The complete fixed contradictions

For each row let W be the displayed positive integer sum. All factors
are nonnegative, so W>=0. Expand W as sum(c_alpha X^alpha). Because all
coordinate bounds in Section 2 are positive, an exact upper bound is

    B(W)=sum_(c_alpha>0)c_alpha product_i(upper_i^alpha_i)
         +sum_(c_alpha<0)c_alpha product_i(lower_i^alpha_i).

Both displayed values are strictly negative. Each product has degree
at most three. This excludes both signs of DFP and proves the entire
(1,1,1) count. Together with the analytic (2,0,1) exclusion in
Section 1, it proves the theorem in the opening paragraph.

The all-interior count (2,1,0) is excluded by
N6_TWO_LOWER_SIDE.md, Section 6, using the right contact D as a
boundary side-cap point. Both normalized side locations are retained
there. Together with the two counts proved here, this leaves only
(1,2,0) and (0,2,1) in the catalogue of Section 1. The latter is
excluded separately in N7_HEPTAGON_TWO_UPPER_EAR.md; only (1,2,0)
remains open.

### Row R1

DFP>0.

Exact upper bound: `-12833525578676325057463203890216719982407/151163306287550839226738417934250000000`.

```n7-ear-R1-sum
1 2525 L0*L0*L2
2 618 L0*L0*L5
3 321 L0*L0*L10
4 39393 L0*L2*L6
5 2529 L0*L2*L9
6 106 L0*L2*L24
7 2398 L0*L2*L27
8 4616 L0*L2*L32
9 4642 L0*L5*L6
10 287 L0*L9*L11
11 11 L0*L9*L23
12 429 L0*L10*L15
13 511 L0*L33*L34
14 372 L2*L2*L24
15 573 L2*L5*L6
16 1900 L2*L5*L9
17 28793 L2*L6*L9
18 3527 L2*L6*L24
19 10951 L2*L6*L31
20 45921 L2*L6*L32
21 9838 L2*L6*L34
22 1095 L2*L8*L9
23 372 L2*L9*L23
24 2582 L2*L9*L33
25 1700 L2*L10*L15
26 2171 L2*L15*L30
27 2445 L2*L15*L32
28 96 L2*L23*L27
29 2892 L2*L24*L33
30 1715 L2*L34*L34
31 620 L3*L9*L9
32 22906 L4*L15*L15
33 12307 L5*L6*L6
34 57887 L5*L6*L9
35 29933 L5*L6*L24
36 22846 L5*L9*L9
37 43307 L5*L9*L24
38 8611 L5*L9*L34
39 12504 L5*L33*L34
40 10010 L6*L6*L11
41 2630 L6*L6*L22
42 5299 L6*L9*L11
43 5259 L6*L15*L23
44 32327 L6*L33*L33
45 6942 L8*L9*L9
46 27273 L8*L9*L33
47 13885 L8*L15*L15
48 20827 L9*L9*L15
49 9013 L9*L9*L22
50 694 L9*L22*L34
51 35642 L9*L23*L33
52 13087 L9*L25*L33
53 10195 L9*L28*L33
54 1802 L9*L30*L33
55 499 L9*L33*L35
56 21940 L10*L15*L28
57 32327 L10*L24*L33
58 9747 L11*L15*L15
59 21364 L15*L15*L22
60 21364 L15*L15*L23
61 6942 L15*L15*L27
62 1715 L15*L15*L30
63 6942 L15*L15*L35
64 95 L15*L25*L32
65 5958 L15*L28*L32
66 2171 L15*L30*L33
67 10010 L24*L28*L33
68 4660 L24*L33*L34
69 321 L26*L26*L33
70 26952 L33*L34*L34
71 6942 L34*L34*L34
72 297 ABC+*L0
73 2228 ABC+*L16
74 11 ABC+*L24
75 4626 ABH+*L0
76 34751 ABH+*L6
77 2529 ABH+*L9
78 2228 ABH+*L17
79 96 ABH+*L23
80 95 ABH+*L24
81 4616 ABH+*L32
82 4642 BCD+*L0
83 46343 BCD+*L5
84 11373 BCD+*L10
85 3527 BCD+*L24
86 34970 BCD+*L32
87 38631 BCD+*L34
88 298 EFH+*L0
89 1700 EFH+*L2
90 20136 EFH+*L14
91 4565 EFH+*L24
92 27899 EFH+*L28
93 16884 EFH+*L34
94 2228 ABG+*L0
95 2823 ABG+*L26
96 595 ABG+*L27
97 1779 CGH-*L0
98 449 CGH-*L14
99 449 CGH-*L27
100 372 BCP+*L2
101 3315 BCP+*L33
102 25103 CDP+*L0
103 3465 CDP+*L2
104 11892 CDP+*L6
105 3315 CDP+*L11
106 39778 CDP+*L23
107 25103 CDP+*L26
108 110768 CDP+*L28
109 91495 CDP+*L29
110 40350 DEP+*L2
111 12921 DEP+*L9
112 39778 DEP+*L23
113 36463 DEP+*L30
114 35642 DEP+*L33
115 19845 DEP+*L34
116 20527 CEP-*L0
117 200 CEP-*L4
118 13437 CEP-*L7
119 39778 CEP-*L23
120 20538 CEP-*L26
121 45815 CEP-*L28
122 88287 CEP-*L29
123 3515 CEP-*L31
124 32327 DFP+*L5
125 12993 DFP+*L8
126 31905 DFP+*L10
127 10010 DFP+*L28
128 422 DFP+*L32
129 51894 EL*L15
130 95 EL*L25
131 63734 EL*L28
132 14675 EL*L33
133 2097 EL*L35
134 920 ER*L33
135 19688 CCDE_1*L6
136 3315 CCDE_1*L30
137 10701 CCDE_1*L33
```

### Row R2

DFP<0.

Exact upper bound: `-745697884375480643930507153778476001/9697259556881037911679529000000000`.

```n7-ear-R2-sum
1 6 L2*L16
2 3451 L0*L0*L2
3 473 L0*L0*L5
4 180 L0*L2*L13
5 2 L0*L2*L19
6 2309 L0*L2*L24
7 937 L0*L6*L31
8 146 L0*L9*L26
9 3748 L0*L10*L15
10 146 L0*L15*L27
11 198 L0*L16*L32
12 243 L1*L6*L23
13 52 L1*L9*L20
14 243 L1*L25*L32
15 243 L1*L29*L32
16 14 L2*L2*L7
17 2863 L2*L6*L6
18 10131 L2*L6*L8
19 189 L2*L6*L12
20 312 L2*L6*L15
21 2 L2*L6*L16
22 2407 L2*L6*L23
23 4954 L2*L6*L27
24 245 L2*L9*L22
25 174 L2*L9*L33
26 14 L2*L10*L24
27 1 L2*L13*L34
28 1263 L2*L15*L27
29 8 L2*L17*L32
30 690 L2*L27*L27
31 6867 L3*L6*L9
32 1046 L3*L9*L29
33 20 L3*L15*L32
34 1290 L3*L29*L34
35 5 L4*L9*L35
36 191 L4*L15*L32
37 20225 L5*L6*L6
38 9 L5*L6*L16
39 1085 L5*L6*L29
40 1 L5*L9*L13
41 1759 L5*L9*L14
42 11 L5*L9*L16
43 1 L5*L9*L20
44 1743 L5*L9*L23
45 158 L5*L10*L15
46 2 L5*L10*L16
47 2 L5*L10*L20
48 18 L5*L20*L32
49 20 L5*L21*L32
50 240 L5*L23*L27
51 1743 L5*L23*L29
52 240 L5*L23*L34
53 5 L5*L26*L34
54 368 L5*L29*L34
55 19 L5*L30*L34
56 578 L6*L6*L11
57 2411 L6*L6*L23
58 2 L6*L9*L13
59 12185 L6*L9*L20
60 12185 L6*L9*L21
61 155 L6*L10*L32
62 4408 L6*L11*L23
63 531 L6*L22*L32
64 148 L6*L31*L31
65 6527 L6*L31*L34
66 2422 L6*L34*L34
67 1824 L7*L9*L33
68 1 L7*L13*L34
69 2 L7*L17*L32
70 1916 L7*L23*L23
71 2568 L7*L34*L34
72 458 L8*L15*L32
73 16 L9*L9*L18
74 2411 L9*L9*L22
75 1034 L9*L9*L25
76 2 L9*L10*L16
77 1484 L9*L10*L34
78 165 L9*L11*L11
79 107 L9*L11*L25
80 181 L9*L11*L27
81 1 L9*L13*L21
82 1 L9*L13*L30
83 52 L9*L14*L20
84 1034 L9*L15*L24
85 1 L9*L17*L18
86 2 L9*L19*L32
87 1 L9*L19*L35
88 155 L9*L20*L34
89 52 L9*L21*L26
90 1916 L9*L22*L23
91 1034 L9*L24*L34
92 19 L9*L30*L33
93 146 L9*L34*L35
94 10 L10*L10*L16
95 16 L10*L15*L21
96 1021 L10*L15*L25
97 1 L10*L17*L27
98 10 L10*L17*L32
99 35 L10*L33*L34
100 155 L11*L29*L32
101 5 L12*L15*L15
102 1787 L14*L23*L32
103 6 L14*L32*L32
104 2 L15*L18*L32
105 155 L15*L21*L34
106 2066 L15*L25*L32
107 1715 L15*L26*L32
108 1410 L15*L32*L35
109 1 L16*L27*L32
110 155 L21*L34*L34
111 178 L23*L25*L32
112 6002 L23*L26*L34
113 6002 L23*L27*L34
114 146 L26*L34*L35
115 578 L28*L28*L32
116 146 L29*L34*L34
117 473 ABC+*L0
118 1370 ABC+*L16
119 240 ABC+*L23
120 476 ABH+
121 10 ABH+*L2
122 4954 ABH+*L6
123 190 ABH+*L13
124 1569 ABH+*L17
125 2 ABH+*L19
126 240 ABH+*L22
127 2066 ABH+*L24
128 3668 ABH+*L27
129 243 ABH+*L29
130 9750 BCD+*L6
131 6499 BCD+*L8
132 6105 BCD+*L14
133 1169 BCD+*L23
134 937 BCD+*L27
135 7465 BCD+*L28
136 148 BCD+*L31
137 14 BCD+*L32
138 4 BFH+*L32
139 425 EFH+*L0
140 2270 EFH+*L6
141 24 EFH+*L10
142 1716 EFH+*L14
143 982 EFH+*L20
144 998 EFH+*L21
145 1936 EFH+*L23
146 107 EFH+*L25
147 5251 EFH+*L28
148 106 ABG+
149 1568 ABG+*L0
150 10 ABG+*L5
151 1568 ABG+*L26
152 10 ABG+*L30
153 2 BCG+*L32
154 189 CDG+*L2
155 198 FGH-*L0
156 2 FGH-*L29
157 1377 CGH-*L0
158 1 CGH-*L7
159 193 CGH-*L11
160 193 CGH-*L32
161 5 CGH-*L34
162 7 CGH-*L35
163 16 EFO+*L9
164 2 AHO-*L9
165 1 CHO-*L32
166 178 BCP+*L23
167 245 CDP+*L2
168 1394 CDP+*L10
169 10 CDP+*L16
170 6402 CDP+*L24
171 6402 CDP+*L34
172 3904 DEP+*L5
173 23390 DEP+*L6
174 9185 DEP+*L7
175 10 DEP+*L16
176 2094 DEP+*L22
177 6402 DEP+*L24
178 11793 DEP+*L28
179 9382 DEP+*L34
180 6402 CEP-*L7
181 1692 CEP-*L11
182 9382 CEP-*L14
183 10 CEP-*L16
184 178 CEP-*L22
185 6402 CEP-*L24
186 245 CEP-*L31
187 245 CEP-*L33
188 3316 DFP-*L5
189 3223 DFP-*L14
190 178 DFP-*L22
191 2342 DFP-*L26
192 2585 DFP-*L27
193 14 DFP-*L31
194 2 CGO-*L2
195 1 CGO-*L9
196 1696 DHP-*L10
197 2027 DHP-*L32
198 2 GHO-*L2
199 5 EL*L16
200 2980 EL*L25
201 5075 EL*L28
202 19 EL*L30
203 1375 EL*L35
204 2914 ER*L34
205 1502 CCDE_1*L2
206 19024 CCDE_1*L6
207 1921 CCDE_1*L32
208 400 CCDE_1*L34
209 3172 QCDEF_1*L9
210 1 QCDEG_1*L6
211 2 QCDEO_1*L32
212 1171 F5_EHACD*L9
```

