module

public import Heilbronn.Nine.Setup.Families

/-! # The sharp chamber and strict local optimality (`docs/proof/nine/HAND_PROOF.md`)

**Role.** Primary route, in two pieces. The appendix (exact attainment, the 84 areas) is already
proved in `Heilbronn/Nine/Construction/Areas.lean` and `Heilbronn/Nine/Construction.lean`
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
`chamberArea`, `InChamber`) are repeated in `Heilbronn/Nine/Sharp/BCMoving.lean` with identical
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

**How the proofs go.**
* Part I works with the eleven inequalities as plain real hypotheses (`Hyps`), `u = s/L` and
  `v = s/M` given by `u L = s`, `v M = s`, and (8) in the polynomial form `phiNum = uv·Φ ≥ 0`
  (`Hyps.step3` … `Hyps.step8`). The scalar argument at `s = s₀` is `scalar_key`: for
  `0 < u, v < 1/2` with (4), `uvΦ ≤ 0`, with equality only at `u = v = p₀` (from
  `2uvp R(p, s) = p²·uvΦ + (p² - uv)(…)` and `R(p, s₀) = (p - p₀) K(p)`, `K > 0` on `p ≤ p₀`). It
  is also `GLOBAL_COMPLETION` (26). The equality chain of §6 is `Hyps.equality`; it makes
  explicit that (5) holds with equality (inventory gap 1). `p₀` enters only through
  `20p₀² - 15p₀ + 2 = 0` (`p₀_quad`) and `173/1000 < p₀ < 347/2000`.
* Part II: `claim_stress` is checked by one `linear_combination` (the residual table times
  `p₀_quad`); `claim_kernel` by the elimination (14) (`kernel_algebra`, final coefficient
  `3(4p₀² - 11p₀ + 2)/4 ≠ 0`); `claim_compactness` by compactness of the unit sphere of the
  feasible cone, as in the manuscript. `theorem2` takes `ε = min(κ/8, 1/100)`, `c = κ/2`, using
  `|J_T d| ≤ 4‖d‖` (`chamberGrad_abs_le`) to keep the chosen triangle positively oriented.

**Changed statement.** `claim_expansion` has the remainder bound `4‖d‖²` instead of the
manuscript's `2‖d‖²` (the crude determinant bound; the sharper constant, "a triangle in a square
covers at most half of it", is not needed).

**Implicit in the manuscript.** The sub-claims of the proof of Theorem 1 are stated under the
proof's standing assumption (line 96) that every one of the eleven doubled areas is at least
`s > 0`. This assumption implies the five `U_i > 0`, which are therefore not repeated.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.HandProof

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
`docs/proof/nine/HAND_PROOF.md`, lines 58-68, 102-108. -/
theorem claim_doubled_areas (a b c d e f g h x y : ℝ) :
    chamberSarea (baseConfig a b c d e f g h x y) =
      ![b * (h - a), a * (c - b), g * (h - a), (1 - f) * (e - d), (f - g) * (1 - h),
        (f - g) * (1 - e), y - a - (d - a) * x, h - y - (h - d) * x, e * (x - b) - (1 - b) * y,
        x - c + (c - g) * y, c - x + (f - c) * y] := by
  funext i
  fin_cases i <;> simp [chamberSarea, chamberTriangles, baseConfig, sarea] <;> ring

/-! ### The constants `p₀` and `s₀ = 2A₀` -/

theorem p₀_quad : 20 * p₀ ^ 2 - 15 * p₀ + 2 = 0 := by
  have h := Real.sq_sqrt (show (0 : ℝ) ≤ 65 by norm_num)
  unfold p₀; linear_combination (1 / 80 : ℝ) * h

/-- `s₀ = 2A₀ = (2 - 9p₀)/4`. -/
theorem two_A₀ : 2 * A₀ = (2 - 9 * p₀) / 4 := by
  unfold A₀ p₀; ring

theorem p₀_gt : (173 / 1000 : ℝ) < p₀ := by
  have := sqrt65_bounds; unfold p₀; linarith [this.2]

theorem p₀_lt : p₀ < (347 / 2000 : ℝ) := by
  have := sqrt65_bounds; unfold p₀; linarith [this.1]

/-! ### The eleven inequalities as real hypotheses -/

/-- The orders, `O` in the square, and the eleven chamber inequalities `s ≤ [T]` of Part I as
plain real inequalities (the doubled areas of `claim_doubled_areas`). -/
structure Hyps (s a b c d e f g h x y : ℝ) : Prop where
  hs : 0 < s
  ha : 0 < a
  hah : a < h
  hh : h < 1
  hb : 0 < b
  hbc : b < c
  hc : c < 1
  hd : 0 < d
  hde : d < e
  he : e < 1
  hg : 0 < g
  hgf : g < f
  hf : f < 1
  hx0 : 0 ≤ x
  hx1 : x ≤ 1
  hy0 : 0 ≤ y
  hy1 : y ≤ 1
  t1 : s ≤ b * (h - a)
  t2 : s ≤ a * (c - b)
  t3 : s ≤ g * (h - a)
  t4 : s ≤ (1 - f) * (e - d)
  t5 : s ≤ (f - g) * (1 - h)
  t6 : s ≤ (f - g) * (1 - e)
  t7 : s ≤ y - a - (d - a) * x
  t8 : s ≤ h - y - (h - d) * x
  t9 : s ≤ e * (x - b) - (1 - b) * y
  t10 : s ≤ x - c + (c - g) * y
  t11 : s ≤ c - x + (f - c) * y

theorem Hyps.of_all {s a b c d e f g h x y : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare) (hs : 0 < s)
    (hall : ∀ i, s ≤ chamberSarea (baseConfig a b c d e f g h x y) i) :
    Hyps s a b c d e f g h x y := by
  rw [claim_doubled_areas] at hall
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hord
  obtain ⟨hx0, hx1, hy0, hy1⟩ := hO
  exact ⟨hs, ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf, hx0, hx1, hy0, hy1,
    by simpa using hall 0, by simpa using hall 1, by simpa using hall 2, by simpa using hall 3,
    by simpa using hall 4, by simpa using hall 5, by simpa using hall 6, by simpa using hall 7,
    by simpa using hall 8, by simpa using hall 9, by simpa using hall 10⟩

/-- `u·v` times the left side of (8): `6u²v² + (3s-4)(u+v)uv + (2s+2)uv - s(1-s)(u+v)`. -/
def phiNum (s u v : ℝ) : ℝ :=
  6 * u ^ 2 * v ^ 2 + (3 * s - 4) * (u + v) * u * v + (2 * s + 2) * u * v - s * (1 - s) * (u + v)

theorem phi_eq (s u v : ℝ) (hu : u ≠ 0) (hv : v ≠ 0) : phi s u v = phiNum s u v / (u * v) := by
  unfold phi phiNum; field_simp; ring

section Steps

variable {s a b c d e f g h x y u v : ℝ}

/-- (2), (3), and the signs `x > b`, `e > y` from `U₃ > 0`. -/
theorem Hyps.step3 (H : Hyps s a b c d e f g h x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) :
    0 < u ∧ 0 < v ∧ u ≤ b ∧ u ≤ g ∧ e ≤ 1 - v ∧ h ≤ 1 - v ∧ x ≤ 1 - 2 * u ∧ 2 * v ≤ y ∧
      b < x ∧ y < e := by
  have hL : 0 < h - a := sub_pos.2 H.hah
  have hM : 0 < f - g := sub_pos.2 H.hgf
  have hs := H.hs
  have hu0 : 0 < u := by nlinarith
  have hv0 : 0 < v := by nlinarith
  have hbx : b < x := by
    by_contra hc; push Not at hc
    nlinarith [H.t9, mul_nonneg H.hd.le (sub_nonneg.2 H.hde.le), mul_nonneg (sub_nonneg.2 hc)
      (H.hd.trans H.hde).le, mul_nonneg (by linarith [H.hbc, H.hc] : (0 : ℝ) ≤ 1 - b) H.hy0]
  have hye : y < e := by
    by_contra hc; push Not at hc
    nlinarith [H.t9, mul_nonneg (H.hd.trans H.hde).le (sub_nonneg.2 H.hx1),
      mul_nonneg (by linarith [H.hbc, H.hc] : (0 : ℝ) ≤ 1 - b) (sub_nonneg.2 hc)]
  refine ⟨hu0, hv0, ?_, ?_, ?_, ?_, ?_, ?_, hbx, hye⟩
  · nlinarith [H.t1]
  · nlinarith [H.t3]
  · nlinarith [H.t6]
  · nlinarith [H.t5]
  · nlinarith [H.t7, H.t8]
  · nlinarith [H.t10, H.t11]

/-- (4): `s ≤ 1 - 3u - 3v + 5uv`, by the monotone chain from `U₃ ≥ s`. -/
theorem Hyps.step4 (H : Hyps s a b c d e f g h x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) : s ≤ 1 - 3 * u - 3 * v + 5 * u * v := by
  obtain ⟨hu0, hv0, hub, hug, hev, hhv, hxu, hyv, hbx, hye⟩ := H.step3 hu hv
  have hv1 : v < 1 := by linarith [H.hd, H.hde]
  have hu1 : u < 1 := by linarith [H.hbc, H.hc]
  nlinarith [H.t9, mul_nonneg (sub_nonneg.2 hub) (sub_pos.2 hye).le,
    mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - v - e) (by linarith : (0 : ℝ) ≤ x - u),
    mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - v) (by linarith : (0 : ℝ) ≤ 1 - 2 * u - x),
    mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - u) (by linarith : (0 : ℝ) ≤ y - 2 * v)]

/-- (5): `s(1-y) ≤ α(x-u-s)` with `α = 1 - v - L`, from ABC and GCO. -/
theorem Hyps.step5 (H : Hyps s a b c d e f g h x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) : s * (1 - y) ≤ (1 - v - (h - a)) * (x - u - s) := by
  obtain ⟨hu0, hv0, hub, hug, hev, hhv, hxu, hyv, hbx, hye⟩ := H.step3 hu hv
  have hαa : a ≤ 1 - v - (h - a) := by linarith
  have h5a : s ≤ (1 - v - (h - a)) * (c - u) := by
    nlinarith [H.t2, mul_nonneg (sub_nonneg.2 hαa) (sub_pos.2 H.hbc).le,
      mul_nonneg (H.ha.le.trans hαa) (sub_nonneg.2 hub)]
  have h5b : c * (1 - y) ≤ x - u * y - s := by
    nlinarith [H.t10, mul_nonneg (sub_nonneg.2 hug) H.hy0]
  nlinarith [mul_nonneg (sub_nonneg.2 h5a) (by linarith [H.he] : (0 : ℝ) ≤ 1 - y),
    mul_nonneg (H.ha.le.trans hαa) (sub_nonneg.2 h5b)]

/-- (6): `sx ≤ β(1-v-y-s)` with `β = 1 - u - M`, from DHO and DEF. -/
theorem Hyps.step6 (H : Hyps s a b c d e f g h x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) : s * x ≤ (1 - u - (f - g)) * (1 - v - y - s) := by
  obtain ⟨hu0, hv0, hub, hug, hev, hhv, hxu, hyv, hbx, hye⟩ := H.step3 hu hv
  have hβf : 1 - f ≤ 1 - u - (f - g) := by linarith
  have hβ : 0 ≤ 1 - u - (f - g) := by linarith [H.hf]
  have h6a : s ≤ (1 - u - (f - g)) * (e - d) := by
    nlinarith [H.t4, mul_nonneg (sub_nonneg.2 hβf) (sub_pos.2 H.hde).le]
  have h6b : x * (e - d) ≤ 1 - v - y - s := by
    nlinarith [H.t8, mul_nonneg H.hx0 (by linarith : (0 : ℝ) ≤ 1 - v - e),
      mul_nonneg (sub_nonneg.2 H.hx1) (by linarith : (0 : ℝ) ≤ 1 - v - h)]
  nlinarith [mul_nonneg (sub_nonneg.2 h6a) H.hx0, mul_nonneg hβ (sub_nonneg.2 h6b)]

/-- (7): `α(1-3u-s) + β(1-3v-s) + 2s(u+v-1) ≥ 0`. -/
theorem Hyps.step7 (H : Hyps s a b c d e f g h x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) :
    0 ≤ (1 - v - (h - a)) * (1 - 3 * u - s) + (1 - u - (f - g)) * (1 - 3 * v - s) +
      2 * s * (u + v - 1) := by
  obtain ⟨hu0, hv0, hub, hug, hev, hhv, hxu, hyv, hbx, hye⟩ := H.step3 hu hv
  have h5 := H.step5 hu hv
  have h6 := H.step6 hu hv
  have has : s < a := by
    nlinarith [H.t2, mul_pos H.ha (by linarith [H.hb, H.hc] : (0 : ℝ) < 1 - (c - b))]
  have hfs : s < 1 - f := by
    nlinarith [H.t4, mul_pos (sub_pos.2 H.hf) (by linarith [H.hd, H.he] : (0 : ℝ) < 1 - (e - d))]
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - v - (h - a) - s)
      (by linarith : (0 : ℝ) ≤ 1 - x - 2 * u),
    mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - u - (f - g) - s) (by linarith : (0 : ℝ) ≤ y - 2 * v)]

/-- (8) in polynomial form: `uv · Φ ≥ 0`. -/
theorem Hyps.step8 (H : Hyps s a b c d e f g h x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) : 0 ≤ phiNum s u v := by
  obtain ⟨hu0, hv0, -⟩ := H.step3 hu hv
  have h7 := H.step7 hu hv
  have key : phiNum s u v = u * v * ((1 - v - (h - a)) * (1 - 3 * u - s) +
      (1 - u - (f - g)) * (1 - 3 * v - s) + 2 * s * (u + v - 1)) := by
    unfold phiNum
    linear_combination (v * (1 - 3 * u - s)) * hu + (u * (1 - 3 * v - s)) * hv
  rw [key]; positivity

/-- The scalar bounds `0 < u, v < 1/2`, `u, v > s` and `s < 1`. -/
theorem Hyps.scalar_bounds (H : Hyps s a b c d e f g h x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) : u < 1 / 2 ∧ v < 1 / 2 ∧ s < u ∧ s < v ∧ s < 1 := by
  obtain ⟨hu0, hv0, hub, hug, hev, hhv, hxu, hyv, hbx, hye⟩ := H.step3 hu hv
  refine ⟨by linarith [H.hb], by linarith [H.he], ?_, ?_, ?_⟩
  · nlinarith [mul_pos hu0 (by linarith [H.ha, H.hh] : (0 : ℝ) < 1 - (h - a))]
  · nlinarith [mul_pos hv0 (by linarith [H.hg, H.hf] : (0 : ℝ) < 1 - (f - g))]
  · nlinarith [H.t1, mul_pos H.hb (by linarith [H.ha, H.hh] : (0 : ℝ) < 1 - (h - a))]

end Steps

/-! ### The scalar argument (§§4-5) -/

/-- The symmetrization identity behind (10): with `p = (u+v)/2`,
`2 uv p R(p, s) = p² · uvΦ + (p² - uv)(6uvp² + 2s(1-s)p)`. -/
theorem symm_identity (s u v : ℝ) :
    2 * (u * v) * ((u + v) / 2) * scalarR ((u + v) / 2) s =
      ((u + v) / 2) ^ 2 * phiNum s u v + (((u + v) / 2) ^ 2 - u * v) *
        (6 * (u * v) * ((u + v) / 2) ^ 2 + 2 * s * (1 - s) * ((u + v) / 2)) := by
  unfold scalarR phiNum; ring

/-- `R(p, s₀) = (p - p₀) K(p)` with `4K(p) = 12p² - 15pp₀ - 10p - 15p₀² - 19p₀ + 6`. -/
theorem scalarR_s₀ (p : ℝ) :
    scalarR p ((2 - 9 * p₀) / 4) =
      (p - p₀) * ((12 * p ^ 2 - 15 * p * p₀ - 10 * p - 15 * p₀ ^ 2 - 19 * p₀ + 6) / 4) := by
  unfold scalarR; linear_combination (-3 * p₀ / 16 - 1 / 8) * p₀_quad

theorem K_pos {p : ℝ} (hpp : p ≤ p₀) :
    0 < (12 * p ^ 2 - 15 * p * p₀ - 10 * p - 15 * p₀ ^ 2 - 19 * p₀ + 6) / 4 := by
  have h1 := p₀_lt
  have h2 := p₀_gt
  nlinarith [mul_le_mul_of_nonneg_left hpp (by linarith : (0 : ℝ) ≤ p₀), sq_nonneg p, p₀_quad]

/-- `g(p) ≥ s₀` with `p < 1/2` forces `p ≤ p₀`. -/
theorem le_p₀_of_scalarG {p : ℝ} (hp : p < 1 / 2) (hg : (2 - 9 * p₀) / 4 ≤ scalarG p) :
    p ≤ p₀ := by
  unfold scalarG at hg
  by_contra hc; push Not at hc
  nlinarith [mul_pos (sub_pos.2 hc) (by linarith [p₀_lt] : (0 : ℝ) < 6 - 5 * (p + p₀)), p₀_quad]

