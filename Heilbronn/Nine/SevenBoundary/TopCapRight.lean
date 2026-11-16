module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.TopCap
public import Heilbronn.Common.Bernstein
public import Heilbronn.Common.CertNotation

/-! # The final side quadrilateral beside a seven-boundary exterior point

The exterior case of the seven-boundary form, as in `Heilbronn/Nine/SevenBoundary/TopCap.lean`:
`SevenNormal a h b c d e f`, the far-cap point `X = (g,k)` (`FarCapPoint e f (g, k)`) and the
companion point `P` inside the heptagon; `s = 7/64`. This file excludes `P` from the fourth side
quadrilateral `CDEX` of the exterior octagon and proves two inequalities used in the rest of the
exterior case, `b > 3/20` and `k > h`. The two inequalities and the area bound use only the seven
anchors and `X`, and are stated for the eight-point configuration
`sevenConfig₁ a h b c d e f (g, k)`.

## Main results

* `three_div_twenty_lt_b`: `b > 3/20` (a degree-(2,3) Bernstein certificate on four boxes);
* `h_lt_k`: `k > h`;
* `minTriangleArea_lt_of_mem_CDEX`: the doubled area `[CDEX] = (1-c)(k-d) + (1-g)e` is below `21/40 = 24s/5 <
  2(1+√2)s`, so `P` is not in `CDEX`;
* `inCentralRegion_exteriorOctagon`: with `SevenBoundaryTopCap.minTriangleArea_lt_of_mem_HEXF`, `SevenBoundaryTopCap.minTriangleArea_lt_of_mem_ABCD`
  and `SevenBoundaryTopCap.minTriangleArea_lt_of_mem_FHAB`, `P` lies in `int conv(A,D,E,H) ∩ int conv(B,C,X,F)`.

Notation: `w` is `min(1-c, 1-g)` in `tcr_b_core` and `tcr_k_core`, but `s/T` in `tcr_area_uvw`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryTopCapRight

open SevenBoundary RadialCatalogue

/-! ### The certificate for `b > 3/20` -/

section BCert
open Cert Cert.Expr

/-- The polynomial `𝒫(f, w)` behind `b > 3/20` (see `tcr_P`), in the variables `f = var 0`,
`w = var 1`. -/
def calP : Cert.Expr :=
  (k (20 / 3) * (1 - v 0) - k (64 / 7)) * v 1 * (k (17 / 20) - v 1) * (1 - v 0 - v 1) +
    v 0 * (k (17 / 20) - v 1) * (1 - v 0 - v 1) + v 1 * (1 - v 0 - v 1) +
    v 1 * (k (17 / 20) - v 1)

theorem calP_box00 :
    bernsteinBoxCheck calP [(1 / 8, 5 / 16), (7 / 64, 39 / 128)] [2, 3] 1 = true := by
  decide +kernel
theorem calP_box01 :
    bernsteinBoxCheck calP [(1 / 8, 5 / 16), (39 / 128, 1 / 2)] [2, 3] 1 = true := by
  decide +kernel
theorem calP_box10 :
    bernsteinBoxCheck calP [(5 / 16, 1 / 2), (7 / 64, 39 / 128)] [2, 3] 1 = true := by
  decide +kernel
theorem calP_box11 :
    bernsteinBoxCheck calP [(5 / 16, 1 / 2), (39 / 128, 1 / 2)] [2, 3] 1 = true := by
  decide +kernel

theorem calP_eval (x : ℕ → ℝ) : calP.eval x =
    (20 / 3 * (1 - x 0) - 64 / 7) * x 1 * (17 / 20 - x 1) * (1 - x 0 - x 1) +
      x 0 * (17 / 20 - x 1) * (1 - x 0 - x 1) + x 1 * (1 - x 0 - x 1) +
      x 1 * (17 / 20 - x 1) := by
  simp [calP]

/-- `𝒫 > 0` on `[1/8, 1/2] × [7/64, 1/2]`, by Bernstein certificates on four boxes. -/
theorem calP_pos {f w : ℝ} (hf1 : 1 / 8 ≤ f) (hf2 : f ≤ 1 / 2) (hw1 : 7 / 64 ≤ w)
    (hw2 : w ≤ 1 / 2) :
    0 < (20 / 3 * (1 - f) - 64 / 7) * w * (17 / 20 - w) * (1 - f - w) +
      f * (17 / 20 - w) * (1 - f - w) + w * (1 - f - w) + w * (17 / 20 - w) := by
  let x : ℕ → ℝ := fun i => if i = 0 then f else w
  have hx0 : x 0 = f := rfl
  have hx1 : x 1 = w := rfl
  have key : ∀ box : List (ℚ × ℚ), bernsteinBoxCheck calP box [2, 3] 1 = true →
      (∀ i (hi : i < box.length), ((box[i]).1 : ℝ) ≤ x i ∧ x i ≤ (box[i]).2) →
      0 < (20 / 3 * (1 - f) - 64 / 7) * w * (17 / 20 - w) * (1 - f - w) +
        f * (17 / 20 - w) * (1 - f - w) + w * (1 - f - w) + w * (17 / 20 - w) := by
    intro box hb hx
    have := bernsteinBoxCheck_sound hb x hx
    rwa [calP_eval, hx0, hx1] at this
  rcases le_total f (5 / 16) with hf | hf <;> rcases le_total w (39 / 128) with hw | hw
  · refine key _ calP_box00 fun i hi => ?_
    simp only [List.length_cons, List.length_nil] at hi
    interval_cases i <;> simp [x] <;> constructor <;> linarith
  · refine key _ calP_box01 fun i hi => ?_
    simp only [List.length_cons, List.length_nil] at hi
    interval_cases i <;> simp [x] <;> constructor <;> linarith
  · refine key _ calP_box10 fun i hi => ?_
    simp only [List.length_cons, List.length_nil] at hi
    interval_cases i <;> simp [x] <;> constructor <;> linarith
  · refine key _ calP_box11 fun i hi => ?_
    simp only [List.length_cons, List.length_nil] at hi
    interval_cases i <;> simp [x] <;> constructor <;> linarith

end BCert

/-- `Φ(b, f, w) = (1-f)/b + f/w + 1/(1-w-b) + 1/(1-w-f) ≤ 1/s`, from the lower bounds on `h` and
`e` and the upper area bound `T((1-f)(1-h) + f(1-e)) ≥ s`. -/
theorem tcr_phi {b f w M T h e : ℝ} (_hb : 0 < b) (hf0 : 0 ≤ f) (hf1 : f ≤ 1) (_hw : 0 < w)
    (hM : 0 < M) (hT : 0 < T) (hh : 7 / 64 / M + 7 / 64 / b ≤ h) (he : 7 / 64 / M + 7 / 64 / w ≤ e)
    (hup : 7 / 64 ≤ T * ((1 - f) * (1 - h) + f * (1 - e)))
    (hMw : M ≤ 1 - w - b) (hTw : T ≤ 1 - w - f) :
    (1 - f) / b + f / w + 1 / (1 - w - b) + 1 / (1 - w - f) ≤ 64 / 7 := by
  have h1 : 7 / 64 / T ≤ (1 - f) * (1 - h) + f * (1 - e) := by
    rw [div_le_iff₀ hT]; linarith
  have h2 : (1 - f) * (1 - h) + f * (1 - e) ≤
      (1 - f) * (1 - 7 / 64 / M - 7 / 64 / b) + f * (1 - 7 / 64 / M - 7 / 64 / w) := by
    have := mul_le_mul_of_nonneg_left (show 1 - h ≤ 1 - 7 / 64 / M - 7 / 64 / b by linarith)
      (show 0 ≤ 1 - f by linarith)
    have := mul_le_mul_of_nonneg_left (show 1 - e ≤ 1 - 7 / 64 / M - 7 / 64 / w by linarith) hf0
    linarith
  have h3 : 1 / (1 - w - b) ≤ 1 / M := one_div_le_one_div_of_le hM hMw
  have h4 : 1 / (1 - w - f) ≤ 1 / T := one_div_le_one_div_of_le hT hTw
  have e1 : 7 / 64 / T = 7 / 64 * (1 / T) := by ring
  have e2 : (1 - f) * (1 - 7 / 64 / M - 7 / 64 / b) + f * (1 - 7 / 64 / M - 7 / 64 / w) =
      1 - 7 / 64 * (1 / M) - 7 / 64 * ((1 - f) / b) - 7 / 64 * (f / w) := by ring
  nlinarith

