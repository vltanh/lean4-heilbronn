module

public import Heilbronn.Nine.C1.ZeroLowerModel
public import Heilbronn.Common.DataReader

/-! # Zero-lower C1 cover, chunk 1

The sign trees of 8 word cases (1512 certificate terms), checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- The sign tree of the case [0, 2, 3, 4]. -/
noncomputable def tree1_0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/c1_zero_lower/c035.txt")

/-- The sign tree of the case [0, 2, 3, 6]. -/
noncomputable def tree1_1 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/c1_zero_lower/c036.txt")

/-- The sign tree of the case [0, 2, 3, 8]. -/
noncomputable def tree1_2 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/c1_zero_lower/c037.txt")

/-- The sign tree of the case [0, 2, 3, 9]. -/
noncomputable def tree1_3 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/c1_zero_lower/c038.txt")

/-- The sign tree of the case [0, 2, 4, 8]. -/
noncomputable def tree1_4 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/c1_zero_lower/c039.txt")

/-- The sign tree of the case [0, 2, 6, 8]. -/
noncomputable def tree1_5 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/c1_zero_lower/c040.txt")

/-- The sign tree of the case [0, 2, 8, 9]. -/
noncomputable def tree1_6 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/c1_zero_lower/c041.txt")

/-- The sign tree of the case [0, 3, 3, 4]. -/
noncomputable def tree1_7 : Cover.Tree Split :=
  .node (.tri 3 6 7) [.node (.tri 6 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c042.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c043.txt")], .node (.tri 4 6 8) [.node (.tri 0 6 8) [.cert (term_rows% "../../Data/c1_zero_lower/c044.txt"), .node (.tri 0 7 8) [.cert (term_rows% "../../Data/c1_zero_lower/c045.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c046.txt")]], .node (.tri 2 6 7) [.cert (term_rows% "../../Data/c1_zero_lower/c047.txt"), .cert (term_rows% "../../Data/c1_zero_lower/c048.txt")]]]

/-- The cases of chunk 1 with their trees. -/
noncomputable def chunk1 : List (List ℕ × Cover.Tree Split) :=
  [([0, 2, 3, 4], tree1_0),
    ([0, 2, 3, 6], tree1_1),
    ([0, 2, 3, 8], tree1_2),
    ([0, 2, 3, 9], tree1_3),
    ([0, 2, 4, 8], tree1_4),
    ([0, 2, 6, 8], tree1_5),
    ([0, 2, 8, 9], tree1_6),
    ([0, 3, 3, 4], tree1_7)]

theorem chunk1_ok : chunk1.all (fun p => checkTree (spec p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1ZeroLower.Trees
