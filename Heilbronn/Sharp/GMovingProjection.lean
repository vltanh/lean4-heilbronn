module

public import Heilbronn.Sharp.BCMoving

/-! # The projection-restricted G-moving sharp chamber is strictly suboptimal
(`hand/SHARP_G_MOVING_PROJECTION.md`)

**Role.** Component of the primary seven-boundary route: used by
`SEVEN_BOUNDARY_TOP_CAP_RADIAL` (vertical-reflection row). Not used by the N six-boundary rows.

**Setting.** The cyclic labels of `HAND_PROOF.md` with only `G = (g,1-t)` moved inward:
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), H=(0,h)`, `O=(x,y)` in the square, the
strict side orders (`SharpOrders`), `0 ≤ t < 1`, and the two additional conditions (1) `f ≤ c`,
`e ≤ 1-t`. The chamber is positivity of the eleven oriented doubled areas of the table. The proof
uses the threshold `s = 7/64` (not `2A₀`), with `L = h-a`, `M = f-g`, `u = s/L`, `v = s/M`,
`α = 1-v-s/u`, `β = 1-u-s/v`, `η = 1+uv/s`, `A = α-ηt`, `E = 1-v+βvt/s`, `z = 1-3u`,
`D_c = (1-u)z-2su`, `D_j = (1-u)z-2s(1-2u)`.

**Results.**
* `claim_chamber_formulas`: the eleven oriented doubled areas.
* `theorem1`: under (1) the minimum of the eleven ordinary areas is strictly below `7/128 < A₀`
  (no equality configuration; `DEF` is not used).
* `claim_heights` (2)–(5): the bounds for the interior height.
* `claim_scalars` (6)–(8): `J_t ≥ 0`, `C_t ≥ 0`, `1/8 < u < 15/64`, `v + t < 9/16`.
* `claim_weight` (9)–(11): `D_j > 455/4096`, `0 < μ = D_c/D_j ≤ 8/5` and
  `(C_t + μJ_t) - (C₀ + μJ₀) ≤ -7t/256`.
* `claim_cubic` (12)–(13): `C₀ + μJ₀ = 3(u-1)(64u-19)N(u)/(131072 u D_j)` and `N(u) < 0` on (8).

The proofs go through `Data`, the hypotheses and the eleven bounds as plain real inequalities.
The heights are first proved without denominators (`Data.facts`); (6)–(7) are the
eliminations of `y` between (3) and (5), resp. (3) and (4), after the relaxation `x ≤ 1-2u`
(`gJ_poly_nonneg`, `gC_poly_nonneg`); the bound `h > 4s` is `four_s_lt`.

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "all eleven doubled areas are at least `s = 7/64`" (which implies the chamber).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SharpGMovingProjection

open Heilbronn.SharpBCMoving

/-- The G-moving configuration: `G = (g,1-t)`, the other points as in `HAND_PROOF.md`, in the
order `A, B, C, D, E, F, G, H, O`. -/
def gMovingConfig (a b c d e f g h t x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, 0) (c, 0) (1, d) (1, e) (f, 1) (g, 1 - t) (0, h) (x, y)

/-- The hypotheses of Theorem 1 other than the chamber: the strict side orders, `0 ≤ t < 1`,
(1) `f ≤ c`, `e ≤ 1-t`, and `O ∈ [0,1]²`. -/
def GMovingHyp (a b c d e f g h t x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ t ∧ t < 1 ∧ f ≤ c ∧ e ≤ 1 - t ∧
    ((x, y) : Point) ∈ unitSquare

/-- The threshold `s = 7/64` of the proof. -/
def sG : ℝ := 7 / 64

/-- `D_c = (1-u)z - 2su`, `z = 1-3u`. -/
def gDc (u : ℝ) : ℝ := (1 - u) * (1 - 3 * u) - 2 * sG * u

/-- `D_j = (1-u)z - 2s(1-2u)`, `z = 1-3u`. -/
def gDj (u : ℝ) : ℝ := (1 - u) * (1 - 3 * u) - 2 * sG * (1 - 2 * u)

/-- `J_t = vD_j - s(2u+s) + 2sut` (6). -/
def gJ (u v t : ℝ) : ℝ := v * gDj u - sG * (2 * u + sG) + 2 * sG * u * t

/-- `C_t = A(1-u){(1-t)z-s} + s(1-v)z + βvtz - s² - s(1-u) + s(1-u)t` (7), with
`A = α - ηt`, `α = 1-v-s/u`, `β = 1-u-s/v`, `η = 1+uv/s`, `z = 1-3u`. -/
def gC (u v t : ℝ) : ℝ :=
  let z := 1 - 3 * u
  let A := sharpAlpha sG u v - (1 + u * v / sG) * t
  A * (1 - u) * ((1 - t) * z - sG) + sG * (1 - v) * z + sharpBeta sG u v * v * t * z -
    sG ^ 2 - sG * (1 - u) + sG * (1 - u) * t

/-- `N(u) = 6144u³ - 8864u² + 2349u - 175` (12). -/
def gN (u : ℝ) : ℝ := 6144 * u ^ 3 - 8864 * u ^ 2 + 2349 * u - 175

/-- **Claim** (`SHARP_G_MOVING_PROJECTION:claim-chamber-formulas`). The eleven oriented doubled
areas: `ABH = b(h-a)`, `ABC = a(c-b)`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)`, `GHF = (f-g)(1-h)-ft`,
`GEF = (f-g)(1-e)+(1-f)t`, `ADO = y-a-(d-a)x`, `DHO = h-y-(h-d)x`, `BOE = e(x-b)-(1-b)y`,
`GCO = (1-t)(x-c)+(c-g)y`, `OCF = c-x+(f-c)y`. `hand/SHARP_G_MOVING_PROJECTION.md`, lines 18-33. -/
theorem claim_chamber_formulas (a b c d e f g h t x y : ℝ) :
    chamberSarea (gMovingConfig a b c d e f g h t x y) =
      ![b * (h - a), a * (c - b), g * (h - a), (1 - f) * (e - d), (f - g) * (1 - h) - f * t,
        (f - g) * (1 - e) + (1 - f) * t, y - a - (d - a) * x, h - y - (h - d) * x,
        e * (x - b) - (1 - b) * y, (1 - t) * (x - c) + (c - g) * y, c - x + (f - c) * y]  := by
  funext i
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, gMovingConfig, sharpConfig, sarea,
      Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val] <;> ring