/-- The replacement `b ↦ 3/20` in `Φ`: `Φ(3/20, f, w) ≤ Φ(b, f, w)` when `b ≤ 3/20`,
`1 - w - b ≥ 21/52` and `f ≤ 1/2`. -/
theorem tcr_mono {b f w : ℝ} (hb : 1 / 8 < b) (hb3 : b ≤ 3 / 20) (hf1 : f ≤ 1 / 2)
    (hwb : 21 / 52 ≤ 1 - w - b) :
    (1 - f) * (20 / 3) + 1 / (17 / 20 - w) ≤ (1 - f) / b + 1 / (1 - w - b) := by
  have hb0 : 0 < b := by linarith
  have hA : 0 < 17 / 20 - w := by linarith
  have hB : 0 < 1 - w - b := by linarith
  have e1 : (1 - f) / b - (1 - f) * (20 / 3) = (1 - f) * (20 / 3) * (3 / 20 - b) / b := by
    rw [eq_div_iff hb0.ne', sub_mul, div_mul_cancel₀ _ hb0.ne']; ring
  have e2 : 1 / (17 / 20 - w) - 1 / (1 - w - b) =
      (3 / 20 - b) / ((17 / 20 - w) * (1 - w - b)) := by
    rw [div_sub_div _ _ hA.ne' hB.ne']; congr 1; ring
  have h1 : (3 / 20 - b) / ((17 / 20 - w) * (1 - w - b)) ≤ (3 / 20 - b) * (416 / 63) := by
    rw [div_le_iff₀ (by positivity)]
    have hA' : 3 / 8 ≤ 17 / 20 - w := by linarith
    have : 63 / 416 ≤ (17 / 20 - w) * (1 - w - b) := by nlinarith
    nlinarith [mul_le_mul_of_nonneg_left this (show 0 ≤ 3 / 20 - b by linarith)]
  have h2 : (3 / 20 - b) * (416 / 63) ≤ (1 - f) * (20 / 3) * (3 / 20 - b) / b := by
    rw [le_div_iff₀ hb0]
    nlinarith [mul_nonneg (show 0 ≤ 3 / 20 - b by linarith) hb0.le,
      mul_nonneg (show 0 ≤ 3 / 20 - b by linarith) (show 0 ≤ 1 / 2 - f by linarith)]
  linarith

/-- The polynomial form: `Φ(3/20, f, w) ≤ 64/7` makes `𝒫(f, w) ≤ 0`. -/
theorem tcr_P {f w : ℝ} (hw : 0 < w) (hw2 : w < 17 / 20) (hfw : 0 < 1 - f - w)
    (hΦ : (1 - f) * (20 / 3) + f / w + 1 / (17 / 20 - w) + 1 / (1 - w - f) ≤ 64 / 7) :
    (20 / 3 * (1 - f) - 64 / 7) * w * (17 / 20 - w) * (1 - f - w) +
      f * (17 / 20 - w) * (1 - f - w) + w * (1 - f - w) + w * (17 / 20 - w) ≤ 0 := by
  have hA : 0 < 17 / 20 - w := by linarith
  have hD : 0 < w * (17 / 20 - w) * (1 - f - w) := by positivity
  have e1 : ((1 - f) * (20 / 3) + f / w + 1 / (17 / 20 - w) + 1 / (1 - w - f) - 64 / 7) *
      (w * (17 / 20 - w) * (1 - f - w)) =
      (20 / 3 * (1 - f) - 64 / 7) * w * (17 / 20 - w) * (1 - f - w) +
        f * (17 / 20 - w) * (1 - f - w) + w * (1 - f - w) + w * (17 / 20 - w) := by
    have hB : 1 - w - f = 1 - f - w := by ring
    rw [hB]
    generalize hAA : 17 / 20 - w = A at hA ⊢
    generalize hBB : 1 - f - w = B at hfw ⊢
    have t1 : f / w * w = f := div_mul_cancel₀ f hw.ne'
    have t2 : 1 / A * A = 1 := one_div_mul_cancel hA.ne'
    have t3 : 1 / B * B = 1 := one_div_mul_cancel hfw.ne'
    linear_combination (A * B) * t1 + (w * B) * t2 + (w * A) * t3
  rw [← e1]
  exact mul_nonpos_of_nonpos_of_nonneg (by linarith) hD.le

/-- The scalar argument for `three_div_twenty_lt_b`: the costs, the bound `c ≥ b²/(b-s)` and
`1/8 < b ≤ 3/20` are incompatible. -/
theorem tcr_b_core {a h b c d e f g k : ℝ} (_ha : 0 < a) (_hah : a < h) (_hh : h < 1)
    (hbc : b < c) (_hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hbf : b ≤ f) (hf : f ≤ 1 / 2) (hfg : f < g) (_hg1 : g < 1) (_hk1 : k ≤ 1)
    (hABH : 7 / 64 ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b)) (hBCD : 7 / 64 ≤ d * (c - b))
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d)) (hDEX : 7 / 64 ≤ (e - d) * (1 - g))
    (hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k))
    (h37 : b ^ 2 / (b - 7 / 64) ≤ c) (hb18 : 1 / 8 < b) (hb3 : b ≤ 3 / 20) : False := by
  have hb : 0 < b := by linarith
  have hM : 0 < c - b := by linarith
  have hT : 0 < g - f := by linarith
  have hR : 0 < e - d := by linarith
  have hbs : 0 < b - 7 / 64 := by linarith
  have hc' : b ^ 2 ≤ c * (b - 7 / 64) := by rwa [div_le_iff₀ hbs] at h37
  have hc36 : 36 / 65 ≤ c := by
    have : 36 / 65 * (b - 7 / 64) ≤ c * (b - 7 / 64) := by
      nlinarith [mul_nonneg (show 0 ≤ 3 / 20 - b by linarith) (show 0 ≤ 21 / 52 - b by linarith)]
    exact le_of_mul_le_mul_right this hbs
  have hM21 : 21 / 52 ≤ c - b := by
    have : 21 / 52 * (b - 7 / 64) ≤ (c - b) * (b - 7 / 64) := by nlinarith
    exact le_of_mul_le_mul_right this hbs
  set w := min (1 - c) (1 - g) with hw
  have hw1 : w ≤ 1 - c := min_le_left _ _
  have hw2 : w ≤ 1 - g := min_le_right _ _
  have hRw : 7 / 64 ≤ (e - d) * w := by
    rcases min_choice (1 - c) (1 - g) with h' | h' <;> rw [hw, h'] <;> linarith
  have hw0 : 7 / 64 < w := by
    by_contra hc0; push Not at hc0
    nlinarith [mul_le_mul_of_nonneg_left hc0 hR.le]
  have hwpos : 0 < w := by linarith
  have hhM : 7 / 64 / (c - b) + 7 / 64 / b ≤ h := by
    have h1 : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith
    have h2 : 7 / 64 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
    linarith
  have heM : 7 / 64 / (c - b) + 7 / 64 / w ≤ e := by
    have h1 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hM]; linarith
    have h2 : 7 / 64 / w ≤ e - d := by rw [div_le_iff₀ hwpos]; linarith
    linarith
  have hup : 7 / 64 ≤ (g - f) * ((1 - f) * (1 - h) + f * (1 - e)) := by
    have := mul_le_mul_of_nonneg_left hHFX (show 0 ≤ 1 - f by linarith)
    have := mul_le_mul_of_nonneg_left hEFX (show 0 ≤ f by linarith)
    nlinarith
  have hΦ := tcr_phi hb (by linarith) (by linarith) hwpos hM hT hhM heM hup (by linarith)
    (by linarith)
  have hmono := tcr_mono (w := w) hb18 hb3 hf (by linarith)
  have hP := tcr_P (f := f) (w := w) hwpos (by linarith) (by linarith) (by linarith)
  have hpos := calP_pos (f := f) (w := w) (by linarith) hf hw0.le (by linarith)
  linarith

