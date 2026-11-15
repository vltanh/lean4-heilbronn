module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting

/-! # Complete left-pair exclusion with seven boundary contacts (`hand/SEVEN_BOUNDARY_LEFT_PAIR.md`)

Primary route. Theorem 2 closes the placement in which both free points lie in the left pentagon
`ABCFH` (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 381-384). The single-point bounds of
Sections 1-2 (`claim_Q_ineq`, `claim_box`) are reused by `SEVEN_BOUNDARY_MIXED_PAIR.md`
Theorem 3 (lines 555-567) for the mixed left point.

**Setting** (lines 5-23). The normalized seven-boundary form `SevenNormal a h b c d e f`
(`0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e < 1`, `b ≤ f ≤ c`, `f ≤ 1/2`), free points `P, Q`,
`s = 7/64`, `L = h - a`, `M = c - b`, `R = e - d`, `α = s/M` (`alpha b c`). The standing
hypothesis is `7/128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)`; the one-point bounds of
Sections 1-2 use only the anchors and `Q` (`sevenConfig₁ … Q`).

Triangles are written with vertices in the counterclockwise heptagon order `A, B, C, D, E, F, H`
(so `HBC` is `InTriangle Q 𝐁 𝐂 𝐇`, `AHF` is `InTriangle Q 𝐀 𝐅 𝐇`). Local notation: `𝐀 = (0,a)`,
`𝐇 = (0,h)`, `𝐁 = (b,0)`, `𝐂 = (c,0)`, `𝐃 = (1,d)`, `𝐄 = (1,e)`, `𝐅 = (f,1)`.

**Definitions.** `InLeftPentagon` (strictly inside the pentagon `ABCFH`), `InQuadSector` (the open
diagonal sector of a convex quadrilateral at one of its edges), `alpha`.

**Results.**
* `claim_Q_ineq` (§1, (3), (5), (6)): the coupled inequality at a point `Q ∈ HBC ∩ AHF`.
* `claim_box` (§2, (7)): the rational box for the anchors forced by such a point.
* `claim_AEP` (§3, (12)): `[AEP] ≥ s` for `P ∈ HCF`.
* `claim_HDP_pos` (§4), `claim_HDP_neg` (§5): both signs of `[HDP]` are impossible.
* `theorem1`: the sector placement (`P` at `CF`, `Q` at `HB` above `AF`) gives an area `< 7/128`.
* `theorem2`: the left pentagon cannot contain both free points.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryLeftPair

open SevenBoundary

/-! ### Definitions -/

/-- `X` lies strictly inside the left pentagon `ABCFH` (counterclockwise) of the anchor heptagon:
strictly to the left of each of the directed edges `AB, BC, CF, FH, HA`. -/
def InLeftPentagon (a h b c f : ℝ) (X : Point) : Prop :=
  0 < sarea (0, a) (b, 0) X ∧ 0 < sarea (b, 0) (c, 0) X ∧ 0 < sarea (c, 0) (f, 1) X ∧
    0 < sarea (f, 1) (0, h) X ∧ 0 < sarea (0, h) (0, a) X

/-- `X` lies in the open sector at the edge `V₁V₂` of the convex counterclockwise quadrilateral
`V₁V₂V₃V₄`, cut out by its two diagonals: the intersection of the two triangles `V₁V₂V₃` and
`V₄V₁V₂` having `V₁V₂` as a side (`hand/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 25-27). -/
def InQuadSector (X V₁ V₂ V₃ V₄ : Point) : Prop :=
  InTriangle X V₁ V₂ V₃ ∧ InTriangle X V₄ V₁ V₂

/-- `α = s/M = (7/64)/(c - b)` (line 22). -/
def alpha (b c : ℝ) : ℝ := 7 / 64 / (c - b)

variable {a h b c d e f : ℝ} {P Q : Point}

-- The seven anchors as points.
local notation "𝐀" => ((0 : ℝ), a)
local notation "𝐇" => ((0 : ℝ), h)
local notation "𝐁" => (b, (0 : ℝ))
local notation "𝐂" => (c, (0 : ℝ))
local notation "𝐃" => ((1 : ℝ), d)
local notation "𝐄" => ((1 : ℝ), e)
local notation "𝐅" => (f, (1 : ℝ))

/-! ### One point in `HBC ∩ AHF` -/

/-- **Claim** (`SEVEN_BOUNDARY_LEFT_PAIR:claim-Q-ineq`). Equations (3), (5), (6): if a free point
`Q` lies in `HBC ∩ AHF`, then with `Y = h - 2α` and `T = Y - a`,
`T > 0`, `[b(1-a) + af] T ≥ s` (3), `fY - s > 0` and `T(fY - s) ≥ s` (5), and
`(h - 3α)((h - 2α)/2 - s) ≥ s` with both factors positive (6). Only `Q` and the seven anchors are
used. `hand/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 47-110.
Uses: standard fact: determinant identities. -/
theorem claim_Q_ineq (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Q))
    (hQ : InTriangle Q 𝐁 𝐂 𝐇 ∧ InTriangle Q 𝐀 𝐅 𝐇) :
    0 < h - 2 * alpha b c - a ∧
      7 / 64 ≤ (b * (1 - a) + a * f) * (h - 2 * alpha b c - a) ∧
      0 < f * (h - 2 * alpha b c) - 7 / 64 ∧
      7 / 64 ≤ (h - 2 * alpha b c - a) * (f * (h - 2 * alpha b c) - 7 / 64) ∧
      0 < h - 3 * alpha b c ∧ 0 < (h - 2 * alpha b c) / 2 - 7 / 64 ∧
      7 / 64 ≤ (h - 3 * alpha b c) * ((h - 2 * alpha b c) / 2 - 7 / 64) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_LEFT_PAIR:claim-box`). The rational box (7): if a free point `Q`
lies in `HBC ∩ AHF`, then `33/200 < α < 17/100`, `h > 99/100`, `f > 97/200`, `a < 3/16`,
`e < 633/800`, `4/25 < b < 3/16`, `4/5 < c < 53/64` and `d < 391/1600`. Only `Q` and the seven
anchors are used. `hand/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 112-330.
Uses: SEVEN_BOUNDARY_LEFT_PAIR:claim-Q-ineq. -/
theorem claim_box (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Q))
    (hQ : InTriangle Q 𝐁 𝐂 𝐇 ∧ InTriangle Q 𝐀 𝐅 𝐇) :
    33 / 200 < alpha b c ∧ alpha b c < 17 / 100 ∧ 99 / 100 < h ∧ 97 / 200 < f ∧ a < 3 / 16 ∧
      e < 633 / 800 ∧ 4 / 25 < b ∧ b < 3 / 16 ∧ 4 / 5 < c ∧ c < 53 / 64 ∧ d < 391 / 1600 := by
  sorry

