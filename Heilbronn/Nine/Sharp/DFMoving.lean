module

public import Heilbronn.Nine.Sharp.BCMoving

/-! # A simultaneous D/F sharp chamber under rational bounds

The sharp chamber of `Chamber.chamber_le` with `D = (1-r,d)` and `F = (f,k)` moved inward.
`SixBoundarySideOpposite.sharp23` uses `dfMoving_chamber_le`, with the identity labels; `SharpEFMoving`
reuses `av_K0_bound`.

**Setting.** `A=(0,a), B=(b,0), C=(c,0), E=(1,e), G=(g,1), H=(0,h)`, `O=(x,y)` in the square, the
strict orders (`SharpOrders`), `0 ≤ r ≤ 1-f`, `h ≤ k ≤ 1`, and the rational bounds
`11/20 ≤ h-a ≤ 2/3`, `f-g ≥ 11/20`, `g ≤ 1/4`, `c ≥ 2/3` (`RationalBox`; hypotheses, supplied by
the case splits of the caller). The chamber is positivity of the eleven oriented doubled areas
(`chamberSarea_dfMovingConfig`). With `s = 2A₀`, `L = h-a`, `M = f-g`, `u = s/L`, `v = s/M`,
`w = (1-k)/M`, `z = g-u`, `α = 1-v-L`, `B = 1-f`, `β = 1-u-M = B+z`, `A* = α+gw`, the auxiliary
expressions are `a_v = 1-3v-s`, `T = B(1-3v) + α - s - v(1-2u) + λ(1-v)`,
`K₀ = (B-s)(c-g) - g(1-3u) + s(1-2u) + λ(c(1-u) - g(1-3u) - 2u²)` and
`K₁ = -B(c-g) + (1+λ)g - λu - s`.

**Results.**
* `chamberSarea_dfMovingConfig`: the eleven oriented doubled areas.
* `dfMoving_chamber_le`: minimum of the eleven areas `≤ A₀`; if all are `≥ A₀` then `r = 0`, `k = 1` and the
  configuration is the sharp configuration.
* `Data.bounds`: consequences of the anchor costs and the diagonal sums.
* `Data.eliminations`: the three scalar inequalities with the inward losses retained.
* `Data.identity`: positivity of the substitution coefficients and
  `H + λ(g₀-s) ≥ z a_v + rT + vr² + w(K₀ + rK₁)`.
* `Data.coefficients`: `a_v > 29/100`, `K₀ > 3113/153600`, `T > 637/4800`,
  `K₁ > -75761/409600`, `T + wK₁ > 157073/8650752`.

The proofs go through `Data`, the hypotheses and the eleven bounds as plain real inequalities
(with a general threshold `s`), under the assumption "all eleven doubled areas are at least `s`"
(which implies the chamber). The bounds on `a_v` and `K₀` are the lemma `av_K0_bound`, shared
with `SharpEFMoving`. `H`, written with `α = 1-v-L`, `β = 1-u-M`, is `sharpH s u v` since
`s/u = L`, `s/v = M`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SharpDFMoving

open Heilbronn.Nine.SharpBCMoving

/-- The D/F-moving configuration: `D = (1-r,d)`, `F = (f,k)`, the other points as in
`baseConfig`, in the order `A, B, C, D, E, F, G, H, O`. -/
def dfMovingConfig (a b c d e f g h r k x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, 0) (c, 0) (1 - r, d) (1, e) (f, k) (g, 1) (0, h) (x, y)

/-- The rational bounds `11/20 ≤ h-a ≤ 2/3`, `f-g ≥ 11/20`, `g ≤ 1/4`, `c ≥ 2/3`. -/
def RationalBox (a c f g h : ℝ) : Prop :=
  11 / 20 ≤ h - a ∧ h - a ≤ 2 / 3 ∧ 11 / 20 ≤ f - g ∧ g ≤ 1 / 4 ∧ 2 / 3 ≤ c

