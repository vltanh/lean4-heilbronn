module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.FinalNegativeLine
public import Heilbronn.TypeII.Unbalanced.ChainSector

/-! # The final Type-II pair cannot both lie above ES (`hand/UNBALANCED_FINAL_UPPER_PAIR.md`)

**Role.** Primary route: step 4 of `UNBALANCED_FINAL_LOWER_WEDGE:claim-chain` (§5, line 280).
Its §1 conclusion `T ∈ int CQS` and the pair-line signs are inputs of the final placement of
`UNBALANCED_FINAL_LOWER_WEDGE:Theorem1`.

**Setting** (lines 5-20, `UpperPairSetting`): `Row123 l b P Q R S T`, all actual doubled areas at
least `s = 8/73` (`4/73 ≤ minTriangleArea (typeIIConfig …)`), the right hull the quadrilateral
`B, R, S, C` with `T` inside, in support cell II; `Q` (central) above `ER` and below `DR` and
`CE`; `T` above `DR` and below `CE`; and `[QTE] > 0`
(`UNBALANCED_FINAL_NEGATIVE_LINE:Theorem1`). Write `R = (r, u)`, `S = (k, t)`, `q = 1 - λ`,
`L = 1 - r`, `z = 1 - t`, `A = [ERC]`, `B₁ = [ESC]`, `J = 2·area(ERSC) = A + [RSC]`,
`ρ = 13/16`. "Above `ES`" is `0 < [ESX]`.

Explicit functions: `fFn s A B = [AB - s(A + B)]² - 4s(A + s)AB` (`F` of (3)) and
`aBar s z = 1 - s²(1 - z)/(z(1 - z) - s)` (`Ā` of (6)).

**Results.**
* `claim_EBS` (1): `b < 4/11` and `[EBS] ≤ [EBC] < 207/256 < 13/16 < Ks`; `EBS` has capacity
  one.
* `claim_CQS`: `L(X) = [QTX]` has `L(E), L(C) > 0`, `L(B), L(S) < 0`, so `T ∈ int CQS`.
* `claim_sector` (2)-(3): if `Q` is above `ES`, then `Q, T` lie in the `EC`-sector of `ERSC`,
  `A, B₁ ≥ Ks`, and `F(A, B₁) ≥ 0`.
* `claim_z` (4)-(6): then `ρ < z < 6/7`, `A ≤ Ā(z)`, `B₁ ≤ z`, and `(A, B₁)` lies in one of
  the two rectangles `≤ (19/20, 5/6)`, `≤ (15/16, 6/7)`.
* `theorem1`: `Q` is not above `ES`; hence `Q ∈ int ERS`.

Implicit in the manuscript: the placement of `P` plays no role and is not assumed;
`claim_EBS` uses only the standing row and the area bound.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedFinalUpperPair

open UnbalancedRightHull UnbalancedChain

variable {l b : ℝ} {P Q R S T : Point}

/-- The standing placement of the note (every actual doubled area at least `8/73`). -/
structure UpperPairSetting (l b : ℝ) (P Q R S T : Point) : Prop where
  row : Row123 l b P Q R S T
  min : 4 / 73 ≤ minTriangleArea (typeIIConfig l b P Q R S T)
  quad : QuadHull (ptB b) R S ptC T
  cell : CellII (ptB b) R S ptC T
  Q_above_ER : 0 < sarea (ptE l) R Q
  Q_below_DR : sarea ptD R Q < 0
  Q_below_CE : sarea (ptE l) ptC Q < 0
  T_above_DR : 0 < sarea ptD R T
  T_below_CE : sarea (ptE l) ptC T < 0
  QTE_pos : 0 < sarea Q T (ptE l)

/-- `F(A, B) = [AB - s(A + B)]² - 4s(A + s)AB`, (3). -/
def fFn (s A B : ℝ) : ℝ := (A * B - s * (A + B)) ^ 2 - 4 * s * (A + s) * A * B

/-- `Ā(z) = 1 - s²(1 - z)/(z(1 - z) - s)`, (6). -/
def aBar (s z : ℝ) : ℝ := 1 - s ^ 2 * (1 - z) / (z * (1 - z) - s)

