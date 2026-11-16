module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.Setting
public import Heilbronn.Nine.EightBoundary.RadialCatalogue
public import Heilbronn.Nine.EightBoundary.Basic
public import Heilbronn.Nine.SevenBoundary.Caps

/-! # The remaining upper exterior cap with seven boundary contacts (`docs/proof/nine/SEVEN_BOUNDARY_TOP_CAP.md`)

**Role.** Primary-route component of the seven-boundary exterior case: it excludes the
companion point `P` from three of the four side quadrilaterals of the exterior octagon
`A, B, C, D, E, X, F, H`, as needed by `SEVEN_BOUNDARY_TOP_CAP_RADIAL` §1 and the side tests (8)
of `SEVEN_BOUNDARY_EXTERIOR_COMPLETION`.

**Setting.** The normalized seven-boundary form (`SevenNormal a h b c d e f`,
`Heilbronn/Nine/SevenBoundary/Setting.lean`), one free point `X = (g,k)` strictly beyond `EF` in the far upper
cap (`FarCapPoint e f (g, k)`: `f < g < 1`, `e < k ≤ 1`), and the other free point `P` strictly
inside the anchor heptagon (`SEVEN_BOUNDARY_CAPS:claim-exterior-reduction`). The nine points are
`sevenConfig a h b c d e f (g, k) P`. Doubled threshold `s = 7/64`. The condition `k > h` is not
assumed here (it is `SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h`).

**Results.**
* `theorem1`: `P` is not in the quadrilateral `HEXF`;
* `theorem2`: `P` is not in `ABCD`;
* `theorem3`: `P` is not in `FHAB`;
* `claim_partial_central` (§4): hence `P` is strictly below `HE`, strictly above `AD` and strictly
  on the interior side of `BF`.

Each exclusion "P cannot lie in `W`" is stated as "`P` in the closed quadrilateral `W` gives a
triangle of area `< 7/128`" (a point on an edge or diagonal gives a zero triangle).

Proof gap (minor, Theorem 3, lines 206–210): `U² - (1-s)U + s ≤ 0` is derived from "the identity
`s/T = 1 - U - s/M`"; it also needs `s/M + s/T ≥ 2s/k(U)` from `M, T ≤ k(U)`, both stated at line
206. Stale scope text: lines 22–23, 273–275.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryTopCap

open SevenBoundary RadialCatalogue

/-! ### Helpers -/

theorem sqrt_two_gt' : (7 / 5 : ℝ) < Real.sqrt 2 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

/-- Four points with the four ordered triples positively oriented form a convex quadrilateral. -/
theorem isConvexPolygon_four {p₀ p₁ p₂ p₃ : Point} (h012 : 0 < sarea p₀ p₁ p₂)
    (h013 : 0 < sarea p₀ p₁ p₃) (h023 : 0 < sarea p₀ p₂ p₃) (h123 : 0 < sarea p₁ p₂ p₃) :
    IsConvexPolygon ![p₀, p₁, p₂, p₃] := by
  intro i j k hij hjk
  fin_cases i <;> fin_cases j <;> fin_cases k <;> simp_all

/-- Four weak edge conditions put a point in the closed quadrilateral. -/
theorem inClosedPolygon_four {p₀ p₁ p₂ p₃ X : Point} (h0 : 0 ≤ sarea p₀ p₁ X)
    (h1 : 0 ≤ sarea p₁ p₂ X) (h2 : 0 ≤ sarea p₂ p₃ X) (h3 : 0 ≤ sarea p₃ p₀ X) :
    InClosedPolygon ![p₀, p₁, p₂, p₃] X := by
  intro i
  fin_cases i <;> simpa [finRotate_apply] using ‹_›

/-- The barycentric identity: for an affine function `sarea Q R ·`,
`[QRP]·[ABC] = [BCP]·[QRA] + [CAP]·[QRB] + [ABP]·[QRC]`. -/
theorem sarea_bary (A B C P Q R : Point) :
    sarea Q R P * sarea A B C =
      sarea B C P * sarea Q R A + sarea C A P * sarea Q R B + sarea A B P * sarea Q R C := by
  simp only [sarea]; ring

/-- The sub-configuration of five points used by Lemma 3. -/
theorem min_five {n : ℕ} (P : Fin n → Point) (i₁ i₂ i₃ i₄ i₅ : Fin n)
    (hinj : Function.Injective ![i₁, i₂, i₃, i₄, i₅]) :
    minTriangleArea P ≤ minTriangleArea ![P i₁, P i₂, P i₃, P i₄, P i₅] := by
  have e : (![P i₁, P i₂, P i₃, P i₄, P i₅] : Fin 5 → Point) = P ∘ ![i₁, i₂, i₃, i₄, i₅] := by
    funext j; fin_cases j <;> rfl
  rw [e]; exact le_min_comp (by norm_num) P hinj

/-- **Lemma 3 at the threshold.** If `P` is in the closed convex quadrilateral `V₁V₂V₃V₄` of a
configuration of least area at least `7/128`, the quadrilateral has doubled area
`≥ 2(1+√2)s > 24s/5 = 21/40`. -/
theorem quad_area_ge {n : ℕ} {P : Fin n → Point} (hmin : 7 / 128 ≤ minTriangleArea P)
    (i₁ i₂ i₃ i₄ i₅ : Fin n) (hinj : Function.Injective ![i₁, i₂, i₃, i₄, i₅])
    (hconv : IsConvexPolygon ![P i₁, P i₂, P i₃, P i₄])
    (hO : InClosedPolygon ![P i₁, P i₂, P i₃, P i₄] (P i₅)) :
    2 * (1 + Real.sqrt 2) * (7 / 64) ≤
      sarea (P i₁) (P i₂) (P i₃) + sarea (P i₁) (P i₃) (P i₄) :=
  EightBoundary.lemma3 (by norm_num) hconv hO
    (by have := min_five P i₁ i₂ i₃ i₄ i₅ hinj; linarith)

