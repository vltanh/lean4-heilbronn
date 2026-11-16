module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel
public import Heilbronn.Common.DataReader

/-! # Convex two-top certificates, chunk 3 (2480 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 37 `[3, 3, 3, 3, 4, 4, 4, 4]`. -/
noncomputable def tree37 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w37.txt")

theorem tree37_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 37) tree37 = true := by
  tree_decide

/-- Word 38 `[3, 3, 3, 4, 4, 4, 4, 3]`. -/
noncomputable def tree38 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w38.txt")

theorem tree38_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 38) tree38 = true := by
  tree_decide

/-- Word 39 `[3, 3, 4, 3, 4, 4, 3, 4]`. -/
noncomputable def tree39 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w39.txt")

theorem tree39_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 39) tree39 = true := by
  tree_decide

/-- Word 40 `[3, 3, 4, 4, 4, 4, 3, 3]`. -/
noncomputable def tree40 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w40.txt")

theorem tree40_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 40) tree40 = true := by
  tree_decide

/-- Word 41 `[3, 3, 5, 4, 4, 4, 3, 2]`. -/
noncomputable def tree41 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w41.txt")

theorem tree41_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 41) tree41 = true := by
  tree_decide

/-- Word 42 `[3, 4, 3, 3, 4, 3, 4, 4]`. -/
noncomputable def tree42 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w42.txt")

theorem tree42_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 42) tree42 = true := by
  tree_decide

/-- Word 43 `[3, 4, 3, 4, 4, 3, 4, 3]`. -/
noncomputable def tree43 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w43.txt")

theorem tree43_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 43) tree43 = true := by
  tree_decide

/-- Word 44 `[3, 4, 4, 3, 4, 3, 3, 4]`. -/
noncomputable def tree44 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w44.txt")

theorem tree44_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 44) tree44 = true := by
  tree_decide

/-- Word 45 `[3, 4, 4, 4, 4, 3, 3, 3]`. -/
noncomputable def tree45 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w45.txt")

theorem tree45_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 45) tree45 = true := by
  tree_decide

/-- Word 46 `[3, 4, 5, 4, 4, 3, 3, 2]`. -/
noncomputable def tree46 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w46.txt")

theorem tree46_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 46) tree46 = true := by
  tree_decide

/-- Word 47 `[3, 5, 4, 3, 4, 3, 2, 4]`. -/
noncomputable def tree47 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w47.txt")

theorem tree47_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 47) tree47 = true := by
  tree_decide

/-- Word 48 `[3, 5, 4, 4, 4, 3, 2, 3]`. -/
noncomputable def tree48 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w48.txt")

theorem tree48_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 48) tree48 = true := by
  tree_decide

/-- Word 49 `[3, 5, 5, 4, 4, 3, 2, 2]`. -/
noncomputable def tree49 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w49.txt")

theorem tree49_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 49) tree49 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
