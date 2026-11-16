module

public import Heilbronn.C1.TopCapConvexPair
public import Heilbronn.C1.TwoLower.TriangularPairCert

/-! # Complete exclusion of two C1 points beyond the top edge
(`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 3.
With `hand/C1_TOP_CAP_CONVEX_PAIR.md` (convex upper hull) it excludes both remaining free points
in the top cap.

Setting (lines 3-17): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`,
`s = 8/73`, `ρ = 49/60`; a competitive nine-point configuration `c1Config h c d f L M X Y`
(least area at least `A₀`) with `L, M` inside `OHC` (so `hc > ρ`), and `X, Y` in the closed top
cap with `X` strictly inside `DFY` (triangular upper hull).

Definitions: `T = 1 - df`, and the four necessary polynomials `F₀, …, F₃` of (5)–(8) as
functions of `(h, c, d, f, r)` with `r = -[DFY]`.

Results:
* `eq1_3`: `a = [ODY] > 0`, `b > 0`, `r = a + b - T ≥ 3s`, and, when `[OXY] > 0`,
  `a(r - s) ≥ s(2r + T)` (3);
* `eq5_8`: `F₀, F₁ ≥ 0`, and `F₂, F₃ ≥ 0` when `[OXY] > 0`;
* `claim_reduction`: the necessary system holds at a point of the box (10) at `hc = ρ`;
* `claim_certificate`: no point of the box (10) satisfies all four (51 Bernstein leaves);
* `theorem_main` (**Theorem**): the two remaining points cannot both lie in the top cap.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapTriangularPair

open Heilbronn.C1 Heilbronn.C1TopCapConvexPair Heilbronn.C1TwoLower

/-- `T = 1 - df` (1). -/
def capT (d f : ℝ) : ℝ := 1 - d * f

/-- `F₀ = AU - s(A + U) - Δr` (5), `s = 8/73`. -/
def poly0 (h c d f r : ℝ) : ℝ :=
  areaA c d f * areaU h d f - 8 / 73 * (areaA c d f + areaU h d f) - areaΔ h c d f * r

/-- `F₁ = (1 - f)(U - s) - fr` (6). -/
def poly1 (h d f r : ℝ) : ℝ := (1 - f) * (areaU h d f - 8 / 73) - f * r

/-- `F₂ = {T(1 - d) - dr}(r - s) - s(1 - d)(2r + T)` (7). -/
def poly2 (d f r : ℝ) : ℝ :=
  (capT d f * (1 - d) - d * r) * (r - 8 / 73) - 8 / 73 * (1 - d) * (2 * r + capT d f)

/-- `F₃ = {T(U - s) + (T - h)r}(r - s) - sU(2r + T)` (8). -/
def poly3 (h d f r : ℝ) : ℝ :=
  (capT d f * (areaU h d f - 8 / 73) + (capT d f - h) * r) * (r - 8 / 73) -
    8 / 73 * areaU h d f * (2 * r + capT d f)

/-- The triangular-hull setting of the note: weak anchors, the nine-point configuration with
least area at least `A₀`, `L, M` strictly inside `OHC`, `X, Y` in the closed top cap, and `X`
strictly inside `DFY`. -/
structure Setting (h c d f : ℝ) (L M X Y : Point) : Prop where
  anchors : C1AnchorsWeak h c d f
  memL : L ∈ unitSquare
  memM : M ∈ unitSquare
  memX : X ∈ unitSquare
  memY : Y ∈ unitSquare
  competitive : A₀ ≤ minTriangleArea (c1Config h c d f L M X Y)
  lowerL : InLower h c L
  lowerM : InLower h c M
  capX : sarea (ptD d) (ptF f) X ≤ 0
  capY : sarea (ptD d) (ptF f) Y ≤ 0
  X_DFY : InsideTri X (ptD d) (ptF f) Y

/-- **Claim** (`C1_TOP_CAP_TRIANGULAR_PAIR:eq1-3`). In the setting, with `Y = (x, y)`:
`a = y - dx = [ODY] > 0`, `b = x - fy > 0`, `r = -[DFY] = a + b - T` with `T = 1 - df`, and
`r ≥ 3s` (2) (`s = 8/73`); if `[OXY] > 0` (arranged by transposition), then `[OXY] ≥ s` gives
`a(r - s) ≥ s(2r + T)` (3). `hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 28-70. -/
theorem eq1_3 {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y) :
    0 < Y.2 - d * Y.1 ∧ 0 < Y.1 - f * Y.2 ∧
      -sarea (ptD d) (ptF f) Y = (Y.2 - d * Y.1) + (Y.1 - f * Y.2) - capT d f ∧
      3 * (8 / 73) ≤ -sarea (ptD d) (ptF f) Y ∧
      (0 < sarea ptO X Y →
        (Y.2 - d * Y.1) * (-sarea (ptD d) (ptF f) Y - 8 / 73) ≥
          8 / 73 * (2 * -sarea (ptD d) (ptF f) Y + capT d f)) := by
  obtain ⟨hA, hL, hM, hX, hY, hmin, -, -, hXc, hYc, hXin⟩ := hS
  obtain ⟨-, -, -, -, hd1, hf1⟩ := anchor_bounds hA hmin
  obtain ⟨-, -, fx, dy⟩ := cap_pt hA hd1 hf1 hY hYc
  obtain ⟨x0, x1, y0, y1⟩ := hY
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have ea : sarea ptO (ptD d) Y = Y.2 - d * Y.1 := by simp only [sarea, ptO, ptD]; ring
  have eb : sarea ptO (ptF f) Y = -(Y.1 - f * Y.2) := by simp only [sarea, ptO, ptF]; ring
  have e1 : 8 / 73 ≤ |sarea ptO (ptD d) Y| := ar hmin 0 2 8
  have e2 : 8 / 73 ≤ |sarea ptO (ptF f) Y| := ar hmin 0 3 8
  rw [ea] at e1; rw [eb, abs_neg] at e2
  have ha : 0 < Y.2 - d * Y.1 := by
    have : 0 ≤ Y.2 - d * Y.1 := by nlinarith
    exact lt_of_le_of_ne this (ar_ne (by norm_num) e1).symm
  have hb : 0 < Y.1 - f * Y.2 := by
    have : 0 ≤ Y.1 - f * Y.2 := by nlinarith
    exact lt_of_le_of_ne this (ar_ne (by norm_num) e2).symm
  have hr : -sarea (ptD d) (ptF f) Y = (Y.2 - d * Y.1) + (Y.1 - f * Y.2) - capT d f := by
    simp only [sarea, ptD, ptF, capT]; ring
  -- `X` inside `DYF` (counterclockwise)
  have hDFY : sarea (ptD d) (ptF f) Y < 0 :=
    lt_of_le_of_ne hYc (ar_ne (by norm_num) (ar hmin 2 3 8 : 8 / 73 ≤ |sarea (ptD d) (ptF f) Y|))
  have hin : InTriangle X (ptD d) Y (ptF f) := by
    rcases hXin with h1 | h1
    · obtain ⟨p1, p2, p3⟩ := h1
      have := sarea_add_sarea_add_sarea (ptD d) (ptF f) Y X; linarith
    · exact h1
  have h3 : 3 * (8 / 73) ≤ sarea (ptD d) Y (ptF f) := in_ge3 hmin 2 8 3 7 hin
  have eY : sarea (ptD d) Y (ptF f) = -sarea (ptD d) (ptF f) Y := sarea_swap₂₃ _ _ _
  refine ⟨ha, hb, hr, by linarith, fun hOXY => ?_⟩
  obtain ⟨i1, i2, i3⟩ := hin
  have s1 : 8 / 73 ≤ sarea (ptD d) Y X := ar_pos (ar hmin 2 8 7) i1.le
  have s2 : 8 / 73 ≤ sarea Y (ptF f) X := ar_pos (ar hmin 8 3 7) i2.le
  have s3 : 8 / 73 ≤ sarea (ptF f) (ptD d) X := ar_pos (ar hmin 3 2 7) i3.le
  have sO : 8 / 73 ≤ sarea ptO X Y := ar_pos (ar hmin 0 7 8) hOXY.le
  have hsum := sarea_add_sarea_add_sarea (ptD d) Y (ptF f) X
  have hbar : sarea ptO X Y * sarea (ptD d) Y (ptF f) =
      sarea ptO (ptD d) Y * sarea Y (ptF f) X + sarea ptO (ptF f) Y * sarea (ptD d) Y X := by
    simp only [sarea]; ring
  rw [ea, eb, eY] at hbar
  rw [eY] at hsum
  set r := -sarea (ptD d) (ptF f) Y
  set a := Y.2 - d * Y.1
  set b := Y.1 - f * Y.2
  have k1 : 8 / 73 * r ≤ sarea ptO X Y * r := mul_le_mul_of_nonneg_right sO (by linarith)
  have k2 : a * sarea Y (ptF f) X ≤ a * (r - 8 / 73 - sarea (ptD d) Y X) :=
    mul_le_mul_of_nonneg_left (by linarith) ha.le
  have k3 : (a + b) * (8 / 73) ≤ (a + b) * sarea (ptD d) Y X :=
    mul_le_mul_of_nonneg_left s1 (by linarith)
  nlinarith

/-- The derivation of (5)–(8) at arbitrary anchor heights `h, c` (used at the actual anchors and
at the end of the decreasing path): from the cap costs `α = -[HFY]`, `β = [CDY] ≥ s`, the height
`r = -[DFY]`, `x, y ≤ 1` and, for (7)–(8), the inequality (3). -/
theorem F_all {h c d f : ℝ} {Y : Point} (hA0 : 0 ≤ areaA c d f) (hU0 : 0 ≤ areaU h d f)
    (hd1 : d ≤ 1) (hf1 : f ≤ 1) (hT : 0 ≤ capT d f) (hY1 : Y.1 ≤ 1) (hY2 : Y.2 ≤ 1)
    (hα : 8 / 73 ≤ -sarea (ptH h) (ptF f) Y) (hβ : 8 / 73 ≤ sarea (ptC c) (ptD d) Y)
    (hr : 8 / 73 ≤ -sarea (ptD d) (ptF f) Y) :
    0 ≤ poly0 h c d f (-sarea (ptD d) (ptF f) Y) ∧ 0 ≤ poly1 h d f (-sarea (ptD d) (ptF f) Y) ∧
      ((Y.2 - d * Y.1) * (-sarea (ptD d) (ptF f) Y - 8 / 73) ≥
          8 / 73 * (2 * -sarea (ptD d) (ptF f) Y + capT d f) →
        0 ≤ poly2 d f (-sarea (ptD d) (ptF f) Y) ∧
          0 ≤ poly3 h d f (-sarea (ptD d) (ptF f) Y)) := by
  have hid := cap_identity h c d f Y
  have i1 : f * -sarea (ptD d) (ptF f) Y + (1 - f) * -sarea (ptH h) (ptF f) Y =
      areaU h d f * (Y.1 - f) := by simp only [sarea, ptD, ptF, ptH, areaU]; ring
  have i2 : (Y.2 - d * Y.1) + d * (Y.1 - f * Y.2) = capT d f * Y.2 := by
    simp only [capT]; ring
  have i3 : capT d f * -sarea (ptH h) (ptF f) Y = areaU h d f * (capT d f - (Y.2 - d * Y.1)) +
      (capT d f - h) * -sarea (ptD d) (ptF f) Y := by
    simp only [sarea, ptD, ptF, ptH, areaU, capT]; ring
  have i4 : -sarea (ptD d) (ptF f) Y = (Y.2 - d * Y.1) + (Y.1 - f * Y.2) - capT d f := by
    simp only [sarea, ptD, ptF, capT]; ring
  set r := -sarea (ptD d) (ptF f) Y
  set α := -sarea (ptH h) (ptF f) Y
  set β := sarea (ptC c) (ptD d) Y
  set a := Y.2 - d * Y.1
  set b := Y.1 - f * Y.2
  refine ⟨?_, ?_, fun h3 => ⟨?_, ?_⟩⟩
  · unfold poly0
    have p1 := mul_le_mul_of_nonneg_left hα hA0
    have p2 := mul_le_mul_of_nonneg_left hβ hU0
    linarith
  · unfold poly1
    have p1 := mul_le_mul_of_nonneg_left hα (show (0 : ℝ) ≤ 1 - f by linarith)
    have p2 := mul_le_mul_of_nonneg_left (show Y.1 - f ≤ 1 - f by linarith) hU0
    linarith
  · unfold poly2
    have k1 : (1 - d) * a ≤ capT d f * (1 - d) - d * r := by
      have : a + d * b ≤ capT d f := by
        rw [i2]; exact mul_le_of_le_one_right hT hY2
      have hb : b = r + capT d f - a := by linarith
      rw [hb] at this
      linarith
    have k2 := mul_le_mul_of_nonneg_right k1 (show (0 : ℝ) ≤ r - 8 / 73 by linarith)
    have k3 := mul_le_mul_of_nonneg_left (ge_iff_le.1 h3) (show (0 : ℝ) ≤ 1 - d by linarith)
    linarith
  · unfold poly3
    have k1 : areaU h d f * a ≤ capT d f * (areaU h d f - 8 / 73) + (capT d f - h) * r := by
      have := mul_le_mul_of_nonneg_left hα hT
      linarith
    have k2 := mul_le_mul_of_nonneg_right k1 (show (0 : ℝ) ≤ r - 8 / 73 by linarith)
    have k3 := mul_le_mul_of_nonneg_left (ge_iff_le.1 h3) hU0
    linarith

/-- **Claim** (`C1_TOP_CAP_TRIANGULAR_PAIR:eq5-8`). In the setting, with `r = -[DFY]`:
`F₀ ≥ 0` (5) and `F₁ ≥ 0` (6); and if `[OXY] > 0`, also `F₂ ≥ 0` (7) and `F₃ ≥ 0` (8).
`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 72-144.
Uses: C1_TOP_CAP_CONVEX_PAIR:eq1-2, C1_TOP_CAP_CONVEX_PAIR:eq3-5,
C1_TOP_CAP_TRIANGULAR_PAIR:eq1-3. -/
theorem eq5_8 {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y) :
    0 ≤ poly0 h c d f (-sarea (ptD d) (ptF f) Y) ∧
      0 ≤ poly1 h d f (-sarea (ptD d) (ptF f) Y) ∧
      (0 < sarea ptO X Y →
        0 ≤ poly2 d f (-sarea (ptD d) (ptF f) Y) ∧
          0 ≤ poly3 h d f (-sarea (ptD d) (ptF f) Y)) := by
  have h13 := eq1_3 hS
  obtain ⟨hA, hL, hM, hX, hY, hmin, -, -, hXc, hYc, hXin⟩ := hS
  obtain ⟨b1, b2, -, -, hd1, hf1⟩ := anchor_bounds hA hmin
  obtain ⟨-, -, -, -, -, hcap⟩ := eq3_5 hA hL hM hX hY hmin
  obtain ⟨aY, bY, rY, -⟩ := hcap 3 hYc
  simp only [freePt, Matrix.cons_val] at aY bY rY
  obtain ⟨y0, y1, y2, y3⟩ := hY
  have hT : 0 ≤ capT d f := by
    unfold capT; nlinarith [mul_le_mul (show d ≤ 1 by linarith) (show f ≤ 1 by linarith)
      hA.2.2.2.1.le (by norm_num : (0 : ℝ) ≤ 1)]
  obtain ⟨g0, g1, g2⟩ := F_all (h := h) (c := c) (by linarith) (by linarith) hd1.le hf1.le hT y1 y3
    aY bY rY
  exact ⟨g0, g1, fun hO => g2 (h13.2.2.2.2 hO)⟩

/-- The end of the reduction of §3: at the endpoint `(h', c')` of the decreasing path the cap
costs of `Y` have increased, and (5)–(8) hold at a point of the box (10). -/
theorem reduction_core {h c d f h' c' : ℝ} {Y : Point} (hA : C1AnchorsWeak h c d f)
    (hd1 : d < 1) (hf1 : f < 1) (hY : Y ∈ unitSquare) (hYc : sarea (ptD d) (ptF f) Y ≤ 0)
    (aY : 8 / 73 ≤ -sarea (ptH h) (ptF f) Y) (bY : 8 / 73 ≤ sarea (ptC c) (ptD d) Y)
    (rY : 8 / 73 ≤ -sarea (ptD d) (ptF f) Y)
    (h3 : (Y.2 - d * Y.1) * (-sarea (ptD d) (ptF f) Y - 8 / 73) ≥
      8 / 73 * (2 * -sarea (ptD d) (ptF f) Y + capT d f))
    (hr3 : 3 * (8 / 73) ≤ -sarea (ptD d) (ptF f) Y) (b3 : 8 / 73 ≤ h * f) (b4 : 8 / 73 ≤ c * d)
    (hc'h' : h' * c' = 49 / 60) (h'0 : 0 < h') (h'd : d ≤ h') (h'h : h' ≤ h) (c'f : f ≤ c')
    (c'c : c' ≤ c) (h'f : 8 / 73 ≤ h' * f) (c'd : 8 / 73 ≤ c' * d) :
    ∃ h' u v r : ℝ, 49 / 60 ≤ h' ∧ h' ≤ 1 ∧ 8 / 73 ≤ u ∧ u ≤ 49 / 60 ∧
      8 / 73 ≤ v ∧ v ≤ 49 / 60 ∧ 3 * (8 / 73) ≤ r ∧ r ≤ (1 - 8 / 73) ^ 2 ∧
      0 ≤ poly0 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
          (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly1 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly2 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly3 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨-, -, fx, dy⟩ := cap_pt ⟨hd, hdh, hh, hf, hfc, hc⟩ hd1 hf1 hY hYc
  obtain ⟨y0, y1, y2, y3⟩ := hY
  have aY' : 8 / 73 ≤ -sarea (ptH h') (ptF f) Y := by
    have e : -sarea (ptH h') (ptF f) Y = -sarea (ptH h) (ptF f) Y + (h - h') * (Y.1 - f) := by
      simp only [sarea, ptH, ptF]; ring
    rw [e]
    have := mul_nonneg (show (0 : ℝ) ≤ h - h' by linarith) (show (0 : ℝ) ≤ Y.1 - f by linarith)
    linarith
  have bY' : 8 / 73 ≤ sarea (ptC c') (ptD d) Y := by
    have e : sarea (ptC c') (ptD d) Y = sarea (ptC c) (ptD d) Y + (c - c') * (Y.2 - d) := by
      simp only [sarea, ptC, ptD]; ring
    rw [e]
    have := mul_nonneg (show (0 : ℝ) ≤ c - c' by linarith) (show (0 : ℝ) ≤ Y.2 - d by linarith)
    linarith
  have hA' : 0 ≤ areaA c' d f := by
    unfold areaA
    have := mul_nonneg hd.le (show (0 : ℝ) ≤ c' - f by linarith); linarith
  have hU' : 0 ≤ areaU h' d f := by
    unfold areaU
    have := mul_nonneg hf.le (show (0 : ℝ) ≤ h' - d by linarith); linarith
  have hT : 0 ≤ capT d f := by
    unfold capT
    have := mul_le_mul (show d ≤ 1 by linarith) (show f ≤ 1 by linarith) hf.le
      (by norm_num : (0 : ℝ) ≤ 1)
    linarith
  obtain ⟨g0, g1, g2⟩ := F_all (h := h') (c := c') hA' hU' hd1.le hf1.le hT y1 y3 aY' bY' rY
  obtain ⟨g2, g3⟩ := g2 h3
  have h'1 : h' ≤ 1 := h'h.trans hh
  have c'1 : c' ≤ 1 := c'c.trans hc
  have h'ρ : 49 / 60 ≤ h' := by
    have := mul_le_mul_of_nonneg_left c'1 h'0.le; linarith
  have uρ : h' * f ≤ 49 / 60 := by
    have := mul_le_mul_of_nonneg_left c'f h'0.le; linarith
  have vρ : c' * d ≤ 49 / 60 := by
    have := mul_le_mul_of_nonneg_left h'd (show (0 : ℝ) ≤ c' by linarith); linarith
  have hds : 8 / 73 ≤ d := by
    have := mul_le_mul_of_nonneg_right hc hd.le; linarith
  have hfs : 8 / 73 ≤ f := by
    have := mul_le_mul_of_nonneg_right hh hf.le; linarith
  have hrle : -sarea (ptD d) (ptF f) Y ≤ (1 - 8 / 73) ^ 2 := by
    have e : -sarea (ptD d) (ptF f) Y = (1 - d) * (1 - f) - (1 - f) * (1 - Y.2) -
        (1 - d) * (1 - Y.1) := by simp only [sarea, ptD, ptF]; ring
    have p1 := mul_nonneg (show (0 : ℝ) ≤ 1 - f by linarith) (show (0 : ℝ) ≤ 1 - Y.2 by linarith)
    have p2 := mul_nonneg (show (0 : ℝ) ≤ 1 - d by linarith) (show (0 : ℝ) ≤ 1 - Y.1 by linarith)
    have p3 := mul_le_mul (show 1 - d ≤ 1 - 8 / 73 by linarith) (show 1 - f ≤ 1 - 8 / 73 by linarith)
      (show (0 : ℝ) ≤ 1 - f by linarith) (by norm_num : (0 : ℝ) ≤ 1 - 8 / 73)
    nlinarith
  refine ⟨h', h' * f, c' * d, -sarea (ptD d) (ptF f) Y, h'ρ, h'1, h'f, uρ, c'd, vρ, hr3, hrle,
    ?_⟩
  rw [reduced_eq h'0 hc'h']
  exact ⟨g0, g1, g2, g3⟩

/-- **Claim** (`C1_TOP_CAP_TRIANGULAR_PAIR:claim-reduction`, made-up id). In the setting with
`[OXY] > 0`: `F₀ ≥ 0`, `Δ > 0` and `r ≥ 3s` give `B > 0`, so the decreasing path of
CONVEX_PAIR §3 applies; along it the cap costs of `X, Y` increase and the remaining costs are
unchanged, so (5)–(8) hold at `hc = ρ`. Hence `F₀, …, F₃ ≥ 0` at a point of the box (10):
`ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ`, `3s ≤ r ≤ (1 - s)²`, in the parametrization (9) (`reducedHCDF`).
`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 146-203.
Uses: C1_TOP_CAP_CONVEX_PAIR:claim-reduction, C1_TOP_CAP_TRIANGULAR_PAIR:eq5-8. -/
-- Note: the reduction is a relaxation of the derived inequalities (the cap costs of `X, Y` are
-- recomputed at the decreased `h, c`), not a statement about the functions `F₀, …, F₃` alone.
theorem claim_reduction {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y)
    (hOXY : 0 < sarea ptO X Y) :
    ∃ h' u v r : ℝ, 49 / 60 ≤ h' ∧ h' ≤ 1 ∧ 8 / 73 ≤ u ∧ u ≤ 49 / 60 ∧
      8 / 73 ≤ v ∧ v ≤ 49 / 60 ∧ 3 * (8 / 73) ≤ r ∧ r ≤ (1 - 8 / 73) ^ 2 ∧
      0 ≤ poly0 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
          (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly1 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly2 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly3 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r := by
  have h13 := eq1_3 hS
  have h58 := eq5_8 hS
  obtain ⟨hA, hL, hM, hX, hY, hmin, hLl, hMl, hXc, hYc, hXin⟩ := hS
  obtain ⟨b1, b2, b3, b4, hd1, hf1⟩ := anchor_bounds hA hmin
  obtain ⟨-, -, -, -, -, hcap⟩ := eq3_5 hA hL hM hX hY hmin
  obtain ⟨aY, bY, rY, -⟩ := hcap 3 hYc
  simp only [freePt, Matrix.cons_val] at aY bY rY
  have hk := two_in hmin 0 1 4 5 6 (by decide) (Or.inl hLl) (Or.inl hMl)
  have e : sarea (c1Config h c d f L M X Y 0) (c1Config h c d f L M X Y 1)
      (c1Config h c d f L M X Y 4) = h * c := by
    simp only [c1Config, Matrix.cons_val, sarea]; ring
  have hpos : 0 ≤ h * c := mul_nonneg (by linarith [hA.2.1, hA.1]) (by linarith [hA.2.2.2.1,
    hA.2.2.2.2.1])
  rw [e, abs_of_nonneg hpos] at hk
  have hhc : 49 / 60 ≤ h * c := by linarith [kσ_gt]
  have hΔ := (eq1_2 hA).2 hhc b3 b4
  obtain ⟨-, -, -, hr3, h3⟩ := h13
  have hB : 0 < bracketB h c d f := by
    have := h58.1; unfold poly0 at this; unfold bracketB
    have := mul_pos hΔ (show (0 : ℝ) < -sarea (ptD d) (ptF f) Y by linarith); linarith
  obtain ⟨-, -, -, h8l, h8u⟩ := df_bounds hA b3 b4 hhc hB
  obtain ⟨h', c', hc'h', h'0, h'd, h'h, c'f, c'c, h'f, c'd⟩ :=
    path_endpoint hA b3 b4 hhc h8l h8u
  exact reduction_core hA hd1 hf1 hY hYc aY bY rY (h3 hOXY) hr3 b3 b4 hc'h' h'0 h'd h'h c'f c'c
    h'f c'd

/-- **Claim** (`C1_TOP_CAP_TRIANGULAR_PAIR:claim-certificate`, made-up id). At every point of the
box (10), `ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ`, `3s ≤ r ≤ (1 - s)²`, in the parametrization (9), one of
`F₀, …, F₃` is negative. In the manuscript: 51 fixed dyadic boxes in `(H, U₀, V, R)` (depth at
most 18), each labelled `i` with all tensor Bernstein coefficients of `P₀ = hF₀`, `P₁ = hF₁`,
`P₂ = F₂` or `P₃ = F₃` negative; checked by `hand/check_c1_top_cap_triangular_pair.py`.
`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 205-276. -/
theorem claim_certificate (h u v r : ℝ) (hh : 49 / 60 ≤ h) (hh' : h ≤ 1)
    (hu : 8 / 73 ≤ u) (hu' : u ≤ 49 / 60) (hv : 8 / 73 ≤ v) (hv' : v ≤ 49 / 60)
    (hr : 3 * (8 / 73) ≤ r) (hr' : r ≤ (1 - 8 / 73) ^ 2) :
    poly0 (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
        (reducedHCDF h u v).2.2.2 r < 0 ∨
      poly1 (reducedHCDF h u v).1 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r < 0 ∨
      poly2 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r < 0 ∨
      poly3 (reducedHCDF h u v).1 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r < 0 := by
  have hx := pointOf_box4 (x := h) (y := u) (z := v) (w := r) (p := ((49 / 60 : ℚ), (1 : ℚ)))
    (q := ((8 / 73 : ℚ), (49 / 60 : ℚ))) (r := ((8 / 73 : ℚ), (49 / 60 : ℚ)))
    (t := ((24 / 73 : ℚ), (4225 / 5329 : ℚ)))
    ⟨by push_cast; linarith, by push_cast; linarith⟩ ⟨by push_cast; linarith, by push_cast; linarith⟩
    ⟨by push_cast; linarith, by push_cast; linarith⟩ ⟨by push_cast; linarith, by push_cast; linarith⟩
  obtain ⟨p, hp, hpos⟩ := ltreeCheck_sound _ _ TriangularPairCert.check _ hx
  have h0 : 0 < h := by linarith
  simp only [TriangularPairCert.es, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl
  · left
    have e : TriangularPairCert.eP0.eval (pointOf [h, u, v, r]) =
        h * poly0 (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
          (reducedHCDF h u v).2.2.2 r := by
      simp only [TriangularPairCert.eP0, ConvexPairCert.ehA, ConvexPairCert.eU,
        ConvexPairCert.ehD, Cert.Expr.eval_plus, Cert.Expr.eval_minus, Cert.Expr.eval_times,
        Cert.Expr.eval_k, Cert.Expr.eval_v, Cert.Expr.eval_one, pointOf_zero, pointOf_succ,
        reducedHCDF, poly0, areaA, areaU, areaΔ]
      push_cast; field_simp; try ring
    simp only [Cert.Expr.eval_minus, Cert.Expr.eval_zero, e] at hpos
    nlinarith
  · right; left
    have e : TriangularPairCert.eP1.eval (pointOf [h, u, v, r]) =
        h * poly1 (reducedHCDF h u v).1 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r := by
      simp only [TriangularPairCert.eP1, ConvexPairCert.eU, Cert.Expr.eval_plus,
        Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_k, Cert.Expr.eval_v,
        Cert.Expr.eval_one, pointOf_zero, pointOf_succ, reducedHCDF, poly1, areaU]
      push_cast; field_simp; try ring
    simp only [Cert.Expr.eval_minus, Cert.Expr.eval_zero, e] at hpos
    nlinarith
  · right; right; left
    have e : TriangularPairCert.eP2.eval (pointOf [h, u, v, r]) =
        poly2 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r := by
      simp only [TriangularPairCert.eP2, TriangularPairCert.eT, TriangularPairCert.ed,
        Cert.Expr.eval_plus, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_k,
        Cert.Expr.eval_v, Cert.Expr.eval_one, pointOf_zero, pointOf_succ, reducedHCDF, poly2,
        capT]
      push_cast; field_simp; try ring
    simp only [Cert.Expr.eval_minus, Cert.Expr.eval_zero, e] at hpos
    linarith
  · right; right; right
    have e : TriangularPairCert.eP3.eval (pointOf [h, u, v, r]) =
        poly3 (reducedHCDF h u v).1 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r := by
      simp only [TriangularPairCert.eP3, TriangularPairCert.eT, ConvexPairCert.eU,
        Cert.Expr.eval_plus, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_k,
        Cert.Expr.eval_v, Cert.Expr.eval_one, pointOf_zero, pointOf_succ, reducedHCDF, poly3,
        capT, areaU]
      push_cast; field_simp; try ring
    simp only [Cert.Expr.eval_minus, Cert.Expr.eval_zero, e] at hpos
    linarith

/-- The setting with `[OXY] > 0` is impossible. -/
theorem core_pos {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y)
    (hOXY : 0 < sarea ptO X Y) : False := by
  obtain ⟨h', u, v, r, a1, a2, a3, a4, a5, a6, a7, a8, g0, g1, g2, g3⟩ := claim_reduction hS hOXY
  rcases claim_certificate h' u v r a1 a2 a3 a4 a5 a6 a7 a8 with h | h | h | h <;> linarith

/-- Transposition of the setting (exchanging `D, F` and reversing `[OXY]`). -/
theorem setting_tp {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y) :
    Setting c h f d (tp L) (tp M) (tp X) (tp Y) := by
  obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, hX, hY, hmin, hLl, hMl, hXc, hYc, hXin⟩ := hS
  have cap : ∀ Z : Point, sarea (ptD d) (ptF f) Z ≤ 0 → sarea (ptD f) (ptF d) (tp Z) ≤ 0 := by
    intro Z hZ
    have := sarea_tp (ptF f) (ptD d) Z
    rw [tp_F, tp_D] at this
    rw [this, sarea_swap₁₂]; linarith
  refine ⟨⟨hf, hfc, hc, hd, hdh, hh⟩, tp_mem hL, tp_mem hM, tp_mem hX, tp_mem hY, ?_,
    inLower_tp hLl, inLower_tp hMl, cap X hXc, cap Y hYc, ?_⟩
  · rw [min_c1_tp]; exact hmin
  · rw [← tp_F f, ← tp_D d, insideTri_tp, insideTri_rot, ← insideTri_swap]; exact hXin

/-- The setting is impossible, whatever the sign of `[OXY]`. -/
theorem core_any {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y) : False := by
  have e : 8 / 73 ≤ |sarea ptO X Y| := ar hS.competitive 0 7 8
  rcases lt_or_gt_of_ne (ar_ne (by norm_num) e) with h1 | h1
  · refine core_pos (setting_tp hS) ?_
    rw [← tp_O, sarea_tp]; linarith
  · exact core_pos hS h1

/-- **Theorem** (`C1_TOP_CAP_TRIANGULAR_PAIR:Theorem`). In a competitive nine-point C1
configuration `c1Config h c d f L M X Y` (weak anchor conditions, least area at least `A₀`) with
`L, M` strictly inside `OHC`, the two remaining points `X, Y` cannot both lie in the closed top
cap `conv{D, F, (1,1)}` (either hull, either order, either sign of `[OXY]`).
`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 19-26 and 278-286.
Uses: C1_TOP_CAP_CONVEX_PAIR:Theorem, C1_TOP_CAP_TRIANGULAR_PAIR:eq1-3,
C1_TOP_CAP_TRIANGULAR_PAIR:eq5-8, C1_TOP_CAP_TRIANGULAR_PAIR:claim-reduction,
C1_TOP_CAP_TRIANGULAR_PAIR:claim-certificate. -/
theorem theorem_main {h c d f : ℝ} {L M X Y : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X Y))
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hXc : sarea (ptD d) (ptF f) X ≤ 0) (hYc : sarea (ptD d) (ptF f) Y ≤ 0) : False := by
  have hopp := C1TopCapConvexPair.theorem_main hA hL hM hX hY hmin hLl hMl hXc hYc
  unfold OppSide at hopp
  have hX' : sarea (ptD d) (ptF f) X < 0 :=
    lt_of_le_of_ne hXc (ar_ne (by norm_num) (ar hmin 2 3 7 : 8 / 73 ≤ |sarea (ptD d) (ptF f) X|))
  have hY' : sarea (ptD d) (ptF f) Y < 0 :=
    lt_of_le_of_ne hYc (ar_ne (by norm_num) (ar hmin 2 3 8 : 8 / 73 ≤ |sarea (ptD d) (ptF f) Y|))
  have eD : 8 / 73 ≤ |sarea X Y (ptD d)| := ar hmin 7 8 2
  have q1 : sarea (ptD d) Y X = -sarea X Y (ptD d) := by simp only [sarea]; ring
  have q2 : sarea Y (ptF f) X = sarea X Y (ptF f) := by simp only [sarea]; ring
  have q3 : sarea (ptF f) (ptD d) X = -sarea (ptD d) (ptF f) X := by simp only [sarea]; ring
  have q4 : sarea (ptD d) X Y = sarea X Y (ptD d) := by simp only [sarea]; ring
  have q5 : sarea X (ptF f) Y = -sarea X Y (ptF f) := by simp only [sarea]; ring
  have q6 : sarea (ptF f) (ptD d) Y = -sarea (ptD d) (ptF f) Y := by simp only [sarea]; ring
  rcases lt_or_gt_of_ne (ar_ne (by norm_num) eD) with hD | hD
  · have hF : 0 < sarea X Y (ptF f) := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hD.le hn]
    exact core_any ⟨hA, hL, hM, hX, hY, hmin, hLl, hMl, hXc, hYc,
      Or.inr ⟨by linarith, by linarith, by linarith⟩⟩
  · have hF : sarea X Y (ptF f) < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hD.le hn]
    refine core_any (L := L) (M := M) (X := Y) (Y := X) ⟨hA, hL, hM, hY, hX, ?_, hLl, hMl, hYc,
      hXc, Or.inr ⟨by linarith, by linarith, by linarith⟩⟩
    rw [min_c1_swap34]; exact hmin

end Heilbronn.C1TopCapTriangularPair
