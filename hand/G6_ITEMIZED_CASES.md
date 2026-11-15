# Itemized G6 case register (individual IDs and statuses)

This file expands [G6_FINITE_CASE_LEDGER.md](G6_FINITE_CASE_LEDGER.md) into
**individually numbered rows**. It is a working case register for the remaining
unrestricted nine-point Heilbronn hand proof; it is *not* itself a proof.

Counts, at the present commit:

- **N6:** 13 lower-versus-upper occupancy rows, **1 closed, 12 open**.
- **N7:** 16 four-sign orientation rows, **all 16 closed**.
- **C1-0:** 21 upper-cap occupancy rows, **all 21 open**.
- **C1-1:** 12 upper-cap occupancy rows, **1 closed, 11 open**.
- **Total:** 62 itemized rows, **44 open** and **18 closed**.

For a more detailed machine-readable list, see
[G6_ITEMIZED_LEAVES.tsv](G6_ITEMIZED_LEAVES.tsv): it explicitly enumerates
all **221** occupancy/sector/sign leaves (186 open, 35 covered by complete
class theorems). These are *necessary geometric types*, not claims that each
leaf has a feasible configuration. Certain free-point line signs still need
further subdivision before a proof, and case boundaries must be checked.

## Notation and exhaustive partition

The seven/eight boundary-contact cases and the fully closed C2, Type II and
Type III families are documented elsewhere.

**N6** has six anchor points \(A,H,B,C,D,F\). Write
\(L=FH(0,1)\), \(T=DF(1,1)\), \(R=CD(1,0)\) for the three
allowed exterior corner caps, and \(I=\operatorname{int}(ABCDFH)\)
for the anchor-hexagon interior. The lower-left cap is empty. By
transposition arrange \(n_L\le n_R\), and denote the three free-point
occupancy \((n_L,n_T,n_R;n_I)\). The lower virtual triangle
\((0,0)HC\) contains \(n_0=0\) or \(1\) of the \(n_I\) points;
the other \(n_I-n_0\) lie in the upper quadrilateral \(HCDF\).
Each upper point occupies a distinct one of four diagonal sectors.

**N7** has two free points in the mixed interior region. The signs
\(\epsilon=(\operatorname{sgn}[HCP],\operatorname{sgn}[DFQ],
\operatorname{sgn}[PQH],\operatorname{sgn}[PQE])\)
are the stable keys below. Entire N7 is now excluded by the completed
mixed-theorems, independent of \(\epsilon\).

**C1** has anchors \(O=(0,0),H=(0,h),C=(c,0),D=(1,d),F=(f,1)\).
C1-0 has zero free points in \(OHC\), and four above; C1-1 has one
free point \(Z\in OHC\), and three above. Partition upper points into
exterior caps \(L=HF(0,1)\), \(T=DF(1,1)\), \(R=CD(1,0)\)
and interior \(I=HCDF\); impose \(n_L\le n_R\) by reflection.
The tuple in each row is \((n_L,n_T,n_R;n_I)\).
In C1-1, the one lower point occupies one of three radial wedges:
\(W_1: Z_y<dZ_x\), \(W_2:dZ_x<Z_y<Z_x/f\),
\(W_3:Z_y>Z_x/f\). Wedge boundaries would be collinear triples
with the actual anchors and are forbidden for positive minimum area.

The four upper diagonal sectors, for N6 and C1, are
\[
S_1=HCJ,\quad S_2=CDJ,\quad S_3=DFJ,\quad S_4=FHJ,
\qquad J=HD\cap CF.
\]
At most one free point occupies each sector, by
[ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md), Theorem 2.
Choose a subset of exactly \(n_{\rm upper}\) sectors; that choice is a
separate row in the TSV file. No additional symmetry on these sectors
is assumed.

## A. N6 — 13 explicitly numbered cases

