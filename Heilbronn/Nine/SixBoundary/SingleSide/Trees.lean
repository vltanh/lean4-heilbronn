module

public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk0
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk1
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk2
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk3
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk4
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk5
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk6
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk7
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk8
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk9
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk10
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk11
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk12
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk13
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk14
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk15
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk16
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk17
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees.Chunk18

/-! # Single-side cover: all base cases

The cell trees of the 536 base cases
(543 cells), collected from the chunks `Heilbronn.Nine.SixBoundary.SingleSide.Trees.ChunkN`, each
checked there by the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleSide.Trees

open Cover Model

/-- All the base cases with their cell trees. -/
noncomputable def allCases : List ((ℕ × ℕ) × Cover.Tree Split) :=
  chunk0 ++ chunk1 ++ chunk2 ++ chunk3 ++ chunk4 ++ chunk5 ++ chunk6 ++ chunk7 ++ chunk8 ++ chunk9 ++ chunk10 ++ chunk11 ++ chunk12 ++ chunk13 ++ chunk14 ++ chunk15 ++ chunk16 ++ chunk17 ++ chunk18

theorem allCases_ok : ∀ x ∈ allCases, checkTree (spec x.1.1 x.1.2) [] x.2 = true := by
  simp only [allCases, List.forall_mem_append]
  exact ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨chunk0_ok, chunk1_ok⟩, chunk2_ok⟩, chunk3_ok⟩, chunk4_ok⟩, chunk5_ok⟩, chunk6_ok⟩, chunk7_ok⟩, chunk8_ok⟩, chunk9_ok⟩, chunk10_ok⟩, chunk11_ok⟩, chunk12_ok⟩, chunk13_ok⟩, chunk14_ok⟩, chunk15_ok⟩, chunk16_ok⟩, chunk17_ok⟩, chunk18_ok⟩

/-- The base cases covered are the model's `cases`. -/
theorem allCases_keys : allCases.map Prod.fst = cases := by decide +kernel

end Heilbronn.Nine.SixBoundarySingleSide.Trees
