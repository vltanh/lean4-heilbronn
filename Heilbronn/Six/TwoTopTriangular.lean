module

public import Heilbronn.Six.SingleTop
public import Heilbronn.Six.TwoTopTriangularTrees
public import Heilbronn.Six.TwoTopTriangularEnumP
public import Heilbronn.Six.TwoTopTriangularEnumQ
public import Heilbronn.Six.TwoTopTriangularHull
public import Heilbronn.Six.Hull

/-! # Two opposite-cap points with triangular hull in N
(`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`)

**Role.** Primary route: the triangular-cap-hull branch of the six-boundary occupancy N6-06
`(n_L,n_T,n_R;n_I) = (0,2,0;1)` of `hand/UNRESTRICTED.md`, Section 4 (strict bound); assembled
with `SIX_BOUNDARY_TWO_TOP_CONVEX` in `SIX_BOUNDARY_TWO_TOP_COMPLETION`.

**Setting.** The N anchors (`NAnchors`, (1)); two free points in the opposite cap `T = DF(1,1)`
(`InCapT`) whose hull with `D, F` is a triangle: the outer point `X = (x_x,x_y)` and the inner
point `P = (p_x,p_y) ∈ int(DXF)`; the ninth point `Q = (q_x,q_y)` strictly inside the anchor
hexagon. The configuration is `nConfig a h b c d f X P Q`. Contradiction hypothesis: every actual
doubled area is at least `σ = 8/73` (`4/73 ≤ minTriangleArea`); `ρ = 49/60 < (4+2√3)σ`.
Transposition preserves the occupancy and the triangular top hull, so the proof imposes `f ≤ d`;
the claims that use it carry the hypothesis `f ≤ d`. The full hull is the heptagon
`(V₀,…,V₆) = (A,B,C,D,X,F,H)` (`SixBoundarySingleTop.heptagon`), with interior points
`V₇ = P`, `V₈ = Q`. Notation `L = h-a`, `M = c-b`, `δ = (1-d)(1-f)`, `W = 1-(h-d)(c-f)`.

**Results.**
* `theorem1`: `minTriangleArea < 4/73 < A₀` throughout the triangular-hull branch.
* `claim_hull`: the heptagon is strictly convex with `P, Q` inside.
* `claim_anchor` (4)–(5), `eq6`, `claim_cap` (6)–(8), `claim_Q_box` (9): the affine bounds behind
  the 27 factors (10).
* `claim_words`: 57 words; `P ∈ DXF` iff `r₃(P) = 1` (five words (13)); `Q` has one of the 52
  hexagon words (19 lower, 33 upper).
* `claim_splits`: every actual sign is nonzero (cases 230 and 238 split on `[CPQ]`, `[BPQ]`;
  262 terminal cells).
* `claim_lower_Q` (15)–(16): bounds when `Q` is below `HC`.
* `claim_case230` (17)–(18): in case 230 both `P, Q` lie in `CXF`, giving four extra factors.
* `claim_W_hc` (19), `claim_ears` (20): the extra costs.
* `claim_certificate`: with `f ≤ d` no pair of words is possible (220 cubics, 29,641 terms).

Implicit in the manuscript: the claims are stated under `4/73 ≤ minTriangleArea` and, where
used, `f ≤ d`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryTwoTopTriangular

open Heilbronn.SixBoundary SixRadial Cover Cert Cert.Expr

local notation "heptagon" => SixBoundarySingleTop.heptagon
local notation "hexagonWords" => SixBoundarySingleTop.hexagonWords

/-- The triangular-hull branch of N6-06: N anchors, `X, P` in the opposite cap `DF(1,1)` with
`P` strictly inside the triangle `DXF`, and `Q` strictly inside the anchor hexagon. -/
def TriangularFamily (a h b c d f : ℝ) (X P Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapT d f X ∧ InCapT d f P ∧ InTriangle P (ptD d) X (ptF f) ∧
    InHexagon a h b c d f Q

/-- The five heptagon words (13) of the inner cap point `P` (`r₃ = 1`), at full-list indices
19, 22, 28, 38, 39. -/
def capWords : Finset (Fin 7 → Fin 7) :=
  {![3, 2, 1, 1, 5, 5, 4], ![3, 2, 2, 1, 4, 5, 4], ![3, 3, 2, 1, 3, 5, 4],
    ![4, 3, 2, 1, 1, 5, 5], ![4, 3, 2, 1, 2, 5, 4]}

/-- The words of case 230: `r(P) = (4,3,2,1,2,5,4)` (index 39). -/
def case230P : Fin 7 → Fin 7 := ![4, 3, 2, 1, 2, 5, 4]

/-- The words of case 230: `r(Q) = (3,2,2,3,4,4,3)` (index 24). -/
def case230Q : Fin 7 → Fin 7 := ![3, 2, 2, 3, 4, 4, 3]


local notation "HEPT" => SixBoundarySingleTop.heptagon
local notation "HEXW" => SixBoundarySingleTop.hexagonWords

/-! ### Scalar bounds -/

section Scalar

/-- The opposite-cap bounds (6)–(7) for the outer point `X` (`[DXF] ≥ 3σ`, `f ≤ d`). -/
theorem capX_bounds {d f xx xy : ℝ} (hd8 : 1 / 8 < d) (hd1 : d < 1) (hf8 : 1 / 8 < f)
    (hfd : f ≤ d) (hxx : xx ≤ 1) (hxy : xy ≤ 1)
    (hDXF : 3 * (8 / 73) ≤ (1 - d) * (xx - f) - (1 - f) * (1 - xy)) :
    3 * (8 / 73) ≤ (1 - d) * (1 - f) ∧ d < 319 / 511 ∧ f < 3 / 7 ∧ 192 / 511 < xx - f ∧
      192 / 511 < xy - d := by
  have m3 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - xx)
  have m4 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - xy)
  have e1 : (1 - d) * (1 - f) - ((1 - d) * (xx - f) - (1 - f) * (1 - xy)) =
      (1 - d) * (1 - xx) + (1 - f) * (1 - xy) := by ring
  have hdelta : 3 * (8 / 73) ≤ (1 - d) * (1 - f) := by linarith
  have hd5 : d < 319 / 511 := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - f < 7 / 8) (by linarith : (0 : ℝ) < 1 - d)
    linarith
  have hf3 : f < 3 / 7 := by
    by_contra hcon; push Not at hcon
    have h1 : (1 - d) * (1 - f) ≤ (1 - f) * (1 - f) :=
      mul_le_mul_of_nonneg_right (by linarith) (by linarith)
    nlinarith [mul_le_mul (show 1 - f ≤ 4 / 7 by linarith) (show 1 - f ≤ 4 / 7 by linarith)
      (by linarith) (by norm_num)]
  have hE1 : 3 * (8 / 73) ≤ (1 - d) * (xx - f) := by linarith
  have hpos := pos_of_prod (by norm_num : (0 : ℝ) < 3 * (8 / 73)) (by linarith : (0 : ℝ) ≤ 1 - d) hE1
  have e2 : (1 - d) * (xx - f) - (1 - f) * (1 - xy) = (1 - f) * (xy - d) - (1 - d) * (1 - xx) := by
    ring
  have hE2 : 3 * (8 / 73) ≤ (1 - f) * (xy - d) := by linarith
  have hpos2 := pos_of_prod (by norm_num : (0 : ℝ) < 3 * (8 / 73)) (by linarith : (0 : ℝ) ≤ 1 - f) hE2
  refine ⟨hdelta, hd5, hf3, ?_, ?_⟩
  · have := mul_lt_mul_of_pos_right (by linarith : 1 - d < 7 / 8) hpos; linarith
  · have := mul_lt_mul_of_pos_right (by linarith : 1 - f < 7 / 8) hpos2; linarith

/-- The inner cap point bounds (8) for `P` from `[DPF], [DXP], [XFP] ≥ σ`. -/
theorem capP_bounds {d f xx xy px py : ℝ} (hd8 : 1 / 8 < d) (hd1 : d < 1) (hf8 : 1 / 8 < f)
    (hf1 : f < 1) (hxx : xx ≤ 1) (hxy : xy ≤ 1) (hpx : px ≤ 1) (hpy : py ≤ 1)
    (hxf : 0 ≤ xx - f) (hxd : 0 ≤ xy - d)
    (hDPF : 8 / 73 ≤ (1 - d) * (px - f) - (1 - f) * (1 - py))
    (hDXP : 8 / 73 ≤ (xy - d) * (1 - px) - (1 - xx) * (py - d))
    (hXFP : 8 / 73 ≤ (xx - f) * (1 - py) - (1 - xy) * (px - f)) :
    64 / 511 < px - f ∧ 64 / 511 < py - d ∧ px ≤ 1 - 8 / 73 ∧ py ≤ 1 - 8 / 73 := by
  have hs : (0 : ℝ) < 8 / 73 := by norm_num
  have e3 : (1 - d) * (px - f) - (1 - f) * (1 - py) = (1 - f) * (py - d) - (1 - d) * (1 - px) := by
    ring
  have m5 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - py)
  have m6 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - px)
  have hO1 : 8 / 73 ≤ (1 - d) * (px - f) := by linarith
  have hO2 : 8 / 73 ≤ (1 - f) * (py - d) := by linarith
  have hof0 := pos_of_prod hs (by linarith : (0 : ℝ) ≤ 1 - d) hO1
  have hod0 := pos_of_prod hs (by linarith : (0 : ℝ) ≤ 1 - f) hO2
  have hof : 64 / 511 < px - f := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - d < 7 / 8) hof0; linarith
  have hod : 64 / 511 < py - d := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - f < 7 / 8) hod0; linarith
  have m7 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - xx) hod0.le
  have m8 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - xy) hof0.le
  have hox : px ≤ 1 - 8 / 73 := by
    have := prod_le hs hxd (by linarith : xy - d ≤ 1) (by linarith : 8 / 73 ≤ (xy - d) * (1 - px))
    linarith
  have hoy : py ≤ 1 - 8 / 73 := by
    have := prod_le hs hxf (by linarith : xx - f ≤ 1) (by linarith : 8 / 73 ≤ (xx - f) * (1 - py))
    linarith
  exact ⟨hof, hod, hox, hoy⟩

