module

public import Heilbronn.Nine.TypeII.TypeII.Normalization
public import Heilbronn.Nine.TypeII.TypeII.CentralTriple

/-! # Type II: the two residual count classes and the unbalanced cut

* `exists_areaEquiv_typeIII_or_residual_row`: every Type-II configuration of least area at least `A₀` is
  area-equivalent to a Type-III configuration or to a Type-II configuration with `b ≤ 1/2` in
  one of the rows `(1,2,3)` (with `s ≤ b ≤ 1 - s/k`) and `(2,2,2)` (with `3s ≤ b ≤ 1/2`),
  `s = 2t` the doubled least area.
* `unbalancedCutLemma` (the unbalanced cut lemma): in the row `(1,2,3)`, at doubled threshold
  `7/64`, the two central points are not both in `EBC`: at least one is inside `DCE`.

In the row `(1,2,3)` the free points are named `P, Q` (central) and `R, S, T` (right).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeII

/-- An area equivalence keeps the least triangle area. -/
theorem minTriangleArea_of_areaEquiv {P Q : Fin 9 → Point} (h : AreaEquiv P Q) :
    minTriangleArea Q = minTriangleArea P := by
  obtain ⟨a, b, c, d, e, f, σ, hdet, hQ⟩ := h
  have : Q = affineMap a b c d e f ∘ (P ∘ σ) := funext hQ
  rw [this, minTriangleArea_affineMap, hdet, one_mul, minTriangleArea_comp_perm]

/-- Every Type-II configuration of least area `t ≥ A₀` is area-equivalent to a Type-III
configuration, or to a Type-II configuration with `b ≤ 1/2` whose counts are `(1,2,3)` with
`s ≤ b ≤ 1 - s/(3-2√2)` or `(2,2,2)` with `3s ≤ b ≤ 1/2`, where `s = 2t`.

Combines `shearNormalization`, `typeIICounts_bounds`, `typeIICounts_ne_two_one_three`,
`typeIICounts_four_rows` and `typeIICounts_ne_central_three`. -/
theorem exists_areaEquiv_typeIII_or_residual_row (P : Fin 9 → Point) (hP : IsTypeII P)
    (hmin : A₀ ≤ minTriangleArea P) :
    let s := 2 * minTriangleArea P
    ∃ Q, AreaEquiv P Q ∧
      (IsTypeIII Q ∨
        ∃ (l b : ℝ) (V W X Y Z : Point), TypeIIData l b V W X Y Z ∧ b ≤ 1 / 2 ∧
          Q = typeIIConfig l b V W X Y Z ∧
          ((typeIICounts b V W X Y Z = (1, 2, 3) ∧ s ≤ b ∧ b ≤ 1 - s / kEnd) ∨
            (typeIICounts b V W X Y Z = (2, 2, 2) ∧ 3 * s ≤ b ∧ b ≤ 1 / 2))) := by
  intro s
  obtain ⟨Q, hQ, hcase⟩ := shearNormalization P hP (lt_of_lt_of_le A₀_pos hmin)
  have hmQ : minTriangleArea Q = minTriangleArea P := minTriangleArea_of_areaEquiv hQ
  refine ⟨Q, hQ, ?_⟩
  rcases hcase with h3 | ⟨l, b, V, W, X, Y, Z, hd, hb2, rfl⟩
  · exact Or.inl h3
  · right
    refine ⟨l, b, V, W, X, Y, Z, hd, hb2, rfl, ?_⟩
    have hmin' : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z) := hmQ ▸ hmin
    have hrows := typeIICounts_four_rows hd hb2 hmin'
    have hc3 := typeIICounts_ne_central_three hd hb2 hmin'
    simp only [hmQ] at hrows
    rcases hrows with h | h | h | h
    · exact Or.inl h
    · exact absurd h.1 hc3.1
    · exact Or.inr h
    · exact absurd h.1 hc3.2

