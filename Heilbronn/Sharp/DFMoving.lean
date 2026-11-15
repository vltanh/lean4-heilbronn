module

public import Heilbronn.Sharp.BCMoving

/-! # A simultaneous D/F sharp chamber under rational bounds (`hand/SHARP_DF_MOVING.md`)

**Role.** Component of the primary route: the equality branch of word 23 of
`SIX_BOUNDARY_SIDE_OPPOSITE` (row N6-04, identity labels). Sections 1 and 3–4 are reused by
`SHARP_EF_MOVING` (the auxiliary expressions `a_v`, `T`, `K₀`, `K₁` are defined here for that
reason).

**Setting.** The sharp chamber of `HAND_PROOF.md` with `D = (1-r,d)` and `F = (f,k)` moved
inward; `A=(0,a), B=(b,0), C=(c,0), E=(1,e), G=(g,1), H=(0,h)`, `O=(x,y)` in the square, the strict
orders (`SharpOrders`), `0 ≤ r ≤ 1-f`, `h ≤ k ≤ 1` (1), and the rational bounds (2)
`11/20 ≤ h-a ≤ 2/3`, `f-g ≥ 11/20`, `g ≤ 1/4`, `c ≥ 2/3` (hypotheses, supplied by the parent's
branch cuts). The chamber is positivity of the eleven oriented doubled areas of the table. With
`s = 2A₀`, `L = h-a`, `M = f-g`, `u = s/L`, `v = s/M`, `w = (1-k)/M`, `z = g-u`, `α = 1-v-L`,
`B = 1-f`, `β = 1-u-M = B+z`, `A* = α+gw`.

**Results.**
* `claim_chamber_formulas`: the eleven oriented doubled areas.
* `theorem1`: minimum of the eleven areas `≤ A₀`; if all are `≥ A₀` then `r = 0`, `k = 1` and the
  configuration is the sharp configuration.
* `claim_bounds` (3)–(7): consequences of the anchor costs and the diagonal sums.
* `claim_eliminations` (8)–(10): the three scalar inequalities with the inward losses retained.
* `claim_identity` (11)–(12): positivity of the substitution coefficients and
  `H₀ + λ(g₀-s) ≥ z a_v + rT + vr² + w(K₀ + rK₁)`.
* `claim_coefficients` (13)–(15): `a_v > 29/100`, `K₀ > 3113/153600`, `T > 637/4800`,
  `K₁ > -75761/409600`, `T + wK₁ > 157073/8650752`.

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "all eleven displayed doubled areas are at least `s`" (which implies the chamber).
`H₀` of the note, written with `α = 1-v-L`, `β = 1-u-M`, is `sharpH s u v` since `s/u = L`,
`s/v = M`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SharpDFMoving

open Heilbronn.SharpBCMoving

/-- The D/F-moving configuration: `D = (1-r,d)`, `F = (f,k)`, the other points as in
`HAND_PROOF.md`, in the order `A, B, C, D, E, F, G, H, O`. -/
def dfMovingConfig (a b c d e f g h r k x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, 0) (c, 0) (1 - r, d) (1, e) (f, k) (g, 1) (0, h) (x, y)

/-- The rational bounds (2): `11/20 ≤ h-a ≤ 2/3`, `f-g ≥ 11/20`, `g ≤ 1/4`, `c ≥ 2/3`. -/
def RationalBox (a c f g h : ℝ) : Prop :=
  11 / 20 ≤ h - a ∧ h - a ≤ 2 / 3 ∧ 11 / 20 ≤ f - g ∧ g ≤ 1 / 4 ∧ 2 / 3 ≤ c

