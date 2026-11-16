module

public import Heilbronn.Nine.C1.TopCapConvexPair
public import Heilbronn.Nine.Corners.OneCornerCompletion

/-! # A top-cap point separates the two lower C1 rays

Setting (`Setting`): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`;
two actual points `L, M` strictly inside `OHC`; an actual point `X = (x, Y)` beyond `DF`, in the
closed top cap `conv{D, F, (1,1)}`. The configuration is competitive; the proof uses only these
eight points, so competitiveness is stated for `![O, C, D, F, H, L, M, X]`. Doubled areas are
compared with `σ = 8/73 < 2A₀`; `K = 4 + 2√3`, `k = Kσ`, `ρ = 49/60 < k`. After a
transposition, the intermediate results assume both lower points on the `C`-side of `OX`
(`[ORX] > 0`).

Results:
* `sameSide_cap_signs_and_bounds`: the signs of `X` against the anchor lines, both lower points in
  `OHC ∩ OCX ∩ OCF`, `hc, cY ≥ k`, `h, Y ≥ k`;
* `x_lt_c_of_sameSide`: `x < c`;
* `lowerLine_separates_of_sameSide`: `W = cY + hx ≥ M(1 + σ/(1 - m))`, and only the middle pair-line case (separating
  `O | C` and `H | X`) survives;
* `pairLine_sep_OF_C_false`: the scalar exclusion of the middle case with `O, F` together, stated for
  a seven-point configuration so that it also applies after the map `Ψ` of `psi_data`;
* `middle_sameSide_CF_false`: the middle case with `F` on the `C`-side is impossible (via `Ψ`);
* `theorem_main`: the two lower points lie on opposite sides of `OX`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1TopCapRadialSplit

open Heilbronn.Nine.C1 Heilbronn.Nine.C1TwoLower Heilbronn.Nine.C1TopCapConvexPair

/-- The setting: weak anchors, `L, M` strictly inside `OHC`, `X` in the closed top cap
(`[DFX] ≤ 0` for a point of the square), and the eight actual points with least area at least
`A₀`. -/
structure Setting (h c d f : ℝ) (L M X : Point) : Prop where
  anchors : C1AnchorsWeak h c d f
  memL : L ∈ unitSquare
  memM : M ∈ unitSquare
  memX : X ∈ unitSquare
  competitive : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X]
  lowerL : InLower h c L
  lowerM : InLower h c M
  capX : sarea (ptD d) (ptF f) X ≤ 0

/-- The cap facts of the setting (independent of the side of the lower points). -/
theorem rs_cap {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X) :
    d < 1 ∧ f < 1 ∧ f < X.1 ∧ d < X.2 ∧ 8 / 73 ≤ -sarea (ptH h) (ptF f) X ∧
      8 / 73 ≤ -sarea (ptC c) (ptF f) X ∧ 8 / 73 ≤ sarea (ptC c) (ptD d) X ∧
      8 / 73 ≤ -sarea (ptD d) (ptF f) X ∧ 0 < sarea (ptH h) (ptC c) X ∧ 8 / 73 ≤ h * f ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c := by
  obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, hX, hmin, hLl, hMl, hXc⟩ := hS
  have eU : 8 / 73 ≤ |sarea (ptH h) (ptD d) (ptF f)| := ar hmin 4 2 3
  have eA : 8 / 73 ≤ |sarea (ptC c) (ptD d) (ptF f)| := ar hmin 1 2 3
  have qU : sarea (ptH h) (ptD d) (ptF f) = areaU h d f := by
    simp only [sarea, ptH, ptD, ptF, areaU]; ring
  have qA : sarea (ptC c) (ptD d) (ptF f) = areaA c d f := by
    simp only [sarea, ptC, ptD, ptF, areaA]; ring
  rw [qU] at eU; rw [qA] at eA
  have a1 := mul_nonneg hd.le (show (0 : ℝ) ≤ c - f by linarith)
  have a2 := mul_nonneg hf.le (show (0 : ℝ) ≤ h - d by linarith)
  have bA := ar_pos eA (by unfold areaA; linarith)
  have bU := ar_pos eU (by unfold areaU; linarith)
  have hd1 : d < 1 := by
    have := mul_le_mul_of_nonneg_right (show f ≤ 1 by linarith) (show (0 : ℝ) ≤ h - d by linarith)
    unfold areaU at bU; linarith
  have hf1 : f < 1 := by
    have := mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith) (show (0 : ℝ) ≤ c - f by linarith)
    unfold areaA at bA; linarith
  have hA : C1AnchorsWeak h c d f := ⟨hd, hdh, hh, hf, hfc, hc⟩
  obtain ⟨g1, g2, fx, dy⟩ := cap_pt hA hd1 hf1 hX hXc
  obtain ⟨k1, k2, k3⟩ := cap_costs hA hd1 hf1 hX hXc (ar hmin 4 3 7) (ar hmin 1 2 7) (ar hmin 2 3 7)
  obtain ⟨x0, x1, y0, y1⟩ := hX
  have hfx : f < X.1 := by
    by_contra hn; push Not at hn
    have e : -sarea (ptD d) (ptF f) X = (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) := by
      simp only [sarea, ptD, ptF]; ring
    rw [e] at k3
    have := mul_le_mul_of_nonneg_left (show 1 - f ≤ 1 - X.1 by linarith)
      (show (0 : ℝ) ≤ 1 - d by linarith)
    have := mul_le_mul_of_nonneg_left (show X.2 - d ≤ 1 - d by linarith)
      (show (0 : ℝ) ≤ 1 - f by linarith)
    nlinarith
  have hdy : d < X.2 := by
    by_contra hn; push Not at hn
    have e : -sarea (ptD d) (ptF f) X = (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) := by
      simp only [sarea, ptD, ptF]; ring
    rw [e] at k3
    have := mul_nonpos_of_nonneg_of_nonpos (show (0 : ℝ) ≤ 1 - f by linarith)
      (show X.2 - d ≤ 0 by linarith)
    have := mul_nonneg (show (0 : ℝ) ≤ 1 - d by linarith) (show (0 : ℝ) ≤ 1 - X.1 by linarith)
    linarith
  have hCF : 0 < sarea (ptF f) (ptC c) X := by
    refine cap_sign hd1 hf1 ⟨x0, x1, y0, y1⟩ (by linarith) ?_ ?_ ?_ <;>
      simp only [sarea, ptF, ptC, ptD] <;> nlinarith
  have eCF0 : 8 / 73 ≤ |sarea (ptC c) (ptF f) X| := ar hmin 1 3 7
  have qCF : sarea (ptC c) (ptF f) X = -sarea (ptF f) (ptC c) X := by simp only [sarea]; ring
  have eCF : 8 / 73 ≤ |sarea (ptF f) (ptC c) X| := by rw [qCF, abs_neg] at eCF0; exact eCF0
  have hHC : 0 < sarea (ptH h) (ptC c) X := by
    refine cap_sign hd1 hf1 ⟨x0, x1, y0, y1⟩ (by linarith) ?_ ?_ ?_ <;>
      simp only [sarea, ptH, ptC, ptD, ptF] <;>
      nlinarith [mul_nonneg hd.le (show (0 : ℝ) ≤ c by linarith),
        mul_nonneg (show (0 : ℝ) ≤ 1 - c by linarith) (show (0 : ℝ) ≤ h by linarith),
        mul_nonneg (show (0 : ℝ) ≤ 1 - h by linarith) (show (0 : ℝ) ≤ c by linarith),
        mul_nonneg hf.le (show (0 : ℝ) ≤ h by linarith)]
  have ehf : 8 / 73 ≤ |sarea ptO (ptF f) (ptH h)| := ar hmin 0 3 4
  have qhf : sarea ptO (ptF f) (ptH h) = h * f := by simp only [sarea, ptO, ptF, ptH]; ring
  rw [qhf] at ehf
  have hk : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ |sarea ptO (ptC c) (ptH h)| :=
    two_in hmin 0 1 4 5 6 (by decide) (Or.inl hLl) (Or.inl hMl)
  have qk : sarea ptO (ptC c) (ptH h) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  rw [qk, abs_of_nonneg (mul_nonneg (by linarith) (by linarith))] at hk
  refine ⟨hd1, hf1, hfx, hdy, k1, ?_, k2, k3, hHC, ar_pos ehf (mul_nonneg (by linarith) hf.le), hk⟩
  have := ar_pos eCF hCF.le; linarith

/-- A lower point on the `C`-side of `OX` lies in `OCX` and in `OCF`. -/
theorem rs_low {h c f : ℝ} {X R : Point} (hh : 0 < h) (hc : 0 < c) (hf : 0 < f)
    (hHCX : 0 < sarea (ptH h) (ptC c) X) (hx0 : 0 < X.1) (hy0 : 0 < X.2)
    (hOFX : sarea ptO (ptF f) X < 0) (hHCF : 0 < sarea (ptH h) (ptC c) (ptF f))
    (hR : InLower h c R) (hRs : 0 < sarea ptO R X) :
    InTriangle R ptO (ptC c) X ∧ InTriangle R ptO (ptC c) (ptF f) := by
  obtain ⟨-, t2⟩ := lower_sides hh hc hHCX hx0 hy0 hR
  have hR' := hR
  obtain ⟨r1, r2, r3⟩ := hR
  refine ⟨⟨r1, t2, by have := sarea_cycle X ptO R; linarith⟩, ⟨r1, ?_, ?_⟩⟩
  · -- `[CFR] > 0`: Plücker at `C`
    have g := gp (ptC c) (ptF f) ptO (ptH h) R
    have q1 : sarea (ptC c) ptO (ptH h) = -(h * c) := by simp only [sarea, ptC, ptO, ptH]; ring
    have q2 : sarea (ptC c) (ptF f) (ptH h) = sarea (ptH h) (ptC c) (ptF f) := by
      simp only [sarea]; ring
    have q3 : sarea (ptC c) ptO R = -sarea ptO (ptC c) R := by simp only [sarea]; ring
    have q4 : sarea (ptC c) (ptF f) ptO = c := by simp only [sarea, ptC, ptF, ptO]; ring
    rw [q1, q2, q3, q4] at g
    by_contra hn; push Not at hn
    have p1 := mul_pos hHCF r1
    have p2 := mul_pos hc r2
    have p3 := mul_nonneg (show (0 : ℝ) ≤ -sarea (ptC c) (ptF f) R by linarith)
      (mul_pos hh hc).le
    linarith
  · -- `[FOR] > 0`: Plücker at `O`
    have e1 : sarea ptO R X = R.1 * X.2 - R.2 * X.1 := by simp only [sarea, ptO]; ring
    have e2 : sarea ptO (ptF f) X = f * X.2 - X.1 := by simp only [sarea, ptO, ptF]; ring
    have e3 : sarea (ptF f) ptO R = R.1 - f * R.2 := by simp only [sarea, ptO, ptF]; ring
    rw [e1] at hRs; rw [e2] at hOFX; rw [e3]
    have hr0 : 0 < R.1 := by
      have : sarea (ptH h) ptO R = h * R.1 := by simp only [sarea, ptO, ptH]; ring
      rw [this] at r3; exact pos_of_mul_pos_right r3 hh.le
    have key : (R.1 - f * R.2) * X.1 = (R.1 * X.2 - R.2 * X.1) * f + R.1 * (X.1 - f * X.2) := by
      ring
    have p1 := mul_pos hRs hf
    have p2 := mul_pos hr0 (show (0 : ℝ) < X.1 - f * X.2 by linarith)
    have : 0 < (R.1 - f * R.2) * X.1 := by rw [key]; linarith
    exact pos_of_mul_pos_left this hx0.le

/-- In the setting, with both lower points on the `C`-side of `OX`: `x > f`, `Y > d`,
`[HFX] < 0`, `[CFX] < 0`, `[CDX] > 0`, and `X` is above `HC`; both lower points lie in
`OHC ∩ OCX ∩ OCF`; `hc, cY ≥ k` and `h, Y ≥ k > ρ`, where `k = (4 + 2√3)·(8/73)`,
`ρ = 49/60`. -/
theorem sameSide_cap_signs_and_bounds {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X) :
    f < X.1 ∧ d < X.2 ∧ sarea (ptH h) (ptF f) X < 0 ∧ sarea (ptC c) (ptF f) X < 0 ∧
      0 < sarea (ptC c) (ptD d) X ∧ 0 < sarea (ptH h) (ptC c) X ∧
      (∀ R, (R = L ∨ R = M) → InLower h c R ∧ InTriangle R ptO (ptC c) X ∧
        InTriangle R ptO (ptC c) (ptF f)) ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c * X.2 ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ X.2 ∧
      (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) := by
  obtain ⟨hd1, hf1, hfx, hdy, k1, kCF, k2, k3, hHC, hhf, hk⟩ := rs_cap hS
  have hS' := hS
  obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, hX, hmin, hLl, hMl, hXc⟩ := hS
  obtain ⟨x0, x1, y0, y1⟩ := hX
  have kgt := kσ_gt
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have hOFX : sarea ptO (ptF f) X < 0 := by
    have e : sarea ptO (ptF f) X = f * X.2 - X.1 := by simp only [sarea, ptO, ptF]; ring
    rw [e]; nlinarith
  have hHCF : 0 < sarea (ptH h) (ptC c) (ptF f) := by
    have e : sarea (ptH h) (ptC c) (ptF f) = c * (1 - h) + h * f := by
      simp only [sarea, ptH, ptC, ptF]; ring
    rw [e]; nlinarith [mul_nonneg c0.le (show (0 : ℝ) ≤ 1 - h by linarith)]
  have tri : ∀ R, (R = L ∨ R = M) → InLower h c R ∧ InTriangle R ptO (ptC c) X ∧
      InTriangle R ptO (ptC c) (ptF f) := by
    rintro R (rfl | rfl)
    · exact ⟨hLl, rs_low h0 c0 hf hHC (by linarith) (by linarith) hOFX hHCF hLl hLs⟩
    · exact ⟨hMl, rs_low h0 c0 hf hHC (by linarith) (by linarith) hOFX hHCF hMl hMs⟩
  have hkY : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ |sarea ptO (ptC c) X| :=
    two_in hmin 0 1 7 5 6 (by decide) (Or.inl (tri L (Or.inl rfl)).2.1)
      (Or.inl (tri M (Or.inr rfl)).2.1)
  have qY : sarea ptO (ptC c) X = c * X.2 := by simp only [sarea, ptO, ptC]; ring
  rw [qY, abs_of_nonneg (mul_nonneg c0.le y0)] at hkY
  refine ⟨hfx, hdy, by linarith, by linarith, by linarith, hHC, tri, hk, hkY, ?_, ?_, kgt⟩
  · have := mul_le_mul_of_nonneg_left hc h0.le; linarith
  · have := mul_le_mul_of_nonneg_right hc y0; linarith

set_option linter.unusedVariables false in
/-- `x < c` in scalar form (if `x ≥ c` then `c ≤ 1 - σ`, so `h, Y > 1 - σ`, and
`|[HFX]| ≤ 1 - min(h, Y) < σ`). -/
theorem x_lt_c {h c d f x Y : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh : h ≤ 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc : c ≤ 1) (x0 : 0 ≤ x) (x1 : x ≤ 1) (y0 : 0 ≤ Y) (y1 : Y ≤ 1) (hfx : f < x)
    (hk : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c) (hkY : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c * Y)
    (k1 : 8 / 73 ≤ -sarea (ptH h) (ptF f) (x, Y)) (k2 : 8 / 73 ≤ sarea (ptC c) (ptD d) (x, Y)) :
    x < c := by
  have kgt := kσ_gt
  simp only [sarea, ptH, ptF, ptC, ptD] at k1 k2
  by_contra hn; push Not at hn
  have hc1 : c ≤ 1 - 8 / 73 := by
    have := mul_nonneg hd.le (show (0 : ℝ) ≤ x - c by linarith)
    have := mul_le_mul_of_nonneg_left y1 (show (0 : ℝ) ≤ 1 - c by linarith)
    nlinarith
  have hh' : 1 - 8 / 73 < h := by
    by_contra hn'; push Not at hn'
    have := mul_le_mul hn' hc1 (by linarith) (by norm_num : (0 : ℝ) ≤ 1 - 8 / 73)
    nlinarith
  have hY' : 1 - 8 / 73 < Y := by
    by_contra hn'; push Not at hn'
    have := mul_le_mul hc1 hn' y0 (by norm_num : (0 : ℝ) ≤ 1 - 8 / 73)
    nlinarith
  rcases le_total h Y with hY | hY
  · have := mul_nonneg hf.le (show (0 : ℝ) ≤ Y - h by linarith)
    have := mul_le_mul_of_nonneg_left x1 (show (0 : ℝ) ≤ 1 - h by linarith)
    nlinarith
  · have := mul_le_mul_of_nonneg_right hfx.le (show (0 : ℝ) ≤ h - Y by linarith)
    have := mul_le_mul_of_nonneg_right x1 (show (0 : ℝ) ≤ 1 - Y by linarith)
    nlinarith

/-- In the setting, with both lower points on the `C`-side of `OX`: `x < c`. -/
theorem x_lt_c_of_sameSide {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X) :
    X.1 < c := by
  obtain ⟨-, -, -, -, -, -, -, hk, hkY, -, -, -⟩ := sameSide_cap_signs_and_bounds hS hLs hMs
  obtain ⟨hd1, hf1, hfx, hdy, k1, kCF, k2, k3, hHC, hhf, -⟩ := rs_cap hS
  obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, ⟨x0, x1, y0, y1⟩, hmin, hLl, hMl, hXc⟩ := hS
  exact x_lt_c hd hdh hh hf hfc hc x0 x1 y0 y1 hfx hk hkY k1 k2

/-- The bound `W = cY + hx ≥ M(1 + σ/(1 - m))` in scalar form (`m = min(hc, cY)`,
`M = max(hc, cY)`), with `1 - m > 0`. -/
theorem six {h c f x Y : ℝ} (hh : 0 < h) (hh1 : h ≤ 1) (hc : 0 < c) (hc1 : c ≤ 1) (hf : 0 < f)
    (hfx : f < x) (x1 : x ≤ 1) (y0 : 0 ≤ Y) (y1 : Y ≤ 1) (hhf : 8 / 73 ≤ h * f)
    (k1 : 8 / 73 ≤ (1 - h) * x - f * (Y - h)) (kCF : 8 / 73 ≤ x - f * Y - c * (1 - Y)) :
    0 < 1 - min (h * c) (c * Y) ∧
      max (h * c) (c * Y) * (1 + 8 / 73 / (1 - min (h * c) (c * Y))) ≤ c * Y + h * x := by
  have x0 : 0 < x := by linarith
  rcases le_total h Y with hY | hY
  · have hab : h * c ≤ c * Y := by have := mul_le_mul_of_nonneg_left hY hc.le; linarith
    rw [max_eq_right hab, min_eq_left hab]
    have h1 : h < 1 := by
      by_contra hn; push Not at hn
      have : h = 1 := le_antisymm hh1 hn
      subst this
      have := mul_nonneg hf.le (show (0 : ℝ) ≤ Y - 1 by linarith); linarith
    have hfs : 8 / 73 * (Y - h) ≤ h * f * (Y - h) := mul_le_mul_of_nonneg_right hhf (by linarith)
    have k2 : 8 / 73 * Y ≤ h * (1 - h) * x := by nlinarith
    have hpos : 0 < 1 - h * c := by nlinarith
    refine ⟨hpos, ?_⟩
    rw [mul_add, mul_one, mul_div_assoc', add_le_add_iff_left, div_le_iff₀ hpos]
    have : c * (h * (1 - h) * x) ≤ h * x * (1 - h * c) := by
      have := mul_le_mul_of_nonneg_left (show c * (1 - h) ≤ 1 - h * c by nlinarith)
        (mul_nonneg hh.le x0.le)
      linarith
    have := mul_le_mul_of_nonneg_left k2 hc.le
    linarith
  · have hab : c * Y ≤ h * c := by have := mul_le_mul_of_nonneg_left hY hc.le; linarith
    rw [max_eq_left hab, min_eq_right hab]
    have hY1 : Y < 1 := by
      by_contra hn; push Not at hn
      have : Y = 1 := le_antisymm y1 hn
      rw [this] at kCF; nlinarith
    have k2 : 8 / 73 * h + c * (h - Y) * (1 - Y) ≤ h * x * (1 - Y) := by
      have p1 := mul_le_mul_of_nonneg_left k1 y0
      have p2 : (h - Y) * (f * Y) ≤ (h - Y) * (x - c * (1 - Y) - 8 / 73) :=
        mul_le_mul_of_nonneg_left (by linarith) (by linarith)
      nlinarith
    have hpos : 0 < 1 - c * Y := by nlinarith
    refine ⟨hpos, ?_⟩
    rw [mul_add, mul_one, mul_div_assoc']
    suffices hs : h * c * (8 / 73) / (1 - c * Y) ≤ h * x - c * (h - Y) by linarith
    rw [div_le_iff₀ hpos]
    have q1 : 0 ≤ h * x - c * (h - Y) := by
      by_contra hn; push Not at hn
      have := mul_neg_of_neg_of_pos hn (show (0 : ℝ) < 1 - Y by linarith)
      nlinarith
    have q2 : c * (1 - Y) ≤ 1 - c * Y := by nlinarith
    have q3 := mul_le_mul_of_nonneg_right q2 q1
    nlinarith

/-- The bound `W ≥ M(1 + σ/(1 - m))` and the pair-line inequality
`4σW·ab ≤ (ab - σ(a + b))²` (with `ab > σ(a + b)`) are incompatible for `4/5 ≤ a, b ≤ 1`
(`m = min(a, b)`, `M = max(a, b)`). -/
theorem rs_scalar {a b W : ℝ} (ha : 4 / 5 ≤ a) (ha1 : a ≤ 1) (hb : 4 / 5 ≤ b) (hb1 : b ≤ 1)
    (hm : 0 < 1 - min a b) (h6 : max a b * (1 + 8 / 73 / (1 - min a b)) ≤ W)
    (h7 : 0 < a * b - 8 / 73 * (a + b) ∧ 4 * (8 / 73) * W * (a * b) ≤ (a * b - 8 / 73 * (a + b)) ^ 2) :
    False := by
  obtain ⟨hβ, hsq⟩ := h7
  -- reduce to `m = min`, `M = max`
  have key : ∀ m M : ℝ, 4 / 5 ≤ m → m ≤ M → M ≤ 1 → 0 < 1 - m →
      M * (1 + 8 / 73 / (1 - m)) ≤ W → 0 < m * M - 8 / 73 * (m + M) →
      4 * (8 / 73) * W * (m * M) ≤ (m * M - 8 / 73 * (m + M)) ^ 2 → False := by
    intro m M hm0 hmM hM1 hm1 h6 hβ hsq
    have hM0 : 0 < M := by linarith
    have e6 : M * (1 - m) + 8 / 73 * M ≤ W * (1 - m) := by
      have e : M * (1 + 8 / 73 / (1 - m)) * (1 - m) = M * (1 - m) + 8 / 73 * M := by
        field_simp
      have := mul_le_mul_of_nonneg_right h6 hm1.le
      linarith
    have b1 : m * M - 8 / 73 * (m + M) ≤ M * (m * (1 - 8 / 73) - 8 / 73) := by nlinarith
    have b2 := pow_le_pow_left₀ hβ.le b1 2
    have b3 : 4 * (8 / 73) * (M * (1 - m) + 8 / 73 * M) * (m * M) ≤
        M ^ 2 * (m * (1 - 8 / 73) - 8 / 73) ^ 2 * (1 - m) := by
      have := mul_le_mul_of_nonneg_left e6 (show (0 : ℝ) ≤ 4 * (8 / 73) * (m * M) by positivity)
      have := mul_le_mul_of_nonneg_right hsq hm1.le
      nlinarith
    have b4 : 4 * (8 / 73) * m * (1 - m + 8 / 73) ≤ (1 - m) * (m * (1 - 8 / 73) - 8 / 73) ^ 2 := by
      have e : 4 * (8 / 73) * (M * (1 - m) + 8 / 73 * M) * (m * M) =
          M ^ 2 * (4 * (8 / 73) * m * (1 - m + 8 / 73)) := by ring
      rw [e] at b3
      have hM2 : 0 < M ^ 2 := by positivity
      nlinarith
    have t0 : 0 ≤ m - 4 / 5 := by linarith
    have t1 : 0 ≤ 1 - m := by linarith
    nlinarith [mul_nonneg t0 t1, mul_nonneg (mul_nonneg t0 t0) t1, mul_nonneg t0 t0,
      mul_nonneg (mul_nonneg t0 t0) t0]
  rcases le_total a b with hab | hab
  · rw [max_eq_right hab, min_eq_left hab] at h6
    rw [min_eq_left hab] at hm
    exact key a b ha hab hb1 hm h6 hβ hsq
  · rw [max_eq_left hab, min_eq_right hab] at h6
    rw [min_eq_right hab] at hm
    refine key b a hb hab ha1 hm h6 (by linarith) ?_
    have e1 : b * a = a * b := mul_comm b a
    have e2 : b + a = a + b := add_comm b a
    rw [e1, e2]; exact hsq

/-- Enlarging the bracket of an endpoint inequality to `ab - σ(a + b)`. -/
theorem bracket_up {a b W u : ℝ} (hu : u ≤ a * b - 8 / 73 * (a + b))
    (h : 0 < u ∧ 4 * (8 / 73) * W * (a * b) ≤ u ^ 2) :
    0 < a * b - 8 / 73 * (a + b) ∧
      4 * (8 / 73) * W * (a * b) ≤ (a * b - 8 / 73 * (a + b)) ^ 2 :=
  ⟨by linarith [h.1], le_trans h.2 (pow_le_pow_left₀ h.1.le hu 2)⟩

/-- The pair-line data for an ordered lower pair `P, Q` (both on the `C`-side of `OX`): `OCXH` is
a convex quadrilateral with central pair `P, Q`, positive overlap `J` and areas `a = hc`,
`b = cY`, `W = cY + hx`, and its six points satisfy the area bound. -/
theorem rs_data {h c d f : ℝ} {L M X P Q : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X)
    (hPQ : (P = L ∧ Q = M) ∨ (P = M ∧ Q = L)) :
    sarea P Q (ptH h) ≠ 0 ∧ sarea P Q X ≠ 0 ∧
      OneCornerCompletion.IsConvexQuad ptO (ptC c) X (ptH h) ∧
      OneCornerCompletion.CentralPair ptO (ptC c) X (ptH h) P Q ∧
      8 / 73 / 2 ≤ minTriangleArea (OneCornerCompletion.quadConfig ptO (ptC c) X (ptH h) P Q) ∧
      0 < OneCornerCompletion.overlapJ ptO (ptC c) X (ptH h) ∧
      OneCornerCompletion.areaA ptO (ptC c) X (ptH h) = h * c ∧
      OneCornerCompletion.areaB ptO (ptC c) X (ptH h) = c * X.2 ∧
      OneCornerCompletion.areaW ptO (ptC c) X (ptH h) = c * X.2 + h * X.1 ∧
      0 < sarea (ptC c) (ptH h) P ∧ 0 < sarea X (ptH h) P ∧ 0 < sarea (ptC c) X P := by
  obtain ⟨hfx, hdy, hHFX, hCFX, hCDX, hHC, tri, hk, hkY, hk1, hkY1, kgt⟩ := sameSide_cap_signs_and_bounds hS hLs hMs
  have hxc := x_lt_c_of_sameSide hS hLs hMs
  obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, ⟨x0, x1, y0, y1⟩, hmin, hLl, hMl, hXc⟩ := hS
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by nlinarith
  have hPm : P = L ∨ P = M := by rcases hPQ with ⟨h1, -⟩ | ⟨h1, -⟩ <;> tauto
  have hQm : Q = L ∨ Q = M := by rcases hPQ with ⟨-, h1⟩ | ⟨-, h1⟩ <;> tauto
  obtain ⟨hPl, hPX, -⟩ := tri P hPm
  obtain ⟨hQl, hQX, -⟩ := tri Q hQm
  have hne : sarea P Q (ptH h) ≠ 0 ∧ sarea P Q X ≠ 0 ∧
      8 / 73 / 2 ≤ minTriangleArea (OneCornerCompletion.quadConfig ptO (ptC c) X (ptH h) P Q) := by
    have hA : A₀ ≤ minTriangleArea (OneCornerCompletion.quadConfig ptO (ptC c) X (ptH h) P Q) ∧
        sarea P Q (ptH h) ≠ 0 ∧ sarea P Q X ≠ 0 := by
      rcases hPQ with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
      · exact ⟨min_sub hmin _ ![0, 1, 7, 4, 5, 6] (by norm_num) (by decide)
          (by intro i; fin_cases i <;> rfl), ar_ne (by norm_num) (ar hmin 5 6 4),
          ar_ne (by norm_num) (ar hmin 5 6 7)⟩
      · exact ⟨min_sub hmin _ ![0, 1, 7, 4, 6, 5] (by norm_num) (by decide)
          (by intro i; fin_cases i <;> rfl), ar_ne (by norm_num) (ar hmin 6 5 4),
          ar_ne (by norm_num) (ar hmin 6 5 7)⟩
    exact ⟨hA.2.1, hA.2.2, by linarith [σ_lt, hA.1]⟩
  obtain ⟨neH, neX, hmin6⟩ := hne
  have hx0 : 0 < X.1 := by linarith
  obtain ⟨tP1, tP2⟩ := lower_sides h0 c0 hHC hx0 (by linarith) hPl
  have eOCX : sarea ptO (ptC c) X = c * X.2 := by simp only [sarea, ptO, ptC]; ring
  have eOXH : sarea ptO X (ptH h) = h * X.1 := by simp only [sarea, ptO, ptH]; ring
  have eOCH : sarea ptO (ptC c) (ptH h) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have eCXH : sarea (ptC c) X (ptH h) = sarea (ptH h) (ptC c) X := by simp only [sarea]; ring
  have eXHO : sarea X (ptH h) ptO = h * X.1 := by simp only [sarea, ptO, ptH]; ring
  have eHOC : sarea (ptH h) ptO (ptC c) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have pOCX : 0 < c * X.2 := mul_pos c0 (by linarith)
  have pOXH : 0 < h * X.1 := mul_pos h0 hx0
  have pOCH : 0 < h * c := mul_pos h0 c0
  have hq : OneCornerCompletion.IsConvexQuad ptO (ptC c) X (ptH h) :=
    Or.inl ⟨by rw [eOCX]; exact pOCX, by rw [eCXH]; exact hHC, by rw [eXHO]; exact pOXH,
      by rw [eHOC]; exact pOCH⟩
  have ea : OneCornerCompletion.areaA ptO (ptC c) X (ptH h) = h * c := by
    simp only [OneCornerCompletion.areaA]; rw [eOCH, abs_of_pos pOCH]
  have eb : OneCornerCompletion.areaB ptO (ptC c) X (ptH h) = c * X.2 := by
    simp only [OneCornerCompletion.areaB]; rw [eOCX, abs_of_pos pOCX]
  have eW : OneCornerCompletion.areaW ptO (ptC c) X (ptH h) = c * X.2 + h * X.1 := by
    simp only [OneCornerCompletion.areaW]; rw [eOCX, eOXH, abs_of_pos (by linarith)]
  have hJ : 0 < OneCornerCompletion.overlapJ ptO (ptC c) X (ptH h) := by
    simp only [OneCornerCompletion.overlapJ]; rw [ea, eb, eW]
    have := mul_pos h0 (show (0 : ℝ) < c - X.1 by linarith); linarith
  exact ⟨neH, neX, hq, ⟨Or.inl hPX, Or.inl hPl, Or.inl hQX, Or.inl hQl⟩, hmin6, hJ, ea, eb, eW,
    hPl.2.1, tP1, tP2⟩

set_option linter.unusedVariables false in
/-- The bound `W = cY + hx ≥ M(1 + σ/(1 - m))` for the setting (`m = min(hc, cY)`,
`M = max(hc, cY)`). -/
theorem rs_six {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X) :
    0 < 1 - min (h * c) (c * X.2) ∧
      max (h * c) (c * X.2) * (1 + 8 / 73 / (1 - min (h * c) (c * X.2))) ≤ c * X.2 + h * X.1 := by
  obtain ⟨hd1, hf1, hfx, hdy, k1, kCF, k2, k3, hHC, hhf, hk⟩ := rs_cap hS
  obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, ⟨x0, x1, y0, y1⟩, hmin, hLl, hMl, hXc⟩ := hS
  have kgt := kσ_gt
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have e1 : -sarea (ptH h) (ptF f) X = (1 - h) * X.1 - f * (X.2 - h) := by
    simp only [sarea, ptH, ptF]; ring
  have e2 : -sarea (ptC c) (ptF f) X = X.1 - f * X.2 - c * (1 - X.2) := by
    simp only [sarea, ptC, ptF]; ring
  rw [e1] at k1; rw [e2] at kCF
  exact six h0 hh c0 hc hf hfx x1 y0 y1 hhf k1 kCF

/-- The pair-line cases for an oriented lower pair with `[PQO] < 0 < [PQC]`: only the middle
case (`H` and `X` separated) survives. -/
theorem mid_core {h c d f : ℝ} {L M X P Q : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X)
    (hPQ : (P = L ∧ Q = M) ∨ (P = M ∧ Q = L)) (hO : sarea P Q ptO < 0)
    (hC : 0 < sarea P Q (ptC c)) : sarea P Q (ptH h) < 0 ∧ 0 < sarea P Q X := by
  obtain ⟨neH, neX, hq, hcp, hmin6, hJ, ea, eb, eW, hCHP, tP1, tP2⟩ := rs_data hS hLs hMs hPQ
  obtain ⟨hm, h6⟩ := rs_six hS hLs hMs
  obtain ⟨-, -, -, -, -, -, -, hk, hkY, hk1, hkY1, kgt⟩ := sameSide_cap_signs_and_bounds hS hLs hMs
  have hc1 := hS.anchors.2.2.2.2.2
  have hh1 := hS.anchors.2.2.1
  have y1 := hS.memX.2.2.2
  have kgt' := kσ_gt'
  have ha1 : h * c ≤ 1 := by nlinarith
  have hb1 : c * X.2 ≤ 1 := by nlinarith
  have hWa : h * c ≤ c * X.2 + h * X.1 := by
    have := le_max_left (h * c) (c * X.2)
    have : 0 ≤ max (h * c) (c * X.2) * (8 / 73 / (1 - min (h * c) (c * X.2))) :=
      mul_nonneg (by linarith) (div_nonneg (by norm_num) hm.le)
    nlinarith
  have hWb : c * X.2 ≤ c * X.2 + h * X.1 := by
    have := le_max_right (h * c) (c * X.2)
    have : 0 ≤ max (h * c) (c * X.2) * (8 / 73 / (1 - min (h * c) (c * X.2))) :=
      mul_nonneg (by linarith) (div_nonneg (by norm_num) hm.le)
    nlinarith
  clear hS
  have idsl : sarea (ptC c) (ptH h) P * sarea P Q X =
      sarea (ptC c) X P * sarea P Q (ptH h) - sarea P Q (ptC c) * sarea (ptH h) X P := by
    simp only [sarea]; ring
  have hHXP : sarea (ptH h) X P = -sarea X (ptH h) P := by simp only [sarea]; ring
  rcases lt_or_gt_of_ne neH with dH | dH
  · rcases lt_or_gt_of_ne neX with dX | dX
    · exfalso
      have hiso : OneCornerCompletion.Isolates P Q (ptC c) ptO X (ptH h) :=
        ⟨mul_neg_of_pos_of_neg hC hO, mul_neg_of_pos_of_neg hC dX, mul_neg_of_pos_of_neg hC dH⟩
      have := OneCornerCompletion.discr_of_isolates_B _ _ _ _ P Q (8 / 73) (by norm_num) hq hcp hmin6 hJ hiso
      rw [ea, eb, eW] at this
      exact rs_scalar (by linarith) ha1 (by linarith) hb1 hm h6
        (bracket_up (by nlinarith) this)
    · exact ⟨dH, dX⟩
  · exfalso
    have dX : 0 < sarea P Q X := by
      have p1 := mul_pos tP2 dH
      have p2 := mul_pos hC tP1
      have h2 : 0 < sarea (ptC c) (ptH h) P * sarea P Q X := by
        rw [idsl, hHXP]; linarith
      exact pos_of_mul_pos_right h2 hCHP.le
    have hiso : OneCornerCompletion.Isolates P Q ptO (ptC c) X (ptH h) :=
      ⟨mul_neg_of_neg_of_pos hO hC, mul_neg_of_neg_of_pos hO dX, mul_neg_of_neg_of_pos hO dH⟩
    have := OneCornerCompletion.discr_of_isolates_A _ _ _ _ P Q (8 / 73) (by norm_num) hq hcp hmin6 hJ hiso
    rw [ea, eb, eW] at this
    exact rs_scalar (by linarith) ha1 (by linarith) hb1 hm h6 (bracket_up (by nlinarith) this)

/-- In the setting, with both lower points on the `C`-side of `OX`, put `a = hc`, `b = cY`,
`W = cY + hx`, `m = min(a, b)`, `M = max(a, b)`. Then `W ≥ M(1 + σ/(1 - m))`; and the line `LM`
separates `O` from `C` and `H` from `X` (the middle case): the same-side case and both
separating endpoint cases give `4σW·ab ≤ (ab - σ(a + b))²`, contradicting the first bound. -/
theorem lowerLine_separates_of_sameSide {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X) :
    max (h * c) (c * X.2) * (1 + 8 / 73 / (1 - min (h * c) (c * X.2))) ≤ c * X.2 + h * X.1 ∧
      OppSide L M ptO (ptC c) ∧ OppSide L M (ptH h) X := by
  obtain ⟨hm, h6⟩ := rs_six hS hLs hMs
  refine ⟨h6, ?_⟩
  have hne : sarea L M ptO * sarea L M (ptC c) ≠ 0 :=
    mul_ne_zero (ar_ne (by norm_num) (ar hS.competitive 5 6 0))
      (ar_ne (by norm_num) (ar hS.competitive 5 6 1))
  rcases lt_or_gt_of_ne hne with hopp | hss
  · refine ⟨hopp, ?_⟩
    have hO0 : sarea L M ptO ≠ 0 := left_ne_zero_of_mul hne
    rcases lt_or_gt_of_ne hO0 with hO | hO
    · have hC : 0 < sarea L M (ptC c) := by
        by_contra hn; push Not at hn; nlinarith
      obtain ⟨dH, dX⟩ := mid_core hS hLs hMs (Or.inl ⟨rfl, rfl⟩) hO hC
      exact mul_neg_of_neg_of_pos dH dX
    · have hC : sarea L M (ptC c) < 0 := by
        by_contra hn; push Not at hn; nlinarith
      obtain ⟨dH, dX⟩ := mid_core hS hLs hMs (P := M) (Q := L) (Or.inr ⟨rfl, rfl⟩)
        (by rw [sarea_swap₁₂]; linarith) (by rw [sarea_swap₁₂]; linarith)
      rw [sarea_swap₁₂] at dH dX
      unfold OppSide; nlinarith
  · exfalso
    obtain ⟨neH, neX, hq, hcp, hmin6, hJ, ea, eb, eW, -, -, -⟩ :=
      rs_data hS hLs hMs (P := L) (Q := M) (Or.inl ⟨rfl, rfl⟩)
    obtain ⟨-, -, -, -, -, -, -, hk, hkY, hk1, hkY1, kgt⟩ := sameSide_cap_signs_and_bounds hS hLs hMs
    have hc1 := hS.anchors.2.2.2.2.2
    have hh1 := hS.anchors.2.2.1
    have y1 := hS.memX.2.2.2
    have kgt' := kσ_gt'
    have := OneCornerCompletion.discr_of_same_side _ _ _ _ L M (8 / 73) (by norm_num) hq hcp hmin6 hJ hss
    simp only at this
    rw [ea, eb, eW] at this
    exact rs_scalar (by linarith) (by nlinarith) (by linarith) (by nlinarith) hm h6
      ⟨this.2.2.1, this.2.2.2⟩

/-- The pair inequality for the upper lower point `P = (p, y)`, multiplied by `h`:
`E(h, u, y) = (h - σ - (1 + u)y)(y - σ) - σh`, with `u = hf`. -/
def rsE (h u y : ℝ) : ℝ := (h - 8 / 73 - (1 + u) * y) * (y - 8 / 73) - 8 / 73 * h

theorem rsE_u {h u u0 y : ℝ} (hu : u0 ≤ u) (hy : 8 / 73 ≤ y) : rsE h u y ≤ rsE h u0 y := by
  unfold rsE
  have := mul_le_mul_of_nonneg_left hu (mul_nonneg (show (0 : ℝ) ≤ y by linarith)
    (show (0 : ℝ) ≤ y - 8 / 73 by linarith))
  nlinarith

theorem rsE_h1 {h h0 y : ℝ} (hh : h ≤ h0) (hy : 8 / 73 ≤ y) :
    h0 * rsE h (8 / 73) y ≤ h * rsE h0 (8 / 73) y := by
  unfold rsE
  have e : h0 * ((h - 8 / 73 - (1 + 8 / 73) * y) * (y - 8 / 73) - 8 / 73 * h) -
      h * ((h0 - 8 / 73 - (1 + 8 / 73) * y) * (y - 8 / 73) - 8 / 73 * h0) =
      -(h0 - h) * ((8 / 73 + (1 + 8 / 73) * y) * (y - 8 / 73)) := by ring
  have := mul_nonneg (show (0 : ℝ) ≤ h0 - h by linarith)
    (mul_nonneg (show (0 : ℝ) ≤ 8 / 73 + (1 + 8 / 73) * y by linarith)
      (show (0 : ℝ) ≤ y - 8 / 73 by linarith))
  linarith

theorem rsE_hf {h h0 f f0 y : ℝ} (hh : h ≤ h0) (hf : f0 ≤ f) (h0p : 0 ≤ h) (hy : 8 / 73 ≤ y) :
    h0 * rsE h (h * f) y ≤ h * rsE h0 (h0 * f0) y := by
  unfold rsE
  have e : h0 * ((h - 8 / 73 - (1 + h * f) * y) * (y - 8 / 73) - 8 / 73 * h) -
      h * ((h0 - 8 / 73 - (1 + h0 * f0) * y) * (y - 8 / 73) - 8 / 73 * h0) =
      h * h0 * (f0 - f) * y * (y - 8 / 73) - (h0 - h) * ((8 / 73 + y) * (y - 8 / 73)) := by ring
  have p1 : 0 ≤ h * h0 * (f - f0) * y * (y - 8 / 73) :=
    mul_nonneg (mul_nonneg (mul_nonneg (mul_nonneg h0p (by linarith)) (by linarith))
      (by linarith)) (by linarith)
  have p2 := mul_nonneg (show (0 : ℝ) ≤ h0 - h by linarith)
    (mul_nonneg (show (0 : ℝ) ≤ 8 / 73 + y by linarith) (show (0 : ℝ) ≤ y - 8 / 73 by linarith))
  nlinarith

theorem rsE_neg1 (y : ℝ) : rsE (71 / 80) (8 / 73) y < 0 := by
  unfold rsE; nlinarith [sq_nonneg (y - 383479 / 946080)]

theorem rsE_neg2 (y : ℝ) : rsE 1 (1 * (2 / 7)) y < 0 := by
  unfold rsE; nlinarith [sq_nonneg (y - 527 / 1314)]

theorem rsE_neg3 (y : ℝ) : rsE (23 / 25) (23 / 25 * (1 / 5)) y < 0 := by
  unfold rsE; nlinarith [sq_nonneg (y - 8579 / 21608)]

theorem rsE_neg4 {y : ℝ} (hy : y < 11 / 32) : rsE (23 / 25) (8 / 73) y < 0 := by
  unfold rsE
  have e : (23 / 25 - 8 / 73 - (1 + 8 / 73) * y) * (y - 8 / 73) - 8 / 73 * (23 / 25) =
      -50377 / 136422400 + 360597 / 2131600 * (y - 11 / 32) - (1 + 8 / 73) * (y - 11 / 32) ^ 2 := by
    ring
  rw [e]; nlinarith [sq_nonneg (y - 11 / 32)]

/-- The coarse bounds `71/80 < h < 23/25`, `f < 1/5` from `E(h, hf, y) ≥ 0`. -/
theorem rs_11 {h f y x Y : ℝ} (hh0 : 0 < h) (hh1 : h ≤ 1) (hf : 0 < f) (hhf : 8 / 73 ≤ h * f)
    (hy : 8 / 73 ≤ y) (hE : 0 ≤ rsE h (h * f) y) (x1 : x ≤ 1) (hYρ : 49 / 60 ≤ Y)
    (hcap : 8 / 73 ≤ (1 - h) * x - f * (Y - h)) :
    71 / 80 < h ∧ f < 2 / 7 ∧ h < 23 / 25 ∧ f < 1 / 5 := by
  have h71 : 71 / 80 < h := by
    by_contra hn; push Not at hn
    have k1 := rsE_u (h := h) hhf hy
    have k2 := rsE_h1 hn hy
    have k3 := rsE_neg1 y
    nlinarith
  have hf27 : f < 2 / 7 := by
    by_contra hn; push Not at hn
    have k1 := rsE_hf hh1 hn hh0.le hy
    have k3 := rsE_neg2 y
    nlinarith
  have h1h : 0 ≤ 1 - h := by linarith
  have h2325 : h < 23 / 25 := by
    by_contra hn; push Not at hn
    have k1 := mul_le_mul_of_nonneg_left x1 h1h
    have k2 := mul_le_mul_of_nonneg_left hYρ hf.le
    nlinarith
  refine ⟨h71, hf27, h2325, ?_⟩
  by_contra hn; push Not at hn
  have k1 := rsE_hf h2325.le hn hh0.le hy
  have k3 := rsE_neg3 y
  nlinarith

/-- The upper lower point has height below `11/32`. -/
theorem rs_13 {h f y x Y : ℝ} (h71 : 71 / 80 < h) (h23 : h < 23 / 25) (hf : 0 < f)
    (hf5 : f < 1 / 5) (hhf : 8 / 73 ≤ h * f) (x0 : 0 ≤ x) (x1 : x ≤ 1) (hYρ : 49 / 60 ≤ Y)
    (hcap : 8 / 73 ≤ (1 - h) * x - f * (Y - h))
    (h12 : 0 ≤ Y * (h - y - 8 / 73) - h * x * y - h * (8 / 73)) : y < 11 / 32 := by
  by_contra hn; push Not at hn
  have h0 : 0 < h := by linarith
  have h1h : 0 < 1 - h := by linarith
  -- `Φ(y) ≤ Φ(11/32)`
  have hdec : Y * (h - y - 8 / 73) - h * x * y - h * (8 / 73) ≤
      Y * (h - 11 / 32 - 8 / 73) - h * x * (11 / 32) - h * (8 / 73) := by
    have := mul_le_mul_of_nonneg_left hn (show (0 : ℝ) ≤ Y + h * x by nlinarith)
    nlinarith
  have hΦ : (1 - h) * (Y * (h - 11 / 32 - 8 / 73) - h * x * (11 / 32) - h * (8 / 73)) < 0 := by
    rcases le_total h Y with hY | hY
    · have k1 : 8 / 73 * Y ≤ h * (1 - h) * x := by
        have hfs : 8 / 73 * (Y - h) ≤ h * f * (Y - h) :=
          mul_le_mul_of_nonneg_right hhf (by linarith)
        nlinarith
      have k2 : 8 / 73 * Y ≤ h * (1 - h) := by
        have := mul_le_mul_of_nonneg_left x1 (mul_nonneg h0.le h1h.le); linarith
      set K := (1 - h) * (h - 11 / 32 - 8 / 73) - 11 / 32 * (8 / 73) with hK
      have e : (1 - h) * (Y * (h - 11 / 32 - 8 / 73) - h * x * (11 / 32) - h * (8 / 73)) =
          Y * K + 11 / 32 * (8 / 73 * Y - h * (1 - h) * x) - (1 - h) * h * (8 / 73) := by
        rw [hK]; ring
      rw [e]
      have hB2 : K - (8 / 73) ^ 2 < 0 := by
        rw [hK]; nlinarith [sq_nonneg (h - 71 / 80)]
      rcases le_total K 0 with hK0 | hK0
      · have := mul_nonpos_of_nonneg_of_nonpos (show (0 : ℝ) ≤ Y by linarith) hK0
        have := mul_pos h1h h0
        nlinarith
      · have k3 : 8 / 73 * (Y * K) ≤ h * (1 - h) * K := by
          have := mul_le_mul_of_nonneg_right k2 hK0; linarith
        have k4 := mul_pos h0 h1h
        nlinarith
    · have k1 : 8 / 73 + (Y - h) / 5 ≤ (1 - h) * x := by
        have := mul_le_mul_of_nonneg_right hf5.le (show (0 : ℝ) ≤ h - Y by linarith)
        nlinarith
      have e : (1 - h) * (Y * (h - 11 / 32 - 8 / 73) - h * x * (11 / 32) - h * (8 / 73)) ≤
          Y * ((1 - h) * (h - 11 / 32 - 8 / 73) - h * (11 / 32) / 5) - h * (11 / 32) * (8 / 73) +
            h ^ 2 * (11 / 32) / 5 - (1 - h) * h * (8 / 73) := by
        have := mul_le_mul_of_nonneg_left k1 (show (0 : ℝ) ≤ h * (11 / 32) by linarith)
        nlinarith
      have hCm : (1 - h) * (h - 11 / 32 - 8 / 73) - h * (11 / 32) / 5 < 0 := by
        nlinarith [sq_nonneg (h - 71 / 80)]
      have k2 := mul_le_mul_of_nonneg_right hYρ (show (0 : ℝ) ≤ -((1 - h) * (h - 11 / 32 - 8 / 73) -
        h * (11 / 32) / 5) by linarith)
      have hN : 0 < 447340 * h ^ 2 - 689228 * h + 259455 := by
        nlinarith [sq_nonneg (h - 71 / 80)]
      nlinarith
  have : 0 ≤ (1 - h) * (Y * (h - 11 / 32 - 8 / 73) - h * x * (11 / 32) - h * (8 / 73)) :=
    mul_nonneg h1h.le (by linarith)
  linarith

/-- The area oracle at the threshold `4/73` (doubled `σ = 8/73`). -/
theorem ar4 {n : ℕ} {P : Fin n → Point} (hP : 4 / 73 ≤ minTriangleArea P) (i j k : Fin n)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    8 / 73 ≤ |sarea (P i) (P j) (P k)| := by
  have := area_of_le_min hP i j k hij hjk hik
  rw [triangleArea_eq] at this
  linarith

set_option linter.unusedVariables false in
/-- The data for `pairLine_sep_OF_C_false`: `E(h, hf, y) ≥ 0` for the height `y` of `P`, `y ≥ σ`, the cap
bound `(1 - h)x - f(Y - h) ≥ σ`, `hf ≥ σ`, `Y(h - y - σ) ≥ hxy + hσ`, and the coordinate bounds
of `X`. -/
theorem scalOF_data {h c f : ℝ} {X P Q : Point}
    (hf : 0 < f) (hfc : f < c) (hc : c ≤ 1) (hX : X ∈ unitSquare) (hx0 : 0 < X.1)
    (hxc : X.1 < c) (hHFX : sarea (ptH h) (ptF f) X < 0)
    (hh : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h) (hh1 : h ≤ 1) (hY : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ X.2)
    (hP : InLower h c P) (hPX : InTriangle P ptO (ptC c) X)
    (hQ : InLower h c Q) (hQX : InTriangle Q ptO (ptC c) X)
    (hmin : 4 / 73 ≤ minTriangleArea ![ptO, ptC c, ptF f, ptH h, X, P, Q])
    (hO : sarea P Q ptO < 0) (hF : sarea P Q (ptF f) < 0) (hC : 0 < sarea P Q (ptC c)) :
    0 < h ∧ 0 ≤ rsE h (h * f) P.2 ∧ 8 / 73 ≤ P.2 ∧ 8 / 73 ≤ (1 - h) * X.1 - f * (X.2 - h) ∧
      8 / 73 ≤ h * f ∧ 0 ≤ X.2 * (h - P.2 - 8 / 73) - h * X.1 * P.2 - h * (8 / 73) ∧
      0 ≤ X.1 ∧ X.1 ≤ 1 ∧ 49 / 60 ≤ X.2 := by
  have kgt := kσ_gt
  obtain ⟨x0, x1, y0, y1⟩ := hX
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  obtain ⟨hp0, hy0, hyh, -, -, qP2, -⟩ := low_pt h0 c0 hP
  obtain ⟨hq0, ht0, -, -, qQ1, -, -⟩ := low_pt h0 c0 hQ
  have eCHP : 8 / 73 ≤ |sarea (ptC c) (ptH h) P| := ar4 hmin 1 3 5
  rw [qP2] at eCHP
  have hCHP := ar_pos eCHP (by rw [← qP2]; exact hP.2.1.le)
  have eOCQ : 8 / 73 ≤ |sarea ptO (ptC c) Q| := ar4 hmin 0 1 6
  rw [qQ1] at eOCQ
  have hOCQ := ar_pos eOCQ (mul_pos c0 ht0).le
  have eO : 8 / 73 ≤ |sarea P Q ptO| := ar4 hmin 5 6 0
  have eF : 8 / 73 ≤ |sarea P Q (ptF f)| := ar4 hmin 5 6 2
  have kO := ar_neg eO hO.le
  have kF := ar_neg eF hF.le
  have hyt : Q.2 < P.2 := by
    have e : sarea P Q (ptC c) - sarea P Q ptO = c * (P.2 - Q.2) := by
      simp only [sarea, ptC, ptO]; ring
    have : 0 < c * (P.2 - Q.2) := by linarith
    have := pos_of_mul_pos_right this c0.le
    linarith
  have hw : (1 - P.2) * (-sarea P Q ptO) + P.2 * (-sarea P Q (ptF f)) =
      (P.2 - Q.2) * (P.1 - f * P.2) := by simp only [sarea, ptO, ptF]; ring
  have hy1 : P.2 < 1 := by linarith
  have k1 : 8 / 73 ≤ (P.2 - Q.2) * (P.1 - f * P.2) := by
    have := mul_le_mul_of_nonneg_left kO (show (0 : ℝ) ≤ 1 - P.2 by linarith)
    have := mul_le_mul_of_nonneg_left kF hy0.le
    linarith
  have hts : 8 / 73 ≤ Q.2 := by
    have := mul_le_mul_of_nonneg_right hc ht0.le; linarith
  have hpf : 0 < P.1 - f * P.2 := by
    by_contra hn; push Not at hn
    have := mul_nonpos_of_nonneg_of_nonpos (show (0 : ℝ) ≤ P.2 - Q.2 by linarith) hn
    linarith
  have hys : 8 / 73 ≤ P.2 := by linarith
  have hhp : h * P.1 ≤ h - P.2 - 8 / 73 := by
    have := mul_le_mul_of_nonneg_right hc (show (0 : ℝ) ≤ h - P.2 by linarith)
    linarith
  have hE : 0 ≤ rsE h (h * f) P.2 := by
    unfold rsE
    have k2 := mul_le_mul_of_nonneg_right (show P.2 - Q.2 ≤ P.2 - 8 / 73 by linarith) hpf.le
    have k3 : h * (8 / 73) ≤ h * ((P.2 - 8 / 73) * (P.1 - f * P.2)) :=
      mul_le_mul_of_nonneg_left (by linarith) h0.le
    have k4 := mul_le_mul_of_nonneg_left hhp (show (0 : ℝ) ≤ P.2 - 8 / 73 by linarith)
    linarith
  have eHF : 8 / 73 ≤ |sarea (ptH h) (ptF f) X| := ar4 hmin 3 2 4
  have hcap0 := ar_neg eHF hHFX.le
  have qHF : sarea (ptH h) (ptF f) X = -((1 - h) * X.1 - f * (X.2 - h)) := by
    simp only [sarea, ptH, ptF]; ring
  rw [qHF] at hcap0
  have hcap : 8 / 73 ≤ (1 - h) * X.1 - f * (X.2 - h) := by linarith
  have hhf : 8 / 73 ≤ h * f := by
    have e : 8 / 73 ≤ |sarea ptO (ptF f) (ptH h)| := ar4 hmin 0 2 3
    have q : sarea ptO (ptF f) (ptH h) = h * f := by simp only [sarea, ptO, ptF, ptH]; ring
    rw [q] at e; exact ar_pos e (mul_pos h0 hf).le
  -- `Y(h - y - σ) ≥ hxy + hσ`, from `[OPX] ≥ σ`
  have hOPX : 8 / 73 ≤ P.1 * X.2 - P.2 * X.1 := by
    have e : 8 / 73 ≤ |sarea ptO P X| := ar4 hmin 0 5 4
    have q : sarea ptO P X = P.1 * X.2 - P.2 * X.1 := by simp only [sarea, ptO]; ring
    have pos : 0 < sarea ptO P X := by rw [sarea_cycle X ptO P]; exact hPX.2.2
    rw [q] at e pos; exact ar_pos e pos.le
  have h12 : 0 ≤ X.2 * (h - P.2 - 8 / 73) - h * X.1 * P.2 - h * (8 / 73) := by
    have k1 := mul_le_mul_of_nonneg_left hhp y0
    have k2 := mul_le_mul_of_nonneg_left hOPX h0.le
    linarith
  exact ⟨h0, hE, hys, hcap, hhf, h12, x0, x1, by linarith⟩

/-- Let `O = (0,0)`, `C = (c,0)`, `H = (0,h)`, `F = (f,1)`, `X = (x,Y)` with `0 < f < c ≤ 1`,
`0 < x < c`, `X` in the square and `[HFX] < 0`; let `P, Q` be strictly inside both `OHC` and
`OCX`, with `k ≤ h ≤ 1` and `Y ≥ k`, `k = (4 + 2√3)σ`; let every doubled area of these seven
points be at least `σ = 8/73`. Then the directed line `PQ` cannot put `O, F` on its negative side
and `C` on its positive side. The hypotheses are exactly those preserved by the map `Ψ` of
`psi_data`. The proof combines `E(h, hf, y) ≥ 0`, the coarse bounds `rs_11`, `y < 11/32`
(`rs_13`) and `E(23/25, σ, y) < 0` for `y < 11/32`. -/
theorem pairLine_sep_OF_C_false {h c f : ℝ} {X P Q : Point}
    (hf : 0 < f) (hfc : f < c) (hc : c ≤ 1) (hX : X ∈ unitSquare) (hx0 : 0 < X.1)
    (hxc : X.1 < c) (hHFX : sarea (ptH h) (ptF f) X < 0)
    (hh : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h) (hh1 : h ≤ 1) (hY : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ X.2)
    (hP : InLower h c P) (hPX : InTriangle P ptO (ptC c) X)
    (hQ : InLower h c Q) (hQX : InTriangle Q ptO (ptC c) X)
    (hmin : 4 / 73 ≤ minTriangleArea ![ptO, ptC c, ptF f, ptH h, X, P, Q])
    (hO : sarea P Q ptO < 0) (hF : sarea P Q (ptF f) < 0) (hC : 0 < sarea P Q (ptC c)) :
    False := by
  obtain ⟨h0, hE, hys, hcap, hhf, h12, x0, x1, hYρ⟩ :=
    scalOF_data hf hfc hc hX hx0 hxc hHFX hh hh1 hY hP hPX hQ hQX hmin hO hF hC
  clear hmin hO hF hC hP hQ hPX hQX
  obtain ⟨h71, hf27, h2325, hf5⟩ := rs_11 h0 hh1 hf hhf hys hE x1 hYρ hcap
  have hy32 := rs_13 h71 h2325 hf hf5 hhf x0 x1 hYρ hcap h12
  have k5 := rsE_u (h := h) hhf hys
  have k6 := rsE_h1 h2325.le hys
  have k7 := rsE_neg4 hy32
  nlinarith

/-- An affine map of determinant `-1` sends a counterclockwise triangle containing `R` to the
reversed triangle containing the image of `R`. -/
theorem tri_neg {a b c d e g : ℝ} (hdet : a * d - b * c = -1) {R A B C : Point}
    (h : InTriangle R A B C) :
    InTriangle (affineMap a b c d e g R) (affineMap a b c d e g A) (affineMap a b c d e g C)
      (affineMap a b c d e g B) := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨?_, ?_, ?_⟩ <;> rw [sarea_affineMap, hdet]
  · rw [sarea_swap₁₂]; linarith [sarea_swap₁₂ A C R, sarea_swap₁₂ C A R]
  · linarith [sarea_swap₁₂ C B R, sarea_swap₁₂ B C R]
  · linarith [sarea_swap₁₂ B A R, sarea_swap₁₂ A B R]

/-- The middle case with `O, F` on one side and `C` on the other, for the setting. -/
theorem rs_OF {h c d f : ℝ} {L M X P Q : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X)
    (hPQ : (P = L ∧ Q = M) ∨ (P = M ∧ Q = L)) (hO : sarea P Q ptO < 0)
    (hF : sarea P Q (ptF f) < 0) (hC : 0 < sarea P Q (ptC c)) : False := by
  obtain ⟨hfx, hdy, hHFX, hCFX, hCDX, hHC, tri, hk, hkY, hk1, hkY1, kgt⟩ := sameSide_cap_signs_and_bounds hS hLs hMs
  have hxc := x_lt_c_of_sameSide hS hLs hMs
  have hPm : P = L ∨ P = M := by rcases hPQ with ⟨h1, -⟩ | ⟨h1, -⟩ <;> tauto
  have hQm : Q = L ∨ Q = M := by rcases hPQ with ⟨-, h1⟩ | ⟨-, h1⟩ <;> tauto
  obtain ⟨hPl, hPX, -⟩ := tri P hPm
  obtain ⟨hQl, hQX, -⟩ := tri Q hQm
  have hmin7 : 4 / 73 ≤ minTriangleArea ![ptO, ptC c, ptF f, ptH h, X, P, Q] := by
    have hA : A₀ ≤ minTriangleArea ![ptO, ptC c, ptF f, ptH h, X, P, Q] := by
      rcases hPQ with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
      · exact min_sub hS.competitive _ ![0, 1, 3, 4, 7, 5, 6] (by norm_num)
          (by decide) (by intro i; fin_cases i <;> rfl)
      · exact min_sub hS.competitive _ ![0, 1, 3, 4, 7, 6, 5] (by norm_num)
          (by decide) (by intro i; fin_cases i <;> rfl)
    linarith [A₀_bounds.2.1]
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  exact pairLine_sep_OF_C_false hf (by linarith) hc hS.memX (by linarith) hxc hHFX hk1 hh hkY1 hPl hPX
    hQl hQX hmin7 hO hF hC

/-- The image of the setting under `Ψ(u, v) = (c - u - ((c - x)/Y) v, v)` satisfies the
hypotheses of `pairLine_sep_OF_C_false`. -/
theorem psi_data {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X) :
    ∃ f' x' : ℝ, ∃ L' M' : Point, 0 < f' ∧ f' < c ∧ c ≤ 1 ∧ ((x', h) : Point) ∈ unitSquare ∧
      0 < x' ∧ x' < c ∧ sarea (ptH X.2) (ptF f') (x', h) < 0 ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ X.2 ∧ X.2 ≤ 1 ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h ∧
      InLower X.2 c L' ∧ InTriangle L' ptO (ptC c) (x', h) ∧
      InLower X.2 c M' ∧ InTriangle M' ptO (ptC c) (x', h) ∧
      4 / 73 ≤ minTriangleArea ![ptO, ptC c, ptF f', ptH X.2, (x', h), L', M'] ∧
      4 / 73 ≤ minTriangleArea ![ptO, ptC c, ptF f', ptH X.2, (x', h), M', L'] ∧
      sarea L' M' ptO = -sarea L M (ptC c) ∧ sarea L' M' (ptF f') = -sarea L M (ptF f) ∧
      sarea L' M' (ptC c) = -sarea L M ptO := by
  obtain ⟨hfx, hdy, hHFX, hCFX, hCDX, hHC, tri, hk, hkY, hk1, hkY1, kgt⟩ := sameSide_cap_signs_and_bounds hS hLs hMs
  have hxc := x_lt_c_of_sameSide hS hLs hMs
  obtain ⟨hd1, hf1, -, -, k1, kCF, k2, k3, -, hhf, -⟩ := rs_cap hS
  obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, ⟨x0, x1, y0, y1⟩, hmin, hLl, hMl, hXc⟩ := hS
  have hY0 : 0 < X.2 := by nlinarith
  set m := (c - X.1) / X.2 with hm
  have hdet : (-1 : ℝ) * 1 - (-m) * 0 = -1 := by ring
  set Ψ := affineMap (-1) (-m) 0 1 c 0 with hΨ
  have eO : Ψ (ptC c) = ptO := by simp only [hΨ, affineMap, ptC, ptO]; ext <;> simp
  have eC : Ψ ptO = ptC c := by simp only [hΨ, affineMap, ptC, ptO]; ext <;> simp
  have eH : Ψ X = ptH X.2 := by
    simp only [hΨ, hm, affineMap, ptH]; ext
    · simp only; field_simp; ring
    · simp
  set f' := c - f - m with hf'
  have eF : Ψ (ptF f) = ptF f' := by simp only [hΨ, hf', affineMap, ptF]; ext <;> simp; ring
  set x' := c - m * h with hx'
  have eX : Ψ (ptH h) = (x', h) := by simp only [hΨ, hx', affineMap, ptH]; ext <;> simp; ring
  have hm0 : 0 < m := div_pos (by linarith) hY0
  -- the new anchor conditions
  have hf'0 : 0 < f' := by
    have e : X.2 * f' = -sarea (ptC c) (ptF f) X := by
      simp only [hf', hm, sarea, ptC, ptF]; field_simp; ring
    have : 0 < X.2 * f' := by rw [e]; linarith
    exact pos_of_mul_pos_right this hY0.le
  have hx'0 : 0 < x' := by
    have e : X.2 * x' = sarea (ptH h) (ptC c) X := by
      simp only [hx', hm, sarea, ptH, ptC]; field_simp; ring
    have : 0 < X.2 * x' := by rw [e]; exact hHC
    exact pos_of_mul_pos_right this hY0.le
  have hx'c : x' < c := by
    have : 0 < m * h := mul_pos hm0 (by nlinarith)
    simp only [hx']; linarith
  have hHFX' : sarea (ptH X.2) (ptF f') (x', h) < 0 := by
    rw [← eH, ← eF, ← eX, hΨ, sarea_affineMap, hdet]
    have : sarea X (ptF f) (ptH h) = -sarea (ptH h) (ptF f) X := by simp only [sarea]; ring
    rw [this]; linarith
  -- the transformed lower points
  have tL := tri L (Or.inl rfl)
  have tM := tri M (Or.inr rfl)
  have img : ∀ R : Point, InLower h c R → InTriangle R ptO (ptC c) X →
      InLower X.2 c (Ψ R) ∧ InTriangle (Ψ R) ptO (ptC c) (x', h) := by
    intro R hR hRX
    have i1 := tri_neg (e := c) (g := 0) hdet hRX
    rw [← hΨ, eC, eO, eH] at i1
    have i2 := tri_neg (e := c) (g := 0) hdet hR
    rw [← hΨ, eC, eO, eX] at i2
    refine ⟨?_, ?_⟩
    · unfold InLower; exact inTriangle_rot.1 (inTriangle_rot.1 i1)
    · exact inTriangle_rot.1 (inTriangle_rot.1 i2)
  obtain ⟨iL1, iL2⟩ := img L hLl tL.2.1
  obtain ⟨iM1, iM2⟩ := img M hMl tM.2.1
  have hx'1 : x' ≤ 1 := by linarith
  have hmin7 : ∀ P Q : Point, (P = L ∧ Q = M) ∨ (P = M ∧ Q = L) →
      4 / 73 ≤ minTriangleArea ![ptO, ptC c, ptF f', ptH X.2, (x', h), Ψ P, Ψ Q] := by
    intro P Q hPQ
    have hA : A₀ ≤ minTriangleArea ![ptC c, ptO, ptF f, X, ptH h, P, Q] := by
      rcases hPQ with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
      · exact min_sub hmin _ ![1, 0, 3, 7, 4, 5, 6] (by norm_num) (by decide)
          (by intro i; fin_cases i <;> rfl)
      · exact min_sub hmin _ ![1, 0, 3, 7, 4, 6, 5] (by norm_num) (by decide)
          (by intro i; fin_cases i <;> rfl)
    have e : ![ptO, ptC c, ptF f', ptH X.2, (x', h), Ψ P, Ψ Q] =
        Ψ ∘ ![ptC c, ptO, ptF f, X, ptH h, P, Q] := by
      funext i; fin_cases i
      · exact eO.symm
      · exact eC.symm
      · exact eF.symm
      · exact eH.symm
      · exact eX.symm
      · rfl
      · rfl
    rw [e, hΨ, minTriangleArea_affineMap, hdet]
    norm_num
    linarith [A₀_bounds.2.1]
  have sg : ∀ P Q V : Point, sarea (Ψ P) (Ψ Q) (Ψ V) = -sarea P Q V := by
    intro P Q V; rw [hΨ, sarea_affineMap, hdet]; ring
  refine ⟨f', x', Ψ L, Ψ M, hf'0, by simp only [hf']; linarith, hc,
    ⟨hx'0.le, hx'1, by nlinarith, hh⟩, hx'0, hx'c, hHFX', hkY1, y1, hk1, iL1, iL2, iM1, iM2,
    hmin7 L M (Or.inl ⟨rfl, rfl⟩), hmin7 M L (Or.inr ⟨rfl, rfl⟩), ?_, ?_, ?_⟩
  · rw [← eO, sg]
  · rw [← eF, sg]
  · rw [← eC, sg]

set_option linter.unusedVariables false in
/-- In the setting, with both lower points on the `C`-side of `OX`, the middle case in which `F`
is on the `C`-side of the pair line (`O` alone on the other side among `O, C, F`) is impossible:
the affine map `Ψ(u, v) = (c - u - ((c - x)/Y) v, v)` of determinant `-1` sends `C, O, X, F, H`
to `O', C', H', F', X'` satisfying the hypotheses of `pairLine_sep_OF_C_false`. -/
theorem middle_sameSide_CF_false {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X)
    (hOC : OppSide L M ptO (ptC c)) (hHX : OppSide L M (ptH h) X)
    (hCF : SameSide L M (ptC c) (ptF f)) : False := by
  obtain ⟨f', x', L', M', hf'0, hf'c, hc, hX', hx'0, hx'c, hHFX', hkY1, y1, hk1, iL1, iL2, iM1,
    iM2, m1, m2, sO, sF, sC⟩ := psi_data hS hLs hMs
  unfold SameSide at hCF
  unfold OppSide at hOC
  have hC0 : sarea L M (ptC c) ≠ 0 := by intro h0; rw [h0, zero_mul] at hCF; exact lt_irrefl _ hCF
  rcases lt_or_gt_of_ne hC0 with hCn | hCp
  · have hFn : sarea L M (ptF f) < 0 := by
      by_contra hn; push Not at hn; nlinarith
    have hOp : 0 < sarea L M ptO := by
      by_contra hn; push Not at hn; nlinarith
    refine pairLine_sep_OF_C_false (X := (x', h)) (P := M') (Q := L') hf'0 hf'c hc hX' hx'0 hx'c hHFX'
      hkY1 y1 hk1 iM1 iM2 iL1 iL2 m2 ?_ ?_ ?_
    · rw [sarea_swap₁₂, sO]; linarith
    · rw [sarea_swap₁₂, sF]; linarith
    · rw [sarea_swap₁₂, sC]; linarith
  · have hFp : 0 < sarea L M (ptF f) := by
      by_contra hn; push Not at hn; nlinarith
    have hOn : sarea L M ptO < 0 := by
      by_contra hn; push Not at hn; nlinarith
    refine pairLine_sep_OF_C_false (X := (x', h)) (P := L') (Q := M') hf'0 hf'c hc hX' hx'0 hx'c hHFX'
      hkY1 y1 hk1 iL1 iL2 iM1 iM2 m1 ?_ ?_ ?_
    · rw [sO]; linarith
    · rw [sF]; linarith
    · rw [sC]; linarith

/-- If the C1 anchors (weak conditions), two points `L, M` strictly inside `OHC` and a point `X`
of the closed top cap `conv{D, F, (1,1)}` form a configuration of least area at least `A₀`, then
`L, M` lie on opposite sides of `OX`. -/
theorem theorem_main {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X) :
    OppSide ptO X L M := by
  have core : ∀ {h c d f : ℝ} {L M X : Point}, Setting h c d f L M X → 0 < sarea ptO L X →
      0 < sarea ptO M X → False := by
    intro h c d f L M X hS hLs hMs
    obtain ⟨-, hOC, hHX⟩ := lowerLine_separates_of_sameSide hS hLs hMs
    unfold OppSide at hOC
    have hF0 : sarea L M (ptF f) ≠ 0 := ar_ne (by norm_num) (ar hS.competitive 5 6 3)
    have hO0 : sarea L M ptO ≠ 0 := by intro h0; rw [h0, zero_mul] at hOC; exact lt_irrefl _ hOC
    rcases lt_or_gt_of_ne hO0 with hO | hO
    · have hC : 0 < sarea L M (ptC c) := by by_contra hn; push Not at hn; nlinarith
      rcases lt_or_gt_of_ne hF0 with hF | hF
      · exact rs_OF hS hLs hMs (Or.inl ⟨rfl, rfl⟩) hO hF hC
      · exact middle_sameSide_CF_false hS hLs hMs hOC hHX (mul_pos hC hF)
    · have hC : sarea L M (ptC c) < 0 := by by_contra hn; push Not at hn; nlinarith
      rcases lt_or_gt_of_ne hF0 with hF | hF
      · exact middle_sameSide_CF_false hS hLs hMs hOC hHX (mul_pos_of_neg_of_neg hC hF)
      · refine rs_OF hS hLs hMs (P := M) (Q := L) (Or.inr ⟨rfl, rfl⟩) ?_ ?_ ?_ <;>
          rw [sarea_swap₁₂] <;> linarith
  unfold OppSide
  by_contra hn; push Not at hn
  have hL0 : sarea ptO X L ≠ 0 := ar_ne (by norm_num) (ar hS.competitive 0 7 5)
  have hM0 : sarea ptO X M ≠ 0 := ar_ne (by norm_num) (ar hS.competitive 0 7 6)
  have hpos : 0 < sarea ptO X L * sarea ptO X M := lt_of_le_of_ne hn (mul_ne_zero hL0 hM0).symm
  rcases lt_or_gt_of_ne hL0 with hL | hL
  · have hM : sarea ptO X M < 0 := by by_contra hn'; push Not at hn'; nlinarith
    exact core hS (by rw [sarea_swap₂₃]; linarith) (by rw [sarea_swap₂₃]; linarith)
  · have hM : 0 < sarea ptO X M := by by_contra hn'; push Not at hn'; nlinarith
    obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL', hM', hX, hmin, hLl, hMl, hXc⟩ := hS
    refine core (h := c) (c := h) (d := f) (f := d) (L := tp L) (M := tp M) (X := tp X)
      ⟨⟨hf, hfc, hc, hd, hdh, hh⟩, tp_mem hL', tp_mem hM', tp_mem hX, by rw [min8_tp]; exact hmin,
        inLower_tp hLl, inLower_tp hMl, ?_⟩ ?_ ?_
    · have := sarea_tp (ptF f) (ptD d) X
      rw [tp_F, tp_D] at this
      rw [this, sarea_swap₁₂]; linarith
    · rw [← tp_O, sarea_tp, sarea_swap₂₃]; linarith
    · rw [← tp_O, sarea_tp, sarea_swap₂₃]; linarith

end Heilbronn.Nine.C1TopCapRadialSplit
