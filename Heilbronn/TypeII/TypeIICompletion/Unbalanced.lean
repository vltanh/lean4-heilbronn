module

public import Heilbronn.TypeII.TypeII

/-! # The unbalanced triangular-right branch (`hand/TYPE_II_COMPLETION.md`, §§12–14)

`TYPE_II_COMPLETION.md` lines 1373–1931. The count row `(1,2,3)`: the left point is `E`, the
central points are `P, Q`, the right points `R, S, T`. In the branch treated here the five right
points `B, C, R, S, T` have triangular hull `BCR`, with `S, T` strictly inside
(`UnbalancedTriRight`). `R = (r, u)`, `q = 1 - λ`, `w = 1 - b`, `v = 1 - u`,
`g = r - b - wu`, `δ = [EBR] = bu + λ(r - b)`.

* `theorem12` (**Theorem 12**): the ear `EBR` is empty; the eight points without `E`, resp.
  without `B`, have quadrilateral hulls `DBRC`, `DERC` with interior points `P, Q, S, T`; both
  central points are above `CE`;
* `claim_sector_ledger` (§12.3): the labelling by `DR` and the sector assignments of both
  quadrilaterals, with the two-interior costs at `σ = 8/73`;
* `eq42` ((42), off-route): `X_y < λ + q² X_x` for the right points;
* `theorem13` (**Theorem 13**): the half-square normal form with two points in cell II has a
  triangle of doubled area `< 3/28`;
* `supportMap`, `claim_support_map` ((52)), `eq53`: the affine map `D, R, W ↦ (0,0), (1,1),
  (0,1)` of §14 (`W = DE ∩ BR`) and its scale `Λ < 65/64`;
* `theorem14` (**Theorem 14**): no competitive configuration of count `(1,2,3)` has a triangular
  right five-point hull.

Thresholds: §12 uses the doubled threshold `σ = 8/73 < 2A₀` together with least area `A₀` (for
`FOUR_INTERIOR_QUADRILATERALS.md`), as stated in the manuscript; Theorem 13 is at the normalized
doubled threshold `τ = 3/28`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion

open Heilbronn.TypeII

/-- The unbalanced triangular-right branch: (5), the free points in the square, `P, Q` central,
`R` a right point, and `S, T` strictly inside the right triangle `BCR` (so the five right points
`B, C, R, S, T` have triangular hull `BCR`). -/
def UnbalancedTriRight (l b : ℝ) (P Q R S T : Point) : Prop :=
  TypeIIData l b P Q R S T ∧ IsCentral b P ∧ IsCentral b Q ∧ IsRight b R ∧
    InTriangle S (ptB b) R ptC ∧ InTriangle T (ptB b) R ptC

/-- **Theorem 12** (`TYPE_II_COMPLETION:Theorem12`). In the unbalanced triangular-right branch,
at least area `A₀` (doubled threshold `σ = 8/73`): the closed actual triangle `EBR` contains no
further configuration point (its doubled area is below `3σ`, (39)–(41)); the eight points other
than `E` have quadrilateral hull `DBRC`, the eight points other than `B` have quadrilateral hull
`DERC`, both with the interior points `P, Q, S, T`; and both central points lie above `CE`.
`hand/TYPE_II_COMPLETION.md`, lines 1373–1506.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, FOUR_INTERIOR_QUADRILATERALS:Theorem1. -/
theorem theorem12 {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    (P ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      Q ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      S ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      T ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point)) ∧
    (ConvexQuad ptD (ptB b) R ptC ∧ InQuad ptD (ptB b) R ptC P ∧ InQuad ptD (ptB b) R ptC Q ∧
      InQuad ptD (ptB b) R ptC S ∧ InQuad ptD (ptB b) R ptC T) ∧
    (ConvexQuad ptD (ptE l) R ptC ∧ InQuad ptD (ptE l) R ptC P ∧ InQuad ptD (ptE l) R ptC Q ∧
      InQuad ptD (ptE l) R ptC S ∧ InQuad ptD (ptE l) R ptC T) ∧
    0 < sarea (ptE l) ptC P ∧ 0 < sarea (ptE l) ptC Q := by
  sorry