/-! ### The plain-real form -/

/-- The hypotheses and the eleven bounds "doubled area `≥ 7/64`", as plain real inequalities. -/
structure Data (a b c d e f g h t x y : ℝ) : Prop where
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
  ht1 : t < 1
  hfc : f ≤ c
  het : e ≤ 1 - t
  hx0 : 0 ≤ x
  hx1 : x ≤ 1
  hy0 : 0 ≤ y
  hy1 : y ≤ 1
  h0 : 7 / 64 ≤ b * (h - a)
  h1 : 7 / 64 ≤ a * (c - b)
  h2 : 7 / 64 ≤ g * (h - a)
  h3 : 7 / 64 ≤ (1 - f) * (e - d)
  h4 : 7 / 64 ≤ (f - g) * (1 - h) - f * t
  h5 : 7 / 64 ≤ (f - g) * (1 - e) + (1 - f) * t
  h6 : 7 / 64 ≤ y - a - (d - a) * x
  h7 : 7 / 64 ≤ h - y - (h - d) * x
  h8 : 7 / 64 ≤ e * (x - b) - (1 - b) * y
  h9 : 7 / 64 ≤ (1 - t) * (x - c) + (c - g) * y
  h10 : 7 / 64 ≤ c - x + (f - c) * y

theorem Data.of_hs {a b c d e f g h t x y : ℝ} (hyp : GMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sG ≤ chamberSarea (gMovingConfig a b c d e f g h t x y) i) :
    Data a b c d e f g h t x y := by
  obtain ⟨⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩, ht0, ht1, hfc, het, hx0,
    hx1, hy0, hy1⟩ := hyp
  rw [claim_chamber_formulas] at hs
  simp only [sG] at hs
  exact ⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, ht0, ht1, hfc, het, hx0, hx1,
    hy0, hy1, by simpa using hs 0, by simpa using hs 1, by simpa using hs 2,
    by simpa using hs 3, by simpa using hs 4, by simpa using hs 5, by simpa using hs 6,
    by simpa using hs 7, by simpa using hs 8, by simpa using hs 9, by simpa using hs 10⟩

section Plain

variable {a b c d e f g h t x y u v α β : ℝ}

