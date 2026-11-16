module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.AdjacentCaps

/-! # Completion of all four exterior adjacent-cap words

The other two exterior radial words of class `R1` (blocks `(1,6)` and `(6,1)`, centred on the
bottom and top paired positions), and the assembly of all four `R1` words.

**Setting of `minTriangleArea_lt_displaced_side`.** The sharp octagon labels of `SevenBoundaryAdjacentCaps` with a side
vertex displaced horizontally: `A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), G=(g,1),
H=(0,h)` with the strict side orders (`EightBoundary.EightAnchors a b c d e f g h`), and either
`H = (t,h)` with `0 ≤ t ≤ b`, `a ≤ 1/2` (family 1, `displacedH`), or `D = (1-t,d)` with `t ≥ 0`,
`e ≥ 1/2` (family 2, `displacedD`); the cyclic hull order is `A, …, H`. The ninth point `O`
satisfies `AdjacentCapsHyp` (inside the convex octagon, outside its four side quadrilaterals,
inside `BDE ∩ DEG`). All doubled areas are at least `s = 7/64`.

## Main results

* `gap_lt_five_sevenths_of_sum_le`: the scalar bound `R < 5/7`;
* `minTriangleArea_lt_displaced_side`: both displaced families are impossible (some area `< 7/128`);
* `minTriangleArea_lt_of_inClass_R1`: every exterior word of class `R1` gives some area `< 7/128`
  (`(3,2,5,4,5,4,3,2)` by `(x,y) ↦ (1-y,x)` with labels `V_{i+6}`, `H' = (1-k,g)`;
  `(5,4,3,2,3,2,5,4)` by `(x,y) ↦ (y,1-x)` with labels `V_{i+2}`, `D' = (k,1-g)`; the other two
  by `SevenBoundaryAdjacentCaps.minTriangleArea_lt_of_two_R1_words`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryAdjacentCapsCompletion

open SevenBoundary RadialCatalogue SevenBoundaryAdjacentCaps

/-- The sharp octagon with `H = (t,h)` moved horizontally (family 1):
`A, B, C, D, E, F, G, (t,h)`. -/
def displacedH (a b c d e f g h t : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (g, 1), (t, h)]

/-- The sharp octagon with `D = (1-t,d)` moved horizontally (family 2):
`A, B, C, (1-t,d), E, F, G, H`. -/
def displacedD (a b c d e f g h t : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1 - t, d), (1, e), (f, 1), (g, 1), (0, h)]

/-- With `s = 7/64` and `u = s/L`: if `0 < L < 1`, `0 < R < 1`, `B, T > 0`,
`R + s/B + s/T ≤ 1` and `B + T ≤ 2K₀` with `K₀ = 1 - u - s/R`, then `R < 5/7`. -/
theorem gap_lt_five_sevenths_of_sum_le {L R B T : ℝ} (hL : 0 < L) (hL1 : L < 1) (hR : 0 < R) (hR1 : R < 1)
    (hB : 0 < B) (hT : 0 < T) (hbud : R + 7 / 64 / B + 7 / 64 / T ≤ 1)
    (hBT : B + T ≤ 2 * (1 - 7 / 64 / L - 7 / 64 / R)) :
    R < 5 / 7 := by
  set K := 1 - 7 / 64 / L - 7 / 64 / R with hK
  have hK0 : 0 < K := by linarith
  have hsL : 7 / 64 < 7 / 64 / L := by rw [lt_div_iff₀ hL]; nlinarith
  -- harmonic mean: `s/B + s/T ≥ 4s/(B+T) ≥ 2s/K`
  have hHM : 4 * (7 / 64) / (B + T) ≤ 7 / 64 / B + 7 / 64 / T := by
    rw [div_add_div _ _ hB.ne' hT.ne', div_le_div_iff₀ (by positivity) (by positivity)]
    nlinarith [sq_nonneg (B - T)]
  have h1 : 2 * (7 / 64) / K ≤ 4 * (7 / 64) / (B + T) := by
    rw [div_le_div_iff₀ hK0 (by positivity)]; nlinarith
  have h3 : 2 * (7 / 64) ≤ (1 - R) * (1 - 7 / 64 - 7 / 64 / R) := by
    have : 2 * (7 / 64) / K ≤ 1 - R := by linarith
    rw [div_le_iff₀ hK0] at this
    nlinarith
  have hKR : (1 - 7 / 64 - 7 / 64 / R) * R = R - 7 / 64 * R - 7 / 64 := by field_simp
  have h4 : 2 * (7 / 64) * R ≤ (1 - R) * (R - 7 / 64 * R - 7 / 64) := by
    rw [← hKR]; nlinarith
  by_contra hc; push Not at hc
  nlinarith

