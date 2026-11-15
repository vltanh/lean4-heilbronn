module

public import Heilbronn.Sharp.BCMoving

/-! # The sharp chamber with B and E both moving inward (`hand/SHARP_B_E_MOVING.md`)

**Role.** Component of the primary route: the equality branch of rows N6-02/N6-05
(`SIX_BOUNDARY_TWO_SIDE_UPPER`, Section 5, after the rotation `R(u,v) = (v,1-u)`). Not used by the
rows N6-03/04/06/07.

**Setting.** The sharp chamber of `HAND_PROOF.md` with the bottom contact `B = (b,ε)` and the
opposite right contact `E = (1-η,e)` moved inward; `A=(0,a), C=(c,0), D=(1,d), F=(f,1), G=(g,1),
H=(0,h)`, `O=(x,y)` in the square, and the orders (1)
`0<a<h<1, 0<b<c≤f<1, 0<g<f, a≤d<e<1, 0≤ε≤a, 0≤η≤1-f` (the extra orders `a ≤ d`, `c ≤ f` and the
two displacement bounds are part of the theorem's scope). The chamber is positivity of the eleven
oriented doubled areas of the table. Constants: `s = 2A₀`, `λ = (77√65-615)/20` (equal to
`sharpLambda`); `F₀ = sharpG`, `Φ = sharpPhi` of `SHARP_BC_MOVING`.

**Results.**
* `claim_lambda` (2): `λ = (77√65-615)/20` is `sharpLambda`, `s > 7/64`, `0 < λ < 3/10`.
* `claim_scalar` (3): `Φ(u,v) + λ(F₀(u,v) - s) ≤ 0` for `0 < u, v < 1/2`, equality only at
  `u = v = p₀`.
* `eq4`: the factorization `p{Φ(p,p) + λ(F₀(p,p) - s)} = (6+5λ)(p-p₀)²(p-q₀)`,
  `q₀ = (16257+1889√65)/36104 > 1/2`.
* `claim_chamber_formulas`: the eleven oriented doubled areas.
* `claim_losses` (7), (10): `s ≤ F₀ + 2uε + 2vη - εη` and `Φ ≥ εc(1-y) + ηx(1-d)`.
* `claim_coefficients` (11): `c(1-y) > (3/5)u`, `x(1-d) > (3/5)v`.
* `theorem1`: minimum of the eleven areas `≤ A₀`; if all are `≥ A₀` then `ε = η = 0` and the
  configuration is the sharp configuration.

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "all eleven displayed doubled areas are at least `s`" (which implies the chamber).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SharpBEMoving

open Heilbronn.SharpBCMoving

/-- The B/E-moving configuration: `B = (b,ε)`, `E = (1-η,e)`, the other points as in
`HAND_PROOF.md`, in the order `A, B, C, D, E, F, G, H, O`. -/
def beMovingConfig (a b c d e f g h ε η x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, ε) (c, 0) (1, d) (1 - η, e) (f, 1) (g, 1) (0, h) (x, y)

/-- The hypotheses (1) of Theorem 1 other than the chamber:
`0<a<h<1`, `0<b<c≤f<1`, `0<g<f`, `a≤d<e<1`, `0≤ε≤a`, `0≤η≤1-f`, and `O ∈ [0,1]²`. -/
def BEMovingHyp (a b c d e f g h ε η x y : ℝ) : Prop :=
  (0 < a ∧ a < h ∧ h < 1) ∧ (0 < b ∧ b < c ∧ c ≤ f ∧ f < 1) ∧ (0 < g ∧ g < f) ∧
    (a ≤ d ∧ d < e ∧ e < 1) ∧ (0 ≤ ε ∧ ε ≤ a) ∧ (0 ≤ η ∧ η ≤ 1 - f) ∧
    ((x, y) : Point) ∈ unitSquare

/-- `q₀ = (16257+1889√65)/36104`, the third root in the factorization (4). -/
def q₀ : ℝ := (16257 + 1889 * Real.sqrt 65) / 36104

/-- **Claim** (`SHARP_B_E_MOVING:claim-lambda`). Equation (2) and the line after it: the weight
`λ = (77√65-615)/20` equals `(8-39p₀)/(6-10p₀)`, `s = 2A₀ = (9√65-55)/160`, `s > 7/64` and
`0 < λ < 3/10`. `hand/SHARP_B_E_MOVING.md`, lines 57-68. -/
theorem claim_lambda :
    sharpLambda = (77 * Real.sqrt 65 - 615) / 20 ∧ sharpS = (9 * Real.sqrt 65 - 55) / 160 ∧
      7 / 64 < sharpS ∧ 0 < sharpLambda ∧ sharpLambda < 3 / 10 := by
  sorry

/-- **Claim** (`SHARP_B_E_MOVING:eq4`). For `p ≠ 0`,
`p{Φ(p,p) + λ(F₀(p,p) - s)} = (6+5λ)(p-p₀)²(p-q₀)` with `q₀ = (16257+1889√65)/36104 > 1/2`.
`hand/SHARP_B_E_MOVING.md`, lines 94-107. -/
theorem eq4 {p : ℝ} (hp : p ≠ 0) :
    p * (sharpPhi sharpS p p + sharpLambda * (sharpG p p - sharpS)) =
        (6 + 5 * sharpLambda) * (p - p₀) ^ 2 * (p - q₀) ∧ 1 / 2 < q₀ := by
  sorry

/-- **Claim** (`SHARP_B_E_MOVING:claim-scalar`). Equation (3): for `0 < u, v < 1/2`,
`Φ(u,v) + λ(F₀(u,v) - s) ≤ 0`, and equality forces `u = v = p₀`.
`hand/SHARP_B_E_MOVING.md`, lines 55-107. -/
theorem claim_scalar {u v : ℝ} (hu : 0 < u) (hu2 : u < 1 / 2) (hv : 0 < v) (hv2 : v < 1 / 2) :
    sharpPhi sharpS u v + sharpLambda * (sharpG u v - sharpS) ≤ 0 ∧
      (sharpPhi sharpS u v + sharpLambda * (sharpG u v - sharpS) = 0 → u = p₀ ∧ v = p₀) := by
  sorry

/-- **Claim** (`SHARP_B_E_MOVING:claim-chamber-formulas`). The eleven oriented doubled areas, with
`L = h-a`, `M = f-g`: `ABH = bL`, `ABC = a(c-b)-cε`, `AGH = gL`, `DEF = (1-f)(e-d)-η(1-d)`,
`GHF = M(1-h)`, `GEF = M(1-e)`, `ADO = y-a-(d-a)x`, `DHO = h-y-(h-d)x`,
`BOE = (e-ε)(x-b)-(1-η-b)(y-ε)`, `GCO = x-c+(c-g)y`, `OCF = c-x+(f-c)y`.
`hand/SHARP_B_E_MOVING.md`, lines 20-37. -/
theorem claim_chamber_formulas (a b c d e f g h ε η x y : ℝ) :
    chamberSarea (beMovingConfig a b c d e f g h ε η x y) =
      ![b * (h - a), a * (c - b) - c * ε, g * (h - a), (1 - f) * (e - d) - η * (1 - d),
        (f - g) * (1 - h), (f - g) * (1 - e), y - a - (d - a) * x, h - y - (h - d) * x,
        (e - ε) * (x - b) - (1 - η - b) * (y - ε), x - c + (c - g) * y,
        c - x + (f - c) * y] := by
  sorry

/-- **Claim** (`SHARP_B_E_MOVING:claim-losses`). If all eleven doubled areas are at least
`s = 2A₀`, then with `u = s/(h-a)`, `v = s/(f-g)`: `0 < u, v < 1/2`, `x ≤ 1-2u`, `y ≥ 2v` (6),
`x > b`, `e > y`, (7) `s ≤ F₀(u,v) + 2uε + 2vη - εη`, and (10) `Φ(u,v) ≥ εc(1-y) + ηx(1-d)`.
`hand/SHARP_B_E_MOVING.md`, lines 109-208. -/
theorem claim_losses {a b c d e f g h ε η x y : ℝ} (hyp : BEMovingHyp a b c d e f g h ε η x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (beMovingConfig a b c d e f g h ε η x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    (0 < u ∧ u < 1 / 2 ∧ 0 < v ∧ v < 1 / 2) ∧ (x ≤ 1 - 2 * u ∧ 2 * v ≤ y) ∧
      (b < x ∧ y < e) ∧
      s ≤ sharpG u v + 2 * u * ε + 2 * v * η - ε * η ∧
      ε * c * (1 - y) + η * x * (1 - d) ≤ sharpPhi s u v := by
  sorry

/-- **Claim** (`SHARP_B_E_MOVING:claim-coefficients`). Equation (11): under the assumption of
`claim_losses`, `c(1-y) > (3/5)u` and `x(1-d) > (3/5)v`.
`hand/SHARP_B_E_MOVING.md`, lines 210-299. -/
theorem claim_coefficients {a b c d e f g h ε η x y : ℝ}
    (hyp : BEMovingHyp a b c d e f g h ε η x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (beMovingConfig a b c d e f g h ε η x y) i) :
    let u := sharpS / (h - a)
    let v := sharpS / (f - g)
    3 / 5 * u < c * (1 - y) ∧ 3 / 5 * v < x * (1 - d) := by
  sorry

/-- **Theorem 1** (`SHARP_B_E_MOVING:Theorem1`). Throughout (1) and the chamber (positivity of the
eleven oriented doubled areas), the minimum of the eleven ordinary areas is at most `A₀`. If all
eleven are at least `A₀`, then `ε = η = 0` and the configuration is exactly the sharp boundary
configuration of `HAND_PROOF.md`. `hand/SHARP_B_E_MOVING.md`, lines 39-53, 301-326.
Uses: SHARP_B_E_MOVING:claim-lambda, SHARP_B_E_MOVING:claim-scalar, SHARP_B_E_MOVING:eq4,
SHARP_B_E_MOVING:claim-losses, SHARP_B_E_MOVING:claim-coefficients, HAND_PROOF:Theorem1 -/
theorem theorem1 {a b c d e f g h ε η x y : ℝ} (hyp : BEMovingHyp a b c d e f g h ε η x y)
    (hch : InChamber (beMovingConfig a b c d e f g h ε η x y)) :
    (∃ i, chamberArea (beMovingConfig a b c d e f g h ε η x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (beMovingConfig a b c d e f g h ε η x y) i) →
        ε = 0 ∧ η = 0 ∧ beMovingConfig a b c d e f g h ε η x y = optimalConfiguration) := by
  sorry

end Heilbronn.SharpBEMoving
