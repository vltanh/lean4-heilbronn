module

public import Heilbronn.Common.Families

/-! # Two further inward-moving sharp chambers (`hand/SHARP_BC_MOVING.md`)

**Role.** Component of the primary route. Lemma 1 (the common sharp scalar inequality) is used by
every moving sharp chamber of the N six-boundary rows (`SHARP_BD_MOVING`, `SHARP_CD_MOVING`,
`SHARP_DF_MOVING`, `SHARP_EF_MOVING`); Theorems 2 and 3 are used by
`SEVEN_BOUNDARY_TOP_CAP_RADIAL` (after a horizontal reflection, resp. a half-turn); the
Section 3 bounds (17)–(18) are reused by `SHARP_BD_MOVING`, the Section 2 elimination (8) by
`SHARP_CD_MOVING`.

**Setting.** The sharp chamber of `HAND_PROOF.md`, Part I: eight boundary points
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), G=(g,1), H=(0,h)` with the strict orders
`0<a<h<1, 0<b<c<1, 0<d<e<1, 0<g<f<1` (`SharpOrders`) and a ninth point `O=(x,y)` of the square,
and the eleven chamber triangles `ABH, ABC, AGH, DEF, GHF, GEF, ADO, DHO, BOE, GCO, OCF`, each
oriented so that it is positive at the sharp configuration (`chamberTriangles`). "The chamber"
means that all eleven oriented doubled areas are positive (`InChamber`). In this note one contact
moves inward: `C = (c,t)` with `0 ≤ t < a` (Theorem 2), or `B = (b,t)` with `0 ≤ t ≤ d`
(Theorem 3). The sharp constants are `p₀ = (15-√65)/40` (`Heilbronn.p₀`),
`s₀ = 2A₀ = (2-9p₀)/4` (`sharpS`) and `λ = (8-39p₀)/(6-10p₀)` (`sharpLambda`); with `L = h-a`,
`M = f-g`, `u = s/L`, `v = s/M` the scalar quantities are `α = 1-v-s/u`, `β = 1-u-s/v`,
`g(u,v) = 1-3u-3v+5uv`, `H(u,v) = α(1-3u-s)+β(1-3v-s)+2s(u+v-1)`.

This file also holds the definitions shared by all the `Heilbronn/Sharp/*` files: the constants,
the scalar functions, `SharpOrders`, the configuration order `sharpConfig` (`A, B, C, D, E, F, G,
H, O`, the order of `optimalConfiguration`), the chamber triangles and `InChamber`.

"The configuration is exactly the equality configuration of `HAND_PROOF.md`" is written
`P = optimalConfiguration` (`Heilbronn/Geometry.lean`, same point order).

**Results.**
* `claim_constants` (1): `173/1000 < p₀ < 7/40`, `7/64 < s₀ < 11/100`, `1/4 < λ < 1/3`.
* `eq_expansion`: the expansion `H = 6P + (3s-4)S + 2s + 2 - s(1-s)S/P` (`S = u+v`, `P = uv`).
* `lemma1`: `H(u,v) + λ(g(u,v) - s₀) ≤ 0` for `u, v > 0`, `(u+v)/2 < 1/4`; equality only at
  `u = v = p₀`.
* `eq3`: the eleven oriented doubled areas of the C-moving chamber.
* `eq8`: the ABC/GCO elimination `(s-ut)(1-y) ≤ α{(1-t)(x-u)-s}` of the C-moving chamber.
* `theorem2`: the C-moving chamber (`0 ≤ t < a`): minimum `≤ A₀`, equality only at `t = 0` and the
  sharp configuration.
* `eq12`: the eleven oriented doubled areas of the B-moving chamber.
* `eq17`: the scalar consequence `u, v < 1/4`, `t < 1/2` of (13)–(15).
* `eq18`: the ABC/GCO elimination `(s+ut)(1-y) ≤ (α-t)(x-u-s)` of the B-moving chamber.
* `theorem3`: the B-moving chamber (`0 ≤ t ≤ d`): minimum `≤ A₀`, equality only at `t = 0` and
  the sharp configuration.
* `claim_symmetry`: the reflection `(x,y) ↦ (1-y,1-x)` with the relabelling `A↔F, B↔E, C↔D, G↔H`
  permutes the eleven chamber areas.

Implicit in the manuscript: the claims inside the proofs (`eq8`, `eq18`) are stated under the
proof's standing assumption "every expression is at least `s = s₀`"; this assumption implies the
chamber, which is therefore not repeated there.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SharpBCMoving

/-! ### The sharp constants and scalar functions (shared by all sharp chambers) -/

/-- `s₀ = 2A₀ = (9√65-55)/160`, the doubled sharp area. -/
def sharpS : ℝ := 2 * A₀

/-- `λ = (8-39p₀)/(6-10p₀)`, the sharp tangent weight. -/
def sharpLambda : ℝ := (8 - 39 * p₀) / (6 - 10 * p₀)

/-- `α = 1 - v - s/u`. -/
def sharpAlpha (s u v : ℝ) : ℝ := 1 - v - s / u

/-- `β = 1 - u - s/v`. -/
def sharpBeta (s u v : ℝ) : ℝ := 1 - u - s / v

/-- `g(u,v) = 1 - 3u - 3v + 5uv` (called `g₀` or `F₀` in the other sharp notes). -/
def sharpG (u v : ℝ) : ℝ := 1 - 3 * u - 3 * v + 5 * u * v

/-- `H(u,v) = α(1-3u-s) + β(1-3v-s) + 2s(u+v-1)` (called `H₀` in the other sharp notes). -/
def sharpH (s u v : ℝ) : ℝ :=
  sharpAlpha s u v * (1 - 3 * u - s) + sharpBeta s u v * (1 - 3 * v - s) + 2 * s * (u + v - 1)

/-- The expanded form `Φ(u,v) = 6uv + (3s-4)(u+v) + 2s + 2 - s(1-s)(u+v)/(uv)` of `H`
(`SHARP_BC_MOVING.md` line 44, `SHARP_B_E_MOVING.md` (3)). -/
def sharpPhi (s u v : ℝ) : ℝ :=
  6 * u * v + (3 * s - 4) * (u + v) + 2 * s + 2 - s * (1 - s) * (u + v) / (u * v)

/-! ### The sharp chamber (shared by all sharp chambers) -/

/-- The usual strict orders of the sharp family (`HAND_PROOF.md` Part I):
`0<a<h<1`, `0<b<c<1`, `0<d<e<1`, `0<g<f<1`. -/
def SharpOrders (a b c d e f g h : ℝ) : Prop :=
  0 < a ∧ a < h ∧ h < 1 ∧ 0 < b ∧ b < c ∧ c < 1 ∧ 0 < d ∧ d < e ∧ e < 1 ∧
    0 < g ∧ g < f ∧ f < 1

/-- The nine points of a sharp chamber in the order `A, B, C, D, E, F, G, H, O` (indices
`0, …, 8`), the order of `optimalConfiguration`. -/
def sharpConfig (A B C D E F G H O : Point) : Fin 9 → Point :=
  ![A, B, C, D, E, F, G, H, O]

/-- The eleven chamber triangles of `HAND_PROOF.md` Theorem 1, as index triples into
`sharpConfig`: `ABH, ABC, AGH, DEF, GHF, GEF, ADO, DHO, BOE, GCO, OCF`, each with the
orientation that is positive at the sharp configuration. -/
def chamberTriangles : Fin 11 → Fin 9 × Fin 9 × Fin 9 :=
  ![(0, 1, 7), (0, 1, 2), (0, 6, 7), (3, 4, 5), (6, 7, 5), (6, 4, 5),
    (0, 3, 8), (3, 7, 8), (1, 8, 4), (6, 2, 8), (8, 2, 5)]

/-- The oriented doubled area of the `i`-th chamber triangle. -/
def chamberSarea (P : Fin 9 → Point) (i : Fin 11) : ℝ :=
  sarea (P (chamberTriangles i).1) (P (chamberTriangles i).2.1) (P (chamberTriangles i).2.2)

/-- The ordinary area of the `i`-th chamber triangle. -/
def chamberArea (P : Fin 9 → Point) (i : Fin 11) : ℝ :=
  triangleArea (P (chamberTriangles i).1) (P (chamberTriangles i).2.1)
    (P (chamberTriangles i).2.2)

/-- The chamber: all eleven oriented doubled areas are positive. -/
def InChamber (P : Fin 9 → Point) : Prop :=
  ∀ i, 0 < chamberSarea P i

/-- The base (unmoved) chamber configuration of `HAND_PROOF.md` Theorem 1:
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), G=(g,1), H=(0,h), O=(x,y)`. -/
def baseConfig (a b c d e f g h x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, 0) (c, 0) (1, d) (1, e) (f, 1) (g, 1) (0, h) (x, y)

/-! ### Section 0: constants -/

/-- **Claim** (`SHARP_BC_MOVING:claim-constants`). Equation (1): `s₀ = (2-9p₀)/4`,
`173/1000 < p₀ < 7/40`, `7/64 < s₀ < 11/100` and `1/4 < λ < 1/3`.
`hand/SHARP_BC_MOVING.md`, lines 9-22. -/
theorem claim_constants :
    sharpS = (2 - 9 * p₀) / 4 ∧ 173 / 1000 < p₀ ∧ p₀ < 7 / 40 ∧
      7 / 64 < sharpS ∧ sharpS < 11 / 100 ∧ 1 / 4 < sharpLambda ∧ sharpLambda < 1 / 3 := by
  sorry

/-! ### Section 1: the common sharp scalar inequality -/

/-- **Claim** (`SHARP_BC_MOVING:eq-expansion`). For `u, v > 0`, `H(u,v)` equals the expansion
`6P + (3s-4)S + 2s + 2 - s(1-s)S/P` with `S = u+v`, `P = uv`.
`hand/SHARP_BC_MOVING.md`, lines 41-45. -/
theorem eq_expansion (s : ℝ) {u v : ℝ} (hu : 0 < u) (hv : 0 < v) :
    sharpH s u v = sharpPhi s u v := by
  sorry

/-- **Lemma 1** (`SHARP_BC_MOVING:Lemma1`). With `s = s₀`, for `u, v > 0` and
`0 < (u+v)/2 < 1/4`: `H(u,v) + λ(g(u,v) - s) ≤ 0`, with equality only when `u = v = p₀`.
`hand/SHARP_BC_MOVING.md`, lines 24-75. -/
theorem lemma1 {u v : ℝ} (hu : 0 < u) (hv : 0 < v) (hp : (u + v) / 2 < 1 / 4) :
    sharpH sharpS u v + sharpLambda * (sharpG u v - sharpS) ≤ 0 ∧
      (sharpH sharpS u v + sharpLambda * (sharpG u v - sharpS) = 0 → u = p₀ ∧ v = p₀) := by
  sorry

/-! ### Section 2: the C-moving chamber below the height of A -/

/-- The C-moving configuration: `C = (c,t)`, the other points as in `baseConfig`. -/
def cMovingConfig (a b c d e f g h t x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, 0) (c, t) (1, d) (1, e) (f, 1) (g, 1) (0, h) (x, y)

/-- The hypotheses of Theorem 2 other than the chamber: the strict orders, `0 ≤ t < a` and
`O ∈ [0,1]²`. -/
def CMovingHyp (a b c d e f g h t x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ t ∧ t < a ∧ ((x, y) : Point) ∈ unitSquare

/-- **Claim** (`SHARP_BC_MOVING:eq3`). The eleven oriented doubled areas of the C-moving chamber
are `ABH = b(h-a)`, `ABC = a(c-b)+bt`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)`, `GHF = (f-g)(1-h)`,
`GEF = (f-g)(1-e)`, `ADO = y-a-(d-a)x`, `DHO = h-y-(h-d)x`, `BOE = e(x-b)-(1-b)y`,
`GCO = (1-t)x-c(1-y)-g(y-t)`, `OCF = c(1-y)+f(y-t)-(1-t)x`.
`hand/SHARP_BC_MOVING.md`, lines 91-107. -/
theorem eq3 (a b c d e f g h t x y : ℝ) :
    chamberSarea (cMovingConfig a b c d e f g h t x y) =
      ![b * (h - a), a * (c - b) + b * t, g * (h - a), (1 - f) * (e - d), (f - g) * (1 - h),
        (f - g) * (1 - e), y - a - (d - a) * x, h - y - (h - d) * x, e * (x - b) - (1 - b) * y,
        (1 - t) * x - c * (1 - y) - g * (y - t), c * (1 - y) + f * (y - t) - (1 - t) * x] := by
  sorry

/-- **Claim** (`SHARP_BC_MOVING:eq8`). In the C-moving chamber, if every chamber doubled area is
at least `s = s₀`, then with `u = s/(h-a)`, `v = s/(f-g)`, `α = 1-v-s/u`,
`(s - ut)(1-y) ≤ α{(1-t)(x-u) - s}` (the ABC/GCO elimination; no sign of `s - ut` is needed).
`hand/SHARP_BC_MOVING.md`, lines 147-168. -/
theorem eq8 {a b c d e f g h t x y : ℝ} (hyp : CMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (cMovingConfig a b c d e f g h t x y) i) :
    let u := sharpS / (h - a)
    let v := sharpS / (f - g)
    (sharpS - u * t) * (1 - y) ≤ sharpAlpha sharpS u v * ((1 - t) * (x - u) - sharpS) := by
  sorry

/-- **Theorem 2** (`SHARP_BC_MOVING:Theorem2`). C-moving chamber: under the strict orders,
`0 ≤ t < a`, `O ∈ [0,1]²` and positivity of the eleven oriented doubled areas (3), the minimum of
the eleven ordinary areas is at most `A₀`; if all eleven are at least `A₀`, then `t = 0` and the
configuration is exactly the equality configuration of `HAND_PROOF.md`.
`hand/SHARP_BC_MOVING.md`, lines 77-200.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_BC_MOVING:eq8,
HAND_PROOF:Theorem1 -/
theorem theorem2 {a b c d e f g h t x y : ℝ} (hyp : CMovingHyp a b c d e f g h t x y)
    (hch : InChamber (cMovingConfig a b c d e f g h t x y)) :
    (∃ i, chamberArea (cMovingConfig a b c d e f g h t x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (cMovingConfig a b c d e f g h t x y) i) →
        t = 0 ∧ cMovingConfig a b c d e f g h t x y = optimalConfiguration) := by
  sorry

/-! ### Section 3: the B-moving chamber below the height of D -/

/-- The B-moving configuration: `B = (b,t)`, the other points as in `baseConfig`. -/
def bMovingConfig (a b c d e f g h t x y : ℝ) : Fin 9 → Point :=
  sharpConfig (0, a) (b, t) (c, 0) (1, d) (1, e) (f, 1) (g, 1) (0, h) (x, y)

/-- The hypotheses of Theorem 3 other than the chamber: the strict orders, `0 ≤ t ≤ d` and
`O ∈ [0,1]²`. -/
def BMovingHyp (a b c d e f g h t x y : ℝ) : Prop :=
  SharpOrders a b c d e f g h ∧ 0 ≤ t ∧ t ≤ d ∧ ((x, y) : Point) ∈ unitSquare

/-- **Claim** (`SHARP_BC_MOVING:eq12`). The eleven oriented doubled areas of the B-moving chamber:
`ABC = a(c-b)-ct`, `BOE = e(x-b)-(1-b)y+t(1-x)`, the other nine as in `HAND_PROOF.md`
(`ABH = b(h-a)`, `AGH = g(h-a)`, `DEF = (1-f)(e-d)`, `GHF = (f-g)(1-h)`, `GEF = (f-g)(1-e)`,
`ADO = y-a-(d-a)x`, `DHO = h-y-(h-d)x`, `GCO = x-c+(c-g)y`, `OCF = c-x+(f-c)y`).
`hand/SHARP_BC_MOVING.md`, lines 204-215. -/
theorem eq12 (a b c d e f g h t x y : ℝ) :
    chamberSarea (bMovingConfig a b c d e f g h t x y) =
      ![b * (h - a), a * (c - b) - c * t, g * (h - a), (1 - f) * (e - d), (f - g) * (1 - h),
        (f - g) * (1 - e), y - a - (d - a) * x, h - y - (h - d) * x,
        e * (x - b) - (1 - b) * y + t * (1 - x), x - c + (c - g) * y, c - x + (f - c) * y] := by
  sorry

/-- **Claim** (`SHARP_BC_MOVING:eq17`). The scalar step of Section 3 ("both effective parameters
are below 1/4"): with `s = s₀`, if `0 < u, v < 1/2`, `0 ≤ t`, `α - t > s`, `β > s` (13),
`s ≤ g(u,v) + 2ut` (14) and `t ≤ α(1-u) - s` (15), then `u, v < 1/4` and `t < 1/2`.
`hand/SHARP_BC_MOVING.md`, lines 250-282 (reused as (8) of `SHARP_BD_MOVING.md`). -/
theorem eq17 {u v t : ℝ} (hu : 0 < u) (hu2 : u < 1 / 2) (hv : 0 < v) (hv2 : v < 1 / 2)
    (ht : 0 ≤ t) (hα : sharpS < sharpAlpha sharpS u v - t) (hβ : sharpS < sharpBeta sharpS u v)
    (h14 : sharpS ≤ sharpG u v + 2 * u * t)
    (h15 : t ≤ sharpAlpha sharpS u v * (1 - u) - sharpS) :
    u < 1 / 4 ∧ v < 1 / 4 ∧ t < 1 / 2 := by
  sorry

/-- **Claim** (`SHARP_BC_MOVING:eq18`). In the B-moving chamber, if every chamber doubled area is
at least `s = s₀`, then with `u = s/(h-a)`, `v = s/(f-g)`, `α = 1-v-s/u`,
`(s + ut)(1-y) ≤ (α - t)(x - u - s)` (the ABC/GCO elimination).
`hand/SHARP_BC_MOVING.md`, lines 284-293. -/
theorem eq18 {a b c d e f g h t x y : ℝ} (hyp : BMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (bMovingConfig a b c d e f g h t x y) i) :
    let u := sharpS / (h - a)
    let v := sharpS / (f - g)
    (sharpS + u * t) * (1 - y) ≤ (sharpAlpha sharpS u v - t) * (x - u - sharpS) := by
  sorry

/-- **Theorem 3** (`SHARP_BC_MOVING:Theorem3`). B-moving chamber: under the strict orders,
`0 ≤ t ≤ d`, `O ∈ [0,1]²` and positivity of the eleven oriented doubled areas (12), the minimum
of the eleven ordinary areas is at most `A₀`; if all eleven are at least `A₀`, then `t = 0` and
the configuration is exactly the equality configuration of `HAND_PROOF.md`.
`hand/SHARP_BC_MOVING.md`, lines 202-325.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_BC_MOVING:eq17,
SHARP_BC_MOVING:eq18, HAND_PROOF:Theorem1 -/
theorem theorem3 {a b c d e f g h t x y : ℝ} (hyp : BMovingHyp a b c d e f g h t x y)
    (hch : InChamber (bMovingConfig a b c d e f g h t x y)) :
    (∃ i, chamberArea (bMovingConfig a b c d e f g h t x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (bMovingConfig a b c d e f g h t x y) i) →
        t = 0 ∧ bMovingConfig a b c d e f g h t x y = optimalConfiguration) := by
  sorry

/-! ### Symmetry -/

/-- The reflection `(x,y) ↦ (1-y,1-x)` of the square in its anti-diagonal, as a square symmetry
(swap the coordinates, then flip both). -/
def antiDiagonal : SquareSymmetry := ⟨true, true, true⟩

/-- The relabelling `A↔F, B↔E, C↔D, G↔H`, `O` fixed, on the indices of `sharpConfig`. -/
def antiDiagonalLabels : Fin 9 → Fin 9 := ![5, 4, 3, 2, 1, 0, 7, 6, 8]

/-- **Claim** (`SHARP_BC_MOVING:claim-symmetry`). The reflection `(x,y) ↦ (1-y,1-x)` together
with the relabelling `A↔F, B↔E, C↔D, G↔H` preserves the sharp chamber: it permutes the eleven
oriented chamber doubled areas. (Hence Theorems 2–3 also cover the reflected D- and E-moving
chambers.) `hand/SHARP_BC_MOVING.md`, lines 327-334. -/
theorem claim_symmetry (P : Fin 9 → Point) :
    ∃ τ : Equiv.Perm (Fin 11), ∀ i,
      chamberSarea (antiDiagonal.apply ∘ P ∘ antiDiagonalLabels) i = chamberSarea P (τ i) := by
  sorry

end Heilbronn.SharpBCMoving
