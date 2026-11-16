module

public import Heilbronn.Nine.SixBoundary.SideTwoTopModel
public import Heilbronn.Nine.SixBoundary.SideTwoTopHull

/-! # One side-cap point and two opposite-cap points in N (`docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`)

**Role.** Primary route: closes the six-boundary occupancy N6-07 `(n_L,n_T,n_R;n_I) = (0,2,1;0)`
of `docs/proof/nine/UNRESTRICTED.md`, Section 4 (strict bound; its transpose `(1,2,0;0)` by
`theorem1_transposed`).

**Setting.** The N anchors (`NAnchors`, (1)); one free point `X = (x,y)` in the side cap
`R = CD(1,0)` (`InCapR`) and the two others in the opposite cap `T = DF(1,1)` (`InCapT`); the
cap corners are virtual, square-side contacts allowed. Contradiction hypothesis: every actual
doubled area is at least `s = 8/73` (`4/73 ≤ minTriangleArea`). Notation `L = h-a`, `M = c-b`,
`δ = (1-d)(1-f)`. Section 1 shows that the hull of `D, F` and the two cap points is a triangle
`DEF` with outer vertex `E = (e_x,e_y)` and inner point `O = (o_x,o_y) ∈ int(DEF)`; the later
claims are stated for the configuration `nConfig a h b c d f X E O` with this naming. The full
hull is then the octagon `(V₀,…,V₇) = (A,B,C,X,D,E,F,H)` (`octagon`) with `O` inside.

**Results.**
* `theorem1`: `minTriangleArea < 4/73 < A₀` throughout the occupancy (both cap hulls, square-side
  contacts included); `theorem1_transposed`: the left-cap placement.
* `claim_anchor` (2), `claim_side` (3)–(4), `claim_delta` (5).
* `claim_triangular_cap` (6): the cap hull is a triangle `DEF` with `O` inside, `[DEF] ≥ 3s`,
  `δ ≥ 3s`.
* `claim_hull` (7): the octagon is strictly convex with `O` inside.
* `claim_bounds` (8)–(12): the bounds behind the 27 affine factors (13).
* `claim_words` (16): exactly six words with `r₄ = 1`.
* `claim_certificate`: each of the six words is impossible (six fixed cubics, 515 terms).

Implicit in the manuscript: the claims are stated under `4/73 ≤ minTriangleArea`. Naming the
triangular cap hull `DEF` presumes that `D` and `F` are vertices of the four-point cap hull
(lines 89-99); this is argued in `SIX_BOUNDARY_TWO_TOP_COMPLETION.md` (lines 26-30) and is part of
`claim_triangular_cap` here.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundarySideTwoTop

open Heilbronn.Nine.SixBoundary SixRadial Cover Cert Cert.Expr

/-- The full hull (7): the octagon `(V₀, …, V₇) = (A, B, C, X, D, E, F, H)`. -/
def octagon (a h b c d f : ℝ) (X E : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, X, ptD d, E, ptF f, ptH h]

/-- The occupancy N6-07 after Section 1: N anchors, `X` in the side cap `CD(1,0)`, `E, O` in the
opposite cap `DF(1,1)` with `O` strictly inside the triangle `DEF`. -/
def SideTwoTopFamily (a h b c d f : ℝ) (X E O : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapR c d X ∧ InCapT d f E ∧ InCapT d f O ∧
    InTriangle O (ptD d) E (ptF f)

/-- The six words (16) of `O`. -/
def capWords : Finset (Fin 8 → Fin 8) :=
  {![4, 3, 2, 1, 1, 6, 6, 5], ![4, 3, 2, 2, 1, 5, 6, 5], ![4, 3, 3, 2, 1, 4, 6, 5],
    ![4, 4, 3, 2, 1, 3, 6, 5], ![5, 4, 3, 2, 1, 1, 6, 6], ![5, 4, 3, 2, 1, 2, 6, 5]}


/-! ### Scalar bounds -/

section Scalar

/-- The opposite-cap bounds from `[DEF] ≥ 3s`. -/
theorem cap_bounds {d f ex ey : ℝ} (hd2 : 1 / 2 < d) (hd1 : d < 1) (hf8 : 1 / 8 < f)
    (hf1 : f < 1) (hex1 : ex ≤ 1) (hey1 : ey ≤ 1)
    (hDEF : 3 * (8 / 73) ≤ (1 - d) * (ex - f) - (1 - f) * (1 - ey)) :
    3 * (8 / 73) ≤ (1 - d) * (1 - f) ∧ d < 319 / 511 ∧ f < 1 - 6 * (8 / 73) ∧
      6 * (8 / 73) < ex - f ∧ 3 * (8 / 73) ≤ ey - d := by
  have m3 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - ex)
  have m4 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - ey)
  have e1 : (1 - d) * (1 - f) - ((1 - d) * (ex - f) - (1 - f) * (1 - ey)) =
      (1 - d) * (1 - ex) + (1 - f) * (1 - ey) := by ring
  have hdelta : 3 * (8 / 73) ≤ (1 - d) * (1 - f) := by linarith
  have hd5 : d < 319 / 511 := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - f < 7 / 8) (by linarith : (0 : ℝ) < 1 - d)
    linarith
  have hf6 : f < 1 - 6 * (8 / 73) := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - d < 1 / 2) (by linarith : (0 : ℝ) < 1 - f)
    linarith
  have hE1 : 3 * (8 / 73) ≤ (1 - d) * (ex - f) := by linarith
  have hpos := pos_of_prod (by norm_num : (0 : ℝ) < 3 * (8 / 73)) (by linarith : (0 : ℝ) ≤ 1 - d) hE1
  have hef : 6 * (8 / 73) < ex - f := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - d < 1 / 2) hpos
    linarith
  have e2 : (1 - d) * (ex - f) - (1 - f) * (1 - ey) = (1 - f) * (ey - d) - (1 - d) * (1 - ex) := by
    ring
  have hE2 : 3 * (8 / 73) ≤ (1 - f) * (ey - d) := by linarith
  have hed : 3 * (8 / 73) ≤ ey - d := by
    have := prod_le (by norm_num : (0 : ℝ) < 3 * (8 / 73)) (by linarith : (0 : ℝ) ≤ 1 - f)
      (by linarith : 1 - f ≤ 1) hE2
    linarith
  exact ⟨hdelta, hd5, hf6, hef, hed⟩

