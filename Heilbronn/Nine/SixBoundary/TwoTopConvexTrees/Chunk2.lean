module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel
public import Heilbronn.Common.DataReader

/-! # Convex two-top certificates, chunk 2 (2453 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 31, branch `l_high`. -/
noncomputable def res31_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w31_l_high.txt")

theorem res31_1_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 31 ++ [Sum.inr (res31.getD 1 0)]) res31_1 = true := by
  tree_decide

/-- Word 31, branch `m_low`. -/
noncomputable def res31_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w31_m_low.txt")

theorem res31_2_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 31 ++ [Sum.inr (res31.getD 2 0)]) res31_2 = true := by
  tree_decide

/-- Word 31, branch `g_high`. -/
noncomputable def res31_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w31_g_high.txt")

theorem res31_3_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 31 ++ [Sum.inr (res31.getD 3 0)]) res31_3 = true := by
  tree_decide

/-- Word 31, branch `c_low`. -/
noncomputable def res31_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w31_c_low.txt")

theorem res31_4_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 31 ++ [Sum.inr (res31.getD 4 0)]) res31_4 = true := by
  tree_decide

/-- Word 31, branch `k_low`. -/
noncomputable def res31_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w31_k_low.txt")

theorem res31_5_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 31 ++ [Sum.inr (res31.getD 5 0)]) res31_5 = true := by
  tree_decide

/-- Word 32 `[3, 2, 4, 3, 5, 4, 3, 4]`. -/
noncomputable def tree32 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w32.txt")

theorem tree32_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 32) tree32 = true := by
  tree_decide

/-- Word 33 `[3, 2, 4, 4, 5, 4, 3, 3]`. -/
noncomputable def tree33 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w33.txt")

theorem tree33_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 33) tree33 = true := by
  tree_decide

/-- Word 34 `[3, 2, 5, 4, 5, 4, 3, 2]`. -/
noncomputable def tree34 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w34.txt")

theorem tree34_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 34) tree34 = true := by
  tree_decide

/-- Word 35 `[3, 3, 2, 3, 4, 5, 4, 4]`. -/
noncomputable def tree35 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w35.txt")

theorem tree35_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 35) tree35 = true := by
  tree_decide

/-- Word 36 `[3, 3, 2, 4, 4, 5, 4, 3]`. -/
noncomputable def tree36 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w36.txt")

theorem tree36_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 36) tree36 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
