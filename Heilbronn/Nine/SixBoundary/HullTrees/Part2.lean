module

public import Heilbronn.Nine.SixBoundary.HullModel
public import Heilbronn.Common.DataReader

/-! # Exact-hull cover, part 2

Subtrees of the cover `root` of `Heilbronn.Nine.SixBoundary.HullModel` (3290 certificate terms),
each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryHull.Trees

open Cert Cert.Expr Cover Model

/-- A subtree of the cover (1091 certificate terms). -/
noncomputable def part_0_0_1_0_0_0_0_0 : Cover.Tree Split :=
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
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0135.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0136.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0137.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0138.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0139.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0140.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0141.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0142.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0143.txt")]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0144.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0145.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0146.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0147.txt")]]]]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0148.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0149.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0150.txt")]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0151.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0152.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0153.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0154.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0155.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0156.txt")]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0157.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0158.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0159.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0160.txt")]]]]]]]]]]]]]]]]]]]]]]]]]],
      .node (.vertex 7 3) [.node (.vertex 7 4) []]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0161.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0162.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0163.txt")]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0164.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0165.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0166.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0167.txt")]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0168.txt")]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0169.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0170.txt")]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0171.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0172.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0173.txt")]]]]]]]]]]]]]]]]]]]]]]]],
      .node (.vertex 7 3) [.node (.vertex 7 4) []]],
    .node (.vertex 7 1) [.node (.vertex 7 3) [], .node (.vertex 7 3) [.node (.vertex 7 4) []], .node (.vertex 7 3) [.node (.vertex 7 4) []]]]

theorem part_0_0_1_0_0_0_0_0_ok : checkTree spec (pathFacts spec [] [(.vertex 6 5, 0), (.vertex 6 2, 0), (.vertex 6 0, 1), (.vertex 6 1, 0), (.vertex 6 3, 0), (.vertex 6 4, 0), (.vertex 7 5, 0), (.vertex 7 2, 0)]) part_0_0_1_0_0_0_0_0 = true := by
  tree_decide 150 4

/-- A subtree of the cover (2199 certificate terms). -/
noncomputable def part_0_0_1_0_0_0_0_1 : Cover.Tree Split :=
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0174.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0175.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0176.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0177.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0178.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0179.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0180.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0181.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0182.txt")]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0183.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0184.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0185.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0186.txt")]]]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0187.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0188.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0189.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0190.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0191.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0192.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0193.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0194.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0195.txt")]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0196.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0197.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0198.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0199.txt")]]]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0200.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0201.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0202.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0203.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0204.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 3 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0205.txt")]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0206.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 3 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0207.txt")]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0208.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0209.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0210.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0211.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0212.txt")]]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0213.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0214.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0215.txt")]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0216.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0217.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0218.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0219.txt")]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0220.txt")]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0221.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0222.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0223.txt")]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0224.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0225.txt")]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0226.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0227.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0228.txt")]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0229.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0230.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0231.txt")]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0232.txt")]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) [.node (.pair 1 6 7) [.node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0233.txt")]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0234.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0235.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0236.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0237.txt")]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0238.txt")]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0239.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0240.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0241.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0242.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0243.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0244.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0245.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0246.txt")]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0247.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0248.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0249.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0250.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0251.txt")]]]]]]]]]]]]]]]]]]]]]]]

theorem part_0_0_1_0_0_0_0_1_ok : checkTree spec (pathFacts spec [] [(.vertex 6 5, 0), (.vertex 6 2, 0), (.vertex 6 0, 1), (.vertex 6 1, 0), (.vertex 6 3, 0), (.vertex 6 4, 0), (.vertex 7 5, 0), (.vertex 7 2, 1)]) part_0_0_1_0_0_0_0_1 = true := by
  tree_decide 150 4

end Heilbronn.Nine.SixBoundaryHull.Trees