/-- **Claim** (`UNBALANCED_FINAL_UPPER_PAIR:claim-EBS`), equation (1). `b < 4/11` and
`[EBS] ≤ [EBC] = 1 - (1 - b)q < 207/256 < 13/16 < Ks` (`s = 8/73`), so `EBS` contains at most
one further actual point. `hand/UNBALANCED_FINAL_UPPER_PAIR.md`, lines 31-54.
Uses: TYPE_II:EndpointTriangleTheorem, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_EBS (h : Row123 l b P Q R S T)
    (hmin : 4 / 73 ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    b < 4 / 11 ∧ sarea (ptE l) (ptB b) S ≤ sarea (ptE l) (ptB b) ptC ∧
      sarea (ptE l) (ptB b) ptC < 207 / 256 ∧ (207 / 256 : ℝ) < 13 / 16 ∧
      13 / 16 < Kc * (8 / 73) ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) S := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hl := h.l_pos
  have hl1 := h.l_lt
  obtain ⟨-, hb411⟩ := row_b_bounds h (by linarith)
  have hm : (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hDEB := TypeII.s_le_DEB (row_data h) hm
  obtain ⟨hSx, -, hSy1, hSy0, hSx1⟩ := right_facts hb hb1 h.S_mem h.S_right
  have eS : sarea (ptE l) (ptB b) S = b * S.2 + l * (S.1 - b) := by
    simp only [sarea, ptE, ptB]; ring
  have eC : sarea (ptE l) (ptB b) ptC = 1 - (1 - b) * (1 - l) := by
    simp only [sarea, ptE, ptB, ptC]; ring
  have h1 : sarea (ptE l) (ptB b) S ≤ sarea (ptE l) (ptB b) ptC := by
    rw [eS, eC]; nlinarith
  have h2 : sarea (ptE l) (ptB b) ptC < 207 / 256 := by
    rw [eC]; nlinarith [mul_pos (by linarith : (0 : ℝ) < 4 / 11 - b) (by linarith : (0 : ℝ) < 1 - l)]
  have hK := Kc_s_gt
  refine ⟨hb411, h1, h2, by norm_num, hK, ?_⟩
  exact cap_one (by norm_num) hm 2 3 7 (show sarea (ptE l) (ptB b) S < Kc * (8 / 73) by linarith)

/-- **Claim** (`UNBALANCED_FINAL_UPPER_PAIR:claim-CQS`). With `L(X) = [QTX]`: `L(E), L(C) > 0`,
`L(B) < 0` and `L(S) < 0`; hence `T` is strictly inside `CQS` (counterclockwise `C, Q, S`).
`hand/UNBALANCED_FINAL_UPPER_PAIR.md`, lines 56-69.
Uses: UNBALANCED_FINAL_UPPER_PAIR:claim-EBS. -/
theorem claim_CQS (h : UpperPairSetting l b P Q R S T) :
    0 < sarea Q T (ptE l) ∧ 0 < sarea Q T ptC ∧ sarea Q T (ptB b) < 0 ∧ sarea Q T S < 0 ∧
      InTriangle T ptC Q S := by
  have hb := h.row.b_pos
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hm : (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [h.min]
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := by linarith [h.min]
  have hQ := central_EBC hb hb1 hl hl1 h.row.Q_central h.Q_below_CE
  obtain ⟨hTx, -, -, hTy0, -⟩ := right_facts hb hb1 h.row.T_mem h.row.T_right
  obtain ⟨hSx, -, -, hSy0, -⟩ := right_facts hb hb1 h.row.S_mem h.row.S_right
  have hSCE := right_below_CE (l := l) hb hb1 hl h.row.S_mem h.row.S_right
  have z0 : ∀ X Y : Point, sarea X Y Y = 0 := fun X Y => by unfold sarea; ring
  have z1 : ∀ X Y : Point, sarea X Y X = 0 := fun X Y => by unfold sarea; ring
  -- `L(C) > 0`
  have hLC : 0 < sarea Q T ptC := by
    rw [← sarea_cycle]
    refine pos_of_inside hQ ?_ ?_ (z0 T ptC).ge (Or.inl ?_) <;> rw [sarea_cycle]
    · rw [sarea_swap₂₃]; linarith [h.T_below_CE]
    · exact h.row.T_right.le
    · rw [sarea_swap₂₃]; linarith [h.T_below_CE]
  -- `L(B) < 0`
  have hBTE : 0 < sarea (ptB b) T (ptE l) := by
    simp only [sarea, ptE, ptB]; nlinarith
  have hLB : sarea Q T (ptB b) < 0 := by
    have : 0 < sarea (ptB b) T Q :=
      pos_of_inside hQ hBTE.le (z1 (ptB b) T).ge h.row.T_right.le (Or.inl hBTE)
    rw [show sarea Q T (ptB b) = -sarea (ptB b) T Q by unfold sarea; ring]; linarith
  -- `[BSQ] > 0` and `[SCQ] > 0`
  have hEBS : 0 < sarea (ptE l) (ptB b) S := by simp only [sarea, ptE, ptB]; nlinarith
  have hBSQ : 0 < sarea (ptB b) S Q := by
    refine pos_of_inside hQ ?_ (z1 (ptB b) S).ge h.row.S_right.le (Or.inr (Or.inr h.row.S_right))
    rw [sarea_cycle]; exact hEBS.le
  have hESC : 0 < sarea (ptE l) S ptC := by rw [sarea_swap₂₃]; linarith
  have hSCQ : 0 < sarea S ptC Q := by
    refine pos_of_inside hQ ?_ ?_ (z0 S ptC).ge (Or.inl ?_)
    · rw [sarea_cycle]; exact hESC.le
    · rw [sarea_cycle]; exact h.row.S_right.le
    · rw [sarea_cycle]; exact hESC
  have hCEQ : 0 < sarea ptC (ptE l) Q := by rw [sarea_swap₁₂]; linarith [h.Q_below_CE]
  have hCET : 0 < sarea ptC (ptE l) T := by rw [sarea_swap₁₂]; linarith [h.T_below_CE]
  -- `L(S) < 0`
  have nLS : sarea Q T S ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 7
  have hLS : sarea Q T S < 0 := by
    rcases lt_or_gt_of_ne nLS with hh | hh
    · exact hh
    exfalso
    have zQ : sarea Q T Q = 0 := z1 Q T
    have zT : sarea Q T T = 0 := z0 Q T
    have nESQ : sarea (ptE l) S Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 7 5
    have nEST : sarea (ptE l) S T ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 7 8
    have hQS : InTriangle Q (ptE l) (ptB b) S := by
      refine ⟨hQ.1, hBSQ, ?_⟩
      rcases lt_or_gt_of_ne nESQ with h' | h'
      · rw [sarea_swap₁₂]; linarith
      · have hin : InTriangle Q (ptE l) S ptC := ⟨h', hSCQ, hCEQ⟩
        have := pos_of_inside hin h.QTE_pos.le hh.le hLC.le (Or.inl h.QTE_pos)
        linarith
    have hTS : InTriangle T (ptE l) (ptB b) S := by
      refine ⟨by simp only [sarea, ptE, ptB]; nlinarith, h.cell.2.1, ?_⟩
      rcases lt_or_gt_of_ne nEST with h' | h'
      · rw [sarea_swap₁₂]; linarith
      · have hin : InTriangle T (ptE l) S ptC := ⟨h', h.cell.2.2.1, hCET⟩
        have := pos_of_inside hin h.QTE_pos.le hh.le hLC.le (Or.inl h.QTE_pos)
        linarith
    have h2 : Kc * (8 / 73) ≤ sarea (ptE l) (ptB b) S :=
      two_inside (by norm_num) hm 2 3 7 5 8 (by decide) hQS hTS
    obtain ⟨-, h3, h4, -, -, -⟩ := claim_EBS h.row h.min
    have : (13 / 16 : ℝ) < Kc * (8 / 73) := Kc_s_gt
    linarith
  refine ⟨h.QTE_pos, hLC, hLB, hLS, ?_, ?_, h.cell.2.2.1⟩
  · rw [← sarea_cycle]; exact hLC
  · rw [sarea_swap₂₃]; linarith

/-- `E` is on the inner side of the hull edge `RS`: `[RSE] = [RSB] + (k - r)λ + (t - u)b > 0`. -/
theorem RSE_pos (h : Row123 l b P Q R S T) (hq : QuadHull (ptB b) R S ptC T) :
    0 < sarea R S (ptE l) := by
  obtain ⟨-, -, hrk, -, hu0, hut, -⟩ := UnbalancedCellI.claim_order h hq
  have e : sarea R S (ptE l) = sarea (ptB b) R S + (S.1 - R.1) * l + (S.2 - R.2) * b := by
    simp only [sarea, ptE, ptB]; ring
  rw [e]
  nlinarith [hq.1.1, mul_pos (sub_pos.2 hrk) h.l_pos, mul_pos (sub_pos.2 hut) h.b_pos]

/-- The inner facts of the upper-pair placement used by §§1-4. -/
theorem upper_facts (h : UpperPairSetting l b P Q R S T) :
    InTriangle Q (ptE l) (ptB b) ptC ∧ 0 < sarea (ptE l) R ptC ∧ 0 < sarea (ptE l) S ptC ∧
      0 < sarea R ptC Q ∧ 0 < sarea S ptC Q ∧ 0 < sarea ptC (ptE l) Q ∧
      0 < sarea ptC (ptE l) T ∧ 0 < sarea (ptE l) R T := by
  have hb := h.row.b_pos
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hQ := central_EBC hb hb1 hl hl1 h.row.Q_central h.Q_below_CE
  have hERC : 0 < sarea (ptE l) R ptC := by
    have := right_below_CE (l := l) hb hb1 hl h.row.R_mem h.row.R_right
    rw [sarea_swap₂₃]; linarith
  have hESC : 0 < sarea (ptE l) S ptC := by
    have := right_below_CE (l := l) hb hb1 hl h.row.S_mem h.row.S_right
    rw [sarea_swap₂₃]; linarith
  have z0 : ∀ X Y : Point, sarea X Y Y = 0 := fun X Y => by unfold sarea; ring
  have z1 : ∀ X Y : Point, sarea X Y X = 0 := fun X Y => by unfold sarea; ring
  have hRCQ : 0 < sarea R ptC Q := by
    refine pos_of_inside hQ ?_ ?_ (z0 R ptC).ge (Or.inl ?_)
    · rw [sarea_cycle]; exact hERC.le
    · rw [sarea_cycle]; exact h.row.R_right.le
    · rw [sarea_cycle]; exact hERC
  have hSCQ : 0 < sarea S ptC Q := by
    refine pos_of_inside hQ ?_ ?_ (z0 S ptC).ge (Or.inl ?_)
    · rw [sarea_cycle]; exact hESC.le
    · rw [sarea_cycle]; exact h.row.S_right.le
    · rw [sarea_cycle]; exact hESC
  have hCEQ : 0 < sarea ptC (ptE l) Q := by rw [sarea_swap₁₂]; linarith [h.Q_below_CE]
  have hCET : 0 < sarea ptC (ptE l) T := by rw [sarea_swap₁₂]; linarith [h.T_below_CE]
  obtain ⟨-, -, hTy1, -, -⟩ := right_facts hb hb1 h.row.T_mem h.row.T_right
  have hTDRC : InTriangle T ptD R ptC :=
    ⟨h.T_above_DR, h.cell.1.2.1, by simp only [sarea, ptC, ptD]; nlinarith⟩
  have hRx := (right_facts hb hb1 h.row.R_mem h.row.R_right).1
  have hERT : 0 < sarea (ptE l) R T := by
    refine pos_of_inside hTDRC ?_ (z0 (ptE l) R).ge hERC.le (Or.inr (Or.inr hERC))
    simp only [sarea, ptE, ptD]; nlinarith
  exact ⟨hQ, hERC, hESC, hRCQ, hSCQ, hCEQ, hCET, hERT⟩

/-- **Claim** (`UNBALANCED_FINAL_UPPER_PAIR:claim-sector`), equations (2)-(3). If `Q` is above
`ES`, then `T` is above `ES` too, `Q, T` are inside both `ECR` and `ECS` (the `EC`-sector of
`ERSC`; counterclockwise `E, R, C` and `E, S, C`), `A, B₁ ≥ Ks > 13/16`, `J ≥ A + s`,
`AB₁ - s(A + B₁) > 0`, `[AB₁ - s(A + B₁)]² ≥ 4sJAB₁`, and so `F(A, B₁) ≥ 0` (`s = 8/73`).
`hand/UNBALANCED_FINAL_UPPER_PAIR.md`, lines 71-108.
Uses: UNBALANCED_FINAL_UPPER_PAIR:claim-CQS, FOUR_INTERIOR_QUADRILATERALS:claim-(4),
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_sector (h : UpperPairSetting l b P Q R S T) (hQ : 0 < sarea (ptE l) S Q) :
    let s : ℝ := 8 / 73
    let A := sarea (ptE l) R ptC
    let B₁ := sarea (ptE l) S ptC
    let J := sarea (ptE l) R ptC + sarea R S ptC
    0 < sarea (ptE l) S T ∧ InTriangle Q (ptE l) R ptC ∧ InTriangle Q (ptE l) S ptC ∧
      InTriangle T (ptE l) R ptC ∧ InTriangle T (ptE l) S ptC ∧
      Kc * s ≤ A ∧ Kc * s ≤ B₁ ∧ 13 / 16 < Kc * s ∧ A + s ≤ J ∧
      0 < A * B₁ - s * (A + B₁) ∧ 4 * s * J * A * B₁ ≤ (A * B₁ - s * (A + B₁)) ^ 2 ∧
      0 ≤ fFn s A B₁ := by
  intro s A B₁ J
  obtain ⟨hQ', hERC, hESC, hRCQ, hSCQ, hCEQ, hCET, hERT⟩ := upper_facts h
  obtain ⟨hLE, hLC, -, -, hTCQS⟩ := claim_CQS h
  have hm : (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [h.min]
  have hEST : 0 < sarea (ptE l) S T :=
    pos_of_inside hTCQS hESC.le hQ.le (by unfold sarea; ring_nf; rfl) (Or.inl hESC)
  have hQERC : InTriangle Q (ptE l) R ptC := ⟨h.Q_above_ER, hRCQ, hCEQ⟩
  have hQESC : InTriangle Q (ptE l) S ptC := ⟨hQ, hSCQ, hCEQ⟩
  have hTERC : InTriangle T (ptE l) R ptC := ⟨hERT, h.cell.1.2.1, hCET⟩
  have hTESC : InTriangle T (ptE l) S ptC := ⟨hEST, h.cell.2.2.1, hCET⟩
  have hKA : Kc * (8 / 73) ≤ sarea (ptE l) R ptC :=
    two_inside (by norm_num) hm 2 6 1 5 8 (by decide) hQERC hTERC
  have hKB : Kc * (8 / 73) ≤ sarea (ptE l) S ptC :=
    two_inside (by norm_num) hm 2 7 1 5 8 (by decide) hQESC hTESC
  have hK := Kc_s_gt
  have hRSC : 8 / 73 ≤ sarea R S ptC := ge_of_pos (abs_ge hm 6 7 1) h.quad.1.2.1
  -- the sector inequality (4) in the quadrilateral `C, E, R, S`
  have eCER : sarea ptC (ptE l) R = sarea (ptE l) R ptC := by unfold sarea; ring
  have eCES : sarea ptC (ptE l) S = sarea (ptE l) S ptC := by unfold sarea; ring
  have eCRS : sarea ptC R S = sarea R S ptC := by unfold sarea; ring
  have eERS : sarea (ptE l) R S = sarea R S (ptE l) := by unfold sarea; ring
  have eSCE : sarea S ptC (ptE l) = sarea (ptE l) S ptC := by unfold sarea; ring
  have hq4 : ConvexQuad ptC (ptE l) R S := ⟨by rw [eCER]; exact hERC,
    by rw [eERS]; exact RSE_pos h.row h.quad, h.quad.1.2.1, by rw [eSCE]; exact hESC⟩
  have hsub : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptC, ptE l, R, S, Q, T] :=
    hm.trans (TypeII.min_le_min_reindex (by norm_num) _ _ ![1, 2, 6, 7, 5, 8] (by decide)
      (by funext i; fin_cases i <;> rfl))
  obtain ⟨k1, k2⟩ := sector_same (by norm_num) hq4 ⟨hCEQ, h.Q_above_ER, hRCQ⟩ ⟨hCEQ, hQ, hSCQ⟩
    ⟨hCET, hERT, h.cell.1.2.1⟩ ⟨hCET, hEST, h.cell.2.2.1⟩ hsub (mul_pos hLC hLE)
  rw [eCER, eCES] at k1 k2
  rw [eCRS] at k2
  have hX : 0 < sarea (ptE l) R ptC * sarea (ptE l) S ptC -
      8 / 73 * (sarea (ptE l) R ptC + sarea (ptE l) S ptC) := by linarith
  have hJ : 4 * (8 / 73) * (sarea (ptE l) R ptC + sarea R S ptC) * sarea (ptE l) R ptC *
      sarea (ptE l) S ptC ≤ (sarea (ptE l) R ptC * sarea (ptE l) S ptC -
        8 / 73 * (sarea (ptE l) R ptC + sarea (ptE l) S ptC)) ^ 2 := by nlinarith
  refine ⟨hEST, hQERC, hQESC, hTERC, hTESC, hKA, hKB, hK, show sarea (ptE l) R ptC + 8 / 73 ≤
    sarea (ptE l) R ptC + sarea R S ptC by linarith, hX, hJ, ?_⟩
  show 0 ≤ fFn (8 / 73) (sarea (ptE l) R ptC) (sarea (ptE l) S ptC)
  unfold fFn
  have hAB : 0 < sarea (ptE l) R ptC * sarea (ptE l) S ptC := mul_pos hERC hESC
  nlinarith [mul_le_mul_of_nonneg_left (show sarea (ptE l) R ptC + 8 / 73 ≤
    sarea (ptE l) R ptC + sarea R S ptC by linarith) (by positivity :
      (0 : ℝ) ≤ 4 * (8 / 73) * (sarea (ptE l) R ptC * sarea (ptE l) S ptC))]

/-- The scalar part of §3 (part of UNBALANCED_FINAL_UPPER_PAIR:claim-z), with `z = 1 - t`,
`s = 8/73`: from `bq ≥ s`, `[CRS] ≥ s`, `[BRS] ≥ s` and `B₁ = 1 - t - q(1-k) > 13/16`. -/
theorem z_key {q b r z : ℝ} (hq0 : 0 < q) (hbq : 8 / 73 ≤ b * q) (hz0 : 0 < z) (hz1 : z < 1)
    (hLz : 8 / 73 ≤ (1 - r) * z) (hrb : 8 / 73 ≤ (r - b) * (1 - z)) :
    8 / 73 * (z * (1 - z)) ≤ q * (z * (1 - z) - 8 / 73) := by
  have a := mul_nonneg (sub_nonneg.2 hrb) (mul_pos hq0 hz0).le
  have b' := mul_nonneg (sub_nonneg.2 hLz) (mul_pos hq0 (by linarith : (0 : ℝ) < 1 - z)).le
  have c := mul_nonneg (sub_nonneg.2 hbq) (mul_pos hz0 (by linarith : (0 : ℝ) < 1 - z)).le
  linarith

theorem z_range {q z : ℝ} (hq0 : 0 < q) (hq1 : q < 1) (hz0 : 13 / 16 < z) (hz1 : z < 1)
    (key : 8 / 73 * (z * (1 - z)) ≤ q * (z * (1 - z) - 8 / 73)) :
    0 < z * (1 - z) - 8 / 73 ∧ z < 6 / 7 := by
  have hzz : 0 < z * (1 - z) := mul_pos (by linarith) (by linarith)
  have hD : 0 < z * (1 - z) - 8 / 73 := by
    by_contra hD; push Not at hD
    have := mul_nonpos_iff.2 (Or.inl ⟨hq0.le, hD⟩)
    linarith
  have h2 : q * (z * (1 - z) - 8 / 73) < z * (1 - z) - 8 / 73 := by nlinarith
  refine ⟨hD, ?_⟩
  by_contra h6; push Not at h6
  nlinarith

theorem z_abar {q r u z : ℝ} (hq0 : 0 < q) (hz0 : 0 < z) (hu : 0 ≤ u)
    (hLz : 8 / 73 ≤ (1 - r) * z) (hD : 0 < z * (1 - z) - 8 / 73)
    (key : 8 / 73 * (z * (1 - z)) ≤ q * (z * (1 - z) - 8 / 73)) :
    (8 / 73) ^ 2 * (1 - z) ≤ (1 - (1 - u - q * (1 - r))) * (z * (1 - z) - 8 / 73) := by
  have h1 : z * ((8 / 73) ^ 2 * (1 - z)) ≤ z * (q * (1 - r) * (z * (1 - z) - 8 / 73)) := by
    have a := mul_le_mul_of_nonneg_right hLz (mul_pos hq0 hD).le
    have b := mul_le_mul_of_nonneg_left key (by norm_num : (0 : ℝ) ≤ 8 / 73)
    nlinarith
  have h2 := le_of_mul_le_mul_left h1 hz0
  nlinarith [mul_nonneg hu hD.le]

/-- The scalar part of §3 (part of UNBALANCED_FINAL_UPPER_PAIR:claim-z), with `z = 1 - t`,
`s = 8/73`: from `bq ≥ s`, `[CRS] ≥ s`, `[BRS] ≥ s` and `B₁ = 1 - t - q(1-k) > 13/16`. -/
theorem z_scalar {q b r u k t : ℝ} (hq0 : 0 < q) (hq1 : q < 1) (hbq : 8 / 73 ≤ b * q)
    (hRSC : 8 / 73 ≤ (1 - r) * (1 - t) - (1 - k) * (1 - u))
    (hBRS : 8 / 73 ≤ (r - b) * t - u * (k - b)) (hu : 0 ≤ u) (hbk : b < k) (hk1 : k ≤ 1)
    (hu1 : u ≤ 1) (_ht1 : t < 1) (ht0 : 0 < t) (hB : 13 / 16 < 1 - t - q * (1 - k)) :
    (1 - t) < 6 / 7 ∧ 1 - u - q * (1 - r) ≤ aBar (8 / 73) (1 - t) ∧
      1 - t - q * (1 - k) ≤ 1 - t ∧ 13 / 16 < 1 - t ∧
      ((1 - t ≤ 5 / 6 ∧ 1 - u - q * (1 - r) < 19 / 20 ∧ 1 - t - q * (1 - k) ≤ 5 / 6) ∨
        (5 / 6 ≤ 1 - t ∧ 1 - u - q * (1 - r) < 15 / 16 ∧ 1 - t - q * (1 - k) < 6 / 7)) := by
  have hBz : 1 - t - q * (1 - k) ≤ 1 - t := by nlinarith
  have hz1 : 13 / 16 < 1 - t := by linarith
  have hLz : 8 / 73 ≤ (1 - r) * (1 - t) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hk1) (by linarith : (0 : ℝ) ≤ 1 - u)]
  have hrb : 8 / 73 ≤ (r - b) * (1 - (1 - t)) := by
    rw [show 1 - (1 - t) = t by ring]; nlinarith [mul_nonneg hu (sub_nonneg.2 hbk.le)]
  have key := z_key hq0 hbq (by linarith) (by linarith) hLz hrb
  obtain ⟨hD, hz67⟩ := z_range hq0 hq1 hz1 (by linarith) key
  have hAD := z_abar hq0 (by linarith) hu hLz hD key
  have hAbar : 1 - u - q * (1 - r) ≤ aBar (8 / 73) (1 - t) := by
    unfold aBar
    have : (8 / 73) ^ 2 * (1 - (1 - t)) / ((1 - t) * (1 - (1 - t)) - 8 / 73) ≤
        1 - (1 - u - q * (1 - r)) := by
      rw [div_le_iff₀ hD]; linarith
    linarith
  refine ⟨hz67, hAbar, hBz, hz1, ?_⟩
  set z := 1 - t
  set A := 1 - u - q * (1 - r)
  rcases le_total z (5 / 6) with hz56 | hz56
  · left
    refine ⟨hz56, ?_, by linarith⟩
    have hf : z * (1 - z) - 8 / 73 < 20 * ((8 / 73) ^ 2 * (1 - z)) := by
      nlinarith [sq_nonneg (z - 13 / 16)]
    by_contra hA; push Not at hA
    nlinarith [mul_le_mul_of_nonneg_right (by linarith : 1 - A ≤ 1 / 20) hD.le]
  · right
    refine ⟨hz56, ?_, by linarith⟩
    have hf : z * (1 - z) - 8 / 73 < 16 * ((8 / 73) ^ 2 * (1 - z)) := by
      nlinarith [sq_nonneg (z - 5 / 6)]
    by_contra hA; push Not at hA
    nlinarith [mul_le_mul_of_nonneg_right (by linarith : 1 - A ≤ 1 / 16) hD.le]

