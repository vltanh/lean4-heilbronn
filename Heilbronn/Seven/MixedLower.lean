module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting
public import Heilbronn.Seven.MixedPair

/-! # Completion of the mixed seven-boundary placement below HC (`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`)

In the hand proof, the Theorem of this note closes the mixed sub-branch in which the left point
`P` is below `HC` (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 389-392), by the ray words of
§2 (relations (10)), the prior exclusions of `SEVEN_BOUNDARY_MIXED_PAIR.md` and the 40
certificates of `hand/seven_boundary_mixed_lower_certificates.json`.

**Status.** The Theorem is kept as a corollary (`mainTheorem`, under the open-side form
`SevenNormal`; the note allows `e = 1`, which the primary route does not use); its claims are
not stated. The case of two free points strictly inside the anchor
heptagon is proved by one certificate cover over pairs of ray words
(`Heilbronn.SevenInterior.interior_false`, used by
`SevenBoundaryMixedAboveCompletion.claim_interior`): the ray-word relations (10) are
`Heilbronn.SevenInterior.Comp.word_exists` (all 57 words), and the certificates were recomputed
by linear programming for the model of `Heilbronn.SevenInterior.Model` (box and order factors,
strengthened triangle costs), covering the 108 word pairs of this note together with all the
other placements.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryMixedLower

open SevenBoundary SevenBoundaryMixedPair

variable {a h b c d e f : ℝ} {P Q : Point}

/-- **Theorem** (`SEVEN_BOUNDARY_MIXED_LOWER:Theorem`). The mixed placement in which `P` is below
`HC` is impossible (indeed every mixed placement is, `SevenBoundaryMixedPair.mixed_false`).
`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 16-17, 308-311. -/
theorem mainTheorem (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (MixedPlacement a h b c d e f P Q ∧ 0 < sarea (c, 0) (0, h) P) := fun ⟨hPQ, _⟩ =>
  mixed_false hN hmin hPQ

end Heilbronn.SevenBoundaryMixedLower