/-! ### The scalar cores of `minTriangleArea_lt_displaced_side` -/

/-- The common final contradiction: `s + 4sR + 2sR² ≤ R²` is impossible for `0 < R < 5/7`. -/
theorem r57_final {R : ℝ} (hR : 0 < R) (hR57 : R < 5 / 7)
    (h : 7 / 64 + 4 * (7 / 64) * R + 2 * (7 / 64) * R ^ 2 ≤ R ^ 2) : False := by
  nlinarith [mul_pos hR (show (0 : ℝ) < 5 / 7 - R by linarith)]

/-- Family 1 (`H = (t,h)` moves horizontally): `R < 5/7` (by `gap_lt_five_sevenths_of_sum_le`). -/
theorem famH_front {a b c d e f g h t : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (ht0 : 0 ≤ t) (ha2 : a ≤ 1 / 2)
    (hABH : 7 / 64 ≤ b * (h - a) + a * t) (hAGH : 7 / 64 ≤ g * (h - a) - (1 - a) * t)
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d)) (hGEF : 7 / 64 ≤ (1 - e) * (f - g)) :
    e - d < 5 / 7 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA
  have hL : 0 < h - a := by linarith
  have hB : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hT : 0 < f - g := by linarith
  have e1 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hB]; linarith
  have e2 : 7 / 64 / (f - g) ≤ 1 - e := by rw [div_le_iff₀ hT]; linarith
  have e3 : 7 / 64 / (e - d) ≤ 1 - c := by rw [div_le_iff₀ hR]; linarith
  have e4 : 7 / 64 / (e - d) ≤ 1 - f := by rw [div_le_iff₀ hR]; linarith
  have hat : 0 ≤ (1 - 2 * a) * t := mul_nonneg (by linarith) ht0
  have e5 : 2 * (7 / 64) / (h - a) ≤ b + g := by rw [div_le_iff₀ hL]; linarith
  have e6 : 2 * (7 / 64) / (h - a) = 7 / 64 / (h - a) + 7 / 64 / (h - a) := by ring
  exact gap_lt_five_sevenths_of_sum_le hL (by linarith) hR (by linarith) hB hT (by linarith) (by linarith)

/-- The scalar part of family 1 (`H = (t,h)` moves horizontally). -/
theorem famH_core {a b c d e f g h t x y : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (ht0 : 0 ≤ t) (htb : t ≤ b) (ha2 : a ≤ 1 / 2) (hdy : d < y) (hye : y < e)
    (hABH : 7 / 64 ≤ b * (h - a) + a * t) (hAGH : 7 / 64 ≤ g * (h - a) - (1 - a) * t)
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d)) (hGEF : 7 / 64 ≤ (1 - e) * (f - g))
    (hBOE : 7 / 64 ≤ e * (x - b) - (1 - b) * y)
    (hDOG : 7 / 64 ≤ (1 - g) * (y - d) - (1 - d) * (1 - x))
    (hCF : 7 / 64 ≤ c * (1 - y) + f * y - x) : False := by
  have hR57 := famH_front hA ht0 ha2 hABH hAGH hBCD hCDE hDEF hGEF
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA
  have hR : 0 < e - d := by linarith
  -- `b, g ≥ s`
  have hbs : 7 / 64 ≤ b := by
    linarith [mul_le_mul_of_nonneg_left htb ha.le,
      mul_nonneg hb.le (show (0 : ℝ) ≤ 1 - h by linarith)]
  have hgs : 7 / 64 ≤ g := by
    linarith [mul_nonneg (show (0 : ℝ) ≤ 1 - a by linarith) ht0,
      mul_nonneg hg.le (show (0 : ℝ) ≤ 1 - (h - a) by linarith)]
  -- the lower bound on `(1 + R)x` and the upper bound on `Rx`
  have hW : 7 / 64 * (e - d) ≤ b * (e - y) + g * (y - d) := by
    linarith [mul_le_mul_of_nonneg_right hbs (show (0 : ℝ) ≤ e - y by linarith),
      mul_le_mul_of_nonneg_right hgs (show (0 : ℝ) ≤ y - d by linarith)]
  have h3 : 1 + 7 / 64 * (e - d) + 2 * (7 / 64) ≤ (1 + (e - d)) * x := by linarith
  have hcR : c * (e - d) ≤ (e - d) - 7 / 64 := by linarith
  have hfR : f * (e - d) ≤ (e - d) - 7 / 64 := by linarith
  have h4 : (e - d) * x ≤ (e - d) - 7 / 64 - 7 / 64 * (e - d) := by
    linarith [mul_le_mul_of_nonneg_left hCF hR.le,
      mul_le_mul_of_nonneg_right hcR (show (0 : ℝ) ≤ 1 - y by linarith),
      mul_le_mul_of_nonneg_right hfR (show (0 : ℝ) ≤ y by linarith)]
  refine r57_final hR hR57 ?_
  linarith [mul_le_mul_of_nonneg_left h3 hR.le,
    mul_le_mul_of_nonneg_left h4 (show (0 : ℝ) ≤ 1 + (e - d) by linarith)]

