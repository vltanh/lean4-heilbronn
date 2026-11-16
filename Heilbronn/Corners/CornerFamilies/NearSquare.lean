module

public import Heilbronn.Corners.CornerFamilies.SixPoint
public import Heilbronn.Corners.FourCorners

/-! # Corner families, §9: the near-square quadrilateral and the `2+4` class
(`hand/CORNER_FAMILIES.md`, lines 727–860)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). A projective map with
controlled area factor (the "controlled projective transfer") sends a quadrilateral
`ABCR`, `A = (0,0)`, `B = (0,1)`, `C = (1,1)`, `R = (1 - ε, η)`, onto the unit square, fixing
`A, B, C` and sending `R` to `D = (1,0)`; with `FOUR_CORNERS.md` this bounds nine points with
hull `ABCR` when `r = 1 - ε - η ≥ 193/200`, and closes the Type-III class with two upper points.

Definitions (23): with `r = 1 - ε - η`, `α = (1 - η)/(1 - ε)`, `g = -η(1 - η)/(r(1 - ε))`,
`h = ε/r`, `e = (1 - η)/r = 1 + h`, the denominator `q(x, y) = 1 + gx + hy` (`nsDenom`) and
`F(x, y) = (αx/q, (gx + ey)/q)` (`projMap`); `nearSquareQuad ε η = conv{A, B, C, R}`.

**Results.** `claim_projMap_vertices`, `claim_projMap_square`, `eq24` (exact area ratio
`det M/(q₁q₂q₃)` with `det M = αe`), `claim_projective_transfer` (the general transfer bound
`4r²/(1 + r)²`), `eq25`, `nearSquareQuadrilateralLemma` (22), `two_four_core`, `typeIII_2plus4`.

