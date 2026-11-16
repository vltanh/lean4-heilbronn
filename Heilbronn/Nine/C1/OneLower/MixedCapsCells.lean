module

public import Heilbronn.Nine.C1.OneLower.TopTriangle
public import Heilbronn.Nine.C1.OneLower.MixedCapsTrees

/-! # The mixed-cap cells: one lower C1 point and two cap points in different caps

The soundness of the kernel-checked package `Heilbronn.Nine.C1.OneLower.MixedCapsTrees`:

* `WordL`: five-anchor words as lists; `radial_list`: the radial rule for the 14 words of
  the package (cap, lower and upper words);
* `table5_holds`: the initial signs `hullTable 5 ws` of four free points with five-anchor words;
* `MCell`: a cell (a competitive configuration under `f ≤ d`, with the words of its case);
  `MCell.false`: every cell is impossible (`Cover.checkTree_sound`: the atoms are nonnegative, the
  splits exhaustive, the two closed leaves are inconsistent by `quad_false`);
* the bounds behind the atoms, by class (including `h ≥ ρ`, `f ≤ 803/1920` for two cases,
  `MPre.doubleOD`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerMixedCaps

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Heilbronn.Nine.C1OneLowerB Cover Cert Cert.Expr
open Heilbronn.Nine.C1OneLowerTopCap (HasHullWord)

variable {h c d f : ℝ} {Q : Fin 4 → Point} {key : ℕ × ℕ × ℕ}

/-! ### Five-anchor words as lists -/

/-- `X` has the five-anchor word `w` (a list): `[VᵤVᵥX] > 0 ↔ (v - u) mod 5 ≤ wᵤ`. -/
def WordL (P : ℕ → Point) (X : Point) (w : List ℕ) : Prop :=
  ∀ u v : ℕ, u < 5 → v < 5 → u ≠ v → (0 < sarea (P u) (P v) X ↔ hsign 5 w u v = true)

theorem WordL.pos {P : ℕ → Point} {X : Point} {w : List ℕ} (W : WordL P X w) {u v : ℕ}
    (hu : u < 5) (hv : v < 5) (huv : u ≠ v) (hs : hsign 5 w u v = true) :
    0 < sarea (P u) (P v) X := (W u v hu hv huv).2 hs

theorem WordL.neg (H : Comp h c d f Q) {a : Fin 4} {w : List ℕ}
    (W : WordL (cfg h c d f Q) (Q a) w) {u v : ℕ} (hu : u < 5) (hv : v < 5) (huv : u ≠ v)
    (hs : hsign 5 w u v = false) : sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a) < 0 := by
  have h1 := H.areaF u v a hu hv huv
  have h2 : ¬ 0 < sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a) := by
    rw [W u v hu hv huv, hs]; simp
  rcases lt_or_ge (sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a)) 0 with h3 | h3
  · exact h3
  · have : sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a) = 0 := le_antisymm (not_lt.1 h2) h3
    rw [this, abs_zero] at h1; linarith [A₀_pos]

/-- A zero-lower word index gives the list word. -/
theorem wordL_of_wordAt {P : ℕ → Point} {X : Point} {w : ℕ} (W : WordAt P X w) :
    WordL P X (C1ZeroLower.Model.words.getD w []) := W

/-- The 14 words of the package. -/
def allW : List (List ℕ) :=
  [Model.capW 0, Model.capW 1, Model.capW 2] ++ Model.lowerW ++ Model.upperW

/-- The combinatorial part of the radial rule for the words `wa, wb` at the anchor `v`: if
`wa_v < wb_v`, the anchor `m = v + wa_v + 1` separates the two points. -/
def radialOK (wa wb : List ℕ) (v : ℕ) : Bool :=
  !(decide (wa.getD v 0 < wb.getD v 0)) ||
    (decide ((v + wa.getD v 0 + 1) % 5 ≠ v) && !(decide (v = 1 ∧ (v + wa.getD v 0 + 1) % 5 = 0)) &&
      !(decide (v = 4 ∧ (v + wa.getD v 0 + 1) % 5 = 0)) &&
      !(hsign 5 wa v ((v + wa.getD v 0 + 1) % 5)) && hsign 5 wb v ((v + wa.getD v 0 + 1) % 5))

theorem radial_table :
    (allW.all fun wa => allW.all fun wb => (List.range 5).all fun v => radialOK wa wb v) = true := by
  decide +kernel

/-- The geometric core of the radial rule (as in `C1ZeroLower.Comp.radial_pair`): if the anchor
ray `V_v V_m` has `Q i` on its negative and `Q j` on its positive side, then `[V_v Q_i Q_j] > 0`. -/
theorem radial_core (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j) {v m : ℕ} (hv : v < 5)
    (hm5 : m < 5) (hvm : v ≠ m) (n1 : ¬(v = 1 ∧ m = 0)) (n4 : ¬(v = 4 ∧ m = 0))
    (hA : sarea (cfg h c d f Q v) (cfg h c d f Q m) (Q i) < 0)
    (hB : 0 < sarea (cfg h c d f Q v) (cfg h c d f Q m) (Q j)) :
    0 < sarea (cfg h c d f Q v) (Q i) (Q j) := by
  have e := radial_id (cfg h c d f Q v) (Q i) (cfg h c d f Q m) (Q j) (ell v).1 (ell v).2
  have l1 := ell_anchor (Q := Q) H.hA hv hm5 hvm n1 n4
  have l2 := ell_free (h := h) (c := c) (d := d) (f := f) (Q := Q) v hv (H.hQ j)
  have l3 := ell_free (h := h) (c := c) (d := d) (f := f) (Q := Q) v hv (H.hQ i)
  have hA' : 0 < sarea (cfg h c d f Q v) (Q i) (cfg h c d f Q m) := by
    rw [sarea_swap₂₃, ← sarea_cycle, sarea_cycle]
    have := sarea_swap₂₃ (cfg h c d f Q v) (cfg h c d f Q m) (Q i)
    linarith
  have hT : 0 ≤ sarea (cfg h c d f Q v) (Q i) (Q j) := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg hA'.le l2, mul_nonneg hB.le l3]
  have hne := H.areaFF v i j hv hij
  rcases hT.lt_or_eq with h1 | h1
  · exact h1
  · rw [← h1, abs_zero] at hne; linarith [A₀_pos]

