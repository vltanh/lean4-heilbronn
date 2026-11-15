module

public import Heilbronn.Sharp.DFMoving

/-! # A simultaneous E/F sharp chamber under rational bounds (`hand/SHARP_EF_MOVING.md`)

**Role.** Component of the primary route: the equality branch of word 31 of
`SIX_BOUNDARY_TWO_TOP_CONVEX` (row N6-06, convex cap hull).

**Setting.** The sharp chamber of `HAND_PROOF.md` with `E = (1-r,e)` and `F = (f,k)` moved
inward; `A=(0,a), B=(b,0), C=(c,0), D=(1,d), G=(g,1), H=(0,h)`, `O=(x,y)` in the square, the strict
orders (`SharpOrders`), `b ≤ g`, `0 ≤ r ≤ 1-f`, `h ≤ k ≤ 1` (1) and the rational bounds (2) of
`SHARP_DF_MOVING` (`RationalBox`). The chamber is positivity of the eleven oriented doubled areas
of the table. Notation as in `SHARP_DF_MOVING`: `s = 2A₀`, `L = h-a`, `M = f-g`, `u = s/L`,
`v = s/M`, `w = (1-k)/M`, `z = g-u`, `α = 1-v-L`, `B = 1-f`, `β = 1-u-M`, `A* = α+gw`.

**Results.**
* `claim_chamber_formulas`: the eleven oriented doubled areas.
* `mainTheorem` (the note's unnumbered Theorem): minimum of the eleven areas `≤ A₀`; if all are
  `≥ A₀` then `r = 0`, `k = 1` and the configuration is the sharp configuration.
* `claim_gaps` (3)–(6): anchor bounds, the gap `B - r > s`, the bounds (5) and the diagonal
  bounds, `1-r > x`, `x > b`, `e > y`.
* `claim_eliminations` (7)–(10): `E₁, E₂, E₃ ≥ 0` and the exact identity
  `E₁ + E₂ + λE₃ = Φ_F - rR`.
* `claim_R` (11)–(15): `y ≤ y₀ < 1/2`, `x > 403/768` and `R > 1993/19200 > 1/10`.
* `claim_final` (16)–(17): `Φ_F ≤ H₀ + λ(g₀-s) - z a_v - wK₀`, `a_v > 29/100`,
  `K₀ > 3113/153600`.

The proofs go through `Data`, the hypotheses and the eleven bounds as plain real inequalities
(with a general threshold `s`).

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "all eleven doubled areas are at least `s`" (which implies the chamber).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SharpEFMoving

open Heilbronn.SharpBCMoving Heilbronn.SharpDFMoving

/-- The E/F-moving configuration: `E = (1-r,e)`, `F = (f,k)`, the other points as in
`HAND_PROOF.md`, in the order `A, B, C, D, E, F, G, H, O`. -/
def efMovingConfig (a b c d e f g h r k x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, 0) (c, 0) (1, d) (1 - r, e) (f, k) (g, 1) (0, h) (x, y)

/-- The hypotheses (1)–(2) of the Theorem other than the chamber: the strict orders, `b ≤ g`,
`0 ≤ r ≤ 1-f`, `h ≤ k ≤ 1`, the rational bounds (2) and `O ∈ [0,1]²`. -/
def EFMovingHyp (a b c d e f g h r k x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ b ≤ g ∧ 0 ≤ r ∧ r ≤ 1 - f ∧ h ≤ k ∧ k ≤ 1 ∧
    RationalBox a c f g h ∧ ((x, y) : Point) ∈ unitSquare

/-- `T = 1 - v - y + w(g-x) - s` (8). -/
def efT (v w g x y : ℝ) : ℝ := 1 - v - y + w * (g - x) - sharpS

/-- `Φ_F = E₁ + F₂ + λF₃` with `E₁ = A*(x-u-s) - s(1-y)`, `F₂ = BT - sx`,
`F₃ = {1-v-(1-g)w}(x-u) - (1-u)y - s` (the `r = 0` algebra, after (9)). -/
def efPhiF (u v w g Astar B x y : ℝ) : ℝ :=
  (Astar * (x - u - sharpS) - sharpS * (1 - y)) + (B * efT v w g x y - sharpS * x) +
    sharpLambda * ((1 - v - (1 - g) * w) * (x - u) - (1 - u) * y - sharpS)

/-- `R = T + vx - λw(x-u) - λy` (10). -/
def efR (u v w g x y : ℝ) : ℝ :=
  efT v w g x y + v * x - sharpLambda * w * (x - u) - sharpLambda * y

/-- **Claim** (`SHARP_EF_MOVING:claim-chamber-formulas`). The eleven oriented doubled areas:
`ABH = b(h-a)`, `ABC = a(c-b)`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)-r(k-d)`,
`GHF = (f-g)(1-h)+g(1-k)`, `GEF = (f-g)(1-e)-(1-r-g)(1-k)`, `ADO = y-a-(d-a)x`,
`DHO = h-y-(h-d)x`, `BOE = e(x-b)-(1-r-b)y`, `GCO = x-c+(c-g)y`, `OCF = k(c-x)+(f-c)y`.
`hand/SHARP_EF_MOVING.md`, lines 28-42. -/
theorem claim_chamber_formulas (a b c d e f g h r k x y : ℝ) :
    chamberSarea (efMovingConfig a b c d e f g h r k x y) =
      ![b * (h - a), a * (c - b), g * (h - a), (1 - f) * (e - d) - r * (k - d),
        (f - g) * (1 - h) + g * (1 - k), (f - g) * (1 - e) - (1 - r - g) * (1 - k),
        y - a - (d - a) * x, h - y - (h - d) * x, e * (x - b) - (1 - r - b) * y,
        x - c + (c - g) * y, k * (c - x) + (f - c) * y] := by
  funext i
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, efMovingConfig, sharpConfig, sarea,
      Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val] <;> ring

/-! ### The plain-real form -/

/-- The hypotheses (1)–(2) and the eleven bounds "doubled area `≥ s`", as plain real
inequalities. -/
structure Data (s a b c d e f g h r k x y : ℝ) : Prop where
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
  hbg : b ≤ g
  hr0 : 0 ≤ r
  hrf : r ≤ 1 - f
  hhk : h ≤ k
  hk1 : k ≤ 1
  hL1 : 11 / 20 ≤ h - a
  hL2 : h - a ≤ 2 / 3
  hM1 : 11 / 20 ≤ f - g
  hg4 : g ≤ 1 / 4
  hc3 : 2 / 3 ≤ c
  hx0 : 0 ≤ x
  hx1 : x ≤ 1
  hy0 : 0 ≤ y
  hy1 : y ≤ 1
  h0 : s ≤ b * (h - a)
  h1 : s ≤ a * (c - b)
  h2 : s ≤ g * (h - a)
  h3 : s ≤ (1 - f) * (e - d) - r * (k - d)
  h4 : s ≤ (f - g) * (1 - h) + g * (1 - k)
  h5 : s ≤ (f - g) * (1 - e) - (1 - r - g) * (1 - k)
  h6 : s ≤ y - a - (d - a) * x
  h7 : s ≤ h - y - (h - d) * x
  h8 : s ≤ e * (x - b) - (1 - r - b) * y
  h9 : s ≤ x - c + (c - g) * y
  h10 : s ≤ k * (c - x) + (f - c) * y

theorem Data.of_hs {a b c d e f g h r k x y : ℝ} (hyp : EFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (efMovingConfig a b c d e f g h r k x y) i) :
    Data sharpS a b c d e f g h r k x y := by
  obtain ⟨⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩, hbg, hr0, hrf, hhk, hk1,
    ⟨hL1, hL2, hM1, hg4, hc3⟩, hx0, hx1, hy0, hy1⟩ := hyp
  obtain ⟨hs1, hs2, -, -⟩ := sharp_bounds
  rw [claim_chamber_formulas] at hs
  exact ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, hbg, hr0, hrf, hhk,
    hk1, hL1, hL2, hM1, hg4, hc3, hx0, hx1, hy0, hy1, by simpa using hs 0, by simpa using hs 1,
    by simpa using hs 2, by simpa using hs 3, by simpa using hs 4, by simpa using hs 5,
    by simpa using hs 6, by simpa using hs 7, by simpa using hs 8, by simpa using hs 9,
    by simpa using hs 10⟩

section Plain

variable {s a b c d e f g h r k x y u v w : ℝ}

/-- (3)–(6) in plain form, with `uL = vM = s`, `wM = 1-k`; also `u, v > 0`. -/
theorem Data.gaps (H : Data s a b c d e f g h r k x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    (u ≤ b ∧ u ≤ g ∧ h ≤ 1 - v + g * w ∧ e ≤ 1 - v - (1 - r - g) * w ∧
        a ≤ (1 - v - (h - a)) + g * w ∧ s < a ∧ s < (1 - v - (h - a)) + g * w) ∧
      (e < k ∧ s < (1 - f) - r) ∧
      (u < 1 / 5 ∧ v < 1 / 5 ∧ 21 / 128 < u ∧ 2 / 15 < 1 - v - (h - a) ∧ s < 1 - f ∧
        1 - f < 183 / 640 ∧ 0 ≤ g - u ∧ g - u < 11 / 128 ∧ 0 ≤ w ∧ w < 109 / 176) ∧
      (2 * u ≤ 1 - x ∧ 2 * v + w * (c - 1 + (1 - x)) ≤ y) ∧
      (x < 1 - r ∧ b < x ∧ y < e) ∧ (0 < u ∧ 0 < v) := by
  obtain ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, hbg, hr0, hrf, hhk,
    hk1, hL1, hL2, hM1, hg4, hc3, hx0, hx1, hy0, hy1, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9,
    h10⟩ := H
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < f - g := by linarith
  have hu0 : 0 < u := pos_of_mul_eq hL0 (by linarith) hu
  have hv0 : 0 < v := pos_of_mul_eq hM0 (by linarith) hv
  have hbu : u ≤ b := anchor_le hL0 h0 hu
  have hgu : u ≤ g := anchor_le hL0 h2 hu
  have hw0 : 0 ≤ w := by
    by_contra hcon
    push Not at hcon
    linarith [mul_neg_of_neg_of_pos hcon hM0]
  have hgw : g * (w * (f - g)) = g * (1 - k) := by rw [hw]
  have hhv : v ≤ 1 - h + g * w := anchor_le hM0 (by linarith) hv
  have hgw' : (1 - r - g) * (w * (f - g)) = (1 - r - g) * (1 - k) := by rw [hw]
  have hev : v ≤ 1 - e - (1 - r - g) * w := anchor_le hM0 (by linarith) hv
  have hsa : s < a := by linarith [mul_pos ha (by linarith : (0:ℝ) < 1 - (c - b))]
  -- (4)
  have hke : e < k := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg hM0.le (sub_nonneg.2 hcon),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f - r) (by linarith : (0:ℝ) ≤ 1 - k)]
  have hBr : s < (1 - f) - r := by
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_right hcon (by linarith : (0:ℝ) ≤ e - d),
      mul_lt_mul_of_pos_left (by linarith : e - d < 1) (by linarith : (0:ℝ) < s),
      mul_nonneg hr0 (by linarith : (0:ℝ) ≤ k - e)]
  -- (5)
  have hu5 : u < 1 / 5 := by linarith [mul_le_mul_of_nonneg_left hL1 hu0.le]
  have hv5 : v < 1 / 5 := by linarith [mul_le_mul_of_nonneg_left hM1 hv0.le]
  have hu1 : 21 / 128 < u := by linarith [mul_le_mul_of_nonneg_left hL2 hu0.le]
  have hw1 : w < 109 / 176 := by linarith [mul_le_mul_of_nonneg_left hM1 hw0]
  -- (6)
  have hX : 2 * u ≤ 1 - x := anchor_le hL0 (by linarith) (by linarith : 2 * u * (h - a) = 2 * s)
  have hcx : w * (f - g) * (c - x) = (1 - k) * (c - x) := by rw [hw]
  have hY : 2 * v ≤ y - w * (c - x) :=
    anchor_le hM0 (by linarith) (by linarith : 2 * v * (f - g) = 2 * s)
  -- `1 - r > x`, `x > b`, `e > y`
  have hxr : x < 1 - r := by linarith
  have hxb : b < x := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ e) (sub_nonneg.2 hcon),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - r - b) hy0]
  have hye : y < e := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ y - e) (by linarith : (0:ℝ) ≤ x - b),
      mul_nonneg hy0 (by linarith : (0:ℝ) ≤ 1 - r - x)]
  exact ⟨⟨hbu, hgu, by linarith, by linarith, by linarith, hsa, by linarith⟩, ⟨hke, hBr⟩,
    ⟨hu5, hv5, hu1, by linarith, by linarith, by linarith, by linarith, by linarith, hw0, hw1⟩,
    ⟨hX, by linarith⟩, ⟨hxr, hxb, hye⟩, ⟨hu0, hv0⟩⟩

/-- (7)–(10) in plain form, with `T = 1-v-y+w(g-x)-s`. -/
theorem Data.eliminations {l : ℝ} (H : Data s a b c d e f g h r k x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    0 ≤ ((1 - v - (h - a)) + g * w) * (x - u - s) - s * (1 - y) ∧
      0 ≤ ((1 - f) - r) * (1 - v - y + w * (g - x) - s) - (s + r * v) * x ∧
      0 ≤ (1 - v - (1 - r - g) * w) * (x - u) - (1 - r - u) * y - s ∧
      (((1 - v - (h - a)) + g * w) * (x - u - s) - s * (1 - y)) +
          (((1 - f) - r) * (1 - v - y + w * (g - x) - s) - (s + r * v) * x) +
          l * ((1 - v - (1 - r - g) * w) * (x - u) - (1 - r - u) * y - s) =
        ((((1 - v - (h - a)) + g * w) * (x - u - s) - s * (1 - y)) +
            ((1 - f) * (1 - v - y + w * (g - x) - s) - s * x) +
            l * ((1 - v - (1 - g) * w) * (x - u) - (1 - u) * y - s)) -
          r * ((1 - v - y + w * (g - x) - s) + v * x - l * w * (x - u) - l * y) := by
  obtain ⟨⟨hbu, hgu, hhv, hev, hA, -, -⟩, ⟨hke, hBr⟩, -, -, ⟨hxr, hxb, hye⟩, -⟩ :=
    H.gaps hu hv hw
  obtain ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, hbg, hr0, hrf, hhk,
    hk1, hL1, hL2, hM1, hg4, hc3, hx0, hx1, hy0, hy1, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9,
    h10⟩ := H
  refine ⟨?_, ?_, ?_, by ring⟩
  · -- (7)
    have hGCO : (c - b) * (1 - y) ≤ x - u - s := by
      linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ 1 - y),
        mul_nonneg (sub_nonneg.2 hgu) hy0]
    have hGCO0 : 0 ≤ x - u - s :=
      le_trans (mul_nonneg (by linarith : (0:ℝ) ≤ c - b) (by linarith : (0:ℝ) ≤ 1 - y)) hGCO
    linarith [mul_le_mul_of_nonneg_right h1 (by linarith : (0:ℝ) ≤ 1 - y),
      mul_le_mul_of_nonneg_left hGCO ha.le, mul_le_mul_of_nonneg_right hA hGCO0]
  · -- (8)
    have hrkx : r * x * (w * (f - g)) = r * x * (1 - k) := by rw [hw]
    linarith [mul_nonneg hx0 (sub_nonneg.2 h3),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f - r) (sub_nonneg.2 h7),
      mul_le_mul_of_nonneg_left hev (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) hx0),
      mul_le_mul_of_nonneg_left hhv
        (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f - r) (by linarith : (0:ℝ) ≤ 1 - x))]
  · -- (9)
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ e - y),
      mul_le_mul_of_nonneg_right hev (by linarith : (0:ℝ) ≤ x - u)]

/-- (11)–(15) in plain form. -/
theorem Data.R {l : ℝ} (H : Data s a b c d e f g h r k x y) (hl1 : 1 / 4 < l) (hl2 : l < 1 / 3)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    (0 < (x - u) / (1 - r - u) ∧ (x - u) / (1 - r - u) < 1) ∧
      y ≤ ((1 - v) * (x - u) - s) / (1 - r - u) ∧
      ((1 - v) * (x - u) - s) / (1 - r - u) < 1 / 2 ∧ 403 / 768 < x ∧
      1993 / 19200 < (1 - v - y + w * (g - x) - s) + v * x - l * w * (x - u) - l * y := by
  obtain ⟨⟨hbu, hgu, hhv, hev, hA, hsa, hsA⟩, ⟨hke, hBr⟩,
    ⟨hu5, hv5, hu1, hα, hsB, hB, hz0, hz1, hw0, hw1⟩, ⟨hX, hY⟩, ⟨hxr, hxb, hye⟩, ⟨hu0, hv0⟩⟩ :=
    H.gaps hu hv hw
  obtain ⟨-, -, hE3, -⟩ := H.eliminations (l := l) hu hv hw
  have hs1 := H.hs1
  have hs2 := H.hs2
  have hgf := H.hgf
  have hc3 := H.hc3
  have hy0 := H.hy0
  have h9 := H.h9
  have hM1 := H.hM1
  have hD0 : 0 < 1 - r - u := by linarith
  set θ := (x - u) / (1 - r - u) with hθ
  set y₀ := ((1 - v) * (x - u) - s) / (1 - r - u) with hy₀
  have hθD : θ * (1 - r - u) = x - u := div_mul_cancel₀ _ hD0.ne'
  have hy₀D : y₀ * (1 - r - u) = (1 - v) * (x - u) - s := div_mul_cancel₀ _ hD0.ne'
  have hθ0 : 0 < θ := div_pos (by linarith) hD0
  have hθ1 : θ < 1 := (div_lt_one hD0).2 (by linarith)
  -- (11)
  have h11 : y ≤ y₀ - (1 - r - g) * w * θ := by
    have hθw : (1 - r - g) * w * (θ * (1 - r - u)) = (1 - r - g) * w * (x - u) := by rw [hθD]
    have : (1 - r - u) * y ≤ (1 - r - u) * (y₀ - (1 - r - g) * w * θ) := by linarith
    exact le_of_mul_le_mul_left this hD0
  have hy₀0 : y ≤ y₀ := by
    linarith [mul_nonneg (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - r - g) hw0) hθ0.le]
  -- (12)
  have hy₀2 : y₀ < 1 / 2 := by
    have hN : (1 - v) * (x - u) - s ≤ (1 - v) * (65 / 128) - s := by
      linarith [mul_le_mul_of_nonneg_left (by linarith : x - u ≤ 65 / 128)
        (by linarith : (0:ℝ) ≤ 1 - v)]
    have hvD : s + s * v < v * (1 - r - u) := by
      linarith [mul_lt_mul_of_pos_left (by linarith : (f - g) + s < 1 - r - u) hv0]
    have hq : 0 ≤ (1 / 5 - v) * (31 / 65 - v) := mul_nonneg (by linarith) (by linarith)
    have h2N : 2 * ((1 - v) * (x - u) - s) < 1 - r - u := by
      by_contra hcon
      push Not at hcon
      linarith [mul_le_mul_of_nonneg_left hcon hv0.le,
        mul_le_mul_of_nonneg_left hN (by linarith : (0:ℝ) ≤ 2 * v),
        mul_lt_mul_of_pos_right hs1 (by linarith : (0:ℝ) < 1 + 3 * v)]
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_right hcon hD0.le]
  -- (13)
  have hx : 403 / 768 < x := by
    linarith [mul_pos (by linarith : (0:ℝ) < c - g) (by linarith : (0:ℝ) < 1 / 2 - y)]
  refine ⟨⟨hθ0, hθ1⟩, hy₀0, hy₀2, hx, ?_⟩
  -- (14)–(15)
  have h14 : 1 - v - s - (1 + l) * y₀ + v * x + w * (g - u) - (1 + l) * w * θ * (g - u) ≤
      (1 - v - y + w * (g - x) - s) + v * x - l * w * (x - u) - l * y := by
    have hE : (1 + l) * w * (θ * (1 - r - u)) = (1 + l) * w * (x - u) := by rw [hθD]
    linarith [mul_le_mul_of_nonneg_left h11 (by linarith : (0:ℝ) ≤ 1 + l)]
  have e1 := mul_nonneg (mul_nonneg (mul_nonneg hw0 hz0) (by linarith : (0:ℝ) ≤ 1 + l))
    (by linarith : (0:ℝ) ≤ 1 - θ)
  have e2 : v * (1 - x) < 1 / 5 * (1 / 2) :=
    mul_lt_mul'' hv5 (by linarith) hv0.le (by linarith [H.hx1])
  have e3 : (1 + l) * y₀ ≤ 4 / 3 * y₀ :=
    mul_le_mul_of_nonneg_right (by linarith) (by linarith)
  have e4 : l * w ≤ 1 / 3 * (5 / 8) := mul_le_mul hl2.le (by linarith) hw0 (by norm_num)
  have e5 : l * w * (g - u) ≤ 1 / 3 * (5 / 8) * (3 / 32) :=
    mul_le_mul e4 (by linarith) hz0 (by norm_num)
  linarith

/-- (16)–(17) in plain form. -/
theorem Data.final {l : ℝ} (H : Data s a b c d e f g h r k x y) (hl1 : 1 / 4 < l)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    0 < (1 - f) - s + l * (1 - u) ∧
      1 / 5 - 11 / 100 * (109 / 176) <
        ((1 - v - (h - a)) + g * w) - s - s * w + l * (1 - v + (g - u) * w) ∧
      (((1 - v - (h - a)) + g * w) * (x - u - s) - s * (1 - y)) +
          ((1 - f) * (1 - v - y + w * (g - x) - s) - s * x) +
          l * ((1 - v - (1 - g) * w) * (x - u) - (1 - u) * y - s) ≤
        (1 - v - (h - a)) * (1 - 3 * u - s) + (1 - u - (f - g)) * (1 - 3 * v - s) +
          2 * s * (u + v - 1) + l * (1 - 3 * u - 3 * v + 5 * u * v - s) -
          (g - u) * (1 - 3 * v - s) -
          w * (((1 - f) - s) * (c - g) - g * (1 - 3 * u) + s * (1 - 2 * u) +
            l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2)) ∧
      29 / 100 < 1 - 3 * v - s ∧
      3113 / 153600 < ((1 - f) - s) * (c - g) - g * (1 - 3 * u) + s * (1 - 2 * u) +
        l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2) := by
  obtain ⟨⟨hbu, hgu, hhv, hev, hA, hsa, hsA⟩, ⟨hke, hBr⟩,
    ⟨hu5, hv5, hu1, hα, hsB, hB, hz0, hz1, hw0, hw1⟩, ⟨hX, hY⟩, ⟨hxr, hxb, hye⟩, ⟨hu0, hv0⟩⟩ :=
    H.gaps hu hv hw
  have hs1 := H.hs1
  have hs2 := H.hs2
  obtain ⟨hav, hK0⟩ := av_K0_bound hs1 hs2 hl1 hu1 hu5 hv5 hsB H.hg4 H.hc3
  have hC2 : 0 < (1 - f) - s + l * (1 - u) := by
    linarith [mul_pos (by linarith : (0:ℝ) < l) (by linarith : (0:ℝ) < 1 - u)]
  have hC1 : 1 / 5 - 11 / 100 * (109 / 176) <
      ((1 - v - (h - a)) + g * w) - s - s * w + l * (1 - v + (g - u) * w) := by
    linarith [mul_nonneg H.hg.le hw0, mul_lt_mul'' hs2 hw1 (by linarith) hw0,
      mul_nonneg (mul_nonneg (by linarith : (0:ℝ) ≤ l) hz0) hw0,
      mul_lt_mul_of_pos_right hl1 (by linarith : (0:ℝ) < 1 - v),
      mul_lt_mul_of_pos_left (by linarith : (1:ℝ) / 5 < 1 - v) (by linarith : (0:ℝ) < l)]
  refine ⟨hC2, hC1, ?_, hav, hK0⟩
  linarith [mul_nonneg hC2.le (by linarith : (0:ℝ) ≤ y - 2 * v - w * (c - 1 + (1 - x))),
    mul_nonneg (by linarith : (0:ℝ) ≤
      ((1 - v - (h - a)) + g * w) - s - s * w + l * (1 - v + (g - u) * w))
      (by linarith : (0:ℝ) ≤ (1 - x) - 2 * u)]

/-- The Theorem in plain form: the eleven bounds force `r = 0` and `k = 1`. -/
theorem Data.rigid {l : ℝ} (H : Data s a b c d e f g h r k x y) (hl1 : 1 / 4 < l)
    (hl2 : l < 1 / 3) (hsc : ScalarIneq s l) : r = 0 ∧ k = 1 := by
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  obtain ⟨u, hu⟩ : ∃ u, u * (h - a) = s := ⟨s / (h - a), div_mul_cancel₀ _ hL0.ne'⟩
  obtain ⟨v, hv⟩ : ∃ v, v * (f - g) = s := ⟨s / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  obtain ⟨w, hw⟩ : ∃ w, w * (f - g) = 1 - k := ⟨(1 - k) / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  obtain ⟨-, -, ⟨hu5, hv5, -, -, -, -, hz0, -, hw0, -⟩, -, -, ⟨hu0, hv0⟩⟩ := H.gaps hu hv hw
  obtain ⟨hE1, hE2, hE3, h10⟩ := H.eliminations (l := l) hu hv hw
  obtain ⟨-, -, -, -, hR⟩ := H.R hl1 hl2 hu hv hw
  obtain ⟨-, -, h16, hav, hK0⟩ := H.final hl1 hu hv hw
  have hr0 := H.hr0
  have hscal := hsc u v (h - a) (f - g) hu0 hv0 (by linarith) hu hv
  have e1 := mul_nonneg hz0 (by linarith : (0:ℝ) ≤ 1 - 3 * v - s)
  have e2 := mul_nonneg hw0 (by linarith : (0:ℝ) ≤ ((1 - f) - s) * (c - g) - g * (1 - 3 * u) +
    s * (1 - 2 * u) + l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2))
  have e3 := mul_nonneg hr0 (by linarith : (0:ℝ) ≤
    (1 - v - y + w * (g - x) - s) + v * x - l * w * (x - u) - l * y)
  have hl0 : (0:ℝ) ≤ l := by linarith
  have e4 := mul_nonneg hl0 hE3
  have hw : w = 0 := eq_zero_of_mul_nonpos hw0 (by linarith : (0:ℝ) < ((1 - f) - s) * (c - g) -
    g * (1 - 3 * u) + s * (1 - 2 * u) + l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2))
    (by linarith)
  have hr : r = 0 := eq_zero_of_mul_nonpos hr0 (by linarith : (0:ℝ) <
    (1 - v - y + w * (g - x) - s) + v * x - l * w * (x - u) - l * y) (by linarith)
  subst hw
  exact ⟨hr, by linarith⟩

end Plain

/-! ### The claims of the manuscript -/

/-- **Claim** (`SHARP_EF_MOVING:claim-gaps`). If all eleven doubled areas are at least `s = 2A₀`,
then (with the notation of the module docstring):
(3) `b, g ≥ u`, `h ≤ 1-v+gw`, `e ≤ 1-v-(1-r-g)w`, `a ≤ A*`, `a > s`, `A* > s`;
(4) `k > e` and `B - r > s`; (5) `u, v < 1/5`, `u > 21/128`, `α > 2/15`, `s < B < 183/640`,
`0 ≤ z < 11/128`, `0 ≤ w < 109/176`; (6) `X = 1-x ≥ 2u`, `Y = y ≥ 2v + w(c-1+X)`;
and `1 - r > x`, `x > b`, `e > y`. `hand/SHARP_EF_MOVING.md`, lines 53-111.
Uses: SHARP_DF_MOVING:claim-bounds -/
theorem claim_gaps {a b c d e f g h r k x y : ℝ} (hyp : EFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (efMovingConfig a b c d e f g h r k x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let w := (1 - k) / (f - g)
    let z := g - u
    let α := 1 - v - (h - a)
    let B := 1 - f
    let Astar := α + g * w
    (u ≤ b ∧ u ≤ g ∧ h ≤ 1 - v + g * w ∧ e ≤ 1 - v - (1 - r - g) * w ∧ a ≤ Astar ∧
        s < a ∧ s < Astar) ∧
      (e < k ∧ s < B - r) ∧
      (u < 1 / 5 ∧ v < 1 / 5 ∧ 21 / 128 < u ∧ 2 / 15 < α ∧ s < B ∧ B < 183 / 640 ∧
        0 ≤ z ∧ z < 11 / 128 ∧ 0 ≤ w ∧ w < 109 / 176) ∧
      (2 * u ≤ 1 - x ∧ 2 * v + w * (c - 1 + (1 - x)) ≤ y) ∧
      (x < 1 - r ∧ b < x ∧ y < e) := by
  intro s u v w z α B Astar
  have H := Data.of_hs hyp hs
  have hM0 : 0 < f - g := by linarith [H.hgf]
  obtain ⟨h1, h2, h3, h4, h5, -⟩ := H.gaps (u := u) (v := v) (w := w)
    (div_mul_cancel₀ _ (by linarith [H.hah])) (div_mul_cancel₀ _ hM0.ne')
    (div_mul_cancel₀ _ hM0.ne')
  exact ⟨h1, h2, h3, h4, h5⟩

/-- **Claim** (`SHARP_EF_MOVING:claim-eliminations`). Under the assumption of `claim_gaps`:
(7) `E₁ = A*(x-u-s) - s(1-y) ≥ 0`; (8) `E₂ = (B-r)T - (s+rv)x ≥ 0` with
`T = 1-v-y+w(g-x)-s`; (9) `E₃ = {1-v-(1-r-g)w}(x-u) - (1-r-u)y - s ≥ 0`; and (10)
`E₁ + E₂ + λE₃ = Φ_F - rR`. `hand/SHARP_EF_MOVING.md`, lines 113-155. -/
theorem claim_eliminations {a b c d e f g h r k x y : ℝ}
    (hyp : EFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (efMovingConfig a b c d e f g h r k x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let w := (1 - k) / (f - g)
    let α := 1 - v - (h - a)
    let B := 1 - f
    let Astar := α + g * w
    let E₁ := Astar * (x - u - s) - s * (1 - y)
    let E₂ := (B - r) * efT v w g x y - (s + r * v) * x
    let E₃ := (1 - v - (1 - r - g) * w) * (x - u) - (1 - r - u) * y - s
    0 ≤ E₁ ∧ 0 ≤ E₂ ∧ 0 ≤ E₃ ∧
      E₁ + E₂ + sharpLambda * E₃ = efPhiF u v w g Astar B x y - r * efR u v w g x y := by
  intro s u v w α B Astar E₁ E₂ E₃
  have H := Data.of_hs hyp hs
  have hM0 : 0 < f - g := by linarith [H.hgf]
  unfold efPhiF efR efT
  exact H.eliminations (u := u) (v := v) (w := w) (div_mul_cancel₀ _ (by linarith [H.hah]))
    (div_mul_cancel₀ _ hM0.ne') (div_mul_cancel₀ _ hM0.ne')

/-- **Claim** (`SHARP_EF_MOVING:claim-R`). Under the assumption of `claim_gaps`, with
`D₀ = 1-r-u` and `y₀ = ((1-v)(x-u)-s)/D₀`: `0 < (x-u)/D₀ < 1`, (11) `y ≤ y₀`, (12) `y₀ < 1/2`,
(13) `x > 403/768`, and (15) `R > 1993/19200 > 1/10`. `hand/SHARP_EF_MOVING.md`, lines 157-204. -/
theorem claim_R {a b c d e f g h r k x y : ℝ} (hyp : EFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (efMovingConfig a b c d e f g h r k x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let w := (1 - k) / (f - g)
    let D₀ := 1 - r - u
    let y₀ := ((1 - v) * (x - u) - s) / D₀
    (0 < (x - u) / D₀ ∧ (x - u) / D₀ < 1) ∧ y ≤ y₀ ∧ y₀ < 1 / 2 ∧ 403 / 768 < x ∧
      1993 / 19200 < efR u v w g x y ∧ (1 / 10 : ℝ) < 1993 / 19200 := by
  intro s u v w D₀ y₀
  have H := Data.of_hs hyp hs
  obtain ⟨-, -, hl1, hl2⟩ := sharp_bounds
  have hM0 : 0 < f - g := by linarith [H.hgf]
  unfold efR efT
  obtain ⟨h1, h2, h3, h4, h5⟩ := H.R (u := u) (v := v) (w := w) hl1 (by linarith)
    (div_mul_cancel₀ _ (by linarith [H.hah])) (div_mul_cancel₀ _ hM0.ne')
    (div_mul_cancel₀ _ hM0.ne')
  exact ⟨h1, h2, h3, h4, h5, by norm_num⟩

/-- **Claim** (`SHARP_EF_MOVING:claim-final`). Under the assumption of `claim_gaps`: the
substitution coefficients `B - s + λ(1-u)` and `A* - s - sw + λ(1-v+zw)` are positive (the latter
exceeds `1/5 - (11/100)(109/176)`), (16) `Φ_F ≤ H₀ + λ(g₀-s) - z a_v - wK₀`, and (17)
`a_v > 29/100`, `K₀ > 3113/153600`. `hand/SHARP_EF_MOVING.md`, lines 206-243.
Uses: SHARP_DF_MOVING:claim-identity, SHARP_DF_MOVING:claim-coefficients -/
theorem claim_final {a b c d e f g h r k x y : ℝ} (hyp : EFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (efMovingConfig a b c d e f g h r k x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let w := (1 - k) / (f - g)
    let z := g - u
    let α := 1 - v - (h - a)
    let B := 1 - f
    let Astar := α + g * w
    0 < B - s + sharpLambda * (1 - u) ∧
      1 / 5 - 11 / 100 * (109 / 176) < Astar - s - s * w + sharpLambda * (1 - v + z * w) ∧
      efPhiF u v w g Astar B x y ≤
        sharpH s u v + sharpLambda * (sharpG u v - s) - z * dfAv v - w * dfK0 u B c g ∧
      29 / 100 < dfAv v ∧ 3113 / 153600 < dfK0 u B c g := by
  intro s u v w z α B Astar
  have H := Data.of_hs hyp hs
  obtain ⟨-, -, hl1, -⟩ := sharp_bounds
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  have hu : u * (h - a) = s := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = s := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by linarith [H.hs1]) hL0
  have hv0 : 0 < v := div_pos (by linarith [H.hs1]) hM0
  have hα' : sharpAlpha sharpS u v = 1 - v - (h - a) := sharpAlpha_of_mul hu0.ne' hu v
  have hβ' : sharpBeta sharpS u v = 1 - u - (f - g) := sharpBeta_of_mul hv0.ne' hv u
  unfold efPhiF efT dfAv dfK0 sharpH sharpG
  rw [hα', hβ']
  exact H.final (w := w) hl1 hu hv (div_mul_cancel₀ _ hM0.ne')

/-- **Theorem** (`SHARP_EF_MOVING:Theorem`). Under (1)–(2) and positivity of the eleven oriented
doubled areas, the minimum of the eleven ordinary triangle areas is at most `A₀`. If all eleven
are at least `A₀`, then `r = 0`, `k = 1`, and the configuration is exactly the equality
configuration of `HAND_PROOF.md`. `hand/SHARP_EF_MOVING.md`, lines 12-51, 245-255.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_DF_MOVING:claim-bounds,
SHARP_DF_MOVING:claim-identity, SHARP_EF_MOVING:claim-gaps, SHARP_EF_MOVING:claim-eliminations,
SHARP_EF_MOVING:claim-R, SHARP_EF_MOVING:claim-final, HAND_PROOF:Theorem1 -/
theorem mainTheorem {a b c d e f g h r k x y : ℝ} (hyp : EFMovingHyp a b c d e f g h r k x y)
    (hch : InChamber (efMovingConfig a b c d e f g h r k x y)) :
    (∃ i, chamberArea (efMovingConfig a b c d e f g h r k x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (efMovingConfig a b c d e f g h r k x y) i) →
        r = 0 ∧ k = 1 ∧ efMovingConfig a b c d e f g h r k x y = optimalConfiguration) := by
  have hord := hyp.1
  have hO := hyp.2.2.2.2.2.2.2
  have key := moving_wrapper (Z := r = 0 ∧ k = 1) hord hO hch fun hs => by
    obtain ⟨-, -, hl1, hl2⟩ := sharp_bounds
    obtain ⟨hr, hk⟩ := (Data.of_hs hyp hs).rigid hl1 (by linarith) scalarIneq_sharp
    subst hr hk
    refine ⟨⟨rfl, rfl⟩, ?_⟩
    simp only [efMovingConfig, sharpConfig, baseConfig, sub_zero]
  exact ⟨key.1, fun h => ⟨(key.2 h).1.1, (key.2 h).1.2, (key.2 h).2⟩⟩

end Heilbronn.SharpEFMoving
