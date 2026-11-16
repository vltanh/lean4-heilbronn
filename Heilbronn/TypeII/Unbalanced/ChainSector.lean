module

public import Heilbronn.TypeII.Unbalanced.ChainBasic
public import Heilbronn.Hulls.FourInteriorQuadrilaterals

/-! # Common-sector inequalities of `FOUR_INTERIOR_QUADRILATERALS.md` for an actual quadrilateral

The normalized inequalities (2), (4), (5) of `hand/FOUR_INTERIOR_QUADRILATERALS.md`
(`FourInteriorQuadrilaterals.eq2`, `claim_4`, `claim_5`) transported to an arbitrary
counterclockwise convex quadrilateral `ABCD` by its normal frame (`FourInteriorQuadrilaterals.claim_1`)
and rescaled to its doubled area `W = [ABC] + [ACD]`, with `a = [ABD]`, `b = [ABC]` the two
containing triangles of the sector at the edge `AB` and `σ` the doubled threshold:

* `sector_one` (2): one point in the sector gives `σ(a + b + W) ≤ ab`;
* `sector_same` (4): two points whose line leaves `A, B` on one side give `ab - σ(a + b) > 0` and
  `4σabW ≤ (ab - σ(a + b))²`;
* `sector_iso` (5): two points whose line separates `A` from `B` give, when `C, D` are on the
  side of `B`, `ab - σ(W + a) > 0` and `4σabW ≤ (ab - σ(W + a))²`, and when `C, D` are on the
  side of `A`, the same with `W + b`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedChain

open FourInteriorQuadrilaterals

/-- The normal frame of a convex quadrilateral, with its doubled area `W = [ABC] + [ACD]`. -/
theorem frame {A B C D : Point} (hq : UnbalancedRightHull.ConvexQuad A B C D) :
    let W := sarea A B C + sarea A C D
    0 < W ∧ 0 < sarea A B D / W ∧ sarea A B D / W < 1 ∧ 0 < sarea A B C / W ∧
      sarea A B C / W < 1 ∧
      ∃ α β γ δ ε ζ : ℝ, α * δ - β * γ = 1 / W ∧
        affineMap α β γ δ ε ζ A = (0, 0) ∧ affineMap α β γ δ ε ζ B = (1, 0) ∧
        affineMap α β γ δ ε ζ D = (0, sarea A B D / W) ∧
        affineMap α β γ δ ε ζ C = ((1 - sarea A B C / W) / (sarea A B D / W), sarea A B C / W) := by
  intro W
  have hq' : QuadrilateralHull.ConvexQuad A B C D := hq
  have e : 2 * QuadrilateralHull.quadArea A B C D = W := by
    unfold QuadrilateralHull.quadArea; ring
  obtain ⟨h1, h2, h3, h4, -, -, α, β, γ, δ, ε, ζ, hdet, hA, hB, hD, hC⟩ := claim_1 hq'
  rw [e] at h1 h2 h3 h4 hdet hD hC
  have hW : 0 < W := by
    have h2 : 0 < sarea A C D := by rw [← sarea_cycle]; exact hq.2.2.1
    simp only [W]; linarith [hq.1]
  exact ⟨hW, h1, h2, h3, h4, α, β, γ, δ, ε, ζ, hdet, hA, hB, hD, hC⟩

theorem inTriangle_affine {X A B C : Point} {α β γ δ ε ζ : ℝ} (hdet : 0 < α * δ - β * γ)
    (h : InTriangle X A B C) :
    InTriangle (affineMap α β γ δ ε ζ X) (affineMap α β γ δ ε ζ A) (affineMap α β γ δ ε ζ B)
      (affineMap α β γ δ ε ζ C) := by
  obtain ⟨h1, h2, h3⟩ := h
  simp only [InTriangle, sarea_affineMap]
  exact ⟨mul_pos hdet h1, mul_pos hdet h2, mul_pos hdet h3⟩

