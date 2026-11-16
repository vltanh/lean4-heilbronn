module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 13

The cell trees of 17 base pairs (2487 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 242, words [7, 41]. -/
noncomputable def tree13_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c244.txt")

theorem tree13_0_ok : checkTree (spec 7 41) [] tree13_0 = true := by
  tree_decide

/-- The cell tree of the base pair 243, words [7, 42]. -/
noncomputable def tree13_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c245.txt")

theorem tree13_1_ok : checkTree (spec 7 42) [] tree13_1 = true := by
  tree_decide

/-- The cell tree of the base pair 244, words [7, 43]. -/
noncomputable def tree13_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c246.txt")

theorem tree13_2_ok : checkTree (spec 7 43) [] tree13_2 = true := by
  tree_decide

/-- The cell tree of the base pair 245, words [7, 45]. -/
noncomputable def tree13_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c247.txt")

theorem tree13_3_ok : checkTree (spec 7 45) [] tree13_3 = true := by
  tree_decide

/-- The cell tree of the base pair 246, words [7, 46]. -/
noncomputable def tree13_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c248.txt")

theorem tree13_4_ok : checkTree (spec 7 46) [] tree13_4 = true := by
  tree_decide

/-- The cell tree of the base pair 247, words [7, 47]. -/
noncomputable def tree13_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c249.txt")

theorem tree13_5_ok : checkTree (spec 7 47) [] tree13_5 = true := by
  tree_decide

/-- The cell tree of the base pair 248, words [7, 48]. -/
noncomputable def tree13_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c250.txt")

theorem tree13_6_ok : checkTree (spec 7 48) [] tree13_6 = true := by
  tree_decide

/-- The cell tree of the base pair 249, words [7, 50]. -/
noncomputable def tree13_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c251.txt")

theorem tree13_7_ok : checkTree (spec 7 50) [] tree13_7 = true := by
  tree_decide

/-- The cell tree of the base pair 250, words [7, 51]. -/
noncomputable def tree13_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c252.txt")

theorem tree13_8_ok : checkTree (spec 7 51) [] tree13_8 = true := by
  tree_decide

/-- The cell tree of the base pair 251, words [8, 9]. -/
noncomputable def tree13_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c253.txt")

theorem tree13_9_ok : checkTree (spec 8 9) [] tree13_9 = true := by
  tree_decide

/-- The cell tree of the base pair 252, words [8, 10]. -/
noncomputable def tree13_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c254.txt")

theorem tree13_10_ok : checkTree (spec 8 10) [] tree13_10 = true := by
  tree_decide

/-- The cell tree of the base pair 253, words [8, 11]. -/
noncomputable def tree13_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c255.txt")

theorem tree13_11_ok : checkTree (spec 8 11) [] tree13_11 = true := by
  tree_decide

/-- The cell tree of the base pair 254, words [8, 13]. -/
noncomputable def tree13_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c256.txt")

theorem tree13_12_ok : checkTree (spec 8 13) [] tree13_12 = true := by
  tree_decide

/-- The cell tree of the base pair 255, words [8, 14]. -/
noncomputable def tree13_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c257.txt")

theorem tree13_13_ok : checkTree (spec 8 14) [] tree13_13 = true := by
  tree_decide

/-- The cell tree of the base pair 256, words [8, 16]. -/
noncomputable def tree13_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c258.txt")

theorem tree13_14_ok : checkTree (spec 8 16) [] tree13_14 = true := by
  tree_decide

/-- The cell tree of the base pair 257, words [8, 19]. -/
noncomputable def tree13_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c259.txt")

theorem tree13_15_ok : checkTree (spec 8 19) [] tree13_15 = true := by
  tree_decide

/-- The cell tree of the base pair 258, words [8, 20]. -/
noncomputable def tree13_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c260.txt")

theorem tree13_16_ok : checkTree (spec 8 20) [] tree13_16 = true := by
  tree_decide

/-- The base pairs of chunk 13 with their trees. -/
noncomputable def chunk13 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((7, 41), tree13_0),
    ((7, 42), tree13_1),
    ((7, 43), tree13_2),
    ((7, 45), tree13_3),
    ((7, 46), tree13_4),
    ((7, 47), tree13_5),
    ((7, 48), tree13_6),
    ((7, 50), tree13_7),
    ((7, 51), tree13_8),
    ((8, 9), tree13_9),
    ((8, 10), tree13_10),
    ((8, 11), tree13_11),
    ((8, 13), tree13_12),
    ((8, 14), tree13_13),
    ((8, 16), tree13_14),
    ((8, 19), tree13_15),
    ((8, 20), tree13_16)]

theorem chunk13_ok :
    chunk13.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk13, List.all_cons, List.all_nil, tree13_0_ok, tree13_1_ok, tree13_2_ok, tree13_3_ok, tree13_4_ok, tree13_5_ok, tree13_6_ok, tree13_7_ok, tree13_8_ok, tree13_9_ok, tree13_10_ok, tree13_11_ok, tree13_12_ok, tree13_13_ok, tree13_14_ok, tree13_15_ok, tree13_16_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