/-- The unbalanced cut lemma. In the row `(1,2,3)`, with central points `P, Q` and right points
`R, S, T`, at doubled threshold `s = 7/64`: the two central points cannot both lie in `EBC`; thus
at least one lies inside `DCE`. The proof (`bq ≥ s` from `DBE`, the two-interior bound
`twoInteriorPointLemma` on `EBC`, and `1 - b ≥ s/k` from the endpoint bound
`right_three_bound` in `T_R`, so `b < 4/11`) does not use `b ≤ 1/2`. -/
theorem unbalancedCutLemma {l b : ℝ} {P Q R S T : Point} (hd : TypeIIData l b P Q R S T)
    (hP : IsCentral b P) (hQ : IsCentral b Q) (hR : IsRight b R) (hS : IsRight b S)
    (hT : IsRight b T) (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    ¬ (InTriangle P (ptE l) (ptB b) ptC ∧ InTriangle Q (ptE l) (ptB b) ptC) ∧
      (InTriangle P ptD (ptE l) ptC ∨ InTriangle Q ptD (ptE l) ptC) := by
  have hb := hd.1
  have hb1 := hd.2.1
  have hl := hd.2.2.1
  have hl1 := hd.2.2.2.1
  have hmin' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hDEB := s_le_DEB hd hmin'
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  -- `1 - b ≥ s/k` from the three right points
  have hR3 := (min_le_sub_CB3 (l := l) (b := b) (V := P) (W := Q) (X := R) (Y := S) (Z := T)
    2 3 4 (by decide) (by decide) (by decide)).trans (right_three_bound hb1
      (freePts_mem hd 2) (freePts_mem hd 3) (freePts_mem hd 4) hR hS hT)
  have h181 : (181 : ℝ) / 128 < Real.sqrt 2 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have hk : kEnd < 11 / 64 := by unfold kEnd; linarith
  have hk0 := kEnd_pos
  have hb411 : b < 4 / 11 := by nlinarith
  have hnot : ¬ (InTriangle P (ptE l) (ptB b) ptC ∧ InTriangle Q (ptE l) (ptB b) ptC) := by
    rintro ⟨hPE, hQE⟩
    have hsub : 7 / 128 ≤ minTriangleArea ![ptE l, ptB b, ptC, P, Q] :=
      hmin.trans (min_le_min_reindex (by norm_num) _ _ ![2, 3, 1, 4, 5] (by decide)
        (by funext m; fin_cases m <;> rfl))
    have h2 := twoInteriorPointLemma (ptE l) (ptB b) ptC P Q (Or.inl hPE)
      (Or.inl hQE) (7 / 128) (by norm_num) hsub
    have hEBC : sarea (ptE l) (ptB b) ptC = 1 - (1 - b) * (1 - l) := by
      simp [sarea, ptE, ptB, ptC]; ring
    rw [triangleArea_eq, hEBC, abs_of_pos (by nlinarith)] at h2
    have h3 := sqrt_three_gt
    -- `1 ≥ (3 + 2√3)s + s/b`
    have hq : 7 / 64 ≤ b * (1 - l) := hDEB
    nlinarith [mul_le_mul_of_nonneg_left hq (by linarith : (0:ℝ) ≤ 1 - b)]
  refine ⟨hnot, ?_⟩
  have hcutP := central_inTriangle_iff hb hb1 hl hl1 hP
  have hcutQ := central_inTriangle_iff hb hb1 hl hl1 hQ
  rw [typeIIConfig_eq] at hpos
  have nP : sarea (ptE l) ptC P ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 1 4
  have nQ : sarea (ptE l) ptC Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 1 5
  by_contra hcon
  push Not at hcon
  apply hnot
  constructor
  · rcases lt_or_gt_of_ne nP with h | h
    · exact hcutP.2.2 h
    · exact absurd (hcutP.1.2 h) hcon.1
  · rcases lt_or_gt_of_ne nQ with h | h
    · exact hcutQ.2.2 h
    · exact absurd (hcutQ.1.2 h) hcon.2

end Heilbronn.Nine.TypeII
