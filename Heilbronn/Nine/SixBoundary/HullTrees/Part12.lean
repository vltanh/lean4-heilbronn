module

public import Heilbronn.Nine.SixBoundary.HullModel
public import Heilbronn.Common.DataReader

/-! # Exact-hull cover, part 12

Subtrees of the cover `root` of `Heilbronn.Nine.SixBoundary.HullModel` (869 certificate terms), each
checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryHull.Trees

open Cert Cert.Expr Cover Model

/-- A subtree of the cover (869 certificate terms). -/
noncomputable def part_1_0_2_2_0_0_0_1_1 : Cover.Tree Split :=
  .node (.vertex 7 1) [
    .node (.vertex 7 3) [],
    .node (.vertex 7 3) [
      .node (.vertex 7 4) [
        .node (.vertex 8 5) [
          .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1155.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1156.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1157.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d1158.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d1159.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1160.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d1161.txt")]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1162.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1163.txt")]]]]]]]]]]]]]]],
          .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1164.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1165.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1166.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1167.txt")]]]]]]]]]]]]]]]]]]]]],
    .node (.vertex 7 3) [
      .node (.vertex 7 4) [
        .node (.vertex 8 5) [
          .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1168.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1169.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1170.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1171.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1172.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d1173.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1174.txt")]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d1175.txt")]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1176.txt")]]]]]]]]]]]]],
          .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1177.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1178.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1179.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1180.txt")]]]]]]]]]]]]]]]]]]]]

theorem part_1_0_2_2_0_0_0_1_1_ok : checkTree spec (pathFacts spec [] [(.vertex 6 5, 1), (.vertex 6 2, 0), (.vertex 6 0, 2), (.vertex 6 1, 2), (.vertex 6 3, 0), (.vertex 6 4, 0), (.vertex 7 5, 0), (.vertex 7 2, 1), (.vertex 7 0, 1)]) part_1_0_2_2_0_0_0_1_1 = true := by
  tree_decide 150 4

end Heilbronn.Nine.SixBoundaryHull.Trees
