module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting

/-! # Mixed placements above the left diagonal (`hand/SEVEN_BOUNDARY_MIXED_ABOVE.md`)

Primary route, as a component: Theorem 1 is the "crossed-cell theorem" used for the three `C`
entries of the coverage table of `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (lines 229-232, 334).

**Setting** (lines 3-14). The seven anchors `A = (0,a)`, `H = (0,h)`, `B = (b,0)`, `C = (c,0)`,
`D = (1,d)`, `E = (1,e)`, `F = (f,1)` with `0 < a < h ≤ 1`, `0 < b < c < 1`, `0 < d < e ≤ 1`,
`b ≤ f ≤ c` (`SevenAnchorsClosed a h b c d e f`: both upper heights may equal one, and `f ≤ 1/2`
is not needed). Free points `P, Q`; `s = 7/64`; the standing hypothesis is
`7/128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)`.

Triangles are written with vertices in the counterclockwise heptagon order `A, B, C, D, E, F, H`
(so `HCF` is `InTriangle P 𝐂 𝐅 𝐇`, `AHE` is `InTriangle Q 𝐀 𝐄 𝐇`). Local notation: `𝐀 = (0,a)`,
`𝐇 = (0,h)`, `𝐁 = (b,0)`, `𝐂 = (c,0)`, `𝐃 = (1,d)`, `𝐄 = (1,e)`, `𝐅 = (f,1)`.

**Results.**
* `theorem1`: there are no actual points with `P ∈ HCF`, `[BEP] < 0`, `Q ∈ AHE ∩ DEF`, for any
  sign of the line `PQ`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryMixedAbove

open SevenBoundary

variable {a h b c d e f : ℝ} {P Q : Point}

-- The seven anchors as points.
local notation "𝐀" => ((0 : ℝ), a)
local notation "𝐇" => ((0 : ℝ), h)
local notation "𝐁" => (b, (0 : ℝ))
local notation "𝐂" => (c, (0 : ℝ))
local notation "𝐃" => ((1 : ℝ), d)
local notation "𝐄" => ((1 : ℝ), e)
local notation "𝐅" => (f, (1 : ℝ))

/-- **Theorem 1** (`SEVEN_BOUNDARY_MIXED_ABOVE:Theorem1`). There cannot be actual points `P, Q`
with `P ∈ HCF`, `[BEP] < 0` and `Q ∈ AHE ∩ DEF` (1); no sign of the line `PQ` is prescribed.
Only `b ≤ f ≤ c` is used (not `f ≤ 1/2`), and `h = 1`, `e = 1` are allowed.
`hand/SEVEN_BOUNDARY_MIXED_ABOVE.md`, lines 16-190.
Uses: standard fact: barycentric coordinates, standard fact: intermediate value theorem. -/
theorem theorem1 (hN : SevenAnchorsClosed a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (InTriangle P 𝐂 𝐅 𝐇 ∧ sarea 𝐁 𝐄 P < 0 ∧ InTriangle Q 𝐀 𝐄 𝐇 ∧ InTriangle Q 𝐃 𝐄 𝐅) := by
  sorry

end Heilbronn.SevenBoundaryMixedAbove
