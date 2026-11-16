module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularModel

/-! # Triangular two-top: the enumeration of the words of `Q` (generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model.EnumQ

open Cert Cert.Expr Cover SixRadial

/-- The enumeration below `r_4 = 1`, `r_2 = 2`. -/
def enumSub_1_2 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 35], .node 5 []]], .node 3 [.node 1 [.node 5 [], .node 5 []]]]]

theorem enumSub_1_2_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 1 ++ branchFacts 7 8 2 2) enumSub_1_2 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 1`, `r_2 = 3`. -/
def enumSub_1_3 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 38], .node 5 [.closed 42]]], .node 3 [.node 1 [.node 5 [], .node 5 [.closed 47]]]]]

theorem enumSub_1_3_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 1 ++ branchFacts 7 8 2 3) enumSub_1_3 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 1`, `r_2 = 4`. -/
def enumSub_1_4 : Cover.Tree ℕ :=
  .node 6 []

theorem enumSub_1_4_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 1 ++ branchFacts 7 8 2 4) enumSub_1_4 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 1`, `r_2 = 5`. -/
def enumSub_1_5 : Cover.Tree ℕ :=
  .node 6 []

theorem enumSub_1_5_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 1 ++ branchFacts 7 8 2 5) enumSub_1_5 = true := by
  decide +kernel

theorem enumBr_1 : pkgQ.enumBranches 8 ([] ++ branchFacts 7 8 4 1) 2 = [branchFacts 7 8 2 2, branchFacts 7 8 2 3, branchFacts 7 8 2 4, branchFacts 7 8 2 5] := by
  decide +kernel

/-- The enumeration below `r_4 = 2`, `r_2 = 2`. -/
def enumSub_2_2 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 37], .node 5 []]], .node 3 [.node 1 [.node 5 [], .node 5 []]]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 36], .node 5 []]], .node 3 [.node 1 [.node 5 [], .node 5 []]]]]

theorem enumSub_2_2_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 2 ++ branchFacts 7 8 2 2) enumSub_2_2 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 2`, `r_2 = 3`. -/
def enumSub_2_3 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 40], .node 5 [.closed 44]]], .node 3 [.node 1 [.node 5 [], .node 5 [.closed 49]]]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 39], .node 5 [.closed 43]]], .node 3 [.node 1 [.node 5 [], .node 5 [.closed 48]]]]]

theorem enumSub_2_3_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 2 ++ branchFacts 7 8 2 3) enumSub_2_3 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 2`, `r_2 = 4`. -/
def enumSub_2_4 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 46]]], .node 3 [.node 1 [.node 5 [.closed 51]]]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 41], .node 5 [.closed 45]]], .node 3 [.node 1 [.node 5 [], .node 5 [.closed 50]]]]]

theorem enumSub_2_4_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 2 ++ branchFacts 7 8 2 4) enumSub_2_4 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 2`, `r_2 = 5`. -/
def enumSub_2_5 : Cover.Tree ℕ :=
  .node 6 [.node 0 [], .node 0 []]

theorem enumSub_2_5_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 2 ++ branchFacts 7 8 2 5) enumSub_2_5 = true := by
  decide +kernel

theorem enumBr_2 : pkgQ.enumBranches 8 ([] ++ branchFacts 7 8 4 2) 2 = [branchFacts 7 8 2 2, branchFacts 7 8 2 3, branchFacts 7 8 2 4, branchFacts 7 8 2 5] := by
  decide +kernel

/-- The enumeration below `r_4 = 3`, `r_2 = 2`. -/
def enumSub_3_2 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 13], .node 5 []], .node 1 []], .node 3 [.node 1 [.node 5 [.closed 27], .node 5 []]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 26], .node 5 []]]]]

theorem enumSub_3_2_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 3 ++ branchFacts 7 8 2 2) enumSub_3_2 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 3`, `r_2 = 3`. -/
def enumSub_3_3 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 14], .node 5 [.closed 16]], .node 1 []], .node 3 [.node 1 [.node 5 [.closed 29], .node 5 [.closed 32]]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 28], .node 5 [.closed 31]]]]]

theorem enumSub_3_3_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 3 ++ branchFacts 7 8 2 3) enumSub_3_3 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 3`, `r_2 = 4`. -/
def enumSub_3_4 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 18]], .node 1 []], .node 3 [.node 1 [.node 5 [.closed 34]]]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 15], .node 5 [.closed 17]], .node 1 []], .node 3 [.node 1 [.node 5 [.closed 30], .node 5 [.closed 33]]]]]

theorem enumSub_3_4_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 3 ++ branchFacts 7 8 2 4) enumSub_3_4 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 3`, `r_2 = 5`. -/
def enumSub_3_5 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 4]], .node 1 []]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 2], .node 5 [.closed 3]], .node 1 []]]]

theorem enumSub_3_5_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 3 ++ branchFacts 7 8 2 5) enumSub_3_5 = true := by
  decide +kernel

theorem enumBr_3 : pkgQ.enumBranches 8 ([] ++ branchFacts 7 8 4 3) 2 = [branchFacts 7 8 2 2, branchFacts 7 8 2 3, branchFacts 7 8 2 4, branchFacts 7 8 2 5] := by
  decide +kernel

/-- The enumeration below `r_4 = 4`, `r_2 = 2`. -/
def enumSub_4_2 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 10]], .node 1 [.node 5 [.closed 6]]], .node 3 [.node 1 [.node 5 [.closed 22]]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 21]]]]]

theorem enumSub_4_2_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 4 ++ branchFacts 7 8 2 2) enumSub_4_2 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 4`, `r_2 = 3`. -/
def enumSub_4_3 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 11]], .node 1 [.node 5 [.closed 7]]], .node 3 [.node 1 [.node 5 [.closed 24]]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 23]]]]]

theorem enumSub_4_3_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 4 ++ branchFacts 7 8 2 3) enumSub_4_3 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 4`, `r_2 = 4`. -/
def enumSub_4_4 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [], .node 1 []], .node 3 [.node 1 []]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 12]], .node 1 [.node 5 [.closed 8]]], .node 3 [.node 1 [.node 5 [.closed 25]]]]]

theorem enumSub_4_4_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 4 ++ branchFacts 7 8 2 4) enumSub_4_4 = true := by
  decide +kernel

/-- The enumeration below `r_4 = 4`, `r_2 = 5`. -/
def enumSub_4_5 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [], .node 1 []]], .node 0 [.node 3 [.node 1 [.node 5 [.closed 1]], .node 1 [.node 5 [.closed 0]]]]]

theorem enumSub_4_5_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 4 ++ branchFacts 7 8 2 5) enumSub_4_5 = true := by
  decide +kernel

theorem enumBr_4 : pkgQ.enumBranches 8 ([] ++ branchFacts 7 8 4 4) 2 = [branchFacts 7 8 2 2, branchFacts 7 8 2 3, branchFacts 7 8 2 4, branchFacts 7 8 2 5] := by
  decide +kernel

/-- The enumeration below `r_4 = 5`, `r_2 = 1`. -/
def enumSub_5_1 : Cover.Tree ℕ :=
  .node 6 [.node 0 [.node 3 [.node 1 [.node 5 [.closed 9]], .node 1 [.node 5 [.closed 5]]], .node 3 [.node 1 [.node 5 [.closed 20]]]], .node 0 [.node 3 [], .node 3 [.node 1 [.node 5 [.closed 19]]]]]

theorem enumSub_5_1_ok : checkTree (pkgQ.enumSpec 8 wordsQ) ([] ++ branchFacts 7 8 4 5 ++ branchFacts 7 8 2 1) enumSub_5_1 = true := by
  decide +kernel

theorem enumBr_5 : pkgQ.enumBranches 8 ([] ++ branchFacts 7 8 4 5) 2 = [branchFacts 7 8 2 1] := by
  decide +kernel

theorem enumBr_root : pkgQ.enumBranches 8 [] 4 = [branchFacts 7 8 4 1, branchFacts 7 8 4 2, branchFacts 7 8 4 3, branchFacts 7 8 4 4, branchFacts 7 8 4 5] := by
  decide +kernel

/-- The enumeration of the words. -/
def enumTree : Cover.Tree ℕ :=
  .node 4 [.node 2 [enumSub_1_2, enumSub_1_3, enumSub_1_4, enumSub_1_5],
    .node 2 [enumSub_2_2, enumSub_2_3, enumSub_2_4, enumSub_2_5],
    .node 2 [enumSub_3_2, enumSub_3_3, enumSub_3_4, enumSub_3_5],
    .node 2 [enumSub_4_2, enumSub_4_3, enumSub_4_4, enumSub_4_5],
    .node 2 [enumSub_5_1]]

theorem enum_ok : checkTree (pkgQ.enumSpec 8 wordsQ) [] enumTree = true := by
  rw [enumTree, checkTree_node, show (pkgQ.enumSpec 8 wordsQ).branches = pkgQ.enumBranches 8 from rfl, enumBr_root]
  simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [checkTree_node, show (pkgQ.enumSpec 8 wordsQ).branches = pkgQ.enumBranches 8 from rfl, enumBr_1]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_1_2_ok, enumSub_1_3_ok, enumSub_1_4_ok, enumSub_1_5_ok⟩
  · rw [checkTree_node, show (pkgQ.enumSpec 8 wordsQ).branches = pkgQ.enumBranches 8 from rfl, enumBr_2]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_2_2_ok, enumSub_2_3_ok, enumSub_2_4_ok, enumSub_2_5_ok⟩
  · rw [checkTree_node, show (pkgQ.enumSpec 8 wordsQ).branches = pkgQ.enumBranches 8 from rfl, enumBr_3]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_3_2_ok, enumSub_3_3_ok, enumSub_3_4_ok, enumSub_3_5_ok⟩
  · rw [checkTree_node, show (pkgQ.enumSpec 8 wordsQ).branches = pkgQ.enumBranches 8 from rfl, enumBr_4]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_4_2_ok, enumSub_4_3_ok, enumSub_4_4_ok, enumSub_4_5_ok⟩
  · rw [checkTree_node, show (pkgQ.enumSpec 8 wordsQ).branches = pkgQ.enumBranches 8 from rfl, enumBr_5]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true]
    exact enumSub_5_1_ok

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model.EnumQ
