module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 1 (2406 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 11 `[2, 3, 5, 5, 4, 4, 3, 2]`. -/
noncomputable def tree11 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w11.txt")

theorem tree11_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 11) tree11 = true := by
  tree_decide

/-- Word 12 `[2, 4, 3, 5, 4, 3, 4, 3]`. -/
noncomputable def tree12 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w12.txt")

theorem tree12_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 12) tree12 = true := by
  tree_decide

/-- Word 13 `[2, 4, 4, 5, 4, 3, 3, 3]`. -/
noncomputable def tree13 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w13.txt")

theorem tree13_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 13) tree13 = true := by
  tree_decide

/-- Word 14 `[2, 4, 5, 5, 4, 3, 3, 2]`. -/
noncomputable def tree14 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w14.txt")

theorem tree14_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 14) tree14 = true := by
  tree_decide

/-- Word 15 `[2, 5, 4, 5, 4, 3, 2, 3]`. -/
noncomputable def tree15 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w15.txt")

theorem tree15_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 15) tree15 = true := by
  tree_decide

/-- Word 16 `[2, 5, 5, 5, 4, 3, 2, 2]`. -/
noncomputable def tree16 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w16.txt")

theorem tree16_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 16) tree16 = true := by
  tree_decide

/-- Word 17 `[3, 2, 2, 1, 5, 6, 5, 4]`. -/
noncomputable def tree17 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w17.txt")

theorem tree17_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 17) tree17 = true := by
  tree_decide

/-- Word 18 `[3, 2, 2, 2, 5, 5, 5, 4]`. -/
noncomputable def tree18 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w18.txt")

theorem tree18_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 18) tree18 = true := by
  tree_decide

/-- Word 19 `[3, 2, 2, 3, 5, 5, 4, 4]`. -/
noncomputable def tree19 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w19.txt")

theorem tree19_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 19) tree19 = true := by
  tree_decide

/-- Word 20 `[3, 2, 2, 4, 5, 5, 4, 3]`. -/
noncomputable def tree20 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w20.txt")

theorem tree20_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 20) tree20 = true := by
  tree_decide

/-- Word 21 `[3, 2, 3, 2, 5, 4, 5, 4]`. -/
noncomputable def tree21 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w21.txt")

theorem tree21_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 21) tree21 = true := by
  tree_decide

/-- Word 22 `[3, 2, 3, 3, 5, 4, 4, 4]`. -/
noncomputable def tree22 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w22.txt")

theorem tree22_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 22) tree22 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundarySideOpposite.Model
