module

public import Heilbronn.Hulls.ThreeInteriorTriangles
public import Heilbronn.Hulls.QuadrilateralHull

/-! # Four interior points must alternate around the diagonals (`hand/FOUR_INTERIOR_QUADRILATERALS.md`)

**Role.** A component on the primary route. Theorem 1 is used by `TYPE_II_COMPLETION.md` (lines
367, 1340, 1489; the balanced `(2,2,2)` row, Theorem 11), by `UNBALANCED_RADIAL_SPLIT`,
`UNBALANCED_ONE_UPPER_RADIAL` and `UNBALANCED_FINAL_UPPER_PAIR` (Type II), and by
`C1_MIXED_PENTAGON.md` (line 31), which feeds `C1_TWO_LOWER_COMPLETION`.

**Setting.** Nine points in the unit square with least area at least `A₀`. A convex quadrilateral
`ABCD` (counterclockwise, `QuadrilateralHull.ConvexQuad`) is spanned by four of the points, and
"contains" means strictly inside (`QuadrilateralHull.InQuad`). With `O = AC ∩ BD`, the four
diagonal sectors are the open triangles `ABO, BCO, CDO, DAO`. The sector `ABO` is the intersection
of the triangles `ABC` and `ABD` (`InSector X A B C D`), and the others are its cyclic relabellings.

**Normalized coordinates** (1). After an affine map, `A=(0,0), B=(1,0), C=((1-b)/a, b),
D=(0,a)`, with doubled area one, `a = 2·area(ABD)`, `b = 2·area(ABC)`, `0 < a, b < 1`. In these
coordinates "every doubled area at least `s`" is written `s/2 ≤ minTriangleArea ![…]` over the
points the step uses. For two points `P, Q`, `d_X = sarea P Q X` is the pair-line sign at `X`.

**Results.**
* `theorem1`: at most four points inside; if four, exactly one in each diagonal sector.
* `claim_1`, `eq2`, `eq3`: the normal form (1), the sector bounds (2) and the identities (3).
* `claim_4`: the same-side inequality `ab - s(a+b) ≥ 2√(sab)` (4).
* `claim_5`: the isolated-endpoint inequality (5), and its mirror image.
* `claim_sectors`: the sector counts are `(k, 2-k, k, 2-k)`.
* `eq7`: in the excluded alternative, `a, b < 115/192 < 3/5` at `s = 7/128` (7).
* `claim_no_separation`, `claim_final`: §§4-5, the alternative `(2,0,2,0)` is impossible.
* `claim_hullcount`: a competitive configuration has between five and eight hull vertices.

**Implicit in the manuscript.**
* Theorem 1: "contains four further actual points" is read as "exactly four", with the last
  assertion "a quadrilateral cannot contain five" giving at most four. Both are stated together.
* §§4-5 work in the normalized coordinates of the alternative `(2,0,2,0)`, with `P, Q` in `ABO`,
  `R, T` in `CDO` and doubled threshold `s = 7/128` (line 186). The middle case of §4 uses the
  global triangle capacity of the (affine image of the) configuration, which is stated as the
  hypothesis `TriangleCapacityTwo` of the eight points.
* `claim_hullcount` (§6) also uses that the hull vertices of a configuration of positive least area
  form a convex polygon containing the other points.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.FourInteriorQuadrilaterals

open GlobalCompletion ThreeInteriorTriangles QuadrilateralHull

/-- `X` lies in the open diagonal sector `ABO` of the counterclockwise convex quadrilateral
`ABCD` (`O = AC ∩ BD`): strictly inside both triangles `ABC` and `ABD`. The other sectors are
`InSector X B C D A` (`BCO`), `InSector X C D A B` (`CDO`), `InSector X D A B C` (`DAO`). -/
def InSector (X A B C D : Point) : Prop :=
  InTriangle X A B C ∧ InTriangle X A B D

/-! ### Theorem 1 -/

