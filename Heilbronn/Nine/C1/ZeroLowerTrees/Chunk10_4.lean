module

public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk10Defs

/-! # Zero-lower C1 cover, chunk 10, part 4 (1687 terms; kernel check) -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

theorem part10_pnpok :
    checkTree (spec [3, 3, 4, 7]) [((0, 5, 8), true), ((5, 7, 8), false), ((1, 5, 7), true)] part10_pnp = true := by
  decide +kernel

end Heilbronn.Nine.C1ZeroLower.Trees
