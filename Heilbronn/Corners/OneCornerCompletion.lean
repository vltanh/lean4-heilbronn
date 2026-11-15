module

public import Heilbronn.Corners.CornerFamilies.SixPoint
public import Heilbronn.Corners.OppositeCorners

/-! # Two points in the central part of a quadrilateral (`hand/ONE_CORNER_COMPLETION.md`)

**Role.** A component of the primary N6 and C1 routes. Theorems 1–3 and the general identities
of §§1–2 are cited by the C1 notes (`C1_ZERO_LOWER`, `C1_ONE_LOWER_TOP_CAP`,
`C1_ONE_LOWER_SIDE_CAP`, `C1_TWO_LOWER_SIDE_CAP`, `C1_TOP_CAP_RADIAL_SPLIT`,
`C1_TOP_CAP_COMMON_CELL`, `C1_TWO_LOWER_COMPLETION`, `C1_MIXED_PENTAGON`) and by the six- and
seven-boundary notes; they are therefore stated for an arbitrary convex quadrilateral and, for
the identities, an arbitrary positive doubled threshold `σ`, *before* the normalization of the
quadrilateral area (as the users cite them). §4 is a narrative index of the C1 two-lower
completion; only its two concrete reductions are stated.

**Setting** (lines 13–92). `A, B, C, D` are the cyclic vertices of a convex quadrilateral
(`IsConvexQuad`, either orientation) of area `S = quadArea A B C D`; `quadConfig A B C D P Q`
is the six points. With doubled areas `a = 2[ABD]` (`areaA`), `b = 2[ABC]` (`areaB`),
`W = 2S` (`areaW`) and the overlap `J = a + b - W` (`overlapJ`), the canonical half-square
coordinates (4) are `A = (0,0)`, `B = (1,1)`, `D = (0,h)`, `C = (f,1)` with `h = J/b`,
`β = 1 - f = J/a`, reached by an affine map multiplying doubled areas by `J/(ab) = 1/T`
(`T = ab/J`); this is the `OPPOSITE_CORNERS.md` frame with `(A, E, H, F) = (A, B, D, C)`, in
which the central cell `ABC ∩ ABD` is cell II. The manuscript normalizes `W = 1` and `s = 7/64`.

"Every doubled area of the six points is at least `σ`" is `σ / 2 ≤ minTriangleArea (quadConfig …)`.
`d_V = sarea P Q V` is the pair-line sign of `V`; `Isolates P Q V V₁ V₂ V₃` says the line `PQ`
puts `V` on one side and `V₁, V₂, V₃` strictly on the other.

**Results.**

* `theorem1`, `theorem1_of_le_half` (Theorem 1), `theorem2`, `theorem2_of_le_half` (Theorem 2),
  `theorem3` (Theorem 3);
* the general identities (`ONE_CORNER_COMPLETION:claim-general-identities`):
  `claim_canonical_frame` (4), `claim_sign_list` (5), `claim_middle_case`, `eq6`, `eq6_B`,
  `eq9`, `eq10`;
* §4: `claim_pentagon_reduction`, `claim_pentagon_reduction_mixed`.

**Implicit in the manuscript.** The general identities need the canonical frame, i.e. `J > 0`
(Theorems 1–3 derive it from their thresholds; the downstream users check it, e.g.
`C1_TOP_CAP_COMMON_CELL` "canonical overlap"); it is a hypothesis here.

**Citation gap in §4** (inventory 02): lines 467–472 credit "the quadrilateral theorems" with
reducing the pentagonal branch to the mixed placements; Theorems 2–3 exclude only same-sector
pairs, and the opposite-sector pairs and the pairs inside `CDF` or `HDF` are excluded by
`ONE_CORNER.md` §§7–8 (`OneCorner.claim_pentagon_opposite_quadrants`,
`OneCorner.claim_pentagon_HDF_CDF`). Only the two concrete reductions of §4 are stated here.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.OneCornerCompletion

open Heilbronn.CornerFamilies (InsideTriangle ConvexQuad)

/-- `A, B, C, D` are the cyclic vertices of a convex quadrilateral, in either orientation. -/
def IsConvexQuad (A B C D : Point) : Prop := ConvexQuad A B C D ∨ ConvexQuad D C B A

/-- The area `S` of the quadrilateral `ABCD`. -/
def quadArea (A B C D : Point) : ℝ := |sarea A B C + sarea A C D| / 2

/-- The six points `A, B, C, D, P, Q`. -/
def quadConfig (A B C D P Q : Point) : Fin 6 → Point := ![A, B, C, D, P, Q]

