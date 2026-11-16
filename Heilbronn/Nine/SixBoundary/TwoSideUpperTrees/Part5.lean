module

public import Heilbronn.Nine.SixBoundary.TwoSideUpperModel
public import Heilbronn.Common.DataReader

/-! # Two-side-upper cover, part 5

Subtrees of the cover `tree` of `Heilbronn.Nine.SixBoundary.TwoSideUpperModel` (2207 certificate
terms), each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees

open Cover Model

/-- A subtree of the cover (2207 certificate terms). -/
noncomputable def part_2 : Cover.Tree Split :=
  .node (.vertex 2) [
    .node (.vertex 5) [
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []]],
        .node (.vertex 1) [
          .node (.vertex 3) [],
          .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []],
          .node (.vertex 3) [
            .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c39.txt")], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c40.txt")]],
            .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c42.txt")]]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [.node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) []]],
        .node (.vertex 1) [
          .node (.vertex 3) [],
          .node (.vertex 3) [.node (.vertex 4) []],
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c39.txt")], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c37.txt")]]]]]],
    .node (.vertex 5) [
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 3) [
            .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c65.txt")], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c66.txt")]],
            .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c68.txt")]]],
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []]]],
        .node (.vertex 1) [
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []]],
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) []],
        .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []]],
        .node (.vertex 1) [
          .node (.vertex 3) [
            .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c53.txt")], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c54.txt")]],
            .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c56.txt")]]],
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []]],
        .node (.vertex 1) [
          .node (.vertex 3) [],
          .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []],
          .node (.vertex 3) [
            .node (.vertex 4) [.node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c45.txt")], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c46.txt")]],
            .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c47.txt")]]]]]],
    .node (.vertex 5) [
      .node (.vertex 0) [
        .node (.vertex 1) [
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c71.txt")]]],
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c74.txt")]]]],
        .node (.vertex 1) [
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []]],
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c77.txt")]]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) []],
        .node (.vertex 1) [.node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []]],
        .node (.vertex 1) [
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c59.txt")]]],
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c62.txt")]]]]],
      .node (.vertex 0) [
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [], .node (.vertex 3) []],
        .node (.vertex 1) [.node (.vertex 3) [], .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []], .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []]],
        .node (.vertex 1) [
          .node (.vertex 3) [],
          .node (.vertex 3) [.node (.vertex 4) [], .node (.vertex 4) []],
          .node (.vertex 3) [.node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) []], .node (.vertex 4) [.node (.vertex 6) [], .node (.vertex 6) [.cert (term_rows% "../../Data/six_two_side_upper/c50.txt")]]]]]]]

theorem part_2_ok : checkTree spec (pathFacts spec [] [(.vertex 7, 2)]) part_2 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoSideUpper.Trees
