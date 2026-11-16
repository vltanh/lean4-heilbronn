module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader

/-! # Zero-lower C1 cover, chunk 10, part 1

Subtrees of the cover `tree10_0` of `Heilbronn.Nine.C1.ZeroLowerModel` (3311 certificate terms),
each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- A subtree of the cover (1687 certificate terms). -/
noncomputable def tree10_part_1_0_1 : Cover.Tree Split :=
  .node (.tri 4 5 6) [
    .cert (term_rows% "../../Data/c1_zero_lower/c206.txt"),
    .node (.tri 1 6 7) [
      .node (.tri 0 6 8) [.node (.tri 3 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c207.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c208.txt")], .cert (term_rows% "../../Data/c1_zero_lower/c209.txt")],
      .node (.tri 0 6 8) [
        .node (.tri 0 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c210.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c211.txt")],
        .node (.tri 0 5 7) [.node (.tri 2 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c212.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c213.txt")], .cert (term_rows% "../../Data/c1_zero_lower/c214.txt")]]]]

theorem tree10_part_1_0_1_ok : checkTree (spec [3, 3, 4, 7]) (pathFacts (spec [3, 3, 4, 7]) [] [(.tri 0 5 8, 1), (.tri 5 7 8, 0), (.tri 1 5 7, 1)]) tree10_part_1_0_1 = true := by
  tree_decide

/-- A subtree of the cover (1624 certificate terms). -/
noncomputable def tree10_part_1_1_0 : Cover.Tree Split :=
  .node (.tri 0 6 8) [
    .node (.tri 0 6 7) [
      .node (.tri 1 6 7) [.cert (term_rows% "../../Data/c1_zero_lower/c215.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c216.txt")],
      .node (.tri 4 6 7) [
        .node (.tri 2 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c217.txt"), .node (.tri 4 5 7) [.cert (term_rows% "../../Data/c1_zero_lower/c218.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c219.txt")]],
        .cert (term_rows% "../../Data/c1_zero_lower/c220.txt")]],
    .node (.tri 3 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c221.txt"), .node (.tri 2 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c222.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c223.txt")]]]

theorem tree10_part_1_1_0_ok : checkTree (spec [3, 3, 4, 7]) (pathFacts (spec [3, 3, 4, 7]) [] [(.tri 0 5 8, 1), (.tri 5 7 8, 1), (.tri 0 7 8, 0)]) tree10_part_1_1_0 = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
