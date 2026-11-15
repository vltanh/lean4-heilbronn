module

public import Heilbronn.TypeII.TypeIIBalanced

/-! # The balanced row: diagonal cut, empty lower ear, quadrilateral right hull
(`hand/TYPE_II_COMPLETION.md`, §§4–6)

`TYPE_II_COMPLETION.md` lines 208–704. The starting point is the placement forced by
`TYPE_II_BALANCED.md` (`BalancedPlacement l b L P Q R S`: `L` inside `DBE` above `CE`, `P`
central above `CE`, `Q` central below `CE`, `R, S` right points, `0 < b ≤ 1/2`).
In the triangular-right alternative the right hull vertex is called `R = (r, u)` and `S` lies
strictly inside `BCR` (`InTriangle S (ptB b) R ptC`).

* `eq5` ((5), §4, off-route): `Q_y < Q_x`;
* `lemma4` (**Lemma 4**): the lower ear `EBR` contains neither `Q` nor `S`; both are inside `ECR`;
* `corollary5` (**Corollary 5**): the eight points other than `B` have hull `D, E, R, C` with
  interior points `L, P, Q, S`, the two diagonal splits, (8), and (after
  `FOUR_INTERIOR_QUADRILATERALS.md` Theorem 1) one point in each diagonal sector, `L` at `DE` and
  `P` at `CD`;
* `FinalPlacement`: the sole assignment left by Theorem 8 (`Q` at `ER`, `S` at `RC`), the setting
  of §§9–10 and of `BALANCED_RIGHT_MIXED.md`;
* `theorem6` (**Theorem 6**): the right set `B, C, R, S` is not a quadrilateral.

Thresholds: §§4 and 6 assume least area at least `A₀` (as stated); Lemma 4 works at doubled
threshold `s = 7/64`; Corollary 5 uses the global capacity theorems at `A₀`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion

open Heilbronn.TypeII Heilbronn.TypeIIBalanced

/-- The sole remaining balanced placement after Theorem 8 (`TYPE_II_COMPLETION.md` lines
1009–1013): the `BalancedPlacement`, `S` strictly inside the right triangle `BCR`, and the four
interior points of the quadrilateral `D, E, R, C` in its four diagonal sectors, `L` at `DE`, `P`
at `CD`, `Q` at `ER`, `S` at `RC`. -/
def FinalPlacement (l b : ℝ) (L P Q R S : Point) : Prop :=
  BalancedPlacement l b L P Q R S ∧ InTriangle S (ptB b) R ptC ∧
    DiagSector ptD (ptE l) R ptC L ∧ DiagSector ptC ptD (ptE l) R P ∧
    DiagSector (ptE l) R ptC ptD Q ∧ DiagSector R ptC ptD (ptE l) S

/-- **Equation (5)** (`TYPE_II_COMPLETION:claim-Q-below-diagonal`). In the balanced placement at
least area `A₀`, the lower central point satisfies `Q_y < Q_x`: the closed triangle
`conv{D, C, (0,0)}` already contains `D, C, E, L, P`. Off-route (not used later).
`hand/TYPE_II_COMPLETION.md`, lines 208–255.

