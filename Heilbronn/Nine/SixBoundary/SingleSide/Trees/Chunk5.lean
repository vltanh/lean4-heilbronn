module

public import Heilbronn.Nine.SixBoundary.SingleSide.Model
public import Heilbronn.Common.DataReader

/-! # Single-side cover, chunk 5

The cell trees of 29 base cases (2368 certificate terms), each checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleSide.Trees

open Cover Model

/-- The cell tree of the base case 124, words [5, 41] (233 terms). -/
noncomputable def tree124 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c124_0.txt")

theorem tree124_ok : checkTree (spec 5 41) [] tree124 = true := by
  tree_decide

/-- The cell tree of the base case 125, words [6, 7] (9 terms). -/
noncomputable def tree125 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c125_0.txt")

theorem tree125_ok : checkTree (spec 6 7) [] tree125 = true := by
  tree_decide

/-- The cell tree of the base case 126, words [6, 9] (53 terms). -/
noncomputable def tree126 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c126_0.txt")

theorem tree126_ok : checkTree (spec 6 9) [] tree126 = true := by
  tree_decide

/-- The cell tree of the base case 127, words [6, 21] (9 terms). -/
noncomputable def tree127 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c127_0.txt")

theorem tree127_ok : checkTree (spec 6 21) [] tree127 = true := by
  tree_decide

/-- The cell tree of the base case 128, words [6, 24] (54 terms). -/
noncomputable def tree128 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c128_0.txt")

theorem tree128_ok : checkTree (spec 6 24) [] tree128 = true := by
  tree_decide

/-- The cell tree of the base case 129, words [6, 31] (127 terms). -/
noncomputable def tree129 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c129_0.txt")

theorem tree129_ok : checkTree (spec 6 31) [] tree129 = true := by
  tree_decide

/-- The cell tree of the base case 130, words [6, 33] (72 terms). -/
noncomputable def tree130 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c130_0.txt")

theorem tree130_ok : checkTree (spec 6 33) [] tree130 = true := by
  tree_decide

/-- The cell tree of the base case 131, words [6, 35] (161 terms). -/
noncomputable def tree131 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c131_0.txt")

theorem tree131_ok : checkTree (spec 6 35) [] tree131 = true := by
  tree_decide

/-- The cell tree of the base case 132, words [6, 37] (189 terms). -/
noncomputable def tree132 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c132_0.txt")

theorem tree132_ok : checkTree (spec 6 37) [] tree132 = true := by
  tree_decide

/-- The cell tree of the base case 133, words [6, 39] (142 terms). -/
noncomputable def tree133 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c133_0.txt")

theorem tree133_ok : checkTree (spec 6 39) [] tree133 = true := by
  tree_decide

/-- The cell tree of the base case 134, words [6, 41] (213 terms). -/
noncomputable def tree134 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c134_0.txt")

theorem tree134_ok : checkTree (spec 6 41) [] tree134 = true := by
  tree_decide

/-- The cell tree of the base case 135, words [7, 11] (221 terms). -/
noncomputable def tree135 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c135_0.txt")

theorem tree135_ok : checkTree (spec 7 11) [] tree135 = true := by
  tree_decide

/-- The cell tree of the base case 136, words [7, 12] (137 terms). -/
noncomputable def tree136 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c136_0.txt")

theorem tree136_ok : checkTree (spec 7 12) [] tree136 = true := by
  tree_decide

/-- The cell tree of the base case 137, words [7, 13] (52 terms). -/
noncomputable def tree137 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c137_0.txt")

theorem tree137_ok : checkTree (spec 7 13) [] tree137 = true := by
  tree_decide

/-- The cell tree of the base case 138, words [7, 17] (9 terms). -/
noncomputable def tree138 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c138_0.txt")

theorem tree138_ok : checkTree (spec 7 17) [] tree138 = true := by
  tree_decide

/-- The cell tree of the base case 139, words [7, 18] (9 terms). -/
noncomputable def tree139 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c139_0.txt")

theorem tree139_ok : checkTree (spec 7 18) [] tree139 = true := by
  tree_decide

/-- The cell tree of the base case 140, words [7, 19] (9 terms). -/
noncomputable def tree140 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c140_0.txt")

theorem tree140_ok : checkTree (spec 7 19) [] tree140 = true := by
  tree_decide

/-- The cell tree of the base case 141, words [7, 26] (105 terms). -/
noncomputable def tree141 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c141_0.txt")

theorem tree141_ok : checkTree (spec 7 26) [] tree141 = true := by
  tree_decide

