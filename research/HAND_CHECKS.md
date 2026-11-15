# Integrated hand-proof diagnostic gate

**Status: PASSED.** 89 passed, 0 failed, 89/89 completed.

This gate covers every current `hand/check_*.py` file. Fresh runs execute each diagnostic in a separate Python process, with at most four processes running concurrently. The diagnostics check the exact identities, rational certificates, finite covers, and case ledgers supplied with the hand proof. The geometric arguments remain in the linked proof manuscripts.

## Reproduce

```bash
python research/run_hand_checks.py --jobs 4 --expected-count 89
```

- [Compact JSON manifest](hand_checks_manifest.json)
- [Complete output from every diagnostic](hand_check_outputs.json)
- [Runner](run_hand_checks.py)

- Started (UTC): `2026-11-15T19:10:15+00:00`
- Finished (UTC): `2026-11-15T19:10:37+00:00`
- Python: `3.12.14`
- SymPy: `1.14.0`
- Git HEAD at start: `9ed7075abeca39b9ed134db3612cffdcb37b99b0`
- Verified proof input fingerprint: `7bb8d5552c996db54cede89ade50076ac87f1bc1618d3c3c513935b2f6d40a8b`

The verified fingerprint covers every Python source and fixed JSON/TSV table in `hand/`. The runner checks that these inputs are unchanged during the run and returns a nonzero exit status if a diagnostic fails, times out, or the input snapshot changes. It records full combined standard output and standard error for each process.

## Extension of the previous receipt

The previous **86-diagnostic** receipt is preserved in the JSON manifest. This extension executed **3 new diagnostics**. Before reusing the earlier results, the runner verified that every previously recorded Python, JSON, and TSV input still matched its exact fingerprint.

- Baseline revision: `2d301d6`
- Unchanged earlier-input fingerprint: `7660346d809d1c8a2fd05f57a6b6f2094baa178b7f30234c1c7222bcca24722c`
- Newly executed diagnostics:
  - `hand/check_sharp_ef_high.py`
  - `hand/check_six_boundary_double_top_completion.py`
  - `hand/check_six_boundary_single_top_completion.py`

## Individual results

