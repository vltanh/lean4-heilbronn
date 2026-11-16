module

public import Heilbronn.C1.ZeroLowerTrees.Chunk10Defs

/-! # Zero-lower C1 cover, chunk 10, part 2 (1224 terms; kernel check) -/

@[expose] public section

namespace Heilbronn.C1ZeroLower.Trees

open Cover Model

theorem part10_nppok :
    checkTree (spec [3, 3, 4, 7]) [((0, 5, 8), false), ((0, 5, 7), true), ((4, 5, 7), true)] part10_npp = true := by
  decide +kernel

end Heilbronn.C1ZeroLower.Trees
