module

public import Heilbronn.Global.GlobalCompletion

/-! # A global restriction on triangles containing three points (`hand/THREE_INTERIOR_TRIANGLES.md`)

**Role.** A component on the primary route.
* Corollary 2 (capacity two in family N) is used by `SIX_BOUNDARY_HULL.md` (lines 707-709).
* Theorem 1 is used by `ONE_CORNER.md` §6 (lines 354-356, capacity two in C1).
* Corollary 5 (global capacity two) is used by `TYPE_II_COMPLETION.md` (lines 23-27),
  `UNBALANCED_RADIAL_SPLIT.md` (lines 14-16) and `FOUR_INTERIOR_QUADRILATERALS.md` Theorem 1.

**Setting.** Nine points in the unit square with least triangle area `t ≥ A₀`, `s₀ = 2A₀`,
`Γ = (11 + 3√5)/2`. "Contains" means strictly inside (`InTriangle`, for a counterclockwise
triangle). A point on an edge gives zero area. For a counterclockwise triangle `ABC`, the
barycentric coordinates of `X` are `sarea(B,C,X)`, `sarea(C,A,X)`, `sarea(A,B,X)` divided by
`sarea(A,B,C)`. The exterior region beyond the edge `BC` is where the first is negative and the
other two are positive (`BeyondEdge X A B C`, lines 44-49). `Exterior X A B C r`, for `r = 0, 1, 2`,
is the region beyond `BC`, `CA`, `AB` respectively.

**Definitions.**
* `BeyondEdge`, `Exterior`: the three exterior regions.
* `RobustBeyond`, `RobustExterior`: an exterior point whose negative coordinate `-p` satisfies
  `p ≥ (11/20)α` and `p ≥ (11/20)q` for its two positive coordinates `α, q` ((1), (10)).
* `TriangleCapacityTwo P`: every actual triangle of `P` contains at most two further points of
  `P` (for any number of points).
* `IsTypeIIHalf`: the Type-II form with `b ≤ 1/2` (13). This is the output of the shear
  normalization of `TYPE_II.md` §2.

**Results.**
* `lemma3`: two robust exterior points in different regions force `sarea A B C ≤ 29/31`.
* `claim_8_9`, `eq10`: the consequences (8)-(10) for a triangle containing three points.
* `theorem1`: a triangle containing three points is an ear of the full hull with exactly three
  interior and three exterior points, all beyond one edge; the hull has at most six vertices.
* `corollary2`: capacity two in family N.
* `corollary4`: capacity two in Type II with `b ≤ 1/2`.
* `claim_min_enclosing_parallelogram`, `claim_normalization`, `corollary5`: global capacity two,
  through an affine normalization of an arbitrary competitive configuration.

**Implicit in the manuscript.**
* Theorem 1: "contains three further configuration points" is read as "at least three". The
  conclusion includes "exactly three" (four are excluded by the seven-point bound, lines
  259-261).
* Lemma 3 is stated for any two different exterior regions. The proof relabels them as "beyond
  `BC`" and "beyond `AC`" (line 70).
* Corollary 5's normalization (lines 472-497) uses the minimum-area enclosing parallelogram
  instead of maximality. It is stated as `claim_normalization`. The Type-II step there cites
  "Section 3 of `TYPE_II.md`" (line 495), but the shear normalization is `TYPE_II.md` §2
  (citation error).
* Corollary 2 (lines 283-286): "the only possible other point on that side is its already
  specified partner" is inaccurate for the right and top sides, where an arbitrary point may also
  lie. The conclusion still holds, since each side holds at most two points and every anchor is
  still a hull vertex. This is a wording gap in a proof, not in the statement.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.ThreeInteriorTriangles

open GlobalCompletion

/-! ### Exterior regions and capacity -/

/-- `X` lies in the exterior region of the counterclockwise triangle `ABC` beyond the edge `BC`:
its barycentric coordinate at `A` is negative and the other two are positive. -/
def BeyondEdge (X A B C : Point) : Prop :=
  sarea B C X < 0 ∧ 0 < sarea C A X ∧ 0 < sarea A B X

/-- The three exterior regions of the counterclockwise triangle `ABC`: beyond `BC` (`r = 0`),
beyond `CA` (`r = 1`), beyond `AB` (`r = 2`). -/
def Exterior (X A B C : Point) : Fin 3 → Prop :=
  ![BeyondEdge X A B C, BeyondEdge X B C A, BeyondEdge X C A B]

