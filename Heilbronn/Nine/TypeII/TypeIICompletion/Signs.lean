module

public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle
public import Heilbronn.Nine.Corners.CornerFamilies.SixPoint
public import Mathlib.Analysis.Convex.Join

/-! # Sign tools for `TYPE_II_COMPLETION.md`

General facts about signed areas used by the modules of `Heilbronn.Nine.TypeII.TypeIICompletion`:

* `tc_sarea_bary`: the barycentric identity `[ABC]·f(X) = [BCX] f(A) + [CAX] f(B) + [ABX] f(C)` for
  the affine function `f = [YZ·]`;
* `tc_pos_of_inTri`, `tc_neg_of_inTri`: an affine function nonnegative at the vertices of a triangle
  and positive at one of them is positive at every interior point;
* `tc_sarea_comb`, `tc_pos_of_mem_hull`, `tc_nonneg_of_mem_hull`: the same for closed triangles given by
  `convexHull`;
* `tc_min_sub`: least-area bounds for sub-configurations, with injectivity from a left inverse.
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

/-- A triangle with an interior point is counterclockwise. -/
theorem tc_inTri_area_pos {X A B C : Point} (h : InTriangle X A B C) : 0 < sarea A B C := by
  have := sarea_add_sarea_add_sarea A B C X
  obtain ⟨h1, h2, h3⟩ := h
  linarith

/-! ### Closed triangles (own copies, prefixed `tc_`) -/

/-- A point of the closed triangle `ABC` has barycentric coordinates. -/
theorem tc_exists_bary {A B C p : Point}
    (hp : p ∈ convexHull ℝ ({A, B, C} : Set Point)) :
    ∃ a b c : ℝ, 0 ≤ a ∧ 0 ≤ b ∧ 0 ≤ c ∧ a + b + c = 1 ∧
      p = (a * A.1 + b * B.1 + c * C.1, a * A.2 + b * B.2 + c * C.2) := by
  rw [← convexJoin_singleton_segment, mem_convexJoin] at hp
  obtain ⟨a', ha', q, hq, hpq⟩ := hp
  rw [Set.mem_singleton_iff] at ha'
  subst ha'
  obtain ⟨α, β, hα, hβ, hαβ, rfl⟩ := hpq
  obtain ⟨γ, δ, hγ, hδ, hγδ, rfl⟩ := hq
  refine ⟨α, β * γ, β * δ, hα, mul_nonneg hβ hγ, mul_nonneg hβ hδ,
    by linear_combination β * hγδ + hαβ, ?_⟩
  ext <;> simp <;> ring

/-- A convex combination of `A, B, C` lies in the closed triangle. -/
theorem tc_mem_hull_of_bary {A B C : Point} {a b c : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hc : 0 ≤ c) (habc : a + b + c = 1) :
    ((a * A.1 + b * B.1 + c * C.1, a * A.2 + b * B.2 + c * C.2) : Point) ∈
      convexHull ℝ ({A, B, C} : Set Point) := by
  rw [← convexJoin_singleton_segment, mem_convexJoin]
  rcases eq_or_lt_of_le (add_nonneg hb hc) with hbc | hbc
  · have hb0 : b = 0 := by linarith
    have hc0 : c = 0 := by linarith
    have ha1 : a = 1 := by linarith
    subst hb0 hc0 ha1
    refine ⟨A, Set.mem_singleton _, B, left_mem_segment ℝ B C, ?_⟩
    convert left_mem_segment ℝ A B using 1
    ext <;> simp
  · have hne : b + c ≠ 0 := hbc.ne'
    refine ⟨A, Set.mem_singleton _,
      ((b / (b + c)) * B.1 + (c / (b + c)) * C.1, (b / (b + c)) * B.2 + (c / (b + c)) * C.2),
      ⟨b / (b + c), c / (b + c), by positivity, by positivity, by field_simp,
        by ext <;> simp⟩, ⟨a, b + c, ha, hbc.le, by linarith, ?_⟩⟩
    ext <;> simp <;> field_simp <;> ring

/-- A point on the nonnegative side of the three edges of a counterclockwise triangle lies in
the closed triangle. -/
theorem tc_mem_hull_of_sarea {A B C p : Point} (hΔ : 0 < sarea A B C)
    (h1 : 0 ≤ sarea B C p) (h2 : 0 ≤ sarea C A p) (h3 : 0 ≤ sarea A B p) :
    p ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  have hne : sarea A B C ≠ 0 := hΔ.ne'
  have key := tc_mem_hull_of_bary (A := A) (B := B) (C := C)
    (div_nonneg h1 hΔ.le) (div_nonneg h2 hΔ.le) (div_nonneg h3 hΔ.le)
    (by rw [← add_div, ← add_div, div_eq_one_iff_eq hne]; unfold sarea; ring)
  convert key using 1
  ext
  · simp only; field_simp; unfold sarea; ring
  · simp only; field_simp; unfold sarea; ring

