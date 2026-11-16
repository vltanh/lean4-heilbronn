module

public import Heilbronn.C1.OneLower.GeomB

/-! # Competitive C1 configurations for the hull packages of group B

Helpers on `C1ZeroLower.Comp` (a competitive C1 configuration with labelled free points):

* `inSquare_of_inTriangle`: a point strictly inside a triangle of square points is in the square;
* `comp_areaOK`, `AreaOK.comp`: the nine-point area hypothesis, reindexed;
* `not_lower_of_cap`, `comp_capWord`, `comp_capWordAt`: a cap point has the five-anchor cap word of its cap
  (`(1,0,4,3,2)`, `(2,1,0,4,3)`, `(3,2,1,0,4)`, the zero-lower words `0, 3, 8`);
* `capTable`, `comp_capTable_holds`: the signs of anchor triples, of two anchors and a free point
  with a zero-lower word, and the radial rule for two such free points;
* `convex_of_table`: a polygon of the nine points is convex when every increasing triple is
  recorded positive in a true table.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerB

open Heilbronn.C1 Heilbronn.C1ZeroLower Cover Model
open Heilbronn.C1OneLowerTopCap (ConvexPolygon)

variable {h c d f : ℝ} {Q : Fin 4 → Point}

/-! ### Points inside triangles -/

/-- A point strictly inside a counterclockwise triangle of points of the square is in the square
(it is a positive combination of the vertices). -/
theorem inSquare_of_inTriangle {R A B C : Point} (hR : InTriangle R A B C) (hA : A ∈ unitSquare)
    (hB : B ∈ unitSquare) (hC : C ∈ unitSquare) : R ∈ unitSquare := by
  obtain ⟨r1, r2, r3⟩ := hR
  obtain ⟨a1, a2, a3, a4⟩ := hA
  obtain ⟨b1, b2, b3, b4⟩ := hB
  obtain ⟨c1, c2, c3, c4⟩ := hC
  have e0 : sarea A B C = sarea B C R + sarea C A R + sarea A B R := by unfold sarea; ring
  have e1 : sarea A B C * R.1 = sarea B C R * A.1 + sarea C A R * B.1 + sarea A B R * C.1 := by
    unfold sarea; ring
  have e2 : sarea A B C * R.2 = sarea B C R * A.2 + sarea C A R * B.2 + sarea A B R * C.2 := by
    unfold sarea; ring
  have hpos : 0 < sarea A B C := by linarith
  refine ⟨?_, ?_, ?_, ?_⟩
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg r2.le a1, mul_nonneg r3.le b1, mul_nonneg r1.le c1]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg r2.le (sub_nonneg.2 a2), mul_nonneg r3.le (sub_nonneg.2 b2),
      mul_nonneg r1.le (sub_nonneg.2 c2)]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg r2.le a3, mul_nonneg r3.le b3, mul_nonneg r1.le c3]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg r2.le (sub_nonneg.2 a4), mul_nonneg r3.le (sub_nonneg.2 b4),
      mul_nonneg r1.le (sub_nonneg.2 c4)]

/-! ### Areas -/

theorem comp_areaOK (H : Comp h c d f Q) : AreaOK (cfg h c d f Q) :=
  fun a b e ha hb he hab hbe hae => H.area a b e ha hb he hab hbe hae

theorem AreaOK.comp {P : ℕ → Point} (H : AreaOK P) (ι : ℕ → ℕ) (hι : ∀ i, i < 9 → ι i < 9)
    (hinj : ∀ a b, a < 9 → b < 9 → ι a = ι b → a = b) : AreaOK (fun i => P (ι i)) := by
  intro a b e ha hb he hab hbe hae
  exact H (ι a) (ι b) (ι e) (hι a ha) (hι b hb) (hι e he) (fun h => hab (hinj a b ha hb h))
    (fun h => hbe (hinj b e hb he h)) (fun h => hae (hinj a e ha he h))

