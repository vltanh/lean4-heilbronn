module

public import Heilbronn.Nine.SixBoundary.Setting
public import Heilbronn.Nine.SixBoundary.SingleTop.Model

/-! # The heptagon words of the single-top cover (`docs/proof/nine/SIX_BOUNDARY_SINGLE_TOP.md` (11)–(12))

The finite part of `SIX_BOUNDARY_SINGLE_TOP:claim-words`: a word `r` on the heptagon satisfying
the range and complement relations (12) (`SixBoundary.IsRadialWord`) is one of the 57 words
`Model.allWords` (`classify`, by a pruned enumeration checked by `decide +kernel`); hence
`radialWords 7` is the image of `allWords` (`radialWords_eq`), and a word with `r₃ ≥ 2` is one of
the 52 words `Model.words`, with an index (`exists_index`). -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Words

open Heilbronn.Nine.SixBoundary Model

/-- The complement relation (12) between the entries `rᵢ, r_k` (`i < k`, `j = k - i`). -/
def okB (i k ri rk : ℕ) : Bool := decide (k - i ≤ ri) == decide (rk + (k - i) < 7)

theorem okB_of {i k ri rk : ℕ} (h : k - i ≤ ri ↔ rk + (k - i) < 7) : okB i k ri rk = true := by
  unfold okB
  by_cases h1 : k - i ≤ ri
  · simp [h1, h.1 h1]
  · have : ¬ rk + (k - i) < 7 := fun h2 => h1 (h.2 h2)
    simp [h1, this]

/-- `∀ x < n, p x` as a Boolean. -/
def allLT (n : ℕ) (p : ℕ → Bool) : Bool := (List.range n).all p

theorem of_allLT {n : ℕ} {p : ℕ → Bool} (h : allLT n p = true) {x : ℕ} (hx : x < n) :
    p x = true := List.all_eq_true.1 h x (List.mem_range.2 hx)

theorem imp_of {a b : Bool} (h : (!a || b) = true) (ha : a = true) : b = true := by
  cases a <;> simp_all

/-- The pruned enumeration of (12), as a Boolean program (entries `1, …, 5`, each new entry
tested against the earlier ones). -/
def chk : Bool :=
  allLT 6 fun x0 => !(decide (1 ≤ x0)) ||
  allLT 6 fun x1 => !(decide (1 ≤ x1) && okB 0 1 x0 x1) ||
  allLT 6 fun x2 => !(decide (1 ≤ x2) && okB 0 2 x0 x2 && okB 1 2 x1 x2) ||
  allLT 6 fun x3 => !(decide (1 ≤ x3) && okB 0 3 x0 x3 && okB 1 3 x1 x3 && okB 2 3 x2 x3) ||
  allLT 6 fun x4 => !(decide (1 ≤ x4) && okB 0 4 x0 x4 && okB 1 4 x1 x4 &&
    okB 2 4 x2 x4 && okB 3 4 x3 x4) ||
  allLT 6 fun x5 => !(decide (1 ≤ x5) && okB 0 5 x0 x5 && okB 1 5 x1 x5 &&
    okB 2 5 x2 x5 && okB 3 5 x3 x5 && okB 4 5 x4 x5) ||
  allLT 6 fun x6 => !(decide (1 ≤ x6) && okB 0 6 x0 x6 && okB 1 6 x1 x6 &&
    okB 2 6 x2 x6 && okB 3 6 x3 x6 && okB 4 6 x4 x6 && okB 5 6 x5 x6) ||
  decide ([x0, x1, x2, x3, x4, x5, x6] ∈ allWords)

theorem chk_true : chk = true := by decide +kernel

/-- The pruned enumeration of (12): every solution is one of the 57 words. -/
theorem classify_aux {x0 x1 x2 x3 x4 x5 x6 : ℕ} (b0 : x0 < 6) (b1 : x1 < 6) (b2 : x2 < 6)
    (b3 : x3 < 6) (b4 : x4 < 6) (b5 : x5 < 6) (b6 : x6 < 6) (l0 : 1 ≤ x0) (l1 : 1 ≤ x1)
    (l2 : 1 ≤ x2) (l3 : 1 ≤ x3) (l4 : 1 ≤ x4) (l5 : 1 ≤ x5) (l6 : 1 ≤ x6)
    (r01 : okB 0 1 x0 x1 = true) (r02 : okB 0 2 x0 x2 = true) (r12 : okB 1 2 x1 x2 = true)
    (r03 : okB 0 3 x0 x3 = true) (r13 : okB 1 3 x1 x3 = true) (r23 : okB 2 3 x2 x3 = true)
    (r04 : okB 0 4 x0 x4 = true) (r14 : okB 1 4 x1 x4 = true) (r24 : okB 2 4 x2 x4 = true)
    (r34 : okB 3 4 x3 x4 = true) (r05 : okB 0 5 x0 x5 = true) (r15 : okB 1 5 x1 x5 = true)
    (r25 : okB 2 5 x2 x5 = true) (r35 : okB 3 5 x3 x5 = true) (r45 : okB 4 5 x4 x5 = true)
    (r06 : okB 0 6 x0 x6 = true) (r16 : okB 1 6 x1 x6 = true) (r26 : okB 2 6 x2 x6 = true)
    (r36 : okB 3 6 x3 x6 = true) (r46 : okB 4 6 x4 x6 = true) (r56 : okB 5 6 x5 x6 = true) :
    [x0, x1, x2, x3, x4, x5, x6] ∈ allWords := by
  have h0 := imp_of (of_allLT chk_true b0) (by simp [l0])
  have h1 := imp_of (of_allLT h0 b1) (by simp [l1, r01])
  have h2 := imp_of (of_allLT h1 b2) (by simp [l2, r02, r12])
  have h3 := imp_of (of_allLT h2 b3) (by simp [l3, r03, r13, r23])
  have h4 := imp_of (of_allLT h3 b4) (by simp [l4, r04, r14, r24, r34])
  have h5 := imp_of (of_allLT h4 b5) (by simp [l5, r05, r15, r25, r35, r45])
  have h6 := imp_of (of_allLT h5 b6) (by simp [l6, r06, r16, r26, r36, r46, r56])
  exact of_decide_eq_true h6

