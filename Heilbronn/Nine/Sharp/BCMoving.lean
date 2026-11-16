module

public import Heilbronn.Nine.Local.HandProof

/-! # Two further inward-moving sharp chambers (`docs/proof/nine/SHARP_BC_MOVING.md`)

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
(Theorem 3). The sharp constants are `p₀ = (15-√65)/40` (`Heilbronn.Nine.p₀`),
`s₀ = 2A₀ = (2-9p₀)/4` (`sharpS`) and `λ = (8-39p₀)/(6-10p₀)` (`sharpLambda`); with `L = h-a`,
`M = f-g`, `u = s/L`, `v = s/M` the scalar quantities are `α = 1-v-s/u`, `β = 1-u-s/v`,
`g(u,v) = 1-3u-3v+5uv`, `H(u,v) = α(1-3u-s)+β(1-3v-s)+2s(u+v-1)`.

The chamber definitions (`SharpOrders`, `baseConfig`, `chamberTriangles`, `chamberSarea`,
`chamberArea`, `InChamber`) are those of `Heilbronn/Nine/Local/HandProof.lean`, re-exported here.
This file also holds what all the `Heilbronn/Nine/Sharp/*` files share: the constants, the scalar
functions, the configuration order `sharpConfig` (`A, B, C, D, E, F, G, H, O`, the order of
`optimalConfiguration`), the scalar inequality in polynomial form (`ScalarIneq`,
`scalarIneq_sharp`), the three area eliminations (`elim_C`, `elim_B`, `elim_D`), and the passage
from "all eleven doubled areas `≥ s₀` force the displacements to vanish" to the chamber theorem
(`moving_wrapper`, through `HandProof.theorem1`).

"The configuration is exactly the equality configuration of `HAND_PROOF.md`" is written
`P = optimalConfiguration` (`Heilbronn/Geometry.lean`, same point order).

**Results.**
* `claim_constants` (1): `173/1000 < p₀ < 7/40`, `7/64 < s₀ < 11/100`, `1/4 < λ < 1/3`.
* `eq_expansion`: the expansion `H = 6P + (3s-4)S + 2s + 2 - s(1-s)S/P` (`S = u+v`, `P = uv`).
* `lemma1`: `H(u,v) + λ(g(u,v) - s₀) ≤ 0` for `u, v > 0`, `(u+v)/2 < 1/4`; equality only at
  `u = v = p₀`. Proved through `phi_scalar`, valid for `u, v > 0`, `u + v < 1`, by the
  factorization `sharp_cubic` of `SHARP_B_E_MOVING.md` (4) instead of the concavity argument.
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
namespace Heilbronn.Nine.SharpBCMoving

export Heilbronn.Nine.HandProof (SharpOrders baseConfig chamberTriangles chamberSarea chamberArea
  InChamber)

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

/-! ### Exact values and rational bounds of the constants -/

theorem sqrt65_sq' : Real.sqrt 65 ^ 2 = 65 := Real.sq_sqrt (by norm_num)

theorem sharpS_eq : sharpS = (9 * Real.sqrt 65 - 55) / 160 := by
  unfold sharpS A₀; ring

theorem p₀_eq_sqrt : p₀ = (15 - Real.sqrt 65) / 40 := rfl

theorem sharpLambda_eq : sharpLambda = (77 * Real.sqrt 65 - 615) / 20 := by
  have h := sqrt65_bounds
  unfold sharpLambda p₀
  rw [div_eq_div_iff (by linarith) (by norm_num)]
  linear_combination (-77 / 4 : ℝ) * sqrt65_sq'

/-- Rational brackets for `s₀` and `λ`. -/
theorem sharp_bounds :
    (7 / 64 : ℝ) < sharpS ∧ sharpS < 11 / 100 ∧ (1 / 4 : ℝ) < sharpLambda ∧
      sharpLambda < 3 / 10 := by
  have h := sqrt65_bounds
  rw [sharpS_eq, sharpLambda_eq]
  refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith [h.1, h.2]

/-- Finer brackets: `0.1097 < s₀ < 0.1098` and `0.2894 < λ < 0.2899`. -/
theorem sharp_bounds_fine :
    (1097 / 10000 : ℝ) < sharpS ∧ sharpS < 1098 / 10000 ∧ (2894 / 10000 : ℝ) < sharpLambda ∧
      sharpLambda < 2899 / 10000 := by
  have h := sqrt65_bounds
  rw [sharpS_eq, sharpLambda_eq]
  refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith [h.1, h.2]

/-! ### Section 0: constants -/

/-- **Claim** (`SHARP_BC_MOVING:claim-constants`). Equation (1): `s₀ = (2-9p₀)/4`,
`173/1000 < p₀ < 7/40`, `7/64 < s₀ < 11/100` and `1/4 < λ < 1/3`.
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 9-22. -/
theorem claim_constants :
    sharpS = (2 - 9 * p₀) / 4 ∧ 173 / 1000 < p₀ ∧ p₀ < 7 / 40 ∧
      7 / 64 < sharpS ∧ sharpS < 11 / 100 ∧ 1 / 4 < sharpLambda ∧ sharpLambda < 1 / 3 := by
  have h := sqrt65_bounds
  obtain ⟨h1, h2, h3, h4⟩ := sharp_bounds
  refine ⟨?_, ?_, ?_, h1, h2, h3, by linarith⟩
  · rw [sharpS_eq, p₀_eq_sqrt]; ring
  · rw [p₀_eq_sqrt]; linarith [h.2]
  · rw [p₀_eq_sqrt]; linarith [h.1]

/-! ### Section 1: the common sharp scalar inequality -/

/-- `q₀ = (16257+1889√65)/36104 ≈ 0.872`, the third root of the sharp cubic
(`SHARP_B_E_MOVING.md` (4)). -/
def sharpQ0 : ℝ := (16257 + 1889 * Real.sqrt 65) / 36104

theorem half_lt_sharpQ0 : (1 / 2 : ℝ) < sharpQ0 := by
  unfold sharpQ0; linarith [sqrt65_bounds.1]

/-- The factorization `p·J(p) = (6+5λ)(p-p₀)²(p-q₀)` (`SHARP_B_E_MOVING.md` (4)), where
`J(p) = Φ(p,p) + λ(g(p,p) - s₀)`, written as a polynomial identity. -/
theorem sharp_cubic (p : ℝ) :
    6 * p ^ 3 + (6 * sharpS - 8) * p ^ 2 + (2 * sharpS + 2) * p - 2 * sharpS * (1 - sharpS) +
        sharpLambda * (p - 6 * p ^ 2 + 5 * p ^ 3 - sharpS * p) =
      (6 + 5 * sharpLambda) * (p - p₀) ^ 2 * (p - sharpQ0) := by
  rw [sharpS_eq, sharpLambda_eq, p₀_eq_sqrt]
  unfold sharpQ0
  linear_combination ((10324160 * p ^ 2 + 8856232 * p * Real.sqrt 65 - 109014840 * p +
    145453 * Real.sqrt 65 ^ 2 - 4228200 * Real.sqrt 65 + 29973995) / 231065600) * sqrt65_sq'

