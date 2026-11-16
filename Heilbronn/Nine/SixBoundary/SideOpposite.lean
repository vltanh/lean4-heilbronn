module

public import Heilbronn.Nine.SixBoundary.SideOppositeTrees
public import Heilbronn.Nine.SixBoundary.SideOppositeEnum
public import Heilbronn.Nine.SixBoundary.SideTwoTop
public import Heilbronn.Nine.SixBoundary.TwoSideProjection
public import Heilbronn.Nine.Sharp.BDMoving
public import Heilbronn.Nine.Sharp.DFMoving

/-! # A side-cap point, an opposite-cap point, and one interior point in N
(`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`)

**Role.** Primary route: closes the six-boundary occupancy N6-04 `(n_L,n_T,n_R;n_I) = (0,1,1;1)`
of `docs/proof/nine/UNRESTRICTED.md`, Section 4, both for `Q` below and above `HC` (its transpose
`(1,1,0;1)` by `theorem1_transposed`). Sharp: the two residual branches are the moving sharp
chambers `SHARP_DF_MOVING` (word 23) and `SHARP_BD_MOVING` (word 54).

**Setting.** The N anchors (`NAnchors`, (1)); `X = (x,y)` in the side cap `R = CD(1,0)`
(`InCapR`), `Y = (z,w)` in the opposite cap `T = DF(1,1)` (`InCapT`), `Q = (r,t)` strictly inside
the anchor hexagon (`InHexagon`); square-side contacts allowed, the cap corners are virtual. The
configuration is `nConfig a h b c d f X Y Q`. Competitive assumption: every actual area is at least
`A₀`; the cubic part uses only the weaker doubled threshold `σ = 8/73 < 2A₀` (hypothesis
`4/73 ≤ minTriangleArea`), `ρ = 13/16`. Notation: `L = h-a`, `M = c-b`, `W = 1-(h-d)(c-f)`; the
full hull is the octagon `(V₀,…,V₇) = (A,B,C,X,D,Y,F,H)` (`octagon`).

**Results.**
* `theorem1`: minimum `≤ A₀`; if all actual areas are `≥ A₀`, the configuration is a symmetric
  relabelled copy of the sharp configuration (`IsOptimal`) and both cap points are on the square
  boundary (`x = 1`, `w = 1`). `theorem1_transposed`: the left-cap placement.
* `claim_hull`: the octagon is strictly convex with `Q` inside.
* `claim_empty_ABH_BCX`: `[ABH], [BCX] < 3·7/64`, `Q` in neither.
* `claim_ears` (4): the six ears have doubled area `< 13/16`.
* `claim_anchor` (5), `claim_side_point` (6)–(7), `claim_cap` (8)–(9), `eq11`, `claim_Q_box`
  (10)–(11): the affine bounds behind the 32 factors (12).
* `claim_words`: 97 octagon words (18 with `Q` below `HC`); `Q` has a word in the list.
* `claim_hc_lower` (15): `hc ≥ σ/(3-2√2) > 7/11` when `Q` is below `HC`.
* `claim_certificate`: the 93 words other than 23, 54, 69, 84 are impossible (one cubic each).
* `claim_branch_cover`: words 69, 84 are impossible; word 23 and word 54 are confined to their
  residual regions.
* `claim_word23_DF`, `claim_word54_BD`: the residual regions are instances of the moving sharp
  chambers.

Implicit in the manuscript: the claims are stated under `4/73 ≤ minTriangleArea` (the cubic part
uses only `σ`). `FLAG`-type remark (justification misattributed, statement true): the strict
orders `f' = z < 1` (word 23) and `d' = 1-z > 0` (word 54) follow from the residual condition
`x > z` and `x ≤ 1`, not from "(1), (6), (8)" as stated (lines 293-295, 317-318).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundarySideOpposite

open Heilbronn.Nine.SixBoundary Heilbronn.Nine.SharpBCMoving SixRadial Cover Cert Cert.Expr

/-- The full hull (3): the octagon `(V₀, …, V₇) = (A, B, C, X, D, Y, F, H)`. -/
def octagon (a h b c d f : ℝ) (X Y : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, X, ptD d, Y, ptF f, ptH h]

/-- The occupancy N6-04: N anchors, `X` in the side cap `CD(1,0)`, `Y` in the opposite cap
`DF(1,1)`, `Q` strictly inside the anchor hexagon. -/
def SideOppositeFamily (a h b c d f : ℝ) (X Y Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapR c d X ∧ InCapT d f Y ∧ InHexagon a h b c d f Q

/-- The 97 radial words of `Q` (13): octagon words (`radialWords 8`) with the hexagon edge tests
`CDQ`, `DFQ` (`r₂ ≥ 2`, `r₄ ≥ 2`) and the empty triangles `ABH`, `BCX` (`2 ≤ r₁ ≤ 5`). -/
def octagonWords : Finset (Fin 8 → Fin 8) :=
  (radialWords 8).filter fun r => 2 ≤ (r 2 : ℕ) ∧ 2 ≤ (r 4 : ℕ) ∧ 2 ≤ (r 1 : ℕ) ∧ (r 1 : ℕ) ≤ 5

/-- Word 23, `(3,2,3,4,5,4,4,3)`. -/
def word23 : Fin 8 → Fin 8 := ![3, 2, 3, 4, 5, 4, 4, 3]

/-- Word 54, `(4,3,3,2,3,4,5,4)`. -/
def word54 : Fin 8 → Fin 8 := ![4, 3, 3, 2, 3, 4, 5, 4]

/-- Word 69, `(4,4,4,4,3,3,3,3)`. -/
def word69 : Fin 8 → Fin 8 := ![4, 4, 4, 4, 3, 3, 3, 3]

/-- Word 84, `(5,4,4,3,3,2,3,4)`. -/
def word84 : Fin 8 → Fin 8 := ![5, 4, 4, 3, 3, 2, 3, 4]

/-- The rotation `R(u,v) = (v, 1-u)` of the square (swap, then flip the second coordinate). -/
def rotation : SquareSymmetry := ⟨true, false, true⟩


/-! ### Scalar bounds -/

section Scalar

/-- The opposite-cap point bounds (8)–(9) from `[DYF] ≥ σ` (`σ = 8/73`). -/
theorem capY_bounds {b d f z w : ℝ} (hd2 : 1 / 2 < d) (hd1 : d < 1) (hf8 : 1 / 8 < f) (hf1 : f < 1)
    (hbf : b ≤ f) (hz1 : z ≤ 1) (hw1 : w ≤ 1) (hd4 : 4 * (8 / 73) ≤ d * (1 - b))
    (hDYF : 8 / 73 ≤ (1 - d) * (z - f) - (1 - f) * (1 - w)) :
    d ≤ 1 - 8 / 73 ∧ f ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ z - f ∧ 8 / 73 ≤ w - d ∧ 2 * (8 / 73) < z - f ∧
      1 / 8 < w - d ∧ b ≤ 1 - 5 * (8 / 73) := by
  have hs : (0 : ℝ) < 8 / 73 := by norm_num
  have m1 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - w)
  have hA : 8 / 73 ≤ (1 - d) * (z - f) := by linarith
  have hzf0 := pos_of_prod hs (by linarith : (0 : ℝ) ≤ 1 - d) hA
  have e : (1 - d) * (z - f) - (1 - f) * (1 - w) = (1 - f) * (w - d) - (1 - d) * (1 - z) := by ring
  have m2 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - z)
  have hB : 8 / 73 ≤ (1 - f) * (w - d) := by linarith
  have hwd0 := pos_of_prod hs (by linarith : (0 : ℝ) ≤ 1 - f) hB
  have hd' : 8 / 73 ≤ 1 - d := by
    have := prod_le hs hzf0.le (by linarith : z - f ≤ 1) (by linarith : 8 / 73 ≤ (z - f) * (1 - d))
    linarith
  have hf' : 8 / 73 ≤ 1 - f := by
    have := prod_le hs hwd0.le (by linarith : w - d ≤ 1) (by linarith : 8 / 73 ≤ (w - d) * (1 - f))
    linarith
  have hzf : 8 / 73 ≤ z - f := by
    have := prod_le hs (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : 1 - d ≤ 1) hA; linarith
  have hwd : 8 / 73 ≤ w - d := by
    have := prod_le hs (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : 1 - f ≤ 1) hB; linarith
  have hzf2 : 2 * (8 / 73) < z - f := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - d < 1 / 2) hzf0; linarith
  have hwd8 : 1 / 8 < w - d := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - f < 7 / 8) hwd0; linarith
  have e2 : (1 - d) * (1 - f) - ((1 - d) * (z - f) - (1 - f) * (1 - w)) =
      (1 - d) * (1 - z) + (1 - f) * (1 - w) := by ring
  have m3 := mul_le_mul_of_nonneg_left (by linarith : 1 - f ≤ 1 - b) (by linarith : (0 : ℝ) ≤ 1 - d)
  have hb5 : b ≤ 1 - 5 * (8 / 73) := by nlinarith
  exact ⟨by linarith, by linarith, hzf, hwd, hzf2, hwd8, hb5⟩

