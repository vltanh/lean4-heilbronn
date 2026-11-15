module

public import Heilbronn.C1.OneLower.TopCap

/-! # Every eight-vertex C1 hull with one lower point is impossible (`hand/C1_ONE_LOWER_EIGHT_HULL.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses the
Theorem for the occupancy row `(U, R, T, L_cap) = (0, 1, 1, 1)` (mode `one_each`) and for the row
`(0, 1, 2, 0)` with a quadrilateral top hull (mode `two_top`). Its Section 3 ((13)–(14)) is
cited by `C1_ONE_LOWER_CONVEX_TOP.md`.

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1`, minimum triangle area at least
`A₀`, exactly one free point `L` in `OHC`; transposing if necessary, `f ≤ d` (line 21). "The full
hull has eight vertices" is `hullVertexCount (c1Config …) = 8`, with `IsHullVertex` defined by
Mathlib's `convexHull`. The two modes, with `R` in the right cap `𝓡`, `X, Y` in the caps:

| mode | free cap points | cyclic hull order |
|---|---|---|
| `OneEach` | `R ∈ 𝓡, X ∈ 𝓣, Y ∈ 𝓛` | `O, C, R, D, X, F, Y, H` |
| `TwoTop` | `R ∈ 𝓡, X, Y ∈ 𝓣`, `D, X, Y, F` convex | `O, C, R, D, X, Y, F, H` |

and the configuration is `c1Config h c d f R X Y L`. Threshold `s = 8/73` (local notation).

**Results.**
* `mainTheorem` (`C1_ONE_LOWER_EIGHT_HULL:Theorem`), with `transpose`; `claim_patterns` (the
  reduction to the two modes).
* `eq1`, `eq2` (both modes); `eq3`–`eq7` (`one_each`; FLAG at `eq4`); `eq9`–`eq12`, `eq15`
  (`two_top`); `eq13_14` (the order of two top-cap vertices, general); `eq17_18` (the six words);
  `eq19_20` (the twelve certificates).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerEightHull

open Heilbronn.C1
open Heilbronn.C1OneLowerTopCap (HullWord HasHullWord ConvexPolygon)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-! ### Hull vertices -/

/-- The point `P i` is a vertex of the convex hull of the configuration `P`: it is not in the
convex hull of the other points. -/
def IsHullVertex {n : ℕ} (P : Fin n → Point) (i : Fin n) : Prop :=
  P i ∉ convexHull ℝ (P '' {j | j ≠ i})

open Classical in
/-- The number of vertices of the full convex hull of the configuration `P`. -/
def hullVertexCount {n : ℕ} (P : Fin n → Point) : ℕ := (Finset.univ.filter (IsHullVertex P)).card

/-! ### The two modes -/

/-- Mode `one_each`: `R` in the right cap, `X` in the top cap, `Y` in the left cap (each possibly
on a side of the square), `L` strictly inside `OHC`; C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`
and minimum triangle area at least `A₀` for `c1Config h c d f R X Y L`. The hull is the octagon
`O, C, R, D, X, F, Y, H`. -/
structure OneEach (h c d f : ℝ) (R X Y L : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f R X Y L)
  lower : InLower h c L
  right : InRightCap c d R
  rightSq : R ∈ unitSquare
  top : InTopCap d f X
  topSq : X ∈ unitSquare
  left : InLeftCap f h Y
  leftSq : Y ∈ unitSquare

/-- Mode `two_top`: `R` in the right cap, `X, Y` in the top cap with `D, X, Y, F` a convex
quadrilateral in this counterclockwise order (`[DXY] > 0`, `[XYF] > 0`), `L` strictly inside
`OHC`; C1 anchors and minimum triangle area at least `A₀` for `c1Config h c d f R X Y L`. The hull
is the octagon `O, C, R, D, X, Y, F, H`. -/
structure TwoTop (h c d f : ℝ) (R X Y L : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f R X Y L)
  lower : InLower h c L
  right : InRightCap c d R
  rightSq : R ∈ unitSquare
  topX : InTopCap d f X
  topXSq : X ∈ unitSquare
  topY : InTopCap d f Y
  topYSq : Y ∈ unitSquare
  convexDXY : 0 < sarea (ptD d) X Y
  convexXYF : 0 < sarea X Y (ptF f)

