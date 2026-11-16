module

public import Heilbronn.Nine.SixBoundary.SingleCommon.Words
public import Heilbronn.Nine.SixBoundary.SingleTop.Model

/-! # The heptagon words of the single-top cover

The finite part of `exists_hexagonWord`: by `SixBoundarySingle.classify`, a word of
`radialWords 7` is one of the 57 words `heptagonWords`; the counts of the words with the hexagon
test `r₃ ≥ 2` (`card_hexagon`, `card_lower`, `card_upper`), and a word with `r₃ ≥ 2` is one of the
52 words `Model.words`, with an index (`exists_index`). -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Words

open Heilbronn.Nine.SixBoundary Heilbronn.Nine.SixBoundarySingle Model

theorem words_eq : words = heptagonWords.filter fun l => 2 ≤ l.getD 3 0 := by decide +kernel

theorem card_hexagon :
    ((heptagonWords.map toF).toFinset.filter fun r => 2 ≤ (r 3 : ℕ)).card = 52 := by decide +kernel

theorem card_lower :
    (((heptagonWords.map toF).toFinset.filter fun r => 2 ≤ (r 3 : ℕ)).filter
      fun r => (r 6 : ℕ) < 3).card = 19 := by decide +kernel

theorem card_upper :
    (((heptagonWords.map toF).toFinset.filter fun r => 2 ≤ (r 3 : ℕ)).filter
      fun r => 3 ≤ (r 6 : ℕ)).card = 33 := by decide +kernel

/-- A word of `radialWords 7` with `r₃ ≥ 2` is one of the 52 words, with an index `w`. -/
theorem exists_index {r : Fin 7 → Fin 7} (hr : r ∈ radialWords 7) (h3 : 2 ≤ (r 3 : ℕ)) :
    ∃ w, w < 52 ∧ ∀ i : Fin 7, wordAt w i = r i := by
  obtain ⟨w, hw, e⟩ := exists_index_of_filter words_eq hr (by simpa using h3)
  have hlen : words.length = 52 := by decide
  exact ⟨w, hlen ▸ hw, e⟩

end Heilbronn.Nine.SixBoundarySingleTop.Words
