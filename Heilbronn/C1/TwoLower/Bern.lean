module

public import Heilbronn.Common.Bernstein
public import Heilbronn.Common.CertNotation

/-! # Labelled Bernstein subdivision trees (shared by the C1 two-lower certificates)

A labelled tree subdivides a box; each leaf names one polynomial of a list `es` (with its tensor
degrees) and the bound `M` of a Bernstein box check (`Cert.bernsteinBoxCheck`) proving that this
polynomial is positive on the leaf box. Soundness (`ltreeCheck_sound`): if the tree check
succeeds, at every point of the box *some* polynomial of the list is positive. This generalizes
`MovingFCert.treeCheck` (one polynomial) to the certificates of `hand/C1_TOP_CAP_CONVEX_PAIR.md`
§4 (labels `P`/`Q`) and `hand/C1_TOP_CAP_TRIANGULAR_PAIR.md` §4 (labels `0, …, 3`).

`pointOf` turns a list of reals into a valuation, with `pointOf_box` for the box hypothesis.
-/

@[expose] public section

namespace Heilbronn.C1TwoLower

open Heilbronn.Cert

/-- A labelled subdivision tree: `leaf j M` runs the Bernstein check of bound `M` on the `j`-th
polynomial; `split i m l r` cuts the box at `var i = m`. -/
inductive LTree where
  | leaf (j : ℕ) (M : ℕ)
  | split (i : ℕ) (m : ℚ) (l r : LTree)

/-- The Bernstein check of the `j`-th polynomial of the list. -/
def leafCheck (es : List (Expr × List ℕ)) (j M : ℕ) (box : List (ℚ × ℚ)) : Bool :=
  match es[j]? with
  | some p => bernsteinBoxCheck p.1 box p.2 M
  | none => false

/-- Run a labelled tree on a box. -/
def ltreeCheck (es : List (Expr × List ℕ)) : LTree → List (ℚ × ℚ) → Bool
  | .leaf j M, box => leafCheck es j M box
  | .split i m l r, box =>
      ltreeCheck es l (box.set i ((box.getD i (0, 0)).1, m)) &&
        ltreeCheck es r (box.set i (m, (box.getD i (0, 0)).2))

theorem leafCheck_sound {es : List (Expr × List ℕ)} {j M : ℕ} {box : List (ℚ × ℚ)}
    (h : leafCheck es j M box = true) (x : ℕ → ℝ)
    (hx : ∀ i (hi : i < box.length), ((box[i]).1 : ℝ) ≤ x i ∧ x i ≤ (box[i]).2) :
    ∃ p ∈ es, 0 < p.1.eval x := by
  unfold leafCheck at h
  split at h
  · rename_i p hp
    exact ⟨p, List.mem_of_getElem? hp, bernsteinBoxCheck_sound h x hx⟩
  · exact absurd h Bool.false_ne_true

/-- **Soundness of the labelled tree check**: at every point of the box, some polynomial of the
list is positive. -/
theorem ltreeCheck_sound {es : List (Expr × List ℕ)} : ∀ (t : LTree) (box : List (ℚ × ℚ)),
    ltreeCheck es t box = true → ∀ x : ℕ → ℝ,
      (∀ i (hi : i < box.length), ((box[i]).1 : ℝ) ≤ x i ∧ x i ≤ (box[i]).2) →
      ∃ p ∈ es, 0 < p.1.eval x
  | .leaf _ _, _, h, x, hx => leafCheck_sound h x hx
  | .split i m l r, box, h, x, hx => by
    simp only [ltreeCheck, Bool.and_eq_true] at h
    by_cases hm : x i ≤ m
    · refine ltreeCheck_sound l _ h.1 x fun j hj => ?_
      rw [List.length_set] at hj
      rw [List.getElem_set]
      split_ifs with hij
      · subst hij
        rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hj, Option.getD_some]
        exact ⟨(hx i hj).1, hm⟩
      · exact hx j hj
    · push Not at hm
      refine ltreeCheck_sound r _ h.2 x fun j hj => ?_
      rw [List.length_set] at hj
      rw [List.getElem_set]
      split_ifs with hij
      · subst hij
        rw [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hj, Option.getD_some]
        exact ⟨hm.le, (hx i hj).2⟩
      · exact hx j hj

