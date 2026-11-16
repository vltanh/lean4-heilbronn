module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 3 (2392 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 28 `[3, 3, 2, 2, 4, 5, 5, 4]`. -/
noncomputable def tree28 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w28.txt")

theorem tree28_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 28) tree28 = true := by
  tree_decide

/-- Word 29 `[3, 3, 2, 3, 4, 5, 4, 4]`. -/
noncomputable def tree29 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w29.txt")

theorem tree29_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 29) tree29 = true := by
  tree_decide

/-- Word 30 `[3, 3, 2, 4, 4, 5, 4, 3]`. -/
noncomputable def tree30 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w30.txt")

theorem tree30_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 30) tree30 = true := by
  tree_decide

/-- Word 31 `[3, 3, 3, 2, 4, 4, 5, 4]`. -/
noncomputable def tree31 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w31.txt")

theorem tree31_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 31) tree31 = true := by
  tree_decide

/-- Word 32 `[3, 3, 3, 3, 4, 4, 4, 4]`. -/
noncomputable def tree32 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w32.txt")

theorem tree32_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 32) tree32 = true := by
  tree_decide

/-- Word 33 `[3, 3, 3, 4, 4, 4, 4, 3]`. -/
noncomputable def tree33 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w33.txt")

theorem tree33_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 33) tree33 = true := by
  tree_decide

/-- Word 34 `[3, 3, 4, 3, 4, 4, 3, 4]`. -/
noncomputable def tree34 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w34.txt")

theorem tree34_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 34) tree34 = true := by
  tree_decide

/-- Word 35 `[3, 3, 4, 4, 4, 4, 3, 3]`. -/
noncomputable def tree35 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w35.txt")

theorem tree35_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 35) tree35 = true := by
  tree_decide

/-- Word 36 `[3, 3, 5, 4, 4, 4, 3, 2]`. -/
noncomputable def tree36 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w36.txt")

theorem tree36_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 36) tree36 = true := by
  tree_decide

/-- Word 37 `[3, 4, 3, 2, 4, 3, 5, 4]`. -/
noncomputable def tree37 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w37.txt")

theorem tree37_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 37) tree37 = true := by
  tree_decide

/-- Word 38 `[3, 4, 3, 3, 4, 3, 4, 4]`. -/
noncomputable def tree38 : Cover.Tree Split :=
  .cert (term_rows% "../../../../data/nine/six_side_opposite/w38.txt")

theorem tree38_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 38) tree38 = true := by
  tree_decide

end Heilbronn.Nine.SixBoundarySideOpposite.Model
