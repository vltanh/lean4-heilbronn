module

public import Heilbronn.TypeII.TypeII

/-! # The balanced adjacent-corner case: the left hull must be triangular
(`hand/TYPE_II_BALANCED.md`)

The balanced count row `(2,2,2)` of Type II (`TYPE_II.md` §8), with `0 < b ≤ 1/2`: the left pair
is `E, L`, the central pair `P, Q`, the right pair `R, S`. The free points are passed to
`typeIIConfig l b L P Q R S` in this order (`BalancedRow`).

Naming: the manuscript calls the right pair `Q, R` in §§1–4 and the central pair `P, Q` in §6;
here the right pair is always `R, S` and the central pair always `P, Q` (the names of
`TYPE_II_COMPLETION.md`). In §3 the right hull vertex adjacent to `B` (the manuscript's `Q`) is
whichever of `R, S` it is.

Thresholds: §§1–5 work at doubled threshold `s = 7/64` (area `7/128`), §6 at the stronger
`s = 79/720 < 2A₀` (area `79/1440`), and the final placement uses `σ = 7/64` again.

Results:

* `claim_lower_vertex_ineq` (§1, (2)–(3)): the lower-vertex inequality of a four-point endpoint
  quadrilateral in the triangle `(0,0), (1,0), (1,1)`;
* `claim_left_quad_bounds` (§2, (4)–(6)): a quadrilateral left hull forces a low point;
* `claim_both_quad_excluded` (§3): both side hulls cannot be quadrilaterals;
* `claim_leftquad_righttri_excluded` (§4): left quadrilateral with right triangle is impossible;
* `mainTheorem` (**Theorem**): `L` lies strictly inside `DBE`;
* `claim_not_both_below_CE`, `claim_both_above_L_below` (§5);
* `claim_not_both_above_CE` (§6, at `79/720`);
* `claim_L_above_CE` (§6, (23)) and the summary `claim_balanced_placement`, with the
  definition `BalancedPlacement` of the resulting placement used by `TYPE_II_COMPLETION.md`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIIBalanced

open Heilbronn.TypeII

/-- The balanced row `(2,2,2)` with labelled points: (5) with `0 < b ≤ 1/2`, the free points in
the square, `L` a left point, `P, Q` central points and `R, S` right points
(`TYPE_II_BALANCED.md` lines 5–17). -/
def BalancedRow (l b : ℝ) (L P Q R S : Point) : Prop :=
  TypeIIData l b L P Q R S ∧ b ≤ 1 / 2 ∧ IsLeft b L ∧ IsCentral b P ∧ IsCentral b Q ∧
    IsRight b R ∧ IsRight b S

/-- The final balanced placement of `TYPE_II_BALANCED.md` lines 401–405, the starting point of
`TYPE_II_COMPLETION.md` §4: (5) with `0 < b ≤ 1/2`, the free points in the square, `L` strictly
inside `DBE` and above `CE`, the central point `P` above `CE`, the central point `Q` below `CE`,
and `R, S` right points. -/
def BalancedPlacement (l b : ℝ) (L P Q R S : Point) : Prop :=
  TypeIIData l b L P Q R S ∧ b ≤ 1 / 2 ∧
    InTriangle L ptD (ptE l) (ptB b) ∧ 0 < sarea (ptE l) ptC L ∧
    IsCentral b P ∧ 0 < sarea (ptE l) ptC P ∧
    IsCentral b Q ∧ sarea (ptE l) ptC Q < 0 ∧
    IsRight b R ∧ IsRight b S

/-- **Claim** (`TYPE_II_BALANCED:claim-lower-vertex-ineq`). Let `B₀ = (0,0)`, `C₀ = (1,1)`,
`Q₀ = (x,y)`, `R₀ = (z,w)`, with `Q₀, R₀` in the closed triangle `(0,0), (1,0), (1,1)` and
`B₀, Q₀, R₀, C₀` the vertices of a convex quadrilateral in this cyclic order, and let every
doubled triangle area of the four points be at least `a > 0`. Then `x > y ≥ 0`, `x < 1`,
`(x-y)(1-x) ≥ a` (2) and `y ≤ 1 - 2√a` (3). `hand/TYPE_II_BALANCED.md`, lines 32–79.

Implicit in the manuscript: the cyclic order is counterclockwise (forced, as `Q₀, R₀` lie below
the diagonal `B₀C₀`). -/
theorem claim_lower_vertex_ineq {a : ℝ} {Q₀ R₀ : Point} (ha : 0 < a)
    (hQ : 0 ≤ Q₀.2 ∧ Q₀.2 ≤ Q₀.1 ∧ Q₀.1 ≤ 1) (hR : 0 ≤ R₀.2 ∧ R₀.2 ≤ R₀.1 ∧ R₀.1 ≤ 1)
    (hconv : ConvexQuad (0, 0) Q₀ R₀ (1, 1))
    (hmin : a / 2 ≤ minTriangleArea ![((0, 0) : Point), Q₀, R₀, (1, 1)]) :
    Q₀.2 < Q₀.1 ∧ 0 ≤ Q₀.2 ∧ Q₀.1 < 1 ∧ a ≤ (Q₀.1 - Q₀.2) * (1 - Q₀.1) ∧
      Q₀.2 ≤ 1 - 2 * Real.sqrt a := by
  sorry

/-- **Claim** (`TYPE_II_BALANCED:claim-left-quad-bounds`). In the balanced row at doubled
threshold `s = 7/64`, if `L = (p, v)` is not inside `DBE` (the left hull is the quadrilateral
`D, E, L, B`), then `(1-λ)p ≥ s` and `λ(b-p) - bv ≥ s` (4); `b ≥ s/(λ(1-λ)) ≥ 4s` and
`1 - b ≤ 9/16` (5); `v ≤ 1 - √(7/8) < 1/15` (6); and `0 < p < b`.
`hand/TYPE_II_BALANCED.md`, lines 81–115. -/
theorem claim_left_quad_bounds {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hquad : ¬ InTriangle L ptD (ptE l) (ptB b)) :
    7 / 64 ≤ (1 - l) * L.1 ∧ 7 / 64 ≤ l * (b - L.1) - b * L.2 ∧
      7 / 64 ≤ l * (1 - l) * b ∧ 4 * (7 / 64) ≤ b ∧ 1 - b ≤ 9 / 16 ∧
      L.2 ≤ 1 - Real.sqrt (7 / 8) ∧ L.2 < 1 / 15 ∧ 0 < L.1 ∧ L.1 < b := by
  sorry

/-- **Claim** (`TYPE_II_BALANCED:claim-both-quad-excluded`). At doubled threshold `7/64`, if
the left hull is a quadrilateral then the right four-point hull `B, C, R, S` is triangular:
otherwise the lower-vertex inequality, after `(x,y) ↦ ((x-b)/(1-b), y)` with `a = s/(1-b) ≥ 7/36`,
gives a right hull vertex `Q` with `Q_y < 1/8` (8), and `[LBQ] < 1/10 < s` (9).
`hand/TYPE_II_BALANCED.md`, lines 117–155.

Uses: TYPE_II_BALANCED:claim-lower-vertex-ineq, TYPE_II_BALANCED:claim-left-quad-bounds. -/
theorem claim_both_quad_excluded {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hquad : ¬ InTriangle L ptD (ptE l) (ptB b)) :
    TriangularHull ![ptB b, ptC, R, S] := by
  sorry

/-- **Claim** (`TYPE_II_BALANCED:claim-leftquad-righttri-excluded`). At doubled threshold `7/64`,
a quadrilateral left hull and a triangular right hull are incompatible: with `R` the third right
hull vertex, `g ≥ 3s` (10), `2 area(DBR) < 13/16` (11), the two-interior bound (12) puts two of
the three points `P, Q, S` in `DCR`, `u < 3/16` (13), (14), and `[LBR] < 357/3520 < s` (15).
`hand/TYPE_II_BALANCED.md`, lines 157–239.

Uses: TYPE_II_BALANCED:claim-left-quad-bounds, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_leftquad_righttri_excluded {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hquad : ¬ InTriangle L ptD (ptE l) (ptB b)) (htri : TriangularHull ![ptB b, ptC, R, S]) :
    False := by
  sorry

/-- **Theorem** (`TYPE_II_BALANCED:Theorem`). In the balanced row, with every doubled triangle
area at least `s = 7/64`, the four-point set `D, B, E, L` has triangular hull `DBE`: `L` lies
strictly inside `DBE`. `hand/TYPE_II_BALANCED.md`, lines 19–20 (proof lines 81–239).

Uses: TYPE_II_BALANCED:claim-both-quad-excluded,
TYPE_II_BALANCED:claim-leftquad-righttri-excluded. -/
theorem mainTheorem {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    InTriangle L ptD (ptE l) (ptB b) := by
  sorry

/-- **Claim** (`TYPE_II_BALANCED:claim-not-both-below-CE`). At doubled threshold `7/64`, the two
central points are not both inside `EBC` (with `b(1-λ) ≥ 3s` (16) from `L ∈ DBE`, the
two-interior bound would give `1 ≥ (7+2√3)s > 1`). `hand/TYPE_II_BALANCED.md`, lines 241–268.

Uses: TYPE_II_BALANCED:Theorem, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_not_both_below_CE {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    ¬ (InTriangle P (ptE l) (ptB b) ptC ∧ InTriangle Q (ptE l) (ptB b) ptC) := by
  sorry

-- FLAG: the manuscript works at "every doubled area at least `7/64`" (weak), but the cited
-- corner-triangle occupancy theorem (`ONE_CORNER.md` (1), proved by assuming `t > 7/128`) only
-- gives `t ≤ 7/128`, no contradiction at `t = 7/128`. The proof needs least area strictly above
-- `7/128`; it is stated so here (on the route `t ≥ A₀ > 7/128`).
/-- **Claim** (`TYPE_II_BALANCED:claim-not-both-below-CE`, second part). If both central points
are inside `DCE`, then `L` is below `CE`, inside `EBC`: the corner-triangle theorem of
`ONE_CORNER.md` forbids three points inside `DCE`. `hand/TYPE_II_BALANCED.md`, lines 268–271.

FLAG (threshold): stated at least area `> 7/128` rather than the manuscript's `≥ 7/128`, see the
comment above.

Uses: TYPE_II_BALANCED:Theorem, ONE_CORNER:CornerTriangleOccupancyTheorem. -/
theorem claim_both_above_L_below {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 < minTriangleArea (typeIIConfig l b L P Q R S))
    (hPE : InTriangle P ptD (ptE l) ptC) (hQE : InTriangle Q ptD (ptE l) ptC) :
    InTriangle L (ptE l) (ptB b) ptC := by
  sorry

/-- **Claim** (`TYPE_II_BALANCED:claim-not-both-above-CE`). At the stronger doubled threshold
`s = 79/720 < 2A₀` (area `79/1440`), the two central points cannot both lie in `DCE`: then `L` is
inside `EBT`, `T = DB ∩ CE` (18); `D, C` are on the same side of `PQ` by (36) since `b ≥ 3s > 2/7`;
the same-side row of `TYPE_II.md` §12 gives `b ≤ B(q)` (19), and `2 area(EBL) ≤ F(1) < 49/450 < s`
(20)–(22). Hence exactly one central point lies on each side of `CE`.
`hand/TYPE_II_BALANCED.md`, lines 275–380.

Uses: TYPE_II_BALANCED:Theorem, ONE_CORNER:CornerTriangleOccupancyTheorem,
TYPE_II:claim-b-le-2/7, TYPE_II:claim-PQ-line-table, TYPE_II:TwoPointChamberLemma. -/
theorem claim_not_both_above_CE {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 79 / 1440 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    ¬ (InTriangle P ptD (ptE l) ptC ∧ InTriangle Q ptD (ptE l) ptC) := by
  sorry

/-- **Claim** (`TYPE_II_BALANCED:claim-L-above-CE`). At doubled threshold `σ = 7/64`, if the
central point `P` is above `CE` (inside `DCE`) and `Q` below it (inside `EBC`), then `L` is above
`CE`, so `DCE` contains `L, P`, and `q = 1 - λ > 13/16`, `λ < 3/16` (23).
`hand/TYPE_II_BALANCED.md`, lines 382–399.

Uses: TYPE_II_BALANCED:Theorem, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_L_above_CE {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hPE : InTriangle P ptD (ptE l) ptC) (hQE : InTriangle Q (ptE l) (ptB b) ptC) :
    0 < sarea (ptE l) ptC L ∧ InTriangle L ptD (ptE l) ptC ∧ 13 / 16 < 1 - l ∧ l < 3 / 16 := by
  sorry

/-- **Claim** (`TYPE_II_BALANCED:claim-balanced-placement`, made up). The resulting placement
(lines 401–405): at doubled threshold `79/720`, after possibly exchanging the two central points,
the balanced row is in the `BalancedPlacement`: `L` strictly inside `DBE` and above `CE`, one
central point above `CE`, the other below. `hand/TYPE_II_BALANCED.md`, lines 379–405.

Uses: TYPE_II_BALANCED:Theorem, TYPE_II_BALANCED:claim-not-both-below-CE,
TYPE_II_BALANCED:claim-not-both-above-CE, TYPE_II_BALANCED:claim-L-above-CE,
TYPE_II:claim-central-cut. -/
theorem claim_balanced_placement {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 79 / 1440 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    BalancedPlacement l b L P Q R S ∨ BalancedPlacement l b L Q P R S := by
  sorry

end Heilbronn.TypeIIBalanced
