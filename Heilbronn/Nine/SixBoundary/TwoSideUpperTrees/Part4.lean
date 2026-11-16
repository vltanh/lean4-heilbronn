module

public import Heilbronn.Nine.SixBoundary.TwoSideUpperModel
public import Heilbronn.Common.DataReader

/-! # Two-side-upper cover, part 4

Subtrees of the cover `tree` of `Heilbronn.Nine.SixBoundary.TwoSideUpperModel` (1976 certificate
terms), each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees

open Cover Model

/-- A subtree of the cover (1976 certificate terms). -/
noncomputable def part_1_2 : Cover.Tree Split :=
  .node (.vertex 5) [
    .node (.vertex 0) [
      .node (.vertex 1) [
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c72.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c75.txt")]]]],
      .node (.vertex 1) [
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) []]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c78.txt")]]]]],
    .node (.vertex 0) [
      .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) []],
      .node (.vertex 1) [
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c33.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c35.txt")]]]],
      .node (.vertex 1) [
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c60.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c63.txt")]]]]],
    .node (.vertex 0) [
      .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
      .node (.vertex 1) [
        .node (.vertex 3) [],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c19.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c28.txt")]]]],
      .node (.vertex 1) [
        .node (.vertex 3) [],
        .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c51.txt")]]]]]]

theorem part_1_2_ok : checkTree spec (pathFacts spec [] [(.vertex 7, 1), (.vertex 2, 2)]) part_1_2 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees
