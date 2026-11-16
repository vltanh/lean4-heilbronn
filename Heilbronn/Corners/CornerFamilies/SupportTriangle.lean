module

public import Heilbronn.Corners.CornerFamilies.Stars
public import Heilbronn.Corners.OppositeCorners

/-! # Corner families, §6: at most one upper point (`hand/CORNER_FAMILIES.md`, lines 304–413)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). The support-triangle
normalization reduces any set of at least six points in the triangle
`T = conv{(0,0), (1,0), (1,1)}` that contains both endpoints of the diagonal and has a
nontriangular hull to Theorem 1 of `OPPOSITE_CORNERS.md`; with the triangular-hull lemma this
bounds seven points of `T` containing the two endpoints, and closes the Type-III classes with at
most one upper point.

Definitions: `lowerTriangle` (the closed triangle `T`, by sign conditions).

**Results.**

* `nontriangularHullLemma` (support triangle, at `7/128`) and its affine form
  `nontriangularHullLemma_affine` (points in a triangle of area `S` including two of its
  vertices: minimum area `≤ 7S/64`), used by `TYPE_II.md`, `TYPE_II_COMPLETION.md` and §12 here;
* `endpointLemma`;
* `typeIII_le1upper` (9).

The hull hypothesis "nontriangular convex hull" is written: the convex hull of the points is not
the convex hull of any three of them.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-- The closed triangle `T = conv{A = (0,0), D = (1,0), C = (1,1)}`: `0 ≤ y ≤ x ≤ 1`
(line 314). -/
def lowerTriangle : Set Point := {p | 0 ≤ p.2 ∧ p.2 ≤ p.1 ∧ p.1 ≤ 1}

/-! ### Closed triangles and convex hulls -/

