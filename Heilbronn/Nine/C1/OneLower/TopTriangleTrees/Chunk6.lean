module

public import Heilbronn.Nine.C1.OneLower.TopTriangleModel
public import Heilbronn.Common.DataReader

/-! # Top-triangle one-lower cover, chunk 6 (generated)

5 cells, 2582 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerTopTriangle.Model

open Cover

/-- The tree of the cell `(2, 3, 1)`. -/
noncomputable def tree6_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 0 6 7) [.node (.tri 1 7 8) [.node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_1_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_1_4.txt")], .node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_1_2.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_1_6.txt")]], .node (.tri 1 7 8) [.node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_1_1.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_1_5.txt")], .node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_1_3.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_1_7.txt")]]]

/-- The tree of the cell `(2, 3, 2)`. -/
noncomputable def tree6_1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_2_-1.txt")

/-- The tree of the cell `(2, 3, 3)`. -/
noncomputable def tree6_2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_3_-1.txt")

/-- The tree of the cell `(2, 3, 4)`. -/
noncomputable def tree6_3 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 0 6 7) [.node (.tri 2 6 8) [.node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_4_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_4_4.txt")], .node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_4_2.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_4_6.txt")]], .node (.tri 2 6 8) [.node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_4_1.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_4_5.txt")], .node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_4_3.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_4_7.txt")]]]

/-- The tree of the cell `(2, 3, 5)`. -/
noncomputable def tree6_4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_5_-1.txt")

/-- The cells of chunk 6 with their trees. -/
noncomputable def chunk6 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((2, 3, 1), tree6_0),
    ((2, 3, 2), tree6_1),
    ((2, 3, 3), tree6_2),
    ((2, 3, 4), tree6_3),
    ((2, 3, 5), tree6_4)]

theorem chunk6_ok : chunk6.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.Nine.C1OneLowerTopTriangle.Model
