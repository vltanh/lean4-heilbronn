module

public import Heilbronn.Nine.SevenBoundary.Interior.Words
public import Heilbronn.Nine.SevenBoundary.Interior.Trees
public import Heilbronn.Nine.SevenBoundary.Caps

/-! # Both free points inside the anchor heptagon

`interior_false`: in the open-side seven-boundary normal form, two free points strictly inside the
anchor heptagon cannot both keep every triangle of area at least `7/128`.

Each point has one of the 57 ray words (`Comp.word_exists`). A word whose point lies in the ear
`ABH`, `ABC` or `CDE` or in the overlap `AHF ∩ HCF` is excluded by `SEVEN_BOUNDARY_CAPS`
Theorems 1, 4, 8, 6; a word whose point lies in the upper triangle `HEF` by its single-point
tree. Two words whose points share one of the capacity-one triangles `BCF, HCF, HBF, ACF, CDF,
DEF` are excluded by `SEVEN_BOUNDARY_CAPS` Theorems 2, 5, 9. Every other pair of words, ordered by
the relabelling `P ↔ Q`, has a kernel-checked tree (`Trees.allCases_ok`), and `Cell.false` closes
it.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenInterior

open Cert Cover Model SevenBoundary

variable {a h b c d e f : ℝ} {P Q : Point}

/-! ### Finite facts -/

theorem lexTriples_valid : ∀ t ∈ lexTriples, t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < 9 := by
  decide +kernel

theorem badKind_spec : ∀ w < 57,
    (badKind w = 1 → winside w (0, 1, 6) = true) ∧ (badKind w = 2 → winside w (0, 1, 2) = true) ∧
    (badKind w = 3 → winside w (2, 3, 4) = true) ∧
    (badKind w = 4 → winside w (0, 5, 6) = true ∧ winside w (2, 5, 6) = true) ∧
    badKind w ≤ 5 := by
  decide +kernel

theorem keys_single : ∀ w < 57, badKind w = 5 → [w] ∈ Trees.caseKeys := by
  decide +kernel

theorem keys_pairB : ((List.range 57).all fun p => (List.range 57).all fun q =>
    !(badKind p == 0 && badKind q == 0 && !capPair p q && decide (p ≤ q)) ||
      Trees.caseKeys.contains [p, q]) = true := by
  decide +kernel

theorem keys_pair (p : ℕ) (hp : p < 57) (q : ℕ) (hq : q < 57) (hbp : badKind p = 0)
    (hbq : badKind q = 0) (hc : capPair p q = false) (hpq : p ≤ q) : [p, q] ∈ Trees.caseKeys := by
  have := keys_pairB
  simp only [List.all_eq_true, List.mem_range] at this
  have h := this p hp q hq
  simp only [hbp, hbq, hc, beq_self_eq_true, Bool.not_false, Bool.and_self,
    decide_eq_true hpq, Bool.not_true, Bool.false_or, List.contains_iff_mem] at h
  exact h

theorem capPair_symm (p q : ℕ) : capPair q p = capPair p q := by
  simp only [capPair, Bool.and_comm]

theorem capPair_spec {p q : ℕ} (h : capPair p q = true) :
    ∃ t ∈ capTris, winside p t = true ∧ winside q t = true := by
  simpa [capPair, List.any_eq_true] using h

theorem tree_of_key {ks : List ℕ} (hk : ks ∈ Trees.caseKeys) :
    ∃ T, checkTree (spec ks) [] T = true := by
  rw [← Trees.caseKeys_eq] at hk
  obtain ⟨p, hp, rfl⟩ := List.mem_map.1 hk
  exact ⟨p.2, Trees.allCases_ok p hp⟩

/-! ### Words and signs -/

theorem anchors_eq {P' Q' : Point} {i : ℕ} (hi : i < 7) :
    cfg a h b c d e f P Q i = cfg a h b c d e f P' Q' i := by
  interval_cases i <;> rfl

