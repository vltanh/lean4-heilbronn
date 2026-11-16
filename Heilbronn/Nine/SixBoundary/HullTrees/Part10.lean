module

public import Heilbronn.Nine.SixBoundary.HullModel
public import Heilbronn.Common.DataReader

/-! # Exact-hull cover, part 10

Subtrees of the cover `root` of `Heilbronn.Nine.SixBoundary.HullModel` (2555 certificate terms),
each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryHull.Trees

open Cert Cert.Expr Cover Model

/-- A subtree of the cover (2555 certificate terms). -/
noncomputable def part_1_0_1_2_0_0_0_1 : Cover.Tree Split :=
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0980.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0981.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0982.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0983.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0984.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0985.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0986.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0987.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0988.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0989.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0990.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0991.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [
            .node (.pair 5 6 8) [
            .node (.pair 0 7 8) [
            .node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.node (.pair 2 7 8) [.cert (term_rows% "../../Data/six_hull/d0992.txt"), .cert (term_rows% "../../Data/six_hull/d0993.txt")]]]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0994.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0995.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0996.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0997.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0998.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0999.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d1000.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1001.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1002.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1003.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1004.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1005.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [
            .node (.pair 5 6 8) [
            .node (.pair 0 7 8) [
            .node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.node (.pair 2 7 8) [.cert (term_rows% "../../Data/six_hull/d1006.txt"), .cert (term_rows% "../../Data/six_hull/d1007.txt")]]]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1008.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1009.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1010.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1011.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1012.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [.node (.pair 2 6 7) [.node (.pair 3 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d1013.txt")]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1014.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [.node (.pair 2 6 7) [.node (.pair 3 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d1015.txt")]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1016.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1017.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1018.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1019.txt")]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1020.txt")]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1021.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1022.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1023.txt")]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d1024.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d1025.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1026.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d1027.txt")]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1028.txt")]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1029.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1030.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1031.txt")]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1032.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1033.txt")]]]]]]]]]]]]]]]]]]]]]],
      .node (.vertex 7 3) [
        .node (.vertex 7 4) [
          .node (.vertex 8 5) [
            .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1034.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1035.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1036.txt")]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1037.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1038.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d1039.txt")]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1040.txt")]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) [.node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d1041.txt")]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1042.txt")]]]]]]]]]]]]],
            .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1043.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1044.txt")]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [.node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1045.txt")]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1046.txt")]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1047.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1048.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1049.txt")]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1050.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1051.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1052.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1053.txt")]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d1054.txt")]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d1055.txt")]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1056.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1057.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1058.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d1059.txt")]]]]]]]]]]]]]]]]]]]]]

theorem part_1_0_1_2_0_0_0_1_ok : checkTree spec (pathFacts spec [] [(.vertex 6 5, 1), (.vertex 6 2, 0), (.vertex 6 0, 1), (.vertex 6 1, 2), (.vertex 6 3, 0), (.vertex 6 4, 0), (.vertex 7 5, 0), (.vertex 7 2, 1)]) part_1_0_1_2_0_0_0_1 = true := by
  tree_decide 150 4

end Heilbronn.Nine.SixBoundaryHull.Trees
