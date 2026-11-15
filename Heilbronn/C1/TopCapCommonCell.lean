module

public import Heilbronn.C1.TopCapOfSplit

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

open Heilbronn.C1 Heilbronn.C1TopCapOfSplit

/-- `G(p, z) = [p - 2s - sz]² - 4sp(1 + z)` of (3), `s = 8/73`. -/
def endpointG (p z : ℝ) : ℝ := (p - 2 * (8 / 73) - 8 / 73 * z) ^ 2 - 4 * (8 / 73) * p * (1 + z)

/-- `𝒜(p, c, z) = (c - p)(1 - s/p + ρ(1 - c)/(cp)) + zc(1 - ρ/p)` of (6). -/
def capBound (p c z : ℝ) : ℝ :=
  (c - p) * (1 - 8 / 73 / p + 49 / 60 * (1 - c) / (c * p)) + z * c * (1 - 49 / 60 / p)

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
  sorry

/-- **Claim** (`C1_TOP_CAP_COMMON_CELL:eq6`). In the common-cell placement (any pair-line case),
the cap cost `α = -[HFX]` satisfies `s ≤ α ≤ 𝒜(p, c, z)` (6), `p = hc`, `z = hf/c`, `s = 8/73`.
`hand/C1_TOP_CAP_COMMON_CELL.md`, lines 136-168.
Uses: C1_TOP_CAP_OF_SPLIT:claim-x-lt-c, C1_TOP_CAP_OF_SPLIT:eq1. -/
theorem eq6 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    8 / 73 ≤ -sarea (ptH h) (ptF f) X ∧
      -sarea (ptH h) (ptF f) X ≤ capBound (h * c) c (h * f / c) := by
  sorry

/-- **Theorem** (`C1_TOP_CAP_COMMON_CELL:Theorem-C`, first of the two "Theorems"). In the
common-cell placement, the line `LM` cannot isolate `C` from `O, H, F`.
`hand/C1_TOP_CAP_COMMON_CELL.md`, lines 42-44 and 170-207.
Uses: C1_TOP_CAP_COMMON_CELL:eq2-5, C1_TOP_CAP_COMMON_CELL:eq6. -/
theorem theorem_C {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    ¬ Isolates L M (ptC c) ptO (ptH h) (ptF f) := by
  sorry

/-- **Theorem** (`C1_TOP_CAP_COMMON_CELL:Theorem-O`, second of the two "Theorems"). In the
common-cell placement, the line `LM` cannot isolate `O` from `C, H, F`.
`hand/C1_TOP_CAP_COMMON_CELL.md`, lines 42-44 and 209-419 (inequalities (7)–(11), the monotone
reduction to `h = p`, `c = 1`, and the quartics `P₁, P₂` on `[ρ, 89/100]` and `[89/100, 1]`).
Uses: C1_TOP_CAP_COMMON_CELL:eq6, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c. -/
theorem theorem_O {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    ¬ Isolates L M ptO (ptC c) (ptH h) (ptF f) := by
  sorry

end Heilbronn.C1TopCapCommonCell
