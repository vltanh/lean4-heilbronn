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

General helpers proved here: `abs_sarea_le_of_mem_convexHull` (a triangle with vertices in a
closed triangle `UVW` has doubled area at most `|[UVW]|`), `inside_of_mem_hull` (a point of a
closed triangle off its edge lines is strictly inside), and `right_cell_II` (the cell transfer
for one support normalization of the right five-point set).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeII

/-- An area equivalence keeps the least triangle area. -/
theorem minTriangleArea_of_areaEquiv {P Q : Fin 9 → Point} (h : AreaEquiv P Q) :
    minTriangleArea Q = minTriangleArea P := by
  obtain ⟨a, b, c, d, e, f, σ, hdet, hQ⟩ := h
  have : Q = affineMap a b c d e f ∘ (P ∘ σ) := funext hQ
  rw [this, minTriangleArea_affineMap, hdet, one_mul, minTriangleArea_comp_perm]

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
  intro s
  obtain ⟨Q, hQ, hcase⟩ := shearNormalization P hP (lt_of_lt_of_le A₀_pos hmin)
  have hmQ : minTriangleArea Q = minTriangleArea P := minTriangleArea_of_areaEquiv hQ
  refine ⟨Q, hQ, ?_⟩
  rcases hcase with h3 | ⟨l, b, V, W, X, Y, Z, hd, hb2, rfl⟩
  · exact Or.inl h3
  · right
    refine ⟨l, b, V, W, X, Y, Z, hd, hb2, rfl, ?_⟩
    have hmin' : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z) := hmQ ▸ hmin
    have hrows := claim_scope_four_rows hd hb2 hmin'
    have hc3 := claim_exclude_central_three hd hb2 hmin'
    simp only [hmQ] at hrows
    rcases hrows with h | h | h | h
    · exact Or.inl h
    · exact absurd h.1 hc3.1
    · exact Or.inr h
    · exact absurd h.1 hc3.2

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
    have h2 := CornerFamilies.twoInteriorPointLemma (ptE l) (ptB b) ptC P Q (Or.inl hPE)
      (Or.inl hQE) (7 / 128) (by norm_num) hsub
    have hEBC : sarea (ptE l) (ptB b) ptC = 1 - (1 - b) * (1 - l) := by
      simp [sarea, ptE, ptB, ptC]; ring
    rw [triangleArea_eq, hEBC, abs_of_pos (by nlinarith)] at h2
    have h3 := sqrt_three_gt
    -- (35): `1 ≥ (3 + 2√3)s + s/b`
    have hq : 7 / 64 ≤ b * (1 - l) := hDEB
    nlinarith [mul_le_mul_of_nonneg_left hq (by linarith : (0:ℝ) ≤ 1 - b)]
  refine ⟨hnot, ?_⟩
  have hcutP := claim_central_cut hb hb1 hl hl1 hP
  have hcutQ := claim_central_cut hb hb1 hl hl1 hQ
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

/-! ### Helpers for the right five-point set -/

/-- `|[pqr]| ≤ M` for `p` in the closed triangle `UVW`, when the bound holds at the vertices. -/
theorem abs_sarea_le_of_mem_aux {U V W p q r : Point} {M : ℝ}
    (hp : p ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hU : |sarea U q r| ≤ M) (hV : |sarea V q r| ≤ M) (hW : |sarea W q r| ≤ M) :
    |sarea p q r| ≤ M := by
  obtain ⟨a, b, c, ha, hb, hc, habc, rfl⟩ := exists_bary_of_mem_convexHull hp
  have e : sarea (a * U.1 + b * V.1 + c * W.1, a * U.2 + b * V.2 + c * W.2) q r =
      a * sarea U q r + b * sarea V q r + c * sarea W q r := by
    obtain rfl : a = 1 - b - c := by linarith
    unfold sarea; ring
  rw [e]
  calc |a * sarea U q r + b * sarea V q r + c * sarea W q r|
      ≤ |a * sarea U q r| + |b * sarea V q r| + |c * sarea W q r| :=
        (abs_add_le _ _).trans (by gcongr; exact abs_add_le _ _)
    _ = a * |sarea U q r| + b * |sarea V q r| + c * |sarea W q r| := by
        rw [abs_mul, abs_mul, abs_mul, abs_of_nonneg ha, abs_of_nonneg hb, abs_of_nonneg hc]
    _ ≤ a * M + b * M + c * M := by gcongr
    _ = M := by linear_combination M * habc

