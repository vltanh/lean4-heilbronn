module

public import Heilbronn.Sharp.BCMoving

/-! # A sharp chamber with C and D moving inward simultaneously (`hand/SHARP_CD_MOVING.md`)

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

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "every displayed doubled area is at least `s = 2A₀`" (which implies the chamber).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SharpCDMoving

open Heilbronn.SharpBCMoving

/-- The C/D-moving configuration: `C = (c,t)`, `D = (1-r,d)`, the other points as in
`HAND_PROOF.md`, in the order `A, B, C, D, E, F, G, H, O`. -/
def cdMovingConfig (a b c d e f g h t r x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, 0) (c, t) (1 - r, d) (1, e) (f, 1) (g, 1) (0, h) (x, y)

/-- The hypotheses (1) of Theorem 1 other than the chamber: the strict orders, `0 ≤ t ≤ a`,
`0 ≤ r ≤ 1-f` and `O ∈ [0,1]²`. -/
def CDMovingHyp (a b c d e f g h t r x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ t ∧ t ≤ a ∧ 0 ≤ r ∧ r ≤ 1 - f ∧
    ((x, y) : Point) ∈ unitSquare

/-- `T_u = α(1-3u) + β - s - u(1-2v) + λ(1-u)`. -/
def cdTu (u v : ℝ) : ℝ :=
  sharpAlpha sharpS u v * (1 - 3 * u) + sharpBeta sharpS u v - sharpS - u * (1 - 2 * v) +
    sharpLambda * (1 - u)

/-- `T_v = β(1-3v) + α - s - v(1-2u) + λ(1-v)`. -/
def cdTv (u v : ℝ) : ℝ :=
  sharpBeta sharpS u v * (1 - 3 * v) + sharpAlpha sharpS u v - sharpS - v * (1 - 2 * u) +
    sharpLambda * (1 - v)

/-- **Claim** (`SHARP_CD_MOVING:claim-chamber-formulas`). The eleven oriented doubled areas:
`ABH = b(h-a)`, `ABC = a(c-b)+bt`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)+r(1-e)`, `GHF = (f-g)(1-h)`,
`GEF = (f-g)(1-e)`, `ADO = (1-r)(y-a)-(d-a)x`, `DHO = (1-r)(h-y)-(h-d)x`, `BOE = e(x-b)-(1-b)y`,
`GCO = (1-t)x-c(1-y)-g(y-t)`, `OCF = c(1-y)+f(y-t)-(1-t)x`.
`hand/SHARP_CD_MOVING.md`, lines 18-33. -/
theorem claim_chamber_formulas (a b c d e f g h t r x y : ℝ) :
    chamberSarea (cdMovingConfig a b c d e f g h t r x y) =
      ![b * (h - a), a * (c - b) + b * t, g * (h - a), (1 - f) * (e - d) + r * (1 - e),
        (f - g) * (1 - h), (f - g) * (1 - e), (1 - r) * (y - a) - (d - a) * x,
        (1 - r) * (h - y) - (h - d) * x, e * (x - b) - (1 - b) * y,
        (1 - t) * x - c * (1 - y) - g * (y - t), c * (1 - y) + f * (y - t) - (1 - t) * x] := by
  sorry

/-- **Claim** (`SHARP_CD_MOVING:claim-bounds`). If every displayed doubled area is at least
`s = 2A₀`, then with `u = s/(h-a)`, `v = s/(f-g)`, `α = 1-v-s/u`, `β = 1-u-s/v`:
(3) `b, g ≥ u`, `e, h ≤ 1-v`, `a ≤ α`, `1-f ≤ β`; (4) `s < α`, `s < β`, `t ≤ α`, `r ≤ β`;
(5) `X = 1-x ≥ 2u + r`, `Y = y ≥ 2v + t`; `x > b`, `e > y`;
(6) `s ≤ g₀ - (1-v)r - (1-u)t`; `u, v < 1/3`; (7) `(u+v)/2 ≤ p₀`; (8) `u, v < 1/5`, `2uv < s`.
`hand/SHARP_CD_MOVING.md`, lines 55-128. -/
theorem claim_bounds {a b c d e f g h t r x y : ℝ} (hyp : CDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (cdMovingConfig a b c d e f g h t r x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let α := sharpAlpha s u v
    let β := sharpBeta s u v
    (u ≤ b ∧ u ≤ g ∧ e ≤ 1 - v ∧ h ≤ 1 - v ∧ a ≤ α ∧ 1 - f ≤ β) ∧
      (s < α ∧ s < β ∧ t ≤ α ∧ r ≤ β) ∧
      (2 * u + r ≤ 1 - x ∧ 2 * v + t ≤ y) ∧ (b < x ∧ y < e) ∧
      s ≤ sharpG u v - (1 - v) * r - (1 - u) * t ∧
      (u < 1 / 3 ∧ v < 1 / 3) ∧ (u + v) / 2 ≤ p₀ ∧
      (u < 1 / 5 ∧ v < 1 / 5) ∧ 2 * u * v < s := by
  sorry

/-- **Claim** (`SHARP_CD_MOVING:claim-eliminations`). Under the assumption of `claim_bounds`:
(9) `(s - ut)(1-y) ≤ α{(1-t)(x-u) - s}` (the ABC/GCO elimination of `SHARP_BC_MOVING` §2, valid
with D moving) and (10) `(s - vr)x ≤ β{(1-r)(1-v-y) - s}` (its reflection; the DHO/DEF
elimination). No sign of `s - ut`, `s - vr` is needed. `hand/SHARP_CD_MOVING.md`, lines 130-155.
Uses: SHARP_BC_MOVING:eq8, SHARP_BC_MOVING:claim-symmetry -/
theorem claim_eliminations {a b c d e f g h t r x y : ℝ}
    (hyp : CDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (cdMovingConfig a b c d e f g h t r x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    (s - u * t) * (1 - y) ≤ sharpAlpha s u v * ((1 - t) * (x - u) - s) ∧
      (s - v * r) * x ≤ sharpBeta s u v * ((1 - r) * (1 - v - y) - s) := by
  sorry

/-- **Claim** (`SHARP_CD_MOVING:claim-identity`). Under the assumption of `claim_bounds`, the
combined coefficients `α(1-t)-s+vr+λ(1-v)` and `β(1-r)-s+ut+λ(1-u)` are positive,
(11) `H₀ + λ(g₀ - s) ≥ tT_u + rT_v + ut² + vr² - (α+β)tr`, and (12) `T_u - αβ > 0`,
`T_v - αβ > 0`. `hand/SHARP_CD_MOVING.md`, lines 157-196. -/
theorem claim_identity {a b c d e f g h t r x y : ℝ} (hyp : CDMovingHyp a b c d e f g h t r x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (cdMovingConfig a b c d e f g h t r x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let α := sharpAlpha s u v
    let β := sharpBeta s u v
    0 < α * (1 - t) - s + v * r + sharpLambda * (1 - v) ∧
      0 < β * (1 - r) - s + u * t + sharpLambda * (1 - u) ∧
      t * cdTu u v + r * cdTv u v + u * t ^ 2 + v * r ^ 2 - (α + β) * t * r ≤
        sharpH s u v + sharpLambda * (sharpG u v - s) ∧
      0 < cdTu u v - α * β ∧ 0 < cdTv u v - α * β := by
  sorry

/-- **Theorem 1** (`SHARP_CD_MOVING:Theorem1`). Under (1) and positivity of the eleven oriented
doubled areas, the minimum of the eleven ordinary triangle areas is at most `A₀`. If all eleven
are at least `A₀`, then `t = r = 0` and the configuration is exactly the equality configuration
of `HAND_PROOF.md` (the closed height conditions in (1) are included).
`hand/SHARP_CD_MOVING.md`, lines 3-42, 175-200.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_BC_MOVING:eq8,
SHARP_CD_MOVING:claim-bounds, SHARP_CD_MOVING:claim-eliminations, SHARP_CD_MOVING:claim-identity,
HAND_PROOF:Theorem1 -/
theorem theorem1 {a b c d e f g h t r x y : ℝ} (hyp : CDMovingHyp a b c d e f g h t r x y)
    (hch : InChamber (cdMovingConfig a b c d e f g h t r x y)) :
    (∃ i, chamberArea (cdMovingConfig a b c d e f g h t r x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (cdMovingConfig a b c d e f g h t r x y) i) →
        t = 0 ∧ r = 0 ∧ cdMovingConfig a b c d e f g h t r x y = optimalConfiguration) := by
  sorry

end Heilbronn.SharpCDMoving