theorem WordAt.orient {V : ℕ → Point} {X : Point} {w i j : ℕ} (hw : WordAt V X w) (hi : i < 7)
    (hj : j < 7) (hij : i ≠ j) (hne : sarea (V i) (V j) X ≠ 0) :
    OrientHolds (wsign w i j) (sarea (V i) (V j) X) := by
  have := hw i j hi hj hij
  cases hs : wsign w i j
  · simp only [OrientHolds, Bool.false_eq_true, ite_false]
    rw [hs] at this
    have h1 : ¬ 0 < sarea (V i) (V j) X := fun h => absurd (this.1 h) (by simp)
    exact lt_of_le_of_ne (not_lt.1 h1) hne
  · simp only [OrientHolds, ite_true]
    exact this.2 hs

theorem WordAt.inside {V : ℕ → Point} {X : Point} {w i j k : ℕ} (hw : WordAt V X w)
    (hi : i < 7) (hj : j < 7) (hk : k < 7) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k)
    (h : winside w (i, j, k) = true) :
    0 ≤ sarea (V i) (V j) X ∧ 0 ≤ sarea (V j) (V k) X ∧ 0 ≤ sarea (V k) (V i) X := by
  simp only [winside, Bool.and_eq_true] at h
  exact ⟨((hw i j hi hj hij).2 h.1.1).le, ((hw j k hj hk hjk).2 h.1.2).le,
    ((hw k i hk hi (Ne.symm hik)).2 h.2).le⟩

theorem WordAt.transfer {P' Q' X : Point} {w : ℕ} (hw : WordAt (cfg a h b c d e f P Q) X w) :
    WordAt (cfg a h b c d e f P' Q') X w := by
  intro i j hi hj hij
  rw [anchors_eq (P' := P) (Q' := Q) hi, anchors_eq (P' := P) (Q' := Q) hj]
  exact hw i j hi hj hij

/-- The relabelled configuration `P ↔ Q`. -/
theorem Comp.swap (H : Comp a h b c d e f P Q) : Comp a h b c d e f Q P := by
  refine ⟨H.hN, H.hQ, H.hP, ?_⟩
  have e : sevenConfig a h b c d e f Q P = sevenConfig a h b c d e f P Q ∘ Equiv.swap 7 8 := by
    funext i; fin_cases i <;> rfl
  rw [e, minTriangleArea_comp_perm]; exact H.hmin

/-- The base signs of a case hold when its free points have the case's words. -/
theorem Comp.cell (H : Comp a h b c d e f P Q) {ks : List ℕ} (hl : ks.length ≤ 2)
    (hw : ∀ i (hi : i < ks.length),
      WordAt (cfg a h b c d e f P Q) (cfg a h b c d e f P Q (7 + i)) ks[i]) :
    Cell a h b c d e f P Q ks := by
  refine ⟨H, hl, ?_⟩
  intro g hg
  simp only [baseSigns, List.mem_filterMap, Option.map_eq_some_iff] at hg
  obtain ⟨t, ht, sg, hsg, rfl⟩ := hg
  obtain ⟨t1, t2, t3⟩ := lexTriples_valid t ht
  refine ⟨t1, t2, t3, ?_⟩
  unfold anchorSign at hsg
  split_ifs at hsg with h7 h7'
  · cases hsg
    exact anchor_pos H.hN t1 t2 h7
  · obtain ⟨w, hw', rfl⟩ := Option.map_eq_some_iff.1 hsg
    obtain ⟨hlt, hwe⟩ := List.getElem?_eq_some_iff.1 hw'
    have he7 : t.2.2 = 7 + (t.2.2 - 7) := by omega
    have hW := hw (t.2.2 - 7) hlt
    rw [hwe, ← he7] at hW
    have hne : sarea (cfg a h b c d e f P Q t.1) (cfg a h b c d e f P Q t.2.1)
        (cfg a h b c d e f P Q t.2.2) ≠ 0 := by
      intro h0
      have := H.area t.1 t.2.1 t.2.2 (by omega) (by omega) t3 (by omega) (by omega) (by omega)
      rw [h0, abs_zero] at this; linarith
    exact hW.orient (by omega) h7' (by omega) hne

