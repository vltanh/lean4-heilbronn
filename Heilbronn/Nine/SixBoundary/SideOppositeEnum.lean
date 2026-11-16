module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel

/-! # Side/opposite: the enumeration of the radial words of `Q`

The tree `enumTree` splits on the entries of the radial word one at a time; each
leaf is closed by the word test of the package. `tree_decide 6` checks it in pieces
of at most 6 leaves. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- The enumeration of the radial words, closed by the word test. -/
def enumTree : Cover.Tree ℕ :=
  .node 3 [
    .node 7 [
      .node 4 [
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 47]], .node 5 []]], .node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 []],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 27]], .node 5 []]]],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 17]], .node 5 []]]]],
      .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 46]], .node 5 []]], .node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 []]],
      .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 []]]],
    .node 7 [
      .node 4 [
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 49]], .node 5 [.node 1 [.closed 63], .node 1 [.closed 54]]]], .node 6 [.node 2 [.node 5 [], .node 5 [.node 1 [.closed 77]]]], .node 6 []],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 28]], .node 5 [.node 1 [.closed 37], .node 1 [.closed 31]]]]],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 18]], .node 5 [.node 1 [], .node 1 [.closed 21]]]]]],
      .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 48]], .node 5 [.node 1 [.closed 62], .node 1 [.closed 53]]]], .node 6 [.node 2 [.node 5 [], .node 5 [.node 1 [.closed 76]]]], .node 6 []]],
      .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 [.node 2 [.node 5 [], .node 5 [.node 1 [.closed 75]]]], .node 6 []]]],
    .node 7 [
      .node 4 [
        .node 0 [
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 72], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 68], .node 1 [.closed 59]]], .node 2 [.node 5 [.node 1 [.closed 51]], .node 5 [.node 1 [.closed 65], .node 1 [.closed 56]]]],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 89]]], .node 2 [.node 5 [.node 1 [.closed 84]]], .node 2 [.node 5 [], .node 5 [.node 1 [.closed 80]]]],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 94]]]]],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 43], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 40], .node 1 [.closed 34]]], .node 2 [.node 5 [.node 1 [.closed 29]], .node 5 [.node 1 [.closed 38], .node 1 [.closed 32]]]]],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 24]]], .node 2 [.node 5 [.node 1 [.closed 19]], .node 5 [.node 1 [], .node 1 [.closed 22]]]]]],
      .node 4 [
        .node 0 [
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 71], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 67], .node 1 [.closed 58]]], .node 2 [.node 5 [.node 1 [.closed 50]], .node 5 [.node 1 [.closed 64], .node 1 [.closed 55]]]],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 88]]], .node 2 [.node 5 [.node 1 [.closed 83]]], .node 2 [.node 5 [], .node 5 [.node 1 [.closed 79]]]],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 93]]]]]],
      .node 4 [
        .node 0 [
          .node 6 [.node 2 [.node 5 []], .node 2 [.node 5 []], .node 2 [.node 5 [], .node 5 []]],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 87]]], .node 2 [.node 5 [.node 1 [.closed 82]]], .node 2 [.node 5 [], .node 5 [.node 1 [.closed 78]]]],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 92]]]]]]],
    .node 7 [
      .node 4 [
        .node 0 [
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 74], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 70], .node 1 [.closed 61]]], .node 2 []],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 91]]], .node 2 [.node 5 [.node 1 [.closed 86]]], .node 2 []],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 96]]]]],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 45], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 42], .node 1 [.closed 36]]], .node 2 []]],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 26]]], .node 2 []]]],
      .node 4 [
        .node 0 [
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 73], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 69], .node 1 [.closed 60]]], .node 2 [.node 5 [.node 1 [.closed 52]], .node 5 [.node 1 [.closed 66], .node 1 [.closed 57]]]],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 90]]], .node 2 [.node 5 [.node 1 [.closed 85]]], .node 2 [.node 5 [], .node 5 [.node 1 [.closed 81]]]],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 95]]]]],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 44], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 41], .node 1 [.closed 35]]], .node 2 [.node 5 [.node 1 [.closed 30]], .node 5 [.node 1 [.closed 39], .node 1 [.closed 33]]]]],
        .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 25]]], .node 2 [.node 5 [.node 1 [.closed 20]], .node 5 [.node 1 [], .node 1 [.closed 23]]]]]]],
    .node 7 [
      .node 4 [
        .node 0 [],
        .node 0 [
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 3], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 2], .node 1 [.closed 1]]], .node 2 []],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 16], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 14], .node 1 [.closed 11]]], .node 2 []]],
        .node 0 [
          .node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 0]]], .node 2 []],
          .node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 7]]], .node 2 []]]],
      .node 4 [
        .node 0 [],
        .node 0 [
          .node 6 [.node 2 [], .node 2 [], .node 2 []],
          .node 6 [.node 2 [.node 5 [.node 1 [.closed 15], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 13], .node 1 [.closed 10]]], .node 2 [.node 5 [.node 1 [.closed 8]], .node 5 [.node 1 [.closed 12], .node 1 [.closed 9]]]]],
        .node 0 [
          .node 6 [.node 2 [], .node 2 [], .node 2 []],
          .node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 6]]], .node 2 [.node 5 [.node 1 [.closed 4]], .node 5 [.node 1 [], .node 1 [.closed 5]]]]]]]]

theorem enum_ok : checkTree (pkg.enumSpec 8 words) [] enumTree = true := by
  tree_decide 6

end Heilbronn.Nine.SixBoundarySideOpposite.Model
