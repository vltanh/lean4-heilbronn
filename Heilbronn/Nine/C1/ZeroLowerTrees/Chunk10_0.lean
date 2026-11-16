module

public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk10Defs

/-! # Zero-lower C1 cover, chunk 10, part 0 (716 terms; kernel check) -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

theorem part10_nnok :
    checkTree (spec [3, 3, 4, 7]) [((0, 5, 8), false), ((0, 5, 7), false)] part10_nn = true := by
  decide +kernel

end Heilbronn.Nine.C1ZeroLower.Trees
