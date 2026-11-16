# G6 finite case ledger: completed unrestricted Heilbronn \(n=9\) families

For **each case listed separately** (rather than grouped cap counts),
see [G6_ITEMIZED_CASES.md](G6_ITEMIZED_CASES.md). The
[221 indexed leaf rows](G6_ITEMIZED_LEAVES.tsv) and
[deterministic census checker](check_g6_itemized_cases.py) refine the
62 parent cases by lower-point counts, upper diagonal sectors, radial
wedges, and N7 sign words. All 62 parent cases are closed; all 221 leaves are covered.
The complete theorem is assembled in [UNRESTRICTED.md](UNRESTRICTED.md).

This ledger refines [ROADMAP.md](../../research/nine/ROADMAP.md) at the target
\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]
It describes a **finite, disjoint combinatorial cover** of the normalized
continuous parameter families. It is **not** an exhaustive finite numerical
certificate and does not by itself prove the unrestricted upper bound.
Every candidate type is now closed by its linked theorem; the census
does not assert that each type has a feasible realization.

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

| ID | \((n_L,n_T,n_R;n_I)\) | Occupancy and complete proof |
|---|---|---|
| N6-01 | \((0,0,1;2)\) | One side-cap point; couple it with both inner points |
| N6-02 | \((1,0,1;1)\) | Opposite side caps; their cross-triangle costs with the inner point |
| N6-03 | \((0,1,0;2)\) | One top-cap point and two inner points |
| N6-04 | \((0,1,1;1)\) | Complete sharp theorem and equality in [SIX_BOUNDARY_SIDE_OPPOSITE](SIX_BOUNDARY_SIDE_OPPOSITE.md) |
| N6-05 | \((1,1,1;0)\) | One point in each outer cap; no inner point |
| N6-06 | \((0,2,0;1)\) | Two top-cap points and one inner point |
| N6-07 | \((0,2,1;0)\) | Two top points and one side point |
| N6-08 | \((0,3,0;0)\) | Three top points; forced common support cell II, eight hull vertices |

**Status:** all eight N6 occupancies are **CLOSED**.
The respective complete proofs are
[single-side](SIX_BOUNDARY_SINGLE_SIDE.md),
[both-side and nonagon](SIX_BOUNDARY_TWO_SIDE_UPPER.md),
[side plus two top](SIX_BOUNDARY_SIDE_TWO_TOP.md), and
[all three top](SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md).
The both-side theorem includes its separately proved
[lower-point branch](SIX_BOUNDARY_TWO_SIDE_COMPLETION.md).
The full side-and-opposite theorem is
[SIX_BOUNDARY_SIDE_OPPOSITE.md](SIX_BOUNDARY_SIDE_OPPOSITE.md), including
its two sharp equality chambers. The single-opposite occupancy is closed by
[SIX_BOUNDARY_SINGLE_TOP.md](SIX_BOUNDARY_SINGLE_TOP.md), with an
independently checked 893-cell cover. The final two-top occupancy is closed by
[SIX_BOUNDARY_TWO_TOP_COMPLETION.md](SIX_BOUNDARY_TWO_TOP_COMPLETION.md),
which joins its complete triangular and convex hull theorems.

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

**Closure gate N6: COMPLETE.** Every coarse occupancy, permitted
lower count, sector subset and actual pair-line sign is covered by its
linked complete theorem. The equality branches force the known
configuration and the additional boundary contacts.

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
[C1_ZERO_LOWER.md](C1_ZERO_LOWER.md). The entire one-lower class is now excluded by Theorem 2 of
[C1_ONE_LOWER_MIXED_CAPS.md](C1_ONE_LOWER_MIXED_CAPS.md). Thus every C1
lower occupancy is closed. The catalogue below is retained as a complete
closed cover.

For either recorded count, set \(m=4-n_0\), and partition the \(m\)
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

**Status:** all 21 C1-0 rows and all 12 C1-1 rows are **CLOSED**.
Theorem 2 of [C1_ONE_LOWER_MIXED_CAPS.md](C1_ONE_LOWER_MIXED_CAPS.md)
assembles every one-lower occupancy and hull alternative. The exact
individual statuses and proof links are in
[G6_ITEMIZED_CASES.md](G6_ITEMIZED_CASES.md). These counts remain an unpruned,
exhaustive combinatorial catalogue; one uniform theorem can close
several rows simultaneously.

**Second-level split.** Each further point in the actual upper
quadrilateral \(HCDF\) occupies a distinct one of the four open
sectors \(HCJ,CDJ,DFJ,FHJ\), where \(J=HD\cap CF\).
The same-sector pair exclusion in ONE_CORNER_COMPLETION.md,
Theorem 2, applies since \(\operatorname{area}(HCDF)\le1/2\).
Thus \(n_I\le4\) and upper sector assignments are subsets of four;
for the exterior-occupancy rows the stronger \(n_I\le3\) follows from exterior
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

**Closure gate C1: COMPLETE.** Every lower count, cap occupancy and
hull alternative is excluded by its linked complete theorem. The finite
packages include their geometric bounds, complete sign refinements,
fixed rational coefficients and exact verifiers. Separate symbolic
implementations have independently reconstructed their expansions.

## Completed assembly and verification

The full N7 class, all eight N6 cap occupancies and all C1 lower counts
are closed. [UNRESTRICTED.md](UNRESTRICTED.md) combines them with the
corner theorems and the exact attaining construction, and checks the
normalization, boundary transitions and equality transfer.

A case is marked **CLOSED** because its linked theorem covers every
continuous parameter choice in its scope, including all actual-line
signs and coordinate-cut boundaries. Counting sign words alone does
not prove a geometric exclusion. The fixed rational verifiers check
all polynomial coefficients and the complete covers; the manuscripts
establish their geometric premises.

Run [check_g6_case_ledger.py](check_g6_case_ledger.py) for the elementary
occupancy counts, and [check_g6_itemized_cases.py](check_g6_itemized_cases.py)
for all 62 parent IDs and 221 closed leaves. These scripts verify the
census and links, not the geometric inequalities themselves.
