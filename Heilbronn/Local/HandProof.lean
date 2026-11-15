module

public import Heilbronn.Common.Families

/-! # The sharp chamber and strict local optimality (`hand/HAND_PROOF.md`)

**Role.** Primary route, in two pieces. The appendix (exact attainment, the 84 areas) is already
proved in `Heilbronn/Construction/Areas.lean` and `Heilbronn/Construction.lean`
(`minTriangleArea_optimalConfiguration`) and is not restated here.
* **Theorem 1** (Part I): the sharp eleven-triangle chamber with arbitrary asymmetric boundary
  parameters. It is a component of `EIGHT_BOUNDARY.md` Theorem 13, of the `SHARP_*_MOVING`
  chambers and of `GLOBAL_COMPLETION.md` Theorem 3 (§5.6).
* **Theorem 2** (Part II): unrestricted strict local optimality of the construction. It gives the
  rigidity behind the equality transfer (`GLOBAL_STRUCTURE.md` Lemma 4, `UNRESTRICTED.md` §5).

Part III (lines 491-528) is a stale status ledger ("N and C1 still open"). Nothing depends on it,
and it is not formalized.

**Setting of Part I** (lines 37-70). Eight boundary points in counterclockwise order
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), G=(g,1), H=(0,h)` with the strict orders
`0<a<h<1, 0<b<c<1, 0<d<e<1, 0<g<f<1` (`SharpOrders`), and `O=(x,y)` in the square with
`U₁, …, U₅ > 0`, where `U₁ = y-a-(d-a)x` (ADO), `U₂ = h-y-(h-d)x` (DHO), `U₃ = e(x-b)-(1-b)y`
(BOE), `U₄ = x-c+(c-g)y` (GCO), `U₅ = c-x+(f-c)y` (OCF). The configuration is `baseConfig`, in the
order `A, B, C, D, E, F, G, H, O` of `optimalConfiguration`. The eleven chamber triangles are
`ABH, ABC, AGH, DEF, GHF, GEF, ADO, DHO, BOE, GCO, OCF` (`chamberTriangles`), each oriented so that
it is positive at the construction; `chamberSarea P i` is the oriented doubled area of the `i`-th,
`chamberArea P i` its ordinary area. "The configuration is exactly the construction" is written
`baseConfig … = optimalConfiguration`.

The same definitions (`SharpOrders`, `baseConfig`, `chamberTriangles`, `chamberSarea`,
`chamberArea`, `InChamber`) are repeated in `Heilbronn/Sharp/BCMoving.lean` with identical
meaning. One copy should be kept.

**Results.**
* `claim_doubled_areas`: the eleven doubled areas of `baseConfig` as polynomials (lines 58-68,
  102-108).
* `theorem1`: the least of the eleven areas is at most `A₀`, hence so is the least of all 84; if all
  eleven are at least `A₀` the configuration is the construction.
* `claim_4`, `claim_8`, `claim_11`: the scalar consequences (2)-(4), (8) and (11) of "all eleven
  doubled areas `≥ s`".
* `claim_scalar`: (11) implies `s ≤ s₀ = 2A₀`, and `s = s₀` forces `p = p₀`.
* `claim_equality`: all eleven doubled areas `≥ s₀` force the coordinates of the construction.
* `theorem2`: there are `ε, c > 0` with `minTriangleArea P ≤ A₀ - c·h` for every `P` in the square
  at sup-distance `h ≤ ε` from the construction.
* `claim_stress` (13): the positive stress `Σ λ_T J_T + Σ μ_V n_V = 0`.
* `claim_kernel`: a feasible direction with all `J_T d ≥ 0` is zero.
* `claim_compactness`: `min_T J_T d ≤ -κ‖d‖` on the feasible cone.
* `claim_expansion`: the exact quadratic expansion of the eleven signed areas at the construction.

The distance in Theorem 2 is `dist P optimalConfiguration`. On `Fin 9 → ℝ × ℝ` this is the sup
over the nine points of the max norm of the pair, i.e. the maximum over all eighteen coordinates,
the manuscript's `‖P - P*‖∞`. Points are matched by label.

**Implicit in the manuscript.** The sub-claims of the proof of Theorem 1 are stated under the
proof's standing assumption (line 96) that every one of the eleven doubled areas is at least
`s > 0`. This assumption implies the five `U_i > 0`, which are therefore not repeated.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.HandProof

/-! ### The chamber of Part I -/

/-- The strict orders of Part I: `0<a<h<1`, `0<b<c<1`, `0<d<e<1`, `0<g<f<1`. -/
def SharpOrders (a b c d e f g h : ℝ) : Prop :=
  0 < a ∧ a < h ∧ h < 1 ∧ 0 < b ∧ b < c ∧ c < 1 ∧ 0 < d ∧ d < e ∧ e < 1 ∧
    0 < g ∧ g < f ∧ f < 1

/-- The configuration of Part I in the order `A, B, C, D, E, F, G, H, O` (indices `0, …, 8`):
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), G=(g,1), H=(0,h), O=(x,y)`. -/
def baseConfig (a b c d e f g h x y : ℝ) : Fin 9 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (g, 1), (0, h), (x, y)]

