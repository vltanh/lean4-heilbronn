module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 6

The cell trees of 27 base pairs (2480 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 106, words [3, 20]. -/
noncomputable def tree6_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c106.txt")

theorem tree6_0_ok : checkTree (spec 3 20) [] tree6_0 = true := by
  tree_decide

/-- The cell tree of the base pair 107, words [3, 21]. -/
noncomputable def tree6_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c107.txt")

theorem tree6_1_ok : checkTree (spec 3 21) [] tree6_1 = true := by
  tree_decide

/-- The cell tree of the base pair 108, words [3, 22]. -/
noncomputable def tree6_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c108.txt")

theorem tree6_2_ok : checkTree (spec 3 22) [] tree6_2 = true := by
  tree_decide

/-- The cell tree of the base pair 109, words [3, 23]. -/
noncomputable def tree6_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c109.txt")

theorem tree6_3_ok : checkTree (spec 3 23) [] tree6_3 = true := by
  tree_decide

/-- The cell tree of the base pair 110, words [3, 24]. -/
noncomputable def tree6_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c110.txt")

theorem tree6_4_ok : checkTree (spec 3 24) [] tree6_4 = true := by
  tree_decide

/-- The cell tree of the base pair 111, words [3, 26]. -/
noncomputable def tree6_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c111.txt")

theorem tree6_5_ok : checkTree (spec 3 26) [] tree6_5 = true := by
  tree_decide

/-- The cell tree of the base pair 112, words [3, 27]. -/
noncomputable def tree6_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c112.txt")

theorem tree6_6_ok : checkTree (spec 3 27) [] tree6_6 = true := by
  tree_decide

/-- The cell tree of the base pair 113, words [3, 28]. -/
noncomputable def tree6_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c113.txt")

theorem tree6_7_ok : checkTree (spec 3 28) [] tree6_7 = true := by
  tree_decide

/-- The cell tree of the base pair 114, words [3, 29]. -/
noncomputable def tree6_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c114.txt")

theorem tree6_8_ok : checkTree (spec 3 29) [] tree6_8 = true := by
  tree_decide

/-- The cell tree of the base pair 115, words [3, 31]. -/
noncomputable def tree6_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c115.txt")

theorem tree6_9_ok : checkTree (spec 3 31) [] tree6_9 = true := by
  tree_decide

/-- The cell tree of the base pair 116, words [3, 32]. -/
noncomputable def tree6_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c116.txt")

theorem tree6_10_ok : checkTree (spec 3 32) [] tree6_10 = true := by
  tree_decide

/-- The cell tree of the base pair 117, words [3, 35]. -/
noncomputable def tree6_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c117.txt")

theorem tree6_11_ok : checkTree (spec 3 35) [] tree6_11 = true := by
  tree_decide

/-- The cell tree of the base pair 118, words [3, 36]. -/
noncomputable def tree6_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c118.txt")

theorem tree6_12_ok : checkTree (spec 3 36) [] tree6_12 = true := by
  tree_decide

/-- The cell tree of the base pair 119, words [3, 37]. -/
noncomputable def tree6_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c119.txt")

theorem tree6_13_ok : checkTree (spec 3 37) [] tree6_13 = true := by
  tree_decide

/-- The cell tree of the base pair 120, words [3, 38]. -/
noncomputable def tree6_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c120.txt")

theorem tree6_14_ok : checkTree (spec 3 38) [] tree6_14 = true := by
  tree_decide

/-- The cell tree of the base pair 121, words [3, 39]. -/
noncomputable def tree6_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c121.txt")

theorem tree6_15_ok : checkTree (spec 3 39) [] tree6_15 = true := by
  tree_decide

/-- The cell tree of the base pair 122, words [3, 40]. -/
noncomputable def tree6_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c122.txt")

theorem tree6_16_ok : checkTree (spec 3 40) [] tree6_16 = true := by
  tree_decide

/-- The cell tree of the base pair 123, words [3, 42]. -/
noncomputable def tree6_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c123.txt")

theorem tree6_17_ok : checkTree (spec 3 42) [] tree6_17 = true := by
  tree_decide

/-- The cell tree of the base pair 124, words [3, 43]. -/
noncomputable def tree6_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c124.txt")

theorem tree6_18_ok : checkTree (spec 3 43) [] tree6_18 = true := by
  tree_decide

/-- The cell tree of the base pair 125, words [3, 44]. -/
noncomputable def tree6_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c125.txt")

theorem tree6_19_ok : checkTree (spec 3 44) [] tree6_19 = true := by
  tree_decide

/-- The cell tree of the base pair 126, words [3, 47]. -/
noncomputable def tree6_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c126.txt")

theorem tree6_20_ok : checkTree (spec 3 47) [] tree6_20 = true := by
  tree_decide

/-- The cell tree of the base pair 127, words [3, 48]. -/
noncomputable def tree6_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c127.txt")

theorem tree6_21_ok : checkTree (spec 3 48) [] tree6_21 = true := by
  tree_decide

/-- The cell tree of the base pair 128, words [3, 49]. -/
noncomputable def tree6_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c128.txt")

theorem tree6_22_ok : checkTree (spec 3 49) [] tree6_22 = true := by
  tree_decide

/-- The cell tree of the base pair 129, words [4, 5]. -/
noncomputable def tree6_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c129.txt")

theorem tree6_23_ok : checkTree (spec 4 5) [] tree6_23 = true := by
  tree_decide

/-- The cell tree of the base pair 130, words [4, 6]. -/
noncomputable def tree6_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c130.txt")

theorem tree6_24_ok : checkTree (spec 4 6) [] tree6_24 = true := by
  tree_decide

/-- The cell tree of the base pair 131, words [4, 7]. -/
noncomputable def tree6_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c131.txt")

theorem tree6_25_ok : checkTree (spec 4 7) [] tree6_25 = true := by
  tree_decide

/-- The cell tree of the base pair 132, words [4, 9]. -/
noncomputable def tree6_26 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c132.txt")

theorem tree6_26_ok : checkTree (spec 4 9) [] tree6_26 = true := by
  tree_decide

/-- The base pairs of chunk 6 with their trees. -/
noncomputable def chunk6 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((3, 20), tree6_0),
    ((3, 21), tree6_1),
    ((3, 22), tree6_2),
    ((3, 23), tree6_3),
    ((3, 24), tree6_4),
    ((3, 26), tree6_5),
    ((3, 27), tree6_6),
    ((3, 28), tree6_7),
    ((3, 29), tree6_8),
    ((3, 31), tree6_9),
    ((3, 32), tree6_10),
    ((3, 35), tree6_11),
    ((3, 36), tree6_12),
    ((3, 37), tree6_13),
    ((3, 38), tree6_14),
    ((3, 39), tree6_15),
    ((3, 40), tree6_16),
    ((3, 42), tree6_17),
    ((3, 43), tree6_18),
    ((3, 44), tree6_19),
    ((3, 47), tree6_20),
    ((3, 48), tree6_21),
    ((3, 49), tree6_22),
    ((4, 5), tree6_23),
    ((4, 6), tree6_24),
    ((4, 7), tree6_25),
    ((4, 9), tree6_26)]

theorem chunk6_ok :
    chunk6.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk6, List.all_cons, List.all_nil, tree6_0_ok, tree6_1_ok, tree6_2_ok, tree6_3_ok, tree6_4_ok, tree6_5_ok, tree6_6_ok, tree6_7_ok, tree6_8_ok, tree6_9_ok, tree6_10_ok, tree6_11_ok, tree6_12_ok, tree6_13_ok, tree6_14_ok, tree6_15_ok, tree6_16_ok, tree6_17_ok, tree6_18_ok, tree6_19_ok, tree6_20_ok, tree6_21_ok, tree6_22_ok, tree6_23_ok, tree6_24_ok, tree6_25_ok, tree6_26_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
