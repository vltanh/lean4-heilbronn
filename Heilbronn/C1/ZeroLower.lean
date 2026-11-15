module

public import Heilbronn.C1.Setting

/-! # The C1 configuration with no point in the lower anchor triangle, §§1–4
(`hand/C1_ZERO_LOWER.md`)

Role: on the primary route, `hand/UNRESTRICTED.md` row `n₀ = 0` closes with Theorem 4
(`Heilbronn.C1ZeroLower.theorem4`, in `Heilbronn.C1.ZeroLowerCover`). This file holds §§1–4:
the cap and fan bounds of §1, Theorem 2 and Lemma 3 of §2 (which hold for every lower count
`n₀` and are reused by the one-lower notes `hand/C1_ONE_LOWER_*.md`), the occupancy list (9) of
§3 (for `n₀ = 0`), and the affine facts of §4 (again for every `n₀`).

Setting (`C1_ZERO_LOWER.md`, lines 1-28): the C1 configuration `c1Config h c d f W X Y Z` with
`C1Anchors h c d f` (`0 < d ≤ h < 1`, `0 < f ≤ c < 1`), free points in the closed square, and
least triangle area at least `A₀`. Doubled areas are compared with `s = 8/73 < 2A₀`;
`K = 4 + 2√3` and `ρ = 49/60 < Ks`. The normalization (1) `f ≤ d` (by transposition) is a
hypothesis `hfd` exactly where the manuscript uses it (Theorem 2, the table after (7), the
`HDF` capacity, the region bounds and the occupancy list (9)).

Results:
* `eq2`: `hf, cd ≥ s`, `d, f ≤ 1 - s`, all anchor parameters and free coordinates `≥ s`;
* `lemma1` (**Lemma 1**): two points in a side cap;
* `claim_side_cap_capacity`, `eq4`: at most two free points in each side cap / fan;
* `eq5_6`: one point in a side cap;
* `eq7`, `eq7_table`: the top-cap counts;
* `theorem2` (**Theorem 2**): exclusions for several multiple-cap occupancies (under (1));
* `lemma3` (**Lemma 3**): the complete three-top-cap hull;
* `claim_Q0_capacity`, `eq9`: the zero-lower occupancy list;
* `claim_HDF_capacity_one`, `claim_region_bounds`: the affine bounds of §4.

Implicit in the manuscript: "competitive" means every actual triangle of the nine-point
configuration has area at least `A₀` (written `A₀ ≤ minTriangleArea (c1Config …)`); the caps
`𝓡, 𝓣, 𝓛` are taken as the sign conditions `InRightCap`, `InTopCap`, `InLeftCap`, which
describe `conv{…} \ chord` for points of the square.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1ZeroLower

open Heilbronn.C1

/-! ### §1. General cap and fan bounds -/

/-- **Claim** (`C1_ZERO_LOWER:eq2`). The anchor areas give `hf, cd ≥ s` and `d, f ≤ 1 - s`;
hence `h, c, d, f ≥ s`, and every coordinate of every free point is at least `s = 8/73`.
`hand/C1_ZERO_LOWER.md`, lines 47-57. -/
theorem eq2 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    8 / 73 ≤ h * f ∧ 8 / 73 ≤ c * d ∧ d ≤ 1 - 8 / 73 ∧ f ≤ 1 - 8 / 73 ∧
      8 / 73 ≤ h ∧ 8 / 73 ≤ c ∧ 8 / 73 ≤ d ∧ 8 / 73 ≤ f ∧
      ∀ i, 8 / 73 ≤ (freePt W X Y Z i).1 ∧ 8 / 73 ≤ (freePt W X Y Z i).2 := by
  sorry

