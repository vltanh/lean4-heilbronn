module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 15

The cell trees of 8 base pairs (2370 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 267, words [8, 31]. -/
noncomputable def tree15_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c273.txt")

theorem tree15_0_ok : checkTree (spec 8 31) [] tree15_0 = true := by
  tree_decide

/-- The cell tree of the base pair 268, words [8, 32]. -/
noncomputable def tree15_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c274.txt")

theorem tree15_1_ok : checkTree (spec 8 32) [] tree15_1 = true := by
  tree_decide

/-- The cell tree of the base pair 269, words [8, 35]. -/
noncomputable def tree15_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c275.txt")

theorem tree15_2_ok : checkTree (spec 8 35) [] tree15_2 = true := by
  tree_decide

/-- The cell tree of the base pair 270, words [8, 36]. -/
noncomputable def tree15_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c276.txt")

theorem tree15_3_ok : checkTree (spec 8 36) [] tree15_3 = true := by
  tree_decide

/-- The cell tree of the base pair 271, words [8, 37]. -/
noncomputable def tree15_4 : Cover.Tree Split :=
  .node (.cut 3 (7 / 8)) [.cert (term_rows% "../../../Data/six_single_top/c277.txt"), .cert (term_rows% "../../../Data/six_single_top/c278.txt")]

theorem tree15_4_ok : checkTree (spec 8 37) [] tree15_4 = true := by
  tree_decide

/-- The cell tree of the base pair 272, words [8, 38]. -/
noncomputable def tree15_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c279.txt")

theorem tree15_5_ok : checkTree (spec 8 38) [] tree15_5 = true := by
  tree_decide

/-- The cell tree of the base pair 273, words [8, 39]. -/
noncomputable def tree15_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c280.txt")

theorem tree15_6_ok : checkTree (spec 8 39) [] tree15_6 = true := by
  tree_decide

/-- The cell tree of the base pair 274, words [8, 40]. -/
noncomputable def tree15_7 : Cover.Tree Split :=
  .node (.tri 5 7 8) [.node (.cut 10 (1 / 2)) [.cert (term_rows% "../../../Data/six_single_top/c281.txt"), .cert (term_rows% "../../../Data/six_single_top/c282.txt")], .cert (term_rows% "../../../Data/six_single_top/c283.txt")]

theorem tree15_7_ok : checkTree (spec 8 40) [] tree15_7 = true := by
  tree_decide

/-- The base pairs of chunk 15 with their trees. -/
noncomputable def chunk15 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((8, 31), tree15_0),
    ((8, 32), tree15_1),
    ((8, 35), tree15_2),
    ((8, 36), tree15_3),
    ((8, 37), tree15_4),
    ((8, 38), tree15_5),
    ((8, 39), tree15_6),
    ((8, 40), tree15_7)]

theorem chunk15_ok :
    chunk15.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk15, List.all_cons, List.all_nil, tree15_0_ok, tree15_1_ok, tree15_2_ok, tree15_3_ok, tree15_4_ok, tree15_5_ok, tree15_6_ok, tree15_7_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
