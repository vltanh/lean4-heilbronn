module

public import Heilbronn.Nine.C1.OneLower.HexModel
public import Heilbronn.Common.DataReader

/-! # The top cap certificates, chunk 3

Kernel checks of 45 cases (2497 terms), one theorem per case. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerHex.TreesTopCap

open Cover C1OneLowerHex.Model

/-- The tree of the case [1, 14, 16]. -/
noncomputable def tree107 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c107.txt")

theorem tree107_ok : checkTree (spec false 1 14 16) [] tree107 = true := by
  tree_decide

/-- The tree of the case [2, 0, 2]. -/
noncomputable def tree108 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c108.txt")

theorem tree108_ok : checkTree (spec false 2 0 2) [] tree108 = true := by
  tree_decide

/-- The tree of the case [2, 0, 5]. -/
noncomputable def tree109 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c109.txt")

theorem tree109_ok : checkTree (spec false 2 0 5) [] tree109 = true := by
  tree_decide

/-- The tree of the case [2, 0, 7]. -/
noncomputable def tree110 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c110.txt")

theorem tree110_ok : checkTree (spec false 2 0 7) [] tree110 = true := by
  tree_decide

/-- The tree of the case [2, 0, 8]. -/
noncomputable def tree111 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c111.txt")

theorem tree111_ok : checkTree (spec false 2 0 8) [] tree111 = true := by
  tree_decide

/-- The tree of the case [2, 0, 9]. -/
noncomputable def tree112 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c112.txt")

theorem tree112_ok : checkTree (spec false 2 0 9) [] tree112 = true := by
  tree_decide

/-- The tree of the case [2, 0, 10]. -/
noncomputable def tree113 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c113.txt")

theorem tree113_ok : checkTree (spec false 2 0 10) [] tree113 = true := by
  tree_decide

/-- The tree of the case [2, 0, 12]. -/
noncomputable def tree114 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c114.txt")

theorem tree114_ok : checkTree (spec false 2 0 12) [] tree114 = true := by
  tree_decide

/-- The tree of the case [2, 0, 13]. -/
noncomputable def tree115 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c115.txt")

theorem tree115_ok : checkTree (spec false 2 0 13) [] tree115 = true := by
  tree_decide

/-- The tree of the case [2, 0, 14]. -/
noncomputable def tree116 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c116.txt")

theorem tree116_ok : checkTree (spec false 2 0 14) [] tree116 = true := by
  tree_decide

/-- The tree of the case [2, 0, 15]. -/
noncomputable def tree117 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c117.txt")

theorem tree117_ok : checkTree (spec false 2 0 15) [] tree117 = true := by
  tree_decide

/-- The tree of the case [2, 0, 16]. -/
noncomputable def tree118 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c118.txt")

theorem tree118_ok : checkTree (spec false 2 0 16) [] tree118 = true := by
  tree_decide

/-- The tree of the case [2, 0, 17]. -/
noncomputable def tree119 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c119.txt")

theorem tree119_ok : checkTree (spec false 2 0 17) [] tree119 = true := by
  tree_decide

/-- The tree of the case [2, 1, 2]. -/
noncomputable def tree120 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c120.txt")

theorem tree120_ok : checkTree (spec false 2 1 2) [] tree120 = true := by
  tree_decide

/-- The tree of the case [2, 1, 5]. -/
noncomputable def tree121 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c121.txt")

theorem tree121_ok : checkTree (spec false 2 1 5) [] tree121 = true := by
  tree_decide

/-- The tree of the case [2, 1, 7]. -/
noncomputable def tree122 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c122.txt")

theorem tree122_ok : checkTree (spec false 2 1 7) [] tree122 = true := by
  tree_decide

/-- The tree of the case [2, 1, 8]. -/
noncomputable def tree123 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c123.txt")

theorem tree123_ok : checkTree (spec false 2 1 8) [] tree123 = true := by
  tree_decide

/-- The tree of the case [2, 1, 9]. -/
noncomputable def tree124 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c124.txt")

theorem tree124_ok : checkTree (spec false 2 1 9) [] tree124 = true := by
  tree_decide

/-- The tree of the case [2, 1, 10]. -/
noncomputable def tree125 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c125.txt")

