module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 0

The cell trees of 14 base pairs (2388 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 0, words [0, 9]. -/
noncomputable def tree0_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c000.txt")

theorem tree0_0_ok : checkTree (spec 0 9) [] tree0_0 = true := by
  tree_decide

/-- The cell tree of the base pair 1, words [0, 10]. -/
noncomputable def tree0_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c001.txt")

theorem tree0_1_ok : checkTree (spec 0 10) [] tree0_1 = true := by
  tree_decide

/-- The cell tree of the base pair 2, words [0, 11]. -/
noncomputable def tree0_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c002.txt")

theorem tree0_2_ok : checkTree (spec 0 11) [] tree0_2 = true := by
  tree_decide

/-- The cell tree of the base pair 3, words [0, 13]. -/
noncomputable def tree0_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c003.txt")

theorem tree0_3_ok : checkTree (spec 0 13) [] tree0_3 = true := by
  tree_decide

/-- The cell tree of the base pair 4, words [0, 14]. -/
noncomputable def tree0_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c004.txt")

theorem tree0_4_ok : checkTree (spec 0 14) [] tree0_4 = true := by
  tree_decide

/-- The cell tree of the base pair 5, words [0, 16]. -/
noncomputable def tree0_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c005.txt")

theorem tree0_5_ok : checkTree (spec 0 16) [] tree0_5 = true := by
  tree_decide

/-- The cell tree of the base pair 6, words [0, 19]. -/
noncomputable def tree0_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c006.txt")

theorem tree0_6_ok : checkTree (spec 0 19) [] tree0_6 = true := by
  tree_decide

/-- The cell tree of the base pair 7, words [0, 20]. -/
noncomputable def tree0_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c007.txt")

theorem tree0_7_ok : checkTree (spec 0 20) [] tree0_7 = true := by
  tree_decide

/-- The cell tree of the base pair 8, words [0, 21]. -/
noncomputable def tree0_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c008.txt")

theorem tree0_8_ok : checkTree (spec 0 21) [] tree0_8 = true := by
  tree_decide

/-- The cell tree of the base pair 9, words [0, 22]. -/
noncomputable def tree0_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c009.txt")

theorem tree0_9_ok : checkTree (spec 0 22) [] tree0_9 = true := by
  tree_decide

/-- The cell tree of the base pair 10, words [0, 23]. -/
noncomputable def tree0_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c010.txt")

theorem tree0_10_ok : checkTree (spec 0 23) [] tree0_10 = true := by
  tree_decide

/-- The cell tree of the base pair 11, words [0, 24]. -/
noncomputable def tree0_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c011.txt")

theorem tree0_11_ok : checkTree (spec 0 24) [] tree0_11 = true := by
  tree_decide

/-- The cell tree of the base pair 12, words [0, 26]. -/
noncomputable def tree0_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c012.txt")

theorem tree0_12_ok : checkTree (spec 0 26) [] tree0_12 = true := by
  tree_decide

/-- The cell tree of the base pair 13, words [0, 27]. -/
noncomputable def tree0_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c013.txt")

theorem tree0_13_ok : checkTree (spec 0 27) [] tree0_13 = true := by
  tree_decide

/-- The base pairs of chunk 0 with their trees. -/
noncomputable def chunk0 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((0, 9), tree0_0),
    ((0, 10), tree0_1),
    ((0, 11), tree0_2),
    ((0, 13), tree0_3),
    ((0, 14), tree0_4),
    ((0, 16), tree0_5),
    ((0, 19), tree0_6),
    ((0, 20), tree0_7),
    ((0, 21), tree0_8),
    ((0, 22), tree0_9),
    ((0, 23), tree0_10),
    ((0, 24), tree0_11),
    ((0, 26), tree0_12),
    ((0, 27), tree0_13)]

theorem chunk0_ok :
    chunk0.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk0, List.all_cons, List.all_nil, tree0_0_ok, tree0_1_ok, tree0_2_ok, tree0_3_ok, tree0_4_ok, tree0_5_ok, tree0_6_ok, tree0_7_ok, tree0_8_ok, tree0_9_ok, tree0_10_ok, tree0_11_ok, tree0_12_ok, tree0_13_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
