module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 12 (1996 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 236: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 3, 3, 2, 3, 3, 4]`. -/
noncomputable def cell_4_28 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c236.txt")

theorem cell_4_28_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 28) cell_4_28 = true := by
  tree_decide

/-- Cell 237: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 3, 3, 3, 3, 3, 3]`. -/
noncomputable def cell_4_29 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c237.txt")

theorem cell_4_29_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 29) cell_4_29 = true := by
  tree_decide

/-- Cell 238: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 3, 4, 3, 3, 3, 2]`. -/
noncomputable def cell_4_30 : Cover.Tree Split :=
  .node (.tri 1 7 8) [.cert (term_rows% "../../Data/six_two_top_triangular/c238_0.txt"), .cert (term_rows% "../../Data/six_two_top_triangular/c238_1.txt")]

theorem cell_4_30_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 30) cell_4_30 = true := by
  tree_decide

/-- Cell 239: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 4, 3, 2, 3, 2, 4]`. -/
noncomputable def cell_4_31 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c239.txt")

theorem cell_4_31_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 31) cell_4_31 = true := by
  tree_decide

/-- Cell 240: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 4, 3, 3, 3, 2, 3]`. -/
noncomputable def cell_4_32 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c240.txt")

theorem cell_4_32_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 32) cell_4_32 = true := by
  tree_decide

/-- Cell 241: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 4, 4, 3, 3, 2, 2]`. -/
noncomputable def cell_4_33 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c241.txt")

theorem cell_4_33_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 33) cell_4_33 = true := by
  tree_decide

/-- Cell 242: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 5, 4, 3, 3, 2, 1]`. -/
noncomputable def cell_4_34 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c242.txt")

theorem cell_4_34_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 34) cell_4_34 = true := by
  tree_decide

/-- Cell 243: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 3, 2, 2, 1, 4, 5]`. -/
noncomputable def cell_4_35 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c243.txt")

theorem cell_4_35_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 35) cell_4_35 = true := by
  tree_decide

/-- Cell 244: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 3, 2, 2, 2, 4, 4]`. -/
noncomputable def cell_4_36 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c244.txt")

theorem cell_4_36_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 36) cell_4_36 = true := by
  tree_decide

/-- Cell 245: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 3, 2, 3, 2, 4, 3]`. -/
noncomputable def cell_4_37 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c245.txt")

theorem cell_4_37_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 37) cell_4_37 = true := by
  tree_decide

/-- Cell 246: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 3, 3, 2, 1, 3, 5]`. -/
noncomputable def cell_4_38 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c246.txt")

theorem cell_4_38_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 38) cell_4_38 = true := by
  tree_decide

/-- Cell 247: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 3, 3, 2, 2, 3, 4]`. -/
noncomputable def cell_4_39 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c247.txt")

theorem cell_4_39_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 39) cell_4_39 = true := by
  tree_decide

/-- Cell 248: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 3, 3, 3, 2, 3, 3]`. -/
noncomputable def cell_4_40 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c248.txt")

theorem cell_4_40_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 40) cell_4_40 = true := by
  tree_decide

/-- Cell 249: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 3, 4, 3, 2, 3, 2]`. -/
noncomputable def cell_4_41 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c249.txt")

theorem cell_4_41_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 41) cell_4_41 = true := by
  tree_decide

/-- Cell 250: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 4, 3, 2, 1, 2, 5]`. -/
noncomputable def cell_4_42 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c250.txt")

theorem cell_4_42_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 42) cell_4_42 = true := by
  tree_decide

/-- Cell 251: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 4, 3, 2, 2, 2, 4]`. -/
noncomputable def cell_4_43 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c251.txt")

theorem cell_4_43_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 43) cell_4_43 = true := by
  tree_decide

/-- Cell 252: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 4, 3, 3, 2, 2, 3]`. -/
noncomputable def cell_4_44 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c252.txt")

theorem cell_4_44_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 44) cell_4_44 = true := by
  tree_decide

/-- Cell 253: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 4, 4, 3, 2, 2, 2]`. -/
noncomputable def cell_4_45 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c253.txt")

theorem cell_4_45_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 45) cell_4_45 = true := by
  tree_decide

/-- Cell 254: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [4, 5, 4, 3, 2, 2, 1]`. -/
noncomputable def cell_4_46 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c254.txt")

theorem cell_4_46_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 46) cell_4_46 = true := by
  tree_decide

/-- Cell 255: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [5, 4, 3, 2, 1, 1, 5]`. -/
noncomputable def cell_4_47 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c255.txt")

theorem cell_4_47_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 47) cell_4_47 = true := by
  tree_decide

/-- Cell 256: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [5, 4, 3, 2, 2, 1, 4]`. -/
noncomputable def cell_4_48 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c256.txt")

theorem cell_4_48_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 48) cell_4_48 = true := by
  tree_decide

/-- Cell 257: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [5, 4, 3, 3, 2, 1, 3]`. -/
noncomputable def cell_4_49 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c257.txt")

theorem cell_4_49_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 49) cell_4_49 = true := by
  tree_decide

/-- Cell 258: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [5, 4, 4, 3, 2, 1, 2]`. -/
noncomputable def cell_4_50 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c258.txt")

theorem cell_4_50_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 50) cell_4_50 = true := by
  tree_decide

/-- Cell 259: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [5, 5, 4, 3, 2, 1, 1]`. -/
noncomputable def cell_4_51 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_triangular/c259.txt")

theorem cell_4_51_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 51) cell_4_51 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
