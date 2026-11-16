module

public import Heilbronn.Nine.C1.OneLower.HexModel
public import Heilbronn.Common.DataReader

/-! # The side cap certificates, chunk 0

Kernel checks of 83 cases (2487 terms), one theorem per case. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerHex.TreesSideCap

open Cover C1OneLowerHex.Model

/-- The tree of the case [0, 0, 6]. -/
noncomputable def tree0 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c000.txt")

theorem tree0_ok : checkTree (spec true 0 0 6) [] tree0 = true := by
  tree_decide

/-- The tree of the case [0, 0, 7]. -/
noncomputable def tree1 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c001.txt")

theorem tree1_ok : checkTree (spec true 0 0 7) [] tree1 = true := by
  tree_decide

/-- The tree of the case [0, 0, 8]. -/
noncomputable def tree2 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c002.txt")

theorem tree2_ok : checkTree (spec true 0 0 8) [] tree2 = true := by
  tree_decide

/-- The tree of the case [0, 0, 9]. -/
noncomputable def tree3 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c003.txt")

theorem tree3_ok : checkTree (spec true 0 0 9) [] tree3 = true := by
  tree_decide

/-- The tree of the case [0, 0, 10]. -/
noncomputable def tree4 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c004.txt")

theorem tree4_ok : checkTree (spec true 0 0 10) [] tree4 = true := by
  tree_decide

/-- The tree of the case [0, 0, 11]. -/
noncomputable def tree5 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c005.txt")

theorem tree5_ok : checkTree (spec true 0 0 11) [] tree5 = true := by
  tree_decide

/-- The tree of the case [0, 0, 12]. -/
noncomputable def tree6 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c006.txt")

theorem tree6_ok : checkTree (spec true 0 0 12) [] tree6 = true := by
  tree_decide

/-- The tree of the case [0, 0, 13]. -/
noncomputable def tree7 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c007.txt")

theorem tree7_ok : checkTree (spec true 0 0 13) [] tree7 = true := by
  tree_decide

/-- The tree of the case [0, 0, 14]. -/
noncomputable def tree8 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c008.txt")

theorem tree8_ok : checkTree (spec true 0 0 14) [] tree8 = true := by
  tree_decide

/-- The tree of the case [0, 0, 15]. -/
noncomputable def tree9 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c009.txt")

theorem tree9_ok : checkTree (spec true 0 0 15) [] tree9 = true := by
  tree_decide

/-- The tree of the case [0, 0, 16]. -/
noncomputable def tree10 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c010.txt")

theorem tree10_ok : checkTree (spec true 0 0 16) [] tree10 = true := by
  tree_decide

/-- The tree of the case [0, 0, 17]. -/
noncomputable def tree11 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c011.txt")

theorem tree11_ok : checkTree (spec true 0 0 17) [] tree11 = true := by
  tree_decide

/-- The tree of the case [0, 1, 3]. -/
noncomputable def tree12 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c012.txt")

theorem tree12_ok : checkTree (spec true 0 1 3) [] tree12 = true := by
  tree_decide

/-- The tree of the case [0, 1, 4]. -/
noncomputable def tree13 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c013.txt")

theorem tree13_ok : checkTree (spec true 0 1 4) [] tree13 = true := by
  tree_decide

/-- The tree of the case [0, 1, 11]. -/
noncomputable def tree14 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c014.txt")

theorem tree14_ok : checkTree (spec true 0 1 11) [] tree14 = true := by
  tree_decide

/-- The tree of the case [0, 1, 12]. -/
noncomputable def tree15 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c015.txt")

theorem tree15_ok : checkTree (spec true 0 1 12) [] tree15 = true := by
  tree_decide

/-- The tree of the case [0, 2, 3]. -/
noncomputable def tree16 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c016.txt")

theorem tree16_ok : checkTree (spec true 0 2 3) [] tree16 = true := by
  tree_decide

/-- The tree of the case [0, 2, 4]. -/
noncomputable def tree17 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c017.txt")

theorem tree17_ok : checkTree (spec true 0 2 4) [] tree17 = true := by
  tree_decide

/-- The tree of the case [0, 2, 11]. -/
noncomputable def tree18 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c018.txt")

theorem tree18_ok : checkTree (spec true 0 2 11) [] tree18 = true := by
  tree_decide

/-- The tree of the case [0, 2, 12]. -/
noncomputable def tree19 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c019.txt")

theorem tree19_ok : checkTree (spec true 0 2 12) [] tree19 = true := by
  tree_decide

/-- The tree of the case [0, 2, 16]. -/
noncomputable def tree20 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c020.txt")