/-- **Claim** (`TYPE_II_COMPLETION:claim-sector-ledger`, made up; §12.3). In the setting of
Theorem 12, the line `DR` separates `P` from `Q` and `S` from `T`. Labelled so that `P, S` are on
its `C` side and `Q, T` on its `B` side, the sector assignments are `Q` at `DB`, `T` at `BR`, `S`
at `RC`, `P` at `CD` in `D, B, R, C`, and `Q` at `DE`, `T` at `ER`, `S` at `RC`, `P` at `CD` in
`D, E, R, C`; with `σ = 8/73` and `K = 4 + 2√3` the two-interior costs are `q ≥ Kσ` (`DCE`),
`g ≥ Kσ` (`BCR`), `qr ≥ Kσ` (`DER`), `r - b + bu ≥ Kσ` (`DBR`), `v ≥ Kσ` (`DCR`),
`v - q(1-r) ≥ Kσ` (`ECR`); moreover `bq ≥ σ`, `σ ≤ δ < 3σ`, and (39):
`u ≤ 1 - Kσ/w`, `b ≤ 1 - Kσ < 3/16`, `λ ≤ 1 - σ/b`. `hand/TYPE_II_COMPLETION.md`,
lines 1507–1532 (and 1408–1441).

Uses: TYPE_II_COMPLETION:Theorem12, FOUR_INTERIOR_QUADRILATERALS:Theorem1,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_sector_ledger {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    ((0 < sarea ptD R P ∧ sarea ptD R Q < 0) ∨ (sarea ptD R P < 0 ∧ 0 < sarea ptD R Q)) ∧
    ((0 < sarea ptD R S ∧ sarea ptD R T < 0) ∨ (sarea ptD R S < 0 ∧ 0 < sarea ptD R T)) ∧
    (0 < sarea ptD R P → sarea ptD R Q < 0 → 0 < sarea ptD R S → sarea ptD R T < 0 →
      let σ : ℝ := 8 / 73
      let q := 1 - l
      let r := R.1
      let u := R.2
      DiagSector ptD (ptB b) R ptC Q ∧ DiagSector (ptB b) R ptC ptD T ∧
        DiagSector R ptC ptD (ptB b) S ∧ DiagSector ptC ptD (ptB b) R P ∧
        DiagSector ptD (ptE l) R ptC Q ∧ DiagSector (ptE l) R ptC ptD T ∧
        DiagSector R ptC ptD (ptE l) S ∧ DiagSector ptC ptD (ptE l) R P ∧
        Ktwo * σ ≤ q ∧ Ktwo * σ ≤ r - b - (1 - b) * u ∧ Ktwo * σ ≤ q * r ∧
        Ktwo * σ ≤ r - b + b * u ∧ Ktwo * σ ≤ 1 - u ∧ Ktwo * σ ≤ (1 - u) - q * (1 - r) ∧
        σ ≤ b * q ∧ σ ≤ b * u + l * (r - b) ∧ b * u + l * (r - b) < 3 * σ ∧
        u ≤ 1 - Ktwo * σ / (1 - b) ∧ b ≤ 1 - Ktwo * σ ∧ 1 - Ktwo * σ < 3 / 16 ∧
        l ≤ 1 - σ / b) := by
  sorry

/-- **Equation (42)** (`TYPE_II_COMPLETION:claim-42`). In the setting of Theorem 12 every right
point `X ∈ {R, S, T}` satisfies `X_y < λ + q² X_x`: the closed triangle `D, E, (1/q, 1)` of area
`1/2` already contains `C, P, Q`. Off-route (not used later). `hand/TYPE_II_COMPLETION.md`,
lines 1534–1545.

Uses: TYPE_II_COMPLETION:Theorem1, TYPE_II_COMPLETION:Theorem12. -/
theorem eq42 {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    R.2 < l + (1 - l) ^ 2 * R.1 ∧ S.2 < l + (1 - l) ^ 2 * S.1 ∧ T.2 < l + (1 - l) ^ 2 * T.1 := by
  sorry

/-- **Theorem 13** (`TYPE_II_COMPLETION:Theorem13`). Let `A = (0,0)`, `Z = (1,1)`, `H = (0,h)`,
`F = (f,1)`, `0 < h, f < 1`, and let two further points `X, Y` lie strictly inside both
triangles `AZH` and `AZF` (cell II). Then some triangle on these six points has unsigned doubled
area strictly less than `τ = 3/28`. `hand/TYPE_II_COMPLETION.md`, lines 1552–1845. -/
theorem theorem13 {h f : ℝ} {X Y : Point} (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hXH : InTriangle X hsA hsE (hsH h)) (hXF : InTriangle X hsA hsE (hsF f))
    (hYH : InTriangle Y hsA hsE (hsH h)) (hYF : InTriangle Y hsA hsE (hsF f)) :
    minTriangleArea ![hsA, hsE, hsH h, hsF f, X, Y] < 3 / 56 := by
  sorry

/-- The affine map of `TYPE_II_COMPLETION.md` §14 sending `D = (0,1)`, `R = (r,u)` and
`W = DE ∩ BR = (0, -bu/(r-b))` to `(0,0)`, `(1,1)`, `(0,1)`:
`(x, y) ↦ (x/r, ((κ + u - 1)/(κr)) x - (y - 1)/κ)` with `κ = (r - b + bu)/(r - b)`. -/
def supportMap (b r u : ℝ) : Point → Point :=
  let κ := (r - b + b * u) / (r - b)
  affineMap (1 / r) 0 ((κ + u - 1) / (κ * r)) (-1 / κ) 0 (1 / κ)

/-- **Claim** (`TYPE_II_COMPLETION:claim-support-map`, made up; (52)). For `0 < b < r`, `0 ≤ u`,
`0 < λ < 1`: the map `supportMap b r u` sends `D, R, W` to `(0,0), (1,1), (0,1)`, `E` to
`(0, h)` and `B` to `(f, 1)` with `h = q(r-b)/(r-b+bu) ∈ (0,1)`, `f = b/r ∈ (0,1)`; it divides
every doubled area by `Λ = r(r-b+bu)/(r-b)`, the doubled area of `DRW`, reversing orientation;
and it maps the interiors of `DBR` and `DER` into those of `AZF` and `AZH`.
`hand/TYPE_II_COMPLETION.md`, lines 1858–1886. -/
theorem claim_support_map {l b r u : ℝ} (hb : 0 < b) (hbr : b < r) (hu : 0 ≤ u) (hl : 0 < l)
    (hl1 : l < 1) :
    let φ := supportMap b r u
    let Λ := r * (r - b + b * u) / (r - b)
    φ ptD = hsA ∧ φ (r, u) = hsE ∧ φ (0, -(b * u) / (r - b)) = (0, 1) ∧
      φ (ptE l) = hsH ((1 - l) * (r - b) / (r - b + b * u)) ∧ φ (ptB b) = hsF (b / r) ∧
      0 < (1 - l) * (r - b) / (r - b + b * u) ∧ (1 - l) * (r - b) / (r - b + b * u) < 1 ∧
      0 < b / r ∧ b / r < 1 ∧
      (∀ X Y Z : Point, sarea (φ X) (φ Y) (φ Z) = -(sarea X Y Z / Λ)) ∧
      (∀ X : Point, InTriangle X ptD (ptB b) (r, u) →
        InTriangle (φ X) hsA hsE (hsF (b / r))) ∧
      (∀ X : Point, InTriangle X ptD (ptE l) (r, u) →
        InTriangle (φ X) hsA hsE (hsH ((1 - l) * (r - b) / (r - b + b * u)))) := by
  sorry

/-- **Equation (53)** (`TYPE_II_COMPLETION:eq53`). If `g = r - b - (1-b)u > 13/16`, `r ≤ 1`,
`0 < b`, `0 ≤ u`, then `r - b > 13/16`, `b + (1-b)u < 3/16`, `b < 3/16`, `bu < 9/832`, and the
scale satisfies `Λ = r(r-b+bu)/(r-b) < 1 + 9/676 < 65/64`. `hand/TYPE_II_COMPLETION.md`,
lines 1888–1913. -/
theorem eq53 {b r u : ℝ} (hb : 0 < b) (hu : 0 ≤ u) (hr : r ≤ 1)
    (hg : 13 / 16 < r - b - (1 - b) * u) :
    13 / 16 < r - b ∧ b + (1 - b) * u < 3 / 16 ∧ b < 3 / 16 ∧ b * u < 9 / 832 ∧
      r * (r - b + b * u) / (r - b) < 1 + 9 / 676 ∧ (1 + 9 / 676 : ℝ) < 65 / 64 := by
  sorry

/-- **Theorem 14** (`TYPE_II_COMPLETION:Theorem14`). No competitive Type-II configuration of
count `(1,2,3)` has a triangular right five-point hull: with `P, Q` central and `R, S, T` right,
if `B, C, R, S, T` have triangular hull then some actual triangle has area less than `A₀`.
`hand/TYPE_II_COMPLETION.md`, lines 1847–1924.

Uses: TYPE_II_COMPLETION:Theorem12, TYPE_II_COMPLETION:claim-sector-ledger,
TYPE_II_COMPLETION:claim-support-map, TYPE_II_COMPLETION:eq53, TYPE_II_COMPLETION:Theorem13,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem14 {l b : ℝ} {P Q R S T : Point} (hd : TypeIIData l b P Q R S T)
    (hP : IsCentral b P) (hQ : IsCentral b Q) (hR : IsRight b R) (hS : IsRight b S)
    (hT : IsRight b T) (htri : TriangularHull ![ptB b, ptC, R, S, T]) :
    minTriangleArea (typeIIConfig l b P Q R S T) < A₀ := by
  sorry

end Heilbronn.TypeIICompletion
