module

public import Heilbronn.Six.Exterior

/-! # A sharp two-contact projection chamber in family N
(`hand/SIX_BOUNDARY_TWO_SIDE_PROJECTION.md`)

Role: primary-route component, restricted to what the primary route uses. Lemma 2
(`[BCX] < 3s` for a point `X` of the side cap `R = CD(1,0)`; transposed `[AHY] < 3s` for `Y` in
`L = FH(0,1)`) is used by the single-side, side-opposite and side-top notes; the
projection-preservation checks of Sections 2-3 are reused by
`SIX_BOUNDARY_TWO_SIDE_COMPLETION.md` (Sections 1 and 5).

Not stated here: Theorem 1 (the chamber (2) with a double projection onto eight contacts). It is
not on the primary route: `SIX_BOUNDARY_TWO_SIDE_COMPLETION.md` treats the whole occupancy with
the lower point below `HC`, and the chamber (2) implies its sufficient condition (3), since
`(t - a)[AQX] = r(t - a)(y - a) - x(t - a)²`.

Setting: `nConfig a h b c d f X Y Q` with `NAnchors a h b c d f`, `X = (x, y)` in the closed cap
`R`, `Y = (z, w)` in the closed cap `L`, `Q = (r, t)` in the closed virtual triangle
`T₀ = (0,0)HC`. Threshold `s = 7/64` (doubled) for Lemma 2; the projection checks hold at any
doubled threshold `μ ≥ s` bounded by the original minimum doubled area (the manuscript takes
`μ` equal to that minimum, `μ ≥ 2A₀ > s`).

Results:
* `lemma2`: `[BCX] < 3s` for `X ∈ R`, so `BCX` contains no free point; transposed for `L`;
* `claim_BQX_sign`: `[BQX] < 0` (5), and transposed `[AQY] > 0`;
* `claim_X_projection`: moving `x` to `1` keeps every triangle of `X` with two anchors or with
  `Q` and an anchor other than `A` above `μ`, and the one with `Q` and `A` under
  `(t - a)(y - a) ≤ 0`; transposed for `Y` (exceptional anchor `B`, condition
  `(r - b)(z - b) ≤ 0`);
* `claim_XY_pairs`: every triangle using both cap points stays above `μ` when `x` and `w`
  increase to `1`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryTwoSideProjection

open SixBoundary SixBoundaryExterior

