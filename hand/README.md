# Nine-point Heilbronn: hand proofs and the remaining global gap

The **complete eight-boundary theorem** is proved in
[EIGHT_BOUNDARY.md](EIGHT_BOUNDARY.md): every nine-point configuration in
the unit square with at least eight boundary points has minimum triangle
area at most

\[
A_0=\frac{9\sqrt{65}-55}{320},
\]

with equality only at the stated construction, up to square symmetry and
relabeling. No symmetry or orientation chamber is assumed in that theorem.

**The unrestricted hand proof remains incomplete.** The global normalization
does not yet force eight boundary points, and the remaining continuous
families are listed below. The older computational draft is separate.

For the finer case classification and stable case IDs, see
[G6_FINITE_CASE_LEDGER.md](G6_FINITE_CASE_LEDGER.md). Its unpruned
occupancy/sign census (8 N6, up to 16 N7, and 21+12 C1 coarse
classes) is a planning ledger. Its status entries distinguish the
now-complete N7 cover and the other completed subrows from open cases.

## Proven results

| Result | Written proof |
|---|---|
| Exact construction and all 84 triangle areas | [HAND_PROOF.md](HAND_PROOF.md), appendix |
| Sharp eleven-triangle inequality for the asymmetric candidate chamber | `HAND_PROOF.md`, Part I |
| Unrestricted strict local maximum against all eighteen coordinate perturbations | `HAND_PROOF.md`, Part II |
| All eight-boundary incidence and orientation cases; equality classification | [EIGHT_BOUNDARY.md](EIGHT_BOUNDARY.md), Theorem 13 |
| Finite derivation of all 36 radial words and their eight square-symmetry classes | [RADIAL_CATALOGUE.md](RADIAL_CATALOGUE.md) |
| Complete continuous exclusion of radial class R6 | [R6_BOUND.md](R6_BOUND.md) |
| Exhaustive normalization to N, C1, C2, Type II, Type III; at most twelve parameters | [GLOBAL_STRUCTURE.md](GLOBAL_STRUCTURE.md) |
| Complete exclusion of C2 at \(7/128<A_0\) | [OPPOSITE_CORNERS.md](OPPOSITE_CORNERS.md) |
| Seven-point triangular-hull bound and global triangle-occupancy restriction | [CORNER_FAMILIES.md](CORNER_FAMILIES.md), Sections 1–4 |
| Six-point nontriangular-hull support-triangle bound | `CORNER_FAMILIES.md`, Section 6 |
| Sharp six-point triangular-hull bound \(S\ge(11+3\sqrt5)t/2\) | `CORNER_FAMILIES.md`, Section 8 |
| Complete Type-III exclusion at \(7/128<A_0\), including every diagonal count | `CORNER_FAMILIES.md`, Sections 3–12 |
| Four-corner theorem at \(1/19\), with a controlled projective transfer | [FOUR_CORNERS.md](FOUR_CORNERS.md) and `CORNER_FAMILIES.md`, Section 9 |
| Type II reduced to two count classes; every central-triple orientation excluded | [TYPE_II.md](TYPE_II.md) |
| Sharp six-point quadrilateral-hull bound and N/C1 occupancy restrictions | [QUADRILATERAL_HULL.md](QUADRILATERAL_HULL.md) |
| Unrestricted triangle capacity two at minimum area at least \(A_0\) | [THREE_INTERIOR_TRIANGLES.md](THREE_INTERIOR_TRIANGLES.md) |
| Complete corner-triangle three-point exclusion, C1 triangle capacity two, and further pentagonal exclusions | [ONE_CORNER.md](ONE_CORNER.md) |
| Continuous seven-boundary cap and pair exclusions | [SEVEN_BOUNDARY_CAPS.md](SEVEN_BOUNDARY_CAPS.md) |
| Balanced Type II has a triangular left hull and exactly one central point on each side of CE | [TYPE_II_BALANCED.md](TYPE_II_BALANCED.md) |
| Every nine-point convex-position configuration has minimum area below \(1/19\) | [GLOBAL_COMPLETION.md](GLOBAL_COMPLETION.md), Sections 1–3 |
| Both lower exterior corner caps are empty in the seven-boundary form | `GLOBAL_COMPLETION.md`, Section 4 |
| Full sharp candidate chamber with F allowed to move inward from the top side; equality forces F back to the boundary and gives the original candidate | `GLOBAL_COMPLETION.md`, Section 5 |
| A triangle of area at most \(1/2\) with two actual vertices contains at most five actual points; its third vertex may be anywhere in the plane | [TYPE_II_COMPLETION.md](TYPE_II_COMPLETION.md), Theorem 1 |
| Opposite vertices of an enclosing parallelogram of area at most one cannot both be actual points | `TYPE_II_COMPLETION.md`, Corollary 3 |
| Every actual quadrilateral with four interior configuration points has exactly one in each diagonal sector; every competitive configuration has five to eight hull vertices | [FOUR_INTERIOR_QUADRILATERALS.md](FOUR_INTERIOR_QUADRILATERALS.md) |
| Two interior points in the same quadrilateral diagonal sector have minimum area below \(7S/64\); the remaining mixed pair line must isolate its ear vertex | [ONE_CORNER_COMPLETION.md](ONE_CORNER_COMPLETION.md) |
| Complete balanced Type-II quadrilateral-right exclusion; the triangular-right branch has an empty lower ear and an alternating eight-point quadrilateral | `TYPE_II_COMPLETION.md`, Sections 5–6 |
| One alternating balanced assignment is excluded by a second supporting shear | `TYPE_II_COMPLETION.md`, Sections 7–8 |
| Complete balanced Type-II count-row exclusion, leaving only \((1,2,3)\) | `TYPE_II_COMPLETION.md`, Theorem 11, with [BALANCED_BOTTOM_INNER_SECTOR.md](BALANCED_BOTTOM_INNER_SECTOR.md) and [BALANCED_RIGHT_MIXED.md](BALANCED_RIGHT_MIXED.md) |
| Complete unbalanced triangular-right exclusion, using a stronger cell-II six-point bound at doubled threshold \(3/28\) | `TYPE_II_COMPLETION.md`, Theorems 13--14 |
| A nontriangular right hull is quadrilateral; with both central points above CE, its outer cells and both isolated central-line alternatives are excluded | [UNBALANCED_RIGHT_HULL.md](UNBALANCED_RIGHT_HULL.md) |
| Complete exclusion of C1 when the five prescribed anchors are its full hull | [C1_MIXED_PENTAGON.md](C1_MIXED_PENTAGON.md) |
| Seven-boundary diagonal triangle ACF has capacity one; the upper overlap AHF/HCF and the BC/FH left-pair assignment are excluded | `SEVEN_BOUNDARY_CAPS.md`, Theorems 5--6 and Corollary 7 |
| Equality transfer through all normalizing shears | `GLOBAL_STRUCTURE.md`, Lemma 4 |
| Complete exclusion of both free points in the smaller-left pentagon with seven boundary contacts | [SEVEN_BOUNDARY_LEFT_PAIR.md](SEVEN_BOUNDARY_LEFT_PAIR.md) |
| Complete exclusion of the seven-boundary right-hand pair, after empty-CDE and diagonal-capacity reductions | [SEVEN_BOUNDARY_RIGHT_PAIR.md](SEVEN_BOUNDARY_RIGHT_PAIR.md) |
| Every N anchor ear has capacity one; the entire exact six-anchor convex hull is excluded | [SIX_BOUNDARY_HULL.md](SIX_BOUNDARY_HULL.md), Theorems 1--7 |
| Two lower C1 points exclude both exterior side caps | [C1_TWO_LOWER_SIDE_CAP.md](C1_TWO_LOWER_SIDE_CAP.md) |
| Complete unbalanced Type-II support-cell I and III exclusions, leaving only cell II in both CE cuts | [UNBALANCED_CELL_I.md](UNBALANCED_CELL_I.md) and [UNBALANCED_CELL_III.md](UNBALANCED_CELL_III.md) |
| The two-above unbalanced cell-II case has a forced radial split and a right vertex of height below 3/16 | [UNBALANCED_RADIAL_SPLIT.md](UNBALANCED_RADIAL_SPLIT.md) |
| Complete unbalanced Type-II two-above-CE exclusion; its final cell II has an exact stress and 960 negative Bernstein coefficients | [UNBALANCED_UPPER_CELL_II.md](UNBALANCED_UPPER_CELL_II.md) |
| Two lower C1 points must lie on opposite sides of the ray from O to each exterior top-cap point | [C1_TOP_CAP_RADIAL_SPLIT.md](C1_TOP_CAP_RADIAL_SPLIT.md) |
| The nearer upper exterior cap is empty, and the farther cap contains at most one free point | `SEVEN_BOUNDARY_CAPS.md`, Theorems 10--11 |
| With one seven-boundary exterior top point, the other point avoids the upper, lower, and left side quadrilaterals | [SEVEN_BOUNDARY_TOP_CAP.md](SEVEN_BOUNDARY_TOP_CAP.md), Theorems 1--3 |
| The last seven-boundary side quadrilateral is empty; the interior companion lies in ADEH intersect BCXF, with b greater than 3/20 and the exterior point higher than H | [SEVEN_BOUNDARY_TOP_CAP_RIGHT.md](SEVEN_BOUNDARY_TOP_CAP_RIGHT.md) |
| Complete HBE/BEF and ACE/ADE pair-cell exclusions; the mixed left point lies in ACF; ADE, AHD, AHE, and HDE each have capacity one | [SEVEN_BOUNDARY_MIXED_PAIR.md](SEVEN_BOUNDARY_MIXED_PAIR.md) |
| Sharp B- and C-moving chambers under their stated height conditions; equality forces the displaced vertex back to the boundary | [SHARP_BC_MOVING.md](SHARP_BC_MOVING.md) |
| Complete two-point exterior top-cap exclusion when C1 has two lower points | [C1_TOP_CAP_CONVEX_PAIR.md](C1_TOP_CAP_CONVEX_PAIR.md) and [C1_TOP_CAP_TRIANGULAR_PAIR.md](C1_TOP_CAP_TRIANGULAR_PAIR.md) |
| Both side ears of the one-point C1 top cap are empty; the remaining upper point lies in OCXH | [C1_TOP_CAP_SIDE_EARS.md](C1_TOP_CAP_SIDE_EARS.md) |
| The C1 lower pair cannot straddle OF after choosing the upper point in OCX; both lie in OCF | [C1_TOP_CAP_OF_SPLIT.md](C1_TOP_CAP_OF_SPLIT.md) |
| In the last one-above Type-II cut, P and T lie above DR while Q lies below it; DBR and DRS have capacity one | [UNBALANCED_ONE_UPPER_RADIAL.md](UNBALANCED_ONE_UPPER_RADIAL.md) |
| The occupied lower ear EBR is excluded, forcing Q above ER in the final Type-II placement | [UNBALANCED_OCCUPIED_LOWER_EAR.md](UNBALANCED_OCCUPIED_LOWER_EAR.md) |
| The complete negative QT-E line sign is excluded in the final Type-II placement | [UNBALANCED_FINAL_NEGATIVE_LINE.md](UNBALANCED_FINAL_NEGATIVE_LINE.md) |
| The final Type-II upper pair and lower wedge are excluded; every Type-II count, hull, cell, and cut is closed | [UNBALANCED_FINAL_UPPER_PAIR.md](UNBALANCED_FINAL_UPPER_PAIR.md) and [UNBALANCED_FINAL_LOWER_WEDGE.md](UNBALANCED_FINAL_LOWER_WEDGE.md), Theorem 2 |
| All four sharp exterior R3 radial words, with equality forcing the eighth boundary contact | [SEVEN_BOUNDARY_TOP_CAP_RADIAL.md](SEVEN_BOUNDARY_TOP_CAP_RADIAL.md) |
| The G-moving sharp chamber with f at most c and G at least as high as E is strictly below 7/128 | [SHARP_G_MOVING_PROJECTION.md](SHARP_G_MOVING_PROJECTION.md) |
| Both isolated-endpoint pair-line cases in the remaining C1 top-cap common cell are excluded | [C1_TOP_CAP_COMMON_CELL.md](C1_TOP_CAP_COMMON_CELL.md) |
| The middle containment pair-line case in that C1 common cell is excluded | [C1_TOP_CAP_CONTAINMENT_PAIR.md](C1_TOP_CAP_CONTAINMENT_PAIR.md) |
| The entire exterior corner cap at the two doubled sides of N is empty, by a five-point bound below 1/20 | [SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md) |
| All four exterior R1 words are excluded | [SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md](SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md) |
| Every further point is excluded from the seven-boundary upper triangle HEF | [SEVEN_BOUNDARY_UPPER_TRIANGLE.md](SEVEN_BOUNDARY_UPPER_TRIANGLE.md) |
| The entire C1 two-lower occupancy is excluded, with every hull size and pair-line case covered | [C1_TWO_LOWER_COMPLETION.md](C1_TWO_LOWER_COMPLETION.md) |
| Complete seven-boundary exterior theorem, all 36 radial words and equality | [SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md](SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md) |
| Both N side exterior caps have capacity one; three points in the opposite cap force support cell II and an eight-vertex hull | [SIX_BOUNDARY_EXTERIOR.md](SIX_BOUNDARY_EXTERIOR.md), Sections 3–4 |
| Complete mixed branch below HC, all 64 surviving radial-word pairs | [SEVEN_BOUNDARY_MIXED_LOWER.md](SEVEN_BOUNDARY_MIXED_LOWER.md) |
| Complete mixed branch above HC and the entire normalized seven-boundary theorem, including equality | [SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md](SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md), Theorems 1–2 |
| Complete N occupancy with both side caps occupied and the third point below HC, including equality | [SIX_BOUNDARY_TWO_SIDE_COMPLETION.md](SIX_BOUNDARY_TWO_SIDE_COMPLETION.md) |
| Complete one-lower C1 hexagon with one exterior top-cap point and two interior upper points | [C1_ONE_LOWER_TOP_CAP.md](C1_ONE_LOWER_TOP_CAP.md) |

