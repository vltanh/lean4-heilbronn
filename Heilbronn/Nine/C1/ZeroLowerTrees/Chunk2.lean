module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader

/-! # Zero-lower C1 cover, chunk 2

The sign trees of 1 word cases (3123 certificate terms), checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- The sign tree of the case [0, 3, 3, 5]. -/
noncomputable def tree2_0 : Cover.Tree Split :=
  .node (.tri 3 6 7) [.node (.tri 4 6 7) [.node (.tri 1 7 8) [.node (.tri 1 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c049.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c050.txt")], .node (.tri 0 6 8) [.node (.tri 6 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c051.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c052.txt")], .node (.tri 0 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c053.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c054.txt")]]], .cert (term_rows% "../../Data/c1_zero_lower/c055.txt")], .node (.tri 4 5 8) [.node (.tri 2 6 7) [.cert (term_rows% "../../Data/c1_zero_lower/c056.txt"), .node (.tri 1 7 8) [.node (.tri 0 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c057.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c058.txt")], .node (.tri 0 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c059.txt"), .node (.tri 0 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c060.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c061.txt")]]]], .node (.tri 2 6 7) [.cert (term_rows% "../../Data/c1_zero_lower/c062.txt"), .node (.tri 0 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c063.txt"), .node (.tri 3 5 8) [.cert (term_rows% "../../Data/c1_zero_lower/c064.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c065.txt")]]]]]

/-- The cases of chunk 2 with their trees. -/
noncomputable def chunk2 : List (List ℕ × Cover.Tree Split) :=
  [([0, 3, 3, 5], tree2_0)]

theorem chunk2_ok : chunk2.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
