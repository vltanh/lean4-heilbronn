module

public import Heilbronn.Nine.Sharp.BCMoving

/-! # The sharp chamber with B and E both moving inward (`docs/proof/nine/SHARP_B_E_MOVING.md`)

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

The proofs go through `Data`, the hypotheses and the eleven bounds as plain real inequalities
(with a general threshold `s`). The two coefficient bounds (11) are one lemma, `coeff_bound`,
applied twice with the roles of `(u, v, α, β, x, 1-y, c, 1-d)` exchanged.

Implicit in the manuscript: the claims inside the proof are stated under the proof's standing
assumption "all eleven displayed doubled areas are at least `s`" (which implies the chamber).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SharpBEMoving

open Heilbronn.Nine.SharpBCMoving

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

/-- **Claim** (`SHARP_B_E_MOVING:eq4`). For `p ≠ 0`,
`p{Φ(p,p) + λ(F₀(p,p) - s)} = (6+5λ)(p-p₀)²(p-q₀)` with `q₀ = (16257+1889√65)/36104 > 1/2`.
`docs/proof/nine/SHARP_B_E_MOVING.md`, lines 94-107. -/
theorem eq4 {p : ℝ} (hp : p ≠ 0) :
    p * (sharpPhi sharpS p p + sharpLambda * (sharpG p p - sharpS)) =
        (6 + 5 * sharpLambda) * (p - p₀) ^ 2 * (p - q₀) ∧ 1 / 2 < q₀ := by
  refine ⟨?_, half_lt_sharpQ0⟩
  rw [show q₀ = sharpQ0 from rfl, ← sharp_cubic p]
  unfold sharpPhi sharpG
  field_simp
  ring

/-- **Claim** (`SHARP_B_E_MOVING:claim-scalar`). Equation (3): for `0 < u, v < 1/2`,
`Φ(u,v) + λ(F₀(u,v) - s) ≤ 0`, and equality forces `u = v = p₀`.
`docs/proof/nine/SHARP_B_E_MOVING.md`, lines 55-107. -/
theorem claim_scalar {u v : ℝ} (hu : 0 < u) (hu2 : u < 1 / 2) (hv : 0 < v) (hv2 : v < 1 / 2) :
    sharpPhi sharpS u v + sharpLambda * (sharpG u v - sharpS) ≤ 0 ∧
      (sharpPhi sharpS u v + sharpLambda * (sharpG u v - sharpS) = 0 → u = p₀ ∧ v = p₀) :=
  phi_scalar hu hv (by linarith)

/-- **Claim** (`SHARP_B_E_MOVING:claim-chamber-formulas`). The eleven oriented doubled areas, with
`L = h-a`, `M = f-g`: `ABH = bL`, `ABC = a(c-b)-cε`, `AGH = gL`, `DEF = (1-f)(e-d)-η(1-d)`,
`GHF = M(1-h)`, `GEF = M(1-e)`, `ADO = y-a-(d-a)x`, `DHO = h-y-(h-d)x`,
`BOE = (e-ε)(x-b)-(1-η-b)(y-ε)`, `GCO = x-c+(c-g)y`, `OCF = c-x+(f-c)y`.
`docs/proof/nine/SHARP_B_E_MOVING.md`, lines 20-37. -/
theorem claim_chamber_formulas (a b c d e f g h ε η x y : ℝ) :
    chamberSarea (beMovingConfig a b c d e f g h ε η x y) =
      ![b * (h - a), a * (c - b) - c * ε, g * (h - a), (1 - f) * (e - d) - η * (1 - d),
        (f - g) * (1 - h), (f - g) * (1 - e), y - a - (d - a) * x, h - y - (h - d) * x,
        (e - ε) * (x - b) - (1 - η - b) * (y - ε), x - c + (c - g) * y,
        c - x + (f - c) * y] := by
  funext i
  fin_cases i <;>
    simp only [chamberSarea, chamberTriangles, beMovingConfig, sharpConfig, sarea,
      Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Matrix.cons_val] <;> ring

