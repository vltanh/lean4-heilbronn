module

public import Heilbronn.Nine.Sharp.BCMoving

/-! # A sharp chamber with C and D moving inward simultaneously (`docs/proof/nine/SHARP_CD_MOVING.md`)

**Role.** Component of the primary route: the equality branch of row N6-08
(`SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION`, labels `(C,D,E,G,F,H,A,B)`). Its Section 3 elimination
(10) is reused as (11) of `SHARP_BD_MOVING`.

**Setting.** The sharp chamber of `HAND_PROOF.md` with the two adjacent contacts `C = (c,t)` and
`D = (1-r,d)` moved inward; `A=(0,a), B=(b,0), E=(1,e), F=(f,1), G=(g,1), H=(0,h)`, `O=(x,y)` in
the square, the strict orders (`SharpOrders`) and the closed height conditions `0 ≤ t ≤ a`,
`0 ≤ r ≤ 1-f` (1). The chamber is positivity of the eleven oriented doubled areas of the table.
Constants and scalar functions as in `SHARP_BC_MOVING`.

**Results.**
* `claim_chamber_formulas`: the eleven oriented doubled areas.
* `theorem1`: minimum of the eleven areas `≤ A₀`; if all are `≥ A₀` then `t = r = 0` and the
  configuration is the sharp configuration.
* `claim_bounds` (3)–(8): anchor bounds, `t ≤ α`, `r ≤ β`, `α, β > s`, the diagonal bounds,
  `s ≤ g₀ - (1-v)r - (1-u)t`, `(u+v)/2 ≤ p₀`, `u, v < 1/5`, `2uv < s`.
* `claim_eliminations` (9)–(10): `(s-ut)(1-y) ≤ α{(1-t)(x-u)-s}` and
  `(s-vr)x ≤ β{(1-r)(1-v-y)-s}`.
* `claim_identity` (11)–(12): `H₀ + λ(g₀-s) ≥ tT_u + rT_v + ut² + vr² - (α+β)tr` and
  `T_u - αβ, T_v - αβ > 0`.

The proofs go through `Data`, the hypotheses and the eleven bounds as plain real inequalities
(with a general threshold `s`).

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "every displayed doubled area is at least `s = 2A₀`" (which implies the chamber).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SharpCDMoving

open Heilbronn.Nine.SharpBCMoving

/-- The C/D-moving configuration: `C = (c,t)`, `D = (1-r,d)`, the other points as in
`HAND_PROOF.md`, in the order `A, B, C, D, E, F, G, H, O`. -/
def cdMovingConfig (a b c d e f g h t r x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, 0) (c, t) (1 - r, d) (1, e) (f, 1) (g, 1) (0, h) (x, y)

/-- The hypotheses (1) of Theorem 1 other than the chamber: the strict orders, `0 ≤ t ≤ a`,
`0 ≤ r ≤ 1-f` and `O ∈ [0,1]²`. -/
def CDMovingHyp (a b c d e f g h t r x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ t ∧ t ≤ a ∧ 0 ≤ r ∧ r ≤ 1 - f ∧
    ((x, y) : Point) ∈ unitSquare

/-- **Claim** (`SHARP_CD_MOVING:claim-chamber-formulas`). The eleven oriented doubled areas:
`ABH = b(h-a)`, `ABC = a(c-b)+bt`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)+r(1-e)`, `GHF = (f-g)(1-h)`,
`GEF = (f-g)(1-e)`, `ADO = (1-r)(y-a)-(d-a)x`, `DHO = (1-r)(h-y)-(h-d)x`, `BOE = e(x-b)-(1-b)y`,
`GCO = (1-t)x-c(1-y)-g(y-t)`, `OCF = c(1-y)+f(y-t)-(1-t)x`.
`docs/proof/nine/SHARP_CD_MOVING.md`, lines 18-33. -/
theorem claim_chamber_formulas (a b c d e f g h t r x y : ℝ) :
    chamberSarea (cdMovingConfig a b c d e f g h t r x y) =
      ![b * (h - a), a * (c - b) + b * t, g * (h - a), (1 - f) * (e - d) + r * (1 - e),
        (f - g) * (1 - h), (f - g) * (1 - e), (1 - r) * (y - a) - (d - a) * x,
        (1 - r) * (h - y) - (h - d) * x, e * (x - b) - (1 - b) * y,
        (1 - t) * x - c * (1 - y) - g * (y - t), c * (1 - y) + f * (y - t) - (1 - t) * x] := by
  funext i
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, cdMovingConfig, sharpConfig, sarea,
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
  hta : t ≤ a
  hr0 : 0 ≤ r
  hrf : r ≤ 1 - f
  hx0 : 0 ≤ x
  hx1 : x ≤ 1
  hy0 : 0 ≤ y
  hy1 : y ≤ 1
  h0 : s ≤ b * (h - a)
  h1 : s ≤ a * (c - b) + b * t
  h2 : s ≤ g * (h - a)
  h3 : s ≤ (1 - f) * (e - d) + r * (1 - e)
  h4 : s ≤ (f - g) * (1 - h)
  h5 : s ≤ (f - g) * (1 - e)
  h6 : s ≤ (1 - r) * (y - a) - (d - a) * x
  h7 : s ≤ (1 - r) * (h - y) - (h - d) * x
  h8 : s ≤ e * (x - b) - (1 - b) * y
  h9 : s ≤ (1 - t) * x - c * (1 - y) - g * (y - t)
  h10 : s ≤ c * (1 - y) + f * (y - t) - (1 - t) * x

theorem Data.of_hs {a b c d e f g h t r x y : ℝ} (hyp : CDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (cdMovingConfig a b c d e f g h t r x y) i) :
    Data sharpS a b c d e f g h t r x y := by
  obtain ⟨⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩, ht0, hta, hr0, hrf, hx0, hx1,
    hy0, hy1⟩ := hyp
  obtain ⟨hs1, hs2, -, -⟩ := sharp_bounds
  rw [claim_chamber_formulas] at hs
  exact ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, ht0, hta, hr0, hrf,
    hx0, hx1, hy0, hy1, by simpa using hs 0, by simpa using hs 1, by simpa using hs 2,
    by simpa using hs 3, by simpa using hs 4, by simpa using hs 5, by simpa using hs 6,
    by simpa using hs 7, by simpa using hs 8, by simpa using hs 9, by simpa using hs 10⟩

section Plain

variable {s a b c d e f g h t r x y u v : ℝ}

/-- (3)–(8) in plain form (without (7)), with `α = 1-v-(h-a)`, `β = 1-u-(f-g)`, `uL = vM = s`;
also the BOE bound before (6) and `u, v > 0`. -/
theorem Data.bounds (H : Data s a b c d e f g h t r x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) :
    (u ≤ b ∧ u ≤ g ∧ e ≤ 1 - v ∧ h ≤ 1 - v ∧ a ≤ 1 - v - (h - a) ∧
        1 - f ≤ 1 - u - (f - g)) ∧
      (s < 1 - v - (h - a) ∧ s < 1 - u - (f - g) ∧ t ≤ 1 - v - (h - a) ∧
        r ≤ 1 - u - (f - g)) ∧
      (2 * u + r ≤ 1 - x ∧ 2 * v + t ≤ y) ∧ (b < x ∧ y < e) ∧
      s ≤ (1 - 3 * u - 3 * v + 5 * u * v) - (1 - v) * r - (1 - u) * t ∧
      (u < 1 / 3 ∧ v < 1 / 3) ∧ (u < 1 / 5 ∧ v < 1 / 5) ∧ 2 * u * v < s ∧
      ((1 - v) * (1 - x) + (1 - u) * y ≤ (1 - v) * (1 - u) - s) ∧ 0 < u ∧ 0 < v := by
  obtain ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, ht0, hta, hr0, hrf,
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
  have hY : 2 * v ≤ y - t := anchor_le hM0 (by linarith) (by linarith : 2 * v * (f - g) = 2 * s)
  -- (4)
  have hsa : s < a := by
    linarith [mul_le_mul_of_nonneg_left hta hb.le, mul_pos ha (by linarith : (0:ℝ) < 1 - c)]
  have hβ : s < 1 - u - (f - g) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f - r) (by linarith : (0:ℝ) ≤ 1 - e),
      mul_pos (by linarith : (0:ℝ) < 1 - f) hd]
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
  have hBOE : (1 - v) * (1 - x) + (1 - u) * y ≤ (1 - v) * (1 - u) - s := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ e - y),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - e) (by linarith : (0:ℝ) ≤ x - u)]
  have h6' : s ≤ (1 - 3 * u - 3 * v + 5 * u * v) - (1 - v) * r - (1 - u) * t := by
    linarith [mul_le_mul_of_nonneg_left (by linarith : 2 * u + r ≤ 1 - x)
      (by linarith : (0:ℝ) ≤ 1 - v),
      mul_le_mul_of_nonneg_left (by linarith : 2 * v + t ≤ y) (by linarith : (0:ℝ) ≤ 1 - u)]
  have hg0 : s ≤ 1 - 3 * u - 3 * v + 5 * u * v := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v) hr0,
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - u) ht0]
  have hu5 : u < 1 / 5 := by
    by_contra hcon
    push Not at hcon
    have e1 : 2 * v ≤ 2 / 5 - s := by
      linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 3 - 5 * v) (sub_nonneg.2 hcon)]
    have e2 : s < v * (4 / 5 - s) := by
      linarith [mul_nonneg hv0.le (sub_nonneg.2 hcon), mul_lt_mul_of_pos_left hβ hv0]
    linarith [mul_le_mul_of_nonneg_right e1 (by linarith : (0:ℝ) ≤ 4 / 5 - s),
      mul_le_mul_of_nonneg_left hs2.le (by linarith : (0:ℝ) ≤ s)]
  have hv5 : v < 1 / 5 := by
    by_contra hcon
    push Not at hcon
    have e1 : 2 * u ≤ 2 / 5 - s := by
      linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 3 - 5 * u) (sub_nonneg.2 hcon)]
    have e2 : s < u * (4 / 5 - s) := by
      linarith [mul_nonneg hu0.le (sub_nonneg.2 hcon),
        mul_lt_mul_of_pos_left (by linarith : s < 1 - v - (h - a)) hu0]
    linarith [mul_le_mul_of_nonneg_right e1 (by linarith : (0:ℝ) ≤ 4 / 5 - s),
      mul_le_mul_of_nonneg_left hs2.le (by linarith : (0:ℝ) ≤ s)]
  have huv : 2 * u * v < s := by
    linarith [mul_lt_mul'' hu5 hv5 hu0.le hv0.le]
  exact ⟨⟨hbu, hgu, by linarith, by linarith, by linarith, by linarith⟩,
    ⟨by linarith, hβ, by linarith, by linarith⟩, ⟨by linarith, by linarith⟩, ⟨hxb, hye⟩, h6',
    ⟨by linarith, by linarith⟩, ⟨hu5, hv5⟩, huv, hBOE, hu0, hv0⟩

/-- (9)–(10) in plain form. -/
theorem Data.eliminations (H : Data s a b c d e f g h t r x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) :
    (s - u * t) * (1 - y) ≤ (1 - v - (h - a)) * ((1 - t) * (x - u) - s) ∧
      (s - v * r) * x ≤ (1 - u - (f - g)) * ((1 - r) * (1 - v - y) - s) := by
  obtain ⟨⟨hbu, hgu, hev, hhv, hα, hfβ⟩, -, ⟨hX, hY⟩, -, -, -, -, -, -, hu0, hv0⟩ := H.bounds hu hv
  exact ⟨elim_C H.h1 H.h9 hbu hgu hα H.ha H.hta (by linarith) H.hy1 H.hbc.le,
    elim_D (d := d) (e := e) (f := f) (h := h) H.h3 H.h7 hev hhv hfβ H.hr0 H.hrf H.hx0
      (by linarith) H.hde.le⟩

/-- (11)–(12) in plain form. -/
theorem Data.identity {l : ℝ} (H : Data s a b c d e f g h t r x y) (hl1 : 1 / 4 < l)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) :
    0 < (1 - v - (h - a)) * (1 - t) - s + v * r + l * (1 - v) ∧
      0 < (1 - u - (f - g)) * (1 - r) - s + u * t + l * (1 - u) ∧
      t * ((1 - v - (h - a)) * (1 - 3 * u) + (1 - u - (f - g)) - s - u * (1 - 2 * v) +
          l * (1 - u)) +
        r * ((1 - u - (f - g)) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
          l * (1 - v)) + u * t ^ 2 + v * r ^ 2 -
          ((1 - v - (h - a)) + (1 - u - (f - g))) * t * r ≤
        (1 - v - (h - a)) * (1 - 3 * u - s) + (1 - u - (f - g)) * (1 - 3 * v - s) +
          2 * s * (u + v - 1) + l * (1 - 3 * u - 3 * v + 5 * u * v - s) ∧
      0 < (1 - v - (h - a)) * (1 - 3 * u) + (1 - u - (f - g)) - s - u * (1 - 2 * v) +
          l * (1 - u) - (1 - v - (h - a)) * (1 - u - (f - g)) ∧
      0 < (1 - u - (f - g)) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
          l * (1 - v) - (1 - v - (h - a)) * (1 - u - (f - g)) := by
  obtain ⟨⟨hbu, hgu, hev, hhv, hα, hfβ⟩, ⟨hαs, hβs, htα, hrβ⟩, ⟨hX, hY⟩, -, -, -, ⟨hu5, hv5⟩,
    huv, hBOE, hu0, hv0⟩ := H.bounds hu hv
  obtain ⟨h9', h10'⟩ := H.eliminations hu hv
  have hs1 := H.hs1
  have hs2 := H.hs2
  have ht0 := H.ht0
  have hr0 := H.hr0
  have ht1 : t < 1 := by linarith [H.hta, H.hah, H.hh1]
  have hr1 : r < 1 := by linarith [H.hrf, H.hg, H.hgf]
  have hC1 : 0 < (1 - v - (h - a)) * (1 - t) - s + v * r + l * (1 - v) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - (h - a)) (by linarith : (0:ℝ) ≤ 1 - t),
      mul_nonneg hv0.le hr0, mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - v)]
  have hC2 : 0 < (1 - u - (f - g)) * (1 - r) - s + u * t + l * (1 - u) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - u - (f - g)) (by linarith : (0:ℝ) ≤ 1 - r),
      mul_nonneg hu0.le ht0, mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - u)]
  -- `M > 2u` and `L > 2v` from `2uv < s`
  have hM2 : 2 * u < f - g := by
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_left hcon hv0.le]
  have hL2 : 2 * v < h - a := by
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_left hcon hu0.le]
  refine ⟨hC1, hC2, ?_, ?_, ?_⟩
  · linarith [mul_le_mul_of_nonneg_left hBOE (by linarith : (0:ℝ) ≤ l),
      mul_nonneg hC1.le (by linarith : (0:ℝ) ≤ 1 - x - 2 * u - r),
      mul_nonneg hC2.le (by linarith : (0:ℝ) ≤ y - 2 * v - t)]
  · linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - (h - a))
        (by linarith : (0:ℝ) ≤ f - g - 2 * u),
      mul_nonneg hu0.le hv0.le, mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - u)]
  · linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - u - (f - g))
        (by linarith : (0:ℝ) ≤ h - a - 2 * v),
      mul_nonneg hu0.le hv0.le, mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - v)]

/-- Theorem 1 in plain form: the eleven bounds force `t = r = 0`. -/
theorem Data.rigid {l : ℝ} (H : Data s a b c d e f g h t r x y) (hl1 : 1 / 4 < l)
    (hsc : ScalarIneq s l) : t = 0 ∧ r = 0 := by
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  obtain ⟨u, hu⟩ : ∃ u, u * (h - a) = s := ⟨s / (h - a), div_mul_cancel₀ _ hL0.ne'⟩
  obtain ⟨v, hv⟩ : ∃ v, v * (f - g) = s := ⟨s / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  obtain ⟨-, ⟨hαs, hβs, htα, hrβ⟩, -, -, -, -, ⟨hu5, hv5⟩, -, -, hu0, hv0⟩ := H.bounds hu hv
  obtain ⟨-, -, h11, hTu, hTv⟩ := H.identity hl1 hu hv
  have hs1 := H.hs1
  have ht0 := H.ht0
  have hr0 := H.hr0
  have hscal := hsc u v (h - a) (f - g) hu0 hv0 (by linarith) hu hv
  -- `(α+β)tr ≤ αβ(t+r)`
  have hmix1 := mul_le_mul_of_nonneg_left hrβ
    (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - (h - a)) ht0)
  have hmix2 := mul_le_mul_of_nonneg_left htα
    (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - u - (f - g)) hr0)
  have e3 : 0 ≤ u * t ^ 2 := mul_nonneg hu0.le (sq_nonneg t)
  have e4 : 0 ≤ v * r ^ 2 := mul_nonneg hv0.le (sq_nonneg r)
  have e1 := mul_nonneg ht0 hTu.le
  have e2 := mul_nonneg hr0 hTv.le
  exact ⟨eq_zero_of_mul_nonpos ht0 hTu (by linarith),
    eq_zero_of_mul_nonpos hr0 hTv (by linarith)⟩

end Plain

/-! ### The claims of the manuscript -/

/-- **Theorem 1** (`SHARP_CD_MOVING:Theorem1`). Under (1) and positivity of the eleven oriented
doubled areas, the minimum of the eleven ordinary triangle areas is at most `A₀`. If all eleven
are at least `A₀`, then `t = r = 0` and the configuration is exactly the equality configuration
of `HAND_PROOF.md` (the closed height conditions in (1) are included).
`docs/proof/nine/SHARP_CD_MOVING.md`, lines 3-42, 175-200.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_BC_MOVING:eq8,
SHARP_CD_MOVING:claim-bounds, SHARP_CD_MOVING:claim-eliminations, SHARP_CD_MOVING:claim-identity,
HAND_PROOF:Theorem1 -/
theorem theorem1 {a b c d e f g h t r x y : ℝ} (hyp : CDMovingHyp a b c d e f g h t r x y)
    (hch : InChamber (cdMovingConfig a b c d e f g h t r x y)) :
    (∃ i, chamberArea (cdMovingConfig a b c d e f g h t r x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (cdMovingConfig a b c d e f g h t r x y) i) →
        t = 0 ∧ r = 0 ∧ cdMovingConfig a b c d e f g h t r x y = optimalConfiguration) := by
  have hord := hyp.1
  have hO := hyp.2.2.2.2.2
  have key := moving_wrapper (Z := t = 0 ∧ r = 0) hord hO hch fun hs => by
    obtain ⟨-, -, hl1, -⟩ := sharp_bounds
    obtain ⟨ht, hr⟩ := (Data.of_hs hyp hs).rigid hl1 scalarIneq_sharp
    subst ht hr
    refine ⟨⟨rfl, rfl⟩, ?_⟩
    simp only [cdMovingConfig, sharpConfig, baseConfig, sub_zero]
  exact ⟨key.1, fun h => ⟨(key.2 h).1.1, (key.2 h).1.2, (key.2 h).2⟩⟩

end Heilbronn.Nine.SharpCDMoving
