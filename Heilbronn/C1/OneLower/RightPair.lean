module

public import Heilbronn.C1.OneLower.TopCap

/-! # One lower C1 point excludes a pair in the right cap (`hand/C1_ONE_LOWER_RIGHT_PAIR.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses
Theorem 1 for the occupancy rows `(U, R, T, L_cap) = (1, 2, 0, 0)` ("upper row") and
`(0, 2, 1, 0)` ("top row").

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1` and `f ≤ d` ((1); arranged by
transposing the square), minimum triangle area at least `A₀`. If the right cap contains two free
points, Lemma 1 of `C1_ZERO_LOWER.md` names them `X` (outer) and `Y` (inner, `Y ∈ CDX ∩ ODX`); `L`
is the lower point and `Q` the remaining free point. The configuration is
`c1Config h c d f X Y L Q` (the checker's vertex order `O, C, D, F, H, X, Y, L, Q`), and the
five-anchor words are those of `C1_ZERO_LOWER.md` (11)–(12) (`Heilbronn.C1.HasWord`). Thresholds
`s = 8/73`, `ρ = 49/60`.

**Results.**
* `theorem1` (`C1_ONE_LOWER_RIGHT_PAIR:Theorem1`): the right cap contains at most one free point.
* `eq2` (Lemma 1 of the zero-lower note), `eq3` (the two rows; FLAG: citation), `claim_fan`,
  `eq4`–`eq6`, `eq7` (seven word cases), `eq8`, `eq9_10` (the certificate package).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerRightPair

open Heilbronn.C1
open Heilbronn.C1OneLowerTopCap (AtMostInside)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-- **Theorem 1** (`C1_ONE_LOWER_RIGHT_PAIR:Theorem1`). Under `f ≤ d`, if exactly one of the four
free points of a competitive C1 configuration lies in `OHC`, the right exterior cap `CD(1,0)`
contains at most one free point. (Every full hull and additional square-side contacts are
allowed.) `hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 14-30 and 261-263.
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2), C1_ONE_LOWER_RIGHT_PAIR:(3), C1_ONE_LOWER_RIGHT_PAIR:(7),
C1_ONE_LOWER_RIGHT_PAIR:(9)-(10). -/
theorem theorem1 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f) (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    regionCount h c d f .right W X Y Z ≤ 1 := by
  sorry

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

section

variable {h c d f : ℝ} {X Y L Q : Point}

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(2)`). Lemma 1 of `C1_ZERO_LOWER.md` (which does not need
the zero-lower hypothesis): of two right-cap points one, `Y`, lies strictly in `CDX ∩ ODX`, where
`X` is the other; moreover `d, h ≥ ρ`, `c, f ≤ 1 - 3s`, `d(1-c) ≥ 3s`.
`hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 40-49. Uses: C1_ZERO_LOWER:Lemma1. -/
theorem eq2 (hS : TwoRight h c d f X Y L Q) :
    ((InTriangle Y (ptC c) X (ptD d) ∧ InTriangle Y ptO X (ptD d)) ∨
        (InTriangle X (ptC c) Y (ptD d) ∧ InTriangle X ptO Y (ptD d))) ∧
      ρ ≤ d ∧ ρ ≤ h ∧ c ≤ 1 - 3 * s ∧ f ≤ 1 - 3 * s ∧ 3 * s ≤ d * (1 - c) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(3)`). The left cap is empty and the right cap has no third
point, so `Q` lies in `HCDF` (upper row) or in the top cap `DF(1,1) \ DF` (top row).
FLAG (citation, lines 52-54): "the right cap cannot contain a third point" is attributed to
Theorem 2 of `C1_ZERO_LOWER.md`; it is the unnumbered claim after its Lemma 1 (lines 104-110,
via `TYPE_II_COMPLETION:Theorem1`). The left cap is empty by its Theorem 2.2.
`hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 51-62.
Uses: C1_ZERO_LOWER:Theorem2, C1_ZERO_LOWER:claim-side-cap-capacity. -/
theorem eq3 (hS : Row h c d f X Y L Q) : InUpperQuad h c d f Q ∨ InTopCap d f Q := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:claim-fan`). The two right-cap points fill the below-`OD`
fan capacity ((4) of `C1_ZERO_LOWER.md`), so `L` and `Q` lie strictly above `OD`.
`hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 64-66. Uses: C1_ZERO_LOWER:eq4. -/
theorem claim_fan (hS : Row h c d f X Y L Q) :
    0 < sarea ptO (ptD d) L ∧ 0 < sarea ptO (ptD d) Q := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(4)`). `[HDF] ≤ 1 - d ≤ 1 - ρ < 3s`, so `HDF` contains no
free point; `[OFH] = hf ≤ f ≤ 1 - 3s < ρ`, so `OFH` has capacity one; in the upper row `Q` lies in
`HCD`. `hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 68-77.
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2), CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq4 (hS : Row h c d f X Y L Q) :
    sarea (ptD d) (ptF f) (ptH h) ≤ 1 - d ∧ 1 - ρ < 3 * s ∧
      (∀ i, ¬ InTriangle (freePt X Y L Q i) (ptD d) (ptF f) (ptH h)) ∧
      sarea ptO (ptF f) (ptH h) ≤ 1 - 3 * s ∧
      AtMostInside 1 ptO (ptF f) (ptH h) (freePt X Y L Q) ∧
      (InUpperQuad h c d f Q → InTriangle Q (ptH h) (ptC c) (ptD d)) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(5)`). The lower point gives `hc ≥ 3s`, so `c ≥ 3s`, and
`ℓ_x, ℓ_y ≥ s`, `c - ℓ_x, h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1 - s`.
`hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 79-93. -/
theorem eq5 (hS : Row h c d f X Y L Q) :
    3 * s ≤ c ∧ s ≤ L.1 ∧ s ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧
      L.1 + L.2 ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(6)`). In the top row: `(1-d)(1-f) ≥ s`,
`f ≤ 1 - s/(1-ρ) = 323/803`, `d ≤ 57/65`. `hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 95-102.
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2). -/
theorem eq6 (hS : Row h c d f X Y L Q) (hQ : InTopCap d f Q) :
    s ≤ (1 - d) * (1 - f) ∧ f ≤ 323 / 803 ∧ d ≤ 57 / 65 := by
  sorry

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

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(7)`). Both right-cap points have word `(1, 0, 4, 3, 2)`;
`L` has `L₀` or `L₁`; `Q` has `U₀, U₁, U₂` (upper row) or `T` (top row); the pair `(L₁, U₂)` puts
both `L, Q` in `OFH`, contradicting its capacity one. So the word pair of `(L, Q)` is one of the
seven cases. `hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 108-140.
Uses: C1_ZERO_LOWER:claim-words, C1_ONE_LOWER_RIGHT_PAIR:(3), C1_ONE_LOWER_RIGHT_PAIR:claim-fan,
C1_ONE_LOWER_RIGHT_PAIR:(4). -/
theorem eq7 {h c d f : ℝ} {X Y L Q : Point} (hS : Row h c d f X Y L Q) :
    HasWord h c d f X wordR ∧ HasWord h c d f Y wordR ∧
      ∃ w ∈ rightPairCases, HasWord h c d f L w.1 ∧ HasWord h c d f Q w.2 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(8)`). For the equal-word pair `X, Y`, the containments (2)
give `[OXY] > 0`, `[CXY] > 0`, `[DXY] < 0`. `hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 142-148.
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2). -/
theorem eq8 {h c d f : ℝ} {X Y L Q : Point} (hS : Row h c d f X Y L Q) :
    0 < sarea ptO X Y ∧ 0 < sarea (ptC c) X Y ∧ sarea (ptD d) X Y < 0 := by
  sorry

