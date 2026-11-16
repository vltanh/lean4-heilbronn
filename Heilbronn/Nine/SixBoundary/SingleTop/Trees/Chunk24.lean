module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 24

The cell trees of 29 base pairs (2490 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 451, words [14, 50]. -/
noncomputable def tree24_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c460.txt")

theorem tree24_0_ok : checkTree (spec 14 50) [] tree24_0 = true := by
  tree_decide

/-- The cell tree of the base pair 452, words [14, 51]. -/
noncomputable def tree24_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c461.txt")

theorem tree24_1_ok : checkTree (spec 14 51) [] tree24_1 = true := by
  tree_decide

/-- The cell tree of the base pair 453, words [15, 16]. -/
noncomputable def tree24_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c462.txt")

theorem tree24_2_ok : checkTree (spec 15 16) [] tree24_2 = true := by
  tree_decide

/-- The cell tree of the base pair 454, words [15, 19]. -/
noncomputable def tree24_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c463.txt")

theorem tree24_3_ok : checkTree (spec 15 19) [] tree24_3 = true := by
  tree_decide

/-- The cell tree of the base pair 455, words [15, 20]. -/
noncomputable def tree24_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c464.txt")

theorem tree24_4_ok : checkTree (spec 15 20) [] tree24_4 = true := by
  tree_decide

/-- The cell tree of the base pair 456, words [15, 21]. -/
noncomputable def tree24_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c465.txt")

theorem tree24_5_ok : checkTree (spec 15 21) [] tree24_5 = true := by
  tree_decide

/-- The cell tree of the base pair 457, words [15, 22]. -/
noncomputable def tree24_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c466.txt")

theorem tree24_6_ok : checkTree (spec 15 22) [] tree24_6 = true := by
  tree_decide

/-- The cell tree of the base pair 458, words [15, 23]. -/
noncomputable def tree24_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c467.txt")

theorem tree24_7_ok : checkTree (spec 15 23) [] tree24_7 = true := by
  tree_decide

/-- The cell tree of the base pair 459, words [15, 24]. -/
noncomputable def tree24_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c468.txt")

theorem tree24_8_ok : checkTree (spec 15 24) [] tree24_8 = true := by
  tree_decide

/-- The cell tree of the base pair 460, words [15, 26]. -/
noncomputable def tree24_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c469.txt")

theorem tree24_9_ok : checkTree (spec 15 26) [] tree24_9 = true := by
  tree_decide

/-- The cell tree of the base pair 461, words [15, 27]. -/
noncomputable def tree24_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c470.txt")

theorem tree24_10_ok : checkTree (spec 15 27) [] tree24_10 = true := by
  tree_decide

/-- The cell tree of the base pair 462, words [15, 28]. -/
noncomputable def tree24_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c471.txt")

theorem tree24_11_ok : checkTree (spec 15 28) [] tree24_11 = true := by
  tree_decide

/-- The cell tree of the base pair 463, words [15, 29]. -/
noncomputable def tree24_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c472.txt")

theorem tree24_12_ok : checkTree (spec 15 29) [] tree24_12 = true := by
  tree_decide

/-- The cell tree of the base pair 464, words [15, 31]. -/
noncomputable def tree24_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c473.txt")

theorem tree24_13_ok : checkTree (spec 15 31) [] tree24_13 = true := by
  tree_decide

/-- The cell tree of the base pair 465, words [15, 32]. -/
noncomputable def tree24_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c474.txt")

theorem tree24_14_ok : checkTree (spec 15 32) [] tree24_14 = true := by
  tree_decide

/-- The cell tree of the base pair 466, words [15, 35]. -/
noncomputable def tree24_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c475.txt")

theorem tree24_15_ok : checkTree (spec 15 35) [] tree24_15 = true := by
  tree_decide

/-- The cell tree of the base pair 467, words [15, 36]. -/
noncomputable def tree24_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c476.txt")

theorem tree24_16_ok : checkTree (spec 15 36) [] tree24_16 = true := by
  tree_decide

/-- The cell tree of the base pair 468, words [15, 37]. -/
noncomputable def tree24_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c477.txt")

theorem tree24_17_ok : checkTree (spec 15 37) [] tree24_17 = true := by
  tree_decide

/-- The cell tree of the base pair 469, words [15, 38]. -/
noncomputable def tree24_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c478.txt")

theorem tree24_18_ok : checkTree (spec 15 38) [] tree24_18 = true := by
  tree_decide

/-- The cell tree of the base pair 470, words [15, 39]. -/
noncomputable def tree24_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c479.txt")

theorem tree24_19_ok : checkTree (spec 15 39) [] tree24_19 = true := by
  tree_decide

/-- The cell tree of the base pair 471, words [15, 40]. -/
noncomputable def tree24_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c480.txt")

theorem tree24_20_ok : checkTree (spec 15 40) [] tree24_20 = true := by
  tree_decide

/-- The cell tree of the base pair 472, words [15, 42]. -/
noncomputable def tree24_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c481.txt")

theorem tree24_21_ok : checkTree (spec 15 42) [] tree24_21 = true := by
  tree_decide

/-- The cell tree of the base pair 473, words [15, 43]. -/
noncomputable def tree24_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c482.txt")

theorem tree24_22_ok : checkTree (spec 15 43) [] tree24_22 = true := by
  tree_decide

/-- The cell tree of the base pair 474, words [15, 44]. -/
noncomputable def tree24_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c483.txt")

theorem tree24_23_ok : checkTree (spec 15 44) [] tree24_23 = true := by
  tree_decide

/-- The cell tree of the base pair 475, words [15, 47]. -/
noncomputable def tree24_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c484.txt")

theorem tree24_24_ok : checkTree (spec 15 47) [] tree24_24 = true := by
  tree_decide

/-- The cell tree of the base pair 476, words [15, 48]. -/
noncomputable def tree24_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c485.txt")

theorem tree24_25_ok : checkTree (spec 15 48) [] tree24_25 = true := by
  tree_decide

/-- The cell tree of the base pair 477, words [15, 49]. -/
noncomputable def tree24_26 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c486.txt")

theorem tree24_26_ok : checkTree (spec 15 49) [] tree24_26 = true := by
  tree_decide

/-- The cell tree of the base pair 478, words [16, 17]. -/
noncomputable def tree24_27 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c487.txt")

theorem tree24_27_ok : checkTree (spec 16 17) [] tree24_27 = true := by
  tree_decide

/-- The cell tree of the base pair 479, words [16, 18]. -/
noncomputable def tree24_28 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c488.txt")

theorem tree24_28_ok : checkTree (spec 16 18) [] tree24_28 = true := by
  tree_decide

/-- The base pairs of chunk 24 with their trees. -/
noncomputable def chunk24 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((14, 50), tree24_0),
    ((14, 51), tree24_1),
    ((15, 16), tree24_2),
    ((15, 19), tree24_3),
    ((15, 20), tree24_4),
    ((15, 21), tree24_5),
    ((15, 22), tree24_6),
    ((15, 23), tree24_7),
    ((15, 24), tree24_8),
    ((15, 26), tree24_9),
    ((15, 27), tree24_10),
    ((15, 28), tree24_11),
    ((15, 29), tree24_12),
    ((15, 31), tree24_13),
    ((15, 32), tree24_14),
    ((15, 35), tree24_15),
    ((15, 36), tree24_16),
    ((15, 37), tree24_17),
    ((15, 38), tree24_18),
    ((15, 39), tree24_19),
    ((15, 40), tree24_20),
    ((15, 42), tree24_21),
    ((15, 43), tree24_22),
    ((15, 44), tree24_23),
    ((15, 47), tree24_24),
    ((15, 48), tree24_25),
    ((15, 49), tree24_26),
    ((16, 17), tree24_27),
    ((16, 18), tree24_28)]

theorem chunk24_ok :
    chunk24.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk24, List.all_cons, List.all_nil, tree24_0_ok, tree24_1_ok, tree24_2_ok, tree24_3_ok, tree24_4_ok, tree24_5_ok, tree24_6_ok, tree24_7_ok, tree24_8_ok, tree24_9_ok, tree24_10_ok, tree24_11_ok, tree24_12_ok, tree24_13_ok, tree24_14_ok, tree24_15_ok, tree24_16_ok, tree24_17_ok, tree24_18_ok, tree24_19_ok, tree24_20_ok, tree24_21_ok, tree24_22_ok, tree24_23_ok, tree24_24_ok, tree24_25_ok, tree24_26_ok, tree24_27_ok, tree24_28_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
