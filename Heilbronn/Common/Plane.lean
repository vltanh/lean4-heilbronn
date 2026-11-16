module

public import Heilbronn.Common.Config
public import Mathlib.Analysis.Convex.Join

/-!
# Closed triangles

The closed triangle `ABC` as the convex hull `convexHull ℝ {A, B, C}`, described by barycentric
coordinates (`exists_bary_of_mem_convexHull`, `mem_convexHull_of_bary`) and by edge signs
(`mem_convexHull_of_sarea`, `sarea_of_mem_convexHull`, `sarea_nonneg_of_mem_convexHull`,
`mem_convexHull_of_inTriangle`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn

/-- A point of the closed triangle `ABC` has barycentric coordinates. -/
theorem exists_bary_of_mem_convexHull {A B C p : Point}
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
theorem mem_convexHull_of_bary {A B C : Point} {a b c : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
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
theorem mem_convexHull_of_sarea {A B C p : Point} (hΔ : 0 < sarea A B C)
    (h1 : 0 ≤ sarea B C p) (h2 : 0 ≤ sarea C A p) (h3 : 0 ≤ sarea A B p) :
    p ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  have hne : sarea A B C ≠ 0 := hΔ.ne'
  have key := mem_convexHull_of_bary (A := A) (B := B) (C := C)
    (div_nonneg h1 hΔ.le) (div_nonneg h2 hΔ.le) (div_nonneg h3 hΔ.le)
    (by rw [← add_div, ← add_div, div_eq_one_iff_eq hne]; unfold sarea; ring)
  convert key using 1
  ext
  · simp only; field_simp; unfold sarea; ring
  · simp only; field_simp; unfold sarea; ring

/-- The signed areas of a point of the closed triangle `ABC` are its barycentric coordinates
times `[ABC]`. -/
theorem sarea_of_mem_convexHull {A B C p : Point}
    (hp : p ∈ convexHull ℝ ({A, B, C} : Set Point)) :
    ∃ a b c : ℝ, 0 ≤ a ∧ 0 ≤ b ∧ 0 ≤ c ∧ a + b + c = 1 ∧
      sarea B C p = a * sarea A B C ∧ sarea C A p = b * sarea A B C ∧
      sarea A B p = c * sarea A B C := by
  obtain ⟨a, b, c, ha, hb, hc, habc, rfl⟩ := exists_bary_of_mem_convexHull hp
  obtain rfl : a = 1 - b - c := by linarith
  exact ⟨1 - b - c, b, c, ha, hb, hc, habc, by unfold sarea; ring, by unfold sarea; ring,
    by unfold sarea; ring⟩

/-- A point of a closed counterclockwise triangle `ABC` is on the nonnegative side of its edges,
and `[ABp] ≤ [ABC]`. -/
theorem sarea_nonneg_of_mem_convexHull {A B C p : Point} (hΔ : 0 ≤ sarea A B C)
    (hp : p ∈ convexHull ℝ ({A, B, C} : Set Point)) :
    0 ≤ sarea B C p ∧ 0 ≤ sarea C A p ∧ 0 ≤ sarea A B p ∧ sarea A B p ≤ sarea A B C := by
  obtain ⟨a, b, c, ha, hb, hc, habc, h1, h2, h3⟩ := sarea_of_mem_convexHull hp
  refine ⟨by rw [h1]; positivity, by rw [h2]; positivity, by rw [h3]; positivity, ?_⟩
  rw [h3]
  have : c ≤ 1 := by linarith
  nlinarith

/-- A point strictly inside a triangle lies in its closed hull. -/
theorem mem_convexHull_of_inTriangle {A B C Q : Point} (hQ : InTriangle Q A B C) :
    Q ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  obtain ⟨h1, h2, h3⟩ := hQ
  have := sarea_add_sarea_add_sarea A B C Q
  exact mem_convexHull_of_sarea (by linarith) h2.le h3.le h1.le

end Heilbronn
