module

public import Heilbronn.C1.OneLower.SideCap

/-! # The triangular two-top-cap placement with one lower C1 point (`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses the
Theorem for the occupancy row `(U, R, T, L_cap) = (1, 0, 2, 0)` when the hull of the two top-cap
points with `D, F` is triangular. `C1_ONE_LOWER_CONVEX_TOP.md` covers the convex alternative.

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1`, minimum triangle area at
least `A₀`; free points `L ∈ OHC`, `Q ∈ HCDF`, an outer top-cap point `X = (g, k)` and a second
top-cap point `P` strictly inside the actual triangle `DXF`; configuration
`c1Config h c d f L P Q X`. The full hull is the hexagon `O, C, D, X, F, H` of the top-cap note
(`C1OneLowerTopCap.hexagon`), with interior points `L, P, Q`. The proof transposes first to get
`f ≤ d`; the claims using it carry that hypothesis. Thresholds `s = 8/73`, `ρ = 49/60`.

**Results.**
* `mainTheorem` (`C1_ONE_LOWER_TOP_TRIANGLE:Theorem`), with the transposition `transpose`.
* `eq1`–`eq9`: the bounds of Section 1 (`eq9`: four capacity-one triangles). FLAG (`eq9`): the
  word "respectively" at lines 138-139.
* `claim_cover` (219 word triples, 276 cells), `eq13` (the certificate package).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerTopTriangle

open Heilbronn.C1
open Heilbronn.C1OneLowerTopCap (HullWord HasHullWord hullTriples insideCount AtMostInside hexagon
  ConvexPolygon)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-- The placement of the Theorem: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`; minimum triangle
area at least `A₀`; `L` strictly inside `OHC`; `Q` strictly inside `HCDF`; `X = (g, k)` in the top
cap (beyond `DF`, possibly on a side of the square); `P` strictly inside the actual triangle
`DXF` (counterclockwise `D, X, F`). The configuration is `c1Config h c d f L P Q X`. -/
structure Placement (h c d f : ℝ) (L P Q X : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)
  lower : InLower h c L
  upper : InUpperQuad h c d f Q
  top : InTopCap d f X
  topSq : X ∈ unitSquare
  inner : InTriangle P (ptD d) X (ptF f)

/-- **Theorem** (`C1_ONE_LOWER_TOP_TRIANGLE:Theorem`). There is no competitive C1 configuration with
`L ∈ OHC`, `Q ∈ HCDF`, one exterior top-cap point `X` beyond `DF`, and a second top-cap point `P`
strictly inside the actual triangle `DXF`. (If `D, F, X, P` have triangular hull, its third vertex
can be named `X`; the convex alternative is `C1_ONE_LOWER_CONVEX_TOP:Theorem`.) No order `f ≤ d`
is assumed: the proof transposes first.
`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 18-34 and 319-321.
Uses: C1_ONE_LOWER_TOP_TRIANGLE:claim-cover, C1_ONE_LOWER_TOP_TRIANGLE:(13). -/
theorem mainTheorem {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) : False := by
  sorry

section

variable {h c d f : ℝ} {L P Q X : Point}

/-- Helper: transposing the square maps the placement with parameters `(h, c, d, f)` to the
placement with `(c, h, f, d)` ("This preserves every placement in the theorem"), so `f ≤ d` may
be assumed. `hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 44-45. -/
theorem transpose (hS : Placement h c d f L P Q X) :
    Placement c h f d L.swap P.swap Q.swap X.swap := by
  sorry

