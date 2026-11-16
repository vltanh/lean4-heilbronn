module

public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk0
public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk1
public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk2
public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk3
public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk4
public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk5
public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk6
public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk7
public import Heilbronn.C1.OneLower.MixedCapsTrees.Chunk8

/-! # Mixed-caps one-lower cover: all cells (generated)

The trees of the 62 cells, collected from the chunks, each checked there by the kernel. -/

@[expose] public section

namespace Heilbronn.C1OneLowerMixedCaps.Model

open Cover

/-- All the cells with their trees. -/
noncomputable def allCases : List ((ℕ × ℕ × ℕ) × Cover.Tree MSplit) :=
  chunk0 ++ chunk1 ++ chunk2 ++ chunk3 ++ chunk4 ++ chunk5 ++ chunk6 ++
    chunk7 ++ chunk8

theorem allCases_ok : ∀ p ∈ allCases, checkTree (spec p.1) [] p.2 = true := by
  intro p hp
  have h : allCases.all (fun p => checkTree (spec p.1) [] p.2) = true := by
    simp only [allCases, List.all_append, chunk0_ok, chunk1_ok, chunk2_ok, chunk3_ok, chunk4_ok, chunk5_ok,
      chunk6_ok, chunk7_ok, chunk8_ok, Bool.and_self]
  exact List.all_eq_true.1 h p hp

/-- The keys of the cells. -/
def caseKeys : List (ℕ × ℕ × ℕ) := [(0, 0, 2), (0, 0, 3), (0, 0, 4), (0, 0, 5), (0, 0, 6), (0, 0, 7),
    (0, 1, 0), (0, 1, 1), (0, 1, 2), (0, 1, 3), (0, 1, 4), (0, 1, 5),
    (0, 1, 6), (0, 1, 7), (0, 2, 0), (0, 2, 1), (0, 2, 2), (0, 2, 3),
    (0, 2, 4), (0, 2, 5), (1, 0, 2), (1, 0, 3), (1, 0, 4), (1, 0, 5),
    (1, 0, 6), (1, 0, 7), (1, 1, 0), (1, 1, 1), (1, 1, 2), (1, 1, 3),
    (1, 1, 4), (1, 1, 5), (1, 1, 6), (1, 1, 7), (1, 2, 0), (1, 2, 1),
    (1, 2, 2), (1, 2, 3), (1, 2, 4), (1, 2, 5), (2, 0, 0), (2, 0, 1),
    (2, 0, 2), (2, 0, 3), (2, 0, 4), (2, 0, 5), (2, 0, 6), (2, 0, 7),
    (2, 1, 0), (2, 1, 1), (2, 1, 2), (2, 1, 3), (2, 1, 4), (2, 1, 5),
    (2, 1, 6), (2, 1, 7), (2, 2, 0), (2, 2, 1), (2, 2, 2), (2, 2, 3),
    (2, 2, 4), (2, 2, 5)]

theorem caseKeys_eq : allCases.map Prod.fst = caseKeys := by decide +kernel

end Heilbronn.C1OneLowerMixedCaps.Model
