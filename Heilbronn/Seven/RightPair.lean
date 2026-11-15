module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting

/-! # The complete right-hand pair with seven boundary contacts (`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`)

Primary route. The Theorem closes the placement in which both free points lie in the right
quadrilateral `CDEF` (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 385-388). Its Section 3
endpoint values are reused by `SEVEN_BOUNDARY_MIXED_PAIR.md` Theorem 5 (lines 756-761).

**Setting** (lines 3-17). The normalized seven-boundary form `SevenNormal a h b c d e f`, free
points `P, Q`, `s = 7/64`, `K = 4 + 2√3`, `ρ = 13/16 < Ks`; the standing hypothesis is
`7/128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)`. After Theorems 8-9 of
`SEVEN_BOUNDARY_CAPS.md` the two points are named so that (1) `P ∈ CEF ∩ DEF`, `Q ∈ CEF ∩ CDF`
(lines 26-31); every claim below assumes (1). Area parameters (lines 37-53):
`M = c - b`, `w = 1 - c`, `𝒜 = [HCE] = h(1-c) + ce`, `ℬ = [CEF] = 1 - c + e(c - f)`,
`𝒥 = [HCEF] = 1 + (e - h)(c - f) = 𝒜 + [HEF]`, and `v = min([CEP], [CEQ])` (line 187; local
notation `𝐯`).

Triangles are written with vertices in the counterclockwise heptagon order `A, B, C, D, E, F, H`
(so `HCE` is `InTriangle P 𝐂 𝐄 𝐇` and `𝒜` is `sarea 𝐂 𝐄 𝐇`). Local notation: `𝐀 = (0,a)`,
`𝐇 = (0,h)`, `𝐁 = (b,0)`, `𝐂 = (c,0)`, `𝐃 = (1,d)`, `𝐄 = (1,e)`, `𝐅 = (f,1)`.

**Definitions.** `InRightQuad` (strictly inside `CDEF`); `sameSideF` (the function `F` of (13));
the relaxed parameters of (22) (`relaxH`, `relaxA`, `relaxB`, `relaxT`, `relaxW`, `relaxG`,
`relaxL`); `concaveH` (the function `H` of (25)).

**Results.**
* `claim_initial` (3)-(5): `f < 3/16`, `hc ≥ 4s`, `c ≥ 4s`, `e > 1 - s`, `h < 1 - s`, `h > d`,
  `h - d > 19/156`, `b > 1/7`.
* `claim_HEF` (6)-(7): `[HEF] < 3s`, `P, Q ∈ HCE ∩ CEF`, `ρ < 𝒜 ≤ 1`, `ρ < ℬ < 6/7`,
  `𝒥 ≥ 𝒜 + s`.
* `claim_HFP` (8): `|[HFP]| < 3s`.
* `claim_CEsame` (§3): the line `PQ` does not separate `C, E`.
* `claim_sameside` (12)-(13): `𝓕 ≥ 0`, `v > s`, `F(𝒜, ℬ, v) ≥ 0`.
* `claim_b` (14)-(15): `3/20 < b < 1/6`.  `claim_v` (17): `1/4 < v < 1/3`.
* `claim_G` (18)-(21): `[HDF] < 3s`, `Q ∈ HCD`, `𝓖 ≥ 0`, `h - s/M - s/b ≥ 0`.
* `claim_relax` (22): the relaxed inequalities after the three monotone replacements.
* `claim_comb` (23)-(24): `H(1 - b, 1 - c, v) ≥ 0`.
* `claim_concave` (§8): `H < 0` on the rectangle `[5/6,17/20] × [7/64,11/30] × [1/4,1/3]`.
* `mainTheorem`: the two free points cannot both lie in `CDEF`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryRightPair

open SevenBoundary

/-! ### Definitions -/

/-- `X` lies strictly inside the right quadrilateral `CDEF` (counterclockwise) of the anchor
heptagon: strictly to the left of each of the directed edges `CD, DE, EF, FC`. -/
def InRightQuad (c d e f : ℝ) (X : Point) : Prop :=
  0 < sarea (c, 0) (1, d) X ∧ 0 < sarea (1, d) (1, e) X ∧ 0 < sarea (1, e) (f, 1) X ∧
    0 < sarea (f, 1) (c, 0) X

/-- The weaker same-side expression (13):
`F(𝒜, ℬ, v) = 𝒜ℬ(v - s) - sv(𝒜 + ℬ) - (𝒜 + s)v²`, with `s = 7/64`. -/
def sameSideF (A B v : ℝ) : ℝ :=
  A * B * (v - 7 / 64) - 7 / 64 * v * (A + B) - (A + 7 / 64) * v ^ 2

