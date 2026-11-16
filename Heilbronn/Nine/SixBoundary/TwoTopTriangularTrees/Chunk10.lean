module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 10 (2309 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 210: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [1, 3, 5, 4, 3, 3, 2]`. -/
noncomputable def cell_4_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c210.txt")

theorem cell_4_2_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 2) cell_4_2 = true := by
  decide +kernel

/-- Cell 211: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [1, 4, 5, 4, 3, 2, 2]`. -/
noncomputable def cell_4_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c211.txt")

theorem cell_4_3_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 3) cell_4_3 = true := by
  decide +kernel

/-- Cell 212: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [1, 5, 5, 4, 3, 2, 1]`. -/
noncomputable def cell_4_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c212.txt")

theorem cell_4_4_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 4) cell_4_4 = true := by
  decide +kernel

/-- Cell 213: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 1, 1, 5, 5, 4, 3]`. -/
noncomputable def cell_4_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c213.txt")

theorem cell_4_5_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 5) cell_4_5 = true := by
  decide +kernel

/-- Cell 214: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 1, 2, 5, 4, 4, 3]`. -/
noncomputable def cell_4_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c214.txt")

theorem cell_4_6_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 6) cell_4_6 = true := by
  decide +kernel

/-- Cell 215: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 1, 3, 5, 4, 3, 3]`. -/
noncomputable def cell_4_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c215.txt")

theorem cell_4_7_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 7) cell_4_7 = true := by
  decide +kernel

/-- Cell 216: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 1, 4, 5, 4, 3, 2]`. -/
noncomputable def cell_4_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c216.txt")

theorem cell_4_8_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 8) cell_4_8 = true := by
  decide +kernel

/-- Cell 217: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 2, 1, 4, 5, 4, 3]`. -/
noncomputable def cell_4_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c217.txt")

theorem cell_4_9_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 9) cell_4_9 = true := by
  decide +kernel

/-- Cell 218: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 2, 2, 4, 4, 4, 3]`. -/
noncomputable def cell_4_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c218.txt")

theorem cell_4_10_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 10) cell_4_10 = true := by
  decide +kernel

/-- Cell 219: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 2, 3, 4, 4, 3, 3]`. -/
noncomputable def cell_4_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c219.txt")

theorem cell_4_11_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 11) cell_4_11 = true := by
  decide +kernel

/-- Cell 220: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 2, 4, 4, 4, 3, 2]`. -/
noncomputable def cell_4_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c220.txt")

theorem cell_4_12_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 12) cell_4_12 = true := by
  decide +kernel

/-- Cell 221: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 3, 2, 4, 3, 4, 3]`. -/
noncomputable def cell_4_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c221.txt")

theorem cell_4_13_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 13) cell_4_13 = true := by
  decide +kernel

/-- Cell 222: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 3, 3, 4, 3, 3, 3]`. -/
noncomputable def cell_4_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c222.txt")

theorem cell_4_14_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 14) cell_4_14 = true := by
  decide +kernel

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