/-- The radial rule for the words of the package: if `Q i, Q j` have the words `wa, wb` and
`wa_v < wb_v`, then `[V_v Q_i Q_j] > 0`. -/
theorem radial_list (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j) {wa wb : List ℕ}
    (ha : wa ∈ allW) (hb : wb ∈ allW) (Wa : WordL (cfg h c d f Q) (Q i) wa)
    (Wb : WordL (cfg h c d f Q) (Q j) wb) {v : ℕ} (hv : v < 5)
    (hlt : wa.getD v 0 < wb.getD v 0) : 0 < sarea (cfg h c d f Q v) (Q i) (Q j) := by
  have hr := List.all_eq_true.1 (List.all_eq_true.1 (List.all_eq_true.1 radial_table wa ha) wb hb)
    v (List.mem_range.2 hv)
  simp only [radialOK, hlt, decide_true, Bool.not_true, Bool.false_or, Bool.and_eq_true,
    decide_eq_true_eq, Bool.not_eq_true', decide_eq_false_iff_not] at hr
  obtain ⟨⟨⟨⟨hm, n1⟩, n4⟩, sa⟩, sb⟩ := hr
  have hm5 : (v + wa.getD v 0 + 1) % 5 < 5 := Nat.mod_lt _ (by norm_num)
  exact radial_core H hij hv hm5 (Ne.symm hm) n1 n4 (Wa.neg H hv hm5 (Ne.symm hm) sa)
    (Wb.pos hv hm5 (Ne.symm hm) sb)

/-! ### The initial signs -/

/-- The initial signs of four free points with five-anchor words hold (two anchors and a free
point by its word; an anchor and two free points by the radial rule). -/
theorem table5_holds (H : Comp h c d f Q) {ws : List (List ℕ)} (hlen : ws.length = 4)
    (hmem : ∀ a : Fin 4, ws.getD a [] ∈ allW)
    (hW : ∀ a : Fin 4, WordL (cfg h c d f Q) (Q a) (ws.getD a [])) :
    AllHold (FHolds 9 (cfg h c d f Q)) (hullTable 5 ws) := by
  have cf : ∀ m (hm : m < 4), cfg h c d f Q (5 + m) = Q ⟨m, hm⟩ := by
    intro m hm; rw [add_comm]; exact cfg_free h c d f Q ⟨m, hm⟩
  intro g hg
  simp only [hullTable, List.mem_append, List.mem_filterMap, Option.map_eq_some_iff,
    List.mem_flatMap] at hg
  rcases hg with ⟨t, ht, sg, hs, rfl⟩ | ⟨p, hp, hf⟩
  · obtain ⟨t1, t2, t3⟩ := mem_lexTriples ht
    refine ⟨t1, t2, t3, ?_⟩
    unfold hullTripleSign at hs
    split_ifs at hs with a1 a2 <;> simp only [Option.some.injEq] at hs <;> subst hs
    · simp only [SFact.Holds, OrientHolds, ite_true]
      exact anchor_pos H.hA (lexTriples_anchor t ht a1)
    · have hm : t.2.2 - 5 < 4 := by omega
      have e3 : cfg h c d f Q t.2.2 = Q ⟨t.2.2 - 5, hm⟩ := by
        rw [← cf _ hm]; congr 1; omega
      have W := hW ⟨t.2.2 - 5, hm⟩
      simp only [SFact.Holds, OrientHolds, e3]
      cases hsg : hsign 5 (ws.getD (t.2.2 - 5) []) t.1 t.2.1
      · simp only [Bool.false_eq_true, ite_false]
        exact W.neg H (by omega) a2 (by omega) hsg
      · simp only [ite_true]
        exact W.pos (by omega) a2 (by omega) hsg
  · simp only [idxPairs, List.mem_flatMap, List.mem_range, List.mem_map, List.mem_filter,
      decide_eq_true_eq] at hp
    obtain ⟨a, ha, b, ⟨hb, hab⟩, rfl⟩ := hp
    rw [hlen] at ha hb
    simp only [raySigns, List.mem_filterMap, List.mem_range] at hf
    obtain ⟨v, hv, hf⟩ := hf
    split_ifs at hf with hxy
    simp only [Option.some.injEq] at hf
    subst hf
    refine ⟨by simp only; omega, by simp only; omega, by simp only; omega, ?_⟩
    have hij : (⟨a, ha⟩ : Fin 4) ≠ ⟨b, hb⟩ := by intro e; simp only [Fin.mk.injEq] at e; omega
    simp only [SFact.Holds, OrientHolds, cf a ha, cf b hb]
    have Wa := hW ⟨a, ha⟩
    have Wb := hW ⟨b, hb⟩
    have ma := hmem ⟨a, ha⟩
    have mb := hmem ⟨b, hb⟩
    simp only at Wa Wb ma mb
    rcases Nat.lt_or_gt_of_ne hxy with hl | hl
    · simp only [hl, decide_true, ite_true]
      exact radial_list H hij ma mb Wa Wb hv hl
    · simp only [show ¬ (ws.getD a []).getD v 0 < (ws.getD b []).getD v 0 by omega,
        decide_false, Bool.false_eq_true, ite_false]
      have := radial_list H hij.symm mb ma Wb Wa hv hl
      rw [sarea_swap₂₃] at this; linarith

/-! ### The cells -/

/-- The facts of the package: signed triangles, and the cut `q_x ≤ 5/8` / `q_x ≥ 5/8`
(first index `9`). -/
def MHolds (P : ℕ → Point) (z : ℕ → ℝ) (f : SFact) : Prop :=
  if f.1.1 = 9 then (if f.2 then 5 / 8 ≤ z 10 else z 10 ≤ 5 / 8) else FHolds 9 P f

/-- A cell of the package: a competitive configuration (with `f ≤ d`) whose free points
`X, Y, L, Q = Q 0, …, Q 3` have the words of the case `key` (`L ∈ OHC`, `Q ∈ HCDF`). -/
structure MPre (key : ℕ × ℕ × ℕ) (h c d f : ℝ) (Q : Fin 4 → Point) : Prop where
  comp : Comp h c d f Q
  hfd : f ≤ d
  word : ∀ a : Fin 4, WordL (cfg h c d f Q) (Q a) ((Model.words key).getD a [])
  lower : InLower h c (Q 2)
  upper : InUpperQuad h c d f (Q 3)

/-- A cell: a pre-cell whose case is one of the 62 cases of the package. -/
structure MCell (key : ℕ × ℕ × ℕ) (h c d f : ℝ) (Q : Fin 4 → Point) : Prop
    extends MPre key h c d f Q where
  hk : key ∈ Model.caseKeys

theorem keys_ok : ∀ key ∈ Model.caseKeys, key.1 < 3 ∧ key.2.1 < 3 ∧ key.2.2 < 8 ∧
    (∀ a : Fin 4, (Model.words key).getD a [] ∈ allW) ∧ (Model.words key).length = 4 ∧
    lookup (hullTable 5 (Model.words key)) (0, 5, 6) = some true ∧
    lookup (hullTable 5 (Model.words key)) (1, 5, 6) = some true ∧
    lookup (hullTable 5 (Model.words key)) (4, 5, 6) = some true := by
  decide +kernel

/-- `[XYL] > 0`: `[OXY], [CXY], [HXY] > 0` and `L ∈ OCH`. -/
theorem xyl_pos {X Y L : Point} (hL : InLower h c L) (h0 : 0 < sarea ptO X Y)
    (h1 : 0 < sarea (ptC c) X Y) (h4 : 0 < sarea (ptH h) X Y) : 0 < sarea X Y L := by
  obtain ⟨r1, r2, r3⟩ := hL
  have e := bary_identity ptO (ptC c) (ptH h) X Y L
  have hOCH : 0 < sarea ptO (ptC c) (ptH h) := by
    have := bary_identity ptO (ptC c) (ptH h) ptO (ptC c) L
    unfold sarea at *; nlinarith
  rw [show sarea X Y ptO = sarea ptO X Y from sarea_cycle _ _ _,
    show sarea X Y (ptC c) = sarea (ptC c) X Y from sarea_cycle _ _ _,
    show sarea X Y (ptH h) = sarea (ptH h) X Y from sarea_cycle _ _ _] at e
  have : 0 < sarea ptO (ptC c) (ptH h) * sarea X Y L := by
    rw [e]; nlinarith [mul_pos r2 h0, mul_pos r3 h1, mul_pos r1 h4]
  exact pos_of_mul_pos_right this hOCH.le

/-- The initial signs of a cell hold. -/
theorem MCell.base (C : MCell key h c d f Q) :
    AllHold (FHolds 9 (cfg h c d f Q)) (Model.baseSigns key) := by
  obtain ⟨-, -, -, hmem, hlen, l0, l1, l4⟩ := keys_ok key C.hk
  have ht := table5_holds C.comp hlen hmem C.word
  intro g hg
  simp only [Model.baseSigns, List.mem_append, List.mem_singleton] at hg
  rcases hg with hg | rfl
  · exact ht g hg
  · have ht' : AllHold (SFact.Holds (cfg h c d f Q)) (hullTable 5 (Model.words key)) :=
      fun x hx => (ht x hx).2.2.2
    have g0 := lookup_sound ht' l0
    have g1 := lookup_sound ht' l1
    have g4 := lookup_sound ht' l4
    simp only [OrientHolds, ite_true] at g0 g1 g4
    refine ⟨by norm_num, by norm_num, by norm_num, ?_⟩
    simp only [SFact.Holds, OrientHolds, ite_true]
    exact xyl_pos C.lower g0 g1 g4

/-- Four points `A, B, C, D` in convex position (`[ABC], [ABD], [ACD], [BCD] > 0`) are not
alternately on the two sides of a line: the identity
`[BCD]g(A) - [ACD]g(B) + [ABD]g(C) - [ABC]g(D) = 0` for `g(P) = [abP]`. -/
theorem quad_false {P : ℕ → Point} {tb : List SFact} (htb : AllHold (SFact.Holds P) tb)
    {a b A B C D : ℕ} (h : Model.quadTest tb a b A B C D = true) : False := by
  simp only [Model.quadTest, Bool.and_eq_true, beq_iff_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩ := h
  have o1 := orientedLookup_sound htb h1
  have o2 := orientedLookup_sound htb h2
  have o3 := orientedLookup_sound htb h3
  have o4 := orientedLookup_sound htb h4
  have o5 := orientedLookup_sound htb h5
  have o6 := orientedLookup_sound htb h6
  have o7 := orientedLookup_sound htb h7
  have o8 := orientedLookup_sound htb h8
  simp only [OrientHolds, ite_true, ite_false, Bool.false_eq_true] at o1 o2 o3 o4 o5 o6 o7 o8
  have e : sarea (P B) (P C) (P D) * sarea (P a) (P b) (P A) -
      sarea (P A) (P C) (P D) * sarea (P a) (P b) (P B) +
      sarea (P A) (P B) (P D) * sarea (P a) (P b) (P C) -
      sarea (P A) (P B) (P C) * sarea (P a) (P b) (P D) = 0 := by unfold sarea; ring
  nlinarith [mul_pos o8 (neg_pos.2 o1), mul_pos o7 o2, mul_pos o6 (neg_pos.2 o3), mul_pos o5 o4]

/-! ### The bounds behind the atoms -/

theorem MPre.sq (C : MPre key h c d f Q) (a : Fin 4) :
    0 ≤ (Q a).1 ∧ (Q a).1 ≤ 1 ∧ 0 ≤ (Q a).2 ∧ (Q a).2 ≤ 1 := C.comp.hQ a

/-- The bounds common to all classes: `hc ≥ 3s`, `h, c ≥ 3s`, `s ≤ d, f ≤ 1 - s`, the
lower-point bounds, `s ≤ q ≤ 1 - s`, `W ≥ 4s`. -/
theorem MPre.common (C : MPre key h c d f Q) :
    24 / 73 ≤ h * c ∧ 24 / 73 ≤ h ∧ 24 / 73 ≤ c ∧ 8 / 73 ≤ d ∧ d ≤ 65 / 73 ∧ 8 / 73 ≤ f ∧
      f ≤ 65 / 73 ∧
      8 / 73 ≤ (Q 2).1 ∧ 8 / 73 ≤ (Q 2).2 ∧ 16 / 73 ≤ c - (Q 2).1 ∧ 16 / 73 ≤ h - (Q 2).2 ∧
      8 / 73 ≤ 1 - (Q 2).1 - (Q 2).2 ∧
      8 / 73 ≤ (Q 3).1 ∧ 8 / 73 ≤ (Q 3).2 ∧ (Q 3).1 ≤ 65 / 73 ∧ (Q 3).2 ≤ 65 / 73 ∧
      32 / 73 ≤ 1 - (h - d) * (c - f) := by
  have H := C.comp
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨a1, a2, a3, a4⟩ := H.anchor_bounds
  obtain ⟨p1, p2, p3, p4⟩ := H.params_ge
  obtain ⟨o1, o2, o3⟩ := C.lower
  obtain ⟨u1, u2, u3, u4⟩ := C.upper
  have l1 := le_of_le_abs_of_nonneg (H.areaF 0 1 2) o1.le
  have l2 := le_of_le_abs_of_nonneg (H.areaF 4 0 2) o3.le
  have l3 := le_of_le_abs_of_nonneg (H.areaF 1 4 2) o2.le
  have q1 := le_of_le_abs_of_nonneg (H.areaF 4 1 3) u1.le
  have q2 := le_of_le_abs_of_nonneg (H.areaF 1 2 3) u2.le
  have q3 := le_of_le_abs_of_nonneg (H.areaF 2 3 3) u3.le
  have q4 := le_of_le_abs_of_nonneg (H.areaF 3 4 3) u4.le
  obtain ⟨w1, w2⟩ := H.upper_row 3 C.upper
  obtain ⟨w3, w4⟩ := H.coord_ge 3
  obtain ⟨x0, x1, y0, y1⟩ := H.hQ 2
  have ht0 := two_A₀.1
  simp only [cfg] at l1 l2 l3 q1 q2 q3 q4
  have eW : sarea (0, h) (c, 0) (Q 3) + sarea (c, 0) (1, d) (Q 3) + sarea (1, d) (f, 1) (Q 3) +
      sarea (f, 1) (0, h) (Q 3) = 1 - (h - d) * (c - f) := by unfold sarea; ring
  have e1 : sarea (0, 0) (c, 0) (Q 2) = c * (Q 2).2 := by unfold sarea; ring
  have e2 : sarea (0, h) (0, 0) (Q 2) = h * (Q 2).1 := by unfold sarea; ring
  have e3 : sarea (c, 0) (0, h) (Q 2) = h * c - h * (Q 2).1 - c * (Q 2).2 := by unfold sarea; ring
  rw [e1] at l1; rw [e2] at l2; rw [e3] at l3
  clear C H o1 o2 o3 u1 u2 u3 u4 e1 e2 e3
  obtain ⟨b1, b2, b3, b4, b5⟩ := lower_bounds1 (t := 2 * A₀) (by linarith) hh hc (by linarith)
    (by linarith) x0 y0 l1 l2 l3
  have hc3 : 3 * (2 * A₀) ≤ h * c := by linarith
  refine ⟨by linarith, ?_, ?_, by linarith, by linarith, by linarith, by linarith, b1, b2, b3, b4,
    b5, by linarith, by linarith, by linarith, by linarith, by linarith⟩
  · nlinarith [mul_le_mul_of_nonneg_left hc.le (show (0:ℝ) ≤ h by linarith)]
  · nlinarith [mul_le_mul_of_nonneg_right hh.le (show (0:ℝ) ≤ c by linarith)]

/-- `hc = [OCH] ≥ 3 · 2A₀` (subdivision at `L`). -/
theorem MPre.hc6 (C : MPre key h c d f Q) : 3 * (2 * A₀) ≤ h * c := by
  have H := C.comp
  obtain ⟨o1, o2, o3⟩ := C.lower
  have l1 := le_of_le_abs_of_nonneg (H.areaF 0 1 2) o1.le
  have l2 := le_of_le_abs_of_nonneg (H.areaF 4 0 2) o3.le
  have l3 := le_of_le_abs_of_nonneg (H.areaF 1 4 2) o2.le
  simp only [cfg] at l1 l2 l3
  have e : sarea (0, 0) (c, 0) (Q 2) + sarea (0, h) (0, 0) (Q 2) + sarea (c, 0) (0, h) (Q 2) =
      h * c := by unfold sarea; ring
  linarith

/-- The right-cap bounds as real inequalities. -/
theorem right_real {t c d x y : ℝ} (ht : 8 / 73 < t) (hd : 0 < d) (hd65 : d ≤ 65 / 73)
    (hc3 : 24 / 73 ≤ c) (hc67 : c ≤ 6 / 7) (x1 : x ≤ 1) (y0 : 0 ≤ y)
    (aR : t ≤ d * (x - c) - (1 - c) * y) (aR' : t ≤ c * y) :
    8 / 65 ≤ x - c ∧ 28 / 219 ≤ y ∧ 8 / 49 ≤ d - y ∧ (32 / 73 ≤ c → 8 / 41 ≤ d - y) := by
  have aR2 : t ≤ (1 - c) * (d - y) - d * (1 - x) := by
    have e : (1 - c) * (d - y) - d * (1 - x) = d * (x - c) - (1 - c) * y := by ring
    linarith
  have k1 := lb_of_prod (by linarith) aR (mul_nonneg (by linarith) y0) hd.le hd65
  have k2 := lb_of_prod (by linarith) (show t ≤ c * y - 0 by linarith) le_rfl (by linarith) hc67
  have k3 := lb_of_prod (by linarith) aR2 (mul_nonneg hd.le (by linarith)) (by linarith)
    (show 1 - c ≤ 49 / 73 by linarith)
  refine ⟨by linarith, by linarith, by linarith, fun hc4 => ?_⟩
  have k4 := lb_of_prod (by linarith) aR2 (mul_nonneg hd.le (by linarith)) (by linarith)
    (show 1 - c ≤ 41 / 73 by linarith)
  linarith

/-- The bounds for a right-cap point `(x, y)`: `x ≤ 1`, `x - c ≥ 8/65`,
`y ≥ 7s/6`, `d - y ≥ 8/49` (and `≥ 8/41` when `c ≥ 4s`), `dc(1-c) ≥ s`, `d ≥ 4s`,
`1/7 ≤ c ≤ 6/7`. -/
theorem MPre.rightPt (C : MPre key h c d f Q) (a : Fin 4)
    (hw : (Model.words key).getD a [] = Model.capW 0) (hc3 : 24 / 73 ≤ c) :
    (Q a).1 ≤ 1 ∧ 8 / 73 ≤ (Q a).1 ∧ 8 / 73 ≤ (Q a).2 ∧ 8 / 65 ≤ (Q a).1 - c ∧
      28 / 219 ≤ (Q a).2 ∧ 8 / 49 ≤ d - (Q a).2 ∧ (32 / 73 ≤ c → 8 / 41 ≤ d - (Q a).2) ∧
      8 / 73 ≤ d * c * (1 - c) ∧ 32 / 73 ≤ d ∧ 1 / 7 ≤ c ∧ c ≤ 6 / 7 := by
  have H := C.comp
  have W := C.word a
  rw [hw] at W
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have hR : InRightCap c d (Q a) := W.neg H (u := 1) (v := 2) (by norm_num) (by norm_num)
    (by norm_num) (by decide)
  have hOD : BelowOD d (Q a) := W.neg H (u := 0) (v := 2) (by norm_num) (by norm_num)
    (by norm_num) (by decide)
  have hOC : 0 < sarea ptO (ptC c) (Q a) := W.pos (u := 0) (v := 1) (by norm_num) (by norm_num)
    (by norm_num) (by decide)
  obtain ⟨-, -, -, k6⟩ := H.right_row a hR hOD
  have aR := le_neg_of_le_abs_of_nonpos (H.areaF 1 2 a) hR.le
  have aR' := le_of_le_abs_of_nonneg (H.areaF 0 1 a) hOC.le
  obtain ⟨g1, g2⟩ := H.coord_ge a
  obtain ⟨x0, x1, y0, y1⟩ := H.hQ a
  obtain ⟨-, -, a3, -⟩ := H.anchor_bounds
  have ht0 := two_A₀.1
  simp only [cfg] at aR aR'
  have e1 : -sarea (c, 0) (1, d) (Q a) = d * ((Q a).1 - c) - (1 - c) * (Q a).2 := by
    unfold sarea; ring
  have e2 : sarea (0, 0) (c, 0) (Q a) = c * (Q a).2 := by unfold sarea; ring
  rw [e1] at aR; rw [e2] at aR'
  obtain ⟨r1, r2, r3⟩ := right_consequences (c := c) (d := d) (by linarith) hd (by linarith)
  obtain ⟨k1, k2, k3, k4⟩ := right_real (by linarith) hd (by linarith) hc3 r3 x1 y0 aR aR'
  exact ⟨x1, by linarith, by linarith, k1, k2, k3, k4, by linarith, r1, r2, r3⟩

/-- The top-cap bounds as real inequalities. -/
theorem top_real {t d f x y : ℝ} (ht : 8 / 73 < t) (hd4 : 32 / 73 ≤ d) (hd1 : d < 1)
    (hf : 8 / 73 ≤ f) (hf1 : f < 1) (x1 : x ≤ 1) (y1 : y ≤ 1)
    (aT : t ≤ (1 - d) * (x - f) - (1 - f) * (1 - y)) :
    8 / 41 ≤ x - f ∧ 8 / 65 ≤ y - d ∧ (32 / 73 ≤ f → 8 / 41 ≤ y - d) := by
  have aT2 : t ≤ (1 - f) * (y - d) - (1 - d) * (1 - x) := by
    have e : (1 - f) * (y - d) - (1 - d) * (1 - x) = (1 - d) * (x - f) - (1 - f) * (1 - y) := by
      ring
    linarith
  have k1 := lb_of_prod (by linarith) aT (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - d ≤ 41 / 73 by linarith)
  have k2 := lb_of_prod (by linarith) aT2 (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - f ≤ 65 / 73 by linarith)
  refine ⟨by linarith, by linarith, fun hf4 => ?_⟩
  have k3 := lb_of_prod (by linarith) aT2 (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - f ≤ 41 / 73 by linarith)
  linarith

/-- The bounds for a top-cap point `Z = (x, y)`: with `d ≥ 4s`,
`x - f ≥ 8/41`, `y - d ≥ 8/65` (and `≥ 8/41` when `f ≥ 4s`), `f ≤ 67/100`, `d ≤ 57/65`, and
`[CDZ], [FHZ] < 1 - 7s/3`. -/
theorem MPre.topPt (C : MPre key h c d f Q) (a : Fin 4)
    (hw : (Model.words key).getD a [] = Model.capW 1) (hd4 : 32 / 73 ≤ d) :
    (Q a).1 ≤ 1 ∧ (Q a).2 ≤ 1 ∧ 8 / 73 ≤ (Q a).1 ∧ 8 / 73 ≤ (Q a).2 ∧
      8 / 41 ≤ (Q a).1 - f ∧ 8 / 65 ≤ (Q a).2 - d ∧ (32 / 73 ≤ f → 8 / 41 ≤ (Q a).2 - d) ∧
      f ≤ 67 / 100 ∧ d ≤ 57 / 65 ∧ sarea (c, 0) (1, d) (Q a) < 163 / 219 ∧
      sarea (f, 1) (0, h) (Q a) < 163 / 219 := by
  have H := C.comp
  have hhc := C.hc6
  have W := C.word a
  rw [hw] at W
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have hT : InTopCap d f (Q a) := W.neg H (u := 2) (v := 3) (by norm_num) (by norm_num)
    (by norm_num) (by decide)
  obtain ⟨-, -, hΩ⟩ := H.top_row a hT
  have aT := le_neg_of_le_abs_of_nonpos (H.areaF 2 3 a) hT.le
  obtain ⟨g1, g2⟩ := H.coord_ge a
  obtain ⟨x0, x1, y0, y1⟩ := H.hQ a
  obtain ⟨-, -, -, p4⟩ := H.params_ge
  have ht0 := two_A₀.1
  have hfd := C.hfd
  have tb := (table_bounds hfd (by linarith) (by linarith) (b := 2 * A₀)
    (by unfold topCapArea at hΩ; linarith)).1 (by linarith)
  simp only [cfg] at aT
  have e1 : -sarea (1, d) (f, 1) (Q a) = (1 - d) * ((Q a).1 - f) - (1 - f) * (1 - (Q a).2) := by
    unfold sarea; ring
  rw [e1] at aT
  have eC : sarea (c, 0) (1, d) (Q a) = (1 - c) * (Q a).2 + d * (c - (Q a).1) := by
    unfold sarea; ring
  have eF : sarea (f, 1) (0, h) (Q a) = (1 - h) * (Q a).1 + f * (h - (Q a).2) := by
    unfold sarea; ring
  rw [eC, eF]
  clear W H hT e1 eC eF C
  have aT2 : 2 * A₀ ≤ (1 - f) * ((Q a).2 - d) - (1 - d) * (1 - (Q a).1) := by
    have e : (1 - f) * ((Q a).2 - d) - (1 - d) * (1 - (Q a).1) =
        (1 - d) * ((Q a).1 - f) - (1 - f) * (1 - (Q a).2) := by ring
    linarith
  have hc3' : 3 * (2 * A₀) ≤ c := by
    nlinarith [mul_le_mul_of_nonneg_right hh.le (show (0:ℝ) ≤ c by linarith)]
  have h3' : 3 * (2 * A₀) ≤ h := by
    nlinarith [mul_le_mul_of_nonneg_left hc.le (show (0:ℝ) ≤ h by linarith)]
  obtain ⟨k1, k2, k3⟩ := top_real (by linarith) hd4 (by linarith) (by linarith) (by linarith) x1
    y1 aT
  have eC := C1OneLowerTopTriangle.ear_lt' (h := c) (d := f) (f := d) (g := (Q a).2)
    (k := (Q a).1) (by linarith) hc3' hc hf (by linarith) hd (by linarith) y0 y1 x1 aT
  have eF := C1OneLowerTopTriangle.ear_lt' (h := h) (d := d) (f := f) (g := (Q a).1)
    (k := (Q a).2) (by linarith) h3' hh hd (by linarith) hf (by linarith) x0 x1 y1 aT2
  exact ⟨x1, y1, by linarith, by linarith, k1, k2, k3, tb.1, tb.2, eC, eF⟩

/-- The bounds for a left-cap point `(x, y)`, from `C1ZeroLower.Comp.left_row`: `y ≤ 1`,
`x, y ≥ s`, `fh(1-h) ≥ s`, `f - x ≥ 8/41`, `y - h ≥ 8/65`, `x ≥ 28/219`, `f ≥ 4s`,
`1/7 ≤ h ≤ 6/7`. -/
theorem MPre.leftPt (C : MPre key h c d f Q) (a : Fin 4)
    (hw : (Model.words key).getD a [] = Model.capW 2) :
    (Q a).2 ≤ 1 ∧ 8 / 73 ≤ (Q a).1 ∧ 8 / 73 ≤ (Q a).2 ∧ 8 / 73 ≤ f * h * (1 - h) ∧
      8 / 41 ≤ f - (Q a).1 ∧ 8 / 65 ≤ (Q a).2 - h ∧ 28 / 219 ≤ (Q a).1 ∧ 32 / 73 ≤ f ∧
      1 / 7 ≤ h ∧ h ≤ 6 / 7 := by
  have H := C.comp
  have W := C.word a
  rw [hw] at W
  have hL : InLeftCap f h (Q a) := W.neg H (u := 3) (v := 4) (by norm_num) (by norm_num)
    (by norm_num) (by decide)
  obtain ⟨l1, l2, l3, l4, l5, l6, l7⟩ := H.left_row C.hfd a hL
  obtain ⟨g1, g2⟩ := H.coord_ge a
  have ht0 := two_A₀.1
  exact ⟨(H.hQ a).2.2.2, by linarith, by linarith, by linarith, l2, l3, l4, l5, l6, l7⟩

/-- For the lower word `(2,3,2,2,1)` and the upper word
`(2,1,2,3,2)` or `(2,2,2,2,2)`, both `L, Q` lie in `ODH` and `ODF`, so `h = [ODH] ≥ ρ`,
`1 - df = [ODF] ≥ ρ`, and with `d ≥ 4s`, `f ≤ 803/1920`. -/
theorem MPre.doubleOD (C : MPre key h c d f Q) (hd4 : 32 / 73 ≤ d) (hi : key.2.1 = 1)
    (hj : key.2.2 = 3 ∨ key.2.2 = 5) : 49 / 60 ≤ h ∧ f ≤ 803 / 1920 := by
  have H := C.comp
  have A := H.areaOK
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have WL := C.word 2
  have WQ := C.word 3
  change WordL _ _ ((Model.words key).getD 2 []) at WL
  change WordL _ _ ((Model.words key).getD 3 []) at WQ
  have eL : (Model.words key).getD 2 [] = [2, 3, 2, 2, 1] := by
    simp [Model.words, hi, Model.lowerW]
  rw [eL] at WL
  have ins : ∀ w : List ℕ, ∀ a : Fin 4, WordL (cfg h c d f Q) (Q a) w →
      hsign 5 w 0 2 = true → hsign 5 w 2 4 = true → hsign 5 w 4 0 = true →
      hsign 5 w 2 3 = true → hsign 5 w 3 0 = true →
      InTriangle (cfg h c d f Q (a.val + 5)) (cfg h c d f Q 0) (cfg h c d f Q 2) (cfg h c d f Q 4) ∧
      InTriangle (cfg h c d f Q (a.val + 5)) (cfg h c d f Q 0) (cfg h c d f Q 2)
        (cfg h c d f Q 3) := by
    intro w a W s1 s2 s3 s4 s5
    rw [cfg_free]
    exact ⟨⟨W.pos (by norm_num) (by norm_num) (by norm_num) s1,
      W.pos (by norm_num) (by norm_num) (by norm_num) s2,
      W.pos (by norm_num) (by norm_num) (by norm_num) s3⟩,
      ⟨W.pos (by norm_num) (by norm_num) (by norm_num) s1,
      W.pos (by norm_num) (by norm_num) (by norm_num) s4,
      W.pos (by norm_num) (by norm_num) (by norm_num) s5⟩⟩
  obtain ⟨iL1, iL2⟩ := ins _ 2 WL (by decide) (by decide) (by decide) (by decide) (by decide)
  obtain ⟨iQ1, iQ2⟩ : InTriangle (cfg h c d f Q (3 + 5)) (cfg h c d f Q 0) (cfg h c d f Q 2)
      (cfg h c d f Q 4) ∧ InTriangle (cfg h c d f Q (3 + 5)) (cfg h c d f Q 0) (cfg h c d f Q 2)
        (cfg h c d f Q 3) := by
    rcases hj with hj | hj
    · have eQ : (Model.words key).getD 3 [] = [2, 1, 2, 3, 2] := by
        simp [Model.words, hj, Model.upperW]
      rw [eQ] at WQ
      exact ins _ 3 WQ (by decide) (by decide) (by decide) (by decide) (by decide)
    · have eQ : (Model.words key).getD 3 [] = [2, 2, 2, 2, 2] := by
        simp [Model.words, hj, Model.upperW]
      rw [eQ] at WQ
      exact ins _ 3 WQ (by decide) (by decide) (by decide) (by decide) (by decide)
  have k1 := A.two_inside (a := 0) (b := 2) (e := 4) (j₁ := 7) (j₂ := 8) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by decide) (Or.inl iL1) (Or.inl iQ1)
  have k2 := A.two_inside (a := 0) (b := 2) (e := 3) (j₁ := 7) (j₂ := 8) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by decide) (Or.inl iL2) (Or.inl iQ2)
  simp only [cfg, sarea] at k1 k2
  rw [abs_of_nonneg (by nlinarith)] at k1
  rw [abs_of_nonneg (by nlinarith)] at k2
  refine ⟨by nlinarith, ?_⟩
  have hdf : d * f ≤ 11 / 60 := by nlinarith
  by_contra hn; push Not at hn
  nlinarith [mul_le_mul hd4 hn.le (by norm_num) hd.le]

/-- The words of `X, Y` in each class. -/
theorem words_caps (key : ℕ × ℕ × ℕ) :
    (key.1 = 0 → (Model.words key).getD 0 [] = Model.capW 0 ∧
      (Model.words key).getD 1 [] = Model.capW 1) ∧
    (key.1 = 1 → (Model.words key).getD 0 [] = Model.capW 0 ∧
      (Model.words key).getD 1 [] = Model.capW 2) ∧
    (key.1 = 2 → (Model.words key).getD 0 [] = Model.capW 1 ∧
      (Model.words key).getD 1 [] = Model.capW 2) := by
  refine ⟨fun h => ?_, fun h => ?_, fun h => ?_⟩ <;> simp [Model.words, Model.kindCaps, h]

/-- Fixed areas: `[DFH] ≤ 1 - d`, `[OFH] = hf`, `[CDF] ≤ 1 - f`. -/
theorem fixed_areas (hA : C1Anchors h c d f) :
    sarea (1, d) (f, 1) (0, h) ≤ 1 - d ∧ sarea (0, 0) (f, 1) (0, h) = f * h ∧
      sarea (c, 0) (1, d) (f, 1) ≤ 1 - f := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  refine ⟨?_, by unfold sarea; ring, ?_⟩ <;> unfold sarea <;> nlinarith

theorem factors_rt (i j : ℕ) : Model.factors (0, i, j) =
    [v 0 - k (24 / 73),
    v 1 - k (24 / 73),
    1 - v 0,
    1 - v 1,
    v 2 - k (8 / 73),
    k (65 / 73) - v 2,
    v 3 - k (8 / 73),
    k (65 / 73) - v 3,
    v 0 - v 2,
    v 1 - v 3,
    v 2 - v 3,
    v 2 - k (32 / 73),
    k (67 / 100) - v 3,
    k (57 / 65) - v 2,
    v 1 - k (1 / 7),
    k (6 / 7) - v 1,
    v 4 - k (8 / 73),
    v 5 - k (8 / 73),
    1 - v 4,
    v 2 - v 5 - k (8 / 49),
    v 4 - v 1 - k (8 / 65),
    v 5 - k (28 / 219),
    v 6 - k (8 / 73),
    v 7 - k (8 / 73),
    1 - v 6,
    1 - v 7,
    v 6 - v 3 - k (8 / 41),
    v 7 - v 2 - k (8 / 65),
    v 8 - k (8 / 73),
    v 9 - k (8 / 73),
    v 1 - v 8 - k (16 / 73),
    v 0 - v 9 - k (16 / 73),
    1 - v 8 - v 9 - k (8 / 73),
    v 10 - k (8 / 73),
    v 11 - k (8 / 73),
    k (65 / 73) - v 10,
    k (65 / 73) - v 11] ++
    (if i = 1 ∧ (j = 3 ∨ j = 5) then [v 0 - k (49 / 60), k (803 / 1920) - v 3] else []) := by
  simp only [Model.factors, Model.hasT, Model.hasR, Model.hasL, Model.kindCaps, Model.capFactors]
  rfl

theorem cubics_rt (i j : ℕ) : Model.cubics (0, i, j) = [v 2 * v 1 * (1 - v 1) - k (8 / 73)] := rfl

theorem factors_rl (i j : ℕ) : Model.factors (1, i, j) =
    [v 0 - k (24 / 73),
    v 1 - k (24 / 73),
    1 - v 0,
    1 - v 1,
    v 2 - k (8 / 73),
    k (65 / 73) - v 2,
    v 3 - k (8 / 73),
    k (65 / 73) - v 3,
    v 0 - v 2,
    v 1 - v 3,
    v 2 - v 3,
    v 2 - k (32 / 73),
    v 1 - k (1 / 7),
    k (6 / 7) - v 1,
    v 3 - k (32 / 73),
    v 0 - k (1 / 7),
    k (6 / 7) - v 0,
    v 4 - k (8 / 73),
    v 5 - k (8 / 73),
    1 - v 4,
    v 2 - v 5 - k (8 / 41),
    v 4 - v 1 - k (8 / 65),
    v 5 - k (28 / 219),
    v 6 - k (8 / 73),
    v 7 - k (8 / 73),
    v 3 - v 6 - k (8 / 41),
    1 - v 7,
    v 7 - v 0 - k (8 / 65),
    v 6 - k (28 / 219),
    v 8 - k (8 / 73),
    v 9 - k (8 / 73),
    v 1 - v 8 - k (16 / 73),
    v 0 - v 9 - k (16 / 73),
    1 - v 8 - v 9 - k (8 / 73),
    v 10 - k (8 / 73),
    v 11 - k (8 / 73),
    k (65 / 73) - v 10,
    k (65 / 73) - v 11] ++
    (if i = 1 ∧ (j = 3 ∨ j = 5) then [v 0 - k (49 / 60), k (803 / 1920) - v 3] else []) := by
  simp only [Model.factors, Model.hasT, Model.hasR, Model.hasL, Model.kindCaps, Model.capFactors]
  rfl

theorem cubics_rl (i j : ℕ) : Model.cubics (1, i, j) = [v 2 * v 1 * (1 - v 1) - k (8 / 73),
    v 3 * v 0 * (1 - v 0) - k (8 / 73)] := rfl

theorem factors_tl (i j : ℕ) : Model.factors (2, i, j) =
    [v 0 - k (24 / 73),
    v 1 - k (24 / 73),
    1 - v 0,
    1 - v 1,
    v 2 - k (8 / 73),
    k (65 / 73) - v 2,
    v 3 - k (8 / 73),
    k (65 / 73) - v 3,
    v 0 - v 2,
    v 1 - v 3,
    v 2 - v 3,
    v 2 - k (32 / 73),
    k (67 / 100) - v 3,
    k (57 / 65) - v 2,
    v 3 - k (32 / 73),
    v 0 - k (1 / 7),
    k (6 / 7) - v 0,
    v 4 - k (8 / 73),
    v 5 - k (8 / 73),
    1 - v 4,
    1 - v 5,
    v 4 - v 3 - k (8 / 41),
    v 5 - v 2 - k (8 / 41),
    v 6 - k (8 / 73),
    v 7 - k (8 / 73),
    v 3 - v 6 - k (8 / 41),
    1 - v 7,
    v 7 - v 0 - k (8 / 65),
    v 6 - k (28 / 219),
    v 8 - k (8 / 73),
    v 9 - k (8 / 73),
    v 1 - v 8 - k (16 / 73),
    v 0 - v 9 - k (16 / 73),
    1 - v 8 - v 9 - k (8 / 73),
    v 10 - k (8 / 73),
    v 11 - k (8 / 73),
    k (65 / 73) - v 10,
    k (65 / 73) - v 11] ++
    (if i = 1 ∧ (j = 3 ∨ j = 5) then [v 0 - k (49 / 60), k (803 / 1920) - v 3] else []) := by
  simp only [Model.factors, Model.hasT, Model.hasR, Model.hasL, Model.kindCaps, Model.capFactors]
  rfl

theorem cubics_tl (i j : ℕ) : Model.cubics (2, i, j) = [v 3 * v 0 * (1 - v 0) - k (8 / 73)] := rfl

/-! ### The atoms of each class -/

/-- The affine factors of the class `RT` are nonnegative. -/
theorem MCell.factors_rt_ok (C : MCell key h c d f Q) (hk : key.1 = 0) :
    ∀ e ∈ Model.factors key, 0 ≤ e.eval (zeta h c d f Q) := by
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, l1, l2, l3, l4, l5, q1, q2, q3, q4, hW⟩ := C.common
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  have hfd := C.hfd
  obtain ⟨s0, s1⟩ : ((Q 0).1 ≤ 1 ∧ (Q 0).2 ≤ 1) ∧ ((Q 1).1 ≤ 1 ∧ (Q 1).2 ≤ 1) :=
    ⟨⟨(C.sq 0).2.1, (C.sq 0).2.2.2⟩, ⟨(C.sq 1).2.1, (C.sq 1).2.2.2⟩⟩
  obtain ⟨k0, i, j⟩ := key
  simp only at hk
  subst hk
  obtain ⟨w0, w1⟩ := (words_caps (0, i, j)).1 rfl
  obtain ⟨x1, x2, x3, x4, x5, x6, -, x8, x9, x10, x11⟩ := C.rightPt 0 w0 c3
  obtain ⟨y1, y2, y3, y4, y5, y6, -, y8, y9, -, -⟩ := C.topPt 1 w1 x9
  have hdo := fun (h' : i = 1 ∧ (j = 3 ∨ j = 5)) => C.doubleOD x9 h'.1 h'.2
  clear C
  rw [factors_rt]
  split_ifs with h'
  · obtain ⟨o1, o2⟩ := hdo h'
    simp only [List.cons_append, List.nil_append, List.forall_mem_cons, List.not_mem_nil,
      IsEmpty.forall_iff, implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, zeta]
    push_cast; and_intros; all_goals first | exact sub_nonneg.2 ‹_› | linarith
  · simp only [List.append_nil, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, zeta]
    push_cast; and_intros; all_goals first | exact sub_nonneg.2 ‹_› | linarith

/-- The affine factors of the class `RL` are nonnegative. -/
theorem MCell.factors_rl_ok (C : MCell key h c d f Q) (hk : key.1 = 1) :
    ∀ e ∈ Model.factors key, 0 ≤ e.eval (zeta h c d f Q) := by
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, l1, l2, l3, l4, l5, q1, q2, q3, q4, hW⟩ := C.common
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  have hfd := C.hfd
  obtain ⟨s0, s1⟩ : ((Q 0).1 ≤ 1 ∧ (Q 0).2 ≤ 1) ∧ ((Q 1).1 ≤ 1 ∧ (Q 1).2 ≤ 1) :=
    ⟨⟨(C.sq 0).2.1, (C.sq 0).2.2.2⟩, ⟨(C.sq 1).2.1, (C.sq 1).2.2.2⟩⟩
  obtain ⟨k0, i, j⟩ := key
  simp only at hk
  subst hk
  obtain ⟨w0, w1⟩ := (words_caps (1, i, j)).2.1 rfl
  obtain ⟨y1, y2, y3, y4, y5, y6, y7, y8, y9, y10⟩ := C.leftPt 1 w1
  obtain ⟨x1, x2, x3, x4, x5, -, x7, x8, x9, x10, x11⟩ := C.rightPt 0 w0 c3
  have x7' := x7 (by linarith)
  have hdo := fun (h' : i = 1 ∧ (j = 3 ∨ j = 5)) => C.doubleOD x9 h'.1 h'.2
  clear C
  rw [factors_rl]
  split_ifs with h'
  · obtain ⟨o1, o2⟩ := hdo h'
    simp only [List.cons_append, List.nil_append, List.forall_mem_cons, List.not_mem_nil,
      IsEmpty.forall_iff, implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, zeta]
    push_cast; and_intros; all_goals first | exact sub_nonneg.2 ‹_› | linarith
  · simp only [List.append_nil, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, zeta]
    push_cast; and_intros; all_goals first | exact sub_nonneg.2 ‹_› | linarith

/-- The affine factors of the class `TL` are nonnegative. -/
theorem MCell.factors_tl_ok (C : MCell key h c d f Q) (hk : key.1 = 2) :
    ∀ e ∈ Model.factors key, 0 ≤ e.eval (zeta h c d f Q) := by
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, l1, l2, l3, l4, l5, q1, q2, q3, q4, hW⟩ := C.common
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  have hfd := C.hfd
  obtain ⟨s0, s1⟩ : ((Q 0).1 ≤ 1 ∧ (Q 0).2 ≤ 1) ∧ ((Q 1).1 ≤ 1 ∧ (Q 1).2 ≤ 1) :=
    ⟨⟨(C.sq 0).2.1, (C.sq 0).2.2.2⟩, ⟨(C.sq 1).2.1, (C.sq 1).2.2.2⟩⟩
  obtain ⟨k0, i, j⟩ := key
  simp only at hk
  subst hk
  obtain ⟨w0, w1⟩ := (words_caps (2, i, j)).2.2 rfl
  obtain ⟨y1, y2, y3, y4, y5, y6, y7, y8, y9, y10⟩ := C.leftPt 1 w1
  have hd4 : 32 / 73 ≤ d := by linarith
  obtain ⟨x1, x2, x3, x4, x5, -, x7, x8, x9, -, -⟩ := C.topPt 0 w0 hd4
  have x7' := x7 y8
  have hdo := fun (h' : i = 1 ∧ (j = 3 ∨ j = 5)) => C.doubleOD hd4 h'.1 h'.2
  clear C
  rw [factors_tl]
  split_ifs with h'
  · obtain ⟨o1, o2⟩ := hdo h'
    simp only [List.cons_append, List.nil_append, List.forall_mem_cons, List.not_mem_nil,
      IsEmpty.forall_iff, implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, zeta]
    push_cast; and_intros; all_goals first | exact sub_nonneg.2 ‹_› | linarith
  · simp only [List.append_nil, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, zeta]
    push_cast; and_intros; all_goals first | exact sub_nonneg.2 ‹_› | linarith

/-- The affine factors are nonnegative. -/
theorem MCell.factors_ok (C : MCell key h c d f Q) :
    ∀ e ∈ Model.factors key, 0 ≤ e.eval (zeta h c d f Q) := by
  have hk3 := (keys_ok key C.hk).1
  rcases (show key.1 = 0 ∨ key.1 = 1 ∨ key.1 = 2 by omega) with hk | hk | hk
  · exact C.factors_rt_ok hk
  · exact C.factors_rl_ok hk
  · exact C.factors_tl_ok hk

/-- The cubic costs `dc(1-c) - s` (right cap) and `fh(1-h) - s` (left cap) are nonnegative. -/
theorem MCell.cubics_ok (C : MCell key h c d f Q) :
    ∀ e ∈ Model.cubics key, 0 ≤ e.eval (zeta h c d f Q) := by
  have hk3 := (keys_ok key C.hk).1
  obtain ⟨k0, i, j⟩ := key
  simp only at hk3
  interval_cases k0
  · obtain ⟨w0, -⟩ := (words_caps (0, i, j)).1 rfl
    obtain ⟨-, -, c3, -⟩ := C.common
    obtain ⟨-, -, -, -, -, -, -, x8, -⟩ := C.rightPt 0 w0 c3
    rw [cubics_rt]
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_times, eval_one, eval_v, eval_k, zeta]
    push_cast; linarith
  · obtain ⟨w0, w1⟩ := (words_caps (1, i, j)).2.1 rfl
    obtain ⟨-, -, c3, -⟩ := C.common
    obtain ⟨-, -, -, -, -, -, -, x8, -⟩ := C.rightPt 0 w0 c3
    obtain ⟨-, -, -, y4, -⟩ := C.leftPt 1 w1
    rw [cubics_rl]
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_times, eval_one, eval_v, eval_k, zeta]
    push_cast; constructor <;> linarith
  · obtain ⟨-, w1⟩ := (words_caps (2, i, j)).2.2 rfl
    obtain ⟨-, -, -, y4, -⟩ := C.leftPt 1 w1
    rw [cubics_tl]
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
      and_true, eval_minus, eval_times, eval_one, eval_v, eval_k, zeta]
    push_cast; linarith

theorem qcosts_rt (i j : ℕ) : Model.qcosts (0, i, j) =
    [v 0 * v 1 - k (24 / 73),
      1 - (v 0 - v 2) * (v 1 - v 3) - k (32 / 73),
      k (41 / 73) - esarea (C1ZeroLower.Model.pt 2) (C1ZeroLower.Model.pt 3) (C1ZeroLower.Model.pt 4),
      k (67 / 100) - esarea (C1ZeroLower.Model.pt 0) (C1ZeroLower.Model.pt 3) (C1ZeroLower.Model.pt 4),
      k (163 / 219) - esarea (C1ZeroLower.Model.pt 1) (C1ZeroLower.Model.pt 2) (C1ZeroLower.Model.pt 6),
      k (163 / 219) - esarea (C1ZeroLower.Model.pt 3) (C1ZeroLower.Model.pt 4) (C1ZeroLower.Model.pt 6)] := rfl

theorem qcosts_rl (i j : ℕ) : Model.qcosts (1, i, j) =
    [v 0 * v 1 - k (24 / 73),
      1 - (v 0 - v 2) * (v 1 - v 3) - k (32 / 73),
      k (41 / 73) - esarea (C1ZeroLower.Model.pt 2) (C1ZeroLower.Model.pt 3) (C1ZeroLower.Model.pt 4),
      k (36 / 49) - esarea (C1ZeroLower.Model.pt 0) (C1ZeroLower.Model.pt 3) (C1ZeroLower.Model.pt 4),
      k (41 / 73) - esarea (C1ZeroLower.Model.pt 1) (C1ZeroLower.Model.pt 2) (C1ZeroLower.Model.pt 3)] := rfl

theorem qcosts_tl (i j : ℕ) : Model.qcosts (2, i, j) =
    [v 0 * v 1 - k (24 / 73),
      1 - (v 0 - v 2) * (v 1 - v 3) - k (32 / 73),
      k (41 / 73) - esarea (C1ZeroLower.Model.pt 2) (C1ZeroLower.Model.pt 3) (C1ZeroLower.Model.pt 4),
      k (67 / 100) - esarea (C1ZeroLower.Model.pt 0) (C1ZeroLower.Model.pt 3) (C1ZeroLower.Model.pt 4),
      k (41 / 73) - esarea (C1ZeroLower.Model.pt 1) (C1ZeroLower.Model.pt 2) (C1ZeroLower.Model.pt 3),
      k (163 / 219) - esarea (C1ZeroLower.Model.pt 1) (C1ZeroLower.Model.pt 2) (C1ZeroLower.Model.pt 5),
      k (163 / 219) - esarea (C1ZeroLower.Model.pt 3) (C1ZeroLower.Model.pt 4) (C1ZeroLower.Model.pt 5)] := rfl

/-- The quadratic costs: `hc ≥ 3s`, `W ≥ 4s`, `[DFH] ≤ 1 - 4s`, `[OFH] < 67/100` or `36/49`,
`[CDF] ≤ 1 - 4s` (left cap), `[CDZ], [FHZ] < 1 - 7s/3` (top cap). -/
theorem MCell.qcosts_ok (C : MCell key h c d f Q) :
    ∀ e ∈ Model.qcosts key, 0 ≤ e.eval (zeta h c d f Q) := by
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, -, -, -, -, -, -, -, -, -, hW⟩ := C.common
  obtain ⟨fa1, fa2, fa3⟩ := fixed_areas C.comp.hA
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  have hfd := C.hfd
  have hk3 := (keys_ok key C.hk).1
  obtain ⟨k0, i, j⟩ := key
  simp only at hk3
  have ev : ∀ a b e : ℕ, (esarea (C1ZeroLower.Model.pt a) (C1ZeroLower.Model.pt b)
      (C1ZeroLower.Model.pt e)).eval (zeta h c d f Q) =
      sarea (cfg h c d f Q a) (cfg h c d f Q b) (cfg h c d f Q e) := by
    intro a b e
    rw [eval_esarea]
    have := fun i => ptEval_zeta (h := h) (c := c) (d := d) (f := f) (Q := Q) i
    simp only [ptEval] at this
    rw [this, this, this]
  interval_cases k0
  · obtain ⟨w0, w1⟩ := (words_caps (0, i, j)).1 rfl
    obtain ⟨-, -, -, -, -, -, -, -, x9, -⟩ := C.rightPt 0 w0 c3
    obtain ⟨-, -, -, -, -, -, -, y8, -, y10, y11⟩ := C.topPt 1 w1 x9
    rw [qcosts_rt]
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_times, eval_one, eval_v, eval_k, ev, zeta]
    simp only [cfg]
    push_cast
    refine ⟨by linarith, by linarith, by linarith, ?_, by linarith, by linarith⟩
    rw [fa2]; nlinarith
  · obtain ⟨w0, w1⟩ := (words_caps (1, i, j)).2.1 rfl
    obtain ⟨-, -, -, -, -, -, -, -, x9, x10, x11⟩ := C.rightPt 0 w0 c3
    obtain ⟨-, -, -, -, -, -, -, y8, y9, y10⟩ := C.leftPt 1 w1
    rw [qcosts_rl]
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_times, eval_one, eval_v, eval_k, ev, zeta]
    simp only [cfg]
    push_cast
    refine ⟨by linarith, by linarith, by linarith, ?_, by linarith⟩
    rw [fa2]
    nlinarith [mul_le_mul (show f ≤ 6 / 7 by linarith) y10 (by linarith) (by norm_num)]
  · obtain ⟨w0, w1⟩ := (words_caps (2, i, j)).2.2 rfl
    obtain ⟨-, -, -, -, -, -, -, y8, -⟩ := C.leftPt 1 w1
    obtain ⟨-, -, -, -, -, -, -, x8, -, x10, x11⟩ := C.topPt 0 w0 (by linarith)
    rw [qcosts_tl]
    simp only [List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_times, eval_one, eval_v, eval_k, ev, zeta]
    simp only [cfg]
    push_cast
    refine ⟨by linarith, by linarith, by linarith, ?_, by linarith, by linarith, by linarith⟩
    rw [fa2]; nlinarith

