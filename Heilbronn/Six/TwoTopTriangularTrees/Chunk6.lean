module

public import Heilbronn.Six.TwoTopTriangularModel
public import Heilbronn.Common.DataReader

/-! # Triangular two-top certificates, chunk 6 (2292 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

/-- Cell 124: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 2, 1, 3, 5, 4, 3]`. -/
noncomputable def cell_2_20 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c124.txt")

theorem cell_2_20_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 20) cell_2_20 = true := by
  decide +kernel

/-- Cell 125: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 2, 2, 2, 4, 4, 4]`. -/
noncomputable def cell_2_21 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c125.txt")

theorem cell_2_21_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 21) cell_2_21 = true := by
  decide +kernel

/-- Cell 126: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 2, 2, 3, 4, 4, 3]`. -/
noncomputable def cell_2_22 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c126.txt")

theorem cell_2_22_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 22) cell_2_22 = true := by
  decide +kernel

/-- Cell 127: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 2, 3, 2, 4, 3, 4]`. -/
noncomputable def cell_2_23 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c127.txt")

theorem cell_2_23_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 23) cell_2_23 = true := by
  decide +kernel

/-- Cell 128: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 2, 3, 3, 4, 3, 3]`. -/
noncomputable def cell_2_24 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c128.txt")

theorem cell_2_24_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 24) cell_2_24 = true := by
  decide +kernel

/-- Cell 129: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 2, 4, 3, 4, 3, 2]`. -/
noncomputable def cell_2_25 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c129.txt")

theorem cell_2_25_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 25) cell_2_25 = true := by
  decide +kernel

/-- Cell 130: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 3, 2, 2, 3, 4, 4]`. -/
noncomputable def cell_2_26 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c130.txt")

theorem cell_2_26_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 26) cell_2_26 = true := by
  decide +kernel

/-- Cell 131: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 3, 2, 3, 3, 4, 3]`. -/
noncomputable def cell_2_27 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c131.txt")

theorem cell_2_27_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 27) cell_2_27 = true := by
  decide +kernel

/-- Cell 132: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 3, 3, 2, 3, 3, 4]`. -/
noncomputable def cell_2_28 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c132.txt")

theorem cell_2_28_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 28) cell_2_28 = true := by
  decide +kernel

/-- Cell 133: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 3, 3, 3, 3, 3, 3]`. -/
noncomputable def cell_2_29 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c133.txt")

theorem cell_2_29_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 29) cell_2_29 = true := by
  decide +kernel

/-- Cell 134: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 3, 4, 3, 3, 3, 2]`. -/
noncomputable def cell_2_30 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c134.txt")

theorem cell_2_30_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 30) cell_2_30 = true := by
  decide +kernel

/-- Cell 135: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 4, 3, 2, 3, 2, 4]`. -/
noncomputable def cell_2_31 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c135.txt")

theorem cell_2_31_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 31) cell_2_31 = true := by
  decide +kernel

/-- Cell 136: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 4, 3, 3, 3, 2, 3]`. -/
noncomputable def cell_2_32 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c136.txt")

theorem cell_2_32_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 32) cell_2_32 = true := by
  decide +kernel

/-- Cell 137: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 4, 4, 3, 3, 2, 2]`. -/
noncomputable def cell_2_33 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c137.txt")

theorem cell_2_33_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 33) cell_2_33 = true := by
  decide +kernel

/-- Cell 138: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [3, 5, 4, 3, 3, 2, 1]`. -/
noncomputable def cell_2_34 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c138.txt")

theorem cell_2_34_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 34) cell_2_34 = true := by
  decide +kernel

/-- Cell 139: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 3, 2, 2, 1, 4, 5]`. -/
noncomputable def cell_2_35 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c139.txt")

theorem cell_2_35_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 35) cell_2_35 = true := by
  decide +kernel

/-- Cell 140: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 3, 2, 2, 2, 4, 4]`. -/
noncomputable def cell_2_36 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c140.txt")

theorem cell_2_36_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 36) cell_2_36 = true := by
  decide +kernel

/-- Cell 141: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 3, 2, 3, 2, 4, 3]`. -/
noncomputable def cell_2_37 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c141.txt")

theorem cell_2_37_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 37) cell_2_37 = true := by
  decide +kernel

/-- Cell 142: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 3, 3, 2, 1, 3, 5]`. -/
noncomputable def cell_2_38 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c142.txt")

theorem cell_2_38_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 38) cell_2_38 = true := by
  decide +kernel

/-- Cell 143: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 3, 3, 2, 2, 3, 4]`. -/
noncomputable def cell_2_39 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c143.txt")

theorem cell_2_39_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 39) cell_2_39 = true := by
  decide +kernel

/-- Cell 144: `r(P) = [3, 3, 2, 1, 3, 5, 4]`, `r(Q) = [4, 3, 3, 3, 2, 3, 3]`. -/
noncomputable def cell_2_40 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_triangular/c144.txt")

theorem cell_2_40_ok : checkTree (pkg.spec Pkg.noClosed) (cellFacts 2 40) cell_2_40 = true := by
  decide +kernel

end Heilbronn.SixBoundaryTwoTopTriangular.Model
