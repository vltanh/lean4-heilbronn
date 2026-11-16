module

public import Heilbronn.Common.Config

/-!
# The two-interior-point lemma

`twoInteriorPointLemma`: a triangle containing two points strictly inside, all of whose triangles
have area at least `t > 0`, has area at least `(4 + 2√3)t`. It rests on the identity
`S·d = (d + e₂)X₁ + (d + e₁)X₂ + (d + e₁)(d + e₂)` (`two_core`); `two_ccw` is the doubled form for
a counterclockwise triangle, `inside_orient` puts two interior points in a common orientation, and
`half_le` passes from doubled signed areas to areas.
-/

@[expose] public section

noncomputable section
namespace Heilbronn

/-- The two-interior-point bound in signed form. `R` is the vertex alone on its side of the line
`PQ` (`d = [PQR] > 0`), `S₁, S₂` the other two (`e₁ = -[PQS₁]`, `e₂ = -[PQS₂]`), `X₁ = [RS₁P]`,
`X₂ = [RQS₂]`; the identity `S·d = (d + e₂)X₁ + (d + e₁)X₂ + (d + e₁)(d + e₂)` and
`d + 3s²/d ≥ 2√3 s` give `[RS₁S₂] ≥ (4 + 2√3)s`. -/
theorem two_core {R S₁ S₂ P Q : Point} {s : ℝ} (hs : 0 < s) (hd : s ≤ sarea P Q R)
    (he₁ : s ≤ -sarea P Q S₁) (he₂ : s ≤ -sarea P Q S₂) (hX₁ : s ≤ sarea R S₁ P)
    (hX₂ : s ≤ sarea R Q S₂) : (4 + 2 * Real.sqrt 3) * s ≤ sarea R S₁ S₂ := by
  have key : sarea R S₁ S₂ * sarea P Q R =
      (sarea P Q R + -sarea P Q S₂) * sarea R S₁ P + (sarea P Q R + -sarea P Q S₁) * sarea R Q S₂ +
        (sarea P Q R + -sarea P Q S₁) * (sarea P Q R + -sarea P Q S₂) := by
    unfold sarea; ring
  set S := sarea R S₁ S₂
  set d := sarea P Q R
  set e₁ := -sarea P Q S₁
  set e₂ := -sarea P Q S₂
  set X₁ := sarea R S₁ P
  set X₂ := sarea R Q S₂
  have h3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have m1 : (d + s) * s ≤ (d + e₂) * X₁ := mul_le_mul (by linarith) hX₁ hs.le (by linarith)
  have m2 : (d + s) * s ≤ (d + e₁) * X₂ := mul_le_mul (by linarith) hX₂ hs.le (by linarith)
  have m3 : (d + s) * (d + s) ≤ (d + e₁) * (d + e₂) :=
    mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
  have hsq : 0 ≤ d ^ 2 - 2 * Real.sqrt 3 * s * d + 3 * s ^ 2 := by
    have e : d ^ 2 - 2 * Real.sqrt 3 * s * d + 3 * s ^ 2 = (d - Real.sqrt 3 * s) ^ 2 := by
      linear_combination (-s ^ 2) * h3
    rw [e]; positivity
  have : (4 + 2 * Real.sqrt 3) * s * d ≤ S * d := by nlinarith
  exact le_of_mul_le_mul_right this (by linarith)

