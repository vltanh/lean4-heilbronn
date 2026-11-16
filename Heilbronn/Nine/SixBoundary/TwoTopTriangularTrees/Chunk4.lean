module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 4 (2452 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 88: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 3, 2, 2, 2, 4, 4]`. -/
noncomputable def cell_1_36 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c88.txt")

theorem cell_1_36_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 36) cell_1_36 = true := by
  decide +kernel

/-- Cell 89: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 3, 2, 3, 2, 4, 3]`. -/
noncomputable def cell_1_37 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c89.txt")

theorem cell_1_37_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 37) cell_1_37 = true := by
  decide +kernel

/-- Cell 90: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 3, 3, 2, 1, 3, 5]`. -/
noncomputable def cell_1_38 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c90.txt")

theorem cell_1_38_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 38) cell_1_38 = true := by
  decide +kernel

/-- Cell 91: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 3, 3, 2, 2, 3, 4]`. -/
noncomputable def cell_1_39 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c91.txt")

theorem cell_1_39_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 39) cell_1_39 = true := by
  decide +kernel

/-- Cell 92: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 3, 3, 3, 2, 3, 3]`. -/
noncomputable def cell_1_40 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c92.txt")

theorem cell_1_40_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 40) cell_1_40 = true := by
  decide +kernel

/-- Cell 93: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 3, 4, 3, 2, 3, 2]`. -/
noncomputable def cell_1_41 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c93.txt")

theorem cell_1_41_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 41) cell_1_41 = true := by
  decide +kernel

/-- Cell 94: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 4, 3, 2, 1, 2, 5]`. -/
noncomputable def cell_1_42 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c94.txt")

theorem cell_1_42_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 42) cell_1_42 = true := by
  decide +kernel

/-- Cell 95: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 4, 3, 2, 2, 2, 4]`. -/
noncomputable def cell_1_43 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c95.txt")

theorem cell_1_43_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 43) cell_1_43 = true := by
  decide +kernel

/-- Cell 96: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 4, 3, 3, 2, 2, 3]`. -/
noncomputable def cell_1_44 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c96.txt")

theorem cell_1_44_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 44) cell_1_44 = true := by
  decide +kernel

/-- Cell 97: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 4, 4, 3, 2, 2, 2]`. -/
noncomputable def cell_1_45 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c97.txt")

theorem cell_1_45_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 45) cell_1_45 = true := by
  decide +kernel

/-- Cell 98: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [4, 5, 4, 3, 2, 2, 1]`. -/
noncomputable def cell_1_46 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c98.txt")

theorem cell_1_46_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 46) cell_1_46 = true := by
  decide +kernel

/-- Cell 99: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [5, 4, 3, 2, 1, 1, 5]`. -/
noncomputable def cell_1_47 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c99.txt")

theorem cell_1_47_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 47) cell_1_47 = true := by
  decide +kernel

/-- Cell 100: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [5, 4, 3, 2, 2, 1, 4]`. -/
noncomputable def cell_1_48 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c100.txt")

theorem cell_1_48_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 48) cell_1_48 = true := by
  decide +kernel

/-- Cell 101: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [5, 4, 3, 3, 2, 1, 3]`. -/
noncomputable def cell_1_49 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c101.txt")

theorem cell_1_49_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 49) cell_1_49 = true := by
  decide +kernel

/-- Cell 102: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [5, 4, 4, 3, 2, 1, 2]`. -/
noncomputable def cell_1_50 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c102.txt")

theorem cell_1_50_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 50) cell_1_50 = true := by
  decide +kernel

/-- Cell 103: `r(P) = [3, 2, 2, 1, 4, 5, 4]`, `r(Q) = [5, 5, 4, 3, 2, 1, 1]`. -/
noncomputable def cell_1_51 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c103.txt")

theorem cell_1_51_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 1 51) cell_1_51 = true := by
  decide +kernel

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