/-- The bounds (10)–(11) for `Q = (r, t)` from its five hexagon-edge areas. -/
theorem q_bounds {a h b c d f r t : ℝ} (hN : NAnchors a h b c d f) (ha7 : 1 / 7 < a)
    (hM : c - b < 447 / 584) (hHAQ : 8 / 73 ≤ (h - a) * r) (hBCQ : 8 / 73 ≤ (c - b) * t)
    (hCDQ : 8 / 73 ≤ (1 - c) * t - d * (r - c))
    (hDFQ : 8 / 73 ≤ (f - 1) * (t - d) - (1 - d) * (r - 1))
    (hFHQ : 8 / 73 ≤ f * (1 - t) + (1 - h) * (r - f)) :
    8 / 73 ≤ r ∧ r ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ t ∧ t ≤ 1 - 8 / 73 ∧ 1 / 8 < r ∧ 1 / 7 < t := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hs : (0 : ℝ) < 8 / 73 := by norm_num
  have hr0 := pos_of_prod hs (by linarith : (0 : ℝ) ≤ h - a) hHAQ
  have ht0 := pos_of_prod hs (by linarith : (0 : ℝ) ≤ c - b) hBCQ
  have hr : 8 / 73 ≤ r := by
    have := prod_le hs (by linarith : (0 : ℝ) ≤ h - a) (by linarith : h - a ≤ 1) hHAQ; linarith
  have ht : 8 / 73 ≤ t := by
    have := prod_le hs (by linarith : (0 : ℝ) ≤ c - b) (by linarith : c - b ≤ 1) hBCQ; linarith
  have hr8 : 1 / 8 < r := by
    have := mul_lt_mul_of_pos_right (by linarith : h - a < 6 / 7) hr0; linarith
  have ht7 : 1 / 7 < t := by
    have := mul_lt_mul_of_pos_right hM ht0; linarith
  -- the projection identities (11)
  have i1 : (1 - f) * ((1 - c) * t - d * (r - c)) + (1 - c) * ((f - 1) * (t - d) - (1 - d) * (r - 1))
      = (d * (1 - f) + (1 - d) * (1 - c)) * (1 - r) := by ring
  have i2 : (1 - h) * ((f - 1) * (t - d) - (1 - d) * (r - 1)) + (1 - d) * (f * (1 - t) + (1 - h) * (r - f))
      = ((1 - h) * (1 - f) + (1 - d) * f) * (1 - t) := by ring
  have k1 := mul_le_mul_of_nonneg_left hCDQ (by linarith : (0 : ℝ) ≤ 1 - f)
  have k2 := mul_le_mul_of_nonneg_left hDFQ (by linarith : (0 : ℝ) ≤ 1 - c)
  have k3 := mul_le_mul_of_nonneg_left hDFQ (by linarith : (0 : ℝ) ≤ 1 - h)
  have k4 := mul_le_mul_of_nonneg_left hFHQ (by linarith : (0 : ℝ) ≤ 1 - d)
  have K1 : 0 < d * (1 - f) + (1 - d) * (1 - c) := by
    have := mul_pos (by linarith : (0 : ℝ) < d) (by linarith : (0 : ℝ) < 1 - f)
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - c)
    linarith
  have K2 : 0 < (1 - h) * (1 - f) + (1 - d) * f := by
    have := mul_pos (by linarith : (0 : ℝ) < 1 - h) (by linarith : (0 : ℝ) < 1 - f)
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ f)
    linarith
  have L1 : d * (1 - f) + (1 - d) * (1 - c) ≤ (1 - f) + (1 - c) := by
    have := mul_le_mul_of_nonneg_right (by linarith : d ≤ 1) (by linarith : (0 : ℝ) ≤ 1 - f)
    have := mul_le_mul_of_nonneg_right (by linarith : 1 - d ≤ 1) (by linarith : (0 : ℝ) ≤ 1 - c)
    linarith
  have L2 : (1 - h) * (1 - f) + (1 - d) * f ≤ (1 - h) + (1 - d) := by
    have := mul_le_mul_of_nonneg_left (by linarith : 1 - f ≤ 1) (by linarith : (0 : ℝ) ≤ 1 - h)
    have := mul_le_mul_of_nonneg_left (by linarith : f ≤ 1) (by linarith : (0 : ℝ) ≤ 1 - d)
    linarith
  have hr1 : r ≤ 1 - 8 / 73 := by
    by_contra hcon; push Not at hcon
    have := mul_lt_mul_of_pos_left (show 1 - r < 8 / 73 by linarith) K1
    nlinarith
  have ht1 : t ≤ 1 - 8 / 73 := by
    by_contra hcon; push Not at hcon
    have := mul_lt_mul_of_pos_left (show 1 - t < 8 / 73 by linarith) K2
    nlinarith
  exact ⟨hr, hr1, ht, ht1, hr8, ht7⟩

end Scalar

/-! ### The configuration as model points (shared with `SixBoundarySideTwoTop`) -/

section Model

variable {a h b c d f : ℝ} {X Y Q : Point}

local notation "cfgS" => SixBoundarySideTwoTop.cfg
local notation "zetaS" => SixBoundarySideTwoTop.zeta

theorem cfg_oct' (i : ℕ) (hi : i < 8) : cfgS a h b c d f X Y Q i = octagon a h b c d f X Y ⟨i, hi⟩ := by
  interval_cases i <;> rfl

theorem ptEval_zeta' (i : ℕ) : ptEval (zetaS a h b c d f X Y Q) Model.pt i = cfgS a h b c d f X Y Q i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;>
    simp [ptEval, Model.pt, SixBoundarySideTwoTop.zeta, SixBoundarySideTwoTop.cfg]

/-- Every coordinate bound and area cost of the family. -/
theorem fam_bounds (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    (64 / 447 < a ∧ 1 / 8 < b ∧ 4 * (8 / 73) ≤ c ∧ c ≤ 1 - 8 / 73 ∧ 1 / 2 < d ∧
      8 / 73 < h - a ∧ 8 / 73 < c - b ∧ 8 / 73 ≤ X.1 - c ∧ 64 / 447 < X.2 ∧ 8 / 41 ≤ d - X.2 ∧
      c - b < 447 / 584 ∧ 8 / 73 ≤ (1 - c) * (d - X.2) ∧ 4 * (8 / 73) ≤ d * (1 - b) ∧
      1 / 8 < a ∧ 4 * (8 / 73) ≤ h * c) ∧
    (d ≤ 1 - 8 / 73 ∧ f ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ Y.1 - f ∧ 8 / 73 ≤ Y.2 - d ∧
      2 * (8 / 73) < Y.1 - f ∧ 1 / 8 < Y.2 - d ∧ b ≤ 1 - 5 * (8 / 73)) ∧
    (8 / 73 ≤ Q.1 ∧ Q.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ Q.2 ∧ Q.2 ≤ 1 - 8 / 73 ∧ 1 / 8 < Q.1 ∧
      1 / 7 < Q.2) ∧
    8 / 73 ≤ a * (c - b) ∧ 8 / 73 ≤ b * (h - a) ∧ 8 / 73 ≤ (c - b) * X.2 ∧
    8 / 73 ≤ d * (X.1 - c) - (1 - c) * X.2 ∧
    8 / 73 ≤ (1 - d) * (Y.1 - f) - (1 - f) * (1 - Y.2) ∧
    8 / 73 ≤ (1 - c) * Q.2 - d * (Q.1 - c) ∧ 8 / 73 ≤ (f - 1) * (Q.2 - d) - (1 - d) * (Q.1 - 1) ∧
    8 / 73 ≤ f * (1 - Q.2) + (1 - h) * (Q.1 - f) := by
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, hXc⟩, ⟨⟨e0, e1, e2, e3⟩, hYc⟩, hQ⟩ := hfam
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => SixBoundarySideTwoTop.area_ge hmin hi hj hk hij hjk hik (V := V)
  have hABC := g (i := 0) (j := 1) (k := 2) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := a * (c - b))
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by nlinarith)
  have hABH := g (i := 0) (j := 1) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := b * (h - a))
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by nlinarith)
  have hBCX := g (i := 1) (j := 2) (k := 3) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (c - b) * X.2)
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by nlinarith)
  have hCXD := g (i := 2) (j := 3) (k := 4) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := d * (X.1 - c) - (1 - c) * X.2)
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by simp only [sarea] at hXc; linarith)
  have hDYF := g (i := 4) (j := 5) (k := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (1 - d) * (Y.1 - f) - (1 - f) * (1 - Y.2))
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by simp only [sarea] at hYc; linarith)
  have hHAQ := g (i := 7) (j := 0) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (h - a) * Q.1)
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by simp only [sarea] at q6; linarith)
  have hBCQ := g (i := 1) (j := 2) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (c - b) * Q.2)
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by simp only [sarea] at q2; linarith)
  have hCDQ := g (i := 2) (j := 4) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (1 - c) * Q.2 - d * (Q.1 - c))
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by simp only [sarea] at q3; linarith)
  have hDFQ := g (i := 4) (j := 6) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (f - 1) * (Q.2 - d) - (1 - d) * (Q.1 - 1))
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]) (by simp only [sarea] at q4; linarith)
  have hFHQ := g (i := 6) (j := 7) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := f * (1 - Q.2) + (1 - h) * (Q.1 - f))
    (by simp only [SixBoundarySideTwoTop.cfg, sarea]; ring) (by simp only [sarea] at q5; linarith)
  have S := side_bounds hN x1 y0 hABC hABH hBCX hCXD
  have C := capY_bounds S.2.2.2.2.1 (by linarith) (by linarith [S.2.1]) (by linarith) hbf e1 e3
    S.2.2.2.2.2.2.2.2.2.2.2.2.1 hDYF
  have I := q_bounds hN (by linarith [S.1]) S.2.2.2.2.2.2.2.2.2.2.1 hHAQ hBCQ hCDQ hDFQ hFHQ
  exact ⟨S, C, I, hABC, hABH, hBCX, hCXD, hDYF, hCDQ, hDFQ, hFHQ⟩

end Model

/-! ### Section 1: the complete hull and two empty ears -/

section Hull

variable {a h b c d f : ℝ} {X Y Q : Point}

local notation "cfgS" => SixBoundarySideTwoTop.cfg
local notation "zetaS" => SixBoundarySideTwoTop.zeta