/-! ### Soundness of the package -/

theorem MCell.table_holds (C : MCell key h c d f Q) {fs : List SFact}
    (hfs : AllHold (MHolds (cfg h c d f Q) (zeta h c d f Q)) fs) :
    AllHold (FHolds 9 (cfg h c d f Q)) (Model.baseSigns key ++ Model.realFacts fs) := by
  refine C.base.append fun g hg => ?_
  simp only [Model.realFacts, List.mem_filter, Model.isCut, Bool.not_eq_true', beq_eq_false_iff_ne,
    ne_eq] at hg
  have := hfs g hg.1
  simp only [MHolds, hg.2, ite_false] at this
  exact this

theorem MCell.atoms_nonneg (C : MCell key h c d f Q) (fs : List SFact)
    (hfs : AllHold (MHolds (cfg h c d f Q) (zeta h c d f Q)) fs) :
    ∀ e ∈ Model.atoms key fs, 0 ≤ e.eval (zeta h c d f Q) := by
  intro e he
  unfold Model.atoms at he
  simp only [List.mem_append] at he
  rcases he with (((he | he) | he) | he) | he
  · exact C.factors_ok e he
  · simp only [Model.cutAtoms, List.mem_map, List.mem_filter, Model.isCut, beq_iff_eq] at he
    obtain ⟨g, ⟨hg, hcut⟩, rfl⟩ := he
    have := hfs g hg
    simp only [MHolds, hcut, ite_true] at this
    cases hs : g.2 <;> simp only [hs, Bool.false_eq_true, ite_false, ite_true, zeta] at this ⊢ <;>
      simp only [eval_minus, eval_v, eval_k, zeta] <;> push_cast <;> linarith
  · exact C.qcosts_ok e he
  · exact (C.comp.areaOK.costHyp (by decide) (by decide)).tableCosts_nonneg
      (fun i _ => ptEval_zeta i) (C.table_holds hfs) e he
  · exact C.cubics_ok e he

