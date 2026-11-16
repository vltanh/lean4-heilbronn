# A stronger quadrilateral capacity for actual points in the square

Suppose a configuration in the closed unit square has every actual
unsigned doubled triangle area at least sigma=93/1000. Then every
convex quadrilateral of actual points containing three further actual
points strictly inside it has doubled area

    W > 93/91.                                           (1)

Thus every actual quadrilateral of doubled area at most 93/91 has
capacity two at the competitive threshold sigma. This improves the
area-one consequence of QUADRILATERAL_THREE.md. The unit-square
hypothesis is used before affine normalization; no stronger universal
affine theorem without that hypothesis is claimed here.

The proof has ten exhaustive geometric rows and 153 printed positive
integer entries, maximum 1487. The rows use no coordinate subdivision.
Their rational expansions, and all their geometric sign and occupancy
premises, are provided below and in the explicitly cited general lemmas.
No solver or discovery data is a premise.

## 1. Normalize only after excluding clustered triples

Every actual triangle in the square has doubled area at most one.
CLUSTERED_TRIANGLE.md therefore excludes a clustered triple inside
any actual triangle: its strict bound would give an actual doubled
triangle area below sigma. Consequently every triple inside an actual
triangle is distributed, with the seven-face mesh of
TRIANGLE_OCCUPANCY.md Section 2.

Suppose contrary to (1) that W<=93/91. Normalize the two quadrilateral
diagonals exactly as in QUADRILATERAL_THREE.md Section 1:

    A=(-a,0), B=(0,-b), C=(1-a,0), D=(0,1-b).

The normalized doubled quadrilateral area is one, and every normalized
actual doubled triangle area is at least

    sigma/W >= tau=91/1000 > 1/11.                     (2)

Distribution, cyclic orientation and containment are preserved by the
affine map. In particular the clustered-triple exclusion is already
available from the original square; it is not being reasserted at the
smaller ratio tau in an arbitrary affine triangle.

## 2. Complete geometric catalogue and rational boxes

Use the positive coordinate magnitudes (x,y),(u,v),(r,w) for the three
interior points P,Q,R. The four sector patterns are

| Case | P | Q | R |
|---|---|---|---|
| S | (x,y) | (u,v) | (r,w) |
| A | (x,y) | (u,v) | (-r,w) |
| O | (x,y) | (u,v) | (-r,-w) |
| T | (x,y) | (-u,v) | (-r,-w) |

Cyclic relabeling, reflection and permutation give every distribution
of three points among four sectors. No point lies on a diagonal, since
that would be an actual zero-area triple. Write K=149/20 and J=4427/500.
The universal triangle capacity bounds give the following boxes, just
as in QUADRILATERAL_THREE.md Section 2, now using the weaker minimum tau:

| Case | Lower a | Upper a | Lower b | Upper b |
|---|---|---|---|---|
| S | tau | 1-J*tau | tau | 1-J*tau |
| A | 3tau | 1-K*tau | tau | 1-J*tau |
| O | 3tau | 1-K*tau | 3tau | 1-K*tau |
| T | K*tau | 1-3tau | 3tau | 1-K*tau |

Every other coordinate magnitude is in [tau,1-2tau], by its actual
full-diagonal and sector-edge triangles. All box endpoints are rational.

In S and A the three points are inside ACD and hence distributed by
Section 1. For its fixed counterclockwise outer order (A,C,D), the mesh
has the six containments

    Z inside ACY; X inside CDY;
    Y inside DAZ; X inside CDZ;
    Y inside DAX; Z inside ACX; det(Z,X,Y)>0.             (3)

The complete row list is the earlier nine-row catalogue with A2 split
once on its actual nonzero triangle BPQ:

| Row | Case | Mesh (X,Y,Z) | Additional signs |
|---|---|---|---|
| S | S | P,Q,R | None |
| A1 | A | R,P,Q | None |
| A2P | A | P,R,Q | BPQ+ |
| A2M | A | P,R,Q | BPQ- |
| A3 | A | P,Q,R | None |
| O | O | None | None |
| T1 | T | None | APQ- |
| T2 | T | None | APQ+, BQR- |
| T3 | T | None | APQ+, BQR+, CPQ+ |
| T4 | T | None | APQ+, BQR+, CPQ- |

The labeling and coverage argument in QUADRILATERAL_THREE.md Section 2
uses only these sector and distributed-mesh facts, so it applies without
change. Every dividing sign belongs to an actual triangle.

## 3. Two stronger consequences of the seven-face mesh

For the distributed triple (X,Y,Z) in ACD, its three outer ear faces
are ACZ, CDX, DAY. Its three connector faces have unsigned doubled
areas

    A(AYZ), A(CZX), A(DXY).

