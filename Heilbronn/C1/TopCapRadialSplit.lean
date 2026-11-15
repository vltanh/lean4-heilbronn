module

public import Heilbronn.C1.Setting

/-! # A top-cap point separates the two lower C1 rays (`hand/C1_TOP_CAP_RADIAL_SPLIT.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 4
(lines 258-259), and `hand/ONE_CORNER_COMPLETION.md` §4.

Setting (lines 3-37): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`;
two actual points `L, M` strictly inside `OHC`; an actual point `X = (x, Y)` beyond `DF`, in the
closed top cap `conv{D, F, (1,1)}`. The configuration is competitive; the proof uses only these
eight points, so competitiveness is stated for `![O, C, D, F, H, L, M, X]` (`Setting`). Doubled
areas are compared with `σ = 8/73 < 2A₀`; `K = 4 + 2√3`, `k = Kσ`, `ρ = 49/60 < k`. After a
transposition, §§1–4 assume both lower points on the `C`-side of `OX` (`[ORX] > 0`).

Results:
* `eq1_3`: the cap signs (1), both lower points in `OHC ∩ OCX ∩ OCF` (2), `hc, cY ≥ k`, `h, Y ≥ k`
  (3);
* `eq4`: `x < c`;
* `eq6_7`: `W = cY + hx ≥ M(1 + σ/(1 - m))` (6), and only the middle pair-line case (separating
  `O | C` and `H | X`) survives (7);
* `claim_scalar_OF`: the scalar exclusion of §3 (middle case with `O, F` together), stated for
  a seven-point configuration so that it also applies after the map `Ψ` of §4;
* `claim_Psi`: the middle case with `F` on the `C`-side is impossible (via `Ψ`);
* `theorem_main` (**Theorem**): the two lower points lie on opposite sides of `OX`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapRadialSplit

open Heilbronn.C1

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

/-- **Claim** (`C1_TOP_CAP_RADIAL_SPLIT:eq1-3`). In the setting, with both lower points on the
`C`-side of `OX`: `x > f`, `Y > d`, `[HFX] < 0`, `[CFX] < 0`, `[CDX] > 0`, and `X` is above `HC`
(1); both lower points lie in `OHC ∩ OCX ∩ OCF` (2); `hc, cY ≥ k` and `h, Y ≥ k > ρ` (3), where
`k = (4 + 2√3)·(8/73)`, `ρ = 49/60`. `hand/C1_TOP_CAP_RADIAL_SPLIT.md`, lines 39-72.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq1_3 {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X) :
    f < X.1 ∧ d < X.2 ∧ sarea (ptH h) (ptF f) X < 0 ∧ sarea (ptC c) (ptF f) X < 0 ∧
      0 < sarea (ptC c) (ptD d) X ∧ 0 < sarea (ptH h) (ptC c) X ∧
      (∀ R, (R = L ∨ R = M) → InLower h c R ∧ InTriangle R ptO (ptC c) X ∧
        InTriangle R ptO (ptC c) (ptF f)) ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c * X.2 ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ X.2 ∧
      (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) := by
  sorry

/-- **Claim** (`C1_TOP_CAP_RADIAL_SPLIT:eq4`). In the setting, with both lower points on the
`C`-side of `OX`: `x < c`. `hand/C1_TOP_CAP_RADIAL_SPLIT.md`, lines 74-99.
Uses: C1_TOP_CAP_RADIAL_SPLIT:eq1-3. -/
theorem eq4 {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X) :
    X.1 < c := by
  sorry

/-- **Claim** (`C1_TOP_CAP_RADIAL_SPLIT:eq6-7`). In the setting, with both lower points on the
`C`-side of `OX`, put `a = hc`, `b = cY`, `W = cY + hx`, `m = min(a, b)`, `M = max(a, b)`. Then
`W ≥ M(1 + σ/(1 - m))` (6); and the line `LM` separates `O` from `C` and `H` from `X` (the
middle case): the same-side case and both separating endpoint cases give (7), contradicting (6).
`hand/C1_TOP_CAP_RADIAL_SPLIT.md`, lines 101-184.
Uses: C1_TOP_CAP_RADIAL_SPLIT:eq1-3, C1_TOP_CAP_RADIAL_SPLIT:eq4, ONE_CORNER_COMPLETION:claim-general-identities. -/
-- Note (line 113): only `a + b - W > 0` is checked for the canonical normalization; `W > a`,
-- `W > b` are also needed (true: `W - a = c(Y - h) + hx`, `W - b = hx`, and (6)).
theorem eq6_7 {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X) :
    max (h * c) (c * X.2) * (1 + 8 / 73 / (1 - min (h * c) (c * X.2))) ≤ c * X.2 + h * X.1 ∧
      OppSide L M ptO (ptC c) ∧ OppSide L M (ptH h) X := by
  sorry

/-- **Claim** (`C1_TOP_CAP_RADIAL_SPLIT:claim-scalar-OF`, made-up id; the "slightly more general
statement" of §3). Let `O = (0,0)`, `C = (c,0)`, `H = (0,h)`, `F = (f,1)`, `X = (x,Y)` with
`0 < f < c ≤ 1`, `0 < x < c`, `X` in the square and `[HFX] < 0`; let `P, Q` be strictly inside both
`OHC` and `OCX`, with `k ≤ h ≤ 1` and `Y ≥ k`, `k = (4 + 2√3)σ`; let every doubled area of these seven points be at
least `σ = 8/73`. Then the directed line `PQ` cannot put `O, F` on its negative side and `C` on
its positive side. `hand/C1_TOP_CAP_RADIAL_SPLIT.md`, lines 186-362 (identity (8), the bound (9),
the coarse bounds (11), `y < 11/32` (13), and the final `-50377/125508608`). -/
-- Implicit in the manuscript: the hypotheses of §3 are the ones re-verified in §4 (lines 385-411):
-- the coordinate bounds, the two containments, `|[OHF]| ≥ σ`, `[HFX] ≤ -σ`, `h, Y ≥ k`; the
-- competitive bound is taken for the seven points `O, C, F, H, X, P, Q` (preserved by `Ψ`).
theorem claim_scalar_OF {h c f : ℝ} {X P Q : Point}
    (hf : 0 < f) (hfc : f < c) (hc : c ≤ 1) (hX : X ∈ unitSquare) (hx0 : 0 < X.1)
    (hxc : X.1 < c) (hHFX : sarea (ptH h) (ptF f) X < 0)
    (hh : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h) (hh1 : h ≤ 1) (hY : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ X.2)
    (hP : InLower h c P) (hPX : InTriangle P ptO (ptC c) X)
    (hQ : InLower h c Q) (hQX : InTriangle Q ptO (ptC c) X)
    (hmin : 4 / 73 ≤ minTriangleArea ![ptO, ptC c, ptF f, ptH h, X, P, Q])
    (hO : sarea P Q ptO < 0) (hF : sarea P Q (ptF f) < 0) (hC : 0 < sarea P Q (ptC c)) :
    False := by
  sorry

/-- **Claim** (`C1_TOP_CAP_RADIAL_SPLIT:claim-Psi`, made-up id). In the setting, with both lower
points on the `C`-side of `OX`, the middle case in which `F` is on the `C`-side of the pair line
(`O` alone on the other side among `O, C, F`) is impossible: the affine map
`Ψ(u, v) = (c - u - ((c - x)/Y) v, v)` of determinant `-1` sends `C, O, X, F, H` to
`O', C', H', F', X'` satisfying the hypotheses of `claim_scalar_OF`.
`hand/C1_TOP_CAP_RADIAL_SPLIT.md`, lines 364-411.
Uses: C1_TOP_CAP_RADIAL_SPLIT:claim-scalar-OF, C1_TOP_CAP_RADIAL_SPLIT:eq1-3,
C1_TOP_CAP_RADIAL_SPLIT:eq4. -/
theorem claim_Psi {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X)
    (hLs : 0 < sarea ptO L X) (hMs : 0 < sarea ptO M X)
    (hOC : OppSide L M ptO (ptC c)) (hHX : OppSide L M (ptH h) X)
    (hCF : SameSide L M (ptC c) (ptF f)) : False := by
  sorry

/-- **Theorem** (`C1_TOP_CAP_RADIAL_SPLIT:Theorem`). If the C1 anchors (weak conditions), two
points `L, M` strictly inside `OHC` and a point `X` of the closed top cap `conv{D, F, (1,1)}`
form a configuration of least area at least `A₀`, then `L, M` lie on opposite sides of `OX`.
`hand/C1_TOP_CAP_RADIAL_SPLIT.md`, lines 29-33 and 413-419.
Uses: C1_TOP_CAP_RADIAL_SPLIT:eq1-3, C1_TOP_CAP_RADIAL_SPLIT:eq4, C1_TOP_CAP_RADIAL_SPLIT:eq6-7,
C1_TOP_CAP_RADIAL_SPLIT:claim-scalar-OF, C1_TOP_CAP_RADIAL_SPLIT:claim-Psi. -/
theorem theorem_main {h c d f : ℝ} {L M X : Point} (hS : Setting h c d f L M X) :
    OppSide ptO X L M := by
  sorry

end Heilbronn.C1TopCapRadialSplit
