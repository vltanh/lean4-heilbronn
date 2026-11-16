module

public import Heilbronn.Nine.Corners.CornerFamilies.Interior

/-! # Corner families: stars, seven points with a triangular hull, `≥ 4` upper points

Part of `Heilbronn.Nine.Corners.CornerFamilies`. This part proves the area identities of stars of
degree four and five, the area bound for seven points with a triangular convex hull, the Type-III
exclusion for at least four upper points, and the global triangle-occupancy corollary.

Definitions (shared by all parts of `CornerFamilies`, and used elsewhere):

* `ConvexQuad A B C D` (counterclockwise convex position), `InQuad X A B C D` (strictly inside);
* `sevenConfig A B C X`: the seven points `A, B, C, X 0, …, X 3`;
* `freeSix`, `upperCount`: the six free points of a Type-III configuration and the number of them
  above the diagonal `y = x`.

`InsideTriangle` is defined in `Heilbronn/Common/Config.lean`, `InClosedTriangle` in
`CornerFamilies/Interior.lean`.

**Results.** The star identities `star4_identity`, `star5_identity` and the degree-four star bound `star4_core`;
`triangularHullLemma` (seven points with a triangular hull), proved without planar triangulations
from `star4_core`, `twoInteriorPointLemma` and `sixPointTriangularHullTheorem` (`flip_exists`,
`flip0`, `two_fan_case`, `seven_core`); `typeIII_ge4upper`; `triangleArea_le_half_of_mem_unitSquare`,
`globalOccupancyCorollary`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.CornerFamilies

/-! ### Shared notions -/

/-- `A, B, C, D` are in convex position, in counterclockwise order. -/
def ConvexQuad (A B C D : Point) : Prop :=
  0 < sarea A B C ∧ 0 < sarea B C D ∧ 0 < sarea C D A ∧ 0 < sarea D A B

/-- `X` lies strictly inside the counterclockwise quadrilateral `ABCD`. -/
def InQuad (X A B C D : Point) : Prop :=
  0 < sarea A B X ∧ 0 < sarea B C X ∧ 0 < sarea C D X ∧ 0 < sarea D A X

/-- The seven points `A, B, C, X 0, X 1, X 2, X 3`. -/
def sevenConfig (A B C : Point) (X : Fin 4 → Point) : Fin 7 → Point :=
  ![A, B, C, X 0, X 1, X 2, X 3]

/-- The six free points of a Type-III configuration `typeIIIConfig U V W X Y Z`. -/
def freeSix (U V W X Y Z : Point) : Fin 6 → Point := ![U, V, W, X, Y, Z]

/-- The number of free points of a Type-III configuration strictly above the diagonal `y = x`
(the "upper" points). -/
def upperCount (U V W X Y Z : Point) : ℕ :=
  {i : Fin 6 | (freeSix U V W X Y Z i).1 < (freeSix U V W X Y Z i).2}.ncard

/-! ### Stars of degree four and five -/

/-- **Star identity, degree four**: for a centre `O` and four points `V₁, …, V₄`, with
`a_i = [O V_i V_{i+1}]`, `b = [O V₁ V₃]` and `c = [O V₂ V₄]`, `b c = a₁a₃ - a₂a₄` (doubled
signed areas, any signs). -/
theorem star4_identity (O : Point) (V : Fin 4 → Point) :
    sarea O (V 0) (V 2) * sarea O (V 1) (V 3) =
      sarea O (V 0) (V 1) * sarea O (V 2) (V 3) - sarea O (V 1) (V 2) * sarea O (V 3) (V 0) := by
  unfold sarea; ring

/-- **Star identity, degree five**: for a centre `O`, five points and every cyclic index `i`,
`b_i b_{i+1} + a_{i+1} b_{i+3} = a_i a_{i+2}` with `a_i = [O V_i V_{i+1}]` and
`b_i = [O V_i V_{i+2}]` (doubled signed areas). -/
theorem star5_identity (O : Point) (V : Fin 5 → Point) (i : Fin 5) :
    sarea O (V i) (V (i + 2)) * sarea O (V (i + 1)) (V (i + 3)) +
        sarea O (V (i + 1)) (V (i + 2)) * sarea O (V (i + 3)) (V i) =
      sarea O (V i) (V (i + 1)) * sarea O (V (i + 2)) (V (i + 3)) := by
  unfold sarea; ring

/-- Two positive numbers with product at least `2s²` add up to at least `2√2 s`. -/
theorem sum_ge_of_prod {x y s : ℝ} (hx : 0 ≤ x) (hy : 0 ≤ y) (hs : 0 ≤ s)
    (h : 2 * s ^ 2 ≤ x * y) : 2 * Real.sqrt 2 * s ≤ x + y := by
  have h2 : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  by_contra hc
  push Not at hc
  have h0 : 0 ≤ 2 * Real.sqrt 2 * s := by positivity
  have : (x + y) ^ 2 < (2 * Real.sqrt 2 * s) ^ 2 := by
    apply pow_lt_pow_left₀ hc (by positivity) (by norm_num)
  nlinarith [sq_nonneg (x - y)]

/-- The degree-four star bound in doubled form: four positive faces at least `s` whose two
diagonal areas `b, c` satisfy `|b|, |c| ≥ s` and the identity of `star4_identity` add up to `(2 + 2√2)s`. -/
theorem star4_core {a₀ a₁ a₂ a₃ b c s : ℝ} (hs : 0 < s) (h₀ : s ≤ a₀) (h₁ : s ≤ a₁)
    (h₂ : s ≤ a₂) (h₃ : s ≤ a₃) (hb : s ≤ |b|) (hc : s ≤ |c|) (h : b * c = a₀ * a₂ - a₁ * a₃) :
    (2 + 2 * Real.sqrt 2) * s ≤ a₀ + a₁ + a₂ + a₃ := by
  have hbc : s * s ≤ |b * c| := by rw [abs_mul]; exact mul_le_mul hb hc hs.le (abs_nonneg _)
  have p02 : s * s ≤ a₀ * a₂ := mul_le_mul h₀ h₂ hs.le (by linarith)
  have p13 : s * s ≤ a₁ * a₃ := mul_le_mul h₁ h₃ hs.le (by linarith)
  rcases le_or_gt 0 (b * c) with hp | hn
  · rw [abs_of_nonneg hp] at hbc
    have := sum_ge_of_prod (by linarith : 0 ≤ a₀) (by linarith : 0 ≤ a₂) hs.le (by nlinarith)
    linarith
  · rw [abs_of_neg hn] at hbc
    have := sum_ge_of_prod (by linarith : 0 ≤ a₁) (by linarith : 0 ≤ a₃) hs.le (by nlinarith)
    linarith

