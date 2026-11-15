module

public import Heilbronn.Corners.CornerFamilies.Stars
public import Heilbronn.Corners.OppositeCorners

/-! # Corner families, §6: at most one upper point (`hand/CORNER_FAMILIES.md`, lines 304–413)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). The support-triangle
normalization reduces any set of at least six points in the triangle
`T = conv{(0,0), (1,0), (1,1)}` that contains both endpoints of the diagonal and has a
nontriangular hull to Theorem 1 of `OPPOSITE_CORNERS.md`; with the triangular-hull lemma this
bounds seven points of `T` containing the two endpoints, and closes the Type-III classes with at
most one upper point.

Definitions: `lowerTriangle` (the closed triangle `T`, by sign conditions).

**Results.**

* `nontriangularHullLemma` (support triangle, at `7/128`) and its affine form
  `nontriangularHullLemma_affine` (points in a triangle of area `S` including two of its
  vertices: minimum area `≤ 7S/64`), used by `TYPE_II.md`, `TYPE_II_COMPLETION.md` and §12 here;
* `endpointLemma`;
* `typeIII_le1upper` (9).

The hull hypothesis "nontriangular convex hull" is written: the convex hull of the points is not
the convex hull of any three of them.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-- The closed triangle `T = conv{A = (0,0), D = (1,0), C = (1,1)}`: `0 ≤ y ≤ x ≤ 1`
(line 314). -/
def lowerTriangle : Set Point := {p | 0 ≤ p.2 ∧ p.2 ≤ p.1 ∧ p.1 ≤ 1}

/-- **Nontriangular-hull lemma** (`CORNER_FAMILIES:NontriangularHullLemma`): at least six points
of the triangle `T`, including `A = (0,0)` and `C = (1,1)`, whose convex hull is not a triangle,
have minimum triangle area at most `7/128`. `hand/CORNER_FAMILIES.md`, lines 306–379.

Uses: OPPOSITE_CORNERS:Theorem1 -/
theorem nontriangularHullLemma {n : ℕ} (hn : 6 ≤ n) (P : Fin n → Point)
    (hP : ∀ i, P i ∈ lowerTriangle) (hA : ∃ i, P i = (0, 0)) (hC : ∃ i, P i = (1, 1))
    (hnt : ∀ a b c : Fin n,
      convexHull ℝ (Set.range P) ≠ convexHull ℝ ({P a, P b, P c} : Set Point)) :
    minTriangleArea P ≤ 7 / 128 := by
  sorry

/-- **Nontriangular-hull lemma** (`CORNER_FAMILIES:NontriangularHullLemma`), affine form (the
"support-triangle lemma" of `TYPE_II_COMPLETION.md` lines 28–33, and of §12 here): at least six
points in the closed triangle `UVW` of area `S > 0`, including two of its vertices `U, V`, whose
convex hull is not a triangle, have minimum triangle area at most `7S/64`. It follows from the
`T` form by the affine map `UVW → T` sending `U, V` to the diagonal endpoints.
`hand/CORNER_FAMILIES.md`, lines 306–379 (rescaled from area `1/2`).

Uses: CORNER_FAMILIES:NontriangularHullLemma -/
theorem nontriangularHullLemma_affine {n : ℕ} (hn : 6 ≤ n) (P : Fin n → Point)
    (U V W : Point) (hUVW : sarea U V W ≠ 0) (hP : ∀ i, InClosedTriangle (P i) U V W)
    (hU : ∃ i, P i = U) (hV : ∃ i, P i = V)
    (hnt : ∀ a b c : Fin n,
      convexHull ℝ (Set.range P) ≠ convexHull ℝ ({P a, P b, P c} : Set Point)) :
    minTriangleArea P ≤ 7 / 64 * triangleArea U V W := by
  sorry

/-- **Endpoint lemma** (`CORNER_FAMILIES:EndpointLemma`): seven points of the triangle `T`
including `A = (0,0)` and `C = (1,1)` have minimum triangle area at most `7/128` (by the
nontriangular-hull lemma or, for a triangular hull, the triangular-hull lemma
`t ≤ 1/(14 + 4√2) < 7/128`). `hand/CORNER_FAMILIES.md`, lines 381–396.

Uses: CORNER_FAMILIES:NontriangularHullLemma, CORNER_FAMILIES:TriangularHullLemma -/
theorem endpointLemma (P : Fin 7 → Point) (hP : ∀ i, P i ∈ lowerTriangle)
    (hA : ∃ i, P i = (0, 0)) (hC : ∃ i, P i = (1, 1)) :
    minTriangleArea P ≤ 7 / 128 := by
  sorry

/-- **Type-III exclusion (9)** (`CORNER_FAMILIES:TypeIII-le1upper`): a Type-III configuration with
at most one free point above `y = x` has minimum area at most `7/128` (`< A₀`).
`hand/CORNER_FAMILIES.md`, lines 36–45, 398–413.

Uses: CORNER_FAMILIES:EndpointLemma -/
theorem typeIII_le1upper (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h1 : upperCount U V W X Y Z ≤ 1) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  sorry

end Heilbronn.CornerFamilies
