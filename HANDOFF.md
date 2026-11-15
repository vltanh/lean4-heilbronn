# Research handoff

## Current outcome

The hand proof is complete for **all nine-point configurations with at least
eight boundary points**, including exact equality classification. The full
opposite-corner family C2 and the three-corner family Type III are also
excluded by hand at \(7/128<A_0\).
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
6. [hand/TYPE_II.md](hand/TYPE_II.md): adjacent-corner normalization and its
   two remaining count classes.
7. [ROADMAP.md](ROADMAP.md): precise open completion gates.

The sharp chamber inequality, positive stress, local proof, and 84-triangle
attainment table remain in [hand/HAND_PROOF.md](hand/HAND_PROOF.md).

## Exact remaining obligations

- **N with six or seven boundary points:** six prescribed side contacts,
  three arbitrary points, and projection-overlap inequalities.
- **C1:** one corner, four additional side contacts, four arbitrary points.
- **Type II:** after normalization to \(b\le1/2\), only the two occupancy
  classes \((\ell,c,r)=(1,2,3)\) and \((2,2,2)\) remain. The left count
  includes the prescribed side contact. Type III, the normalization's
  alternative, is already closed.

No theorem yet forces every competitive configuration to have eight boundary
points. Moving a single point within its area-feasible polygon may be trapped
inside the square; do not treat boundary pushing as automatic.

## Checks and trust boundary

All nine hand-proof diagnostics have been run locally: the original identities,
the eight-boundary inequalities, radial catalogue, R6 derivatives,
opposite-corner identities, corner-family identities and exact attainment,
four-corner argument, Type-II identities, and quadrilateral-hull formulas.
The original exact local checker has also passed. The arguments include the
geometric and sign reasoning that those diagnostics alone cannot establish.
No external independent review or Lean verification is claimed.

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
