module

public import Heilbronn.Nine.TypeII.Unbalanced.RightHull
public import Heilbronn.Nine.TypeII.Unbalanced.OneUpperRadial
public import Heilbronn.Nine.TypeII.Unbalanced.OccupiedLowerEar
public import Heilbronn.Nine.TypeII.Unbalanced.ChainBasic

/-! # A complete line-sign exclusion in the final unbalanced Type-II case
(`docs/proof/nine/UNBALANCED_FINAL_NEGATIVE_LINE.md`)

**Role.** Primary route: step 3 of `UNBALANCED_FINAL_LOWER_WEDGE:claim-chain` (§5, line 278).

**Setting** (lines 5-31, `NegSetting`): `Row123 l b P Q R S T`, minimum area at least `A₀`
(doubled threshold `s = 8/73 < 2A₀`), the right hull the quadrilateral `B, R, S, C` with `T`
inside, in support cell II; `Q` (central) below `CE` and `DR` and above `ER`
(`UNBALANCED_OCCUPIED_LOWER_EAR:Theorem1`); `T` above `DR` and below `CE`; `P` above `CE` and
`DR`. Write `R = (r, u)`, `S = (k, t)`, `q = 1 - λ`, `L = 1 - r`, `v = 1 - u`,
`α = [ERC] = v - qL`, `T = (x, y)`, `H = [CET] = 1 - y - q(1 - x)`, `d = [DRT] = vx - r(1 - y)`.

The closed forms (8) of the stress at the auxiliary points `T₀`, `T₁` are defined explicitly
(generic in `s`): `alphaFn` (`α`), `jFn` (`J = v - rs/L`), `h0Fn, h1Fn` (`H₀, H₁`),
`f0Fn, f1Fn` (`F₀, F₁`); `n0Fn, n1Fn` are `N₀ = LJ·F₀`, `N₁ = L·F₁` at `v = 1` (10), and
`p0Poly, p1Poly` the discriminant numerators (12).

**Results.**
* `claim_QinECT`: `[CQT] > 0`; if `[QTE] < 0` then `Q ∈ int ECT`.
* `claim_F` (1): if `[QTE] < 0`, `F = (qr - s)H - s(2qr + v + d) ≥ 0`.
* `claim_params` (2)-(3): `α ≥ Ks > 13/16`, `qr ≥ 3s`, `qL < 3/16`, `128/201 < r < 65/73`,
  `vL > s`.
* `claim_two_lines` (4)-(7): `F ≤ max(F₀, F₁)`.
* `claim_v1` (8)-(9): `F₀, F₁` increase with `v`, so it suffices to treat `v = 1`.
* `claim_disc` (10)-(15): `P₀, P₁ < 0` on `[1/2, 65/73]`, so `N₀, N₁ < 0` for every real `q`
  and `F₀(q, r, 1), F₁(q, r, 1) < 0`.
* `theorem1`: `[QTE] < 0` is impossible, so `[QTE] > 0`.

Implicit in the manuscript: `claim_params` does not use `[QTE] < 0` and is stated without it;
it is reused by `UNBALANCED_FINAL_LOWER_WEDGE` (`r > 128/201`). Theorem 1 keeps the placement of
`P` as hypotheses, as stated ("in this placement"), although its proof uses only the other eight
points.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.UnbalancedFinalNegativeLine

open UnbalancedRightHull UnbalancedChain

variable {l b : ℝ} {P Q R S T : Point}

/-- The standing placement of the note (minimum area at least `A₀`). -/
structure NegSetting (l b : ℝ) (P Q R S T : Point) : Prop where
  row : Row123 l b P Q R S T
  min : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)
  quad : QuadHull (ptB b) R S ptC T
  cell : CellII (ptB b) R S ptC T
  Q_below_CE : sarea (ptE l) ptC Q < 0
  Q_below_DR : sarea ptD R Q < 0
  Q_above_ER : 0 < sarea (ptE l) R Q
  T_above_DR : 0 < sarea ptD R T
  T_below_CE : sarea (ptE l) ptC T < 0
  P_above_CE : 0 < sarea (ptE l) ptC P
  P_above_DR : 0 < sarea ptD R P

/-! ### The closed forms (8), (10), (12) -/

/-- `α = v - q(1 - r)`. -/
def alphaFn (q r v : ℝ) : ℝ := v - q * (1 - r)

/-- `J = v - rs/L`, `L = 1 - r`. -/
def jFn (s r v : ℝ) : ℝ := v - r * s / (1 - r)

/-- `H₀ = α - s(2α + q - s/L)/J`, (8). -/
def h0Fn (s q r v : ℝ) : ℝ :=
  alphaFn q r v - s * (2 * alphaFn q r v + q - s / (1 - r)) / jFn s r v

/-- `H₁ = α - s/L`, (8). -/
def h1Fn (s q r v : ℝ) : ℝ := alphaFn q r v - s / (1 - r)

/-- `F₀ = (qr - s)H₀ - s(2qr + v + d₀)` with `d₀ = s`, (8). -/
def f0Fn (s q r v : ℝ) : ℝ := (q * r - s) * h0Fn s q r v - s * (2 * q * r + v + s)

/-- `F₁ = (qr - s)H₁ - s(2qr + v + d₁)` with `d₁ = rs/L`, (8). -/
def f1Fn (s q r v : ℝ) : ℝ :=
  (q * r - s) * h1Fn s q r v - s * (2 * q * r + v + r * s / (1 - r))

/-- `N₀ = LJ·F₀` at `v = 1`, (10). -/
def n0Fn (s q r : ℝ) : ℝ :=
  ((1 - r) - r * s) * ((q * r - s) * (1 - q * (1 - r)) - s * (2 * q * r + 1 + s)) -
    s * (q * r - s) * (2 * (1 - q * (1 - r)) * (1 - r) + q * (1 - r) - s)

/-- `N₁ = L·F₁` at `v = 1`, (10). -/
def n1Fn (s q r : ℝ) : ℝ :=
  (1 - r) * ((q * r - s) * (1 - q * (1 - r)) - s * (2 * q * r + 1)) - s * q * r +
    s ^ 2 * (1 - r)

/-- `P₀(r)`, with `disc_q N₀ = P₀(r)/28398241` at `s = 8/73`, (11)-(12). -/
def p0Poly (r : ℝ) : ℝ :=
  32095521 * r ^ 4 - 79935586 * r ^ 3 + 66712689 * r ^ 2 - 18989360 * r + 270400

/-- `P₁(r)`, with `disc_q N₁ = P₁(r)/5329` at `s = 8/73`, (11)-(12). -/
def p1Poly (r : ℝ) : ℝ := 6817 * r ^ 4 - 16482 * r ^ 3 + 13553 * r ^ 2 - 3888 * r + 64

/-! ### The results -/