/-- In the exterior case, if every triangle of the seven anchors and `X` has area at least
`7/128`, then `b > 3/20`. -/
theorem three_div_twenty_lt_b {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k))
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f (g, k))) :
    3 / 20 < b := by
  have hA := hmin.trans SevenBoundaryCaps.minAnchor_of₁
  have H := SevenBoundaryCaps.anchorCosts hN.1 hA
  obtain ⟨hb18, -, h37, -⟩ := SevenBoundaryCaps.b_bounds_of_anchor_min hN hA
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
  simp only [sarea] at hfg hg1 hek hk1 hFEX
  have hDEX : 7 / 64 ≤ (e - d) * (1 - g) :=
    SevenBoundaryCaps.cost hmin 4 5 7 (by sa_eval) (by nlinarith)
  have hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k) := by
    have := SevenBoundaryCaps.cost_neg (v := f * (k - h) - g * (1 - h)) hmin 1 6 7 (by sa_eval)
      (by nlinarith)
    linarith
  have hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k) :=
    SevenBoundaryCaps.cost hmin 6 5 7 (by sa_eval) (by nlinarith)
  by_contra hb3; push Not at hb3
  exact tcr_b_core ha hah hh hbc hc hd hde he hbf hf hfg hg1 hk1 H.ABH H.ABC H.BCD H.CDE hDEX
    hHFX hEFX h37 hb18 hb3

/-! ### `k > h` -/

/-- With `β = 3/20`: `1/(c-β) + 1/w ≥ 4/(1-β) = 80/17` when `0 < w ≤ 1 - c`. -/
theorem tcr_min_c {c w : ℝ} (hc : 3 / 20 < c) (hw : 0 < w) (hcw : w ≤ 1 - c) :
    80 / 17 ≤ 1 / (c - 3 / 20) + 1 / w := by
  have h1 : 0 < c - 3 / 20 := by linarith
  rw [div_add_div _ _ h1.ne' hw.ne', le_div_iff₀ (by positivity)]
  nlinarith [sq_nonneg (c - 3 / 20 - w)]

/-- With `β = 3/20` and `g ≥ 23/40`: `1/(c-β) + 1/min(1-c,1-g) ≥ 1/(g-β) + 1/(1-g)`. -/
theorem tcr_min_c' {c g : ℝ} (hc : 3 / 20 < c) (hc1 : c < 1) (hg : 23 / 40 ≤ g) (hg1 : g < 1) :
    1 / (g - 3 / 20) + 1 / (1 - g) ≤ 1 / (c - 3 / 20) + 1 / min (1 - c) (1 - g) := by
  have hg0 : 0 < g - 3 / 20 := by linarith
  have hc0 : 0 < c - 3 / 20 := by linarith
  rcases le_total c g with hcg | hcg
  · rw [min_eq_right (by linarith)]
    have := one_div_le_one_div_of_le hc0 (show c - 3 / 20 ≤ g - 3 / 20 by linarith)
    linarith
  · rw [min_eq_left (by linarith)]
    have h1c : 0 < 1 - c := by linarith
    have h1g : 0 < 1 - g := by linarith
    rw [div_add_div _ _ hg0.ne' h1g.ne', div_add_div _ _ hc0.ne' h1c.ne', div_le_div_iff₀
      (by positivity) (by positivity)]
    nlinarith [mul_nonneg (sub_nonneg.2 hcg) (show 0 ≤ (c - 3 / 20) * (g - 3 / 20) -
      (1 - c) * (1 - g) by nlinarith), mul_pos hc0 hg0, mul_pos h1c h1g]

/-- The univariate bound for `3/20 < g ≤ 23/40` (`tcr_g_large` is the case `g ≥ 23/40`). -/
theorem tcr_g_small {g : ℝ} (hg0 : 3 / 20 < g) (hg : g ≤ 23 / 40) :
    64 / 7 < 1 / g + 1 / (g * (g - 3 / 20)) + 80 / 17 := by
  have h1 : 40 / 23 ≤ 1 / g := by rw [le_div_iff₀ (by linarith)]; linarith
  have h2 : 1600 / 391 ≤ 1 / (g * (g - 3 / 20)) := by
    rw [le_div_iff₀ (by nlinarith)]; nlinarith
  linarith

theorem tcr_g_large {g : ℝ} (hg : 23 / 40 ≤ g) (hg1 : g < 1) :
    64 / 7 < 1 / g + 1 / (g * (g - 3 / 20)) + (1 / (g - 3 / 20) + 1 / (1 - g)) := by
  have hg0 : 0 < g := by linarith
  have hgb : 0 < g - 3 / 20 := by linarith
  have h1g : 0 < 1 - g := by linarith
  have hD : 0 < g * (g - 3 / 20) * (1 - g) := by positivity
  have e1 : (1 / g + 1 / (g * (g - 3 / 20)) + (1 / (g - 3 / 20) + 1 / (1 - g))) *
      (g * (g - 3 / 20) * (1 - g)) =
      (g - 3 / 20) * (1 - g) + (1 - g) + g * (1 - g) + g * (g - 3 / 20) := by
    generalize hAA : g - 3 / 20 = A at hgb ⊢
    generalize hBB : 1 - g = B at h1g ⊢
    have t1 : 1 / g * g = 1 := one_div_mul_cancel hg0.ne'
    have t2 : 1 / (g * A) * (g * A) = 1 := one_div_mul_cancel (by positivity)
    have t3 : 1 / A * A = 1 := one_div_mul_cancel hgb.ne'
    have t4 : 1 / B * B = 1 := one_div_mul_cancel h1g.ne'
    linear_combination (A * B) * t1 + B * t2 + (g * B) * t3 + (g * A) * t4
  have hN : 0 < 1280 * g ^ 3 - 1612 * g ^ 2 + 332 * g + 119 := by
    have ht : -(23 / 160) ≤ g - 23 / 32 := by linarith
    nlinarith [sq_nonneg (g - 23 / 32), mul_nonneg (show 0 ≤ g - 23 / 32 + 23 / 160 by linarith)
      (sq_nonneg (g - 23 / 32)), sq_nonneg (g - 23 / 32 - 3 / 3856)]
  by_contra hc; push Not at hc
  have := mul_le_mul_of_nonneg_right hc hD.le
  rw [e1] at this
  nlinarith

