# G6 finite case ledger: remaining unrestricted Heilbronn \(n=9\) families

For **each case listed separately** (rather than grouped cap counts),
see [G6_ITEMIZED_CASES.md](G6_ITEMIZED_CASES.md). The
[221 indexed leaf rows](G6_ITEMIZED_LEAVES.tsv) and
[deterministic census checker](check_g6_itemized_cases.py) refine the
62 parent cases by lower-point counts, upper diagonal sectors, radial
wedges, and N7 sign words. Currently 7 parent cases are open and
55 are closed; the 221 leaves comprise 43 open and 178 covered.

This ledger refines [ROADMAP.md](../ROADMAP.md) at the target
\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]
It describes a **finite, disjoint combinatorial cover** of the remaining
continuous parameter families. It is **not** an exhaustive finite numerical
certificate and does not prove the unrestricted upper bound. A row labelled
OPEN is a *necessary candidate type*, not an assertion that the type has a
feasible realization.

The global normalization in
[GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md) reduces the theorem to N, C1,
C2, Type II and Type III. The eight-boundary class, C2, Type II and Type III
are already closed. The entire normalized seven-boundary form is now closed;
see [SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md),
Theorem 2. The N7 sign census below is retained as a closed cover.
The entire C1 **two-lower** class is closed by
[C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md).
These statements concern the written hand arguments and exact diagnostics;
they have not been Lean-verified or externally audited.

Throughout we suppose the minimum actual triangle area is at least \(A_0\).
In particular no three actual points are collinear, and an actual
triangle containing three additional points is impossible
([THREE_INTERIOR_TRIANGLES.md](THREE_INTERIOR_TRIANGLES.md)).
A point on a line through two actual points is therefore never an
unlisted equality case.

## G6-N6: six square-boundary contacts, three free interior points

The prescribed contacts are
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ F=(f,1)
\]
with \(0<a<h<1\), \(0<b<c<1\), \(a\le d\le h\), \(b\le f\le c\).
Assume **exactly six** square-boundary points, so the three other points
are strictly inside the square. The exact anchor-hexagon hull is excluded
by [SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md).

Partition the square by the anchor hexagon into its interior \(I\) and
four exterior corner caps. The lower-left cap \((0,0)AB\) is **empty**.
Name the others
\[
L=FH(0,1),\qquad T=DF(1,1),\qquad R=CD(1,0).
\]
The side caps \(L,R\) have **capacity one** by
[SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md).
Write \((n_L,n_T,n_R;n_I)\) for the four occupancy counts.
Then
\[
n_L,n_R\in\{0,1\},\quad n_T\in\{0,1,2,3\},\quad
n_I=3-n_L-n_T-n_R\ge0,\quad n_L+n_T+n_R\ge1.
\]
Transpose the square, exchanging \(L,R\), to arrange \(n_L\le n_R\).
These conditions give **exactly eight** coarse occupancy orbits:

| ID | \((n_L,n_T,n_R;n_I)\) | Specific remaining task |
|---|---|---|
| N6-01 | \((0,0,1;2)\) | One side-cap point; couple it with both inner points |
| N6-02 | \((1,0,1;1)\) | Opposite side caps; their cross-triangle costs with the inner point |
| N6-03 | \((0,1,0;2)\) | One top-cap point and two inner points |
| N6-04 | \((0,1,1;1)\) | Lower inner point closed by [SIX_BOUNDARY_SIDE_TOP_LOWER](SIX_BOUNDARY_SIDE_TOP_LOWER.md); upper inner point remains |
| N6-05 | \((1,1,1;0)\) | One point in each outer cap; no inner point |
| N6-06 | \((0,2,0;1)\) | Two top-cap points and one inner point |
| N6-07 | \((0,2,1;0)\) | Two top points and one side point |
| N6-08 | \((0,3,0;0)\) | Three top points; forced common support cell II, eight hull vertices |

