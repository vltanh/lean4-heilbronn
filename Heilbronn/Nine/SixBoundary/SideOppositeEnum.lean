module

public import Heilbronn.Nine.SixBoundary.SideOppositeModel

/-! # Side/opposite: the enumeration of the radial words of `Q` (generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

/-- The enumeration below `r_3 = 1`, `r_7 = 4`. -/
def enumSub_1_4 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 47]], .node 5 []]], .node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 []], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 27]], .node 5 []]]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 17]], .node 5 []]]]]

theorem enumSub_1_4_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 1 ++ branchFacts 8 8 7 4) enumSub_1_4 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 1`, `r_7 = 5`. -/
def enumSub_1_5 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 46]], .node 5 []]], .node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 []]]

theorem enumSub_1_5_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 1 ++ branchFacts 8 8 7 5) enumSub_1_5 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 1`, `r_7 = 6`. -/
def enumSub_1_6 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 []]]

theorem enumSub_1_6_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 1 ++ branchFacts 8 8 7 6) enumSub_1_6 = true := by
  decide +kernel

theorem enumBr_1 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 3 1) 7 = [branchFacts 8 8 7 4, branchFacts 8 8 7 5, branchFacts 8 8 7 6] := by
  decide +kernel

/-- The enumeration below `r_3 = 2`, `r_7 = 4`. -/
def enumSub_2_4 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 49]], .node 5 [.node 1 [.closed 63], .node 1 [.closed 54]]]], .node 6 [.node 2 [.node 5 [], .node 5 [.node 1 [.closed 77]]]], .node 6 []], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 28]], .node 5 [.node 1 [.closed 37], .node 1 [.closed 31]]]]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 18]], .node 5 [.node 1 [], .node 1 [.closed 21]]]]]]

theorem enumSub_2_4_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 2 ++ branchFacts 8 8 7 4) enumSub_2_4 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 2`, `r_7 = 5`. -/
def enumSub_2_5 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 48]], .node 5 [.node 1 [.closed 62], .node 1 [.closed 53]]]], .node 6 [.node 2 [.node 5 [], .node 5 [.node 1 [.closed 76]]]], .node 6 []]]

theorem enumSub_2_5_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 2 ++ branchFacts 8 8 7 5) enumSub_2_5 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 2`, `r_7 = 6`. -/
def enumSub_2_6 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [], .node 5 []]], .node 6 [.node 2 [.node 5 [], .node 5 [.node 1 [.closed 75]]]], .node 6 []]]

theorem enumSub_2_6_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 2 ++ branchFacts 8 8 7 6) enumSub_2_6 = true := by
  decide +kernel

theorem enumBr_2 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 3 2) 7 = [branchFacts 8 8 7 4, branchFacts 8 8 7 5, branchFacts 8 8 7 6] := by
  decide +kernel

/-- The enumeration below `r_3 = 3`, `r_7 = 4`. -/
def enumSub_3_4 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 72], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 68], .node 1 [.closed 59]]], .node 2 [.node 5 [.node 1 [.closed 51]], .node 5 [.node 1 [.closed 65], .node 1 [.closed 56]]]], .node 6 [.node 2 [.node 5 [.node 1 [.closed 89]]], .node 2 [.node 5 [.node 1 [.closed 84]]], .node 2 [.node 5 [], .node 5 [.node 1 [.closed 80]]]], .node 6 [.node 2 [.node 5 [.node 1 [.closed 94]]]]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 43], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 40], .node 1 [.closed 34]]], .node 2 [.node 5 [.node 1 [.closed 29]], .node 5 [.node 1 [.closed 38], .node 1 [.closed 32]]]]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 24]]], .node 2 [.node 5 [.node 1 [.closed 19]], .node 5 [.node 1 [], .node 1 [.closed 22]]]]]]

theorem enumSub_3_4_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 3 ++ branchFacts 8 8 7 4) enumSub_3_4 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 3`, `r_7 = 5`. -/
def enumSub_3_5 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 71], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 67], .node 1 [.closed 58]]], .node 2 [.node 5 [.node 1 [.closed 50]], .node 5 [.node 1 [.closed 64], .node 1 [.closed 55]]]], .node 6 [.node 2 [.node 5 [.node 1 [.closed 88]]], .node 2 [.node 5 [.node 1 [.closed 83]]], .node 2 [.node 5 [], .node 5 [.node 1 [.closed 79]]]], .node 6 [.node 2 [.node 5 [.node 1 [.closed 93]]]]]]

theorem enumSub_3_5_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 3 ++ branchFacts 8 8 7 5) enumSub_3_5 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 3`, `r_7 = 6`. -/
def enumSub_3_6 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 []], .node 2 [.node 5 []], .node 2 [.node 5 [], .node 5 []]], .node 6 [.node 2 [.node 5 [.node 1 [.closed 87]]], .node 2 [.node 5 [.node 1 [.closed 82]]], .node 2 [.node 5 [], .node 5 [.node 1 [.closed 78]]]], .node 6 [.node 2 [.node 5 [.node 1 [.closed 92]]]]]]

theorem enumSub_3_6_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 3 ++ branchFacts 8 8 7 6) enumSub_3_6 = true := by
  decide +kernel

