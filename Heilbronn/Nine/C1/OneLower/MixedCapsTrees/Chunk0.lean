module

public import Heilbronn.Nine.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 0 (generated)

3 cells, 2554 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(0, 0, 2)`. -/
noncomputable def tree0_0 : Cover.Tree MSplit :=
  .node (.tri 3 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m000.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m001.txt")]

/-- The tree of the cell `(0, 0, 3)`. -/
noncomputable def tree0_1 : Cover.Tree MSplit :=
  .node (.tri 6 7 8) [.node (.tri 0 6 8) [.node (.tri 0 5 7) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m002.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m003.txt")], .node (.tri 3 5 8) [.node (.tri 4 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m004.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m005.txt")], .cert (term_rows% "../../../Data/c1_one_lower_mc/m006.txt")]], .node (.tri 1 6 8) [.node (.tri 5 6 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m007.txt"), .node (.tri 3 5 8) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m008.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m009.txt")]], .node (.tri 3 5 8) [.node (.tri 0 5 7) [.cert (term_rows% "../../../Data/c1_one_lower_mc/m010.txt"), .cert (term_rows% "../../../Data/c1_one_lower_mc/m011.txt")], .cert (term_rows% "../../../Data/c1_one_lower_mc/m012.txt")]]]

/-- The tree of the cell `(0, 0, 4)`. -/
noncomputable def tree0_2 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../Data/c1_one_lower_mc/m013.txt")

/-- The cells of chunk 0 with their trees. -/
noncomputable def chunk0 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((0, 0, 2), tree0_0),
    ((0, 0, 3), tree0_1),
    ((0, 0, 4), tree0_2)]

theorem chunk0_ok : chunk0.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerMixedCaps.Model
