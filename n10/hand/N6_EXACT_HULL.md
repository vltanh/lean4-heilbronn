# Six contacts: complete exclusion of the exact hexagonal hull

**Theorem.** In the N6 normalization, if all four free points are strictly
inside the six-contact hexagon, some actual unsigned doubled triangle
area is below `s=93/1000`. Thus this entire placement has ordinary minimum
area below `s/2<A*`.

N6_EXACT_HULL_REDUCTION.md proves the coordinate ranges and the exhaustive
eight-row lower-pair catalogue used here. This note closes every row.
The proof consists of elementary geometric deductions followed by fixed
positive polynomial sums. Its three appendices print every case, deduction,
occupancy witness, square, integer weight, and factor. No numerical
optimization, coordinate sampling, external certificate, or unprinted
enumeration is a premise. The optional `check_n6_exact_hull.py` replays the
printed deductions and identities using integer and rational arithmetic.

## 1. Coordinates and common hypotheses

All areas are doubled. Assume, for a contradiction, that every triangle
of three actual points has unsigned area at least s. In particular no
three actual points are collinear, and all signs split below are strict.
Use the actual counterclockwise contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c,
    P=(p,q), Q=(u,v), R=(r,w), S=(j,k).

For an ordered triple write `[XYZ]=det(Y-X,Z-X)`. Each cyclic anchor
triple is positive. Each of P,Q,R,S lies strictly inside the hexagon
ABCEFH. Points P,Q lie in HABC below HC, and R,S lie in HCEF above HC.
In both lower support-cell alternatives ACP,ACQ are positive. HBQ is
positive; HBP is positive in the central case and negative in the mixed
case. Finally, for L=P,Q and U=R,S,

    [HLU]>0,             [CLU]<0.                         (1)

These are exactly the common signs proved in Sections 1–2 of the
reduction. The positive hexagon-edge tests and the indicated HC signs
also give all edge tests for the two strict half-hull containments.

Here is the remaining complete lower-line catalogue. Each sign in a
column V is the sign of `[VPQ]`.

| Root | Case | A | B | C | H | E | F |
|---|---|---|---|---|---|---|---|
| CS-- | central | + | + | - | - | - | - |
| CO-- | central | + | + | + | - | - | - |
| CO+- | central | + | + | + | - | + | - |
| CO++ | central | + | + | + | - | + | + |
| MH-- | mixed | - | - | - | + | - | - |
| MH-+ | mixed | - | - | - | + | - | + |
| MH++ | mixed | - | - | - | + | + | + |
| MHC++ | mixed | - | - | + | + | + | + |

The reduction excludes all three other mixed rows before this table.
Its transposition and labeling choices precede this proof; no additional
square symmetry is assumed in any of these eight roots.

## 2. Elementary inference rules and their explicit notation

The appendices are finite rooted trees. At each node retain every parent
sign, add the printed assumptions, and read the `n6-trace` lines in order.
An integer `1` means positive and `-1` negative. Cyclic permutations of a
triple preserve its sign and odd permutations reverse it. The following
five rules explain every trace line; none requires testing a numerical
configuration.

### Determinant identity: `plu ABCDE XYZ sign`

For five distinct actual points, direct expansion gives

    [ABC][ADE]-[ABD][ACE]+[ABE][ACD]=0.                    (2)

Each factor is nonzero. If two summands have the same known sign and
one determinant in the third summand has unknown sign, its sign is
forced by (2). A `plu` line names the five points in (2), the determinant
being deduced, and its resulting sign. A `plubad ABCDE` leaf states that
all three nonzero summands have the same sign, which contradicts (2).

### Convex line: `line HULL PAIR V sign`

A line through two strictly interior points of a convex polygon crosses
exactly two boundary edges. It contains no actual vertex. Its vertex
signs therefore have exactly two changes around the polygon. A `line`
step lists the actual hull, the two points on the line, and a vertex
whose sign is the same in every two-change word compatible with the
signs already known. There are at most six hull vertices here, so this
rule is also the direct elementary consecutive-arc test.

The only hulls used are ABCEFH for any pair of free points, HABC for
PQ, and HCEF for RS. They are strictly convex and both named points
are strictly inside them by Section 1. `linebad HULL PAIR` means that
no two-change word agrees with the stated signs, a contradiction.

