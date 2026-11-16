module

public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle
public import Heilbronn.Nine.TypeII.TypeII.Basic
public import Heilbronn.Nine.TypeII.TypeII.Normalization
public import Heilbronn.Nine.TypeII.TypeII.Chamber
public import Heilbronn.Nine.TypeII.TypeII.CentralTriple
public import Heilbronn.Nine.TypeII.TypeII.Residual

/-! # Type II: an endpoint-triangle bound and count reduction

Type II is the family of two adjacent occupied corners, `D = (0,1)`, `C = (1,1)`, with a left
contact `E = (0,λ)`, a bottom contact `B = (b,0)`, `0 < b, λ < 1`, and five free points
(`typeIIConfig`). These modules prove a general five-point endpoint-triangle bound (used in many
other places), a further area-preserving normalization `b ≤ 1/2`, and reduce the family at least
area `A₀` to the count rows `(1,2,3)` and `(2,2,2)`; they also prove the local exclusions used
later by `TypeIIBalanced`, `TypeIICompletion` and the unbalanced modules, which, with
`UnbalancedFinalLowerWedge.minTriangleArea_typeIIConfig_lt_A₀`, complete Type II.

The modules are

* `Heilbronn.Nine.TypeII.TypeII.EndpointTriangle` (general form): `TypeII.endpointTriangleTheorem`,
  `TypeII.fourPointEndpointLemma`, `TypeII.exists_isSupportTriangle`,
  `TypeII.exists_affineMap_hsNormal`, `TypeII.hsNormal_area_bounds`, `TypeII.hsNormal_five_cells`,
  `TypeII.inCellI_bound`, `TypeII.inCellIII_bound`, `TypeII.inCellIV_bound`,
  `TypeII.inCellV_bound`, `TypeII.inCellII_bound`;
* `Heilbronn.Nine.TypeII.TypeII.Basic`: anchors, containers, counts, quadrilateral sectors,
  `TypeII.AreaEquiv`, `TypeII.central_inTriangle_iff`;
* `Heilbronn.Nine.TypeII.TypeII.Normalization`: `TypeII.shearNormalization`, `TypeII.seven_div_64_lt_two_mul_A₀`,
  `TypeII.isLeft_or_isCentral_or_isRight`, `TypeII.isLeft_ptE_and_counts_sum_eq_six`, `TypeII.typeIICounts_bounds`,
  `TypeII.typeIICounts_ne_two_one_three`, `TypeII.typeIICounts_four_rows`;
* `Heilbronn.Nine.TypeII.TypeII.Chamber`: `TypeII.twoPointChamberLemma`,
  `TypeII.minTriangleArea_lt_of_chamberG_pos`, `TypeII.pq_line_table`, `TypeII.b_le_two_sevenths`;
* `Heilbronn.Nine.TypeII.TypeII.CentralTriple`: `TypeII.centralTripleTheorem` (and its general form
  `TypeII.centralTriple_gen`), `TypeII.typeIICounts_ne_central_three`, `TypeII.distributed_mesh_bounds`,
  `TypeII.twoPointChamberLemma_of_le_eleven_twentieths`, `TypeII.affineCorollary`, `TypeII.coupledAffineCorollary`,
  `TypeII.coupledAffineCorollary_geometric`;
* `Heilbronn.Nine.TypeII.TypeII.Residual`: `TypeII.exists_areaEquiv_typeIII_or_residual_row`,
  `TypeII.unbalancedCutLemma`.

Thresholds: the shear normalization, the count reduction and the residual classes assume least
area at least `A₀`; the chamber lemma, the central triple and the unbalanced cut work at doubled
threshold `7/64` (area `7/128`); the line table and the general chamber lemma are stated at the
thresholds and parameter ranges their later uses need.
-/
