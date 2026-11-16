module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Common.CertNotation
public import Heilbronn.Common.DataReader

/-!
# Three occupied corner caps (case N6-05)

In family N, with anchors `A = (0,a)`, `H = (0,h)`, `B = (b,0)`, `C = (c,0)`, `D = (1,d)`,
`F = (f,1)`, let `X` lie in the closed corner cap beyond `CD` (towards `(1,0)`), `Y` in the
closed cap beyond `FH` (towards `(0,1)`) and `Q` in the closed cap beyond `DF` (towards `(1,1)`).
Then some triangle has area below `7/128 < A₀` (`three_caps`).

This closes the occupancy `(n_L, n_T, n_R; n_I) = (1, 1, 1; 0)` of the six-boundary form (N6-05,
`docs/proof/nine/UNRESTRICTED.md` §4) directly. The hand proof reduces that case to a convex nonagon and
applies the affine isoperimetric inequality (`docs/proof/nine/GLOBAL_COMPLETION.md`, Theorem 1); here nine
triangles suffice, and no convexity argument is needed.

The proof is a polynomial certificate in the twelve coordinates
`(a, h, b, c, d, f, x, y, z, w, r, t)`, where `X = (x, y)`, `Y = (z, w)`, `Q = (r, t)`, split into
three cells by `h ≤ 1/2`, then `c ≤ 1/2`. The atoms of each cell are 14 normalization and
cap-membership facts, 8 consequences of single area bounds, the cuts of the cell, and the nine
oriented area costs `σ·[PQR] - 7/64` of `ABC, ABH, AYH, BCX, CXD, XDQ, DFQ, FYH, FYQ`. The
weights are in `data/nine/n605/` (found by linear programming, `scripts/nine/n605/`); the kernel expands
the weighted sum and checks that it is negative on the unit cube (`Cert.check_sound`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryThreeCaps

open Cert Cert.Expr

/-! ### The model -/

/-- The doubled area threshold `s = 7/64`. -/
abbrev s : Expr := k (7 / 64)

/-- The nine points as expressions in the variables `a h b c d f x y z w r t` (`0, …, 11`). -/
abbrev pA : Expr × Expr := (0, v 0)
abbrev pH : Expr × Expr := (0, v 1)
abbrev pB : Expr × Expr := (v 2, 0)
abbrev pC : Expr × Expr := (v 3, 0)
abbrev pD : Expr × Expr := (1, v 4)
abbrev pF : Expr × Expr := (v 5, 1)
abbrev pX : Expr × Expr := (v 6, v 7)
abbrev pY : Expr × Expr := (v 8, v 9)
abbrev pQ : Expr × Expr := (v 10, v 11)

/-- The atoms common to the three cells: normalization, cap membership and the consequences of
single area bounds. -/
def commonAtoms : List Expr :=
  [v 0, v 2, 1 - v 1, 1 - v 3, v 4 - v 0, v 1 - v 4, v 5 - v 2, v 3 - v 5,
   1 - v 6, 1 - v 9, v 10 - v 5, 1 - v 10, v 11 - v 4, 1 - v 11,
   v 1 - v 0 - s, v 3 - v 2 - s, v 6 - v 3 - s, v 9 - v 1 - s,
   v 4 - v 7 - s, v 5 - v 8 - s, v 7 - s, v 8 - s]

/-- The nine oriented area costs. -/
def costAtoms : List Expr :=
  [esarea pA pB pC - s, esarea pA pB pH - s, esarea pA pY pH - s, esarea pB pC pX - s,
   esarea pC pX pD - s, esarea pX pD pQ - s, k (-1) * esarea pD pF pQ - s, esarea pF pY pH - s,
   esarea pF pY pQ - s]

/-- The atoms of the three cells: `h ≤ 1/2`; `h ≥ 1/2, c ≤ 1/2`; `h, c ≥ 1/2`. -/
def cell0 : List Expr := commonAtoms ++ [k (1 / 2) - v 1] ++ costAtoms
def cell1 : List Expr := commonAtoms ++ [v 1 - k (1 / 2), k (1 / 2) - v 3] ++ costAtoms
def cell2 : List Expr := commonAtoms ++ [v 1 - k (1 / 2), v 3 - k (1 / 2)] ++ costAtoms

theorem cell0_check : check cell0 (term_rows% "../Data/n605/B_cell0_terms.txt") = true := by
  decide +kernel

theorem cell1_check : check cell1 (term_rows% "../Data/n605/B_cell1_terms.txt") = true := by
  decide +kernel

theorem cell2_check : check cell2 (term_rows% "../Data/n605/B_cell2_terms.txt") = true := by
  decide +kernel

/-! ### The geometric facts behind the atoms -/

/-- The coordinates as a point of the cube (variables beyond the twelfth are `0`). -/
def zeta (a h b c d f x y z w r t : ℝ) : ℕ → ℝ
  | 0 => a | 1 => h | 2 => b | 3 => c | 4 => d | 5 => f | 6 => x | 7 => y
  | 8 => z | 9 => w | 10 => r | 11 => t | _ => 0

section Facts

variable {a h b c d f x y z w r t : ℝ}

/-! The positions forced by the caps, and the consequences of single area bounds `≥ s`. -/

theorem y_le_d (hd : 0 < d) (hc : c < 1) (hx1 : x ≤ 1)
    (hXc : 0 ≤ (x - c) * (d - 0) - (y - 0) * (1 - c)) : y ≤ d := by nlinarith
theorem c_le_x (hd : 0 < d) (hc : c < 1) (hy0 : 0 ≤ y)
    (hXc : 0 ≤ (x - c) * (d - 0) - (y - 0) * (1 - c)) : c ≤ x := by nlinarith
theorem z_le_f (hh : h < 1) (hf : 0 < f) (hw1 : w ≤ 1)
    (hYc : 0 ≤ (z - f) * (h - 1) - (w - 1) * (0 - f)) : z ≤ f := by nlinarith
theorem d_le_t (hf : f < 1) (hd : d < 1) (hr1 : r ≤ 1)
    (hQc : 0 ≤ (r - 1) * (1 - d) - (t - d) * (f - 1)) : d ≤ t := by nlinarith
theorem f_le_r (hf : f < 1) (hd : d < 1) (ht1 : t ≤ 1)
    (hQc : 0 ≤ (r - 1) * (1 - d) - (t - d) * (f - 1)) : f ≤ r := by nlinarith

end Facts

/-- The real hypotheses of the certificate: the anchors, the square, the cap positions and the
nine oriented area bounds. -/
structure Hyps (a h b c d f x y z w r t : ℝ) : Prop where
  ha : 0 < a
  hah : a < h
  hh : h < 1
  hb : 0 < b
  hbc : b < c
  hc : c < 1
  had : a ≤ d
  hdh : d ≤ h
  hbf : b ≤ f
  hfc : f ≤ c
  hx0 : 0 ≤ x
  hx1 : x ≤ 1
  hy0 : 0 ≤ y
  hy1 : y ≤ 1
  hz0 : 0 ≤ z
  hz1 : z ≤ 1
  hw0 : 0 ≤ w
  hw1 : w ≤ 1
  hr0 : 0 ≤ r
  hr1 : r ≤ 1
  ht0 : 0 ≤ t
  ht1 : t ≤ 1
  hyd : y ≤ d
  hxc : c ≤ x
  hzf : z ≤ f
  htd : d ≤ t
  hrf : f ≤ r
  cABC : 2 * (7 / 128) ≤ a * (c - b)
  cABH : 2 * (7 / 128) ≤ b * (h - a)
  cAYH : 2 * (7 / 128) ≤ z * (h - a)
  cBCX : 2 * (7 / 128) ≤ (c - b) * y
  cCXD : 2 * (7 / 128) ≤ (x - c) * (d - 0) - (y - 0) * (1 - c)
  cXDQ : 2 * (7 / 128) ≤ (1 - x) * (t - d) + (d - y) * (1 - r)
  cDFQ : 2 * (7 / 128) ≤ (r - 1) * (1 - d) - (t - d) * (f - 1)
  cFYH : 2 * (7 / 128) ≤ (z - f) * (h - 1) - (w - 1) * (0 - f)
  cFYQ : 2 * (7 / 128) ≤ (r - f) * (1 - w) + (1 - t) * (f - z)

/-- The consequences of single area bounds. -/
theorem Hyps.derived {a h b c d f x y z w r t : ℝ} (H : Hyps a h b c d f x y z w r t) :
    h - a - 7 / 64 ≥ 0 ∧ c - b - 7 / 64 ≥ 0 ∧ x - c - 7 / 64 ≥ 0 ∧ w - h - 7 / 64 ≥ 0 ∧
      d - y - 7 / 64 ≥ 0 ∧ f - z - 7 / 64 ≥ 0 ∧ y - 7 / 64 ≥ 0 ∧ z - 7 / 64 ≥ 0 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc, hx0, hx1, hy0, hy1, hz0, hz1, hw0, hw1,
    hr0, hr1, ht0, ht1, hyd, hxc, hzf, htd, hrf, cABC, cABH, cAYH, cBCX, cCXD, cXDQ, cDFQ,
    cFYH, cFYQ⟩ := H
  have hwh' : 2 * (7 / 128) ≤ f * (w - h) := by
    linarith [mul_nonneg hz0 (sub_nonneg.2 hh.le)]
  have hwh : h ≤ w := by
    by_contra hc'
    push Not at hc'
    linarith [mul_pos (lt_of_lt_of_le hb hbf) (sub_pos.2 hc')]
  have e5' : 2 * (7 / 128) ≤ (1 - c) * (d - y) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ d) (sub_nonneg.2 hx1)]
  have e6' : 2 * (7 / 128) ≤ (f - z) * (1 - h) := by
    linarith [mul_nonneg (by linarith : (0:ℝ) ≤ f) (sub_nonneg.2 hw1)]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · linarith [mul_nonneg (sub_nonneg.2 (hbc.trans hc).le) (sub_nonneg.2 hah.le)]
  · linarith [mul_nonneg (sub_nonneg.2 (hah.trans hh).le) (sub_nonneg.2 hbc.le)]
  · linarith [mul_nonneg (sub_nonneg.2 (hdh.trans_lt hh).le) (sub_nonneg.2 hxc),
      mul_nonneg (sub_nonneg.2 hc.le) hy0]
  · linarith [mul_nonneg (sub_nonneg.2 (hfc.trans_lt hc).le) (sub_nonneg.2 hwh)]
  · linarith [mul_nonneg (by linarith : (0:ℝ) ≤ c) (sub_nonneg.2 hyd)]
  · linarith [mul_nonneg (by linarith : (0:ℝ) ≤ h) (sub_nonneg.2 hzf)]
  · linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - (c - b)) hy0]
  · linarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - (h - a)) hz0]

