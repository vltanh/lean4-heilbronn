module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 1 (2463 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 24: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 2, 3, 3, 4, 3, 3]`. -/
noncomputable def cell_0_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c24.txt")

theorem cell_0_24_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 24) cell_0_24 = true := by
  tree_decide

/-- Cell 25: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 2, 4, 3, 4, 3, 2]`. -/
noncomputable def cell_0_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c25.txt")

theorem cell_0_25_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 25) cell_0_25 = true := by
  tree_decide

/-- Cell 26: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 3, 2, 2, 3, 4, 4]`. -/
noncomputable def cell_0_26 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c26.txt")

theorem cell_0_26_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 26) cell_0_26 = true := by
  tree_decide

/-- Cell 27: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 3, 2, 3, 3, 4, 3]`. -/
noncomputable def cell_0_27 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c27.txt")

theorem cell_0_27_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 27) cell_0_27 = true := by
  tree_decide

/-- Cell 28: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 3, 3, 2, 3, 3, 4]`. -/
noncomputable def cell_0_28 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c28.txt")

theorem cell_0_28_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 28) cell_0_28 = true := by
  tree_decide

/-- Cell 29: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 3, 3, 3, 3, 3, 3]`. -/
noncomputable def cell_0_29 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c29.txt")

theorem cell_0_29_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 29) cell_0_29 = true := by
  tree_decide

/-- Cell 30: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 3, 4, 3, 3, 3, 2]`. -/
noncomputable def cell_0_30 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c30.txt")

theorem cell_0_30_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 30) cell_0_30 = true := by
  tree_decide

/-- Cell 31: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 4, 3, 2, 3, 2, 4]`. -/
noncomputable def cell_0_31 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c31.txt")

theorem cell_0_31_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 31) cell_0_31 = true := by
  tree_decide

/-- Cell 32: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 4, 3, 3, 3, 2, 3]`. -/
noncomputable def cell_0_32 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c32.txt")

theorem cell_0_32_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 32) cell_0_32 = true := by
  tree_decide

/-- Cell 33: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 4, 4, 3, 3, 2, 2]`. -/
noncomputable def cell_0_33 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c33.txt")

theorem cell_0_33_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 33) cell_0_33 = true := by
  tree_decide

/-- Cell 34: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [3, 5, 4, 3, 3, 2, 1]`. -/
noncomputable def cell_0_34 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c34.txt")

theorem cell_0_34_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 34) cell_0_34 = true := by
  tree_decide

/-- Cell 35: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 3, 2, 2, 1, 4, 5]`. -/
noncomputable def cell_0_35 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c35.txt")

theorem cell_0_35_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 35) cell_0_35 = true := by
  tree_decide

/-- Cell 36: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 3, 2, 2, 2, 4, 4]`. -/
noncomputable def cell_0_36 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c36.txt")

theorem cell_0_36_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 36) cell_0_36 = true := by
  tree_decide

/-- Cell 37: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 3, 2, 3, 2, 4, 3]`. -/
noncomputable def cell_0_37 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c37.txt")

theorem cell_0_37_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 37) cell_0_37 = true := by
  tree_decide

/-- Cell 38: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 3, 3, 2, 1, 3, 5]`. -/
noncomputable def cell_0_38 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c38.txt")

theorem cell_0_38_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 38) cell_0_38 = true := by
  tree_decide

/-- Cell 39: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 3, 3, 2, 2, 3, 4]`. -/
noncomputable def cell_0_39 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c39.txt")

theorem cell_0_39_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 39) cell_0_39 = true := by
  tree_decide

/-- Cell 40: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 3, 3, 3, 2, 3, 3]`. -/
noncomputable def cell_0_40 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c40.txt")

theorem cell_0_40_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 40) cell_0_40 = true := by
  tree_decide

/-- Cell 41: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 3, 4, 3, 2, 3, 2]`. -/
noncomputable def cell_0_41 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c41.txt")

theorem cell_0_41_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 41) cell_0_41 = true := by
  tree_decide

/-- Cell 42: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 4, 3, 2, 1, 2, 5]`. -/
noncomputable def cell_0_42 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c42.txt")

theorem cell_0_42_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 42) cell_0_42 = true := by
  tree_decide

/-- Cell 43: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 4, 3, 2, 2, 2, 4]`. -/
noncomputable def cell_0_43 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c43.txt")

theorem cell_0_43_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 43) cell_0_43 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
