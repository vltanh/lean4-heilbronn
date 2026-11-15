module

public import Heilbronn.Corners.CornerFamilies.SupportTriangle

/-! # Corner families, §§7–8: two interior points, the sharp six-point theorem, the seven-face
mesh (`hand/CORNER_FAMILIES.md`, lines 415–725)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). General results reused
by many notes: the two-interior-point lemma (13) and the six-point triangular-hull theorem (14),
together with the seven-face mesh of a distributed six-point triangle and its identities
(15)–(20); and the Type-III consequences: the upper-triple restriction and the triangular lower
hull of the `2+4` class (21).

Definitions:

* `FanSplit A B C P Q R`: for the interior point `P`, the other two points `Q, R` do not lie in
  a common triangle of the fan `ABP, BCP, CAP`;
* `Distributed A B C X Y Z` (lines 540–541): `X, Y, Z` strictly inside `ABC` and the fan split
  holds at each of them;
* `MeshLabelled A B C X Y Z` (15): the labelled distributed configuration, `Z ∈ int ABY`,
  `X ∈ int BCY` and the four deduced containments;
* `bary A B C α β γ`: the point with barycentric coordinates `(α, β, γ)`.

All containments are orientation-free (`InsideTriangle`), so the mesh can be used in the physical
Type-III frame `A = (0,0)`, `B = (0,1)`, `C = (1,1)`, which is clockwise. In the mesh statements
`x = [ABZ]`, `y = [BCX]`, `z = [CAY]` (ears), `a = [AZY]`, `b = [BXZ]`, `c = [CYX]` (connectors),
`k = [ZXY]` (central) and `u_A = [AZX]`, `u_B = [BXY]`, `u_C = [CYZ]`, `v_A = [AXY]`,
`v_B = [BYZ]`, `v_C = [CZX]` (cross areas); doubled areas are `|sarea …|`.

**Results.** `twoInteriorPointLemma` (13); `claim_nondistributed_bound`;
`upperTripleRestriction`; `claim_2plus4_hull`; `sixPointTriangularHullTheorem` (14);
`claim_mesh_labelling` (with Gap 3), `eq15`, `eq16_17`, `eq18`, `eq19`, `eq20`,
`claim_connector_sum`; `claim_Gamma_sharp`; `claim_fourth_vertex` (21).

**Gap 3** (inventory 02, lines 1041–1048 and `ONE_CORNER.md` 71–78): in fixed coordinates the
outer vertices cannot be relabelled cyclically; one chooses `Y` as the interior point whose
empty fan triangle lies on the edge `CA`. `claim_mesh_labelling` states that such a labelling of
the interior points exists (flagged at the declaration: not stated in the manuscript).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-! ### Distributed triples and the mesh -/

/-- For the interior point `P` of `ABC`, the other two points `Q, R` lie in distinct triangles of
its fan `ABP, BCP, CAP` (lines 476–478, 540–541): no fan triangle contains both. -/
def FanSplit (A B C P Q R : Point) : Prop :=
  ¬ (InsideTriangle Q A B P ∧ InsideTriangle R A B P) ∧
    ¬ (InsideTriangle Q B C P ∧ InsideTriangle R B C P) ∧
    ¬ (InsideTriangle Q C A P ∧ InsideTriangle R C A P)

/-- The three points `X, Y, Z` are strictly inside `ABC` and distributed: for each of them the
other two lie in distinct triangles of its fan (lines 540–541). -/
def Distributed (A B C X Y Z : Point) : Prop :=
  InsideTriangle X A B C ∧ InsideTriangle Y A B C ∧ InsideTriangle Z A B C ∧
    FanSplit A B C X Y Z ∧ FanSplit A B C Y Z X ∧ FanSplit A B C Z X Y

/-- The labelled seven-face mesh (15): `Y` inside `ABC`, `Z ∈ int ABY`, `X ∈ int BCY`, and the
deduced containments `Y ∈ int CAZ`, `X ∈ int BCZ`, `Y ∈ int CAX`, `Z ∈ int ABX`. -/
def MeshLabelled (A B C X Y Z : Point) : Prop :=
  InsideTriangle Y A B C ∧ InsideTriangle Z A B Y ∧ InsideTriangle X B C Y ∧
    InsideTriangle Y C A Z ∧ InsideTriangle X B C Z ∧ InsideTriangle Y C A X ∧
    InsideTriangle Z A B X

/-- The point with barycentric coordinates `(α, β, γ)` relative to `A, B, C`. -/
def bary (A B C : Point) (α β γ : ℝ) : Point :=
  (α * A.1 + β * B.1 + γ * C.1, α * A.2 + β * B.2 + γ * C.2)

/-! ### §7. Two interior points -/