/-- The hypotheses (1)–(2) of Theorem 1 other than the chamber: the strict orders,
`0 ≤ r ≤ 1-f`, `h ≤ k ≤ 1`, the rational bounds (2) and `O ∈ [0,1]²`. -/
def DFMovingHyp (a b c d e f g h r k x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ r ∧ r ≤ 1 - f ∧ h ≤ k ∧ k ≤ 1 ∧ RationalBox a c f g h ∧
    ((x, y) : Point) ∈ unitSquare

/-- `a_v = 1 - 3v - s`. -/
def dfAv (v : ℝ) : ℝ := 1 - 3 * v - sharpS

/-- `T = B(1-3v) + α - s - v(1-2u) + λ(1-v)`, with `B = 1-f` and `α = 1-v-L`. -/
def dfT (u v α B : ℝ) : ℝ :=
  B * (1 - 3 * v) + α - sharpS - v * (1 - 2 * u) + sharpLambda * (1 - v)

/-- `K₀ = (B-s)(c-g) - g(1-3u) + s(1-2u) + λ{c(1-u) - g(1-3u) - 2u²}`. -/
def dfK0 (u B c g : ℝ) : ℝ :=
  (B - sharpS) * (c - g) - g * (1 - 3 * u) + sharpS * (1 - 2 * u) +
    sharpLambda * (c * (1 - u) - g * (1 - 3 * u) - 2 * u ^ 2)

/-- `K₁ = -B(c-g) + (1+λ)g - λu - s`. -/
def dfK1 (u B c g : ℝ) : ℝ :=
  -B * (c - g) + (1 + sharpLambda) * g - sharpLambda * u - sharpS

/-- **Claim** (`SHARP_DF_MOVING:claim-chamber-formulas`). The eleven oriented doubled areas:
`ABH = b(h-a)`, `ABC = a(c-b)`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)+r(k-e)`,
`GHF = (f-g)(1-h)+g(1-k)`, `GEF = (f-g)(1-e)-(1-g)(1-k)`, `ADO = (1-r)(y-a)-(d-a)x`,
`DHO = (1-r)(h-y)-(h-d)x`, `BOE = e(x-b)-(1-b)y`, `GCO = x-c+(c-g)y`, `OCF = k(c-x)+(f-c)y`.
`hand/SHARP_DF_MOVING.md`, lines 29-43. -/
theorem claim_chamber_formulas (a b c d e f g h r k x y : ℝ) :
    chamberSarea (dfMovingConfig a b c d e f g h r k x y) =
      ![b * (h - a), a * (c - b), g * (h - a), (1 - f) * (e - d) + r * (k - e),
        (f - g) * (1 - h) + g * (1 - k), (f - g) * (1 - e) - (1 - g) * (1 - k),
        (1 - r) * (y - a) - (d - a) * x, (1 - r) * (h - y) - (h - d) * x,
        e * (x - b) - (1 - b) * y, x - c + (c - g) * y, k * (c - x) + (f - c) * y] := by
  sorry

/-- **Claim** (`SHARP_DF_MOVING:claim-bounds`). If all eleven doubled areas are at least
`s = 2A₀`, then (with the notation of the module docstring):
(3) `b, g ≥ u`, `h ≤ 1-v+gw`, `e ≤ 1-v-(1-g)w`, `a ≤ A*`, `z ≥ 0`, `a > s`, `A* > s`;
(4) `k > e`, `s < B`; (5) `u, v < 1/5`, `u > 21/128`, `α > 2/15`, `B < 183/640`;
(6) `0 ≤ w < 109/176`; (7) `X = 1-x ≥ 2u + r`, `Y = y ≥ 2v + w(c-1+X)`.
`hand/SHARP_DF_MOVING.md`, lines 55-103. -/
theorem claim_bounds {a b c d e f g h r k x y : ℝ} (hyp : DFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (dfMovingConfig a b c d e f g h r k x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let w := (1 - k) / (f - g)
    let α := 1 - v - (h - a)
    let B := 1 - f
    let Astar := α + g * w
    (u ≤ b ∧ u ≤ g ∧ h ≤ 1 - v + g * w ∧ e ≤ 1 - v - (1 - g) * w ∧ a ≤ Astar ∧
        0 ≤ g - u ∧ s < a ∧ s < Astar) ∧
      (e < k ∧ s < B) ∧
      (u < 1 / 5 ∧ v < 1 / 5 ∧ 21 / 128 < u ∧ 2 / 15 < α ∧ B < 183 / 640) ∧
      (0 ≤ w ∧ w < 109 / 176) ∧
      (2 * u + r ≤ 1 - x ∧ 2 * v + w * (c - 1 + (1 - x)) ≤ y) := by
  sorry

/-- **Claim** (`SHARP_DF_MOVING:claim-eliminations`). Under the assumption of `claim_bounds`:
`x > b`, `e > y`, (8) `s(1-y) ≤ A*(x-u-s)`, (9) `(s-rv)x ≤ B{(1-r)(1-v-y+w(g-x)) - s}` and
(10) `s ≤ {1-v-(1-g)w}(x-u) - (1-u)y`. `hand/SHARP_DF_MOVING.md`, lines 105-138. -/
theorem claim_eliminations {a b c d e f g h r k x y : ℝ}
    (hyp : DFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (dfMovingConfig a b c d e f g h r k x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let w := (1 - k) / (f - g)
    let α := 1 - v - (h - a)
    let B := 1 - f
    let Astar := α + g * w
    (b < x ∧ y < e) ∧
      s * (1 - y) ≤ Astar * (x - u - s) ∧
      (s - r * v) * x ≤ B * ((1 - r) * (1 - v - y + w * (g - x)) - s) ∧
      s ≤ (1 - v - (1 - g) * w) * (x - u) - (1 - u) * y := by
  sorry

/-- **Claim** (`SHARP_DF_MOVING:claim-identity`). Under the assumption of `claim_bounds`, the
coefficients `C₁ = A*-s+rv-B(1-r)w+λ{1-v-(1-g)w}` and `C₂ = B(1-r)-s+λ(1-u)` satisfy
`C₂ > 1/5 - s² > 0` and (11) `C₁ + wC₂ > 1/5 - (11/100)(109/176) > 0`, and
(12) `H₀ + λ(g₀ - s) ≥ z a_v + rT + vr² + w(K₀ + rK₁)`.
`hand/SHARP_DF_MOVING.md`, lines 140-183. -/
theorem claim_identity {a b c d e f g h r k x y : ℝ} (hyp : DFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (dfMovingConfig a b c d e f g h r k x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let w := (1 - k) / (f - g)
    let z := g - u
    let α := 1 - v - (h - a)
    let B := 1 - f
    let Astar := α + g * w
    let C₁ := Astar - s + r * v - B * (1 - r) * w + sharpLambda * (1 - v - (1 - g) * w)
    let C₂ := B * (1 - r) - s + sharpLambda * (1 - u)
    1 / 5 - s ^ 2 < C₂ ∧ 0 < 1 / 5 - s ^ 2 ∧
      1 / 5 - 11 / 100 * (109 / 176) < C₁ + w * C₂ ∧ 0 < 1 / 5 - 11 / 100 * (109 / 176 : ℝ) ∧
      z * dfAv v + r * dfT u v α B + v * r ^ 2 + w * (dfK0 u B c g + r * dfK1 u B c g) ≤
        sharpH s u v + sharpLambda * (sharpG u v - s) := by
  sorry

/-- **Claim** (`SHARP_DF_MOVING:claim-coefficients`). Under the assumption of `claim_bounds`:
`a_v > 29/100`, (13) `K₀ > 3113/153600`, (14) `T > 637/4800`, `K₁ > -75761/409600` and
(15) `T + wK₁ > 157073/8650752`. `hand/SHARP_DF_MOVING.md`, lines 185-231. -/
theorem claim_coefficients {a b c d e f g h r k x y : ℝ}
    (hyp : DFMovingHyp a b c d e f g h r k x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (dfMovingConfig a b c d e f g h r k x y) i) :
    let s := sharpS
    let u := s / (h - a)
    let v := s / (f - g)
    let w := (1 - k) / (f - g)
    let α := 1 - v - (h - a)
    let B := 1 - f
    29 / 100 < dfAv v ∧ 3113 / 153600 < dfK0 u B c g ∧ 637 / 4800 < dfT u v α B ∧
      -75761 / 409600 < dfK1 u B c g ∧
      157073 / 8650752 < dfT u v α B + w * dfK1 u B c g := by
  sorry

/-- **Theorem 1** (`SHARP_DF_MOVING:Theorem1`). Under (1)–(2) and positivity of the eleven
oriented doubled areas, the minimum of the eleven ordinary areas is at most `A₀`. If all eleven
are at least `A₀`, then `r = 0`, `k = 1`, and the configuration is exactly the equality
configuration of `HAND_PROOF.md` (the closed inequalities (1)–(2) are included).
`hand/SHARP_DF_MOVING.md`, lines 10-53, 233-245.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_DF_MOVING:claim-bounds,
SHARP_DF_MOVING:claim-eliminations, SHARP_DF_MOVING:claim-identity,
SHARP_DF_MOVING:claim-coefficients, HAND_PROOF:Theorem1 -/
theorem theorem1 {a b c d e f g h r k x y : ℝ} (hyp : DFMovingHyp a b c d e f g h r k x y)
    (hch : InChamber (dfMovingConfig a b c d e f g h r k x y)) :
    (∃ i, chamberArea (dfMovingConfig a b c d e f g h r k x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (dfMovingConfig a b c d e f g h r k x y) i) →
        r = 0 ∧ k = 1 ∧ dfMovingConfig a b c d e f g h r k x y = optimalConfiguration) := by
  sorry

end Heilbronn.SharpDFMoving
