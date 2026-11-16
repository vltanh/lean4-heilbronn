module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 7 (2452 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 145: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 3, 4, 3, 2, 3, 2]`. -/
noncomputable def cell_2_41 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c145.txt")

theorem cell_2_41_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 41) cell_2_41 = true := by
  tree_decide

/-- Cell 146: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 4, 3, 2, 1, 2, 5]`. -/
noncomputable def cell_2_42 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c146.txt")

theorem cell_2_42_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 42) cell_2_42 = true := by
  tree_decide

/-- Cell 147: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 4, 3, 2, 2, 2, 4]`. -/
noncomputable def cell_2_43 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c147.txt")

theorem cell_2_43_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 43) cell_2_43 = true := by
  tree_decide

/-- Cell 148: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 4, 3, 3, 2, 2, 3]`. -/
noncomputable def cell_2_44 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c148.txt")

theorem cell_2_44_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 44) cell_2_44 = true := by
  tree_decide

/-- Cell 149: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 4, 4, 3, 2, 2, 2]`. -/
noncomputable def cell_2_45 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c149.txt")

theorem cell_2_45_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 45) cell_2_45 = true := by
  tree_decide

/-- Cell 150: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 5, 4, 3, 2, 2, 1]`. -/
noncomputable def cell_2_46 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c150.txt")

theorem cell_2_46_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 46) cell_2_46 = true := by
  tree_decide

/-- Cell 151: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [5, 4, 3, 2, 1, 1, 5]`. -/
noncomputable def cell_2_47 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c151.txt")

theorem cell_2_47_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 47) cell_2_47 = true := by
  tree_decide

/-- Cell 152: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [5, 4, 3, 2, 2, 1, 4]`. -/
noncomputable def cell_2_48 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c152.txt")

theorem cell_2_48_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 48) cell_2_48 = true := by
  tree_decide

/-- Cell 153: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [5, 4, 3, 3, 2, 1, 3]`. -/
noncomputable def cell_2_49 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c153.txt")

theorem cell_2_49_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 49) cell_2_49 = true := by
  tree_decide

/-- Cell 154: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [5, 4, 4, 3, 2, 1, 2]`. -/
noncomputable def cell_2_50 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c154.txt")

theorem cell_2_50_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 50) cell_2_50 = true := by
  tree_decide

/-- Cell 155: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [5, 5, 4, 3, 2, 1, 1]`. -/
noncomputable def cell_2_51 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c155.txt")

theorem cell_2_51_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 51) cell_2_51 = true := by
  tree_decide

/-- Cell 156: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [1, 1, 5, 5, 4, 3, 2]`. -/
noncomputable def cell_3_0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c156.txt")

theorem cell_3_0_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 0) cell_3_0 = true := by
  tree_decide

/-- Cell 157: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [1, 2, 5, 4, 4, 3, 2]`. -/
noncomputable def cell_3_1 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c157.txt")

theorem cell_3_1_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 1) cell_3_1 = true := by
  tree_decide

/-- Cell 158: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [1, 3, 5, 4, 3, 3, 2]`. -/
noncomputable def cell_3_2 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c158.txt")

theorem cell_3_2_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 2) cell_3_2 = true := by
  tree_decide

/-- Cell 159: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [1, 4, 5, 4, 3, 2, 2]`. -/
noncomputable def cell_3_3 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c159.txt")

theorem cell_3_3_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 3) cell_3_3 = true := by
  tree_decide

/-- Cell 160: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [1, 5, 5, 4, 3, 2, 1]`. -/
noncomputable def cell_3_4 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c160.txt")

theorem cell_3_4_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 4) cell_3_4 = true := by
  tree_decide

/-- Cell 161: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 1, 1, 5, 5, 4, 3]`. -/
noncomputable def cell_3_5 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c161.txt")

theorem cell_3_5_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 5) cell_3_5 = true := by
  tree_decide

/-- Cell 162: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 1, 2, 5, 4, 4, 3]`. -/
noncomputable def cell_3_6 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c162.txt")

theorem cell_3_6_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 6) cell_3_6 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