/-- **Two-interior-point lemma** (`CORNER_FAMILIES:TwoInteriorPointLemma`), equation (13): a
triangle `ABC` containing two points `P, Q` strictly inside, such that all triangles of the five
points have area at least `t > 0`, has area at least `(4 + 2√3)t`.
`hand/CORNER_FAMILIES.md`, lines 421–472. -/
theorem twoInteriorPointLemma (A B C P Q : Point) (hP : InsideTriangle P A B C)
    (hQ : InsideTriangle Q A B C) (t : ℝ) (ht : 0 < t)
    (hmin : t ≤ minTriangleArea ![A, B, C, P, Q]) :
    (4 + 2 * Real.sqrt 3) * t ≤ triangleArea A B C := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-nondistributed-bound`; new id for the common step of
`CORNER_FAMILIES:UpperTripleRestriction` (lines 479–486) and the non-distributed case of
`CORNER_FAMILIES:SixPointTriangularHullTheorem` (lines 531–539)): if three points strictly inside
`ABC` are not distributed, two of them share a fan triangle of the third, so
`area(ABC) ≥ (4 + 2√3)t + 2t = (6 + 2√3)t`.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_nondistributed_bound (A B C X Y Z : Point) (hX : InsideTriangle X A B C)
    (hY : InsideTriangle Y A B C) (hZ : InsideTriangle Z A B C) (t : ℝ) (ht : 0 < t)
    (hmin : t ≤ minTriangleArea ![A, B, C, X, Y, Z]) (hnd : ¬ Distributed A B C X Y Z) :
    (6 + 2 * Real.sqrt 3) * t ≤ triangleArea A B C := by
  sorry

/-- **Upper-triple restriction** (`CORNER_FAMILIES:UpperTripleRestriction`): in a Type-III
configuration of minimum area at least `A₀`, three upper free points (here `U, V, W`) are
distributed in `ABC`, `A = (0,0)`, `B = (0,1)`, `C = (1,1)`; otherwise
`1/2 ≥ (6 + 2√3)t`, `t ≤ 1/(12 + 4√3) < 7/132 < 17/320 < A₀`. The manuscript assumes exactly
three upper points; the argument uses only the three. `hand/CORNER_FAMILIES.md`, lines 474–492.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem upperTripleRestriction (U V W X Y Z : Point) (hU : U ∈ unitSquare)
    (hV : V ∈ unitSquare) (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hZ : Z ∈ unitSquare) (hmin : A₀ ≤ minTriangleArea (typeIIIConfig U V W X Y Z))
    (hUu : U.1 < U.2) (hVu : V.1 < V.2) (hWu : W.1 < W.2) :
    Distributed (0, 0) (0, 1) (1, 1) U V W := by
  sorry

/-! ### §8. The two-upper-point case and the sharp six-point theorem -/

/-- **Claim** (`CORNER_FAMILIES:claim-2+4-hull`): a Type-III configuration with two upper free
points `U, V`, four lower ones `W, X, Y, Z` and minimum area greater than `7/128` has the two
upper points strictly inside `ABC`, and one lower point `R` such that the other three are strictly
inside `ACR`; the hull of the nine points is the quadrilateral `ABCR`.
`hand/CORNER_FAMILIES.md`, lines 499–511.

Uses: CORNER_FAMILIES:NontriangularHullLemma -/
theorem claim_2plus4_hull (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hUu : U.1 < U.2) (hVu : V.1 < V.2) (hWl : W.2 < W.1) (hXl : X.2 < X.1) (hYl : Y.2 < Y.1)
    (hZl : Z.2 < Z.1) (hmin : 7 / 128 < minTriangleArea (typeIIIConfig U V W X Y Z)) :
    InsideTriangle U (0, 0) (0, 1) (1, 1) ∧ InsideTriangle V (0, 0) (0, 1) (1, 1) ∧
      ∃ i : Fin 4, (∀ j, j ≠ i → InsideTriangle (![W, X, Y, Z] j) (0, 0) (![W, X, Y, Z] i) (1, 1)) ∧
        convexHull ℝ (Set.range (typeIIIConfig U V W X Y Z)) =
          convexHull ℝ ({(0, 0), (0, 1), (1, 1), ![W, X, Y, Z] i} : Set Point) := by
  sorry

/-- **Six-point triangular-hull theorem** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`),
equation (14): six points whose convex hull is a triangle `ABC` (the other three strictly
inside) and whose triangles all have area at least `t` satisfy
`area(ABC) ≥ Γt`, `Γ = (11 + 3√5)/2`; the constant is sharp (`claim_Gamma_sharp`).
`hand/CORNER_FAMILIES.md`, lines 516–672.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, CORNER_FAMILIES:claim-nondistributed-bound -/
theorem sixPointTriangularHullTheorem (A B C X Y Z : Point) (hX : InsideTriangle X A B C)
    (hY : InsideTriangle Y A B C) (hZ : InsideTriangle Z A B C) (t : ℝ)
    (hmin : t ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    (11 + 3 * Real.sqrt 5) / 2 * t ≤ triangleArea A B C := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`, labelling step of the mesh,
lines 543–550; see Gap 3): a distributed triple in general position can be named `X, Y, Z` (a
permutation of the three points, the outer vertices fixed) so that `Z ∈ int ABY` and
`X ∈ int BCY`: take `Y` the point whose empty fan triangle is `CAY`. The manuscript relabels
the outer vertices instead, which is not possible in fixed coordinates (inventory 02, Gap 3). -/
-- FLAG: implicit step. Not stated in the manuscript (CORNER_FAMILIES lines 543–546, 1041–1048;
-- ONE_CORNER lines 71–78); needed to use the mesh in the physical Type-III frame.
theorem claim_mesh_labelling (A B C P Q R : Point) (hd : Distributed A B C P Q R)
    (hgp : 0 < minTriangleArea ![A, B, C, P, Q, R]) :
    ∃ σ : Equiv.Perm (Fin 3),
      InsideTriangle (![P, Q, R] (σ 2)) A B (![P, Q, R] (σ 1)) ∧
        InsideTriangle (![P, Q, R] (σ 0)) B C (![P, Q, R] (σ 1)) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`), the containments (15): for a
