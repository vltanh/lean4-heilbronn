module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.Setting
public import Heilbronn.Nine.SevenBoundary.Interior.Regions

/-! # The complete right-hand pair with seven boundary contacts (`docs/proof/nine/SEVEN_BOUNDARY_RIGHT_PAIR.md`)

In the hand proof, the Theorem of this note closes the placement in which both free points lie in
the right quadrilateral `CDEF` (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 385-388).

**Status.** The claims of this note (the initial bounds, the same-side inequalities, the monotone
relaxations and the concavity certificate of §8) are not stated separately: the case of two free
points strictly inside the anchor heptagon (which contains `CDEF`) is proved by one certificate
cover over pairs of ray words (`Heilbronn.Nine.SevenInterior.interior_false`, used by
`SevenBoundaryMixedAboveCompletion.claim_interior`). The Theorem is kept as a corollary of it.

**Definitions.** `InRightQuad` (strictly inside `CDEF`).

**Results.** `mainTheorem`: the two free points cannot both lie in `CDEF`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryRightPair

/-- `X` lies strictly inside the right quadrilateral `CDEF` (counterclockwise) of the anchor
heptagon: strictly to the left of each of the directed edges `CD, DE, EF, FC`. -/
def InRightQuad (c d e f : ℝ) (X : Point) : Prop :=
  0 < sarea (c, 0) (1, d) X ∧ 0 < sarea (1, d) (1, e) X ∧ 0 < sarea (1, e) (f, 1) X ∧
    0 < sarea (f, 1) (c, 0) X

variable {a h b c d e f : ℝ} {P Q : Point}

/-- **Theorem** (`SEVEN_BOUNDARY_RIGHT_PAIR:Theorem`). The two free points cannot both lie in the
right quadrilateral `CDEF` (at minimum area at least `7/128`).
Proof: both points lie in the anchor heptagon; `Heilbronn.Nine.SevenInterior.pair_false`.
`docs/proof/nine/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 19-31, 504-505. -/
theorem mainTheorem (hN : SevenBoundary.SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (SevenBoundary.sevenConfig a h b c d e f P Q)) :
    ¬ (InRightQuad c d e f P ∧ InRightQuad c d e f Q) := by
  rintro ⟨⟨p1, p2, p3, p4⟩, ⟨q1, q2, q3, q4⟩⟩
  exact SevenInterior.pair_false hN hmin
    (SevenInterior.inHeptagon_of_rightQuad hN p1 p2 p3 p4
      (SevenInterior.sarea_ne_zero_free (i := 2) (j := 4) (x := 7) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inl rfl)))
    (SevenInterior.inHeptagon_of_rightQuad hN q1 q2 q3 q4
      (SevenInterior.sarea_ne_zero_free (i := 2) (j := 4) (x := 8) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inr rfl)))

end Heilbronn.Nine.SevenBoundaryRightPair
