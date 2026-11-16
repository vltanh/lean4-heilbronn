module

public import Heilbronn.Six.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 4 (2337 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 39 `[3, 4, 3, 4, 4, 3, 4, 3]`. -/
noncomputable def tree39 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w39.txt")

theorem tree39_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 39) tree39 = true := by
  decide +kernel

/-- Word 40 `[3, 4, 4, 3, 4, 3, 3, 4]`. -/
noncomputable def tree40 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w40.txt")

theorem tree40_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 40) tree40 = true := by
  decide +kernel

/-- Word 41 `[3, 4, 4, 4, 4, 3, 3, 3]`. -/
noncomputable def tree41 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w41.txt")

theorem tree41_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 41) tree41 = true := by
  decide +kernel

/-- Word 42 `[3, 4, 5, 4, 4, 3, 3, 2]`. -/
noncomputable def tree42 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w42.txt")

theorem tree42_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 42) tree42 = true := by
  decide +kernel

/-- Word 43 `[3, 5, 4, 3, 4, 3, 2, 4]`. -/
noncomputable def tree43 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w43.txt")

theorem tree43_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 43) tree43 = true := by
  decide +kernel

/-- Word 44 `[3, 5, 4, 4, 4, 3, 2, 3]`. -/
noncomputable def tree44 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w44.txt")

theorem tree44_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 44) tree44 = true := by
  decide +kernel

/-- Word 45 `[3, 5, 5, 4, 4, 3, 2, 2]`. -/
noncomputable def tree45 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w45.txt")

theorem tree45_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 45) tree45 = true := by
  decide +kernel

/-- Word 46 `[4, 3, 2, 1, 2, 6, 5, 5]`. -/
noncomputable def tree46 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w46.txt")

theorem tree46_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 46) tree46 = true := by
  decide +kernel

/-- Word 47 `[4, 3, 2, 1, 3, 6, 5, 4]`. -/
noncomputable def tree47 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w47.txt")

theorem tree47_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 47) tree47 = true := by
  decide +kernel

/-- Word 48 `[4, 3, 2, 2, 2, 5, 5, 5]`. -/
noncomputable def tree48 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w48.txt")

theorem tree48_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 48) tree48 = true := by
  decide +kernel

/-- Word 49 `[4, 3, 2, 2, 3, 5, 5, 4]`. -/
noncomputable def tree49 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w49.txt")

theorem tree49_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 49) tree49 = true := by
  decide +kernel

/-- Word 50 `[4, 3, 2, 3, 2, 5, 4, 5]`. -/
noncomputable def tree50 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w50.txt")

theorem tree50_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 50) tree50 = true := by
  decide +kernel

end Heilbronn.SixBoundarySideOpposite.Model