/-- The final contradiction for `h_lt_k`: the bound of `tcr_k_sum` fails when `b > 3/20`. -/
theorem tcr_k_final {b c g w : ℝ} (hbc : b < c) (hc : c < 1) (hg1 : g < 1) (hb3 : 3 / 20 < b)
    (hgb : b < g) (hwpos : 0 < w) (hw1 : w ≤ 1 - c) (hw : w = min (1 - c) (1 - g))
    (hsum : 1 / g + 1 / (g * (g - b)) + 1 / (c - b) + 1 / w ≤ 64 / 7) : False := by
  have hg0 : 0 < g := by linarith
  have hM : 0 < c - b := by linarith
  have hr1 : 1 / (g * (g - 3 / 20)) ≤ 1 / (g * (g - b)) :=
    one_div_le_one_div_of_le (mul_pos hg0 (by linarith)) (by nlinarith)
  have hr2 : 1 / (c - 3 / 20) ≤ 1 / (c - b) := one_div_le_one_div_of_le hM (by linarith)
  rcases le_total g (23 / 40) with hg | hg
  · have h1 := tcr_g_small (show 3 / 20 < g by linarith) hg
    have h2 := tcr_min_c (show 3 / 20 < c by linarith) hwpos hw1
    linarith
  · have h1 := tcr_g_large hg hg1
    have h2 := tcr_min_c' (show 3 / 20 < c by linarith) hc hg hg1
    rw [← hw] at h2
    linarith

/-- Under `k ≤ h`: `1/g + 1/(g(g-b)) + 1/(c-b) + 1/w ≤ 64/7`. -/
theorem tcr_k_sum {a h b c d e f g k : ℝ} (_hah : a < h) (hh : h < 1) (hbc : b < c)
    (_hde : d < e) (hbf : b ≤ f) (hf : f ≤ 1 / 2) (hfg : f < g)
    (hBCD : 7 / 64 ≤ d * (c - b)) (_hR : 0 < e - d) {w : ℝ} (hwpos : 0 < w)
    (hRw : 7 / 64 ≤ (e - d) * w)
    (hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k))
    (hb : 0 < b) (hkh : k ≤ h) :
    1 / g + 1 / (g * (g - b)) + 1 / (c - b) + 1 / w ≤ 64 / 7 := by
  have hg0 : 0 < g := by linarith
  have hM : 0 < c - b := by linarith
  have hT : 0 < g - f := by linarith
  have hgb : 0 < g - b := by linarith
  have hgδ : 7 / 64 ≤ g * (1 - k) := by
    have := mul_le_mul_of_nonneg_left (show 1 - h ≤ 1 - k by linarith) hT.le
    nlinarith
  have h1e : 7 / 64 ≤ (g - f) * (1 - e) := by
    have := mul_nonneg (show 0 ≤ 1 - f by linarith) (show 0 ≤ 1 - k by linarith)
    linarith
  have hup : 7 / 64 / g + 7 / 64 / (g * (g - b)) ≤ 1 - e := by
    rw [div_add_div _ _ hg0.ne' (by positivity), div_le_iff₀ (by positivity)]
    have hge : 7 / 64 ≤ (1 - e) * g := by nlinarith
    have h2 : 7 / 64 * (1 + (g - f)) ≤ (1 - e) * g * (g - f) := by
      have := mul_le_mul_of_nonneg_left hgδ (show 0 ≤ 1 - f by linarith)
      nlinarith
    have := mul_le_mul_of_nonneg_right hge (show 0 ≤ f - b by linarith)
    nlinarith
  have hlow : 7 / 64 / (c - b) + 7 / 64 / w ≤ e := by
    have h1 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hM]; linarith
    have h2 : 7 / 64 / w ≤ e - d := by rw [div_le_iff₀ hwpos]; linarith
    linarith
  have e1 : 7 / 64 / g + 7 / 64 / (g * (g - b)) + (7 / 64 / (c - b) + 7 / 64 / w) =
      7 / 64 * (1 / g + 1 / (g * (g - b)) + 1 / (c - b) + 1 / w) := by ring
  linarith

/-- The scalar argument for `h_lt_k`: the costs, `b > 3/20` and `k ≤ h` are incompatible. -/
theorem tcr_k_core {a h b c d e f g k : ℝ} (hah : a < h) (hh : h < 1) (hbc : b < c) (hc : c < 1)
    (hde : d < e) (hbf : b ≤ f) (hf : f ≤ 1 / 2) (hfg : f < g) (hg1 : g < 1)
    (hBCD : 7 / 64 ≤ d * (c - b))
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d)) (hDEX : 7 / 64 ≤ (e - d) * (1 - g))
    (hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k))
    (hb3 : 3 / 20 < b) (hkh : k ≤ h) : False := by
  have hR : 0 < e - d := by linarith
  set w := min (1 - c) (1 - g) with hw
  have hw1 : w ≤ 1 - c := min_le_left _ _
  have hRw : 7 / 64 ≤ (e - d) * w := by
    rcases min_choice (1 - c) (1 - g) with h' | h' <;> rw [hw, h'] <;> linarith
  have hwpos : 0 < w := by
    by_contra hc0; push Not at hc0
    nlinarith [mul_le_mul_of_nonneg_left hc0 hR.le]
  have hsum := tcr_k_sum hah hh hbc hde hbf hf hfg hBCD hR hwpos hRw hHFX hEFX
    (by linarith) hkh
  exact tcr_k_final hbc hc hg1 hb3 (by linarith) hwpos hw1 hw hsum

/-- In the exterior case, if every triangle of the seven anchors and `X` has area at least
`7/128`, then the exterior point is higher than `H`: `k > h`. -/
theorem h_lt_k {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k))
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f (g, k))) :
    h < k := by
  have hb3 := three_div_twenty_lt_b hN hX hmin
  have hA := hmin.trans SevenBoundaryCaps.minAnchor_of₁
  have H := SevenBoundaryCaps.anchorCosts hN.1 hA
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
  simp only [sarea] at hfg hg1 hek hk1 hFEX
  have hDEX : 7 / 64 ≤ (e - d) * (1 - g) :=
    SevenBoundaryCaps.cost hmin 4 5 7 (by sa_eval) (by nlinarith)
  have hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k) := by
    have := SevenBoundaryCaps.cost_neg (v := f * (k - h) - g * (1 - h)) hmin 1 6 7 (by sa_eval)
      (by nlinarith)
    linarith
  have hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k) :=
    SevenBoundaryCaps.cost hmin 6 5 7 (by sa_eval) (by nlinarith)
  by_contra hkh; push Not at hkh
  exact tcr_k_core hah hh hbc hc hde hbf hf hfg hg1 H.BCD H.CDE hDEX hHFX hEFX hb3 hkh

/-! ### The area of `CDEX` -/

/-- The quadrilateral bound of `SevenBoundaryTopCap.scalar3` in strict form: when `XZ ≥ 4`,
`2 - sZ - s(2-sZ)/(1-sZ) - X + 2s < 24s/5 = 21/40` (adapted from
`EightBoundary.scalar_bound_core`). -/
theorem scalar_lt_2140 {X Z : ℝ} (hX : 0 < X) (_hZ : 0 < Z) (hsZ : 7 / 64 * Z < 1)
    (hXZ : 4 ≤ X * Z) :
    2 - 7 / 64 * Z - 7 / 64 * (2 - 7 / 64 * Z) / (1 - 7 / 64 * Z) - X + 2 * (7 / 64) < 21 / 40 := by
  by_contra hQ
  push Not at hQ
  set z := 7 / 64 * Z with hz
  set u := 2 * (7 / 64) / X with hu
  have huX : u * X = 2 * (7 / 64) := by rw [hu]; field_simp
  have hu0 : 0 < u := by positivity
  have h2u : 2 * u ≤ z := by
    have : 2 * u * X ≤ z * X := by rw [hz]; nlinarith
    exact le_of_mul_le_mul_right this hX
  have hw : 0 < 1 - 2 * u := by linarith
  set D := 7 / 64 * (2 - z) / (1 - z) with hD
  have hDz : D * (1 - z) = 7 / 64 * (2 - z) := by
    rw [hD]; field_simp [show (1 - z) ≠ 0 by linarith]
  set E := 7 / 64 / (1 - 2 * u) with hE
  have hEu : E * (1 - 2 * u) = 7 / 64 := by rw [hE]; field_simp
  have hE0 : 0 < E := by positivity
  have hDE : 7 / 64 + E ≤ D := by
    have h1 : (D - 7 / 64) * (1 - z) = 7 / 64 := by linear_combination hDz
    have h2 : (D - 7 / 64 - E) * (1 - z) ≥ 0 := by nlinarith
    nlinarith [show 0 < 1 - z by linarith]
  have h3 : 21 / 40 ≤ 2 - 2 * u - 7 / 64 - E - X + 2 * (7 / 64) := by linarith
  have h4 : 21 / 40 * (u * (1 - 2 * u)) ≤
      (2 - 2 * u + 7 / 64) * u * (1 - 2 * u) - 7 / 64 * u - 2 * (7 / 64) * (1 - 2 * u) := by
    have := mul_le_mul_of_nonneg_right h3 (by positivity : (0 : ℝ) ≤ u * (1 - 2 * u))
    nlinarith
  have hP := EightBoundary.cubic_P_pos (u := u) (by linarith)
  nlinarith

