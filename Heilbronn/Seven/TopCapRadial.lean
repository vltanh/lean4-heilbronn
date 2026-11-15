module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.TopCapRight

/-! # All sharp radial orientations of the seven-boundary exterior case (`hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md`)

**Role.** Primary-route component of `SEVEN_BOUNDARY_EXTERIOR_COMPLETION:Theorem1` (lines 30–31,
296–305): the 36-word cover of `RADIAL_CATALOGUE.md` for the exterior octagon, and the sharp
bound with its equality case for the four words of class R3.

**Setting.** `SevenNormal a h b c d e f`, the far-cap point `X = (g,k)` (`FarCapPoint e f (g, k)`),
the companion point `P` inside the heptagon. At minimum area at least `7/128` the preceding notes
give `k > h` (`SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h`), the convex hull octagon
`V₀, …, V₇ = A, B, C, D, E, X, F, H` (`exteriorOctagon a h b c d e f (g, k)`, (1)), and exclude
`P` from its four side quadrilaterals `ABCD, CDEX, EXFH, FHAB` (2). The radial word `r` of `P`
is that of `RadialCatalogue` with respect to this octagon.

**Results.**
* `claim_octagon_cover` (§1): the radial word of `P` is well defined and is one of the 36 words
  of the catalogue (the eight classes and the action (6) are those of `RADIAL_CATALOGUE.md`);
* `theorem1`: every exterior configuration whose radial word is in R3 has minimum area at most
  `A₀`; equality forces `k = 1` and the construction; the word `(3,4,5,4,4,3,3,2)` gives `< 7/128`.

The four transformations of §2 (sending each R3 word to the representative `(3,2,3,4,5,4,4,3)`):
identity (`F' = X`, `GLOBAL_COMPLETION` §5, F-moving chamber); `(x,y) ↦ (1-x,y)` with labels
`V_{3-i}` (`G' = (1-g,k)`, `SHARP_G_MOVING_PROJECTION`, strict); `(x,y) ↦ (x,1-y)` with labels
`V_{7-i}` (`C' = (g,1-k)`, `SHARP_BC_MOVING` Theorem 2); the half-turn with labels `V_{i+4}`
(`B' = (1-g,1-k)`, `SHARP_BC_MOVING` Theorem 3). They are internal to the proof of `theorem1` and
rely on chamber statements of other groups; they are not stated separately here.

Naming note: this note calls `(x,y) ↦ (1-x,y)` the "vertical reflection" and `(x,y) ↦ (x,1-y)`
the "horizontal reflection"; `SEVEN_BOUNDARY_CAPS.md` calls `x ↦ 1-x` "horizontal". Explicit maps
are used above.

Implicit in the manuscript: §1 is stated under "minimum area at least `A₀`" (line 12); its inputs
(`SEVEN_BOUNDARY_TOP_CAP` Theorems 1–3, `SEVEN_BOUNDARY_TOP_CAP_RIGHT:Theorem`) hold at `7/128`,
and `SEVEN_BOUNDARY_EXTERIOR_COMPLETION` uses the cover at that threshold, so
`claim_octagon_cover` is stated at minimum area at least `7/128`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryTopCapRadial

open SevenBoundary RadialCatalogue

/-- **Claim** (`SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover`). In the exterior case at
minimum area at least `7/128`: the octagon `A, B, C, D, E, X, F, H` is strictly convex, `P` is
strictly inside it, no rays from `P` are degenerate, `P` is outside the four closed side
quadrilaterals `ABCD, CDEX, EXFH, FHAB`, and the radial word of `P` satisfies (1) and belongs to
the 36-word catalogue.
`hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md`, lines 19–34, 45–69.
Uses: SEVEN_BOUNDARY_TOP_CAP:Theorem1, SEVEN_BOUNDARY_TOP_CAP:Theorem2,
SEVEN_BOUNDARY_TOP_CAP:Theorem3, SEVEN_BOUNDARY_TOP_CAP_RIGHT:Theorem,
SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h, RADIAL_CATALOGUE:claim-encoding,
RADIAL_CATALOGUE:claim-ear-bounds, RADIAL_CATALOGUE:claim-side-quad-bounds,
RADIAL_CATALOGUE:claim-six-blocks, RADIAL_CATALOGUE:claim-36-cover. -/
theorem claim_octagon_cover {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    IsConvexPolygon (exteriorOctagon a h b c d e f (g, k)) ∧
      InPolygon (exteriorOctagon a h b c d e f (g, k)) P ∧
      RaysNondegenerate (exteriorOctagon a h b c d e f (g, k)) P ∧
      OutsideSideQuads (exteriorOctagon a h b c d e f (g, k)) P ∧
      IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P
        (radialWord (exteriorOctagon a h b c d e f (g, k)) P) ∧
      radialWord (exteriorOctagon a h b c d e f (g, k)) P ∈ catalogue := by
  sorry

/-- **Theorem 1** (`SEVEN_BOUNDARY_TOP_CAP_RADIAL:Theorem1`). Every configuration of the exterior
case whose radial word (with respect to `A, B, C, D, E, X, F, H`) belongs to class R3 has minimum
area at most `A₀`; equality forces `k = 1` and the known eight-boundary construction up to square
symmetry and relabelling; and for the R3 word `(3,4,5,4,4,3,3,2)` the minimum area is strictly
below `7/128`.
`hand/SEVEN_BOUNDARY_TOP_CAP_RADIAL.md`, lines 36–147.
Uses: SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h, RADIAL_CATALOGUE:claim-symmetry-action,
RADIAL_CATALOGUE:claim-R3-chamber, GLOBAL_COMPLETION:Theorem3,
SHARP_G_MOVING_PROJECTION:Theorem1, SHARP_BC_MOVING:Theorem2, SHARP_BC_MOVING:Theorem3. -/
theorem theorem1 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w) (hc : InClass .R3 w) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f (g, k) P) = A₀ →
        k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) P)) ∧
      (w = ![3, 4, 5, 4, 4, 3, 3, 2] →
        minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128) := by
  sorry

end Heilbronn.SevenBoundaryTopCapRadial