/-- `Φ + λ(g - s)` times `uv` is a polynomial. -/
theorem phi_mul (s l : ℝ) {u v : ℝ} (hu : u ≠ 0) (hv : v ≠ 0) :
    (sharpPhi s u v + l * (sharpG u v - s)) * (u * v) =
      (6 + 5 * l) * (u * v) ^ 2 + ((3 * s - 4) * (u + v) + 2 * s + 2 +
        l * (1 - 3 * (u + v) - s)) * (u * v) - s * (1 - s) * (u + v) := by
  unfold sharpPhi sharpG
  field_simp
  ring

/-- **The sharp scalar inequality** in the form of `SHARP_B_E_MOVING.md` (3), on the range
`u, v > 0`, `u + v < 1`: `Φ(u,v) + λ(g(u,v) - s₀) ≤ 0`, with equality only at `u = v = p₀`.
The proof is the product replacement `uv ≤ p²` and the factorization `sharp_cubic`
(no concavity argument is needed). -/
theorem phi_scalar {u v : ℝ} (hu : 0 < u) (hv : 0 < v) (huv : u + v < 1) :
    sharpPhi sharpS u v + sharpLambda * (sharpG u v - sharpS) ≤ 0 ∧
      (sharpPhi sharpS u v + sharpLambda * (sharpG u v - sharpS) = 0 → u = p₀ ∧ v = p₀) := by
  obtain ⟨hs1, hs2, hl1, hl2⟩ := sharp_bounds
  have hq := half_lt_sharpQ0
  have hmul := phi_mul sharpS sharpLambda hu.ne' hv.ne'
  have hcub := sharp_cubic ((u + v) / 2)
  generalize sharpPhi sharpS u v + sharpLambda * (sharpG u v - sharpS) = Q at hmul ⊢
  generalize sharpS = s at *
  generalize sharpLambda = l at *
  generalize sharpQ0 = q at *
  have hP0 : 0 < u * v := mul_pos hu hv
  have hp0 : 0 < (u + v) / 2 := by linarith
  have hPp : u * v ≤ ((u + v) / 2) ^ 2 := by nlinarith [sq_nonneg (u - v)]
  have ha : 0 < 6 + 5 * l := by linarith
  -- the key identity `p²F(P) = P·F(p²) + (P - p²)(aPp² + c)`
  have key : ((u + v) / 2) ^ 2 * (Q * (u * v)) =
      (u * v) * ((u + v) / 2 * ((6 + 5 * l) * ((u + v) / 2 - p₀) ^ 2 * ((u + v) / 2 - q))) +
        (u * v - ((u + v) / 2) ^ 2) *
          ((6 + 5 * l) * (u * v) * ((u + v) / 2) ^ 2 + s * (1 - s) * (u + v)) := by
    rw [hmul, ← hcub]; ring
  have h1 : (u * v) * ((u + v) / 2 * ((6 + 5 * l) * ((u + v) / 2 - p₀) ^ 2 *
      ((u + v) / 2 - q))) ≤ 0 := by
    apply mul_nonpos_of_nonneg_of_nonpos hP0.le
    apply mul_nonpos_of_nonneg_of_nonpos hp0.le
    apply mul_nonpos_of_nonneg_of_nonpos (by positivity)
    linarith
  have hc : 0 < (6 + 5 * l) * (u * v) * ((u + v) / 2) ^ 2 + s * (1 - s) * (u + v) := by
    have : 0 < s * (1 - s) * (u + v) :=
      mul_pos (mul_pos (by linarith) (by linarith)) (by linarith)
    positivity
  have h2 : (u * v - ((u + v) / 2) ^ 2) *
      ((6 + 5 * l) * (u * v) * ((u + v) / 2) ^ 2 + s * (1 - s) * (u + v)) ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg (by linarith) hc.le
  have hp2 : 0 < ((u + v) / 2) ^ 2 := by positivity
  have hQP : Q * (u * v) ≤ 0 := by
    by_contra hcon
    push Not at hcon
    have := mul_pos hp2 hcon
    linarith
  have hQ : Q ≤ 0 := by
    by_contra hcon
    push Not at hcon
    have := mul_pos hcon hP0
    linarith
  refine ⟨hQ, fun hQ0 => ?_⟩
  subst hQ0
  have hz1 : (u * v) * ((u + v) / 2 * ((6 + 5 * l) * ((u + v) / 2 - p₀) ^ 2 *
      ((u + v) / 2 - q))) = 0 := by linarith
  have hz2 : (u * v - ((u + v) / 2) ^ 2) *
      ((6 + 5 * l) * (u * v) * ((u + v) / 2) ^ 2 + s * (1 - s) * (u + v)) = 0 := by linarith
  have huv' : u * v - ((u + v) / 2) ^ 2 = 0 := by
    rcases mul_eq_zero.1 hz2 with h | h
    · exact h
    · linarith
  have hpp : ((u + v) / 2 - p₀) ^ 2 = 0 := by
    have hne : (u * v) * ((u + v) / 2) * (6 + 5 * l) * ((u + v) / 2 - q) ≠ 0 := by
      have : (u + v) / 2 - q ≠ 0 := by intro h; linarith
      positivity
    have : ((u * v) * ((u + v) / 2) * (6 + 5 * l) * ((u + v) / 2 - q)) *
        ((u + v) / 2 - p₀) ^ 2 = 0 := by linear_combination hz1
    rcases mul_eq_zero.1 this with h | h
    · exact absurd h hne
    · exact h
  have hp : (u + v) / 2 - p₀ = 0 := pow_eq_zero_iff (n := 2) (by norm_num) |>.1 hpp
  have huv2 : (u - v) ^ 2 = 0 := by linear_combination (-4 : ℝ) * huv'
  have huv3 : u - v = 0 := pow_eq_zero_iff (n := 2) (by norm_num) |>.1 huv2
  constructor <;> linarith

/-- **Claim** (`SHARP_BC_MOVING:eq-expansion`). For `u, v > 0`, `H(u,v)` equals the expansion
`6P + (3s-4)S + 2s + 2 - s(1-s)S/P` with `S = u+v`, `P = uv`.
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 41-45. -/
theorem eq_expansion (s : ℝ) {u v : ℝ} (hu : 0 < u) (hv : 0 < v) :
    sharpH s u v = sharpPhi s u v := by
  unfold sharpH sharpPhi sharpAlpha sharpBeta
  field_simp
  ring

/-- **Lemma 1** (`SHARP_BC_MOVING:Lemma1`). With `s = s₀`, for `u, v > 0` and
`0 < (u+v)/2 < 1/4`: `H(u,v) + λ(g(u,v) - s) ≤ 0`, with equality only when `u = v = p₀`.
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 24-75. (Proved on the wider range `u + v < 1` by `phi_scalar`.) -/
theorem lemma1 {u v : ℝ} (hu : 0 < u) (hv : 0 < v) (hp : (u + v) / 2 < 1 / 4) :
    sharpH sharpS u v + sharpLambda * (sharpG u v - sharpS) ≤ 0 ∧
      (sharpH sharpS u v + sharpLambda * (sharpG u v - sharpS) = 0 → u = p₀ ∧ v = p₀) := by
  rw [eq_expansion sharpS hu hv]
  exact phi_scalar hu hv (by linarith)