/-- **Lemma 2** (`SIX_BOUNDARY_TWO_SIDE_PROJECTION:Lemma2`). If every doubled area is at least
`s = 7/64` and the free point `X` lies in the lower-right cap `CD(1,0)`, then `[BCX] < 3s`, so
`BCX` contains no further free point. Transposed: if `X` lies in the upper-left cap `FH(0,1)`,
then `[HAX] < 3s` and `HAX` contains no further free point.
`hand/SIX_BOUNDARY_TWO_SIDE_PROJECTION.md`, lines 67-102.
Uses: SIX_BOUNDARY_HULL:claim-transposition -/
theorem lemma2 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    (InCapR c d X →
      sarea (ptB b) (ptC c) X < 3 * (7 / 64) ∧
        ¬ InTriangle Y (ptB b) (ptC c) X ∧ ¬ InTriangle Z (ptB b) (ptC c) X) ∧
    (InCapL f h X →
      sarea (ptH h) (ptA a) X < 3 * (7 / 64) ∧
        ¬ InTriangle Y (ptH h) (ptA a) X ∧ ¬ InTriangle Z (ptH h) (ptA a) X) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_PROJECTION:claim-BQX-sign`). With every doubled area at
least `7/64` and `Q` in `T₀ = (0,0)HC`: if `X` is in the cap `CD(1,0)` then `[BQX] < 0` (5)
(`Q` is on the positive sides of `BC` and `CX`, and `BCX` is empty by Lemma 2); transposed, if
`Y` is in the cap `FH(0,1)` then `[AQY] > 0`.
`hand/SIX_BOUNDARY_TWO_SIDE_PROJECTION.md`, lines 104-120.
Uses: SIX_BOUNDARY_TWO_SIDE_PROJECTION:Lemma2, SIX_BOUNDARY_HULL:claim-transposition -/
theorem claim_BQX_sign {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    (InCapR c d X → sarea (ptB b) Q X < 0) ∧ (InCapL f h Y → 0 < sarea (ptA a) Q Y) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_PROJECTION:claim-X-projection`). Let `X = (x, y) ∈ CD(1,0)`,
`Y = (z, w) ∈ FH(0,1)`, `Q = (r, t) ∈ T₀`, and let `7/64 ≤ μ` with every doubled area of the
configuration at least `μ`. For every `x ≤ x' ≤ 1`, the point `X' = (x', y)` has all triangles
with two anchors (EXTERIOR Lemma 6) and the triangles `X'Q` with `B, C, H, F` or `D` of unsigned
doubled area at least `μ`; the triangle `X'QA` too when `(t - a)(y - a) ≤ 0` (the first
condition in (2), which makes `|[AQX]|` nondecreasing in `x`). Transposed: for `w ≤ w' ≤ 1`,
`Y' = (z, w')` has all triangles with two anchors and with `Q` and `A, H, C, D` or `F` of
unsigned doubled area at least `μ`, and with `Q` and `B` when `(r - b)(z - b) ≤ 0`.
(Anchors are indexed as in `nConfig`: `A, H, B, C, D, F` = `0, …, 5`.)
`hand/SIX_BOUNDARY_TWO_SIDE_PROJECTION.md`, lines 122-185.
Uses: SIX_BOUNDARY_EXTERIOR:Lemma6, SIX_BOUNDARY_TWO_SIDE_PROJECTION:claim-BQX-sign,
SIX_BOUNDARY_HULL:claim-transposition -/
theorem claim_X_projection {a h b c d f μ : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hμ : 7 / 64 ≤ μ) (hmin : μ / 2 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    (∀ x' : ℝ, X.1 ≤ x' → x' ≤ 1 →
      AnchorPairBound a h b c d f μ (x', X.2) ∧
        (∀ i : Fin 6, i ≠ 0 → μ ≤ |sarea (anchorPts a h b c d f i) (x', X.2) Q|) ∧
        ((Q.2 - a) * (X.2 - a) ≤ 0 → μ ≤ |sarea (ptA a) (x', X.2) Q|)) ∧
    (∀ w' : ℝ, Y.2 ≤ w' → w' ≤ 1 →
      AnchorPairBound a h b c d f μ (Y.1, w') ∧
        (∀ i : Fin 6, i ≠ 2 → μ ≤ |sarea (anchorPts a h b c d f i) (Y.1, w') Q|) ∧
        ((Q.1 - b) * (Y.1 - b) ≤ 0 → μ ≤ |sarea (ptB b) (Y.1, w') Q|)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_PROJECTION:claim-XY-pairs`). In the setting of
`claim_X_projection`, every triangle using both cap points stays above `μ` when `x` and `w`
increase to `1`: for all `x ≤ x' ≤ 1` and `w ≤ w' ≤ 1`, with `X' = (x', y)`, `Y' = (z, w')`,
the triangles `VX'Y'` (`V` an anchor) and `QX'Y'` have unsigned doubled area at least `μ`.
(`[AXY], [HXY], [BXY], [CXY], [QXY]` are positive and nondecreasing in `x` and `w`;
`-[DX'Y'] ≥ (d - y)(1 - z) ≥ μ` and `-[FX'Y'] ≥ (1 - y)(f - z) ≥ μ`; so each single projection,
and the two-segment path, are covered.)
`hand/SIX_BOUNDARY_TWO_SIDE_PROJECTION.md`, lines 187-247. -/
theorem claim_XY_pairs {a h b c d f μ : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hμ : 7 / 64 ≤ μ) (hmin : μ / 2 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    ∀ x' w' : ℝ, X.1 ≤ x' → x' ≤ 1 → Y.2 ≤ w' → w' ≤ 1 →
      (∀ i : Fin 6, μ ≤ |sarea (anchorPts a h b c d f i) (x', X.2) (Y.1, w')|) ∧
        μ ≤ |sarea Q (x', X.2) (Y.1, w')| := by
  sorry

end Heilbronn.SixBoundaryTwoSideProjection
