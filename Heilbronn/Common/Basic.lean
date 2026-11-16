module

public import Heilbronn.Geometry

/-!
# Signed areas, the least triangle area, and the symmetries of the square

The basic tools shared by every part of the proof:

* `sarea p q r`, twice the signed area of the triangle `pqr`, with
  `triangleArea p q r = |sarea p q r| / 2`, and its behaviour under permutations of the
  vertices and under affine maps;
* `minTriangleArea`: it is at most the area of every triangle of distinct indices, at least `t`
  exactly when every such triangle has area at least `t`, attained, invariant under relabelling,
  and continuous;
* the symmetries of the square keep the square, the open square (`InOpenSquare`) and every
  triangle area;
* a configuration maximizing the least triangle area exists (`exists_maximizer`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn

/-! ### Signed areas -/

/-- Twice the signed area of the triangle `pqr`: positive when `p, q, r` turn counterclockwise. -/
def sarea (p q r : Point) : ℝ :=
  (q.1 - p.1) * (r.2 - p.2) - (q.2 - p.2) * (r.1 - p.1)

theorem triangleArea_eq (p q r : Point) : triangleArea p q r = |sarea p q r| / 2 := rfl

theorem sarea_cycle (p q r : Point) : sarea q r p = sarea p q r := by
  unfold sarea; ring

theorem sarea_swap₁₂ (p q r : Point) : sarea q p r = -sarea p q r := by
  unfold sarea; ring

theorem sarea_swap₂₃ (p q r : Point) : sarea p r q = -sarea p q r := by
  unfold sarea; ring

theorem sarea_swap₁₃ (p q r : Point) : sarea r q p = -sarea p q r := by
  unfold sarea; ring

/-- A triangle with a repeated vertex has signed area zero. -/
theorem sarea_self₁₂ (p r : Point) : sarea p p r = 0 := by unfold sarea; ring

theorem sarea_self₁₃ (p q : Point) : sarea p q p = 0 := by unfold sarea; ring

theorem sarea_self₂₃ (p q : Point) : sarea p q q = 0 := by unfold sarea; ring

theorem triangleArea_nonneg (p q r : Point) : 0 ≤ triangleArea p q r := by
  rw [triangleArea_eq]; positivity

theorem triangleArea_cycle (p q r : Point) : triangleArea q r p = triangleArea p q r := by
  simp only [triangleArea_eq, sarea_cycle]

theorem triangleArea_swap₁₂ (p q r : Point) : triangleArea q p r = triangleArea p q r := by
  rw [triangleArea_eq, triangleArea_eq, sarea_swap₁₂, abs_neg]

theorem triangleArea_swap₂₃ (p q r : Point) : triangleArea p r q = triangleArea p q r := by
  rw [triangleArea_eq, triangleArea_eq, sarea_swap₂₃, abs_neg]

theorem triangleArea_swap₁₃ (p q r : Point) : triangleArea r q p = triangleArea p q r := by
  rw [triangleArea_eq, triangleArea_eq, sarea_swap₁₃, abs_neg]

/-- `t ≤ triangleArea p q r` says that `sarea p q r ≥ 2t` or `sarea p q r ≤ -2t`. -/
theorem le_triangleArea_iff (p q r : Point) (t : ℝ) :
    t ≤ triangleArea p q r ↔ 2 * t ≤ sarea p q r ∨ sarea p q r ≤ -(2 * t) := by
  rw [triangleArea_eq, le_div_iff₀ (by norm_num : (0 : ℝ) < 2), mul_comm, le_abs']
  constructor <;> rintro (h | h) <;> [right; left; right; left] <;> linarith

/-- A triangle with positively oriented vertices has area at least `t` exactly when its doubled
signed area is at least `2t`. -/
theorem le_triangleArea_of_pos {p q r : Point} {t : ℝ} (ht : 0 < t) (h : 0 < sarea p q r) :
    t ≤ triangleArea p q r ↔ 2 * t ≤ sarea p q r := by
  rw [le_triangleArea_iff]
  constructor
  · rintro (h' | h') <;> [exact h'; linarith]
  · exact Or.inl

theorem le_triangleArea_of_neg {p q r : Point} {t : ℝ} (ht : 0 < t) (h : sarea p q r < 0) :
    t ≤ triangleArea p q r ↔ sarea p q r ≤ -(2 * t) := by
  rw [le_triangleArea_iff]
  constructor
  · rintro (h' | h') <;> [linarith; exact h']
  · exact Or.inr

/-! ### Affine maps -/

/-- The affine map `(x, y) ↦ (a x + b y + e, c x + d y + f)`. -/
def affineMap (a b c d e f : ℝ) (p : Point) : Point :=
  (a * p.1 + b * p.2 + e, c * p.1 + d * p.2 + f)

/-- An affine map multiplies every signed area by its determinant. -/
theorem sarea_affineMap (a b c d e f : ℝ) (p q r : Point) :
    sarea (affineMap a b c d e f p) (affineMap a b c d e f q) (affineMap a b c d e f r) =
      (a * d - b * c) * sarea p q r := by
  unfold sarea affineMap; ring

theorem triangleArea_affineMap (a b c d e f : ℝ) (p q r : Point) :
    triangleArea (affineMap a b c d e f p) (affineMap a b c d e f q)
        (affineMap a b c d e f r) =
      |a * d - b * c| * triangleArea p q r := by
  simp only [triangleArea_eq, sarea_affineMap, abs_mul]; ring

/-! ### The least triangle area -/

section MinArea

variable {n : ℕ}

/-- The triples of indices `i < j < k`. -/
abbrev Triple (n : ℕ) := {t : Fin n × Fin n × Fin n // t.1 < t.2.1 ∧ t.2.1 < t.2.2}

theorem minTriangleArea_def (P : Fin n → Point) :
    minTriangleArea P = ⨅ t : Triple n, triangleArea (P t.1.1) (P t.1.2.1) (P t.1.2.2) := rfl

theorem bddBelow_triangleAreas (P : Fin n → Point) :
    BddBelow (Set.range fun t : Triple n => triangleArea (P t.1.1) (P t.1.2.1) (P t.1.2.2)) :=
  ⟨0, by rintro _ ⟨t, rfl⟩; exact triangleArea_nonneg _ _ _⟩

theorem minTriangleArea_le_of_lt (P : Fin n → Point) {i j k : Fin n} (hij : i < j)
    (hjk : j < k) : minTriangleArea P ≤ triangleArea (P i) (P j) (P k) :=
  ciInf_le (bddBelow_triangleAreas P) ⟨(i, j, k), hij, hjk⟩

/-- The least triangle area is at most the area of every triangle with three distinct indices,
in any order. -/
theorem minTriangleArea_le (P : Fin n → Point) {i j k : Fin n} (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) : minTriangleArea P ≤ triangleArea (P i) (P j) (P k) := by
  have key : ∀ a b c : Fin n, a < b → b < c → minTriangleArea P ≤ triangleArea (P a) (P b) (P c) :=
    fun _ _ _ => minTriangleArea_le_of_lt P
  rcases lt_or_gt_of_ne hij with h1 | h1 <;> rcases lt_or_gt_of_ne hjk with h2 | h2 <;>
    rcases lt_or_gt_of_ne hik with h3 | h3
  · exact key i j k h1 h2
  · exact absurd (h1.trans h2) (lt_asymm h3)
  · rw [← triangleArea_swap₂₃]; exact key i k j h3 h2
  · rw [triangleArea_cycle]; exact key k i j h3 h1
  · rw [triangleArea_swap₁₂]; exact key j i k h1 h3
  · rw [← triangleArea_cycle]; exact key j k i h2 h3
  · exact absurd (h2.trans h1) (lt_asymm h3)
  · rw [triangleArea_swap₁₃]; exact key k j i h2 h1

theorem minTriangleArea_nonneg (P : Fin n → Point) : 0 ≤ minTriangleArea P := by
  rw [minTriangleArea_def]
  rcases isEmpty_or_nonempty (Triple n) with h | h
  · rw [Real.iInf_of_isEmpty]
  · exact le_ciInf fun t => triangleArea_nonneg _ _ _

theorem nonempty_triple (hn : 3 ≤ n) : Nonempty (Triple n) :=
  ⟨⟨(⟨0, by omega⟩, ⟨1, by omega⟩, ⟨2, by omega⟩), by simp [Fin.lt_def]⟩⟩

/-- `t ≤ minTriangleArea P` when every triangle with distinct indices has area at least `t`. -/
theorem le_minTriangleArea (hn : 3 ≤ n) (P : Fin n → Point) {t : ℝ}
    (h : ∀ i j k : Fin n, i < j → j < k → t ≤ triangleArea (P i) (P j) (P k)) :
    t ≤ minTriangleArea P := by
  have := nonempty_triple hn
  exact le_ciInf fun s => h _ _ _ s.2.1 s.2.2

theorem le_minTriangleArea_iff (hn : 3 ≤ n) (P : Fin n → Point) (t : ℝ) :
    t ≤ minTriangleArea P ↔
      ∀ i j k : Fin n, i ≠ j → j ≠ k → i ≠ k → t ≤ triangleArea (P i) (P j) (P k) :=
  ⟨fun h _ _ _ hij hjk hik => h.trans (minTriangleArea_le P hij hjk hik),
    fun h => le_minTriangleArea hn P fun i j k hij hjk => h i j k hij.ne hjk.ne (hij.trans hjk).ne⟩

/-- The least triangle area of a relabelled configuration is the same. -/
theorem minTriangleArea_comp_perm (P : Fin n → Point) (σ : Equiv.Perm (Fin n)) :
    minTriangleArea (P ∘ σ) = minTriangleArea P := by
  rcases lt_or_ge n 3 with hn | hn
  · have : IsEmpty (Triple n) := ⟨fun t => by have := t.1.2.2.2; omega⟩
    rw [minTriangleArea_def, minTriangleArea_def, Real.iInf_of_isEmpty, Real.iInf_of_isEmpty]
  apply le_antisymm
  · refine le_minTriangleArea hn P fun i j k hij hjk => ?_
    have := minTriangleArea_le (P ∘ σ) (σ.symm.injective.ne hij.ne)
      (σ.symm.injective.ne hjk.ne) (σ.symm.injective.ne (hij.trans hjk).ne)
    simpa using this
  · refine le_minTriangleArea hn _ fun i j k hij hjk => ?_
    exact minTriangleArea_le P (σ.injective.ne hij.ne) (σ.injective.ne hjk.ne)
      (σ.injective.ne (hij.trans hjk).ne)

/-- A map of the plane that keeps every triangle area keeps the least triangle area. -/
theorem minTriangleArea_comp_of_area (P : Fin n → Point) (f : Point → Point)
    (hf : ∀ p q r, triangleArea (f p) (f q) (f r) = triangleArea p q r) :
    minTriangleArea (f ∘ P) = minTriangleArea P := by
  simp only [minTriangleArea_def, Function.comp, hf]

/-- The least triangle area as a finite minimum, for `n ≥ 3`. -/
theorem minTriangleArea_eq_inf' (hn : 3 ≤ n) (P : Fin n → Point) :
    minTriangleArea P = (Finset.univ : Finset (Triple n)).inf'
      (@Finset.univ_nonempty _ _ (nonempty_triple hn))
      (fun t => triangleArea (P t.1.1) (P t.1.2.1) (P t.1.2.2)) := by
  have := nonempty_triple hn
  apply le_antisymm
  · exact Finset.le_inf' _ _ fun s _ => minTriangleArea_le_of_lt P s.2.1 s.2.2
  · exact le_ciInf fun s => Finset.inf'_le _ (Finset.mem_univ s)

/-- The least triangle area is the area of one of the triangles. -/
theorem exists_minTriangleArea_eq (hn : 3 ≤ n) (P : Fin n → Point) :
    ∃ i j k : Fin n, i < j ∧ j < k ∧ minTriangleArea P = triangleArea (P i) (P j) (P k) := by
  obtain ⟨s, -, hs⟩ := Finset.exists_mem_eq_inf' (@Finset.univ_nonempty _ _ (nonempty_triple hn))
    (fun t : Triple n => triangleArea (P t.1.1) (P t.1.2.1) (P t.1.2.2))
  exact ⟨_, _, _, s.2.1, s.2.2, (minTriangleArea_eq_inf' hn P).trans hs⟩

theorem continuous_triangleArea (i j k : Fin n) :
    Continuous fun P : Fin n → Point => triangleArea (P i) (P j) (P k) := by
  unfold triangleArea; fun_prop

/-- The least triangle area depends continuously on the configuration. -/
theorem continuous_minTriangleArea (hn : 3 ≤ n) :
    Continuous fun P : Fin n → Point => minTriangleArea P := by
  simp_rw [minTriangleArea_eq_inf' hn]
  exact Continuous.finset_inf'_apply _ fun t _ => continuous_triangleArea _ _ _

end MinArea

/-! ### The unit square and its symmetries -/

theorem isCompact_unitSquare : IsCompact unitSquare := by
  have : unitSquare = Set.Icc (0 : ℝ) 1 ×ˢ Set.Icc (0 : ℝ) 1 := by
    ext p; simp only [unitSquare, Set.mem_prod, Set.mem_Icc, Set.mem_ofPred_eq, and_assoc]
  rw [this]; exact isCompact_Icc.prod isCompact_Icc

/-- A configuration of `n ≥ 3` points in the unit square with the largest least triangle area
exists. -/
theorem exists_maximizer {n : ℕ} (hn : 3 ≤ n) :
    ∃ P : Fin n → Point, (∀ i, P i ∈ unitSquare) ∧
      ∀ Q : Fin n → Point, (∀ i, Q i ∈ unitSquare) → minTriangleArea Q ≤ minTriangleArea P := by
  have hK : IsCompact (Set.univ.pi fun _ : Fin n => unitSquare) :=
    isCompact_univ_pi fun _ => isCompact_unitSquare
  have hne : (Set.univ.pi fun _ : Fin n => unitSquare).Nonempty :=
    ⟨fun _ => (0, 0), fun _ _ => by simp [unitSquare]⟩
  obtain ⟨P, hP, hmax⟩ := hK.exists_isMaxOn hne (continuous_minTriangleArea hn).continuousOn
  refine ⟨P, fun i => hP i (Set.mem_univ _), fun Q hQ => hmax (fun i _ => hQ i)⟩

namespace SquareSymmetry

theorem apply_mem (g : SquareSymmetry) {p : Point} (hp : p ∈ unitSquare) :
    g.apply p ∈ unitSquare := by
  obtain ⟨h1, h2, h3, h4⟩ := hp
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;>
    simp only [apply, unitSquare, Set.mem_ofPred_eq, Bool.false_eq_true, ↓reduceIte] <;>
    refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith

/-- Every symmetry of the square is an affine map of determinant `±1`. -/
theorem sarea_apply (g : SquareSymmetry) (p q r : Point) :
    sarea (g.apply p) (g.apply q) (g.apply r) = sarea p q r ∨
      sarea (g.apply p) (g.apply q) (g.apply r) = -sarea p q r := by
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;>
    simp only [apply, sarea, Bool.false_eq_true, ↓reduceIte] <;>
    first | (left; ring1) | (right; ring1) | simp

theorem triangleArea_apply (g : SquareSymmetry) (p q r : Point) :
    triangleArea (g.apply p) (g.apply q) (g.apply r) = triangleArea p q r := by
  simp only [triangleArea_eq]
  rcases g.sarea_apply p q r with h | h <;> rw [h]; rw [abs_neg]

theorem minTriangleArea_comp {n : ℕ} (g : SquareSymmetry) (P : Fin n → Point) :
    minTriangleArea (g.apply ∘ P) = minTriangleArea P :=
  minTriangleArea_comp_of_area P g.apply g.triangleArea_apply

end SquareSymmetry

/-- `X` lies in the open unit square `(0, 1)²`, off its boundary. -/
def InOpenSquare (X : Point) : Prop :=
  0 < X.1 ∧ X.1 < 1 ∧ 0 < X.2 ∧ X.2 < 1

theorem InOpenSquare.mem {X : Point} (h : InOpenSquare X) : X ∈ unitSquare :=
  ⟨h.1.le, h.2.1.le, h.2.2.1.le, h.2.2.2.le⟩

/-- The symmetries of the square keep the open square. -/
theorem InOpenSquare.apply {X : Point} (g : SquareSymmetry) (h : InOpenSquare X) :
    InOpenSquare (g.apply X) := by
  obtain ⟨h1, h2, h3, h4⟩ := h
  rcases g with ⟨_ | _, _ | _, _ | _⟩ <;>
    simp only [SquareSymmetry.apply, InOpenSquare, Bool.false_eq_true, ↓reduceIte] <;>
    refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith

end Heilbronn
