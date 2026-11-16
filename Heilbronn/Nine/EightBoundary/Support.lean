module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.EightBoundary.RadialCatalogue
public import Heilbronn.Nine.EightBoundary.Scalar

/-! # Support for `Heilbronn/Nine/EightBoundary/Basic.lean`

The eight boundary budgets (`budgets`), the comparison of the nine-point and octagon least areas
(`min_le_oct`), the transfer of closed-polygon membership along a rotation
(`inClosedPolygon_rot`), and the proofs of the quadrilateral inequality of `quadrilateral_area_ge`
(`quadrilateral_area_ge_aux`), of `minTriangleArea_le_of_not_inPolygon` in the corner at the origin (`minTriangleArea_le_of_corner_side`) and of `minTriangleArea_lt_of_side_quad`
for `ABCD` (`minTriangleArea_lt_of_side_quad_ABCD`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary

open RadialCatalogue

/-! ### Helpers: the boundary budgets and transfer of edge conditions -/

/-- The least area of the nine points is at most that of the eight boundary points. -/
theorem min_le_oct (a b c d e f g h : ℝ) (O : Point) :
    minTriangleArea (eightConfig a b c d e f g h O) ≤ minTriangleArea (octagon a b c d e f g h) := by
  have hle := le_min_comp (by norm_num) (eightConfig a b c d e f g h O)
    (Fin.castSucc_injective 8)
  have e : eightConfig a b c d e f g h O ∘ Fin.castSucc = octagon a b c d e f g h :=
    funext (eightConfig_castSucc a b c d e f g h O)
  rwa [e] at hle

/-- The eight consecutive boundary triangles `ABH, ABC, BCD, CDE, DEF, EFG, FGH, GHA`. -/
theorem budgets {a b c d e f g h t : ℝ} (hA : EightAnchors a b c d e f g h) (ht : 0 < t)
    (hm : t ≤ minTriangleArea (octagon a b c d e f g h)) :
    2 * t ≤ b * (h - a) ∧ 2 * t ≤ a * (c - b) ∧ 2 * t ≤ d * (c - b) ∧
      2 * t ≤ (1 - c) * (e - d) ∧ 2 * t ≤ (1 - f) * (e - d) ∧ 2 * t ≤ (1 - e) * (f - g) ∧
      2 * t ≤ (1 - h) * (f - g) ∧ 2 * t ≤ g * (h - a) := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩ := hA
  have t1 := two_mul_le_sarea_of_nonneg ht (p := (0, a)) (q := (b, 0)) (r := (0, h))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 0 1 7)
  have t2 := two_mul_le_sarea_of_nonneg ht (p := (0, a)) (q := (b, 0)) (r := (c, 0))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 0 1 2)
  have t3 := two_mul_le_sarea_of_nonneg ht (p := (b, 0)) (q := (c, 0)) (r := (1, d))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 1 2 3)
  have t4 := two_mul_le_sarea_of_nonneg ht (p := (c, 0)) (q := (1, d)) (r := (1, e))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 2 3 4)
  have t5 := two_mul_le_sarea_of_nonneg ht (p := (1, d)) (q := (1, e)) (r := (f, 1))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 3 4 5)
  have t6 := two_mul_le_sarea_of_nonneg ht (p := (1, e)) (q := (f, 1)) (r := (g, 1))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 4 5 6)
  have t7 := two_mul_le_sarea_of_nonneg ht (p := (f, 1)) (q := (g, 1)) (r := (0, h))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 5 6 7)
  have t8 := two_mul_le_sarea_of_nonneg ht (p := (g, 1)) (q := (0, h)) (r := (0, a))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 6 7 0)
  simp only [sarea] at t1 t2 t3 t4 t5 t6 t7 t8
  exact ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith⟩

/-- From `s ≤ w z` with `z > 0`: `s / z ≤ w`. -/
theorem div_le_of_le_mul' {s w z : ℝ} (hz : 0 < z) (h : s ≤ w * z) : s / z ≤ w :=
  (div_le_iff₀ hz).2 h

