module

public import Heilbronn.C1.OneLower.EightHull

/-! # The two remaining convex top hulls with one lower C1 point (`hand/C1_ONE_LOWER_CONVEX_TOP.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses the
Theorem for the occupancy row `(U, R, T, L_cap) = (1, 0, 2, 0)` with a quadrilateral top hull
(mode `upper`) and for the row `(0, 0, 3, 0)` (three top-cap points, mode `cap`). Its lower-word
list (9) is reused by `C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`.

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1`, minimum triangle area at least
`A₀`; configuration `c1Config h c d f X Y L Q` with `L ∈ OHC` and

* placement 1 (`Upper`): `Q ∈ HCDF`, `X, Y` in the top cap with `D, X, Y, F` convex in this
  cyclic order;
* placement 2 (`ThreeTop`): `X, Y, Q` in the top cap, in any order; by Lemma 3 of
  `C1_ZERO_LOWER.md` they can be named (`Cap`) so that `D, X, Y, F` is the convex top hull and
  `Q ∈ DFX ∩ DFY`.

In both modes the full hull is the heptagon `O, C, D, X, Y, F, H` (1) with interior points `L, Q`.
The proof transposes first to get `f ≤ d`. Thresholds `s = 8/73`, `ρ = 49/60`.

**Results.**
* `mainTheorem` (`C1_ONE_LOWER_CONVEX_TOP:Theorem`), with `transpose`.
* `claim_hull` (one hull for both modes), `eq3`, `claim_table` (`Ω = (1-d)(1-f)` bounds),
  `eq4`–`eq7`, `claim_cap1`, `claim_cover` (57 words; 168 + 52 cells), `eq12` (the certificate
  package).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerConvexTop

open Heilbronn.C1
open Heilbronn.C1OneLowerTopCap (HullWord HasHullWord hullInside ConvexPolygon AtMostInside)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### The placements -/

/-- Placement 1 (mode `upper`): C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`; minimum triangle area
at least `A₀` for `c1Config h c d f X Y L Q`; `L` strictly inside `OHC`; `Q` strictly inside
`HCDF`; `X, Y` in the top cap (possibly on a side of the square) with convex hull `D, X, Y, F` in
this counterclockwise order (`[DXY] > 0`, `[XYF] > 0`). -/
structure Upper (h c d f : ℝ) (X Y L Q : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f X Y L Q)
  lower : InLower h c L
  upper : InUpperQuad h c d f Q
  topX : InTopCap d f X
  topXSq : X ∈ unitSquare
  topY : InTopCap d f Y
  topYSq : Y ∈ unitSquare
  convexDXY : 0 < sarea (ptD d) X Y
  convexXYF : 0 < sarea X Y (ptF f)

/-- Placement 2: C1 anchors; minimum triangle area at least `A₀` for `c1Config h c d f X Y L Q`;
`L` strictly inside `OHC`; the other three free points `X, Y, Q` in the top cap (in any order,
possibly on a side of the square). -/
structure ThreeTop (h c d f : ℝ) (X Y L Q : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f X Y L Q)
  lower : InLower h c L
  topX : InTopCap d f X
  topXSq : X ∈ unitSquare
  topY : InTopCap d f Y
  topYSq : Y ∈ unitSquare
  topQ : InTopCap d f Q
  topQSq : Q ∈ unitSquare

/-- Mode `cap`: placement 2 with the names of Section 1: `D, X, Y, F` is the convex top hull
(`[DXY] > 0`, `[XYF] > 0`) and `Q ∈ DFX ∩ DFY` (2). -/
structure Cap (h c d f : ℝ) (X Y L Q : Point) : Prop extends ThreeTop h c d f X Y L Q where
  convexDXY : 0 < sarea (ptD d) X Y
  convexXYF : 0 < sarea X Y (ptF f)
  innerX : InTriangle Q (ptD d) X (ptF f)
  innerY : InTriangle Q (ptD d) Y (ptF f)

/-- The hull heptagon (1), `V₀, …, V₆ = O, C, D, X, Y, F, H`. -/
def heptagon (h c d f : ℝ) (X Y : Point) : Fin 7 → Point :=
  ![ptO, ptC c, ptD d, X, Y, ptF f, ptH h]