/-- The heights (2)–(5) without denominators, with `α = 1-v-L`, `β = 1-u-M`, `uL = vM = 7/64`,
`A = α - (1+uv/s)t`, `E = 1-v+βvt/s`. -/
theorem Data.facts (H : Data a b c d e f g h t x y) (hu : u * (h - a) = 7 / 64)
    (hv : v * (f - g) = 7 / 64) (hα : α = 1 - v - (h - a)) (hβ : β = 1 - u - (f - g)) :
    (u ≤ b ∧ u ≤ g ∧ u + (f - g) ≤ f ∧ 0 < β) ∧
      (f * t ≤ (1 - v - h) * (f - g) ∧ e ≤ 1 - v + β * v * t / (7 / 64)) ∧
      (a ≤ α - (1 + u * v / (7 / 64)) * t ∧ 7 / 64 ≤ a * (c - b) ∧ c - b < 1 - u ∧
        0 < c - b) ∧
      (x ≤ 1 - 2 * u ∧ b < x ∧ y < e ∧ y < 1 - t) ∧
      y * (1 - u) ≤ (1 - v + β * v * t / (7 / 64)) * (x - u) - 7 / 64 ∧
      7 / 64 * (1 - t - y) ≤ (α - (1 + u * v / (7 / 64)) * t) * ((1 - t) * (x - u) - 7 / 64) ∧
      7 / 64 * (1 - t - y) ≤ v * ((1 - t) * (x - u) - 7 / 64) ∧
      (0 < u ∧ 0 < v ∧ u < 1 / 3) := by
  subst hα hβ
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, ht0, ht1, hfc, het, hx0, hx1,
    hy0, hy1, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩ := H
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < f - g := by linarith
  have hu0 : 0 < u := pos_of_mul_eq hL0 (by norm_num) hu
  have hv0 : 0 < v := pos_of_mul_eq hM0 (by norm_num) hv
  have hbu : u ≤ b := anchor_le hL0 h0 hu
  have hgu : u ≤ g := anchor_le hL0 h2 hu
  have hft : f * t ≤ (1 - v - h) * (f - g) := by linarith
  -- `e ≤ E`
  have hE : e ≤ 1 - v + (1 - u - (f - g)) * v * t / (7 / 64) := by
    have key : (1 - v + (1 - u - (f - g)) * v * t / (7 / 64) - e) * (f - g) =
        (1 - e - v) * (f - g) + (1 - u - (f - g)) * t := by
      linear_combination (64 / 7 * (1 - u - (f - g)) * t) * hv
    have h' : 0 ≤ (1 - e - v) * (f - g) + (1 - u - (f - g)) * t := by
      linarith [mul_le_mul_of_nonneg_right (by linarith : 1 - f ≤ 1 - u - (f - g)) ht0]
    by_contra hcon
    push Not at hcon
    linarith [mul_neg_of_neg_of_pos (by linarith :
      1 - v + (1 - u - (f - g)) * v * t / (7 / 64) - e < 0) hM0]
  -- `a ≤ A`
  have haA : a ≤ 1 - v - (h - a) - (1 + u * v / (7 / 64)) * t := by
    have key : (1 - v - (h - a) - (1 + u * v / (7 / 64)) * t - a) * (f - g) =
        (1 - h) * (f - g) - 7 / 64 - t * (f - g) - u * t := by
      linear_combination (-(1 + 64 / 7 * u * t)) * hv
    have h' : 0 ≤ (1 - h) * (f - g) - 7 / 64 - t * (f - g) - u * t := by
      linarith [mul_nonneg ht0 (sub_nonneg.2 hgu)]
    by_contra hcon
    push Not at hcon
    linarith [mul_neg_of_neg_of_pos (by linarith :
      1 - v - (h - a) - (1 + u * v / (7 / 64)) * t - a < 0) hM0]
  have hX : 2 * u ≤ 1 - x :=
    anchor_le hL0 (by linarith) (by linarith : 2 * u * (h - a) = 2 * (7 / 64))
  have hxb : b < x := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ e) (sub_nonneg.2 hcon),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - b) hy0]
  have hye : y < e := by
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_right hcon (by linarith : (0:ℝ) ≤ x - b),
      mul_le_mul_of_nonneg_left (by linarith : x - b ≤ 1 - b) hy0]
  -- (3)
  have k3 : y * (1 - u) ≤ (1 - v + (1 - u - (f - g)) * v * t / (7 / 64)) * (x - u) - 7 / 64 := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ e - y),
      mul_le_mul_of_nonneg_right hE (by linarith : (0:ℝ) ≤ x - u)]
  -- (4)
  have hW : (c - b) * (1 - t - y) ≤ (1 - t) * (x - u) - 7 / 64 := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ 1 - t - y),
      mul_nonneg (sub_nonneg.2 hgu) hy0]
  have hW0 : 0 ≤ (1 - t) * (x - u) - 7 / 64 :=
    le_trans (mul_nonneg (by linarith) (by linarith)) hW
  have k4 : 7 / 64 * (1 - t - y) ≤
      (1 - v - (h - a) - (1 + u * v / (7 / 64)) * t) * ((1 - t) * (x - u) - 7 / 64) := by
    linarith [mul_le_mul_of_nonneg_left hW ha.le,
      mul_le_mul_of_nonneg_right h1 (by linarith : (0:ℝ) ≤ 1 - t - y),
      mul_le_mul_of_nonneg_right haA hW0]
  -- (5)
  have k5' : (f - g) * (1 - t - y) ≤ (1 - t) * (x - u) - 7 / 64 := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ c - f) (by linarith : (0:ℝ) ≤ 1 - t - y),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - t) (sub_nonneg.2 hgu)]
  have hvy : v * (f - g) * (1 - t - y) = 7 / 64 * (1 - t - y) := by rw [hv]
  have k5 : 7 / 64 * (1 - t - y) ≤ v * ((1 - t) * (x - u) - 7 / 64) := by
    linarith [mul_le_mul_of_nonneg_left k5' hv0.le]
  exact ⟨⟨hbu, hgu, by linarith, by linarith⟩, ⟨hft, hE⟩,
    ⟨haA, h1, by linarith, by linarith⟩, ⟨by linarith, hxb, hye, by linarith⟩, k3, k4, k5,
    ⟨hu0, hv0, by linarith⟩⟩

/-- (2)–(5) in the form of `claim_heights`, for a general name `s` of `7/64`. -/
theorem Data.heights {s : ℝ} (H : Data a b c d e f g h t x y) (hs : s = 7 / 64)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) (hα : α = 1 - v - (h - a))
    (hβ : β = 1 - u - (f - g)) :
    (u ≤ b ∧ u ≤ g ∧ u + (f - g) ≤ f ∧ 0 < β) ∧
      (h ≤ 1 - v - f * t / (f - g) ∧ e ≤ 1 - v + β * v * t / s) ∧
      (a ≤ α - (1 + u * v / s) * t ∧ s / (c - b) ≤ a ∧ s / (1 - u) < s / (c - b) ∧
        0 < s / (1 - u)) ∧
      (x ≤ 1 - 2 * u ∧ b < x ∧ y < e ∧ y < 1 - t) ∧
      y ≤ ((1 - v + β * v * t / s) * (x - u) - s) / (1 - u) ∧
      (1 - t) + (α - (1 + u * v / s) * t) - (α - (1 + u * v / s) * t) * (1 - t) * (x - u) / s ≤
        y ∧
      (1 - t) + v - v * (1 - t) * (x - u) / s ≤ y := by
  subst hs
  obtain ⟨h1, ⟨hft, hE⟩, ⟨haA, hac, hcb, hcb0⟩, h4, k3, k4, k5, ⟨hu0, hv0, hu3⟩⟩ :=
    H.facts hu hv hα hβ
  have hM0 : 0 < f - g := by linarith [H.hgf]
  refine ⟨h1, ⟨?_, hE⟩, ⟨haA, ?_, div_lt_div_of_pos_left (by norm_num) hcb0 hcb,
    div_pos (by norm_num) (by linarith)⟩, h4, ?_, by linarith, by linarith⟩
  · have : f * t / (f - g) ≤ 1 - v - h := by rw [div_le_iff₀ hM0]; linarith
    linarith
  · rw [div_le_iff₀ hcb0]; linarith
  · rw [le_div_iff₀ (by linarith)]; exact k3

