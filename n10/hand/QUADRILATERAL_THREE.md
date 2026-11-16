# A quadrilateral of doubled area at most one has capacity two

Let a convex quadrilateral of doubled area W contain three further
actual points strictly inside it. If every triangle spanned by these
seven points has doubled unsigned area at least t, then

    t < (93/1000) W.                                      (1)

In particular, a quadrilateral of actual configuration points with
doubled area at most one cannot contain three further points in a
configuration whose doubled minimum is at least sigma=93/1000.
This is an affine theorem; the quadrilateral need not be a square.

The proof has nine exhaustive rows with 139 positive integer entries,
all printed below. It uses the established triangle capacities, the
clustered-triple exclusion, the one-interior-point quadrilateral bound,
and the two-diagonal spread theorem. No solver, numerical search,
coordinate subdivision, or external certificate file is a premise.

## 1. Normalize the diagonals

If t=0, (1) is immediate. Otherwise all seven points are distinct and no
actual triple is collinear. Assume, for a contradiction, that t/W>=s,
where s=93/1000. An affine map takes the intersection of the two hull
diagonals to the origin and the full diagonal lengths to one. Label the
four vertices counterclockwise as

    A=(-a,0), B=(0,-b), C=(1-a,0), D=(0,1-b),
    0<a,b<1.

Their doubled quadrilateral area is exactly one. Every actual doubled
triangle area in these coordinates is at least s. In particular the
four hull triangles give

    s<=a,b<=1-s.                                        (2)

The three interior points avoid both actual diagonals. Their positive
coordinate magnitudes are denoted (x,y),(u,v),(r,w); their signs depend
on their diagonal sectors. Every magnitude lies in

    s <= x,y,u,v,r,w <= 1-2s.                            (3)

The lower bounds are the actual full-diagonal triangle inequalities.
For the upper bound, for example, a point (x,y) in the positive sector
CD satisfies

    (1-a)(1-b)-(1-b)x-(1-a)y>=s.

Hence x<1-a-s<=1-2s and y<1-b-s<=1-2s. The other sectors give the
same argument with a or b replacing the appropriate complementary
diagonal length. Weak bounds (3) suffice throughout.

Use the rational capacity constants

    K=149/20 < 4+2sqrt(3),
    J=4427/500 < (11+3sqrt(5))/2.

The strict comparisons follow by squaring 69/40<sqrt(3) and
559/250<sqrt(5). TRIANGLE_OCCUPANCY.md gives doubled-area costs 3s,
Ks, Js for an actual triangle containing respectively one, two, or
three further points. CLUSTERED_TRIANGLE.md implies that any triple
inside an actual triangle of doubled area at most one is distributed:
no one of the three can have the other two in one triangle of its fan
to the hull vertices. Every triangle here is inside the normalized
quadrilateral, so that upper area bound applies.

## 2. The four exhaustive sector patterns

Permuting the three points, cyclically relabeling the hull, and reversing
its cyclic orientation if necessary reduces their sector counts to
exactly the following four patterns. A sector is specified by its two
coordinate signs.

| Case | P | Q | R | Description |
|---|---|---|---|---|
| S | (x,y) | (u,v) | (r,w) | Three in one sector |
| A | (x,y) | (u,v) | (-r,w) | Two in one sector, one in an adjacent sector |
| O | (x,y) | (u,v) | (-r,-w) | Two in one sector, one in the opposite sector |
| T | (x,y) | (-u,v) | (-r,-w) | Three different sectors |

These are all partitions of three among four cyclic sectors. There is
no omitted diagonal face, since it would make an actual triangle zero.

The triangle capacity bounds just established sharpen the ranges of
a,b as follows; the remaining six ranges are always (3).

| Case | Lower a | Upper a | Lower b | Upper b |
|---|---|---|---|---|
| S | s | 1-Js | s | 1-Js |
| A | 3s | 1-Ks | s | 1-Js |
| O | 3s | 1-Ks | 3s | 1-Ks |
| T | Ks | 1-3s | 3s | 1-Ks |

For example, in A all three points belong to ACD, whose doubled area
is 1-b. P,Q also belong to BCD, of area 1-a, and R belongs to ABD,
of area a. This gives its complete row. The other rows follow by the
same full-diagonal memberships: ABC,BCD,ACD,ABD have doubled areas
b,1-a,1-b,a, respectively.

