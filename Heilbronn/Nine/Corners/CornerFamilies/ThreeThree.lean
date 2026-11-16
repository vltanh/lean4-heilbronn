module

public import Heilbronn.Nine.Corners.CornerFamilies.Mesh

/-! # Corner families: the three-upper-point class

Part of `Heilbronn.Nine.Corners.CornerFamilies`. In the physical frame of
`CornerFamilies/Mesh.lean` (`A = (0,0)`, `B = (0,1)`, `C = (1,1)`, labelled distributed upper
triple `X, Y, Z`), the line `BY` splits the lower points into the A-side (`D(B,Y,R) ≤ -s`) and
the C-side (`D(B,Y,R) ≥ s`); each side holds at most one lower point, which excludes the `3+3`
class.

The A-side argument (the feasible triangle of the A-side points and the bounds on its vertex
pairs) is stated with the rectangle parameters `s, L, M` of `Mesh.lean`, so that it also covers a
displaced base. The C-side capacity follows by the reflection across `x + y = 1`, which exchanges
the two sides of `BY`.

**Results.** `A_side_capacity_one`, `C_side_general`, the polynomial facts `G1_scalar`,
`G0_scalar` and `polyN_pos`, `typeIII_3plus3`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.CornerFamilies

/-- The cubic polynomial `N(γ, ρ)` of the vertex-pair bound `G0_scalar`. -/
def polyN (γ ρ : ℝ) : ℝ :=
  49 * γ ^ 3 + 448 * γ ^ 2 * ρ + 749 * γ ^ 2 + 350 * γ * ρ ^ 2 - 2248 * γ * ρ + 252 * γ -
    49 * ρ ^ 3 + 252 * ρ ^ 2 + 252 * ρ - 49

/-- The polynomial `N(γ, ρ)` is positive for `γ ≥ 6/5` and `1 ≤ ρ ≤ 96/35`. Proof: with
`t = γ - 6/5 ≥ 0`, `N` is a cubic in `t` with leading coefficient `49` whose lower coefficients
`N(6/5, ρ)`, `N_γ(6/5, ρ)`, `N_γγ(6/5, ρ)/2` are positive on the range. -/
theorem polyN_pos (γ ρ : ℝ) (hγ : 6 / 5 ≤ γ) (hρ : 1 ≤ ρ) (hρ' : ρ ≤ 96 / 35) : 0 < polyN γ ρ := by
  set t := γ - 6 / 5 with ht
  have ht0 : 0 ≤ t := by linarith
  have e : polyN γ ρ = (-6125 * ρ ^ 3 + 84000 * ρ ^ 2 - 225060 * ρ + 177079) / 125 +
      (2 / 25 * (4375 * ρ ^ 2 - 14660 * ρ + 28266)) * t + (7 * (21 * (6 / 5) + 64 * ρ + 107)) * t ^ 2 +
      49 * t ^ 3 := by
    rw [show γ = t + 6 / 5 by linarith]; unfold polyN; ring
  have h0 : 0 < -6125 * ρ ^ 3 + 84000 * ρ ^ 2 - 225060 * ρ + 177079 := by
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ ρ - 1) (by linarith : (0 : ℝ) ≤ 96 / 35 - ρ),
      mul_nonneg (mul_nonneg (by linarith : (0 : ℝ) ≤ ρ - 1) (by linarith : (0 : ℝ) ≤ 96 / 35 - ρ))
        (by linarith : (0 : ℝ) ≤ ρ), sq_nonneg (ρ - 2)]
  have h1 : 0 < 4375 * ρ ^ 2 - 14660 * ρ + 28266 := by nlinarith [sq_nonneg (ρ - 14660 / 8750)]
  rw [e]
  have := mul_nonneg (by linarith : (0 : ℝ) ≤ 2 / 25 * (4375 * ρ ^ 2 - 14660 * ρ + 28266)) ht0
  have := mul_nonneg (by linarith : (0 : ℝ) ≤ 7 * (21 * (6 / 5) + 64 * ρ + 107)) (sq_nonneg t)
  have := mul_nonneg (by norm_num : (0 : ℝ) ≤ 49) (pow_nonneg ht0 3)
  linarith

/-! ### The A-side feasible triangle, with the rectangle parameters -/

/-- The vertex-pair bound `G₁ < s`, scaled: `(s + K)N₀ < skQ` with `N₀ = Q·H₀`, `k = Q + J`. -/
theorem G1_scalar {Q J K a s M N₀ : ℝ} (hs : 7 / 64 ≤ s) (hQ : s ≤ Q) (hJ : 6 / 5 * s < J)
    (ha : s ≤ a) (hK0 : s ≤ K) (hK : K ≤ 109 / 98 * s) (hM : M ≤ 64 / 7 * s)
    (hN : N₀ = Q * (M - a - Q - J - 2 * s) - s * (a + 2 * J)) :
    (s + K) * N₀ < s * (Q + J) * Q := by
  have hs0 : 0 < s := by linarith
  rcases le_or_gt N₀ 0 with h0 | h0
  · have : (s + K) * N₀ ≤ 0 := mul_nonpos_of_nonneg_of_nonpos (by linarith) h0
    have : 0 < s * (Q + J) * Q :=
      mul_pos (mul_pos hs0 (by linarith)) (by linarith)
    linarith
  set N₁ := Q * (64 / 7 * s - s - Q - J - 2 * s) - s * (s + 2 * J) with hN₁
  have e1 := mul_le_mul_of_nonneg_right (by linarith : s + K ≤ 17 / 8 * s) h0.le
  have e2 : N₀ ≤ N₁ := by
    have := mul_le_mul_of_nonneg_left (by linarith : s ≤ a) (by linarith : (0 : ℝ) ≤ Q + s)
    have := mul_le_mul_of_nonneg_left hM (by linarith : (0 : ℝ) ≤ Q)
    rw [hN, hN₁]; linarith
  have e3 := mul_le_mul_of_nonneg_left e2 (by linarith : (0 : ℝ) ≤ 17 / 8 * s)
  have e4 : 0 < 875 * Q ^ 2 - 2605 * Q * s + 2023 * s ^ 2 := by
    nlinarith [sq_nonneg (Q - 2605 / 1750 * s), sq_nonneg s]
  have e5 : 0 < (Q + J) * Q - 17 / 8 * N₁ := by
    have := mul_pos (by linarith : (0 : ℝ) < J - 6 / 5 * s)
      (by linarith : (0 : ℝ) < 25 / 8 * Q + 17 / 4 * s)
    rw [hN₁]; nlinarith
  have e6 := mul_lt_mul_of_pos_left e5 hs0
  nlinarith