The original three-family argument is retained in
[BOUNDARY_REDUCTION.md](BOUNDARY_REDUCTION.md). All strengthened normal forms
include arbitrary remaining points; they do not assume those points lie in
an observed numerical pattern.

## What remains

- **N with six boundary contacts:** larger hulls beyond the prescribed
  six anchors. The exact six-anchor hull is excluded. The lower-left
  exterior cap is empty and both side caps have capacity one. An occupied
  side cap makes the opposite lower ear empty. If all three free points
  are in the opposite cap, only support cell II with an eight-vertex
  hull survives. The whole occupancy with both side caps occupied and
  the third point below HC is now complete; other interactions remain.
- **C1:** only the zero- and one-lower counts in OHC remain, with hulls
  larger than the prescribed five-anchor pentagon. The entire two-lower
  occupancy and every exact-five-anchor-hull placement are excluded.
  The one-lower hexagon with one exterior top-cap point is also excluded.

The entire normalized seven-boundary form is complete, including every
interior pair, every exterior placement, and equality. Its final assembly
is Theorem 2 of SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md.

The opposite-corner family C2, the entire three-corner family Type III,
and the entire adjacent-corner Type-II family are closed by strict
bounds below \(A_0\).
For every competitive configuration, even before normalization, every
actual triangle contains at most two further configuration points. This
global occupancy theorem is proved but does not exclude all surviving
order types.

