module

public import Heilbronn.Nine.Corners.CornerFamilies.NearSquare
public import Heilbronn.Nine.Corners.CornerFamilies.ThreeThree

/-! # Corner families: configurations with three corners of the square

This module closes Type III: every configuration containing three corners of the square has
minimum area `≤ 7/128 < A₀`. The Type-II assembly also uses it for its Type-III alternative. Its
general lemmas are reused elsewhere: `sixPointTriangularHullTheorem` with the seven-face mesh
identities, `triangularHullLemma` (seven points with a triangular hull), the support-triangle
(nontriangular-hull) lemma `nontriangularHullLemma_affine` at `7S/64`, the projective transfer
`triangleArea_projMap_ge`, and the quantitative mesh lemma and uniform signs with variable
threshold and displaced base (used by `Heilbronn.Nine.Corners.OneCorner`).

**Setting.** Type III: `typeIIIConfig U V W X Y Z = ![A, B, C, U, V, W, X, Y, Z]`,
`A = (0,0)`, `B = (0,1)`, `C = (1,1)`, six free points of the closed square; "upper" means
`y > x` (`upperCount`), "lower" `y < x`; a free point on `y = x` gives a zero area with `A, C`.

**Parts** (each its own module, all in the namespace `Heilbronn.Nine.CornerFamilies`):

* `CornerFamilies/Interior.lean`: `InClosedTriangle`, the fan of an interior point, the six-point
  theorem;
* `CornerFamilies/Stars.lean`: star identities, the triangular-hull lemma, the Type-III
  exclusion for `≥ 4` upper points, the global occupancy corollary;
* `CornerFamilies/SupportTriangle.lean`: the support-triangle (nontriangular-hull) lemma and its
  affine form `7S/64`, the endpoint lemma, the exclusion for `≤ 1` upper point;
* `CornerFamilies/SixPoint.lean`: non-distributed triples, the seven-face mesh and its
  identities, the mesh labelling, the fourth hull vertex of the `2+4` class;
* `CornerFamilies/NearSquare.lean`: the projective transfer, the near-square quadrilateral
  lemma, the exclusion of the `2+4` class;
* `CornerFamilies/Mesh.lean`: the quantitative mesh lemma and uniform signs, with threshold `s`
  and rectangle `[0, L] × [1 - M, 1]` as parameters;
* `CornerFamilies/ThreeThree.lean`: capacity one on each side of `BY`, the exclusion of the
  `3+3` class;
* this module: the complete Type-III exclusion (`typeIII_complete`, `typeIII_lt_A₀`).

The triangular-hull lemma is proved without planar triangulations (`Stars.lean`); the mesh is
labelled in fixed coordinates by choosing the interior points (`exists_mesh_labelling`); the
C-side capacity is proved by reflecting the A-side argument (`ThreeThree.lean`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.CornerFamilies

/-- **Type-III exclusion**: every Type-III configuration (the
corners `A = (0,0)`, `B = (0,1)`, `C = (1,1)` and six free points of the square) has minimum
triangle area at most `7/128`. The upper count is `0, …, 6`: counts `0, 1` by
`typeIII_le1upper`, `2` by `typeIII_2plus4`, `3` by `typeIII_3plus3`, `4–6` by
`typeIII_ge4upper`. -/
theorem typeIII_complete (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  rcases Nat.lt_or_ge (upperCount U V W X Y Z) 4 with h | h
  · interval_cases hc : upperCount U V W X Y Z
    · exact typeIII_le1upper U V W X Y Z hU hV hW hX hY hZ (by omega)
    · exact typeIII_le1upper U V W X Y Z hU hV hW hX hY hZ (by omega)
    · exact typeIII_2plus4 U V W X Y Z hU hV hW hX hY hZ hc
    · exact typeIII_3plus3 U V W X Y Z hU hV hW hX hY hZ hc
  · obtain ⟨h1, h2, -⟩ := typeIII_ge4upper U V W X Y Z hU hV hW hX hY hZ h
    have : (1 : ℝ) / 19 < 7 / 128 := by norm_num
    linarith

/-- **Type-III exclusion**, the form used by the assembly:
no Type-III configuration has minimum area `A₀`, since `7/128 < A₀`. -/
theorem typeIII_lt_A₀ (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (typeIIIConfig U V W X Y Z) < A₀ :=
  (typeIII_complete U V W X Y Z hU hV hW hX hY hZ).trans_lt A₀_bounds.1

end Heilbronn.Nine.CornerFamilies
