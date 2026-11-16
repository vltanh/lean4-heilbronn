module

public import Heilbronn.C1.ZeroLowerTrees.Chunk10Defs

/-! # Zero-lower C1 cover, chunk 10, part 6 (1333 terms; kernel check) -/

@[expose] public section

namespace Heilbronn.C1ZeroLower.Trees

open Cover Model

theorem part10_pppok :
    checkTree (spec [3, 3, 4, 7]) [((0, 5, 8), true), ((5, 7, 8), true), ((0, 7, 8), true)] part10_ppp = true := by
  decide +kernel

end Heilbronn.C1ZeroLower.Trees
