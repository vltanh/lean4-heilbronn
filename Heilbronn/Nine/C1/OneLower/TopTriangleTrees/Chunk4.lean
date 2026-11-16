module

public import Heilbronn.Nine.C1.OneLower.TopTriangleModel
public import Heilbronn.Common.DataReader

/-! # Top-triangle one-lower cover, chunk 4 (generated)

28 cells, 2508 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerTopTriangle.Model

open Cover

/-- The tree of the cell `(1, 3, 9)`. -/
noncomputable def tree4_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_9_-1.txt")

/-- The tree of the cell `(1, 3, 10)`. -/
noncomputable def tree4_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_10_-1.txt")

/-- The tree of the cell `(1, 3, 11)`. -/
noncomputable def tree4_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_11_-1.txt")

/-- The tree of the cell `(1, 3, 12)`. -/
noncomputable def tree4_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_12_-1.txt")

/-- The tree of the cell `(1, 3, 13)`. -/
noncomputable def tree4_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_13_-1.txt")

/-- The tree of the cell `(1, 3, 14)`. -/
noncomputable def tree4_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_14_-1.txt")

/-- The tree of the cell `(1, 3, 15)`. -/
noncomputable def tree4_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_15_-1.txt")

/-- The tree of the cell `(1, 3, 16)`. -/
noncomputable def tree4_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_16_-1.txt")

/-- The tree of the cell `(1, 3, 17)`. -/
noncomputable def tree4_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_1_3_17_-1.txt")

/-- The tree of the cell `(2, 0, 1)`. -/
noncomputable def tree4_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_1_-1.txt")

/-- The tree of the cell `(2, 0, 2)`. -/
noncomputable def tree4_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_2_-1.txt")

/-- The tree of the cell `(2, 0, 5)`. -/
noncomputable def tree4_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_5_-1.txt")

/-- The tree of the cell `(2, 0, 6)`. -/
noncomputable def tree4_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 0 7 8) [.node (.tri 2 6 8) [.cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_6_0.txt"), .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_6_2.txt")], .node (.tri 2 6 8) [.cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_6_1.txt"), .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_6_3.txt")]]

/-- The tree of the cell `(2, 0, 7)`. -/
noncomputable def tree4_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_7_-1.txt")

/-- The tree of the cell `(2, 0, 8)`. -/
noncomputable def tree4_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_8_-1.txt")

/-- The tree of the cell `(2, 0, 9)`. -/
noncomputable def tree4_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_9_-1.txt")

/-- The tree of the cell `(2, 0, 10)`. -/
noncomputable def tree4_16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_10_-1.txt")

/-- The tree of the cell `(2, 0, 11)`. -/
noncomputable def tree4_17 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_11_-1.txt")

/-- The tree of the cell `(2, 0, 12)`. -/
noncomputable def tree4_18 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_12_-1.txt")

/-- The tree of the cell `(2, 0, 13)`. -/
noncomputable def tree4_19 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_13_-1.txt")

/-- The tree of the cell `(2, 0, 14)`. -/
noncomputable def tree4_20 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_14_-1.txt")

/-- The tree of the cell `(2, 0, 15)`. -/
noncomputable def tree4_21 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_15_-1.txt")

/-- The tree of the cell `(2, 0, 16)`. -/
noncomputable def tree4_22 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_16_-1.txt")

/-- The tree of the cell `(2, 0, 17)`. -/
noncomputable def tree4_23 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_0_17_-1.txt")

/-- The tree of the cell `(2, 1, 0)`. -/
noncomputable def tree4_24 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_1_0_-1.txt")

/-- The tree of the cell `(2, 1, 1)`. -/
noncomputable def tree4_25 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_1_1_-1.txt")

/-- The tree of the cell `(2, 1, 2)`. -/
noncomputable def tree4_26 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_1_2_-1.txt")

/-- The tree of the cell `(2, 1, 3)`. -/
noncomputable def tree4_27 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_tt/t_2_1_3_-1.txt")

/-- The cells of chunk 4 with their trees. -/
noncomputable def chunk4 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((1, 3, 9), tree4_0),
    ((1, 3, 10), tree4_1),
    ((1, 3, 11), tree4_2),
    ((1, 3, 12), tree4_3),
    ((1, 3, 13), tree4_4),
    ((1, 3, 14), tree4_5),
    ((1, 3, 15), tree4_6),
    ((1, 3, 16), tree4_7),
    ((1, 3, 17), tree4_8),
    ((2, 0, 1), tree4_9),
    ((2, 0, 2), tree4_10),
    ((2, 0, 5), tree4_11),
    ((2, 0, 6), tree4_12),
    ((2, 0, 7), tree4_13),
    ((2, 0, 8), tree4_14),
    ((2, 0, 9), tree4_15),
    ((2, 0, 10), tree4_16),
    ((2, 0, 11), tree4_17),
    ((2, 0, 12), tree4_18),
    ((2, 0, 13), tree4_19),
    ((2, 0, 14), tree4_20),
    ((2, 0, 15), tree4_21),
    ((2, 0, 16), tree4_22),
    ((2, 0, 17), tree4_23),
    ((2, 1, 0), tree4_24),
    ((2, 1, 1), tree4_25),
    ((2, 1, 2), tree4_26),
    ((2, 1, 3), tree4_27)]

theorem chunk4_ok : chunk4.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerTopTriangle.Model