TRIANGLE_OCCUPANCY.md Section 2 proves, before summing all seven faces,
that the connector sum is at least

    [3+3(sqrt(5)-1)/2]*tau
      = (Gamma3-4)*tau > (J-4)*tau.                   (4)

Indeed its variables TA,TB,TC satisfy
(TA+TB+TC)^2/3+(TA+TB+TC)>=3, so their sum is at least
3(sqrt(5)-1)/2; the connector sum is (3+TA+TB+TC)*tau.
The other four faces are the three ears and the central triangle.
For any one ear, the other two ears and central face each have area
at least tau. Thus

    A(ACD)-A(ear) >= (Gamma3-1)*tau > (J-1)*tau.       (5)

These facts justify the new nonnegative quadratic factors

    M_ACZ=A(ACD)-A(ACZ)-(J-1)*tau,
    M_CDX=A(ACD)-A(CDX)-(J-1)*tau,
    M_DAY=A(ACD)-A(DAY)-(J-1)*tau,
    M_connectors=A(AYZ)+A(CZX)+A(DXY)-(J-4)*tau.        (6)

The letters X,Y,Z in their subscripts are replaced by the actual
mesh labels in each row. All areas in (4)-(6) are positive faces
with the signs supplied by (3), and A denotes unsigned doubled area.

## 4. All remaining factors and the upper-bound rule

In the coordinate order z=(a,b,x,y,u,v,r,w), let lo,hi be the box from
Section 2. Define L_(2i)=z_i-lo_i and L_(2i+1)=hi_i-z_i. In T,
P and R have opposite diagonal sectors, so the spread theorem supplies

    L16=1-6tau-x-r,       L17=1-6tau-y-w.

It applies because tau>1/11. In O the same inequalities hold for P,R
and Q,R, supplying L16,L17 as above and
L18=1-6tau-u-r, L19=1-6tau-v-w. No adjacent-sector spread is assumed.

A factor IJK+ means det(J-I,K-I)-tau; IJK- means its negative minus
tau. Sector, mesh, and row signs determine the initial signs. Every
additional sign used below has a printed positive-barycentric witness:
a point inside an actual triangle lies on the same strict side of an
actual chord as all its vertices, provided they are on one closed side
and at least one is strict. Only the chord's own endpoints have zero
side. No unknown sign is treated as zero.

For a triangle or counterclockwise convex quadrilateral word T, let
A(T) be its unsigned doubled area. The occupancy factors are

    C_IJK_1=A(IJK)-3tau; C_IJK_2=A(IJK)-K*tau;
    C_IJK_3=A(IJK)-J*tau;
    C_IJKL_1=A(IJKL)-(24/5)*tau;
    C_IJKL_2=A(IJKL)-8tau.

All are consequences of the earlier triangle and one-/two-interior
quadrilateral bounds. Their actual occupants and orientations are
listed below every table. The theorem being proved is never used to
justify a factor.

One additional family of spread factors is used. If an actual convex
quadrilateral T=IJKL contains precisely the two listed points U,V, in
alphabetical label order, and both its diagonals separate them, set

    S_T_AB+=A(T)-6tau+[det(B,U,V)-det(A,U,V)],
    S_T_AB-=A(T)-6tau-[det(B,U,V)-det(A,U,V)],

where AB denotes either ordered diagonal IK or JL of T. These factors
are nonnegative by QUADRILATERAL_SPREAD.md: A(T)<=1 because it is
inside the normalized outer quadrilateral, so its normalized minimum
is at least tau/A(T)>=tau>1/11. The actual occupants and both opposite
diagonal signs are listed with every use below. The subscript letters
AB here name that listed diagonal, not necessarily the outer A,B.

Each table defines W as its positive integer coefficient times factor
products, summed over every entry. Every factor is nonnegative, so W>=0.
Expand after substituting z_i=lo_i+t_i, with 0<=t_i<=hi_i-lo_i. If
W=c0+sum_(alpha!=0)c_alpha*t^alpha, termwise comparison gives

    W<=U(W):=c0+sum_(alpha!=0,c_alpha>0)
                    c_alpha*product_i(hi_i-lo_i)^alpha_i.

All ten exact rational bounds below are negative. This proves a
contradiction in each exhaustive row and completes (1). The fixed
expansions can be audited by check_square_quadrilateral_three.py,
which reads all coefficients from this manuscript and uses exact
rational arithmetic only.

## 5. The ten printed sums

### Row S

There are 32 positive integer entries.

    U(W)=-11976158012111011/25000000000000000<0.