theorem s₀_bounds : 0 < (2 - 9 * p₀) / 4 ∧ 0 < 1 - (2 - 9 * p₀) / 4 := by
  have := p₀_lt; have := p₀_gt
  constructor <;> linarith

/-- The two pieces of the symmetrization at `s = s₀`: `2uvp R(p, s₀) ≤ 0` and
`(p² - uv)(6uvp² + 2s₀(1-s₀)p) ≥ 0`, for `p = (u+v)/2 ≤ p₀`. -/
theorem scalar_pieces {u v : ℝ} (hu : 0 < u) (hv : 0 < v) (hpp : (u + v) / 2 ≤ p₀) :
    2 * (u * v) * ((u + v) / 2) * scalarR ((u + v) / 2) ((2 - 9 * p₀) / 4) ≤ 0 ∧
      0 < 6 * (u * v) * ((u + v) / 2) ^ 2 +
        2 * ((2 - 9 * p₀) / 4) * (1 - (2 - 9 * p₀) / 4) * ((u + v) / 2) ∧
      0 ≤ ((u + v) / 2) ^ 2 - u * v := by
  have hp0 : 0 < (u + v) / 2 := by positivity
  have hK := K_pos hpp
  obtain ⟨hs0, hs1⟩ := s₀_bounds
  refine ⟨?_, ?_, by nlinarith [sq_nonneg (u - v)]⟩
  · rw [scalarR_s₀]
    exact mul_nonpos_of_nonneg_of_nonpos (by positivity)
      (mul_nonpos_of_nonpos_of_nonneg (by linarith) hK.le)
  · have := mul_pos (mul_pos hu hv) (pow_pos hp0 2)
    have := mul_pos (mul_pos hs0 hs1) hp0
    nlinarith

/-- **The scalar key** (§§4-6 at `s = s₀`; also `GLOBAL_COMPLETION` (26)). For `0 < u, v < 1/2`
with (4) at `s₀`, `uvΦ(u, v) ≤ 0`, with equality only at `u = v = p₀`. -/
theorem scalar_key {u v : ℝ} (hu : 0 < u) (hv : 0 < v) (hu1 : u < 1 / 2) (hv1 : v < 1 / 2)
    (h18 : 2 * A₀ ≤ 1 - 3 * u - 3 * v + 5 * u * v) :
    phiNum (2 * A₀) u v ≤ 0 ∧ (phiNum (2 * A₀) u v = 0 → u = p₀ ∧ v = p₀) := by
  rw [two_A₀] at h18 ⊢
  have hp0 : 0 < (u + v) / 2 := by positivity
  have hP : u * v ≤ ((u + v) / 2) ^ 2 := by nlinarith [sq_nonneg (u - v)]
  have hpp : (u + v) / 2 ≤ p₀ :=
    le_p₀_of_scalarG (by linarith) (by unfold scalarG; linarith)
  obtain ⟨h1, hpos, h2⟩ := scalar_pieces hu hv hpp
  have hid := symm_identity ((2 - 9 * p₀) / 4) u v
  have h3 := mul_nonneg h2 hpos.le
  have hQ : phiNum ((2 - 9 * p₀) / 4) u v ≤ 0 := by
    by_contra hc; push Not at hc
    have := mul_pos (pow_pos hp0 2) hc
    linarith
  refine ⟨hQ, fun h0 => ?_⟩
  rw [h0, mul_zero, zero_add] at hid
  have h4 : 2 * (u * v) * ((u + v) / 2) * scalarR ((u + v) / 2) ((2 - 9 * p₀) / 4) = 0 :=
    le_antisymm h1 (hid ▸ h3)
  have hR0 : scalarR ((u + v) / 2) ((2 - 9 * p₀) / 4) = 0 := by
    rcases mul_eq_zero.1 h4 with h | h
    · exfalso; have : 0 < 2 * (u * v) * ((u + v) / 2) := by positivity
      linarith
    · exact h
  rw [scalarR_s₀] at hR0
  have hpe : (u + v) / 2 = p₀ := by
    rcases mul_eq_zero.1 hR0 with h | h
    · linarith
    · linarith [K_pos hpp]
  rw [h4] at hid
  have huv : ((u + v) / 2) ^ 2 - u * v = 0 := by
    rcases mul_eq_zero.1 hid.symm with h | h
    · exact h
    · linarith
  have : (u - v) ^ 2 = 0 := by linear_combination 4 * huv
  have huv' : u = v := by nlinarith [sq_nonneg (u - v)]
  constructor <;> linarith

/-! ### Part I: the proof steps as stated in the manuscript -/