/-- Family 2 (`D = (1-t,d)` moves horizontally): `R < 5/7` (by `gap_lt_five_sevenths_of_sum_le`). -/
theorem famD_front {a b c d e f g h t : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (ht0 : 0 ≤ t) (he2 : 1 / 2 ≤ e)
    (hABH : 7 / 64 ≤ b * (h - a)) (hAGH : 7 / 64 ≤ g * (h - a))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d) - e * t)
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d) + (1 - e) * t) (hGEF : 7 / 64 ≤ (1 - e) * (f - g)) :
    e - d < 5 / 7 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA
  have hL : 0 < h - a := by linarith
  have hB : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hT : 0 < f - g := by linarith
  have e1 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hB]; linarith
  have e2 : 7 / 64 / (f - g) ≤ 1 - e := by rw [div_le_iff₀ hT]; linarith
  have het : 0 ≤ (2 * e - 1) * t := mul_nonneg (by linarith) ht0
  have e3 : 2 * (7 / 64) / (e - d) ≤ 2 - (c + f) := by rw [div_le_iff₀ hR]; linarith
  have e5 : 2 * (7 / 64) / (h - a) ≤ b + g := by rw [div_le_iff₀ hL]; linarith
  have e6 : 2 * (7 / 64) / (h - a) = 7 / 64 / (h - a) + 7 / 64 / (h - a) := by ring
  have e7 : 2 * (7 / 64) / (e - d) = 7 / 64 / (e - d) + 7 / 64 / (e - d) := by ring
  exact gap_lt_five_sevenths_of_sum_le hL (by linarith) hR (by linarith) hB hT (by linarith) (by linarith)

/-- Family 2: with `X = 1 - x`, `z = e - y`, the `CF` test gives `RX ≥ s(1+R) + tz`, then `BOE`
gives `(1-b)z > s(2+R)` and the displacement sign `z > R(1-e)`. -/
theorem famD_sign {b c d e f t x y : ℝ} (hb : 7 / 64 < b) (hb1 : b < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (ht0 : 0 ≤ t) (hye : y < e) (hy0 : 0 < y)
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d) - e * t)
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d) + (1 - e) * t)
    (hBOE : 7 / 64 ≤ e * (x - b) - (1 - b) * y)
    (hCF : 7 / 64 ≤ c * (1 - y) + f * y - x) :
    7 / 64 * (1 + (e - d)) + t * (e - y) ≤ (e - d) * (1 - x) ∧ (e - d) * (1 - e) < e - y := by
  have hR : 0 < e - d := by linarith
  have hcR : c * (e - d) ≤ (e - d) - 7 / 64 - e * t := by linarith
  have hfR : f * (e - d) ≤ (e - d) - 7 / 64 + (1 - e) * t := by linarith
  have h6 : 7 / 64 * (1 + (e - d)) + t * (e - y) ≤ (e - d) * (1 - x) := by
    linarith [mul_le_mul_of_nonneg_left hCF hR.le,
      mul_le_mul_of_nonneg_right hcR (show (0 : ℝ) ≤ 1 - y by linarith),
      mul_le_mul_of_nonneg_right hfR (show (0 : ℝ) ≤ y by linarith)]
  have htz : 0 ≤ t * (e - y) := mul_nonneg ht0 (by linarith)
  refine ⟨h6, ?_⟩
  -- `(1-b) z > s(2+R)`
  have h7 : 7 / 64 * (2 + (e - d)) < (1 - b) * (e - y) := by
    have k1 : (e - d) * (7 / 64) ≤ (e - d) * ((1 - b) * (e - y) - e * (1 - x)) :=
      mul_le_mul_of_nonneg_left (by linarith) hR.le
    have k2 : e * (7 / 64 * (1 + (e - d))) ≤ e * ((e - d) * (1 - x)) :=
      mul_le_mul_of_nonneg_left (by linarith) (by linarith)
    have k3 : (e - d) * (7 / 64 * (1 + (e - d))) < e * (7 / 64 * (1 + (e - d))) :=
      mul_lt_mul_of_pos_right (by linarith) (by linarith)
    have k4 : (e - d) * (7 / 64 * (2 + (e - d))) < (e - d) * ((1 - b) * (e - y)) := by
      linarith
    exact lt_of_mul_lt_mul_left k4 hR.le
  -- `z > R(1-e)`
  by_contra hc'; push Not at hc'
  have k1 : (1 - b) * (e - y) ≤ (1 - b) * ((e - d) * (1 - e)) :=
    mul_le_mul_of_nonneg_left hc' (by linarith)
  have k2 : (1 - b) * ((e - d) * (1 - e)) ≤ (1 - 7 / 64) * ((e - d) * (1 - (e - d))) := by
    apply mul_le_mul (by linarith) _ (mul_nonneg hR.le (by linarith)) (by linarith)
    exact mul_le_mul_of_nonneg_left (by linarith) hR.le
  nlinarith [sq_nonneg (e - d - 25 / 57)]