### Chord containment: `chord HULL PAIR EDGE POINT`

When all vertex signs on the pair's line are known, the two crossed
edges are the two changes of sign. The line chord lies in the convex
hull of the endpoints of those edges. Preserve their cyclic order to
form this actual triangle or quadrilateral. Each of the two free points
lies in its interior: it is strictly inside the line chord, and equality
on another edge would make three actual points collinear. A `chord`
line records one resulting positive oriented edge test.

### Triangle containment: `via POINT TRIANGLE EDGE sign`

Three known edge tests put POINT strictly inside the stated actual
triangle. The determinant at a fixed oriented EDGE is affine in POINT.
If all three triangle vertices have either zero or the same nonzero
edge sign, with at least one nonzero value, the interior point has that
sign. This follows from its strictly positive barycentric coordinates.
A zero is used only when the tested vertex is an endpoint of EDGE.

### Fixed-hull containment: `hullvia POINT HULL EDGE sign`

The identical affine argument applies to the common strict containing
hexagon or the appropriate half hull of Section 1. A strictly interior
point of a convex polygon admits a convex combination with every vertex
weight positive: subtract a sufficiently small positive multiple of the
vertex average, then represent the remaining interior point by convexity.
Thus the same edge-sign test is valid for these fixed hulls as well.

An `Exclusion: given XYZ sign` leaf records a new assumption opposite
to an inherited sign. `stepbad` followed by an inference line records a
valid inference opposite to an already known sign. Either is an immediate
geometric contradiction. All other geometric leaves are the occupancy
contradictions specified in Section 4 below.

## 3. Exhaustive branching

Every nonterminal node prints one of the following three splits and
names every child. The children inherit the same parent deductions.

* `sign XYZ` splits the two nonzero signs of an actual determinant.
* `rs` exchanges the two upper labels if necessary so that HRS is
  negative, then splits the positive vertex set on C,E,F into exactly
  `C`, `E`, `F`, `CE`, `EF`, `CEF`. These are all nonempty consecutive
  arcs of C,E,F. The two upper labels were previously interchangeable;
  the common geometry and the lower-line assumptions are symmetric in
  them. This split is used only immediately below a lower-line root.
* `cross UV`, for UV in PR,PS,QR,QS, splits the four signs at A,B,E,F.
  By (1) the signs at H,C are positive and negative. Around H,A,B,C,E,F
  the complete two-change words have the following A,B,E,F patterns:

      ----, ---+, --++, +---, +--+, +-++, ++--, ++-+, ++++.

  Any pattern conflicting with an inherited sign may be omitted. Every
  compatible pattern is printed as a child, even if subsequent deductions
  immediately contradict it. There is no realizability test in this rule.

Each root and all descendants are in exactly one appendix. A root that
already has a polynomial contradiction needs no further split.

| Root | Initial node | Nodes | Polynomial leaves | Geometric leaves | Terms | Deductions |
|---|---|---:|---:|---:|---:|---:|
| CS-- | N0000 | 293 | 113 | 114 | 20693 | 1864 |
| CO-- | N0293 | 81 | 35 | 23 | 5282 | 637 |
| CO+- | N0374 | 1 | 1 | 0 | 107 | 12 |
| CO++ | N0375 | 1 | 1 | 0 | 34 | 16 |
| MH-- | N0376 | 1 | 1 | 0 | 41 | 18 |
| MH-+ | N0377 | 33 | 13 | 7 | 1567 | 185 |
| MH++ | N0410 | 133 | 58 | 43 | 10014 | 773 |
| MHC++ | N0543 | 143 | 68 | 42 | 7186 | 883 |

The CS-- root is in N6_EXACT_HULL_CS.md. The three CO roots are in
N6_EXACT_HULL_CO.md. The four mixed roots are in
N6_EXACT_HULL_MIXED.md. In total there are 686 nodes, 290 polynomial
leaves, and 229 geometric leaves. Every nonterminal node has its complete
child list, so these are exhaustive geometric alternatives.

## 4. Occupancy bounds and geometric leaves

Put K=149/20 and J=4427/500. TRIANGLE_OCCUPANCY.md proves

    Gamma2=4+2sqrt(3)>K,
    Gamma3=(11+3sqrt(5))/2>J.