/-- **Claim** (`UNBALANCED_FINAL_UPPER_PAIR:claim-z`), equations (4)-(6). If `Q` is above `ES`,
then with `z = 1 - t`, `ρ = 13/16`, `s = 8/73`: `ρ < z < 6/7`, `A ≤ Ā(z)`, `B₁ ≤ z`, and either
`z ≤ 5/6`, `A < 19/20`, `B₁ ≤ 5/6`, or `z ≥ 5/6`, `A < 15/16`, `B₁ < 6/7`.
`hand/UNBALANCED_FINAL_UPPER_PAIR.md`, lines 110-179.
Uses: UNBALANCED_FINAL_UPPER_PAIR:claim-sector. -/
theorem claim_z (h : UpperPairSetting l b P Q R S T) (hQ : 0 < sarea (ptE l) S Q) :
    let s : ℝ := 8 / 73
    let z := 1 - S.2
    let A := sarea (ptE l) R ptC
    let B₁ := sarea (ptE l) S ptC
    13 / 16 < z ∧ z < 6 / 7 ∧ A ≤ aBar s z ∧ B₁ ≤ z ∧
      ((z ≤ 5 / 6 ∧ A < 19 / 20 ∧ B₁ ≤ 5 / 6) ∨ (5 / 6 ≤ z ∧ A < 15 / 16 ∧ B₁ < 6 / 7)) := by
  intro s z A B₁
  obtain ⟨-, -, -, -, -, -, hKB, hK, -, -, -, -⟩ := claim_sector h hQ
  have hm : (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [h.min]
  have hDEB := TypeII.s_le_DEB (row_data h.row) hm
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.claim_order h.row h.quad
  have hRSC : 8 / 73 ≤ sarea R S ptC := ge_of_pos (abs_ge hm 6 7 1) h.quad.1.2.1
  have hBRS : 8 / 73 ≤ sarea (ptB b) R S := ge_of_pos (abs_ge hm 3 6 7) h.quad.1.1
  have eRSC : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - S.1) * (1 - R.2) := by
    simp only [sarea, ptC]; ring
  have eBRS : sarea (ptB b) R S = (R.1 - b) * S.2 - R.2 * (S.1 - b) := by
    simp only [sarea, ptB]; ring
  have eA : sarea (ptE l) R ptC = 1 - R.2 - (1 - l) * (1 - R.1) := by
    simp only [sarea, ptE, ptC]; ring
  have eB : sarea (ptE l) S ptC = 1 - S.2 - (1 - l) * (1 - S.1) := by
    simp only [sarea, ptE, ptC]; ring
  rw [eRSC] at hRSC
  rw [eBRS] at hBRS
  rw [eB] at hKB
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb := h.row.b_pos
  obtain ⟨c1, c2, c3, c4, c5⟩ := z_scalar (q := 1 - l) (by linarith) (by linarith) hDEB hRSC hBRS
    hu0 (by linarith) hk1 (by linarith) ht1 (by linarith) (by linarith [hK, hKB])
  refine ⟨by simp only [z]; linarith [hK, hKB], c1, ?_, ?_, ?_⟩
  · simp only [A, z]; rw [eA]; exact c2
  · simp only [B₁, z]; rw [eB]; exact c3
  · simp only [A, B₁, z]; rw [eA, eB]; exact c5