/-- The scalar contradiction of `EIGHT_BOUNDARY.md` §4 at `s = 7/64`. -/
theorem scalar_contra {X Z : ℝ} (hX : 0 < X) (hZ : 0 < Z) (hsZ : 7 / 64 * Z < 1)
    (hXZ : 4 ≤ X * Z)
    (hQ : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤
      2 - 7 / 64 * Z - 7 / 64 * (2 - 7 / 64 * Z) / (1 - 7 / 64 * Z) - X + 2 * (7 / 64)) :
    False := by
  have := EightBoundary.claim_scalar_bound (by norm_num) hX hZ hsZ hXZ hQ
  linarith

/-- `(L + R)(1/L + 1/R) ≥ 4`. -/
theorem four_le_mul_inv {L R : ℝ} (hL : 0 < L) (hR : 0 < R) : 4 ≤ (L + R) * (1 / L + 1 / R) := by
  rw [show (L + R) * (1 / L + 1 / R) = 2 + (L / R + R / L) by field_simp; ring]
  have : 2 ≤ L / R + R / L := by
    rw [div_add_div _ _ hR.ne' hL.ne', le_div_iff₀ (by positivity)]
    nlinarith [sq_nonneg (L - R)]
  linarith

/-- The bound (3) of `SEVEN_BOUNDARY_TOP_CAP.md`: with gaps `L, R` and `M ≤ 1 - sZ`, `Z = 1/L+1/R`,
the quantity `(1 - u)(1 - α - L) + (1 - v)(1 - α - R)` (with `u = s/L ≤ b`, `v = s/R`,
`α = s/M`) is at most `2 - sZ - s(2-sZ)/(1-sZ) - (L+R) + 2s`. Stated for upper bounds
`p ≤ 1 - s/L`, `p' ≤ 1 - α - L`, `q ≤ 1 - s/R`, `q' ≤ 1 - α - R`. -/
theorem scalar3 {L R M α p p' q q' : ℝ} (hL : 0 < L) (hR : 0 < R) (hM : 0 < M)
    (hMZ : M ≤ 1 - 7 / 64 / L - 7 / 64 / R) (hα : α * M = 7 / 64)
    (hp0 : 0 ≤ p) (hp : p ≤ 1 - 7 / 64 / L) (hp'0 : 0 ≤ p') (hp' : p' ≤ 1 - α - L)
    (hq0 : 0 ≤ q) (hq : q ≤ 1 - 7 / 64 / R) (hq'0 : 0 ≤ q') (hq' : q' ≤ 1 - α - R) :
    p * p' + q * q' ≤ 2 - 7 / 64 * (1 / L + 1 / R) -
        7 / 64 * (2 - 7 / 64 * (1 / L + 1 / R)) / (1 - 7 / 64 * (1 / L + 1 / R)) -
        (L + R) + 2 * (7 / 64) ∧ 7 / 64 * (1 / L + 1 / R) < 1 := by
  set u := 7 / 64 / L with hu
  set v := 7 / 64 / R with hv
  have huL : u * L = 7 / 64 := by rw [hu]; field_simp
  have hvR : v * R = 7 / 64 := by rw [hv]; field_simp
  have hsZ : 7 / 64 * (1 / L + 1 / R) = u + v := by rw [hu, hv]; ring
  rw [hsZ]
  have hW : 0 < 1 - u - v := by linarith
  -- `α ≥ s/(1-u-v)`
  have hαW : 7 / 64 ≤ α * (1 - u - v) := by
    have hα0 : 0 < α := by
      by_contra hc; push Not at hc; nlinarith
    nlinarith
  have h1 : p * p' ≤ (1 - u) * (1 - α - L) := mul_le_mul hp hp' hp'0 (by linarith)
  have h2 : q * q' ≤ (1 - v) * (1 - α - R) := mul_le_mul hq hq' hq'0 (by linarith)
  refine ⟨?_, by linarith⟩
  have key : 7 / 64 * (2 - (u + v)) / (1 - (u + v)) ≤ α * (2 - (u + v)) := by
    rw [div_le_iff₀ (by linarith)]
    nlinarith
  nlinarith

