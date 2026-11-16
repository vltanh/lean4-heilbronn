module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 8 (2405 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 163: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 1, 3, 5, 4, 3, 3]`. -/
noncomputable def cell_3_7 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c163.txt")

theorem cell_3_7_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 7) cell_3_7 = true := by
  decide +kernel

/-- Cell 164: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 1, 4, 5, 4, 3, 2]`. -/
noncomputable def cell_3_8 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c164.txt")

theorem cell_3_8_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 8) cell_3_8 = true := by
  decide +kernel

/-- Cell 165: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 2, 1, 4, 5, 4, 3]`. -/
noncomputable def cell_3_9 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c165.txt")

theorem cell_3_9_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 9) cell_3_9 = true := by
  decide +kernel

/-- Cell 166: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 2, 2, 4, 4, 4, 3]`. -/
noncomputable def cell_3_10 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c166.txt")

theorem cell_3_10_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 10) cell_3_10 = true := by
  decide +kernel

/-- Cell 167: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 2, 3, 4, 4, 3, 3]`. -/
noncomputable def cell_3_11 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c167.txt")

theorem cell_3_11_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 11) cell_3_11 = true := by
  decide +kernel

/-- Cell 168: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 2, 4, 4, 4, 3, 2]`. -/
noncomputable def cell_3_12 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c168.txt")

theorem cell_3_12_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 12) cell_3_12 = true := by
  decide +kernel

/-- Cell 169: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 3, 2, 4, 3, 4, 3]`. -/
noncomputable def cell_3_13 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c169.txt")

theorem cell_3_13_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 13) cell_3_13 = true := by
  decide +kernel

/-- Cell 170: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 3, 3, 4, 3, 3, 3]`. -/
noncomputable def cell_3_14 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c170.txt")

theorem cell_3_14_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 14) cell_3_14 = true := by
  decide +kernel

/-- Cell 171: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 3, 4, 4, 3, 3, 2]`. -/
noncomputable def cell_3_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c171.txt")

theorem cell_3_15_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 15) cell_3_15 = true := by
  decide +kernel

/-- Cell 172: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 4, 3, 4, 3, 2, 3]`. -/
noncomputable def cell_3_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c172.txt")

theorem cell_3_16_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 16) cell_3_16 = true := by
  decide +kernel

/-- Cell 173: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 4, 4, 4, 3, 2, 2]`. -/
noncomputable def cell_3_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c173.txt")

theorem cell_3_17_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 17) cell_3_17 = true := by
  decide +kernel

/-- Cell 174: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [2, 5, 4, 4, 3, 2, 1]`. -/
noncomputable def cell_3_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c174.txt")

theorem cell_3_18_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 18) cell_3_18 = true := by
  decide +kernel

/-- Cell 175: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 2, 1, 2, 5, 4, 4]`. -/
noncomputable def cell_3_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c175.txt")

theorem cell_3_19_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 19) cell_3_19 = true := by
  decide +kernel

/-- Cell 176: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 2, 1, 3, 5, 4, 3]`. -/
noncomputable def cell_3_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c176.txt")

theorem cell_3_20_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 20) cell_3_20 = true := by
  decide +kernel

/-- Cell 177: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 2, 2, 2, 4, 4, 4]`. -/
noncomputable def cell_3_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c177.txt")

theorem cell_3_21_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 21) cell_3_21 = true := by
  decide +kernel

/-- Cell 178: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 2, 2, 3, 4, 4, 3]`. -/
noncomputable def cell_3_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c178.txt")

theorem cell_3_22_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 22) cell_3_22 = true := by
  decide +kernel

/-- Cell 179: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 2, 3, 2, 4, 3, 4]`. -/
noncomputable def cell_3_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c179.txt")

theorem cell_3_23_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 23) cell_3_23 = true := by
  decide +kernel

/-- Cell 180: `r(P) = [4, 3, 2, 1, 1, 5, 5]`, `r(Q) = [3, 2, 3, 3, 4, 3, 3]`. -/
noncomputable def cell_3_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c180.txt")

theorem cell_3_24_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 3 24) cell_3_24 = true := by
  decide +kernel

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