/-- **Claim** (`HAND_PROOF:claim-(4)`). If all eleven doubled areas are at least `s > 0`, then with
`u = s/L`, `v = s/M` (`L = h-a`, `M = f-g`): `b, g ≥ u` and `e, h ≤ 1-v` (2); `x ≤ 1-2u` and
`y ≥ 2v` (3); and `s ≤ 1 - 3u - 3v + 5uv` (4), by a monotone chain from `U₃ ≥ s`.
`docs/proof/nine/HAND_PROOF.md`, lines 113-143. -/
theorem claim_4 {s a b c d e f g h x y u v : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare) (hs : 0 < s)
    (hall : ∀ i, s ≤ chamberSarea (baseConfig a b c d e f g h x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    u ≤ b ∧ u ≤ g ∧ e ≤ 1 - v ∧ h ≤ 1 - v ∧ x ≤ 1 - 2 * u ∧ 2 * v ≤ y ∧
      s ≤ 1 - 3 * u - 3 * v + 5 * u * v := by
  have H := Hyps.of_all hord hO hs hall
  have hu' : u * (h - a) = s := by rw [hu]; exact div_mul_cancel₀ _ (sub_pos.2 H.hah).ne'
  have hv' : v * (f - g) = s := by rw [hv]; exact div_mul_cancel₀ _ (sub_pos.2 H.hgf).ne'
  obtain ⟨-, -, h1, h2, h3, h4, h5, h6, -⟩ := H.step3 hu' hv'
  exact ⟨h1, h2, h3, h4, h5, h6, H.step4 hu' hv'⟩

/-- **Claim** (`HAND_PROOF:claim-(8)`). If all eleven doubled areas are at least `s > 0`, then with
`u = s/L`, `v = s/M`, the eliminations ABC+GCO (5) and DHO+DEF (6), added and combined with (3),
give (7), which is exactly (8): `6uv + (3s-4)(u+v) + 2s + 2 - s(1-s)(u+v)/(uv) ≥ 0`.
`docs/proof/nine/HAND_PROOF.md`, lines 145-214.
Uses: HAND_PROOF:claim-(4) -/
theorem claim_8 {s a b c d e f g h x y u v : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare) (hs : 0 < s)
    (hall : ∀ i, s ≤ chamberSarea (baseConfig a b c d e f g h x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    0 ≤ phi s u v := by
  have H := Hyps.of_all hord hO hs hall
  have hu' : u * (h - a) = s := by rw [hu]; exact div_mul_cancel₀ _ (sub_pos.2 H.hah).ne'
  have hv' : v * (f - g) = s := by rw [hv]; exact div_mul_cancel₀ _ (sub_pos.2 H.hgf).ne'
  obtain ⟨hu0, hv0, -⟩ := H.step3 hu' hv'
  rw [phi_eq s u v hu0.ne' hv0.ne']
  exact div_nonneg (H.step8 hu' hv') (by positivity)

/-- **Claim** (`HAND_PROOF:claim-(11)`). If all eleven doubled areas are at least `s > 0`, then
`0 < u, v < 1/2` and, for `p = (u+v)/2`: `0 < s ≤ p < 1/5`, `s ≤ g(p)` and `R(p, s) ≥ 0` (11)
(AM-GM in (4), and monotonicity of (8) in `uv`).
`docs/proof/nine/HAND_PROOF.md`, lines 216-251.
Uses: HAND_PROOF:claim-(4), HAND_PROOF:claim-(8) -/
theorem claim_11 {s a b c d e f g h x y u v : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare) (hs : 0 < s)
    (hall : ∀ i, s ≤ chamberSarea (baseConfig a b c d e f g h x y) i)
    (hu : u = s / (h - a)) (hv : v = s / (f - g)) :
    0 < u ∧ u < 1 / 2 ∧ 0 < v ∧ v < 1 / 2 ∧
      s ≤ (u + v) / 2 ∧ (u + v) / 2 < 1 / 5 ∧ s ≤ scalarG ((u + v) / 2) ∧
      0 ≤ scalarR ((u + v) / 2) s := by
  have H := Hyps.of_all hord hO hs hall
  have hu' : u * (h - a) = s := by rw [hu]; exact div_mul_cancel₀ _ (sub_pos.2 H.hah).ne'
  have hv' : v * (f - g) = s := by rw [hv]; exact div_mul_cancel₀ _ (sub_pos.2 H.hgf).ne'
  obtain ⟨hu0, hv0, -⟩ := H.step3 hu' hv'
  obtain ⟨hu1, hv1, hsu, hsv, hs1⟩ := H.scalar_bounds hu' hv'
  have h4 := H.step4 hu' hv'
  have h8 := H.step8 hu' hv'
  have hg : s ≤ scalarG ((u + v) / 2) := by
    unfold scalarG; nlinarith [sq_nonneg (u - v)]
  refine ⟨hu0, hu1, hv0, hv1, by linarith, ?_, hg, ?_⟩
  · unfold scalarG at hg
    by_contra hc; push Not at hc
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ (u + v) / 2 - 1 / 5)
      (by linarith : (0 : ℝ) ≤ 1 - (u + v) / 2)]
  · have hid := symm_identity s u v
    have hp0 : 0 < (u + v) / 2 := by positivity
    have h2 : 0 ≤ (((u + v) / 2) ^ 2 - u * v) *
        (6 * (u * v) * ((u + v) / 2) ^ 2 + 2 * s * (1 - s) * ((u + v) / 2)) :=
      mul_nonneg (by nlinarith [sq_nonneg (u - v)])
        (by have : 0 < 1 - s := by linarith
            positivity)
    have h1 : 0 ≤ 2 * (u * v) * ((u + v) / 2) * scalarR ((u + v) / 2) s := by
      rw [hid]; exact add_nonneg (mul_nonneg (by positivity) h8) h2
    by_contra hc; push Not at hc
    have : 0 < 2 * (u * v) * ((u + v) / 2) := by positivity
    nlinarith [mul_pos this (neg_pos.2 hc)]

/-- **Claim** (`HAND_PROOF:claim-scalar`). The scalar system (11), `0 < s ≤ p < 1/5`,
`s ≤ g(p)`, `R(p, s) ≥ 0`, implies `s ≤ s₀ = 2A₀`; and `s = s₀` forces `p = p₀`.
`docs/proof/nine/HAND_PROOF.md`, lines 253-292, 296. -/
theorem claim_scalar {p s : ℝ} (hs : 0 < s) (hsp : s ≤ p) (hp : p < 1 / 5)
    (hg : s ≤ scalarG p) (hR : 0 ≤ scalarR p s) :
    s ≤ 2 * A₀ ∧ (s = 2 * A₀ → p = p₀) := by
  rw [two_A₀]
  have h1 := p₀_lt
  have h2 := p₀_gt
  -- `R` decreases in `s` on `(0, 1/5)²`.
  have hRs : ∀ t, (2 - 9 * p₀) / 4 ≤ t → t < 1 / 5 →
      scalarR p t ≤ scalarR p ((2 - 9 * p₀) / 4) := by
    intro t ht ht'
    have : scalarR p t - scalarR p ((2 - 9 * p₀) / 4) =
        (t - (2 - 9 * p₀) / 4) * (3 * p ^ 2 + p + t + (2 - 9 * p₀) / 4 - 1) := by
      unfold scalarR; ring
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ t - (2 - 9 * p₀) / 4)
      (by nlinarith : (0 : ℝ) ≤ 1 - (3 * p ^ 2 + p + t + (2 - 9 * p₀) / 4))]
  have hcase : (2 - 9 * p₀) / 4 ≤ s → p = p₀ := by
    intro hs₀
    have hpp : p ≤ p₀ := le_p₀_of_scalarG (by linarith) (hs₀.trans hg)
    have hR' := (hR.trans (hRs s hs₀ (by linarith)))
    rw [scalarR_s₀] at hR'
    have hK := K_pos hpp
    by_contra hne
    have : p - p₀ < 0 := by rcases lt_or_gt_of_ne hne with h | h <;> linarith
    nlinarith [mul_pos (neg_pos.2 this) hK]
  refine ⟨?_, fun h => hcase h.ge⟩
  by_contra hc; push Not at hc
  have hpe := hcase hc.le
  have hg' : s ≤ scalarG p₀ := hpe ▸ hg
  unfold scalarG at hg'
  nlinarith [p₀_quad]

/-! ### Part I: the equality case and Theorem 1 -/

/-- The equality chain of §6: with `u = v = p₀` at `s = s₀`, the coordinates are forced. -/
theorem Hyps.equality {a b c d e f g h x y : ℝ} (H : Hyps ((2 - 9 * p₀) / 4) a b c d e f g h x y)
    (hu : p₀ * (h - a) = (2 - 9 * p₀) / 4) (hv : p₀ * (f - g) = (2 - 9 * p₀) / 4) :
    a = 4 * p₀ - 1 / 2 ∧ b = p₀ ∧ c = 1 - 3 * p₀ / 2 ∧ d = 3 * p₀ / 2 ∧ e = 1 - p₀ ∧
      f = 3 / 2 - 4 * p₀ ∧ g = p₀ ∧ h = 1 - p₀ ∧ x = 1 - 2 * p₀ ∧ y = 2 * p₀ := by
  have q := p₀_quad
  have h1 := p₀_lt
  have h2 := p₀_gt
  obtain ⟨-, -, hub, hug, hev, hhv, hxu, hyv, hbx, hye⟩ := H.step3 hu hv
  -- equality in the chain (4)
  have k1 : 0 ≤ (b - p₀) * (e - y) := mul_nonneg (by linarith) (by linarith)
  have k2 : 0 ≤ (1 - p₀ - e) * (x - p₀) := mul_nonneg (by linarith) (by linarith)
  have k3 : 0 ≤ (1 - p₀) * (1 - 2 * p₀ - x) := mul_nonneg (by linarith) (by linarith)
  have k4 : 0 ≤ (1 - p₀) * (y - 2 * p₀) := mul_nonneg (by linarith) (by linarith)
  have hsum : (b - p₀) * (e - y) + (1 - p₀ - e) * (x - p₀) + (1 - p₀) * (1 - 2 * p₀ - x) +
      (1 - p₀) * (y - 2 * p₀) ≤ 0 := by nlinarith [H.t9]
  have hb : b = p₀ := by
    have : (b - p₀) * (e - y) = 0 := by linarith
    rcases mul_eq_zero.1 this with h | h <;> linarith
  have he : e = 1 - p₀ := by
    have : (1 - p₀ - e) * (x - p₀) = 0 := by linarith
    rcases mul_eq_zero.1 this with h | h <;> linarith
  have hx : x = 1 - 2 * p₀ := by
    have : (1 - p₀) * (1 - 2 * p₀ - x) = 0 := by linarith
    rcases mul_eq_zero.1 this with h | h <;> linarith
  have hy : y = 2 * p₀ := by
    have : (1 - p₀) * (y - 2 * p₀) = 0 := by linarith
    rcases mul_eq_zero.1 this with h | h <;> linarith
  subst hb he hx hy
  -- `L = M = 3/2 - 5p₀`
  have hp₀ : p₀ ≠ 0 := by linarith
  have hL : h - a = 3 / 2 - 5 * p₀ :=
    mul_left_cancel₀ hp₀ (by linear_combination hu + (1 / 4 : ℝ) * q)
  have hM : f - g = 3 / 2 - 5 * p₀ :=
    mul_left_cancel₀ hp₀ (by linear_combination hv + (1 / 4 : ℝ) * q)
  -- `U₄ = s₀` and `U₁ = s₀`
  have hU4 : (1 - 2 * p₀) - c + (c - g) * (2 * p₀) = (2 - 9 * p₀) / 4 := by
    have := H.t10; have := H.t11
    nlinarith
  have hU1 : 2 * p₀ - a - (d - a) * (1 - 2 * p₀) = (2 - 9 * p₀) / 4 := by
    have := H.t7; have := H.t8
    nlinarith
  -- `g = p₀` and `a = 4p₀ - 1/2` from ABC
  have hcb : 0 < (c - p₀) * (1 - 2 * p₀) := mul_pos (by linarith [H.hbc]) (by linarith)
  have ha4 : a ≤ 4 * p₀ - 1 / 2 := by linarith
  have hchain : (1 - 2 * p₀) * ((2 - 9 * p₀) / 4) ≤
      (4 * p₀ - 1 / 2 - a) * -((c - p₀) * (1 - 2 * p₀)) +
      (4 * p₀ - 1 / 2) * (1 - 3 * p₀ - (2 - 9 * p₀) / 4) +
      (4 * p₀ - 1 / 2) * (2 * p₀) * -(g - p₀) := by
    nlinarith [H.t2]
  have hk5 : 0 ≤ (4 * p₀ - 1 / 2 - a) * ((c - p₀) * (1 - 2 * p₀)) :=
    mul_nonneg (by linarith) hcb.le
  have hk6 : 0 ≤ (4 * p₀ - 1 / 2) * (2 * p₀) * (g - p₀) :=
    mul_nonneg (by nlinarith) (by linarith)
  have hcl : (4 * p₀ - 1 / 2) * (1 - 3 * p₀ - (2 - 9 * p₀) / 4) =
      (1 - 2 * p₀) * ((2 - 9 * p₀) / 4) := by linear_combination (-3 / 8 : ℝ) * q
  have ha : a = 4 * p₀ - 1 / 2 := by
    have : (4 * p₀ - 1 / 2 - a) * ((c - p₀) * (1 - 2 * p₀)) = 0 := by linarith
    rcases mul_eq_zero.1 this with h | h <;> linarith
  have hg : g = p₀ := by
    have : (4 * p₀ - 1 / 2) * (2 * p₀) * (g - p₀) = 0 := by linarith
    rcases mul_eq_zero.1 this with h | h
    · exfalso; have : 0 < (4 * p₀ - 1 / 2) * (2 * p₀) := mul_pos (by linarith) (by linarith)
      linarith
    · linarith
  subst ha hg
  have hc : c = 1 - 3 * p₀ / 2 :=
    mul_left_cancel₀ (show (1 - 2 * p₀) ≠ 0 by linarith)
      (by linear_combination -hU4 + (-(1 / 4) : ℝ) * q)
  have hd : d = 3 * p₀ / 2 :=
    mul_left_cancel₀ (show (1 - 2 * p₀) ≠ 0 by linarith)
      (by linear_combination -hU1 - (1 / 4 : ℝ) * q)
  refine ⟨rfl, rfl, hc, hd, rfl, by linarith, rfl, by linarith, rfl, rfl⟩

