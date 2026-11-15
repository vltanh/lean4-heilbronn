module

public import Heilbronn.Common.Families

/-! # Nine points with all four square corners (`hand/FOUR_CORNERS.md`)

**Role.** A component used only by the near-square quadrilateral lemma of `CORNER_FAMILIES.md`
§9 (projective transfer, `CORNER_FAMILIES:NearSquareQuadrilateralLemma`), hence on the primary
route through the Type-III `2+4` class.

**Setting** (lines 16–32). Nine points of the unit square include the corners
`A = (0,0)`, `B = (0,1)`, `C = (1,1)`, `D = (1,0)`. The proof assumes every triangle area is at
least `1/19` (written `1/19 ≤ minTriangleArea …`), i.e. every doubled area at least
`s = 2/19`; `D_O(P, Q) = det(P - O, Q - O) = sarea O P Q`. The five noncorner points lie in four
triangular regions (`fcRegion 0 = leftRegion`, `1 = topRegion`, `2 = rightRegion`,
`3 = bottomRegion`, the rotations of (3) about the centre).

**Results.**

* `fourCornersTheorem` (the Theorem): minimum area `≤ 1/19` (the proof gives `< 1/19`).
* `claim_regions` (2)–(3); `claim_pair_separation` (4)–(5), `claim_region_capacity`;
  `claim_line_band` (6)–(7); `claim_exactly_one_pair` (8); `claim_corner_signs` (9)–(11);
  `claim_final_triangle` (12).

The claims are stated for the left region and the pair in it, as in the manuscript ("rotate the
square to make that region `L`"); the other regions follow by the square symmetries.

**Implicit in the manuscript.** In the claims about a pair `P, Q` of the left region, `P` is the
member with the smaller `x`-coordinate and `Q` the "inner point" (line 93).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.FourCorners

/-! ### The four regions -/

/-- The left region (3): `s ≤ x`, `x + s ≤ y ≤ 1 - s - x` (then `x ≤ 1/2 - s`). -/
def leftRegion (s : ℝ) : Set Point := {p | s ≤ p.1 ∧ p.1 + s ≤ p.2 ∧ p.1 + p.2 ≤ 1 - s}

/-- The top region, the rotation of the left one (lines 51–54): `y ≤ 1 - s`, `y ≥ x + s`,
`x + y ≥ 1 + s`. -/
def topRegion (s : ℝ) : Set Point := {p | p.2 ≤ 1 - s ∧ p.1 + s ≤ p.2 ∧ 1 + s ≤ p.1 + p.2}

/-- The right region: `x ≤ 1 - s`, `x ≥ y + s`, `x + y ≥ 1 + s`. -/
def rightRegion (s : ℝ) : Set Point := {p | p.1 ≤ 1 - s ∧ p.2 + s ≤ p.1 ∧ 1 + s ≤ p.1 + p.2}

/-- The bottom region: `y ≥ s`, `x ≥ y + s`, `x + y ≤ 1 - s`. -/
def bottomRegion (s : ℝ) : Set Point := {p | s ≤ p.2 ∧ p.2 + s ≤ p.1 ∧ p.1 + p.2 ≤ 1 - s}

/-- The four regions indexed counterclockwise from the left one: left, top, right, bottom. -/
def fcRegion (k : Fin 4) (s : ℝ) : Set Point :=
  ![leftRegion s, topRegion s, rightRegion s, bottomRegion s] k

/-- The line through `P` and `Q` as a function of `x`: `ℓ(x) = y_P + (y_Q - y_P)(x - x_P)/(x_Q - x_P)`
(line 107). -/
def pairLine (P Q : Point) (x : ℝ) : ℝ := P.2 + (Q.2 - P.2) / (Q.1 - P.1) * (x - P.1)

/-! ### The theorem -/

/-- **Theorem** (`FOUR_CORNERS:Theorem`). Nine points of the unit square that include all four
corners have minimum triangle area at most `1/19` (the proof gives a triangle of area
`< 1/19`). `hand/FOUR_CORNERS.md`, lines 3–14 (proof 16–317).

Uses: FOUR_CORNERS:claim-regions, FOUR_CORNERS:claim-pair-separation,
FOUR_CORNERS:claim-line-band, FOUR_CORNERS:claim-exactly-one-pair,
FOUR_CORNERS:claim-corner-signs, FOUR_CORNERS:claim-final-triangle -/
theorem fourCornersTheorem (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (hA : ∃ i, P i = (0, 0)) (hB : ∃ i, P i = (0, 1)) (hC : ∃ i, P i = (1, 1))
    (hD : ∃ i, P i = (1, 0)) :
    minTriangleArea P ≤ 1 / 19 := by
  sorry

/-! ### §1. Four regions and a pair in one region -/

/-- **Claim** (`FOUR_CORNERS:claim-regions`), (2)–(3): a point `X` of the square whose triangles
with pairs of corners have doubled area at least `s = 2/19` satisfies `s ≤ x, y ≤ 1 - s`,
`|x - y| ≥ s`, `|x + y - 1| ≥ s`, and lies in one of the four regions.
`hand/FOUR_CORNERS.md`, lines 34–54. -/
theorem claim_regions (X : Point) (hX : X ∈ unitSquare)
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), X]) :
    2 / 19 ≤ X.1 ∧ X.1 ≤ 1 - 2 / 19 ∧ 2 / 19 ≤ X.2 ∧ X.2 ≤ 1 - 2 / 19 ∧
      2 / 19 ≤ |X.1 - X.2| ∧ 2 / 19 ≤ |X.1 + X.2 - 1| ∧
      ∃ k : Fin 4, X ∈ fcRegion k (2 / 19) := by
  sorry