/-! ### The plain-real form -/

/-- The hypotheses (1) and the eleven bounds "doubled area `≥ s`", as plain real inequalities. -/
structure Data (s a b c d e f g h ε η x y : ℝ) : Prop where
  hs1 : 7 / 64 < s
  hs2 : s < 11 / 100
  ha : 0 < a
  hah : a < h
  hh1 : h < 1
  hb : 0 < b
  hbc : b < c
  hcf : c ≤ f
  hf1 : f < 1
  hg : 0 < g
  hgf : g < f
  had : a ≤ d
  hde : d < e
  he1 : e < 1
  hε0 : 0 ≤ ε
  hεa : ε ≤ a
  hη0 : 0 ≤ η
  hηf : η ≤ 1 - f
  hx0 : 0 ≤ x
  hx1 : x ≤ 1
  hy0 : 0 ≤ y
  hy1 : y ≤ 1
  h0 : s ≤ b * (h - a)
  h1 : s ≤ a * (c - b) - c * ε
  h2 : s ≤ g * (h - a)
  h3 : s ≤ (1 - f) * (e - d) - η * (1 - d)
  h4 : s ≤ (f - g) * (1 - h)
  h5 : s ≤ (f - g) * (1 - e)
  h6 : s ≤ y - a - (d - a) * x
  h7 : s ≤ h - y - (h - d) * x
  h8 : s ≤ (e - ε) * (x - b) - (1 - η - b) * (y - ε)
  h9 : s ≤ x - c + (c - g) * y
  h10 : s ≤ c - x + (f - c) * y

theorem Data.of_hs {a b c d e f g h ε η x y : ℝ} (hyp : BEMovingHyp a b c d e f g h ε η x y)
    (hs : ∀ i, sharpS ≤ chamberSarea (beMovingConfig a b c d e f g h ε η x y) i) :
    Data sharpS a b c d e f g h ε η x y := by
  obtain ⟨⟨ha, hah, hh1⟩, ⟨hb, hbc, hcf, hf1⟩, ⟨hg, hgf⟩, ⟨had, hde, he1⟩, ⟨hε0, hεa⟩,
    ⟨hη0, hηf⟩, hx0, hx1, hy0, hy1⟩ := hyp
  obtain ⟨hs1, hs2, -, -⟩ := sharp_bounds
  rw [claim_chamber_formulas] at hs
  exact ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hcf, hf1, hg, hgf, had, hde, he1, hε0, hεa, hη0, hηf,
    hx0, hx1, hy0, hy1, by simpa using hs 0, by simpa using hs 1, by simpa using hs 2,
    by simpa using hs 3, by simpa using hs 4, by simpa using hs 5, by simpa using hs 6,
    by simpa using hs 7, by simpa using hs 8, by simpa using hs 9, by simpa using hs 10⟩

/-- The cubic of `SHARP_B_E_MOVING.md` (16)–(17): `3t³ + (10s-3)t² - 3st + 3s > 0` for `t > 0`,
`s > 7/64`, through `192t³-122t²-21t+21 = 192z³+166z²+z+4 > 0`, `z = t - 1/2 ≥ -1/2`. -/
theorem cubic_pos {s t : ℝ} (hs1 : 7 / 64 < s) (ht0 : 0 < t) :
    0 < 3 * t ^ 3 + (10 * s - 3) * t ^ 2 - 3 * s * t + 3 * s := by
  have hP : 0 < 192 * t ^ 3 - 122 * t ^ 2 - 21 * t + 21 := by
    nlinarith [mul_nonneg (sq_nonneg (t - 1 / 2)) (by linarith : (0:ℝ) ≤ 192 * (t - 1 / 2) + 96),
      sq_nonneg (t - 1 / 2 + 1 / 140)]
  have hq : 0 ≤ 10 * t ^ 2 - 3 * t + 3 := by nlinarith [sq_nonneg (t - 3 / 20)]
  nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ s - 7 / 64) hq]

