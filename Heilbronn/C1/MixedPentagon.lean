module

public import Heilbronn.C1.Setting

/-! # The mixed upper pair in the C1 pentagon (`hand/C1_MIXED_PENTAGON.md`)

Role: a component on the primary route. It completes the exact-pentagon branch of
`hand/ONE_CORNER_COMPLETION.md` §4, and is cited by `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2,
step 2 (both non-lower free points inside the anchor pentagon), through
`claim_pentagon_excluded`.

Setting (`C1_MIXED_PENTAGON.md`, lines 1-32; `Setting` below): the C1 anchors with the weak
conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`; the four free points `L, M, P, Q` in the square;
the nine-point configuration `c1Config h c d f L M P Q` has least area at least `A₀`, so every
doubled area is at least `s = 7/64` (this note's threshold); `K = 4 + 2√3`, `ρ = 13/16 < Ks`.
Two free points `L, M` are inside `OHC`; the upper points are `P ∈ HCD ∩ HCF` and
`Q ∈ CDF ∩ HCD`; the line `PQ` isolates `C` from `H, D, F` (the mixed-pair theorem,
ONE_CORNER_COMPLETION Theorem 3, taken as a standing hypothesis as in the manuscript, line
26-27). The reflected placement (`Q ∈ HDF`) is equivalent by transposition.

Results:
* `eq1`: the orientation of `PQ`, and `L, P` above `OD`, `M, Q` below (after naming);
* `eq2_3`: `hQ_x ≥ Ks`, `hc ≥ Ks`, `[HCD] ≥ Ks`;
* `eq4_6`: `d ≤ 1 - s`, `Q ∈ CDL`, `[CDL] < ρ`, `P` above `DL`, `M` below `CL`;
* `claim_OF_split`: `f ≤ 1 - 3s`, `M ∈ OCF`, and exactly one of `L, P` in `OHF`;
* `theorem_main` (**Theorem**): `L ∈ OHF`, `P ∈ OCF` is impossible;
* `claim_reverse`: `P ∈ OHF`, `L ∈ OCF` is impossible;
* `claim_pentagon_excluded`: no competitive C1 configuration has all four free points inside the
  anchor pentagon.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1MixedPentagon

open Heilbronn.C1

/-- The standing setting of the note (lines 8-32): weak C1 anchors, free points `L, M, P, Q` in
the square, least area at least `A₀`, `L, M` strictly inside `OHC`, `P ∈ HCD ∩ HCF`,
`Q ∈ CDF ∩ HCD` (open triangles), and the line `PQ` isolating `C` from `H, D, F`. -/
structure Setting (h c d f : ℝ) (L M P Q : Point) : Prop where
  anchors : C1AnchorsWeak h c d f
  memL : L ∈ unitSquare
  memM : M ∈ unitSquare
  memP : P ∈ unitSquare
  memQ : Q ∈ unitSquare
  competitive : A₀ ≤ minTriangleArea (c1Config h c d f L M P Q)
  lowerL : InLower h c L
  lowerM : InLower h c M
  P_HCD : InTriangle P (ptC c) (ptD d) (ptH h)
  P_HCF : InTriangle P (ptC c) (ptF f) (ptH h)
  Q_CDF : InTriangle Q (ptC c) (ptD d) (ptF f)
  Q_HCD : InTriangle Q (ptC c) (ptD d) (ptH h)
  isolatesC : Isolates P Q (ptC c) (ptH h) (ptD d) (ptF f)

/-- **Claim** (`C1_MIXED_PENTAGON:eq1`). In the setting, `[PQH], [PQD], [PQF] > 0 > [PQC]`; one
lower point is above `OD` and the other below; and `P` is above `OD`, `Q` below. Hence, naming
the lower points so that `L` is above `OD`, (1): `L, P` are above `OD`, `M, Q` below.
`hand/C1_MIXED_PENTAGON.md`, lines 34-59.
Uses: FOUR_INTERIOR_QUADRILATERALS:Theorem1, ONE_CORNER_COMPLETION:Theorem3. -/
theorem eq1 {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q) :
    (0 < sarea P Q (ptH h) ∧ 0 < sarea P Q (ptD d) ∧ 0 < sarea P Q (ptF f) ∧
        sarea P Q (ptC c) < 0) ∧
      ((0 < sarea ptO (ptD d) L ∧ sarea ptO (ptD d) M < 0) ∨
        (0 < sarea ptO (ptD d) M ∧ sarea ptO (ptD d) L < 0)) ∧
      0 < sarea ptO (ptD d) P ∧ sarea ptO (ptD d) Q < 0 := by
  sorry

/-- **Claim** (`C1_MIXED_PENTAGON:eq2-3`). With `L` above `OD` and `M` below: `L, P` are inside
`OHQ`, so `hQ_x ≥ Ks > ρ` (2); also `hc ≥ Ks` and `[HCD] = h(1 - c) + cd ≥ Ks` (3), where
`s = 7/64`, `K = 4 + 2√3`, `ρ = 13/16`. `hand/C1_MIXED_PENTAGON.md`, lines 61-75.
Uses: C1_MIXED_PENTAGON:eq1, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq2_3 {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0) :
    InsideTri L ptO (ptH h) Q ∧ InsideTri P ptO (ptH h) Q ∧
      (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ h * Q.1 ∧ (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ h * c ∧
      (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ h * (1 - c) + c * d ∧
      (13 / 16 : ℝ) < (4 + 2 * Real.sqrt 3) * (7 / 64) := by
  sorry

/-- **Claim** (`C1_MIXED_PENTAGON:eq4-6`). With `L` above `OD` and `M` below: `d ≤ 1 - s` (4);
`Q` is inside `CDL`, and `[CDL] ≤ 1 + s + s² - sc - 2s/c ≤ (1 - s)² < ρ` (5), so `CDL` contains
no second actual point; hence `P` is above `DL` and `M` is below `CL` (6). Here `s = 7/64`,
`ρ = 13/16`. `hand/C1_MIXED_PENTAGON.md`, lines 77-125.
Uses: C1_MIXED_PENTAGON:eq1, CORNER_FAMILIES:TwoInteriorPointLemma. -/
-- Note (lines 86-89): "`Q` above `CL` because it is above `HC`" is an angular statement at `C`
-- (the ray `CQ` is clockwise of `CH`, the ray `CL` counterclockwise of it); it is correct.
theorem eq4_6 {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0) :
    d ≤ 1 - 7 / 64 ∧ InTriangle Q (ptC c) (ptD d) L ∧
      sarea (ptC c) (ptD d) L ≤ 1 + 7 / 64 + (7 / 64) ^ 2 - 7 / 64 * c - 2 * (7 / 64) / c ∧
      1 + 7 / 64 + (7 / 64) ^ 2 - 7 / 64 * c - 2 * (7 / 64) / c ≤ (1 - 7 / 64) ^ 2 ∧
      (1 - 7 / 64 : ℝ) ^ 2 < 13 / 16 ∧
      sarea (ptD d) L P < 0 ∧ 0 < sarea (ptC c) L M := by
  sorry

/-- **Claim** (`C1_MIXED_PENTAGON:claim-OF-split`, made-up id). With `L` above `OD` and `M`
below: `[CDF] ≥ 3s`, so `f ≤ 1 - 3s` (7); `M` is inside `OCF`; and exactly one of `L, P` is
inside `OHF`, the other inside `OCF`. Here `s = 7/64`. `hand/C1_MIXED_PENTAGON.md`,
lines 127-146.
Uses: C1_MIXED_PENTAGON:eq1, C1_MIXED_PENTAGON:eq4-6, THREE_INTERIOR_TRIANGLES:Corollary5, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_OF_split {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0) :
    3 * (7 / 64) ≤ sarea (ptC c) (ptD d) (ptF f) ∧ f ≤ 1 - 3 * (7 / 64) ∧
      InTriangle M ptO (ptC c) (ptF f) ∧
      ((InTriangle L ptO (ptF f) (ptH h) ∧ InTriangle P ptO (ptC c) (ptF f)) ∨
        (InTriangle P ptO (ptF f) (ptH h) ∧ InTriangle L ptO (ptC c) (ptF f))) := by
  sorry

/-- **Theorem** (`C1_MIXED_PENTAGON:Theorem`). The alternative `L ∈ OHF`, `P ∈ OCF` is
impossible at the competitive threshold. `hand/C1_MIXED_PENTAGON.md`, lines 148-326 (statement
lines 148-151; proof §§4–6: `P ∈ FDL`, the barycentric inequality (8)
`Φ = AB - s(A + 2B + T) ≥ 0`, the bounds (9)–(13), and the quartics `N₁, N₂ > 0` on
`[3s, 1 - 3s]`).
Uses: C1_MIXED_PENTAGON:eq1, C1_MIXED_PENTAGON:eq2-3, C1_MIXED_PENTAGON:eq4-6,
C1_MIXED_PENTAGON:claim-OF-split. -/
theorem theorem_main {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0)
    (hL : InTriangle L ptO (ptF f) (ptH h)) (hP : InTriangle P ptO (ptC c) (ptF f)) :
    False := by
  sorry

/-- **Claim** (`C1_MIXED_PENTAGON:claim-reverse`, made-up id). The reverse alternative
`P ∈ OHF`, `L ∈ OCF` is also impossible: `L, M ∈ OCP` gives `cz ≥ Ks` (15) for `P = (p, z)`,
`P ∈ HCQ` gives `(h - z)V ≥ s(2h - t)` (16), and (17)–(19) end in `-57/2048 < 0`.
`hand/C1_MIXED_PENTAGON.md`, lines 328-428.
Uses: C1_MIXED_PENTAGON:eq1, C1_MIXED_PENTAGON:eq4-6, C1_MIXED_PENTAGON:claim-OF-split,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_reverse {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0)
    (hP : InTriangle P ptO (ptF f) (ptH h)) (hL : InTriangle L ptO (ptC c) (ptF f)) :
    False := by
  sorry

/-- **Claim** (`C1_MIXED_PENTAGON:claim-pentagon-excluded`, made-up id). The entire C1 case whose
convex hull is exactly the five-anchor pentagon is excluded: no C1 configuration with the weak
anchor conditions, least area at least `A₀`, and all four free points inside the open pentagon
`OCDFH` exists. `hand/C1_MIXED_PENTAGON.md`, lines 430-434 (and ONE_CORNER_COMPLETION.md §4).
Uses: ONE_CORNER:GlobalC1OccupancyCorollary, ONE_CORNER_COMPLETION:Theorem2,
QUADRILATERAL_HULL:claim-(16)-(18), ONE_CORNER:CornerTriangleOccupancyTheorem, ONE_CORNER:claim-pentagon-opposite-quadrants, ONE_CORNER:claim-pentagon-HDF-CDF,
ONE_CORNER_COMPLETION:Theorem3, C1_MIXED_PENTAGON:eq1, C1_MIXED_PENTAGON:claim-OF-split,
C1_MIXED_PENTAGON:Theorem, C1_MIXED_PENTAGON:claim-reverse. -/
-- Implicit in the manuscript: "convex hull equal to the five-anchor pentagon" is read as all
-- four free points strictly inside the pentagon (a free point on an anchor chord gives a zero
-- area); the exclusion of the reflected upper-ear placement is by transposition.
theorem claim_pentagon_excluded {h c d f : ℝ} {W X Y Z : Point} (hA : C1AnchorsWeak h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (hpent : ∀ i, InPentagon h c d f (freePt W X Y Z i)) : False := by
  sorry

end Heilbronn.C1MixedPentagon
