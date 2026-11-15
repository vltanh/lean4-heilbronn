# Research handoff

## Current outcome

The hand proof is complete for **all nine-point configurations with at least
eight boundary points**, including exact equality classification. The full
opposite-corner family C2 and the three-corner family Type III are also
excluded by hand at \(7/128<A_0\).
Every nine-point convex-position configuration is now excluded below
\(1/19\). The **entire balanced Type-II count row \((2,2,2)\)** is
also excluded. Only the unbalanced Type-II count \((1,2,3)\) remains.
Its entire triangular-right branch is now excluded as well. The C1
case whose hull is exactly its five prescribed anchors is completely
excluded; only larger C1 hulls remain. Both unbalanced right support
cells I and III are now excluded in every CE cut. The entire two-above-CE
cut is also excluded, including its last support cell II.
With seven boundary contacts, the complete smaller-left pair and
right-quadrilateral pair classes are excluded. The exact six-anchor
N convex hull is completely excluded. In the exterior seven-boundary
case only one point in the far upper cap remains; the other point avoids
the upper, lower, and left side quadrilaterals.
The full sharp chamber with F moved inward from its top side is closed,
and equality forces the original configuration.
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
7. [hand/TYPE_II_COMPLETION.md](hand/TYPE_II_COMPLETION.md), Theorem 11:
   complete balanced-row exclusion, leaving only \((1,2,3)\).
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
excludes three side quadrilaterals for the remaining interior point.

The sharp chamber inequality, positive stress, local proof, and 84-triangle
attainment table remain in [hand/HAND_PROOF.md](hand/HAND_PROOF.md).

## Exact remaining obligations

- **N with six or seven boundary points:** six prescribed side contacts,
  three arbitrary points, and projection-overlap inequalities. The exact
  six-anchor convex hull is completely excluded; larger six-boundary
  hulls remain. With seven boundary contacts only mixed left/right
  interior placements and one point in the far upper exterior cap remain.
  In the latter case, the other point is inside the original heptagon,
  below HE, above AD, and outside FHAB. The full inward-moving sharp
  chamber is closed, but its other orientations still need completion.
- **C1:** only configurations whose hull extends beyond the five prescribed
  anchors remain. Every exact five-anchor pentagon placement is closed.
  With two lower points, both exterior side caps are excluded; the top
  cap and configurations with zero or one lower point remain. In the
  two-lower case, the lower points straddle every ray OX to a top-cap point.
- **Type II:** after normalization to \(b\le1/2\), only the occupancy
  class \((\ell,c,r)=(1,2,3)\) remains. The left count consists of the
  prescribed side contact. Type III, the normalization's alternative,
  and the entire balanced Type-II row are closed. The sole residual
  case is a quadrilateral right hull in support cell II with exactly
  one central point above CE. A pentagonal right hull, both outer
  support cells, and the entire two-above-CE cut are excluded.

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
bounds for the two-above support cell II.
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
