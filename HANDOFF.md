# Research handoff

## Current outcome

The hand proof is complete for **all nine-point configurations with at least
eight boundary points**, including exact equality classification. The full
opposite-corner family C2 and the three-corner family Type III are also
excluded by hand at \(7/128<A_0\).
Every nine-point convex-position configuration is excluded below
\(1/19\). The **entire Type-II family is now excluded**: the final
lower wedge closes its last count/hull/cut/cell combination, and the
assembly explicitly includes the area-equivalent Type-III alternative.
The C1 case whose hull is exactly its five prescribed anchors is
completely excluded; only larger C1 hulls remain.
With seven boundary contacts, the complete smaller-left pair and
right-quadrilateral pair classes are excluded. The exact six-anchor
N convex hull is completely excluded. The entire seven-boundary exterior
case is now complete: all 36 radial words are covered, and equality
forces the eighth boundary contact and the original configuration.
Both mixed interior branches are now excluded as well, completing the
entire normalized seven-boundary theorem and its equality classification.
The entire C1 zero-lower and two-lower occupancies are excluded, including
all larger hulls. The one-lower branch has all single-exterior-point,
side-cap-pair and eight-vertex-hull placements closed. Five complete N6
occupancies are also closed: single side, both sides, one point in each
cap, side plus two top, and all three top. Their proof links and exact
remaining cases are listed below.
The unrestricted nine-point theorem is **not yet proved by hand**.

Target:

\[
H_9=\frac{9\sqrt{65}-55}{320}=:A_0.
\]

## Read in this order

1. [hand/README.md](hand/README.md): current theorem index and exact scope.
2. [hand/EIGHT_BOUNDARY.md](hand/EIGHT_BOUNDARY.md): completed eight-boundary
   theorem; its final table names the proof for every orientation class.
3. [hand/GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md): exhaustive stronger
   normalization to N, C1, C2, Type II, Type III, and equality transfer.
4. [hand/OPPOSITE_CORNERS.md](hand/OPPOSITE_CORNERS.md): complete C2 exclusion.
5. [hand/CORNER_FAMILIES.md](hand/CORNER_FAMILIES.md): complete Type-III
   proof, quantitative triangular-hull theorems, and lower-point packing.
6. [hand/TYPE_II.md](hand/TYPE_II.md): adjacent-corner normalization and
   initial reduction to two count classes.
7. [hand/UNBALANCED_FINAL_LOWER_WEDGE.md](hand/UNBALANCED_FINAL_LOWER_WEDGE.md),
   Theorem 2: complete Type-II assembly, with links to every count and cell.
8. [ROADMAP.md](ROADMAP.md): precise open completion gates.

The later structural notes are
[hand/THREE_INTERIOR_TRIANGLES.md](hand/THREE_INTERIOR_TRIANGLES.md),
[hand/ONE_CORNER.md](hand/ONE_CORNER.md),
[hand/SEVEN_BOUNDARY_CAPS.md](hand/SEVEN_BOUNDARY_CAPS.md), and
[hand/TYPE_II_BALANCED.md](hand/TYPE_II_BALANCED.md).
They prove unrestricted triangle capacity two, several complete
pentagonal and seven-boundary exclusions, and the balanced Type-II
left-hull and CE-cut restrictions.

