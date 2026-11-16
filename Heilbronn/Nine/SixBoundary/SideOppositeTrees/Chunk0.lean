module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 0 (2330 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 0 `[1, 2, 6, 5, 5, 4, 3, 2]`. -/
noncomputable def tree0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w0.txt")

theorem tree0_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 0) tree0 = true := by
  tree_decide

/-- Word 1 `[1, 3, 6, 5, 4, 4, 3, 2]`. -/
noncomputable def tree1 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w1.txt")

theorem tree1_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 1) tree1 = true := by
  tree_decide

/-- Word 2 `[1, 4, 6, 5, 4, 3, 3, 2]`. -/
noncomputable def tree2 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w2.txt")

theorem tree2_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 2) tree2 = true := by
  tree_decide

/-- Word 3 `[1, 5, 6, 5, 4, 3, 2, 2]`. -/
noncomputable def tree3 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w3.txt")

theorem tree3_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 3) tree3 = true := by
  tree_decide

/-- Word 4 `[2, 2, 2, 5, 5, 5, 4, 3]`. -/
noncomputable def tree4 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w4.txt")

theorem tree4_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 4) tree4 = true := by
  tree_decide

/-- Word 5 `[2, 2, 3, 5, 5, 4, 4, 3]`. -/
noncomputable def tree5 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w5.txt")

theorem tree5_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 5) tree5 = true := by
  tree_decide

/-- Word 6 `[2, 2, 4, 5, 5, 4, 3, 3]`. -/
noncomputable def tree6 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w6.txt")

theorem tree6_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 6) tree6 = true := by
  tree_decide

/-- Word 7 `[2, 2, 5, 5, 5, 4, 3, 2]`. -/
noncomputable def tree7 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w7.txt")

theorem tree7_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 7) tree7 = true := by
  tree_decide

/-- Word 8 `[2, 3, 2, 5, 4, 5, 4, 3]`. -/
noncomputable def tree8 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w8.txt")

theorem tree8_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 8) tree8 = true := by
  tree_decide

/-- Word 9 `[2, 3, 3, 5, 4, 4, 4, 3]`. -/
noncomputable def tree9 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w9.txt")

theorem tree9_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 9) tree9 = true := by
  tree_decide

/-- Word 10 `[2, 3, 4, 5, 4, 4, 3, 3]`. -/
noncomputable def tree10 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w10.txt")

theorem tree10_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 10) tree10 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundarySideOpposite.Model