/-- The bounds (15) of a lower `Q`: from `[CHQ] ≥ σ`, `(h-a)q_x ≥ σ`, `(c-b)q_y ≥ σ`. -/
theorem lowerQ_bounds {a h b c qx qy : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hb : 0 < b)
    (hbc : b < c) (hc : c < 1) (hqx : 0 ≤ qx) (hqy : 0 ≤ qy)
    (hCHQ : 8 / 73 ≤ h * c - h * qx - c * qy) (hHAQ : 8 / 73 ≤ (h - a) * qx)
    (hBCQ : 8 / 73 ≤ (c - b) * qy) :
    2 * (8 / 73) ≤ c - qx ∧ 2 * (8 / 73) ≤ h - qy ∧ qx + qy ≤ 1 - 8 / 73 := by
  have hs : (0 : ℝ) < 8 / 73 := by norm_num
  have h1 : 8 / 73 ≤ h * qx := by nlinarith [mul_nonneg ha.le hqx]
  have h2 : 8 / 73 ≤ c * qy := by nlinarith [mul_nonneg hb.le hqy]
  refine ⟨?_, ?_, ?_⟩
  · have := prod_le (by norm_num : (0 : ℝ) < 2 * (8 / 73)) (by linarith : (0 : ℝ) ≤ h)
      (by linarith : h ≤ 1) (by linarith : 2 * (8 / 73) ≤ h * (c - qx))
    linarith
  · have := prod_le (by norm_num : (0 : ℝ) < 2 * (8 / 73)) (by linarith : (0 : ℝ) ≤ c)
      (by linarith : c ≤ 1) (by linarith : 2 * (8 / 73) ≤ c * (h - qy))
    linarith
  · have hhc : 0 < h * c := by nlinarith
    have k1 := mul_le_mul_of_nonneg_right (show h * c ≤ h by nlinarith) hqx
    have k2 := mul_le_mul_of_nonneg_right (show h * c ≤ c by nlinarith) hqy
    have k3 : 8 / 73 * (h * c) ≤ 8 / 73 := by nlinarith
    by_contra hcon; push Not at hcon
    have := mul_lt_mul_of_pos_left hcon hhc
    nlinarith

end Scalar

/-! ### The configuration as model points -/

/-- The nine points `A, B, C, D, X, F, H, P, Q`, indexed as in the model. -/
def cfg (a h b c d f : ℝ) (X P Q : Point) : ℕ → Point
  | 0 => (0, a)
  | 1 => (b, 0)
  | 2 => (c, 0)
  | 3 => (1, d)
  | 4 => X
  | 5 => (f, 1)
  | 6 => (0, h)
  | 7 => P
  | 8 => Q
  | _ => (0, 0)

/-- The variables `a, h, b, c, d, f, x_x, x_y, p_x, p_y, q_x, q_y` (`0` beyond). -/
def zeta (a h b c d f : ℝ) (X P Q : Point) : ℕ → ℝ
  | 0 => a
  | 1 => h
  | 2 => b
  | 3 => c
  | 4 => d
  | 5 => f
  | 6 => X.1
  | 7 => X.2
  | 8 => P.1
  | 9 => P.2
  | 10 => Q.1
  | 11 => Q.2
  | _ => 0

/-- The position in `nConfig` of the model point `i`. -/
def nIdx : Fin 9 → Fin 9 := ![0, 2, 3, 4, 6, 5, 1, 7, 8]

theorem nIdx_injective : Function.Injective nIdx := by decide

section Model

variable {a h b c d f : ℝ} {X P Q : Point}

theorem cfg_eq (i : Fin 9) : cfg a h b c d f X P Q i = nConfig a h b c d f X P Q (nIdx i) := by
  fin_cases i <;> rfl

theorem cfg_hept (i : ℕ) (hi : i < 7) :
    cfg a h b c d f X P Q i = HEPT a h b c d f X ⟨i, hi⟩ := by
  interval_cases i <;> rfl

theorem heptV_eq (i : Fin 7) : heptV a h b c d f X.1 X.2 i = cfg a h b c d f X P Q i := by
  fin_cases i <;> rfl

theorem ptEval_zeta (i : ℕ) :
    ptEval (zeta a h b c d f X P Q) Model.pt i = cfg a h b c d f X P Q i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [ptEval, Model.pt, zeta, cfg]

theorem cfg_inj {m n : ℕ} (hm : m < 9) (hn : n < 9) (hmn : m ≠ n) :
    nIdx ⟨m, hm⟩ ≠ nIdx ⟨n, hn⟩ :=
  fun h => hmn (by have := nIdx_injective h; simpa using this)

theorem cfg_area (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    8 / 73 ≤ |sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q k)| := by
  have e := fun (n : ℕ) (hn : n < 9) => cfg_eq (a := a) (h := h) (b := b) (c := c) (d := d)
    (f := f) (X := X) (P := P) (Q := Q) ⟨n, hn⟩
  simp only at e
  rw [e i hi, e j hj, e k hk]
  exact nConfig_area hmin _ _ _ (cfg_inj hi hj hij) (cfg_inj hj hk hjk) (cfg_inj hi hk hik)

theorem area_ge (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) {V : ℝ}
    (e : sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j) (cfg a h b c d f X P Q k) = V)
    (hV : 0 ≤ V) : 8 / 73 ≤ V := by
  have := cfg_area hmin hi hj hk hij hjk hik
  rwa [e, abs_of_nonneg hV] at this