/-- **The coefficient bound** behind (11) (`SHARP_B_E_MOVING.md` (12)–(17)): with
`αu = u-uv-s`, `βv = v-uv-s`, `α, β > s`, `s < u < 1/2`, and the coupled inequalities
`c ≥ u + s/α`, `x ≥ u + s + (s/α)X`, `X ≥ v + s + (s/β)x` (multiplied out), `cX > (3/5)u`.
The square root of (15) enters through `t = √u`, and (17) is the cubic `192t³-122t²-21t+21 > 0`. -/
theorem coeff_bound {s u v α β c x X : ℝ} (hs1 : 7 / 64 < s) (hsu : s < u) (hu2 : u < 1 / 2)
    (hv0 : 0 < v) (hα : α * u = u - u * v - s) (hβ : β * v = v - u * v - s)
    (hαs : s < α) (hβs : s < β) (hX0 : 0 ≤ X) (hc : u * α + s ≤ c * α)
    (hx : (u + s) * α + s * X ≤ x * α) (hX : (v + s) * β + s * x ≤ X * β) :
    3 / 5 * u < c * X := by
  have hs0 : 0 < s := by linarith
  have hα0 : 0 < α := by linarith
  have hu0 : 0 < u := by linarith
  have hxus : u + s ≤ x := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg hs0.le hX0, mul_lt_mul_of_pos_right hcon hα0]
  have hq0 : 0 < β * v := mul_pos (by linarith) hv0
  have hrel : v * (1 - u) - β * v - s = 0 := by linarith
  have E1 : β * v * (v * (1 - u) - β * v - s) = 0 := by rw [hrel, mul_zero]
  have E2 : s * (u + s) * (v * (1 - u) - β * v - s) = 0 := by rw [hrel, mul_zero]
  have hv1 : 0 ≤ v * (1 - u) := mul_nonneg hv0.le (by linarith)
  -- (15) multiplied out: `X(1-u)q ≥ q² + q(2s+s²) + s²(u+s)` with `q = βv = (1-u)v - s`
  have h4 : (β * v) ^ 2 + β * v * (2 * s + s ^ 2) + s ^ 2 * (u + s) ≤
      X * (1 - u) * (β * v) := by
    linarith [mul_le_mul_of_nonneg_right hX hv1,
      mul_le_mul_of_nonneg_left hxus (mul_nonneg hs0.le hv1)]
  obtain ⟨t, ht0, htu⟩ : ∃ t, 0 < t ∧ t ^ 2 = u :=
    ⟨Real.sqrt u, Real.sqrt_pos.2 hu0, Real.sq_sqrt hu0.le⟩
  subst htu
  have ht1 : t < 1 := by
    by_contra hcon
    push Not at hcon
    nlinarith [mul_le_mul hcon hcon zero_le_one (by linarith)]
  -- arithmetic-geometric mean: `q² + s²t² ≥ 2stq`
  have h5 : 2 * s * (1 + t) * (β * v) ≤ X * (1 - t ^ 2) * (β * v) := by
    linarith [sq_nonneg (β * v - s * t), mul_nonneg (sq_nonneg s) hq0.le, pow_pos hs0 3]
  have h6 : 2 * s * (1 + t) ≤ X * (1 - t ^ 2) := le_of_mul_le_mul_right h5 hq0
  have h7 : 2 * s ≤ X * (1 - t) := by
    have h' : X * (1 - t ^ 2) = X * (1 - t) * (1 + t) := by ring
    rw [h'] at h6
    exact le_of_mul_le_mul_right h6 (by linarith)
  -- (14): `c(u-s) ≥ u²`
  have hcu0 : 0 ≤ c - t ^ 2 := by
    by_contra hcon
    push Not at hcon
    linarith [mul_lt_mul_of_pos_right hcon hα0]
  have hcu : (t ^ 2) ^ 2 ≤ c * (t ^ 2 - s) := by
    have E3 : (c - t ^ 2) * (α * t ^ 2) = (c - t ^ 2) * (t ^ 2 - t ^ 2 * v - s) := by rw [hα]
    linarith [mul_le_mul_of_nonneg_right hc hu0.le, mul_nonneg hcu0 (mul_nonneg hu0.le hv0.le)]
  -- (16)–(17)
  have h8 : 3 * (t ^ 2 - s) * (1 - t) * t ^ 2 < 10 * s * t ^ 2 * t ^ 2 := by
    linarith [mul_pos hu0 (cubic_pos hs1 ht0)]
  have h9 : 2 * s * (t ^ 2) ^ 2 ≤ c * X * ((t ^ 2 - s) * (1 - t)) := by
    linarith [mul_le_mul hcu h7 (by linarith) (le_trans (sq_nonneg _) hcu)]
  by_contra hcon
  push Not at hcon
  linarith [mul_le_mul_of_nonneg_right hcon
    (mul_nonneg (by linarith : (0:ℝ) ≤ t ^ 2 - s) (by linarith : (0:ℝ) ≤ 1 - t))]

section Plain

variable {s a b c d e f g h ε η x y u v : ℝ}

/-- (5)–(7), (10)–(11) in plain form, with `α = 1-v-(h-a)`, `β = 1-u-(f-g)`, `uL = vM = s`. -/
theorem Data.losses (H : Data s a b c d e f g h ε η x y) (hu : u * (h - a) = s)
    (hv : v * (f - g) = s) :
    (0 < u ∧ u < 1 / 2 ∧ 0 < v ∧ v < 1 / 2) ∧ (x ≤ 1 - 2 * u ∧ 2 * v ≤ y) ∧
      (b < x ∧ y < e) ∧
      s ≤ (1 - 3 * u - 3 * v + 5 * u * v) + 2 * u * ε + 2 * v * η - ε * η ∧
      ε * c * (1 - y) + η * x * (1 - d) ≤
        (1 - v - (h - a)) * (1 - 3 * u - s) + (1 - u - (f - g)) * (1 - 3 * v - s) +
          2 * s * (u + v - 1) ∧
      (3 / 5 * u < c * (1 - y) ∧ 3 / 5 * v < x * (1 - d)) := by
  obtain ⟨hs1, hs2, ha, hah, hh1, hb, hbc, hcf, hf1, hg, hgf, had, hde, he1, hε0, hεa, hη0, hηf,
    hx0, hx1, hy0, hy1, h0, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10⟩ := H
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < f - g := by linarith
  have hu0 : 0 < u := pos_of_mul_eq hL0 (by linarith) hu
  have hv0 : 0 < v := pos_of_mul_eq hM0 (by linarith) hv
  have hbu : u ≤ b := anchor_le hL0 h0 hu
  have hgu : u ≤ g := anchor_le hL0 h2 hu
  have hhv : v ≤ 1 - h := anchor_le hM0 (by linarith) hv
  have hev : v ≤ 1 - e := anchor_le hM0 (by linarith) hv
  have hX : 2 * u ≤ 1 - x := anchor_le hL0 (by linarith) (by linarith : 2 * u * (h - a) = 2 * s)
  have hY : 2 * v ≤ y := anchor_le hM0 (by linarith) (by linarith : 2 * v * (f - g) = 2 * s)
  have hα : a ≤ 1 - v - (h - a) := by linarith
  have hβ : 1 - f ≤ 1 - u - (f - g) := by linarith
  -- `a > s`, `1 - f > s`
  have hsa : s < a := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ c) hε0,
      mul_pos ha (by linarith : (0:ℝ) < 1 - (c - b))]
  have hsf : s < 1 - f := by
    linarith [mul_nonneg hη0 (by linarith : (0:ℝ) ≤ 1 - d),
      mul_pos (by linarith : (0:ℝ) < 1 - f) (by linarith : (0:ℝ) < 1 - (e - d))]
  -- signs of BOE
  have hya : a < y := by linarith [mul_nonneg (by linarith : (0:ℝ) ≤ d - a) hx0]
  have hxf : x < f := by
    linarith [mul_le_mul_of_nonneg_right hcf (by linarith : (0:ℝ) ≤ 1 - y)]
  have hxb : b < x := by
    by_contra hcon
    push Not at hcon
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ e - ε) (sub_nonneg.2 hcon),
      mul_pos (by linarith : (0:ℝ) < 1 - η - b) (by linarith : (0:ℝ) < y - ε)]
  have hye : y < e := by
    by_contra hcon
    push Not at hcon
    linarith [mul_le_mul_of_nonneg_right (by linarith : e - ε ≤ y - ε)
      (by linarith : (0:ℝ) ≤ x - b),
      mul_lt_mul_of_pos_left (by linarith : x - b < 1 - η - b) (by linarith : (0:ℝ) < y - ε)]
  -- (7)
  have hBOE : s ≤ (1 - v) * (x - u) - (1 - u) * y + η * y + ε * (1 - η - x) := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ e - y),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - e) (by linarith : (0:ℝ) ≤ x - u)]
  have h7' : s ≤ (1 - 3 * u - 3 * v + 5 * u * v) + 2 * u * ε + 2 * v * η - ε * η := by
    linarith [mul_le_mul_of_nonneg_left (by linarith : x ≤ 1 - 2 * u)
      (by linarith : (0:ℝ) ≤ 1 - v - ε),
      mul_le_mul_of_nonneg_left hY (by linarith : (0:ℝ) ≤ 1 - η - u)]
  -- (8): `s(1-y) + εc(1-y) ≤ α(x-u-s)`
  have hGCO : (c - b) * (1 - y) ≤ x - u - s := by
    linarith [mul_nonneg (sub_nonneg.2 hbu) (by linarith : (0:ℝ) ≤ 1 - y),
      mul_nonneg (sub_nonneg.2 hgu) hy0]
  have hGCO0 : 0 ≤ x - u - s :=
    le_trans (mul_nonneg (by linarith : (0:ℝ) ≤ c - b) (by linarith : (0:ℝ) ≤ 1 - y)) hGCO
  have h8' : s * (1 - y) + ε * c * (1 - y) ≤ (1 - v - (h - a)) * (x - u - s) := by
    linarith [mul_le_mul_of_nonneg_right h1 (by linarith : (0:ℝ) ≤ 1 - y),
      mul_le_mul_of_nonneg_left hGCO ha.le, mul_le_mul_of_nonneg_right hα hGCO0]
  -- (9): `sx + ηx(1-d) ≤ β(1-v-y-s)`
  have hDHO : (e - d) * x ≤ 1 - v - y - s := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - e) hx0,
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - h) (by linarith : (0:ℝ) ≤ 1 - x)]
  have hDHO0 : 0 ≤ 1 - v - y - s := le_trans (mul_nonneg (by linarith) hx0) hDHO
  have h9' : s * x + η * x * (1 - d) ≤ (1 - u - (f - g)) * (1 - v - y - s) := by
    linarith [mul_le_mul_of_nonneg_right h3 hx0,
      mul_le_mul_of_nonneg_left hDHO (by linarith : (0:ℝ) ≤ 1 - f),
      mul_le_mul_of_nonneg_right hβ hDHO0]
  -- (10)
  have h10' : ε * c * (1 - y) + η * x * (1 - d) ≤
      (1 - v - (h - a)) * (1 - 3 * u - s) + (1 - u - (f - g)) * (1 - 3 * v - s) +
        2 * s * (u + v - 1) := by
    linarith [mul_le_mul_of_nonneg_left (by linarith : x ≤ 1 - 2 * u)
      (by linarith : (0:ℝ) ≤ 1 - v - (h - a) - s),
      mul_le_mul_of_nonneg_left hY (by linarith : (0:ℝ) ≤ 1 - u - (f - g) - s)]
  -- (11) through `coeff_bound`
  have hαu : (1 - v - (h - a)) * u = u - u * v - s := by linarith
  have hβv : (1 - u - (f - g)) * v = v - u * v - s := by linarith
  have hsu : s < u := by linarith [mul_lt_mul_of_pos_left (by linarith : h - a < 1) hu0]
  have hsv : s < v := by linarith [mul_lt_mul_of_pos_left (by linarith : f - g < 1) hv0]
  have hcα : u * (1 - v - (h - a)) + s ≤ c * (1 - v - (h - a)) := by
    linarith [mul_le_mul_of_nonneg_right hα (by linarith : (0:ℝ) ≤ c - b),
      mul_le_mul_of_nonneg_right hbu (by linarith : (0:ℝ) ≤ 1 - v - (h - a)),
      mul_nonneg (by linarith : (0:ℝ) ≤ c) hε0]
  have hdβ : v * (1 - u - (f - g)) + s ≤ (1 - d) * (1 - u - (f - g)) := by
    linarith [mul_le_mul_of_nonneg_right hβ (by linarith : (0:ℝ) ≤ e - d),
      mul_le_mul_of_nonneg_right hev (by linarith : (0:ℝ) ≤ 1 - u - (f - g)),
      mul_nonneg hη0 (by linarith : (0:ℝ) ≤ 1 - d)]
  have hxα : (u + s) * (1 - v - (h - a)) + s * (1 - y) ≤ x * (1 - v - (h - a)) := by
    linarith [mul_le_mul_of_nonneg_right h9 (by linarith : (0:ℝ) ≤ 1 - v - (h - a)),
      mul_le_mul_of_nonneg_right hcα (by linarith : (0:ℝ) ≤ 1 - y),
      mul_le_mul_of_nonneg_right hgu (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - v - (h - a)) hy0)]
  have hyβ : (v + s) * (1 - u - (f - g)) + s * x ≤ (1 - y) * (1 - u - (f - g)) := by
    linarith [mul_le_mul_of_nonneg_right h7 (by linarith : (0:ℝ) ≤ 1 - u - (f - g)),
      mul_le_mul_of_nonneg_right hdβ hx0,
      mul_le_mul_of_nonneg_right hhv
        (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - u - (f - g)) (by linarith : (0:ℝ) ≤ 1 - x))]
  have hc11 := coeff_bound hs1 hsu (by linarith) hv0 hαu hβv (by linarith) (by linarith)
    (by linarith) hcα hxα hyβ
  have hd11 := coeff_bound (u := v) (v := u) hs1 hsv (by linarith) hu0
    (by linarith : (1 - u - (f - g)) * v = v - v * u - s)
    (by linarith : (1 - v - (h - a)) * u = u - v * u - s) (by linarith) (by linarith) hx0 hdβ
    hyβ hxα
  exact ⟨⟨hu0, by linarith, hv0, by linarith⟩, ⟨by linarith, hY⟩, ⟨hxb, hye⟩, h7', h10',
    hc11, by linarith⟩

