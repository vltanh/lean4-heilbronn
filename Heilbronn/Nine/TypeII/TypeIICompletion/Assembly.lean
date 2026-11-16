module

public import Heilbronn.Nine.TypeII.TypeII
public import Heilbronn.Nine.TypeII.TypeIICompletion.Sectors
public import Heilbronn.Nine.TypeII.BalancedRightMixed
public import Heilbronn.Nine.TypeII.BalancedBottomInnerSector

/-! # The complete balanced count row is excluded (`docs/proof/nine/TYPE_II_COMPLETION.md`, §11)

`TYPE_II_COMPLETION.md` lines 1300–1371.

* `theorem11` (**Theorem 11**): a Type-II configuration with `0 < b ≤ 1/2` and counts
  `(2,2,2)` has an actual triangle of area strictly less than `A₀`.

The proof assembles `TYPE_II_BALANCED.md` (Theorem and §§5–6), Theorem 6, Lemma 4, Corollary 5
(with `FOUR_INTERIOR_QUADRILATERALS.md` Theorem 1), Theorem 8, Theorem 9, Theorem 10,
`BALANCED_RIGHT_MIXED.md` and `BALANCED_BOTTOM_INNER_SECTOR.md`. Combined with `TYPE_II.md` §8,
every remaining Type-II configuration has count `(1,2,3)`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeIICompletion

open Heilbronn.Nine.TypeII Heilbronn.Nine.TypeIIBalanced

/-! ### The final placement and the four cells (§§9–10 and the two companion notes) -/

/-- The four cells of the lines `ES`, `LR` exclude the final placement. -/
theorem final_excluded {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) : False := by
  have h128 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S) :=
    le_trans A₀_bounds.1.le hmin
  have hpos : 0 < minTriangleArea (typeIIConfig l b L P Q R S) :=
    lt_of_lt_of_le (by norm_num) h128
  have n1 : sarea (ptE l) S Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 8 6
  have n2 : sarea L R Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 7 6
  rcases lt_or_gt_of_ne n1 with h1 | h1 <;> rcases lt_or_gt_of_ne n2 with h2 | h2
  · -- below both lines: `BALANCED_BOTTOM_INNER_SECTOR.md`
    obtain ⟨⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, hb2, hL, hLce, hP,
      hPce, hQ, hQce, hR, hSr⟩, hS, sL, sP, sQ, sS⟩ := hfp
    have hRr : b + (1 - b) * R.2 < R.1 := by
      simp only [IsRight, sarea, ptB, ptC] at hR; linarith
    have hset : BalancedBottomInnerSector.BottomSetting l b L Q R S :=
      ⟨hb, hb1, hl.le, hl1, hu0, by nlinarith, by nlinarith, hr1, hLsq, hSsq, hQsq, hL, hLce,
        hS, hQ.1, hQ.2.1, sQ.1, by linarith [sarea_swap₂₃ (ptE l) S Q],
        by linarith [sarea_swap₂₃ L R Q]⟩
    have h8 := BalancedBottomInnerSector.mainTheorem hset
    have : A₀ ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, Q, R, S] :=
      tc_min_sub hmin _ ![0, 1, 2, 3, 4, 6, 7, 8] ![0, 1, 2, 3, 4, 0, 5, 6, 7] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> rfl)
    linarith [A₀_bounds.1]
  · -- below `ES`, above `LR`: `BALANCED_RIGHT_MIXED.md`
    have := BalancedRightMixed.mainTheorem hfp ⟨h1, h2⟩
    linarith
  · -- above `ES`, below `LR`: Theorem 10
    have := theorem10 hfp ⟨h1, h2⟩
    linarith
  · -- above both: Theorem 9
    have := theorem9 hfp ⟨h1, h2⟩
    linarith

/-- The balanced placement with `S` strictly inside `BRC` is excluded (Corollary 5, Theorem 8 and
the final placement). -/
theorem placement_tri_excluded {l b : ℝ} {L P Q R S : Point}
    (hpl : BalancedPlacement l b L P Q R S) (hS : InTriangle S (ptB b) R ptC)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) : False := by
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, sL, sP, hsec⟩ := corollary5 hpl hS hmin
  rcases hsec with ⟨sQ, sS⟩ | ⟨sS, sQ⟩
  · exact final_excluded ⟨hpl, hS, sL, sP, sQ, sS⟩ hmin
  · have := theorem8 hpl hS sL sP sS sQ
    linarith

/-- The balanced placement is excluded (Theorem 6 and the triangular-right branch). -/
theorem placement_excluded {l b : ℝ} {L P Q R S : Point}
    (hpl : BalancedPlacement l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) : False := by
  rcases theorem6_core hpl hmin with hS | hR
  · exact placement_tri_excluded hpl hS hmin
  · obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, hRsq, hSsq⟩, hb2, hL, hLce, hP, hPce, hQ, hQce,
      hR', hS'⟩ := hpl
    exact placement_tri_excluded ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, hSsq, hRsq⟩, hb2, hL, hLce,
      hP, hPce, hQ, hQce, hS', hR'⟩ hR (by rw [tc_min_swapRS]; exact hmin)

/-- The labelled balanced row is excluded at least area `A₀`. -/
theorem balancedRow_excluded {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) : False := by
  rcases claim_balanced_placement hrow (le_trans A₀_bounds.2.2.1.le hmin) with hpl | hpl
  · exact placement_excluded hpl hmin
  · exact placement_excluded hpl (by rw [tc_min_swapPQ]; exact hmin)

/-! ### Counts to labels -/

/-- The three containers are exclusive and, at positive least area, exhaustive for a free point
of the square. -/
theorem container_trichotomy {b : ℝ} {X : Point} (_hb : 0 < b) (_hb1 : b < 1)
    (hX : X ∈ unitSquare) (h1 : sarea ptD (ptB b) X ≠ 0) (h2 : sarea (ptB b) ptC X ≠ 0)
    (h3 : sarea ptC ptD X ≠ 0) :
    (IsLeft b X ∨ IsCentral b X ∨ IsRight b X) ∧ ¬ (IsLeft b X ∧ IsCentral b X) ∧
      ¬ (IsLeft b X ∧ IsRight b X) ∧ ¬ (IsCentral b X ∧ IsRight b X) := by
  obtain ⟨hx0, hx1, hy0, hy1⟩ := hX
  refine ⟨?_, fun h => ?_, fun h => ?_, fun h => ?_⟩
  · rcases lt_or_gt_of_ne h1 with g1 | g1
    · exact Or.inl g1
    rcases lt_or_gt_of_ne h2 with g2 | g2
    · exact Or.inr (Or.inr g2)
    have g3 : 0 < sarea ptC ptD X := by
      rcases lt_or_gt_of_ne h3 with g3 | g3
      · exfalso; simp only [sarea, ptC, ptD] at g3; linarith
      · exact g3
    exact Or.inr (Or.inl ⟨g1, g2, g3⟩)
  · exact absurd h.2.1 (not_lt.2 h.1.le)
  · obtain ⟨hl, hr⟩ := h
    simp only [IsLeft, IsRight, sarea, ptD, ptB, ptC] at hl hr
    nlinarith [mul_nonneg _hb.le hy0]
  · exact absurd h.2 (not_lt.2 h.1.2.1.le)

-- Note: the proof works at doubled threshold 7/64 in §§5–10, but also uses `TYPE_II_BALANCED.md`
-- §6 (doubled threshold 79/720), the global capacity theorems (`THREE_INTERIOR_TRIANGLES.md`
-- Corollary 5, `FOUR_INTERIOR_QUADRILATERALS.md` Theorem 1) and Theorem 8, which need least area
-- `A₀`; the statement is at `A₀`, so this is consistent.
/-- **Theorem 11** (`TYPE_II_COMPLETION:Theorem11`). Let nine points of the unit square have the
Type-II normalization (5) with `0 < b ≤ 1/2`, and let the left, central and right containers cut
by `DB` and `BC` contain respectively two, two and two of the six points other than `D, C, B`.
Then some actual triangle has area strictly less than `A₀`. `docs/proof/nine/TYPE_II_COMPLETION.md`,
lines 1300–1357.