/-! ### The point `P` -/

/-- **Claim** (`SEVEN_BOUNDARY_LEFT_PAIR:claim-AEP`). Equation (12): with `Q ∈ HBC ∩ AHF` and
`P ∈ HCF`, the point `P` is above `AE`: `[AEP] ≥ s`.
`hand/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 332-391.
Uses: SEVEN_BOUNDARY_LEFT_PAIR:claim-box, standard fact: barycentric coordinates. -/
theorem claim_AEP (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hQ : InTriangle Q 𝐁 𝐂 𝐇 ∧ InTriangle Q 𝐀 𝐅 𝐇) (hP : InTriangle P 𝐂 𝐅 𝐇) :
    7 / 64 ≤ sarea 𝐀 𝐄 P := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_LEFT_PAIR:claim-HDP+`). With `Q ∈ HBC ∩ AHF` and `P` in the sector
`HCF ∩ BCF`, the positive sign `[HDP] > 0` is impossible (it would force `[HDP] < 1283/12800 < s`).
`hand/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 393-434.
Uses: SEVEN_BOUNDARY_LEFT_PAIR:claim-box, standard fact: barycentric coordinates. -/
theorem claim_HDP_pos (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hQ : InTriangle Q 𝐁 𝐂 𝐇 ∧ InTriangle Q 𝐀 𝐅 𝐇)
    (hP : InTriangle P 𝐂 𝐅 𝐇 ∧ InTriangle P 𝐁 𝐂 𝐅) :
    ¬ 0 < sarea 𝐇 𝐃 P := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_LEFT_PAIR:claim-HDP-`). With `Q ∈ HBC ∩ AHF` and `P` in the sector
`HCF ∩ BCF`, the negative sign `[HDP] < 0` is impossible: `P` would lie in `HCD`, and (14)
`JL - s(J + 2L + J_E + R) ≥ 0` contradicts (15).
`hand/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 436-484.
Uses: SEVEN_BOUNDARY_LEFT_PAIR:claim-box, SEVEN_BOUNDARY_LEFT_PAIR:claim-AEP. -/
theorem claim_HDP_neg (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hQ : InTriangle Q 𝐁 𝐂 𝐇 ∧ InTriangle Q 𝐀 𝐅 𝐇)
    (hP : InTriangle P 𝐂 𝐅 𝐇 ∧ InTriangle P 𝐁 𝐂 𝐅) :
    ¬ sarea 𝐇 𝐃 P < 0 := by
  sorry

/-! ### The two theorems -/

/-- **Theorem 1** (`SEVEN_BOUNDARY_LEFT_PAIR:Theorem1`). Suppose `P` occupies the sector at `CF`
and `Q` the sector at `HB`, cut out by the diagonals of the quadrilateral `HBCF`, and `Q` is above
the line `AF`. Then some actual triangle has area strictly less than `7/128`.
`hand/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 25-45, 483-484.
Uses: SEVEN_BOUNDARY_LEFT_PAIR:claim-Q-ineq, SEVEN_BOUNDARY_LEFT_PAIR:claim-box,
SEVEN_BOUNDARY_LEFT_PAIR:claim-AEP, SEVEN_BOUNDARY_LEFT_PAIR:claim-HDP+,
SEVEN_BOUNDARY_LEFT_PAIR:claim-HDP-. -/
theorem theorem1 (hN : SevenNormal a h b c d e f)
    (hP : InQuadSector P 𝐂 𝐅 𝐇 𝐁) (hQ : InQuadSector Q 𝐇 𝐁 𝐂 𝐅) (hQAF : 0 < sarea 𝐀 𝐅 Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  sorry

/-- **Theorem 2** (`SEVEN_BOUNDARY_LEFT_PAIR:Theorem2`). Under the seven-boundary normalization,
the left pentagon `ABCFH` cannot contain both free points at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_LEFT_PAIR.md`, lines 486-505.
Uses: SEVEN_BOUNDARY_CAPS:Theorem1, SEVEN_BOUNDARY_CAPS:Theorem4,
SEVEN_BOUNDARY_CAPS:claim-left-pair-separation, SEVEN_BOUNDARY_CAPS:Theorem2,
QUADRILATERAL_HULL:Theorem4, SEVEN_BOUNDARY_CAPS:Theorem6, SEVEN_BOUNDARY_CAPS:Corollary7,
SEVEN_BOUNDARY_CAPS:Theorem5, SEVEN_BOUNDARY_LEFT_PAIR:Theorem1. -/
theorem theorem2 (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (InLeftPentagon a h b c f P ∧ InLeftPentagon a h b c f Q) := by
  sorry

end Heilbronn.SevenBoundaryLeftPair