/-- The octagon `V₀, …, V₇ = O, C, R, D, X, F, Y, H` of mode `one_each`. -/
def octagonOneEach (h c d f : ℝ) (R X Y : Point) : Fin 8 → Point :=
  ![ptO, ptC c, R, ptD d, X, ptF f, Y, ptH h]

/-- The octagon `V₀, …, V₇ = O, C, R, D, X, Y, F, H` of mode `two_top`. -/
def octagonTwoTop (h c d f : ℝ) (R X Y : Point) : Fin 8 → Point :=
  ![ptO, ptC c, R, ptD d, X, Y, ptF f, ptH h]

/-- **Theorem** (`C1_ONE_LOWER_EIGHT_HULL:Theorem`). The full convex hull of a competitive C1
configuration with exactly one free point in `OHC` cannot have eight vertices. (No order `f ≤ d`
is assumed: the note transposes first, line 21.)
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 19-24 and 349-351.
Uses: C1_ONE_LOWER_EIGHT_HULL:claim-patterns, C1_ONE_LOWER_EIGHT_HULL:(17)-(18),
C1_ONE_LOWER_EIGHT_HULL:(19)-(20). -/
theorem mainTheorem {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (h8 : hullVertexCount (c1Config h c d f W X Y Z) = 8) : False := by
  sorry

/-- Helper (the transposition of line 21): transposing the square, `(x, y) ↦ (y, x)`, maps
`c1Config h c d f W X Y Z` to `c1Config c h f d W' X' Y' Z'` (primes: swapped coordinates) and
keeps the number of hull vertices and the lower count; so `f ≤ d` may be assumed.
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, line 21. -/
theorem transpose (h c d f : ℝ) (W X Y Z : Point) :
    hullVertexCount (c1Config c h f d W.swap X.swap Y.swap Z.swap) =
        hullVertexCount (c1Config h c d f W X Y Z) ∧
      lowerCount c h W.swap X.swap Y.swap Z.swap = lowerCount h c W X Y Z := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:claim-patterns`). Under `f ≤ d`, an eight-vertex hull with
exactly one lower point is, after naming the free points, in mode `one_each` or `two_top`: every
other free point is a hull vertex outside the anchor pentagon, the cap restrictions leave the
patterns `(n_R, n_T, n_L) = (1,1,1), (1,2,0), (2,1,0), (0,3,0)`, and the last two always have an
interior cap point (two right-cap points have triangular hull with `C, D`; three top-cap points
include an interior one), as does `(1, 2, 0)` with a triangular top hull.
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 33-63.
Uses: C1_ZERO_LOWER:Theorem2, C1_ZERO_LOWER:Lemma1, C1_ZERO_LOWER:Lemma3,
C1_ZERO_LOWER:claim-side-cap-capacity. -/
theorem claim_patterns {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f) (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (h8 : hullVertexCount (c1Config h c d f W X Y Z) = 8) :
    ∃ σ : Equiv.Perm (Fin 4),
      OneEach h c d f (freePt W X Y Z (σ 0)) (freePt W X Y Z (σ 1)) (freePt W X Y Z (σ 2))
          (freePt W X Y Z (σ 3)) ∨
        TwoTop h c d f (freePt W X Y Z (σ 0)) (freePt W X Y Z (σ 1)) (freePt W X Y Z (σ 2))
          (freePt W X Y Z (σ 3)) := by
  sorry

section

variable {h c d f : ℝ} {R X Y L : Point}

/-! ### Bounds in both modes -/

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(1)`). The lower triangle and the anchor areas give
`hc ≥ 3s`, `hf, cd ≥ s`, `d, f ≤ 1 - s`. `hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 71-75. -/
theorem eq1 (hM : OneEach h c d f R X Y L ∨ TwoTop h c d f R X Y L) :
    3 * s ≤ h * c ∧ s ≤ h * f ∧ s ≤ c * d ∧ d ≤ 1 - s ∧ f ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(2)`). Subdivision of `OHC` at `L`: `ℓ_x ≥ s/h`,
