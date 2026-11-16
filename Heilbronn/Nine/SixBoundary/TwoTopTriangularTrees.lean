module

public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk0
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk1
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk2
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk3
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk4
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk5
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk6
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk7
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk8
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk9
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk10
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk11
public import Heilbronn.Nine.SixBoundary.TwoTopTriangularTrees.Chunk12

/-! # Triangular two-top certificates: the assembly (generated) -/

@[expose] public section

namespace Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model

open Cert Cert.Expr Cover SixRadial

theorem all_ok (ip : ℕ) (hp : ip < 5) (iq : ℕ) (hq : iq < 52) :
    ∃ T, checkTree (pkg.spec Pkg.noClosed) (cellFacts ip iq) T = true := by
  interval_cases ip
  · interval_cases iq
    · exact ⟨_, cell_0_0_ok⟩
    · exact ⟨_, cell_0_1_ok⟩
    · exact ⟨_, cell_0_2_ok⟩
    · exact ⟨_, cell_0_3_ok⟩
    · exact ⟨_, cell_0_4_ok⟩
    · exact ⟨_, cell_0_5_ok⟩
    · exact ⟨_, cell_0_6_ok⟩
    · exact ⟨_, cell_0_7_ok⟩
    · exact ⟨_, cell_0_8_ok⟩
    · exact ⟨_, cell_0_9_ok⟩
    · exact ⟨_, cell_0_10_ok⟩
    · exact ⟨_, cell_0_11_ok⟩
    · exact ⟨_, cell_0_12_ok⟩
    · exact ⟨_, cell_0_13_ok⟩
    · exact ⟨_, cell_0_14_ok⟩
    · exact ⟨_, cell_0_15_ok⟩
    · exact ⟨_, cell_0_16_ok⟩
    · exact ⟨_, cell_0_17_ok⟩
    · exact ⟨_, cell_0_18_ok⟩
    · exact ⟨_, cell_0_19_ok⟩
    · exact ⟨_, cell_0_20_ok⟩
    · exact ⟨_, cell_0_21_ok⟩
    · exact ⟨_, cell_0_22_ok⟩
    · exact ⟨_, cell_0_23_ok⟩
    · exact ⟨_, cell_0_24_ok⟩
    · exact ⟨_, cell_0_25_ok⟩
    · exact ⟨_, cell_0_26_ok⟩
    · exact ⟨_, cell_0_27_ok⟩
    · exact ⟨_, cell_0_28_ok⟩
    · exact ⟨_, cell_0_29_ok⟩
    · exact ⟨_, cell_0_30_ok⟩
    · exact ⟨_, cell_0_31_ok⟩
    · exact ⟨_, cell_0_32_ok⟩
    · exact ⟨_, cell_0_33_ok⟩
    · exact ⟨_, cell_0_34_ok⟩
    · exact ⟨_, cell_0_35_ok⟩
    · exact ⟨_, cell_0_36_ok⟩
    · exact ⟨_, cell_0_37_ok⟩
    · exact ⟨_, cell_0_38_ok⟩
    · exact ⟨_, cell_0_39_ok⟩
    · exact ⟨_, cell_0_40_ok⟩
    · exact ⟨_, cell_0_41_ok⟩
    · exact ⟨_, cell_0_42_ok⟩
    · exact ⟨_, cell_0_43_ok⟩
    · exact ⟨_, cell_0_44_ok⟩
    · exact ⟨_, cell_0_45_ok⟩
    · exact ⟨_, cell_0_46_ok⟩
    · exact ⟨_, cell_0_47_ok⟩
    · exact ⟨_, cell_0_48_ok⟩
    · exact ⟨_, cell_0_49_ok⟩
    · exact ⟨_, cell_0_50_ok⟩
    · exact ⟨_, cell_0_51_ok⟩
  · interval_cases iq
    · exact ⟨_, cell_1_0_ok⟩
    · exact ⟨_, cell_1_1_ok⟩
    · exact ⟨_, cell_1_2_ok⟩
    · exact ⟨_, cell_1_3_ok⟩
    · exact ⟨_, cell_1_4_ok⟩
    · exact ⟨_, cell_1_5_ok⟩
    · exact ⟨_, cell_1_6_ok⟩
    · exact ⟨_, cell_1_7_ok⟩
    · exact ⟨_, cell_1_8_ok⟩
    · exact ⟨_, cell_1_9_ok⟩
    · exact ⟨_, cell_1_10_ok⟩
    · exact ⟨_, cell_1_11_ok⟩
    · exact ⟨_, cell_1_12_ok⟩
    · exact ⟨_, cell_1_13_ok⟩
    · exact ⟨_, cell_1_14_ok⟩
    · exact ⟨_, cell_1_15_ok⟩
    · exact ⟨_, cell_1_16_ok⟩
    · exact ⟨_, cell_1_17_ok⟩
    · exact ⟨_, cell_1_18_ok⟩
    · exact ⟨_, cell_1_19_ok⟩
    · exact ⟨_, cell_1_20_ok⟩
    · exact ⟨_, cell_1_21_ok⟩
    · exact ⟨_, cell_1_22_ok⟩
    · exact ⟨_, cell_1_23_ok⟩
    · exact ⟨_, cell_1_24_ok⟩
    · exact ⟨_, cell_1_25_ok⟩
    · exact ⟨_, cell_1_26_ok⟩
    · exact ⟨_, cell_1_27_ok⟩
    · exact ⟨_, cell_1_28_ok⟩
    · exact ⟨_, cell_1_29_ok⟩
    · exact ⟨_, cell_1_30_ok⟩
    · exact ⟨_, cell_1_31_ok⟩
    · exact ⟨_, cell_1_32_ok⟩
    · exact ⟨_, cell_1_33_ok⟩
    · exact ⟨_, cell_1_34_ok⟩
    · exact ⟨_, cell_1_35_ok⟩
    · exact ⟨_, cell_1_36_ok⟩
    · exact ⟨_, cell_1_37_ok⟩
    · exact ⟨_, cell_1_38_ok⟩
    · exact ⟨_, cell_1_39_ok⟩
    · exact ⟨_, cell_1_40_ok⟩
    · exact ⟨_, cell_1_41_ok⟩
    · exact ⟨_, cell_1_42_ok⟩
    · exact ⟨_, cell_1_43_ok⟩
    · exact ⟨_, cell_1_44_ok⟩
    · exact ⟨_, cell_1_45_ok⟩
    · exact ⟨_, cell_1_46_ok⟩
    · exact ⟨_, cell_1_47_ok⟩
    · exact ⟨_, cell_1_48_ok⟩
    · exact ⟨_, cell_1_49_ok⟩
    · exact ⟨_, cell_1_50_ok⟩
    · exact ⟨_, cell_1_51_ok⟩
  · interval_cases iq
    · exact ⟨_, cell_2_0_ok⟩
    · exact ⟨_, cell_2_1_ok⟩
    · exact ⟨_, cell_2_2_ok⟩
    · exact ⟨_, cell_2_3_ok⟩
    · exact ⟨_, cell_2_4_ok⟩
    · exact ⟨_, cell_2_5_ok⟩
    · exact ⟨_, cell_2_6_ok⟩
    · exact ⟨_, cell_2_7_ok⟩
    · exact ⟨_, cell_2_8_ok⟩
    · exact ⟨_, cell_2_9_ok⟩
    · exact ⟨_, cell_2_10_ok⟩
    · exact ⟨_, cell_2_11_ok⟩
    · exact ⟨_, cell_2_12_ok⟩
    · exact ⟨_, cell_2_13_ok⟩
    · exact ⟨_, cell_2_14_ok⟩
    · exact ⟨_, cell_2_15_ok⟩
    · exact ⟨_, cell_2_16_ok⟩
    · exact ⟨_, cell_2_17_ok⟩
    · exact ⟨_, cell_2_18_ok⟩
    · exact ⟨_, cell_2_19_ok⟩
    · exact ⟨_, cell_2_20_ok⟩
    · exact ⟨_, cell_2_21_ok⟩
    · exact ⟨_, cell_2_22_ok⟩
    · exact ⟨_, cell_2_23_ok⟩
    · exact ⟨_, cell_2_24_ok⟩
    · exact ⟨_, cell_2_25_ok⟩
    · exact ⟨_, cell_2_26_ok⟩
    · exact ⟨_, cell_2_27_ok⟩
    · exact ⟨_, cell_2_28_ok⟩
    · exact ⟨_, cell_2_29_ok⟩
    · exact ⟨_, cell_2_30_ok⟩
    · exact ⟨_, cell_2_31_ok⟩
    · exact ⟨_, cell_2_32_ok⟩
    · exact ⟨_, cell_2_33_ok⟩
    · exact ⟨_, cell_2_34_ok⟩
    · exact ⟨_, cell_2_35_ok⟩
    · exact ⟨_, cell_2_36_ok⟩
    · exact ⟨_, cell_2_37_ok⟩
    · exact ⟨_, cell_2_38_ok⟩
    · exact ⟨_, cell_2_39_ok⟩
    · exact ⟨_, cell_2_40_ok⟩
    · exact ⟨_, cell_2_41_ok⟩
    · exact ⟨_, cell_2_42_ok⟩
    · exact ⟨_, cell_2_43_ok⟩
    · exact ⟨_, cell_2_44_ok⟩
    · exact ⟨_, cell_2_45_ok⟩
    · exact ⟨_, cell_2_46_ok⟩
    · exact ⟨_, cell_2_47_ok⟩
    · exact ⟨_, cell_2_48_ok⟩
    · exact ⟨_, cell_2_49_ok⟩
    · exact ⟨_, cell_2_50_ok⟩
    · exact ⟨_, cell_2_51_ok⟩
  · interval_cases iq
    · exact ⟨_, cell_3_0_ok⟩
    · exact ⟨_, cell_3_1_ok⟩
    · exact ⟨_, cell_3_2_ok⟩
    · exact ⟨_, cell_3_3_ok⟩
    · exact ⟨_, cell_3_4_ok⟩
    · exact ⟨_, cell_3_5_ok⟩
    · exact ⟨_, cell_3_6_ok⟩
    · exact ⟨_, cell_3_7_ok⟩
    · exact ⟨_, cell_3_8_ok⟩
    · exact ⟨_, cell_3_9_ok⟩
    · exact ⟨_, cell_3_10_ok⟩
    · exact ⟨_, cell_3_11_ok⟩
    · exact ⟨_, cell_3_12_ok⟩
    · exact ⟨_, cell_3_13_ok⟩
    · exact ⟨_, cell_3_14_ok⟩
    · exact ⟨_, cell_3_15_ok⟩
    · exact ⟨_, cell_3_16_ok⟩
    · exact ⟨_, cell_3_17_ok⟩
    · exact ⟨_, cell_3_18_ok⟩
    · exact ⟨_, cell_3_19_ok⟩
    · exact ⟨_, cell_3_20_ok⟩
    · exact ⟨_, cell_3_21_ok⟩
    · exact ⟨_, cell_3_22_ok⟩
    · exact ⟨_, cell_3_23_ok⟩
    · exact ⟨_, cell_3_24_ok⟩
    · exact ⟨_, cell_3_25_ok⟩
    · exact ⟨_, cell_3_26_ok⟩
    · exact ⟨_, cell_3_27_ok⟩
    · exact ⟨_, cell_3_28_ok⟩
    · exact ⟨_, cell_3_29_ok⟩
    · exact ⟨_, cell_3_30_ok⟩
    · exact ⟨_, cell_3_31_ok⟩
    · exact ⟨_, cell_3_32_ok⟩
    · exact ⟨_, cell_3_33_ok⟩
    · exact ⟨_, cell_3_34_ok⟩
    · exact ⟨_, cell_3_35_ok⟩
    · exact ⟨_, cell_3_36_ok⟩
    · exact ⟨_, cell_3_37_ok⟩
    · exact ⟨_, cell_3_38_ok⟩
    · exact ⟨_, cell_3_39_ok⟩
    · exact ⟨_, cell_3_40_ok⟩
    · exact ⟨_, cell_3_41_ok⟩
    · exact ⟨_, cell_3_42_ok⟩
    · exact ⟨_, cell_3_43_ok⟩
    · exact ⟨_, cell_3_44_ok⟩
    · exact ⟨_, cell_3_45_ok⟩
    · exact ⟨_, cell_3_46_ok⟩
    · exact ⟨_, cell_3_47_ok⟩
    · exact ⟨_, cell_3_48_ok⟩
    · exact ⟨_, cell_3_49_ok⟩
    · exact ⟨_, cell_3_50_ok⟩
    · exact ⟨_, cell_3_51_ok⟩
  · interval_cases iq
    · exact ⟨_, cell_4_0_ok⟩
    · exact ⟨_, cell_4_1_ok⟩
    · exact ⟨_, cell_4_2_ok⟩
    · exact ⟨_, cell_4_3_ok⟩
    · exact ⟨_, cell_4_4_ok⟩
    · exact ⟨_, cell_4_5_ok⟩
    · exact ⟨_, cell_4_6_ok⟩
    · exact ⟨_, cell_4_7_ok⟩
    · exact ⟨_, cell_4_8_ok⟩
    · exact ⟨_, cell_4_9_ok⟩
    · exact ⟨_, cell_4_10_ok⟩
    · exact ⟨_, cell_4_11_ok⟩
    · exact ⟨_, cell_4_12_ok⟩
    · exact ⟨_, cell_4_13_ok⟩
    · exact ⟨_, cell_4_14_ok⟩
    · exact ⟨_, cell_4_15_ok⟩
    · exact ⟨_, cell_4_16_ok⟩
    · exact ⟨_, cell_4_17_ok⟩
    · exact ⟨_, cell_4_18_ok⟩
    · exact ⟨_, cell_4_19_ok⟩
    · exact ⟨_, cell_4_20_ok⟩
    · exact ⟨_, cell_4_21_ok⟩
    · exact ⟨_, cell_4_22_ok⟩
    · exact ⟨_, cell_4_23_ok⟩
    · exact ⟨_, cell_4_24_ok⟩
    · exact ⟨_, cell_4_25_ok⟩
    · exact ⟨_, cell_4_26_ok⟩
    · exact ⟨_, cell_4_27_ok⟩
    · exact ⟨_, cell_4_28_ok⟩
    · exact ⟨_, cell_4_29_ok⟩
    · exact ⟨_, cell_4_30_ok⟩
    · exact ⟨_, cell_4_31_ok⟩
    · exact ⟨_, cell_4_32_ok⟩
    · exact ⟨_, cell_4_33_ok⟩
    · exact ⟨_, cell_4_34_ok⟩
    · exact ⟨_, cell_4_35_ok⟩
    · exact ⟨_, cell_4_36_ok⟩
    · exact ⟨_, cell_4_37_ok⟩
    · exact ⟨_, cell_4_38_ok⟩
    · exact ⟨_, cell_4_39_ok⟩
    · exact ⟨_, cell_4_40_ok⟩
    · exact ⟨_, cell_4_41_ok⟩
    · exact ⟨_, cell_4_42_ok⟩
    · exact ⟨_, cell_4_43_ok⟩
    · exact ⟨_, cell_4_44_ok⟩
    · exact ⟨_, cell_4_45_ok⟩
    · exact ⟨_, cell_4_46_ok⟩
    · exact ⟨_, cell_4_47_ok⟩
    · exact ⟨_, cell_4_48_ok⟩
    · exact ⟨_, cell_4_49_ok⟩
    · exact ⟨_, cell_4_50_ok⟩
    · exact ⟨_, cell_4_51_ok⟩

end Heilbronn.Nine.SixBoundaryTwoTopTriangular.Model
