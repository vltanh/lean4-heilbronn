module

public import Heilbronn.Nine.C1.OneLower.HexModel
public import Heilbronn.Common.DataReader

/-! # The top cap certificates, chunk 1

Kernel checks of 27 cases (2456 terms), one theorem per case. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerHex.TreesTopCap

open Cover C1OneLowerHex.Model

/-- The tree of the case [0, 7, 11]. -/
noncomputable def tree49 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c049.txt")

theorem tree49_ok : checkTree (spec false 0 7 11) [] tree49 = true := by
  tree_decide

/-- The tree of the case [0, 8, 9]. -/
noncomputable def tree50 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c050.txt")

theorem tree50_ok : checkTree (spec false 0 8 9) [] tree50 = true := by
  tree_decide

/-- The tree of the case [0, 8, 10]. -/
noncomputable def tree51 : Cover.Tree C1ZeroLower.Model.Split :=
  .node (.tri 3 6 7) [.node (.tri 4 6 7) [.cert (term_rows% "../../../Data/c1_one_lower_top_cap/c051b0.txt"), .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c051b2.txt")], .node (.tri 4 6 7) [.cert (term_rows% "../../../Data/c1_one_lower_top_cap/c051b1.txt"), .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c051b3.txt")]]

theorem tree51_ok : checkTree (spec false 0 8 10) [] tree51 = true := by
  tree_decide

/-- The tree of the case [0, 8, 11]. -/
noncomputable def tree52 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c052.txt")

theorem tree52_ok : checkTree (spec false 0 8 11) [] tree52 = true := by
  tree_decide

/-- The tree of the case [0, 8, 15]. -/
noncomputable def tree53 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c053.txt")

theorem tree53_ok : checkTree (spec false 0 8 15) [] tree53 = true := by
  tree_decide

/-- The tree of the case [0, 8, 16]. -/
noncomputable def tree54 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c054.txt")

theorem tree54_ok : checkTree (spec false 0 8 16) [] tree54 = true := by
  tree_decide

/-- The tree of the case [0, 9, 11]. -/
noncomputable def tree55 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c055.txt")

theorem tree55_ok : checkTree (spec false 0 9 11) [] tree55 = true := by
  tree_decide

/-- The tree of the case [0, 9, 14]. -/
noncomputable def tree56 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c056.txt")

theorem tree56_ok : checkTree (spec false 0 9 14) [] tree56 = true := by
  tree_decide

/-- The tree of the case [0, 9, 17]. -/
noncomputable def tree57 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c057.txt")

theorem tree57_ok : checkTree (spec false 0 9 17) [] tree57 = true := by
  tree_decide

/-- The tree of the case [0, 10, 11]. -/
noncomputable def tree58 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c058.txt")

theorem tree58_ok : checkTree (spec false 0 10 11) [] tree58 = true := by
  tree_decide

/-- The tree of the case [0, 10, 14]. -/
noncomputable def tree59 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c059.txt")

theorem tree59_ok : checkTree (spec false 0 10 14) [] tree59 = true := by
  tree_decide

/-- The tree of the case [0, 10, 17]. -/
noncomputable def tree60 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c060.txt")

theorem tree60_ok : checkTree (spec false 0 10 17) [] tree60 = true := by
  tree_decide

/-- The tree of the case [0, 11, 12]. -/
noncomputable def tree61 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c061.txt")

theorem tree61_ok : checkTree (spec false 0 11 12) [] tree61 = true := by
  tree_decide

/-- The tree of the case [0, 11, 13]. -/
noncomputable def tree62 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c062.txt")

theorem tree62_ok : checkTree (spec false 0 11 13) [] tree62 = true := by
  tree_decide

/-- The tree of the case [0, 11, 14]. -/
noncomputable def tree63 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c063.txt")

theorem tree63_ok : checkTree (spec false 0 11 14) [] tree63 = true := by
  tree_decide

/-- The tree of the case [0, 11, 15]. -/
noncomputable def tree64 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c064.txt")

theorem tree64_ok : checkTree (spec false 0 11 15) [] tree64 = true := by
  tree_decide

/-- The tree of the case [0, 11, 16]. -/
noncomputable def tree65 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c065.txt")