In S and A the three points are all inside ACD, so they are distributed.
For an ordered outer triangle (I,J,K), its distributed triple has a
labeling (X,Y,Z) satisfying

    Z inside IJY; X inside JKY;
    Y inside KIZ; X inside JKZ;
    Y inside KIX; Z inside IJX; D(Z,X,Y)>0.             (4)

This is exactly the distributed mesh proved in TRIANGLE_OCCUPANCY.md
Section 2, including its positive central face. To see that it supplies
a labeling for fixed counterclockwise I,J,K, begin at any one interior
point and name the empty fan by a cyclic change of the outer labels.
The mesh proof then makes the other two empty fans the other two
outer-edge types. Thus there is exactly one interior point of each
empty-fan type, and it can be relabeled to put the empty KI fan at Y.
The six possible assignments of X,Y,Z cover all actual labelings.

Apply (4) with (I,J,K)=(A,C,D). In S all three points are freely
interchangeable, so choose (X,Y,Z)=(P,Q,R). In A only P,Q are
interchangeable; the three possibilities for the role of R give
(X,Y,Z)=(R,P,Q),(P,R,Q),(P,Q,R). These are rows A1,A2,A3.
Row O needs no additional split. In T, split APQ first. Its negative
sign is T1. If positive, split BQR: its negative sign is T2. If both
are positive, the two CPQ signs give T3,T4. Every split is on an
actual nonzero triangle. The full nine-row catalogue is therefore

| Row | Case | Mesh (X,Y,Z) for ACD | Further signs |
|---|---|---|---|
| S | S | P,Q,R | None |
| A1 | A | R,P,Q | None |
| A2 | A | P,R,Q | None |
| A3 | A | P,Q,R | None |
| O | O | None | None |
| T1 | T | None | APQ- |
| T2 | T | None | APQ+, BQR- |
| T3 | T | None | APQ+, BQR+, CPQ+ |
| T4 | T | None | APQ+, BQR+, CPQ- |

## 3. All affine and area factors

Write z=(a,b,x,y,u,v,r,w), and let lo,hi be the ranges in Section 2
and (3). For 0<=i<8 define

    L_(2i)=z_i-lo_i,       L_(2i+1)=hi_i-z_i.

These sixteen factors are nonnegative. In T, P and R occupy opposite
sectors, so both diagonals separate them. QUADRILATERAL_SPREAD.md
applies with normalized minimum s>1/11 and doubled hull area one. Its
two spread inequalities give two further nonnegative affine factors

    L16=1-6s-x-r,       L17=1-6s-y-w.                 (5)

In O the same inequalities apply to P,R and to Q,R. Its affine list
is L16,L17 from (5), then L18=1-6s-u-r and L19=1-6s-v-w. The O table
below uses none of these four additional factors. S and A use only
L0 through L15. No spread assumption is made for adjacent sectors.

For an actual signed triangle, the factors are

    IJK+ = D(I,J,K)-s,       IJK- = -D(I,J,K)-s.

Their signs follow from the sector placement, the mesh (4), the row's
stated signs, or the following elementary inference rule. If an actual
point U is inside an actual triangle whose three vertices are on the
same closed side of an actual chord IJ, with at least one vertex
strictly on that side, then U is strictly on that side. All three
positive barycentric weights give this conclusion. Interior membership
is tested by the three cyclic signed edges. An unknown sign is never
treated as zero: the only zero sides used by this rule are a chord's
own endpoints. The additional uses of this rule are listed below each
row in their derivation order.

For a triangle word Q, let A(Q) be its unsigned doubled area. For a
four-letter word Q, its displayed order is counterclockwise and convex,
and A(Q) is the sum of its two fan triangle areas. Define

    C_IJK_1=A(IJK)-3s;       C_IJK_2=A(IJK)-Ks;
    C_IJKL_1=A(IJKL)-(24/5)s.

Every use has the indicated actual interior points listed below its
table. The triangle costs were proved above. The quadrilateral cost
is the stronger 2(1+sqrt(2))s bound proved in U3_FOUR_ONE_SIDE.md
Section 3, weakened to (24/5)s; sqrt(2)>7/5 proves the weakening.
The present three-interior theorem is not used to justify any factor.

## 4. The printed nonnegative sums and their exact upper bounds