/-- All the area costs and coordinate bounds of the family (with `f ≤ d`). -/
theorem fam_bounds (hfam : TriangularFamily a h b c d f X P Q) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (1 / 8 < a ∧ 1 / 8 < b ∧ 4 * (8 / 73) ≤ h * c ∧ 8 / 73 < h - a ∧ 8 / 73 < c - b ∧
      4 * (8 / 73) ≤ h ∧ 4 * (8 / 73) ≤ c) ∧
    (3 * (8 / 73) ≤ (1 - d) * (1 - f) ∧ d < 319 / 511 ∧ f < 3 / 7 ∧ 192 / 511 < X.1 - f ∧
      192 / 511 < X.2 - d) ∧
    (64 / 511 < P.1 - f ∧ 64 / 511 < P.2 - d ∧ P.1 ≤ 1 - 8 / 73 ∧ P.2 ≤ 1 - 8 / 73) ∧
    (8 / 73 ≤ Q.1 ∧ Q.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ Q.2 ∧ Q.2 ≤ 1 - 8 / 73) ∧
    8 / 73 ≤ a * (c - b) ∧ 8 / 73 ≤ b * (h - a) ∧
    3 * (8 / 73) ≤ (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
    8 / 73 ≤ (h - a) * Q.1 ∧ 8 / 73 ≤ (c - b) * Q.2 ∧
    8 / 73 ≤ (1 - c) * Q.2 - d * (Q.1 - c) ∧ 8 / 73 ≤ (f - 1) * (Q.2 - d) - (1 - d) * (Q.1 - 1) ∧
    8 / 73 ≤ f * (1 - Q.2) + (1 - h) * (Q.1 - f) := by
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, -⟩, ⟨⟨p0, p1, p2, p3⟩, -⟩, hin, hQ⟩ := hfam
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  obtain ⟨i1, i2, i3⟩ := hin
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => area_ge hmin hi hj hk hij hjk hik (V := V)
  have hABC := g (i := 0) (j := 1) (k := 2) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := a * (c - b))
    (by simp only [cfg, sarea] <;> ring) (by nlinarith)
  have hABH := g (i := 0) (j := 1) (k := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := b * (h - a))
    (by simp only [cfg, sarea] <;> ring) (by nlinarith)
  have hDXP := g (i := 3) (j := 4) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (X.2 - d) * (1 - P.1) - (1 - X.1) * (P.2 - d))
    (by simp only [cfg, sarea] <;> ring) (by simp only [ptD, ptF, sarea] at i1; linarith)
  have hXFP := g (i := 4) (j := 5) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (X.1 - f) * (1 - P.2) - (1 - X.2) * (P.1 - f))
    (by simp only [cfg, sarea] <;> ring) (by simp only [ptD, ptF, sarea] at i2; linarith)
  have hDPF := g (i := 3) (j := 7) (k := 5) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (1 - d) * (P.1 - f) - (1 - f) * (1 - P.2))
    (by simp only [cfg, sarea] <;> ring) (by simp only [ptD, ptF, sarea] at i3; linarith)
  have hHAQ := g (i := 6) (j := 0) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (h - a) * Q.1)
    (by simp only [cfg, sarea] <;> ring) (by simp only [sarea] at q6; linarith)
  have hBCQ := g (i := 1) (j := 2) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (c - b) * Q.2)
    (by simp only [cfg, sarea] <;> ring) (by simp only [sarea] at q2; linarith)
  have hCDQ := g (i := 2) (j := 3) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (1 - c) * Q.2 - d * (Q.1 - c))
    (by simp only [cfg, sarea] <;> ring) (by simp only [sarea] at q3; linarith)
  have hDFQ := g (i := 3) (j := 5) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (f - 1) * (Q.2 - d) - (1 - d) * (Q.1 - 1))
    (by simp only [cfg, sarea] <;> ring) (by simp only [sarea] at q4; linarith)
  have hFHQ := g (i := 5) (j := 6) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := f * (1 - Q.2) + (1 - h) * (Q.1 - f))
    (by simp only [cfg, sarea] <;> ring) (by simp only [sarea] at q5; linarith)
  have hDXF : 3 * (8 / 73) ≤ (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by
    have e := sarea_add_sarea_add_sarea (ptD d) X (ptF f) P
    simp only [ptD, ptF, sarea] at e
    nlinarith
  have A := anchor_bounds ha hah hh hb hbc hc hABC hABH
  have C := capX_bounds (by linarith [A.1]) (by linarith) (by linarith [A.2.1]) hfd x1 y1 hDXF
  have I := capP_bounds (by linarith [A.1]) (by linarith) (by linarith [A.2.1]) (by linarith)
    x1 y1 p1 p3 (by linarith [C.2.2.2.1]) (by linarith [C.2.2.2.2]) hDPF hDXP hXFP
  have Ob := q_box hN hHAQ hBCQ hCDQ hDFQ hFHQ
  exact ⟨A, C, I, Ob, hABC, hABH, hDXF, hHAQ, hBCQ, hCDQ, hDFQ, hFHQ⟩

end Model

/-! ### Section 1: the hull -/

section Hull

variable {a h b c d f : ℝ} {X P Q : Point}

/-- The heptagon is strictly convex, `P` and `Q` are inside, and no two hull vertices are
collinear with `P` or with `Q`. -/
theorem fam_hull (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    IsConvexCCW (HEPT a h b c d f X) ∧ InPolygon (HEPT a h b c d f X) P ∧
      InPolygon (HEPT a h b c d f X) Q ∧
      (∀ i j : Fin 7, i ≠ j → sarea (HEPT a h b c d f X i) (HEPT a h b c d f X j) P ≠ 0) ∧
      (∀ i j : Fin 7, i ≠ j → sarea (HEPT a h b c d f X i) (HEPT a h b c d f X j) Q ≠ 0) := by
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, -⟩, -, hin, hQ⟩ := hfam
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨i1, i2, i3⟩ := hin
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => area_ge hmin hi hj hk hij hjk hik (V := V)
  have hDXP := g (i := 3) (j := 4) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptD d) X P) rfl i1.le
  have hXFP := g (i := 4) (j := 5) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea X (ptF f) P) rfl i2.le
  have hFDP := g (i := 5) (j := 3) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptF f) (ptD d) P) rfl i3.le
  have hDXF : 3 * (8 / 73) ≤ (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by
    have e := sarea_add_sarea_add_sarea (ptD d) X (ptF f) P
    have e2 : sarea (ptD d) X (ptF f) = (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by
      simp only [sarea]; ring
    linarith
  have m1 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - X.2)
  have m2 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - X.1)
  have hxf := pos_of_prod (by norm_num : (0 : ℝ) < 3 * (8 / 73)) (by linarith : (0 : ℝ) ≤ 1 - d)
    (by linarith : 3 * (8 / 73) ≤ (1 - d) * (X.1 - f))
  have hxd := pos_of_prod (by norm_num : (0 : ℝ) < 3 * (8 / 73)) (by linarith : (0 : ℝ) ≤ 1 - f)
    (by nlinarith : 3 * (8 / 73) ≤ (1 - f) * (X.2 - d))
  have H : Hull a h b c d f X.1 X.2 := ⟨by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith⟩
  have hconv : IsConvexCCW (HEPT a h b c d f X) := by
    have := H.convex (fun i j k hij hjk => by
      rw [heptV_eq (P := P) (Q := Q), heptV_eq (P := P) (Q := Q), heptV_eq (P := P) (Q := Q)]
      exact cfg_area hmin (by omega) (by omega) (by omega) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt hij)) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt hjk)) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt (hij.trans hjk))))
    exact this
  have gen : ∀ k : ℕ, k = 7 ∨ k = 8 → ∀ i j : Fin 7, i ≠ j →
      sarea (HEPT a h b c d f X i) (HEPT a h b c d f X j) (cfg a h b c d f X P Q k) ≠ 0 := by
    intro k hk i j hij h0
    have := cfg_area hmin (X := X) (P := P) (Q := Q) (i := i.val) (j := j.val) (k := k)
      (by omega) (by omega) (by omega) (fun e => hij (Fin.ext e)) (by omega) (by omega)
    rw [cfg_hept i.val i.isLt, cfg_hept j.val j.isLt] at this
    simp only [Fin.eta] at this
    rw [h0, abs_zero] at this
    norm_num at this
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  have gQ := gen 8 (Or.inr rfl)
  refine ⟨hconv, inPolygon_of_inTriangle hconv (p := 3) (q := 4) (r := 5) (by decide) (by decide)
    ⟨i1, i2, i3⟩, inPolygon_of_fan hconv (p0 := 0) (p1 := 1) (p2 := 2) (p3 := 3) (p4 := 5)
    (p5 := 6) (by decide) (by decide) (by decide) (by decide) (by decide) q1 q2 q3 q4 q5 q6
    (gQ 0 2 (by decide)) (gQ 0 3 (by decide)) (gQ 0 5 (by decide)), gen 7 (Or.inl rfl), gQ⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-hull`). The full cyclic hull is the strictly
convex heptagon `(A, B, C, D, X, F, H)` (3), with `P` and `Q` strictly inside.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 45-55. -/
theorem claim_hull (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    IsConvexCCW (HEPT a h b c d f X) ∧ InPolygon (HEPT a h b c d f X) P ∧
      InPolygon (HEPT a h b c d f X) Q :=
  ⟨(fam_hull hfam hmin).1, (fam_hull hfam hmin).2.1, (fam_hull hfam hmin).2.2.1⟩

end Hull

section Claims

variable {a h b c d f : ℝ} {X P Q : Point}

/-- The two anchor areas. -/
theorem anchor_areas' (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    8 / 73 ≤ a * (c - b) ∧ 8 / 73 ≤ b * (h - a) := by
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, -⟩, -⟩ := hfam
  exact ⟨area_ge hmin (i := 0) (j := 1) (k := 2) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by simp only [cfg, sarea] <;> ring) (by nlinarith),
    area_ge hmin (i := 0) (j := 1) (k := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by simp only [cfg, sarea] <;> ring) (by nlinarith)⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-anchor`). Equations (4)–(5), with
