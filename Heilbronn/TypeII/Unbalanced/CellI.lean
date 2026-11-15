module

public import Heilbronn.TypeII.Unbalanced.RightHull

/-! # Complete exclusion of unbalanced right support cell I (`hand/UNBALANCED_CELL_I.md`)

**Role.** Primary route. `UNBALANCED_FINAL_LOWER_WEDGE:Theorem2` cites Theorem 1 for the
one-point upper cut in cell I (the two-point upper cut of cell I is
`UNBALANCED_RIGHT_HULL:Theorem2`), so cell I is excluded from the whole unbalanced row.
`claim_order` (the coordinate order of a quadrilateral right hull) and `lemma2`/`eq10` (the
two-interior-point rigidity inequality) are reused by `UNBALANCED_CELL_III`,
`UNBALANCED_ONE_UPPER_RADIAL` and `UNBALANCED_UPPER_CELL_II`.

**Setting** (lines 5-22): `Row123 l b P Q R S T` (anchors `D, C, E, B`, `0 < b ≤ 1/2`), every
actual doubled area at least `s = 7/64` (`7/128 ≤ minTriangleArea (typeIIConfig …)`), the right
hull is the quadrilateral `B, R, S, C` with `T` inside (`QuadHull`), in support cell I
(`T ∈ int BRS ∩ int BCR`). Write `R = (r, u)`, `S = (k, t)`, `q = 1 - λ`, `w = 1 - b`,
`U = [BRS]`, `V = [CRS]`, `g = [BRC]`, `δ = [EBR]`, `J = [ERS]`, `α = [ERC]`.

**Results.**
* `claim_order`: `r > u`, `b < r < k ≤ 1`, `0 ≤ u < t < 1` for every quadrilateral right hull.
* `claim_b_range` (2)-(3): `13/100 < b < 3/16`, `w ≥ Ks > 13/16`.
* `claim_empty_EBR` (4)-(5): `δ < 3s`, so `EBR` contains no further actual point.
* `claim_ERS_cap` (6): `J < Ks` for every right quadrilateral, so `ERS` has capacity one.
* `claim_J` (7): `J < 39/64` in cell I.
* `claim_containments` (8): a central point `Q` below `CE` lies in `ECR ∩ ECS`, and
  `T ∈ ECR ∩ BRS ∩ ERS`.
* `claim_alpha` (9): `r < 1 - 2s` and `α < 335/384 < 8s`.
* `eq10` and `lemma2`: the rigidity inequality for two interior points of a triangle whose line
  isolates a vertex.
* `claim_RCT` (13), `claim_ERT` (14)-(15): `[RCT], [ERT] < 2s`.
* `theorem1`: no central point lies below `CE` in cell I.

Implicit in the manuscript: Theorem 1 concerns either central point; by the symmetric roles of
`P` and `Q` in the setting it is stated for `Q`. `lemma2` is stated for a counterclockwise
triangle `VAB` (relabel `A, B` otherwise).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedCellI

open UnbalancedRightHull

variable {l b : ℝ} {P Q R S T : Point}

/-- **Claim** (`UNBALANCED_CELL_I:claim-order`). For every quadrilateral right hull `B, R, S, C`
with `R = (r, u)`, `S = (k, t)` in the right container: `r > u`, `b < r < k ≤ 1` and
`0 ≤ u < t < 1` (from the identity `V/w = ((x-y)(z-x) - (1-x)U/w)/x`).
`hand/UNBALANCED_CELL_I.md`, lines 40-49. -/
theorem claim_order (h : Row123 l b P Q R S T) (hq : QuadHull (ptB b) R S ptC T) :
    R.2 < R.1 ∧ b < R.1 ∧ R.1 < S.1 ∧ S.1 ≤ 1 ∧ 0 ≤ R.2 ∧ R.2 < S.2 ∧ S.2 < 1 := sorry

