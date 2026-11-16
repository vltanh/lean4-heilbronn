module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 5 (2436 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 104: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [1, 1, 5, 5, 4, 3, 2]`. -/
noncomputable def cell_2_0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c104.txt")

theorem cell_2_0_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 0) cell_2_0 = true := by
  tree_decide

/-- Cell 105: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [1, 2, 5, 4, 4, 3, 2]`. -/
noncomputable def cell_2_1 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c105.txt")

theorem cell_2_1_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 1) cell_2_1 = true := by
  tree_decide

/-- Cell 106: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [1, 3, 5, 4, 3, 3, 2]`. -/
noncomputable def cell_2_2 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c106.txt")

theorem cell_2_2_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 2) cell_2_2 = true := by
  tree_decide

/-- Cell 107: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [1, 4, 5, 4, 3, 2, 2]`. -/
noncomputable def cell_2_3 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c107.txt")

theorem cell_2_3_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 3) cell_2_3 = true := by
  tree_decide

/-- Cell 108: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [1, 5, 5, 4, 3, 2, 1]`. -/
noncomputable def cell_2_4 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c108.txt")

theorem cell_2_4_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 4) cell_2_4 = true := by
  tree_decide

/-- Cell 109: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 1, 1, 5, 5, 4, 3]`. -/
noncomputable def cell_2_5 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c109.txt")

theorem cell_2_5_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 5) cell_2_5 = true := by
  tree_decide

/-- Cell 110: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 1, 2, 5, 4, 4, 3]`. -/
noncomputable def cell_2_6 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c110.txt")

theorem cell_2_6_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 6) cell_2_6 = true := by
  tree_decide

/-- Cell 111: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 1, 3, 5, 4, 3, 3]`. -/
noncomputable def cell_2_7 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c111.txt")

theorem cell_2_7_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 7) cell_2_7 = true := by
  tree_decide

/-- Cell 112: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 1, 4, 5, 4, 3, 2]`. -/
noncomputable def cell_2_8 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c112.txt")

theorem cell_2_8_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 8) cell_2_8 = true := by
  tree_decide

/-- Cell 113: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 2, 1, 4, 5, 4, 3]`. -/
noncomputable def cell_2_9 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c113.txt")

theorem cell_2_9_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 9) cell_2_9 = true := by
  tree_decide

/-- Cell 114: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 2, 2, 4, 4, 4, 3]`. -/
noncomputable def cell_2_10 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c114.txt")

theorem cell_2_10_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 10) cell_2_10 = true := by
  tree_decide

/-- Cell 115: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 2, 3, 4, 4, 3, 3]`. -/
noncomputable def cell_2_11 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c115.txt")

theorem cell_2_11_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 11) cell_2_11 = true := by
  tree_decide

/-- Cell 116: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 2, 4, 4, 4, 3, 2]`. -/
noncomputable def cell_2_12 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c116.txt")

theorem cell_2_12_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 12) cell_2_12 = true := by
  tree_decide

/-- Cell 117: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 3, 2, 4, 3, 4, 3]`. -/
noncomputable def cell_2_13 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c117.txt")

theorem cell_2_13_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 13) cell_2_13 = true := by
  tree_decide

/-- Cell 118: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 3, 3, 4, 3, 3, 3]`. -/
noncomputable def cell_2_14 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c118.txt")

theorem cell_2_14_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 14) cell_2_14 = true := by
  tree_decide

/-- Cell 119: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 3, 4, 4, 3, 3, 2]`. -/
noncomputable def cell_2_15 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c119.txt")

theorem cell_2_15_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 15) cell_2_15 = true := by
  tree_decide

/-- Cell 120: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 4, 3, 4, 3, 2, 3]`. -/
noncomputable def cell_2_16 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c120.txt")

theorem cell_2_16_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 16) cell_2_16 = true := by
  tree_decide

/-- Cell 121: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 4, 4, 4, 3, 2, 2]`. -/
noncomputable def cell_2_17 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c121.txt")

theorem cell_2_17_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 17) cell_2_17 = true := by
  tree_decide

/-- Cell 122: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [2, 5, 4, 4, 3, 2, 1]`. -/
noncomputable def cell_2_18 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c122.txt")

theorem cell_2_18_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 18) cell_2_18 = true := by
  tree_decide

/-- Cell 123: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 2, 1, 2, 5, 4, 4]`. -/
noncomputable def cell_2_19 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c123.txt")

theorem cell_2_19_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 19) cell_2_19 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
