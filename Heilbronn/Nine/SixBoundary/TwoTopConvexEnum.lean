module

public import Heilbronn.Nine.SixBoundary.TwoTopConvexModel

/-! # Convex two-top: the enumeration of the radial words of `O` (generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopConvex.Model

open Cert Cert.Expr Cover SixRadial

/-- The enumeration below `r_7 = 1`, `r_1 = 6`. -/
def enumSub_1_6 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 87]], .node 2 [.node 6 [.closed 93]]], .node 0 [.node 2 [.node 6 [.closed 72]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 50]]]]], .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 5]], .node 2 [.node 6 [.closed 25]]]]]]

theorem enumSub_1_6_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 1 ++ branchFacts 8 8 1 6) enumSub_1_6 = true := by
  tree_decide

theorem enumBr_1 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 7 1) 1 = [branchFacts 8 8 1 6] := by
  decide +kernel

/-- The enumeration below `r_7 = 2`, `r_1 = 1`. -/
def enumSub_2_1 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 0]], .node 2 [.node 6 [.closed 10]]], .node 0 [.node 2 [], .node 2 []]], .node 5 [.node 0 [.node 2 [], .node 2 []], .node 0 [.node 2 [], .node 2 []]]]]

theorem enumSub_2_1_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 2 ++ branchFacts 8 8 1 1) enumSub_2_1 = true := by
  tree_decide

/-- The enumeration below `r_7 = 2`, `r_1 = 2`. -/
def enumSub_2_2 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 34]]], .node 0 [.node 2 []]], .node 5 [.node 0 [.node 2 []], .node 0 [.node 2 []]]], .node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 1]], .node 2 [.node 6 [.closed 15]]], .node 0 [.node 2 [], .node 2 []]], .node 5 [.node 0 [.node 2 [], .node 2 []], .node 0 [.node 2 [], .node 2 []]]]]

theorem enumSub_2_2_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 2 ++ branchFacts 8 8 1 2) enumSub_2_2 = true := by
  tree_decide

/-- The enumeration below `r_7 = 2`, `r_1 = 3`. -/
def enumSub_2_3 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 60]]], .node 0 [.node 2 []]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 41]]], .node 0 [.node 2 []]]], .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [.node 2 [.node 6 [.closed 2]], .node 2 [.node 6 [.closed 19]]], .node 0 [.node 2 [], .node 2 []]]]]

theorem enumSub_2_3_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 2 ++ branchFacts 8 8 1 3) enumSub_2_3 = true := by
  tree_decide

/-- The enumeration below `r_7 = 2`, `r_1 = 4`. -/
def enumSub_2_4 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 81]], .node 2 [.node 6 []]], .node 0 [.node 2 [.node 6 [.closed 67]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 46]]]]], .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 3]], .node 2 [.node 6 [.closed 22]]]]]]

theorem enumSub_2_4_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 2 ++ branchFacts 8 8 1 4) enumSub_2_4 = true := by
  tree_decide

/-- The enumeration below `r_7 = 2`, `r_1 = 5`. -/
def enumSub_2_5 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 86]], .node 2 [.node 6 [.closed 92]]], .node 0 [.node 2 [.node 6 [.closed 71]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 49]]]]], .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 4]], .node 2 [.node 6 [.closed 24]]]]]]

theorem enumSub_2_5_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 2 ++ branchFacts 8 8 1 5) enumSub_2_5 = true := by
  tree_decide

theorem enumBr_2 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 7 2) 1 = [branchFacts 8 8 1 1, branchFacts 8 8 1 2, branchFacts 8 8 1 3, branchFacts 8 8 1 4, branchFacts 8 8 1 5] := by
  decide +kernel

/-- The enumeration below `r_7 = 3`, `r_1 = 1`. -/
def enumSub_3_1 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [], .node 2 [.node 6 [.closed 8], .node 6 [.closed 9]]], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 7]]]], .node 5 [.node 0 [.node 2 [], .node 2 []], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 6]]]]]]

theorem enumSub_3_1_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 3 ++ branchFacts 8 8 1 1) enumSub_3_1 = true := by
  tree_decide

/-- The enumeration below `r_7 = 3`, `r_1 = 2`. -/
def enumSub_3_2 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 31], .node 6 [.closed 33]]], .node 0 [.node 2 [.node 6 [.closed 29]]]], .node 5 [.node 0 [.node 2 []], .node 0 [.node 2 [.node 6 [.closed 27]]]]], .node 4 [.node 5 [.node 0 [.node 2 [], .node 2 [.node 6 [.closed 13], .node 6 [.closed 14]]], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 12]]]], .node 5 [.node 0 [.node 2 [], .node 2 []], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 11]]]]]]

theorem enumSub_3_2_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 3 ++ branchFacts 8 8 1 2) enumSub_3_2 = true := by
  tree_decide

/-- The enumeration below `r_7 = 3`, `r_1 = 3`. -/
def enumSub_3_3 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 56], .node 6 [.closed 59]]], .node 0 [.node 2 [.node 6 [.closed 53]]]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 38], .node 6 [.closed 40]]], .node 0 [.node 2 [.node 6 [.closed 36]]]]], .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [.node 2 [], .node 2 [.node 6 [.closed 17], .node 6 [.closed 18]]], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 16]]]]]]

theorem enumSub_3_3_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 3 ++ branchFacts 8 8 1 3) enumSub_3_3 = true := by
  tree_decide

/-- The enumeration below `r_7 = 3`, `r_1 = 4`. -/
def enumSub_3_4 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 76], .node 6 [.closed 80]], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [.closed 63], .node 6 [.closed 66]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 43], .node 6 [.closed 45]]]]], .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [], .node 2 [.node 6 [.closed 20], .node 6 [.closed 21]]]]]]

theorem enumSub_3_4_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 3 ++ branchFacts 8 8 1 4) enumSub_3_4 = true := by
  tree_decide

/-- The enumeration below `r_7 = 3`, `r_1 = 5`. -/
def enumSub_3_5 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 [.closed 85]], .node 2 [.node 6 [], .node 6 [.closed 91]]], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 70]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 48]]]]], .node 4 [.node 5 [.node 0 [], .node 0 []], .node 5 [.node 0 [], .node 0 [.node 2 [], .node 2 [.node 6 [], .node 6 [.closed 23]]]]]]

theorem enumSub_3_5_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 3 ++ branchFacts 8 8 1 5) enumSub_3_5 = true := by
  tree_decide

theorem enumBr_3 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 7 3) 1 = [branchFacts 8 8 1 1, branchFacts 8 8 1 2, branchFacts 8 8 1 3, branchFacts 8 8 1 4, branchFacts 8 8 1 5] := by
  decide +kernel

/-- The enumeration below `r_7 = 4`, `r_1 = 1`. -/
def enumSub_4_1 : Cover.Tree ℕ :=
  .node 3 []

theorem enumSub_4_1_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 4 ++ branchFacts 8 8 1 1) enumSub_4_1 = true := by
  tree_decide

/-- The enumeration below `r_7 = 4`, `r_1 = 2`. -/
def enumSub_4_2 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 30], .node 6 [.closed 32]]], .node 0 [.node 2 [.node 6 [.closed 28]]]], .node 5 [.node 0 [.node 2 []], .node 0 [.node 2 [.node 6 [.closed 26]]]]]]

theorem enumSub_4_2_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 4 ++ branchFacts 8 8 1 2) enumSub_4_2 = true := by
  tree_decide

/-- The enumeration below `r_7 = 4`, `r_1 = 3`. -/
def enumSub_4_3 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 55], .node 6 [.closed 58]]], .node 0 [.node 2 [.node 6 [.closed 52]]]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 37], .node 6 [.closed 39]]], .node 0 [.node 2 [.node 6 [.closed 35]]]]]]

theorem enumSub_4_3_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 4 ++ branchFacts 8 8 1 3) enumSub_4_3 = true := by
  tree_decide

/-- The enumeration below `r_7 = 4`, `r_1 = 4`. -/
def enumSub_4_4 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [.closed 75], .node 6 [.closed 79]], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [.closed 62], .node 6 [.closed 65]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [.closed 42], .node 6 [.closed 44]]]]]]

theorem enumSub_4_4_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 4 ++ branchFacts 8 8 1 4) enumSub_4_4 = true := by
  tree_decide

/-- The enumeration below `r_7 = 4`, `r_1 = 5`. -/
def enumSub_4_5 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 [.closed 84]], .node 2 [.node 6 [], .node 6 [.closed 90]]], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 69]]]], .node 5 [.node 0 [], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 47]]]]]]

theorem enumSub_4_5_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 4 ++ branchFacts 8 8 1 5) enumSub_4_5 = true := by
  tree_decide

theorem enumBr_4 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 7 4) 1 = [branchFacts 8 8 1 1, branchFacts 8 8 1 2, branchFacts 8 8 1 3, branchFacts 8 8 1 4, branchFacts 8 8 1 5] := by
  decide +kernel

/-- The enumeration below `r_7 = 5`, `r_1 = 1`. -/
def enumSub_5_1 : Cover.Tree ℕ :=
  .node 3 []

theorem enumSub_5_1_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 5 ++ branchFacts 8 8 1 1) enumSub_5_1 = true := by
  tree_decide

/-- The enumeration below `r_7 = 5`, `r_1 = 2`. -/
def enumSub_5_2 : Cover.Tree ℕ :=
  .node 3 [.node 4 []]

theorem enumSub_5_2_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 5 ++ branchFacts 8 8 1 2) enumSub_5_2 = true := by
  tree_decide

/-- The enumeration below `r_7 = 5`, `r_1 = 3`. -/
def enumSub_5_3 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 []]]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 54], .node 6 [.closed 57]]], .node 0 [.node 2 [.node 6 [.closed 51]]]]]]

theorem enumSub_5_3_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 5 ++ branchFacts 8 8 1 3) enumSub_5_3 = true := by
  tree_decide

/-- The enumeration below `r_7 = 5`, `r_1 = 4`. -/
def enumSub_5_4 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [], .node 6 []]]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 74], .node 6 [.closed 78]], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [.closed 61], .node 6 [.closed 64]]]]]]

theorem enumSub_5_4_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 5 ++ branchFacts 8 8 1 4) enumSub_5_4 = true := by
  tree_decide

/-- The enumeration below `r_7 = 5`, `r_1 = 5`. -/
def enumSub_5_5 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []], .node 2 [.node 6 [], .node 6 []]], .node 0 [.node 2 [.node 6 [], .node 6 []]]], .node 5 [.node 0 [.node 2 [.node 6 [], .node 6 [.closed 83]], .node 2 [.node 6 [], .node 6 [.closed 89]]], .node 0 [.node 2 [.node 6 [], .node 6 [.closed 68]]]]]]

theorem enumSub_5_5_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 5 ++ branchFacts 8 8 1 5) enumSub_5_5 = true := by
  tree_decide

theorem enumBr_5 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 7 5) 1 = [branchFacts 8 8 1 1, branchFacts 8 8 1 2, branchFacts 8 8 1 3, branchFacts 8 8 1 4, branchFacts 8 8 1 5] := by
  decide +kernel

/-- The enumeration below `r_7 = 6`, `r_1 = 1`. -/
def enumSub_6_1 : Cover.Tree ℕ :=
  .node 3 []

theorem enumSub_6_1_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 6 ++ branchFacts 8 8 1 1) enumSub_6_1 = true := by
  tree_decide

/-- The enumeration below `r_7 = 6`, `r_1 = 2`. -/
def enumSub_6_2 : Cover.Tree ℕ :=
  .node 3 [.node 4 []]

theorem enumSub_6_2_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 6 ++ branchFacts 8 8 1 2) enumSub_6_2 = true := by
  tree_decide

/-- The enumeration below `r_7 = 6`, `r_1 = 3`. -/
def enumSub_6_3 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [], .node 5 []]]

theorem enumSub_6_3_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 6 ++ branchFacts 8 8 1 3) enumSub_6_3 = true := by
  tree_decide

/-- The enumeration below `r_7 = 6`, `r_1 = 4`. -/
def enumSub_6_4 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []], .node 2 [.node 6 [], .node 6 []]]], .node 5 [.node 0 [.node 2 [.node 6 [.closed 73], .node 6 [.closed 77]], .node 2 [.node 6 [], .node 6 []]]]]]

theorem enumSub_6_4_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 6 ++ branchFacts 8 8 1 4) enumSub_6_4 = true := by
  tree_decide

/-- The enumeration below `r_7 = 6`, `r_1 = 5`. -/
def enumSub_6_5 : Cover.Tree ℕ :=
  .node 3 [.node 4 [.node 5 [.node 0 [.node 2 [.node 6 [], .node 6 []], .node 2 [.node 6 [], .node 6 []]]], .node 5 [.node 0 [.node 2 [.node 6 [], .node 6 [.closed 82]], .node 2 [.node 6 [], .node 6 [.closed 88]]]]]]

theorem enumSub_6_5_ok : checkTree (pkg.enumSpec 8 words) ([] ++ branchFacts 8 8 7 6 ++ branchFacts 8 8 1 5) enumSub_6_5 = true := by
  tree_decide

theorem enumBr_6 : pkg.enumBranches 8 ([] ++ branchFacts 8 8 7 6) 1 = [branchFacts 8 8 1 1, branchFacts 8 8 1 2, branchFacts 8 8 1 3, branchFacts 8 8 1 4, branchFacts 8 8 1 5] := by
  decide +kernel

theorem enumBr_root : pkg.enumBranches 8 [] 7 = [branchFacts 8 8 7 1, branchFacts 8 8 7 2, branchFacts 8 8 7 3, branchFacts 8 8 7 4, branchFacts 8 8 7 5, branchFacts 8 8 7 6] := by
  decide +kernel

/-- The enumeration of the words. -/
def enumTree : Cover.Tree ℕ :=
  .node 7 [.node 1 [enumSub_1_6],
    .node 1 [enumSub_2_1, enumSub_2_2, enumSub_2_3, enumSub_2_4, enumSub_2_5],
    .node 1 [enumSub_3_1, enumSub_3_2, enumSub_3_3, enumSub_3_4, enumSub_3_5],
    .node 1 [enumSub_4_1, enumSub_4_2, enumSub_4_3, enumSub_4_4, enumSub_4_5],
    .node 1 [enumSub_5_1, enumSub_5_2, enumSub_5_3, enumSub_5_4, enumSub_5_5],
    .node 1 [enumSub_6_1, enumSub_6_2, enumSub_6_3, enumSub_6_4, enumSub_6_5]]

theorem enum_ok : checkTree (pkg.enumSpec 8 words) [] enumTree = true := by
  rw [enumTree, checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_root]
  simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_1]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true]
    exact enumSub_1_6_ok
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_2]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_2_1_ok, enumSub_2_2_ok, enumSub_2_3_ok, enumSub_2_4_ok, enumSub_2_5_ok⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_3]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_3_1_ok, enumSub_3_2_ok, enumSub_3_3_ok, enumSub_3_4_ok, enumSub_3_5_ok⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_4]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_4_1_ok, enumSub_4_2_ok, enumSub_4_3_ok, enumSub_4_4_ok, enumSub_4_5_ok⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_5]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_5_1_ok, enumSub_5_2_ok, enumSub_5_3_ok, enumSub_5_4_ok, enumSub_5_5_ok⟩
  · rw [checkTree_node, show (pkg.enumSpec 8 words).branches = pkg.enumBranches 8 from rfl, enumBr_6]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_6_1_ok, enumSub_6_2_ok, enumSub_6_3_ok, enumSub_6_4_ok, enumSub_6_5_ok⟩

end Heilbronn.Nine.SixBoundaryTwoTopConvex.Model
