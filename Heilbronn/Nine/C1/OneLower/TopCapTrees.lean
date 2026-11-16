module

public import Heilbronn.Nine.C1.OneLower.TopCapTrees.Chunk0
public import Heilbronn.Nine.C1.OneLower.TopCapTrees.Chunk1
public import Heilbronn.Nine.C1.OneLower.TopCapTrees.Chunk2
public import Heilbronn.Nine.C1.OneLower.TopCapTrees.Chunk3
public import Heilbronn.Nine.C1.OneLower.TopCapTrees.Chunk4
public import Heilbronn.Nine.C1.OneLower.TopCapTrees.Chunk5

/-! # The top cap cover: all cases

The 202 word cases, collected from the chunks, with the kernel-checked trees. -/

@[expose] public section

namespace Heilbronn.Nine.C1OneLowerHex.TreesTopCap

open Cover C1OneLowerHex.Model

/-- All the cases with their trees. -/
noncomputable def allCases : List ((ℕ × ℕ × ℕ) × Cover.Tree C1ZeroLower.Model.Split) :=
  chunk0 ++ chunk1 ++ chunk2 ++ chunk3 ++ chunk4 ++ chunk5

theorem allCases_ok : ∀ p ∈ allCases,
    checkTree (spec false p.1.1 p.1.2.1 p.1.2.2) [] p.2 = true := by
  intro p hp
  simp only [allCases, List.mem_append, or_assoc] at hp
  rcases hp with hp | hp | hp | hp | hp | hp
  exacts [chunk0_ok p hp, chunk1_ok p hp, chunk2_ok p hp, chunk3_ok p hp, chunk4_ok p hp, chunk5_ok p hp]

/-- The cases covered. -/
def caseKeys : List (ℕ × ℕ × ℕ) :=
  [(0, 0, 5), (0, 0, 7), (0, 0, 8), (0, 0, 9), (0, 0, 10), (0, 0, 12), (0, 0, 13), (0, 0, 14),
    (0, 0, 15), (0, 0, 16), (0, 0, 17), (0, 1, 9), (0, 1, 10), (0, 1, 12), (0, 1, 13), (0, 1, 14),
    (0, 1, 15), (0, 1, 16), (0, 1, 17), (0, 2, 3), (0, 2, 9), (0, 2, 10), (0, 2, 15), (0, 2, 16),
    (0, 3, 8), (0, 3, 14), (0, 3, 17), (0, 4, 5), (0, 4, 7), (0, 4, 8), (0, 4, 9), (0, 4, 10),
    (0, 4, 12), (0, 4, 13), (0, 4, 14), (0, 4, 15), (0, 4, 16), (0, 4, 17), (0, 5, 11), (0, 5, 14),
    (0, 5, 17), (0, 6, 9), (0, 6, 10), (0, 6, 12), (0, 6, 13), (0, 6, 14), (0, 6, 15), (0, 6, 16),
    (0, 6, 17), (0, 7, 11), (0, 8, 9), (0, 8, 10), (0, 8, 11), (0, 8, 15), (0, 8, 16), (0, 9, 11),
    (0, 9, 14), (0, 9, 17), (0, 10, 11), (0, 10, 14), (0, 10, 17), (0, 11, 12), (0, 11, 13), (0, 11, 14),
    (0, 11, 15), (0, 11, 16), (0, 11, 17), (0, 14, 15), (0, 14, 16), (1, 0, 2), (1, 0, 5), (1, 0, 7),
    (1, 0, 8), (1, 0, 9), (1, 0, 10), (1, 0, 12), (1, 0, 13), (1, 0, 14), (1, 0, 15), (1, 0, 16),
    (1, 0, 17), (1, 1, 9), (1, 1, 10), (1, 1, 12), (1, 1, 13), (1, 1, 14), (1, 1, 15), (1, 1, 16),
    (1, 1, 17), (1, 2, 3), (1, 2, 9), (1, 2, 10), (1, 2, 15), (1, 2, 16), (1, 3, 17), (1, 4, 15),
    (1, 4, 16), (1, 5, 17), (1, 6, 15), (1, 6, 16), (1, 8, 15), (1, 8, 16), (1, 9, 17), (1, 10, 17),
    (1, 11, 15), (1, 11, 16), (1, 14, 15), (1, 14, 16), (2, 0, 2), (2, 0, 5), (2, 0, 7), (2, 0, 8),
    (2, 0, 9), (2, 0, 10), (2, 0, 12), (2, 0, 13), (2, 0, 14), (2, 0, 15), (2, 0, 16), (2, 0, 17),
    (2, 1, 2), (2, 1, 5), (2, 1, 7), (2, 1, 8), (2, 1, 9), (2, 1, 10), (2, 1, 12), (2, 1, 13),
    (2, 1, 14), (2, 1, 15), (2, 1, 16), (2, 1, 17), (2, 2, 3), (2, 2, 5), (2, 2, 9), (2, 2, 10),
    (2, 2, 15), (2, 2, 16), (2, 3, 17), (2, 4, 15), (2, 4, 16), (2, 5, 17), (2, 6, 15), (2, 6, 16),
    (2, 8, 15), (2, 8, 16), (2, 9, 17), (2, 11, 15), (2, 14, 15), (3, 0, 2), (3, 0, 5), (3, 0, 7),
    (3, 0, 8), (3, 0, 9), (3, 0, 10), (3, 0, 12), (3, 0, 13), (3, 0, 14), (3, 1, 2), (3, 1, 5),
    (3, 1, 7), (3, 1, 8), (3, 1, 9), (3, 1, 10), (3, 1, 12), (3, 1, 13), (3, 1, 14), (3, 2, 3),
    (3, 2, 5), (3, 2, 7), (3, 2, 9), (3, 2, 10), (3, 2, 12), (3, 2, 13), (3, 3, 8), (3, 3, 14),
    (3, 4, 5), (3, 4, 7), (3, 4, 9), (3, 4, 10), (3, 4, 12), (3, 4, 13), (3, 5, 6), (3, 5, 8),
    (3, 5, 11), (3, 5, 14), (3, 6, 7), (3, 6, 9), (3, 6, 10), (3, 6, 12), (3, 6, 13), (3, 7, 8),
    (3, 7, 11), (3, 7, 14), (3, 8, 9), (3, 8, 10), (3, 8, 12), (3, 8, 13), (3, 9, 11), (3, 9, 14),
    (3, 11, 12), (3, 12, 14)]

theorem caseKeys_eq : allCases.map Prod.fst = caseKeys := by decide +kernel

theorem trees_ok : ∀ x ∈ caseKeys, ∃ T, checkTree (spec false x.1 x.2.1 x.2.2) [] T = true := by
  intro x hx
  rw [← caseKeys_eq] at hx
  obtain ⟨p, hp, rfl⟩ := List.mem_map.1 hx
  exact ⟨p.2, allCases_ok p hp⟩

end Heilbronn.Nine.C1OneLowerHex.TreesTopCap