/-- **Theorem 1** (`SEVEN_BOUNDARY_TOP_CAP:Theorem1`). In the exterior case, the companion point
`P` does not lie in the closed quadrilateral `HEXF` at minimum area at least `7/128` (its doubled
area obeys the scalar bound of `EIGHT_BOUNDARY.md` §4, below Lemma 3's `2(1+√2)s`).
`docs/proof/nine/SEVEN_BOUNDARY_TOP_CAP.md`, lines 27–100.
Uses: EIGHT_BOUNDARY:Lemma3, EIGHT_BOUNDARY:claim-scalar-bound. -/
theorem theorem1 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (_hP : InHeptagon a h b c d e f P)
    (hq : InClosedPolygon ![(0, h), (1, e), (g, k), (f, 1)] P) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := SevenBoundaryCaps.anchorCosts hN.1
    (hcon.trans (SevenBoundaryCaps.min₁_left.trans SevenBoundaryCaps.minAnchor_of₁))
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
  simp only [sarea] at hFEX
  have hDEX : 7 / 64 ≤ (e - d) * (1 - g) :=
    SevenBoundaryCaps.cost hcon 4 5 7 (by sa_eval) (by nlinarith)
  have hHEF : 0 < sarea (0, h) (1, e) (f, 1) := by simp only [sarea]; nlinarith
  have hconv : IsConvexPolygon ![(0, h), (1, e), (g, k), (f, 1)] := by
    refine isConvexPolygon_four ?_ hHEF ?_ ?_ <;> simp only [sarea] at hHEF ⊢
    · nlinarith [mul_pos (sub_pos.2 hfg) (sub_pos.2 he)]
    · nlinarith
    · nlinarith
  have hQ : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤
      sarea (0, h) (1, e) (g, k) + sarea (0, h) (g, k) (f, 1) :=
    quad_area_ge hcon 1 5 7 6 8 (by decide) hconv hq
  have hQ' : sarea (0, h) (1, e) (g, k) + sarea (0, h) (g, k) (f, 1) =
      (1 - f) * (k - h) + g * (1 - e) := by simp only [sarea]; ring
  rw [hQ'] at hQ
  have hL : 0 < h - a := by linarith
  have hR : 0 < e - d := by linarith
  have hM : 0 < c - b := by linarith
  have hbL : 7 / 64 / (h - a) ≤ b := by rw [div_le_iff₀ hL]; linarith [H.ABH]
  have hcR : 7 / 64 / (e - d) ≤ 1 - c := by rw [div_le_iff₀ hR]; linarith [H.CDE]
  have hgR : 7 / 64 / (e - d) ≤ 1 - g := by rw [div_le_iff₀ hR]; linarith
  have haM : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith [H.ABC]
  have hdM : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hM]; linarith [H.BCD]
  obtain ⟨hb3, hsZ⟩ := scalar3 (α := 7 / 64 / (c - b)) (p := 1 - f) (p' := 1 - h) (q := g) (q' := 1 - e) hL hR hM
    (by linarith) (by field_simp) (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith) (by linarith) (by linarith)
  have hk' : (1 - f) * (k - h) ≤ (1 - f) * (1 - h) :=
    mul_le_mul_of_nonneg_left (by linarith) (by linarith)
  exact scalar_contra (by linarith) (by positivity) hsZ (four_le_mul_inv hL hR) (by linarith)

/-- (9) of `SEVEN_BOUNDARY_TOP_CAP.md`: `fT(1-R) < s`. -/
theorem tc2_h9 {f g R : ℝ} (hR : 0 < R) (hR1 : R < 1) (hf0 : 0 < f) (hfg : f < g)
    (hDEX : 7 / 64 ≤ R * (1 - g)) : f * (g - f) * (1 - R) < 7 / 64 := by
  have hfT4 : 4 * (f * (g - f)) ≤ g ^ 2 := by nlinarith [sq_nonneg (g - 2 * f)]
  have hgR : 7 / 64 / R ≤ 1 - g := by rw [div_le_iff₀ hR]; linarith
  have hg' : g * (1 - R) ≤ 1 - R - 7 / 64 / R * (1 - R) := by
    nlinarith [mul_le_mul_of_nonneg_right hgR (show 0 ≤ 1 - R by linarith)]
  set σ := Real.sqrt (7 / 64) with hσ
  have hσ2 : σ ^ 2 = 7 / 64 := Real.sq_sqrt (by norm_num)
  have hσ0 : 5 / 16 < σ := by
    rw [hσ, Real.lt_sqrt (by norm_num)]; norm_num
  have hσ1 : σ < 1 := by nlinarith
  have hu : 1 - R - 7 / 64 / R * (1 - R) ≤ (1 - σ) ^ 2 := by
    have e1 : 1 - R - 7 / 64 / R * (1 - R) = 1 - R - 7 / 64 / R + 7 / 64 := by
      field_simp; ring
    rw [e1]
    have e2 : 7 / 64 / R * R = σ ^ 2 := by rw [hσ2]; field_simp
    have h2 : 2 * σ ≤ R + 7 / 64 / R := by
      have : 2 * σ * R ≤ (R + 7 / 64 / R) * R := by nlinarith [sq_nonneg (R - σ)]
      exact le_of_mul_le_mul_right this hR
    nlinarith
  have hs1 : 7 / 64 ≤ 7 / 64 / R := by rw [le_div_iff₀ hR]; nlinarith
  have hg1' : g ≤ 1 - 7 / 64 := by linarith
  have hg0 : 0 < g := by linarith
  have h1 : g ^ 2 * (1 - R) ≤ (1 - 7 / 64) * (1 - σ) ^ 2 := by
    have := mul_le_mul hg1' (hg'.trans hu) (by nlinarith) (by norm_num)
    nlinarith
  have h11 : (1 - σ) ^ 2 < (11 / 16) ^ 2 := by nlinarith
  nlinarith [mul_le_mul_of_nonneg_right hfT4 (show 0 ≤ 1 - R by linarith)]

/-- `(1-L)(1-b) ≤ (1 - √(bL))² < (11/16)²` when `bL ≥ s`. -/
theorem tc2_bl {b L : ℝ} (hb : 0 < b) (hb1 : b < 1) (hL : 0 < L) (hL1 : L < 1)
    (hbL : 7 / 64 ≤ b * L) : (1 - L) * (1 - b) ≤ 121 / 256 := by
  set t := Real.sqrt (b * L) with ht
  have ht2 : t ^ 2 = b * L := Real.sq_sqrt (by positivity)
  have ht0 : 0 ≤ t := Real.sqrt_nonneg _
  have ht5 : 5 / 16 < t := by nlinarith
  have hbl1 : b * L < 1 := by nlinarith
  have ht1 : t ≤ 1 := by nlinarith
  have hLb : 2 * t ≤ L + b := by nlinarith [sq_nonneg (L - b)]
  nlinarith

