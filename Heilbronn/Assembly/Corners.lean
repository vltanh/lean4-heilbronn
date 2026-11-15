module

public import Heilbronn.Corners.OppositeCorners
public import Heilbronn.Corners.CornerFamilies
public import Heilbronn.TypeII.Unbalanced.FinalLowerWedge

/-!
# Assembly: the corner families C2, Type II and Type III

`hand/UNRESTRICTED.md`, Section 3: no configuration of the families C2
(`OppositeCorners.corollary2_lt_A₀`), Type II (`UnbalancedFinalLowerWedge.typeII_exclusion`) or
Type III (`CornerFamilies.typeIII_lt_A₀`) has least area at least `A₀`. (The family C1 is
`Heilbronn.Assembly.c1_exclusion`, `Heilbronn/Assembly/FamilyC1.lean`.)
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Assembly

/-- **Family C2 is excluded.** -/
theorem c2_exclusion {P : Fin 9 → Point} (hP : IsC2 P) (hmin : A₀ ≤ minTriangleArea P) :
    False := by
  obtain ⟨h, c, d, f, X, Y, Z, hA, hX, hY, hZ, rfl⟩ := hP
  exact absurd hmin (not_le.2 (OppositeCorners.corollary2_lt_A₀ h c d f hA X Y Z hX hY hZ))

/-- **Type II is excluded.** -/
theorem typeII_exclusion {P : Fin 9 → Point} (hP : IsTypeII P) (hmin : A₀ ≤ minTriangleArea P) :
    False := by
  obtain ⟨l, b, V, W, X, Y, Z, hb₀, hb₁, hl₀, hl₁, hV, hW, hX, hY, hZ, rfl⟩ := hP
  exact UnbalancedFinalLowerWedge.typeII_exclusion hb₀ hb₁ hl₀ hl₁ hV hW hX hY hZ hmin

/-- **Type III is excluded.** -/
theorem typeIII_exclusion {P : Fin 9 → Point} (hP : IsTypeIII P)
    (hmin : A₀ ≤ minTriangleArea P) : False := by
  obtain ⟨U, V, W, X, Y, Z, hU, hV, hW, hX, hY, hZ, rfl⟩ := hP
  exact absurd hmin (not_le.2 (CornerFamilies.typeIII_lt_A₀ U V W X Y Z hU hV hW hX hY hZ))

end Heilbronn.Assembly
