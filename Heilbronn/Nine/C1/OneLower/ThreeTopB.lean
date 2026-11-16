module

public import Heilbronn.Nine.C1.OneLower.HullB

/-! # Three top-cap points (`docs/proof/nine/C1_ZERO_LOWER.md`, Lemma 3)

`three_top`: in a competitive C1 configuration whose free points `Q 0, Q 1, Q 2` are in the top
cap, two of them, `X, Y`, have `D, X, Y, F` in convex position and the third lies in `DXF ∩ DYF`.
This is the geometric core of `C1ZeroLower.Comp.three_seeds` (Lemma 3 of `C1_ZERO_LOWER.md`, whose
proof uses no zero-lower hypothesis), with the same proof, stated without the fourth free point
and without the labelling of the zero-lower package.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerB

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Cover Model

variable {h c d f : ℝ} {Q : Fin 4 → Point}


/-- **Lemma 3** (`C1_ZERO_LOWER:Lemma3`, three top-cap points): if `Q 0, Q 1, Q 2` are in the top
cap, then for some ordering `σ` the outer points `X = Q (σ 1)`, `Y = Q (σ 0)` have `[DXY] > 0`,
`[XYF] > 0`, and the inner point `Q (σ 2)` lies in `DXF` and in `DYF`. -/
theorem three_top (H : Comp h c d f Q) (topc : ∀ k : Fin 3, InTopCap d f (Q k.castSucc)) :
    ∃ σ : Equiv.Perm (Fin 3),
      0 < sarea (ptD d) (Q (σ 1).castSucc) (Q (σ 0).castSucc) ∧
      0 < sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (ptF f) ∧
      InTriangle (Q (σ 2).castSucc) (ptD d) (Q (σ 1).castSucc) (ptF f) ∧
      InTriangle (Q (σ 2).castSucc) (ptD d) (Q (σ 0).castSucc) (ptF f) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have t0 := two_A₀
  obtain ⟨-, -, a3, a4⟩ := H.anchor_bounds
  obtain ⟨-, -, p3, p4⟩ := H.params_ge
  have hull : ∀ k : Fin 3, Q k.castSucc ∈ convexHull ℝ ({(f, 1), (1, d), ptE} : Set Point) := by
    intro k
    have := top_mem_hull H.hA (H.hQ _) (topc k)
    rwa [Set.insert_comm] at this
  have hFDE : 0 < sarea (f, 1) (1, d) ptE := by simp only [sarea]; nlinarith
  have hΩ : sarea (f, 1) (1, d) ptE ≤ 65 / 73 * (65 / 73) := by
    simp only [sarea]
    nlinarith [mul_le_mul (show 1 - d ≤ 65 / 73 by linarith) (show 1 - f ≤ 65 / 73 by linarith)
      (by linarith) (by norm_num)]
  -- the hull of `F, D` and the three cap points is not a triangle
  have hnt : ¬ TypeII.TriangularHull ![(f, 1), (1, d), Q 0, Q 1, Q 2] := by
    rintro ⟨a, b, e, hall⟩
    set P5 : Fin 5 → Point := ![(f, 1), (1, d), Q 0, Q 1, Q 2] with hP5
    have r0 := (H.top_row 0 (topc 0)); have r1 := (H.top_row 1 (topc 1))
    have r2 := (H.top_row 2 (topc 2))
    have xb : ∀ m : Fin 5, m ≠ 0 → f + 2 * A₀ ≤ (P5 m).1 := by
      intro m hm
      fin_cases m
      · exact absurd rfl hm
      all_goals (simp [hP5]; linarith [r0.1, r1.1, r2.1])
    have yb : ∀ m : Fin 5, m ≠ 1 → d + 2 * A₀ ≤ (P5 m).2 := by
      intro m hm
      fin_cases m
      · simp [hP5]; linarith
      · exact absurd rfl hm
      all_goals (simp [hP5]; linarith [r0.2.1, r1.2.1, r2.2.1])
    have vF : a = 0 ∨ b = 0 ∨ e = 0 := by
      by_contra hn; push Not at hn
      have := hull_le 1 0 0 (f + 2 * A₀) (by
        intro p hp; simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
        rcases hp with rfl | rfl | rfl
        · have := xb a hn.1; linarith
        · have := xb b hn.2.1; linarith
        · have := xb e hn.2.2; linarith) _ (hall 0)
      simp [hP5] at this; linarith
    have vD : a = 1 ∨ b = 1 ∨ e = 1 := by
      by_contra hn; push Not at hn
      have := hull_le 0 1 0 (d + 2 * A₀) (by
        intro p hp; simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
        rcases hp with rfl | rfl | rfl
        · have := yb a hn.1; linarith
        · have := yb b hn.2.1; linarith
        · have := yb e hn.2.2; linarith) _ (hall 1)
      simp [hP5] at this; linarith
    have closeK : ∀ k : Fin 5,
        ({P5 a, P5 b, P5 e} : Set Point) ⊆ {(f, 1), (1, d), P5 k} → False := by
      intro k hk
      fin_cases k
      · exact seg_false (fun p hp => by have := hk hp; simp [hP5] at this ⊢; tauto) (hall 2)
          (topc 0)
      · exact seg_false (fun p hp => by have := hk hp; simp [hP5] at this ⊢; tauto) (hall 2)
          (topc 0)
      · exact H.tri_false (k := 0) (s := 1) (t := 2) (by decide) (by decide) (by decide) (topc 0)
          (topc 1) (topc 2) hk (hall 3) (hall 4)
      · exact H.tri_false (k := 1) (s := 0) (t := 2) (by decide) (by decide) (by decide) (topc 1)
          (topc 0) (topc 2) hk (hall 2) (hall 4)
      · exact H.tri_false (k := 2) (s := 0) (t := 1) (by decide) (by decide) (by decide) (topc 2)
          (topc 0) (topc 1) hk (hall 2) (hall 3)
    have sub : ∀ x y z : Fin 5, ∀ p : Point, p ∈ ({P5 x, P5 y, P5 z} : Set Point) →
        p = P5 x ∨ p = P5 y ∨ p = P5 z := by
      intro x y z p hp; simpa only [Set.mem_insert_iff, Set.mem_singleton_iff] using hp
    rcases vF with rfl | rfl | rfl <;> rcases vD with h1 | h1 | h1 <;> (try subst h1) <;>
      first
      | exact absurd h1 (by decide)
      | exact closeK e (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
      | exact closeK b (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
      | exact closeK a (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
  have hm5 := H.min_sub (by norm_num) ![3, 2, 5, 6, 7] (by intro x; fin_cases x <;> simp)
    (by decide)
  have e5 : (fun x => cfg h c d f Q (![3, 2, 5, 6, 7] x)) = ![(f, 1), (1, d), Q 0, Q 1, Q 2] := by
    funext x; fin_cases x <;> rfl
  rw [e5] at hm5
  obtain ⟨W', σ, hS, harea⟩ := TypeII.claim_support_normalization hFDE (hull 0) (hull 1) (hull 2)
    (lt_of_lt_of_le A₀_pos hm5) hnt
  have hQσ : ∀ k : Fin 3, ![Q (0 : Fin 3).castSucc, Q (1 : Fin 3).castSucc,
      Q (2 : Fin 3).castSucc] k = Q k.castSucc := by intro k; fin_cases k <;> rfl
  simp only [hQσ] at hS
  have hm := H.min_sub (by norm_num) ![3, 2, (σ 0).val + 5, (σ 1).val + 5, (σ 2).val + 5]
    (by intro x; fin_cases x <;> simp <;> omega)
    (inj5 (by omega) (by omega) (by omega)
      (fun e => (by decide : (0 : Fin 3) ≠ 1) (σ.injective (Fin.ext (by omega))))
      (fun e => (by decide : (0 : Fin 3) ≠ 2) (σ.injective (Fin.ext (by omega))))
      (fun e => (by decide : (1 : Fin 3) ≠ 2) (σ.injective (Fin.ext (by omega)))))
  have e6 : (fun x => cfg h c d f Q (![3, 2, (σ 0).val + 5, (σ 1).val + 5, (σ 2).val + 5] x)) =
      ![(f, 1), (1, d), Q (σ 0).castSucc, Q (σ 1).castSucc, Q (σ 2).castSucc] := by
    funext x; fin_cases x
    · rfl
    · rfl
    · exact cfg_free h c d f Q (σ 0).castSucc
    · exact cfg_free h c d f Q (σ 1).castSucc
    · exact cfg_free h c d f Q (σ 2).castSucc
  rw [e6] at hm
  have h1 : sarea (f, 1) (1, d) W' ≤ 1 := by nlinarith
  have rl := rho_lt
  rcases support_cells hS h1 hm with ⟨-, -, hK⟩ | ⟨hTR, hTS⟩ | ⟨-, -, hK⟩
  · exfalso; nlinarith
  rotate_left
  · exfalso; nlinarith
  -- the line `RS` (`R` on the leg of `D`, `S` on the leg of `F`)
  obtain ⟨a2, b2, ha2, hb2, hab2, hSe⟩ := hS.2.1
  obtain ⟨a1, b1, ha1, hb1, hab1, hRe⟩ := hS.2.2.1
  have hW := hS.1
  obtain rfl : a1 = 1 - b1 := by linarith
  obtain rfl : a2 = 1 - b2 := by linarith
  have lD : 0 < sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (1, d) := by
    rw [← hRe, ← hSe]
    have e : sarea ((1 - b1) • ((1 : ℝ), d) + b1 • W') ((1 - b2) • (f, (1 : ℝ)) + b2 • W') (1, d) =
        b1 * (1 - b2) * sarea (f, 1) (1, d) W' := by
      simp only [sarea, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
      ring
    rw [e]; exact mul_pos (mul_pos hb1 ha2) hW
  have lF : 0 < sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (f, 1) := by
    rw [← hRe, ← hSe]
    have e : sarea ((1 - b1) • ((1 : ℝ), d) + b1 • W') ((1 - b2) • (f, (1 : ℝ)) + b2 • W') (f, 1) =
        (1 - b1) * b2 * sarea (f, 1) (1, d) W' := by
      simp only [sarea, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
      ring
    rw [e]; exact mul_pos (mul_pos ha1 hb2) hW
  have idf : ∀ R S P : Point, (1 - d) * (1 - f) * sarea R S P = (1 - f) * (1 - P.2) *
      sarea R S (1, d) + (1 - d) * (1 - P.1) * sarea R S (f, 1) -
        sarea (1, d) (f, 1) P * sarea R S (1, 1) := fun R S P => by unfold sarea; ring
  have lE : sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (1, 1) < 0 := by
    by_contra hn; push Not at hn
    have dR : sarea (1, d) (f, 1) (Q (σ 1).castSucc) < 0 := topc (σ 1)
    have dS : sarea (1, d) (f, 1) (Q (σ 0).castSucc) < 0 := topc (σ 0)
    obtain ⟨x0, x1, y0, y1⟩ := H.sq (σ 1).castSucc
    obtain ⟨u0, u1, v0, v1⟩ := H.sq (σ 0).castSucc
    have iR := idf (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 1).castSucc)
    have iS := idf (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 0).castSucc)
    rw [show sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 1).castSucc) = 0 by
      unfold sarea; ring, mul_zero] at iR
    rw [show sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 0).castSucc) = 0 by
      unfold sarea; ring, mul_zero] at iS
    have q3 := mul_nonpos_of_nonpos_of_nonneg dR.le hn
    have q3' := mul_nonpos_of_nonpos_of_nonneg dS.le hn
    have f1 : (0 : ℝ) < 1 - f := by linarith
    have d1 : (0 : ℝ) < 1 - d := by linarith
    have qa := mul_nonneg (mul_nonneg f1.le (sub_nonneg.2 y1)) lD.le
    have qb := mul_nonneg (mul_nonneg d1.le (sub_nonneg.2 x1)) lF.le
    have qc := mul_nonneg (mul_nonneg f1.le (sub_nonneg.2 v1)) lD.le
    have qd := mul_nonneg (mul_nonneg d1.le (sub_nonneg.2 u1)) lF.le
    have ry : (Q (σ 1).castSucc).2 = 1 := by
      by_contra hne; have := mul_pos (mul_pos f1 (sub_pos.2 (lt_of_le_of_ne y1 hne))) lD; linarith
    have rx : (Q (σ 1).castSucc).1 = 1 := by
      by_contra hne; have := mul_pos (mul_pos d1 (sub_pos.2 (lt_of_le_of_ne x1 hne))) lF; linarith
    have sy : (Q (σ 0).castSucc).2 = 1 := by
      by_contra hne; have := mul_pos (mul_pos f1 (sub_pos.2 (lt_of_le_of_ne v1 hne))) lD; linarith
    have sx : (Q (σ 0).castSucc).1 = 1 := by
      by_contra hne; have := mul_pos (mul_pos d1 (sub_pos.2 (lt_of_le_of_ne u1 hne))) lF; linarith
    have : Q (σ 1).castSucc = Q (σ 0).castSucc := Prod.ext (by rw [rx, sx]) (by rw [ry, sy])
    rw [this] at lD; simp [sarea] at lD
  have cyc : ∀ V R S : Point, sarea V R S = sarea R S V := fun V R S => (sarea_cycle V R S).symm
  refine ⟨σ, by rw [cyc]; exact lD, lF, ⟨hTR.2.1, hTR.2.2, hTR.1⟩, ⟨hTS.2.1, hTS.2.2, hTS.1⟩⟩

end Heilbronn.Nine.C1OneLowerB