`ℓ_y ≥ s/c`, `c - ℓ_x ≥ 2s/h`, `h - ℓ_y ≥ 2s/c`, `ℓ_x + ℓ_y ≤ 1 - s`.
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 77-89. -/
theorem eq2 (hM : OneEach h c d f R X Y L ∨ TwoTop h c d f R X Y L) :
    s / h ≤ L.1 ∧ s / c ≤ L.2 ∧ 2 * s / h ≤ c - L.1 ∧ 2 * s / c ≤ h - L.2 ∧
      L.1 + L.2 ≤ 1 - s := by
  sorry

/-! ### Section 2: bounds for one point in each cap -/

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(3)`). Mode `one_each`: from `dc(1-c) ≥ s` and
`fh(1-h) ≥ s`, `d, f ≥ 4s`, `1/7 < c, h < 6/7`, `h, c ≥ 4s`.
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 93-103. Uses: C1_ZERO_LOWER:eq5-6,
C1_ONE_LOWER_EIGHT_HULL:(1). -/
theorem eq3 (hM : OneEach h c d f R X Y L) :
    4 * s ≤ d ∧ 4 * s ≤ f ∧ 1 / 7 < c ∧ c < 6 / 7 ∧ 1 / 7 < h ∧ h < 6 / 7 ∧ 4 * s ≤ h ∧
      4 * s ≤ c := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(4)`). Mode `one_each`: with
`-[CDR] = d(r_x-c) - (1-c)r_y = (1-c)(d-r_y) - d(1-r_x) ≥ s` and `c r_y ≥ s`:
`r_x - c ≥ 7s/6`, `r_y ≥ 7s/6`, `d - r_y ≥ s/(1-4s) = 8/41`.
FLAG (line 112-116, implicit step): `r_x - c ≥ s/d > 7s/6` needs `d < 6/7`, which follows from
`d ≤ h < 6/7`; "(3) proves" leaves this implicit (`d ≤ 1 - s` alone gives only `8/65 < 7s/6`).
The statement holds. `hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 105-117.
Uses: C1_ONE_LOWER_EIGHT_HULL:(3). -/
theorem eq4 (hM : OneEach h c d f R X Y L) :
    7 * s / 6 ≤ R.1 - c ∧ 7 * s / 6 ≤ R.2 ∧ 8 / 41 ≤ d - R.2 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(5)`). Mode `one_each`, top-cap point: `x_x - f ≥ 8/41`,
`x_y - d ≥ 8/41`. `hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 119-132.
Uses: C1_ONE_LOWER_TOP_CAP:(3), C1_ONE_LOWER_EIGHT_HULL:(3). -/
theorem eq5 (hM : OneEach h c d f R X Y L) : 8 / 41 ≤ X.1 - f ∧ 8 / 41 ≤ X.2 - d := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(6)`). Mode `one_each`, left-cap point, from
`[HFY] = f(y_y-h) - (1-h)y_x ≥ s`: `y_x ≥ 7s/6`, `f - y_x ≥ 8/41`, `y_y - h ≥ 7s/6`.
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 134-142. Uses: C1_ONE_LOWER_EIGHT_HULL:(3). -/
theorem eq6 (hM : OneEach h c d f R X Y L) :
    7 * s / 6 ≤ Y.1 ∧ 8 / 41 ≤ f - Y.1 ∧ 7 * s / 6 ≤ Y.2 - h := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(7)`). Mode `one_each`: `ℓ_x, ℓ_y ≥ 7s/6`,
`c - ℓ_x, h - ℓ_y ≥ 7s/3`. `hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 143-148.
Uses: C1_ONE_LOWER_EIGHT_HULL:(2), C1_ONE_LOWER_EIGHT_HULL:(3). -/
theorem eq7 (hM : OneEach h c d f R X Y L) :
    7 * s / 6 ≤ L.1 ∧ 7 * s / 6 ≤ L.2 ∧ 7 * s / 3 ≤ c - L.1 ∧ 7 * s / 3 ≤ h - L.2 := by
  sorry