/-- Theorem 1 in plain form: the eleven bounds force `ε = η = 0`. -/
theorem Data.rigid {l : ℝ} (H : Data s a b c d e f g h ε η x y) (hl1 : 1 / 4 < l)
    (hl2 : l < 3 / 10) (hsc : ScalarIneq s l) : ε = 0 ∧ η = 0 := by
  have hL0 : 0 < h - a := by linarith [H.hah]
  have hM0 : 0 < f - g := by linarith [H.hgf]
  obtain ⟨u, hu⟩ : ∃ u, u * (h - a) = s := ⟨s / (h - a), div_mul_cancel₀ _ hL0.ne'⟩
  obtain ⟨v, hv⟩ : ∃ v, v * (f - g) = s := ⟨s / (f - g), div_mul_cancel₀ _ hM0.ne'⟩
  obtain ⟨⟨hu0, hu2, hv0, hv2⟩, -, -, h7, h10, hc, hd⟩ := H.losses hu hv
  have hε0 := H.hε0
  have hη0 := H.hη0
  have hscal := hsc u v (h - a) (f - g) hu0 hv0 (by linarith) hu hv
  have hcε : 0 < c * (1 - y) - 2 * l * u := by nlinarith
  have hdη : 0 < x * (1 - d) - 2 * l * v := by nlinarith
  have e1 := mul_nonneg hε0 hcε.le
  have e2 := mul_nonneg hη0 hdη.le
  have e3 := mul_nonneg (mul_nonneg (by linarith : (0:ℝ) ≤ l) hε0) hη0
  have hsum : ε * (c * (1 - y) - 2 * l * u) + η * (x * (1 - d) - 2 * l * v) +
      l * ε * η ≤ 0 := by
    linarith [mul_le_mul_of_nonneg_left h7 (by linarith : (0:ℝ) ≤ l)]
  exact ⟨eq_zero_of_mul_nonpos hε0 hcε (by linarith),
    eq_zero_of_mul_nonpos hη0 hdη (by linarith)⟩

