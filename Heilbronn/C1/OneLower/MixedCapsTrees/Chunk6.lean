module

public import Heilbronn.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 6 (generated)

6 cells, 2251 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(0, 2, 5)`. -/
noncomputable def tree6_0 : Cover.Tree MSplit :=
  .node (.tri 0 6 8) [.node (.tri 5 7 8) [.node (.tri 4 5 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m072.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m073.txt")], .cert (term_rows% "../../../../data/c1_one_lower_mc/m074.txt")], .node (.tri 2 7 8) [.node (.tri 6 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m075.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m076.txt")], .cert (term_rows% "../../../../data/c1_one_lower_mc/m077.txt")]]

/-- The tree of the cell `(1, 0, 2)`. -/
noncomputable def tree6_1 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../data/c1_one_lower_mc/m078.txt")

/-- The tree of the cell `(1, 0, 3)`. -/
noncomputable def tree6_2 : Cover.Tree MSplit :=
  .node (.tri 3 5 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m079.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m080.txt")]

/-- The tree of the cell `(1, 0, 4)`. -/
noncomputable def tree6_3 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../data/c1_one_lower_mc/m081.txt")

/-- The tree of the cell `(1, 0, 5)`. -/
noncomputable def tree6_4 : Cover.Tree MSplit :=
  .node (.tri 4 5 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m082.txt"), .node (.tri 3 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m083.txt"), .node (.tri 5 6 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m084.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m085.txt")]]]

/-- The tree of the cell `(1, 0, 6)`. -/
noncomputable def tree6_5 : Cover.Tree MSplit :=
  .cert (term_rows% "../../../../data/c1_one_lower_mc/m086.txt")

/-- The cells of chunk 6 with their trees. -/
noncomputable def chunk6 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((0, 2, 5), tree6_0),
    ((1, 0, 2), tree6_1),
    ((1, 0, 3), tree6_2),
    ((1, 0, 4), tree6_3),
    ((1, 0, 5), tree6_4),
    ((1, 0, 6), tree6_5)]

theorem chunk6_ok : chunk6.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerMixedCaps.Model