```text
239 L1*L14;  190 L11*L14;  1487 L1*L1*L1
74 L2*L9*L14;  126 L8*L15*L15;  351 ABQ+*L3
309 ABQ+*L11;  461 ABQ+*L12;  461 ABR+*L1
384 ABR+*L9;  867 ABR+*L10;  145 ADQ-*L14
406 ADR-*L8;  76 BCR+*L8;  309 CDP+*L10
97 CQR+*L1;  309 CQR+*L2;  406 DQR+*L0
309 PQR+*L10;  460 C_BCQ_1*L14;  200 C_ABCQ_1*L1*L14
148 C_CDQR_1;  558 C_CDQR_1*L0;  558 C_CDQR_1*L2
131 M_ACR*L8;  1133 M_ACR*L3*L3;  126 M_ACR*L8*L14
97 M_DAQ*L1;  207 M_DAQ*L3;  406 M_DAQ*L12
62 M_DAQ*L15;  309 M_connectors*L10
```

Additional signs follow successively by the rule in Section 4.

| Sign | Witness |
|---|---|
| BPQ+ | Q inside ADP; all vertices on the nonnegative side of BP |
| BQR- | Q inside ADR; all vertices on the nonnegative side of BR |

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_ABCQ_1 | R | ABCQ counterclockwise convex |
| C_BCQ_1 | R | BCQ positive |
| C_CDQR_1 | P | CDQR counterclockwise convex |

### Row A1

There are 2 positive integer entries.

    U(W)=-32710069/50000000<0.

```text
4 C_ADR_1;  2 C_BCR_2
```

Additional signs follow successively by the rule in Section 4.

| Sign | Witness |
|---|---|
| BPQ- | P inside ADQ; all vertices on the nonnegative side of BQ |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| BQR+ | Q inside BCD; all vertices on the nonpositive side of BR |

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_ADR_1 | P | ADR negative |
| C_BCR_2 | PQ | BCR positive |

### Row A2P

There are 8 positive integer entries.

    U(W)=-7666223027/10000000000<0.

```text
6 APQ-;  8 CDP+;  2 C_ABP_1
11 C_ACP_1*L1;  11 C_ABPD_2*L3;  6 S_ABPD_AP+
1 C_ABPR_1;  4 C_ACPR_1
```

Additional signs follow successively by the rule in Section 4.

| Sign | Witness |
|---|---|
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| BQR+ | Q inside BCD; all vertices on the nonpositive side of BR |

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_ABPD_2 | QR | ABPD counterclockwise convex |
| C_ABPR_1 | Q | ABPR counterclockwise convex |
| C_ABP_1 | Q | ABP positive |
| C_ACPR_1 | Q | ACPR counterclockwise convex |
| C_ACP_1 | Q | ACP positive |

The spread factors have these two occupants, with both diagonals separating them.

| Factor | Interior points | Opposite-sign diagonals |
|---|---|---|
| S_ABPD_AP+ | QR | AP, BD |

### Row A2M

There are 50 positive integer entries.

    U(W)=-109037848096317/125000000000000<0.

```text
188 L1*L10;  172 L1*L15;  30 L1*L6*L15
66 L1*L7*L7;  14 ABQ+*L1;  70 ABQ+*L3
35 ABQ+*L7;  268 ABQ+*L13;  21 ABQ+*L15
151 ACD+*L6*L12;  70 ADP-*L12;  293 ADR-
380 ADR-*L1;  390 ADR-*L6;  337 ADR-*L8
21 ADR-*L11;  239 APR+*L3;  49 APR+*L7
286 APR+*L8;  226 BCP+*L10;  14 BCQ+*L1
29 BPQ-;  201 BPQ-*L3;  32 BPQ-*L7
20 BPQ-*L13;  377 BPQ-*L14;  17 CDP+*L6
190 CDP+*L14;  63 CQR-;  373 CQR-*L2
286 CQR-*L4;  393 CQR-*L6;  286 DPQ-*L0
236 DPQ-*L2;  32 DPQ-*L6;  50 DPQ-*L13
16 DPQ-*L14;  286 DPR-*L1;  51 DQR-*L1
340 C_ACR_1*L2*L4;  132 C_BCP_1*L10;  35 C_CDQ_1*L2
380 C_CDR_1*L1;  441 C_ABCP_1*L1*L15;  66 C_ABCP_1*L2*L5
170 C_ABCR_1*L0*L6;  101 C_ABCR_1*L2*L4;  49 C_ABCR_1*L4*L6
217 C_ABQD_1*L7*L12;  113 M_ACQ*L12
```

Additional signs follow successively by the rule in Section 4.