**Status:** N6-01, N6-02, N6-05, N6-07 and N6-08 are **CLOSED**.
The respective complete proofs are
[single-side](SIX_BOUNDARY_SINGLE_SIDE.md),
[both-side and nonagon](SIX_BOUNDARY_TWO_SIDE_UPPER.md),
[side plus two top](SIX_BOUNDARY_SIDE_TWO_TOP.md), and
[all three top](SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md).
The both-side theorem includes its separately proved
[lower-point branch](SIX_BOUNDARY_TWO_SIDE_COMPLETION.md).
Only N6-03 and N6-06 with their lower/upper splits, and the upper row N6-04-L0, remain open. The lower row N6-04-L1 is completely closed.

**Second-level finite split (exhaustive, without claiming feasibility).**
The virtual lower triangle \((0,0)HC\) has capacity one, so among the
\(n_I\) inner points let \(n_0\in\{0,1\}\) be the number below \(HC\),
with \(n_0\le n_I\). The remaining \(n_I-n_0\) are in the upper
quadrilateral \(HCDF\). Let \(J=HD\cap CF\). Each of its four open
diagonal sectors
\[
HCJ,\quad CDJ,\quad DFJ,\quad FHJ
\]
has capacity one for further actual points, by
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), Theorem 2.
Therefore index those upper points by a *subset* of the four sectors,
not by a multiset. The eight rows yield **thirteen**
\((n_L,n_T,n_R;n_0,n_{\rm upper})\) occupancy subrows before sector
choices. Sector subsets and line signs are finite refinements; no
sector is assumed occupied unless proved.

**Closure gate N6:** a continuous strict area bound or a checked
finite sign/inequality certificate for all eight rows, covering both
values of \(n_0\) where permitted, every sector subset, cap boundaries,
and all pair-line signs. Do not substitute the exact-hexagon theorem
for configurations with exterior hull vertices.

## G6-N7: seven square-boundary contacts, two free interior points

After transposition, use
\[
A=(0,a),\ H=(0,h),\ B=(b,0),\ C=(c,0),\
D=(1,d),\ E=(1,e),\ F=(f,1),
\]
where \(0<a<h<1\), \(0<b<c<1\), \(0<d<e<1\),
\(b\le f\le c\), and \(f\le1/2\). This normalizes the seventh
contact onto the right side, up to the interchange of the two
singly occupied sides.

The entire exterior-point class is closed in
[SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md](SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md).
Both free points lying together in the smaller-left pentagon or both
in the right quadrilateral are also excluded by
[SEVEN_BOUNDARY_LEFT_PAIR.md](SEVEN_BOUNDARY_LEFT_PAIR.md) and
[SEVEN_BOUNDARY_RIGHT_PAIR.md](SEVEN_BOUNDARY_RIGHT_PAIR.md).

**This entire branch is CLOSED.** The mixed interior pair was the last
macroscopic placement. Its lower-HC branch is closed by
[SEVEN_BOUNDARY_MIXED_LOWER.md](SEVEN_BOUNDARY_MIXED_LOWER.md), and its
upper-HC branch by
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md).
Name its left and right members \(P,Q\), respectively. The established
constraints are
\[
P\in\operatorname{int}(ACF),\quad
Q\in\operatorname{int}(CEF),\quad
P,Q\ \text{below }HE.
\]
The upper triangle \(HEF\) is empty, and none of the actual triangles
\(ADE,AHD,AHE,HDE\) can contain both free points
([SEVEN_BOUNDARY_MIXED_PAIR.md](SEVEN_BOUNDARY_MIXED_PAIR.md),
[SEVEN_BOUNDARY_UPPER_TRIANGLE.md](SEVEN_BOUNDARY_UPPER_TRIANGLE.md)).
Earlier common pair cells \(HBE\cap BEF\) and \(ACE\cap ADE\)
are excluded, too.