/-- The sharp scalar inequality in the polynomial form used by the chambers: with `L = s/u`,
`M = s/v`, `(1-v-L)(1-3u-s) + (1-u-M)(1-3v-s) + 2s(u+v-1) + λ(g(u,v) - s) ≤ 0`, that is,
`H(u,v) + λ(g(u,v) - s) ≤ 0`, for `u, v > 0`, `u + v < 1`. -/
def ScalarIneq (s l : ℝ) : Prop :=
  ∀ u v L M : ℝ, 0 < u → 0 < v → u + v < 1 → u * L = s → v * M = s →
    (1 - v - L) * (1 - 3 * u - s) + (1 - u - M) * (1 - 3 * v - s) + 2 * s * (u + v - 1) +
      l * (1 - 3 * u - 3 * v + 5 * u * v - s) ≤ 0

theorem scalarIneq_sharp : ScalarIneq sharpS sharpLambda := by
  intro u v L M hu hv huv hL hM
  have h := (phi_scalar hu hv huv).1
  rw [← eq_expansion sharpS hu hv] at h
  have hL' : sharpS / u = L := by rw [← hL]; field_simp
  have hM' : sharpS / v = M := by rw [← hM]; field_simp
  unfold sharpH sharpAlpha sharpBeta sharpG at h
  rw [hL', hM'] at h
  linarith

/-! ### Chamber tools shared by all the sharp chambers -/

/-- The nine points of a sharp chamber in the order `A, B, C, D, E, F, G, H, O` (indices
`0, …, 8`), the order of `optimalConfiguration`. -/
def sharpConfig (A B C D E F G H O : Point) : Fin 9 → Point :=
  ![A, B, C, D, E, F, G, H, O]

theorem chamberArea_eq_half (P : Fin 9 → Point) (i : Fin 11) :
    chamberArea P i = |chamberSarea P i| / 2 := rfl

/-- In the chamber, all eleven areas at least `A₀` means all eleven doubled areas at least `s₀`. -/
theorem sarea_ge_of_area_ge {P : Fin 9 → Point} (hch : InChamber P)
    (h : ∀ i, A₀ ≤ chamberArea P i) (i : Fin 11) : sharpS ≤ chamberSarea P i := by
  have h1 := h i
  rw [chamberArea_eq_half, abs_of_pos (hch i)] at h1
  unfold sharpS; linarith

/-- `HAND_PROOF.md` Theorem 1, with its five interior signs read off the chamber. -/
theorem base_theorem {a b c d e f g h x y : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare) (hch : InChamber (baseConfig a b c d e f g h x y)) :
    (∃ i, chamberArea (baseConfig a b c d e f g h x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (baseConfig a b c d e f g h x y) i) →
        baseConfig a b c d e f g h x y = optimalConfiguration) := by
  have h6 := hch 6
  have h7 := hch 7
  have h8 := hch 8
  have h9 := hch 9
  have h10 := hch 10
  simp only [chamberSarea, chamberTriangles, baseConfig, sarea, Matrix.cons_val] at h6 h7 h8 h9 h10
  obtain ⟨h1, -, h3⟩ := HandProof.theorem1 hord hO (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith)
  exact ⟨h1, h3⟩

/-- The shape of every moving-chamber theorem: if "all eleven doubled areas `≥ s₀`" forces the
displacements to vanish (`Z`) and the configuration to be a base configuration with the strict
orders, then the chamber theorem holds. -/
theorem moving_wrapper {P : Fin 9 → Point} {Z : Prop} {a b c d e f g h x y : ℝ}
    (hord : SharpOrders a b c d e f g h) (hO : ((x, y) : Point) ∈ unitSquare)
    (hch : InChamber P)
    (hrig : (∀ i, sharpS ≤ chamberSarea P i) → Z ∧ P = baseConfig a b c d e f g h x y) :
    (∃ i, chamberArea P i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea P i) → Z ∧ P = optimalConfiguration) := by
  by_cases hall : ∀ i, A₀ ≤ chamberArea P i
  · obtain ⟨hZ, hP⟩ := hrig (sarea_ge_of_area_ge hch hall)
    subst hP
    have := base_theorem hord hO hch
    exact ⟨this.1, fun h => ⟨hZ, this.2 h⟩⟩
  · push Not at hall
    obtain ⟨i, hi⟩ := hall
    exact ⟨⟨i, hi.le⟩, fun h => absurd (h i) (not_le.2 hi)⟩

/-- `uL = s` with `L, s > 0` gives `u > 0`. -/
theorem pos_of_mul_eq {u L s : ℝ} (hL : 0 < L) (hs : 0 < s) (h : u * L = s) : 0 < u := by
  by_contra hc
  push Not at hc
  linarith [mul_nonpos_of_nonpos_of_nonneg hc hL.le]

/-- `t ≥ 0`, `K > 0` and `tK ≤ 0` give `t = 0`. -/
theorem eq_zero_of_mul_nonpos {t K : ℝ} (ht : 0 ≤ t) (hK : 0 < K) (h : t * K ≤ 0) : t = 0 := by
  by_contra hc
  have : 0 < t := lt_of_le_of_ne ht (Ne.symm hc)
  linarith [mul_pos this hK]

/-- `α = 1 - v - s/u` is `1 - v - L` when `uL = s`. -/
theorem sharpAlpha_of_mul {s u L : ℝ} (hu : u ≠ 0) (h : u * L = s) (v : ℝ) :
    sharpAlpha s u v = 1 - v - L := by
  unfold sharpAlpha; rw [← h]; field_simp

/-- `β = 1 - u - s/v` is `1 - u - M` when `vM = s`. -/
theorem sharpBeta_of_mul {s v M : ℝ} (hv : v ≠ 0) (h : v * M = s) (u : ℝ) :
    sharpBeta s u v = 1 - u - M := by
  unfold sharpBeta; rw [← h]; field_simp

/-- An anchor cost `s ≤ bL` with `uL = s`, `L > 0` gives `u ≤ b`. -/
theorem anchor_le {s b L u : ℝ} (hL : 0 < L) (hb : s ≤ b * L) (hu : u * L = s) : u ≤ b :=
  le_of_mul_le_mul_right (by linarith) hL