theorem MCell.branch (C : MCell key h c d f Q) (fs : List SFact) (sp : Model.MSplit) :
    ∃ b ∈ Model.branches fs sp, AllHold (MHolds (cfg h c d f Q) (zeta h c d f Q)) b := by
  cases sp with
  | tri a b e =>
    simp only [Model.branches]
    split_ifs with hv
    · obtain ⟨hab, hbe, he9⟩ := hv
      have hne : sarea (cfg h c d f Q a) (cfg h c d f Q b) (cfg h c d f Q e) ≠ 0 :=
        C.comp.areaOK.ne_zero (by omega) (by omega) he9 (by omega) (by omega) (by omega)
      obtain ⟨br, hbr, hall⟩ := signBranches_exhaustive (P := cfg h c d f Q) (t := (a, b, e)) hne
      refine ⟨br, hbr, fun x hx => ?_⟩
      have hx' := hall x hx
      simp only [signBranches, List.mem_cons, List.not_mem_nil, or_false] at hbr
      have ha9 : x.1.1 ≠ 9 := by
        rcases hbr with rfl | rfl <;> simp at hx <;> subst hx <;> simp <;> omega
      simp only [MHolds, ha9, ite_false]
      refine ⟨?_, ?_, ?_, hx'⟩ <;> rcases hbr with rfl | rfl <;> simp at hx <;> subst hx <;>
        simp <;> omega
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | cut =>
    simp only [Model.branches]
    rcases le_total (zeta h c d f Q 10) (5 / 8) with hz | hz
    · exact ⟨_, List.mem_cons_self .., by simp [AllHold, MHolds, hz]⟩
    · exact ⟨_, List.mem_cons_of_mem _ (List.mem_cons_self ..), by simp [AllHold, MHolds, hz]⟩