/-- The hull octagon is strictly convex, `Q` is inside, and no two hull vertices are collinear
with `Q`. -/
theorem fam_hull (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    IsConvexCCW (octagon a h b c d f X Y) ∧ InPolygon (octagon a h b c d f X Y) Q ∧
      ∀ i j : Fin 8, i ≠ j →
        sarea (octagon a h b c d f X Y i) (octagon a h b c d f X Y j) Q ≠ 0 := by
  obtain ⟨S, C, I, hABC, hABH, hBCX, hCXD, hDYF, -⟩ := fam_bounds hfam hmin
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, -⟩, ⟨⟨e0, e1, e2, e3⟩, -⟩, hQ⟩ := hfam
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have H : SixBoundarySideTwoTop.Hull a h b c d f X.1 X.2 Y.1 Y.2 := ⟨by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith [S.2.2.2.2.2.2.2.1], by linarith, y0,
    by linarith [S.2.2.2.2.2.2.2.2.2.1], by linarith, by linarith [C.2.2.1], by linarith,
    by linarith [C.2.2.2.1], by linarith, by linarith⟩
  have hconv : IsConvexCCW (octagon a h b c d f X Y) := by
    have := H.convex (fun i j k hij hjk => by
      rw [SixBoundarySideTwoTop.octV_eq (O := Q), SixBoundarySideTwoTop.octV_eq (O := Q),
        SixBoundarySideTwoTop.octV_eq (O := Q)]
      exact SixBoundarySideTwoTop.cfg_area hmin (by omega) (by omega) (by omega) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt hij)) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt hjk)) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt (hij.trans hjk))))
    exact this
  have hgen : ∀ i j : Fin 8, i ≠ j →
      sarea (octagon a h b c d f X Y i) (octagon a h b c d f X Y j) Q ≠ 0 := by
    intro i j hij h0
    have := SixBoundarySideTwoTop.cfg_area hmin (X := X) (E := Y) (O := Q) (i := i.val)
      (j := j.val) (k := 8) (by omega) (by omega) (by norm_num) (fun e => hij (Fin.ext e))
      (by omega) (by omega)
    rw [cfg_oct' i.val i.isLt, cfg_oct' j.val j.isLt,
      show cfgS a h b c d f X Y Q 8 = Q from rfl] at this
    simp only [Fin.eta] at this
    rw [h0, abs_zero] at this
    norm_num at this
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  refine ⟨hconv, inPolygon_of_fan hconv (p0 := 0) (p1 := 1) (p2 := 2) (p3 := 4) (p4 := 6)
    (p5 := 7) (by decide) (by decide) (by decide) (by decide) (by decide) q1 q2 q3 q4 q5 q6
    (hgen 0 2 (by decide)) (hgen 0 4 (by decide)) (hgen 0 6 (by decide)), hgen⟩

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-hull`). The full convex hull is the strictly
convex octagon `(A, B, C, X, D, Y, F, H)` (3), and `Q` is its sole interior point.
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 48-58. -/
theorem claim_hull (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    IsConvexCCW (octagon a h b c d f X Y) ∧ InPolygon (octagon a h b c d f X Y) Q :=
  ⟨(fam_hull hfam hmin).1, (fam_hull hfam hmin).2.1⟩

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-empty-ABH-BCX`). `[ABH] < 3(7/64) < 3σ`
(`SIX_BOUNDARY_EXTERIOR` Theorem 5, the right cap being occupied) and `[BCX] < 3(7/64) < 3σ`
(`SIX_BOUNDARY_TWO_SIDE_PROJECTION` Lemma 2); hence `Q` is inside neither actual triangle.
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 60-64.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem5, SIX_BOUNDARY_TWO_SIDE_PROJECTION:Lemma2 -/
theorem claim_empty_ABH_BCX (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    sarea (ptA a) (ptB b) (ptH h) < 3 * (7 / 64) ∧ sarea (ptB b) (ptC c) X < 3 * (7 / 64) ∧
      ¬ InTriangle Q (ptA a) (ptB b) (ptH h) ∧ ¬ InTriangle Q (ptB b) (ptC c) X := by
  obtain ⟨hN, hX, hY, hQ⟩ := hfam
  have hQs : Q ∈ unitSquare := by
    obtain ⟨S, C, I, -⟩ := fam_bounds ⟨hN, hX, hY, hQ⟩ hmin
    exact ⟨by linarith [I.1], by linarith [I.2.1], by linarith [I.2.2.1], by linarith [I.2.2.2.1]⟩
  have h7 : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  have E5 := (SixBoundaryExterior.theorem5 hN hX.1 hY.1 hQs h7).1 hX
  have L2 := (SixBoundaryTwoSideProjection.lemma2 hN hX.1 hY.1 hQs h7).1 hX
  exact ⟨E5.1, L2.1, E5.2.2, L2.2.2⟩

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-ears`). Equation (4): the six anchor ears
`ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< ρ = 13/16` (`SIX_BOUNDARY_HULL` Theorem 1).
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 66-72.
Uses: SIX_BOUNDARY_HULL:Theorem1 -/
theorem claim_ears (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16 := by
  obtain ⟨hN, hX, hY, hQ⟩ := hfam
  have hQs : Q ∈ unitSquare := by
    obtain ⟨S, C, I, -⟩ := fam_bounds ⟨hN, hX, hY, hQ⟩ hmin
    exact ⟨by linarith [I.1], by linarith [I.2.1], by linarith [I.2.2.1], by linarith [I.2.2.2.1]⟩
  exact (SixBoundaryHull.theorem1 hN hX.1 hY.1 hQs (by linarith)).1

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-hc-lower`). Equation (15): if `Q` is below `HC`,
then `hc ≥ σ/(3-2√2) > 7/11` (five-point endpoint theorem for `H, C, A, B, Q` in `(0,0)HC`).
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 190-196.
Uses: TYPE_II:EndpointTriangleTheorem -/
theorem claim_hc_lower (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hlow : sarea (ptH h) (ptC c) Q < 0) :
    (8 / 73) / (3 - 2 * Real.sqrt 2) ≤ h * c ∧ 7 / 11 < (8 / 73) / (3 - 2 * Real.sqrt 2) := by
  have hQ1 := (fam_bounds hfam hmin).2.2.1.1
  have hQ2 := (fam_bounds hfam hmin).2.2.1.2.2.1
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, -⟩, -⟩ := hfam
  obtain ⟨hk, h711⟩ := endpoint_const
  refine ⟨?_, h711⟩
  have hsub : 4 / 73 ≤ minTriangleArea ![ptH h, ptC c, ptA a, ptB b, Q] := by
    have e : ![ptH h, ptC c, ptA a, ptB b, Q] = nConfig a h b c d f X Y Q ∘ ![1, 3, 0, 2, 8] := by
      funext m; fin_cases m <;> rfl
    rw [e]
    exact hmin.trans (le_min_comp (by norm_num) _ (by decide))
  clear hmin
  have hset : ({(0, (0 : ℝ)), ptC c, ptH h} : Set Point) = {ptH h, ptC c, (0, 0)} := by
    ext p; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
  have hc0 : 0 < c := by linarith
  have hh0 : 0 < h := by linarith
  have hO : 0 < sarea ((0 : ℝ), (0 : ℝ)) (ptC c) (ptH h) := by
    simp only [sarea]; nlinarith [mul_pos hc0 hh0]
  have mem : ∀ p : Point, 0 ≤ sarea (ptC c) (ptH h) p → 0 ≤ sarea (ptH h) (0, 0) p →
      0 ≤ sarea (0, 0) (ptC c) p → p ∈ convexHull ℝ ({ptH h, ptC c, (0, 0)} : Set Point) :=
    fun p h1 h2 h3 => by rw [← hset]; exact TypeII.mem_convexHull_of_sarea hO h1 h2 h3
  have p1 := mul_pos hc0 (show 0 < h - a by linarith)
  have p2 := mul_pos hc0 ha
  have p3 := mul_pos hh0 (show 0 < c - b by linarith)
  have p4 := mul_pos hh0 hb
  have p5 := mul_pos hh0 (show 0 < Q.1 by linarith)
  have p6 := mul_pos hc0 (show 0 < Q.2 by linarith)
  have mA := mem (ptA a) (by simp only [sarea]; linarith) (by simp only [sarea]; linarith)
    (by simp only [sarea]; linarith)
  have mB := mem (ptB b) (by simp only [sarea]; linarith) (by simp only [sarea]; linarith)
    (by simp only [sarea]; linarith)
  have mQ := mem Q (by rw [sarea_swap₁₂]; linarith) (by simp only [sarea]; linarith)
    (by simp only [sarea]; linarith)
  have hE := TypeII.endpointTriangleTheorem (ptH h) (ptC c) (0, 0) (ptA a) (ptB b) Q mA mB mQ
  have harea : triangleArea (ptH h) (ptC c) (0, 0) = h * c / 2 := by
    rw [triangleArea_eq, show sarea (ptH h) (ptC c) (0, 0) = -(h * c) by simp only [sarea]; ring,
      abs_neg, abs_of_pos (by positivity)]
  rw [harea] at hE
  unfold TypeII.kEnd at hE
  rw [div_le_iff₀ hk]
  linarith

end Hull

/-! ### The certificate cover -/

section Cover

variable {a h b c d f : ℝ} {X Y Q : Point}

local notation "cfgS" => SixBoundarySideTwoTop.cfg
local notation "zetaS" => SixBoundarySideTwoTop.zeta

