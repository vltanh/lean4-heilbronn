module

public import Heilbronn.Nine.C1.OneLower.HexModel
public import Heilbronn.Common.DataReader

/-! # The side cap certificates, chunk 2

Kernel checks of 10 cases (299 terms), one theorem per case. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerHex.TreesSideCap

open Cover C1OneLowerHex.Model

/-- The tree of the case [3, 4, 9]. -/
noncomputable def tree143 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c143.txt")

theorem tree143_ok : checkTree (spec true 3 4 9) [] tree143 = true := by
  tree_decide

/-- The tree of the case [3, 4, 10]. -/
noncomputable def tree144 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c144.txt")

theorem tree144_ok : checkTree (spec true 3 4 10) [] tree144 = true := by
  tree_decide

/-- The tree of the case [3, 5, 6]. -/
noncomputable def tree145 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c145.txt")

theorem tree145_ok : checkTree (spec true 3 5 6) [] tree145 = true := by
  tree_decide

/-- The tree of the case [3, 5, 7]. -/
noncomputable def tree146 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c146.txt")

theorem tree146_ok : checkTree (spec true 3 5 7) [] tree146 = true := by
  tree_decide

/-- The tree of the case [3, 5, 9]. -/
noncomputable def tree147 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c147.txt")

theorem tree147_ok : checkTree (spec true 3 5 9) [] tree147 = true := by
  tree_decide

/-- The tree of the case [3, 6, 8]. -/
noncomputable def tree148 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c148.txt")

theorem tree148_ok : checkTree (spec true 3 6 8) [] tree148 = true := by
  tree_decide

/-- The tree of the case [3, 6, 10]. -/
noncomputable def tree149 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c149.txt")

theorem tree149_ok : checkTree (spec true 3 6 10) [] tree149 = true := by
  tree_decide

/-- The tree of the case [3, 7, 8]. -/
noncomputable def tree150 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c150.txt")

theorem tree150_ok : checkTree (spec true 3 7 8) [] tree150 = true := by
  tree_decide

/-- The tree of the case [3, 7, 10]. -/
noncomputable def tree151 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c151.txt")

theorem tree151_ok : checkTree (spec true 3 7 10) [] tree151 = true := by
  tree_decide

/-- The tree of the case [3, 9, 10]. -/
noncomputable def tree152 : Cover.Tree C1ZeroLower.Model.Split :=
  .cert (term_rows% "../../../Data/c1_one_lower_side_cap/c152.txt")

theorem tree152_ok : checkTree (spec true 3 9 10) [] tree152 = true := by
  tree_decide

/-- The cases of chunk 2. -/
noncomputable def chunk2 : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  [((3, 4, 9), tree143),
    ((3, 4, 10), tree144),
    ((3, 5, 6), tree145),
    ((3, 5, 7), tree146),
    ((3, 5, 9), tree147),
    ((3, 6, 8), tree148),
    ((3, 6, 10), tree149),
    ((3, 7, 8), tree150),
    ((3, 7, 10), tree151),
    ((3, 9, 10), tree152)]

theorem chunk2_ok : ∀ p ∈ chunk2,
    checkTree (spec true p.1.1 p.1.2.1 p.1.2.2) [] p.2 = true := by
  intro p hp
  simp only [chunk2, List.mem_cons, List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [tree143_ok, tree144_ok, tree145_ok, tree146_ok, tree147_ok, tree148_ok, tree149_ok, tree150_ok, tree151_ok, tree152_ok]

end Heilbronn.Nine.C1OneLowerHex.TreesSideCap
