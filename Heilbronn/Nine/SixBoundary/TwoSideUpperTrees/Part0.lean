module

public import Heilbronn.Nine.SixBoundary.TwoSideUpperModel
public import Heilbronn.Common.DataReader

/-! # Two-side-upper cover, part 0

Subtrees of the cover `tree` of `Heilbronn.Nine.SixBoundary.TwoSideUpperModel` (2229 certificate
terms), each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees

open Cover Model

/-- A subtree of the cover (2229 certificate terms). -/
noncomputable def part_0_1 : Cover.Tree Split :=
  .node (.vertex 5) [
    .node (.vertex 0) [
      .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c70.txt")]]], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []]]],
      .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []]], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []]]]],
    .node (.vertex 0) [
      .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c09.txt")]]], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []]]],
      .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c32.txt")]]], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []]]],
      .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c58.txt")]]], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []]]]],
    .node (.vertex 0) [
      .node (.vertex 1) [
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c01.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c04.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c07.txt")]]]],
      .node (.vertex 1) [
        .node (.vertex 3) [],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c18.txt")]]],
        .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c27.txt")]]]],
      .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [.node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c49.txt")]]]]]]

theorem part_0_1_ok : checkTree spec (pathFacts spec [] [(.vertex 7, 0), (.vertex 2, 1)]) part_0_1 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees
