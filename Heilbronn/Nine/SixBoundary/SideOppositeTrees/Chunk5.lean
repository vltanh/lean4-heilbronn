module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 5 (2457 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 51 `[4, 3, 2, 3, 3, 5, 4, 4]`. -/
noncomputable def tree51 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w51.txt")

theorem tree51_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 51) tree51 = true := by
  tree_decide

/-- Word 52 `[4, 3, 2, 4, 3, 5, 4, 3]`. -/
noncomputable def tree52 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w52.txt")

theorem tree52_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 52) tree52 = true := by
  tree_decide

/-- Word 53 `[4, 3, 3, 2, 2, 4, 5, 5]`. -/
noncomputable def tree53 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w53.txt")

theorem tree53_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 53) tree53 = true := by
  tree_decide

/-- Word 54, branch `x_low`. -/
noncomputable def res54_0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w54_x_low.txt")

theorem res54_0_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 54 ++ [Sum.inr (res54.getD 0 0)]) res54_0 = true := by
  tree_decide

/-- Word 54, branch `y_low`. -/
noncomputable def res54_1 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w54_y_low.txt")

theorem res54_1_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 54 ++ [Sum.inr (res54.getD 1 0)]) res54_1 = true := by
  tree_decide

/-- Word 55 `[4, 3, 3, 3, 2, 4, 4, 5]`. -/
noncomputable def tree55 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w55.txt")

theorem tree55_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 55) tree55 = true := by
  tree_decide

/-- Word 56 `[4, 3, 3, 3, 3, 4, 4, 4]`. -/
noncomputable def tree56 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w56.txt")

theorem tree56_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 56) tree56 = true := by
  tree_decide

/-- Word 57 `[4, 3, 3, 4, 3, 4, 4, 3]`. -/
noncomputable def tree57 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w57.txt")

theorem tree57_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 57) tree57 = true := by
  tree_decide

/-- Word 58 `[4, 3, 4, 3, 2, 4, 3, 5]`. -/
noncomputable def tree58 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w58.txt")

theorem tree58_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 58) tree58 = true := by
  tree_decide

/-- Word 59 `[4, 3, 4, 3, 3, 4, 3, 4]`. -/
noncomputable def tree59 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w59.txt")

theorem tree59_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 59) tree59 = true := by
  tree_decide

/-- Word 60 `[4, 3, 4, 4, 3, 4, 3, 3]`. -/
noncomputable def tree60 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w60.txt")

theorem tree60_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 60) tree60 = true := by
  tree_decide

/-- Word 61 `[4, 3, 5, 4, 3, 4, 3, 2]`. -/
noncomputable def tree61 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w61.txt")

theorem tree61_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 61) tree61 = true := by
  tree_decide

/-- Word 62 `[4, 4, 3, 2, 2, 3, 5, 5]`. -/
noncomputable def tree62 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w62.txt")

theorem tree62_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 62) tree62 = true := by
  tree_decide

/-- Word 63 `[4, 4, 3, 2, 3, 3, 5, 4]`. -/
noncomputable def tree63 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w63.txt")

theorem tree63_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 63) tree63 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundarySideOpposite.Model