/-- Every cell is impossible (kernel check `Model.allCases_ok`; the two `inconsistent` leaves by
`quad_false`). -/
theorem MCell.false (C : MCell key h c d f Q) : False := by
  have hk : key ∈ Model.allCases.map Prod.fst := Model.caseKeys_eq ▸ C.hk
  obtain ⟨p, hp, hpk⟩ := List.mem_map.1 hk
  have hT : checkTree (Model.spec key) [] p.2 = true := hpk ▸ Model.allCases_ok p hp
  refine checkTree_sound (σ := Model.spec key) (Holds := MHolds (cfg h c d f Q) (zeta h c d f Q))
    C.comp.zeta_mem (fun fs hfs => C.atoms_nonneg fs hfs) (fun fs sp _ => C.branch fs sp) ?_
    (fs := []) (fun _ h => absurd h List.not_mem_nil) hT
  intro fs tag hfs hcl
  have htb : AllHold (SFact.Holds (cfg h c d f Q)) (Model.baseSigns key ++ Model.realFacts fs) :=
    fun x hx => (C.table_holds hfs x hx).2.2.2
  simp only [Model.spec] at hcl
  unfold Model.closedOK at hcl
  split at hcl
  · exact quad_false htb hcl
  · exact quad_false htb hcl
  · simp at hcl

