module

public import Heilbronn.TypeII.TypeII

/-! # The complete balanced count row is excluded (`hand/TYPE_II_COMPLETION.md`, §11)

`TYPE_II_COMPLETION.md` lines 1300–1371.

* `theorem11` (**Theorem 11**): a Type-II configuration with `0 < b ≤ 1/2` and counts
  `(2,2,2)` has an actual triangle of area strictly less than `A₀`.

The proof assembles `TYPE_II_BALANCED.md` (Theorem and §§5–6), Theorem 6, Lemma 4, Corollary 5
(with `FOUR_INTERIOR_QUADRILATERALS.md` Theorem 1), Theorem 8, Theorem 9, Theorem 10,
`BALANCED_RIGHT_MIXED.md` and `BALANCED_BOTTOM_INNER_SECTOR.md`. Combined with `TYPE_II.md` §8,
every remaining Type-II configuration has count `(1,2,3)`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion

open Heilbronn.TypeII

-- Note: the proof works at doubled threshold 7/64 in §§5–10, but also uses `TYPE_II_BALANCED.md`
-- §6 (doubled threshold 79/720), the global capacity theorems (`THREE_INTERIOR_TRIANGLES.md`
-- Corollary 5, `FOUR_INTERIOR_QUADRILATERALS.md` Theorem 1) and Theorem 8, which need least area
-- `A₀`; the statement is at `A₀`, so this is consistent.
/-- **Theorem 11** (`TYPE_II_COMPLETION:Theorem11`). Let nine points of the unit square have the
Type-II normalization (5) with `0 < b ≤ 1/2`, and let the left, central and right containers cut
by `DB` and `BC` contain respectively two, two and two of the six points other than `D, C, B`.
Then some actual triangle has area strictly less than `A₀`. `hand/TYPE_II_COMPLETION.md`,
lines 1300–1357.

Uses: TYPE_II_BALANCED:Theorem, TYPE_II_BALANCED:claim-not-both-below-CE,
TYPE_II_BALANCED:claim-not-both-above-CE, TYPE_II_BALANCED:claim-L-above-CE,
TYPE_II_BALANCED:claim-balanced-placement, TYPE_II_COMPLETION:Theorem6,
TYPE_II_COMPLETION:Lemma4, TYPE_II_COMPLETION:Corollary5, FOUR_INTERIOR_QUADRILATERALS:Theorem1,
TYPE_II_COMPLETION:Theorem8, TYPE_II_COMPLETION:Theorem9, TYPE_II_COMPLETION:Theorem10,
BALANCED_RIGHT_MIXED:Theorem, BALANCED_BOTTOM_INNER_SECTOR:Theorem,
TYPE_II:claim-container-assignment. -/
theorem theorem11 {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hb2 : b ≤ 1 / 2) (hcount : typeIICounts b V W X Y Z = (2, 2, 2)) :
    minTriangleArea (typeIIConfig l b V W X Y Z) < A₀ := by
  sorry

end Heilbronn.TypeIICompletion