A proof covering these complete families, or a proved boundary-saturation
reduction to the solved family, would finish the unrestricted theorem.
A local theorem or a numerical description of the candidate does not supply
that step. See [../ROADMAP.md](../ROADMAP.md) for the current completion gates.

## Optional exact diagnostics

From the repository root, run:

```sh
python hand/check_identities.py
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
python hand/check_c1_mixed_pentagon.py
python hand/check_four_interior_quadrilaterals.py
python hand/check_balanced_bottom_inner_sector.py
python hand/check_balanced_right_mixed.py
python hand/check_unbalanced_right_hull.py
python hand/check_unbalanced_radial_split.py
python hand/check_unbalanced_cell_i.py
python hand/check_unbalanced_cell_iii.py
python hand/check_unbalanced_upper_cell_ii.py
python hand/check_seven_boundary_left_pair.py
python hand/check_seven_boundary_right_pair.py
python hand/check_six_boundary_hull.py
python hand/check_c1_two_lower_side_cap.py
python hand/check_c1_top_cap_radial_split.py
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
python hand/check_seven_boundary_mixed_lower.py
python hand/check_seven_boundary_mixed_above.py
python hand/check_seven_boundary_mixed_above_certificates.py
python hand/check_six_boundary_two_side_projection.py
python hand/check_six_boundary_two_side_completion.py
python hand/check_c1_one_lower_top_cap.py
```