/-- `X` lies beyond the edge `BC` with the robust proportions (1): writing its barycentric
coordinates as `(-p, α, q)`, `p ≥ (11/20)α` and `p ≥ (11/20)q` (multiplied by `sarea A B C > 0`). -/
def RobustBeyond (X A B C : Point) : Prop :=
  BeyondEdge X A B C ∧ 11 / 20 * sarea C A X ≤ -sarea B C X ∧
    11 / 20 * sarea A B X ≤ -sarea B C X

/-- The robust version of `Exterior`. -/
def RobustExterior (X A B C : Point) : Fin 3 → Prop :=
  ![RobustBeyond X A B C, RobustBeyond X B C A, RobustBeyond X C A B]

/-- Triangle capacity two: every triangle spanned by three points of the configuration
(counterclockwise, hence of positive area) contains at most two further points of it. -/
def TriangleCapacityTwo {n : ℕ} (P : Fin n → Point) : Prop :=
  ∀ i j k : Fin n, 0 < sarea (P i) (P j) (P k) →
    Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)} ≤ 2

/-- The normalized Type-II form (13) of Corollary 4: `D=(0,1), C=(1,1), E=(0,λ), B=(b,0)` with
`0<λ<1`, `0<b≤1/2`, and five further points in the square. -/
def IsTypeIIHalf (P : Fin 9 → Point) : Prop :=
  ∃ (l b : ℝ) (V W X Y Z : Point), 0 < b ∧ b ≤ 1 / 2 ∧ 0 < l ∧ l < 1 ∧
    V ∈ unitSquare ∧ W ∈ unitSquare ∧ X ∈ unitSquare ∧ Y ∈ unitSquare ∧ Z ∈ unitSquare ∧
    P = typeIIConfig l b V W X Y Z

/-! ### §1. Two canonical exterior points force extra enclosing area -/

/-- **Lemma 3** (`THREE_INTERIOR_TRIANGLES:Lemma3`). Let `A, B, C, E, F` lie in the unit square,
with `ABC` of positive doubled area `D`. If `E` and `F` lie in two different exterior regions of
`ABC`, each with the robust proportions (1), then `D ≤ 29/31`. The fixed points `E*`, `F*` with
barycentrics `(-11/29, 20/29, 20/29)` span with `A, B, C` an affine image of a fixed pentagon `K`
in the square, and every such image has determinant at most `29/31` (width-polar vertices
`T, U, V`, six-entry table).
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 51-194. -/
theorem lemma3 {A B C E F : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hE : E ∈ unitSquare) (hF : F ∈ unitSquare)
    (hD : 0 < sarea A B C) {r₁ r₂ : Fin 3} (hr : r₁ ≠ r₂) (hEr : RobustExterior E A B C r₁)
    (hFr : RobustExterior F A B C r₂) : sarea A B C ≤ 29 / 31 := by
  sorry

/-! ### §2. Every exterior point is robust; Theorem 1 -/

/-- **Claim** (`THREE_INTERIOR_TRIANGLES:claim-(8)(9)`). Let an actual counterclockwise triangle
of a nine-point configuration in the square with least area `t ≥ A₀` contain three further points.
Then its doubled area exceeds `29/30` (8), since `2S ≥ Γs₀`. Every other point is inside it or
lies in exactly one exterior region: no point has a zero or two negative barycentric coordinates.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 196-245.
Uses: CORNER_FAMILIES:SixPointTriangularHullTheorem -/
theorem claim_8_9 {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k : Fin 9} (hccw : 0 < sarea (P i) (P j) (P k))
    (h3 : 3 ≤ Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)}) :
    29 / 30 < sarea (P i) (P j) (P k) ∧
      ∀ m, m ≠ i → m ≠ j → m ≠ k →
        InTriangle (P m) (P i) (P j) (P k) ∨ ∃ r, Exterior (P m) (P i) (P j) (P k) r := by
  sorry

