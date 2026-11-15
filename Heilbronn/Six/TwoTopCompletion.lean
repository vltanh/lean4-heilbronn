module

public import Heilbronn.Six.Setting

/-! # Complete N occupancy with two opposite-cap points (`hand/SIX_BOUNDARY_TWO_TOP_COMPLETION.md`)

**Role.** Primary route: the parent theorem of the six-boundary occupancy N6-06
`(n_L,n_T,n_R;n_I) = (0,2,0;1)` of `hand/UNRESTRICTED.md`, Section 4 (rows N6-06-L0/L1), assembled
from `SIX_BOUNDARY_TWO_TOP_TRIANGULAR` (triangular cap hull, strict) and
`SIX_BOUNDARY_TWO_TOP_CONVEX` (convex cap hull, sharp).

**Setting.** The N anchors (`NAnchors`); two free points `Y, Z` in the opposite cap
`T = DF(1,1)` (`InCapT`; the corner `(1,1)` is virtual, square-side positions allowed) and the
ninth point `Q` strictly inside the anchor hexagon. The configuration is
`nConfig a h b c d f Y Z Q`.

**Results.**
* `theorem1`: minimum `≤ A₀`; equality only at the sharp configuration up to symmetry and
  relabelling (`IsOptimal`), with two additional square-boundary contacts (one cap point on the
  right side, the other on the top side).
* `claim_hull_dichotomy`: under a positive minimum, `D` and `F` are vertices of the hull of
  `D, F, Y, Z`, which is a triangle `DXF` with the other cap point inside, or a convex
  quadrilateral `DEGF`.
* `claim_normalization`: transposition preserves the occupancy (so each component may impose
  `f ≤ d`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryTwoTopCompletion

open Heilbronn.SixBoundary

/-- The occupancy N6-06: N anchors, `Y, Z` in the opposite cap `DF(1,1)`, `Q` strictly inside the
anchor hexagon. -/
def TwoTopFamily (a h b c d f : ℝ) (Y Z Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapT d f Y ∧ InCapT d f Z ∧ InHexagon a h b c d f Q

/-- **Theorem 1** (`SIX_BOUNDARY_TWO_TOP_COMPLETION:Theorem1`). Every configuration of N6-06 (two
free points in the opposite cap `DF(1,1)`, one strictly inside the anchor hexagon) has minimum
ordinary triangle area at most `A₀`. Equality holds only at the configuration of `HAND_PROOF.md`
up to square symmetry and relabelling; in particular equality forces two additional
square-boundary contacts (one cap point on the right side `x = 1`, the other on the top side
`y = 1`). `hand/SIX_BOUNDARY_TWO_TOP_COMPLETION.md`, lines 15-54.
Uses: SIX_BOUNDARY_TWO_TOP_COMPLETION:claim-hull-dichotomy,
SIX_BOUNDARY_TWO_TOP_COMPLETION:claim-normalization, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:Theorem1,
SIX_BOUNDARY_TWO_TOP_CONVEX:Theorem -/
theorem theorem1 {a h b c d f : ℝ} {Y Z Q : Point} (hfam : TwoTopFamily a h b c d f Y Z Q) :
    minTriangleArea (nConfig a h b c d f Y Z Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f Y Z Q) →
        IsOptimal (nConfig a h b c d f Y Z Q) ∧
          ((Y.1 = 1 ∧ Z.2 = 1) ∨ (Z.1 = 1 ∧ Y.2 = 1))) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_COMPLETION:claim-hull-dichotomy`). If the minimum area is
positive, every cap point has `y`-coordinate greater than `d` and `x`-coordinate greater than `f`
(so `D` is the unique lowest and `F` the unique leftmost of `D, F, Y, Z`, and both are hull
vertices), and the hull of `D, F, Y, Z` is either a triangle `DXF` with the remaining cap point
`P` strictly inside, or a strictly convex quadrilateral `D, E, G, F` (counterclockwise), where
`{X, P}` resp. `{E, G}` is `{Y, Z}`; a transition between the two would be an actual
collinearity. `hand/SIX_BOUNDARY_TWO_TOP_COMPLETION.md`, lines 25-54. -/
theorem claim_hull_dichotomy {a h b c d f : ℝ} {Y Z Q : Point}
    (hfam : TwoTopFamily a h b c d f Y Z Q)
    (hpos : 0 < minTriangleArea (nConfig a h b c d f Y Z Q)) :
    (d < Y.2 ∧ d < Z.2 ∧ f < Y.1 ∧ f < Z.1) ∧
      ((∃ X P : Point, ((X = Y ∧ P = Z) ∨ (X = Z ∧ P = Y)) ∧ InTriangle P (ptD d) X (ptF f)) ∨
        (∃ E G : Point, ((E = Y ∧ G = Z) ∨ (E = Z ∧ G = Y)) ∧
          IsConvexCCW ![ptD d, E, G, ptF f])) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_COMPLETION:claim-normalization`). Transposition
`(x,y) ↦ (y,x)`, with the anchor parameters `(a,h,b,c,d,f) ↦ (b,c,a,h,f,d)`, preserves the entire
occupancy; hence each component theorem may impose its own normalization `f ≤ d` without
restricting Theorem 1. `hand/SIX_BOUNDARY_TWO_TOP_COMPLETION.md`, lines 56-58.
Uses: SIX_BOUNDARY_HULL:claim-transposition -/
theorem claim_normalization (a h b c d f : ℝ) (Y Z Q : Point) :
    TwoTopFamily a h b c d f Y Z Q ↔
      TwoTopFamily b c a h f d (transpose Y) (transpose Z) (transpose Q) := by
  sorry

end Heilbronn.SixBoundaryTwoTopCompletion