The latest results are in
[hand/GLOBAL_COMPLETION.md](hand/GLOBAL_COMPLETION.md) (convex-position
and lower exterior-cap exclusions, and the full inward-moving sharp chamber),
[hand/TYPE_II_COMPLETION.md](hand/TYPE_II_COMPLETION.md) (two-actual-vertex
triangle capacity, swept interval tests, and the complete balanced-row
exclusion),
[hand/ONE_CORNER_COMPLETION.md](hand/ONE_CORNER_COMPLETION.md) (the full
common-sector pair exclusion and the mixed-pair line restriction), and
[hand/FOUR_INTERIOR_QUADRILATERALS.md](hand/FOUR_INTERIOR_QUADRILATERALS.md)
(one point in each diagonal sector whenever an actual quadrilateral
contains four further points). Competitive configurations have five to
eight hull vertices; this is not a square-boundary count.
The final two balanced cells have separate short notes:
[hand/BALANCED_BOTTOM_INNER_SECTOR.md](hand/BALANCED_BOTTOM_INNER_SECTOR.md)
uses a five-area cancellation and weighted-mean identity, and
[hand/BALANCED_RIGHT_MIXED.md](hand/BALANCED_RIGHT_MIXED.md) proves a
uniform height bound and a strict rational area gap.
For unbalanced Type II, Theorem 14 of `hand/TYPE_II_COMPLETION.md`
excludes the entire triangular-right branch using the stronger
six-point cell-II inequality of Theorem 13.
[hand/UNBALANCED_RIGHT_HULL.md](hand/UNBALANCED_RIGHT_HULL.md)
excludes a pentagonal right hull and, in the two-above CE cut,
both outer support cells of the quadrilateral right hull and both
isolated-endpoint orientations of the central pair.
[hand/C1_MIXED_PENTAGON.md](hand/C1_MIXED_PENTAGON.md) completes
both mixed-pair alternatives and therefore the whole five-anchor C1
pentagon. Sections 6--7 of `hand/SEVEN_BOUNDARY_CAPS.md` give the
strict doubled-area bound \([ACF]<13/16\), exclude the whole upper
left overlap \(AHF\cap HCF\), and close the BC/FH left-pair assignment.
The full smaller-left pair is closed in
[hand/SEVEN_BOUNDARY_LEFT_PAIR.md](hand/SEVEN_BOUNDARY_LEFT_PAIR.md).
Sections 8--9 of the cap note exclude CDE and bound CDF/DEF; the
complete right pair is then closed by
[hand/SEVEN_BOUNDARY_RIGHT_PAIR.md](hand/SEVEN_BOUNDARY_RIGHT_PAIR.md).
Its final rational function has Hessian at most \(-I/32\) on the
printed rectangle, and its explicit Taylor bound is
\(-331/8250000<0\).
[hand/SIX_BOUNDARY_HULL.md](hand/SIX_BOUNDARY_HULL.md) excludes every
placement in the exact six-anchor hull. Its last case uses the actual
right point to strengthen the lower-point area inequality, followed by
three explicit scalar intervals.
[hand/C1_TWO_LOWER_SIDE_CAP.md](hand/C1_TWO_LOWER_SIDE_CAP.md)
excludes both C1 exterior side caps in the two-lower-point count.
[hand/UNBALANCED_CELL_I.md](hand/UNBALANCED_CELL_I.md) and
[hand/UNBALANCED_CELL_III.md](hand/UNBALANCED_CELL_III.md) exclude the
complete outer support cells. The radial restrictions in
[hand/UNBALANCED_RADIAL_SPLIT.md](hand/UNBALANCED_RADIAL_SPLIT.md) are
completed by [hand/UNBALANCED_UPPER_CELL_II.md](hand/UNBALANCED_UPPER_CELL_II.md),
which closes the entire two-above-CE cut using an exact stress and 960
strictly negative rational Bernstein coefficients.
[hand/C1_TOP_CAP_RADIAL_SPLIT.md](hand/C1_TOP_CAP_RADIAL_SPLIT.md)
puts the two lower C1 points on opposite sides of every ray OX to an
exterior top point. Sections 10--11 of the seven-boundary cap note
exclude the nearer upper cap and give capacity one to the farther cap.
[hand/SEVEN_BOUNDARY_TOP_CAP.md](hand/SEVEN_BOUNDARY_TOP_CAP.md)
and [hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md](hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md)
exclude all four side quadrilaterals for the remaining interior point.
[hand/SEVEN_BOUNDARY_MIXED_PAIR.md](hand/SEVEN_BOUNDARY_MIXED_PAIR.md)
excludes the complete HBE/BEF and ACE/ADE common pair cells, forces
the mixed left point into ACF, and excludes pairs in ADE, AHD, AHE, and HDE.
[hand/SHARP_BC_MOVING.md](hand/SHARP_BC_MOVING.md) proves the sharp
bound for B moving upward by at most d or C moving upward by less than a.
Its common exact weight forces the displacement to vanish at equality.
[hand/C1_TOP_CAP_CONVEX_PAIR.md](hand/C1_TOP_CAP_CONVEX_PAIR.md) and
[hand/C1_TOP_CAP_TRIANGULAR_PAIR.md](hand/C1_TOP_CAP_TRIANGULAR_PAIR.md)
close the entire two-point top-cap placement in the two-lower count.
[hand/C1_TOP_CAP_SIDE_EARS.md](hand/C1_TOP_CAP_SIDE_EARS.md) removes
both side ears, and [hand/C1_TOP_CAP_OF_SPLIT.md](hand/C1_TOP_CAP_OF_SPLIT.md)
closes the lower-pair split by OF using three fixed coefficient boxes.
[hand/UNBALANCED_ONE_UPPER_RADIAL.md](hand/UNBALANCED_ONE_UPPER_RADIAL.md)
puts P,T above DR and Q below it. The occupied lower ear is excluded in
[hand/UNBALANCED_OCCUPIED_LOWER_EAR.md](hand/UNBALANCED_OCCUPIED_LOWER_EAR.md),
forcing Q above ER. [hand/UNBALANCED_FINAL_NEGATIVE_LINE.md](hand/UNBALANCED_FINAL_NEGATIVE_LINE.md)
then excludes the entire negative QT-E sign by two quadratic discriminants.
[hand/UNBALANCED_FINAL_UPPER_PAIR.md](hand/UNBALANCED_FINAL_UPPER_PAIR.md)
excludes Q above ES; [hand/UNBALANCED_FINAL_LOWER_WEDGE.md](hand/UNBALANCED_FINAL_LOWER_WEDGE.md)
excludes the last lower placement and assembles the complete Type-II
theorem. Its final weighted quadratic reduces to two negative quartics.
[hand/SHARP_G_MOVING_PROJECTION.md](hand/SHARP_G_MOVING_PROJECTION.md)
supplies the last sharp exterior orientation, and
[hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md)
assembles all four R3 words with explicit coordinate maps and equality.
[hand/C1_TOP_CAP_COMMON_CELL.md](hand/C1_TOP_CAP_COMMON_CELL.md)
closes both isolated-endpoint pair-line cases in the remaining C1 cell.