An actual triangle with one, two, or three actual points strictly inside
therefore has area at least 3s, Ks, or Js, respectively. With four
interior points it has area at least `(Gamma3+2)s>1`. Every triangle
of points in the original unit square has doubled area at most one.
Thus `four TRIANGLE POINTS` is a contradiction, with the four actual
occupants explicitly named and every edge sign supplied by the trace.

CLUSTERED_TRIANGLE.md excludes three actual interior points when one
of them has the other two in one fan triangle. A `cluster` leaf names
the outer triangle, the pivot, the fan triangle and its two occupants.
All containments are checked by actual edge signs, and the original
outer triangle lies in the unit square.

For an actual convex quadrilateral of area V with n actual interior
points, the following sufficient lower bounds are used:

| n | Lower bound for V |
|---:|---|
| 1 | (24/5)s |
| 2 | 8s |
| 3 | 93/91 |
| 4 | (J+3)s |
| 5 | (J+K)s |
| 6 | 2Js |

The first two are the quadrilateral occupancy bounds proved in
N8_OP_LINE_CAPS.md; `24/5<2(1+sqrt(2))`. The n=3 entry is the strict
original-square bound of SQUARE_QUADRILATERAL_THREE.md, weakened to a
nonstrict factor. For n>=4 split by an actual diagonal. No point is on
it. A side containing four points is already impossible by the triangle
bound above. The remaining splits are 1+3 or 2+2 for n=4, 2+3 for n=5,
and 3+3 for n=6. These give the table, using `2K>J+3`.

The half polygons HABC and HCEF have areas

    hc-ab<=1,       1-(h-e)(c-f)<=1.                    (3)

Every actual convex quadrilateral with all vertices among H,A,B,C,P,Q
or among H,C,E,F,R,S is contained in the corresponding half polygon,
and has area at most one. Thus `smallquad HULL POINTS lower` or `upper`
is impossible when its three printed occupants are inside: the n=3
bound requires area at least 93/91>1. All hulls in this rule are proved
strictly convex by their four cyclic triple signs.

## 5. The four rational boxes and elementary metric factors

Every polynomial leaf identifies one of the four following boxes in
the variable order

    (a,b,c,e,f,h,p,q,u,v,r,w,j,k).                       (4)

Box C is the central box of N6_EXACT_HULL_REDUCTION.md Section 3.
Boxes M0 and M1 are its mixed box, using respectively the original and
stronger area floors from Sections 4 and 6. Both hold in every mixed
root. M2 is the still narrower box of Section 6 and is used only with
CPQ positive, namely the MHC root. The weaker mixed boxes remain valid
there. These are closed rational enlargements of the proved ranges.

### Box C

Floor rho: `897/1000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 1037/10000 | 6143/20000 |
| b | 1037/10000 | 6143/20000 |
| c | 897/1000 | 1 |
| e | 1037/10000 | 907/1000 |
| f | 1037/10000 | 907/1000 |
| h | 897/1000 | 1 |
| p | 1026441/8963000 | 407/500 |
| q | 1026441/8963000 | 407/500 |
| u | 1026441/8963000 | 407/500 |
| v | 1026441/8963000 | 407/500 |
| r | 930/8963 | 907/1000 |
| w | 930/8963 | 907/1000 |
| j | 930/8963 | 907/1000 |
| k | 930/8963 | 907/1000 |

### Box M0

Floor rho: `837/1000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 93/721 | 6143/20000 |
| b | 279/1000 | 4283/6143 |
| c | 837/1000 | 1 |
| e | 93/721 | 907/1000 |
| f | 279/1000 | 907/1000 |
| h | 837/1000 | 1 |
| p | 67053/628000 | 1570201/3071500 |
| q | 93/500 | 1570201/2141500 |
| u | 118947/721000 | 407/500 |
| v | 37851/314000 | 407/500 |
| r | 67053/628000 | 907/1000 |
| w | 93/721 | 907/1000 |
| j | 67053/628000 | 907/1000 |
| k | 93/721 | 907/1000 |

### Box M1