theorem eval_tri (t : ℕ × ℕ × ℕ) :
    (Model.tri t).eval (zetaS a h b c d f X Y Q) =
      sarea (cfgS a h b c d f X Y Q t.1) (cfgS a h b c d f X Y Q t.2.1)
        (cfgS a h b c d f X Y Q t.2.2) := by
  rw [← ptEval_zeta', ← ptEval_zeta', ← ptEval_zeta']; rfl

set_option linter.unusedVariables false in
/-- The 32 affine factors are nonnegative. -/
theorem fac_nonneg (f1 : 1 / 7 ≤ a) (f2 : 1 / 8 ≤ b) (f3 : 1 / 2 ≤ h) (f4 : 4 * (8 / 73) ≤ c)
    (f5 : 1 / 2 ≤ d) (f6 : h ≤ 1) (f7 : c ≤ 1 - 8 / 73) (f8 : d ≤ 1 - 8 / 73)
    (f9 : f ≤ 1 - 8 / 73) (f10 : a ≤ d) (f11 : d ≤ h) (f12 : b ≤ f) (f13 : f ≤ c)
    (f14 : 8 / 73 ≤ h - a) (f15 : 8 / 73 ≤ c - b) (f16 : X.1 ≤ 1) (f17 : 8 / 73 ≤ X.1 - c)
    (f18 : 1 / 7 ≤ X.2) (f19 : 7 / 36 ≤ d - X.2) (f20 : Y.1 ≤ 1) (f21 : Y.2 ≤ 1)
    (f22 : 8 / 73 ≤ Y.1 - f) (f23 : 8 / 73 ≤ Y.2 - d) (f24 : 8 / 73 ≤ Q.1)
    (f25 : Q.1 ≤ 1 - 8 / 73) (f26 : 8 / 73 ≤ Q.2) (f27 : Q.2 ≤ 1 - 8 / 73) (f28 : 1 / 8 ≤ Q.1)
    (f29 : 1 / 7 ≤ Q.2) (f30 : 2 * (8 / 73) ≤ Y.1 - f) (f31 : 1 / 8 ≤ Y.2 - d)
    (f32 : b ≤ 29 / 64) :
    ∀ e ∈ Model.factors, 0 ≤ e.eval (zetaS a h b c d f X Y Q) := by
  simp only [Model.factors, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, SixBoundarySideTwoTop.zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

/-- The ten costs (16) are nonnegative. -/
theorem extra_nonneg (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) {tb : List SFact}
    (htb : AllHold (SFact.Holds (cfgS a h b c d f X Y Q)) tb) :
    ∀ e ∈ Model.extra tb, 0 ≤ e.eval (zetaS a h b c d f X Y Q) := by
  obtain ⟨S, C, I, hABC, hABH, hBCX, hCXD, hDYF, hCDQ, hDFQ, hFHQ⟩ := fam_bounds hfam hmin
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  obtain ⟨e1, e2, -, -⟩ := claim_empty_ABH_BCX hfam hmin
  obtain ⟨r1, r2, r3, r4, r5, r6⟩ := claim_ears hfam hmin
  have hhc := S.2.2.2.2.2.2.2.2.2.2.2.2.2.2
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => SixBoundarySideTwoTop.area_ge hmin hi hj hk hij hjk hik (V := V)
  have wq : 1 - (h - d) * (c - f) = sarea (ptH h) (ptC c) Q + ((1 - c) * Q.2 - d * (Q.1 - c)) +
      ((f - 1) * (Q.2 - d) - (1 - d) * (Q.1 - 1)) + (f * (1 - Q.2) + (1 - h) * (Q.1 - f)) := by
    simp only [sarea]; ring
  intro e he
  simp only [Model.extra, List.mem_append] at he
  rcases he with (he | he) | he
  · rcases hl : lookup tb (2, 7, 8) with _ | ⟨_ | _⟩ <;> rw [hl] at he
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl <;> simp
    · -- `[CHQ] < 0`: `Q` above `HC`
      have hs := lookup_sound htb hl
      simp only [OrientHolds, Bool.false_eq_true, ite_false] at hs
      change sarea (c, 0) (0, h) Q < 0 at hs
      have hHCQ := g (i := 7) (j := 2) (k := 8) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptC c) Q) rfl
        (by rw [sarea_swap₁₂]; simp only [ptC, ptH]; linarith)
      simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl <;>
        simp only [Model.eW, Model.eHC, eval_minus, eval_times, eval_v, eval_k, eval_one,
          SixBoundarySideTwoTop.zeta] <;> push_cast <;> linarith
    · -- `[CHQ] > 0`: `Q` below `HC`
      have hs := lookup_sound htb hl
      simp only [OrientHolds, ite_true] at hs
      change 0 < sarea (c, 0) (0, h) Q at hs
      have hlow : sarea (ptH h) (ptC c) Q < 0 := by
        rw [sarea_swap₁₂]; simp only [ptC, ptH]; linarith
      have hc711 := claim_hc_lower hfam hmin hlow
      have hHCD := g (i := 7) (j := 2) (k := 4) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptC c) (ptD d)) rfl
        (by have := hconv 2 4 7 (by decide) (by decide); rw [sarea_cycle] at this; exact this.le)
      have hHDF := g (i := 7) (j := 4) (k := 6) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptD d) (ptF f)) rfl
        (by have := hconv 4 6 7 (by decide) (by decide); rw [sarea_cycle] at this; exact this.le)
      have w2 : 1 - (h - d) * (c - f) = sarea (ptH h) (ptC c) (ptD d) + sarea (ptH h) (ptD d) (ptF f) := by
        simp only [sarea]; ring
      simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl <;>
        simp only [Model.eW, Model.eHC, eval_minus, eval_times, eval_v, eval_k, eval_one,
          SixBoundarySideTwoTop.zeta] <;> push_cast <;> linarith [hc711.1, hc711.2]
  · simp only [List.mem_cons, List.not_mem_nil, or_false] at he
    rcases he with rfl | rfl <;> rw [eval_minus, eval_k, eval_tri] <;> push_cast
    · change 0 ≤ 24 / 73 - sarea (ptA a) (ptB b) (ptH h); linarith
    · change 0 ≤ 24 / 73 - sarea (ptB b) (ptC c) X; linarith
  · simp only [List.mem_map, List.mem_cons, List.not_mem_nil, or_false] at he
    obtain ⟨t, ht, rfl⟩ := he
    rw [eval_minus, eval_k, eval_tri]
    push_cast
    rcases ht with rfl | rfl | rfl | rfl | rfl | rfl
    · change 0 ≤ 13 / 16 - sarea (ptA a) (ptB b) (ptH h); linarith
    · change 0 ≤ 13 / 16 - sarea (ptA a) (ptB b) (ptC c); linarith
    · change 0 ≤ 13 / 16 - sarea (ptB b) (ptC c) (ptD d); linarith
    · change 0 ≤ 13 / 16 - sarea (ptC c) (ptD d) (ptF f); linarith
    · change 0 ≤ 13 / 16 - sarea (ptD d) (ptF f) (ptH h); linarith
    · change 0 ≤ 13 / 16 - sarea (ptA a) (ptF f) (ptH h)
      rw [← sarea_cycle]; linarith