/-- The relaxed height `h = (1 - s - be)/(1 - b)` of (22) (top budget `[HEF] = s` at `f = b`). -/
def relaxH (b e : ℝ) : ℝ := (1 - 7 / 64 - b * e) / (1 - b)

/-- The relaxed `𝒜 = hw + ce` of (22), with `w = 1 - c` and the relaxed height. -/
def relaxA (b c e : ℝ) : ℝ := relaxH b e * (1 - c) + c * e

/-- The relaxed `ℬ = w + e(c - b)` of (22). -/
def relaxB (b c e : ℝ) : ℝ := (1 - c) + e * (c - b)

/-- The relaxed `T = [HCD] = 𝒜 - cs/w` of (22) (at `d = e - s/w`). -/
def relaxT (b c e : ℝ) : ℝ := relaxA b c e - c * (7 / 64) / (1 - c)

/-- The relaxed `W = [HCDF] = 𝒥 - s(c - b)/w` of (22), with `𝒥 = 𝒜 + s`. -/
def relaxW (b c e : ℝ) : ℝ := relaxA b c e + 7 / 64 - 7 / 64 * (c - b) / (1 - c)

/-- The relaxed second inequality `G = ℬ(T - s) - s(𝒜 + r) - Wv` of (20), (22), with `r = s`. -/
def relaxG (b c e v : ℝ) : ℝ :=
  relaxB b c e * (relaxT b c e - 7 / 64) - 7 / 64 * (relaxA b c e + 7 / 64) - relaxW b c e * v

/-- The relaxed anchor budget `L = h - s/(c - b) - s/b` of (21), (22). -/
def relaxL (b c e : ℝ) : ℝ := relaxH b e - 7 / 64 / (c - b) - 7 / 64 / b

/-- The function `H(x, w, v)` of (25): the combination `𝓗 = F + λG + μL` of (23), with
`λ = 7/1024`, `μ = 9/256`, at `e = 1`, in the coordinates `x = 1 - b`, `w = 1 - c`
(`s = 7/64`). -/
def concaveH (x w v : ℝ) : ℝ :=
  x * ((1 - 7 / 64) * v - 7 / 64 + 7 / 1024) - (1 + 7 / 64) * v ^ 2
    - (7 / 64 + 7 / 1024 * (1 + 2 * (7 / 64))) * v - 7 / 1024 * (7 / 64) * (1 + 7 / 64) + 9 / 256
    + 7 / 64 * w * (7 / 64 - v - 7 / 1024 + (v + 7 / 64) * (v + 7 / 1024) / x)
    - 7 / 1024 * (7 / 64) * x * (1 - v) / w
    - 9 / 256 * (7 / 64) * (1 / x + 1 / (x - w) + 1 / (1 - x))

variable {a h b c d e f : ℝ} {P Q : Point}

-- The seven anchors as points.
local notation "𝐀" => ((0 : ℝ), a)
local notation "𝐇" => ((0 : ℝ), h)
local notation "𝐁" => (b, (0 : ℝ))
local notation "𝐂" => (c, (0 : ℝ))
local notation "𝐃" => ((1 : ℝ), d)
local notation "𝐄" => ((1 : ℝ), e)
local notation "𝐅" => (f, (1 : ℝ))
-- `v = min([CEP], [CEQ])`.
local notation "𝐯" => min (sarea (c, (0 : ℝ)) ((1 : ℝ), e) P) (sarea (c, (0 : ℝ)) ((1 : ℝ), e) Q)

/-! ### Initial bounds and the upper ear -/

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-initial`). Under (1): (3) `f < 3/16`, `hc ≥ 4s`,
`c ≥ 4s`; (4) `e > 1 - s`, `h < 1 - s`, `h > d`; (5) `h - d > 19/156`; and `b > 1/7`.
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 55-97.
Uses: SEVEN_BOUNDARY_CAPS:Theorem9, CORNER_FAMILIES:TwoInteriorPointLemma,
standard fact: Cauchy-Schwarz (Engel form). -/
theorem claim_initial (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    f < 3 / 16 ∧ 4 * (7 / 64) ≤ h * c ∧ 4 * (7 / 64) ≤ c ∧ 1 - 7 / 64 < e ∧ h < 1 - 7 / 64 ∧
      d < h ∧ 19 / 156 < h - d ∧ 1 / 7 < b := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-HEF`). Under (1): (6) `[HEF] < 3s`, so `HEF` is
