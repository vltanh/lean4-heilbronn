module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexTrees
public import Heilbronn.Nine.SixBoundary.TwoTopConvexEnum
public import Heilbronn.Nine.SixBoundary.TwoTopConvexHull
public import Heilbronn.Nine.SixBoundary.Hull
public import Heilbronn.Nine.Sharp.EFMoving

/-! # Two opposite-cap vertices and one anchor-interior point in N
(`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`)

**Role.** Primary route: the convex-cap-hull branch of the six-boundary occupancy N6-06
`(n_L,n_T,n_R;n_I) = (0,2,0;1)` of `docs/proof/nine/UNRESTRICTED.md`, Section 4 (sharp: its only equality
branch, word 31, is the E/F chamber of `SHARP_EF_MOVING`); assembled with
`SIX_BOUNDARY_TWO_TOP_TRIANGULAR` in `SIX_BOUNDARY_TWO_TOP_COMPLETION`.

**Setting.** The N anchors (`NAnchors`, (1)); `E = (e_x,e_y)` and `G = (g_x,g_y)` in the opposite
cap `T = DF(1,1)` (`InCapT`; strictly beyond `DF` under a positive minimum), with `D, E, G, F`
strictly convex in this counterclockwise order (`IsConvexCCW ![D, E, G, F]`); `O = (x,y)`
strictly inside the anchor hexagon. Cap points on a square side are allowed. The configuration
is `nConfig a h b c d f E G O`. Competitive assumption: every actual area is at least `A₀`; the
cubic part uses only `σ = 8/73 < 2A₀` (hypothesis `4/73 ≤ minTriangleArea`). Transposition
exchanges the upper anchors and reverses the cap chain, so relabelling `E, G` permits `f ≤ d`
(2); the claims that use it carry the hypothesis `f ≤ d`. Notation `L = h-a`, `M = c-b`,
`δ = (1-d)(1-f)`, `W = 1-(h-d)(c-f)`; the full hull is the octagon
`(V₀,…,V₇) = (A,B,C,D,E,G,F,H)` (`octagon`) with `O` inside.

**Results.**
* `mainTheorem` (the note's unnumbered Theorem): minimum `≤ A₀`; at equality `e_x = g_y = 1` and
  the configuration is the sharp configuration up to symmetry and relabelling (`IsOptimal`).
* `claim_hull`, `claim_anchor` (4)–(5), `claim_delta` (6), `claim_box` (7), `claim_cap` (8)–(9),
  `claim_order` (10)–(11), `claim_O_box` (12)–(13), `claim_ears` (14), `claim_W_hc` (15).
* `claim_words`: exactly 94 octagon words with `w₃ ≥ 3`; `O` has one, upper iff `w₇ ≥ 3`.
* `claim_certificate`: with `f ≤ d`, all words other than 31 and 66 are impossible.
* `claim_branches`: word 66 is impossible (split `x ≤ 1/2`, `x ≥ 1/2`); word 31 lies in the
  neighbourhood (20).
* `claim_sharp_map` (24)–(25): on (20), word 31 is the E/F-moving sharp chamber.

Implicit in the manuscript: the claims are stated under `4/73 ≤ minTriangleArea` and, where
used, `f ≤ d`. The manuscript derives `d < 255/511` strictly (line 100) but records `≤` (line
105); the weak form is stated.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryTwoTopConvex

open Heilbronn.Nine.SixBoundary Heilbronn.Nine.SharpBCMoving SixRadial Cover Cert Cert.Expr

/-- The full hull (3): the octagon `(V₀, …, V₇) = (A, B, C, D, E, G, F, H)`. -/
def octagon (a h b c d f : ℝ) (E G : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, ptD d, E, G, ptF f, ptH h]

/-- The convex-hull branch of N6-06: N anchors, `E, G` in the opposite cap `DF(1,1)` with
`D, E, G, F` strictly convex counterclockwise, and `O` strictly inside the anchor hexagon. -/
def ConvexFamily (a h b c d f : ℝ) (E G O : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapT d f E ∧ InCapT d f G ∧ IsConvexCCW ![ptD d, E, G, ptF f] ∧
    InHexagon a h b c d f O

/-- The 94 radial words (16)–(18) of `O`: octagon words with the `DF` test `w₃ ≥ 3`. -/
def convexWords : Finset (Fin 8 → Fin 8) :=
  (radialWords 8).filter fun r => 3 ≤ (r 3 : ℕ)

/-- Word 31, `w* = (3,2,3,4,5,4,4,3)` (19). -/
def word31 : Fin 8 → Fin 8 := ![3, 2, 3, 4, 5, 4, 4, 3]

/-- Word 66, `(4,4,4,4,3,3,3,3)`. -/
def word66 : Fin 8 → Fin 8 := ![4, 4, 4, 4, 3, 3, 3, 3]

/-- The closed neighbourhood (20): `11/20 ≤ h-a ≤ 2/3`, `g_x - f ≥ 11/20`, `f ≤ 1/4`,
`c ≥ 2/3`, `g_y ≥ h`. -/
def Neighbourhood20 (a h c f : ℝ) (G : Point) : Prop :=
  11 / 20 ≤ h - a ∧ h - a ≤ 2 / 3 ∧ 11 / 20 ≤ G.1 - f ∧ f ≤ 1 / 4 ∧ 2 / 3 ≤ c ∧ h ≤ G.2


/-! ### The configuration as model points -/

/-- The nine points `A, B, C, D, E, G, F, H, O`, indexed as in the model. -/
def cfg (a h b c d f : ℝ) (E G O : Point) : ℕ → Point
  | 0 => (0, a)
  | 1 => (b, 0)
  | 2 => (c, 0)
  | 3 => (1, d)
  | 4 => E
  | 5 => G
  | 6 => (f, 1)
  | 7 => (0, h)
  | 8 => O
  | _ => (0, 0)

/-- The variables `a, h, b, c, d, f, e_x, e_y, g_x, g_y, x, y` (`0` beyond). -/
def zeta (a h b c d f : ℝ) (E G O : Point) : ℕ → ℝ
  | 0 => a
  | 1 => h
  | 2 => b
  | 3 => c
  | 4 => d
  | 5 => f
  | 6 => E.1
  | 7 => E.2
  | 8 => G.1
  | 9 => G.2
  | 10 => O.1
  | 11 => O.2
  | _ => 0

/-- The position in `nConfig` of the model point `i`. -/
def nIdx : Fin 9 → Fin 9 := ![0, 2, 3, 4, 6, 7, 5, 1, 8]

theorem nIdx_injective : Function.Injective nIdx := by decide

section Model

variable {a h b c d f : ℝ} {E G O : Point}

theorem cfg_eq (i : Fin 9) : cfg a h b c d f E G O i = nConfig a h b c d f E G O (nIdx i) := by
  fin_cases i <;> rfl

theorem cfg_oct (i : ℕ) (hi : i < 8) :
    cfg a h b c d f E G O i = octagon a h b c d f E G ⟨i, hi⟩ := by
  interval_cases i <;> rfl

theorem octV_eq (i : Fin 8) : octV a h b c d f E.1 E.2 G.1 G.2 i = cfg a h b c d f E G O i := by
  fin_cases i <;> rfl

theorem ptEval_zeta (i : ℕ) :
    ptEval (zeta a h b c d f E G O) Model.pt i = cfg a h b c d f E G O i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [ptEval, Model.pt, zeta, cfg]

theorem cfg_area (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    8 / 73 ≤ |sarea (cfg a h b c d f E G O i) (cfg a h b c d f E G O j)
      (cfg a h b c d f E G O k)| := by
  have e := fun (n : ℕ) (hn : n < 9) => cfg_eq (a := a) (h := h) (b := b) (c := c) (d := d)
    (f := f) (E := E) (G := G) (O := O) ⟨n, hn⟩
  simp only at e
  rw [e i hi, e j hj, e k hk]
  have hne : ∀ {m n : ℕ} (hm : m < 9) (hn : n < 9), m ≠ n → nIdx ⟨m, hm⟩ ≠ nIdx ⟨n, hn⟩ :=
    fun hm hn hmn h => hmn (by have := nIdx_injective h; simpa using this)
  exact nConfig_area hmin _ _ _ (hne hi hj hij) (hne hj hk hjk) (hne hi hk hik)

theorem area_ge (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) {V : ℝ}
    (e : sarea (cfg a h b c d f E G O i) (cfg a h b c d f E G O j) (cfg a h b c d f E G O k) = V)
    (hV : 0 ≤ V) : 8 / 73 ≤ V := by
  have := cfg_area hmin hi hj hk hij hjk hik
  rwa [e, abs_of_nonneg hV] at this

/-- The cap bounds (8)–(9) of a cap point `Z` from `[DZF] ≥ σ`. -/
theorem capZ_bounds {d f zx zy : ℝ} (hd8 : 1 / 8 < d) (hd1 : d < 1) (hf8 : 1 / 8 < f) (hf1 : f < 1)
    (hzx : zx ≤ 1) (hzy : zy ≤ 1) (hDZF : 8 / 73 ≤ (1 - d) * (zx - f) - (1 - f) * (1 - zy)) :
    64 / 511 ≤ zx - f ∧ 64 / 511 ≤ zy - d := by
  have m1 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - zy)
  have m2 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - zx)
  have e : (1 - d) * (zx - f) - (1 - f) * (1 - zy) = (1 - f) * (zy - d) - (1 - d) * (1 - zx) := by
    ring
  have hA : 8 / 73 ≤ (1 - d) * (zx - f) := by linarith
  have hB : 8 / 73 ≤ (1 - f) * (zy - d) := by linarith
  constructor
  · have := prod_le (by norm_num) (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : 1 - d ≤ 7 / 8) hA
    linarith
  · have := prod_le (by norm_num) (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : 1 - f ≤ 7 / 8) hB
    linarith

/-- The order bounds (10)–(11): `u = e_x - g_x ≥ σ`, `v = g_y - e_y ≥ σ`. (If `u ≤ 0` or `v ≤ 0`,
then both are negative, and the product of `[DEG] ≥ σ` and `[FEG] ≥ σ` contradicts
`[DEF] = (e_y-d)(e_x-f) - (1-e_x)(1-e_y) ≥ σ`.) -/
theorem order_bounds {d f ex ey gx gy : ℝ} (hex1 : ex ≤ 1) (hgy1 : gy ≤ 1) (hey1 : ey ≤ 1)
    (hed : 0 < ey - d) (hef : 0 < ex - f) (hgf : 0 < gx - f) (hed1 : ey - d ≤ 1)
    (hgf1 : gx - f ≤ 1)
    (hDEG : 8 / 73 ≤ (ex - gx) * (ey - d) - (1 - ex) * (gy - ey))
    (hEGF : 8 / 73 ≤ (gy - ey) * (gx - f) - (1 - gy) * (ex - gx))
    (hDEF : 8 / 73 ≤ (1 - d) * (ex - f) - (1 - f) * (1 - ey)) :
    8 / 73 ≤ ex - gx ∧ 8 / 73 ≤ gy - ey := by
  have hs : (0 : ℝ) < 8 / 73 := by norm_num
  have eF : (gy - ey) * (gx - f) - (1 - gy) * (ex - gx) = (ex - f) * (gy - ey) - (1 - ey) * (ex - gx) := by
    ring
  have eD : (1 - d) * (ex - f) - (1 - f) * (1 - ey) = (ey - d) * (ex - f) - (1 - ex) * (1 - ey) := by
    ring
  have key : ∀ U V : ℝ, 0 ≤ U → 0 ≤ V → 8 / 73 + U * (ey - d) ≤ (1 - ex) * V →
      8 / 73 + (ex - f) * V ≤ (1 - ey) * U → False := by
    intro U V hU hV h1 h2
    have p1 := mul_le_mul h1 h2 (by nlinarith [mul_nonneg hU hed.le])
      (by nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - ex) hV])
    have p2 := mul_le_mul_of_nonneg_left (show 8 / 73 + (1 - ex) * (1 - ey) ≤ (ey - d) * (ex - f) by
      linarith) (mul_nonneg hU hV)
    nlinarith [mul_nonneg hU hV, mul_nonneg (mul_nonneg hU hed.le) hV,
      mul_nonneg (mul_nonneg hV hef.le) hU]
  have hu : 0 < ex - gx := by
    by_contra hcon; push Not at hcon
    have hv : gy - ey < 0 := by
      by_contra hc; push Not at hc
      nlinarith [mul_nonpos_of_nonpos_of_nonneg hcon hed.le,
        mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - ex) hc]
    exact key (-(ex - gx)) (-(gy - ey)) (by linarith) (by linarith) (by linarith) (by linarith)
  have hv : 0 < gy - ey := by
    by_contra hcon; push Not at hcon
    exact key (-(ex - gx)) (-(gy - ey)) (by
      by_contra hc; push Not at hc
      nlinarith [mul_nonpos_of_nonneg_of_nonpos hef.le hcon,
        mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - ey) (by linarith : (0 : ℝ) ≤ ex - gx)])
      (by linarith) (by linarith) (by linarith)
  have m1 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - ex) hv.le
  have m2 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - gy) hu.le
  constructor
  · have := prod_le hs hed.le hed1 (by linarith : 8 / 73 ≤ (ey - d) * (ex - gx)); linarith
  · have := prod_le hs hgf.le hgf1 (by linarith : 8 / 73 ≤ (gx - f) * (gy - ey)); linarith