/-- Larger-root monotonicity of an upward quadratic: if `f(x₀) < 0 ≤ f(x)` with `x₀ < x`, then
`f ≥ 0` beyond `x`. -/
theorem quad_mono {c d e x₀ x x' : ℝ} (hc : 0 ≤ c) (h0 : c * x₀ ^ 2 + d * x₀ + e < 0)
    (h1 : 0 ≤ c * x ^ 2 + d * x + e) (hx : x₀ < x) (hx' : x ≤ x') :
    0 ≤ c * x' ^ 2 + d * x' + e := by
  have k : 0 < (x - x₀) * (c * (x + x₀) + d) := by nlinarith
  have k2 : 0 < c * (x + x₀) + d := pos_of_mul_pos_right k (by linarith)
  nlinarith [mul_nonneg (sub_nonneg.2 hx') (by nlinarith : (0 : ℝ) ≤ c * (x' + x) + d)]

/-- The two rectangles of §4 contradict (3) (part of UNBALANCED_FINAL_UPPER_PAIR:Theorem1):
increase `B₁`, then `A`, to the corner, where `F < 0` (7). -/
theorem final_rect {A B : ℝ} (hA : 13 / 16 < A) (hB : 13 / 16 < B)
    (hX : 0 < A * B - 8 / 73 * (A + B)) (hF : 0 ≤ fFn (8 / 73) A B)
    (hr : (A < 19 / 20 ∧ B ≤ 5 / 6) ∨ (A < 15 / 16 ∧ B < 6 / 7)) : False := by
  set s : ℝ := 8 / 73 with hs
  have key : ∀ A' B' : ℝ, A < A' → B ≤ B' → fFn s A' B' < 0 →
      A' * B' - s * (A' + B') > 0 → False := by
    intro A' B' hA' hB' hcorner _
    -- increase `B` to `B'`
    have eB : ∀ x, fFn s A x = (A - s) ^ 2 * x ^ 2 +
        (-(2 * s * A * (A - s) + 4 * s * A * (A + s))) * x + s ^ 2 * A ^ 2 := by
      intro x; unfold fFn; ring
    have hAs : 0 < A - s := by rw [hs]; linarith
    have hx0 : s * A / (A - s) < B := by rw [div_lt_iff₀ hAs]; linarith
    have hF0 : fFn s A (s * A / (A - s)) < 0 := by
      have : fFn s A (s * A / (A - s)) = -(4 * s * (A + s) * A * (s * A / (A - s))) := by
        unfold fFn; field_simp; ring
      rw [this]
      have h1 : 0 < s := by rw [hs]; norm_num
      have h2 : 0 < s * A / (A - s) := div_pos (mul_pos h1 (by linarith)) hAs
      have := mul_pos (mul_pos (mul_pos h1 (by linarith : (0 : ℝ) < A + s))
        (by linarith : (0 : ℝ) < A)) h2
      linarith
    have hFB' : 0 ≤ fFn s A B' := by
      rw [eB] at hF hF0 ⊢
      exact quad_mono (sq_nonneg _) hF0 hF hx0 hB'
    -- increase `A` to `A'`
    have hB's : 0 < B' - s := by rw [hs]; linarith
    have eA : ∀ x, fFn s x B' = ((B' - s) ^ 2 - 4 * s * B') * x ^ 2 +
        (-(2 * s * B' * (B' - s) + 4 * s ^ 2 * B')) * x + s ^ 2 * B' ^ 2 := by
      intro x; unfold fFn; ring
    have hc : 0 ≤ (B' - s) ^ 2 - 4 * s * B' := by rw [hs]; nlinarith
    have hXB' : 0 < A * B' - s * (A + B') := by nlinarith
    have hx0' : s * B' / (B' - s) < A := by rw [div_lt_iff₀ hB's]; linarith
    have hF0' : fFn s (s * B' / (B' - s)) B' < 0 := by
      have : fFn s (s * B' / (B' - s)) B' =
          -(4 * s * (s * B' / (B' - s) + s) * (s * B' / (B' - s)) * B') := by
        unfold fFn; field_simp; ring
      rw [this]
      have h2 : 0 < s := by rw [hs]; norm_num
      have h1 : 0 < s * B' / (B' - s) := div_pos (mul_pos h2 (by linarith)) hB's
      have h3 : 0 < B' := by linarith
      have := mul_pos (mul_pos (mul_pos h2 (by linarith : 0 < s * B' / (B' - s) + s)) h1) h3
      linarith
    have hFA' : 0 ≤ fFn s A' B' := by
      rw [eA] at hFB' hF0' ⊢
      exact quad_mono hc hF0' hFB' hx0' hA'.le
    linarith
  rcases hr with ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact key (19 / 20) (5 / 6) h1 h2 (by rw [hs]; unfold fFn; norm_num) (by rw [hs]; norm_num)
  · exact key (15 / 16) (6 / 7) h1 h2.le (by rw [hs]; unfold fFn; norm_num) (by rw [hs]; norm_num)

