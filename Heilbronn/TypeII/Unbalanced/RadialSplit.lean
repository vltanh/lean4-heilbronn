module

public import Heilbronn.TypeII.Unbalanced.RightHull

/-! # The radial split in the unbalanced upper cut (`hand/UNBALANCED_RADIAL_SPLIT.md`)

**Role.** Primary route. `UNBALANCED_UPPER_CELL_II` (lines 49-52) cites Theorem 1 for the radial
labelling of the two-point upper cut in cell II. Lemma 2 (the lower support triangle `DRW` has
doubled area `Λ < 1`) and Corollary 3 hold for every quadrilateral right hull.

**Setting** (lines 5-23): `Row123 l b P Q R S T` with minimum area at least
`A₀ = (9√65 - 55)/320` (so every actual doubled area exceeds `s = 7/64` and the global capacity
theorem `THREE_INTERIOR_TRIANGLES:Corollary5` applies), the right hull is the quadrilateral
`B, R, S, C` with `T` inside (`QuadHull`). For Theorem 1 also: both central points above `CE`,
support cell II, and `PQ` separating `{D, C}` from `{E, B}` (`UNBALANCED_RIGHT_HULL`
Theorems 2-4). Write `R = (r, u)`, `q = 1 - λ`, `w = 1 - b`, `W = DE ∩ BR = (0, -bu/(r-b))`
(`radialW`) and `Λ = 2·area(DRW) = r + rbu/(r-b)` (`radialLambda`, equation (1)).

**Results.**
* `lemma2`: `Λ < 1` as soon as all doubled areas on `B, R, S, C` are at least `s`.
* `corollary3`: at most one further actual point is strictly inside both `DBR` and `DER`.
* `claim_empty_ear` (4): in the two-point upper cut `[EBR] < 43/160 < 3s`, `EBR` is empty, the
  right points are below `CE`, and `D, E, R, C` is strictly convex.
* `claim_not_both_C_side`: `P, Q` are not both on the `C`-side of `DR`.
* `theorem1`: after interchanging `P, Q`, `P` and `T` are on the `C`-side of `DR`, `Q` on its
  `B`-side, `R, S, T` are below `CE`, `EBR` is empty and `u < 3/16` (`RadialConclusion`).

Implicit in the manuscript: Corollary 3 is stated in the note's standing setting (quadrilateral
right hull, minimum area `≥ A₀`), which its proof (Lemma 2) needs; it does not use the cut.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedRadialSplit

open UnbalancedRightHull

variable {l b : ℝ} {P Q R S T : Point}

/-- The point `W = DE ∩ BR = (0, -bu/(r - b))` of (1). -/
def radialW (b : ℝ) (R : Point) : Point := (0, -(b * R.2) / (R.1 - b))

/-- `Λ = 2·area(DRW) = r + rbu/(r - b)`, equation (1). -/
def radialLambda (b : ℝ) (R : Point) : ℝ := R.1 + R.1 * b * R.2 / (R.1 - b)

/-- `X` lies strictly inside both `DBR` and `DER` (counterclockwise orders `D, B, R` and
`D, E, R`). -/
def InDBRandDER (l b : ℝ) (R X : Point) : Prop :=
  InTriangle X ptD (ptB b) R ∧ InTriangle X ptD (ptE l) R

/-- The conclusion of Theorem 1 for the labelling `P, Q`: `P, T` on the `C`-side of `DR`, `Q` on
its `B`-side; `R, S, T` below `CE`; `EBR` contains no further actual point; `u < 3/16`, indeed
`1 - u = [DRC] ≥ Ks` (`s = 7/64`). -/
def RadialConclusion (l b : ℝ) (P Q R S T : Point) : Prop :=
  0 < sarea ptD R P ∧ sarea ptD R Q < 0 ∧ 0 < sarea ptD R T ∧
    sarea (ptE l) ptC R < 0 ∧ sarea (ptE l) ptC S < 0 ∧ sarea (ptE l) ptC T < 0 ∧
    NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R ∧
    R.2 < 3 / 16 ∧ Kc * (7 / 64) ≤ 1 - R.2

