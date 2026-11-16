module

public import Heilbronn.C1.OneLower.TopTriangleModel
public import Heilbronn.Common.DataReader

/-! # Top-triangle one-lower cover, chunk 8 (generated)

54 cells, 1761 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerTopTriangle.Model

open Cover

/-- The tree of the cell `(2, 3, 7)`. -/
noncomputable def tree8_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_3_7_-1.txt")

/-- The tree of the cell `(2, 3, 8)`. -/
noncomputable def tree8_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_3_8_-1.txt")

/-- The tree of the cell `(2, 3, 15)`. -/
noncomputable def tree8_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_2_3_15_-1.txt")

/-- The tree of the cell `(3, 0, 1)`. -/
noncomputable def tree8_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_1_-1.txt")

/-- The tree of the cell `(3, 0, 2)`. -/
noncomputable def tree8_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_2_-1.txt")

/-- The tree of the cell `(3, 0, 5)`. -/
noncomputable def tree8_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_5_-1.txt")

/-- The tree of the cell `(3, 0, 6)`. -/
noncomputable def tree8_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_6_-1.txt")

/-- The tree of the cell `(3, 0, 7)`. -/
noncomputable def tree8_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_7_-1.txt")

/-- The tree of the cell `(3, 0, 8)`. -/
noncomputable def tree8_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_8_-1.txt")

/-- The tree of the cell `(3, 0, 9)`. -/
noncomputable def tree8_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_9_-1.txt")

/-- The tree of the cell `(3, 0, 10)`. -/
noncomputable def tree8_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_10_-1.txt")

/-- The tree of the cell `(3, 0, 11)`. -/
noncomputable def tree8_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_11_-1.txt")

/-- The tree of the cell `(3, 0, 12)`. -/
noncomputable def tree8_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_12_-1.txt")

/-- The tree of the cell `(3, 0, 13)`. -/
noncomputable def tree8_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_13_-1.txt")

/-- The tree of the cell `(3, 0, 14)`. -/
noncomputable def tree8_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_0_14_-1.txt")

/-- The tree of the cell `(3, 1, 0)`. -/
noncomputable def tree8_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_0_-1.txt")

/-- The tree of the cell `(3, 1, 1)`. -/
noncomputable def tree8_16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_1_-1.txt")

/-- The tree of the cell `(3, 1, 2)`. -/
noncomputable def tree8_17 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_2_-1.txt")

/-- The tree of the cell `(3, 1, 3)`. -/
noncomputable def tree8_18 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_3_-1.txt")

/-- The tree of the cell `(3, 1, 4)`. -/
noncomputable def tree8_19 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_4_-1.txt")

/-- The tree of the cell `(3, 1, 5)`. -/
noncomputable def tree8_20 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_5_-1.txt")

/-- The tree of the cell `(3, 1, 6)`. -/
noncomputable def tree8_21 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_6_-1.txt")

/-- The tree of the cell `(3, 1, 7)`. -/
noncomputable def tree8_22 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_7_-1.txt")

/-- The tree of the cell `(3, 1, 8)`. -/
noncomputable def tree8_23 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_8_-1.txt")

/-- The tree of the cell `(3, 1, 9)`. -/
noncomputable def tree8_24 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_9_-1.txt")

/-- The tree of the cell `(3, 1, 10)`. -/
noncomputable def tree8_25 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_10_-1.txt")

/-- The tree of the cell `(3, 1, 11)`. -/
noncomputable def tree8_26 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_11_-1.txt")

/-- The tree of the cell `(3, 1, 12)`. -/
noncomputable def tree8_27 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_12_-1.txt")

/-- The tree of the cell `(3, 1, 13)`. -/
noncomputable def tree8_28 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_13_-1.txt")

/-- The tree of the cell `(3, 1, 14)`. -/
noncomputable def tree8_29 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_1_14_-1.txt")

/-- The tree of the cell `(3, 2, 0)`. -/
noncomputable def tree8_30 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_0_-1.txt")

/-- The tree of the cell `(3, 2, 1)`. -/
noncomputable def tree8_31 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_1_-1.txt")

/-- The tree of the cell `(3, 2, 2)`. -/
noncomputable def tree8_32 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_2_-1.txt")

/-- The tree of the cell `(3, 2, 3)`. -/
noncomputable def tree8_33 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_3_-1.txt")

/-- The tree of the cell `(3, 2, 4)`. -/
noncomputable def tree8_34 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_4_-1.txt")

/-- The tree of the cell `(3, 2, 5)`. -/
noncomputable def tree8_35 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_5_-1.txt")

/-- The tree of the cell `(3, 2, 6)`. -/
noncomputable def tree8_36 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_6_-1.txt")