theorem tree125_ok : checkTree (spec false 2 1 10) [] tree125 = true := by
  tree_decide

/-- The tree of the case [2, 1, 12]. -/
noncomputable def tree126 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c126.txt")

theorem tree126_ok : checkTree (spec false 2 1 12) [] tree126 = true := by
  tree_decide

/-- The tree of the case [2, 1, 13]. -/
noncomputable def tree127 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c127.txt")

theorem tree127_ok : checkTree (spec false 2 1 13) [] tree127 = true := by
  tree_decide

/-- The tree of the case [2, 1, 14]. -/
noncomputable def tree128 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c128.txt")

theorem tree128_ok : checkTree (spec false 2 1 14) [] tree128 = true := by
  tree_decide

/-- The tree of the case [2, 1, 15]. -/
noncomputable def tree129 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c129.txt")

theorem tree129_ok : checkTree (spec false 2 1 15) [] tree129 = true := by
  tree_decide

/-- The tree of the case [2, 1, 16]. -/
noncomputable def tree130 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c130.txt")

theorem tree130_ok : checkTree (spec false 2 1 16) [] tree130 = true := by
  tree_decide

/-- The tree of the case [2, 1, 17]. -/
noncomputable def tree131 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c131.txt")

theorem tree131_ok : checkTree (spec false 2 1 17) [] tree131 = true := by
  tree_decide

/-- The tree of the case [2, 2, 3]. -/
noncomputable def tree132 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c132.txt")

theorem tree132_ok : checkTree (spec false 2 2 3) [] tree132 = true := by
  tree_decide

/-- The tree of the case [2, 2, 5]. -/
noncomputable def tree133 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c133.txt")

theorem tree133_ok : checkTree (spec false 2 2 5) [] tree133 = true := by
  tree_decide

/-- The tree of the case [2, 2, 9]. -/
noncomputable def tree134 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c134.txt")

theorem tree134_ok : checkTree (spec false 2 2 9) [] tree134 = true := by
  tree_decide

/-- The tree of the case [2, 2, 10]. -/
noncomputable def tree135 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c135.txt")

theorem tree135_ok : checkTree (spec false 2 2 10) [] tree135 = true := by
  tree_decide

/-- The tree of the case [2, 2, 15]. -/
noncomputable def tree136 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c136.txt")

theorem tree136_ok : checkTree (spec false 2 2 15) [] tree136 = true := by
  tree_decide

/-- The tree of the case [2, 2, 16]. -/
noncomputable def tree137 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c137.txt")

theorem tree137_ok : checkTree (spec false 2 2 16) [] tree137 = true := by
  tree_decide

/-- The tree of the case [2, 3, 17]. -/
noncomputable def tree138 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c138.txt")

theorem tree138_ok : checkTree (spec false 2 3 17) [] tree138 = true := by
  tree_decide

/-- The tree of the case [2, 4, 15]. -/
noncomputable def tree139 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c139.txt")

theorem tree139_ok : checkTree (spec false 2 4 15) [] tree139 = true := by
  tree_decide

/-- The tree of the case [2, 4, 16]. -/
noncomputable def tree140 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c140.txt")

theorem tree140_ok : checkTree (spec false 2 4 16) [] tree140 = true := by
  tree_decide

/-- The tree of the case [2, 5, 17]. -/
noncomputable def tree141 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c141.txt")

theorem tree141_ok : checkTree (spec false 2 5 17) [] tree141 = true := by
  tree_decide

/-- The tree of the case [2, 6, 15]. -/
noncomputable def tree142 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c142.txt")

theorem tree142_ok : checkTree (spec false 2 6 15) [] tree142 = true := by
  tree_decide

/-- The tree of the case [2, 6, 16]. -/
noncomputable def tree143 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c143.txt")

theorem tree143_ok : checkTree (spec false 2 6 16) [] tree143 = true := by
  tree_decide

/-- The tree of the case [2, 8, 15]. -/
noncomputable def tree144 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c144.txt")

theorem tree144_ok : checkTree (spec false 2 8 15) [] tree144 = true := by
  tree_decide

/-- The tree of the case [2, 8, 16]. -/
noncomputable def tree145 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c145.txt")

theorem tree145_ok : checkTree (spec false 2 8 16) [] tree145 = true := by
  tree_decide

