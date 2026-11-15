module

public import Heilbronn.TypeII.TypeII.Chamber

/-! # Type II: three central points and its affine versions (`hand/TYPE_II.md`, §§7, 9, 10)

`TYPE_II.md` lines 538–814 and 831–1090.

* `centralTripleTheorem` (**Central-triple theorem**, §7): with `b ≤ 1/2`, three points
  strictly inside `DCB` force a triangle of area `< 7/128` among the seven points `D, C, E, B`
  and these three; `claim_exclude_central_three`: hence the rows `(1,3,2)` and `(2,3,1)` are
  excluded at least area `A₀`.
* `claim_mesh_kstar` ((23)–(25)): the bounds on the distributed central mesh, for a doubled
  threshold `s ≥ 7/64` (§10 notes that their proofs only need `s ≥ 7/64`).
* `claim_chamber_extension` (§9): the chamber lemma of §6 for `b ≤ 11/20` and `0 ≤ λ < 1`.
* `affineCorollary` (**Affine corollary**, §9): an actual triangle `ABC` containing three
  further points and an actual point `E` with barycentric coordinates `(α, q, -p)`,
  `0 < q ≤ 1`, `0 < p ≤ 11q/20`, force a triangle of area `< (7/64) S`.
* `coupledAffineCorollary` (**Coupled affine corollary**, §10) for `q ≤ 30/29` at a normalized
  doubled threshold `s ≥ s₀ max(1, q)`, `s₀ = 2A₀`, and its geometric form
  `coupledAffineCorollary_geometric`.

Barycentric coordinates: `bary A B C α β γ` is the affine combination `αA + βB + γC`
(with `α + β + γ = 1`). The off-route remark of lines 920–934 (a maximum-area triangle with three
interior points) is not stated.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeII

/-- The affine combination `αA + βB + γC`; with `α + β + γ = 1` these are the barycentric
coordinates `(α, β, γ)` in the triangle `ABC`. -/
def bary (A B C : Point) (α β γ : ℝ) : Point :=
  (α * A.1 + β * B.1 + γ * C.1, α * A.2 + β * B.2 + γ * C.2)

/-- **Central-triple theorem** (`TYPE_II:CentralTripleTheorem`). Suppose (5) holds with
`b ≤ 1/2` and three further points lie in the interior of `DCB`. Then among these seven points
some triangle has area less than `7/128`. `hand/TYPE_II.md`, lines 538–814.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma (non-distributed case `(6+2√3)s > 1`),
CORNER_FAMILIES:SixPointTriangularHullTheorem (§8, mesh and (20)), TYPE_II:claim-mesh-kstar,
TYPE_II:claim-central-cut, CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II:TwoPointChamberLemma. -/
theorem centralTripleTheorem {l b : ℝ} {X Y Z : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1) (hX : IsCentral b X) (hY : IsCentral b Y) (hZ : IsCentral b Z) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, X, Y, Z] < 7 / 128 := by
  sorry

/-- **Claim** (`TYPE_II:claim-exclude-central-three`, made up). Consequently the rows `(1,3,2)`
and `(2,3,1)` of §5 are excluded: at least area `A₀` with `b ≤ 1/2`, the central count is not
three. `hand/TYPE_II.md`, lines 542–543.

Uses: TYPE_II:CentralTripleTheorem, TYPE_II:eq7. -/
theorem claim_exclude_central_three {l b : ℝ} {V W X Y Z : Point}
    (hd : TypeIIData l b V W X Y Z) (hb2 : b ≤ 1 / 2)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    typeIICounts b V W X Y Z ≠ (1, 3, 2) ∧ typeIICounts b V W X Y Z ≠ (2, 3, 1) := by
  sorry

/-- **Claim** (`TYPE_II:claim-mesh-kstar`). The distributed central mesh: in a triangle `ABC` of
signed doubled area `1`, three points `X, Y, Z` whose seven mesh areas `x = ⟨ABZ⟩`,
`y = ⟨BCX⟩`, `z = ⟨CAY⟩`, `a = ⟨AZY⟩`, `b* = ⟨BXZ⟩`, `c* = ⟨CYX⟩`, `k* = ⟨ZXY⟩` and six cross
areas `u_A = ⟨AZX⟩`, `u_B = ⟨BXY⟩`, `u_C = ⟨CYZ⟩`, `v_A = ⟨AXY⟩`, `v_B = ⟨BYZ⟩`,
`v_C = ⟨CZX⟩` (signed doubled areas) are all at least `s ≥ 7/64` satisfy `k* < 9s/8` (23) and,
for each ear `e ∈ {x, y, z}`, `1 ≥ Γs + (e - s)` (24); at `s = 7/64` moreover `x < 23/128`
(25). `hand/TYPE_II.md`, lines 570–641 (the restriction `s ≥ 7/64`: lines 963–964).

