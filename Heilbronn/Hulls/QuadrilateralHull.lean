module

public import Heilbronn.Common.Families

/-! # Quadrilateral hulls and restrictions on the low-contact families (`hand/QUADRILATERAL_HULL.md`)

**Role.** A component on the primary route.
* Theorem 1 is used by `SIX_BOUNDARY_SINGLE_SIDE`, `SIX_BOUNDARY_SINGLE_TOP(_COMPLETION)`,
  `SEVEN_BOUNDARY_CAPS`, `C1_ZERO_LOWER`, `C1_ONE_LOWER_TOP_CAP`, `SIX_BOUNDARY_HULL` and
  `ONE_CORNER`.
* Theorem 2 and Corollary 3 are used by `C1_ZERO_LOWER`.
* Theorem 4 is used by `SIX_BOUNDARY_SINGLE_SIDE`, `SIX_BOUNDARY_SINGLE_TOP(_COMPLETION)`,
  `SIX_BOUNDARY_EXTERIOR` and `SEVEN_BOUNDARY_CAPS`.
* §4 is used by `SIX_BOUNDARY_HULL` and `ONE_CORNER`.
* Lemma 5 is used by `SIX_BOUNDARY_HULL` (lines 181-182).

**Setting.** Small point sets with a quadrilateral hull, and the normal forms N
(`NAnchors`/`nConfig`) and C1 (`C1Anchors`/`c1Config`) of `Common/Families.lean`.
`K = 4 + 2√3` and `Γ = (11 + 3√5)/2` are the triangular-hull constants of `CORNER_FAMILIES.md`
(written out). A convex quadrilateral `ABCD` is given by its vertices in counterclockwise order
(`ConvexQuad`). "The six (seven) points have that quadrilateral hull" means that the other points
lie in the closed quadrilateral (`InClosedQuad`). "Contains" means strictly inside (`InQuad`).
`quadArea` is the area, `(sarea A B C + sarea A C D)/2`.

**Results.**
* `theorem1`: six points with a quadrilateral hull of area `S` have least area at most `S/8`. Equality
  holds only for an affine image of the square corners with `(1/4,1/2), (3/4,1/2)`.
  `claim_attainment`: that configuration attains `1/8`.
* `theorem2`: seven points with a quadrilateral hull of area `S` satisfy `S ≥ (Γ+1)t`.
* `corollary3`: at least area `A₀`, a convex quadrilateral of four actual points with area at most
  `1/2` contains at most two further points.
* `theorem4`: in N, two free points in `T₀ = conv{(0,0), H, C}` force least area at most
  `7hc/128 ≤ 7/128 < A₀`.
* `claim_13`, `claim_14_15`, `claim_16_18`: §4, the anchor hull consequences for N and C1.
* `lemma5`: in N the ears `ABH` and `ABC` are not both occupied, and the transposition exchanging
  them preserves N.

**Implicit in the manuscript.**
* Corollary 3: the quadrilateral is convex (its four vertices in convex position). The manuscript
  says only "a quadrilateral spanned by four actual configuration points". It is stated for any
  configuration (any number of points; the threshold `A₀` is what matters).
* §4 (14)-(18): "the hull is exactly the hexagon `ABCDFH`" (respectively the pentagon `ACDFH`) is
  stated as "every free point lies strictly inside it" (`InNHexagon`, `InC1Pentagon`). The lower
  part (`HABC`, respectively the triangle `AHC`) is the side of the line `HC` containing `(0,0)`,
  where `sarea H C X < 0`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.QuadrilateralHull

/-! ### Convex quadrilaterals -/

/-- `A, B, C, D` are the counterclockwise vertices of a convex quadrilateral. -/
def ConvexQuad (A B C D : Point) : Prop :=
  0 < sarea A B C ∧ 0 < sarea B C D ∧ 0 < sarea C D A ∧ 0 < sarea D A B

/-- `X` lies strictly inside the counterclockwise convex quadrilateral `ABCD`. -/
def InQuad (X A B C D : Point) : Prop :=
  0 < sarea A B X ∧ 0 < sarea B C X ∧ 0 < sarea C D X ∧ 0 < sarea D A X

/-- `X` lies in the closed counterclockwise convex quadrilateral `ABCD`. -/
def InClosedQuad (X A B C D : Point) : Prop :=
  0 ≤ sarea A B X ∧ 0 ≤ sarea B C X ∧ 0 ≤ sarea C D X ∧ 0 ≤ sarea D A X

