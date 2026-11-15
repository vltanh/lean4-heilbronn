module

public import Heilbronn.Common.Families

/-! # Corner families, §§1–5: stars, seven points with a triangular hull, `≥ 4` upper points
(`hand/CORNER_FAMILIES.md`, lines 1–302)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`); see that module for
the role of the note. This part proves the general area bounds for stars of degree four and five
(§1) and for seven points with a triangular convex hull (§2), the Type-III exclusion for at least
four upper points (§3), the global triangle-occupancy corollary (§4), and the residual regions of
the Type-III family (§5).

Definitions (shared by all parts of the note, and by other notes):

* `InsideTriangle X A B C`: `X` strictly inside the triangle `ABC`, of either orientation;
* `InClosedTriangle X A B C`: `X` in the closed triangle `ABC`, of either orientation;
* `SurroundsOnce O V`: the points `V 0, …, V (n-1)` lie on rays from `O` at strictly increasing
  angles spanning less than one turn (the neighbours of an interior vertex listed
  counterclockwise, the angles from `V i` to `V (i+1)` summing to `2π`);
* `ConvexQuad A B C D` (counterclockwise convex position), `InQuad X A B C D` (strictly inside),
  `quadArea2` (doubled area);
* `sevenConfig A B C X`: the seven points `A, B, C, X 0, …, X 3`;
* `freeSix`, `upperCount`: the six free points of a Type-III configuration and the number of them
  above the diagonal `y = x`;
* `upperRegion s = U_s`, `lowerRegion s = L_s` (8).

**Results.** `starLemma_four`, `starLemma_five` (2) with `eq3`, `eq4`;
`claim_five_point_convex_quad`, `claim_empty_convex_quad`, `claim_deg4or5`,
`triangularHullLemma` (5); `typeIII_ge4upper` (1); `claim_area_le_half`,
`globalOccupancyCorollary`; `claim_residual_regions`, `claim_residual_regions_count` (7)–(8).

**Triangulations.** Mathlib has no planar triangulations. The star lemma is stated for an
arbitrary point `O` with neighbours `V i`: the triangulation enters only through the positive
orientation of the faces `O V_i V_{i+1}` and, in degree five, the angle condition
`Σ θ_i = 2π` (`SurroundsOnce`); only the triangles `O V_i V_j` are used. The triangulation claim
of lines 172–215 (`claim_deg4or5`) is stated in the form the area sum (lines 217–228) uses: a
star of degree four or five around an interior point together with `9 - d` further faces, all
spanned by the seven points, whose areas add up to the hull area (flagged as a
reformulation at the declaration).

**Gap** (inventory 02, `CORNER_FAMILIES` lines 161–165). The argument that a minimum-area convex
quadrilateral is empty may return the quadrilateral itself. The result (`claim_empty_convex_quad`)
is true (fix: with `X` inside `abc`, the quadrilateral `aXcd` is convex and smaller) and is
stated here; the flawed intermediate step is not.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-! ### Shared notions -/

/-- `X` lies strictly inside the triangle `ABC`, whose vertices may be in either orientation. -/
def InsideTriangle (X A B C : Point) : Prop := InTriangle X A B C ∨ InTriangle X A C B

/-- `X` lies in the closed triangle `ABC` (either orientation): the three edge signs are all
`≥ 0` or all `≤ 0`. For a nondegenerate triangle this is its convex hull. -/
def InClosedTriangle (X A B C : Point) : Prop :=
  (0 ≤ sarea A B X ∧ 0 ≤ sarea B C X ∧ 0 ≤ sarea C A X) ∨
    (sarea A B X ≤ 0 ∧ sarea B C X ≤ 0 ∧ sarea C A X ≤ 0)

/-- The points `V 0, …, V (n-1)` surround `O` exactly once counterclockwise: they lie on rays
from `O` at strictly increasing angles `θ 0 < ⋯ < θ (n-1) < θ 0 + 2π`. With positively oriented
faces `O V_i V_{i+1}`, the angles from `V_i` to `V_{i+1}` then lie in `(0, π)` and sum to `2π`
(`CORNER_FAMILIES.md` lines 115–121). -/
def SurroundsOnce {n : ℕ} (O : Point) (V : Fin n → Point) : Prop :=
  ∃ θ : Fin n → ℝ, StrictMono θ ∧ (∀ i j, θ j < θ i + 2 * Real.pi) ∧
    ∀ i, ∃ r : ℝ, 0 < r ∧ V i = (O.1 + r * Real.cos (θ i), O.2 + r * Real.sin (θ i))

/-- `A, B, C, D` are in convex position, in counterclockwise order. -/
def ConvexQuad (A B C D : Point) : Prop :=
  0 < sarea A B C ∧ 0 < sarea B C D ∧ 0 < sarea C D A ∧ 0 < sarea D A B

/-- `X` lies strictly inside the counterclockwise quadrilateral `ABCD`. -/
def InQuad (X A B C D : Point) : Prop :=
  0 < sarea A B X ∧ 0 < sarea B C X ∧ 0 < sarea C D X ∧ 0 < sarea D A X

/-- Twice the signed area of the quadrilateral `ABCD`. -/
def quadArea2 (A B C D : Point) : ℝ := sarea A B C + sarea A C D

/-- The seven points `A, B, C, X 0, X 1, X 2, X 3`. -/
def sevenConfig (A B C : Point) (X : Fin 4 → Point) : Fin 7 → Point :=
  ![A, B, C, X 0, X 1, X 2, X 3]

/-- The six free points of a Type-III configuration `typeIIIConfig U V W X Y Z`. -/
def freeSix (U V W X Y Z : Point) : Fin 6 → Point := ![U, V, W, X, Y, Z]

/-- The number of free points of a Type-III configuration strictly above the diagonal `y = x`
("upper" points, lines 18–20). -/
def upperCount (U V W X Y Z : Point) : ℕ :=
  {i : Fin 6 | (freeSix U V W X Y Z i).1 < (freeSix U V W X Y Z i).2}.ncard

/-- `U_s = conv{(s, 2s), (s, 1 - s), (1 - 2s, 1 - s)} = {x ≥ s, y ≤ 1 - s, y - x ≥ s}` (8). -/
def upperRegion (s : ℝ) : Set Point := {p | s ≤ p.1 ∧ p.2 ≤ 1 - s ∧ p.1 + s ≤ p.2}

/-- `L_s = conv{(s, 0), (1, 0), (1, 1 - s)} = {y ≥ 0, x ≤ 1, x - y ≥ s}` (8). -/
def lowerRegion (s : ℝ) : Set Point := {p | 0 ≤ p.2 ∧ p.1 ≤ 1 ∧ p.2 + s ≤ p.1}

/-! ### §1. Stars of degree four and five -/

/-- **Star lemma** (`CORNER_FAMILIES:StarLemma`), equation (3): for `O` and four points,
`b c = a₁a₃ - a₂a₄` with `b = [V₁V₃]`, `c = [V₂V₄]` (doubled areas, any signs).
`hand/CORNER_FAMILIES.md`, lines 93–99. -/
theorem eq3 (O : Point) (V : Fin 4 → Point) :
    sarea O (V 0) (V 2) * sarea O (V 1) (V 3) =
      sarea O (V 0) (V 1) * sarea O (V 2) (V 3) - sarea O (V 1) (V 2) * sarea O (V 3) (V 0) := by
  sorry

/-- **Star lemma** (`CORNER_FAMILIES:StarLemma`), equation (4): for `O` and five points and every
cyclic index `i`, `b_i b_{i+1} + a_{i+1} b_{i+3} = a_i a_{i+2}` with `a_i = [V_i V_{i+1}]`,
`b_i = [V_i V_{i+2}]`. `hand/CORNER_FAMILIES.md`, lines 106–112. -/
theorem eq4 (O : Point) (V : Fin 5 → Point) (i : Fin 5) :
    sarea O (V i) (V (i + 2)) * sarea O (V (i + 1)) (V (i + 3)) +
        sarea O (V (i + 1)) (V (i + 2)) * sarea O (V (i + 3)) (V i) =
      sarea O (V i) (V (i + 1)) * sarea O (V (i + 2)) (V (i + 3)) := by
  sorry

/-- **Star lemma** (`CORNER_FAMILIES:StarLemma`), degree four, equation (2) with `d = 4`: if the
faces `O V_i V_{i+1}` are positively oriented and every triangle `O V_i V_j` has area at least
`t > 0`, the faces have total area at least `(2 + 2√2)t`. (Only the triangles at `O` are used.)
`hand/CORNER_FAMILIES.md`, lines 70–104.

Uses: CORNER_FAMILIES:StarLemma (3) -/
theorem starLemma_four (O : Point) (V : Fin 4 → Point) (t : ℝ) (ht : 0 < t)
    (hface : ∀ i, 0 < sarea O (V i) (V (i + 1)))
    (harea : ∀ i j, i ≠ j → t ≤ triangleArea O (V i) (V j)) :
    (2 + 2 * Real.sqrt 2) * t ≤ ∑ i, triangleArea O (V i) (V (i + 1)) := by
  sorry

/-- **Star lemma** (`CORNER_FAMILIES:StarLemma`), degree five, equation (2) with `d = 5`: if the
five neighbours surround `O` once counterclockwise, the faces `O V_i V_{i+1}` are positively
oriented, and every triangle `O V_i V_j` has area at least `t > 0`, the faces have total area at
least `(3 + 2√2)t`. The neighbour polygon need not be convex.
`hand/CORNER_FAMILIES.md`, lines 70–137.

Uses: CORNER_FAMILIES:StarLemma (4) -/
theorem starLemma_five (O : Point) (V : Fin 5 → Point) (t : ℝ) (ht : 0 < t)
    (hsurr : SurroundsOnce O V) (hface : ∀ i, 0 < sarea O (V i) (V (i + 1)))
    (harea : ∀ i j, i ≠ j → t ≤ triangleArea O (V i) (V j)) :
    (3 + 2 * Real.sqrt 2) * t ≤ ∑ i, triangleArea O (V i) (V (i + 1)) := by
  sorry

/-! ### §2. Seven points with a triangular convex hull -/

/-- **Claim** (`CORNER_FAMILIES:claim-five-point-convex-quad`): five points in general position
contain four in convex position (Esther Klein; proved inline). `hand/CORNER_FAMILIES.md`,
lines 152–159. -/
theorem claim_five_point_convex_quad (P : Fin 5 → Point) (hgp : 0 < minTriangleArea P) :
    ∃ i j k l : Fin 5, ConvexQuad (P i) (P j) (P k) (P l) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-empty-convex-quad`): among points in general position, a
