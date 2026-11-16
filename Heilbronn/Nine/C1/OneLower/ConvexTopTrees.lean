module

public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk0
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk1
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk2
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk3
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk4
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk5
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk6
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk7
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk8
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk9
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk10
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees.Chunk11

/-! # Convex-top one-lower cover: all cells (generated)

The trees of the 207 cells, collected from the chunks, each checked there by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerConvexTop.Model

open Cover

/-- All the cells with their trees. -/
noncomputable def allCases : List ((Bool × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  chunk0 ++ chunk1 ++ chunk2 ++ chunk3 ++ chunk4 ++ chunk5 ++ chunk6 ++
    chunk7 ++ chunk8 ++ chunk9 ++ chunk10 ++ chunk11

theorem allCases_ok : ∀ p ∈ allCases, checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2 = true := by
  intro p hp
  have h : allCases.all (fun p => checkTree ((fun k => spec k.1 k.2.1 k.2.2) p.1) [] p.2) = true := by
    simp only [allCases, List.all_append, chunk0_ok, chunk1_ok, chunk2_ok, chunk3_ok, chunk4_ok, chunk5_ok,
      chunk6_ok, chunk7_ok, chunk8_ok, chunk9_ok, chunk10_ok, chunk11_ok, Bool.and_self]
  exact List.all_eq_true.1 h p hp

/-- The keys of the cells. -/
def caseKeys : List (Bool × ℕ × ℕ) := [(false, 0, 4), (false, 0, 5), (false, 0, 6), (false, 0, 7), (false, 0, 8), (false, 0, 9),
    (false, 0, 10), (false, 0, 11), (false, 0, 12), (false, 0, 13), (false, 0, 14), (false, 0, 15),
    (false, 0, 16), (false, 0, 17), (false, 0, 18), (false, 0, 19), (false, 0, 20), (false, 0, 21),
    (false, 0, 22), (false, 0, 23), (false, 0, 24), (false, 0, 25), (false, 0, 26), (false, 0, 27),
    (false, 0, 28), (false, 0, 29), (false, 0, 30), (false, 0, 31), (false, 0, 32), (false, 1, 0),
    (false, 1, 1), (false, 1, 2), (false, 1, 3), (false, 1, 4), (false, 1, 5), (false, 1, 6),
    (false, 1, 7), (false, 1, 8), (false, 1, 9), (false, 1, 10), (false, 1, 11), (false, 1, 12),
    (false, 1, 13), (false, 1, 14), (false, 1, 15), (false, 1, 16), (false, 1, 17), (false, 1, 18),
    (false, 1, 19), (false, 1, 20), (false, 1, 21), (false, 1, 22), (false, 1, 23), (false, 1, 24),
    (false, 1, 25), (false, 1, 26), (false, 1, 27), (false, 1, 28), (false, 1, 29), (false, 1, 30),
    (false, 1, 31), (false, 1, 32), (false, 2, 0), (false, 2, 1), (false, 2, 2), (false, 2, 3),
    (false, 2, 4), (false, 2, 5), (false, 2, 6), (false, 2, 7), (false, 2, 8), (false, 2, 9),
    (false, 2, 10), (false, 2, 11), (false, 2, 12), (false, 2, 13), (false, 2, 14), (false, 2, 15),
    (false, 2, 16), (false, 2, 17), (false, 2, 18), (false, 2, 19), (false, 2, 20), (false, 2, 21),
    (false, 2, 22), (false, 2, 23), (false, 2, 24), (false, 2, 25), (false, 2, 26), (false, 2, 27),
    (false, 2, 28), (false, 2, 29), (false, 2, 30), (false, 2, 31), (false, 2, 32), (false, 3, 0),
    (false, 3, 1), (false, 3, 2), (false, 3, 3), (false, 3, 4), (false, 3, 5), (false, 3, 6),
    (false, 3, 7), (false, 3, 8), (false, 3, 9), (false, 3, 10), (false, 3, 11), (false, 3, 12),
    (false, 3, 13), (false, 3, 14), (false, 3, 15), (false, 3, 16), (false, 3, 17), (false, 3, 18),
    (false, 3, 19), (false, 3, 20), (false, 3, 21), (false, 3, 22), (false, 3, 23), (false, 3, 24),
    (false, 3, 25), (false, 3, 26), (false, 3, 27), (false, 3, 28), (false, 3, 29), (false, 3, 30),
    (false, 3, 31), (false, 3, 32), (false, 4, 0), (false, 4, 1), (false, 4, 2), (false, 4, 3),
    (false, 4, 4), (false, 4, 5), (false, 4, 6), (false, 4, 7), (false, 4, 8), (false, 4, 9),
    (false, 4, 10), (false, 4, 11), (false, 4, 12), (false, 4, 13), (false, 4, 14), (false, 4, 15),
    (false, 4, 16), (false, 4, 17), (false, 4, 18), (false, 4, 19), (false, 4, 20), (false, 4, 21),
    (false, 4, 22), (false, 4, 23), (false, 4, 24), (false, 4, 25), (false, 4, 26), (false, 4, 27),
    (false, 4, 28), (true, 0, 0), (true, 0, 1), (true, 0, 2), (true, 0, 3), (true, 0, 4),
    (true, 0, 5), (true, 0, 6), (true, 0, 7), (true, 0, 8), (true, 0, 9), (true, 1, 0),
    (true, 1, 1), (true, 1, 2), (true, 1, 3), (true, 1, 4), (true, 1, 5), (true, 1, 6),
    (true, 1, 7), (true, 1, 8), (true, 1, 9), (true, 2, 0), (true, 2, 1), (true, 2, 2),
    (true, 2, 3), (true, 2, 4), (true, 2, 5), (true, 2, 6), (true, 2, 7), (true, 2, 8),
    (true, 2, 9), (true, 3, 0), (true, 3, 1), (true, 3, 2), (true, 3, 3), (true, 3, 4),
    (true, 3, 5), (true, 3, 6), (true, 3, 7), (true, 3, 8), (true, 3, 9), (true, 4, 0),
    (true, 4, 1), (true, 4, 2), (true, 4, 3), (true, 4, 4), (true, 4, 5), (true, 4, 6),
    (true, 4, 7), (true, 4, 8), (true, 4, 9)]

theorem caseKeys_eq : allCases.map Prod.fst = caseKeys := by decide +kernel

end Heilbronn.Nine.C1OneLowerConvexTop.Model