`σ = 8/73`, `L = h-a`, `M = c-b`: `aM ≥ σ`, `bL ≥ σ`, `h ≥ σ/M + σ/b`, `c ≥ σ/L + σ/a`;
`a, b, d, f > 1/8`; `hc ≥ σc²/(bM) ≥ 4σ`; `h, c ≥ 4σ`; `L, M ≥ σ`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 57-72. -/
theorem claim_anchor (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let σ : ℝ := 8 / 73
    σ ≤ a * (c - b) ∧ σ ≤ b * (h - a) ∧ σ / (c - b) + σ / b ≤ h ∧ σ / (h - a) + σ / a ≤ c ∧
      1 / 8 < a ∧ 1 / 8 < b ∧ 1 / 8 < d ∧ 1 / 8 < f ∧
      σ * c ^ 2 / (b * (c - b)) ≤ h * c ∧ 4 * σ ≤ σ * c ^ 2 / (b * (c - b)) ∧
      4 * σ ≤ h ∧ 4 * σ ≤ c ∧ σ ≤ h - a ∧ σ ≤ c - b := by
  dsimp only
  obtain ⟨hABC, hABH⟩ := anchor_areas' hfam hmin
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, -⟩ := hfam
  obtain ⟨ha8, hb8, hhc, hL, hM, h4, c4⟩ := anchor_bounds ha hah hh hb hbc hc hABC hABH
  have hM0 : 0 < c - b := by linarith
  have hL0 : 0 < h - a := by linarith
  have e1 : 8 / 73 / (c - b) ≤ a := by rw [div_le_iff₀ hM0]; linarith
  have e2 : 8 / 73 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
  have e3 : 8 / 73 / (h - a) ≤ b := by rw [div_le_iff₀ hL0]; linarith
  have e4 : 8 / 73 / a ≤ c - b := by rw [div_le_iff₀ ha]; linarith
  have hbM : 0 < b * (c - b) := mul_pos hb hM0
  have e5 : 8 / 73 * c ^ 2 / (b * (c - b)) ≤ h * c := by
    rw [div_le_iff₀ hbM]
    -- `h ≥ σ/M + σ/b`, i.e. `h b M ≥ σ c`
    have k1 := mul_le_mul_of_nonneg_left hABC hb.le
    have k2 := mul_le_mul_of_nonneg_left hABH hM0.le
    have : 8 / 73 * c ≤ h * (b * (c - b)) := by nlinarith
    nlinarith [mul_le_mul_of_nonneg_left this (by linarith : (0 : ℝ) ≤ c)]
  have e6 : 4 * (8 / 73) ≤ 8 / 73 * c ^ 2 / (b * (c - b)) := by
    rw [le_div_iff₀ hbM]; nlinarith [sq_nonneg (c - 2 * b)]
  exact ⟨hABC, hABH, by linarith, by linarith, ha8, hb8, by linarith, by linarith, e5, e6, h4, c4,
    hL.le, hM.le⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:eq6`). The cap identities (6), for every point
`X`: `[DXF] = (1-d)(x_x-f) - (1-f)(1-x_y) = (1-f)(x_y-d) - (1-d)(1-x_x)` and
`δ - [DXF] = (1-d)(1-x_x) + (1-f)(1-x_y)`. `hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 74-81.
-/
theorem eq6 (d f : ℝ) (X : Point) :
    sarea (ptD d) X (ptF f) = (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      sarea (ptD d) X (ptF f) = (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) ∧
      (1 - d) * (1 - f) - sarea (ptD d) X (ptF f) = (1 - d) * (1 - X.1) + (1 - f) * (1 - X.2) := by
  refine ⟨?_, ?_, ?_⟩ <;> simp only [sarea] <;> ring

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-cap`). Equations (6)–(8) and the lines
after them, with `σ = 8/73` and the normalization `f ≤ d`: `[DXF] ≥ 3σ`, `δ ≥ 3σ`,
`d < 1 - 24σ/7 = 319/511`, `f < 3/7` (`3σ > 16/49`), `x_x - f > 192/511`, `x_y - d > 192/511`,
`p_x - f > 64/511`, `p_y - d > 64/511`, `p_x, p_y ≤ 1-σ`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 74-109. -/
theorem claim_cap (hfam : TriangularFamily a h b c d f X P Q)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let σ : ℝ := 8 / 73
    3 * σ ≤ sarea (ptD d) X (ptF f) ∧ 3 * σ ≤ (1 - d) * (1 - f) ∧ d < 319 / 511 ∧
      (16 / 49 : ℝ) < 3 * σ ∧ f < 3 / 7 ∧ 192 / 511 < X.1 - f ∧ 192 / 511 < X.2 - d ∧
      64 / 511 < P.1 - f ∧ 64 / 511 < P.2 - d ∧ P.1 ≤ 1 - σ ∧ P.2 ≤ 1 - σ := by
  dsimp only
  obtain ⟨-, C, I, -, -, -, hDXF, -⟩ := fam_bounds hfam hfd hmin
  exact ⟨by rw [(eq6 d f X).1]; exact hDXF, C.1, C.2.1, by norm_num, C.2.2.1, C.2.2.2.1,
    C.2.2.2.2, I.1, I.2.1, I.2.2.1, I.2.2.2⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-Q-box`). With `σ = 8/73`:
`σ ≤ q_x, q_y ≤ 1-σ` (bases `AH`, `BC` and the identities (9)).
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 111-123. -/
theorem claim_Q_box (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    8 / 73 ≤ Q.1 ∧ Q.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ Q.2 ∧ Q.2 ≤ 1 - 8 / 73 := by
  obtain ⟨hN, -, -, -, hQ⟩ := hfam
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => area_ge hmin hi hj hk hij hjk hik (V := V)
  exact q_box hN (g (i := 6) (j := 0) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by simp only [cfg, sarea] <;> ring)
      (by simp only [sarea] at q6; linarith))
    (g (i := 1) (j := 2) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by simp only [cfg, sarea] <;> ring)
      (by simp only [sarea] at q2; linarith))
    (g (i := 2) (j := 3) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by simp only [cfg, sarea] <;> ring)
      (by simp only [sarea] at q3; linarith))
    (g (i := 3) (j := 5) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by simp only [cfg, sarea] <;> ring)
      (by simp only [sarea] at q4; linarith))
    (g (i := 5) (j := 6) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by simp only [cfg, sarea] <;> ring)
      (by simp only [sarea] at q5; linarith))

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-splits`). No actual triangle is degenerate:
every triangle of three distinct points of the configuration has nonzero signed area. Hence the
260 word pairs together with the two additional sign splits (case 230, `(P,Q)` words (39,24), on
`[CPQ]`; case 238, words (39,33), on `[BPQ]`) give 262 terminal cells covering every
configuration. `hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 167-190. -/
theorem claim_splits (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ i j k : Fin 9, i ≠ j → j ≠ k → i ≠ k →
      sarea (nConfig a h b c d f X P Q i) (nConfig a h b c d f X P Q j)
        (nConfig a h b c d f X P Q k) ≠ 0 := by
  intro i j k hij hjk hik h0
  have := nConfig_area hmin i j k hij hjk hik
  rw [h0, abs_zero] at this
  norm_num at this

/-! ### Section 3: the additional bounds for lower Q and for case 230 -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-lower-Q`). Equations (15)–(16): if `Q` is
below `HC`, then with `σ = 8/73`: `hc ≥ σ/(3-2√2) > 7/11`, `h, c ≥ 7/11`, `c - q_x ≥ 2σ`,
`h - q_y ≥ 2σ`, `q_x + q_y ≤ 1-σ` (endpoint theorem for `H, C, A, B, Q` in `(0,0)HC`).
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 194-214.
Uses: TYPE_II:EndpointTriangleTheorem -/
theorem claim_lower_Q (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q))
    (hlow : sarea (ptH h) (ptC c) Q < 0) :
    let σ : ℝ := 8 / 73
    σ / (3 - 2 * Real.sqrt 2) ≤ h * c ∧ 7 / 11 < σ / (3 - 2 * Real.sqrt 2) ∧
      7 / 11 ≤ h ∧ 7 / 11 ≤ c ∧ 2 * σ ≤ c - Q.1 ∧ 2 * σ ≤ h - Q.2 ∧ Q.1 + Q.2 ≤ 1 - σ := by
  dsimp only
  have Ob := claim_Q_box hfam hmin
  obtain ⟨hN, -, -, -, hQ⟩ := hfam
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hsub : 4 / 73 ≤ minTriangleArea ![ptH h, ptC c, ptA a, ptB b, Q] := by
    have e : ![ptH h, ptC c, ptA a, ptB b, Q] = nConfig a h b c d f X P Q ∘ ![1, 3, 0, 2, 8] := by
      funext m; fin_cases m <;> rfl
    rw [e]
    exact hmin.trans (le_min_comp (by norm_num) _ (by decide))
  have hc7 := hc_lower ha hah hb hbc (by linarith [Ob.1]) (by linarith [Ob.2.2.1]) hlow hsub
  have h711 := endpoint_const.2
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => area_ge hmin hi hj hk hij hjk hik (V := V)
  have hCHQ := g (i := 2) (j := 6) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := h * c - h * Q.1 - c * Q.2)
    (by simp only [cfg, sarea] <;> ring) (by simp only [sarea] at hlow; linarith)
  have hHAQ := g (i := 6) (j := 0) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (h - a) * Q.1)
    (by simp only [cfg, sarea] <;> ring) (by simp only [sarea] at q6; linarith)
  have hBCQ := g (i := 1) (j := 2) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (c - b) * Q.2)
    (by simp only [cfg, sarea] <;> ring) (by simp only [sarea] at q2; linarith)
  obtain ⟨l1, l2, l3⟩ := lowerQ_bounds ha hah hh hb hbc hc (by linarith [Ob.1])
    (by linarith [Ob.2.2.1]) hCHQ hHAQ hBCQ
  have hh7 : 7 / 11 ≤ h := by
    have := mul_le_mul_of_nonneg_left hc.le (by linarith : (0 : ℝ) ≤ h); linarith
  have hc7' : 7 / 11 ≤ c := by
    have := mul_le_mul_of_nonneg_right hh.le (by linarith : (0 : ℝ) ≤ c); linarith
  exact ⟨hc7, h711, hh7, hc7', l1, l2, l3⟩

end Claims

section Claims2

variable {a h b c d f : ℝ} {X P Q : Point}

