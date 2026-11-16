module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 9 (809 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 93 `[6, 5, 4, 3, 2, 2, 1, 5]`. -/
noncomputable def tree93 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w93.txt")

theorem tree93_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 93) tree93 = true := by
  tree_decide

/-- Word 94 `[6, 5, 4, 3, 3, 2, 1, 4]`. -/
noncomputable def tree94 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w94.txt")

theorem tree94_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 94) tree94 = true := by
  tree_decide

/-- Word 95 `[6, 5, 4, 4, 3, 2, 1, 3]`. -/
noncomputable def tree95 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w95.txt")

theorem tree95_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 95) tree95 = true := by
  tree_decide

/-- Word 96 `[6, 5, 5, 4, 3, 2, 1, 2]`. -/
noncomputable def tree96 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w96.txt")

theorem tree96_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 96) tree96 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundarySideOpposite.Model