/-! ### Sections 3–4: the certificate package -/

/-- **Claim** (`C1_ONE_LOWER_RIGHT_PAIR:(9)-(10)`). The certificate package: no named right pair has
its word pair `(L, Q)` among the seven cases. The cases are split by the finite sign trees of
Section 2 (`(L₀,U₀)`: six cells by `[XYQ], [FYQ], [OLQ], [HXY]`; `(L₁,U₀)` by `[XYQ]`; `(L₁,U₁)`,
`(L₀,T)` by `[HXY]`; 15 cells in all), and each cell is excluded by a fixed positive combination of
products of the 30 (upper row) or 34 (top row) affine factors, the quadratic costs (9) (`hc - 3s`,
`d(1-c) - 3s`, `3s - [DFH]`, `ρ - [OFH]`, upper row `W - 4s`, then the signed actual triangles
minus `s, 3s, ρ` by certified occupancy) and the cubic (10) `dc(1-c) - s`, with unit-cube bound
at most `-3/4` (largest `-77021124287/77678914560`).
`hand/C1_ONE_LOWER_RIGHT_PAIR.md`, lines 151-263 (data `c1_one_lower_right_pair_certificates.json`,
checker `check_c1_one_lower_right_pair.py`).
Uses: C1_ONE_LOWER_RIGHT_PAIR:(2), C1_ONE_LOWER_RIGHT_PAIR:(4), C1_ONE_LOWER_RIGHT_PAIR:(5),
C1_ONE_LOWER_RIGHT_PAIR:(6), C1_ONE_LOWER_RIGHT_PAIR:(8), C1_ZERO_LOWER:claim-region-bounds,
C1_ZERO_LOWER:eq5-6, C1_ZERO_LOWER:claim-pair-signs, ONE_CORNER:GlobalC1OccupancyCorollary,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq9_10 {h c d f : ℝ} {X Y L Q : Point} (hS : Row h c d f X Y L Q) {w : Word × Word}
    (hw : w ∈ rightPairCases) (hL : HasWord h c d f L w.1) (hQ : HasWord h c d f Q w.2) :
    False := by
  sorry

end Heilbronn.C1OneLowerRightPair