theorem zeta_mem {a h b c d f x y z w r t : ℝ} (H : Hyps a h b c d f x y z w r t) (i : ℕ) :
    0 ≤ zeta a h b c d f x y z w r t i ∧ zeta a h b c d f x y z w r t i ≤ 1 := by
  have := H
  obtain ⟨ha, hah, hh, hb, hbc, hc, _, _, _, _, hx0, hx1, hy0, hy1, hz0, hz1, hw0, hw1,
    hr0, hr1, ht0, ht1, _⟩ := this
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;>
    simp only [zeta] <;> constructor <;> linarith [H.had, H.hdh, H.hbf, H.hfc]

theorem common_nonneg {a h b c d f x y z w r t : ℝ} (H : Hyps a h b c d f x y z w r t) :
    ∀ e ∈ commonAtoms ++ costAtoms, 0 ≤ e.eval (zeta a h b c d f x y z w r t) := by
  obtain ⟨e1, e2, e3, e4, e5, e6, e7, e8⟩ := H.derived
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc, hx0, hx1, hy0, hy1, hz0, hz1, hw0, hw1,
    hr0, hr1, ht0, ht1, hyd, hxc, hzf, htd, hrf, cABC, cABH, cAYH, cBCX, cCXD, cXDQ, cDFQ,
    cFYH, cFYQ⟩ := H
  simp only [commonAtoms, costAtoms, List.cons_append, List.nil_append, List.forall_mem_cons,
    List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true, eval_v, eval_minus, eval_times,
    eval_zero, eval_one, eval_k, eval_esarea, Heilbronn.sarea, zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

theorem certificate {a h b c d f x y z w r t : ℝ} (H : Hyps a h b c d f x y z w r t) : False := by
  have hz := zeta_mem H
  have common := common_nonneg H
  have hcut : ∀ (L : List Expr), (∀ e ∈ L, 0 ≤ e.eval (zeta a h b c d f x y z w r t)) →
      ∀ e ∈ commonAtoms ++ L ++ costAtoms, 0 ≤ e.eval (zeta a h b c d f x y z w r t) := by
    intro L hL e he
    simp only [List.mem_append] at he
    rcases he with (he | he) | he
    · exact common e (List.mem_append_left _ he)
    · exact hL e he
    · exact common e (List.mem_append_right _ he)
  rcases le_total h (1 / 2) with hh2 | hh2
  · have h0 : ∀ e ∈ cell0, 0 ≤ e.eval (zeta a h b c d f x y z w r t) :=
      hcut [k (1 / 2) - v 1] (by
        simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
          and_true, eval_minus, eval_k, eval_v, zeta]
        push_cast; linarith)
    exact check_sound cell0_check _ hz h0
  rcases le_total c (1 / 2) with hc2 | hc2
  · have h1 : ∀ e ∈ cell1, 0 ≤ e.eval (zeta a h b c d f x y z w r t) :=
      hcut [v 1 - k (1 / 2), k (1 / 2) - v 3] (by
        simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
          and_true, eval_minus, eval_k, eval_v, zeta]
        push_cast; constructor <;> linarith)
    exact check_sound cell1_check _ hz h1
  · have h2 : ∀ e ∈ cell2, 0 ≤ e.eval (zeta a h b c d f x y z w r t) :=
      hcut [v 1 - k (1 / 2), v 3 - k (1 / 2)] (by
        simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
          and_true, eval_minus, eval_k, eval_v, zeta]
        push_cast; constructor <;> linarith)
    exact check_sound cell2_check _ hz h2

/-- **Three occupied caps.** If `X`, `Y`, `Q` lie in the closed corner caps beyond `CD`, `FH`
and `DF` of the family-N anchors, some triangle of the nine points has area below `7/128`. -/
theorem three_caps {a h b c d f : ℝ} (hN : NAnchors a h b c d f) {X Y Q : Point}
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hXc : 0 ≤ Heilbronn.sarea (c, 0) X (1, d)) (hYc : 0 ≤ Heilbronn.sarea (f, 1) Y (0, h))
    (hQc : 0 ≤ Heilbronn.sarea (1, d) Q (f, 1)) :
    minTriangleArea (nConfig a h b c d f X Y Q) < 7 / 128 := by
  obtain ⟨x, y⟩ := X
  obtain ⟨z, w⟩ := Y
  obtain ⟨r, t⟩ := Q
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨hx0, hx1, hy0, hy1⟩ := hX
  obtain ⟨hz0, hz1, hw0, hw1⟩ := hY
  obtain ⟨hr0, hr1, ht0, ht1⟩ := hQ
  simp only [Heilbronn.sarea] at hXc hYc hQc
  by_contra hlt
  have hm : (7 / 128 : ℝ) ≤ minTriangleArea (nConfig a h b c d f (x, y) (z, w) (r, t)) :=
    not_lt.1 hlt
  have ht : (0 : ℝ) < 7 / 128 := by norm_num
  have hyd := y_le_d (by linarith) hc hx1 hXc
  have hxc := c_le_x (by linarith) hc hy0 hXc
  have hzf := z_le_f hh (by linarith) hw1 hYc
  have htd := d_le_t (by linarith) (by linarith) hr1 hQc
  have hrf := f_le_r (by linarith) (by linarith) ht1 hQc
  refine certificate (a := a) (h := h) (b := b) (c := c) (d := d) (f := f) (x := x) (y := y)
    (z := z) (w := w) (r := r) (t := t) ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc, hx0, hx1,
    hy0, hy1, hz0, hz1, hw0, hw1, hr0, hr1, ht0, ht1, hyd, hxc, hzf, htd, hrf, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_⟩
  · have := two_mul_le_sarea_of_nonneg ht (p := (0, a)) (q := (b, 0)) (r := (c, 0))
      (by simp only [Heilbronn.sarea]; nlinarith) (area_of_le_min hm 0 2 3)
    simp only [Heilbronn.sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg ht (p := (0, a)) (q := (b, 0)) (r := (0, h))
      (by simp only [Heilbronn.sarea]; nlinarith) (area_of_le_min hm 0 2 1)
    simp only [Heilbronn.sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg ht (p := (0, a)) (q := (z, w)) (r := (0, h))
      (by simp only [Heilbronn.sarea]; nlinarith) (area_of_le_min hm 0 7 1)
    simp only [Heilbronn.sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg ht (p := (b, 0)) (q := (c, 0)) (r := (x, y))
      (by simp only [Heilbronn.sarea]; nlinarith) (area_of_le_min hm 2 3 6)
    simp only [Heilbronn.sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg ht (p := (c, 0)) (q := (x, y)) (r := (1, d))
      (by simp only [Heilbronn.sarea]; linarith) (area_of_le_min hm 3 6 4)
    simp only [Heilbronn.sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg ht (p := (x, y)) (q := (1, d)) (r := (r, t))
      (by simp only [Heilbronn.sarea]; nlinarith [mul_nonneg (sub_nonneg.2 hx1) (sub_nonneg.2 htd),
        mul_nonneg (sub_nonneg.2 hyd) (sub_nonneg.2 hr1)]) (area_of_le_min hm 6 4 8)
    simp only [Heilbronn.sarea] at this; linarith
  · have := sarea_le_of_nonpos ht (p := (1, d)) (q := (f, 1)) (r := (r, t))
      (by simp only [Heilbronn.sarea]; linarith) (area_of_le_min hm 4 5 8)
    simp only [Heilbronn.sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg ht (p := (f, 1)) (q := (z, w)) (r := (0, h))
      (by simp only [Heilbronn.sarea]; linarith) (area_of_le_min hm 5 7 1)
    simp only [Heilbronn.sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg ht (p := (f, 1)) (q := (z, w)) (r := (r, t))
      (by simp only [Heilbronn.sarea]; nlinarith [mul_nonneg (sub_nonneg.2 hrf) (sub_nonneg.2 hw1),
        mul_nonneg (sub_nonneg.2 ht1) (sub_nonneg.2 hzf)]) (area_of_le_min hm 5 7 8)
    simp only [Heilbronn.sarea] at this; linarith

end Heilbronn.Nine.SixBoundaryThreeCaps
