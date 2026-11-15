module

public import Heilbronn.Six.Hull

/-! # Exterior restrictions for larger hulls in family N (`hand/SIX_BOUNDARY_EXTERIOR.md`)

Role: primary-route component. Theorem 2 (the double-contact cap `(0,0)AB` is empty) and
Theorem 3 (each side cap `R = CD(1,0)`, `L = FH(0,1)` has capacity one) define the occupancy
table of `hand/UNRESTRICTED.md`, Section 4. Theorem 4 (three points in the opposite cap force an
eight-vertex hull) is used by `SIX_BOUNDARY_OPPOSITE_CAP_COMPLETION.md`; Theorem 5 (an occupied
side cap empties the opposite lower ear) by the single-side, side-opposite and side-top notes;
Lemma 6 (side projection keeps the anchor-pair costs) by the two-side projection.

Setting: `nConfig a h b c d f X Y Z` with `NAnchors a h b c d f` (the manuscript allows
`h ≤ 1`, `c ≤ 1`; the strict N conditions are used here), no exact-hull hypothesis, free points
anywhere in the square (extra boundary contacts allowed). Thresholds: `A₀` (Theorem 2,
via Lemma 1's `1/20`), `s = 7/64` doubled (Theorems 3-5).

Implicit in the manuscript: Theorem 5 assumes, as Theorems 3-4 do, that every doubled area is at
least `s = 7/64` (its proof uses the actual costs `[BCX], [CDX], [ABC], [HDF] ≥ s`).

Results:
* `lemma1`: a point of the closed cap `(0,0)AB` makes one of `AHX, BCX, ABX` smaller than
  `hc/20`;
* `theorem2`: in a competitive configuration the closed cap `(0,0)AB` contains no free point;
* `claim_exterior_partition`: the open square is the anchor hexagon together with the four
  closed caps; a free point of `T₀` lies in `HABC`; `T₀` holds at most one free point; and with
  exactly six contacts some free point lies in `R ∪ T ∪ L`;
* `theorem3`: each side cap contains at most one free point;
* `theorem4`: three free points in the opposite cap form, with `D, F`, a convex quadrilateral
  `D, E, G, F` with the third point `O ∈ DEF ∩ DGF`, and the full hull is the octagon
  `A, B, C, D, E, G, F, H`;
* `theorem5`: an occupied side cap `R` gives `[ABH] < 3s` (transposed: `L` gives `[ABC] < 3s`);
* `lemma6`: projecting a side-cap point onto its square side keeps every anchor-pair cost.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryExterior

open SixBoundary

/-! ### Section 1: the double-contact cap -/

/-- **Lemma 1** (`SIX_BOUNDARY_EXTERIOR:Lemma1`). Let `A = (0,a)`, `H = (0,h)`, `B = (b,0)`,
`C = (c,0)` with `0 < a < h ≤ 1`, `0 < b < c ≤ 1`, and let `X` lie in the closed triangle
`conv{(0,0), A, B}`. Then one of the triangles `AHX, BCX, ABX` has ordinary area strictly less
than `hc/20 ≤ 1/20`. `hand/SIX_BOUNDARY_EXTERIOR.md`, lines 28-82. -/
theorem lemma1 {a h b c : ℝ} {X : Point} (ha : 0 < a) (hah : a < h) (hh : h ≤ 1) (hb : 0 < b)
    (hbc : b < c) (hc : c ≤ 1) (hX1 : 0 ≤ X.1) (hX2 : 0 ≤ X.2)
    (hXAB : sarea (ptA a) (ptB b) X ≤ 0) :
    triangleArea (ptA a) (ptH h) X < h * c / 20 ∨ triangleArea (ptB b) (ptC c) X < h * c / 20 ∨
      triangleArea (ptA a) (ptB b) X < h * c / 20 := by
  sorry

/-- **Theorem 2** (`SIX_BOUNDARY_EXTERIOR:Theorem2`). In a competitive configuration (least area
at least `A₀`) of family N, the closed exterior cap `conv{(0,0), A, B}` contains no free point.
`hand/SIX_BOUNDARY_EXTERIOR.md`, lines 84-91.
Uses: SIX_BOUNDARY_EXTERIOR:Lemma1 -/
theorem theorem2 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    ¬ InCap00 a b X ∧ ¬ InCap00 a b Y ∧ ¬ InCap00 a b Z := by
  sorry

/-! ### Section 2: consequences for the larger-hull cases -/

/-- **Claim** (`SIX_BOUNDARY_EXTERIOR:claim-exterior-partition`). (i) A point of the open square
lies strictly inside the anchor hexagon or in one of the four closed corner caps `(0,0)AB`, `R`,
`T`, `L`. In a competitive configuration (least area at least `A₀`): (ii) a free point of the
virtual triangle `T₀ = (0,0)HC` lies inside `HABC` (Theorem 2); (iii) `T₀` contains at most one
free point (`QUADRILATERAL_HULL.md`, Theorem 4); (iv) with exactly six contacts, some free point
lies in `R ∪ T ∪ L` (Theorem 2 and the exact-hull exclusion).
`hand/SIX_BOUNDARY_EXTERIOR.md`, lines 99-123.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem2, QUADRILATERAL_HULL:Theorem4, SIX_BOUNDARY_HULL:Theorem7 -/
theorem claim_exterior_partition {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    (∀ W : Point, InOpenSquare W →
      InHexagon a h b c d f W ∨ InCap00 a b W ∨ InCapR c d W ∨ InCapT d f W ∨ InCapL f h W) ∧
    (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z) →
      (InT0 h c X → InLowerQuad a h b c X) ∧ (InT0 h c Y → InLowerQuad a h b c Y) ∧
        (InT0 h c Z → InLowerQuad a h b c Z) ∧ AtMostOne (InT0 h c) X Y Z ∧
        (ExactlySixContacts X Y Z →
          (InCapR c d X ∨ InCapT d f X ∨ InCapL f h X) ∨
            (InCapR c d Y ∨ InCapT d f Y ∨ InCapL f h Y) ∨
            (InCapR c d Z ∨ InCapT d f Z ∨ InCapL f h Z))) := by
  sorry

/-! ### Section 3: side caps have capacity one -/

/-- **Theorem 3** (`SIX_BOUNDARY_EXTERIOR:Theorem3`). If every doubled area is at least
`s = 7/64`, each of the closed side caps `conv{(1,0), C, D}` and `conv{(0,1), F, H}` contains at
most one free point. This holds throughout family N, with any number of additional hull
vertices. `hand/SIX_BOUNDARY_EXTERIOR.md`, lines 125-292.
Uses: SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem3 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    AtMostOne (InCapR c d) X Y Z ∧ AtMostOne (InCapL f h) X Y Z := by
  sorry

/-! ### Section 4: three points in the opposite cap -/

/-- The anchors and three opposite-cap points `E, G, O` in the hull order `A, B, C, D, E, G, F, H`
(the last point `O` interior). -/
def octagonDEGF (a h b c d f : ℝ) (E G : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, ptD d, E, G, ptF f, ptH h]

/-- **Theorem 4** (`SIX_BOUNDARY_EXTERIOR:Theorem4`). Suppose all three free points are in the
closed opposite cap `conv{D, F, (1,1)}` and every doubled area is at least `s = 7/64`. Then
they can be named `E, G, O` (a permutation of `X, Y, Z`) so that `D, E, G, F` is a strictly
convex quadrilateral in this counterclockwise order and `O ∈ DFE ∩ DFG` (written with the
counterclockwise triangles `DEF`, `DGF`). Consequently the full hull is the strictly convex
octagon `A, B, C, D, E, G, F, H` with `O` its sole interior point; every triangular cap hull and
every other support-cell placement is impossible.
`hand/SIX_BOUNDARY_EXTERIOR.md`, lines 298-362.
Uses: TYPE_II:EndpointTriangleTheorem, CORNER_FAMILIES:TwoInteriorPointLemma,
CORNER_FAMILIES:NontriangularHullLemma -/
theorem theorem4 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapT d f X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    ∃ σ : Equiv.Perm (Fin 3),
      IsConvexCCW ![ptD d, ![X, Y, Z] (σ 0), ![X, Y, Z] (σ 1), ptF f] ∧
      InTriangle (![X, Y, Z] (σ 2)) (ptD d) (![X, Y, Z] (σ 0)) (ptF f) ∧
      InTriangle (![X, Y, Z] (σ 2)) (ptD d) (![X, Y, Z] (σ 1)) (ptF f) ∧
      IsConvexCCW (octagonDEGF a h b c d f (![X, Y, Z] (σ 0)) (![X, Y, Z] (σ 1))) ∧
      InPolygon (octagonDEGF a h b c d f (![X, Y, Z] (σ 0)) (![X, Y, Z] (σ 1)))
        (![X, Y, Z] (σ 2)) := by
  sorry

/-! ### Section 5: an occupied side cap empties the opposite lower ear -/

/-- **Theorem 5** (`SIX_BOUNDARY_EXTERIOR:Theorem5`). Assume every doubled area is at least
`s = 7/64` (implicit in the manuscript). If a free point `X` lies in the lower-right cap
`CD(1,0)`, then `[ABH] < 3s`, so `ABH` contains no further point. Transposed: if `X` lies in the
upper-left cap `FH(0,1)`, then `[ABC] < 3s` and `ABC` contains no further point.
`hand/SIX_BOUNDARY_EXTERIOR.md`, lines 364-472.
Uses: SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem5 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    (InCapR c d X →
      sarea (ptA a) (ptB b) (ptH h) < 3 * (7 / 64) ∧
        ¬ InTriangle Y (ptA a) (ptB b) (ptH h) ∧ ¬ InTriangle Z (ptA a) (ptB b) (ptH h)) ∧
    (InCapL f h X →
      sarea (ptA a) (ptB b) (ptC c) < 3 * (7 / 64) ∧
        ¬ InTriangle Y (ptA a) (ptB b) (ptC c) ∧ ¬ InTriangle Z (ptA a) (ptB b) (ptC c)) := by
  sorry

/-! ### Section 6: side projection keeps every anchor-pair cost -/

/-- Every triangle formed by `X` and two of the six anchors has unsigned doubled area at least
`μ`. -/
def AnchorPairBound (a h b c d f μ : ℝ) (X : Point) : Prop :=
  ∀ i j : Fin 6, i < j → μ ≤ |sarea (anchorPts a h b c d f i) (anchorPts a h b c d f j) X|

/-- **Lemma 6** (`SIX_BOUNDARY_EXTERIOR:Lemma6`). Let `X = (x, y)` lie in the cap `CD(1,0)` and
`μ > 0`. If every triangle of `X` with two of the six anchors has unsigned doubled area at least
`μ`, the same holds for `(t, y)` for every `x ≤ t ≤ 1`, in particular for `X' = (1, y)` (the
proof shows the property along the whole segment). Transposed: for `Y = (z, w)` in `FH(0,1)`,
the same holds for `(z, t)`, `w ≤ t ≤ 1`. `hand/SIX_BOUNDARY_EXTERIOR.md`, lines 474-510. -/
theorem lemma6 {a h b c d f μ : ℝ} (hN : NAnchors a h b c d f) (hμ : 0 < μ) :
    (∀ X : Point, InCapR c d X → AnchorPairBound a h b c d f μ X →
      ∀ t : ℝ, X.1 ≤ t → t ≤ 1 → AnchorPairBound a h b c d f μ (t, X.2)) ∧
    (∀ Y : Point, InCapL f h Y → AnchorPairBound a h b c d f μ Y →
      ∀ t : ℝ, Y.2 ≤ t → t ≤ 1 → AnchorPairBound a h b c d f μ (Y.1, t)) := by
  sorry

end Heilbronn.SixBoundaryExterior