/-- **The ABC/GCO elimination of the C-moving chamber** (`SHARP_BC_MOVING.md` (8),
`SHARP_CD_MOVING.md` (9)): from `ABC = a(c-b)+bt ≥ s`, `GCO = (1-t)x-c(1-y)-g(y-t) ≥ s`,
`b, g ≥ u`, `a ≤ α`, `t ≤ a`, `t ≤ y ≤ 1`:
`(s-ut)(1-y) ≤ α{(1-t)(x-u)-s}`. -/
theorem elim_C {s a b c g t x y u α : ℝ} (hABC : s ≤ a * (c - b) + b * t)
    (hGCO : s ≤ (1 - t) * x - c * (1 - y) - g * (y - t)) (hbu : u ≤ b) (hgu : u ≤ g)
    (haα : a ≤ α) (ha : 0 < a) (hta : t ≤ a) (hyt : t ≤ y) (hy1 : y ≤ 1)
    (hbc : b ≤ c) :
    (s - u * t) * (1 - y) ≤ α * ((1 - t) * (x - u) - s) := by
  have hW : 0 ≤ (1 - t) * (x - u) - s := by
    nlinarith [mul_nonneg (sub_nonneg.2 hbc) (sub_nonneg.2 hy1),
      mul_nonneg (sub_nonneg.2 hbu) (sub_nonneg.2 hy1),
      mul_nonneg (sub_nonneg.2 hgu) (sub_nonneg.2 hyt)]
  have hmain : s * (1 - y) ≤ a * ((1 - t) * (x - u) - s) + u * t * (1 - y) := by
    nlinarith [mul_nonneg (mul_nonneg (sub_nonneg.2 hbu) (sub_nonneg.2 hta)) (sub_nonneg.2 hy1),
      mul_nonneg (mul_nonneg ha.le (sub_nonneg.2 hgu)) (sub_nonneg.2 hyt),
      mul_nonneg ha.le (sub_nonneg.2 hGCO), mul_nonneg (sub_nonneg.2 hy1) (sub_nonneg.2 hABC)]
  nlinarith [mul_le_mul_of_nonneg_right haα hW]

/-- **The ABC/GCO elimination of the B-moving chamber** (`SHARP_BC_MOVING.md` (18),
`SHARP_BD_MOVING.md` (10)): from `ABC = a(c-b)-ct ≥ s`, `GCO = x-c(1-y)-gy ≥ s`, `b, g ≥ u`,
`a ≤ α`, `t ≥ 0`, `0 < b < c`, `0 ≤ y ≤ 1`: `(s+ut)(1-y) ≤ (α-t)(x-u-s)`; also `a - t > 0`. -/
theorem elim_B {s a b c g t x y u α : ℝ} (hs : 0 < s) (hABC : s ≤ a * (c - b) - c * t)
    (hGCO : s ≤ x - c * (1 - y) - g * y) (hbu : u ≤ b) (hgu : u ≤ g) (haα : a ≤ α)
    (ht0 : 0 ≤ t) (hb : 0 ≤ b) (hbc : b < c) (hy0 : 0 ≤ y) (hy1 : y ≤ 1) :
    (s + u * t) * (1 - y) ≤ (α - t) * (x - u - s) := by
  have h1 : s + u * t ≤ (a - t) * (c - b) := by
    linarith [mul_le_mul_of_nonneg_right hbu ht0]
  have h2 : 0 < a - t := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonpos_of_nonpos_of_nonneg hcon (sub_nonneg.2 hbc.le), mul_nonneg hb ht0]
  have h3 : (c - b) * (1 - y) ≤ x - u - s := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (sub_nonneg.2 hy1), mul_nonneg (sub_nonneg.2 hgu) hy0]
  have h4 : 0 ≤ x - u - s := le_trans (mul_nonneg (sub_nonneg.2 hbc.le) (sub_nonneg.2 hy1)) h3
  nlinarith [mul_le_mul_of_nonneg_right h1 (sub_nonneg.2 hy1), mul_le_mul_of_nonneg_left h3 h2.le,
    mul_le_mul_of_nonneg_right (sub_le_sub_right haα t) h4]

/-- **The DHO/DEF elimination with D moving** (`SHARP_CD_MOVING.md` (10), `SHARP_BD_MOVING.md`
(11); with `r = 0` it is (9) of `SHARP_BC_MOVING.md`): from `DEF = (1-f)(e-d)+r(1-e) ≥ s`,
`DHO = (1-r)(h-y)-(h-d)x ≥ s`, `e, h ≤ 1-v`, `1-f ≤ β`, `0 ≤ r ≤ 1-f`, `0 ≤ x ≤ 1-r`, `d ≤ e`:
`(s-vr)x ≤ β{(1-r)(1-v-y)-s}`. -/
theorem elim_D {s d e f h r x y v β : ℝ} (hDEF : s ≤ (1 - f) * (e - d) + r * (1 - e))
    (hDHO : s ≤ (1 - r) * (h - y) - (h - d) * x) (hev : e ≤ 1 - v) (hhv : h ≤ 1 - v)
    (hfβ : 1 - f ≤ β) (hr0 : 0 ≤ r) (hrf : r ≤ 1 - f) (hx0 : 0 ≤ x) (hxr : x ≤ 1 - r)
    (hde : d ≤ e) :
    (s - v * r) * x ≤ β * ((1 - r) * (1 - v - y) - s) := by
  have hW : (e - d) * x ≤ (1 - r) * (1 - v - y) - s := by
    nlinarith [mul_nonneg (sub_nonneg.2 hhv) (sub_nonneg.2 hxr), mul_nonneg (sub_nonneg.2 hev) hx0]
  have hW0 : 0 ≤ (1 - r) * (1 - v - y) - s := le_trans (mul_nonneg (sub_nonneg.2 hde) hx0) hW
  have hmain : (s - v * r) * x ≤ (1 - f) * ((1 - r) * (1 - v - y) - s) := by
    nlinarith [mul_nonneg hx0 (sub_nonneg.2 hDEF),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (sub_nonneg.2 hDHO),
      mul_nonneg (mul_nonneg (sub_nonneg.2 hev) hx0) (sub_nonneg.2 hrf),
      mul_nonneg (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (sub_nonneg.2 hhv))
        (sub_nonneg.2 hxr)]
  nlinarith [mul_le_mul_of_nonneg_right hfβ hW0]

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
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 91-107. -/
theorem eq3 (a b c d e f g h t x y : ℝ) :
    chamberSarea (cMovingConfig a b c d e f g h t x y) =
      ![b * (h - a), a * (c - b) + b * t, g * (h - a), (1 - f) * (e - d), (f - g) * (1 - h),
        (f - g) * (1 - e), y - a - (d - a) * x, h - y - (h - d) * x, e * (x - b) - (1 - b) * y,
        (1 - t) * x - c * (1 - y) - g * (y - t), c * (1 - y) + f * (y - t) - (1 - t) * x] := by
  funext i
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, cMovingConfig, sharpConfig, sarea,
      Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val] <;> ring

