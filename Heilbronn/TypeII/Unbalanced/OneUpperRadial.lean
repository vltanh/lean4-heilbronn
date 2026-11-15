module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.CellI

/-! # Radial restrictions in the final one-upper-point Type-II case
(`hand/UNBALANCED_ONE_UPPER_RADIAL.md`)

**Role.** Primary route: step 1 of the chain `UNBALANCED_FINAL_LOWER_WEDGE:claim-chain` (§5,
line 274) closing the one-point upper cut in cell II. Its universal bounds (1), (3), (5) are
reused by `UNBALANCED_OCCUPIED_LOWER_EAR` and `UNBALANCED_FINAL_LOWER_WEDGE` (`q < 9/10`).

**Setting** (lines 5-20, `OneUpperSetting`): `Row123 l b P Q R S T`, minimum area at least `A₀`
(every actual doubled area exceeds `s = 7/64` and the global capacity theorem applies), the right
hull the quadrilateral `B, R, S, C` with `T` inside, in support cell II, `P` above `CE` and `Q`
below it. Coordinates `R = (r, 1 - v)`, `S = (k, 1 - z)`, `b < r < k ≤ 1`, `0 < z < v ≤ 1`.

**Results.**
* `claim_DBR` (1): `[DBR] < 25/32 < Ks`, so `DBR` has capacity one (any right quadrilateral).
* `claim_q_lt_9_10` (2)-(4): `q < 9/10` for every quadrilateral right hull.
* `claim_DEZ` (5): `[DEQ], [DET] < 513/640 < Ks`, so `DEQ`, `DET` have capacity one.
* `claim_one_point_sector` (6): `aa' ≥ s(a + a' + H)` for a point in the common sector at an
  edge of a convex quadrilateral.
* `claim_DRS` (7)-(10): in cell II, `J = [DRS] < 4/5 < Ks`, so `DRS` has capacity one.
* `claim_one_below`: exactly one of `P, Q, T` is below `DR`.
* `claim_P_not_below` (§§4-5), `claim_T_not_below` (§6): neither `P` nor `T` is that point.
* `theorem1`: `P, T` above `DR`, `Q` below it; `DRS` has capacity one; one of `P, T` is above
  `DS`.

Implicit in the manuscript: the bounds of §1 and (10) are stated "for every nontriangular right
hull" and "for both central cuts"; their proofs use only `s = 7/64`, so they are stated under the
weaker hypothesis that every doubled area is at least `7/64` (`7/128 ≤ minTriangleArea`), which
is how `UNBALANCED_FINAL_LOWER_WEDGE` (threshold `8/73`) uses `q < 9/10`. "Above `DS`" is the
`C`-side, `0 < [DSX]`. `claim_one_point_sector` is stated for a general counterclockwise convex
quadrilateral `A, B, C, D` and the sector at the edge `AB` (inside `ABC` and `ABD`); the note
applies it to `C, B, R, S` (edge `BC`) and to `B, R, C, D` (edge `BR`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedOneUpperRadial

open UnbalancedRightHull

variable {l b : ℝ} {P Q R S T : Point}

/-- The standing setting of the note: the one-point upper cut (`P` above `CE`, `Q` below it) in
support cell II, minimum area at least `A₀`. -/
structure OneUpperSetting (l b : ℝ) (P Q R S T : Point) : Prop where
  row : Row123 l b P Q R S T
  min : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)
  quad : QuadHull (ptB b) R S ptC T
  cell : CellII (ptB b) R S ptC T
  P_above : 0 < sarea (ptE l) ptC P
  Q_below : sarea (ptE l) ptC Q < 0

/-- **Claim** (`UNBALANCED_ONE_UPPER_RADIAL:claim-DBR`), equation (1). For every quadrilateral
right hull and either cut, with `v = 1 - R_y`, `s = 7/64`:
`[DBR] = r - bv < 1 - s/v - bv ≤ 1 - 2√(bs) < 1 - 2s = 25/32 < Ks`; so `DBR` contains at most
one further actual point. `hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 47-61.
Uses: UNBALANCED_CELL_I:claim-order, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_DBR (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    sarea ptD (ptB b) R < 1 - 2 * Real.sqrt (b * s) ∧ 1 - 2 * Real.sqrt (b * s) < 25 / 32 ∧
      25 / 32 < Kc * s ∧ AtMostOneInside (typeIIConfig l b P Q R S T) ptD (ptB b) R := sorry

/-- **Claim** (`UNBALANCED_ONE_UPPER_RADIAL:claim-q<9/10`), equations (2)-(4). For every
quadrilateral right hull, `q < 9/10`. `hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 63-104.
Uses: UNBALANCED_RIGHT_HULL:claim-generic-ear. -/
theorem claim_q_lt_9_10 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    1 - l < 9 / 10 := sorry

