module

public import Heilbronn.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 8 (generated)

36 cells, 2593 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 3, 17)`. -/
noncomputable def tree8_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 2 7 8) [.node (.tri 3 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_17_0.txt"), .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_17_2.txt")], .node (.tri 3 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_17_1.txt"), .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_17_3.txt")]]

/-- The tree of the cell `(false, 3, 18)`. -/
noncomputable def tree8_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_18_0.txt")

/-- The tree of the cell `(false, 3, 19)`. -/
noncomputable def tree8_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_19_0.txt")

/-- The tree of the cell `(false, 3, 20)`. -/
noncomputable def tree8_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_20_0.txt")

/-- The tree of the cell `(false, 3, 21)`. -/
noncomputable def tree8_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_21_0.txt")

/-- The tree of the cell `(false, 3, 22)`. -/
noncomputable def tree8_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_22_0.txt")

/-- The tree of the cell `(false, 3, 23)`. -/
noncomputable def tree8_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_23_0.txt")

/-- The tree of the cell `(false, 3, 24)`. -/
noncomputable def tree8_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_24_0.txt")

/-- The tree of the cell `(false, 3, 25)`. -/
noncomputable def tree8_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_25_0.txt")

/-- The tree of the cell `(false, 3, 26)`. -/
noncomputable def tree8_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_26_0.txt")

/-- The tree of the cell `(false, 3, 27)`. -/
noncomputable def tree8_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_27_0.txt")

/-- The tree of the cell `(false, 3, 28)`. -/
noncomputable def tree8_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_28_0.txt")

/-- The tree of the cell `(false, 3, 29)`. -/
noncomputable def tree8_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_29_0.txt")

/-- The tree of the cell `(false, 3, 30)`. -/
noncomputable def tree8_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_30_0.txt")

/-- The tree of the cell `(false, 3, 31)`. -/
noncomputable def tree8_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_31_0.txt")

/-- The tree of the cell `(false, 3, 32)`. -/
noncomputable def tree8_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_32_0.txt")

/-- The tree of the cell `(false, 4, 0)`. -/
noncomputable def tree8_16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_0_0.txt")

/-- The tree of the cell `(false, 4, 1)`. -/
noncomputable def tree8_17 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_1_0.txt")

/-- The tree of the cell `(false, 4, 2)`. -/
noncomputable def tree8_18 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_2_0.txt")

/-- The tree of the cell `(false, 4, 3)`. -/
noncomputable def tree8_19 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_3_0.txt")

/-- The tree of the cell `(false, 4, 4)`. -/
noncomputable def tree8_20 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_4_0.txt")

/-- The tree of the cell `(false, 4, 5)`. -/
noncomputable def tree8_21 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_5_0.txt")

/-- The tree of the cell `(false, 4, 6)`. -/
noncomputable def tree8_22 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_6_0.txt")

/-- The tree of the cell `(false, 4, 7)`. -/
noncomputable def tree8_23 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_7_0.txt")

/-- The tree of the cell `(false, 4, 8)`. -/
noncomputable def tree8_24 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_8_0.txt")

/-- The tree of the cell `(false, 4, 9)`. -/
noncomputable def tree8_25 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_9_0.txt")

/-- The tree of the cell `(false, 4, 10)`. -/
noncomputable def tree8_26 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_10_0.txt")

/-- The tree of the cell `(false, 4, 11)`. -/
noncomputable def tree8_27 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_11_0.txt")

/-- The tree of the cell `(false, 4, 12)`. -/
noncomputable def tree8_28 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_12_0.txt")

/-- The tree of the cell `(false, 4, 13)`. -/
noncomputable def tree8_29 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_13_0.txt")

/-- The tree of the cell `(false, 4, 14)`. -/
noncomputable def tree8_30 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_14_0.txt")

/-- The tree of the cell `(false, 4, 15)`. -/
noncomputable def tree8_31 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_15_0.txt")

/-- The tree of the cell `(false, 4, 16)`. -/
noncomputable def tree8_32 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_16_0.txt")

/-- The tree of the cell `(false, 4, 17)`. -/
noncomputable def tree8_33 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_17_0.txt")

/-- The tree of the cell `(false, 4, 18)`. -/
noncomputable def tree8_34 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_18_0.txt")

/-- The tree of the cell `(false, 4, 19)`. -/
noncomputable def tree8_35 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_4_19_0.txt")

/-- The cells of chunk 8 with their trees. -/
noncomputable def chunk8 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 3, 17), tree8_0),
    ((false, 3, 18), tree8_1),
    ((false, 3, 19), tree8_2),
    ((false, 3, 20), tree8_3),
    ((false, 3, 21), tree8_4),
    ((false, 3, 22), tree8_5),
    ((false, 3, 23), tree8_6),
    ((false, 3, 24), tree8_7),
    ((false, 3, 25), tree8_8),
    ((false, 3, 26), tree8_9),
    ((false, 3, 27), tree8_10),
    ((false, 3, 28), tree8_11),
    ((false, 3, 29), tree8_12),
    ((false, 3, 30), tree8_13),
    ((false, 3, 31), tree8_14),
    ((false, 3, 32), tree8_15),
    ((false, 4, 0), tree8_16),
    ((false, 4, 1), tree8_17),
    ((false, 4, 2), tree8_18),
    ((false, 4, 3), tree8_19),
    ((false, 4, 4), tree8_20),
    ((false, 4, 5), tree8_21),
    ((false, 4, 6), tree8_22),
    ((false, 4, 7), tree8_23),
    ((false, 4, 8), tree8_24),
    ((false, 4, 9), tree8_25),
    ((false, 4, 10), tree8_26),
    ((false, 4, 11), tree8_27),
    ((false, 4, 12), tree8_28),
    ((false, 4, 13), tree8_29),
    ((false, 4, 14), tree8_30),
    ((false, 4, 15), tree8_31),
    ((false, 4, 16), tree8_32),
    ((false, 4, 17), tree8_33),
    ((false, 4, 18), tree8_34),
    ((false, 4, 19), tree8_35)]

theorem chunk8_ok : chunk8.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerConvexTop.Model