/-- All the area costs and coordinate bounds of the family (without the normalization). -/
theorem fam_bounds (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    (1 / 8 < a ∧ 1 / 8 < b ∧ 4 * (8 / 73) ≤ h * c ∧ 8 / 73 < h - a ∧ 8 / 73 < c - b ∧
      4 * (8 / 73) ≤ h ∧ 4 * (8 / 73) ≤ c) ∧
    (64 / 511 ≤ E.1 - f ∧ 64 / 511 ≤ E.2 - d) ∧ (64 / 511 ≤ G.1 - f ∧ 64 / 511 ≤ G.2 - d) ∧
    (8 / 73 ≤ E.1 - G.1 ∧ 8 / 73 ≤ G.2 - E.2) ∧
    (8 / 73 ≤ O.1 ∧ O.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ O.2 ∧ O.2 ≤ 1 - 8 / 73) ∧
    8 / 73 ≤ a * (c - b) ∧ 8 / 73 ≤ b * (h - a) ∧
    8 / 73 ≤ (1 - d) * (E.1 - f) - (1 - f) * (1 - E.2) ∧
    8 / 73 ≤ (1 - d) * (G.1 - f) - (1 - f) * (1 - G.2) ∧
    8 / 73 ≤ (E.1 - G.1) * (E.2 - d) - (1 - E.1) * (G.2 - E.2) ∧
    8 / 73 ≤ (G.2 - E.2) * (G.1 - f) - (1 - G.2) * (E.1 - G.1) ∧
    8 / 73 ≤ (1 - c) * O.2 - d * (O.1 - c) ∧ 8 / 73 ≤ (f - 1) * (O.2 - d) - (1 - d) * (O.1 - 1) ∧
    8 / 73 ≤ f * (1 - O.2) + (1 - h) * (O.1 - f) := by
  obtain ⟨hN, ⟨⟨e0, e1, e2, e3⟩, -⟩, ⟨⟨g0, g1, g2, g3⟩, -⟩, hcv, hO⟩ := hfam
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hO
  have k1 := hcv 0 1 2 (by decide) (by decide)
  have k2 := hcv 0 1 3 (by decide) (by decide)
  have k3 := hcv 0 2 3 (by decide) (by decide)
  have k4 := hcv 1 2 3 (by decide) (by decide)
  simp only [Matrix.cons_val, Fin.isValue] at k1 k2 k3 k4
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => area_ge hmin hi hj hk hij hjk hik (V := V)
  have hABC := g (i := 0) (j := 1) (k := 2) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := a * (c - b))
    (by simp only [cfg, sarea]; ring) (by nlinarith)
  have hABH := g (i := 0) (j := 1) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := b * (h - a))
    (by simp only [cfg, sarea]; ring) (by nlinarith)
  have hDEF := g (i := 3) (j := 4) (k := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (1 - d) * (E.1 - f) - (1 - f) * (1 - E.2))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at k2; linarith)
  have hDGF := g (i := 3) (j := 5) (k := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (1 - d) * (G.1 - f) - (1 - f) * (1 - G.2))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at k3; linarith)
  have hDEG := g (i := 3) (j := 4) (k := 5) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num)
    (V := (E.1 - G.1) * (E.2 - d) - (1 - E.1) * (G.2 - E.2))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at k1; linarith)
  have hEGF := g (i := 4) (j := 5) (k := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num)
    (V := (G.2 - E.2) * (G.1 - f) - (1 - G.2) * (E.1 - G.1))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at k4; linarith)
  have hHAO := g (i := 7) (j := 0) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (h - a) * O.1)
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at q6; linarith)
  have hBCO := g (i := 1) (j := 2) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (c - b) * O.2)
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at q2; linarith)
  have hCDO := g (i := 2) (j := 3) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (1 - c) * O.2 - d * (O.1 - c))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at q3; linarith)
  have hDFO := g (i := 3) (j := 6) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (f - 1) * (O.2 - d) - (1 - d) * (O.1 - 1))
    (by simp only [cfg, sarea]) (by simp only [sarea] at q4; linarith)
  have hFHO := g (i := 6) (j := 7) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := f * (1 - O.2) + (1 - h) * (O.1 - f))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at q5; linarith)
  have A := anchor_bounds ha hah hh hb hbc hc hABC hABH
  have CE := capZ_bounds (by linarith [A.1]) (by linarith) (by linarith [A.2.1]) (by linarith)
    e1 e3 hDEF
  have CG := capZ_bounds (by linarith [A.1]) (by linarith) (by linarith [A.2.1]) (by linarith)
    g1 g3 hDGF
  have Ord := order_bounds e1 g3 e3 (by linarith [CE.2]) (by linarith [CE.1])
    (by linarith [CG.1]) (by linarith) (by linarith) hDEG hEGF hDEF
  have Ob := q_box hN hHAO hBCO hCDO hDFO hFHO
  exact ⟨A, CE, CG, Ord, Ob, hABC, hABH, hDEF, hDGF, hDEG, hEGF, hCDO, hDFO, hFHO⟩

