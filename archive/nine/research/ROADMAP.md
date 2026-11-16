# Completed proof gates for the unrestricted nine-point theorem

The complete assembly is [hand/UNRESTRICTED.md](../../proof/nine/UNRESTRICTED.md):

\[
H_9=\frac{9\sqrt{65}-55}{320},
\]

with the unique equality configuration up to square symmetry and
relabeling. Every mathematical completion gate below is closed.

## Final dependency map

| Gate | Result | Complete source |
|---|---|---|
| G0 | Exact construction and all 84 triangle areas | [HAND_PROOF.md](../../proof/nine/HAND_PROOF.md), appendix |
| G1 | Exhaustive normalization to N, C1, C2, Type II and Type III | [GLOBAL_STRUCTURE.md](../../proof/nine/GLOBAL_STRUCTURE.md), Theorem 3 |
| G2 | Sharp theorem and uniqueness for every configuration with at least eight boundary points | [EIGHT_BOUNDARY.md](../../proof/nine/EIGHT_BOUNDARY.md), Theorem 13 |
| G3 | Unrestricted strict local maximum at the construction | [HAND_PROOF.md](../../proof/nine/HAND_PROOF.md), Theorem 2 |
| G4a | Complete opposite-corner C2 exclusion | [OPPOSITE_CORNERS.md](../../proof/nine/OPPOSITE_CORNERS.md) |
| G4b | Complete three-corner Type-III exclusion | [CORNER_FAMILIES.md](../../proof/nine/CORNER_FAMILIES.md) |
| G5 | Complete adjacent-corner Type-II exclusion, including its Type-III shear alternative | [UNBALANCED_FINAL_LOWER_WEDGE.md](../../proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md), Theorem 2 |
| G6 | All lower-contact N and C1 configurations | Complete family table below |
| G7 | Unrestricted sharp bound and equality transfer | [UNRESTRICTED.md](../../proof/nine/UNRESTRICTED.md), Theorem 1 |

The equality transfer in Lemma 4 of GLOBAL_STRUCTURE uses G3 to remove
all nontrivial normalizing shears. Thus the upper-bound normalization
also proves uniqueness for the original, unnormalized configuration.

## Complete G6 families

| Family | Complete scope | Main assembly |
|---|---|---|
| N7 | Every interior pair, exterior placement and equality case | [SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](../../proof/nine/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md), Theorem 2 |
| N6, exact anchor hull | All placements of its three interior points | [SIX_BOUNDARY_HULL.md](../../proof/nine/SIX_BOUNDARY_HULL.md), Theorem 7 |
| N6, larger hull | All eight cap occupancies, including every lower/upper alternative and both two-top hulls | [UNRESTRICTED.md](../../proof/nine/UNRESTRICTED.md), Section 4 |
| C1, zero lower | Every cap occupancy and hull | [C1_ZERO_LOWER.md](../../proof/nine/C1_ZERO_LOWER.md), Theorem 4 |
| C1, one lower | Every cap occupancy, hull and pair-line sign | [C1_ONE_LOWER_MIXED_CAPS.md](../../proof/nine/C1_ONE_LOWER_MIXED_CAPS.md), Theorem 2 |
| C1, two lower | Every cap occupancy, hull and pair-line sign | [C1_TWO_LOWER_COMPLETION.md](../../proof/nine/C1_TWO_LOWER_COMPLETION.md), Theorem 2 |
| C1, three or more lower | Complete corner-triangle exclusion | [ONE_CORNER.md](../../proof/nine/ONE_CORNER.md), Sections 1–4 |

The final N6 row is assembled separately in
[SIX_BOUNDARY_TWO_TOP_COMPLETION.md](../../proof/nine/SIX_BOUNDARY_TWO_TOP_COMPLETION.md).
Its triangular hull has a strict bound below \(4/73\); its convex hull
uses exact cubic exclusions followed by the continuous sharp E/F theorem.

The [parent register](../../proof/nine/G6_ITEMIZED_CASES.md) has **62 closed rows**.
The [leaf register](../../proof/nine/G6_ITEMIZED_LEAVES.tsv) has **221 closed leaves**.
There are no open rows. Their stable IDs retain the original unpruned
occupancy/sector/sign census, including types that are geometrically empty.
The census itself is not an inequality proof; each row links its theorem.

## Exact finite packages and geometric premises

Each certificate package has a manuscript deriving the nonnegative affine
factors, signed actual-triangle costs and containment thresholds. Its fixed
coefficient file gives positive rational sums and exact negative bounds
on the unit cube. Its verifier reconstructs the full sign cover, every
expansion and every certificate-reuse implication.

Separate symbolic implementations checked the complete final N6 and C1
packages. Independent geometric reviews checked the hypotheses, sign
orientations, strengthened area costs and sharp-chamber maps. The final
assembly checks actual-line boundaries, scalar-cut equality, square-side
contacts, occupied corners and equality transfer explicitly.

The upstream dependency order is preserved. The original corner and
triangular-hull theorems precede the unrestricted actual-triangle capacity
bound. The stronger theorem for a containing triangle with two actual
vertices is downstream of that capacity result; it is not used to replace
an upstream C2 ingredient. The final C1 and N6 assemblies use these
already proved structural results without circularity.

The convex-nonagon theorem uses the classical planar affine isoperimetric
inequality. Its exact statement and primary reference appear in
[GLOBAL_COMPLETION.md](../../proof/nine/GLOBAL_COMPLETION.md). All other specialized
geometric lemmas used by this assembly are proved in `hand/`.

## Reproduction and formal status

Run the linked `hand/check_*.py` files to reproduce exact identities and
fixed certificate checks. The independent `research/audit_*.py` programs
use separate symbolic reconstruction. Optimizer-based discovery scripts
are optional and are not proof premises.

The completed result is a mathematical proof with exact certificates,
not a Lean formalization. External peer review is not claimed. The
older executable route in `exact/` remains separately documented; its
full Type-I computation was not rerun for this completion. The new
proof uses neither that global run nor an unspecified local radius
as a stopping rule for an old coordinate cover.