/-- The plain-real core of Theorem 2: all eleven doubled areas `≥ s` force `t = 0`. -/
theorem cMoving_rigid {s l a b c d e f g h t x y : ℝ} (hs1 : 7 / 64 < s) (hs2 : s < 11 / 100)
    (hl1 : 1 / 4 < l) (hsc : ScalarIneq s l) (hord : SharpOrders a b c d e f g h)
    (ht0 : 0 ≤ t) (hta : t < a) (hx0 : 0 ≤ x) (hx1 : x ≤ 1) (hy0 : 0 ≤ y) (hy1 : y ≤ 1)
    (h0 : s ≤ b * (h - a)) (h1 : s ≤ a * (c - b) + b * t) (h2 : s ≤ g * (h - a))
    (h3 : s ≤ (1 - f) * (e - d)) (h4 : s ≤ (f - g) * (1 - h)) (h5 : s ≤ (f - g) * (1 - e))
    (h6 : s ≤ y - a - (d - a) * x) (h7 : s ≤ h - y - (h - d) * x)
    (h8 : s ≤ e * (x - b) - (1 - b) * y) (h9 : s ≤ (1 - t) * x - c * (1 - y) - g * (y - t))
    (h10 : s ≤ c * (1 - y) + f * (y - t) - (1 - t) * x) : t = 0 := by
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩ := hord
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < f - g := by linarith
  obtain ⟨u, hu⟩ : ∃ u, u * (h - a) = s := ⟨s / (h - a), div_mul_cancel₀ _ hL0.ne'⟩
  obtain ⟨v, hv⟩ : ∃ v, v * (f - g) = s := ⟨s / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  have hu0 : 0 < u := pos_of_mul_eq hL0 (by linarith) hu
  have hv0 : 0 < v := pos_of_mul_eq hM0 (by linarith) hv
  have hbu : u ≤ b := anchor_le hL0 h0 hu
  have hgu : u ≤ g := anchor_le hL0 h2 hu
  have hhv : v ≤ 1 - h := anchor_le hM0 (by linarith) hv
  have hev : v ≤ 1 - e := anchor_le hM0 (by linarith) hv
  have hX : 2 * u ≤ 1 - x := anchor_le hL0 (by linarith) (by linarith : 2 * u * (h - a) = 2 * s)
  have hY : 2 * v ≤ y - t := anchor_le hM0 (by linarith) (by linarith : 2 * v * (f - g) = 2 * s)
  have hxb : b < x := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ e) (sub_nonneg.2 hcon),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - b) hy0]
  have hye : y < e := by
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_right hcon (by linarith : (0:ℝ) ≤ x - b),
      mul_le_mul_of_nonneg_left (by linarith : x - b ≤ 1 - b) hy0]
  -- (10): the BOE bound
  have hBOE : (1 - v) * (1 - x) + (1 - u) * y ≤ (1 - v) * (1 - u) - s := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ e - y),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - e) (by linarith : (0:ℝ) ≤ x - u)]
  have hu2 : u < 1 / 2 := by linarith
  have hv2 : v < 1 / 2 := by linarith
  -- (4): `β > s`, `a ≤ α`
  have hβ : s < 1 - u - (f - g) := by
    linarith [mul_pos (by linarith : (0:ℝ) < 1 - f) (by linarith : (0:ℝ) < 1 - (e - d))]
  have hα : a ≤ 1 - v - (h - a) := by linarith
  -- (6)
  have h6' : s ≤ 1 - 3 * u - 3 * v + 5 * u * v - (1 - u) * t := by
    linarith [mul_le_mul_of_nonneg_left hX (by linarith : (0:ℝ) ≤ 1 - v),
      mul_le_mul_of_nonneg_left hY (by linarith : (0:ℝ) ≤ 1 - u)]
  -- `u < 1/5`
  have hu5 : u < 1 / 5 := by
    by_contra hcon
    push Not at hcon
    have e1 : 2 * v ≤ 2 / 5 - s := by
      linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 3 - 5 * v) (sub_nonneg.2 hcon),
        mul_nonneg (by linarith : (0:ℝ) ≤ 1 - u) ht0]
    have e2 : s < v * (4 / 5 - s) := by
      linarith [mul_nonneg hv0.le (sub_nonneg.2 hcon), mul_lt_mul_of_pos_left hβ hv0]
    linarith [mul_le_mul_of_nonneg_right e1 (by linarith : (0:ℝ) ≤ 4 / 5 - s),
      mul_le_mul_of_nonneg_left hs2.le (by linarith : (0:ℝ) ≤ s)]
  -- (8) and (9)
  have h8' := elim_C h1 h9 hbu hgu hα ha hta.le (by linarith) hy1 hbc.le
  have h9' : (s - v * 0) * x ≤ (1 - u - (f - g)) * ((1 - 0) * (1 - v - y) - s) :=
    elim_D (d := d) (e := e) (f := f) (h := h) (by linarith) (by linarith) (by linarith)
      (by linarith) (by linarith) le_rfl (by linarith) hx0 (by linarith) hde.le
  -- the combination (11)
  have hscal := hsc u v (h - a) (f - g) hu0 hv0 (by linarith) hu hv
  have hcX : 0 < (1 - v - (h - a)) * (1 - t) - s + l * (1 - v) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - (h - a)) (by linarith : (0:ℝ) ≤ 1 - t),
      mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - v)]
  have hcY : 0 < (1 - u - (f - g)) - s + u * t + l * (1 - u) := by
    linarith [mul_nonneg hu0.le ht0,
      mul_pos (by linarith : (0:ℝ) < l) (by linarith : (0:ℝ) < 1 - u)]
  have hDC : 0 < (1 - v - (h - a)) * (1 - 3 * u) + ((1 - u - (f - g)) - s) -
      u * (1 - 2 * v - t) + l * (1 - u) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - (h - a)) (by linarith : (0:ℝ) ≤ 1 - 3 * u),
      mul_nonneg hu0.le hv0.le, mul_nonneg hu0.le ht0,
      mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - u)]
  have hcomb : t * ((1 - v - (h - a)) * (1 - 3 * u) + ((1 - u - (f - g)) - s) -
      u * (1 - 2 * v - t) + l * (1 - u)) ≤ 0 := by
    linarith [mul_le_mul_of_nonneg_left hBOE (by linarith : (0:ℝ) ≤ l),
      mul_nonneg hcX.le (by linarith : (0:ℝ) ≤ 1 - x - 2 * u),
      mul_nonneg hcY.le (by linarith : (0:ℝ) ≤ y - 2 * v - t)]
  exact eq_zero_of_mul_nonpos ht0 hDC hcomb

/-- **Claim** (`SHARP_BC_MOVING:eq8`). In the C-moving chamber, if every chamber doubled area is
at least `s = s₀`, then with `u = s/(h-a)`, `v = s/(f-g)`, `α = 1-v-s/u`,
`(s - ut)(1-y) ≤ α{(1-t)(x-u) - s}` (the ABC/GCO elimination; no sign of `s - ut` is needed).
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 147-168. -/
theorem eq8 {a b c d e f g h t x y : ℝ} (hyp : CMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (cMovingConfig a b c d e f g h t x y) i) :
    let u := sharpS / (h - a)
    let v := sharpS / (f - g)
    (sharpS - u * t) * (1 - y) ≤ sharpAlpha sharpS u v * ((1 - t) * (x - u) - sharpS) := by
  intro u v
  obtain ⟨⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩, ht0, hta, hx0, hx1, hy0,
    hy1⟩ := hyp
  obtain ⟨hs1, -, -, -⟩ := sharp_bounds
  rw [eq3] at hs
  have h0 : sharpS ≤ b * (h - a) := by simpa using hs 0
  have h1 : sharpS ≤ a * (c - b) + b * t := by simpa using hs 1
  have h2 : sharpS ≤ g * (h - a) := by simpa using hs 2
  have h4 : sharpS ≤ (f - g) * (1 - h) := by simpa using hs 4
  have h9 : sharpS ≤ (1 - t) * x - c * (1 - y) - g * (y - t) := by simpa using hs 9
  have h10 : sharpS ≤ c * (1 - y) + f * (y - t) - (1 - t) * x := by simpa using hs 10
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < f - g := by linarith
  have hu : u * (h - a) = sharpS := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = sharpS := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by linarith) hL0
  have hαeq : sharpAlpha sharpS u v = 1 - v - (h - a) := by
    unfold sharpAlpha; rw [← hu]; field_simp
  have hhv : v ≤ 1 - h := anchor_le hM0 (by linarith) hv
  have hY : 2 * v ≤ y - t :=
    anchor_le hM0 (by linarith) (by linarith : 2 * v * (f - g) = 2 * sharpS)
  have hv0 : 0 < v := div_pos (by linarith) hM0
  rw [hαeq]
  exact elim_C h1 h9 (anchor_le hL0 h0 hu) (anchor_le hL0 h2 hu) (by linarith) ha hta.le
    (by linarith) hy1 hbc.le

