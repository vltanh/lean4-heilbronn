module

public import Heilbronn.Nine.C1.OneLower.TopTriangleModel
public import Heilbronn.Common.DataReader

/-! # Top-triangle one-lower cover, chunk 2 (generated)

3 cells, 2565 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerTopTriangle.Model

open Cover

/-- The tree of the cell `(1, 1, 11)`. -/
noncomputable def tree2_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_11_-1.txt")

/-- The tree of the cell `(1, 1, 12)`. -/
noncomputable def tree2_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_12_-1.txt")

/-- The tree of the cell `(1, 1, 13)`. -/
noncomputable def tree2_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 0 6 7) [.node (.tri 3 6 7) [.node (.tri 4 6 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_8.txt")], .node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_4.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_12.txt")]], .node (.tri 4 6 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_2.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_10.txt")], .node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_6.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_14.txt")]]], .node (.tri 3 6 7) [.node (.tri 4 6 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_1.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_9.txt")], .node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_5.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_13.txt")]], .node (.tri 4 6 8) [.node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_3.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_11.txt")], .node (.tri 5 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_7.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_1_1_13_15.txt")]]]]

/-- The cells of chunk 2 with their trees. -/
noncomputable def chunk2 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((1, 1, 11), tree2_0),
    ((1, 1, 12), tree2_1),
    ((1, 1, 13), tree2_2)]

theorem chunk2_ok : chunk2.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  tree_decide

end Heilbronn.Nine.C1OneLowerTopTriangle.Model
