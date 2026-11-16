module

public import Heilbronn.Six.SideOppositeModel
public import Heilbronn.Common.DataReader

/-! # Side/opposite certificates, chunk 2 (2326 certificate terms; generated) -/

@[expose] public section

namespace Heilbronn.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- Word 23, branch `x_low`. -/
noncomputable def res23_0 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w23_x_low.txt")

theorem res23_0_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 23 ++ [Sum.inr (res23.getD 0 0)]) res23_0 = true := by
  decide +kernel

/-- Word 23, branch `y_low`. -/
noncomputable def res23_1 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w23_y_low.txt")

theorem res23_1_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 23 ++ [Sum.inr (res23.getD 1 0)]) res23_1 = true := by
  decide +kernel

/-- Word 23, branch `l_low`. -/
noncomputable def res23_2 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w23_l_low.txt")

theorem res23_2_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 23 ++ [Sum.inr (res23.getD 2 0)]) res23_2 = true := by
  decide +kernel

/-- Word 23, branch `l_high`. -/
noncomputable def res23_3 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w23_l_high.txt")

theorem res23_3_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 23 ++ [Sum.inr (res23.getD 3 0)]) res23_3 = true := by
  decide +kernel

/-- Word 23, branch `m_low`. -/
noncomputable def res23_4 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w23_m_low.txt")

theorem res23_4_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 23 ++ [Sum.inr (res23.getD 4 0)]) res23_4 = true := by
  decide +kernel

/-- Word 23, branch `g_high`. -/
noncomputable def res23_5 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w23_g_high.txt")

theorem res23_5_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 23 ++ [Sum.inr (res23.getD 5 0)]) res23_5 = true := by
  decide +kernel

/-- Word 23, branch `c_low`. -/
noncomputable def res23_6 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w23_c_low.txt")

theorem res23_6_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 23 ++ [Sum.inr (res23.getD 6 0)]) res23_6 = true := by
  decide +kernel

/-- Word 24 `[3, 2, 4, 3, 5, 4, 3, 4]`. -/
noncomputable def tree24 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w24.txt")

theorem tree24_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 24) tree24 = true := by
  decide +kernel

/-- Word 25 `[3, 2, 4, 4, 5, 4, 3, 3]`. -/
noncomputable def tree25 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w25.txt")

theorem tree25_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 25) tree25 = true := by
  decide +kernel

/-- Word 26 `[3, 2, 5, 4, 5, 4, 3, 2]`. -/
noncomputable def tree26 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w26.txt")

theorem tree26_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 26) tree26 = true := by
  decide +kernel

/-- Word 27 `[3, 3, 2, 1, 4, 6, 5, 4]`. -/
noncomputable def tree27 : Cover.Tree Split :=
  .cert (term_rows% "../../../data/six_side_opposite/w27.txt")

theorem tree27_ok : checkTree (pkg.spec Pkg.noClosed) (leafFacts 27) tree27 = true := by
  decide +kernel

end Heilbronn.SixBoundarySideOpposite.Model