theorem Comp.cell1 (H : Comp a h b c d e f P Q) {p : ℕ} (hp : WordAt (cfg a h b c d e f P Q) P p) :
    Cell a h b c d e f P Q [p] :=
  H.cell (by simp) fun i hi => by
    simp only [List.length_cons, List.length_nil] at hi
    obtain rfl : i = 0 := by omega
    exact hp

theorem Comp.cell2 (H : Comp a h b c d e f P Q) {p q : ℕ}
    (hp : WordAt (cfg a h b c d e f P Q) P p) (hq : WordAt (cfg a h b c d e f P Q) Q q) :
    Cell a h b c d e f P Q [p, q] :=
  H.cell (by simp) fun i hi => by
    simp only [List.length_cons, List.length_nil] at hi
    rcases (show i = 0 ∨ i = 1 by omega) with rfl | rfl
    · exact hp
    · exact hq

/-! ### The exclusions -/

theorem min₁_le (a h b c d e f : ℝ) (P Q : Point) :
    minTriangleArea (sevenConfig a h b c d e f P Q) ≤
      minTriangleArea (sevenConfig₁ a h b c d e f P) := by
  have e : sevenConfig₁ a h b c d e f P = sevenConfig a h b c d e f P Q ∘ Fin.castSucc := by
    funext i; fin_cases i <;> rfl
  rw [e]; exact le_min_comp (by norm_num) _ (Fin.castSucc_injective _)

theorem Comp.min₁ (H : Comp a h b c d e f P Q)
    (hlt : minTriangleArea (sevenConfig₁ a h b c d e f P) < 7 / 128) : False :=
  absurd (H.hmin.trans (min₁_le a h b c d e f P Q)) (not_le.2 hlt)

/-- **Single-point exclusions**: a free point whose word lies in `ABH`, `ABC`, `CDE`,
`AHF ∩ HCF` or `HEF` is impossible. -/
theorem Comp.not_bad (H : Comp a h b c d e f P Q) {w : ℕ} (hw57 : w < 57)
    (hw : WordAt (cfg a h b c d e f P Q) P w) (hb : badKind w ≠ 0) : False := by
  obtain ⟨k1, k2, k3, k4, k5⟩ := badKind_spec w hw57
  have hN := H.hN
  rcases (show badKind w = 1 ∨ badKind w = 2 ∨ badKind w = 3 ∨ badKind w = 4 ∨ badKind w = 5 by
    omega) with hk | hk | hk | hk | hk
  · obtain ⟨s1, s2, s3⟩ := hw.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (k1 hk)
    exact H.min₁ (SevenBoundaryCaps.theorem1 hN ⟨s1, s2, s3⟩)
  · obtain ⟨s1, s2, s3⟩ := hw.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (k2 hk)
    exact H.min₁ (SevenBoundaryCaps.theorem4 hN ⟨s1, s2, s3⟩)
  · obtain ⟨s1, s2, s3⟩ := hw.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (k3 hk)
    exact H.min₁ ((SevenBoundaryCaps.theorem8 hN).2 P ⟨s1, s2, s3⟩)
  · obtain ⟨s1, s2, s3⟩ := hw.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (k4 hk).1
    obtain ⟨t1, t2, t3⟩ := hw.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (k4 hk).2
    exact H.min₁ (SevenBoundaryCaps.theorem6 hN ⟨s1, s2, s3⟩ ⟨t3, t1, t2⟩)
  · obtain ⟨T, hT⟩ := tree_of_key (keys_single w hw57 hk)
    exact (H.cell1 hw).false hT