/-- **Theorem 1** (`FOUR_INTERIOR_QUADRILATERALS:Theorem1`). For nine points in the unit square
with least area at least `A₀`, a convex quadrilateral spanned by four of them contains at most four
further points. If it contains four, each of the four open diagonal sectors contains exactly one
of them. In particular two points in each of two opposite sectors is impossible.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 9-16 (proof 162-289).
Uses: THREE_INTERIOR_TRIANGLES:Corollary5, FOUR_INTERIOR_QUADRILATERALS:claim-sectors,
FOUR_INTERIOR_QUADRILATERALS:claim-(1)-(3), FOUR_INTERIOR_QUADRILATERALS:eq7,
FOUR_INTERIOR_QUADRILATERALS:claim-no-separation, FOUR_INTERIOR_QUADRILATERALS:claim-final -/
theorem theorem1 {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k l : Fin 9}
    (hq : ConvexQuad (P i) (P j) (P k) (P l)) :
    Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} ≤ 4 ∧
      (Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} = 4 →
        Set.ncard {m | InSector (P m) (P i) (P j) (P k) (P l)} = 1 ∧
        Set.ncard {m | InSector (P m) (P j) (P k) (P l) (P i)} = 1 ∧
        Set.ncard {m | InSector (P m) (P k) (P l) (P i) (P j)} = 1 ∧
        Set.ncard {m | InSector (P m) (P l) (P i) (P j) (P k)} = 1) := by
  sorry

