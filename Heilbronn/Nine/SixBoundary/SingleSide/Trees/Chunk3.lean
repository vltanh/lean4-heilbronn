module

public import Heilbronn.Nine.SixBoundary.SingleSide.Model
public import Heilbronn.Common.DataReader

/-! # Single-side cover, chunk 3

The cell trees of 30 base cases (2399 certificate terms), each checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleSide.Trees

open Cover Model

/-- The cell tree of the base case 74, words [2, 28] (47 terms). -/
noncomputable def tree74 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c074_0.txt")

theorem tree74_ok : checkTree (spec 2 28) [] tree74 = true := by
  tree_decide

/-- The cell tree of the base case 75, words [2, 29] (144 terms). -/
noncomputable def tree75 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c075_0.txt")

theorem tree75_ok : checkTree (spec 2 29) [] tree75 = true := by
  tree_decide

/-- The cell tree of the base case 76, words [2, 30] (141 terms). -/
noncomputable def tree76 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c076_0.txt")

theorem tree76_ok : checkTree (spec 2 30) [] tree76 = true := by
  tree_decide

/-- The cell tree of the base case 77, words [2, 31] (146 terms). -/
noncomputable def tree77 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c077_0.txt")

theorem tree77_ok : checkTree (spec 2 31) [] tree77 = true := by
  tree_decide

/-- The cell tree of the base case 78, words [2, 32] (152 terms). -/
noncomputable def tree78 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c078_0.txt")

theorem tree78_ok : checkTree (spec 2 32) [] tree78 = true := by
  tree_decide

/-- The cell tree of the base case 79, words [2, 33] (152 terms). -/
noncomputable def tree79 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c079_0.txt")

theorem tree79_ok : checkTree (spec 2 33) [] tree79 = true := by
  tree_decide

/-- The cell tree of the base case 80, words [2, 35] (38 terms). -/
noncomputable def tree80 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c080_0.txt")

theorem tree80_ok : checkTree (spec 2 35) [] tree80 = true := by
  tree_decide

/-- The cell tree of the base case 81, words [2, 36] (26 terms). -/
noncomputable def tree81 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c081_0.txt")

theorem tree81_ok : checkTree (spec 2 36) [] tree81 = true := by
  tree_decide

/-- The cell tree of the base case 82, words [2, 37] (26 terms). -/
noncomputable def tree82 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c082_0.txt")

theorem tree82_ok : checkTree (spec 2 37) [] tree82 = true := by
  tree_decide

/-- The cell tree of the base case 83, words [2, 39] (128 terms). -/
noncomputable def tree83 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c083_0.txt")

theorem tree83_ok : checkTree (spec 2 39) [] tree83 = true := by
  tree_decide

/-- The cell tree of the base case 84, words [2, 40] (213 terms). -/
noncomputable def tree84 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c084_0.txt")

theorem tree84_ok : checkTree (spec 2 40) [] tree84 = true := by
  tree_decide

/-- The cell tree of the base case 85, words [2, 41] (164 terms). -/
noncomputable def tree85 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c085_0.txt")

theorem tree85_ok : checkTree (spec 2 41) [] tree85 = true := by
  tree_decide

/-- The cell tree of the base case 86, words [3, 7] (30 terms). -/
noncomputable def tree86 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c086_0.txt")

theorem tree86_ok : checkTree (spec 3 7) [] tree86 = true := by
  tree_decide

/-- The cell tree of the base case 87, words [3, 9] (53 terms). -/
noncomputable def tree87 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c087_0.txt")

theorem tree87_ok : checkTree (spec 3 9) [] tree87 = true := by
  tree_decide

/-- The cell tree of the base case 88, words [3, 21] (63 terms). -/
noncomputable def tree88 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c088_0.txt")

theorem tree88_ok : checkTree (spec 3 21) [] tree88 = true := by
  tree_decide

/-- The cell tree of the base case 89, words [3, 24] (79 terms). -/
noncomputable def tree89 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c089_0.txt")

theorem tree89_ok : checkTree (spec 3 24) [] tree89 = true := by
  tree_decide

/-- The cell tree of the base case 90, words [3, 31] (121 terms). -/
noncomputable def tree90 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c090_0.txt")

theorem tree90_ok : checkTree (spec 3 31) [] tree90 = true := by
  tree_decide

/-- The cell tree of the base case 91, words [3, 33] (96 terms). -/
noncomputable def tree91 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c091_0.txt")

theorem tree91_ok : checkTree (spec 3 33) [] tree91 = true := by
  tree_decide

