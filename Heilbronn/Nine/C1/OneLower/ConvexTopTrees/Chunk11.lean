module

public import Heilbronn.Nine.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 11 (generated)

11 cells, 159 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(true, 3, 9)`. -/
noncomputable def tree11_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_3_9_0.txt")

/-- The tree of the cell `(true, 4, 0)`. -/
noncomputable def tree11_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_0_0.txt")

/-- The tree of the cell `(true, 4, 1)`. -/
noncomputable def tree11_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_1_0.txt")

/-- The tree of the cell `(true, 4, 2)`. -/
noncomputable def tree11_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_2_0.txt")

/-- The tree of the cell `(true, 4, 3)`. -/
noncomputable def tree11_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_3_0.txt")

/-- The tree of the cell `(true, 4, 4)`. -/
noncomputable def tree11_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_4_0.txt")

/-- The tree of the cell `(true, 4, 5)`. -/
noncomputable def tree11_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_5_0.txt")

/-- The tree of the cell `(true, 4, 6)`. -/
noncomputable def tree11_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_6_0.txt")

/-- The tree of the cell `(true, 4, 7)`. -/
noncomputable def tree11_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_7_0.txt")

/-- The tree of the cell `(true, 4, 8)`. -/
noncomputable def tree11_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_8_0.txt")

/-- The tree of the cell `(true, 4, 9)`. -/
noncomputable def tree11_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_ct/c_4_9_0.txt")

/-- The cells of chunk 11 with their trees. -/
noncomputable def chunk11 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((true, 3, 9), tree11_0),
    ((true, 4, 0), tree11_1),
    ((true, 4, 1), tree11_2),
    ((true, 4, 2), tree11_3),
    ((true, 4, 3), tree11_4),
    ((true, 4, 4), tree11_5),
    ((true, 4, 5), tree11_6),
    ((true, 4, 6), tree11_7),
    ((true, 4, 7), tree11_8),
    ((true, 4, 8), tree11_9),
    ((true, 4, 9), tree11_10)]

theorem chunk11_ok : chunk11.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerConvexTop.Model