/-- The eleven chamber triangles `ABH, ABC, AGH, DEF, GHF, GEF, ADO, DHO, BOE, GCO, OCF`, as index
triples into the order `A, B, C, D, E, F, G, H, O`, each with the orientation that is positive at
the construction. -/
def chamberTriangles : Fin 11 → Fin 9 × Fin 9 × Fin 9 :=
  ![(0, 1, 7), (0, 1, 2), (0, 6, 7), (3, 4, 5), (6, 7, 5), (6, 4, 5),
    (0, 3, 8), (3, 7, 8), (1, 8, 4), (6, 2, 8), (8, 2, 5)]

/-- The oriented doubled area of the `i`-th chamber triangle of `P`. -/
def chamberSarea (P : Fin 9 → Point) (i : Fin 11) : ℝ :=
  sarea (P (chamberTriangles i).1) (P (chamberTriangles i).2.1) (P (chamberTriangles i).2.2)

/-- The ordinary area of the `i`-th chamber triangle of `P`. -/
def chamberArea (P : Fin 9 → Point) (i : Fin 11) : ℝ :=
  triangleArea (P (chamberTriangles i).1) (P (chamberTriangles i).2.1)
    (P (chamberTriangles i).2.2)

/-- The chamber: all eleven oriented doubled areas are positive. -/
def InChamber (P : Fin 9 → Point) : Prop :=
  ∀ i, 0 < chamberSarea P i

/-- The left side of (8): `Φ(u, v) = 6uv + (3s-4)(u+v) + 2s + 2 - s(1-s)(u+v)/(uv)`
(`S = u + v`, `P = uv`). -/
def phi (s u v : ℝ) : ℝ :=
  6 * u * v + (3 * s - 4) * (u + v) + 2 * s + 2 - s * (1 - s) * (u + v) / (u * v)

/-- `g(p) = 1 - 6p + 5p²`, (9). -/
def scalarG (p : ℝ) : ℝ := 1 - 6 * p + 5 * p ^ 2

/-- `R(p, s) = 3p³ + 3p²s - 4p² + ps + p + s² - s`, (10). -/
def scalarR (p s : ℝ) : ℝ := 3 * p ^ 3 + 3 * p ^ 2 * s - 4 * p ^ 2 + p * s + p + s ^ 2 - s

/-- **Claim** (`HAND_PROOF:claim-doubled-areas`, made up). The eleven oriented doubled areas of
`baseConfig`: `ABH = bL`, `ABC = a(c-b)`, `AGH = gL`, `DEF = (1-f)(e-d)`, `GHF = (1-h)M`,
`GEF = (1-e)M` (with `L = h-a`, `M = f-g`), and `U₁, …, U₅` for `ADO, DHO, BOE, GCO, OCF`.
`hand/HAND_PROOF.md`, lines 58-68, 102-108. -/
theorem claim_doubled_areas (a b c d e f g h x y : ℝ) :
    chamberSarea (baseConfig a b c d e f g h x y) =
      ![b * (h - a), a * (c - b), g * (h - a), (1 - f) * (e - d), (f - g) * (1 - h),
        (f - g) * (1 - e), y - a - (d - a) * x, h - y - (h - d) * x, e * (x - b) - (1 - b) * y,
        x - c + (c - g) * y, c - x + (f - c) * y] := by
  sorry

/-! ### Part I: Theorem 1 and its proof steps -/

