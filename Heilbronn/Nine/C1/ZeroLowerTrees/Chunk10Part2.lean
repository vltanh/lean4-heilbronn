module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader

/-! # Zero-lower C1 cover, chunk 10, part 2

Subtrees of the cover `tree10_0` of `Heilbronn.Nine.C1.ZeroLowerModel` (1333 certificate terms),
each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- A subtree of the cover (1333 certificate terms). -/
noncomputable def tree10_part_1_1_1 : Cover.Tree Split :=
  .node (.tri 0 6 7) [
    .node (.tri 1 6 7) [
      .node (.tri 4 5 7) [.cert (term_rows% "../../Data/c1_zero_lower/c224.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c225.txt")],
      .node (.tri 4 5 7) [.cert (term_rows% "../../Data/c1_zero_lower/c226.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c227.txt")]],
    .node (.tri 4 6 7) [.node (.tri 4 5 7) [.cert (term_rows% "../../Data/c1_zero_lower/c228.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c229.txt")], .cert (term_rows% "../../Data/c1_zero_lower/c230.txt")]]

theorem tree10_part_1_1_1_ok : checkTree (spec [3, 3, 4, 7]) (pathFacts (spec [3, 3, 4, 7]) [] [(.tri 0 5 8, 1), (.tri 5 7 8, 1), (.tri 0 7 8, 1)]) tree10_part_1_1_1 = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