/-- (6) from the heights (3) and (5) and the relaxation `x ≤ 1-2u`. -/
theorem gJ_poly_nonneg {u v t x y M : ℝ} (hv : v * M = 7 / 64)
    (k3 : y * (1 - u) ≤ (1 - v + (1 - u - M) * v * t / (7 / 64)) * (x - u) - 7 / 64)
    (k5 : 7 / 64 * (1 - t - y) ≤ v * ((1 - t) * (x - u) - 7 / 64)) (hu1 : u < 1) (ht1 : t < 1)
    (hv0 : 0 ≤ v) (hE0 : 0 < 1 - v + (1 - u - M) * v * t / (7 / 64)) (hx' : 0 ≤ 1 - 2 * u - x) :
    0 ≤ v * ((1 - u) * (1 - 3 * u) - 2 * (7 / 64) * (1 - 2 * u)) - 7 / 64 * (2 * u + 7 / 64) +
      2 * (7 / 64) * u * t := by
  have hrel : v * M * (t * (1 - 3 * u)) = 7 / 64 * (t * (1 - 3 * u)) := by rw [hv]
  linarith [mul_le_mul_of_nonneg_left k5 (by linarith : (0:ℝ) ≤ 1 - u),
    mul_le_mul_of_nonneg_left k3 (by norm_num : (0:ℝ) ≤ 7 / 64),
    mul_nonneg (add_nonneg (mul_nonneg (by norm_num : (0:ℝ) ≤ 7 / 64) hE0.le)
      (mul_nonneg (mul_nonneg hv0 (by linarith : (0:ℝ) ≤ 1 - t))
        (by linarith : (0:ℝ) ≤ 1 - u))) hx']

/-- (7) from the heights (3) and (4) and the relaxation `x ≤ 1-2u`. -/
theorem gC_poly_nonneg {u v t x y M L : ℝ} (hv : v * M = 7 / 64)
    (k3 : y * (1 - u) ≤ (1 - v + (1 - u - M) * v * t / (7 / 64)) * (x - u) - 7 / 64)
    (k4 : 7 / 64 * (1 - t - y) ≤
      (1 - v - L - (1 + u * v / (7 / 64)) * t) * ((1 - t) * (x - u) - 7 / 64))
    (hu1 : u < 1) (ht1 : t < 1) (hA0 : 0 < 1 - v - L - (1 + u * v / (7 / 64)) * t)
    (hE0 : 0 < 1 - v + (1 - u - M) * v * t / (7 / 64)) (hx' : 0 ≤ 1 - 2 * u - x) :
    0 ≤ (1 - v - L - (1 + u * v / (7 / 64)) * t) * (1 - u) * ((1 - t) * (1 - 3 * u) - 7 / 64) +
      7 / 64 * (1 - v) * (1 - 3 * u) + (1 - u - M) * v * t * (1 - 3 * u) - (7 / 64) ^ 2 -
      7 / 64 * (1 - u) + 7 / 64 * (1 - u) * t := by
  have hrel : v * M * (t * (1 - 3 * u)) = 7 / 64 * (t * (1 - 3 * u)) := by rw [hv]
  linarith [mul_le_mul_of_nonneg_left k4 (by linarith : (0:ℝ) ≤ 1 - u),
    mul_le_mul_of_nonneg_left k3 (by norm_num : (0:ℝ) ≤ 7 / 64),
    mul_nonneg (add_nonneg (mul_nonneg (mul_nonneg hA0.le (by linarith : (0:ℝ) ≤ 1 - u))
      (by linarith : (0:ℝ) ≤ 1 - t)) (mul_nonneg (by norm_num : (0:ℝ) ≤ 7 / 64) hE0.le)) hx']

/-- `h = a + L > 4s` from `a(c-b) ≥ s`, `Lb ≥ s` and `c < 1` (`1/(c-b) + 1/b ≥ 4/c`). -/
theorem four_s_lt {a b c h s : ℝ} (ha : 0 < a) (hb : 0 < b) (hcb : 0 < c - b) (hc1 : c < 1)
    (hL : 0 < h - a) (hs : 0 < s) (hac : s ≤ a * (c - b)) (hLb : s ≤ (h - a) * b) :
    4 * s < h := by
  have hprod : s * s ≤ (a * (c - b)) * ((h - a) * b) := mul_le_mul hac hLb hs.le (by linarith)
  have hX0 : 0 ≤ a * b + (h - a) * (c - b) :=
    add_nonneg (mul_nonneg ha.le hb.le) (mul_nonneg hL.le hcb.le)
  have E1 : (a * b + (h - a) * (c - b)) * (a * b + (h - a) * (c - b)) =
      (a * b - (h - a) * (c - b)) ^ 2 + 4 * ((a * (c - b)) * ((h - a) * b)) := by ring
  have hsq : 2 * s ≤ a * b + (h - a) * (c - b) := by
    by_contra hcon
    push Not at hcon
    linarith [sq_nonneg (a * b - (h - a) * (c - b)), mul_self_lt_mul_self hX0 hcon]
  linarith [mul_lt_mul_of_pos_left hc1 (by linarith : (0:ℝ) < h)]

/-- The interval (8) for `u` from (6), `1/8 < u < 1/3` and `v + t < 9/16`. -/
theorem u_lt_of_gJ {u v t : ℝ}
    (hJ : 0 ≤ v * ((1 - u) * (1 - 3 * u) - 2 * (7 / 64) * (1 - 2 * u)) -
      7 / 64 * (2 * u + 7 / 64) + 2 * (7 / 64) * u * t)
    (hu3 : u < 1 / 3) (hv0 : 0 < v) (ht0 : 0 ≤ t) (hvt : v + t < 9 / 16) : u < 15 / 64 := by
  have hu4 : u < 1 / 4 := by
    by_contra hcon
    push Not at hcon
    have hDj : (1 - u) * (1 - 3 * u) - 2 * (7 / 64) * (1 - 2 * u) ≤ 5 / 64 := by
      linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 4 * u - 1) (by linarith : (0:ℝ) ≤ 15 - 16 * u)]
    linarith [mul_le_mul_of_nonneg_left hDj hv0.le, mul_le_mul_of_nonneg_right
      (by linarith : 2 * (7 / 64) * u ≤ 5 / 64) ht0]
  by_contra hcon
  push Not at hcon
  have hDj : 2 * (7 / 64) * u < (1 - u) * (1 - 3 * u) - 2 * (7 / 64) * (1 - 2 * u) := by
    linarith [mul_pos (by linarith : (0:ℝ) < 1 - u)
      (by linarith : (0:ℝ) < 1 - 3 * u - 2 * (7 / 64))]
  have hf : 9 / 16 * ((1 - u) * (1 - 3 * u) - 2 * (7 / 64) * (1 - 2 * u)) -
      7 / 64 * (2 * u + 7 / 64) ≤ -49 / 65536 := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 64 * u - 15)
      (by linarith : (0:ℝ) ≤ 1871 - 1728 * u)]
  linarith [mul_le_mul_of_nonneg_right hDj.le ht0,
    mul_lt_mul_of_pos_right hvt (by linarith : (0:ℝ) <
      (1 - u) * (1 - 3 * u) - 2 * (7 / 64) * (1 - 2 * u))]