/-- `ρ = 49/60 < (4 + 2√3)σ`. -/
theorem rho_lt : (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) := by
  have h3 : (1.7303 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  nlinarith

/-- A triangle of the configuration with both free points `P, Q` strictly inside has doubled area
at least `(4 + 2√3)σ` (the two-interior-point lemma). -/
theorem two_inside (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) {i j k : ℕ}
    (hi : i < 7) (hj : j < 7) (hk : k < 7) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k)
    (hP : CornerFamilies.InsideTriangle P (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q k))
    (hQ : CornerFamilies.InsideTriangle Q (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q k)) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ |sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q k)| := by
  have hsub : 4 / 73 ≤ minTriangleArea ![cfg a h b c d f X P Q i, cfg a h b c d f X P Q j,
      cfg a h b c d f X P Q k, P, Q] := by
    have e : ![cfg a h b c d f X P Q i, cfg a h b c d f X P Q j, cfg a h b c d f X P Q k, P, Q] =
        fun x => cfg a h b c d f X P Q ((![i, j, k, 7, 8] : Fin 5 → ℕ) x) := by
      funext m; fin_cases m <;> rfl
    rw [e]
    refine le_minTriangleArea (by norm_num) _ fun x y z hxy hyz => ?_
    have hv : ∀ x : Fin 5, (![i, j, k, 7, 8] : Fin 5 → ℕ) x < 9 := by
      intro x; fin_cases x <;> simp <;> omega
    have hinj : Function.Injective (![i, j, k, 7, 8] : Fin 5 → ℕ) := by
      intro x y hxy
      fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> omega
    have h1 := cfg_area hmin (X := X) (P := P) (Q := Q) (hv x) (hv y) (hv z) (hinj.ne hxy.ne)
      (hinj.ne hyz.ne) (hinj.ne (hxy.trans hyz).ne)
    rw [triangleArea_eq]; linarith
  have := CornerFamilies.twoInteriorPointLemma _ _ _ P Q hP hQ (4 / 73) (by norm_num) hsub
  rw [triangleArea_eq] at this
  linarith

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-case230`). Equations (17)–(18): in case 230
(`r(P) = (4,3,2,1,2,5,4)`, `r(Q) = (3,2,2,3,4,4,3)`) both `P` and `Q` lie strictly inside the
actual triangle `CXF`, so with `σ = 8/73`, `ρ = 49/60`: `T = [CXF] ≥ (4+2√3)σ > ρ`,
`x_x - f ≥ ρ`, `f ≤ 1-ρ = 11/60`, `x_y ≥ 2234/2745` and `h - a ≥ 480/803`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 216-253.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_case230 (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q))
    (hP : HasRadialWord (HEPT a h b c d f X) P (fun i => (case230P i : ℕ)))
    (hQ : HasRadialWord (HEPT a h b c d f X) Q (fun i => (case230Q i : ℕ))) :
    let σ : ℝ := 8 / 73
    let ρ : ℝ := 49 / 60
    InTriangle P (ptC c) X (ptF f) ∧ InTriangle Q (ptC c) X (ptF f) ∧
      (4 + 2 * Real.sqrt 3) * σ ≤ sarea (ptC c) X (ptF f) ∧ ρ < (4 + 2 * Real.sqrt 3) * σ ∧
      ρ ≤ X.1 - f ∧ f ≤ 11 / 60 ∧ 2234 / 2745 ≤ X.2 ∧ 480 / 803 ≤ h - a := by
  dsimp only
  obtain ⟨hconv, -⟩ := fam_hull hfam hmin
  have hP' : InTriangle P (ptC c) X (ptF f) :=
    ⟨(hP 2 2 (by norm_num) (by norm_num)).2 (by decide),
      (hP 4 1 (by norm_num) (by norm_num)).2 (by decide),
      (hP 5 4 (by norm_num) (by norm_num)).2 (by decide)⟩
  have hQ' : InTriangle Q (ptC c) X (ptF f) :=
    ⟨(hQ 2 2 (by norm_num) (by norm_num)).2 (by decide),
      (hQ 4 1 (by norm_num) (by norm_num)).2 (by decide),
      (hQ 5 4 (by norm_num) (by norm_num)).2 (by decide)⟩
  have hT := two_inside hmin (i := 2) (j := 4) (k := 5) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (Or.inl hP') (Or.inl hQ')
  have hpos : 0 < sarea (ptC c) X (ptF f) := hconv 2 4 5 (by decide) (by decide)
  change (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ |sarea (ptC c) X (ptF f)| at hT
  rw [abs_of_pos hpos] at hT
  have hr := rho_lt
  have eT : sarea (ptC c) X (ptF f) = X.1 - c + (c - f) * X.2 := by simp only [sarea]; ring
  obtain ⟨hABC, hABH⟩ := anchor_areas' hfam hmin
  have hfam' := hfam
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, ⟨⟨x0, x1, y0, y1⟩, -⟩, -⟩ := hfam'
  obtain ⟨ha8, hb8, -, -, -, -, hc4⟩ := anchor_bounds ha hah hh hb hbc hc hABC hABH
  have hAFH := area_ge hmin (i := 0) (j := 5) (k := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := f * (h - a))
    (by simp only [cfg, sarea] <;> ring) (by nlinarith)
  have m1 := mul_nonneg (by linarith : (0 : ℝ) ≤ c - f) (by linarith : (0 : ℝ) ≤ 1 - X.2)
  have hxf : 49 / 60 ≤ X.1 - f := by nlinarith
  have hf : f ≤ 11 / 60 := by linarith
  have m2 := mul_le_mul_of_nonneg_right hc4 (by linarith : (0 : ℝ) ≤ 1 - X.2)
  have m3 := mul_le_mul_of_nonneg_right (show 1 / 8 ≤ f by linarith) y0
  have hy : 2234 / 2745 ≤ X.2 := by nlinarith
  have hL : 480 / 803 ≤ h - a := by
    have := prod_le (by norm_num) (by linarith : (0 : ℝ) ≤ f) hf hAFH; linarith
  exact ⟨hP', hQ', hT, hr, hxf, hf, hy, hL⟩

end Claims2

section Claims3

variable {a h b c d f : ℝ} {X P Q : Point}

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-W-hc`). The costs (19), with `σ = 8/73` and
`W = 1-(h-d)(c-f)`: if `Q` is above `HC`, `hc ≥ 4σ` and `W ≥ 4σ`; if below, `hc ≥ 7/11` and
`W ≥ 2σ`; always `δ ≥ 3σ`. `hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 268-280. -/
theorem claim_W_hc (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let σ : ℝ := 8 / 73
    (0 < sarea (ptH h) (ptC c) Q → 4 * σ ≤ h * c ∧ 4 * σ ≤ 1 - (h - d) * (c - f)) ∧
      (sarea (ptH h) (ptC c) Q < 0 → 7 / 11 ≤ h * c ∧ 2 * σ ≤ 1 - (h - d) * (c - f)) ∧
      3 * σ ≤ (1 - d) * (1 - f) := by
  dsimp only
  obtain ⟨hconv, -⟩ := fam_hull hfam hmin
  obtain ⟨hABC, hABH⟩ := anchor_areas' hfam hmin
  have hfam' := hfam
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩, ⟨⟨x0, x1, y0, y1⟩, -⟩, -, hin, hQ⟩ :=
    hfam'
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  obtain ⟨i1, i2, i3⟩ := hin
  obtain ⟨ha8, hb8, hhc, -⟩ := anchor_bounds ha hah hh hb hbc hc hABC hABH
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => area_ge hmin hi hj hk hij hjk hik (V := V)
  have hHCD := g (i := 6) (j := 2) (k := 3) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptC c) (ptD d)) rfl
    (by have := hconv 2 3 6 (by decide) (by decide); rw [sarea_cycle] at this; exact this.le)
  have hHDF := g (i := 6) (j := 3) (k := 5) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptD d) (ptF f)) rfl
    (by have := hconv 3 5 6 (by decide) (by decide); rw [sarea_cycle] at this; exact this.le)
  have w2 : 1 - (h - d) * (c - f) = sarea (ptH h) (ptC c) (ptD d) +
      sarea (ptH h) (ptD d) (ptF f) := by simp only [sarea]; ring
  have hDXP := g (i := 3) (j := 4) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptD d) X P) rfl i1.le
  have hXFP := g (i := 4) (j := 5) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea X (ptF f) P) rfl i2.le
  have hFDP := g (i := 5) (j := 3) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptF f) (ptD d) P) rfl i3.le
  have e := sarea_add_sarea_add_sarea (ptD d) X (ptF f) P
  have e2 := (eq6 d f X).2.2
  have m1 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - X.1)
  have m2 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - X.2)
  refine ⟨fun hup => ?_, fun hlow => ?_, by linarith⟩
  · have hHCQ := g (i := 6) (j := 2) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptC c) Q) rfl hup.le
    have hCDQ := g (i := 2) (j := 3) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptC c) (ptD d) Q) rfl q3.le
    have hDFQ := g (i := 3) (j := 5) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptD d) (ptF f) Q) rfl q4.le
    have hFHQ := g (i := 5) (j := 6) (k := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptF f) (ptH h) Q) rfl q5.le
    have wq : 1 - (h - d) * (c - f) = sarea (ptH h) (ptC c) Q + sarea (ptC c) (ptD d) Q +
        sarea (ptD d) (ptF f) Q + sarea (ptF f) (ptH h) Q := by simp only [sarea]; ring
    exact ⟨hhc, by linarith⟩
  · have := (claim_lower_Q hfam hmin hlow).1
    have := endpoint_const.2
    exact ⟨by linarith, by linarith⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-ears`). The costs (20): the six anchor ears
`ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< 13/16` (`SIX_BOUNDARY_HULL` Theorem 1).
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 282-291.
Uses: SIX_BOUNDARY_HULL:Theorem1 -/
theorem claim_ears (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16 := by
  obtain ⟨o1, o2, o3, o4⟩ := claim_Q_box hfam hmin
  obtain ⟨hN, hX, hP, -, -⟩ := hfam
  exact (SixBoundaryHull.theorem1 hN hX.1 hP.1 ⟨by linarith, by linarith, by linarith,
    by linarith⟩ (by linarith)).1

end Claims3

/-! ### The certificate cover -/

section Cover

variable {a h b c d f : ℝ} {X P Q : Point}

theorem eval_tri (t : ℕ × ℕ × ℕ) :
    (Model.tri t).eval (zeta a h b c d f X P Q) =
      sarea (cfg a h b c d f X P Q t.1) (cfg a h b c d f X P Q t.2.1)
        (cfg a h b c d f X P Q t.2.2) := by
  rw [← ptEval_zeta, ← ptEval_zeta, ← ptEval_zeta]; rfl

/-- The 27 common affine factors are nonnegative. -/
theorem fac_nonneg (f1 : 1 / 8 ≤ a) (f2 : 1 / 8 ≤ b) (f3 : 4 * (8 / 73) ≤ h)
    (f4 : 4 * (8 / 73) ≤ c) (f5 : h ≤ 1) (f6 : c ≤ 1) (f7 : a ≤ d) (f8 : d ≤ h) (f9 : b ≤ f)
    (f10 : f ≤ c) (f11 : f ≤ d) (f12 : 8 / 73 ≤ h - a) (f13 : 8 / 73 ≤ c - b)
    (f14 : d ≤ 319 / 511) (f15 : f ≤ 3 / 7) (f16 : 192 / 511 ≤ X.1 - f) (f17 : 192 / 511 ≤ X.2 - d)
    (f18 : X.1 ≤ 1) (f19 : X.2 ≤ 1) (f20 : 64 / 511 ≤ P.1 - f) (f21 : 64 / 511 ≤ P.2 - d)
    (f22 : P.1 ≤ 1 - 8 / 73) (f23 : P.2 ≤ 1 - 8 / 73) (f24 : 8 / 73 ≤ Q.1) (f25 : 8 / 73 ≤ Q.2)
    (f26 : Q.1 ≤ 1 - 8 / 73) (f27 : Q.2 ≤ 1 - 8 / 73) :
    ∀ e ∈ Model.factors, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  simp only [Model.factors, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

/-- The costs (19)–(20) are nonnegative. -/
theorem extra_nonneg (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) {tb : List SFact}
    (htb : AllHold (SFact.Holds (cfg a h b c d f X P Q)) tb) :
    ∀ e ∈ Model.extra tb, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  obtain ⟨Wup, Wlow, hδ⟩ := claim_W_hc hfam hmin
  obtain ⟨r1, r2, r3, r4, r5, r6⟩ := claim_ears hfam hmin
  obtain ⟨hconv, -⟩ := fam_hull hfam hmin
  obtain ⟨hABC, hABH⟩ := anchor_areas' hfam hmin
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, -⟩, -⟩ := hfam
  have hhc := (anchor_bounds ha hah hh hb hbc hc hABC hABH).2.2.1
  have g := fun {i j k : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) {V : ℝ} => area_ge hmin hi hj hk hij hjk hik (V := V)
  have hHCD := g (i := 6) (j := 2) (k := 3) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptC c) (ptD d)) rfl
    (by have := hconv 2 3 6 (by decide) (by decide); rw [sarea_cycle] at this; exact this.le)
  have hHDF := g (i := 6) (j := 3) (k := 5) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := sarea (ptH h) (ptD d) (ptF f)) rfl
    (by have := hconv 3 5 6 (by decide) (by decide); rw [sarea_cycle] at this; exact this.le)
  have w2 : 1 - (h - d) * (c - f) = sarea (ptH h) (ptC c) (ptD d) +
      sarea (ptH h) (ptD d) (ptF f) := by simp only [sarea]; ring
  intro e he
  simp only [Model.extra, List.mem_append] at he
  rcases he with (he | he) | he
  · simp only [List.mem_cons, List.not_mem_nil, or_false] at he
    rcases he with rfl | rfl | rfl <;>
      simp only [Model.eW, Model.eHC, Model.eDelta, eval_minus, eval_times, eval_v, eval_k,
        eval_one, zeta] <;> push_cast <;> linarith
  · rcases hl : lookup tb (2, 6, 8) with _ | ⟨_ | _⟩ <;> rw [hl] at he
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      subst he; simp
    · have hs := lookup_sound htb hl
      simp only [OrientHolds, Bool.false_eq_true, ite_false] at hs
      change sarea (c, 0) (0, h) Q < 0 at hs
      have hup : 0 < sarea (ptH h) (ptC c) Q := by
        rw [sarea_swap₁₂]; simp only [ptC, ptH]; linarith
      obtain ⟨-, w2'⟩ := Wup hup
      simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      subst he
      simp only [Model.eW, eval_minus, eval_times, eval_v, eval_k, eval_one, zeta]
      push_cast; linarith
    · have hs := lookup_sound htb hl
      simp only [OrientHolds, ite_true] at hs
      change 0 < sarea (c, 0) (0, h) Q at hs
      have hlow : sarea (ptH h) (ptC c) Q < 0 := by
        rw [sarea_swap₁₂]; simp only [ptC, ptH]; linarith
      obtain ⟨w1', -⟩ := Wlow hlow
      simp only [List.mem_cons, List.not_mem_nil, or_false] at he
      subst he
      simp only [Model.eHC, eval_minus, eval_times, eval_v, eval_k, zeta]
      push_cast; linarith
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

/-- The two-point occupancy bound of the cover (`ρ`). -/
theorem htwo_ok (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ (i j k j₁ j₂ : ℕ) (sg : Bool), i < 9 → j < 9 → k < 9 → j₁ ∈ Model.pkg.free →
      j₂ ∈ Model.pkg.free → j₁ ≠ j₂ → i ≠ j → j ≠ k → i ≠ k →
      let Pt := cfg a h b c d f X P Q
      OrientHolds sg (sarea (Pt i) (Pt j) (Pt j₁)) → OrientHolds sg (sarea (Pt j) (Pt k) (Pt j₁)) →
      OrientHolds sg (sarea (Pt k) (Pt i) (Pt j₁)) →
      OrientHolds sg (sarea (Pt i) (Pt j) (Pt j₂)) → OrientHolds sg (sarea (Pt j) (Pt k) (Pt j₂)) →
      OrientHolds sg (sarea (Pt k) (Pt i) (Pt j₂)) →
      (Model.pkg.bnd 2 : ℝ) ≤ sgArea sg (sarea (Pt i) (Pt j) (Pt k)) := by
  intro i j k j₁ j₂ sg hi hj hk h1 h2 hne hij hjk hik Pt a1 a2 a3 b1 b2 b3
  simp only [Model.pkg, List.mem_cons, List.not_mem_nil, or_false] at h1 h2
  obtain ⟨-, n1, n2⟩ := orient_idx_ne a1
  obtain ⟨-, n3, -⟩ := orient_idx_ne a2
  obtain ⟨-, m1, m2⟩ := orient_idx_ne b1
  obtain ⟨-, m3, -⟩ := orient_idx_ne b2
  have hi7 : i < 7 := by omega
  have hj7 : j < 7 := by omega
  have hk7 : k < 7 := by omega
  -- the orientation of the triangle
  have hsg : OrientHolds sg (sarea (Pt i) (Pt j) (Pt k)) := by
    have e := sarea_add_sarea_add_sarea (Pt i) (Pt j) (Pt k) (Pt j₁)
    cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at a1 a2 a3 ⊢ <;>
      linarith
  have inP : CornerFamilies.InsideTriangle P (Pt i) (Pt j) (Pt k) := by
    rcases h1 with rfl | rfl
    · exact inTriangle_of_orient a1 a2 a3
    · rcases h2 with rfl | rfl
      · exact inTriangle_of_orient b1 b2 b3
      · exact absurd rfl hne
  have inQ : CornerFamilies.InsideTriangle Q (Pt i) (Pt j) (Pt k) := by
    rcases h1 with rfl | rfl
    · rcases h2 with rfl | rfl
      · exact absurd rfl hne
      · exact inTriangle_of_orient b1 b2 b3
    · exact inTriangle_of_orient a1 a2 a3
  have := two_inside hmin hi7 hj7 hk7 hij hjk hik inP inQ
  rw [sgArea_eq_abs hsg]
  have := rho_lt
  have hb2 : (Model.pkg.bnd 2 : ℝ) = 49 / 60 := by
    simp only [Model.pkg, Model.bnd]; norm_num
  rw [hb2]
  linarith

/-- The geometric premises of the cover (with the normalization `f ≤ d`). -/
theorem fam_hyp (hfam : TriangularFamily a h b c d f X P Q) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) {p q : Fin 7 → ℕ}
    (hp : HasRadialWord (HEPT a h b c d f X) P p) (hpw : IsRadialWord p)
    (hq : HasRadialWord (HEPT a h b c d f X) Q q) (hqw : IsRadialWord q) :
    Hyp Model.pkg (cfg a h b c d f X P Q) (zeta a h b c d f X P Q) := by
  obtain ⟨A, C, I, Ob, -⟩ := fam_bounds hfam hfd hmin
  obtain ⟨hconv, -, -, hgenP, hgenQ⟩ := fam_hull hfam hmin
  have hfam' := hfam
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, -⟩, ⟨⟨p0, p1, p2, p3⟩, -⟩, hin, hQ⟩ := hfam'
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := hQ
  obtain ⟨i1, i2, i3⟩ := hin
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  refine ⟨?_, fun i _ => ptEval_zeta i, by norm_num [Model.pkg, Model.bnd], ?_,
    by norm_num [Model.pkg, Model.bnd], ?_, by simp [Model.pkg], by simp [Model.pkg],
    htwo_ok hmin, ?_, ?_, fun tb htb => extra_nonneg hfam hmin htb, ?_⟩
  · intro v
    rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;>
      simp only [zeta] <;> constructor <;> linarith [Ob.1, Ob.2.1, Ob.2.2.1, Ob.2.2.2]
  · intro i j k hi hj hk hij hjk hik
    simpa [Model.pkg, Model.bnd] using cfg_area hmin hi hj hk hij hjk hik
  · intro m hm
    simp only [Model.pkg, Model.bnd]
    rw [if_neg (by omega), if_neg (by omega), if_neg (by omega), if_neg (by omega)]
  · intro g hg
    simp only [Model.pkg, Model.base, Model.hull, List.mem_append, List.mem_map, List.mem_cons,
      List.not_mem_nil, or_false] at hg
    rcases hg with ⟨t, ht, rfl⟩ | rfl | rfl | rfl | rfl
    · obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
      have := hconv ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, h3⟩ (by simp [Fin.lt_def]; omega)
        (by simp [Fin.lt_def]; omega)
      simp only [SFact.Holds, OrientHolds, ite_true]
      rwa [cfg_hept t.1 (by omega), cfg_hept t.2.1 (by omega), cfg_hept t.2.2 h3]
    · exact i1
    · exact i2
    · show sarea (1, d) (f, 1) P < 0
      have e := sarea_swap₁₂ (1, d) (f, 1) P
      change 0 < sarea (f, 1) (1, d) P at i3
      linarith
    · exact q4
  · exact fac_nonneg A.1.le A.2.1.le A.2.2.2.2.2.1 A.2.2.2.2.2.2 hh.le hc.le had hdh hbf hfc hfd
      A.2.2.2.1.le A.2.2.2.2.1.le C.2.1.le C.2.2.1.le C.2.2.2.1.le C.2.2.2.2.le x1 y1 I.1.le I.2.1.le
      I.2.2.1 I.2.2.2 Ob.1 Ob.2.2.1 Ob.2.1 Ob.2.2.2
  · intro r hr i hi
    simp only [Model.pkg, List.mem_cons, List.not_mem_nil, or_false] at hr
    rcases hr with rfl | rfl
    · refine ⟨p ⟨i, hi⟩, (hpw.1 _).1, by have := (hpw.1 ⟨i, hi⟩).2; simp only [Model.pkg]; omega,
        ?_⟩
      exact branch_holds hp hgenP (fun i hi => cfg_hept i hi) rfl (by norm_num) i hi
    · refine ⟨q ⟨i, hi⟩, (hqw.1 _).1, by have := (hqw.1 ⟨i, hi⟩).2; simp only [Model.pkg]; omega,
        ?_⟩
      exact branch_holds hq hgenQ (fun i hi => cfg_hept i hi) rfl (by norm_num) i hi

