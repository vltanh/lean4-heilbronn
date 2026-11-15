module

public import Heilbronn.TypeII.TypeII.Normalization
public import Heilbronn.TypeII.TypeII.CentralTriple

/-! # Type II: the two residual count classes and the unbalanced cut
(`hand/TYPE_II.md`, §§8 and 11)

`TYPE_II.md` lines 816–829 and 1092–1139.

* `claim_two_residual_classes` (§8): every Type-II configuration of least area at least `A₀` is
  area-equivalent to a Type-III configuration or to a Type-II configuration with `b ≤ 1/2` in
  one of the rows `(1,2,3)` (with `s ≤ b ≤ 1 - s/k`) and `(2,2,2)` (with `3s ≤ b ≤ 1/2`),
  `s = 2t` the doubled least area.
* `unbalancedCutLemma` (**Unbalanced cut lemma**, §11): in the row `(1,2,3)`, at doubled
  threshold `7/64`, the two central points are not both in `EBC`: at least one is inside `DCE`.
* `claim_unbalanced_right_cell` (§11): if `b > 1 - (4+2√3)s`, `s = 7/64` (in particular if
  `b ≥ 1/5`), the right five-point hull is not triangular and every support normalization of it
  over the base `C, B` puts the fifth point in cell II.

In the row `(1,2,3)` the free points are named `P, Q` (central) and `R, S, T` (right), as in
`TYPE_II_COMPLETION.md` §12.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeII

/-- **Claim** (`TYPE_II:claim-two-residual-classes`). Combining §§2–7: every Type-II
configuration of least area `t ≥ A₀` is area-equivalent to a Type-III configuration, or to a
Type-II configuration with `b ≤ 1/2` whose counts are `(1,2,3)` with `s ≤ b ≤ 1 - s/(3-2√2)` or
`(2,2,2)` with `3s ≤ b ≤ 1/2`, where `s = 2t`. `hand/TYPE_II.md`, lines 816–829.

Uses: TYPE_II:ShearNormalization, TYPE_II:claim-count-bounds, TYPE_II:claim-exclude-213,
TYPE_II:claim-scope-four-rows, TYPE_II:claim-exclude-central-three. -/
theorem claim_two_residual_classes (P : Fin 9 → Point) (hP : IsTypeII P)
    (hmin : A₀ ≤ minTriangleArea P) :
    let s := 2 * minTriangleArea P
    ∃ Q, AreaEquiv P Q ∧
      (IsTypeIII Q ∨
        ∃ (l b : ℝ) (V W X Y Z : Point), TypeIIData l b V W X Y Z ∧ b ≤ 1 / 2 ∧
          Q = typeIIConfig l b V W X Y Z ∧
          ((typeIICounts b V W X Y Z = (1, 2, 3) ∧ s ≤ b ∧ b ≤ 1 - s / kEnd) ∨
            (typeIICounts b V W X Y Z = (2, 2, 2) ∧ 3 * s ≤ b ∧ b ≤ 1 / 2))) := by
  sorry

/-- **Unbalanced cut lemma** (`TYPE_II:UnbalancedCutLemma`). In the row `(1,2,3)`, with central
points `P, Q` and right points `R, S, T`, at doubled threshold `s = 7/64`: the two central points
cannot both lie in `EBC`; thus at least one lies inside `DCE`. The proof (`bq ≥ s` from `DBE`,
the two-interior bound on `EBC`, and `1 - b ≥ s/k` from the endpoint theorem in `T_R`, so
`b < 4/11`) does not use `b ≤ 1/2`. `hand/TYPE_II.md`, lines 1092–1125.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II:EndpointTriangleTheorem,
TYPE_II:claim-central-cut. -/
theorem unbalancedCutLemma {l b : ℝ} {P Q R S T : Point} (hd : TypeIIData l b P Q R S T)
    (hP : IsCentral b P) (hQ : IsCentral b Q) (hR : IsRight b R) (hS : IsRight b S)
    (hT : IsRight b T) (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    ¬ (InTriangle P (ptE l) (ptB b) ptC ∧ InTriangle Q (ptE l) (ptB b) ptC) ∧
      (InTriangle P ptD (ptE l) ptC ∨ InTriangle Q ptD (ptE l) ptC) := by
  sorry

/-- **Claim** (`TYPE_II:claim-unbalanced-right-cell`). In the row `(1,2,3)` at doubled threshold
`s = 7/64`, if `b > 1 - (4+2√3)s` (in particular if `b ≥ 1/5`, since `1 - (4+2√3)s < 19/96`),
the five right points `B, C, R, S, T` have nontriangular hull, and in every support triangle
over the base `C, B` (counterclockwise) the fifth point is in cell II: a triangular hull or cells
I/III would give `s ≤ (1-b)/(4+2√3)`, cells IV/V a normalized minimum below `1/10 < s`.
`hand/TYPE_II.md`, lines 1127–1139.

Uses: TYPE_II:EndpointTriangleTheorem (its cells), TYPE_II:claim-cell-I-bound,
TYPE_II:claim-cell-III-bound, TYPE_II:claim-cell-IV-bound, TYPE_II:eq3,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_unbalanced_right_cell {l b : ℝ} {P Q R S T : Point}
    (hd : TypeIIData l b P Q R S T) (hP : IsCentral b P) (hQ : IsCentral b Q)
    (hR : IsRight b R) (hS : IsRight b S) (hT : IsRight b T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hb' : 1 - Ktwo * (7 / 64) < b) :
    ¬ TriangularHull ![ptB b, ptC, R, S, T] ∧
      ∀ (σ : Equiv.Perm (Fin 3)) (W' : Point),
        IsSupportTriangle ptC (ptB b) W' (![R, S, T] (σ 0)) (![R, S, T] (σ 1))
            (![R, S, T] (σ 2)) →
          InCellII ptC (ptB b) (![R, S, T] (σ 0)) (![R, S, T] (σ 1)) (![R, S, T] (σ 2)) := by
  sorry

/-- The numerical remark of `TYPE_II.md` line 1135: `1 - (4+2√3)(7/64) < 19/96 < 1/5`, so
`b ≥ 1/5` implies the hypothesis of `claim_unbalanced_right_cell`. -/
theorem claim_unbalanced_right_cell_threshold : 1 - Ktwo * (7 / 64) < 19 / 96 ∧
    (19 / 96 : ℝ) < 1 / 5 := by
  sorry

end Heilbronn.TypeII
