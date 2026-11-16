module

public import Heilbronn.Nine.SixBoundary.HullModel
public import Heilbronn.Common.DataReader

/-! # Exact-hull cover, part 0

Subtrees of the cover `root` of `Heilbronn.Nine.SixBoundary.HullModel` (1098 certificate terms),
each checked by `tree_decide` from the facts known below its path of splits. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryHull.Trees

open Cert Cert.Expr Cover Model

/-- A subtree of the cover (1098 certificate terms). -/
noncomputable def part_0_0_0_0_0_0_0_0 : Cover.Tree Split :=
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
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0001.txt")]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0002.txt")]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0003.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [.node (.vertex 8 4) []], .node (.vertex 8 3) [.node (.vertex 8 4) []]]],
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0004.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0005.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0006.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0007.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0008.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0009.txt")]]]]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 2) [
            .node (.vertex 8 0) [
            .node (.vertex 8 1) [.node (.vertex 8 3) [], .node (.vertex 8 3) [], .node (.vertex 8 3) []],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0010.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0011.txt")]]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0012.txt")]]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [.node (.vertex 8 4) []],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0013.txt")]]]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0014.txt")]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [.node (.pair 2 6 7) [.node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0015.txt")]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0016.txt")]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0017.txt")]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0018.txt")]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0019.txt")]]]]]]]]]]]]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0020.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0021.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0022.txt")]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0023.txt")]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0024.txt")]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0025.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0026.txt")]]]]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0027.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 3 7 8) [.cert (term_rows% "../../Data/six_hull/d0028.txt")]]]]]]]]]]]]]],
            .node (.vertex 8 3) [.node (.vertex 8 4) []]],
            .node (.vertex 8 1) [
            .node (.vertex 8 3) [],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [.node (.pair 5 6 7) [.node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.cert (term_rows% "../../Data/six_hull/d0029.txt")]]]]]]]]]]]]]],
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
            .node (.pair 1 6 8) [
            .node (.pair 2 6 8) [
            .node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0030.txt")]]]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0031.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0032.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0033.txt")]]]]]]]]]]]]]]]],
            .node (.vertex 8 3) [
            .node (.vertex 8 4) [
            .node (.pair 0 6 7) [
            .node (.pair 1 6 7) [
            .node (.pair 2 6 7) [
            .node (.pair 3 6 7) [
            .node (.pair 4 6 7) [
            .node (.pair 5 6 7) [
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0034.txt")]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 4 7 8) [.cert (term_rows% "../../Data/six_hull/d0035.txt")]]]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 0 6 8) [.node (.pair 1 6 8) [.node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 3 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0036.txt")]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0037.txt")]]]]]]]]]]]]]]]]]],
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
            .node (.pair 2 6 8) [.node (.pair 3 6 8) [.node (.pair 5 6 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0038.txt")]]]]]]]]]]]]]]]]]]],
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
            .node (.pair 4 6 8) [.node (.pair 5 6 8) [.node (.pair 0 7 8) [.node (.pair 1 7 8) [.node (.pair 2 7 8) [.node (.pair 3 7 8) [.node (.pair 4 7 8) [.node (.pair 5 7 8) [.cert (term_rows% "../../Data/six_hull/d0039.txt")]]]]]]]]]]]]]]]]]]]]]]]]]],
      .node (.vertex 7 3) [.node (.vertex 7 4) []]],
    .node (.vertex 7 1) [.node (.vertex 7 3) [], .node (.vertex 7 3) [.node (.vertex 7 4) []], .node (.vertex 7 3) [.node (.vertex 7 4) []]]]

theorem part_0_0_0_0_0_0_0_0_ok : checkTree spec (pathFacts spec [] [(.vertex 6 5, 0), (.vertex 6 2, 0), (.vertex 6 0, 0), (.vertex 6 1, 0), (.vertex 6 3, 0), (.vertex 6 4, 0), (.vertex 7 5, 0), (.vertex 7 2, 0)]) part_0_0_0_0_0_0_0_0 = true := by
  tree_decide 150 4

end Heilbronn.Nine.SixBoundaryHull.Trees