/-- The scalar consequences (6)–(8) in plain form. -/
theorem Data.scalars (H : Data a b c d e f g h t x y) (hu : u * (h - a) = 7 / 64)
    (hv : v * (f - g) = 7 / 64) (hα : sharpAlpha sG u v = 1 - v - (h - a))
    (hβ : sharpBeta sG u v = 1 - u - (f - g)) :
    0 ≤ gJ u v t ∧ 0 ≤ gC u v t ∧ (1 / 8 < u ∧ u < 15 / 64) ∧ v + t < 9 / 16 := by
  obtain ⟨⟨hbu, hgu, hfu, hβ0⟩, ⟨hft, hE⟩, ⟨haA, hac, hcb, hcb0⟩, ⟨hX, hxb, hye, hyt⟩, k3,
    k4, k5, ⟨hu0, hv0, hu3⟩⟩ := H.facts (α := 1 - v - (h - a)) (β := 1 - u - (f - g)) hu hv
      rfl rfl
  have ht0 := H.ht0
  have ht1 := H.ht1
  have ha := H.ha
  have hah := H.hah
  have hh1 := H.hh1
  have hgf := H.hgf
  have he0 : 0 < e := by linarith [H.hd, H.hde]
  have hE0 : 0 < 1 - v + (1 - u - (f - g)) * v * t / (7 / 64) := by linarith
  have hA0 : 0 < 1 - v - (h - a) - (1 + u * v / (7 / 64)) * t := by linarith
  have hx' : 0 ≤ 1 - 2 * u - x := by linarith
  -- (6), (7)
  have hJp := gJ_poly_nonneg hv k3 k5 (by linarith) ht1 hv0.le hE0 hx'
  have hJ : 0 ≤ gJ u v t := by simp only [gJ, gDj, sG]; exact hJp
  have hC : 0 ≤ gC u v t := by
    simp only [gC]
    rw [hα, hβ]
    simp only [sG]
    linarith [gC_poly_nonneg hv k3 k4 (by linarith) ht1 hA0 hE0 hx']
  -- (8): `1/8 < u`
  have hu8 : 1 / 8 < u := by
    have ha1 : 7 / 64 < a * (1 - u) := by linarith [mul_lt_mul_of_pos_left hcb ha]
    have hu1 : 0 < u * (1 - u) := mul_pos hu0 (by linarith)
    have hLu : u * (h - a) * (1 - u) = 7 / 64 * (1 - u) := by rw [hu]
    have : 7 / 64 < u * (1 - u) := by
      linarith [mul_lt_mul_of_pos_left ha1 hu0,
        mul_lt_mul_of_pos_left (by linarith : a + (h - a) < 1) hu1]
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 / 8 - u) (by linarith : (0:ℝ) ≤ 7 / 8 - u)]
  -- `v + t < 9/16`, through `h > 4s`
  have h4s := four_s_lt (h := h) ha H.hb hcb0 H.hc1 (by linarith) (by norm_num) hac
    (by linarith [mul_le_mul_of_nonneg_left hbu (by linarith : (0:ℝ) ≤ h - a)])
  have hvt : v + t < 9 / 16 := by
    have : (f - g) * (v + t) ≤ (f - g) * (1 - h) := by
      linarith [mul_le_mul_of_nonneg_right (by linarith : f - g ≤ f) ht0]
    have := le_of_mul_le_mul_left this (by linarith)
    linarith
  exact ⟨hJ, hC, ⟨hu8, u_lt_of_gJ hJp hu3 hv0 ht0 hvt⟩, hvt⟩