/-! ### Cap words -/

/-- A point of a cap is not strictly inside `OHC` (on `OHC` every pentagon edge is nonnegative). -/
theorem not_lower_of_cap (hA : C1Anchors h c d f) {X : Point}
    (hX : InRightCap c d X ∨ InTopCap d f X ∨ InLeftCap f h X) : ¬ InLower h c X := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  rintro ⟨r1, r2, r3⟩
  have e := bary_identity ptO (ptC c) (ptH h)
  simp only [ptO, ptC, ptH, ptD, ptF, InRightCap, InTopCap, InLeftCap] at r1 r2 r3 e hX
  have hOCH : 0 < sarea (0, 0) (c, 0) (0, h) := by simp only [sarea]; nlinarith
  rcases hX with hX | hX | hX
  · have := e (c, 0) (1, d) X
    have k1 : 0 ≤ sarea (c, 0) (1, d) (0, 0) := by simp only [sarea]; nlinarith
    have k2 : 0 ≤ sarea (c, 0) (1, d) (c, 0) := by simp only [sarea]; nlinarith
    have k3 : 0 ≤ sarea (c, 0) (1, d) (0, h) := by simp only [sarea]; nlinarith
    nlinarith [mul_nonneg r2.le k1, mul_nonneg r3.le k2, mul_nonneg r1.le k3, mul_pos hOCH r2]
  · have := e (1, d) (f, 1) X
    have k1 : 0 < sarea (1, d) (f, 1) (0, 0) := by simp only [sarea]; nlinarith
    have k2 : 0 ≤ sarea (1, d) (f, 1) (c, 0) := by simp only [sarea]; nlinarith
    have k3 : 0 ≤ sarea (1, d) (f, 1) (0, h) := by simp only [sarea]; nlinarith
    nlinarith [mul_pos r2 k1, mul_nonneg r3.le k2, mul_nonneg r1.le k3]
  · have := e (f, 1) (0, h) X
    have k1 : 0 ≤ sarea (f, 1) (0, h) (0, 0) := by simp only [sarea]; nlinarith
    have k2 : 0 ≤ sarea (f, 1) (0, h) (c, 0) := by simp only [sarea]; nlinarith
    have k3 : 0 ≤ sarea (f, 1) (0, h) (0, h) := by simp only [sarea]; nlinarith
    nlinarith [mul_nonneg r2.le k1, mul_nonneg r3.le k2, mul_nonneg r1.le k3, mul_pos hOCH r3]

theorem capWord_table : ∀ w : Fin 11, (wsign w 1 2 = false → w.val = 0) ∧
    (wsign w 2 3 = false → w.val = 3) ∧ (wsign w 3 4 = false → w.val = 8) := by
  decide +kernel

/-- A cap point has the zero-lower word of its cap: `0` (right), `3` (top), `8` (left). -/
theorem comp_capWord (_H : Comp h c d f Q) (a : Fin 4) {w : ℕ} (hw : w < 11)
    (W : WordAt (cfg h c d f Q) (Q a) w) :
    (InRightCap c d (Q a) → w = 0) ∧ (InTopCap d f (Q a) → w = 3) ∧
      (InLeftCap f h (Q a) → w = 8) := by
  have T := capWord_table ⟨w, hw⟩
  simp only at T
  refine ⟨fun hR => T.1 ?_, fun hT => T.2.1 ?_, fun hL => T.2.2 ?_⟩
  · have := W 1 2 (by norm_num) (by norm_num) (by norm_num)
    simp only [cfg] at this
    rw [Bool.eq_false_iff]; intro h; have := this.2 h; unfold InRightCap ptC ptD at hR; linarith
  · have := W 2 3 (by norm_num) (by norm_num) (by norm_num)
    simp only [cfg] at this
    rw [Bool.eq_false_iff]; intro h; have := this.2 h; unfold InTopCap ptD ptF at hT; linarith
  · have := W 3 4 (by norm_num) (by norm_num) (by norm_num)
    simp only [cfg] at this
    rw [Bool.eq_false_iff]; intro h; have := this.2 h; unfold InLeftCap ptF ptH at hL; linarith

