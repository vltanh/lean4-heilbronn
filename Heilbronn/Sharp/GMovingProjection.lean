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
        e * (x - b) - (1 - b) * y, (1 - t) * (x - c) + (c - g) * y, c - x + (f - c) * y] := by
  sorry

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
  sorry

/-- **Claim** (`SHARP_G_MOVING_PROJECTION:claim-scalars`). Under the assumption of
`claim_heights`: (6) `J_t ≥ 0`, (7) `C_t ≥ 0`, and (8) `1/8 < u < 15/64`, `v + t < 9/16`.
`hand/SHARP_G_MOVING_PROJECTION.md`, lines 108-176. -/
theorem claim_scalars {a b c d e f g h t x y : ℝ} (hyp : GMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sG ≤ chamberSarea (gMovingConfig a b c d e f g h t x y) i) :
    let u := sG / (h - a)
    let v := sG / (f - g)
    0 ≤ gJ u v t ∧ 0 ≤ gC u v t ∧ (1 / 8 < u ∧ u < 15 / 64) ∧ v + t < 9 / 16 := by
  sorry

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
  sorry

/-- **Claim** (`SHARP_G_MOVING_PROJECTION:claim-cubic`). Equations (12)–(13): for `u ≠ 0` with
`D_j ≠ 0` and every `v`, `C₀ + μJ₀ = 3(u-1)(64u-19)N(u)/(131072 u D_j)` (the weight cancels `v`);
and `N(u) < 0` for `1/8 < u < 15/64`. `hand/SHARP_G_MOVING_PROJECTION.md`, lines 238-262. -/
theorem claim_cubic :
    (∀ u v : ℝ, u ≠ 0 → gDj u ≠ 0 →
      gC u v 0 + gDc u / gDj u * gJ u v 0 =
        3 * (u - 1) * (64 * u - 19) * gN u / (131072 * u * gDj u)) ∧
      ∀ u : ℝ, 1 / 8 < u → u < 15 / 64 → gN u < 0 := by
  sorry

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
  sorry

end Heilbronn.SharpGMovingProjection