/-- **Theorem 1** (`HAND_PROOF:Theorem1`). In the family of Part I (strict orders, `O` in the
square, `U₁, …, U₅ > 0`), the least of the eleven chamber areas is at most `A₀`, hence so is the
least of all 84 triangle areas. If all eleven are at least `A₀`, the configuration is exactly the
construction. No symmetry or coincidence of boundary coordinates is assumed.
`hand/HAND_PROOF.md`, lines 72-92 (proof 94-325).
Uses: HAND_PROOF:claim-(4), HAND_PROOF:claim-(8), HAND_PROOF:claim-(11), HAND_PROOF:claim-scalar,
HAND_PROOF:claim-equality -/
theorem theorem1 {a b c d e f g h x y : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare)
    (hU1 : 0 < y - a - (d - a) * x) (hU2 : 0 < h - y - (h - d) * x)
    (hU3 : 0 < e * (x - b) - (1 - b) * y) (hU4 : 0 < x - c + (c - g) * y)
    (hU5 : 0 < c - x + (f - c) * y) :
    (∃ i, chamberArea (baseConfig a b c d e f g h x y) i ≤ A₀) ∧
      minTriangleArea (baseConfig a b c d e f g h x y) ≤ A₀ ∧
      ((∀ i, A₀ ≤ chamberArea (baseConfig a b c d e f g h x y) i) →
        baseConfig a b c d e f g h x y = optimalConfiguration) := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-(4)`). If all eleven doubled areas are at least `s > 0`, then with
`u = s/L`, `v = s/M` (`L = h-a`, `M = f-g`): `b, g ≥ u` and `e, h ≤ 1-v` (2); `x ≤ 1-2u` and
`y ≥ 2v` (3); and `s ≤ 1 - 3u - 3v + 5uv` (4), by a monotone chain from `U₃ ≥ s`.
`hand/HAND_PROOF.md`, lines 113-143. -/
theorem claim_4 {s a b c d e f g h x y u v : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare) (hs : 0 < s)
    (hall : ∀ i, s ≤ chamberSarea (baseConfig a b c d e f g h x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    u ≤ b ∧ u ≤ g ∧ e ≤ 1 - v ∧ h ≤ 1 - v ∧ x ≤ 1 - 2 * u ∧ 2 * v ≤ y ∧
      s ≤ 1 - 3 * u - 3 * v + 5 * u * v := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-(8)`). If all eleven doubled areas are at least `s > 0`, then with
