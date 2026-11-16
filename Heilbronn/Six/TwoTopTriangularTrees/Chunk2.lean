module

public import Heilbronn.Six.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 2 (2330 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 44: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 4, 3, 3, 2, 2, 3]`. -/
noncomputable def cell_0_44 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c44.txt")

theorem cell_0_44_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 44) cell_0_44 = true := by
  decide +kernel

/-- Cell 45: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 4, 4, 3, 2, 2, 2]`. -/
noncomputable def cell_0_45 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c45.txt")

theorem cell_0_45_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 45) cell_0_45 = true := by
  decide +kernel

/-- Cell 46: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [4, 5, 4, 3, 2, 2, 1]`. -/
noncomputable def cell_0_46 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c46.txt")

theorem cell_0_46_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 46) cell_0_46 = true := by
  decide +kernel

/-- Cell 47: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [5, 4, 3, 2, 1, 1, 5]`. -/
noncomputable def cell_0_47 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c47.txt")

theorem cell_0_47_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 47) cell_0_47 = true := by
  decide +kernel

/-- Cell 48: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [5, 4, 3, 2, 2, 1, 4]`. -/
noncomputable def cell_0_48 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c48.txt")

theorem cell_0_48_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 48) cell_0_48 = true := by
  decide +kernel

/-- Cell 49: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [5, 4, 3, 3, 2, 1, 3]`. -/
noncomputable def cell_0_49 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c49.txt")

theorem cell_0_49_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 49) cell_0_49 = true := by
  decide +kernel

/-- Cell 50: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [5, 4, 4, 3, 2, 1, 2]`. -/
noncomputable def cell_0_50 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c50.txt")

theorem cell_0_50_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 50) cell_0_50 = true := by
  decide +kernel

/-- Cell 51: `r(P) = [3, 2, 1, 1, 5, 5, 4]`, `r(Q) = [5, 5, 4, 3, 2, 1, 1]`. -/
noncomputable def cell_0_51 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c51.txt")

theorem cell_0_51_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 0 51) cell_0_51 = true := by
  decide +kernel

/-- Cell 52: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [1, 1, 5, 5, 4, 3, 2]`. -/
noncomputable def cell_1_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c52.txt")

theorem cell_1_0_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 0) cell_1_0 = true := by
  decide +kernel

/-- Cell 53: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [1, 2, 5, 4, 4, 3, 2]`. -/
noncomputable def cell_1_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c53.txt")

theorem cell_1_1_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 1) cell_1_1 = true := by
  decide +kernel

/-- Cell 54: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [1, 3, 5, 4, 3, 3, 2]`. -/
noncomputable def cell_1_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c54.txt")

theorem cell_1_2_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 2) cell_1_2 = true := by
  decide +kernel

/-- Cell 55: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [1, 4, 5, 4, 3, 2, 2]`. -/
noncomputable def cell_1_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c55.txt")

theorem cell_1_3_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 3) cell_1_3 = true := by
  decide +kernel

/-- Cell 56: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [1, 5, 5, 4, 3, 2, 1]`. -/
noncomputable def cell_1_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c56.txt")

theorem cell_1_4_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 4) cell_1_4 = true := by
  decide +kernel

/-- Cell 57: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 1, 1, 5, 5, 4, 3]`. -/
noncomputable def cell_1_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c57.txt")

theorem cell_1_5_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 5) cell_1_5 = true := by
  decide +kernel

/-- Cell 58: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 1, 2, 5, 4, 4, 3]`. -/
noncomputable def cell_1_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c58.txt")

theorem cell_1_6_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 6) cell_1_6 = true := by
  decide +kernel

/-- Cell 59: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 1, 3, 5, 4, 3, 3]`. -/
noncomputable def cell_1_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c59.txt")

theorem cell_1_7_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 7) cell_1_7 = true := by
  decide +kernel

/-- Cell 60: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 1, 4, 5, 4, 3, 2]`. -/
noncomputable def cell_1_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c60.txt")

theorem cell_1_8_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 8) cell_1_8 = true := by
  decide +kernel

/-- Cell 61: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 2, 1, 4, 5, 4, 3]`. -/
noncomputable def cell_1_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c61.txt")

theorem cell_1_9_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 9) cell_1_9 = true := by
  decide +kernel

/-- Cell 62: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 2, 2, 4, 4, 4, 3]`. -/
noncomputable def cell_1_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c62.txt")

theorem cell_1_10_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 10) cell_1_10 = true := by
  decide +kernel

/-- Cell 63: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 2, 3, 4, 4, 3, 3]`. -/
noncomputable def cell_1_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c63.txt")

theorem cell_1_11_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 11) cell_1_11 = true := by
  decide +kernel

/-- Cell 64: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 2, 4, 4, 4, 3, 2]`. -/
noncomputable def cell_1_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c64.txt")

theorem cell_1_12_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 12) cell_1_12 = true := by
  decide +kernel

/-- Cell 65: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [2, 3, 2, 4, 3, 4, 3]`. -/
noncomputable def cell_1_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c65.txt")

theorem cell_1_13_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 13) cell_1_13 = true := by
  decide +kernel

end Heilbronn.SixBoundaryTwoTopTriangular.Model
