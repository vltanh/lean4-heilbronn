module

public import Heilbronn.Construction
public import Heilbronn.Common.Families

/-!
# Assembly of the main theorems

`hand/UNRESTRICTED.md`, Theorem 1. Everything reduces to one statement about maximizers
(`maximizer_congruent`): a configuration in the square whose least triangle area is largest and at
least `A₀` is a relabelling of the image of the construction under a symmetry of the square. Then

* the largest least area is attained (`exists_maximizer`) and at least `A₀` (the construction),
  so a maximizer is congruent to the construction, and the largest value is `A₀`;
* a configuration of least area `A₀` is then a maximizer, hence congruent to the construction;
* conversely every relabelled symmetric image of the construction has least area `A₀`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn

/-- **Every maximizer is the construction** (`hand/UNRESTRICTED.md`, Sections 2–5). -/
theorem maximizer_congruent (P : Fin 9 → Point) (hP : IsMaximizer P)
    (hA : (9 * Real.sqrt 65 - 55) / 320 ≤ minTriangleArea P) : IsOptimal P := by
  sorry

/-- The least area of an optimal configuration is `A₀`. -/
theorem minTriangleArea_of_isOptimal {P : Fin 9 → Point} (h : IsOptimal P) :
    minTriangleArea P = (9 * Real.sqrt 65 - 55) / 320 := by
  obtain ⟨g, σ, hσ⟩ := h
  have : P ∘ σ = g.apply ∘ optimalConfiguration := funext hσ
  rw [← minTriangleArea_comp_perm P σ, this, SquareSymmetry.minTriangleArea_comp,
    minTriangleArea_optimalConfiguration]

/-- The upper bound: no configuration in the square has least area above `A₀`. -/
theorem minTriangleArea_le_A₀ (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P ≤ (9 * Real.sqrt 65 - 55) / 320 := by
  obtain ⟨M, hM, hmax⟩ := exists_maximizer (n := 9) (by norm_num)
  have hA : (9 * Real.sqrt 65 - 55) / 320 ≤ minTriangleArea M := by
    rw [← minTriangleArea_optimalConfiguration]; exact hmax _ optimalConfiguration_mem
  rw [← minTriangleArea_of_isOptimal (maximizer_congruent M ⟨hM, hmax⟩ hA)]
  exact hmax P hP

/-- **`hand/UNRESTRICTED.md`, Theorem 1 (value).** -/
theorem heilbronn_nine_isGreatest :
    IsGreatest (minAreaValues 9) ((9 * Real.sqrt 65 - 55) / 320) :=
  ⟨⟨optimalConfiguration, optimalConfiguration_mem, minTriangleArea_optimalConfiguration⟩,
    by rintro _ ⟨P, hP, rfl⟩; exact minTriangleArea_le_A₀ P hP⟩

/-- **`hand/UNRESTRICTED.md`, Theorem 1 (equality).** -/
theorem heilbronn_nine_equality (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P = (9 * Real.sqrt 65 - 55) / 320 ↔ IsOptimal P := by
  refine ⟨fun h => maximizer_congruent P ⟨hP, fun Q hQ => ?_⟩ h.ge,
    minTriangleArea_of_isOptimal⟩
  rw [h]; exact minTriangleArea_le_A₀ Q hQ

end Heilbronn
