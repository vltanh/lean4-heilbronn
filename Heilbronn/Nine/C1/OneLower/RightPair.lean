module

public import Heilbronn.Nine.C1.OneLower.TopCap
public import Heilbronn.Nine.C1.OneLower.RightPairTrees

/-! # One lower C1 point excludes a pair in the right cap (`docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses
Theorem 1 for the occupancy rows `(U, R, T, L_cap) = (1, 2, 0, 0)` ("upper row") and
`(0, 2, 1, 0)` ("top row").

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1` and `f ≤ d` ((1); arranged by
transposing the square), minimum triangle area at least `A₀`. If the right cap contains two free
points, Lemma 1 of `C1_ZERO_LOWER.md` names them `X` (outer) and `Y` (inner, `Y ∈ CDX ∩ ODX`); `L`
is the lower point and `Q` the remaining free point. The configuration is
`c1Config h c d f X Y L Q` (the checker's vertex order `O, C, D, F, H, X, Y, L, Q`), and the
five-anchor words are those of `C1_ZERO_LOWER.md` (11)–(12) (`Heilbronn.Nine.C1.HasWord`). Thresholds
`s = 8/73`, `ρ = 49/60`.

**Results.**
* `theorem1` (`C1_ONE_LOWER_RIGHT_PAIR:Theorem1`): the right cap contains at most one free point.
* `eq2` (Lemma 1 of the zero-lower note), `eq3` (the two rows; FLAG: citation), `claim_fan`,
  `eq4`–`eq6`, `eq7` (seven word cases), `eq8`, `eq9_10` (the certificate package).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerRightPair

open Heilbronn.Nine.C1
open Heilbronn.Nine.C1OneLowerTopCap (AtMostInside)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### Section 1: only two geometric rows remain -/

/-- Two free points `X, Y` in the right cap (in the square), the lower point `L ∈ OHC`, and a
fourth free point `Q` of the square not in `OHC` (exactly one lower point); C1 anchors with
`f ≤ d` and minimum triangle area at least `A₀` for `c1Config h c d f X Y L Q`. -/
structure TwoRight (h c d f : ℝ) (X Y L Q : Point) : Prop where
  anchors : C1Anchors h c d f
  f_le_d : f ≤ d
  min : A₀ ≤ minTriangleArea (c1Config h c d f X Y L Q)
  lower : InLower h c L
  rightX : InRightCap c d X
  rightXSq : X ∈ unitSquare
  rightY : InRightCap c d Y
  rightYSq : Y ∈ unitSquare
  sqQ : Q ∈ unitSquare
  notLowerQ : ¬ InLower h c Q

/-- The named right pair: `TwoRight` with `X` the outer and `Y` the inner point,
`Y ∈ CDX ∩ ODX` (counterclockwise `C, X, D` and `O, X, D`). -/
structure Row (h c d f : ℝ) (X Y L Q : Point) : Prop extends TwoRight h c d f X Y L Q where
  innerCDX : InTriangle Y (ptC c) X (ptD d)
  innerODX : InTriangle Y ptO X (ptD d)

open C1ZeroLower (Comp cfg cfg_free WordAt)

/-- A point strictly inside `OHC` lies in the square. -/
theorem lower_sq {h c d f : ℝ} (hA : C1Anchors h c d f) {L : Point} (hL : InLower h c L) :
    L ∈ unitSquare := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨l1, l2, l3⟩ := hL
  simp only [ptO, ptC, ptH, sarea] at l1 l2 l3
  refine ⟨?_, ?_, ?_, ?_⟩ <;> nlinarith

/-- A right-cap point of the square lies strictly below `OD`. -/
theorem below_of_right {h c d f : ℝ} (hA : C1Anchors h c d f) {P : Point} (hP : P ∈ unitSquare)
    (hR : InRightCap c d P) : sarea ptO (ptD d) P < 0 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨x0, x1, y0, y1⟩ := hP
  unfold InRightCap at hR
  simp only [ptO, ptC, ptD, sarea] at hR ⊢
  nlinarith [mul_nonneg (mul_nonneg hd.le (show (0:ℝ) ≤ c by linarith)) (sub_nonneg.2 x1),
    sub_pos.2 hc]

/-- The labelled free points `X, Y, L, Q` of a pair placement form a competitive configuration. -/
theorem TwoRight.comp {h c d f : ℝ} {X Y L Q : Point} (hS : TwoRight h c d f X Y L Q) :
    Comp h c d f ![X, Y, L, Q] := by
  refine ⟨hS.anchors, fun i => ?_, hS.min⟩
  fin_cases i
  exacts [hS.rightXSq, hS.rightYSq, lower_sq hS.anchors hS.lower, hS.sqQ]

/-- A nonzero area from the least area. -/
theorem area_ne {h c d f : ℝ} {Q4 : Fin 4 → Point} (H : Comp h c d f Q4) {u v w : ℕ} (hu : u < 9)
    (hv : v < 9) (hw : w < 9) (huv : u ≠ v) (hvw : v ≠ w) (huw : u ≠ w) :
    sarea (cfg h c d f Q4 u) (cfg h c d f Q4 v) (cfg h c d f Q4 w) ≠ 0 := by
  intro h0
  have := H.area u v w hu hv hw huv hvw huw
  rw [h0, abs_zero] at this; linarith [A₀_pos]

section

variable {h c d f : ℝ} {X Y L Q : Point}

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(2)`). Lemma 1 of `C1_ZERO_LOWER.md` (which does not need
the zero-lower hypothesis): of two right-cap points one, `Y`, lies strictly in `CDX ∩ ODX`, where
`X` is the other; moreover `d, h ≥ ρ`, `c, f ≤ 1 - 3s`, `d(1-c) ≥ 3s`.
`docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 40-49. Uses: C1_ZERO_LOWER:Lemma1. -/
theorem eq2 (hS : TwoRight h c d f X Y L Q) :
    ((InTriangle Y (ptC c) X (ptD d) ∧ InTriangle Y ptO X (ptD d)) ∨
        (InTriangle X (ptC c) Y (ptD d) ∧ InTriangle X ptO Y (ptD d))) ∧
      ρ ≤ d ∧ ρ ≤ h ∧ c ≤ 1 - 3 * s ∧ f ≤ 1 - 3 * s ∧ 3 * s ≤ d * (1 - c) := by
  have H := hS.comp
  have hX := below_of_right hS.anchors hS.rightXSq hS.rightX
  have hY := below_of_right hS.anchors hS.rightYSq hS.rightY
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨k1, k2⟩ := H.right_pair_bounds (i := 0) (j := 1) (by decide) hS.rightX hS.rightY hX hY
  have t := C1ZeroLower.two_A₀
  have hne : sarea (1, d) X Y ≠ 0 := area_ne H (u := 2) (v := 5) (w := 6) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  have hc3 : c ≤ 1 - 3 * s := by
    nlinarith [mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith) (sub_nonneg.2 hc.le)]
  refine ⟨?_, k1, k1.trans hdh, hc3, by linarith, by linarith⟩
  rcases hne.lt_or_gt with hD | hD
  · obtain ⟨a1, a2, a3, a4, -⟩ := H.right_pair_core (i := 0) (j := 1) (by decide) hS.rightX
      hS.rightY hX hY hD
    left
    refine ⟨⟨a2, a3, a1⟩, ⟨a4, a3, ?_⟩⟩
    have := sarea_swap₁₂ ptO (ptD d) Y; simp only [ptO, ptD] at this hY ⊢; linarith
  · have hD' : sarea (1, d) Y X < 0 := by rw [sarea_swap₂₃]; linarith
    obtain ⟨a1, a2, a3, a4, -⟩ := H.right_pair_core (i := 1) (j := 0) (by decide) hS.rightY
      hS.rightX hY hX hD'
    right
    refine ⟨⟨a2, a3, a1⟩, ⟨a4, a3, ?_⟩⟩
    have := sarea_swap₁₂ ptO (ptD d) X; simp only [ptO, ptD] at this hX ⊢; linarith

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(3)`). The left cap is empty and the right cap has no third
point, so `Q` lies in `HCDF` (upper row) or in the top cap `DF(1,1) \ DF` (top row).
FLAG (citation, lines 52-54): "the right cap cannot contain a third point" is attributed to
Theorem 2 of `C1_ZERO_LOWER.md`; it is the unnumbered claim after its Lemma 1 (lines 104-110,
via `TYPE_II_COMPLETION:Theorem1`). The left cap is empty by its Theorem 2.2.
`docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 51-62.
Uses: C1_ZERO_LOWER:Theorem2, C1_ZERO_LOWER:claim-side-cap-capacity. -/
theorem eq3 (hS : Row h c d f X Y L Q) : InUpperQuad h c d f Q ∨ InTopCap d f Q := by
  have H := hS.comp
  have hX := below_of_right hS.anchors hS.rightXSq hS.rightX
  have hY := below_of_right hS.anchors hS.rightYSq hS.rightY
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨q0, q1, q2, q3⟩ := hS.sqQ
  have ne : ∀ u v : ℕ, u < 5 → v < 5 → u ≠ v →
      sarea (cfg h c d f ![X, Y, L, Q] u) (cfg h c d f ![X, Y, L, Q] v) Q ≠ 0 := fun u v hu hv huv =>
    area_ne H (w := 8) (by omega) (by omega) (by norm_num) huv (by omega) (by omega)
  have n01 := ne 0 1 (by norm_num) (by norm_num) (by norm_num)
  have n04 := ne 0 4 (by norm_num) (by norm_num) (by norm_num)
  have n14 := ne 1 4 (by norm_num) (by norm_num) (by norm_num)
  have n12 := ne 1 2 (by norm_num) (by norm_num) (by norm_num)
  have n23 := ne 2 3 (by norm_num) (by norm_num) (by norm_num)
  have n34 := ne 3 4 (by norm_num) (by norm_num) (by norm_num)
  simp only [cfg] at n01 n04 n14 n12 n23 n34
  have hHC : 0 < sarea (ptH h) (ptC c) Q := by
    have s01 : 0 < sarea (0, 0) (c, 0) Q := by
      have : 0 ≤ sarea (0, 0) (c, 0) Q := by simp only [sarea]; nlinarith
      exact lt_of_le_of_ne this (Ne.symm n01)
    have s40 : 0 < sarea (0, h) (0, 0) Q := by
      have : 0 ≤ sarea (0, h) (0, 0) Q := by simp only [sarea]; nlinarith
      exact lt_of_le_of_ne this (by rw [sarea_swap₁₂]; exact neg_ne_zero.2 n04 |>.symm)
    have : ¬ 0 < sarea (c, 0) (0, h) Q := fun hp => hS.notLowerQ ⟨s01, hp, s40⟩
    have := lt_of_le_of_ne (not_lt.1 this) n14
    rw [show ptH h = (0, h) from rfl, show ptC c = (c, 0) from rfl, sarea_swap₁₂]; linarith
  by_cases hR : sarea (c, 0) (1, d) Q < 0
  · exact absurd (below_of_right hS.anchors hS.sqQ hR)
      (fun hQ => H.fan_below (i := 0) (j := 1) (l := 3) (by decide) (by decide) (by decide) hX hY hQ)
  by_cases hL : sarea (f, 1) (0, h) Q < 0
  · exfalso
    obtain ⟨k1, k2⟩ := H.right_pair_bounds (i := 0) (j := 1) (by decide) hS.rightX hS.rightY hX hY
    obtain ⟨l1, -, -, -, -, -, -⟩ := H.left_row hS.f_le_d 3 hL
    have hA0 := A₀_bounds
    have hc' : c ≤ 1 - 6 * A₀ := by
      nlinarith [mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith) (sub_nonneg.2 hc.le)]
    have hh' : h * (1 - h) ≤ 49 / 60 * (11 / 60) := by nlinarith
    have : f * (h * (1 - h)) ≤ (1 - 6 * A₀) * (49 / 60 * (11 / 60)) :=
      mul_le_mul (by linarith) hh' (by nlinarith) (by linarith)
    nlinarith
  by_cases hT : sarea (1, d) (f, 1) Q < 0
  · exact Or.inr hT
  left
  exact ⟨hHC, lt_of_le_of_ne (not_lt.1 hR) (Ne.symm n12), lt_of_le_of_ne (not_lt.1 hT) (Ne.symm n23),
    lt_of_le_of_ne (not_lt.1 hL) (Ne.symm n34)⟩

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:claim-fan`). The two right-cap points fill the below-`OD`
fan capacity ((4) of `C1_ZERO_LOWER.md`), so `L` and `Q` lie strictly above `OD`.
`docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 64-66. Uses: C1_ZERO_LOWER:eq4. -/
theorem claim_fan (hS : Row h c d f X Y L Q) :
    0 < sarea ptO (ptD d) L ∧ 0 < sarea ptO (ptD d) Q := by
  have H := hS.comp
  have hX := below_of_right hS.anchors hS.rightXSq hS.rightX
  have hY := below_of_right hS.anchors hS.rightYSq hS.rightY
  constructor
  · by_contra hn; push Not at hn
    have hne := area_ne H (u := 0) (v := 2) (w := 7) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
    exact H.fan_below (i := 0) (j := 1) (l := 2) (by decide) (by decide) (by decide) hX hY
      (lt_of_le_of_ne hn hne)
  · by_contra hn; push Not at hn
    have hne := area_ne H (u := 0) (v := 2) (w := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
    exact H.fan_below (i := 0) (j := 1) (l := 3) (by decide) (by decide) (by decide) hX hY
      (lt_of_le_of_ne hn hne)

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(4)`). `[HDF] ≤ 1 - d ≤ 1 - ρ < 3s`, so `HDF` contains no
free point; `[OFH] = hf ≤ f ≤ 1 - 3s < ρ`, so `OFH` has capacity one; in the upper row `Q` lies in
`HCD`. `docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 68-77.
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2), CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq4 (hS : Row h c d f X Y L Q) :
    sarea (ptD d) (ptF f) (ptH h) ≤ 1 - d ∧ 1 - ρ < 3 * s ∧
      (∀ i, ¬ InTriangle (freePt X Y L Q i) (ptD d) (ptF f) (ptH h)) ∧
      sarea ptO (ptF f) (ptH h) ≤ 1 - 3 * s ∧
      AtMostInside 1 ptO (ptF f) (ptH h) (freePt X Y L Q) ∧
      (InUpperQuad h c d f Q → InTriangle Q (ptH h) (ptC c) (ptD d)) := by
  have H := hS.comp
  obtain ⟨-, hrd, -, hc3, hf3, -⟩ := eq2 hS.toTwoRight
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have t := C1ZeroLower.two_A₀
  have hDFH : sarea (ptD d) (ptF f) (ptH h) ≤ 1 - d := by
    simp only [ptD, ptF, ptH, sarea]; nlinarith [mul_nonneg (sub_nonneg.2 hf.le) (sub_nonneg.2 hdh)]
  have hOFH : sarea ptO (ptF f) (ptH h) ≤ 1 - 3 * s := by
    simp only [ptO, ptF, ptH, sarea]; nlinarith
  have noDFH : ∀ i : Fin 4, ¬ InTriangle (freePt X Y L Q i) (ptD d) (ptF f) (ptH h) := by
    intro i ⟨p1, p2, p3⟩
    have e1 := H.area 2 3 (i.val + 5) (by norm_num) (by norm_num) (by omega) (by norm_num)
      (by omega) (by omega)
    have e2 := H.area 3 4 (i.val + 5) (by norm_num) (by norm_num) (by omega) (by norm_num)
      (by omega) (by omega)
    have e3 := H.area 4 2 (i.val + 5) (by norm_num) (by norm_num) (by omega) (by norm_num)
      (by omega) (by omega)
    rw [cfg_free] at e1 e2 e3
    have hfp : freePt X Y L Q i = ![X, Y, L, Q] i := rfl
    rw [hfp] at p1 p2 p3
    simp only [cfg] at e1 e2 e3
    simp only [ptD, ptF, ptH] at p1 p2 p3
    rw [abs_of_pos p1] at e1; rw [abs_of_pos p2] at e2; rw [abs_of_pos p3] at e3
    have := sarea_add_sarea_add_sarea (ptD d) (ptF f) (ptH h) (![X, Y, L, Q] i)
    simp only [ptD, ptF, ptH] at this hDFH
    linarith
  refine ⟨hDFH, by norm_num, noDFH, hOFH, ?_, ?_⟩
  · intro S hS'
    by_contra hn; push Not at hn
    obtain ⟨a, ha, b, hb, hab⟩ := Finset.one_lt_card.1 hn
    have ia := hS' a ha
    have ib := hS' b hb
    have hfa : freePt X Y L Q a = cfg h c d f ![X, Y, L, Q] (a.val + 5) := (cfg_free _ _ _ _ _ a).symm
    have hfb : freePt X Y L Q b = cfg h c d f ![X, Y, L, Q] (b.val + 5) := (cfg_free _ _ _ _ _ b).symm
    rw [hfa] at ia; rw [hfb] at ib
    have := H.two_inside (a := 0) (b := 3) (e := 4) (j₁ := a.val + 5) (j₂ := b.val + 5)
      (by norm_num) (by norm_num) (by norm_num) (by omega) (by omega)
      (by
        have : a.val ≠ b.val := fun e => hab (Fin.ext e)
        simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
          List.nodup_nil, and_true, not_false_eq_true]; omega)
      (Or.inl ia) (Or.inl ib)
    simp only [cfg] at this
    rw [abs_of_pos (by simp only [sarea]; nlinarith)] at this
    simp only [ptO, ptF, ptH] at hOFH
    linarith
  · intro hU
    refine ⟨hU.1, hU.2.1, ?_⟩
    have hne := area_ne H (u := 2) (v := 4) (w := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
    have q3 : (![X, Y, L, Q] : Fin 4 → Point) 3 = Q := rfl
    simp only [cfg, q3] at hne
    by_contra hn; push Not at hn
    have hneg : sarea (ptD d) (ptH h) Q < 0 := lt_of_le_of_ne hn hne
    exact noDFH 3 ⟨hU.2.2.1, hU.2.2.2, by
      have := sarea_swap₁₂ (ptD d) (ptH h) Q; show 0 < sarea (ptH h) (ptD d) Q; linarith⟩

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(5)`). The lower point gives `hc ≥ 3s`, so `c ≥ 3s`, and
`ℓ_x, ℓ_y ≥ s`, `c - ℓ_x, h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1 - s`.
`docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 79-93. -/
theorem eq5 (hS : Row h c d f X Y L Q) :
    3 * s ≤ c ∧ s ≤ L.1 ∧ s ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧
      L.1 + L.2 ≤ 1 - s := by
  have H := hS.comp
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨l1, l2, l3⟩ := hS.lower
  have e1 := H.area 0 1 7 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num)
  have e2 := H.area 1 4 7 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num)
  have e3 := H.area 4 0 7 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num)
  have q2 : (![X, Y, L, Q] : Fin 4 → Point) 2 = L := rfl
  simp only [cfg, q2] at e1 e2 e3
  simp only [ptO, ptC, ptH] at l1 l2 l3
  rw [abs_of_pos l1] at e1; rw [abs_of_pos l2] at e2; rw [abs_of_pos l3] at e3
  simp only [sarea] at e1 e2 e3
  have t := C1ZeroLower.two_A₀
  have lx0 : 0 < L.1 := by nlinarith
  have ly0 : 0 < L.2 := by nlinarith
  refine ⟨by nlinarith, by nlinarith, by nlinarith, by nlinarith, by nlinarith, ?_⟩
  have key : 0 ≤ h * c * (1 - 8 / 73 - L.1 - L.2) := by
    nlinarith [mul_nonneg (mul_nonneg (show (0:ℝ) ≤ h by linarith) lx0.le) (sub_nonneg.2 hc.le),
      mul_nonneg (mul_nonneg (show (0:ℝ) ≤ c by linarith) ly0.le) (sub_nonneg.2 hh.le),
      mul_nonneg (show (0:ℝ) ≤ h by linarith) (show (0:ℝ) ≤ c by linarith)]
  have hhc : 0 < h * c := by nlinarith
  by_contra hn; push Not at hn
  nlinarith

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(6)`). In the top row: `(1-d)(1-f) ≥ s`,
`f ≤ 1 - s/(1-ρ) = 323/803`, `d ≤ 57/65`. `docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 95-102.
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2). -/
theorem eq6 (hS : Row h c d f X Y L Q) (hQ : InTopCap d f Q) :
    s ≤ (1 - d) * (1 - f) ∧ f ≤ 323 / 803 ∧ d ≤ 57 / 65 := by
  have H := hS.comp
  obtain ⟨-, hrd, -, -, -, -⟩ := eq2 hS.toTwoRight
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨-, -, hΩ⟩ := H.top_row 3 hQ
  obtain ⟨a1, -, -, -⟩ := H.anchor_bounds
  have t := C1ZeroLower.two_A₀
  unfold topCapArea at hΩ
  have hf1 : 8 / 73 ≤ f := by nlinarith
  refine ⟨by linarith, ?_, ?_⟩
  · by_contra hn; push Not at hn
    nlinarith [mul_le_mul_of_nonneg_right (show 1 - d ≤ 11 / 60 by linarith)
      (show (0:ℝ) ≤ 1 - f by linarith)]
  · by_contra hn; push Not at hn
    nlinarith [mul_le_mul_of_nonneg_left (show 1 - f ≤ 65 / 73 by linarith)
      (show (0:ℝ) ≤ 1 - d by linarith)]

end

/-! ### Section 2: seven exhaustive five-anchor word cases -/

/-- The right-cap word `(1, 0, 4, 3, 2)` (of both `X` and `Y`). -/
def wordR : Word := ![1, 0, 4, 3, 2]

/-- The top-cap word `T = (2, 1, 0, 4, 3)`. -/
def wordT : Word := ![2, 1, 0, 4, 3]

/-- The two lower words above `OD`: `L₀ = (2, 3, 2, 2, 1)`, `L₁ = (3, 3, 2, 1, 1)`. -/
def wordL : Fin 2 → Word := ![![2, 3, 2, 2, 1], ![3, 3, 2, 1, 1]]

/-- The three upper words in `HCD` above `OD`: `U₀ = (2, 1, 2, 3, 2)`, `U₁ = (2, 2, 2, 2, 2)`,
`U₂ = (3, 2, 2, 1, 2)`. -/
def wordU : Fin 3 → Word := ![![2, 1, 2, 3, 2], ![2, 2, 2, 2, 2], ![3, 2, 2, 1, 2]]

/-- The seven cases (7) as (word of `L`, word of `Q`): `(L₀,U₀), (L₀,U₁), (L₀,U₂), (L₁,U₀),
(L₁,U₁), (L₀,T), (L₁,T)` (the pair `(L₁, U₂)` puts both points in `OFH`). -/
def rightPairCases : List (Word × Word) :=
  [(wordL 0, wordU 0), (wordL 0, wordU 1), (wordL 0, wordU 2), (wordL 1, wordU 0),
    (wordL 1, wordU 1), (wordL 0, wordT), (wordL 1, wordT)]

/-! ### Words in list form (the certificate model) -/

/-- The model's form of a five-anchor word: `[VᵤVᵥX] > 0` exactly when `lsign wl u v`. -/
def WordAtL (P : ℕ → Point) (X : Point) (wl : List ℕ) : Prop :=
  ∀ u v : ℕ, u < 5 → v < 5 → u ≠ v → (0 < sarea (P u) (P v) X ↔ Model.lsign wl u v = true)

theorem anchor_eq_cfg (h c d f : ℝ) (Q4 : Fin 4 → Point) (u : ℕ) (hu : u < 5) :
    anchor h c d f ⟨u, hu⟩ = cfg h c d f Q4 u := by
  interval_cases u <;> rfl

theorem hasWord_of_wordAtL {h c d f : ℝ} {Q4 : Fin 4 → Point} {P : Point} {W : Word}
    {wl : List ℕ} (hW : ∀ i j : Fin 5, wordSign W i j = Model.lsign wl i j)
    (hw : WordAtL (cfg h c d f Q4) P wl) : HasWord h c d f P W := by
  intro i j hij
  have := hw i j i.isLt j.isLt (fun e => hij (Fin.ext e))
  rw [← anchor_eq_cfg h c d f Q4 i i.isLt, ← anchor_eq_cfg h c d f Q4 j j.isLt] at this
  rw [hW]
  exact this

theorem wordAtL_of_hasWord {h c d f : ℝ} {Q4 : Fin 4 → Point} {P : Point} {W : Word}
    {wl : List ℕ} (hW : ∀ i j : Fin 5, wordSign W i j = Model.lsign wl i j)
    (hw : HasWord h c d f P W) : WordAtL (cfg h c d f Q4) P wl := by
  intro u v hu hv huv
  have := hw ⟨u, hu⟩ ⟨v, hv⟩ (fun e => huv (congrArg Fin.val e))
  rw [hW, anchor_eq_cfg h c d f Q4 u hu, anchor_eq_cfg h c d f Q4 v hv] at this
  exact this

theorem oh_pos {x : ℝ} (h : 0 < x) : Cover.OrientHolds true x := by
  simpa [Cover.OrientHolds] using h

theorem oh_neg {x : ℝ} (h : x < 0) : Cover.OrientHolds false x := by
  simpa [Cover.OrientHolds] using h

/-- A word from the orientations of its increasing pairs. -/
theorem wordAtL_of_lt {P : ℕ → Point} {X : Point} {wl : List ℕ}
    (hanti : ∀ u v : Fin 5, u ≠ v → Model.lsign wl v u = !Model.lsign wl u v)
    (hs : ∀ u v : Fin 5, u < v → Cover.OrientHolds (Model.lsign wl u v) (sarea (P u) (P v) X)) :
    WordAtL P X wl := by
  intro u v hu hv huv
  rcases lt_or_gt_of_ne huv with hl | hl
  · have := hs ⟨u, hu⟩ ⟨v, hv⟩ hl
    simp only at this
    cases hb : Model.lsign wl u v <;> rw [hb] at this <;>
      simp only [Cover.OrientHolds, Bool.false_eq_true, ite_true, ite_false] at this
    · exact ⟨fun h => absurd h (not_lt.2 this.le), fun h => absurd h (by decide)⟩
    · exact ⟨fun _ => rfl, fun _ => this⟩
  · have := hs ⟨v, hv⟩ ⟨u, hu⟩ hl
    have ha := hanti ⟨v, hv⟩ ⟨u, hu⟩ (fun e => by simp [Fin.ext_iff] at e; omega)
    simp only at this ha
    rw [ha, show sarea (P u) (P v) X = -sarea (P v) (P u) X from sarea_swap₁₂ _ _ _]
    cases hb : Model.lsign wl v u <;> rw [hb] at this <;>
      simp only [Cover.OrientHolds, Bool.false_eq_true, ite_true, ite_false] at this
    · exact ⟨fun _ => rfl, fun _ => by linarith⟩
    · exact ⟨fun h => by linarith, fun h => absurd h (by decide)⟩

theorem WordAtL.orient {P : ℕ → Point} {X : Point} {wl : List ℕ} (W : WordAtL P X wl) {u v : ℕ}
    (hu : u < 5) (hv : v < 5) (huv : u ≠ v) (hne : sarea (P u) (P v) X ≠ 0) :
    Cover.OrientHolds (Model.lsign wl u v) (sarea (P u) (P v) X) := by
  have := W u v hu hv huv
  cases hb : Model.lsign wl u v <;> rw [hb] at this <;>
    simp only [Cover.OrientHolds, Bool.false_eq_true, ite_true, ite_false]
  · exact lt_of_le_of_ne (not_lt.1 fun h => absurd (this.1 h) (by decide)) hne
  · exact this.2 rfl

theorem wordR_eq : ∀ i j : Fin 5, wordSign wordR i j = Model.lsign Model.wR i j := by decide
theorem wordT_eq : ∀ i j : Fin 5, wordSign wordT i j = Model.lsign Model.wT i j := by decide
theorem wordL_eq : ∀ k : Fin 2, ∀ i j : Fin 5,
    wordSign (wordL k) i j = Model.lsign (Model.wL.getD k []) i j := by decide
theorem wordU_eq : ∀ k : Fin 3, ∀ i j : Fin 5,
    wordSign (wordU k) i j = Model.lsign (Model.wU.getD k []) i j := by decide

theorem zword_right : ∀ w : Fin 11, C1ZeroLower.Model.wsign w 1 2 = false → w.val = 0 := by
  decide
theorem zword_top : ∀ w : Fin 11, C1ZeroLower.Model.wsign w 2 3 = false → w.val = 3 := by
  decide
theorem zword_hcd : ∀ w : Fin 11, C1ZeroLower.Model.wsign w 0 2 = true →
    C1ZeroLower.Model.wsign w 4 1 = true → C1ZeroLower.Model.wsign w 1 2 = true →
    C1ZeroLower.Model.wsign w 2 4 = true → w.val = 5 ∨ w.val = 7 ∨ w.val = 10 := by
  decide

/-- The words of the package. -/
def rpWords : List (List ℕ) :=
  [Model.wR, Model.wT, [2, 3, 2, 2, 1], [3, 3, 2, 1, 1], [2, 1, 2, 3, 2], [2, 2, 2, 2, 2],
    [3, 2, 2, 1, 2]]

/-- The radial separation of two words of the package at an anchor `v` (as `radial_words` of the
zero-lower package): the next ray `m = v + r_v + 1` separates them. -/
theorem rp_radial : ∀ wa ∈ rpWords, ∀ wb ∈ rpWords, ∀ v : Fin 5, wa.getD v 0 < wb.getD v 0 →
    (v.val + wa.getD v 0 + 1) % 5 ≠ v.val ∧ ¬(v.val = 1 ∧ (v.val + wa.getD v 0 + 1) % 5 = 0) ∧
      ¬(v.val = 4 ∧ (v.val + wa.getD v 0 + 1) % 5 = 0) ∧
      Model.lsign wa v ((v.val + wa.getD v 0 + 1) % 5) = false ∧
      Model.lsign wb v ((v.val + wa.getD v 0 + 1) % 5) = true := by
  decide +kernel

/-- **The radial rule** for the words of the package: if the words of two free points differ at
the anchor `v`, the orientation of `[V_v Zᵢ Zⱼ]` is the sign of `r_v(j) - r_v(i)`. -/
theorem radial_pair_l {h c d f : ℝ} {Q4 : Fin 4 → Point} (H : Comp h c d f Q4) {i j : Fin 4}
    (hij : i ≠ j) {wa wb : List ℕ} (ha : wa ∈ rpWords) (hb : wb ∈ rpWords)
    (Wi : WordAtL (cfg h c d f Q4) (Q4 i) wa) (Wj : WordAtL (cfg h c d f Q4) (Q4 j) wb) {v : ℕ}
    (hv : v < 5) (hlt : wa.getD v 0 < wb.getD v 0) :
    0 < sarea (cfg h c d f Q4 v) (Q4 i) (Q4 j) := by
  obtain ⟨hm, n1, n4, sa, sb⟩ := rp_radial wa ha wb hb ⟨v, hv⟩ hlt
  simp only at hm n1 n4 sa sb
  set m := (v + wa.getD v 0 + 1) % 5
  have hm5 : m < 5 := Nat.mod_lt _ (by norm_num)
  have hneA : sarea (cfg h c d f Q4 v) (cfg h c d f Q4 m) (Q4 i) ≠ 0 := by
    have := area_ne H (u := v) (v := m) (w := i.val + 5) (by omega) (by omega) (by omega)
      (Ne.symm hm) (by omega) (by omega)
    rwa [cfg_free] at this
  have hA : sarea (cfg h c d f Q4 v) (cfg h c d f Q4 m) (Q4 i) < 0 := by
    have := Wi.orient hv hm5 (Ne.symm hm) hneA
    rw [sa] at this; simpa [Cover.OrientHolds] using this
  have hB : 0 < sarea (cfg h c d f Q4 v) (cfg h c d f Q4 m) (Q4 j) :=
    (Wj v m hv hm5 (Ne.symm hm)).2 sb
  have e := C1ZeroLower.radial_id (cfg h c d f Q4 v) (Q4 i) (cfg h c d f Q4 m) (Q4 j)
    (C1ZeroLower.ell v).1 (C1ZeroLower.ell v).2
  have l1 := C1ZeroLower.ell_anchor (Q := Q4) H.hA hv hm5 (Ne.symm hm) n1 n4
  have l2 := C1ZeroLower.ell_free (h := h) (c := c) (d := d) (f := f) (Q := Q4) v hv (H.hQ j)
  have l3 := C1ZeroLower.ell_free (h := h) (c := c) (d := d) (f := f) (Q := Q4) v hv (H.hQ i)
  have hA' : 0 < sarea (cfg h c d f Q4 v) (Q4 i) (cfg h c d f Q4 m) := by
    rw [sarea_swap₂₃, ← sarea_cycle, sarea_cycle]
    have := sarea_swap₂₃ (cfg h c d f Q4 v) (cfg h c d f Q4 m) (Q4 i)
    linarith
  have hT : 0 ≤ sarea (cfg h c d f Q4 v) (Q4 i) (Q4 j) := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg hA'.le l2, mul_nonneg hB.le l3]
  have hne := H.areaFF v i j hv hij
  rcases hT.lt_or_eq with h1 | h1
  · exact h1
  · rw [← h1, abs_zero] at hne; linarith [A₀_pos]

/-- A point strictly inside `OHC` is on the positive side of every anchor line `AB` with `O`
strictly and `C, H` weakly on that side: `[OCH][ABL] = [CHL][ABO] + [HOL][ABC] + [OCL][ABH]`. -/
theorem lower_key {h c d f : ℝ} (hA : C1Anchors h c d f) {L : Point} (hL : InLower h c L)
    (A B : Point) (h1 : 0 < sarea A B (0, 0)) (h2 : 0 ≤ sarea A B (c, 0))
    (h3 : 0 ≤ sarea A B (0, h)) : 0 < sarea A B L := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨l1, l2, l3⟩ := hL
  simp only [ptO, ptC, ptH] at l1 l2 l3
  have e : (c * h) * sarea A B L = sarea (c, 0) (0, h) L * sarea A B (0, 0) +
      sarea (0, h) (0, 0) L * sarea A B (c, 0) + sarea (0, 0) (c, 0) L * sarea A B (0, h) := by
    simp only [sarea]; ring
  have : 0 < (c * h) * sarea A B L := by
    rw [e]; nlinarith [mul_pos l2 h1, mul_nonneg l3.le h2, mul_nonneg l1.le h3]
  exact pos_of_mul_pos_right this (by nlinarith)

section

variable {h c d f : ℝ} {X Y L Q : Point}

/-- `X` and `Y` have the right word (the zero-lower words of a right-cap point). -/
theorem Row.word_right (hS : Row h c d f X Y L Q) (a : Fin 4) (ha : a = 0 ∨ a = 1) :
    WordAtL (cfg h c d f ![X, Y, L, Q]) (![X, Y, L, Q] a) Model.wR := by
  have H := hS.comp
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hR : InRightCap c d (![X, Y, L, Q] a) := by
    rcases ha with rfl | rfl
    exacts [hS.rightX, hS.rightY]
  have hnl : ¬ InLower h c (![X, Y, L, Q] a) := by
    intro hl
    have := lower_key hS.anchors hl (c, 0) (1, d) (by simp only [sarea]; nlinarith)
      (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
    unfold InRightCap ptC ptD at hR; linarith
  obtain ⟨w, hw, W⟩ := H.word_exists a hnl
  have hs : C1ZeroLower.Model.wsign w 1 2 = false := by
    by_contra hn
    have := (W 1 2 (by norm_num) (by norm_num) (by norm_num)).2 (by simpa using hn)
    unfold InRightCap ptC ptD at hR; simp only [cfg] at this; linarith
  have := zword_right ⟨w, hw⟩ hs
  simp only at this; subst this
  exact W

/-- The word of `Q`: an upper word in `HCD` (upper row) or the top word (top row). -/
theorem Row.word_Q (hS : Row h c d f X Y L Q) :
    (InUpperQuad h c d f Q ∧ ∃ k : Fin 3, WordAtL (cfg h c d f ![X, Y, L, Q]) Q (Model.wU.getD k [])) ∨
      (InTopCap d f Q ∧ WordAtL (cfg h c d f ![X, Y, L, Q]) Q Model.wT) := by
  have H := hS.comp
  obtain ⟨w, hw, W⟩ := H.word_exists 3 hS.notLowerQ
  have hOD := (claim_fan hS).2
  have pos : ∀ u v, u < 5 → v < 5 → u ≠ v → 0 < sarea (cfg h c d f ![X, Y, L, Q] u)
      (cfg h c d f ![X, Y, L, Q] v) Q → C1ZeroLower.Model.wsign w u v = true :=
    fun u v hu hv huv hp => (W u v hu hv huv).1 hp
  rcases eq3 hS with hU | hT
  · left
    refine ⟨hU, ?_⟩
    obtain ⟨-, -, -, -, -, hHCD⟩ := eq4 hS
    obtain ⟨t1, t2, t3⟩ := hHCD hU
    rcases zword_hcd ⟨w, hw⟩ (pos 0 2 (by norm_num) (by norm_num) (by norm_num) hOD)
      (pos 4 1 (by norm_num) (by norm_num) (by norm_num) t1)
      (pos 1 2 (by norm_num) (by norm_num) (by norm_num) t2)
      (pos 2 4 (by norm_num) (by norm_num) (by norm_num) t3) with e | e | e <;>
      simp only at e <;> subst e
    exacts [⟨0, W⟩, ⟨1, W⟩, ⟨2, W⟩]
  · right
    refine ⟨hT, ?_⟩
    have hs : C1ZeroLower.Model.wsign w 2 3 = false := by
      by_contra hn
      have := (W 2 3 (by norm_num) (by norm_num) (by norm_num)).2 (by simpa using hn)
      have q3 : (![X, Y, L, Q] : Fin 4 → Point) 3 = Q := rfl
      unfold InTopCap ptD ptF at hT; simp only [cfg, q3] at this; linarith
    have := zword_top ⟨w, hw⟩ hs
    simp only at this; subst this
    exact W

/-- The word of the lower point `L` (above `OD`): `L₀` if `[OFL] < 0`, `L₁` if `[OFL] > 0`. -/
theorem Row.word_L (hS : Row h c d f X Y L Q) :
    (WordAtL (cfg h c d f ![X, Y, L, Q]) L (Model.wL.getD 0 []) ∧ sarea (0, 0) (f, 1) L < 0) ∨
      (WordAtL (cfg h c d f ![X, Y, L, Q]) L (Model.wL.getD 1 []) ∧ 0 < sarea (0, 0) (f, 1) L) := by
  have H := hS.comp
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hL := hS.lower
  obtain ⟨l1, l2, l3⟩ := hL
  simp only [ptO, ptC, ptH] at l1 l2 l3
  have K := lower_key hS.anchors hS.lower
  have h01 : 0 < sarea (0, 0) (c, 0) L := l1
  have h02 : 0 < sarea (0, 0) (1, d) L := (claim_fan hS).1
  have h04 : sarea (0, 0) (0, h) L < 0 := by
    have := sarea_swap₁₂ (0, 0) (0, h) L; linarith
  have h12 : 0 < sarea (c, 0) (1, d) L := K _ _ (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
  have h13 : 0 < sarea (c, 0) (f, 1) L := K _ _ (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
  have h14 : 0 < sarea (c, 0) (0, h) L := l2
  have h23 : 0 < sarea (1, d) (f, 1) L := K _ _ (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
  have h24 : 0 < sarea (1, d) (0, h) L := K _ _ (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
  have h34 : 0 < sarea (f, 1) (0, h) L := K _ _ (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
  have hne : sarea (0, 0) (f, 1) L ≠ 0 := area_ne H (u := 0) (v := 3) (w := 7) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
  rcases hne.lt_or_gt with h03 | h03
  · left
    refine ⟨wordAtL_of_lt (by decide) fun u v huv => ?_, h03⟩
    fin_cases u <;> fin_cases v <;> simp at huv ⊢ <;>
      first
      | exact oh_pos h01 | exact oh_pos h02 | exact oh_neg h03 | exact oh_neg h04
      | exact oh_pos h12 | exact oh_pos h13 | exact oh_pos h14 | exact oh_pos h23
      | exact oh_pos h24 | exact oh_pos h34
  · right
    refine ⟨wordAtL_of_lt (by decide) fun u v huv => ?_, h03⟩
    fin_cases u <;> fin_cases v <;> simp at huv ⊢ <;>
      first
      | exact oh_pos h01 | exact oh_pos h02 | exact oh_pos h03 | exact oh_neg h04
      | exact oh_pos h12 | exact oh_pos h13 | exact oh_pos h14 | exact oh_pos h23
      | exact oh_pos h24 | exact oh_pos h34

end

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(7)`). Both right-cap points have word `(1, 0, 4, 3, 2)`;
`L` has `L₀` or `L₁`; `Q` has `U₀, U₁, U₂` (upper row) or `T` (top row); the pair `(L₁, U₂)` puts
both `L, Q` in `OFH`, contradicting its capacity one. So the word pair of `(L, Q)` is one of the
seven cases. `docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 108-140.
Uses: C1_ZERO_LOWER:claim-words, C1_ONE_LOWER_RIGHT_PAIR:(3), C1_ONE_LOWER_RIGHT_PAIR:claim-fan,
C1_ONE_LOWER_RIGHT_PAIR:(4). -/
theorem eq7 {h c d f : ℝ} {X Y L Q : Point} (hS : Row h c d f X Y L Q) :
    HasWord h c d f X wordR ∧ HasWord h c d f Y wordR ∧
      ∃ w ∈ rightPairCases, HasWord h c d f L w.1 ∧ HasWord h c d f Q w.2 := by
  refine ⟨hasWord_of_wordAtL wordR_eq (hS.word_right 0 (Or.inl rfl)),
    hasWord_of_wordAtL wordR_eq (hS.word_right 1 (Or.inr rfl)), ?_⟩
  rcases hS.word_L with ⟨hl, -⟩ | ⟨hl, hOF⟩ <;> rcases hS.word_Q with ⟨-, k, hq⟩ | ⟨-, hq⟩
  · fin_cases k
    · exact ⟨(wordL 0, wordU 0), by decide, hasWord_of_wordAtL (wordL_eq 0) hl,
        hasWord_of_wordAtL (wordU_eq 0) hq⟩
    · exact ⟨(wordL 0, wordU 1), by decide, hasWord_of_wordAtL (wordL_eq 0) hl,
        hasWord_of_wordAtL (wordU_eq 1) hq⟩
    · exact ⟨(wordL 0, wordU 2), by decide, hasWord_of_wordAtL (wordL_eq 0) hl,
        hasWord_of_wordAtL (wordU_eq 2) hq⟩
  · exact ⟨(wordL 0, wordT), by decide, hasWord_of_wordAtL (wordL_eq 0) hl,
      hasWord_of_wordAtL wordT_eq hq⟩
  · fin_cases k
    · exact ⟨(wordL 1, wordU 0), by decide, hasWord_of_wordAtL (wordL_eq 1) hl,
        hasWord_of_wordAtL (wordU_eq 0) hq⟩
    · exact ⟨(wordL 1, wordU 1), by decide, hasWord_of_wordAtL (wordL_eq 1) hl,
        hasWord_of_wordAtL (wordU_eq 1) hq⟩
    · -- `(L₁, U₂)`: both `L, Q` in `OFH`, which has capacity one
      exfalso
      obtain ⟨-, -, -, -, hcap, -⟩ := eq4 hS
      have iL : InTriangle (freePt X Y L Q 2) ptO (ptF f) (ptH h) :=
        ⟨hOF, (hl 3 4 (by norm_num) (by norm_num) (by norm_num)).2 rfl,
          (hl 4 0 (by norm_num) (by norm_num) (by norm_num)).2 rfl⟩
      have iQ : InTriangle (freePt X Y L Q 3) ptO (ptF f) (ptH h) :=
        ⟨(hq 0 3 (by norm_num) (by norm_num) (by norm_num)).2 rfl,
          (hq 3 4 (by norm_num) (by norm_num) (by norm_num)).2 rfl,
          (hq 4 0 (by norm_num) (by norm_num) (by norm_num)).2 rfl⟩
      have := hcap {2, 3} (by
        intro i hi
        simp only [Finset.mem_insert, Finset.mem_singleton] at hi
        rcases hi with rfl | rfl
        exacts [iL, iQ])
      simp at this
  · exact ⟨(wordL 1, wordT), by decide, hasWord_of_wordAtL (wordL_eq 1) hl,
      hasWord_of_wordAtL wordT_eq hq⟩

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(8)`). For the equal-word pair `X, Y`, the containments (2)
give `[OXY] > 0`, `[CXY] > 0`, `[DXY] < 0`. `docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 142-148.
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2). -/
theorem eq8 {h c d f : ℝ} {X Y L Q : Point} (hS : Row h c d f X Y L Q) :
    0 < sarea ptO X Y ∧ 0 < sarea (ptC c) X Y ∧ sarea (ptD d) X Y < 0 := by
  obtain ⟨c1, c2, c3⟩ := hS.innerCDX
  obtain ⟨o1, -, -⟩ := hS.innerODX
  refine ⟨o1, c1, ?_⟩
  have := sarea_cycle X (ptD d) Y
  have := sarea_swap₂₃ (ptD d) X Y
  linarith

/-! ### Sections 3–4: the certificate package -/

/-! ### The cell soundness -/

/-- The seven cases as keys of the model. -/
def caseKeys : List (Bool × ℕ × ℕ) :=
  [(false, 0, 0), (false, 0, 1), (false, 0, 2), (false, 1, 0), (false, 1, 1), (true, 0, 0),
    (true, 1, 0)]

theorem trees_ok : ∀ x ∈ caseKeys,
    ∃ T, Cover.checkTree (Model.spec x.1 x.2.1 x.2.2) [] T = true := by
  intro x hx
  simp only [caseKeys, List.mem_cons, List.not_mem_nil, or_false] at hx
  rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [⟨_, Model.tree_upper_0_0_ok⟩, ⟨_, Model.tree_upper_0_1_ok⟩,
    ⟨_, Model.tree_upper_0_2_ok⟩, ⟨_, Model.tree_upper_1_0_ok⟩, ⟨_, Model.tree_upper_1_1_ok⟩,
    ⟨_, Model.tree_top_0_0_ok⟩, ⟨_, Model.tree_top_1_0_ok⟩]

theorem caseWords_mem : ∀ x ∈ caseKeys, ∀ a : Fin 4,
    (Model.caseWords x.1 x.2.1 x.2.2).getD a [] ∈ rpWords := by
  decide

section

variable {h c d f : ℝ} {X Y L Q : Point}

/-- The pair rule of `baseSigns` is sound. -/
theorem pair_sound {Q4 : Fin 4 → Point} (H : Comp h c d f Q4) {ws : List (List ℕ)}
    (hW : ∀ a : Fin 4, WordAtL (cfg h c d f Q4) (Q4 a) (ws.getD a []))
    (hmem : ∀ a : Fin 4, ws.getD a [] ∈ rpWords)
    (h01 : 0 < sarea (0, 0) (Q4 0) (Q4 1) ∧ 0 < sarea (c, 0) (Q4 0) (Q4 1) ∧
      sarea (1, d) (Q4 0) (Q4 1) < 0)
    {i j : Fin 4} (hij : i < j) {v : ℕ} (hv : v < 5) {sg : Bool}
    (hs : Model.pairSign ws i j v = some sg) :
    Cover.OrientHolds sg (sarea (cfg h c d f Q4 v) (Q4 i) (Q4 j)) := by
  unfold Model.pairSign at hs
  simp only at hs
  split_ifs at hs with h1 h2 v0 v1 v2 <;> simp only [Option.some.injEq] at hs
  · subst hs
    rcases lt_or_gt_of_ne h1 with hl | hl
    · simp only [hl, decide_true]
      exact oh_pos (radial_pair_l H hij.ne (hmem i) (hmem j) (hW i) (hW j) hv hl)
    · simp only [not_lt.2 hl.le, decide_false]
      have := radial_pair_l H hij.ne.symm (hmem j) (hmem i) (hW j) (hW i) hv hl
      rw [sarea_swap₂₃] at this; exact oh_neg (by linarith)
  all_goals
    obtain ⟨hi0, hj1⟩ := h2
    have ei : i = 0 := Fin.ext hi0
    have ej : j = 1 := Fin.ext hj1
    subst ei ej hs
    obtain ⟨o1, o2, o3⟩ := h01
  · subst v0; exact oh_pos o1
  · subst v1; exact oh_pos o2
  · subst v2; exact oh_neg o3

/-- **The initial signs** of a cell hold. -/
theorem base_holds {Q4 : Fin 4 → Point} (H : Comp h c d f Q4) {ws : List (List ℕ)}
    (hW : ∀ a : Fin 4, WordAtL (cfg h c d f Q4) (Q4 a) (ws.getD a []))
    (hmem : ∀ a : Fin 4, ws.getD a [] ∈ rpWords)
    (h01 : 0 < sarea (0, 0) (Q4 0) (Q4 1) ∧ 0 < sarea (c, 0) (Q4 0) (Q4 1) ∧
      sarea (1, d) (Q4 0) (Q4 1) < 0) :
    Cover.AllHold (C1ZeroLower.FHolds (cfg h c d f Q4)) (Model.baseSigns ws) := by
  intro g hg
  simp only [Model.baseSigns, List.mem_append, List.mem_filterMap, List.mem_flatMap,
    List.mem_range, Option.map_eq_some_iff] at hg
  rcases hg with ⟨t, ht, sg, hsg, rfl⟩ | ⟨p, hp, v, hv, sg, hsg, rfl⟩
  · obtain ⟨t1, t2, t3⟩ := C1ZeroLower.lexTriples_valid t ht
    refine ⟨t1, t2, t3, ?_⟩
    unfold Model.anchorSign at hsg
    split_ifs at hsg with a1 a2 <;> simp only [Option.some.injEq] at hsg
    · subst hsg; exact C1ZeroLower.anchor_pos H.hA (C1ZeroLower.lexTriples_anchor t ht a1)
    · subst hsg
      have ha : t.2.2 - 5 < 4 := by omega
      have hcf : cfg h c d f Q4 t.2.2 = Q4 ⟨t.2.2 - 5, ha⟩ := by
        have := cfg_free h c d f Q4 ⟨t.2.2 - 5, ha⟩
        simp only at this; rw [← this]; congr 1; omega
      have hne := area_ne H (u := t.1) (v := t.2.1) (w := t.2.2) (by omega) (by omega) t3
        (by omega) (by omega) (by omega)
      simp only [Cover.SFact.Holds]
      rw [hcf] at hne ⊢
      exact (hW ⟨t.2.2 - 5, ha⟩).orient (by omega) a2 (by omega) hne
  · simp only [C1ZeroLower.Model.freePairs, List.mem_cons, List.not_mem_nil, or_false] at hp
    have key : ∀ i j : Fin 4, i < j → p = (i.val, j.val) →
        C1ZeroLower.FHolds (cfg h c d f Q4) ((v, p.1 + 5, p.2 + 5), sg) := by
      intro i j hij hpe
      subst hpe
      refine ⟨by simp only; omega, by simp only; omega, by simp only; omega, ?_⟩
      simp only [Cover.SFact.Holds, cfg_free]
      exact pair_sound H hW hmem h01 hij hv hsg
    rcases hp with rfl | rfl | rfl | rfl | rfl | rfl
    · exact key 0 1 (by decide) rfl
    · exact key 0 2 (by decide) rfl
    · exact key 0 3 (by decide) rfl
    · exact key 1 2 (by decide) rfl
    · exact key 1 3 (by decide) rfl
    · exact key 2 3 (by decide) rfl

/-- The subdivision of `OHC` at `L` gives `hc ≥ 6A₀`. -/
theorem Row.lower_hc (hS : Row h c d f X Y L Q) : 6 * A₀ ≤ h * c := by
  have H := hS.comp
  obtain ⟨l1, l2, l3⟩ := hS.lower
  have q2 : (![X, Y, L, Q] : Fin 4 → Point) 2 = L := rfl
  have e1 := H.area 0 1 7 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num)
  have e2 := H.area 1 4 7 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num)
  have e3 := H.area 4 0 7 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num)
  simp only [cfg, q2] at e1 e2 e3
  simp only [ptO, ptC, ptH] at l1 l2 l3
  rw [abs_of_pos l1] at e1; rw [abs_of_pos l2] at e2; rw [abs_of_pos l3] at e3
  have := sarea_add_sarea_add_sarea ((0 : ℝ), (0 : ℝ)) (c, 0) (0, h) L
  have e : sarea ((0 : ℝ), (0 : ℝ)) (c, 0) (0, h) = h * c := by simp only [sarea]; ring
  linarith

/-- The parameter facts of both rows. -/
theorem Row.params (hS : Row h c d f X Y L Q) :
    49 / 60 ≤ h ∧ 49 / 60 ≤ d ∧ c ≤ 49 / 73 ∧ f ≤ 49 / 73 ∧ 24 / 73 ≤ d * (1 - c) ∧
      d ≤ 65 / 73 ∧ 8 / 73 ≤ f ∧ 24 / 73 ≤ h * c := by
  have H := hS.comp
  have t := C1ZeroLower.two_A₀
  obtain ⟨-, e1, e2, e3, e4, e5⟩ := eq2 hS.toTwoRight
  obtain ⟨-, a2, a3, -⟩ := H.anchor_bounds
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hhc := hS.lower_hc
  obtain ⟨a1, -, -, -⟩ := H.anchor_bounds
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by nlinarith, by linarith⟩

/-- The right-cap points of both rows. -/
theorem Row.right_pt (hS : Row h c d f X Y L Q) (a : Fin 4) (ha : a = 0 ∨ a = 1) :
    8 / 73 ≤ (![X, Y, L, Q] a).1 ∧ 8 / 73 ≤ (![X, Y, L, Q] a).2 ∧ (![X, Y, L, Q] a).1 ≤ 1 ∧
      8 / 73 ≤ d - (![X, Y, L, Q] a).2 ∧ 8 / 73 ≤ (![X, Y, L, Q] a).1 - c ∧
      8 / 73 ≤ d * c * (1 - c) := by
  have H := hS.comp
  have t := C1ZeroLower.two_A₀
  have hR : InRightCap c d (![X, Y, L, Q] a) := by
    rcases ha with rfl | rfl
    exacts [hS.rightX, hS.rightY]
  have hsq : ![X, Y, L, Q] a ∈ unitSquare := H.hQ a
  have hb := below_of_right hS.anchors hsq hR
  obtain ⟨r1, r2, -, r4⟩ := H.right_row a hR hb
  obtain ⟨c1, c2⟩ := H.coord_ge a
  obtain ⟨-, x1, -, -⟩ := hsq
  exact ⟨by linarith, by linarith, x1, by linarith, by linarith, by linarith⟩

/-- The anchor-triangle costs of both rows. -/
theorem Row.tri_costs (hS : Row h c d f X Y L Q) :
    sarea (1, d) (f, 1) (0, h) ≤ 24 / 73 ∧ sarea (0, 0) (f, 1) (0, h) ≤ 49 / 60 := by
  obtain ⟨k1, -, -, k4, -, -⟩ := eq4 hS
  obtain ⟨-, e2, -⟩ := hS.params
  simp only [ptD, ptF, ptH, ptO] at k1 k4
  constructor <;> linarith

theorem Row.pre_upper (hS : Row h c d f X Y L Q) (hU : InUpperQuad h c d f Q) :
    ∀ e ∈ Model.factors false ++ Model.qcosts false,
      0 ≤ e.eval (C1ZeroLower.zeta h c d f ![X, Y, L, Q]) := by
  have H := hS.comp
  have t := C1ZeroLower.two_A₀
  obtain ⟨f1, f2, f3, f4, f5, f12, f13, f14⟩ := hS.params
  obtain ⟨x1, x2, x3, x4, x5, -⟩ : 8 / 73 ≤ X.1 ∧ 8 / 73 ≤ X.2 ∧ X.1 ≤ 1 ∧ 8 / 73 ≤ d - X.2 ∧
      8 / 73 ≤ X.1 - c ∧ 8 / 73 ≤ d * c * (1 - c) := hS.right_pt 0 (Or.inl rfl)
  obtain ⟨y1, y2, y3, y4, y5, -⟩ : 8 / 73 ≤ Y.1 ∧ 8 / 73 ≤ Y.2 ∧ Y.1 ≤ 1 ∧ 8 / 73 ≤ d - Y.2 ∧
      8 / 73 ≤ Y.1 - c ∧ 8 / 73 ≤ d * c * (1 - c) := hS.right_pt 1 (Or.inr rfl)
  obtain ⟨f6, f7, f8, f9, f10, f11⟩ := eq5 hS
  obtain ⟨f15, f16⟩ := hS.tri_costs
  obtain ⟨q1, q2⟩ : 2 * A₀ ≤ Q.1 ∧ 2 * A₀ ≤ Q.2 := H.coord_ge 3
  obtain ⟨u1, u2⟩ : Q.1 ≤ 1 - 2 * A₀ ∧ Q.2 ≤ 1 - 2 * A₀ := H.upper_row 3 hU
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hfd := hS.f_le_d
  -- `W ≥ 8A₀` by the fan of `HCDF` at `Q`
  have hW : 32 / 73 ≤ 1 - (h - d) * (c - f) := by
    obtain ⟨p1, p2, p3, p4⟩ := hU
    have a1 := H.area 4 1 8 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num)
    have a2 := H.area 1 2 8 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num)
    have a3 := H.area 2 3 8 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num)
    have a4 := H.area 3 4 8 (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num)
    have q3 : (![X, Y, L, Q] : Fin 4 → Point) 3 = Q := rfl
    simp only [cfg, q3] at a1 a2 a3 a4
    simp only [ptH, ptC, ptD, ptF] at p1 p2 p3 p4
    rw [abs_of_pos p1] at a1; rw [abs_of_pos p2] at a2; rw [abs_of_pos p3] at a3
    rw [abs_of_pos p4] at a4
    have e : sarea (0, h) (c, 0) Q + sarea (c, 0) (1, d) Q + sarea (1, d) (f, 1) Q +
        sarea (f, 1) (0, h) Q = 1 - (h - d) * (c - f) := by simp only [sarea]; ring
    linarith
  have q0 : (![X, Y, L, Q] : Fin 4 → Point) 0 = X := rfl
  have q1' : (![X, Y, L, Q] : Fin 4 → Point) 1 = Y := rfl
  have q2' : (![X, Y, L, Q] : Fin 4 → Point) 2 = L := rfl
  have q3' : (![X, Y, L, Q] : Fin 4 → Point) 3 = Q := rfl
  simp only [Model.factors, Model.qcosts, Bool.false_eq_true, ite_false, List.append_nil,
    List.cons_append, List.nil_append, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_one,
    Cert.Expr.eval_zero, Cert.Expr.eval_v, Cert.Expr.eval_k, Cert.Expr.eval_esarea,
    C1ZeroLower.Model.pt, C1ZeroLower.zeta, q0, q1', q2', q3']
  push_cast
  and_intros <;> linarith

theorem Row.pre_top (hS : Row h c d f X Y L Q) (hT : InTopCap d f Q) :
    ∀ e ∈ Model.factors true ++ Model.qcosts true,
      0 ≤ e.eval (C1ZeroLower.zeta h c d f ![X, Y, L, Q]) := by
  have H := hS.comp
  have t := C1ZeroLower.two_A₀
  obtain ⟨f1, f2, f3, f4, f5, f12, f13, f14⟩ := hS.params
  obtain ⟨x1, x2, x3, x4, x5, -⟩ : 8 / 73 ≤ X.1 ∧ 8 / 73 ≤ X.2 ∧ X.1 ≤ 1 ∧ 8 / 73 ≤ d - X.2 ∧
      8 / 73 ≤ X.1 - c ∧ 8 / 73 ≤ d * c * (1 - c) := hS.right_pt 0 (Or.inl rfl)
  obtain ⟨y1, y2, y3, y4, y5, -⟩ : 8 / 73 ≤ Y.1 ∧ 8 / 73 ≤ Y.2 ∧ Y.1 ≤ 1 ∧ 8 / 73 ≤ d - Y.2 ∧
      8 / 73 ≤ Y.1 - c ∧ 8 / 73 ≤ d * c * (1 - c) := hS.right_pt 1 (Or.inr rfl)
  obtain ⟨f6, f7, f8, f9, f10, f11⟩ := eq5 hS
  obtain ⟨f15, f16⟩ := hS.tri_costs
  obtain ⟨q1, q2⟩ : 2 * A₀ ≤ Q.1 ∧ 2 * A₀ ≤ Q.2 := H.coord_ge 3
  obtain ⟨-, g2, g3⟩ := eq6 hS hT
  obtain ⟨t1, t2, -⟩ : 2 * A₀ ≤ Q.1 - f ∧ 2 * A₀ ≤ Q.2 - d ∧ 2 * A₀ ≤ topCapArea d f :=
    H.top_row 3 hT
  obtain ⟨-, s1, -, s2⟩ := hS.sqQ
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hfd := hS.f_le_d
  have q0 : (![X, Y, L, Q] : Fin 4 → Point) 0 = X := rfl
  have q1' : (![X, Y, L, Q] : Fin 4 → Point) 1 = Y := rfl
  have q2' : (![X, Y, L, Q] : Fin 4 → Point) 2 = L := rfl
  have q3' : (![X, Y, L, Q] : Fin 4 → Point) 3 = Q := rfl
  simp only [Model.factors, Model.qcosts, ite_true, List.append_nil,
    List.cons_append, List.nil_append, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_one,
    Cert.Expr.eval_zero, Cert.Expr.eval_v, Cert.Expr.eval_k, Cert.Expr.eval_esarea,
    C1ZeroLower.Model.pt, C1ZeroLower.zeta, q0, q1', q2', q3']
  push_cast
  and_intros <;> linarith

/-- A cell of the package is impossible. -/
theorem cell_false (hS : Row h c d f X Y L Q) {x : Bool × ℕ × ℕ} (hx : x ∈ caseKeys)
    (hW : ∀ a : Fin 4, WordAtL (cfg h c d f ![X, Y, L, Q]) (![X, Y, L, Q] a)
      ((Model.caseWords x.1 x.2.1 x.2.2).getD a []))
    (hpre : ∀ e ∈ Model.factors x.1 ++ Model.qcosts x.1,
      0 ≤ e.eval (C1ZeroLower.zeta h c d f ![X, Y, L, Q])) : False := by
  have H := hS.comp
  obtain ⟨T, hT⟩ := trees_ok x hx
  obtain ⟨-, -, -, -, -, f17⟩ := hS.right_pt 0 (Or.inl rfl)
  obtain ⟨o1, c1, d1⟩ := eq8 hS
  refine C1OneLower.tableSpec_false hT H.zeta_mem (fun i _ => C1ZeroLower.ptEval_zeta i)
    (fun a b e ha hb he hab hbe hae => H.area a b e ha hb he hab hbe hae) (by decide) (by decide)
    hpre ?_ (base_holds H hW (caseWords_mem x hx) ⟨o1, c1, d1⟩)
  simp only [Model.cubic, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_one,
    Cert.Expr.eval_v, Cert.Expr.eval_k, C1ZeroLower.zeta]
  push_cast
  linarith

theorem upQ (k : Fin 3) (hQ : HasWord h c d f Q (wordU k)) :
    InUpperQuad h c d f Q := by
  fin_cases k <;>
    exact ⟨(hQ 4 1 (by decide)).2 (by decide), (hQ 1 2 (by decide)).2 (by decide),
      (hQ 2 3 (by decide)).2 (by decide), (hQ 3 4 (by decide)).2 (by decide)⟩

end

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(9)-(10)`). The certificate package: no named right pair has
its word pair `(L, Q)` among the seven cases. The cases are split by the finite sign trees of
Section 2 (`(L₀,U₀)`: six cells by `[XYQ], [FYQ], [OLQ], [HXY]`; `(L₁,U₀)` by `[XYQ]`; `(L₁,U₁)`,
`(L₀,T)` by `[HXY]`; 15 cells in all), and each cell is excluded by a fixed positive combination of
products of the 30 (upper row) or 34 (top row) affine factors, the quadratic costs (9) (`hc - 3s`,
`d(1-c) - 3s`, `3s - [DFH]`, `ρ - [OFH]`, upper row `W - 4s`, then the signed actual triangles
minus `s, 3s, ρ` by certified occupancy) and the cubic (10) `dc(1-c) - s`, with unit-cube bound
at most `-3/4` (largest `-77021124287/77678914560`).
`docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 151-263 (data `c1_one_lower_right_pair_certificates.json`,
checker `check_c1_one_lower_right_pair.py`).
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2), C1_ONE_LOWER_RIGHT_PAIR:(4), C1_ONE_LOWER_RIGHT_PAIR:(5),
C1_ONE_LOWER_RIGHT_PAIR:(6), C1_ONE_LOWER_RIGHT_PAIR:(8), C1_ZERO_LOWER:claim-region-bounds,
C1_ZERO_LOWER:eq5-6, C1_ZERO_LOWER:claim-pair-signs, ONE_CORNER:GlobalC1OccupancyCorollary,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq9_10 {h c d f : ℝ} {X Y L Q : Point} (hS : Row h c d f X Y L Q) {w : Word × Word}
    (hw : w ∈ rightPairCases) (hL : HasWord h c d f L w.1) (hQ : HasWord h c d f Q w.2) :
    False := by
  have H := hS.comp
  have hX := hS.word_right 0 (Or.inl rfl)
  have hY := hS.word_right 1 (Or.inr rfl)
  have tp : HasWord h c d f Q wordT → InTopCap d f Q := by
    intro hQ
    have hne := area_ne H (u := 2) (v := 3) (w := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
    have := hQ 2 3 (by decide)
    simp only [show wordSign wordT 2 3 = false by decide, Bool.false_eq_true, iff_false] at this
    exact lt_of_le_of_ne (not_lt.1 this) hne
  simp only [rightPairCases, List.mem_cons, List.not_mem_nil, or_false] at hw
  rcases hw with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · refine cell_false hS (x := (false, 0, 0)) (by decide) (fun a => ?_)
      (hS.pre_upper (upQ 0 hQ))
    fin_cases a
    exacts [hX, hY, wordAtL_of_hasWord (wordL_eq 0) hL, wordAtL_of_hasWord (wordU_eq 0) hQ]
  · refine cell_false hS (x := (false, 0, 1)) (by decide) (fun a => ?_)
      (hS.pre_upper (upQ 1 hQ))
    fin_cases a
    exacts [hX, hY, wordAtL_of_hasWord (wordL_eq 0) hL, wordAtL_of_hasWord (wordU_eq 1) hQ]
  · refine cell_false hS (x := (false, 0, 2)) (by decide) (fun a => ?_)
      (hS.pre_upper (upQ 2 hQ))
    fin_cases a
    exacts [hX, hY, wordAtL_of_hasWord (wordL_eq 0) hL, wordAtL_of_hasWord (wordU_eq 2) hQ]
  · refine cell_false hS (x := (false, 1, 0)) (by decide) (fun a => ?_)
      (hS.pre_upper (upQ 0 hQ))
    fin_cases a
    exacts [hX, hY, wordAtL_of_hasWord (wordL_eq 1) hL, wordAtL_of_hasWord (wordU_eq 0) hQ]
  · refine cell_false hS (x := (false, 1, 1)) (by decide) (fun a => ?_)
      (hS.pre_upper (upQ 1 hQ))
    fin_cases a
    exacts [hX, hY, wordAtL_of_hasWord (wordL_eq 1) hL, wordAtL_of_hasWord (wordU_eq 1) hQ]
  · refine cell_false hS (x := (true, 0, 0)) (by decide) (fun a => ?_) (hS.pre_top (tp hQ))
    fin_cases a
    exacts [hX, hY, wordAtL_of_hasWord (wordL_eq 0) hL, wordAtL_of_hasWord wordT_eq hQ]
  · refine cell_false hS (x := (true, 1, 0)) (by decide) (fun a => ?_) (hS.pre_top (tp hQ))
    fin_cases a
    exacts [hX, hY, wordAtL_of_hasWord (wordL_eq 1) hL, wordAtL_of_hasWord wordT_eq hQ]

/-- A right-cap point is not in `OHC`. -/
theorem not_lower_of_right {h c d f : ℝ} (hA : C1Anchors h c d f) {P : Point}
    (hR : InRightCap c d P) : ¬ InLower h c P := by
  intro hl
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have := lower_key ⟨hd, hdh, hh, hf, hfc, hc⟩ hl (c, 0) (1, d) (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
  unfold InRightCap ptC ptD at hR; linarith

/-- The pair placement of four labelled free points `a, b` (right cap), `l` (lower), `q`. -/
theorem twoRight_of {h c d f : ℝ} {P : Fin 4 → Point} (H : Comp h c d f P) (hfd : f ≤ d)
    {a b l q : Fin 4} (hab : a ≠ b) (hal : a ≠ l) (hbl : b ≠ l) (hqa : q ≠ a) (hqb : q ≠ b)
    (hql : q ≠ l) (hRa : InRightCap c d (P a)) (hRb : InRightCap c d (P b))
    (hL : InLower h c (P l)) (hq : ¬ InLower h c (P q)) :
    TwoRight h c d f (P a) (P b) (P l) (P q) := by
  have hinj : Function.Injective (![a, b, l, q] : Fin 4 → Fin 4) := by
    intro x y hxy
    fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> simp_all [eq_comm]
  have H' := H.relabel (Equiv.ofBijective _ ⟨hinj, Finite.surjective_of_injective hinj⟩)
  exact ⟨H.hA, hfd, H'.hmin, hL, hRa, H.hQ a, hRb, H.hQ b, H.hQ q, hq⟩

/-- A named right pair is impossible. -/
theorem Row.false {h c d f : ℝ} {X Y L Q : Point} (hS : Row h c d f X Y L Q) : False := by
  obtain ⟨-, -, w, hw, hLw, hQw⟩ := eq7 hS
  exact eq9_10 hS hw hLw hQw

/-- **Theorem 1** (`C1_ONE_LOWER_RIGHT_PAIR:Theorem1`). Under `f ≤ d`, if exactly one of the four
free points of a competitive C1 configuration lies in `OHC`, the right exterior cap `CD(1,0)`
contains at most one free point. (Every full hull and additional square-side contacts are
allowed.) `docs/proof/nine/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 14-30 and 261-263.
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2), C1_ONE_LOWER_RIGHT_PAIR:(3), C1_ONE_LOWER_RIGHT_PAIR:(7),
C1_ONE_LOWER_RIGHT_PAIR:(9)-(10). -/
theorem theorem1 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f) (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    regionCount h c d f .right W X Y Z ≤ 1 := by
  classical
  by_contra hn; push Not at hn
  set P : Fin 4 → Point := freePt W X Y Z with hPdef
  have H : Comp h c d f P := ⟨hA, fun i => by fin_cases i <;> assumption, hmin⟩
  have hR : 1 < (Finset.univ.filter fun i : Fin 4 => InRightCap c d (P i)).card := by
    have : regionCount h c d f .right W X Y Z =
        (Finset.univ.filter fun i : Fin 4 => InRightCap c d (P i)).card := by
      unfold regionCount countFree; congr
    omega
  obtain ⟨a, ha, b, hb, hab⟩ := Finset.one_lt_card.1 hR
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at ha hb
  have hlow : (Finset.univ.filter fun i : Fin 4 => InLower h c (P i)).card = 1 := by
    have : lowerCount h c W X Y Z = (Finset.univ.filter fun i : Fin 4 => InLower h c (P i)).card := by
      unfold lowerCount countFree; congr
    omega
  obtain ⟨l, hl⟩ := Finset.card_eq_one.1 hlow
  have hlL : InLower h c (P l) := by
    have : l ∈ Finset.univ.filter fun i : Fin 4 => InLower h c (P i) := by rw [hl]; simp
    simpa using this
  have huniq : ∀ i, InLower h c (P i) → i = l := by
    intro i hi
    have : i ∈ Finset.univ.filter fun i : Fin 4 => InLower h c (P i) := by simp [hi]
    rw [hl] at this; simpa using this
  have hal : a ≠ l := fun e => not_lower_of_right hA ha (e ▸ hlL)
  have hbl : b ≠ l := fun e => not_lower_of_right hA hb (e ▸ hlL)
  obtain ⟨q, hqa, hqb, hql⟩ := (by decide : ∀ a b l : Fin 4, ∃ q : Fin 4, q ≠ a ∧ q ≠ b ∧ q ≠ l)
    a b l
  have hq : ¬ InLower h c (P q) := fun hi => hql (huniq q hi)
  have tw := twoRight_of H hfd hab hal hbl hqa hqb hql ha hb hlL hq
  rcases (eq2 tw).1 with ⟨i1, i2⟩ | ⟨i1, i2⟩
  · exact Row.false ⟨tw, i1, i2⟩
  · exact Row.false ⟨twoRight_of H hfd hab.symm hbl hal hqb hqa hql hb ha hlL hq, i1, i2⟩

end Heilbronn.Nine.C1OneLowerRightPair
