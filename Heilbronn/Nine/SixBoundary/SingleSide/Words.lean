module

public import Heilbronn.Nine.SixBoundary.SingleCommon.Words
public import Heilbronn.Nine.SixBoundary.SingleSide.Model

/-! # The heptagon words of the single-side cover

The finite part of the word count of the single-side cover: by `SixBoundarySingle.classify`, a
word of `radialWords 7` is one of the 57 words `heptagonWords`, and a word with `r₂ ≥ 2` and
`2 ≤ r₁ ≤ 4` is one of the 43 words `Model.words`, with an index (`exists_index`). -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleSide.Words

open Heilbronn.Nine.SixBoundary Heilbronn.Nine.SixBoundarySingle Model

/-- The 43 words are the heptagon words with `r₂ ≥ 2` and `2 ≤ r₁ ≤ 4`. -/
theorem words_eq :
    words = heptagonWords.filter fun l => 2 ≤ l.getD 2 0 ∧ 2 ≤ l.getD 1 0 ∧ l.getD 1 0 ≤ 4 := by
  decide +kernel

/-- A word of `radialWords 7` with `r₂ ≥ 2` and `2 ≤ r₁ ≤ 4` is one of the 43 words, with an
index `w`. -/
theorem exists_index {r : Fin 7 → Fin 7} (hr : r ∈ radialWords 7)
    (h : 2 ≤ (r 2 : ℕ) ∧ 2 ≤ (r 1 : ℕ) ∧ (r 1 : ℕ) ≤ 4) :
    ∃ w, w < 43 ∧ ∀ i : Fin 7, wordAt w i = r i := by
  obtain ⟨w, hw, e⟩ := exists_index_of_filter words_eq hr (by simpa using h)
  have hlen : words.length = 43 := by decide
  exact ⟨w, hlen ▸ hw, e⟩

end Heilbronn.Nine.SixBoundarySingleSide.Words