/-! ### §1. General quadrilateral coordinates -/

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-(1)-(3)`, normal form (1)). For a convex
quadrilateral `ABCD` of doubled area `W = 2·quadArea`, put `a = sarea(A,B,D)/W` and
`b = sarea(A,B,C)/W`. Then `0 < a, b < 1`, the complementary triangles `BCD`, `CDA` have normalized
doubled areas `1 - a`, `1 - b`, and some affine map of determinant `1/W` sends
`A, B, D, C` to `(0,0), (1,0), (0,a), ((1-b)/a, b)`.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 32-55. -/
theorem claim_1 {A B C D : Point} (hq : ConvexQuad A B C D) :
    0 < sarea A B D / (2 * quadArea A B C D) ∧ sarea A B D / (2 * quadArea A B C D) < 1 ∧
      0 < sarea A B C / (2 * quadArea A B C D) ∧ sarea A B C / (2 * quadArea A B C D) < 1 ∧
      sarea B C D / (2 * quadArea A B C D) = 1 - sarea A B D / (2 * quadArea A B C D) ∧
      sarea C D A / (2 * quadArea A B C D) = 1 - sarea A B C / (2 * quadArea A B C D) ∧
      ∃ α β γ δ ε ζ : ℝ, α * δ - β * γ = 1 / (2 * quadArea A B C D) ∧
        affineMap α β γ δ ε ζ A = (0, 0) ∧ affineMap α β γ δ ε ζ B = (1, 0) ∧
        affineMap α β γ δ ε ζ D = (0, sarea A B D / (2 * quadArea A B C D)) ∧
        affineMap α β γ δ ε ζ C =
          ((1 - sarea A B C / (2 * quadArea A B C D)) / (sarea A B D / (2 * quadArea A B C D)),
            sarea A B C / (2 * quadArea A B C D)) := by
  sorry

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:eq2`). In normalized
coordinates, if every doubled area of `A, B, C, D, P` is at least `s > 0` and `P = (p, u)` lies in
the sector `ABO`, then the triangles `ABP, ACP, BDP` give `u ≥ s` and
`s/b + (1-b)u/(ab) ≤ p ≤ 1 - (s+u)/a`. No sign of `a + b - 1` is assumed.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 57-68. -/
theorem eq2 {a b s : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1) (hs : 0 < s)
    {P : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P]) :
    s ≤ P.2 ∧ s / b + (1 - b) * P.2 / (a * b) ≤ P.1 ∧ P.1 ≤ 1 - (s + P.2) / a := by
  sorry

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:eq3`). With
`A=(0,0), B=(1,0), D=(0,a)`, `P=(p,u)`, `Q=(q,v)` and `d_X = sarea P Q X`:
`d_A = pv - uq`, `d_B = d_A + u - v`, `d_D = d_A + a(q-p)`, and
`u d_D + (a-u) d_B = [a(1-p) - u](u - v)`.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 70-85. -/
theorem eq3 (a p u q v : ℝ) :
    sarea (p, u) (q, v) (0, 0) = p * v - u * q ∧
      sarea (p, u) (q, v) (1, 0) = sarea (p, u) (q, v) (0, 0) + u - v ∧
      sarea (p, u) (q, v) (0, a) = sarea (p, u) (q, v) (0, 0) + a * (q - p) ∧
      u * sarea (p, u) (q, v) (0, a) + (a - u) * sarea (p, u) (q, v) (1, 0) =
        (a * (1 - p) - u) * (u - v) := by
  sorry

/-! ### §2. Two inequalities for a pair in a common sector -/

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-(4)`). In normalized coordinates, let `P, Q`
lie in the sector `ABO`, with every doubled area of `A, B, C, D, P, Q` at least `s > 0`. If the
line `PQ` leaves `A` and `B` on the same side, then `ab - s(a+b) > 0` and
`ab - s(a+b) ≥ 2√(sab)`.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 87-122.
Uses: FOUR_INTERIOR_QUADRILATERALS:eq2 -/
theorem claim_4 {a b s : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1) (hs : 0 < s)
    {P Q : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q])
    (hsame : 0 < sarea P Q (0, 0) * sarea P Q (1, 0)) :
    0 < a * b - s * (a + b) ∧ 2 * Real.sqrt (s * a * b) ≤ a * b - s * (a + b) := by
  sorry

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-(5)`). In normalized coordinates, let `P, Q`
lie in the sector `ABO`, with every doubled area of `A, B, C, D, P, Q` at least `s > 0`, and orient
the line `PQ` so that `d_A < 0 < d_B`.
* If `d_C, d_D > 0` (`A` is the only vertex on the negative side), then
  `[ab - s(1+a)]² ≥ 4sab` and `ab - s(1+a) > 0` (5).
* If `d_C, d_D < 0`, interchanging `A ↔ B`, `C ↔ D` and the orientation gives (5) with `a` and `b`
  interchanged: `[ab - s(1+b)]² ≥ 4sab` and `ab - s(1+b) > 0`.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 124-160.
Uses: FOUR_INTERIOR_QUADRILATERALS:eq2, FOUR_INTERIOR_QUADRILATERALS:eq3 -/
theorem claim_5 {a b s : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1) (hs : 0 < s)
    {P Q : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q])
    (hA : sarea P Q (0, 0) < 0) (hB : 0 < sarea P Q (1, 0)) :
    (0 < sarea P Q ((1 - b) / a, b) → 0 < sarea P Q (0, a) →
      4 * s * a * b ≤ (a * b - s * (1 + a)) ^ 2 ∧ 0 < a * b - s * (1 + a)) ∧
    (sarea P Q ((1 - b) / a, b) < 0 → sarea P Q (0, a) < 0 →
      4 * s * a * b ≤ (a * b - s * (1 + b)) ^ 2 ∧ 0 < a * b - s * (1 + b)) := by
  sorry

/-! ### §3. Two possible sector patterns -/

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-sectors`). If a convex quadrilateral of actual
points contains exactly four further points, then global triangle capacity two makes each diagonal
split them two and two. So the sector counts in cyclic order `ABO, BCO, CDO, DAO` are
`(k, 2-k, k, 2-k)` with `k ∈ {0, 1, 2}`.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 162-178.
Uses: THREE_INTERIOR_TRIANGLES:Corollary5 -/
theorem claim_sectors {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k l : Fin 9}
    (hq : ConvexQuad (P i) (P j) (P k) (P l))
    (h4 : Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} = 4) :
    ∃ n : ℕ, n ≤ 2 ∧
      Set.ncard {m | InSector (P m) (P i) (P j) (P k) (P l)} = n ∧
      Set.ncard {m | InSector (P m) (P j) (P k) (P l) (P i)} = 2 - n ∧
      Set.ncard {m | InSector (P m) (P k) (P l) (P i) (P j)} = n ∧
      Set.ncard {m | InSector (P m) (P l) (P i) (P j) (P k)} = 2 - n := by
  sorry

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:eq7`). In the alternative `(2,0,2,0)`, normalized
with `P, Q` in `ABO`, `R, T` in `CDO`, and every doubled area of the eight points at least
`s = 7/128`, the two-interior-point bound on `ABC, ABD, CDA, CDB` gives
`a, b, 1-a, 1-b ≥ Ks`, hence `a, b < 1 - (22/3)s = 115/192 < 3/5`.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 180-200.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem eq7 {a b : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1) {P Q R T : Point}
    (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hR : InSector R ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hT : InSector T ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hmin : 7 / 256 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T]) :
    a < 115 / 192 ∧ b < 115 / 192 := by
  sorry

/-! ### §§4-5. Excluding two points in each of two opposite sectors -/

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-no-separation`). In the normalized alternative
`(2,0,2,0)` at doubled threshold `s = 7/128`, with `a, b < 3/5` and triangle capacity two, the line
`PQ` does not separate `A` from `B`, and likewise `RT` does not separate `C` from `D`. The middle
sign case `(-,+)` puts three points in the triangle on `C, D` and the nearer point. The other two
cases contradict (5) at `a = b = 3/5` (9).
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 202-258.
Uses: FOUR_INTERIOR_QUADRILATERALS:claim-(5), THREE_INTERIOR_TRIANGLES:Corollary5 -/
theorem claim_no_separation {a b : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1)
    {P Q R T : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hR : InSector R ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hT : InSector T ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hmin : 7 / 256 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T])
    (hcap : TriangleCapacityTwo ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T])
    (ha35 : a < 3 / 5) (hb35 : b < 3 / 5) :
    0 < sarea P Q (0, 0) * sarea P Q (1, 0) ∧
      0 < sarea R T ((1 - b) / a, b) * sarea R T (0, a) := by
  sorry

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-final`). The two same-side inequalities
contradict one another. In the normalized alternative `(2,0,2,0)` at doubled threshold
`s = 7/128`, if `PQ` leaves `A, B` on one side and `RT` leaves `C, D` on one side, then (4) for
both pairs gives `√(ab), √((1-a)(1-b)) ≥ 2√s + 2s`. This contradicts Cauchy-Schwarz, since
`4√s + 4s > 35/32 > 1` (10).
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 260-289.
Uses: FOUR_INTERIOR_QUADRILATERALS:claim-(4) -/
theorem claim_final {a b : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1)
    {P Q R T : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hR : InSector R ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hT : InSector T ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hmin : 7 / 256 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T])
    (hPQ : 0 < sarea P Q (0, 0) * sarea P Q (1, 0))
    (hRT : 0 < sarea R T ((1 - b) / a, b) * sarea R T (0, a)) : False := by
  sorry

/-! ### §6. Hull counts -/

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-hullcount`). A competitive configuration
(nine points in the square, least area at least `A₀`) has between five and eight hull vertices. A
triangular hull would contain six points, and a quadrilateral hull five (Theorem 1). Nine hull
vertices are excluded by the convex-nonagon theorem.
`hand/FOUR_INTERIOR_QUADRILATERALS.md`, lines 291-305.
Uses: THREE_INTERIOR_TRIANGLES:Corollary5, FOUR_INTERIOR_QUADRILATERALS:Theorem1,
GLOBAL_COMPLETION:Theorem1 -/
theorem claim_hullcount {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) :
    5 ≤ Set.ncard {m | IsHullVertex P m} ∧ Set.ncard {m | IsHullVertex P m} ≤ 8 := by
  sorry

end Heilbronn.FourInteriorQuadrilaterals