/-- **Lemma 1** (`C1_ZERO_LOWER:Lemma1`). If the right cap `𝓡` contains two free points, one of
them, `Y`, lies strictly in `CDX ∩ ODX`, where `X` is the other; moreover `d ≥ Ks > ρ`,
`d(1 - c) ≥ 3s` and `c ≤ 1 - 3s` (3). Transposed: if the left cap `𝓛` contains two free points,
one lies strictly in the triangle formed by `H, F` and the other, and `f ≥ Ks`,
`f(1 - h) ≥ 3s`. Here `s = 8/73`, `K = 4 + 2√3`, `ρ = 49/60`.
`hand/C1_ZERO_LOWER.md`, lines 59-99.
Uses: TYPE_II:claim-support-normalization, TYPE_II:EndpointTriangleTheorem. -/
theorem lemma1 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    (∀ i j : Fin 4, i ≠ j → InRightCap c d (freePt W X Y Z i) →
        InRightCap c d (freePt W X Y Z j) →
        ((InsideTri (freePt W X Y Z j) (ptC c) (ptD d) (freePt W X Y Z i) ∧
            InsideTri (freePt W X Y Z j) ptO (ptD d) (freePt W X Y Z i)) ∨
          (InsideTri (freePt W X Y Z i) (ptC c) (ptD d) (freePt W X Y Z j) ∧
            InsideTri (freePt W X Y Z i) ptO (ptD d) (freePt W X Y Z j))) ∧
        (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ d ∧ 49 / 60 < d ∧
        3 * (8 / 73) ≤ d * (1 - c) ∧ c ≤ 1 - 3 * (8 / 73)) ∧
    (∀ i j : Fin 4, i ≠ j → InLeftCap f h (freePt W X Y Z i) →
        InLeftCap f h (freePt W X Y Z j) →
        (InsideTri (freePt W X Y Z j) (ptH h) (ptF f) (freePt W X Y Z i) ∨
          InsideTri (freePt W X Y Z i) (ptH h) (ptF f) (freePt W X Y Z j)) ∧
        (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ f ∧ 3 * (8 / 73) ≤ f * (1 - h)) := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:claim-side-cap-capacity`). Each side cap contains at most two free
points. `hand/C1_ZERO_LOWER.md`, lines 101-106.
Uses: TYPE_II_COMPLETION:Theorem1. -/
theorem claim_side_cap_capacity {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    regionCount h c d f .right W X Y Z ≤ 2 ∧ regionCount h c d f .left W X Y Z ≤ 2 := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:eq4`). The fans: at most two free points lie below `OD`, and at
most two above `OF`. `hand/C1_ZERO_LOWER.md`, lines 108-117.
Uses: TYPE_II_COMPLETION:Theorem1. -/
theorem eq4 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    countFree (BelowOD d) W X Y Z ≤ 2 ∧ countFree (AboveOF f) W X Y Z ≤ 2 := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:eq5-6`). A right-cap point `X = (x, y)` gives `cd(x - c) ≥ s`,
hence `dc(1 - c) ≥ s` (5); a left-cap point gives `fh(y - h) ≥ s`, hence `fh(1 - h) ≥ s` (6).
Consequently a right-cap point forces `d ≥ 4s` and `1/7 < c < 6/7`, and a left-cap point forces
`f ≥ 4s` and `1/7 < h < 6/7`. `hand/C1_ZERO_LOWER.md`, lines 119-140.
Uses: C1_ZERO_LOWER:eq2. -/
theorem eq5_6 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    (∀ i, InRightCap c d (freePt W X Y Z i) →
        8 / 73 ≤ c * d * ((freePt W X Y Z i).1 - c) ∧ 8 / 73 ≤ d * c * (1 - c)) ∧
    (∀ i, InLeftCap f h (freePt W X Y Z i) →
        8 / 73 ≤ f * h * ((freePt W X Y Z i).2 - h) ∧ 8 / 73 ≤ f * h * (1 - h)) ∧
    ((∃ i, InRightCap c d (freePt W X Y Z i)) →
        4 * (8 / 73) ≤ d ∧ 1 / 7 < c ∧ c < 6 / 7) ∧
    ((∃ i, InLeftCap f h (freePt W X Y Z i)) →
        4 * (8 / 73) ≤ f ∧ 1 / 7 < h ∧ h < 6 / 7) := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:eq7`). With `Ω₀ = (1 - d)(1 - f)` the doubled area of the top cap:
