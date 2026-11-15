module

public import Heilbronn.C1.ZeroLowerCover
public import Heilbronn.C1.OneLower.MixedCaps
public import Heilbronn.C1.TwoLowerCompletion
public import Heilbronn.Corners.OneCorner

/-!
# Assembly: the one-corner family C1

`hand/UNRESTRICTED.md`, Section 3 (the table of lower counts). Let `n₀` be the number of the four
free points of a C1 configuration strictly inside the lower anchor triangle `OHC`
(`C1.lowerCount`). The cases `n₀ = 0, 1, 2` are `C1ZeroLower.theorem4`,
`C1OneLowerMixedCaps.theorem2` and `C1TwoLowerCompletion.theorem2`; `n₀ ≥ 3` is impossible by the
corner-triangle occupancy theorem (`OneCorner.claim_C1_at_most_two_lower`), whose count of points
inside `OHC` is at least `n₀` (`lowerCount_le_ncard`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Assembly

open C1

/-- The lower count `n₀` of `C1Setting` is at most the count of `OneCorner`: a point strictly
inside the counterclockwise triangle `O C H` is strictly inside the triangle `O H C` in the sense
of `CornerFamilies.InsideTriangle` (either orientation). -/
theorem lowerCount_le_ncard (h c : ℝ) (W X Y Z : Point) :
    lowerCount h c W X Y Z ≤
      {i : Fin 4 | CornerFamilies.InsideTriangle (![W, X, Y, Z] i) (0, 0) (0, h) (c, 0)}.ncard := by
  classical
  unfold lowerCount countFree
  have hset : {i : Fin 4 | CornerFamilies.InsideTriangle (![W, X, Y, Z] i) (0, 0) (0, h) (c, 0)} =
      ↑(Finset.univ.filter fun i : Fin 4 =>
        CornerFamilies.InsideTriangle (![W, X, Y, Z] i) (0, 0) (0, h) (c, 0)) := by
    ext i; simp
  rw [hset, Set.ncard_coe_finset]
  convert Finset.card_le_card (Finset.monotone_filter_right _ ?_)
  intro i _ hi
  exact Or.inr hi

/-- **Family C1 is excluded** (`hand/UNRESTRICTED.md`, Section 3): no C1 configuration in the
square has least area at least `A₀`. -/
theorem c1_exclusion {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) : False := by
  rcases Nat.lt_or_ge (lowerCount h c W X Y Z) 3 with h3 | h3
  · interval_cases hn : lowerCount h c W X Y Z
    · exact C1ZeroLower.theorem4 hA hW hX hY hZ hn hmin
    · exact C1OneLowerMixedCaps.theorem2 hA hW hX hY hZ hn hmin
    · exact C1TwoLowerCompletion.theorem2 (c1Anchors_weak hA) hW hX hY hZ hn hmin
  · have h2 := OneCorner.claim_C1_at_most_two_lower h c d f hA W X Y Z hW hX hY hZ hmin
    have := lowerCount_le_ncard h c W X Y Z
    omega

/-- **Family C1 is excluded**, for the family predicate `IsC1`. -/
theorem isC1_exclusion {P : Fin 9 → Point} (hP : IsC1 P) (hmin : A₀ ≤ minTriangleArea P) :
    False := by
  obtain ⟨h, c, d, f, W, X, Y, Z, hA, hW, hX, hY, hZ, rfl⟩ := hP
  exact c1_exclusion hA hW hX hY hZ hmin

end Heilbronn.Assembly