/-- **Claim** (`UNBALANCED_ONE_UPPER_RADIAL:claim-DEZ`), equation (5). For `Z = Q, T`:
`[DEZ] = qx < (9/10)(1 - s) = 513/640 < 13/16 < Ks` (`s = 7/64`), so neither `DEQ` nor `DET`
contains two further actual points. `hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 106-122.
Uses: UNBALANCED_ONE_UPPER_RADIAL:claim-q<9/10, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_DEZ (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    sarea ptD (ptE l) Q < 513 / 640 ∧ sarea ptD (ptE l) T < 513 / 640 ∧
      (513 / 640 : ℝ) < 13 / 16 ∧ 13 / 16 < Kc * (7 / 64) ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) ptD (ptE l) Q ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) ptD (ptE l) T := sorry

/-- **Claim** (`UNBALANCED_ONE_UPPER_RADIAL:claim-one-point-sector`), equation (6). Let
`A, B, C, D` be a strictly convex counterclockwise quadrilateral and `X` a point in the common
sector at the edge `AB` (strictly inside `ABC` and `ABD`), all doubled triangles on these five
points at least `s > 0`. With `a = [ABC]`, `a' = [ABD]` and `H = 2·area(ABCD) = [ABC] + [ACD]`:
`aa' ≥ s(a + a' + H)`. `hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 133-154.
Uses: FOUR_INTERIOR_QUADRILATERALS:claim-(1)-(3). -/
theorem claim_one_point_sector {s : ℝ} {A B C D X : Point} (hs : 0 < s)
    (hquad : ConvexQuad A B C D) (hX₁ : InTriangle X A B C) (hX₂ : InTriangle X A B D)
    (hmin : s / 2 ≤ minTriangleArea ![A, B, C, D, X]) :
    s * (sarea A B C + sarea A B D + (sarea A B C + sarea A C D)) ≤
      sarea A B C * sarea A B D := sorry

/-- **Claim** (`UNBALANCED_ONE_UPPER_RADIAL:claim-DRS`), equations (7)-(10). In cell II (either
cut), with `S = (k, 1 - z)`, `w = 1 - b`, `s = 7/64`:
`J = [DRS] ≤ 1 - bz - 2swz²/((w + s)z - 2s) < 4/5 < Ks`; so `DRS` contains at most one further
actual point. `hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 156-213.
Uses: UNBALANCED_ONE_UPPER_RADIAL:claim-one-point-sector,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_DRS (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellII (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    let w := 1 - b
    let z := 1 - S.2
    sarea ptD R S ≤ 1 - b * z - 2 * s * w * z ^ 2 / ((w + s) * z - 2 * s) ∧
      sarea ptD R S < 4 / 5 ∧ 4 / 5 < Kc * s ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) ptD R S := sorry

/-- **Claim** (`UNBALANCED_ONE_UPPER_RADIAL:claim-one-below`). Exactly one of `P, Q, T` is on the
`B`-side of `DR` (`[DRX] < 0`); the other two are on its `C`-side.
`hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 215-222.
Uses: UNBALANCED_ONE_UPPER_RADIAL:claim-DBR, THREE_INTERIOR_TRIANGLES:Corollary5. -/
theorem claim_one_below (h : OneUpperSetting l b P Q R S T) :
    (sarea ptD R P < 0 ∧ 0 < sarea ptD R Q ∧ 0 < sarea ptD R T) ∨
      (0 < sarea ptD R P ∧ sarea ptD R Q < 0 ∧ 0 < sarea ptD R T) ∨
      (0 < sarea ptD R P ∧ 0 < sarea ptD R Q ∧ sarea ptD R T < 0) := sorry

/-- **Claim** (`UNBALANCED_ONE_UPPER_RADIAL:claim-P-not-below`). `P` is not below `DR`.
`hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 224-326.
Uses: UNBALANCED_ONE_UPPER_RADIAL:claim-one-below, FOUR_INTERIOR_QUADRILATERALS:claim-(4),
FOUR_INTERIOR_QUADRILATERALS:claim-(5), UNBALANCED_ONE_UPPER_RADIAL:claim-DEZ,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_P_not_below (h : OneUpperSetting l b P Q R S T) :
    ¬ sarea ptD R P < 0 := sorry

/-- **Claim** (`UNBALANCED_ONE_UPPER_RADIAL:claim-T-not-below`). `T` is not below `DR`.
`hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 328-396.
Uses: UNBALANCED_ONE_UPPER_RADIAL:claim-one-below, UNBALANCED_ONE_UPPER_RADIAL:claim-DBR,
UNBALANCED_ONE_UPPER_RADIAL:claim-one-point-sector, FOUR_INTERIOR_QUADRILATERALS:claim-(4),
FOUR_INTERIOR_QUADRILATERALS:claim-(5), CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_T_not_below (h : OneUpperSetting l b P Q R S T) :
    ¬ sarea ptD R T < 0 := sorry

/-- **Theorem 1** (`UNBALANCED_ONE_UPPER_RADIAL:Theorem1`). `P, T` are above `DR` and `Q` is
below it. Furthermore `DRS` contains at most one further actual point, so at least one of `P, T`
is above `DS`. `hand/UNBALANCED_ONE_UPPER_RADIAL.md`, lines 22-33, 396-398.
Uses: UNBALANCED_ONE_UPPER_RADIAL:claim-one-below, UNBALANCED_ONE_UPPER_RADIAL:claim-P-not-below,
UNBALANCED_ONE_UPPER_RADIAL:claim-T-not-below, UNBALANCED_ONE_UPPER_RADIAL:claim-DRS. -/
theorem theorem1 (h : OneUpperSetting l b P Q R S T) :
    0 < sarea ptD R P ∧ 0 < sarea ptD R T ∧ sarea ptD R Q < 0 ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) ptD R S ∧
      (0 < sarea ptD S P ∨ 0 < sarea ptD S T) := sorry

end Heilbronn.UnbalancedOneUpperRadial
