module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel
public import Heilbronn.Common.DataReader

/-! # Convex two-top certificates, chunk 4 (2420 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 50 `[3, 6, 5, 4, 4, 3, 2, 1]`. -/
noncomputable def tree50 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w50.txt")

theorem tree50_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 50) tree50 = true := by
  tree_decide

/-- Word 51 `[4, 3, 2, 3, 2, 5, 4, 5]`. -/
noncomputable def tree51 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w51.txt")

theorem tree51_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 51) tree51 = true := by
  tree_decide

/-- Word 52 `[4, 3, 2, 3, 3, 5, 4, 4]`. -/
noncomputable def tree52 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w52.txt")

theorem tree52_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 52) tree52 = true := by
  tree_decide

/-- Word 53 `[4, 3, 2, 4, 3, 5, 4, 3]`. -/
noncomputable def tree53 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w53.txt")

theorem tree53_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 53) tree53 = true := by
  tree_decide

/-- Word 54 `[4, 3, 3, 3, 2, 4, 4, 5]`. -/
noncomputable def tree54 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w54.txt")

theorem tree54_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 54) tree54 = true := by
  tree_decide

/-- Word 55 `[4, 3, 3, 3, 3, 4, 4, 4]`. -/
noncomputable def tree55 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w55.txt")

theorem tree55_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 55) tree55 = true := by
  tree_decide

/-- Word 56 `[4, 3, 3, 4, 3, 4, 4, 3]`. -/
noncomputable def tree56 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w56.txt")

theorem tree56_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 56) tree56 = true := by
  tree_decide

/-- Word 57 `[4, 3, 4, 3, 2, 4, 3, 5]`. -/
noncomputable def tree57 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w57.txt")

theorem tree57_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 57) tree57 = true := by
  tree_decide

/-- Word 58 `[4, 3, 4, 3, 3, 4, 3, 4]`. -/
noncomputable def tree58 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w58.txt")

theorem tree58_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 58) tree58 = true := by
  tree_decide

/-- Word 59 `[4, 3, 4, 4, 3, 4, 3, 3]`. -/
noncomputable def tree59 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w59.txt")

theorem tree59_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 59) tree59 = true := by
  tree_decide

/-- Word 60 `[4, 3, 5, 4, 3, 4, 3, 2]`. -/
noncomputable def tree60 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w60.txt")

theorem tree60_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 60) tree60 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
