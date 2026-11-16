module

public import Heilbronn.Nine.C1.Setting
public import Heilbronn.Nine.C1.TwoLower.Basic
public import Heilbronn.Nine.C1.TwoLower.ConvexPairCert

/-! # Two C1 top-cap points cannot form a convex quadrilateral with the cap base
(`docs/proof/nine/C1_TOP_CAP_CONVEX_PAIR.md`)

Role: a component on the primary route: `docs/proof/nine/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 3
(lines 249-254), together with `docs/proof/nine/C1_TOP_CAP_TRIANGULAR_PAIR.md`. Its §§1, 3, 4 are reused
by `docs/proof/nine/C1_TOP_CAP_SIDE_EARS.md` and `docs/proof/nine/C1_TOP_CAP_TRIANGULAR_PAIR.md`.

Setting (lines 3-38): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`,
a competitive nine-point configuration (least area at least `A₀`, so every doubled area is at
least `s = 8/73`), two free points `L, M` inside `OHC`, and the other two `X, Y` in the closed
top cap `conv{D, F, (1,1)}`. The lower points enter only through `hc ≥ Ks > ρ = 49/60`; the
scalar part is proved under the relaxed `hc ≥ ρ`.

Definitions: the anchor expressions `areaA = [CDF]`, `areaU = [HDF]`, `areaΔ` (1); the bracket
`bracketB` and discriminant `discrG` of (6); the reduced parametrization (9) at `hc = ρ`
(`reducedHCDF`).

Results:
* `eq1_2`: `W = A + U + Δ`, and `Δ > 0` when `hc ≥ ρ`, `hf, cd ≥ s`;
* `eq3_5`: the cap costs `a_Z, b_Z, r_Z ≥ s`, the identity `A a_Z + U b_Z + Δ r_Z = AU` (3) and the
  barycentric bounds (5);
* `eq6`: if `D, F` are on one side of `XY` then `B > 0` and `G ≥ 0`;
* `claim_reduction`: (7), (8), and the reduction of (6) to the box (10) at `hc = ρ`;
* `claim_certificate`: (6) has no solution in the box (10) (36 Bernstein leaves);
* `theorem_main` (**Theorem**): the line `XY` separates `D, F`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1TopCapConvexPair

open Heilbronn.Nine.C1 Heilbronn.Nine.C1TwoLower

/-- `A = [CDF] = 1 - c + d(c - f)` (1). -/
def areaA (c d f : ℝ) : ℝ := 1 - c + d * (c - f)

/-- `U = [HDF] = 1 - h + f(h - d)` (1). -/
def areaU (h d f : ℝ) : ℝ := 1 - h + f * (h - d)

/-- `Δ = df - (1 - h)(1 - c)` (1). -/
def areaΔ (h c d f : ℝ) : ℝ := d * f - (1 - h) * (1 - c)

/-- `B = AU - s(A + U)` of (6), `s = 8/73`. -/
def bracketB (h c d f : ℝ) : ℝ :=
  areaA c d f * areaU h d f - 8 / 73 * (areaA c d f + areaU h d f)

/-- `G = B² - 4sAUΔ` of (6), `s = 8/73`. -/
def discrG (h c d f : ℝ) : ℝ :=
  bracketB h c d f ^ 2 - 4 * (8 / 73) * areaA c d f * areaU h d f * areaΔ h c d f

