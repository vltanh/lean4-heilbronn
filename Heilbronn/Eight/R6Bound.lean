module

public import Heilbronn.Common.Families
public import Heilbronn.Eight.RadialCatalogue

/-! # A complete hand exclusion of radial class R6 (`hand/R6_BOUND.md`)

**Role.** Primary-route component: the R6 row of `EIGHT_BOUNDARY:Theorem13` (`EIGHT_BOUNDARY.md`
line 1033) and of the class table of `RADIAL_CATALOGUE.md`.

**Setting.** The eight-boundary normal form (`EightBoundary.EightAnchors`, `O` in the open square)
with the radial word of `O` with respect to the octagon `A, …, H` in class R6, representative
`(3,3,3,4,4,4,4,3)`, or any square-symmetry image of it (any word of the R6 orbit). The proof
fixes `s = 7/64`, `m = 7/50`, `q = 43/192 = 1/3 - s`, and uses only the boundary triangles
`ABH, AGH, GHF, GFE, ABC, DEF` and the radial signs `ADO, DHO, GOC, OCF > 0`, `AE, BF < 0`,
`BE > 0` of the representative; it bounds a four-variable domain `𝒟` (8) by monotonicity and
shows `max_𝒟 Φ = G(q,q) = s - 605/36864 < s`.

**Results.**
* `mainTheorem` (`R6_BOUND:Theorem`): every configuration in R6 has a triangle of area
  `< 7/128 < A₀`.

FLAG: the manuscript states the bound as "at most `7/128`" (line 15); its proof (lines 27–345)
assumes every area is at least `7/128` and derives a contradiction, which is the strict bound
stated here.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.R6Bound

open RadialCatalogue EightBoundary

/-- **Theorem** (`R6_BOUND:Theorem`). Every eight-boundary configuration whose radial word lies in
class R6 (the representative `(3,3,3,4,4,4,4,3)` or any of its square-symmetry images) has a
triangle of area strictly less than `7/128 < A₀`.
`hand/R6_BOUND.md`, lines 14–345.
Uses: RADIAL_CATALOGUE:claim-symmetry-action, RADIAL_CATALOGUE:claim-symmetry-relabel. -/
theorem mainTheorem {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O) {w : Word} (hw : IsRadialWord (octagon a b c d e f g h) O w)
    (hc : InClass .R6 w) :
    minTriangleArea (eightConfig a b c d e f g h O) < 7 / 128 := by
  sorry

end Heilbronn.R6Bound
