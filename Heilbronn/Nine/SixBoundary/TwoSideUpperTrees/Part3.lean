module

public import Heilbronn.Nine.SixBoundary.TwoSideUpperModel
public import Heilbronn.Common.DataReader

/-! # Two-side-upper cover, part 3

Subtrees of the cover `tree` of `Heilbronn.Nine.SixBoundary.TwoSideUpperModel` (2383 certificate
terms), each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees

open Cover Model

/-- A subtree of the cover (2383 certificate terms). -/
noncomputable def part_1_1 : Cover.Tree Split :=
  .node (.vertex 5) [
    .node (.vertex 0) [
      .node (.vertex 1) [
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c67.txt")]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c69.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) []]]],
      .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) []]], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) []]]]],
    .node (.vertex 0) [
      .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) []],
      .node (.vertex 1) [
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c30.txt")]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c31.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) []]]],
      .node (.vertex 1) [
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c55.txt")]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c57.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) []]]]],
    .node (.vertex 0) [
      .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
      .node (.vertex 1) [
        .node (.vertex 3) [],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c16.txt")]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c17.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c25.txt")]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c26.txt")]]]],
      .node (.vertex 1) [
        .node (.vertex 3) [],
        .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.closed 1]], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c48.txt")]]]]]]

theorem part_1_1_ok : checkTree spec (pathFacts spec [] [(.vertex 7, 1), (.vertex 2, 1)]) part_1_1 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees
