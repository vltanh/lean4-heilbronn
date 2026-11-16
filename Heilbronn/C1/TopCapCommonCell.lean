module

public import Heilbronn.C1.TopCapOfSplit
public import Heilbronn.C1.TwoLower.Bern

/-! # Pair-line exclusions in the remaining C1 common-cell placement
(`hand/C1_TOP_CAP_COMMON_CELL.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 5
(the two isolated-endpoint pair-line cases).

Setting (lines 3-40; `CommonCellSetting` of `Heilbronn.C1.TopCapOfSplit`): the C1 anchors with
the weak conditions, a competitive nine-point configuration (`s = 8/73`, `K = 4 + 2√3`,
`ρ = 49/60`), two lower points `L, M ∈ OHC ∩ OCF`, a top-cap point `X = (x, Y)` beyond `DF`, and
`P` inside the pentagon, with `P, M ∈ OCX`, `L ∈ OHX`; hence `hc, cY ≥ Ks > ρ` and `f < x < c`
(1). The point `P` is used only through `cY ≥ Ks`.

Results:
* `eq2_5`: if `LM` isolates `C`: the endpoint inequality (2)–(3) in `p = hc`, `z = hf/c`, and
  `p > 71/80` (4), `z < 2p - 5/3` (5);
* `eq6`: the cap bound `s ≤ -[HFX] ≤ 𝒜(p, c, z)` (any pair-line case);
* `theorem_C` (**Theorem**, first part): `LM` cannot isolate `C` from `O, H, F`;
* `theorem_O` (**Theorem**, second part): `LM` cannot isolate `O` from `C, H, F`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapCommonCell

open Heilbronn.C1 Heilbronn.C1TopCapOfSplit Heilbronn.C1TwoLower Heilbronn.C1TopCapConvexPair

/-- `G(p, z) = [p - 2s - sz]² - 4sp(1 + z)` of (3), `s = 8/73`. -/
def endpointG (p z : ℝ) : ℝ := (p - 2 * (8 / 73) - 8 / 73 * z) ^ 2 - 4 * (8 / 73) * p * (1 + z)

/-- `𝒜(p, c, z) = (c - p)(1 - s/p + ρ(1 - c)/(cp)) + zc(1 - ρ/p)` of (6). -/
def capBound (p c z : ℝ) : ℝ :=
  (c - p) * (1 - 8 / 73 / p + 49 / 60 * (1 - c) / (c * p)) + z * c * (1 - 49 / 60 / p)

/-- The scalar facts of the common cell: `p = hc ≥ k`, `cY ≥ k`, `hf ≥ σ`, `f < x < c`, the cap
costs of `X`. -/
theorem cc_facts {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c * X.2 ∧
      8 / 73 ≤ h * f ∧ f < X.1 ∧ X.1 < c ∧ f ≤ c - 8 / 73 ∧
      8 / 73 ≤ -sarea (ptH h) (ptF f) X ∧ 8 / 73 ≤ sarea (ptC c) (ptD d) X ∧
      (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) := by
  obtain ⟨hk, hkY, kgt⟩ := eq1 hS.toOneCapSetting
  obtain ⟨hfx, hxc, hfcs⟩ := claim_x_lt_c hS.toOneCapSetting
  have h8 : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] :=
    min8 hS.competitive
  obtain ⟨-, -, -, -, k1, -, k2, -, -, hhf, -⟩ :=
    C1TopCapRadialSplit.rs_cap (L := L) (M := M) (X := X)
      ⟨hS.anchors, hS.memL, hS.memM, hS.memX, h8, hS.lowerL, hS.lowerM, hS.capX.le⟩
  exact ⟨hk, hkY, hhf, hfx, hxc, hfcs, k1, k2, kgt⟩

/-- The central pair `L, M` of the quadrilateral `O, C, F, H`, and its areas. -/
theorem cc_quad {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    OneCornerCompletion.IsConvexQuad ptO (ptC c) (ptF f) (ptH h) ∧
      OneCornerCompletion.CentralPair ptO (ptC c) (ptF f) (ptH h) L M ∧
      8 / 73 / 2 ≤ minTriangleArea (OneCornerCompletion.quadConfig ptO (ptC c) (ptF f) (ptH h) L M) ∧
      0 < OneCornerCompletion.overlapJ ptO (ptC c) (ptF f) (ptH h) ∧
      OneCornerCompletion.areaA ptO (ptC c) (ptF f) (ptH h) = h * c ∧
      OneCornerCompletion.areaB ptO (ptC c) (ptF f) (ptH h) = c ∧
      OneCornerCompletion.areaW ptO (ptC c) (ptF f) (ptH h) = c + h * f := by
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have eOCF : sarea ptO (ptC c) (ptF f) = c := by simp only [sarea, ptO, ptC, ptF]; ring
  have eOFH : sarea ptO (ptF f) (ptH h) = h * f := by simp only [sarea, ptO, ptF, ptH]; ring
  have eOCH : sarea ptO (ptC c) (ptH h) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have eCFH : sarea (ptC c) (ptF f) (ptH h) = c * (1 - h) + h * f := by
    simp only [sarea, ptC, ptF, ptH]; ring
  have eFHO : sarea (ptF f) (ptH h) ptO = h * f := by simp only [sarea, ptO, ptF, ptH]; ring
  have eHOC : sarea (ptH h) ptO (ptC c) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have p1 : 0 < c * (1 - h) + h * f := by
    have := mul_nonneg c0.le (show (0 : ℝ) ≤ 1 - h by linarith)
    have := mul_pos h0 hf; linarith
  have hq : OneCornerCompletion.IsConvexQuad ptO (ptC c) (ptF f) (ptH h) :=
    Or.inl ⟨by rw [eOCF]; exact c0, by rw [eCFH]; exact p1, by rw [eFHO]; exact mul_pos h0 hf,
      by rw [eHOC]; exact mul_pos h0 c0⟩
  have hA : A₀ ≤ minTriangleArea (OneCornerCompletion.quadConfig ptO (ptC c) (ptF f) (ptH h) L M) :=
    CornerFamilies.min_sub hS.competitive _ ![0, 1, 3, 4, 5, 6] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> rfl)
  have ea : OneCornerCompletion.areaA ptO (ptC c) (ptF f) (ptH h) = h * c := by
    simp only [OneCornerCompletion.areaA]; rw [eOCH, abs_of_pos (mul_pos h0 c0)]
  have eb : OneCornerCompletion.areaB ptO (ptC c) (ptF f) (ptH h) = c := by
    simp only [OneCornerCompletion.areaB]; rw [eOCF, abs_of_pos c0]
  have eW : OneCornerCompletion.areaW ptO (ptC c) (ptF f) (ptH h) = c + h * f := by
    simp only [OneCornerCompletion.areaW]; rw [eOCF, eOFH, abs_of_pos (by nlinarith)]
  refine ⟨hq, ⟨Or.inl hS.L_OCF, Or.inl hS.lowerL, Or.inl hS.M_OCF, Or.inl hS.lowerM⟩,
    by linarith [σ_lt], ?_, ea, eb, eW⟩
  simp only [OneCornerCompletion.overlapJ]; rw [ea, eb, eW]
  have := mul_pos h0 (show (0 : ℝ) < c - f by linarith); linarith

/-- (3)–(5) in scalar form. -/
theorem cc_scal {p z : ℝ} (hp1 : p ≤ 1) (hz : 8 / 73 ≤ z) (hG : 0 ≤ endpointG p z)
    (hb : 0 < p - 2 * (8 / 73) - 8 / 73 * z) : 71 / 80 < p ∧ z < 2 * p - 5 / 3 := by
  unfold endpointG at hG
  -- decrease `z` to `σ`
  have hGs : 0 ≤ (p - 2 * (8 / 73) - 8 / 73 * (8 / 73)) ^ 2 - 4 * (8 / 73) * p * (1 + 8 / 73) := by
    have := mul_nonneg (show (0 : ℝ) ≤ 8 / 73 * (z - 8 / 73) by linarith)
      (show (0 : ℝ) ≤ (p - 2 * (8 / 73) - 8 / 73 * (8 / 73)) + (p - 2 * (8 / 73) - 8 / 73 * z) by
        nlinarith)
    have := mul_nonneg (show (0 : ℝ) ≤ p by nlinarith) (show (0 : ℝ) ≤ z - 8 / 73 by linarith)
    nlinarith
  have h71 : 71 / 80 < p := by
    by_contra hn; push Not at hn
    set x0 : ℝ := 2 * (8 / 73) + (8 / 73) * (8 / 73)
    have q0 : 1 * x0 ^ 2 + (-2 * x0 - 4 * (8 / 73) * (1 + 8 / 73)) * x0 + x0 ^ 2 < 0 := by
      simp only [x0]; norm_num
    have q : 0 ≤ 1 * p ^ 2 + (-2 * x0 - 4 * (8 / 73) * (1 + 8 / 73)) * p + x0 ^ 2 := by
      simp only [x0]; nlinarith
    have := quad_up (by norm_num) (show x0 < p by simp only [x0]; nlinarith) hn q0 q
    simp only [x0] at this; norm_num at this
  refine ⟨h71, ?_⟩
  by_contra hn; push Not at hn
  have hb0 : 0 < p - 2 * (8 / 73) - 8 / 73 * (2 * p - 5 / 3) := by nlinarith
  have hGz0 : 0 ≤ (p - 2 * (8 / 73) - 8 / 73 * (2 * p - 5 / 3)) ^ 2 -
      4 * (8 / 73) * p * (1 + (2 * p - 5 / 3)) := by
    have := mul_nonneg (show (0 : ℝ) ≤ 8 / 73 * (z - (2 * p - 5 / 3)) by linarith)
      (show (0 : ℝ) ≤ (p - 2 * (8 / 73) - 8 / 73 * (2 * p - 5 / 3)) +
        (p - 2 * (8 / 73) - 8 / 73 * z) by linarith)
    have := mul_nonneg (show (0 : ℝ) ≤ p by linarith)
      (show (0 : ℝ) ≤ z - (2 * p - 5 / 3) by linarith)
    nlinarith
  nlinarith [mul_nonneg (show (0 : ℝ) ≤ p - 71 / 80 by linarith) (show (0 : ℝ) ≤ 1 - p by linarith)]

/-- **Claim** (`C1_TOP_CAP_COMMON_CELL:eq2-5`). In the common-cell placement, if `LM` isolates
`C` from `O, H, F`, then with `p = hc`, `z = hf/c`, `W = c + hf`:
`[pc - s(W + c)]² ≥ 4sWpc` with `pc - s(W + c) > 0` (2); equivalently `G(p, z) ≥ 0` with
`p - 2s - sz > 0` (3); consequently `p > 71/80` (4) and `z < 2p - 5/3` (5).
`hand/C1_TOP_CAP_COMMON_CELL.md`, lines 52-134.
The isolated-endpoint calculation is the general weighted identity of ONE_CORNER_COMPLETION §1 on
the quadrilateral `O, C, F, H` at threshold `s/W`.
Uses: ONE_CORNER_COMPLETION:claim-general-identities. -/
-- Note (line 65): only `p + c - W > 0` is checked for the canonical normalization; `W > p` and
-- `W > c` are also needed (true: `W - p = c(1 - h) + hf`, `W - c = hf`).
theorem eq2_5 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hiso : Isolates L M (ptC c) ptO (ptH h) (ptF f)) :
    4 * (8 / 73) * (c + h * f) * (h * c) * c ≤
        ((h * c) * c - 8 / 73 * ((c + h * f) + c)) ^ 2 ∧
      0 < (h * c) * c - 8 / 73 * ((c + h * f) + c) ∧
      0 ≤ endpointG (h * c) (h * f / c) ∧ 0 < h * c - 2 * (8 / 73) - 8 / 73 * (h * f / c) ∧
      71 / 80 < h * c ∧ h * f / c < 2 * (h * c) - 5 / 3 := by
  obtain ⟨hq, hcp, hmin6, hJ, ea, eb, eW⟩ := cc_quad hS
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have c0 : 0 < c := by nlinarith
  obtain ⟨i1, i2, i3⟩ := hiso
  unfold OppSide at i1; unfold SameSide at i2 i3
  have hiso' : OneCornerCompletion.Isolates L M (ptC c) ptO (ptF f) (ptH h) := by
    exact ⟨i1, sign_trans i1 i3, sign_trans i1 i2⟩
  have := OneCornerCompletion.eq6_B _ _ _ _ L M (8 / 73) (by norm_num) hq hcp hmin6 hJ hiso'
  rw [ea, eb, eW] at this
  obtain ⟨b1, b2⟩ := this
  have hz : 8 / 73 ≤ h * f / c := by
    rw [le_div_iff₀ c0]; nlinarith
  have e1 : h * c * c - 8 / 73 * ((c + h * f) + c) = c * (h * c - 2 * (8 / 73) - 8 / 73 * (h * f / c)) := by
    field_simp; try ring
  have hb : 0 < h * c - 2 * (8 / 73) - 8 / 73 * (h * f / c) := by
    rw [e1] at b1; exact pos_of_mul_pos_right b1 c0.le
  have hG : 0 ≤ endpointG (h * c) (h * f / c) := by
    unfold endpointG
    have e2 : 4 * (8 / 73) * (c + h * f) * (h * c * c) = c ^ 2 * (4 * (8 / 73) * (h * c) * (1 + h * f / c)) := by
      field_simp; try ring
    rw [e1, e2, mul_pow] at b2
    have := le_of_mul_le_mul_left b2 (by positivity)
    linarith
  obtain ⟨h71, hz5⟩ := cc_scal (by nlinarith) hz hG hb
  exact ⟨by linarith, b1, hG, hb, h71, hz5⟩

/-- The cap bound (6) in scalar form. -/
theorem cap_bound_scal {h c d f x Y : ℝ} (hd : 0 < d) (hdh : d ≤ h) (h0 : 0 < h) (hh : h ≤ 1)
    (c0 : 0 < c) (hc : c ≤ 1) (hhρ : 49 / 60 ≤ h) (hcρ : 49 / 60 ≤ c) (hhf : 8 / 73 ≤ h * f)
    (hxc : x < c) (hcY : 49 / 60 ≤ c * Y) (hβ : 8 / 73 ≤ (1 - c) * Y + d * (c - x)) :
    (1 - h) * x + f * (h - Y) ≤ capBound (h * c) c (h * f / c) := by
  have hx : h * x ≤ h * c + (1 - c) * Y - 8 / 73 := by
    have := mul_le_mul_of_nonneg_right hdh (show (0 : ℝ) ≤ c - x by linarith); nlinarith
  have hK : (1 - h) * (1 - c) - h * f < 0 := by
    have := mul_le_mul (show 1 - h ≤ 1 - 49 / 60 by linarith) (show 1 - c ≤ 1 - 49 / 60 by linarith)
      (by linarith) (by norm_num)
    nlinarith
  have hY : 49 / 60 / c ≤ Y := by rw [div_le_iff₀ c0]; linarith
  have k1 : h * ((1 - h) * x + f * (h - Y)) ≤
      (1 - h) * (h * c - 8 / 73) + h ^ 2 * f + 49 / 60 / c * ((1 - h) * (1 - c) - h * f) := by
    have := mul_le_mul_of_nonneg_left hx (show (0 : ℝ) ≤ 1 - h by linarith)
    have := mul_le_mul_of_nonpos_right hY hK.le
    nlinarith
  have e : (1 - h) * (h * c - 8 / 73) + h ^ 2 * f + 49 / 60 / c * ((1 - h) * (1 - c) - h * f) =
      h * capBound (h * c) c (h * f / c) := by
    unfold capBound; field_simp; ring
  rw [e] at k1
  exact le_of_mul_le_mul_left k1 h0

/-- `𝒜(p, c, z) ≤ 𝒜(p, 1, z)` for `ρ ≤ p ≤ c ≤ 1`, `z ≥ 0`. -/
theorem capBound_c1 {p c z : ℝ} (hp : 49 / 60 ≤ p) (hpc : p ≤ c) (hc : c ≤ 1) (hz : 0 ≤ z) :
    capBound p c z ≤ capBound p 1 z := by
  have p0 : 0 < p := by linarith
  have c0 : 0 < c := by linarith
  have e : capBound p 1 z - capBound p c z =
      (1 - c) * (1 - 8 / 73 / p - 49 / 60 / p + 49 / 60 / c + z * (1 - 49 / 60 / p)) := by
    unfold capBound; field_simp; ring
  have b1 : 49 / 60 ≤ 49 / 60 / c := by rw [le_div_iff₀ c0]; nlinarith
  have b2 : 0 ≤ z * (1 - 49 / 60 / p) := by
    apply mul_nonneg hz; rw [sub_nonneg, div_le_one p0]; linarith
  have b3 : (8 / 73 + 49 / 60) / p ≤ (8 / 73 + 49 / 60) / (49 / 60) :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) hp
  have : 0 ≤ 1 - 8 / 73 / p - 49 / 60 / p + 49 / 60 / c + z * (1 - 49 / 60 / p) := by
    have e2 : 8 / 73 / p + 49 / 60 / p = (8 / 73 + 49 / 60) / p := by ring
    norm_num at b3 ⊢; nlinarith
  rw [← sub_nonneg, e]; exact mul_nonneg (by linarith) this

/-- **Claim** (`C1_TOP_CAP_COMMON_CELL:eq6`). In the common-cell placement (any pair-line case),
the cap cost `α = -[HFX]` satisfies `s ≤ α ≤ 𝒜(p, c, z)` (6), `p = hc`, `z = hf/c`, `s = 8/73`.
`hand/C1_TOP_CAP_COMMON_CELL.md`, lines 136-168.
Uses: C1_TOP_CAP_OF_SPLIT:claim-x-lt-c, C1_TOP_CAP_OF_SPLIT:eq1. -/
theorem eq6 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    8 / 73 ≤ -sarea (ptH h) (ptF f) X ∧
      -sarea (ptH h) (ptF f) X ≤ capBound (h * c) c (h * f / c) := by
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, k1, k2, kgt⟩ := cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  refine ⟨k1, ?_⟩
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have e1 : -sarea (ptH h) (ptF f) X = (1 - h) * X.1 + f * (h - X.2) := by
    simp only [sarea, ptH, ptF]; ring
  have e2 : sarea (ptC c) (ptD d) X = (1 - c) * X.2 + d * (c - X.1) := by
    simp only [sarea, ptC, ptD]; ring
  rw [e1]; rw [e2] at k2
  exact cap_bound_scal hd hdh h0 hh c0 hc (by nlinarith) (by nlinarith) hhf hxc (by linarith) k2

/-- **Theorem** (`C1_TOP_CAP_COMMON_CELL:Theorem-C`, first of the two "Theorems"). In the
common-cell placement, the line `LM` cannot isolate `C` from `O, H, F`.
`hand/C1_TOP_CAP_COMMON_CELL.md`, lines 42-44 and 170-207.
Uses: C1_TOP_CAP_COMMON_CELL:eq2-5, C1_TOP_CAP_COMMON_CELL:eq6. -/
theorem theorem_C {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    ¬ Isolates L M (ptC c) ptO (ptH h) (ptF f) := by
  intro hiso
  obtain ⟨-, -, -, -, h71, hz5⟩ := eq2_5 hS hiso
  obtain ⟨k1, k2⟩ := eq6 hS
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have hz0 : 0 ≤ h * f / c := div_nonneg (by nlinarith) c0.le
  have hpc : h * c ≤ c := by nlinarith
  have b1 := capBound_c1 (by linarith) hpc hc hz0
  set p := h * c
  set z := h * f / c
  have b2 : capBound p 1 z ≤ capBound p 1 (2 * p - 5 / 3) := by
    unfold capBound
    have : 0 ≤ 1 * (1 - 49 / 60 / p) := by
      rw [one_mul, sub_nonneg, div_le_one (by linarith)]; linarith
    nlinarith
  have b3 : capBound p 1 (2 * p - 5 / 3) < 8 / 73 := by
    have p0 : 0 < p := by linarith
    have e : p * (8 / 73 - capBound p 1 (2 * p - 5 / 3)) = -(p ^ 2 - 23 / 10 * p + 3289 / 2628) := by
      unfold capBound; field_simp; ring
    have q : p ^ 2 - 23 / 10 * p + 3289 / 2628 < 0 := by
      have hp1 : p ≤ 1 := by simp only [p]; nlinarith
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ p - 71 / 80 by linarith) (show (0 : ℝ) ≤ 1 - p by linarith)]
    have : 0 < p * (8 / 73 - capBound p 1 (2 * p - 5 / 3)) := by rw [e]; linarith
    linarith [pos_of_mul_pos_right this p0.le]
  linarith

/-- A lower point is below `HF`. -/
theorem fhl_pos {h c f : ℝ} {R : Point} (h0 : 0 < h) (c0 : 0 < c) (hf : 0 < f) (hh : h ≤ 1)
    (hR : InLower h c R) : 0 < sarea (ptF f) (ptH h) R := by
  obtain ⟨r1, r2, r3⟩ := hR
  have hHCF : 0 < sarea (ptH h) (ptC c) (ptF f) := by
    have e : sarea (ptH h) (ptC c) (ptF f) = c * (1 - h) + h * f := by
      simp only [sarea, ptH, ptC, ptF]; ring
    rw [e]; have := mul_nonneg c0.le (show (0 : ℝ) ≤ 1 - h by linarith)
    have := mul_pos h0 hf; linarith
  have e : sarea (ptF f) (ptH h) R * (h * c) =
      h * f * sarea (ptC c) (ptH h) R + sarea (ptH h) (ptC c) (ptF f) * sarea (ptH h) ptO R := by
    simp only [sarea, ptF, ptH, ptC, ptO]; ring
  have p1 := mul_pos (mul_pos h0 hf) r2
  have p2 := mul_pos hHCF r3
  have : 0 < sarea (ptF f) (ptH h) R * (h * c) := by rw [e]; linarith
  exact pos_of_mul_pos_left this (mul_pos h0 c0).le

/-- `F₁` of (9). -/
def capF1 (h p z v : ℝ) : ℝ := (v - 8 / 73) * (p - h * (8 / 73) - (1 + z) * v) - p * (8 / 73)

/-- `F₂` of (9). -/
def capF2 (h p z v : ℝ) : ℝ :=
  (v - 8 / 73) * ((1 - h + z) * (p - v) - h * (8 / 73)) - p * (8 / 73) * (1 - h)

/-- In the common cell, `[LMO] < 0` (the rays `OL`, `OM` are on the `H`- and `C`-sides of `OX`). -/
theorem cc_LMO {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    sarea L M ptO < 0 := by
  have hL := hS.L_OXH.1
  have hM := hS.M_OCX.2.2
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨hk, -, -, hfx, -, -, -, -, kgt⟩ := cc_facts hS
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  obtain ⟨hl0, -, -, -, -, -, -⟩ := low_pt h0 c0 hS.lowerL
  obtain ⟨hm0, -, -, -, -, -, -⟩ := low_pt h0 c0 hS.lowerM
  have hx0 : 0 < X.1 := by linarith
  have e1 : sarea ptO X L = X.1 * L.2 - X.2 * L.1 := by simp only [sarea, ptO]; ring
  have e2 : sarea X ptO M = M.1 * X.2 - M.2 * X.1 := by simp only [sarea, ptO]; ring
  have e3 : sarea L M ptO = L.1 * M.2 - L.2 * M.1 := by simp only [sarea, ptO]; ring
  rw [e1] at hL; rw [e2] at hM; rw [e3]
  have key : (L.1 * M.2 - L.2 * M.1) * X.1 =
      (L.1 * X.2 - L.2 * X.1) * M.1 + (X.1 * M.2 - X.2 * M.1) * L.1 := by ring
  have p1 := mul_pos (show (0 : ℝ) < -(L.1 * X.2 - L.2 * X.1) by linarith) hm0
  have p2 := mul_pos (show (0 : ℝ) < -(X.1 * M.2 - X.2 * M.1) by linarith) hl0
  have : (L.1 * M.2 - L.2 * M.1) * X.1 < 0 := by rw [key]; linarith
  by_contra hn; push Not at hn
  have := mul_nonneg hn hx0.le
  linarith

/-- (7)–(9) in scalar form, for `L = (ℓ, y)`, `M = (m, t)`. -/
theorem O_scal1 {h c f l y m t : ℝ} (h0 : 0 < h) (c0 : 0 < c) (hh1 : h ≤ 1) (hy0 : 0 < y)
    (hyh : y < h) (eC : 8 / 73 ≤ (c - l) * (y - t) - y * (m - l))
    (eH : 8 / 73 ≤ (h - y) * (m - l) - l * (y - t)) (hb : 0 < h * c - h * l - c * y)
    (hts : 8 / 73 ≤ c * t) (hFOL : 8 / 73 ≤ l - f * y)
    (hFHL : 8 / 73 ≤ h * f + (1 - h) * l - f * y) :
    8 / 73 < c * y ∧ 0 ≤ capF1 h (h * c) (h * f / c) (c * y) ∧
      0 ≤ capF2 h (h * c) (h * f / c) (c * y) := by
  have h7 : h * (8 / 73) ≤ (y - t) * (h * c - h * l - c * y) := by
    have k1 := mul_le_mul_of_nonneg_left eC (show (0 : ℝ) ≤ h - y by linarith)
    have k2 := mul_le_mul_of_nonneg_left eH hy0.le
    linarith
  have h8 : h * c * (8 / 73) ≤ (c * y - 8 / 73) * (h * c - h * l - c * y) := by
    have k1 := mul_le_mul_of_nonneg_left h7 c0.le
    have k2 : c * (y - t) ≤ c * y - 8 / 73 := by linarith
    have k3 := mul_le_mul_of_nonneg_right k2 hb.le
    linarith
  have hv : 8 / 73 < c * y := by
    by_contra hn; push Not at hn
    have := mul_nonpos_of_nonpos_of_nonneg (show c * y - 8 / 73 ≤ 0 by linarith) hb.le
    have := mul_pos (mul_pos h0 c0) (show (0 : ℝ) < 8 / 73 by norm_num)
    linarith
  have ez : h * f / c * (c * y) = h * f * y := by field_simp
  have ez2 : h * f / c * (h * c) = h * (h * f) := by field_simp
  refine ⟨hv, ?_, ?_⟩
  · unfold capF1
    have k1 : h * (8 / 73) + h * f / c * (c * y) ≤ h * l := by
      have := mul_le_mul_of_nonneg_left hFOL h0.le; rw [ez]; linarith
    have k2 := mul_le_mul_of_nonneg_left (show h * c - h * l - c * y ≤
      h * c - h * (8 / 73) - (1 + h * f / c) * (c * y) by linarith)
      (show (0 : ℝ) ≤ c * y - 8 / 73 by linarith)
    linarith
  · unfold capF2
    have k1 : h * (8 / 73) - h * f / c * (h * c) + h * f / c * (c * y) ≤ (1 - h) * (h * l) := by
      have := mul_le_mul_of_nonneg_left hFHL h0.le; rw [ez, ez2]; linarith
    have k2 := mul_le_mul_of_nonneg_left h8 (show (0 : ℝ) ≤ 1 - h by linarith)
    have k3 := mul_le_mul_of_nonneg_left (show (1 - h) * (h * c - h * l - c * y) ≤
      (1 - h + h * f / c) * (h * c - c * y) - h * (8 / 73) by nlinarith)
      (show (0 : ℝ) ≤ c * y - 8 / 73 by linarith)
    linarith

/-- The point inequalities (7)–(9) when `LM` isolates `O`. -/
theorem O_geom {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hiso : Isolates L M ptO (ptC c) (ptH h) (ptF f)) :
    8 / 73 < c * L.2 ∧ 0 ≤ capF1 h (h * c) (h * f / c) (c * L.2) ∧
      0 ≤ capF2 h (h * c) (h * f / c) (c * L.2) := by
  have hO := cc_LMO hS
  obtain ⟨i1, i2, i3⟩ := hiso
  unfold OppSide at i1; unfold SameSide at i2 i3
  have hC : 0 < sarea L M (ptC c) := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hO.le hn]
  have hH : 0 < sarea L M (ptH h) := by
    by_contra hn; push Not at hn; nlinarith [mul_nonpos_of_nonneg_of_nonpos hC.le hn]
  have eC : 8 / 73 ≤ sarea L M (ptC c) := ar_pos (ar hS.competitive 5 6 1) hC.le
  have eH : 8 / 73 ≤ sarea L M (ptH h) := ar_pos (ar hS.competitive 5 6 4) hH.le
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  obtain ⟨hl0, hy0, hyh, -, -, qL2, -⟩ := low_pt h0 c0 hS.lowerL
  have eOCM : 8 / 73 ≤ sarea ptO (ptC c) M := ar_pos (ar hS.competitive 0 1 6) hS.lowerM.1.le
  have qM1 : sarea ptO (ptC c) M = c * M.2 := by simp only [sarea, ptO, ptC]; ring
  rw [qM1] at eOCM
  have hFOL : 8 / 73 ≤ L.1 - f * L.2 := by
    have e : 8 / 73 ≤ sarea (ptF f) ptO L := ar_pos (ar hS.competitive 3 0 5) hS.L_OCF.2.2.le
    have q : sarea (ptF f) ptO L = L.1 - f * L.2 := by simp only [sarea, ptF, ptO]; ring
    rwa [q] at e
  have hFHL : 8 / 73 ≤ h * f + (1 - h) * L.1 - f * L.2 := by
    have pos : 0 < sarea (ptF f) (ptH h) L := fhl_pos h0 c0 hf hh hS.lowerL
    have e : 8 / 73 ≤ sarea (ptF f) (ptH h) L := ar_pos (ar hS.competitive 3 4 5) pos.le
    have q : sarea (ptF f) (ptH h) L = h * f + (1 - h) * L.1 - f * L.2 := by
      simp only [sarea, ptF, ptH]; ring
    rwa [q] at e
  have qC : sarea L M (ptC c) = (c - L.1) * (L.2 - M.2) - L.2 * (M.1 - L.1) := by
    simp only [sarea, ptC]; ring
  have qH : sarea L M (ptH h) = (h - L.2) * (M.1 - L.1) - L.1 * (L.2 - M.2) := by
    simp only [sarea, ptH]; ring
  rw [qC] at eC; rw [qH] at eH
  have hb : 0 < h * c - h * L.1 - c * L.2 := by
    have := hS.lowerL.2.1; rw [qL2] at this; linarith
  exact O_scal1 h0 c0 hh hy0 hyh eC eH hb eOCM hFOL hFHL

section quartics
open Cert Cert.Expr

/-- `P₁` and `P₂` of §4 as expressions in `var 0 = p`. -/
def eP1 : Expr := k 2131600 * v 0 * v 0 * v 0 * v 0 - k 5837080 * v 0 * v 0 * v 0 +
  k 5365281 * v 0 * v 0 - k 1692432 * v 0 + k 33856
def eP2 : Expr := k 17515357200 * v 0 * v 0 * v 0 * v 0 - k 79495677240 * v 0 * v 0 * v 0 +
  k 98117240305 * v 0 * v 0 - k 37399223344 * v 0 + k 613850176

theorem P1_check : bernsteinBoxCheck (0 - eP1) [(49 / 60, 89 / 100)] [4] 1 = true := by
  decide +kernel
theorem P2_check : bernsteinBoxCheck (0 - eP2) [(89 / 100, 1)] [4] 1 = true := by
  decide +kernel

theorem P1_neg {p : ℝ} (h1 : 49 / 60 ≤ p) (h2 : p ≤ 89 / 100) :
    2131600 * p ^ 4 - 5837080 * p ^ 3 + 5365281 * p ^ 2 - 1692432 * p + 33856 < 0 := by
  have := bernsteinBoxCheck_sound P1_check (pointOf [p]) (pointOf_box _ _
    (.cons ⟨by push_cast; linarith, by push_cast; linarith⟩ .nil))
  simp only [eP1, eval_minus, eval_plus, eval_times, eval_k, eval_v, eval_zero,
    pointOf_zero] at this
  push_cast at this; nlinarith

theorem P2_neg {p : ℝ} (h1 : 89 / 100 ≤ p) (h2 : p ≤ 1) :
    17515357200 * p ^ 4 - 79495677240 * p ^ 3 + 98117240305 * p ^ 2 - 37399223344 * p +
      613850176 < 0 := by
  have := bernsteinBoxCheck_sound P2_check (pointOf [p]) (pointOf_box _ _
    (.cons ⟨by push_cast; linarith, by push_cast; linarith⟩ .nil))
  simp only [eP2, eval_minus, eval_plus, eval_times, eval_k, eval_v, eval_zero,
    pointOf_zero] at this
  push_cast at this; nlinarith

end quartics

/-- The low interval `p ≤ 89/100` of §4. -/
theorem O_low {p z : ℝ} (hp : 49 / 60 ≤ p) (hpl : p ≤ 89 / 100)
    (hB1p : 0 < p - 8 / 73 * (1 + p + z))
    (hG1 : 0 ≤ (p - 8 / 73 * (1 + p + z)) ^ 2 - 4 * (8 / 73) * p * (1 + z))
    (hB2p : 0 < (1 - p + z) * (p - 8 / 73) - p * (8 / 73))
    (hG2 : 0 ≤ ((1 - p + z) * (p - 8 / 73) - p * (8 / 73)) ^ 2 -
      4 * (1 - p + z) * p * (8 / 73) * (1 - p)) : False := by
  have hp0 : 0 < p := by linarith
  have hz3 : 3 / 20 < z := by
    by_contra hn; push Not at hn
    set x0 : ℝ := p * (8 / 73) / (p - 8 / 73)
    have hps : 0 < p - 8 / 73 := by linarith
    have hx0 : x0 < 1 - p + z := by
      simp only [x0]; rw [div_lt_iff₀ hps]; linarith
    have hx0p : 0 < x0 := by simp only [x0]; positivity
    have q0 : (p - 8 / 73) ^ 2 * x0 ^ 2 +
        (-(2 * p * (8 / 73) * (p - 8 / 73)) - 4 * p * (8 / 73) * (1 - p)) * x0 +
        (p * (8 / 73)) ^ 2 < 0 := by
      have hne : p * 73 - 8 ≠ 0 := ne_of_gt (by linarith)
      have e : (p - 8 / 73) * x0 = p * (8 / 73) := by simp only [x0]; field_simp
      have e2 : (p - 8 / 73) ^ 2 * x0 ^ 2 +
          (-(2 * p * (8 / 73) * (p - 8 / 73)) - 4 * p * (8 / 73) * (1 - p)) * x0 +
          (p * (8 / 73)) ^ 2 = ((p - 8 / 73) * x0 - p * (8 / 73)) ^ 2 -
            4 * p * (8 / 73) * (1 - p) * x0 := by ring
      rw [e2, e]
      have : 0 < 1 - p := by linarith
      have := mul_pos (mul_pos (mul_pos hp0 this) (show (0 : ℝ) < 8 / 73 by norm_num)) hx0p
      nlinarith
    have q : 0 ≤ (p - 8 / 73) ^ 2 * (1 - p + z) ^ 2 +
        (-(2 * p * (8 / 73) * (p - 8 / 73)) - 4 * p * (8 / 73) * (1 - p)) * (1 - p + z) +
        (p * (8 / 73)) ^ 2 := by nlinarith
    have := quad_up (sq_nonneg _) hx0 (show 1 - p + z ≤ 1 - p + 3 / 20 by linarith) q0 q
    have := P1_neg hp hpl
    nlinarith
  have hB1' : 0 < (1 - 8 / 73) * p - 8 / 73 * (1 + 3 / 20) := by nlinarith
  have hG1' : 0 ≤ ((1 - 8 / 73) * p - 8 / 73 * (1 + 3 / 20)) ^ 2 -
      4 * (8 / 73) * p * (1 + 3 / 20) := by
    have := mul_nonneg (show (0 : ℝ) ≤ 8 / 73 * (z - 3 / 20) by linarith)
      (show (0 : ℝ) ≤ ((1 - 8 / 73) * p - 8 / 73 * (1 + 3 / 20)) +
        (p - 8 / 73 * (1 + p + z)) by linarith)
    have := mul_nonneg hp0.le (show (0 : ℝ) ≤ z - 3 / 20 by linarith)
    nlinarith
  set y0 : ℝ := 8 / 73 * (1 + 3 / 20) / (1 - 8 / 73)
  have hy0 : y0 < p := by simp only [y0]; rw [div_lt_iff₀ (by norm_num)]; linarith
  have r0 : (1 - 8 / 73) ^ 2 * y0 ^ 2 + (-(2 * (1 - 8 / 73) * (8 / 73) * (1 + 3 / 20)) -
      4 * (8 / 73) * (1 + 3 / 20)) * y0 + (8 / 73 * (1 + 3 / 20)) ^ 2 < 0 := by
    simp only [y0]; norm_num
  have r : 0 ≤ (1 - 8 / 73) ^ 2 * p ^ 2 + (-(2 * (1 - 8 / 73) * (8 / 73) * (1 + 3 / 20)) -
      4 * (8 / 73) * (1 + 3 / 20)) * p + (8 / 73 * (1 + 3 / 20)) ^ 2 := by nlinarith
  have := quad_up (sq_nonneg _) hy0 hpl r0 r
  norm_num at this

/-- The high interval `p ≥ 89/100` of §4. -/
theorem O_high {p z : ℝ} (hpl : 89 / 100 ≤ p) (hp1 : p ≤ 1)
    (hB1p : 0 < p - 8 / 73 * (1 + p + z))
    (hG1 : 0 ≤ (p - 8 / 73 * (1 + p + z)) ^ 2 - 4 * (8 / 73) * p * (1 + z))
    (h11 : 8 / 73 ≤ capBound p 1 z) : False := by
  have hp0 : 0 < p := by linarith
  have hpρ : 0 < p - 49 / 60 := by linarith
  have hq : (p ^ 2 - p + 8 / 73) / (p - 49 / 60) ≤ z := by
    rw [div_le_iff₀ hpρ]
    unfold capBound at h11
    have e : (1 - p) * (1 - 8 / 73 / p + 49 / 60 * (1 - 1) / (1 * p)) + z * 1 * (1 - 49 / 60 / p) =
        ((1 - p) * (p - 8 / 73) + z * (p - 49 / 60)) / p := by field_simp; ring
    rw [e, le_div_iff₀ hp0] at h11
    nlinarith
  set q := (p ^ 2 - p + 8 / 73) / (p - 49 / 60) with hqd
  have hB1q : 0 < p - 8 / 73 * (1 + p + q) := by nlinarith
  have hG1q : 0 ≤ (p - 8 / 73 * (1 + p + q)) ^ 2 - 4 * (8 / 73) * p * (1 + q) := by
    have := mul_nonneg (show (0 : ℝ) ≤ 8 / 73 * (z - q) by linarith)
      (show (0 : ℝ) ≤ (p - 8 / 73 * (1 + p + q)) + (p - 8 / 73 * (1 + p + z)) by linarith)
    have := mul_nonneg hp0.le (show (0 : ℝ) ≤ z - q by linarith)
    nlinarith
  have e : 102233667600 * (p - 49 / 60) ^ 2 * ((p - 8 / 73 * (1 + p + q)) ^ 2 -
      4 * (8 / 73) * p * (1 + q)) = 17515357200 * p ^ 4 - 79495677240 * p ^ 3 +
        98117240305 * p ^ 2 - 37399223344 * p + 613850176 := by
    have hne : -49 + p * 60 ≠ 0 := ne_of_gt (by linarith)
    have hne' : p * 60 - 49 ≠ 0 := ne_of_gt (by linarith)
    have hne'' : p - 49 / 60 ≠ 0 := ne_of_gt (by linarith)
    simp only [hqd]; field_simp; ring
  have := P2_neg hpl hp1
  have : 0 ≤ 102233667600 * (p - 49 / 60) ^ 2 * ((p - 8 / 73 * (1 + p + q)) ^ 2 -
      4 * (8 / 73) * p * (1 + q)) := by positivity
  linarith

/-- §§3–4 in scalar form: the relaxed system (10)–(11) has no solution. -/
theorem O_scalar {p z v : ℝ} (hp : 49 / 60 ≤ p) (hp1 : p ≤ 1) (hz : 8 / 73 ≤ z) (hv : 8 / 73 < v)
    (F1 : 0 ≤ capF1 p p z v) (F2 : 0 ≤ capF2 p p z v) (h11 : 8 / 73 ≤ capBound p 1 z) : False := by
  unfold capF1 at F1; unfold capF2 at F2
  have hp0 : 0 < p := by linarith
  have w0 : 0 < v - 8 / 73 := by linarith
  have e1 : (v - 8 / 73) * (p - p * (8 / 73) - (1 + z) * v) - p * (8 / 73) =
      (v - 8 / 73) * ((p - 8 / 73 * (1 + p + z)) - (1 + z) * (v - 8 / 73)) - p * (8 / 73) := by
    ring
  have e2 : (v - 8 / 73) * ((1 - p + z) * (p - v) - p * (8 / 73)) - p * (8 / 73) * (1 - p) =
      (v - 8 / 73) * (((1 - p + z) * (p - 8 / 73) - p * (8 / 73)) - (1 - p + z) * (v - 8 / 73)) -
        p * (8 / 73) * (1 - p) := by ring
  rw [e1] at F1; rw [e2] at F2
  have hB1p : 0 < p - 8 / 73 * (1 + p + z) := by
    by_contra hn; push Not at hn
    have := mul_pos (show (0 : ℝ) < 1 + z by linarith) w0
    have := mul_nonpos_of_nonneg_of_nonpos w0.le
      (show (p - 8 / 73 * (1 + p + z)) - (1 + z) * (v - 8 / 73) ≤ 0 by linarith)
    nlinarith
  have hG1 : 0 ≤ (p - 8 / 73 * (1 + p + z)) ^ 2 - 4 * (8 / 73) * p * (1 + z) := by
    nlinarith [sq_nonneg ((p - 8 / 73 * (1 + p + z)) - 2 * (1 + z) * (v - 8 / 73))]
  rcases le_total p (89 / 100) with hpl | hpl
  · have ha2p : 0 < 1 - p + z := by linarith
    have hB2p : 0 < (1 - p + z) * (p - 8 / 73) - p * (8 / 73) := by
      by_contra hn; push Not at hn
      have := mul_pos ha2p w0
      have : (v - 8 / 73) * (((1 - p + z) * (p - 8 / 73) - p * (8 / 73)) -
          (1 - p + z) * (v - 8 / 73)) < 0 := mul_neg_of_pos_of_neg w0 (by nlinarith)
      nlinarith [mul_nonneg (mul_nonneg hp0.le (show (0 : ℝ) ≤ 8 / 73 by norm_num))
        (show (0 : ℝ) ≤ 1 - p by linarith)]
    have hG2 : 0 ≤ ((1 - p + z) * (p - 8 / 73) - p * (8 / 73)) ^ 2 -
        4 * (1 - p + z) * p * (8 / 73) * (1 - p) := by
      nlinarith [sq_nonneg (((1 - p + z) * (p - 8 / 73) - p * (8 / 73)) -
        2 * (1 - p + z) * (v - 8 / 73))]
    exact O_low hp hpl hB1p hG1 hB2p hG2
  · exact O_high hpl hp1 hB1p hG1 h11

/-- **Theorem** (`C1_TOP_CAP_COMMON_CELL:Theorem-O`, second of the two "Theorems"). In the
common-cell placement, the line `LM` cannot isolate `O` from `C, H, F`.
`hand/C1_TOP_CAP_COMMON_CELL.md`, lines 42-44 and 209-419 (inequalities (7)–(11), the monotone
reduction to `h = p`, `c = 1`, and the quartics `P₁, P₂` on `[ρ, 89/100]` and `[89/100, 1]`).
Uses: C1_TOP_CAP_COMMON_CELL:eq6, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c. -/
theorem theorem_O {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    ¬ Isolates L M ptO (ptC c) (ptH h) (ptF f) := by
  intro hiso
  obtain ⟨hv, F1, F2⟩ := O_geom hS hiso
  obtain ⟨k1, k2⟩ := eq6 hS
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have hz : 8 / 73 ≤ h * f / c := by rw [le_div_iff₀ c0]; nlinarith
  have hpc : h * c ≤ c := by nlinarith
  have hph : h * c ≤ h := by nlinarith
  have b1 := capBound_c1 (by linarith) hpc hc (by linarith)
  set p := h * c
  set z := h * f / c
  set v := c * L.2
  -- decrease `h` to `p`
  have G1 : 0 ≤ capF1 p p z v := by
    have e : capF1 p p z v - capF1 h p z v = 8 / 73 * (v - 8 / 73) * (h - p) := by
      unfold capF1; ring
    have := mul_nonneg (mul_nonneg (show (0 : ℝ) ≤ 8 / 73 by norm_num)
      (show (0 : ℝ) ≤ v - 8 / 73 by linarith)) (show (0 : ℝ) ≤ h - p by linarith)
    linarith
  have G2 : 0 ≤ capF2 p p z v := by
    have hF0 : 0 ≤ (v - 8 / 73) * (p - v) - p * (8 / 73) := by
      unfold capF1 at F1
      have := mul_nonneg (show (0 : ℝ) ≤ v - 8 / 73 by linarith)
        (show (0 : ℝ) ≤ h * (8 / 73) + z * v by
          have := mul_nonneg (show (0 : ℝ) ≤ z by linarith) (show (0 : ℝ) ≤ v by linarith)
          nlinarith)
      nlinarith
    have e : capF2 p p z v - capF2 h p z v =
        (h - p) * ((v - 8 / 73) * (p - v) - p * (8 / 73) + 8 / 73 * (v - 8 / 73)) := by
      unfold capF2; ring
    have := mul_nonneg (show (0 : ℝ) ≤ h - p by linarith)
      (show (0 : ℝ) ≤ (v - 8 / 73) * (p - v) - p * (8 / 73) + 8 / 73 * (v - 8 / 73) by nlinarith)
    linarith
  exact O_scalar (by linarith) (by simp only [p]; nlinarith) hz hv G1 G2 (by linarith)

end Heilbronn.C1TopCapCommonCell
