module

public import Heilbronn.Nine.Setup.Value

/-! # Scalar cores of the eight-boundary theorems (`docs/proof/nine/EIGHT_BOUNDARY.md`)

Pure real-variable forms of the inequality chains of `EIGHT_BOUNDARY.md`, used by
`Heilbronn/Nine/EightBoundary/Basic.lean`. Divisions such as `s/L` are replaced by auxiliary
variables `uL` with `uL * L = s`, so that every step is a polynomial inequality.

* `scalar_bound_core`: the scalar contradiction (6)–(10) of §4 (`claim_scalar_bound`);
* `gap_core`: Lemma 7 for one choice of the largest gap;
* `overlap_core`: Lemma 10 (`s ≤ (3-2√2)/2`);
* `corner_core`: Theorem 2 in the corner at the origin (`s ≤ 5-2√6`);
* `wedge_core`: Theorem 6 (`s ≤ 5-2√6`);
* `caps_core`: Theorem 8 (`s(m²+5m+1) ≤ m²`);
* `split_core`: Theorem 9 (`s < 1/10`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary

/-! ### The scalar bound of §4 -/

/-- `P(u) = 35 - 306u + 827u² - 640u³ > 0` on `[0, 1/2]`, (10). -/
theorem cubic_P_pos {u : ℝ} (h1 : u ≤ 1 / 2) :
    0 < 35 - 306 * u + 827 * u ^ 2 - 640 * u ^ 3 := by
  rcases le_total u (3 / 10) with h | h
  · nlinarith [sq_nonneg (u - 17 / 63), mul_nonneg (sub_nonneg.2 h) (sq_nonneg (u - 1 / 4))]
  · nlinarith [sq_nonneg (u - 3 / 10), mul_nonneg (sub_nonneg.2 h1) (sq_nonneg (u - 3 / 10))]

theorem sqrt_two_gt : (7 / 5 : ℝ) < Real.sqrt 2 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

/-- The scalar contradiction (6)–(10) of `EIGHT_BOUNDARY.md` §4. -/
theorem scalar_bound_core {s X Z : ℝ} (hs : 0 < s) (hX : 0 < X) (hsZ : s * Z < 1)
    (hXZ : 4 ≤ X * Z)
    (hQ : 2 * (1 + Real.sqrt 2) * s ≤ 2 - s * Z - s * (2 - s * Z) / (1 - s * Z) - X + 2 * s) :
    s < 7 / 64 := by
  set z := s * Z with hz
  set u := 2 * s / X with hu
  have huX : u * X = 2 * s := by rw [hu]; field_simp
  have hu0 : 0 < u := by positivity
  have h2u : 2 * u ≤ z := by
    have : 2 * u * X ≤ z * X := by rw [hz]; nlinarith
    exact le_of_mul_le_mul_right this hX
  have hw : 0 < 1 - 2 * u := by linarith
  set D := s * (2 - z) / (1 - z) with hD
  have hDz : D * (1 - z) = s * (2 - z) := by rw [hD]; field_simp [show (1 - z) ≠ 0 by linarith]
  set E := s / (1 - 2 * u) with hE
  have hEu : E * (1 - 2 * u) = s := by rw [hE]; field_simp
  have hE0 : 0 < E := by positivity
  -- monotonicity in `z`: `D ≥ s + E`
  have hDE : s + E ≤ D := by
    have h1 : (D - s) * (1 - z) = s := by linear_combination hDz
    have h2 : (D - s - E) * (1 - z) ≥ 0 := by nlinarith
    nlinarith [show 0 < 1 - z by linarith]
  have hs2 := sqrt_two_gt
  have h3 : 2 * (1 + Real.sqrt 2) * s ≤ 2 - 2 * u - s - E - X + 2 * s := by linarith
  -- multiply by `u (1 - 2u)`
  have h4 : 2 * (1 + Real.sqrt 2) * s * (u * (1 - 2 * u)) ≤
      (2 - 2 * u + s) * u * (1 - 2 * u) - s * u - 2 * s * (1 - 2 * u) := by
    have := mul_le_mul_of_nonneg_right h3 (by positivity : (0 : ℝ) ≤ u * (1 - 2 * u))
    nlinarith
  have h5 : 24 / 5 * s * (u * (1 - 2 * u)) < 2 * (1 + Real.sqrt 2) * s * (u * (1 - 2 * u)) := by
    have : 0 < s * (u * (1 - 2 * u)) := by positivity
    nlinarith
  by_contra hcon
  push Not at hcon
  have hP := cubic_P_pos (u := u) (by linarith)
  have hcoef : 0 < 19 / 5 * u * (1 - 2 * u) + u + 2 * (1 - 2 * u) := by positivity
  have h6 : 7 / 64 * (19 / 5 * u * (1 - 2 * u) + u + 2 * (1 - 2 * u)) <
      2 * (1 - u) * u * (1 - 2 * u) := by
    nlinarith [mul_le_mul_of_nonneg_right hcon hcoef.le]
  nlinarith

/-! ### Lemma 7 -/

/-- Lemma 7 for one choice of the largest gap `m` (`m' ≤ m` the opposite gap, `p, q` the two
other gaps): `s ≤ m(1-m)/2`. -/
theorem gap_core {s m m' p q um um' up uq : ℝ} (hs : 0 < s) (hm : 0 < m) (hm' : 0 < m')
    (hmm : m' ≤ m) (hp : 0 < p) (hq : 0 < q) (hum : um * m = s) (hum' : um' * m' = s)
    (hup : up * p = s) (huq : uq * q = s) (h1 : p + um + um' ≤ 1) (h2 : q + um + um' ≤ 1)
    (h3 : m + up + uq ≤ 1) : s ≤ m * (1 - m) / 2 := by
  have hum0 : 0 < um := by nlinarith only [hum, hs, hm]
  have hum'_ge : um ≤ um' := by
    have : um * m' ≤ um' * m' := by nlinarith only [hum, hum', hmm, hum0]
    exact le_of_mul_le_mul_right this hm'
  have hpK : p ≤ 1 - 2 * um := by linarith only [h1, hum'_ge]
  have hqK : q ≤ 1 - 2 * um := by linarith only [h2, hum'_ge]
  have hup0 : 0 < up := by nlinarith only [hup, hs, hp]
  have huq0 : 0 < uq := by nlinarith only [huq, hs, hq]
  have h4 : s ≤ up * (1 - 2 * um) := by nlinarith only [hup, hpK, hup0]
  have h5 : s ≤ uq * (1 - 2 * um) := by nlinarith only [huq, hqK, huq0]
  have hK0 : 0 < 1 - 2 * um := lt_of_lt_of_le hp hpK
  have h6 : m * (1 - 2 * um) + 2 * s ≤ 1 - 2 * um := by
    nlinarith only [mul_le_mul_of_nonneg_right h3 hK0.le, h4, h5]
  have h8 : m ≤ 1 - 2 * um := by linarith only [h6, hum]
  nlinarith only [mul_le_mul_of_nonneg_left h8 hm.le, hum]

/-! ### Lemma 10 -/

/-- Lemma 10: with `S = B + T` and `Z = L + R`, the budgets `B + T + s/L + s/R ≤ 1` and
`L, R + s/B + s/T ≤ 1` force `s ≤ (3 - 2√2)/2`. -/
theorem overlap_core {s L R B T uL uR uB uT : ℝ} (hs : 0 < s) (hL : 0 < L) (hR : 0 < R)
    (hB : 0 < B) (hT : 0 < T) (huL : uL * L = s) (huR : uR * R = s) (huB : uB * B = s)
    (huT : uT * T = s) (h1 : B + T + uL + uR ≤ 1) (h2 : L + uB + uT ≤ 1)
    (h3 : R + uB + uT ≤ 1) : s ≤ (3 - 2 * Real.sqrt 2) / 2 := by
  have huL0 : 0 < uL := by nlinarith only [huL, hs, hL]
  have huR0 : 0 < uR := by nlinarith only [huR, hs, hR]
  have huB0 : 0 < uB := by nlinarith only [huB, hs, hB]
  have huT0 : 0 < uT := by nlinarith only [huT, hs, hT]
  -- `(uL + uR)(L + R) ≥ 4s` and `(uB + uT)(B + T) ≥ 4s`
  have hW : 4 * s ≤ (uL + uR) * (L + R) := by
    have hprod : (uL * R) * (uR * L) = s * s := by
      calc (uL * R) * (uR * L) = (uL * L) * (uR * R) := by ring
        _ = s * s := by rw [huL, huR]
    have h4 : (2 * s) ^ 2 ≤ (uL * R + uR * L) ^ 2 := by
      nlinarith only [hprod, sq_nonneg (uL * R - uR * L)]
    have h5 := le_of_sq_le_sq h4 (by positivity)
    linarith only [h5, huL, huR]
  have hV : 4 * s ≤ (uB + uT) * (B + T) := by
    have hprod : (uB * T) * (uT * B) = s * s := by
      calc (uB * T) * (uT * B) = (uB * B) * (uT * T) := by ring
        _ = s * s := by rw [huB, huT]
    have h4 : (2 * s) ^ 2 ≤ (uB * T + uT * B) ^ 2 := by
      nlinarith only [hprod, sq_nonneg (uB * T - uT * B)]
    have h5 := le_of_sq_le_sq h4 (by positivity)
    linarith only [h5, huB, huT]
  set σ := Real.sqrt s with hσ
  have hσ0 : 0 < σ := Real.sqrt_pos.2 hs
  have hσs : σ ^ 2 = s := Real.sq_sqrt hs.le
  have hr2 : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have h2s : (Real.sqrt 2 * σ) ^ 2 = 2 * s := by rw [mul_pow, hr2, hσs]
  have hS0 : 0 < B + T := by positivity
  have hZ0 : 0 < L + R := by positivity
  -- `S + V ≥ 4σ` and `Z/2 + W ≥ 2√2 σ`
  have hA1 : 4 * σ ≤ (B + T) + (uB + uT) := by
    have : 4 * σ * (B + T) ≤ ((B + T) + (uB + uT)) * (B + T) := by
      nlinarith only [sq_nonneg ((B + T) - 2 * σ), hV, hσs]
    exact le_of_mul_le_mul_right this hS0
  have hA2 : 2 * (Real.sqrt 2 * σ) ≤ (L + R) / 2 + (uL + uR) := by
    have : 2 * (Real.sqrt 2 * σ) * (L + R) ≤ ((L + R) / 2 + (uL + uR)) * (L + R) := by
      nlinarith only [sq_nonneg ((L + R) - 2 * (Real.sqrt 2 * σ)), hW, h2s]
    exact le_of_mul_le_mul_right this hZ0
  have hsum : (4 + 2 * Real.sqrt 2) * σ ≤ 2 := by linarith only [hA1, hA2, h1, h2, h3]
  have h22 : (4 + 2 * Real.sqrt 2) * ((2 - Real.sqrt 2) / 2) = 2 := by
    linear_combination (-1 : ℝ) * hr2
  have hσb : σ ≤ (2 - Real.sqrt 2) / 2 := by
    have : (4 + 2 * Real.sqrt 2) * σ ≤ (4 + 2 * Real.sqrt 2) * ((2 - Real.sqrt 2) / 2) := by
      rw [h22]; exact hsum
    exact le_of_mul_le_mul_left this (by positivity)
  calc s = σ ^ 2 := hσs.symm
    _ ≤ ((2 - Real.sqrt 2) / 2) ^ 2 := pow_le_pow_left₀ hσ0.le hσb 2
    _ = (3 - 2 * Real.sqrt 2) / 2 := by linear_combination (1 / 4 : ℝ) * hr2

/-! ### Theorem 2 -/

/-- `√6 = √3 √2`. -/
theorem sqrt_six_eq : Real.sqrt 6 = Real.sqrt 3 * Real.sqrt 2 := by
  rw [← Real.sqrt_mul (by norm_num)]; norm_num

/-- Theorem 2, final step: from `(√3 + √2) σ ≤ 1`, `s = σ² ≤ 5 - 2√6`. -/
theorem le_five_sub_of_sigma {s σ : ℝ} (hσ0 : 0 ≤ σ) (hσs : σ ^ 2 = s)
    (hsum : (Real.sqrt 3 + Real.sqrt 2) * σ ≤ 1) : s ≤ 5 - 2 * Real.sqrt 6 := by
  have hr2 : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hr3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have h32 : (Real.sqrt 3 + Real.sqrt 2) * (Real.sqrt 3 - Real.sqrt 2) = 1 := by
    linear_combination hr3 - hr2
  have hσb : σ ≤ Real.sqrt 3 - Real.sqrt 2 := by
    have : (Real.sqrt 3 + Real.sqrt 2) * σ ≤ (Real.sqrt 3 + Real.sqrt 2) *
        (Real.sqrt 3 - Real.sqrt 2) := by rw [h32]; exact hsum
    exact le_of_mul_le_mul_left this (by positivity)
  calc s = σ ^ 2 := hσs.symm
    _ ≤ (Real.sqrt 3 - Real.sqrt 2) ^ 2 := pow_le_pow_left₀ hσ0 hσb 2
    _ = 5 - 2 * Real.sqrt 6 := by rw [sqrt_six_eq]; linear_combination hr3 + hr2

/-- AM–GM in the form used throughout: `Z + W ≥ 2X` when `W Z = X²`. -/
theorem amgm_div {Z X W : ℝ} (hZ : 0 < Z) (hW : W * Z = X ^ 2) : 2 * X ≤ Z + W := by
  have : 2 * X * Z ≤ (Z + W) * Z := by nlinarith only [sq_nonneg (Z - X), hW]
  exact le_of_mul_le_mul_right this hZ

/-- Theorem 2, in the corner at the origin: `O = (x, y)` with `ax + by ≤ ab`, the triangles
`AHO`, `BCO` and the side budgets give `s ≤ 5 - 2√6`. -/
theorem corner_core {s a b x y L B R T uL uB uR uT : ℝ} (hs : 0 < s) (ha : 0 < a) (hb : 0 < b)
    (hL : 0 < L) (hB : 0 < B) (hR : 0 < R) (hT : 0 < T)
    (huL : uL * L = s) (huB : uB * B = s) (huR : uR * R = s) (huT : uT * T = s)
    (hcorner : a * x + b * y ≤ a * b) (hx : s ≤ x * L) (hy : s ≤ y * B)
    (hleft : a + L + uT ≤ 1) (hbot : b + B + uR ≤ 1) (hright : uB + R + uT ≤ 1)
    (htop : uR + T + uL ≤ 1) : s ≤ 5 - 2 * Real.sqrt 6 := by
  -- `s(P + Q) ≤ PQ` with `P = aB`, `Q = bL`
  have hPQ : s * (a * B) + s * (b * L) ≤ (a * B) * (b * L) := by
    have h1 := mul_le_mul_of_nonneg_right hcorner (by positivity : (0 : ℝ) ≤ L * B)
    linarith only [h1, mul_le_mul_of_nonneg_left hx (by positivity : (0 : ℝ) ≤ a * B),
      mul_le_mul_of_nonneg_left hy (by positivity : (0 : ℝ) ≤ b * L)]
  have hPQ4 : 4 * s ≤ a * B + b * L := by
    have : 4 * s * (a * B + b * L) ≤ (a * B + b * L) * (a * B + b * L) := by
      nlinarith only [hPQ, sq_nonneg (a * B - b * L)]
    exact le_of_mul_le_mul_right this (by positivity)
  set σ := Real.sqrt s
  have hσ0 : 0 < σ := Real.sqrt_pos.2 hs
  have hσs : σ ^ 2 = s := Real.sq_sqrt hs.le
  set X1 := Real.sqrt (s + b * L)
  set X2 := Real.sqrt (s + a * B)
  have hX1 : X1 ^ 2 = s + b * L := Real.sq_sqrt (by positivity)
  have hX2 : X2 ^ 2 = s + a * B := Real.sq_sqrt (by positivity)
  have hX10 : 0 ≤ X1 := Real.sqrt_nonneg _
  have hX20 : 0 ≤ X2 := Real.sqrt_nonneg _
  have hr2 : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hr3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have h2s : (Real.sqrt 2 * σ) ^ 2 = 2 * s := by rw [mul_pow, hr2, hσs]
  -- AM-GM on the four sides
  have hA1 : 2 * X1 ≤ L + (b + uL) := amgm_div hL (by rw [hX1]; linear_combination huL)
  have hA2 : 2 * X2 ≤ B + (a + uB) := amgm_div hB (by rw [hX2]; linear_combination huB)
  have hA3 : 2 * (Real.sqrt 2 * σ) ≤ R + 2 * uR :=
    amgm_div hR (by rw [h2s]; linear_combination 2 * huR)
  have hA4 : 2 * (Real.sqrt 2 * σ) ≤ T + 2 * uT :=
    amgm_div hT (by rw [h2s]; linear_combination 2 * huT)
  -- `X1 X2 ≥ 3s` and `X1 + X2 ≥ 2√3 σ`
  have hX12 : 3 * s ≤ X1 * X2 := by
    have h9 : (3 * s) ^ 2 ≤ (X1 * X2) ^ 2 := by
      rw [mul_pow X1 X2, hX1, hX2]; nlinarith only [hPQ, hPQ4, hs]
    exact le_of_sq_le_sq h9 (mul_nonneg hX10 hX20)
  have hX12s : 2 * (Real.sqrt 3 * σ) ≤ X1 + X2 := by
    have h9 : (2 * (Real.sqrt 3 * σ)) ^ 2 ≤ (X1 + X2) ^ 2 := by
      have : (2 * (Real.sqrt 3 * σ)) ^ 2 = 12 * s := by rw [mul_pow, mul_pow, hr3, hσs]; ring
      rw [this]; nlinarith only [hX1, hX2, hX12, hPQ4]
    exact le_of_sq_le_sq h9 (by positivity)
  have hsum : (Real.sqrt 3 + Real.sqrt 2) * σ ≤ 1 := by
    linarith only [hA1, hA2, hA3, hA4, hX12s, hleft, hbot, hright, htop]
  exact le_five_sub_of_sigma hσ0.le hσs hsum

/-! ### Theorem 6 -/

/-- Theorem 6, final step: from (15') `s(1+ℓ)(ℓ+r) ≤ ℓr(1-ℓ)` and (16') `s(ℓ+r) ≤ ℓr(1-r)`,
`s ≤ 5 - 2√6`. -/
theorem wedge_final {s ℓ r : ℝ} (hs : 0 < s) (hℓ0 : 0 < ℓ) (hr0 : 0 < r)
    (h15 : s * (1 + ℓ) * (ℓ + r) ≤ ℓ * r * (1 - ℓ)) (h16 : s * (ℓ + r) ≤ ℓ * r * (1 - r)) :
    s ≤ 5 - 2 * Real.sqrt 6 := by
  have hlr : 0 < ℓ * r := mul_pos hℓ0 hr0
  set t := s * (ℓ + r) / (ℓ * r) with ht
  have htlr : t * (ℓ * r) = s * (ℓ + r) := by rw [ht]; field_simp
  have ht0 : 0 < t := by positivity
  have e1 : t * (ℓ * r) * ℓ = s * (ℓ + r) * ℓ := by rw [htlr]
  have hlt : ℓ * (1 + t) ≤ 1 - t := by
    have : (ℓ * (1 + t)) * (ℓ * r) ≤ (1 - t) * (ℓ * r) := by
      linarith only [h15, htlr, e1]
    exact le_of_mul_le_mul_right this hlr
  have hrt : r ≤ 1 - t := by
    have : r * (ℓ * r) ≤ (1 - t) * (ℓ * r) := by linarith only [h16, htlr]
    exact le_of_mul_le_mul_right this hlr
  have hkey : (2 + t) * (ℓ * r) ≤ (1 - t) * (ℓ + r) := by
    nlinarith only [mul_le_mul_of_nonneg_left hrt hℓ0.le, mul_le_mul_of_nonneg_right hlt hr0.le]
  have hs_t : (2 + t) * s ≤ t * (1 - t) := by
    have e2 : t * (ℓ * r) * (2 + t) = s * (ℓ + r) * (2 + t) := by rw [htlr]
    have h1 : (2 + t) * s * (ℓ + r) ≤ t * (1 - t) * (ℓ + r) := by
      linarith only [mul_le_mul_of_nonneg_left hkey ht0.le, e2]
    exact le_of_mul_le_mul_right h1 (by positivity)
  have h6 : Real.sqrt 6 ^ 2 = 6 := Real.sq_sqrt (by norm_num)
  have hfin : t * (1 - t) ≤ (5 - 2 * Real.sqrt 6) * (2 + t) := by
    nlinarith only [sq_nonneg (t - (Real.sqrt 6 - 2)), h6]
  have h2t : 0 < 2 + t := by linarith
  exact le_of_mul_le_mul_left (by linarith only [hs_t, hfin] :
    (2 + t) * s ≤ (2 + t) * (5 - 2 * Real.sqrt 6)) h2t

/-- Theorem 6: with `X = 1-x`, `Y = y`, the four inequalities (13) and the bottom and right
budgets give `s ≤ 5 - 2√6`. Here `p = s/B`, `q = s/T`, `u = s/L`, `w = s/R`. -/
theorem wedge_core {s X Y L B R T p q u w : ℝ} (hs : 0 < s) (hL : 0 < L) (hB : 0 < B)
    (hR : 0 < R) (hT : 0 < T) (hL1 : L < 1) (hT1 : T < 1)
    (hp : p * B = s) (hq : q * T = s) (hu : u * L = s) (hw : w * R = s)
    (i1 : L * X + p + s ≤ Y) (i2 : L * X + q + s ≤ 1 - Y) (i3 : T * Y + u + s ≤ 1 - X)
    (i4 : T * Y + w + s ≤ X) (hbot : B + u + w ≤ 1) (hright : R + p + q ≤ 1) :
    s ≤ 5 - 2 * Real.sqrt 6 := by
  have hp0 : 0 < p := by nlinarith only [hp, hs, hB]
  have hq0 : 0 < q := by nlinarith only [hq, hs, hT]
  have hu0 : 0 < u := by nlinarith only [hu, hs, hL]
  have hw0 : 0 < w := by nlinarith only [hw, hs, hR]
  have hLT : L * T < 1 := by nlinarith only [hL1, hT, hT1]
  -- (14), multiplied by `1 - LT`
  have h14 : (1 + 2 * T + L * T) * (p + s) + (1 + 2 * L + L * T) * (w + s) +
      (1 - L * T) * (q + u + 2 * s) ≤ 2 * (1 - L * T) := by
    have hTY := mul_le_mul_of_nonneg_left i1 hT.le
    have hXl : T * (p + s) + w + s ≤ X * (1 - L * T) := by linarith only [i4, hTY]
    have h2 : (1 + 2 * L + L * T) * X + (1 + T) * (p + s) + q + u + 2 * s ≤ 2 := by
      linarith only [i1, i2, i3, hTY]
    linarith only [mul_le_mul_of_nonneg_left hXl (by positivity : (0 : ℝ) ≤ 1 + 2 * L + L * T),
      mul_le_mul_of_nonneg_right h2 (by linarith : (0 : ℝ) ≤ 1 - L * T)]
  set ℓ := Real.sqrt (L * T)
  set r := Real.sqrt (B * R)
  have hℓ2 : ℓ ^ 2 = L * T := Real.sq_sqrt (by positivity)
  have hr2 : r ^ 2 = B * R := Real.sq_sqrt (by positivity)
  have hℓ0 : 0 < ℓ := Real.sqrt_pos.2 (by positivity)
  have hr0 : 0 < r := Real.sqrt_pos.2 (by positivity)
  have hℓ1 : ℓ < 1 := by nlinarith only [hℓ2, hLT, hℓ0]
  -- the four AM-GM bounds
  have g1 : 2 * s ≤ (u + q) * ℓ := by
    have hprod : u * q * ℓ ^ 2 = s * s := by
      rw [hℓ2]; calc u * q * (L * T) = (u * L) * (q * T) := by ring
        _ = s * s := by rw [hu, hq]
    have h4 : (2 * s) ^ 2 ≤ ((u + q) * ℓ) ^ 2 := by
      nlinarith only [hprod, mul_nonneg (sq_nonneg (u - q)) (sq_nonneg ℓ)]
    exact le_of_sq_le_sq h4 (by positivity)
  have g2 : 2 * s ≤ (p + w) * r := by
    have hprod : p * w * r ^ 2 = s * s := by
      rw [hr2]; calc p * w * (B * R) = (p * B) * (w * R) := by ring
        _ = s * s := by rw [hp, hw]
    have h4 : (2 * s) ^ 2 ≤ ((p + w) * r) ^ 2 := by
      nlinarith only [hprod, mul_nonneg (sq_nonneg (p - w)) (sq_nonneg r)]
    exact le_of_sq_le_sq h4 (by positivity)
  have g3 : 2 * ℓ ≤ L + T := by
    have h4 : (2 * ℓ) ^ 2 ≤ (L + T) ^ 2 := by nlinarith only [hℓ2, sq_nonneg (L - T)]
    exact le_of_sq_le_sq h4 (by positivity)
  have g4 : 2 * s * ℓ ≤ (L * w + T * p) * r := by
    have hprod : (L * w) * (T * p) * r ^ 2 = (s * ℓ) ^ 2 := by
      rw [hr2, mul_pow, hℓ2]
      calc L * w * (T * p) * (B * R) = (L * T) * ((p * B) * (w * R)) := by ring
        _ = s ^ 2 * (L * T) := by rw [hp, hw]; ring
    have h4 : (2 * s * ℓ) ^ 2 ≤ ((L * w + T * p) * r) ^ 2 := by
      nlinarith only [hprod, mul_nonneg (sq_nonneg (L * w - T * p)) (sq_nonneg r)]
    exact le_of_sq_le_sq h4 (by positivity)
  have g5 : 2 * r ≤ B + R := by
    have h4 : (2 * r) ^ 2 ≤ (B + R) ^ 2 := by nlinarith only [hr2, sq_nonneg (B - R)]
    exact le_of_sq_le_sq h4 (by positivity)
  -- (15'): `ℓ r (1 - ℓ) ≥ s (1 + ℓ)(ℓ + r)`
  have h15 : s * (1 + ℓ) * (ℓ + r) ≤ ℓ * r * (1 - ℓ) := by
    rw [← hℓ2] at h14
    have hl2 : 0 ≤ 1 - ℓ ^ 2 := by nlinarith only [hℓ1, hℓ0]
    have e1 := mul_le_mul_of_nonneg_left g1 (mul_nonneg hl2 hr0.le)
    have e2 := mul_le_mul_of_nonneg_left g2 (by positivity : (0 : ℝ) ≤ (1 + ℓ ^ 2) * ℓ)
    have e3 := mul_le_mul_of_nonneg_left g3 (by positivity : (0 : ℝ) ≤ s * ℓ * r)
    have e4 := mul_le_mul_of_nonneg_left g4 (by positivity : (0 : ℝ) ≤ ℓ)
    have hM := mul_le_mul_of_nonneg_left h14 (by positivity : (0 : ℝ) ≤ ℓ * r)
    have key : s * (1 + ℓ) * (ℓ + r) * (1 + ℓ) ≤ ℓ * r * (1 - ℓ) * (1 + ℓ) := by
      linarith only [hM, e1, e2, e3, e4]
    exact le_of_mul_le_mul_right key (by linarith)
  -- (16'): `ℓ r (1 - r) ≥ s (ℓ + r)`
  have h16 : s * (ℓ + r) ≤ ℓ * r * (1 - r) := by
    have hsum : B + R + (u + q) + (p + w) ≤ 2 := by linarith only [hbot, hright]
    have e1 := mul_le_mul_of_nonneg_left g1 hr0.le
    have e2 := mul_le_mul_of_nonneg_left g2 hℓ0.le
    have e3 := mul_le_mul_of_nonneg_left g5 (mul_pos hℓ0 hr0).le
    linarith only [mul_le_mul_of_nonneg_left hsum (mul_pos hℓ0 hr0).le, e1, e2, e3]
  exact wedge_final hs hℓ0 hr0 h15 h16

/-! ### Theorem 8 -/

/-- Theorem 8, scalar part: with `x(1+R) ≥ 1 + uR + 2s` (18), `x ≤ 1 - w - s` (19), `u = s/L`,
`w = s/R` and `L, R ≤ m`, `s (m² + 5m + 1) ≤ m²`. -/
theorem caps_core {s x L R m u w : ℝ} (hs : 0 < s) (hL : 0 < L) (hR : 0 < R) (hLm : L ≤ m)
    (hRm : R ≤ m) (hu : u * L = s) (hw : w * R = s) (h18 : 1 + u * R + 2 * s ≤ (1 + R) * x)
    (h19 : x ≤ 1 - w - s) : s * (m ^ 2 + 5 * m + 1) ≤ m ^ 2 := by
  have hu0 : 0 < u := by nlinarith only [hu, hs, hL]
  have hm0 : 0 < m := by linarith
  have h1 : 0 ≤ R - w - 4 * s - R * s - u * R := by
    nlinarith only [h18, mul_le_mul_of_nonneg_left h19 (by linarith : (0 : ℝ) ≤ 1 + R), hw]
  have h2 : s + 4 * s * R + R ^ 2 * s + u * R ^ 2 ≤ R ^ 2 := by
    nlinarith only [mul_nonneg h1 hR.le, hw]
  have hum : s ≤ u * m := by nlinarith only [hu, hLm, hu0]
  have h4 : s * m + 4 * s * R * m + R ^ 2 * s * m + s * R ^ 2 ≤ R ^ 2 * m := by
    nlinarith only [mul_le_mul_of_nonneg_left h2 hm0.le,
      mul_le_mul_of_nonneg_left hum (sq_nonneg R)]
  have h3 : R ^ 2 * (s * (m ^ 2 + 5 * m + 1)) ≤ R ^ 2 * m ^ 2 := by
    nlinarith only [mul_le_mul_of_nonneg_left h4 hm0.le,
      mul_nonneg (mul_nonneg hs.le (sub_nonneg.2 hRm)) (by linarith : 0 ≤ m + R),
      mul_nonneg (mul_nonneg (mul_nonneg hs.le hR.le) hm0.le) (sub_nonneg.2 hRm)]
  exact le_of_mul_le_mul_left h3 (by positivity)

/-! ### Theorem 9 -/

/-- Theorem 9, scalar part: (22) `R ≥ s(3 + L/R + 3(L+R))` and (23)
`1 - s/L - s/R ≥ 2s/(1-R)` force `s < 1/10`. Written with `u = s/L`, `w = s/R`. -/
theorem split_core {s L R u w : ℝ} (hL : 0 < L) (hR : 0 < R) (hR1 : R < 1)
    (hu : u * L = s) (hw : w * R = s) (h22 : s * (3 * R + L + 3 * (L + R) * R) ≤ R * R)
    (h23 : 2 * s ≤ (1 - u - w) * (1 - R)) : s < 1 / 10 := by
  by_contra hcon
  push Not at hcon
  -- (22) at `s ≥ 1/10`
  have hpos : 0 < 3 * R + L + 3 * (L + R) * R := by positivity
  have e22 : 3 * R + L + 3 * (L + R) * R ≤ 10 * (R * R) := by
    nlinarith only [h22, mul_le_mul_of_nonneg_right hcon hpos.le]
  -- (23) at `s ≥ 1/10`
  have h1 : 2 * s * (L * R) ≤ (L * R - s * R - s * L) * (1 - R) := by
    have e : (L * R) * ((1 - u - w) * (1 - R)) = (L * R - s * R - s * L) * (1 - R) := by
      have : L * R - s * R - s * L = L * R - (u * L) * R - (w * R) * L := by rw [hu, hw]
      rw [this]; ring
    have := mul_le_mul_of_nonneg_left h23 (by positivity : (0 : ℝ) ≤ L * R)
    linarith only [this, e]
  have hpos2 : 0 ≤ R * (1 - R) + L * (1 - R) + 2 * L * R := by
    have : 0 ≤ 1 - R := by linarith
    positivity
  have e23 : R * (1 - R) + L * (1 - R) + 2 * L * R ≤ 10 * L * R * (1 - R) := by
    nlinarith only [h1, mul_le_mul_of_nonneg_right hcon hpos2]
  have hR37 : 3 / 7 < R := by nlinarith only [e22, hL, hR, mul_pos hL hR]
  have hD : 0 < -10 * R ^ 2 + 9 * R - 1 := by
    nlinarith only [e23, hL, hR, hR1, mul_pos hR (by linarith : (0 : ℝ) < 1 - R)]
  have h1' : L * (1 + 3 * R) ≤ 7 * R ^ 2 - 3 * R := by linarith only [e22]
  have h2' : R * (1 - R) ≤ L * (-10 * R ^ 2 + 9 * R - 1) := by linarith only [e23]
  have h3 : R * ((1 + 3 * R) * (1 - R)) ≤ R * ((7 * R - 3) * (-10 * R ^ 2 + 9 * R - 1)) := by
    nlinarith only [mul_le_mul_of_nonneg_left h2' (by positivity : (0 : ℝ) ≤ 1 + 3 * R),
      mul_le_mul_of_nonneg_right h1' hD.le]
  have hF := le_of_mul_le_mul_left h3 hR
  nlinarith only [hF, sq_nonneg (R - 79 / 123),
    mul_nonneg (sub_nonneg.2 hR37.le) (sq_nonneg (R - 2 / 3))]

end Heilbronn.Nine.EightBoundary
