module

public import Heilbronn.Nine.TypeII.TypeIICompletion.Capacity
public import Heilbronn.Nine.TypeII.TypeIICompletion.Balanced
public import Heilbronn.Nine.TypeII.TypeIICompletion.ParameterBound
public import Heilbronn.Nine.TypeII.TypeIICompletion.Sectors
public import Heilbronn.Nine.TypeII.TypeIICompletion.Assembly
public import Heilbronn.Nine.TypeII.TypeIICompletion.Unbalanced

/-! # Type-II completion: capacity and the complete balanced-row exclusion

These modules (namespace `Heilbronn.Nine.TypeIICompletion`) strengthen global triangle capacity
to containers with an arbitrary third vertex (`TypeIICompletion.card_mem_triangle_le_three`, also used in the C1
case), give the interval formulation of Type II (`TypeIICompletion.card_mem_intervalI_le_three`) and the
enclosing-parallelogram consequence (`TypeIICompletion.not_opposite_corners`), exclude the entire balanced
count row `(2,2,2)` (`TypeIICompletion.minTriangleArea_lt_A₀_of_balanced_counts`, with `TypeIIBalanced`, `BalancedRightMixed`
and `BalancedBottomInnerSector`), and exclude the triangular-right branch of the unbalanced row
`(1,2,3)` (`TypeIICompletion.minTriangleArea_lt_A₀_of_triangular_right`). The remaining nontriangular branch is treated in the
`Unbalanced` modules.

`TypeIICompletion.minTriangleArea_lt_A₀_of_balanced_counts` and `TypeIICompletion.minTriangleArea_lt_A₀_of_triangular_right` are used by the final assembly in
`UnbalancedFinalLowerWedge`; `TypeIICompletion.minTriangleArea_lt_of_two_in_cellII` by `UnbalancedRadialSplit.atMostOne_inDBRandDER`;
`TypeIICompletion.q_z_bounds_of_six_points`, at a general threshold, by `Heilbronn.Nine.C1.TopCapOfSplit`.

Modules:

* `Capacity`: `TypeIICompletion.card_mem_triangle_le_three`, `TypeIICompletion.intervalI`,
  `TypeIICompletion.mem_convexHull_DC_iff_mem_intervalI`, `TypeIICompletion.card_mem_intervalI_le_three`, `TypeIICompletion.exists_disjoint_intervalI_of_four`,
  `TypeIICompletion.not_opposite_corners`, `TypeIICompletion.not_all_mem_parallelogram`;
* `Balanced`: `TypeIICompletion.FinalPlacement`, `TypeIICompletion.Q_snd_lt_fst`,
  `TypeIICompletion.QS_outside_EBR_inside_ECR`, `TypeIICompletion.quad_DERC_sectors`, `TypeIICompletion.triangularHull_BCRS`;
* `ParameterBound`: `TypeIICompletion.Zroot`, `TypeIICompletion.sarea_LP_identities`,
  `TypeIICompletion.LP_line_signs`, `TypeIICompletion.z_bounds_of_LP_isolates_D` (the steps used by `TypeIICompletion.q_z_bounds_of_six_points`),
  `TypeIICompletion.q_z_bounds_of_six_points` (general threshold), `TypeIICompletion.q_lower_bounds_of_b_le`;
* `Sectors`: `TypeIICompletion.secondShear`, `TypeIICompletion.secondShear_spec`,
  `TypeIICompletion.minTriangleArea_lt_A₀_of_S_at_ER`, `TypeIICompletion.inTriangle_DES_CLR`,
  `TypeIICompletion.minTriangleArea_lt_of_Q_above_ES_LR`, `TypeIICompletion.one_sided_bounds`, `TypeIICompletion.minTriangleArea_lt_of_Q_above_ES_below_LR`;
* `Assembly`: `TypeIICompletion.minTriangleArea_lt_A₀_of_balanced_counts`;
* `Unbalanced`: `TypeIICompletion.UnbalancedTriRight`, `TypeIICompletion.unbalancedTriRight_structure`,
  `TypeIICompletion.minTriangleArea_lt_of_two_in_cellII`, `TypeIICompletion.supportMap`,
  `TypeIICompletion.supportMap_spec`, `TypeIICompletion.supportMap_scale_bounds`, `TypeIICompletion.minTriangleArea_lt_A₀_of_triangular_right`.

Thresholds: `TypeIICompletion.card_mem_triangle_le_three`, `TypeIICompletion.card_mem_intervalI_le_three`,
`TypeIICompletion.not_opposite_corners`, `TypeIICompletion.quad_DERC_sectors`, `TypeIICompletion.triangularHull_BCRS`,
`TypeIICompletion.minTriangleArea_lt_A₀_of_balanced_counts`, `TypeIICompletion.unbalancedTriRight_structure` and `TypeIICompletion.minTriangleArea_lt_A₀_of_triangular_right`
assume least area at least `A₀`; `TypeIICompletion.QS_outside_EBR_inside_ECR`, `TypeIICompletion.minTriangleArea_lt_of_Q_above_ES_LR` and
`TypeIICompletion.minTriangleArea_lt_of_Q_above_ES_below_LR` hold at doubled threshold `7/64` given their placements;
`TypeIICompletion.minTriangleArea_lt_A₀_of_S_at_ER` is stated at `A₀` (its proof uses
`TypeIIBalanced.not_both_central_in_DEC` at `79/720` and the Type-III exclusion);
`TypeIICompletion.q_z_bounds_of_six_points` holds at a general threshold.
-/