/-! ### The retained cases -/

/-- The pruning of the cases: no three free points below `OD` (first word
entry `1`), and `L, Q` not both in `OFH`. -/
def mcFilter (key : ℕ × ℕ × ℕ) : Bool :=
  let w0 := fun a => ((Model.words key).getD a []).getD 0 0 == 1
  !(w0 0 && w0 1 && w0 2) && !(w0 0 && w0 1 && w0 3) && !(w0 0 && w0 2 && w0 3) &&
    !(w0 1 && w0 2 && w0 3) &&
    !(hinside 5 ((Model.words key).getD 2 []) 0 3 4 && hinside 5 ((Model.words key).getD 3 []) 0 3 4)

/-- The cases passing the pruning are the 62 cases of the package. -/
theorem mcFilter_keys : ((List.range 3).all fun k => (List.range 3).all fun i =>
    (List.range 8).all fun j => !(mcFilter (k, i, j)) || Model.caseKeys.contains (k, i, j)) =
    true := by
  decide +kernel

/-- `[OFH] = fh < ρ` in every class. -/
theorem MPre.ofh (C : MPre key h c d f Q) (hk : key.1 < 3) : f * h < 49 / 60 := by
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, -⟩ := C.common
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  have hfd := C.hfd
  obtain ⟨k0, i, j⟩ := key
  simp only at hk
  interval_cases k0
  · obtain ⟨w0, w1⟩ := (words_caps (0, i, j)).1 rfl
    obtain ⟨-, -, -, -, -, -, -, -, x9, -⟩ := C.rightPt 0 w0 c3
    obtain ⟨-, -, -, -, -, -, -, y8, -⟩ := C.topPt 1 w1 x9
    nlinarith
  · obtain ⟨w0, w1⟩ := (words_caps (1, i, j)).2.1 rfl
    obtain ⟨-, -, -, -, -, -, -, -, -, -, x11⟩ := C.rightPt 0 w0 c3
    obtain ⟨-, -, -, -, -, -, -, -, -, y10⟩ := C.leftPt 1 w1
    nlinarith [mul_le_mul (show f ≤ 6 / 7 by linarith) y10 (by linarith) (by norm_num)]
  · obtain ⟨w0, w1⟩ := (words_caps (2, i, j)).2.2 rfl
    obtain ⟨-, -, -, -, -, -, -, y8, -⟩ := C.leftPt 1 w1
    obtain ⟨-, -, -, -, -, -, -, x8, -⟩ := C.topPt 0 w0 (by linarith)
    nlinarith