/-- The reduced parameters (9) at `hc = ρ = 49/60`: with `u = hf`, `v = cd`, the anchors are
`(h, c, d, f) = (h, ρ/h, vh/ρ, u/h)`; then `A = 1 - ρ/h + v - uv/ρ`, `U = 1 - h + u - uv/ρ`,
`Δ = uv/ρ - 1 + h + ρ/h - ρ`. -/
def reducedHCDF (h u v : ℝ) : ℝ × ℝ × ℝ × ℝ := (h, 49 / 60 / h, v * h / (49 / 60), u / h)

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:eq1-2`). For the weak anchor conditions,
`W = A + U + Δ = 1 - (h - d)(c - f)`; and if `hc ≥ ρ = 49/60` and `hf, cd ≥ s = 8/73`, then
`Δ > 0` (2). `docs/proof/nine/C1_TOP_CAP_CONVEX_PAIR.md`, lines 40-69. -/
theorem eq1_2 {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) :
    areaA c d f + areaU h d f + areaΔ h c d f = 1 - (h - d) * (c - f) ∧
      (49 / 60 ≤ h * c → 8 / 73 ≤ h * f → 8 / 73 ≤ c * d → 0 < areaΔ h c d f) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  refine ⟨by unfold areaA areaU areaΔ; ring, fun hhc hhf hcd => ?_⟩
  unfold areaΔ
  have h0 : 0 ≤ (1 - h) * (1 - c) := mul_nonneg (by linarith) (by linarith)
  have h1 : h * (1 - c) + c * (1 - h) ≤ 1 - h * c := by nlinarith
  have h2 : 0 ≤ h * (1 - c) := mul_nonneg (by linarith) (by linarith)
  have h2' : 0 ≤ c * (1 - h) := mul_nonneg (by linarith) (by linarith)
  have h3 : h * c * ((1 - h) * (1 - c)) ≤ ((1 - h * c) / 2) ^ 2 := by
    have : h * c * ((1 - h) * (1 - c)) = (h * (1 - c)) * (c * (1 - h)) := by ring
    rw [this]; nlinarith [sq_nonneg (h * (1 - c) - c * (1 - h))]
  have h4 : ((1 - h * c) / 2) ^ 2 ≤ (11 / 120) ^ 2 := by
    have : 0 ≤ (1 - h * c) / 2 := by nlinarith
    exact pow_le_pow_left₀ this (by linarith) 2
  have h6 : (8 / 73) ^ 2 ≤ h * c * (d * f) := by
    have : h * c * (d * f) = (h * f) * (c * d) := by ring
    rw [this]; nlinarith
  have hpos : 0 < h * c := by linarith
  by_contra hn; push Not at hn
  nlinarith [mul_le_mul_of_nonneg_left hn hpos.le]

/-- A point of the square beyond `DF` (`[DFZ] ≤ 0`) has `x ≥ f`, `y ≥ d` and nonnegative cap
costs `-[HFZ]`, `[CDZ]` (the cap triangle `D, F, (1,1)` lies on the inner sides of `HF`, `CD`). -/
theorem cap_pt {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) (hd1 : d < 1) (hf1 : f < 1) {Z : Point}
    (hZ : Z ∈ unitSquare) (hDF : sarea (ptD d) (ptF f) Z ≤ 0) :
    0 ≤ -sarea (ptH h) (ptF f) Z ∧ 0 ≤ sarea (ptC c) (ptD d) Z ∧ f ≤ Z.1 ∧ d ≤ Z.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨x0, x1, y0, y1⟩ := hZ
  simp only [sarea, ptD, ptF, ptH, ptC] at hDF ⊢
  have hy : d ≤ Z.2 := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - d by linarith) (show (0 : ℝ) ≤ 1 - Z.1 by linarith),
      mul_pos (show (0 : ℝ) < 1 - f by linarith) (show (0 : ℝ) < d - Z.2 by linarith)]
  have hx : f ≤ Z.1 := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - f by linarith) (show (0 : ℝ) ≤ 1 - Z.2 by linarith),
      mul_pos (show (0 : ℝ) < 1 - d by linarith) (show (0 : ℝ) < f - Z.1 by linarith)]
  refine ⟨?_, ?_, hx, hy⟩
  · nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - h by linarith) (show (0 : ℝ) ≤ Z.1 - f by linarith),
      mul_nonneg hf.le (show (0 : ℝ) ≤ 1 - Z.2 by linarith)]
  · nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - c by linarith) (show (0 : ℝ) ≤ Z.2 - d by linarith),
      mul_nonneg hd.le (show (0 : ℝ) ≤ 1 - Z.1 by linarith)]

/-- The anchor bounds of a competitive C1 configuration: `A, U, hf, cd ≥ s`, `d, f < 1`. -/
theorem anchor_bounds {h c d f : ℝ} {W X Y Z : Point} (hA : C1AnchorsWeak h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    8 / 73 ≤ areaA c d f ∧ 8 / 73 ≤ areaU h d f ∧ 8 / 73 ≤ h * f ∧ 8 / 73 ≤ c * d ∧
      d < 1 ∧ f < 1 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have e1 : 8 / 73 ≤ |sarea (ptC c) (ptD d) (ptF f)| := ar hmin 1 2 3
  have e2 : 8 / 73 ≤ |sarea (ptH h) (ptD d) (ptF f)| := ar hmin 4 2 3
  have e3 : 8 / 73 ≤ |sarea ptO (ptF f) (ptH h)| := ar hmin 0 3 4
  have e4 : 8 / 73 ≤ |sarea ptO (ptC c) (ptD d)| := ar hmin 0 1 2
  have q1 : sarea (ptC c) (ptD d) (ptF f) = areaA c d f := by
    simp only [sarea, ptC, ptD, ptF, areaA]; ring
  have q2 : sarea (ptH h) (ptD d) (ptF f) = areaU h d f := by
    simp only [sarea, ptH, ptD, ptF, areaU]; ring
  have q3 : sarea ptO (ptF f) (ptH h) = h * f := by simp only [sarea, ptO, ptF, ptH]; ring
  have q4 : sarea ptO (ptC c) (ptD d) = c * d := by simp only [sarea, ptO, ptC, ptD]; ring
  rw [q1] at e1; rw [q2] at e2; rw [q3] at e3; rw [q4] at e4
  have a1 : 0 ≤ areaA c d f := by
    unfold areaA; nlinarith [mul_nonneg hd.le (show (0 : ℝ) ≤ c - f by linarith)]
  have a2 : 0 ≤ areaU h d f := by
    unfold areaU; nlinarith [mul_nonneg hf.le (show (0 : ℝ) ≤ h - d by linarith)]
  have b1 := ar_pos e1 a1
  have b2 := ar_pos e2 a2
  refine ⟨b1, b2, ar_pos e3 (mul_nonneg (by linarith) hf.le),
    ar_pos e4 (mul_nonneg (by linarith) hd.le), ?_, ?_⟩
  · have : areaU h d f ≤ 1 - d := by
      unfold areaU; nlinarith [mul_le_mul_of_nonneg_right (show f ≤ 1 by linarith)
        (show (0 : ℝ) ≤ h - d by linarith)]
    linarith
  · have : areaA c d f ≤ 1 - f := by
      unfold areaA; nlinarith [mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith)
        (show (0 : ℝ) ≤ c - f by linarith)]
    linarith

/-- The cap costs of a free point beyond `DF`, from its three actual areas. -/
theorem cap_costs {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) (hd1 : d < 1) (hf1 : f < 1)
    {Z : Point} (hZ : Z ∈ unitSquare) (hDF : sarea (ptD d) (ptF f) Z ≤ 0)
    (e1 : 8 / 73 ≤ |sarea (ptH h) (ptF f) Z|) (e2 : 8 / 73 ≤ |sarea (ptC c) (ptD d) Z|)
    (e3 : 8 / 73 ≤ |sarea (ptD d) (ptF f) Z|) :
    8 / 73 ≤ -sarea (ptH h) (ptF f) Z ∧ 8 / 73 ≤ sarea (ptC c) (ptD d) Z ∧
      8 / 73 ≤ -sarea (ptD d) (ptF f) Z := by
  obtain ⟨g1, g2, -, -⟩ := cap_pt hA hd1 hf1 hZ hDF
  refine ⟨?_, ar_pos e2 g2, ?_⟩
  · have := ar_neg e1 (by linarith); linarith
  · have := ar_neg e3 hDF; linarith

/-- The identity (3). -/
theorem cap_identity (h c d f : ℝ) (V : Point) :
    areaA c d f * -sarea (ptH h) (ptF f) V + areaU h d f * sarea (ptC c) (ptD d) V
      + areaΔ h c d f * -sarea (ptD d) (ptF f) V = areaA c d f * areaU h d f := by
  simp only [sarea, ptH, ptF, ptC, ptD, areaA, areaU, areaΔ]; ring

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:eq3-5`). In a C1 configuration with the weak anchor
conditions and least area at least `A₀`: `A, U, hf, cd ≥ s` (`s = 8/73`); every point `Z`
satisfies `A·a_Z + U·b_Z + Δ·r_Z = AU` (3), where `a_Z = -[HFZ]`, `b_Z = [CDZ]`, `r_Z = -[DFZ]`;
every free point `Z` in the closed top cap has `a_Z, b_Z, r_Z ≥ s`; and, when `Δ > 0`, with the
area `S = AU/Δ` (4) of the triangle `a, b, r ≥ 0` and the barycentric coordinates
`q = b_Z/A`, `t = r_Z`, `s/A ≤ q ≤ 1 - s/U - t/S` (5). `docs/proof/nine/C1_TOP_CAP_CONVEX_PAIR.md`,
lines 71-111. -/
theorem eq3_5 {h c d f : ℝ} {W X Y Z : Point} (hA : C1AnchorsWeak h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    8 / 73 ≤ areaA c d f ∧ 8 / 73 ≤ areaU h d f ∧ 8 / 73 ≤ h * f ∧ 8 / 73 ≤ c * d ∧
      (∀ V : Point, areaA c d f * -sarea (ptH h) (ptF f) V + areaU h d f * sarea (ptC c) (ptD d) V
          + areaΔ h c d f * -sarea (ptD d) (ptF f) V = areaA c d f * areaU h d f) ∧
      ∀ i, sarea (ptD d) (ptF f) (freePt W X Y Z i) ≤ 0 →
        8 / 73 ≤ -sarea (ptH h) (ptF f) (freePt W X Y Z i) ∧
        8 / 73 ≤ sarea (ptC c) (ptD d) (freePt W X Y Z i) ∧
        8 / 73 ≤ -sarea (ptD d) (ptF f) (freePt W X Y Z i) ∧
        (0 < areaΔ h c d f →
          8 / 73 / areaA c d f ≤ sarea (ptC c) (ptD d) (freePt W X Y Z i) / areaA c d f ∧
          sarea (ptC c) (ptD d) (freePt W X Y Z i) / areaA c d f ≤
            1 - 8 / 73 / areaU h d f - -sarea (ptD d) (ptF f) (freePt W X Y Z i) /
              (areaA c d f * areaU h d f / areaΔ h c d f)) := by
  obtain ⟨b1, b2, b3, b4, hd1, hf1⟩ := anchor_bounds hA hmin
  refine ⟨b1, b2, b3, b4, cap_identity h c d f, fun i hi => ?_⟩
  have key : 8 / 73 ≤ -sarea (ptH h) (ptF f) (freePt W X Y Z i) ∧
      8 / 73 ≤ sarea (ptC c) (ptD d) (freePt W X Y Z i) ∧
      8 / 73 ≤ -sarea (ptD d) (ptF f) (freePt W X Y Z i) := by
    fin_cases i
    · exact cap_costs hA hd1 hf1 hW hi (ar hmin 4 3 5) (ar hmin 1 2 5) (ar hmin 2 3 5)
    · exact cap_costs hA hd1 hf1 hX hi (ar hmin 4 3 6) (ar hmin 1 2 6) (ar hmin 2 3 6)
    · exact cap_costs hA hd1 hf1 hY hi (ar hmin 4 3 7) (ar hmin 1 2 7) (ar hmin 2 3 7)
    · exact cap_costs hA hd1 hf1 hZ hi (ar hmin 4 3 8) (ar hmin 1 2 8) (ar hmin 2 3 8)
  obtain ⟨k1, k2, k3⟩ := key
  refine ⟨k1, k2, k3, fun hΔ => ⟨?_, ?_⟩⟩
  · exact div_le_div_of_nonneg_right k2 (by linarith)
  · have hApos : 0 < areaA c d f := by linarith
    have hUpos : 0 < areaU h d f := by linarith
    have hid := cap_identity h c d f (freePt W X Y Z i)
    set A := areaA c d f
    set U := areaU h d f
    set Δ := areaΔ h c d f
    set a := -sarea (ptH h) (ptF f) (freePt W X Y Z i)
    set b := sarea (ptC c) (ptD d) (freePt W X Y Z i)
    set r := -sarea (ptD d) (ptF f) (freePt W X Y Z i)
    have e : 1 - 8 / 73 / U - r / (A * U / Δ) - b / A - (a - 8 / 73) / U =
        (A * U - (A * a + U * b + Δ * r)) / (A * U) := by
      field_simp; ring
    rw [hid, sub_self, zero_div] at e
    have : 0 ≤ (a - 8 / 73) / U := div_nonneg (by linarith) hUpos.le
    linarith

set_option linter.unusedVariables false in
/-- The scalar core of (6): two cap points with costs `a, b, r ≥ s`, the identity (3), the
identities of the pair-line signs `A[XYD] = b_Y r_X - b_X r_Y`, `U[XYF] = a_X r_Y - a_Y r_X`,
`r_Y ≤ r_X`, and `D, F` on one side of `XY` give `s A U ≤ B r_Y - Δ r_Y²`. -/
theorem eq6_core {A U Δ s aX bX rX aY bY rY dD dF : ℝ} (hA : 0 < A) (hU : 0 < U) (hΔ : 0 < Δ)
    (hs : 0 ≤ s)
    (idX : A * aX + U * bX + Δ * rX = A * U) (idY : A * aY + U * bY + Δ * rY = A * U)
    (haX : s ≤ aX) (hbX : s ≤ bX) (haY : s ≤ aY) (hbY : s ≤ bY) (hrY : 0 ≤ rY)
    (hI1 : A * dD = bY * rX - bX * rY) (hI2 : U * dF = aX * rY - aY * rX) (hrr : rY ≤ rX)
    (hcase : (dD ≤ -s ∧ dF ≤ -s) ∨ (s ≤ dD ∧ s ≤ dF)) :
    s * A * U ≤ (A * U - s * (A + U)) * rY - Δ * rY ^ 2 := by
  have hrX : 0 ≤ rX := le_trans hrY hrr
  rcases hcase with ⟨h1, -⟩ | ⟨-, h2⟩
  · -- `b_X r_Y - b_Y r_X ≥ sA`
    have k1 : s * A ≤ bX * rY - bY * rX := by nlinarith
    have k2 : U * bX ≤ A * U - A * s - Δ * rX := by nlinarith
    have k3 : U * (bX * rY) ≤ (A * U - A * s - Δ * rX) * rY := by
      have := mul_le_mul_of_nonneg_right k2 hrY; linarith
    have k4 : s * rX ≤ bY * rX := mul_le_mul_of_nonneg_right hbY hrX
    have m1 := mul_le_mul_of_nonneg_left k1 hU.le
    have m2 := mul_le_mul_of_nonneg_left k4 hU.le
    have m3 : Δ * rY * rY ≤ Δ * rX * rY :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hrr hΔ.le) hrY
    have m4 : U * s * rY ≤ U * s * rX := mul_le_mul_of_nonneg_left hrr (by positivity)
    nlinarith
  · -- `a_X r_Y - a_Y r_X ≥ sU`
    have k1 : s * U ≤ aX * rY - aY * rX := by nlinarith
    have k2 : A * aX ≤ A * U - U * s - Δ * rX := by nlinarith
    have k3 : A * (aX * rY) ≤ (A * U - U * s - Δ * rX) * rY := by
      have := mul_le_mul_of_nonneg_right k2 hrY; linarith
    have k4 : s * rX ≤ aY * rX := mul_le_mul_of_nonneg_right haY hrX
    have m1 := mul_le_mul_of_nonneg_left k1 hA.le
    have m2 := mul_le_mul_of_nonneg_left k4 hA.le
    have m3 : Δ * rY * rY ≤ Δ * rX * rY :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hrr hΔ.le) hrY
    have m4 : A * s * rY ≤ A * s * rX := mul_le_mul_of_nonneg_left hrr (by positivity)
    nlinarith