/-- A triangle with vertices in the closed triangle `UVW` has doubled area at most `|[UVW]|`. -/
theorem abs_sarea_le_of_mem_convexHull {U V W p q r : Point}
    (hp : p ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hq : q ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hr : r ∈ convexHull ℝ ({U, V, W} : Set Point)) :
    |sarea p q r| ≤ |sarea U V W| := by
  have hv : ∀ X ∈ ({U, V, W} : Set Point), ∀ Y ∈ ({U, V, W} : Set Point),
      ∀ Z ∈ ({U, V, W} : Set Point), |sarea X Y Z| ≤ |sarea U V W| := by
    intro X hX Y hY Z hZ
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hX hY hZ
    have key : sarea X Y Z = 0 ∨ sarea X Y Z = sarea U V W ∨ sarea X Y Z = -sarea U V W := by
      rcases hX with rfl | rfl | rfl <;> rcases hY with rfl | rfl | rfl <;>
        rcases hZ with rfl | rfl | rfl <;>
        first
        | (left; unfold sarea; ring1)
        | (right; left; unfold sarea; ring1)
        | (right; right; unfold sarea; ring1)
    rcases key with h | h | h <;> rw [h] <;> simp [abs_neg]
  have mU : U ∈ ({U, V, W} : Set Point) := by simp
  have mV : V ∈ ({U, V, W} : Set Point) := by simp
  have mW : W ∈ ({U, V, W} : Set Point) := by simp
  have s1 : ∀ X ∈ ({U, V, W} : Set Point), ∀ Y ∈ ({U, V, W} : Set Point),
      |sarea X Y r| ≤ |sarea U V W| := fun X hX Y hY => by
    rw [sarea_cycle r X Y]
    exact abs_sarea_le_of_mem_aux hr (hv U mU X hX Y hY) (hv V mV X hX Y hY) (hv W mW X hX Y hY)
  have s2 : ∀ X ∈ ({U, V, W} : Set Point), |sarea X q r| ≤ |sarea U V W| := fun X hX => by
    rw [← sarea_cycle X q r]
    refine abs_sarea_le_of_mem_aux hq ?_ ?_ ?_
    · rw [sarea_cycle]; exact s1 X hX U mU
    · rw [sarea_cycle]; exact s1 X hX V mV
    · rw [sarea_cycle]; exact s1 X hX W mW
  exact abs_sarea_le_of_mem_aux hp (s2 U mU) (s2 V mV) (s2 W mW)