/-- **Claim** (`HAND_PROOF:claim-equality`). If all eleven doubled areas are at least `s₀ = 2A₀`,
then `u = v = p₀`, and equality throughout the chain forces `a = 4p₀ - 1/2`, `b = p₀`,
`c = 1 - 3p₀/2`, `d = 3p₀/2`, `e = 1 - p₀`, `f = 3/2 - 4p₀`, `g = p₀`, `h = 1 - p₀`,
`x = 1 - 2p₀`, `y = 2p₀`.
`docs/proof/nine/HAND_PROOF.md`, lines 294-325.
Uses: HAND_PROOF:claim-(4), HAND_PROOF:claim-(8), HAND_PROOF:claim-(11), HAND_PROOF:claim-scalar -/
theorem claim_equality {a b c d e f g h x y : ℝ} (hord : SharpOrders a b c d e f g h)
    (hO : ((x, y) : Point) ∈ unitSquare)
    (hall : ∀ i, 2 * A₀ ≤ chamberSarea (baseConfig a b c d e f g h x y) i) :
    a = 4 * p₀ - 1 / 2 ∧ b = p₀ ∧ c = 1 - 3 * p₀ / 2 ∧ d = 3 * p₀ / 2 ∧ e = 1 - p₀ ∧
      f = 3 / 2 - 4 * p₀ ∧ g = p₀ ∧ h = 1 - p₀ ∧ x = 1 - 2 * p₀ ∧ y = 2 * p₀ := by
  have H := Hyps.of_all hord hO (by linarith [A₀_pos]) hall
  have hL := sub_pos.2 H.hah
  have hM := sub_pos.2 H.hgf
  have hu : 2 * A₀ / (h - a) * (h - a) = 2 * A₀ := div_mul_cancel₀ _ hL.ne'
  have hv : 2 * A₀ / (f - g) * (f - g) = 2 * A₀ := div_mul_cancel₀ _ hM.ne'
  obtain ⟨hu0, hv0, -⟩ := H.step3 hu hv
  obtain ⟨hu1, hv1, -⟩ := H.scalar_bounds hu hv
  obtain ⟨hQ, heq⟩ := scalar_key hu0 hv0 hu1 hv1 (H.step4 hu hv)
  obtain ⟨hue, hve⟩ := heq (le_antisymm hQ (H.step8 hu hv))
  rw [hue] at hu
  rw [hve] at hv
  rw [two_A₀] at hu hv H
  exact H.equality hu hv

/-- The eleven oriented doubled areas are positive throughout the family of Part I. -/
theorem chamberSarea_pos {a b c d e f g h x y : ℝ} (hord : SharpOrders a b c d e f g h)
    (hU1 : 0 < y - a - (d - a) * x) (hU2 : 0 < h - y - (h - d) * x)
    (hU3 : 0 < e * (x - b) - (1 - b) * y) (hU4 : 0 < x - c + (c - g) * y)
    (hU5 : 0 < c - x + (f - c) * y) (i : Fin 11) :
    0 < chamberSarea (baseConfig a b c d e f g h x y) i := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hord
  rw [claim_doubled_areas]
  fin_cases i <;> simp only [Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val] <;>
    first
    | assumption
    | exact mul_pos (by linarith) (by linarith)

/-- The triangles of the chamber have three distinct vertices. -/
theorem chamberTriangles_ne (i : Fin 11) :
    (chamberTriangles i).1 ≠ (chamberTriangles i).2.1 ∧
      (chamberTriangles i).2.1 ≠ (chamberTriangles i).2.2 ∧
      (chamberTriangles i).1 ≠ (chamberTriangles i).2.2 := by
  fin_cases i <;> decide

theorem chamberArea_eq (P : Fin 9 → Point) (i : Fin 11) :
    chamberArea P i = |chamberSarea P i| / 2 := rfl

theorem minTriangleArea_le_chamberArea (P : Fin 9 → Point) (i : Fin 11) :
    minTriangleArea P ≤ chamberArea P i := by
  obtain ⟨h1, h2, h3⟩ := chamberTriangles_ne i
  exact minTriangleArea_le P h1 h2 h3

/-- The triangle `ABC` of the construction has area exactly `A₀`. -/
theorem chamberArea_optimal_one : chamberArea optimalConfiguration 1 = A₀ := by
  have h : chamberSarea optimalConfiguration 1 = 2 * A₀ := by
    rw [two_A₀]
    simp only [chamberSarea, chamberTriangles, optimalConfiguration, sarea, Matrix.cons_val]
    linear_combination (-1 / 2 : ℝ) * p₀_quad
  rw [chamberArea_eq, h, abs_of_pos (by linarith [A₀_pos])]; ring

