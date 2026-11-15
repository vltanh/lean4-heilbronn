module

public import Heilbronn.C1.MixedPentagon
public import Heilbronn.C1.TwoLowerSideCap
public import Heilbronn.C1.TopCapRadialSplit
public import Heilbronn.C1.TopCapSideEars
public import Heilbronn.C1.TopCapTriangularPair
public import Heilbronn.C1.TopCapCommonCell
public import Heilbronn.C1.TopCapContainmentPair

/-! # Completion of the C1 family with two lower points (`hand/C1_TWO_LOWER_COMPLETION.md`)

Role: on the primary route, `hand/UNRESTRICTED.md` row `n₀ = 2` (line 98) is closed by
**Theorem 2** (`theorem2`): every C1 configuration with exactly two of its four free points
inside `OHC` has an actual triangle of area below `A₀`. Theorem 1 (the final same-side one-cap
placement) is the last component of its assembly.

Setting (lines 3-16): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`,
`0 < f ≤ c ≤ 1`; least area at least `A₀`; `s = 8/73 < 2A₀`, `K = 4 + 2√3`, `ρ = 49/60 < Ks`.
Theorem 1 works in the common-cell placement `CommonCellSetting` (`L, M ∈ OHC ∩ OCF`, top-cap
`X = (x, Y)`, `P` in the pentagon above `HC`, `L ∈ OHX`, `M, P ∈ OCX`; (1)) with the pair-line
case putting `O, C` on one side of `LM` and `H, F` on the other (2).

Definitions: `xStar` (9), `capG0` (7), `capG1` (8), and the polynomial `quadP` of (10).

Results:
* `claim_CXL`: the orientation (2), `M, P` strictly inside `CXL`, and `[CXL] ≥ Ks` (4);
* `eq7_9`: `G₀, G₁ ≥ 0`, `x ≤ x*`, and both still hold at `x = x*`;
* `eq11`: `P(h, c, Y) < 0` on `[ρ, 1]³` (27 Bernstein coefficients);
* `theorem1` (**Theorem 1**): the final one-cap placement is impossible;
* `theorem2` (**Theorem 2**): the two-lower C1 class is excluded.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TwoLowerCompletion

open Heilbronn.C1 Heilbronn.C1TopCapOfSplit

/-- `x* = c + ((1 - c)Y - s)/h` of (9), `s = 8/73`. -/
def xStar (h c Y : ℝ) : ℝ := c + ((1 - c) * Y - 8 / 73) / h

/-- `G₀ = aT - sc(1 + Y)` of (7), with `a = x - fY`, `T = cY + s - ρ`. -/
def capG0 (c f x Y : ℝ) : ℝ := (x - f * Y) * (c * Y + 8 / 73 - 49 / 60) - 8 / 73 * c * (1 + Y)

/-- `G₁ = aU - s(1 + Y){(1 - h)(c - x) + fY}` of (8), with `a = x - fY`,
`U = (1 - h)(cY - ρ) + Y(hf - s)`. -/
def capG1 (h c f x Y : ℝ) : ℝ :=
  (x - f * Y) * ((1 - h) * (c * Y - 49 / 60) + Y * (h * f - 8 / 73)) -
    8 / 73 * (1 + Y) * ((1 - h) * (c - x) + f * Y)

/-- The polynomial `P = B² + 4hC₀` of (10), the maximum over `f` of `4h(G₁ + (5/4)G₀)` at
`x = x*`, where `U₀ = (1 - h)(cY - ρ) - sY`, `T = cY + s - ρ`,
`B = hx* - U₀ - s(1 + Y) - (5/4)T`,
`C₀ = x*(U₀ + (5/4)T) - s(1 + Y){(1 - h)(c - x*) + (5/4)c}`. -/
def quadP (h c Y : ℝ) : ℝ :=
  let U₀ := (1 - h) * (c * Y - 49 / 60) - 8 / 73 * Y
  let T := c * Y + 8 / 73 - 49 / 60
  let x := xStar h c Y
  let B := h * x - U₀ - 8 / 73 * (1 + Y) - 5 / 4 * T
  let C₀ := x * (U₀ + 5 / 4 * T) - 8 / 73 * (1 + Y) * ((1 - h) * (c - x) + 5 / 4 * c)
  B ^ 2 + 4 * h * C₀

/-- **Claim** (`C1_TWO_LOWER_COMPLETION:claim-CXL`, made-up id). In the common-cell placement with
`O, C` on one side of `LM` and `H, F` on the other: the orientation (2)
`[LMO], [LMC] < 0 < [LMH], [LMF]` holds; `M` and `P` are strictly inside the actual triangle
`CXL` (counterclockwise `C, X, L`); hence `[CXL] = (c - ℓ)Y - (c - x)y ≥ Ks > ρ` (4), with
`L = (ℓ, y)`, `X = (x, Y)`. `hand/C1_TWO_LOWER_COMPLETION.md`, lines 52-89.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c. -/
theorem claim_CXL {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hOC : SameSide L M ptO (ptC c)) (hHF : SameSide L M (ptH h) (ptF f))
    (hOH : OppSide L M ptO (ptH h)) :
    (sarea L M ptO < 0 ∧ sarea L M (ptC c) < 0 ∧ 0 < sarea L M (ptH h) ∧
        0 < sarea L M (ptF f)) ∧
      InTriangle M (ptC c) X L ∧ InTriangle P (ptC c) X L ∧
      sarea (ptC c) X L = (c - L.1) * X.2 - (c - X.1) * L.2 ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ sarea (ptC c) X L := by
  sorry

/-- **Claim** (`C1_TWO_LOWER_COMPLETION:eq7-9`). In the setting of `claim_CXL`, with
`X = (x, Y)`: the areas `OFL, HFL, OXL` give (5); `a = x - fY > 0`, `T = cY + s - ρ > 0`;
`G₀ ≥ 0` (7) and `G₁ ≥ 0` (8), with `U = (1 - h)(cY - ρ) + Y(hf - s) > 0`; `x ≤ x*` (9); and
since `∂G₀/∂x = T > 0` and `∂G₁/∂x = U + s(1 + Y)(1 - h) > 0`, both inequalities still hold at
`x = x*`. `hand/C1_TWO_LOWER_COMPLETION.md`, lines 91-160.
Uses: C1_TWO_LOWER_COMPLETION:claim-CXL. -/
theorem eq7_9 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hOC : SameSide L M ptO (ptC c)) (hHF : SameSide L M (ptH h) (ptF f))
    (hOH : OppSide L M ptO (ptH h)) :
    8 / 73 ≤ L.1 - f * L.2 ∧ 8 / 73 ≤ h * f + (1 - h) * L.1 - f * L.2 ∧
      8 / 73 ≤ X.1 * L.2 - X.2 * L.1 ∧
      0 < X.1 - f * X.2 ∧ 0 < c * X.2 + 8 / 73 - 49 / 60 ∧
      0 ≤ capG0 c f X.1 X.2 ∧ 0 ≤ capG1 h c f X.1 X.2 ∧
      0 < (1 - h) * (c * X.2 - 49 / 60) + X.2 * (h * f - 8 / 73) ∧
      X.1 ≤ xStar h c X.2 ∧
      0 ≤ capG0 c f (xStar h c X.2) X.2 ∧ 0 ≤ capG1 h c f (xStar h c X.2) X.2 := by
  sorry

/-- **Claim** (`C1_TWO_LOWER_COMPLETION:eq11`, made-up id). `P(h, c, Y) < 0` for
`ρ ≤ h, c, Y ≤ 1`: all 27 degree-`(2,2,2)` tensor Bernstein coefficients on the cube have maximum
`-124631/12278016` (11); checked by `hand/check_c1_two_lower_completion.py`. Since
`G₁ + (5/4)G₀ = -hY²f² + YBf + C₀` at `x = x*`, its maximum over `f` is `P/(4h) < 0`.
`hand/C1_TWO_LOWER_COMPLETION.md`, lines 162-234. -/
theorem eq11 (h c Y : ℝ) (hh : 49 / 60 ≤ h) (hh' : h ≤ 1) (hc : 49 / 60 ≤ c) (hc' : c ≤ 1)
    (hY : 49 / 60 ≤ Y) (hY' : Y ≤ 1) :
    quadP h c Y < 0 := by
  sorry

/-- **Theorem 1** (`C1_TWO_LOWER_COMPLETION:Theorem1`). The final one-cap placement with two
lower points is impossible: the common-cell placement with `O, C` on one side of `LM` and
`H, F` on the other. `hand/C1_TWO_LOWER_COMPLETION.md`, lines 18-19 and 29-234.
Uses: C1_TWO_LOWER_COMPLETION:claim-CXL, C1_TWO_LOWER_COMPLETION:eq7-9,
C1_TWO_LOWER_COMPLETION:eq11. -/
theorem theorem1 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hOC : SameSide L M ptO (ptC c)) (hHF : SameSide L M (ptH h) (ptF f))
    (hOH : OppSide L M ptO (ptH h)) : False := by
  sorry

/-- **Theorem 2** (`C1_TWO_LOWER_COMPLETION:Theorem2`). Every C1 configuration (weak anchor
conditions) with exactly two of its four free points strictly inside `OHC` has an actual
triangle of area strictly below `A₀`, whatever its hull. `hand/C1_TWO_LOWER_COMPLETION.md`,
lines 21-23 and 236-275.
Uses: C1_TWO_LOWER_SIDE_CAP:Theorem, C1_MIXED_PENTAGON:claim-pentagon-excluded,
C1_TOP_CAP_CONVEX_PAIR:Theorem, C1_TOP_CAP_TRIANGULAR_PAIR:Theorem, C1_TOP_CAP_SIDE_EARS:Theorem,
C1_TOP_CAP_SIDE_EARS:claim-consequence, C1_TOP_CAP_RADIAL_SPLIT:Theorem,
C1_TOP_CAP_OF_SPLIT:Theorem, ONE_CORNER_COMPLETION:claim-general-identities,
C1_TOP_CAP_COMMON_CELL:Theorem-C, C1_TOP_CAP_COMMON_CELL:Theorem-O,
C1_TOP_CAP_CONTAINMENT_PAIR:Theorem, C1_TWO_LOWER_COMPLETION:Theorem1. -/
-- Implicit in the manuscript (line 44 vs lines 262-264): in step 5, "`O, C` on the same side"
-- of `LM` forces `H, F` on the other side, since `L, M` are strictly inside both `OCH` and `OCF`
-- (a line through two interior points of a triangle splits its vertices 1 | 2); Theorem 1 is
-- stated with the full split. Step 2 applies C1_MIXED_PENTAGON at its threshold `7/64 < 2A₀`;
-- steps 4–5 use the transposition (`(h, c, d, f) ↦ (c, h, f, d)`) to reach `P ∈ OCX`.
theorem theorem2 {h c d f : ℝ} {W X Y Z : Point} (hA : C1AnchorsWeak h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h2 : lowerCount h c W X Y Z = 2)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) : False := by
  sorry

end Heilbronn.C1TwoLowerCompletion
