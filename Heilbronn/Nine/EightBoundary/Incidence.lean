module

public import Heilbronn.Nine.Setup.Value
public import Heilbronn.Nine.EightBoundary.Setting

/-! # Boundary incidences

The counting argument behind `EightBoundary.two_on_each_side` and the relabelling into the normal form
behind `EightBoundary.exists_perm_eq_eightConfig` (`Heilbronn/Nine/EightBoundary/Basic.lean`).

* `two_on_each_side_card`: a closed side holds at most two points; counting point–side incidences, at least
  eight boundary points force exactly eight, no corner, and two points on each side;
* `normal_form_core`: ordering the two points of each side and the ninth point gives the
  permutation onto `eightConfig`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary

open Finset Classical

theorem ncard_eq_card_filter (p : Fin 9 → Prop) [DecidablePred p] :
    {i : Fin 9 | p i}.ncard = (univ.filter p).card := by
  rw [← Set.ncard_coe_finset]; congr 1; ext; simp

/-- A set of indices whose points are pairwise collinear with every third has at most two
elements. -/
theorem card_le_two_of_collinear {P : Fin 9 → Point}
    (hncol : ∀ i j k, i ≠ j → j ≠ k → i ≠ k → sarea (P i) (P j) (P k) ≠ 0)
    (S : Finset (Fin 9)) (hS : ∀ i ∈ S, ∀ j ∈ S, ∀ k ∈ S, sarea (P i) (P j) (P k) = 0) :
    S.card ≤ 2 := by
  by_contra h
  push Not at h
  obtain ⟨i, j, k, hi, hj, hk, hij, hik, hjk⟩ := Finset.two_lt_card_iff.1 h
  exact hncol i j k hij hjk hik (hS i hi j hj k hk)

/-- Point–side incidences: a boundary point lies on at least one closed side, a corner on two. -/
theorem incidence_count (q : Point) (hq : q ∈ unitSquare) :
    (if OnSquareBoundary q then 1 else 0) + (if IsCorner q then 1 else 0) ≤
      (if q.1 = 0 then 1 else 0) + (if q.1 = 1 then 1 else 0) + (if q.2 = 0 then 1 else 0) +
        (if q.2 = 1 then 1 else 0) := by
  obtain ⟨x, y⟩ := q
  simp only [OnSquareBoundary, IsCorner]
  by_cases hx0 : x = 0 <;> by_cases hx1 : x = 1 <;> by_cases hy0 : y = 0 <;>
    by_cases hy1 : y = 1 <;> simp [hx0, hx1, hy0, hy1, hq] <;> split_ifs <;> omega

