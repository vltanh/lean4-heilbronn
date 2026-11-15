module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.CellI

/-! # Complete exclusion of unbalanced right support cell III (`hand/UNBALANCED_CELL_III.md`)

**Role.** Primary route. `UNBALANCED_FINAL_LOWER_WEDGE:Theorem2` cites Theorem 1 for the
one-point upper cut; since it does not use the central points, it also covers the cell-III half
of `UNBALANCED_RIGHT_HULL:Theorem2`.

**Setting** (lines 5-43): `Row123 l b P Q R S T`, every actual doubled area at least
`s = 7/64` (`7/128 ≤ minTriangleArea (typeIIConfig …)`), the right hull is the quadrilateral
`B, R, S, C` with `T` inside (`QuadHull`), in support cell III (`T ∈ int CRS ∩ int BCS`). Write
`R = (r, u)`, `S = (k, t)`, `w = 1 - b`, `U = [BRS] ≥ s`, `V = [CRS] ≥ 3s`, `δ = [EBR]`,
`v_R = 1 - u`, `v_S = 1 - t`, `J_D = [DRS]`, and `x = (r - b)/w` (normalized right container).

**Results.**
* `claim_coarse` (1)-(4): `13/100 < b < 3/16`, `13/16 < w < 7/8`, `1/4 < x < 1/2`,
  `u < 5/4 - √(3/2) < 1/32`.
* `claim_b_gt_3_20` (5)-(8): `b > 3/20`, `w < 17/20`.
* `claim_r` (9): `r > 279/640 > 16/37`.
* `claim_top` (10)-(11): `J_D = k v_R - r v_S`, `V = J_D + v_S - v_R`, `v_S < 3/4`,
  `J_D < 3/4`, `v_R > 31/32`.
* `claim_V` (12): `V < 22572001/64000000`.
* `theorem1`: cell III is impossible, whatever the central points do (`|[DST]| < s`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedCellIII

open UnbalancedRightHull

variable {l b : ℝ} {P Q R S T : Point}

/-- **Claim** (`UNBALANCED_CELL_III:claim-coarse`), equations (1)-(4). In cell III:
`13/100 < b < 3/16`, `13/16 < w < 7/8`, `x = (r-b)/w` satisfies `(x - 1/4)(x - 1/2) < 0`, and
`u < 5/4 - √(3/2) < 1/32`. `hand/UNBALANCED_CELL_III.md`, lines 45-92.
Uses: UNBALANCED_RIGHT_HULL:claim-outer-cell-scale, UNBALANCED_RIGHT_HULL:claim-Nb (the
cut-independent §4.2 argument of that note), UNBALANCED_RIGHT_HULL:claim-cell-ear. -/
theorem claim_coarse (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    13 / 100 < b ∧ b < 3 / 16 ∧ 13 / 16 < 1 - b ∧ 1 - b < 7 / 8 ∧
      1 / 4 < (R.1 - b) / (1 - b) ∧ (R.1 - b) / (1 - b) < 1 / 2 ∧
      R.2 < 5 / 4 - Real.sqrt (3 / 2) ∧ 5 / 4 - Real.sqrt (3 / 2) < 1 / 32 := sorry

/-- **Claim** (`UNBALANCED_CELL_III:claim-b>3/20`), equations (5)-(8). In cell III,
`b > 3/20` and `w < 17/20`. `hand/UNBALANCED_CELL_III.md`, lines 94-155.
Uses: UNBALANCED_CELL_III:claim-coarse, UNBALANCED_RIGHT_HULL:claim-cell-ear. -/
theorem claim_b_gt_3_20 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    3 / 20 < b ∧ 1 - b < 17 / 20 := sorry

/-- **Claim** (`UNBALANCED_CELL_III:claim-r`), equation (9). In cell III,
`r > R₀(3/16) = 279/640 > 16/37`. `hand/UNBALANCED_CELL_III.md`, lines 157-182.
Uses: UNBALANCED_CELL_III:claim-coarse. -/
theorem claim_r (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    279 / 640 < R.1 ∧ (16 / 37 : ℝ) < 279 / 640 := sorry

/-- **Claim** (`UNBALANCED_CELL_III:claim-top`), equations (10)-(11). With `v_R = 1 - u`,
`v_S = 1 - t`: `J_D = [DRS] = k v_R - r v_S`, `V = [CRS] = J_D + v_S - v_R`, and in cell III
`v_S < 3/4`, `J_D < 3/4`, `v_R > 31/32`. `hand/UNBALANCED_CELL_III.md`, lines 185-205.
Uses: UNBALANCED_CELL_III:claim-coarse, UNBALANCED_CELL_III:claim-r. -/
theorem claim_top (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    sarea ptD R S = S.1 * (1 - R.2) - R.1 * (1 - S.2) ∧
      sarea ptC R S = sarea ptD R S + (1 - S.2) - (1 - R.2) ∧
      1 - S.2 < 3 / 4 ∧ sarea ptD R S < 3 / 4 ∧ 31 / 32 < 1 - R.2 := sorry

/-- **Claim** (`UNBALANCED_CELL_III:claim-V`), equation (12). In cell III,
`V = [CRS] < V₀ = 22572001/64000000` (from `√U + √V ≤ √Ω ≤ √w`).
`hand/UNBALANCED_CELL_III.md`, lines 207-229.
Uses: TYPE_II:claim-support-normalization, UNBALANCED_CELL_III:claim-b>3/20. -/
theorem claim_V (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    sarea ptC R S < 22572001 / 64000000 := sorry

/-- **Theorem 1** (`UNBALANCED_CELL_III:Theorem1`). Support cell III is impossible,
independently of the positions of the two central points (the actual triangle `DST` has
`|[DST]| < s`). `hand/UNBALANCED_CELL_III.md`, lines 27-32, 231-267.
Uses: UNBALANCED_CELL_III:claim-top, UNBALANCED_CELL_III:claim-V,
UNBALANCED_CELL_I:claim-order. -/
theorem theorem1 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) : False := sorry

end Heilbronn.UnbalancedCellIII