/-- The cell tree of the base case 92, words [3, 35] (126 terms). -/
noncomputable def tree92 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c092_0.txt")

theorem tree92_ok : checkTree (spec 3 35) [] tree92 = true := by
  tree_decide

/-- The cell tree of the base case 93, words [3, 37] (42 terms). -/
noncomputable def tree93 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c093_0.txt")

theorem tree93_ok : checkTree (spec 3 37) [] tree93 = true := by
  tree_decide

/-- The cell tree of the base case 94, words [3, 39] (90 terms). -/
noncomputable def tree94 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c094_0.txt")

theorem tree94_ok : checkTree (spec 3 39) [] tree94 = true := by
  tree_decide

/-- The cell tree of the base case 95, words [3, 41] (57 terms). -/
noncomputable def tree95 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c095_0.txt")

theorem tree95_ok : checkTree (spec 3 41) [] tree95 = true := by
  tree_decide

/-- The cell tree of the base case 96, words [4, 26] (122 terms). -/
noncomputable def tree96 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c096_0.txt")

theorem tree96_ok : checkTree (spec 4 26) [] tree96 = true := by
  tree_decide

/-- The cell tree of the base case 97, words [4, 28] (85 terms). -/
noncomputable def tree97 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c097_0.txt")

theorem tree97_ok : checkTree (spec 4 28) [] tree97 = true := by
  tree_decide

/-- The cell tree of the base case 98, words [4, 31] (3 terms). -/
noncomputable def tree98 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c098_0.txt")

theorem tree98_ok : checkTree (spec 4 31) [] tree98 = true := by
  tree_decide

/-- The cell tree of the base case 99, words [4, 35] (12 terms). -/
noncomputable def tree99 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c099_0.txt")

theorem tree99_ok : checkTree (spec 4 35) [] tree99 = true := by
  tree_decide

/-- The cell tree of the base case 100, words [4, 39] (12 terms). -/
noncomputable def tree100 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c100_0.txt")

theorem tree100_ok : checkTree (spec 4 39) [] tree100 = true := by
  tree_decide

/-- The cell tree of the base case 101, words [5, 6] (14 terms). -/
noncomputable def tree101 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c101_0.txt")

theorem tree101_ok : checkTree (spec 5 6) [] tree101 = true := by
  tree_decide

/-- The cell tree of the base case 102, words [5, 7] (3 terms). -/
noncomputable def tree102 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c102_0.txt")

theorem tree102_ok : checkTree (spec 5 7) [] tree102 = true := by
  tree_decide

/-- The cell tree of the base case 103, words [5, 9] (14 terms). -/
noncomputable def tree103 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c103_0.txt")

theorem tree103_ok : checkTree (spec 5 9) [] tree103 = true := by
  tree_decide

/-- The base cases of chunk 3 with their trees. -/
noncomputable def chunk3 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((2, 28), tree74),
    ((2, 29), tree75),
    ((2, 30), tree76),
    ((2, 31), tree77),
    ((2, 32), tree78),
    ((2, 33), tree79),
    ((2, 35), tree80),
    ((2, 36), tree81),
    ((2, 37), tree82),
    ((2, 39), tree83),
    ((2, 40), tree84),
    ((2, 41), tree85),
    ((3, 7), tree86),
    ((3, 9), tree87),
    ((3, 21), tree88),
    ((3, 24), tree89),
    ((3, 31), tree90),
    ((3, 33), tree91),
    ((3, 35), tree92),
    ((3, 37), tree93),
    ((3, 39), tree94),
    ((3, 41), tree95),
    ((4, 26), tree96),
    ((4, 28), tree97),
    ((4, 31), tree98),
    ((4, 35), tree99),
    ((4, 39), tree100),
    ((5, 6), tree101),
    ((5, 7), tree102),
    ((5, 9), tree103)]

theorem chunk3_ok : ∀ x ∈ chunk3, checkTree (spec x.1.1 x.1.2) [] x.2 = true := by
  simp only [chunk3, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true]
  exact ⟨tree74_ok, tree75_ok, tree76_ok, tree77_ok, tree78_ok, tree79_ok, tree80_ok, tree81_ok, tree82_ok, tree83_ok, tree84_ok, tree85_ok, tree86_ok, tree87_ok, tree88_ok, tree89_ok, tree90_ok, tree91_ok, tree92_ok, tree93_ok, tree94_ok, tree95_ok, tree96_ok, tree97_ok, tree98_ok, tree99_ok, tree100_ok, tree101_ok, tree102_ok, tree103_ok⟩

end Heilbronn.Nine.SixBoundarySingleSide.Trees
