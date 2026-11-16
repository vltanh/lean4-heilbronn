module

/-! # The heptagon words

The 57 radial words of a point strictly inside a strictly convex heptagon `V₀, …, V₆`
(counterclockwise), in lexicographic order. The word `r` of a point `R` gives, at each vertex `Vᵢ`,
the number `rᵢ` of the rays `Vᵢ V_{i+j}` (`1 ≤ j ≤ 6`) with `R` on their left: `[Vᵢ V_{i+j} R] > 0`
exactly when `j ≤ rᵢ`. The 57 words are the solutions `r ∈ {1, …, 5}⁷` of the complement
relation `j ≤ rᵢ ⇔ r_{i+j} + j < 7`.

The list is computable, for the kernel checks of the certificate models of the single-cap
six-boundary covers (`Heilbronn.Nine.SixBoundary.SingleTop`,
`Heilbronn.Nine.SixBoundary.SingleSide`) and of the seven-boundary interior cover
(`Heilbronn.Nine.SevenBoundary.Interior`).
-/

@[expose] public section

namespace Heilbronn.Nine

/-- The 57 heptagon words, lexicographic. -/
def heptagonWords : List (List Nat) :=
  [[1, 1, 5, 5, 4, 3, 2], [1, 2, 5, 4, 4, 3, 2], [1, 3, 5, 4, 3, 3, 2], [1, 4, 5, 4, 3, 2, 2],
    [1, 5, 5, 4, 3, 2, 1], [2, 1, 1, 5, 5, 4, 3], [2, 1, 2, 5, 4, 4, 3], [2, 1, 3, 5, 4, 3, 3],
    [2, 1, 4, 5, 4, 3, 2], [2, 2, 1, 4, 5, 4, 3], [2, 2, 2, 4, 4, 4, 3], [2, 2, 3, 4, 4, 3, 3],
    [2, 2, 4, 4, 4, 3, 2], [2, 3, 2, 4, 3, 4, 3], [2, 3, 3, 4, 3, 3, 3], [2, 3, 4, 4, 3, 3, 2],
    [2, 4, 3, 4, 3, 2, 3], [2, 4, 4, 4, 3, 2, 2], [2, 5, 4, 4, 3, 2, 1], [3, 2, 1, 1, 5, 5, 4],
    [3, 2, 1, 2, 5, 4, 4], [3, 2, 1, 3, 5, 4, 3], [3, 2, 2, 1, 4, 5, 4], [3, 2, 2, 2, 4, 4, 4],
    [3, 2, 2, 3, 4, 4, 3], [3, 2, 3, 2, 4, 3, 4], [3, 2, 3, 3, 4, 3, 3], [3, 2, 4, 3, 4, 3, 2],
    [3, 3, 2, 1, 3, 5, 4], [3, 3, 2, 2, 3, 4, 4], [3, 3, 2, 3, 3, 4, 3], [3, 3, 3, 2, 3, 3, 4],
    [3, 3, 3, 3, 3, 3, 3], [3, 3, 4, 3, 3, 3, 2], [3, 4, 3, 2, 3, 2, 4], [3, 4, 3, 3, 3, 2, 3],
    [3, 4, 4, 3, 3, 2, 2], [3, 5, 4, 3, 3, 2, 1], [4, 3, 2, 1, 1, 5, 5], [4, 3, 2, 1, 2, 5, 4],
    [4, 3, 2, 2, 1, 4, 5], [4, 3, 2, 2, 2, 4, 4], [4, 3, 2, 3, 2, 4, 3], [4, 3, 3, 2, 1, 3, 5],
    [4, 3, 3, 2, 2, 3, 4], [4, 3, 3, 3, 2, 3, 3], [4, 3, 4, 3, 2, 3, 2], [4, 4, 3, 2, 1, 2, 5],
    [4, 4, 3, 2, 2, 2, 4], [4, 4, 3, 3, 2, 2, 3], [4, 4, 4, 3, 2, 2, 2], [4, 5, 4, 3, 2, 2, 1],
    [5, 4, 3, 2, 1, 1, 5], [5, 4, 3, 2, 2, 1, 4], [5, 4, 3, 3, 2, 1, 3], [5, 4, 4, 3, 2, 1, 2],
    [5, 5, 4, 3, 2, 1, 1]]

end Heilbronn.Nine
