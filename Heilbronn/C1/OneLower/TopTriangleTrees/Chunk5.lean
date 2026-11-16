module

public import Heilbronn.C1.OneLower.TopTriangleModel
public import Heilbronn.Common.DataReader

/-! # Top-triangle one-lower cover, chunk 5 (generated)

26 cells, 1870 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerTopTriangle.Model

open Cover

/-- The tree of the cell `(2, 1, 4)`. -/
noncomputable def tree5_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_4_-1.txt")

/-- The tree of the cell `(2, 1, 5)`. -/
noncomputable def tree5_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_5_-1.txt")

/-- The tree of the cell `(2, 1, 6)`. -/
noncomputable def tree5_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_6_-1.txt")

/-- The tree of the cell `(2, 1, 7)`. -/
noncomputable def tree5_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_7_-1.txt")

/-- The tree of the cell `(2, 1, 8)`. -/
noncomputable def tree5_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_8_-1.txt")

/-- The tree of the cell `(2, 1, 9)`. -/
noncomputable def tree5_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_9_-1.txt")

/-- The tree of the cell `(2, 1, 10)`. -/
noncomputable def tree5_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_10_-1.txt")

/-- The tree of the cell `(2, 1, 11)`. -/
noncomputable def tree5_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_11_-1.txt")

/-- The tree of the cell `(2, 1, 12)`. -/
noncomputable def tree5_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_12_-1.txt")

/-- The tree of the cell `(2, 1, 13)`. -/
noncomputable def tree5_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_13_-1.txt")

/-- The tree of the cell `(2, 1, 14)`. -/
noncomputable def tree5_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_14_-1.txt")

/-- The tree of the cell `(2, 1, 15)`. -/
noncomputable def tree5_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_15_-1.txt")

/-- The tree of the cell `(2, 1, 16)`. -/
noncomputable def tree5_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_16_-1.txt")

/-- The tree of the cell `(2, 1, 17)`. -/
noncomputable def tree5_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_1_17_-1.txt")

/-- The tree of the cell `(2, 2, 0)`. -/
noncomputable def tree5_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_0_-1.txt")

/-- The tree of the cell `(2, 2, 1)`. -/
noncomputable def tree5_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_1_-1.txt")

/-- The tree of the cell `(2, 2, 2)`. -/
noncomputable def tree5_16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_2_-1.txt")

/-- The tree of the cell `(2, 2, 3)`. -/
noncomputable def tree5_17 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_3_-1.txt")

/-- The tree of the cell `(2, 2, 4)`. -/
noncomputable def tree5_18 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_4_-1.txt")

/-- The tree of the cell `(2, 2, 5)`. -/
noncomputable def tree5_19 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_5_-1.txt")

/-- The tree of the cell `(2, 2, 6)`. -/
noncomputable def tree5_20 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_6_-1.txt")

/-- The tree of the cell `(2, 2, 7)`. -/
noncomputable def tree5_21 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_7_-1.txt")

/-- The tree of the cell `(2, 2, 8)`. -/
noncomputable def tree5_22 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_8_-1.txt")

/-- The tree of the cell `(2, 2, 16)`. -/
noncomputable def tree5_23 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_16_-1.txt")

/-- The tree of the cell `(2, 2, 17)`. -/
noncomputable def tree5_24 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_2_17_-1.txt")

/-- The tree of the cell `(2, 3, 0)`. -/
noncomputable def tree5_25 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_3_0_-1.txt")

/-- The cells of chunk 5 with their trees. -/
noncomputable def chunk5 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((2, 1, 4), tree5_0),
    ((2, 1, 5), tree5_1),
    ((2, 1, 6), tree5_2),
    ((2, 1, 7), tree5_3),
    ((2, 1, 8), tree5_4),
    ((2, 1, 9), tree5_5),
    ((2, 1, 10), tree5_6),
    ((2, 1, 11), tree5_7),
    ((2, 1, 12), tree5_8),
    ((2, 1, 13), tree5_9),
    ((2, 1, 14), tree5_10),
    ((2, 1, 15), tree5_11),
    ((2, 1, 16), tree5_12),
    ((2, 1, 17), tree5_13),
    ((2, 2, 0), tree5_14),
    ((2, 2, 1), tree5_15),
    ((2, 2, 2), tree5_16),
    ((2, 2, 3), tree5_17),
    ((2, 2, 4), tree5_18),
    ((2, 2, 5), tree5_19),
    ((2, 2, 6), tree5_20),
    ((2, 2, 7), tree5_21),
    ((2, 2, 8), tree5_22),
    ((2, 2, 16), tree5_23),
    ((2, 2, 17), tree5_24),
    ((2, 3, 0), tree5_25)]

theorem chunk5_ok : chunk5.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerTopTriangle.Model
