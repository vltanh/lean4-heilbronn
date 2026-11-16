module

public import Heilbronn.Nine.Sharp.BCMoving

/-! # A sharp chamber with B and D moving inward simultaneously (`docs/proof/nine/SHARP_BD_MOVING.md`)

**Role.** Component of the primary route: the equality branch of word 54 of
`SIX_BOUNDARY_SIDE_OPPOSITE` (row N6-04), after the rotation `R(u,v) = (v,1-u)`.

**Setting.** The sharp chamber of `HAND_PROOF.md` with the two contacts `B = (b,t)` and
`D = (1-r,d)` moved inward; `A=(0,a), C=(c,0), E=(1,e), F=(f,1), G=(g,1), H=(0,h)`, `O=(x,y)` in
the square, the strict orders (`SharpOrders`) and the closed height conditions `0 ≤ t ≤ d`,
`0 ≤ r ≤ 1-f` (1). The chamber is positivity of the eleven oriented doubled areas of the table
(`claim_chamber_formulas`). Constants and scalar functions are those of `SHARP_BC_MOVING`
(`sharpS = 2A₀`, `sharpLambda`, `sharpAlpha`, `sharpBeta`, `sharpG = g₀`, `sharpH = H₀`).

**Results.**
* `claim_chamber_formulas`: the eleven oriented doubled areas.
* `theorem1`: minimum of the eleven areas `≤ A₀`; if all are `≥ A₀` then `t = r = 0` and the
  configuration is the sharp configuration.
* `claim_bounds` (2)–(9): anchor bounds, the B-moving budget, `u, v < 1/4`, `t < 1/2`, `v > 7/50`.
* `claim_combined` (10)–(14): the two eliminations, positivity of the coefficients `C₁, C₂`, the
  combined inequality `H₀ + λ(g₀-s) ≥ tK_B + rT_v + vr² - (1+λ)tr` and `K_B > 59/600`.
* `claim_mixed_loss` (15)–(17): `T_v - (1+λ)t > 0`.

The proofs go through `Data`, the hypotheses and the eleven bounds as plain real inequalities
(with a general threshold `s`), and the plain-real lemmas `Data.bounds`, `Data.combined`,
`Data.mixed`, `Data.rigid`.

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "all eleven displayed expressions are at least `s = 2A₀`" (which implies the chamber).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SharpBDMoving

open Heilbronn.Nine.SharpBCMoving

/-- The B/D-moving configuration: `B = (b,t)`, `D = (1-r,d)`, the other points as in
`HAND_PROOF.md`, in the order `A, B, C, D, E, F, G, H, O`. -/
def bdMovingConfig (a b c d e f g h t r x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, t) (c, 0) (1 - r, d) (1, e) (f, 1) (g, 1) (0, h) (x, y)

