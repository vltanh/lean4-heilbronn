module

public import Heilbronn.Six.TwoTopConvexModel
public import Heilbronn.Common.DataReader

/-! # Convex two-top certificates, chunk 7 (466 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 85 `[5, 5, 4, 4, 3, 2, 2, 3]`. -/
noncomputable def tree85 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w85.txt")

theorem tree85_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 85) tree85 = true := by
  decide +kernel

/-- Word 86 `[5, 5, 5, 4, 3, 2, 2, 2]`. -/
noncomputable def tree86 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w86.txt")

theorem tree86_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 86) tree86 = true := by
  decide +kernel

/-- Word 87 `[5, 6, 5, 4, 3, 2, 2, 1]`. -/
noncomputable def tree87 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w87.txt")

theorem tree87_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 87) tree87 = true := by
  decide +kernel

/-- Word 88 `[6, 5, 4, 3, 2, 1, 1, 6]`. -/
noncomputable def tree88 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w88.txt")

theorem tree88_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 88) tree88 = true := by
  decide +kernel

/-- Word 89 `[6, 5, 4, 3, 2, 2, 1, 5]`. -/
noncomputable def tree89 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w89.txt")

theorem tree89_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 89) tree89 = true := by
  decide +kernel

/-- Word 90 `[6, 5, 4, 3, 3, 2, 1, 4]`. -/
noncomputable def tree90 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w90.txt")

theorem tree90_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 90) tree90 = true := by
  decide +kernel

/-- Word 91 `[6, 5, 4, 4, 3, 2, 1, 3]`. -/
noncomputable def tree91 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w91.txt")

theorem tree91_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 91) tree91 = true := by
  decide +kernel

/-- Word 92 `[6, 5, 5, 4, 3, 2, 1, 2]`. -/
noncomputable def tree92 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w92.txt")

theorem tree92_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 92) tree92 = true := by
  decide +kernel

/-- Word 93 `[6, 6, 5, 4, 3, 2, 1, 1]`. -/
noncomputable def tree93 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_two_top_convex/w93.txt")

theorem tree93_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 93) tree93 = true := by
  decide +kernel

end Heilbronn.SixBoundaryTwoTopConvex.Model
