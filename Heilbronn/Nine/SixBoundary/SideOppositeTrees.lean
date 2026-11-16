module

public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk0
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk1
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk2
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk3
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk4
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk5
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk6
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk7
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk8
public import Heilbronn.Nine.SixBoundary.SideOppositeTrees.Chunk9

/-! # Side/opposite certificates: the assembly (generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundarySideOpposite.Model

open Cert Cert.Expr Cover SixRadial

theorem all_ok (i : ℕ) (hi : i < 97) (h23 : i ≠ 23) (h54 : i ≠ 54) :
    ∃ T, checkTree (pkg.spec Pkg.noClosed) (leafFacts i) T = true := by
  interval_cases i
  · exact ⟨_, tree0_ok⟩
  · exact ⟨_, tree1_ok⟩
  · exact ⟨_, tree2_ok⟩
  · exact ⟨_, tree3_ok⟩
  · exact ⟨_, tree4_ok⟩
  · exact ⟨_, tree5_ok⟩
  · exact ⟨_, tree6_ok⟩
  · exact ⟨_, tree7_ok⟩
  · exact ⟨_, tree8_ok⟩
  · exact ⟨_, tree9_ok⟩
  · exact ⟨_, tree10_ok⟩
  · exact ⟨_, tree11_ok⟩
  · exact ⟨_, tree12_ok⟩
  · exact ⟨_, tree13_ok⟩
  · exact ⟨_, tree14_ok⟩
  · exact ⟨_, tree15_ok⟩
  · exact ⟨_, tree16_ok⟩
  · exact ⟨_, tree17_ok⟩
  · exact ⟨_, tree18_ok⟩
  · exact ⟨_, tree19_ok⟩
  · exact ⟨_, tree20_ok⟩
  · exact ⟨_, tree21_ok⟩
  · exact ⟨_, tree22_ok⟩
  · exact absurd rfl h23
  · exact ⟨_, tree24_ok⟩
  · exact ⟨_, tree25_ok⟩
  · exact ⟨_, tree26_ok⟩
  · exact ⟨_, tree27_ok⟩
  · exact ⟨_, tree28_ok⟩
  · exact ⟨_, tree29_ok⟩
  · exact ⟨_, tree30_ok⟩
  · exact ⟨_, tree31_ok⟩
  · exact ⟨_, tree32_ok⟩
  · exact ⟨_, tree33_ok⟩
  · exact ⟨_, tree34_ok⟩
  · exact ⟨_, tree35_ok⟩
  · exact ⟨_, tree36_ok⟩
  · exact ⟨_, tree37_ok⟩
  · exact ⟨_, tree38_ok⟩
  · exact ⟨_, tree39_ok⟩
  · exact ⟨_, tree40_ok⟩
  · exact ⟨_, tree41_ok⟩
  · exact ⟨_, tree42_ok⟩
  · exact ⟨_, tree43_ok⟩
  · exact ⟨_, tree44_ok⟩
  · exact ⟨_, tree45_ok⟩
  · exact ⟨_, tree46_ok⟩
  · exact ⟨_, tree47_ok⟩
  · exact ⟨_, tree48_ok⟩
  · exact ⟨_, tree49_ok⟩
  · exact ⟨_, tree50_ok⟩
  · exact ⟨_, tree51_ok⟩
  · exact ⟨_, tree52_ok⟩
  · exact ⟨_, tree53_ok⟩
  · exact absurd rfl h54
  · exact ⟨_, tree55_ok⟩
  · exact ⟨_, tree56_ok⟩
  · exact ⟨_, tree57_ok⟩
  · exact ⟨_, tree58_ok⟩
  · exact ⟨_, tree59_ok⟩
  · exact ⟨_, tree60_ok⟩
  · exact ⟨_, tree61_ok⟩
  · exact ⟨_, tree62_ok⟩
  · exact ⟨_, tree63_ok⟩
  · exact ⟨_, tree64_ok⟩
  · exact ⟨_, tree65_ok⟩
  · exact ⟨_, tree66_ok⟩
  · exact ⟨_, tree67_ok⟩
  · exact ⟨_, tree68_ok⟩
  · exact ⟨_, tree69_ok⟩
  · exact ⟨_, tree70_ok⟩
  · exact ⟨_, tree71_ok⟩
  · exact ⟨_, tree72_ok⟩
  · exact ⟨_, tree73_ok⟩
  · exact ⟨_, tree74_ok⟩
  · exact ⟨_, tree75_ok⟩
  · exact ⟨_, tree76_ok⟩
  · exact ⟨_, tree77_ok⟩
  · exact ⟨_, tree78_ok⟩
  · exact ⟨_, tree79_ok⟩
  · exact ⟨_, tree80_ok⟩
  · exact ⟨_, tree81_ok⟩
  · exact ⟨_, tree82_ok⟩
  · exact ⟨_, tree83_ok⟩
  · exact ⟨_, tree84_ok⟩
  · exact ⟨_, tree85_ok⟩
  · exact ⟨_, tree86_ok⟩
  · exact ⟨_, tree87_ok⟩
  · exact ⟨_, tree88_ok⟩
  · exact ⟨_, tree89_ok⟩
  · exact ⟨_, tree90_ok⟩
  · exact ⟨_, tree91_ok⟩
  · exact ⟨_, tree92_ok⟩
  · exact ⟨_, tree93_ok⟩
  · exact ⟨_, tree94_ok⟩
  · exact ⟨_, tree95_ok⟩
  · exact ⟨_, tree96_ok⟩

theorem res23_ok (j : ℕ) (hj : j < 7) :
    ∃ T, checkTree (pkg.spec Pkg.noClosed) (leafFacts 23 ++ [Sum.inr (res23.getD j 0)]) T = true := by
  interval_cases j
  · exact ⟨_, res23_0_ok⟩
  · exact ⟨_, res23_1_ok⟩
  · exact ⟨_, res23_2_ok⟩
  · exact ⟨_, res23_3_ok⟩
  · exact ⟨_, res23_4_ok⟩
  · exact ⟨_, res23_5_ok⟩
  · exact ⟨_, res23_6_ok⟩

theorem res54_ok (j : ℕ) (hj : j < 2) :
    ∃ T, checkTree (pkg.spec Pkg.noClosed) (leafFacts 54 ++ [Sum.inr (res54.getD j 0)]) T = true := by
  interval_cases j
  · exact ⟨_, res54_0_ok⟩
  · exact ⟨_, res54_1_ok⟩

end Heilbronn.Nine.SixBoundarySideOpposite.Model
