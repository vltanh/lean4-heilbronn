module

public import Heilbronn.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 1 (generated)

3 cells, 963 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(0, 0, 5)`. -/
noncomputable def tree1_0 : Cover.Tree MSplit :=
  .node (.tri 4 5 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m014.txt"), .node (.tri 3 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m015.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m016.txt")]]

/-- The tree of the cell `(0, 0, 6)`. -/
noncomputable def tree1_1 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../data/c1_one_lower_mc/m017.txt")

/-- The tree of the cell `(0, 0, 7)`. -/
noncomputable def tree1_2 : Cover.Tree MSplit :=
  .node (.tri 4 5 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m018.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m019.txt")]

/-- The cells of chunk 1 with their trees. -/
noncomputable def chunk1 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((0, 0, 5), tree1_0),
    ((0, 0, 6), tree1_1),
    ((0, 0, 7), tree1_2)]

theorem chunk1_ok : chunk1.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerMixedCaps.Model