/-- The hull octagon is strictly convex, `O` is inside, and no two hull vertices are collinear
with `O`. -/
theorem fam_hull (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    IsConvexCCW (octagon a h b c d f E G) ∧ InPolygon (octagon a h b c d f E G) O ∧
      ∀ i j : Fin 8, i ≠ j →
        sarea (octagon a h b c d f E G i) (octagon a h b c d f E G j) O ≠ 0 := by
  obtain ⟨A, CE, CG, Ord, Ob, hABC, hABH, hDEF, hDGF, hDEG, hEGF, -⟩ := fam_bounds hfam hmin
  obtain ⟨hN, ⟨⟨e0, e1, e2, e3⟩, -⟩, ⟨⟨g0, g1, g2, g3⟩, -⟩, -, hO⟩ := hfam
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have H : Hull a h b c d f E.1 E.2 G.1 G.2 := ⟨by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith [CE.1], by linarith, by linarith [CE.2], by linarith, by linarith,
    by linarith [CG.1], by linarith, by linarith [CG.2], by linarith, by linarith,
    by linarith [Ord.1], by linarith [Ord.2], by linarith, by linarith⟩
  have hconv : IsConvexCCW (octagon a h b c d f E G) := by
    have := H.convex (fun i j k hij hjk => by
      rw [octV_eq (O := O), octV_eq (O := O), octV_eq (O := O)]
      exact cfg_area hmin (by omega) (by omega) (by omega) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt hij)) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt hjk)) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt (hij.trans hjk))))
    exact this
  have hgen : ∀ i j : Fin 8, i ≠ j →
      sarea (octagon a h b c d f E G i) (octagon a h b c d f E G j) O ≠ 0 := by
    intro i j hij h0
    have := cfg_area hmin (E := E) (G := G) (O := O) (i := i.val) (j := j.val) (k := 8)
      (by omega) (by omega) (by norm_num) (fun e => hij (Fin.ext e)) (by omega) (by omega)
    rw [cfg_oct i.val i.isLt, cfg_oct j.val j.isLt, show cfg a h b c d f E G O 8 = O from rfl] at this
    simp only [Fin.eta] at this
    rw [h0, abs_zero] at this
    norm_num at this
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hO
  refine ⟨hconv, inPolygon_of_fan hconv (p0 := 0) (p1 := 1) (p2 := 2) (p3 := 3) (p4 := 6)
    (p5 := 7) (by decide) (by decide) (by decide) (by decide) (by decide) q1 q2 q3 q4 q5 q6
    (hgen 0 2 (by decide)) (hgen 0 3 (by decide)) (hgen 0 6 (by decide)), hgen⟩

end Model

/-! ### Section 1: bounds valid throughout the convex cap case -/

section Claims

variable {a h b c d f : ℝ} {E G O : Point}

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-hull`). The full hull is the strictly convex
octagon `(A, B, C, D, E, G, F, H)` (3), with `O` as its sole interior point.
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 59-69. -/
theorem claim_hull (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    IsConvexCCW (octagon a h b c d f E G) ∧ InPolygon (octagon a h b c d f E G) O :=
  ⟨(fam_hull hfam hmin).1, (fam_hull hfam hmin).2.1⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-anchor`). Equations (4)–(5), with `σ = 8/73`,
