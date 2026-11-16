module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel
public import Heilbronn.Common.DataReader

/-! # Convex two-top certificates, chunk 1 (2481 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 17 `[2, 3, 3, 5, 4, 4, 4, 3]`. -/
noncomputable def tree17 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w17.txt")

theorem tree17_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 17) tree17 = true := by
  tree_decide

/-- Word 18 `[2, 3, 4, 5, 4, 4, 3, 3]`. -/
noncomputable def tree18 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w18.txt")

theorem tree18_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 18) tree18 = true := by
  tree_decide

/-- Word 19 `[2, 3, 5, 5, 4, 4, 3, 2]`. -/
noncomputable def tree19 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w19.txt")

theorem tree19_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 19) tree19 = true := by
  tree_decide

/-- Word 20 `[2, 4, 3, 5, 4, 3, 4, 3]`. -/
noncomputable def tree20 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w20.txt")

theorem tree20_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 20) tree20 = true := by
  tree_decide

/-- Word 21 `[2, 4, 4, 5, 4, 3, 3, 3]`. -/
noncomputable def tree21 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w21.txt")

theorem tree21_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 21) tree21 = true := by
  tree_decide

/-- Word 22 `[2, 4, 5, 5, 4, 3, 3, 2]`. -/
noncomputable def tree22 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w22.txt")

theorem tree22_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 22) tree22 = true := by
  tree_decide

/-- Word 23 `[2, 5, 4, 5, 4, 3, 2, 3]`. -/
noncomputable def tree23 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w23.txt")

theorem tree23_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 23) tree23 = true := by
  tree_decide

/-- Word 24 `[2, 5, 5, 5, 4, 3, 2, 2]`. -/
noncomputable def tree24 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w24.txt")

theorem tree24_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 24) tree24 = true := by
  tree_decide

/-- Word 25 `[2, 6, 5, 5, 4, 3, 2, 1]`. -/
noncomputable def tree25 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w25.txt")

theorem tree25_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 25) tree25 = true := by
  tree_decide

/-- Word 26 `[3, 2, 1, 3, 6, 5, 4, 4]`. -/
noncomputable def tree26 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w26.txt")

theorem tree26_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 26) tree26 = true := by
  tree_decide

/-- Word 27 `[3, 2, 1, 4, 6, 5, 4, 3]`. -/
noncomputable def tree27 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w27.txt")

theorem tree27_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 27) tree27 = true := by
  tree_decide

/-- Word 28 `[3, 2, 2, 3, 5, 5, 4, 4]`. -/
noncomputable def tree28 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w28.txt")

theorem tree28_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 28) tree28 = true := by
  tree_decide

/-- Word 29 `[3, 2, 2, 4, 5, 5, 4, 3]`. -/
noncomputable def tree29 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w29.txt")

theorem tree29_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 29) tree29 = true := by
  tree_decide

/-- Word 30 `[3, 2, 3, 3, 5, 4, 4, 4]`. -/
noncomputable def tree30 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w30.txt")

theorem tree30_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 30) tree30 = true := by
  tree_decide

/-- Word 31, branch `l_low`. -/
noncomputable def res31_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_two_top_convex/w31_l_low.txt")

theorem res31_0_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 31 ++ [Sum.inr (res31.getD 0 0)]) res31_0 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
