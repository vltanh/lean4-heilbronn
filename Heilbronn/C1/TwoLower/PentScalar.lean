module

public import Heilbronn.C1.Setting

/-! # Scalar inequalities of `hand/C1_MIXED_PENTAGON.md`

The real-variable parts of the mixed upper-pair exclusion, at the threshold `s = 7/64` with
`ρ = 13/16`:

* `cdl_le`: the bound (5), `[CDL] ≤ (1 - s)²`;
* `main_scalar`: §§5–6, the bounds (9)–(13) on `A, B, T` and the quartics `N₁, N₂ > 0`
  contradict the barycentric inequality (8) `Φ = AB - s(A + 2B + T) ≥ 0`;
* `rev_scalar`: §7, the inequalities (15)–(19) of the reverse alternative.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1MixedPentagon

/-- (5): `[CDL] = d(c - l) + (1 - c)y ≤ (1 - s)²`, from `hl ≥ s` and `h(c - l) - cy ≥ s`. -/
theorem cdl_le {h c d l y : ℝ} (h0 : 0 < h) (hh : h ≤ 1) (hc1 : c ≤ 1) (hcs : 7 / 64 < c)
    (hd0 : 0 ≤ d) (hd : d ≤ 1 - 7 / 64) (hl : 7 / 64 ≤ h * l) (hy : 7 / 64 ≤ h * (c - l) - c * y) :
    d * (c - l) + (1 - c) * y ≤ (1 - 7 / 64) ^ 2 := by
  have c0 : 0 < c := by linarith
  have e2 : 7 / 64 ≤ l := by nlinarith
  have hy' : c * y ≤ h * (c - l) - 7 / 64 := by linarith
  have k : c * (d * (c - l) + (1 - c) * y) ≤ c * (1 - 7 / 64) ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_left hy' (by linarith : (0 : ℝ) ≤ 1 - c),
      mul_nonneg (mul_nonneg hd0 c0.le) (by linarith : (0 : ℝ) ≤ l - 7 / 64),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - 7 / 64 - d)
        (mul_nonneg c0.le (by linarith : (0 : ℝ) ≤ c - 7 / 64)),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - c) (by linarith : (0 : ℝ) ≤ 2 - c),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - c) (by linarith : (0 : ℝ) ≤ h * l - 7 / 64),
      mul_nonneg (mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - c) c0.le)
        (by linarith : (0 : ℝ) ≤ 1 - h)]
  exact le_of_mul_le_mul_left k c0

/-- (9): `d ≥ 10/13` from `hc > ρ` and `h(1 - c) + cd > ρ`. -/
theorem d_ge {h c d : ℝ} (h0 : 0 < h) (hh : h ≤ 1) (c0 : 0 < c) (hc1 : c ≤ 1)
    (hk1 : 13 / 16 < h * c) (hk2 : 13 / 16 < h * (1 - c) + c * d) : 10 / 13 ≤ d := by
  have hh' : 13 / 16 < h := by nlinarith
  by_contra hlt
  push Not at hlt
  have e1 : c * d ≤ c * (10 / 13) := mul_le_mul_of_nonneg_left hlt.le c0.le
  have e2 : c * (h - 10 / 13) < h - 13 / 16 := by linarith
  have e3 : h * (c * (h - 10 / 13)) ≤ h * (h - 13 / 16) := mul_le_mul_of_nonneg_left e2.le h0.le
  have e4 : (h - 10 / 13) * (13 / 16) < (h - 10 / 13) * (h * c) :=
    mul_lt_mul_of_pos_left hk1 (by linarith)
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - h) (by linarith : (0 : ℝ) ≤ h - 5 / 8)]