| Case ID | \((n_L,n_T,n_R;n_I)\) | \(n_0\) | Upper interior | Status | Scope / proof |
|---|---|---:|---:|---|---|
| N6-01-L0 | (0,0,1;2) | 0 | 2 | **OPEN** | Remaining: one side cap plus two anchor-interior points |
| N6-01-L1 | (0,0,1;2) | 1 | 1 | **OPEN** | Remaining: one side cap plus two anchor-interior points |
| N6-02-L0 | (1,0,1;1) | 0 | 1 | **OPEN** | Remaining: both side caps plus one anchor-interior point |
| N6-02-L1 | (1,0,1;1) | 1 | 0 | **CLOSED** | [two-side completion](SIX_BOUNDARY_TWO_SIDE_COMPLETION.md) |
| N6-03-L0 | (0,1,0;2) | 0 | 2 | **OPEN** | Remaining: one top cap plus two anchor-interior points |
| N6-03-L1 | (0,1,0;2) | 1 | 1 | **OPEN** | Remaining: one top cap plus two anchor-interior points |
| N6-04-L0 | (0,1,1;1) | 0 | 1 | **OPEN** | Remaining: one top cap, one side cap, one anchor-interior point |
| N6-04-L1 | (0,1,1;1) | 1 | 0 | **OPEN** | Remaining: one top cap, one side cap, one anchor-interior point |
| N6-05-L0 | (1,1,1;0) | 0 | 0 | **OPEN** | Remaining: one in every outer cap |
| N6-06-L0 | (0,2,0;1) | 0 | 1 | **OPEN** | Remaining: two top-cap points plus one anchor-interior point |
| N6-06-L1 | (0,2,0;1) | 1 | 0 | **OPEN** | Remaining: two top-cap points plus one anchor-interior point |
| N6-07-L0 | (0,2,1;0) | 0 | 0 | **OPEN** | Remaining: two top-cap points plus one side cap |
| N6-08-L0 | (0,3,0;0) | 0 | 0 | **OPEN** | Remaining: three in top cap, common support cell II |

All caps and interior classes above are exhaustive *before* selecting the
specific upper diagonal-sector subset and pair-line signs. In particular
N6-08-L0 is known to have an eight-vertex hull with the remaining top point
in common support cell II; this geometric restriction is not itself an
exclusion. The N6-02-L1 closure is the whole branch with its unique
hexagon-interior point below (HC), not the neighboring N6-02-L0 case.

## B. N7 — all 16 sign words individually marked closed

| Case ID | (epsilon_1) | (epsilon_2) | (epsilon_3) | (epsilon_4) | Status |
|---|:---:|:---:|:---:|:---:|---|
| N7-PP-PP | + | + | + | + | **CLOSED** |
| N7-PP-PM | + | + | + | - | **CLOSED** |
| N7-PP-MP | + | + | - | + | **CLOSED** |
| N7-PP-MM | + | + | - | - | **CLOSED** |
| N7-PM-PP | + | - | + | + | **CLOSED** |
| N7-PM-PM | + | - | + | - | **CLOSED** |
| N7-PM-MP | + | - | - | + | **CLOSED** |
| N7-PM-MM | + | - | - | - | **CLOSED** |
| N7-MP-PP | - | + | + | + | **CLOSED** |
| N7-MP-PM | - | + | + | - | **CLOSED** |
| N7-MP-MP | - | + | - | + | **CLOSED** |
| N7-MP-MM | - | + | - | - | **CLOSED** |
| N7-MM-PP | - | - | + | + | **CLOSED** |
| N7-MM-PM | - | - | + | - | **CLOSED** |
| N7-MM-MP | - | - | - | + | **CLOSED** |
| N7-MM-MM | - | - | - | - | **CLOSED** |

The closed N7 proof is
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md),
Theorem 2, together with its lower-(HC) companion
[SEVEN_BOUNDARY_MIXED_LOWER.md](SEVEN_BOUNDARY_MIXED_LOWER.md).
These 16 sign rows are historical subdivisions of a now completely
excluded class, not 16 remaining tasks.

## C. C1-0 — 21 individually numbered cases, zero lower points

Here (n_0=0), the tuple totals four, and every row is currently OPEN.
The exact anchor-pentagon case ((0,0,0;4)) is already closed and hence
not included.

