module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk10Part0
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk10Part1
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk10Part2

/-! # Zero-lower C1 cover, chunk 10

The cover `tree10_0` of `Heilbronn.Nine.C1.ZeroLowerModel` (8880 certificate terms in 48 leaves):
the splits above the parts, checked here by `tree_decide`, which takes each part from the theorem of
its module. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- The sign tree of the case `[3, 3, 4, 7]`. -/
noncomputable def tree10_0 : Cover.Tree Split :=
  .node (.tri 0 5 8) [
    .node (.tri 0 5 7) [
      .node (.tri 1 5 7) [
        .node (.tri 0 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c183.txt"), .node (.tri 3 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c184.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c185.txt")]],
        .node (.tri 1 6 7) [.cert (term_rows% "../../Data/c1_zero_lower/c186.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c187.txt")]],
      .node (.tri 4 5 7) [tree10_part_0_1_0, tree10_part_0_1_1]],
    .node (.tri 5 7 8) [
      .node (.tri 1 5 7) [
        .node (.tri 3 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c203.txt"), .node (.tri 2 5 6) [.cert (term_rows% "../../Data/c1_zero_lower/c204.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c205.txt")]],
        tree10_part_1_0_1],
      .node (.tri 0 7 8) [tree10_part_1_1_0, tree10_part_1_1_1]]]

/-- The cases of chunk 10 with their trees. -/
noncomputable def chunk10 : List (List ℕ × Cover.Tree Split) :=
  [([3, 3, 4, 7], tree10_0)]

theorem chunk10_ok : chunk10.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide using tree10_part_0_1_0_ok, tree10_part_0_1_1_ok, tree10_part_1_0_1_ok, tree10_part_1_1_0_ok, tree10_part_1_1_1_ok

end Heilbronn.Nine.C1ZeroLower.Trees