/-! ### Seven points with a triangular convex hull

The proof uses no planar triangulations (Mathlib has none): fix one interior point `Y` and split
on how the other three fall into the fan triangles `ABY, BCY, CAY`:

* three in one fan triangle: `sixPointTriangularHullTheorem` on it, `Γ + 2 > 7 + 2√2`;
* two in one, one in another: `twoInteriorPointLemma` and the three subtriangles,
  `(4 + 2√3) + 3 + 1`;
* one in each (`Z₁ ∈ ABY`, `Z₂ ∈ BCY`, `Z₃ ∈ CAY`): some edge `YB` (or `YC`, `YA`) is
  flippable, `[YZ₁Z₂] > 0` (`flip_exists`: the three angles at `Y` add up to `2π`); after the
  flip `Z₁` has degree four with faces `Z₁AB, Z₁BZ₂, Z₁Z₂Y, Z₁YA`, and the degree-four star
  bound plus five more faces give `(2 + 2√2) + 5` (`flip0`). -/

/-- One interior point in each fan triangle: some edge `YA, YB, YC` is flippable, that is, one of
the three consecutive angles at `Y` is below `π` (in signs: `[YZ₁Z₂] > 0`, `[YZ₂Z₃] > 0` or
`[YZ₃Z₁] > 0`). -/
theorem flip_exists {A B C Y Z₁ Z₂ Z₃ : Point} (hY : InTriangle Y A B C)
    (h1 : InTriangle Z₁ A B Y) (h2 : InTriangle Z₂ B C Y) (h3 : InTriangle Z₃ C A Y) :
    0 < sarea Y Z₁ Z₂ ∨ 0 < sarea Y Z₂ Z₃ ∨ 0 < sarea Y Z₃ Z₁ := by
  by_contra hcon
  push Not at hcon
  obtain ⟨n1, n2, n3⟩ := hcon
  have ha : 0 < sarea Y B C := by rw [← sarea_cycle Y B C]; exact hY.2.1
  have hb : 0 < sarea Y C A := by rw [← sarea_cycle Y C A]; exact hY.2.2
  have hc : 0 < sarea Y A B := by rw [← sarea_cycle Y A B]; exact hY.1
  have hα1 : 0 < sarea Y Z₁ B := by rw [sarea_cycle B Y Z₁]; exact h1.2.1
  have hβ1 : 0 < sarea Y A Z₁ := h1.2.2
  have hα2 : 0 < sarea Y Z₂ C := by rw [sarea_cycle C Y Z₂]; exact h2.2.1
  have hβ2 : 0 < sarea Y B Z₂ := h2.2.2
  have hα3 : 0 < sarea Y Z₃ A := by rw [sarea_cycle A Y Z₃]; exact h3.2.1
  have hβ3 : 0 < sarea Y C Z₃ := h3.2.2
  have e1 : sarea Y Z₁ Z₂ * sarea Y A B * sarea Y B C =
      sarea Y Z₁ B * sarea Y Z₂ C * sarea Y A B - sarea Y Z₁ B * sarea Y B Z₂ * sarea Y C A +
        sarea Y A Z₁ * sarea Y B Z₂ * sarea Y B C := by unfold sarea; ring
  have e2 : sarea Y Z₂ Z₃ * sarea Y B C * sarea Y C A =
      sarea Y Z₂ C * sarea Y Z₃ A * sarea Y B C - sarea Y Z₂ C * sarea Y C Z₃ * sarea Y A B +
        sarea Y B Z₂ * sarea Y C Z₃ * sarea Y C A := by unfold sarea; ring
  have e3 : sarea Y Z₃ Z₁ * sarea Y C A * sarea Y A B =
      sarea Y Z₃ A * sarea Y Z₁ B * sarea Y C A - sarea Y Z₃ A * sarea Y A Z₁ * sarea Y B C +
        sarea Y C Z₃ * sarea Y A Z₁ * sarea Y A B := by unfold sarea; ring
  set a := sarea Y B C
  set b := sarea Y C A
  set c := sarea Y A B
  set α1 := sarea Y Z₁ B
  set β1 := sarea Y A Z₁
  set α2 := sarea Y Z₂ C
  set β2 := sarea Y B Z₂
  set α3 := sarea Y Z₃ A
  set β3 := sarea Y C Z₃
  have l1 : α1 * α2 * c + β1 * β2 * a ≤ α1 * β2 * b := by
    have : sarea Y Z₁ Z₂ * c * a ≤ 0 :=
      mul_nonpos_of_nonpos_of_nonneg (mul_nonpos_of_nonpos_of_nonneg n1 hc.le) ha.le
    linarith
  have l2 : α2 * α3 * a + β2 * β3 * b ≤ α2 * β3 * c := by
    have : sarea Y Z₂ Z₃ * a * b ≤ 0 :=
      mul_nonpos_of_nonpos_of_nonneg (mul_nonpos_of_nonpos_of_nonneg n2 ha.le) hb.le
    linarith
  have l3 : α3 * α1 * b + β3 * β1 * c ≤ α3 * β1 * a := by
    have : sarea Y Z₃ Z₁ * b * c ≤ 0 :=
      mul_nonpos_of_nonpos_of_nonneg (mul_nonpos_of_nonpos_of_nonneg n3 hb.le) hc.le
    linarith
  have L1 : 0 ≤ α1 * α2 * c + β1 * β2 * a := by positivity
  have L2 : 0 ≤ α2 * α3 * a + β2 * β3 * b := by positivity
  have L3 : 0 ≤ α3 * α1 * b + β3 * β1 * c := by positivity
  have hprod := mul_le_mul (mul_le_mul l1 l2 L2 (by positivity)) l3 L3 (by positivity)
  have hexp : (α1 * α2 * c + β1 * β2 * a) * (α2 * α3 * a + β2 * β3 * b) *
      (α3 * α1 * b + β3 * β1 * c) =
      (α1 * α2 * α3) ^ 2 * (a * b * c) + (β1 * β2 * β3) ^ 2 * (a * b * c) +
        (α1 * α2 * c * α2 * α3 * a * β3 * β1 * c + α1 * α2 * c * β2 * β3 * b * α3 * α1 * b +
          α1 * α2 * c * β2 * β3 * b * β3 * β1 * c + β1 * β2 * a * α2 * α3 * a * α3 * α1 * b +
          β1 * β2 * a * α2 * α3 * a * β3 * β1 * c + β1 * β2 * a * β2 * β3 * b * α3 * α1 * b) := by
    ring
  have hrest : 0 ≤ α1 * α2 * c * α2 * α3 * a * β3 * β1 * c + α1 * α2 * c * β2 * β3 * b * α3 * α1 * b +
          α1 * α2 * c * β2 * β3 * b * β3 * β1 * c + β1 * β2 * a * α2 * α3 * a * α3 * α1 * b +
          β1 * β2 * a * α2 * α3 * a * β3 * β1 * c + β1 * β2 * a * β2 * β3 * b * α3 * α1 * b := by
    positivity
  have hsq : 0 ≤ (α1 * α2 * α3 - β1 * β2 * β3) ^ 2 * (a * b * c) := by positivity
  have hR : 0 < α1 * β2 * b * (α2 * β3 * c) * (α3 * β1 * a) := by positivity
  nlinarith