end Cover

/-! ### Section 2 and 5: the radial cover and the certificates -/

section Final

variable {a h b c d f : ℝ} {X P Q : Point}

/-- The enumeration hypotheses: the initial signs of the two enumerations hold. -/
theorem enum_bases (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    AllHold (SFact.Holds (cfg a h b c d f X P Q)) Model.pkgP.base ∧
      AllHold (SFact.Holds (cfg a h b c d f X P Q)) Model.pkgQ.base := by
  obtain ⟨hconv, -⟩ := fam_hull hfam hmin
  obtain ⟨-, -, -, ⟨i1, i2, i3⟩, hQ⟩ := hfam
  have hull : AllHold (SFact.Holds (cfg a h b c d f X P Q)) Model.hull := by
    intro g hg
    simp only [Model.hull, List.mem_map] at hg
    obtain ⟨t, ht, rfl⟩ := hg
    obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
    have := hconv ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, h3⟩ (by simp [Fin.lt_def]; omega)
      (by simp [Fin.lt_def]; omega)
    simp only [SFact.Holds, OrientHolds, ite_true]
    rwa [cfg_hept t.1 (by omega), cfg_hept t.2.1 (by omega), cfg_hept t.2.2 h3]
  refine ⟨hull.append ?_, hull.append ?_⟩
  · intro g hg
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
    rcases hg with rfl | rfl | rfl
    · exact i1
    · exact i2
    · show sarea (1, d) (f, 1) P < 0
      have e := sarea_swap₁₂ (1, d) (f, 1) P
      change 0 < sarea (f, 1) (1, d) P at i3
      linarith
  · intro g hg
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
    subst hg
    exact hQ.2.2.2.1

/-- The words of `P` and `Q` are in the lists. -/
theorem word_indices (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) {p q : Fin 7 → ℕ}
    (hp : HasRadialWord (HEPT a h b c d f X) P p) (hpw : IsRadialWord p)
    (hq : HasRadialWord (HEPT a h b c d f X) Q q) (hqw : IsRadialWord q) :
    (∃ ip < 5, ∀ i (hi : i < 7), p ⟨i, hi⟩ = (Model.wordsP.getD ip []).getD i 0) ∧
      ∃ iq < 52, ∀ i (hi : i < 7), q ⟨i, hi⟩ = (Model.wordsQ.getD iq []).getD i 0 := by
  obtain ⟨-, -, -, hgenP, hgenQ⟩ := fam_hull hfam hmin
  obtain ⟨bP, bQ⟩ := enum_bases hfam hmin
  have idx : ∀ (ws : List (List ℕ)) (w : List ℕ) (r : Fin 7 → ℕ), w ∈ ws →
      (∀ i (hi : i < 7), r ⟨i, hi⟩ = w.getD i 0) →
      ∃ n < ws.length, ∀ i (hi : i < 7), r ⟨i, hi⟩ = (ws.getD n []).getD i 0 := by
    intro ws w r hw hr
    obtain ⟨n, hn, rfl⟩ := List.mem_iff_getElem.1 hw
    refine ⟨n, hn, fun i hi => (hr i hi).trans ?_⟩
    rw [List.getD_eq_getElem?_getD (l := ws), List.getElem?_eq_getElem hn]
    rfl
  obtain ⟨w, hw, hwr⟩ := enum_sound' (P := Model.pkgP) bP Model.EnumP.enum_ok (by decide) hp
    (fun i => by have := hpw.1 i; simp only [Model.pkgP]; omega) hgenP
    (fun i hi => cfg_hept i hi) (by simp [Model.pkgP])
  obtain ⟨w', hw', hwr'⟩ := enum_sound' (P := Model.pkgQ) bQ Model.EnumQ.enum_ok (by decide) hq
    (fun i => by have := hqw.1 i; simp only [Model.pkgQ]; omega) hgenQ
    (fun i hi => cfg_hept i hi) (by simp [Model.pkgQ])
  exact ⟨idx _ _ _ hw hwr, idx _ _ _ hw' hwr'⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-words`), restated. The explicit lists of the
words of `P` (`r₃ = 1`) and of `Q` (`r₃ ≥ 2`), the leaves of the kernel-checked enumerations
`Model.EnumP.enumTree`, `Model.EnumQ.enumTree`, have 5 and 52 entries, 19 of the latter with
`r₆ < 3`; the case-230 words are in `capWords` and `hexagonWords`; `P` has a word in `capWords`,
`Q` one in `hexagonWords`, and `[HCQ] > 0` exactly when `r₆(Q) ≥ 3`. (The cardinalities of the
Finsets over all `7⁷` tuples are not computed.)
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 137-169. -/
theorem claim_words :
    Model.wordsP.length = 5 ∧ Model.wordsQ.length = 52 ∧
      (Model.wordsQ.filter fun w => w.getD 6 0 < 3).length = 19 ∧
      case230P ∈ capWords ∧ case230Q ∈ HEXW ∧
    ∀ {a h b c d f : ℝ} {X P Q : Point}, TriangularFamily a h b c d f X P Q →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q) →
      (∃ p ∈ capWords, HasRadialWord (HEPT a h b c d f X) P (fun i => (p i : ℕ))) ∧
      ∃ q ∈ HEXW, HasRadialWord (HEPT a h b c d f X) Q (fun i => (q i : ℕ)) ∧
        (0 < sarea (ptH h) (ptC c) Q ↔ 3 ≤ (q 6 : ℕ)) := by
  have memQ : ∀ r : Fin 7 → Fin 7, r ∈ HEXW ↔ IsRadialWord (fun i => (r i : ℕ)) ∧
      2 ≤ (r 3 : ℕ) := by
    intro r
    simp only [SixBoundarySingleTop.hexagonWords, radialWords, Finset.mem_filter, Finset.mem_univ,
      true_and]
  refine ⟨by decide, by decide, by decide, by decide, (memQ _).2 (by decide),
    fun {a h b c d f X P Q} hfam hmin => ?_⟩
  obtain ⟨hconv, hpolyP, hpolyQ, hgenP, hgenQ⟩ := fam_hull hfam hmin
  obtain ⟨p, hp, hpw⟩ := claim_radial_word _ P (by norm_num) hconv hpolyP hgenP
  obtain ⟨q, hq, hqw⟩ := claim_radial_word _ Q (by norm_num) hconv hpolyQ hgenQ
  obtain ⟨⟨ip, hip, hpr⟩, -⟩ := word_indices hfam hmin hp hpw hq hqw
  have hrange : ∀ i, q i < 7 := fun i => by have := hqw.1 i; omega
  refine ⟨?_, fun i => ⟨q i, hrange i⟩, (memQ _).2 ⟨hqw, ?_⟩, hq, hq 6 3 (by norm_num) (by norm_num)⟩
  · have key : ∀ r' : Fin 7 → Fin 7, (∀ i : Fin 7, (Model.wordsP.getD ip []).getD i 0 = r' i) →
        p = fun i => (r' i : ℕ) := fun r' h => funext fun i => (hpr i.val i.isLt).trans (h i)
    interval_cases ip
    · exact ⟨![3, 2, 1, 1, 5, 5, 4], by decide, (key ![3, 2, 1, 1, 5, 5, 4] (by decide)) ▸ hp⟩
    · exact ⟨![3, 2, 2, 1, 4, 5, 4], by decide, (key ![3, 2, 2, 1, 4, 5, 4] (by decide)) ▸ hp⟩
    · exact ⟨![3, 3, 2, 1, 3, 5, 4], by decide, (key ![3, 3, 2, 1, 3, 5, 4] (by decide)) ▸ hp⟩
    · exact ⟨![4, 3, 2, 1, 1, 5, 5], by decide, (key ![4, 3, 2, 1, 1, 5, 5] (by decide)) ▸ hp⟩
    · exact ⟨![4, 3, 2, 1, 2, 5, 4], by decide, (key ![4, 3, 2, 1, 2, 5, 4] (by decide)) ▸ hp⟩
  · exact (hq 3 2 (by norm_num) (by norm_num)).1 hfam.2.2.2.2.2.2.2.1

/-- The facts of a cell hold. -/
theorem cell_holds (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) {p q : Fin 7 → ℕ}
    (hp : HasRadialWord (HEPT a h b c d f X) P p) (hq : HasRadialWord (HEPT a h b c d f X) Q q)
    {ip iq : ℕ} (hpr : ∀ i (hi : i < 7), p ⟨i, hi⟩ = (Model.wordsP.getD ip []).getD i 0)
    (hqr : ∀ i (hi : i < 7), q ⟨i, hi⟩ = (Model.wordsQ.getD iq []).getD i 0) :
    AllHold (Holds (cfg a h b c d f X P Q) (zeta a h b c d f X P Q)) (Model.cellFacts ip iq) := by
  obtain ⟨hconv, hpolyP, hpolyQ, hgenP, hgenQ⟩ := fam_hull hfam hmin
  have hP := wordFacts_holds (p := 7) (Pt := cfg a h b c d f X P Q) hp hgenP
    (fun i hi => cfg_hept i hi) rfl (by norm_num) hpr
  have hQ := wordFacts_holds (p := 8) (Pt := cfg a h b c d f X P Q) hq hgenQ
    (fun i hi => cfg_hept i hi) rfl (by norm_num) hqr
  have hpair : AllHold (SFact.Holds (cfg a h b c d f X P Q))
      (Model.pairFacts (Model.wordsP.getD ip []) (Model.wordsQ.getD iq [])) := by
    intro g hg
    simp only [Model.pairFacts, List.mem_filterMap, List.mem_range] at hg
    obtain ⟨v, hv, hg⟩ := hg
    split_ifs at hg with he
    simp only [Option.some.injEq] at hg
    subst hg
    have L := claim_pair_line_sign _ P Q (by norm_num) hconv hpolyP hpolyQ p q hp hq ⟨v, hv⟩
    rw [hpr v hv, hqr v hv] at L
    simp only [SFact.Holds]
    rw [cfg_hept v hv]
    change OrientHolds _ (sarea (HEPT a h b c d f X ⟨v, hv⟩) P Q)
    rcases lt_or_gt_of_ne he with hlt | hlt
    · simp only [hlt, decide_true, OrientHolds, ite_true]; exact L.1 hlt
    · simp only [show ¬ ((Model.wordsP.getD ip []).getD v 0 < (Model.wordsQ.getD iq []).getD v 0)
        by omega, decide_false, OrientHolds, Bool.false_eq_true, ite_false]
      exact L.2 hlt
  have hlow : (Model.wordsQ.getD iq []).getD 6 0 < 3 →
      ∀ e ∈ Model.lowerF, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
    intro h6
    have hq6 := hqr 6 (by norm_num)
    have hlt : sarea (ptH h) (ptC c) Q < 0 := by
      have k := hq 6 3 (by norm_num) (by norm_num)
      have hne : sarea (ptH h) (ptC c) Q ≠ 0 := hgenQ 6 2 (by decide)
      have : ¬ 0 < sarea (ptH h) (ptC c) Q := fun h' => by
        have h3 := k.1 h'
        have e : q 6 = q ⟨6, by norm_num⟩ := rfl
        omega
      exact lt_of_le_of_ne (not_lt.1 this) hne
    obtain ⟨-, -, l1, l2, l3, l4, l5⟩ := claim_lower_Q hfam hmin hlt
    simp only [Model.lowerF, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, zeta]
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> linarith
  have h230 : ip = 4 ∧ iq = 22 → ∀ e ∈ Model.c230F, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
    rintro ⟨rfl, rfl⟩
    have e1 : p = fun i => (case230P i : ℕ) := funext fun i => (hpr i.1 i.2).trans (by
      fin_cases i <;> rfl)
    have e2 : q = fun i => (case230Q i : ℕ) := funext fun i => (hqr i.1 i.2).trans (by
      fin_cases i <;> rfl)
    subst e1 e2
    obtain ⟨-, -, -, -, l1, l2, l3, l4⟩ := claim_case230 hfam hmin hp hq
    simp only [Model.c230F, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, zeta]
    push_cast
    refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith
  unfold Model.cellFacts
  refine (AllHold.append (AllHold.append (allHold_inl ((hP.append hQ).append hpair)) ?_) ?_)
  · split_ifs with h6
    · exact allHold_inr (hlow h6)
    · simp [AllHold]
  · split_ifs with h2
    · exact allHold_inr (h230 h2)
    · simp [AllHold]

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-certificate`). The certificate package
(`hand/six_boundary_two_top_triangular_certificates.json`, verified by
`hand/check_six_boundary_two_top_triangular.py`): with the normalization `f ≤ d`, no pair of
radial words (`P` from (13), `Q` from the 52 hexagon words) is possible. In the manuscript the
262 terminal cells are covered by 220 fixed rational cubics (29,641 positive terms) in the affine
factors (10), (16), (18) and the costs: known-sign signed areas minus `σ, 3σ, ρ` (containment
count), (19) and (20); each is nonnegative on its cell with cube bound (21) below `-3/4`
(greatest `-4128115667948309/4197433925959680`), with reuse across cells checked. Here every
cell has its own kernel-checked certificate on the atoms of `Model.pkg` (the reused ones
re-indexed, `Heilbronn.Six.TwoTopTriangularTrees*`).
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 255-332.
Uses: SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-anchor, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-cap,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-Q-box, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-splits,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-lower-Q, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-case230,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-W-hc, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-ears,
CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_certificate (hfam : TriangularFamily a h b c d f X P Q) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ p ∈ capWords, ∀ q ∈ HEXW,
      HasRadialWord (HEPT a h b c d f X) P (fun i => (p i : ℕ)) →
      HasRadialWord (HEPT a h b c d f X) Q (fun i => (q i : ℕ)) → False := by
  intro p hpm q hqm hp hq
  have hpw : IsRadialWord (fun i => (p i : ℕ)) := by
    simp only [capWords, Finset.mem_insert, Finset.mem_singleton] at hpm
    rcases hpm with rfl | rfl | rfl | rfl | rfl <;> decide
  have hqw : IsRadialWord (fun i => (q i : ℕ)) := by
    simp only [SixBoundarySingleTop.hexagonWords, radialWords, Finset.mem_filter,
      Finset.mem_univ, true_and] at hqm
    exact hqm.1
  obtain ⟨⟨ip, hip, hpr⟩, ⟨iq, hiq, hqr⟩⟩ := word_indices hfam hmin hp hpw hq hqw
  have H := fam_hyp hfam hfd hmin hp hpw hq hqw
  obtain ⟨T, hT⟩ := Model.all_ok ip hip iq hiq
  exact Model.pkg.sound_cert H (cell_holds hfam hmin hp hq hpr hqr) hT