end Plain

/-! ### The claims of the manuscript -/

/-- **Theorem 1** (`SHARP_B_E_MOVING:Theorem1`). Throughout (1) and the chamber (positivity of the
eleven oriented doubled areas), the minimum of the eleven ordinary areas is at most `A₀`. If all
eleven are at least `A₀`, then `ε = η = 0` and the configuration is exactly the sharp boundary
configuration of `HAND_PROOF.md`. `docs/proof/nine/SHARP_B_E_MOVING.md`, lines 39-53, 301-326.
Uses: SHARP_B_E_MOVING:claim-lambda, SHARP_B_E_MOVING:claim-scalar, SHARP_B_E_MOVING:eq4,
SHARP_B_E_MOVING:claim-losses, SHARP_B_E_MOVING:claim-coefficients, HAND_PROOF:Theorem1 -/
theorem theorem1 {a b c d e f g h ε η x y : ℝ} (hyp : BEMovingHyp a b c d e f g h ε η x y)
    (hch : InChamber (beMovingConfig a b c d e f g h ε η x y)) :
    (∃ i, chamberArea (beMovingConfig a b c d e f g h ε η x y) i ≤ A₀) ∧
      ((∀ i, A₀ ≤ chamberArea (beMovingConfig a b c d e f g h ε η x y) i) →
        ε = 0 ∧ η = 0 ∧ beMovingConfig a b c d e f g h ε η x y = optimalConfiguration) := by
  obtain ⟨⟨ha, hah, hh1⟩, ⟨hb, hbc, hcf, hf1⟩, ⟨hg, hgf⟩, ⟨had, hde, he1⟩, -, -, hO⟩ := id hyp
  have hord : SharpOrders a b c d e f g h :=
    ⟨ha, hah, hh1, hb, hbc, by linarith, by linarith, hde, he1, hg, hgf, hf1⟩
  have key := moving_wrapper (Z := ε = 0 ∧ η = 0) hord hO hch fun hs => by
    obtain ⟨-, -, hl1, hl2⟩ := sharp_bounds
    obtain ⟨hε, hη⟩ := (Data.of_hs hyp hs).rigid hl1 hl2 scalarIneq_sharp
    subst hε hη
    refine ⟨⟨rfl, rfl⟩, ?_⟩
    simp only [beMovingConfig, sharpConfig, baseConfig, sub_zero]
  exact ⟨key.1, fun h => ⟨(key.2 h).1.1, (key.2 h).1.2, (key.2 h).2⟩⟩

end Heilbronn.Nine.SharpBEMoving
