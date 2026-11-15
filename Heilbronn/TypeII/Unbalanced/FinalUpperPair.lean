module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.FinalNegativeLine

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

open UnbalancedRightHull

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
      AtMostOneInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) S := sorry

/-- **Claim** (`UNBALANCED_FINAL_UPPER_PAIR:claim-CQS`). With `L(X) = [QTX]`: `L(E), L(C) > 0`,
`L(B) < 0` and `L(S) < 0`; hence `T` is strictly inside `CQS` (counterclockwise `C, Q, S`).
`hand/UNBALANCED_FINAL_UPPER_PAIR.md`, lines 56-69.
Uses: UNBALANCED_FINAL_UPPER_PAIR:claim-EBS. -/
theorem claim_CQS (h : UpperPairSetting l b P Q R S T) :
    0 < sarea Q T (ptE l) ∧ 0 < sarea Q T ptC ∧ sarea Q T (ptB b) < 0 ∧ sarea Q T S < 0 ∧
      InTriangle T ptC Q S := sorry

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
      0 ≤ fFn s A B₁ := sorry

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
      ((z ≤ 5 / 6 ∧ A < 19 / 20 ∧ B₁ ≤ 5 / 6) ∨ (5 / 6 ≤ z ∧ A < 15 / 16 ∧ B₁ < 6 / 7)) :=
  sorry

/-- **Theorem 1** (`UNBALANCED_FINAL_UPPER_PAIR:Theorem1`). The point `Q` cannot be above `ES`.
Thus `Q` is below `ES` and strictly inside `ERS` (counterclockwise `E, R, S`).
`hand/UNBALANCED_FINAL_UPPER_PAIR.md`, lines 22-27, 181-213.
Uses: UNBALANCED_FINAL_UPPER_PAIR:claim-sector, UNBALANCED_FINAL_UPPER_PAIR:claim-z. -/
theorem theorem1 (h : UpperPairSetting l b P Q R S T) :
    sarea (ptE l) S Q < 0 ∧ InTriangle Q (ptE l) R S := sorry

end Heilbronn.UnbalancedFinalUpperPair