/-- **Capacity-one exclusions**: two free points whose words lie in one of `BCF, HCF, HBF, ACF,
CDF, DEF` are impossible. -/
theorem Comp.not_cap (H : Comp a h b c d e f P Q) {p q : ℕ}
    (hp : WordAt (cfg a h b c d e f P Q) P p) (hq : WordAt (cfg a h b c d e f P Q) Q q)
    (hc : capPair p q = true) : False := by
  obtain ⟨t, ht, hpt, hqt⟩ := capPair_spec hc
  have hN := H.hN
  have hm := H.hmin
  simp only [capTris, List.mem_cons, List.not_mem_nil, or_false] at ht
  rcases ht with rfl | rfl | rfl | rfl | rfl | rfl
  · obtain ⟨s1, s2, s3⟩ := hp.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hpt
    obtain ⟨t1, t2, t3⟩ := hq.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hqt
    exact absurd hm (not_le.2 ((SevenBoundaryCaps.theorem2 hN).1 ⟨s1, s2, s3⟩ ⟨t1, t2, t3⟩))
  · obtain ⟨s1, s2, s3⟩ := hp.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hpt
    obtain ⟨t1, t2, t3⟩ := hq.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hqt
    exact absurd hm (not_le.2 ((SevenBoundaryCaps.theorem2 hN).2.1 ⟨s3, s1, s2⟩ ⟨t3, t1, t2⟩))
  · obtain ⟨s1, s2, s3⟩ := hp.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hpt
    obtain ⟨t1, t2, t3⟩ := hq.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hqt
    exact absurd hm (not_le.2 ((SevenBoundaryCaps.theorem2 hN).2.2 ⟨s3, s1, s2⟩ ⟨t3, t1, t2⟩))
  · obtain ⟨s1, s2, s3⟩ := hp.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hpt
    obtain ⟨t1, t2, t3⟩ := hq.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hqt
    exact absurd hm (not_le.2 ((SevenBoundaryCaps.theorem5 hN).2.2 P Q ⟨s1, s2, s3⟩ ⟨t1, t2, t3⟩))
  · obtain ⟨s1, s2, s3⟩ := hp.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hpt
    obtain ⟨t1, t2, t3⟩ := hq.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hqt
    exact absurd hm (not_le.2 (((SevenBoundaryCaps.theorem9 hN).2 P Q).1 ⟨s1, s2, s3⟩
      ⟨t1, t2, t3⟩))
  · obtain ⟨s1, s2, s3⟩ := hp.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hpt
    obtain ⟨t1, t2, t3⟩ := hq.inside (by norm_num) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) hqt
    exact absurd hm (not_le.2 (((SevenBoundaryCaps.theorem9 hN).2 P Q).2 ⟨s1, s2, s3⟩
      ⟨t1, t2, t3⟩))

/-! ### The theorem -/

/-- **Both free points inside the heptagon** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-interior`,
by the cover of `Heilbronn.Nine.SevenInterior`): impossible at least area `7/128`. -/
theorem interior_false (H : Comp a h b c d e f P Q) (hP : InHeptagon a h b c d e f P)
    (hQ : InHeptagon a h b c d e f Q) : False := by
  obtain ⟨p, hp57, hp⟩ := H.word_exists (x := 7) (Or.inl rfl) hP
  obtain ⟨q, hq57, hq⟩ := H.word_exists (x := 8) (Or.inr rfl) hQ
  have HS := H.swap
  have hp' : WordAt (cfg a h b c d e f Q P) P p := hp.transfer
  have hq' : WordAt (cfg a h b c d e f Q P) Q q := hq.transfer
  by_cases hbp : badKind p = 0
  swap
  · exact H.not_bad hp57 hp hbp
  by_cases hbq : badKind q = 0
  swap
  · exact HS.not_bad hq57 hq' hbq
  cases hc : capPair p q
  · rcases le_total p q with hpq | hpq
    · obtain ⟨T, hT⟩ := tree_of_key (keys_pair p hp57 q hq57 hbp hbq hc hpq)
      exact (H.cell2 hp hq).false hT
    · obtain ⟨T, hT⟩ := tree_of_key (keys_pair q hq57 p hp57 hbq hbp
        (by rw [capPair_symm]; exact hc) hpq)
      exact (HS.cell2 hq' hp').false hT
  · exact H.not_cap hp hq hc

end Heilbronn.Nine.SevenInterior
