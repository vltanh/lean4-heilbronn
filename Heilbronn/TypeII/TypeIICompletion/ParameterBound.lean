module

public import Heilbronn.TypeII.TypeII
public import Heilbronn.TypeII.TypeIICompletion.Signs

/-! # A universal six-point parameter inequality (`hand/TYPE_II_COMPLETION.md`, §7)

`TYPE_II_COMPLETION.md` lines 706–790. Six points `D, C, E, B, L, P` with `L` inside `DBE` and
above `CE`, `P` central and above `CE` (the positions of §6.3), `0 < b < 1` (no `b ≤ 1/2`).

* `Zroot s q = (q + √(q² - 8sq + 4s²))/2`, the larger root of `z² - qz + 2sq - s²`;
* `lemma7` (**Lemma 7**) at a general positive doubled threshold `s` (the manuscript states it at
  `s = 7/64`; `C1_TOP_CAP_OF_SPLIT.md` lines 60–99 uses it at the threshold `s/c`, and every step
  of the proof is valid for a general `s > 0`): `q ≥ Ks` and `s(q+1)/(bq) ≤ z ≤ Z(q)`,
  `z = 1 - L_y`, (24);
* `eq25` ((25)): its three consequences at `s = 7/64`.

The steps of §§6.3–6.4 that the proof of Lemma 7 reuses ("the positions used in Section 6.3",
"the derivation (18)–(19)", "the weighted identity in Section 6.3") are stated first, at a general
threshold: `claim_LP_identities` (the weighted identity and `d_C - d_E = h_L - h_P`), `eq15` (the
three possible line signs of `LP`) and `eq19`. Here `L = (l, v)`, `P = (p, t)`, and
`d_X = det(L - X, P - X) = sarea X L P`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion

open Heilbronn.TypeII

/-- `Z(q) = (q + √(q² - 8sq + 4s²))/2`, `TYPE_II_COMPLETION.md` §6.4 and (24). -/
def Zroot (s q : ℝ) : ℝ := (q + Real.sqrt (q ^ 2 - 8 * s * q + 4 * s ^ 2)) / 2

/-- **Claim** (`TYPE_II_COMPLETION:claim-LP-identities`, made up; §6.3). For all points
`L = (l,v)`, `P = (p,t)` and `E = (0,λ)`, `q = 1 - λ`, with `d_X = [XLP]`,
`h_L = [ECL] = v - λ - ql`, `h_P = [ECP] = t - λ - qp`:
`d_D = p(1-v) - l(1-t)`, the weighted identity `(1-v) d_E + (v-λ) d_D = ql(t-v)`, and
`d_C - d_E = h_L - h_P`. `hand/TYPE_II_COMPLETION.md`, lines 510–567. -/
theorem claim_LP_identities (l : ℝ) (L P : Point) :
    sarea ptD L P = P.1 * (1 - L.2) - L.1 * (1 - P.2) ∧
      (1 - L.2) * sarea (ptE l) L P + (L.2 - l) * sarea ptD L P =
        (1 - l) * L.1 * (P.2 - L.2) ∧
      sarea ptC L P - sarea (ptE l) L P = sarea (ptE l) ptC L - sarea (ptE l) ptC P := by
  simp only [sarea, ptD, ptC, ptE]
  refine ⟨by ring, by ring, by ring⟩

/-! ### The positions of §6.3 -/

/-- `L` strictly inside `DBE` lies below `y = 1` and strictly inside `DCE` when above `CE`. -/
theorem pos_L {l b : ℝ} {L : Point} (hb : 0 < b) (hl1 : l < 1)
    (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L) :
    0 < sarea ptC ptD L ∧ InTriangle L ptD (ptE l) ptC := by
  have h1 : 0 < sarea ptC ptD L := by
    refine tc_pos_of_inTri hL ?_ ?_ ?_ ?_ <;> simp only [sarea, ptC, ptD, ptE, ptB] <;> nlinarith
  exact ⟨h1, hL.1, hLce, h1⟩

