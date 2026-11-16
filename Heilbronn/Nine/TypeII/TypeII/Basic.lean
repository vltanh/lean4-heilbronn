module

public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle

/-! # The Type-II setting: anchors, containers, counts (`docs/proof/nine/TYPE_II.md`, (5) and §3)

Shared definitions for the Type-II notes `docs/proof/nine/TYPE_II.md`, `docs/proof/nine/TYPE_II_BALANCED.md`,
`docs/proof/nine/TYPE_II_COMPLETION.md`, `docs/proof/nine/BALANCED_BOTTOM_INNER_SECTOR.md`,
`docs/proof/nine/BALANCED_RIGHT_MIXED.md` (and the unbalanced notes of the other group).

The Type-II configuration is `typeIIConfig l b V W X Y Z = ![D, C, E, B, V, W, X, Y, Z]`
(`Heilbronn.Nine.Setup.Families`) with the anchors `D = (0,1)`, `C = (1,1)`, `E = (0,λ)`,
`B = (b,0)` of `TYPE_II.md` (5) (here `ptD`, `ptC`, `ptE l`, `ptB b`, with `l` for `λ`).
All brackets of the manuscripts are written with `sarea P Q R`, the signed doubled area,
positive for counterclockwise `P, Q, R`. The counterclockwise orders of the recurring triangles
are `D E B` (the left triangle `DBE`), `D B C` (the central triangle), `D E C` (`DCE`, above
`CE`), `E B C` (`EBC`, below `CE`), `B R C` (a right triangle `BCR`), `E B R`, `E R C`, `D E R`,
`D R C`, `D B R`.

* `IsLeft b X`, `IsCentral b X`, `IsRight b X`: the containers `T_L, T_C, T_R` cut by `DB` and
  `BC` (`TYPE_II.md` lines 251–272): strictly left of `DB`, strictly inside `DBC`, strictly right
  of `BC`. For points of the square these are `T_L` and `T_R` without the dividing segment, and
  the open central triangle; a point on a dividing segment, or on `DC`, makes a zero-area
  triangle.
* `countLeft`, `countCentral`, `countRight`, `typeIICounts`: the counts `(ℓ, c, r)` of the six
  points other than `D, C, B` (`E` counts as a left point).
* "Above `CE`" (the `D` side) is `0 < sarea (ptE l) ptC X`, "below `CE`" is
  `sarea (ptE l) ptC X < 0`.
* `ConvexQuad`, `InQuad`, `DiagSector`: a counterclockwise convex quadrilateral, its open
  interior, and its four open diagonal sectors.
* `AreaEquiv P Q`: `Q` is a relabelling of the image of `P` under an affine map of determinant
  `±1` ("area-equivalent", "without changing any triangle area").
* `IsTypeIIHalf`: a Type-II configuration with the further normalization `b ≤ 1/2` (`TYPE_II.md`
  (6)).

Results: `claim_central_cut` (`TYPE_II.md` lines 672–676).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeII

/-! ### Anchors -/

/-- The occupied corner `D = (0,1)`. -/
def ptD : Point := (0, 1)

/-- The occupied corner `C = (1,1)`. -/
def ptC : Point := (1, 1)

/-- The left contact `E = (0,λ)`. -/
def ptE (l : ℝ) : Point := (0, l)

/-- The bottom contact `B = (b,0)`. -/
def ptB (b : ℝ) : Point := (b, 0)

/-- The Type-II configuration with its anchors named. -/
theorem typeIIConfig_eq (l b : ℝ) (V W X Y Z : Point) :
    typeIIConfig l b V W X Y Z = ![ptD, ptC, ptE l, ptB b, V, W, X, Y, Z] := rfl

/-- The five free points of a Type-II configuration. -/
def freePts (V W X Y Z : Point) : Fin 5 → Point := ![V, W, X, Y, Z]

/-- The Type-II anchor conditions `0 < b < 1`, `0 < λ < 1` of (5), with the five free points in
the square. -/
def TypeIIData (l b : ℝ) (V W X Y Z : Point) : Prop :=
  0 < b ∧ b < 1 ∧ 0 < l ∧ l < 1 ∧ V ∈ unitSquare ∧ W ∈ unitSquare ∧ X ∈ unitSquare ∧
    Y ∈ unitSquare ∧ Z ∈ unitSquare

/-- A Type-II configuration with the bottom normalization `b ≤ 1/2` of `TYPE_II.md` (6). -/
def IsTypeIIHalf (P : Fin 9 → Point) : Prop :=
  ∃ (l b : ℝ) (V W X Y Z : Point), TypeIIData l b V W X Y Z ∧ b ≤ 1 / 2 ∧
    P = typeIIConfig l b V W X Y Z

/-- `Q` is area-equivalent to `P`: a relabelling of the image of `P` under an affine map of
determinant `±1`. Every triangle area, hence the least triangle area, is preserved. -/
def AreaEquiv (P Q : Fin 9 → Point) : Prop :=
  ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 9)), |a * d - b * c| = 1 ∧
    ∀ i, Q i = affineMap a b c d e f (P (σ i))

