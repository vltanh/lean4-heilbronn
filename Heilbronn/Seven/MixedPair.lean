module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting
public import Heilbronn.Seven.LeftPair
public import Heilbronn.Seven.RightPair

/-! # Mixed-pair cells with seven boundary contacts (`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`)

Primary route, as a component of the two mixed branches: Theorem 3 (`P ∈ ACF`) and the
capacity-one Theorems 4-5 and the common-cell Theorem 1 are the `V` and `M` tests of
`SEVEN_BOUNDARY_MIXED_LOWER.md` (lines 180-185) and `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`
(lines 218-235); the anchor-only bounds (25), (26) are its `A` tests.

**Setting** (lines 3-24). The normalized seven-boundary form `SevenNormal a h b c d e f`
(`0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e < 1`, `b ≤ f ≤ c`, `f ≤ 1/2`), free points `P, Q`,
`s = 7/64`, `K = 4 + 2√3`, `ρ = 13/16 < Ks`; the standing hypothesis is
`7/128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)` (or the seven-anchor configuration for
the anchor-only bounds (1), (25), (26)). The *mixed placement* (lines 299-300) has `P` in the left
pentagon `ABCFH` and `Q` in the right quadrilateral `CDEF` (`MixedPlacement`).

Triangles are written with vertices in the counterclockwise heptagon order `A, B, C, D, E, F, H`
(so `HBE` is `𝐁 𝐄 𝐇`, `AHD` is `𝐀 𝐃 𝐇`, `HDE` is `𝐃 𝐄 𝐇`). Local notation: `𝐀 = (0,a)`,
`𝐇 = (0,h)`, `𝐁 = (b,0)`, `𝐂 = (c,0)`, `𝐃 = (1,d)`, `𝐄 = (1,e)`, `𝐅 = (f,1)`. Sides of lines:
"below `HC`" is `0 < sarea 𝐂 𝐇 X`, "above `HC`" is `0 < sarea 𝐇 𝐂 X`, "below `HE`" is
`0 < sarea 𝐄 𝐇 X`, "above `BE`" is `0 < sarea 𝐁 𝐄 X`, "on the `C`-side of `BF`" is
`0 < sarea 𝐅 𝐁 X`.

**Definitions.** `BothInTriangle` (both free points strictly inside one triangle),
`MixedPlacement`.

**Results.**
* `claim_budget` (1): the anchor budgets and `b > 1/8`.
* `theorem1`: the two free points are not both in `HBE ∩ BEF`.
* `claim_lowerHE` (§2): in the mixed placement with `P` below `HC`, `P ∈ AHC ∩ HBC`,
  `hc ≥ s/(3 - 2√2) > 7/11`, `h > 448/627`, both points are below `HE`, and if both are above `BE`
  with `P` on the `C`-side of `BF`, both lie in `HBE ∩ BEF`.
* `theorem2`: the two free points are not both in `ACE ∩ ADE` (without `f ≤ 1/2`).
* `theorem3`: in the mixed placement, `P ∈ ACF`.
* `theorem4`: `ADE` and `AHD` have capacity one (without `f ≤ 1/2`); with `f ≤ 1/2`, so has `AHE`.
* `claim_AEF` (25): `[AEF] < 1 - 2s < Ks`.
* `theorem5`: `HDE` has capacity one.
* `claim_HDF` (26): `[HDF] ≤ 1 - s(1/M + (1 - f)/b) < 1 - 2s`.

Notes. Theorem 2 (and hence 4(a), 4(b)) is stated without `f ≤ 1/2`, as the manuscript asserts
at lines 633-637; 4(b) is the horizontal reflection of 4(a), which changes `f` into `1 - f`.
Theorems 4(c) and 5 invoke the complete left- and right-pair theorems only to reach the mixed
placement (lines 666-672, 694-696).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryMixedPair

open SevenBoundary SevenBoundaryLeftPair SevenBoundaryRightPair

/-! ### Definitions -/

/-- Both free points `P, Q` lie strictly inside the counterclockwise triangle `XYZ`. -/
def BothInTriangle (P Q X Y Z : Point) : Prop :=
  InTriangle P X Y Z ∧ InTriangle Q X Y Z

