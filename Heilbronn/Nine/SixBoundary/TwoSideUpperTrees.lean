module

public import Heilbronn.Nine.SixBoundary.TwoSideUpperModel
public import Heilbronn.Common.DataReader
public import Heilbronn.Nine.SixBoundary.TwoSideUpperTrees.Part0
public import Heilbronn.Nine.SixBoundary.TwoSideUpperTrees.Part1
public import Heilbronn.Nine.SixBoundary.TwoSideUpperTrees.Part2
public import Heilbronn.Nine.SixBoundary.TwoSideUpperTrees.Part3
public import Heilbronn.Nine.SixBoundary.TwoSideUpperTrees.Part4
public import Heilbronn.Nine.SixBoundary.TwoSideUpperTrees.Part5

/-! # Two-side-upper cover

The cover `tree` of `Heilbronn.Nine.SixBoundary.TwoSideUpperModel` (14307 certificate terms in 82
leaves): the splits above the parts, checked here by `tree_decide`, which takes each part from the
theorem of its module. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees

open Cover Model

/-- The word cover of `Q`. -/
noncomputable def tree : Cover.Tree Split :=
  .node (.vertex 7) [
    .node (.vertex 2) [
      .node (.vertex 5) [
        .node (.vertex 0) [
          .node (.vertex 1) [
            .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c00.txt")]]],
            .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c03.txt")]]],
            .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c06.txt")]]]],
          .node (.vertex 1) [
            .node (.vertex 3) [],
            .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c15.txt")]]],
            .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c24.txt")]]]],
          .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [.node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c44.txt")]]]]],
        .node (.vertex 0) [
          .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
          .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
          .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []]]],
      part_0_1,
      .node (.vertex 5) [
        .node (.vertex 0) [
          .node (.vertex 1) [
            .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c73.txt")]]],
            .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c76.txt")]]]],
          .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) []]], .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../Data/six_two_side_upper/c79.txt")]]]]],
        part_0_2_1,
        part_0_2_2]],
    .node (.vertex 2) [part_1_0, part_1_1, part_1_2],
    part_2]

theorem tree_ok : checkTree spec [] tree = true := by
  tree_decide using part_0_1_ok, part_0_2_1_ok, part_0_2_2_ok, part_1_0_ok, part_1_1_ok, part_1_2_ok, part_2_ok

end Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees
