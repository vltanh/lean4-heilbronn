module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel
public import Heilbronn.Common.DataReader

/-! # Convex two-top certificates, chunk 6 (2479 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 73 `[5, 4, 3, 3, 2, 1, 4, 6]`. -/
noncomputable def tree73 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w73.txt")

theorem tree73_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 73) tree73 = true := by
  tree_decide

/-- Word 74 `[5, 4, 3, 3, 2, 2, 4, 5]`. -/
noncomputable def tree74 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w74.txt")

theorem tree74_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 74) tree74 = true := by
  tree_decide

/-- Word 75 `[5, 4, 3, 3, 3, 2, 4, 4]`. -/
noncomputable def tree75 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w75.txt")

theorem tree75_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 75) tree75 = true := by
  tree_decide

/-- Word 76 `[5, 4, 3, 4, 3, 2, 4, 3]`. -/
noncomputable def tree76 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w76.txt")

theorem tree76_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 76) tree76 = true := by
  tree_decide

/-- Word 77 `[5, 4, 4, 3, 2, 1, 3, 6]`. -/
noncomputable def tree77 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w77.txt")

theorem tree77_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 77) tree77 = true := by
  tree_decide

/-- Word 78 `[5, 4, 4, 3, 2, 2, 3, 5]`. -/
noncomputable def tree78 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w78.txt")

theorem tree78_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 78) tree78 = true := by
  tree_decide

/-- Word 79 `[5, 4, 4, 3, 3, 2, 3, 4]`. -/
noncomputable def tree79 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w79.txt")

theorem tree79_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 79) tree79 = true := by
  tree_decide

/-- Word 80 `[5, 4, 4, 4, 3, 2, 3, 3]`. -/
noncomputable def tree80 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w80.txt")

theorem tree80_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 80) tree80 = true := by
  tree_decide

/-- Word 81 `[5, 4, 5, 4, 3, 2, 3, 2]`. -/
noncomputable def tree81 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w81.txt")

theorem tree81_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 81) tree81 = true := by
  tree_decide

/-- Word 82 `[5, 5, 4, 3, 2, 1, 2, 6]`. -/
noncomputable def tree82 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w82.txt")

theorem tree82_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 82) tree82 = true := by
  tree_decide

/-- Word 83 `[5, 5, 4, 3, 2, 2, 2, 5]`. -/
noncomputable def tree83 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w83.txt")

theorem tree83_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 83) tree83 = true := by
  tree_decide

/-- Word 84 `[5, 5, 4, 3, 3, 2, 2, 4]`. -/
noncomputable def tree84 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w84.txt")

theorem tree84_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 84) tree84 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