/-- The mixed placement (`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 299-300): `P` lies strictly
inside the left pentagon `ABCFH` and `Q` strictly inside the right quadrilateral `CDEF`. -/
def MixedPlacement (a h b c d e f : ℝ) (P Q : Point) : Prop :=
  InLeftPentagon a h b c f P ∧ InRightQuad c d e f Q

variable {a h b c d e f : ℝ} {P Q : Point}

-- The seven anchors as points.
local notation "𝐀" => ((0 : ℝ), a)
local notation "𝐇" => ((0 : ℝ), h)
local notation "𝐁" => (b, (0 : ℝ))
local notation "𝐂" => (c, (0 : ℝ))
local notation "𝐃" => ((1 : ℝ), d)
local notation "𝐄" => ((1 : ℝ), e)
local notation "𝐅" => (f, (1 : ℝ))

/-! ### The anchor budgets -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_PAIR:claim-budget`). The anchor inequalities (1), from the
triangles `ABC, ABH, BCD, CDE, HEF`: with `M = c - b`, `w = 1 - c`,
`h ≥ s/M + s/b`, `e ≥ s/M + s/w`, `(1 - f)h + fe ≤ 1 - s`; and `b > 1/8`.
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 33-45. -/
theorem claim_budget (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    7 / 64 / (c - b) + 7 / 64 / b ≤ h ∧ 7 / 64 / (c - b) + 7 / 64 / (1 - c) ≤ e ∧
      (1 - f) * h + f * e ≤ 1 - 7 / 64 ∧ 1 / 8 < b := by
  sorry

/-! ### Section 1: the common cell `HBE ∩ BEF` -/

/-- **Theorem 1** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem1`). The two free points cannot both belong
to `HBE ∩ BEF` (for every sign of the line `PQ`).
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 47-295.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, ONE_CORNER_COMPLETION:claim-general-identities,
SEVEN_BOUNDARY_MIXED_PAIR:claim-budget, standard fact: Cauchy-Schwarz (Engel form). -/
theorem theorem1 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (BothInTriangle P Q 𝐁 𝐄 𝐇 ∧ BothInTriangle P Q 𝐁 𝐄 𝐅) := by
  sorry

/-! ### Section 2: the mixed left point below `HC` -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_PAIR:claim-lowerHE`). In the mixed placement with
`P ∈ ABCFH`, `Q ∈ CEF` and `P` below `HC`: `P ∈ AHC ∩ HBC` (empty ears `ABC, ABH`),
`hc ≥ s/(3 - 2√2) > 7/11` (the five actual points `H, C, A, B, P` in the virtual triangle with
vertices `(0,0), H, C`), `h > 448/627`, and both `P, Q` are below `HE`. If moreover both are above
`BE` and `P` is on the `C`-side of `BF`, both lie in `HBE ∩ BEF` (excluded by Theorem 1).
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 297-342.
Uses: SEVEN_BOUNDARY_CAPS:Theorem1, SEVEN_BOUNDARY_CAPS:Theorem4, TYPE_II:EndpointTriangleTheorem,
SEVEN_BOUNDARY_MIXED_PAIR:claim-budget. -/
theorem claim_lowerHE (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InLeftPentagon a h b c f P) (hQ : InTriangle Q 𝐂 𝐄 𝐅) (hPHC : 0 < sarea 𝐂 𝐇 P) :
    InTriangle P 𝐀 𝐂 𝐇 ∧ InTriangle P 𝐁 𝐂 𝐇 ∧ 7 / 64 / (3 - 2 * Real.sqrt 2) ≤ h * c ∧
      7 / 11 < h * c ∧ 448 / 627 < h ∧ 0 < sarea 𝐄 𝐇 P ∧ 0 < sarea 𝐄 𝐇 Q ∧
      (0 < sarea 𝐁 𝐄 P → 0 < sarea 𝐁 𝐄 Q → 0 < sarea 𝐅 𝐁 P →
        BothInTriangle P Q 𝐁 𝐄 𝐇 ∧ BothInTriangle P Q 𝐁 𝐄 𝐅) := by
  sorry

/-! ### Section 3: the common cell `ACE ∩ ADE` -/