| Diagnostic | Result | Seconds |
|---|---|---:|
| [check_balanced_bottom_inner_sector.py](../hand/check_balanced_bottom_inner_sector.py) | PASS (exit 0) | 0.729 |
| [check_balanced_right_mixed.py](../hand/check_balanced_right_mixed.py) | PASS (exit 0) | 0.554 |
| [check_c1_mixed_pentagon.py](../hand/check_c1_mixed_pentagon.py) | PASS (exit 0) | 0.588 |
| [check_c1_one_lower_convex_top.py](../hand/check_c1_one_lower_convex_top.py) | PASS (exit 0) | 5.627 |
| [check_c1_one_lower_eight_hull.py](../hand/check_c1_one_lower_eight_hull.py) | PASS (exit 0) | 0.629 |
| [check_c1_one_lower_mixed_caps.py](../hand/check_c1_one_lower_mixed_caps.py) | PASS (exit 0) | 4.578 |
| [check_c1_one_lower_right_pair.py](../hand/check_c1_one_lower_right_pair.py) | PASS (exit 0) | 0.266 |
| [check_c1_one_lower_right_top_triangle.py](../hand/check_c1_one_lower_right_top_triangle.py) | PASS (exit 0) | 0.635 |
| [check_c1_one_lower_side_cap.py](../hand/check_c1_one_lower_side_cap.py) | PASS (exit 0) | 0.841 |
| [check_c1_one_lower_top_cap.py](../hand/check_c1_one_lower_top_cap.py) | PASS (exit 0) | 5.334 |
| [check_c1_one_lower_top_multiplicity.py](../hand/check_c1_one_lower_top_multiplicity.py) | PASS (exit 0) | 5.721 |
| [check_c1_one_lower_top_triangle.py](../hand/check_c1_one_lower_top_triangle.py) | PASS (exit 0) | 3.904 |
| [check_c1_top_cap_common_cell.py](../hand/check_c1_top_cap_common_cell.py) | PASS (exit 0) | 0.643 |
| [check_c1_top_cap_containment_pair.py](../hand/check_c1_top_cap_containment_pair.py) | PASS (exit 0) | 1.292 |
| [check_c1_top_cap_convex_pair.py](../hand/check_c1_top_cap_convex_pair.py) | PASS (exit 0) | 0.741 |
| [check_c1_top_cap_of_split.py](../hand/check_c1_top_cap_of_split.py) | PASS (exit 0) | 3.428 |
| [check_c1_top_cap_radial_split.py](../hand/check_c1_top_cap_radial_split.py) | PASS (exit 0) | 0.512 |
| [check_c1_top_cap_side_ears.py](../hand/check_c1_top_cap_side_ears.py) | PASS (exit 0) | 0.871 |
| [check_c1_top_cap_triangular_pair.py](../hand/check_c1_top_cap_triangular_pair.py) | PASS (exit 0) | 0.629 |
| [check_c1_two_lower_completion.py](../hand/check_c1_two_lower_completion.py) | PASS (exit 0) | 0.880 |
| [check_c1_two_lower_side_cap.py](../hand/check_c1_two_lower_side_cap.py) | PASS (exit 0) | 0.589 |
| [check_c1_zero_lower.py](../hand/check_c1_zero_lower.py) | PASS (exit 0) | 0.026 |
| [check_c1_zero_lower_certificates.py](../hand/check_c1_zero_lower_certificates.py) | PASS (exit 0) | 5.701 |
| [check_corners.py](../hand/check_corners.py) | PASS (exit 0) | 1.783 |
| [check_eight_boundary.py](../hand/check_eight_boundary.py) | PASS (exit 0) | 0.827 |
| [check_four_corners.py](../hand/check_four_corners.py) | PASS (exit 0) | 0.585 |
| [check_four_interior_quadrilaterals.py](../hand/check_four_interior_quadrilaterals.py) | PASS (exit 0) | 0.600 |
| [check_g6_case_ledger.py](../hand/check_g6_case_ledger.py) | PASS (exit 0) | 0.020 |
| [check_g6_itemized_cases.py](../hand/check_g6_itemized_cases.py) | PASS (exit 0) | 0.047 |
| [check_global_completion.py](../hand/check_global_completion.py) | PASS (exit 0) | 13.215 |
| [check_identities.py](../hand/check_identities.py) | PASS (exit 0) | 0.910 |
| [check_one_corner.py](../hand/check_one_corner.py) | PASS (exit 0) | 0.949 |
| [check_one_corner_completion.py](../hand/check_one_corner_completion.py) | PASS (exit 0) | 0.435 |
| [check_opposite_corners.py](../hand/check_opposite_corners.py) | PASS (exit 0) | 0.631 |
| [check_quadrilateral_hulls.py](../hand/check_quadrilateral_hulls.py) | PASS (exit 0) | 0.373 |
| [check_r6.py](../hand/check_r6.py) | PASS (exit 0) | 0.667 |
| [check_radial.py](../hand/check_radial.py) | PASS (exit 0) | 0.026 |
| [check_seven_boundary_adjacent_caps.py](../hand/check_seven_boundary_adjacent_caps.py) | PASS (exit 0) | 0.413 |
| [check_seven_boundary_adjacent_caps_completion.py](../hand/check_seven_boundary_adjacent_caps_completion.py) | PASS (exit 0) | 0.428 |
| [check_seven_boundary_caps.py](../hand/check_seven_boundary_caps.py) | PASS (exit 0) | 1.249 |
| [check_seven_boundary_exterior_certificates.py](../hand/check_seven_boundary_exterior_certificates.py) | PASS (exit 0) | 1.198 |
| [check_seven_boundary_left_pair.py](../hand/check_seven_boundary_left_pair.py) | PASS (exit 0) | 0.859 |
| [check_seven_boundary_mixed_above.py](../hand/check_seven_boundary_mixed_above.py) | PASS (exit 0) | 0.501 |
| [check_seven_boundary_mixed_above_certificates.py](../hand/check_seven_boundary_mixed_above_certificates.py) | PASS (exit 0) | 1.828 |
| [check_seven_boundary_mixed_lower.py](../hand/check_seven_boundary_mixed_lower.py) | PASS (exit 0) | 1.230 |
| [check_seven_boundary_mixed_pair.py](../hand/check_seven_boundary_mixed_pair.py) | PASS (exit 0) | 2.489 |
| [check_seven_boundary_right_pair.py](../hand/check_seven_boundary_right_pair.py) | PASS (exit 0) | 0.883 |
| [check_seven_boundary_top_cap.py](../hand/check_seven_boundary_top_cap.py) | PASS (exit 0) | 0.558 |
| [check_seven_boundary_top_cap_radial.py](../hand/check_seven_boundary_top_cap_radial.py) | PASS (exit 0) | 0.598 |
| [check_seven_boundary_top_cap_right.py](../hand/check_seven_boundary_top_cap_right.py) | PASS (exit 0) | 0.949 |
| [check_seven_boundary_upper_triangle.py](../hand/check_seven_boundary_upper_triangle.py) | PASS (exit 0) | 1.000 |
| [check_sharp_b_e_moving.py](../hand/check_sharp_b_e_moving.py) | PASS (exit 0) | 0.817 |
| [check_sharp_bc_moving.py](../hand/check_sharp_bc_moving.py) | PASS (exit 0) | 0.766 |
| [check_sharp_bd_moving.py](../hand/check_sharp_bd_moving.py) | PASS (exit 0) | 0.555 |
| [check_sharp_cd_moving.py](../hand/check_sharp_cd_moving.py) | PASS (exit 0) | 0.385 |
| [check_sharp_df_moving.py](../hand/check_sharp_df_moving.py) | PASS (exit 0) | 0.471 |
| [check_sharp_ef_high.py](../hand/check_sharp_ef_high.py) | PASS (exit 0) | 0.965 |
| [check_sharp_ef_moving.py](../hand/check_sharp_ef_moving.py) | PASS (exit 0) | 0.562 |
| [check_sharp_g_moving_projection.py](../hand/check_sharp_g_moving_projection.py) | PASS (exit 0) | 0.910 |
| [check_six_boundary_double_top_completion.py](../hand/check_six_boundary_double_top_completion.py) | PASS (exit 0) | 20.357 |
| [check_six_boundary_exterior.py](../hand/check_six_boundary_exterior.py) | PASS (exit 0) | 0.891 |
| [check_six_boundary_hull.py](../hand/check_six_boundary_hull.py) | PASS (exit 0) | 0.763 |
| [check_six_boundary_opposite_cap.py](../hand/check_six_boundary_opposite_cap.py) | PASS (exit 0) | 0.847 |
| [check_six_boundary_side_opposite.py](../hand/check_six_boundary_side_opposite.py) | PASS (exit 0) | 7.537 |
| [check_six_boundary_side_top_completion.py](../hand/check_six_boundary_side_top_completion.py) | PASS (exit 0) | 6.335 |
| [check_six_boundary_side_top_lower.py](../hand/check_six_boundary_side_top_lower.py) | PASS (exit 0) | 1.526 |
| [check_six_boundary_side_two_top.py](../hand/check_six_boundary_side_two_top.py) | PASS (exit 0) | 0.883 |
| [check_six_boundary_single_side.py](../hand/check_six_boundary_single_side.py) | PASS (exit 0) | 12.768 |
| [check_six_boundary_single_top.py](../hand/check_six_boundary_single_top.py) | PASS (exit 0) | 17.046 |
| [check_six_boundary_single_top_completion.py](../hand/check_six_boundary_single_top_completion.py) | PASS (exit 0) | 22.125 |
| [check_six_boundary_two_side_completion.py](../hand/check_six_boundary_two_side_completion.py) | PASS (exit 0) | 0.599 |
| [check_six_boundary_two_side_projection.py](../hand/check_six_boundary_two_side_projection.py) | PASS (exit 0) | 0.492 |
| [check_six_boundary_two_side_upper.py](../hand/check_six_boundary_two_side_upper.py) | PASS (exit 0) | 6.726 |
| [check_six_boundary_two_top_convex.py](../hand/check_six_boundary_two_top_convex.py) | PASS (exit 0) | 4.328 |
| [check_six_boundary_two_top_triangular.py](../hand/check_six_boundary_two_top_triangular.py) | PASS (exit 0) | 6.209 |
| [check_three_interior_triangles.py](../hand/check_three_interior_triangles.py) | PASS (exit 0) | 0.826 |
| [check_type_ii.py](../hand/check_type_ii.py) | PASS (exit 0) | 0.643 |
| [check_type_ii_balanced.py](../hand/check_type_ii_balanced.py) | PASS (exit 0) | 0.876 |
| [check_type_ii_completion.py](../hand/check_type_ii_completion.py) | PASS (exit 0) | 1.301 |
| [check_unbalanced_cell_i.py](../hand/check_unbalanced_cell_i.py) | PASS (exit 0) | 1.187 |
| [check_unbalanced_cell_iii.py](../hand/check_unbalanced_cell_iii.py) | PASS (exit 0) | 0.997 |
| [check_unbalanced_final_lower_wedge.py](../hand/check_unbalanced_final_lower_wedge.py) | PASS (exit 0) | 0.609 |
| [check_unbalanced_final_negative_line.py](../hand/check_unbalanced_final_negative_line.py) | PASS (exit 0) | 0.775 |
| [check_unbalanced_final_upper_pair.py](../hand/check_unbalanced_final_upper_pair.py) | PASS (exit 0) | 0.592 |
| [check_unbalanced_occupied_lower_ear.py](../hand/check_unbalanced_occupied_lower_ear.py) | PASS (exit 0) | 2.961 |
| [check_unbalanced_one_upper_radial.py](../hand/check_unbalanced_one_upper_radial.py) | PASS (exit 0) | 0.664 |
| [check_unbalanced_radial_split.py](../hand/check_unbalanced_radial_split.py) | PASS (exit 0) | 0.886 |
| [check_unbalanced_right_hull.py](../hand/check_unbalanced_right_hull.py) | PASS (exit 0) | 0.999 |
| [check_unbalanced_upper_cell_ii.py](../hand/check_unbalanced_upper_cell_ii.py) | PASS (exit 0) | 3.041 |
