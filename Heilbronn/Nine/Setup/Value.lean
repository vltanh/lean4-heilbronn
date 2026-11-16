module

public import Heilbronn.Common.Config

/-!
# Nine points: the target value

`A₀ = (9√65 - 55)/320 ≈ 0.054876`, the value of `H₉`, and the rational brackets that the proof uses
throughout.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine

/-! ### The target value -/

/-- `A₀ = (9√65 - 55)/320 ≈ 0.054876`, the value of `H₉`. -/
def A₀ : ℝ := (9 * Real.sqrt 65 - 55) / 320

/-- `√65 ∈ (8.0622, 8.0623)`. -/
theorem sqrt65_bounds : (8.0622 : ℝ) < Real.sqrt 65 ∧ Real.sqrt 65 < 8.0623 := by
  constructor
  · rw [Real.lt_sqrt (by norm_num)]; norm_num
  · rw [Real.sqrt_lt' (by norm_num)]; norm_num

/-- Rational brackets for `A₀` used throughout the proof: `7/128 < 8/146 < 79/1440 < A₀ < 11/200`,
that is, in doubled form, `7/64 < 8/73 < 79/720 < 2A₀ < 11/100`. -/
theorem A₀_bounds :
    (7 / 128 : ℝ) < A₀ ∧ (8 / 146 : ℝ) < A₀ ∧ (79 / 1440 : ℝ) < A₀ ∧ A₀ < 11 / 200 := by
  have h := sqrt65_bounds
  unfold A₀
  refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith [h.1, h.2]

theorem A₀_pos : 0 < A₀ := by linarith [A₀_bounds.1]

end Heilbronn.Nine