The sharp chamber inequality, positive stress, local proof, and 84-triangle
attainment table remain in [hand/HAND_PROOF.md](hand/HAND_PROOF.md).

## Fine G6 case catalogue

For an itemized, individually numbered list with open/closed flags, see
[hand/G6_ITEMIZED_CASES.md](hand/G6_ITEMIZED_CASES.md): 62 parent
rows, 10 open and 52 closed. The 221 explicit
[sector/wedge/sign leaf cases](hand/G6_ITEMIZED_LEAVES.tsv) have 61
open leaves and 160 closed by the parent theorems; their census is
checked by [hand/check_g6_itemized_cases.py](hand/check_g6_itemized_cases.py).
These are occupancy/sign partitions, not separately feasible witnesses.

[hand/G6_FINITE_CASE_LEDGER.md](hand/G6_FINITE_CASE_LEDGER.md) records
stable case IDs: N6 has 8 coarse cap-occupancy orbits (13 lower/upper
refinements), and C1 zero/one-lower has 21 and 12 unpruned cap orbits.
The former N7 four-sign cover is retained and marked complete.
[hand/check_g6_case_ledger.py](hand/check_g6_case_ledger.py) checks
the combinatorial census. These counts do not certify feasibility
or continuous exclusion. Each closed row now links its complete theorem;
all zero-lower C1 rows and five of the eight coarse N6 occupancies are closed.

## Exact remaining obligations

- **N with six boundary contacts:** only three cap occupancies remain:
  one opposite-cap point with two anchor-interior points (N6-03), one
  side-cap point with one opposite-cap point and one upper anchor-interior
  point (N6-04-L0), and two opposite-cap points with one anchor-interior
  point (N6-06). N6-03 and N6-06 retain both lower/upper alternatives;
  the full lower mixed-cap row N6-04-L1 is closed by
  [SIX_BOUNDARY_SIDE_TOP_LOWER.md](hand/SIX_BOUNDARY_SIDE_TOP_LOWER.md).
- **C1:** only the one-lower rows C1-1-04, 07, 10, 11 and 12 remain.
  They comprise two different occupied caps with one upper interior
  point, two opposite-cap points with one upper interior point, and
  the remaining three-exterior-point placements. All zero-lower and
  two-lower configurations, all single-exterior-point hexagons,
  every side-cap pair, and all eight-vertex hulls are closed.

The normalized seven-boundary form is completely closed by Theorem 2 of
[SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md),
using the complete lower mixed theorem in
[SEVEN_BOUNDARY_MIXED_LOWER.md](hand/SEVEN_BOUNDARY_MIXED_LOWER.md).

Type II, Type III, and C2 are completely closed. The unrestricted
completion obligation now consists only of the N and C1 families above.