`L = h-a`, `M = c-b`: `aM ≥ σ`, `bL ≥ σ`, `h ≥ σ/M + σ/b`, `hc ≥ 4σ`, `a, b, d, f > 1/8`,
`h, c ≥ 4σ`. `docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 73-89. -/
theorem claim_anchor (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    let σ : ℝ := 8 / 73
    σ ≤ a * (c - b) ∧ σ ≤ b * (h - a) ∧ σ / (c - b) + σ / b ≤ h ∧ 4 * σ ≤ h * c ∧
      1 / 8 < a ∧ 1 / 8 < b ∧ 1 / 8 < d ∧ 1 / 8 < f ∧ 4 * σ ≤ h ∧ 4 * σ ≤ c := by
  dsimp only
  obtain ⟨A, -, -, -, -, hABC, hABH, -⟩ := fam_bounds hfam hmin
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, -⟩ := hfam
  obtain ⟨ha8, hb8, hhc, -, -, h4, c4⟩ := A
  refine ⟨hABC, hABH, ?_, hhc, ha8, hb8, by linarith, by linarith, h4, c4⟩
  have e1 : 8 / 73 / (c - b) ≤ a := by rw [div_le_iff₀ (by linarith)]; linarith
  have e2 : 8 / 73 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
  linarith

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-delta`). Equation (6): `δ = (1-d)(1-f) ≥ 4σ`
(convex four-point endpoint lemma for `D, F, E, G` in the virtual triangle `DF(1,1)`).
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 91-97.
Uses: TYPE_II:FourPointEndpointLemma -/
theorem claim_delta (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    4 * (8 / 73) ≤ (1 - d) * (1 - f) := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, hE, hG, hcv, -⟩ := hfam
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have hT := TypeII.fourPointEndpointLemma (ptD d) (ptF f) (1, 1) E G (capT_mem hd1 hf1 hE)
    (capT_mem hd1 hf1 hG)
  have hsub : 4 / 73 ≤ minTriangleArea ![ptD d, ptF f, E, G] := by
    have e : ![ptD d, ptF f, E, G] = nConfig a h b c d f E G O ∘ ![4, 5, 6, 7] := by
      funext m; fin_cases m <;> rfl
    rw [e]
    exact hmin.trans (le_min_comp (by norm_num) _ (by decide))
  have harea : triangleArea (ptD d) (ptF f) (1, 1) = (1 - d) * (1 - f) / 2 := by
    rw [triangleArea_eq, show sarea (ptD d) (ptF f) (1, 1) = -((1 - d) * (1 - f)) by
      simp only [sarea]; ring, abs_neg, abs_of_pos (by nlinarith)]
  have hq : ¬ TypeII.TriangularHull ![ptD d, ptF f, E, G] := fun ht => by
    refine quad_not_triangular (P0 := ptD d) (P1 := E) (P2 := G) (P3 := ptF f)
      (hcv 0 1 2 (by decide) (by decide)) (hcv 0 1 3 (by decide) (by decide))
      (hcv 0 2 3 (by decide) (by decide)) (hcv 1 2 3 (by decide) (by decide)) ?_
    have e : ![ptD d, E, G, ptF f] ∘ (Equiv.swap (1 : Fin 4) 2 * Equiv.swap (1 : Fin 4) 3) =
        ![ptD d, ptF f, E, G] := by
      funext m; fin_cases m <;> rfl
    exact TypeII.triangularHull_comp_perm _ _ (by rw [e]; exact ht)
  have := hT.2 hq
  rw [harea] at this
  linarith

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-box`). Equation (7), with `σ = 8/73` and the
normalization `f ≤ d`: `d ≤ 255/511`, `f ≤ 17/50`, `L ≥ 50σ/17`, `M ≥ 511σ/255`.
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 99-112. -/
theorem claim_box (hfam : ConvexFamily a h b c d f E G O)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    let σ : ℝ := 8 / 73
    d ≤ 255 / 511 ∧ f ≤ 17 / 50 ∧ 50 * σ / 17 ≤ h - a ∧ 511 * σ / 255 ≤ c - b := by
  dsimp only
  have hδ := claim_delta hfam hmin
  obtain ⟨A, -, -, -, -, hABC, hABH, -⟩ := fam_bounds hfam hmin
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, -⟩ := hfam
  have hd : d ≤ 255 / 511 := by
    have := prod_le (by norm_num) (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith [A.2.1] : 1 - f ≤ 7 / 8)
      (by linarith : 4 * (8 / 73) ≤ (1 - f) * (1 - d))
    linarith
  have hf : f ≤ 17 / 50 := by
    by_contra hcon; push Not at hcon
    have h1 : (1 - d) * (1 - f) ≤ (1 - f) * (1 - f) :=
      mul_le_mul_of_nonneg_right (by linarith) (by linarith)
    nlinarith [mul_lt_mul'' (show 1 - f < 33 / 50 by linarith) (show 1 - f < 33 / 50 by linarith)
      (by linarith) (by linarith)]
  refine ⟨hd, hf, ?_, ?_⟩
  · have := prod_le (by norm_num) hb.le (by linarith : b ≤ 17 / 50) hABH; linarith
  · have := prod_le (by norm_num) ha.le (by linarith : a ≤ 255 / 511)
      (by linarith : 8 / 73 ≤ a * (c - b))
    linarith

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-cap`). Equations (8)–(9): for either cap point
`Z ∈ {E, G}`, `[DZF] = (1-d)(z_x-f)-(1-f)(1-z_y) = (1-f)(z_y-d)-(1-d)(1-z_x) ≥ σ`, hence
`z_x - f ≥ 64/511` and `z_y - d ≥ 64/511`. `docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 114-128. -/
theorem claim_cap (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    ∀ Z ∈ ({E, G} : Set Point),
      sarea (ptD d) Z (ptF f) = (1 - d) * (Z.1 - f) - (1 - f) * (1 - Z.2) ∧
      sarea (ptD d) Z (ptF f) = (1 - f) * (Z.2 - d) - (1 - d) * (1 - Z.1) ∧
      8 / 73 ≤ sarea (ptD d) Z (ptF f) ∧ 64 / 511 ≤ Z.1 - f ∧ 64 / 511 ≤ Z.2 - d := by
  obtain ⟨-, CE, CG, -, -, -, -, hDEF, hDGF, -⟩ := fam_bounds hfam hmin
  intro Z hZ
  have e1 : sarea (ptD d) Z (ptF f) = (1 - d) * (Z.1 - f) - (1 - f) * (1 - Z.2) := by
    simp only [sarea]; ring
  have e2 : sarea (ptD d) Z (ptF f) = (1 - f) * (Z.2 - d) - (1 - d) * (1 - Z.1) := by
    simp only [sarea]; ring
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hZ
  rcases hZ with rfl | rfl
  · exact ⟨e1, e2, by rw [e1]; exact hDEF, CE.1, CE.2⟩
  · exact ⟨e1, e2, by rw [e1]; exact hDGF, CG.1, CG.2⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-order`). Equations (10)–(11): with