/-- The tree of the cell `(3, 2, 7)`. -/
noncomputable def tree8_37 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_7_-1.txt")

/-- The tree of the cell `(3, 2, 8)`. -/
noncomputable def tree8_38 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_8_-1.txt")

/-- The tree of the cell `(3, 2, 10)`. -/
noncomputable def tree8_39 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_10_-1.txt")

/-- The tree of the cell `(3, 2, 11)`. -/
noncomputable def tree8_40 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_11_-1.txt")

/-- The tree of the cell `(3, 2, 13)`. -/
noncomputable def tree8_41 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_13_-1.txt")

/-- The tree of the cell `(3, 2, 14)`. -/
noncomputable def tree8_42 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_2_14_-1.txt")

/-- The tree of the cell `(3, 3, 0)`. -/
noncomputable def tree8_43 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_0_-1.txt")

/-- The tree of the cell `(3, 3, 1)`. -/
noncomputable def tree8_44 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_1_-1.txt")

/-- The tree of the cell `(3, 3, 2)`. -/
noncomputable def tree8_45 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_2_-1.txt")

/-- The tree of the cell `(3, 3, 3)`. -/
noncomputable def tree8_46 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_3_-1.txt")

/-- The tree of the cell `(3, 3, 4)`. -/
noncomputable def tree8_47 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_4_-1.txt")

/-- The tree of the cell `(3, 3, 5)`. -/
noncomputable def tree8_48 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_5_-1.txt")

/-- The tree of the cell `(3, 3, 6)`. -/
noncomputable def tree8_49 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_6_-1.txt")

/-- The tree of the cell `(3, 3, 7)`. -/
noncomputable def tree8_50 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_7_-1.txt")

/-- The tree of the cell `(3, 3, 8)`. -/
noncomputable def tree8_51 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_8_-1.txt")

/-- The tree of the cell `(3, 3, 9)`. -/
noncomputable def tree8_52 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_9_-1.txt")

/-- The tree of the cell `(3, 3, 12)`. -/
noncomputable def tree8_53 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_tt/t_3_3_12_-1.txt")

/-- The cells of chunk 8 with their trees. -/
noncomputable def chunk8 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((2, 3, 7), tree8_0),
    ((2, 3, 8), tree8_1),
    ((2, 3, 15), tree8_2),
    ((3, 0, 1), tree8_3),
    ((3, 0, 2), tree8_4),
    ((3, 0, 5), tree8_5),
    ((3, 0, 6), tree8_6),
    ((3, 0, 7), tree8_7),
    ((3, 0, 8), tree8_8),
    ((3, 0, 9), tree8_9),
    ((3, 0, 10), tree8_10),
    ((3, 0, 11), tree8_11),
    ((3, 0, 12), tree8_12),
    ((3, 0, 13), tree8_13),
    ((3, 0, 14), tree8_14),
    ((3, 1, 0), tree8_15),
    ((3, 1, 1), tree8_16),
    ((3, 1, 2), tree8_17),
    ((3, 1, 3), tree8_18),
    ((3, 1, 4), tree8_19),
    ((3, 1, 5), tree8_20),
    ((3, 1, 6), tree8_21),
    ((3, 1, 7), tree8_22),
    ((3, 1, 8), tree8_23),
    ((3, 1, 9), tree8_24),
    ((3, 1, 10), tree8_25),
    ((3, 1, 11), tree8_26),
    ((3, 1, 12), tree8_27),
    ((3, 1, 13), tree8_28),
    ((3, 1, 14), tree8_29),
    ((3, 2, 0), tree8_30),
    ((3, 2, 1), tree8_31),
    ((3, 2, 2), tree8_32),
    ((3, 2, 3), tree8_33),
    ((3, 2, 4), tree8_34),
    ((3, 2, 5), tree8_35),
    ((3, 2, 6), tree8_36),
    ((3, 2, 7), tree8_37),
    ((3, 2, 8), tree8_38),
    ((3, 2, 10), tree8_39),
    ((3, 2, 11), tree8_40),
    ((3, 2, 13), tree8_41),
    ((3, 2, 14), tree8_42),
    ((3, 3, 0), tree8_43),
    ((3, 3, 1), tree8_44),
    ((3, 3, 2), tree8_45),
    ((3, 3, 3), tree8_46),
    ((3, 3, 4), tree8_47),
    ((3, 3, 5), tree8_48),
    ((3, 3, 6), tree8_49),
    ((3, 3, 7), tree8_50),
    ((3, 3, 8), tree8_51),
    ((3, 3, 9), tree8_52),
    ((3, 3, 12), tree8_53)]

theorem chunk8_ok : chunk8.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerTopTriangle.Model