empty and (7) `P, Q ∈ HCE ∩ CEF`; moreover `ρ < 𝒜 ≤ 1`, `ρ < ℬ < 6/7` and `𝒥 ≥ 𝒜 + s`.
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 99-110.
Uses: SEVEN_BOUNDARY_RIGHT_PAIR:claim-initial, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_HEF (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    sarea 𝐄 𝐅 𝐇 < 3 * (7 / 64) ∧ InTriangle P 𝐂 𝐄 𝐇 ∧ InTriangle Q 𝐂 𝐄 𝐇 ∧
      13 / 16 < sarea 𝐂 𝐄 𝐇 ∧ sarea 𝐂 𝐄 𝐇 ≤ 1 ∧ 13 / 16 < sarea 𝐂 𝐄 𝐅 ∧ sarea 𝐂 𝐄 𝐅 < 6 / 7 ∧
      sarea 𝐂 𝐄 𝐇 + 7 / 64 ≤ 1 + (e - h) * (c - f) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-HFP`). Equation (8): under (1),
`|[HFP]| < 3s` for the upper point `P ∈ CEF ∩ DEF`.
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 112-146.
Uses: SEVEN_BOUNDARY_RIGHT_PAIR:claim-initial, SEVEN_BOUNDARY_RIGHT_PAIR:claim-HEF,
standard fact: an affine function on a triangle is extremal at a vertex. -/
theorem claim_HFP (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    |sarea 𝐅 𝐇 P| < 3 * (7 / 64) := by
  sorry

/-! ### The pair line -/

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-CEsame`). Under (1), the line `PQ` puts `C` and
`E` on the same side: `[PQC]` and `[PQE]` have the same sign.
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 148-183.
Uses: ONE_CORNER_COMPLETION:claim-general-identities, SEVEN_BOUNDARY_RIGHT_PAIR:claim-HEF,
SEVEN_BOUNDARY_RIGHT_PAIR:claim-HFP. -/
theorem claim_CEsame (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    0 < sarea P Q 𝐂 * sarea P Q 𝐄 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-sameside`). Equations (12)-(13): under (1), with
`v = min([CEP], [CEQ])`, the same-side inequality
`𝓕 = 𝒜ℬ(v - s) - sv(𝒜 + ℬ) - 𝒥v² ≥ 0` holds, hence `v > s` and `F(𝒜, ℬ, v) ≥ 0`.
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 185-206.
Uses: ONE_CORNER_COMPLETION:claim-general-identities, SEVEN_BOUNDARY_RIGHT_PAIR:claim-CEsame,
SEVEN_BOUNDARY_RIGHT_PAIR:claim-HEF. -/
theorem claim_sameside (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    0 ≤ sarea 𝐂 𝐄 𝐇 * sarea 𝐂 𝐄 𝐅 * (𝐯 - 7 / 64) - 7 / 64 * 𝐯 * (sarea 𝐂 𝐄 𝐇 + sarea 𝐂 𝐄 𝐅)
        - (1 + (e - h) * (c - f)) * 𝐯 ^ 2 ∧
      7 / 64 < 𝐯 ∧ 0 ≤ sameSideF (sarea 𝐂 𝐄 𝐇) (sarea 𝐂 𝐄 𝐅) 𝐯 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-b`). Equations (14)-(15): under (1),