/-- **Theorem 1** (`HAND_PROOF:Theorem1`). In the family of Part I (strict orders, `O` in the
square, `U₁, …, U₅ > 0`), the least of the eleven chamber areas is at most `A₀`, hence so is the
least of all 84 triangle areas. If all eleven are at least `A₀`, the configuration is exactly the
construction. No symmetry or coincidence of boundary coordinates is assumed.
`docs/proof/nine/HAND_PROOF.md`, lines 72-92 (proof 94-325).
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
  have hpos := chamberSarea_pos hord hU1 hU2 hU3 hU4 hU5
  have hsarea : ∀ i, chamberArea (baseConfig a b c d e f g h x y) i =
      chamberSarea (baseConfig a b c d e f g h x y) i / 2 := fun i => by
    rw [chamberArea_eq, abs_of_pos (hpos i)]
  -- the equality case
  have heq : (∀ i, A₀ ≤ chamberArea (baseConfig a b c d e f g h x y) i) →
      a = 4 * p₀ - 1 / 2 ∧ b = p₀ ∧ c = 1 - 3 * p₀ / 2 ∧ d = 3 * p₀ / 2 ∧ e = 1 - p₀ ∧
        f = 3 / 2 - 4 * p₀ ∧ g = p₀ ∧ h = 1 - p₀ ∧ x = 1 - 2 * p₀ ∧ y = 2 * p₀ := by
    intro hall
    refine claim_equality hord hO fun i => ?_
    have := hall i
    rw [hsarea] at this
    linarith
  have hexists : ∃ i, chamberArea (baseConfig a b c d e f g h x y) i ≤ A₀ := by
    by_contra hc
    push Not at hc
    obtain ⟨ha, hb, hc', -, -, -, -, -, -, -⟩ := heq fun i => (hc i).le
    have h1 := hc 1
    rw [hsarea, claim_doubled_areas] at h1
    simp only [Matrix.cons_val] at h1
    rw [ha, hb, hc'] at h1
    have : (4 * p₀ - 1 / 2) * (1 - 3 * p₀ / 2 - p₀) = 2 * A₀ := by
      rw [two_A₀]; linear_combination (-1 / 2 : ℝ) * p₀_quad
    linarith
  refine ⟨hexists, ?_, fun hall => ?_⟩
  · obtain ⟨i, hi⟩ := hexists
    exact (minTriangleArea_le_chamberArea _ i).trans hi
  · obtain ⟨ha, hb, hc, hd, he, hf, hg, hh, hx, hy⟩ := heq hall
    subst ha hb hc hd he hf hg hh hx hy
    rfl

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

/-! #### Expansion of the signed areas -/

/-- The exact expansion of a doubled signed area: constant, linear and quadratic parts. -/
theorem sarea_add (p q r dp dq dr : Point) :
    sarea (p + dp) (q + dq) (r + dr) =
      sarea p q r + sareaDeriv p q r dp dq dr + sarea dp dq dr := by
  simp only [sarea, sareaDeriv, Prod.fst_add, Prod.snd_add]; ring

/-- Each of the eleven chamber triangles of the construction has doubled area exactly `2A₀`. -/
theorem chamberSarea_optimal (i : Fin 11) : chamberSarea optimalConfiguration i = 2 * A₀ := by
  rw [two_A₀]
  fin_cases i <;> simp [chamberSarea, chamberTriangles, optimalConfiguration, sarea] <;>
    first
    | linear_combination (-1 / 4 : ℝ) * p₀_quad
    | linear_combination (-1 / 2 : ℝ) * p₀_quad
    | linear_combination (1 / 4 : ℝ) * p₀_quad

/-- Every coordinate of `d` is at most `‖d‖` in absolute value (the sup norm). -/
theorem coord_le (d : Fin 9 → Point) (k : Fin 9) : |(d k).1| ≤ ‖d‖ ∧ |(d k).2| ≤ ‖d‖ := by
  have h := norm_le_pi_norm d k
  refine ⟨?_, ?_⟩
  · rw [← Real.norm_eq_abs]; exact (norm_fst_le (d k)).trans h
  · rw [← Real.norm_eq_abs]; exact (norm_snd_le (d k)).trans h

theorem abs_mul_le_of {A B s t : ℝ} (hA : |A| ≤ s) (hB : |B| ≤ t) : |A * B| ≤ s * t := by
  rw [abs_mul]; exact mul_le_mul hA hB (abs_nonneg _) ((abs_nonneg _).trans hA)

theorem abs_sub_le_two {A B t : ℝ} (hA : |A| ≤ t) (hB : |B| ≤ t) : |A - B| ≤ 2 * t := by
  rw [abs_le] at *; constructor <;> linarith

theorem abs_sub_le_one {A B : ℝ} (hA : 0 ≤ A ∧ A ≤ 1) (hB : 0 ≤ B ∧ B ≤ 1) : |A - B| ≤ 1 := by
  rw [abs_le]; constructor <;> linarith

theorem optimal_mem (k : Fin 9) :
    (0 ≤ (optimalConfiguration k).1 ∧ (optimalConfiguration k).1 ≤ 1) ∧
      (0 ≤ (optimalConfiguration k).2 ∧ (optimalConfiguration k).2 ≤ 1) := by
  have h1 := p₀_gt
  have h2 := p₀_lt
  refine ⟨⟨?_, ?_⟩, ?_, ?_⟩ <;> fin_cases k <;> simp [optimalConfiguration] <;> linarith

/-- `|J_T d| ≤ 4‖d‖`. -/
theorem chamberGrad_abs_le (i : Fin 11) (d : Fin 9 → Point) : |chamberGrad i d| ≤ 4 * ‖d‖ := by
  set t := ‖d‖
  simp only [chamberGrad]
  generalize chamberTriangles i = T
  obtain ⟨p, q, r⟩ := T
  have hp := optimal_mem p
  have hq := optimal_mem q
  have hr := optimal_mem r
  have dp := coord_le d p
  have dq := coord_le d q
  have dr := coord_le d r
  have e1 := abs_mul_le_of (abs_sub_le_two dq.1 dp.1) (abs_sub_le_one hr.2 hp.2)
  have e2 := abs_mul_le_of (abs_sub_le_one hq.1 hp.1) (abs_sub_le_two dr.2 dp.2)
  have e3 := abs_mul_le_of (abs_sub_le_two dq.2 dp.2) (abs_sub_le_one hr.1 hp.1)
  have e4 := abs_mul_le_of (abs_sub_le_one hq.2 hp.2) (abs_sub_le_two dr.1 dp.1)
  simp only [sareaDeriv]
  rw [abs_le] at *
  constructor <;> linarith [e1.1, e1.2, e2.1, e2.2, e3.1, e3.2, e4.1, e4.2]

/-- **Claim** (`HAND_PROOF:claim-expansion`, made up; constant weakened from `2` to `4`). Exact
quadratic expansion. Each of the eleven signed areas is `A₀` at the construction and satisfies
`f_T(P* + d) = A₀ + J_T d + q_T(d)` with `|q_T(d)| ≤ 4‖d‖∞²`: the remainder is half the doubled
signed area of the triangle of displacements, whose coordinate differences are at most `2‖d‖∞`.
(The manuscript's sharper `2‖d‖∞²` is not needed.)
`docs/proof/nine/HAND_PROOF.md`, lines 471-479. -/
theorem claim_expansion (d : Fin 9 → Point) (i : Fin 11) :
    |chamberSarea (optimalConfiguration + d) i / 2 - A₀ - chamberGrad i d| ≤ 4 * ‖d‖ ^ 2 := by
  have key : chamberSarea (optimalConfiguration + d) i / 2 - A₀ - chamberGrad i d =
      sarea (d (chamberTriangles i).1) (d (chamberTriangles i).2.1)
        (d (chamberTriangles i).2.2) / 2 := by
    have h0 := chamberSarea_optimal i
    simp only [chamberSarea, Pi.add_apply, sarea_add, chamberGrad] at h0 ⊢
    rw [h0]; ring
  rw [key]
  set t := ‖d‖
  generalize chamberTriangles i = T
  obtain ⟨p, q, r⟩ := T
  have dp := coord_le d p
  have dq := coord_le d q
  have dr := coord_le d r
  have e1 := abs_mul_le_of (abs_sub_le_two dq.1 dp.1) (abs_sub_le_two dr.2 dp.2)
  have e2 := abs_mul_le_of (abs_sub_le_two dq.2 dp.2) (abs_sub_le_two dr.1 dp.1)
  simp only [sarea]
  rw [abs_le] at *
  constructor <;> nlinarith [e1.1, e1.2, e2.1, e2.2]

/-! #### The stress and the kernel -/

theorem sum_fin11 (F : Fin 11 → ℝ) :
    ∑ i, F i = F 0 + F 1 + F 2 + F 3 + F 4 + F 5 + F 6 + F 7 + F 8 + F 9 + F 10 := by
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero]
  simp only [Fin.succ_zero_eq_one, Fin.succ_one_eq_two]
  ring_nf
  rfl

/-- **Claim** (`HAND_PROOF:claim-stress`). The explicit positive stress (13). All eleven triangle
weights and all eight normal weights are positive (`173/1000 < p₀ < 347/2000`), and for every
displacement `d`, `Σ_T λ_T J_T d + Σ_V μ_V n_V·d = 0`. Each residual component is a multiple of
`20p₀² - 15p₀ + 2 = 0`.
`docs/proof/nine/HAND_PROOF.md`, lines 345-408. -/
theorem claim_stress :
    (∀ i, 0 < stressWeight i) ∧ (∀ V, 0 < normalWeight V) ∧
      ∀ d : Fin 9 → Point,
        ∑ i, stressWeight i * chamberGrad i d + ∑ V, normalWeight V * normalComp V d = 0 := by
  have h1 := p₀_gt
  have h2 := p₀_lt
  refine ⟨fun i => ?_, fun V => ?_, fun d => ?_⟩
  · fin_cases i <;> simp [stressWeight] <;> linarith
  · fin_cases V <;> simp [normalWeight] <;> linarith
  · rw [sum_fin11, Fin.sum_univ_eight]
    simp [stressWeight, normalWeight, chamberGrad, sareaDeriv, chamberTriangles,
      optimalConfiguration, normalComp, inwardNormal]
    linear_combination (137 / 8 * (d 0).1 + 67 / 7 * (d 1).1 - 3 / 2 * (d 2).1 + 37 * (d 3).1 -
      50 * (d 4).1 - 1 / 4 * (d 5).1 - 15 / 14 * (d 6).1 + 203 / 4 * (d 7).1 -
      493 / 8 * (d 8).1 + 1 / 4 * (d 0).2 + 50 * (d 1).2 - 37 * (d 2).2 + 3 / 2 * (d 3).2 -
      67 / 7 * (d 4).2 - 137 / 8 * (d 5).2 - 203 / 4 * (d 6).2 + 15 / 14 * (d 7).2 +
      493 / 8 * (d 8).2) * p₀_quad

/-- The linear elimination (14) of §8 for the ten tangential displacements
`a, b, c, d, e, f, g, h, x, y` (of `A, B, C, D, E, F, G, H` along their sides and of `O`), given
that all eleven doubled-area derivatives vanish. -/
theorem kernel_algebra {a b c dd e f g h x y : ℝ}
    (E1 : (3 / 2 - 5 * p₀) * b - p₀ * a + p₀ * h = 0)
    (E2 : (1 / 2 - 4 * p₀) * b + (4 * p₀ - 1 / 2) * c + (1 - 5 * p₀ / 2) * a = 0)
    (E3 : (3 / 2 - 5 * p₀) * g - p₀ * a + p₀ * h = 0)
    (E4 : (5 * p₀ / 2 - 1) * f + (1 / 2 - 4 * p₀) * dd + (4 * p₀ - 1 / 2) * e = 0)
    (E5 : p₀ * f - p₀ * g + (5 * p₀ - 3 / 2) * h = 0)
    (E6 : p₀ * f - p₀ * g + (5 * p₀ - 3 / 2) * e = 0)
    (E7 : (5 * p₀ / 2 - 1 / 2) * x - 2 * p₀ * a + (2 * p₀ - 1) * dd + y = 0)
    (E8 : (5 * p₀ / 2 - 1) * x + (1 - 2 * p₀) * dd + 2 * p₀ * h - y = 0)
    (E9 : (3 * p₀ - 1) * b + (1 - p₀) * x + (1 - 3 * p₀) * e + (p₀ - 1) * y = 0)
    (E10 : (2 * p₀ - 1) * c - 2 * p₀ * g + x + (1 - 5 * p₀ / 2) * y = 0)
    (E11 : (1 - 2 * p₀) * c + 2 * p₀ * f - x + (1 / 2 - 5 * p₀ / 2) * y = 0) :
    a = 0 ∧ b = 0 ∧ c = 0 ∧ dd = 0 ∧ e = 0 ∧ f = 0 ∧ g = 0 ∧ h = 0 ∧ x = 0 ∧ y = 0 := by
  have h1 := p₀_gt
  have h2 := p₀_lt
  have cancel : ∀ {k t : ℝ}, k ≠ 0 → k * t = 0 → t = 0 := fun hk h =>
    (mul_eq_zero.1 h).resolve_left hk
  have hL : (3 / 2 - 5 * p₀) ≠ 0 := by intro h; linarith
  have hL' : (5 * p₀ - 3 / 2) ≠ 0 := by intro h; linarith
  have hg : g = b := by
    have := cancel hL (show (3 / 2 - 5 * p₀) * (b - g) = 0 by linear_combination E1 - E3)
    linarith
  have he : e = h := by
    have := cancel hL' (show (5 * p₀ - 3 / 2) * (h - e) = 0 by linear_combination E5 - E6)
    linarith
  have hx : x = -2 * b := by
    have := cancel hL' (show (5 * p₀ - 3 / 2) * (x + 2 * b) = 0 by
      linear_combination E7 + E8 - 2 * E1)
    linarith
  have hy : y = -2 * h := by
    have := cancel hL (show (3 / 2 - 5 * p₀) * (y + 2 * h) = 0 by
      linear_combination E10 + E11 - 2 * E5)
    linarith
  subst g e x y
  have hb : h = b := by
    have := cancel (show (5 * p₀ - 3) ≠ 0 by intro h; linarith)
      (show (5 * p₀ - 3) * (b - h) = 0 by linear_combination E9)
    linarith
  subst h
  have hb0 : b = 0 := by
    refine cancel (show 3 * (4 * p₀ ^ 2 - 11 * p₀ + 2) / 4 ≠ 0 by intro h; nlinarith) ?_
    linear_combination p₀ * (4 * p₀ - 1 / 2) * E7 + (-8 * p₀ ^ 2 + p₀) * E1 +
      (2 * p₀ ^ 2 - p₀) * E4 + (-5 * p₀ ^ 2 + 9 * p₀ / 2 - 1) * E5
  subst b
  have hp : p₀ ≠ 0 := by intro h; linarith
  have ha : a = 0 := cancel hp (by linear_combination -E1)
  have hf : f = 0 := cancel hp (by linear_combination E5)
  subst a f
  have hc : c = 0 := cancel (show 4 * p₀ - 1 / 2 ≠ 0 by intro h; linarith)
    (by linear_combination E2)
  have hd : dd = 0 := cancel (show 1 / 2 - 4 * p₀ ≠ 0 by intro h; linarith)
    (by linear_combination E4)
  exact ⟨rfl, rfl, hc, hd, rfl, rfl, rfl, rfl, by ring, by ring⟩

/-- **Claim** (`HAND_PROOF:claim-kernel`). The only zero first-order motion is zero. If `d` is
feasible (`n_V·d ≥ 0` for the eight active side constraints) and `J_T d ≥ 0` for all eleven
chamber triangles, then `d = 0`. By (13) all these quantities vanish, and the linear elimination
(14) and the `BOE` and `ADO` equations force the ten tangential displacements to vanish.
`docs/proof/nine/HAND_PROOF.md`, lines 410-452.
Uses: HAND_PROOF:claim-stress -/
theorem claim_kernel (d : Fin 9 → Point) (hfeas : ∀ V, 0 ≤ normalComp V d)
    (hJ : ∀ i, 0 ≤ chamberGrad i d) : d = 0 := by
  obtain ⟨hl, hm, hs⟩ := claim_stress
  have hsum := hs d
  have hA : 0 ≤ ∑ i, stressWeight i * chamberGrad i d :=
    Finset.sum_nonneg fun i _ => mul_nonneg (hl i).le (hJ i)
  have hB : 0 ≤ ∑ V, normalWeight V * normalComp V d :=
    Finset.sum_nonneg fun V _ => mul_nonneg (hm V).le (hfeas V)
  have hA0 := (Finset.sum_eq_zero_iff_of_nonneg fun i _ => mul_nonneg (hl i).le (hJ i)).1
    (by linarith)
  have hB0 := (Finset.sum_eq_zero_iff_of_nonneg fun V _ => mul_nonneg (hm V).le (hfeas V)).1
    (by linarith)
  have hJ0 : ∀ i, chamberGrad i d = 0 := fun i =>
    (mul_eq_zero.1 (hA0 i (Finset.mem_univ i))).resolve_left (hl i).ne'
  have hN0 : ∀ V, normalComp V d = 0 := fun V =>
    (mul_eq_zero.1 (hB0 V (Finset.mem_univ V))).resolve_left (hm V).ne'
  have n0 := hN0 0
  have n1 := hN0 1
  have n2 := hN0 2
  have n3 := hN0 3
  have n4 := hN0 4
  have n5 := hN0 5
  have n6 := hN0 6
  have n7 := hN0 7
  simp [normalComp, inwardNormal] at n0 n1 n2 n3 n4 n5 n6 n7
  have j := fun i => hJ0 i
  have j0 := j 0
  have j1 := j 1
  have j2 := j 2
  have j3 := j 3
  have j4 := j 4
  have j5 := j 5
  have j6 := j 6
  have j7 := j 7
  have j8 := j 8
  have j9 := j 9
  have j10 := j 10
  simp only [chamberGrad, sareaDeriv, chamberTriangles, optimalConfiguration, Matrix.cons_val,
    n0, n1, n2, n3, n4, n5, n6, n7] at j0 j1 j2 j3 j4 j5 j6 j7 j8 j9 j10
  obtain ⟨ha, hb, hc, hd, he, hf, hg, hh, hx, hy⟩ := kernel_algebra
    (a := (d 0).2) (b := (d 1).1) (c := (d 2).1) (dd := (d 3).2) (e := (d 4).2) (f := (d 5).1)
    (g := (d 6).1) (h := (d 7).2) (x := (d 8).1) (y := (d 8).2)
    (by linear_combination 2 * j0) (by linear_combination 2 * j1) (by linear_combination 2 * j2)
    (by linear_combination 2 * j3) (by linear_combination 2 * j4) (by linear_combination 2 * j5)
    (by linear_combination 2 * j6) (by linear_combination 2 * j7) (by linear_combination 2 * j8)
    (by linear_combination 2 * j9) (by linear_combination 2 * j10)
  funext k
  fin_cases k <;> refine Prod.ext ?_ ?_ <;> simp <;> assumption

