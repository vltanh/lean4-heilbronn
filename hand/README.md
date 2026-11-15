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
| In unbalanced Type II, a triangular right hull has an empty lower ear and forces both central points above CE | `TYPE_II_COMPLETION.md`, Theorem 12 |
| A nontriangular right hull is quadrilateral; with both central points above CE, its two outer support cells are excluded | [UNBALANCED_RIGHT_HULL.md](UNBALANCED_RIGHT_HULL.md) |
| Equality transfer through all normalizing shears | `GLOBAL_STRUCTURE.md`, Lemma 4 |

The original three-family argument is retained in
[BOUNDARY_REDUCTION.md](BOUNDARY_REDUCTION.md). All strengthened normal forms
include arbitrary remaining points; they do not assume those points lie in
an observed numerical pattern.

## What remains

- **N:** six prescribed boundary points and three arbitrary points, with fewer
  than eight total boundary points. Every actual triangle has capacity two;
  the virtual lower corner cap has capacity one. Additional seven-boundary
  cap restrictions, including both lower exterior caps, are proved.
  The full sharp chamber with one top point moved inward is also closed,
  including equality. Other placements and orientation chambers keep the
  complete family open.
- **C1:** one occupied corner, four further side contacts, and four arbitrary
  points. Every actual triangle has capacity two. If the five prescribed
  anchors are the full hull, exactly two free points lie on each side of
  the opposite diagonal, and the upper pair must lie together in HCD or
  HCF. The two upper points cannot occupy the same diagonal sector:
  one is in the common central sector and the other in the corresponding
  outer ear, and their joining line isolates that ear's vertex. The
  corresponding quadrilateral containing all four free points must have
  one in each diagonal sector. These placements and the larger-hull
  cases remain open.
- **Type II:** after the area-preserving normalization to \(b\le1/2\), only
  the left/central/right count \((1,2,3)\) remains. The left count consists
  of the prescribed side contact. All cases with three central points,
  the count \((2,1,3)\), and the entire balanced count \((2,2,2)\) are
  excluded. A triangular right hull forces both central points above CE
  and two alternating eight-point quadrilaterals; its remaining coupled
  inequality is open. A nontriangular right hull must be quadrilateral.
  With both central points above CE only support cell II remains; with
  exactly one above, cells I, II, and III remain.

The opposite-corner family C2 and the entire three-corner family Type III
are closed at \(7/128<A_0\).
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
python hand/check_four_interior_quadrilaterals.py
python hand/check_balanced_bottom_inner_sector.py
python hand/check_balanced_right_mixed.py
python hand/check_unbalanced_right_hull.py
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
