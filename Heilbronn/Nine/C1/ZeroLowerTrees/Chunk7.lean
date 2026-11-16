module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader

/-! # Zero-lower C1 cover, chunk 7

The sign trees of 1 word cases (3016 certificate terms), checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- The sign tree of the case [3, 3, 3, 5]. -/
noncomputable def tree7_0 : Cover.Tree Split :=
  .node .three [.node (.tri 5 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c145.txt"), .node (.tri 0 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c146.txt"), .node (.tri 1 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c147.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c148.txt")]]], .node (.tri 6 7 8) [.node (.tri 4 5 6) [.node (.tri 1 5 8) [.cert (term_rows% "../../Data/c1_zero_lower/c149.txt"), .node (.tri 1 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c150.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c151.txt")]], .cert (term_rows% "../../Data/c1_zero_lower/c152.txt")], .node (.tri 0 5 8) [.node (.tri 4 5 6) [.node (.tri 1 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c153.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c154.txt")], .cert (term_rows% "../../Data/c1_zero_lower/c155.txt")], .node (.tri 5 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c156.txt"), .node (.tri 4 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c157.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c158.txt")]]]], .node (.tri 1 7 8) [.node (.tri 1 6 8) [.node (.tri 1 5 8) [.cert (term_rows% "../../Data/c1_zero_lower/c159.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c160.txt")], .cert (term_rows% "../../Data/c1_zero_lower/c161.txt")], .cert (term_rows% "../../Data/c1_zero_lower/c162.txt")]]

/-- The cases of chunk 7 with their trees. -/
noncomputable def chunk7 : List (List ℕ × Cover.Tree Split) :=
  [([3, 3, 3, 5], tree7_0)]

theorem chunk7_ok : chunk7.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
