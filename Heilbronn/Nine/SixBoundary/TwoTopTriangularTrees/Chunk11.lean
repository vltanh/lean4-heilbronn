module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 11 (2456 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 223: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 3, 4, 4, 3, 3, 2]`. -/
noncomputable def cell_4_15 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c223.txt")

theorem cell_4_15_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 15) cell_4_15 = true := by
  decide +kernel

/-- Cell 224: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 4, 3, 4, 3, 2, 3]`. -/
noncomputable def cell_4_16 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c224.txt")

theorem cell_4_16_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 16) cell_4_16 = true := by
  decide +kernel

/-- Cell 225: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 4, 4, 4, 3, 2, 2]`. -/
noncomputable def cell_4_17 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c225.txt")

theorem cell_4_17_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 17) cell_4_17 = true := by
  decide +kernel

/-- Cell 226: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [2, 5, 4, 4, 3, 2, 1]`. -/
noncomputable def cell_4_18 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c226.txt")

theorem cell_4_18_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 18) cell_4_18 = true := by
  decide +kernel

/-- Cell 227: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 2, 1, 2, 5, 4, 4]`. -/
noncomputable def cell_4_19 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c227.txt")

theorem cell_4_19_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 19) cell_4_19 = true := by
  decide +kernel

/-- Cell 228: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 2, 1, 3, 5, 4, 3]`. -/
noncomputable def cell_4_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c228.txt")

theorem cell_4_20_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 20) cell_4_20 = true := by
  decide +kernel

/-- Cell 229: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 2, 2, 2, 4, 4, 4]`. -/
noncomputable def cell_4_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c229.txt")

theorem cell_4_21_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 21) cell_4_21 = true := by
  decide +kernel

/-- Cell 230: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 2, 2, 3, 4, 4, 3]`. -/
noncomputable def cell_4_22 : Cover.Tree Split :=
  .node (.tri 2 7 8) [.cert (term_rows% "../../../../data/nine/six_two_top_triangular/c230_0.txt"), .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c230_1.txt")]

theorem cell_4_22_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 22) cell_4_22 = true := by
  decide +kernel

/-- Cell 231: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 2, 3, 2, 4, 3, 4]`. -/
noncomputable def cell_4_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c231.txt")

theorem cell_4_23_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 23) cell_4_23 = true := by
  decide +kernel

/-- Cell 232: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 2, 3, 3, 4, 3, 3]`. -/
noncomputable def cell_4_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c232.txt")

theorem cell_4_24_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 24) cell_4_24 = true := by
  decide +kernel

/-- Cell 233: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 2, 4, 3, 4, 3, 2]`. -/
noncomputable def cell_4_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c233.txt")

theorem cell_4_25_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 25) cell_4_25 = true := by
  decide +kernel

/-- Cell 234: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 3, 2, 2, 3, 4, 4]`. -/
noncomputable def cell_4_26 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c234.txt")

theorem cell_4_26_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 26) cell_4_26 = true := by
  decide +kernel

/-- Cell 235: `r(P) = [4, 3, 2, 1, 2, 5, 4]`, `r(Q) = [3, 3, 2, 3, 3, 4, 3]`. -/
noncomputable def cell_4_27 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_triangular/c235.txt")

theorem cell_4_27_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 4 27) cell_4_27 = true := by
  decide +kernel

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