/-- The flipped one-per-fan configuration (`[YZ₁Z₂] > 0`): the degree-four star at `Z₁` and five
further faces give `[ABC] ≥ (7 + 2√2)s`, in doubled form (`s = 2t`). -/
theorem flip0 {A B C Y Z₁ Z₂ Z₃ : Point} {t : ℝ} (ht : 0 < t) (hY : InTriangle Y A B C)
    (h1 : InTriangle Z₁ A B Y) (h2 : InTriangle Z₂ B C Y) (h3 : InTriangle Z₃ C A Y)
    (hk : 0 < sarea Y Z₁ Z₂) (hmin : t ≤ minTriangleArea ![A, B, C, Y, Z₁, Z₂, Z₃]) :
    (7 + 2 * Real.sqrt 2) * (2 * t) ≤ sarea A B C := by
  have hs : 0 < 2 * t := by linarith
  have hABY := inTri_pos ⟨h1.1, h1.2.1, h1.2.2⟩
  have hBCY := inTri_pos ⟨h2.1, h2.2.1, h2.2.2⟩
  have hABC := inTri_pos hY
  -- the face `Z₁BZ₂` is positive
  have hf1 : 0 < sarea Z₁ B Z₂ := by
    have e : sarea B Z₁ Z₂ * sarea A B Y * sarea B C Y =
        -(sarea Z₁ B Y * sarea B Z₂ Y * sarea A B C) - sarea Z₁ B Y * sarea B C Z₂ * sarea A B Y -
          sarea A B Z₁ * sarea B Z₂ Y * sarea B C Y := by unfold sarea; ring
    have g1 : 0 < sarea Z₁ B Y := by linarith [h1.2.1, sarea_cycle Z₁ B Y]
    have g2 : 0 < sarea B Z₂ Y := by linarith [h2.2.2, sarea_cycle Y B Z₂]
    have : sarea B Z₁ Z₂ * sarea A B Y * sarea B C Y < 0 := by
      rw [e]; nlinarith [mul_pos (mul_pos g1 g2) hABC, mul_pos (mul_pos g1 h2.1) hABY,
        mul_pos (mul_pos h1.1 g2) hBCY]
    have : sarea B Z₁ Z₂ < 0 := by
      by_contra hc; push Not at hc; nlinarith [mul_nonneg (mul_nonneg hc hABY.le) hBCY.le]
    linarith [sarea_swap₁₂ B Z₁ Z₂]
  have f0 : 2 * t ≤ sarea Z₁ A B := ge_of_pos ht (area_of_le_min hmin 4 0 1)
    (by rw [← sarea_cycle Z₁ A B]; exact h1.1)
  have f1 : 2 * t ≤ sarea Z₁ B Z₂ := ge_of_pos ht (area_of_le_min hmin 4 1 5) hf1
  have f2 : 2 * t ≤ sarea Z₁ Z₂ Y := ge_of_pos ht (area_of_le_min hmin 4 5 3)
    (by rw [sarea_cycle Y Z₁ Z₂]; exact hk)
  have f3 : 2 * t ≤ sarea Z₁ Y A := ge_of_pos ht (area_of_le_min hmin 4 3 0)
    (by rw [sarea_cycle A Z₁ Y, sarea_cycle Y A Z₁]; exact h1.2.2)
  have hb : 2 * t ≤ |sarea Z₁ A Z₂| := two_le_abs (area_of_le_min hmin 4 0 5)
  have hc : 2 * t ≤ |sarea Z₁ B Y| := two_le_abs (area_of_le_min hmin 4 1 3)
  have id3 : sarea Z₁ A Z₂ * sarea Z₁ B Y =
      sarea Z₁ A B * sarea Z₁ Z₂ Y - sarea Z₁ B Z₂ * sarea Z₁ Y A := by unfold sarea; ring
  have star := star4_core hs f0 f1 f2 f3 hb hc id3
  have g1 : 2 * t ≤ sarea B C Z₂ := ge_of_pos ht (area_of_le_min hmin 1 2 5) h2.1
  have g2 : 2 * t ≤ sarea C Y Z₂ := ge_of_pos ht (area_of_le_min hmin 2 3 5) h2.2.1
  have g3 : 2 * t ≤ sarea C A Z₃ := ge_of_pos ht (area_of_le_min hmin 2 0 6) h3.1
  have g4 : 2 * t ≤ sarea A Y Z₃ := ge_of_pos ht (area_of_le_min hmin 0 3 6) h3.2.1
  have g5 : 2 * t ≤ sarea Y C Z₃ := ge_of_pos ht (area_of_le_min hmin 3 2 6) h3.2.2
  have tiling : sarea A B C = sarea Z₁ A B + sarea Z₁ B Z₂ + sarea Z₁ Z₂ Y + sarea Z₁ Y A +
      sarea B C Z₂ + sarea C Y Z₂ + sarea C A Z₃ + sarea A Y Z₃ + sarea Y C Z₃ := by
    unfold sarea; ring
  linarith