end Plain

/-- `D_j > 455/4096` on `1/8 < u < 15/64`. -/
theorem gDj_bound {u : ℝ} (hu2 : u < 15 / 64) : 455 / 4096 < gDj u := by
  unfold gDj sG
  nlinarith [mul_pos (by linarith : (0:ℝ) < 61 - 64 * u) (by linarith : (0:ℝ) < 15 - 64 * u)]

/-- The weight bounds and the displacement bound (9)–(11), in terms of `u, v, t` only. -/
theorem weight_core {u v t : ℝ} (hu1 : 1 / 8 < u) (hu2 : u < 15 / 64) (hv0 : 0 < v)
    (ht0 : 0 ≤ t) (hvt : v + t < 9 / 16) (hβv : sharpBeta sG u v * v = v - u * v - sG)
    (hA : sG / (1 - u) < sharpAlpha sG u v - (1 + u * v / sG) * t) :
    455 / 4096 < gDj u ∧ 0 < gDc u / gDj u ∧ gDc u / gDj u ≤ 8 / 5 ∧
      (gC u v t + gDc u / gDj u * gJ u v t) - (gC u v 0 + gDc u / gDj u * gJ u v 0) ≤
        -(7 / 256) * t := by
  have hDj := gDj_bound hu2
  have hDc : gDc u = gDj u + 2 * (7 / 64) * (1 - 3 * u) := by unfold gDc gDj sG; ring
  have hμ0 : 0 < gDc u / gDj u := div_pos (by rw [hDc]; nlinarith) (by linarith)
  have hμ : gDc u / gDj u ≤ 8 / 5 := by
    rw [div_le_iff₀ (by linarith), hDc]
    unfold gDj sG
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 15 - 64 * u)
      (by linarith : (0:ℝ) ≤ 113 - 192 * u)]
  refine ⟨hDj, hμ0, hμ, ?_⟩
  generalize gDc u / gDj u = μ at hμ0 hμ ⊢
  simp only [gC, gJ]
  generalize sharpAlpha sG u v = α at hA ⊢
  generalize sharpBeta sG u v = β at hβv ⊢
  simp only [sG] at hA hβv ⊢
  have h1u : 0 < 1 - u := by linarith
  -- `η t ≤ α - s/(1-u)`, times `t(1-u)z ≥ 0`
  have hz : 0 ≤ t * (1 - u) * (1 - 3 * u) :=
    mul_nonneg (mul_nonneg ht0 h1u.le) (by linarith)
  have e3 := mul_le_mul_of_nonneg_left hA.le hz
  have e4 : t * (1 - u) * (1 - 3 * u) * (7 / 64 / (1 - u)) = t * (1 - 3 * u) * (7 / 64) := by
    field_simp
  have e5 : β * v * (t * (1 - 3 * u)) = (v - u * v - 7 / 64) * (t * (1 - 3 * u)) := by
    rw [hβv]
  -- `B(u) ≤ 1/28`, so `vB(u) ≤ v/28`
  have hB : 1 - 2 * u - u * (1 - 3 * u) / (7 / 64) ≤ 1 / 28 := by
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 8 * u - 1) (by linarith : (0:ℝ) ≤ 15 - 64 * u)]
  have hvB := mul_le_mul_of_nonneg_left hB hv0.le
  have hK : (1 - u) * (v * (1 - 2 * u - u * (1 - 3 * u) / (7 / 64)) - (1 - 3 * u) +
      2 * (7 / 64)) - 2 * (7 / 64) * (1 - 3 * u) + 2 * (7 / 64) * u * μ ≤ -(7 / 256) := by
    have i1 : v * (1 - 2 * u - u * (1 - 3 * u) / (7 / 64)) - (1 - 3 * u) + 2 * (7 / 64) ≤
        -(13 / 224) := by linarith
    nlinarith [mul_le_mul_of_nonneg_left i1 h1u.le,
      mul_le_mul (by linarith : u ≤ 15 / 64) hμ hμ0.le (by norm_num)]
  have hKt := mul_le_mul_of_nonneg_left hK ht0
  nlinarith [hKt, e3, e4, e5]

/-! ### The claims of the manuscript -/