/-- The scalar part of family 2 (`D = (1-t,d)` moves horizontally). -/
theorem famD_core {a b c d e f g h t x y : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (ht0 : 0 ≤ t) (he2 : 1 / 2 ≤ e) (hdy : d < y) (hye : y < e)
    (hABH : 7 / 64 ≤ b * (h - a)) (hAGH : 7 / 64 ≤ g * (h - a))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d) - e * t)
    (hDEF : 7 / 64 ≤ (1 - f) * (e - d) + (1 - e) * t) (hGEF : 7 / 64 ≤ (1 - e) * (f - g))
    (hBOE : 7 / 64 ≤ e * (x - b) - (1 - b) * y)
    (hDOG : 7 / 64 ≤ (1 - g) * (y - d) - (1 - d) * (1 - x) + t * (1 - y))
    (hCF : 7 / 64 ≤ c * (1 - y) + f * y - x) : False := by
  have hR57 := famD_front hA ht0 he2 hABH hAGH hBCD hCDE hDEF hGEF
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA
  have hR : 0 < e - d := by linarith
  have hL1 : 0 < 1 - (h - a) := by linarith
  have hbs : 7 / 64 < b := by linarith [mul_pos hb hL1]
  obtain ⟨h6, h8⟩ := famD_sign hbs (by linarith) hd hde he ht0 hye (by linarith) hCDE hDEF hBOE hCF
  obtain ⟨hWL, hW0⟩ := SevenBoundaryAdjacentCaps.w_bounds hah hdy hye hABH hAGH
  have hWs : 7 / 64 * (e - d) < b * (e - y) + g * (y - d) := by
    linarith [mul_pos hL1 hW0]
  have hsum : (1 + (e - d)) * (1 - x) ≤
      (e - d) - (b * (e - y) + g * (y - d)) - 2 * (7 / 64) + t * (1 - e + (e - y)) := by
    linarith
  have htt : 0 ≤ t * ((e - y) - (e - d) * (1 - e)) := mul_nonneg ht0 (by linarith)
  refine r57_final hR hR57 ?_
  linarith [mul_le_mul_of_nonneg_left hsum hR.le,
    mul_le_mul_of_nonneg_left h6 (show (0 : ℝ) ≤ 1 + (e - d) by linarith),
    mul_lt_mul_of_pos_left hWs hR]

/-! ### The two displaced families -/

/-- A point strictly inside a counterclockwise triangle `pqr` whose vertex `p` is strictly lowest
is strictly above `p`. -/
theorem tri_lower {p q r O : Point} (h1 : 0 < sarea p q O) (h2 : 0 < sarea q r O)
    (h3 : 0 < sarea r p O) (hq : p.2 < q.2) (hr : p.2 < r.2) : p.2 < O.2 := by
  have key : (sarea p q O + sarea q r O + sarea r p O) * (O.2 - p.2) =
      sarea r p O * (q.2 - p.2) + sarea p q O * (r.2 - p.2) := by
    simp only [sarea]; ring
  by_contra hc; push Not at hc
  have : (sarea p q O + sarea q r O + sarea r p O) * (O.2 - p.2) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
  nlinarith [mul_pos h3 (sub_pos.2 hq), mul_pos h1 (sub_pos.2 hr)]

/-- The same with the vertex `p` strictly highest. -/
theorem tri_upper {p q r O : Point} (h1 : 0 < sarea p q O) (h2 : 0 < sarea q r O)
    (h3 : 0 < sarea r p O) (hq : q.2 < p.2) (hr : r.2 < p.2) : O.2 < p.2 := by
  have key : (sarea p q O + sarea q r O + sarea r p O) * (p.2 - O.2) =
      sarea r p O * (p.2 - q.2) + sarea p q O * (p.2 - r.2) := by
    simp only [sarea]; ring
  by_contra hc; push Not at hc
  have : (sarea p q O + sarea q r O + sarea r p O) * (p.2 - O.2) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
  nlinarith [mul_pos h3 (sub_pos.2 hq), mul_pos h1 (sub_pos.2 hr)]