**Changes.** `nearSquareQuad` is the quadrilateral given by its four edge inequalities (not a
convex hull); `claim_projMap_square` states `MapsTo` (the manuscript's bijectivity is not used);
`nearSquareQuadrilateralLemma` assumes the points lie in `ABCR` and contain its four vertices
(instead of "the convex hull is `ABCR`").
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-! ### The projective map (23) -/

/-- `α = (1 - η)/(1 - ε)`. -/
def nsAlpha (ε η : ℝ) : ℝ := (1 - η) / (1 - ε)

/-- `g = -η(1 - η)/(r(1 - ε))`, `r = 1 - ε - η`. -/
def nsG (ε η : ℝ) : ℝ := -(η * (1 - η)) / ((1 - ε - η) * (1 - ε))

/-- `h = ε/r`. -/
def nsH (ε η : ℝ) : ℝ := ε / (1 - ε - η)

/-- `e = (1 - η)/r = 1 + h`. -/
def nsE (ε η : ℝ) : ℝ := (1 - η) / (1 - ε - η)

/-- The linear denominator `q(x, y) = 1 + gx + hy` of (23). -/
def nsDenom (ε η : ℝ) (p : Point) : ℝ := 1 + nsG ε η * p.1 + nsH ε η * p.2

/-- The projective map (23): `F(x, y) = (αx/q, (gx + ey)/q)`. -/
def projMap (ε η : ℝ) (p : Point) : Point :=
  (nsAlpha ε η * p.1 / nsDenom ε η p, (nsG ε η * p.1 + nsE ε η * p.2) / nsDenom ε η p)

/-- The quadrilateral `ABCR`, `R = (1 - ε, η)`, by its four edge inequalities: `x ≥ 0`, `y ≤ 1`,
and on the side of `B` of the lines `AR` and `RC`. For `ε, η ≥ 0`, `r = 1 - ε - η > 0` this is
`conv{(0,0), (0,1), (1,1), (1 - ε, η)}`. -/
def nearSquareQuad (ε η : ℝ) : Set Point :=
  {p | 0 ≤ p.1 ∧ p.2 ≤ 1 ∧ 0 ≤ sarea (0, 0) (1 - ε, η) p ∧ 0 ≤ sarea (1 - ε, η) (1, 1) p}

/-- The scalar identities behind (23): `e = 1 + h`, `q(C) = α`, `g + e = α`, `q(R) = 1 - η`,
`α(1 - ε) = 1 - η`, `g(1 - ε) + eη = 0`. -/
theorem ns_scalars (ε η : ℝ) (h1 : 1 - ε ≠ 0) (hr : 1 - ε - η ≠ 0) :
    nsE ε η = 1 + nsH ε η ∧ 1 + nsG ε η + nsH ε η = nsAlpha ε η ∧
      nsG ε η + nsE ε η = nsAlpha ε η ∧ 1 + nsG ε η * (1 - ε) + nsH ε η * η = 1 - η ∧
      nsAlpha ε η * (1 - ε) = 1 - η ∧ nsG ε η * (1 - ε) + nsE ε η * η = 0 := by
  simp only [nsE, nsH, nsG, nsAlpha]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩ <;> field_simp <;> ring

/-- The denominator on the quadrilateral: `q = (1 - η) + ε(1 - η)/(r(1 - ε))·[ARp] + (η/r)·[RCp]`
and `e - q = (ε/r)(1 - y) + η(1 - η)x/(r(1 - ε))`. -/
theorem nsDenom_eq (ε η : ℝ) (hε1 : 1 - ε ≠ 0) (hr : 1 - ε - η ≠ 0) (p : Point) :
    nsDenom ε η p = (1 - η) + ε * (1 - η) / ((1 - ε - η) * (1 - ε)) * sarea (0, 0) (1 - ε, η) p +
      η / (1 - ε - η) * sarea (1 - ε, η) (1, 1) p ∧
    nsE ε η - nsDenom ε η p = ε / (1 - ε - η) * (1 - p.2) +
      η * (1 - η) / ((1 - ε - η) * (1 - ε)) * p.1 := by
  simp only [nsDenom, nsE, nsG, nsH, sarea]
  constructor <;> field_simp <;> ring

/-- The generic projective area identity: for `F(x, y) = (αx/q, (gx + ey)/q)`,
`q = 1 + gx + hy`, `[F p₁ F p₂ F p₃] = αe/(q₁q₂q₃) · [p₁p₂p₃]`. -/
theorem proj_sarea' (α g h e x₁ y₁ x₂ y₂ x₃ y₃ q₁ q₂ q₃ : ℝ) (h₁ : q₁ ≠ 0) (h₂ : q₂ ≠ 0)
    (h₃ : q₃ ≠ 0) (e₁ : q₁ = 1 + g * x₁ + h * y₁) (e₂ : q₂ = 1 + g * x₂ + h * y₂)
    (e₃ : q₃ = 1 + g * x₃ + h * y₃) :
    sarea (α * x₁ / q₁, (g * x₁ + e * y₁) / q₁) (α * x₂ / q₂, (g * x₂ + e * y₂) / q₂)
      (α * x₃ / q₃, (g * x₃ + e * y₃) / q₃) =
    α * e / (q₁ * q₂ * q₃) * sarea (x₁, y₁) (x₂, y₂) (x₃, y₃) := by
  unfold sarea
  field_simp
  subst e₁ e₂ e₃
  ring

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), lines 763–777: for `ε, η ≥ 0` and
`r = 1 - ε - η > 0`, the denominator takes the values `q(A) = 1`, `q(B) = e`, `q(C) = α`,
`q(R) = 1 - η`, all in `[1 - η, e]`, hence `q ∈ [1 - η, e]` on the quadrilateral; and `F` fixes
`A, B, C` and sends `R` to `(1, 0)`. -/
theorem claim_projMap_vertices (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 0 < 1 - ε - η) :
    nsDenom ε η (0, 0) = 1 ∧ nsDenom ε η (0, 1) = nsE ε η ∧
      nsDenom ε η (1, 1) = nsAlpha ε η ∧ nsDenom ε η (1 - ε, η) = 1 - η ∧
      (∀ p ∈ nearSquareQuad ε η, 1 - η ≤ nsDenom ε η p ∧ nsDenom ε η p ≤ nsE ε η) ∧
      projMap ε η (0, 0) = (0, 0) ∧ projMap ε η (0, 1) = (0, 1) ∧
      projMap ε η (1, 1) = (1, 1) ∧ projMap ε η (1 - ε, η) = (1, 0) := by
  have h1 : 0 < 1 - ε := by linarith
  have h2 : 0 < 1 - η := by linarith
  obtain ⟨s1, s2, s3, s4, s5, s6⟩ := ns_scalars ε η h1.ne' hr.ne'
  have he : 0 < nsE ε η := by unfold nsE; positivity
  have hα : 0 < nsAlpha ε η := by unfold nsAlpha; positivity
  have d0 : nsDenom ε η (0, 0) = 1 := by simp [nsDenom]
  have d1 : nsDenom ε η (0, 1) = nsE ε η := by simp only [nsDenom]; linarith
  have d2 : nsDenom ε η (1, 1) = nsAlpha ε η := by simp only [nsDenom]; linarith
  have d3 : nsDenom ε η (1 - ε, η) = 1 - η := by simp only [nsDenom]; linarith
  refine ⟨d0, d1, d2, d3, ?_, ?_, ?_, ?_, ?_⟩
  · intro p hp
    obtain ⟨x0, y1, sA, sC⟩ := hp
    obtain ⟨e1, e2⟩ := nsDenom_eq ε η h1.ne' hr.ne' p
    constructor
    · rw [e1]
      have : 0 ≤ ε * (1 - η) / ((1 - ε - η) * (1 - ε)) * sarea (0, 0) (1 - ε, η) p := by positivity
      have : 0 ≤ η / (1 - ε - η) * sarea (1 - ε, η) (1, 1) p := by positivity
      linarith
    · have : 0 ≤ ε / (1 - ε - η) * (1 - p.2) := mul_nonneg (by positivity) (by linarith)
      have : 0 ≤ η * (1 - η) / ((1 - ε - η) * (1 - ε)) * p.1 := by positivity
      linarith
  · unfold projMap; rw [d0]; simp
  · unfold projMap; rw [d1]; ext
    · simp
    · show (nsG ε η * 0 + nsE ε η * 1) / nsE ε η = 1
      rw [mul_zero, zero_add, mul_one, div_self he.ne']
  · unfold projMap; rw [d2]; ext
    · show nsAlpha ε η * 1 / nsAlpha ε η = 1
      rw [mul_one, div_self hα.ne']
    · show (nsG ε η * 1 + nsE ε η * 1) / nsAlpha ε η = 1
      rw [mul_one, mul_one, s3, div_self hα.ne']
  · unfold projMap; rw [d3]; ext
    · show nsAlpha ε η * (1 - ε) / (1 - η) = 1
      rw [s5, div_self h2.ne']
    · show (nsG ε η * (1 - ε) + nsE ε η * η) / (1 - η) = 0
      rw [s6, zero_div]

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), lines 779–793: `F` maps the
quadrilateral `ABCR` into the unit square: `F_x ≥ 0 ⟺ x ≥ 0`, `F_y ≤ 1 ⟺ y ≤ 1`,
`F_y ≥ 0 ⟺ [ARp] ≥ 0`, `F_x ≤ 1 ⟺ [RCp] ≥ 0`. (Restated: the manuscript also proves the map is
onto; only the inclusion is used.) -/
theorem claim_projMap_square (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 0 < 1 - ε - η) :
    Set.MapsTo (projMap ε η) (nearSquareQuad ε η) unitSquare := by
  intro p hp
  have hq := ((claim_projMap_vertices ε η hε hη hr).2.2.2.2.1 p hp).1
  have h1 : 0 < 1 - ε := by linarith
  have h2 : 0 < 1 - η := by linarith
  have hq0 : 0 < nsDenom ε η p := by linarith
  obtain ⟨x0, y1, sA, sC⟩ := hp
  have eA : nsG ε η * p.1 + nsE ε η * p.2 =
      (1 - η) / ((1 - ε - η) * (1 - ε)) * sarea (0, 0) (1 - ε, η) p := by
    simp only [nsG, nsE, sarea]; field_simp; ring
  have eC : nsDenom ε η p - nsAlpha ε η * p.1 = sarea (1 - ε, η) (1, 1) p / (1 - ε - η) := by
    simp only [nsDenom, nsAlpha, nsG, nsH, sarea]; field_simp; ring
  have eB : nsDenom ε η p - (nsG ε η * p.1 + nsE ε η * p.2) = 1 - p.2 := by
    simp only [nsDenom, nsG, nsE, nsH]; field_simp; ring
  have hα : 0 < nsAlpha ε η := by unfold nsAlpha; positivity
  refine ⟨?_, ?_, ?_, ?_⟩
  · show 0 ≤ nsAlpha ε η * p.1 / nsDenom ε η p
    exact div_nonneg (mul_nonneg hα.le x0) hq0.le
  · show nsAlpha ε η * p.1 / nsDenom ε η p ≤ 1
    rw [div_le_one hq0]
    have : 0 ≤ sarea (1 - ε, η) (1, 1) p / (1 - ε - η) := by positivity
    linarith
  · show 0 ≤ (nsG ε η * p.1 + nsE ε η * p.2) / nsDenom ε η p
    rw [eA]; positivity
  · show (nsG ε η * p.1 + nsE ε η * p.2) / nsDenom ε η p ≤ 1
    rw [div_le_one hq0]; linarith

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), equation (24), exact form: for
three points of the quadrilateral, `area(F P₁ F P₂ F P₃) = (det M/(q(P₁)q(P₂)q(P₃))) area(P₁P₂P₃)`
with `det M = αe`, and the factor is at least `α/e² = r²/((1 - ε)(1 - η))`.
`hand/CORNER_FAMILIES.md`, lines 795–804. -/
theorem eq24 (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 0 < 1 - ε - η) (P₁ P₂ P₃ : Point)
    (h₁ : P₁ ∈ nearSquareQuad ε η) (h₂ : P₂ ∈ nearSquareQuad ε η)
    (h₃ : P₃ ∈ nearSquareQuad ε η) :
    triangleArea (projMap ε η P₁) (projMap ε η P₂) (projMap ε η P₃) =
        nsAlpha ε η * nsE ε η / (nsDenom ε η P₁ * nsDenom ε η P₂ * nsDenom ε η P₃) *
          triangleArea P₁ P₂ P₃ ∧
      (1 - ε - η) ^ 2 / ((1 - ε) * (1 - η)) ≤
        nsAlpha ε η * nsE ε η / (nsDenom ε η P₁ * nsDenom ε η P₂ * nsDenom ε η P₃) := by
  have hv := claim_projMap_vertices ε η hε hη hr
  obtain ⟨q1l, q1u⟩ := hv.2.2.2.2.1 P₁ h₁
  obtain ⟨q2l, q2u⟩ := hv.2.2.2.2.1 P₂ h₂
  obtain ⟨q3l, q3u⟩ := hv.2.2.2.2.1 P₃ h₃
  have h1 : 0 < 1 - ε := by linarith
  have h2 : 0 < 1 - η := by linarith
  have q1 : 0 < nsDenom ε η P₁ := by linarith
  have q2 : 0 < nsDenom ε η P₂ := by linarith
  have q3 : 0 < nsDenom ε η P₃ := by linarith
  have hα : 0 < nsAlpha ε η := by unfold nsAlpha; positivity
  have he : 0 < nsE ε η := by unfold nsE; positivity
  constructor
  · have := proj_sarea' (nsAlpha ε η) (nsG ε η) (nsH ε η) (nsE ε η) P₁.1 P₁.2 P₂.1 P₂.2 P₃.1 P₃.2
      _ _ _ q1.ne' q2.ne' q3.ne' rfl rfl rfl
    simp only [triangleArea_eq]
    unfold projMap
    rw [this, abs_mul, abs_of_pos (by positivity)]
    ring
  · have hprod : nsDenom ε η P₁ * nsDenom ε η P₂ * nsDenom ε η P₃ ≤ nsE ε η ^ 3 := by
      have := mul_le_mul (mul_le_mul q1u q2u q2.le he.le) q3u q3.le (by positivity)
      nlinarith
    have hfac : (1 - ε - η) ^ 2 / ((1 - ε) * (1 - η)) = nsAlpha ε η * nsE ε η / nsE ε η ^ 3 := by
      unfold nsAlpha nsE; field_simp
    rw [hfac]
    exact div_le_div_of_nonneg_left (by positivity) (by positivity) hprod

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), the controlled projective
transfer in general form: for `ε, η ≥ 0` with `r = 1 - ε - η > 0`, every triangle with vertices
in `ABCR` has its image under `F` of area at least `4r²/(1 + r)²` times its own (from (24) and
`(1 - ε)(1 - η) = r + εη ≤ (1 + r)²/4`). `hand/CORNER_FAMILIES.md`, lines 795–819.

Uses: CORNER_FAMILIES:NearSquareQuadrilateralLemma (24) -/
theorem claim_projective_transfer (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 0 < 1 - ε - η)
    (P₁ P₂ P₃ : Point) (h₁ : P₁ ∈ nearSquareQuad ε η) (h₂ : P₂ ∈ nearSquareQuad ε η)
    (h₃ : P₃ ∈ nearSquareQuad ε η) :
    4 * (1 - ε - η) ^ 2 / (1 + (1 - ε - η)) ^ 2 * triangleArea P₁ P₂ P₃ ≤
      triangleArea (projMap ε η P₁) (projMap ε η P₂) (projMap ε η P₃) := by
  obtain ⟨e1, e2⟩ := eq24 ε η hε hη hr P₁ P₂ P₃ h₁ h₂ h₃
  rw [e1]
  have h1 : 0 < 1 - ε := by linarith
  have h2 : 0 < 1 - η := by linarith
  have hc : 4 * (1 - ε - η) ^ 2 / (1 + (1 - ε - η)) ^ 2 ≤ (1 - ε - η) ^ 2 / ((1 - ε) * (1 - η)) := by
    rw [div_le_div_iff₀ (by positivity) (by positivity)]
    nlinarith [sq_nonneg (ε - η), sq_nonneg (1 - ε - η)]
  exact mul_le_mul_of_nonneg_right (hc.trans e2) (triangleArea_nonneg _ _ _)

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), equation (25): for
`r = 1 - ε - η ≥ 193/200`, `r²/((1 - ε)(1 - η)) ≥ 4r²/(1 + r)² ≥ 148996/154449`.
`hand/CORNER_FAMILIES.md`, lines 806–825. -/
theorem eq25 (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 193 / 200 ≤ 1 - ε - η) :
    4 * (1 - ε - η) ^ 2 / (1 + (1 - ε - η)) ^ 2 ≤ (1 - ε - η) ^ 2 / ((1 - ε) * (1 - η)) ∧
      (148996 / 154449 : ℝ) ≤ 4 * (1 - ε - η) ^ 2 / (1 + (1 - ε - η)) ^ 2 := by
  have h1 : 0 < 1 - ε := by linarith
  have h2 : 0 < 1 - η := by linarith
  constructor
  · rw [div_le_div_iff₀ (by positivity) (by positivity)]
    nlinarith [sq_nonneg (ε - η), sq_nonneg (1 - ε - η)]
  · rw [le_div_iff₀ (by positivity)]
    nlinarith