/-- **Claim** (`SHARP_G_MOVING_PROJECTION:claim-heights`). If all eleven doubled areas are at
least `s = 7/64`, then (with the notation of the module docstring): `b, g ≥ u`, `f ≥ u + M`,
`β > 0`, `h ≤ 1-v-ft/M`, `e ≤ E`; (2) `a ≤ A` and `a ≥ s/(c-b) > s/(1-u) > 0`; `x ≤ 1-2u`,
`x > b`, `y < e`, `y < 1-t`; (3) `y ≤ (E(x-u)-s)/(1-u)`;
(4) `y ≥ (1-t) + A - A(1-t)(x-u)/s`; (5) `y ≥ (1-t) + v - v(1-t)(x-u)/s`.
`hand/SHARP_G_MOVING_PROJECTION.md`, lines 43-106. -/
theorem claim_heights {a b c d e f g h t x y : ℝ} (hyp : GMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sG ≤ chamberSarea (gMovingConfig a b c d e f g h t x y) i) :
    let s := sG
    let u := s / (h - a)
    let v := s / (f - g)
    let β := sharpBeta s u v
    let A := sharpAlpha s u v - (1 + u * v / s) * t
    let E := 1 - v + β * v * t / s
    (u ≤ b ∧ u ≤ g ∧ u + (f - g) ≤ f ∧ 0 < β) ∧
      (h ≤ 1 - v - f * t / (f - g) ∧ e ≤ E) ∧
      (a ≤ A ∧ s / (c - b) ≤ a ∧ s / (1 - u) < s / (c - b) ∧ 0 < s / (1 - u)) ∧
      (x ≤ 1 - 2 * u ∧ b < x ∧ y < e ∧ y < 1 - t) ∧
      y ≤ (E * (x - u) - s) / (1 - u) ∧
      (1 - t) + A - A * (1 - t) * (x - u) / s ≤ y ∧
      (1 - t) + v - v * (1 - t) * (x - u) / s ≤ y := by
  intro s u v β A E
  have H := Data.of_hs hyp hs
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  have hu : u * (h - a) = s := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = s := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by norm_num [s, sG]) hL0
  have hv0 : 0 < v := div_pos (by norm_num [s, sG]) hM0
  exact H.heights rfl hu hv (sharpAlpha_of_mul hu0.ne' hu v) (sharpBeta_of_mul hv0.ne' hv u)

/-- **Claim** (`SHARP_G_MOVING_PROJECTION:claim-scalars`). Under the assumption of
`claim_heights`: (6) `J_t ≥ 0`, (7) `C_t ≥ 0`, and (8) `1/8 < u < 15/64`, `v + t < 9/16`.
`hand/SHARP_G_MOVING_PROJECTION.md`, lines 108-176. -/
theorem claim_scalars {a b c d e f g h t x y : ℝ} (hyp : GMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sG ≤ chamberSarea (gMovingConfig a b c d e f g h t x y) i) :
    let u := sG / (h - a)
    let v := sG / (f - g)
    0 ≤ gJ u v t ∧ 0 ≤ gC u v t ∧ (1 / 8 < u ∧ u < 15 / 64) ∧ v + t < 9 / 16 := by
  intro u v
  have H := Data.of_hs hyp hs
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  have hu : u * (h - a) = sG := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = sG := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by norm_num [sG]) hL0
  have hv0 : 0 < v := div_pos (by norm_num [sG]) hM0
  exact H.scalars hu hv (sharpAlpha_of_mul hu0.ne' hu v) (sharpBeta_of_mul hv0.ne' hv u)

/-- **Claim** (`SHARP_G_MOVING_PROJECTION:claim-weight`). Under the assumption of
`claim_heights`: `D_j > 455/4096`, the weight `μ = D_c/D_j = 1 + 2sz/D_j` satisfies `0 < μ` and
(9) `μ ≤ 8/5`, and (11) `(C_t + μJ_t) - (C₀ + μJ₀) ≤ -7t/256`.
`hand/SHARP_G_MOVING_PROJECTION.md`, lines 178-236. -/
theorem claim_weight {a b c d e f g h t x y : ℝ} (hyp : GMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sG ≤ chamberSarea (gMovingConfig a b c d e f g h t x y) i) :
    let u := sG / (h - a)
    let v := sG / (f - g)
    let μ := gDc u / gDj u
    455 / 4096 < gDj u ∧ 0 < μ ∧ μ ≤ 8 / 5 ∧
      (gC u v t + μ * gJ u v t) - (gC u v 0 + μ * gJ u v 0) ≤ -(7 / 256) * t := by
  intro u v μ
  have H := Data.of_hs hyp hs
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  have hu : u * (h - a) = sG := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = sG := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by norm_num [sG]) hL0
  have hv0 : 0 < v := div_pos (by norm_num [sG]) hM0
  have hα := sharpAlpha_of_mul hu0.ne' hu v
  have hβ := sharpBeta_of_mul hv0.ne' hv u
  obtain ⟨-, -, ⟨hu1, hu2⟩, hvt⟩ := H.scalars hu hv hα hβ
  obtain ⟨-, -, ⟨haA, hac, hcb, hcb0⟩, -, -, -, -, -⟩ := H.facts (α := sharpAlpha sG u v)
    (β := sharpBeta sG u v) hu hv hα hβ
  have ha := H.ha
  have hA : (7 / 64 : ℝ) / (1 - u) < sharpAlpha sG u v - (1 + u * v / (7 / 64)) * t := by
    have h1 : (7 / 64 : ℝ) / (1 - u) < a := by
      rw [div_lt_iff₀ (by linarith)]
      linarith [mul_lt_mul_of_pos_left hcb ha]
    linarith
  have hβv : sharpBeta sG u v * v = v - u * v - sG := by
    rw [hβ]; linarith
  exact weight_core hu1 hu2 hv0 H.ht0 hvt hβv hA