/-- The zero-lower word of a cap point. -/
theorem comp_capWordAt (H : Comp h c d f Q) (a : Fin 4) :
    (InRightCap c d (Q a) → WordAt (cfg h c d f Q) (Q a) 0) ∧
      (InTopCap d f (Q a) → WordAt (cfg h c d f Q) (Q a) 3) ∧
      (InLeftCap f h (Q a) → WordAt (cfg h c d f Q) (Q a) 8) := by
  refine ⟨fun hR => ?_, fun hT => ?_, fun hL => ?_⟩
  · obtain ⟨w, hw, W⟩ := H.word_exists a (not_lower_of_cap H.hA (Or.inl hR))
    rwa [(comp_capWord H a hw W).1 hR] at W
  · obtain ⟨w, hw, W⟩ := H.word_exists a (not_lower_of_cap H.hA (Or.inr (Or.inl hT)))
    rwa [(comp_capWord H a hw W).2.1 hT] at W
  · obtain ⟨w, hw, W⟩ := H.word_exists a (not_lower_of_cap H.hA (Or.inr (Or.inr hL)))
    rwa [(comp_capWord H a hw W).2.2 hL] at W

/-! ### The anchor and cap table -/

/-- The sign of the increasing triple `t` of `cfg` indices from the anchors and the zero-lower
words `ms` (pairs `(index, word)` of free points): anchor triples positive, two anchors and a
free point by its word, an anchor and two free points by the radial rule. -/
def capSign (ms : List (ℕ × ℕ)) (t : ℕ × ℕ × ℕ) : Option Bool :=
  if t.2.2 < 5 then some true
  else if t.2.1 < 5 then (ms.lookup t.2.2).map fun w => wsign w t.1 t.2.1
  else if t.1 < 5 then
    match ms.lookup t.2.1, ms.lookup t.2.2 with
    | some w1, some w2 =>
      if wordAt w1 t.1 = wordAt w2 t.1 then none else some (decide (wordAt w1 t.1 < wordAt w2 t.1))
    | _, _ => none
  else none

/-- The table of `capSign`. -/
def capTable (ms : List (ℕ × ℕ)) : List SFact :=
  lexTriples.filterMap fun t => (capSign ms t).map fun sg => (t, sg)

theorem lookup_mem {ms : List (ℕ × ℕ)} {a w : ℕ} (h : ms.lookup a = some w) : (a, w) ∈ ms := by
  induction ms with
  | nil => simp at h
  | cons p ms ih =>
    obtain ⟨b, u⟩ := p
    simp only [List.lookup_cons] at h
    split at h
    · rename_i hb
      simp only [Option.some.injEq] at h
      subst h
      have : a = b := by simpa using hb
      subst this; exact List.mem_cons_self ..
    · exact List.mem_cons_of_mem _ (ih h)