/-- **Near-square quadrilateral lemma** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`),
equation (22): nine points in the quadrilateral `ABCR`, `A = (0,0)`, `B = (0,1)`, `C = (1,1)`,
`R = (1 - ε, η)`, including its four vertices, with `ε, η ≥ 0` and `r = 1 - ε - η ≥ 193/200`,
have minimum triangle area `t ≤ 154449/2830924 < 7/128`. (Restated: the manuscript's hypothesis
"the convex hull is `ABCR`" is written as membership of the points in `ABCR` and presence of its
vertices.) `hand/CORNER_FAMILIES.md`, lines 731–838.

Uses: CORNER_FAMILIES:NearSquareQuadrilateralLemma (23)–(25), FOUR_CORNERS:Theorem -/
theorem nearSquareQuadrilateralLemma (P : Fin 9 → Point) (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η)
    (hr : 193 / 200 ≤ 1 - ε - η) (hP : ∀ i, P i ∈ nearSquareQuad ε η)
    (hA : ∃ i, P i = (0, 0)) (hB : ∃ i, P i = (0, 1)) (hC : ∃ i, P i = (1, 1))
    (hR : ∃ i, P i = (1 - ε, η)) :
    minTriangleArea P ≤ 154449 / 2830924 ∧ (154449 / 2830924 : ℝ) < 7 / 128 := by
  refine ⟨?_, by norm_num⟩
  have hr0 : 0 < 1 - ε - η := by linarith
  have hv := claim_projMap_vertices ε η hε hη hr0
  have hsq : ∀ i, (projMap ε η ∘ P) i ∈ unitSquare :=
    fun i => claim_projMap_square ε η hε hη hr0 (hP i)
  have h19 := FourCorners.fourCornersTheorem (projMap ε η ∘ P) hsq
    (by obtain ⟨i, hi⟩ := hA; exact ⟨i, by simp [Function.comp, hi, hv.2.2.2.2.2.1]⟩)
    (by obtain ⟨i, hi⟩ := hB; exact ⟨i, by simp [Function.comp, hi, hv.2.2.2.2.2.2.1]⟩)
    (by obtain ⟨i, hi⟩ := hC; exact ⟨i, by simp [Function.comp, hi, hv.2.2.2.2.2.2.2.1]⟩)
    (by obtain ⟨i, hi⟩ := hR; exact ⟨i, by simp [Function.comp, hi, hv.2.2.2.2.2.2.2.2]⟩)
  obtain ⟨i, j, k, hij, hjk, he⟩ := exists_minTriangleArea_eq (by norm_num) (projMap ε η ∘ P)
  have ht := claim_projective_transfer ε η hε hη hr0 (P i) (P j) (P k) (hP i) (hP j) (hP k)
  have h25 := (eq25 ε η hε hη hr).2
  have hm := minTriangleArea_le_of_lt P hij hjk
  have hnn := minTriangleArea_nonneg P
  simp only [Function.comp] at he
  rw [he] at h19
  have : 148996 / 154449 * minTriangleArea P ≤ 1 / 19 := by
    calc 148996 / 154449 * minTriangleArea P
        ≤ 4 * (1 - ε - η) ^ 2 / (1 + (1 - ε - η)) ^ 2 * triangleArea (P i) (P j) (P k) :=
          mul_le_mul h25 hm hnn (by positivity)
      _ ≤ _ := ht
      _ ≤ 1 / 19 := h19
  linarith

/-- The `2+4` class with the upper points `U₁, U₂`, the third hull vertex `R` and the other three
lower points `L₁, L₂, L₃` in the closed triangle `ACR`: the minimum area is at most `7/128`
(lines 840–860). -/
theorem two_four_core {U₁ U₂ R L₁ L₂ L₃ : Point} (hU₁ : U₁ ∈ unitSquare) (hU₂ : U₂ ∈ unitSquare)
    (hR : R ∈ unitSquare) (hu₁ : U₁.1 < U₁.2) (hu₂ : U₂.1 < U₂.2) (hRl : R.2 < R.1)
    (hc₁ : InClosedTriangle L₁ (0, 0) R (1, 1)) (hc₂ : InClosedTriangle L₂ (0, 0) R (1, 1))
    (hc₃ : InClosedTriangle L₃ (0, 0) R (1, 1))
    (hmin : 7 / 128 < minTriangleArea ![(0, 0), (0, 1), (1, 1), U₁, U₂, R, L₁, L₂, L₃]) :
    False := by
  have ht : 0 < minTriangleArea ![(0, 0), (0, 1), (1, 1), U₁, U₂, R, L₁, L₂, L₃] :=
    lt_trans (by norm_num) hmin
  have hARC : 0 < sarea (0, 0) R (1, 1) := by unfold sarea; simp; linarith
  have closed_pos : ∀ L, InClosedTriangle L (0, 0) R (1, 1) →
      0 ≤ sarea (0, 0) R L ∧ 0 ≤ sarea R (1, 1) L ∧ 0 ≤ sarea (1, 1) (0, 0) L := by
    intro L hL
    rcases hL with h | ⟨h1, h2, h3⟩
    · exact h
    · exfalso; have := sarea_add_sarea_add_sarea (0, 0) R (1, 1) L; linarith
  have inside : ∀ (k : Fin 9) (L : Point),
      (![(0, 0), (0, 1), (1, 1), U₁, U₂, R, L₁, L₂, L₃] : Fin 9 → Point) k = L →
      InClosedTriangle L (0, 0) R (1, 1) →
      k ≠ 0 → k ≠ 5 → k ≠ 2 → InsideTriangle L (0, 0) R (1, 1) := by
    intro k L hk hL h0 h5 h2
    obtain ⟨g1, g2, g3⟩ := closed_pos L hL
    have n1 := sarea_ne_zero_of_min_pos ht 0 5 k (by decide) (Ne.symm h5) (Ne.symm h0)
    have n2 := sarea_ne_zero_of_min_pos ht 5 2 k (by decide) (Ne.symm h2) (Ne.symm h5)
    have n3 := sarea_ne_zero_of_min_pos ht 2 0 k (by decide) (Ne.symm h0) (Ne.symm h2)
    rw [hk] at n1 n2 n3
    exact Or.inl ⟨lt_of_le_of_ne g1 (Ne.symm n1), lt_of_le_of_ne g2 (Ne.symm n2),
      lt_of_le_of_ne g3 (Ne.symm n3)⟩
  have h4 := claim_fourth_vertex R L₁ L₂ L₃ hRl (inside 6 L₁ rfl hc₁ (by decide) (by decide)
    (by decide)) (inside 7 L₂ rfl hc₂ (by decide) (by decide) (by decide))
    (inside 8 L₃ rfl hc₃ (by decide) (by decide) (by decide)) _
    (min_sub (le_refl (minTriangleArea ![(0, 0), (0, 1), (1, 1), U₁, U₂, R, L₁, L₂, L₃])) _
      ![0, 5, 2, 6, 7, 8] (by norm_num) (by decide) (by intro i; fin_cases i <;> simp))
  have hs5 : (2.236 : ℝ) < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have hr : 193 / 200 ≤ 1 - (1 - R.1) - R.2 := by nlinarith
  have hR' : ((1 : ℝ) - (1 - R.1), R.2) = R := by ext <;> simp
  obtain ⟨r1, r2, r3, r4⟩ := hR
  have memq : ∀ p : Point, 0 ≤ p.1 → p.2 ≤ 1 → 0 ≤ sarea (0, 0) R p → 0 ≤ sarea R (1, 1) p →
      p ∈ nearSquareQuad (1 - R.1) R.2 := by
    intro p a b c d; refine ⟨a, b, ?_, ?_⟩ <;> rw [hR'] <;> assumption
  have memU : ∀ U : Point, U ∈ unitSquare → U.1 < U.2 → U ∈ nearSquareQuad (1 - R.1) R.2 := by
    intro U ⟨u1, u2, u3, u4⟩ hu
    apply memq U u1 u4
    · unfold sarea; simp
      nlinarith [mul_nonneg r3 (by linarith : (0 : ℝ) ≤ U.2 - U.1),
        mul_nonneg (by linarith : (0 : ℝ) ≤ R.1 - R.2) (by linarith : (0 : ℝ) ≤ U.2)]
    · unfold sarea
      nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - R.1) (by linarith : (0 : ℝ) ≤ U.2 - U.1),
        mul_nonneg (by linarith : (0 : ℝ) ≤ R.1 - R.2) (by linarith : (0 : ℝ) ≤ 1 - U.1)]
  have memL : ∀ L : Point, InClosedTriangle L (0, 0) R (1, 1) → L ∈ unitSquare →
      L ∈ nearSquareQuad (1 - R.1) R.2 := by
    intro L hL hLs
    obtain ⟨g1, g2, -⟩ := closed_pos L hL
    exact memq L hLs.1 hLs.2.2.2 g1 g2
  -- the lower points are in the square: inside `ACR ⊆ T`
  have sqL : ∀ L : Point, InClosedTriangle L (0, 0) R (1, 1) → L ∈ unitSquare := by
    intro L hL
    obtain ⟨g1, g2, g3⟩ := closed_pos L hL
    unfold sarea at g1 g2 g3; simp at g1 g2 g3
    refine ⟨?_, ?_, ?_, ?_⟩ <;> nlinarith
  have hmem : ∀ i, (![(0, 0), (0, 1), (1, 1), U₁, U₂, R, L₁, L₂, L₃] : Fin 9 → Point) i ∈
      nearSquareQuad (1 - R.1) R.2 := by
    intro i
    fin_cases i
    · exact memq (0, 0) le_rfl (by norm_num) (by unfold sarea; simp)
        (by unfold sarea; simp; nlinarith)
    · exact memq (0, 1) le_rfl le_rfl (by unfold sarea; simp; linarith)
        (by unfold sarea; simp; nlinarith)
    · exact memq (1, 1) (by norm_num) le_rfl (by unfold sarea; simp; linarith)
        (by unfold sarea; nlinarith)
    · exact memU U₁ hU₁ hu₁
    · exact memU U₂ hU₂ hu₂
    · exact memq R r1 r4 (by unfold sarea; nlinarith) (by unfold sarea; nlinarith)
    · exact memL L₁ hc₁ (sqL L₁ hc₁)
    · exact memL L₂ hc₂ (sqL L₂ hc₂)
    · exact memL L₃ hc₃ (sqL L₃ hc₃)
  have hns := nearSquareQuadrilateralLemma _ (1 - R.1) R.2 (by linarith) r3 hr hmem ⟨0, rfl⟩
    ⟨1, rfl⟩ ⟨2, rfl⟩ ⟨5, by simp⟩
  linarith [hns.1, hns.2]

/-- **Type-III exclusion, `2+4` class** (`CORNER_FAMILIES:TypeIII-2+4`): a Type-III configuration
with exactly two free points above `y = x` has minimum area at most `7/128` (`< A₀`): otherwise
the hull is `ABCR` with `r = r_x - r_y ≥ (11 + 3√5)t > 1239/1280 > 193/200`, and (22) gives
`t < 7/128`. `hand/CORNER_FAMILIES.md`, lines 47–57, 840–860.

Uses: CORNER_FAMILIES:claim-2+4-hull, CORNER_FAMILIES:claim-fourth-vertex,
CORNER_FAMILIES:NearSquareQuadrilateralLemma -/
theorem typeIII_2plus4 (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h2 : upperCount U V W X Y Z = 2) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  by_contra hcon
  push Not at hcon
  set P := typeIIIConfig U V W X Y Z with hPdef
  set F := freeSix U V W X Y Z
  have hpos : 0 < minTriangleArea P := lt_trans (by norm_num) hcon
  obtain ⟨u₁, u₂, hu, hs⟩ := Set.ncard_eq_two.1 h2
  have hup : ∀ e, (F e).1 < (F e).2 ↔ e = u₁ ∨ e = u₂ := by
    intro e
    have := congrArg (e ∈ ·) hs
    simpa using this
  have hlow : ∀ e, e ≠ u₁ → e ≠ u₂ → (F e).2 < (F e).1 := by
    intro e h1 h2
    have hn : ¬ (F e).1 < (F e).2 := fun h => by rcases (hup e).1 h with h | h <;> contradiction
    have hd := sarea_ne_zero_of_min_pos hpos 0 2 (fr e) (by decide) (fr_ne_small e).2.2.symm
      (fr_ne_small e).1.symm
    have e0 : P 0 = (0, 0) := by simp [hPdef, typeIIIConfig]
    have e2 : P 2 = (1, 1) := by simp [hPdef, typeIIIConfig]
    have e1 : P (fr e) = F e := typeIII_fr U V W X Y Z e
    rw [e0, e2, e1] at hd
    unfold sarea at hd; simp at hd
    push Not at hn
    exact lt_of_le_of_ne hn (fun h => hd (by linarith))
  have hT : 3 < ((Finset.univ : Finset (Fin 6)).erase u₁ |>.erase u₂).card := by
    rw [Finset.card_erase_of_mem (by simp [Ne.symm hu]), Finset.card_erase_of_mem (by simp)]
    simp
  obtain ⟨l₁, l₂, l₃, l₄, h1, h2, h3, h4, h12, h13, h14, h23, h24, h34⟩ :=
    Finset.three_lt_card_iff.1 hT
  simp only [Finset.mem_erase, Finset.mem_univ, and_true] at h1 h2 h3 h4
  obtain ⟨h1b, h1a⟩ := h1
  obtain ⟨h2b, h2a⟩ := h2
  obtain ⟨h3b, h3a⟩ := h3
  obtain ⟨h4b, h4a⟩ := h4
  have hsq := freeSix_mem hU hV hW hX hY hZ
  have hLT : ∀ e, e ≠ u₁ → e ≠ u₂ → F e ∈ lowerTriangle := fun e h1 h2 =>
    ⟨(hsq e).2.2.1, (hlow e h1 h2).le, (hsq e).2.1⟩
  have fs := fun e => fr_ne_small e
  have i1 := fr_ne h12
  have i2 := fr_ne h13
  have i3 := fr_ne h14
  have i4 := fr_ne h23
  have i5 := fr_ne h24
  have i6 := fr_ne h34
  have i7 := fr_ne hu
  have j1 := fr_ne h1a
  have j2 := fr_ne h2a
  have j3 := fr_ne h3a
  have j4 := fr_ne h4a
  have k1 := fr_ne h1b
  have k2 := fr_ne h2b
  have k3 := fr_ne h3b
  have k4 := fr_ne h4b
  obtain ⟨a1, a2, a3⟩ := fs l₁
  obtain ⟨b1, b2, b3⟩ := fs l₂
  obtain ⟨c1, c2, c3⟩ := fs l₃
  obtain ⟨d1, d2, d3⟩ := fs l₄
  obtain ⟨e1, e2, e3⟩ := fs u₁
  obtain ⟨f1, f2, f3⟩ := fs u₂
  have h6 : minTriangleArea P ≤ minTriangleArea ![(0, 0), (1, 1), F l₁, F l₂, F l₃, F l₄] :=
    min_sub (le_refl _) _ ![0, 2, fr l₁, fr l₂, fr l₃, fr l₄] (by norm_num) (by inj_tac)
      (by intro i; fin_cases i
          · simp [hPdef, typeIIIConfig]
          · simp [hPdef, typeIIIConfig]
          all_goals exact (typeIII_fr U V W X Y Z _).symm)
  rcases support_core (le_refl 6) ![(0, 0), (1, 1), F l₁, F l₂, F l₃, F l₄]
      (by intro i; fin_cases i
          · exact ⟨le_refl _, le_refl _, by norm_num⟩
          · exact ⟨by norm_num, le_refl _, le_refl _⟩
          · exact hLT l₁ h1a h1b
          · exact hLT l₂ h2a h2b
          · exact hLT l₃ h3a h3b
          · exact hLT l₄ h4a h4b)
      0 1 rfl rfl (lt_of_lt_of_le hpos h6) with h | ⟨r, hr0, hr1, hr⟩
  · linarith
  have hu₁ := (hup u₁).2 (Or.inl rfl)
  have hu₂ := (hup u₂).2 (Or.inr rfl)

  fin_cases r
  · exact absurd rfl hr0
  · exact absurd rfl hr1
  · exact two_four_core (hsq u₁) (hsq u₂) (hsq l₁) hu₁ hu₂ (hlow l₁ h1a h1b) (hr 3) (hr 4) (hr 5)
      (lt_of_lt_of_le hcon (min_sub (le_refl _) _
        ![0, 1, 2, fr u₁, fr u₂, fr l₁, fr l₂, fr l₃, fr l₄] (by norm_num) (by inj_tac)
        (by intro i; fin_cases i
            · simp [hPdef, typeIIIConfig]
            · simp [hPdef, typeIIIConfig]
            · simp [hPdef, typeIIIConfig]
            all_goals exact (typeIII_fr U V W X Y Z _).symm)))
  · exact two_four_core (hsq u₁) (hsq u₂) (hsq l₂) hu₁ hu₂ (hlow l₂ h2a h2b) (hr 2) (hr 4) (hr 5)
      (lt_of_lt_of_le hcon (min_sub (le_refl _) _
        ![0, 1, 2, fr u₁, fr u₂, fr l₂, fr l₁, fr l₃, fr l₄] (by norm_num) (by inj_tac)
        (by intro i; fin_cases i
            · simp [hPdef, typeIIIConfig]
            · simp [hPdef, typeIIIConfig]
            · simp [hPdef, typeIIIConfig]
            all_goals exact (typeIII_fr U V W X Y Z _).symm)))
  · exact two_four_core (hsq u₁) (hsq u₂) (hsq l₃) hu₁ hu₂ (hlow l₃ h3a h3b) (hr 2) (hr 3) (hr 5)
      (lt_of_lt_of_le hcon (min_sub (le_refl _) _
        ![0, 1, 2, fr u₁, fr u₂, fr l₃, fr l₁, fr l₂, fr l₄] (by norm_num) (by inj_tac)
        (by intro i; fin_cases i
            · simp [hPdef, typeIIIConfig]
            · simp [hPdef, typeIIIConfig]
            · simp [hPdef, typeIIIConfig]
            all_goals exact (typeIII_fr U V W X Y Z _).symm)))
  · exact two_four_core (hsq u₁) (hsq u₂) (hsq l₄) hu₁ hu₂ (hlow l₄ h4a h4b) (hr 2) (hr 3) (hr 4)
      (lt_of_lt_of_le hcon (min_sub (le_refl _) _
        ![0, 1, 2, fr u₁, fr u₂, fr l₄, fr l₁, fr l₂, fr l₃] (by norm_num) (by inj_tac)
        (by intro i; fin_cases i
            · simp [hPdef, typeIIIConfig]
            · simp [hPdef, typeIIIConfig]
            · simp [hPdef, typeIIIConfig]
            all_goals exact (typeIII_fr U V W X Y Z _).symm)))

end Heilbronn.CornerFamilies