distributed triple in general position with `Z ∈ int ABY` and `X ∈ int BCY`, also
`Y ∈ int CAZ`, `X ∈ int BCZ`, `Y ∈ int CAX`, `Z ∈ int ABX`. `hand/CORNER_FAMILIES.md`,
lines 552–569. -/
theorem eq15 (A B C X Y Z : Point) (hd : Distributed A B C X Y Z)
    (hgp : 0 < minTriangleArea ![A, B, C, X, Y, Z]) (hZ : InsideTriangle Z A B Y)
    (hX : InsideTriangle X B C Y) : MeshLabelled A B C X Y Z := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`), (16)–(17): in a labelled mesh the
quadrilateral `BZYX` is convex and flipping `BY` to `ZX` gives the seven faces; the seven faces
and the six cross areas all have the orientation of `ABC`, and the seven faces tile `ABC`.
`hand/CORNER_FAMILIES.md`, lines 571–602. -/
theorem eq16_17 (A B C X Y Z : Point) (hm : MeshLabelled A B C X Y Z) :
    0 < sarea A B C * sarea A B Z ∧ 0 < sarea A B C * sarea B C X ∧
      0 < sarea A B C * sarea C A Y ∧ 0 < sarea A B C * sarea A Z Y ∧
      0 < sarea A B C * sarea B X Z ∧ 0 < sarea A B C * sarea C Y X ∧
      0 < sarea A B C * sarea Z X Y ∧
      0 < sarea A B C * sarea A Z X ∧ 0 < sarea A B C * sarea B X Y ∧
      0 < sarea A B C * sarea C Y Z ∧ 0 < sarea A B C * sarea A X Y ∧
      0 < sarea A B C * sarea B Y Z ∧ 0 < sarea A B C * sarea C Z X ∧
      triangleArea A B C = triangleArea A B Z + triangleArea B C X + triangleArea C A Y +
        triangleArea A Z Y + triangleArea B X Z + triangleArea C Y X + triangleArea Z X Y := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`), identities (18):
`a = u_A + v_A - k`, `b = u_B + v_B - k`, `c = u_C + v_C - k` (signed areas, all points).
`hand/CORNER_FAMILIES.md`, lines 604–608. -/
theorem eq18 (A B C X Y Z : Point) :
    sarea A Z Y = sarea A Z X + sarea A X Y - sarea Z X Y ∧
      sarea B X Z = sarea B X Y + sarea B Y Z - sarea Z X Y ∧
      sarea C Y X = sarea C Y Z + sarea C Z X - sarea Z X Y := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`), the Plücker identities (19):
`xk = ab - u_A v_B`, `yk = bc - u_B v_C`, `zk = ca - u_C v_A` (signed areas, all points).
`hand/CORNER_FAMILIES.md`, lines 610–622. -/
theorem eq19 (A B C X Y Z : Point) :
    sarea A B Z * sarea Z X Y = sarea A Z Y * sarea B X Z - sarea A Z X * sarea B Y Z ∧
      sarea B C X * sarea Z X Y = sarea B X Z * sarea C Y X - sarea B X Y * sarea C Z X ∧
      sarea C A Y * sarea Z X Y = sarea C Y X * sarea A Z Y - sarea C Y Z * sarea A X Y := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`), inequality (20) at a general