/-- The two-interior-point lemma for a counterclockwise triangle, in doubled form. -/
theorem two_ccw {A B C P Q : Point} {t : ℝ} (ht : 0 < t) (hP : InTriangle P A B C)
    (hQ : InTriangle Q A B C) (hmin : t ≤ minTriangleArea ![A, B, C, P, Q]) :
    (4 + 2 * Real.sqrt 3) * (2 * t) ≤ sarea A B C := by
  have hs : 0 < 2 * t := by linarith
  obtain ⟨p1, p2, p3⟩ := hP
  obtain ⟨q1, q2, q3⟩ := hQ
  -- the ten triangles
  have tABP : 2 * t ≤ sarea A B P :=
    two_mul_le_sarea_of_nonneg ht p1.le (area_of_le_min hmin 0 1 3)
  have tBCP : 2 * t ≤ sarea B C P :=
    two_mul_le_sarea_of_nonneg ht p2.le (area_of_le_min hmin 1 2 3)
  have tCAP : 2 * t ≤ sarea C A P :=
    two_mul_le_sarea_of_nonneg ht p3.le (area_of_le_min hmin 2 0 3)
  have tABQ : 2 * t ≤ sarea A B Q :=
    two_mul_le_sarea_of_nonneg ht q1.le (area_of_le_min hmin 0 1 4)
  have tBCQ : 2 * t ≤ sarea B C Q :=
    two_mul_le_sarea_of_nonneg ht q2.le (area_of_le_min hmin 1 2 4)
  have tCAQ : 2 * t ≤ sarea C A Q :=
    two_mul_le_sarea_of_nonneg ht q3.le (area_of_le_min hmin 2 0 4)
  have aA : 2 * t ≤ |sarea P Q A| := two_le_abs (area_of_le_min hmin 3 4 0)
  have aB : 2 * t ≤ |sarea P Q B| := two_le_abs (area_of_le_min hmin 3 4 1)
  have aC : 2 * t ≤ |sarea P Q C| := two_le_abs (area_of_le_min hmin 3 4 2)
  have e : sarea B C P * sarea P Q A + sarea C A P * sarea P Q B + sarea A B P * sarea P Q C = 0 := by
    unfold sarea; ring
  have sw : ∀ X : Point, sarea Q P X = -sarea P Q X := fun X => sarea_swap₁₂ _ _ _
  have c1 : sarea A P C = sarea C A P := sarea_cycle C A P
  have c2 : sarea B P A = sarea A B P := sarea_cycle A B P
  have c3 : sarea C P B = sarea B C P := sarea_cycle B C P
  have c4 : sarea A Q C = sarea C A Q := sarea_cycle C A Q
  have c5 : sarea B Q A = sarea A B Q := sarea_cycle A B Q
  have c6 : sarea C Q B = sarea B C Q := sarea_cycle B C Q
  rcases le_or_gt 0 (sarea P Q A) with hA | hA <;> rcases le_or_gt 0 (sarea P Q B) with hB | hB <;>
    rcases le_or_gt 0 (sarea P Q C) with hC | hC
  · -- (+,+,+): impossible
    rw [abs_of_nonneg hA] at aA; rw [abs_of_nonneg hB] at aB; rw [abs_of_nonneg hC] at aC
    nlinarith [mul_pos (by linarith : (0:ℝ) < sarea B C P) (by linarith : (0:ℝ) < sarea P Q A),
      mul_pos (by linarith : (0:ℝ) < sarea C A P) (by linarith : (0:ℝ) < sarea P Q B),
      mul_pos (by linarith : (0:ℝ) < sarea A B P) (by linarith : (0:ℝ) < sarea P Q C)]
  · -- (+,+,-): R = C, swap
    rw [abs_of_nonneg hA] at aA; rw [abs_of_nonneg hB] at aB; rw [abs_of_neg hC] at aC
    have := two_core (R := C) (S₁ := A) (S₂ := B) (P := Q) (Q := P) hs (by rw [sw]; linarith)
      (by rw [sw]; linarith) (by rw [sw]; linarith) (by linarith) (by linarith)
    linarith [sarea_cycle A B C, sarea_cycle B C A]
  · -- (+,-,+): R = B, swap
    rw [abs_of_nonneg hA] at aA; rw [abs_of_neg hB] at aB; rw [abs_of_nonneg hC] at aC
    have := two_core (R := B) (S₁ := C) (S₂ := A) (P := Q) (Q := P) hs (by rw [sw]; linarith)
      (by rw [sw]; linarith) (by rw [sw]; linarith) (by linarith) (by linarith)
    linarith [sarea_cycle A B C, sarea_cycle B C A]
  · -- (+,-,-): R = A
    rw [abs_of_nonneg hA] at aA; rw [abs_of_neg hB] at aB; rw [abs_of_neg hC] at aC
    exact two_core (R := A) (S₁ := B) (S₂ := C) (P := P) (Q := Q) hs (by linarith)
      (by linarith) (by linarith) (by linarith) (by linarith)
  · -- (-,+,+): R = A, swap
    rw [abs_of_neg hA] at aA; rw [abs_of_nonneg hB] at aB; rw [abs_of_nonneg hC] at aC
    exact two_core (R := A) (S₁ := B) (S₂ := C) (P := Q) (Q := P) hs (by rw [sw]; linarith)
      (by rw [sw]; linarith) (by rw [sw]; linarith) (by linarith) (by linarith)
  · -- (-,+,-): R = B
    rw [abs_of_neg hA] at aA; rw [abs_of_nonneg hB] at aB; rw [abs_of_neg hC] at aC
    have := two_core (R := B) (S₁ := C) (S₂ := A) (P := P) (Q := Q) hs (by linarith)
      (by linarith) (by linarith) (by linarith) (by linarith)
    linarith [sarea_cycle A B C, sarea_cycle B C A]
  · -- (-,-,+): R = C
    rw [abs_of_neg hA] at aA; rw [abs_of_neg hB] at aB; rw [abs_of_nonneg hC] at aC
    have := two_core (R := C) (S₁ := A) (S₂ := B) (P := P) (Q := Q) hs (by linarith)
      (by linarith) (by linarith) (by linarith) (by linarith)
    linarith [sarea_cycle A B C, sarea_cycle B C A]
  · -- (-,-,-): impossible
    nlinarith [mul_pos (by linarith : (0:ℝ) < sarea B C P) (neg_pos.2 hA),
      mul_pos (by linarith : (0:ℝ) < sarea C A P) (neg_pos.2 hB),
      mul_pos (by linarith : (0:ℝ) < sarea A B P) (neg_pos.2 hC)]

