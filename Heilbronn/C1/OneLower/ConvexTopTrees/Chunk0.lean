module

public import Heilbronn.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 0 (generated)

16 cells, 2182 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 0, 4)`. -/
noncomputable def tree0_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_4_0.txt")

/-- The tree of the cell `(false, 0, 5)`. -/
noncomputable def tree0_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_5_0.txt")

/-- The tree of the cell `(false, 0, 6)`. -/
noncomputable def tree0_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_6_0.txt")

/-- The tree of the cell `(false, 0, 7)`. -/
noncomputable def tree0_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_7_0.txt")

/-- The tree of the cell `(false, 0, 8)`. -/
noncomputable def tree0_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_8_0.txt")

/-- The tree of the cell `(false, 0, 9)`. -/
noncomputable def tree0_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_9_0.txt")

/-- The tree of the cell `(false, 0, 10)`. -/
noncomputable def tree0_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_10_0.txt")

/-- The tree of the cell `(false, 0, 11)`. -/
noncomputable def tree0_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_11_0.txt")

/-- The tree of the cell `(false, 0, 12)`. -/
noncomputable def tree0_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_12_0.txt")

/-- The tree of the cell `(false, 0, 13)`. -/
noncomputable def tree0_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_13_0.txt")

/-- The tree of the cell `(false, 0, 14)`. -/
noncomputable def tree0_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_14_0.txt")

/-- The tree of the cell `(false, 0, 15)`. -/
noncomputable def tree0_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_15_0.txt")

/-- The tree of the cell `(false, 0, 16)`. -/
noncomputable def tree0_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_16_0.txt")

/-- The tree of the cell `(false, 0, 17)`. -/
noncomputable def tree0_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_17_0.txt")

/-- The tree of the cell `(false, 0, 18)`. -/
noncomputable def tree0_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_18_0.txt")

/-- The tree of the cell `(false, 0, 19)`. -/
noncomputable def tree0_15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_0_19_0.txt")

/-- The cells of chunk 0 with their trees. -/
noncomputable def chunk0 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 0, 4), tree0_0),
    ((false, 0, 5), tree0_1),
    ((false, 0, 6), tree0_2),
    ((false, 0, 7), tree0_3),
    ((false, 0, 8), tree0_4),
    ((false, 0, 9), tree0_5),
    ((false, 0, 10), tree0_6),
    ((false, 0, 11), tree0_7),
    ((false, 0, 12), tree0_8),
    ((false, 0, 13), tree0_9),
    ((false, 0, 14), tree0_10),
    ((false, 0, 15), tree0_11),
    ((false, 0, 16), tree0_12),
    ((false, 0, 17), tree0_13),
    ((false, 0, 18), tree0_14),
    ((false, 0, 19), tree0_15)]

theorem chunk0_ok : chunk0.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerConvexTop.Model
