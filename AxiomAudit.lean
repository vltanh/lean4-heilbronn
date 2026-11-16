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
#print axioms Heilbronn.Nine.HandProof.theorem1
#print axioms Heilbronn.Nine.HandProof.theorem2
#print axioms Heilbronn.Nine.GlobalStructure.theorem3
#print axioms Heilbronn.Nine.OppositeCorners.corollary2_lt_A₀
#print axioms Heilbronn.Nine.CornerFamilies.typeIII_lt_A₀
#print axioms Heilbronn.Nine.UnbalancedFinalLowerWedge.typeII_exclusion
#print axioms Heilbronn.Nine.C1ZeroLower.theorem4
#print axioms Heilbronn.Nine.C1OneLowerMixedCaps.theorem2
#print axioms Heilbronn.Nine.C1TwoLowerCompletion.theorem2
#print axioms Heilbronn.Nine.EightBoundary.theorem13
#print axioms Heilbronn.Nine.SevenBoundaryMixedAboveCompletion.theorem2_nConfig
#print axioms Heilbronn.Nine.SixBoundaryHull.theorem7
#print axioms Heilbronn.Nine.SixBoundarySingleSide.n6_01
#print axioms Heilbronn.Nine.SixBoundaryTwoSideUpper.n6_02
#print axioms Heilbronn.Nine.SixBoundarySingleTop.theorem1
#print axioms Heilbronn.Nine.SixBoundarySideOpposite.theorem1
#print axioms Heilbronn.Nine.SixBoundaryThreeCaps.three_caps
#print axioms Heilbronn.Nine.SixBoundaryTwoTopCompletion.theorem1
#print axioms Heilbronn.Nine.SixBoundarySideTwoTop.theorem1
#print axioms Heilbronn.Nine.SixBoundaryOppositeCapCompletion.n6_08
#print axioms Heilbronn.Nine.maximizer_congruent
