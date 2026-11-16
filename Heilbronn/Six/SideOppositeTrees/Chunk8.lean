module

public import Heilbronn.Six.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 8 (2500 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 84 `[5, 4, 4, 3, 3, 2, 3, 4]`, split on `x - z`, `w - h`. -/
noncomputable def tree84 : Cover.Tree Split :=
  .node (.cut (v 6 - v 8) 0) [.cert (term_rows% "../../../data/six_side_opposite/w84_xl.txt"), .node (.cut (v 9 - v 1) 0) [.cert (term_rows% "../../../data/six_side_opposite/w84_yl.txt"), .cert (term_rows% "../../../data/six_side_opposite/w84_j.txt")]]

theorem tree84_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 84) tree84 = true := by
  decide +kernel

/-- Word 85 `[5, 4, 4, 4, 3, 2, 3, 3]`. -/
noncomputable def tree85 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w85.txt")

theorem tree85_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 85) tree85 = true := by
  decide +kernel

/-- Word 86 `[5, 4, 5, 4, 3, 2, 3, 2]`. -/
noncomputable def tree86 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w86.txt")

theorem tree86_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 86) tree86 = true := by
  decide +kernel

/-- Word 87 `[5, 5, 4, 3, 2, 1, 2, 6]`. -/
noncomputable def tree87 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w87.txt")

theorem tree87_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 87) tree87 = true := by
  decide +kernel

/-- Word 88 `[5, 5, 4, 3, 2, 2, 2, 5]`. -/
noncomputable def tree88 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w88.txt")

theorem tree88_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 88) tree88 = true := by
  decide +kernel

/-- Word 89 `[5, 5, 4, 3, 3, 2, 2, 4]`. -/
noncomputable def tree89 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w89.txt")

theorem tree89_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 89) tree89 = true := by
  decide +kernel

/-- Word 90 `[5, 5, 4, 4, 3, 2, 2, 3]`. -/
noncomputable def tree90 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w90.txt")

theorem tree90_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 90) tree90 = true := by
  decide +kernel

/-- Word 91 `[5, 5, 5, 4, 3, 2, 2, 2]`. -/
noncomputable def tree91 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w91.txt")

theorem tree91_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 91) tree91 = true := by
  decide +kernel

/-- Word 92 `[6, 5, 4, 3, 2, 1, 1, 6]`. -/
noncomputable def tree92 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w92.txt")

theorem tree92_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 92) tree92 = true := by
  decide +kernel

end Heilbronn.SixBoundarySideOpposite.Model