Uses: TYPE_II_BALANCED:Theorem, TYPE_II_BALANCED:claim-not-both-below-CE,
TYPE_II_BALANCED:claim-not-both-above-CE, TYPE_II_BALANCED:claim-L-above-CE,
TYPE_II_BALANCED:claim-balanced-placement, TYPE_II_COMPLETION:Theorem6,
TYPE_II_COMPLETION:Lemma4, TYPE_II_COMPLETION:Corollary5, FOUR_INTERIOR_QUADRILATERALS:Theorem1,
TYPE_II_COMPLETION:Theorem8, TYPE_II_COMPLETION:Theorem9, TYPE_II_COMPLETION:Theorem10,
BALANCED_RIGHT_MIXED:Theorem, BALANCED_BOTTOM_INNER_SECTOR:Theorem,
TYPE_II:claim-container-assignment. -/
theorem theorem11 {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hb2 : b ≤ 1 / 2) (hcount : typeIICounts b V W X Y Z = (2, 2, 2)) :
    minTriangleArea (typeIIConfig l b V W X Y Z) < A₀ := by
  classical
  by_contra hcon
  push Not at hcon
  have hpos : 0 < minTriangleArea (typeIIConfig l b V W X Y Z) := lt_of_lt_of_le A₀_pos hcon
  obtain ⟨hb, hb1, hl, hl1, hV, hW, hX, hY, hZ⟩ := hd
  set pts := freePts V W X Y Z with hpts
  set Pc := typeIIConfig l b V W X Y Z with hPc
  have hfree : ∀ j : Fin 5, Pc ⟨j.val + 4, by omega⟩ = pts j := by
    intro j; fin_cases j <;> rfl
  have hsq : ∀ j : Fin 5, pts j ∈ unitSquare := by
    intro j; fin_cases j
    · exact hV
    · exact hW
    · exact hX
    · exact hY
    · exact hZ
  -- the trichotomy for each free point
  have htri : ∀ j : Fin 5, (IsLeft b (pts j) ∨ IsCentral b (pts j) ∨ IsRight b (pts j)) ∧
      ¬ (IsLeft b (pts j) ∧ IsCentral b (pts j)) ∧ ¬ (IsLeft b (pts j) ∧ IsRight b (pts j)) ∧
      ¬ (IsCentral b (pts j) ∧ IsRight b (pts j)) := by
    intro j
    have k : (⟨j.val + 4, by omega⟩ : Fin 9) ≠ 0 ∧ (⟨j.val + 4, by omega⟩ : Fin 9) ≠ 1 ∧
        (⟨j.val + 4, by omega⟩ : Fin 9) ≠ 3 := by
      refine ⟨?_, ?_, ?_⟩ <;> intro h <;> rw [Fin.ext_iff] at h <;> simp at h
    have e1 := sarea_ne_zero_of_min_pos hpos 0 3 ⟨j.val + 4, by omega⟩ (by decide)
      (Ne.symm k.2.2) (Ne.symm k.1)
    have e2 := sarea_ne_zero_of_min_pos hpos 3 1 ⟨j.val + 4, by omega⟩ (by decide)
      (Ne.symm k.2.1) (Ne.symm k.2.2)
    have e3 := sarea_ne_zero_of_min_pos hpos 1 0 ⟨j.val + 4, by omega⟩ (by decide)
      (Ne.symm k.1) (Ne.symm k.2.1)
    rw [hfree] at e1 e2 e3
    exact container_trichotomy hb hb1 (hsq j) e1 e2 e3
  -- the counts
  simp only [typeIICounts, Prod.mk.injEq, ← hpts] at hcount
  obtain ⟨hcL, hcC, hcR⟩ := hcount
  have hcL' : countLeft b pts = 1 := by omega
  obtain ⟨iL, hiL⟩ := Finset.card_eq_one.1 hcL'
  obtain ⟨iP, iQ, hPQ, hiPQ⟩ := Finset.card_eq_two.1 hcC
  obtain ⟨iR, iS, hRS, hiRS⟩ := Finset.card_eq_two.1 hcR
  have mL : ∀ j, IsLeft b (pts j) ↔ j = iL := by
    intro j
    have := congrArg (j ∈ ·) hiL
    simpa using this
  have mC : ∀ j, IsCentral b (pts j) ↔ j = iP ∨ j = iQ := by
    intro j
    have := congrArg (j ∈ ·) hiPQ
    simpa using this
  have mR : ∀ j, IsRight b (pts j) ↔ j = iR ∨ j = iS := by
    intro j
    have := congrArg (j ∈ ·) hiRS
    simpa using this
  have cL := (mL iL).2 rfl
  have cP := (mC iP).2 (Or.inl rfl)
  have cQ := (mC iQ).2 (Or.inr rfl)
  have cR := (mR iR).2 (Or.inl rfl)
  have cS := (mR iS).2 (Or.inr rfl)
  -- the relabelling
  set f : Fin 5 → Fin 5 := ![iL, iP, iQ, iR, iS] with hf
  have hfinj : Function.Injective f := by
    have dLC : ∀ j k, IsLeft b (pts j) → IsCentral b (pts k) → j ≠ k := by
      rintro j k hj hk rfl; exact (htri j).2.1 ⟨hj, hk⟩
    have dLR : ∀ j k, IsLeft b (pts j) → IsRight b (pts k) → j ≠ k := by
      rintro j k hj hk rfl; exact (htri j).2.2.1 ⟨hj, hk⟩
    have dCR : ∀ j k, IsCentral b (pts j) → IsRight b (pts k) → j ≠ k := by
      rintro j k hj hk rfl; exact (htri j).2.2.2 ⟨hj, hk⟩
    have n1 := dLC _ _ cL cP
    have n2 := dLC _ _ cL cQ
    have n3 := dLR _ _ cL cR
    have n4 := dLR _ _ cL cS
    have n5 := dCR _ _ cP cR
    have n6 := dCR _ _ cP cS
    have n7 := dCR _ _ cQ cR
    have n8 := dCR _ _ cQ cS
    intro a c h
    fin_cases a <;> fin_cases c <;> simp only [hf, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val, Fin.reduceFinMk, Fin.zero_eta, Fin.mk_one] at h <;>
      first | rfl | (exfalso; tauto)
  let τ : Fin 9 → Fin 9 := fun i =>
    if h : i.val < 4 then i else ⟨(f ⟨i.val - 4, by omega⟩).val + 4, by omega⟩
  have hτinj : Function.Injective τ := by
    intro a c h
    simp only [τ] at h
    by_cases ha : a.val < 4 <;> by_cases hc : c.val < 4 <;> simp only [ha, hc, dite_true,
      dite_false] at h
    · exact h
    · exfalso; rw [Fin.ext_iff] at h; simp at h; omega
    · exfalso; rw [Fin.ext_iff] at h; simp at h; omega
    · rw [Fin.ext_iff] at h; simp only [add_left_inj] at h
      have := hfinj (Fin.ext h)
      rw [Fin.ext_iff] at this; simp at this
      exact Fin.ext (by omega)
  have hmin' : A₀ ≤ minTriangleArea (typeIIConfig l b (pts iL) (pts iP) (pts iQ) (pts iR)
      (pts iS)) := by
    have e : typeIIConfig l b (pts iL) (pts iP) (pts iQ) (pts iR) (pts iS) = Pc ∘ τ := by
      funext i
      fin_cases i
      · rfl
      · rfl
      · rfl
      · rfl
      · show pts iL = Pc (τ 4); simp only [τ]; rw [← hfree]; rfl
      · show pts iP = Pc (τ 5); simp only [τ]; rw [← hfree]; rfl
      · show pts iQ = Pc (τ 6); simp only [τ]; rw [← hfree]; rfl
      · show pts iR = Pc (τ 7); simp only [τ]; rw [← hfree]; rfl
      · show pts iS = Pc (τ 8); simp only [τ]; rw [← hfree]; rfl
    rw [e]; exact hcon.trans (le_min_comp (by norm_num) Pc hτinj)
  exact balancedRow_excluded ⟨⟨hb, hb1, hl, hl1, hsq iL, hsq iP, hsq iQ, hsq iR, hsq iS⟩, hb2,
    cL, cP, cQ, cR, cS⟩ hmin'

end Heilbronn.Nine.TypeIICompletion