/-- **Claim** (`UNBALANCED_CELL_I:claim-b-range`), equations (2)-(3). In cell I:
`w ≥ Ks > 13/16`, `b < 3/16` and `b > 13/100` (`s = 7/64`).
`hand/UNBALANCED_CELL_I.md`, lines 51-69.
Uses: UNBALANCED_RIGHT_HULL:claim-outer-cell-scale, UNBALANCED_RIGHT_HULL:claim-Nb (the
cut-independent §4.2 argument of that note). -/
theorem claim_b_range (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    Kc * (7 / 64) ≤ 1 - b ∧ 13 / 16 < Kc * (7 / 64) ∧ b < 3 / 16 ∧ 13 / 100 < b := sorry

/-- **Claim** (`UNBALANCED_CELL_I:claim-empty-EBR`), equations (4)-(5). In cell I,
`δ = [EBR] < C₀ - 2d₀ - 2√(C₀d₀) < 3s` with `C₀ = 101/192`, `d₀ = 1/64` (`s = 7/64`); hence
`EBR` contains no further actual point. `hand/UNBALANCED_CELL_I.md`, lines 71-90.
Uses: UNBALANCED_RIGHT_HULL:claim-ear-root, UNBALANCED_CELL_I:claim-b-range. -/
theorem claim_empty_EBR (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    sarea (ptE l) (ptB b) R < 101 / 192 - 2 * (1 / 64) - 2 * Real.sqrt (101 / 192 * (1 / 64)) ∧
      101 / 192 - 2 * (1 / 64) - 2 * Real.sqrt (101 / 192 * (1 / 64)) < 3 * (7 / 64) ∧
      NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R := sorry

/-- **Claim** (`UNBALANCED_CELL_I:claim-ERS-cap`), equation (6). For every right quadrilateral
(any cell, `b ≤ 1/2`), with `z = 1 - r`, `s = 7/64`:
`J = [ERS] ≤ 1 + s - s(1/z + z/b) ≤ 1 + s - 2s/√b < Ks`, so `ERS` contains at most one further
actual point. `hand/UNBALANCED_CELL_I.md`, lines 92-116.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_ERS_cap (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    let z := 1 - R.1
    sarea (ptE l) R S ≤ 1 + s - s * (1 / z + z / b) ∧
      1 + s - s * (1 / z + z / b) ≤ 1 + s - 2 * s / Real.sqrt b ∧
      1 + s - 2 * s / Real.sqrt b < Kc * s ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) (ptE l) R S := sorry

/-- **Claim** (`UNBALANCED_CELL_I:claim-J`), equation (7). In cell I, `J = [ERS] < 1/2 + s =
39/64`. `hand/UNBALANCED_CELL_I.md`, lines 117-121.
Uses: UNBALANCED_CELL_I:claim-ERS-cap, UNBALANCED_CELL_I:claim-b-range. -/
theorem claim_J (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    sarea (ptE l) R S < 39 / 64 := sorry

/-- **Claim** (`UNBALANCED_CELL_I:claim-containments`), equation (8). The right points are below
`CE`. In cell I, if the central point `Q` is below `CE`, then `Q, T ∈ int ECR`, `Q ∈ int ECS`,
and `T ∈ int BRS ∩ int ERS` (counterclockwise orders `E, R, C`; `E, S, C`; `B, R, S`;
`E, R, S`). `hand/UNBALANCED_CELL_I.md`, lines 123-143.
Uses: UNBALANCED_CELL_I:claim-empty-EBR, UNBALANCED_CELL_I:claim-ERS-cap. -/
theorem claim_containments (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T)
    (hQ : sarea (ptE l) ptC Q < 0) :
    sarea (ptE l) ptC R < 0 ∧ sarea (ptE l) ptC S < 0 ∧ sarea (ptE l) ptC T < 0 ∧
      InTriangle Q (ptE l) R ptC ∧ InTriangle T (ptE l) R ptC ∧ InTriangle Q (ptE l) S ptC ∧
      InTriangle T (ptB b) R S ∧ InTriangle T (ptE l) R S := sorry

/-- **Claim** (`UNBALANCED_CELL_I:claim-alpha`), equation (9). In cell I, `r < 1 - 2s` and
`α = [ERC] = 1 - u - q(1-r) < 335/384 < 8s` (`s = 7/64`). `hand/UNBALANCED_CELL_I.md`,
lines 145-162.
Uses: UNBALANCED_RIGHT_HULL:claim-lower-vertex, UNBALANCED_CELL_I:claim-b-range. -/
theorem claim_alpha (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    R.1 < 1 - 2 * (7 / 64) ∧ sarea (ptE l) R ptC < 335 / 384 ∧ (335 / 384 : ℝ) < 8 * (7 / 64) :=
  sorry

/-- **Equation (10)** of UNBALANCED_CELL_I:Lemma2 (the line-coordinate inequality). Let `X, Y`
lie strictly inside the counterclockwise triangle `VAB`, every doubled triangle on these five
points be at least `s > 0`, and `XY` isolate `V` from `A, B`. With `H = [VAB]`, `a = |[VXY]|`,
`c = |[AXY]|`, `d = |[BXY]|`:
`H ≥ (a+c)(a+d)/a + s((a+c)/a + (a+d)/a) ≥ a + 4s + 3s²/a`, and each interior point has opposite
subtriangle area at least `Hs/(a+s)` (`aθ ≥ s(1-θ)` for the barycentric weight `θ` of `V`).
`hand/UNBALANCED_CELL_I.md`, lines 173-196. -/
theorem eq10 {s : ℝ} {V A B X Y : Point} (hs : 0 < s) (hX : InTriangle X V A B)
    (hY : InTriangle Y V A B) (hmin : s / 2 ≤ minTriangleArea ![V, A, B, X, Y])
    (hiso : LineIsolates X Y V A B) :
    let H := sarea V A B
    let a := |sarea X Y V|
    let c := |sarea X Y A|
    let d := |sarea X Y B|
    (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) ≤ H ∧
      a + 4 * s + 3 * s ^ 2 / a ≤ (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) ∧
      H * s / (a + s) ≤ sarea A B X ∧ H * s / (a + s) ≤ sarea A B Y := sorry

/-- **Lemma 2** (`UNBALANCED_CELL_I:Lemma2`). Suppose the (counterclockwise) actual triangle
`VAB` contains two actual points `X, Y`, every doubled triangle on these five points is at least
`s > 0`, its doubled area `H` is less than `8s`, and `XY` isolates `V` from `A, B`. Then both
opposite areas `[ABX]`, `[ABY]` are greater than `2s`; the proof also gives `a = |[VXY]| < 3s`.
`hand/UNBALANCED_CELL_I.md`, lines 164-203. -/
theorem lemma2 {s : ℝ} {V A B X Y : Point} (hs : 0 < s) (hX : InTriangle X V A B)
    (hY : InTriangle Y V A B) (hmin : s / 2 ≤ minTriangleArea ![V, A, B, X, Y])
    (hiso : LineIsolates X Y V A B) (hH : sarea V A B < 8 * s) :
    |sarea X Y V| < 3 * s ∧ 2 * s < sarea A B X ∧ 2 * s < sarea A B Y := sorry

/-- **Claim** (`UNBALANCED_CELL_I:claim-RCT`), equation (13). In cell I,
`[RCT] < Ω/4 ≤ w/4 < 2s`, where `Ω ≤ w` is the area scale of the right support normalization
(`s = 7/64`). `hand/UNBALANCED_CELL_I.md`, lines 207-247.
Uses: TYPE_II:claim-support-normalization, UNBALANCED_CELL_I:claim-b-range. -/
theorem claim_RCT (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    sarea R ptC T < (1 - b) / 4 ∧ (1 - b) / 4 < 2 * (7 / 64) := sorry

/-- **Claim** (`UNBALANCED_CELL_I:claim-ERT`), equations (14)-(15). In cell I,
`U = [BRS] < 1521/4096` and `[ERT] < 21239/97344 = 2s - 55/97344 < 2s` (`s = 7/64`).
`hand/UNBALANCED_CELL_I.md`, lines 249-273.
Uses: TYPE_II:claim-support-normalization, UNBALANCED_CELL_I:claim-J,
UNBALANCED_CELL_I:claim-empty-EBR. -/
theorem claim_ERT (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    sarea (ptB b) R S < 1521 / 4096 ∧ sarea (ptE l) R T < 21239 / 97344 ∧
      (21239 / 97344 : ℝ) < 2 * (7 / 64) := sorry

/-- **Theorem 1** (`UNBALANCED_CELL_I:Theorem1`). In support cell I no central point lies below
`CE`. With UNBALANCED_RIGHT_HULL:Theorem2 (and the unbalanced cut lemma), cell I is excluded
in every cut. `hand/UNBALANCED_CELL_I.md`, lines 24-30, 275-291.
Uses: UNBALANCED_CELL_I:claim-containments, UNBALANCED_CELL_I:claim-alpha,
UNBALANCED_CELL_I:Lemma2, UNBALANCED_CELL_I:claim-RCT, UNBALANCED_CELL_I:claim-ERT. -/
theorem theorem1 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T)
    (hQ : sarea (ptE l) ptC Q < 0) : False := sorry

end Heilbronn.UnbalancedCellI
