module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 7 (1973 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 74 `[4, 5, 5, 4, 3, 3, 2, 2]`. -/
noncomputable def tree74 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w74.txt")

theorem tree74_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 74) tree74 = true := by
  tree_decide

/-- Word 75 `[5, 4, 3, 2, 2, 1, 5, 6]`. -/
noncomputable def tree75 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w75.txt")

theorem tree75_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 75) tree75 = true := by
  tree_decide

/-- Word 76 `[5, 4, 3, 2, 2, 2, 5, 5]`. -/
noncomputable def tree76 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w76.txt")

theorem tree76_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 76) tree76 = true := by
  tree_decide

/-- Word 77 `[5, 4, 3, 2, 3, 2, 5, 4]`. -/
noncomputable def tree77 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w77.txt")

theorem tree77_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 77) tree77 = true := by
  tree_decide

/-- Word 78 `[5, 4, 3, 3, 2, 1, 4, 6]`. -/
noncomputable def tree78 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w78.txt")

theorem tree78_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 78) tree78 = true := by
  tree_decide

/-- Word 79 `[5, 4, 3, 3, 2, 2, 4, 5]`. -/
noncomputable def tree79 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w79.txt")

theorem tree79_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 79) tree79 = true := by
  tree_decide

/-- Word 80 `[5, 4, 3, 3, 3, 2, 4, 4]`. -/
noncomputable def tree80 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w80.txt")

theorem tree80_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 80) tree80 = true := by
  tree_decide

/-- Word 81 `[5, 4, 3, 4, 3, 2, 4, 3]`. -/
noncomputable def tree81 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w81.txt")

theorem tree81_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 81) tree81 = true := by
  tree_decide

/-- Word 82 `[5, 4, 4, 3, 2, 1, 3, 6]`. -/
noncomputable def tree82 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w82.txt")

theorem tree82_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 82) tree82 = true := by
  tree_decide

/-- Word 83 `[5, 4, 4, 3, 2, 2, 3, 5]`. -/
noncomputable def tree83 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_side_opposite/w83.txt")

theorem tree83_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 83) tree83 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundarySideOpposite.Model
