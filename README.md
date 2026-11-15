# Heilbronn triangle problem — nine points

Research branch for the **unit-square nine-point Heilbronn problem**

\[
H_9=\max_{p_1,\ldots,p_9\in[0,1]^2}
\min_{i<j<k}\operatorname{Area}(p_i,p_j,p_k)
\]

with exact candidate

\[
A_0=\frac{9\sqrt{65}-55}{320}.
\]

## What is available

- **Complete eight-boundary hand theorem:** [hand/EIGHT_BOUNDARY.md](hand/EIGHT_BOUNDARY.md) proves the sharp upper bound and uniqueness for every configuration with at least eight boundary points. The proof includes all boundary multiplicities and all orientation classes; symmetry is a conclusion at equality.
- **Global hand reductions and complete corner theorems:** [hand/GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md) strengthens the normalization to five explicit families with at most twelve parameters. [hand/OPPOSITE_CORNERS.md](hand/OPPOSITE_CORNERS.md) excludes the entire opposite-corner family, and [hand/CORNER_FAMILIES.md](hand/CORNER_FAMILIES.md) excludes all of Type III. [hand/UNBALANCED_FINAL_LOWER_WEDGE.md](hand/UNBALANCED_FINAL_LOWER_WEDGE.md), Theorem 2, now assembles the **complete Type-II exclusion**, covering every count, right-hull type, support cell, and central cut, including the area-equivalent Type-III alternative.
- **Exact attainment and local optimality:** [hand/HAND_PROOF.md](hand/HAND_PROOF.md) supplies the sharp chamber argument used in the eight-boundary theorem, all 84 attaining areas, and unrestricted qualitative strict local optimality.
- **Further global restrictions:** [hand/THREE_INTERIOR_TRIANGLES.md](hand/THREE_INTERIOR_TRIANGLES.md) proves that, in every nine-point configuration of minimum area at least \(A_0\), each actual triangle contains at most two further points. [hand/ONE_CORNER.md](hand/ONE_CORNER.md) closes the complete corner-triangle three-interior branch and several pentagonal C1 classes. [hand/SEVEN_BOUNDARY_CAPS.md](hand/SEVEN_BOUNDARY_CAPS.md) and [hand/TYPE_II_BALANCED.md](hand/TYPE_II_BALANCED.md) give additional continuous placement exclusions.
- **New complete class exclusions:** [hand/GLOBAL_COMPLETION.md](hand/GLOBAL_COMPLETION.md) excludes every nine-point convex-position configuration below \(1/19\) and both lower exterior caps in the seven-boundary form. It also proves the sharp bound and equality throughout the full candidate chamber when F is allowed to move inward from the top side. [hand/FOUR_INTERIOR_QUADRILATERALS.md](hand/FOUR_INTERIOR_QUADRILATERALS.md) forces four interior points to occupy the four diagonal sectors once each. [hand/ONE_CORNER_COMPLETION.md](hand/ONE_CORNER_COMPLETION.md) excludes an entire quadrilateral pair class and restricts the remaining mixed pair. The complete balanced Type-II theorem in [hand/TYPE_II_COMPLETION.md](hand/TYPE_II_COMPLETION.md), Theorem 11, covers both side-hull alternatives, both outer alternating assignments, and all four final inner cells.
- **Exact computational proof draft:** [exact/PROOF.md](exact/PROOF.md) and [exact/STATUS.md](exact/STATUS.md) describe a claimed complete finite global cover over three families, with exact arithmetic checkers and previously recorded PASS runs. The mathematical/code argument is unreviewed and **not Lean-verified**.
- **Further completed branches:** [hand/C1_MIXED_PENTAGON.md](hand/C1_MIXED_PENTAGON.md) closes the entire five-anchor C1 hull, and [hand/C1_TWO_LOWER_SIDE_CAP.md](hand/C1_TWO_LOWER_SIDE_CAP.md) excludes both exterior side caps when two points lie in the lower corner triangle. The unbalanced triangular-right Type-II branch, both outer support cells, the entire two-above-CE cut, and the final one-above-CE cut are now closed by their linked continuous arguments.
- **Seven- and six-boundary progress:** [hand/SEVEN_BOUNDARY_LEFT_PAIR.md](hand/SEVEN_BOUNDARY_LEFT_PAIR.md) and [hand/SEVEN_BOUNDARY_RIGHT_PAIR.md](hand/SEVEN_BOUNDARY_RIGHT_PAIR.md) exclude both free points lying together in either the smaller-left pentagon or the right quadrilateral. [hand/SEVEN_BOUNDARY_MIXED_PAIR.md](hand/SEVEN_BOUNDARY_MIXED_PAIR.md) closes two common pair regions, forces the mixed left point into ACF, and gives capacity one to all four triangles ADE, AHD, AHE, and HDE. [hand/SIX_BOUNDARY_HULL.md](hand/SIX_BOUNDARY_HULL.md) excludes the entire exact six-anchor convex hull, and [hand/SIX_BOUNDARY_EXTERIOR.md](hand/SIX_BOUNDARY_EXTERIOR.md) excludes its whole lower-left exterior cap. The seven-boundary exterior case reduces to one point in the far upper cap; [hand/SEVEN_BOUNDARY_TOP_CAP.md](hand/SEVEN_BOUNDARY_TOP_CAP.md) and [hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md](hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md) exclude all four side quadrilaterals for its companion and force it into the central region.
- **Further moving-vertex and low-contact branches:** [hand/SHARP_BC_MOVING.md](hand/SHARP_BC_MOVING.md) extends the sharp chamber to an inward-moving B with height at most d, or C with height less than a; equality forces the moved vertex back to the boundary. In the two-lower C1 count, [hand/C1_TOP_CAP_CONVEX_PAIR.md](hand/C1_TOP_CAP_CONVEX_PAIR.md) and [hand/C1_TOP_CAP_TRIANGULAR_PAIR.md](hand/C1_TOP_CAP_TRIANGULAR_PAIR.md) exclude the full two-point exterior top cap. [hand/C1_TOP_CAP_SIDE_EARS.md](hand/C1_TOP_CAP_SIDE_EARS.md) excludes its two side ears, and [hand/C1_TOP_CAP_OF_SPLIT.md](hand/C1_TOP_CAP_OF_SPLIT.md) closes the lower-pair split by OF. In the last Type-II branch, [hand/UNBALANCED_ONE_UPPER_RADIAL.md](hand/UNBALANCED_ONE_UPPER_RADIAL.md) forces the radial assignment and [hand/UNBALANCED_OCCUPIED_LOWER_EAR.md](hand/UNBALANCED_OCCUPIED_LOWER_EAR.md) excludes the occupied lower ear.
- **Complete seven-boundary exterior theorem:** [hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md) closes all four R3 radial words of the seven-boundary exterior case, including equality. The last word is excluded by the exact weighted cubic argument in [hand/SHARP_G_MOVING_PROJECTION.md](hand/SHARP_G_MOVING_PROJECTION.md). [hand/SEVEN_BOUNDARY_ADJACENT_CAPS.md](hand/SEVEN_BOUNDARY_ADJACENT_CAPS.md) and [hand/SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md](hand/SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md) exclude all four R1 words. [hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md](hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md) now closes the entire exterior case: all four R1 words and the other 28 words are excluded, leaving only the already classified R3 equality cases. The last 28 exclusions are fixed rational cubic identities with 4,113 positive integer-weighted terms.
- **Complete C1 two-lower occupancy:** [hand/C1_TWO_LOWER_COMPLETION.md](hand/C1_TWO_LOWER_COMPLETION.md) excludes every configuration with two free points in OHC, at every hull size. Only the zero- and one-lower C1 counts remain. [hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md](hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md) excludes every further point from HEF in the seven-boundary normalization.
- **The unrestricted hand proof is still incomplete.** [ROADMAP.md](ROADMAP.md) and [HANDOFF.md](HANDOFF.md) identify the remaining continuous families: N with larger six-boundary hulls or a mixed seven-boundary interior pair, and C1 with zero or one lower point and a larger hull. The eight-boundary theorem does not assert that an unrestricted optimizer has eight boundary points.

## Quick local checks

```sh
python hand/check_identities.py            # SymPy diagnostics; not a global certificate
python hand/check_eight_boundary.py
python hand/check_radial.py
python hand/check_r6.py
python hand/check_opposite_corners.py
python hand/check_corners.py
python hand/check_four_corners.py
python hand/check_type_ii.py
python hand/check_quadrilateral_hulls.py
python hand/check_one_corner.py
python hand/check_seven_boundary_caps.py
python hand/check_three_interior_triangles.py
python hand/check_type_ii_balanced.py
python hand/check_global_completion.py
python hand/check_type_ii_completion.py
python hand/check_one_corner_completion.py
python hand/check_four_interior_quadrilaterals.py
python hand/check_balanced_bottom_inner_sector.py
python hand/check_balanced_right_mixed.py
python hand/check_unbalanced_right_hull.py
python hand/check_unbalanced_radial_split.py
python hand/check_unbalanced_cell_i.py
python hand/check_unbalanced_cell_iii.py
python hand/check_unbalanced_upper_cell_ii.py
python hand/check_c1_mixed_pentagon.py
python hand/check_c1_two_lower_side_cap.py
python hand/check_c1_top_cap_radial_split.py
python hand/check_seven_boundary_left_pair.py
python hand/check_seven_boundary_right_pair.py
python hand/check_seven_boundary_top_cap.py
python hand/check_seven_boundary_top_cap_right.py
python hand/check_seven_boundary_mixed_pair.py
python hand/check_sharp_bc_moving.py
python hand/check_c1_top_cap_convex_pair.py
python hand/check_c1_top_cap_triangular_pair.py
python hand/check_c1_top_cap_side_ears.py
python hand/check_c1_top_cap_of_split.py
python hand/check_unbalanced_one_upper_radial.py
python hand/check_unbalanced_occupied_lower_ear.py
python hand/check_unbalanced_final_negative_line.py
python hand/check_unbalanced_final_upper_pair.py
python hand/check_unbalanced_final_lower_wedge.py
python hand/check_c1_top_cap_common_cell.py
python hand/check_sharp_g_moving_projection.py
python hand/check_seven_boundary_top_cap_radial.py
python hand/check_six_boundary_exterior.py
python hand/check_seven_boundary_adjacent_caps.py
python hand/check_c1_top_cap_containment_pair.py
python hand/check_c1_two_lower_completion.py
python hand/check_seven_boundary_adjacent_caps_completion.py
python hand/check_seven_boundary_upper_triangle.py
python hand/check_seven_boundary_exterior_certificates.py
python hand/check_six_boundary_hull.py
python exact/verify_local.py                # standard-library exact local theorem
cd exact
g++ -O3 -std=c++17 verify_global.cpp -o verify_global
./verify_global corners                    # complete Type II and III
./verify_global type1                      # full Type I; expensive
```

Check all three markers `TYPE3_COMPLETE_PASS`, `TYPE2_COMPLETE_PASS`, `TYPE1_COMPLETE_PASS`. A partial Type-I replay is **not** a global proof. Full requirements and missing archived journal are described in [exact/REPRODUCE.md](exact/REPRODUCE.md).

## Literature

- N. Sudermann-Merx, [*From Global Optimization to Exact Coordinates: Heilbronn's Triangle Problem on the Unit Square Using Mixed-Integer Nonlinear Optimization*](https://arxiv.org/abs/2603.11107), version 3, October 27, 2026 (three-family reduction, exact candidate).
- Comellas and Yebra (2002), the candidate construction.

No existing main-branch Lean proof was modified; this PR records mathematical and computational research first, with formalization as a later review gate.