/-- The area of the counterclockwise quadrilateral `ABCD`. -/
def quadArea (A B C D : Point) : ℝ := (sarea A B C + sarea A C D) / 2

/-- The equality configuration of Theorem 1: the four corners of the square and
`(1/4, 1/2), (3/4, 1/2)`. -/
def sixQuadExtremal : Fin 6 → Point :=
  ![(0, 0), (1, 0), (1, 1), (0, 1), (1 / 4, 1 / 2), (3 / 4, 1 / 2)]

/-! ### §1. Six points with a quadrilateral hull -/

/-- **Theorem 1** (`QUADRILATERAL_HULL:Theorem1`). Six points with a quadrilateral convex hull of
area `S` have least triangle area at most `S/8`. Equality forces a parallelogram hull, and the
configuration is then an affine image, up to relabelling, of the four square corners with
`(1/4, 1/2), (3/4, 1/2)`. If a diagonal leaves both interior points on one side,
`S ≥ (K+1)t > 8t`; otherwise diagonal coordinates and AM-GM give `t ≤ S/8`.
`hand/QUADRILATERAL_HULL.md`, lines 24-106.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem theorem1 {A B C D P Q : Point} (hq : ConvexQuad A B C D) (hP : InClosedQuad P A B C D)
    (hQ : InClosedQuad Q A B C D) :
    minTriangleArea ![A, B, C, D, P, Q] ≤ quadArea A B C D / 8 ∧
      (minTriangleArea ![A, B, C, D, P, Q] = quadArea A B C D / 8 →
        ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i)) := by
  sorry

/-- **Claim** (`QUADRILATERAL_HULL:claim-attainment`, made up). Attainment in Theorem 1. The square
configuration of the equality case has least area `1/8` and hull area `1`: every doubled area is at
least `1/4`.
`hand/QUADRILATERAL_HULL.md`, lines 100-106. -/
theorem claim_attainment :
    minTriangleArea sixQuadExtremal = 1 / 8 ∧ quadArea (0, 0) (1, 0) (1, 1) (0, 1) = 1 := by
  sorry

/-! ### §2. Seven points with a quadrilateral hull -/

/-- **Theorem 2** (`QUADRILATERAL_HULL:Theorem2`). Seven points with a quadrilateral convex hull of
area `S` and least area `t` satisfy `S ≥ (Γ+1)t`, `Γ = (11+3√5)/2`. A `3+0` diagonal split gives
`Γt + t`, and a `2+1` split gives `Kt + 3t` with `K + 3 = 7 + 2√3 > Γ + 1`.
`hand/QUADRILATERAL_HULL.md`, lines 108-132.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, CORNER_FAMILIES:SixPointTriangularHullTheorem -/
theorem theorem2 {A B C D P Q R : Point} (hq : ConvexQuad A B C D)
    (hP : InClosedQuad P A B C D) (hQ : InClosedQuad Q A B C D) (hR : InClosedQuad R A B C D) :
    ((11 + 3 * Real.sqrt 5) / 2 + 1) * minTriangleArea ![A, B, C, D, P, Q, R] ≤
      quadArea A B C D := by
  sorry

/-- **Corollary 3** (`QUADRILATERAL_HULL:Corollary3`). Small-quadrilateral occupancy. In any
configuration with least area at least `A₀`, a convex quadrilateral spanned by four of its points
and of area at most `1/2` contains at most two further points. Otherwise Theorem 2 would give
`t ≤ 1/(13 + 3√5) < 1/19 < A₀` (9).
`hand/QUADRILATERAL_HULL.md`, lines 134-150.
Uses: QUADRILATERAL_HULL:Theorem2 -/
theorem corollary3 {n : ℕ} {P : Fin n → Point} (hA : A₀ ≤ minTriangleArea P) {i j k l : Fin n}
    (hq : ConvexQuad (P i) (P j) (P k) (P l))
    (harea : quadArea (P i) (P j) (P k) (P l) ≤ 1 / 2) :
    Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} ≤ 2 := by
  sorry

/-! ### §3. The lower-left cap in family N -/

