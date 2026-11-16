module

public import Heilbronn.Nine.TypeII.TypeII.Basic

/-! # Type II: the shear normalization and the count reduction (`docs/proof/nine/TYPE_II.md`, §§2–5)

`TYPE_II.md` lines 187–403. Every positive Type-II configuration is area-equivalent to a
Type-III configuration or to a Type-II configuration with `b ≤ 1/2` (§2). For a configuration of
least area `t ≥ A₀` with `b ≤ 1/2`, the counts `(ℓ, c, r)` of the six points other than `D, C, B`
in the three containers are one of five triples (§3), the triple `(2,1,3)` is impossible (§4),
and the four remaining rows carry the parameter ranges of §5.

Results:

* `shearNormalization` (**Shear normalization**, (6));
* `eq7`: `2A₀ > 7/64 > 1/10`;
* `claim_container_assignment` and `eq8`: each free point is in exactly one container, and
  `ℓ + c + r = 6`;
* `claim_count_bounds`: `c ≤ 3`, `ℓ ≤ 2`, `r ≤ 3`, hence five triples;
* `claim_exclude_213`: the class `(2,1,3)` does not occur;
* `claim_scope_four_rows`: the parameter ranges of the four remaining rows (§5).

The standing hypothesis of §§3–5 is "the minimum area `t` is at least `A₀`" (line 241), written
`A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)`, with `s = 2t`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeII

/-! ### Helpers: indices, containers, sub-configurations -/

/-- The index of the free point `i` in `typeIIConfig`. -/
def freeIdx : Fin 5 → Fin 9 := ![4, 5, 6, 7, 8]

theorem typeIIConfig_freeIdx (l b : ℝ) (V W X Y Z : Point) (i : Fin 5) :
    typeIIConfig l b V W X Y Z (freeIdx i) = freePts V W X Y Z i := by
  fin_cases i <;> rfl

theorem freePts_mem {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z) (i : Fin 5) :
    freePts V W X Y Z i ∈ unitSquare := by
  obtain ⟨-, -, -, -, hV, hW, hX, hY, hZ⟩ := hd
  fin_cases i <;> assumption

theorem typeIIConfig_mem {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z) (i : Fin 9) :
    typeIIConfig l b V W X Y Z i ∈ unitSquare := by
  obtain ⟨hb, hb1, hl, hl1, hV, hW, hX, hY, hZ⟩ := hd
  rw [typeIIConfig_eq]
  fin_cases i
  · exact ⟨le_rfl, zero_le_one, zero_le_one, le_rfl⟩
  · exact ⟨zero_le_one, le_rfl, zero_le_one, le_rfl⟩
  · exact ⟨le_rfl, zero_le_one, hl.le, hl1.le⟩
  · exact ⟨hb.le, hb1.le, le_rfl, zero_le_one⟩
  all_goals assumption

/-- The triangle `DEB`: `s ≤ b(1 - λ)` for `s/2` at most the least area. -/
theorem s_le_DEB {l b s : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hmin : s / 2 ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) : s ≤ b * (1 - l) := by
  have := le_abs_sarea_of_le_min hmin 0 2 3
  rw [typeIIConfig_eq] at this
  have e : sarea (![ptD, ptC, ptE l, ptB b, V, W, X, Y, Z] 0)
      (![ptD, ptC, ptE l, ptB b, V, W, X, Y, Z] 2) (![ptD, ptC, ptE l, ptB b, V, W, X, Y, Z] 3) =
      b * (1 - l) := by
    simp [sarea, ptD, ptE, ptB]; ring
  rw [e, abs_of_nonneg (mul_nonneg hd.1.le (by linarith [hd.2.2.2.1]))] at this
  exact this

/-- A left point lies in the closed triangle `T_L = BDO`. -/
theorem left_mem_TL {b : ℝ} {P : Point} (hb : 0 < b) (hP : P ∈ unitSquare) (hL : IsLeft b P) :
    P ∈ convexHull ℝ ({ptB b, ptD, (0, 0)} : Set Point) := by
  obtain ⟨hx0, -, hy0, -⟩ := hP
  unfold IsLeft at hL
  apply mem_convexHull_of_sarea (by simp [sarea, ptB, ptD]; linarith)
  · simp [sarea, ptD]; linarith
  · simp [sarea, ptB]; positivity
  · simp only [sarea, ptB, ptD] at hL ⊢; linarith

/-- `E` lies in the closed triangle `T_L = BDO`. -/
theorem E_mem_TL {l b : ℝ} (hb : 0 < b) (hl : 0 ≤ l) (hl1 : l ≤ 1) :
    ptE l ∈ convexHull ℝ ({ptB b, ptD, (0, 0)} : Set Point) := by
  apply mem_convexHull_of_sarea (by simp [sarea, ptB, ptD]; linarith)
  · simp [sarea, ptD, ptE]
  · simp [sarea, ptB, ptE]; positivity
  · simp only [sarea, ptB, ptD, ptE]; nlinarith

/-- A right point lies in the closed triangle `T_R = CB(1,0)` (counterclockwise in this order). -/
theorem right_mem_TR {b : ℝ} {P : Point} (hb1 : b < 1) (hP : P ∈ unitSquare)
    (hR : IsRight b P) : P ∈ convexHull ℝ ({ptC, ptB b, (1, 0)} : Set Point) := by
  obtain ⟨-, hx1, hy0, -⟩ := hP
  unfold IsRight at hR
  apply mem_convexHull_of_sarea (by simp [sarea, ptB, ptC]; linarith)
  · simp [sarea, ptB]; nlinarith
  · simp [sarea, ptC]; linarith
  · simp only [sarea, ptB, ptC] at hR ⊢; linarith

theorem area_TL (b : ℝ) (hb : 0 < b) : triangleArea (ptB b) ptD (0, 0) = b / 2 := by
  rw [triangleArea_eq]; simp [sarea, ptB, ptD]; linarith

theorem area_TR (b : ℝ) (hb1 : b < 1) : triangleArea ptC (ptB b) (1, 0) = (1 - b) / 2 := by
  rw [triangleArea_eq]; simp [sarea, ptB, ptC]; linarith

/-- The sub-configurations used in the count bounds have least area at least that of the
configuration. -/
theorem min_le_sub_BDE2 {l b : ℝ} {V W X Y Z : Point} (i j : Fin 5) (hij : i ≠ j) :
    minTriangleArea (typeIIConfig l b V W X Y Z) ≤
      minTriangleArea ![ptB b, ptD, ptE l, freePts V W X Y Z i, freePts V W X Y Z j] := by
  have hinj : ∀ i j : Fin 5, i ≠ j →
      Function.Injective (![3, 0, 2, freeIdx i, freeIdx j] : Fin 5 → Fin 9) := by decide
  refine min_le_min_reindex (by norm_num) _ _ _ (hinj i j hij) ?_
  funext m; fin_cases m <;> simp [typeIIConfig_freeIdx] <;> rfl

theorem min_le_sub_BDE1 {l b : ℝ} {V W X Y Z : Point} (i : Fin 5) :
    minTriangleArea (typeIIConfig l b V W X Y Z) ≤
      minTriangleArea ![ptB b, ptD, ptE l, freePts V W X Y Z i] := by
  have hinj : ∀ i : Fin 5, Function.Injective (![3, 0, 2, freeIdx i] : Fin 4 → Fin 9) := by
    decide
  refine min_le_min_reindex (by norm_num) _ _ _ (hinj i) ?_
  funext m; fin_cases m <;> simp [typeIIConfig_freeIdx] <;> rfl

theorem min_le_sub_CB3 {l b : ℝ} {V W X Y Z : Point} (i j k : Fin 5) (hij : i ≠ j)
    (hjk : j ≠ k) (hik : i ≠ k) :
    minTriangleArea (typeIIConfig l b V W X Y Z) ≤
      minTriangleArea ![ptC, ptB b, freePts V W X Y Z i, freePts V W X Y Z j,
        freePts V W X Y Z k] := by
  have hinj : ∀ i j k : Fin 5, i ≠ j → j ≠ k → i ≠ k →
      Function.Injective (![1, 3, freeIdx i, freeIdx j, freeIdx k] : Fin 5 → Fin 9) := by
    decide
  refine min_le_min_reindex (by norm_num) _ _ _ (hinj i j k hij hjk hik) ?_
  funext m; fin_cases m <;> simp [typeIIConfig_freeIdx] <;> rfl