/-- A central point above `CE` is strictly inside `DCE`. -/
theorem pos_P {l b : ℝ} {P : Point} (hb : 0 < b) (hl1 : l < 1) (hP : IsCentral b P)
    (hPce : 0 < sarea (ptE l) ptC P) : InTriangle P ptD (ptE l) ptC := by
  have h1 : 0 < sarea ptD (ptE l) P := by
    refine tc_pos_of_inTri hP ?_ ?_ ?_ ?_ <;> simp only [sarea, ptC, ptD, ptE, ptB] <;> nlinarith
  exact ⟨h1, hPce, hP.2.2⟩

/-- The scalar facts of §6.3 at a positive doubled threshold `s` for `D, C, E, B, L, P`
(indices `0, …, 5`), with `L = (x, v)`, `P = (p, t)`. -/
theorem pos_facts {l b s : ℝ} {L P : Point} (hs : 0 < s) (hb : 0 < b) (hl1 : l < 1)
    (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P]) :
    s ≤ (1 - l) * L.1 ∧ s ≤ b * (1 - L.2) - L.1 ∧ s ≤ L.2 - l - (1 - l) * L.1 ∧
      s ≤ P.2 - l - (1 - l) * P.1 ∧ s ≤ 1 - P.2 ∧ 0 < L.1 ∧ L.2 < 1 ∧ b * (1 - P.2) < P.1 ∧
      s ≤ sarea ptD L P := by
  have hs2 : 0 < s / 2 := by positivity
  have hDEL := tc_ge_of_pos hs2 hmin 0 2 4 hL.1
  have hBDL := tc_ge_of_pos hs2 hmin 3 0 4 hL.2.2
  have hECL := tc_ge_of_pos hs2 hmin 2 1 4 hLce
  have hECP := tc_ge_of_pos hs2 hmin 2 1 5 hPce
  have hCDP := tc_ge_of_pos hs2 hmin 1 0 5 hP.2.2
  have hDBP := hP.1
  have hLy := (pos_L hb hl1 hL hLce).1
  simp only [Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, sarea, ptD, ptC, ptE,
    ptB] at hDEL hBDL hECL hECP hCDP hDBP hLy
  have hx : 0 < L.1 := by nlinarith
  have hdD : 0 < sarea ptD L P := by
    simp only [sarea, ptD]; nlinarith [mul_pos hLy (show 0 < 1 - P.2 by linarith)]
  have hdD' := tc_ge_of_pos hs2 hmin 0 4 5 hdD
  simp only [Matrix.cons_val, Matrix.cons_val_zero] at hdD'
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith, hx, by linarith,
    by linarith, by linarith⟩

/-- The larger root bound: `z² - qz + 2sq - s² ≤ 0` gives `z ≤ Z(q)`. -/
theorem le_Zroot_of_quad {s q z : ℝ} (h : z ^ 2 - q * z + 2 * s * q - s ^ 2 ≤ 0) :
    z ≤ Zroot s q := by
  unfold Zroot
  have : |2 * z - q| ≤ Real.sqrt (q ^ 2 - 8 * s * q + 4 * s ^ 2) :=
    Real.abs_le_sqrt (by nlinarith)
  linarith [le_abs_self (2 * z - q)]

/-- `q - 4s ≤ Z(q)` for `s > 0`. -/
theorem sub4_le_Zroot {s q : ℝ} (hs : 0 < s) : q - 4 * s ≤ Zroot s q := by
  unfold Zroot
  rcases le_total q (8 * s) with h | h
  · linarith [Real.sqrt_nonneg (q ^ 2 - 8 * s * q + 4 * s ^ 2)]
  · have : q - 8 * s ≤ Real.sqrt (q ^ 2 - 8 * s * q + 4 * s ^ 2) := by
      rw [show q - 8 * s = Real.sqrt ((q - 8 * s) ^ 2) by
        rw [Real.sqrt_sq (by linarith)]]
      exact Real.sqrt_le_sqrt (by nlinarith)
    linarith

