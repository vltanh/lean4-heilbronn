module

public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk0
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk1
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk2
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk3
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk4
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk5
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk6
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk7
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk8
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk9
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk10
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk11
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk12
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk13
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk14
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk15
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk16
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk17
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk18
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk19
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk20
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk21
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk22
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk23
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk24
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk25
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk26
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk27
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk28
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk29
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk30
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk31
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk32
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk33
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk34
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk35
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk36
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk37
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk38
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk39
public import Heilbronn.Nine.SixBoundary.SingleTop.Trees.Chunk40

/-! # Single-top cover: all base pairs

The cell trees of the 884 base pairs,
collected from the chunks `Heilbronn.Nine.SixBoundary.SingleTop.Trees.ChunkN`, each checked there by
the kernel. -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySingleTop.Trees

open Cover Model

/-- All the base pairs with their cell trees. -/
noncomputable def allCases : List ((ℕ × ℕ) × Cover.Tree Split) :=
  chunk0 ++ chunk1 ++ chunk2 ++ chunk3 ++ chunk4 ++ chunk5 ++ chunk6 ++ chunk7 ++ chunk8 ++ chunk9 ++ chunk10 ++ chunk11 ++ chunk12 ++ chunk13 ++ chunk14 ++ chunk15 ++ chunk16 ++ chunk17 ++ chunk18 ++ chunk19 ++ chunk20 ++ chunk21 ++ chunk22 ++ chunk23 ++ chunk24 ++ chunk25 ++ chunk26 ++ chunk27 ++ chunk28 ++ chunk29 ++ chunk30 ++ chunk31 ++ chunk32 ++ chunk33 ++ chunk34 ++ chunk35 ++ chunk36 ++ chunk37 ++ chunk38 ++ chunk39 ++ chunk40

theorem allCases_ok : ∀ p ∈ allCases, checkTree (spec p.1.1 p.1.2) [] p.2 = true := by
  intro p hp
  have h : allCases.all (fun p => checkTree (spec p.1.1 p.1.2) [] p.2) = true := by
    simp only [allCases, List.all_append, chunk0_ok, chunk1_ok, chunk2_ok, chunk3_ok, chunk4_ok, chunk5_ok, chunk6_ok, chunk7_ok, chunk8_ok, chunk9_ok, chunk10_ok, chunk11_ok, chunk12_ok, chunk13_ok, chunk14_ok, chunk15_ok, chunk16_ok, chunk17_ok, chunk18_ok, chunk19_ok, chunk20_ok, chunk21_ok, chunk22_ok, chunk23_ok, chunk24_ok, chunk25_ok, chunk26_ok, chunk27_ok, chunk28_ok, chunk29_ok, chunk30_ok, chunk31_ok, chunk32_ok, chunk33_ok, chunk34_ok, chunk35_ok, chunk36_ok, chunk37_ok, chunk38_ok, chunk39_ok, chunk40_ok, Bool.and_self]
  exact List.all_eq_true.1 h p hp

/-- The base pairs covered are the model's `cases`. -/
theorem allCases_keys : allCases.map Prod.fst = cases := by decide +kernel

end Heilbronn.Nine.SixBoundarySingleTop.Trees
