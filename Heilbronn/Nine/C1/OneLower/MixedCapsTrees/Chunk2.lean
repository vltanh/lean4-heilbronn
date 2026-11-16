module

public import Heilbronn.Nine.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 2 (generated)

1 cells, 2843 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(0, 1, 0)`. -/
noncomputable def tree2_0 : Cover.Tree MSplit :=
  .node (.tri 0 6 7) [.node (.tri 4 5 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m020.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m021.txt")], .node (.tri 3 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m022.txt"), .node (.tri 5 6 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m023.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m024.txt")]]], .node (.tri 5 7 8) [.node (.tri 4 5 8) [.node (.tri 1 6 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m025.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m026.txt")], .node (.tri 3 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m027.txt"), .node (.tri 1 6 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m028.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m029.txt")]]], .node (.tri 1 6 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m030.txt"), .node (.tri 0 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m031.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m032.txt")]]]]

/-- The cells of chunk 2 with their trees. -/
noncomputable def chunk2 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((0, 1, 0), tree2_0)]

theorem chunk2_ok : chunk2.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerMixedCaps.Model
