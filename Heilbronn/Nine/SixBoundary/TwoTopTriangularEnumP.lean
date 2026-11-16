module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel

/-! # Triangular two-top: the enumeration of the words of `P`

The tree `enumTree` splits on the entries of the radial word one at a time; each
leaf is closed by the word test of the package. `tree_decide 6` checks it in pieces
of at most 6 leaves. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model.EnumP

open Cert Cert.Expr Cover SixRadial

/-- The enumeration of the radial words, closed by the word test. -/
def enumTree : Cover.Tree ℕ :=
  .node 3 [
    .node 4 [
      .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 3]]]]],
      .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 4]]]]],
      .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 2]]]]],
      .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 1]]]]],
      .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 0]]]]]]]

theorem enum_ok : checkTree (pkgP.enumSpec 7 wordsP) [] enumTree = true := by
  tree_decide 6

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model.EnumP
