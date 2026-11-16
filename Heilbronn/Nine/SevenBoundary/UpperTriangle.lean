module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.Setting

/-! # The upper triangle is empty with seven boundary contacts (`docs/proof/nine/SEVEN_BOUNDARY_UPPER_TRIANGLE.md`)

In the hand proof, Theorem 1 of this note (no further actual point in `HEF`) puts both mixed free
points below `HE` (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 25-34, 389-390).

**Status.** Not stated separately. The case of two free points strictly inside the anchor
heptagon is proved by one certificate cover over pairs of ray words
(`Heilbronn.Nine.SevenInterior.interior_false`, used by
`SevenBoundaryMixedAboveCompletion.claim_interior`); there a point whose word lies in `HEF` is
excluded by its own kernel-checked single-point tree (`Model.badKind = 5`, the four words of
`HEF` outside `AHF ∩ HCF`), which replaces the fan argument of §§1-5 (the outer sectors, the
bound `τ < 2/5`, the sectors `ABF`, `BCF`, `CDF`).
-/
