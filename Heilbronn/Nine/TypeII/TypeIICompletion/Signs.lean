module

public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle
public import Heilbronn.Nine.Corners.CornerFamilies.SixPoint
public import Heilbronn.Common.TwoInteriorPoints

/-! # Sign tools for the Type-II completion

General facts about signed areas used by the modules of `Heilbronn.Nine.TypeII.TypeIICompletion`:

* `tc_sarea_bary`: the barycentric identity `[ABC]·f(X) = [BCX] f(A) + [CAX] f(B) + [ABX] f(C)` for
  the affine function `f = [YZ·]`;
* `tc_pos_of_inTri`, `tc_neg_of_inTri`: an affine function nonnegative at the vertices of a triangle
  and positive at one of them is positive at every interior point;
* `tc_two_int`: the two-interior-point lemma in doubled signed form.

Closed triangles given by `convexHull` are in `Heilbronn/Common/Plane.lean`; sub-configurations
(`min_sub'`) and signed bounds from the least area (`sarea_ge_of_le_min_of_pos`) are in
`Heilbronn/Common/Config.lean`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeIICompletion

open Heilbronn.Nine.TypeII

/-- The barycentric identity for the affine function `X ↦ [YZX]`. -/
theorem tc_sarea_bary (A B C X Y Z : Point) :
    sarea A B C * sarea Y Z X =
      sarea B C X * sarea Y Z A + sarea C A X * sarea Y Z B + sarea A B X * sarea Y Z C := by
  unfold sarea; ring

/-- An affine function `[YZ·]` that is nonnegative at the three vertices, and not zero at all of
them, is positive at every interior point. -/
theorem tc_pos_of_inTri {X A B C Y Z : Point} (h : InTriangle X A B C)
    (hA : 0 ≤ sarea Y Z A) (hB : 0 ≤ sarea Y Z B) (hC : 0 ≤ sarea Y Z C)
    (hpos : 0 < sarea Y Z A + sarea Y Z B + sarea Y Z C) : 0 < sarea Y Z X := by
  by_contra hX
  push Not at hX
  have hΔ := inTri_pos h
  have key := tc_sarea_bary A B C X Y Z
  obtain ⟨h1, h2, h3⟩ := h
  have e1 := mul_nonneg h2.le hA
  have e2 := mul_nonneg h3.le hB
  have e3 := mul_nonneg h1.le hC
  have e0 : sarea A B C * sarea Y Z X ≤ 0 := mul_nonpos_of_nonneg_of_nonpos hΔ.le hX
  have z1 : sarea B C X * sarea Y Z A = 0 := by linarith
  have z2 : sarea C A X * sarea Y Z B = 0 := by linarith
  have z3 : sarea A B X * sarea Y Z C = 0 := by linarith
  have a1 : sarea Y Z A = 0 := (mul_eq_zero.1 z1).resolve_left h2.ne'
  have a2 : sarea Y Z B = 0 := (mul_eq_zero.1 z2).resolve_left h3.ne'
  have a3 : sarea Y Z C = 0 := (mul_eq_zero.1 z3).resolve_left h1.ne'
  linarith

/-- The mirror form of `tc_pos_of_inTri`. -/
theorem tc_neg_of_inTri {X A B C Y Z : Point} (h : InTriangle X A B C)
    (hA : sarea Y Z A ≤ 0) (hB : sarea Y Z B ≤ 0) (hC : sarea Y Z C ≤ 0)
    (hneg : sarea Y Z A + sarea Y Z B + sarea Y Z C < 0) : sarea Y Z X < 0 := by
  have := tc_pos_of_inTri (Y := Z) (Z := Y) h (by rw [sarea_swap₁₂]; linarith)
    (by rw [sarea_swap₁₂]; linarith) (by rw [sarea_swap₁₂]; linarith)
    (by rw [sarea_swap₁₂, sarea_swap₁₂ Y Z B, sarea_swap₁₂ Y Z C]; linarith)
  rw [sarea_swap₁₂] at this
  linarith

/-! ### Constants -/

theorem tc_sqrt3_sq : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)

theorem tc_sqrt3_gt : (1732 / 1000 : ℝ) < Real.sqrt 3 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

theorem tc_sqrt3_lt : Real.sqrt 3 < 17321 / 10000 := by
  rw [Real.sqrt_lt' (by norm_num)]; norm_num

/-- `K = 4 + 2√3 ∈ (7.464, 7.4642)`. -/
theorem tc_Ktwo_bounds : (7464 / 1000 : ℝ) < Ktwo ∧ Ktwo < 74642 / 10000 := by
  unfold Ktwo; constructor <;> linarith [tc_sqrt3_gt, tc_sqrt3_lt]

/-- `K · 7/64 > 13/16`. -/
theorem tc_Ks_gt : (13 / 16 : ℝ) < Ktwo * (7 / 64) := by
  linarith [tc_Ktwo_bounds.1]

/-- The two-interior-point lemma `twoInteriorPointLemma` in doubled signed form: a
counterclockwise triangle containing two points strictly inside, with every doubled area of the
five points at least `s > 0`, has doubled area at least `K s`. -/
theorem tc_two_int {A B C P Q : Point} {s : ℝ} (hs : 0 < s) (hP : InTriangle P A B C)
    (hQ : InTriangle Q A B C) (hmin : s / 2 ≤ minTriangleArea ![A, B, C, P, Q]) :
    Ktwo * s ≤ sarea A B C := by
  have := twoInteriorPointLemma A B C P Q (Or.inl hP) (Or.inl hQ) (s / 2)
    (by positivity) hmin
  rw [triangleArea_eq, abs_of_pos (inTri_pos hP)] at this
  unfold Ktwo; linarith

/-- Angular order around `O` for points below `O`: `X → Y → Z` counterclockwise gives
`X → Z` counterclockwise. -/
theorem tc_ccw_trans {O X Y Z : Point} (hX : X.2 < O.2) (hY : Y.2 < O.2) (hZ : Z.2 < O.2)
    (h1 : 0 < sarea O X Y) (h2 : 0 < sarea O Y Z) : 0 < sarea O X Z := by
  have e : sarea O X Z * (Y.2 - O.2) =
      sarea O Y Z * (X.2 - O.2) + sarea O X Y * (Z.2 - O.2) := by unfold sarea; ring
  by_contra hcon
  push Not at hcon
  nlinarith [mul_pos h2 (show 0 < O.2 - X.2 by linarith),
    mul_pos h1 (show 0 < O.2 - Z.2 by linarith),
    mul_nonneg (show 0 ≤ -sarea O X Z by linarith) (show 0 ≤ O.2 - Y.2 by linarith)]

end Heilbronn.Nine.TypeIICompletion