/-- **Theorem** (`C1_ONE_LOWER_CONVEX_TOP:Theorem`). Neither placement is competitive:
(1) `L ∈ OHC`, `Q ∈ HCDF`, and two top-cap points `X, Y` with convex hull `D, X, Y, F` in that
cyclic order; (2) `L ∈ OHC` and the other three free points in the top cap. No order `f ≤ d` is
assumed: the proof transposes first. `hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 13-21 and 224-231.
Uses: C1_ONE_LOWER_CONVEX_TOP:claim-hull, C1_ONE_LOWER_CONVEX_TOP:claim-cover,
C1_ONE_LOWER_CONVEX_TOP:(12). -/
theorem mainTheorem {h c d f : ℝ} {X Y L Q : Point}
    (hS : Upper h c d f X Y L Q ∨ ThreeTop h c d f X Y L Q) : False := by
  sorry

section

variable {h c d f : ℝ} {X Y L Q : Point}

/-- Helper: transposing the square maps both placements with parameters `(h, c, d, f)` to the same
placements with `(c, h, f, d)`; transposition reverses orientation, so the two top hull vertices
exchange names. `hand/C1_ONE_LOWER_CONVEX_TOP.md`, line 29. -/
theorem transpose :
    (Upper h c d f X Y L Q → Upper c h f d Y.swap X.swap L.swap Q.swap) ∧
      (ThreeTop h c d f X Y L Q → ThreeTop c h f d Y.swap X.swap L.swap Q.swap) := by
  sorry

/-! ### Section 1: one hull describes both placements -/

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:claim-hull`). In mode `upper` the full hull is the convex
heptagon `O, C, D, X, Y, F, H` (1). In placement 2, Lemma 3 of `C1_ZERO_LOWER.md` (which needs no
zero-lower hypothesis) shows that exactly two top points are hull vertices: naming them `X, Y` in
order `D, X, Y, F` and the third `Q`, the placement is in mode `cap` (`Q ∈ DFX ∩ DFY`), whose full
hull is again (1). `hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 27-45.
Uses: C1_ZERO_LOWER:Lemma3. -/
theorem claim_hull :
    (Upper h c d f X Y L Q → ConvexPolygon (heptagon h c d f X Y)) ∧
      (Cap h c d f X Y L Q → ConvexPolygon (heptagon h c d f X Y)) ∧
      (ThreeTop h c d f X Y L Q →
        Cap h c d f X Y L Q ∨ Cap h c d f Y X L Q ∨ Cap h c d f X Q L Y ∨ Cap h c d f Q X L Y ∨
          Cap h c d f Y Q L X ∨ Cap h c d f Q Y L X) := by
  sorry

/-! ### Section 2: bounds from the occupied top hull -/

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:(3)`). The lower point and the anchor costs give `hc ≥ 3s`,
`hf, cd ≥ s`, hence `h, c ≥ 3s` and `d, f ≥ s`. `hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 51-53. -/
theorem eq3 (hM : Upper h c d f X Y L Q ∨ ThreeTop h c d f X Y L Q) :
    3 * s ≤ h * c ∧ s ≤ h * f ∧ s ≤ c * d ∧ 3 * s ≤ h ∧ 3 * s ≤ c ∧ s ≤ d ∧ s ≤ f := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:table`). With `Ω = (1-d)(1-f)` and `f ≤ d`: in mode
`upper`, the four-point convex endpoint lemma gives `Ω ≥ 4s`, hence `d ≤ 33/65`, `f < 17/50`; in
mode `cap`, the five-point endpoint theorem gives `Ω ≥ s/(3 - 2√2) > 7/11`, hence `d ≤ 204/715`,
`f < 13/64` (using `Ω ≤ (1-s)(1-d)`, `Ω ≤ (1-f)²`, `4s > (33/50)²`, `7/11 > (51/64)²`).
`hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 49-67.
Uses: TYPE_II:FourPointEndpointLemma, TYPE_II:EndpointTriangleTheorem. -/
theorem claim_table (hfd : f ≤ d) :
    (Upper h c d f X Y L Q →
        4 * s ≤ (1 - d) * (1 - f) ∧ d ≤ 33 / 65 ∧ f < 17 / 50) ∧
      (Cap h c d f X Y L Q →
        7 / 11 < (1 - d) * (1 - f) ∧ d ≤ 204 / 715 ∧ f < 13 / 64) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:(4)`). For either outer cap point `Z = (z, w)`,
