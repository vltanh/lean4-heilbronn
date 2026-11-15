module

public import Heilbronn.Sharp.BCMoving

/-! # A sharp chamber with B and D moving inward simultaneously (`hand/SHARP_BD_MOVING.md`)

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

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "all eleven displayed expressions are at least `s = 2A₀`" (which implies the chamber).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SharpBDMoving

open Heilbronn.SharpBCMoving

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
`hand/SHARP_BD_MOVING.md`, lines 26-40. -/
theorem claim_chamber_formulas (a b c d e f g h t r x y : ℝ) :
    chamberSarea (bdMovingConfig a b c d e f g h t r x y) =
      ![b * (h - a), a * (c - b) - c * t, g * (h - a), (1 - f) * (e - d) + r * (1 - e),
        (f - g) * (1 - h), (f - g) * (1 - e), (1 - r) * (y - a) - (d - a) * x,
        (1 - r) * (h - y) - (h - d) * x, e * (x - b) - (1 - b) * y + t * (1 - x),
        x - c * (1 - y) - g * y, c * (1 - y) + f * y - x] := by
  sorry

/-- **Claim** (`SHARP_BD_MOVING:claim-bounds`). If all eleven doubled areas are at least
`s = 2A₀`, then with `u = s/(h-a)`, `v = s/(f-g)`, `α = 1-v-s/u`, `β = 1-u-s/v`:
(2) `b, g ≥ u`, `e, h ≤ 1-v`, `a ≤ α`, `1-f ≤ β`; (3) `a > t`, `α - t > s`, `β > s`, `r ≤ β`;
(4) `X = 1-x ≥ 2u + r`, `Y = y ≥ 2v`; `y > t`, `x > b`, `e > y`;
(5) `(1-v-t)X + (1-u)Y ≤ (1-v)(1-u) - s`; (6) `s ≤ g₀ + 2ut - r(1-v-t)`;
(7) `t ≤ α(1-u) - s`; (8) `u, v < 1/4`, `t < 1/2`; (9) `u, v > s`, `v > 7/50`.
`hand/SHARP_BD_MOVING.md`, lines 48-122.
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
  sorry

/-- **Claim** (`SHARP_BD_MOVING:claim-combined`). Under the assumption of `claim_bounds`:
(10) `(s+ut)(1-y) ≤ (α-t)(x-u-s)` (the ABC/GCO elimination of `SHARP_BC_MOVING` §3);
(11) `(s-vr)x ≤ β{(1-r)(1-v-y)-s}` (the DHO/DEF elimination of `SHARP_CD_MOVING` §3);
the coefficients `C₁ = α-t-s+vr+λ(1-v-t)` and `C₂ = β(1-r)-s-ut+λ(1-u)` satisfy `C₁ > 0` and
(12) `C₂ > 1/16 - s² > 0`; (13) `H₀ + λ(g₀ - s) ≥ tK_B + rT_v + vr² - (1+λ)tr`;
(14) `K_B > 59/600`. `hand/SHARP_BD_MOVING.md`, lines 124-179.
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
  sorry

/-- **Claim** (`SHARP_BD_MOVING:claim-mixed-loss`). Under the assumption of `claim_bounds`,
`T_v - (1+λ)t > 311/256 - 11v/4 - 11/(100v) > 0` (via (15) `T_v - (1+λ)t > T_v - (1+λ)(α-s)`,
the lower bound `E₀(u,v)` (16), and the concave quadratic `Q(v)` with `Q(7/50), Q(1/4) > 0`
(17)). `hand/SHARP_BD_MOVING.md`, lines 181-221. -/
theorem claim_mixed_loss {a b c d e f g h t r x y : ℝ}
    (hyp : BDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (bdMovingConfig a b c d e f g h t r x y) i) :
    let u := sharpS / (h - a)
    let v := sharpS / (f - g)
    311 / 256 - 11 * v / 4 - 11 / (100 * v) < bdTv u v - (1 + sharpLambda) * t ∧
      0 < 311 / 256 - 11 * v / 4 - 11 / (100 * v) := by
  sorry

/-- **Theorem 1** (`SHARP_BD_MOVING:Theorem1`). Under (1) and positivity of the eleven oriented
doubled areas, the minimum of the eleven ordinary triangle areas is at most `A₀`. If all eleven
are at least `A₀`, then `t = r = 0` and the configuration is exactly the equality configuration
of `HAND_PROOF.md` (the closed height conditions in (1) are included).
`hand/SHARP_BD_MOVING.md`, lines 12-46, 223-235.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_BC_MOVING:eq17,
SHARP_BC_MOVING:eq18, SHARP_CD_MOVING:claim-eliminations, SHARP_BD_MOVING:claim-bounds,
SHARP_BD_MOVING:claim-combined, SHARP_BD_MOVING:claim-mixed-loss, HAND_PROOF:Theorem1 -/
theorem theorem1 {a b c d e f g h t r x y : ℝ} (hyp : BDMovingHyp a b c d e f g h t r x y)
    (hch : InChamber (bdMovingConfig a b c d e f g h t r x y)) :
    (∃ i, chamberArea (bdMovingConfig a b c d e f g h t r x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (bdMovingConfig a b c d e f g h t r x y) i) →
        t = 0 ∧ r = 0 ∧ bdMovingConfig a b c d e f g h t r x y = optimalConfiguration) := by
  sorry

end Heilbronn.SharpBDMoving