/-- **Theorem 1** (`UNBALANCED_FINAL_UPPER_PAIR:Theorem1`). The point `Q` cannot be above `ES`.
Thus `Q` is below `ES` and strictly inside `ERS` (counterclockwise `E, R, S`).
`hand/UNBALANCED_FINAL_UPPER_PAIR.md`, lines 22-27, 181-213.
Uses: UNBALANCED_FINAL_UPPER_PAIR:claim-sector, UNBALANCED_FINAL_UPPER_PAIR:claim-z. -/
theorem theorem1 (h : UpperPairSetting l b P Q R S T) :
    sarea (ptE l) S Q < 0 ∧ InTriangle Q (ptE l) R S := by
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := by linarith [h.min]
  obtain ⟨hQ', -, -, -, -, -, -, -⟩ := upper_facts h
  have nESQ : sarea (ptE l) S Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 7 5
  have hESQ : sarea (ptE l) S Q < 0 := by
    rcases lt_or_gt_of_ne nESQ with hh | hh
    · exact hh
    exfalso
    obtain ⟨-, -, -, -, -, hKA, hKB, hK, -, hX, -, hF⟩ := claim_sector h hh
    obtain ⟨-, -, -, -, hrect⟩ := claim_z h hh
    exact final_rect (by linarith) (by linarith) hX hF (by
      rcases hrect with ⟨-, h1, h2⟩ | ⟨-, h1, h2⟩
      · exact Or.inl ⟨h1, h2⟩
      · exact Or.inr ⟨h1, h2⟩)
  refine ⟨hESQ, h.Q_above_ER, ?_, by rw [sarea_swap₁₂]; linarith⟩
  have hRSE := RSE_pos h.row h.quad
  have hRSB : 0 < sarea R S (ptB b) := by rw [sarea_cycle]; exact h.quad.1.1
  exact pos_of_inside hQ' hRSE.le hRSB.le h.quad.1.2.1.le (Or.inl hRSE)

end Heilbronn.UnbalancedFinalUpperPair