doubled threshold `s` (used by `TYPE_II.md` lines 570–618 and `ONE_CORNER.md`): in a labelled
mesh whose six points have all doubled areas at least `s`, with doubled connectors `a, b, c`,
central `k` and cross areas `u_i, v_i`, multiplying (20) by `s²`:
`Σ (a - s)(b - s) + s(a + b + c - 3s) ≥ 3s² + 6s(k - s) + Σ (u_A - s)(v_B - s) ≥ 3s²`.
`hand/CORNER_FAMILIES.md`, lines 624–654.

Uses: CORNER_FAMILIES:SixPointTriangularHullTheorem (18), (19) -/
theorem eq20 (A B C X Y Z : Point) (s : ℝ) (hs : 0 < s) (hm : MeshLabelled A B C X Y Z)
    (hmin : s / 2 ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    let a := |sarea A Z Y|
    let b := |sarea B X Z|
    let c := |sarea C Y X|
    let k := |sarea Z X Y|
    let uA := |sarea A Z X|
    let uB := |sarea B X Y|
    let uC := |sarea C Y Z|
    let vA := |sarea A X Y|
    let vB := |sarea B Y Z|
    let vC := |sarea C Z X|
    3 * s ^ 2 + 6 * s * (k - s) +
        ((uA - s) * (vB - s) + (uB - s) * (vC - s) + (uC - s) * (vA - s)) ≤
      (a - s) * (b - s) + (b - s) * (c - s) + (c - s) * (a - s) + s * (a + b + c - 3 * s) ∧
    3 * s ^ 2 ≤ 3 * s ^ 2 + 6 * s * (k - s) +
        ((uA - s) * (vB - s) + (uB - s) * (vC - s) + (uC - s) * (vA - s)) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`), the by-product used in §10
(lines 903–904): in a labelled mesh with all doubled areas at least `s > 0`, the doubled
connectors satisfy `a + b + c ≥ 3φs`, `φ = (1 + √5)/2` (from `Z₀ ≥ 3(√5 - 1)/2`).
`hand/CORNER_FAMILIES.md`, lines 656–661, 903–904.

Uses: CORNER_FAMILIES:SixPointTriangularHullTheorem (20) -/
theorem claim_connector_sum (A B C X Y Z : Point) (s : ℝ) (hs : 0 < s)
    (hm : MeshLabelled A B C X Y Z) (hmin : s / 2 ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    3 * ((1 + Real.sqrt 5) / 2) * s ≤ |sarea A Z Y| + |sarea B X Z| + |sarea C Y X| := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-Gamma-sharp`): attainment of (14). With `φ = (1 + √5)/2`,
`r = 1/(4 + 3φ)`, and in barycentric coordinates `Y = r(φ + 2, 1, 2φ + 1)`,
`Z = r(2φ + 1, φ + 2, 1)`, `X = r(1, 2φ + 1, φ + 2)` relative to any nondegenerate `ABC`, the
minimum area of the six points is `area(ABC)/Γ`. Not used by any proof.
`hand/CORNER_FAMILIES.md`, lines 674–701. -/
theorem claim_Gamma_sharp (A B C : Point) (hABC : sarea A B C ≠ 0) :
    let φ := (1 + Real.sqrt 5) / 2
    let r := 1 / (4 + 3 * φ)
    let Y := bary A B C (r * (φ + 2)) r (r * (2 * φ + 1))
    let Z := bary A B C (r * (2 * φ + 1)) (r * (φ + 2)) r
    let X := bary A B C r (r * (2 * φ + 1)) (r * (φ + 2))
    minTriangleArea ![A, B, C, X, Y, Z] = triangleArea A B C / ((11 + 3 * Real.sqrt 5) / 2) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-fourth-vertex`), equation (21): if `R` is below the diagonal
and three points lie strictly inside `ACR` (`A = (0,0)`, `C = (1,1)`), with all triangles of the
six points of area at least `t`, then `r_x - r_y = 2 area(ACR) ≥ (11 + 3√5)t` (at `t ≥ A₀`,
`≥ (11 + 3√5)A₀ ≈ 0.97176`). `hand/CORNER_FAMILIES.md`, lines 703–725.

Uses: CORNER_FAMILIES:SixPointTriangularHullTheorem -/
theorem claim_fourth_vertex (R P₁ P₂ P₃ : Point) (hR : R.2 < R.1)
    (h₁ : InsideTriangle P₁ (0, 0) R (1, 1)) (h₂ : InsideTriangle P₂ (0, 0) R (1, 1))
    (h₃ : InsideTriangle P₃ (0, 0) R (1, 1)) (t : ℝ)
    (hmin : t ≤ minTriangleArea ![(0, 0), R, (1, 1), P₁, P₂, P₃]) :
    (11 + 3 * Real.sqrt 5) * t ≤ R.1 - R.2 := by
  sorry

end Heilbronn.CornerFamilies