`u = e_x - g_x`, `v = g_y - e_y`, `[DEG] = u(e_y-d) - (1-e_x)v` and `[FEG] = v(g_x-f) - (1-g_y)u`;
their positivity and (8) force `u, v > 0`, and then `e_x - g_x ≥ σ`, `g_y - e_y ≥ σ`.
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 130-157. -/
theorem claim_order (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    sarea (ptD d) E G = (E.1 - G.1) * (E.2 - d) - (1 - E.1) * (G.2 - E.2) ∧
      sarea (ptF f) E G = (G.2 - E.2) * (G.1 - f) - (1 - G.2) * (E.1 - G.1) ∧
      0 < E.1 - G.1 ∧ 0 < G.2 - E.2 ∧ 8 / 73 ≤ E.1 - G.1 ∧ 8 / 73 ≤ G.2 - E.2 := by
  obtain ⟨-, -, -, Ord, -⟩ := fam_bounds hfam hmin
  exact ⟨by simp only [sarea]; ring, by simp only [sarea]; ring, by linarith [Ord.1],
    by linarith [Ord.2], Ord.1, Ord.2⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-O-box`). Equations (12)–(13): `σ ≤ x, y ≤ 1-σ`
for `O = (x, y)` (bases `AH`, `BC` and the identities (12), with `[CDF] ≤ 1-f`, `[DFH] ≤ 1-d`).
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 159-176. -/
theorem claim_O_box (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    8 / 73 ≤ O.1 ∧ O.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ O.2 ∧ O.2 ≤ 1 - 8 / 73 :=
  (fam_bounds hfam hmin).2.2.2.2.1

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-ears`). Equation (14): the six anchor ears
`ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< 13/16` (`SIX_BOUNDARY_HULL` Theorem 1, which
does not assume that the anchor hexagon is the full hull).
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 178-184.
Uses: SIX_BOUNDARY_HULL:Theorem1 -/
theorem claim_ears (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16 := by
  obtain ⟨o1, o2, o3, o4⟩ := claim_O_box hfam hmin
  obtain ⟨hN, hE, hG, -, -⟩ := hfam
  exact (SixBoundaryHull.theorem1 hN hE.1 hG.1 ⟨by linarith, by linarith, by linarith,
    by linarith⟩ (by linarith)).1

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-W-hc`). Equation (15) and the lines before it,
with `σ = 8/73`, `W = 1-(h-d)(c-f)`: if `O` is above `HC`, `W ≥ 4σ` and `hc ≥ 4σ`; if below,
`W ≥ 2σ` and `hc ≥ σ/(3-2√2) > (7/64)(3+2√2) > 7/11` (endpoint theorem for `H, C, A, B, O`).
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 186-207.
Uses: TYPE_II:EndpointTriangleTheorem -/
theorem claim_W_hc (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    let σ : ℝ := 8 / 73
    (0 < sarea (ptH h) (ptC c) O → 4 * σ ≤ 1 - (h - d) * (c - f) ∧ 4 * σ ≤ h * c) ∧
      (sarea (ptH h) (ptC c) O < 0 →
        2 * σ ≤ 1 - (h - d) * (c - f) ∧ σ / (3 - 2 * Real.sqrt 2) ≤ h * c ∧
          7 / 64 * (3 + 2 * Real.sqrt 2) < σ / (3 - 2 * Real.sqrt 2) ∧
          (7 / 11 : ℝ) < 7 / 64 * (3 + 2 * Real.sqrt 2)) := by
  dsimp only
  obtain ⟨A, -, -, -, Ob, -, -, -, -, -, -, hCDO, hDFO, hFHO⟩ := fam_bounds hfam hmin
  obtain ⟨hconv, -, -⟩ := fam_hull hfam hmin
  have hfam' := hfam
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, -⟩ := hfam'
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => area_ge hmin hi hj hk hij hjk hik (V := V)
  constructor
  · intro hup
    have hHCO := g (i := 7) (j := 2) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptC c) O) rfl hup.le
    have wq : 1 - (h - d) * (c - f) = sarea (ptH h) (ptC c) O + ((1 - c) * O.2 - d * (O.1 - c)) +
        ((f - 1) * (O.2 - d) - (1 - d) * (O.1 - 1)) + (f * (1 - O.2) + (1 - h) * (O.1 - f)) := by
      simp only [sarea]; ring
    exact ⟨by linarith, A.2.2.1⟩
  · intro hlow
    have hHCD := g (i := 7) (j := 2) (k := 3) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptC c) (ptD d)) rfl
      (by have := hconv 2 3 7 (by decide) (by decide); rw [sarea_cycle] at this; exact this.le)
    have hHDF := g (i := 7) (j := 3) (k := 6) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptD d) (ptF f)) rfl
      (by have := hconv 3 6 7 (by decide) (by decide); rw [sarea_cycle] at this; exact this.le)
    have w2 : 1 - (h - d) * (c - f) = sarea (ptH h) (ptC c) (ptD d) +
        sarea (ptH h) (ptD d) (ptF f) := by simp only [sarea]; ring
    have hsub : 4 / 73 ≤ minTriangleArea ![ptH h, ptC c, ptA a, ptB b, O] := by
      have e : ![ptH h, ptC c, ptA a, ptB b, O] = nConfig a h b c d f E G O ∘ ![1, 3, 0, 2, 8] := by
        funext m; fin_cases m <;> rfl
      rw [e]
      exact hmin.trans (le_min_comp (by norm_num) _ (by decide))
    have hc7 := hc_lower ha hah hb hbc (by linarith [Ob.1]) (by linarith [Ob.2.2.1]) hlow hsub
    have h2 : Real.sqrt 2 < 1.41422 := by rw [Real.sqrt_lt' (by norm_num)]; norm_num
    have h2' : 1.41421 < Real.sqrt 2 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    have hk : 0 < 3 - 2 * Real.sqrt 2 := by linarith
    refine ⟨by linarith, hc7, ?_, by nlinarith⟩
    rw [lt_div_iff₀ hk]
    nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 2 by norm_num)]

/-! ### Section 2: the complete radial-word list -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-words`), restated. The explicit list
`Model.words` of the octagon words with `w₃ ≥ 3` (the leaves of the kernel-checked enumeration
`Model.enumTree`) has 94 entries, words 31 and 66 are in `convexWords`, and `O` has a radial word
in `convexWords`, with `[HCO] > 0` exactly when `w₇ ≥ 3`. (The cardinality of the Finset
`convexWords` over all `8⁸` tuples is not computed.)
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 209-247. -/
theorem claim_words :
    Model.words.length = 94 ∧ word31 ∈ convexWords ∧ word66 ∈ convexWords ∧
    ∀ {a h b c d f : ℝ} {E G O : Point}, ConvexFamily a h b c d f E G O →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O) →
      ∃ w ∈ convexWords, HasRadialWord (octagon a h b c d f E G) O (fun i => (w i : ℕ)) ∧
        (0 < sarea (ptH h) (ptC c) O ↔ 3 ≤ (w 7 : ℕ)) := by
  have mem : ∀ r : Fin 8 → Fin 8, r ∈ convexWords ↔ IsRadialWord (fun i => (r i : ℕ)) ∧
      3 ≤ (r 3 : ℕ) := by
    intro r; simp only [convexWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and]
  refine ⟨by decide, (mem _).2 (by decide), (mem _).2 (by decide),
    fun {a h b c d f E G O} hfam hmin => ?_⟩
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ O (by norm_num) hconv hpoly hgen
  have hrange : ∀ i, r i < 8 := fun i => by have := hrw.1 i; omega
  refine ⟨fun i => ⟨r i, hrange i⟩, (mem _).2 ⟨hrw, ?_⟩, hr, hr 7 3 (by norm_num) (by norm_num)⟩
  exact (hr 3 3 (by norm_num) (by norm_num)).1 hfam.2.2.2.2.2.2.2.1

end Claims

/-! ### Section 3: the certificate cover -/

section Cover

variable {a h b c d f : ℝ} {E G O : Point}

theorem eval_tri (t : ℕ × ℕ × ℕ) :
    (Model.tri t).eval (zeta a h b c d f E G O) =
      sarea (cfg a h b c d f E G O t.1) (cfg a h b c d f E G O t.2.1)
        (cfg a h b c d f E G O t.2.2) := by
  rw [← ptEval_zeta, ← ptEval_zeta, ← ptEval_zeta]; rfl