/-- `a = 2 area(ABD)`. -/
def areaA (A B _C D : Point) : ℝ := |sarea A B D|

/-- `b = 2 area(ABC)`. -/
def areaB (A B C _D : Point) : ℝ := |sarea A B C|

/-- `W = 2 area(ABCD)`. -/
def areaW (A B C D : Point) : ℝ := |sarea A B C + sarea A C D|

/-- The overlap `J = a + b - W` (`= ab/T`). -/
def overlapJ (A B C D : Point) : ℝ := areaA A B C D + areaB A B C D - areaW A B C D

/-- `P, Q` are a central pair: both strictly inside `ABC` and `ABD`. -/
def CentralPair (A B C D P Q : Point) : Prop :=
  InsideTriangle P A B C ∧ InsideTriangle P A B D ∧ InsideTriangle Q A B C ∧
    InsideTriangle Q A B D

/-- The line `PQ` puts `V` strictly on one side and `V₁, V₂, V₃` strictly on the other. -/
def Isolates (P Q V V₁ V₂ V₃ : Point) : Prop :=
  sarea P Q V * sarea P Q V₁ < 0 ∧ sarea P Q V * sarea P Q V₂ < 0 ∧
    sarea P Q V * sarea P Q V₃ < 0

/-! ### §1. Theorem 1 -/

/-- **Theorem 1** (`ONE_CORNER_COMPLETION:Theorem1`): for a convex quadrilateral `ABCD` of area
`S > 0` and two points `P, Q` strictly inside both `ABC` and `ABD` such that the line `PQ`
separates `A` and `B`, the six points have minimum triangle area strictly less than `7S/64`.
`hand/ONE_CORNER_COMPLETION.md`, lines 25–209.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, OPPOSITE_CORNERS:claim-II-II-opposite-sign (23),
OPPOSITE_CORNERS:claim-pair-I-II (15)–(16), OPPOSITE_CORNERS:claim-weighted-identity,
OPPOSITE_CORNERS:claim-II-II-opposite-sign (24)–(25) -/
theorem theorem1 (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hsep : sarea P Q A * sarea P Q B < 0) :
    minTriangleArea (quadConfig A B C D P Q) < 7 / 64 * quadArea A B C D := by
  sorry

/-- **Theorem 1** (`ONE_CORNER_COMPLETION:Theorem1`), last sentence: when `S ≤ 1/2` the minimum
area is below `7/128` (`< A₀`). `hand/ONE_CORNER_COMPLETION.md`, lines 36–37.

Uses: ONE_CORNER_COMPLETION:Theorem1 -/
theorem theorem1_of_le_half (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hsep : sarea P Q A * sarea P Q B < 0)
    (hS : quadArea A B C D ≤ 1 / 2) :
    minTriangleArea (quadConfig A B C D P Q) < 7 / 128 := by
  sorry

/-! ### The general identities of §§1–2 -/

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), the canonical normalization (4):
if `J = a + b - W > 0`, an affine map with `|det| = J/(ab)` sends `A, B, D, C` to `(0,0)`,
`(1,1)`, `(0,h)`, `(1 - β, 1)` with `h = J/b`, `β = J/a`, both in `(0, 1)` (the manuscript's
`h = a/T`, `β = b/T` after normalizing `W = 1`). `hand/ONE_CORNER_COMPLETION.md`, lines 67–92. -/
theorem claim_canonical_frame (A B C D : Point) (hq : IsConvexQuad A B C D)
    (hJ : 0 < overlapJ A B C D) :
    0 < overlapJ A B C D / areaB A B C D ∧ overlapJ A B C D / areaB A B C D < 1 ∧
      0 < overlapJ A B C D / areaA A B C D ∧ overlapJ A B C D / areaA A B C D < 1 ∧
      ∃ m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ : ℝ,
        |m₁₁ * m₂₂ - m₁₂ * m₂₁| = overlapJ A B C D / (areaA A B C D * areaB A B C D) ∧
        affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ A = (0, 0) ∧ affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ B = (1, 1) ∧
        affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ D = (0, overlapJ A B C D / areaB A B C D) ∧
        affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ C = (1 - overlapJ A B C D / areaA A B C D, 1) := by
  sorry

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), the sign list (5) at any
threshold: for a central pair in general position (`J > 0`), orienting `PQ` so that
`d_A < 0 < d_B`, `d_D > 0` forces `d_C > 0`; so `(d_D, d_C)` is `(+,+)`, `(-,+)` or `(-,-)`.
`hand/ONE_CORNER_COMPLETION.md`, lines 94–127.

