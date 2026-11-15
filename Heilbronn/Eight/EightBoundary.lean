module

public import Heilbronn.Common.Families
public import Heilbronn.Eight.EightBoundary.Basic
public import Heilbronn.Eight.R6Bound

/-! # The eight-boundary-point gate: the complete theorem (`hand/EIGHT_BOUNDARY.md`, §11)

**Role.** Primary route: `UNRESTRICTED.md` §4 (lines 126–130) cites Theorem 13 for every
configuration with at least eight square-boundary points; `SIX_BOUNDARY_TWO_SIDE_PROJECTION` §4
uses it on the N6 projection routes. The assembly applies `theorem13` to any configuration
`P : Fin 9 → Point` of the square, in particular to `nConfig a h b c d f X Y Z` when two of the
free points lie on the boundary.

The definitions and Lemma 1 – Theorem 12 are in `Heilbronn/Eight/EightBoundary/Setting.lean` and
`Heilbronn/Eight/EightBoundary/Basic.lean`; the radial words and classes in
`Heilbronn/Eight/RadialCatalogue.lean`; the class R6 in `Heilbronn/Eight/R6Bound.lean`.

**Results.**
* `claim_class_hypotheses`: the table of §11 (lines 1026–1035): the representative word of each
  class (for R8, its rotation `ρ₁`) gives the region hypotheses of the theorem applied to it;
* `theorem13`: nine points of the square with at least eight on the boundary have minimum
  triangle area at most `A₀`, with equality only for the construction (`IsOptimal`).

FLAG (presentation, `EIGHT_BOUNDARY.md` line 1035 and `RADIAL_CATALOGUE.md` line 135): the table
attributes R8 to Theorem 9, but the R8 representative `(3,4,3,4,4,3,4,3)` does not satisfy
Theorem 9's literal hypotheses (`k₁, k₂, k₄, k₇ ≥ 4`); its rotation `ρ₁(R8) = (3,4,4,3,4,3,3,4)`
does. Theorem 9 is stated "under every square symmetry", so the proof is complete;
`claim_class_hypotheses` records the rotated word.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.EightBoundary

open RadialCatalogue

/-- **Claim** (`EIGHT_BOUNDARY:claim-class-hypotheses`, named here). The table of the proof of
Theorem 13: in the normal form, if the radial word of `O` (no degenerate rays) is
* the R1 representative, `O` is in both closed corner caps `BCDE`, `DEFG` (Theorem 8);
* the R2 representative, `O ∈ ADE ∩ HDE`, `O ∈ BCDE`, `O ∉ DEFG` (Theorem 11);
* the R4 or R7 representative, `O ∈ ADE ∩ HDE ∩ BCF ∩ BCG` (Theorem 6);
* the R5 representative, `O ∈ ADE ∩ HDE ∩ BCF ∩ CFG`, `O ∉ BCDE`, `O ∉ DEFG` (Theorem 12);
* the rotation `ρ₁(R8) = (3,4,4,3,4,3,3,4)` of the R8 representative,
  `O ∈ ADE ∩ HDE ∩ BFG ∩ BCG` (Theorem 9).
(R3 is `RADIAL_CATALOGUE:claim-R3-chamber`; R6 is `R6_BOUND:Theorem`, stated with the word.)
`hand/EIGHT_BOUNDARY.md`, lines 1026–1035.
Uses: RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_class_hypotheses {a b c d e f g h : ℝ} {O : Point}
    (hA : EightAnchors a b c d e f g h) (hO : InOpenSquare O)
    (hnd : RaysNondegenerate (octagon a b c d e f g h) O) :
    (IsRadialWord (octagon a b c d e f g h) O (rep .R1) →
      InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O ∧
        InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) ∧
    (IsRadialWord (octagon a b c d e f g h) O (rep .R2) →
      InClosedPolygon ![(0, a), (1, d), (1, e)] O ∧ InClosedPolygon ![(0, h), (1, d), (1, e)] O ∧
        InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O ∧
        ¬ InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) ∧
    (IsRadialWord (octagon a b c d e f g h) O (rep .R4) ∨
        IsRadialWord (octagon a b c d e f g h) O (rep .R7) →
      InClosedPolygon ![(0, a), (1, d), (1, e)] O ∧ InClosedPolygon ![(0, h), (1, d), (1, e)] O ∧
        InClosedPolygon ![(b, 0), (c, 0), (f, 1)] O ∧ InClosedPolygon ![(b, 0), (c, 0), (g, 1)] O) ∧
    (IsRadialWord (octagon a b c d e f g h) O (rep .R5) →
      InClosedPolygon ![(0, a), (1, d), (1, e)] O ∧ InClosedPolygon ![(0, h), (1, d), (1, e)] O ∧
        InClosedPolygon ![(b, 0), (c, 0), (f, 1)] O ∧ InClosedPolygon ![(c, 0), (f, 1), (g, 1)] O ∧
        ¬ InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O ∧
        ¬ InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) ∧
    (IsRadialWord (octagon a b c d e f g h) O (wordAct false 1 (rep .R8)) →
      InClosedPolygon ![(0, a), (1, d), (1, e)] O ∧ InClosedPolygon ![(0, h), (1, d), (1, e)] O ∧
        InClosedPolygon ![(b, 0), (f, 1), (g, 1)] O ∧
        InClosedPolygon ![(b, 0), (c, 0), (g, 1)] O) := by
  sorry

/-- **Theorem 13** (`EIGHT_BOUNDARY:Theorem13`). For nine points in the unit square with at least
eight of them on its boundary, the minimum triangle area is at most `A₀ = (9√65 - 55)/320`, and
equality holds only for the construction of `HAND_PROOF.md` Theorem 1 up to a square symmetry
and relabelling (`IsOptimal`).
`hand/EIGHT_BOUNDARY.md`, lines 1007–1039.
Uses: EIGHT_BOUNDARY:Lemma1, EIGHT_BOUNDARY:claim-normal-form, EIGHT_BOUNDARY:Theorem2,
EIGHT_BOUNDARY:Theorem4, EIGHT_BOUNDARY:Corollary5, RADIAL_CATALOGUE:claim-encoding,
RADIAL_CATALOGUE:claim-ear-bounds, RADIAL_CATALOGUE:claim-side-quad-bounds,
RADIAL_CATALOGUE:claim-36-cover, RADIAL_CATALOGUE:claim-symmetry-action,
RADIAL_CATALOGUE:claim-symmetry-relabel, RADIAL_CATALOGUE:claim-eight-classes,
RADIAL_CATALOGUE:claim-R3-chamber, EIGHT_BOUNDARY:claim-class-hypotheses,
EIGHT_BOUNDARY:Theorem8, EIGHT_BOUNDARY:Theorem11, HAND_PROOF:Theorem1, EIGHT_BOUNDARY:Theorem6,
EIGHT_BOUNDARY:Theorem12, R6_BOUND:Theorem, EIGHT_BOUNDARY:Theorem9,
EIGHT_BOUNDARY:claim-thresholds. -/
theorem theorem13 (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (h8 : 8 ≤ {i : Fin 9 | OnSquareBoundary (P i)}.ncard) :
    minTriangleArea P ≤ A₀ ∧ (minTriangleArea P = A₀ → IsOptimal P) := by
  sorry

end Heilbronn.EightBoundary