set_option linter.unusedVariables false in
/-- The 31 affine factors are nonnegative. -/
theorem fac_nonneg (f1 : 1 / 8 ≤ a) (f2 : 1 / 8 ≤ b) (f3 : 4 * (8 / 73) ≤ h)
    (f4 : 4 * (8 / 73) ≤ c) (f5 : h ≤ 1) (f6 : c ≤ 1) (f7 : a ≤ d) (f8 : d ≤ h) (f9 : b ≤ f)
    (f10 : f ≤ c) (f11 : f ≤ d) (f12 : 1 / 8 ≤ d) (f13 : 1 / 8 ≤ f) (f14 : d ≤ 255 / 511)
    (f15 : f ≤ 17 / 50) (f16 : 50 * (8 / 73) / 17 ≤ h - a) (f17 : 511 * (8 / 73) / 255 ≤ c - b)
    (f18 : 64 / 511 ≤ E.1 - f) (f19 : 64 / 511 ≤ E.2 - d) (f20 : E.1 ≤ 1) (f21 : E.2 ≤ 1)
    (f22 : 64 / 511 ≤ G.1 - f) (f23 : 64 / 511 ≤ G.2 - d) (f24 : G.1 ≤ 1) (f25 : G.2 ≤ 1)
    (f26 : 8 / 73 ≤ E.1 - G.1) (f27 : 8 / 73 ≤ G.2 - E.2) (f28 : 8 / 73 ≤ O.1)
    (f29 : O.1 ≤ 1 - 8 / 73) (f30 : 8 / 73 ≤ O.2) (f31 : O.2 ≤ 1 - 8 / 73) :
    ∀ e ∈ Model.factors, 0 ≤ e.eval (zeta a h b c d f E G O) := by
  simp only [Model.factors, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

/-- The nine costs are nonnegative. -/
theorem extra_nonneg (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) {tb : List SFact}
    (htb : AllHold (SFact.Holds (cfg a h b c d f E G O)) tb) :
    ∀ e ∈ Model.extra tb, 0 ≤ e.eval (zeta a h b c d f E G O) := by
  have hδ := claim_delta hfam hmin
  obtain ⟨r1, r2, r3, r4, r5, r6⟩ := claim_ears hfam hmin
  obtain ⟨Wup, Wlow⟩ := claim_W_hc hfam hmin
  obtain ⟨hconv, -, hgen⟩ := fam_hull hfam hmin
  obtain ⟨A, -⟩ := fam_bounds hfam hmin
  obtain ⟨hk, -⟩ := endpoint_const
  intro e he
  simp only [Model.extra, List.mem_append] at he
  rcases he with (he | he) | he
  · simp only [List.mem_cons, List.not_mem_nil, or_false] at he
    subst he
    simp only [Model.eDelta, eval_minus, eval_times, eval_v, eval_k, eval_one, zeta]
    push_cast; linarith
  · rcases hl : lookup tb (2, 7, 8) with _ | ⟨_ | _⟩ <;> rw [hl] at he
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl <;> simp
    · have hs := lookup_sound htb hl
      simp only [OrientHolds, Bool.false_eq_true, ite_false] at hs
      change sarea (c, 0) (0, h) O < 0 at hs
      have hup : 0 < sarea (ptH h) (ptC c) O := by
        rw [sarea_swap₁₂]; simp only [ptC, ptH]; linarith
      obtain ⟨w1, w2⟩ := Wup hup
      simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl <;>
        simp only [Model.eW, Model.eHC, eval_minus, eval_times, eval_v, eval_k, eval_one, zeta] <;>
        push_cast <;> linarith
    · have hs := lookup_sound htb hl
      simp only [OrientHolds, ite_true] at hs
      change 0 < sarea (c, 0) (0, h) O at hs
      have hlow : sarea (ptH h) (ptC c) O < 0 := by
        rw [sarea_swap₁₂]; simp only [ptC, ptH]; linarith
      obtain ⟨w1, w2, w3, w4⟩ := Wlow hlow
      have h711 : (7 / 11 : ℝ) ≤ h * c := by linarith
      simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      rcases he with rfl | rfl <;>
        simp only [Model.eW, Model.eHC, eval_minus, eval_times, eval_v, eval_k, eval_one, zeta] <;>
        push_cast <;> linarith
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

/-- The geometric premises of the cover (with the normalization `f ≤ d`). -/
theorem fam_hyp (hfam : ConvexFamily a h b c d f E G O) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f E G) O r) (hrw : IsRadialWord r) :
    Hyp Model.pkg (cfg a h b c d f E G O) (zeta a h b c d f E G O) := by
  obtain ⟨A, CE, CG, Ord, Ob, -⟩ := fam_bounds hfam hmin
  obtain ⟨hb1, hb2, hb3, hb4⟩ := claim_box hfam hfd hmin
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  have hfam' := hfam
  obtain ⟨hN, ⟨⟨e0, e1, e2, e3⟩, -⟩, ⟨⟨g0, g1, g2, g3⟩, -⟩, -, hO⟩ := hfam'
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hO
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  refine ⟨?_, fun i _ => ptEval_zeta i, by norm_num [Model.pkg, Model.bnd], ?_,
    by norm_num [Model.pkg, Model.bnd], ?_, by simp [Model.pkg], by simp [Model.pkg], ?_, ?_, ?_,
    fun tb htb => extra_nonneg hfam hmin htb, ?_⟩
  · intro v
    rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;>
      simp only [zeta] <;> constructor <;> linarith [Ob.1, Ob.2.1, Ob.2.2.1, Ob.2.2.2]
  · intro i j k hi hj hk hij hjk hik
    simpa [Model.pkg, Model.bnd] using cfg_area hmin hi hj hk hij hjk hik
  · intro m hm
    simp only [Model.pkg, Model.bnd]
    rw [ite_eq_right (by omega), ite_eq_right (by omega)]
  · intro a' b' c' j₁ j₂ sg _ _ _ h1 h2 hne
    simp only [Model.pkg, List.mem_cons, List.not_mem_nil, or_false] at h1 h2
    exact absurd (h1.trans h2.symm) hne
  · intro g hg
    simp only [Model.pkg, Model.base, List.mem_append, List.mem_map, List.mem_cons,
      List.not_mem_nil, or_false] at hg
    rcases hg with ⟨t, ht, rfl⟩ | rfl
    · obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
      have := hconv ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, h3⟩ (by simp [Fin.lt_def]; omega)
        (by simp [Fin.lt_def]; omega)
      simp only [SFact.Holds, OrientHolds, ite_true]
      rwa [cfg_oct t.1 (by omega), cfg_oct t.2.1 (by omega), cfg_oct t.2.2 h3]
    · exact q4
  · exact fac_nonneg A.1.le A.2.1.le A.2.2.2.2.2.1 A.2.2.2.2.2.2 hh.le hc.le had hdh hbf hfc hfd
      (by linarith [A.1]) (by linarith [A.2.1]) hb1 hb2 hb3 hb4 CE.1 CE.2 e1 e3 CG.1 CG.2 g1 g3
      Ord.1 Ord.2 Ob.1 Ob.2.1 Ob.2.2.1 Ob.2.2.2
  · intro p hp i hi
    simp only [Model.pkg, List.mem_cons, List.not_mem_nil, or_false] at hp
    subst hp
    refine ⟨r ⟨i, hi⟩, (hrw.1 _).1, by have := (hrw.1 ⟨i, hi⟩).2; simp only [Model.pkg]; omega, ?_⟩
    exact branch_holds hr hgen (fun i hi => cfg_oct i hi) rfl le_rfl i hi

/-- The word of `O` is one of the 94 words. -/
theorem word_index (hfam : ConvexFamily a h b c d f E G O) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f E G) O r) (hrw : IsRadialWord r) :
    ∃ n < 94, ∀ i (hi : i < 8), r ⟨i, hi⟩ = (Model.words.getD n []).getD i 0 := by
  have H := fam_hyp hfam hfd hmin hr hrw
  obtain ⟨-, -, hgen⟩ := fam_hull hfam hmin
  obtain ⟨w, hw, hwr⟩ := enum_sound' H.hbase Model.enum_ok (by decide) hr
    (fun i => by have := hrw.1 i; simp only [Model.pkg]; omega) hgen
    (fun i hi => cfg_oct i hi) le_rfl
  obtain ⟨n, hn, rfl⟩ := List.mem_iff_getElem.1 hw
  refine ⟨n, by simpa [Model.words] using hn, fun i hi => ?_⟩
  refine (hwr i hi).trans ?_
  rw [List.getD_eq_getElem?_getD (l := Model.words), List.getElem?_eq_getElem hn]
  rfl

theorem leaf_false (hfam : ConvexFamily a h b c d f E G O) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f E G) O r) (hrw : IsRadialWord r) {n : ℕ}
    (hn : n < 94) (h31 : n ≠ 31)
    (hwr : ∀ i (hi : i < 8), r ⟨i, hi⟩ = (Model.words.getD n []).getD i 0) : False := by
  have H := fam_hyp hfam hfd hmin hr hrw
  obtain ⟨-, -, hgen⟩ := fam_hull hfam hmin
  obtain ⟨T, hT⟩ := Model.all_ok n hn h31
  exact Model.pkg.sound_cert H
    (allHold_inl (wordFacts_holds hr hgen (fun i hi => cfg_oct i hi) rfl le_rfl hwr)) hT

theorem res_false (hfam : ConvexFamily a h b c d f E G O) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f E G) O r) (hrw : IsRadialWord r) {n : ℕ}
    (hwr : ∀ i (hi : i < 8), r ⟨i, hi⟩ = (Model.words.getD n []).getD i 0) {e : Expr}
    (hT : ∃ T, checkTree (Model.pkg.spec Pkg.noClosed) (Model.leafFacts n ++ [Sum.inr e]) T = true)
    (he : 0 ≤ e.eval (zeta a h b c d f E G O)) : False := by
  have H := fam_hyp hfam hfd hmin hr hrw
  obtain ⟨-, -, hgen⟩ := fam_hull hfam hmin
  obtain ⟨T, hT⟩ := hT
  refine Model.pkg.sound_cert H (AllHold.append
    (allHold_inl (wordFacts_holds hr hgen (fun i hi => cfg_oct i hi) rfl le_rfl hwr)) ?_) hT
  intro g hg
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
  subst hg
  exact he

end Cover

/-! ### Sections 3–4: the fixed cubic inequalities and the sharp E/F chamber -/

section Final

variable {a h b c d f : ℝ} {E G O : Point}

