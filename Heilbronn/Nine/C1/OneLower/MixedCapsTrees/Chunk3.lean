module

public import Heilbronn.Nine.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 3 (generated)

2 cells, 1755 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(0, 1, 1)`. -/
noncomputable def tree3_0 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m033.txt")

/-- The tree of the cell `(0, 1, 2)`. -/
noncomputable def tree3_1 : Cover.Tree MSplit :=
  .node (.tri 6 7 8) [.node (.tri 0 6 7) [.node (.tri 3 5 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m034.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m035.txt")], .node (.tri 4 6 8) [.node (.tri 3 5 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m036.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m037.txt")], .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m038.txt")]], .node (.tri 1 6 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m039.txt"), .node (.tri 0 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m040.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_mc/m041.txt")]]]

/-- The cells of chunk 3 with their trees. -/
noncomputable def chunk3 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((0, 1, 1), tree3_0),
    ((0, 1, 2), tree3_1)]

theorem chunk3_ok : chunk3.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerMixedCaps.Model