/-- **The anchor and cap table holds**, for free points with zero-lower words. -/
theorem comp_capTable_holds (H : Comp h c d f Q) {ms : List (ℕ × ℕ)}
    (hms : ∀ p ∈ ms, 5 ≤ p.1 ∧ p.1 < 9 ∧ p.2 < 11 ∧
      WordAt (cfg h c d f Q) (cfg h c d f Q p.1) p.2) :
    AllHold (SFact.Holds (cfg h c d f Q)) (capTable ms) := by
  intro g hg
  simp only [capTable, List.mem_filterMap, Option.map_eq_some_iff] at hg
  obtain ⟨t, ht, sg, hs, rfl⟩ := hg
  obtain ⟨t1, t2, t3⟩ := lexTriples_valid t ht
  unfold capSign at hs
  split_ifs at hs with a1 a2 a3
  · simp only [Option.some.injEq] at hs; subst hs
    simp only [SFact.Holds, OrientHolds, ite_true]
    have := lexTriples_anchor t ht a1
    exact anchor_pos H.hA this
  · obtain ⟨w, hw, rfl⟩ := Option.map_eq_some_iff.1 hs
    obtain ⟨m1, m2, m3, W⟩ := hms _ (lookup_mem hw)
    simp only [SFact.Holds, OrientHolds]
    have hne := H.area t.1 t.2.1 t.2.2 (by omega) (by omega) (by omega) (by omega) (by omega)
      (by omega)
    cases hsg : wsign w t.1 t.2.1
    · simp only [Bool.false_eq_true, ite_false]
      have key := W t.1 t.2.1 (by omega) a2 (by omega)
      rw [hsg] at key
      have : ¬ 0 < sarea (cfg h c d f Q t.1) (cfg h c d f Q t.2.1) (cfg h c d f Q t.2.2) :=
        fun h => by simpa using key.1 h
      rcases (not_lt.1 this).lt_or_eq with h1 | h1
      · exact h1
      · rw [h1, abs_zero] at hne; linarith [A₀_pos]
    · simp only [ite_true]
      exact (W t.1 t.2.1 (by omega) a2 (by omega)).2 hsg
  · split at hs
    · rename_i w1 w2 e1 e2
      obtain ⟨n1, n2, n3, W1⟩ := hms _ (lookup_mem e1)
      obtain ⟨k1, k2, k3, W2⟩ := hms _ (lookup_mem e2)
      split_ifs at hs with hxy
      simp only [Option.some.injEq] at hs; subst hs
      have i1 : cfg h c d f Q t.2.1 = Q ⟨t.2.1 - 5, by omega⟩ := by
        have := cfg_free h c d f Q ⟨t.2.1 - 5, by omega⟩
        simp only at this; rw [← this]; congr 1; omega
      have i2 : cfg h c d f Q t.2.2 = Q ⟨t.2.2 - 5, by omega⟩ := by
        have := cfg_free h c d f Q ⟨t.2.2 - 5, by omega⟩
        simp only at this; rw [← this]; congr 1; omega
      have hij : (⟨t.2.1 - 5, by omega⟩ : Fin 4) ≠ ⟨t.2.2 - 5, by omega⟩ := by
        intro h; simp only [Fin.mk.injEq] at h; omega
      simp only at n3 k3 W1 W2
      rw [i1] at W1; rw [i2] at W2
      simp only [SFact.Holds, OrientHolds]
      rw [i1, i2]
      rcases Nat.lt_or_gt_of_ne hxy with hl | hl
      · simp only [hl, decide_true, ite_true]
        exact H.radial_pair hij n3 k3 W1 W2 a3 hl
      · simp only [show ¬ wordAt w1 t.1 < wordAt w2 t.1 by omega, decide_false,
          Bool.false_eq_true, ite_false]
        have := H.radial_pair hij.symm k3 n3 W2 W1 a3 hl
        rw [sarea_swap₂₃] at this; linarith
    · simp at hs

/-- A polygon of points of `P` (indices `ι`) is convex when every increasing triple is recorded
positive in a true table. -/
theorem convex_of_table {P : ℕ → Point} {tb : List SFact} (htb : AllHold (SFact.Holds P) tb)
    {n : ℕ} (ι : Fin n → ℕ)
    (hι : ∀ i j k : Fin n, i < j → j < k → orientedLookup tb (ι i) (ι j) (ι k) = some true) :
    ConvexPolygon (fun i => P (ι i)) := by
  intro i j k hij hjk
  have := orientedLookup_sound htb (hι i j k hij hjk)
  simpa [OrientHolds] using this