/-- The signed areas of a point of the closed triangle `ABC` are its barycentric coordinates
times `[ABC]`. -/
theorem tc_sarea_of_mem_hull {A B C p : Point}
    (hp : p ∈ convexHull ℝ ({A, B, C} : Set Point)) :
    ∃ a b c : ℝ, 0 ≤ a ∧ 0 ≤ b ∧ 0 ≤ c ∧ a + b + c = 1 ∧
      sarea B C p = a * sarea A B C ∧ sarea C A p = b * sarea A B C ∧
      sarea A B p = c * sarea A B C := by
  obtain ⟨a, b, c, ha, hb, hc, habc, rfl⟩ := tc_exists_bary hp
  obtain rfl : a = 1 - b - c := by linarith
  exact ⟨1 - b - c, b, c, ha, hb, hc, habc, by unfold sarea; ring, by unfold sarea; ring,
    by unfold sarea; ring⟩

/-- A point of a closed counterclockwise triangle `ABC` is on the nonnegative side of its
edges. -/
theorem tc_sarea_nonneg_of_mem_hull {A B C p : Point} (hΔ : 0 ≤ sarea A B C)
    (hp : p ∈ convexHull ℝ ({A, B, C} : Set Point)) :
    0 ≤ sarea B C p ∧ 0 ≤ sarea C A p ∧ 0 ≤ sarea A B p := by
  obtain ⟨a, b, c, ha, hb, hc, habc, h1, h2, h3⟩ := tc_sarea_of_mem_hull hp
  exact ⟨by rw [h1]; positivity, by rw [h2]; positivity, by rw [h3]; positivity⟩

/-- A strictly interior point lies in the closed triangle. -/
theorem tc_mem_hull_of_inTri {X A B C : Point} (h : InTriangle X A B C) :
    X ∈ convexHull ℝ ({A, B, C} : Set Point) :=
  tc_mem_hull_of_sarea (tc_inTri_area_pos h) h.2.1.le h.2.2.le h.1.le

/-- An affine function `[YZ·]` that is nonnegative at the three vertices, and not zero at all of
them, is positive at every interior point. -/
theorem tc_pos_of_inTri {X A B C Y Z : Point} (h : InTriangle X A B C)
    (hA : 0 ≤ sarea Y Z A) (hB : 0 ≤ sarea Y Z B) (hC : 0 ≤ sarea Y Z C)
    (hpos : 0 < sarea Y Z A + sarea Y Z B + sarea Y Z C) : 0 < sarea Y Z X := by
  by_contra hX
  push Not at hX
  have hΔ := tc_inTri_area_pos h
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

/-- A sub-configuration given by an index map with a left inverse keeps a least-area bound. -/
theorem tc_min_sub {n m : ℕ} {P : Fin n → Point} {t : ℝ} (h : t ≤ minTriangleArea P)
    (Q : Fin m → Point) (f : Fin m → Fin n) (g : Fin n → Fin m) (hm : 3 ≤ m)
    (hg : ∀ i, g (f i) = i) (hQ : ∀ i, Q i = P (f i)) : t ≤ minTriangleArea Q := by
  obtain rfl : Q = P ∘ f := funext hQ
  exact h.trans (le_min_comp hm P (Function.LeftInverse.injective hg))

/-- The doubled area of three distinct points of a configuration with least area at least
`t > 0` has absolute value at least `2t`; in the two signed forms. -/
theorem tc_ge_of_pos {n : ℕ} {P : Fin n → Point} {t : ℝ} (ht : 0 < t)
    (h : t ≤ minTriangleArea P) (i j k : Fin n) (hpos : 0 < sarea (P i) (P j) (P k))
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    2 * t ≤ sarea (P i) (P j) (P k) :=
  sarea_ge_of_le_min_of_pos ht h i j k hpos hij hjk hik

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

/-- The two-interior-point lemma (`CORNER_FAMILIES.md` (13)) in doubled signed form: a
counterclockwise triangle containing two points strictly inside, with every doubled area of the
five points at least `s > 0`, has doubled area at least `K s`. -/
theorem tc_two_int {A B C P Q : Point} {s : ℝ} (hs : 0 < s) (hP : InTriangle P A B C)
    (hQ : InTriangle Q A B C) (hmin : s / 2 ≤ minTriangleArea ![A, B, C, P, Q]) :
    Ktwo * s ≤ sarea A B C := by
  have := CornerFamilies.twoInteriorPointLemma A B C P Q (Or.inl hP) (Or.inl hQ) (s / 2)
    (by positivity) hmin
  rw [triangleArea_eq, abs_of_pos (tc_inTri_area_pos hP)] at this
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
