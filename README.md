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
- **Global hand reductions and corner theorems:** [hand/GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md) strengthens the normalization to five explicit families with at most twelve parameters. [hand/OPPOSITE_CORNERS.md](hand/OPPOSITE_CORNERS.md) completely excludes the opposite-corner family with the strict bound \(7/128<A_0\). [hand/CORNER_FAMILIES.md](hand/CORNER_FAMILIES.md) completely excludes Type III (three occupied corners) at \(7/128<A_0\), using sharp small-hull theorems and exact packing inequalities. The adjacent-corner reduction in [hand/TYPE_II.md](hand/TYPE_II.md), followed by [hand/TYPE_II_COMPLETION.md](hand/TYPE_II_COMPLETION.md), now leaves only the unbalanced count \((1,2,3)\): the entire balanced row is excluded.
- **Exact attainment and local optimality:** [hand/HAND_PROOF.md](hand/HAND_PROOF.md) supplies the sharp chamber argument used in the eight-boundary theorem, all 84 attaining areas, and unrestricted qualitative strict local optimality.
- **Further global restrictions:** [hand/THREE_INTERIOR_TRIANGLES.md](hand/THREE_INTERIOR_TRIANGLES.md) proves that, in every nine-point configuration of minimum area at least \(A_0\), each actual triangle contains at most two further points. [hand/ONE_CORNER.md](hand/ONE_CORNER.md) closes the complete corner-triangle three-interior branch and several pentagonal C1 classes. [hand/SEVEN_BOUNDARY_CAPS.md](hand/SEVEN_BOUNDARY_CAPS.md) and [hand/TYPE_II_BALANCED.md](hand/TYPE_II_BALANCED.md) give additional continuous placement exclusions.
- **New complete class exclusions:** [hand/GLOBAL_COMPLETION.md](hand/GLOBAL_COMPLETION.md) excludes every nine-point convex-position configuration below \(1/19\) and both lower exterior caps in the seven-boundary form. It also proves the sharp bound and equality throughout the full candidate chamber when F is allowed to move inward from the top side. [hand/FOUR_INTERIOR_QUADRILATERALS.md](hand/FOUR_INTERIOR_QUADRILATERALS.md) forces four interior points to occupy the four diagonal sectors once each. [hand/ONE_CORNER_COMPLETION.md](hand/ONE_CORNER_COMPLETION.md) excludes an entire quadrilateral pair class and restricts the remaining mixed pair. The complete balanced Type-II theorem in [hand/TYPE_II_COMPLETION.md](hand/TYPE_II_COMPLETION.md), Theorem 11, covers both side-hull alternatives, both outer alternating assignments, and all four final inner cells.
- **Exact computational proof draft:** [exact/PROOF.md](exact/PROOF.md) and [exact/STATUS.md](exact/STATUS.md) describe a claimed complete finite global cover over three families, with exact arithmetic checkers and previously recorded PASS runs. The mathematical/code argument is unreviewed and **not Lean-verified**.
- **Further completed branches:** [hand/C1_MIXED_PENTAGON.md](hand/C1_MIXED_PENTAGON.md) closes every C1 configuration whose hull is exactly its five prescribed anchors. Theorems 13--14 of [hand/TYPE_II_COMPLETION.md](hand/TYPE_II_COMPLETION.md) close the entire unbalanced triangular-right branch. [hand/UNBALANCED_RIGHT_HULL.md](hand/UNBALANCED_RIGHT_HULL.md) excludes both isolated central-line alternatives in the two-above cut. The seven-boundary cap note also closes the diagonal-triangle pair and upper-left overlap classes.
- **The unrestricted hand proof is still incomplete.** [ROADMAP.md](ROADMAP.md) and [HANDOFF.md](HANDOFF.md) identify the remaining continuous families: N, C1 with larger hulls, and the unbalanced Type-II quadrilateral-right branches. The eight-boundary theorem does not assert that an unrestricted optimizer has eight boundary points.

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
