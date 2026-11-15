module

import Heilbronn
import Heilbronn.Common.Certificate

/-!
Dependency audit. Every line below must report exactly
`[propext, Classical.choice, Quot.sound]`, the three standard axioms: an
unproved lemma would add `sorryAx`, and a proof by `native_decide`, which
trusts the compiler, would add `Lean.ofReduceBool`.
-/

-- The main theorems.
#print axioms Heilbronn.heilbronn_nine_isGreatest
#print axioms Heilbronn.heilbronn_nine
#print axioms Heilbronn.heilbronn_nine_optimal

-- The construction and the certificate checker.
#print axioms Heilbronn.minTriangleArea_optimalConfiguration
#print axioms Heilbronn.Cert.check_sound
