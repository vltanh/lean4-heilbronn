module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting
public import Heilbronn.Seven.LeftPair
public import Heilbronn.Seven.RightPair
public import Heilbronn.Seven.Interior.Regions

/-! # Mixed-pair cells with seven boundary contacts (`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`)

In the hand proof, Theorem 3 of this note (`P ∈ ACF` in the mixed placement), the capacity-one
Theorems 4-5 and the common-cell Theorem 1 are the `V` and `M` tests of
`SEVEN_BOUNDARY_MIXED_LOWER.md` and `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`; the anchor-only
bounds (25), (26) are its `A` tests.

**Status.** The pairs of ray words that these tests remove are closed directly by kernel-checked
certificates of the interior cover (`Heilbronn.SevenInterior.interior_false`, used by
`SevenBoundaryMixedAboveCompletion.claim_interior`), with the strengthened costs
`ρ = 102/125 ≤ (4 + 2√3)s` of the two-interior-point lemma. Theorems 1-5 are kept as corollaries
of it, under the full normalization `SevenNormal` (the note states Theorems 2 and 4(a), 4(b)
without `f ≤ 1/2`); the anchor-only bounds (1), (25), (26) and §2 are not stated. In particular
the slip at lines 396-400 (inventory gap G1, the unjustified factor `3/8` in `[ACD] < 3s`) and the
citation typo at line 598 (gap G2: "Theorem 7" is `SEVEN_BOUNDARY_CAPS.md` Theorem 6) are not on
the formal route.

**Definitions.** `BothInTriangle`, `MixedPlacement`.

**Results.** `mixed_false` (the mixed placement is impossible), `theorem1` (`HBE ∩ BEF`),
`theorem2` (`ACE ∩ ADE`), `theorem3` (`P ∈ ACF` in the mixed placement), `theorem4` (`ADE`,
`AHD`, `AHE` have capacity one), `theorem5` (`HDE` has capacity one).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryMixedPair

open SevenBoundary SevenBoundaryLeftPair SevenBoundaryRightPair

/-- Both free points `P, Q` lie strictly inside the counterclockwise triangle `XYZ`. -/
def BothInTriangle (P Q X Y Z : Point) : Prop :=
  InTriangle P X Y Z ∧ InTriangle Q X Y Z

/-- The mixed placement (`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 299-300): `P` lies strictly
inside the left pentagon `ABCFH` and `Q` strictly inside the right quadrilateral `CDEF`. -/
def MixedPlacement (a h b c d e f : ℝ) (P Q : Point) : Prop :=
  InLeftPentagon a h b c f P ∧ InRightQuad c d e f Q

variable {a h b c d e f : ℝ} {P Q : Point}

-- The seven anchors as points.
local notation "𝐀" => ((0 : ℝ), a)
local notation "𝐇" => ((0 : ℝ), h)
local notation "𝐁" => (b, (0 : ℝ))
local notation "𝐂" => (c, (0 : ℝ))
local notation "𝐃" => ((1 : ℝ), d)
local notation "𝐄" => ((1 : ℝ), e)
local notation "𝐅" => (f, (1 : ℝ))

/-- The mixed placement is impossible at least area `7/128` (both points lie in the anchor
heptagon; `Heilbronn.SevenInterior.pair_false`). -/
theorem mixed_false (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hPQ : MixedPlacement a h b c d e f P Q) : False := by
  obtain ⟨⟨p1, p2, p3, p4, p5⟩, ⟨q1, q2, q3, q4⟩⟩ := hPQ
  exact SevenInterior.pair_false hN hmin
    (SevenInterior.inHeptagon_of_leftPentagon hN p1 p2 p3 p4 p5
      (SevenInterior.sarea_ne_zero_free (i := 0) (j := 2) (x := 7) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inl rfl))
      (SevenInterior.sarea_ne_zero_free (i := 0) (j := 5) (x := 7) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inl rfl)))
    (SevenInterior.inHeptagon_of_rightQuad hN q1 q2 q3 q4
      (SevenInterior.sarea_ne_zero_free (i := 2) (j := 4) (x := 8) hmin (by norm_num)
        (by norm_num) (by norm_num) (Or.inr rfl)))

/-- **Theorem 1** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem1`). The two free points cannot both belong
to `HBE ∩ BEF`. `hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 47-295. -/
theorem theorem1 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (BothInTriangle P Q 𝐁 𝐄 𝐇 ∧ BothInTriangle P Q 𝐁 𝐄 𝐅) := fun ⟨⟨hP, hQ⟩, _⟩ =>
  SevenInterior.pair_false_tri hN hmin (i := 1) (j := 4) (k := 6) (by norm_num) (by norm_num)
    (by norm_num) (by unfold SevenInterior.Cyc; omega) hP hQ

/-- **Theorem 2** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem2`). The two free points cannot both belong
to `ACE ∩ ADE`. `hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 344-543. -/
theorem theorem2 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (BothInTriangle P Q 𝐀 𝐂 𝐄 ∧ BothInTriangle P Q 𝐀 𝐃 𝐄) := fun ⟨⟨hP, hQ⟩, _⟩ =>
  SevenInterior.pair_false_tri hN hmin (i := 0) (j := 2) (k := 4) (by norm_num) (by norm_num)
    (by norm_num) (by unfold SevenInterior.Cyc; omega) hP hQ

/-- **Theorem 3** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem3`). In the mixed left/right placement, the
left point `P` belongs to `ACF` (vacuously: the placement is impossible, `mixed_false`).
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 546-606. -/
theorem theorem3 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hPQ : MixedPlacement a h b c d e f P Q) :
    InTriangle P 𝐀 𝐂 𝐅 :=
  (mixed_false hN hmin hPQ).elim

/-- **Theorem 4** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem4`). None of `ADE`, `AHD`, `AHE` contains
both free points. `hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 609-681. -/
theorem theorem4 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ BothInTriangle P Q 𝐀 𝐃 𝐄 ∧ ¬ BothInTriangle P Q 𝐀 𝐃 𝐇 ∧ ¬ BothInTriangle P Q 𝐀 𝐄 𝐇 :=
  ⟨fun ⟨hP, hQ⟩ => SevenInterior.pair_false_tri hN hmin (i := 0) (j := 3) (k := 4) (by norm_num)
      (by norm_num) (by norm_num) (by unfold SevenInterior.Cyc; omega) hP hQ,
    fun ⟨hP, hQ⟩ => SevenInterior.pair_false_tri hN hmin (i := 0) (j := 3) (k := 6) (by norm_num)
      (by norm_num) (by norm_num) (by unfold SevenInterior.Cyc; omega) hP hQ,
    fun ⟨hP, hQ⟩ => SevenInterior.pair_false_tri hN hmin (i := 0) (j := 4) (k := 6) (by norm_num)
      (by norm_num) (by norm_num) (by unfold SevenInterior.Cyc; omega) hP hQ⟩

/-- **Theorem 5** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem5`). `HDE` cannot contain both free points.
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 684-1071. -/
theorem theorem5 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ BothInTriangle P Q 𝐃 𝐄 𝐇 := fun ⟨hP, hQ⟩ =>
  SevenInterior.pair_false_tri hN hmin (i := 3) (j := 4) (k := 6) (by norm_num) (by norm_num)
    (by norm_num) (by unfold SevenInterior.Cyc; omega) hP hQ

end Heilbronn.SevenBoundaryMixedPair