theorem tree65_ok : checkTree (spec false 0 11 16) [] tree65 = true := by
  tree_decide

/-- The tree of the case [0, 11, 17]. -/
noncomputable def tree66 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c066.txt")

theorem tree66_ok : checkTree (spec false 0 11 17) [] tree66 = true := by
  tree_decide

/-- The tree of the case [0, 14, 15]. -/
noncomputable def tree67 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c067.txt")

theorem tree67_ok : checkTree (spec false 0 14 15) [] tree67 = true := by
  tree_decide

/-- The tree of the case [0, 14, 16]. -/
noncomputable def tree68 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c068.txt")

theorem tree68_ok : checkTree (spec false 0 14 16) [] tree68 = true := by
  tree_decide

/-- The tree of the case [1, 0, 2]. -/
noncomputable def tree69 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c069.txt")

theorem tree69_ok : checkTree (spec false 1 0 2) [] tree69 = true := by
  tree_decide

/-- The tree of the case [1, 0, 5]. -/
noncomputable def tree70 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c070.txt")

theorem tree70_ok : checkTree (spec false 1 0 5) [] tree70 = true := by
  tree_decide

/-- The tree of the case [1, 0, 7]. -/
noncomputable def tree71 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c071.txt")

theorem tree71_ok : checkTree (spec false 1 0 7) [] tree71 = true := by
  tree_decide

/-- The tree of the case [1, 0, 8]. -/
noncomputable def tree72 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c072.txt")

theorem tree72_ok : checkTree (spec false 1 0 8) [] tree72 = true := by
  tree_decide

/-- The tree of the case [1, 0, 9]. -/
noncomputable def tree73 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c073.txt")

theorem tree73_ok : checkTree (spec false 1 0 9) [] tree73 = true := by
  tree_decide

/-- The tree of the case [1, 0, 10]. -/
noncomputable def tree74 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c074.txt")

theorem tree74_ok : checkTree (spec false 1 0 10) [] tree74 = true := by
  tree_decide

/-- The tree of the case [1, 0, 12]. -/
noncomputable def tree75 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c075.txt")

theorem tree75_ok : checkTree (spec false 1 0 12) [] tree75 = true := by
  tree_decide

/-- The cases of chunk 1. -/
noncomputable def chunk1 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((0, 7, 11), tree49),
    ((0, 8, 9), tree50),
    ((0, 8, 10), tree51),
    ((0, 8, 11), tree52),
    ((0, 8, 15), tree53),
    ((0, 8, 16), tree54),
    ((0, 9, 11), tree55),
    ((0, 9, 14), tree56),
    ((0, 9, 17), tree57),
    ((0, 10, 11), tree58),
    ((0, 10, 14), tree59),
    ((0, 10, 17), tree60),
    ((0, 11, 12), tree61),
    ((0, 11, 13), tree62),
    ((0, 11, 14), tree63),
    ((0, 11, 15), tree64),
    ((0, 11, 16), tree65),
    ((0, 11, 17), tree66),
    ((0, 14, 15), tree67),
    ((0, 14, 16), tree68),
    ((1, 0, 2), tree69),
    ((1, 0, 5), tree70),
    ((1, 0, 7), tree71),
    ((1, 0, 8), tree72),
    ((1, 0, 9), tree73),
    ((1, 0, 10), tree74),
    ((1, 0, 12), tree75)]

theorem chunk1_ok : ∀ p ∈ chunk1,
    checkTree (spec false p.1.1 p.1.2.1 p.1.2.2) [] p.2 = true := by
  intro p hp
  simp only [chunk1, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [tree49_ok, tree50_ok, tree51_ok, tree52_ok, tree53_ok, tree54_ok, tree55_ok, tree56_ok, tree57_ok, tree58_ok, tree59_ok, tree60_ok, tree61_ok, tree62_ok, tree63_ok, tree64_ok, tree65_ok, tree66_ok, tree67_ok, tree68_ok, tree69_ok, tree70_ok, tree71_ok, tree72_ok, tree73_ok, tree74_ok, tree75_ok]

end Heilbronn.Nine.C1OneLowerHex.TreesTopCap
