module

public import Heilbronn.Nine.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 2 (generated)

15 cells, 2287 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 1, 4)`. -/
noncomputable def tree2_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_4_0.txt")

/-- The tree of the cell `(false, 1, 5)`. -/
noncomputable def tree2_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_5_0.txt")

/-- The tree of the cell `(false, 1, 6)`. -/
noncomputable def tree2_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_6_0.txt")

/-- The tree of the cell `(false, 1, 7)`. -/
noncomputable def tree2_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_7_0.txt")

/-- The tree of the cell `(false, 1, 8)`. -/
noncomputable def tree2_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_8_0.txt")

/-- The tree of the cell `(false, 1, 9)`. -/
noncomputable def tree2_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_9_0.txt")

/-- The tree of the cell `(false, 1, 10)`. -/
noncomputable def tree2_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_10_0.txt")

/-- The tree of the cell `(false, 1, 11)`. -/
noncomputable def tree2_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_11_0.txt")

/-- The tree of the cell `(false, 1, 12)`. -/
noncomputable def tree2_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_12_0.txt")

/-- The tree of the cell `(false, 1, 13)`. -/
noncomputable def tree2_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_13_0.txt")

/-- The tree of the cell `(false, 1, 14)`. -/
noncomputable def tree2_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_14_0.txt")

/-- The tree of the cell `(false, 1, 15)`. -/
noncomputable def tree2_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_15_0.txt")

/-- The tree of the cell `(false, 1, 16)`. -/
noncomputable def tree2_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_16_0.txt")

/-- The tree of the cell `(false, 1, 17)`. -/
noncomputable def tree2_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_17_0.txt")

/-- The tree of the cell `(false, 1, 18)`. -/
noncomputable def tree2_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_1_18_0.txt")

/-- The cells of chunk 2 with their trees. -/
noncomputable def chunk2 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 1, 4), tree2_0),
    ((false, 1, 5), tree2_1),
    ((false, 1, 6), tree2_2),
    ((false, 1, 7), tree2_3),
    ((false, 1, 8), tree2_4),
    ((false, 1, 9), tree2_5),
    ((false, 1, 10), tree2_6),
    ((false, 1, 11), tree2_7),
    ((false, 1, 12), tree2_8),
    ((false, 1, 13), tree2_9),
    ((false, 1, 14), tree2_10),
    ((false, 1, 15), tree2_11),
    ((false, 1, 16), tree2_12),
    ((false, 1, 17), tree2_13),
    ((false, 1, 18), tree2_14)]

theorem chunk2_ok : chunk2.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerConvexTop.Model