/-- One interior point in each fan triangle of `Y`: `[ABC] ≥ (7 + 2√2)s`, in doubled form. -/
theorem flip_case {A B C Y Z₁ Z₂ Z₃ : Point} {t : ℝ} (ht : 0 < t) (hY : InTriangle Y A B C)
    (h1 : InTriangle Z₁ A B Y) (h2 : InTriangle Z₂ B C Y) (h3 : InTriangle Z₃ C A Y)
    (hmin : t ≤ minTriangleArea ![A, B, C, Y, Z₁, Z₂, Z₃]) :
    (7 + 2 * Real.sqrt 2) * (2 * t) ≤ sarea A B C := by
  have cyc1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have cyc2 : sarea C A B = sarea A B C := (sarea_cycle B C A).trans cyc1
  rcases flip_exists hY h1 h2 h3 with hk | hk | hk
  · exact flip0 ht hY h1 h2 h3 hk hmin
  · have := flip0 (A := B) (B := C) (C := A) (Z₁ := Z₂) (Z₂ := Z₃) (Z₃ := Z₁) ht (inTri_rot hY)
      h2 h3 h1 hk (min_sub hmin ![B, C, A, Y, Z₂, Z₃, Z₁] ![1, 2, 0, 3, 5, 6, 4] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := flip0 (A := C) (B := A) (C := B) (Z₁ := Z₃) (Z₂ := Z₁) (Z₃ := Z₂) ht
      (inTri_rot (inTri_rot hY)) h3 h1 h2 hk (min_sub hmin ![C, A, B, Y, Z₃, Z₁, Z₂]
        ![2, 0, 1, 3, 6, 4, 5] (by norm_num) (by decide) (by intro i; fin_cases i <;> simp))
    linarith

/-- Two of the other interior points in the fan triangle `ABY`: `[ABC] ≥ (7 + 2√2)s`, in doubled
form. -/
theorem two_fan_case {A B C Y P Q R : Point} {t : ℝ} (ht : 0 < t) (hY : InTriangle Y A B C)
    (hP : InTriangle P A B Y) (hQ : InTriangle Q A B Y) (hR : InTriangle R A B C)
    (hmin : t ≤ minTriangleArea ![A, B, C, Y, P, Q, R]) :
    (7 + 2 * Real.sqrt 2) * (2 * t) ≤ sarea A B C := by
  have e := sarea_add_sarea_add_sarea A B C Y
  have hs2 := sqrt2_lt
  have hs3 := sqrt3_gt
  have hs5 := sqrt5_gt
  rcases fan_cases hY hR (sarea_ne_of ht (area_of_le_min hmin 3 0 6))
      (sarea_ne_of ht (area_of_le_min hmin 3 1 6)) (sarea_ne_of ht (area_of_le_min hmin 3 2 6))
    with hR' | hR' | hR'
  · have := six_core ht hP hQ hR' (min_sub hmin ![A, B, Y, P, Q, R] ![0, 1, 3, 4, 5, 6]
      (by norm_num) (by decide) (by intro i; fin_cases i <;> simp))
    have g1 : 2 * t ≤ sarea B C Y := ge_of_pos ht (area_of_le_min hmin 1 2 3) hY.2.1
    have g2 : 2 * t ≤ sarea C A Y := ge_of_pos ht (area_of_le_min hmin 2 0 3) hY.2.2
    nlinarith
  · have := two_ccw ht hP hQ (min_sub hmin ![A, B, Y, P, Q] ![0, 1, 3, 4, 5]
      (by norm_num) (by decide) (by intro i; fin_cases i <;> simp))
    have g1 : 2 * t ≤ sarea B C R := ge_of_pos ht (area_of_le_min hmin 1 2 6) hR'.1
    have g2 : 2 * t ≤ sarea C Y R := ge_of_pos ht (area_of_le_min hmin 2 3 6) hR'.2.1
    have g3 : 2 * t ≤ sarea Y B R := ge_of_pos ht (area_of_le_min hmin 3 1 6) hR'.2.2
    have g4 : 2 * t ≤ sarea C A Y := ge_of_pos ht (area_of_le_min hmin 2 0 3) hY.2.2
    have e2 := sarea_add_sarea_add_sarea B C Y R
    nlinarith
  · have := two_ccw ht hP hQ (min_sub hmin ![A, B, Y, P, Q] ![0, 1, 3, 4, 5]
      (by norm_num) (by decide) (by intro i; fin_cases i <;> simp))
    have g1 : 2 * t ≤ sarea C A R := ge_of_pos ht (area_of_le_min hmin 2 0 6) hR'.1
    have g2 : 2 * t ≤ sarea A Y R := ge_of_pos ht (area_of_le_min hmin 0 3 6) hR'.2.1
    have g3 : 2 * t ≤ sarea Y C R := ge_of_pos ht (area_of_le_min hmin 3 2 6) hR'.2.2
    have g4 : 2 * t ≤ sarea B C Y := ge_of_pos ht (area_of_le_min hmin 1 2 3) hY.2.1
    have e2 := sarea_add_sarea_add_sarea C A Y R
    nlinarith