theorem tree20_ok : checkTree (spec true 0 2 16) [] tree20 = true := by
  tree_decide

/-- The tree of the case [0, 3, 6]. -/
noncomputable def tree21 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c021.txt")

theorem tree21_ok : checkTree (spec true 0 3 6) [] tree21 = true := by
  tree_decide

/-- The tree of the case [0, 3, 7]. -/
noncomputable def tree22 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c022.txt")

theorem tree22_ok : checkTree (spec true 0 3 7) [] tree22 = true := by
  tree_decide

/-- The tree of the case [0, 3, 8]. -/
noncomputable def tree23 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c023.txt")

theorem tree23_ok : checkTree (spec true 0 3 8) [] tree23 = true := by
  tree_decide

/-- The tree of the case [0, 3, 9]. -/
noncomputable def tree24 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c024.txt")

theorem tree24_ok : checkTree (spec true 0 3 9) [] tree24 = true := by
  tree_decide

/-- The tree of the case [0, 3, 10]. -/
noncomputable def tree25 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c025.txt")

theorem tree25_ok : checkTree (spec true 0 3 10) [] tree25 = true := by
  tree_decide

/-- The tree of the case [0, 3, 11]. -/
noncomputable def tree26 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c026.txt")

theorem tree26_ok : checkTree (spec true 0 3 11) [] tree26 = true := by
  tree_decide

/-- The tree of the case [0, 3, 12]. -/
noncomputable def tree27 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c027.txt")

theorem tree27_ok : checkTree (spec true 0 3 12) [] tree27 = true := by
  tree_decide

/-- The tree of the case [0, 3, 13]. -/
noncomputable def tree28 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c028.txt")

theorem tree28_ok : checkTree (spec true 0 3 13) [] tree28 = true := by
  tree_decide

/-- The tree of the case [0, 3, 14]. -/
noncomputable def tree29 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c029.txt")

theorem tree29_ok : checkTree (spec true 0 3 14) [] tree29 = true := by
  tree_decide

/-- The tree of the case [0, 3, 15]. -/
noncomputable def tree30 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c030.txt")

theorem tree30_ok : checkTree (spec true 0 3 15) [] tree30 = true := by
  tree_decide

/-- The tree of the case [0, 3, 16]. -/
noncomputable def tree31 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c031.txt")

theorem tree31_ok : checkTree (spec true 0 3 16) [] tree31 = true := by
  tree_decide

/-- The tree of the case [0, 3, 17]. -/
noncomputable def tree32 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c032.txt")

theorem tree32_ok : checkTree (spec true 0 3 17) [] tree32 = true := by
  tree_decide

/-- The tree of the case [0, 4, 7]. -/
noncomputable def tree33 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c033.txt")

theorem tree33_ok : checkTree (spec true 0 4 7) [] tree33 = true := by
  tree_decide

/-- The tree of the case [0, 4, 8]. -/
noncomputable def tree34 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c034.txt")

theorem tree34_ok : checkTree (spec true 0 4 8) [] tree34 = true := by
  tree_decide

/-- The tree of the case [0, 4, 9]. -/
noncomputable def tree35 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c035.txt")

theorem tree35_ok : checkTree (spec true 0 4 9) [] tree35 = true := by
  tree_decide

/-- The tree of the case [0, 4, 10]. -/
noncomputable def tree36 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c036.txt")

theorem tree36_ok : checkTree (spec true 0 4 10) [] tree36 = true := by
  tree_decide

/-- The tree of the case [0, 4, 12]. -/
noncomputable def tree37 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c037.txt")

theorem tree37_ok : checkTree (spec true 0 4 12) [] tree37 = true := by
  tree_decide

/-- The tree of the case [0, 4, 13]. -/
noncomputable def tree38 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c038.txt")

theorem tree38_ok : checkTree (spec true 0 4 13) [] tree38 = true := by
  tree_decide

/-- The tree of the case [0, 4, 14]. -/
noncomputable def tree39 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c039.txt")

theorem tree39_ok : checkTree (spec true 0 4 14) [] tree39 = true := by
  tree_decide

/-- The tree of the case [0, 4, 15]. -/
noncomputable def tree40 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c040.txt")

theorem tree40_ok : checkTree (spec true 0 4 15) [] tree40 = true := by
  tree_decide

/-- The tree of the case [0, 4, 16]. -/
noncomputable def tree41 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c041.txt")

theorem tree41_ok : checkTree (spec true 0 4 16) [] tree41 = true := by
  tree_decide

