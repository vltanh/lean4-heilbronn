module

public import Heilbronn.Nine.SixBoundary.TwoSideUpperModel
public import Heilbronn.Common.DataReader

/-! # Two-side-upper cover, part 2

Subtrees of the cover `tree` of `Heilbronn.Nine.SixBoundary.TwoSideUpperModel` (1625 certificate
terms), each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees

open Cover Model

/-- A subtree of the cover (1625 certificate terms). -/
noncomputable def part_1_0 : Cover.Tree Split :=
  .node (.vertex 5) [
    .node (.vertex 0) [
      .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
      .node (.vertex 1) [
        .node (.vertex 3) [],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c13.txt")]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c14.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c22.txt")]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c23.txt")]]]],
      .node (.vertex 1) [
        .node (.vertex 3) [],
        .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c41.txt")]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c43.txt")]]]]],
    .node (.vertex 0) [
      .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
      .node (.vertex 1) [
        .node (.vertex 3) [],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c12.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c21.txt")]]]],
      .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [.node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c38.txt")]]]]]]

theorem part_1_0_ok : checkTree spec (pathFacts spec [] [(.vertex 7, 1), (.vertex 2, 0)]) part_1_0 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees
