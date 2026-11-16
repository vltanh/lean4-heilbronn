module

public import Heilbronn.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 5 (generated)

15 cells, 2448 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 2, 9)`. -/
noncomputable def tree5_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_9_0.txt")

/-- The tree of the cell `(false, 2, 10)`. -/
noncomputable def tree5_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_10_0.txt")

/-- The tree of the cell `(false, 2, 11)`. -/
noncomputable def tree5_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_11_0.txt")

/-- The tree of the cell `(false, 2, 12)`. -/
noncomputable def tree5_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_12_0.txt")

/-- The tree of the cell `(false, 2, 13)`. -/
noncomputable def tree5_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_13_0.txt")

/-- The tree of the cell `(false, 2, 14)`. -/
noncomputable def tree5_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_14_0.txt")

/-- The tree of the cell `(false, 2, 15)`. -/
noncomputable def tree5_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_15_0.txt")

/-- The tree of the cell `(false, 2, 16)`. -/
noncomputable def tree5_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_16_0.txt")

/-- The tree of the cell `(false, 2, 17)`. -/
noncomputable def tree5_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_17_0.txt")

/-- The tree of the cell `(false, 2, 18)`. -/
noncomputable def tree5_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_18_0.txt")

/-- The tree of the cell `(false, 2, 19)`. -/
noncomputable def tree5_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_19_0.txt")

/-- The tree of the cell `(false, 2, 20)`. -/
noncomputable def tree5_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_20_0.txt")

/-- The tree of the cell `(false, 2, 21)`. -/
noncomputable def tree5_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_21_0.txt")

/-- The tree of the cell `(false, 2, 22)`. -/
noncomputable def tree5_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_22_0.txt")

/-- The tree of the cell `(false, 2, 23)`. -/
noncomputable def tree5_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_2_23_0.txt")

/-- The cells of chunk 5 with their trees. -/
noncomputable def chunk5 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 2, 9), tree5_0),
    ((false, 2, 10), tree5_1),
    ((false, 2, 11), tree5_2),
    ((false, 2, 12), tree5_3),
    ((false, 2, 13), tree5_4),
    ((false, 2, 14), tree5_5),
    ((false, 2, 15), tree5_6),
    ((false, 2, 16), tree5_7),
    ((false, 2, 17), tree5_8),
    ((false, 2, 18), tree5_9),
    ((false, 2, 19), tree5_10),
    ((false, 2, 20), tree5_11),
    ((false, 2, 21), tree5_12),
    ((false, 2, 22), tree5_13),
    ((false, 2, 23), tree5_14)]

theorem chunk5_ok : chunk5.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerConvexTop.Model