`-[DFZ] = (1-d)(z-f) - (1-f)(1-w) = (1-f)(w-d) - (1-d)(1-z) ≥ s`, hence `z - f ≥ 8/65` and
`w - d ≥ 8/65`. `hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 69-77.
Uses: C1_ONE_LOWER_TOP_CAP:(3). -/
theorem eq4 (hM : Upper h c d f X Y L Q ∨ Cap h c d f X Y L Q) :
    8 / 65 ≤ X.1 - f ∧ 8 / 65 ≤ X.2 - d ∧ 8 / 65 ≤ Y.1 - f ∧ 8 / 65 ≤ Y.2 - d := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:(5)`). The convex-chain argument of Section 3 of the
eight-hull note applies to `D, X, Y, F` in both modes: `x_x - y_x ≥ s`, `y_y - x_y ≥ s`.
`hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 78-90. Uses: C1_ONE_LOWER_EIGHT_HULL:(13)-(14). -/
theorem eq5 (hM : Upper h c d f X Y L Q ∨ Cap h c d f X Y L Q) :
    s ≤ X.1 - Y.1 ∧ s ≤ Y.2 - X.2 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:(6)`). The lower subdivision: `ℓ_x, ℓ_y ≥ s`,
`c - ℓ_x, h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1 - s`. `hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 91-95. -/
theorem eq6 (hM : Upper h c d f X Y L Q ∨ Cap h c d f X Y L Q) :
    s ≤ L.1 ∧ s ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:(7)`). Mode `upper`: `s ≤ q_x, q_y ≤ 1 - s` (projection
identities of `C1_ZERO_LOWER.md` §4). Mode `cap`: (4) applies to `Q`, and by (2)
`[DXQ] = (x_y-d)(1-q_x) - (1-x_x)(q_y-d) ≥ s`, `[XFQ] = (x_x-f)(1-q_y) - (1-x_y)(q_x-f) ≥ s`, so
`q_x - f, q_y - d ≥ 8/65` and `q_x, q_y ≤ 1 - s`. `hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 96-109.
Uses: C1_ZERO_LOWER:claim-region-bounds, C1_ONE_LOWER_CONVEX_TOP:(4). -/
theorem eq7 :
    (Upper h c d f X Y L Q → s ≤ Q.1 ∧ s ≤ Q.2 ∧ Q.1 ≤ 1 - s ∧ Q.2 ≤ 1 - s) ∧
      (Cap h c d f X Y L Q →
        sarea (ptD d) X Q = (X.2 - d) * (1 - Q.1) - (1 - X.1) * (Q.2 - d) ∧
          sarea X (ptF f) Q = (X.1 - f) * (1 - Q.2) - (1 - X.2) * (Q.1 - f) ∧
          8 / 65 ≤ Q.1 - f ∧ 8 / 65 ≤ Q.2 - d ∧ Q.1 ≤ 1 - s ∧ Q.2 ≤ 1 - s) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:claim-cap1`). Under `f ≤ d`: `[OCD] = cd ≤ d < ρ` and