/-- `X` lies in the closed triangle `T₀ = conv{(0,0), H, C} = {x, y ≥ 0, hx + cy ≤ hc}` (11). -/
def InT0 (h c : ℝ) (X : Point) : Prop :=
  0 ≤ X.1 ∧ 0 ≤ X.2 ∧ h * X.1 + c * X.2 ≤ h * c

/-- **Theorem 4** (`QUADRILATERAL_HULL:Theorem4`). The N cap exclusion. In family N, if two of the
three free points lie in `T₀ = conv{(0,0), H, C}`, the least area of the nine points is at most
`7hc/128 ≤ 7/128 < A₀`. The affine map of `T₀` onto a half-square sends `H, C, A, B, P, Q` to the
family of `OPPOSITE_CORNERS.md` Theorem 1, with area factor `1/(hc)`.
`hand/QUADRILATERAL_HULL.md`, lines 152-194.
Uses: OPPOSITE_CORNERS:Theorem1 -/
theorem theorem4 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h2 : (InT0 h c X ∧ InT0 h c Y) ∨ (InT0 h c X ∧ InT0 h c Z) ∨ (InT0 h c Y ∧ InT0 h c Z)) :
    minTriangleArea (nConfig a h b c d f X Y Z) ≤ 7 * h * c / 128 ∧
      7 * h * c / 128 ≤ 7 / 128 ∧ (7 / 128 : ℝ) < A₀ := by
  sorry

/-! ### §4. Consequences when the prescribed anchors are the full hull -/

/-- **Claim** (`QUADRILATERAL_HULL:claim-(13)`). The upper quadrilateral
`Q₀ = conv{H, C, D, F}`, with `H=(0,h), C=(c,0), D=(1,d), F=(f,1)` in this cyclic order, has area
`(1 - (h-d)(c-f))/2`. This is at most `1/2` when `d ≤ h` and `f ≤ c`.
`hand/QUADRILATERAL_HULL.md`, lines 196-213. -/
theorem claim_13 (h c d f : ℝ) :
    quadArea (0, h) (c, 0) (1, d) (f, 1) = (1 - (h - d) * (c - f)) / 2 ∧
      (d ≤ h → f ≤ c → quadArea (0, h) (c, 0) (1, d) (f, 1) ≤ 1 / 2) := by
  sorry

/-- `X` lies strictly inside the anchor hexagon `A B C D F H` of family N
(`A=(0,a), B=(b,0), C=(c,0), D=(1,d), F=(f,1), H=(0,h)`, counterclockwise). -/
def InNHexagon (a h b c d f : ℝ) (X : Point) : Prop :=
  0 < sarea (0, a) (b, 0) X ∧ 0 < sarea (b, 0) (c, 0) X ∧ 0 < sarea (c, 0) (1, d) X ∧
    0 < sarea (1, d) (f, 1) X ∧ 0 < sarea (f, 1) (0, h) X ∧ 0 < sarea (0, h) (0, a) X

