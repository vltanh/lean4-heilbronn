module

public import Heilbronn.Nine.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 1 (generated)

17 cells, 2540 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 0, 20)`. -/
noncomputable def tree1_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 4 7 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_20_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_20_2.txt")], .node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_20_1.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_20_3.txt")]]

/-- The tree of the cell `(false, 0, 21)`. -/
noncomputable def tree1_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_21_0.txt")

/-- The tree of the cell `(false, 0, 22)`. -/
noncomputable def tree1_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_22_0.txt")

/-- The tree of the cell `(false, 0, 23)`. -/
noncomputable def tree1_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_23_0.txt")

/-- The tree of the cell `(false, 0, 24)`. -/
noncomputable def tree1_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_24_0.txt")

/-- The tree of the cell `(false, 0, 25)`. -/
noncomputable def tree1_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_25_0.txt")

/-- The tree of the cell `(false, 0, 26)`. -/
noncomputable def tree1_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_26_0.txt")

/-- The tree of the cell `(false, 0, 27)`. -/
noncomputable def tree1_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_27_0.txt")

/-- The tree of the cell `(false, 0, 28)`. -/
noncomputable def tree1_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_28_0.txt")

/-- The tree of the cell `(false, 0, 29)`. -/
noncomputable def tree1_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_29_0.txt")

/-- The tree of the cell `(false, 0, 30)`. -/
noncomputable def tree1_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_30_0.txt")

/-- The tree of the cell `(false, 0, 31)`. -/
noncomputable def tree1_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_31_0.txt")

/-- The tree of the cell `(false, 0, 32)`. -/
noncomputable def tree1_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_0_32_0.txt")

/-- The tree of the cell `(false, 1, 0)`. -/
noncomputable def tree1_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_0_0.txt")

/-- The tree of the cell `(false, 1, 1)`. -/
noncomputable def tree1_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_1_0.txt")

/-- The tree of the cell `(false, 1, 2)`. -/
noncomputable def tree1_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_2_0.txt")

/-- The tree of the cell `(false, 1, 3)`. -/
noncomputable def tree1_16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_3_0.txt")

/-- The cells of chunk 1 with their trees. -/
noncomputable def chunk1 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 0, 20), tree1_0),
    ((false, 0, 21), tree1_1),
    ((false, 0, 22), tree1_2),
    ((false, 0, 23), tree1_3),
    ((false, 0, 24), tree1_4),
    ((false, 0, 25), tree1_5),
    ((false, 0, 26), tree1_6),
    ((false, 0, 27), tree1_7),
    ((false, 0, 28), tree1_8),
    ((false, 0, 29), tree1_9),
    ((false, 0, 30), tree1_10),
    ((false, 0, 31), tree1_11),
    ((false, 0, 32), tree1_12),
    ((false, 1, 0), tree1_13),
    ((false, 1, 1), tree1_14),
    ((false, 1, 2), tree1_15),
    ((false, 1, 3), tree1_16)]

theorem chunk1_ok : chunk1.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerConvexTop.Model
