module

public import Heilbronn.Six.TwoTopTriangularModel

/-! # Triangular two-top: the enumeration of the words of `P` (generated) -/

@[expose] public section

namespace Heilbronn.SixBoundaryTwoTopTriangular.Model.EnumP

open Cert Cert.Expr Cover SixRadial

/-- The enumeration below `r_3 = 1`, `r_4 = 1`. -/
def enumSub_1_1 : Cover.Tree ℕ :=
  .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 3]]]]]

theorem enumSub_1_1_ok : checkTree (pkgP.enumSpec 7 wordsP) ([] ++ branchFacts 7 7 3 1 ++ branchFacts 7 7 4 1) enumSub_1_1 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 1`, `r_4 = 2`. -/
def enumSub_1_2 : Cover.Tree ℕ :=
  .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 4]]]]]

theorem enumSub_1_2_ok : checkTree (pkgP.enumSpec 7 wordsP) ([] ++ branchFacts 7 7 3 1 ++ branchFacts 7 7 4 2) enumSub_1_2 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 1`, `r_4 = 3`. -/
def enumSub_1_3 : Cover.Tree ℕ :=
  .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 2]]]]]

theorem enumSub_1_3_ok : checkTree (pkgP.enumSpec 7 wordsP) ([] ++ branchFacts 7 7 3 1 ++ branchFacts 7 7 4 3) enumSub_1_3 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 1`, `r_4 = 4`. -/
def enumSub_1_4 : Cover.Tree ℕ :=
  .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 1]]]]]

theorem enumSub_1_4_ok : checkTree (pkgP.enumSpec 7 wordsP) ([] ++ branchFacts 7 7 3 1 ++ branchFacts 7 7 4 4) enumSub_1_4 = true := by
  decide +kernel

/-- The enumeration below `r_3 = 1`, `r_4 = 5`. -/
def enumSub_1_5 : Cover.Tree ℕ :=
  .node 5 [.node 6 [.node 0 [.node 1 [.node 2 [.closed 0]]]]]

theorem enumSub_1_5_ok : checkTree (pkgP.enumSpec 7 wordsP) ([] ++ branchFacts 7 7 3 1 ++ branchFacts 7 7 4 5) enumSub_1_5 = true := by
  decide +kernel

theorem enumBr_1 : pkgP.enumBranches 7 ([] ++ branchFacts 7 7 3 1) 4 = [branchFacts 7 7 4 1, branchFacts 7 7 4 2, branchFacts 7 7 4 3, branchFacts 7 7 4 4, branchFacts 7 7 4 5] := by
  decide +kernel

theorem enumBr_root : pkgP.enumBranches 7 [] 3 = [branchFacts 7 7 3 1] := by
  decide +kernel

/-- The enumeration of the words. -/
def enumTree : Cover.Tree ℕ :=
  .node 3 [.node 4 [enumSub_1_1, enumSub_1_2, enumSub_1_3, enumSub_1_4, enumSub_1_5]]

theorem enum_ok : checkTree (pkgP.enumSpec 7 wordsP) [] enumTree = true := by
  rw [enumTree, checkTree_node, show (pkgP.enumSpec 7 wordsP).branches = pkgP.enumBranches 7 from rfl, enumBr_root]
  simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
  · rw [checkTree_node, show (pkgP.enumSpec 7 wordsP).branches = pkgP.enumBranches 7 from rfl, enumBr_1]
    simp only [checkChildren_cons, checkChildren_nil, Bool.and_true, Bool.and_eq_true]
    exact ⟨enumSub_1_1_ok, enumSub_1_2_ok, enumSub_1_3_ok, enumSub_1_4_ok, enumSub_1_5_ok⟩

end Heilbronn.SixBoundaryTwoTopTriangular.Model.EnumP
