module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.TopCap

/-! # The final side quadrilateral beside a seven-boundary exterior point (`hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md`)

**Role.** Primary-route component of the seven-boundary exterior case. It excludes the fourth
side quadrilateral `CDEX` and proves two standing inequalities used downstream: `b > 3/20`
(`SEVEN_BOUNDARY_EXTERIOR_COMPLETION`, factor `l₇` and bounds (3), (5)) and `k > h`
(`SEVEN_BOUNDARY_TOP_CAP_RADIAL` line 16, `SEVEN_BOUNDARY_ADJACENT_CAPS` §4,
`SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION` §4, `SEVEN_BOUNDARY_EXTERIOR_COMPLETION` factor `l₂`).

**Setting.** As in `Heilbronn/Seven/TopCap.lean`: `SevenNormal a h b c d e f`, the far-cap point
`X = (g,k)` (`FarCapPoint e f (g, k)`), the companion point `P` inside the heptagon; `s = 7/64`.
The two inequalities and the area bound use only the seven anchors and `X` (line 22) and are
stated for the eight-point configuration `sevenConfig₁ a h b c d e f (g, k)`.

**Results.**
* `claim_b_gt_3_20` (7): `b > 3/20` (a degree-(2,3) Bernstein certificate on four rectangles,
  (4)–(6));
* `claim_k_gt_h` (10): `k > h`;
* `mainTheorem`: the doubled area `[CDEX] = (1-c)(k-d) + (1-g)e` is below `21/40 = 24s/5 <
  2(1+√2)s`, so `P` is not in `CDEX`;
* `claim_central_region`: with `SEVEN_BOUNDARY_TOP_CAP` Theorems 1–3, `P` lies in
  `int conv(A,D,E,H) ∩ int conv(B,C,X,F)`.

Notation note: `w` is `min(1-c, 1-g)` in §1 but `s/T` in §3; `h*, e*, δ*` are scalar
replacements, not points. Stale scope text: lines 301–303.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryTopCapRight

open SevenBoundary RadialCatalogue

/-- **Claim** (`SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-b-gt-3/20`). In the exterior case, if every
triangle of the seven anchors and `X` has area at least `7/128`, then `b > 3/20` (7).
`hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md`, lines 24–119.
Uses: SEVEN_BOUNDARY_CAPS:eq37 (Bernstein certificate (4)–(6) on `[1/8,1/2] × [7/64,1/2]`). -/
theorem claim_b_gt_3_20 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k))
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f (g, k))) :
    3 / 20 < b := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h`). In the exterior case, if every
triangle of the seven anchors and `X` has area at least `7/128`, then the exterior point is higher
than `H`: `k > h` (10).
`hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md`, lines 122–166.
Uses: SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-b-gt-3/20. -/
theorem claim_k_gt_h {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k))
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f (g, k))) :
    h < k := by
  sorry

/-- **Theorem** (`SEVEN_BOUNDARY_TOP_CAP_RIGHT:Theorem`). In the exterior case: if every triangle
of the seven anchors and `X` has area at least `7/128`, the doubled area of the convex
quadrilateral `CDEX`, `[CDE] + [CEX] = (1-c)(k-d) + (1-g)e`, is strictly below `21/40`;
consequently `P` does not lie in the closed quadrilateral `CDEX` at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md`, lines 14–22, 169–290.
Uses: SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-b-gt-3/20, SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h,
EIGHT_BOUNDARY:claim-scalar-bound, EIGHT_BOUNDARY:Lemma3. -/
theorem mainTheorem {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) :
    (7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f (g, k)) →
        sarea (c, 0) (1, d) (1, e) + sarea (c, 0) (1, e) (g, k) < 21 / 40) ∧
      ∀ P : Point, InHeptagon a h b c d e f P →
        InClosedPolygon ![(c, 0), (1, d), (1, e), (g, k)] P →
        minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-central-region`). In the exterior case at
minimum area at least `7/128`, `P` lies strictly inside both `conv(A,D,E,H)` and `conv(B,C,X,F)`:
the central region of the exterior octagon `A, B, C, D, E, X, F, H`.
`hand/SEVEN_BOUNDARY_TOP_CAP_RIGHT.md`, lines 292–300.
Uses: SEVEN_BOUNDARY_TOP_CAP_RIGHT:Theorem, SEVEN_BOUNDARY_TOP_CAP:Theorem1,
SEVEN_BOUNDARY_TOP_CAP:Theorem2, SEVEN_BOUNDARY_TOP_CAP:Theorem3. -/
theorem claim_central_region {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    InCentralRegion (exteriorOctagon a h b c d e f (g, k)) P := by
  sorry

end Heilbronn.SevenBoundaryTopCapRight
