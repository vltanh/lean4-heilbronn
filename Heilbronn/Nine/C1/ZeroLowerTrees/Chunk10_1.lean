module

public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk10Defs

/-! # Zero-lower C1 cover, chunk 10, part 1 (1775 terms; kernel check) -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

theorem part10_npnok :
    checkTree (spec [3, 3, 4, 7]) [((0, 5, 8), false), ((0, 5, 7), true), ((4, 5, 7), false)] part10_npn = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