/-! ### The shear normalization -/

/-- The shear `(x,y) ↦ (x + τ(1-y), y)` followed by the reflection `x ↦ 1 - x`, as an affine map of
determinant `-1`. -/
def shearReflect (τ : ℝ) : Point → Point := affineMap (-1) τ 0 1 (1 - τ) 0

theorem shearReflect_apply (τ : ℝ) (p : Point) :
    shearReflect τ p = (1 - p.1 - τ * (1 - p.2), p.2) := by
  simp only [shearReflect, affineMap]; ext <;> simp; ring

/-- The shear-reflection, relabelled by `σ`, is an area equivalence. -/
theorem areaEquiv_shearReflect (P : Fin 9 → Point) (τ : ℝ) (σ : Equiv.Perm (Fin 9)) :
    AreaEquiv P (fun j => shearReflect τ (P (σ j))) :=
  ⟨-1, τ, 0, 1, 1 - τ, 0, σ, by norm_num, fun _ => rfl⟩

/-- The Type-II outcome of the shear normalization: the minimizer `P i` becomes the left contact. -/
theorem shear_typeII {P : Fin 9 → Point} {l b τ : ℝ} {V W X Y Z : Point}
    (hP : P = typeIIConfig l b V W X Y Z) (σ : Equiv.Perm (Fin 9)) (i : Fin 9)
    (hσ0 : σ 0 = 1) (hσ1 : σ 1 = 0) (hσ2 : σ 2 = i) (hσ3 : σ 3 = 3)
    (hsq : ∀ j, shearReflect τ (P j) ∈ unitSquare)
    (hzero : 1 - (P i).1 - τ * (1 - (P i).2) = 0) (hy0 : 0 < (P i).2) (hy1 : (P i).2 < 1)
    (hb' : 0 < 1 - b - τ) (hb'2 : 1 - b - τ ≤ 1 / 2) :
    ∃ Q, AreaEquiv P Q ∧ (IsTypeIII Q ∨ IsTypeIIHalf Q) := by
  refine ⟨_, areaEquiv_shearReflect P τ σ, Or.inr ?_⟩
  set Q : Fin 9 → Point := fun j => shearReflect τ (P (σ j)) with hQ
  refine ⟨(P i).2, 1 - b - τ, Q 4, Q 5, Q 6, Q 7, Q 8,
    ⟨hb', by linarith, hy0, hy1, hsq _, hsq _, hsq _, hsq _, hsq _⟩, hb'2, ?_⟩
  have e0 : Q 0 = (0, 1) := by
    simp only [hQ]; rw [hσ0, hP, shearReflect_apply]; simp [typeIIConfig]
  have e1 : Q 1 = (1, 1) := by
    simp only [hQ]; rw [hσ1, hP, shearReflect_apply]; simp [typeIIConfig]
  have e2 : Q 2 = (0, (P i).2) := by
    simp only [hQ]; rw [hσ2, shearReflect_apply, hzero]
  have e3 : Q 3 = (1 - b - τ, 0) := by
    simp only [hQ]; rw [hσ3, hP, shearReflect_apply]; simp [typeIIConfig]
  funext j
  fin_cases j
  · exact e0
  · exact e1
  · exact e2
  · exact e3
  all_goals rfl

/-- The Type-III outcome of the shear normalization: some point `P z` goes to `(0,0)`. -/
theorem shear_typeIII {P : Fin 9 → Point} {l b τ : ℝ} {V W X Y Z : Point}
    (hP : P = typeIIConfig l b V W X Y Z) (σ : Equiv.Perm (Fin 9)) (z : Fin 9)
    (hσ0 : σ 0 = z) (hσ1 : σ 1 = 1) (hσ2 : σ 2 = 0)
    (hsq : ∀ j, shearReflect τ (P j) ∈ unitSquare) (hz : shearReflect τ (P z) = (0, 0)) :
    ∃ Q, AreaEquiv P Q ∧ (IsTypeIII Q ∨ IsTypeIIHalf Q) := by
  refine ⟨_, areaEquiv_shearReflect P τ σ, Or.inl ?_⟩
  set Q : Fin 9 → Point := fun j => shearReflect τ (P (σ j)) with hQ
  refine ⟨Q 3, Q 4, Q 5, Q 6, Q 7, Q 8, hsq _, hsq _, hsq _, hsq _, hsq _, hsq _, ?_⟩
  have e0 : Q 0 = (0, 0) := by simp only [hQ]; rw [hσ0, hz]
  have e1 : Q 1 = (0, 1) := by
    simp only [hQ]; rw [hσ1, hP, shearReflect_apply]; simp [typeIIConfig]
  have e2 : Q 2 = (1, 1) := by
    simp only [hQ]; rw [hσ2, hP, shearReflect_apply]; simp [typeIIConfig]
  funext j
  fin_cases j
  · exact e0
  · exact e1
  · exact e2
  all_goals rfl

/-- **Shear normalization** (`TYPE_II:ShearNormalization`). Every Type-II configuration of
positive least area is area-equivalent (a shear `(x,y) ↦ (x + τ(1-y), y)` of determinant one
followed by the reflection `x ↦ 1 - x`, and a relabelling) to a Type-III configuration or to a
Type-II configuration with `b ≤ 1/2`, (6). `docs/proof/nine/TYPE_II.md`, lines 187–237.