These scripts use SymPy where appropriate and verify the printed determinant
identities, rational inequalities, and small finite tables. The written proofs
supply the geometry and sign arguments. The scripts do not replace those
arguments or serve as a global coordinate-box certificate.

No exhaustive real-box subdivision or numerical optimizer is a premise of
these hand proofs. Algebraic exploration was used to discover identities;
every identity and scalar positivity argument used in a theorem is displayed
in the text.

The convex-position exclusion uses the classical planar affine
isoperimetric inequality, stated with a primary proof reference in
`GLOBAL_COMPLETION.md`. The other new restrictions use earlier results
proved in this directory. In particular, the stronger two-vertex capacity
theorem depends on the existing global actual-triangle theorem; it must
not be used to replace an upstream ingredient in that theorem's proof.

The inward-moving chamber proof includes explicit rational Bernstein
coefficient bounds: 32 coefficients in its far parameter range and 886
in its near parameter range. The defining polynomials, conversion
formulas, and positive lower-bound tables are printed in the proof;
`check_global_completion.py` recomputes every bound exactly. These finite
algebraic certificates are part of that argument's stated trust boundary.

The local radius in the hand proof is qualitative. The separate explicit
radius \(1/200\) belongs to the older exact arithmetic certificate and cannot
be replaced by an unspecified radius in its global cover. No external
independent audit or Lean verification of these hand arguments is claimed.