/-- **Theorem 2** (`SHARP_BC_MOVING:Theorem2`). C-moving chamber: under the strict orders,
`0 ≤ t < a`, `O ∈ [0,1]²` and positivity of the eleven oriented doubled areas (3), the minimum of
the eleven ordinary areas is at most `A₀`; if all eleven are at least `A₀`, then `t = 0` and the
configuration is exactly the equality configuration of `HAND_PROOF.md`.
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 77-200.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_BC_MOVING:eq8,
HAND_PROOF:Theorem1 -/
theorem theorem2 {a b c d e f g h t x y : ℝ} (hyp : CMovingHyp a b c d e f g h t x y)
    (hch : InChamber (cMovingConfig a b c d e f g h t x y)) :
    (∃ i, chamberArea (cMovingConfig a b c d e f g h t x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (cMovingConfig a b c d e f g h t x y) i) →
        t = 0 ∧ cMovingConfig a b c d e f g h t x y = optimalConfiguration) := by
  obtain ⟨hord, ht0, hta, hO⟩ := hyp
  refine moving_wrapper hord hO hch fun hs => ?_
  obtain ⟨hs1, hs2, hl1, -⟩ := sharp_bounds
  obtain ⟨hx0, hx1, hy0, hy1⟩ := hO
  rw [eq3] at hs
  have ht : t = 0 := cMoving_rigid hs1 hs2 hl1 scalarIneq_sharp hord ht0 hta hx0 hx1 hy0 hy1
    (by simpa using hs 0) (by simpa using hs 1) (by simpa using hs 2) (by simpa using hs 3)
    (by simpa using hs 4) (by simpa using hs 5) (by simpa using hs 6) (by simpa using hs 7)
    (by simpa using hs 8) (by simpa using hs 9) (by simpa using hs 10)
  subst ht
  exact ⟨rfl, rfl⟩

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
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 204-215. -/
theorem eq12 (a b c d e f g h t x y : ℝ) :
    chamberSarea (bMovingConfig a b c d e f g h t x y) =
      ![b * (h - a), a * (c - b) - c * t, g * (h - a), (1 - f) * (e - d), (f - g) * (1 - h),
        (f - g) * (1 - e), y - a - (d - a) * x, h - y - (h - d) * x,
        e * (x - b) - (1 - b) * y + t * (1 - x), x - c + (c - g) * y, c - x + (f - c) * y] := by
  funext i
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, bMovingConfig, sharpConfig, sarea,
      Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val] <;> ring

/-- The plain-real core of (17): with `α = 1-v-L`, `β = 1-u-M`, `uL = vM = s`, the hypotheses
(13)–(15) give `u, v < 1/4` and `t < 1/2`. -/
theorem eq17_core {s u v L M t : ℝ} (hs1 : 7 / 64 < s) (hs2 : s < 11 / 100) (hu : 0 < u)
    (hu2 : u < 1 / 2) (hv : 0 < v) (_hv2 : v < 1 / 2) (_ht : 0 ≤ t) (hL : u * L = s)
    (hM : v * M = s) (hα : s < 1 - v - L - t) (hβ : s < 1 - u - M)
    (h14 : s ≤ 1 - 3 * u - 3 * v + 5 * u * v + 2 * u * t)
    (h15 : t ≤ (1 - v - L) * (1 - u) - s) :
    u < 1 / 4 ∧ v < 1 / 4 ∧ t < 1 / 2 := by
  have hL2 : u * u * L = s * u := by rw [mul_assoc, mul_comm u L, ← mul_assoc, hL]
  have hL3 : u * v * L = s * v := by
    rw [mul_comm u v, mul_assoc, hL]; ring
  -- (16)
  have h16 : 3 * s ≤ 1 - u - 2 * u ^ 2 - v * (3 - 3 * u - 2 * u ^ 2) := by
    nlinarith [mul_le_mul_of_nonneg_left h15 (by linarith : (0:ℝ) ≤ 2 * u)]
  have hK : 0 < 3 - 3 * u - 2 * u ^ 2 := by nlinarith
  have hv4 : v < 1 / 4 := by
    by_contra hcon
    push Not at hcon
    nlinarith [mul_le_mul_of_nonneg_right hcon hK.le]
  have hu4 : u < 1 / 4 := by
    by_contra hcon
    push Not at hcon
    have hvD : s < v * (1 - u - s) := by nlinarith [mul_lt_mul_of_pos_left hβ hv]
    have hD : 0 < 1 - u - s := by linarith
    have hN :
        0 < 3 * s ^ 2 + 4 * s * u ^ 2 + 7 * s * u - 7 * s + 2 * u ^ 3 - u ^ 2 - 2 * u + 1 := by
      nlinarith [mul_le_mul_of_nonneg_left h16 hD.le, mul_lt_mul_of_pos_right hvD hK]
    have e1 : 0 ≤ (s - 7 / 64) * (7 - 21 / 64 - 3 * s - 4 * u ^ 2 - 7 * u) :=
      mul_nonneg (by linarith) (by nlinarith)
    have z0 : 0 ≤ u - 1 / 4 := by linarith
    have e2 : 2 * (u - 1 / 4) ^ 3 + 15 / 16 * (u - 1 / 4) ^ 2 - 73 / 64 * (u - 1 / 4) -
        173 / 4096 < 0 := by
      nlinarith [mul_nonneg z0 (by linarith : (0:ℝ) ≤ 1 / 4 - (u - 1 / 4)),
        mul_nonneg (mul_nonneg z0 z0) (by linarith : (0:ℝ) ≤ 1 / 4 - (u - 1 / 4))]
    nlinarith [e1, e2]
  refine ⟨hu4, hv4, ?_⟩
  have hL4 : 4 * s < L := by nlinarith
  linarith

