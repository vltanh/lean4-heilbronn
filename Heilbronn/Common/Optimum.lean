module

public import Heilbronn.Common.Basic

/-!
# The optimum of a case, and what follows from it

Each case `n` of the library proves one `Optimum n` (`Heilbronn/Nine/Uniqueness.lean` for nine
points): a value, a nonempty set of model configurations in the square that attain it, and
uniqueness: every maximizing configuration whose least area is at least the value is congruent to
a model. From these alone:

* `Optimum.isGreatest`: the value is the largest least triangle area of `n` points in the square;
* `Optimum.heilbronnNumber_eq`: it is the Heilbronn number `H_n`;
* `Optimum.iff`: the configurations of least area equal to the value are exactly the
  configurations congruent to a model.

`Congruent.minTriangleArea_eq`: congruence keeps the least triangle area.
-/

@[expose] public section

noncomputable section
namespace Heilbronn

/-- Congruent configurations have the same least triangle area. -/
theorem Congruent.minTriangleArea_eq {n : ℕ} {P M : Fin n → Point} (h : Congruent P M) :
    minTriangleArea P = minTriangleArea M := by
  obtain ⟨g, σ, hσ⟩ := h
  have : P ∘ σ = g.apply ∘ M := funext hσ
  rw [← minTriangleArea_comp_perm P σ, this, SquareSymmetry.minTriangleArea_comp]

/-- The optimum of `n` points: a value, the models that attain it, and the uniqueness of the
maximizers up to congruence. -/
structure Optimum (n : ℕ) where
  /-- The optimal value. -/
  value : ℝ
  /-- The optimal configurations, up to congruence. -/
  models : Set (Fin n → Point)
  /-- Every model lies in the square. -/
  model_mem : ∀ M ∈ models, ∀ i, M i ∈ unitSquare
  /-- Every model attains the value. -/
  model_value : ∀ M ∈ models, minTriangleArea M = value
  /-- There is a model. -/
  nonempty : models.Nonempty
  /-- A configuration in the square with the largest least area, at least the value, is
  congruent to a model. -/
  uniqueness : ∀ P : Fin n → Point, (∀ i, P i ∈ unitSquare) →
    (∀ Q : Fin n → Point, (∀ i, Q i ∈ unitSquare) → minTriangleArea Q ≤ minTriangleArea P) →
    value ≤ minTriangleArea P → ∃ M ∈ models, Congruent P M

namespace Optimum

variable {n : ℕ} (O : Optimum n)

/-- No configuration in the square has least area above the value. -/
theorem le_value (hn : 3 ≤ n) (P : Fin n → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P ≤ O.value := by
  obtain ⟨X, hX, hmax⟩ := exists_maximizer hn
  obtain ⟨M₀, hM₀⟩ := O.nonempty
  have hv : O.value ≤ minTriangleArea X := by
    rw [← O.model_value M₀ hM₀]; exact hmax M₀ (O.model_mem M₀ hM₀)
  obtain ⟨M, hM, hXM⟩ := O.uniqueness X hX hmax hv
  rw [← O.model_value M hM, ← hXM.minTriangleArea_eq]
  exact hmax P hP

/-- **The value is the largest least triangle area.** -/
theorem isGreatest (hn : 3 ≤ n) : IsGreatest (minAreaValues n) O.value := by
  obtain ⟨M, hM⟩ := O.nonempty
  exact ⟨⟨M, O.model_mem M hM, O.model_value M hM⟩,
    by rintro _ ⟨P, hP, rfl⟩; exact O.le_value hn P hP⟩

/-- **The value is the Heilbronn number.** -/
theorem heilbronnNumber_eq (hn : 3 ≤ n) : heilbronnNumber n = O.value :=
  (O.isGreatest hn).csSup_eq

/-- **The optimal configurations are the configurations congruent to a model.** -/
theorem iff (hn : 3 ≤ n) (P : Fin n → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P = O.value ↔ ∃ M ∈ O.models, Congruent P M := by
  constructor
  · intro h
    refine O.uniqueness P hP (fun Q hQ => ?_) h.ge
    rw [h]; exact O.le_value hn Q hQ
  · rintro ⟨M, hM, hPM⟩
    rw [hPM.minTriangleArea_eq, O.model_value M hM]

end Optimum

end Heilbronn