An entry `n factor` means the positive integer n times that factor or
product. Each W below is the sum of its printed entries, so W>=0.
Every product has degree at most three. Substitute z_i=lo_i+t_i,
where 0<=t_i<=hi_i-lo_i, and expand

    W=c0+sum_(e!=0) c_e*t^e.

Dropping negative nonconstant terms and bounding positive monomials gives

    W <= U(W):=c0+sum_(e!=0,c_e>0) c_e*product_i(hi_i-lo_i)^e_i.

Every printed rational U(W) below is negative, a contradiction. These
values require only expansion and rational addition. The optional
standard-library checker check_quadrilateral_three.py reads these tables,
verifies every used sign and occupancy, and reproduces each exact bound.
It imports no discovery file or numerical package.

## 5. The nine complete integer tables

### Row S

There are 63 positive integer entries.

    U(W)=-16248646393623477/62500000000000000<0.

```text
283 L1*L14;  310 L3*L3;  44 L8*L13
187 L8*L15;  224 L11*L14;  231 L1*L4*L14
134 L1*L6*L8;  649 L2*L9*L14;  16 L3*L3*L5
61 L3*L3*L13;  1195 L3*L6*L8;  610 ABQ+*L0
1333 ABQ+*L6;  529 ABQ+*L12;  445 ABR+*L1
315 ABR+*L4;  314 ABR+*L7;  783 ABR+*L10
272 APQ+*L12;  120 APR-*L1;  34 BCD+*L11*L14
484 BCR+*L8;  12 CDP+;  192 CDP+*L1
16 CDP+*L2;  411 CDP+*L10;  67 CDP+*L12
146 CDR+*L8;  28 CPQ+*L2;  115 CPQ+*L13
125 CQR+*L6;  32 DPQ-*L14;  61 DQR+*L3
365 DQR+*L10;  238 PQR+;  361 PQR+*L0
5 PQR+*L3;  61 C_ACP_1*L1*L10;  281 C_ACQ_1*L1*L5
619 C_ADR_1*L8;  230 C_CDQ_1*L14;  429 C_CDR_1*L8
432 C_ABCP_1*L0*L1;  501 C_ABCP_1*L1*L2;  249 C_ABCP_1*L1*L8
424 C_ABCP_1*L1*L10;  151 C_ABCP_1*L1*L12;  424 C_ABCP_1*L3*L8
134 C_ABCQ_1*L1*L1;  103 C_ABCQ_1*L1*L5;  1134 C_ABCQ_1*L1*L6
683 C_ABCQ_1*L1*L14;  382 C_ABRD_1*L3*L4;  319 C_ABRD_1*L3*L7
744 C_ACPQ_1*L1;  434 C_ACPQ_1*L3;  157 C_ARPD_1*L8
32 C_BCPQ_1*L14;  325 C_CDQR_1*L0;  485 C_CDQR_1*L2
157 C_CDQR_1*L4;  125 C_CDQR_1*L7;  365 C_CDQR_1*L11
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| BPQ+ | Q inside ADP; all vertices on the nonnegative side of BP |
| BQR- | Q inside ADR; all vertices on the nonnegative side of BR |

The occupancy factors have these actual interior points. Their cyclic edge
tests are the basic, mesh, row, or preceding inferred signs.

| Factor | Interior points | Signed triangle orientation, or convex polygon order |
|---|---|---|
| C_ABCP_1 | R | ABCP positive |
| C_ABCQ_1 | R | ABCQ positive |
| C_ABRD_1 | Q | ABRD positive |
| C_ACPQ_1 | R | ACPQ positive |
| C_ACP_1 | R | ACP positive |
| C_ACQ_1 | R | ACQ positive |
| C_ADR_1 | Q | ADR negative |
| C_ARPD_1 | Q | ARPD positive |
| C_BCPQ_1 | R | BCPQ positive |
| C_CDQR_1 | P | CDQR positive |
| C_CDQ_1 | P | CDQ positive |
| C_CDR_1 | P | CDR positive |

### Row A1

There are 2 positive integer entries.

    U(W)=-44674901/50000000<0.

```text
4 C_ADR_1;  2 C_BCR_2
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| BPQ- | P inside ADQ; all vertices on the nonnegative side of BQ |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| BQR+ | Q inside BCD; all vertices on the nonpositive side of BR |

The occupancy factors have these actual interior points. Their cyclic edge
tests are the basic, mesh, row, or preceding inferred signs.