convex quadrilateral of minimum area spanned by them contains none of the points in its
interior (none lies on its edges, by general position). The manuscript states this for its seven
points; the printed proof has a gap (see the module docstring), the statement is true.
`hand/CORNER_FAMILIES.md`, lines 161–165. -/
theorem claim_empty_convex_quad {n : ℕ} (P : Fin n → Point) (hgp : 0 < minTriangleArea P)
    (i j k l : Fin n) (hq : ConvexQuad (P i) (P j) (P k) (P l))
    (hmin : ∀ i' j' k' l' : Fin n, ConvexQuad (P i') (P j') (P k') (P l') →
      quadArea2 (P i) (P j) (P k) (P l) ≤ quadArea2 (P i') (P j') (P k') (P l'))
    (m : Fin n) : ¬ InQuad (P m) (P i) (P j) (P k) (P l) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-deg4or5`), in star form: seven points in general position
with triangular hull `ABC` have a triangulation with an interior vertex of degree four or five;
equivalently for the area count, there are an interior point `o`, its `d ∈ {4, 5}` distinct
neighbours `v` surrounding it once with positively oriented faces, and `9 - d` further faces
spanned by three distinct of the seven points, such that the areas of the `d` star faces and
the `9 - d` other faces add up to the area of `ABC`. Reformulated without triangulations
(Mathlib has none): the manuscript's claim is about a triangulation, and its proof uses the
extension of a noncrossing edge set to a triangulation, edge and face counts, and flips.
`hand/CORNER_FAMILIES.md`, lines 167–228.

Uses: CORNER_FAMILIES:claim-five-point-convex-quad, CORNER_FAMILIES:claim-empty-convex-quad -/
-- FLAG: reformulation. The manuscript states "some triangulation of the seven points has an
-- interior vertex of degree 4 or 5" (lines 172–215); this is its star-and-area-sum consequence.
theorem claim_deg4or5 (A B C : Point) (X : Fin 4 → Point)
    (hX : ∀ i, InsideTriangle (X i) A B C) (hgp : 0 < minTriangleArea (sevenConfig A B C X)) :
    let P := sevenConfig A B C X
    (∃ (o : Fin 7) (v : Fin 4 → Fin 7) (F : Fin 5 → Fin 7 × Fin 7 × Fin 7),
      3 ≤ o.val ∧ Function.Injective v ∧ (∀ i, v i ≠ o) ∧ SurroundsOnce (P o) (P ∘ v) ∧
      (∀ i, 0 < sarea (P o) (P (v i)) (P (v (i + 1)))) ∧
      (∀ j, (F j).1 ≠ (F j).2.1 ∧ (F j).2.1 ≠ (F j).2.2 ∧ (F j).1 ≠ (F j).2.2) ∧
      triangleArea A B C = ∑ i, triangleArea (P o) (P (v i)) (P (v (i + 1))) +
        ∑ j, triangleArea (P (F j).1) (P (F j).2.1) (P (F j).2.2)) ∨
    (∃ (o : Fin 7) (v : Fin 5 → Fin 7) (F : Fin 4 → Fin 7 × Fin 7 × Fin 7),
      3 ≤ o.val ∧ Function.Injective v ∧ (∀ i, v i ≠ o) ∧ SurroundsOnce (P o) (P ∘ v) ∧
      (∀ i, 0 < sarea (P o) (P (v i)) (P (v (i + 1)))) ∧
      (∀ j, (F j).1 ≠ (F j).2.1 ∧ (F j).2.1 ≠ (F j).2.2 ∧ (F j).1 ≠ (F j).2.2) ∧
      triangleArea A B C = ∑ i, triangleArea (P o) (P (v i)) (P (v (i + 1))) +
        ∑ j, triangleArea (P (F j).1) (P (F j).2.1) (P (F j).2.2)) := by
  sorry

/-- **Triangular-hull lemma** (`CORNER_FAMILIES:TriangularHullLemma`), equation (5): seven points
whose convex hull is a triangle `ABC` (the other four strictly inside) and whose triangles all
have area at least `t` satisfy `area(ABC) ≥ (7 + 2√2)t`. (General position follows from `t > 0`;
for `t ≤ 0` the bound is trivial.) `hand/CORNER_FAMILIES.md`, lines 139–228.

Uses: CORNER_FAMILIES:claim-deg4or5, CORNER_FAMILIES:StarLemma -/
theorem triangularHullLemma (A B C : Point) (X : Fin 4 → Point)
    (hX : ∀ i, InsideTriangle (X i) A B C) (t : ℝ)
    (hmin : t ≤ minTriangleArea (sevenConfig A B C X)) :
    (7 + 2 * Real.sqrt 2) * t ≤ triangleArea A B C := by
  sorry

/-! ### §3. At least four upper points -/

/-- **Type-III exclusion (1)** (`CORNER_FAMILIES:TypeIII-ge4upper`): a Type-III configuration
(corners `A = (0,0)`, `B = (0,1)`, `C = (1,1)`, six free points of the square) with at least four
free points satisfying `y > x` has minimum area `t ≤ 1/(14 + 4√2) < 1/19 < A₀`.
`hand/CORNER_FAMILIES.md`, lines 18–28, 230–252.

Uses: CORNER_FAMILIES:TriangularHullLemma -/
theorem typeIII_ge4upper (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h4 : 4 ≤ upperCount U V W X Y Z) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 1 / (14 + 4 * Real.sqrt 2) ∧
      1 / (14 + 4 * Real.sqrt 2) < 1 / 19 ∧ (1 / 19 : ℝ) < A₀ := by
  sorry

/-! ### §4. The global triangle-occupancy corollary -/

/-- **Claim** (`CORNER_FAMILIES:GlobalOccupancyCorollary`), sub-claim: a triangle with vertices in
the unit square has area at most `1/2`. `hand/CORNER_FAMILIES.md`, lines 258–261. -/
theorem claim_area_le_half (P Q R : Point) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hR : R ∈ unitSquare) : triangleArea P Q R ≤ 1 / 2 := by
  sorry

/-- **Global occupancy corollary** (`CORNER_FAMILIES:GlobalOccupancyCorollary`): in a nine-point
configuration of the unit square with minimum area at least `A₀`, a triangle spanned by three
configuration points contains at most three configuration points in its interior.
`hand/CORNER_FAMILIES.md`, lines 30–34, 254–269.

Uses: CORNER_FAMILIES:TriangularHullLemma -/
theorem globalOccupancyCorollary (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i j k : Fin 9) :
    {m : Fin 9 | InsideTriangle (P m) (P i) (P j) (P k)}.ncard ≤ 3 := by
  sorry

/-! ### §5. Exact residual Type-III geometry -/

/-- **Claim** (`CORNER_FAMILIES:claim-residual-regions`), (7)–(8): in a Type-III configuration of
minimum area `t > 0`, with `s = 2t`, every free point satisfies `x ≥ s`, `y ≤ 1 - s`,
`|y - x| ≥ s`, hence lies in `U_s` or in `L_s`. `hand/CORNER_FAMILIES.md`, lines 271–289. -/
theorem claim_residual_regions (U V W X Y Z : Point) (hU : U ∈ unitSquare)
    (hV : V ∈ unitSquare) (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hZ : Z ∈ unitSquare) (t : ℝ) (ht : 0 < t)
    (hmin : t ≤ minTriangleArea (typeIIIConfig U V W X Y Z)) (i : Fin 6) :
    2 * t ≤ (freeSix U V W X Y Z i).1 ∧ (freeSix U V W X Y Z i).2 ≤ 1 - 2 * t ∧
      2 * t ≤ |(freeSix U V W X Y Z i).2 - (freeSix U V W X Y Z i).1| ∧
      (freeSix U V W X Y Z i ∈ upperRegion (2 * t) ∨
        freeSix U V W X Y Z i ∈ lowerRegion (2 * t)) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-residual-regions`), the count: at minimum area `≥ A₀`, at
most three free points lie in `U_s` (are upper), by (1). `hand/CORNER_FAMILIES.md`,
lines 289–302.

Uses: CORNER_FAMILIES:TypeIII-ge4upper -/
theorem claim_residual_regions_count (U V W X Y Z : Point) (hU : U ∈ unitSquare)
    (hV : V ∈ unitSquare) (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hZ : Z ∈ unitSquare) (hmin : A₀ ≤ minTriangleArea (typeIIIConfig U V W X Y Z)) :
    upperCount U V W X Y Z ≤ 3 := by
  sorry

end Heilbronn.CornerFamilies