-- FLAG: stated under `SevenAnchors` (without `f ≤ 1/2`), wider than the note's standing setting
-- (lines 13-14), as lines 633-637 assert; Theorem 4(b) applies it to the reflection `f ↦ 1 - f`.
/-- **Theorem 2** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem2`). The two free points cannot both belong
to `ACE ∩ ADE` (for every sign of the line `PQ`). Stated without `f ≤ 1/2`: the proof uses only
`b ≤ f`, `c < 1 - s` and `0 < f < 1` (lines 633-637).
Note: the bound `[ACD] < 3/16 + (3/8)(23/84)` at lines 396-400 uses an unjustified factor `3/8`
(only `a < 9/16` is available); the conclusion `[ACD] < 3s` still holds, e.g. from
`[ACD] = d + w(a - d)` and `d > 1/7` (inventory gap G1). The statement is unaffected.
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 344-543.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, ONE_CORNER_COMPLETION:claim-general-identities,
SEVEN_BOUNDARY_MIXED_PAIR:claim-budget. -/
theorem theorem2 (hN : SevenAnchors a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (BothInTriangle P Q 𝐀 𝐂 𝐄 ∧ BothInTriangle P Q 𝐀 𝐃 𝐄) := by
  sorry

/-! ### Section 4: the mixed left point is below `AF` -/

/-- **Theorem 3** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem3`). In the mixed left/right placement, the
left point `P` belongs to `ACF`.
Note: lines 597-599 cite "Theorem 7 of SEVEN_BOUNDARY_CAPS.md" for the empty overlap
`HCF ∩ AHF`; it is Theorem 6 there (inventory gap G2).
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 546-606.
Uses: SEVEN_BOUNDARY_CAPS:Theorem8, SEVEN_BOUNDARY_CAPS:Theorem1,
SEVEN_BOUNDARY_LEFT_PAIR:claim-Q-ineq, SEVEN_BOUNDARY_LEFT_PAIR:claim-box,
SEVEN_BOUNDARY_CAPS:Theorem6, SEVEN_BOUNDARY_CAPS:Theorem4. -/
theorem theorem3 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hPQ : MixedPlacement a h b c d e f P Q) :
    InTriangle P 𝐀 𝐂 𝐅 := by
  sorry

/-! ### Section 5: three vertical triangles -/

/-- **Theorem 4** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem4`). Neither `ADE` nor `AHD` can contain both
free points; these two assertions need only `b ≤ f ≤ c`, not `f ≤ 1/2`. Under the full
normalization `f ≤ 1/2`, the triangle `AHE` also cannot contain both free points.
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 609-681.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:Theorem2, CORNER_FAMILIES:TwoInteriorPointLemma,
SEVEN_BOUNDARY_MIXED_PAIR:claim-AEF, SEVEN_BOUNDARY_LEFT_PAIR:Theorem2,
SEVEN_BOUNDARY_RIGHT_PAIR:Theorem, SEVEN_BOUNDARY_MIXED_PAIR:Theorem3,
SEVEN_BOUNDARY_CAPS:Theorem8. -/
theorem theorem4 (hN : SevenAnchors a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ BothInTriangle P Q 𝐀 𝐃 𝐄 ∧ ¬ BothInTriangle P Q 𝐀 𝐃 𝐇 ∧
      (f ≤ 1 / 2 → ¬ BothInTriangle P Q 𝐀 𝐄 𝐇) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_PAIR:claim-AEF`). Equation (25), an anchor-only comparison:
`[AEF] < 1 - 2s = 25/32 < Ks`, so `AEF` cannot contain both free points.
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 641-664.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:claim-budget, standard fact: Cauchy-Schwarz (Engel form). -/
theorem claim_AEF (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    sarea 𝐀 𝐄 𝐅 < 1 - 2 * (7 / 64) ∧ 1 - 2 * (7 / 64) < (4 + 2 * Real.sqrt 3) * (7 / 64) := by
  sorry

/-! ### Section 6: the vertical triangle `HDE` -/

/-- **Theorem 5** (`SEVEN_BOUNDARY_MIXED_PAIR:Theorem5`). Under the full seven-boundary
normalization, `HDE` cannot contain both free points. (With Theorem 4, all four triangles cut out
by the diagonals of `ADEH` have capacity one.)
`hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 684-1071.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:claim-HDF, SEVEN_BOUNDARY_LEFT_PAIR:Theorem2,
SEVEN_BOUNDARY_RIGHT_PAIR:Theorem, SEVEN_BOUNDARY_MIXED_PAIR:Theorem3, SEVEN_BOUNDARY_CAPS:Theorem8,
CORNER_FAMILIES:TwoInteriorPointLemma, ONE_CORNER_COMPLETION:claim-general-identities,
SEVEN_BOUNDARY_RIGHT_PAIR:claim-CEsame, standard fact: Bernstein basis nonnegativity. -/
theorem theorem5 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ BothInTriangle P Q 𝐃 𝐄 𝐇 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_PAIR:claim-HDF`). Equation (26), an anchor-only comparison:
`[HDF] = 1 - (1 - f)h - fd ≤ 1 - s{1/(c - b) + (1 - f)/b} < 1 - 2s < Ks`, so `HDF` cannot contain
both free points. `hand/SEVEN_BOUNDARY_MIXED_PAIR.md`, lines 701-713.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:claim-budget, standard fact: Cauchy-Schwarz (Engel form). -/
theorem claim_HDF (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    sarea 𝐃 𝐅 𝐇 ≤ 1 - 7 / 64 * (1 / (c - b) + (1 - f) / b) ∧ sarea 𝐃 𝐅 𝐇 < 1 - 2 * (7 / 64) := by
  sorry

end Heilbronn.SevenBoundaryMixedPair