/-- **Theorem 1** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:Theorem1`). Every configuration of the
triangular-hull branch of N6-06 (two free points in the opposite cap `DF(1,1)` whose hull with
`D, F` is a triangle `DXF` containing the inner one, the third free point strictly inside the
anchor hexagon; no line-sign assumptions, square-side positions of `X` allowed) has minimum
ordinary triangle area strictly below `4/73 < A₀`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 20-32, 330-332.
Uses: SIX_BOUNDARY_HULL:claim-transposition, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-hull,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-anchor, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-cap,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-Q-box, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-words,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-splits, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-lower-Q,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-case230, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-W-hc,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-ears, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-certificate -/
theorem theorem1 (hfam : TriangularFamily a h b c d f X P Q) :
    minTriangleArea (nConfig a h b c d f X P Q) < 4 / 73 ∧ (4 / 73 : ℝ) < A₀ := by
  refine ⟨?_, by linarith [A₀_bounds.2.1]⟩
  have main : ∀ {a h b c d f : ℝ} {X P Q : Point}, TriangularFamily a h b c d f X P Q → f ≤ d →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q) → False := by
    intro a h b c d f X P Q hfam hfd hmin
    obtain ⟨⟨p, hpm, hp⟩, q, hqm, hq, -⟩ := claim_words.2.2.2.2.2 hfam hmin
    exact claim_certificate hfam hfd hmin p hpm q hqm hp hq
  by_contra hge
  push Not at hge
  rcases le_total f d with hfd | hdf
  · exact main hfam hfd hge
  obtain ⟨hN, hX, hP, hin, hQ⟩ := hfam
  have T := claim_transposition a h b c d f X P Q
  have hin' : InTriangle (transpose P) (ptD f) (transpose X) (ptF d) := by
    obtain ⟨i1, i2, i3⟩ := hin
    refine ⟨?_, ?_, ?_⟩ <;> simp only [transpose, ptD, ptF, sarea] at i1 i2 i3 ⊢ <;> linarith
  exact main ⟨T.1.1 hN, (claim_transposition a h b c d f X P Q).2.2.2.2.2.2.2.1.1 hX,
    (claim_transposition a h b c d f P X Q).2.2.2.2.2.2.2.1.1 hP, hin',
    (claim_transposition a h b c d f Q X P).2.2.2.2.2.2.2.2.2.1.1 hQ⟩ hdf (by rw [T.2.2.1]; exact hge)

end Final

end Heilbronn.SixBoundaryTwoTopTriangular