/-- A pre-cell passes the pruning: three free points
below `OD` contradict the two-actual-vertex capacity on `O, D, (1,0)` (`C1ZeroLower.Comp.fan_below`),
and `OFH` has capacity one (`fh < ρ`). -/
theorem MPre.filter (C : MPre key h c d f Q) (hk : key.1 < 3) : mcFilter key = true := by
  have H := C.comp
  have bel : ∀ a : Fin 4, ((Model.words key).getD a []).getD 0 0 = 1 → BelowOD d (Q a) := by
    intro a ha
    exact (C.word a).neg H (u := 0) (v := 2) (by norm_num) (by norm_num) (by norm_num)
      (by simp only [hsign, ha]; decide)
  have fan : ∀ a b e : Fin 4, a ≠ b → a ≠ e → b ≠ e →
      ((Model.words key).getD a []).getD 0 0 = 1 → ((Model.words key).getD b []).getD 0 0 = 1 →
        ((Model.words key).getD e []).getD 0 0 = 1 → False := by
    intro a b e hab hae hbe h1 h2 h3
    exact H.fan_below hab hae hbe (bel a h1) (bel b h2) (bel e h3)
  have ofh : ¬(hinside 5 ((Model.words key).getD 2 []) 0 3 4 = true ∧
      hinside 5 ((Model.words key).getD 3 []) 0 3 4 = true) := by
    rintro ⟨h1, h2⟩
    have ins : ∀ a : Fin 4, hinside 5 ((Model.words key).getD a []) 0 3 4 = true →
        InTriangle (cfg h c d f Q (a.val + 5)) (cfg h c d f Q 0) (cfg h c d f Q 3)
          (cfg h c d f Q 4) := by
      intro a ha
      simp only [hinside, Bool.and_eq_true] at ha
      rw [cfg_free]
      exact ⟨(C.word a).pos (by norm_num) (by norm_num) (by norm_num) ha.1.1,
        (C.word a).pos (by norm_num) (by norm_num) (by norm_num) ha.1.2,
        (C.word a).pos (by norm_num) (by norm_num) (by norm_num) ha.2⟩
    have := H.areaOK.two_inside (a := 0) (b := 3) (e := 4) (j₁ := 7) (j₂ := 8)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by decide)
      (Or.inl (ins 2 h1)) (Or.inl (ins 3 h2))
    have hf := C.ofh hk
    obtain ⟨hd, hdh, hh, hf0, hfc, hc⟩ := H.hA
    simp only [cfg, sarea] at this
    rw [abs_of_nonneg (by nlinarith)] at this
    nlinarith
  simp only [mcFilter, Bool.and_eq_true, Bool.not_eq_true', Bool.eq_false_iff, ne_eq, beq_iff_eq]
  refine ⟨⟨⟨⟨fun h => fan 0 1 2 (by decide) (by decide) (by decide) (by simpa using h.1.1)
      (by simpa using h.1.2) (by simpa using h.2),
    fun h => fan 0 1 3 (by decide) (by decide) (by decide) (by simpa using h.1.1)
      (by simpa using h.1.2) (by simpa using h.2)⟩,
    fun h => fan 0 2 3 (by decide) (by decide) (by decide) (by simpa using h.1.1)
      (by simpa using h.1.2) (by simpa using h.2)⟩,
    fun h => fan 1 2 3 (by decide) (by decide) (by decide) (by simpa using h.1.1)
      (by simpa using h.1.2) (by simpa using h.2)⟩,
    fun h => ofh (by simpa using h)⟩

/-- A pre-cell of a case in range is a cell of the package. -/
theorem MPre.cell (C : MPre key h c d f Q) (hk : key.1 < 3) (hi : key.2.1 < 3)
    (hj : key.2.2 < 8) : MCell key h c d f Q := by
  refine ⟨C, ?_⟩
  have := List.all_eq_true.1 (List.all_eq_true.1 (List.all_eq_true.1 mcFilter_keys key.1
    (List.mem_range.2 hk)) key.2.1 (List.mem_range.2 hi)) key.2.2 (List.mem_range.2 hj)
  rw [C.filter hk] at this
  simpa using this

end Heilbronn.Nine.C1OneLowerMixedCaps