/-! ### Section 3: bounds for the convex two-top pattern -/

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(9)`). Mode `two_top`: the convex case of the four-point,
two-prescribed-vertex triangle theorem (`D, X, Y, F` in the virtual triangle `DF(1,1)`) gives
`(1-d)(1-f) ≥ 4s`. `hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 166-173.
Uses: TYPE_II:FourPointEndpointLemma. -/
theorem eq9 (hM : TwoTop h c d f R X Y L) : 4 * s ≤ (1 - d) * (1 - f) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(10)`). Mode `two_top`, under `f ≤ d`: `f < 17/50` and
`d ≤ 33/65`. `hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 175-182.
Uses: C1_ONE_LOWER_EIGHT_HULL:(9). -/
theorem eq10 (hM : TwoTop h c d f R X Y L) (hfd : f ≤ d) : f < 17 / 50 ∧ d ≤ 33 / 65 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(11)`). Mode `two_top`, under `f ≤ d`: `d ≥ 4s`,
`c(1-c) ≥ 65s/33 > 55/256`, hence `3s ≤ c < 11/16` and `h ≥ 48s/11`.
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 183-195.
Uses: C1_ZERO_LOWER:eq5-6, C1_ONE_LOWER_EIGHT_HULL:(1), C1_ONE_LOWER_EIGHT_HULL:(10). -/
theorem eq11 (hM : TwoTop h c d f R X Y L) (hfd : f ≤ d) :
    4 * s ≤ d ∧ 65 * s / 33 ≤ c * (1 - c) ∧ 3 * s ≤ c ∧ c < 11 / 16 ∧ 48 * s / 11 ≤ h := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(12)`). Mode `two_top`, under `f ≤ d`: `r_x - c ≥ 65s/33`,
`r_y ≥ 16s/11`, `d - r_y ≥ 8/49`; `x_x - f, y_x - f ≥ 8/41`; `x_y - d, y_y - d ≥ 8/65`.
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 197-209.
Uses: C1_ONE_LOWER_EIGHT_HULL:(10), C1_ONE_LOWER_EIGHT_HULL:(11). -/
theorem eq12 (hM : TwoTop h c d f R X Y L) (hfd : f ≤ d) :
    65 * s / 33 ≤ R.1 - c ∧ 16 * s / 11 ≤ R.2 ∧ 8 / 49 ≤ d - R.2 ∧ 8 / 41 ≤ X.1 - f ∧
      8 / 41 ≤ Y.1 - f ∧ 8 / 65 ≤ X.2 - d ∧ 8 / 65 ≤ Y.2 - d := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(15)`). Mode `two_top`, under `f ≤ d`: `ℓ_x ≥ s`,
`ℓ_y ≥ 16s/11`, `c - ℓ_x ≥ 2s`, `h - ℓ_y ≥ 32s/11`. `hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines
247-252. Uses: C1_ONE_LOWER_EIGHT_HULL:(2), C1_ONE_LOWER_EIGHT_HULL:(11). -/
theorem eq15 (hM : TwoTop h c d f R X Y L) (hfd : f ≤ d) :
    s ≤ L.1 ∧ 16 * s / 11 ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 32 * s / 11 ≤ h - L.2 := by
  sorry

end

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(13)-(14)`). The order of two top-cap hull vertices: for
`X, Y` in the top cap (in the square) with `[DXY] ≥ s` and `[FXY] ≥ s`, put `u = x_x - y_x`,
`v = y_y - x_y`; then `[DXY] = u(x_y-d) - (1-x_x)v` and `[FXY] = v(y_x-f) - (1-y_y)u` (13); `u, v`
cannot have opposite signs or vanish, both negative contradicts the product of the two strict cap
inequalities, so `u, v > 0`, and then `u, v ≥ s` (14). Used in mode `two_top` and by
`C1_ONE_LOWER_CONVEX_TOP.md` (5). `hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 211-245. -/
theorem eq13_14 {h c d f : ℝ} (hA : C1Anchors h c d f) {X Y : Point} (hX : InTopCap d f X)
    (hXsq : X ∈ unitSquare) (hY : InTopCap d f Y) (hYsq : Y ∈ unitSquare)
    (hDXY : s ≤ sarea (ptD d) X Y) (hFXY : s ≤ sarea (ptF f) X Y) :
    sarea (ptD d) X Y = (X.1 - Y.1) * (X.2 - d) - (1 - X.1) * (Y.2 - X.2) ∧
      sarea (ptF f) X Y = (Y.2 - X.2) * (Y.1 - f) - (1 - Y.2) * (X.1 - Y.1) ∧
      s ≤ X.1 - Y.1 ∧ s ≤ Y.2 - X.2 := by
  sorry

