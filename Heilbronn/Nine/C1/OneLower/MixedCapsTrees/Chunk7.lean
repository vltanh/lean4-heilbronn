module

public import Heilbronn.Nine.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 7 (generated)

11 cells, 2502 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(1, 0, 7)`. -/
noncomputable def tree7_0 : Cover.Tree MSplit :=
  .node (.tri 4 5 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m087.txt"), .node (.tri 1 6 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m088.txt"), .node (.tri 6 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m089.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m090.txt")]]]

/-- The tree of the cell `(1, 1, 0)`. -/
noncomputable def tree7_1 : Cover.Tree MSplit :=
  .node (.tri 5 6 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m091.txt"), .node (.tri 4 5 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m092.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m093.txt")]]

/-- The tree of the cell `(1, 1, 1)`. -/
noncomputable def tree7_2 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m094.txt")

/-- The tree of the cell `(1, 1, 2)`. -/
noncomputable def tree7_3 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m095.txt")

/-- The tree of the cell `(1, 1, 3)`. -/
noncomputable def tree7_4 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m096.txt")

/-- The tree of the cell `(1, 1, 4)`. -/
noncomputable def tree7_5 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m097.txt")

/-- The tree of the cell `(1, 1, 5)`. -/
noncomputable def tree7_6 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m098.txt")

/-- The tree of the cell `(1, 1, 6)`. -/
noncomputable def tree7_7 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m099.txt")

/-- The tree of the cell `(1, 1, 7)`. -/
noncomputable def tree7_8 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m100.txt")

/-- The tree of the cell `(1, 2, 0)`. -/
noncomputable def tree7_9 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m101.txt")

/-- The tree of the cell `(1, 2, 1)`. -/
noncomputable def tree7_10 : Cover.Tree MSplit :=
  .node (.tri 1 6 8) [.node (.tri 4 5 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m102.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m103.txt")], .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m104.txt")], .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m105.txt")]

/-- The cells of chunk 7 with their trees. -/
noncomputable def chunk7 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((1, 0, 7), tree7_0),
    ((1, 1, 0), tree7_1),
    ((1, 1, 1), tree7_2),
    ((1, 1, 2), tree7_3),
    ((1, 1, 3), tree7_4),
    ((1, 1, 4), tree7_5),
    ((1, 1, 5), tree7_6),
    ((1, 1, 6), tree7_7),
    ((1, 1, 7), tree7_8),
    ((1, 2, 0), tree7_9),
    ((1, 2, 1), tree7_10)]

theorem chunk7_ok : chunk7.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerMixedCaps.Model