/-- The geometric premises of the cover. -/
theorem fam_hyp (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f X Y) Q r) (hrw : IsRadialWord r) :
    Hyp Model.pkg (cfgS a h b c d f X Y Q) (zetaS a h b c d f X Y Q) := by
  obtain ⟨S, C, I, hABC, hABH, hBCX, hCXD, hDYF, -⟩ := fam_bounds hfam hmin
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  obtain ⟨-, -, nABH, nBCX⟩ := claim_empty_ABH_BCX hfam hmin
  have hfam' := hfam
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, -⟩, ⟨⟨e0, e1, e2, e3⟩, -⟩, hQ⟩ := hfam'
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  refine ⟨?_, fun i _ => ptEval_zeta' i, by norm_num [Model.pkg, Model.bnd], ?_,
    by norm_num [Model.pkg, Model.bnd], ?_, by simp [Model.pkg], by simp [Model.pkg], ?_, ?_, ?_,
    fun tb htb => extra_nonneg hfam hmin htb, ?_⟩
  · intro v
    rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;>
      simp only [SixBoundarySideTwoTop.zeta] <;> constructor <;> linarith [I.1, I.2.1, I.2.2.1, I.2.2.2.1]
  · intro i j k hi hj hk hij hjk hik
    simpa [Model.pkg, Model.bnd] using SixBoundarySideTwoTop.cfg_area hmin hi hj hk hij hjk hik
  · intro m hm
    simp only [Model.pkg, Model.bnd]
    rw [ite_eq_right (by omega), ite_eq_right (by omega)]
  · intro a' b' c' j₁ j₂ sg _ _ _ h1 h2 hne
    simp only [Model.pkg, List.mem_cons, List.not_mem_nil, or_false] at h1 h2
    exact absurd (h1.trans h2.symm) hne
  · intro g hg
    simp only [Model.pkg, Model.base, List.mem_append, List.mem_map, List.mem_cons,
      List.not_mem_nil, or_false] at hg
    rcases hg with ⟨t, ht, rfl⟩ | rfl | rfl | rfl | rfl
    · obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
      have := hconv ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, h3⟩ (by simp [Fin.lt_def]; omega)
        (by simp [Fin.lt_def]; omega)
      simp only [SFact.Holds, OrientHolds, ite_true]
      rwa [cfg_oct' t.1 (by omega), cfg_oct' t.2.1 (by omega), cfg_oct' t.2.2 h3]
    · exact q3
    · exact q4
    · -- `[BXQ] > 0`: `Q` is not in `BCX`
      show 0 < sarea (b, 0) X Q
      have hCX : 0 < sarea (c, 0) X Q := hpoly 2
      have hne := hgen 3 1 (by decide)
      change sarea X (b, 0) Q ≠ 0 at hne
      have hnot : ¬ 0 < sarea X (b, 0) Q := fun h' => nBCX ⟨q2, hCX, h'⟩
      have hsw := sarea_swap₁₂ (b, 0) X Q
      rcases lt_or_gt_of_ne hne with h' | h' <;> [linarith; exact absurd h' hnot]
    · -- `[BHQ] < 0`: `Q` is not in `ABH`
      show sarea (b, 0) (0, h) Q < 0
      have hne := hgen 1 7 (by decide)
      change sarea (b, 0) (0, h) Q ≠ 0 at hne
      have : ¬ 0 < sarea (b, 0) (0, h) Q := fun h' => nABH ⟨q1, h', q6⟩
      rcases lt_or_gt_of_ne hne with h' | h' <;> [exact h'; exact absurd h' this]
  · exact fac_nonneg (by linarith [S.1]) S.2.1.le (by linarith [S.2.2.2.2.1]) S.2.2.1
      S.2.2.2.2.1.le hh.le S.2.2.2.1 C.1 C.2.1 had hdh hbf hfc S.2.2.2.2.2.1.le
      S.2.2.2.2.2.2.1.le x1 S.2.2.2.2.2.2.2.1 (by linarith [S.2.2.2.2.2.2.2.2.1])
      (by linarith [S.2.2.2.2.2.2.2.2.2.1]) e1 e3 C.2.2.1 C.2.2.2.1 I.1 I.2.1 I.2.2.1 I.2.2.2.1
      I.2.2.2.2.1.le I.2.2.2.2.2.le C.2.2.2.2.1.le C.2.2.2.2.2.1.le
      (by linarith [C.2.2.2.2.2.2])
  · intro p hp i hi
    simp only [Model.pkg, List.mem_cons, List.not_mem_nil, or_false] at hp
    subst hp
    refine ⟨r ⟨i, hi⟩, (hrw.1 _).1, by have := (hrw.1 ⟨i, hi⟩).2; simp only [Model.pkg]; omega, ?_⟩
    exact branch_holds hr hgen (fun i hi => cfg_oct' i hi) rfl le_rfl i hi

/-- The word of `Q` is one of the 97 words. -/
theorem word_index (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f X Y) Q r) (hrw : IsRadialWord r) :
    ∃ n < 97, ∀ i (hi : i < 8), r ⟨i, hi⟩ = (Model.words.getD n []).getD i 0 := by
  have H := fam_hyp hfam hmin hr hrw
  obtain ⟨-, -, hgen⟩ := fam_hull hfam hmin
  obtain ⟨w, hw, hwr⟩ := enum_sound' H.hbase Model.enum_ok (by decide) hr
    (fun i => by have := hrw.1 i; simp only [Model.pkg]; omega) hgen
    (fun i hi => cfg_oct' i hi) le_rfl
  obtain ⟨n, hn, rfl⟩ := List.mem_iff_getElem.1 hw
  refine ⟨n, by simpa [Model.words] using hn, fun i hi => ?_⟩
  refine (hwr i hi).trans ?_
  rw [List.getD_eq_getElem?_getD (l := Model.words), List.getElem?_eq_getElem hn]
  rfl

/-- A word other than 23 and 54 is impossible (its certificate, with the cuts for 69 and 84). -/
theorem leaf_false (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f X Y) Q r) (hrw : IsRadialWord r) {n : ℕ}
    (hn : n < 97) (h23 : n ≠ 23) (h54 : n ≠ 54)
    (hwr : ∀ i (hi : i < 8), r ⟨i, hi⟩ = (Model.words.getD n []).getD i 0) : False := by
  have H := fam_hyp hfam hmin hr hrw
  obtain ⟨-, -, hgen⟩ := fam_hull hfam hmin
  obtain ⟨T, hT⟩ := Model.all_ok n hn h23 h54
  exact Model.pkg.sound_cert H
    (allHold_inl (wordFacts_holds hr hgen (fun i hi => cfg_oct' i hi) rfl le_rfl hwr)) hT

/-- A residual branch of word 23 or 54 is impossible. -/
theorem res_false (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f X Y) Q r) (hrw : IsRadialWord r) {n : ℕ}
    (hwr : ∀ i (hi : i < 8), r ⟨i, hi⟩ = (Model.words.getD n []).getD i 0) {e : Expr}
    (hT : ∃ T, checkTree (Model.pkg.spec Pkg.noClosed) (Model.leafFacts n ++ [Sum.inr e]) T = true)
    (he : 0 ≤ e.eval (zetaS a h b c d f X Y Q)) : False := by
  have H := fam_hyp hfam hmin hr hrw
  obtain ⟨-, -, hgen⟩ := fam_hull hfam hmin
  obtain ⟨T, hT⟩ := hT
  refine Model.pkg.sound_cert H (AllHold.append
    (allHold_inl (wordFacts_holds hr hgen (fun i hi => cfg_oct' i hi) rfl le_rfl hwr)) ?_) hT
  intro g hg
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
  subst hg
  exact he

end Cover

/-! ### Section 2: all affine bounds -/

section Claims

variable {a h b c d f : ℝ} {X Y Q : Point}

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-anchor`). Equation (5) and the line after it:
with `σ = 8/73`, `L = h-a`, `M = c-b`: `aM ≥ σ`, `bL ≥ σ`, `h ≥ σ/M + σ/b`, `hc ≥ 4σ`, `b > 1/8`.
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 76-83. -/
theorem claim_anchor (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    let σ : ℝ := 8 / 73
    σ ≤ a * (c - b) ∧ σ ≤ b * (h - a) ∧ σ / (c - b) + σ / b ≤ h ∧ 4 * σ ≤ h * c ∧ 1 / 8 < b := by
  dsimp only
  obtain ⟨S, -, -, hABC, hABH, -⟩ := fam_bounds hfam hmin
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, -⟩, -⟩ := hfam
  refine ⟨hABC, hABH, ?_, S.2.2.2.2.2.2.2.2.2.2.2.2.2.2, S.2.1⟩
  have e1 : 8 / 73 / (c - b) ≤ a := by rw [div_le_iff₀ (by linarith)]; linarith
  have e2 : 8 / 73 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
  linarith

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point`). Equations (6)–(7), for the side
point `X = (x, y)`, with `σ = 8/73`, `M = c-b`: `[BCX] = My ≥ σ`, `[CXD] = d(x-c)-(1-c)y ≥ σ`;
`x - c ≥ σ`, `c ≤ 1-σ`, `d - y ≥ σ/(1-c)`, `d ≥ σ/M + σ/(1-c) ≥ 4σ/(1-b) > 1/2`; `h ≥ d`,
`c ≥ 4σ`, `M < 49/64`, `a, y > 1/7`, `d - y > 7/36`.
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 85-102. -/
theorem claim_side_point (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    let σ : ℝ := 8 / 73
    sarea (ptB b) (ptC c) X = (c - b) * X.2 ∧ σ ≤ (c - b) * X.2 ∧
      sarea (ptC c) X (ptD d) = d * (X.1 - c) - (1 - c) * X.2 ∧
      σ ≤ d * (X.1 - c) - (1 - c) * X.2 ∧
      σ ≤ X.1 - c ∧ c ≤ 1 - σ ∧ σ / (1 - c) ≤ d - X.2 ∧
      σ / (c - b) + σ / (1 - c) ≤ d ∧ 4 * σ / (1 - b) ≤ σ / (c - b) + σ / (1 - c) ∧
      1 / 2 < 4 * σ / (1 - b) ∧
      d ≤ h ∧ 4 * σ ≤ c ∧ c - b < 49 / 64 ∧ 1 / 7 < a ∧ 1 / 7 < X.2 ∧ 7 / 36 < d - X.2 := by
  dsimp only
  obtain ⟨S, -, -, -, -, hBCX, hCXD, -⟩ := fam_bounds hfam hmin
  obtain ⟨ha', hb8, hc4, hc1, hd2, hL, hM, hxc, hy', hdy, hMlt, hW, hd4, -⟩ := S
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, -⟩ := hfam
  have hM0 : 0 < c - b := by linarith
  have hW0 : 0 < 1 - c := by linarith
  have e1 : 8 / 73 / (c - b) ≤ X.2 := by rw [div_le_iff₀ hM0]; linarith
  have e2 : 8 / 73 / (1 - c) ≤ d - X.2 := by rw [div_le_iff₀ hW0]; linarith
  have e3 : 4 * (8 / 73) / (1 - b) ≤ 8 / 73 / (c - b) + 8 / 73 / (1 - c) := by
    rw [show 1 - b = (c - b) + (1 - c) by ring, div_add_div _ _ hM0.ne' hW0.ne',
      div_le_div_iff₀ (by positivity) (by positivity)]
    linarith [mul_nonneg (by norm_num : (0 : ℝ) ≤ 8 / 73) (sq_nonneg ((c - b) - (1 - c)))]
  have e4 : 1 / 2 < 4 * (8 / 73) / (1 - b) := by
    rw [lt_div_iff₀ (by linarith)]; linarith
  exact ⟨by simp only [sarea]; ring, hBCX, by simp only [sarea]; ring, hCXD, hxc, hc1, e2,
    by linarith, e3, e4, hdh, hc4, by linarith, by linarith, by linarith, by linarith⟩

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap`). Equations (8)–(9), for the opposite-cap
point `Y = (z, w)`, with `σ = 8/73`: `[DYF] = (1-d)(z-f)-(1-f)(1-w) = (1-f)(w-d)-(1-d)(1-z) ≥ σ`;
`d, f ≤ 1-σ`, `z - f ≥ σ`, `w - d ≥ σ`, `z - f > 2σ`, `w - d > 1/8`; `b ≤ 1-5σ < 29/64`.
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 104-120. -/
theorem claim_cap (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    let σ : ℝ := 8 / 73
    σ ≤ sarea (ptD d) Y (ptF f) ∧ d ≤ 1 - σ ∧ f ≤ 1 - σ ∧ σ ≤ Y.1 - f ∧ σ ≤ Y.2 - d ∧
      2 * σ < Y.1 - f ∧ 1 / 8 < Y.2 - d ∧ b ≤ 1 - 5 * σ ∧ 1 - 5 * σ < 29 / 64 := by
  dsimp only
  obtain ⟨-, C, -, -, -, -, -, hDYF, -⟩ := fam_bounds hfam hmin
  obtain ⟨c1, c2, c3, c4, c5, c6, c7⟩ := C
  refine ⟨?_, c1, c2, c3, c4, c5, c6, c7, by norm_num⟩
  have : sarea (ptD d) Y (ptF f) = (1 - d) * (Y.1 - f) - (1 - f) * (1 - Y.2) := by
    simp only [sarea]; ring
  rw [this]; exact hDYF

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:eq11`). The projection identities (11), for every
point `Q = (r, t)`: `(1-f)[CDQ] + (1-c)[DFQ] = {d(1-f)+(1-d)(1-c)}(1-r)` and
`(1-h)[DFQ] + (1-d)[FHQ] = {(1-h)(1-f)+(1-d)f}(1-t)`.
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 130-138. -/
theorem eq11 (h c d f : ℝ) (Q : Point) :
    (1 - f) * sarea (ptC c) (ptD d) Q + (1 - c) * sarea (ptD d) (ptF f) Q =
        (d * (1 - f) + (1 - d) * (1 - c)) * (1 - Q.1) ∧
      (1 - h) * sarea (ptD d) (ptF f) Q + (1 - d) * sarea (ptF f) (ptH h) Q =
        ((1 - h) * (1 - f) + (1 - d) * f) * (1 - Q.2) := by
  constructor <;> simp only [sarea] <;> ring

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-Q-box`). Equations (10)–(11), for `Q = (r, t)`,
with `σ = 8/73`: `σ ≤ r, t ≤ 1-σ`, `r > 1/8`, `t > 1/7`.
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 122-142. -/
theorem claim_Q_box (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    let σ : ℝ := 8 / 73
    σ ≤ Q.1 ∧ Q.1 ≤ 1 - σ ∧ σ ≤ Q.2 ∧ Q.2 ≤ 1 - σ ∧ 1 / 8 < Q.1 ∧ 1 / 7 < Q.2 :=
  (fam_bounds hfam hmin).2.2.1

/-! ### Section 3: the radial words -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-words`), restated. The four special words are in
the list, the explicit list `Model.words` of the 97 words (the leaves of the kernel-checked
enumeration `Model.enumTree`) has 97 entries, 18 of them with `r₇ < 3` (`Q` below `HC`); and `Q`
has a radial word (13) in the list, with `[HCQ] > 0` exactly when `r₇ ≥ 3`. (The manuscript counts
the Finset `octagonWords` itself; its cardinality over all `8⁸` tuples is not computed here.)
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 157-176.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-hull, SIX_BOUNDARY_SIDE_OPPOSITE:claim-empty-ABH-BCX -/
theorem claim_words :
    Model.words.length = 97 ∧ (Model.words.filter fun w => w.getD 7 0 < 3).length = 18 ∧
      word23 ∈ octagonWords ∧ word54 ∈ octagonWords ∧ word69 ∈ octagonWords ∧
      word84 ∈ octagonWords ∧
    ∀ {a h b c d f : ℝ} {X Y Q : Point}, SideOppositeFamily a h b c d f X Y Q →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
      ∃ r ∈ octagonWords, HasRadialWord (octagon a h b c d f X Y) Q (fun i => (r i : ℕ)) ∧
        (0 < sarea (ptH h) (ptC c) Q ↔ 3 ≤ (r 7 : ℕ)) := by
  have mem : ∀ r : Fin 8 → Fin 8, r ∈ octagonWords ↔ IsRadialWord (fun i => (r i : ℕ)) ∧
      2 ≤ (r 2 : ℕ) ∧ 2 ≤ (r 4 : ℕ) ∧ 2 ≤ (r 1 : ℕ) ∧ (r 1 : ℕ) ≤ 5 := by
    intro r; simp only [octagonWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and]
  refine ⟨by decide, by decide, (mem _).2 (by decide), (mem _).2 (by decide), (mem _).2 (by decide),
    (mem _).2 (by decide), fun {a h b c d f X Y Q} hfam hmin => ?_⟩
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ Q (by norm_num) hconv hpoly hgen
  have H := fam_hyp hfam hmin hr hrw
  have hb := H.hbase
  have hrange : ∀ i, r i < 8 := fun i => by have := hrw.1 i; omega
  refine ⟨fun i => ⟨r i, hrange i⟩, (mem _).2 ⟨hrw, ?_, ?_, ?_, ?_⟩, hr, ?_⟩
  · exact (hr 2 2 (by norm_num) (by norm_num)).1 hfam.2.2.2.2.2.1
  · exact (hr 4 2 (by norm_num) (by norm_num)).1 hfam.2.2.2.2.2.2.1
  · have h1 := hb ((1, 3, 8), true) (by simp [Model.pkg, Model.base])
    simp only [SFact.Holds, OrientHolds, ite_true] at h1
    exact (hr 1 2 (by norm_num) (by norm_num)).1 h1
  · have h1 := hb ((1, 7, 8), false) (by simp [Model.pkg, Model.base])
    simp only [SFact.Holds, OrientHolds, Bool.false_eq_true, ite_false] at h1
    change sarea (ptB b) (ptH h) Q < 0 at h1
    by_contra hc
    push Not at hc
    dsimp only at hc
    have h2 : 0 < sarea (ptB b) (ptH h) Q := (hr 1 6 (by norm_num) (by norm_num)).2 (by omega)
    linarith
  · exact hr 7 3 (by norm_num) (by norm_num)

end Claims

/-! ### Sections 4–6: the certificates, the branch cover and the sharp chambers -/

section Final

variable {a h b c d f : ℝ} {X Y Q : Point}

local notation "cfgS" => SixBoundarySideTwoTop.cfg
local notation "zetaS" => SixBoundarySideTwoTop.zeta

theorem word_eq {r : Fin 8 → Fin 8} {n : ℕ}
    (hwr : ∀ i (hi : i < 8), (r ⟨i, hi⟩ : ℕ) = (Model.words.getD n []).getD i 0)
    {w : Fin 8 → Fin 8} (hw : ∀ i : Fin 8, (Model.words.getD n []).getD i 0 = w i) : r = w :=
  funext fun i => Fin.ext ((hwr i.1 i.2).trans (hw i))

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-certificate`). The certificate package
(`docs/proof/nine/six_boundary_side_opposite_certificates.json`, verified by
`docs/proof/nine/check_six_boundary_side_opposite.py`): every word of the list other than 23, 54, 69, 84 is
impossible. In the manuscript each of these 93 words has one fixed rational cubic (scale 4096) in
the 32 affine factors (12) and the 94 quadratic costs (16) (signed areas minus `σ` or `3σ`,
`W - 4σ | 2σ`, `hc - 4σ | 7/11`, `3σ - [ABH]`, `3σ - [BCX]`, `13/16 - [ear]`), nonnegative on its
word and with cube bound (18) below `-3/4`. Here each certificate is checked by the kernel on the
atoms of `Model.pkg` (`Heilbronn.Nine.SixBoundary.SideOppositeTrees*`); the words 69 and 84 are
covered too. `docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 198-276.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-anchor, SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap, SIX_BOUNDARY_SIDE_OPPOSITE:claim-Q-box,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-empty-ABH-BCX, SIX_BOUNDARY_SIDE_OPPOSITE:claim-ears,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-hc-lower -/
theorem claim_certificate (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    ∀ r ∈ octagonWords, r ≠ word23 → r ≠ word54 → r ≠ word69 → r ≠ word84 →
      ¬ HasRadialWord (octagon a h b c d f X Y) Q (fun i => (r i : ℕ)) := by
  intro r hr h23 h54 _ _ hrad
  have hrw : IsRadialWord (fun i => (r i : ℕ)) := by
    simp only [octagonWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and] at hr
    exact hr.1
  obtain ⟨n, hn, hwr⟩ := word_index hfam hmin hrad hrw
  refine leaf_false hfam hmin hrad hrw hn ?_ ?_ hwr
  · rintro rfl; exact h23 (word_eq hwr (by decide))
  · rintro rfl; exact h54 (word_eq hwr (by decide))

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-branch-cover`). The branch table of Section 4:
words 69 and 84 are impossible (branches `x_low`, `y_low` and the joint `x_high, y_high`; the
joint branch of word 84 is the single quartic); word 23 is confined to
`x > z, w > h, 11/20 < h-a < 2/3, z-f > 11/20, f < 1/4, c > 2/3`; word 54 to `x > z, w > h`
(writing `X = (x,y)`, `Y = (z,w)`). `docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 212-276.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-certificate -/
theorem claim_branch_cover (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    ¬ HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word69 i : ℕ)) ∧
      ¬ HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word84 i : ℕ)) ∧
      (HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word23 i : ℕ)) →
        Y.1 < X.1 ∧ h < Y.2 ∧ 11 / 20 < h - a ∧ h - a < 2 / 3 ∧ 11 / 20 < Y.1 - f ∧
          f < 1 / 4 ∧ 2 / 3 < c) ∧
      (HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word54 i : ℕ)) →
        Y.1 < X.1 ∧ h < Y.2) := by
  refine ⟨fun hrad => leaf_false hfam hmin hrad (by decide) (n := 69) (by norm_num) (by norm_num)
      (by norm_num) (by intro i hi; interval_cases i <;> rfl),
    fun hrad => leaf_false hfam hmin hrad (by decide) (n := 84) (by norm_num) (by norm_num)
      (by norm_num) (by intro i hi; interval_cases i <;> rfl), fun hrad => ?_, fun hrad => ?_⟩
  · have R := fun (j : ℕ) (hj : j < 7)
      (he : 0 ≤ (Model.res23.getD j 0).eval (zetaS a h b c d f X Y Q)) =>
      res_false hfam hmin hrad (by decide) (n := 23) (by intro i hi; interval_cases i <;> rfl)
        (Model.res23_ok j hj) he
    by_contra hres
    have hcase : X.1 ≤ Y.1 ∨ Y.2 ≤ h ∨ h - a ≤ 11 / 20 ∨ 2 / 3 ≤ h - a ∨ Y.1 - f ≤ 11 / 20 ∨
        1 / 4 ≤ f ∨ c ≤ 2 / 3 := by
      by_contra hc; push Not at hc; exact hres hc
    rcases hcase with h1 | h1 | h1 | h1 | h1 | h1 | h1
    · exact R 0 (by norm_num) (by
        simp only [Model.res23, List.getD_cons_zero, eval_minus, eval_v,
          SixBoundarySideTwoTop.zeta]; linarith)
    · exact R 1 (by norm_num) (by
        simp only [Model.res23, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
          SixBoundarySideTwoTop.zeta]; linarith)
    · exact R 2 (by norm_num) (by
        simp only [Model.res23, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
          eval_k, SixBoundarySideTwoTop.zeta]; push_cast; linarith)
    · exact R 3 (by norm_num) (by
        simp only [Model.res23, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
          eval_k, SixBoundarySideTwoTop.zeta]; push_cast; linarith)
    · exact R 4 (by norm_num) (by
        simp only [Model.res23, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
          eval_k, SixBoundarySideTwoTop.zeta]; push_cast; linarith)
    · exact R 5 (by norm_num) (by
        simp only [Model.res23, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
          eval_k, SixBoundarySideTwoTop.zeta]; push_cast; linarith)
    · exact R 6 (by norm_num) (by
        simp only [Model.res23, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
          eval_k, SixBoundarySideTwoTop.zeta]; push_cast; linarith)
  · have R := fun (j : ℕ) (hj : j < 2)
      (he : 0 ≤ (Model.res54.getD j 0).eval (zetaS a h b c d f X Y Q)) =>
      res_false hfam hmin hrad (by decide) (n := 54) (by intro i hi; interval_cases i <;> rfl)
        (Model.res54_ok j hj) he
    by_contra hres
    have hcase : X.1 ≤ Y.1 ∨ Y.2 ≤ h := by
      by_contra hc; push Not at hc; exact hres hc
    rcases hcase with h1 | h1
    · exact R 0 (by norm_num) (by
        simp only [Model.res54, List.getD_cons_zero, eval_minus, eval_v,
          SixBoundarySideTwoTop.zeta]; linarith)
    · exact R 1 (by norm_num) (by
        simp only [Model.res54, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
          SixBoundarySideTwoTop.zeta]; linarith)

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-word23-DF`). In the residual region of word 23,
with the sharp labels `(A',B',C',D',E',F',G',H',O') = (A,B,C,X,D,Y,F,H,Q)`, the configuration is
the D/F-moving chamber of `SHARP_DF_MOVING.md` with `r' = 1-x`, `d' = y`, `e' = d`, `f' = z`,
`k' = w`, `g' = f`, `O' = Q`: all hypotheses (1)–(2) of that theorem hold and its eleven oriented
doubled areas are positive. (The order `f' = z < 1` comes from `z < x ≤ 1`.)
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 280-297.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point, SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap -/
theorem claim_word23_DF (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hw : HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word23 i : ℕ)))
    (hres : Y.1 < X.1 ∧ h < Y.2 ∧ 11 / 20 < h - a ∧ h - a < 2 / 3 ∧ 11 / 20 < Y.1 - f ∧
      f < 1 / 4 ∧ 2 / 3 < c) :
    SharpDFMoving.DFMovingHyp a b c X.2 d Y.1 f h (1 - X.1) Y.2 Q.1 Q.2 ∧
      InChamber (SharpDFMoving.dfMovingConfig a b c X.2 d Y.1 f h (1 - X.1) Y.2 Q.1 Q.2) ∧
      SharpDFMoving.dfMovingConfig a b c X.2 d Y.1 f h (1 - X.1) Y.2 Q.1 Q.2 =
        sharpConfig (ptA a) (ptB b) (ptC c) X (ptD d) Y (ptF f) (ptH h) Q := by
  obtain ⟨S, C, I, -⟩ := fam_bounds hfam hmin
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  obtain ⟨r1, r2, r3, r4, r5, r6, r7⟩ := hres
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, ⟨⟨x0, x1, y0, y1⟩, -⟩,
    ⟨⟨e0, e1, e2, e3⟩, -⟩, -⟩ := hfam
  have ceq : SharpDFMoving.dfMovingConfig a b c X.2 d Y.1 f h (1 - X.1) Y.2 Q.1 Q.2 =
      sharpConfig (ptA a) (ptB b) (ptC c) X (ptD d) Y (ptF f) (ptH h) Q := by
    funext i; fin_cases i <;> simp [SharpDFMoving.dfMovingConfig, sharpConfig]
  refine ⟨⟨⟨ha, hah, hh, hb, hbc, hc, by linarith [S.2.2.2.2.2.2.2.2.1],
      by linarith [S.2.2.2.2.2.2.2.2.2.1], by linarith [C.1], by linarith, by linarith,
      by linarith⟩, by linarith, by linarith, r2.le, e3,
      ⟨r3.le, r4.le, r5.le, r6.le, r7.le⟩,
      ⟨by linarith [I.1], by linarith [I.2.1], by linarith [I.2.2.1], by linarith [I.2.2.2.1]⟩⟩,
    ?_, ceq⟩
  rw [ceq]
  have cv := hconv
  have w6 : 0 < sarea (ptA a) X Q := (hw 0 3 (by norm_num) (by norm_num)).2 (by decide)
  have w7 : 0 < sarea X (ptH h) Q := (hw 3 4 (by norm_num) (by norm_num)).2 (by decide)
  have w8 : sarea (ptB b) (ptD d) Q < 0 := by
    have k := hw 1 3 (by norm_num) (by norm_num)
    have hne : sarea (ptB b) (ptD d) Q ≠ 0 := hgen 1 4 (by decide)
    have : ¬ 0 < sarea (ptB b) (ptD d) Q := fun h' => absurd (k.1 h') (by decide)
    exact lt_of_le_of_ne (not_lt.1 this) hne
  have w9 : 0 < sarea (ptF f) (ptC c) Q := (hw 6 4 (by norm_num) (by norm_num)).2 (by decide)
  have w10 : 0 < sarea (ptC c) Y Q := (hw 2 3 (by norm_num) (by norm_num)).2 (by decide)
  have c1 : 0 < sarea (ptA a) (ptB b) (ptH h) := cv 0 1 7 (by decide) (by decide)
  have c2 : 0 < sarea (ptA a) (ptB b) (ptC c) := cv 0 1 2 (by decide) (by decide)
  have c3 : 0 < sarea (ptA a) (ptF f) (ptH h) := cv 0 6 7 (by decide) (by decide)
  have c4 : 0 < sarea X (ptD d) Y := cv 3 4 5 (by decide) (by decide)
  have c5 : 0 < sarea Y (ptF f) (ptH h) := cv 5 6 7 (by decide) (by decide)
  have c6 : 0 < sarea (ptD d) Y (ptF f) := cv 4 5 6 (by decide) (by decide)
  intro i
  fin_cases i
  · exact c1
  · exact c2
  · exact c3
  · exact c4
  · show 0 < sarea (ptF f) (ptH h) Y
    simp only [sarea] at c5 ⊢; linarith
  · show 0 < sarea (ptF f) (ptD d) Y
    simp only [sarea] at c6 ⊢; linarith
  · exact w6
  · exact w7
  · show 0 < sarea (ptB b) Q (ptD d)
    simp only [sarea] at w8 ⊢; linarith
  · exact w9
  · show 0 < sarea Q (ptC c) Y
    simp only [sarea] at w10 ⊢; linarith

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-word54-BD`). In the residual region of word 54,
after the rotation `R(u,v) = (v,1-u)` and the labels
`(A',…,O') = (R(C),R(X),R(D),R(Y),R(F),R(H),R(A),R(B),R(Q))`, i.e. (19)
`A' = (0,1-c)`, `B' = (y,1-x)`, `C' = (d,0)`, `D' = (w,1-z)`, `E' = (1,1-f)`, `F' = (h,1)`,
`G' = (a,1)`, `H' = (0,1-b)`, `O' = (t,1-r)`, the configuration is the B/D-moving chamber of
`SHARP_BD_MOVING.md` with `t' = 1-x ≤ d' = 1-z` and `r' = 1-w ≤ 1-f' = 1-h`: all its hypotheses
(1) hold and its eleven oriented doubled areas are positive. (The order `d' = 1-z > 0` comes from
`z < x ≤ 1`.) `docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 299-319.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point, SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap -/
theorem claim_word54_BD (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hw : HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word54 i : ℕ)))
    (hres : Y.1 < X.1 ∧ h < Y.2) :
    SharpBDMoving.BDMovingHyp (1 - c) X.2 d (1 - Y.1) (1 - f) h a (1 - b) (1 - X.1) (1 - Y.2)
        Q.2 (1 - Q.1) ∧
      InChamber (SharpBDMoving.bdMovingConfig (1 - c) X.2 d (1 - Y.1) (1 - f) h a (1 - b)
        (1 - X.1) (1 - Y.2) Q.2 (1 - Q.1)) ∧
      SharpBDMoving.bdMovingConfig (1 - c) X.2 d (1 - Y.1) (1 - f) h a (1 - b) (1 - X.1)
          (1 - Y.2) Q.2 (1 - Q.1) =
        rotation.apply ∘
          sharpConfig (ptC c) X (ptD d) Y (ptF f) (ptH h) (ptA a) (ptB b) Q := by
  obtain ⟨S, C, I, -⟩ := fam_bounds hfam hmin
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  obtain ⟨r1, r2⟩ := hres
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, ⟨⟨x0, x1, y0, y1⟩, -⟩,
    ⟨⟨e0, e1, e2, e3⟩, -⟩, -⟩ := hfam
  have ceq : SharpBDMoving.bdMovingConfig (1 - c) X.2 d (1 - Y.1) (1 - f) h a (1 - b) (1 - X.1)
      (1 - Y.2) Q.2 (1 - Q.1) =
      rotation.apply ∘ sharpConfig (ptC c) X (ptD d) Y (ptF f) (ptH h) (ptA a) (ptB b) Q := by
    funext i; fin_cases i <;> simp [SharpBDMoving.bdMovingConfig, sharpConfig, rotation,
      SquareSymmetry.apply]
  refine ⟨⟨⟨by linarith, by linarith, by linarith, by linarith [S.2.2.2.2.2.2.2.2.1],
      by linarith [S.2.2.2.2.2.2.2.2.2.1], by linarith [C.1], by linarith, by linarith,
      by linarith, ha, hah, hh⟩, by linarith, by linarith, by linarith, by linarith,
      ⟨by linarith [I.2.2.1], by linarith [I.2.2.2.1], by linarith [I.2.1], by linarith [I.1]⟩⟩,
    ?_, ceq⟩
  rw [ceq]
  have cv := hconv
  have w6 : 0 < sarea (ptC c) Y Q := (hw 2 3 (by norm_num) (by norm_num)).2 (by decide)
  have w7 : 0 < sarea Y (ptB b) Q := (hw 5 4 (by norm_num) (by norm_num)).2 (by decide)
  have w8 : sarea X (ptF f) Q < 0 := by
    have k := hw 3 3 (by norm_num) (by norm_num)
    have hne : sarea X (ptF f) Q ≠ 0 := hgen 3 6 (by decide)
    have : ¬ 0 < sarea X (ptF f) Q := fun h' => absurd (k.1 h') (by decide)
    exact lt_of_le_of_ne (not_lt.1 this) hne
  have w9 : 0 < sarea (ptA a) (ptD d) Q := (hw 0 4 (by norm_num) (by norm_num)).2 (by decide)
  have w10 : 0 < sarea (ptD d) (ptH h) Q := (hw 4 3 (by norm_num) (by norm_num)).2 (by decide)
  have c1 : 0 < sarea (ptB b) (ptC c) X := cv 1 2 3 (by decide) (by decide)
  have c2 : 0 < sarea (ptC c) X (ptD d) := cv 2 3 4 (by decide) (by decide)
  have c3 : 0 < sarea (ptA a) (ptB b) (ptC c) := cv 0 1 2 (by decide) (by decide)
  have c4 : 0 < sarea Y (ptF f) (ptH h) := cv 5 6 7 (by decide) (by decide)
  have c5 : 0 < sarea (ptA a) (ptB b) (ptH h) := cv 0 1 7 (by decide) (by decide)
  have c6 : 0 < sarea (ptA a) (ptF f) (ptH h) := cv 0 6 7 (by decide) (by decide)
  have rot : ∀ (P : Fin 9 → Point) (i : Fin 11),
      chamberSarea (rotation.apply ∘ P) i = chamberSarea P i := fun P i => by
    simp only [chamberSarea, Function.comp_apply, rotation, SquareSymmetry.apply, ite_true,
      Bool.false_eq_true, ite_false]
    exact sarea_rotate _ _ _
  intro i
  rw [rot]
  fin_cases i
  · show 0 < sarea (ptC c) X (ptB b)
    simp only [sarea] at c1 ⊢; linarith
  · exact c2
  · show 0 < sarea (ptC c) (ptA a) (ptB b)
    simp only [sarea] at c3 ⊢; linarith
  · exact c4
  · exact c5
  · exact c6
  · exact w6
  · exact w7
  · show 0 < sarea X Q (ptF f)
    simp only [sarea] at w8 ⊢; linarith
  · exact w9
  · show 0 < sarea Q (ptD d) (ptH h)
    simp only [sarea] at w10 ⊢; linarith

/-- The word-23 branch: the D/F sharp chamber. -/
theorem sharp23 (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hw : HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word23 i : ℕ))) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
        IsOptimal (nConfig a h b c d f X Y Q) ∧ X.1 = 1 ∧ Y.2 = 1) := by
  have hres := (claim_branch_cover hfam hmin).2.2.1 hw
  obtain ⟨hyp, hch, ceq⟩ := claim_word23_DF hfam hmin hw hres
  have K := SharpDFMoving.theorem1 hyp hch
  have hP : sharpConfig (ptA a) (ptB b) (ptC c) X (ptD d) Y (ptF f) (ptH h) Q =
      nConfig a h b c d f X Y Q ∘ SixBoundarySideTwoTop.nIdx := by
    funext i; fin_cases i <;> rfl
  rw [ceq, hP] at K
  have hinj := SixBoundarySideTwoTop.nIdx_injective
  refine ⟨?_, fun hA => ?_⟩
  · obtain ⟨i, hi⟩ := K.1; exact min_le_of_chamber hinj hi
  · obtain ⟨hr, hk, hopt⟩ := K.2 (chamber_ge_of_min hinj hA)
    refine ⟨⟨⟨false, false, false⟩, Equiv.ofBijective _ ⟨hinj, Finite.surjective_of_injective hinj⟩,
      fun i => ?_⟩, by linarith, hk⟩
    have := congrFun hopt i
    simp only [Function.comp_apply] at this
    show nConfig a h b c d f X Y Q (SixBoundarySideTwoTop.nIdx i) = _
    rw [this]
    simp [SquareSymmetry.apply]

/-- The word-54 branch: the B/D sharp chamber after the rotation. -/
theorem sharp54 (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hw : HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word54 i : ℕ))) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
        IsOptimal (nConfig a h b c d f X Y Q) ∧ X.1 = 1 ∧ Y.2 = 1) := by
  have hres := (claim_branch_cover hfam hmin).2.2.2 hw
  obtain ⟨hyp, hch, ceq⟩ := claim_word54_BD hfam hmin hw hres
  have K := SharpBDMoving.theorem1 hyp hch
  set τ : Fin 9 → Fin 9 := ![3, 6, 4, 7, 5, 1, 0, 2, 8] with hτ
  have hinj : Function.Injective τ := by rw [hτ]; decide
  have hP : sharpConfig (ptC c) X (ptD d) Y (ptF f) (ptH h) (ptA a) (ptB b) Q =
      nConfig a h b c d f X Y Q ∘ τ := by
    funext i; fin_cases i <;> rfl
  rw [ceq, hP] at K
  have harea : ∀ i, chamberArea (rotation.apply ∘ (nConfig a h b c d f X Y Q ∘ τ)) i =
      chamberArea (nConfig a h b c d f X Y Q ∘ τ) i := by
    intro i
    simp only [chamberArea, triangleArea_eq, Function.comp_apply]
    congr 2
    simp only [rotation, SquareSymmetry.apply, ite_true, Bool.false_eq_true, ite_false]
    exact sarea_rotate _ _ _
  refine ⟨?_, fun hA => ?_⟩
  · obtain ⟨i, hi⟩ := K.1; rw [harea] at hi; exact min_le_of_chamber hinj hi
  · obtain ⟨ht, hr, hopt⟩ := K.2 (fun i => by rw [harea]; exact chamber_ge_of_min hinj hA i)
    refine ⟨⟨⟨true, true, false⟩, Equiv.ofBijective _ ⟨hinj, Finite.surjective_of_injective hinj⟩,
      fun i => ?_⟩, by linarith, by linarith⟩
    have := congrFun hopt i
    simp only [Function.comp_apply] at this
    show nConfig a h b c d f X Y Q (τ i) = _
    rw [← this]
    simp [rotation, SquareSymmetry.apply]

/-- **Theorem 1** (`SIX_BOUNDARY_SIDE_OPPOSITE:Theorem1`). Throughout N6-04 (N anchors, `X` in
the side cap `CD(1,0)`, `Y` in the opposite cap `DF(1,1)`, `Q` strictly inside the anchor
hexagon), the minimum ordinary triangle area is at most `A₀`. If all actual triangle areas are at
least `A₀`, the configuration is an isometric copy of the equality configuration of
`HAND_PROOF.md`, and both cap points lie on the square boundary (`x = 1`, `w = 1`).
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 20-36, 321-323.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-hull, SIX_BOUNDARY_SIDE_OPPOSITE:claim-empty-ABH-BCX,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-ears, SIX_BOUNDARY_SIDE_OPPOSITE:claim-anchor,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point, SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-Q-box, SIX_BOUNDARY_SIDE_OPPOSITE:claim-words,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-hc-lower, SIX_BOUNDARY_SIDE_OPPOSITE:claim-certificate,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-branch-cover, SIX_BOUNDARY_SIDE_OPPOSITE:claim-word23-DF,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-word54-BD, SHARP_DF_MOVING:Theorem1, SHARP_BD_MOVING:Theorem1 -/
theorem theorem1 (hfam : SideOppositeFamily a h b c d f X Y Q) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
        IsOptimal (nConfig a h b c d f X Y Q) ∧ X.1 = 1 ∧ Y.2 = 1) := by
  by_cases h4 : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)
  swap
  · push Not at h4
    have := A₀_bounds.2.1
    exact ⟨by linarith, fun h => absurd (h.trans_lt h4) (by linarith)⟩
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam h4
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ Q (by norm_num) hconv hpoly hgen
  obtain ⟨n, hn, hwr⟩ := word_index hfam h4 hr hrw
  by_cases h23 : n = 23
  · subst h23
    have e : r = fun i => (word23 i : ℕ) := funext fun i => (hwr i.1 i.2).trans (by
      fin_cases i <;> rfl)
    subst e
    exact sharp23 hfam h4 hr
  by_cases h54 : n = 54
  · subst h54
    have e : r = fun i => (word54 i : ℕ) := funext fun i => (hwr i.1 i.2).trans (by
      fin_cases i <;> rfl)
    subst e
    exact sharp54 hfam h4 hr
  exact (leaf_false hfam h4 hr hrw hn h23 h54 hwr).elim

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-transposed`). Theorem 1 for the transposed
placement (lines 15-16): `X` in the left side cap `FH(0,1)`, `Y` in `DF(1,1)`, `Q` inside the
hexagon; at equality `X` is on the top side and `Y` on the right side.
`docs/proof/nine/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 15-16.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:Theorem1, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem1_transposed (hN : NAnchors a h b c d f)
    (hX : InCapL f h X) (hY : InCapT d f Y) (hQ : InHexagon a h b c d f Q) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
        IsOptimal (nConfig a h b c d f X Y Q) ∧ X.2 = 1 ∧ Y.1 = 1) := by
  have T := claim_transposition a h b c d f X Y Q
  have k := theorem1 ⟨T.1.1 hN, T.2.2.2.2.2.2.1.1 hX,
    (claim_transposition a h b c d f Y X Q).2.2.2.2.2.2.2.1.1 hY,
    (claim_transposition a h b c d f Q X Y).2.2.2.2.2.2.2.2.2.1.1 hQ⟩
  rw [T.2.2.1] at k
  refine ⟨k.1, fun hA => ?_⟩
  obtain ⟨hopt, h1, h2⟩ := k.2 hA
  exact ⟨T.2.2.2.1.1 hopt, h1, h2⟩

end Final

end Heilbronn.Nine.SixBoundarySideOpposite