/-- From `s A U ≤ B t - Δ t²` with `t > 0`: `B > 0` and `G = B² - 4sAUΔ ≥ 0`. -/
theorem bg_of_t {A U Δ s B t : ℝ} (hA : 0 < A) (hU : 0 < U) (hΔ : 0 < Δ) (hs : 0 < s)
    (ht : 0 < t) (h : s * A * U ≤ B * t - Δ * t ^ 2) :
    0 < B ∧ 0 ≤ B ^ 2 - 4 * s * A * U * Δ := by
  have hB : 0 < B := by
    by_contra hn; push Not at hn
    nlinarith [mul_pos (mul_pos hs hA) hU, mul_nonpos_iff.2 (Or.inr ⟨hn, ht.le⟩), sq_nonneg t,
      mul_pos hΔ (pow_pos ht 2)]
  refine ⟨hB, ?_⟩
  nlinarith [sq_nonneg (B - 2 * Δ * t), mul_le_mul_of_nonneg_left h (by linarith : (0 : ℝ) ≤ 4 * Δ)]

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:eq6`). In a C1 configuration `c1Config h c d f L M X Y`
with the weak anchor conditions, least area at least `A₀`, `hc ≥ ρ = 49/60`, and `X, Y` in the
closed top cap: if `D, F` lie on the same side of `XY`, then `B = AU - s(A + U) > 0` and
`G = B² - 4sAUΔ ≥ 0` (6). `docs/proof/nine/C1_TOP_CAP_CONVEX_PAIR.md`, lines 113-154.
Uses: C1_TOP_CAP_CONVEX_PAIR:eq1-2, C1_TOP_CAP_CONVEX_PAIR:eq3-5. -/
theorem eq6 {h c d f : ℝ} {L M X Y : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X Y)) (hhc : 49 / 60 ≤ h * c)
    (hXc : sarea (ptD d) (ptF f) X ≤ 0) (hYc : sarea (ptD d) (ptF f) Y ≤ 0)
    (hDF : SameSide X Y (ptD d) (ptF f)) :
    0 < bracketB h c d f ∧ 0 ≤ discrG h c d f := by
  obtain ⟨b1, b2, b3, b4, -, hcap⟩ := eq3_5 hA hL hM hX hY hmin
  have hΔ := (eq1_2 hA).2 hhc b3 b4
  obtain ⟨aX, bX, rX, -⟩ := hcap 2 hXc
  obtain ⟨aY, bY, rY, -⟩ := hcap 3 hYc
  simp only [freePt, Matrix.cons_val] at aX bX rX aY bY rY
  have idX := cap_identity h c d f X
  have idY := cap_identity h c d f Y
  have hI1 : areaA c d f * sarea X Y (ptD d) =
      sarea (ptC c) (ptD d) Y * -sarea (ptD d) (ptF f) X -
        sarea (ptC c) (ptD d) X * -sarea (ptD d) (ptF f) Y := by
    simp only [sarea, ptC, ptD, ptF, areaA]; ring
  have hI2 : areaU h d f * sarea X Y (ptF f) =
      -sarea (ptH h) (ptF f) X * -sarea (ptD d) (ptF f) Y -
        -sarea (ptH h) (ptF f) Y * -sarea (ptD d) (ptF f) X := by
    simp only [sarea, ptH, ptD, ptF, areaU]; ring
  have eD : 8 / 73 ≤ |sarea X Y (ptD d)| := ar hmin 7 8 2
  have eF : 8 / 73 ≤ |sarea X Y (ptF f)| := ar hmin 7 8 3
  have hcase : (sarea X Y (ptD d) ≤ -(8 / 73) ∧ sarea X Y (ptF f) ≤ -(8 / 73)) ∨
      (8 / 73 ≤ sarea X Y (ptD d) ∧ 8 / 73 ≤ sarea X Y (ptF f)) := by
    unfold SameSide at hDF
    rcases ar_cases eD with h1 | h1 <;> rcases ar_cases eF with h2 | h2
    · exact Or.inr ⟨h1, h2⟩
    · nlinarith
    · nlinarith
    · exact Or.inl ⟨h1, h2⟩
  have hApos : 0 < areaA c d f := by linarith
  have hUpos : 0 < areaU h d f := by linarith
  have key : 8 / 73 * areaA c d f * areaU h d f ≤
      bracketB h c d f * min (-sarea (ptD d) (ptF f) X) (-sarea (ptD d) (ptF f) Y) -
        areaΔ h c d f * min (-sarea (ptD d) (ptF f) X) (-sarea (ptD d) (ptF f) Y) ^ 2 := by
    unfold bracketB
    rcases le_total (-sarea (ptD d) (ptF f) Y) (-sarea (ptD d) (ptF f) X) with hrr | hrr
    · rw [min_eq_right hrr]
      exact eq6_core hApos hUpos hΔ (by norm_num) idX idY aX bX aY bY (by linarith) hI1 hI2 hrr hcase
    · rw [min_eq_left hrr]
      have hI1' : areaA c d f * sarea Y X (ptD d) =
          sarea (ptC c) (ptD d) X * -sarea (ptD d) (ptF f) Y -
            sarea (ptC c) (ptD d) Y * -sarea (ptD d) (ptF f) X := by
        rw [sarea_swap₁₂, mul_neg, hI1]; ring
      have hI2' : areaU h d f * sarea Y X (ptF f) =
          -sarea (ptH h) (ptF f) Y * -sarea (ptD d) (ptF f) X -
            -sarea (ptH h) (ptF f) X * -sarea (ptD d) (ptF f) Y := by
        rw [sarea_swap₁₂, mul_neg, hI2]; ring
      have hcase' : (sarea Y X (ptD d) ≤ -(8 / 73) ∧ sarea Y X (ptF f) ≤ -(8 / 73)) ∨
          (8 / 73 ≤ sarea Y X (ptD d) ∧ 8 / 73 ≤ sarea Y X (ptF f)) := by
        rw [sarea_swap₁₂ X Y (ptD d), sarea_swap₁₂ X Y (ptF f)]
        rcases hcase with ⟨h1, h2⟩ | ⟨h1, h2⟩
        · exact Or.inr ⟨by linarith, by linarith⟩
        · exact Or.inl ⟨by linarith, by linarith⟩
      exact eq6_core hApos hUpos hΔ (by norm_num) idY idX aY bY aX bX (by linarith) hI1' hI2' hrr hcase'
  have ht : 0 < min (-sarea (ptD d) (ptF f) X) (-sarea (ptD d) (ptF f) Y) :=
    lt_min (by linarith) (by linarith)
  obtain ⟨hB, hG⟩ := bg_of_t hApos hUpos hΔ (by norm_num) ht key
  exact ⟨hB, by unfold discrG; linarith⟩

/-- `B > 0` forces `A, U > s` (for `A, U ≥ 0`). -/
theorem gt_of_B {A U : ℝ} (hA : 0 ≤ A) (hU : 0 ≤ U) (hB : 0 < A * U - 8 / 73 * (A + U)) :
    8 / 73 < A ∧ 8 / 73 < U := by
  constructor
  · by_contra hn; push Not at hn
    nlinarith [mul_le_mul_of_nonneg_right hn hU]
  · by_contra hn; push Not at hn
    nlinarith [mul_le_mul_of_nonneg_left hn hA]

/-- **Monotonicity of (6)** ("larger root"): if `B > 0`, `G ≥ 0` at `(A, U, Δ)` with `A, U, Δ > 0`,
then also at `(A', U', Δ')` with `A' ≥ A`, `U' ≥ U`, `0 < Δ' ≤ Δ`. Via the height `t = B/(2Δ)`:
`B t - Δ t² ≥ sAU` is `t - st/A - st/U - Δt²/(AU) ≥ s`, monotone in `A, U, Δ`. -/
theorem bg_mono {A U Δ A' U' Δ' : ℝ} (hA : 0 < A) (hU : 0 < U) (hΔ : 0 < Δ) (hAA : A ≤ A')
    (hUU : U ≤ U') (hΔ' : 0 < Δ') (hΔΔ : Δ' ≤ Δ) (hB : 0 < A * U - 8 / 73 * (A + U))
    (hG : 0 ≤ (A * U - 8 / 73 * (A + U)) ^ 2 - 4 * (8 / 73) * A * U * Δ) :
    0 < A' * U' - 8 / 73 * (A' + U') ∧
      0 ≤ (A' * U' - 8 / 73 * (A' + U')) ^ 2 - 4 * (8 / 73) * A' * U' * Δ' := by
  set B := A * U - 8 / 73 * (A + U)
  set t := B / (2 * Δ)
  have ht : 0 < t := div_pos hB (by linarith)
  have h1 : 8 / 73 * A * U ≤ B * t - Δ * t ^ 2 := by
    have e : B * t - Δ * t ^ 2 = B ^ 2 / (4 * Δ) := by simp only [t]; field_simp; ring
    rw [e, le_div_iff₀ (by linarith)]; nlinarith
  have hA' : 0 < A' := by linarith
  have hU' : 0 < U' := by linarith
  -- divided form
  have d1 : 8 / 73 ≤ t - 8 / 73 * t / A - 8 / 73 * t / U - Δ * t ^ 2 / (A * U) := by
    have e : t - 8 / 73 * t / A - 8 / 73 * t / U - Δ * t ^ 2 / (A * U) =
        (B * t - Δ * t ^ 2) / (A * U) := by simp only [B]; field_simp; ring
    rw [e, le_div_iff₀ (by positivity)]; linarith
  have m1 : 8 / 73 * t / A' ≤ 8 / 73 * t / A := div_le_div_of_nonneg_left (by positivity) hA hAA
  have m2 : 8 / 73 * t / U' ≤ 8 / 73 * t / U := div_le_div_of_nonneg_left (by positivity) hU hUU
  have m3 : Δ' * t ^ 2 / (A' * U') ≤ Δ * t ^ 2 / (A * U) := by
    apply div_le_div₀ (by positivity) (by nlinarith [pow_pos ht 2]) (by positivity)
    exact mul_le_mul hAA hUU hU.le hA'.le
  have d2 : 8 / 73 ≤ t - 8 / 73 * t / A' - 8 / 73 * t / U' - Δ' * t ^ 2 / (A' * U') := by linarith
  have h2 : 8 / 73 * A' * U' ≤ (A' * U' - 8 / 73 * (A' + U')) * t - Δ' * t ^ 2 := by
    have e : t - 8 / 73 * t / A' - 8 / 73 * t / U' - Δ' * t ^ 2 / (A' * U') =
        ((A' * U' - 8 / 73 * (A' + U')) * t - Δ' * t ^ 2) / (A' * U') := by field_simp; ring
    rw [e, le_div_iff₀ (by positivity)] at d2; linarith
  exact bg_of_t hA' hU' hΔ' (by norm_num) ht h2

/-- The swap `(h, c, d, f) ↦ (c, h, f, d)` exchanges `A, U` and fixes `Δ`. -/
theorem swap_AUΔ (h c d f : ℝ) :
    areaA h f d = areaU h d f ∧ areaU c f d = areaA c d f ∧ areaΔ c h f d = areaΔ h c d f := by
  refine ⟨?_, ?_, ?_⟩ <;> simp only [areaA, areaU, areaΔ]; ring

/-- At `hc = ρ` the reduced parametrization recovers the anchors. -/
theorem reduced_eq {h c d f : ℝ} (hh : 0 < h) (hhc : h * c = 49 / 60) :
    reducedHCDF h (h * f) (c * d) = (h, c, d, f) := by
  have hc : c = 49 / 60 / h := by field_simp; linarith
  simp only [reducedHCDF, Prod.mk.injEq]
  refine ⟨trivial, hc.symm, ?_, ?_⟩
  · rw [div_eq_iff (by norm_num), show c * d * h = d * (h * c) by ring, hhc]
  · field_simp

/-- The endpoint of the decreasing path of §3: with `d, f` fixed, a point `(h', c')` with
`h'c' = ρ`, `h' ≤ h`, `c' ≤ c`, `h' ≥ max(d, s/f)`, `c' ≥ max(f, s/d)` (explicitly
`h' = max(h_min, ρ/c)`, `c' = ρ/h'`), which exists by (8). -/
theorem path_endpoint {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) (hhf : 8 / 73 ≤ h * f)
    (hcd : 8 / 73 ≤ c * d) (hhc : 49 / 60 ≤ h * c) (h8l : (8 / 73) ^ 2 / (49 / 60) < d * f)
    (h8u : d * f < 49 / 60) :
    ∃ h' c' : ℝ, h' * c' = 49 / 60 ∧ 0 < h' ∧ d ≤ h' ∧ h' ≤ h ∧ f ≤ c' ∧ c' ≤ c ∧
      8 / 73 ≤ h' * f ∧ 8 / 73 ≤ c' * d := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have hc0 : 0 < c := by linarith
  obtain ⟨hm, hm1, hm2, hm3⟩ : ∃ hm : ℝ, d ≤ hm ∧ 8 / 73 / f ≤ hm ∧ (hm = d ∨ hm = 8 / 73 / f) :=
    ⟨max d (8 / 73 / f), le_max_left _ _, le_max_right _ _, max_choice _ _⟩
  obtain ⟨cm, cm1, cm2, cm3⟩ : ∃ cm : ℝ, f ≤ cm ∧ 8 / 73 / d ≤ cm ∧ (cm = f ∨ cm = 8 / 73 / d) :=
    ⟨max f (8 / 73 / d), le_max_left _ _, le_max_right _ _, max_choice _ _⟩
  have hmc : hm * cm < 49 / 60 := by
    have p1 : d * (8 / 73 / d) = 8 / 73 := by field_simp
    have p2 : 8 / 73 / f * f = 8 / 73 := by field_simp
    have p3 : 8 / 73 / f * (8 / 73 / d) = (8 / 73) ^ 2 / (d * f) := by field_simp
    have p4 : (8 / 73) ^ 2 / (d * f) < 49 / 60 := by
      rw [div_lt_iff₀ (by positivity)]; rw [div_lt_iff₀ (by norm_num)] at h8l; linarith
    rcases hm3 with e1 | e1 <;> rcases cm3 with e2 | e2 <;> rw [e1, e2]
    · exact h8u
    · rw [p1]; norm_num
    · rw [p2]; norm_num
    · rw [p3]; exact p4
  have hm0 : 0 < hm := lt_of_lt_of_le hd hm1
  have hmh : hm ≤ h := by
    rcases hm3 with e | e <;> rw [e]
    · exact hdh
    · rw [div_le_iff₀ hf]; linarith
  obtain ⟨h', h'1, h'2, h'3⟩ : ∃ h' : ℝ, hm ≤ h' ∧ 49 / 60 / c ≤ h' ∧
      (h' = hm ∨ h' = 49 / 60 / c) :=
    ⟨max hm (49 / 60 / c), le_max_left _ _, le_max_right _ _, max_choice _ _⟩
  have h'0 : 0 < h' := lt_of_lt_of_le hm0 h'1
  have h'h : h' ≤ h := by
    rcases h'3 with e | e <;> rw [e]
    · exact hmh
    · rw [div_le_iff₀ hc0]; linarith
  refine ⟨h', 49 / 60 / h', by field_simp, h'0, hm1.trans h'1, h'h, ?_, ?_, ?_, ?_⟩
  · -- `c' ≥ cm ≥ f`
    have : cm ≤ 49 / 60 / h' := by
      rcases h'3 with e | e
      · rw [e, le_div_iff₀ hm0]; linarith
      · rw [e]; field_simp
        rw [div_le_iff₀ hc0] at h'2
        rcases cm3 with e2 | e2 <;> rw [e2]
        · linarith
        · rw [div_le_iff₀ hd]; linarith
    linarith
  · rw [div_le_iff₀ h'0]; rw [div_le_iff₀ hc0] at h'2; linarith
  · rw [div_le_iff₀ hf] at hm2; nlinarith
  · have : cm ≤ 49 / 60 / h' := by
      rcases h'3 with e | e
      · rw [e, le_div_iff₀ hm0]; linarith
      · rw [e]; field_simp
        rcases cm3 with e2 | e2 <;> rw [e2]
        · linarith
        · rw [div_le_iff₀ hd]; linarith
    rw [div_le_iff₀ hd] at cm2
    nlinarith

/-- (7) and (8) of §3, and `A, U > s`. -/
theorem df_bounds {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) (hhf : 8 / 73 ≤ h * f)
    (hcd : 8 / 73 ≤ c * d) (hhc : 49 / 60 ≤ h * c) (hB : 0 < bracketB h c d f) :
    8 / 73 < areaA c d f ∧ 8 / 73 < areaU h d f ∧
      4 * (8 / 73) < areaA c d f + areaU h d f ∧ (8 / 73) ^ 2 / (49 / 60) < d * f ∧
      d * f < 49 / 60 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have a0 : 0 ≤ areaA c d f := by
    unfold areaA; nlinarith [mul_nonneg hd.le (show (0 : ℝ) ≤ c - f by linarith)]
  have u0 : 0 ≤ areaU h d f := by
    unfold areaU; nlinarith [mul_nonneg hf.le (show (0 : ℝ) ≤ h - d by linarith)]
  unfold bracketB at hB
  obtain ⟨aS, uS⟩ := gt_of_B a0 u0 hB
  -- (7)
  have h7 : 4 * (8 / 73) < areaA c d f + areaU h d f := by
    nlinarith [sq_nonneg (areaA c d f - areaU h d f)]
  have hAf : areaA c d f ≤ 1 - f := by
    unfold areaA; nlinarith [mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith)
      (show (0 : ℝ) ≤ c - f by linarith)]
  have hUd : areaU h d f ≤ 1 - d := by
    unfold areaU; nlinarith [mul_le_mul_of_nonneg_right (show f ≤ 1 by linarith)
      (show (0 : ℝ) ≤ h - d by linarith)]
  -- (8), upper
  have h8u : d * f < 49 / 60 := by
    by_contra hn; push Not at hn
    have : 9 / 5 < d + f := by nlinarith [sq_nonneg (d - f)]
    linarith
  -- (8), lower
  have hsum : 1807 / 1000 ≤ h + c := by nlinarith [sq_nonneg (h - c)]
  have h8l : (8 / 73) ^ 2 / (49 / 60) < d * f := by
    by_contra hn; push Not at hn
    have e : areaA c d f + areaU h d f = 2 - (h + c) + h * f + c * d - 2 * (d * f) := by
      unfold areaA areaU; ring
    have k1 : h * f + c * d ≤ h * c * (d * f) / (8 / 73) + 8 / 73 := by
      have : (h * f - 8 / 73) * (c * d - 8 / 73) ≥ 0 := mul_nonneg (by linarith) (by linarith)
      have e2 : h * c * (d * f) = (h * f) * (c * d) := by ring
      rw [e2, show h * f * (c * d) / (8 / 73) = h * f * (c * d) * (73 / 8) by ring]; nlinarith
    have k2 : h * c * (d * f) / (8 / 73) - 2 * (d * f) ≤
        (8 / 73) ^ 2 / (49 / 60) * (1 / (8 / 73) - 2) := by
      have hcd1 : h * c ≤ 1 := by nlinarith
      have e3 : h * c * (d * f) / (8 / 73) - 2 * (d * f) = d * f * (h * c / (8 / 73) - 2) := by
        ring
      rw [e3]
      have hdf : 0 ≤ d * f := by positivity
      have q1 : 0 ≤ h * c / (8 / 73) - 2 := by
        rw [sub_nonneg, le_div_iff₀ (by norm_num)]; linarith
      calc d * f * (h * c / (8 / 73) - 2) ≤ (8 / 73) ^ 2 / (49 / 60) * (h * c / (8 / 73) - 2) :=
            mul_le_mul_of_nonneg_right hn q1
        _ ≤ (8 / 73) ^ 2 / (49 / 60) * (1 / (8 / 73) - 2) := by
            apply mul_le_mul_of_nonneg_left _ (by norm_num)
            have : h * c / (8 / 73) ≤ 1 / (8 / 73) := div_le_div_of_nonneg_right hcd1 (by norm_num)
            linarith
    norm_num at k2
    linarith
  exact ⟨aS, uS, h7, h8l, h8u⟩

/-- The end of §3: from (6) at `(h, c, d, f)` and an endpoint `(h', c')` of the decreasing
path, (6) at a point of the box (10), after the transposition making `h ≤ c`. -/
theorem endpoint_box {h c d f h' c' : ℝ} (hA : C1AnchorsWeak h c d f) (hhf : 8 / 73 ≤ h * f)
    (hcd : 8 / 73 ≤ c * d) (hhc : 49 / 60 ≤ h * c) (hB : 0 < bracketB h c d f)
    (hG : 0 ≤ discrG h c d f) (aS : 8 / 73 < areaA c d f) (uS : 8 / 73 < areaU h d f)
    (hc'h' : h' * c' = 49 / 60) (h'0 : 0 < h') (h'd : d ≤ h') (h'h : h' ≤ h) (c'f : f ≤ c')
    (c'c : c' ≤ c) (h'f : 8 / 73 ≤ h' * f) (c'd : 8 / 73 ≤ c' * d) :
    ∃ h' u v : ℝ, 49 / 60 ≤ h' ∧ h' ≤ 113 / 125 ∧ 8 / 73 ≤ u ∧ u ≤ 49 / 60 ∧
      8 / 73 ≤ v ∧ v ≤ 49 / 60 ∧
      0 < bracketB (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
        (reducedHCDF h' u v).2.2.2 ∧
      0 ≤ discrG (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
        (reducedHCDF h' u v).2.2.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have hA' : C1AnchorsWeak h' c' d f := ⟨hd, h'd, h'h.trans hh, hf, c'f, c'c.trans hc⟩
  have hΔ' := (eq1_2 hA').2 hc'h'.symm.le h'f c'd
  have hΔ := (eq1_2 ⟨hd, hdh, hh, hf, hfc, hc⟩).2 hhc hhf hcd
  have mA : areaA c d f ≤ areaA c' d f := by
    unfold areaA; nlinarith [mul_le_mul_of_nonneg_left c'c (show (0 : ℝ) ≤ 1 - d by linarith)]
  have mU : areaU h d f ≤ areaU h' d f := by
    unfold areaU; nlinarith [mul_le_mul_of_nonneg_left h'h (show (0 : ℝ) ≤ 1 - f by linarith)]
  have mΔ : areaΔ h' c' d f ≤ areaΔ h c d f := by
    unfold areaΔ
    nlinarith [mul_le_mul (show 1 - h ≤ 1 - h' by linarith) (show 1 - c ≤ 1 - c' by linarith)
      (show (0 : ℝ) ≤ 1 - c by linarith) (show (0 : ℝ) ≤ 1 - h' by linarith)]
  unfold bracketB at hB
  unfold discrG at hG
  obtain ⟨hB', hG'⟩ := bg_mono (by linarith) (by linarith) hΔ mA mU hΔ' mΔ hB hG
  have h'1 : h' ≤ 1 := h'h.trans hh
  have c'1 : c' ≤ 1 := c'c.trans hc
  have h'ρ : 49 / 60 ≤ h' := by nlinarith
  have c'ρ : 49 / 60 ≤ c' := by nlinarith
  have uρ : h' * f ≤ 49 / 60 := by nlinarith
  have vρ : c' * d ≤ 49 / 60 := by nlinarith
  rcases le_total h' c' with hle | hle
  · refine ⟨h', h' * f, c' * d, h'ρ, ?_, h'f, uρ, c'd, vρ, ?_⟩
    · nlinarith
    · rw [reduced_eq h'0 hc'h']
      dsimp only
      unfold discrG bracketB
      exact ⟨hB', hG'⟩
  · have c'0 : 0 < c' := by linarith
    refine ⟨c', c' * d, h' * f, c'ρ, ?_, c'd, vρ, h'f, uρ, ?_⟩
    · nlinarith
    · rw [show c' * d = c' * d from rfl, reduced_eq c'0 (by linarith : c' * h' = 49 / 60)]
      obtain ⟨e1, e2, e3⟩ := swap_AUΔ h' c' d f
      dsimp only
      unfold discrG bracketB
      rw [e1, e2, e3]
      exact ⟨by linarith, by linarith⟩


/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:claim-reduction`, made-up id). Scalar reduction of §3:
if the weak anchor conditions hold with `hf, cd ≥ s`, `hc ≥ ρ`, and (6) `B > 0`, `G ≥ 0`, then
`A + U > 4s` (7) and `s²/ρ < df < ρ` (8); decreasing `h, c` at fixed `d, f` to `hc = ρ`
preserves (6), and after the transposition `h ≤ c`, (6) holds at a point of the box (10):
`ρ ≤ h ≤ √ρ < 113/125`, `s ≤ u, v ≤ ρ`, in the parametrization (9). Here `s = 8/73`,
`ρ = 49/60`. `docs/proof/nine/C1_TOP_CAP_CONVEX_PAIR.md`, lines 156-248.
Uses: C1_TOP_CAP_CONVEX_PAIR:eq1-2. -/
theorem claim_reduction {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) (hhf : 8 / 73 ≤ h * f)
    (hcd : 8 / 73 ≤ c * d) (hhc : 49 / 60 ≤ h * c) (hB : 0 < bracketB h c d f)
    (hG : 0 ≤ discrG h c d f) :
    4 * (8 / 73) < areaA c d f + areaU h d f ∧ (8 / 73) ^ 2 / (49 / 60) < d * f ∧
      d * f < 49 / 60 ∧
      ∃ h' u v : ℝ, 49 / 60 ≤ h' ∧ h' ≤ 113 / 125 ∧ 8 / 73 ≤ u ∧ u ≤ 49 / 60 ∧
        8 / 73 ≤ v ∧ v ≤ 49 / 60 ∧
        0 < bracketB (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
          (reducedHCDF h' u v).2.2.2 ∧
        0 ≤ discrG (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
          (reducedHCDF h' u v).2.2.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨-, -, h7, h8l, h8u⟩ := df_bounds ⟨hd, hdh, hh, hf, hfc, hc⟩ hhf hcd hhc hB
  refine ⟨h7, h8l, h8u, ?_⟩
  obtain ⟨h', c', hc'h', h'0, h'd, h'h, c'f, c'c, h'f, c'd⟩ :=
    path_endpoint ⟨hd, hdh, hh, hf, hfc, hc⟩ hhf hcd hhc h8l h8u
  obtain ⟨aS, uS, -, -, -⟩ := df_bounds ⟨hd, hdh, hh, hf, hfc, hc⟩ hhf hcd hhc hB
  exact endpoint_box ⟨hd, hdh, hh, hf, hfc, hc⟩ hhf hcd hhc hB hG aS uS hc'h' h'0 h'd h'h c'f c'c
    h'f c'd

/-- **Claim** (`C1_TOP_CAP_CONVEX_PAIR:claim-certificate`, made-up id). The system (6) has no
solution in the box (10), `ρ ≤ h ≤ 113/125`, `s ≤ u, v ≤ ρ`, in the parametrization (9). In the
manuscript: 36 fixed dyadic boxes in the unit-cube coordinates `(H, U₀, V)`, each with all tensor
Bernstein coefficients of `P = hB` nonpositive or of `Q = h²G` negative; checked by
`docs/proof/nine/check_c1_top_cap_convex_pair.py`. `docs/proof/nine/C1_TOP_CAP_CONVEX_PAIR.md`, lines 250-319. -/
theorem claim_certificate (h u v : ℝ) (hh : 49 / 60 ≤ h) (hh' : h ≤ 113 / 125)
    (hu : 8 / 73 ≤ u) (hu' : u ≤ 49 / 60) (hv : 8 / 73 ≤ v) (hv' : v ≤ 49 / 60) :
    ¬ (0 < bracketB (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
          (reducedHCDF h u v).2.2.2 ∧
        0 ≤ discrG (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
          (reducedHCDF h u v).2.2.2) := by
  rintro ⟨hB, hG⟩
  have hx := pointOf_box3 (x := h) (y := u) (z := v) (p := ((49 / 60 : ℚ), (113 / 125 : ℚ)))
    (q := ((8 / 73 : ℚ), (49 / 60 : ℚ))) (r := ((8 / 73 : ℚ), (49 / 60 : ℚ)))
    ⟨by push_cast; linarith, by push_cast; linarith⟩ ⟨by push_cast; linarith, by push_cast; linarith⟩
    ⟨by push_cast; linarith, by push_cast; linarith⟩
  obtain ⟨p, hp, hpos⟩ := ltreeCheck_sound _ _ ConvexPairCert.check _ hx
  have h0 : 0 < h := by linarith
  have eB : ConvexPairCert.ehB.eval (pointOf [h, u, v]) =
      h * bracketB (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
        (reducedHCDF h u v).2.2.2 := by
    simp only [ConvexPairCert.ehB, ConvexPairCert.ehA, ConvexPairCert.eU, Cert.Expr.eval_plus,
      Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_k, Cert.Expr.eval_v,
      Cert.Expr.eval_one, pointOf_zero, pointOf_succ, reducedHCDF, bracketB, areaA, areaU]
    push_cast
    field_simp
    ring
  have eQ : ConvexPairCert.eQ.eval (pointOf [h, u, v]) =
      h ^ 2 * discrG (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
        (reducedHCDF h u v).2.2.2 := by
    simp only [ConvexPairCert.eQ, ConvexPairCert.ehB, ConvexPairCert.ehA, ConvexPairCert.eU,
      ConvexPairCert.ehD, Cert.Expr.eval_plus, Cert.Expr.eval_minus, Cert.Expr.eval_times,
      Cert.Expr.eval_k, Cert.Expr.eval_v, Cert.Expr.eval_one, pointOf_zero, pointOf_succ,
      reducedHCDF, discrG, bracketB, areaA, areaU, areaΔ]
    push_cast
    field_simp
    ring
  simp only [ConvexPairCert.es, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl
  · simp only [Cert.Expr.eval_minus, Cert.Expr.eval_zero, eB] at hpos
    nlinarith
  · simp only [Cert.Expr.eval_minus, Cert.Expr.eval_zero, eQ] at hpos
    nlinarith [pow_pos h0 2]

/-- **Theorem** (`C1_TOP_CAP_CONVEX_PAIR:Theorem`). In a competitive nine-point C1 configuration
`c1Config h c d f L M X Y` (weak anchor conditions, least area at least `A₀`) with `L, M`
strictly inside `OHC` and `X, Y` in the closed top cap `conv{D, F, (1,1)}`, the line `XY`
separates `D, F`: the four points `D, F, X, Y` are not in convex position.
`docs/proof/nine/C1_TOP_CAP_CONVEX_PAIR.md`, lines 31-34 and 321-323.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, C1_TOP_CAP_CONVEX_PAIR:eq6,
C1_TOP_CAP_CONVEX_PAIR:claim-reduction, C1_TOP_CAP_CONVEX_PAIR:claim-certificate. -/
theorem theorem_main {h c d f : ℝ} {L M X Y : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X Y))
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hXc : sarea (ptD d) (ptF f) X ≤ 0) (hYc : sarea (ptD d) (ptF f) Y ≤ 0) :
    OppSide X Y (ptD d) (ptF f) := by
  have hk := two_in hmin 0 1 4 5 6 (by decide) (Or.inl hLl) (Or.inl hMl)
  have e : sarea ptO (ptC c) (ptH h) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have hpos : 0 ≤ h * c := mul_nonneg (by linarith [hA.2.1, hA.1]) (by linarith [hA.2.2.2.1,
    hA.2.2.2.2.1])
  rw [show (c1Config h c d f L M X Y 0) = ptO from rfl, show (c1Config h c d f L M X Y 1) = ptC c
    from rfl, show (c1Config h c d f L M X Y 4) = ptH h from rfl, e, abs_of_nonneg hpos] at hk
  have hhc : 49 / 60 ≤ h * c := by linarith [kσ_gt]
  unfold OppSide
  by_contra hn; push Not at hn
  have eD : 8 / 73 ≤ |sarea X Y (ptD d)| := ar hmin 7 8 2
  have eF : 8 / 73 ≤ |sarea X Y (ptF f)| := ar hmin 7 8 3
  have hne : sarea X Y (ptD d) * sarea X Y (ptF f) ≠ 0 :=
    mul_ne_zero (ar_ne (by norm_num) eD) (ar_ne (by norm_num) eF)
  have hSS : SameSide X Y (ptD d) (ptF f) := lt_of_le_of_ne hn (Ne.symm hne)
  obtain ⟨hB, hG⟩ := eq6 hA hL hM hX hY hmin hhc hXc hYc hSS
  obtain ⟨-, -, b3, b4, -, -⟩ := eq3_5 hA hL hM hX hY hmin
  obtain ⟨-, -, -, h', u, v, a1, a2, a3, a4, a5, a6, a7, a8⟩ :=
    claim_reduction hA b3 b4 hhc hB hG
  exact claim_certificate h' u v a1 a2 a3 a4 a5 a6 ⟨a7, a8⟩

end Heilbronn.Nine.C1TopCapConvexPair