if it contains at least one, two, or three free points, then `Ω₀ ≥ s`, `Ω₀ ≥ 3s`, and
`Ω₀ ≥ s/(3 - 2√2) > 7/11` respectively; four free points in the top cap are impossible.
`hand/C1_ZERO_LOWER.md`, lines 142-161.
Uses: TYPE_II:FourPointEndpointLemma, TYPE_II:EndpointTriangleTheorem,
TYPE_II_COMPLETION:Theorem1. -/
theorem eq7 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    (1 ≤ regionCount h c d f .top W X Y Z → 8 / 73 ≤ topCapArea d f) ∧
    (2 ≤ regionCount h c d f .top W X Y Z → 3 * (8 / 73) ≤ topCapArea d f) ∧
    (3 ≤ regionCount h c d f .top W X Y Z →
        (8 / 73) / (3 - 2 * Real.sqrt 2) ≤ topCapArea d f ∧ 7 / 11 < topCapArea d f) ∧
    regionCount h c d f .top W X Y Z ≤ 3 := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:eq7-table`, the table after (7); made-up id). Under (1) `f ≤ d`:
at least one top-cap point gives `f < 67/100`, `d ≤ 57/65`; at least two give `f < 3/7`,
`d ≤ 41/65`; three give `f < 13/64`, `d ≤ 204/715`. `hand/C1_ZERO_LOWER.md`, lines 163-175.
Uses: C1_ZERO_LOWER:eq7, C1_ZERO_LOWER:eq2. -/
theorem eq7_table {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f) (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    (1 ≤ regionCount h c d f .top W X Y Z → f < 67 / 100 ∧ d ≤ 57 / 65) ∧
    (2 ≤ regionCount h c d f .top W X Y Z → f < 3 / 7 ∧ d ≤ 41 / 65) ∧
    (3 ≤ regionCount h c d f .top W X Y Z → f < 13 / 64 ∧ d ≤ 204 / 715) := by
  sorry

/-! ### §2. Complete exclusions for several multiple-cap occupancies -/

/-- **Theorem 2** (`C1_ZERO_LOWER:Theorem2`). Under (1) `f ≤ d`, for every competitive C1
configuration (any lower count): (i) the left cap contains at most one free point; (ii) if the
right cap contains two, the left cap is empty and the top cap contains at most one; (iii) if the
left cap is occupied, the top cap contains at most one; (iv) if the right cap is occupied, the
top cap contains at most two. `hand/C1_ZERO_LOWER.md`, lines 177-219.
Uses: C1_ZERO_LOWER:Lemma1, C1_ZERO_LOWER:eq5-6, C1_ZERO_LOWER:eq7, C1_ZERO_LOWER:eq2. -/
theorem theorem2 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f) (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    regionCount h c d f .left W X Y Z ≤ 1 ∧
    (regionCount h c d f .right W X Y Z = 2 →
        regionCount h c d f .left W X Y Z = 0 ∧ regionCount h c d f .top W X Y Z ≤ 1) ∧
    (1 ≤ regionCount h c d f .left W X Y Z → regionCount h c d f .top W X Y Z ≤ 1) ∧
    (1 ≤ regionCount h c d f .right W X Y Z → regionCount h c d f .top W X Y Z ≤ 2) := by
  sorry

/-- **Lemma 3** (`C1_ZERO_LOWER:Lemma3`, the complete three-top-cap hull). If the top cap
contains three free points, exactly two of them, `R, S`, are vertices of their joint hull with
`D, F`, its cyclic (counterclockwise) order is `D, R, S, F`, and the third point `T` satisfies
`T ∈ DFR ∩ DFS` (8). `hand/C1_ZERO_LOWER.md`, lines 221-239.
Uses: C1_ZERO_LOWER:eq2, CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II:claim-support-normalization, TYPE_II:EndpointTriangleTheorem. -/
theorem lemma3 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (hT : regionCount h c d f .top W X Y Z = 3) :
    ∃ r s t : Fin 4, r ≠ s ∧ r ≠ t ∧ s ≠ t ∧
      InTopCap d f (freePt W X Y Z r) ∧ InTopCap d f (freePt W X Y Z s) ∧
      InTopCap d f (freePt W X Y Z t) ∧
      0 < sarea (ptD d) (freePt W X Y Z r) (freePt W X Y Z s) ∧
      0 < sarea (freePt W X Y Z r) (freePt W X Y Z s) (ptF f) ∧
      0 < sarea (freePt W X Y Z s) (ptF f) (ptD d) ∧
      0 < sarea (ptF f) (ptD d) (freePt W X Y Z r) ∧
      InTriangle (freePt W X Y Z t) (ptD d) (freePt W X Y Z r) (ptF f) ∧
      InTriangle (freePt W X Y Z t) (ptD d) (freePt W X Y Z s) (ptF f) := by
  sorry

/-! ### §3. The complete zero-lower occupancy list -/

/-- **Claim** (`C1_ZERO_LOWER:claim-Q0-capacity`, made-up id). If no free point is in `OHC`,
each free point lies in exactly one of the upper quadrilateral `HCDF` and the three caps; the
doubled area `W = 1 - (h - d)(c - f)` of `HCDF` is at most `1`, and `HCDF` contains at most two
free points. `hand/C1_ZERO_LOWER.md`, lines 243-253.
Uses: QUADRILATERAL_HULL:Theorem2, QUADRILATERAL_HULL:Corollary3. -/
-- FLAG: lines 251-253 say three points in `HCDF` "would give `W ≥ 10s > 1`, by the seven-point
-- quadrilateral theorem"; QUADRILATERAL_HULL Theorem 2 gives `W ≥ (Γ+1)·2A₀` with
-- `Γ + 1 = (13+3√5)/2 ≈ 9.854 < 10`, not `10s`. The conclusion `W > 1` (capacity two) still
-- holds (`(Γ+1)·s > 1`); only the constant is misquoted.
theorem claim_Q0_capacity {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (h0 : lowerCount h c W X Y Z = 0) :
    (∀ i, ∃! r : Region, InRegion h c d f r (freePt W X Y Z i)) ∧
      upperQuadArea h c d f ≤ 1 ∧ regionCount h c d f .upper W X Y Z ≤ 2 := by
  sorry

/-- The nine occupancy rows `(n_U, n_R, n_T, n_L)` of `C1_ZERO_LOWER.md` (9). -/
def occupancyRows : List (ℕ × ℕ × ℕ × ℕ) :=
  [(2, 2, 0, 0), (2, 1, 1, 0), (2, 1, 0, 1), (2, 0, 2, 0), (2, 0, 1, 1), (1, 2, 1, 0),
    (1, 1, 2, 0), (1, 1, 1, 1), (1, 0, 3, 0)]

/-- **Claim** (`C1_ZERO_LOWER:eq9`). Under (1) `f ≤ d`, if `OHC` is empty, the occupancies
`(n_U, n_R, n_T, n_L)` of `HCDF, 𝓡, 𝓣, 𝓛` form one of the nine rows (9). In particular at least
one free point is in `HCDF` and at least two are outside the pentagon.
`hand/C1_ZERO_LOWER.md`, lines 255-268.
Uses: C1_ZERO_LOWER:Theorem2, C1_ZERO_LOWER:claim-side-cap-capacity, C1_ZERO_LOWER:eq7,
C1_ZERO_LOWER:claim-Q0-capacity. -/
theorem eq9 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f) (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (h0 : lowerCount h c W X Y Z = 0) :
    (regionCount h c d f .upper W X Y Z, regionCount h c d f .right W X Y Z,
      regionCount h c d f .top W X Y Z, regionCount h c d f .left W X Y Z) ∈ occupancyRows := by
  sorry

/-! ### §4. The remaining affine bounds -/

/-- **Claim** (`C1_ZERO_LOWER:claim-HDF-capacity-one`, made-up id). Under (1) `f ≤ d`:
`U = [HDF] < ρ = 49/60`, and the actual triangle `HDF` contains at most one free point (any
lower count). `hand/C1_ZERO_LOWER.md`, lines 272-285.
Uses: C1_ZERO_LOWER:eq2, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_HDF_capacity_one {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    sarea (ptD d) (ptF f) (ptH h) < 49 / 60 ∧
      countFree (fun P => InTriangle P (ptD d) (ptF f) (ptH h)) W X Y Z ≤ 1 := by
  sorry

/-- **Claim** (`C1_ZERO_LOWER:claim-region-bounds`, made-up id; the table of §4). Under (1)
`f ≤ d`, every free point `X = (x, y)` (any lower count) satisfies, by region:
`HCDF`: `x, y ≤ 1 - s`; `𝓡`: `x ≤ 1`, `d - y ≥ s`, `x - c ≥ s`; `𝓣`: `x, y ≤ 1`, `x - f ≥ s`,
`y - d ≥ s`; `𝓛`: `f - x ≥ 8/41`, `y ≤ 1`, `y - h ≥ 8/65`, `x > 7s/6`.
`hand/C1_ZERO_LOWER.md`, lines 287-336.
Uses: C1_ZERO_LOWER:eq2, C1_ZERO_LOWER:eq5-6. -/
theorem claim_region_bounds {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) (i : Fin 4) :
    (InUpperQuad h c d f (freePt W X Y Z i) →
        (freePt W X Y Z i).1 ≤ 1 - 8 / 73 ∧ (freePt W X Y Z i).2 ≤ 1 - 8 / 73) ∧
    (InRightCap c d (freePt W X Y Z i) →
        (freePt W X Y Z i).1 ≤ 1 ∧ 8 / 73 ≤ d - (freePt W X Y Z i).2 ∧
        8 / 73 ≤ (freePt W X Y Z i).1 - c) ∧
    (InTopCap d f (freePt W X Y Z i) →
        (freePt W X Y Z i).1 ≤ 1 ∧ (freePt W X Y Z i).2 ≤ 1 ∧
        8 / 73 ≤ (freePt W X Y Z i).1 - f ∧ 8 / 73 ≤ (freePt W X Y Z i).2 - d) ∧
    (InLeftCap f h (freePt W X Y Z i) →
        8 / 41 ≤ f - (freePt W X Y Z i).1 ∧ (freePt W X Y Z i).2 ≤ 1 ∧
        8 / 65 ≤ (freePt W X Y Z i).2 - h ∧ 7 * (8 / 73) / 6 < (freePt W X Y Z i).1) := by
  sorry

end Heilbronn.C1ZeroLower