/-- `N₁(f) > 0` on `[3s, 1 - 3s]`, in the form of the final rational bound (14) for `f ≤ 5/8`. -/
theorem quart1 {f : ℝ} (hf3 : 3 * (7 / 64) ≤ f) (hf1 : f ≤ 1 - 3 * (7 / 64)) :
    (1 - f) * ((f + 7 / 64 * f + 10 * (7 / 64) * f / 13 - 10 / 13 * f ^ 2 - 2 * (7 / 64)) -
        2 * (7 / 64) * f) *
      ((50 / 57 * (f + 399 / 4096 * f - 2 * (7 / 64)) - 7 / 64 * f - (7 / 64) ^ 2 * f) -
        7 / 64 * f) - 2 * (7 / 64) ^ 2 * f ^ 2 * (1 - f) - 7 / 64 * f ^ 2 * (91 / 512) < 0 := by
  nlinarith [mul_nonneg (sq_nonneg (f - 1 / 2)) (by linarith : (0 : ℝ) ≤ f - 21 / 64),
    mul_nonneg (sq_nonneg (f - 1 / 2))
      (mul_nonneg (by linarith : (0 : ℝ) ≤ f - 21 / 64) (by linarith : (0 : ℝ) ≤ 43 / 64 - f)),
    sq_nonneg (f - 1 / 2 - 44214712 / 337020417)]

/-- `N₂(f) > 0` on `[3s, 1 - 3s]`, in the form of the final rational bound (14) for `f ≥ 5/8`. -/
theorem quart2 {f : ℝ} (hf3 : 3 * (7 / 64) ≤ f) (hf1 : f ≤ 1 - 3 * (7 / 64)) :
    (1 - f) * ((f + 7 / 64 * f + 10 * (7 / 64) * f / 13 - 10 / 13 * f ^ 2 - 2 * (7 / 64)) -
        2 * (7 / 64) * f) *
      ((50 / 57 * (f + 399 / 4096 * f - 2 * (7 / 64)) - 7 / 64 * f - (7 / 64) ^ 2 * f) -
        7 / 64 * f) - 2 * (7 / 64) ^ 2 * f ^ 2 * (1 - f) -
      7 / 64 * f ^ 2 * (7 / 64 * (1 + f) + 3 / 13 * (5 / 8 - f)) < 0 := by
  nlinarith [mul_nonneg (sq_nonneg (f - 1 / 2)) (by linarith : (0 : ℝ) ≤ f - 21 / 64),
    mul_nonneg (sq_nonneg (f - 1 / 2))
      (mul_nonneg (by linarith : (0 : ℝ) ≤ f - 21 / 64) (by linarith : (0 : ℝ) ≤ 43 / 64 - f)),
    sq_nonneg (f - 1 / 2 - 4194712 / 16996869)]

/-- `dx ≤ d - s`, from `[ODQ] ≥ s` and `[CDQ] ≥ s` (`Q = (x, t)` below `OD`). -/
theorem dx_le {c d x t : ℝ} (hd0 : 0 < d) (hc1 : c ≤ 1) (hx1 : x ≤ 1)
    (hODQ : 7 / 64 ≤ d * x - t) (hCDQ : 7 / 64 ≤ d * (c - x) + (1 - c) * t) :
    d * x ≤ d - 7 / 64 := by
  nlinarith [mul_le_mul_of_nonneg_left (by linarith : t ≤ d * x - 7 / 64)
      (by linarith : (0 : ℝ) ≤ 1 - c),
    mul_nonneg (mul_nonneg hd0.le (by linarith : (0 : ℝ) ≤ 1 - x)) (by linarith : (0 : ℝ) ≤ 1 - c)]

