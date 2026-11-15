module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting

/-! # The upper triangle is empty with seven boundary contacts (`hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md`)

Primary route. In the mixed seven-boundary placement (one free point in the left pentagon
`ABCFH`, the other in the right quadrilateral `CDEF`), Theorem 1 puts both free points below `HE`
(`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 25-34, 389-390;
`SEVEN_BOUNDARY_MIXED_LOWER.md` lines 29-32).

**Setting** (lines 3-18). The seven anchors `A = (0,a)`, `H = (0,h)`, `B = (b,0)`, `C = (c,0)`,
`D = (1,d)`, `E = (1,e)`, `F = (f,1)` with `0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e ≤ 1`,
`b ≤ f ≤ c`, `f ≤ 1/2` (written `SevenAnchorsClosed a h b c d e f ∧ h < 1 ∧ f ≤ 1/2`; the endpoint
`e = 1` is allowed, lines 29-32). Every result here involves only the seven anchors and the one
point `Y` being excluded (lines 23-24), so the standing hypothesis "every actual doubled area is at
least `s = 7/64`" is `7/128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Y)` (eight points), or,
for the anchor-only bound (6), the seven-anchor configuration.

Triangles are written with their vertices in the counterclockwise heptagon order
`A, B, C, D, E, F, H` (so `HEF` is `InTriangle Y 𝐄 𝐅 𝐇`). Local notation: `𝐀 = (0,a)`, `𝐇 = (0,h)`,
`𝐁 = (b,0)`, `𝐂 = (c,0)`, `𝐃 = (1,d)`, `𝐄 = (1,e)`, `𝐅 = (f,1)`.

**Results.**
* `claim_outer` (§1): no actual point in `HEF ∩ DEF`, nor (by the reflection `x ↦ 1 - x`) in
  `HEF ∩ AHF`; without `f ≤ 1/2`, and allowing `h = 1` as well as `e = 1`.
* `claim_tau` (6): `τ = [HEF] < 2/5`.
* `claim_ABF`, `claim_BCF`, `claim_CDF` (§§3-5): no actual point in `HEF ∩ ABF`, `HEF ∩ BCF`,
  `HEF ∩ CDF`.
* `theorem1`: no further actual point lies in `HEF` (the fan from `F` partitions the heptagon
  into `AHF, ABF, BCF, CDF, DEF`, lines 53-57).

Implicit in the manuscript: the outer-sector claim is used through its reflection, which needs the
`DEF` statement with `h ≤ 1` (the reflected height `h' = e` may be `1`); lines 29-32 assert this,
and `claim_outer` is stated under `SevenAnchorsClosed` (both `h ≤ 1` and `e ≤ 1`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryUpperTriangle

open SevenBoundary

variable {a h b c d e f : ℝ} {Y : Point}

-- The seven anchors as points.
local notation "𝐀" => ((0 : ℝ), a)
local notation "𝐇" => ((0 : ℝ), h)
local notation "𝐁" => (b, (0 : ℝ))
local notation "𝐂" => (c, (0 : ℝ))
local notation "𝐃" => ((1 : ℝ), d)
local notation "𝐄" => ((1 : ℝ), e)
local notation "𝐅" => (f, (1 : ℝ))

-- FLAG: stated under `SevenAnchorsClosed` (`h ≤ 1` and `e ≤ 1`, no `f ≤ 1/2`), wider than the
-- printed setting `h < 1` (line 10): the reflection used for `HEF ∩ AHF` needs the `DEF` case with
-- the reflected height `h' = e` possibly `1`, as lines 29-32 assert.
/-- **Claim** (`SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-outer`). The two outer fan sectors of `HEF`
are empty: no actual point lies in `HEF ∩ DEF`, and (by the horizontal reflection, which keeps
`b ≤ f ≤ c` and exchanges `H, E`) none lies in `HEF ∩ AHF`. Only `b ≤ f ≤ c` is used, not
`f ≤ 1/2`; both upper heights may equal one (lines 29-32).
`hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md`, lines 59-181.
Uses: standard fact: barycentric coordinates and the diagonal-sector inequality (2);
standard fact: Bernstein basis nonnegativity. -/
theorem claim_outer (hN : SevenAnchorsClosed a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Y)) :
    ¬ (InTriangle Y 𝐄 𝐅 𝐇 ∧ InTriangle Y 𝐃 𝐄 𝐅) ∧
      ¬ (InTriangle Y 𝐄 𝐅 𝐇 ∧ InTriangle Y 𝐀 𝐅 𝐇) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-tau`). Equation (6): the top area satisfies
`τ = [HEF] = 1 - (1 - f)h - fe < 2/5`; only the anchor triangles are used.
`hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md`, lines 183-219.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:claim-budget, standard fact: Cauchy-Schwarz (Engel form). -/
theorem claim_tau (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    sarea 𝐄 𝐅 𝐇 < 2 / 5 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-ABF`). No actual point lies in `HEF ∩ ABF`.
`hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md`, lines 221-254.
Uses: SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-tau. -/
theorem claim_ABF (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Y)) :
    ¬ (InTriangle Y 𝐄 𝐅 𝐇 ∧ InTriangle Y 𝐀 𝐁 𝐅) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-BCF`). No actual point lies in `HEF ∩ BCF`.
`hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md`, lines 256-322.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:claim-budget, standard fact: Bernstein basis nonnegativity. -/
theorem claim_BCF (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Y)) :
    ¬ (InTriangle Y 𝐄 𝐅 𝐇 ∧ InTriangle Y 𝐁 𝐂 𝐅) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-CDF`). No actual point lies in `HEF ∩ CDF`
(both height orders `e ≥ h` and `e < h`).
`hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md`, lines 324-478.
Uses: standard fact: Cauchy-Schwarz (Engel form), standard fact: Bernstein basis nonnegativity. -/
theorem claim_CDF (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Y)) :
    ¬ (InTriangle Y 𝐄 𝐅 𝐇 ∧ InTriangle Y 𝐂 𝐃 𝐅) := by
  sorry

/-- **Theorem 1** (`SEVEN_BOUNDARY_UPPER_TRIANGLE:Theorem1`). No further actual configuration
point belongs to the triangle `HEF`. The endpoint `e = 1` is included; only the seven anchors and
the excluded point are used.
`hand/SEVEN_BOUNDARY_UPPER_TRIANGLE.md`, lines 20-32, 53-57, 480-484.
Uses: SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-outer, SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-ABF,
SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-BCF, SEVEN_BOUNDARY_UPPER_TRIANGLE:claim-CDF. -/
theorem theorem1 (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Y)) :
    ¬ InTriangle Y 𝐄 𝐅 𝐇 := by
  sorry

end Heilbronn.SevenBoundaryUpperTriangle
