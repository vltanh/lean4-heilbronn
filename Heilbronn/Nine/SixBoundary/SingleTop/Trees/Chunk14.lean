module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 14

The cell trees of 8 base pairs (2451 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 259, words [8, 21]. -/
noncomputable def tree14_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c261.txt")

theorem tree14_0_ok : checkTree (spec 8 21) [] tree14_0 = true := by
  tree_decide

/-- The cell tree of the base pair 260, words [8, 22]. -/
noncomputable def tree14_1 : Cover.Tree Split :=
  .node (.tri 4 7 8) [.cert (term_rows% "../../../Data/six_single_top/c262.txt"), .cert (term_rows% "../../../Data/six_single_top/c263.txt")]

theorem tree14_1_ok : checkTree (spec 8 22) [] tree14_1 = true := by
  tree_decide

/-- The cell tree of the base pair 261, words [8, 23]. -/
noncomputable def tree14_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c264.txt")

theorem tree14_2_ok : checkTree (spec 8 23) [] tree14_2 = true := by
  tree_decide

/-- The cell tree of the base pair 262, words [8, 24]. -/
noncomputable def tree14_3 : Cover.Tree Split :=
  .node (.tri 4 7 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../Data/six_single_top/c265.txt"), .cert (term_rows% "../../../Data/six_single_top/c267.txt")], .node (.tri 5 7 8) [.cert (term_rows% "../../../Data/six_single_top/c266.txt"), .cert (term_rows% "../../../Data/six_single_top/c268.txt")]]

theorem tree14_3_ok : checkTree (spec 8 24) [] tree14_3 = true := by
  tree_decide

/-- The cell tree of the base pair 263, words [8, 26]. -/
noncomputable def tree14_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c269.txt")

theorem tree14_4_ok : checkTree (spec 8 26) [] tree14_4 = true := by
  tree_decide

/-- The cell tree of the base pair 264, words [8, 27]. -/
noncomputable def tree14_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c270.txt")

theorem tree14_5_ok : checkTree (spec 8 27) [] tree14_5 = true := by
  tree_decide

/-- The cell tree of the base pair 265, words [8, 28]. -/
noncomputable def tree14_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c271.txt")

theorem tree14_6_ok : checkTree (spec 8 28) [] tree14_6 = true := by
  tree_decide

/-- The cell tree of the base pair 266, words [8, 29]. -/
noncomputable def tree14_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c272.txt")

theorem tree14_7_ok : checkTree (spec 8 29) [] tree14_7 = true := by
  tree_decide

/-- The base pairs of chunk 14 with their trees. -/
noncomputable def chunk14 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((8, 21), tree14_0),
    ((8, 22), tree14_1),
    ((8, 23), tree14_2),
    ((8, 24), tree14_3),
    ((8, 26), tree14_4),
    ((8, 27), tree14_5),
    ((8, 28), tree14_6),
    ((8, 29), tree14_7)]

theorem chunk14_ok :
    chunk14.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk14, List.all_cons, List.all_nil, tree14_0_ok, tree14_1_ok, tree14_2_ok, tree14_3_ok, tree14_4_ok, tree14_5_ok, tree14_6_ok, tree14_7_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