/-- Conversely, `z ≤ Z(q)` with `q ≤ 2z` and `q ≥ Ks` gives `z² - qz + 2sq - s² ≤ 0`. -/
theorem quad_of_le_Zroot {s q z : ℝ} (hs : 0 < s) (hq : Ktwo * s ≤ q) (hz : z ≤ Zroot s q)
    (h2 : q ≤ 2 * z) : z ^ 2 - q * z + 2 * s * q - s ^ 2 ≤ 0 := by
  unfold Zroot at hz
  have h3 := tc_sqrt3_sq
  have h3p : 0 ≤ Real.sqrt 3 := Real.sqrt_nonneg 3
  have hD : 0 ≤ q ^ 2 - 8 * s * q + 4 * s ^ 2 := by
    unfold Ktwo at hq
    have : 2 * Real.sqrt 3 * s ≤ q - 4 * s := by linarith
    nlinarith [mul_nonneg h3p hs.le]
  have hsq := Real.sq_sqrt hD
  have : 2 * z - q ≤ Real.sqrt (q ^ 2 - 8 * s * q + 4 * s ^ 2) := by linarith
  nlinarith [mul_self_le_mul_self (by linarith : (0 : ℝ) ≤ 2 * z - q) this]

/-- **Equation (15)** (`TYPE_II_COMPLETION:eq15`, made up). In the positions of §6.3 (`L`
strictly inside `DBE` and above `CE`, `P` central and above `CE`, `0 < b < 1`, `0 < λ < 1`) with
positive least area of `D, C, E, B, L, P`: `d_D > 0`, and the signs `(d_E, d_C)` of the line `LP`
are one of `(+,-)`, `(-,+)`, `(-,-)` (the three vertices of `DCE` are not on one side of `LP`).
`hand/TYPE_II_COMPLETION.md`, lines 510–525. -/
theorem eq15 {l b : ℝ} {L P : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l) (hl1 : l < 1)
    (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P]) :
    0 < sarea ptD L P ∧
      ((0 < sarea (ptE l) L P ∧ sarea ptC L P < 0) ∨ (sarea (ptE l) L P < 0 ∧ 0 < sarea ptC L P) ∨
        (sarea (ptE l) L P < 0 ∧ sarea ptC L P < 0)) := by
  have hLy := (pos_L hb hl1 hL hLce).1
  have hDBL := hL.2.2
  have hDBP := hP.1
  have hCDP := hP.2.2
  simp only [sarea, ptD, ptC, ptB] at hLy hDBL hDBP hCDP
  have hdD : 0 < sarea ptD L P := by
    simp only [sarea, ptD]; nlinarith [mul_pos hLy (show 0 < 1 - P.2 by linarith)]
  refine ⟨hdD, ?_⟩
  have hE : sarea (ptE l) L P ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 4 5
  have hC : sarea ptC L P ≠ 0 := sarea_ne_zero_of_min_pos hpos 1 4 5
  rcases lt_or_gt_of_ne hE with hE | hE <;> rcases lt_or_gt_of_ne hC with hC | hC
  · exact Or.inr (Or.inr ⟨hE, hC⟩)
  · exact Or.inr (Or.inl ⟨hE, hC⟩)
  · exact Or.inl ⟨hE, hC⟩
  · exfalso
    have hin := (pos_L hb hl1 hL hLce).2
    have := tc_pos_of_inTri (Y := L) (Z := P) hin (by rw [sarea_cycle ptD L P]; exact hdD.le)
      (by rw [sarea_cycle (ptE l) L P]; exact hE.le) (by rw [sarea_cycle ptC L P]; exact hC.le)
      (by rw [sarea_cycle ptD L P, sarea_cycle (ptE l) L P, sarea_cycle ptC L P]; linarith)
    simp only [sarea] at this; linarith

