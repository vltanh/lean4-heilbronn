module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting
public import Heilbronn.Eight.RadialCatalogue

/-! # The remaining upper exterior cap with seven boundary contacts (`hand/SEVEN_BOUNDARY_TOP_CAP.md`)

**Role.** Primary-route component of the seven-boundary exterior case: it excludes the
companion point `P` from three of the four side quadrilaterals of the exterior octagon
`A, B, C, D, E, X, F, H`, as needed by `SEVEN_BOUNDARY_TOP_CAP_RADIAL` §1 and the side tests (8)
of `SEVEN_BOUNDARY_EXTERIOR_COMPLETION`.

**Setting.** The normalized seven-boundary form (`SevenNormal a h b c d e f`,
`Heilbronn/Seven/Setting.lean`), one free point `X = (g,k)` strictly beyond `EF` in the far upper
cap (`FarCapPoint e f (g, k)`: `f < g < 1`, `e < k ≤ 1`), and the other free point `P` strictly
inside the anchor heptagon (`SEVEN_BOUNDARY_CAPS:claim-exterior-reduction`). The nine points are
`sevenConfig a h b c d e f (g, k) P`. Doubled threshold `s = 7/64`. The condition `k > h` is not
assumed here (it is `SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h`).

**Results.**
* `theorem1`: `P` is not in the quadrilateral `HEXF`;
* `theorem2`: `P` is not in `ABCD`;
* `theorem3`: `P` is not in `FHAB`;
* `claim_partial_central` (§4): hence `P` is strictly below `HE`, strictly above `AD` and strictly
  on the interior side of `BF`.

Each exclusion "P cannot lie in `W`" is stated as "`P` in the closed quadrilateral `W` gives a
triangle of area `< 7/128`" (a point on an edge or diagonal gives a zero triangle).

Proof gap (minor, Theorem 3, lines 206–210): `U² - (1-s)U + s ≤ 0` is derived from "the identity
`s/T = 1 - U - s/M`"; it also needs `s/M + s/T ≥ 2s/k(U)` from `M, T ≤ k(U)`, both stated at line
206. Stale scope text: lines 22–23, 273–275.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryTopCap

open SevenBoundary RadialCatalogue

/-- **Theorem 1** (`SEVEN_BOUNDARY_TOP_CAP:Theorem1`). In the exterior case, the companion point
`P` does not lie in the closed quadrilateral `HEXF` at minimum area at least `7/128` (its doubled
area obeys the scalar bound of `EIGHT_BOUNDARY.md` §4, below Lemma 3's `2(1+√2)s`).
`hand/SEVEN_BOUNDARY_TOP_CAP.md`, lines 27–100.
Uses: EIGHT_BOUNDARY:Lemma3, EIGHT_BOUNDARY:claim-scalar-bound. -/
theorem theorem1 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hq : InClosedPolygon ![(0, h), (1, e), (g, k), (f, 1)] P) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  sorry

/-- **Theorem 2** (`SEVEN_BOUNDARY_TOP_CAP:Theorem2`). In the exterior case, `P` does not lie in
the closed quadrilateral `ABCD` at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_TOP_CAP.md`, lines 104–163.
Uses: EIGHT_BOUNDARY:Lemma3, EIGHT_BOUNDARY:claim-scalar-bound. -/
theorem theorem2 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hq : InClosedPolygon ![(0, a), (b, 0), (c, 0), (1, d)] P) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  sorry

/-- **Theorem 3** (`SEVEN_BOUNDARY_TOP_CAP:Theorem3`). In the exterior case, `P` does not lie in
the closed quadrilateral `FHAB` at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_TOP_CAP.md`, lines 167–256.
Uses: EIGHT_BOUNDARY:Lemma3, EIGHT_BOUNDARY:claim-scalar-bound. -/
theorem theorem3 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hq : InClosedPolygon ![(f, 1), (0, h), (0, a), (b, 0)] P) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_TOP_CAP:claim-partial-central`). In the exterior case at minimum
area at least `7/128`, `P` lies strictly below `HE` (`HEF ⊂ HEXF`), strictly above `AD`, and
strictly on the interior side of `BF` (the side of `C`).
`hand/SEVEN_BOUNDARY_TOP_CAP.md`, lines 258–271.
Uses: SEVEN_BOUNDARY_TOP_CAP:Theorem1, SEVEN_BOUNDARY_TOP_CAP:Theorem2,
SEVEN_BOUNDARY_TOP_CAP:Theorem3. -/
theorem claim_partial_central {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    sarea (0, h) (1, e) P < 0 ∧ 0 < sarea (0, a) (1, d) P ∧ sarea (b, 0) (f, 1) P < 0 := by
  sorry

end Heilbronn.SevenBoundaryTopCap
