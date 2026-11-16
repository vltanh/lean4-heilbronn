module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.Setting
public import Heilbronn.Nine.SevenBoundary.Interior.Regions

/-! # Complete left-pair exclusion with seven boundary contacts (`docs/proof/nine/SEVEN_BOUNDARY_LEFT_PAIR.md`)

In the hand proof, Theorem 2 of this note closes the placement in which both free points lie in
the left pentagon `ABCFH` (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 381-384), and the
one-point bounds of Sections 1-2 are reused by `SEVEN_BOUNDARY_MIXED_PAIR.md` Theorem 3.

**Status.** The case of two free points strictly inside the anchor heptagon (which contains the
left pentagon) is proved by one certificate cover over pairs of ray words
(`Heilbronn.Nine.SevenInterior.interior_false`, used by
`SevenBoundaryMixedAboveCompletion.claim_interior`). Theorem 2 is kept as a corollary of it; the
sector Theorem 1 and the one-point claims of §§1-5 (the coupled inequality, the rational box, the
signs of `[AEP]`, `[HDP]`) are not stated.

**Definitions.** `InLeftPentagon` (strictly inside the pentagon `ABCFH`).

**Results.** `theorem2`: the left pentagon cannot contain both free points.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryLeftPair

/-- `X` lies strictly inside the left pentagon `ABCFH` (counterclockwise) of the anchor heptagon:
strictly to the left of each of the directed edges `AB, BC, CF, FH, HA`. -/
def InLeftPentagon (a h b c f : ℝ) (X : Point) : Prop :=
  0 < sarea (0, a) (b, 0) X ∧ 0 < sarea (b, 0) (c, 0) X ∧ 0 < sarea (c, 0) (f, 1) X ∧
    0 < sarea (f, 1) (0, h) X ∧ 0 < sarea (0, h) (0, a) X

variable {a h b c d e f : ℝ} {P Q : Point}

/-- **Theorem 2** (`SEVEN_BOUNDARY_LEFT_PAIR:Theorem2`). Under the seven-boundary normalization,
the left pentagon `ABCFH` cannot contain both free points at minimum area at least `7/128`.
Proof: both points lie in the anchor heptagon; `Heilbronn.Nine.SevenInterior.pair_false`.
`docs/proof/nine/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 486-505. -/
theorem theorem2 (hN : SevenBoundary.SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (SevenBoundary.sevenConfig a h b c d e f P Q)) :
    ¬ (InLeftPentagon a h b c f P ∧ InLeftPentagon a h b c f Q) := by
  rintro ⟨⟨p1, p2, p3, p4, p5⟩, ⟨q1, q2, q3, q4, q5⟩⟩
  exact SevenInterior.pair_false hN hmin
    (SevenInterior.inHeptagon_of_leftPentagon hN p1 p2 p3 p4 p5
      (SevenInterior.sarea_ne_zero_free (i := 0) (j := 2) (x := 7) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inl rfl))
      (SevenInterior.sarea_ne_zero_free (i := 0) (j := 5) (x := 7) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inl rfl)))
    (SevenInterior.inHeptagon_of_leftPentagon hN q1 q2 q3 q4 q5
      (SevenInterior.sarea_ne_zero_free (i := 0) (j := 2) (x := 8) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inr rfl))
      (SevenInterior.sarea_ne_zero_free (i := 0) (j := 5) (x := 8) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inr rfl)))

end Heilbronn.Nine.SevenBoundaryLeftPair
