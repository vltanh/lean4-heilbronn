module

public import Heilbronn.Nine.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 9 (generated)

32 cells, 2566 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 4, 20)`. -/
noncomputable def tree9_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_20_0.txt")

/-- The tree of the cell `(false, 4, 21)`. -/
noncomputable def tree9_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_21_0.txt")

/-- The tree of the cell `(false, 4, 22)`. -/
noncomputable def tree9_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_22_0.txt")

/-- The tree of the cell `(false, 4, 23)`. -/
noncomputable def tree9_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_23_0.txt")

/-- The tree of the cell `(false, 4, 24)`. -/
noncomputable def tree9_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_24_0.txt")

/-- The tree of the cell `(false, 4, 25)`. -/
noncomputable def tree9_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_25_0.txt")

/-- The tree of the cell `(false, 4, 26)`. -/
noncomputable def tree9_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_26_0.txt")

/-- The tree of the cell `(false, 4, 27)`. -/
noncomputable def tree9_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_27_0.txt")

/-- The tree of the cell `(false, 4, 28)`. -/
noncomputable def tree9_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_4_28_0.txt")

/-- The tree of the cell `(true, 0, 0)`. -/
noncomputable def tree9_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_0_0.txt")

/-- The tree of the cell `(true, 0, 1)`. -/
noncomputable def tree9_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_1_0.txt")

/-- The tree of the cell `(true, 0, 2)`. -/
noncomputable def tree9_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_2_0.txt")

/-- The tree of the cell `(true, 0, 3)`. -/
noncomputable def tree9_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_3_0.txt")

/-- The tree of the cell `(true, 0, 4)`. -/
noncomputable def tree9_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_4_0.txt")

/-- The tree of the cell `(true, 0, 5)`. -/
noncomputable def tree9_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_5_0.txt")

/-- The tree of the cell `(true, 0, 6)`. -/
noncomputable def tree9_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_6_0.txt")

/-- The tree of the cell `(true, 0, 7)`. -/
noncomputable def tree9_16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_7_0.txt")

/-- The tree of the cell `(true, 0, 8)`. -/
noncomputable def tree9_17 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_8_0.txt")

/-- The tree of the cell `(true, 0, 9)`. -/
noncomputable def tree9_18 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_0_9_0.txt")

/-- The tree of the cell `(true, 1, 0)`. -/
noncomputable def tree9_19 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_0_0.txt")

/-- The tree of the cell `(true, 1, 1)`. -/
noncomputable def tree9_20 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_1_0.txt")

/-- The tree of the cell `(true, 1, 2)`. -/
noncomputable def tree9_21 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_2_0.txt")

/-- The tree of the cell `(true, 1, 3)`. -/
noncomputable def tree9_22 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_3_0.txt")

/-- The tree of the cell `(true, 1, 4)`. -/
noncomputable def tree9_23 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_4_0.txt")

/-- The tree of the cell `(true, 1, 5)`. -/
noncomputable def tree9_24 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_5_0.txt")

/-- The tree of the cell `(true, 1, 6)`. -/
noncomputable def tree9_25 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 4 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_6_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_6_1.txt")]

/-- The tree of the cell `(true, 1, 7)`. -/
noncomputable def tree9_26 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_7_0.txt")

/-- The tree of the cell `(true, 1, 8)`. -/
noncomputable def tree9_27 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_8_0.txt")

/-- The tree of the cell `(true, 1, 9)`. -/
noncomputable def tree9_28 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_1_9_0.txt")

/-- The tree of the cell `(true, 2, 0)`. -/
noncomputable def tree9_29 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_2_0_0.txt")

/-- The tree of the cell `(true, 2, 1)`. -/
noncomputable def tree9_30 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_2_1_0.txt")

/-- The tree of the cell `(true, 2, 2)`. -/
noncomputable def tree9_31 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/c_2_2_0.txt")

/-- The cells of chunk 9 with their trees. -/
noncomputable def chunk9 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 4, 20), tree9_0),
    ((false, 4, 21), tree9_1),
    ((false, 4, 22), tree9_2),
    ((false, 4, 23), tree9_3),
    ((false, 4, 24), tree9_4),
    ((false, 4, 25), tree9_5),
    ((false, 4, 26), tree9_6),
    ((false, 4, 27), tree9_7),
    ((false, 4, 28), tree9_8),
    ((true, 0, 0), tree9_9),
    ((true, 0, 1), tree9_10),
    ((true, 0, 2), tree9_11),
    ((true, 0, 3), tree9_12),
    ((true, 0, 4), tree9_13),
    ((true, 0, 5), tree9_14),
    ((true, 0, 6), tree9_15),
    ((true, 0, 7), tree9_16),
    ((true, 0, 8), tree9_17),
    ((true, 0, 9), tree9_18),
    ((true, 1, 0), tree9_19),
    ((true, 1, 1), tree9_20),
    ((true, 1, 2), tree9_21),
    ((true, 1, 3), tree9_22),
    ((true, 1, 4), tree9_23),
    ((true, 1, 5), tree9_24),
    ((true, 1, 6), tree9_25),
    ((true, 1, 7), tree9_26),
    ((true, 1, 8), tree9_27),
    ((true, 1, 9), tree9_28),
    ((true, 2, 0), tree9_29),
    ((true, 2, 1), tree9_30),
    ((true, 2, 2), tree9_31)]

theorem chunk9_ok : chunk9.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerConvexTop.Model
