module

public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk10Defs

/-! # Zero-lower C1 cover, chunk 10, part 5 (1624 terms; kernel check) -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

theorem part10_ppnok :
    checkTree (spec [3, 3, 4, 7]) [((0, 5, 8), true), ((5, 7, 8), true), ((0, 7, 8), false)] part10_ppn = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