/-- Gluing the checks of the two halves of a split (to spread a big tree over several
theorems, each with its own kernel check). -/
theorem ltreeCheck_split {es : List (Expr × List ℕ)} {i : ℕ} {m : ℚ} {l r : LTree}
    {box : List (ℚ × ℚ)}
    (hl : ltreeCheck es l (box.set i ((box.getD i (0, 0)).1, m)) = true)
    (hr : ltreeCheck es r (box.set i (m, (box.getD i (0, 0)).2)) = true) :
    ltreeCheck es (.split i m l r) box = true := by
  simp only [ltreeCheck, hl, hr, Bool.and_self]

/-- The valuation sending `var i` to the `i`-th entry of a list (`0` beyond it). -/
noncomputable def pointOf (xs : List ℝ) (i : ℕ) : ℝ := xs.getD i 0

/-- A list of reals in a box (componentwise) gives the box hypothesis of the soundness
theorems. -/
theorem pointOf_box : ∀ (xs : List ℝ) (box : List (ℚ × ℚ)),
    List.Forall₂ (fun (x : ℝ) (b : ℚ × ℚ) => (b.1 : ℝ) ≤ x ∧ x ≤ b.2) xs box →
    ∀ i (hi : i < box.length), ((box[i]).1 : ℝ) ≤ pointOf xs i ∧ pointOf xs i ≤ (box[i]).2
  | [], [], _, i, hi => by simp at hi
  | x :: xs, b :: box, List.Forall₂.cons h hs, i, hi => by
    cases i with
    | zero => simpa [pointOf] using h
    | succ i =>
      have := pointOf_box xs box hs i (by simpa using hi)
      simpa [pointOf] using this

theorem pointOf_box3 {x y z : ℝ} {p q r : ℚ × ℚ} (hx : (p.1 : ℝ) ≤ x ∧ x ≤ p.2)
    (hy : (q.1 : ℝ) ≤ y ∧ y ≤ q.2) (hz : (r.1 : ℝ) ≤ z ∧ z ≤ r.2) :
    ∀ i (hi : i < [p, q, r].length),
      (([p, q, r][i]).1 : ℝ) ≤ pointOf [x, y, z] i ∧ pointOf [x, y, z] i ≤ ([p, q, r][i]).2 :=
  pointOf_box _ _ (.cons hx (.cons hy (.cons hz .nil)))

theorem pointOf_box4 {x y z w : ℝ} {p q r t : ℚ × ℚ} (hx : (p.1 : ℝ) ≤ x ∧ x ≤ p.2)
    (hy : (q.1 : ℝ) ≤ y ∧ y ≤ q.2) (hz : (r.1 : ℝ) ≤ z ∧ z ≤ r.2) (hw : (t.1 : ℝ) ≤ w ∧ w ≤ t.2) :
    ∀ i (hi : i < [p, q, r, t].length),
      (([p, q, r, t][i]).1 : ℝ) ≤ pointOf [x, y, z, w] i ∧
        pointOf [x, y, z, w] i ≤ ([p, q, r, t][i]).2 :=
  pointOf_box _ _ (.cons hx (.cons hy (.cons hz (.cons hw .nil))))

theorem pointOf_box3' {x y : ℝ} {a b c d : ℚ} (h1 : (a : ℝ) ≤ x) (h2 : x ≤ b) (h3 : (c : ℝ) ≤ y)
    (h4 : y ≤ d) :
    ∀ i (hi : i < [(a, b), (c, d)].length),
      ((([(a, b), (c, d)] : List (ℚ × ℚ))[i]).1 : ℝ) ≤ pointOf [x, y] i ∧
        pointOf [x, y] i ≤ (([(a, b), (c, d)] : List (ℚ × ℚ))[i]).2 :=
  pointOf_box _ _ (.cons ⟨h1, h2⟩ (.cons ⟨h3, h4⟩ .nil))

@[simp] theorem pointOf_zero (x : ℝ) (xs : List ℝ) : pointOf (x :: xs) 0 = x := rfl
@[simp] theorem pointOf_succ (x : ℝ) (xs : List ℝ) (i : ℕ) :
    pointOf (x :: xs) (i + 1) = pointOf xs i := rfl

end Heilbronn.C1TwoLower