| Factor | Interior points | Signed triangle orientation, or convex polygon order |
|---|---|---|
| C_ADR_1 | P | ADR negative |
| C_BCR_2 | PQ | BCR positive |

### Row A2

There are 23 positive integer entries.

    U(W)=-3066975752807/5000000000000<0.

```text
266 L1*L10;  149 L1*L15;  303 L3*L12
20 L10*L15;  12 L1*L9*L15;  54 L1*L11*L15
291 L3*L3*L8;  78 ABQ+*L9;  32 ABQ+*L13
68 ABQ+*L14;  68 ACD+*L1*L15;  298 ADR-
164 ADR-*L1;  21 BQR+;  32 BQR+*L0
291 BQR+*L3;  78 BQR+*L8;  47 BQR+*L13
143 CQR-;  78 CQR-*L8;  14 C_ACR_1*L0*L11
223 C_ACR_1*L2*L8;  164 C_CDR_1*L1
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| BQR+ | Q inside BCD; all vertices on the nonpositive side of BR |

The occupancy factors have these actual interior points. Their cyclic edge
tests are the basic, mesh, row, or preceding inferred signs.

| Factor | Interior points | Signed triangle orientation, or convex polygon order |
|---|---|---|
| C_ACR_1 | Q | ACR positive |
| C_CDR_1 | P | CDR positive |

### Row A3

There are 2 positive integer entries.

    U(W)=-9471/10000<0.

```text
6 ABR+;  6 C_ADR_1
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| BPQ+ | Q inside ADP; all vertices on the nonnegative side of BP |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| BQR+ | Q inside BCD; all vertices on the nonpositive side of BR |

The occupancy factors have these actual interior points. Their cyclic edge
tests are the basic, mesh, row, or preceding inferred signs.

| Factor | Interior points | Signed triangle orientation, or convex polygon order |
|---|---|---|
| C_ADR_1 | Q | ADR negative |

### Row O

There are 2 positive integer entries.

    U(W)=-24392981/25000000<0.

```text
13 ABR+;  3 C_CDR_2
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| APR- | P inside ACD; all vertices on the nonnegative side of AR |
| AQR- | Q inside ACD; all vertices on the nonnegative side of AR |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| BQR+ | Q inside BCD; all vertices on the nonpositive side of BR |
| CPR+ | P inside ACD; all vertices on the nonpositive side of CR |
| CQR+ | Q inside ACD; all vertices on the nonpositive side of CR |
| DPR- | P inside BCD; all vertices on the nonnegative side of DR |
| DQR- | Q inside BCD; all vertices on the nonnegative side of DR |

The occupancy factors have these actual interior points. Their cyclic edge
tests are the basic, mesh, row, or preceding inferred signs.

| Factor | Interior points | Signed triangle orientation, or convex polygon order |
|---|---|---|
| C_CDR_2 | PQ | CDR positive |

### Row T1

There are 3 positive integer entries.

    U(W)=-291723/500000<0.

```text
3 L17;  2 CDP+;  6 C_ABP_2
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| APR- | P inside ACD; all vertices on the nonnegative side of AR |
| AQR- | Q inside ACD; all vertices on the nonnegative side of AR |
| BPQ+ | P inside BCD; all vertices on the nonpositive side of BQ |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| CPQ+ | Q inside ABP; all vertices on the nonnegative side of CP |
| CPR+ | P inside ACD; all vertices on the nonpositive side of CR |
| CQR+ | Q inside ACD; all vertices on the nonpositive side of CR |
| DPQ- | P inside BCD; all vertices on the nonnegative side of DQ |
| DPR- | P inside BCD; all vertices on the nonnegative side of DR |

The occupancy factors have these actual interior points. Their cyclic edge
tests are the basic, mesh, row, or preceding inferred signs.

| Factor | Interior points | Signed triangle orientation, or convex polygon order |
|---|---|---|
| C_ABP_2 | QR | ABP positive |

### Row T2

There are 13 positive integer entries.

    U(W)=-139660341607/200000000000<0.

