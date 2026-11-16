module

public import Heilbronn.Nine.C1.OneLower.HexModel
public import Heilbronn.Nine.C1.OneLower.HullWords

/-! # Soundness of the one-lower hexagon packages (`docs/proof/nine/C1_ONE_LOWER_TOP_CAP.md`,
`docs/proof/nine/C1_ONE_LOWER_SIDE_CAP.md`, Sections 3–5)

Generic part of the certificate soundness for the two hexagons of
`Heilbronn.Nine.C1OneLowerHex.Model`: the nine points `cfg9 V L P Q` (hexagon `V`, interior points
`L, P, Q`), the cube point `zeta`, the initial table from radial words (`base_holds`: hull
triples by convexity, two hull vertices and an interior point by the words, interior pairs by
the ray order (14) and the upper-pair rule (15)), and the bridges from the words of
`Heilbronn.Nine.C1OneLowerTopCap` (`HasHullWord`, `hullSign`) to the model's list words.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerHex

open Heilbronn.Nine.C1 Cover C1OneLower Model
open C1OneLowerTopCap (ConvexPolygon HasHullWord HullWord hullSign)

/-- The nine points of a hexagon cell: the hexagon `V₀, …, V₅` and `L, P, Q`. -/
def cfg9 (V : Fin 6 → Point) (L P Q : Point) (i : ℕ) : Point :=
  if h : i < 6 then V ⟨i, h⟩ else if i = 6 then L else if i = 7 then P else Q

/-- The interior points. -/
def inner (L P Q : Point) : Fin 3 → Point := ![L, P, Q]

theorem cfg9_inner (V : Fin 6 → Point) (L P Q : Point) (m : Fin 3) :
    cfg9 V L P Q (m.val + 6) = inner L P Q m := by
  fin_cases m <;> rfl

theorem cfg9_hex (V : Fin 6 → Point) (L P Q : Point) (a : ℕ) (ha : a < 6) :
    cfg9 V L P Q a = V ⟨a, ha⟩ := by
  simp [cfg9, ha]

/-- The point of the cube: `h, c, d, f, g, k, ℓ_x, ℓ_y, p_x, p_y, q_x, q_y`. -/
def zeta (h c d f : ℝ) (X L P Q : Point) : ℕ → ℝ
  | 0 => h
  | 1 => c
  | 2 => d
  | 3 => f
  | 4 => X.1
  | 5 => X.2
  | 6 => L.1
  | 7 => L.2
  | 8 => P.1
  | 9 => P.2
  | 10 => Q.1
  | 11 => Q.2
  | _ => 0

theorem zeta_mem {h c d f : ℝ} {X L P Q : Point} (hA : C1Anchors h c d f)
    (hX : X ∈ unitSquare) (hL : L ∈ unitSquare) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (v : ℕ) : 0 ≤ zeta h c d f X L P Q v ∧ zeta h c d f X L P Q v ≤ 1 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨x0, x1, x2, x3⟩ := hX
  obtain ⟨l0, l1, l2, l3⟩ := hL
  obtain ⟨p0, p1, p2, p3⟩ := hP
  obtain ⟨q0, q1, q2, q3⟩ := hQ
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith

/-- `AreaOK` for the nine points of a cell, from the least area of a relabelling `τ`. -/
theorem areaOK_cfg9 {Pc : Fin 9 → Point} (hmin : A₀ ≤ minTriangleArea Pc) (V : Fin 6 → Point)
    (L P Q : Point) (τ : Fin 9 → Fin 9) (hτ : Function.Injective τ)
    (hP : ∀ a : Fin 9, cfg9 V L P Q a = Pc (τ a)) : AreaOK (cfg9 V L P Q) := by
  refine areaOK_of_min hmin _ (fun i => if h : i < 9 then τ ⟨i, h⟩ else 0) ?_ ?_
  · intro a b ha hb hab
    simp only [ha, hb, dite_true] at hab
    exact congrArg Fin.val (hτ hab)
  · intro a ha
    simp only [ha, dite_true]
    exact hP ⟨a, ha⟩