`u = s/L`, `v = s/M`, the eliminations ABC+GCO (5) and DHO+DEF (6), added and combined with (3),
give (7), which is exactly (8): `6uv + (3s-4)(u+v) + 2s + 2 - s(1-s)(u+v)/(uv) ≥ 0`.
`hand/HAND_PROOF.md`, lines 145-214.
Uses: HAND_PROOF:claim-(4) -/
theorem claim_8 {s a b c d e f g h x y u v : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare) (hs : 0 < s)
    (hall : ∀ i, s ≤ chamberSarea (baseConfig a b c d e f g h x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    0 ≤ phi s u v := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-(11)`). If all eleven doubled areas are at least `s > 0`, then
`0 < u, v < 1/2` and, for `p = (u+v)/2`: `0 < s ≤ p < 1/5`, `s ≤ g(p)` and `R(p, s) ≥ 0` (11)
(AM-GM in (4), and monotonicity of (8) in `uv`).
`hand/HAND_PROOF.md`, lines 216-251.
Uses: HAND_PROOF:claim-(4), HAND_PROOF:claim-(8) -/
theorem claim_11 {s a b c d e f g h x y u v : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare) (hs : 0 < s)
    (hall : ∀ i, s ≤ chamberSarea (baseConfig a b c d e f g h x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    0 < u ∧ u < 1 / 2 ∧ 0 < v ∧ v < 1 / 2 ∧
      s ≤ (u + v) / 2 ∧ (u + v) / 2 < 1 / 5 ∧ s ≤ scalarG ((u + v) / 2) ∧
      0 ≤ scalarR ((u + v) / 2) s := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-scalar`). The scalar system (11), `0 < s ≤ p < 1/5`,
`s ≤ g(p)`, `R(p, s) ≥ 0`, implies `s ≤ s₀ = 2A₀`; and `s = s₀` forces `p = p₀`.
`hand/HAND_PROOF.md`, lines 253-292, 296. -/
theorem claim_scalar {p s : ℝ} (hs : 0 < s) (hsp : s ≤ p) (hp : p < 1 / 5)
    (hg : s ≤ scalarG p) (hR : 0 ≤ scalarR p s) :
    s ≤ 2 * A₀ ∧ (s = 2 * A₀ → p = p₀) := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-equality`). If all eleven doubled areas are at least `s₀ = 2A₀`,
then `u = v = p₀`, and equality throughout the chain forces `a = 4p₀ - 1/2`, `b = p₀`,
`c = 1 - 3p₀/2`, `d = 3p₀/2`, `e = 1 - p₀`, `f = 3/2 - 4p₀`, `g = p₀`, `h = 1 - p₀`,
`x = 1 - 2p₀`, `y = 2p₀`.
`hand/HAND_PROOF.md`, lines 294-325.
Uses: HAND_PROOF:claim-(4), HAND_PROOF:claim-(8), HAND_PROOF:claim-(11), HAND_PROOF:claim-scalar -/
theorem claim_equality {a b c d e f g h x y : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare)
    (hall : ∀ i, 2 * A₀ ≤ chamberSarea (baseConfig a b c d e f g h x y) i) :
    a = 4 * p₀ - 1 / 2 ∧ b = p₀ ∧ c = 1 - 3 * p₀ / 2 ∧ d = 3 * p₀ / 2 ∧ e = 1 - p₀ ∧
      f = 3 / 2 - 4 * p₀ ∧ g = p₀ ∧ h = 1 - p₀ ∧ x = 1 - 2 * p₀ ∧ y = 2 * p₀ := by
  sorry

/-! ### Part II: strict local optimality -/

/-- The derivative of `sarea p q r` in the direction `(dp, dq, dr)`. -/
def sareaDeriv (p q r dp dq dr : Point) : ℝ :=
  (dq.1 - dp.1) * (r.2 - p.2) + (q.1 - p.1) * (dr.2 - dp.2) -
    (dq.2 - dp.2) * (r.1 - p.1) - (q.2 - p.2) * (dr.1 - dp.1)

/-- `J_T d`: the derivative at the construction, in the direction `d`, of the signed ordinary
area `f_T` of the `i`-th chamber triangle (positively oriented at the construction). -/
def chamberGrad (i : Fin 11) (d : Fin 9 → Point) : ℝ :=
  sareaDeriv (optimalConfiguration (chamberTriangles i).1)
      (optimalConfiguration (chamberTriangles i).2.1)
      (optimalConfiguration (chamberTriangles i).2.2)
      (d (chamberTriangles i).1) (d (chamberTriangles i).2.1) (d (chamberTriangles i).2.2) / 2

/-- The inward unit normals of the eight active side constraints, for the points
`A, B, C, D, E, F, G, H` (indices `0, …, 7`): `A, H` on the left side, `B, C` at the bottom,
`D, E` on the right, `F, G` at the top. -/
def inwardNormal : Fin 8 → Point :=
  ![(1, 0), (0, 1), (0, 1), (-1, 0), (-1, 0), (0, -1), (0, -1), (1, 0)]

/-- `n_V · d`: the inward normal component of the displacement of the `V`-th boundary point. -/
def normalComp (V : Fin 8) (d : Fin 9 → Point) : ℝ :=
  (inwardNormal V).1 * (d V.castSucc).1 + (inwardNormal V).2 * (d V.castSucc).2

/-- The triangle weights `λ_T` of (13), at `p = p₀`, in the order of `chamberTriangles`:
`ABH, GEF: (3664p-631)/7`; `ABC, DEF: 1`; `ADO, OCF: 49-278p`; `AGH, GHF: 2(79p-10)/7`;
`BOE: 1000p-173`; `DHO, GCO: (109-616p)/2`. -/
def stressWeight : Fin 11 → ℝ :=
  ![(3664 * p₀ - 631) / 7, 1, 2 * (79 * p₀ - 10) / 7, 1, 2 * (79 * p₀ - 10) / 7,
    (3664 * p₀ - 631) / 7, 49 - 278 * p₀, (109 - 616 * p₀) / 2, 1000 * p₀ - 173,
    (109 - 616 * p₀) / 2, 49 - 278 * p₀]

/-- The boundary-normal weights `μ_V` of (13), at `p = p₀`, for `A, …, H`:
`A, F: 3(1187p-202)/56`; `B, E: (402-2311p)/4`; `C, D: 3(267p-46)/4`; `G, H: (4302-24701p)/56`. -/
def normalWeight : Fin 8 → ℝ :=
  ![3 * (1187 * p₀ - 202) / 56, (402 - 2311 * p₀) / 4, 3 * (267 * p₀ - 46) / 4,
    3 * (267 * p₀ - 46) / 4, (402 - 2311 * p₀) / 4, 3 * (1187 * p₀ - 202) / 56,
    (4302 - 24701 * p₀) / 56, (4302 - 24701 * p₀) / 56]

/-- **Theorem 2** (`HAND_PROOF:Theorem2`). Unrestricted strict local optimality. There are
`ε, c > 0` such that every labelled configuration `P` in the square with
`h = ‖P - P*‖∞ ≤ ε` (all eighteen coordinates, `P i` matched to `P* i`) satisfies
`minTriangleArea P ≤ A₀ - c·h`. Boundary points may move into the open square, and no family or
orientation hypothesis is imposed on `P`.
`hand/HAND_PROOF.md`, lines 327-343 (proof 345-489).
Uses: HAND_PROOF:claim-stress, HAND_PROOF:claim-kernel, HAND_PROOF:claim-compactness,
HAND_PROOF:claim-expansion -/
theorem theorem2 : ∃ ε > 0, ∃ c > 0, ∀ P : Fin 9 → Point, (∀ i, P i ∈ unitSquare) →
    dist P optimalConfiguration ≤ ε →
      minTriangleArea P ≤ A₀ - c * dist P optimalConfiguration := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-stress`). The explicit positive stress (13). All eleven triangle