Implicit in the manuscript: the Type-III alternative is reached after a symmetry of the square
(three occupied corners), which is again an affine map of determinant `±1`. -/
theorem shearNormalization (P : Fin 9 → Point) (hP : IsTypeII P)
    (hpos : 0 < minTriangleArea P) :
    ∃ Q, AreaEquiv P Q ∧ (IsTypeIII Q ∨ IsTypeIIHalf Q) := by
  classical
  obtain ⟨l, b, V, W, X, Y, Z, hb, hb1, hl, hl1, hV, hW, hX, hY, hZ, rfl⟩ := hP
  have hd : TypeIIData l b V W X Y Z := ⟨hb, hb1, hl, hl1, hV, hW, hX, hY, hZ⟩
  have hmem := typeIIConfig_mem hd
  set P := typeIIConfig l b V W X Y Z with hPdef
  rcases le_or_gt b (1 / 2) with hb2 | hb2
  · refine ⟨P, ⟨1, 0, 0, 1, 0, 0, 1, by norm_num, fun i => ?_⟩, Or.inr ⟨l, b, V, W, X, Y, Z,
      hd, hb2, rfl⟩⟩
    simp [affineMap]
  -- the minimizer of `(1-x)/(1-y)` over the points below the top side
  set S := (Finset.univ : Finset (Fin 9)).filter fun j => (P j).2 < 1 with hS
  have h3S : (3 : Fin 9) ∈ S := by simp [hS, hPdef, typeIIConfig]
  obtain ⟨i, hiS, himin⟩ := S.exists_min_image (fun j => (1 - (P j).1) / (1 - (P j).2)) ⟨3, h3S⟩
  simp only [hS, Finset.mem_filter, Finset.mem_univ, true_and] at hiS himin
  set τ := (1 - (P i).1) / (1 - (P i).2) with hτ
  have hyi : 0 < 1 - (P i).2 := by linarith
  have hτ0 : 0 ≤ τ := div_nonneg (by linarith [(hmem i).2.1]) hyi.le
  have hτb : τ ≤ 1 - b := by
    have := himin 3 (by simp [hPdef, typeIIConfig])
    simpa [hPdef, typeIIConfig] using this
  have hzero : 1 - (P i).1 - τ * (1 - (P i).2) = 0 := by
    rw [hτ, div_mul_cancel₀ _ hyi.ne']; ring
  have hsq : ∀ j, shearReflect τ (P j) ∈ unitSquare := by
    intro j
    obtain ⟨x0, x1, y0, y1⟩ := hmem j
    rw [shearReflect_apply]
    refine ⟨?_, by nlinarith, y0, y1⟩
    rcases eq_or_lt_of_le y1 with hy | hy
    · rw [hy]; linarith
    · have := himin j hy
      rw [div_le_div_iff₀ hyi (by linarith)] at this
      have e : τ * (1 - (P j).2) ≤ 1 - (P j).1 := by
        rw [hτ, div_mul_eq_mul_div, div_le_iff₀ hyi]; linarith
      linarith
  have hB' : shearReflect τ (P 3) = (1 - b - τ, 0) := by
    rw [shearReflect_apply]; simp [hPdef, typeIIConfig]
  -- `σ` sending `0, 1, 2` to `z, C, D`
  have caseIII3 : 1 - b - τ = 0 → ∃ Q, AreaEquiv P Q ∧ (IsTypeIII Q ∨ IsTypeIIHalf Q) := by
    intro h0
    exact shear_typeIII rfl (Equiv.swap 2 3 * Equiv.swap 0 2) 3 (by decide) (by decide)
      (by decide) hsq (by rw [hB', h0])
  rcases eq_or_lt_of_le (sub_nonneg.2 hτb) with hb0 | hb0
  · exact caseIII3 (by linarith)
  have hb0' : 0 < 1 - b - τ := by linarith
  have hb'2 : 1 - b - τ ≤ 1 / 2 := by linarith
  fin_cases i
  · simp [hPdef, typeIIConfig] at hiS
  · simp [hPdef, typeIIConfig] at hiS
  · exact shear_typeII rfl (Equiv.swap 0 1) 2 (by decide) (by decide) (by decide) (by decide)
      hsq hzero (by simp [hPdef, typeIIConfig]; exact hl) hiS hb0' hb'2
  · exfalso
    have : τ = 1 - b := by simp [hτ, hPdef, typeIIConfig]
    linarith
  · rcases eq_or_lt_of_le (hmem 4).2.2.1 with hy0 | hy0
    · refine shear_typeIII rfl (Equiv.swap 2 4 * Equiv.swap 0 2) 4 (by decide) (by decide)
        (by decide) hsq ?_
      rw [shearReflect_apply, ← hy0]
      ext
      · simpa [← hy0] using hzero
      · rfl
    · exact shear_typeII rfl (Equiv.swap 0 1 * Equiv.swap 2 4) 4 (by decide) (by decide)
        (by decide) (by decide) hsq hzero hy0 hiS hb0' hb'2
  · rcases eq_or_lt_of_le (hmem 5).2.2.1 with hy0 | hy0
    · refine shear_typeIII rfl (Equiv.swap 2 5 * Equiv.swap 0 2) 5 (by decide) (by decide)
        (by decide) hsq ?_
      rw [shearReflect_apply, ← hy0]
      ext
      · simpa [← hy0] using hzero
      · rfl
    · exact shear_typeII rfl (Equiv.swap 0 1 * Equiv.swap 2 5) 5 (by decide) (by decide)
        (by decide) (by decide) hsq hzero hy0 hiS hb0' hb'2
  · rcases eq_or_lt_of_le (hmem 6).2.2.1 with hy0 | hy0
    · refine shear_typeIII rfl (Equiv.swap 2 6 * Equiv.swap 0 2) 6 (by decide) (by decide)
        (by decide) hsq ?_
      rw [shearReflect_apply, ← hy0]
      ext
      · simpa [← hy0] using hzero
      · rfl
    · exact shear_typeII rfl (Equiv.swap 0 1 * Equiv.swap 2 6) 6 (by decide) (by decide)
        (by decide) (by decide) hsq hzero hy0 hiS hb0' hb'2
  · rcases eq_or_lt_of_le (hmem 7).2.2.1 with hy0 | hy0
    · refine shear_typeIII rfl (Equiv.swap 2 7 * Equiv.swap 0 2) 7 (by decide) (by decide)
        (by decide) hsq ?_
      rw [shearReflect_apply, ← hy0]
      ext
      · simpa [← hy0] using hzero
      · rfl
    · exact shear_typeII rfl (Equiv.swap 0 1 * Equiv.swap 2 7) 7 (by decide) (by decide)
        (by decide) (by decide) hsq hzero hy0 hiS hb0' hb'2
  · rcases eq_or_lt_of_le (hmem 8).2.2.1 with hy0 | hy0
    · refine shear_typeIII rfl (Equiv.swap 2 8 * Equiv.swap 0 2) 8 (by decide) (by decide)
        (by decide) hsq ?_
      rw [shearReflect_apply, ← hy0]
      ext
      · simpa [← hy0] using hzero
      · rfl
    · exact shear_typeII rfl (Equiv.swap 0 1 * Equiv.swap 2 8) 8 (by decide) (by decide)
        (by decide) (by decide) hsq hzero hy0 hiS hb0' hb'2

/-- **Equation (7)** (`TYPE_II:eq7`). `2A₀ > 7/64 > 1/10` (by `18²·65 - 145² = 35 > 0`).
`docs/proof/nine/TYPE_II.md`, lines 241–249. -/
theorem eq7 : (7 / 64 : ℝ) < 2 * A₀ ∧ (1 / 10 : ℝ) < 7 / 64 := by
  have := sqrt65_bounds
  unfold A₀
  constructor <;> linarith [this.1]

/-- **Claim** (`TYPE_II:claim-container-assignment`, made up). In a Type-II configuration of
positive least area, every free point is a left, a central or a right point (a point on `DB`,
`BC` or `DC` would make a zero-area triangle with its endpoints; points on the outer square
edges belong to their side container). `docs/proof/nine/TYPE_II.md`, lines 251–268.

Implicit in the manuscript: "no point on `DC`" (it would be collinear with `D, C`). -/
theorem claim_container_assignment {l b : ℝ} {V W X Y Z : Point}
    (hd : TypeIIData l b V W X Y Z)
    (hpos : 0 < minTriangleArea (typeIIConfig l b V W X Y Z)) (i : Fin 5) :
    IsLeft b (freePts V W X Y Z i) ∨ IsCentral b (freePts V W X Y Z i) ∨
      IsRight b (freePts V W X Y Z i) := by
  obtain ⟨hb, hb1, hl, hl1, hV, hW, hX, hY, hZ⟩ := hd
  have key : ∀ P : Point, P ∈ unitSquare → sarea ptD (ptB b) P ≠ 0 → sarea (ptB b) ptC P ≠ 0 →
      sarea ptC ptD P ≠ 0 → IsLeft b P ∨ IsCentral b P ∨ IsRight b P := by
    intro P hP h1 h2 h3
    obtain ⟨-, -, -, hy1⟩ := hP
    have h3' : 0 < sarea ptC ptD P := by
      rcases lt_or_gt_of_ne h3 with h | h
      · simp only [sarea, ptC, ptD] at h; linarith
      · exact h
    rcases lt_or_gt_of_ne h1 with h1 | h1
    · exact Or.inl h1
    rcases lt_or_gt_of_ne h2 with h2 | h2
    · exact Or.inr (Or.inr h2)
    · exact Or.inr (Or.inl ⟨h1, h2, h3'⟩)
  rw [typeIIConfig_eq] at hpos
  fin_cases i
  · exact key V hV (sarea_ne_zero_of_min_pos hpos 0 3 4) (sarea_ne_zero_of_min_pos hpos 3 1 4)
      (sarea_ne_zero_of_min_pos hpos 1 0 4)
  · exact key W hW (sarea_ne_zero_of_min_pos hpos 0 3 5) (sarea_ne_zero_of_min_pos hpos 3 1 5)
      (sarea_ne_zero_of_min_pos hpos 1 0 5)
  · exact key X hX (sarea_ne_zero_of_min_pos hpos 0 3 6) (sarea_ne_zero_of_min_pos hpos 3 1 6)
      (sarea_ne_zero_of_min_pos hpos 1 0 6)
  · exact key Y hY (sarea_ne_zero_of_min_pos hpos 0 3 7) (sarea_ne_zero_of_min_pos hpos 3 1 7)
      (sarea_ne_zero_of_min_pos hpos 1 0 7)
  · exact key Z hZ (sarea_ne_zero_of_min_pos hpos 0 3 8) (sarea_ne_zero_of_min_pos hpos 3 1 8)
      (sarea_ne_zero_of_min_pos hpos 1 0 8)

/-- **Equation (8)** (`TYPE_II:eq8`). `E` is a left point, and `ℓ + c + r = 6`.
`docs/proof/nine/TYPE_II.md`, lines 264–272.

Uses: TYPE_II:claim-container-assignment. -/
theorem eq8 {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hpos : 0 < minTriangleArea (typeIIConfig l b V W X Y Z)) :
    IsLeft b (ptE l) ∧
      (typeIICounts b V W X Y Z).1 + (typeIICounts b V W X Y Z).2.1 +
        (typeIICounts b V W X Y Z).2.2 = 6 := by
  classical
  have hb := hd.1
  have hl1 := hd.2.2.2.1
  refine ⟨by simp only [IsLeft, sarea, ptD, ptB, ptE]; nlinarith, ?_⟩
  have hsq : ∀ i, freePts V W X Y Z i ∈ unitSquare := by
    obtain ⟨-, -, -, -, hV, hW, hX, hY, hZ⟩ := hd
    intro i; fin_cases i <;> assumption
  have hone : ∀ i, ((if IsLeft b (freePts V W X Y Z i) then 1 else 0) +
      (if IsCentral b (freePts V W X Y Z i) then 1 else 0) +
      (if IsRight b (freePts V W X Y Z i) then 1 else 0) : ℕ) = 1 := by
    intro i
    have hLC : ¬ (IsLeft b (freePts V W X Y Z i) ∧ IsCentral b (freePts V W X Y Z i)) := by
      rintro ⟨h1, h2, -, -⟩; exact absurd h1 (not_lt.2 h2.le)
    have hCR : ¬ (IsCentral b (freePts V W X Y Z i) ∧ IsRight b (freePts V W X Y Z i)) := by
      rintro ⟨⟨-, h1, -⟩, h2⟩; exact absurd h1 (not_lt.2 h2.le)
    have hLR : ¬ (IsLeft b (freePts V W X Y Z i) ∧ IsRight b (freePts V W X Y Z i)) := by
      rintro ⟨h1, h2⟩
      obtain ⟨-, -, hy0, -⟩ := hsq i
      simp only [IsLeft, IsRight, sarea, ptD, ptB, ptC] at h1 h2
      linarith
    rcases claim_container_assignment hd hpos i with h | h | h <;> simp_all
  simp only [typeIICounts, countLeft, countCentral, countRight, Finset.card_filter]
  rw [add_assoc, add_assoc, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  simp only [← add_assoc, hone, Finset.sum_const, Finset.card_univ, Fintype.card_fin]
  norm_num

/-- Two free left points are impossible at least area `A₀` (`ℓ ≤ 2`): with `D, B, E` they are
five points in `T_L`, so the endpoint-triangle theorem gives `t ≤ kb/2 < A₀`. -/
theorem left_two_false {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hl : 0 < l)
    (hl1 : l < 1) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare) (hPL : IsLeft b P)
    (hQL : IsLeft b Q) (hmin : A₀ ≤ minTriangleArea ![ptB b, ptD, ptE l, P, Q]) : False := by
  have key := endpointTriangleTheorem (ptB b) ptD (0, 0) (ptE l) P Q (E_mem_TL hb hl.le hl1.le)
    (left_mem_TL hb hP hPL) (left_mem_TL hb hQ hQL)
  rw [area_TL b hb] at key
  have hk := kEnd_lt
  have hk0 := kEnd_pos
  have hA := A₀_bounds.1
  nlinarith

/-- Four free right points are impossible at least area `A₀` (`r ≤ 3`): with `B, C` they are six
points in `T_R`; a nontriangular hull gives `t ≤ 7(1-b)/128 < A₀`, a triangular one
`Γt ≤ (1-b)/2` and, with `b ≥ 2t` from `DBE`, `t ≤ 1/(2Γ+2) < A₀`. -/
theorem right_four_false {l b : ℝ} {P Q R S : Point} (hb : 0 < b) (hb1 : b < 1)
    (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare) (hR : R ∈ unitSquare) (hS : S ∈ unitSquare)
    (hPR : IsRight b P) (hQR : IsRight b Q) (hRR : IsRight b R) (hSR : IsRight b S)
    (hmin : A₀ ≤ minTriangleArea ![ptC, ptB b, P, Q, R, S]) (hDEB : 2 * A₀ ≤ b * (1 - l))
    (_hl : 0 < l) : False := by
  have key := sixPoint_pos (U := ptC) (V := ptB b) (W := (1, 0))
    (by simp [sarea, ptB, ptC]; linarith) (right_mem_TR hb1 hP hPR) (right_mem_TR hb1 hQ hQR)
    (right_mem_TR hb1 hR hRR) (right_mem_TR hb1 hS hSR)
  rw [area_TR b hb1] at key
  have hA := A₀_bounds.1
  rcases key with h | h
  · linarith
  · have hΓ : 17 / 2 < Γsix := by
      unfold Γsix
      have : 2 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
      linarith
    have hb' : 2 * A₀ ≤ b := by nlinarith
    nlinarith

/-- **Claim** (`TYPE_II:claim-count-bounds`). With least area at least `A₀` and `b ≤ 1/2`:
`c ≤ 3` (four central points contradict the seven-point triangular-hull bound), `ℓ ≤ 2` (three
free points in `T_L` give `s ≤ kb < 1/10` by (1)), `r ≤ 3` (the six-point bounds of
`CORNER_FAMILIES.md` §§6, 8 in `T_R`, with `b ≥ s` from `DBE`). Together with (8) exactly five
triples remain. `docs/proof/nine/TYPE_II.md`, lines 274–298.

Uses: CORNER_FAMILIES:TriangularHullLemma, TYPE_II:EndpointTriangleTheorem,
CORNER_FAMILIES:NontriangularHullLemma, CORNER_FAMILIES:SixPointTriangularHullTheorem,
TYPE_II:eq7, TYPE_II:eq8. -/
theorem claim_count_bounds {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hb2 : b ≤ 1 / 2) (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    (typeIICounts b V W X Y Z).2.1 ≤ 3 ∧ (typeIICounts b V W X Y Z).1 ≤ 2 ∧
      (typeIICounts b V W X Y Z).2.2 ≤ 3 ∧
      typeIICounts b V W X Y Z ∈
        ({(1, 2, 3), (1, 3, 2), (2, 1, 3), (2, 2, 2), (2, 3, 1)} : Finset (ℕ × ℕ × ℕ)) := by
  classical
  have hb := hd.1
  have hb1 := hd.2.1
  have hl := hd.2.2.1
  have hl1 := hd.2.2.2.1
  have hpos : 0 < minTriangleArea (typeIIConfig l b V W X Y Z) :=
    lt_of_lt_of_le A₀_pos hmin
  have hsum := (eq8 hd hpos).2
  have hDEB : 2 * A₀ ≤ b * (1 - l) := s_le_DEB hd (by linarith)
  -- `c ≤ 3`: the global occupancy corollary on the actual triangle `DBC`
  have hc : countCentral b (freePts V W X Y Z) ≤ 3 := by
    have hocc := CornerFamilies.globalOccupancyCorollary (typeIIConfig l b V W X Y Z)
      (typeIIConfig_mem hd) hmin 0 3 1
    have hinj : Function.Injective freeIdx := by decide
    have hsub : ((Finset.univ.filter fun i => IsCentral b (freePts V W X Y Z i)).map
        ⟨freeIdx, hinj⟩ : Set (Fin 9)) ⊆ {m | CornerFamilies.InsideTriangle
          (typeIIConfig l b V W X Y Z m) (typeIIConfig l b V W X Y Z 0)
          (typeIIConfig l b V W X Y Z 3) (typeIIConfig l b V W X Y Z 1)} := by
      intro m hm
      simp only [Finset.coe_map, Function.Embedding.coeFn_mk, Set.mem_image, Finset.mem_coe,
        Finset.mem_filter, Finset.mem_univ, true_and] at hm
      obtain ⟨i, hi, rfl⟩ := hm
      exact Or.inl (by rw [typeIIConfig_freeIdx]; exact hi)
    calc countCentral b (freePts V W X Y Z)
        = ((Finset.univ.filter fun i => IsCentral b (freePts V W X Y Z i)).map
            ⟨freeIdx, hinj⟩).card := (Finset.card_map _).symm
      _ = (((Finset.univ.filter fun i => IsCentral b (freePts V W X Y Z i)).map
            ⟨freeIdx, hinj⟩ : Finset (Fin 9)) : Set (Fin 9)).ncard := (Set.ncard_coe_finset _).symm
      _ ≤ _ := Set.ncard_le_ncard hsub (Set.toFinite _)
      _ ≤ 3 := hocc
  -- `ℓ ≤ 2`
  have hlft : countLeft b (freePts V W X Y Z) ≤ 1 := by
    by_contra hcon
    push Not at hcon
    obtain ⟨i, hi, j, hj, hij⟩ := Finset.one_lt_card.1 hcon
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi hj
    exact left_two_false hb hb2 hl hl1 (freePts_mem hd i) (freePts_mem hd j) hi hj
      (hmin.trans (min_le_sub_BDE2 i j hij))
  -- `r ≤ 3`
  have hrt : countRight b (freePts V W X Y Z) ≤ 3 := by
    by_contra hcon
    push Not at hcon
    have key : ∃ k : Fin 5, ∀ i, i ≠ k → IsRight b (freePts V W X Y Z i) := by
      by_contra hne
      push Not at hne
      obtain ⟨i, -, hi⟩ := hne 0
      obtain ⟨j, hji, hj⟩ := hne i
      have : countRight b (freePts V W X Y Z) ≤ ((Finset.univ : Finset (Fin 5)) \ {i, j}).card := by
        apply Finset.card_le_card
        intro m hm
        simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hm
        simp only [Finset.mem_sdiff, Finset.mem_univ, Finset.mem_insert, Finset.mem_singleton,
          true_and]
        rintro (rfl | rfl) <;> contradiction
      have h2 : ((Finset.univ : Finset (Fin 5)) \ {i, j}).card = 3 := by
        rw [Finset.card_sdiff, Finset.inter_univ, Finset.card_pair (Ne.symm hji)]; simp
      omega
    obtain ⟨k, hk⟩ := key
    have sq := freePts_mem hd
    fin_cases k
    · exact right_four_false (P := W) (Q := X) (R := Y) (S := Z) hb hb1 (sq 1) (sq 2) (sq 3)
        (sq 4) (hk 1 (by decide)) (hk 2 (by decide)) (hk 3 (by decide)) (hk 4 (by decide))
        (hmin.trans (min_le_min_reindex (by norm_num) _ _ ![1, 3, 5, 6, 7, 8] (by decide)
          (by funext m; fin_cases m <;> rfl))) hDEB hl
    · exact right_four_false (P := V) (Q := X) (R := Y) (S := Z) hb hb1 (sq 0) (sq 2) (sq 3)
        (sq 4) (hk 0 (by decide)) (hk 2 (by decide)) (hk 3 (by decide)) (hk 4 (by decide))
        (hmin.trans (min_le_min_reindex (by norm_num) _ _ ![1, 3, 4, 6, 7, 8] (by decide)
          (by funext m; fin_cases m <;> rfl))) hDEB hl
    · exact right_four_false (P := V) (Q := W) (R := Y) (S := Z) hb hb1 (sq 0) (sq 1) (sq 3)
        (sq 4) (hk 0 (by decide)) (hk 1 (by decide)) (hk 3 (by decide)) (hk 4 (by decide))
        (hmin.trans (min_le_min_reindex (by norm_num) _ _ ![1, 3, 4, 5, 7, 8] (by decide)
          (by funext m; fin_cases m <;> rfl))) hDEB hl
    · exact right_four_false (P := V) (Q := W) (R := X) (S := Z) hb hb1 (sq 0) (sq 1) (sq 2)
        (sq 4) (hk 0 (by decide)) (hk 1 (by decide)) (hk 2 (by decide)) (hk 4 (by decide))
        (hmin.trans (min_le_min_reindex (by norm_num) _ _ ![1, 3, 4, 5, 6, 8] (by decide)
          (by funext m; fin_cases m <;> rfl))) hDEB hl
    · exact right_four_false (P := V) (Q := W) (R := X) (S := Y) hb hb1 (sq 0) (sq 1) (sq 2)
        (sq 3) (hk 0 (by decide)) (hk 1 (by decide)) (hk 2 (by decide)) (hk 3 (by decide))
        (hmin.trans (min_le_min_reindex (by norm_num) _ _ ![1, 3, 4, 5, 6, 7] (by decide)
          (by funext m; fin_cases m <;> rfl))) hDEB hl
  simp only [typeIICounts] at hsum ⊢
  refine ⟨hc, by omega, hrt, ?_⟩
  have : (countLeft b (freePts V W X Y Z) = 0 ∧ countCentral b (freePts V W X Y Z) = 2 ∧
      countRight b (freePts V W X Y Z) = 3) ∨
      (countLeft b (freePts V W X Y Z) = 0 ∧ countCentral b (freePts V W X Y Z) = 3 ∧
      countRight b (freePts V W X Y Z) = 2) ∨
      (countLeft b (freePts V W X Y Z) = 1 ∧ countCentral b (freePts V W X Y Z) = 1 ∧
      countRight b (freePts V W X Y Z) = 3) ∨
      (countLeft b (freePts V W X Y Z) = 1 ∧ countCentral b (freePts V W X Y Z) = 2 ∧
      countRight b (freePts V W X Y Z) = 2) ∨
      (countLeft b (freePts V W X Y Z) = 1 ∧ countCentral b (freePts V W X Y Z) = 3 ∧
      countRight b (freePts V W X Y Z) = 1) := by omega
  rcases this with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ <;>
    simp [h1, h2, h3]

/-- One free left point: with `B, D, E` it gives `t ≤ b/6` (four-point endpoint lemma in
`T_L`), i.e. `3s ≤ b`. -/
theorem left_one_bound {l b : ℝ} {P : Point} (hb : 0 < b) (hl : 0 < l) (hl1 : l < 1)
    (hP : P ∈ unitSquare) (hPL : IsLeft b P) :
    minTriangleArea ![ptB b, ptD, ptE l, P] ≤ b / 6 := by
  have key := (fourPointEndpointLemma (ptB b) ptD (0, 0) (ptE l) P (E_mem_TL hb hl.le hl1.le)
    (left_mem_TL hb hP hPL)).1
  rw [area_TL b hb] at key
  linarith

/-- Three free right points: with `C, B` they give `t ≤ k(1-b)/2` (endpoint-triangle theorem in
`T_R`), i.e. `s ≤ k(1-b)`. -/
theorem right_three_bound {b : ℝ} {P Q R : Point} (hb1 : b < 1) (hP : P ∈ unitSquare)
    (hQ : Q ∈ unitSquare) (hR : R ∈ unitSquare) (hPR : IsRight b P) (hQR : IsRight b Q)
    (hRR : IsRight b R) :
    minTriangleArea ![ptC, ptB b, P, Q, R] ≤ kEnd * ((1 - b) / 2) := by
  have key := endpointTriangleTheorem ptC (ptB b) (1, 0) P Q R (right_mem_TR hb1 hP hPR)
    (right_mem_TR hb1 hQ hQR) (right_mem_TR hb1 hR hRR)
  rwa [area_TR b hb1] at key

/-- The scalar contradiction of (12): `s ≤ bv + λw`, `kw(1-v) ≥ s`, `b(1-λ) ≥ 3s` with
`w = 1 - b`, `0 < k < 0.172` and `s > 7/64` are incompatible (AM–GM). -/
theorem exclude213_scalar {b l v s k : ℝ} (hb : 0 < b) (hb1 : b < 1) (_hl : 0 ≤ l)
    (hk : 0 < k) (hk1 : k < 172 / 1000) (hs : 7 / 64 < s) (h1 : s ≤ b * v + l * (1 - b))
    (h2 : s ≤ k * (1 - b) * (1 - v)) (h3 : 3 * s ≤ b * (1 - l)) : False := by
  set w := 1 - b with hw
  have hw0 : 0 < w := by rw [hw]; linarith
  have e1 : k * w * b * (b * v) ≤ b ^ 2 * (k * w - s) := by nlinarith [mul_pos hb hb]
  have e2 : k * w * b * (l * w) ≤ k * w ^ 2 * (b - 3 * s) := by
    nlinarith [mul_pos (mul_pos hk hw0) hw0]
  have e3 : k * w * b * s ≤ k * w * b * (b * v + l * w) :=
    mul_le_mul_of_nonneg_left h1 (by positivity)
  have hbw : b + w = 1 := by rw [hw]; ring
  have key : s * (k * w * b + b ^ 2 + 3 * k * w ^ 2) ≤ k * w * b := by nlinarith
  have key' : 7 / 64 * (k * w * b + b ^ 2 + 3 * k * w ^ 2) ≤ k * w * b := by
    nlinarith [mul_le_mul_of_nonneg_right hs.le (by positivity :
      (0:ℝ) ≤ k * w * b + b ^ 2 + 3 * k * w ^ 2)]
  nlinarith [sq_nonneg (b - 57 * k / 14 * w), mul_pos (mul_pos hk hw0) hw0,
    mul_pos (mul_pos (mul_pos hk hw0) hw0) (by linarith : (0:ℝ) < 3 - 3249 / 196 * k)]

/-- `(2,1,3)`, right triangular case: two right points strictly inside `CBR`, so
`(1-b)/2 ≥ Kt` and, with `b ≥ 6t`, `t ≤ 1/(2K+6) < 7/128`. -/
theorem exclude213_tri {b t : ℝ} {R P Q : Point} (ht : 7 / 128 < t) (h3 : 6 * t ≤ b)
    (hR : sarea ptC (ptB b) R ≤ 1 - b) (hmin : t ≤ minTriangleArea ![ptC, ptB b, R, P, Q])
    (hP : InTriangle P ptC (ptB b) R) (hQ : InTriangle Q ptC (ptB b) R) : False := by
  have h2 := CornerFamilies.twoInteriorPointLemma ptC (ptB b) R P Q (Or.inl hP) (Or.inl hQ) t
    (by linarith) hmin
  have hpos : 0 < sarea ptC (ptB b) R := by
    have := sarea_add_sarea_add_sarea ptC (ptB b) R P
    obtain ⟨a1, a2, a3⟩ := hP
    linarith
  rw [triangleArea_eq, abs_of_pos hpos] at h2
  have := sqrt_three_gt
  nlinarith

/-- `(2,1,3)`, right support case (`TYPE_II.md` (11)–(12)): `H` extreme at `C`, the contact
`F = Q` extreme at `B` on the leg `BR'` of the support triangle `CBR'`, `R' = (u,v)`. The
endpoint-triangle theorem in `CBR'` gives `k(1-b)(1-v) ≥ s`, the actual triangle `BEQ` gives
`s ≤ bv + λ(1-b)`, and `b(1-λ) ≥ 3s`; `exclude213_scalar` concludes. -/
theorem exclude213_support {l b t : ℝ} {H F X : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 ≤ l)
    (ht : 7 / 128 < t) (_h3 : 6 * t ≤ b) (hl3 : 6 * t ≤ b * (1 - l))
    (hH : H ∈ unitSquare) (hF : F ∈ unitSquare) (_hX : X ∈ unitSquare)
    (hHR : IsRight b H) (hFR : IsRight b F) (hXR : IsRight b X)
    (hCHF : sarea ptC H F < 0) (hCHX : sarea ptC H X < 0) (hBFH : 0 < sarea (ptB b) F H)
    (hBFX : 0 < sarea (ptB b) F X) (hmin : t ≤ minTriangleArea ![ptC, ptB b, H, F, X])
    (hBEF : 2 * t ≤ |sarea (ptB b) (ptE l) F|) : False := by
  have hΔ : 0 < sarea ptC (ptB b) (1, 0) := by simp [sarea, ptB, ptC]; linarith
  obtain ⟨-, hH2, -, -⟩ := sarea_nonneg_of_mem_convexHull hΔ.le (right_mem_TR hb1 hH hHR)
  obtain ⟨hF1, -, -, -⟩ := sarea_nonneg_of_mem_convexHull hΔ.le (right_mem_TR hb1 hF hFR)
  have gH : 0 < sarea ptC (ptB b) H := by
    unfold IsRight at hHR; rw [show sarea ptC (ptB b) H = -sarea (ptB b) ptC H by
      unfold sarea; ring]; linarith
  have gF : 0 < sarea ptC (ptB b) F := by
    unfold IsRight at hFR; rw [show sarea ptC (ptB b) F = -sarea (ptB b) ptC F by
      unfold sarea; ring]; linarith
  have gX : 0 < sarea ptC (ptB b) X := by
    unfold IsRight at hXR; rw [show sarea ptC (ptB b) X = -sarea (ptB b) ptC X by
      unfold sarea; ring]; linarith
  obtain ⟨W', hΔ', -, -, hFs, hXs, hW'⟩ := support_apex hΔ gH hH2 gF hF1 hCHF hBFH
  have zH : sarea ptC H H = 0 := by unfold sarea; ring
  have zF : sarea (ptB b) F F = 0 := by unfold sarea; ring
  have key := endpointTriangleTheorem ptC (ptB b) W' H F X
    (hXs H gH.le zH.le hBFH.le) (hXs F gF.le hCHF.le zF.ge) (hXs X gX.le hCHX.le hBFX.le)
  rw [triangleArea_eq, abs_of_pos hΔ'] at key
  obtain ⟨w1, w2, -, -⟩ := sarea_nonneg_of_mem_convexHull hΔ.le hW'
  obtain ⟨a, c, ha, hc, hac, hFeq⟩ := hFs
  have hFy : F.2 = c * W'.2 := by rw [← hFeq]; simp [ptB]
  obtain ⟨-, hFx1, hFy0, -⟩ := hF
  unfold IsRight at hFR
  simp only [sarea, ptB, ptC, ptE] at w1 w2 hΔ' key hBEF hFR
  have hFb : b ≤ F.1 := by nlinarith
  rw [abs_of_nonpos (by nlinarith [mul_nonneg hb.le hFy0, mul_nonneg hl (sub_nonneg.2 hFb)])]
    at hBEF
  have hk := kEnd_lt
  have hk0 := kEnd_pos
  have hv : F.2 ≤ W'.2 := by rw [hFy]; nlinarith
  have hmk := hmin.trans key
  have h707 : (707 : ℝ) / 500 < Real.sqrt 2 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  clear hXs hmin key hFeq hW'
  refine exclude213_scalar (v := W'.2) (k := kEnd) (s := 2 * t) hb hb1 hl hk0
    (by unfold kEnd; linarith) (by linarith) ?_ ?_ (by linarith)
  · have e1 := mul_le_mul_of_nonneg_left hv hb.le
    have e2 := mul_le_mul_of_nonneg_left (by linarith : F.1 - b ≤ 1 - b) hl
    linarith
  · have e3 : (b - 1) * (W'.2 - 1) - (0 - 1) * (W'.1 - 1) ≤ (1 - b) * (1 - W'.2) := by linarith
    have e4 := mul_le_mul_of_nonneg_left e3 hk0.le
    nlinarith

/-- The right part of `(2,1,3)`: three right points `R₀, R₁, R₂`, the left facts `b ≥ 3s`,
`b(1-λ) ≥ 3s`, and least area `t > 7/128` of `C, B, R₀, R₁, R₂, E` are incompatible. -/
theorem exclude213_right {l b t : ℝ} {R0 R1 R2 : Point} (hb : 0 < b) (hb1 : b < 1)
    (hl : 0 < l) (ht : 7 / 128 < t) (h3 : 6 * t ≤ b) (hl3 : 6 * t ≤ b * (1 - l))
    (sq : ∀ i, ![R0, R1, R2] i ∈ unitSquare) (rt : ∀ i, IsRight b (![R0, R1, R2] i))
    (hmin6 : t ≤ minTriangleArea ![ptC, ptB b, R0, R1, R2, ptE l]) : False := by
  have hΔ : 0 < sarea ptC (ptB b) (1, 0) := by simp [sarea, ptB, ptC]; linarith
  have hpos : 0 < minTriangleArea ![ptC, ptB b, R0, R1, R2, ptE l] := by linarith
  have g : ∀ i, 0 < sarea ptC (ptB b) (![R0, R1, R2] i) := fun i => by
    have := rt i
    unfold IsRight at this
    rw [show sarea ptC (ptB b) (![R0, R1, R2] i) = -sarea (ptB b) ptC (![R0, R1, R2] i) by
      unfold sarea; ring]
    linarith
  have rmem : ∀ i, sarea ptC (ptB b) (![R0, R1, R2] i) ≤ 1 - b := fun i => by
    have := (sarea_nonneg_of_mem_convexHull hΔ.le (right_mem_TR hb1 (sq i) (rt i))).2.2.2
    simp only [sarea, ptB, ptC] at this ⊢; linarith
  have nU : ∀ i j : Fin 3, i ≠ j →
      sarea ptC (![R0, R1, R2] i) (![R0, R1, R2] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 0 2 3 | exact sarea_ne_zero_of_min_pos hpos 0 2 4
      | exact sarea_ne_zero_of_min_pos hpos 0 3 2 | exact sarea_ne_zero_of_min_pos hpos 0 3 4
      | exact sarea_ne_zero_of_min_pos hpos 0 4 2 | exact sarea_ne_zero_of_min_pos hpos 0 4 3
  have nV : ∀ i j : Fin 3, i ≠ j →
      sarea (ptB b) (![R0, R1, R2] i) (![R0, R1, R2] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 1 2 3 | exact sarea_ne_zero_of_min_pos hpos 1 2 4
      | exact sarea_ne_zero_of_min_pos hpos 1 3 2 | exact sarea_ne_zero_of_min_pos hpos 1 3 4
      | exact sarea_ne_zero_of_min_pos hpos 1 4 2 | exact sarea_ne_zero_of_min_pos hpos 1 4 3
  obtain ⟨i, hi⟩ := exists_extreme_left ptC (ptB b) _ g nU
  obtain ⟨j, hj⟩ := exists_extreme_right ptC (ptB b) _ g nV
  fin_cases i <;> fin_cases j
  · exact exclude213_tri ht h3 (rmem 0) (hmin6.trans (min_le_min_reindex (by norm_num) _ _
      ![0, 1, 2, 3, 4] (by decide) (by funext m; fin_cases m <;> rfl)))
      (inTriangle_of_extreme (g 1) (hi 1 (by decide)) (hj 1 (by decide)))
      (inTriangle_of_extreme (g 2) (hi 2 (by decide)) (hj 2 (by decide)))
  · exact exclude213_support hb hb1 hl.le ht h3 hl3 (sq 0) (sq 1) (sq 2) (rt 0) (rt 1) (rt 2)
      (hi 1 (by decide)) (hi 2 (by decide)) (hj 0 (by decide)) (hj 2 (by decide))
      (hmin6.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 3, 4] (by decide)
        (by funext m; fin_cases m <;> rfl)))
      (le_abs_sarea_of_le_min (P := ![ptC, ptB b, R0, R1, R2, ptE l]) (by linarith) 1 5 3)
  · exact exclude213_support hb hb1 hl.le ht h3 hl3 (sq 0) (sq 2) (sq 1) (rt 0) (rt 2) (rt 1)
      (hi 2 (by decide)) (hi 1 (by decide)) (hj 0 (by decide)) (hj 1 (by decide))
      (hmin6.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 4, 3] (by decide)
        (by funext m; fin_cases m <;> rfl)))
      (le_abs_sarea_of_le_min (P := ![ptC, ptB b, R0, R1, R2, ptE l]) (by linarith) 1 5 4)
  · exact exclude213_support hb hb1 hl.le ht h3 hl3 (sq 1) (sq 0) (sq 2) (rt 1) (rt 0) (rt 2)
      (hi 0 (by decide)) (hi 2 (by decide)) (hj 1 (by decide)) (hj 2 (by decide))
      (hmin6.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 3, 2, 4] (by decide)
        (by funext m; fin_cases m <;> rfl)))
      (le_abs_sarea_of_le_min (P := ![ptC, ptB b, R0, R1, R2, ptE l]) (by linarith) 1 5 2)
  · exact exclude213_tri ht h3 (rmem 1) (hmin6.trans (min_le_min_reindex (by norm_num) _ _
      ![0, 1, 3, 2, 4] (by decide) (by funext m; fin_cases m <;> rfl)))
      (inTriangle_of_extreme (g 0) (hi 0 (by decide)) (hj 0 (by decide)))
      (inTriangle_of_extreme (g 2) (hi 2 (by decide)) (hj 2 (by decide)))
  · exact exclude213_support hb hb1 hl.le ht h3 hl3 (sq 1) (sq 2) (sq 0) (rt 1) (rt 2) (rt 0)
      (hi 2 (by decide)) (hi 0 (by decide)) (hj 1 (by decide)) (hj 0 (by decide))
      (hmin6.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 3, 4, 2] (by decide)
        (by funext m; fin_cases m <;> rfl)))
      (le_abs_sarea_of_le_min (P := ![ptC, ptB b, R0, R1, R2, ptE l]) (by linarith) 1 5 4)
  · exact exclude213_support hb hb1 hl.le ht h3 hl3 (sq 2) (sq 0) (sq 1) (rt 2) (rt 0) (rt 1)
      (hi 0 (by decide)) (hi 1 (by decide)) (hj 2 (by decide)) (hj 1 (by decide))
      (hmin6.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 4, 2, 3] (by decide)
        (by funext m; fin_cases m <;> rfl)))
      (le_abs_sarea_of_le_min (P := ![ptC, ptB b, R0, R1, R2, ptE l]) (by linarith) 1 5 2)
  · exact exclude213_support hb hb1 hl.le ht h3 hl3 (sq 2) (sq 1) (sq 0) (rt 2) (rt 1) (rt 0)
      (hi 1 (by decide)) (hi 0 (by decide)) (hj 2 (by decide)) (hj 0 (by decide))
      (hmin6.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 4, 3, 2] (by decide)
        (by funext m; fin_cases m <;> rfl)))
      (le_abs_sarea_of_le_min (P := ![ptC, ptB b, R0, R1, R2, ptE l]) (by linarith) 1 5 3)
  · exact exclude213_tri ht h3 (rmem 2) (hmin6.trans (min_le_min_reindex (by norm_num) _ _
      ![0, 1, 4, 2, 3] (by decide) (by funext m; fin_cases m <;> rfl)))
      (inTriangle_of_extreme (g 0) (hi 0 (by decide)) (hj 0 (by decide)))
      (inTriangle_of_extreme (g 1) (hi 1 (by decide)) (hj 1 (by decide)))