/-- **Claim** (`FOUR_CORNERS:claim-pair-separation`), (4)–(5): for `P = (p,u)`, `Q = (q,v)` in the
left region with `p ≤ q` and all doubled areas among `A, B, P, Q` at least `s = 2/19`:
`D_A(P,Q) ≤ -s`, `D_B(P,Q) ≥ s`, `d = q - p ≥ 2s`, and the inner point `Q` satisfies
`3s ≤ q ≤ 1/2 - s`, `q + s ≤ v ≤ 1 - s - q`, `4s ≤ v ≤ 1 - 4s`.
`hand/FOUR_CORNERS.md`, lines 56–99. -/
theorem claim_pair_separation (P Q : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1)
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), P, Q]) :
    sarea (0, 0) P Q ≤ -(2 / 19) ∧ 2 / 19 ≤ sarea (0, 1) P Q ∧ 2 * (2 / 19) ≤ Q.1 - P.1 ∧
      3 * (2 / 19) ≤ Q.1 ∧ Q.1 ≤ 1 / 2 - 2 / 19 ∧ Q.1 + 2 / 19 ≤ Q.2 ∧
      Q.2 ≤ 1 - 2 / 19 - Q.1 ∧ 4 * (2 / 19) ≤ Q.2 ∧ Q.2 ≤ 1 - 4 * (2 / 19) := by
  sorry

/-- **Claim** (`FOUR_CORNERS:claim-pair-separation`), the capacity consequence: no region
contains three points, since a pair needs an `x`-span `≥ 2s` and the region's span is
`1/2 - 2s = 11/38 < 4s` (stated for every region, by rotation). `hand/FOUR_CORNERS.md`,
lines 88–91. -/
theorem claim_region_capacity (k : Fin 4) (P Q R : Point) (hP : P ∈ fcRegion k (2 / 19))
    (hQ : Q ∈ fcRegion k (2 / 19)) (hR : R ∈ fcRegion k (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, R]) : False := by
  sorry

/-! ### §2. The line through the pair -/

/-- **Claim** (`FOUR_CORNERS:claim-line-band`), (6)–(7): for a pair `P, Q` of the left region
(`p ≤ q`) with all doubled areas among the corners and `P, Q` at least `s = 2/19`, put
`a = s/(q - p)`. The line `ℓ` through `P, Q` satisfies `a ≤ ℓ(x) ≤ 1 - a` on `[0, 1]` and
`a ≥ 4/11`, and any point `X` of the square with `|D(P,Q,X)| ≥ s` has `y ≥ ℓ(x) + a ≥ 2a` or
`y ≤ ℓ(x) - a ≤ 1 - 2a`. `hand/FOUR_CORNERS.md`, lines 102–155. -/
theorem claim_line_band (P Q : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1)
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q]) :
    let a := (2 / 19) / (Q.1 - P.1)
    (∀ x, 0 ≤ x → x ≤ 1 → a ≤ pairLine P Q x ∧ pairLine P Q x ≤ 1 - a) ∧ 4 / 11 ≤ a ∧
      ∀ X : Point, X ∈ unitSquare → 2 / 19 ≤ |sarea P Q X| →
        (pairLine P Q X.1 + a ≤ X.2 ∧ 2 * a ≤ X.2) ∨
          (X.2 ≤ pairLine P Q X.1 - a ∧ X.2 ≤ 1 - 2 * a) := by
  sorry