/-- **Claim** (`SHARP_BC_MOVING:eq17`). The scalar step of Section 3 ("both effective parameters
are below 1/4"): with `s = s₀`, if `0 < u, v < 1/2`, `0 ≤ t`, `α - t > s`, `β > s` (13),
`s ≤ g(u,v) + 2ut` (14) and `t ≤ α(1-u) - s` (15), then `u, v < 1/4` and `t < 1/2`.
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 250-282 (reused as (8) of `SHARP_BD_MOVING.md`). -/
theorem eq17 {u v t : ℝ} (hu : 0 < u) (hu2 : u < 1 / 2) (hv : 0 < v) (hv2 : v < 1 / 2)
    (ht : 0 ≤ t) (hα : sharpS < sharpAlpha sharpS u v - t) (hβ : sharpS < sharpBeta sharpS u v)
    (h14 : sharpS ≤ sharpG u v + 2 * u * t)
    (h15 : t ≤ sharpAlpha sharpS u v * (1 - u) - sharpS) :
    u < 1 / 4 ∧ v < 1 / 4 ∧ t < 1 / 2 := by
  obtain ⟨hs1, hs2, -, -⟩ := sharp_bounds
  unfold sharpAlpha at hα h15
  unfold sharpBeta at hβ
  unfold sharpG at h14
  refine eq17_core hs1 hs2 hu hu2 hv hv2 ht (L := sharpS / u) (M := sharpS / v)
    (by field_simp) (by field_simp) (by linarith) hβ h14 h15

/-- **Claim** (`SHARP_BC_MOVING:eq18`). In the B-moving chamber, if every chamber doubled area is
at least `s = s₀`, then with `u = s/(h-a)`, `v = s/(f-g)`, `α = 1-v-s/u`,
`(s + ut)(1-y) ≤ (α - t)(x - u - s)` (the ABC/GCO elimination).
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 284-293. -/
theorem eq18 {a b c d e f g h t x y : ℝ} (hyp : BMovingHyp a b c d e f g h t x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (bMovingConfig a b c d e f g h t x y) i) :
    let u := sharpS / (h - a)
    let v := sharpS / (f - g)
    (sharpS + u * t) * (1 - y) ≤ (sharpAlpha sharpS u v - t) * (x - u - sharpS) := by
  intro u v
  obtain ⟨⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩, ht0, htd, hx0, hx1, hy0,
    hy1⟩ := hyp
  obtain ⟨hs1, -, -, -⟩ := sharp_bounds
  rw [eq12] at hs
  have h0 : sharpS ≤ b * (h - a) := by simpa using hs 0
  have h1 : sharpS ≤ a * (c - b) - c * t := by simpa using hs 1
  have h2 : sharpS ≤ g * (h - a) := by simpa using hs 2
  have h4 : sharpS ≤ (f - g) * (1 - h) := by simpa using hs 4
  have h9 : sharpS ≤ x - c + (c - g) * y := by simpa using hs 9
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < f - g := by linarith
  have hu : u * (h - a) = sharpS := div_mul_cancel₀ _ hL0.ne'
  have hv : v * (f - g) = sharpS := div_mul_cancel₀ _ hM0.ne'
  have hu0 : 0 < u := div_pos (by linarith) hL0
  have hαeq : sharpAlpha sharpS u v = 1 - v - (h - a) := by
    unfold sharpAlpha; rw [← hu]; field_simp
  have hhv : v ≤ 1 - h := anchor_le hM0 (by linarith) hv
  rw [hαeq]
  exact elim_B (by linarith) h1 (by linarith) (anchor_le hL0 h0 hu) (anchor_le hL0 h2 hu)
    (by linarith) ht0 hb.le hbc hy0 hy1

/-- The plain-real core of Theorem 3: all eleven doubled areas `≥ s` force `t = 0`. -/
theorem bMoving_rigid {s l a b c d e f g h t x y : ℝ} (hs1 : 7 / 64 < s) (hs2 : s < 11 / 100)
    (hl1 : 1 / 4 < l) (hl2 : l < 1 / 3) (hsc : ScalarIneq s l)
    (hord : SharpOrders a b c d e f g h)
    (ht0 : 0 ≤ t) (htd : t ≤ d) (hx0 : 0 ≤ x) (hx1 : x ≤ 1) (hy0 : 0 ≤ y) (hy1 : y ≤ 1)
    (h0 : s ≤ b * (h - a)) (h1 : s ≤ a * (c - b) - c * t) (h2 : s ≤ g * (h - a))
    (h3 : s ≤ (1 - f) * (e - d)) (h4 : s ≤ (f - g) * (1 - h)) (h5 : s ≤ (f - g) * (1 - e))
    (h6 : s ≤ y - a - (d - a) * x) (h7 : s ≤ h - y - (h - d) * x)
    (h8 : s ≤ e * (x - b) - (1 - b) * y + t * (1 - x)) (h9 : s ≤ x - c + (c - g) * y)
    (h10 : s ≤ c - x + (f - c) * y) : t = 0 := by
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, hd, hde, he1, hg, hgf, hf1⟩ := hord
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < f - g := by linarith
  obtain ⟨u, hu⟩ : ∃ u, u * (h - a) = s := ⟨s / (h - a), div_mul_cancel₀ _ hL0.ne'⟩
  obtain ⟨v, hv⟩ : ∃ v, v * (f - g) = s := ⟨s / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  have hu0 : 0 < u := pos_of_mul_eq hL0 (by linarith) hu
  have hv0 : 0 < v := pos_of_mul_eq hM0 (by linarith) hv
  have hbu : u ≤ b := anchor_le hL0 h0 hu
  have hgu : u ≤ g := anchor_le hL0 h2 hu
  have hhv : v ≤ 1 - h := anchor_le hM0 (by linarith) hv
  have hev : v ≤ 1 - e := anchor_le hM0 (by linarith) hv
  have hX : 2 * u ≤ 1 - x := anchor_le hL0 (by linarith) (by linarith : 2 * u * (h - a) = 2 * s)
  have hY : 2 * v ≤ y := anchor_le hM0 (by linarith) (by linarith : 2 * v * (f - g) = 2 * s)
  -- (13)
  have hat1 : s + b * t ≤ (a - t) * (c - b) := by linarith
  have hat0 : 0 < a - t := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonpos_of_nonpos_of_nonneg hcon (by linarith : (0:ℝ) ≤ c - b),
      mul_nonneg hb.le ht0]
  have hat : s < a - t := by
    linarith [mul_pos hat0 (by linarith : (0:ℝ) < 1 - (c - b)), mul_nonneg hb.le ht0]
  have hα : a ≤ 1 - v - (h - a) := by linarith
  have hβ : s < 1 - u - (f - g) := by
    linarith [mul_pos (by linarith : (0:ℝ) < 1 - f) (by linarith : (0:ℝ) < 1 - (e - d))]
  -- signs of BOE
  have hyt : t < y := by
    linarith [mul_le_mul_of_nonneg_right (by linarith : t ≤ a) (by linarith : (0:ℝ) ≤ 1 - x),
      mul_le_mul_of_nonneg_right htd hx0]
  have hxb : b < x := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ e - t) (sub_nonneg.2 hcon),
      mul_pos (by linarith : (0:ℝ) < 1 - b) (by linarith : (0:ℝ) < y - t)]
  have hye : y < e := by
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_right (by linarith : e - t ≤ y - t)
      (by linarith : (0:ℝ) ≤ x - b),
      mul_le_mul_of_nonneg_left (by linarith : x - b ≤ 1 - b) (by linarith : (0:ℝ) ≤ y - t)]
  -- (19)
  have hBOE : (1 - v - t) * (1 - x) + (1 - u) * y ≤ (1 - v) * (1 - u) - s := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ e - y),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - e) (by linarith : (0:ℝ) ≤ x - u)]
  have hu2 : u < 1 / 2 := by linarith
  have hv2 : v < 1 / 2 := by linarith
  -- (14), (15)
  have h14 : s ≤ 1 - 3 * u - 3 * v + 5 * u * v + 2 * u * t := by
    linarith [mul_le_mul_of_nonneg_left hX (by linarith : (0:ℝ) ≤ 1 - v - t),
      mul_le_mul_of_nonneg_left hY (by linarith : (0:ℝ) ≤ 1 - u)]
  have h15 : t ≤ (1 - v - (h - a)) * (1 - u) - s := by
    linarith [mul_le_mul_of_nonneg_right hbu ht0,
      mul_le_mul (by linarith : a - t ≤ 1 - v - (h - a) - t) (by linarith : c - b ≤ 1 - u)
        (by linarith : (0:ℝ) ≤ c - b) (by linarith : (0:ℝ) ≤ 1 - v - (h - a) - t)]
  obtain ⟨hu4, hv4, ht2⟩ := eq17_core hs1 hs2 hu0 hu2 hv0 hv2 ht0 hu hv (by linarith) hβ h14 h15
  -- (18), (9)
  have h18 := elim_B (by linarith) h1 (by linarith : s ≤ x - c * (1 - y) - g * y) hbu hgu hα ht0
    hb.le hbc hy0 hy1
  have h9' : (s - v * 0) * x ≤ (1 - u - (f - g)) * ((1 - 0) * (1 - v - y) - s) :=
    elim_D (d := d) (e := e) (f := f) (h := h) (by linarith) (by linarith) (by linarith)
      (by linarith) (by linarith) le_rfl (by linarith) hx0 (by linarith) hde.le
  -- the combination (20)
  have hscal := hsc u v (h - a) (f - g) hu0 hv0 (by linarith) hu hv
  have hcX : 0 < (1 - v - (h - a)) - t - s + l * (1 - v - t) := by
    linarith [mul_pos (by linarith : (0:ℝ) < l) (by linarith : (0:ℝ) < 1 - v - t)]
  have hcY : 0 < (1 - u - (f - g)) - s - u * t + l * (1 - u) := by
    linarith [mul_lt_mul'' hu4 ht2 hu0.le ht0,
      mul_le_mul_of_nonneg_right hl1.le (by linarith : (0:ℝ) ≤ 1 - u)]
  have hK : 0 < 1 - s - 2 * u * (1 + v + l) := by
    linarith [mul_lt_mul_of_pos_left (by linarith : 1 + v + l < 1 + 1 / 4 + 1 / 3) hu0]
  have hcomb : t * (1 - s - 2 * u * (1 + v + l)) ≤ 0 := by
    linarith [mul_le_mul_of_nonneg_left hBOE (by linarith : (0:ℝ) ≤ l),
      mul_nonneg hcX.le (by linarith : (0:ℝ) ≤ 1 - x - 2 * u),
      mul_nonneg hcY.le (by linarith : (0:ℝ) ≤ y - 2 * v)]
  exact eq_zero_of_mul_nonpos ht0 hK hcomb