/-- A point of a nondegenerate closed triangle (by signs) is in the convex hull of its vertices. -/
theorem mem_convexHull_of_closed {X A B C : Point} (hABC : sarea A B C ≠ 0)
    (h : InClosedTriangle X A B C) : X ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  set S := sarea A B C with hS
  have e := sarea_add_sarea_add_sarea A B C X
  have hw : 0 ≤ sarea B C X / S ∧ 0 ≤ sarea C A X / S ∧ 0 ≤ sarea A B X / S := by
    rcases h with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
    · have hS0 : 0 < S := by
        rcases hABC.lt_or_gt with h' | h'
        · exfalso; linarith
        · exact h'
      exact ⟨div_nonneg h2 hS0.le, div_nonneg h3 hS0.le, div_nonneg h1 hS0.le⟩
    · have hS0 : S < 0 := by
        rcases hABC.lt_or_gt with h' | h'
        · exact h'
        · exfalso; linarith
      exact ⟨div_nonneg_of_nonpos h2 hS0.le, div_nonneg_of_nonpos h3 hS0.le,
        div_nonneg_of_nonpos h1 hS0.le⟩
  have key := (convex_convexHull ℝ ({A, B, C} : Set Point)).sum_mem (t := Finset.univ)
    (w := ![sarea B C X / S, sarea C A X / S, sarea A B X / S]) (z := ![A, B, C])
    (by intro i _; fin_cases i
        · exact hw.1
        · exact hw.2.1
        · exact hw.2.2)
    (by simp only [Fin.sum_univ_three, Matrix.cons_val_zero, Matrix.cons_val_one,
          Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
        field_simp; linarith)
    (by intro i _; fin_cases i <;> exact subset_convexHull ℝ _ (by simp))
  convert key using 1
  simp only [Fin.sum_univ_three, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
  ext <;> simp only [Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul] <;>
    field_simp <;> rw [hS] <;> unfold sarea <;> ring

/-- If every point lies in the closed triangle of three of them, the convex hull is that
triangle. -/
theorem hull_eq_of_closed {n : ℕ} (P : Fin n → Point) (a r c : Fin n)
    (hne : sarea (P a) (P r) (P c) ≠ 0) (h : ∀ i, InClosedTriangle (P i) (P a) (P r) (P c)) :
    convexHull ℝ (Set.range P) = convexHull ℝ ({P a, P r, P c} : Set Point) := by
  apply le_antisymm
  · exact convexHull_min (by rintro _ ⟨i, rfl⟩; exact mem_convexHull_of_closed hne (h i))
      (convex_convexHull ℝ _)
  · apply convexHull_mono
    intro x hx
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
    rcases hx with rfl | rfl | rfl <;> exact ⟨_, rfl⟩

/-! ### The support triangle -/

/-- The support-triangle normalization (lines 316–379), in the form used here: at least six
points of `T` containing `A = (0,0)` and `C = (1,1)`, of positive least area, either have least
area at most `7/128`, or have a triangular hull `A R C` with `R` one of the points. In the second
case the two support contacts coincide; otherwise the linear map
`(x, y) ↦ ((y - ρx)/(1 - ρ), (x - ηy)/(1 - η))` (the affine map `ACR → T` followed by the
reflection in `y = x`) sends six of the points to the family of `OPPOSITE_CORNERS.md`
Theorem 1, with determinant of absolute value `(1 - ρη)/((1 - ρ)(1 - η)) ≥ 1`. -/
theorem support_core {n : ℕ} (hn : 6 ≤ n) (P : Fin n → Point) (hP : ∀ i, P i ∈ lowerTriangle)
    (a c : Fin n) (ha : P a = (0, 0)) (hc : P c = (1, 1)) (hpos : 0 < minTriangleArea P) :
    minTriangleArea P ≤ 7 / 128 ∨
      ∃ r, r ≠ a ∧ r ≠ c ∧ ∀ i, InClosedTriangle (P i) (0, 0) (P r) (1, 1) := by
  have hac : a ≠ c := by
    intro h; rw [h, hc] at ha; simp [Prod.ext_iff] at ha
  set S := (Finset.univ : Finset (Fin n)).filter (fun i => i ≠ a ∧ i ≠ c) with hSdef
  have hSc : 4 ≤ S.card := by
    have : S = (Finset.univ.erase a).erase c := by
      ext i; simp only [hSdef, Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_erase]
      tauto
    rw [this, Finset.card_erase_of_mem (by simp [Ne.symm hac]), Finset.card_erase_of_mem (by simp),
      Finset.card_univ, Fintype.card_fin]
    omega
  have memS : ∀ i, i ∈ S ↔ i ≠ a ∧ i ≠ c := by
    intro i; simp [hSdef]
  have other : ∀ i ∈ S, 0 < (P i).1 ∧ (P i).2 < (P i).1 ∧ (P i).2 < 1 := by
    intro i hi
    rw [memS] at hi
    have hd := sarea_ne_zero_of_min_pos hpos a c i hac (Ne.symm hi.2) (Ne.symm hi.1)
    rw [ha, hc] at hd
    obtain ⟨h1, h2, h3⟩ := hP i
    have : (P i).2 < (P i).1 := lt_of_le_of_ne h2 (fun h => hd (by unfold sarea; rw [h]; ring))
    exact ⟨by linarith, this, by linarith⟩
  have hSne : S.Nonempty := Finset.card_pos.1 (by omega)
  obtain ⟨p, hpS, hpmin⟩ := S.exists_min_image (fun i => (P i).2 / (P i).1) hSne
  obtain ⟨q, hqS, hqmin⟩ := S.exists_min_image (fun i => (1 - (P i).1) / (1 - (P i).2)) hSne
  obtain ⟨px, py, py1⟩ := other p hpS
  obtain ⟨qx, qy, qy1⟩ := other q hqS
  have hP0 : ∀ i, 0 ≤ (P i).2 := fun i => (hP i).1
  have hP1 : ∀ i, (P i).1 ≤ 1 := fun i => (hP i).2.2
  have hPl : ∀ i, (P i).2 ≤ (P i).1 := fun i => (hP i).2.1
  -- the two support conditions in signed form
  have hAp : ∀ i, 0 ≤ sarea (0, 0) (P p) (P i) := by
    intro i
    by_cases hi : i ∈ S
    · have h := hpmin i hi
      obtain ⟨ix, -, -⟩ := other i hi
      rw [div_le_div_iff₀ px ix] at h
      unfold sarea; nlinarith
    · rw [memS] at hi; push Not at hi
      by_cases hia : i = a
      · rw [hia, ha]; unfold sarea; simp
      · rw [hi hia, hc]; unfold sarea; simp; linarith
  have hCq : ∀ i, sarea (1, 1) (P q) (P i) ≤ 0 := by
    intro i
    by_cases hi : i ∈ S
    · have h := hqmin i hi
      obtain ⟨-, -, iy1⟩ := other i hi
      rw [div_le_div_iff₀ (by linarith) (by linarith)] at h
      unfold sarea; nlinarith
    · rw [memS] at hi; push Not at hi
      by_cases hia : i = a
      · rw [hia, ha]; unfold sarea; simp; linarith
      · rw [hi hia, hc]; unfold sarea; simp
  by_cases hpq : p = q
  · -- triangular hull `A (P p) C`
    right
    rw [memS] at hpS
    refine ⟨p, hpS.1, hpS.2, fun i => Or.inl ⟨hAp i, ?_, ?_⟩⟩
    · have := hCq i; rw [← hpq] at this
      have e : sarea (P p) (1, 1) (P i) = -sarea (1, 1) (P p) (P i) := sarea_swap₁₂ _ _ _
      linarith
    · unfold sarea; simp; linarith [hPl i]
  · left
    -- two further points
    have hT : 1 < ((S.erase p).erase q).card := by
      rw [Finset.card_erase_of_mem (Finset.mem_erase.2 ⟨Ne.symm hpq, hqS⟩),
        Finset.card_erase_of_mem hpS]
      omega
    obtain ⟨u, hu, v, hv, huv⟩ := Finset.one_lt_card.1 hT
    simp only [Finset.mem_erase] at hu hv
    obtain ⟨huq, hup, huS⟩ := hu
    obtain ⟨hvq, hvp, hvS⟩ := hv
    rw [memS] at hpS hqS huS hvS
    -- the parameters
    set ρ := (P p).2 / (P p).1 with hρ
    set η := (1 - (P q).1) / (1 - (P q).2) with hη
    have hρ0 : 0 ≤ ρ := div_nonneg (hP0 p) px.le
    have hρ1 : ρ < 1 := by rw [hρ, div_lt_one px]; exact py
    have hη0 : 0 ≤ η := div_nonneg (by linarith [hP1 q]) (by linarith)
    have hη1 : η < 1 := by rw [hη, div_lt_one (by linarith)]; linarith
    have hρp : ρ * (P p).1 = (P p).2 := by rw [hρ]; field_simp
    have hηq : η * (1 - (P q).2) = 1 - (P q).1 := by rw [hη]; field_simp
    -- strictness from general position
    have nCqp := sarea_ne_zero_of_min_pos hpos c q p (Ne.symm hqS.2) (Ne.symm hpq) hpS.2.symm
    have nApq := sarea_ne_zero_of_min_pos hpos a p q (Ne.symm hpS.1) hpq hqS.1.symm
    rw [hc] at nCqp
    rw [ha] at nApq
    have sCqp : sarea (1, 1) (P q) (P p) < 0 := lt_of_le_of_ne (hCq p) nCqp
    have sApq : 0 < sarea (0, 0) (P p) (P q) := lt_of_le_of_ne (hAp q) (Ne.symm nApq)
    set h := ((P p).1 - η * (P p).2) / (1 - η) with hh
    set f := ((P q).2 - ρ * (P q).1) / (1 - ρ) with hf
    have h1η : 0 < 1 - η := by linarith
    have h1ρ : 0 < 1 - ρ := by linarith
    have hh0 : 0 < h := by
      apply div_pos _ h1η; nlinarith [hP0 p]
    have hh1 : h < 1 := by
      rw [hh, div_lt_one h1η]
      have : sarea (1, 1) (P q) (P p) = -((1 - (P q).2) * ((1 - (P p).1) - η * (1 - (P p).2))) := by
        unfold sarea; linear_combination (-(1 - (P p).2)) * hηq
      have hq2 : 0 < 1 - (P q).2 := by linarith
      nlinarith
    have hf0 : 0 < f := by
      apply div_pos _ h1ρ
      have : sarea (0, 0) (P p) (P q) = (P p).1 * ((P q).2 - ρ * (P q).1) := by
        unfold sarea; linear_combination (P q).1 * hρp
      nlinarith
    have hf1 : f < 1 := by
      rw [hf, div_lt_one h1ρ]; nlinarith [hP1 q]
    -- the map
    set M := affineMap (-ρ / (1 - ρ)) (1 / (1 - ρ)) (1 / (1 - η)) (-η / (1 - η)) 0 0 with hM
    have Mx : ∀ X : Point, M X = ((X.2 - ρ * X.1) / (1 - ρ), (X.1 - η * X.2) / (1 - η)) := by
      intro X; rw [hM]; unfold affineMap; ext <;> simp only <;> field_simp <;> ring
    have Mhalf : ∀ i, M (P i) ∈ OppositeCorners.halfSquare := by
      intro i
      rw [Mx]
      refine ⟨div_nonneg ?_ h1ρ.le, ?_, ?_⟩
      · have h := hAp i
        have : sarea (0, 0) (P p) (P i) = (P p).1 * ((P i).2 - ρ * (P i).1) := by
          unfold sarea; linear_combination (P i).1 * hρp
        nlinarith
      · rw [div_le_div_iff₀ h1ρ h1η]
        nlinarith [mul_nonneg (sub_nonneg.2 (hPl i)) (by nlinarith : (0 : ℝ) ≤ 1 - ρ * η)]
      · rw [div_le_one h1η]
        have h := hCq i
        have : sarea (1, 1) (P q) (P i) = -((1 - (P q).2) * ((1 - (P i).1) - η * (1 - (P i).2))) := by
          unfold sarea; linear_combination (-(1 - (P i).2)) * hηq
        have hq2 : 0 < 1 - (P q).2 := by linarith
        nlinarith
    have hconf : ∀ i, OppositeCorners.halfSquareConfig h f (M (P u)) (M (P v)) i =
        (M ∘ ![P a, P c, P p, P q, P u, P v]) i := by
      have e0 : M (P a) = (0, 0) := by rw [Mx, ha]; simp
      have e1 : M (P c) = (1, 1) := by
        rw [Mx, hc]; ext <;> simp only <;> field_simp
      have e2 : M (P p) = (0, h) := by
        rw [Mx]; ext
        · show ((P p).2 - ρ * (P p).1) / (1 - ρ) = 0
          rw [hρp, sub_self, zero_div]
        · rfl
      have e3 : M (P q) = (f, 1) := by
        rw [Mx]; ext
        · rfl
        · show ((P q).1 - η * (P q).2) / (1 - η) = 1
          rw [div_eq_one_iff_eq h1η.ne']; linarith
      intro i
      fin_cases i <;> simp [OppositeCorners.halfSquareConfig, e0, e1, e2, e3]
    have h6 := OppositeCorners.theorem1 h f hh0 hh1 hf0 hf1 _ _ (Mhalf u) (Mhalf v)
    rw [show OppositeCorners.halfSquareConfig h f (M (P u)) (M (P v)) =
      M ∘ ![P a, P c, P p, P q, P u, P v] from funext hconf, hM, minTriangleArea_affineMap] at h6
    have hdet : 1 ≤ |-ρ / (1 - ρ) * (-η / (1 - η)) - 1 / (1 - ρ) * (1 / (1 - η))| := by
      have : -ρ / (1 - ρ) * (-η / (1 - η)) - 1 / (1 - ρ) * (1 / (1 - η)) =
          -((1 - ρ * η) / ((1 - ρ) * (1 - η))) := by field_simp; ring
      rw [this, abs_neg, abs_of_pos (by apply div_pos <;> nlinarith), le_div_iff₀ (by positivity)]
      nlinarith
    have hsub : minTriangleArea P ≤ minTriangleArea ![P a, P c, P p, P q, P u, P v] :=
      min_sub (le_refl _) _ ![a, c, p, q, u, v] (by norm_num)
        (by obtain ⟨hpa, hpc⟩ := hpS; obtain ⟨hqa, hqc⟩ := hqS; obtain ⟨hua, huc⟩ := huS
            obtain ⟨hva, hvc⟩ := hvS; inj_tac)
        (by intro i; fin_cases i <;> simp)
    have h0 := minTriangleArea_nonneg ![P a, P c, P p, P q, P u, P v]
    nlinarith

/-- **Nontriangular-hull lemma** (`CORNER_FAMILIES:NontriangularHullLemma`): at least six points
of the triangle `T`, including `A = (0,0)` and `C = (1,1)`, whose convex hull is not a triangle,
have minimum triangle area at most `7/128`. `hand/CORNER_FAMILIES.md`, lines 306–379.

Uses: OPPOSITE_CORNERS:Theorem1 -/
theorem nontriangularHullLemma {n : ℕ} (hn : 6 ≤ n) (P : Fin n → Point)
    (hP : ∀ i, P i ∈ lowerTriangle) (hA : ∃ i, P i = (0, 0)) (hC : ∃ i, P i = (1, 1))
    (hnt : ∀ a b c : Fin n,
      convexHull ℝ (Set.range P) ≠ convexHull ℝ ({P a, P b, P c} : Set Point)) :
    minTriangleArea P ≤ 7 / 128 := by
  rcases (minTriangleArea_nonneg P).eq_or_lt with h0 | hpos
  · rw [← h0]; norm_num
  obtain ⟨a, ha⟩ := hA
  obtain ⟨c, hc⟩ := hC
  rcases support_core hn P hP a c ha hc hpos with h | ⟨r, hra, hrc, hr⟩
  · exact h
  · exfalso
    have hac : a ≠ c := by intro h; rw [h, hc] at ha; simp [Prod.ext_iff] at ha
    apply hnt a r c
    have hne := sarea_ne_zero_of_min_pos hpos a r c (Ne.symm hra) hrc hac
    rw [← ha, ← hc] at hr
    exact hull_eq_of_closed P a r c hne hr

/-- **Nontriangular-hull lemma** (`CORNER_FAMILIES:NontriangularHullLemma`), affine form (the
"support-triangle lemma" of `TYPE_II_COMPLETION.md` lines 28–33, and of §12 here): at least six
points in the closed triangle `UVW` of area `S > 0`, including two of its vertices `U, V`, whose
convex hull is not a triangle, have minimum triangle area at most `7S/64`. It follows from the
`T` form by the affine map `UVW → T` sending `U, V` to the diagonal endpoints.
`hand/CORNER_FAMILIES.md`, lines 306–379 (rescaled from area `1/2`).

Uses: CORNER_FAMILIES:NontriangularHullLemma -/
theorem nontriangularHullLemma_affine {n : ℕ} (hn : 6 ≤ n) (P : Fin n → Point)
    (U V W : Point) (hUVW : sarea U V W ≠ 0) (hP : ∀ i, InClosedTriangle (P i) U V W)
    (hU : ∃ i, P i = U) (hV : ∃ i, P i = V)
    (hnt : ∀ a b c : Fin n,
      convexHull ℝ (Set.range P) ≠ convexHull ℝ ({P a, P b, P c} : Set Point)) :
    minTriangleArea P ≤ 7 / 64 * triangleArea U V W := by
  set S := sarea U V W with hS
  -- the affine map `L X = (1 - [VWX]/S, [WUX]/S)`: `U ↦ (0,0)`, `V ↦ (1,1)`, `W ↦ (1,0)`
  set L := affineMap ((W.2 - V.2) / S) (-(W.1 - V.1) / S) (-(U.2 - W.2) / S) ((U.1 - W.1) / S)
    (1 - (-(W.1 - V.1) * V.2 + (W.2 - V.2) * V.1) / S)
    ((-(U.1 - W.1) * W.2 + (U.2 - W.2) * W.1) / S) with hL
  have Lx : ∀ X : Point, L X = (1 - sarea V W X / S, sarea W U X / S) := by
    intro X; rw [hL]; unfold affineMap; ext <;> simp only <;> field_simp <;> unfold sarea <;> ring
  have hdet : (W.2 - V.2) / S * ((U.1 - W.1) / S) - (-(W.1 - V.1) / S) * (-(U.2 - W.2) / S) =
      -(1 / S) := by
    field_simp; rw [hS]; unfold sarea; ring
  have hsL : ∀ x y z : Point, sarea (L x) (L y) (L z) = -(1 / S) * sarea x y z := by
    intro x y z; rw [hL, sarea_affineMap, hdet]
  have hmin : minTriangleArea (L ∘ P) = 1 / |S| * minTriangleArea P := by
    rw [hL, minTriangleArea_affineMap, hdet, abs_neg, abs_div, abs_one]
  rcases (minTriangleArea_nonneg P).eq_or_lt with h0 | hpos
  · rw [← h0]; exact mul_nonneg (by norm_num) (triangleArea_nonneg _ _ _)
  have hS0 : 0 < |S| := abs_pos.2 hUVW
  have hpos' : 0 < minTriangleArea (L ∘ P) := by rw [hmin]; positivity
  obtain ⟨a, ha⟩ := hU
  obtain ⟨b, hb⟩ := hV
  have e3 : ∀ X, sarea U V X + sarea V W X + sarea W U X = S := fun X => by
    rw [hS]; unfold sarea; ring
  have hLT : ∀ i, (L ∘ P) i ∈ lowerTriangle := by
    intro i
    simp only [Function.comp, Lx]
    have e := e3 (P i)
    rcases hP i with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
    · have hS0 : 0 < S := by
        rcases hUVW.lt_or_gt with h' | h'
        · exfalso; linarith
        · exact h'
      refine ⟨div_nonneg h3 hS0.le, ?_, ?_⟩
      · show sarea W U (P i) / S ≤ 1 - sarea V W (P i) / S
        have : (sarea W U (P i) + sarea V W (P i)) / S ≤ 1 := by
          rw [div_le_one hS0]; linarith
        rw [add_div] at this; linarith
      · show 1 - sarea V W (P i) / S ≤ 1
        have := div_nonneg h2 hS0.le; linarith
    · have hS0 : S < 0 := by
        rcases hUVW.lt_or_gt with h' | h'
        · exact h'
        · exfalso; linarith
      refine ⟨div_nonneg_of_nonpos h3 hS0.le, ?_, ?_⟩
      · show sarea W U (P i) / S ≤ 1 - sarea V W (P i) / S
        have : (sarea W U (P i) + sarea V W (P i)) / S ≤ 1 := by
          rw [div_le_iff_of_neg hS0]; linarith
        rw [add_div] at this; linarith
      · show 1 - sarea V W (P i) / S ≤ 1
        have := div_nonneg_of_nonpos h2 hS0.le; linarith
  have hLa : (L ∘ P) a = (0, 0) := by
    simp only [Function.comp, Lx, ha]
    ext
    · simp only; rw [show sarea V W U = S by rw [hS]; unfold sarea; ring, div_self hUVW]; ring
    · simp only; rw [show sarea W U U = 0 by unfold sarea; ring]; simp
  have hLb : (L ∘ P) b = (1, 1) := by
    simp only [Function.comp, Lx, hb]
    ext
    · simp only; rw [show sarea V W V = 0 by unfold sarea; ring]; simp
    · simp only; rw [show sarea W U V = S by rw [hS]; unfold sarea; ring, div_self hUVW]
  rcases support_core hn (L ∘ P) hLT a b hLa hLb hpos' with h | ⟨r, hra, hrb, hr⟩
  · rw [hmin, triangleArea_eq, ← hS] at *
    rw [div_mul_eq_mul_div, one_mul, div_le_iff₀ hS0] at h
    linarith
  · exfalso
    have hab : a ≠ b := by intro h; rw [h, hLb] at hLa; simp [Prod.ext_iff] at hLa
    apply hnt a r b
    have hne := sarea_ne_zero_of_min_pos hpos a r b (Ne.symm hra) hrb hab
    apply hull_eq_of_closed P a r b hne
    intro i
    have hi := hr i
    rw [← hLa, ← hLb] at hi
    change InClosedTriangle (L (P i)) (L (P a)) (L (P r)) (L (P b)) at hi
    unfold InClosedTriangle at hi ⊢
    rw [hsL, hsL, hsL] at hi
    set κ := -(1 / S)
    have hk : κ ≠ 0 := by simp [κ, hUVW]
    have np : ∀ x : ℝ, κ < 0 → 0 ≤ κ * x → x ≤ 0 := fun x hk' h => by
      by_contra hx; push Not at hx; nlinarith [mul_neg_of_neg_of_pos hk' hx]
    have nn : ∀ x : ℝ, κ < 0 → κ * x ≤ 0 → 0 ≤ x := fun x hk' h => by
      by_contra hx; push Not at hx; nlinarith [mul_pos_of_neg_of_neg hk' hx]
    have pp : ∀ x : ℝ, 0 < κ → 0 ≤ κ * x → 0 ≤ x := fun x hk' h => by
      by_contra hx; push Not at hx; nlinarith [mul_neg_of_pos_of_neg hk' hx]
    have pn : ∀ x : ℝ, 0 < κ → κ * x ≤ 0 → x ≤ 0 := fun x hk' h => by
      by_contra hx; push Not at hx; nlinarith [mul_pos hk' hx]
    rcases hk.lt_or_gt with hk' | hk'
    · rcases hi with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
      · exact Or.inr ⟨np _ hk' h1, np _ hk' h2, np _ hk' h3⟩
      · exact Or.inl ⟨nn _ hk' h1, nn _ hk' h2, nn _ hk' h3⟩
    · rcases hi with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
      · exact Or.inl ⟨pp _ hk' h1, pp _ hk' h2, pp _ hk' h3⟩
      · exact Or.inr ⟨pn _ hk' h1, pn _ hk' h2, pn _ hk' h3⟩

/-- **Endpoint lemma** (`CORNER_FAMILIES:EndpointLemma`): seven points of the triangle `T`
including `A = (0,0)` and `C = (1,1)` have minimum triangle area at most `7/128` (by the
nontriangular-hull lemma or, for a triangular hull, the triangular-hull lemma
`t ≤ 1/(14 + 4√2) < 7/128`). `hand/CORNER_FAMILIES.md`, lines 381–396.

Uses: CORNER_FAMILIES:NontriangularHullLemma, CORNER_FAMILIES:TriangularHullLemma -/
theorem endpointLemma (P : Fin 7 → Point) (hP : ∀ i, P i ∈ lowerTriangle)
    (hA : ∃ i, P i = (0, 0)) (hC : ∃ i, P i = (1, 1)) :
    minTriangleArea P ≤ 7 / 128 := by
  rcases (minTriangleArea_nonneg P).eq_or_lt with h0 | hpos
  · rw [← h0]; norm_num
  obtain ⟨a, ha⟩ := hA
  obtain ⟨c, hc⟩ := hC
  rcases support_core (by norm_num) P hP a c ha hc hpos with h | ⟨r, hra, hrc, hr⟩
  · exact h
  have hac : a ≠ c := by intro h; rw [h, hc] at ha; simp [Prod.ext_iff] at ha
  -- the four other points
  have hT : 3 < (((Finset.univ : Finset (Fin 7)).erase a).erase c |>.erase r).card := by
    rw [Finset.card_erase_of_mem, Finset.card_erase_of_mem, Finset.card_erase_of_mem]
    · simp
    · simp
    · simp [Ne.symm hac]
    · simp [hra, hrc]
  obtain ⟨i₁, i₂, i₃, i₄, h1, h2, h3, h4, h12, h13, h14, h23, h24, h34⟩ :=
    Finset.three_lt_card_iff.1 hT
  simp only [Finset.mem_erase, Finset.mem_univ, and_true] at h1 h2 h3 h4
  obtain ⟨h1r, h1c, h1a⟩ := h1
  obtain ⟨h2r, h2c, h2a⟩ := h2
  obtain ⟨h3r, h3c, h3a⟩ := h3
  obtain ⟨h4r, h4c, h4a⟩ := h4
  have hARC : 0 < sarea (P a) (P r) (P c) := by
    rw [ha, hc]; unfold sarea; simp
    have := (hP r).2.1
    have hne := sarea_ne_zero_of_min_pos hpos a r c (Ne.symm hra) hrc hac
    rw [ha, hc] at hne; unfold sarea at hne; simp at hne
    exact lt_of_le_of_ne this (fun h => hne (by linarith))
  have inside : ∀ i, i ≠ r → i ≠ c → i ≠ a → InsideTriangle (P i) (P a) (P r) (P c) := by
    intro i hir hic hia
    have n1 := sarea_ne_zero_of_min_pos hpos a r i (Ne.symm hra) (Ne.symm hir) (Ne.symm hia)
    have n2 := sarea_ne_zero_of_min_pos hpos r c i hrc (Ne.symm hic) (Ne.symm hir)
    have n3 := sarea_ne_zero_of_min_pos hpos c a i (Ne.symm hac) (Ne.symm hia) (Ne.symm hic)
    have e := sarea_add_sarea_add_sarea (P a) (P r) (P c) (P i)
    have hi := hr i
    rw [← ha, ← hc] at hi
    rcases hi with ⟨g1, g2, g3⟩ | ⟨g1, g2, g3⟩
    · exact Or.inl ⟨lt_of_le_of_ne g1 (Ne.symm n1), lt_of_le_of_ne g2 (Ne.symm n2),
        lt_of_le_of_ne g3 (Ne.symm n3)⟩
    · exfalso; linarith
  have hX' : ∀ x, InsideTriangle (![P i₁, P i₂, P i₃, P i₄] x) (P a) (P r) (P c) := by
    intro x; fin_cases x
    · exact inside i₁ h1r h1c h1a
    · exact inside i₂ h2r h2c h2a
    · exact inside i₃ h3r h3c h3a
    · exact inside i₄ h4r h4c h4a
  have h7 := triangularHullLemma (P a) (P r) (P c) _ hX' (minTriangleArea P)
    (min_sub (le_refl _) _ ![a, r, c, i₁, i₂, i₃, i₄] (by norm_num) (by inj_tac)
      (by intro x; fin_cases x <;> simp [sevenConfig]))
  have harea : triangleArea (P a) (P r) (P c) ≤ 1 / 2 := by
    rw [triangleArea_eq, abs_of_pos hARC, ha, hc]; unfold sarea; simp
    linarith [(hP r).1, (hP r).2.2]
  have hs2 := sqrt2_gt
  nlinarith

/-- Five free points on or below the diagonal give (9) through the endpoint lemma. -/
theorem typeIII_five_lower {U V W X Y Z : Point} (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (e₁ e₂ e₃ e₄ e₅ : Fin 6)
    (hinj : Function.Injective ![(0 : Fin 9), 2, fr e₁, fr e₂, fr e₃, fr e₄, fr e₅])
    (hl : ∀ e ∈ [e₁, e₂, e₃, e₄, e₅],
      (freeSix U V W X Y Z e).2 ≤ (freeSix U V W X Y Z e).1) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  set F := freeSix U V W X Y Z
  have hlow : ∀ e ∈ [e₁, e₂, e₃, e₄, e₅], F e ∈ lowerTriangle := by
    intro e he
    have hm := freeSix_mem hU hV hW hX hY hZ e
    exact ⟨hm.2.2.1, hl e he, hm.2.1⟩
  have h7 := endpointLemma ![(0, 0), (1, 1), F e₁, F e₂, F e₃, F e₄, F e₅]
    (by intro i; fin_cases i
        · exact ⟨le_refl _, le_refl _, by norm_num⟩
        · exact ⟨by norm_num, le_refl _, le_refl _⟩
        all_goals exact hlow _ (by simp))
    ⟨0, rfl⟩ ⟨1, rfl⟩
  exact (min_sub (le_refl _) _ _ (by norm_num) hinj
    (by intro i; fin_cases i
        · simp [sevenConfig, typeIIIConfig]
        · simp [sevenConfig, typeIIIConfig]
        all_goals exact (typeIII_fr U V W X Y Z _).symm)).trans h7

/-- **Type-III exclusion (9)** (`CORNER_FAMILIES:TypeIII-le1upper`): a Type-III configuration with
at most one free point above `y = x` has minimum area at most `7/128` (`< A₀`).
`hand/CORNER_FAMILIES.md`, lines 36–45, 398–413.

Uses: CORNER_FAMILIES:EndpointLemma -/
theorem typeIII_le1upper (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h1 : upperCount U V W X Y Z ≤ 1) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  set F := freeSix U V W X Y Z
  have hj : ∃ j : Fin 6, ∀ e, e ≠ j → (F e).2 ≤ (F e).1 := by
    by_contra h
    push Not at h
    obtain ⟨e₁, -, h₁⟩ := h 0
    obtain ⟨e₂, h₂₁, h₂⟩ := h e₁
    have : 1 < upperCount U V W X Y Z :=
      (Set.one_lt_ncard (Set.toFinite _)).2 ⟨e₁, h₁, e₂, h₂, Ne.symm h₂₁⟩
    omega
  obtain ⟨j, hj⟩ := hj
  fin_cases j
  · exact typeIII_five_lower hU hV hW hX hY hZ 1 2 3 4 5 (by decide)
      (by intro e he; simp at he; apply hj; rcases he with rfl | rfl | rfl | rfl | rfl <;> decide)
  · exact typeIII_five_lower hU hV hW hX hY hZ 0 2 3 4 5 (by decide)
      (by intro e he; simp at he; apply hj; rcases he with rfl | rfl | rfl | rfl | rfl <;> decide)
  · exact typeIII_five_lower hU hV hW hX hY hZ 0 1 3 4 5 (by decide)
      (by intro e he; simp at he; apply hj; rcases he with rfl | rfl | rfl | rfl | rfl <;> decide)
  · exact typeIII_five_lower hU hV hW hX hY hZ 0 1 2 4 5 (by decide)
      (by intro e he; simp at he; apply hj; rcases he with rfl | rfl | rfl | rfl | rfl <;> decide)
  · exact typeIII_five_lower hU hV hW hX hY hZ 0 1 2 3 5 (by decide)
      (by intro e he; simp at he; apply hj; rcases he with rfl | rfl | rfl | rfl | rfl <;> decide)
  · exact typeIII_five_lower hU hV hW hX hY hZ 0 1 2 3 4 (by decide)
      (by intro e he; simp at he; apply hj; rcases he with rfl | rfl | rfl | rfl | rfl <;> decide)

end Heilbronn.CornerFamilies
