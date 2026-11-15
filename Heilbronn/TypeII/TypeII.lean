module

public import Heilbronn.TypeII.TypeII.EndpointTriangle
public import Heilbronn.TypeII.TypeII.Basic
public import Heilbronn.TypeII.TypeII.Normalization
public import Heilbronn.TypeII.TypeII.Chamber
public import Heilbronn.TypeII.TypeII.CentralTriple
public import Heilbronn.TypeII.TypeII.Residual

/-! # Type II: an endpoint-triangle bound and count reduction (`hand/TYPE_II.md`)

Type II is the family of two adjacent occupied corners, `D = (0,1)`, `C = (1,1)`, with a left
contact `E = (0,λ)`, a bottom contact `B = (b,0)`, `0 < b, λ < 1`, and five free points
(`typeIIConfig`, (5)). This note proves a general five-point endpoint-triangle bound (used by many
other notes), a further area-preserving normalization `b ≤ 1/2`, and reduces the family at least
area `A₀` to the count rows `(1,2,3)` and `(2,2,2)`; it also proves the local exclusions used
later by `TYPE_II_BALANCED.md`, `TYPE_II_COMPLETION.md` and the unbalanced notes. Those notes,
with `UNBALANCED_FINAL_LOWER_WEDGE.md` Theorem 2, complete Type II.

The note is split into the modules

* `Heilbronn.TypeII.TypeII.EndpointTriangle` (§1, general form): `endpointTriangleTheorem`,
  `fourPointEndpointLemma`, `claim_support_normalization`, `claim_support_affine`, `eq2`,
  `claim_five_cells`, `claim_five_cells_reflection`, `claim_cell_I_bound`,
  `claim_cell_III_bound`, `claim_cell_IV_bound`, `eq3`, `eq4`;
* `Heilbronn.TypeII.TypeII.Basic`: anchors, containers, counts, quadrilateral sectors,
  `AreaEquiv`, `claim_central_cut`;
* `Heilbronn.TypeII.TypeII.Normalization` (§§2–5): `shearNormalization`, `eq7`,
  `claim_container_assignment`, `eq8`, `claim_count_bounds`, `claim_exclude_213`,
  `claim_scope_four_rows`;
* `Heilbronn.TypeII.TypeII.Chamber` (§§6, 12): `twoPointChamberLemma`, `claim_chamber_general`,
  `claim_PQ_line_table`, `claim_b_le_two_sevenths`;
* `Heilbronn.TypeII.TypeII.CentralTriple` (§§7, 9, 10): `centralTripleTheorem`,
  `claim_exclude_central_three`, `claim_mesh_kstar`, `claim_chamber_extension`,
  `affineCorollary`, `coupledAffineCorollary`, `coupledAffineCorollary_geometric`;
* `Heilbronn.TypeII.TypeII.Residual` (§§8, 11): `claim_two_residual_classes`,
  `unbalancedCutLemma`, `claim_unbalanced_right_cell`,
  `claim_unbalanced_right_cell_threshold`.

Thresholds: §§3–5 and §8 assume least area at least `A₀` (as the manuscript states); §§6, 7, 11,
12 work at doubled threshold `7/64` (area `7/128`); §12's table and §6's general form are stated
at the thresholds and parameter ranges their later uses need.
-/