/-- **Theorem 3** (`SHARP_BC_MOVING:Theorem3`). B-moving chamber: under the strict orders,
`0 ≤ t ≤ d`, `O ∈ [0,1]²` and positivity of the eleven oriented doubled areas (12), the minimum
of the eleven ordinary areas is at most `A₀`; if all eleven are at least `A₀`, then `t = 0` and
the configuration is exactly the equality configuration of `HAND_PROOF.md`.
`docs/proof/nine/SHARP_BC_MOVING.md`, lines 202-325.
Uses: SHARP_BC_MOVING:claim-constants, SHARP_BC_MOVING:Lemma1, SHARP_BC_MOVING:eq17,
SHARP_BC_MOVING:eq18, HAND_PROOF:Theorem1 -/
theorem theorem3 {a b c d e f g h t x y : ℝ} (hyp : BMovingHyp a b c d e f g h t x y)
    (hch : InChamber (bMovingConfig a b c d e f g h t x y)) :
    (∃ i, chamberArea (bMovingConfig a b c d e f g h t x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (bMovingConfig a b c d e f g h t x y) i) →
        t = 0 ∧ bMovingConfig a b c d e f g h t x y = optimalConfiguration) := by
  obtain ⟨hord, ht0, htd, hO⟩ := hyp
  refine moving_wrapper hord hO hch fun hs => ?_
  obtain ⟨hs1, hs2, hl1, hl2⟩ := sharp_bounds
  obtain ⟨hx0, hx1, hy0, hy1⟩ := hO
  rw [eq12] at hs
  have ht : t = 0 := bMoving_rigid hs1 hs2 hl1 (by linarith) scalarIneq_sharp hord ht0 htd hx0
    hx1 hy0 hy1
    (by simpa using hs 0) (by simpa using hs 1) (by simpa using hs 2) (by simpa using hs 3)
    (by simpa using hs 4) (by simpa using hs 5) (by simpa using hs 6) (by simpa using hs 7)
    (by simpa using hs 8) (by simpa using hs 9) (by simpa using hs 10)
  subst ht
  exact ⟨rfl, rfl⟩

/-! ### Symmetry -/

/-- The reflection `(x,y) ↦ (1-y,1-x)` of the square in its anti-diagonal, as a square symmetry
(swap the coordinates, then flip both). -/
def antiDiagonal : SquareSymmetry := ⟨true, true, true⟩

/-- The relabelling `A↔F, B↔E, C↔D, G↔H`, `O` fixed, on the indices of `sharpConfig`. -/
def antiDiagonalLabels : Fin 9 → Fin 9 := ![5, 4, 3, 2, 1, 0, 7, 6, 8]

/-- The induced involution of the eleven chamber triangles:
`ABH↔GEF, ABC↔DEF, AGH↔GHF, ADO↔OCF, DHO↔GCO`, `BOE` fixed. -/
def antiDiagonalTriangles : Equiv.Perm (Fin 11) :=
  ⟨![5, 3, 4, 1, 2, 0, 10, 9, 8, 7, 6], ![5, 3, 4, 1, 2, 0, 10, 9, 8, 7, 6], by decide,
    by decide⟩

/-- **Claim** (`SHARP_BC_MOVING:claim-symmetry`). The reflection `(x,y) ↦ (1-y,1-x)` together
with the relabelling `A↔F, B↔E, C↔D, G↔H` preserves the sharp chamber: it permutes the eleven
oriented chamber doubled areas. (Hence Theorems 2–3 also cover the reflected D- and E-moving
chambers.) `docs/proof/nine/SHARP_BC_MOVING.md`, lines 327-334. -/
theorem claim_symmetry (P : Fin 9 → Point) :
    ∃ τ : Equiv.Perm (Fin 11), ∀ i,
      chamberSarea (antiDiagonal.apply ∘ P ∘ antiDiagonalLabels) i = chamberSarea P (τ i) := by
  refine ⟨antiDiagonalTriangles, fun i => ?_⟩
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, antiDiagonalTriangles, antiDiagonalLabels,
      antiDiagonal, SquareSymmetry.apply, Function.comp_apply, sarea, Equiv.coe_fn_mk,
      Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val, ite_true] <;> ring

end Heilbronn.Nine.SharpBCMoving