/-! ### Section 4: six radial orders -/

/-- Helper (implicit in the manuscript, Section 1: "All cyclic hull triples have positive area",
lines 55-63): in either mode the hull octagon is convex (counterclockwise). -/
theorem convex_octagon {h c d f : ℝ} {R X Y L : Point} :
    (OneEach h c d f R X Y L → ConvexPolygon (octagonOneEach h c d f R X Y)) ∧
      (TwoTop h c d f R X Y L → ConvexPolygon (octagonTwoTop h c d f R X Y)) := by
  sorry

/-- The six octagon words (18): the solutions of (17) with entries in `{1, …, 6}` and `r₁ = 6`,
indexed from zero in the displayed order. -/
def octWord : Fin 6 → HullWord 8 :=
  ![![1, 6, 6, 5, 4, 3, 2, 1], ![2, 6, 5, 5, 4, 3, 2, 1], ![3, 6, 5, 4, 4, 3, 2, 1],
    ![4, 6, 5, 4, 3, 3, 2, 1], ![5, 6, 5, 4, 3, 2, 2, 1], ![6, 6, 5, 4, 3, 2, 1, 1]]

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(17)-(18)`). In either mode the lower point `L` has, for the
hull octagon, a radial word (`[VᵢV_{i+j}L] > 0 ↔ j ≤ rᵢ`, `1 ≤ rᵢ ≤ 6`, the complement relation
(17), and `r₁ = 6` since `L ∈ OHC`), and it is one of the six words (18).
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 268-301. Uses: C1_ONE_LOWER_TOP_CAP:(12)-(13). -/
theorem eq17_18 {h c d f : ℝ} {R X Y L : Point} :
    (OneEach h c d f R X Y L → ∃ i, HasHullWord (octagonOneEach h c d f R X Y) L (octWord i)) ∧
      (TwoTop h c d f R X Y L → ∃ i, HasHullWord (octagonTwoTop h c d f R X Y) L (octWord i)) := by
  sorry

/-! ### Section 5: the twelve exact contradictions -/

/-- **Claim** (`C1_ONE_LOWER_EIGHT_HULL:(19)-(20)`). The certificate package: under `f ≤ d`, for
each mode and each of the six words, no configuration exists. One fixed positive combination of the
terms (19) (products of one to three affine factors of the ordered lists (8) for `one_each`, (16)
for `two_top`, and the 84 costs: hull triangles minus `3s` or `s` according to whether the word
puts `L` inside, triangles `(i, j, L)` with the word sign minus `s`) has unit-cube bound (20) at
most `-3/4` (largest `-24902965599574904570203/25151865159450302873600`).
`hand/C1_ONE_LOWER_EIGHT_HULL.md`, lines 150-162, 254-266, 303-351 (data
`c1_one_lower_eight_hull_certificates.json`, checker `check_c1_one_lower_eight_hull.py`).
Uses: C1_ONE_LOWER_EIGHT_HULL:(1), C1_ONE_LOWER_EIGHT_HULL:(2), C1_ONE_LOWER_EIGHT_HULL:(3),
C1_ONE_LOWER_EIGHT_HULL:(4), C1_ONE_LOWER_EIGHT_HULL:(5), C1_ONE_LOWER_EIGHT_HULL:(6),
C1_ONE_LOWER_EIGHT_HULL:(7), C1_ONE_LOWER_EIGHT_HULL:(9), C1_ONE_LOWER_EIGHT_HULL:(10),
C1_ONE_LOWER_EIGHT_HULL:(11), C1_ONE_LOWER_EIGHT_HULL:(12), C1_ONE_LOWER_EIGHT_HULL:(13)-(14),
C1_ONE_LOWER_EIGHT_HULL:(15). -/
theorem eq19_20 {h c d f : ℝ} {R X Y L : Point} (hfd : f ≤ d) :
    (OneEach h c d f R X Y L →
        ∀ i, HasHullWord (octagonOneEach h c d f R X Y) L (octWord i) → False) ∧
      (TwoTop h c d f R X Y L →
        ∀ i, HasHullWord (octagonTwoTop h c d f R X Y) L (octWord i) → False) := by
  sorry

end Heilbronn.C1OneLowerEightHull