/-- The inner facts of the placement: `Q ∈ EBC`, `Q, T ∈ ECR`, `T ∈ DRC`, and the actual areas
used by §1. -/
theorem neg_facts (h : NegSetting l b P Q R S T) :
    InTriangle Q (ptE l) (ptB b) ptC ∧ InTriangle Q (ptE l) R ptC ∧
      InTriangle T (ptE l) R ptC ∧ InTriangle T ptD R ptC ∧ 0 < sarea ptC Q T ∧
      0 < sarea ptD (ptE l) Q ∧ 0 < sarea R ptD Q := by
  have hb := h.row.b_pos
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hQ := central_EBC hb hb1 hl hl1 h.row.Q_central h.Q_below_CE
  have hERC : 0 < sarea (ptE l) R ptC := by
    have := right_below_CE (l := l) hb hb1 hl h.row.R_mem h.row.R_right
    rw [sarea_swap₂₃]; linarith
  have z0 : ∀ X Y : Point, sarea X Y Y = 0 := fun X Y => by unfold sarea; ring
  have hRCQ : 0 < sarea R ptC Q := by
    refine pos_of_inside hQ ?_ ?_ (z0 R ptC).ge (Or.inl ?_)
    · rw [sarea_cycle]; exact hERC.le
    · rw [sarea_cycle]; exact h.row.R_right.le
    · rw [sarea_cycle]; exact hERC
  have hCEQ : 0 < sarea ptC (ptE l) Q := by rw [sarea_swap₁₂]; linarith [h.Q_below_CE]
  have hCET : 0 < sarea ptC (ptE l) T := by rw [sarea_swap₁₂]; linarith [h.T_below_CE]
  obtain ⟨-, -, hTy1, -, -⟩ := right_facts hb hb1 h.row.T_mem h.row.T_right
  have hTDRC : InTriangle T ptD R ptC :=
    ⟨h.T_above_DR, h.cell.1.2.1, by simp only [sarea, ptC, ptD]; nlinarith⟩
  have hRx := (right_facts hb hb1 h.row.R_mem h.row.R_right).1
  have hERT : 0 < sarea (ptE l) R T := by
    refine pos_of_inside hTDRC ?_ (z0 (ptE l) R).ge hERC.le (Or.inr (Or.inr hERC))
    simp only [sarea, ptE, ptD]; nlinarith
  have hCQT : 0 < sarea ptC Q T := by
    rw [show sarea ptC Q T = sarea T ptC Q from (sarea_cycle _ _ _)]
    refine pos_of_inside hQ ?_ ?_ (z0 T ptC).ge (Or.inl ?_)
    · rw [sarea_cycle, sarea_swap₂₃]; linarith [h.T_below_CE]
    · rw [sarea_cycle]; exact h.row.T_right.le
    · rw [sarea_cycle, sarea_swap₂₃]; linarith [h.T_below_CE]
  have hDEQ : 0 < sarea ptD (ptE l) Q := by
    have := (central_facts hb hb1 h.row.Q_central).1
    simp only [sarea, ptD, ptE]; nlinarith
  have hRDQ : 0 < sarea R ptD Q := by rw [sarea_swap₁₂]; linarith [h.Q_below_DR]
  exact ⟨hQ, ⟨h.Q_above_ER, hRCQ, hCEQ⟩, ⟨hERT, h.cell.1.2.1, hCET⟩, hTDRC, hCQT, hDEQ, hRDQ⟩

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-QinECT`). `[CQT] > 0`; and if `[QTE] < 0`,
then `Q` is strictly inside `ECT` (counterclockwise `E, T, C`).
`docs/proof/nine/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 42-50. -/
theorem claim_QinECT (h : NegSetting l b P Q R S T) :
    0 < sarea ptC Q T ∧ (sarea Q T (ptE l) < 0 → InTriangle Q (ptE l) T ptC) := by
  obtain ⟨-, hQERC, -, -, hCQT, -, -⟩ := neg_facts h
  refine ⟨hCQT, fun hneg => ⟨?_, ?_, hQERC.2.2⟩⟩
  · rw [show sarea (ptE l) T Q = -sarea Q T (ptE l) by unfold sarea; ring]; linarith
  · rw [show sarea T ptC Q = sarea ptC Q T from (sarea_cycle _ _ _).symm]; exact hCQT

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-F`), equation (1). If `[QTE] < 0`, then
`H = [CET] > 0`, `d = [DRT] > 0` and `F = (qr - s)H - s(2qr + v + d) ≥ 0` (`s = 8/73`).
`docs/proof/nine/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 51-82.
Uses: UNBALANCED_FINAL_NEGATIVE_LINE:claim-QinECT. -/
theorem claim_F (h : NegSetting l b P Q R S T) (hneg : sarea Q T (ptE l) < 0) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    let v := 1 - R.2
    let H := sarea ptC (ptE l) T
    let d := sarea ptD R T
    0 < H ∧ 0 < d ∧ 0 ≤ (q * r - s) * H - s * (2 * q * r + v + d) := by
  intro s q r v H d
  have hm : (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [s_le_A₀.trans h.min]
  obtain ⟨-, -, hTERC, -, -, -, hRDQ⟩ := neg_facts h
  obtain ⟨-, hEQT⟩ := claim_QinECT h
  obtain ⟨w1, w2, w3⟩ := hEQT hneg
  have a1 : 8 / 73 ≤ sarea (ptE l) T Q := ge_of_pos (abs_ge hm 2 8 5) w1
  have a2 : 8 / 73 ≤ sarea T ptC Q := ge_of_pos (abs_ge hm 8 1 5) w2
  have a3 : 8 / 73 ≤ sarea ptC (ptE l) Q := ge_of_pos (abs_ge hm 1 2 5) w3
  have a4 : 8 / 73 ≤ sarea R ptD Q := ge_of_pos (abs_ge hm 6 0 5) hRDQ
  have hbar := bary (ptE l) T ptC Q R ptD
  have vE : sarea R ptD (ptE l) = (1 - l) * R.1 := by simp only [sarea, ptE, ptD]; ring
  have vT : sarea R ptD T = -sarea ptD R T := by unfold sarea; ring
  have vC : sarea R ptD ptC = -(1 - R.2) := by simp only [sarea, ptD, ptC]; ring
  have eH : sarea (ptE l) T ptC = sarea ptC (ptE l) T := by unfold sarea; ring
  rw [vE, vT, vC, eH] at hbar
  have hsum := sarea_add_sarea_add_sarea (ptE l) T ptC Q
  rw [eH] at hsum
  have hH : 0 < sarea ptC (ptE l) T := hTERC.2.2
  have hd : 0 < sarea ptD R T := h.T_above_DR
  have hb := h.row.b_pos
  have hRx := (right_facts hb (by linarith [h.row.b_le]) h.row.R_mem h.row.R_right)
  have hqr : 0 < (1 - l) * R.1 := mul_pos (by linarith [h.row.l_lt]) (by linarith)
  have hv : 0 < 1 - R.2 := by linarith
  refine ⟨hH, hd, ?_⟩
  show 0 ≤ ((1 - l) * R.1 - 8 / 73) * sarea ptC (ptE l) T -
    8 / 73 * (2 * (1 - l) * R.1 + (1 - R.2) + sarea ptD R T)
  nlinarith [mul_le_mul_of_nonneg_left a4 hH.le, mul_le_mul_of_nonneg_right a3 hd.le,
    mul_le_mul_of_nonneg_right a1 hv.le, mul_le_mul_of_nonneg_right a3 hqr.le,
    mul_le_mul_of_nonneg_right a1 hqr.le]

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-params`), equations (2)-(3). `α = [ERC] ≥ Ks
> 13/16` (`Q, T ∈ ECR`), `qr ≥ 3s` (`Q ∈ DER`), `qL < 3/16`, `r > 128/201 > 1/2`,
`r < 1 - s = 65/73` and `vL > s` (`s = 8/73`). `docs/proof/nine/UNBALANCED_FINAL_NEGATIVE_LINE.md`,
lines 84-103.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_params (h : NegSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    Kc * s ≤ sarea (ptE l) R ptC ∧ 13 / 16 < Kc * s ∧ 3 * s ≤ q * r ∧ q * (1 - r) < 3 / 16 ∧
      128 / 201 < r ∧ (1 / 2 : ℝ) < 128 / 201 ∧ r < 65 / 73 ∧ s < (1 - R.2) * (1 - r) := by
  intro s q r
  have hm : (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [s_le_A₀.trans h.min]
  obtain ⟨-, hQERC, hTERC, -, -, hDEQ, hRDQ⟩ := neg_facts h
  have hK : Kc * (8 / 73) ≤ sarea (ptE l) R ptC :=
    two_inside (by norm_num) hm 2 6 1 5 8 (by decide) hQERC hTERC
  have hK' := Kc_s_gt
  have hDER : 3 * (8 / 73) ≤ (1 - l) * R.1 := by
    have e : sarea ptD (ptE l) R = (1 - l) * R.1 := by simp only [sarea, ptD, ptE]; ring
    rw [← e]
    exact one_inside (ge_of_pos (abs_ge hm 0 2 5) hDEQ) (ge_of_pos (abs_ge hm 2 6 5) h.Q_above_ER)
      (ge_of_pos (abs_ge hm 6 0 5) hRDQ)
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.claim_order h.row h.quad
  have eA : sarea (ptE l) R ptC = 1 - R.2 - (1 - l) * (1 - R.1) := by
    simp only [sarea, ptE, ptC]; ring
  have hqL : (1 - l) * (1 - R.1) < 3 / 16 := by linarith
  have hb := h.row.b_pos
  have hr0 : 0 < R.1 := by linarith
  have hη : 8 / 73 ≤ sarea R S ptC := ge_of_pos (abs_ge hm 6 7 1) h.quad.1.2.1
  have hηe : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - S.1) * (1 - R.2) := by
    simp only [sarea, ptC]; ring
  have hr65 : R.1 < 65 / 73 := by
    nlinarith [mul_nonneg (sub_nonneg.2 hk1) (by linarith : (0 : ℝ) ≤ 1 - R.2),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - R.1) (by linarith : (0 : ℝ) ≤ S.2)]
  have hr128 : 128 / 201 < R.1 := by
    nlinarith [mul_nonneg (sub_nonneg.2 hDER) (by linarith : (0 : ℝ) ≤ 1 - R.1),
      mul_pos (sub_pos.2 hqL) hr0]
  have hvL : 8 / 73 < (1 - R.2) * (1 - R.1) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hk1) (by linarith : (0 : ℝ) ≤ 1 - R.2),
      mul_pos (by linarith : (0 : ℝ) < 1 - R.1) (sub_pos.2 hut)]
  exact ⟨hK, hK', hDER, hqL, hr128, by norm_num, hr65, hvL⟩

/-- The stress `F` of (1) at `T = (x, y)`, in coordinates. -/
def fxy (s q r v x y : ℝ) : ℝ :=
  (q * r - s) * (1 - y - q * (1 - x)) - s * (2 * q * r + v + (v * x - r * (1 - y)))

/-- The abscissa of `T₀ = (5) ∩ (6)`. -/
def x0Fn (s r v : ℝ) : ℝ := (r ^ 2 * s - r ^ 2 * v - 3 * r * s + r * v + s) / (v * (1 - r) - r * s)

/-- The line (5). -/
def y5Fn (s r v z : ℝ) : ℝ := (1 - v) + s / (1 - r) + (v / (1 - r) - s / (1 - r) ^ 2) * (z - r)

/-- The line (6). -/
def y6Fn (s r v z : ℝ) : ℝ := 1 + (s - v * z) / r

theorem fxy_y (s q r v x y y' : ℝ) :
    fxy s q r v x y - fxy s q r v x y' = -(q * r - s + r * s) * (y - y') := by
  unfold fxy; ring

theorem g5x0 {s q r v : ℝ} (hL : 1 - r ≠ 0) (hK : v * (1 - r) - r * s ≠ 0) :
    fxy s q r v (x0Fn s r v) (y5Fn s r v (x0Fn s r v)) = f0Fn s q r v := by
  have hJ : v - r * s / (1 - r) = (v * (1 - r) - r * s) / (1 - r) := by field_simp
  simp only [fxy, y5Fn, x0Fn, f0Fn, h0Fn, alphaFn, jFn, hJ]
  field_simp
  ring

theorem g6x0 {s q r v : ℝ} (hL : 1 - r ≠ 0) (hK : v * (1 - r) - r * s ≠ 0) (hr : r ≠ 0) :
    fxy s q r v (x0Fn s r v) (y6Fn s r v (x0Fn s r v)) = f0Fn s q r v := by
  have hJ : v - r * s / (1 - r) = (v * (1 - r) - r * s) / (1 - r) := by field_simp
  simp only [fxy, y6Fn, x0Fn, f0Fn, h0Fn, alphaFn, jFn, hJ]
  field_simp
  ring

theorem g5r {s q r v : ℝ} (hL : 1 - r ≠ 0) :
    fxy s q r v r (y5Fn s r v r) = f1Fn s q r v := by
  simp only [fxy, y5Fn, f1Fn, h1Fn, alphaFn]
  field_simp
  ring

theorem aff5 (s q r v x x0 : ℝ) :
    (r - x0) * fxy s q r v x (y5Fn s r v x) =
      (r - x) * fxy s q r v x0 (y5Fn s r v x0) + (x - x0) * fxy s q r v r (y5Fn s r v r) := by
  simp only [fxy, y5Fn]; ring

theorem aff6 {s q r v : ℝ} (hr : r ≠ 0) (x x0 : ℝ) :
    fxy s q r v x (y6Fn s r v x) - fxy s q r v x0 (y6Fn s r v x0) =
      (q * r - s) * (q * r + v) / r * (x - x0) := by
  simp only [fxy, y6Fn]; field_simp; ring

/-- The case `x ≥ r` of §2: `F ≤ F₁` along the line (4). -/
theorem tl_right {s q r v x y : ℝ} (hs : 0 < s) (hqr : 3 * s ≤ q * r) (hr2 : r < 1)
    (hα : 0 < v - q * (1 - r)) (hq : 0 < q) (hx : r ≤ x)
    (h4 : s ≤ (1 - r) * (y - (1 - v)) - v * (x - r)) :
    fxy s q r v x y ≤ f1Fn s q r v := by
  have hL : 0 < 1 - r := by linarith
  have hr0 : 0 < r := by nlinarith
  have hdy : 0 < q * r - s + r * s := by nlinarith
  have key : (1 - r) * (fxy s q r v x y - f1Fn s q r v) =
      -q * (r * (v - q * (1 - r)) + s * (1 - r)) * (x - r) -
        (q * r - s + r * s) * ((1 - r) * (y - (1 - v)) - v * (x - r) - s) := by
    simp only [fxy, f1Fn, h1Fn, alphaFn]; field_simp; ring
  have h0 : 0 ≤ r * (v - q * (1 - r)) + s * (1 - r) := by positivity
  have h1 : (1 - r) * (fxy s q r v x y - f1Fn s q r v) ≤ 0 := by
    rw [key]
    nlinarith [mul_nonneg (mul_nonneg hq.le h0) (sub_nonneg.2 hx),
      mul_nonneg hdy.le (sub_nonneg.2 h4)]
  by_contra hc; push Not at hc; nlinarith [mul_pos hL (sub_pos.2 hc)]

/-- The case `x ≤ r` of §2: `F ≤ max(F₀, F₁)` along the lines (5), (6). -/
theorem tl_left {s q r v x y : ℝ} (hs : 0 < s) (hqr : 3 * s ≤ q * r) (hr1 : 1 / 2 < r)
    (hr2 : r < 1) (hvL : s < v * (1 - r)) (_hq : 0 < q) (hx : x ≤ r)
    (h5 : s * (1 - r) ≤ (1 - r) ^ 2 * (y - (1 - v)) - (v * (1 - r) - s) * (x - r))
    (h6 : s ≤ v * x - r * (1 - y)) :
    fxy s q r v x y ≤ max (f0Fn s q r v) (f1Fn s q r v) := by
  have hL : 0 < 1 - r := by linarith
  have hr0 : 0 < r := by linarith
  have hdy : 0 < q * r - s + r * s := by nlinarith
  have hK : 0 < v * (1 - r) - r * s := by nlinarith
  have hx0r : x0Fn s r v < r := by
    have e : r - x0Fn s r v = s * (1 - r) * (2 * r - 1) / (v * (1 - r) - r * s) := by
      unfold x0Fn; field_simp; ring
    have : 0 < s * (1 - r) * (2 * r - 1) / (v * (1 - r) - r * s) := by
      apply div_pos _ hK; apply mul_pos (mul_pos hs hL); linarith
    linarith
  have hle5 : fxy s q r v x y ≤ fxy s q r v x (y5Fn s r v x) := by
    have : y5Fn s r v x ≤ y := by
      have e : y5Fn s r v x = (1 - v) + (s * (1 - r) + (v * (1 - r) - s) * (x - r)) / (1 - r) ^ 2 := by
        unfold y5Fn; field_simp; ring
      rw [e]
      have : (s * (1 - r) + (v * (1 - r) - s) * (x - r)) / (1 - r) ^ 2 ≤ y - (1 - v) := by
        rw [div_le_iff₀ (by positivity)]; nlinarith
      linarith
    nlinarith [fxy_y s q r v x y (y5Fn s r v x)]
  have hle6 : fxy s q r v x y ≤ fxy s q r v x (y6Fn s r v x) := by
    have : y6Fn s r v x ≤ y := by
      unfold y6Fn
      have : (s - v * x) / r ≤ y - 1 := by rw [div_le_iff₀ hr0]; nlinarith
      linarith
    nlinarith [fxy_y s q r v x y (y6Fn s r v x)]
  have hm6 : 0 < (q * r - s) * (q * r + v) / r := by
    apply div_pos _ hr0; apply mul_pos <;> nlinarith
  have e5 := g5x0 (q := q) hL.ne' hK.ne'
  have e6 := g6x0 (q := q) hL.ne' hK.ne' hr0.ne'
  have e1 := g5r (s := s) (q := q) (v := v) hL.ne'
  have hM0 := le_max_left (f0Fn s q r v) (f1Fn s q r v)
  have hM1 := le_max_right (f0Fn s q r v) (f1Fn s q r v)
  rcases le_total x (x0Fn s r v) with hxx | hxx
  · have a := aff6 (s := s) (q := q) (v := v) hr0.ne' x (x0Fn s r v)
    rw [e6] at a
    have : fxy s q r v x (y6Fn s r v x) ≤ f0Fn s q r v := by
      nlinarith [mul_nonneg hm6.le (sub_nonneg.2 hxx)]
    exact (hle6.trans this).trans hM0
  · have a := aff5 s q r v x (x0Fn s r v)
    rw [e5, e1] at a
    have : (r - x0Fn s r v) * fxy s q r v x (y5Fn s r v x) ≤
        (r - x0Fn s r v) * max (f0Fn s q r v) (f1Fn s q r v) := by
      rw [a]
      nlinarith [mul_le_mul_of_nonneg_left hM0 (sub_nonneg.2 hx),
        mul_le_mul_of_nonneg_left hM1 (sub_nonneg.2 hxx)]
    exact hle5.trans (le_of_mul_le_mul_left this (by linarith))

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-two-lines`), equations (4)-(7). If
`[QTE] < 0`, the stress `F` of (1) satisfies `F ≤ max(F₀, F₁)`, the closed forms (8) of its
values at the auxiliary points `T₀` (meet of the lines (5), (6)) and `T₁ = (r, u + s/L)`.
`docs/proof/nine/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 105-184, 186-200.
Uses: UNBALANCED_FINAL_NEGATIVE_LINE:claim-F, UNBALANCED_FINAL_NEGATIVE_LINE:claim-params. -/
theorem claim_two_lines (h : NegSetting l b P Q R S T) (_hneg : sarea Q T (ptE l) < 0) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    let v := 1 - R.2
    (q * r - s) * sarea ptC (ptE l) T - s * (2 * q * r + v + sarea ptD R T) ≤
      max (f0Fn s q r v) (f1Fn s q r v) := by
  intro s q r v
  have hm : (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [s_le_A₀.trans h.min]
  obtain ⟨hK, hK', hqr, hqL, hr128, -, hr65, hvL⟩ := claim_params h
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.claim_order h.row h.quad
  have eH : sarea ptC (ptE l) T = 1 - T.2 - (1 - l) * (1 - T.1) := by
    simp only [sarea, ptC, ptE]; ring
  have ed : sarea ptD R T = (1 - R.2) * T.1 - R.1 * (1 - T.2) := by
    simp only [sarea, ptD]; ring
  have eA : sarea (ptE l) R ptC = (1 - R.2) - (1 - l) * (1 - R.1) := by
    simp only [sarea, ptE, ptC]; ring
  have hRCT : 8 / 73 ≤ sarea R ptC T := ge_of_pos (abs_ge hm 6 1 8) h.cell.1.2.1
  have hRST : 8 / 73 ≤ sarea R S T := ge_of_pos (abs_ge hm 6 7 8) h.quad.2.2.1
  have hCRS : 8 / 73 ≤ sarea R S ptC := ge_of_pos (abs_ge hm 6 7 1) h.quad.1.2.1
  have hd : 8 / 73 ≤ sarea ptD R T := ge_of_pos (abs_ge hm 0 6 8) h.T_above_DR
  have eRCT : sarea R ptC T = (1 - R.1) * (T.2 - R.2) - (1 - R.2) * (T.1 - R.1) := by
    simp only [sarea, ptC]
  have eRST : sarea R S T = (S.1 - R.1) * (T.2 - R.2) - (S.2 - R.2) * (T.1 - R.1) := by
    simp only [sarea]
  have eRSC : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - S.1) * (1 - R.2) := by
    simp only [sarea, ptC]; ring
  rw [eRCT] at hRCT
  rw [eRST] at hRST
  rw [eRSC] at hCRS
  rw [ed] at hd
  rw [eA] at hK
  have hl1 := h.row.l_lt
  have hq : 0 < 1 - l := by linarith
  have hα : 0 < (1 - R.2) - (1 - l) * (1 - R.1) := by linarith
  have h4 : 8 / 73 ≤ (1 - R.1) * (T.2 - (1 - (1 - R.2))) - (1 - R.2) * (T.1 - R.1) := by
    rw [show 1 - (1 - R.2) = R.2 by ring]; exact hRCT
  have h6 : 8 / 73 ≤ (1 - R.2) * T.1 - R.1 * (1 - T.2) := hd
  rw [eH, ed]
  show fxy (8 / 73) (1 - l) R.1 (1 - R.2) T.1 T.2 ≤
    max (f0Fn (8 / 73) (1 - l) R.1 (1 - R.2)) (f1Fn (8 / 73) (1 - l) R.1 (1 - R.2))
  rcases le_total R.1 T.1 with hx | hx
  · exact (tl_right (by norm_num) hqr (by linarith) hα hq hx h4).trans (le_max_right _ _)
  · have h5 : 8 / 73 * (1 - R.1) ≤ (1 - R.1) ^ 2 * (T.2 - (1 - (1 - R.2))) -
        ((1 - R.2) * (1 - R.1) - 8 / 73) * (T.1 - R.1) := by
      nlinarith [mul_le_mul_of_nonneg_left hRST (by linarith : (0 : ℝ) ≤ 1 - R.1),
        mul_nonneg (sub_nonneg.2 hx) (sub_nonneg.2 hCRS),
        mul_nonneg (sub_nonneg.2 hk1) (by linarith : (0 : ℝ) ≤ (1 - R.1) * (T.2 - R.2) -
          (1 - R.2) * (T.1 - R.1))]
    exact tl_left (by norm_num) hqr (by linarith) (by linarith) hvL hq hx h5 h6

/-- `H₀ = v - qL - 2s - s(2r - 1)(qL + s)/(vL - rs)`, the form used for the monotonicity in `v`
(part of UNBALANCED_FINAL_NEGATIVE_LINE:claim-v1). -/
theorem h0_eq {s q r w : ℝ} (hL : 1 - r ≠ 0) (hK : w * (1 - r) - r * s ≠ 0) :
    h0Fn s q r w = w - q * (1 - r) - 2 * s - s * (2 * r - 1) * (q * (1 - r) + s) /
      (w * (1 - r) - r * s) := by
  have hJ : w - r * s / (1 - r) = (w * (1 - r) - r * s) / (1 - r) := by field_simp
  unfold h0Fn alphaFn jFn
  rw [hJ]; field_simp; ring

/-- `N₀ = LJ·F₀` and `N₁ = L·F₁` at `v = 1` (part of UNBALANCED_FINAL_NEGATIVE_LINE:claim-disc). -/
theorem n_eq {s q r : ℝ} (hL : 1 - r ≠ 0) (hK : (1 - r) - r * s ≠ 0) :
    n0Fn s q r = (1 - r) * jFn s r 1 * f0Fn s q r 1 ∧ n1Fn s q r = (1 - r) * f1Fn s q r 1 := by
  have hJ : (1 : ℝ) - r * s / (1 - r) = ((1 - r) - r * s) / (1 - r) := by field_simp
  constructor
  · unfold n0Fn f0Fn h0Fn alphaFn jFn
    rw [hJ]; field_simp; ring
  · unfold n1Fn f1Fn h1Fn alphaFn; field_simp; ring

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-v1`), equations (8)-(9). Under the parameter
bounds of (2)-(3) (`qr ≥ 3s`, `1/2 < r < 65/73`, `vL > s`) and `v ≤ 1`, both `F₀` and `F₁`
increase with `v` (`J > s > 0` throughout), so `F₀(q, r, v) ≤ F₀(q, r, 1)` and
`F₁(q, r, v) ≤ F₁(q, r, 1)` (`s = 8/73`). `docs/proof/nine/UNBALANCED_FINAL_NEGATIVE_LINE.md`,
lines 186-225.
Uses: UNBALANCED_FINAL_NEGATIVE_LINE:claim-params. -/
theorem claim_v1 {q r v : ℝ} (hqr : 3 * (8 / 73) ≤ q * r) (hr₁ : 1 / 2 < r) (hr₂ : r < 65 / 73)
    (hvL : 8 / 73 < v * (1 - r)) (hv : v ≤ 1) :
    f0Fn (8 / 73) q r v ≤ f0Fn (8 / 73) q r 1 ∧ f1Fn (8 / 73) q r v ≤ f1Fn (8 / 73) q r 1 := by
  have hL : 0 < 1 - r := by linarith
  have hr0 : 0 < r := by linarith
  have hq : 0 < q := by
    by_contra hq; push Not at hq; nlinarith [mul_nonpos_iff.2 (Or.inr ⟨hq, hr0.le⟩)]
  constructor
  · have e : ∀ w, 0 < w * (1 - r) - r * (8 / 73) → h0Fn (8 / 73) q r w = w - q * (1 - r) -
        2 * (8 / 73) - 8 / 73 * (2 * r - 1) * (q * (1 - r) + 8 / 73) /
          (w * (1 - r) - r * (8 / 73)) := fun w hw => h0_eq hL.ne' hw.ne'
    have hKv : 0 < v * (1 - r) - r * (8 / 73) := by nlinarith
    have hK1 : 0 < 1 * (1 - r) - r * (8 / 73) := by nlinarith
    unfold f0Fn
    rw [e v hKv, e 1 hK1]
    have hc : 0 ≤ 8 / 73 * (2 * r - 1) * (q * (1 - r) + 8 / 73) := by
      apply mul_nonneg (mul_nonneg (by norm_num) (by linarith)); positivity
    have hdiv : 8 / 73 * (2 * r - 1) * (q * (1 - r) + 8 / 73) / (1 * (1 - r) - r * (8 / 73)) ≤
        8 / 73 * (2 * r - 1) * (q * (1 - r) + 8 / 73) / (v * (1 - r) - r * (8 / 73)) :=
      div_le_div_of_nonneg_left hc hKv (by nlinarith)
    nlinarith [mul_le_mul_of_nonneg_left hdiv (by linarith : (0 : ℝ) ≤ q * r - 8 / 73),
      mul_nonneg (by linarith : (0 : ℝ) ≤ q * r - 2 * (8 / 73)) (sub_nonneg.2 hv)]
  · unfold f1Fn h1Fn alphaFn
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ q * r - 2 * (8 / 73)) (sub_nonneg.2 hv)]

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-disc`), equations (10)-(15). For
`1/2 ≤ r ≤ 65/73`: `P₀(r) < 0` and `P₁(r) < 0`; the quadratics `N₀, N₁` in `q` (leading
coefficients `-rL²(1 - s)`, `-rL²`) are negative for every real `q`; hence `F₀(q, r, 1) < 0`
and `F₁(q, r, 1) < 0` for every real `q` (`s = 8/73`).
`docs/proof/nine/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 227-321. -/
theorem claim_disc {r : ℝ} (hr₁ : 1 / 2 ≤ r) (hr₂ : r ≤ 65 / 73) :
    p0Poly r < 0 ∧ p1Poly r < 0 ∧
      ∀ q : ℝ, n0Fn (8 / 73) q r < 0 ∧ n1Fn (8 / 73) q r < 0 ∧
        f0Fn (8 / 73) q r 1 < 0 ∧ f1Fn (8 / 73) q r 1 < 0 := by
  have hp0 : p0Poly r < 0 := by
    unfold p0Poly
    rcases le_total r (4 / 5) with hr | hr
    · have ha : 0 ≤ 4 / 5 - r := by linarith
      have ha3 : (4 / 5 - r) ≤ 3 / 10 := by linarith
      nlinarith [mul_nonneg (pow_nonneg ha 3) (by nlinarith : (0 : ℝ) ≤ 113850406 / 5 -
        32095521 * (4 / 5 - r)), pow_nonneg ha 2, pow_nonneg ha 4]
    · have hz : 0 ≤ r - 4 / 5 := by linarith
      have hz' : 0 ≤ 33 / 365 - (r - 4 / 5) := by linarith
      nlinarith [mul_nonneg (mul_nonneg hz' (by nlinarith : (0 : ℝ) ≤ 32095521 * ((r - 4 / 5) +
        33 / 365) + 113850406 / 5)) (sq_nonneg (r - 4 / 5)),
        mul_nonneg hz' (by nlinarith : (0 : ℝ) ≤ 57966390072 / 133225 * ((r - 4 / 5) + 33 / 365) +
          780536 / 125)]
  have hp1 : p1Poly r < 0 := by
    unfold p1Poly
    have h1 : 0 ≤ 65 / 73 - r := by linarith
    have h2 : 0 ≤ r - 1 / 2 := by linarith
    have hQ : 0 < 2651928889 * r ^ 3 - 4050471649 * r ^ 2 + 1665763056 * r - 29284416 := by
      nlinarith [mul_nonneg h2 h2, mul_nonneg (mul_nonneg h2 h2) h2, mul_nonneg h1 h2,
        mul_nonneg (mul_nonneg h1 h2) h2, sq_nonneg (r - 7 / 10), mul_nonneg h2 (sq_nonneg (r - 7 / 10))]
    nlinarith [mul_nonneg h1 hQ.le]
  have hL : 0 < 1 - r := by linarith
  have hr0 : 0 < r := by linarith
  refine ⟨hp0, hp1, fun q => ?_⟩
  -- the two quadratics in `q`
  have en0 : n0Fn (8 / 73) q r = -65 * r * (r - 1) ^ 2 / 73 * q ^ 2 +
      (-2929 * r ^ 2 / 5329 + 2017 * r / 5329 + 520 / 5329) * q +
      (90448 * r / 389017 - 81104 / 389017) := by unfold n0Fn; ring
  have en1 : n1Fn (8 / 73) q r = -r * (r - 1) ^ 2 * q ^ 2 +
      (-49 * r ^ 2 / 73 + 33 * r / 73 + 8 / 73) * q + (1104 * r / 5329 - 1104 / 5329) := by
    unfold n1Fn; ring
  have hsq : 0 < (r - 1) ^ 2 := by nlinarith
  have ha0 : 0 < 65 * r * (r - 1) ^ 2 / 73 := by positivity
  have ha1 : 0 < r * (r - 1) ^ 2 := by positivity
  have hn0 : n0Fn (8 / 73) q r < 0 := by
    rw [en0]
    have hd : (-2929 * r ^ 2 / 5329 + 2017 * r / 5329 + 520 / 5329) ^ 2 -
        4 * (-65 * r * (r - 1) ^ 2 / 73) * (90448 * r / 389017 - 81104 / 389017) =
          p0Poly r / 28398241 := by unfold p0Poly; ring
    nlinarith [sq_nonneg (2 * (-65 * r * (r - 1) ^ 2 / 73) * q +
      (-2929 * r ^ 2 / 5329 + 2017 * r / 5329 + 520 / 5329))]
  have hn1 : n1Fn (8 / 73) q r < 0 := by
    rw [en1]
    have hd : (-49 * r ^ 2 / 73 + 33 * r / 73 + 8 / 73) ^ 2 -
        4 * (-r * (r - 1) ^ 2) * (1104 * r / 5329 - 1104 / 5329) = p1Poly r / 5329 := by
      unfold p1Poly; ring
    nlinarith [sq_nonneg (2 * (-r * (r - 1) ^ 2) * q + (-49 * r ^ 2 / 73 + 33 * r / 73 + 8 / 73))]
  have hK1 : 0 < (1 - r) - r * (8 / 73) := by nlinarith
  obtain ⟨e0, e1⟩ := n_eq (s := 8 / 73) (q := q) hL.ne' hK1.ne'
  have hJ1 : 0 < jFn (8 / 73) r 1 := by
    unfold jFn
    have : r * (8 / 73) / (1 - r) < 1 := by rw [div_lt_one hL]; linarith
    linarith
  refine ⟨hn0, hn1, ?_, ?_⟩
  · rw [e0] at hn0
    by_contra hc; push Not at hc
    have := mul_nonneg (mul_pos hL hJ1).le hc
    linarith
  · rw [e1] at hn1
    by_contra hc; push Not at hc
    have := mul_nonneg hL.le hc
    linarith

