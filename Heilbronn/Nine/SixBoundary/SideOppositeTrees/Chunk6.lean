module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 6 (2489 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 64 `[4, 4, 3, 3, 2, 3, 4, 5]`. -/
noncomputable def tree64 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w64.txt")

theorem tree64_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 64) tree64 = true := by
  tree_decide

/-- Word 65 `[4, 4, 3, 3, 3, 3, 4, 4]`. -/
noncomputable def tree65 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w65.txt")

theorem tree65_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 65) tree65 = true := by
  tree_decide

/-- Word 66 `[4, 4, 3, 4, 3, 3, 4, 3]`. -/
noncomputable def tree66 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w66.txt")

theorem tree66_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 66) tree66 = true := by
  tree_decide

/-- Word 67 `[4, 4, 4, 3, 2, 3, 3, 5]`. -/
noncomputable def tree67 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w67.txt")

theorem tree67_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 67) tree67 = true := by
  tree_decide

/-- Word 68 `[4, 4, 4, 3, 3, 3, 3, 4]`. -/
noncomputable def tree68 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w68.txt")

theorem tree68_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 68) tree68 = true := by
  tree_decide

/-- Word 69 `[4, 4, 4, 4, 3, 3, 3, 3]`, split on `x - z`, `w - h`. -/
noncomputable def tree69 : Cover.Tree Split :=
  .node (.cut (v 6 - v 8) 0) [.cert (term_rows% "../../Data/six_side_opposite/w69_xl.txt"), .node (.cut (v 9 - v 1) 0) [.cert (term_rows% "../../Data/six_side_opposite/w69_yl.txt"), .cert (term_rows% "../../Data/six_side_opposite/w69_j.txt")]]

theorem tree69_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 69) tree69 = true := by
  tree_decide

/-- Word 70 `[4, 4, 5, 4, 3, 3, 3, 2]`. -/
noncomputable def tree70 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w70.txt")

theorem tree70_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 70) tree70 = true := by
  tree_decide

/-- Word 71 `[4, 5, 4, 3, 2, 3, 2, 5]`. -/
noncomputable def tree71 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w71.txt")

theorem tree71_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 71) tree71 = true := by
  tree_decide

/-- Word 72 `[4, 5, 4, 3, 3, 3, 2, 4]`. -/
noncomputable def tree72 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w72.txt")

theorem tree72_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 72) tree72 = true := by
  tree_decide

/-- Word 73 `[4, 5, 4, 4, 3, 3, 2, 3]`. -/
noncomputable def tree73 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w73.txt")

theorem tree73_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 73) tree73 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundarySideOpposite.Model
