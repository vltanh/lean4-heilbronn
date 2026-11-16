module

public import Heilbronn.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 7 (generated)

10 cells, 2421 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 3, 7)`. -/
noncomputable def tree7_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_7_0.txt")

/-- The tree of the cell `(false, 3, 8)`. -/
noncomputable def tree7_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_8_0.txt")

/-- The tree of the cell `(false, 3, 9)`. -/
noncomputable def tree7_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 2 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_9_0.txt"), .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_9_1.txt")]

/-- The tree of the cell `(false, 3, 10)`. -/
noncomputable def tree7_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_10_0.txt")

/-- The tree of the cell `(false, 3, 11)`. -/
noncomputable def tree7_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_11_0.txt")

/-- The tree of the cell `(false, 3, 12)`. -/
noncomputable def tree7_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_12_0.txt")

/-- The tree of the cell `(false, 3, 13)`. -/
noncomputable def tree7_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_13_0.txt")

/-- The tree of the cell `(false, 3, 14)`. -/
noncomputable def tree7_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_14_0.txt")

/-- The tree of the cell `(false, 3, 15)`. -/
noncomputable def tree7_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_15_0.txt")

/-- The tree of the cell `(false, 3, 16)`. -/
noncomputable def tree7_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../data/c1_one_lower_ct/u_3_16_0.txt")

/-- The cells of chunk 7 with their trees. -/
noncomputable def chunk7 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 3, 7), tree7_0),
    ((false, 3, 8), tree7_1),
    ((false, 3, 9), tree7_2),
    ((false, 3, 10), tree7_3),
    ((false, 3, 11), tree7_4),
    ((false, 3, 12), tree7_5),
    ((false, 3, 13), tree7_6),
    ((false, 3, 14), tree7_7),
    ((false, 3, 15), tree7_8),
    ((false, 3, 16), tree7_9)]

theorem chunk7_ok : chunk7.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerConvexTop.Model
