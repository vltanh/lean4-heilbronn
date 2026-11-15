module

public import Heilbronn.Common.Basic

/-!
# Working with named configurations

The proof argues about configurations given by named points, written `![A, B, …]`, and about
their sub-configurations. This file provides:

* `area_of_le_min`: from `t ≤ minTriangleArea P`, the bound `t ≤ triangleArea (P i) (P j) (P k)`
  for three distinct indices given as numerals; with `P = ![A, B, …]` the points reduce to the
  named ones by `rfl`, so `area_of_le_min h 0 1 6` can be used where `t ≤ triangleArea A B X` is
  expected;
* `sarea_ge_of_le_min_of_pos` and `sarea_le_of_le_min_of_neg`: the same as a bound on the doubled
  signed area, given the orientation;
* `le_min_comp`: a sub-configuration has least area at least that of the configuration;
* `InTriangle X A B C`: `X` is strictly inside the counterclockwise triangle `ABC`;
* `minTriangleArea_affineMap`: an affine map multiplies the least area by `|det|`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn

/-! ### The target value -/

/-- `A₀ = (9√65 - 55)/320 ≈ 0.054876`, the value of `H₉`. -/
def A₀ : ℝ := (9 * Real.sqrt 65 - 55) / 320

theorem A₀_def : A₀ = (9 * Real.sqrt 65 - 55) / 320 := rfl

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

variable {n : ℕ}

/-- A triangle of three distinct points of a configuration has area at least the least area. -/
theorem area_of_le_min {P : Fin n → Point} {t : ℝ} (h : t ≤ minTriangleArea P) (i j k : Fin n)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    t ≤ triangleArea (P i) (P j) (P k) :=
  h.trans (minTriangleArea_le P hij hjk hik)

/-- A positively oriented triangle of a configuration of least area at least `t > 0` has doubled
signed area at least `2t`. -/
theorem sarea_ge_of_le_min_of_pos {P : Fin n → Point} {t : ℝ} (ht : 0 < t)
    (h : t ≤ minTriangleArea P) (i j k : Fin n) (hpos : 0 < sarea (P i) (P j) (P k))
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    2 * t ≤ sarea (P i) (P j) (P k) :=
  (le_triangleArea_of_pos ht hpos).1 (area_of_le_min h i j k hij hjk hik)

/-- A negatively oriented triangle of a configuration of least area at least `t > 0` has doubled
signed area at most `-2t`. -/
theorem sarea_le_of_le_min_of_neg {P : Fin n → Point} {t : ℝ} (ht : 0 < t)
    (h : t ≤ minTriangleArea P) (i j k : Fin n) (hneg : sarea (P i) (P j) (P k) < 0)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    sarea (P i) (P j) (P k) ≤ -(2 * t) :=
  (le_triangleArea_of_neg ht hneg).1 (area_of_le_min h i j k hij hjk hik)

/-- Three distinct points of a configuration of positive least area are not collinear. -/
theorem sarea_ne_zero_of_min_pos {P : Fin n → Point} (h : 0 < minTriangleArea P) (i j k : Fin n)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    sarea (P i) (P j) (P k) ≠ 0 := by
  intro h0
  have := area_of_le_min (le_refl (minTriangleArea P)) i j k hij hjk hik
  rw [triangleArea_eq, h0] at this
  simp at this
  linarith

/-- A sub-configuration (an injective reindexing, `m ≥ 3`) has least area at least that of the
configuration. -/
theorem le_min_comp {m : ℕ} (hm : 3 ≤ m) (P : Fin n → Point) {f : Fin m → Fin n}
    (hf : Function.Injective f) : minTriangleArea P ≤ minTriangleArea (P ∘ f) :=
  le_minTriangleArea hm _ fun _ _ _ hij hjk =>
    minTriangleArea_le P (hf.ne hij.ne) (hf.ne hjk.ne) (hf.ne (hij.trans hjk).ne)

/-- `X` lies strictly inside the triangle `ABC`, whose vertices are counterclockwise. -/
def InTriangle (X A B C : Point) : Prop :=
  0 < sarea A B X ∧ 0 < sarea B C X ∧ 0 < sarea C A X

/-- The three sub-triangles at a point add up to the triangle. -/
theorem sarea_add_sarea_add_sarea (A B C X : Point) :
    sarea A B X + sarea B C X + sarea C A X = sarea A B C := by
  unfold sarea; ring

/-- The least area of the image under an affine map is `|det|` times the least area. -/
theorem minTriangleArea_affineMap (a b c d e f : ℝ) (P : Fin n → Point) :
    minTriangleArea (affineMap a b c d e f ∘ P) = |a * d - b * c| * minTriangleArea P := by
  rcases lt_or_ge n 3 with hn | hn
  · have : IsEmpty (Triple n) := ⟨fun t => by have := t.1.2.2.2; omega⟩
    rw [minTriangleArea_def, minTriangleArea_def, Real.iInf_of_isEmpty, Real.iInf_of_isEmpty,
      mul_zero]
  obtain ⟨i, j, k, hij, hjk, hmin⟩ := exists_minTriangleArea_eq hn P
  apply le_antisymm
  · rw [hmin, ← triangleArea_affineMap]
    exact minTriangleArea_le_of_lt _ hij hjk
  · refine le_minTriangleArea hn _ fun i' j' k' h1 h2 => ?_
    simp only [Function.comp, triangleArea_affineMap]
    exact mul_le_mul_of_nonneg_left (minTriangleArea_le_of_lt P h1 h2) (abs_nonneg _)

end Heilbronn