/-- §5: `fA ≤ f a(f)` (11). -/
theorem a_bound {d f l y A : ℝ} (hA : A = 1 - d * f - (1 - f) * y - (1 - d) * l)
    (hf0 : 0 < f) (hf3 : 3 * (7 / 64) ≤ f) (hf1 : f ≤ 1) (hd1 : d ≤ 1) (hd10 : 10 / 13 ≤ d)
    (hls : 7 / 64 ≤ l) (hOFL : 7 / 64 ≤ f * y - l) :
    f * A ≤ f + 7 / 64 * f + 10 * (7 / 64) * f / 13 - 10 / 13 * f ^ 2 - 2 * (7 / 64) := by
  have hdf : d * f ≤ 1 := by nlinarith
  subst hA
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ f * y - 7 / 64 - l),
    mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d * f) (by linarith : (0 : ℝ) ≤ l - 7 / 64),
    mul_nonneg (mul_nonneg hf0.le (by linarith : (0 : ℝ) ≤ f - 7 / 64))
      (by linarith : (0 : ℝ) ≤ d - 10 / 13)]

/-- §5: `fB ≤ f b(f)` (12). -/
theorem b_bound {h c d f l y x t B : ℝ} (hB : B = x * (h - y) - l * (h - t))
    (h0 : 0 < h) (hh : h ≤ 1) (hd0 : 0 < d) (hd1 : d ≤ 1 - 7 / 64) (hc1 : c ≤ 1)
    (hf0 : 0 < f) (hf3 : 3 * (7 / 64) ≤ f) (hx0 : 0 < x) (hx1 : x ≤ 1) (hth : t < h)
    (hxft : f * t < x) (hl : 7 / 64 ≤ h * l) (hOFL : 7 / 64 ≤ f * y - l)
    (hODQ : 7 / 64 ≤ d * x - t) (hCDQ : 7 / 64 ≤ d * (c - x) + (1 - c) * t) :
    f * B ≤ 50 / 57 * (f + 399 / 4096 * f - 2 * (7 / 64)) - 7 / 64 * f - (7 / 64) ^ 2 * f := by
  have k1 : h * (f * B) ≤ h * (x * (f - 2 * (7 / 64)) - 7 / 64 * f + 7 / 64 * f * t) := by
    subst hB
    nlinarith [mul_nonneg (mul_nonneg h0.le hx0.le) (by linarith : (0 : ℝ) ≤ f * y - l - 7 / 64),
      mul_nonneg (by linarith : (0 : ℝ) ≤ h * l - 7 / 64)
        (by have := mul_pos hf0 (sub_pos.2 hth); linarith : (0 : ℝ) ≤ x + f * (h - t)),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - h)
        (by have := mul_pos (mul_pos h0 hx0) hf0; linarith :
          (0 : ℝ) ≤ h * x * f + 7 / 64 * (x - f * t))]
  have k1' := le_of_mul_le_mul_left k1 h0
  have hdx := dx_le hd0 hc1 hx1 hODQ hCDQ
  have k2 : 7 / 64 * f * t ≤ 7 / 64 * f * (d * x - 7 / 64) :=
    mul_le_mul_of_nonneg_left (by linarith) (by positivity)
  have K1 : 0 < f - 2 * (7 / 64) + 7 / 64 * f * d := by nlinarith
  have k3 : d * (x * (f - 2 * (7 / 64) + 7 / 64 * f * d)) ≤
      (d - 7 / 64) * (f - 2 * (7 / 64) + 7 / 64 * f * d) := by
    nlinarith [mul_le_mul_of_nonneg_right hdx K1.le]
  have k4 : (d - 7 / 64) * (f - 2 * (7 / 64) + 7 / 64 * f * d) ≤
      d * (50 / 57 * (f + 399 / 4096 * f - 2 * (7 / 64))) := by
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - 7 / 64 - d)
      (by nlinarith : (0 : ℝ) ≤ d * f * (1 - 7 / 64) + f - 2 * (7 / 64))]
  have k5 := le_of_mul_le_mul_left (k3.trans k4) hd0
  nlinarith