/-- The inner-point bounds from `[DOF], [DEO], [EFO] ≥ s`. -/
theorem inner_bounds {d f ex ey ox oy : ℝ} (hd2 : 1 / 2 < d) (hd1 : d < 1) (hf8 : 1 / 8 < f)
    (hf1 : f < 1) (hex1 : ex ≤ 1) (hey1 : ey ≤ 1) (hox1 : ox ≤ 1) (hoy1 : oy ≤ 1)
    (hef : 0 ≤ ex - f) (hed : 0 ≤ ey - d)
    (hDOF : 8 / 73 ≤ (1 - d) * (ox - f) - (1 - f) * (1 - oy))
    (hDEO : 8 / 73 ≤ (ey - d) * (1 - ox) - (1 - ex) * (oy - d))
    (hEFO : 8 / 73 ≤ (ex - f) * (1 - oy) - (1 - ey) * (ox - f)) :
    2 * (8 / 73) < ox - f ∧ 64 / 511 < oy - d ∧ ox ≤ 1 - 8 / 73 ∧ oy ≤ 1 - 8 / 73 := by
  have hs : (0 : ℝ) < 8 / 73 := by norm_num
  have e3 : (1 - d) * (ox - f) - (1 - f) * (1 - oy) = (1 - f) * (oy - d) - (1 - d) * (1 - ox) := by
    ring
  have m5 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - oy)
  have m6 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - ox)
  have hO1 : 8 / 73 ≤ (1 - d) * (ox - f) := by linarith
  have hO2 : 8 / 73 ≤ (1 - f) * (oy - d) := by linarith
  have hof0 := pos_of_prod hs (by linarith : (0 : ℝ) ≤ 1 - d) hO1
  have hod0 := pos_of_prod hs (by linarith : (0 : ℝ) ≤ 1 - f) hO2
  have hof : 2 * (8 / 73) < ox - f := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - d < 1 / 2) hof0; linarith
  have hod : 64 / 511 < oy - d := by
    have := mul_lt_mul_of_pos_right (by linarith : 1 - f < 7 / 8) hod0; linarith
  have m7 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - ex) hod0.le
  have m8 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - ey) hof0.le
  have hox : ox ≤ 1 - 8 / 73 := by
    have := prod_le hs hed (by linarith : ey - d ≤ 1) (by linarith : 8 / 73 ≤ (ey - d) * (1 - ox))
    linarith
  have hoy : oy ≤ 1 - 8 / 73 := by
    have := prod_le hs hef (by linarith : ex - f ≤ 1) (by linarith : 8 / 73 ≤ (ex - f) * (1 - oy))
    linarith
  exact ⟨hof, hod, hox, hoy⟩

end Scalar

/-! ### The configuration as model points -/

/-- The nine points `A, B, C, X, D, E, F, H, O`, indexed as in the model. -/
def cfg (a h b c d f : ℝ) (X E O : Point) : ℕ → Point
  | 0 => (0, a)
  | 1 => (b, 0)
  | 2 => (c, 0)
  | 3 => X
  | 4 => (1, d)
  | 5 => E
  | 6 => (f, 1)
  | 7 => (0, h)
  | 8 => O
  | _ => (0, 0)

/-- The variables `a, h, b, c, d, f, x, y, e_x, e_y, o_x, o_y` (`0` beyond). -/
def zeta (a h b c d f : ℝ) (X E O : Point) : ℕ → ℝ
  | 0 => a
  | 1 => h
  | 2 => b
  | 3 => c
  | 4 => d
  | 5 => f
  | 6 => X.1
  | 7 => X.2
  | 8 => E.1
  | 9 => E.2
  | 10 => O.1
  | 11 => O.2
  | _ => 0

/-- The position in `nConfig` of the model point `i`. -/
def nIdx : Fin 9 → Fin 9 := ![0, 2, 3, 6, 4, 7, 5, 1, 8]

theorem nIdx_injective : Function.Injective nIdx := by decide

section Model

variable {a h b c d f : ℝ} {X E O : Point}

theorem cfg_eq (i : Fin 9) : cfg a h b c d f X E O i = nConfig a h b c d f X E O (nIdx i) := by
  fin_cases i <;> rfl

theorem cfg_oct (i : ℕ) (hi : i < 8) :
    cfg a h b c d f X E O i = octagon a h b c d f X E ⟨i, hi⟩ := by
  interval_cases i <;> rfl

theorem octV_eq (i : Fin 8) : octV a h b c d f X.1 X.2 E.1 E.2 i = cfg a h b c d f X E O i := by
  fin_cases i <;> rfl

theorem ptEval_zeta (i : ℕ) :
    ptEval (zeta a h b c d f X E O) Model.pt i = cfg a h b c d f X E O i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [ptEval, Model.pt, zeta, cfg]

