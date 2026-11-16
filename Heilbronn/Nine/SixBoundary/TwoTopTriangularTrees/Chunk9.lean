module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 9 (2358 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 181: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 2, 4, 3, 4, 3, 2]`. -/
noncomputable def cell_3_25 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c181.txt")

theorem cell_3_25_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 25) cell_3_25 = true := by
  tree_decide

/-- Cell 182: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 3, 2, 2, 3, 4, 4]`. -/
noncomputable def cell_3_26 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c182.txt")

theorem cell_3_26_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 26) cell_3_26 = true := by
  tree_decide

/-- Cell 183: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 3, 2, 3, 3, 4, 3]`. -/
noncomputable def cell_3_27 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c183.txt")

theorem cell_3_27_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 27) cell_3_27 = true := by
  tree_decide

/-- Cell 184: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 3, 3, 2, 3, 3, 4]`. -/
noncomputable def cell_3_28 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c184.txt")

theorem cell_3_28_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 28) cell_3_28 = true := by
  tree_decide

/-- Cell 185: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 3, 3, 3, 3, 3, 3]`. -/
noncomputable def cell_3_29 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c185.txt")

theorem cell_3_29_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 29) cell_3_29 = true := by
  tree_decide

/-- Cell 186: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 3, 4, 3, 3, 3, 2]`. -/
noncomputable def cell_3_30 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c186.txt")

theorem cell_3_30_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 30) cell_3_30 = true := by
  tree_decide

/-- Cell 187: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 4, 3, 2, 3, 2, 4]`. -/
noncomputable def cell_3_31 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c187.txt")

theorem cell_3_31_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 31) cell_3_31 = true := by
  tree_decide

/-- Cell 188: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 4, 3, 3, 3, 2, 3]`. -/
noncomputable def cell_3_32 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c188.txt")

theorem cell_3_32_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 32) cell_3_32 = true := by
  tree_decide

/-- Cell 189: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 4, 4, 3, 3, 2, 2]`. -/
noncomputable def cell_3_33 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c189.txt")

theorem cell_3_33_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 33) cell_3_33 = true := by
  tree_decide

/-- Cell 190: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 5, 4, 3, 3, 2, 1]`. -/
noncomputable def cell_3_34 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c190.txt")

theorem cell_3_34_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 34) cell_3_34 = true := by
  tree_decide

/-- Cell 191: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 3, 2, 2, 1, 4, 5]`. -/
noncomputable def cell_3_35 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c191.txt")

theorem cell_3_35_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 35) cell_3_35 = true := by
  tree_decide

/-- Cell 192: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 3, 2, 2, 2, 4, 4]`. -/
noncomputable def cell_3_36 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c192.txt")

theorem cell_3_36_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 36) cell_3_36 = true := by
  tree_decide

/-- Cell 193: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 3, 2, 3, 2, 4, 3]`. -/
noncomputable def cell_3_37 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c193.txt")

theorem cell_3_37_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 37) cell_3_37 = true := by
  tree_decide

/-- Cell 194: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 3, 3, 2, 1, 3, 5]`. -/
noncomputable def cell_3_38 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c194.txt")

theorem cell_3_38_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 38) cell_3_38 = true := by
  tree_decide

/-- Cell 195: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 3, 3, 2, 2, 3, 4]`. -/
noncomputable def cell_3_39 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c195.txt")

theorem cell_3_39_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 39) cell_3_39 = true := by
  tree_decide

/-- Cell 196: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 3, 3, 3, 2, 3, 3]`. -/
noncomputable def cell_3_40 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c196.txt")

theorem cell_3_40_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 40) cell_3_40 = true := by
  tree_decide

/-- Cell 197: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 3, 4, 3, 2, 3, 2]`. -/
noncomputable def cell_3_41 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c197.txt")

theorem cell_3_41_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 41) cell_3_41 = true := by
  tree_decide

/-- Cell 198: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 4, 3, 2, 1, 2, 5]`. -/
noncomputable def cell_3_42 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c198.txt")

theorem cell_3_42_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 42) cell_3_42 = true := by
  tree_decide

/-- Cell 199: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 4, 3, 2, 2, 2, 4]`. -/
noncomputable def cell_3_43 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c199.txt")

theorem cell_3_43_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 43) cell_3_43 = true := by
  tree_decide

/-- Cell 200: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 4, 3, 3, 2, 2, 3]`. -/
noncomputable def cell_3_44 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c200.txt")

theorem cell_3_44_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 44) cell_3_44 = true := by
  tree_decide

/-- Cell 201: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 4, 4, 3, 2, 2, 2]`. -/
noncomputable def cell_3_45 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c201.txt")

theorem cell_3_45_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 45) cell_3_45 = true := by
  tree_decide

/-- Cell 202: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [4, 5, 4, 3, 2, 2, 1]`. -/
noncomputable def cell_3_46 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c202.txt")

theorem cell_3_46_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 46) cell_3_46 = true := by
  tree_decide

/-- Cell 203: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [5, 4, 3, 2, 1, 1, 5]`. -/
noncomputable def cell_3_47 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c203.txt")

theorem cell_3_47_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 47) cell_3_47 = true := by
  tree_decide

/-- Cell 204: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [5, 4, 3, 2, 2, 1, 4]`. -/
noncomputable def cell_3_48 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c204.txt")

theorem cell_3_48_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 48) cell_3_48 = true := by
  tree_decide

/-- Cell 205: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [5, 4, 3, 3, 2, 1, 3]`. -/
noncomputable def cell_3_49 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c205.txt")

theorem cell_3_49_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 49) cell_3_49 = true := by
  tree_decide

/-- Cell 206: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [5, 4, 4, 3, 2, 1, 2]`. -/
noncomputable def cell_3_50 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c206.txt")

theorem cell_3_50_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 50) cell_3_50 = true := by
  tree_decide

/-- Cell 207: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [5, 5, 4, 3, 2, 1, 1]`. -/
noncomputable def cell_3_51 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c207.txt")

theorem cell_3_51_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 51) cell_3_51 = true := by
  tree_decide

/-- Cell 208: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [1, 1, 5, 5, 4, 3, 2]`. -/
noncomputable def cell_4_0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c208.txt")

theorem cell_4_0_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 0) cell_4_0 = true := by
  tree_decide

/-- Cell 209: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [1, 2, 5, 4, 4, 3, 2]`. -/
noncomputable def cell_4_1 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c209.txt")

theorem cell_4_1_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 1) cell_4_1 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
