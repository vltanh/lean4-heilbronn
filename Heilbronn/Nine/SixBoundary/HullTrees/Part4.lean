module

public import Heilbronn.Nine.SixBoundary.HullModel
public import Heilbronn.Common.DataReader

/-! # Exact-hull cover, part 4

Subtrees of the cover `root` of `Heilbronn.Nine.SixBoundary.HullModel` (2820 certificate terms),
each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryHull.Trees

open Cert Cert.Expr Cover Model

/-- A subtree of the cover (2820 certificate terms). -/
noncomputable def part_0_0_2_0_0_0_0_1 : Cover.Tree Split :=
  .node (.vertex 7 0) [
    .node (.vertex 7 1) [
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0307.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0308.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0309.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0310.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0311.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0312.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0313.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0314.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0315.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0316.txt")]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0317.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0318.txt")]]]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0319.txt")]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0320.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0321.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0322.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0323.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0324.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0325.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0326.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0327.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0328.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0329.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0330.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0331.txt")]]]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0332.txt")]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0333.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0334.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0335.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0336.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0337.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0338.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0339.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0340.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0341.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0342.txt")]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0343.txt")]]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0344.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0345.txt")]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0346.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0347.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0348.txt")]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0349.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0350.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0351.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0352.txt")]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0353.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0354.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0355.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0356.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0357.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0358.txt")]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0359.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0360.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0361.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0362.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0363.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0364.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0365.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0366.txt")]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0367.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0368.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0369.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0370.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0371.txt")]]]]]]]]]]]]]]]]]]]]]],
    .node (.vertex 7 1) [
      .node (.vertex 7 3) [],
      .node (.vertex 7 3) [.node (.vertex 7 4) []],
      .node (.vertex 7 3) [
        .node (.vertex 7 4) [
          .node (.vertex 8 5) [
            .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0372.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0373.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0374.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0375.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0376.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0377.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0378.txt")]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0379.txt")]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [.node (.vertex 8 4) [.node (.pair 1 6 7) [.node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0380.txt")]]]]]]]]]]],
            .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0381.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0382.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0383.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0384.txt")]]]]]]]]]]]]]]]]]]]

theorem part_0_0_2_0_0_0_0_1_ok : checkTree spec (pathFacts spec [] [(.vertex 6 5, 0), (.vertex 6 2, 0), (.vertex 6 0, 2), (.vertex 6 1, 0), (.vertex 6 3, 0), (.vertex 6 4, 0), (.vertex 7 5, 0), (.vertex 7 2, 1)]) part_0_0_2_0_0_0_0_1 = true := by
  tree_decide 150 4

end Heilbronn.Nine.SixBoundaryHull.Trees