/-- **Claim** (`THREE_INTERIOR_TRIANGLES:eq10`). In the same situation every exterior point has
the robust proportions (10): `p > (11/20)q` and `p > (11/20)α`. The normalized minimum satisfies
`σ ≥ s₀ max(1, q)` with `0 < q < 30/29` (9), which are the hypotheses of the coupled affine
corollary of `TYPE_II.md` §10.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 234-253.
Uses: THREE_INTERIOR_TRIANGLES:claim-(8)(9), TYPE_II:CoupledAffineCorollary -/
theorem eq10 {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare) (hA : A₀ ≤ minTriangleArea P)
    {i j k : Fin 9} (hccw : 0 < sarea (P i) (P j) (P k))
    (h3 : 3 ≤ Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)}) (m : Fin 9) (r : Fin 3)
    (hm : Exterior (P m) (P i) (P j) (P k) r) : RobustExterior (P m) (P i) (P j) (P k) r := by
  sorry

/-- **Theorem 1** (`THREE_INTERIOR_TRIANGLES:Theorem1`). Three-interior triangles are hull ears.
In a nine-point configuration in the unit square with least area at least `A₀`, suppose an actual
counterclockwise triangle contains (at least) three further points. After a cyclic relabelling
`A, B, C` of its vertices: exactly three points are inside; the three remaining points all lie
beyond the edge `BC` and between the extensions of the other two edges; `AB` and `CA` are edges of
the full convex hull (every other point lies strictly on their inner side), so `B, A, C` are
consecutive hull vertices; and the full hull has at most six vertices.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 12-19 (proof 196-269).
Uses: THREE_INTERIOR_TRIANGLES:claim-(8)(9), THREE_INTERIOR_TRIANGLES:eq10,
THREE_INTERIOR_TRIANGLES:Lemma3, CORNER_FAMILIES:SixPointTriangularHullTheorem,
CORNER_FAMILIES:TriangularHullLemma -/
theorem theorem1 {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k : Fin 9} (hccw : 0 < sarea (P i) (P j) (P k))
    (h3 : 3 ≤ Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)}) :
    ∃ A B C : Fin 9,
      ((A = i ∧ B = j ∧ C = k) ∨ (A = j ∧ B = k ∧ C = i) ∨ (A = k ∧ B = i ∧ C = j)) ∧
      Set.ncard {m | InTriangle (P m) (P A) (P B) (P C)} = 3 ∧
      (∀ m, m ≠ A → m ≠ B → m ≠ C → ¬ InTriangle (P m) (P A) (P B) (P C) →
        BeyondEdge (P m) (P A) (P B) (P C)) ∧
      (∀ m, m ≠ A → m ≠ B → 0 < sarea (P A) (P B) (P m)) ∧
      (∀ m, m ≠ C → m ≠ A → 0 < sarea (P C) (P A) (P m)) ∧
      Set.ncard {m | IsHullVertex P m} ≤ 6 := by
  sorry

/-! ### §3. The complete normalized family N -/

/-- **Corollary 2** (`THREE_INTERIOR_TRIANGLES:Corollary2`). The entire family N has triangle
capacity two. In family N (11) with least area at least `A₀`, every actual triangle contains at
most two further points, whether or not the three free points add square-boundary contacts or
hull vertices. By Theorem 1 the triangle would be an ear of the anchor hexagon `ABCDFH`, of doubled
area at most `1 - s` (table, lines 306-313), against `Γs`, and `(Γ+1)s₀ > 1` (12).
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 21-25 (proof 271-329).
Uses: THREE_INTERIOR_TRIANGLES:Theorem1, CORNER_FAMILIES:SixPointTriangularHullTheorem -/
theorem corollary2 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    TriangleCapacityTwo (nConfig a h b c d f X Y Z) := by
  sorry

/-! ### §4. The complete normalized Type-II family -/