theorem cfg_area (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    8 / 73 ≤ |sarea (cfg a h b c d f X E O i) (cfg a h b c d f X E O j)
      (cfg a h b c d f X E O k)| := by
  have e := fun (n : ℕ) (hn : n < 9) => cfg_eq (a := a) (h := h) (b := b) (c := c) (d := d)
    (f := f) (X := X) (E := E) (O := O) ⟨n, hn⟩
  simp only at e
  rw [e i hi, e j hj, e k hk]
  have hne : ∀ {m n : ℕ} (hm : m < 9) (hn : n < 9), m ≠ n → nIdx ⟨m, hm⟩ ≠ nIdx ⟨n, hn⟩ :=
    fun hm hn hmn h => hmn (by have := nIdx_injective h; simpa using this)
  exact nConfig_area hmin _ _ _ (hne hi hj hij) (hne hj hk hjk) (hne hi hk hik)

/-- An area with a known nonnegative expression. -/
theorem area_ge (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) {V : ℝ}
    (e : sarea (cfg a h b c d f X E O i) (cfg a h b c d f X E O j) (cfg a h b c d f X E O k) = V)
    (hV : 0 ≤ V) : 8 / 73 ≤ V := by
  have := cfg_area hmin hi hj hk hij hjk hik
  rwa [e, abs_of_nonneg hV] at this

/-- The coordinate bounds of the family. -/
theorem fam_bounds (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) :
    (64 / 447 < a ∧ 1 / 8 < b ∧ 4 * (8 / 73) ≤ c ∧ c ≤ 1 - 8 / 73 ∧ 1 / 2 < d ∧
      8 / 73 < h - a ∧ 8 / 73 < c - b ∧ 8 / 73 ≤ X.1 - c ∧ 64 / 447 < X.2 ∧ 8 / 41 ≤ d - X.2 ∧
      c - b < 447 / 584 ∧ 8 / 73 ≤ (1 - c) * (d - X.2) ∧ 4 * (8 / 73) ≤ d * (1 - b) ∧
      1 / 8 < a ∧ 4 * (8 / 73) ≤ h * c) ∧
    (3 * (8 / 73) ≤ (1 - d) * (1 - f) ∧ d < 319 / 511 ∧ f < 1 - 6 * (8 / 73) ∧
      6 * (8 / 73) < E.1 - f ∧ 3 * (8 / 73) ≤ E.2 - d) ∧
    (2 * (8 / 73) < O.1 - f ∧ 64 / 511 < O.2 - d ∧ O.1 ≤ 1 - 8 / 73 ∧ O.2 ≤ 1 - 8 / 73) ∧
    8 / 73 ≤ a * (c - b) ∧ 8 / 73 ≤ b * (h - a) ∧ 8 / 73 ≤ (c - b) * X.2 ∧
    8 / 73 ≤ d * (X.1 - c) - (1 - c) * X.2 ∧
    3 * (8 / 73) ≤ (1 - d) * (E.1 - f) - (1 - f) * (1 - E.2) := by
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, hXc⟩, ⟨⟨e0, e1, e2, e3⟩, hEc⟩, ⟨⟨o0, o1, o2, o3⟩, hOc⟩, hin⟩ := hfam
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨i1, i2, i3⟩ := hin
  have hABC := area_ge hmin (i := 0) (j := 1) (k := 2) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := a * (c - b))
    (by simp only [cfg, sarea]; ring) (by nlinarith)
  have hABH := area_ge hmin (i := 0) (j := 1) (k := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := b * (h - a))
    (by simp only [cfg, sarea]; ring) (by nlinarith)
  have hBCX := area_ge hmin (i := 1) (j := 2) (k := 3) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (c - b) * X.2)
    (by simp only [cfg, sarea]; ring) (by nlinarith)
  have hCXD := area_ge hmin (i := 2) (j := 3) (k := 4) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := d * (X.1 - c) - (1 - c) * X.2)
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at hXc; linarith)
  have hDEO := area_ge hmin (i := 4) (j := 5) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (E.2 - d) * (1 - O.1) - (1 - E.1) * (O.2 - d))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at i1; linarith)
  have hEFO := area_ge hmin (i := 5) (j := 6) (k := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (E.1 - f) * (1 - O.2) - (1 - E.2) * (O.1 - f))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at i2; linarith)
  have hDOF := area_ge hmin (i := 4) (j := 8) (k := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (V := (1 - d) * (O.1 - f) - (1 - f) * (1 - O.2))
    (by simp only [cfg, sarea]; ring) (by simp only [sarea] at i3; linarith)
  have hDEF : 3 * (8 / 73) ≤ (1 - d) * (E.1 - f) - (1 - f) * (1 - E.2) := by
    have e := sarea_add_sarea_add_sarea (ptD d) E (ptF f) O
    simp only [sarea] at e
    nlinarith
  have S := side_bounds hN x1 y0 hABC hABH hBCX hCXD
  have C := cap_bounds S.2.2.2.2.1 (by linarith) (by linarith) (by linarith) e1 e3 hDEF
  have I := inner_bounds S.2.2.2.2.1 (by linarith) (by linarith) (by linarith) e1 e3 o1 o3
    (by linarith [C.2.2.2.1]) (by linarith [C.2.2.2.2]) hDOF hDEO hEFO
  exact ⟨S, C, I, hABC, hABH, hBCX, hCXD, hDEF⟩

/-- The hull octagon is strictly convex with `O` inside, and no hull vertex is collinear with `O`
and another one. -/
theorem fam_hull (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) :
    IsConvexCCW (octagon a h b c d f X E) ∧ InPolygon (octagon a h b c d f X E) O ∧
      ∀ i j : Fin 8, i ≠ j →
        sarea (octagon a h b c d f X E i) (octagon a h b c d f X E j) O ≠ 0 := by
  obtain ⟨S, C, I, hABC, hABH, hBCX, hCXD, hDEF⟩ := fam_bounds hfam hmin
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, -⟩, ⟨⟨e0, e1, e2, e3⟩, -⟩, -, hin⟩ := hfam
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have H : Hull a h b c d f X.1 X.2 E.1 E.2 := ⟨by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith [S.2.2.2.2.2.2.2.1], by linarith, y0, by linarith [S.2.2.2.2.2.2.2.2.2.1],
    by linarith, by linarith [C.2.2.2.1], by linarith, by linarith [C.2.2.2.2], by linarith,
    by linarith⟩
  have hconv : IsConvexCCW (octagon a h b c d f X E) := by
    have := H.convex (fun i j k hij hjk => by
      rw [octV_eq (O := O), octV_eq (O := O), octV_eq (O := O)]
      exact cfg_area hmin (by omega) (by omega) (by omega) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt hij)) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt hjk)) (fun e => by
        have := Fin.ext e; exact absurd this (ne_of_lt (hij.trans hjk))))
    exact this
  refine ⟨hconv, inPolygon_of_inTriangle hconv (p := 4) (q := 5) (r := 6) (by decide) (by decide)
    hin, fun i j hij h0 => ?_⟩
  have := cfg_area hmin (i := i.val) (j := j.val) (k := 8) (by omega) (by omega) (by norm_num)
    (fun e => hij (Fin.ext e)) (by omega) (by omega)
  rw [cfg_oct i.val i.isLt, cfg_oct j.val j.isLt, show cfg a h b c d f X E O 8 = O from rfl] at this
  simp only [Fin.eta] at this
  rw [h0, abs_zero] at this
  norm_num at this