| Sign | Witness |
|---|---|
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| BQR+ | Q inside BCD; all vertices on the nonpositive side of BR |

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_ABCP_1 | Q | ABCP counterclockwise convex |
| C_ABCR_1 | Q | ABCR counterclockwise convex |
| C_ABQD_1 | R | ABQD counterclockwise convex |
| C_ACR_1 | Q | ACR positive |
| C_BCP_1 | Q | BCP positive |
| C_CDQ_1 | P | CDQ positive |
| C_CDR_1 | P | CDR positive |

### Row A3

There are 2 positive integer entries.

    U(W)=-7977/10000<0.

```text
6 ABR+;  6 C_ADR_1
```

Additional signs follow successively by the rule in Section 4.

| Sign | Witness |
|---|---|
| BPQ+ | Q inside ADP; all vertices on the nonnegative side of BP |
| BPR+ | P inside BCD; all vertices on the nonpositive side of BR |
| BQR+ | Q inside BCD; all vertices on the nonpositive side of BR |

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_ADR_1 | Q | ADR negative |

### Row O

There are 2 positive integer entries.

    U(W)=-21821689/25000000<0.

```text
13 ABR+;  3 C_CDR_2
```

Additional signs follow successively by the rule in Section 4.

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

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_CDR_2 | PQ | CDR positive |

### Row T1

There are 3 positive integer entries.

    U(W)=-123387/500000<0.

```text
3 L17;  2 CDP+;  6 C_ABP_2
```

Additional signs follow successively by the rule in Section 4.

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

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_ABP_2 | QR | ABP positive |

### Row T2

There are 13 positive integer entries.

    U(W)=-25599852321/200000000000<0.

```text
6 L10*L16;  5 L12*L17;  9 ADQ-
8 ADQ-*L6;  6 APQ+;  3 AQR-
2 BPR+;  28 BQR-;  1 CDP+
3 CPR+;  1 C_BCQ_1*L7;  17 C_BDQ_1*L3
7 C_BPQ_1*L3
```

Additional signs follow successively by the rule in Section 4.

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

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_BCQ_1 | R | BCQ positive |
| C_BDQ_1 | R | BDQ positive |
| C_BPQ_1 | R | BPQ positive |

### Row T3

There are 33 positive integer entries.

    U(W)=-992774675583/800000000000<0.

```text
14 L0*L17;  4 L3*L6;  3 L4*L11
13 L0*L7*L11;  19 L0*L11*L17;  11 L3*L9*L9
4 L3*L9*L13;  60 L3*L9*L16;  58 ABR+
31 ABR+*L8;  18 ABR+*L10;  37 ADQ-*L0
10 ADQ-*L6;  1 ADQ-*L8;  8 ADQ-*L12
1 APQ+*L8;  18 AQR-*L3;  38 BQR+
65 CDP+;  61 CDP+*L8;  1 CDP+*L10
43 CPQ+;  1 CPQ+*L3;  1 CPQ+*L9
50 DPQ-*L0;  41 C_ABQ_1*L16;  39 C_CDQ_1*L0
41 C_CDQ_1*L4;  23 C_CDQ_1*L17;  69 C_ABPD_2*L3
10 C_ABPQ_1*L1;  8 C_BCDQ_1*L2*L15;  32 C_BCDQ_1*L2*L17
```

Additional signs follow successively by the rule in Section 4.

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

The occupancy factors have these actual interior points.

| Factor | Interior points | Orientation or convex order |
|---|---|---|
| C_ABPD_2 | QR | ABPD counterclockwise convex |
| C_ABPQ_1 | R | ABPQ counterclockwise convex |
| C_ABQ_1 | R | ABQ positive |
| C_BCDQ_1 | P | BCDQ counterclockwise convex |
| C_CDQ_1 | P | CDQ positive |

### Row T4

There are 8 positive integer entries.

    U(W)=-1013371/10000000<0.

```text
3 L0*L17;  10 L6*L16;  3 ABR+
5 ADQ-;  8 BCP+;  21 CPQ-
10 CPR+;  8 DPQ-
```

Additional signs follow successively by the rule in Section 4.

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

## 6. Exact conclusion and boundary coverage

The ten rows cover all four sector-count patterns, all three distributed
assignments in the adjacent pattern, and every remaining determinant
sign. The additional split of A2 is on an actual nonzero triangle.
Coincidences, actual collinear triples, and points on the hull diagonals
already violate the assumed positive minimum. All box endpoints were
closed only to enlarge the domains of the displayed polynomial bounds.
Thus no positive-minimum boundary configuration is omitted.

Since W<=93/91 led to a contradiction, W>93/91 as claimed. The result
applies to any chosen actual quadrilateral and any three of its actual
interior points in the original square configuration, regardless of the
locations of further configuration points.