/-- **Corollary 4** (`THREE_INTERIOR_TRIANGLES:Corollary4`). Type II has triangle capacity two.
For `D=(0,1), C=(1,1), E=(0,λ), B=(b,0)` with `0<λ<1`, `0<b≤1/2` and five further points anywhere
in the square, least area at least `A₀` implies that every actual triangle contains at most two
further points. Every hull ear is excluded: by the strip `P_y ≤ 1 - s`, the chains at `D` and `C`,
the corner-triangle theorem of `ONE_CORNER.md` for `DCE`, and, for `DCR`, a shear onto a corner
triangle.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 331-442.
Uses: THREE_INTERIOR_TRIANGLES:Theorem1, TYPE_II:EndpointTriangleTheorem,
CORNER_FAMILIES:TriangularHullLemma, CORNER_FAMILIES:SixPointTriangularHullTheorem,
ONE_CORNER:CornerTriangleOccupancyTheorem -/
theorem corollary4 {l b : ℝ} {V W X Y Z : Point} (hl : 0 < l) (hl1 : l < 1) (hb : 0 < b)
    (hb2 : b ≤ 1 / 2) (hV : V ∈ unitSquare) (hW : W ∈ unitSquare) (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    TriangleCapacityTwo (typeIIConfig l b V W X Y Z) := by
  sorry

/-! ### §5. Unrestricted triangle capacity two -/

/-- **Claim** (`THREE_INTERIOR_TRIANGLES:claim-min-enclosing-parallelogram`, made up). A minimum-area
enclosing parallelogram exists. For nine points in the square with positive least area, some
affine map with `|det| ≥ 1` sends them into the square so that the image square is a minimum-area
enclosing parallelogram: no affine map of absolute determinant greater than one sends the image
into the square. The proof is by compactness over pairs of unit normals, with
`𝒜(u, v) = w(u) w(v)/|det(u, v)|`.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 455-477. -/
theorem claim_min_enclosing_parallelogram {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hpos : 0 < minTriangleArea P) :
    ∃ a b c d e f : ℝ, (∀ i, affineMap a b c d e f (P i) ∈ unitSquare) ∧
      1 ≤ |a * d - b * c| ∧
      ∀ a' b' c' d' e' f' : ℝ,
        (∀ i, affineMap a' b' c' d' e' f' (affineMap a b c d e f (P i)) ∈ unitSquare) →
          |a' * d' - b' * c'| ≤ 1 := by
  sorry

/-- **Claim** (`THREE_INTERIOR_TRIANGLES:claim-normalization`, made up). Normal form without
maximality. Every nine-point configuration in the square with least area at least `A₀` has an
affine image, by a map with `|det| ≥ 1` and a relabelling, that lies in the square and belongs to
N, C1, C2, Type II with `b ≤ 1/2`, or Type III. The proofs of `BOUNDARY_REDUCTION.md` and
`GLOBAL_STRUCTURE.md` use only the minimum-parallelogram property, which their determinant-one
shears preserve. The Type-II step is the shear normalization of `TYPE_II.md` §2.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 479-497.
Uses: THREE_INTERIOR_TRIANGLES:claim-min-enclosing-parallelogram,
BOUNDARY_REDUCTION:claim-side-contact, BOUNDARY_REDUCTION:claim-overlap,
BOUNDARY_REDUCTION:claim-adjacent-shear, GLOBAL_STRUCTURE:Lemma1, GLOBAL_STRUCTURE:Corollary2,
GLOBAL_STRUCTURE:claim-N-selection, GLOBAL_STRUCTURE:claim-C1-selection,
GLOBAL_STRUCTURE:claim-C2-selection, TYPE_II:ShearNormalization -/
theorem claim_normalization {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) :
    ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 9)), 1 ≤ |a * d - b * c| ∧
      (∀ i, affineMap a b c d e f (P (σ i)) ∈ unitSquare) ∧
      (IsN (affineMap a b c d e f ∘ P ∘ σ) ∨ IsC1 (affineMap a b c d e f ∘ P ∘ σ) ∨
        IsC2 (affineMap a b c d e f ∘ P ∘ σ) ∨ IsTypeIIHalf (affineMap a b c d e f ∘ P ∘ σ) ∨
        IsTypeIII (affineMap a b c d e f ∘ P ∘ σ)) := by
  sorry

/-- **Corollary 5** (`THREE_INTERIOR_TRIANGLES:Corollary5`). Global triangle capacity. In any
nine-point configuration in the unit square with least area at least `A₀`, every triangle spanned
by three of its points contains at most two further points. No normalization or maximizing
hypothesis is assumed.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 444-506.
Uses: THREE_INTERIOR_TRIANGLES:claim-normalization, OPPOSITE_CORNERS:Corollary2,
CORNER_FAMILIES:TypeIII-complete, THREE_INTERIOR_TRIANGLES:Corollary2,
ONE_CORNER:GlobalC1OccupancyCorollary, THREE_INTERIOR_TRIANGLES:Corollary4 -/
theorem corollary5 {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) : TriangleCapacityTwo P := by
  sorry

end Heilbronn.ThreeInteriorTriangles