theorem enumBr_3 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 3 3) 7 = [branchFacts 8 8 7 4, branchFacts 8 8 7 5, branchFacts 8 8 7 6] := by
  decide +kernel

/-- The enumeration below `r_3 = 4`, `r_7 = 2`. -/
def enumSub_4_2 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 74], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 70], .node 1 [.closed 61]]], .node 2 []], .node 6 [.node 2 [.node 5 [.node 1 [.closed 91]]], .node 2 [.node 5 [.node 1 [.closed 86]]], .node 2 []], .node 6 [.node 2 [.node 5 [.node 1 [.closed 96]]]]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 45], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 42], .node 1 [.closed 36]]], .node 2 []]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 26]]], .node 2 []]]]

theorem enumSub_4_2_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 4 ++ branchFacts 8 8 7 2) enumSub_4_2 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 4`, `r_7 = 3`. -/
def enumSub_4_3 : Cover.Tree ℕ :=
  .node 4 [.node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 73], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 69], .node 1 [.closed 60]]], .node 2 [.node 5 [.node 1 [.closed 52]], .node 5 [.node 1 [.closed 66], .node 1 [.closed 57]]]], .node 6 [.node 2 [.node 5 [.node 1 [.closed 90]]], .node 2 [.node 5 [.node 1 [.closed 85]]], .node 2 [.node 5 [], .node 5 [.node 1 [.closed 81]]]], .node 6 [.node 2 [.node 5 [.node 1 [.closed 95]]]]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 44], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 41], .node 1 [.closed 35]]], .node 2 [.node 5 [.node 1 [.closed 30]], .node 5 [.node 1 [.closed 39], .node 1 [.closed 33]]]]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 25]]], .node 2 [.node 5 [.node 1 [.closed 20]], .node 5 [.node 1 [], .node 1 [.closed 23]]]]]]

theorem enumSub_4_3_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 4 ++ branchFacts 8 8 7 3) enumSub_4_3 = true := by
  decide +kernel

theorem enumBr_4 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 3 4) 7 = [branchFacts 8 8 7 2, branchFacts 8 8 7 3] := by
  decide +kernel

/-- The enumeration below `r_3 = 5`, `r_7 = 2`. -/
def enumSub_5_2 : Cover.Tree ℕ :=
  .node 4 [.node 0 [], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [.closed 3], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 2], .node 1 [.closed 1]]], .node 2 []], .node 6 [.node 2 [.node 5 [.node 1 [.closed 16], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 14], .node 1 [.closed 11]]], .node 2 []]], .node 0 [.node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 0]]], .node 2 []], .node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 7]]], .node 2 []]]]

theorem enumSub_5_2_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 5 ++ branchFacts 8 8 7 2) enumSub_5_2 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 5`, `r_7 = 3`. -/
def enumSub_5_3 : Cover.Tree ℕ :=
  .node 4 [.node 0 [], .node 0 [.node 6 [.node 2 [], .node 2 [], .node 2 []], .node 6 [.node 2 [.node 5 [.node 1 [.closed 15], .node 1 []]], .node 2 [.node 5 [.node 1 [.closed 13], .node 1 [.closed 10]]], .node 2 [.node 5 [.node 1 [.closed 8]], .node 5 [.node 1 [.closed 12], .node 1 [.closed 9]]]]], .node 0 [.node 6 [.node 2 [], .node 2 [], .node 2 []], .node 6 [.node 2 [.node 5 [.node 1 [], .node 1 []]], .node 2 [.node 5 [.node 1 [], .node 1 [.closed 6]]], .node 2 [.node 5 [.node 1 [.closed 4]], .node 5 [.node 1 [], .node 1 [.closed 5]]]]]]

theorem enumSub_5_3_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 3 5 ++ branchFacts 8 8 7 3) enumSub_5_3 = true := by
  decide +kernel

theorem enumBr_5 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 3 5) 7 = [branchFacts 8 8 7 2, branchFacts 8 8 7 3] := by
  decide +kernel

theorem enumBr_root : pkg.enumBranches 8 [] 3 = [branchFacts 8 8 3 1, branchFacts 8 8 3 2, branchFacts 8 8 3 3, branchFacts 8 8 3 4, branchFacts 8 8 3 5] := by
  decide +kernel

/-- The enumeration of the words. -/
def enumTree : Cover.Tree ℕ :=
  .node 3 [.node 7 [enumSub_1_4, enumSub_1_5, enumSub_1_6],
    .node 7 [enumSub_2_4, enumSub_2_5, enumSub_2_6],
    .node 7 [enumSub_3_4, enumSub_3_5, enumSub_3_6],
    .node 7 [enumSub_4_2, enumSub_4_3],
    .node 7 [enumSub_5_2, enumSub_5_3]]

theorem enum_ok : checkTree (pkg.enumSpec 8 words) [] enumTree = true := by
  rw [enumTree, checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_root]
  simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_1]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_1_4_ok, enumSub_1_5_ok, enumSub_1_6_ok⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_2]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_2_4_ok, enumSub_2_5_ok, enumSub_2_6_ok⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_3]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_3_4_ok, enumSub_3_5_ok, enumSub_3_6_ok⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_4]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_4_2_ok, enumSub_4_3_ok⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_5]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_5_2_ok, enumSub_5_3_ok⟩

end Heilbronn.Nine.SixBoundarySideOpposite.Model
