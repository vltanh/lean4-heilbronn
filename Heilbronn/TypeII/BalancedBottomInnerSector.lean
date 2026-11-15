module

public import Heilbronn.TypeII.TypeII

/-! # The bottom inner sector in the balanced Type-II case
(`hand/BALANCED_BOTTOM_INNER_SECTOR.md`)

Excludes the "below `ES`, below `LR`" cell of the final balanced placement of
`TYPE_II_COMPLETION.md` (the assignment `Q` at `ER`, `S` at `RC`), cited by
`TYPE_II_COMPLETION.md` §9.3 and Theorem 11. It uses eight of the nine points: `P` is not needed.

Setting (lines 9–46), self-contained and weaker than the final placement: `D = (0,1)`, `C = (1,1)`,
`E = (0,λ)`, `B = (b,0)`, `R = (r,u)` with `0 < b < 1`, `0 ≤ λ, u < 1`, `b < r ≤ 1`, and
`L = (l,h)`, `S = (z,t)`, `Q = (x,y)` in the square, with

1. `L` inside `DBE` and above `EC`;
2. `S` inside `BRC`;
3. `Q` central (`b(1-y) < x < b + (1-b)y`), `[ERQ] > 0`, `[EQS] > 0`, `[LQR] > 0` (1).

No `b ≤ 1/2`, no order between `q = 1 - λ` and `v = 1 - u`, and no `r = 1` are needed.

Results:

* `eq3` ((3)): the five-area cancellation `[BQL] + [BSQ] + [EQS] + [LQR] + [ERQ] = T`, free of `Q`;
* `eq8` ((8)): the weighted identity `K - 4/c = (1/(bw) - 4)(1 + 1/c) + (q-v)²(1-c)/(qvc)`;
* `mainTheorem` (**Theorem**): some triangle on `D, C, E, B, L, Q, R, S` has area `< 7/128`;
* `claim_variable_threshold` (remark): the least area is at most `(1/2)(1 - 2/√5)`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.BalancedBottomInnerSector

open Heilbronn.TypeII

/-- The placement hypotheses of `BALANCED_BOTTOM_INNER_SECTOR.md` (lines 9–46) for `R = (r,u)`
and `L, S, Q`.

Implicit in the manuscript: "`S` inside `BRC`" is read with the counterclockwise order `B, R, C`,
i.e. `R` is to the right of `BC` (as in the balanced placement); the proof uses `[BSC] > 0` and
`[RCS] > 0` ((2), (4)). -/
def BottomSetting (l b : ℝ) (L Q R S : Point) : Prop :=
  0 < b ∧ b < 1 ∧ 0 ≤ l ∧ l < 1 ∧ 0 ≤ R.2 ∧ R.2 < 1 ∧ b < R.1 ∧ R.1 ≤ 1 ∧
    L ∈ unitSquare ∧ S ∈ unitSquare ∧ Q ∈ unitSquare ∧
    InTriangle L ptD (ptE l) (ptB b) ∧ 0 < sarea (ptE l) ptC L ∧
    InTriangle S (ptB b) R ptC ∧
    0 < sarea ptD (ptB b) Q ∧ 0 < sarea (ptB b) ptC Q ∧
    0 < sarea (ptE l) R Q ∧ 0 < sarea (ptE l) Q S ∧ 0 < sarea L Q R

/-- **Equation (3)** (`BALANCED_BOTTOM_INNER_SECTOR:eq3`). The exact cancellation: for all points,
with `L = (l,h)`, `S = (z,t)`, `R = (r,u)`,
`[BQL] + [BSQ] + [EQS] + [LQR] + [ERQ] = (r-b)h + bt - λ(r-z) - ul`, which contains neither
coordinate of `Q`. `hand/BALANCED_BOTTOM_INNER_SECTOR.md`, lines 78–89. -/
theorem eq3 (l b : ℝ) (L Q R S : Point) :
    sarea (ptB b) Q L + sarea (ptB b) S Q + sarea (ptE l) Q S + sarea L Q R + sarea (ptE l) R Q =
      (R.1 - b) * L.2 + b * S.2 - l * (R.1 - S.1) - R.2 * L.1 := by
  sorry

/-- **Equation (8)** (`BALANCED_BOTTOM_INNER_SECTOR:eq8`). With `w = 1 - b`, `c = wq + bv` and
`K = w/b + b/w + 1/(bq) + 1/(wv) - v/q - q/v` (7), for positive `b, w, q, v, c`:
`K - 4/c = (1/(bw) - 4)(1 + 1/c) + (q-v)²(1-c)/(qvc)`. `hand/BALANCED_BOTTOM_INNER_SECTOR.md`,
lines 139–171. -/
theorem eq8 {b q v : ℝ} (hb : 0 < b) (hb1 : b < 1) (hq : 0 < q) (hv : 0 < v) :
    let w := 1 - b
    let c := w * q + b * v
    w / b + b / w + 1 / (b * q) + 1 / (w * v) - v / q - q / v - 4 / c =
      (1 / (b * w) - 4) * (1 + 1 / c) + (q - v) ^ 2 * (1 - c) / (q * v * c) := by
  sorry

/-- **Theorem** (`BALANCED_BOTTOM_INNER_SECTOR:Theorem`). Under the placement hypotheses, some
triangle on the eight points `D, C, E, B, L, Q, R, S` has area strictly less than `7/128` (hence
less than `A₀`): at doubled threshold `s = 7/64`, (3) gives `5s ≤ T`, while (5)–(8) and the
lower ear `[EBR] ≥ s` give `T ≤ 1 - 4s/(1-s) = 29/57 < 35/64`.
`hand/BALANCED_BOTTOM_INNER_SECTOR.md`, lines 48–189.

Uses: BALANCED_BOTTOM_INNER_SECTOR:eq3, BALANCED_BOTTOM_INNER_SECTOR:eq8. -/
theorem mainTheorem {l b : ℝ} {L Q R S : Point} (h : BottomSetting l b L Q R S) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, L, Q, R, S] < 7 / 128 := by
  sorry

/-- **Claim** (`BALANCED_BOTTOM_INNER_SECTOR:claim-variable-threshold`, made up; remark). The
same argument at a variable doubled threshold gives least area at most `(1/2)(1 - 2/√5)`, which
is less than `7/128`. Not used later. `hand/BALANCED_BOTTOM_INNER_SECTOR.md`, lines 191–200. -/
theorem claim_variable_threshold {l b : ℝ} {L Q R S : Point} (h : BottomSetting l b L Q R S) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, L, Q, R, S] ≤ (1 - 2 / Real.sqrt 5) / 2 ∧
      (1 - 2 / Real.sqrt 5) / 2 < (7 / 128 : ℝ) := by
  sorry

end Heilbronn.BalancedBottomInnerSector