```text
6 L10*L16;  5 L12*L17;  9 ADQ-
8 ADQ-*L6;  6 APQ+;  3 AQR-
2 BPR+;  28 BQR-;  1 CDP+
3 CPR+;  1 C_BCQ_1*L7;  17 C_BDQ_1*L3
7 C_BPQ_1*L3
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| APR- | P inside ACD; all vertices on the nonnegative side of AR |
| AQR- | Q inside ACD; all vertices on the nonnegative side of AR |
| BPQ+ | P inside BCD; all vertices on the nonpositive side of BQ |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| CPR+ | P inside ACD; all vertices on the nonpositive side of CR |
| CQR+ | Q inside ACD; all vertices on the nonpositive side of CR |
| DPQ- | P inside BCD; all vertices on the nonnegative side of DQ |
| DPR- | P inside BCD; all vertices on the nonnegative side of DR |
| DQR+ | R inside BCQ; all vertices on the nonnegative side of DQ |
| PQR+ | P inside CDR; all vertices on the nonnegative side of QR |

The occupancy factors have these actual interior points. Their cyclic edge
tests are the basic, mesh, row, or preceding inferred signs.

| Factor | Interior points | Signed triangle orientation, or convex polygon order |
|---|---|---|
| C_BCQ_1 | R | BCQ positive |
| C_BDQ_1 | R | BDQ positive |
| C_BPQ_1 | R | BPQ positive |

### Row T3

There are 23 positive integer entries.

    U(W)=-832297225117/4000000000000<0.

```text
8 L0*L17;  9 L1*L10;  6 L3*L4
12 L4*L9;  16 L0*L7*L11;  3 L2*L8*L16
23 L3*L9*L13;  16 ABC+*L8*L17;  28 ABR+
1 ABR+*L8;  2 ADQ-*L4;  5 ADQ-*L6
8 ADQ-*L12;  5 ADQ-*L14;  2 ADR-*L3
15 BQR+;  24 CDP+;  5 CDP+*L2
13 CDQ+*L4;  15 CPQ+;  13 C_ABQ_1*L16
2 C_CDQ_1*L12;  11 C_CDQ_1*L17
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| APR- | P inside ACD; all vertices on the nonnegative side of AR |
| AQR- | Q inside ACD; all vertices on the nonnegative side of AR |
| BPQ+ | P inside BCD; all vertices on the nonpositive side of BQ |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| CPR+ | P inside ACD; all vertices on the nonpositive side of CR |
| CQR+ | Q inside ACD; all vertices on the nonpositive side of CR |
| DPQ- | P inside BCD; all vertices on the nonnegative side of DQ |
| DPR- | P inside BCD; all vertices on the nonnegative side of DR |
| PQR+ | Q inside ADP; all vertices on the nonpositive side of PR |

The occupancy factors have these actual interior points. Their cyclic edge
tests are the basic, mesh, row, or preceding inferred signs.

| Factor | Interior points | Signed triangle orientation, or convex polygon order |
|---|---|---|
| C_ABQ_1 | R | ABQ positive |
| C_CDQ_1 | P | CDQ positive |

### Row T4

There are 8 positive integer entries.

    U(W)=-15924049/20000000<0.

```text
3 L0*L17;  10 L6*L16;  3 ABR+
5 ADQ-;  8 BCP+;  21 CPQ-
10 CPR+;  8 DPQ-
```

The following additional signs follow successively by the rule in Section 3.

| Sign | Witness |
|---|---|
| APR- | P inside ACD; all vertices on the nonnegative side of AR |
| AQR- | Q inside ACD; all vertices on the nonnegative side of AR |
| BPQ+ | P inside BCD; all vertices on the nonpositive side of BQ |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| CPR+ | P inside ACD; all vertices on the nonpositive side of CR |
| CQR+ | Q inside ACD; all vertices on the nonpositive side of CR |
| DPQ- | P inside BCD; all vertices on the nonnegative side of DQ |
| DPR- | P inside BCD; all vertices on the nonnegative side of DR |
| PQR+ | P inside BCQ; all vertices on the nonnegative side of QR |

## 6. Complete conclusion

The nine tables have 139 positive integer entries in total, with maximum
1,333. Every row contradicts W>=0. Section 2 exhausts all possible
sector counts, all distributed labelings, and every remaining actual
sign. Thus a seven-point set with this quadrilateral hull cannot have
normalized doubled minimum at least 93/1000. Undoing the affine map
proves (1).

For any actual quadrilateral of doubled area at most one in the unit
square, three further interior points would supply precisely such a
seven-point subset. Thus its capacity is at most two at sigma. A point
on an actual edge or diagonal gives a zero triangle, and was already
excluded; no positive-minimum boundary case is omitted.