/-- The seven-point bound `[ABC] ≥ (7 + 2√2)s` in doubled form, when `P₁` lies in the fan
triangle `ABY` of the interior point `Y`. -/
theorem seven_core_0 {A B C Y P₁ P₂ P₃ : Point} {t : ℝ} (ht : 0 < t)
    (hY : InTriangle Y A B C) (hX1 : InTriangle P₁ A B C) (hX2 : InTriangle P₂ A B C)
    (hX3 : InTriangle P₃ A B C) (hm : t ≤ minTriangleArea ![A, B, C, Y, P₁, P₂, P₃])
    (h1 : InTriangle P₁ A B Y) :
    (7 + 2 * Real.sqrt 2) * (2 * t) ≤ sarea A B C := by
  have cyc1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have cyc2 : sarea C A B = sarea A B C := (sarea_cycle B C A).trans cyc1
  rcases fan_cases hY hX2 (sarea_ne_of ht (area_of_le_min hm 3 0 5))
      (sarea_ne_of ht (area_of_le_min hm 3 1 5)) (sarea_ne_of ht (area_of_le_min hm 3 2 5))
    with h2 | h2 | h2 <;>
  rcases fan_cases hY hX3 (sarea_ne_of ht (area_of_le_min hm 3 0 6))
      (sarea_ne_of ht (area_of_le_min hm 3 1 6)) (sarea_ne_of ht (area_of_le_min hm 3 2 6))
    with h3 | h3 | h3
  · have := two_fan_case (A := A) (B := B) (C := C) ht hY h1 h2 hX3
      (min_sub' hm ![A, B, C, Y, P₁, P₂, P₃] ![0, 1, 2, 3, 4, 5, 6] ![0, 1, 2, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := A) (B := B) (C := C) ht hY h1 h2 hX3
      (min_sub' hm ![A, B, C, Y, P₁, P₂, P₃] ![0, 1, 2, 3, 4, 5, 6] ![0, 1, 2, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := A) (B := B) (C := C) ht hY h1 h2 hX3
      (min_sub' hm ![A, B, C, Y, P₁, P₂, P₃] ![0, 1, 2, 3, 4, 5, 6] ![0, 1, 2, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := A) (B := B) (C := C) ht hY h1 h3 hX2
      (min_sub' hm ![A, B, C, Y, P₁, P₃, P₂] ![0, 1, 2, 3, 4, 6, 5] ![0, 1, 2, 3, 4, 6, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := B) (B := C) (C := A) ht (inTri_rot hY) h2 h3 (inTri_rot hX1)
      (min_sub' hm ![B, C, A, Y, P₂, P₃, P₁] ![1, 2, 0, 3, 5, 6, 4] ![2, 0, 1, 3, 6, 4, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · exact flip_case ht hY h1 h2 h3
      (min_sub' hm ![A, B, C, Y, P₁, P₂, P₃] ![0, 1, 2, 3, 4, 5, 6] ![0, 1, 2, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
  · have := two_fan_case (A := A) (B := B) (C := C) ht hY h1 h3 hX2
      (min_sub' hm ![A, B, C, Y, P₁, P₃, P₂] ![0, 1, 2, 3, 4, 6, 5] ![0, 1, 2, 3, 4, 6, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · exact flip_case ht hY h1 h3 h2
      (min_sub' hm ![A, B, C, Y, P₁, P₃, P₂] ![0, 1, 2, 3, 4, 6, 5] ![0, 1, 2, 3, 4, 6, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
  · have := two_fan_case (A := C) (B := A) (C := B) ht (inTri_rot (inTri_rot hY)) h2 h3 (inTri_rot (inTri_rot hX1))
      (min_sub' hm ![C, A, B, Y, P₂, P₃, P₁] ![2, 0, 1, 3, 5, 6, 4] ![1, 2, 0, 3, 6, 4, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith

/-- The seven-point bound `[ABC] ≥ (7 + 2√2)s` in doubled form, when `P₁` lies in the fan
triangle `BCY` of the interior point `Y`. -/
theorem seven_core_1 {A B C Y P₁ P₂ P₃ : Point} {t : ℝ} (ht : 0 < t)
    (hY : InTriangle Y A B C) (hX1 : InTriangle P₁ A B C) (hX2 : InTriangle P₂ A B C)
    (hX3 : InTriangle P₃ A B C) (hm : t ≤ minTriangleArea ![A, B, C, Y, P₁, P₂, P₃])
    (h1 : InTriangle P₁ B C Y) :
    (7 + 2 * Real.sqrt 2) * (2 * t) ≤ sarea A B C := by
  have cyc1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have cyc2 : sarea C A B = sarea A B C := (sarea_cycle B C A).trans cyc1
  rcases fan_cases hY hX2 (sarea_ne_of ht (area_of_le_min hm 3 0 5))
      (sarea_ne_of ht (area_of_le_min hm 3 1 5)) (sarea_ne_of ht (area_of_le_min hm 3 2 5))
    with h2 | h2 | h2 <;>
  rcases fan_cases hY hX3 (sarea_ne_of ht (area_of_le_min hm 3 0 6))
      (sarea_ne_of ht (area_of_le_min hm 3 1 6)) (sarea_ne_of ht (area_of_le_min hm 3 2 6))
    with h3 | h3 | h3
  · have := two_fan_case (A := A) (B := B) (C := C) ht hY h2 h3 hX1
      (min_sub' hm ![A, B, C, Y, P₂, P₃, P₁] ![0, 1, 2, 3, 5, 6, 4] ![0, 1, 2, 3, 6, 4, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := B) (B := C) (C := A) ht (inTri_rot hY) h1 h3 (inTri_rot hX2)
      (min_sub' hm ![B, C, A, Y, P₁, P₃, P₂] ![1, 2, 0, 3, 4, 6, 5] ![2, 0, 1, 3, 4, 6, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · exact flip_case ht hY h2 h1 h3
      (min_sub' hm ![A, B, C, Y, P₂, P₁, P₃] ![0, 1, 2, 3, 5, 4, 6] ![0, 1, 2, 3, 5, 4, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
  · have := two_fan_case (A := B) (B := C) (C := A) ht (inTri_rot hY) h1 h2 (inTri_rot hX3)
      (min_sub' hm ![B, C, A, Y, P₁, P₂, P₃] ![1, 2, 0, 3, 4, 5, 6] ![2, 0, 1, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := B) (B := C) (C := A) ht (inTri_rot hY) h1 h2 (inTri_rot hX3)
      (min_sub' hm ![B, C, A, Y, P₁, P₂, P₃] ![1, 2, 0, 3, 4, 5, 6] ![2, 0, 1, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := B) (B := C) (C := A) ht (inTri_rot hY) h1 h2 (inTri_rot hX3)
      (min_sub' hm ![B, C, A, Y, P₁, P₂, P₃] ![1, 2, 0, 3, 4, 5, 6] ![2, 0, 1, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · exact flip_case ht hY h3 h1 h2
      (min_sub' hm ![A, B, C, Y, P₃, P₁, P₂] ![0, 1, 2, 3, 6, 4, 5] ![0, 1, 2, 3, 5, 6, 4] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
  · have := two_fan_case (A := B) (B := C) (C := A) ht (inTri_rot hY) h1 h3 (inTri_rot hX2)
      (min_sub' hm ![B, C, A, Y, P₁, P₃, P₂] ![1, 2, 0, 3, 4, 6, 5] ![2, 0, 1, 3, 4, 6, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := C) (B := A) (C := B) ht (inTri_rot (inTri_rot hY)) h2 h3 (inTri_rot (inTri_rot hX1))
      (min_sub' hm ![C, A, B, Y, P₂, P₃, P₁] ![2, 0, 1, 3, 5, 6, 4] ![1, 2, 0, 3, 6, 4, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith

/-- The seven-point bound `[ABC] ≥ (7 + 2√2)s` in doubled form, when `P₁` lies in the fan
triangle `CAY` of the interior point `Y`. -/
theorem seven_core_2 {A B C Y P₁ P₂ P₃ : Point} {t : ℝ} (ht : 0 < t)
    (hY : InTriangle Y A B C) (hX1 : InTriangle P₁ A B C) (hX2 : InTriangle P₂ A B C)
    (hX3 : InTriangle P₃ A B C) (hm : t ≤ minTriangleArea ![A, B, C, Y, P₁, P₂, P₃])
    (h1 : InTriangle P₁ C A Y) :
    (7 + 2 * Real.sqrt 2) * (2 * t) ≤ sarea A B C := by
  have cyc1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have cyc2 : sarea C A B = sarea A B C := (sarea_cycle B C A).trans cyc1
  rcases fan_cases hY hX2 (sarea_ne_of ht (area_of_le_min hm 3 0 5))
      (sarea_ne_of ht (area_of_le_min hm 3 1 5)) (sarea_ne_of ht (area_of_le_min hm 3 2 5))
    with h2 | h2 | h2 <;>
  rcases fan_cases hY hX3 (sarea_ne_of ht (area_of_le_min hm 3 0 6))
      (sarea_ne_of ht (area_of_le_min hm 3 1 6)) (sarea_ne_of ht (area_of_le_min hm 3 2 6))
    with h3 | h3 | h3
  · have := two_fan_case (A := A) (B := B) (C := C) ht hY h2 h3 hX1
      (min_sub' hm ![A, B, C, Y, P₂, P₃, P₁] ![0, 1, 2, 3, 5, 6, 4] ![0, 1, 2, 3, 6, 4, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · exact flip_case ht hY h2 h3 h1
      (min_sub' hm ![A, B, C, Y, P₂, P₃, P₁] ![0, 1, 2, 3, 5, 6, 4] ![0, 1, 2, 3, 6, 4, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
  · have := two_fan_case (A := C) (B := A) (C := B) ht (inTri_rot (inTri_rot hY)) h1 h3 (inTri_rot (inTri_rot hX2))
      (min_sub' hm ![C, A, B, Y, P₁, P₃, P₂] ![2, 0, 1, 3, 4, 6, 5] ![1, 2, 0, 3, 4, 6, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · exact flip_case ht hY h3 h2 h1
      (min_sub' hm ![A, B, C, Y, P₃, P₂, P₁] ![0, 1, 2, 3, 6, 5, 4] ![0, 1, 2, 3, 6, 5, 4] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
  · have := two_fan_case (A := B) (B := C) (C := A) ht (inTri_rot hY) h2 h3 (inTri_rot hX1)
      (min_sub' hm ![B, C, A, Y, P₂, P₃, P₁] ![1, 2, 0, 3, 5, 6, 4] ![2, 0, 1, 3, 6, 4, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := C) (B := A) (C := B) ht (inTri_rot (inTri_rot hY)) h1 h3 (inTri_rot (inTri_rot hX2))
      (min_sub' hm ![C, A, B, Y, P₁, P₃, P₂] ![2, 0, 1, 3, 4, 6, 5] ![1, 2, 0, 3, 4, 6, 5] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := C) (B := A) (C := B) ht (inTri_rot (inTri_rot hY)) h1 h2 (inTri_rot (inTri_rot hX3))
      (min_sub' hm ![C, A, B, Y, P₁, P₂, P₃] ![2, 0, 1, 3, 4, 5, 6] ![1, 2, 0, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := C) (B := A) (C := B) ht (inTri_rot (inTri_rot hY)) h1 h2 (inTri_rot (inTri_rot hX3))
      (min_sub' hm ![C, A, B, Y, P₁, P₂, P₃] ![2, 0, 1, 3, 4, 5, 6] ![1, 2, 0, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith
  · have := two_fan_case (A := C) (B := A) (C := B) ht (inTri_rot (inTri_rot hY)) h1 h2 (inTri_rot (inTri_rot hX3))
      (min_sub' hm ![C, A, B, Y, P₁, P₂, P₃] ![2, 0, 1, 3, 4, 5, 6] ![1, 2, 0, 3, 4, 5, 6] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    linarith

/-- The seven-point bound `[ABC] ≥ (7 + 2√2)s` for a counterclockwise triangle, in doubled form,
by cases on the fan triangle of `X 0` that contains `X 1`. -/
theorem seven_core {A B C : Point} {X : Fin 4 → Point} {t : ℝ} (ht : 0 < t)
    (hX : ∀ i, InTriangle (X i) A B C) (hmin : t ≤ minTriangleArea (sevenConfig A B C X)) :
    (7 + 2 * Real.sqrt 2) * (2 * t) ≤ sarea A B C := by
  have hm : t ≤ minTriangleArea ![A, B, C, X 0, X 1, X 2, X 3] := hmin
  rcases fan_cases (hX 0) (hX 1) (sarea_ne_of ht (area_of_le_min hm 3 0 4))
      (sarea_ne_of ht (area_of_le_min hm 3 1 4)) (sarea_ne_of ht (area_of_le_min hm 3 2 4))
    with h1 | h1 | h1
  · exact seven_core_0 ht (hX 0) (hX 1) (hX 2) (hX 3) hm h1
  · exact seven_core_1 ht (hX 0) (hX 1) (hX 2) (hX 3) hm h1
  · exact seven_core_2 ht (hX 0) (hX 1) (hX 2) (hX 3) hm h1

/-- **Triangular-hull lemma**: seven points whose convex hull is a triangle `ABC` (the other four
strictly inside) and whose triangles all have area at least `t` satisfy
`area(ABC) ≥ (7 + 2√2)t`. (General position follows from `t > 0`; for `t ≤ 0` the bound is
trivial.) The proof is the triangulation-free route of the section docstring. -/
theorem triangularHullLemma (A B C : Point) (X : Fin 4 → Point)
    (hX : ∀ i, InsideTriangle (X i) A B C) (t : ℝ)
    (hmin : t ≤ minTriangleArea (sevenConfig A B C X)) :
    (7 + 2 * Real.sqrt 2) * t ≤ triangleArea A B C := by
  rcases le_or_gt t 0 with ht | ht
  · have : 0 ≤ 7 + 2 * Real.sqrt 2 := by positivity
    nlinarith [triangleArea_nonneg A B C]
  rcases inside_orient (hX 0) (hX 1) with ⟨h0, h1⟩ | ⟨h0, h1⟩ <;>
    rcases inside_orient (hX 0) (hX 2) with ⟨-, h2⟩ | ⟨h0', h2⟩ <;>
    rcases inside_orient (hX 0) (hX 3) with ⟨-, h3⟩ | ⟨h0'', h3⟩ <;>
    try first
        | (exfalso; linarith [inTri_pos h0, inTri_pos h0', sarea_swap₂₃ A B C])
        | (exfalso; linarith [inTri_pos h0, inTri_pos h0'', sarea_swap₂₃ A B C])
        | (exfalso; linarith [inTri_pos h0, inTri_pos h2, sarea_swap₂₃ A B C])
        | (exfalso; linarith [inTri_pos h0, inTri_pos h3, sarea_swap₂₃ A B C])
  · exact half_le (seven_core ht (fun i => by fin_cases i <;> assumption) hmin)
  · rw [← triangleArea_swap₂₃]
    exact half_le (seven_core ht (fun i => by fin_cases i <;> assumption)
      (min_sub hmin (sevenConfig A C B X) ![0, 2, 1, 3, 4, 5, 6] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp [sevenConfig])))

/-! ### At least four upper points -/

/-- Injectivity of an explicit index vector from the pairwise distinctness facts in context. -/
macro "inj_tac" : tactic => `(tactic| (intro x y hxy; fin_cases x <;> fin_cases y <;>
  first | rfl | (simp at hxy; done) |
    (exfalso; simp at hxy; first | exact absurd hxy ‹_› | exact absurd hxy.symm ‹_›)))

/-- The index of the free point `i` in `typeIIIConfig`. -/
def fr (a : Fin 6) : Fin 9 := ⟨a.val + 3, by omega⟩

theorem typeIII_fr (U V W X Y Z : Point) (a : Fin 6) :
    typeIIIConfig U V W X Y Z (fr a) = freeSix U V W X Y Z a := by
  fin_cases a <;> rfl

theorem fr_ne {a b : Fin 6} (h : a ≠ b) : fr a ≠ fr b := by
  intro e; apply h; simp only [fr, Fin.ext_iff] at e; exact Fin.ext (by omega)

theorem fr_ne_small (a : Fin 6) : fr a ≠ 0 ∧ fr a ≠ 1 ∧ fr a ≠ 2 := by
  simp only [fr, ne_eq, Fin.ext_iff]; refine ⟨?_, ?_, ?_⟩ <;> simp

theorem freeSix_mem {U V W X Y Z : Point} (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (a : Fin 6) : freeSix U V W X Y Z a ∈ unitSquare := by
  fin_cases a <;> assumption

/-- A point inside a triangle is none of its vertices. -/
theorem inside_ne {X A B C : Point} (h : InsideTriangle X A B C) : X ≠ A ∧ X ≠ B ∧ X ≠ C := by
  have z1 : ∀ P Q : Point, sarea P Q P = 0 := fun P Q => by unfold sarea; ring
  have z2 : ∀ P Q : Point, sarea P Q Q = 0 := fun P Q => by unfold sarea; ring
  refine ⟨?_, ?_, ?_⟩ <;> rintro rfl <;> rcases h with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ <;>
    simp only [z1, z2, lt_irrefl] at h1 h2 h3

/-- A point inside a triangle makes it nondegenerate. -/
theorem inside_sarea_ne {X A B C : Point} (h : InsideTriangle X A B C) : sarea A B C ≠ 0 := by
  rcases h with h | h
  · exact (inTri_pos h).ne'
  · have := inTri_pos h; rw [sarea_swap₂₃] at this; linarith

/-- In a Type-III configuration of positive least area, an upper free point is strictly inside
`ABC`, `A = (0,0)`, `B = (0,1)`, `C = (1,1)`. -/
theorem upper_inside {U V W X Y Z : Point} (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hpos : 0 < minTriangleArea (typeIIIConfig U V W X Y Z)) (a : Fin 6)
    (hu : (freeSix U V W X Y Z a).1 < (freeSix U V W X Y Z a).2) :
    InTriangle (freeSix U V W X Y Z a) (0, 0) (1, 1) (0, 1) := by
  have hm := freeSix_mem hU hV hW hX hY hZ a
  have n1 := sarea_ne_zero_of_min_pos hpos 0 1 (fr a) (by decide) (fr_ne_small a).2.1.symm
    (fr_ne_small a).1.symm
  have n2 := sarea_ne_zero_of_min_pos hpos 1 2 (fr a) (by decide) (fr_ne_small a).2.2.symm
    (fr_ne_small a).2.1.symm
  rw [typeIII_fr] at n1 n2
  set Q := freeSix U V W X Y Z a
  change sarea (0, 0) (0, 1) Q ≠ 0 at n1
  change sarea (0, 1) (1, 1) Q ≠ 0 at n2
  simp only [sarea] at n1 n2
  obtain ⟨m1, m2, m3, m4⟩ := hm
  refine ⟨?_, ?_, ?_⟩ <;> simp only [sarea]
  · linarith
  · have : Q.2 ≠ 1 := fun h => n2 (by rw [h]; ring)
    have : Q.2 < 1 := lt_of_le_of_ne m4 this
    linarith
  · have : Q.1 ≠ 0 := fun h => n1 (by rw [h]; ring)
    have : 0 < Q.1 := lt_of_le_of_ne m1 (Ne.symm this)
    linarith

/-- **Type-III exclusion, at least four upper points**: a Type-III configuration (corners
`A = (0,0)`, `B = (0,1)`, `C = (1,1)`, six free points of the square) with at least four free
points satisfying `y > x` has minimum area `t ≤ 1/(14 + 4√2) < 1/19 < A₀`. -/
theorem typeIII_ge4upper (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h4 : 4 ≤ upperCount U V W X Y Z) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 1 / (14 + 4 * Real.sqrt 2) ∧
      1 / (14 + 4 * Real.sqrt 2) < 1 / 19 ∧ (1 / 19 : ℝ) < A₀ := by
  have hs2 := sqrt2_gt
  have hd0 : (0 : ℝ) < 14 + 4 * Real.sqrt 2 := by positivity
  refine ⟨?_, by rw [div_lt_div_iff₀ hd0 (by norm_num)]; linarith, by linarith [A₀_bounds.2.2.1]⟩
  set P := typeIIIConfig U V W X Y Z with hPdef
  by_contra hcon
  push Not at hcon
  have hpos : 0 < minTriangleArea P := lt_trans (by positivity) hcon
  set F := freeSix U V W X Y Z
  have h4' : 3 < {i : Fin 6 | (F i).1 < (F i).2}.ncard := by
    have : upperCount U V W X Y Z = {i : Fin 6 | (F i).1 < (F i).2}.ncard := rfl
    omega
  obtain ⟨a, b, c, d, ha, hb, hc, hd, hab, hac, had, hbc, hbd, hcd⟩ :=
    (Set.three_lt_ncard_iff (Set.toFinite _)).1 h4'
  change (F a).1 < (F a).2 at ha
  change (F b).1 < (F b).2 at hb
  change (F c).1 < (F c).2 at hc
  change (F d).1 < (F d).2 at hd
  have hin : ∀ e : Fin 6, (F e).1 < (F e).2 → InsideTriangle (F e) (0, 0) (0, 1) (1, 1) :=
    fun e he => Or.inr (upper_inside hU hV hW hX hY hZ hpos e he)
  have hX' : ∀ i, InsideTriangle (![F a, F b, F c, F d] i) (0, 0) (0, 1) (1, 1) := by
    intro i; fin_cases i
    · exact hin a ha
    · exact hin b hb
    · exact hin c hc
    · exact hin d hd
  have f1 := fr_ne_small a
  have f2 := fr_ne_small b
  have f3 := fr_ne_small c
  have f4 := fr_ne_small d
  have g1 := fr_ne hab
  have g2 := fr_ne hac
  have g3 := fr_ne had
  have g4 := fr_ne hbc
  have g5 := fr_ne hbd
  have g6 := fr_ne hcd
  have hm7 : minTriangleArea P ≤
      minTriangleArea (sevenConfig (0, 0) (0, 1) (1, 1) ![F a, F b, F c, F d]) :=
    min_sub (le_refl _) _ ![0, 1, 2, fr a, fr b, fr c, fr d] (by norm_num)
      (by obtain ⟨f1a, f1b, f1c⟩ := f1; obtain ⟨f2a, f2b, f2c⟩ := f2
          obtain ⟨f3a, f3b, f3c⟩ := f3; obtain ⟨f4a, f4b, f4c⟩ := f4; inj_tac)
      (by intro i; fin_cases i
          · simp [hPdef, sevenConfig, typeIIIConfig]
          · simp [hPdef, sevenConfig, typeIIIConfig]
          · simp [hPdef, sevenConfig, typeIIIConfig]
          · exact (typeIII_fr U V W X Y Z a).symm
          · exact (typeIII_fr U V W X Y Z b).symm
          · exact (typeIII_fr U V W X Y Z c).symm
          · exact (typeIII_fr U V W X Y Z d).symm)
  have h7 := triangularHullLemma _ _ _ _ hX' _ hm7
  have harea : triangleArea ((0 : ℝ), (0 : ℝ)) (0, 1) (1, 1) = 1 / 2 := by
    simp only [triangleArea_eq, sarea]; norm_num
  rw [harea] at h7
  rw [div_lt_iff₀ hd0] at hcon
  nlinarith

/-! ### The global triangle-occupancy corollary -/

/-- A triangle with vertices in the unit square has area at most `1/2` (the doubled signed area is
`x_P(y_Q - y_R) + x_Q(y_R - y_P) + x_R(y_P - y_Q)`, at most the sum of its positive
coefficients). -/
theorem triangleArea_le_half_of_mem_unitSquare (P Q R : Point) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hR : R ∈ unitSquare) : triangleArea P Q R ≤ 1 / 2 := by
  have key : ∀ P Q R : Point, P ∈ unitSquare → Q ∈ unitSquare → R ∈ unitSquare →
      sarea P Q R ≤ 1 := by
    intro P Q R hP hQ hR
    obtain ⟨p1, p2, p3, p4⟩ := hP
    obtain ⟨q1, q2, q3, q4⟩ := hQ
    obtain ⟨r1, r2, r3, r4⟩ := hR
    have e : sarea P Q R = P.1 * (Q.2 - R.2) + Q.1 * (R.2 - P.2) + R.1 * (P.2 - Q.2) := by
      unfold sarea; ring
    rw [e]
    have m : ∀ x c : ℝ, 0 ≤ x → x ≤ 1 → x * c ≤ max c 0 := by
      intro x c h0 h1
      rcases le_total c 0 with h | h
      · rw [max_eq_right h]; nlinarith
      · rw [max_eq_left h]; nlinarith
    have k1 := m _ (Q.2 - R.2) p1 p2
    have k2 := m _ (R.2 - P.2) q1 q2
    have k3 := m _ (P.2 - Q.2) r1 r2
    have hmax : max (Q.2 - R.2) 0 + max (R.2 - P.2) 0 + max (P.2 - Q.2) 0 ≤ 1 := by
      rcases le_total (Q.2 - R.2) 0 with h1 | h1 <;> rcases le_total (R.2 - P.2) 0 with h2 | h2 <;>
        rcases le_total (P.2 - Q.2) 0 with h3 | h3 <;>
        simp only [max_def] <;> split_ifs <;> linarith
    linarith
  have h1 := key P Q R hP hQ hR
  have h2 := key P R Q hP hR hQ
  rw [sarea_swap₂₃] at h2
  have := abs_le.2 ⟨(by linarith : -1 ≤ sarea P Q R), h1⟩
  rw [triangleArea_eq]; linarith

/-- **Global occupancy corollary**: in a nine-point configuration of the unit square with minimum
area at least `A₀`, a triangle spanned by three configuration points contains at most three
configuration points in its interior. -/
theorem globalOccupancyCorollary (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i j k : Fin 9) :
    {m : Fin 9 | InsideTriangle (P m) (P i) (P j) (P k)}.ncard ≤ 3 := by
  by_contra hcon
  push Not at hcon
  obtain ⟨a, b, c, d, ha, hb, hc, hd, hab, hac, had, hbc, hbd, hcd⟩ :=
    (Set.three_lt_ncard_iff (Set.toFinite _)).1 hcon
  simp only [Set.mem_ofPred_eq] at ha hb hc hd
  have hne := inside_sarea_ne ha
  have z1 : ∀ p q : Point, sarea p p q = 0 := fun p q => by unfold sarea; ring
  have z2 : ∀ p q : Point, sarea p q q = 0 := fun p q => by unfold sarea; ring
  have z3 : ∀ p q : Point, sarea p q p = 0 := fun p q => by unfold sarea; ring
  have hij : i ≠ j := by rintro rfl; exact hne (z1 _ _)
  have hjk : j ≠ k := by rintro rfl; exact hne (z2 _ _)
  have hik : i ≠ k := by rintro rfl; exact hne (z3 _ _)
  have v : ∀ m, InsideTriangle (P m) (P i) (P j) (P k) → m ≠ i ∧ m ≠ j ∧ m ≠ k := by
    intro m hm
    obtain ⟨n1, n2, n3⟩ := inside_ne hm
    exact ⟨fun h => n1 (by rw [h]), fun h => n2 (by rw [h]), fun h => n3 (by rw [h])⟩
  obtain ⟨ai, aj, ak⟩ := v a ha
  obtain ⟨bi, bj, bk⟩ := v b hb
  obtain ⟨ci, cj, ck⟩ := v c hc
  obtain ⟨di, dj, dk⟩ := v d hd
  have hX' : ∀ x, InsideTriangle (![P a, P b, P c, P d] x) (P i) (P j) (P k) := by
    intro x; fin_cases x
    · exact ha
    · exact hb
    · exact hc
    · exact hd
  have h7 := triangularHullLemma (P i) (P j) (P k) _ hX' A₀
    (min_sub hmin _ ![i, j, k, a, b, c, d] (by norm_num) (by inj_tac)
      (by intro x; fin_cases x <;> simp [sevenConfig]))
  have := triangleArea_le_half_of_mem_unitSquare (P i) (P j) (P k) (hP i) (hP j) (hP k)
  have hb0 := A₀_bounds
  nlinarith [sqrt2_gt]

end Heilbronn.Nine.CornerFamilies