/-- The tree of the case [0, 4, 17]. -/
noncomputable def tree42 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c042.txt")

theorem tree42_ok : checkTree (spec true 0 4 17) [] tree42 = true := by
  tree_decide

/-- The tree of the case [0, 5, 6]. -/
noncomputable def tree43 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c043.txt")

theorem tree43_ok : checkTree (spec true 0 5 6) [] tree43 = true := by
  tree_decide

/-- The tree of the case [0, 5, 7]. -/
noncomputable def tree44 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c044.txt")

theorem tree44_ok : checkTree (spec true 0 5 7) [] tree44 = true := by
  tree_decide

/-- The tree of the case [0, 5, 8]. -/
noncomputable def tree45 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c045.txt")

theorem tree45_ok : checkTree (spec true 0 5 8) [] tree45 = true := by
  tree_decide

/-- The tree of the case [0, 5, 9]. -/
noncomputable def tree46 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c046.txt")

theorem tree46_ok : checkTree (spec true 0 5 9) [] tree46 = true := by
  tree_decide

/-- The tree of the case [0, 5, 10]. -/
noncomputable def tree47 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c047.txt")

theorem tree47_ok : checkTree (spec true 0 5 10) [] tree47 = true := by
  tree_decide

/-- The tree of the case [0, 5, 11]. -/
noncomputable def tree48 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c048.txt")

theorem tree48_ok : checkTree (spec true 0 5 11) [] tree48 = true := by
  tree_decide

/-- The tree of the case [0, 5, 12]. -/
noncomputable def tree49 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c049.txt")

theorem tree49_ok : checkTree (spec true 0 5 12) [] tree49 = true := by
  tree_decide

/-- The tree of the case [0, 5, 13]. -/
noncomputable def tree50 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c050.txt")

theorem tree50_ok : checkTree (spec true 0 5 13) [] tree50 = true := by
  tree_decide

/-- The tree of the case [0, 5, 14]. -/
noncomputable def tree51 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c051.txt")

theorem tree51_ok : checkTree (spec true 0 5 14) [] tree51 = true := by
  tree_decide

/-- The tree of the case [0, 5, 15]. -/
noncomputable def tree52 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c052.txt")

theorem tree52_ok : checkTree (spec true 0 5 15) [] tree52 = true := by
  tree_decide

/-- The tree of the case [0, 5, 16]. -/
noncomputable def tree53 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c053.txt")

theorem tree53_ok : checkTree (spec true 0 5 16) [] tree53 = true := by
  tree_decide

/-- The tree of the case [0, 5, 17]. -/
noncomputable def tree54 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c054.txt")

theorem tree54_ok : checkTree (spec true 0 5 17) [] tree54 = true := by
  tree_decide

/-- The tree of the case [0, 8, 11]. -/
noncomputable def tree55 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c055.txt")

theorem tree55_ok : checkTree (spec true 0 8 11) [] tree55 = true := by
  tree_decide

/-- The tree of the case [0, 8, 12]. -/
noncomputable def tree56 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c056.txt")

theorem tree56_ok : checkTree (spec true 0 8 12) [] tree56 = true := by
  tree_decide

/-- The tree of the case [0, 10, 11]. -/
noncomputable def tree57 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c057.txt")

theorem tree57_ok : checkTree (spec true 0 10 11) [] tree57 = true := by
  tree_decide

/-- The tree of the case [0, 10, 12]. -/
noncomputable def tree58 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c058.txt")

theorem tree58_ok : checkTree (spec true 0 10 12) [] tree58 = true := by
  tree_decide

/-- The tree of the case [0, 10, 16]. -/
noncomputable def tree59 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c059.txt")

theorem tree59_ok : checkTree (spec true 0 10 16) [] tree59 = true := by
  tree_decide

/-- The tree of the case [1, 0, 1]. -/
noncomputable def tree60 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c060.txt")

theorem tree60_ok : checkTree (spec true 1 0 1) [] tree60 = true := by
  tree_decide

/-- The tree of the case [1, 0, 2]. -/
noncomputable def tree61 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c061.txt")

theorem tree61_ok : checkTree (spec true 1 0 2) [] tree61 = true := by
  tree_decide

/-- The tree of the case [1, 0, 6]. -/
noncomputable def tree62 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c062.txt")

theorem tree62_ok : checkTree (spec true 1 0 6) [] tree62 = true := by
  tree_decide

/-- The tree of the case [1, 0, 7]. -/
noncomputable def tree63 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c063.txt")

theorem tree63_ok : checkTree (spec true 1 0 7) [] tree63 = true := by
  tree_decide