/-- The tree of the case [2, 9, 17]. -/
noncomputable def tree146 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c146.txt")

theorem tree146_ok : checkTree (spec false 2 9 17) [] tree146 = true := by
  tree_decide

/-- The tree of the case [2, 11, 15]. -/
noncomputable def tree147 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c147.txt")

theorem tree147_ok : checkTree (spec false 2 11 15) [] tree147 = true := by
  tree_decide

/-- The tree of the case [2, 14, 15]. -/
noncomputable def tree148 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c148.txt")

theorem tree148_ok : checkTree (spec false 2 14 15) [] tree148 = true := by
  tree_decide

/-- The tree of the case [3, 0, 2]. -/
noncomputable def tree149 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c149.txt")

theorem tree149_ok : checkTree (spec false 3 0 2) [] tree149 = true := by
  tree_decide

/-- The tree of the case [3, 0, 5]. -/
noncomputable def tree150 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c150.txt")

theorem tree150_ok : checkTree (spec false 3 0 5) [] tree150 = true := by
  tree_decide

/-- The tree of the case [3, 0, 7]. -/
noncomputable def tree151 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_top_cap/c151.txt")

theorem tree151_ok : checkTree (spec false 3 0 7) [] tree151 = true := by
  tree_decide

/-- The cases of chunk 3. -/
noncomputable def chunk3 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((1, 14, 16), tree107),
    ((2, 0, 2), tree108),
    ((2, 0, 5), tree109),
    ((2, 0, 7), tree110),
    ((2, 0, 8), tree111),
    ((2, 0, 9), tree112),
    ((2, 0, 10), tree113),
    ((2, 0, 12), tree114),
    ((2, 0, 13), tree115),
    ((2, 0, 14), tree116),
    ((2, 0, 15), tree117),
    ((2, 0, 16), tree118),
    ((2, 0, 17), tree119),
    ((2, 1, 2), tree120),
    ((2, 1, 5), tree121),
    ((2, 1, 7), tree122),
    ((2, 1, 8), tree123),
    ((2, 1, 9), tree124),
    ((2, 1, 10), tree125),
    ((2, 1, 12), tree126),
    ((2, 1, 13), tree127),
    ((2, 1, 14), tree128),
    ((2, 1, 15), tree129),
    ((2, 1, 16), tree130),
    ((2, 1, 17), tree131),
    ((2, 2, 3), tree132),
    ((2, 2, 5), tree133),
    ((2, 2, 9), tree134),
    ((2, 2, 10), tree135),
    ((2, 2, 15), tree136),
    ((2, 2, 16), tree137),
    ((2, 3, 17), tree138),
    ((2, 4, 15), tree139),
    ((2, 4, 16), tree140),
    ((2, 5, 17), tree141),
    ((2, 6, 15), tree142),
    ((2, 6, 16), tree143),
    ((2, 8, 15), tree144),
    ((2, 8, 16), tree145),
    ((2, 9, 17), tree146),
    ((2, 11, 15), tree147),
    ((2, 14, 15), tree148),
    ((3, 0, 2), tree149),
    ((3, 0, 5), tree150),
    ((3, 0, 7), tree151)]

theorem chunk3_ok : ∀ p ∈ chunk3,
    checkTree (spec false p.1.1 p.1.2.1 p.1.2.2) [] p.2 = true := by
  intro p hp
  simp only [chunk3, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [tree107_ok, tree108_ok, tree109_ok, tree110_ok, tree111_ok, tree112_ok, tree113_ok, tree114_ok, tree115_ok, tree116_ok, tree117_ok, tree118_ok, tree119_ok, tree120_ok, tree121_ok, tree122_ok, tree123_ok, tree124_ok, tree125_ok, tree126_ok, tree127_ok, tree128_ok, tree129_ok, tree130_ok, tree131_ok, tree132_ok, tree133_ok, tree134_ok, tree135_ok, tree136_ok, tree137_ok, tree138_ok, tree139_ok, tree140_ok, tree141_ok, tree142_ok, tree143_ok, tree144_ok, tree145_ok, tree146_ok, tree147_ok, tree148_ok, tree149_ok, tree150_ok, tree151_ok]

end Heilbronn.Nine.C1OneLowerHex.TreesTopCap
