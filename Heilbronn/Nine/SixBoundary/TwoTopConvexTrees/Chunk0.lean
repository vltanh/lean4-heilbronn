module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel
public import Heilbronn.Common.DataReader

/-! # Convex two-top certificates, chunk 0 (2425 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 0 `[1, 1, 6, 6, 5, 4, 3, 2]`. -/
noncomputable def tree0 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w0.txt")

theorem tree0_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 0) tree0 = true := by
  tree_decide

/-- Word 1 `[1, 2, 6, 5, 5, 4, 3, 2]`. -/
noncomputable def tree1 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w1.txt")

theorem tree1_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 1) tree1 = true := by
  tree_decide

/-- Word 2 `[1, 3, 6, 5, 4, 4, 3, 2]`. -/
noncomputable def tree2 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w2.txt")

theorem tree2_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 2) tree2 = true := by
  tree_decide

/-- Word 3 `[1, 4, 6, 5, 4, 3, 3, 2]`. -/
noncomputable def tree3 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w3.txt")

theorem tree3_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 3) tree3 = true := by
  tree_decide

/-- Word 4 `[1, 5, 6, 5, 4, 3, 2, 2]`. -/
noncomputable def tree4 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w4.txt")

theorem tree4_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 4) tree4 = true := by
  tree_decide

/-- Word 5 `[1, 6, 6, 5, 4, 3, 2, 1]`. -/
noncomputable def tree5 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w5.txt")

theorem tree5_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 5) tree5 = true := by
  tree_decide

/-- Word 6 `[2, 1, 1, 6, 6, 5, 4, 3]`. -/
noncomputable def tree6 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w6.txt")

theorem tree6_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 6) tree6 = true := by
  tree_decide

/-- Word 7 `[2, 1, 2, 6, 5, 5, 4, 3]`. -/
noncomputable def tree7 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w7.txt")

theorem tree7_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 7) tree7 = true := by
  tree_decide

/-- Word 8 `[2, 1, 3, 6, 5, 4, 4, 3]`. -/
noncomputable def tree8 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w8.txt")

theorem tree8_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 8) tree8 = true := by
  tree_decide

/-- Word 9 `[2, 1, 4, 6, 5, 4, 3, 3]`. -/
noncomputable def tree9 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w9.txt")

theorem tree9_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 9) tree9 = true := by
  tree_decide

/-- Word 10 `[2, 1, 5, 6, 5, 4, 3, 2]`. -/
noncomputable def tree10 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w10.txt")

theorem tree10_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 10) tree10 = true := by
  tree_decide

/-- Word 11 `[2, 2, 1, 5, 6, 5, 4, 3]`. -/
noncomputable def tree11 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w11.txt")

theorem tree11_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 11) tree11 = true := by
  tree_decide

/-- Word 12 `[2, 2, 2, 5, 5, 5, 4, 3]`. -/
noncomputable def tree12 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w12.txt")

theorem tree12_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 12) tree12 = true := by
  tree_decide

/-- Word 13 `[2, 2, 3, 5, 5, 4, 4, 3]`. -/
noncomputable def tree13 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w13.txt")

theorem tree13_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 13) tree13 = true := by
  tree_decide

/-- Word 14 `[2, 2, 4, 5, 5, 4, 3, 3]`. -/
noncomputable def tree14 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w14.txt")

theorem tree14_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 14) tree14 = true := by
  tree_decide

/-- Word 15 `[2, 2, 5, 5, 5, 4, 3, 2]`. -/
noncomputable def tree15 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w15.txt")

theorem tree15_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 15) tree15 = true := by
  tree_decide

/-- Word 16 `[2, 3, 2, 5, 4, 5, 4, 3]`. -/
noncomputable def tree16 : Cover.Tree Split :=
  .cert (term_rows% "../../Data/six_two_top_convex/w16.txt")

theorem tree16_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 16) tree16 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