Floor rho: `1510413/1780000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 93/721 | 6143/20000 |
| b | 279/1000 | 4283/6143 |
| c | 1510413/1780000 | 1 |
| e | 93/721 | 907/1000 |
| f | 279/1000 | 907/1000 |
| h | 1510413/1780000 | 1 |
| p | 67053/628000 | 1570201/3071500 |
| q | 93/500 | 1570201/2141500 |
| u | 118947/721000 | 407/500 |
| v | 37851/314000 | 407/500 |
| r | 67053/628000 | 907/1000 |
| w | 93/721 | 907/1000 |
| j | 67053/628000 | 907/1000 |
| k | 93/721 | 907/1000 |

### Box M2

Floor rho: `91977/100000`.

| Coordinate | Lower | Upper |
|---|---|---|
| a | 3/23 | 6143/20000 |
| b | 287/1000 | 297/500 |
| c | 91977/100000 | 1 |
| e | 3/23 | 907/1000 |
| f | 287/1000 | 907/1000 |
| h | 91977/100000 | 1 |
| p | 2139/20000 | 51/125 |
| q | 9/23 | 68/99 |
| u | 3861/23000 | 407/500 |
| v | 1209/10000 | 407/500 |
| r | 2139/20000 | 907/1000 |
| w | 3/23 | 907/1000 |
| j | 2139/20000 | 907/1000 |
| k | 3/23 | 907/1000 |


For the leaf's box define

    L_(2i)=coordinate_i-lower_i,
    L_(2i+1)=upper_i-coordinate_i,       i=0,...,13.

All 28 are nonnegative. The further elementary factors are

    ha=h-a, ea=e-a, he=h-e, fb=f-b, cf=c-f,
    Vlow=hc-rho,
    Qlow=hc-ab-8s,
    Qup=1-(h-e)(c-f)-8s,
    up_R=r+w-rho-s,       up_S=j+k-rho-s,
    low_P=(1-s)/rho-p-q,  low_Q=(1-s)/rho-u-v.          (5)

The orders and the area floor give ha,ea,he,fb,cf,Vlow. Each half
quadrilateral contains its actual pair, so the n=2 bound in Section 4
gives Qlow,Qup. Equation (6) of the reduction gives the four coordinate
sum factors for any of its valid floors rho.

In every mixed box also use

    Px=b-p-2s,                Py=b(h-q)-2s.             (6)

The reduction proves these from the ABP,HBP,HAP clearances. In M2 only,

    Ratio_lo=b-(313/1000)c,
    Ratio_hi=(297/500)c-b                                 (7)

are positive by its mixed-ratio theorem. In the central box only,

    Product=(h-a)(c-b)-(39/50)^2 hc                        (8)

is nonnegative by the central support-pair argument in Section 3 of
the reduction. No unproved coordinate ordering between free points
is used as a factor.

### Opposite-contact coordinate gaps

For an ordered free pair UV, the exact identities are

    [AUV]-[HUV]=(h-a)(x_U-x_V),
    [BUV]-[CUV]=(c-b)(y_V-y_U).                         (9)

If the two left contact signs are opposite and epsilon is the A sign,
the left side after multiplication by epsilon is at least 2s. Since
`h-a<=upper_h-lower_a`, the affine factor

    DX_UV=epsilon(x_U-x_V)-2s/(upper_h-lower_a)          (10)

is nonnegative. If the two bottom contact signs are opposite, with
epsilon the B sign, the analogous factor is

    DY_UV=epsilon(y_V-y_U)-2s/(upper_c-lower_b).         (11)

The denominators are positive in every printed box. Each use requires
both opposite signs in its leaf's explicit trace. These inequalities
need no extra labeling choice.

## 6. The remaining nonnegative polynomial factors

The names in every printed sum have the following precise meanings.
Each conditional premise is supplied either by an actual sign in the
inherited trace or by an explicit occupant list in the leaf.

### Actual triangles and occupied polygons

`T_XYZ+` denotes `[XYZ]-s`; `T_XYZ-` denotes `-[XYZ]-s`.
The required actual sign is proved in the trace. `C_XYZ_n` denotes
`abs([XYZ])-cost_n`, for n=1,2,3 with costs 3s,Ks,Js from Section 4.
The leaf names n distinct actual occupants, and their three edge signs
prove the strict containments. The absolute sign is the known sign of
XYZ, so each factor is an explicit quadratic polynomial.

For a positive cyclic actual quadrilateral ABCD, define
`area(ABCD)=[ABC]+[ACD]`. A factor `Q_ABCD_n` is its area minus the
corresponding entry in Section 4's table. Its four cyclic triple signs
prove strict convexity; its leaf names n distinct actual occupants.

### Two-diagonal spread

A factor `S_ABCD_UV_i+` or `S_ABCD_UV_i-` is used only when U,V are
strictly inside the actual convex quadrilateral ABCD and both of its
diagonals separate them. Write its vertices cyclically as V0,V1,V2,V3.
For i=0 or 1, its definition is

    area(ABCD)-beta*s
      +/- ([V_i U V]-[V_(i+2) U V]).                   (12)

Here beta=6 when all four vertices belong to one of the two half-hull
sets in Section 4, and beta=29/5 otherwise. QUADRILATERAL_SPREAD.md
proves the threshold-free normalized bound with coefficient
`3+2sqrt(2)>29/5`. If the quadrilateral has area at most one, then
the normalized threshold is at least s>1/11, so its stronger coefficient
6 applies. After multiplying by the area these are exactly (12).
Both signs of the absolute spread give nonnegative factors. The named
pair and the two diagonal tests are checked in the trace; they are not
inferred from a numerical picture.

### Distributed three-point meshes

For a positive actual outer triangle ABC and three actual interior
points X,Y,Z, a factor with prefix `M_ABC_XYZ` requires `[ZXY]>0` and
the following six strict containments:

    Z in ABY, X in BCY, Y in CAZ,
    X in BCZ, Y in CAX, Z in ABX.                     (13)

The trace supplies all eighteen edge tests. These are the distributed
seven-face mesh of TRIANGLE_OCCUPANCY.md: its three ears are ABZ,BCX,CAY,
its three connector faces are AZY,BXZ,CYX, and its central face is ZXY.
The mesh calculation proves that the connector sum is at least
`3phi*s`, where `phi=(1+sqrt(5))/2`. The other two ears and the central
face each have area at least s. Since `3phi>J-4`, this proves the four
nonnegative factors

    M_ABC_XYZ_ear0=[ABC]-[ABZ]-(J-1)s,
    M_ABC_XYZ_ear1=[ABC]-[BCX]-(J-1)s,
    M_ABC_XYZ_ear2=[ABC]-[CAY]-(J-1)s,
    M_ABC_XYZ_con =[AZY]+[BXZ]+[CYX]-(J-4)s.           (14)

These are invariant area statements. No coordinate box is transferred
by the affine mesh argument.

### Explicit affine squares

One leaf additionally uses ten printed squares. A row

    SOSn c0 c1 ... c14

in its `n6-squares` block defines exactly

    SOSn=(c0+sum_(i=0..13) c_(i+1)(coordinate_i-lower_i))^2. (15)

Every coefficient is a printed integer. Such a factor is nonnegative
for all real coordinates and needs no geometric sign assumption.
There are no other square definitions or hidden semidefinite premises.

## 7. Exact contradiction at every polynomial leaf

Each `n6-sum` entry has three fields: its consecutive index, a positive
integer weight, and a product of the factors just defined. Semicolons
only separate consecutive entries on a line. Let W be their weighted
sum. Every factor is nonnegative under that leaf's stated and deduced
hypotheses, so W>=0.

Set `z_i=coordinate_i-lower_i`, with
`0<=z_i<=upper_i-lower_i`. Directly expand the printed sum as
`W=sum c_alpha z^alpha`. Every sum has total degree at most three.
Dropping all negative nonconstant monomials gives the rigorous bound

    W <= c_0 + sum_(alpha nonzero, c_alpha>0)
                    c_alpha product_i(upper_i-lower_i)^alpha_i.  (16)

Every leaf prints this exact rational upper bound, and every bound is
strictly negative. This contradicts W>=0. In total the three appendices
print 44,924 positive integer terms. Formula (16) and rational expansion
alone verify each identity; none depends on how its integer weights were
found. The companion checker reconstructs each factor from Sections 5–6,
verifies every conditional witness, and reads all coefficients from the
manuscript rather than a stored discovery file.

The eight roots exhaust the lower catalogue. Sections 2–3 justify every
deduction and every further split. Section 4 excludes every geometric
leaf, and (16) excludes every polynomial leaf. The assumed exact-hull
configuration therefore cannot exist. This closes the entire exact-hull
2/2 child of N6. Exterior-cap placements remain separate obligations.
