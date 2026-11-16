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
* `two_le_abs`: a triangle of area at least `t` has doubled signed area at least `2t` in absolute
  value;
* `le_min_comp`: a sub-configuration has least area at least that of the configuration, and
  `min_sub`, `min_sub'`: the same for a bound on the least area, with the sub-configuration given
  pointwise and injectivity given directly or by a left inverse;
* `InTriangle X A B C`: `X` is strictly inside the counterclockwise triangle `ABC`, and then
  `0 < sarea A B C` (`inTri_pos`); `InsideTriangle X A B C`: strictly inside, in either
  orientation;
* `IsConvexPolygon V`: the vertices `V 0, …, V (n-1)` of a strictly convex polygon, in
  counterclockwise order;
* `minTriangleArea_affineMap`: an affine map multiplies the least area by `|det|`, and
  `InTriangle.affine`: an affine map of positive determinant keeps strict containment.

The value `A₀` of nine points and its brackets are in `Heilbronn/Nine/Setup/Value.lean`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn

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

/-- A triangle of area at least `t > 0` whose signed area is nonnegative has doubled signed area
at least `2t`. -/
theorem two_mul_le_sarea_of_nonneg {p q r : Point} {t : ℝ} (ht : 0 < t)
    (h0 : 0 ≤ sarea p q r) (h : t ≤ triangleArea p q r) : 2 * t ≤ sarea p q r := by
  rcases (le_triangleArea_iff p q r t).1 h with h' | h' <;> [exact h'; linarith]

/-- A triangle of area at least `t > 0` whose signed area is nonpositive has doubled signed area
at most `-2t`. -/
theorem sarea_le_of_nonpos {p q r : Point} {t : ℝ} (ht : 0 < t)
    (h0 : sarea p q r ≤ 0) (h : t ≤ triangleArea p q r) : sarea p q r ≤ -(2 * t) := by
  rcases (le_triangleArea_iff p q r t).1 h with h' | h' <;> [linarith; exact h']

/-- A triangle of area at least `t` has doubled signed area at least `2t` in absolute value. -/
theorem two_le_abs {p q r : Point} {t : ℝ} (h : t ≤ triangleArea p q r) :
    2 * t ≤ |sarea p q r| := by
  rw [triangleArea_eq] at h; linarith

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

/-- A sub-configuration (or a relabelling) given by an injective index map keeps a lower bound
on the least area. -/
theorem min_sub {m : ℕ} {P : Fin n → Point} {t : ℝ} (h : t ≤ minTriangleArea P)
    (Q : Fin m → Point) (f : Fin m → Fin n) (hm : 3 ≤ m) (hf : Function.Injective f)
    (hQ : ∀ i, Q i = P (f i)) : t ≤ minTriangleArea Q := by
  obtain rfl : Q = P ∘ f := funext hQ
  exact h.trans (le_min_comp hm P hf)

/-- `min_sub` with injectivity from a left inverse (cheaper to check by `decide`). -/
theorem min_sub' {m : ℕ} {P : Fin n → Point} {t : ℝ} (h : t ≤ minTriangleArea P)
    (Q : Fin m → Point) (f : Fin m → Fin n) (g : Fin n → Fin m) (hm : 3 ≤ m)
    (hg : ∀ i, g (f i) = i) (hQ : ∀ i, Q i = P (f i)) : t ≤ minTriangleArea Q :=
  min_sub h Q f hm (Function.LeftInverse.injective hg) hQ

/-- `X` lies strictly inside the triangle `ABC`, whose vertices are counterclockwise. -/
def InTriangle (X A B C : Point) : Prop :=
  0 < sarea A B X ∧ 0 < sarea B C X ∧ 0 < sarea C A X

/-- `X` lies strictly inside the triangle `ABC`, whose vertices may be in either orientation. -/
def InsideTriangle (X A B C : Point) : Prop := InTriangle X A B C ∨ InTriangle X A C B

/-- `V 0, …, V (n-1)` are the vertices of a strictly convex polygon in counterclockwise order:
every triple of vertices taken in increasing index order turns counterclockwise. -/
def IsConvexPolygon (V : Fin n → Point) : Prop :=
  ∀ i j k : Fin n, i < j → j < k → 0 < sarea (V i) (V j) (V k)

/-- The three sub-triangles at a point add up to the triangle. -/
theorem sarea_add_sarea_add_sarea (A B C X : Point) :
    sarea A B X + sarea B C X + sarea C A X = sarea A B C := by
  unfold sarea; ring

/-- A triangle with a point strictly inside is counterclockwise. -/
theorem inTri_pos {X A B C : Point} (h : InTriangle X A B C) : 0 < sarea A B C := by
  have := sarea_add_sarea_add_sarea A B C X; linarith [h.1, h.2.1, h.2.2]

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

/-- An affine map of positive determinant keeps strict containment in a triangle. -/
theorem InTriangle.affine {X A B C : Point} {α β γ δ ε ζ : ℝ} (hdet : 0 < α * δ - β * γ)
    (h : InTriangle X A B C) :
    InTriangle (affineMap α β γ δ ε ζ X) (affineMap α β γ δ ε ζ A) (affineMap α β γ δ ε ζ B)
      (affineMap α β γ δ ε ζ C) := by
  obtain ⟨h1, h2, h3⟩ := h
  simp only [InTriangle, sarea_affineMap]
  exact ⟨mul_pos hdet h1, mul_pos hdet h2, mul_pos hdet h3⟩

end Heilbronn