/-- A point strictly inside a triangle `a < b < c` of vertices of a convex polygon (with no zero
area against two vertices) has a radial word `w` (`C1OneLowerTopCap.exists_hullWord`) passing
every pruned enumeration test checked by `enumW`, and `w` puts it inside `abc`. -/
theorem word_of_inTriangle {n : ℕ} [NeZero n] (hn : 3 ≤ n) {V : Fin n → Point}
    (hV : ConvexPolygon V) {a b e : Fin n} (hab : a < b) (hbe : b < e) {R : Point}
    (hR : InTriangle R (V a) (V b) (V e))
    (hne : ∀ i j : Fin n, i ≠ j → sarea (V i) (V j) R ≠ 0) {p : List ℕ → Bool}
    (he : enumW n (n - 2) p n [] = true) :
    ∃ w : List ℕ, p w = true ∧
      C1OneLowerTopCap.HasHullWord V R (fun i : Fin n => w.getD i.val 0) ∧
      (∀ i : Fin n, 1 ≤ w.getD i.val 0 ∧ w.getD i.val 0 ≤ n - 2) ∧
      hinside n w a b e = true := by
  obtain ⟨r, hr, hb, ha⟩ := C1OneLowerTopCap.exists_hullWord hV
    (inTriangle_edges hn hV hab hbe hR) hne
  have eq : (fun i : Fin n => (List.ofFn r).getD i.val 0) = r := funext fun i => ofFn_getD r i
  refine ⟨List.ofFn r, enum_word he hb ha, by rw [eq]; exact hr, fun i => by
    rw [ofFn_getD]; exact hb i, ?_⟩
  obtain ⟨r1, r2, r3⟩ := hR
  simp only [hinside, hsign_eq, eq, Bool.and_eq_true]
  exact ⟨⟨(hr a b hab.ne).1 r1, (hr b e hbe.ne).1 r2⟩, (hr e a (hab.trans hbe).ne').1 r3⟩

/-- A member of a list of words is one of its entries. -/
theorem exists_getD_of_mem {ws : List (List ℕ)} {w : List ℕ} (h : w ∈ ws) :
    ∃ i, i < ws.length ∧ ws.getD i [] = w := by
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.1 h
  exact ⟨i, hi, by simp [List.getD_eq_getElem?_getD, hi]⟩

/-! ### A division bound -/

/-- `t ≤ a u - e` with `t > 0`, `e ≥ 0` and `0 ≤ a ≤ M` gives `u ≥ t / M`. -/
theorem lb_of_prod {t a u M e : ℝ} (ht : 0 < t) (h : t ≤ a * u - e) (he : 0 ≤ e) (ha0 : 0 ≤ a)
    (haM : a ≤ M) : t / M ≤ u := by
  have hu : 0 < u := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonpos_of_nonneg_of_nonpos ha0 hn]
  have hM : 0 < M := by
    by_contra hn; push Not at hn
    nlinarith [mul_le_mul_of_nonneg_right haM hu.le, mul_nonpos_of_nonneg_of_nonpos hu.le hn]
  rw [div_le_iff₀ hM]
  nlinarith [mul_le_mul_of_nonneg_right haM hu.le]

/-- An oriented area bound from `AreaOK`: a positive area is at least `2A₀`. -/
theorem AreaOK.pos_ge {P : ℕ → Point} (H : AreaOK P) {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e) (hp : 0 < sarea (P a) (P b) (P e)) :
    2 * A₀ ≤ sarea (P a) (P b) (P e) := by
  have := H a b e ha hb he hab hbe hae
  rwa [abs_of_pos hp] at this

/-- An oriented area bound from `AreaOK`: a negative area is at most `-2A₀`. -/
theorem AreaOK.neg_ge {P : ℕ → Point} (H : AreaOK P) {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e) (hp : sarea (P a) (P b) (P e) < 0) :
    2 * A₀ ≤ -sarea (P a) (P b) (P e) := by
  have := H a b e ha hb he hab hbe hae
  rwa [abs_of_neg hp] at this

end Heilbronn.C1OneLowerB