Uses: CORNER_FAMILIES:eq20 (the Plücker inequalities (22)), the seven-face sum. -/
theorem claim_mesh_kstar {A B C X Y Z : Point} {s : ℝ} (hs : 7 / 64 ≤ s)
    (hABC : sarea A B C = 1)
    (hx : s ≤ sarea A B Z) (hy : s ≤ sarea B C X) (hz : s ≤ sarea C A Y)
    (ha : s ≤ sarea A Z Y) (hb : s ≤ sarea B X Z) (hc : s ≤ sarea C Y X) (hk : s ≤ sarea Z X Y)
    (huA : s ≤ sarea A Z X) (huB : s ≤ sarea B X Y) (huC : s ≤ sarea C Y Z)
    (hvA : s ≤ sarea A X Y) (hvB : s ≤ sarea B Y Z) (hvC : s ≤ sarea C Z X) :
    sarea Z X Y < 9 / 8 * s ∧
      Γsix * s + (sarea A B Z - s) ≤ 1 ∧ Γsix * s + (sarea B C X - s) ≤ 1 ∧
      Γsix * s + (sarea C A Y - s) ≤ 1 ∧
      (s = 7 / 64 → sarea A B Z < 23 / 128) := by
  sorry

/-- **Claim** (`TYPE_II:claim-chamber-extension`, made up). The needed extension of §6 in §9:
the two-point chamber lemma holds for `0 < b ≤ 11/20` and `0 ≤ λ < 1` (the endpoint `λ = 0`,
`q = 1`, included). `hand/TYPE_II.md`, lines 855–877 and 915–917.

Uses: TYPE_II:claim-chamber-general. -/
theorem claim_chamber_extension {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 11 / 20)
    (hl : 0 ≤ l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hBPQ : 0 < sarea (ptB b) P Q) (hEPQ : sarea (ptE l) P Q < 0) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] < 7 / 128 := by
  sorry

/-- **Affine corollary** (`TYPE_II:AffineCorollary`). Let an actual triangle `ABC` of area
`S > 0` contain three further actual points `X, Y, Z`, and let another actual point `E` have
barycentric coordinates `(α, q, -p)`, `0 < q ≤ 1`, `0 < p ≤ (11/20) q`, `α + q - p = 1`. Then
among the seven points some triangle has area less than `(7/64) S`. `hand/TYPE_II.md`,
lines 836–918.

Implicit in the manuscript: the triangle `ABC` is nondegenerate (`S > 0`); the containment is
closed (points on an edge give a zero-area triangle).

Uses: TYPE_II:claim-chamber-extension, TYPE_II:CentralTripleTheorem (its proof, with the
constants of lines 879–914), TYPE_II:claim-mesh-kstar. -/
theorem affineCorollary {A B C X Y Z : Point} {α q p : ℝ} (hS : 0 < triangleArea A B C)
    (hX : X ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hY : Y ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hq : 0 < q) (hq1 : q ≤ 1) (hp : 0 < p) (hp1 : p ≤ 11 / 20 * q) (hsum : α + q - p = 1) :
    minTriangleArea ![A, B, C, X, Y, Z, bary A B C α q (-p)] < 7 / 64 * triangleArea A B C := by
  sorry

/-- **Coupled affine corollary** (`TYPE_II:CoupledAffineCorollary`). Normalize the doubled area
of an actual triangle `ABC` to one; let it contain three further points, and let an additional
point `E` have barycentric coordinates `(α, q, -p)`, `0 < q ≤ 30/29`, `0 < p ≤ (11/20) q`,
`α + q - p = 1`. If `s ≥ s₀ max(1, q)` (32), `s₀ = 2A₀`, it is impossible for all triangles of
these seven points to have normalized doubled area at least `s`; that is, some triangle has area
less than `s · area(ABC)`. `hand/TYPE_II.md`, lines 937–1076.

Implicit in the manuscript: `ABC` is nondegenerate; the containment is closed.

Uses: TYPE_II:AffineCorollary, TYPE_II:claim-mesh-kstar, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem coupledAffineCorollary {A B C X Y Z : Point} {α q p s : ℝ}
    (hS : 0 < triangleArea A B C)
    (hX : X ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hY : Y ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hq : 0 < q) (hq1 : q ≤ 30 / 29) (hp : 0 < p) (hp1 : p ≤ 11 / 20 * q) (hsum : α + q - p = 1)
    (hs : 2 * A₀ * max 1 q ≤ s) :
    minTriangleArea ![A, B, C, X, Y, Z, bary A B C α q (-p)] < s * triangleArea A B C := by
  sorry

/-- **Coupled affine corollary, geometric form** (`TYPE_II:CoupledAffineCorollary`). If the
actual triangle `ABC` has area `S ≤ 1/2` and `q ≤ min(30/29, 1/(2S))`, `0 < p ≤ (11/20) q`, then
the seven points have a triangle of area less than `A₀` (the normalized doubled minimum at the
competitive threshold is at least `A₀ / S = s₀ / (2S)`). `hand/TYPE_II.md`, lines 1078–1090.

Uses: TYPE_II:CoupledAffineCorollary. -/
theorem coupledAffineCorollary_geometric {A B C X Y Z : Point} {α q p : ℝ}
    (hS : 0 < triangleArea A B C) (hS2 : triangleArea A B C ≤ 1 / 2)
    (hX : X ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hY : Y ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({A, B, C} : Set Point))
    (hq : 0 < q) (hq1 : q ≤ 30 / 29) (hq2 : q ≤ 1 / (2 * triangleArea A B C))
    (hp : 0 < p) (hp1 : p ≤ 11 / 20 * q) (hsum : α + q - p = 1) :
    minTriangleArea ![A, B, C, X, Y, Z, bary A B C α q (-p)] < A₀ := by
  sorry

end Heilbronn.TypeII