/-- The vertex-pair bound `G₀ < s`, scaled: `(q + δ)N₀ < s h k` with `h = Q + J + a`,
`k = Q + J`, where `qd = q + δ` satisfies `J·qd ≤ J(M - 2s) - s(s + Q)`; the proof uses the
positivity of `polyN` (`polyN_pos`). -/
theorem G0_scalar {Q J a s M N₀ qd : ℝ} (hs : 7 / 64 ≤ s) (hQ : s ≤ Q) (hQ' : Q ≤ 96 / 35 * s)
    (hJ : 6 / 5 * s < J) (ha : s ≤ a) (hM : M ≤ 64 / 7 * s) (hqd : 0 < qd)
    (h42 : J * qd ≤ J * (M - 2 * s) - s * (s + Q))
    (hN : N₀ = Q * (M - a - Q - J - 2 * s) - s * (a + 2 * J)) :
    qd * N₀ < s * (Q + J + a) * (Q + J) := by
  have hs0 : 0 < s := by linarith
  have hJ0 : 0 < J := by linarith
  rcases le_or_gt N₀ 0 with h0 | h0
  · have : qd * N₀ ≤ 0 := mul_nonpos_of_nonneg_of_nonpos hqd.le h0
    have : 0 < s * (Q + J + a) * (Q + J) :=
      mul_pos (mul_pos hs0 (by linarith)) (by linarith)
    linarith
  set N₁ := Q * (64 / 7 * s - s - Q - J - 2 * s) - s * (s + 2 * J) with hN₁
  set B₁ := J * (64 / 7 * s - 2 * s) - s * (s + Q) with hB₁
  have e2 : N₀ ≤ N₁ := by
    have := mul_le_mul_of_nonneg_left (by linarith : s ≤ a) (by linarith : (0 : ℝ) ≤ Q + s)
    have := mul_le_mul_of_nonneg_left hM (by linarith : (0 : ℝ) ≤ Q)
    rw [hN, hN₁]; linarith
  have hB : J * qd ≤ B₁ := by
    have := mul_le_mul_of_nonneg_left hM hJ0.le
    rw [hB₁]; linarith
  have hJq : 0 < J * qd := mul_pos hJ0 hqd
  have c1 : J * qd * N₀ ≤ B₁ * N₁ := mul_le_mul hB e2 h0.le (by linarith)
  -- the polynomial `N(γ, ρ)` at `γ = J/s`, `ρ = Q/s`
  have hN45 := polyN_pos (J / s) (Q / s) (by rw [le_div_iff₀ hs0]; linarith)
    (by rw [le_div_iff₀ hs0]; linarith) (by rw [div_le_iff₀ hs0]; linarith)
  have hNU : 0 < 49 * J ^ 3 + 448 * J ^ 2 * Q + 749 * J ^ 2 * s + 350 * J * Q ^ 2 -
      2248 * J * Q * s + 252 * J * s ^ 2 - 49 * Q ^ 3 + 252 * Q ^ 2 * s + 252 * Q * s ^ 2 -
      49 * s ^ 3 := by
    have e : polyN (J / s) (Q / s) * s ^ 3 = 49 * J ^ 3 + 448 * J ^ 2 * Q + 749 * J ^ 2 * s +
        350 * J * Q ^ 2 - 2248 * J * Q * s + 252 * J * s ^ 2 - 49 * Q ^ 3 + 252 * Q ^ 2 * s +
        252 * Q * s ^ 2 - 49 * s ^ 3 := by
      unfold polyN; field_simp
    rw [← e]; positivity
  have c2 : B₁ * N₁ < J * (s * (Q + J + s) * (Q + J)) := by
    have e : J * (s * (Q + J + s) * (Q + J)) - B₁ * N₁ = s / 49 *
        (49 * J ^ 3 + 448 * J ^ 2 * Q + 749 * J ^ 2 * s + 350 * J * Q ^ 2 - 2248 * J * Q * s +
          252 * J * s ^ 2 - 49 * Q ^ 3 + 252 * Q ^ 2 * s + 252 * Q * s ^ 2 - 49 * s ^ 3) := by
      rw [hB₁, hN₁]; ring
    have : 0 < s / 49 * (49 * J ^ 3 + 448 * J ^ 2 * Q + 749 * J ^ 2 * s + 350 * J * Q ^ 2 -
        2248 * J * Q * s + 252 * J * s ^ 2 - 49 * Q ^ 3 + 252 * Q ^ 2 * s + 252 * Q * s ^ 2 -
        49 * s ^ 3) := by positivity
    linarith
  have c3 : J * (s * (Q + J + s) * (Q + J)) ≤ J * (s * (Q + J + a) * (Q + J)) := by
    apply mul_le_mul_of_nonneg_left _ hJ0.le
    apply mul_le_mul_of_nonneg_right _ (by linarith)
    exact mul_le_mul_of_nonneg_left (by linarith) hs0.le
  have : J * (qd * N₀) < J * (s * (Q + J + a) * (Q + J)) := by nlinarith
  exact lt_of_mul_lt_mul_left this hJ0.le

/-- The three vertex-pair bounds of the A-side feasible triangle, scaled by `hkQ`:
`cᵢⱼ N₀ < s·hkQ` for `c₁₂ = (q + δ)Q`, `c₁₃ = (s + K)h`, `c₂₃ = (P - s)k` (`δ = M - 1`,
`N₀ = Q(v + δ) - s(k + h)`). -/
theorem A_bounds {u v p q c a s M : ℝ} (H : MeshHyps u v p q c a s) (hM : 1 ≤ M)
    (hsM : 7 / 64 * M ≤ s)
    (hN₀ : 0 ≤ ((1 - v) * c - a * u) * (v + (M - 1)) - s * ((1 - v - a) + (1 - v))) :
    0 ≤ (q + (M - 1)) * ((1 - v) * c - a * u) ∧
      0 ≤ (s + ((1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a))) * (1 - v) ∧
      0 ≤ (u * (1 - q) - (1 - v) * p - s) * (1 - v - a) ∧
      (q + (M - 1)) * ((1 - v) * c - a * u) *
          (((1 - v) * c - a * u) * (v + (M - 1)) - s * ((1 - v - a) + (1 - v))) <
        s * (1 - v) * (1 - v - a) * ((1 - v) * c - a * u) ∧
      (s + ((1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a))) * (1 - v) *
          (((1 - v) * c - a * u) * (v + (M - 1)) - s * ((1 - v - a) + (1 - v))) <
        s * (1 - v) * (1 - v - a) * ((1 - v) * c - a * u) ∧
      (u * (1 - q) - (1 - v) * p - s) * (1 - v - a) *
          (((1 - v) * c - a * u) * (v + (M - 1)) - s * ((1 - v - a) + (1 - v))) <
        s * (1 - v) * (1 - v - a) * ((1 - v) * c - a * u) := by
  obtain ⟨hs, hp, ha, hf, hpE, haE, hfE, hQ, he, hP, hW, hV, hCZY, hAXZ, hK, hK2, hJ, hAZY⟩ := H
  have hs0 : 0 < s := by linarith
  set h := 1 - v with hh
  set k := 1 - v - a with hk
  set Q := (1 - v) * c - a * u with hQd
  set J := (1 - v) * (1 - c) - a * (1 - u) with hJd
  set K := (1 - v) * c - a * u + (1 - q) * (u - c) - p * (1 - v - a) with hKd
  set P := u * (1 - q) - (1 - v) * p with hPd
  set N₀ := Q * (v + (M - 1)) - s * (k + h) with hN₀d
  have hkQJ : k = Q + J := by rw [hk, hQd, hJd]; ring
  have hhQJ : h = Q + J + a := by rw [hh, hQd, hJd]; ring
  have hk0 : 0 < k := by linarith
  have hh0 : 0 < h := by linarith
  have hQ0 : 0 < Q := by linarith
  have hN₀form : N₀ = Q * (M - a - Q - J - 2 * s) - s * (a + 2 * J) := by
    rw [hN₀d, hk, hh, hQd, hJd]; ring
  have hMs : M ≤ 64 / 7 * s := by linarith
  have g1 := G1_scalar hs hQ hJ ha hK hK2 hMs hN₀form
  have hsum7 : 1 = p + a + (v - u) + (u * q - v * p) + J + P + Q := by
    rw [hJd, hPd, hQd]; ring
  have hQ' : Q ≤ 96 / 35 * s := by linarith
  have hz4 : 4 * s ≤ q := by
    have : q - p = (v - u) + (p * v - p - q * u + q + u - v) + (u * q - v * p) := by ring
    linarith
  have h42 : J * (q + (M - 1)) ≤ J * (M - 2 * s) - s * (s + Q) := by
    have iW : (c * (1 - q) - a * p) * J = a * K + Q * (a * p - a + c * q - c - q + 1) := by
      rw [hJd, hKd, hQd]; ring
    have t1 := mul_le_mul ha hK hs0.le (by linarith)
    have t2 := mul_le_mul_of_nonneg_left hV hQ0.le
    have t3 := mul_le_mul_of_nonneg_left ha (by linarith : (0 : ℝ) ≤ J)
    have t4 := mul_le_mul_of_nonneg_left hV (by linarith : (0 : ℝ) ≤ J)
    have e : J * (1 - q) = J * a + (c * (1 - q) - a * p) * J +
        J * (a * p - a + c * q - c - q + 1) := by ring
    linarith
  have g0 := G0_scalar hs hQ hQ' hJ ha hMs (by linarith) h42 hN₀form
  have g12 : (P - s) * k ≤ (s + K) * h := by
    have e : (s + K) * h - (P - s) * k = Q * (q - v) + s * (k + h) := by
      rw [hKd, hPd, hh, hk, hQd]; ring
    have e2 : Q * v - s * (k + h) = Q * (1 - a - Q - J - 2 * s) - s * (a + 2 * J) := by
      rw [hk, hh, hQd, hJd]; ring
    have t1 := mul_le_mul_of_nonneg_left (by linarith : 1 - a - Q - J - 2 * s ≤ 1 - 26 / 5 * s)
      hQ0.le
    have t2 : 0 ≤ s * (a + 2 * J) := mul_nonneg hs0.le (by linarith)
    have t3 := mul_le_mul_of_nonneg_left hz4 hQ0.le
    have t4 := mul_nonneg hQ0.le (by linarith : (0 : ℝ) ≤ 46 / 5 * s - 1)
    linarith
  have b12 : (q + (M - 1)) * Q * N₀ < s * h * k * Q := by
    have := mul_lt_mul_of_pos_right g0 hQ0
    rw [hhQJ, hkQJ]; linarith
  have b13 : (s + K) * h * N₀ < s * h * k * Q := by
    have := mul_lt_mul_of_pos_right g1 hh0
    rw [hkQJ]; linarith
  have b23 : (P - s) * k * N₀ < s * h * k * Q :=
    lt_of_le_of_lt (mul_le_mul_of_nonneg_right g12 hN₀) b13
  exact ⟨mul_nonneg (by linarith) hQ0.le, mul_nonneg (by linarith) hh0.le,
    mul_nonneg (by linarith) hk0.le, b12, b13, b23⟩

/-- The final step of the A-side capacity: bilinearity in the barycentric weights. -/
theorem A_final {w₁ w₂ w₃ w₁' w₂' w₃' c₁₂ c₁₃ c₂₃ N₀ F D s : ℝ} (hs : 0 < s) (hF : 0 < F)
    (p₁ : 0 ≤ w₁) (p₂ : 0 ≤ w₂) (p₃ : 0 ≤ w₃) (p₁' : 0 ≤ w₁') (p₂' : 0 ≤ w₂') (p₃' : 0 ≤ w₃')
    (sum₁ : w₁ + w₂ + w₃ = N₀) (sum₂ : w₁' + w₂' + w₃' = N₀) (hpos : 0 < N₀)
    (hc₁₂0 : 0 ≤ c₁₂) (hc₁₃0 : 0 ≤ c₁₃) (hc₂₃0 : 0 ≤ c₂₃)
    (b12 : c₁₂ * N₀ < s * F) (b13 : c₁₃ * N₀ < s * F) (b23 : c₂₃ * N₀ < s * F)
    (bil : F * N₀ * D = (w₁ * w₂' - w₂ * w₁') * c₁₂ + (w₁ * w₃' - w₃ * w₁') * c₁₃ +
      (w₂ * w₃' - w₃ * w₂') * c₂₃) : |D| < s := by
  by_contra hcon
  push Not at hcon
  have q12 : |w₁ * w₂' - w₂ * w₁'| ≤ w₁ * w₂' + w₂ * w₁' :=
    abs_le.2 ⟨by linarith [mul_nonneg p₁ p₂', mul_nonneg p₂ p₁'],
      by linarith [mul_nonneg p₁ p₂', mul_nonneg p₂ p₁']⟩
  have q13 : |w₁ * w₃' - w₃ * w₁'| ≤ w₁ * w₃' + w₃ * w₁' :=
    abs_le.2 ⟨by linarith [mul_nonneg p₁ p₃', mul_nonneg p₃ p₁'],
      by linarith [mul_nonneg p₁ p₃', mul_nonneg p₃ p₁']⟩
  have q23 : |w₂ * w₃' - w₃ * w₂'| ≤ w₂ * w₃' + w₃ * w₂' :=
    abs_le.2 ⟨by linarith [mul_nonneg p₂ p₃', mul_nonneg p₃ p₂'],
      by linarith [mul_nonneg p₂ p₃', mul_nonneg p₃ p₂']⟩
  have habs : |F * N₀ * D| ≤ (w₁ * w₂' + w₂ * w₁') * c₁₂ + (w₁ * w₃' + w₃ * w₁') * c₁₃ +
      (w₂ * w₃' + w₃ * w₂') * c₂₃ := by
    rw [bil]
    refine (abs_add_three _ _ _).trans ?_
    rw [abs_mul, abs_mul, abs_mul, abs_of_nonneg hc₁₂0, abs_of_nonneg hc₁₃0,
      abs_of_nonneg hc₂₃0]
    have := mul_le_mul_of_nonneg_right q12 hc₁₂0
    have := mul_le_mul_of_nonneg_right q13 hc₁₃0
    have := mul_le_mul_of_nonneg_right q23 hc₂₃0
    linarith
  have hFN : 0 < F * N₀ := mul_pos hF hpos
  rw [abs_mul, abs_of_pos hFN] at habs
  set t₁₂ := w₁ * w₂' + w₂ * w₁'
  set t₁₃ := w₁ * w₃' + w₃ * w₁'
  set t₂₃ := w₂ * w₃' + w₃ * w₂'
  have h1 : s * F * N₀ ≤ t₁₂ * c₁₂ + t₁₃ * c₁₃ + t₂₃ * c₂₃ := by
    have := mul_le_mul_of_nonneg_left hcon hFN.le
    linarith
  have h2 := mul_le_mul_of_nonneg_right h1 hpos.le
  have hT : t₁₂ + t₁₃ + t₂₃ ≤ N₀ ^ 2 := by
    have e : N₀ ^ 2 = (w₁ + w₂ + w₃) * (w₁' + w₂' + w₃') := by rw [sum₁, sum₂]; ring
    have := mul_nonneg p₁ p₁'
    have := mul_nonneg p₂ p₂'
    have := mul_nonneg p₃ p₃'
    rw [e]; nlinarith
  have ht₁₂ : 0 ≤ t₁₂ := by positivity
  have ht₁₃ : 0 ≤ t₁₃ := by positivity
  have ht₂₃ : 0 ≤ t₂₃ := by positivity
  have hS0 : 0 < s * F := mul_pos hs hF
  set m := min (s * F - c₁₂ * N₀) (min (s * F - c₁₃ * N₀) (s * F - c₂₃ * N₀)) with hm
  have hm0 : 0 < m := lt_min (by linarith) (lt_min (by linarith) (by linarith))
  have m1 : m ≤ s * F - c₁₂ * N₀ := min_le_left _ _
  have m2 : m ≤ s * F - c₁₃ * N₀ := (min_le_right _ _).trans (min_le_left _ _)
  have m3 : m ≤ s * F - c₂₃ * N₀ := (min_le_right _ _).trans (min_le_right _ _)
  have k1 := mul_le_mul_of_nonneg_left m1 ht₁₂
  have k2 := mul_le_mul_of_nonneg_left m2 ht₁₃
  have k3 := mul_le_mul_of_nonneg_left m3 ht₂₃
  have hS2 := mul_le_mul_of_nonneg_left hT hS0.le
  rcases (show 0 ≤ t₁₂ + t₁₃ + t₂₃ by positivity).eq_or_lt with hT0 | hT0
  · have e1 : t₁₂ = 0 := by linarith
    have e2 : t₁₃ = 0 := by linarith
    have e3 : t₂₃ = 0 := by linarith
    rw [e1, e2, e3] at h1
    have := mul_pos hS0 hpos
    linarith
  · have := mul_pos hm0 hT0
    nlinarith

/-- The A-side capacity in coordinates: two points `R₁, R₂` of the feasible triangle
(`y ≥ 1 - M`, `D(B,Y,R) ≤ -s`, `D(X,Y,R) ≥ s`) span with `Z` a triangle of doubled area `< s`.
With `wᵢ = (kℓ₁, hℓ₂, Qℓ₃)` (nonnegative, sum `N₀`), the determinant is
`hkQN₀·D(Z,R₁,R₂) = Σ_{i<j} (wᵢw'ⱼ - wⱼw'ᵢ)cᵢⱼ` with `cᵢⱼN₀ < s·hkQ` (`cᵢⱼ` the scaled
vertex-pair determinants `G₀, G₁, G₂`, bounded in `A_bounds`). -/
theorem A_core {u v p q c a s M x₁ y₁ x₂ y₂ : ℝ} (H : MeshHyps u v p q c a s) (hM : 1 ≤ M)
    (hsM : 7 / 64 * M ≤ s) (hy₁ : 1 - M ≤ y₁) (hA₁ : (1 - v) * x₁ - u * (1 - y₁) ≤ -s)
    (hX₁ : s ≤ (c - u) * (1 - y₁) + (1 - v - a) * x₁ - ((1 - v) * c - a * u))
    (hy₂ : 1 - M ≤ y₂) (hA₂ : (1 - v) * x₂ - u * (1 - y₂) ≤ -s)
    (hX₂ : s ≤ (c - u) * (1 - y₂) + (1 - v - a) * x₂ - ((1 - v) * c - a * u)) :
    |(x₁ - p) * (y₂ - q) - (y₁ - q) * (x₂ - p)| < s := by
  have hs0 : 0 < s := by linarith [H.hs]
  have hk0 : 0 < 1 - v - a := by linarith [H.hQ, H.hJ, H.ha]
  have hh0 : 0 < 1 - v := by linarith [H.hQ, H.hJ, H.ha]
  have hQ0 : 0 < (1 - v) * c - a * u := by linarith [H.hQ]
  have p₁ : 0 ≤ (1 - v - a) * ((u - s) - (1 - v) * x₁ - u * y₁) :=
    mul_nonneg hk0.le (by linarith)
  have p₂ : 0 ≤ (1 - v) * ((1 - v - a) * x₁ + (u - c) * y₁ - s - ((1 - v) * c - a * u + (u - c))) :=
    mul_nonneg hh0.le (by linarith)
  have p₃ : 0 ≤ ((1 - v) * c - a * u) * (y₁ + (M - 1)) := mul_nonneg hQ0.le (by linarith)
  have p₁' : 0 ≤ (1 - v - a) * ((u - s) - (1 - v) * x₂ - u * y₂) :=
    mul_nonneg hk0.le (by linarith)
  have p₂' : 0 ≤ (1 - v) * ((1 - v - a) * x₂ + (u - c) * y₂ - s - ((1 - v) * c - a * u + (u - c))) :=
    mul_nonneg hh0.le (by linarith)
  have p₃' : 0 ≤ ((1 - v) * c - a * u) * (y₂ + (M - 1)) := mul_nonneg hQ0.le (by linarith)
  have sum₁ : (1 - v - a) * ((u - s) - (1 - v) * x₁ - u * y₁) +
      (1 - v) * ((1 - v - a) * x₁ + (u - c) * y₁ - s - ((1 - v) * c - a * u + (u - c))) +
      ((1 - v) * c - a * u) * (y₁ + (M - 1)) =
      ((1 - v) * c - a * u) * (v + (M - 1)) - s * ((1 - v - a) + (1 - v)) := by ring
  have sum₂ : (1 - v - a) * ((u - s) - (1 - v) * x₂ - u * y₂) +
      (1 - v) * ((1 - v - a) * x₂ + (u - c) * y₂ - s - ((1 - v) * c - a * u + (u - c))) +
      ((1 - v) * c - a * u) * (y₂ + (M - 1)) =
      ((1 - v) * c - a * u) * (v + (M - 1)) - s * ((1 - v - a) + (1 - v)) := by ring
  have hN₀ : 0 ≤ ((1 - v) * c - a * u) * (v + (M - 1)) - s * ((1 - v - a) + (1 - v)) := by
    rw [← sum₁]; positivity
  rcases hN₀.eq_or_lt with hz | hpos
  · -- degenerate feasible triangle: the two points coincide
    have hy₁' : y₁ + (M - 1) = 0 := by
      rcases mul_eq_zero.1 (show ((1 - v) * c - a * u) * (y₁ + (M - 1)) = 0 by linarith) with h | h
      · linarith
      · exact h
    have hy₂' : y₂ + (M - 1) = 0 := by
      rcases mul_eq_zero.1 (show ((1 - v) * c - a * u) * (y₂ + (M - 1)) = 0 by linarith) with h | h
      · linarith
      · exact h
    have hx₁ : (u - s) - (1 - v) * x₁ - u * y₁ = 0 := by
      rcases mul_eq_zero.1 (show (1 - v - a) * ((u - s) - (1 - v) * x₁ - u * y₁) = 0 by linarith)
        with h | h
      · linarith
      · exact h
    have hx₂ : (u - s) - (1 - v) * x₂ - u * y₂ = 0 := by
      rcases mul_eq_zero.1 (show (1 - v - a) * ((u - s) - (1 - v) * x₂ - u * y₂) = 0 by linarith)
        with h | h
      · linarith
      · exact h
    have ey : y₁ = y₂ := by linarith
    have ex : x₁ = x₂ := by
      have : (1 - v) * (x₁ - x₂) = 0 := by rw [ey] at hx₁; linarith
      rcases mul_eq_zero.1 this with h | h
      · linarith
      · linarith
    rw [ex, ey]
    have : (x₂ - p) * (y₂ - q) - (y₂ - q) * (x₂ - p) = 0 := by ring
    rw [this, abs_zero]; exact hs0
  · obtain ⟨c1, c2, c3, b1, b2, b3⟩ := A_bounds H hM hsM hN₀
    exact A_final hs0 (by positivity : (0 : ℝ) < (1 - v) * (1 - v - a) * ((1 - v) * c - a * u))
      p₁ p₂ p₃ p₁' p₂' p₃' sum₁ sum₂ hpos c1 c2 c3 (by linarith) (by linarith) (by linarith)
      (by ring)

/-- The reflection `(x, y) ↦ (1 - y, 1 - x)` across `x + y = 1` permutes the mesh facts
(`A ↔ C`, `X ↔ Z`): `Y ↦ (1 - v, 1 - u)`, `Z ↦ X' = (1 - q, 1 - p)`, `X ↦ Z' = (a, 1 - c)`. -/
theorem meshHyps_refl {u v p q c a s : ℝ} (H : MeshHyps u v p q c a s) :
    MeshHyps (1 - v) (1 - u) a (1 - c) (1 - q) p s := by
  obtain ⟨hs, hp, ha, hf, hpE, haE, hfE, hQ, he, hP, hW, hV, hCZY, hAXZ, hK, hK2, hJ, hAZY⟩ := H
  exact ⟨hs, ha, hp, by linarith, haE, hpE, by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith⟩

/-- Coordinates of the relevant determinants with `B = (0,1)`. -/
theorem sarea_B (Y R : Point) : sarea (0, 1) Y R = (1 - Y.2) * R.1 - Y.1 * (1 - R.2) := by
  simp only [sarea]; ring

theorem sarea_XY (X Y R : Point) : sarea X Y R = (X.1 - Y.1) * (1 - R.2) +
    (1 - Y.2 - (1 - X.2)) * R.1 - ((1 - Y.2) * X.1 - (1 - X.2) * Y.1) := by
  simp only [sarea]; ring

/-- **A-side capacity one**: two lower points `R₁, R₂` of the rectangle `[0, L] × [1 - M, 1]`
(`L, M ≥ 1`, `7/64 · L ≤ s`, `7/64 · M ≤ s`), with all doubled areas of the eight points at
least `s`, cannot both be A-side points (`D(B,Y,R) ≤ -s`): the A-side points lie in the feasible
triangle, and every triangle formed by `Z` and two of its points has doubled area `< s`
(`A_core`). The Type-III case is `L = M = 1`, `s = 7/64`. -/
theorem A_side_capacity_one (X Y Z R₁ R₂ : Point) (s L M : ℝ) (hL : 1 ≤ L) (hM : 1 ≤ M)
    (hsL : 7 / 64 * L ≤ s) (hsM : 7 / 64 * M ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (hR₁ : R₁ ∈ rectangle L M)
    (hR₂ : R₂ ∈ rectangle L M) (hl₁ : R₁.2 < R₁.1) (hl₂ : R₂.2 < R₂.1)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R₁, R₂]) :
    ¬ (sarea (0, 1) Y R₁ ≤ -s ∧ sarea (0, 1) Y R₂ ≤ -s) := by
  rintro ⟨h1, h2⟩
  have hs : 7 / 64 ≤ s := by nlinarith
  have H := meshHyps_of hs hm (min_sub hmin _ ![0, 1, 2, 3, 4, 5] (by norm_num) (by decide)
    (by intro i; fin_cases i <;> simp))
  have u1 := uniformSigns X Y Z R₁ s L M hL hM hsL hsM hm hR₁ hl₁
    (min_sub hmin _ ![0, 1, 2, 3, 4, 5, 6] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp))
  have u2 := uniformSigns X Y Z R₂ s L M hL hM hsL hsM hm hR₂ hl₂
    (min_sub hmin _ ![0, 1, 2, 3, 4, 5, 7] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp))
  rw [sarea_B] at h1 h2
  have v1 := u1.2.2
  have v2 := u2.2.2
  rw [sarea_XY X Y R₁] at v1
  rw [sarea_XY X Y R₂] at v2
  have hA := A_core H hM hsM hR₁.2.2.1 h1 v1 hR₂.2.2.1 h2 v2
  have hZ : 2 * (s / 2) ≤ |sarea Z R₁ R₂| := two_le_abs (area_of_le_min hmin 5 6 7)
  have e : sarea Z R₁ R₂ = (R₁.1 - Z.1) * (R₂.2 - Z.2) - (R₁.2 - Z.2) * (R₂.1 - Z.1) := rfl
  rw [e] at hZ
  linarith

/-- The C-side capacity with the rectangle parameters: two lower points with `D(B,Y,R) ≥ s` are impossible, by the A-side capacity of the configuration
reflected across `x + y = 1` (which exchanges `L, M` and `X, Z`). -/
theorem C_side_general (X Y Z R₁ R₂ : Point) (s L M : ℝ) (hL : 1 ≤ L) (hM : 1 ≤ M)
    (hsL : 7 / 64 * L ≤ s) (hsM : 7 / 64 * M ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (hR₁ : R₁ ∈ rectangle L M)
    (hR₂ : R₂ ∈ rectangle L M) (hl₁ : R₁.2 < R₁.1) (hl₂ : R₂.2 < R₂.1)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R₁, R₂]) :
    ¬ (s ≤ sarea (0, 1) Y R₁ ∧ s ≤ sarea (0, 1) Y R₂) := by
  rintro ⟨h1, h2⟩
  have hs : 7 / 64 ≤ s := by nlinarith
  have H := meshHyps_refl (meshHyps_of hs hm (min_sub hmin _ ![0, 1, 2, 3, 4, 5] (by norm_num)
    (by decide) (by intro i; fin_cases i <;> simp)))
  have u1 := uniformSigns X Y Z R₁ s L M hL hM hsL hsM hm hR₁ hl₁
    (min_sub hmin _ ![0, 1, 2, 3, 4, 5, 6] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp))
  have u2 := uniformSigns X Y Z R₂ s L M hL hM hsL hsM hm hR₂ hl₂
    (min_sub hmin _ ![0, 1, 2, 3, 4, 5, 7] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp))
  rw [sarea_B] at h1 h2
  have bx1 := u1.2.1
  have bx2 := u2.2.1
  rw [sarea_B] at bx1 bx2
  -- the determinants `D(Z, Y, R)` and `D(X, R₁, R₂)`
  have zy1 : 2 * (s / 2) ≤ |sarea Z Y R₁| := two_le_abs (area_of_le_min hmin 5 4 6)
  have zy2 : 2 * (s / 2) ≤ |sarea Z Y R₂| := two_le_abs (area_of_le_min hmin 5 4 7)
  have hX : 2 * (s / 2) ≤ |sarea X R₁ R₂| := two_le_abs (area_of_le_min hmin 3 6 7)
  have r1 : -sarea Z Y R₁ = (1 - Z.2 - (1 - Y.2)) * (1 - (1 - R₁.1)) +
      (1 - (1 - Y.1) - Z.1) * (1 - R₁.2) - ((1 - (1 - Y.1)) * (1 - Z.2) - Z.1 * (1 - Y.2)) := by
    simp only [sarea]; ring
  have r2 : -sarea Z Y R₂ = (1 - Z.2 - (1 - Y.2)) * (1 - (1 - R₂.1)) +
      (1 - (1 - Y.1) - Z.1) * (1 - R₂.2) - ((1 - (1 - Y.1)) * (1 - Z.2) - Z.1 * (1 - Y.2)) := by
    simp only [sarea]; ring
  rw [← abs_neg, r1] at zy1
  rw [← abs_neg, r2] at zy2
  obtain ⟨x0₁, xL₁, yM₁, y1₁⟩ := hR₁
  obtain ⟨x0₂, xL₂, yM₂, y1₂⟩ := hR₂
  have ac1 : 2 * (s / 2) ≤ |sarea (0, 0) (1, 1) R₁| := two_le_abs (area_of_le_min hmin 0 2 6)
  have ac2 : 2 * (s / 2) ≤ |sarea (0, 0) (1, 1) R₂| := two_le_abs (area_of_le_min hmin 0 2 7)
  rw [show sarea (0, 0) (1, 1) R₁ = R₁.2 - R₁.1 by simp only [sarea]; ring,
    abs_of_neg (by linarith)] at ac1
  rw [show sarea (0, 0) (1, 1) R₂ = R₂.2 - R₂.1 by simp only [sarea]; ring,
    abs_of_neg (by linarith)] at ac2
  have s1 := sign_XY H hL hsL (by linarith : 1 - L ≤ 1 - R₁.1) (by linarith)
    (by linarith : s ≤ (1 - (1 - X.1)) * (1 - R₁.2) - (1 - X.2) * (1 - (1 - R₁.1))) (by linarith)
  have s2 := sign_XY H hL hsL (by linarith : 1 - L ≤ 1 - R₂.1) (by linarith)
    (by linarith : s ≤ (1 - (1 - X.1)) * (1 - R₂.2) - (1 - X.2) * (1 - (1 - R₂.1))) (by linarith)
  have hA := A_core H hL hsL (by linarith : 1 - L ≤ 1 - R₁.1)
    (by linarith : (1 - (1 - Y.1)) * (1 - R₁.2) - (1 - Y.2) * (1 - (1 - R₁.1)) ≤ -s) s1
    (by linarith : 1 - L ≤ 1 - R₂.1)
    (by linarith : (1 - (1 - Y.1)) * (1 - R₂.2) - (1 - Y.2) * (1 - (1 - R₂.1)) ≤ -s) s2
  have e : sarea X R₁ R₂ = -(((1 - R₁.2) - (1 - X.2)) * ((1 - R₂.1) - (1 - X.1)) -
      ((1 - R₁.1) - (1 - X.1)) * ((1 - R₂.2) - (1 - X.2))) := by
    simp only [sarea]; ring
  rw [e, abs_neg] at hX
  linarith