No theorem yet forces every competitive configuration to have eight boundary
points. Moving a single point within its area-feasible polygon may be trapped
inside the square; do not treat boundary pushing as automatic.

## Checks and trust boundary

The twenty original hand-proof diagnostics have been run locally: the original identities,
the eight-boundary inequalities, radial catalogue, R6 derivatives,
opposite-corner identities, corner-family identities and exact attainment,
four-corner argument, Type-II identities, quadrilateral-hull formulas,
one-corner inequalities, seven-boundary cap bounds, the global triangle-capacity
argument, balanced Type-II exclusions, the new global hull and cap bounds,
the two-vertex capacity and right-hull arguments, both quadrilateral-pair
exclusions, the alternating-sector theorem, the second-shear exclusion,
the four exhaustive final balanced cells, the inward-moving chamber's
determinant and scalar identities and all 918 rational coefficient bounds,
the unbalanced triangular-right reduction, and both
unbalanced outer-support-cell exclusions. The updated diagnostics and
the new C1 mixed-pentagon diagnostic also pass for the complete
triangular-right exclusion, both isolated central-line exclusions,
the full C1 pentagon theorem, and the seven-boundary diagonal and
upper-left overlap bounds.
All new diagnostics also pass for the full seven-boundary left and right
pairs, the complete exact six-anchor hull, the C1 two-lower side caps
and top-cap radial split, all four seven-boundary exterior-cap
restrictions, the three top-cap side quadrilaterals, the unbalanced
radial split, complete support cells I/III, and all 960 coefficient
bounds for the two-above support cell II. Subsequent diagnostics also
pass for the fourth top-cap side quadrilateral, all new mixed-pair
reductions, the sharp B/C-moving chambers, the full C1 two-cap and
side-ear exclusions, the three-box OF-split proof, the one-above
radial split, all 1540 occupied-lower-ear coefficient bounds, and
the complete negative QT-E line-sign exclusion.
The final upper-pair and lower-wedge diagnostics also pass, completing
Type II, as do the C1 isolated-C/O calculations and all ten printed
univariate coefficients. The sharp exterior R3 assembly and all four
coordinate maps have been checked independently; the G-moving proof's
signed areas, positive weight, displacement bound, and cubic pass exactly.
The full C1 two-lower assembly, the upper-triangle HEF exclusion, and
all four exterior R1 words also pass their exact diagnostics and separate
audits. The remaining 28 exterior words have fixed rational cubic
certificates with 4,113 positive terms; their complete coefficient data
and a standard-library exact verifier accompany the proof.
The two mixed branches now have 40 and 55 fixed cubic certificates,
with 4,981 and 6,125 positive terms. Separate SymPy implementations
independently reconstructed their word covers and exact expansions.
The one-lower top-cap hexagon has 98 certificates with 9,677 terms,
also independently expanded with its complete 205-cell cover checked.
The full seven-boundary assembly and the complete two-side-cap lower-point
projection received separate geometric and equality audits.
The new continuous proofs received a separate agent audit of their
geometric signs and inequality directions; the right-pair curvature
certificate was checked independently as well.
The original exact local checker has also passed. The arguments include the
geometric and sign reasoning that those diagnostics alone cannot establish.
No external independent review or Lean verification is claimed.

The convex-position bound uses the classical affine isoperimetric
inequality, with its precise normalization and a primary proof reference
stated in `hand/GLOBAL_COMPLETION.md`. The stronger two-vertex capacity
theorem depends on the earlier unrestricted actual-triangle capacity
theorem; do not use it to replace that theorem's upstream C2 ingredient,
which would create a circular proof.

The separate [exact/PROOF.md](exact/PROOF.md) records an unreviewed
computer-assisted proof draft. Its full 330,988-pattern Type-I computation
was run earlier and **has not been rerun for the present hand-proof work**.
Earlier corner-cover receipts and the original checker are retained; these
are not replacements for the open hand obligations.

## Archived computational artifact

The original compressed secondary per-pattern journal was in the earlier
conversation's ZIP archive. The source tree contains the checker and compact
completed receipts, but not that compressed journal. It can be recreated
using [exact/REPRODUCE.md](exact/REPRODUCE.md). Historical SHA256SUMS refers
to the original archive, not the rearranged repository tree.

Keep the PR in draft until the remaining global hand obligations and final
audit are complete. Do not describe the result as a complete unrestricted
hand proof merely because the eight-boundary theorem is finished.