theorem word_eq {r : Fin 8 → Fin 8} {n : ℕ}
    (hwr : ∀ i (hi : i < 8), (r ⟨i, hi⟩ : ℕ) = (Model.words.getD n []).getD i 0)
    {w : Fin 8 → Fin 8} (hw : ∀ i : Fin 8, (Model.words.getD n []).getD i 0 = w i) : r = w :=
  funext fun i => Fin.ext ((hwr i.1 i.2).trans (hw i))

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-certificate`). The certificate package
(`docs/proof/nine/six_boundary_two_top_convex_certificates.json`, verified by
`docs/proof/nine/check_six_boundary_two_top_convex.py`): with the normalization `f ≤ d`, every word of the
list other than 31 and 66 is impossible. In the manuscript each such word has one fixed rational
cubic (21) (scale 4096) in the 31 affine factors `a₀, …, a₃₀` (table, lines 260-277) and the 93
quadratic costs `q₀, …, q₉₂` (`δ - 4σ`, `hc - 4σ | 7/11`, `W - 4σ | 2σ`, `13/16 - [ear]`, the 84
signed areas minus `σ` or `3σ`); with the branches of `claim_branches` there are 100 cubics,
17,619 positive terms, cube bound (23) at most `-11315534897214263309/11507808525803520000`. Here
each certificate is checked by the kernel on the atoms of `Model.pkg`
(`Heilbronn.Nine.SixBoundary.TwoTopConvexTrees*`). `docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 249-381.
Uses: SIX_BOUNDARY_TWO_TOP_CONVEX:claim-anchor, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-delta,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-box, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-cap,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-order, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-O-box,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-ears, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-W-hc -/
theorem claim_certificate (hfam : ConvexFamily a h b c d f E G O)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    ∀ w ∈ convexWords, w ≠ word31 → w ≠ word66 →
      ¬ HasRadialWord (octagon a h b c d f E G) O (fun i => (w i : ℕ)) := by
  intro r hr h31 _ hrad
  have hrw : IsRadialWord (fun i => (r i : ℕ)) := by
    simp only [convexWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and] at hr
    exact hr.1
  obtain ⟨n, hn, hwr⟩ := word_index hfam hfd hmin hrad hrw
  refine leaf_false hfam hfd hmin hrad hrw hn ?_ hwr
  rintro rfl; exact h31 (word_eq hwr (by decide))

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-branches`). With `f ≤ d`: word 66 is impossible
(two certificates, appending `1/2 - x` and `x - 1/2`); word 31 lies in the closed neighbourhood
(20) (six certificates `l_low, l_high, m_low, g_high, c_low, k_low` exclude its complement).
`docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 299-339.
Uses: SIX_BOUNDARY_TWO_TOP_CONVEX:claim-certificate -/
theorem claim_branches (hfam : ConvexFamily a h b c d f E G O)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    ¬ HasRadialWord (octagon a h b c d f E G) O (fun i => (word66 i : ℕ)) ∧
      (HasRadialWord (octagon a h b c d f E G) O (fun i => (word31 i : ℕ)) →
        Neighbourhood20 a h c f G) := by
  refine ⟨fun hrad => leaf_false hfam hfd hmin hrad (by decide) (n := 66) (by norm_num)
      (by norm_num) (by intro i hi; interval_cases i <;> rfl), fun hrad => ?_⟩
  have R := fun (j : ℕ) (hj : j < 6)
    (he : 0 ≤ (Model.res31.getD j 0).eval (zeta a h b c d f E G O)) =>
    res_false hfam hfd hmin hrad (by decide) (n := 31) (by intro i hi; interval_cases i <;> rfl)
      (Model.res31_ok j hj) he
  by_contra hres
  have hcase : h - a < 11 / 20 ∨ 2 / 3 < h - a ∨ G.1 - f < 11 / 20 ∨ 1 / 4 < f ∨ c < 2 / 3 ∨
      G.2 < h := by
    by_contra hc; push Not at hc; exact hres hc
  rcases hcase with h1 | h1 | h1 | h1 | h1 | h1
  · exact R 0 (by norm_num) (by
      simp only [Model.res31, List.getD_cons_zero, eval_minus, eval_v, eval_k, zeta]
      push_cast; linarith)
  · exact R 1 (by norm_num) (by
      simp only [Model.res31, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
        eval_k, zeta]; push_cast; linarith)
  · exact R 2 (by norm_num) (by
      simp only [Model.res31, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
        eval_k, zeta]; push_cast; linarith)
  · exact R 3 (by norm_num) (by
      simp only [Model.res31, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
        eval_k, zeta]; push_cast; linarith)
  · exact R 4 (by norm_num) (by
      simp only [Model.res31, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
        eval_k, zeta]; push_cast; linarith)
  · exact R 5 (by norm_num) (by
      simp only [Model.res31, List.getD_cons_zero, List.getD_cons_succ, eval_minus, eval_v,
        zeta]; linarith)

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-sharp-map`). Equations (24)–(25): on the
neighbourhood (20) with word 31, the labels `(A',B',C',D',E',F',G',H',O') = (A,B,C,D,E,G,F,H,O)`
make the configuration the E/F-moving chamber of `SHARP_EF_MOVING.md` with `r = 1-e_x`,
`e' = e_y`, `f' = g_x`, `k = g_y`, `g' = f`: all its hypotheses (1)–(2) hold
(`0 < d < e_y < g_y ≤ 1`, `0 < f < g_x < e_x ≤ 1`, `b ≤ f`, `h ≤ g_y`, (20)) and its eleven
oriented doubled areas are positive (the five `O`-signs `[ADO], [DHO], [BOE], [FCO], [OCG] > 0`
follow from (19)). `docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 383-428.
Uses: SIX_BOUNDARY_TWO_TOP_CONVEX:claim-cap, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-order -/
theorem claim_sharp_map (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O))
    (hw : HasRadialWord (octagon a h b c d f E G) O (fun i => (word31 i : ℕ)))
    (hnb : Neighbourhood20 a h c f G) :
    SharpEFMoving.EFMovingHyp a b c d E.2 G.1 f h (1 - E.1) G.2 O.1 O.2 ∧
      InChamber (SharpEFMoving.efMovingConfig a b c d E.2 G.1 f h (1 - E.1) G.2 O.1 O.2) ∧
      SharpEFMoving.efMovingConfig a b c d E.2 G.1 f h (1 - E.1) G.2 O.1 O.2 =
        sharpConfig (ptA a) (ptB b) (ptC c) (ptD d) E G (ptF f) (ptH h) O := by
  obtain ⟨A, CE, CG, Ord, Ob, -⟩ := fam_bounds hfam hmin
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  obtain ⟨n1, n2, n3, n4, n5, n6⟩ := hnb
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, ⟨⟨e0, e1, e2, e3⟩, -⟩,
    ⟨⟨g0, g1, g2, g3⟩, -⟩, -, -⟩ := hfam
  have ceq : SharpEFMoving.efMovingConfig a b c d E.2 G.1 f h (1 - E.1) G.2 O.1 O.2 =
      sharpConfig (ptA a) (ptB b) (ptC c) (ptD d) E G (ptF f) (ptH h) O := by
    funext i; fin_cases i <;> simp [SharpEFMoving.efMovingConfig, sharpConfig]
  refine ⟨⟨⟨ha, hah, hh, hb, hbc, hc, by linarith, by linarith [CE.2], by linarith [Ord.2],
      by linarith, by linarith [CG.1], by linarith [Ord.1]⟩, hbf, by linarith, by linarith, n6, g3,
      ⟨n1, n2, n3, n4, n5⟩,
      ⟨by linarith [Ob.1], by linarith [Ob.2.1], by linarith [Ob.2.2.1], by linarith [Ob.2.2.2]⟩⟩,
    ?_, ceq⟩
  rw [ceq]
  have cv := hconv
  have w6 : 0 < sarea (ptA a) (ptD d) O := (hw 0 3 (by norm_num) (by norm_num)).2 (by decide)
  have w7 : 0 < sarea (ptD d) (ptH h) O := (hw 3 4 (by norm_num) (by norm_num)).2 (by decide)
  have w8 : sarea (ptB b) E O < 0 := by
    have k := hw 1 3 (by norm_num) (by norm_num)
    have hne : sarea (ptB b) E O ≠ 0 := hgen 1 4 (by decide)
    have : ¬ 0 < sarea (ptB b) E O := fun h' => absurd (k.1 h') (by decide)
    exact lt_of_le_of_ne (not_lt.1 this) hne
  have w9 : 0 < sarea (ptF f) (ptC c) O := (hw 6 4 (by norm_num) (by norm_num)).2 (by decide)
  have w10 : 0 < sarea (ptC c) G O := (hw 2 3 (by norm_num) (by norm_num)).2 (by decide)
  have c1 : 0 < sarea (ptA a) (ptB b) (ptH h) := cv 0 1 7 (by decide) (by decide)
  have c2 : 0 < sarea (ptA a) (ptB b) (ptC c) := cv 0 1 2 (by decide) (by decide)
  have c3 : 0 < sarea (ptA a) (ptF f) (ptH h) := cv 0 6 7 (by decide) (by decide)
  have c4 : 0 < sarea (ptD d) E G := cv 3 4 5 (by decide) (by decide)
  have c5 : 0 < sarea G (ptF f) (ptH h) := cv 5 6 7 (by decide) (by decide)
  have c6 : 0 < sarea E G (ptF f) := cv 4 5 6 (by decide) (by decide)
  intro i
  fin_cases i
  · exact c1
  · exact c2
  · exact c3
  · exact c4
  · show 0 < sarea (ptF f) (ptH h) G
    simp only [sarea] at c5 ⊢; linarith
  · show 0 < sarea (ptF f) E G
    simp only [sarea] at c6 ⊢; linarith
  · exact w6
  · exact w7
  · show 0 < sarea (ptB b) O E
    simp only [sarea] at w8 ⊢; linarith
  · exact w9
  · show 0 < sarea O (ptC c) G
    simp only [sarea] at w10 ⊢; linarith

theorem isOptimal_comp_perm_iff' (P : Fin 9 → Point) (τ : Equiv.Perm (Fin 9)) :
    IsOptimal (P ∘ τ) ↔ IsOptimal P := by
  constructor
  · rintro ⟨g, ρ, hρ⟩
    exact ⟨g, τ * ρ, fun i => hρ i⟩
  · rintro ⟨g, ρ, hρ⟩
    exact ⟨g, τ⁻¹ * ρ, fun i => by simp [hρ i]⟩

/-- The normalized theorem (`f ≤ d`). -/
theorem main_normalized (hfam : ConvexFamily a h b c d f E G O) (hfd : f ≤ d) :
    minTriangleArea (nConfig a h b c d f E G O) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f E G O) →
        IsOptimal (nConfig a h b c d f E G O) ∧ E.1 = 1 ∧ G.2 = 1) := by
  by_cases h4 : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)
  swap
  · push Not at h4
    have := A₀_bounds.2.1
    exact ⟨by linarith, fun h => absurd (h.trans_lt h4) (by linarith)⟩
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam h4
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ O (by norm_num) hconv hpoly hgen
  obtain ⟨n, hn, hwr⟩ := word_index hfam hfd h4 hr hrw
  by_cases h31 : n = 31
  swap
  · exact (leaf_false hfam hfd h4 hr hrw hn h31 hwr).elim
  subst h31
  have e : r = fun i => (word31 i : ℕ) := funext fun i => (hwr i.1 i.2).trans (by
    fin_cases i <;> rfl)
  subst e
  have hnb := (claim_branches hfam hfd h4).2 hr
  obtain ⟨hyp, hch, ceq⟩ := claim_sharp_map hfam h4 hr hnb
  have K := SharpEFMoving.mainTheorem hyp hch
  have hP : sharpConfig (ptA a) (ptB b) (ptC c) (ptD d) E G (ptF f) (ptH h) O =
      nConfig a h b c d f E G O ∘ nIdx := by
    funext i; fin_cases i <;> rfl
  rw [ceq, hP] at K
  refine ⟨?_, fun hA => ?_⟩
  · obtain ⟨i, hi⟩ := K.1; exact min_le_of_chamber nIdx_injective hi
  · obtain ⟨hr0, hk, hopt⟩ := K.2 (chamber_ge_of_min nIdx_injective hA)
    refine ⟨⟨⟨false, false, false⟩, Equiv.ofBijective _
      ⟨nIdx_injective, Finite.surjective_of_injective nIdx_injective⟩, fun i => ?_⟩,
      by linarith, hk⟩
    have := congrFun hopt i
    simp only [Function.comp_apply] at this
    show nConfig a h b c d f E G O (nIdx i) = _
    rw [this]
    simp [SquareSymmetry.apply]

/-- **Theorem** (`SIX_BOUNDARY_TWO_TOP_CONVEX:Theorem`). Every configuration of the convex-cap
branch of N6-06 has minimum ordinary triangle area at most `A₀`. Equality forces `e_x = g_y = 1`
and the sharp eight-boundary configuration of `HAND_PROOF.md`, up to square symmetry and
relabelling. `docs/proof/nine/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 22-43, 430-433.
Uses: SIX_BOUNDARY_HULL:claim-transposition, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-hull,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-anchor, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-delta,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-box, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-cap,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-order, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-O-box,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-ears, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-W-hc,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-words, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-certificate,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-branches, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-sharp-map,
SHARP_EF_MOVING:Theorem -/
theorem mainTheorem (hfam : ConvexFamily a h b c d f E G O) :
    minTriangleArea (nConfig a h b c d f E G O) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f E G O) →
        IsOptimal (nConfig a h b c d f E G O) ∧ E.1 = 1 ∧ G.2 = 1) := by
  rcases le_total f d with hfd | hdf
  · exact main_normalized hfam hfd
  -- the transposed case: `(b, c, a, h, f, d)`, cap points `Gᵀ, Eᵀ`
  obtain ⟨hN, hE, hG, hcv, hO⟩ := hfam
  have T := claim_transposition a h b c d f E G O
  have hcv' : IsConvexCCW ![ptD f, transpose G, transpose E, ptF d] := by
    have k1 := hcv 0 1 2 (by decide) (by decide)
    have k2 := hcv 0 1 3 (by decide) (by decide)
    have k3 := hcv 0 2 3 (by decide) (by decide)
    have k4 := hcv 1 2 3 (by decide) (by decide)
    simp only [Matrix.cons_val, Fin.isValue] at k1 k2 k3 k4
    intro i j k hij hjk
    fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hij ⊢ <;>
      fin_cases k <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hjk ⊢ <;>
      simp only [Matrix.cons_val, Fin.isValue, transpose, ptD, ptF, sarea] at k1 k2 k3 k4 ⊢ <;>
      linarith
  have hfam' : ConvexFamily b c a h f d (transpose G) (transpose E) (transpose O) :=
    ⟨T.1.1 hN, (claim_transposition a h b c d f G E O).2.2.2.2.2.2.2.1.1 hG,
      (claim_transposition a h b c d f E G O).2.2.2.2.2.2.2.1.1 hE, hcv',
      (claim_transposition a h b c d f O E G).2.2.2.2.2.2.2.2.2.1.1 hO⟩
  have k := main_normalized hfam' hdf
  have hswap : nConfig b c a h f d (transpose G) (transpose E) (transpose O) =
      nConfig b c a h f d (transpose E) (transpose G) (transpose O) ∘ Equiv.swap 6 7 := by
    funext i; fin_cases i <;> rfl
  have hm : minTriangleArea (nConfig b c a h f d (transpose G) (transpose E) (transpose O)) =
      minTriangleArea (nConfig a h b c d f E G O) := by
    rw [hswap, minTriangleArea_comp_perm, T.2.2.1]
  have ho : IsOptimal (nConfig b c a h f d (transpose G) (transpose E) (transpose O)) ↔
      IsOptimal (nConfig a h b c d f E G O) := by
    rw [hswap, ← T.2.2.2.1]
    exact isOptimal_comp_perm_iff' _ _
  rw [hm] at k
  refine ⟨k.1, fun hA => ?_⟩
  obtain ⟨hopt, h1, h2⟩ := k.2 hA
  exact ⟨ho.1 hopt, h2, h1⟩

end Final

end Heilbronn.Nine.SixBoundaryTwoTopConvex