For an **explicit exhaustive orientation refinement**, use the signs
\[
\epsilon_1=\operatorname{sgn}[HCP],\qquad
\epsilon_2=\operatorname{sgn}[DFQ],\qquad
\epsilon_3=\operatorname{sgn}[PQH],\qquad
\epsilon_4=\operatorname{sgn}[PQE],
\]
where \([UVW]=\det(V-U,W-U)\) and the line \(PQ\) is directed
from the left member to the right member. Each sign is strictly \(+\)
or \(-\) by noncollinearity. This partitions that mixed class into
**at most \(2^4=16\) orientation cells**, with no points omitted:

| Primary cell | \(\epsilon_1\): \(P\) vs \(HC\) | \(\epsilon_2\): \(Q\) vs \(DF\) | Further subcells |
|---|---|---|---|
| N7-M1 | \(+\) | \(+\) | \((\epsilon_3,\epsilon_4)\in\{++,+-,-+,--\}\) |
| N7-M2 | \(+\) | \(-\) | Same four pair-line sign words |
| N7-M3 | \(-\) | \(+\) | Same four pair-line sign words |
| N7-M4 | \(-\) | \(-\) | Same four pair-line sign words |

These are **partition cells, not 16 feasible survivors**:
the established containment and capacity restrictions can make
individual words empty. All four rows and every pair-line sign are now
covered by the two complete mixed theorems; their finer radial covers
require no restriction on the joining line.

**Closure gate N7: COMPLETE.** All four primary cells and all pair-line
sign subcells are excluded strictly below the target. The full exterior
theorem handles equality and boundary-contact transitions; Theorem 2 of
the upper mixed completion assembles the normalized open-side form.

## G6-C1: one prescribed corner, zero or one lower free point

The five actual anchors are
\[
O=(0,0),\ H=(0,h),\ C=(c,0),\
D=(1,d),\ F=(f,1),\qquad d\le h,\ f\le c.
\]
Let \(n_0\) count the four additional points strictly in \(OHC\).
Counts \(n_0\ge3\) are excluded by [ONE_CORNER.md](ONE_CORNER.md);
\(n_0=2\) is completely excluded by
[C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md), and
the exact five-anchor hull is excluded by
[C1_MIXED_PENTAGON.md](C1_MIXED_PENTAGON.md).
The entire zero-lower class is now also excluded by
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md). Therefore **only \(n_0=1\)**
and the specified larger-hull rows remain. The zero-lower catalogue
below is retained as a complete closed cover.

For a remaining count, set \(m=4-n_0\), and partition the \(m\)
upper points into
\[
L=HF(0,1),\quad T=DF(1,1),\quad R=CD(1,0),
\quad I=HCDF.
\]
Let \((n_L,n_T,n_R;n_I)\) be their counts. A larger hull has
\(1\le n_L+n_T+n_R\le m\), and
\(n_I=m-n_L-n_T-n_R\).
Reflect in \(x=y\) to impose \(n_L\le n_R\).
The general cap restrictions in [C1_ZERO_LOWER.md](C1_ZERO_LOWER.md)
apply independently of its zero-lower hypothesis. In the one-lower
class, [C1_ONE_LOWER_RIGHT_PAIR.md](C1_ONE_LOWER_RIGHT_PAIR.md), together
with those restrictions after f≤d normalization, gives capacity one
to each side cap. The historical count table below is deliberately
unpruned, so its case IDs remain stable.

The following lists **every** cap-occupancy orbit, grouping by the
top-cap count \(n_T\). Each parenthesized pair denotes \((n_L,n_R)\),
and \(n_I\) is determined by the count equation:

| Branch | \(n_T\) | All \((n_L,n_R)\) up to reflection | Number |
|---|---:|---|---:|
| C1-0 (four upper points) | 0 | (0,1), (0,2), (0,3), (0,4), (1,1), (1,2), (1,3), (2,2) | 8 |
| C1-0 | 1 | (0,0), (0,1), (0,2), (0,3), (1,1), (1,2) | 6 |
| C1-0 | 2 | (0,0), (0,1), (0,2), (1,1) | 4 |
| C1-0 | 3 | (0,0), (0,1) | 2 |
| C1-0 | 4 | (0,0) | 1 |
| **C1-0 subtotal** | | | **21** |
| C1-1 (three upper points) | 0 | (0,1), (0,2), (0,3), (1,1), (1,2) | 5 |
| C1-1 | 1 | (0,0), (0,1), (0,2), (1,1) | 4 |
| C1-1 | 2 | (0,0), (0,1) | 2 |
| C1-1 | 3 | (0,0) | 1 |
| **C1-1 subtotal** | | | **12** |

**Status:** every C1-0 row is **CLOSED**. In C1-1, seven of the twelve
coarse rows are closed: the single-exterior-point rows, both side-pair
rows, the side-capacity impossibilities, and the one-in-each-cap row.
The exact individual statuses and proof links are in
[G6_ITEMIZED_CASES.md](G6_ITEMIZED_CASES.md). The five open rows are
C1-1-04 and 07. These counts remain an unpruned,
exhaustive combinatorial catalogue; one uniform theorem can close
several rows simultaneously.

**Second-level split.** Each further point in the actual upper
quadrilateral \(HCDF\) occupies a distinct one of the four open
sectors \(HCJ,CDJ,DFJ,FHJ\), where \(J=HD\cap CF\).
The same-sector pair exclusion in ONE_CORNER_COMPLETION.md,
Theorem 2, applies since \(\operatorname{area}(HCDF)\le1/2\).
Thus \(n_I\le4\) and upper sector assignments are subsets of four;
for the open rows the stronger \(n_I\le3\) follows from exterior
occupancy. When \(n_0=1\), further split the one lower point \(Z\)
into the **three** disjoint radial wedges:
\[
Z_y<dZ_x,\qquad
dZ_x<Z_y<Z_x/f,\qquad
Z_y>Z_x/f.
\]
These are ordered by \(d\le h\le1\le1/f\), and equalities are
forbidden by the actual lines \(OD,OF\).
After these splits, orient pair lines through free points and use
anchor-side signs only as needed; no unproved symmetry or interior
boundary-pushing lemma is assumed.

**Closure gate C1:** finish both lower-count branches, preferably with
a uniform cap-cap or cap-quadrilateral inequality rather than 33
unrelated local computations. If a finite box certificate is required,
publish its polynomial inequalities, domain bounds, complete box list,
exact rational coefficient rule, and independent checker.

## Priority and acceptance criteria

1. **N7-M: complete.** Both sides of HC and every pair-line sign
   are covered by the complete mixed theorems above.
2. **N6-S (eight cap-occupancy orbits).**
   Attack the three-point top cap N6-08 using its forced common
   support cell II; group the remaining rows by zero/one occupancy
   of the virtual lower triangle and by upper diagonal-sector subsets.
3. **C1-0 / C1-1 (33 coarse cap orbits).**
   Seek a uniform hull/cap capacity theorem to prune the list *before*
   allocating 33 separate algebraic certificates.
4. **Final G7 audit.** Recheck the global normalization, all open-row
   exhaustiveness, strict/equality cases, collinear and cap-boundary
   transitions, and equality transfer through determinant-one shears.

A case is marked **CLOSED** only if its proof excludes *all*
continuous parameter values consistent with its stated signs and
occupancies. A finite sign catalogue is not itself a proof. Symbolic
transcription diagnostics, even with exact Bernstein coefficients, do
not certify the prior geometric containments; the manuscript must
justify those implications.

Run [check_g6_case_ledger.py](check_g6_case_ledger.py) to verify the
elementary occupancy enumerations (8 N6 orbits, 21+12 C1 orbits,
16 N7 sign words). That script does **not** certify any geometric
exclusion.
