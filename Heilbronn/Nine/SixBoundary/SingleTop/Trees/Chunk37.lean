module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 37

The cell trees of 30 base pairs (2372 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 781, words [33, 35]. -/
noncomputable def tree37_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c790.txt")

theorem tree37_0_ok : checkTree (spec 33 35) [] tree37_0 = true := by
  tree_decide

/-- The cell tree of the base pair 782, words [33, 36]. -/
noncomputable def tree37_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c791.txt")

theorem tree37_1_ok : checkTree (spec 33 36) [] tree37_1 = true := by
  tree_decide

/-- The cell tree of the base pair 783, words [33, 37]. -/
noncomputable def tree37_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c792.txt")

theorem tree37_2_ok : checkTree (spec 33 37) [] tree37_2 = true := by
  tree_decide

/-- The cell tree of the base pair 784, words [33, 38]. -/
noncomputable def tree37_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c793.txt")

theorem tree37_3_ok : checkTree (spec 33 38) [] tree37_3 = true := by
  tree_decide

/-- The cell tree of the base pair 785, words [33, 39]. -/
noncomputable def tree37_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c794.txt")

theorem tree37_4_ok : checkTree (spec 33 39) [] tree37_4 = true := by
  tree_decide

/-- The cell tree of the base pair 786, words [33, 40]. -/
noncomputable def tree37_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c795.txt")

theorem tree37_5_ok : checkTree (spec 33 40) [] tree37_5 = true := by
  tree_decide

/-- The cell tree of the base pair 787, words [33, 42]. -/
noncomputable def tree37_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c796.txt")

theorem tree37_6_ok : checkTree (spec 33 42) [] tree37_6 = true := by
  tree_decide

/-- The cell tree of the base pair 788, words [33, 43]. -/
noncomputable def tree37_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c797.txt")

theorem tree37_7_ok : checkTree (spec 33 43) [] tree37_7 = true := by
  tree_decide

/-- The cell tree of the base pair 789, words [33, 44]. -/
noncomputable def tree37_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c798.txt")

theorem tree37_8_ok : checkTree (spec 33 44) [] tree37_8 = true := by
  tree_decide

/-- The cell tree of the base pair 790, words [33, 47]. -/
noncomputable def tree37_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c799.txt")

theorem tree37_9_ok : checkTree (spec 33 47) [] tree37_9 = true := by
  tree_decide

/-- The cell tree of the base pair 791, words [33, 48]. -/
noncomputable def tree37_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c800.txt")

theorem tree37_10_ok : checkTree (spec 33 48) [] tree37_10 = true := by
  tree_decide

/-- The cell tree of the base pair 792, words [33, 49]. -/
noncomputable def tree37_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c801.txt")

theorem tree37_11_ok : checkTree (spec 33 49) [] tree37_11 = true := by
  tree_decide

/-- The cell tree of the base pair 793, words [34, 35]. -/
noncomputable def tree37_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c802.txt")

theorem tree37_12_ok : checkTree (spec 34 35) [] tree37_12 = true := by
  tree_decide

/-- The cell tree of the base pair 794, words [34, 36]. -/
noncomputable def tree37_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c803.txt")

theorem tree37_13_ok : checkTree (spec 34 36) [] tree37_13 = true := by
  tree_decide

/-- The cell tree of the base pair 795, words [34, 37]. -/
noncomputable def tree37_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c804.txt")

theorem tree37_14_ok : checkTree (spec 34 37) [] tree37_14 = true := by
  tree_decide

/-- The cell tree of the base pair 796, words [34, 38]. -/
noncomputable def tree37_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c805.txt")

theorem tree37_15_ok : checkTree (spec 34 38) [] tree37_15 = true := by
  tree_decide

/-- The cell tree of the base pair 797, words [34, 39]. -/
noncomputable def tree37_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c806.txt")

theorem tree37_16_ok : checkTree (spec 34 39) [] tree37_16 = true := by
  tree_decide

/-- The cell tree of the base pair 798, words [34, 40]. -/
noncomputable def tree37_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c807.txt")

theorem tree37_17_ok : checkTree (spec 34 40) [] tree37_17 = true := by
  tree_decide

/-- The cell tree of the base pair 799, words [34, 42]. -/
noncomputable def tree37_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c808.txt")

theorem tree37_18_ok : checkTree (spec 34 42) [] tree37_18 = true := by
  tree_decide

/-- The cell tree of the base pair 800, words [34, 43]. -/
noncomputable def tree37_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c809.txt")

theorem tree37_19_ok : checkTree (spec 34 43) [] tree37_19 = true := by
  tree_decide

/-- The cell tree of the base pair 801, words [34, 44]. -/
noncomputable def tree37_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c810.txt")

theorem tree37_20_ok : checkTree (spec 34 44) [] tree37_20 = true := by
  tree_decide

/-- The cell tree of the base pair 802, words [34, 47]. -/
noncomputable def tree37_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c811.txt")

theorem tree37_21_ok : checkTree (spec 34 47) [] tree37_21 = true := by
  tree_decide

/-- The cell tree of the base pair 803, words [34, 48]. -/
noncomputable def tree37_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c812.txt")

theorem tree37_22_ok : checkTree (spec 34 48) [] tree37_22 = true := by
  tree_decide

/-- The cell tree of the base pair 804, words [34, 49]. -/
noncomputable def tree37_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c813.txt")

theorem tree37_23_ok : checkTree (spec 34 49) [] tree37_23 = true := by
  tree_decide

/-- The cell tree of the base pair 805, words [35, 40]. -/
noncomputable def tree37_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c814.txt")

theorem tree37_24_ok : checkTree (spec 35 40) [] tree37_24 = true := by
  tree_decide

/-- The cell tree of the base pair 806, words [35, 41]. -/
noncomputable def tree37_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c815.txt")

theorem tree37_25_ok : checkTree (spec 35 41) [] tree37_25 = true := by
  tree_decide

/-- The cell tree of the base pair 807, words [35, 44]. -/
noncomputable def tree37_26 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c816.txt")

theorem tree37_26_ok : checkTree (spec 35 44) [] tree37_26 = true := by
  tree_decide

/-- The cell tree of the base pair 808, words [35, 45]. -/
noncomputable def tree37_27 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c817.txt")

theorem tree37_27_ok : checkTree (spec 35 45) [] tree37_27 = true := by
  tree_decide

/-- The cell tree of the base pair 809, words [35, 46]. -/
noncomputable def tree37_28 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c818.txt")

theorem tree37_28_ok : checkTree (spec 35 46) [] tree37_28 = true := by
  tree_decide

/-- The cell tree of the base pair 810, words [35, 49]. -/
noncomputable def tree37_29 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c819.txt")

theorem tree37_29_ok : checkTree (spec 35 49) [] tree37_29 = true := by
  tree_decide

/-- The base pairs of chunk 37 with their trees. -/
noncomputable def chunk37 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((33, 35), tree37_0),
    ((33, 36), tree37_1),
    ((33, 37), tree37_2),
    ((33, 38), tree37_3),
    ((33, 39), tree37_4),
    ((33, 40), tree37_5),
    ((33, 42), tree37_6),
    ((33, 43), tree37_7),
    ((33, 44), tree37_8),
    ((33, 47), tree37_9),
    ((33, 48), tree37_10),
    ((33, 49), tree37_11),
    ((34, 35), tree37_12),
    ((34, 36), tree37_13),
    ((34, 37), tree37_14),
    ((34, 38), tree37_15),
    ((34, 39), tree37_16),
    ((34, 40), tree37_17),
    ((34, 42), tree37_18),
    ((34, 43), tree37_19),
    ((34, 44), tree37_20),
    ((34, 47), tree37_21),
    ((34, 48), tree37_22),
    ((34, 49), tree37_23),
    ((35, 40), tree37_24),
    ((35, 41), tree37_25),
    ((35, 44), tree37_26),
    ((35, 45), tree37_27),
    ((35, 46), tree37_28),
    ((35, 49), tree37_29)]

theorem chunk37_ok :
    chunk37.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk37, List.all_cons, List.all_nil, tree37_0_ok, tree37_1_ok, tree37_2_ok, tree37_3_ok, tree37_4_ok, tree37_5_ok, tree37_6_ok, tree37_7_ok, tree37_8_ok, tree37_9_ok, tree37_10_ok, tree37_11_ok, tree37_12_ok, tree37_13_ok, tree37_14_ok, tree37_15_ok, tree37_16_ok, tree37_17_ok, tree37_18_ok, tree37_19_ok, tree37_20_ok, tree37_21_ok, tree37_22_ok, tree37_23_ok, tree37_24_ok, tree37_25_ok, tree37_26_ok, tree37_27_ok, tree37_28_ok, tree37_29_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
