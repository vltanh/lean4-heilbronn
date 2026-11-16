module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader

/-! # Zero-lower C1 cover, chunk 10, part 0

Subtrees of the cover `tree10_0` of `Heilbronn.Nine.C1.ZeroLowerModel` (2999 certificate terms),
each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- A subtree of the cover (1775 certificate terms). -/
noncomputable def tree10_part_0_1_0 : Cover.Tree Split :=
  .node (.tri 3 5 6) [
    .node (.tri 0 6 7) [
      .node (.tri 6 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c188.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c189.txt")],
      .node (.tri 5 6 7) [.cert (term_rows% "../../Data/c1_zero_lower/c190.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c191.txt")]],
    .node (.tri 6 7 8) [
      .cert (term_rows% "../../Data/c1_zero_lower/c192.txt"),
      .node (.tri 2 5 6) [
        .node (.tri 1 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c193.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c194.txt")],
        .node (.tri 0 6 7) [.cert (term_rows% "../../Data/c1_zero_lower/c195.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c196.txt")]]]]

theorem tree10_part_0_1_0_ok : checkTree (spec [3, 3, 4, 7]) (pathFacts (spec [3, 3, 4, 7]) [] [(.tri 0 5 8, 0), (.tri 0 5 7, 1), (.tri 4 5 7, 0)]) tree10_part_0_1_0 = true := by
  tree_decide

/-- A subtree of the cover (1224 certificate terms). -/
noncomputable def tree10_part_0_1_1 : Cover.Tree Split :=
  .node (.tri 3 5 6) [
    .cert (term_rows% "../../Data/c1_zero_lower/c197.txt"),
    .node (.tri 4 6 7) [
      .node (.tri 6 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c198.txt"), .node (.tri 2 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c199.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c200.txt")]],
      .node (.tri 2 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c201.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c202.txt")]]]

theorem tree10_part_0_1_1_ok : checkTree (spec [3, 3, 4, 7]) (pathFacts (spec [3, 3, 4, 7]) [] [(.tri 0 5 8, 0), (.tri 0 5 7, 1), (.tri 4 5 7, 1)]) tree10_part_0_1_1 = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