Uses: TYPE_II_COMPLETION:Theorem1. -/
theorem eq5 {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    Q.2 < Q.1 := by
  sorry

/-- **Lemma 4** (`TYPE_II_COMPLETION:Lemma4`). In the balanced placement with triangular right
hull (`S` strictly inside `BCR`, `R = (r,u)`), at doubled threshold `s = 7/64`: neither `Q` nor `S`
lies in the closed triangle `EBR` (whose doubled area is `δ = bu + λ(r-b) ≤ 1 - (K-1)s < 3s` (7));
both are strictly inside `ECR`. `hand/TYPE_II_COMPLETION.md`, lines 257–327.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma (`q ≥ Ks` from `L, P ∈ DCE`). -/
theorem lemma4 {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    Q ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      S ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      InTriangle Q (ptE l) R ptC ∧ InTriangle S (ptE l) R ptC := by
  sorry

-- FLAG: Corollary 5 sits in the §5 setting "every doubled actual triangle area exceeds
-- s = 7/64", but its proof uses the global actual-triangle capacity theorem
-- (`THREE_INTERIOR_TRIANGLES.md` Corollary 5) and `FOUR_INTERIOR_QUADRILATERALS.md` Theorem 1,
-- which hold for competitive configurations (least area `≥ A₀`); it is stated at `A₀`.
open Classical in
/-- **Corollary 5** (`TYPE_II_COMPLETION:Corollary5`). In the triangular-right branch of the
balanced placement, at least area `A₀`: the eight points other than `B` have convex hull the
quadrilateral `D, E, R, C`, with interior points `L, P, Q, S`; the diagonal `EC` puts `L, P` on
one side and `Q, S` on the other; each side of `DR` contains exactly two of the four points;
`qr ≥ Ks` and `1 - u ≥ Ks` (8) with `s = 7/64`; `L` is on the `E` side of `DR`; and (by
`FOUR_INTERIOR_QUADRILATERALS.md` Theorem 1) exactly one point lies in each diagonal sector, `L`
at `DE`, `P` at `CD`, and `Q, S` at `ER, RC` in some order. `hand/TYPE_II_COMPLETION.md`,
lines 329–369.

FLAG (threshold): stated at least area `A₀`, see the comment above.

Uses: TYPE_II_COMPLETION:Lemma4, THREE_INTERIOR_TRIANGLES:Corollary5,
CORNER_FAMILIES:TwoInteriorPointLemma, FOUR_INTERIOR_QUADRILATERALS:Theorem1. -/
theorem corollary5 {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    ConvexQuad ptD (ptE l) R ptC ∧
      InQuad ptD (ptE l) R ptC L ∧ InQuad ptD (ptE l) R ptC P ∧
      InQuad ptD (ptE l) R ptC Q ∧ InQuad ptD (ptE l) R ptC S ∧
      0 < sarea (ptE l) ptC L ∧ 0 < sarea (ptE l) ptC P ∧
      sarea (ptE l) ptC Q < 0 ∧ sarea (ptE l) ptC S < 0 ∧
      (Finset.univ.filter fun m : Fin 4 => sarea ptD R (![L, P, Q, S] m) < 0).card = 2 ∧
      Ktwo * (7 / 64) ≤ (1 - l) * R.1 ∧ Ktwo * (7 / 64) ≤ 1 - R.2 ∧
      sarea ptD R L < 0 ∧
      DiagSector ptD (ptE l) R ptC L ∧ DiagSector ptC ptD (ptE l) R P ∧
      ((DiagSector (ptE l) R ptC ptD Q ∧ DiagSector R ptC ptD (ptE l) S) ∨
        (DiagSector (ptE l) R ptC ptD S ∧ DiagSector R ptC ptD (ptE l) Q)) := by
  sorry

/-- **Theorem 6** (`TYPE_II_COMPLETION:Theorem6`). In the balanced Type-II class (the row
`(2,2,2)` with `b ≤ 1/2`), at least area `A₀`, the four-point right set `B, C, R, S` cannot have a
quadrilateral hull: its hull is a triangle. The proof works at `s = 7/64` from the forced
placement (9) (`bq ≥ 3s`, `q ≥ Ks > 13/16`): the lower-vertex inequality and the ear `EBR` give
(10); the cases `q ≥ 7/8` (§6.2), the line `LP` (§6.3), the bounds (19)–(21) (§6.4) and §6.5
exhaust all parameters. `hand/TYPE_II_COMPLETION.md`, lines 371–704.

Uses: TYPE_II_BALANCED:claim-balanced-placement, TYPE_II_BALANCED:claim-L-above-CE,
TYPE_II_BALANCED:claim-lower-vertex-ineq, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem6 {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    TriangularHull ![ptB b, ptC, R, S] := by
  sorry

end Heilbronn.TypeIICompletion