section RCert
open Cert Cert.Expr

/-- `-(10240u³ - 9120u² + 1939u - 245)`, the sign factor of the coefficient `C₁` of `tcr_R`. -/
def negC1poly : Cert.Expr := k 245 - v 0 * (k 1939 + v 0 * (k 10240 * v 0 - k 9120))
/-- `-(40960u³ - 43200u² + 5789u - 245)`, the sign factor of the coefficient `C₂` of `tcr_R`. -/
def negC2poly : Cert.Expr := k 245 - v 0 * (k 5789 + v 0 * (k 40960 * v 0 - k 43200))
/-- The sextic factor of the discriminant `C₁² - 4C₀C₂` of `tcr_R`. -/
def sextic : Cert.Expr :=
  (((((k 655360 * v 0 - k 2396160) * v 0 + k 2778528) * v 0 - k 1205910) * v 0 + k 123249) *
    v 0 + k 28126) * v 0 - k 3430

theorem negC1_check : bernsteinBoxCheck negC1poly [(7 / 32, 13 / 20)] [3] 1 = true := by
  decide +kernel
theorem negC2_check : bernsteinBoxCheck negC2poly [(7 / 32, 35 / 48)] [3] 1 = true := by
  decide +kernel
theorem sextic_check : bernsteinBoxCheck sextic [(13 / 20, 35 / 48)] [6] 1 = true := by
  decide +kernel

theorem one_var_pos {e : Cert.Expr} {lo hi : ℚ} {n M : ℕ}
    (h : bernsteinBoxCheck e [(lo, hi)] [n] M = true) {u : ℝ} (h1 : (lo : ℝ) ≤ u)
    (h2 : u ≤ hi) : 0 < e.eval (fun _ => u) :=
  bernsteinBoxCheck_sound h _ fun i hi' => by
    simp only [List.length_cons, List.length_nil] at hi'
    obtain rfl : i = 0 := by omega
    exact ⟨h1, h2⟩

theorem negC1_pos {u : ℝ} (h1 : 7 / 32 ≤ u) (h2 : u ≤ 13 / 20) :
    0 < 245 - u * (1939 + u * (10240 * u - 9120)) := by
  have := one_var_pos negC1_check (u := u) (by norm_num; linarith) (by norm_num; linarith)
  simp [negC1poly] at this; linarith

theorem negC2_pos {u : ℝ} (h1 : 7 / 32 ≤ u) (h2 : u ≤ 35 / 48) :
    0 < 245 - u * (5789 + u * (40960 * u - 43200)) := by
  have := one_var_pos negC2_check (u := u) (by norm_num; linarith) (by norm_num; linarith)
  simp [negC2poly] at this; linarith

theorem sextic_pos {u : ℝ} (h1 : 13 / 20 ≤ u) (h2 : u ≤ 35 / 48) :
    0 < (((((655360 * u - 2396160) * u + 2778528) * u - 1205910) * u + 123249) * u +
      28126) * u - 3430 := by
  have := one_var_pos sextic_check (u := u) (by norm_num; linarith) (by norm_num; linarith)
  simp [sextic] at this; linarith

end RCert

/-- `ℛ(u, z) = C₀ + C₁z + C₂z² + C₃z³ > 0` for `7/32 ≤ u ≤ 35/48` and `z ≥ 0`. -/
theorem tcr_R {u z : ℝ} (hu1 : 7 / 32 ≤ u) (hu2 : u ≤ 35 / 48) (hz : 0 ≤ z) :
    0 < (1 - u) * (320 * u ^ 3 - 133 * u ^ 2 - 82 * u + 35) / 320 +
      (u - 1) * (10240 * u ^ 3 - 9120 * u ^ 2 + 1939 * u - 245) / 1120 * z -
      (40960 * u ^ 3 - 43200 * u ^ 2 + 5789 * u - 245) / 2240 * z ^ 2 +
      u * (64 * u - 7) / 7 * z ^ 3 := by
  have h1u : 0 < 1 - u := by linarith
  have hC0 : 0 < (1 - u) * (320 * u ^ 3 - 133 * u ^ 2 - 82 * u + 35) / 320 := by
    have : 0 < 320 * u ^ 3 - 133 * u ^ 2 - 82 * u + 35 := by
      have ht : 0 ≤ u - 1 / 2 + 9 / 32 := by linarith
      nlinarith [mul_nonneg ht (sq_nonneg (u - 1 / 2)), sq_nonneg (u - 1 / 2 + 25 / 514)]
    positivity
  have hC3 : 0 ≤ u * (64 * u - 7) / 7 * z ^ 3 := by
    have : 0 ≤ 64 * u - 7 := by linarith
    positivity
  have hC2 : 0 < -(40960 * u ^ 3 - 43200 * u ^ 2 + 5789 * u - 245) := by
    have := negC2_pos hu1 hu2; nlinarith
  rcases le_total u (13 / 20) with hu | hu
  · have hC1 : 0 < -(10240 * u ^ 3 - 9120 * u ^ 2 + 1939 * u - 245) := by
      have := negC1_pos hu1 hu; nlinarith
    have t1 : 0 ≤ (u - 1) * (10240 * u ^ 3 - 9120 * u ^ 2 + 1939 * u - 245) / 1120 * z := by
      have : 0 ≤ (u - 1) * (10240 * u ^ 3 - 9120 * u ^ 2 + 1939 * u - 245) := by nlinarith
      positivity
    have t2 : 0 ≤ -(40960 * u ^ 3 - 43200 * u ^ 2 + 5789 * u - 245) / 2240 * z ^ 2 := by
      positivity
    linarith
  · have hS := sextic_pos hu hu2
    set A := (1 - u) * (320 * u ^ 3 - 133 * u ^ 2 - 82 * u + 35) / 320 with hA
    set B := (u - 1) * (10240 * u ^ 3 - 9120 * u ^ 2 + 1939 * u - 245) / 1120 with hB
    set C := -(40960 * u ^ 3 - 43200 * u ^ 2 + 5789 * u - 245) / 2240 with hC
    have hCpos : 0 < C := by rw [hC]; positivity
    have hD : B ^ 2 - 4 * A * C < 0 := by
      have e1 : B ^ 2 - 4 * A * C = u * (u - 1) / 7840 * ((((((655360 * u - 2396160) * u +
          2778528) * u - 1205910) * u + 123249) * u + 28126) * u - 3430) := by
        rw [hA, hB, hC]; ring
      rw [e1]
      have : u * (u - 1) / 7840 < 0 := by
        have : u * (u - 1) < 0 := by nlinarith
        linarith
      exact mul_neg_of_neg_of_pos this hS
    have hq : 0 < A + B * z + C * z ^ 2 := by
      have : 4 * C * (A + B * z + C * z ^ 2) = (2 * C * z + B) ^ 2 - (B ^ 2 - 4 * A * C) := by ring
      have : 0 < 4 * C * (A + B * z + C * z ^ 2) := by nlinarith [sq_nonneg (2 * C * z + B)]
      nlinarith
    have e2 : -(40960 * u ^ 3 - 43200 * u ^ 2 + 5789 * u - 245) / 2240 * z ^ 2 = C * z ^ 2 := by
      rw [hC]
    linarith