/-- A point of a closed triangle off its three edge lines is strictly inside. -/
theorem inside_of_mem_hull {A B C X : Point} (hX : X ∈ convexHull ℝ ({A, B, C} : Set Point))
    (h1 : sarea B C X ≠ 0) (h2 : sarea C A X ≠ 0) (h3 : sarea A B X ≠ 0) :
    CornerFamilies.InsideTriangle X A B C := by
  obtain ⟨a, b, c, ha, hb, hc, -, e1, e2, e3⟩ := sarea_of_mem_convexHull hX
  have ha' : 0 < a := lt_of_le_of_ne ha (by rintro rfl; rw [zero_mul] at e1; exact h1 e1)
  have hb' : 0 < b := lt_of_le_of_ne hb (by rintro rfl; rw [zero_mul] at e2; exact h2 e2)
  have hc' : 0 < c := lt_of_le_of_ne hc (by rintro rfl; rw [zero_mul] at e3; exact h3 e3)
  have hΔ : sarea A B C ≠ 0 := by intro h0; rw [h0, mul_zero] at e1; exact h1 e1
  rcases lt_or_gt_of_ne hΔ with hn | hp
  · right
    refine ⟨?_, ?_, ?_⟩
    · rw [sarea_swap₁₂ C A X, e2]; nlinarith [mul_neg_of_pos_of_neg hb' hn]
    · rw [sarea_swap₁₂ B C X, e1]; nlinarith [mul_neg_of_pos_of_neg ha' hn]
    · rw [sarea_swap₁₂ A B X, e3]; nlinarith [mul_neg_of_pos_of_neg hc' hn]
  · left
    exact ⟨by rw [e3]; positivity, by rw [e1]; positivity, by rw [e2]; positivity⟩

/-- The scalar transfer of §11 for one support normalization of the right five-point set: with
`[CBW'] ≤ 1 - b` and every doubled area at least `7/64`, the normalized doubled minimum is at least
`(7/64)/(1-b)`, which excludes cells I, III (`≤ 1/(4+2√3)`), IV (`≤ 1/12`) and V (`< 1/10`); the
fifth point is in cell II. -/
theorem right_cell_II {b : ℝ} {W' H F X : Point} (hb1 : b < 1)
    (hb' : 1 - Ktwo * (7 / 64) < b) (hHs : H ∈ unitSquare) (hFs : F ∈ unitSquare)
    (hS : IsSupportTriangle ptC (ptB b) W' H F X)
    (h5 : 7 / 128 ≤ minTriangleArea ![ptC, ptB b, H, F, X]) :
    InCellII ptC (ptB b) H F X := by
  have hΔ := hS.1
  -- the apex lies in the closed right container: `[CBW'] ≤ 1 - b`
  have hW1 : W'.1 ≤ 1 := by
    obtain ⟨a1, b1, ha1, hb1', hab1, hH⟩ := hS.2.1
    have := congrArg Prod.fst hH
    simp only [Prod.fst_add, Prod.smul_fst, smul_eq_mul, ptC] at this
    obtain ⟨-, hx1, -, -⟩ := hHs
    nlinarith
  have hW2 : 0 ≤ W'.2 := by
    obtain ⟨a1, b1, ha1, hb1', hab1, hF⟩ := hS.2.2.1
    have := congrArg Prod.snd hF
    simp only [Prod.snd_add, Prod.smul_snd, smul_eq_mul, ptB] at this
    obtain ⟨-, -, hy0, -⟩ := hFs
    nlinarith
  have hCBW : sarea ptC (ptB b) W' ≤ 1 - b := by
    simp only [sarea, ptC, ptB]; nlinarith
  obtain ⟨a, b', c, d, e, g, h₀, f₀, hdet, hU, hV, -, hH', hF', hN⟩ := claim_support_affine hS
  have hcomp : affineMap a b' c d e g ∘ ![ptC, ptB b, H, F, X] =
      hsConfig h₀ f₀ (affineMap a b' c d e g X) := by
    funext i; fin_cases i <;> simp [hsConfig, hU, hV, hH', hF']
  have hmin := minTriangleArea_affineMap a b' c d e g ![ptC, ptB b, H, F, X]
  rw [hcomp, hdet, abs_of_pos (by positivity)] at hmin
  set sn := 2 * minTriangleArea (hsConfig h₀ f₀ (affineMap a b' c d e g X)) with hsn
  have hsn_ge : 7 / 64 ≤ sn * (1 - b) := by
    have e1 : sn * sarea ptC (ptB b) W' = 2 * minTriangleArea ![ptC, ptB b, H, F, X] := by
      rw [hsn, hmin]; field_simp
    have e2 : sn * sarea ptC (ptB b) W' ≤ sn * (1 - b) := by
      apply mul_le_mul_of_nonneg_left hCBW
      rw [hsn, hmin]; positivity
    linarith
  have hw : 0 < 1 - b := by linarith
  have hsn0 : 0 < sn := by
    by_contra hc; push Not at hc; nlinarith
  have hmin' : sn / 2 ≤ minTriangleArea (hsConfig h₀ f₀ (affineMap a b' c d e g X)) := by
    rw [hsn]; linarith
  have hK := Ktwo_pos
  have hb0 : 0 < b := by have := sqrt_three_lt; unfold Ktwo at hb'; linarith
  have hsb := mul_nonneg hsn0.le hb0.le
  rcases (claim_five_cells hN hsn0 hmin').1 with hc | hc | hc | hc | hc
  · exfalso
    have := (claim_cell_I_bound hN hsn0 hmin' hc).2
    rw [le_div_iff₀ hK] at this
    nlinarith
  · obtain ⟨c1, c2, c3⟩ := hc
    have hd0 : 0 < a * d - b' * c := by rw [hdet]; positivity
    have t1 := sarea_affineMap a b' c d e g ptC F X
    have t2 := sarea_affineMap a b' c d e g (ptB b) H X
    have t3 := sarea_affineMap a b' c d e g H F X
    rw [hU, hF'] at t1
    rw [hV, hH'] at t2
    rw [hH', hF'] at t3
    refine ⟨?_, ?_, ?_⟩
    · by_contra hc; push Not at hc; nlinarith [mul_nonneg hd0.le hc]
    · by_contra hc; push Not at hc; nlinarith [mul_nonpos_of_nonneg_of_nonpos hd0.le hc]
    · by_contra hc; push Not at hc; nlinarith [mul_nonneg hd0.le hc]
  · exfalso
    have := (claim_cell_III_bound hN hsn0 hmin' hc).2
    rw [le_div_iff₀ hK] at this
    nlinarith
  · exfalso
    have := claim_cell_IV_bound hN hsn0 hmin' hc
    nlinarith
  · exfalso
    obtain ⟨-, h1, h2⟩ := eq3 hN hsn0 hmin' hc
    nlinarith

/-- **Claim** (`TYPE_II:claim-unbalanced-right-cell`). In the row `(1,2,3)` at doubled threshold
`s = 7/64`, if `b > 1 - (4+2√3)s` (in particular if `b ≥ 1/5`, since `1 - (4+2√3)s < 19/96`),
the five right points `B, C, R, S, T` have nontriangular hull, and in every support triangle
over the base `C, B` (counterclockwise) the fifth point is in cell II: a triangular hull or cells
I/III would give `s ≤ (1-b)/(4+2√3)`, cells IV/V a normalized minimum below `1/10 < s`.
`hand/TYPE_II.md`, lines 1127–1139.

Proof note: a triangular hull puts two of the five points strictly inside a triangle spanned by
the other three, whose doubled area is at most that of the right container, `1 - b`
(`abs_sarea_le_of_mem_convexHull`); every support apex `W'` lies in the right container, so the
normalized doubled minimum is at least `s/(1-b)`.

Uses: TYPE_II:EndpointTriangleTheorem (its cells), TYPE_II:claim-cell-I-bound,
TYPE_II:claim-cell-III-bound, TYPE_II:claim-cell-IV-bound, TYPE_II:eq3,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_unbalanced_right_cell {l b : ℝ} {P Q R S T : Point}
    (hd : TypeIIData l b P Q R S T) (_hP : IsCentral b P) (_hQ : IsCentral b Q)
    (hR : IsRight b R) (hS : IsRight b S) (hT : IsRight b T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hb' : 1 - Ktwo * (7 / 64) < b) :
    ¬ TriangularHull ![ptB b, ptC, R, S, T] ∧
      ∀ (σ : Equiv.Perm (Fin 3)) (W' : Point),
        IsSupportTriangle ptC (ptB b) W' (![R, S, T] (σ 0)) (![R, S, T] (σ 1))
            (![R, S, T] (σ 2)) →
          InCellII ptC (ptB b) (![R, S, T] (σ 0)) (![R, S, T] (σ 1)) (![R, S, T] (σ 2)) := by
  have hb1 := hd.2.1
  obtain ⟨-, -, -, -, -, -, hRs, hSs, hTs⟩ := hd
  rw [typeIIConfig_eq] at hmin
  have h5 : 7 / 128 ≤ minTriangleArea ![ptB b, ptC, R, S, T] :=
    hmin.trans (min_le_min_reindex (by norm_num) _ _ ![3, 1, 6, 7, 8] (by decide)
      (by funext m; fin_cases m <;> rfl))
  have hpos : 0 < minTriangleArea ![ptB b, ptC, R, S, T] := by linarith
  set P5 : Fin 5 → Point := ![ptB b, ptC, R, S, T] with hP5
  have hTR : ∀ m, P5 m ∈ convexHull ℝ ({ptC, ptB b, (1, 0)} : Set Point) := by
    intro m
    fin_cases m
    · exact subset_convexHull ℝ _ (by simp [hP5])
    · exact subset_convexHull ℝ _ (by simp [hP5])
    · exact right_mem_TR hb1 hRs hR
    · exact right_mem_TR hb1 hSs hS
    · exact right_mem_TR hb1 hTs hT
  have hTRa : |sarea ptC (ptB b) (1, 0)| = 1 - b := by
    rw [show sarea ptC (ptB b) (1, 0) = 1 - b by simp only [sarea, ptC, ptB]; ring]
    exact abs_of_pos (by linarith)
  refine ⟨?_, ?_⟩
  · rintro ⟨i, j, k, hall⟩
    by_cases hΔ : sarea (P5 i) (P5 j) (P5 k) = 0
    · have := abs_sarea_le_of_mem_convexHull (hall 0) (hall 1) (hall 2)
      rw [hΔ, abs_zero] at this
      have h0 : sarea (ptB b) ptC R = 0 := abs_nonpos_iff.1 this
      unfold IsRight at hR
      linarith
    · have hij : i ≠ j := by rintro rfl; apply hΔ; unfold sarea; ring
      have hjk : j ≠ k := by rintro rfl; apply hΔ; unfold sarea; ring
      have hik : i ≠ k := by rintro rfl; apply hΔ; unfold sarea; ring
      have two : ∀ i j k : Fin 5, i ≠ j → j ≠ k → i ≠ k → ∃ m1 m2 : Fin 5, m1 ≠ m2 ∧
          m1 ≠ i ∧ m1 ≠ j ∧ m1 ≠ k ∧ m2 ≠ i ∧ m2 ≠ j ∧ m2 ≠ k := by decide
      obtain ⟨m1, m2, h12, h1i, h1j, h1k, h2i, h2j, h2k⟩ := two i j k hij hjk hik
      have ins : ∀ m, m ≠ i → m ≠ j → m ≠ k →
          CornerFamilies.InsideTriangle (P5 m) (P5 i) (P5 j) (P5 k) := fun m hi hj hk =>
        inside_of_mem_hull (hall m) (sarea_ne_zero_of_min_pos hpos j k m hjk (Ne.symm hk) hj.symm)
          (sarea_ne_zero_of_min_pos hpos k i m hik.symm (Ne.symm hi) hk.symm)
          (sarea_ne_zero_of_min_pos hpos i j m hij (Ne.symm hj) hi.symm)
      have hinj : Function.Injective ![i, j, k, m1, m2] := by
        intro x y hxy
        fin_cases x <;> fin_cases y <;> simp_all
      have hsub : 7 / 128 ≤ minTriangleArea ![P5 i, P5 j, P5 k, P5 m1, P5 m2] :=
        h5.trans (min_le_min_reindex (by norm_num) _ _ ![i, j, k, m1, m2] hinj
          (by funext x; fin_cases x <;> rfl))
      have h2 := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ (ins m1 h1i h1j h1k)
        (ins m2 h2i h2j h2k) (7 / 128) (by norm_num) hsub
      have harea := abs_sarea_le_of_mem_convexHull (hTR i) (hTR j) (hTR k)
      rw [triangleArea_eq] at h2
      rw [hTRa] at harea
      unfold Ktwo at hb'
      linarith
  · intro σ W' hSup
    have hsq : ∀ m : Fin 3, ![R, S, T] m ∈ unitSquare := by
      intro m; fin_cases m <;> assumption
    refine right_cell_II hb1 hb' (hsq _) (hsq _) hSup ?_
    have hfi : Function.Injective (![1, 3, ![6, 7, 8] (σ 0), ![6, 7, 8] (σ 1), ![6, 7, 8] (σ 2)] :
        Fin 5 → Fin 9) := by
      rcases perm3_cases σ with ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ |
          ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ <;> rw [e0, e1, e2] <;> decide
    refine hmin.trans (min_le_min_reindex (by norm_num) _ _ _ hfi ?_)
    funext x
    rcases perm3_cases σ with ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ |
        ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ <;> simp only [e0, e1, e2] <;> fin_cases x <;> rfl

/-- The numerical remark of `TYPE_II.md` line 1135: `1 - (4+2√3)(7/64) < 19/96 < 1/5`, so
`b ≥ 1/5` implies the hypothesis of `claim_unbalanced_right_cell`. -/
theorem claim_unbalanced_right_cell_threshold : 1 - Ktwo * (7 / 64) < 19 / 96 ∧
    (19 / 96 : ℝ) < 1 / 5 := by
  have : 5 / 3 < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  unfold Ktwo
  constructor <;> nlinarith

end Heilbronn.TypeII