/-- §5: `(1 - f)T ≥ (1 - f)τ(f)` (13), in the two cases `f ≤ 5/8` and `f ≥ 5/8`. -/
theorem t_bound {h d f x t T : ℝ} (hT : T = (x * (1 - h) + f * (h - t)) + (h - t - x * (h - d)))
    (hf0 : 0 < f) (hf1 : f < 1) (hd10 : 10 / 13 ≤ d) (hdh : d ≤ h) (hx : 13 / 16 < x)
    (hHDF : 7 / 64 ≤ 1 - h + f * (h - d)) (hDFQ : 7 / 64 ≤ (1 - d) * (1 - x) - (1 - f) * (t - d)) :
    (f ≤ 5 / 8 → 91 / 512 ≤ (1 - f) * T) ∧
      (5 / 8 ≤ f → 7 / 64 * (1 + f) + 3 / 13 * (5 / 8 - f) ≤ (1 - f) * T) := by
  have kT : 7 / 64 * (1 + f) + (1 - h + f * (h - d)) * (2 * x - 1 - f) ≤ (1 - f) * T := by
    subst hT
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 + f)
      (by linarith : (0 : ℝ) ≤ (1 - d) * (1 - x) - (1 - f) * (t - d) - 7 / 64)]
  have he : 1 - h + f * (h - d) ≤ 3 / 13 := by
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ h - d) (by linarith : (0 : ℝ) ≤ 1 - f)]
  constructor
  · intro hf
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - h + f * (h - d) - 7 / 64)
      (by linarith : (0 : ℝ) ≤ 2 * x - 1 - f)]
  · intro hf
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 3 / 13 - (1 - h + f * (h - d)))
        (by linarith : (0 : ℝ) ≤ f - 5 / 8),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - h + f * (h - d))
        (by linarith : (0 : ℝ) ≤ x - 13 / 16)]