/-! #### First-order separation -/

theorem chamberGrad_smul (i : Fin 11) (t : ℝ) (d : Fin 9 → Point) :
    chamberGrad i (t • d) = t * chamberGrad i d := by
  simp only [chamberGrad, sareaDeriv, Pi.smul_apply, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
  ring

theorem normalComp_smul (V : Fin 8) (t : ℝ) (d : Fin 9 → Point) :
    normalComp V (t • d) = t * normalComp V d := by
  simp only [normalComp, Pi.smul_apply, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
  ring

theorem continuous_chamberGrad (i : Fin 11) : Continuous (chamberGrad i) := by
  unfold chamberGrad sareaDeriv; fun_prop

theorem continuous_normalComp (V : Fin 8) : Continuous (normalComp V) := by
  unfold normalComp; fun_prop

/-- **Claim** (`HAND_PROOF:claim-compactness`). First-order separation. There is `κ > 0` such
that every feasible direction `d` has a chamber triangle with `J_T d ≤ -κ‖d‖∞`. This follows by
compactness of the feasible cone intersected with the unit sphere.
`docs/proof/nine/HAND_PROOF.md`, lines 454-469.
Uses: HAND_PROOF:claim-kernel -/
theorem claim_compactness :
    ∃ κ > 0, ∀ d : Fin 9 → Point, (∀ V, 0 ≤ normalComp V d) →
      ∃ i, chamberGrad i d ≤ -κ * ‖d‖ := by
  let K : Set (Fin 9 → Point) := Metric.sphere 0 1 ∩ {d | ∀ V, 0 ≤ normalComp V d}
  have hKc : IsCompact K := by
    refine (isCompact_sphere 0 1).inter_right ?_
    simp only [Set.ofPred_forall]
    exact isClosed_iInter fun V => isClosed_le continuous_const (continuous_normalComp V)
  let F : (Fin 9 → Point) → ℝ := fun d =>
    Finset.univ.inf' Finset.univ_nonempty fun i => chamberGrad i d
  have hF : Continuous F := Continuous.finset_inf'_apply _ fun i _ => continuous_chamberGrad i
  have key : ∀ κ > 0, (∀ d ∈ K, F d ≤ -κ) → ∀ d : Fin 9 → Point,
      (∀ V, 0 ≤ normalComp V d) → ∃ i, chamberGrad i d ≤ -κ * ‖d‖ := by
    intro κ hκ hK d hd
    rcases eq_or_ne d 0 with rfl | hne
    · refine ⟨0, ?_⟩
      have := chamberGrad_smul 0 0 0
      rw [zero_smul, zero_mul] at this
      rw [this, norm_zero, mul_zero]
    · have hn : 0 < ‖d‖ := norm_pos_iff.2 hne
      have hmem : ‖d‖⁻¹ • d ∈ K := by
        refine ⟨?_, fun V => ?_⟩
        · rw [mem_sphere_zero_iff_norm, norm_smul, norm_inv, norm_norm, inv_mul_cancel₀ hn.ne']
        · rw [normalComp_smul]; exact mul_nonneg (inv_nonneg.2 hn.le) (hd V)
      obtain ⟨i, -, hi⟩ := Finset.exists_mem_eq_inf' Finset.univ_nonempty
        fun i => chamberGrad i (‖d‖⁻¹ • d)
      refine ⟨i, ?_⟩
      have h1 := hK _ hmem
      simp only [F] at h1
      rw [hi, chamberGrad_smul] at h1
      have h2 := mul_le_mul_of_nonneg_left h1 hn.le
      rw [← mul_assoc, mul_inv_cancel₀ hn.ne', one_mul] at h2
      linarith
  by_cases hne : K.Nonempty
  · obtain ⟨d₀, hd₀, hmax⟩ := hKc.exists_isMaxOn hne hF.continuousOn
    have hneg : F d₀ < 0 := by
      by_contra hc
      push Not at hc
      have hJ : ∀ i, 0 ≤ chamberGrad i d₀ := fun i =>
        hc.trans (Finset.inf'_le _ (Finset.mem_univ i))
      have h0 := claim_kernel d₀ hd₀.2 hJ
      have h1 : ‖d₀‖ = 1 := mem_sphere_zero_iff_norm.1 hd₀.1
      rw [h0, norm_zero] at h1
      exact zero_ne_one h1
    exact ⟨-F d₀, by linarith, key _ (by linarith) fun d hd => by
      rw [neg_neg]; exact isMaxOn_iff.1 hmax d hd⟩
  · exact ⟨1, one_pos, key 1 one_pos fun d hd => absurd ⟨d, hd⟩ hne⟩

/-- A configuration in the square is a feasible displacement of the construction. -/
theorem normalComp_nonneg {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare) (V : Fin 8) :
    0 ≤ normalComp V (P - optimalConfiguration) := by
  have hsq : ∀ k, 0 ≤ (P k).1 ∧ (P k).1 ≤ 1 ∧ 0 ≤ (P k).2 ∧ (P k).2 ≤ 1 := fun k => hP k
  fin_cases V <;> simp [normalComp, inwardNormal, optimalConfiguration] <;>
    linarith [(hsq 0).1, (hsq 1).2.2.1, (hsq 2).2.2.1, (hsq 3).2.1, (hsq 4).2.1, (hsq 5).2.2.2,
      (hsq 6).2.2.2, (hsq 7).1]

/-- **Theorem 2** (`HAND_PROOF:Theorem2`). Unrestricted strict local optimality. There are
`ε, c > 0` such that every labelled configuration `P` in the square with
`h = ‖P - P*‖∞ ≤ ε` (all eighteen coordinates, `P i` matched to `P* i`) satisfies
`minTriangleArea P ≤ A₀ - c·h`. Boundary points may move into the open square, and no family or
orientation hypothesis is imposed on `P`.
`docs/proof/nine/HAND_PROOF.md`, lines 327-343 (proof 345-489).
Uses: HAND_PROOF:claim-stress, HAND_PROOF:claim-kernel, HAND_PROOF:claim-compactness,
HAND_PROOF:claim-expansion -/
theorem theorem2 : ∃ ε > 0, ∃ c > 0, ∀ P : Fin 9 → Point, (∀ i, P i ∈ unitSquare) →
    dist P optimalConfiguration ≤ ε →
      minTriangleArea P ≤ A₀ - c * dist P optimalConfiguration := by
  obtain ⟨κ, hκ, hcomp⟩ := claim_compactness
  refine ⟨min (κ / 8) (1 / 100), by positivity, κ / 2, by positivity, fun P hP hdist => ?_⟩
  rw [dist_eq_norm] at hdist ⊢
  obtain ⟨i, hi⟩ := hcomp _ (normalComp_nonneg hP)
  have hexp := claim_expansion (P - optimalConfiguration) i
  rw [add_sub_cancel] at hexp
  have hJ := chamberGrad_abs_le i (P - optimalConfiguration)
  set t := ‖P - optimalConfiguration‖
  have hh1 : t ≤ κ / 8 := hdist.trans (min_le_left _ _)
  have hh2 : t ≤ 1 / 100 := hdist.trans (min_le_right _ _)
  have hA := A₀_bounds.1
  have ht0 : 0 ≤ t := norm_nonneg _
  rw [abs_le] at hexp hJ
  have hup : chamberSarea P i / 2 ≤ A₀ - κ / 2 * t := by
    nlinarith [mul_le_mul_of_nonneg_left hh1 (by positivity : (0 : ℝ) ≤ 4 * t)]
  have hpos : 0 < chamberSarea P i := by nlinarith
  calc minTriangleArea P ≤ chamberArea P i := minTriangleArea_le_chamberArea P i
    _ = chamberSarea P i / 2 := by rw [chamberArea_eq, abs_of_pos hpos]
    _ ≤ A₀ - κ / 2 * t := hup

end Heilbronn.Nine.HandProof
