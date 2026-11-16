module

public import Heilbronn.Nine.Construction.Areas

/-!
# The optimal configuration attains `A₀`

`optimalConfiguration` lies in the unit square (`optimalConfiguration_mem`), and its least
triangle area is exactly `A₀ = (9√65 - 55)/320` (`minTriangleArea_optimalConfiguration`): every
one of its 84 triangles has area at least `A₀`, and `ABC` has area exactly `A₀`. This is the
appendix of `docs/proof/nine/HAND_PROOF.md` and equation (1) of `docs/proof/nine/UNRESTRICTED.md`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine

open Construction

/-- `p₀ ∈ (0.1734, 0.1735)`. -/
theorem p₀_bounds : 0.1734 < p₀ ∧ p₀ < 0.1735 := by
  unfold p₀; constructor <;> linarith [sqrt65_gt, sqrt65_lt]

/-- **The construction lies in the square** (`docs/proof/nine/UNRESTRICTED.md`, (1)). -/
theorem optimalConfiguration_mem (i : Fin 9) : optimalConfiguration i ∈ unitSquare := by
  have h := p₀_bounds
  fin_cases i <;>
    simp only [optimalConfiguration, unitSquare, Set.mem_ofPred_eq, Fin.zero_eta, Fin.mk_one,
      Matrix.cons_val_zero, Matrix.cons_val_one] <;>
    refine ⟨?_, ?_, ?_, ?_⟩ <;> norm_num <;> linarith [h.1, h.2]

/-- The doubled signed area of `ABC` is exactly `2 A₀`. -/
theorem sarea_ABC :
    sarea (optimalConfiguration 0) (optimalConfiguration 1) (optimalConfiguration 2) =
      2 * ((9 * Real.sqrt 65 - 55) / 320) := by
  simp only [optimalConfiguration, sarea, p₀, Matrix.cons_val]
  linear_combination (-1 / 160 : ℝ) * sqrt65_sq

/-- **The construction attains `A₀`** (`docs/proof/nine/HAND_PROOF.md`, appendix): the least triangle area
of the optimal configuration is `(9√65 - 55)/320`. -/
theorem minTriangleArea_optimalConfiguration :
    minTriangleArea optimalConfiguration = (9 * Real.sqrt 65 - 55) / 320 := by
  apply le_antisymm
  · calc minTriangleArea optimalConfiguration
        ≤ triangleArea (optimalConfiguration 0) (optimalConfiguration 1)
            (optimalConfiguration 2) := minTriangleArea_le_of_lt _ (by decide) (by decide)
      _ = (9 * Real.sqrt 65 - 55) / 320 := by
          rw [triangleArea_eq, sarea_ABC, abs_of_pos (by linarith [sqrt65_gt])]; ring
  · exact le_minTriangleArea (by norm_num) _ le_area

end Heilbronn.Nine