/-- The case `z = v + w - (1-u) > 0` of `tcr_area_uvw`, with `u = s/b`, `v = s/M`, `w = s/T`:
if `wδ ≥ uz`, the bound `G(δ)` of `Q` is below `21/40`. -/
theorem tcr_area_B {u v w δ Q : ℝ} (hu1 : 7 / 32 ≤ u) (hu2 : u ≤ 35 / 48) (hv : 0 < v)
    (hw : 0 < w) (hz : 0 < v + w - 1 + u) (hδ : u * (v + w - 1 + u) ≤ w * δ)
    (h1c : 0 ≤ 1 - 7 / 64 / u - 7 / 64 / v) (h1g : 0 ≤ 1 - 7 / 64 / u - 7 / 64 / w)
    (hQ : Q ≤ (1 - 7 / 64 / u - 7 / 64 / v) * (1 - δ - v) +
      (1 - 7 / 64 / u - 7 / 64 / w) * (1 - w - (1 - 7 / 64 / u) * δ * w / (7 / 64))) :
    Q < 21 / 40 := by
  have hu0 : 0 < u := by linarith
  set z := v + w - 1 + u with hzdef
  set V := v + w with hV
  -- monotonicity in `δ`
  have hδ' : u * z / w ≤ δ := by rw [div_le_iff₀ hw]; linarith
  have h1b : 0 ≤ 1 - 7 / 64 / u := by
    have : 7 / 64 / u ≤ 7 / 64 / u + 7 / 64 / v := by
      have : 0 ≤ 7 / 64 / v := by positivity
      linarith
    linarith
  have hmono : (1 - 7 / 64 / u - 7 / 64 / v) * (1 - δ - v) +
      (1 - 7 / 64 / u - 7 / 64 / w) * (1 - w - (1 - 7 / 64 / u) * δ * w / (7 / 64)) ≤
      (1 - 7 / 64 / u - 7 / 64 / v) * (1 - u * z / w - v) +
      (1 - 7 / 64 / u - 7 / 64 / w) * (1 - w - (1 - 7 / 64 / u) * (u * z / w) * w / (7 / 64)) := by
    have k1 := mul_le_mul_of_nonneg_left hδ' h1c
    have k2 := mul_le_mul_of_nonneg_left hδ' (mul_nonneg h1g (mul_nonneg h1b hw.le))
    nlinarith
  -- `G` at `δ = uz/w`, as a function of `V = v + w`
  have e13 : (1 - 7 / 64 / u - 7 / 64 / v) * (1 - u * z / w - v) +
      (1 - 7 / 64 / u - 7 / 64 / w) * (1 - w - (1 - 7 / 64 / u) * (u * z / w) * w / (7 / 64)) =
      (7 / 64 - 7 / 64 / u + 2 * u + u * (1 - u) / (7 / 64)) - (u / (7 / 64) - 1) * V -
        7 / 64 * (1 - u) * (V + u) / (v * w) := by
    rw [hzdef, hV]; field_simp; ring
  -- `vw ≤ V²/4`
  have hV0 : 0 < V := by positivity
  have h14 : 4 * (7 / 64) * (1 - u) * (V + u) / V ^ 2 ≤ 7 / 64 * (1 - u) * (V + u) / (v * w) := by
    rw [div_le_div_iff₀ (by positivity) (by positivity)]
    have : 4 * (v * w) ≤ V ^ 2 := by rw [hV]; nlinarith [sq_nonneg (v - w)]
    have h0 : 0 ≤ 7 / 64 * (1 - u) * (V + u) := by
      have : 0 ≤ 1 - u := by linarith
      positivity
    nlinarith [mul_le_mul_of_nonneg_left this h0]
  -- `ℛ(u, z) > 0`
  have hR := tcr_R hu1 hu2 hz.le
  have eR : (1 - u) * (320 * u ^ 3 - 133 * u ^ 2 - 82 * u + 35) / 320 +
      (u - 1) * (10240 * u ^ 3 - 9120 * u ^ 2 + 1939 * u - 245) / 1120 * z -
      (40960 * u ^ 3 - 43200 * u ^ 2 + 5789 * u - 245) / 2240 * z ^ 2 +
      u * (64 * u - 7) / 7 * z ^ 3 =
      u * V ^ 2 * (21 / 40 - ((7 / 64 - 7 / 64 / u + 2 * u + u * (1 - u) / (7 / 64)) -
        (u / (7 / 64) - 1) * V - 4 * (7 / 64) * (1 - u) * (V + u) / V ^ 2)) := by
    have hV' : V = z + 1 - u := by rw [hzdef]; ring
    rw [hV']
    have : z + 1 - u ≠ 0 := by rw [← hV']; exact hV0.ne'
    field_simp
    ring
  rw [eR] at hR
  have h14' : 0 < 21 / 40 - ((7 / 64 - 7 / 64 / u + 2 * u + u * (1 - u) / (7 / 64)) -
      (u / (7 / 64) - 1) * V - 4 * (7 / 64) * (1 - u) * (V + u) / V ^ 2) := by
    by_contra hc; push Not at hc
    have : u * V ^ 2 * (21 / 40 - ((7 / 64 - 7 / 64 / u + 2 * u + u * (1 - u) / (7 / 64)) -
      (u / (7 / 64) - 1) * V - 4 * (7 / 64) * (1 - u) * (V + u) / V ^ 2)) ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (by positivity) hc
    linarith
  linarith

/-- The case `w ≤ 1 - u - v` of `tcr_area_uvw`: the bound `SevenBoundaryTopCap.scalar3` with gaps
`s/v`, `s/w`, then `scalar_lt_2140`. -/
theorem tcr_case_A {u v w d e k : ℝ} (hu0 : 0 < u) (hv0 : 0 < v) (hw0 : 0 < w)
    (hU : u ≤ 1 - v - w) (hdv : v ≤ d) (he2 : e ≤ 1 - w) (hk1 : k ≤ 1)
    (h1c : 0 ≤ 1 - 7 / 64 / u - 7 / 64 / v) (h1g : 0 ≤ 1 - 7 / 64 / u - 7 / 64 / w) :
    (1 - 7 / 64 / u - 7 / 64 / v) * (k - d) + (1 - 7 / 64 / u - 7 / 64 / w) * e < 21 / 40 := by
  have hUpos : 0 < 1 - v - w := by linarith
  have hL : 0 < 7 / 64 / v := by positivity
  have hR : 0 < 7 / 64 / w := by positivity
  have eL : 7 / 64 / (7 / 64 / v) = v := by field_simp
  have eR : 7 / 64 / (7 / 64 / w) = w := by field_simp
  have hαu : 7 / 64 / (1 - v - w) ≤ 7 / 64 / u := div_le_div_of_nonneg_left (by norm_num) hu0 hU
  have hQ0 : (1 - 7 / 64 / u - 7 / 64 / v) * (k - d) + (1 - 7 / 64 / u - 7 / 64 / w) * e ≤
      (1 - v) * (1 - 7 / 64 / u - 7 / 64 / v) + (1 - w) * (1 - 7 / 64 / u - 7 / 64 / w) := by
    have h1 := mul_le_mul_of_nonneg_left (show k - d ≤ 1 - v by linarith) h1c
    have h2 := mul_le_mul_of_nonneg_left he2 h1g
    linarith
  obtain ⟨h3, hsZ⟩ := SevenBoundaryTopCap.scalar3 (L := 7 / 64 / v) (R := 7 / 64 / w)
    (M := 1 - v - w) (α := 7 / 64 / (1 - v - w)) (p := 1 - v) (p' := 1 - 7 / 64 / u - 7 / 64 / v)
    (q := 1 - w) (q' := 1 - 7 / 64 / u - 7 / 64 / w) hL hR hUpos (by rw [eL, eR])
    (by field_simp) (by linarith) (by rw [eL]) h1c (by linarith) (by linarith) (by rw [eR]) h1g
    (by linarith)
  have := scalar_lt_2140 (X := 7 / 64 / v + 7 / 64 / w) (by positivity) (by positivity) hsZ
    (SevenBoundaryTopCap.four_le_mul_inv hL hR)
  linarith

/-- The area bound `[CDEX] < 21/40` in the variables `u = s/b`, `v = s/M`, `w = s/T`. -/
theorem tcr_area_uvw {u v w d e k : ℝ} (hu1 : 7 / 32 ≤ u) (hu2 : u ≤ 35 / 48) (hv0 : 0 < v)
    (hw0 : 0 < w) (hdv : v ≤ d) (hk1 : k ≤ 1)
    (hF4 : 7 / 64 ≤ 7 / 64 / w * (1 - u - v) + 7 / 64 / u * (1 - k))
    (he' : e ≤ 1 - w - (1 - 7 / 64 / u) * (1 - k) * w / (7 / 64))
    (h1c : 0 ≤ 1 - 7 / 64 / u - 7 / 64 / v) (h1g : 0 ≤ 1 - 7 / 64 / u - 7 / 64 / w) :
    (1 - 7 / 64 / u - 7 / 64 / v) * (k - d) + (1 - 7 / 64 / u - 7 / 64 / w) * e < 21 / 40 := by
  have hu0 : 0 < u := by linarith
  have h1b : 0 ≤ 1 - 7 / 64 / u := by
    have : 0 ≤ 7 / 64 / v := by positivity
    linarith
  have hQG : (1 - 7 / 64 / u - 7 / 64 / v) * (k - d) + (1 - 7 / 64 / u - 7 / 64 / w) * e ≤
      (1 - 7 / 64 / u - 7 / 64 / v) * (1 - (1 - k) - v) +
      (1 - 7 / 64 / u - 7 / 64 / w) * (1 - w - (1 - 7 / 64 / u) * (1 - k) * w / (7 / 64)) := by
    have h1 := mul_le_mul_of_nonneg_left (show k - d ≤ 1 - (1 - k) - v by linarith) h1c
    have h2 := mul_le_mul_of_nonneg_left he' h1g
    linarith
  rcases le_or_gt w (1 - u - v) with hA | hB
  · have he2 : e ≤ 1 - w := by
      have : 0 ≤ (1 - 7 / 64 / u) * (1 - k) * w / (7 / 64) := by
        have : 0 ≤ 1 - k := by linarith
        positivity
      linarith
    exact tcr_case_A hu0 hv0 hw0 (by linarith) hdv he2 hk1 h1c h1g
  · have hz : 0 < v + w - 1 + u := by linarith
    have hδ : u * (v + w - 1 + u) ≤ w * (1 - k) := by
      have e1 : 7 / 64 / w * (1 - u - v) * (u * w) = 7 / 64 * u * (1 - u - v) := by
        field_simp
      have e2 : 7 / 64 / u * (1 - k) * (u * w) = 7 / 64 * (w * (1 - k)) := by
        field_simp
      have := mul_le_mul_of_nonneg_right hF4 (show 0 ≤ u * w by positivity)
      nlinarith
    exact tcr_area_B hu1 hu2 hv0 hw0 hz hδ h1c h1g hQG

/-- The area bound in the coordinates: `Q = (1-c)(k-d) + (1-g)e < 21/40`. -/
theorem tcr_area_core {a h b c d e f g k : ℝ} (_hah : a < h) (hbc : b < c) (hc : c < 1)
    (hbf : b ≤ f) (hf : f ≤ 1 / 2) (hfg : f < g) (hg1 : g < 1)
    (hek : e < k) (hk1 : k ≤ 1) (hkh : h < k) (hb3 : 3 / 20 < b)
    (hABH : 7 / 64 ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b)) (hBCD : 7 / 64 ≤ d * (c - b))
    (hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k)) :
    (1 - c) * (k - d) + (1 - g) * e < 21 / 40 := by
  have hb : 0 < b := by linarith
  have hM : 0 < c - b := by linarith
  have hT : 0 < g - b := by linarith
  obtain ⟨u, hu⟩ : ∃ u, 7 / 64 / b = u := ⟨_, rfl⟩
  obtain ⟨v, hv⟩ : ∃ v, 7 / 64 / (c - b) = v := ⟨_, rfl⟩
  obtain ⟨w, hw⟩ : ∃ w, 7 / 64 / (g - b) = w := ⟨_, rfl⟩
  have hu0 : 0 < u := by rw [← hu]; positivity
  have hv0 : 0 < v := by rw [← hv]; positivity
  have hw0 : 0 < w := by rw [← hw]; positivity
  have hub : 7 / 64 / u = b := by rw [← hu]; field_simp
  have hvM : 7 / 64 / v = c - b := by rw [← hv]; field_simp
  have hwT : 7 / 64 / w = g - b := by rw [← hw]; field_simp
  have hdv : v ≤ d := by rw [← hv, div_le_iff₀ hM]; linarith
  have huv : u + v ≤ h := by
    have h1 : v ≤ a := by rw [← hv, div_le_iff₀ hM]; linarith
    have h2 : u ≤ h - a := by rw [← hu, div_le_iff₀ hb]; linarith
    linarith
  have hF4 : 7 / 64 ≤ (g - b) * (1 - u - v) + b * (1 - k) := by
    have h1 := mul_le_mul_of_nonneg_right hbf (show 0 ≤ k - h by linarith)
    have h2 := mul_le_mul_of_nonneg_left huv hT.le
    nlinarith
  have hF3 : 7 / 64 ≤ (g - b) * (1 - e) - (1 - b) * (1 - k) := by
    have := mul_le_mul_of_nonneg_right (sub_nonneg.2 hbf) (show 0 ≤ k - e by linarith)
    nlinarith
  have hu1 : 7 / 32 ≤ u := by rw [← hu, le_div_iff₀ hb]; linarith
  have hu2 : u ≤ 35 / 48 := by rw [← hu, div_le_iff₀ hb]; linarith
  have hwg : w * (g - b) = 7 / 64 := by rw [← hw]; field_simp
  have he' : e ≤ 1 - w - (1 - 7 / 64 / u) * (1 - k) * w / (7 / 64) := by
    rw [hub]
    have : (1 - e) * (7 / 64) ≥ w * (7 / 64) + (1 - b) * (1 - k) * w := by
      have := mul_le_mul_of_nonneg_left hF3 hw0.le
      nlinarith
    linarith
  have hF4' : 7 / 64 ≤ 7 / 64 / w * (1 - u - v) + 7 / 64 / u * (1 - k) := by
    rw [hwT, hub]; exact hF4
  have hc' : c = 7 / 64 / u + 7 / 64 / v := by rw [hub, hvM]; ring
  have hg' : g = 7 / 64 / u + 7 / 64 / w := by rw [hub, hwT]; ring
  have h1c : 0 ≤ 1 - 7 / 64 / u - 7 / 64 / v := by
    have : 1 - 7 / 64 / u - 7 / 64 / v = 1 - c := by rw [hc']; ring
    linarith
  have h1g : 0 ≤ 1 - 7 / 64 / u - 7 / 64 / w := by
    have : 1 - 7 / 64 / u - 7 / 64 / w = 1 - g := by rw [hg']; ring
    linarith
  have key := tcr_area_uvw hu1 hu2 hv0 hw0 hdv hk1 hF4' he' h1c h1g
  have e1 : 1 - 7 / 64 / u - 7 / 64 / v = 1 - c := by rw [hc']; ring
  have e2 : 1 - 7 / 64 / u - 7 / 64 / w = 1 - g := by rw [hg']; ring
  rw [e1, e2] at key
  exact key

/-- In the exterior case: if every triangle of the seven anchors and `X` has area at least
`7/128`, the doubled area of the convex quadrilateral `CDEX`,
`[CDE] + [CEX] = (1-c)(k-d) + (1-g)e`, is strictly below `21/40`; consequently `P` does not lie
in the closed quadrilateral `CDEX` at minimum area at least `7/128`. -/
theorem minTriangleArea_lt_of_mem_CDEX {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) :
    (7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f (g, k)) →
        sarea (c, 0) (1, d) (1, e) + sarea (c, 0) (1, e) (g, k) < 21 / 40) ∧
      ∀ P : Point, InHeptagon a h b c d e f P →
        InClosedPolygon ![(c, 0), (1, d), (1, e), (g, k)] P →
        minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  have part1 : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f (g, k)) →
      sarea (c, 0) (1, d) (1, e) + sarea (c, 0) (1, e) (g, k) < 21 / 40 := by
    intro hmin
    have hb3 := three_div_twenty_lt_b hN hX hmin
    have hkh := h_lt_k hN hX hmin
    have hA := hmin.trans SevenBoundaryCaps.minAnchor_of₁
    have H := SevenBoundaryCaps.anchorCosts hN.1 hA
    obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
    obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
    simp only [sarea] at hfg hg1 hek hk1 hFEX
    have hHFX : 7 / 64 ≤ (g - f) * (1 - h) + f * (1 - k) := by
      have := SevenBoundaryCaps.cost_neg (v := f * (k - h) - g * (1 - h)) hmin 1 6 7 (by sa_eval)
        (by nlinarith)
      linarith
    have hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k) :=
      SevenBoundaryCaps.cost hmin 6 5 7 (by sa_eval) (by nlinarith)
    have e1 : sarea (c, 0) (1, d) (1, e) + sarea (c, 0) (1, e) (g, k) =
        (1 - c) * (k - d) + (1 - g) * e := by simp only [sarea]; ring
    rw [e1]
    exact tcr_area_core hah hbc hc hbf hf hfg hg1 hek hk1 hkh hb3 H.ABH H.ABC H.BCD hHFX hEFX
  refine ⟨part1, fun P hP hq => ?_⟩
  by_contra hcon
  push Not at hcon
  have hQ := part1 (hcon.trans SevenBoundaryCaps.min₁_left)
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX
  simp only at hfg hg1 hek hk1
  have hconv : IsConvexPolygon ![(c, 0), (1, d), (1, e), (g, k)] := by
    refine SevenBoundaryTopCap.isConvexPolygon_four ?_ ?_ ?_ ?_ <;> simp only [sarea] <;>
      nlinarith [mul_pos (sub_pos.2 hde) (sub_pos.2 hg1), mul_pos (sub_pos.2 hc) (sub_pos.2 hek)]
  have hQ' := SevenBoundaryTopCap.quad_area_ge hcon 3 4 5 7 8 (by decide) hconv hq
  have hs2 : (21 / 40 : ℝ) < 2 * (1 + Real.sqrt 2) * (7 / 64) := by
    nlinarith [SevenBoundaryTopCap.sqrt_two_gt']
  have e2 : sarea (c, 0) (1, d) (1, e) + sarea (c, 0) (1, e) (g, k) =
      sarea (c, 0) (1, d) (1, e) + sarea (c, 0) (1, e) (g, k) := rfl
  change 2 * (1 + Real.sqrt 2) * (7 / 64) ≤ sarea (c, 0) (1, d) (1, e) +
    sarea (c, 0) (1, e) (g, k) at hQ'
  linarith

/-- In the exterior case at minimum area at least `7/128`, `P` lies strictly inside both
`conv(A,D,E,H)` and `conv(B,C,X,F)`: the central region of the exterior octagon
`A, B, C, D, E, X, F, H`. -/
theorem inCentralRegion_exteriorOctagon {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    InCentralRegion (exteriorOctagon a h b c d e f (g, k)) P := by
  obtain ⟨hHE, hAD, hBF⟩ := SevenBoundaryTopCap.partial_central_signs hN hX hP hmin
  have hN' := hN
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN'
  have hX' := hX
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX'
  simp only at hfg hg1 hek hk1
  have hP' := hP
  obtain ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩ := hP'
  -- `P` is strictly left of `X → F` and weakly left of `E → X`
  have hDEF : 0 < sarea (1, d) (1, e) (f, 1) := by simp only [sarea]; nlinarith
  have hEFH : 0 < sarea (1, e) (f, 1) (0, h) := by simp only [sarea]; nlinarith
  have hEXD : 0 < sarea (1, e) (g, k) (1, d) := by simp only [sarea]; nlinarith
  have hEXF : 0 < sarea (1, e) (g, k) (f, 1) := by simp only [sarea] at hFEX ⊢; linarith
  have hXFE : 0 < sarea (g, k) (f, 1) (1, e) := by simp only [sarea] at hFEX ⊢; linarith
  have hXFH : 0 < sarea (g, k) (f, 1) (0, h) := by simp only [sarea]; nlinarith
  have hEXP : 0 < sarea (1, e) (g, k) P := by
    have b1 := SevenBoundaryTopCap.sarea_bary (1, d) (1, e) (f, 1) P (1, e) (g, k)
    rw [show sarea (1, e) (g, k) (1, e) = 0 by simp only [sarea]; ring] at b1
    by_contra hn; push Not at hn
    nlinarith [mul_pos hEF hEXD, mul_pos hDE hEXF, mul_nonpos_of_nonpos_of_nonneg hn hDEF.le]
  have hXFP : 0 < sarea (g, k) (f, 1) P := by
    have b1 := SevenBoundaryTopCap.sarea_bary (1, e) (f, 1) (0, h) P (g, k) (f, 1)
    rw [show sarea (g, k) (f, 1) (f, 1) = 0 by simp only [sarea]; ring] at b1
    by_contra hn; push Not at hn
    nlinarith [mul_pos hFH hXFE, mul_pos hEF hXFH, mul_nonpos_of_nonpos_of_nonneg hn hEFH.le]
  have hCX : 0 < sarea (c, 0) (g, k) P := by
    by_contra hn; push Not at hn
    have hXC : 0 ≤ sarea (g, k) (c, 0) P := by rw [sarea_swap₁₂]; linarith
    have := (minTriangleArea_lt_of_mem_CDEX hN hX).2 P hP
      (SevenBoundaryTopCap.inClosedPolygon_four hCD.le hDE.le hEXP.le hXC)
    linarith
  refine ⟨?_, ?_⟩
  · intro i
    fin_cases i <;> simp [exteriorOctagon, finRotate_apply]
    · exact hAD
    · exact hDE
    · rw [sarea_swap₁₂]; linarith
    · exact hHA
  · intro i
    fin_cases i <;> simp [exteriorOctagon, finRotate_apply]
    · exact hBC
    · exact hCX
    · exact hXFP
    · rw [sarea_swap₁₂]; linarith

end Heilbronn.Nine.SevenBoundaryTopCapRight