/-- The tree of the case [1, 0, 8]. -/
noncomputable def tree64 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c064.txt")

theorem tree64_ok : checkTree (spec true 1 0 8) [] tree64 = true := by
  tree_decide

/-- The tree of the case [1, 0, 9]. -/
noncomputable def tree65 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c065.txt")

theorem tree65_ok : checkTree (spec true 1 0 9) [] tree65 = true := by
  tree_decide

/-- The tree of the case [1, 0, 10]. -/
noncomputable def tree66 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c066.txt")

theorem tree66_ok : checkTree (spec true 1 0 10) [] tree66 = true := by
  tree_decide

/-- The tree of the case [1, 0, 11]. -/
noncomputable def tree67 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c067.txt")

theorem tree67_ok : checkTree (spec true 1 0 11) [] tree67 = true := by
  tree_decide

/-- The tree of the case [1, 0, 12]. -/
noncomputable def tree68 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c068.txt")

theorem tree68_ok : checkTree (spec true 1 0 12) [] tree68 = true := by
  tree_decide

/-- The tree of the case [1, 0, 13]. -/
noncomputable def tree69 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c069.txt")

theorem tree69_ok : checkTree (spec true 1 0 13) [] tree69 = true := by
  tree_decide

/-- The tree of the case [1, 0, 14]. -/
noncomputable def tree70 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c070.txt")

theorem tree70_ok : checkTree (spec true 1 0 14) [] tree70 = true := by
  tree_decide

/-- The tree of the case [1, 0, 15]. -/
noncomputable def tree71 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c071.txt")

theorem tree71_ok : checkTree (spec true 1 0 15) [] tree71 = true := by
  tree_decide

/-- The tree of the case [1, 0, 16]. -/
noncomputable def tree72 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c072.txt")

theorem tree72_ok : checkTree (spec true 1 0 16) [] tree72 = true := by
  tree_decide

/-- The tree of the case [1, 0, 17]. -/
noncomputable def tree73 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c073.txt")

theorem tree73_ok : checkTree (spec true 1 0 17) [] tree73 = true := by
  tree_decide

/-- The tree of the case [1, 1, 3]. -/
noncomputable def tree74 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c074.txt")

theorem tree74_ok : checkTree (spec true 1 1 3) [] tree74 = true := by
  tree_decide

/-- The tree of the case [1, 1, 4]. -/
noncomputable def tree75 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c075.txt")

theorem tree75_ok : checkTree (spec true 1 1 4) [] tree75 = true := by
  tree_decide

/-- The tree of the case [1, 1, 11]. -/
noncomputable def tree76 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c076.txt")

theorem tree76_ok : checkTree (spec true 1 1 11) [] tree76 = true := by
  tree_decide

/-- The tree of the case [1, 1, 12]. -/
noncomputable def tree77 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c077.txt")

theorem tree77_ok : checkTree (spec true 1 1 12) [] tree77 = true := by
  tree_decide

/-- The tree of the case [1, 2, 3]. -/
noncomputable def tree78 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c078.txt")

theorem tree78_ok : checkTree (spec true 1 2 3) [] tree78 = true := by
  tree_decide

/-- The tree of the case [1, 2, 4]. -/
noncomputable def tree79 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c079.txt")

theorem tree79_ok : checkTree (spec true 1 2 4) [] tree79 = true := by
  tree_decide

/-- The tree of the case [1, 2, 11]. -/
noncomputable def tree80 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c080.txt")

theorem tree80_ok : checkTree (spec true 1 2 11) [] tree80 = true := by
  tree_decide

/-- The tree of the case [1, 2, 12]. -/
noncomputable def tree81 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c081.txt")

theorem tree81_ok : checkTree (spec true 1 2 12) [] tree81 = true := by
  tree_decide

/-- The tree of the case [1, 2, 16]. -/
noncomputable def tree82 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c082.txt")

theorem tree82_ok : checkTree (spec true 1 2 16) [] tree82 = true := by
  tree_decide