/-- The labelled mesh in the physical (clockwise) frame, from the reversed counterclockwise mesh
(`meshLabelled_of_distributed`). -/
theorem mesh_phys {X Y Z : Point} (hd : Distributed (0, 0) (0, 1) (1, 1) X Y Z)
    (hgp : 0 < minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z])
    (hZ : InsideTriangle Z (0, 0) (0, 1) Y) (hX : InsideTriangle X (0, 1) (1, 1) Y) :
    MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z := by
  have hd' : Distributed (1, 1) (0, 1) (0, 0) Z Y X :=
    distributed_swap (distributed_cyc (distributed_cyc (distributed_rev hd)))
  have hm := meshLabelled_of_distributed (1, 1) (0, 1) (0, 0) Z Y X (by simp only [sarea]; norm_num) hd'
    (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![2, 1, 0, 5, 4, 3] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp))) (inside_swap12.1 hX) (inside_swap12.1 hZ)
  exact meshLabelled_reverse hm

/-- The `3+3` class with a labelled upper triple: each lower point lies on one side of `BY`,
and each side holds at most one. -/
theorem three_three_core {X Y Z L₁ L₂ L₃ : Point} {s Lr Mr : ℝ} (hL : 1 ≤ Lr) (hM : 1 ≤ Mr)
    (hsL : 7 / 64 * Lr ≤ s) (hsM : 7 / 64 * Mr ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z)
    (h₁ : L₁ ∈ rectangle Lr Mr) (h₂ : L₂ ∈ rectangle Lr Mr) (h₃ : L₃ ∈ rectangle Lr Mr)
    (l₁ : L₁.2 < L₁.1) (l₂ : L₂.2 < L₂.1) (l₃ : L₃.2 < L₃.1)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, L₁, L₂, L₃]) :
    False := by
  have hs : 7 / 64 ≤ s := by nlinarith
  have side : ∀ (L : Point), s / 2 ≤ triangleArea (0, 1) Y L →
      sarea (0, 1) Y L ≤ -s ∨ s ≤ sarea (0, 1) Y L := by
    intro L hL
    have := two_le_abs hL
    rcases le_total 0 (sarea (0, 1) Y L) with h | h
    · rw [abs_of_nonneg h] at this; right; linarith
    · rw [abs_of_nonpos h] at this; left; linarith
  have A2 := fun (L L' : Point) (hL' : L ∈ rectangle Lr Mr) (hL'' : L' ∈ rectangle Lr Mr)
      (lL : L.2 < L.1) (lL' : L'.2 < L'.1)
      (hm8 : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, L, L']) =>
    A_side_capacity_one X Y Z L L' s Lr Mr hL hM hsL hsM hm hL' hL'' lL lL' hm8
  have C2 := fun (L L' : Point) (hL' : L ∈ rectangle Lr Mr) (hL'' : L' ∈ rectangle Lr Mr)
      (lL : L.2 < L.1) (lL' : L'.2 < L'.1)
      (hm8 : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, L, L']) =>
    C_side_general X Y Z L L' s Lr Mr hL hM hsL hsM hm hL' hL'' lL lL' hm8
  have m12 : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, L₁, L₂] :=
    min_sub hmin _ ![0, 1, 2, 3, 4, 5, 6, 7] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp)
  have m13 : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, L₁, L₃] :=
    min_sub hmin _ ![0, 1, 2, 3, 4, 5, 6, 8] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp)
  have m23 : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, L₂, L₃] :=
    min_sub hmin _ ![0, 1, 2, 3, 4, 5, 7, 8] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp)
  rcases side L₁ (area_of_le_min hmin 1 4 6) with s1 | s1 <;>
    rcases side L₂ (area_of_le_min hmin 1 4 7) with s2 | s2 <;>
    rcases side L₃ (area_of_le_min hmin 1 4 8) with s3 | s3
  · exact A2 L₁ L₂ h₁ h₂ l₁ l₂ m12 ⟨s1, s2⟩
  · exact A2 L₁ L₂ h₁ h₂ l₁ l₂ m12 ⟨s1, s2⟩
  · exact A2 L₁ L₃ h₁ h₃ l₁ l₃ m13 ⟨s1, s3⟩
  · exact C2 L₂ L₃ h₂ h₃ l₂ l₃ m23 ⟨s2, s3⟩
  · exact A2 L₂ L₃ h₂ h₃ l₂ l₃ m23 ⟨s2, s3⟩
  · exact C2 L₁ L₃ h₁ h₃ l₁ l₃ m13 ⟨s1, s3⟩
  · exact C2 L₁ L₂ h₁ h₂ l₁ l₂ m12 ⟨s1, s2⟩
  · exact C2 L₁ L₂ h₁ h₂ l₁ l₂ m12 ⟨s1, s2⟩