/-- The brace-nonpositive branch of Theorem 2: the bound (3) and the scalar contradiction. -/
theorem tc2_neg {a h b c d e f g k : ℝ} (_ha : 0 < a) (hah : a < h) (hh : h < 1)
    (hb : 0 < b) (hbc : b < c) (hc : c < 1) (_hd : 0 < d) (hde : d < e) (he : e < 1)
    (hbf : b ≤ f) (hfg : f < g) (hk1 : k ≤ 1)
    (hABH : 7 / 64 ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b)) (hBCD : 7 / 64 ≤ d * (c - b))
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d)) (hDEX : 7 / 64 ≤ (e - d) * (1 - g))
    (hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k))
    (hbr : f * (1 - b) - c * (1 - f) ≤ 0)
    (hQ : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤ a * (1 - b) + c * d) : False := by
  have hL : 0 < h - a := by linarith
  have hR : 0 < e - d := by linarith
  have hM : 0 < c - b := by linarith
  have hT : 0 < g - f := by linarith
  have hTa : (g - f) * a ≤ (g - f) - 7 / 64 + f * (1 - k) - (g - f) * (h - a) := by linarith
  have hTd : (g - f) * d ≤ (g - f) - 7 / 64 - (1 - f) * (1 - k) - (g - f) * (e - d) := by
    linarith
  have hTQ : (g - f) * (a * (1 - b) + c * d) ≤
      ((g - f) - 7 / 64 - (g - f) * (h - a)) * (1 - b) + c * ((g - f) - 7 / 64 - (g - f) * (e - d)) := by
    have h1 := mul_le_mul_of_nonneg_left hTa (show 0 ≤ 1 - b by linarith)
    have h2 := mul_le_mul_of_nonneg_left hTd (show 0 ≤ c by linarith)
    have h3 := mul_nonneg (show 0 ≤ 1 - k by linarith) (neg_nonneg.2 hbr)
    linarith
  have hbL : 7 / 64 / (h - a) ≤ b := by rw [div_le_iff₀ hL]; linarith
  have hcR : 7 / 64 / (e - d) ≤ 1 - c := by rw [div_le_iff₀ hR]; linarith
  have hgR : 7 / 64 / (e - d) ≤ 1 - g := by rw [div_le_iff₀ hR]; linarith
  set V := 1 - 7 / 64 / (h - a) - 7 / 64 / (e - d) with hV
  have hTV : g - f ≤ V := by linarith
  have hMV : c - b ≤ V := by linarith
  have hV0 : 0 < V := by linarith
  have hsTV : 7 / 64 / V ≤ 7 / 64 / (g - f) := div_le_div_of_nonneg_left (by norm_num) hT hTV
  have haV : 7 / 64 / V ≤ a := by
    have : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith
    exact (div_le_div_of_nonneg_left (by norm_num) hM hMV).trans this
  have hdV : 7 / 64 / V ≤ d := by
    have : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hM]; linarith
    exact (div_le_div_of_nonneg_left (by norm_num) hM hMV).trans this
  have hQ1 : a * (1 - b) + c * d ≤
      (1 - 7 / 64 / (g - f) - (h - a)) * (1 - b) + c * (1 - 7 / 64 / (g - f) - (e - d)) := by
    have e1 : (1 - 7 / 64 / (g - f) - (h - a)) * (1 - b) + c * (1 - 7 / 64 / (g - f) - (e - d)) =
        (((g - f) - 7 / 64 - (g - f) * (h - a)) * (1 - b) +
          c * ((g - f) - 7 / 64 - (g - f) * (e - d))) / (g - f) := by
      field_simp
    rw [e1, le_div_iff₀ hT]; linarith
  have hQ2 : (1 - 7 / 64 / (g - f) - (h - a)) * (1 - b) + c * (1 - 7 / 64 / (g - f) - (e - d)) ≤
      (1 - b) * (1 - 7 / 64 / V - (h - a)) + c * (1 - 7 / 64 / V - (e - d)) := by
    have h1 := mul_le_mul_of_nonneg_left hsTV (show 0 ≤ 1 - b by linarith)
    have h2 := mul_le_mul_of_nonneg_left hsTV (show 0 ≤ c by linarith)
    linarith
  obtain ⟨hb3, hsZ⟩ := scalar3 (M := V) (α := 7 / 64 / V) (p := 1 - b)
    (p' := 1 - 7 / 64 / V - (h - a)) (q := c) (q' := 1 - 7 / 64 / V - (e - d)) hL hR hV0 le_rfl
    (by field_simp) (by linarith) (by linarith) (by linarith) le_rfl (by linarith)
    (by linarith) (by linarith) le_rfl
  exact scalar_contra (by linarith) (by positivity) hsZ (four_le_mul_inv hL hR) (by linarith)

/-- The brace-positive branch of Theorem 2: `fT Q ≤ fT((1-L)(1-b) + c(1-R)) - cs`. -/
theorem tc2_pos {a h b c d e f g k : ℝ} (_hah : a < h) (hh : h < 1)
    (hb1 : b < 1) (hc : 0 < c) (hf0 : 0 < f) (hf1 : f < 1) (hfg : f < g) (_hk1 : k ≤ 1)
    (hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k))
    (hbr : 0 < f * (1 - b) - c * (1 - f)) :
    f * (g - f) * (a * (1 - b) + c * d) ≤
      f * (g - f) * ((1 - (h - a)) * (1 - b) + c * (1 - (e - d))) - c * (7 / 64) := by
  have hT : 0 < g - f := by linarith
  have hTa : (g - f) * a ≤ (g - f) - 7 / 64 + f * (1 - k) - (g - f) * (h - a) := by linarith
  have hTd : (g - f) * d ≤ (g - f) - 7 / 64 - (1 - f) * (1 - k) - (g - f) * (e - d) := by
    linarith
  rcases le_or_gt (7 / 64) (f * (1 - k)) with hδs | hδs
  · have h1 : 0 ≤ (1 - h) * (f * (g - f) * (1 - b)) := by
      have : 0 ≤ 1 - b := by linarith
      have : 0 ≤ 1 - h := by linarith
      positivity
    have h2 : f * ((g - f) * d) ≤ f * (g - f) * (1 - (e - d)) - 7 / 64 := by
      have := mul_le_mul_of_nonneg_left hTd hf0.le
      have := mul_le_mul_of_nonneg_left hδs (show 0 ≤ 1 - f by linarith)
      nlinarith
    have h3 := mul_le_mul_of_nonneg_left h2 hc.le
    linarith
  · have h1 := mul_le_mul_of_nonneg_left hTa (show 0 ≤ (1 - b) * f by
      have : 0 ≤ 1 - b := by linarith
      positivity)
    have h2 := mul_le_mul_of_nonneg_left hTd (show 0 ≤ c * f by positivity)
    have h3 := mul_nonneg (show 0 ≤ 7 / 64 - f * (1 - k) by linarith) hbr.le
    linarith

