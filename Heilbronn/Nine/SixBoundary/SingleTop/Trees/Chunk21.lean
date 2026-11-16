module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 21

The cell trees of 17 base pairs (2404 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 383, words [12, 29]. -/
noncomputable def tree21_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c392.txt")

theorem tree21_0_ok : checkTree (spec 12 29) [] tree21_0 = true := by
  tree_decide

/-- The cell tree of the base pair 384, words [12, 31]. -/
noncomputable def tree21_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c393.txt")

theorem tree21_1_ok : checkTree (spec 12 31) [] tree21_1 = true := by
  tree_decide

/-- The cell tree of the base pair 385, words [12, 32]. -/
noncomputable def tree21_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c394.txt")

theorem tree21_2_ok : checkTree (spec 12 32) [] tree21_2 = true := by
  tree_decide

/-- The cell tree of the base pair 386, words [12, 35]. -/
noncomputable def tree21_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c395.txt")

theorem tree21_3_ok : checkTree (spec 12 35) [] tree21_3 = true := by
  tree_decide

/-- The cell tree of the base pair 387, words [12, 36]. -/
noncomputable def tree21_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c396.txt")

theorem tree21_4_ok : checkTree (spec 12 36) [] tree21_4 = true := by
  tree_decide

/-- The cell tree of the base pair 388, words [12, 37]. -/
noncomputable def tree21_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c397.txt")

theorem tree21_5_ok : checkTree (spec 12 37) [] tree21_5 = true := by
  tree_decide

/-- The cell tree of the base pair 389, words [12, 38]. -/
noncomputable def tree21_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c398.txt")

theorem tree21_6_ok : checkTree (spec 12 38) [] tree21_6 = true := by
  tree_decide

/-- The cell tree of the base pair 390, words [12, 39]. -/
noncomputable def tree21_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c399.txt")

theorem tree21_7_ok : checkTree (spec 12 39) [] tree21_7 = true := by
  tree_decide

/-- The cell tree of the base pair 391, words [12, 40]. -/
noncomputable def tree21_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c400.txt")

theorem tree21_8_ok : checkTree (spec 12 40) [] tree21_8 = true := by
  tree_decide

/-- The cell tree of the base pair 392, words [12, 42]. -/
noncomputable def tree21_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c401.txt")

theorem tree21_9_ok : checkTree (spec 12 42) [] tree21_9 = true := by
  tree_decide

/-- The cell tree of the base pair 393, words [12, 43]. -/
noncomputable def tree21_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c402.txt")

theorem tree21_10_ok : checkTree (spec 12 43) [] tree21_10 = true := by
  tree_decide

/-- The cell tree of the base pair 394, words [12, 44]. -/
noncomputable def tree21_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c403.txt")

theorem tree21_11_ok : checkTree (spec 12 44) [] tree21_11 = true := by
  tree_decide

/-- The cell tree of the base pair 395, words [12, 47]. -/
noncomputable def tree21_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c404.txt")

theorem tree21_12_ok : checkTree (spec 12 47) [] tree21_12 = true := by
  tree_decide

/-- The cell tree of the base pair 396, words [12, 48]. -/
noncomputable def tree21_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c405.txt")

theorem tree21_13_ok : checkTree (spec 12 48) [] tree21_13 = true := by
  tree_decide

/-- The cell tree of the base pair 397, words [12, 49]. -/
noncomputable def tree21_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c406.txt")

theorem tree21_14_ok : checkTree (spec 12 49) [] tree21_14 = true := by
  tree_decide

/-- The cell tree of the base pair 398, words [13, 14]. -/
noncomputable def tree21_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c407.txt")

theorem tree21_15_ok : checkTree (spec 13 14) [] tree21_15 = true := by
  tree_decide

/-- The cell tree of the base pair 399, words [13, 15]. -/
noncomputable def tree21_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c408.txt")

theorem tree21_16_ok : checkTree (spec 13 15) [] tree21_16 = true := by
  tree_decide

/-- The base pairs of chunk 21 with their trees. -/
noncomputable def chunk21 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((12, 29), tree21_0),
    ((12, 31), tree21_1),
    ((12, 32), tree21_2),
    ((12, 35), tree21_3),
    ((12, 36), tree21_4),
    ((12, 37), tree21_5),
    ((12, 38), tree21_6),
    ((12, 39), tree21_7),
    ((12, 40), tree21_8),
    ((12, 42), tree21_9),
    ((12, 43), tree21_10),
    ((12, 44), tree21_11),
    ((12, 47), tree21_12),
    ((12, 48), tree21_13),
    ((12, 49), tree21_14),
    ((13, 14), tree21_15),
    ((13, 15), tree21_16)]

theorem chunk21_ok :
    chunk21.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk21, List.all_cons, List.all_nil, tree21_0_ok, tree21_1_ok, tree21_2_ok, tree21_3_ok, tree21_4_ok, tree21_5_ok, tree21_6_ok, tree21_7_ok, tree21_8_ok, tree21_9_ok, tree21_10_ok, tree21_11_ok, tree21_12_ok, tree21_13_ok, tree21_14_ok, tree21_15_ok, tree21_16_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