/-- **(2) for an actual quadrilateral.** A point in the common sector at the edge `AB` gives
`σ([ABD] + [ABC] + W) ≤ [ABD][ABC]`. -/
theorem sector_one {A B C D X : Point} {σ : ℝ} (hσ : 0 < σ)
    (hq : UnbalancedRightHull.ConvexQuad A B C D) (hX₁ : InTriangle X A B C)
    (hX₂ : InTriangle X A B D) (hmin : σ / 2 ≤ minTriangleArea ![A, B, C, D, X]) :
    σ * (sarea A B D + sarea A B C + (sarea A B C + sarea A C D)) ≤
      sarea A B D * sarea A B C := by
  obtain ⟨hW, ha0, ha1, hb0, hb1, α, β, γ, δ, ε, ζ, hdet, eA, eB, eD, eC⟩ := frame hq
  set W := sarea A B C + sarea A C D with hWdef
  set a := sarea A B D / W with ha
  set b := sarea A B C / W with hb
  have hdet' : 0 < α * δ - β * γ := by rw [hdet]; positivity
  have hX : InSector (affineMap α β γ δ ε ζ X) (0, 0) (1, 0) ((1 - b) / a, b) (0, a) := by
    have h1 := inTriangle_affine (ε := ε) (ζ := ζ) hdet' hX₁
    have h2 := inTriangle_affine (ε := ε) (ζ := ζ) hdet' hX₂
    rw [eA, eB, eC] at h1; rw [eA, eB, eD] at h2
    exact ⟨h1, h2⟩
  have e : ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), affineMap α β γ δ ε ζ X] =
      affineMap α β γ δ ε ζ ∘ ![A, B, C, D, X] := by
    funext i; fin_cases i <;> simp [eA, eB, eC, eD]
  have hmin' : σ / W / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a),
      affineMap α β γ δ ε ζ X] := by
    rw [e, minTriangleArea_affineMap, abs_of_pos hdet', hdet]
    have := mul_le_mul_of_nonneg_left hmin (by positivity : (0 : ℝ) ≤ 1 / W)
    calc σ / W / 2 = 1 / W * (σ / 2) := by ring
      _ ≤ _ := this
  obtain ⟨h1, h2, h3⟩ := eq2 ha0 ha1 hb0 hb1 (by positivity) hX hmin'
  -- `a b - s(a + b) ≥ u ≥ s`
  have key : σ / W * (a + b) + σ / W ≤ a * b := by
    have i1 : σ / W / b + (1 - b) * (affineMap α β γ δ ε ζ X).2 / (a * b) ≤ 1 - (σ / W + (affineMap α β γ δ ε ζ X).2) / a := h2.trans h3
    have i2 : σ / W * a + (1 - b) * (affineMap α β γ δ ε ζ X).2 ≤ a * b - b * (σ / W + (affineMap α β γ δ ε ζ X).2) := by
      have := mul_le_mul_of_nonneg_left i1 (by positivity : (0 : ℝ) ≤ a * b)
      have e1 : a * b * (σ / W / b + (1 - b) * (affineMap α β γ δ ε ζ X).2 / (a * b)) =
          σ / W * a + (1 - b) * (affineMap α β γ δ ε ζ X).2 := by field_simp
      have e2 : a * b * (1 - (σ / W + (affineMap α β γ δ ε ζ X).2) / a) = a * b - b * (σ / W + (affineMap α β γ δ ε ζ X).2) := by
        field_simp
      linarith
    nlinarith
  have hWa : sarea A B D = a * W := by rw [ha]; field_simp
  have hWb : sarea A B C = b * W := by rw [hb]; field_simp
  rw [hWa, hWb]
  have : σ / W * (a + b) * W ^ 2 + σ / W * W ^ 2 ≤ a * b * W ^ 2 := by
    have := mul_le_mul_of_nonneg_right key (by positivity : (0 : ℝ) ≤ W ^ 2); linarith
  have e3 : σ / W * (a + b) * W ^ 2 + σ / W * W ^ 2 = σ * (a * W + b * W + W) := by
    field_simp
  nlinarith

/-- The six-point configuration of a sector pair, transported to the normal frame. -/
theorem sector_pair_frame {A B C D P Q : Point} {σ : ℝ}
    (hq : UnbalancedRightHull.ConvexQuad A B C D) (hP₁ : InTriangle P A B C)
    (hP₂ : InTriangle P A B D) (hQ₁ : InTriangle Q A B C) (hQ₂ : InTriangle Q A B D)
    (hmin : σ / 2 ≤ minTriangleArea ![A, B, C, D, P, Q]) :
    let W := sarea A B C + sarea A C D
    let a := sarea A B D / W
    let b := sarea A B C / W
    0 < W ∧ 0 < a ∧ a < 1 ∧ 0 < b ∧ b < 1 ∧
    ∃ M : Point → Point, ∃ d : ℝ, 0 < d ∧ d = 1 / W ∧
      (∀ X Y Z, sarea (M X) (M Y) (M Z) = d * sarea X Y Z) ∧
      M A = (0, 0) ∧ M B = (1, 0) ∧ M C = ((1 - b) / a, b) ∧ M D = (0, a) ∧
      InSector (M P) (0, 0) (1, 0) ((1 - b) / a, b) (0, a) ∧
      InSector (M Q) (0, 0) (1, 0) ((1 - b) / a, b) (0, a) ∧
      σ / W / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), M P, M Q] := by
  intro W a b
  obtain ⟨hW, ha0, ha1, hb0, hb1, α, β, γ, δ, ε, ζ, hdet, eA, eB, eD, eC⟩ := frame hq
  have hdet' : 0 < α * δ - β * γ := by rw [hdet]; positivity
  refine ⟨hW, ha0, ha1, hb0, hb1, affineMap α β γ δ ε ζ, α * δ - β * γ, hdet', hdet,
    fun X Y Z => sarea_affineMap _ _ _ _ _ _ _ _ _, eA, eB, eC, eD, ?_, ?_, ?_⟩
  · have h1 := inTriangle_affine (ε := ε) (ζ := ζ) hdet' hP₁
    have h2 := inTriangle_affine (ε := ε) (ζ := ζ) hdet' hP₂
    rw [eA, eB, eC] at h1; rw [eA, eB, eD] at h2
    exact ⟨h1, h2⟩
  · have h1 := inTriangle_affine (ε := ε) (ζ := ζ) hdet' hQ₁
    have h2 := inTriangle_affine (ε := ε) (ζ := ζ) hdet' hQ₂
    rw [eA, eB, eC] at h1; rw [eA, eB, eD] at h2
    exact ⟨h1, h2⟩
  · have e : ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), affineMap α β γ δ ε ζ P,
        affineMap α β γ δ ε ζ Q] = affineMap α β γ δ ε ζ ∘ ![A, B, C, D, P, Q] := by
      funext i; fin_cases i <;> simp [eA, eB, eC, eD, a, b, W]
    rw [e, minTriangleArea_affineMap, abs_of_pos hdet', hdet]
    have := mul_le_mul_of_nonneg_left hmin (by positivity : (0 : ℝ) ≤ 1 / W)
    calc σ / W / 2 = 1 / W * (σ / 2) := by ring
      _ ≤ _ := this

theorem sq_rescale {σ W a b N : ℝ} (hW : 0 < W) (h : 4 * (σ / W * a * b) ≤ (N / W ^ 2) ^ 2) :
    4 * σ * (a * W) * (b * W) * W ≤ N ^ 2 := by
  have e5 : (N / W ^ 2) ^ 2 * W ^ 4 = N ^ 2 := by field_simp
  have e6 : 4 * (σ / W * a * b) * W ^ 4 = 4 * σ * (a * W) * (b * W) * W := by field_simp
  nlinarith [mul_le_mul_of_nonneg_right h (pow_nonneg hW.le 4)]

/-- **(4) for an actual quadrilateral.** Two points in the common sector at `AB` whose line leaves
`A, B` on the same side. -/
theorem sector_same {A B C D P Q : Point} {σ : ℝ} (hσ : 0 < σ)
    (hq : UnbalancedRightHull.ConvexQuad A B C D) (hP₁ : InTriangle P A B C)
    (hP₂ : InTriangle P A B D) (hQ₁ : InTriangle Q A B C) (hQ₂ : InTriangle Q A B D)
    (hmin : σ / 2 ≤ minTriangleArea ![A, B, C, D, P, Q])
    (hsame : 0 < sarea P Q A * sarea P Q B) :
    0 < sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C) ∧
      4 * σ * sarea A B D * sarea A B C * (sarea A B C + sarea A C D) ≤
        (sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C)) ^ 2 := by
  obtain ⟨hW, ha0, ha1, hb0, hb1, M, d, hd, hdW, hM, eA, eB, eC, eD, hP, hQ, hmin'⟩ :=
    sector_pair_frame hq hP₁ hP₂ hQ₁ hQ₂ hmin
  set W := sarea A B C + sarea A C D with hWdef
  set a := sarea A B D / W with ha
  set b := sarea A B C / W with hb
  have hs : 0 < sarea (M P) (M Q) (0, 0) * sarea (M P) (M Q) (1, 0) := by
    rw [← eA, ← eB, hM, hM]
    have : d * sarea P Q A * (d * sarea P Q B) = d ^ 2 * (sarea P Q A * sarea P Q B) := by ring
    rw [this]; positivity
  obtain ⟨k1, k2⟩ := claim_4 ha0 ha1 hb0 hb1 (by positivity) hP hQ hmin' hs
  have hWa : sarea A B D = a * W := by rw [ha]; field_simp
  have hWb : sarea A B C = b * W := by rw [hb]; field_simp
  have hX : a * b - σ / W * (a + b) = (a * W * (b * W) - σ * (a * W + b * W)) / W ^ 2 := by
    field_simp
  rw [hWa, hWb]
  have hsq : 4 * (σ / W * a * b) ≤ (a * b - σ / W * (a + b)) ^ 2 := by
    have h0 : 0 ≤ σ / W * a * b := by positivity
    have := Real.sq_sqrt h0
    nlinarith [Real.sqrt_nonneg (σ / W * a * b)]
  rw [hX] at k1 hsq
  constructor
  · have := (div_pos_iff_of_pos_right (by positivity : (0 : ℝ) < W ^ 2)).1 k1; exact this
  · exact sq_rescale hW hsq