/-- §6: the bounds (11)–(13) contradict the barycentric inequality (8), via (14). -/
theorem final_contra {f A B T : ℝ} (hf0 : 0 < f) (hf3 : 3 * (7 / 64) ≤ f)
    (hf1 : f ≤ 1 - 3 * (7 / 64)) (hA : 3 * (7 / 64) ≤ A) (hB : 7 / 64 ≤ B)
    (kA : f * A ≤ f + 7 / 64 * f + 10 * (7 / 64) * f / 13 - 10 / 13 * f ^ 2 - 2 * (7 / 64))
    (kB : f * B ≤ 50 / 57 * (f + 399 / 4096 * f - 2 * (7 / 64)) - 7 / 64 * f - (7 / 64) ^ 2 * f)
    (kT1 : f ≤ 5 / 8 → 91 / 512 ≤ (1 - f) * T)
    (kT2 : 5 / 8 ≤ f → 7 / 64 * (1 + f) + 3 / 13 * (5 / 8 - f) ≤ (1 - f) * T)
    (hΦ : 0 ≤ A * B - 7 / 64 * (A + 2 * B + T)) : False := by
  have hf1' : 0 < 1 - f := by linarith
  have eΦ : f ^ 2 * (1 - f) * (A * B - 7 / 64 * (A + 2 * B + T)) =
      (1 - f) * ((f * A - 2 * (7 / 64) * f) * (f * B - 7 / 64 * f)) -
        2 * (7 / 64) ^ 2 * f ^ 2 * (1 - f) - 7 / 64 * f ^ 2 * ((1 - f) * T) := by ring
  have p0 : 0 ≤ f ^ 2 * (1 - f) * (A * B - 7 / 64 * (A + 2 * B + T)) :=
    mul_nonneg (mul_nonneg (sq_nonneg f) hf1'.le) hΦ
  have fA := mul_le_mul_of_nonneg_left hA hf0.le
  have fB := mul_le_mul_of_nonneg_left hB hf0.le
  have m1 : (f * A - 2 * (7 / 64) * f) * (f * B - 7 / 64 * f) ≤
      ((f + 7 / 64 * f + 10 * (7 / 64) * f / 13 - 10 / 13 * f ^ 2 - 2 * (7 / 64)) -
        2 * (7 / 64) * f) *
      ((50 / 57 * (f + 399 / 4096 * f - 2 * (7 / 64)) - 7 / 64 * f - (7 / 64) ^ 2 * f) -
        7 / 64 * f) :=
    mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
  have m2 := mul_le_mul_of_nonneg_left m1 hf1'.le
  have hf2 : 0 ≤ 7 / 64 * f ^ 2 := by positivity
  rcases le_total f (5 / 8) with hf | hf
  · have := mul_le_mul_of_nonneg_left (kT1 hf) hf2
    have := quart1 hf3 hf1
    linarith
  · have := mul_le_mul_of_nonneg_left (kT2 hf) hf2
    have := quart2 hf3 hf1
    linarith

/-- §§5–6 of the note: the barycentric inequality (8) and the area bounds are incompatible. -/
theorem main_scalar {h c d f l y x t A B T : ℝ}
    (hAe : A = 1 - d * f - (1 - f) * y - (1 - d) * l) (hBe : B = x * (h - y) - l * (h - t))
    (hTe : T = (x * (1 - h) + f * (h - t)) + (h - t - x * (h - d)))
    (h0 : 0 < h) (hh : h ≤ 1) (c0 : 0 < c) (hc1 : c ≤ 1) (hd0 : 0 < d) (hdh : d ≤ h)
    (hf0 : 0 < f) (hfc : f ≤ c)
    (hk1 : 13 / 16 < h * c) (hk2 : 13 / 16 < h * (1 - c) + c * d) (hhx : 13 / 16 < h * x)
    (hHDF : 7 / 64 ≤ 1 - h + f * (h - d)) (hfh : 3 * (7 / 64) ≤ h * f)
    (hCDF : 3 * (7 / 64) ≤ 1 - c + d * (c - f)) (hl : 7 / 64 ≤ h * l)
    (hOFL : 7 / 64 ≤ f * y - l) (hODQ : 7 / 64 ≤ d * x - t)
    (hCDQ : 7 / 64 ≤ d * (c - x) + (1 - c) * t)
    (hDFQ : 7 / 64 ≤ (1 - d) * (1 - x) - (1 - f) * (t - d))
    (hxft : f * t < x) (hth : t < h) (hx1 : x ≤ 1) (hl0 : 0 < l) (hx0 : 0 < x)
    (hA : 3 * (7 / 64) ≤ A) (hB : 7 / 64 ≤ B)
    (hΦ : 0 ≤ A * B - 7 / 64 * (A + 2 * B + T)) : False := by
  have hd10 := d_ge h0 hh c0 hc1 hk1 hk2
  have hf3 : 3 * (7 / 64) ≤ f := by nlinarith [mul_le_mul_of_nonneg_right hh hf0.le]
  have hd1' : d ≤ 1 := by linarith
  have hf1 : f ≤ 1 - 3 * (7 / 64) := by
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ c - f) (by linarith : (0 : ℝ) ≤ 1 - d)]
  have hd1 : d ≤ 1 - 7 / 64 := by
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ h - d) (by linarith : (0 : ℝ) ≤ 1 - f)]
  have hls : 7 / 64 ≤ l := by nlinarith [mul_le_mul_of_nonneg_right hh hl0.le]
  have hx : 13 / 16 < x := by nlinarith [mul_le_mul_of_nonneg_right hh hx0.le]
  have kA := a_bound hAe hf0 hf3 (by linarith) hd1' hd10 hls hOFL
  have kB := b_bound hBe h0 hh hd0 hd1 hc1 hf0 hf3 hx0 hx1 hth hxft hl hOFL hODQ hCDQ
  obtain ⟨kT1, kT2⟩ := t_bound hTe hf0 (by linarith) hd10 hdh hx hHDF hDFQ
  exact final_contra hf0 hf3 hf1 hA hB kA kB kT1 kT2 hΦ

