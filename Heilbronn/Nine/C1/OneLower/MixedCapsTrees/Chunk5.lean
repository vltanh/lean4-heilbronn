module

public import Heilbronn.Nine.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 5 (generated)

9 cells, 2342 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(0, 1, 4)`. -/
noncomputable def tree5_0 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m056.txt")

/-- The tree of the cell `(0, 1, 5)`. -/
noncomputable def tree5_1 : Cover.Tree MSplit :=
  .node (.tri 0 7 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m057.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m058.txt")]

/-- The tree of the cell `(0, 1, 6)`. -/
noncomputable def tree5_2 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m059.txt")

/-- The tree of the cell `(0, 1, 7)`. -/
noncomputable def tree5_3 : Cover.Tree MSplit :=
  .node (.tri 4 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m060.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m061.txt")]

/-- The tree of the cell `(0, 2, 0)`. -/
noncomputable def tree5_4 : Cover.Tree MSplit :=
  .node (.tri 1 6 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m062.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m063.txt")]

/-- The tree of the cell `(0, 2, 1)`. -/
noncomputable def tree5_5 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m064.txt")

/-- The tree of the cell `(0, 2, 2)`. -/
noncomputable def tree5_6 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m065.txt")

/-- The tree of the cell `(0, 2, 3)`. -/
noncomputable def tree5_7 : Cover.Tree MSplit :=
  .node (.tri 4 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m066.txt"), .node (.tri 2 7 8) [.node (.tri 6 7 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m067.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m068.txt")], .node (.tri 3 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m069.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m070.txt")]]]

/-- The tree of the cell `(0, 2, 4)`. -/
noncomputable def tree5_8 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m071.txt")

/-- The cells of chunk 5 with their trees. -/
noncomputable def chunk5 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((0, 1, 4), tree5_0),
    ((0, 1, 5), tree5_1),
    ((0, 1, 6), tree5_2),
    ((0, 1, 7), tree5_3),
    ((0, 2, 0), tree5_4),
    ((0, 2, 1), tree5_5),
    ((0, 2, 2), tree5_6),
    ((0, 2, 3), tree5_7),
    ((0, 2, 4), tree5_8)]

theorem chunk5_ok : chunk5.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerMixedCaps.Model