/-- **(5) for an actual quadrilateral.** Two points in the common sector at `AB` whose line puts
`A` on its negative and `B` on its positive side. -/
theorem sector_iso {A B C D P Q : Point} {σ : ℝ} (hσ : 0 < σ)
    (hq : UnbalancedRightHull.ConvexQuad A B C D) (hP₁ : InTriangle P A B C)
    (hP₂ : InTriangle P A B D) (hQ₁ : InTriangle Q A B C) (hQ₂ : InTriangle Q A B D)
    (hmin : σ / 2 ≤ minTriangleArea ![A, B, C, D, P, Q])
    (hA : sarea P Q A < 0) (hB : 0 < sarea P Q B) :
    let W := sarea A B C + sarea A C D
    (0 < sarea P Q C → 0 < sarea P Q D →
      0 < sarea A B D * sarea A B C - σ * (W + sarea A B D) ∧
      4 * σ * sarea A B D * sarea A B C * W ≤
        (sarea A B D * sarea A B C - σ * (W + sarea A B D)) ^ 2) ∧
    (sarea P Q C < 0 → sarea P Q D < 0 →
      0 < sarea A B D * sarea A B C - σ * (W + sarea A B C) ∧
      4 * σ * sarea A B D * sarea A B C * W ≤
        (sarea A B D * sarea A B C - σ * (W + sarea A B C)) ^ 2) := by
  intro W
  obtain ⟨hW, ha0, ha1, hb0, hb1, M, d, hd, hdW, hM, eA, eB, eC, eD, hP, hQ, hmin'⟩ :=
    sector_pair_frame hq hP₁ hP₂ hQ₁ hQ₂ hmin
  have hW' : (0 : ℝ) < W := hW
  clear hW
  set a := sarea A B D / W with ha
  set b := sarea A B C / W with hb
  have sgn : ∀ X, sarea (M P) (M Q) (M X) = d * sarea P Q X := fun X => hM P Q X
  have k := claim_5 ha0 ha1 hb0 hb1 (by positivity) hP hQ hmin'
    (by rw [← eA, sgn]; exact mul_neg_of_pos_of_neg hd hA)
    (by rw [← eB, sgn]; exact mul_pos hd hB)
  have hWa : sarea A B D = a * W := by rw [ha]; field_simp
  have hWb : sarea A B C = b * W := by rw [hb]; field_simp
  -- the rescaling of `x b - s(1 + y)`
  have resc : ∀ y : ℝ, (0 < a * b - σ / W * (1 + y) ∧
      4 * (σ / W) * a * b ≤ (a * b - σ / W * (1 + y)) ^ 2) →
      0 < a * W * (b * W) - σ * (W + y * W) ∧
      4 * σ * (a * W) * (b * W) * W ≤ (a * W * (b * W) - σ * (W + y * W)) ^ 2 := by
    intro y ⟨k1, k2⟩
    have hX : a * b - σ / W * (1 + y) = (a * W * (b * W) - σ * (W + y * W)) / W ^ 2 := by
      field_simp
    rw [hX] at k1 k2
    refine ⟨(div_pos_iff_of_pos_right (by positivity : (0 : ℝ) < W ^ 2)).1 k1, ?_⟩
    exact sq_rescale hW' (by rw [show 4 * (σ / W * a * b) = 4 * (σ / W) * a * b by ring]; exact k2)
  refine ⟨fun hC hD => ?_, fun hC hD => ?_⟩
  · have := resc a ((k.1 (by rw [← eC, sgn]; exact mul_pos hd hC)
      (by rw [← eD, sgn]; exact mul_pos hd hD)).symm)
    rw [hWa, hWb]; exact this
  · have := resc b ((k.2 (by rw [← eC, sgn]; exact mul_neg_of_pos_of_neg hd hC)
      (by rw [← eD, sgn]; exact mul_neg_of_pos_of_neg hd hD)).symm)
    rw [hWa, hWb]; exact this

end Heilbronn.UnbalancedChain