/-- §7 of the note: the reverse alternative, (15)–(19). Here `P = (p, z)`, `Q = (x, t)`,
`V = [HCQ] = hx + ct - hc`. -/
theorem rev_scalar {h c d x t p z : ℝ} (h0 : 0 < h) (hh : h ≤ 1) (c0 : 0 < c) (hc1 : c ≤ 1)
    (hd0 : 0 < d) (hdh : d ≤ h) (hd1 : d ≤ 1 - 7 / 64) (hx1 : x ≤ 1)
    (hcz : 13 / 16 < c * z) (hHCP : 7 / 64 ≤ h * p + c * z - h * c)
    (hHPQ : 7 / 64 ≤ x * (h - z) - (h - t) * p) (hODQ : 7 / 64 ≤ d * x - t)
    (hCDQ : 7 / 64 ≤ d * (c - x) + (1 - c) * t) (hth : t < h)
    (hV : 0 < h * x + c * t - h * c) : False := by
  have hdx := dx_le hd0 hc1 hx1 hODQ hCDQ
  have k16 : 7 / 64 * (2 * h - t) ≤ (h - z) * (h * x + c * t - h * c) := by
    nlinarith [mul_le_mul_of_nonneg_left hHPQ h0.le,
      mul_nonneg (by linarith : (0 : ℝ) ≤ h - t)
        (by linarith : (0 : ℝ) ≤ h * p + c * z - h * c - 7 / 64)]
  have ht2 : t ≤ h - 2 * (7 / 64) := by linarith
  have hhx : d * (h * x) ≤ d * (h - 7 / 64) := by
    nlinarith [mul_le_mul_of_nonneg_left hdx h0.le]
  have hhx' := le_of_mul_le_mul_left hhx hd0
  have hVle : h * x + c * t - h * c ≤ 1 - 7 / 64 - 3 * c * (7 / 64) := by
    nlinarith [mul_le_mul_of_nonneg_left (by linarith : t ≤ d * x - 7 / 64) c0.le,
      mul_le_mul_of_nonneg_left hdx c0.le,
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - h) (by linarith : (0 : ℝ) ≤ 1 - c),
      mul_nonneg c0.le (by linarith : (0 : ℝ) ≤ 1 - 7 / 64 - d)]
  have hpos : 0 < (h - z) * (h * x + c * t - h * c) := by nlinarith
  have hz : 0 < h - z := pos_of_mul_pos_left hpos hV.le
  have k1 : c * ((h - z) * (h * x + c * t - h * c)) ≤
      (c * h - 13 / 16) * (1 - 7 / 64 - 3 * c * (7 / 64)) := by
    have e1 : c * (h - z) ≤ c * h - 13 / 16 := by linarith
    have e2 : 0 < c * (h - z) := mul_pos c0 hz
    calc c * ((h - z) * (h * x + c * t - h * c))
        = (c * (h - z)) * (h * x + c * t - h * c) := by ring
      _ ≤ (c * h - 13 / 16) * (h * x + c * t - h * c) :=
          mul_le_mul_of_nonneg_right e1 hV.le
      _ ≤ (c * h - 13 / 16) * (1 - 7 / 64 - 3 * c * (7 / 64)) :=
          mul_le_mul_of_nonneg_left hVle (by linarith)
  have k2 : c * (7 / 64 * (h + 2 * (7 / 64))) ≤ c * ((h - z) * (h * x + c * t - h * c)) :=
    mul_le_mul_of_nonneg_left (by linarith) c0.le
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - h)
      (mul_nonneg c0.le (by nlinarith : (0 : ℝ) ≤ 1 - 2 * (7 / 64) - 3 * c * (7 / 64))),
    mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - c)
      (by linarith : (0 : ℝ) ≤ 2097 / 2048 - 21 * (c + 1) / 64)]

end Heilbronn.C1MixedPentagon
