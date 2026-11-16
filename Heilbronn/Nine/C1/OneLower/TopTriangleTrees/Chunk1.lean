module

public import Heilbronn.Nine.C1.OneLower.TopTriangleModel
public import Heilbronn.Common.DataReader

/-! # Top-triangle one-lower cover, chunk 1 (generated)

38 cells, 2594 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerTopTriangle.Model

open Cover

/-- The tree of the cell `(0, 2, 10)`. -/
noncomputable def tree1_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_2_10_-1.txt")

/-- The tree of the cell `(0, 2, 11)`. -/
noncomputable def tree1_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_2_11_-1.txt")

/-- The tree of the cell `(0, 2, 13)`. -/
noncomputable def tree1_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_2_13_-1.txt")

/-- The tree of the cell `(0, 2, 14)`. -/
noncomputable def tree1_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_2_14_-1.txt")

/-- The tree of the cell `(0, 2, 16)`. -/
noncomputable def tree1_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_2_16_-1.txt")

/-- The tree of the cell `(0, 2, 17)`. -/
noncomputable def tree1_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_2_17_-1.txt")

/-- The tree of the cell `(0, 3, 0)`. -/
noncomputable def tree1_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_0_-1.txt")

/-- The tree of the cell `(0, 3, 1)`. -/
noncomputable def tree1_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_1_-1.txt")

/-- The tree of the cell `(0, 3, 2)`. -/
noncomputable def tree1_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_2_-1.txt")

/-- The tree of the cell `(0, 3, 3)`. -/
noncomputable def tree1_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_3_-1.txt")

/-- The tree of the cell `(0, 3, 4)`. -/
noncomputable def tree1_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_4_-1.txt")

/-- The tree of the cell `(0, 3, 5)`. -/
noncomputable def tree1_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_5_-1.txt")

/-- The tree of the cell `(0, 3, 6)`. -/
noncomputable def tree1_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 1 7 8) [.node (.tri 3 6 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_6_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_6_2.txt")], .node (.tri 3 6 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_6_1.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_6_3.txt")]]

/-- The tree of the cell `(0, 3, 7)`. -/
noncomputable def tree1_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_7_-1.txt")

/-- The tree of the cell `(0, 3, 8)`. -/
noncomputable def tree1_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_8_-1.txt")

/-- The tree of the cell `(0, 3, 9)`. -/
noncomputable def tree1_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_9_-1.txt")

/-- The tree of the cell `(0, 3, 10)`. -/
noncomputable def tree1_16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_10_-1.txt")

/-- The tree of the cell `(0, 3, 11)`. -/
noncomputable def tree1_17 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_11_-1.txt")

/-- The tree of the cell `(0, 3, 12)`. -/
noncomputable def tree1_18 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_12_-1.txt")

/-- The tree of the cell `(0, 3, 13)`. -/
noncomputable def tree1_19 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_13_-1.txt")

/-- The tree of the cell `(0, 3, 14)`. -/
noncomputable def tree1_20 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_14_-1.txt")

/-- The tree of the cell `(0, 3, 15)`. -/
noncomputable def tree1_21 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_15_-1.txt")

/-- The tree of the cell `(0, 3, 16)`. -/
noncomputable def tree1_22 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_16_-1.txt")

/-- The tree of the cell `(0, 3, 17)`. -/
noncomputable def tree1_23 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_0_3_17_-1.txt")

/-- The tree of the cell `(1, 0, 1)`. -/
noncomputable def tree1_24 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_1_-1.txt")

/-- The tree of the cell `(1, 0, 2)`. -/
noncomputable def tree1_25 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_2_-1.txt")

/-- The tree of the cell `(1, 0, 9)`. -/
noncomputable def tree1_26 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_9_-1.txt")

/-- The tree of the cell `(1, 0, 10)`. -/
noncomputable def tree1_27 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_10_-1.txt")

/-- The tree of the cell `(1, 0, 11)`. -/
noncomputable def tree1_28 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_11_-1.txt")

/-- The tree of the cell `(1, 0, 12)`. -/
noncomputable def tree1_29 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_12_-1.txt")

/-- The tree of the cell `(1, 0, 13)`. -/
noncomputable def tree1_30 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_13_-1.txt")

/-- The tree of the cell `(1, 0, 14)`. -/
noncomputable def tree1_31 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_14_-1.txt")

/-- The tree of the cell `(1, 0, 15)`. -/
noncomputable def tree1_32 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_15_-1.txt")

/-- The tree of the cell `(1, 0, 16)`. -/
noncomputable def tree1_33 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_16_-1.txt")

/-- The tree of the cell `(1, 0, 17)`. -/
noncomputable def tree1_34 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_0_17_-1.txt")

/-- The tree of the cell `(1, 1, 0)`. -/
noncomputable def tree1_35 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_0_-1.txt")

/-- The tree of the cell `(1, 1, 9)`. -/
noncomputable def tree1_36 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_9_-1.txt")

/-- The tree of the cell `(1, 1, 10)`. -/
noncomputable def tree1_37 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_10_-1.txt")

/-- The cells of chunk 1 with their trees. -/
noncomputable def chunk1 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((0, 2, 10), tree1_0),
    ((0, 2, 11), tree1_1),
    ((0, 2, 13), tree1_2),
    ((0, 2, 14), tree1_3),
    ((0, 2, 16), tree1_4),
    ((0, 2, 17), tree1_5),
    ((0, 3, 0), tree1_6),
    ((0, 3, 1), tree1_7),
    ((0, 3, 2), tree1_8),
    ((0, 3, 3), tree1_9),
    ((0, 3, 4), tree1_10),
    ((0, 3, 5), tree1_11),
    ((0, 3, 6), tree1_12),
    ((0, 3, 7), tree1_13),
    ((0, 3, 8), tree1_14),
    ((0, 3, 9), tree1_15),
    ((0, 3, 10), tree1_16),
    ((0, 3, 11), tree1_17),
    ((0, 3, 12), tree1_18),
    ((0, 3, 13), tree1_19),
    ((0, 3, 14), tree1_20),
    ((0, 3, 15), tree1_21),
    ((0, 3, 16), tree1_22),
    ((0, 3, 17), tree1_23),
    ((1, 0, 1), tree1_24),
    ((1, 0, 2), tree1_25),
    ((1, 0, 9), tree1_26),
    ((1, 0, 10), tree1_27),
    ((1, 0, 11), tree1_28),
    ((1, 0, 12), tree1_29),
    ((1, 0, 13), tree1_30),
    ((1, 0, 14), tree1_31),
    ((1, 0, 15), tree1_32),
    ((1, 0, 16), tree1_33),
    ((1, 0, 17), tree1_34),
    ((1, 1, 0), tree1_35),
    ((1, 1, 9), tree1_36),
    ((1, 1, 10), tree1_37)]

theorem chunk1_ok : chunk1.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.Nine.C1OneLowerTopTriangle.Model