theorem two_on_each_side_card (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (hncol : ∀ i j k, i ≠ j → j ≠ k → i ≠ k → sarea (P i) (P j) (P k) ≠ 0)
    (h8 : 8 ≤ (univ.filter fun i => OnSquareBoundary (P i)).card) :
    (univ.filter fun i => OnSquareBoundary (P i)).card = 8 ∧ (∀ i, ¬ IsCorner (P i)) ∧
      (univ.filter fun i => (P i).1 = 0).card = 2 ∧ (univ.filter fun i => (P i).2 = 0).card = 2 ∧
      (univ.filter fun i => (P i).1 = 1).card = 2 ∧ (univ.filter fun i => (P i).2 = 1).card = 2 := by
  have hL := card_le_two_of_collinear hncol (univ.filter fun i => (P i).1 = 0) (by
    intro i hi j hj k hk; simp only [mem_filter, mem_univ, true_and] at hi hj hk
    simp [sarea, hi, hj, hk])
  have hR := card_le_two_of_collinear hncol (univ.filter fun i => (P i).1 = 1) (by
    intro i hi j hj k hk; simp only [mem_filter, mem_univ, true_and] at hi hj hk
    simp [sarea, hi, hj, hk])
  have hB := card_le_two_of_collinear hncol (univ.filter fun i => (P i).2 = 0) (by
    intro i hi j hj k hk; simp only [mem_filter, mem_univ, true_and] at hi hj hk
    simp [sarea, hi, hj, hk])
  have hT := card_le_two_of_collinear hncol (univ.filter fun i => (P i).2 = 1) (by
    intro i hi j hj k hk; simp only [mem_filter, mem_univ, true_and] at hi hj hk
    simp [sarea, hi, hj, hk])
  have hsum : (univ.filter fun i => OnSquareBoundary (P i)).card +
      (univ.filter fun i => IsCorner (P i)).card ≤
      (univ.filter fun i => (P i).1 = 0).card + (univ.filter fun i => (P i).1 = 1).card +
        (univ.filter fun i => (P i).2 = 0).card + (univ.filter fun i => (P i).2 = 1).card := by
    have := Finset.sum_le_sum (fun i (_ : i ∈ (univ : Finset (Fin 9))) =>
      incidence_count (P i) (hP i))
    simp only [Finset.sum_add_distrib, Finset.sum_boole] at this
    exact_mod_cast this
  have hC : (univ.filter fun i => IsCorner (P i)).card = 0 := by omega
  refine ⟨by omega, fun i hi => ?_, by omega, by omega, by omega, by omega⟩
  have : i ∈ univ.filter fun i => IsCorner (P i) := by simp [hi]
  rw [Finset.card_eq_zero] at hC
  simp [hC] at this

/-- Two distinct indices of a two-element set, ordered by a function separating them. -/
theorem exists_ordered_pair {S : Finset (Fin 9)} (hS : S.card = 2) (φ : Fin 9 → ℝ)
    (hφ : ∀ i ∈ S, ∀ j ∈ S, i ≠ j → φ i ≠ φ j) :
    ∃ i j, i ∈ S ∧ j ∈ S ∧ φ i < φ j := by
  obtain ⟨u, v, huv, rfl⟩ := Finset.card_eq_two.1 hS
  rcases lt_or_gt_of_ne (hφ u (by simp) v (by simp) huv) with h | h
  · exact ⟨u, v, by simp, by simp, h⟩
  · exact ⟨v, u, by simp, by simp, h⟩

theorem normal_form_core (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (hncol : ∀ i j k, i ≠ j → j ≠ k → i ≠ k → sarea (P i) (P j) (P k) ≠ 0)
    (h8 : 8 ≤ (univ.filter fun i => OnSquareBoundary (P i)).card) :
    ∃ (a b c d e f g h : ℝ) (O : Point) (σ : Equiv.Perm (Fin 9)),
      EightAnchors a b c d e f g h ∧ InOpenSquare O ∧ P ∘ σ = eightConfig a b c d e f g h O := by
  obtain ⟨hbd, hcor, hL, hB, hR, hT⟩ := two_on_each_side_card P hP hncol h8
  -- points with a common coordinate on a side are distinct in the other coordinate
  have hinj : ∀ i j, i ≠ j → P i ≠ P j := by
    intro i j hij hPij
    obtain ⟨k, hki, hkj⟩ : ∃ k : Fin 9, k ≠ i ∧ k ≠ j := by
      by_contra hcon
      push Not at hcon
      have h1 := hcon (if i = 0 ∨ j = 0 then (if i = 1 ∨ j = 1 then 2 else 1) else 0)
      split_ifs at h1 <;> omega
    exact hncol i j k hij (Ne.symm hkj) (Ne.symm hki) (by rw [hPij]; simp [sarea])
  have sep2 : ∀ i j, (P i).1 = (P j).1 → i ≠ j → (P i).2 ≠ (P j).2 :=
    fun i j h1 hij h2 => hinj i j hij (Prod.ext h1 h2)
  have sep1 : ∀ i j, (P i).2 = (P j).2 → i ≠ j → (P i).1 ≠ (P j).1 :=
    fun i j h2 hij h1 => hinj i j hij (Prod.ext h1 h2)
  obtain ⟨iA, iH, hA, hH, hAH⟩ := exists_ordered_pair hL (fun i => (P i).2) (by
    intro i hi j hj hij; simp only [mem_filter, mem_univ, true_and] at hi hj
    exact sep2 i j (hi.trans hj.symm) hij)
  obtain ⟨iB, iC, hB', hC', hBC⟩ := exists_ordered_pair hB (fun i => (P i).1) (by
    intro i hi j hj hij; simp only [mem_filter, mem_univ, true_and] at hi hj
    exact sep1 i j (hi.trans hj.symm) hij)
  obtain ⟨iD, iE, hD, hE, hDE⟩ := exists_ordered_pair hR (fun i => (P i).2) (by
    intro i hi j hj hij; simp only [mem_filter, mem_univ, true_and] at hi hj
    exact sep2 i j (hi.trans hj.symm) hij)
  obtain ⟨iG, iF, hG, hF, hGF⟩ := exists_ordered_pair hT (fun i => (P i).1) (by
    intro i hi j hj hij; simp only [mem_filter, mem_univ, true_and] at hi hj
    exact sep1 i j (hi.trans hj.symm) hij)
  -- the ninth point
  have hcomp : (univ.filter fun i => ¬ OnSquareBoundary (P i)).card = 1 := by
    have := Finset.card_filter_add_card_filter_not (s := (univ : Finset (Fin 9)))
      (fun i => OnSquareBoundary (P i))
    simp only [card_univ, Fintype.card_fin] at this
    omega
  obtain ⟨iO, hO⟩ := Finset.card_eq_one.1 hcomp
  have hOmem : iO ∈ univ.filter fun i => ¬ OnSquareBoundary (P i) := by rw [hO]; simp
  simp only [mem_filter, mem_univ, true_and] at hA hH hB' hC' hD hE hG hF hOmem
  -- coordinates
  have side : ∀ i, (P i).1 = 0 ∨ (P i).1 = 1 → 0 < (P i).2 ∧ (P i).2 < 1 := by
    intro i hi
    obtain ⟨_, _, h3, h4⟩ := hP i
    refine ⟨lt_of_le_of_ne h3 fun h => hcor i ⟨hi, Or.inl h.symm⟩,
      lt_of_le_of_ne h4 fun h => hcor i ⟨hi, Or.inr h⟩⟩
  have side' : ∀ i, (P i).2 = 0 ∨ (P i).2 = 1 → 0 < (P i).1 ∧ (P i).1 < 1 := by
    intro i hi
    obtain ⟨h1, h2, _, _⟩ := hP i
    refine ⟨lt_of_le_of_ne h1 fun h => hcor i ⟨Or.inl h.symm, hi⟩,
      lt_of_le_of_ne h2 fun h => hcor i ⟨Or.inr h, hi⟩⟩
  have hOin : InOpenSquare (P iO) := by
    obtain ⟨h1, h2, h3, h4⟩ := hP iO
    simp only [OnSquareBoundary, not_and, not_or] at hOmem
    obtain ⟨n1, n2, n3, n4⟩ := hOmem (hP iO)
    exact ⟨lt_of_le_of_ne h1 (Ne.symm n1), lt_of_le_of_ne h2 n2, lt_of_le_of_ne h3 (Ne.symm n3),
      lt_of_le_of_ne h4 n4⟩
  obtain ⟨a, ha⟩ : ∃ a, (P iA).2 = a := ⟨_, rfl⟩
  obtain ⟨h, hh⟩ : ∃ h, (P iH).2 = h := ⟨_, rfl⟩
  obtain ⟨b, hb⟩ : ∃ b, (P iB).1 = b := ⟨_, rfl⟩
  obtain ⟨c, hc⟩ : ∃ c, (P iC).1 = c := ⟨_, rfl⟩
  obtain ⟨d, hd⟩ : ∃ d, (P iD).2 = d := ⟨_, rfl⟩
  obtain ⟨e, he⟩ : ∃ e, (P iE).2 = e := ⟨_, rfl⟩
  obtain ⟨f, hf⟩ : ∃ f, (P iF).1 = f := ⟨_, rfl⟩
  obtain ⟨g, hg⟩ : ∃ g, (P iG).1 = g := ⟨_, rfl⟩
  obtain ⟨O, hOO⟩ : ∃ O, P iO = O := ⟨_, rfl⟩
  have sA := side iA (Or.inl hA)
  have sH := side iH (Or.inl hH)
  have sD := side iD (Or.inr hD)
  have sE := side iE (Or.inr hE)
  have sB := side' iB (Or.inl hB')
  have sC := side' iC (Or.inl hC')
  have sG := side' iG (Or.inr hG)
  have sF := side' iF (Or.inr hF)
  have eA : P iA = (0, a) := Prod.ext hA ha
  have eH : P iH = (0, h) := Prod.ext hH hh
  have eB : P iB = (b, 0) := Prod.ext hb hB'
  have eC : P iC = (c, 0) := Prod.ext hc hC'
  have eD : P iD = (1, d) := Prod.ext hD hd
  have eE : P iE = (1, e) := Prod.ext hE he
  have eF : P iF = (f, 1) := Prod.ext hf hF
  have eG : P iG = (g, 1) := Prod.ext hg hG
  rw [ha] at sA hAH; rw [hh] at sH hAH; rw [hb] at sB hBC; rw [hc] at sC hBC
  rw [hd] at sD hDE; rw [he] at sE hDE; rw [hf] at sF hGF; rw [hg] at sG hGF
  rw [hOO] at hOin
  obtain ⟨o1, o2, o3, o4⟩ := hOin
  let σf : Fin 9 → Fin 9 := ![iA, iB, iC, iD, iE, iF, iG, iH, iO]
  have hval : ∀ k, P (σf k) = eightConfig a b c d e f g h O k := by
    intro k; fin_cases k
    exacts [eA, eB, eC, eD, eE, eF, eG, eH, hOO]
  have hσinj : Function.Injective σf := by
    intro p q hpq
    have hPq := congrArg P hpq
    rw [hval, hval] at hPq
    fin_cases p <;> fin_cases q <;> first
      | rfl
      | (exfalso
         simp only [eightConfig, Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk, Fin.isValue,
           Matrix.cons_val, Prod.mk.injEq] at hPq
         obtain ⟨_, _⟩ := O
         simp only [Prod.mk.injEq] at hPq o1 o2 o3 o4
         obtain ⟨q1, q2⟩ := hPq
         linarith)
  refine ⟨a, b, c, d, e, f, g, h, O, Equiv.ofBijective σf hσinj.bijective_of_finite,
    ⟨sA.1, hAH, sH.2, sB.1, hBC, sC.2, sD.1, hDE, sE.2, sG.1, hGF, sF.2⟩,
    ⟨o1, o2, o3, o4⟩, ?_⟩
  funext k
  exact hval k

end Heilbronn.Nine.EightBoundary