/-- **Equation (19)** (`TYPE_II_COMPLETION:eq19`, made up). In the positions of §6.3, at a general
doubled threshold `s > 0` for `D, C, E, B, L, P` and `0 < b < 1`: if `d_E, d_C < 0` (the line `LP`
isolates `D`), then with `q = 1 - λ`, `z = 1 - L_y`: `z² - qz + 2sq - s² ≤ 0` and
`z ≥ s(q+1)/(bq)`; the derivation (18) → `J(l, z) ≤ 0` → (19) uses only `b < 1`.
`hand/TYPE_II_COMPLETION.md`, lines 586–611 and 731–735. -/
theorem eq19 {l b s : ℝ} {L P : Point} (hs : 0 < s) (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l)
    (hl1 : l < 1) (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P])
    (hdE : sarea (ptE l) L P < 0) (hdC : sarea ptC L P < 0) :
    (1 - L.2) ^ 2 - (1 - l) * (1 - L.2) + 2 * s * (1 - l) - s ^ 2 ≤ 0 ∧
      s * ((1 - l) + 1) / (b * (1 - l)) ≤ 1 - L.2 := by
  obtain ⟨hDEL, hBDL, hECL, hECP, hCDP, hx, hLy, -, -⟩ :=
    pos_facts hs hb hl1 hL hLce hP hPce hmin
  have hs2 : 0 < s / 2 := by positivity
  have hE := sarea_le_of_le_min_of_neg hs2 hmin 2 4 5 hdE
  have hC := sarea_le_of_le_min_of_neg hs2 hmin 1 4 5 hdC
  simp only [Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one, sarea, ptC, ptE] at hE hC
  have hq : 0 < 1 - l := by linarith
  have hz : s < 1 - L.2 := by nlinarith
  constructor
  · nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - L.2 by linarith)
        (show 0 ≤ P.1 * (L.2 - l) - L.1 * (P.2 - l) - s by linarith),
      mul_nonneg (show (0 : ℝ) ≤ L.2 - l by nlinarith)
        (show 0 ≤ (1 - L.2) * (1 - P.1) - (1 - L.1) * (1 - P.2) - s by linarith),
      mul_nonneg (show (0 : ℝ) ≤ 1 - s - P.2 by linarith)
        (show 0 ≤ L.2 - l - (1 - l) * L.1 by linarith),
      mul_nonneg (show (0 : ℝ) ≤ (1 - l) * L.1 - s by linarith)
        (show 0 ≤ 1 - L.2 - s by linarith)]
  · rw [div_le_iff₀ (by positivity)]
    nlinarith

/-- **Lemma 7** (`TYPE_II_COMPLETION:Lemma7`), at a general doubled threshold `s > 0`. Suppose
`0 < b < 1`, `0 < λ < 1`, `L` strictly inside `DBE` and above `CE`, `P` strictly inside `DCB` and
above `CE`, and every doubled triangle area of `D, C, E, B, L, P` at least `s`. With `q = 1 - λ`
and `z = 1 - L_y`: `q ≥ Ks` and `s(q+1)/(bq) ≤ z ≤ Z(q)` (24). `hand/TYPE_II_COMPLETION.md`,
lines 706–758.

