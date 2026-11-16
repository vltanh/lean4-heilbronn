module

public import Heilbronn.Seven.Interior.Sound
public import Heilbronn.Seven.Interior.WordTable

/-! # Ray words of the points inside the anchor heptagon

`SEVEN_BOUNDARY_MIXED_LOWER.md` (10), `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (11): a point
strictly inside the anchor heptagon and collinear with no two anchors has one of the 57 ray words
(`word_exists`). The geometric input is the radial monotonicity at each anchor `O = V_i`
(`mono_step`): the rays from `O` to the other anchors are angularly ordered, by the identity
`[OUX][OMW] = [OUM][OXW] + [OMX][OUW]` with `W = V_{i-1}`; the finite part is
`Model.tableOK_true`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenInterior

open Model SevenBoundary

variable {a h b c d e f : ℝ} {P Q X : Point}

/-- `X` has the ray word `w` with respect to the anchors of `V`: for anchors `i ≠ j`,
`[V_i V_j X] > 0` exactly when `wsign w i j`. -/
def WordAt (V : ℕ → Point) (X : Point) (w : ℕ) : Prop :=
  ∀ i j, i < 7 → j < 7 → i ≠ j → (0 < sarea (V i) (V j) X ↔ wsign w i j = true)

/-- One step of the radial order at `O`: `[OUX][OMW] = [OUM][OXW] + [OMX][OUW]`. -/
theorem mono_step {O U M W X : Point} (h1 : 0 < sarea O U M) (h2 : 0 < sarea O X W)
    (h3 : 0 < sarea O U W) (h4 : 0 < sarea O M W) (hM : 0 < sarea O M X) : 0 < sarea O U X := by
  have e : sarea O U X * sarea O M W = sarea O U M * sarea O X W + sarea O M X * sarea O U W := by
    unfold sarea; ring
  have : 0 < sarea O U X * sarea O M W := by rw [e]; exact add_pos (mul_pos h1 h2) (mul_pos hM h3)
  exact pos_of_mul_pos_left this h4.le

/-- Three anchor indices in counterclockwise cyclic order. -/
def Cyc (i j k : ℕ) : Prop := (i < j ∧ j < k) ∨ (j < k ∧ k < i) ∨ (k < i ∧ i < j)

theorem cyc_pos (hN : SevenNormal a h b c d e f) {i j k : ℕ} (hi : i < 7) (hj : j < 7)
    (hk : k < 7) (hc : Cyc i j k) :
    0 < sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q j) (cfg a h b c d e f P Q k) := by
  rcases hc with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact anchor_pos hN h1 h2 hk
  · rw [← sarea_cycle]; exact anchor_pos hN h1 h2 hi
  · rw [← sarea_cycle, ← sarea_cycle]; exact anchor_pos hN h1 h2 hj

theorem edge_pos (hX : InHeptagon a h b c d e f X) {i : ℕ} (hi : i < 7) :
    0 < sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q ((i + 1) % 7)) X := by
  obtain ⟨e0, e1, e2, e3, e4, e5, e6⟩ := hX
  interval_cases i <;> simp only [cfg, Nat.reduceAdd, Nat.reduceMod] <;> assumption

/-- The radial monotonicity at the anchor `V_i`: `[V_i V_{i+m+1} X] > 0 → [V_i V_{i+m} X] > 0`
for `1 ≤ m ≤ 4` (indices mod 7). -/
theorem mono (hN : SevenNormal a h b c d e f) (hX : InHeptagon a h b c d e f X) {i m : ℕ}
    (hi : i < 7) (hm1 : 1 ≤ m) (hm4 : m ≤ 4)
    (hpos : 0 < sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q ((i + m + 1) % 7)) X) :
    0 < sarea (cfg a h b c d e f P Q i) (cfg a h b c d e f P Q ((i + m) % 7)) X := by
  have hW : 0 < sarea (cfg a h b c d e f P Q i) X (cfg a h b c d e f P Q ((i + 6) % 7)) := by
    have := edge_pos (P := P) (Q := Q) hX (i := (i + 6) % 7) (by omega)
    rw [show ((i + 6) % 7 + 1) % 7 = i by omega] at this
    rw [sarea_cycle]; exact this
  have c1 : Cyc i ((i + m) % 7) ((i + m + 1) % 7) := by unfold Cyc; omega
  have c2 : Cyc i ((i + m) % 7) ((i + 6) % 7) := by unfold Cyc; omega
  have c3 : Cyc i ((i + m + 1) % 7) ((i + 6) % 7) := by unfold Cyc; omega
  exact mono_step (cyc_pos hN hi (by omega) (by omega) c1) hW
    (cyc_pos hN hi (by omega) (by omega) c2) (cyc_pos hN hi (by omega) (by omega) c3) hpos

/-- **Words** (`SEVEN_BOUNDARY_MIXED_LOWER:eq10`): a free point strictly inside the anchor
heptagon has one of the 57 ray words. -/
theorem Comp.word_exists (H : Comp a h b c d e f P Q) {x : ℕ} (hx : x = 7 ∨ x = 8)
    (hX : InHeptagon a h b c d e f (cfg a h b c d e f P Q x)) :
    ∃ w < 57, WordAt (cfg a h b c d e f P Q) (cfg a h b c d e f P Q x) w := by
  set V := cfg a h b c d e f P Q with hV
  set X := V x with hXdef
  have hne : ∀ i j, i < 7 → j < 7 → i ≠ j → sarea (V i) (V j) X ≠ 0 := by
    intro i j hi hj hij h0
    have := H.area i j x (by omega) (by omega) (by omega) hij (by omega) (by omega)
    rw [h0, abs_zero] at this; linarith
  let bv : ℕ → ℕ → Bool := fun i j => decide (0 < sarea (V i) (V j) X)
  have bv_swap : ∀ i j, i < 7 → j < 7 → i ≠ j → bv j i = !bv i j := by
    intro i j hi hj hij
    have h1 := hne i j hi hj hij
    simp only [bv]
    rw [sarea_swap₁₂ (V i) (V j) X]
    rcases lt_or_gt_of_ne h1 with hs | hs
    · rw [decide_eq_true (by linarith : (0 : ℝ) < -sarea (V i) (V j) X),
        decide_eq_false (not_lt.2 hs.le)]; rfl
    · rw [decide_eq_false (by linarith : ¬ (0 : ℝ) < -sarea (V i) (V j) X),
        decide_eq_true hs]; rfl
  have bv_edge : ∀ i, i < 7 → bv i ((i + 1) % 7) = true := by
    intro i hi; simp only [bv, decide_eq_true_eq]; exact edge_pos hX hi
  have b06 : bv 0 6 = false := by
    have := bv_edge 6 (by norm_num)
    rw [bv_swap 0 6 (by norm_num) (by norm_num) (by norm_num)] at this
    simpa using this
  have hS : ∀ i j, i < 7 → j < 7 → i ≠ j →
      signOf (bv 0 2) (bv 0 3) (bv 0 4) (bv 0 5) (bv 1 3) (bv 1 4) (bv 1 5) (bv 1 6) (bv 2 4)
        (bv 2 5) (bv 2 6) (bv 3 5) (bv 3 6) (bv 4 6) i j = bv i j := by
    have e01 := bv_edge 0 (by norm_num); have e12 := bv_edge 1 (by norm_num)
    have e23 := bv_edge 2 (by norm_num); have e34 := bv_edge 3 (by norm_num)
    have e45 := bv_edge 4 (by norm_num); have e56 := bv_edge 5 (by norm_num)
    simp only [Nat.reduceAdd, Nat.reduceMod] at e01 e12 e23 e34 e45 e56
    intro i j hi hj hij
    interval_cases i <;> interval_cases j <;> simp only [signOf] <;>
      first
      | exact absurd rfl hij
      | exact e01.symm | exact e12.symm | exact e23.symm | exact e34.symm | exact e45.symm
      | exact e56.symm | exact b06.symm
      | (rw [bv_swap _ _ (by norm_num) (by norm_num) (by norm_num)]; simp [e01, e12, e23, e34,
          e45, e56, b06])
  have hmono : ((List.range 7).all fun i => [1, 2, 3, 4].all fun m =>
      !signOf (bv 0 2) (bv 0 3) (bv 0 4) (bv 0 5) (bv 1 3) (bv 1 4) (bv 1 5) (bv 1 6) (bv 2 4)
        (bv 2 5) (bv 2 6) (bv 3 5) (bv 3 6) (bv 4 6) i ((i + m + 1) % 7) ||
      signOf (bv 0 2) (bv 0 3) (bv 0 4) (bv 0 5) (bv 1 3) (bv 1 4) (bv 1 5) (bv 1 6) (bv 2 4)
        (bv 2 5) (bv 2 6) (bv 3 5) (bv 3 6) (bv 4 6) i ((i + m) % 7)) = true := by
    simp only [List.all_eq_true, List.mem_range]
    intro i hi m hm
    have hm' : 1 ≤ m ∧ m ≤ 4 := by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hm; omega
    rw [hS i _ hi (by omega) (by omega), hS i _ hi (by omega) (by omega)]
    cases hb : bv i ((i + m + 1) % 7)
    · simp
    · simp only [bv, decide_eq_true_eq] at hb
      have := mono H.hN hX hi hm'.1 hm'.2 hb
      simp only [Bool.not_true, Bool.false_or, bv, decide_eq_true_eq]; exact this
  have ht := tableOK_true (bv 0 2) (bv 0 3) (bv 0 4) (bv 0 5) (bv 1 3) (bv 1 4) (bv 1 5)
    (bv 1 6) (bv 2 4) (bv 2 5) (bv 2 6) (bv 3 5) (bv 3 6) (bv 4 6)
  rw [tableOK, hmono, Bool.not_true, Bool.false_or] at ht
  simp only [List.any_eq_true, List.mem_range, List.all_eq_true, Bool.or_eq_true, beq_iff_eq]
    at ht
  obtain ⟨w, hw, hall⟩ := ht
  refine ⟨w, hw, fun i j hi hj hij => ?_⟩
  have := hall i hi j hj
  rcases this with h | h
  · exact absurd h hij
  · rw [h, hS i j hi hj hij]; simp [bv]

end Heilbronn.SevenInterior