theorem div_mul_self' {s z : ℝ} (hz : 0 < z) : s / z * z = s := div_mul_cancel₀ s hz.ne'

/-- A rotation `symOf false r` carries closed-polygon membership along a relabelling. -/
theorem inClosedPolygon_rot {n : ℕ} {W W' : Fin n → Point} {O : Point} (r : Fin 4)
    (hW : ∀ i, W' i = (symOf false r).apply (W i)) (h : InClosedPolygon W O) :
    InClosedPolygon W' ((symOf false r).apply O) := fun i => by
  rw [hW, hW, symOf_sarea]; simpa using h i

/-- `√6 > 71/29`. -/
theorem sqrt_six_bounds : (71 / 29 : ℝ) < Real.sqrt 6 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

/-- The quadrilateral inequality of `quadrilateral_area_ge`, without the convexity hypothesis: if `O` is in the
closed quadrilateral `V₁V₂V₃V₄` and every triangle on the five points has doubled area at least
`s > 0`, then `[V₁V₂V₃] + [V₁V₃V₄] ≥ 2(1+√2)s`. -/
theorem quadrilateral_area_ge_aux {V₁ V₂ V₃ V₄ O : Point} {s : ℝ} (hs : 0 < s)
    (hO : InClosedPolygon ![V₁, V₂, V₃, V₄] O)
    (hmin : s / 2 ≤ minTriangleArea ![V₁, V₂, V₃, V₄, O]) :
    2 * (1 + Real.sqrt 2) * s ≤ sarea V₁ V₂ V₃ + sarea V₁ V₃ V₄ := by
  have hs2 : 0 < s / 2 := by linarith
  have e0 := hO 0
  have e1 := hO 1
  have e2 := hO 2
  have e3 := hO 3
  simp [finRotate_apply] at e0 e1 e2 e3
  have ha := two_mul_le_sarea_of_nonneg hs2 e0 (area_of_le_min hmin 0 1 4)
  have hb := two_mul_le_sarea_of_nonneg hs2 e1 (area_of_le_min hmin 1 2 4)
  have hc := two_mul_le_sarea_of_nonneg hs2 e2 (area_of_le_min hmin 2 3 4)
  have hd := two_mul_le_sarea_of_nonneg hs2 e3 (area_of_le_min hmin 3 0 4)
  have hp : 2 * (s / 2) ≤ sarea V₁ V₃ O ∨ sarea V₁ V₃ O ≤ -(2 * (s / 2)) :=
    (le_triangleArea_iff _ _ _ _).1 (area_of_le_min hmin 0 2 4)
  have hq : 2 * (s / 2) ≤ sarea V₂ V₄ O ∨ sarea V₂ V₄ O ≤ -(2 * (s / 2)) :=
    (le_triangleArea_iff _ _ _ _).1 (area_of_le_min hmin 1 3 4)
  set A := sarea V₁ V₂ O
  set B := sarea V₂ V₃ O
  set C := sarea V₃ V₄ O
  set D := sarea V₄ V₁ O
  set P := sarea V₁ V₃ O
  set Q := sarea V₂ V₄ O
  have hid : A * C - B * D = P * Q := by simp only [A, B, C, D, P, Q, sarea]; ring
  have hQ : sarea V₁ V₂ V₃ + sarea V₁ V₃ V₄ = A + B + C + D := by
    simp only [A, B, C, D, sarea]; ring
  rw [hQ]
  have hPQ : s * s ≤ P * Q ∨ P * Q ≤ -(s * s) := by
    rcases hp with hp | hp <;> rcases hq with hq | hq
    · left; nlinarith
    · right; nlinarith
    · right; nlinarith
    · left; nlinarith
  have hr2 : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  have hr20 : 0 ≤ Real.sqrt 2 := Real.sqrt_nonneg 2
  rcases hPQ with h | h
  · have hac : 2 * Real.sqrt 2 * s ≤ A + C := by
      have : (2 * Real.sqrt 2 * s) ^ 2 ≤ (A + C) ^ 2 := by
        rw [mul_pow, mul_pow, hr2]; nlinarith [sq_nonneg (A - C)]
      exact le_of_sq_le_sq this (by linarith)
    linarith
  · have hbd : 2 * Real.sqrt 2 * s ≤ B + D := by
      have : (2 * Real.sqrt 2 * s) ^ 2 ≤ (B + D) ^ 2 := by
        rw [mul_pow, mul_pow, hr2]; nlinarith [sq_nonneg (B - D)]
      exact le_of_sq_le_sq this (by linarith)
    linarith

/-- `minTriangleArea_le_of_not_inPolygon` in the corner at the origin: if `O` is weakly on the corner side of `AB`, the
minimum triangle area is at most `(5-2√6)/2`. -/
theorem minTriangleArea_le_of_corner_side {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O)
    (hc : sarea (octagon a b c d e f g h 0) (octagon a b c d e f g h 1) O ≤ 0) :
    minTriangleArea (eightConfig a b c d e f g h O) ≤ (5 - 2 * Real.sqrt 6) / 2 := by
  obtain ⟨x, y⟩ := O
  obtain ⟨hx0, hx1, hy0, hy1⟩ := hO
  have hs6 := sqrt_six_bounds
  set t := minTriangleArea (eightConfig a b c d e f g h (x, y)) with htdef
  rcases (minTriangleArea_nonneg (eightConfig a b c d e f g h (x, y))).eq_or_lt with h0 | ht
  · rw [htdef, ← h0]
    nlinarith [Real.sqrt_nonneg 6, Real.sq_sqrt (show (0:ℝ) ≤ 6 by norm_num)]
  have hm : t ≤ minTriangleArea (eightConfig a b c d e f g h (x, y)) := le_rfl
  obtain ⟨b1, b2, b3, b4, b5, b6, b7, b8⟩ := budgets hA ht (hm.trans (min_le_oct _ _ _ _ _ _ _ _ _))
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩ := hA
  have hAHO := sarea_le_of_nonpos ht (p := (0, a)) (q := (0, h)) (r := (x, y))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 0 7 8)
  have hBCO := two_mul_le_sarea_of_nonneg ht (p := (b, 0)) (q := (c, 0)) (r := (x, y))
    (by simp only [sarea]; nlinarith) (area_of_le_min hm 1 2 8)
  change sarea (0, a) (b, 0) (x, y) ≤ 0 at hc
  simp only [sarea] at hAHO hBCO hc
  have hL : 0 < h - a := by linarith
  have hB : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hT : 0 < f - g := by linarith
  have := corner_core (s := 2 * t) (a := a) (b := b) (x := x) (y := y) (by linarith) h1 h4 hL hB
    hR hT (div_mul_self' hL) (div_mul_self' hB) (div_mul_self' hR) (div_mul_self' hT)
    (by linarith) (by linarith) (by linarith)
    (by linarith [div_le_of_le_mul' hT b7])
    (by linarith [div_le_of_le_mul' hR b4])
    (by linarith [div_le_of_le_mul' hB b3, div_le_of_le_mul' hT b6])
    (by linarith [div_le_of_le_mul' hR b5, div_le_of_le_mul' hL b8])
  linarith

/-- `minTriangleArea_lt_of_side_quad` for the quadrilateral `ABCD`: if `O` is in the closed quadrilateral `ABCD`, the
minimum triangle area is less than `7/128`. -/
theorem minTriangleArea_lt_of_side_quad_ABCD {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hq : InClosedPolygon ![(0, a), (b, 0), (c, 0), (1, d)] O) :
    minTriangleArea (eightConfig a b c d e f g h O) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  set t := minTriangleArea (eightConfig a b c d e f g h O) with htdef
  have ht : 0 < t := by linarith
  have hm : t ≤ minTriangleArea (eightConfig a b c d e f g h O) := le_rfl
  obtain ⟨b1, b2, b3, b4, b5, b6, b7, b8⟩ := budgets hA ht (hm.trans (min_le_oct _ _ _ _ _ _ _ _ _))
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩ := hA
  have hsub : (2 * t) / 2 ≤ minTriangleArea ![(0, a), (b, 0), (c, 0), (1, d), O] := by
    have := le_min_comp (by norm_num) (eightConfig a b c d e f g h O)
      (f := ![0, 1, 2, 3, 8]) (by decide)
    have e : eightConfig a b c d e f g h O ∘ ![0, 1, 2, 3, 8] =
        ![(0, a), (b, 0), (c, 0), (1, d), O] := by
      funext i; fin_cases i <;> rfl
    rw [e] at this; linarith
  have hL3 := quadrilateral_area_ge_aux (by linarith : 0 < 2 * t) hq hsub
  simp only [sarea] at hL3
  set s := 2 * t with hs
  have hL : 0 < h - a := by linarith
  have hB : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hT : 0 < f - g := by linarith
  set uL := s / (h - a)
  set uR := s / (e - d)
  set uT := s / (f - g)
  have huL : uL * (h - a) = s := div_mul_self' hL
  have huR : uR * (e - d) = s := div_mul_self' hR
  have huT : uT * (f - g) = s := div_mul_self' hT
  have c1 : uL ≤ b := div_le_of_le_mul' hL b1
  have c4 : uR ≤ 1 - c := div_le_of_le_mul' hR b4
  have c5 : uR ≤ 1 - f := div_le_of_le_mul' hR b5
  have c6 : uT ≤ 1 - e := div_le_of_le_mul' hT b6
  have c7 : uT ≤ 1 - h := div_le_of_le_mul' hT b7
  have c8 : uL ≤ g := div_le_of_le_mul' hL b8
  have hsZ : s * (1 / (h - a) + 1 / (e - d)) = uL + uR := by
    simp only [uL, uR]; ring
  -- `Q ≤ (1 - uT)(2 - sZ) - X + 2s`
  have hQ1 : a * (1 - b) + c * d ≤ (1 - uT) * (2 - (uL + uR)) - ((h - a) + (e - d)) + 2 * s := by
    have e1 : a * (1 - b) ≤ (1 - uT - (h - a)) * (1 - uL) :=
      mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
    have e2 : c * d ≤ (1 - uR) * (1 - uT - (e - d)) :=
      mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
    linarith only [e1, e2, huL, huR]
  have hTZ : f - g ≤ 1 - (uL + uR) := by linarith
  have hZ1 : 0 < 1 - (uL + uR) := by linarith
  have huT0 : 0 < uT := by positivity
  have hD : s * (2 - (uL + uR)) / (1 - (uL + uR)) ≤ uT * (2 - (uL + uR)) := by
    rw [div_le_iff₀ hZ1]
    have h1 : s ≤ uT * (1 - (uL + uR)) := by nlinarith only [huT, hTZ, huT0]
    nlinarith only [mul_le_mul_of_nonneg_right h1 (by linarith : (0 : ℝ) ≤ 2 - (uL + uR))]
  have hQ : 2 * (1 + Real.sqrt 2) * s ≤ 2 - s * (1 / (h - a) + 1 / (e - d)) -
      s * (2 - s * (1 / (h - a) + 1 / (e - d))) / (1 - s * (1 / (h - a) + 1 / (e - d))) -
      ((h - a) + (e - d)) + 2 * s := by
    rw [hsZ]; linarith only [hL3, hQ1, hD]
  have hXZ : 4 ≤ ((h - a) + (e - d)) * (1 / (h - a) + 1 / (e - d)) := by
    rw [div_add_div _ _ hL.ne' hR.ne', mul_div_assoc', le_div_iff₀ (by positivity)]
    nlinarith [sq_nonneg ((h - a) - (e - d))]
  have := scalar_bound_core (by linarith : 0 < s) (by linarith : 0 < (h - a) + (e - d))
    (by rw [hsZ]; linarith) hXZ hQ
  linarith

end Heilbronn.Nine.EightBoundary