/-! ### §3. Exactly one region contains a pair -/

/-- **Claim** (`FOUR_CORNERS:claim-exactly-one-pair`), (8): if the left region contains the pair
`P, Q`, no other region contains two points: the inner point `Z` of a second pair would give
`|det(Q - P, Z - P)| ≤ 67/722 < s`. Hence the region counts are exactly `2, 1, 1, 1`.
`hand/FOUR_CORNERS.md`, lines 157–182.

Uses: FOUR_CORNERS:claim-pair-separation, FOUR_CORNERS:claim-line-band -/
theorem claim_exactly_one_pair (P Q Z₁ Z₂ : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (k : Fin 4) (hk : k ≠ 0) (hZ₁ : Z₁ ∈ fcRegion k (2 / 19))
    (hZ₂ : Z₂ ∈ fcRegion k (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, Z₁, Z₂]) :
    False := by
  sorry

/-! ### §4. The corner signs for the top and bottom points -/

/-- **Claim** (`FOUR_CORNERS:claim-corner-signs`), (9)–(11): with the pair `P, Q` in the left
region (`p ≤ q`), a point `X` of the top region and a point `Y` of the bottom region, and all
doubled areas at least `s = 2/19`: `y_X ≥ 8/11 > v`, `D_A(Q,X) ≥ s`, `D_B(Q,X) ≥ s`,
`D_C(Q,X) ≤ -s`, the reflected signs `D_A(Q,Y) ≤ -s`, `D_B(Q,Y) ≤ -s`, `D_D(Q,Y) ≥ s`, and,
writing `X = (q + ξ, v + h)`, `Y = (q + η, v - k)`, the bounds (10)
`(s - qh)/(1 - v) ≤ ξ ≤ (qh - s)/v`, `(s - qk)/v ≤ η ≤ (qk - s)/(1 - v)` and (11)
`h ≤ 1 - s - v`, `k ≤ v - s`. `hand/FOUR_CORNERS.md`, lines 184–267.

Uses: FOUR_CORNERS:claim-pair-separation, FOUR_CORNERS:claim-line-band -/
theorem claim_corner_signs (P Q X Y : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1) (hX : X ∈ topRegion (2 / 19))
    (hY : Y ∈ bottomRegion (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X, Y]) :
    8 / 11 ≤ X.2 ∧ Q.2 < X.2 ∧ Y.2 ≤ 3 / 11 ∧ Y.2 < Q.2 ∧
      2 / 19 ≤ sarea (0, 0) Q X ∧ 2 / 19 ≤ sarea (0, 1) Q X ∧ sarea (1, 1) Q X ≤ -(2 / 19) ∧
      sarea (0, 0) Q Y ≤ -(2 / 19) ∧ sarea (0, 1) Q Y ≤ -(2 / 19) ∧
      2 / 19 ≤ sarea (1, 0) Q Y ∧
      (2 / 19 - Q.1 * (X.2 - Q.2)) / (1 - Q.2) ≤ X.1 - Q.1 ∧
      X.1 - Q.1 ≤ (Q.1 * (X.2 - Q.2) - 2 / 19) / Q.2 ∧
      (2 / 19 - Q.1 * (Q.2 - Y.2)) / Q.2 ≤ Y.1 - Q.1 ∧
      Y.1 - Q.1 ≤ (Q.1 * (Q.2 - Y.2) - 2 / 19) / (1 - Q.2) ∧
      X.2 - Q.2 ≤ 1 - 2 / 19 - Q.2 ∧ Q.2 - Y.2 ≤ Q.2 - 2 / 19 := by
  sorry

/-! ### §5. The final triangle -/

/-- **Claim** (`FOUR_CORNERS:claim-final-triangle`), (12): in the situation of
`claim_corner_signs`, `|det(X - Q, Y - Q)| = |ξk + ηh| ≤ max(F₁, F₂) ≤ 1095/13718 < s`, so the
triangle `QXY` is too small. `hand/FOUR_CORNERS.md`, lines 269–317.

Uses: FOUR_CORNERS:claim-corner-signs -/
theorem claim_final_triangle (P Q X Y : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1) (hX : X ∈ topRegion (2 / 19))
    (hY : Y ∈ bottomRegion (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X, Y]) :
    |sarea Q X Y| ≤ 1095 / 13718 ∧ (1095 / 13718 : ℝ) < 2 / 19 := by
  sorry

end Heilbronn.FourCorners