/-- The cases of chunk 0. -/
noncomputable def chunk0 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((0, 0, 6), tree0),
    ((0, 0, 7), tree1),
    ((0, 0, 8), tree2),
    ((0, 0, 9), tree3),
    ((0, 0, 10), tree4),
    ((0, 0, 11), tree5),
    ((0, 0, 12), tree6),
    ((0, 0, 13), tree7),
    ((0, 0, 14), tree8),
    ((0, 0, 15), tree9),
    ((0, 0, 16), tree10),
    ((0, 0, 17), tree11),
    ((0, 1, 3), tree12),
    ((0, 1, 4), tree13),
    ((0, 1, 11), tree14),
    ((0, 1, 12), tree15),
    ((0, 2, 3), tree16),
    ((0, 2, 4), tree17),
    ((0, 2, 11), tree18),
    ((0, 2, 12), tree19),
    ((0, 2, 16), tree20),
    ((0, 3, 6), tree21),
    ((0, 3, 7), tree22),
    ((0, 3, 8), tree23),
    ((0, 3, 9), tree24),
    ((0, 3, 10), tree25),
    ((0, 3, 11), tree26),
    ((0, 3, 12), tree27),
    ((0, 3, 13), tree28),
    ((0, 3, 14), tree29),
    ((0, 3, 15), tree30),
    ((0, 3, 16), tree31),
    ((0, 3, 17), tree32),
    ((0, 4, 7), tree33),
    ((0, 4, 8), tree34),
    ((0, 4, 9), tree35),
    ((0, 4, 10), tree36),
    ((0, 4, 12), tree37),
    ((0, 4, 13), tree38),
    ((0, 4, 14), tree39),
    ((0, 4, 15), tree40),
    ((0, 4, 16), tree41),
    ((0, 4, 17), tree42),
    ((0, 5, 6), tree43),
    ((0, 5, 7), tree44),
    ((0, 5, 8), tree45),
    ((0, 5, 9), tree46),
    ((0, 5, 10), tree47),
    ((0, 5, 11), tree48),
    ((0, 5, 12), tree49),
    ((0, 5, 13), tree50),
    ((0, 5, 14), tree51),
    ((0, 5, 15), tree52),
    ((0, 5, 16), tree53),
    ((0, 5, 17), tree54),
    ((0, 8, 11), tree55),
    ((0, 8, 12), tree56),
    ((0, 10, 11), tree57),
    ((0, 10, 12), tree58),
    ((0, 10, 16), tree59),
    ((1, 0, 1), tree60),
    ((1, 0, 2), tree61),
    ((1, 0, 6), tree62),
    ((1, 0, 7), tree63),
    ((1, 0, 8), tree64),
    ((1, 0, 9), tree65),
    ((1, 0, 10), tree66),
    ((1, 0, 11), tree67),
    ((1, 0, 12), tree68),
    ((1, 0, 13), tree69),
    ((1, 0, 14), tree70),
    ((1, 0, 15), tree71),
    ((1, 0, 16), tree72),
    ((1, 0, 17), tree73),
    ((1, 1, 3), tree74),
    ((1, 1, 4), tree75),
    ((1, 1, 11), tree76),
    ((1, 1, 12), tree77),
    ((1, 2, 3), tree78),
    ((1, 2, 4), tree79),
    ((1, 2, 11), tree80),
    ((1, 2, 12), tree81),
    ((1, 2, 16), tree82)]

theorem chunk0_ok : ∀ p ∈ chunk0,
    checkTree (spec true p.1.1 p.1.2.1 p.1.2.2) [] p.2 = true := by
  intro p hp
  simp only [chunk0, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [tree0_ok, tree1_ok, tree2_ok, tree3_ok, tree4_ok, tree5_ok, tree6_ok, tree7_ok, tree8_ok, tree9_ok, tree10_ok, tree11_ok, tree12_ok, tree13_ok, tree14_ok, tree15_ok, tree16_ok, tree17_ok, tree18_ok, tree19_ok, tree20_ok, tree21_ok, tree22_ok, tree23_ok, tree24_ok, tree25_ok, tree26_ok, tree27_ok, tree28_ok, tree29_ok, tree30_ok, tree31_ok, tree32_ok, tree33_ok, tree34_ok, tree35_ok, tree36_ok, tree37_ok, tree38_ok, tree39_ok, tree40_ok, tree41_ok, tree42_ok, tree43_ok, tree44_ok, tree45_ok, tree46_ok, tree47_ok, tree48_ok, tree49_ok, tree50_ok, tree51_ok, tree52_ok, tree53_ok, tree54_ok, tree55_ok, tree56_ok, tree57_ok, tree58_ok, tree59_ok, tree60_ok, tree61_ok, tree62_ok, tree63_ok, tree64_ok, tree65_ok, tree66_ok, tree67_ok, tree68_ok, tree69_ok, tree70_ok, tree71_ok, tree72_ok, tree73_ok, tree74_ok, tree75_ok, tree76_ok, tree77_ok, tree78_ok, tree79_ok, tree80_ok, tree81_ok, tree82_ok]

end Heilbronn.Nine.C1OneLowerHex.TreesSideCap