Uses: OPPOSITE_CORNERS:claim-II-II-opposite-sign (23) -/
theorem claim_sign_list (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hgp : 0 < minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hA : sarea P Q A < 0) (hB : 0 < sarea P Q B)
    (hD : 0 < sarea P Q D) : 0 < sarea P Q C := by
  sorry

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), the middle case at any
threshold `σ > 0`: if `d_A < 0 < d_B` and `d_D < 0 < d_C`, then `P` is strictly inside `DCQ`, so
`3σ ≤ 2[DCQ] ≤ max(2[DCA], 2[DCB]) = max(W - b, W - a)`.
`hand/ONE_CORNER_COMPLETION.md`, lines 129–147. -/
theorem claim_middle_case (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ)
    (hq : IsConvexQuad A B C D) (hc : CentralPair A B C D P Q)
    (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hA : sarea P Q A < 0) (hB : 0 < sarea P Q B) (hD : sarea P Q D < 0) (hC : 0 < sarea P Q C) :
    3 * σ ≤ max (areaW A B C D - areaB A B C D) (areaW A B C D - areaA A B C D) := by
  sorry

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), equation (6) before the
normalization `W = 1` (as used by `C1_TOP_CAP_RADIAL_SPLIT` (2), `C1_ONE_LOWER_SIDE_CAP`):
for a central pair whose line isolates `A`, at any threshold `σ > 0` with `J > 0`,
`ab - σ(W + a) > 0` and `[ab - σ(W + a)]² ≥ 4σWab`.
`hand/ONE_CORNER_COMPLETION.md`, lines 149–172.

Uses: OPPOSITE_CORNERS:claim-II-II-opposite-sign (24)–(25) -/
theorem eq6 (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hiso : Isolates P Q A B C D) :
    0 < areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaA A B C D) ∧
      4 * σ * areaW A B C D * (areaA A B C D * areaB A B C D) ≤
        (areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaA A B C D)) ^ 2 := by
  sorry

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), equation (6) with `a, b`
interchanged (the case `(d_D, d_C) = (-,-)`): if the line of the central pair isolates `B`,
`ab - σ(W + b) > 0` and `[ab - σ(W + b)]² ≥ 4σWab`.
`hand/ONE_CORNER_COMPLETION.md`, lines 168–172.

Uses: OPPOSITE_CORNERS:claim-II-II-opposite-sign (24)–(25) -/
theorem eq6_B (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hiso : Isolates P Q B A C D) :
    0 < areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaB A B C D) ∧
      4 * σ * areaW A B C D * (areaA A B C D * areaB A B C D) ≤
        (areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaB A B C D)) ^ 2 := by
  sorry

/-! ### §2. Theorem 2 -/

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), equation (9) before the
normalization `W = 1` (as used by `SIX_BOUNDARY_HULL` line 740, `SEVEN_BOUNDARY_RIGHT_PAIR` (12)):
for a central pair whose line keeps `A, B` on the same side, at any threshold `σ > 0` with
`J > 0`, the smaller doubled height `v = min(2[ABP], 2[ABQ])` satisfies
`F = ab(v - σ) - σv(a + b) - Wv² ≥ 0`; hence `v > σ`, and maximizing in `v`,
`ab - σ(a + b) > 0` and `[ab - σ(a + b)]² ≥ 4σWab`.
`hand/ONE_CORNER_COMPLETION.md`, lines 227–257.

Uses: OPPOSITE_CORNERS:claim-II-II-same-sign (21)–(22) -/
theorem eq9 (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hsame : 0 < sarea P Q A * sarea P Q B) :
    let a := areaA A B C D
    let b := areaB A B C D
    let W := areaW A B C D
    let v := min |sarea A B P| |sarea A B Q|
    0 ≤ a * b * (v - σ) - σ * v * (a + b) - W * v ^ 2 ∧ σ < v ∧
      0 < a * b - σ * (a + b) ∧ 4 * σ * W * (a * b) ≤ (a * b - σ * (a + b)) ^ 2 := by
  sorry

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), the opposite-edge height bound
(10) before the normalization `W = 1`: for a central pair with `a ≥ b`, at any threshold
`σ > 0` with `J > 0`, each point `X ∈ {P, Q}` has `2[ABX] ≤ b - σa/(W - b)`
(normalized: `v ≤ b - sa/(1 - b) ≤ V(b) = b - sb/(1 - b)`).
`hand/ONE_CORNER_COMPLETION.md`, lines 259–291. -/
theorem eq10 (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hab : areaB A B C D ≤ areaA A B C D) :
    |sarea A B P| ≤ areaB A B C D - σ * areaA A B C D / (areaW A B C D - areaB A B C D) ∧
      |sarea A B Q| ≤ areaB A B C D - σ * areaA A B C D / (areaW A B C D - areaB A B C D) := by
  sorry