weights and all eight normal weights are positive (`173/1000 < p₀ < 347/2000`), and for every
displacement `d`, `Σ_T λ_T J_T d + Σ_V μ_V n_V·d = 0`. Each residual component is a multiple of
`20p₀² - 15p₀ + 2 = 0`.
`hand/HAND_PROOF.md`, lines 345-408. -/
theorem claim_stress :
    (∀ i, 0 < stressWeight i) ∧ (∀ V, 0 < normalWeight V) ∧
      ∀ d : Fin 9 → Point,
        ∑ i, stressWeight i * chamberGrad i d + ∑ V, normalWeight V * normalComp V d = 0 := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-kernel`). The only zero first-order motion is zero. If `d` is
feasible (`n_V·d ≥ 0` for the eight active side constraints) and `J_T d ≥ 0` for all eleven
chamber triangles, then `d = 0`. By (13) all these quantities vanish, and the linear elimination
(14) and the `BOE` and `ADO` equations force the ten tangential displacements to vanish.
`hand/HAND_PROOF.md`, lines 410-452.
Uses: HAND_PROOF:claim-stress -/
theorem claim_kernel (d : Fin 9 → Point) (hfeas : ∀ V, 0 ≤ normalComp V d)
    (hJ : ∀ i, 0 ≤ chamberGrad i d) : d = 0 := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-compactness`). First-order separation. There is `κ > 0` such
that every feasible direction `d` has a chamber triangle with `J_T d ≤ -κ‖d‖∞`. This follows by
compactness of the feasible cone intersected with the unit sphere.
`hand/HAND_PROOF.md`, lines 454-469.
Uses: HAND_PROOF:claim-kernel -/
theorem claim_compactness :
    ∃ κ > 0, ∀ d : Fin 9 → Point, (∀ V, 0 ≤ normalComp V d) →
      ∃ i, chamberGrad i d ≤ -κ * ‖d‖ := by
  sorry

/-- **Claim** (`HAND_PROOF:claim-expansion`, made up). Exact quadratic expansion. Each of the
eleven signed areas is `A₀` at the construction and satisfies
`f_T(P* + d) = A₀ + J_T d + q_T(d)` with `|q_T(d)| ≤ 2‖d‖∞²`. The remainder is the signed area of
the triangle of displacements, which lies in a square of side `2‖d‖∞`.
`hand/HAND_PROOF.md`, lines 471-479. -/
theorem claim_expansion (d : Fin 9 → Point) (i : Fin 11) :
    |chamberSarea (optimalConfiguration + d) i / 2 - A₀ - chamberGrad i d| ≤ 2 * ‖d‖ ^ 2 := by
  sorry

end Heilbronn.HandProof