/-- **Claim** (`TYPE_II:claim-exclude-213`). The count class `(2,1,3)` is impossible at least
area `A₀` (with `b ≤ 1/2`): the left hull is the triangle `DBE`, the right five-point hull is not
triangular, and the actual triangle `BEQ` with the contact `Q` of the right support triangle
`BCR'` gives `s ≤ 1/(1 + 2√(3/k)) < 7/64`, (9)–(12). `docs/proof/nine/TYPE_II.md`, lines 302–383.

Uses: TYPE_II:FourPointEndpointLemma, CORNER_FAMILIES:TwoInteriorPointLemma,
TYPE_II:claim-support-normalization, TYPE_II:EndpointTriangleTheorem, TYPE_II:eq7. -/
theorem claim_exclude_213 {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hb2 : b ≤ 1 / 2) (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    typeIICounts b V W X Y Z ≠ (2, 1, 3) := by
  classical
  intro hc
  have hb := hd.1
  have hb1 := hd.2.1
  have hl := hd.2.2.1
  have hl1 := hd.2.2.2.1
  simp only [typeIICounts, Prod.mk.injEq] at hc
  obtain ⟨hL, -, hR⟩ := hc
  have hL1 : countLeft b (freePts V W X Y Z) = 1 := by omega
  obtain ⟨p, hp⟩ := Finset.card_eq_one.1 hL1
  have hpL : IsLeft b (freePts V W X Y Z p) := by
    have := Finset.mem_singleton_self p
    rw [← hp] at this
    simpa using this
  obtain ⟨r0, r1, r2, h01, h02, h12, hr⟩ := Finset.card_eq_three.1 hR
  have rt : ∀ r ∈ ({r0, r1, r2} : Finset (Fin 5)), IsRight b (freePts V W X Y Z r) := by
    intro r hr'
    rw [← hr] at hr'
    simpa using hr'
  set t := minTriangleArea (typeIIConfig l b V W X Y Z) with htdef
  have ht : 7 / 128 < t := lt_of_lt_of_le A₀_bounds.1 hmin
  -- the left set `B, D, E, P`
  have h4 : t ≤ minTriangleArea ![ptB b, ptD, ptE l, freePts V W X Y Z p] :=
    min_le_sub_BDE1 p
  have h3 : 6 * t ≤ b := by
    have := left_one_bound hb hl hl1 (freePts_mem hd p) hpL; linarith
  have hR3 : t ≤ kEnd * ((1 - b) / 2) :=
    (min_le_sub_CB3 r0 r1 r2 h01 h12 h02).trans (right_three_bound hb1 (freePts_mem hd r0)
      (freePts_mem hd r1) (freePts_mem hd r2) (rt r0 (by simp)) (rt r1 (by simp))
      (rt r2 (by simp)))
  have hpos4 : 0 < minTriangleArea ![ptB b, ptD, ptE l, freePts V W X Y Z p] := by linarith
  have nBPE : sarea (ptB b) (freePts V W X Y Z p) (ptE l) ≠ 0 :=
    sarea_ne_zero_of_min_pos hpos4 0 3 2
  have nDEP : sarea ptD (ptE l) (freePts V W X Y Z p) ≠ 0 :=
    sarea_ne_zero_of_min_pos hpos4 1 2 3
  set P := freePts V W X Y Z p with hPdef
  have hPsq := freePts_mem hd p
  rw [← hPdef] at hPsq
  obtain ⟨hPx0, -, hPy0, -⟩ := hPsq
  have hDEP : 0 < sarea ptD (ptE l) P := by
    have e : sarea ptD (ptE l) P = (1 - l) * P.1 := by simp [sarea, ptD, ptE]; ring
    rw [e] at nDEP ⊢
    rcases lt_or_gt_of_ne nDEP with h | h
    · nlinarith
    · exact h
  have hBDP : 0 < sarea (ptB b) ptD P := by
    unfold IsLeft at hpL
    rw [show sarea (ptB b) ptD P = -sarea ptD (ptB b) P by unfold sarea; ring]; linarith
  have hk := kEnd_lt
  have hk0 := kEnd_pos
  rcases lt_or_gt_of_ne nBPE with hq | hq
  · -- quadrilateral left hull: `b ≥ 4s`
    have hperm : ![ptB b, ptD, P, ptE l] = ![ptB b, ptD, ptE l, P] ∘ Equiv.swap (2 : Fin 4) 3 := by
      funext m; fin_cases m <;> rfl
    have hq4 := fourPoint_support_case (U := ptB b) (V := ptD) (W := (0, 0)) (H := P)
      (F := ptE l) (by simp [sarea, ptB, ptD]; linarith) hBDP
      (by simp [sarea, ptB]; positivity) (by simp [sarea, ptB, ptD, ptE]; nlinarith)
      (by simp [sarea, ptD, ptE]) hq hDEP
      (by rw [hperm, minTriangleArea_comp_perm]; exact hpos4)
    rw [hperm, minTriangleArea_comp_perm, area_TL b hb] at hq4
    have h707 : (707 : ℝ) / 500 < Real.sqrt 2 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    have hk' : kEnd < 18 / 100 := by unfold kEnd; linarith
    have e1 := mul_le_mul_of_nonneg_left (by linarith : 8 * t ≤ b) hk0.le
    have e2 := mul_le_mul_of_nonneg_left ht.le hk0.le
    nlinarith
  · -- `P` inside `DEB`: `b(1-λ) ≥ 3s`
    have e1 := sarea_ge_of_le_min_of_pos (by linarith) h4 1 2 3 hDEP
    have hEBP : 0 < sarea (ptE l) (ptB b) P := by
      rw [show sarea (ptE l) (ptB b) P = sarea (ptB b) P (ptE l) by unfold sarea; ring]; exact hq
    have e2 := sarea_ge_of_le_min_of_pos (by linarith) h4 2 0 3 hEBP
    have e3 := sarea_ge_of_le_min_of_pos (by linarith) h4 0 1 3 hBDP
    have hsum := sarea_add_sarea_add_sarea ptD (ptE l) (ptB b) P
    have hDEB : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp [sarea, ptD, ptE, ptB]; ring
    have hl3 : 6 * t ≤ b * (1 - l) := by
      simp only [Matrix.cons_val] at e1 e2 e3
      linarith
    have hinj : ∀ i j k : Fin 5, i ≠ j → j ≠ k → i ≠ k →
        Function.Injective (![1, 3, freeIdx i, freeIdx j, freeIdx k, 2] : Fin 6 → Fin 9) := by
      decide
    have hmin6 : t ≤ minTriangleArea ![ptC, ptB b, freePts V W X Y Z r0, freePts V W X Y Z r1,
        freePts V W X Y Z r2, ptE l] := by
      refine min_le_min_reindex (by norm_num) _ _ _ (hinj r0 r1 r2 h01 h12 h02) ?_
      funext m; fin_cases m <;> simp [typeIIConfig_freeIdx] <;> rfl
    refine exclude213_right hb hb1 hl ht h3 hl3 (fun i => ?_) (fun i => ?_) hmin6
    · fin_cases i <;> exact freePts_mem hd _
    · fin_cases i
      · exact rt r0 (by simp)
      · exact rt r1 (by simp)
      · exact rt r2 (by simp)

/-- **Claim** (`TYPE_II:claim-scope-four-rows`). After §4, with `s = 2t` the doubled least area
and `0 < b ≤ 1/2`, the counts are one of four rows, with the necessary ranges
`(1,2,3)`: `s ≤ b ≤ 1 - s/k`; `(1,3,2)`: `s ≤ b ≤ 1/2`; `(2,2,2)` and `(2,3,1)`:
`3s ≤ b ≤ 1/2`. `docs/proof/nine/TYPE_II.md`, lines 385–403.

Uses: TYPE_II:claim-count-bounds, TYPE_II:claim-exclude-213, TYPE_II:EndpointTriangleTheorem,
TYPE_II:FourPointEndpointLemma. -/
theorem claim_scope_four_rows {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hb2 : b ≤ 1 / 2) (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    let s := 2 * minTriangleArea (typeIIConfig l b V W X Y Z)
    (typeIICounts b V W X Y Z = (1, 2, 3) ∧ s ≤ b ∧ b ≤ 1 - s / kEnd) ∨
      (typeIICounts b V W X Y Z = (1, 3, 2) ∧ s ≤ b ∧ b ≤ 1 / 2) ∨
      (typeIICounts b V W X Y Z = (2, 2, 2) ∧ 3 * s ≤ b ∧ b ≤ 1 / 2) ∨
      (typeIICounts b V W X Y Z = (2, 3, 1) ∧ 3 * s ≤ b ∧ b ≤ 1 / 2) := by
  classical
  intro s
  have hb := hd.1
  have hb1 := hd.2.1
  have hl := hd.2.2.1
  have hl1 := hd.2.2.2.1
  obtain ⟨-, -, -, hmem⟩ := claim_count_bounds hd hb2 hmin
  have hne := claim_exclude_213 hd hb2 hmin
  simp only [Finset.mem_insert, Finset.mem_singleton] at hmem
  have hsDEB : s ≤ b * (1 - l) := s_le_DEB hd (by simp [s])
  have hs0 : 0 ≤ s := by simp only [s]; linarith [minTriangleArea_nonneg (typeIIConfig l b V W X Y Z)]
  have hsb : s ≤ b := by nlinarith
  -- one free left point gives `3s ≤ b`
  have left3 : countLeft b (freePts V W X Y Z) = 1 → 3 * s ≤ b := by
    intro hL1
    obtain ⟨p, hp⟩ := Finset.card_eq_one.1 hL1
    have hpL : IsLeft b (freePts V W X Y Z p) := by
      have := Finset.mem_singleton_self p
      rw [← hp] at this
      simpa using this
    have := (min_le_sub_BDE1 (l := l) (b := b) (V := V) (W := W) (X := X) (Y := Y) (Z := Z)
      p).trans (left_one_bound hb hl hl1 (freePts_mem hd p) hpL)
    simp only [s]; linarith
  rcases hmem with h | h | h | h | h
  · left
    refine ⟨h, hsb, ?_⟩
    simp only [typeIICounts, Prod.mk.injEq] at h
    obtain ⟨r0, r1, r2, h01, h02, h12, hr⟩ := Finset.card_eq_three.1 h.2.2
    have rt : ∀ r ∈ ({r0, r1, r2} : Finset (Fin 5)), IsRight b (freePts V W X Y Z r) := by
      intro r hr'
      rw [← hr] at hr'
      simpa using hr'
    have h3 := (min_le_sub_CB3 (l := l) r0 r1 r2 h01 h12 h02).trans (right_three_bound hb1
      (freePts_mem hd r0) (freePts_mem hd r1) (freePts_mem hd r2) (rt r0 (by simp))
      (rt r1 (by simp)) (rt r2 (by simp)))
    rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ kEnd_pos]
    simp only [s]; linarith
  · exact Or.inr (Or.inl ⟨h, hsb, hb2⟩)
  · exact absurd h hne
  · refine Or.inr (Or.inr (Or.inl ⟨h, left3 ?_, hb2⟩))
    simp only [typeIICounts, Prod.mk.injEq] at h; omega
  · refine Or.inr (Or.inr (Or.inr ⟨h, left3 ?_, hb2⟩))
    simp only [typeIICounts, Prod.mk.injEq] at h; omega

end Heilbronn.Nine.TypeII
