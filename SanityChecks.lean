module

import Heilbronn

/-!
Regression checks on the statement: the nine-point configuration and its value, the quadratic that defines `p₀`, its symmetry under the anti-diagonal
reflection (so four point sets attain `H₉`), the eight symmetries of the square, and the least
triangle area on small examples.
-/
noncomputable section
open Heilbronn

-- `p₀` is the smaller root of `20 x² - 15 x + 2`.
example : 20 * Nine.p₀ ^ 2 - 15 * Nine.p₀ + 2 = 0 := by
  unfold Nine.p₀; nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 65 by norm_num)]

-- The nine points, in the order A, B, C, D, E, F, G, H, O.
example : Nine.optimalConfiguration 0 = (0, 4 * Nine.p₀ - 1 / 2) := rfl
example : Nine.optimalConfiguration 4 = (1, 1 - Nine.p₀) := rfl
example : Nine.optimalConfiguration 8 = (1 - 2 * Nine.p₀, 2 * Nine.p₀) := rfl

-- They lie in the square and attain `(9√65 - 55)/320 ≈ 0.054876`.
example (i : Fin 9) : Nine.optimalConfiguration i ∈ unitSquare :=
  Nine.optimalConfiguration_mem i
example : minTriangleArea Nine.optimalConfiguration = (9 * Real.sqrt 65 - 55) / 320 :=
  Nine.minTriangleArea_optimalConfiguration
example : (0.05487 : ℝ) < (9 * Real.sqrt 65 - 55) / 320 ∧
    (9 * Real.sqrt 65 - 55) / 320 < 0.05488 := by
  have h := Nine.sqrt65_bounds; constructor <;> linarith [h.1, h.2]

-- The configuration is its own image under the reflection `(x, y) ↦ (1 - y, 1 - x)` in the
-- anti-diagonal, with A ↔ F, B ↔ E, C ↔ D, G ↔ H and O fixed.
example : Congruent Nine.optimalConfiguration Nine.optimalConfiguration := by
  refine ⟨⟨true, true, true⟩,
    Equiv.swap 0 5 * Equiv.swap 1 4 * Equiv.swap 2 3 * Equiv.swap 6 7, fun i => ?_⟩
  fin_cases i <;>
    simp [Nine.optimalConfiguration, SquareSymmetry.apply, Equiv.swap_apply_of_ne_of_ne] <;>
    ring_nf

-- The symmetries of the square: the identity, a reflection and the transposition.
example (p : Point) : (⟨false, false, false⟩ : SquareSymmetry).apply p = p := rfl
example (p : Point) : (⟨false, true, false⟩ : SquareSymmetry).apply p = (1 - p.1, p.2) := rfl
example (p : Point) : (⟨true, false, false⟩ : SquareSymmetry).apply p = (p.2, p.1) := rfl
-- Each maps the square into itself and keeps every triangle area.
example (g : SquareSymmetry) (p : Point) (hp : p ∈ unitSquare) : g.apply p ∈ unitSquare :=
  g.apply_mem hp
example (g : SquareSymmetry) (p q r : Point) :
    triangleArea (g.apply p) (g.apply q) (g.apply r) = triangleArea p q r :=
  g.triangleArea_apply p q r

-- Triangle areas: the half square, and three collinear points.
example : triangleArea (0, 0) (1, 0) (0, 1) = 1 / 2 := by norm_num [triangleArea]
example : triangleArea (0, 0) (1 / 2, 1 / 2) (1, 1) = 0 := by norm_num [triangleArea]

-- A repeated point gives least area `0`.
example (p q r : Point) : minTriangleArea ![p, p, q, r] = 0 :=
  le_antisymm ((minTriangleArea_le_of_lt _ (i := 0) (j := 1) (k := 2) (by decide) (by decide)).trans
    (by simp [triangleArea])) (minTriangleArea_nonneg _)

-- The theorems of nine points, as its Palomar entry states them.
example : heilbronnNumber 9 = (9 * Real.sqrt 65 - 55) / 320 := Nine.heilbronn_number
example : IsGreatest (minAreaValues 9) ((9 * Real.sqrt 65 - 55) / 320) := Nine.optimal_value
example (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P = (9 * Real.sqrt 65 - 55) / 320 ↔ Congruent P Nine.optimalConfiguration :=
  Nine.optimal_configurations P hP
