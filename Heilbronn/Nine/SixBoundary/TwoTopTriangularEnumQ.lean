module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel

/-! # Triangular two-top: the enumeration of the words of `Q`

The tree `enumTree` splits on the entries of the radial word one at a time; each
leaf is closed by the word test of the package. `tree_decide 6` checks it in pieces
of at most 6 leaves. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model.EnumQ

open Cert Cert.Expr Cover SixRadial

/-- The enumeration of the radial words, closed by the word test. -/
def enumTree : Cover.Tree ℕ :=
  .node 4 [
    .node 2 [
      .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 35], .node 5 []]], .node 3 [.node 1 [.node 5 [], .node 5 []]]]],
      .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 38], .node 5 [.closed 42]]], .node 3 [.node 1 [.node 5 [], .node 5 [.closed 47]]]]],
      .node 6 [],
      .node 6 []],
    .node 2 [
      .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 37], .node 5 []]], .node 3 [.node 1 [.node 5 [], .node 5 []]]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 36], .node 5 []]], .node 3 [.node 1 [.node 5 [], .node 5 []]]]],
      .node 6 [
        .node 0 [.node 3 [.node 1 [.node 5 [.closed 40], .node 5 [.closed 44]]], .node 3 [.node 1 [.node 5 [], .node 5 [.closed 49]]]],
        .node 0 [.node 3 [.node 1 [.node 5 [.closed 39], .node 5 [.closed 43]]], .node 3 [.node 1 [.node 5 [], .node 5 [.closed 48]]]]],
      .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 46]]], .node 3 [.node 1 [.node 5 [.closed 51]]]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 41], .node 5 [.closed 45]]], .node 3 [.node 1 [.node 5 [], .node 5 [.closed 50]]]]],
      .node 6 [.node 0 [], .node 0 []]],
    .node 2 [
      .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 13], .node 5 []], .node 1 []], .node 3 [.node 1 [.node 5 [.closed 27], .node 5 []]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 26], .node 5 []]]]],
      .node 6 [
        .node 0 [.node 3 [.node 1 [.node 5 [.closed 14], .node 5 [.closed 16]], .node 1 []], .node 3 [.node 1 [.node 5 [.closed 29], .node 5 [.closed 32]]]],
        .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 28], .node 5 [.closed 31]]]]],
      .node 6 [
        .node 0 [.node 3 [.node 1 [.node 5 [.closed 18]], .node 1 []], .node 3 [.node 1 [.node 5 [.closed 34]]]],
        .node 0 [.node 3 [.node 1 [.node 5 [.closed 15], .node 5 [.closed 17]], .node 1 []], .node 3 [.node 1 [.node 5 [.closed 30], .node 5 [.closed 33]]]]],
      .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 4]], .node 1 []]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 2], .node 5 [.closed 3]], .node 1 []]]]],
    .node 2 [
      .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 10]], .node 1 [.node 5 [.closed 6]]], .node 3 [.node 1 [.node 5 [.closed 22]]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 21]]]]],
      .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 11]], .node 1 [.node 5 [.closed 7]]], .node 3 [.node 1 [.node 5 [.closed 24]]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 23]]]]],
      .node 6 [.node 0 [.node 3 [.node 1 [], .node 1 []], .node 3 [.node 1 []]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 12]], .node 1 [.node 5 [.closed 8]]], .node 3 [.node 1 [.node 5 [.closed 25]]]]],
      .node 6 [.node 0 [.node 3 [.node 1 [], .node 1 []]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 1]], .node 1 [.node 5 [.closed 0]]]]]],
    .node 2 [.node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 9]], .node 1 [.node 5 [.closed 5]]], .node 3 [.node 1 [.node 5 [.closed 20]]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 19]]]]]]]

theorem enum_ok : checkTree (pkgQ.enumSpec 8 wordsQ) [] enumTree = true := by
  tree_decide 6

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model.EnumQ