/-- The hypotheses of `dfMoving_chamber_le` other than the chamber: the strict orders,
`0 ≤ r ≤ 1-f`, `h ≤ k ≤ 1`, the rational bounds `RationalBox` and `O ∈ [0,1]²`. -/
def DFMovingHyp (a b c d e f g h r k x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ r ∧ r ≤ 1 - f ∧ h ≤ k ∧ k ≤ 1 ∧ RationalBox a c f g h ∧
    ((x, y) : Point) ∈ unitSquare

/-- The eleven oriented doubled areas of the D/F-moving chamber:
`ABH = b(h-a)`, `ABC = a(c-b)`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)+r(k-e)`,
`GHF = (f-g)(1-h)+g(1-k)`, `GEF = (f-g)(1-e)-(1-g)(1-k)`, `ADO = (1-r)(y-a)-(d-a)x`,
`DHO = (1-r)(h-y)-(h-d)x`, `BOE = e(x-b)-(1-b)y`, `GCO = x-c+(c-g)y`, `OCF = k(c-x)+(f-c)y`. -/
theorem chamberSarea_dfMovingConfig (a b c d e f g h r k x y : ℝ) :
    chamberSarea (dfMovingConfig a b c d e f g h r k x y) =
      ![b * (h - a), a * (c - b), g * (h - a), (1 - f) * (e - d) + r * (k - e),
        (f - g) * (1 - h) + g * (1 - k), (f - g) * (1 - e) - (1 - g) * (1 - k),
        (1 - r) * (y - a) - (d - a) * x, (1 - r) * (h - y) - (h - d) * x,
        e * (x - b) - (1 - b) * y, x - c + (c - g) * y, k * (c - x) + (f - c) * y] := by
  funext i
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, dfMovingConfig, sharpConfig, sarea,
      Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val] <;> ring

/-! ### The plain-real form -/

/-- The bounds `a_v > 29/100` and `K₀ > 3113/153600` (also used by `SharpEFMoving`), from
`21/128 < u < 1/5`, `v < 1/5`, `s < B` and the rational bounds `g ≤ 1/4`, `c ≥ 2/3`. -/
theorem av_K0_bound {s l u v B c g : ℝ} (hs1 : 7 / 64 < s) (hs2 : s < 11 / 100)
    (hl1 : 1 / 4 < l) (hu1 : 21 / 128 < u) (hu5 : u < 1 / 5) (hv5 : v < 1 / 5) (hsB : s < B)
    (hg4 : g ≤ 1 / 4) (hc3 : 2 / 3 ≤ c) :
    29 / 100 < 1 - 3 * v - s ∧
      3113 / 153600 < (B - s) * (c - g) - g * (1 - 3 * u) + s * (1 - 2 * u) +
        l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2) := by
  refine ⟨by linarith, ?_⟩
  have hbr : 8 / 15 - 65 / 512 - 2 / 25 < c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2 := by
    nlinarith [mul_le_mul_of_nonneg_right hc3 (by linarith : (0:ℝ) ≤ 1 - u),
      mul_le_mul_of_nonneg_right hg4 (by linarith : (0:ℝ) ≤ 1 - 3 * u),
      mul_lt_mul'' hu5 hu5 (by linarith) (by linarith)]
  nlinarith [mul_pos (by linarith : (0:ℝ) < B - s) (by linarith : (0:ℝ) < c - g),
    mul_le_mul_of_nonneg_right hg4 (by linarith : (0:ℝ) ≤ 1 - 3 * u),
    mul_le_mul_of_nonneg_right hs1.le (by linarith : (0:ℝ) ≤ 1 - 2 * u),
    mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ c * (1 - u) - g * (1 - 3 * u) -
      2 * u ^ 2)]

/-- The hypotheses `DFMovingHyp` and the eleven bounds "doubled area `≥ s`", as plain real
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
  h3 : s ≤ (1 - f) * (e - d) + r * (k - e)
  h4 : s ≤ (f - g) * (1 - h) + g * (1 - k)
  h5 : s ≤ (f - g) * (1 - e) - (1 - g) * (1 - k)
  h6 : s ≤ (1 - r) * (y - a) - (d - a) * x
  h7 : s ≤ (1 - r) * (h - y) - (h - d) * x
  h8 : s ≤ e * (x - b) - (1 - b) * y
  h9 : s ≤ x - c + (c - g) * y
  h10 : s ≤ k * (c - x) + (f - c) * y

theorem Data.of_hs {a b c d e f g h r k x y : ℝ} (hyp : DFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (dfMovingConfig a b c d e f g h r k x y) i) :
    Data sharpS a b c d e f g h r k x y := by
  obtain ⟨⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩, hr0, hrf, hhk, hk1,
    ⟨hL1, hL2, hM1, hg4, hc3⟩, hx0, hx1, hy0, hy1⟩ := hyp
  obtain ⟨hs1, hs2, -, -⟩ := sharp_bounds
  rw [chamberSarea_dfMovingConfig] at hs
  exact ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, hr0, hrf, hhk, hk1,
    hL1, hL2, hM1, hg4, hc3, hx0, hx1, hy0, hy1, by simpa using hs 0, by simpa using hs 1,
    by simpa using hs 2, by simpa using hs 3, by simpa using hs 4, by simpa using hs 5,
    by simpa using hs 6, by simpa using hs 7, by simpa using hs 8, by simpa using hs 9,
    by simpa using hs 10⟩

section Plain

variable {s a b c d e f g h r k x y u v w : ℝ}

/-- The first bounds in plain form, with `uL = vM = s`, `wM = 1-k`: consequences of the anchor
costs and the diagonal sums; also `u, v > 0`, `x > b`, `e > y`. -/
theorem Data.bounds (H : Data s a b c d e f g h r k x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    (u ≤ b ∧ u ≤ g ∧ h ≤ 1 - v + g * w ∧ e ≤ 1 - v - (1 - g) * w ∧
        a ≤ (1 - v - (h - a)) + g * w ∧ 0 ≤ g - u ∧ s < a ∧ s < (1 - v - (h - a)) + g * w) ∧
      (e < k ∧ s < 1 - f) ∧
      (u < 1 / 5 ∧ v < 1 / 5 ∧ 21 / 128 < u ∧ 2 / 15 < 1 - v - (h - a) ∧
        1 - f < 183 / 640) ∧
      (0 ≤ w ∧ w < 109 / 176) ∧
      (2 * u + r ≤ 1 - x ∧ 2 * v + w * (c - 1 + (1 - x)) ≤ y) ∧
      (0 < u ∧ 0 < v ∧ b < x ∧ y < e) := by
  obtain ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, hr0, hrf, hhk, hk1,
    hL1, hL2, hM1, hg4, hc3, hx0, hx1, hy0, hy1, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9,
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
  have hgw' : (1 - g) * (w * (f - g)) = (1 - g) * (1 - k) := by rw [hw]
  have hev : v ≤ 1 - e - (1 - g) * w := anchor_le hM0 (by linarith) hv
  have hsa : s < a := by linarith [mul_pos ha (by linarith : (0:ℝ) < 1 - (c - b))]
  -- `e < k` and `s < 1 - f`
  have hke : e < k := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg hM0.le (sub_nonneg.2 hcon),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ 1 - k)]
  have hsB : s < 1 - f := by
    linarith [mul_le_mul_of_nonneg_right hrf (by linarith : (0:ℝ) ≤ k - e),
      mul_pos (by linarith : (0:ℝ) < 1 - f) hd,
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ 1 - k)]
  -- `21/128 < u < 1/5` and `v < 1/5`
  have hu5 : u < 1 / 5 := by
    linarith [mul_le_mul_of_nonneg_left hL1 hu0.le]
  have hv5 : v < 1 / 5 := by
    linarith [mul_le_mul_of_nonneg_left hM1 hv0.le]
  have hu1 : 21 / 128 < u := by
    linarith [mul_le_mul_of_nonneg_left hL2 hu0.le]
  -- `w < 109/176`
  have hw1 : w < 109 / 176 := by
    linarith [mul_le_mul_of_nonneg_left hM1 hw0]
  -- the diagonal sums
  have hX : 2 * u ≤ 1 - r - x :=
    anchor_le hL0 (by linarith) (by linarith : 2 * u * (h - a) = 2 * s)
  have hcx : w * (f - g) * (c - x) = (1 - k) * (c - x) := by rw [hw]
  have hY : 2 * v ≤ y - w * (c - x) :=
    anchor_le hM0 (by linarith) (by linarith : 2 * v * (f - g) = 2 * s)
  -- signs of BOE
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
  exact ⟨⟨hbu, hgu, by linarith, by linarith, by linarith, by linarith, hsa, by linarith⟩,
    ⟨hke, hsB⟩, ⟨hu5, hv5, hu1, by linarith, by linarith⟩, ⟨hw0, hw1⟩,
    ⟨by linarith, by linarith⟩, ⟨hu0, hv0, hxb, hye⟩⟩

/-- The three scalar inequalities with the inward losses retained, in plain form:
`s(1-y) ≤ A*(x-u-s)`, `(s-rv)x ≤ B{(1-r)(1-v-y+w(g-x)) - s}` and
`s ≤ (1-v-(1-g)w)(x-u) - (1-u)y`; also `b < x`, `y < e`. -/
theorem Data.eliminations (H : Data s a b c d e f g h r k x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    (b < x ∧ y < e) ∧
      s * (1 - y) ≤ ((1 - v - (h - a)) + g * w) * (x - u - s) ∧
      (s - r * v) * x ≤ (1 - f) * ((1 - r) * (1 - v - y + w * (g - x)) - s) ∧
      s ≤ (1 - v - (1 - g) * w) * (x - u) - (1 - u) * y := by
  obtain ⟨⟨hbu, hgu, hhv, hev, hA, -, -, -⟩, -, -, ⟨hw0, -⟩, ⟨hX, -⟩, ⟨hu0, hv0, hxb, hye⟩⟩ :=
    H.bounds hu hv hw
  obtain ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1, hr0, hrf, hhk, hk1,
    hL1, hL2, hM1, hg4, hc3, hx0, hx1, hy0, hy1, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9,
    h10⟩ := H
  refine ⟨⟨hxb, hye⟩, ?_, ?_, ?_⟩
  · -- `s(1-y) ≤ A*(x-u-s)`
    have hGCO : (c - b) * (1 - y) ≤ x - u - s := by
      linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ 1 - y),
        mul_nonneg (sub_nonneg.2 hgu) hy0]
    have hGCO0 : 0 ≤ x - u - s :=
      le_trans (mul_nonneg (by linarith : (0:ℝ) ≤ c - b) (by linarith : (0:ℝ) ≤ 1 - y)) hGCO
    linarith [mul_le_mul_of_nonneg_right h1 (by linarith : (0:ℝ) ≤ 1 - y),
      mul_le_mul_of_nonneg_left hGCO ha.le, mul_le_mul_of_nonneg_right hA hGCO0]
  · -- `(s-rv)x ≤ B{(1-r)(1-v-y+w(g-x)) - s}`
    have hrkx : r * x * (w * (f - g)) = r * x * (1 - k) := by rw [hw]
    linarith [mul_nonneg hx0 (sub_nonneg.2 h3),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (sub_nonneg.2 h7),
      mul_le_mul_of_nonneg_left hev (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f - r) hx0),
      mul_le_mul_of_nonneg_left hhv
        (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ 1 - r - x))]
  · -- the BOE bound
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ e - y),
      mul_le_mul_of_nonneg_right hev (by linarith : (0:ℝ) ≤ x - u)]

/-- Positivity of the substitution coefficients and the combined inequality
`H + λ(g₀-s) ≥ z a_v + rT + vr² + w(K₀ + rK₁)`, in plain form. -/
theorem Data.identity {l : ℝ} (H : Data s a b c d e f g h r k x y) (hl1 : 1 / 4 < l)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    1 / 5 - s ^ 2 < (1 - f) * (1 - r) - s + l * (1 - u) ∧ 0 < 1 / 5 - s ^ 2 ∧
      1 / 5 - 11 / 100 * (109 / 176) <
        ((1 - v - (h - a)) + g * w) - s + r * v - (1 - f) * (1 - r) * w +
          l * (1 - v - (1 - g) * w) + w * ((1 - f) * (1 - r) - s + l * (1 - u)) ∧
      0 < 1 / 5 - 11 / 100 * (109 / 176 : ℝ) ∧
      (g - u) * (1 - 3 * v - s) +
          r * ((1 - f) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) + l * (1 - v)) +
          v * r ^ 2 +
          w * (((1 - f) - s) * (c - g) - g * (1 - 3 * u) + s * (1 - 2 * u) +
              l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2) +
            r * (-(1 - f) * (c - g) + (1 + l) * g - l * u - s)) ≤
        (1 - v - (h - a)) * (1 - 3 * u - s) + (1 - u - (f - g)) * (1 - 3 * v - s) +
          2 * s * (u + v - 1) + l * (1 - 3 * u - 3 * v + 5 * u * v - s) := by
  obtain ⟨⟨hbu, hgu, hhv, hev, hA, hz, hsa, hsA⟩, ⟨hke, hsB⟩, ⟨hu5, hv5, hu1, hα, hB⟩,
    ⟨hw0, hw1⟩, ⟨hX, hY⟩, ⟨hu0, hv0, hxb, hye⟩⟩ := H.bounds hu hv hw
  obtain ⟨-, h8, h9, h10⟩ := H.eliminations hu hv hw
  have hs1 := H.hs1
  have hs2 := H.hs2
  have hr0 := H.hr0
  have hrf := H.hrf
  have hC2 : 1 / 5 - s ^ 2 < (1 - f) * (1 - r) - s + l * (1 - u) := by
    linarith [mul_le_mul_of_nonneg_left hrf (by linarith : (0:ℝ) ≤ 1 - f),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f - s) (by linarith : (0:ℝ) ≤ 1 - (1 - f) - s),
      mul_lt_mul_of_pos_right hl1 (by linarith : (0:ℝ) < 1 - u),
      mul_lt_mul_of_pos_left (by linarith : (1:ℝ) / 5 < 1 - u) (by linarith : (0:ℝ) < l)]
  have hs5 : 0 < 1 / 5 - s ^ 2 := by linarith [mul_lt_mul'' hs2 hs2 (by linarith) (by linarith)]
  have hC12 : 1 / 5 - 11 / 100 * (109 / 176) <
      ((1 - v - (h - a)) + g * w) - s + r * v - (1 - f) * (1 - r) * w +
        l * (1 - v - (1 - g) * w) + w * ((1 - f) * (1 - r) - s + l * (1 - u)) := by
    linarith [mul_nonneg hr0 hv0.le, mul_lt_mul'' hs2 hw1 (by linarith) hw0,
      mul_nonneg (mul_nonneg (by linarith : (0:ℝ) ≤ l) hz) hw0,
      mul_lt_mul_of_pos_right hl1 (by linarith : (0:ℝ) < 1 - v),
      mul_lt_mul_of_pos_left (by linarith : (1:ℝ) / 5 < 1 - v) (by linarith : (0:ℝ) < l)]
  refine ⟨hC2, hs5, hC12, by norm_num, ?_⟩
  linarith [mul_le_mul_of_nonneg_left h10 (by linarith : (0:ℝ) ≤ l),
    mul_nonneg (by linarith : (0:ℝ) ≤ (1 - f) * (1 - r) - s + l * (1 - u))
      (by linarith : (0:ℝ) ≤ y - 2 * v - w * (c - 1 + (1 - x))),
    mul_nonneg (by linarith : (0:ℝ) ≤ ((1 - v - (h - a)) + g * w) - s + r * v -
      (1 - f) * (1 - r) * w + l * (1 - v - (1 - g) * w) +
        w * ((1 - f) * (1 - r) - s + l * (1 - u)))
      (by linarith : (0:ℝ) ≤ (1 - x) - 2 * u - r)]

/-- The coefficient bounds in plain form: `a_v > 29/100`, `K₀ > 3113/153600`, `T > 637/4800`,
`K₁ > -75761/409600` and `T + wK₁ > 157073/8650752`. -/
theorem Data.coefficients {l : ℝ} (H : Data s a b c d e f g h r k x y) (hl1 : 1 / 4 < l)
    (hu : u * (h - a) = s) (hv : v * (f - g) = s) (hw : w * (f - g) = 1 - k) :
    29 / 100 < 1 - 3 * v - s ∧
      3113 / 153600 < ((1 - f) - s) * (c - g) - g * (1 - 3 * u) + s * (1 - 2 * u) +
        l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2) ∧
      637 / 4800 < (1 - f) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
        l * (1 - v) ∧
      -75761 / 409600 < -(1 - f) * (c - g) + (1 + l) * g - l * u - s ∧
      157073 / 8650752 < (1 - f) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
        l * (1 - v) + w * (-(1 - f) * (c - g) + (1 + l) * g - l * u - s) := by
  obtain ⟨⟨hbu, hgu, hhv, hev, hA, hz, hsa, hsA⟩, ⟨hke, hsB⟩, ⟨hu5, hv5, hu1, hα, hB⟩,
    ⟨hw0, hw1⟩, -, ⟨hu0, hv0, hxb, hye⟩⟩ := H.bounds hu hv hw
  have hs1 := H.hs1
  have hs2 := H.hs2
  have hc1 := H.hc1
  obtain ⟨hav, hK0⟩ := av_K0_bound hs1 hs2 hl1 hu1 hu5 hv5 hsB H.hg4 H.hc3
  have hT : 637 / 4800 < (1 - f) * (1 - 3 * v) + (1 - v - (h - a)) - s - v * (1 - 2 * u) +
      l * (1 - v) := by
    linarith [mul_le_mul_of_nonneg_right hsB.le (by linarith : (0:ℝ) ≤ 1 - 3 * v),
      mul_le_mul_of_nonneg_right hs1.le (by linarith : (0:ℝ) ≤ 1 - 3 * v),
      mul_le_mul_of_nonneg_right hv5.le (by linarith : (0:ℝ) ≤ 1 - 2 * u),
      mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - v)]
  have hK1 : -75761 / 409600 < -(1 - f) * (c - g) + (1 + l) * g - l * u - s := by
    linarith [mul_le_mul_of_nonneg_left hc1.le (by linarith : (0:ℝ) ≤ 1 - f),
      mul_nonneg (by linarith : (0:ℝ) ≤ l) hz,
      mul_lt_mul'' hB (by linarith : 1 - g < 107 / 128) (by linarith) (by linarith [H.hgf])]
  refine ⟨hav, hK0, hT, hK1, ?_⟩
  linarith [mul_le_mul_of_nonneg_left hK1.le hw0]

/-- `dfMoving_chamber_le` in plain form: the eleven bounds force `r = 0` and `k = 1`. -/
theorem Data.rigid {l : ℝ} (H : Data s a b c d e f g h r k x y) (hl1 : 1 / 4 < l)
    (hsc : ScalarIneq s l) : r = 0 ∧ k = 1 := by
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  obtain ⟨u, hu⟩ : ∃ u, u * (h - a) = s := ⟨s / (h - a), div_mul_cancel₀ _ hL0.ne'⟩
  obtain ⟨v, hv⟩ : ∃ v, v * (f - g) = s := ⟨s / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  obtain ⟨w, hw⟩ : ∃ w, w * (f - g) = 1 - k := ⟨(1 - k) / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  obtain ⟨⟨-, -, -, -, -, hz, -, -⟩, -, ⟨hu5, hv5, -, -, -⟩, ⟨hw0, -⟩, -, ⟨hu0, hv0, -, -⟩⟩ :=
    H.bounds hu hv hw
  obtain ⟨-, -, -, -, h12⟩ := H.identity hl1 hu hv hw
  obtain ⟨hav, hK0, -, -, hTK⟩ := H.coefficients hl1 hu hv hw
  have hr0 := H.hr0
  have hscal := hsc u v (h - a) (f - g) hu0 hv0 (by linarith) hu hv
  have e1 := mul_nonneg hz (by linarith : (0:ℝ) ≤ 1 - 3 * v - s)
  have e2 := mul_nonneg hw0 (by linarith : (0:ℝ) ≤ ((1 - f) - s) * (c - g) - g * (1 - 3 * u) +
    s * (1 - 2 * u) + l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2))
  have e3 := mul_nonneg hr0 (by linarith : (0:ℝ) ≤ (1 - f) * (1 - 3 * v) + (1 - v - (h - a)) -
    s - v * (1 - 2 * u) + l * (1 - v) + w * (-(1 - f) * (c - g) + (1 + l) * g - l * u - s))
  have e4 : 0 ≤ v * r ^ 2 := mul_nonneg hv0.le (sq_nonneg r)
  have hw : w = 0 := eq_zero_of_mul_nonpos hw0 (by linarith : (0:ℝ) < ((1 - f) - s) * (c - g) -
    g * (1 - 3 * u) + s * (1 - 2 * u) + l * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2))
    (by linarith)
  have hr : r = 0 := eq_zero_of_mul_nonpos hr0 (by linarith : (0:ℝ) < (1 - f) * (1 - 3 * v) +
    (1 - v - (h - a)) - s - v * (1 - 2 * u) + l * (1 - v) +
      w * (-(1 - f) * (c - g) + (1 + l) * g - l * u - s)) (by linarith)
  subst hw
  refine ⟨hr, by linarith⟩

end Plain

/-! ### The chamber bound -/

/-- **The D/F-moving chamber.** Under `DFMovingHyp` (which includes the closed inequalities
`0 ≤ r ≤ 1-f`, `h ≤ k ≤ 1` and the rational bounds) and positivity of the eleven oriented doubled
areas, the minimum of the eleven ordinary areas is at most `A₀`. If all eleven are at least `A₀`,
then `r = 0`, `k = 1`, and the configuration is exactly the construction. -/
theorem dfMoving_chamber_le {a b c d e f g h r k x y : ℝ} (hyp : DFMovingHyp a b c d e f g h r k x y)
    (hch : InChamber (dfMovingConfig a b c d e f g h r k x y)) :
    (∃ i, chamberArea (dfMovingConfig a b c d e f g h r k x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (dfMovingConfig a b c d e f g h r k x y) i) →
        r = 0 ∧ k = 1 ∧ dfMovingConfig a b c d e f g h r k x y = optimalConfiguration) := by
  have hord := hyp.1
  have hO := hyp.2.2.2.2.2.2
  have key := moving_wrapper (Z := r = 0 ∧ k = 1) hord hO hch fun hs => by
    obtain ⟨-, -, hl1, -⟩ := sharp_bounds
    obtain ⟨hr, hk⟩ := (Data.of_hs hyp hs).rigid hl1 scalarIneq_sharp
    subst hr hk
    refine ⟨⟨rfl, rfl⟩, ?_⟩
    simp only [dfMovingConfig, sharpConfig, baseConfig, sub_zero]
  exact ⟨key.1, fun h => ⟨(key.2 h).1.1, (key.2 h).1.2, (key.2 h).2⟩⟩

end Heilbronn.Nine.SharpDFMoving
