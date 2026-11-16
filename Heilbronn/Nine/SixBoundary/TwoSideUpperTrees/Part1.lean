module

public import Heilbronn.Nine.SixBoundary.TwoSideUpperModel
public import Heilbronn.Common.DataReader

/-! # Two-side-upper cover, part 1

Subtrees of the cover `tree` of `Heilbronn.Nine.SixBoundary.TwoSideUpperModel` (2502 certificate
terms), each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees

open Cover Model

/-- A subtree of the cover (1301 certificate terms). -/
noncomputable def part_0_2_1 : Cover.Tree Split :=
  .node (.vertex 0) [
    .node (.vertex 1) [
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c10.txt")]]],
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c11.txt")]]]],
    .node (.vertex 1) [
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c34.txt")]]],
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c36.txt")]]]],
    .node (.vertex 1) [
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c61.txt")]]],
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c64.txt")]]]]]

theorem part_0_2_1_ok : checkTree spec (pathFacts spec [] [(.vertex 7, 0), (.vertex 2, 2), (.vertex 5, 1)]) part_0_2_1 = true := by
  tree_decide

/-- A subtree of the cover (1201 certificate terms). -/
noncomputable def part_0_2_2 : Cover.Tree Split :=
  .node (.vertex 0) [
    .node (.vertex 1) [
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c02.txt")]]],
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c05.txt")]]],
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c08.txt")]]]],
    .node (.vertex 1) [
      .node (.vertex 3) [],
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c20.txt")]]],
      .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c29.txt")]]]],
    .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [.node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c52.txt")]]]]]

theorem part_0_2_2_ok : checkTree spec (pathFacts spec [] [(.vertex 7, 0), (.vertex 2, 2), (.vertex 5, 2)]) part_0_2_2 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees
