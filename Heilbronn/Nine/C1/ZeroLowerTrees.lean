module

public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk0
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk1
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk2
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk3
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk4
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk5
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk6
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk7
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk8
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk9
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk10
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk11
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk12
public import Heilbronn.Nine.C1.ZeroLowerTrees.Chunk13

/-! # Zero-lower C1 cover: all cases

The sign trees of the 112 word cases, collected from the
chunks `Heilbronn.Nine.C1.ZeroLowerTrees.ChunkN`, each checked there by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1ZeroLower.Trees

open Cover Model

/-- All the cases with their sign trees. -/
noncomputable def allCases : List (List ℕ × Cover.Tree Split) :=
  chunk0 ++ chunk1 ++ chunk2 ++ chunk3 ++ chunk4 ++ chunk5 ++ chunk6 ++
    chunk7 ++ chunk8 ++ chunk9 ++ chunk10 ++ chunk11 ++ chunk12 ++ chunk13

theorem allCases_ok : ∀ p ∈ allCases, checkTree (spec p.1) [] p.2 = true := by
  intro p hp
  have h : allCases.all (fun p => checkTree (spec p.1) [] p.2) = true := by
    simp only [allCases, List.all_append, chunk0_ok, chunk1_ok, chunk2_ok, chunk3_ok, chunk4_ok, chunk5_ok,
      chunk6_ok, chunk7_ok, chunk8_ok, chunk9_ok, chunk10_ok, chunk11_ok,
      chunk12_ok, chunk13_ok, Bool.and_self]
  exact List.all_eq_true.1 h p hp

/-- The word cases covered: the 112 retained cases (see `C1ZeroLower.filters_keys`). -/
def caseKeys : List (List ℕ) := [[0, 0, 3, 4], [0, 0, 3, 5], [0, 0, 3, 6], [0, 0, 3, 7], [0, 0, 3, 9], [0, 0, 3, 10],
    [0, 0, 4, 5], [0, 0, 4, 7], [0, 0, 4, 10], [0, 0, 5, 6], [0, 0, 5, 7], [0, 0, 5, 9],
    [0, 0, 5, 10], [0, 0, 6, 7], [0, 0, 7, 9], [0, 0, 9, 10], [0, 1, 3, 3], [0, 1, 3, 4],
    [0, 1, 3, 6], [0, 1, 3, 7], [0, 1, 3, 8], [0, 1, 3, 9], [0, 1, 3, 10], [0, 1, 4, 8],
    [0, 1, 6, 8], [0, 1, 7, 8], [0, 1, 8, 9], [0, 1, 8, 10], [0, 2, 3, 3], [0, 2, 3, 4],
    [0, 2, 3, 6], [0, 2, 3, 8], [0, 2, 3, 9], [0, 2, 4, 8], [0, 2, 6, 8], [0, 2, 8, 9],
    [0, 3, 3, 4], [0, 3, 3, 5], [0, 3, 3, 6], [0, 3, 3, 7], [0, 3, 3, 9], [0, 3, 3, 10],
    [0, 3, 4, 5], [0, 3, 4, 7], [0, 3, 4, 8], [0, 3, 4, 10], [0, 3, 5, 6], [0, 3, 5, 7],
    [0, 3, 5, 8], [0, 3, 5, 9], [0, 3, 5, 10], [0, 3, 6, 7], [0, 3, 6, 8], [0, 3, 7, 8],
    [0, 3, 7, 9], [0, 3, 8, 9], [0, 3, 8, 10], [0, 3, 9, 10], [0, 4, 5, 8], [0, 4, 7, 8],
    [0, 4, 8, 10], [0, 5, 6, 8], [0, 5, 7, 8], [0, 5, 8, 9], [0, 5, 8, 10], [0, 6, 7, 8],
    [0, 7, 8, 9], [1, 2, 3, 3], [1, 2, 3, 8], [1, 3, 3, 3], [1, 3, 3, 4], [1, 3, 3, 6],
    [1, 3, 3, 7], [1, 3, 3, 9], [1, 3, 3, 10], [1, 3, 4, 8], [1, 3, 6, 8], [1, 3, 7, 8],
    [1, 3, 8, 9], [1, 3, 8, 10], [2, 3, 3, 3], [2, 3, 3, 4], [2, 3, 3, 6], [2, 3, 3, 9],
    [2, 3, 4, 8], [2, 3, 6, 8], [2, 3, 8, 9], [3, 3, 3, 4], [3, 3, 3, 5], [3, 3, 3, 6],
    [3, 3, 3, 7], [3, 3, 3, 9], [3, 3, 3, 10], [3, 3, 4, 5], [3, 3, 4, 7], [3, 3, 4, 10],
    [3, 3, 5, 6], [3, 3, 5, 7], [3, 3, 5, 9], [3, 3, 5, 10], [3, 3, 6, 7], [3, 3, 7, 9],
    [3, 3, 9, 10], [3, 4, 5, 8], [3, 4, 7, 8], [3, 4, 8, 10], [3, 5, 6, 8], [3, 5, 7, 8],
    [3, 5, 8, 9], [3, 5, 8, 10], [3, 6, 7, 8], [3, 7, 8, 9]]

theorem caseKeys_eq : allCases.map Prod.fst = caseKeys := by decide +kernel

end Heilbronn.Nine.C1ZeroLower.Trees