/-- The two orientations: two points strictly inside `ABC` are inside with the same orientation. -/
theorem inside_orient {X Y A B C : Point} (hX : InsideTriangle X A B C)
    (hY : InsideTriangle Y A B C) :
    (InTriangle X A B C ∧ InTriangle Y A B C) ∨ (InTriangle X A C B ∧ InTriangle Y A C B) := by
  have sw : sarea A C B = -sarea A B C := sarea_swap₂₃ _ _ _
  rcases hX with hX | hX <;> rcases hY with hY | hY
  · exact Or.inl ⟨hX, hY⟩
  · linarith [(inTri_pos hX), (inTri_pos hY)]
  · linarith [(inTri_pos hX), (inTri_pos hY)]
  · exact Or.inr ⟨hX, hY⟩

/-- A lower bound `k·(2t)` on the doubled signed area gives `k·t` on the area. -/
theorem half_le {A B C : Point} {k t : ℝ} (h : k * (2 * t) ≤ sarea A B C) :
    k * t ≤ triangleArea A B C := by
  rw [triangleArea_eq]; linarith [le_abs_self (sarea A B C)]

/-- **Two-interior-point lemma**: a triangle `ABC` containing two points `P, Q` strictly inside,
such that all triangles of the five points have area at least `t > 0`, has area at least
`(4 + 2√3)t`. The proof rests on the identity of `two_core`. -/
theorem twoInteriorPointLemma (A B C P Q : Point) (hP : InsideTriangle P A B C)
    (hQ : InsideTriangle Q A B C) (t : ℝ) (ht : 0 < t)
    (hmin : t ≤ minTriangleArea ![A, B, C, P, Q]) :
    (4 + 2 * Real.sqrt 3) * t ≤ triangleArea A B C := by
  rcases inside_orient hP hQ with ⟨hP, hQ⟩ | ⟨hP, hQ⟩
  · exact half_le (two_ccw ht hP hQ hmin)
  · rw [← triangleArea_swap₂₃]
    exact half_le (two_ccw ht hP hQ (min_sub hmin ![A, C, B, P, Q] ![0, 2, 1, 3, 4] (by norm_num)
      (by decide) (by intro i; fin_cases i <;> simp)))

end Heilbronn
