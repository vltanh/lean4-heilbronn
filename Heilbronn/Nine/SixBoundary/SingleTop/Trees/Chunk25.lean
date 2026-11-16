module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 25

The cell trees of 32 base pairs (2500 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 480, words [16, 19]. -/
noncomputable def tree25_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c489.txt")

theorem tree25_0_ok : checkTree (spec 16 19) [] tree25_0 = true := by
  tree_decide

/-- The cell tree of the base pair 481, words [16, 21]. -/
noncomputable def tree25_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c490.txt")

theorem tree25_1_ok : checkTree (spec 16 21) [] tree25_1 = true := by
  tree_decide

/-- The cell tree of the base pair 482, words [16, 25]. -/
noncomputable def tree25_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c491.txt")

theorem tree25_2_ok : checkTree (spec 16 25) [] tree25_2 = true := by
  tree_decide

/-- The cell tree of the base pair 483, words [16, 26]. -/
noncomputable def tree25_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c492.txt")

theorem tree25_3_ok : checkTree (spec 16 26) [] tree25_3 = true := by
  tree_decide

/-- The cell tree of the base pair 484, words [16, 30]. -/
noncomputable def tree25_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c493.txt")

theorem tree25_4_ok : checkTree (spec 16 30) [] tree25_4 = true := by
  tree_decide

/-- The cell tree of the base pair 485, words [16, 31]. -/
noncomputable def tree25_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c494.txt")

theorem tree25_5_ok : checkTree (spec 16 31) [] tree25_5 = true := by
  tree_decide

/-- The cell tree of the base pair 486, words [16, 33]. -/
noncomputable def tree25_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c495.txt")

theorem tree25_6_ok : checkTree (spec 16 33) [] tree25_6 = true := by
  tree_decide

/-- The cell tree of the base pair 487, words [16, 34]. -/
noncomputable def tree25_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c496.txt")

theorem tree25_7_ok : checkTree (spec 16 34) [] tree25_7 = true := by
  tree_decide

/-- The cell tree of the base pair 488, words [16, 35]. -/
noncomputable def tree25_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c497.txt")

theorem tree25_8_ok : checkTree (spec 16 35) [] tree25_8 = true := by
  tree_decide

/-- The cell tree of the base pair 489, words [16, 36]. -/
noncomputable def tree25_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c498.txt")

theorem tree25_9_ok : checkTree (spec 16 36) [] tree25_9 = true := by
  tree_decide

/-- The cell tree of the base pair 490, words [16, 41]. -/
noncomputable def tree25_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c499.txt")

theorem tree25_10_ok : checkTree (spec 16 41) [] tree25_10 = true := by
  tree_decide

/-- The cell tree of the base pair 491, words [16, 42]. -/
noncomputable def tree25_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c500.txt")

theorem tree25_11_ok : checkTree (spec 16 42) [] tree25_11 = true := by
  tree_decide

/-- The cell tree of the base pair 492, words [16, 43]. -/
noncomputable def tree25_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c501.txt")

theorem tree25_12_ok : checkTree (spec 16 43) [] tree25_12 = true := by
  tree_decide

/-- The cell tree of the base pair 493, words [16, 45]. -/
noncomputable def tree25_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c502.txt")

theorem tree25_13_ok : checkTree (spec 16 45) [] tree25_13 = true := by
  tree_decide

/-- The cell tree of the base pair 494, words [16, 46]. -/
noncomputable def tree25_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c503.txt")

theorem tree25_14_ok : checkTree (spec 16 46) [] tree25_14 = true := by
  tree_decide

/-- The cell tree of the base pair 495, words [16, 47]. -/
noncomputable def tree25_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c504.txt")

theorem tree25_15_ok : checkTree (spec 16 47) [] tree25_15 = true := by
  tree_decide

/-- The cell tree of the base pair 496, words [16, 48]. -/
noncomputable def tree25_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c505.txt")

theorem tree25_16_ok : checkTree (spec 16 48) [] tree25_16 = true := by
  tree_decide

/-- The cell tree of the base pair 497, words [16, 50]. -/
noncomputable def tree25_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c506.txt")

theorem tree25_17_ok : checkTree (spec 16 50) [] tree25_17 = true := by
  tree_decide

/-- The cell tree of the base pair 498, words [16, 51]. -/
noncomputable def tree25_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c507.txt")

theorem tree25_18_ok : checkTree (spec 16 51) [] tree25_18 = true := by
  tree_decide

/-- The cell tree of the base pair 499, words [17, 19]. -/
noncomputable def tree25_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c508.txt")

theorem tree25_19_ok : checkTree (spec 17 19) [] tree25_19 = true := by
  tree_decide

/-- The cell tree of the base pair 500, words [17, 20]. -/
noncomputable def tree25_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c509.txt")

theorem tree25_20_ok : checkTree (spec 17 20) [] tree25_20 = true := by
  tree_decide

/-- The cell tree of the base pair 501, words [17, 21]. -/
noncomputable def tree25_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c510.txt")

theorem tree25_21_ok : checkTree (spec 17 21) [] tree25_21 = true := by
  tree_decide

/-- The cell tree of the base pair 502, words [17, 22]. -/
noncomputable def tree25_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c511.txt")

theorem tree25_22_ok : checkTree (spec 17 22) [] tree25_22 = true := by
  tree_decide

/-- The cell tree of the base pair 503, words [17, 23]. -/
noncomputable def tree25_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c512.txt")

theorem tree25_23_ok : checkTree (spec 17 23) [] tree25_23 = true := by
  tree_decide

/-- The cell tree of the base pair 504, words [17, 24]. -/
noncomputable def tree25_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c513.txt")

theorem tree25_24_ok : checkTree (spec 17 24) [] tree25_24 = true := by
  tree_decide

/-- The cell tree of the base pair 505, words [17, 26]. -/
noncomputable def tree25_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c514.txt")

theorem tree25_25_ok : checkTree (spec 17 26) [] tree25_25 = true := by
  tree_decide

/-- The cell tree of the base pair 506, words [17, 27]. -/
noncomputable def tree25_26 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c515.txt")

theorem tree25_26_ok : checkTree (spec 17 27) [] tree25_26 = true := by
  tree_decide

/-- The cell tree of the base pair 507, words [17, 28]. -/
noncomputable def tree25_27 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c516.txt")

theorem tree25_27_ok : checkTree (spec 17 28) [] tree25_27 = true := by
  tree_decide

/-- The cell tree of the base pair 508, words [17, 29]. -/
noncomputable def tree25_28 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c517.txt")

theorem tree25_28_ok : checkTree (spec 17 29) [] tree25_28 = true := by
  tree_decide

/-- The cell tree of the base pair 509, words [17, 31]. -/
noncomputable def tree25_29 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c518.txt")

theorem tree25_29_ok : checkTree (spec 17 31) [] tree25_29 = true := by
  tree_decide

/-- The cell tree of the base pair 510, words [17, 32]. -/
noncomputable def tree25_30 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c519.txt")

theorem tree25_30_ok : checkTree (spec 17 32) [] tree25_30 = true := by
  tree_decide

/-- The cell tree of the base pair 511, words [17, 35]. -/
noncomputable def tree25_31 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c520.txt")

theorem tree25_31_ok : checkTree (spec 17 35) [] tree25_31 = true := by
  tree_decide

/-- The base pairs of chunk 25 with their trees. -/
noncomputable def chunk25 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((16, 19), tree25_0),
    ((16, 21), tree25_1),
    ((16, 25), tree25_2),
    ((16, 26), tree25_3),
    ((16, 30), tree25_4),
    ((16, 31), tree25_5),
    ((16, 33), tree25_6),
    ((16, 34), tree25_7),
    ((16, 35), tree25_8),
    ((16, 36), tree25_9),
    ((16, 41), tree25_10),
    ((16, 42), tree25_11),
    ((16, 43), tree25_12),
    ((16, 45), tree25_13),
    ((16, 46), tree25_14),
    ((16, 47), tree25_15),
    ((16, 48), tree25_16),
    ((16, 50), tree25_17),
    ((16, 51), tree25_18),
    ((17, 19), tree25_19),
    ((17, 20), tree25_20),
    ((17, 21), tree25_21),
    ((17, 22), tree25_22),
    ((17, 23), tree25_23),
    ((17, 24), tree25_24),
    ((17, 26), tree25_25),
    ((17, 27), tree25_26),
    ((17, 28), tree25_27),
    ((17, 29), tree25_28),
    ((17, 31), tree25_29),
    ((17, 32), tree25_30),
    ((17, 35), tree25_31)]

theorem chunk25_ok :
    chunk25.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk25, List.all_cons, List.all_nil, tree25_0_ok, tree25_1_ok, tree25_2_ok, tree25_3_ok, tree25_4_ok, tree25_5_ok, tree25_6_ok, tree25_7_ok, tree25_8_ok, tree25_9_ok, tree25_10_ok, tree25_11_ok, tree25_12_ok, tree25_13_ok, tree25_14_ok, tree25_15_ok, tree25_16_ok, tree25_17_ok, tree25_18_ok, tree25_19_ok, tree25_20_ok, tree25_21_ok, tree25_22_ok, tree25_23_ok, tree25_24_ok, tree25_25_ok, tree25_26_ok, tree25_27_ok, tree25_28_ok, tree25_29_ok, tree25_30_ok, tree25_31_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
