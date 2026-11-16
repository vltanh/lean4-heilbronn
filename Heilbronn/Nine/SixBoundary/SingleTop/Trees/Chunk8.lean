module

public import Heilbronn.Nine.SixBoundary.SingleTop.Model
public import Heilbronn.Common.DataReader

/-! # Single-top cover, chunk 8

The cell trees of 18 base pairs (2390 certificate terms), each checked by the kernel in its own theorem. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- The cell tree of the base pair 164, words [5, 14]. -/
noncomputable def tree8_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c164.txt")

theorem tree8_0_ok : checkTree (spec 5 14) [] tree8_0 = true := by
  tree_decide

/-- The cell tree of the base pair 165, words [5, 15]. -/
noncomputable def tree8_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c165.txt")

theorem tree8_1_ok : checkTree (spec 5 15) [] tree8_1 = true := by
  tree_decide

/-- The cell tree of the base pair 166, words [5, 16]. -/
noncomputable def tree8_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c166.txt")

theorem tree8_2_ok : checkTree (spec 5 16) [] tree8_2 = true := by
  tree_decide

/-- The cell tree of the base pair 167, words [5, 17]. -/
noncomputable def tree8_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c167.txt")

theorem tree8_3_ok : checkTree (spec 5 17) [] tree8_3 = true := by
  tree_decide

/-- The cell tree of the base pair 168, words [5, 18]. -/
noncomputable def tree8_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c168.txt")

theorem tree8_4_ok : checkTree (spec 5 18) [] tree8_4 = true := by
  tree_decide

/-- The cell tree of the base pair 169, words [5, 23]. -/
noncomputable def tree8_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c169.txt")

theorem tree8_5_ok : checkTree (spec 5 23) [] tree8_5 = true := by
  tree_decide

/-- The cell tree of the base pair 170, words [5, 24]. -/
noncomputable def tree8_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c170.txt")

theorem tree8_6_ok : checkTree (spec 5 24) [] tree8_6 = true := by
  tree_decide

/-- The cell tree of the base pair 171, words [5, 25]. -/
noncomputable def tree8_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c171.txt")

theorem tree8_7_ok : checkTree (spec 5 25) [] tree8_7 = true := by
  tree_decide

/-- The cell tree of the base pair 172, words [5, 28]. -/
noncomputable def tree8_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c172.txt")

theorem tree8_8_ok : checkTree (spec 5 28) [] tree8_8 = true := by
  tree_decide

/-- The cell tree of the base pair 173, words [5, 29]. -/
noncomputable def tree8_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c173.txt")

theorem tree8_9_ok : checkTree (spec 5 29) [] tree8_9 = true := by
  tree_decide

/-- The cell tree of the base pair 174, words [5, 30]. -/
noncomputable def tree8_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c174.txt")

theorem tree8_10_ok : checkTree (spec 5 30) [] tree8_10 = true := by
  tree_decide

/-- The cell tree of the base pair 175, words [5, 31]. -/
noncomputable def tree8_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c175.txt")

theorem tree8_11_ok : checkTree (spec 5 31) [] tree8_11 = true := by
  tree_decide

/-- The cell tree of the base pair 176, words [5, 32]. -/
noncomputable def tree8_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c176.txt")

theorem tree8_12_ok : checkTree (spec 5 32) [] tree8_12 = true := by
  tree_decide

/-- The cell tree of the base pair 177, words [5, 33]. -/
noncomputable def tree8_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c177.txt")

theorem tree8_13_ok : checkTree (spec 5 33) [] tree8_13 = true := by
  tree_decide

/-- The cell tree of the base pair 178, words [5, 34]. -/
noncomputable def tree8_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c178.txt")

theorem tree8_14_ok : checkTree (spec 5 34) [] tree8_14 = true := by
  tree_decide

/-- The cell tree of the base pair 179, words [5, 38]. -/
noncomputable def tree8_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c179.txt")

theorem tree8_15_ok : checkTree (spec 5 38) [] tree8_15 = true := by
  tree_decide

/-- The cell tree of the base pair 180, words [5, 39]. -/
noncomputable def tree8_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c180.txt")

theorem tree8_16_ok : checkTree (spec 5 39) [] tree8_16 = true := by
  tree_decide

/-- The cell tree of the base pair 181, words [5, 40]. -/
noncomputable def tree8_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_top/c181.txt")

theorem tree8_17_ok : checkTree (spec 5 40) [] tree8_17 = true := by
  tree_decide

/-- The base pairs of chunk 8 with their trees. -/
noncomputable def chunk8 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((5, 14), tree8_0),
    ((5, 15), tree8_1),
    ((5, 16), tree8_2),
    ((5, 17), tree8_3),
    ((5, 18), tree8_4),
    ((5, 23), tree8_5),
    ((5, 24), tree8_6),
    ((5, 25), tree8_7),
    ((5, 28), tree8_8),
    ((5, 29), tree8_9),
    ((5, 30), tree8_10),
    ((5, 31), tree8_11),
    ((5, 32), tree8_12),
    ((5, 33), tree8_13),
    ((5, 34), tree8_14),
    ((5, 38), tree8_15),
    ((5, 39), tree8_16),
    ((5, 40), tree8_17)]

theorem chunk8_ok :
    chunk8.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
  simp only [chunk8, List.all_cons, List.all_nil, tree8_0_ok, tree8_1_ok, tree8_2_ok, tree8_3_ok, tree8_4_ok, tree8_5_ok, tree8_6_ok, tree8_7_ok, tree8_8_ok, tree8_9_ok, tree8_10_ok, tree8_11_ok, tree8_12_ok, tree8_13_ok, tree8_14_ok, tree8_15_ok, tree8_16_ok, tree8_17_ok, Bool.and_true]

end Heilbronn.Nine.SixBoundarySingleTop.Trees