/-- **Claim** (`QUADRILATERAL_HULL:claim-(14)(15)`). N with exactly the six prescribed hull
vertices. If the three free points are strictly inside the hexagon `ABCDFH` and the least area is
at least `A₀`, then exactly one of them is in the lower quadrilateral `HABC` (below `HC`) and two
are in `Q₀` (14); and `1 - (h-d)(c-f) ≥ 16A₀` (15).
`hand/QUADRILATERAL_HULL.md`, lines 215-239.
Uses: QUADRILATERAL_HULL:Theorem4, QUADRILATERAL_HULL:Corollary3, QUADRILATERAL_HULL:claim-(13),
QUADRILATERAL_HULL:Theorem1 -/
theorem claim_14_15 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InNHexagon a h b c d f X) (hY : InNHexagon a h b c d f Y)
    (hZ : InNHexagon a h b c d f Z) (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    ((sarea (0, h) (c, 0) X < 0 ∧ 0 < sarea (0, h) (c, 0) Y ∧ 0 < sarea (0, h) (c, 0) Z) ∨
      (0 < sarea (0, h) (c, 0) X ∧ sarea (0, h) (c, 0) Y < 0 ∧ 0 < sarea (0, h) (c, 0) Z) ∨
      (0 < sarea (0, h) (c, 0) X ∧ 0 < sarea (0, h) (c, 0) Y ∧ sarea (0, h) (c, 0) Z < 0)) ∧
      16 * A₀ ≤ 1 - (h - d) * (c - f) := by
  sorry

/-- `X` lies strictly inside the anchor pentagon `O C D F H` of family C1
(`O=(0,0), C=(c,0), D=(1,d), F=(f,1), H=(0,h)`, counterclockwise). -/
def InC1Pentagon (h c d f : ℝ) (X : Point) : Prop :=
  0 < sarea (0, 0) (c, 0) X ∧ 0 < sarea (c, 0) (1, d) X ∧ 0 < sarea (1, d) (f, 1) X ∧
    0 < sarea (f, 1) (0, h) X ∧ 0 < sarea (0, h) (0, 0) X

/-- **Claim** (`QUADRILATERAL_HULL:claim-(16)-(18)`). C1 with exactly the five prescribed hull
vertices. If the four free points are strictly inside the pentagon `OCDFH` and the least area is at
least `A₀`, the lower/upper split by the line `HC` is `(2,2)` or `(3,1)` (16). For `(2,2)`:
`hc ≥ 2KA₀` and `1 - (h-d)(c-f) ≥ 16A₀` (17). For `(3,1)`: `hc ≥ 2ΓA₀ = (11+3√5)A₀` (18).
`hand/QUADRILATERAL_HULL.md`, lines 241-278.
Uses: CORNER_FAMILIES:GlobalOccupancyCorollary, QUADRILATERAL_HULL:Corollary3,
QUADRILATERAL_HULL:claim-(13), CORNER_FAMILIES:TwoInteriorPointLemma, QUADRILATERAL_HULL:Theorem1,
CORNER_FAMILIES:SixPointTriangularHullTheorem -/
theorem claim_16_18 {h c d f : ℝ} {W X Y Z : Point} (hC : C1Anchors h c d f)
    (hW : InC1Pentagon h c d f W) (hX : InC1Pentagon h c d f X) (hY : InC1Pentagon h c d f Y)
    (hZ : InC1Pentagon h c d f Z) (hA : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    (Set.ncard {m : Fin 4 | sarea (0, h) (c, 0) (![W, X, Y, Z] m) < 0} = 2 ∧
        2 * (4 + 2 * Real.sqrt 3) * A₀ ≤ h * c ∧ 16 * A₀ ≤ 1 - (h - d) * (c - f)) ∨
      (Set.ncard {m : Fin 4 | sarea (0, h) (c, 0) (![W, X, Y, Z] m) < 0} = 3 ∧
        (11 + 3 * Real.sqrt 5) * A₀ ≤ h * c) := by
  sorry

/-! ### §5. One of the two lower N ears is always empty -/

/-- **Lemma 5** (`QUADRILATERAL_HULL:Lemma5`). In family N, suppose every triangle has area at
least `t` with `s = 2t > 1/12`. Then the two actual ears `ABH` and `ABC` (`A=(0,a), B=(b,0),
H=(0,h), C=(c,0)`) do not both contain further configuration points. Otherwise `b(h-a) ≥ 3s` and
`a(c-b) ≥ 3s`, and Cauchy-Schwarz gives `2√(3s) ≤ 1`. No hull hypothesis is needed. The
normalization assertion: the transposition `(x,y) ↦ (y,x)`, followed by the relabelling
`(A,H,B,C,D,F) ↦ (B,C,A,H,F,D)`, preserves family N and exchanges the two ears, so one may assume
that `ABC` contains no further point.
`hand/QUADRILATERAL_HULL.md`, lines 280-313. -/
theorem lemma5 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (ht : 1 / 24 < minTriangleArea (nConfig a h b c d f X Y Z)) :
    ¬ ((∃ m, InTriangle (nConfig a h b c d f X Y Z m) (0, a) (b, 0) (0, h)) ∧
        (∃ m, InTriangle (nConfig a h b c d f X Y Z m) (0, a) (b, 0) (c, 0))) ∧
      NAnchors b c a h f d ∧
      (⟨true, false, false⟩ : SquareSymmetry).apply ∘ nConfig a h b c d f X Y Z =
        nConfig b c a h f d (X.2, X.1) (Y.2, Y.1) (Z.2, Z.1) ∘
          ⇑(Equiv.swap (0 : Fin 9) 2 * Equiv.swap (1 : Fin 9) 3 * Equiv.swap (4 : Fin 9) 5) := by
  sorry

end Heilbronn.QuadrilateralHull