/-- The same for the first coordinate (`p` strictly leftmost). -/
theorem tri_left {p q r O : Point} (h1 : 0 < sarea p q O) (h2 : 0 < sarea q r O)
    (h3 : 0 < sarea r p O) (hq : p.1 < q.1) (hr : p.1 < r.1) : p.1 < O.1 := by
  have key : (sarea p q O + sarea q r O + sarea r p O) * (O.1 - p.1) =
      sarea r p O * (q.1 - p.1) + sarea p q O * (r.1 - p.1) := by
    simp only [sarea]; ring
  by_contra hc; push Not at hc
  have : (sarea p q O + sarea q r O + sarea r p O) * (O.1 - p.1) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
  nlinarith [mul_pos h3 (sub_pos.2 hq), mul_pos h1 (sub_pos.2 hr)]

/-- The same for the first coordinate (`p` strictly rightmost). -/
theorem tri_right {p q r O : Point} (h1 : 0 < sarea p q O) (h2 : 0 < sarea q r O)
    (h3 : 0 < sarea r p O) (hq : q.1 < p.1) (hr : r.1 < p.1) : O.1 < p.1 := by
  have key : (sarea p q O + sarea q r O + sarea r p O) * (p.1 - O.1) =
      sarea r p O * (p.1 - q.1) + sarea p q O * (p.1 - r.1) := by
    simp only [sarea]; ring
  by_contra hc; push Not at hc
  have : (sarea p q O + sarea q r O + sarea r p O) * (p.1 - O.1) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
  nlinarith [mul_pos h3 (sub_pos.2 hq), mul_pos h1 (sub_pos.2 hr)]