/-- **Theorem 2** (`ONE_CORNER_COMPLETION:Theorem2`), the central-pair quadrilateral bound: for a
convex quadrilateral `ABCD` of area `S` and two points strictly inside both `ABC` and `ABD`, the
six points have minimum triangle area strictly less than `7S/64` (no separation hypothesis).
Equivalently, at minimum area `≥ 7S/64` some hull diagonal separates the two interior points.
`hand/ONE_CORNER_COMPLETION.md`, lines 211–350.

Uses: ONE_CORNER_COMPLETION:Theorem1, OPPOSITE_CORNERS:claim-II-II-same-sign (21)–(22) -/
theorem theorem2 (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) :
    minTriangleArea (quadConfig A B C D P Q) < 7 / 64 * quadArea A B C D := by
  sorry

/-- **Theorem 2** (`ONE_CORNER_COMPLETION:Theorem2`), the form at `S ≤ 1/2`: minimum area below
`7/128`. `hand/ONE_CORNER_COMPLETION.md`, lines 211–225 (with lines 36–37).

Uses: ONE_CORNER_COMPLETION:Theorem2 -/
theorem theorem2_of_le_half (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hS : quadArea A B C D ≤ 1 / 2) :
    minTriangleArea (quadConfig A B C D P Q) < 7 / 128 := by
  sorry

/-! ### §3. Theorem 3 -/

/-- **Theorem 3** (`ONE_CORNER_COMPLETION:Theorem3`), the mixed-pair line: for a convex
quadrilateral `ABCD` of area `S` whose six-point minimum area is at least `7S/64`, if `P, Q` are
strictly inside `ABC`, `P` strictly inside `BCD` and `Q` strictly inside `ABD`, then the line
`PQ` puts `B` on one side and `A, C, D` on the other. `hand/ONE_CORNER_COMPLETION.md`,
lines 352–439.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, OPPOSITE_CORNERS:claim-pair-I-II (5.1),
OPPOSITE_CORNERS:claim-pair-I-II (15)–(16) -/
theorem theorem3 (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hmin : 7 / 64 * quadArea A B C D ≤ minTriangleArea (quadConfig A B C D P Q))
    (hP : InsideTriangle P A B C) (hQ : InsideTriangle Q A B C)
    (hPBCD : InsideTriangle P B C D) (hQABD : InsideTriangle Q A B D) :
    Isolates P Q B A C D := by
  sorry

/-! ### §4. Application to the pentagonal C1 branch -/

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-pentagon-reduction`), the central upper pair: in a C1
configuration (anchors `O, C = (c,0), D = (1,d), F = (f,1), H = (0,h)`) of minimum area at least
`A₀`, two free points cannot both lie in `HCD ∩ HCF` (Theorem 2 with `(A,B,C,D) = (H,C,D,F)`,
`W = 1 - (h - d)(c - f) ≤ 1`). `hand/ONE_CORNER_COMPLETION.md`, lines 441–465.

Uses: ONE_CORNER_COMPLETION:Theorem2 -/
theorem claim_pentagon_reduction (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (hY : InsideTriangle Y (0, h) (c, 0) (1, d) ∧ InsideTriangle Y (0, h) (c, 0) (f, 1))
    (hZ : InsideTriangle Z (0, h) (c, 0) (1, d) ∧ InsideTriangle Z (0, h) (c, 0) (f, 1)) :
    False := by
  sorry

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-pentagon-reduction`), the mixed upper placement: in a
C1 configuration of minimum area at least `A₀`, if the free point `Q` is in `HCD ∩ HCF` and the
free point `P` is in `HCD ∩ CDF`, then the line `PQ` isolates `C` from `H, D, F` (Theorem 3
with `(A,B,C,D) = (H,C,D,F)`); the reflected placement isolates `H`.
`hand/ONE_CORNER_COMPLETION.md`, lines 467–472.

Uses: ONE_CORNER_COMPLETION:Theorem3 -/
theorem claim_pentagon_reduction_mixed (h c d f : ℝ) (hanch : C1Anchors h c d f)
    (W X P Q : Point) (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X P Q))
    (hQ : InsideTriangle Q (0, h) (c, 0) (1, d) ∧ InsideTriangle Q (0, h) (c, 0) (f, 1))
    (hP : InsideTriangle P (0, h) (c, 0) (1, d) ∧ InsideTriangle P (c, 0) (1, d) (f, 1)) :
    Isolates P Q (c, 0) (0, h) (1, d) (f, 1) := by
  sorry

end Heilbronn.OneCornerCompletion