/-- **Theorem 1** (`UNBALANCED_FINAL_NEGATIVE_LINE:Theorem1`). In this placement `[QTE] < 0` is
impossible; thus every surviving configuration has `[QTE] > 0`.
`docs/proof/nine/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 33-38, 318-321.
Uses: UNBALANCED_FINAL_NEGATIVE_LINE:claim-F, UNBALANCED_FINAL_NEGATIVE_LINE:claim-two-lines,
UNBALANCED_FINAL_NEGATIVE_LINE:claim-v1, UNBALANCED_FINAL_NEGATIVE_LINE:claim-disc,
UNBALANCED_FINAL_NEGATIVE_LINE:claim-params. -/
theorem theorem1 (h : NegSetting l b P Q R S T) : 0 < sarea Q T (ptE l) := by
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  have n : sarea Q T (ptE l) ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 2
  rcases lt_or_gt_of_ne n with hneg | hpos'
  · exfalso
    obtain ⟨-, -, hF⟩ := claim_F h hneg
    have h2 := claim_two_lines h hneg
    obtain ⟨-, -, hqr, -, hr1, -, hr2, hvL⟩ := claim_params h
    have hu0 := (UnbalancedCellI.claim_order h.row h.quad).2.2.2.2.1
    obtain ⟨v0, v1⟩ := claim_v1 hqr (by linarith) hr2 hvL (by linarith)
    obtain ⟨-, -, hd⟩ := claim_disc (by linarith) hr2.le
    obtain ⟨-, -, f0, f1⟩ := hd (1 - l)
    have := max_lt (v0.trans_lt f0) (v1.trans_lt f1)
    have h3 := h2.trans (max_le_max v0 v1)
    linarith
  · exact hpos'

end Heilbronn.Nine.UnbalancedFinalNegativeLine
