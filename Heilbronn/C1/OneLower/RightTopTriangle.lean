module

public import Heilbronn.C1.OneLower.ConvexTop

/-! # One right-cap point and a triangular two-top hull in C1 (`hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses the
Theorem for the occupancy row `(U, R, T, L_cap) = (0, 1, 2, 0)` when the hull of the two top-cap
points with `D, F` is triangular; the convex alternative is an eight-vertex hull
(`C1_ONE_LOWER_EIGHT_HULL:Theorem`).

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1` and, after transposition,
`f ≤ d` (line 8: part of the setting, kept as a hypothesis); minimum triangle area at least `A₀`.
Free points: `L ∈ OHC`, `R = (r_x, r_y)` in the right cap `CD(1,0) \ CD`, the outer top-cap point
`X` and the interior top-cap point `P ∈ DXF`; configuration `c1Config h c d f R X L P`. The full
hull is the heptagon `O, C, R, D, X, F, H` (1) with interior points `L, P`. Threshold `s = 8/73`.

**Results.** `mainTheorem` (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:Theorem`); `eq2`–`eq8` (bounds of
Section 1); `claim_cover` (the 25 word pairs); `eq13` (the certificate package).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerRightTopTriangle

open Heilbronn.C1
open Heilbronn.C1OneLowerTopCap (HullWord HasHullWord ConvexPolygon)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- The placement of the Theorem: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1` with `f ≤ d`;
minimum triangle area at least `A₀` for `c1Config h c d f R X L P`; `L` strictly inside `OHC`; `R`
in the right cap and `X` in the top cap (each possibly on a side of the square); `P` strictly
inside the actual triangle `DXF` (so the hull of the two top-cap points with `D, F` is the triangle
`D, X, F`). -/
structure Placement (h c d f : ℝ) (R X L P : Point) : Prop where
  anchors : C1Anchors h c d f
  f_le_d : f ≤ d
  min : A₀ ≤ minTriangleArea (c1Config h c d f R X L P)
  lower : InLower h c L
  right : InRightCap c d R
  rightSq : R ∈ unitSquare
  top : InTopCap d f X
  topSq : X ∈ unitSquare
  inner : InTriangle P (ptD d) X (ptF f)

/-- The hull heptagon (1), `V₀, …, V₆ = O, C, R, D, X, F, H`. -/
def heptagon (h c d f : ℝ) (R X : Point) : Fin 7 → Point :=
  ![ptO, ptC c, R, ptD d, X, ptF f, ptH h]

/-- **Theorem** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:Theorem`). There is no competitive C1
configuration (with `f ≤ d`) with one lower point `L ∈ OHC`, one right-cap point
`R ∈ CD(1,0) \ CD`, and two top-cap points whose hull with `D, F` is triangular (named: the outer
point `X` and the interior point `P ∈ DXF`). `hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines
3-25 and 167-173.
Uses: C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:claim-cover, C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(13). -/
theorem mainTheorem {h c d f : ℝ} {R X L P : Point} (hS : Placement h c d f R X L P) : False := by
  sorry

section

variable {h c d f : ℝ} {R X L P : Point}

/-! ### Section 1: bounds from the occupied regions -/

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(2)`). `hc ≥ 3s`, `hf, cd ≥ s`, `h, c ≥ 3s`,
`d, f ≥ s`. `hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines 34-36. -/
theorem eq2 (hS : Placement h c d f R X L P) :
    3 * s ≤ h * c ∧ s ≤ h * f ∧ s ≤ c * d ∧ 3 * s ≤ h ∧ 3 * s ≤ c ∧ s ≤ d ∧ s ≤ f := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(3)`). The single right-cap identity:
`dc(1-c) ≥ s`, hence `d ≥ 4s`. `hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines 38-41.
Uses: C1_ZERO_LOWER:eq5-6. -/
theorem eq3 (hS : Placement h c d f R X L P) : s ≤ d * c * (1 - c) ∧ 4 * s ≤ d := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(4)`). Subdivision at `P ∈ DXF` gives
`[DXF] ≥ 3s`, hence `(1-d)(1-f) ≥ 3s` and `d ≤ 41/65`; then `c(1-c) ≥ 65s/41 > 14/81`, so
`3s ≤ c < 7/9`, `h ≥ 27s/7`, `4s ≤ d ≤ 41/65`. `hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines
43-50. Uses: C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(2), C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(3). -/
theorem eq4 (hS : Placement h c d f R X L P) :
    3 * s ≤ sarea (ptD d) X (ptF f) ∧ 3 * s ≤ (1 - d) * (1 - f) ∧ 65 * s / 41 ≤ c * (1 - c) ∧
      3 * s ≤ c ∧ c < 7 / 9 ∧ 27 * s / 7 ≤ h ∧ 4 * s ≤ d ∧ d ≤ 41 / 65 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(5)`). The two cap-area expressions