theorem orient_of_iff {x : ℝ} {b : Bool} (hiff : 0 < x ↔ b = true) (hne : x ≠ 0) :
    OrientHolds b x := by
  cases b <;> simp only [OrientHolds, Bool.false_eq_true, ite_true, ite_false] at hiff ⊢
  · exact lt_of_le_of_ne (not_lt.1 fun h => absurd (hiff.1 h) (by decide)) hne
  · exact hiff.2 trivial

theorem area_ne_of {P : ℕ → Point} (H : AreaOK P) {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e) : sarea (P a) (P b) (P e) ≠ 0 := by
  intro h0
  have := H a b e ha hb he hab hbe hae
  rw [h0, abs_zero] at this; linarith [A₀_pos]

/-- **The initial table** of a hexagon cell holds. -/
theorem base_holds {side : Bool} {V : Fin 6 → Point} {L P Q : Point} (H : AreaOK (cfg9 V L P Q))
    (hV : ConvexPolygon V) {ws : List (List ℕ)}
    (hword : ∀ m : Fin 3, ∀ a b : ℕ, a < 6 → b < 6 → a ≠ b →
      (0 < sarea (cfg9 V L P Q a) (cfg9 V L P Q b) (inner L P Q m) ↔
        hsign (ws.getD m []) a b = true))
    (hray : ∀ m m' : Fin 3, m ≠ m' → ∀ v : ℕ, v < 6 →
      (ws.getD m []).getD v 0 < (ws.getD m' []).getD v 0 →
        0 < sarea (cfg9 V L P Q v) (inner L P Q m) (inner L P Q m'))
    (hup : ∀ v : ℕ, v < 6 → ∀ b, upperPair side (ws.getD 1 []) (ws.getD 2 []) v = some b →
      OrientHolds b (sarea (cfg9 V L P Q v) P Q)) :
    AllHold (C1ZeroLower.FHolds (cfg9 V L P Q)) (baseSigns side ws) := by
  intro g hg
  simp only [baseSigns, List.mem_append, List.mem_filterMap, List.mem_flatMap,
    List.mem_range, Option.map_eq_some_iff] at hg
  rcases hg with ⟨t, ht, hsg⟩ | ⟨p, hp, v, hv, sg, hsg, rfl⟩
  · obtain ⟨t1, t2, t3⟩ := C1ZeroLower.lexTriples_valid t ht
    split_ifs at hsg with a1 a2 <;> simp only [Option.some.injEq] at hsg <;>
      subst hsg
    · refine ⟨t1, t2, t3, ?_⟩
      simp only [SFact.Holds, OrientHolds, ite_true]
      rw [cfg9_hex V L P Q _ (by omega), cfg9_hex V L P Q _ (by omega), cfg9_hex V L P Q _ a1]
      exact hV _ _ _ (Fin.mk_lt_mk.2 t1) (Fin.mk_lt_mk.2 t2)
    · refine ⟨t1, t2, t3, ?_⟩
      have hm : t.2.2 - 6 < 3 := by omega
      have hc : cfg9 V L P Q t.2.2 = inner L P Q ⟨t.2.2 - 6, hm⟩ := by
        rw [← cfg9_inner]; congr 1; simp only; omega
      have hne := area_ne_of H (a := t.1) (b := t.2.1) (e := t.2.2) (by omega) (by omega) t3
        (by omega) (by omega) (by omega)
      simp only [SFact.Holds]
      rw [hc] at hne ⊢
      exact orient_of_iff (hword ⟨t.2.2 - 6, hm⟩ t.1 t.2.1 (by omega) a2 (by omega)) hne
  · simp only [pairs3, List.mem_cons, List.not_mem_nil, or_false] at hp
    have key : ∀ m m' : Fin 3, m < m' → p = (m.val, m'.val) →
        C1ZeroLower.FHolds (cfg9 V L P Q) ((v, p.1 + 6, p.2 + 6), sg) := by
      intro m m' hmm hpe
      subst hpe
      refine ⟨by simp only; omega, by simp only; omega, by simp only; omega, ?_⟩
      simp only [SFact.Holds, cfg9_inner]
      unfold pairSign at hsg
      simp only at hsg
      split_ifs at hsg with h1 h2 <;> try simp only [Option.some.injEq] at hsg
      · subst hsg
        rcases lt_or_gt_of_ne h1 with hl | hl
        · simp only [hl, decide_true, OrientHolds, ite_true]
          exact hray m m' hmm.ne v hv hl
        · simp only [not_lt.2 hl.le, decide_false, OrientHolds, Bool.false_eq_true, ite_false]
          have := hray m' m hmm.ne' v hv hl
          rw [sarea_swap₂₃] at this; linarith
      · obtain ⟨e1, e2⟩ := h2
        have em : m = 1 := Fin.ext e1
        have em' : m' = 2 := Fin.ext e2
        subst em em'
        exact hup v hv sg hsg
    rcases hp with rfl | rfl | rfl
    · exact key 0 1 (by decide) rfl
    · exact key 0 2 (by decide) rfl
    · exact key 1 2 (by decide) rfl

/-- The word facts of the model from a radial word. -/
theorem hword_of {V : Fin 6 → Point} {R : Point} {r : HullWord 6} {wl : List ℕ}
    (hr : HasHullWord V R r) (heq : ∀ a b : Fin 6, hullSign r a b = hsign wl a b)
    (L P Q : Point) : ∀ a b : ℕ, a < 6 → b < 6 → a ≠ b →
      (0 < sarea (cfg9 V L P Q a) (cfg9 V L P Q b) R ↔ hsign wl a b = true) := by
  intro a b ha hb hab
  rw [cfg9_hex V L P Q a ha, cfg9_hex V L P Q b hb]
  have := hr ⟨a, ha⟩ ⟨b, hb⟩ (fun e => hab (congrArg Fin.val e))
  rw [heq] at this
  exact this

/-- The ray-order facts of the model from two radial words (`eq14`). -/
theorem hray_of {V : Fin 6 → Point} (hV : ConvexPolygon V) {R S : Point} {r r' : HullWord 6}
    {wl wl' : List ℕ} (hR : HasHullWord V R r) (hS : HasHullWord V S r')
    (hb : ∀ i, 1 ≤ r i ∧ r i ≤ 4) (hb' : ∀ i, 1 ≤ r' i ∧ r' i ≤ 4)
    (he : ∀ v : Fin 6, wl.getD v 0 = r v) (he' : ∀ v : Fin 6, wl'.getD v 0 = r' v)
    (L P Q : Point) : ∀ v : ℕ, v < 6 → wl.getD v 0 < wl'.getD v 0 →
      0 < sarea (cfg9 V L P Q v) R S := by
  intro v hv hlt
  rw [cfg9_hex V L P Q v hv]
  have h1 := he ⟨v, hv⟩
  have h2 := he' ⟨v, hv⟩
  simp only at h1 h2
  rw [h1, h2] at hlt
  exact C1OneLowerTopCap.eq14 hV hR hS hb hb' hlt

/-- A cell of a hexagon package is impossible. -/
theorem cell_false {side : Bool} {i j l : ℕ} {T : Cover.Tree C1ZeroLower.Model.Split}
    (hT : checkTree (spec side i j l) [] T = true) {z : ℕ → ℝ} (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1)
    {V : Fin 6 → Point} {L P Q : Point}
    (hpt : ∀ n, n < 9 → ptEval z (pt side) n = cfg9 V L P Q n) (H : AreaOK (cfg9 V L P Q))
    (hfac : ∀ e ∈ factors side ++ [wCost], 0 ≤ e.eval z)
    (hbase : AllHold (C1ZeroLower.FHolds (cfg9 V L P Q)) (baseSigns side (caseWords side i j l))) :
    False :=
  tableSpec_false hT hz hpt H (by decide) (by decide) hfac (by simp) hbase

end Heilbronn.Nine.C1OneLowerHex
