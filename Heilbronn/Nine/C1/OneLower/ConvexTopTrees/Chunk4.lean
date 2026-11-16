module

public import Heilbronn.Nine.C1.OneLower.ConvexTopModel
public import Heilbronn.Common.DataReader

/-! # Convex-top one-lower cover, chunk 4 (generated)

15 cells, 2445 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- The tree of the cell `(false, 1, 27)`. -/
noncomputable def tree4_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_27_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_27_1.txt")]

/-- The tree of the cell `(false, 1, 28)`. -/
noncomputable def tree4_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_28_0.txt")

/-- The tree of the cell `(false, 1, 29)`. -/
noncomputable def tree4_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_29_0.txt")

/-- The tree of the cell `(false, 1, 30)`. -/
noncomputable def tree4_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_30_0.txt")

/-- The tree of the cell `(false, 1, 31)`. -/
noncomputable def tree4_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_31_0.txt")

/-- The tree of the cell `(false, 1, 32)`. -/
noncomputable def tree4_5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_1_32_0.txt")

/-- The tree of the cell `(false, 2, 0)`. -/
noncomputable def tree4_6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_0_0.txt")

/-- The tree of the cell `(false, 2, 1)`. -/
noncomputable def tree4_7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_1_0.txt")

/-- The tree of the cell `(false, 2, 2)`. -/
noncomputable def tree4_8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_2_0.txt")

/-- The tree of the cell `(false, 2, 3)`. -/
noncomputable def tree4_9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_3_0.txt")

/-- The tree of the cell `(false, 2, 4)`. -/
noncomputable def tree4_10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_4_0.txt")

/-- The tree of the cell `(false, 2, 5)`. -/
noncomputable def tree4_11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_5_0.txt")

/-- The tree of the cell `(false, 2, 6)`. -/
noncomputable def tree4_12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_6_0.txt")

/-- The tree of the cell `(false, 2, 7)`. -/
noncomputable def tree4_13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_7_0.txt")

/-- The tree of the cell `(false, 2, 8)`. -/
noncomputable def tree4_14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_ct/u_2_8_0.txt")

/-- The cells of chunk 4 with their trees. -/
noncomputable def chunk4 : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((false, 1, 27), tree4_0),
    ((false, 1, 28), tree4_1),
    ((false, 1, 29), tree4_2),
    ((false, 1, 30), tree4_3),
    ((false, 1, 31), tree4_4),
    ((false, 1, 32), tree4_5),
    ((false, 2, 0), tree4_6),
    ((false, 2, 1), tree4_7),
    ((false, 2, 2), tree4_8),
    ((false, 2, 3), tree4_9),
    ((false, 2, 4), tree4_10),
    ((false, 2, 5), tree4_11),
    ((false, 2, 6), tree4_12),
    ((false, 2, 7), tree4_13),
    ((false, 2, 8), tree4_14)]

theorem chunk4_ok : chunk4.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.Nine.C1OneLowerConvexTop.Model