/-! ### Containers and counts -/

/-- `X` is a left point: strictly left of the line `DB` (`x < b(1-y)`). -/
def IsLeft (b : ℝ) (X : Point) : Prop := sarea ptD (ptB b) X < 0

/-- `X` is a central point: strictly inside the central triangle `DBC`
(`b(1-y) < x < b + (1-b)y`, `y < 1`). -/
def IsCentral (b : ℝ) (X : Point) : Prop := InTriangle X ptD (ptB b) ptC

/-- `X` is a right point: strictly right of the line `BC` (`x > b + (1-b)y`). -/
def IsRight (b : ℝ) (X : Point) : Prop := sarea (ptB b) ptC X < 0

open Classical in
/-- The number of left points among the free points. -/
def countLeft (b : ℝ) (pts : Fin 5 → Point) : ℕ :=
  (Finset.univ.filter fun i => IsLeft b (pts i)).card

open Classical in
/-- The number of central points among the free points. -/
def countCentral (b : ℝ) (pts : Fin 5 → Point) : ℕ :=
  (Finset.univ.filter fun i => IsCentral b (pts i)).card

open Classical in
/-- The number of right points among the free points. -/
def countRight (b : ℝ) (pts : Fin 5 → Point) : ℕ :=
  (Finset.univ.filter fun i => IsRight b (pts i)).card

/-- The count triple `(ℓ, c, r)` of `TYPE_II.md` §3: the six points other than `D, C, B` in the
left, central and right containers, `E` included among the left points. -/
def typeIICounts (b : ℝ) (V W X Y Z : Point) : ℕ × ℕ × ℕ :=
  (1 + countLeft b (freePts V W X Y Z), countCentral b (freePts V W X Y Z),
    countRight b (freePts V W X Y Z))

/-! ### Quadrilaterals and diagonal sectors -/

/-- `W, X, Y, Z` are the vertices of a counterclockwise convex quadrilateral, in this cyclic
order. -/
def ConvexQuad (W X Y Z : Point) : Prop :=
  0 < sarea W X Y ∧ 0 < sarea X Y Z ∧ 0 < sarea Y Z W ∧ 0 < sarea Z W X

/-- `P` is strictly inside the counterclockwise quadrilateral `W X Y Z`. -/
def InQuad (W X Y Z P : Point) : Prop :=
  0 < sarea W X P ∧ 0 < sarea X Y P ∧ 0 < sarea Y Z P ∧ 0 < sarea Z W P

/-- `P` lies in the open diagonal sector of the counterclockwise convex quadrilateral `W X Y Z`
at its edge `WX`: the open triangle `W X O`, `O` the intersection of the diagonals `WY` and `XZ`.
For example the four sectors of `D, E, R, C` at the edges `DE, ER, RC, CD` are
`DiagSector D E R C`, `DiagSector E R C D`, `DiagSector R C D E`, `DiagSector C D E R`. -/
def DiagSector (W X Y Z P : Point) : Prop :=
  0 < sarea W X P ∧ 0 < sarea X Z P ∧ 0 < sarea Y W P

/-! ### The cut by `CE` -/

/-- **Claim** (`TYPE_II:claim-central-cut`, made up). A central point is inside `DCE` exactly
when it is above `CE` (`[ECX] > 0`), and inside `EBC` exactly when it is below `CE`: the other
edge tests are automatic. `docs/proof/nine/TYPE_II.md`, lines 672–676 (there in affine coordinates). -/
theorem claim_central_cut {l b : ℝ} {X : Point} (hb : 0 < b) (_hb1 : b < 1) (hl : 0 < l)
    (hl1 : l < 1) (hX : IsCentral b X) :
    (InTriangle X ptD (ptE l) ptC ↔ 0 < sarea (ptE l) ptC X) ∧
      (InTriangle X (ptE l) (ptB b) ptC ↔ sarea (ptE l) ptC X < 0) := by
  obtain ⟨h1, h2, h3⟩ := hX
  simp only [InTriangle, sarea, ptD, ptB, ptC, ptE] at h1 h2 h3 ⊢
  have hy : 0 < X.2 := by linarith
  have hx : b * (1 - X.2) < X.1 := by linarith
  have hx0 : 0 < X.1 := by nlinarith
  have hEB : 0 < (b - 0) * (X.2 - l) - (0 - l) * (X.1 - 0) := by
    nlinarith [mul_pos hl (sub_pos.2 hx), mul_pos (mul_pos hb hy) (sub_pos.2 hl1)]
  refine ⟨⟨fun h => h.2.1, fun h => ⟨by nlinarith, h, by linarith⟩⟩,
    ⟨fun h => by linarith [h.2.2], fun h => ⟨hEB, by linarith, by linarith⟩⟩⟩

end Heilbronn.Nine.TypeII
