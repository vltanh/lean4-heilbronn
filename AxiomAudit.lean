module

import Heilbronn
import Heilbronn.Common.Certificate
import Heilbronn.Common.Bernstein
import Heilbronn.Common.Cover

/-!
Dependency audit. Every line below must report exactly
`[propext, Classical.choice, Quot.sound]`, the three standard axioms: an
unproved lemma would add `sorryAx`, and a proof by `native_decide`, which
trusts the compiler, would add `Lean.ofReduceBool`.
-/

-- The theorems of each case, which its Palomar entry states.
#print axioms Heilbronn.Nine.optimal_value
#print axioms Heilbronn.Nine.heilbronn_number
#print axioms Heilbronn.Nine.optimal_configurations

-- The shared tools: the generic optimum and the certificate checkers.
#print axioms Heilbronn.Optimum.isGreatest
#print axioms Heilbronn.Optimum.iff
#print axioms Heilbronn.Cert.check_sound
#print axioms Heilbronn.Cert.bernsteinBoxCheck_sound
#print axioms Heilbronn.Cover.checkTree_sound

-- Nine points: the construction, the normalization, and the family theorems.
#print axioms Heilbronn.Nine.minTriangleArea_optimalConfiguration
#print axioms Heilbronn.Nine.Chamber.chamber_le
#print axioms Heilbronn.Nine.Chamber.strict_local_max
#print axioms Heilbronn.Nine.GlobalStructure.normalize
#print axioms Heilbronn.Nine.OppositeCorners.minTriangleArea_c2Config_lt_A₀
#print axioms Heilbronn.Nine.CornerFamilies.typeIII_lt_A₀
#print axioms Heilbronn.Nine.UnbalancedFinalLowerWedge.typeII_exclusion
#print axioms Heilbronn.Nine.C1ZeroLower.lowerCount_eq_zero_false
#print axioms Heilbronn.Nine.C1OneLowerMixedCaps.lowerCount_eq_one_false
#print axioms Heilbronn.Nine.C1TwoLowerCompletion.lowerCount_eq_two_false
#print axioms Heilbronn.Nine.EightBoundary.minTriangleArea_le_A₀_of_eight_boundary
#print axioms Heilbronn.Nine.SevenBoundaryMixedAboveCompletion.minTriangleArea_nConfig_lt_A₀
#print axioms Heilbronn.Nine.SixBoundaryHull.false_of_all_inHexagon
#print axioms Heilbronn.Nine.SixBoundarySingleSide.singleSide_false_of_A₀_le
#print axioms Heilbronn.Nine.SixBoundaryTwoSideUpper.twoSide_isOptimal_of_A₀_le
#print axioms Heilbronn.Nine.SixBoundarySingleTop.singleTop_lt
#print axioms Heilbronn.Nine.SixBoundarySideOpposite.sideOpposite_le_A₀
#print axioms Heilbronn.Nine.SixBoundaryThreeCaps.three_caps
#print axioms Heilbronn.Nine.SixBoundaryTwoTopCompletion.twoTop_le_A₀
#print axioms Heilbronn.Nine.SixBoundarySideTwoTop.sideTwoTop_lt
#print axioms Heilbronn.Nine.SixBoundaryOppositeCapCompletion.oppositeCap_isOptimal_of_A₀_le
#print axioms Heilbronn.Nine.maximizer_congruent
