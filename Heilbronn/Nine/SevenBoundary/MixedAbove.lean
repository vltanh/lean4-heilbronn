module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.Setting
public import Heilbronn.Nine.SevenBoundary.Interior.Regions

/-! # Mixed placements above the left diagonal (`docs/proof/nine/SEVEN_BOUNDARY_MIXED_ABOVE.md`)

In the hand proof, Theorem 1 of this note (the crossed cell) closes the three `C` entries of the
coverage table of `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (lines 229-232, 334).

**Status.** The corresponding pairs of ray words are closed by kernel-checked certificates of the
interior cover (`Heilbronn.Nine.SevenInterior.interior_false`); Theorem 1 is kept as a corollary of it,
in the open-side form `SevenNormal` (the note allows `h = 1`, `e = 1` and does not need
`f ≤ 1/2`; these variants have no consumer on the primary route).

**Results.** `theorem1`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryMixedAbove

open SevenBoundary

variable {a h b c d e f : ℝ} {P Q : Point}

/-- **Theorem 1** (`SEVEN_BOUNDARY_MIXED_ABOVE:Theorem1`). There cannot be actual points `P, Q`
with `P ∈ HCF`, `[BEP] < 0` and `Q ∈ AHE ∩ DEF`; no sign of the line `PQ` is prescribed.
Proof: both points lie in the anchor heptagon; `Heilbronn.Nine.SevenInterior.pair_false`.
`docs/proof/nine/SEVEN_BOUNDARY_MIXED_ABOVE.md`, lines 16-190. -/
theorem theorem1 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (InTriangle P (c, 0) (f, 1) (0, h) ∧ sarea (b, 0) (1, e) P < 0 ∧
      InTriangle Q (0, a) (1, e) (0, h) ∧ InTriangle Q (1, d) (1, e) (f, 1)) := by
  rintro ⟨hP, -, hQ, -⟩
  exact SevenInterior.pair_false hN hmin
    (SevenInterior.inHeptagon_of_tri (P := P) (Q := Q) hN (i := 2) (j := 5) (k := 6) (by norm_num)
      (by norm_num) (by norm_num) (by unfold SevenInterior.Cyc; omega) hP)
    (SevenInterior.inHeptagon_of_tri (P := P) (Q := Q) hN (i := 0) (j := 4) (k := 6) (by norm_num)
      (by norm_num) (by norm_num) (by unfold SevenInterior.Cyc; omega) hQ)

end Heilbronn.Nine.SevenBoundaryMixedAbove