/-! ### Section 1: bounds forced by the occupied cap triangle -/

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(1)`). `hc ≥ 3s`, `hf, cd ≥ s`, hence `h, c ≥ 3s` and
`d, f ≥ s`. `hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 46-50. -/
theorem eq1 (hS : Placement h c d f L P Q X) :
    3 * s ≤ h * c ∧ s ≤ h * f ∧ s ≤ c * d ∧ 3 * s ≤ h ∧ 3 * s ≤ c ∧ s ≤ d ∧ s ≤ f := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(2)`). Subdivision of `DXF` at `P` into three actual
triangles: `r_X = [DXF] = (1-d)g + (1-f)k - 1 + df ≥ 3s`.
`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 53-57. -/
theorem eq2 (hS : Placement h c d f L P Q X) :
    sarea (ptD d) X (ptF f) = (1 - d) * X.1 + (1 - f) * X.2 - 1 + d * f ∧
      3 * s ≤ sarea (ptD d) X (ptF f) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(3)`). By the cap identities (3) of the top-cap note at
level `3s`: `g - f ≥ 3s`, `k - d ≥ 3s`, `(1-d)(1-f) ≥ 3s`.
`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 60-66.
Uses: C1_ONE_LOWER_TOP_CAP:(3), C1_ONE_LOWER_TOP_TRIANGLE:(2). -/
theorem eq3 (hS : Placement h c d f L P Q X) :
    3 * s ≤ X.1 - f ∧ 3 * s ≤ X.2 - d ∧ 3 * s ≤ (1 - d) * (1 - f) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(4)`). Under `f ≤ d` (and `f ≥ s`):
`d ≤ 1 - 3s/(1-s) = 41/65`, `(1-f)² ≥ 3s > 16/49`, `f < 3/7`.
`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 68-73.
Uses: C1_ONE_LOWER_TOP_TRIANGLE:(1), C1_ONE_LOWER_TOP_TRIANGLE:(3). -/
theorem eq4 (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    d ≤ 41 / 65 ∧ 3 * s ≤ (1 - f) ^ 2 ∧ (16 / 49 : ℝ) < 3 * s ∧ f < 3 / 7 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(5)`). `P` is beyond `DF`: `r_P = -[DFP] ≥ s`, so
`p_x > f`, `p_y > d`, and `p_x - f ≥ s/(1-d) ≥ 8/65`, `p_y - d ≥ s/(1-f) ≥ 8/65`.
`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 75-92. Uses: C1_ONE_LOWER_TOP_TRIANGLE:(1). -/
theorem eq5 (hS : Placement h c d f L P Q X) :
    f < P.1 ∧ d < P.2 ∧ 8 / 65 ≤ P.1 - f ∧ 8 / 65 ≤ P.2 - d := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(6)`). The other two subdivision areas:
`[DXP] = (k-d)(1-p_x) - (1-g)(p_y-d) ≥ s` and `[XFP] = (g-f)(1-p_y) - (1-k)(p_x-f) ≥ s`.
`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 94-101. -/
theorem eq6 (hS : Placement h c d f L P Q X) :
    sarea (ptD d) X P = (X.2 - d) * (1 - P.1) - (1 - X.1) * (P.2 - d) ∧
      sarea X (ptF f) P = (X.1 - f) * (1 - P.2) - (1 - X.2) * (P.1 - f) ∧
      s ≤ sarea (ptD d) X P ∧ s ≤ sarea X (ptF f) P := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(7)`). `p_x, p_y ≤ 1 - s` (the subtracted products in (6)
are nonnegative and `0 < k - d, g - f ≤ 1`). `hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 103-110.
Uses: C1_ONE_LOWER_TOP_TRIANGLE:(5), C1_ONE_LOWER_TOP_TRIANGLE:(6). -/
theorem eq7 (hS : Placement h c d f L P Q X) : P.1 ≤ 1 - s ∧ P.2 ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(8)`). The lower-point inequalities and the
upper-coordinate projection identities of the top-cap note: `ℓ_x, ℓ_y ≥ s`, `c - ℓ_x ≥ 2s`,
`h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1 - s`, `s ≤ q_x, q_y ≤ 1 - s`.
`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 114-120.
Uses: C1_ONE_LOWER_TOP_CAP:(8), C1_ONE_LOWER_TOP_CAP:(10). -/
theorem eq8 (hS : Placement h c d f L P Q X) :
    (s ≤ L.1 ∧ s ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s) ∧
      (s ≤ Q.1 ∧ s ≤ Q.2 ∧ Q.1 ≤ 1 - s ∧ Q.2 ≤ 1 - s) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(9)`). Under `f ≤ d`, the four actual triangles `CDX`,
`XFH`, `OFH`, `DFH` have capacity at most one (`[OFH] = hf < 3/7 < ρ`; `[DFH] < ρ`, else
`[DFH] ≤ 411/803`; `[XFH], [CDX] < 1 - 7s/3 < ρ`; two-interior-point theorem).
FLAG (line 138-139): "the two height orders in that note give area at most `1 - 3s`, or strictly
below `1 - 7s/3`, respectively" pairs the two bounds with `XFH`, `CDX`; in the top-cap note both
height cases (`k ≥ h`: `≤ 1 - 3s`; `k < h`: `< 1 - 7s/3`) apply to each of the two triangles. The
claim is unaffected. `hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 123-141.
Uses: C1_ONE_LOWER_TOP_CAP:(6), C1_ONE_LOWER_TOP_CAP:(7), C1_ONE_LOWER_TOP_TRIANGLE:(4),
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq9 (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    sarea ptO (ptF f) (ptH h) < 3 / 7 ∧
      AtMostInside 1 (ptC c) (ptD d) X (freePt L P Q X) ∧
      AtMostInside 1 X (ptF f) (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 ptO (ptF f) (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 (ptD d) (ptF f) (ptH h) (freePt L P Q X) := by
  sorry

end

/-! ### Section 2: the radial cover -/

/-- Helper (implicit in the manuscript: "The full hull is the convex hexagon `O, C, D, X, F, H`",
lines 145-148): the hull hexagon is convex (counterclockwise). -/
theorem convex_hexagon {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) :
    ConvexPolygon (hexagon h c d f X) := by
  sorry

/-- The four cap words of `P ∈ DXF` (edge tests of the triangle `(2, 3, 4)` of the hexagon
`O, C, D, X, F, H`), indexed from zero as in the table of Section 2. -/
def capWord : Fin 4 → HullWord 6 :=
  ![![2, 1, 1, 4, 4, 3], ![2, 2, 1, 3, 4, 3], ![3, 2, 1, 1, 4, 4], ![3, 2, 1, 2, 4, 3]]

/-- The 219 word triples `(i, j, ℓ)` of `(L, P, Q)` (lower word `i`, cap word `j`, upper word `ℓ`
of the top-cap note) for which no hull triangle contains all three interior points and none of the
four triangles (9) contains two of them. Eight of them are split further by the signs of the
table of Section 2 (and `(2, 3, 6)` once more by `[LPQ]`), giving the 276 cells (12). -/
def topTriangleCases : List (Fin 4 × Fin 4 × Fin 18) :=
  (List.finRange 4).flatMap fun i => (List.finRange 4).flatMap fun j =>
    ((List.finRange 18).filter fun l =>
      let ws := [C1OneLowerTopCap.lowerWord i, capWord j, C1OneLowerTopCap.upperWord l]
      (hullTriples 6).all (fun t => decide (insideCount ws t ≤ 2)) &&
        C1OneLowerTopCap.capacityOneTriangles.all (fun t => decide (insideCount ws t ≤ 1))).map
      fun l => (i, j, l)

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:claim-cover`). Under `f ≤ d`, every placement is covered:
the words of `L, P, Q` for the hexagon `O, C, D, X, F, H` ((10); completeness from Section 3 of the
top-cap note) are a lower word `i`, a cap word `j` and an upper word `ℓ` with
`(i, j, ℓ) ∈ topTriangleCases` (capacity two of every hull triangle; capacity one of the triangles
(9)). `hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 143-227.
Uses: C1_ONE_LOWER_TOP_CAP:(12)-(13), ONE_CORNER:GlobalC1OccupancyCorollary,
C1_ONE_LOWER_TOP_TRIANGLE:(9). -/
theorem claim_cover {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X)
    (hfd : f ≤ d) :
    ∃ i j l, (i, j, l) ∈ topTriangleCases ∧
      HasHullWord (hexagon h c d f X) L (C1OneLowerTopCap.lowerWord i) ∧
      HasHullWord (hexagon h c d f X) P (capWord j) ∧
      HasHullWord (hexagon h c d f X) Q (C1OneLowerTopCap.upperWord l) := by
  sorry

/-! ### Sections 3–4: the certificate package -/

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(13)`). The certificate package: under `f ≤ d`, no
placement has word triple `(i, j, ℓ) ∈ topTriangleCases`. Each of its 276 cells (the eight split
triples divided by all sign choices of their listed actual areas, `(2, 3, 6)` with pattern
`(-, +, -, -)` once more by `[LPQ]`) is excluded by one of 168 fixed positive combinations of the
products of the 28 affine factors (nonnegative by (1)–(8)) and the signed actual-triangle costs
with the strengthened occupancy rule of `C1_ONE_LOWER_SIDE_CAP.md` Section 4, whose unit-cube
bound (13) is at most `-3/4` (largest `-3295947656639/3346168627200`). Coverage by the reuse rule.
`hand/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 193-321 (data
`c1_one_lower_top_triangle_certificates.json`, checker `check_c1_one_lower_top_triangle.py`).
Uses: C1_ONE_LOWER_TOP_TRIANGLE:(1), C1_ONE_LOWER_TOP_TRIANGLE:(3), C1_ONE_LOWER_TOP_TRIANGLE:(4),
C1_ONE_LOWER_TOP_TRIANGLE:(5), C1_ONE_LOWER_TOP_TRIANGLE:(7), C1_ONE_LOWER_TOP_TRIANGLE:(8),
C1_ONE_LOWER_TOP_CAP:(14), C1_ONE_LOWER_SIDE_CAP:(9). -/
theorem eq13 {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) (hfd : f ≤ d)
    {i j : Fin 4} {l : Fin 18} (hcase : (i, j, l) ∈ topTriangleCases)
    (hL : HasHullWord (hexagon h c d f X) L (C1OneLowerTopCap.lowerWord i))
    (hP : HasHullWord (hexagon h c d f X) P (capWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (C1OneLowerTopCap.upperWord l)) : False := by
  sorry

end Heilbronn.C1OneLowerTopTriangle