/-- The cell tree of the base case 142, words [7, 28] (100 terms). -/
noncomputable def tree142 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c142_0.txt")

theorem tree142_ok : checkTree (spec 7 28) [] tree142 = true := by
  tree_decide

/-- The cell tree of the base case 143, words [7, 31] (3 terms). -/
noncomputable def tree143 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c143_0.txt")

theorem tree143_ok : checkTree (spec 7 31) [] tree143 = true := by
  tree_decide

/-- The cell tree of the base case 144, words [7, 35] (12 terms). -/
noncomputable def tree144 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c144_0.txt")

theorem tree144_ok : checkTree (spec 7 35) [] tree144 = true := by
  tree_decide

/-- The cell tree of the base case 145, words [7, 39] (12 terms). -/
noncomputable def tree145 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c145_0.txt")

theorem tree145_ok : checkTree (spec 7 39) [] tree145 = true := by
  tree_decide

/-- The cell tree of the base case 146, words [8, 3] (14 terms). -/
noncomputable def tree146 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c146_0.txt")

theorem tree146_ok : checkTree (spec 8 3) [] tree146 = true := by
  tree_decide

/-- The cell tree of the base case 147, words [8, 4] (3 terms). -/
noncomputable def tree147 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c147_0.txt")

theorem tree147_ok : checkTree (spec 8 4) [] tree147 = true := by
  tree_decide

/-- The cell tree of the base case 148, words [8, 6] (9 terms). -/
noncomputable def tree148 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c148_0.txt")

theorem tree148_ok : checkTree (spec 8 6) [] tree148 = true := by
  tree_decide

/-- The cell tree of the base case 149, words [8, 7] (3 terms). -/
noncomputable def tree149 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c149_0.txt")

theorem tree149_ok : checkTree (spec 8 7) [] tree149 = true := by
  tree_decide

/-- The cell tree of the base case 150, words [8, 9] (14 terms). -/
noncomputable def tree150 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c150_0.txt")

theorem tree150_ok : checkTree (spec 8 9) [] tree150 = true := by
  tree_decide

/-- The cell tree of the base case 151, words [8, 11] (217 terms). -/
noncomputable def tree151 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c151_0.txt")

theorem tree151_ok : checkTree (spec 8 11) [] tree151 = true := by
  tree_decide

/-- The cell tree of the base case 152, words [8, 12] (177 terms). -/
noncomputable def tree152 : Cover.Tree Split :=
  .cert (term_rows% "../../../Data/six_single_side/c152_0.txt")

theorem tree152_ok : checkTree (spec 8 12) [] tree152 = true := by
  tree_decide

/-- The base cases of chunk 5 with their trees. -/
noncomputable def chunk5 : List ((ℕ × ℕ) × Cover.Tree Split) :=
  [((5, 41), tree124),
    ((6, 7), tree125),
    ((6, 9), tree126),
    ((6, 21), tree127),
    ((6, 24), tree128),
    ((6, 31), tree129),
    ((6, 33), tree130),
    ((6, 35), tree131),
    ((6, 37), tree132),
    ((6, 39), tree133),
    ((6, 41), tree134),
    ((7, 11), tree135),
    ((7, 12), tree136),
    ((7, 13), tree137),
    ((7, 17), tree138),
    ((7, 18), tree139),
    ((7, 19), tree140),
    ((7, 26), tree141),
    ((7, 28), tree142),
    ((7, 31), tree143),
    ((7, 35), tree144),
    ((7, 39), tree145),
    ((8, 3), tree146),
    ((8, 4), tree147),
    ((8, 6), tree148),
    ((8, 7), tree149),
    ((8, 9), tree150),
    ((8, 11), tree151),
    ((8, 12), tree152)]

theorem chunk5_ok : ∀ x ∈ chunk5, checkTree (spec x.1.1 x.1.2) [] x.2 = true := by
  simp only [chunk5, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true]
  exact ⟨tree124_ok, tree125_ok, tree126_ok, tree127_ok, tree128_ok, tree129_ok, tree130_ok, tree131_ok, tree132_ok, tree133_ok, tree134_ok, tree135_ok, tree136_ok, tree137_ok, tree138_ok, tree139_ok, tree140_ok, tree141_ok, tree142_ok, tree143_ok, tree144_ok, tree145_ok, tree146_ok, tree147_ok, tree148_ok, tree149_ok, tree150_ok, tree151_ok, tree152_ok⟩

end Heilbronn.Nine.SixBoundarySingleSide.Trees