/-- **Lemma 2** (`UNBALANCED_RADIAL_SPLIT:Lemma2`). Let `B = (b, 0)` with `0 < b ≤ 1/2`,
`C = (1, 1)`, and `R, S` points of the square with `B, R, S, C` a strictly convex
counterclockwise quadrilateral. If all actual doubled areas on `B, R, S, C` are at least
`s = 7/64`, then `Λ = r + rbu/(r - b) < 1`. (Any cell, any cut.)
`hand/UNBALANCED_RADIAL_SPLIT.md`, lines 44-102.
Uses: UNBALANCED_RIGHT_HULL:claim-lower-vertex. -/
theorem lemma2 {b : ℝ} {R S : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hR : R ∈ unitSquare)
    (hS : S ∈ unitSquare) (hquad : ConvexQuad (ptB b) R S ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptB b, R, S, ptC]) :
    radialLambda b R < 1 := sorry

/-- **Corollary 3** (`UNBALANCED_RADIAL_SPLIT:Corollary3`). At most one further actual point is
strictly inside both `DBR` and `DER`. `hand/UNBALANCED_RADIAL_SPLIT.md`, lines 104-122.
Uses: UNBALANCED_RADIAL_SPLIT:Lemma2, TYPE_II_COMPLETION:Theorem13. -/
theorem corollary3 (h : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    AtMostOne (typeIIConfig l b P Q R S T) (InDBRandDER l b R) := sorry

/-- **Claim** (`UNBALANCED_RADIAL_SPLIT:claim-empty-ear`), equation (4). In the two-point upper
cut, with `c = 1 - wq`, `s = 7/64`:
`δ = [EBR] ≤ c - 2b√s < 13/80 + (17/80)b ≤ 43/160 < 3s`, so `EBR` contains no further actual
point; the three right points are below `CE`; and `D, E, R, C` is a strictly convex
(counterclockwise) quadrilateral. `hand/UNBALANCED_RADIAL_SPLIT.md`, lines 124-160.
Uses: UNBALANCED_RIGHT_HULL:claim-q67/80, UNBALANCED_RIGHT_HULL:claim-generic-ear,
THREE_INTERIOR_TRIANGLES:Corollary5. -/
theorem claim_empty_ear (h : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q) :
    let s : ℝ := 7 / 64
    let c := 1 - (1 - b) * (1 - l)
    sarea (ptE l) (ptB b) R ≤ c - 2 * b * Real.sqrt s ∧
      c - 2 * b * Real.sqrt s < 13 / 80 + 17 / 80 * b ∧ 13 / 80 + 17 / 80 * b ≤ 43 / 160 ∧
      (43 / 160 : ℝ) < 3 * s ∧
      NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R ∧
      sarea (ptE l) ptC R < 0 ∧ sarea (ptE l) ptC S < 0 ∧ sarea (ptE l) ptC T < 0 ∧
      ConvexQuad ptD (ptE l) R ptC := sorry

/-- **Claim** (`UNBALANCED_RADIAL_SPLIT:claim-not-both-C-side`). In the setting of Theorem 1,
`P` and `Q` are not both on the `C`-side of `DR` (that would force `r ≤ 177/448`, against
`r ≥ b + 3s > 7/16`). `hand/UNBALANCED_RADIAL_SPLIT.md`, lines 162-205.
Uses: FOUR_INTERIOR_QUADRILATERALS:claim-(4), UNBALANCED_RADIAL_SPLIT:claim-empty-ear. -/
theorem claim_not_both_C_side (h : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellII (ptB b) R S ptC T)
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hsep : LineSeparates P Q ptD ptC (ptE l) (ptB b)) :
    ¬ (0 < sarea ptD R P ∧ 0 < sarea ptD R Q) := sorry

/-- **Theorem 1** (`UNBALANCED_RADIAL_SPLIT:Theorem1`). In the two-point upper cut, cell II,
with `PQ` separating `{D, C}` from `{E, B}`: after interchanging `P, Q` if needed,
(1) `P` is on the `C`-side of `DR` and `Q` on its `B`-side; (2) `T` is on the `C`-side of `DR`;
(3) `R, S, T` are below `CE`, `EBR` contains no further actual point, and `u < 3/16`.
`hand/UNBALANCED_RADIAL_SPLIT.md`, lines 25-42, 162-236.
Uses: UNBALANCED_RADIAL_SPLIT:claim-not-both-C-side, UNBALANCED_RADIAL_SPLIT:Corollary3,
UNBALANCED_RADIAL_SPLIT:claim-empty-ear, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem1 (h : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellII (ptB b) R S ptC T)
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hsep : LineSeparates P Q ptD ptC (ptE l) (ptB b)) :
    RadialConclusion l b P Q R S T ∨ RadialConclusion l b Q P R S T := sorry

end Heilbronn.UnbalancedRadialSplit
