module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel
public import Heilbronn.Common.DataReader

/-! # Convex two-top certificates, chunk 5 (2415 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 61 `[4, 4, 3, 3, 2, 3, 4, 5]`. -/
noncomputable def tree61 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w61.txt")

theorem tree61_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 61) tree61 = true := by
  decide +kernel

/-- Word 62 `[4, 4, 3, 3, 3, 3, 4, 4]`. -/
noncomputable def tree62 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w62.txt")

theorem tree62_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 62) tree62 = true := by
  decide +kernel

/-- Word 63 `[4, 4, 3, 4, 3, 3, 4, 3]`. -/
noncomputable def tree63 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w63.txt")

theorem tree63_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 63) tree63 = true := by
  decide +kernel

/-- Word 64 `[4, 4, 4, 3, 2, 3, 3, 5]`. -/
noncomputable def tree64 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w64.txt")

theorem tree64_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 64) tree64 = true := by
  decide +kernel

/-- Word 65 `[4, 4, 4, 3, 3, 3, 3, 4]`. -/
noncomputable def tree65 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w65.txt")

theorem tree65_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 65) tree65 = true := by
  decide +kernel

/-- Word 66 `[4, 4, 4, 4, 3, 3, 3, 3]`, split on `x` at `1/2`. -/
noncomputable def tree66 : Cover.Tree Split :=
  .node (.cut (v 10) (1 / 2)) [.cert (term_rows% "../../../../data/nine/six_two_top_convex/w66_xl.txt"), .cert (term_rows% "../../../../data/nine/six_two_top_convex/w66_xh.txt")]

theorem tree66_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 66) tree66 = true := by
  decide +kernel

/-- Word 67 `[4, 4, 5, 4, 3, 3, 3, 2]`. -/
noncomputable def tree67 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w67.txt")

theorem tree67_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 67) tree67 = true := by
  decide +kernel

/-- Word 68 `[4, 5, 4, 3, 2, 3, 2, 5]`. -/
noncomputable def tree68 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w68.txt")

theorem tree68_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 68) tree68 = true := by
  decide +kernel

/-- Word 69 `[4, 5, 4, 3, 3, 3, 2, 4]`. -/
noncomputable def tree69 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w69.txt")

theorem tree69_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 69) tree69 = true := by
  decide +kernel

/-- Word 70 `[4, 5, 4, 4, 3, 3, 2, 3]`. -/
noncomputable def tree70 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w70.txt")

theorem tree70_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 70) tree70 = true := by
  decide +kernel

/-- Word 71 `[4, 5, 5, 4, 3, 3, 2, 2]`. -/
noncomputable def tree71 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w71.txt")

theorem tree71_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 71) tree71 = true := by
  decide +kernel

/-- Word 72 `[4, 6, 5, 4, 3, 3, 2, 1]`. -/
noncomputable def tree72 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w72.txt")

theorem tree72_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 72) tree72 = true := by
  decide +kernel

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
