module

public import Heilbronn.Nine.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 6 (generated)

16 cells, 2371 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 2, 24)`. -/
noncomputable def tree6_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_24_0.txt")

/-- The tree of the cell `(false, 2, 25)`. -/
noncomputable def tree6_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_25_0.txt")

/-- The tree of the cell `(false, 2, 26)`. -/
noncomputable def tree6_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_26_0.txt")

/-- The tree of the cell `(false, 2, 27)`. -/
noncomputable def tree6_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_27_0.txt")

/-- The tree of the cell `(false, 2, 28)`. -/
noncomputable def tree6_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_28_0.txt")

/-- The tree of the cell `(false, 2, 29)`. -/
noncomputable def tree6_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_29_0.txt")

/-- The tree of the cell `(false, 2, 30)`. -/
noncomputable def tree6_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_30_0.txt")

/-- The tree of the cell `(false, 2, 31)`. -/
noncomputable def tree6_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_31_0.txt")

/-- The tree of the cell `(false, 2, 32)`. -/
noncomputable def tree6_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_2_32_0.txt")

/-- The tree of the cell `(false, 3, 0)`. -/
noncomputable def tree6_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_3_0_0.txt")

/-- The tree of the cell `(false, 3, 1)`. -/
noncomputable def tree6_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_3_1_0.txt")

/-- The tree of the cell `(false, 3, 2)`. -/
noncomputable def tree6_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_3_2_0.txt")

/-- The tree of the cell `(false, 3, 3)`. -/
noncomputable def tree6_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_3_3_0.txt")

/-- The tree of the cell `(false, 3, 4)`. -/
noncomputable def tree6_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_3_4_0.txt")

/-- The tree of the cell `(false, 3, 5)`. -/
noncomputable def tree6_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_3_5_0.txt")

/-- The tree of the cell `(false, 3, 6)`. -/
noncomputable def tree6_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/u_3_6_0.txt")

/-- The cells of chunk 6 with their trees. -/
noncomputable def chunk6 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 2, 24), tree6_0),
    ((false, 2, 25), tree6_1),
    ((false, 2, 26), tree6_2),
    ((false, 2, 27), tree6_3),
    ((false, 2, 28), tree6_4),
    ((false, 2, 29), tree6_5),
    ((false, 2, 30), tree6_6),
    ((false, 2, 31), tree6_7),
    ((false, 2, 32), tree6_8),
    ((false, 3, 0), tree6_9),
    ((false, 3, 1), tree6_10),
    ((false, 3, 2), tree6_11),
    ((false, 3, 3), tree6_12),
    ((false, 3, 4), tree6_13),
    ((false, 3, 5), tree6_14),
    ((false, 3, 6), tree6_15)]

theorem chunk6_ok : chunk6.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerConvexTop.Model