/-- The `3+3` class with the upper triple `P, Q, R` and the lower triple `L₁, L₂, L₃`. -/
theorem three_three_upper {P Q R L₁ L₂ L₃ : Point} {s Lr Mr : ℝ} (hL : 1 ≤ Lr) (hM : 1 ≤ Mr)
    (hsL : 7 / 64 * Lr ≤ s) (hsM : 7 / 64 * Mr ≤ s)
    (hd : Distributed (0, 0) (0, 1) (1, 1) P Q R)
    (h₁ : L₁ ∈ rectangle Lr Mr) (h₂ : L₂ ∈ rectangle Lr Mr) (h₃ : L₃ ∈ rectangle Lr Mr)
    (l₁ : L₁.2 < L₁.1) (l₂ : L₂.2 < L₂.1) (l₃ : L₃.2 < L₃.1)
    (hmin' : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), P, Q, R, L₁, L₂, L₃]) :
    False := by
  have hs : 7 / 64 ≤ s := by nlinarith
  have hgp : 0 < minTriangleArea ![(0, 0), (0, 1), (1, 1), P, Q, R] :=
    lt_of_lt_of_le (by linarith) (min_sub hmin' _ ![0, 1, 2, 3, 4, 5] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> simp))
  obtain ⟨σ, hZ, hX⟩ := exists_mesh_labelling _ _ _ P Q R hd hgp
  have hperm : ∀ i j k : Fin 3, i ≠ j → j ≠ k → i ≠ k →
      (i = 0 ∧ j = 1 ∧ k = 2) ∨ (i = 0 ∧ j = 2 ∧ k = 1) ∨ (i = 1 ∧ j = 0 ∧ k = 2) ∨
        (i = 1 ∧ j = 2 ∧ k = 0) ∨ (i = 2 ∧ j = 0 ∧ k = 1) ∨ (i = 2 ∧ j = 1 ∧ k = 0) := by
    decide
  have inj := σ.injective
  rcases hperm (σ 0) (σ 1) (σ 2) (inj.ne (by decide)) (inj.ne (by decide)) (inj.ne (by decide))
    with ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ <;>
    simp only [e0, e1, e2, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons] at hZ hX
  · -- `(X, Y, Z) = (P, Q, R)`
    exact three_three_core hL hM hsL hsM (mesh_phys hd hgp hZ hX) h₁ h₂ h₃ l₁ l₂ l₃ hmin'
  · -- `(P, R, Q)`
    exact three_three_core hL hM hsL hsM (mesh_phys (distributed_swap (distributed_cyc hd))
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![0, 1, 2, 3, 5, 4] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))) hZ hX) h₁ h₂ h₃ l₁ l₂ l₃
      (min_sub hmin' _ ![0, 1, 2, 3, 5, 4, 6, 7, 8] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
  · -- `(Q, P, R)`
    exact three_three_core hL hM hsL hsM (mesh_phys (distributed_swap hd)
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![0, 1, 2, 4, 3, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))) hZ hX) h₁ h₂ h₃ l₁ l₂ l₃
      (min_sub hmin' _ ![0, 1, 2, 4, 3, 5, 6, 7, 8] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
  · -- `(Q, R, P)`
    exact three_three_core hL hM hsL hsM (mesh_phys (distributed_cyc (distributed_cyc hd))
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![0, 1, 2, 4, 5, 3] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))) hZ hX) h₁ h₂ h₃ l₁ l₂ l₃
      (min_sub hmin' _ ![0, 1, 2, 4, 5, 3, 6, 7, 8] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
  · -- `(R, P, Q)`
    exact three_three_core hL hM hsL hsM (mesh_phys (distributed_cyc hd)
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![0, 1, 2, 5, 3, 4] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))) hZ hX) h₁ h₂ h₃ l₁ l₂ l₃
      (min_sub hmin' _ ![0, 1, 2, 5, 3, 4, 6, 7, 8] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
  · -- `(R, Q, P)`
    exact three_three_core hL hM hsL hsM (mesh_phys (distributed_swap (distributed_cyc (distributed_cyc hd)))
      (lt_of_lt_of_le hgp (min_sub (le_refl _) _ ![0, 1, 2, 5, 4, 3] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))) hZ hX) h₁ h₂ h₃ l₁ l₂ l₃
      (min_sub hmin' _ ![0, 1, 2, 5, 4, 3, 6, 7, 8] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))

/-- **Type-III exclusion, `3+3` class**: a Type-III configuration with exactly three free points
above `y = x` has minimum area at most `7/128` (`< A₀`). -/
theorem typeIII_3plus3 (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h3 : upperCount U V W X Y Z = 3) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  by_contra hcon
  push Not at hcon
  set P := typeIIIConfig U V W X Y Z with hPdef
  set F := freeSix U V W X Y Z
  have hpos : 0 < minTriangleArea P := lt_trans (by norm_num) hcon
  obtain ⟨u₁, u₂, u₃, h12, h13, h23, hs⟩ := Set.ncard_eq_three.1 h3
  have hup : ∀ e, (F e).1 < (F e).2 ↔ e = u₁ ∨ e = u₂ ∨ e = u₃ := by
    intro e
    have := congrArg (e ∈ ·) hs
    simpa using this
  have hlow : ∀ e, e ≠ u₁ → e ≠ u₂ → e ≠ u₃ → (F e).2 < (F e).1 := by
    intro e h1 h2 h3'
    have hn : ¬ (F e).1 < (F e).2 := fun h => by
      rcases (hup e).1 h with h | h | h <;> contradiction
    have hd := sarea_ne_zero_of_min_pos hpos 0 2 (fr e) (by decide) (fr_ne_small e).2.2.symm
      (fr_ne_small e).1.symm
    have e0 : P 0 = (0, 0) := by simp [hPdef, typeIIIConfig]
    have e2 : P 2 = (1, 1) := by simp [hPdef, typeIIIConfig]
    have e1 : P (fr e) = F e := typeIII_fr U V W X Y Z e
    rw [e0, e2, e1] at hd
    unfold sarea at hd; simp at hd
    push Not at hn
    exact lt_of_le_of_ne hn (fun h => hd (by linarith))
  have hT : 2 < (((Finset.univ : Finset (Fin 6)).erase u₁).erase u₂ |>.erase u₃).card := by
    rw [Finset.card_erase_of_mem (by simp [Ne.symm h13, Ne.symm h23]),
      Finset.card_erase_of_mem (by simp [Ne.symm h12]), Finset.card_erase_of_mem (by simp)]
    simp
  obtain ⟨l₁, l₂, l₃, hl1, hl2, hl3, g12, g13, g23⟩ := Finset.two_lt_card_iff.1 hT
  simp only [Finset.mem_erase, Finset.mem_univ, and_true] at hl1 hl2 hl3
  obtain ⟨hl1c, hl1b, hl1a⟩ := hl1
  obtain ⟨hl2c, hl2b, hl2a⟩ := hl2
  obtain ⟨hl3c, hl3b, hl3a⟩ := hl3
  have hsq := freeSix_mem hU hV hW hX hY hZ
  have i1 := fr_ne h12
  have i2 := fr_ne h13
  have i3 := fr_ne h23
  have i4 := fr_ne g12
  have i5 := fr_ne g13
  have i6 := fr_ne g23
  have j1 := fr_ne hl1a
  have j2 := fr_ne hl1b
  have j3 := fr_ne hl1c
  have j4 := fr_ne hl2a
  have j5 := fr_ne hl2b
  have j6 := fr_ne hl2c
  have j7 := fr_ne hl3a
  have j8 := fr_ne hl3b
  have j9 := fr_ne hl3c
  obtain ⟨a1, a2, a3⟩ := fr_ne_small u₁
  obtain ⟨b1, b2, b3⟩ := fr_ne_small u₂
  obtain ⟨c1, c2, c3⟩ := fr_ne_small u₃
  obtain ⟨d1, d2, d3⟩ := fr_ne_small l₁
  obtain ⟨e1, e2, e3⟩ := fr_ne_small l₂
  obtain ⟨f1, f2, f3⟩ := fr_ne_small l₃
  have h9 : minTriangleArea P ≤
      minTriangleArea ![(0, 0), (0, 1), (1, 1), F u₁, F u₂, F u₃, F l₁, F l₂, F l₃] :=
    min_sub (le_refl _) _ ![0, 1, 2, fr u₁, fr u₂, fr u₃, fr l₁, fr l₂, fr l₃] (by norm_num)
      (by inj_tac)
      (by intro i; fin_cases i
          · simp [hPdef, typeIIIConfig]
          · simp [hPdef, typeIIIConfig]
          · simp [hPdef, typeIIIConfig]
          all_goals exact (typeIII_fr U V W X Y Z _).symm)
  have hu₁ := (hup u₁).2 (Or.inl rfl)
  have hu₂ := (hup u₂).2 (Or.inr (Or.inl rfl))
  have hu₃ := (hup u₃).2 (Or.inr (Or.inr rfl))
  -- the upper triple is distributed
  have hd : Distributed (0, 0) (0, 1) (1, 1) (F u₁) (F u₂) (F u₃) := by
    by_contra hnd
    have h6 : minTriangleArea P ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), F u₁, F u₂, F u₃] :=
      h9.trans (min_sub (le_refl _) _ ![0, 1, 2, 3, 4, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    have := triangleArea_ge_of_not_distributed (0, 0) (0, 1) (1, 1) (F u₁) (F u₂) (F u₃)
      (Or.inr (upper_inside hU hV hW hX hY hZ hpos u₁ hu₁))
      (Or.inr (upper_inside hU hV hW hX hY hZ hpos u₂ hu₂))
      (Or.inr (upper_inside hU hV hW hX hY hZ hpos u₃ hu₃)) _ hpos h6 hnd
    have harea : triangleArea ((0 : ℝ), (0 : ℝ)) (0, 1) (1, 1) = 1 / 2 := by
      simp only [triangleArea_eq, sarea]; norm_num
    rw [harea] at this
    nlinarith [sqrt3_gt]
  have rect : ∀ L : Point, L ∈ unitSquare → L ∈ rectangle 1 1 := fun L h =>
    ⟨h.1, h.2.1, by linarith [h.2.2.1], h.2.2.2⟩
  exact three_three_upper (s := 7 / 64) le_rfl le_rfl (by norm_num) (by norm_num) hd
    (rect _ (hsq l₁)) (rect _ (hsq l₂)) (rect _ (hsq l₃)) (hlow l₁ hl1a hl1b hl1c)
    (hlow l₂ hl2a hl2b hl2c) (hlow l₃ hl3a hl3b hl3c) (by linarith)

end Heilbronn.Nine.CornerFamilies
