module

public import Heilbronn.Nine.C1.OneLower.TopTriangleModel
public import Heilbronn.Common.DataReader

/-! # Top-triangle one-lower cover, chunk 7 (generated)

1 cells, 2670 certificate terms, checked by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerTopTriangle.Model

open Cover

/-- The tree of the cell `(2, 3, 6)`. -/
noncomputable def tree7_0 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 0 6 7) [.node (.tri 1 7 8) [.node (.tri 2 6 8) [.node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_0.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_8.txt")], .node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_4.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_12.txt")]], .node (.tri 2 6 8) [.node (.tri 3 6 7) [.node (.tri 6 7 8) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_2.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_18.txt")], .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_10.txt")], .node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_6.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_14.txt")]]], .node (.tri 1 7 8) [.node (.tri 2 6 8) [.node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_1.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_9.txt")], .node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_5.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_13.txt")]], .node (.tri 2 6 8) [.node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_3.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_11.txt")], .node (.tri 3 6 7) [.cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_7.txt"), .cert (term_rows% "../../../../../data/nine/c1_one_lower_tt/t_2_3_6_15.txt")]]]]

/-- The cells of chunk 7 with their trees. -/
noncomputable def chunk7 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((2, 3, 6), tree7_0)]

theorem chunk7_ok : chunk7.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
  decide +kernel

end Heilbronn.Nine.C1OneLowerTopTriangle.Model
