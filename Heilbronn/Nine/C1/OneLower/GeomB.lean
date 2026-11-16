module

public import Heilbronn.Nine.C1.OneLower.ModelB
public import Heilbronn.Nine.C1.OneLower.TopCap

/-! # Geometric soundness of the hull-word model of group B

For a convex polygon `V₀, …, V_{n-1}` (`C1OneLowerTopCap.ConvexPolygon`) and interior points with
radial words (`C1OneLowerTopCap.HasHullWord`, from `C1OneLowerTopCap.exists_hullWord`):

* `hsign_eq`: the list sign `hsign` is the polygon sign `hullSign`;
* `edge_pos`, `inTriangle_edges`: a point strictly inside a triangle of vertices is strictly
  inside every edge of the polygon;
* `enum_word`: a radial word satisfying (13) and a pruned enumeration test passes the test
  (`enumW_sound`);
* `hullTable_holds`: every signed triangle of `hullTable n ws` holds (hull triples by convexity,
  one interior point by its word, interior pairs by the ray-order rule
  `C1OneLowerTopCap.eq14`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerB

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Cover Model
open Heilbronn.Nine.C1OneLowerTopCap (HullWord hullSign HasHullWord HullAntisymm ConvexPolygon)

variable {n : ℕ}

/-! ### Lists and polygon words -/

theorem hsign_eq (w : List ℕ) (i j : Fin n) :
    hsign n w i j = hullSign (fun x : Fin n => w.getD x.val 0) i j := by
  have hi := i.isLt
  have e : (j - i : Fin n).val = (j.val + n - i.val) % n := by
    rw [Fin.sub_def]; simp only; congr 1; omega
  unfold hsign hullSign
  rw [Bool.eq_iff_iff, Nat.ble_eq, decide_eq_true_iff, e]

/-- The vertex `i + 1` of a polygon, as a value. -/
theorem val_succ_of_lt [NeZero n] {i : Fin n} (h : i.val + 1 < n) : (i + 1).val = i.val + 1 := by
  rw [Fin.val_add, Fin.val_one', Nat.add_mod_mod, Nat.mod_eq_of_lt h]

theorem val_succ_of_last [NeZero n] (_hn : 2 ≤ n) {i : Fin n} (h : i.val + 1 = n) :
    (i + 1).val = 0 := by
  rw [Fin.val_add, Fin.val_one', Nat.add_mod_mod, h, Nat.mod_self]

/-- Every vertex other than the endpoints of an edge lies strictly to the left of it. -/
theorem edge_pos [NeZero n] (hn : 3 ≤ n) {V : Fin n → Point} (hV : ConvexPolygon V)
    (i m : Fin n) (h1 : m ≠ i) (h2 : m ≠ i + 1) : 0 < sarea (V i) (V (i + 1)) (V m) := by
  have hi := i.isLt
  have hm := m.isLt
  rcases Nat.lt_or_ge (i.val + 1) n with hl | hl
  · have e := val_succ_of_lt hl
    have h1' : m.val ≠ i.val := fun h => h1 (Fin.ext h)
    have h2' : m.val ≠ i.val + 1 := fun h => h2 (Fin.ext (by rw [e]; exact h))
    rcases Nat.lt_or_ge m.val i.val with hmi | hmi
    · rw [sarea_cycle]
      exact hV _ _ _ (Fin.lt_def.2 hmi) (Fin.lt_def.2 (by rw [e]; omega))
    · exact hV _ _ _ (Fin.lt_def.2 (by rw [e]; omega)) (Fin.lt_def.2 (by rw [e]; omega))
  · have e := val_succ_of_last (by omega) (show i.val + 1 = n by omega)
    have h1' : m.val ≠ i.val := fun h => h1 (Fin.ext h)
    have h2' : m.val ≠ 0 := fun h => h2 (Fin.ext (by rw [e]; exact h))
    rw [← sarea_cycle]
    exact hV _ _ _ (Fin.lt_def.2 (by rw [e]; omega)) (Fin.lt_def.2 (by omega))

/-- The barycentric identity `[ABC][PQR] = [BCR][PQA] + [CAR][PQB] + [ABR][PQC]`. -/
theorem bary_identity (A B C P Q R : Point) :
    sarea A B C * sarea P Q R =
      sarea B C R * sarea P Q A + sarea C A R * sarea P Q B + sarea A B R * sarea P Q C := by
  unfold sarea; ring

/-- A point strictly inside a counterclockwise triangle of vertices `a < b < c` of a convex
polygon is strictly inside every edge. -/
theorem inTriangle_edges [NeZero n] (hn : 3 ≤ n) {V : Fin n → Point} (hV : ConvexPolygon V)
    {a b c : Fin n} (hab : a < b) (hbc : b < c) {R : Point} (hR : InTriangle R (V a) (V b) (V c))
    (i : Fin n) : 0 < sarea (V i) (V (i + 1)) R := by
  obtain ⟨r1, r2, r3⟩ := hR
  have hABC := hV a b c hab hbc
  have nn : ∀ m : Fin n, 0 ≤ sarea (V i) (V (i + 1)) (V m) := by
    intro m
    by_cases e1 : m = i
    · subst e1; unfold sarea; nlinarith
    by_cases e2 : m = i + 1
    · subst e2; unfold sarea; nlinarith
    exact (edge_pos hn hV i m e1 e2).le
  have e := bary_identity (V a) (V b) (V c) (V i) (V (i + 1)) R
  have key : 0 < sarea (V b) (V c) R * sarea (V i) (V (i + 1)) (V a) +
      sarea (V c) (V a) R * sarea (V i) (V (i + 1)) (V b) +
      sarea (V a) (V b) R * sarea (V i) (V (i + 1)) (V c) := by
    have pa := mul_nonneg r2.le (nn a)
    have pb := mul_nonneg r3.le (nn b)
    have pc := mul_nonneg r1.le (nn c)
    have hne : a ≠ b ∧ b ≠ c ∧ a ≠ c := ⟨hab.ne, hbc.ne, (hab.trans hbc).ne⟩
    by_cases ea : a ≠ i ∧ a ≠ i + 1
    · have := mul_pos r2 (edge_pos hn hV i a ea.1 ea.2); linarith
    by_cases eb : b ≠ i ∧ b ≠ i + 1
    · have := mul_pos r3 (edge_pos hn hV i b eb.1 eb.2); linarith
    have ec : c ≠ i ∧ c ≠ i + 1 := by
      push Not at ea eb
      constructor
      · intro hc; subst hc
        rcases Classical.em (a = c) with h | h
        · exact hne.2.2 h
        · have ha : a = c + 1 := by tauto
          have hb : b = c + 1 := by tauto
          exact hne.1 (ha.trans hb.symm)
      · intro hc; subst hc
        have ha : a = i := by
          by_contra h; exact hne.2.2 (by tauto)
        have hb : b = i := by
          by_contra h; exact hne.2.1 (by tauto)
        exact hne.1 (ha.trans hb.symm)
    have := mul_pos r1 (edge_pos hn hV i c ec.1 ec.2); linarith
  rw [← e] at key
  exact pos_of_mul_pos_right key hABC.le

/-! ### Enumerating radial words -/

theorem ofFn_getD (r : Fin n → ℕ) (i : Fin n) : (List.ofFn r).getD i.val 0 = r i := by
  simp [List.getD_eq_getElem?_getD]

theorem lastOK_ofFn_take [NeZero n] {r : Fin n → ℕ} (hr : HullAntisymm r) (i : ℕ) (hi : i < n) :
    lastOK n ((List.ofFn r).take (i + 1)) = true := by
  unfold lastOK
  simp only [List.length_take, List.length_ofFn, List.all_eq_true, List.mem_range]
  intro a ha
  have hmin : min (i + 1) n = i + 1 := by omega
  rw [hmin] at ha ⊢
  simp only [Nat.add_sub_cancel]
  have ga : ((List.ofFn r).take (i + 1)).getD a 0 = r ⟨a, by omega⟩ := by
    rw [List.getD_eq_getElem?_getD, List.getElem?_take_of_lt (by omega)]
    simp [show a < n by omega]
  have gi : ((List.ofFn r).take (i + 1)).getD i 0 = r ⟨i, hi⟩ := by
    rw [List.getD_eq_getElem?_getD, List.getElem?_take_of_lt (by omega)]
    simp [hi]
  unfold pairOK
  rw [ga, gi]
  have key := hr ⟨a, by omega⟩ ⟨i - a, by omega⟩ (by simp only; omega)
  have e : (⟨a, by omega⟩ + ⟨i - a, by omega⟩ : Fin n) = ⟨i, hi⟩ := by
    ext; simp only [Fin.val_add]; rw [Nat.mod_eq_of_lt (by omega)]; omega
  rw [e] at key
  simp only at key
  rw [beq_iff_eq, decide_eq_decide]
  exact key

/-- A radial word with entries in `{1, …, n - 2}` satisfying (13) passes every pruned enumeration
test that `enumW` has checked. -/
theorem enum_word [NeZero n] {p : List ℕ → Bool} (he : enumW n (n - 2) p n [] = true)
    {r : Fin n → ℕ} (hb : ∀ i, 1 ≤ r i ∧ r i ≤ n - 2) (hr : HullAntisymm r) :
    p (List.ofFn r) = true := by
  have := enumW_sound n (n - 2) p n [] (List.ofFn r) he (by simp) (by
    intro x hx
    obtain ⟨i, rfl⟩ := List.mem_ofFn.1 hx
    exact hb i) (by
    intro i hi
    simpa using lastOK_ofFn_take hr i hi)
  simpa using this

/-! ### The initial table -/

/-- The setting of a hull cell: the nine points `P`, the first `n` of them the convex polygon
`V`, the next `ws.length` interior points with the radial words `ws`. -/
structure HullCell (n : ℕ) (V : Fin n → Point) (P : ℕ → Point) (ws : List (List ℕ)) : Prop where
  three : 3 ≤ n
  len : n + ws.length = 9
  convex : ConvexPolygon V
  hPV : ∀ i : Fin n, P i.val = V i
  word : ∀ m, m < ws.length →
    HasHullWord V (P (n + m)) (fun i : Fin n => (ws.getD m []).getD i.val 0)
  bounds : ∀ m, m < ws.length → ∀ i : Fin n,
    1 ≤ (ws.getD m []).getD i.val 0 ∧ (ws.getD m []).getD i.val 0 ≤ n - 2
  area : AreaOK P

theorem HullCell.neZero {V : Fin n → Point} {P : ℕ → Point} {ws : List (List ℕ)}
    (C : HullCell n V P ws) : NeZero n := ⟨by have := C.three; omega⟩

theorem HullCell.triple_holds {V : Fin n → Point} {P : ℕ → Point} {ws : List (List ℕ)}
    (C : HullCell n V P ws) {t : ℕ × ℕ × ℕ} (ht : t ∈ lexTriples) {sg : Bool}
    (hs : hullTripleSign n ws t = some sg) : FHolds P (t, sg) := by
  obtain ⟨t1, t2, t3⟩ := C1ZeroLower.lexTriples_valid t ht
  refine ⟨t1, t2, t3, ?_⟩
  have hlen := C.len
  unfold hullTripleSign at hs
  split_ifs at hs with a1 a2 <;> simp only [Option.some.injEq] at hs <;> subst hs
  · have := C.convex ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, a1⟩ (Fin.lt_def.2 t1)
      (Fin.lt_def.2 t2)
    simp only [SFact.Holds, OrientHolds, ite_true]
    rw [C.hPV ⟨t.1, by omega⟩, C.hPV ⟨t.2.1, by omega⟩, C.hPV ⟨t.2.2, a1⟩]
    exact this
  · have hm : t.2.2 - n < ws.length := by omega
    have W := C.word _ hm
    have e3 : P t.2.2 = P (n + (t.2.2 - n)) := by congr 1; omega
    have hij : (⟨t.1, by omega⟩ : Fin n) ≠ ⟨t.2.1, a2⟩ := by
      intro h; simp only [Fin.mk.injEq] at h; omega
    have key := W ⟨t.1, by omega⟩ ⟨t.2.1, a2⟩ hij
    rw [← C.hPV ⟨t.1, by omega⟩, ← C.hPV ⟨t.2.1, a2⟩, ← e3, ← hsign_eq] at key
    simp only at key
    have hne := C.area.ne_zero (a := t.1) (b := t.2.1) (e := t.2.2) (by omega) (by omega)
      (by omega) (by omega) (by omega) (by omega)
    simp only [SFact.Holds, OrientHolds]
    cases hsg : hsign n (ws.getD (t.2.2 - n) []) t.1 t.2.1
    · simp only [Bool.false_eq_true, ite_false]
      rw [hsg] at key
      have : ¬ 0 < sarea (P t.1) (P t.2.1) (P t.2.2) := fun h => by simpa using key.1 h
      exact lt_of_le_of_ne (not_lt.1 this) hne
    · simp only [ite_true]
      rw [hsg] at key
      exact key.2 rfl

theorem HullCell.ray_holds {V : Fin n → Point} {P : ℕ → Point} {ws : List (List ℕ)}
    (C : HullCell n V P ws) {a b : ℕ} (hab : a < b) (hb : b < ws.length) {f : SFact}
    (hf : f ∈ raySigns n ws a b) : FHolds P f := by
  have := C.neZero
  have hlen := C.len
  simp only [raySigns, List.mem_filterMap, List.mem_range] at hf
  obtain ⟨v, hv, hf⟩ := hf
  split_ifs at hf with hxy
  simp only [Option.some.injEq] at hf
  subst hf
  refine ⟨by simp only; omega, by simp only; omega, by simp only; omega, ?_⟩
  have Wa := C.word a (by omega)
  have Wb := C.word b hb
  have Ba := C.bounds a (by omega)
  have Bb := C.bounds b hb
  simp only [SFact.Holds, OrientHolds]
  rw [C.hPV ⟨v, hv⟩]
  rcases Nat.lt_or_gt_of_ne hxy with hl | hl
  · simp only [hl, decide_true, ite_true]
    exact C1OneLowerTopCap.eq14 C.convex Wa Wb Ba Bb (i := ⟨v, hv⟩) hl
  · simp only [show ¬ ((ws.getD a []).getD v 0 < (ws.getD b []).getD v 0) by omega,
      decide_false, Bool.false_eq_true, ite_false]
    have := C1OneLowerTopCap.eq14 C.convex Wb Wa Bb Ba (i := ⟨v, hv⟩) hl
    rw [sarea_swap₂₃] at this
    linarith

/-- **The initial signs of a hull cell hold**: the hull triples (convexity), the triples with one
interior point (its word) and the ray-order signs of interior pairs (`C1OneLowerTopCap.eq14`). -/
theorem HullCell.table_holds {V : Fin n → Point} {P : ℕ → Point} {ws : List (List ℕ)}
    (C : HullCell n V P ws) : AllHold (FHolds P) (hullTable n ws) := by
  intro f hf
  simp only [hullTable, List.mem_append, List.mem_filterMap, Option.map_eq_some_iff,
    List.mem_flatMap] at hf
  rcases hf with ⟨t, ht, sg, hs, rfl⟩ | ⟨p, hp, hf⟩
  · exact C.triple_holds ht hs
  · simp only [idxPairs, List.mem_flatMap, List.mem_range, List.mem_map, List.mem_filter,
      decide_eq_true_eq] at hp
    obtain ⟨a, ha, b, ⟨hb, hab⟩, rfl⟩ := hp
    exact C.ray_holds hab hb hf

end Heilbronn.Nine.C1OneLowerB
