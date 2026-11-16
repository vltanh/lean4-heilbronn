module

public import Heilbronn.Nine.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 3 (generated)

8 cells, 2415 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 1, 19)`. -/
noncomputable def tree3_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 4 7 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_19_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_19_2.txt")], .node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_19_1.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_19_3.txt")]]

/-- The tree of the cell `(false, 1, 20)`. -/
noncomputable def tree3_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_20_0.txt")

/-- The tree of the cell `(false, 1, 21)`. -/
noncomputable def tree3_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_21_0.txt")

/-- The tree of the cell `(false, 1, 22)`. -/
noncomputable def tree3_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_22_0.txt")

/-- The tree of the cell `(false, 1, 23)`. -/
noncomputable def tree3_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_23_0.txt")

/-- The tree of the cell `(false, 1, 24)`. -/
noncomputable def tree3_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_24_0.txt")

/-- The tree of the cell `(false, 1, 25)`. -/
noncomputable def tree3_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_25_0.txt")

/-- The tree of the cell `(false, 1, 26)`. -/
noncomputable def tree3_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_26_0.txt")

/-- The cells of chunk 3 with their trees. -/
noncomputable def chunk3 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 1, 19), tree3_0),
    ((false, 1, 20), tree3_1),
    ((false, 1, 21), tree3_2),
    ((false, 1, 22), tree3_3),
    ((false, 1, 23), tree3_4),
    ((false, 1, 24), tree3_5),
    ((false, 1, 25), tree3_6),
    ((false, 1, 26), tree3_7)]

theorem chunk3_ok : chunk3.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.Nine.C1OneLowerConvexTop.Model
