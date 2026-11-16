module

public import Heilbronn.C1.OneLower.MixedCapsModel
public import Heilbronn.Common.DataReader

/-! # Mixed-caps one-lower cover, chunk 4 (generated)

1 cells, 2761 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerMixedCaps.Model

open Cover

/-- The tree of the cell `(0, 1, 3)`. -/
noncomputable def tree4_0 : Cover.Tree MSplit :=
  .node (.tri 0 6 7) [.node (.tri 0 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m042.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m043.txt")], .node (.tri 2 7 8) [.node (.tri 4 5 8) [.node (.tri 6 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m044.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m045.txt")], .node (.tri 0 6 8) [.node (.tri 3 5 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m046.txt"), .node (.tri 1 6 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m047.txt"), .node (.tri 6 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m048.txt"), .node (.tri 0 7 8) [.node (.tri 5 6 8) [.closed 0, .node (.tri 5 7 8) [.node .cut [.cert (term_rows% "../../../../data/c1_one_lower_mc/m049.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m050.txt")], .closed 1]], .cert (term_rows% "../../../../data/c1_one_lower_mc/m051.txt")]]]], .node (.tri 3 5 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m052.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m053.txt")]]], .node (.tri 5 7 8) [.cert (term_rows% "../../../../data/c1_one_lower_mc/m054.txt"), .cert (term_rows% "../../../../data/c1_one_lower_mc/m055.txt")]]]

/-- The cells of chunk 4 with their trees. -/
noncomputable def chunk4 : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  [((0, 1, 3), tree4_0)]

theorem chunk4_ok : chunk4.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.C1OneLowerMixedCaps.Model