/-- **Claim** (`SHARP_G_MOVING_PROJECTION:claim-cubic`). Equations (12)–(13): for `u ≠ 0` with
`D_j ≠ 0` and every `v`, `C₀ + μJ₀ = 3(u-1)(64u-19)N(u)/(131072 u D_j)` (the weight cancels `v`);
and `N(u) < 0` for `1/8 < u < 15/64`. `hand/SHARP_G_MOVING_PROJECTION.md`, lines 238-262. -/
theorem claim_cubic :
    (∀ u v : ℝ, u ≠ 0 → gDj u ≠ 0 →
      gC u v 0 + gDc u / gDj u * gJ u v 0 =
        3 * (u - 1) * (64 * u - 19) * gN u / (131072 * u * gDj u)) ∧
      ∀ u : ℝ, 1 / 8 < u → u < 15 / 64 → gN u < 0 := by
  refine ⟨fun u v hu hD => ?_, fun u hu1 hu2 => ?_⟩
  · rw [eq_div_iff (mul_ne_zero (mul_ne_zero (by norm_num) hu) hD)]
    have e1 : gDc u / gDj u * gJ u v 0 * (131072 * u * gDj u) =
        131072 * u * gDc u * gJ u v 0 := by
      field_simp
    have e2 : u * gC u v 0 = (u - u * v - 7 / 64) * (1 - u) * ((1 - 3 * u) - 7 / 64) +
        u * (7 / 64 * (1 - v) * (1 - 3 * u) - (7 / 64) ^ 2 - 7 / 64 * (1 - u)) := by
      simp only [gC, sharpAlpha, sG]
      field_simp
      ring
    calc (gC u v 0 + gDc u / gDj u * gJ u v 0) * (131072 * u * gDj u)
        = 131072 * gDj u * (u * gC u v 0) + 131072 * u * gDc u * gJ u v 0 := by
          rw [add_mul, e1]; ring
      _ = 3 * (u - 1) * (64 * u - 19) * gN u := by
          rw [e2]; unfold gJ gDc gDj gN sG; ring
  · unfold gN
    nlinarith [mul_nonneg (sq_nonneg (u - 1 / 6)) (by linarith : (0:ℝ) ≤ 1 / 12 - (u - 1 / 6)),
      sq_nonneg (u - 1 / 6 + 281 / 31680)]

/-- **Theorem 1** (`SHARP_G_MOVING_PROJECTION:Theorem1`). Under the strict side orders,
`0 ≤ t < 1`, (1) `f ≤ c`, `e ≤ 1-t`, `O ∈ [0,1]²` and positivity of the eleven oriented doubled
areas, the minimum of the eleven ordinary areas is strictly less than `7/128 < A₀`.
`hand/SHARP_G_MOVING_PROJECTION.md`, lines 1-41, 264-267.
Uses: SHARP_G_MOVING_PROJECTION:claim-heights, SHARP_G_MOVING_PROJECTION:claim-scalars,
SHARP_G_MOVING_PROJECTION:claim-weight, SHARP_G_MOVING_PROJECTION:claim-cubic
(the comparison `7/128 < A₀`, quoted from `GLOBAL_COMPLETION.md`, is `Heilbronn.A₀_bounds`) -/
theorem theorem1 {a b c d e f g h t x y : ℝ} (hyp : GMovingHyp a b c d e f g h t x y)
    (hch : InChamber (gMovingConfig a b c d e f g h t x y)) :
    (∃ i, chamberArea (gMovingConfig a b c d e f g h t x y) i < 7 / 128) ∧
      (7 / 128 : ℝ) < A₀ := by
  refine ⟨?_, A₀_bounds.1⟩
  by_contra hcon
  push Not at hcon
  have hs : ∀ i, sG ≤ chamberSarea (gMovingConfig a b c d e f g h t x y) i := by
    intro i
    have h1 := hcon i
    rw [chamberArea_eq_half, abs_of_pos (hch i)] at h1
    unfold sG; linarith
  have H := Data.of_hs hyp hs
  obtain ⟨hJ, hC, ⟨hu1, hu2⟩, -⟩ := claim_scalars hyp hs
  obtain ⟨hDj, hμ0, -, hdiff⟩ := claim_weight hyp hs
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hu0 : 0 < sG / (h - a) := div_pos (by norm_num [sG]) hL0
  have hcub := claim_cubic.1 (sG / (h - a)) (sG / (f - g)) hu0.ne' (by linarith)
  have hN := claim_cubic.2 (sG / (h - a)) hu1 hu2
  have hneg : 3 * (sG / (h - a) - 1) * (64 * (sG / (h - a)) - 19) * gN (sG / (h - a)) /
      (131072 * (sG / (h - a)) * gDj (sG / (h - a))) < 0 := by
    apply div_neg_of_neg_of_pos _ (by positivity)
    have : 0 < 3 * (sG / (h - a) - 1) * (64 * (sG / (h - a)) - 19) :=
      mul_pos_of_neg_of_neg (by linarith) (by linarith)
    exact mul_neg_of_pos_of_neg this hN
  have hsum := mul_nonneg hμ0.le hJ
  linarith [H.ht0]

end Heilbronn.SharpGMovingProjection
