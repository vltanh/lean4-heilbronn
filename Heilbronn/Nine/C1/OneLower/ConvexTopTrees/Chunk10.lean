module

public import Heilbronn.Nine.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 10 (generated)

16 cells, 2573 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(true, 2, 3)`. -/
noncomputable def tree10_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_2_3_0.txt")

/-- The tree of the cell `(true, 2, 4)`. -/
noncomputable def tree10_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_2_4_0.txt")

/-- The tree of the cell `(true, 2, 5)`. -/
noncomputable def tree10_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_2_5_0.txt")

/-- The tree of the cell `(true, 2, 6)`. -/
noncomputable def tree10_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_2_6_0.txt")

/-- The tree of the cell `(true, 2, 7)`. -/
noncomputable def tree10_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_2_7_0.txt")

/-- The tree of the cell `(true, 2, 8)`. -/
noncomputable def tree10_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_2_8_0.txt")

/-- The tree of the cell `(true, 2, 9)`. -/
noncomputable def tree10_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_2_9_0.txt")

/-- The tree of the cell `(true, 3, 0)`. -/
noncomputable def tree10_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_0_0.txt")

/-- The tree of the cell `(true, 3, 1)`. -/
noncomputable def tree10_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_1_0.txt")

/-- The tree of the cell `(true, 3, 2)`. -/
noncomputable def tree10_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_2_0.txt")

/-- The tree of the cell `(true, 3, 3)`. -/
noncomputable def tree10_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_3_0.txt")

/-- The tree of the cell `(true, 3, 4)`. -/
noncomputable def tree10_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_4_0.txt")

/-- The tree of the cell `(true, 3, 5)`. -/
noncomputable def tree10_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_5_0.txt")

/-- The tree of the cell `(true, 3, 6)`. -/
noncomputable def tree10_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 3 7 8) [.cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_6_0.txt"), .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_6_1.txt")]

/-- The tree of the cell `(true, 3, 7)`. -/
noncomputable def tree10_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_7_0.txt")

/-- The tree of the cell `(true, 3, 8)`. -/
noncomputable def tree10_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_8_0.txt")

/-- The cells of chunk 10 with their trees. -/
noncomputable def chunk10 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((true, 2, 3), tree10_0),
    ((true, 2, 4), tree10_1),
    ((true, 2, 5), tree10_2),
    ((true, 2, 6), tree10_3),
    ((true, 2, 7), tree10_4),
    ((true, 2, 8), tree10_5),
    ((true, 2, 9), tree10_6),
    ((true, 3, 0), tree10_7),
    ((true, 3, 1), tree10_8),
    ((true, 3, 2), tree10_9),
    ((true, 3, 3), tree10_10),
    ((true, 3, 4), tree10_11),
    ((true, 3, 5), tree10_12),
    ((true, 3, 6), tree10_13),
    ((true, 3, 7), tree10_14),
    ((true, 3, 8), tree10_15)]

theorem chunk10_ok : chunk10.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerConvexTop.Model
