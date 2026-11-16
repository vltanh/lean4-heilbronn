module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 0 (2478 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 0: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [1, 1, 5, 5, 4, 3, 2]`. -/
noncomputable def cell_0_0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c0.txt")

theorem cell_0_0_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 0) cell_0_0 = true := by
  tree_decide

/-- Cell 1: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [1, 2, 5, 4, 4, 3, 2]`. -/
noncomputable def cell_0_1 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c1.txt")

theorem cell_0_1_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 1) cell_0_1 = true := by
  tree_decide

/-- Cell 2: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [1, 3, 5, 4, 3, 3, 2]`. -/
noncomputable def cell_0_2 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c2.txt")

theorem cell_0_2_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 2) cell_0_2 = true := by
  tree_decide

/-- Cell 3: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [1, 4, 5, 4, 3, 2, 2]`. -/
noncomputable def cell_0_3 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c3.txt")

theorem cell_0_3_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 3) cell_0_3 = true := by
  tree_decide

/-- Cell 4: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [1, 5, 5, 4, 3, 2, 1]`. -/
noncomputable def cell_0_4 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c4.txt")

theorem cell_0_4_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 4) cell_0_4 = true := by
  tree_decide

/-- Cell 5: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 1, 1, 5, 5, 4, 3]`. -/
noncomputable def cell_0_5 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c5.txt")

theorem cell_0_5_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 5) cell_0_5 = true := by
  tree_decide

/-- Cell 6: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 1, 2, 5, 4, 4, 3]`. -/
noncomputable def cell_0_6 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c6.txt")

theorem cell_0_6_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 6) cell_0_6 = true := by
  tree_decide

/-- Cell 7: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 1, 3, 5, 4, 3, 3]`. -/
noncomputable def cell_0_7 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c7.txt")

theorem cell_0_7_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 7) cell_0_7 = true := by
  tree_decide

/-- Cell 8: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 1, 4, 5, 4, 3, 2]`. -/
noncomputable def cell_0_8 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c8.txt")

theorem cell_0_8_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 8) cell_0_8 = true := by
  tree_decide

/-- Cell 9: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 2, 1, 4, 5, 4, 3]`. -/
noncomputable def cell_0_9 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c9.txt")

theorem cell_0_9_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 9) cell_0_9 = true := by
  tree_decide

/-- Cell 10: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 2, 2, 4, 4, 4, 3]`. -/
noncomputable def cell_0_10 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c10.txt")

theorem cell_0_10_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 10) cell_0_10 = true := by
  tree_decide

/-- Cell 11: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 2, 3, 4, 4, 3, 3]`. -/
noncomputable def cell_0_11 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c11.txt")

theorem cell_0_11_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 11) cell_0_11 = true := by
  tree_decide

/-- Cell 12: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 2, 4, 4, 4, 3, 2]`. -/
noncomputable def cell_0_12 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c12.txt")

theorem cell_0_12_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 12) cell_0_12 = true := by
  tree_decide

/-- Cell 13: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 3, 2, 4, 3, 4, 3]`. -/
noncomputable def cell_0_13 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c13.txt")

theorem cell_0_13_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 13) cell_0_13 = true := by
  tree_decide

/-- Cell 14: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 3, 3, 4, 3, 3, 3]`. -/
noncomputable def cell_0_14 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c14.txt")

theorem cell_0_14_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 14) cell_0_14 = true := by
  tree_decide

/-- Cell 15: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 3, 4, 4, 3, 3, 2]`. -/
noncomputable def cell_0_15 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c15.txt")

theorem cell_0_15_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 15) cell_0_15 = true := by
  tree_decide

/-- Cell 16: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 4, 3, 4, 3, 2, 3]`. -/
noncomputable def cell_0_16 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c16.txt")

theorem cell_0_16_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 16) cell_0_16 = true := by
  tree_decide

/-- Cell 17: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 4, 4, 4, 3, 2, 2]`. -/
noncomputable def cell_0_17 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c17.txt")

theorem cell_0_17_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 17) cell_0_17 = true := by
  tree_decide

/-- Cell 18: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [2, 5, 4, 4, 3, 2, 1]`. -/
noncomputable def cell_0_18 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c18.txt")

theorem cell_0_18_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 18) cell_0_18 = true := by
  tree_decide

/-- Cell 19: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 2, 1, 2, 5, 4, 4]`. -/
noncomputable def cell_0_19 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c19.txt")

theorem cell_0_19_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 19) cell_0_19 = true := by
  tree_decide

/-- Cell 20: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 2, 1, 3, 5, 4, 3]`. -/
noncomputable def cell_0_20 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c20.txt")

theorem cell_0_20_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 20) cell_0_20 = true := by
  tree_decide

/-- Cell 21: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 2, 2, 2, 4, 4, 4]`. -/
noncomputable def cell_0_21 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c21.txt")

theorem cell_0_21_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 21) cell_0_21 = true := by
  tree_decide

/-- Cell 22: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 2, 2, 3, 4, 4, 3]`. -/
noncomputable def cell_0_22 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c22.txt")

theorem cell_0_22_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 22) cell_0_22 = true := by
  tree_decide

/-- Cell 23: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 2, 3, 2, 4, 3, 4]`. -/
noncomputable def cell_0_23 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c23.txt")

theorem cell_0_23_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 23) cell_0_23 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
