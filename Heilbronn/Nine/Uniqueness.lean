module

public import Heilbronn.Nine.Construction
public import Heilbronn.Common.Optimum
public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.Normalization.GlobalStructure
public import Heilbronn.Nine.Assembly.FamilyN
public import Heilbronn.Nine.Assembly.FamilyC1
public import Heilbronn.Nine.Assembly.Corners

/-!
# Nine points: uniqueness, and the optimum

`docs/proof/nine/UNRESTRICTED.md`, Theorem 1. Everything reduces to one statement about maximizers
(`maximizer_congruent`): a configuration in the square whose least triangle area is largest and at
least `A₀` is a relabelling of the image of the construction under a symmetry of the square. With
the construction (`Heilbronn/Nine/Construction.lean`) it gives the optimum of nine points,
`optimum : Optimum 9`, from which `Heilbronn/Common/Optimum.lean` derives the three theorems of
the Palomar entry of nine points (`Palomar/Nine/Challenge.lean`): `optimal_value`,
`heilbronn_number` and `optimal_configurations`.

`maximizer_congruent` normalizes the maximizer (`GlobalStructure.theorem3`, Section 2) into one of
the five families, excludes the corner families (Section 3: `Assembly.isC1_exclusion`,
`Assembly.c2_exclusion`, `Assembly.typeII_exclusion`, `Assembly.typeIII_exclusion`), proves the
family N optimal (Section 4: `Assembly.isN_isOptimal`), and transfers optimality back to the
original configuration (Section 5, part of `GlobalStructure.theorem3`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine

/-- **Every maximizer is the construction** (`docs/proof/nine/UNRESTRICTED.md`, Sections 2–5). -/
theorem maximizer_congruent (P : Fin 9 → Point) (hP : IsMaximizer P)
    (hA : (9 * Real.sqrt 65 - 55) / 320 ≤ minTriangleArea P) : IsOptimal P := by
  have hA' : A₀ ≤ minTriangleArea P := hA
  obtain ⟨Q, -, -, -, hQmin, hQopt, -, hfam⟩ :=
    GlobalStructure.theorem3 hP (A₀_pos.trans_le hA')
  rw [← hQmin] at hA'
  apply hQopt
  rcases hfam with hN | hC1 | hC2 | hII | hIII
  · exact Assembly.isN_isOptimal hN hA'
  · exact (Assembly.isC1_exclusion hC1 hA').elim
  · exact (Assembly.c2_exclusion hC2 hA').elim
  · exact (Assembly.typeII_exclusion hII hA').elim
  · exact (Assembly.typeIII_exclusion hIII hA').elim

/-- `IsOptimal` is congruence to the optimal configuration. -/
theorem isOptimal_iff_congruent (P : Fin 9 → Point) :
    IsOptimal P ↔ Congruent P optimalConfiguration := Iff.rfl

/-- **The optimum of nine points** (`docs/proof/nine/UNRESTRICTED.md`, Theorem 1): the value
`(9√65 - 55)/320`, attained by the construction (`docs/proof/nine/HAND_PROOF.md`, appendix),
and every maximizer congruent to the construction (`maximizer_congruent`). -/
def optimum : Optimum 9 where
  value := (9 * Real.sqrt 65 - 55) / 320
  models := {optimalConfiguration}
  model_mem := by
    intro M hM
    rw [show M = optimalConfiguration from hM]
    exact optimalConfiguration_mem
  model_value := by
    intro M hM
    rw [show M = optimalConfiguration from hM]
    exact minTriangleArea_optimalConfiguration
  nonempty := ⟨optimalConfiguration, rfl⟩
  uniqueness := fun P hP hmax hv =>
    ⟨optimalConfiguration, rfl, maximizer_congruent P ⟨hP, hmax⟩ hv⟩

/-- **The optimal value of nine points.** The largest least triangle area of nine points in the
unit square exists and is `(9√65 - 55)/320`. -/
theorem optimal_value : IsGreatest (minAreaValues 9) ((9 * Real.sqrt 65 - 55) / 320) :=
  optimum.isGreatest (by norm_num)

/-- **The Heilbronn number of nine points**: `H₉ = (9√65 - 55)/320`. -/
theorem heilbronn_number : heilbronnNumber 9 = (9 * Real.sqrt 65 - 55) / 320 :=
  optimum.heilbronnNumber_eq (by norm_num)

/-- **The optimal configurations of nine points.** Nine points in the unit square attain
`(9√65 - 55)/320` exactly when they are congruent to the configuration of Comellas and Yebra. -/
theorem optimal_configurations (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P = (9 * Real.sqrt 65 - 55) / 320 ↔
      Congruent P optimalConfiguration :=
  (optimum.iff (by norm_num) P hP).trans
    ⟨fun ⟨M, hM, h⟩ => (show M = optimalConfiguration from hM) ▸ h,
      fun h => ⟨optimalConfiguration, rfl, h⟩⟩

end Heilbronn.Nine