theorem minTriangleArea_lt_displacedH {a b c d e f g h t x y : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (ht0 : 0 ≤ t) (htb : t ≤ b) (ha2 : a ≤ 1 / 2)
    (hH : AdjacentCapsHyp (displacedH a b c d e f g h t) (x, y)) :
    minTriangleArea (octConfig (displacedH a b c d e f g h t) (x, y)) < 7 / 128 := by
  have hA' := hA
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA'
  by_contra hcon; push Not at hcon
  obtain ⟨hV, hO, hq, hT1, hT2⟩ := hH
  have pq := pos_of_not_quad hO 2 (by simpa using hq.2.1)
  rw [show (2 : Fin 8) + 3 = 5 from rfl] at pq
  have hdy := tri_lower hT2.1 hT2.2.1 hT2.2.2 (by simp [displacedH]; linarith)
    (by simp [displacedH]; linarith)
  have hye := tri_upper hT1.2.2 hT1.1 hT1.2.1 (by simp [displacedH]; linarith)
    (by simp [displacedH]; linarith)
  have c1 := oct_cost_V hcon 0 1 7 (hV 0 1 7 (by decide) (by decide))
  have c2 := oct_cost_V hcon 0 6 7 (hV 0 6 7 (by decide) (by decide))
  have c4 := oct_cost_V hcon 1 2 3 (hV 1 2 3 (by decide) (by decide))
  have c5 := oct_cost_V hcon 2 3 4 (hV 2 3 4 (by decide) (by decide))
  have c6 := oct_cost_V hcon 3 4 5 (hV 3 4 5 (by decide) (by decide))
  have c7 := oct_cost_V hcon 4 5 6 (hV 4 5 6 (by decide) (by decide))
  have c8 := oct_cost_O hcon 4 1 hT1.2.2
  have c9 := oct_cost_O hcon 6 3 hT2.2.2
  have c10 := oct_cost_O hcon 2 5 (by rw [sarea_cycle]; exact pq)
  simp only [displacedH, Matrix.cons_val, sarea] at c1 c2 c4 c5 c6 c7 c8 c9 c10 hdy hye
  exact famH_core (x := x) hA ht0 htb ha2 hdy hye (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)

theorem minTriangleArea_lt_displacedD {a b c d e f g h t x y : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    (ht0 : 0 ≤ t) (he2 : 1 / 2 ≤ e)
    (hH : AdjacentCapsHyp (displacedD a b c d e f g h t) (x, y)) :
    minTriangleArea (octConfig (displacedD a b c d e f g h t) (x, y)) < 7 / 128 := by
  have hA' := hA
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hg, hgf, hf⟩ := hA'
  by_contra hcon; push Not at hcon
  obtain ⟨hV, hO, hq, hT1, hT2⟩ := hH
  have pq := pos_of_not_quad hO 2 (by simpa using hq.2.1)
  rw [show (2 : Fin 8) + 3 = 5 from rfl] at pq
  have hdy := tri_lower hT2.1 hT2.2.1 hT2.2.2 (by simp [displacedD]; linarith)
    (by simp [displacedD]; linarith)
  have hye := tri_upper hT1.2.2 hT1.1 hT1.2.1 (by simp [displacedD]; linarith)
    (by simp [displacedD]; linarith)
  have c1 := oct_cost_V hcon 0 1 7 (hV 0 1 7 (by decide) (by decide))
  have c2 := oct_cost_V hcon 0 6 7 (hV 0 6 7 (by decide) (by decide))
  have c4 := oct_cost_V hcon 1 2 3 (hV 1 2 3 (by decide) (by decide))
  have c5 := oct_cost_V hcon 2 3 4 (hV 2 3 4 (by decide) (by decide))
  have c6 := oct_cost_V hcon 3 4 5 (hV 3 4 5 (by decide) (by decide))
  have c7 := oct_cost_V hcon 4 5 6 (hV 4 5 6 (by decide) (by decide))
  have c8 := oct_cost_O hcon 4 1 hT1.2.2
  have c9 := oct_cost_O hcon 6 3 hT2.2.2
  have c10 := oct_cost_O hcon 2 5 (by rw [sarea_cycle]; exact pq)
  simp only [displacedD, Matrix.cons_val, sarea] at c1 c2 c4 c5 c6 c7 c8 c9 c10 hdy hye
  exact famD_core (x := x) hA ht0 he2 hdy hye (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)

/-- With the strict side orders and `O` as in `AdjacentCapsHyp`, some triangle has area less than
`7/128` in each family: `H = (t,h)` with `0 ≤ t ≤ b` and `a ≤ 1/2`; and `D = (1-t,d)` with
`t ≥ 0` and `e ≥ 1/2`. -/
theorem minTriangleArea_lt_displaced_side {a b c d e f g h t : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    {O : Point} :
    (0 ≤ t → t ≤ b → a ≤ 1 / 2 → AdjacentCapsHyp (displacedH a b c d e f g h t) O →
        minTriangleArea (octConfig (displacedH a b c d e f g h t) O) < 7 / 128) ∧
      (0 ≤ t → 1 / 2 ≤ e → AdjacentCapsHyp (displacedD a b c d e f g h t) O →
        minTriangleArea (octConfig (displacedD a b c d e f g h t) O) < 7 / 128) := by
  obtain ⟨x, y⟩ := O
  exact ⟨fun ht0 htb ha2 hH => minTriangleArea_lt_displacedH hA ht0 htb ha2 hH,
    fun ht0 he2 hH => minTriangleArea_lt_displacedD hA ht0 he2 hH⟩

/-! ### The four exterior `R1` words -/

/-- The four words of class `R1`. -/
theorem r1_words {w : Word} (hc : InClass .R1 w) :
    w = ![3, 2, 3, 2, 5, 4, 5, 4] ∨ w = ![5, 4, 5, 4, 3, 2, 3, 2] ∨
      w = ![3, 2, 5, 4, 5, 4, 3, 2] ∨ w = ![5, 4, 3, 2, 3, 2, 5, 4] := by
  obtain ⟨refl, r, rfl⟩ := hc
  revert refl r; decide

section Exterior
variable {a h b c d e f g k x y : ℝ}

/-- The word `(3,2,5,4,5,4,3,2)`: the rotation `(x,y) ↦ (1-y,x)` with labels `V_{i+6}` moves `H`
(`H' = (1-k, g)`, `t = 1-k ≤ b' = 1-h`, `a' = f ≤ 1/2`). -/
theorem four_R1_wordH (hN : SevenNormal a h b c d e f) (hX : FarCapPoint e f (g, k))
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) (x, y) ![3, 2, 5, 4, 5, 4, 3, 2])
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y))) : False := by
  have hkh := SevenBoundaryTopCapRight.h_lt_k hN hX (hmin.trans SevenBoundaryCaps.min₁_left)
  have H := SevenBoundaryTopCapRadial.convHyp hN hX hkh
  have f1 := SevenBoundaryTopCapRadial.cvx_XFH H
  have f2 := SevenBoundaryTopCapRadial.cvx_EXF H
  have f4 := SevenBoundaryTopCapRadial.cvx_ABH H
  have f5 := SevenBoundaryTopCapRadial.cvx_ABC H
  have f6 := SevenBoundaryTopCapRadial.cvx_BCD H
  have f8 := SevenBoundaryTopCapRadial.cvx_CDE H
  have w1 := hw.pos_of 2 7 (by decide) (by decide)
  have w2 := hw.pos_of 4 1 (by decide) (by decide)
  have w3 := hw.pos_of 0 3 (by decide) (by decide)
  have u1 := hw.pos_of 1 2 (by decide) (by decide)
  have u2 := hw.pos_of 2 4 (by decide) (by decide)
  have u3 := hw.pos_of 7 1 (by decide) (by decide)
  simp only [exteriorOctagon, Matrix.cons_val, sarea] at w1 w2 w3 u1 u2 u3 f1 f2 f4 f5 f6 f8
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  -- `b < x < c`: `P` in the triangles `BCE` and `HBC`
  have hbx : b < x := by
    have := tri_left (p := (b, 0)) (q := (c, 0)) (r := (1, e)) (O := (x, y))
      (by simp only [sarea]; linarith) (by simp only [sarea]; linarith)
      (by simp only [sarea]; linarith) (by simp only; linarith) (by simp only; linarith)
    simpa using this
  have hxc : x < c := by
    have := tri_right (p := (c, 0)) (q := (0, h)) (r := (b, 0)) (O := (x, y))
      (by simp only [sarea]; linarith) (by simp only [sarea]; linarith)
      (by simp only [sarea]; linarith) (by simp only; linarith) (by simp only; linarith)
    simpa using this
  have c1 := ext_cost hmin 7 6 1 (v := (1 - h) * (g - f) + f * (1 - k)) (by sa_eval)
    (by linarith)
  have c2 := ext_cost hmin 5 7 6 (v := (1 - e) * (g - f) - (1 - f) * (1 - k)) (by sa_eval)
    (by linarith)
  have c4 := ext_cost hmin 0 2 1 (v := b * ((1 - a) - (1 - h))) (by sa_eval) (by linarith)
  have c5 := ext_cost hmin 0 2 3 (v := (1 - (1 - a)) * (c - b)) (by sa_eval) (by linarith)
  have c6 := ext_cost hmin 2 3 4 (v := (1 - (1 - d)) * (c - b)) (by sa_eval) (by linarith)
  have c8 := ext_cost hmin 3 4 5 (v := (1 - c) * ((1 - d) - (1 - e))) (by sa_eval) (by linarith)
  have c9 := ext_cost hmin 8 3 1 (v := c * ((1 - y) - (1 - h)) - (1 - (1 - h)) * x) (by sa_eval)
    (by linarith)
  have c10 := ext_cost hmin 8 5 2 (v := (1 - (1 - e)) * (x - b) - (1 - b) * (1 - (1 - y)))
    (by sa_eval) (by linarith)
  have c11 := ext_cost hmin 8 0 4 (v := (1 - a) * (1 - x) + (1 - d) * x - (1 - y)) (by sa_eval)
    (by linarith)
  exact famH_core (a := f) (b := 1 - h) (c := 1 - a) (d := b) (e := c) (f := 1 - d) (g := 1 - e)
    (h := g) (t := 1 - k) (x := 1 - y) (y := x)
    ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, pb,
      by linarith, by linarith, by linarith, by linarith, by linarith⟩
    (by linarith) (by linarith) (by linarith) hbx hxc c1 c2 c4 c5 c6 c8 c9 c10 c11

