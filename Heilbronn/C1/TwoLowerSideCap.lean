module

public import Heilbronn.C1.Setting

/-! # Two lower C1 points exclude both side caps (`hand/C1_TWO_LOWER_SIDE_CAP.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 1
(lines 241-244), excludes every free point in a side cap when two free points are inside `OHC`.

Setting (lines 3-38): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`,
two actual points `L, M` strictly inside `OHC`, and an actual point `X = (x, Y)` in the left cap
`conv{H, F, (0,1)}`. The configuration is competitive (least area at least `A₀`); only the eight
points `O, C, D, F, H, L, M, X` are used, so the competitiveness hypothesis is stated for the
eight-point sub-configuration `![O, C, D, F, H, L, M, X]` (`LeftCapSetting`). Doubled areas are
compared with `σ = 8/73 < 2A₀`; `K = 4 + 2√3`, `k = Kσ`, `ρ = 49/60 < k`.

Results:
* `eq1_6`: `hc ≥ k`, `h, c ≥ k > ρ` (1); `f ≥ x + σ/(1-h) ≥ σ/(h(1-h))` (2), `h < 7/8`; (3);
  `G(h, c) ≥ 0` (4); `h < 43/50`, `h < 341/400 + (1-c)/25` (5);
* `eq7_10`: for each lower point `R = (r, z)`: `[ORX] ≥ σ` (7), `R ∈ OHC ∩ OCX` (9),
  `r(1 - z) ≥ σ` (10);
* `eq11`: `[HRX] < 3σ` (11), so `HRX` contains no further actual point;
* `claim_separating`: the line through the lower points cannot separate `O, C`;
* `claim_nonseparating`: it cannot keep `O, C` on one side either;
* `theorem_main` (**Theorem**, unnumbered): no actual point lies in either side cap.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TwoLowerSideCap

open Heilbronn.C1

/-- The setting of §§1–5: weak anchors, `L, M` strictly inside `OHC`, `X` in the closed left cap
`conv{H, F, (0,1)}` (`[FHX] ≤ 0` for a point of the square), and the eight actual points
`O, C, D, F, H, L, M, X` with least area at least `A₀`. -/
structure LeftCapSetting (h c d f : ℝ) (L M X : Point) : Prop where
  anchors : C1AnchorsWeak h c d f
  memL : L ∈ unitSquare
  memM : M ∈ unitSquare
  memX : X ∈ unitSquare
  competitive : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X]
  lowerL : InLower h c L
  lowerM : InLower h c M
  capX : sarea (ptF f) (ptH h) X ≤ 0

/-- `G(h, c) = (1 - σ)(1 - h) - c(1 - h)² - σ` of (4), `σ = 8/73`. -/
def capG (h c : ℝ) : ℝ := (1 - 8 / 73) * (1 - h) - c * (1 - h) ^ 2 - 8 / 73

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:eq1-6`). In the left-cap setting, with `X = (x, Y)`,
`σ = 8/73`, `k = (4 + 2√3)σ`: `hc ≥ k` and `h, c ≥ k > ρ` (1); `h < 1` and
`f ≥ x + σ/(1-h) ≥ σ/(h(1-h))` (2); `h < 7/8`; `hf ≤ 1 - σ - c(1-h)` and
`hx ≤ 1 - c(1-h) - σ/(1-h)` (3); `G(h, c) ≥ 0` (4); `h < 43/50` and
`h < 341/400 + (1-c)/25` (5). `hand/C1_TWO_LOWER_SIDE_CAP.md`, lines 31-104.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq1_6 {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c ∧ (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) ∧
      h < 1 ∧ X.1 + 8 / 73 / (1 - h) ≤ f ∧ 8 / 73 / (h * (1 - h)) ≤ X.1 + 8 / 73 / (1 - h) ∧
      h < 7 / 8 ∧
      h * f ≤ 1 - 8 / 73 - c * (1 - h) ∧ h * X.1 ≤ 1 - c * (1 - h) - 8 / 73 / (1 - h) ∧
      0 ≤ capG h c ∧ h < 43 / 50 ∧ h < 341 / 400 + (1 - c) / 25 := by
  sorry

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:eq7-10`). In the left-cap setting, every lower point
`R = (r, z)` satisfies `[ORX] > 0` (7), hence `[ORX] ≥ σ`; `R ∈ OHC ∩ OCX` (9); and
`r(1 - z) ≥ σ` (10), with `σ = 8/73`. `hand/C1_TWO_LOWER_SIDE_CAP.md`, lines 106-156.
Uses: C1_TWO_LOWER_SIDE_CAP:eq1-6. -/
theorem eq7_10 {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    ∀ R, (R = L ∨ R = M) →
      0 < sarea ptO R X ∧ 8 / 73 ≤ sarea ptO R X ∧ InLower h c R ∧
        InTriangle R ptO (ptC c) X ∧ 8 / 73 ≤ R.1 * (1 - R.2) := by
  sorry

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:eq11`). In the left-cap setting, every lower point `R`
satisfies `0 < [HRX] < 3σ` (11) (indeed `[HRX] ≤ E(h) ≤ E(ρ) = 3σ - 14661/2872331`); in
particular the triangle `HRX` contains no further actual point (here: the other lower point).
`hand/C1_TWO_LOWER_SIDE_CAP.md`, lines 158-202.
Uses: C1_TWO_LOWER_SIDE_CAP:eq1-6, C1_TWO_LOWER_SIDE_CAP:eq7-10. -/
theorem eq11 {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    (∀ R, (R = L ∨ R = M) → 0 < sarea (ptH h) R X ∧ sarea (ptH h) R X < 3 * (8 / 73)) ∧
      ¬ InsideTri M (ptH h) L X ∧ ¬ InsideTri L (ptH h) M X := by
  sorry

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:claim-separating`, made-up id). In the left-cap setting,
the line through the two lower points cannot separate `O, C`. `hand/C1_TWO_LOWER_SIDE_CAP.md`,
lines 204-262 (quadrilateral `O, C, X, H` with `a = hc ≤ b = cY ≤ 1`, `T = cY + hx`; the middle
sign case contradicts (11); the endpoint cases give (14)–(15) and `F(43/50, 1) < 0`).
Uses: C1_TWO_LOWER_SIDE_CAP:eq1-6, C1_TWO_LOWER_SIDE_CAP:eq7-10, C1_TWO_LOWER_SIDE_CAP:eq11,
ONE_CORNER_COMPLETION:claim-general-identities. -/
-- Note (lines 222-223): only `a + b - T > 0` is checked for the canonical central-cell
-- normalization of ONE_CORNER_COMPLETION §1; `T > a`, `T > b` are also needed (true:
-- `T - b = hx > 0`, `T - a = c(Y - h) + hx > 0`).
theorem claim_separating {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    ¬ OppSide L M ptO (ptC c) := by
  sorry

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:claim-nonseparating`, made-up id). In the left-cap setting,
the line through the two lower points cannot keep `O, C` on the same side: one of the two
heights `v` would satisfy `W(h, c, v) = v[c - (cv + σ)/h - σ/(1 - v)] - σ ≥ 0` (16), but
`W(h, c, v) ≤ W(341/400, 1, v) < 0` for `0 < v < 2/3`. `hand/C1_TWO_LOWER_SIDE_CAP.md`,
lines 264-357.
Uses: C1_TWO_LOWER_SIDE_CAP:eq1-6, C1_TWO_LOWER_SIDE_CAP:eq7-10. -/
theorem claim_nonseparating {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    ¬ SameSide L M ptO (ptC c) := by
  sorry

/-- **Theorem** (`C1_TWO_LOWER_SIDE_CAP:Theorem`, unnumbered). If the actual configuration
contains the C1 anchors (weak conditions) and two points `L, M` strictly inside `OHC`, and its
least area is at least `A₀`, then no other actual point `X` lies in the left cap
`conv{H, F, (0,1)}`; by transposition, none lies in the right cap `conv{C, D, (1,0)}`. Only the
eight points `O, C, D, F, H, L, M, X` are used. `hand/C1_TWO_LOWER_SIDE_CAP.md`, lines 3-15 and
357-361.
Uses: C1_TWO_LOWER_SIDE_CAP:claim-separating, C1_TWO_LOWER_SIDE_CAP:claim-nonseparating. -/
theorem theorem_main {h c d f : ℝ} {L M X : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X])
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hcap : sarea (ptF f) (ptH h) X ≤ 0 ∨ sarea (ptC c) (ptD d) X ≤ 0) : False := by
  sorry

end Heilbronn.C1TwoLowerSideCap
