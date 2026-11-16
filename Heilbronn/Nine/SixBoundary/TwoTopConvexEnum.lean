module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel

/-! # Convex two-top: the enumeration of the radial words of `O`

The tree `enumTree` splits on the entries of the radial word one at a time; each
leaf is closed by the word test of the package. `tree_decide 6` checks it in pieces
of at most 6 leaves. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- The enumeration of the radial words, closed by the word test. -/
def enumTree : Cover.Tree ℕ :=
  .node 7 [
    .node 1 [
      .node 3 [
        .node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 87]], .node 2 [.node 6 [.closed 93]]], .node 0 [.node 2 [.node 6 [.closed 72]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 50]]]]],
        .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 5]], .node 2 [.node 6 [.closed 25]]]]]]],
    .node 1 [
      .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 0]], .node 2 [.node 6 [.closed 10]]], .node 0 [.node 2 [], .node 2 []]], .node 5 [.node 0 [.node 2 [], .node 2 []], .node 0 [.node 2 [], .node 2 []]]]],
      .node 3 [
        .node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 34]]], .node 0 [.node 2 []]], .node 5 [.node 0 [.node 2 []], .node 0 [.node 2 []]]],
        .node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 1]], .node 2 [.node 6 [.closed 15]]], .node 0 [.node 2 [], .node 2 []]], .node 5 [.node 0 [.node 2 [], .node 2 []], .node 0 [.node 2 [], .node 2 []]]]],
      .node 3 [
        .node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 60]]], .node 0 [.node 2 []]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 41]]], .node 0 [.node 2 []]]],
        .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [.node 2 [.node 6 [.closed 2]], .node 2 [.node 6 [.closed 19]]], .node 0 [.node 2 [], .node 2 []]]]],
      .node 3 [
        .node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 81]], .node 2 [.node 6 []]], .node 0 [.node 2 [.node 6 [.closed 67]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 46]]]]],
        .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 3]], .node 2 [.node 6 [.closed 22]]]]]],
      .node 3 [
        .node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 86]], .node 2 [.node 6 [.closed 92]]], .node 0 [.node 2 [.node 6 [.closed 71]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 49]]]]],
        .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 4]], .node 2 [.node 6 [.closed 24]]]]]]],
    .node 1 [
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [], .node 2 [.node 6 [.closed 8], .node 6 [.closed 9]]], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 7]]]],
          .node 5 [.node 0 [.node 2 [], .node 2 []], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 6]]]]]],
      .node 3 [
        .node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 31], .node 6 [.closed 33]]], .node 0 [.node 2 [.node 6 [.closed 29]]]], .node 5 [.node 0 [.node 2 []], .node 0 [.node 2 [.node 6 [.closed 27]]]]],
        .node 4 [
          .node 5 [.node 0 [.node 2 [], .node 2 [.node 6 [.closed 13], .node 6 [.closed 14]]], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 12]]]],
          .node 5 [.node 0 [.node 2 [], .node 2 []], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 11]]]]]],
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [.node 6 [.closed 56], .node 6 [.closed 59]]], .node 0 [.node 2 [.node 6 [.closed 53]]]],
          .node 5 [.node 0 [.node 2 [.node 6 [.closed 38], .node 6 [.closed 40]]], .node 0 [.node 2 [.node 6 [.closed 36]]]]],
        .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [.node 2 [], .node 2 [.node 6 [.closed 17], .node 6 [.closed 18]]], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 16]]]]]],
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [.node 6 [.closed 76], .node 6 [.closed 80]], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [.closed 63], .node 6 [.closed 66]]]],
          .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 43], .node 6 [.closed 45]]]]],
        .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 20], .node 6 [.closed 21]]]]]],
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [.node 6 [], .node 6 [.closed 85]], .node 2 [.node 6 [], .node 6 [.closed 91]]], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 70]]]],
          .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 48]]]]],
        .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [], .node 2 [.node 6 [], .node 6 [.closed 23]]]]]]],
    .node 1 [
      .node 3 [],
      .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 30], .node 6 [.closed 32]]], .node 0 [.node 2 [.node 6 [.closed 28]]]], .node 5 [.node 0 [.node 2 []], .node 0 [.node 2 [.node 6 [.closed 26]]]]]],
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [.node 6 [.closed 55], .node 6 [.closed 58]]], .node 0 [.node 2 [.node 6 [.closed 52]]]],
          .node 5 [.node 0 [.node 2 [.node 6 [.closed 37], .node 6 [.closed 39]]], .node 0 [.node 2 [.node 6 [.closed 35]]]]]],
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [.node 6 [.closed 75], .node 6 [.closed 79]], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [.closed 62], .node 6 [.closed 65]]]],
          .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 42], .node 6 [.closed 44]]]]]],
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [.node 6 [], .node 6 [.closed 84]], .node 2 [.node 6 [], .node 6 [.closed 90]]], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 69]]]],
          .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 47]]]]]]],
    .node 1 [
      .node 3 [],
      .node 3 [.node 4 []],
      .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 []]]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 54], .node 6 [.closed 57]]], .node 0 [.node 2 [.node 6 [.closed 51]]]]]],
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [], .node 6 []]]],
          .node 5 [.node 0 [.node 2 [.node 6 [.closed 74], .node 6 [.closed 78]], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [.closed 61], .node 6 [.closed 64]]]]]],
      .node 3 [
        .node 4 [
          .node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [], .node 6 []]]],
          .node 5 [.node 0 [.node 2 [.node 6 [], .node 6 [.closed 83]], .node 2 [.node 6 [], .node 6 [.closed 89]]], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 68]]]]]]],
    .node 1 [
      .node 3 [],
      .node 3 [.node 4 []],
      .node 3 [.node 4 [.node 5 [], .node 5 []]],
      .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []], .node 2 [.node 6 [], .node 6 []]]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 73], .node 6 [.closed 77]], .node 2 [.node 6 [], .node 6 []]]]]],
      .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []], .node 2 [.node 6 [], .node 6 []]]], .node 5 [.node 0 [.node 2 [.node 6 [], .node 6 [.closed 82]], .node 2 [.node 6 [], .node 6 [.closed 88]]]]]]]]

theorem enum_ok : checkTree (pkg.enumSpec 8 words) [] enumTree = true := by
  tree_decide 6

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