The manuscript fixes `s = 7/64`; its proof uses no numerical value of `s` (the three line signs
(15) of §6.3, (18)–(19) with only `b < 1`, and `s(15s - 2q) < 0` for `q ≥ 8s`), and
`C1_TOP_CAP_OF_SPLIT.md` applies it at `s/c`; hence the threshold is a parameter here.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II_COMPLETION:eq15,
TYPE_II_COMPLETION:claim-LP-identities, TYPE_II_COMPLETION:eq19. -/
theorem lemma7 {l b s : ℝ} {L P : Point} (hs : 0 < s) (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l)
    (hl1 : l < 1) (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P]) :
    Ktwo * s ≤ 1 - l ∧ s * ((1 - l) + 1) / (b * (1 - l)) ≤ 1 - L.2 ∧
      1 - L.2 ≤ Zroot s (1 - l) := by
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P] :=
    lt_of_lt_of_le (by positivity) hmin
  obtain ⟨hDEL, hBDL, hECL, hECP, hCDP, hx, hLy, -, hdD⟩ :=
    pos_facts hs hb hl1 hL hLce hP hPce hmin
  have hq : 0 < 1 - l := by linarith
  -- q ≥ Ks
  have hK : Ktwo * s ≤ 1 - l := by
    have h5 : s / 2 ≤ minTriangleArea ![ptD, ptE l, ptC, L, P] :=
      tc_min_sub hmin _ ![0, 2, 1, 4, 5] ![0, 2, 1, 0, 3, 4] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> rfl)
    have := tc_two_int hs (pos_L hb hl1 hL hLce).2 (pos_P hb hl1 hP hPce) h5
    simp only [sarea, ptD, ptE, ptC] at this; linarith
  have hs2 : 0 < s / 2 := by positivity
  refine ⟨hK, ?_, ?_⟩
  · rw [div_le_iff₀ (by positivity)]
    nlinarith
  obtain ⟨-, hsg⟩ := eq15 hb hb1 hl hl1 hL hLce hP hPce hpos
  obtain ⟨hid1, hid2, hid3⟩ := claim_LP_identities l L P
  rcases hsg with ⟨hE, hC⟩ | ⟨hE, hC⟩ | ⟨hE, hC⟩
  · -- `d_E > 0`: the weighted identity
    have hE' := tc_ge_of_pos hs2 hmin 2 4 5 hE
    simp only [Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one] at hE'
    apply le_Zroot_of_quad
    have h1 : s ≤ L.1 * (P.2 - L.2) := by
      have hw : (1 - l) * s ≤ (1 - l) * (L.1 * (P.2 - L.2)) := by
        nlinarith [mul_le_mul_of_nonneg_left hE' (show (0 : ℝ) ≤ 1 - L.2 by linarith),
          mul_le_mul_of_nonneg_left hdD (show (0 : ℝ) ≤ L.2 - l by nlinarith)]
      exact le_of_mul_le_mul_left hw hq
    have h2 : s ≤ L.1 * (1 - L.2 - s) := by nlinarith
    have h3 : 0 < 1 - L.2 - s := by
      by_contra hcon; push Not at hcon; nlinarith
    nlinarith [mul_le_mul_of_nonneg_right (show (1 - l) * L.1 ≤ 1 - l - (1 - L.2) - s by linarith)
      h3.le]
  · -- `d_C > 0`: `h_L ≥ 3s`
    have hC' := tc_ge_of_pos hs2 hmin 1 4 5 hC
    have hE' := sarea_le_of_le_min_of_neg hs2 hmin 2 4 5 hE
    simp only [Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one] at hC' hE'
    have hECL' : sarea (ptE l) ptC L = L.2 - l - (1 - l) * L.1 := by
      simp only [sarea, ptE, ptC]; ring
    have hECP' : sarea (ptE l) ptC P = P.2 - l - (1 - l) * P.1 := by
      simp only [sarea, ptE, ptC]; ring
    have : 1 - L.2 ≤ (1 - l) - 4 * s := by
      rw [hECL', hECP'] at hid3; nlinarith
    exact this.trans (sub4_le_Zroot hs)
  · exact le_Zroot_of_quad (eq19 hs hb hb1 hl hl1 hL hLce hP hPce hmin hE hC).1

/-- **Equation (25)** (`TYPE_II_COMPLETION:eq25`). Three consequences of Lemma 7 at `s = 7/64`:
`b ≤ 2/5 ⇒ q > 89/100`, `b ≤ 3/7 ⇒ q ≥ 7/8`, `b ≤ 9/20 ⇒ q > 27/32`, `q = 1 - λ`.
`hand/TYPE_II_COMPLETION.md`, lines 760–790.

Uses: TYPE_II_COMPLETION:Lemma7, TYPE_II_COMPLETION:Theorem6 (the root comparisons (20)–(21)). -/
theorem eq25 {l b : ℝ} {L P : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l) (hl1 : l < 1)
    (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P]) :
    (b ≤ 2 / 5 → 89 / 100 < 1 - l) ∧ (b ≤ 3 / 7 → 7 / 8 ≤ 1 - l) ∧
      (b ≤ 9 / 20 → 27 / 32 < 1 - l) := by
  have hs : (0 : ℝ) < 7 / 64 := by norm_num
  have hmin' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P] := by
    norm_num; exact hmin
  obtain ⟨hK, hlow, hup⟩ := lemma7 hs hb hb1 hl hl1 hL hLce hP hPce hmin'
  have hKs := tc_Ks_gt
  have hq : 0 < 1 - l := by linarith
  have hlow' : 7 / 64 * ((1 - l) + 1) ≤ b * (1 - l) * (1 - L.2) := by
    rw [div_le_iff₀ (by positivity)] at hlow; linarith
  set z := 1 - L.2 with hz
  set q := 1 - l with hq'
  -- the common step: `q ≤ q₀`, `b ≤ b₀`, `z₀ ≤ z` contradict `f(z₀; q₀) ≥ 0` unless …
  have key : ∀ b₀ q₀ z₀ : ℝ, 0 < b₀ → b ≤ b₀ → q ≤ q₀ → 0 < q₀ →
      b₀ * q₀ * z₀ = 7 / 64 * (q₀ + 1) → q₀ < 2 * z₀ → 7 / 32 < z₀ →
      z₀ ≤ z ∧ z ^ 2 - q * z + 2 * (7 / 64) * q - (7 / 64) ^ 2 ≤ 0 ∧
        (z ^ 2 - q * z + 2 * (7 / 64) * q - (7 / 64) ^ 2) -
          (z₀ ^ 2 - q₀ * z₀ + 2 * (7 / 64) * q₀ - (7 / 64) ^ 2) ≥ (q₀ - q) * (z - 7 / 32) := by
    intro b₀ q₀ z₀ hb₀ hbb hqq hq₀ hz₀ h2 h3
    have hzz : z₀ ≤ z := by
      have h1 : b₀ * q * z ≥ 7 / 64 * (q + 1) := by
        nlinarith [mul_le_mul_of_nonneg_right hbb (show 0 ≤ q * z by nlinarith)]
      have h2 : b₀ * q₀ * z * q ≥ b₀ * q₀ * z₀ * q := by
        rw [hz₀]; nlinarith [mul_le_mul_of_nonneg_left h1 hq₀.le]
      have hpos : 0 < b₀ * q₀ * q := by positivity
      by_contra hcon; push Not at hcon
      nlinarith [mul_lt_mul_of_pos_right hcon hpos]
    refine ⟨hzz, quad_of_le_Zroot hs hK hup (by linarith), ?_⟩
    nlinarith [mul_nonneg (sub_nonneg.2 hzz) (show 0 ≤ z + z₀ - q₀ by linarith)]
  refine ⟨fun hb0 => ?_, fun hb0 => ?_, fun hb0 => ?_⟩
  · by_contra hcon; push Not at hcon
    obtain ⟨h1, h2, h3⟩ := key (2 / 5) (89 / 100) (6615 / 11392) (by norm_num) hb0 hcon
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    nlinarith
  · by_contra hcon; push Not at hcon
    obtain ⟨h1, h2, h3⟩ := key (3 / 7) (7 / 8) (35 / 64) (by norm_num) hb0 hcon.le
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    nlinarith
  · by_contra hcon; push Not at hcon
    obtain ⟨h1, h2, h3⟩ := key (9 / 20) (27 / 32) (2065 / 3888) (by norm_num) hb0 hcon
      (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    nlinarith

end Heilbronn.TypeIICompletion
