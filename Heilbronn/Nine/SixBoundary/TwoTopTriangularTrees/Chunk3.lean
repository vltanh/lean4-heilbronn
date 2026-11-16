module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 3 (2463 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 66: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 3, 3, 4, 3, 3, 3]`. -/
noncomputable def cell_1_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c66.txt")

theorem cell_1_14_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 14) cell_1_14 = true := by
  tree_decide

/-- Cell 67: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 3, 4, 4, 3, 3, 2]`. -/
noncomputable def cell_1_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c67.txt")

theorem cell_1_15_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 15) cell_1_15 = true := by
  tree_decide

/-- Cell 68: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 4, 3, 4, 3, 2, 3]`. -/
noncomputable def cell_1_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c68.txt")

theorem cell_1_16_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 16) cell_1_16 = true := by
  tree_decide

/-- Cell 69: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 4, 4, 4, 3, 2, 2]`. -/
noncomputable def cell_1_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c69.txt")

theorem cell_1_17_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 17) cell_1_17 = true := by
  tree_decide

/-- Cell 70: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 5, 4, 4, 3, 2, 1]`. -/
noncomputable def cell_1_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c70.txt")

theorem cell_1_18_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 18) cell_1_18 = true := by
  tree_decide

/-- Cell 71: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 2, 1, 2, 5, 4, 4]`. -/
noncomputable def cell_1_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c71.txt")

theorem cell_1_19_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 19) cell_1_19 = true := by
  tree_decide

/-- Cell 72: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 2, 1, 3, 5, 4, 3]`. -/
noncomputable def cell_1_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c72.txt")

theorem cell_1_20_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 20) cell_1_20 = true := by
  tree_decide

/-- Cell 73: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 2, 2, 2, 4, 4, 4]`. -/
noncomputable def cell_1_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c73.txt")

theorem cell_1_21_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 21) cell_1_21 = true := by
  tree_decide

/-- Cell 74: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 2, 2, 3, 4, 4, 3]`. -/
noncomputable def cell_1_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c74.txt")

theorem cell_1_22_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 22) cell_1_22 = true := by
  tree_decide

/-- Cell 75: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 2, 3, 2, 4, 3, 4]`. -/
noncomputable def cell_1_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c75.txt")

theorem cell_1_23_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 23) cell_1_23 = true := by
  tree_decide

/-- Cell 76: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 2, 3, 3, 4, 3, 3]`. -/
noncomputable def cell_1_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c76.txt")

theorem cell_1_24_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 24) cell_1_24 = true := by
  tree_decide

/-- Cell 77: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 2, 4, 3, 4, 3, 2]`. -/
noncomputable def cell_1_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c77.txt")

theorem cell_1_25_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 25) cell_1_25 = true := by
  tree_decide

/-- Cell 78: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 3, 2, 2, 3, 4, 4]`. -/
noncomputable def cell_1_26 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c78.txt")

theorem cell_1_26_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 26) cell_1_26 = true := by
  tree_decide

/-- Cell 79: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 3, 2, 3, 3, 4, 3]`. -/
noncomputable def cell_1_27 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c79.txt")

theorem cell_1_27_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 27) cell_1_27 = true := by
  tree_decide

/-- Cell 80: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 3, 3, 2, 3, 3, 4]`. -/
noncomputable def cell_1_28 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c80.txt")

theorem cell_1_28_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 28) cell_1_28 = true := by
  tree_decide

/-- Cell 81: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 3, 3, 3, 3, 3, 3]`. -/
noncomputable def cell_1_29 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c81.txt")

theorem cell_1_29_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 29) cell_1_29 = true := by
  tree_decide

/-- Cell 82: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 3, 4, 3, 3, 3, 2]`. -/
noncomputable def cell_1_30 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c82.txt")

theorem cell_1_30_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 30) cell_1_30 = true := by
  tree_decide

/-- Cell 83: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 4, 3, 2, 3, 2, 4]`. -/
noncomputable def cell_1_31 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c83.txt")

theorem cell_1_31_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 31) cell_1_31 = true := by
  tree_decide

/-- Cell 84: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 4, 3, 3, 3, 2, 3]`. -/
noncomputable def cell_1_32 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c84.txt")

theorem cell_1_32_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 32) cell_1_32 = true := by
  tree_decide

/-- Cell 85: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 4, 4, 3, 3, 2, 2]`. -/
noncomputable def cell_1_33 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c85.txt")

theorem cell_1_33_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 33) cell_1_33 = true := by
  tree_decide

/-- Cell 86: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [3, 5, 4, 3, 3, 2, 1]`. -/
noncomputable def cell_1_34 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c86.txt")

theorem cell_1_34_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 34) cell_1_34 = true := by
  tree_decide

/-- Cell 87: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 3, 2, 2, 1, 4, 5]`. -/
noncomputable def cell_1_35 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c87.txt")

theorem cell_1_35_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 35) cell_1_35 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