/-- The scalar part of Theorem 2: the doubled area `Q = a(1-b) + cd` of `ABCD` cannot reach
`2(1+√2)s`. -/
theorem theorem2_core {a h b c d e f g k : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1)
    (hb : 0 < b) (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hbf : b ≤ f) (hf : f ≤ 1 / 2) (hfg : f < g) (hk1 : k ≤ 1)
    (hABH : 7 / 64 ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b)) (hBCD : 7 / 64 ≤ d * (c - b))
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d)) (hDEX : 7 / 64 ≤ (e - d) * (1 - g))
    (hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k))
    (hQ : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤ a * (1 - b) + c * d) : False := by
  rcases le_or_gt (f * (1 - b) - c * (1 - f)) 0 with hbr | hbr
  · exact tc2_neg ha hah hh hb hbc hc hd hde he hbf hfg hk1 hABH hABC hBCD hCDE hDEX hHFX hEFX
      hbr hQ
  · have hs2 : (21 / 40 : ℝ) < 2 * (1 + Real.sqrt 2) * (7 / 64) := by
      nlinarith [sqrt_two_gt']
    have hf0 : 0 < f := by linarith
    have hT : 0 < g - f := by linarith
    have hfT : 0 < f * (g - f) := by positivity
    have hQ3 := tc2_pos (d := d) hah hh (by linarith) (by linarith) hf0 (by linarith) hfg hk1 hHFX hEFX hbr
    have h9 := tc2_h9 (by linarith : 0 < e - d) (by linarith) hf0 hfg hDEX
    have hQ4 : a * (1 - b) + c * d < (1 - (h - a)) * (1 - b) := by
      have h5 := mul_lt_mul_of_pos_left h9 (show 0 < c by linarith)
      have : f * (g - f) * (a * (1 - b) + c * d) < f * (g - f) * ((1 - (h - a)) * (1 - b)) := by
        linarith
      exact lt_of_mul_lt_mul_left this hfT.le
    have hbl := tc2_bl hb (by linarith) (by linarith : 0 < h - a) (by linarith) hABH
    linarith

/-- **Theorem 2** (`SEVEN_BOUNDARY_TOP_CAP:Theorem2`). In the exterior case, `P` does not lie in
the closed quadrilateral `ABCD` at minimum area at least `7/128`.
`docs/proof/nine/SEVEN_BOUNDARY_TOP_CAP.md`, lines 104–163.
Uses: EIGHT_BOUNDARY:Lemma3, EIGHT_BOUNDARY:claim-scalar-bound. -/
theorem theorem2 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (_hP : InHeptagon a h b c d e f P)
    (hq : InClosedPolygon ![(0, a), (b, 0), (c, 0), (1, d)] P) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := SevenBoundaryCaps.anchorCosts hN.1
    (hcon.trans (SevenBoundaryCaps.min₁_left.trans SevenBoundaryCaps.minAnchor_of₁))
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
  simp only [sarea] at hfg hg1 hek hk1 hFEX
  have hDEX : 7 / 64 ≤ (e - d) * (1 - g) :=
    SevenBoundaryCaps.cost hcon 4 5 7 (by sa_eval) (by nlinarith)
  have hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k) := by
    have := SevenBoundaryCaps.cost_neg (v := f * (k - h) - g * (1 - h)) hcon 1 6 7 (by sa_eval)
      (by nlinarith)
    linarith
  have hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k) :=
    SevenBoundaryCaps.cost hcon 6 5 7 (by sa_eval) (by nlinarith)
  have hconv : IsConvexPolygon ![(0, a), (b, 0), (c, 0), (1, d)] := by
    refine isConvexPolygon_four ?_ ?_ ?_ ?_ <;> simp only [sarea] <;> nlinarith
  have hQ : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤
      sarea (0, a) (b, 0) (c, 0) + sarea (0, a) (c, 0) (1, d) :=
    quad_area_ge hcon 0 2 3 4 8 (by decide) hconv hq
  have hQ' : sarea (0, a) (b, 0) (c, 0) + sarea (0, a) (c, 0) (1, d) =
      a * (1 - b) + c * d := by simp only [sarea]; ring
  rw [hQ'] at hQ
  exact theorem2_core ha hah hh hb hbc hc hd hde he hbf hf hfg hk1 H.ABH H.ABC H.BCD
    H.CDE hDEX hHFX hEFX hQ

/-- (12) when `U ≤ 7/12`. -/
theorem tc3_12_small {f U : ℝ} (hf0 : 0 < f) (hf : f ≤ 1 / 2) (hU : 0 < U) (hU1 : U ≤ 7 / 12) :
    f ^ 2 * U ^ 2 < 7 / 64 * (1 - f) * (1 + U) := by
  have hf2 : f ^ 2 ≤ 1 / 4 := by nlinarith
  have h1 : f ^ 2 * U ^ 2 ≤ 1 / 4 * U ^ 2 := mul_le_mul_of_nonneg_right hf2 (sq_nonneg U)
  have h2 : 7 / 64 / 2 * (1 + U) ≤ 7 / 64 * (1 - f) * (1 + U) := by nlinarith
  nlinarith [mul_nonneg hU.le (show 0 ≤ 7 / 12 - U by linarith)]

/-- The upper bounds on `U` and the lower bound on `T` behind (12): with
`Den = U - U² - s`, `fU·Den ≤ (U-s)Den - sU(U-s)` and `U < 3/4`. -/
theorem tc3_den {f U M T : ℝ} (hf0 : 0 < f) (hU : 0 < U) (hM : 0 < M)
    (hT : 0 < T) (hMU : M * U ≤ U - 7 / 64) (hTU : (T + f) * U ≤ U - 7 / 64)
    (hid : 7 / 64 * (M + T) = (1 - U) * (M * T)) :
    U < 3 / 4 ∧ 0 < U - U ^ 2 - 7 / 64 ∧ f * U * (U - U ^ 2 - 7 / 64) ≤
        (U - 7 / 64) * (U - U ^ 2 - 7 / 64) - 7 / 64 * U * (U - 7 / 64) := by
  have hMT : 0 < M * T := mul_pos hM hT
  have hTU' : T * U ≤ U - 7 / 64 := by nlinarith [mul_pos hf0 hU]
  have h2MT : 2 * (M * T) * U ≤ (M + T) * (U - 7 / 64) := by
    have h1 := mul_le_mul_of_nonneg_left hMU hT.le
    have h2 := mul_le_mul_of_nonneg_left hTU' hM.le
    linarith
  have hW : 2 * (7 / 64) * U ≤ (U - 7 / 64) * (1 - U) := by
    have : (M * T) * (2 * (7 / 64) * U) ≤ (M * T) * ((U - 7 / 64) * (1 - U)) := by
      have := mul_le_mul_of_nonneg_left h2MT (show (0 : ℝ) ≤ 7 / 64 by norm_num)
      have e1 : 7 / 64 * ((M + T) * (U - 7 / 64)) = (1 - U) * (M * T) * (U - 7 / 64) := by
        rw [← hid]; ring
      linarith
    exact le_of_mul_le_mul_left this hMT
  have hU34 : U < 3 / 4 := by nlinarith
  have hpos : 0 < (1 - U) * T - 7 / 64 := by
    by_contra hc; push Not at hc
    have : (1 - U) * (M * T) ≤ 7 / 64 * M := by nlinarith [mul_le_mul_of_nonneg_left hc hM.le]
    linarith
  have hTden : 7 / 64 * (U - 7 / 64) ≤ T * (U - U ^ 2 - 7 / 64) := by
    have h1 := mul_le_mul_of_nonneg_right hMU hpos.le
    have e1 : M * ((1 - U) * T - 7 / 64) = 7 / 64 * T := by linarith
    nlinarith
  have hden : 0 < U - U ^ 2 - 7 / 64 := by
    by_contra hc; push Not at hc
    nlinarith [mul_nonpos_of_nonneg_of_nonpos hT.le hc]
  refine ⟨hU34, hden, ?_⟩
  have hfU : f * U ≤ U - 7 / 64 - T * U := by linarith
  have h1 := mul_le_mul_of_nonneg_right hfU hden.le
  have h2 := mul_le_mul_of_nonneg_left hTden hU.le
  nlinarith

/-- (12) of `SEVEN_BOUNDARY_TOP_CAP.md`, `f²/(1-f) < s(1+U)/U²`, in polynomial form. -/
theorem tc3_12 {f U M T : ℝ} (hf0 : 0 < f) (hf : f ≤ 1 / 2) (hU : 0 < U) (hM : 0 < M)
    (hT : 0 < T) (hMU : M * U ≤ U - 7 / 64) (hTU : (T + f) * U ≤ U - 7 / 64)
    (hid : 7 / 64 * (M + T) = (1 - U) * (M * T)) :
    f ^ 2 * U ^ 2 < 7 / 64 * (1 - f) * (1 + U) := by
  rcases le_or_gt U (7 / 12) with hU1 | hU1
  · exact tc3_12_small hf0 hf hU hU1
  obtain ⟨hU34, hden, hfD⟩ := tc3_den hf0 hU hM hT hMU hTU hid
  have hUD : 0 < U * (U - U ^ 2 - 7 / 64) := mul_pos hU hden
  rcases le_or_gt U (2 / 3) with hU2 | hU2
  · have hG : (U - 7 / 64) * (U - U ^ 2 - 7 / 64) - 7 / 64 * U * (U - 7 / 64) <
        7 / 16 * (U * (U - U ^ 2 - 7 / 64)) := by
      have ht : 0 ≤ U - 7 / 12 := by linarith
      nlinarith [pow_nonneg ht 2, pow_nonneg ht 3]
    have hf7 : f < 7 / 16 := by
      by_contra hc; push Not at hc
      nlinarith [mul_le_mul_of_nonneg_right hc hUD.le]
    have h1 : f ^ 2 * U ^ 2 < (7 / 16) ^ 2 * (2 / 3) ^ 2 := by
      have := mul_lt_mul'' hf7 (show U < 2 / 3 + 1 / 1000 by linarith) hf0.le hU.le
      nlinarith [mul_pos hf0 hU]
    nlinarith
  · have hG : (U - 7 / 64) * (U - U ^ 2 - 7 / 64) - 7 / 64 * U * (U - 7 / 64) <
        1 / 3 * (U * (U - U ^ 2 - 7 / 64)) := by
      have ht : 0 ≤ U - 2 / 3 := by linarith
      nlinarith [pow_nonneg ht 2, pow_nonneg ht 3]
    have hf3 : f < 1 / 3 := by
      by_contra hc; push Not at hc
      nlinarith [mul_le_mul_of_nonneg_right hc hUD.le]
    have h1 : f * U < 1 / 3 * (3 / 4) := mul_lt_mul'' hf3 hU34 hf0.le hU.le
    nlinarith [mul_pos hf0 hU]

/-- The final estimate of Theorem 3 with `U = 1 - μ - τ`, `μ = s/M`, `τ = s/T`, `ρ = s/R`. -/
theorem tc3_main {a b f h M T R δ' μ τ ρ : ℝ} (hM : 0 < M) (hT : 0 < T) (hR : 0 < R)
    (hb0 : 0 ≤ b) (hf0 : 0 < f) (hf : f ≤ 1 / 2) (hδ : 0 ≤ δ')
    (hμM : μ * M = 7 / 64) (hτT : τ * T = 7 / 64) (hρR : ρ * R = 7 / 64)
    (hRU : R ≤ 1 - μ - τ - (1 - f) * δ') (hbk : b ≤ 1 - ρ - M) (hfk : f ≤ 1 - ρ - T)
    (ha : μ ≤ a) (hh : h ≤ 1 - τ + f * δ') (hsM : μ < 1) (hsT : τ < 1)
    (hQ : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤ b * (1 - a) + f * h) : False := by
  obtain ⟨U, hUdef⟩ : ∃ U, U = 1 - μ - τ := ⟨_, rfl⟩
  have h1f : 0 ≤ (1 - f) * δ' := mul_nonneg (by linarith) hδ
  have hRU' : R ≤ U := by linarith
  have hU : 0 < U := by linarith
  obtain ⟨ν, hνU⟩ : ∃ ν, ν * U = 7 / 64 := ⟨7 / 64 / U, by field_simp⟩
  have hρν : ν ≤ ρ := by
    have : ν * U ≤ ρ * U := by nlinarith
    exact le_of_mul_le_mul_right this hU
  have hMU : M * U ≤ U - 7 / 64 := by nlinarith
  have hTU : (T + f) * U ≤ U - 7 / 64 := by nlinarith
  have hid : 7 / 64 * (M + T) = (1 - U) * (M * T) := by
    rw [hUdef]; linear_combination (-T) * hμM - M * hτT
  have h12 := tc3_12 hf0 hf hU hM hT hMU hTU hid
  have hQ1 : b * (1 - a) + f * h ≤ (1 - ρ) * (1 + U) - (M + T) + 2 * (7 / 64) + f ^ 2 * δ' := by
    have h1 : b * (1 - a) ≤ b * (1 - μ) := mul_le_mul_of_nonneg_left (by linarith) hb0
    have h2 : b * (1 - μ) ≤ (1 - ρ - M) * (1 - μ) :=
      mul_le_mul_of_nonneg_right hbk (by linarith)
    have h3 := mul_le_mul_of_nonneg_left hh hf0.le
    have h4 : f * (1 - τ) ≤ (1 - ρ - T) * (1 - τ) :=
      mul_le_mul_of_nonneg_right hfk (by linarith)
    rw [hUdef]
    nlinarith
  have hδU : f ^ 2 * δ' * U ^ 2 ≤ 7 / 64 * (1 + U) * (U - R) := by
    have h1 : (1 - f) * δ' ≤ U - R := by linarith
    have h2 : f ^ 2 * U ^ 2 * ((1 - f) * δ') ≤ f ^ 2 * U ^ 2 * (U - R) :=
      mul_le_mul_of_nonneg_left h1 (by positivity)
    have h3 : f ^ 2 * U ^ 2 * (U - R) ≤ 7 / 64 * (1 - f) * (1 + U) * (U - R) :=
      mul_le_mul_of_nonneg_right h12.le (by linarith)
    have h4 : (1 - f) * (f ^ 2 * δ' * U ^ 2) ≤ (1 - f) * (7 / 64 * (1 + U) * (U - R)) := by
      linarith
    exact le_of_mul_le_mul_left h4 (by linarith)
  have hρν' : 7 / 64 * (U - R) ≤ (ρ - ν) * U ^ 2 := by
    have e1 : (ρ - ν) * U ^ 2 * R = 7 / 64 * (U - R) * U := by
      linear_combination U ^ 2 * hρR - U * R * hνU
    have : 7 / 64 * (U - R) * R ≤ (ρ - ν) * U ^ 2 * R := by
      rw [e1]; exact mul_le_mul_of_nonneg_left hRU' (by nlinarith)
    exact le_of_mul_le_mul_right this hR
  have hδ2 : f ^ 2 * δ' ≤ (ρ - ν) * (1 + U) := by
    have h5 := mul_le_mul_of_nonneg_left hρν' (show 0 ≤ 1 + U by linarith)
    have : f ^ 2 * δ' * U ^ 2 ≤ (ρ - ν) * (1 + U) * U ^ 2 := by linarith
    exact le_of_mul_le_mul_right this (by positivity)
  have hZ : 7 / 64 * (1 / M + 1 / T) = 1 - U := by
    rw [hUdef]
    have e1 : μ = 7 / 64 / M := by field_simp; linarith
    have e2 : τ = 7 / 64 / T := by field_simp; linarith
    rw [e1, e2]; ring
  have hfin : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤
      2 - 7 / 64 * (1 / M + 1 / T) - 7 / 64 * (2 - 7 / 64 * (1 / M + 1 / T)) /
        (1 - 7 / 64 * (1 / M + 1 / T)) - (M + T) + 2 * (7 / 64) := by
    rw [hZ, show (1 : ℝ) - (1 - U) = U by ring, show (2 : ℝ) - (1 - U) = 1 + U by ring]
    have : 7 / 64 * (1 + U) / U = ν * (1 + U) := by
      rw [div_eq_iff hU.ne']; linear_combination (-(1 + U)) * hνU
    rw [this]
    linarith
  exact scalar_contra (by linarith) (by positivity) (by rw [hZ]; linarith)
    (four_le_mul_inv hM hT) hfin

/-- The scalar part of Theorem 3 in the coordinates. -/
theorem tc3_core {a h b c d e f g k : ℝ} (_hah : a < h) (hb : 0 < b) (hbc : b < c)
    (hde : d < e) (he : e < 1) (hbf : b ≤ f) (hf : f ≤ 1 / 2) (hfg : f < g) (hk1 : k ≤ 1)
    (hABC : 7 / 64 ≤ a * (c - b)) (hBCD : 7 / 64 ≤ d * (c - b))
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d)) (hDEX : 7 / 64 ≤ (e - d) * (1 - g))
    (hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k))
    (hQ : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤ b * (1 - a) + f * h) : False := by
  have hM : 0 < c - b := by linarith
  have hT : 0 < g - f := by linarith
  have hR : 0 < e - d := by linarith
  obtain ⟨μ, hμ⟩ : ∃ μ, μ * (c - b) = 7 / 64 := ⟨7 / 64 / (c - b), by field_simp⟩
  obtain ⟨τ, hτ⟩ : ∃ τ, τ * (g - f) = 7 / 64 := ⟨7 / 64 / (g - f), by field_simp⟩
  obtain ⟨ρ, hρ⟩ : ∃ ρ, ρ * (e - d) = 7 / 64 := ⟨7 / 64 / (e - d), by field_simp⟩
  obtain ⟨δ', hδ'⟩ : ∃ δ', δ' * (g - f) = 1 - k := ⟨(1 - k) / (g - f), by field_simp⟩
  have hδ0 : 0 ≤ δ' := by
    by_contra hc; push Not at hc; nlinarith
  have hdμ : μ ≤ d := by
    have : μ * (c - b) ≤ d * (c - b) := by linarith
    exact le_of_mul_le_mul_right this hM
  have haμ : μ ≤ a := by
    have : μ * (c - b) ≤ a * (c - b) := by linarith
    exact le_of_mul_le_mul_right this hM
  have hcρ : c ≤ 1 - ρ := by
    have : ρ * (e - d) ≤ (1 - c) * (e - d) := by linarith
    linarith [le_of_mul_le_mul_right this hR]
  have hgρ : g ≤ 1 - ρ := by
    have : ρ * (e - d) ≤ (1 - g) * (e - d) := by linarith
    linarith [le_of_mul_le_mul_right this hR]
  have heτ : e ≤ 1 - τ - (1 - f) * δ' := by
    have : e * (g - f) ≤ (1 - τ - (1 - f) * δ') * (g - f) := by
      linear_combination hEFX + hτ + (1 - f) * hδ'
    exact le_of_mul_le_mul_right this hT
  have hhτ : h ≤ 1 - τ + f * δ' := by
    have : h * (g - f) ≤ (1 - τ + f * δ') * (g - f) := by
      linear_combination hHFX + hτ - f * hδ'
    exact le_of_mul_le_mul_right this hT
  have hsM : μ < 1 := by
    have : μ * (c - b) < 1 * (c - b) := by nlinarith
    exact lt_of_mul_lt_mul_right this hM.le
  have hsT : τ < 1 := by
    have h1 : 0 ≤ (1 - f) * (1 - k) := mul_nonneg (by linarith) (by linarith)
    have he0 : 0 < e := by linarith [hdμ, show 0 < μ by nlinarith]
    have : τ * (g - f) < 1 * (g - f) := by nlinarith [mul_pos hT he0]
    exact lt_of_mul_lt_mul_right this hT.le
  exact tc3_main hM hT hR hb.le (by linarith) hf hδ0 hμ hτ hρ (by linarith) (by linarith)
    (by linarith) haμ hhτ hsM hsT hQ

/-- **Theorem 3** (`SEVEN_BOUNDARY_TOP_CAP:Theorem3`). In the exterior case, `P` does not lie in
the closed quadrilateral `FHAB` at minimum area at least `7/128`.
`docs/proof/nine/SEVEN_BOUNDARY_TOP_CAP.md`, lines 167–256.
Uses: EIGHT_BOUNDARY:Lemma3, EIGHT_BOUNDARY:claim-scalar-bound. -/
theorem theorem3 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (_hP : InHeptagon a h b c d e f P)
    (hq : InClosedPolygon ![(f, 1), (0, h), (0, a), (b, 0)] P) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := SevenBoundaryCaps.anchorCosts hN.1
    (hcon.trans (SevenBoundaryCaps.min₁_left.trans SevenBoundaryCaps.minAnchor_of₁))
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
  simp only [sarea] at hfg hg1 hek hk1 hFEX
  have hDEX : 7 / 64 ≤ (e - d) * (1 - g) :=
    SevenBoundaryCaps.cost hcon 4 5 7 (by sa_eval) (by nlinarith)
  have hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k) := by
    have := SevenBoundaryCaps.cost_neg (v := f * (k - h) - g * (1 - h)) hcon 1 6 7 (by sa_eval)
      (by nlinarith)
    linarith
  have hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k) :=
    SevenBoundaryCaps.cost hcon 6 5 7 (by sa_eval) (by nlinarith)
  have hconv : IsConvexPolygon ![(f, 1), (0, h), (0, a), (b, 0)] := by
    refine isConvexPolygon_four ?_ ?_ ?_ ?_ <;> simp only [sarea] <;> nlinarith
  have hQ : 2 * (1 + Real.sqrt 2) * (7 / 64) ≤
      sarea (f, 1) (0, h) (0, a) + sarea (f, 1) (0, a) (b, 0) :=
    quad_area_ge hcon 6 1 0 2 8 (by decide) hconv hq
  have hQ' : sarea (f, 1) (0, h) (0, a) + sarea (f, 1) (0, a) (b, 0) =
      b * (1 - a) + f * h := by simp only [sarea]; ring
  rw [hQ'] at hQ
  exact tc3_core hah hb hbc hde he hbf hf hfg hk1 H.ABC H.BCD H.CDE hDEX hHFX hEFX hQ

/-- **Claim** (`SEVEN_BOUNDARY_TOP_CAP:claim-partial-central`). In the exterior case at minimum
area at least `7/128`, `P` lies strictly below `HE` (`HEF ⊂ HEXF`), strictly above `AD`, and
strictly on the interior side of `BF` (the side of `C`).
`docs/proof/nine/SEVEN_BOUNDARY_TOP_CAP.md`, lines 258–271.
Uses: SEVEN_BOUNDARY_TOP_CAP:Theorem1, SEVEN_BOUNDARY_TOP_CAP:Theorem2,
SEVEN_BOUNDARY_TOP_CAP:Theorem3. -/
theorem claim_partial_central {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    sarea (0, h) (1, e) P < 0 ∧ 0 < sarea (0, a) (1, d) P ∧ sarea (b, 0) (f, 1) P < 0 := by
  have hN' := hN
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN'
  have hX' := hX
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX'
  simp only at hfg hg1 hek hk1
  obtain ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩ := hP
  refine ⟨?_, ?_, ?_⟩
  · by_contra hc0; push Not at hc0
    -- `P ∈ HEF ⊂ HEXF`
    have hHEF : 0 < sarea (0, h) (1, e) (f, 1) := by simp only [sarea]; nlinarith
    have hHEX : 0 < sarea (1, e) (g, k) (0, h) := by
      simp only [sarea] at hFEX ⊢; nlinarith [mul_pos (sub_pos.2 hfg) (sub_pos.2 he)]
    have hEXF : 0 < sarea (1, e) (g, k) (f, 1) := by simp only [sarea] at hFEX ⊢; linarith
    have hXFH : 0 < sarea (g, k) (f, 1) (0, h) := by simp only [sarea]; nlinarith
    have hXFE : 0 < sarea (g, k) (f, 1) (1, e) := by simp only [sarea] at hFEX ⊢; linarith
    have hFHP : 0 < sarea (f, 1) (0, h) P := hFH
    have b1 := sarea_bary (0, h) (1, e) (f, 1) P (1, e) (g, k)
    have b2 := sarea_bary (0, h) (1, e) (f, 1) P (g, k) (f, 1)
    rw [show sarea (1, e) (g, k) (1, e) = 0 by simp only [sarea]; ring] at b1
    rw [show sarea (g, k) (f, 1) (f, 1) = 0 by simp only [sarea]; ring] at b2
    have hEXP : 0 ≤ sarea (1, e) (g, k) P := by
      by_contra hn; push Not at hn
      nlinarith [mul_pos hEF hHEX, mul_nonneg hc0 hEXF.le, mul_neg_of_neg_of_pos hn hHEF]
    have hXFP : 0 ≤ sarea (g, k) (f, 1) P := by
      by_contra hn; push Not at hn
      nlinarith [mul_pos hEF hXFH, mul_pos hFHP hXFE, mul_neg_of_neg_of_pos hn hHEF]
    have := theorem1 hN hX ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩
      (inClosedPolygon_four hc0 hEXP hXFP hFHP.le)
    linarith
  · by_contra hc0; push Not at hc0
    have hDA : 0 ≤ sarea (1, d) (0, a) P := by rw [sarea_swap₁₂]; linarith
    have := theorem2 hN hX ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩
      (inClosedPolygon_four hAB.le hBC.le hCD.le hDA)
    linarith
  · by_contra hc0; push Not at hc0
    have := theorem3 hN hX ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩
      (inClosedPolygon_four hFH.le hHA.le hAB.le hc0)
    linarith

end Heilbronn.Nine.SevenBoundaryTopCap