| Case ID | ((n_L,n_T,n_R;n_I)) | Upper diagonal-sector count | Status |
|---|---|---:|---|
| C1-0-01 | (0,0,1;3) | 3 | **OPEN** |
| C1-0-02 | (0,0,2;2) | 2 | **OPEN** |
| C1-0-03 | (0,0,3;1) | 1 | **OPEN** |
| C1-0-04 | (0,0,4;0) | 0 | **OPEN** |
| C1-0-05 | (1,0,1;2) | 2 | **OPEN** |
| C1-0-06 | (1,0,2;1) | 1 | **OPEN** |
| C1-0-07 | (1,0,3;0) | 0 | **OPEN** |
| C1-0-08 | (2,0,2;0) | 0 | **OPEN** |
| C1-0-09 | (0,1,0;3) | 3 | **OPEN** |
| C1-0-10 | (0,1,1;2) | 2 | **OPEN** |
| C1-0-11 | (0,1,2;1) | 1 | **OPEN** |
| C1-0-12 | (0,1,3;0) | 0 | **OPEN** |
| C1-0-13 | (1,1,1;1) | 1 | **OPEN** |
| C1-0-14 | (1,1,2;0) | 0 | **OPEN** |
| C1-0-15 | (0,2,0;2) | 2 | **OPEN** |
| C1-0-16 | (0,2,1;1) | 1 | **OPEN** |
| C1-0-17 | (0,2,2;0) | 0 | **OPEN** |
| C1-0-18 | (1,2,1;0) | 0 | **OPEN** |
| C1-0-19 | (0,3,0;1) | 1 | **OPEN** |
| C1-0-20 | (0,3,1;0) | 0 | **OPEN** |
| C1-0-21 | (0,4,0;0) | 0 | **OPEN** |

## D. C1-1 — 12 individually numbered cases, one lower point

Each tuple totals three *upper* points in addition to its one lower
point. Every OPEN row further divides into three lower radial wedges
(W_1,W_2,W_3) and upper diagonal-sector subsets. A CLOSED row is
closed for all three wedges and all sector choices.

| Case ID | ((n_L,n_T,n_R;n_I)) | Upper diagonal-sector count | Status | Scope / proof |
|---|---|---:|---|---|
| C1-1-01 | (0,0,1;2) | 2 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-02 | (0,0,2;1) | 1 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-03 | (0,0,3;0) | 0 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-04 | (1,0,1;1) | 1 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-05 | (1,0,2;0) | 0 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-06 | (0,1,0;2) | 2 | **CLOSED** | [one-lower top-cap theorem](C1_ONE_LOWER_TOP_CAP.md) |
| C1-1-07 | (0,1,1;1) | 1 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-08 | (0,1,2;0) | 0 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-09 | (1,1,1;0) | 0 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-10 | (0,2,0;1) | 1 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-11 | (0,2,1;0) | 0 | **OPEN** | Larger-hull case; requires complete continuous exclusion |
| C1-1-12 | (0,3,0;0) | 0 | **OPEN** | Larger-hull case; requires complete continuous exclusion |

## Completeness, next proof obligations and limits

The complete normalization theorem leaves N6 and C1 (zero/one lower)
after the independent N7 and corner-family theorems. In these branches
the cap decomposition is a partition after excluding actual anchor-edge
collinearities. The cap counts are exhaustive. For each remaining
upper quadrilateral point, the four diagonal sectors are exhaustive,
and no sector can hold two such points. For C1-1 the three radial wedges
cover every possible lower point. Thus every competitive configuration
falls in a row of the machine-readable leaves file (unless it has
already been excluded by a global theorem).

This is **not** the full oriented-matroid sign classification:
line signs involving two or more free points are not expanded in the TSV.
Nor does the list establish that a row is nonempty. To close a row,
prove a strict bound uniformly for every permitted coordinate choice,
including every free-point line sign, or prove a new theorem closing the
entire row at once. Do not mark as closed based on a finite point
sampling, bounded-degree subcase, or partial feasible-polygon argument.

**Next closure order:** N6-08 (top support cell II), N6-02-L0
(the sibling of a fully closed row), then uniform N6 side-cap
inequalities, then C1-0 and C1-1 grouped by which caps are occupied.
After all G6 rows are excluded, audit global normalization, equality
and boundary transitions to finish G7.