`3/20 < b < 1/6`. `hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 208-262.
Uses: SEVEN_BOUNDARY_RIGHT_PAIR:claim-sameside, SEVEN_BOUNDARY_RIGHT_PAIR:claim-HEF. -/
theorem claim_b (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    3 / 20 < b ∧ b < 1 / 6 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-v`). Equation (17): under (1), `1/4 < v < 1/3`.
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 264-270.
Uses: SEVEN_BOUNDARY_RIGHT_PAIR:claim-sameside, SEVEN_BOUNDARY_RIGHT_PAIR:claim-b. -/
theorem claim_v (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    1 / 4 < 𝐯 ∧ 𝐯 < 1 / 3 := by
  sorry

/-! ### The second inequality and the relaxations -/

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-G`). Equations (18)-(21): under (1), `[HDF] < 3s`,
so `HDF` is empty and `Q ∈ HCD`; with `T = [HCD]`, `U = [HDF]`, `W = T + U`, `r = [CDE]`, the
affine identity (19) gives `𝓖 = ℬ(T - s) - s(𝒜 + r) - Wv ≥ 0` (20); and (21)
`h - s/(c - b) - s/b ≥ 0`. `hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 272-305.
Uses: SEVEN_BOUNDARY_RIGHT_PAIR:claim-b, SEVEN_BOUNDARY_RIGHT_PAIR:claim-initial,
SEVEN_BOUNDARY_RIGHT_PAIR:claim-sameside. -/
theorem claim_G (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    sarea 𝐃 𝐅 𝐇 < 3 * (7 / 64) ∧ InTriangle Q 𝐂 𝐃 𝐇 ∧
      0 ≤ sarea 𝐂 𝐄 𝐅 * (sarea 𝐂 𝐃 𝐇 - 7 / 64) - 7 / 64 * (sarea 𝐂 𝐄 𝐇 + sarea 𝐂 𝐃 𝐄)
        - (sarea 𝐂 𝐃 𝐇 + sarea 𝐃 𝐅 𝐇) * 𝐯 ∧
      0 ≤ h - 7 / 64 / (c - b) - 7 / 64 / b := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-relax`). Equation (22): under (1), after the
monotone scalar replacements `h ↑ (1 - s - fe)/(1 - f)`, `f ↓ b`, `d ↑ e - s/w` (a relaxation of
(12), (20), (21), not a motion of the points), the relaxed expressions of (22) in the original
`b, c, e, v` satisfy `F ≥ 0`, `G ≥ 0`, `L ≥ 0`, `T ≥ 3s`; moreover `19/30 < c < 1 - s`.
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 307-356.
Uses: SEVEN_BOUNDARY_RIGHT_PAIR:claim-sameside, SEVEN_BOUNDARY_RIGHT_PAIR:claim-G,
SEVEN_BOUNDARY_RIGHT_PAIR:claim-initial, SEVEN_BOUNDARY_RIGHT_PAIR:claim-b. -/
theorem claim_relax (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    0 ≤ sameSideF (relaxA b c e) (relaxB b c e) 𝐯 ∧ 0 ≤ relaxG b c e 𝐯 ∧ 0 ≤ relaxL b c e ∧
      3 * (7 / 64) ≤ relaxT b c e ∧ 19 / 30 < c ∧ c < 1 - 7 / 64 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-comb`). Equations (23)-(24): under (1), the
combination `𝓗 = F + λG + μL` (`λ = 7/1024`, `μ = 9/256`) of the relaxed expressions strictly
increases with `e`, so its value at `e = 1`, which is `H(1 - b, 1 - c, v)` of (25), is
nonnegative. `hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 358-391, 400-408.
Uses: SEVEN_BOUNDARY_RIGHT_PAIR:claim-relax, SEVEN_BOUNDARY_RIGHT_PAIR:claim-v. -/
theorem claim_comb (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InTriangle P 𝐂 𝐄 𝐅 ∧ InTriangle P 𝐃 𝐄 𝐅) (hQ : InTriangle Q 𝐂 𝐄 𝐅 ∧ InTriangle Q 𝐂 𝐃 𝐅) :
    0 ≤ concaveH (1 - b) (1 - c) 𝐯 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_RIGHT_PAIR:claim-concave`). The explicit concavity certificate of
Section 8: `H(x, w, v) < 0` on the rectangle `[5/6, 17/20] × [7/64, 11/30] × [1/4, 1/3]` (via
`∇²H ≤ -I/32` (28) and one exact evaluation at `z₀ = (169/200, 29/160, 143/500)`).
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 393-505.
Uses: standard fact: second-order Taylor bound along segments. -/
theorem claim_concave (x w v : ℝ) (hx₁ : 5 / 6 ≤ x) (hx₂ : x ≤ 17 / 20) (hw₁ : 7 / 64 ≤ w)
    (hw₂ : w ≤ 11 / 30) (hv₁ : 1 / 4 ≤ v) (hv₂ : v ≤ 1 / 3) :
    concaveH x w v < 0 := by
  sorry

/-! ### The theorem -/

/-- **Theorem** (`SEVEN_BOUNDARY_RIGHT_PAIR:Theorem`). The two free points cannot both lie in the
right quadrilateral `CDEF` (at minimum area at least `7/128`).
`hand/SEVEN_BOUNDARY_RIGHT_PAIR.md`, lines 19-31, 504-505.
Uses: SEVEN_BOUNDARY_CAPS:Theorem8, SEVEN_BOUNDARY_CAPS:Theorem9,
SEVEN_BOUNDARY_CAPS:claim-right-pair-DF, SEVEN_BOUNDARY_RIGHT_PAIR:claim-comb,
SEVEN_BOUNDARY_RIGHT_PAIR:claim-concave, SEVEN_BOUNDARY_RIGHT_PAIR:claim-b,
SEVEN_BOUNDARY_RIGHT_PAIR:claim-v, SEVEN_BOUNDARY_RIGHT_PAIR:claim-relax. -/
theorem mainTheorem (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (InRightQuad c d e f P ∧ InRightQuad c d e f Q) := by
  sorry

end Heilbronn.SevenBoundaryRightPair
