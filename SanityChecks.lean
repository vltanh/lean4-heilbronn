module

import Heilbronn

/-!
Regression checks on the statement: the optimal configuration and its value, the quadratic that
defines `p₀`, the eight symmetries of the square, and the least triangle area on small examples.
-/
noncomputable section
open Heilbronn

-- `p₀` is the smaller root of `20 x² - 15 x + 2`.
example : 20 * p₀ ^ 2 - 15 * p₀ + 2 = 0 := by
  unfold p₀; nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 65 by norm_num)]

-- The optimal configuration, point by point (A, B, C, D, E, F, G, H, O).
example : optimalConfiguration 0 = (0, 4 * p₀ - 1 / 2) := rfl
example : optimalConfiguration 4 = (1, 1 - p₀) := rfl
example : optimalConfiguration 8 = (1 - 2 * p₀, 2 * p₀) := rfl

-- It lies in the square and attains `(9√65 - 55)/320`.
example (i : Fin 9) : optimalConfiguration i ∈ unitSquare := optimalConfiguration_mem i
example : minTriangleArea optimalConfiguration = (9 * Real.sqrt 65 - 55) / 320 :=
  minTriangleArea_optimalConfiguration

-- The value is about `0.054876`.
example : (0.05487 : ℝ) < (9 * Real.sqrt 65 - 55) / 320 ∧
    (9 * Real.sqrt 65 - 55) / 320 < 0.05488 := by
  have h := sqrt65_bounds; constructor <;> linarith [h.1, h.2]

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
