module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.OneUpperRadial
public import Heilbronn.TypeII.Unbalanced.OccupiedLowerEar

/-! # A complete line-sign exclusion in the final unbalanced Type-II case
(`hand/UNBALANCED_FINAL_NEGATIVE_LINE.md`)

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
namespace Heilbronn.UnbalancedFinalNegativeLine

open UnbalancedRightHull

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

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-QinECT`). `[CQT] > 0`; and if `[QTE] < 0`,
then `Q` is strictly inside `ECT` (counterclockwise `E, T, C`).
`hand/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 42-50. -/
theorem claim_QinECT (h : NegSetting l b P Q R S T) :
    0 < sarea ptC Q T ∧ (sarea Q T (ptE l) < 0 → InTriangle Q (ptE l) T ptC) := sorry

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-F`), equation (1). If `[QTE] < 0`, then
`H = [CET] > 0`, `d = [DRT] > 0` and `F = (qr - s)H - s(2qr + v + d) ≥ 0` (`s = 8/73`).
`hand/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 51-82.
Uses: UNBALANCED_FINAL_NEGATIVE_LINE:claim-QinECT. -/
theorem claim_F (h : NegSetting l b P Q R S T) (hneg : sarea Q T (ptE l) < 0) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    let v := 1 - R.2
    let H := sarea ptC (ptE l) T
    let d := sarea ptD R T
    0 < H ∧ 0 < d ∧ 0 ≤ (q * r - s) * H - s * (2 * q * r + v + d) := sorry

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-params`), equations (2)-(3). `α = [ERC] ≥ Ks
> 13/16` (`Q, T ∈ ECR`), `qr ≥ 3s` (`Q ∈ DER`), `qL < 3/16`, `r > 128/201 > 1/2`,
`r < 1 - s = 65/73` and `vL > s` (`s = 8/73`). `hand/UNBALANCED_FINAL_NEGATIVE_LINE.md`,
lines 84-103.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_params (h : NegSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    Kc * s ≤ sarea (ptE l) R ptC ∧ 13 / 16 < Kc * s ∧ 3 * s ≤ q * r ∧ q * (1 - r) < 3 / 16 ∧
      128 / 201 < r ∧ (1 / 2 : ℝ) < 128 / 201 ∧ r < 65 / 73 ∧ s < (1 - R.2) * (1 - r) := sorry

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-two-lines`), equations (4)-(7). If
`[QTE] < 0`, the stress `F` of (1) satisfies `F ≤ max(F₀, F₁)`, the closed forms (8) of its
values at the auxiliary points `T₀` (meet of the lines (5), (6)) and `T₁ = (r, u + s/L)`.
`hand/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 105-184, 186-200.
Uses: UNBALANCED_FINAL_NEGATIVE_LINE:claim-F, UNBALANCED_FINAL_NEGATIVE_LINE:claim-params. -/
theorem claim_two_lines (h : NegSetting l b P Q R S T) (hneg : sarea Q T (ptE l) < 0) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    let v := 1 - R.2
    (q * r - s) * sarea ptC (ptE l) T - s * (2 * q * r + v + sarea ptD R T) ≤
      max (f0Fn s q r v) (f1Fn s q r v) := sorry

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-v1`), equations (8)-(9). Under the parameter
bounds of (2)-(3) (`qr ≥ 3s`, `1/2 < r < 65/73`, `vL > s`) and `v ≤ 1`, both `F₀` and `F₁`
increase with `v` (`J > s > 0` throughout), so `F₀(q, r, v) ≤ F₀(q, r, 1)` and
`F₁(q, r, v) ≤ F₁(q, r, 1)` (`s = 8/73`). `hand/UNBALANCED_FINAL_NEGATIVE_LINE.md`,
lines 186-225.
Uses: UNBALANCED_FINAL_NEGATIVE_LINE:claim-params. -/
theorem claim_v1 {q r v : ℝ} (hqr : 3 * (8 / 73) ≤ q * r) (hr₁ : 1 / 2 < r) (hr₂ : r < 65 / 73)
    (hvL : 8 / 73 < v * (1 - r)) (hv : v ≤ 1) :
    f0Fn (8 / 73) q r v ≤ f0Fn (8 / 73) q r 1 ∧ f1Fn (8 / 73) q r v ≤ f1Fn (8 / 73) q r 1 :=
  sorry

/-- **Claim** (`UNBALANCED_FINAL_NEGATIVE_LINE:claim-disc`), equations (10)-(15). For
`1/2 ≤ r ≤ 65/73`: `P₀(r) < 0` and `P₁(r) < 0`; the quadratics `N₀, N₁` in `q` (leading
coefficients `-rL²(1 - s)`, `-rL²`) are negative for every real `q`; hence `F₀(q, r, 1) < 0`
and `F₁(q, r, 1) < 0` for every real `q` (`s = 8/73`).
`hand/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 227-321. -/
theorem claim_disc {r : ℝ} (hr₁ : 1 / 2 ≤ r) (hr₂ : r ≤ 65 / 73) :
    p0Poly r < 0 ∧ p1Poly r < 0 ∧
      ∀ q : ℝ, n0Fn (8 / 73) q r < 0 ∧ n1Fn (8 / 73) q r < 0 ∧
        f0Fn (8 / 73) q r 1 < 0 ∧ f1Fn (8 / 73) q r 1 < 0 := sorry

/-- **Theorem 1** (`UNBALANCED_FINAL_NEGATIVE_LINE:Theorem1`). In this placement `[QTE] < 0` is
impossible; thus every surviving configuration has `[QTE] > 0`.
`hand/UNBALANCED_FINAL_NEGATIVE_LINE.md`, lines 33-38, 318-321.
Uses: UNBALANCED_FINAL_NEGATIVE_LINE:claim-F, UNBALANCED_FINAL_NEGATIVE_LINE:claim-two-lines,
UNBALANCED_FINAL_NEGATIVE_LINE:claim-v1, UNBALANCED_FINAL_NEGATIVE_LINE:claim-disc,
UNBALANCED_FINAL_NEGATIVE_LINE:claim-params. -/
theorem theorem1 (h : NegSetting l b P Q R S T) : 0 < sarea Q T (ptE l) := sorry

end Heilbronn.UnbalancedFinalNegativeLine
