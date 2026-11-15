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
  sorry

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
  sorry

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
  sorry

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
  sorry

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
  sorry

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
  sorry

end Heilbronn.SharpEFMoving