/-- The 27 affine factors are nonnegative. -/
theorem fac_nonneg (f1 : 1 / 7 ≤ a) (f2 : 1 / 8 ≤ b) (f3 : 1 / 2 ≤ h) (f4 : 4 * (8 / 73) ≤ c)
    (f5 : h ≤ 1) (f6 : c ≤ 1 - 8 / 73) (f7 : a ≤ d) (f8 : d ≤ h) (f9 : b ≤ f) (f10 : f ≤ c)
    (f11 : 1 / 2 ≤ d) (f12 : d ≤ 5 / 8) (f13 : 8 / 73 ≤ h - a) (f14 : 8 / 73 ≤ c - b)
    (f15 : 8 / 73 ≤ X.1 - c) (f16 : X.1 ≤ 1) (f17 : 1 / 7 ≤ X.2) (f18 : 7 / 36 ≤ d - X.2)
    (f19 : f ≤ 1 - 6 * (8 / 73)) (f20 : 6 * (8 / 73) ≤ E.1 - f) (f21 : 3 * (8 / 73) ≤ E.2 - d)
    (f22 : E.1 ≤ 1) (f23 : E.2 ≤ 1) (f24 : 2 * (8 / 73) ≤ O.1 - f) (f25 : 1 / 8 ≤ O.2 - d)
    (f26 : O.1 ≤ 1 - 8 / 73) (f27 : O.2 ≤ 1 - 8 / 73) :
    ∀ e ∈ Model.factors, 0 ≤ e.eval (zeta a h b c d f X E O) := by
  simp only [Model.factors, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

/-- The geometric premises of the cover. -/
theorem fam_hyp (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f X E) O r) (hrw : IsRadialWord r) :
    Hyp Model.pkg (cfg a h b c d f X E O) (zeta a h b c d f X E O) := by
  obtain ⟨S, C, I, hABC, hABH, hBCX, hCXD, hDEF⟩ := fam_bounds hfam hmin
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  have hfam' := hfam
  obtain ⟨hN, ⟨⟨x0, x1, y0, y1⟩, -⟩, ⟨⟨e0, e1, e2, e3⟩, -⟩, ⟨⟨o0, o1, o2, o3⟩, -⟩, hin⟩ := hfam'
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  refine ⟨?_, fun i _ => ptEval_zeta i, by norm_num [Model.pkg, Model.bnd], ?_,
    by norm_num [Model.pkg, Model.bnd], ?_, by simp [Model.pkg], by simp [Model.pkg], ?_, ?_, ?_,
    ?_, ?_⟩
  · intro v
    rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
      constructor <;> linarith
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
    · show sarea (1, d) (f, 1) O < 0
      have := hin.2.2
      have e : sarea (f, 1) (1, d) O = -sarea (1, d) (f, 1) O := sarea_swap₁₂ _ _ _
      change 0 < sarea (f, 1) (1, d) O at this
      linarith
  · exact fac_nonneg (by linarith [S.1]) S.2.1.le (by linarith [S.2.2.2.2.1]) S.2.2.1 hh.le
      S.2.2.2.1 had hdh hbf hfc S.2.2.2.2.1.le (by linarith [C.2.1]) S.2.2.2.2.2.1.le
      S.2.2.2.2.2.2.1.le S.2.2.2.2.2.2.2.1 x1 (by linarith [S.2.2.2.2.2.2.2.2.1])
      (by linarith [S.2.2.2.2.2.2.2.2.2.1]) C.2.2.1.le C.2.2.2.1.le C.2.2.2.2 e1 e3 I.1.le
      (by linarith [I.2.1]) I.2.2.1 I.2.2.2
  · intro tb _ e he
    simp only [Model.pkg, Model.extra, List.mem_cons, List.not_mem_nil, or_false] at he
    subst he
    simp only [eval_minus, eval_times, eval_v, eval_k, eval_one, zeta]
    push_cast
    linarith [C.1]
  · intro p hp i hi
    simp only [Model.pkg, List.mem_cons, List.not_mem_nil, or_false] at hp
    subst hp
    refine ⟨r ⟨i, hi⟩, (hrw.1 _).1, by have := (hrw.1 ⟨i, hi⟩).2; simp only [Model.pkg]; omega, ?_⟩
    exact branch_holds hr hgen (fun i hi => cfg_oct i hi) rfl le_rfl i hi

/-- A word of the list is impossible (its certificate). -/
theorem leaf_false (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) {r : Fin 8 → ℕ}
    (hr : HasRadialWord (octagon a h b c d f X E) O r) (hrw : IsRadialWord r) {w : List ℕ}
    (hw : w ∈ Model.words) (hrw' : ∀ i (hi : i < 8), r ⟨i, hi⟩ = w.getD i 0) : False := by
  have H := fam_hyp hfam hmin hr hrw
  obtain ⟨-, -, hgen⟩ := fam_hull hfam hmin
  obtain ⟨n, hn, rfl⟩ := List.mem_iff_getElem.1 hw
  obtain ⟨T, hT⟩ := Model.all_ok n (by simpa [Model.words] using hn)
  refine Model.pkg.sound_cert H (allHold_inl ?_) hT
  have e : Model.words.getD n [] = Model.words[n] := by
    rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hn]; rfl
  show AllHold _ (wordFacts 8 8 (Model.words.getD n []))
  rw [e]
  exact wordFacts_holds hr hgen (fun i hi => cfg_oct i hi) rfl le_rfl hrw'

/-- The four N-configuration areas of the anchors and the side point, from the least area. -/
theorem side_areas {Y Z : Point} (hN : NAnchors a h b c d f) (hX : InCapR c d X)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    8 / 73 ≤ a * (c - b) ∧ 8 / 73 ≤ b * (h - a) ∧ 8 / 73 ≤ (c - b) * X.2 ∧
      8 / 73 ≤ d * (X.1 - c) - (1 - c) * X.2 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨⟨x0, x1, y0, y1⟩, hXc⟩ := hX
  have g : ∀ {p q r : Point} {V : ℝ}, 8 / 73 ≤ |sarea p q r| → sarea p q r = V → 0 ≤ V →
      8 / 73 ≤ V := fun h1 e h0 => by rwa [e, abs_of_nonneg h0] at h1
  refine ⟨g (nConfig_area hmin 0 2 3) (by simp [nConfig, sarea]; ring) (by nlinarith),
    g (nConfig_area hmin 0 2 1) (by simp [nConfig, sarea]) (by nlinarith),
    g (nConfig_area hmin 2 3 6) (by simp [nConfig, sarea]) (by nlinarith),
    g (nConfig_area hmin 3 6 4) (by simp [nConfig, sarea]; ring)
      (by simp only [sarea] at hXc; linarith)⟩