/-- The word `(5,4,3,2,3,2,5,4)`: the rotation `(x,y) ↦ (y,1-x)` with labels `V_{i+2}` moves `D`
(`D' = (k, 1-g)`, `t = 1-k`, `e' = 1-f ≥ 1/2`). -/
theorem four_R1_wordD (hN : SevenNormal a h b c d e f) (hX : FarCapPoint e f (g, k))
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) (x, y) ![5, 4, 3, 2, 3, 2, 5, 4])
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) (x, y))) : False := by
  have hkh := SevenBoundaryTopCapRight.h_lt_k hN hX (hmin.trans SevenBoundaryCaps.min₁_left)
  have H := SevenBoundaryTopCapRadial.convHyp hN hX hkh
  have f1 := SevenBoundaryTopCapRadial.cvx_BCD H
  have f2 := SevenBoundaryTopCapRadial.cvx_ABC H
  have f4 := SevenBoundaryTopCapRadial.cvx_DEX H
  have f5 := SevenBoundaryTopCapRadial.cvx_EXF H
  have f6 := SevenBoundaryTopCapRadial.cvx_XFH H
  have f8 := SevenBoundaryTopCapRadial.cvx_AFH H
  have w1 := hw.pos_of 6 3 (by decide) (by decide)
  have w2 := hw.pos_of 0 5 (by decide) (by decide)
  have w3 := hw.pos_of 4 7 (by decide) (by decide)
  have u1 := hw.pos_of 5 6 (by decide) (by decide)
  have u2 := hw.pos_of 6 0 (by decide) (by decide)
  have u3 := hw.pos_of 3 5 (by decide) (by decide)
  simp only [exteriorOctagon, Matrix.cons_val, sarea] at w1 w2 w3 u1 u2 u3 f1 f2 f4 f5 f6 f8
  obtain ⟨pa, phA, ph1, pb, pcb, pc1, pd, ped, pe1, pfb, pcf, pgf, pg1, pke, pkh, pk1, pf2,
    pFEX⟩ := H
  -- `f < x < g`: `P` in the triangles `XFA` and `DXF`
  have hxg : x < g := by
    have := tri_right (p := (g, k)) (q := (f, 1)) (r := (0, a)) (O := (x, y))
      (by simp only [sarea]; linarith) (by simp only [sarea]; linarith)
      (by simp only [sarea]; linarith) (by simp only; linarith) (by simp only; linarith)
    simpa using this
  have hfx : f < x := by
    have := tri_left (p := (f, 1)) (q := (1, d)) (r := (g, k)) (O := (x, y))
      (by simp only [sarea]; linarith) (by simp only [sarea]; linarith)
      (by simp only [sarea]; linarith) (by simp only; linarith) (by simp only; linarith)
    simpa using this
  have c1 := ext_cost hmin 2 3 4 (v := d * ((1 - b) - (1 - c))) (by sa_eval) (by linarith)
  have c2 := ext_cost hmin 0 2 3 (v := a * ((1 - b) - (1 - c))) (by sa_eval) (by linarith)
  have c4 := ext_cost hmin 4 5 7 (v := (1 - g) * (e - d)) (by sa_eval) (by linarith)
  have c5 := ext_cost hmin 5 7 6 (v := (1 - e) * ((1 - f) - (1 - g)) - (1 - f) * (1 - k))
    (by sa_eval) (by linarith)
  have c6 := ext_cost hmin 7 6 1 (v := (1 - h) * ((1 - f) - (1 - g)) + (1 - (1 - f)) * (1 - k))
    (by sa_eval) (by linarith)
  have c8 := ext_cost hmin 0 6 1 (v := (1 - (1 - f)) * (h - a)) (by sa_eval) (by linarith)
  have c9 := ext_cost hmin 8 6 4 (v := (1 - f) * (y - d) - (1 - d) * (1 - x))
    (by sa_eval) (by linarith)
  have c10 := ext_cost hmin 8 0 7
    (v := (1 - a) * ((1 - x) - (1 - g)) - (1 - (1 - g)) * (1 - y) + (1 - k) * (1 - (1 - x)))
    (by sa_eval) (by linarith)
  have c11 := ext_cost hmin 8 5 1 (v := e * (1 - (1 - x)) + h * (1 - x) - y) (by sa_eval)
    (by linarith)
  exact famD_core (a := 1 - c) (b := d) (c := e) (d := 1 - g) (e := 1 - f) (f := h) (g := a)
    (h := 1 - b) (t := 1 - k) (x := y) (y := 1 - x)
    ⟨by linarith, by linarith, by linarith, pd, by linarith, by linarith, by linarith,
      by linarith, by linarith, pa, by linarith, by linarith⟩
    (by linarith) (by linarith) (by linarith) (by linarith) c1 c2 c4 c5 c6 c8 c9 c10 c11

end Exterior

/-- In the seven-boundary exterior case (octagon `A, B, C, D, E, X, F, H`), every radial word of
`P` in class `R1` gives some triangle of area less than `7/128`. -/
theorem minTriangleArea_lt_of_inClass_R1 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w) (hc : InClass .R1 w) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  rcases r1_words hc with h1 | h1 | h1 | h1
  · exact minTriangleArea_lt_of_two_R1_words hN hX hP hw (Or.inl h1)
  · exact minTriangleArea_lt_of_two_R1_words hN hX hP hw (Or.inr h1)
  · by_contra hcon; push Not at hcon
    obtain ⟨x, y⟩ := P
    subst h1
    exact four_R1_wordH hN hX hw hcon
  · by_contra hcon; push Not at hcon
    obtain ⟨x, y⟩ := P
    subst h1
    exact four_R1_wordD hN hX hw hcon

end Heilbronn.Nine.SevenBoundaryAdjacentCapsCompletion