`[OFH] = fh ≤ f < ρ` (by the table), so `OCD` and `OFH` have capacity one (two-interior triangle
theorem); `HDF` has capacity one by Section 4 of `C1_ZERO_LOWER.md`. None of the three contains two
free points. `hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 111-115.
Uses: C1_ONE_LOWER_CONVEX_TOP:table, CORNER_FAMILIES:TwoInteriorPointLemma,
C1_ZERO_LOWER:claim-HDF-capacity-one. -/
theorem claim_cap1 (hfd : f ≤ d) (hM : Upper h c d f X Y L Q ∨ Cap h c d f X Y L Q) :
    AtMostInside 1 ptO (ptC c) (ptD d) (freePt X Y L Q) ∧
      AtMostInside 1 ptO (ptF f) (ptH h) (freePt X Y L Q) ∧
      AtMostInside 1 (ptD d) (ptF f) (ptH h) (freePt X Y L Q) := by
  sorry

end

/-! ### Section 3: the radial and pair-line cover -/

/-- The five lower words (9) for the heptagon (edge tests of `OCH`, indices `(0, 1, 6)`), in
lexicographic order; also the lower words of `C1_ONE_LOWER_RIGHT_TOP_TRIANGLE.md`. -/
def lowerWord : Fin 5 → HullWord 7 :=
  ![![1, 5, 5, 4, 3, 2, 1], ![2, 5, 4, 4, 3, 2, 1], ![3, 5, 4, 3, 3, 2, 1],
    ![4, 5, 4, 3, 2, 2, 1], ![5, 5, 4, 3, 2, 1, 1]]

/-- The 33 `Q`-words of mode `upper`: the words of (8) (57 in all) with positive edge tests
`(6,1), (1,2), (2,5), (5,6)` (`Q ∈ HCDF`), in lexicographic order. -/
def upperQWord : Fin 33 → HullWord 7 :=
  ![![1, 1, 5, 5, 4, 3, 2], ![1, 2, 5, 4, 4, 3, 2], ![1, 3, 5, 4, 3, 3, 2], ![1, 4, 5, 4, 3, 2, 2],
    ![2, 1, 3, 5, 4, 3, 3], ![2, 1, 4, 5, 4, 3, 2], ![2, 2, 3, 4, 4, 3, 3], ![2, 2, 4, 4, 4, 3, 2],
    ![2, 3, 3, 4, 3, 3, 3], ![2, 3, 4, 4, 3, 3, 2], ![2, 4, 3, 4, 3, 2, 3], ![2, 4, 4, 4, 3, 2, 2],
    ![3, 2, 3, 2, 4, 3, 4], ![3, 2, 3, 3, 4, 3, 3], ![3, 2, 4, 3, 4, 3, 2], ![3, 3, 3, 2, 3, 3, 4],
    ![3, 3, 3, 3, 3, 3, 3], ![3, 3, 4, 3, 3, 3, 2], ![3, 4, 3, 2, 3, 2, 4], ![3, 4, 3, 3, 3, 2, 3],
    ![3, 4, 4, 3, 3, 2, 2], ![4, 3, 3, 2, 1, 3, 5], ![4, 3, 3, 2, 2, 3, 4], ![4, 3, 3, 3, 2, 3, 3],
    ![4, 3, 4, 3, 2, 3, 2], ![4, 4, 3, 2, 1, 2, 5], ![4, 4, 3, 2, 2, 2, 4], ![4, 4, 3, 3, 2, 2, 3],
    ![4, 4, 4, 3, 2, 2, 2], ![5, 4, 3, 2, 1, 1, 5], ![5, 4, 3, 2, 2, 1, 4], ![5, 4, 3, 3, 2, 1, 3],
    ![5, 4, 4, 3, 2, 1, 2]]

/-- The 10 `Q`-words of mode `cap`: the words of (8) with positive edges of `(2,3,5)` and
`(2,4,5)` (`Q ∈ DXF ∩ DYF`) and negative `(2,5)` (`Q` beyond `DF`), in lexicographic order. -/
def capQWord : Fin 10 → HullWord 7 :=
  ![![2, 1, 2, 5, 4, 4, 3], ![2, 2, 2, 4, 4, 4, 3], ![2, 3, 2, 4, 3, 4, 3], ![3, 2, 2, 2, 4, 4, 4],
    ![3, 2, 2, 3, 4, 4, 3], ![3, 3, 2, 2, 3, 4, 4], ![3, 3, 2, 3, 3, 4, 3], ![4, 3, 2, 2, 1, 4, 5],
    ![4, 3, 2, 2, 2, 4, 4], ![4, 3, 2, 3, 2, 4, 3]]

/-- The capacity-one triangles of `claim_cap1` as index triples of the heptagon: `OFH, OCD, DFH`. -/
def capacityOneTriangles : List (Fin 7 × Fin 7 × Fin 7) := [(0, 5, 6), (0, 1, 2), (2, 5, 6)]

/-- The word pairs `(i, j)` (lower word `i`, `Q`-word `j`) not placing both points inside one of
the capacity-one triangles. -/
def pairCases {m : ℕ} (qWord : Fin m → HullWord 7) : List (Fin 5 × Fin m) :=
  (List.finRange 5).flatMap fun i =>
    ((List.finRange m).filter fun j =>
      !capacityOneTriangles.any fun t =>
        hullInside (lowerWord i) t.1 t.2.1 t.2.2 && hullInside (qWord j) t.1 t.2.1 t.2.2).map
      fun j => (i, j)

/-- The 157 base pairs of mode `upper` (168 cells after the splits of the table of Section 3). -/
def upperCases : List (Fin 5 × Fin 33) := pairCases upperQWord

/-- The 50 base pairs of mode `cap` (52 cells after the splits). -/
def capCases : List (Fin 5 × Fin 10) := pairCases capQWord

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:claim-cover`). Under `f ≤ d`, every placement is covered:
the words of `L, Q` for the heptagon (1) (entries `1 ≤ rᵢ ≤ 5`, complement relation (8); 57 words)
are a lower word (9) and a `Q`-word of the mode, forming a base pair of `upperCases` (mode
`upper`) or `capCases` (mode `cap`), by the capacity-one pruning. The pairs listed in the table
of Section 3 are split further by all signs of the listed actual triangles (ray order (10) fixes
the others).
`hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 117-173.
Uses: C1_ONE_LOWER_TOP_CAP:(12)-(13), C1_ONE_LOWER_CONVEX_TOP:claim-hull,
C1_ONE_LOWER_CONVEX_TOP:claim-cap1. -/
theorem claim_cover {h c d f : ℝ} {X Y L Q : Point} (hfd : f ≤ d) :
    (Upper h c d f X Y L Q → ∃ i j, (i, j) ∈ upperCases ∧
        HasHullWord (heptagon h c d f X Y) L (lowerWord i) ∧
        HasHullWord (heptagon h c d f X Y) Q (upperQWord j)) ∧
      (Cap h c d f X Y L Q → ∃ i j, (i, j) ∈ capCases ∧
        HasHullWord (heptagon h c d f X Y) L (lowerWord i) ∧
        HasHullWord (heptagon h c d f X Y) Q (capQWord j)) := by
  sorry

/-! ### Sections 4–5: the certificate package -/

/-- **Claim** (`C1_ONE_LOWER_CONVEX_TOP:(12)`). The certificate package: under `f ≤ d`, no
placement of either mode has its base pair in `upperCases`, resp. `capCases`. Each of the 168 and
52 cells is excluded by one of 155 fixed positive combinations (127 `upper`, 28 `cap`) of products
of the 30 affine factors (11) and the costs `(1-d)(1-f) - ω`, signed actual-triangle areas minus
`s, 3s, ρ` by certified occupancy, whose unit-cube bound (12) is at most `-3/4` (largest
`-3448691771523/3500729749504`). Coverage by the reuse rule.
`hand/C1_ONE_LOWER_CONVEX_TOP.md`, lines 175-231 (data `c1_one_lower_convex_top_certificates.json`,
checker `check_c1_one_lower_convex_top.py`).
Uses: C1_ONE_LOWER_CONVEX_TOP:table, C1_ONE_LOWER_CONVEX_TOP:(4), C1_ONE_LOWER_CONVEX_TOP:(5),
C1_ONE_LOWER_CONVEX_TOP:(6), C1_ONE_LOWER_CONVEX_TOP:(7), C1_ONE_LOWER_TOP_CAP:(14),
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq12 {h c d f : ℝ} {X Y L Q : Point} (hfd : f ≤ d) :
    (Upper h c d f X Y L Q → ∀ i j, (i, j) ∈ upperCases →
        HasHullWord (heptagon h c d f X Y) L (lowerWord i) →
        HasHullWord (heptagon h c d f X Y) Q (upperQWord j) → False) ∧
      (Cap h c d f X Y L Q → ∀ i j, (i, j) ∈ capCases →
        HasHullWord (heptagon h c d f X Y) L (lowerWord i) →
        HasHullWord (heptagon h c d f X Y) Q (capQWord j) → False) := by
  sorry

end Heilbronn.C1OneLowerConvexTop