theorem rel_of {r : Fin 7 → ℕ} (h : IsRadialWord r) (i k : Fin 7) (hik : i < k) :
    okB i k (r i) (r k) = true := by
  have hik' : i.val < k.val := hik
  have hk := k.isLt
  have := h.2 i ⟨k.val - i.val, by omega⟩ (by simp only; omega)
  have e : cyc i (k.val - i.val) = k :=
    Fin.ext (by show (i.val + (k.val - i.val)) % 7 = k.val; rw [Nat.mod_eq_of_lt (by omega)]; omega)
  simp only at this
  rw [e] at this
  exact okB_of this

/-- **The 57 heptagon words**: a word satisfying the range and complement relations (12) is one of
`allWords`. -/
theorem classify {r : Fin 7 → ℕ} (h : IsRadialWord r) :
    [r 0, r 1, r 2, r 3, r 4, r 5, r 6] ∈ allWords := by
  have b : ∀ i, r i < 6 := fun i => by have := (h.1 i).2; omega
  have l : ∀ i, 1 ≤ r i := fun i => (h.1 i).1
  exact classify_aux (b 0) (b 1) (b 2) (b 3) (b 4) (b 5) (b 6) (l 0) (l 1) (l 2) (l 3) (l 4)
    (l 5) (l 6) (rel_of h 0 1 (by decide)) (rel_of h 0 2 (by decide)) (rel_of h 1 2 (by decide))
    (rel_of h 0 3 (by decide)) (rel_of h 1 3 (by decide)) (rel_of h 2 3 (by decide))
    (rel_of h 0 4 (by decide)) (rel_of h 1 4 (by decide)) (rel_of h 2 4 (by decide))
    (rel_of h 3 4 (by decide)) (rel_of h 0 5 (by decide)) (rel_of h 1 5 (by decide))
    (rel_of h 2 5 (by decide)) (rel_of h 3 5 (by decide)) (rel_of h 4 5 (by decide))
    (rel_of h 0 6 (by decide)) (rel_of h 1 6 (by decide)) (rel_of h 2 6 (by decide))
    (rel_of h 3 6 (by decide)) (rel_of h 4 6 (by decide)) (rel_of h 5 6 (by decide))

theorem words_eq : words = allWords.filter fun l => 2 ≤ l.getD 3 0 := by decide +kernel

/-- A word of `radialWords 7` with `r₃ ≥ 2` is one of the 52 words, with an index `w`. -/
theorem exists_index {r : Fin 7 → Fin 7} (hr : r ∈ radialWords 7) (h3 : 2 ≤ (r 3 : ℕ)) :
    ∃ w, w < 52 ∧ ∀ i : Fin 7, wordAt w i = r i := by
  simp only [radialWords, Finset.mem_filter, Finset.mem_univ, true_and] at hr
  have hl := classify hr
  have hw : [(r 0 : ℕ), r 1, r 2, r 3, r 4, r 5, r 6] ∈ words := by
    rw [words_eq, List.mem_filter]
    exact ⟨hl, by simpa using h3⟩
  obtain ⟨n, hn, e⟩ := List.mem_iff_getElem.1 hw
  have hlen : words.length = 52 := by decide
  refine ⟨n, hlen ▸ hn, fun i => ?_⟩
  have e' : words.getD n [] = [(r 0 : ℕ), r 1, r 2, r 3, r 4, r 5, r 6] := by
    simp only [List.getD_eq_getElem?_getD, List.getElem?_eq_getElem hn, Option.getD_some, e]
  simp only [wordAt, e']
  fin_cases i <;> rfl

end Heilbronn.Nine.SixBoundarySingleTop.Words
