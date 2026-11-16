module

public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk0
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk1
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk2
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk3
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk4
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk5
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk6
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk7
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees.Chunk8

/-! # Top-triangle one-lower cover: all cells (generated)

The trees of the 219 cells, collected from the chunks, each checked there by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerTopTriangle.Model

open Cover

/-- All the cells with their trees. -/
noncomputable def allCases : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  chunk0 ++ chunk1 ++ chunk2 ++ chunk3 ++ chunk4 ++ chunk5 ++ chunk6 ++
    chunk7 ++ chunk8

theorem allCases_ok : ∀ p ∈ allCases, checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2 = true := by
  intro p hp
  have h : allCases.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
    simp only [allCases, List.all_append, chunk0_ok, chunk1_ok, chunk2_ok, chunk3_ok, chunk4_ok, chunk5_ok,
      chunk6_ok, chunk7_ok, chunk8_ok, Bool.and_self]
  exact List.all_eq_true.1 h p hp

/-- The keys of the cells. -/
def caseKeys : List (ℕ × ℕ × ℕ) := [(0, 0, 1), (0, 0, 2), (0, 0, 5), (0, 0, 6), (0, 0, 7), (0, 0, 8),
    (0, 0, 9), (0, 0, 10), (0, 0, 11), (0, 0, 12), (0, 0, 13), (0, 0, 14),
    (0, 0, 15), (0, 0, 16), (0, 0, 17), (0, 1, 0), (0, 1, 3), (0, 1, 4),
    (0, 1, 9), (0, 1, 10), (0, 1, 11), (0, 1, 12), (0, 1, 13), (0, 1, 14),
    (0, 1, 15), (0, 1, 16), (0, 1, 17), (0, 2, 0), (0, 2, 1), (0, 2, 2),
    (0, 2, 3), (0, 2, 4), (0, 2, 5), (0, 2, 6), (0, 2, 7), (0, 2, 8),
    (0, 2, 10), (0, 2, 11), (0, 2, 13), (0, 2, 14), (0, 2, 16), (0, 2, 17),
    (0, 3, 0), (0, 3, 1), (0, 3, 2), (0, 3, 3), (0, 3, 4), (0, 3, 5),
    (0, 3, 6), (0, 3, 7), (0, 3, 8), (0, 3, 9), (0, 3, 10), (0, 3, 11),
    (0, 3, 12), (0, 3, 13), (0, 3, 14), (0, 3, 15), (0, 3, 16), (0, 3, 17),
    (1, 0, 1), (1, 0, 2), (1, 0, 9), (1, 0, 10), (1, 0, 11), (1, 0, 12),
    (1, 0, 13), (1, 0, 14), (1, 0, 15), (1, 0, 16), (1, 0, 17), (1, 1, 0),
    (1, 1, 9), (1, 1, 10), (1, 1, 11), (1, 1, 12), (1, 1, 13), (1, 1, 14),
    (1, 1, 15), (1, 1, 16), (1, 1, 17), (1, 2, 0), (1, 2, 1), (1, 2, 2),
    (1, 2, 3), (1, 2, 4), (1, 2, 5), (1, 2, 6), (1, 2, 7), (1, 2, 8),
    (1, 2, 10), (1, 2, 11), (1, 2, 13), (1, 2, 14), (1, 2, 16), (1, 2, 17),
    (1, 3, 0), (1, 3, 1), (1, 3, 2), (1, 3, 3), (1, 3, 4), (1, 3, 5),
    (1, 3, 6), (1, 3, 7), (1, 3, 8), (1, 3, 9), (1, 3, 10), (1, 3, 11),
    (1, 3, 12), (1, 3, 13), (1, 3, 14), (1, 3, 15), (1, 3, 16), (1, 3, 17),
    (2, 0, 1), (2, 0, 2), (2, 0, 5), (2, 0, 6), (2, 0, 7), (2, 0, 8),
    (2, 0, 9), (2, 0, 10), (2, 0, 11), (2, 0, 12), (2, 0, 13), (2, 0, 14),
    (2, 0, 15), (2, 0, 16), (2, 0, 17), (2, 1, 0), (2, 1, 1), (2, 1, 2),
    (2, 1, 3), (2, 1, 4), (2, 1, 5), (2, 1, 6), (2, 1, 7), (2, 1, 8),
    (2, 1, 9), (2, 1, 10), (2, 1, 11), (2, 1, 12), (2, 1, 13), (2, 1, 14),
    (2, 1, 15), (2, 1, 16), (2, 1, 17), (2, 2, 0), (2, 2, 1), (2, 2, 2),
    (2, 2, 3), (2, 2, 4), (2, 2, 5), (2, 2, 6), (2, 2, 7), (2, 2, 8),
    (2, 2, 16), (2, 2, 17), (2, 3, 0), (2, 3, 1), (2, 3, 2), (2, 3, 3),
    (2, 3, 4), (2, 3, 5), (2, 3, 6), (2, 3, 7), (2, 3, 8), (2, 3, 15),
    (3, 0, 1), (3, 0, 2), (3, 0, 5), (3, 0, 6), (3, 0, 7), (3, 0, 8),
    (3, 0, 9), (3, 0, 10), (3, 0, 11), (3, 0, 12), (3, 0, 13), (3, 0, 14),
    (3, 1, 0), (3, 1, 1), (3, 1, 2), (3, 1, 3), (3, 1, 4), (3, 1, 5),
    (3, 1, 6), (3, 1, 7), (3, 1, 8), (3, 1, 9), (3, 1, 10), (3, 1, 11),
    (3, 1, 12), (3, 1, 13), (3, 1, 14), (3, 2, 0), (3, 2, 1), (3, 2, 2),
    (3, 2, 3), (3, 2, 4), (3, 2, 5), (3, 2, 6), (3, 2, 7), (3, 2, 8),
    (3, 2, 10), (3, 2, 11), (3, 2, 13), (3, 2, 14), (3, 3, 0), (3, 3, 1),
    (3, 3, 2), (3, 3, 3), (3, 3, 4), (3, 3, 5), (3, 3, 6), (3, 3, 7),
    (3, 3, 8), (3, 3, 9), (3, 3, 12)]

theorem caseKeys_eq : allCases.map Prod.fst = caseKeys := by decide +kernel

end Heilbronn.Nine.C1OneLowerTopTriangle.Model