end Model

section Claims

variable {a h b c d f : ℝ} {X Y Z : Point}

set_option linter.unusedVariables false in
/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-anchor`). Equation (2) and the lines after it:
with `s = 8/73`, `L = h-a`, `M = c-b`: `aM ≥ s`, `bL ≥ s`, `h ≥ s/M + s/b`, `hc ≥ 4s`,
`a, b > 1/8`. `docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 42-52. -/
theorem claim_anchor (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    let s : ℝ := 8 / 73
    s ≤ a * (c - b) ∧ s ≤ b * (h - a) ∧ s / (c - b) + s / b ≤ h ∧ 4 * s ≤ h * c ∧
      1 / 8 < b ∧ 1 / 8 < a := by
  dsimp only
  obtain ⟨hABC, hABH, -, -⟩ := side_areas hN hX hmin
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨ha8, hb8, hhc, -⟩ := anchor_bounds ha hah hh hb hbc hc hABC hABH
  refine ⟨hABC, hABH, ?_, hhc, hb8, ha8⟩
  have e1 : 8 / 73 / (c - b) ≤ a := by rw [div_le_iff₀ (by linarith)]; linarith
  have e2 : 8 / 73 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
  linarith

set_option linter.unusedVariables false in
/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-side`). Equations (3)–(4), for the side point
`X = (x, y)`, with `s = 8/73`, `M = c-b`: `[BCX] = My ≥ s`, `[CXD] = d(x-c)-(1-c)y ≥ s`;
`x - c ≥ s`, `c ≤ 1-s`, `d - y ≥ s/(1-c)`, `M < 447/584`, `a, y > 64/447 > 1/7`,
`d ≥ s/M + s/(1-c) ≥ 4s/(1-b) > 256/511 > 1/2`, `h ≥ d`.
`docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 54-80. -/
theorem claim_side (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    let s : ℝ := 8 / 73
    s ≤ (c - b) * X.2 ∧ s ≤ d * (X.1 - c) - (1 - c) * X.2 ∧
      s ≤ X.1 - c ∧ c ≤ 1 - s ∧ s / (1 - c) ≤ d - X.2 ∧ c - b < 447 / 584 ∧
      64 / 447 < a ∧ 64 / 447 < X.2 ∧ (1 / 7 : ℝ) < 64 / 447 ∧
      s / (c - b) + s / (1 - c) ≤ d ∧ 4 * s / (1 - b) ≤ s / (c - b) + s / (1 - c) ∧
      256 / 511 < 4 * s / (1 - b) ∧ (1 / 2 : ℝ) < 256 / 511 ∧ d ≤ h := by
  dsimp only
  obtain ⟨hABC, hABH, hBCX, hCXD⟩ := side_areas hN hX hmin
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := hX
  obtain ⟨ha', hb8, hc4, hc1, hd2, hL, hM, hxc, hy', hdy, hMlt, hW, hd4, -⟩ :=
    side_bounds hN x1 y0 hABC hABH hBCX hCXD
  have hM0 : 0 < c - b := by linarith
  have hW0 : 0 < 1 - c := by linarith
  have e1 : 8 / 73 / (c - b) ≤ X.2 := by rw [div_le_iff₀ hM0]; linarith
  have e2 : 8 / 73 / (1 - c) ≤ d - X.2 := by rw [div_le_iff₀ hW0]; linarith
  have e3 : 4 * (8 / 73) / (1 - b) ≤ 8 / 73 / (c - b) + 8 / 73 / (1 - c) := by
    rw [show 1 - b = (c - b) + (1 - c) by ring, div_add_div _ _ hM0.ne' hW0.ne',
      div_le_div_iff₀ (by positivity) (by positivity)]
    linarith [mul_nonneg (by norm_num : (0 : ℝ) ≤ 8 / 73) (sq_nonneg ((c - b) - (1 - c)))]
  have e4 : 256 / 511 < 4 * (8 / 73) / (1 - b) := by
    rw [lt_div_iff₀ (by linarith)]; linarith
  exact ⟨hBCX, hCXD, hxc, hc1, e2, hMlt, ha', hy', by norm_num, by linarith, e3, e4, by norm_num, hdh⟩

set_option linter.unusedVariables false in
/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-delta`). Equation (5): `δ = (1-d)(1-f) < 7/16 < 4s`
(`f ≥ b > 1/8`, `d > 1/2`). `docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 83-87. -/
theorem claim_delta (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    (1 - d) * (1 - f) < 7 / 16 ∧ (7 / 16 : ℝ) < 4 * (8 / 73) := by
  obtain ⟨hABC, hABH, hBCX, hCXD⟩ := side_areas hN hX hmin
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := hX
  obtain ⟨-, hb8, -, -, hd2, -⟩ := side_bounds hN x1 y0 hABC hABH hBCX hCXD
  refine ⟨?_, by norm_num⟩
  have h1 : 0 < 1 - d := by linarith
  have := mul_lt_mul_of_pos_left (show 1 - f < 7 / 8 by linarith) h1
  have := mul_lt_mul_of_pos_right (show 1 - d < 1 / 2 by linarith) (show (0 : ℝ) < 7 / 8 by norm_num)
  linarith

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-triangular-cap`). Equation (6): the hull of `D, F`
and the two cap points is a triangle (a quadrilateral hull would force `δ ≥ 4s` by the four-point
endpoint lemma, contrary to (5)): naming its outer vertex `E` and inner point `O`,
`O ∈ int(DEF)`, `[DEF] ≥ 3s` and `δ ≥ 3s`. `docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 89-99.
Uses: TYPE_II:FourPointEndpointLemma, SIX_BOUNDARY_SIDE_TWO_TOP:claim-delta -/
theorem claim_triangular_cap (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    ∃ E O : Point, ((E = Y ∧ O = Z) ∨ (E = Z ∧ O = Y)) ∧ InTriangle O (ptD d) E (ptF f) ∧
      3 * (8 / 73) ≤ sarea (ptD d) E (ptF f) ∧ 3 * (8 / 73) ≤ (1 - d) * (1 - f) := by
  have hdel := (claim_delta hN hX hY hZ hmin).1
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Z) := by linarith
  -- the signs
  have nY := nConfig_area hmin 4 5 7
  have nZ := nConfig_area hmin 4 5 8
  have nYZD := nConfig_area hmin 4 7 8
  have nYZF := nConfig_area hmin 5 7 8
  change 8 / 73 ≤ |sarea (ptD d) (ptF f) Y| at nY
  change 8 / 73 ≤ |sarea (ptD d) (ptF f) Z| at nZ
  change 8 / 73 ≤ |sarea (ptD d) Y Z| at nYZD
  change 8 / 73 ≤ |sarea (ptF f) Y Z| at nYZF
  have sY : sarea (ptD d) (ptF f) Y < 0 := by
    rcases hY.2.lt_or_eq with h | h
    · exact h
    · rw [h, abs_zero] at nY; norm_num at nY
  have sZ : sarea (ptD d) (ptF f) Z < 0 := by
    rcases hZ.2.lt_or_eq with h | h
    · exact h
    · rw [h, abs_zero] at nZ; norm_num at nZ
  have nz : ∀ {x : ℝ}, 8 / 73 ≤ |x| → x ≠ 0 := fun h e => by rw [e, abs_zero] at h; norm_num at h
  -- the four-point endpoint lemma in the virtual triangle `DF(1,1)`
  have hT := TypeII.fourPointEndpointLemma (ptD d) (ptF f) (1, 1) Y Z (capT_mem hd1 hf1 hY)
    (capT_mem hd1 hf1 hZ)
  have hsub : 4 / 73 ≤ minTriangleArea ![ptD d, ptF f, Y, Z] := by
    have e : ![ptD d, ptF f, Y, Z] = nConfig a h b c d f X Y Z ∘ ![4, 5, 7, 8] := by
      funext m; fin_cases m <;> rfl
    rw [e]
    exact hmin.trans (le_min_comp (by norm_num) _ (by decide))
  have harea : triangleArea (ptD d) (ptF f) (1, 1) = (1 - d) * (1 - f) / 2 := by
    rw [triangleArea_eq, show sarea (ptD d) (ptF f) (1, 1) = -((1 - d) * (1 - f)) by
      simp only [sarea]; ring, abs_neg, abs_of_pos (by nlinarith)]
  have quad : ¬ TypeII.TriangularHull ![ptD d, ptF f, Y, Z] → False := fun hq => by
    have := hT.2 hq
    rw [harea] at this
    linarith
  -- the area bounds for a triangle `DEF` containing `O`
  have tri : ∀ E O : Point, InTriangle O (ptD d) E (ptF f) → 8 / 73 ≤ |sarea (ptD d) E O| →
      8 / 73 ≤ |sarea E (ptF f) O| → 8 / 73 ≤ |sarea (ptF f) (ptD d) O| → E ∈ unitSquare →
      3 * (8 / 73) ≤ sarea (ptD d) E (ptF f) ∧ 3 * (8 / 73) ≤ (1 - d) * (1 - f) := by
    intro E O hin a1 a2 a3 hE
    obtain ⟨i1, i2, i3⟩ := hin
    rw [abs_of_pos i1] at a1; rw [abs_of_pos i2] at a2; rw [abs_of_pos i3] at a3
    have e := sarea_add_sarea_add_sarea (ptD d) E (ptF f) O
    obtain ⟨e0, e1, e2, e3⟩ := hE
    have hDEF : 3 * (8 / 73) ≤ sarea (ptD d) E (ptF f) := by linarith
    refine ⟨hDEF, ?_⟩
    have : (1 - d) * (1 - f) - sarea (ptD d) E (ptF f) = (1 - d) * (1 - E.1) + (1 - f) * (1 - E.2) := by
      simp only [sarea]; ring
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - E.1),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f) (by linarith : (0 : ℝ) ≤ 1 - E.2)]
  rcases lt_or_gt_of_ne (nz nYZD) with s1 | s1 <;> rcases lt_or_gt_of_ne (nz nYZF) with s2 | s2
  · -- quadrilateral `D Z Y F`
    exfalso
    refine quad fun ht => quad_not_triangular (P0 := ptD d) (P1 := Z) (P2 := Y) (P3 := ptF f)
      (by simp only [sarea] at s1 s2 sY sZ ⊢; linarith) (by simp only [sarea] at s1 s2 sY sZ ⊢; linarith)
      (by simp only [sarea] at s1 s2 sY sZ ⊢; linarith)
      (by simp only [sarea] at s1 s2 sY sZ ⊢; linarith) ?_
    have e : ![ptD d, Z, Y, ptF f] ∘ (Equiv.swap (1 : Fin 4) 3) = ![ptD d, ptF f, Y, Z] := by
      funext m; fin_cases m <;> rfl
    exact TypeII.triangularHull_comp_perm _ (Equiv.swap (1 : Fin 4) 3) (by rw [e]; exact ht)
  · -- `Y` inside `D Z F`
    have hin : InTriangle Y (ptD d) Z (ptF f) :=
      ⟨by simp only [sarea] at s1 s2 sY sZ ⊢; linarith, by simp only [sarea] at s1 s2 sY sZ ⊢; linarith,
        by simp only [sarea] at s1 s2 sY sZ ⊢; linarith⟩
    obtain ⟨t1, t2⟩ := tri Z Y hin (nConfig_area hmin 4 8 7) (nConfig_area hmin 8 5 7)
      (nConfig_area hmin 5 4 7) hZ.1
    exact ⟨Z, Y, Or.inr ⟨rfl, rfl⟩, hin, t1, t2⟩
  · -- `Z` inside `D Y F`
    have hin : InTriangle Z (ptD d) Y (ptF f) :=
      ⟨s1, by simp only [sarea] at s1 s2 sY sZ ⊢; linarith, by simp only [sarea] at s1 s2 sY sZ ⊢; linarith⟩
    obtain ⟨t1, t2⟩ := tri Y Z hin (nConfig_area hmin 4 7 8) (nConfig_area hmin 7 5 8)
      (nConfig_area hmin 5 4 8) hY.1
    exact ⟨Y, Z, Or.inl ⟨rfl, rfl⟩, hin, t1, t2⟩
  · -- quadrilateral `D Y Z F`
    exfalso
    refine quad fun ht => quad_not_triangular (P0 := ptD d) (P1 := Y) (P2 := Z) (P3 := ptF f)
      s1 (by simp only [sarea] at s1 s2 sY sZ ⊢; linarith)
      (by simp only [sarea] at s1 s2 sY sZ ⊢; linarith) (by simp only [sarea] at s1 s2 sY sZ ⊢; linarith) ?_
    have e : ![ptD d, Y, Z, ptF f] ∘ (Equiv.swap (1 : Fin 4) 2 * Equiv.swap (1 : Fin 4) 3) =
        ![ptD d, ptF f, Y, Z] := by
      funext m; fin_cases m <;> rfl
    exact TypeII.triangularHull_comp_perm _ _ (by rw [e]; exact ht)


/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-hull`). The full hull is the strictly convex
octagon `(A, B, C, X, D, E, F, H)` (7), and `O` is its sole interior point.
`docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 101-112. -/
theorem claim_hull {X E O : Point} (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) :
    IsConvexCCW (octagon a h b c d f X E) ∧ InPolygon (octagon a h b c d f X E) O :=
  ⟨(fam_hull hfam hmin).1, (fam_hull hfam hmin).2.1⟩

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-bounds`). Equations (8)–(12), with `s = 8/73`,
`X = (x, y)`, `E = (e_x, e_y)`, `O = (o_x, o_y)`: `d < 1 - 24s/7 = 319/511 < 5/8`, `f < 1-6s`,
`c ≥ 4s`, `d - y ≥ s/(1-c) ≥ 8/41 > 7/36`, `e_x - f > 6s`, `e_y - d ≥ 3s`, `o_x - f > 2s`,
`o_y - d > 8s/7 > 1/8`, `o_x, o_y ≤ 1-s` (the latter from `[DEO], [EFO] ≥ s`).
`docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 114-162. -/
theorem claim_bounds {X E O : Point} (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) :
    let s : ℝ := 8 / 73
    d < 1 - 24 * s / 7 ∧ 1 - 24 * s / 7 = 319 / 511 ∧ (319 / 511 : ℝ) < 5 / 8 ∧ f < 1 - 6 * s ∧
      4 * s ≤ c ∧ s / (1 - c) ≤ d - X.2 ∧ 8 / 41 ≤ s / (1 - c) ∧ (7 / 36 : ℝ) < 8 / 41 ∧
      6 * s < E.1 - f ∧ 3 * s ≤ E.2 - d ∧ 2 * s < O.1 - f ∧ 8 * s / 7 < O.2 - d ∧
      (1 / 8 : ℝ) < 8 * s / 7 ∧ O.1 ≤ 1 - s ∧ O.2 ≤ 1 - s := by
  dsimp only
  obtain ⟨S, C, I, -⟩ := fam_bounds hfam hmin
  obtain ⟨-, -, hc4, hc1, -, -, -, -, -, -, -, hW, -⟩ := S
  obtain ⟨-, hd5, hf6, hef, hed⟩ := C
  obtain ⟨hof, hod, hox, hoy⟩ := I
  have hW0 : 0 < 1 - c := by linarith
  refine ⟨by linarith, by norm_num, by norm_num, hf6, hc4, ?_, ?_, by norm_num, hef, hed, hof,
    by linarith, by norm_num, hox, hoy⟩
  · rw [div_le_iff₀ hW0]; linarith
  · rw [le_div_iff₀ hW0]; linarith

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-words`), restated. The radial word of `O` on the
octagon (14)–(15), with `r₄ = 1` (`O` inside `DEF`), is one of the six words (16). (The manuscript
also states that these are all the solutions; here the enumeration `Model.enumTree`, checked by
the kernel, shows that every word of `O` is one of them, which is what the proof uses.)
`docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 181-213. -/
theorem claim_words :
    ∀ {a h b c d f : ℝ} {X E O : Point}, SideTwoTopFamily a h b c d f X E O →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O) →
      ∃ r ∈ capWords, HasRadialWord (octagon a h b c d f X E) O (fun i => (r i : ℕ)) := by
  intro a h b c d f X E O hfam hmin
  obtain ⟨hconv, hpoly, hgen⟩ := fam_hull hfam hmin
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ O (by norm_num) hconv hpoly hgen
  have H := fam_hyp hfam hmin hr hrw
  obtain ⟨w, hw, hwr⟩ := enum_sound H Model.enum_ok (by decide) hr
    (fun i => by have := (hrw.1 i).2; simp only [Model.pkg]; omega)
    (fun i hi => cfg_oct i hi) le_rfl
  have key : ∀ r' : Fin 8 → Fin 8, (∀ i : Fin 8, w.getD i 0 = r' i) → r = fun i => (r' i : ℕ) :=
    fun r' h => funext fun i => (hwr i.val i.isLt).trans (h i)
  simp only [Model.words, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨![4, 3, 2, 1, 1, 6, 6, 5], by decide, (key ![4, 3, 2, 1, 1, 6, 6, 5] (by decide)) ▸ hr⟩
  · exact ⟨![4, 3, 2, 2, 1, 5, 6, 5], by decide, (key ![4, 3, 2, 2, 1, 5, 6, 5] (by decide)) ▸ hr⟩
  · exact ⟨![4, 3, 3, 2, 1, 4, 6, 5], by decide, (key ![4, 3, 3, 2, 1, 4, 6, 5] (by decide)) ▸ hr⟩
  · exact ⟨![4, 4, 3, 2, 1, 3, 6, 5], by decide, (key ![4, 4, 3, 2, 1, 3, 6, 5] (by decide)) ▸ hr⟩
  · exact ⟨![5, 4, 3, 2, 1, 1, 6, 6], by decide, (key ![5, 4, 3, 2, 1, 1, 6, 6] (by decide)) ▸ hr⟩
  · exact ⟨![5, 4, 3, 2, 1, 2, 6, 5], by decide, (key ![5, 4, 3, 2, 1, 2, 6, 5] (by decide)) ▸ hr⟩

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-certificate`). The certificate package
(`docs/proof/nine/six_boundary_side_two_top_certificates.json`, verified by
`docs/proof/nine/check_six_boundary_side_two_top.py`): each of the six words (16) is impossible. In the
manuscript each word has one fixed rational cubic (scale 4096; 515 positive terms in total) in
the 27 affine factors (13) and the 85 quadratic costs (the 84 signed areas minus `s` or `3s`, and
`δ - 3s`), nonnegative on its word, with cube bound below `-3/4` (greatest
`-11150846883847/11243126587392`). Here the six certificates are checked by the kernel on the
atoms of `Model.pkg` (`Model.ok0`, …, `Model.ok5`). `docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`,
lines 210-254.
Uses: SIX_BOUNDARY_SIDE_TWO_TOP:claim-anchor, SIX_BOUNDARY_SIDE_TWO_TOP:claim-side,
SIX_BOUNDARY_SIDE_TWO_TOP:claim-triangular-cap, SIX_BOUNDARY_SIDE_TWO_TOP:claim-bounds -/
theorem claim_certificate {X E O : Point}
    (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) :
    ∀ r ∈ capWords, ¬ HasRadialWord (octagon a h b c d f X E) O (fun i => (r i : ℕ)) := by
  intro r hr hrad
  simp only [capWords, Finset.mem_insert, Finset.mem_singleton] at hr
  rcases hr with rfl | rfl | rfl | rfl | rfl | rfl
  · exact leaf_false hfam hmin hrad (by decide) (w := [4, 3, 2, 1, 1, 6, 6, 5]) (by decide)
      (by intro i hi; interval_cases i <;> rfl)
  · exact leaf_false hfam hmin hrad (by decide) (w := [4, 3, 2, 2, 1, 5, 6, 5]) (by decide)
      (by intro i hi; interval_cases i <;> rfl)
  · exact leaf_false hfam hmin hrad (by decide) (w := [4, 3, 3, 2, 1, 4, 6, 5]) (by decide)
      (by intro i hi; interval_cases i <;> rfl)
  · exact leaf_false hfam hmin hrad (by decide) (w := [4, 4, 3, 2, 1, 3, 6, 5]) (by decide)
      (by intro i hi; interval_cases i <;> rfl)
  · exact leaf_false hfam hmin hrad (by decide) (w := [5, 4, 3, 2, 1, 1, 6, 6]) (by decide)
      (by intro i hi; interval_cases i <;> rfl)
  · exact leaf_false hfam hmin hrad (by decide) (w := [5, 4, 3, 2, 1, 2, 6, 5]) (by decide)
      (by intro i hi; interval_cases i <;> rfl)

/-- **Theorem 1** (`SIX_BOUNDARY_SIDE_TWO_TOP:Theorem1`). Every configuration of N6-07 (N
anchors, one free point in the side cap `CD(1,0)`, two free points in the opposite cap
`DF(1,1)`; square-side contacts and both possible hulls of the four opposite-cap points included)
has minimum ordinary triangle area strictly below `4/73 < A₀`.
`docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 21-31, 252-254.
Uses: SIX_BOUNDARY_SIDE_TWO_TOP:claim-anchor, SIX_BOUNDARY_SIDE_TWO_TOP:claim-side,
SIX_BOUNDARY_SIDE_TWO_TOP:claim-delta, SIX_BOUNDARY_SIDE_TWO_TOP:claim-triangular-cap,
SIX_BOUNDARY_SIDE_TWO_TOP:claim-hull, SIX_BOUNDARY_SIDE_TWO_TOP:claim-bounds,
SIX_BOUNDARY_SIDE_TWO_TOP:claim-words, SIX_BOUNDARY_SIDE_TWO_TOP:claim-certificate -/
theorem theorem1 (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z) :
    minTriangleArea (nConfig a h b c d f X Y Z) < 4 / 73 ∧ (4 / 73 : ℝ) < A₀ := by
  refine ⟨?_, by linarith [A₀_bounds.2.1]⟩
  by_contra hge
  push Not at hge
  obtain ⟨E, O, hEO, hin, -, -⟩ := claim_triangular_cap hN hX hY hZ hge
  have key : SideTwoTopFamily a h b c d f X E O ∧
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O) := by
    rcases hEO with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact ⟨⟨hN, hX, hY, hZ, hin⟩, hge⟩
    · refine ⟨⟨hN, hX, hZ, hY, hin⟩, ?_⟩
      rw [show nConfig a h b c d f X E O = nConfig a h b c d f X O E ∘ Equiv.swap 7 8 by
        funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
      exact hge
  obtain ⟨r, hr, hrad⟩ := claim_words key.1 key.2
  exact claim_certificate key.1 key.2 r hr hrad

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-transposed`). Theorem 1 for the transposed
placement (lines 14-17, "transposing the square if necessary"): the side point in the left cap
`FH(0,1)`. `docs/proof/nine/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 14-17.
Uses: SIX_BOUNDARY_SIDE_TWO_TOP:Theorem1, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem1_transposed (hN : NAnchors a h b c d f)
    (hX : InCapL f h X) (hY : InCapT d f Y) (hZ : InCapT d f Z) :
    minTriangleArea (nConfig a h b c d f X Y Z) < 4 / 73 := by
  have T := claim_transposition a h b c d f X Y Z
  have k := theorem1 (T.1.1 hN) (T.2.2.2.2.2.2.1.1 hX)
    ((claim_transposition a h b c d f Y X Z).2.2.2.2.2.2.2.1.1 hY)
    ((claim_transposition a h b c d f Z X Y).2.2.2.2.2.2.2.1.1 hZ)
  rw [T.2.2.1] at k
  exact k.1

end Claims

end Heilbronn.Nine.SixBoundarySideTwoTop