/-- The hypotheses (1) of Theorem 1 other than the chamber: the strict orders, `0 ≤ t ≤ d`,
`0 ≤ r ≤ 1-f` and `O ∈ [0,1]²`. -/
def BDMovingHyp (a b c d e f g h t r x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ t ∧ t ≤ d ∧ 0 ≤ r ∧ r ≤ 1 - f ∧
    ((x, y) : Point) ∈ unitSquare

/-- `K_B = 1 - s - 2u(1+v+λ)`. -/
def bdKB (u v : ℝ) : ℝ := 1 - sharpS - 2 * u * (1 + v + sharpLambda)

/-- `T_v = β(1-3v) + α - s - v(1-2u) + λ(1-v)`. -/
def bdTv (u v : ℝ) : ℝ :=
  sharpBeta sharpS u v * (1 - 3 * v) + sharpAlpha sharpS u v - sharpS - v * (1 - 2 * u) +
    sharpLambda * (1 - v)

/-- **Claim** (`SHARP_BD_MOVING:claim-chamber-formulas`). The eleven oriented doubled areas:
`ABH = b(h-a)`, `ABC = a(c-b)-ct`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)+r(1-e)`, `GHF = (f-g)(1-h)`,
`GEF = (f-g)(1-e)`, `ADO = (1-r)(y-a)-(d-a)x`, `DHO = (1-r)(h-y)-(h-d)x`,
`BOE = e(x-b)-(1-b)y+t(1-x)`, `GCO = x-c(1-y)-gy`, `OCF = c(1-y)+fy-x`.
`docs/proof/nine/SHARP_BD_MOVING.md`, lines 26-40. -/
theorem claim_chamber_formulas (a b c d e f g h t r x y : ℝ) :
    chamberSarea (bdMovingConfig a b c d e f g h t r x y) =
      ![b * (h - a), a * (c - b) - c * t, g * (h - a), (1 - f) * (e - d) + r * (1 - e),
        (f - g) * (1 - h), (f - g) * (1 - e), (1 - r) * (y - a) - (d - a) * x,
        (1 - r) * (h - y) - (h - d) * x, e * (x - b) - (1 - b) * y + t * (1 - x),
        x - c * (1 - y) - g * y, c * (1 - y) + f * y - x] := by
  funext i
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, bdMovingConfig, sharpConfig, sarea,
      Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val] <;> ring

/-! ### The plain-real form -/

/-- The hypotheses (1) and the eleven bounds "doubled area `≥ s`", as plain real inequalities. -/
structure Data (s a b c d e f g h t r x y : ℝ) : Prop where
  hs1 : 7 / 64 < s
  hs2 : s < 11 / 100
  ha : 0 < a
  hah : a < h
  hh1 : h < 1
  hb : 0 < b
  hbc : b < c
  hc1 : c < 1
  hd : 0 < d
  hde : d < e
  he1 : e < 1
  hg : 0 < g
  hgf : g < f
  hf1 : f < 1
  ht0 : 0 ≤ t
  htd : t ≤ d
  hr0 : 0 ≤ r
  hrf : r ≤ 1 - f
  hx0 : 0 ≤ x
  hx1 : x ≤ 1
  hy0 : 0 ≤ y
  hy1 : y ≤ 1
  h0 : s ≤ b * (h - a)
  h1 : s ≤ a * (c - b) - c * t
  h2 : s ≤ g * (h - a)
  h3 : s ≤ (1 - f) * (e - d) + r * (1 - e)
  h4 : s ≤ (f - g) * (1 - h)
  h5 : s ≤ (f - g) * (1 - e)
  h6 : s ≤ (1 - r) * (y - a) - (d - a) * x
  h7 : s ≤ (1 - r) * (h - y) - (h - d) * x
  h8 : s ≤ e * (x - b) - (1 - b) * y + t * (1 - x)
  h9 : s ≤ x - c * (1 - y) - g * y
  h10 : s ≤ c * (1 - y) + f * y - x

theorem Data.of_hs {a b c d e f g h t r x y : ℝ} (hyp : BDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (bdMovingConfig a b c d e f g h t r x y) i) :
    Data sharpS a b c d e f g h t r x y := by
  obtain ⟨⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩, ht0, htd, hr0, hrf, hx0, hx1,
    hy0, hy1⟩ := hyp
  obtain ⟨hs1, hs2, -, -⟩ := sharp_bounds
  rw [claim_chamber_formulas] at hs
  exact ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, ht0, htd, hr0, hrf,
    hx0, hx1, hy0, hy1, by simpa using hs 0, by simpa using hs 1, by simpa using hs 2,
    by simpa using hs 3, by simpa using hs 4, by simpa using hs 5, by simpa using hs 6,
    by simpa using hs 7, by simpa using hs 8, by simpa using hs 9, by simpa using hs 10⟩

section Plain

variable {s a b c d e f g h t r x y u v : ℝ}

/-- (2)–(9) in plain form, with `α = 1-v-(h-a)`, `β = 1-u-(f-g)`, `uL = vM = s`. -/
theorem Data.bounds (H : Data s a b c d e f g h t r x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) :
    (u ≤ b ∧ u ≤ g ∧ e ≤ 1 - v ∧ h ≤ 1 - v ∧ a ≤ 1 - v - (h - a) ∧
        1 - f ≤ 1 - u - (f - g)) ∧
      (t < a ∧ s < 1 - v - (h - a) - t ∧ s < 1 - u - (f - g) ∧ r ≤ 1 - u - (f - g)) ∧
      (2 * u + r ≤ 1 - x ∧ 2 * v ≤ y) ∧ (t < y ∧ b < x ∧ y < e) ∧
      ((1 - v - t) * (1 - x) + (1 - u) * y ≤ (1 - v) * (1 - u) - s) ∧
      s ≤ (1 - 3 * u - 3 * v + 5 * u * v) + 2 * u * t - r * (1 - v - t) ∧
      t ≤ (1 - v - (h - a)) * (1 - u) - s ∧
      (u < 1 / 4 ∧ v < 1 / 4 ∧ t < 1 / 2) ∧
      (s < u ∧ s < v ∧ 7 / 50 < v) := by
  obtain ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, ht0, htd, hr0, hrf,
    hx0, hx1, hy0, hy1, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩ := H
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < f - g := by linarith
  have hu0 : 0 < u := pos_of_mul_eq hL0 (by linarith) hu
  have hv0 : 0 < v := pos_of_mul_eq hM0 (by linarith) hv
  have hbu : u ≤ b := anchor_le hL0 h0 hu
  have hgu : u ≤ g := anchor_le hL0 h2 hu
  have hhv : v ≤ 1 - h := anchor_le hM0 (by linarith) hv
  have hev : v ≤ 1 - e := anchor_le hM0 (by linarith) hv
  have hX : 2 * u ≤ 1 - r - x :=
    anchor_le hL0 (by linarith) (by linarith : 2 * u * (h - a) = 2 * s)
  have hY : 2 * v ≤ y := anchor_le hM0 (by linarith) (by linarith : 2 * v * (f - g) = 2 * s)
  have hat0 : 0 < a - t := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonpos_of_nonpos_of_nonneg hcon (by linarith : (0:ℝ) ≤ c - b),
      mul_nonneg hb.le ht0]
  have hat : s < a - t := by
    linarith [mul_pos hat0 (by linarith : (0:ℝ) < 1 - (c - b)), mul_nonneg hb.le ht0]
  have hβ : s < 1 - u - (f - g) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f - r) (by linarith : (0:ℝ) ≤ 1 - e),
      mul_pos (by linarith : (0:ℝ) < 1 - f) hd]
  have hyt : t < y := by
    have h6' : s ≤ (1 - r) * (y - t) := by
      linarith [mul_nonneg (by linarith : (0:ℝ) ≤ a - t) (by linarith : (0:ℝ) ≤ 1 - r - x),
        mul_nonneg (by linarith : (0:ℝ) ≤ d - t) hx0]
    by_contra hcon
    push Not at hcon
    linarith [mul_nonpos_of_nonneg_of_nonpos (by linarith : (0:ℝ) ≤ 1 - r)
      (by linarith : y - t ≤ 0)]
  have hxb : b < x := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ e - t) (sub_nonneg.2 hcon),
      mul_pos (by linarith : (0:ℝ) < 1 - b) (by linarith : (0:ℝ) < y - t)]
  have hye : y < e := by
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_right (by linarith : e - t ≤ y - t)
      (by linarith : (0:ℝ) ≤ x - b),
      mul_le_mul_of_nonneg_left (by linarith : x - b ≤ 1 - b) (by linarith : (0:ℝ) ≤ y - t)]
  have hBOE : (1 - v - t) * (1 - x) + (1 - u) * y ≤ (1 - v) * (1 - u) - s := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ e - y),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - e) (by linarith : (0:ℝ) ≤ x - u)]
  have hu2 : u < 1 / 2 := by linarith
  have hv2 : v < 1 / 2 := by linarith
  have h14 : s ≤ (1 - 3 * u - 3 * v + 5 * u * v) + 2 * u * t - r * (1 - v - t) := by
    linarith [mul_le_mul_of_nonneg_left (by linarith : 2 * u + r ≤ 1 - x)
      (by linarith : (0:ℝ) ≤ 1 - v - t),
      mul_le_mul_of_nonneg_left hY (by linarith : (0:ℝ) ≤ 1 - u)]
  have h15 : t ≤ (1 - v - (h - a)) * (1 - u) - s := by
    linarith [mul_le_mul_of_nonneg_right hbu ht0,
      mul_le_mul (by linarith : a - t ≤ 1 - v - (h - a) - t) (by linarith : c - b ≤ 1 - u)
        (by linarith : (0:ℝ) ≤ c - b) (by linarith : (0:ℝ) ≤ 1 - v - (h - a) - t)]
  obtain ⟨hu4, hv4, ht2⟩ := eq17_core hs1 hs2 hu0 hu2 hv0 hv2 ht0 hu hv (by linarith) hβ
    (by linarith [mul_nonneg hr0 (by linarith : (0:ℝ) ≤ 1 - v - t)]) h15
  have hsu : s < u := by linarith [mul_lt_mul_of_pos_left (by linarith : h - a < 1) hu0]
  have hsv : s < v := by linarith [mul_lt_mul_of_pos_left (by linarith : f - g < 1) hv0]
  have hv750 : 7 / 50 < v := by
    have e1 : s < v * (1 - u - s) := by linarith [mul_lt_mul_of_pos_left hβ hv0]
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_right hcon (by linarith : (0:ℝ) ≤ 1 - u - s)]
  exact ⟨⟨hbu, hgu, by linarith, by linarith, by linarith, by linarith⟩,
    ⟨by linarith, by linarith, hβ, by linarith⟩, ⟨by linarith, hY⟩, ⟨hyt, hxb, hye⟩, hBOE, h14,
    h15, ⟨hu4, hv4, ht2⟩, ⟨hsu, hsv, hv750⟩⟩

/-- (10)–(14) in plain form. -/
theorem Data.combined {l : ℝ} (H : Data s a b c d e f g h t r x y) (hl1 : 1 / 4 < l)
    (hl2 : l < 1 / 3) (hu : u * (h - a) = s) (hv : v * (f - g) = s) :
    (s + u * t) * (1 - y) ≤ (1 - v - (h - a) - t) * (x - u - s) ∧
      (s - v * r) * x ≤ (1 - u - (f - g)) * ((1 - r) * (1 - v - y) - s) ∧
      0 < (1 - v - (h - a)) - t - s + v * r + l * (1 - v - t) ∧
      1 / 16 - s ^ 2 < (1 - u - (f - g)) * (1 - r) - s - u * t + l * (1 - u) ∧
      0 < 1 / 16 - s ^ 2 ∧
      t * (1 - s - 2 * u * (1 + v + l)) +
          r * ((1 - u - (f - g)) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
            l * (1 - v)) + v * r ^ 2 - (1 + l) * t * r ≤
        (1 - v - (h - a)) * (1 - 3 * u - s) + (1 - u - (f - g)) * (1 - 3 * v - s) +
          2 * s * (u + v - 1) + l * (1 - 3 * u - 3 * v + 5 * u * v - s) ∧
      59 / 600 < 1 - s - 2 * u * (1 + v + l) := by
  obtain ⟨⟨hbu, hgu, hev, hhv, hα, hfβ⟩, ⟨hta, hαt, hβ, hrβ⟩, ⟨hX, hY⟩, ⟨hyt, hxb, hye⟩, hBOE,
    -, -, ⟨hu4, hv4, ht2⟩, ⟨hsu, hsv, hv750⟩⟩ := H.bounds hu hv
  obtain ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, ht0, htd, hr0, hrf,
    hx0, hx1, hy0, hy1, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩ := H
  have hM0 : 0 < f - g := by linarith
  have h18 := elim_B (by linarith) h1 h9 hbu hgu hα ht0 hb.le hbc hy0 hy1
  have h11 : (s - v * r) * x ≤ (1 - u - (f - g)) * ((1 - r) * (1 - v - y) - s) :=
    elim_D (d := d) (e := e) (f := f) (h := h) h3 h7 hev hhv hfβ hr0 hrf hx0 (by linarith)
      hde.le
  have hC1 : 0 < (1 - v - (h - a)) - t - s + v * r + l * (1 - v - t) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ v) hr0,
      mul_pos (by linarith : (0:ℝ) < l) (by linarith : (0:ℝ) < 1 - v - t)]
  have hM4 : 4 * s < f - g := by linarith [mul_lt_mul_of_pos_right hv4 hM0]
  have hC2 : 1 / 16 - s ^ 2 < (1 - u - (f - g)) * (1 - r) - s - u * t + l * (1 - u) := by
    linarith [mul_le_mul_of_nonneg_left hrβ (by linarith : (0:ℝ) ≤ 1 - u - (f - g)),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - u - (f - g) - s)
        (by linarith : (0:ℝ) ≤ 1 - (1 - u - (f - g)) - s),
      mul_lt_mul'' hu4 ht2 (by linarith) ht0,
      mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - u)]
  have hs16 : 0 < 1 / 16 - s ^ 2 := by linarith [mul_lt_mul'' hs2 hs2 (by linarith) (by linarith)]
  refine ⟨h18, h11, hC1, hC2, hs16, ?_, ?_⟩
  · linarith [mul_le_mul_of_nonneg_left hBOE (by linarith : (0:ℝ) ≤ l),
      mul_nonneg hC1.le (by linarith : (0:ℝ) ≤ 1 - x - 2 * u - r),
      mul_nonneg (by linarith : (0:ℝ) ≤ (1 - u - (f - g)) * (1 - r) - s - u * t + l * (1 - u))
        (by linarith : (0:ℝ) ≤ y - 2 * v)]
  · linarith [mul_lt_mul'' (by linarith : 2 * u < 1 / 2)
      (by linarith : 1 + v + l < 1 + 1 / 4 + 1 / 3) (by linarith) (by linarith)]

/-- (15)–(17) in plain form. -/
theorem Data.mixed {l : ℝ} (H : Data s a b c d e f g h t r x y) (hl1 : 1 / 4 < l)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) :
    311 / 256 - 11 * v / 4 - 11 / (100 * v) <
        (1 - u - (f - g)) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
          l * (1 - v) - (1 + l) * t ∧
      0 < 311 / 256 - 11 * v / 4 - 11 / (100 * v) := by
  obtain ⟨⟨hbu, hgu, hev, hhv, hα, hfβ⟩, ⟨hta, hαt, hβ, hrβ⟩, ⟨hX, hY⟩, ⟨hyt, hxb, hye⟩, hBOE,
    -, -, ⟨hu4, hv4, ht2⟩, ⟨hsu, hsv, hv750⟩⟩ := H.bounds hu hv
  have hs1 := H.hs1
  have hs2 := H.hs2
  have hah := H.hah
  have hgf := H.hgf
  have hL0 : 0 < h - a := by linarith
  have hu0 : 0 < u := by linarith
  have hv0 : 0 < v := by linarith
  -- `L > 4s`
  have hL4 : 4 * s < h - a := by linarith [mul_lt_mul_of_pos_right hu4 hL0]
  have m1 : (1 - u - (f - g)) * (1 - 3 * v) - v + 2 * u * v + l * (s + (h - a)) <
      (1 - u - (f - g)) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
        l * (1 - v) - (1 + l) * t := by
    linarith [mul_lt_mul_of_pos_left hαt (by linarith : (0:ℝ) < 1 + l)]
  have m2 : (s + (h - a)) / 4 ≤ l * (s + (h - a)) :=
    by linarith [mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ s + (h - a))]
  have m3 : 0 ≤ (1 / 4 - u) * (1 - 5 * v + (h - a)) :=
    mul_nonneg (by linarith) (by linarith)
  -- `E₀(1/4, v) = 3/4 - 11v/4 + 17s/4 - M > 311/256 - 11v/4 - 11/(100v)`
  have hM : f - g < 11 / (100 * v) := by
    rw [lt_div_iff₀ (by positivity)]; linarith
  have m4 : 311 / 256 - 11 * v / 4 - 11 / (100 * v) <
      3 / 4 - 11 * v / 4 + 17 * s / 4 - (f - g) := by linarith
  have hQ : 0 < 311 / 256 - 11 * v / 4 - 11 / (100 * v) := by
    have hq : 0 < 311 * v / 256 - 11 * v ^ 2 / 4 - 11 / 100 := by
      nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ v - 7 / 50) (by linarith : (0:ℝ) ≤ 1 / 4 - v)]
    have : (311 / 256 - 11 * v / 4 - 11 / (100 * v)) * v =
        311 * v / 256 - 11 * v ^ 2 / 4 - 11 / 100 := by
      field_simp
    by_contra hcon
    push Not at hcon
    linarith [mul_nonpos_of_nonpos_of_nonneg hcon hv0.le]
  refine ⟨?_, hQ⟩
  linarith

/-- Theorem 1 in plain form: the eleven bounds force `t = r = 0`. -/
theorem Data.rigid {l : ℝ} (H : Data s a b c d e f g h t r x y) (hl1 : 1 / 4 < l)
    (hl2 : l < 1 / 3) (hsc : ScalarIneq s l) : t = 0 ∧ r = 0 := by
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  obtain ⟨u, hu⟩ : ∃ u, u * (h - a) = s := ⟨s / (h - a), div_mul_cancel₀ _ hL0.ne'⟩
  obtain ⟨v, hv⟩ : ∃ v, v * (f - g) = s := ⟨s / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  obtain ⟨-, -, -, -, -, -, -, ⟨hu4, hv4, -⟩, ⟨hsu, hsv, -⟩⟩ := H.bounds hu hv
  obtain ⟨-, -, -, -, -, h13, hKB⟩ := H.combined hl1 hl2 hu hv
  obtain ⟨hmix, hQ⟩ := H.mixed hl1 hu hv
  have hs1 := H.hs1
  have ht0 := H.ht0
  have hr0 := H.hr0
  have hscal := hsc u v (h - a) (f - g) (by linarith) (by linarith) (by linarith) hu hv
  have hT : 0 < (1 - u - (f - g)) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
      l * (1 - v) - (1 + l) * t := by linarith
  have e1 := mul_nonneg ht0 (by linarith : (0:ℝ) ≤ 1 - s - 2 * u * (1 + v + l))
  have e2 := mul_nonneg hr0 hT.le
  have e3 : 0 ≤ v * r ^ 2 := mul_nonneg (by linarith) (sq_nonneg r)
  have ht : t = 0 := eq_zero_of_mul_nonpos ht0 (by linarith : 0 < 1 - s - 2 * u * (1 + v + l))
    (by linarith)
  exact ⟨ht, eq_zero_of_mul_nonpos hr0 hT (by linarith)⟩

end Plain

/-! ### The claims of the manuscript -/

/-- **Claim** (`SHARP_BD_MOVING:claim-bounds`). If all eleven doubled areas are at least
`s = 2A₀`, then with `u = s/(h-a)`, `v = s/(f-g)`, `α = 1-v-s/u`, `β = 1-u-s/v`:
(2) `b, g ≥ u`, `e, h ≤ 1-v`, `a ≤ α`, `1-f ≤ β`; (3) `a > t`, `α - t > s`, `β > s`, `r ≤ β`;
(4) `X = 1-x ≥ 2u + r`, `Y = y ≥ 2v`; `y > t`, `x > b`, `e > y`;
(5) `(1-v-t)X + (1-u)Y ≤ (1-v)(1-u) - s`; (6) `s ≤ g₀ + 2ut - r(1-v-t)`;
(7) `t ≤ α(1-u) - s`; (8) `u, v < 1/4`, `t < 1/2`; (9) `u, v > s`, `v > 7/50`.
`docs/proof/nine/SHARP_BD_MOVING.md`, lines 48-122.
Uses: SHARP_BC_MOVING:eq17 -/
theorem claim_bounds {a b c d e f g h t r x y : ℝ} (hyp : BDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (bdMovingConfig a b c d e f g h t r x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let α := sharpAlpha s u v
    let β := sharpBeta s u v
    (u ≤ b ∧ u ≤ g ∧ e ≤ 1 - v ∧ h ≤ 1 - v ∧ a ≤ α ∧ 1 - f ≤ β) ∧
      (t < a ∧ s < α - t ∧ s < β ∧ r ≤ β) ∧
      (2 * u + r ≤ 1 - x ∧ 2 * v ≤ y) ∧ (t < y ∧ b < x ∧ y < e) ∧
      ((1 - v - t) * (1 - x) + (1 - u) * y ≤ (1 - v) * (1 - u) - s) ∧
      s ≤ sharpG u v + 2 * u * t - r * (1 - v - t) ∧
      t ≤ α * (1 - u) - s ∧
      (u < 1 / 4 ∧ v < 1 / 4 ∧ t < 1 / 2) ∧
      (s < u ∧ s < v ∧ 7 / 50 < v) := by
  intro s u v α β
  have H := Data.of_hs hyp hs
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  have hu : u * (h - a) = s := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = s := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by linarith [H.hs1]) hL0
  have hv0 : 0 < v := div_pos (by linarith [H.hs1]) hM0
  have hα : α = 1 - v - (h - a) := sharpAlpha_of_mul hu0.ne' hu v
  have hβ : β = 1 - u - (f - g) := sharpBeta_of_mul hv0.ne' hv u
  rw [hα, hβ]
  unfold sharpG
  exact H.bounds hu hv

/-- **Claim** (`SHARP_BD_MOVING:claim-combined`). Under the assumption of `claim_bounds`:
(10) `(s+ut)(1-y) ≤ (α-t)(x-u-s)` (the ABC/GCO elimination of `SHARP_BC_MOVING` §3);
(11) `(s-vr)x ≤ β{(1-r)(1-v-y)-s}` (the DHO/DEF elimination of `SHARP_CD_MOVING` §3);
the coefficients `C₁ = α-t-s+vr+λ(1-v-t)` and `C₂ = β(1-r)-s-ut+λ(1-u)` satisfy `C₁ > 0` and
(12) `C₂ > 1/16 - s² > 0`; (13) `H₀ + λ(g₀ - s) ≥ tK_B + rT_v + vr² - (1+λ)tr`;
(14) `K_B > 59/600`. `docs/proof/nine/SHARP_BD_MOVING.md`, lines 124-179.
Uses: SHARP_BC_MOVING:eq18, SHARP_CD_MOVING:claim-eliminations -/
theorem claim_combined {a b c d e f g h t r x y : ℝ} (hyp : BDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (bdMovingConfig a b c d e f g h t r x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let α := sharpAlpha s u v
    let β := sharpBeta s u v
    (s + u * t) * (1 - y) ≤ (α - t) * (x - u - s) ∧
      (s - v * r) * x ≤ β * ((1 - r) * (1 - v - y) - s) ∧
      0 < α - t - s + v * r + sharpLambda * (1 - v - t) ∧
      1 / 16 - s ^ 2 < β * (1 - r) - s - u * t + sharpLambda * (1 - u) ∧
      0 < 1 / 16 - s ^ 2 ∧
      t * bdKB u v + r * bdTv u v + v * r ^ 2 - (1 + sharpLambda) * t * r ≤
        sharpH s u v + sharpLambda * (sharpG u v - s) ∧
      59 / 600 < bdKB u v := by
  intro s u v α β
  have H := Data.of_hs hyp hs
  obtain ⟨-, -, hl1, hl2⟩ := sharp_bounds
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  have hu : u * (h - a) = s := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = s := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by linarith [H.hs1]) hL0
  have hv0 : 0 < v := div_pos (by linarith [H.hs1]) hM0
  have hα : α = 1 - v - (h - a) := sharpAlpha_of_mul hu0.ne' hu v
  have hβ : β = 1 - u - (f - g) := sharpBeta_of_mul hv0.ne' hv u
  have hα' : sharpAlpha sharpS u v = 1 - v - (h - a) := sharpAlpha_of_mul hu0.ne' hu v
  have hβ' : sharpBeta sharpS u v = 1 - u - (f - g) := sharpBeta_of_mul hv0.ne' hv u
  rw [hα, hβ]
  unfold bdKB bdTv sharpH sharpG
  rw [hα', hβ']
  exact H.combined hl1 (by linarith) hu hv

/-- **Claim** (`SHARP_BD_MOVING:claim-mixed-loss`). Under the assumption of `claim_bounds`,
`T_v - (1+λ)t > 311/256 - 11v/4 - 11/(100v) > 0` (via (15) `T_v - (1+λ)t > T_v - (1+λ)(α-s)`,
the lower bound `E₀(u,v)` (16), and the concave quadratic `Q(v)` with `Q(7/50), Q(1/4) > 0`
(17)). `docs/proof/nine/SHARP_BD_MOVING.md`, lines 181-221. -/
theorem claim_mixed_loss {a b c d e f g h t r x y : ℝ}
    (hyp : BDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (bdMovingConfig a b c d e f g h t r x y) i) :
    let u := sharpS / (h - a)
    let v := sharpS / (f - g)
    311 / 256 - 11 * v / 4 - 11 / (100 * v) < bdTv u v - (1 + sharpLambda) * t ∧
      0 < 311 / 256 - 11 * v / 4 - 11 / (100 * v) := by
  intro u v
  have H := Data.of_hs hyp hs
  obtain ⟨-, -, hl1, -⟩ := sharp_bounds
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  have hu : u * (h - a) = sharpS := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = sharpS := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by linarith [H.hs1]) hL0
  have hv0 : 0 < v := div_pos (by linarith [H.hs1]) hM0
  unfold bdTv
  rw [sharpAlpha_of_mul hu0.ne' hu v, sharpBeta_of_mul hv0.ne' hv u]
  exact H.mixed hl1 hu hv

/-- **Theorem 1** (`SHARP_BD_MOVING:Theorem1`). Under (1) and positivity of the eleven oriented
doubled areas, the minimum of the eleven ordinary triangle areas is at most `A₀`. If all eleven
are at least `A₀`, then `t = r = 0` and the configuration is exactly the equality configuration
of `HAND_PROOF.md` (the closed height conditions in (1) are included).
`docs/proof/nine/SHARP_BD_MOVING.md`, lines 12-46, 223-235.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_BC_MOVING:eq17,
SHARP_BC_MOVING:eq18, SHARP_CD_MOVING:claim-eliminations, SHARP_BD_MOVING:claim-bounds,
SHARP_BD_MOVING:claim-combined, SHARP_BD_MOVING:claim-mixed-loss, HAND_PROOF:Theorem1 -/
theorem theorem1 {a b c d e f g h t r x y : ℝ} (hyp : BDMovingHyp a b c d e f g h t r x y)
    (hch : InChamber (bdMovingConfig a b c d e f g h t r x y)) :
    (∃ i, chamberArea (bdMovingConfig a b c d e f g h t r x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (bdMovingConfig a b c d e f g h t r x y) i) →
        t = 0 ∧ r = 0 ∧ bdMovingConfig a b c d e f g h t r x y = optimalConfiguration) := by
  have hord := hyp.1
  have hO := hyp.2.2.2.2.2
  have key := moving_wrapper (Z := t = 0 ∧ r = 0) hord hO hch fun hs => by
    obtain ⟨-, -, hl1, hl2⟩ := sharp_bounds
    obtain ⟨ht, hr⟩ := (Data.of_hs hyp hs).rigid hl1 (by linarith) scalarIneq_sharp
    subst ht hr
    refine ⟨⟨rfl, rfl⟩, ?_⟩
    simp only [bdMovingConfig, sharpConfig, baseConfig, sub_zero]
  exact ⟨key.1, fun h => ⟨(key.2 h).1.1, (key.2 h).1.2, (key.2 h).2⟩⟩

end Heilbronn.Nine.SharpBDMoving