`[DXF] = (1-d)(x_x-f) - (1-f)(1-x_y) = (1-f)(x_y-d) - (1-d)(1-x_x) ≥ 3s` give `x_x - f ≥ 24/41`,
`x_y - d ≥ 24/65`, `f ≤ 17/41`. `hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines 52-61.
Uses: C1_ONE_LOWER_TOP_CAP:(3), C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(4). -/
theorem eq5 (hS : Placement h c d f R X L P) :
    24 / 41 ≤ X.1 - f ∧ 24 / 65 ≤ X.2 - d ∧ f ≤ 17 / 41 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(6)`). From `-[CDR] = d(r_x-c) - (1-c)r_y =
(1-c)(d-r_y) - d(1-r_x) ≥ s` and `c r_y ≥ s`: `r_x - c ≥ 65s/41`, `r_y ≥ 9s/7`, `d - r_y ≥ 8/49`.
`hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines 63-71.
Uses: C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(4). -/
theorem eq6 (hS : Placement h c d f R X L P) :
    -sarea (ptC c) (ptD d) R = d * (R.1 - c) - (1 - c) * R.2 ∧
      -sarea (ptC c) (ptD d) R = (1 - c) * (d - R.2) - d * (1 - R.1) ∧
      65 * s / 41 ≤ R.1 - c ∧ 9 * s / 7 ≤ R.2 ∧ 8 / 49 ≤ d - R.2 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(7)`). Lower-triangle subdivision with `c < 7/9`:
`ℓ_x ≥ s`, `ℓ_y ≥ 9s/7`, `c - ℓ_x ≥ 2s`, `h - ℓ_y ≥ 18s/7`, `ℓ_x + ℓ_y ≤ 1 - s`.
`hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines 72-78.
Uses: C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(4). -/
theorem eq7 (hS : Placement h c d f R X L P) :
    s ≤ L.1 ∧ 9 * s / 7 ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 18 * s / 7 ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(8)`). The top-cap identities at level `s` and the
subdivision areas `[DXP] = (x_y-d)(1-p_x) - (1-x_x)(p_y-d) ≥ s`,
`[XFP] = (x_x-f)(1-p_y) - (1-x_y)(p_x-f) ≥ s` give `p_x - f ≥ 8/41`, `p_y - d ≥ 8/65`,
`p_x, p_y ≤ 1 - s`. `hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines 80-93.
Uses: C1_ONE_LOWER_TOP_CAP:(3), C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(3). -/
theorem eq8 (hS : Placement h c d f R X L P) :
    8 / 41 ≤ P.1 - f ∧ 8 / 65 ≤ P.2 - d ∧ P.1 ≤ 1 - s ∧ P.2 ≤ 1 - s := by
  sorry

end

/-! ### Section 2: the complete 25-case cover -/

/-- Helper (implicit in the manuscript: "The full cyclic hull is `O, C, R, D, X, F, H`", lines
16-20): the hull heptagon is convex (counterclockwise). -/
theorem convex_heptagon {h c d f : ℝ} {R X L P : Point} (hS : Placement h c d f R X L P) :
    ConvexPolygon (heptagon h c d f R X) := by
  sorry

/-- The five cap words (10) of `P ∈ DXF` (edge tests of `(3, 4, 5)` of the heptagon), in
lexicographic order. The lower words are (9) of the convex-top note,
`C1OneLowerConvexTop.lowerWord`. -/
def capWord : Fin 5 → HullWord 7 :=
  ![![3, 2, 1, 1, 5, 5, 4], ![3, 2, 2, 1, 4, 5, 4], ![3, 3, 2, 1, 3, 5, 4],
    ![4, 3, 2, 1, 1, 5, 5], ![4, 3, 2, 1, 2, 5, 4]]

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:claim-cover`). The words of `L, P` for the heptagon
`O, C, R, D, X, F, H` (`1 ≤ rᵢ ≤ 5`, complement relation (9); 57 words) are one of the five lower
words (9) of the convex-top note and one of the five cap words (10); all 25 pairs are retained,
with no further sign split (ray order (11) fixes the pair signs where the words differ).
`hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines 95-124.
Uses: C1_ONE_LOWER_TOP_CAP:(12)-(13), C1_ONE_LOWER_CONVEX_TOP:claim-cover. -/
theorem claim_cover {h c d f : ℝ} {R X L P : Point} (hS : Placement h c d f R X L P) :
    ∃ i j, HasHullWord (heptagon h c d f R X) L (C1OneLowerConvexTop.lowerWord i) ∧
      HasHullWord (heptagon h c d f R X) P (capWord j) := by
  sorry

/-! ### Section 3: the certificate package -/

/-- **Claim** (`C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(13)`). The certificate package: no placement has
any of the 25 word pairs. Each is excluded by one of 15 fixed positive combinations of products of
the 28 affine factors (12), the costs `(1-d)(1-f) - 3s`, the signed actual triangles with at most
one interior point and the ray-order triangles `(v, L, P)` minus `s, 3s, ρ` by certified
occupancy, and `B = dc(1-c) - s`, whose unit-cube bound (13) is at most `-3/4` (largest
`-707476541255103311/712957274349465600`). Coverage by the reuse rule.
`hand/C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`, lines 126-173 (data
`c1_one_lower_right_top_triangle_certificates.json`, checker
`check_c1_one_lower_right_top_triangle.py`).
Uses: C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(2), C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(3),
C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(4), C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(5),
C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(6), C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(7),
C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:(8), C1_ONE_LOWER_TOP_CAP:(14),
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq13 {h c d f : ℝ} {R X L P : Point} (hS : Placement h c d f R X L P) (i : Fin 5)
    (j : Fin 5) (hL : HasHullWord (heptagon h c d f R X) L (C1OneLowerConvexTop.lowerWord i))
    (hP : HasHullWord (heptagon h c d f R X) P (capWord j)) : False := by
  sorry

end Heilbronn.C1OneLowerRightTopTriangle
