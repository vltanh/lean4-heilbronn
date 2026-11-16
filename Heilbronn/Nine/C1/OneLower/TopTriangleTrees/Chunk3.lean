module

public import Heilbronn.Nine.C1.OneLower.TopTriangleModel
public import Heilbronn.Common.DataReader

/-! # Top-triangle one-lower cover, chunk 3 (generated)

28 cells, 2503 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerTopTriangle.Model

open Cover

/-- The tree of the cell `(1, 1, 14)`. -/
noncomputable def tree3_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_14_-1.txt")

/-- The tree of the cell `(1, 1, 15)`. -/
noncomputable def tree3_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_15_-1.txt")

/-- The tree of the cell `(1, 1, 16)`. -/
noncomputable def tree3_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_16_-1.txt")

/-- The tree of the cell `(1, 1, 17)`. -/
noncomputable def tree3_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_17_-1.txt")

/-- The tree of the cell `(1, 2, 0)`. -/
noncomputable def tree3_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_0_-1.txt")

/-- The tree of the cell `(1, 2, 1)`. -/
noncomputable def tree3_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_1_-1.txt")

/-- The tree of the cell `(1, 2, 2)`. -/
noncomputable def tree3_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_2_-1.txt")

/-- The tree of the cell `(1, 2, 3)`. -/
noncomputable def tree3_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_3_-1.txt")

/-- The tree of the cell `(1, 2, 4)`. -/
noncomputable def tree3_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_4_-1.txt")

/-- The tree of the cell `(1, 2, 5)`. -/
noncomputable def tree3_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_5_-1.txt")

/-- The tree of the cell `(1, 2, 6)`. -/
noncomputable def tree3_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_6_-1.txt")

/-- The tree of the cell `(1, 2, 7)`. -/
noncomputable def tree3_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_7_-1.txt")

/-- The tree of the cell `(1, 2, 8)`. -/
noncomputable def tree3_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_8_-1.txt")

/-- The tree of the cell `(1, 2, 10)`. -/
noncomputable def tree3_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_10_-1.txt")

/-- The tree of the cell `(1, 2, 11)`. -/
noncomputable def tree3_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_11_-1.txt")

/-- The tree of the cell `(1, 2, 13)`. -/
noncomputable def tree3_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 0 7 8) [.node (.tri 4 6 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_13_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_13_2.txt")], .node (.tri 4 6 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_13_1.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_13_3.txt")]]

/-- The tree of the cell `(1, 2, 14)`. -/
noncomputable def tree3_16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_14_-1.txt")

/-- The tree of the cell `(1, 2, 16)`. -/
noncomputable def tree3_17 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_16_-1.txt")

/-- The tree of the cell `(1, 2, 17)`. -/
noncomputable def tree3_18 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_2_17_-1.txt")

/-- The tree of the cell `(1, 3, 0)`. -/
noncomputable def tree3_19 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_0_-1.txt")

/-- The tree of the cell `(1, 3, 1)`. -/
noncomputable def tree3_20 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_1_-1.txt")

/-- The tree of the cell `(1, 3, 2)`. -/
noncomputable def tree3_21 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_2_-1.txt")

/-- The tree of the cell `(1, 3, 3)`. -/
noncomputable def tree3_22 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_3_-1.txt")

/-- The tree of the cell `(1, 3, 4)`. -/
noncomputable def tree3_23 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_4_-1.txt")

/-- The tree of the cell `(1, 3, 5)`. -/
noncomputable def tree3_24 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_5_-1.txt")

/-- The tree of the cell `(1, 3, 6)`. -/
noncomputable def tree3_25 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_6_-1.txt")

/-- The tree of the cell `(1, 3, 7)`. -/
noncomputable def tree3_26 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_7_-1.txt")

/-- The tree of the cell `(1, 3, 8)`. -/
noncomputable def tree3_27 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_3_8_-1.txt")

/-- The cells of chunk 3 with their trees. -/
noncomputable def chunk3 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((1, 1, 14), tree3_0),
    ((1, 1, 15), tree3_1),
    ((1, 1, 16), tree3_2),
    ((1, 1, 17), tree3_3),
    ((1, 2, 0), tree3_4),
    ((1, 2, 1), tree3_5),
    ((1, 2, 2), tree3_6),
    ((1, 2, 3), tree3_7),
    ((1, 2, 4), tree3_8),
    ((1, 2, 5), tree3_9),
    ((1, 2, 6), tree3_10),
    ((1, 2, 7), tree3_11),
    ((1, 2, 8), tree3_12),
    ((1, 2, 10), tree3_13),
    ((1, 2, 11), tree3_14),
    ((1, 2, 13), tree3_15),
    ((1, 2, 14), tree3_16),
    ((1, 2, 16), tree3_17),
    ((1, 2, 17), tree3_18),
    ((1, 3, 0), tree3_19),
    ((1, 3, 1), tree3_20),
    ((1, 3, 2), tree3_21),
    ((1, 3, 3), tree3_22),
    ((1, 3, 4), tree3_23),
    ((1, 3, 5), tree3_24),
    ((1, 3, 6), tree3_25),
    ((1, 3, 7), tree3_26),
    ((1, 3, 8), tree3_27)]

theorem chunk3_ok : chunk3.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.Nine.C1OneLowerTopTriangle.Model
