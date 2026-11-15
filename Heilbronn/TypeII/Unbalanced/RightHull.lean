module

public import Heilbronn.Common.Families

/-! # Outer right-hull cells in the unbalanced upper cut (`hand/UNBALANCED_RIGHT_HULL.md`)

**Role.** Primary route. The first of the ten notes on the unbalanced Type-II row
`(ℓ, c, r) = (1, 2, 3)` (`hand/TYPE_II.md` §3, §8); its Theorems 1–4 are cited by the assembly
`UNBALANCED_FINAL_LOWER_WEDGE:Theorem2`, and its equations (2), (5), (9) are reused by the other
nine notes.

**Shared definitions of the unbalanced group.** This file also holds the definitions used by all
ten modules `Heilbronn/TypeII/Unbalanced/*.lean`:

* the anchors `ptD = (0,1)`, `ptC = (1,1)`, `ptE l = (0,λ)`, `ptB b = (b,0)` of
  `typeIIConfig l b P Q R S T = ![D, C, E, B, P, Q, R, S, T]` (`typeIIConfig_eq`); the free points
  are always named `P, Q` (central) and `R, S, T` (right), in this order;
* `Kc = 4 + 2√3`, the constant of the two-interior-point lemma;
* `Row123 l b P Q R S T`: the standing setting of the row `(1, 2, 3)` in the normalization
  `0 < b ≤ 1/2` (`TYPE_II.md` (6)): `P, Q` strictly inside `DBC`, `R, S, T` in the square and
  strictly right of `BC`;
* `ConvexQuad`, `QuadHull B R S C T` (the nontriangular right hull, labelled cyclically, with `T`
  inside), the support cells `CellI`, `CellII`, `CellIII`, `RightHullTriangular`, `IsRelabel`;
* `NoPointInside`, `AtMostOne`, `AtMostOneInside` (emptiness and capacity one of a triangle);
* the pair-line signs `LineIsolates` (three points), `LineIsolates4` (`TYPE_II.md` §12: one of
  four anchors alone in an open half-plane of `PQ`) and `LineSeparates` (two against two);
* the ear functionals `outerEar s b C = N_b(C)` of (6) and `genericEar s b C = 𝒩_b(C)` of (9).

Brackets `[XYZ]` of the manuscripts are `sarea X Y Z` (twice the signed area, positive for
counterclockwise `X, Y, Z`). With `R = (r, u)`, `S = (k, t)`, `q = 1 - λ`, `w = 1 - b`:
`[EBR] = bu + λ(r-b)`, `[ERC] = 1 - u - q(1-r)`, `[DRC] = 1 - u`, `[BRC] = r - b - wu`,
`[EBC] = 1 - wq`. "Above `CE`" is `0 < sarea (ptE l) ptC X`; "above `DR`" (the `C`-side) is
`0 < sarea ptD R X`; "above `ER`" is `0 < sarea (ptE l) R X`. Points on `DB` or `BC`, and
collinear triples, are excluded by the positive minimum area, so all containments are strict.

**Setting of this note** (lines 5-23): `Row123` with every actual doubled area at least
`s = 7/64`, i.e. `7/128 ≤ minTriangleArea (typeIIConfig l b P Q R S T)`.

**Results.**
* `theorem1`: a nontriangular right hull is, after relabelling, a quadrilateral `BRSC` with `T`
  inside, in support cell I, II or III.
* `claim_outer_cell_scale` (1), `claim_lower_vertex` (2), `claim_cell_ear` (3),
  `claim_ear_root` (4)-(5), `claim_Nb` (6): the outer-cell ear inequalities.
* `claim_q67_80` (7)-(8): both central points above `CE` force `q > 67/80`.
* `theorem2`: with both central points above `CE`, cells I and III are impossible.
* `claim_generic_ear` (9): the generic ear inequality of every quadrilateral right hull.
* `claim_qC` (10), `theorem3`: `PQ` cannot isolate `C`.
* `claim_weighted_D` (13), `claim_qD` (14)-(15), `theorem4`: `PQ` cannot isolate `D`, hence it
  separates `{D, C}` from `{E, B}`.

Implicit in the manuscript: the cyclic labelling `B, R, S, C` of Theorem 1 is a relabelling of
the three right points (stated with `IsRelabel`); Theorems 3-4 are stated for the labelled
quadrilateral hull `QuadHull`, which Theorem 1 provides.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedRightHull

/-! ### The Type-II anchors -/

/-- The anchor `D = (0, 1)`. -/
def ptD : Point := (0, 1)

/-- The anchor `C = (1, 1)`. -/
def ptC : Point := (1, 1)

/-- The anchor `E = (0, λ)` on the left side. -/
def ptE (l : ℝ) : Point := (0, l)

/-- The anchor `B = (b, 0)` on the bottom side. -/
def ptB (b : ℝ) : Point := (b, 0)

/-- The Type-II configuration with its anchors named: indices `0, …, 8` are
`D, C, E, B, P, Q, R, S, T`. -/
theorem typeIIConfig_eq (l b : ℝ) (P Q R S T : Point) :
    typeIIConfig l b P Q R S T = ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := rfl

/-- The constant `K = 4 + 2√3` of the two-interior-point lemma (`CORNER_FAMILIES.md` §7): a
triangle of doubled area `H` containing two further actual points has `H ≥ K s`. -/
def Kc : ℝ := 4 + 2 * Real.sqrt 3

/-! ### The standing setting of the unbalanced row -/

/-- The standing setting of the ten unbalanced notes: the Type-II anchors with `0 < b ≤ 1/2`,
`0 < λ < 1` (`TYPE_II.md` (5)-(6)), and the count `(ℓ, c, r) = (1, 2, 3)` of `TYPE_II.md` §3:
`E` is the only further point of the left container, the central points `P, Q` lie (strictly)
inside `DBC` (counterclockwise `D, B, C`), and the three right points `R, S, T` lie in the right
container `conv{B, C, (1,0)}`, i.e. in the square and strictly to the right of `BC`
(`0 < [BXC]`). Strictness is free: a point on `DB`, `BC` or `DC` would make a zero area. -/
structure Row123 (l b : ℝ) (P Q R S T : Point) : Prop where
  b_pos : 0 < b
  b_le : b ≤ 1 / 2
  l_pos : 0 < l
  l_lt : l < 1
  P_central : InTriangle P ptD (ptB b) ptC
  Q_central : InTriangle Q ptD (ptB b) ptC
  R_mem : R ∈ unitSquare
  S_mem : S ∈ unitSquare
  T_mem : T ∈ unitSquare
  R_right : 0 < sarea (ptB b) R ptC
  S_right : 0 < sarea (ptB b) S ptC
  T_right : 0 < sarea (ptB b) T ptC

/-! ### Right hulls and support cells -/

/-- `A, B, C, D`, in this cyclic order, is a strictly convex counterclockwise quadrilateral. -/
def ConvexQuad (A B C D : Point) : Prop :=
  0 < sarea A B C ∧ 0 < sarea B C D ∧ 0 < sarea C D A ∧ 0 < sarea D A B

/-- The nontriangular right hull, labelled cyclically: `B, R, S, C` is a strictly convex
counterclockwise quadrilateral and `T` lies strictly inside it (`UNBALANCED_RIGHT_HULL.md`
lines 62-64). -/
def QuadHull (B R S C T : Point) : Prop :=
  ConvexQuad B R S C ∧ 0 < sarea B R T ∧ 0 < sarea R S T ∧ 0 < sarea S C T ∧ 0 < sarea C B T

/-- Support cell I: `T ∈ int BRS ∩ int BCR` (`UNBALANCED_RIGHT_HULL.md` table, lines 66-70). -/
def CellI (B R S C T : Point) : Prop := InTriangle T B R S ∧ InTriangle T B R C

/-- Support cell II: `T ∈ int BCR ∩ int BCS`. -/
def CellII (B R S C T : Point) : Prop := InTriangle T B R C ∧ InTriangle T B S C

/-- Support cell III: `T ∈ int CRS ∩ int BCS`. -/
def CellIII (B R S C T : Point) : Prop := InTriangle T R S C ∧ InTriangle T B S C

/-- The right five-point hull is a triangle: one right point `X` with `B, X, C` containing the
other two (`B`, `C` are always hull vertices, since the container lies below `BC`). -/
def RightHullTriangular (B C R S T : Point) : Prop :=
  (InTriangle S B R C ∧ InTriangle T B R C) ∨ (InTriangle R B S C ∧ InTriangle T B S C) ∨
    (InTriangle R B T C ∧ InTriangle S B T C)

/-- `(R', S', T')` is a relabelling of `(R, S, T)`. -/
def IsRelabel (R S T R' S' T' : Point) : Prop :=
  ∃ σ : Equiv.Perm (Fin 3), ![R', S', T'] = ![R, S, T] ∘ σ

/-! ### Emptiness and capacity of triangles -/

/-- No point of the configuration `X` lies strictly inside the counterclockwise triangle
`ABC` ("`ABC` contains no further actual point"). -/
def NoPointInside {n : ℕ} (X : Fin n → Point) (A B C : Point) : Prop :=
  ∀ i, ¬ InTriangle (X i) A B C

/-- At most one point of the configuration `X` has the property `p`. -/
def AtMostOne {n : ℕ} (X : Fin n → Point) (p : Point → Prop) : Prop :=
  ∀ i j, p (X i) → p (X j) → i = j

/-- The counterclockwise triangle `ABC` contains at most one further actual point (capacity
one). -/
def AtMostOneInside {n : ℕ} (X : Fin n → Point) (A B C : Point) : Prop :=
  AtMostOne X fun Y => InTriangle Y A B C

/-! ### Pair-line signs -/

/-- The line `XY` isolates `V` from `A, B`: `V` is in one open half-plane, `A, B` in the
other. -/
def LineIsolates (X Y V A B : Point) : Prop :=
  (0 < sarea X Y V ∧ sarea X Y A < 0 ∧ sarea X Y B < 0) ∨
    (sarea X Y V < 0 ∧ 0 < sarea X Y A ∧ 0 < sarea X Y B)

/-- The line `XY` isolates `V` from `A, B, C` (`TYPE_II.md` lines 1156-1158). -/
def LineIsolates4 (X Y V A B C : Point) : Prop :=
  (0 < sarea X Y V ∧ sarea X Y A < 0 ∧ sarea X Y B < 0 ∧ sarea X Y C < 0) ∨
    (sarea X Y V < 0 ∧ 0 < sarea X Y A ∧ 0 < sarea X Y B ∧ 0 < sarea X Y C)

/-- The line `XY` puts `A, B` strictly on one side and `C, D` strictly on the other. -/
def LineSeparates (X Y A B C D : Point) : Prop :=
  (0 < sarea X Y A ∧ 0 < sarea X Y B ∧ sarea X Y C < 0 ∧ sarea X Y D < 0) ∨
    (sarea X Y A < 0 ∧ sarea X Y B < 0 ∧ 0 < sarea X Y C ∧ 0 < sarea X Y D)

/-! ### The ear functionals -/

/-- The outer-cell ear functional `N_b(C) = 4Cbsw - {wC - s(1+b)}²`, `w = 1 - b`, of (6). -/
def outerEar (s b C : ℝ) : ℝ := 4 * C * b * s * (1 - b) - ((1 - b) * C - s * (1 + b)) ^ 2

/-- The generic ear functional `𝒩_b(C) = 4Cbs - w(C - s)²`, `w = 1 - b`, of (9). -/
def genericEar (s b C : ℝ) : ℝ := 4 * C * b * s - (1 - b) * (C - s) ^ 2

/-! ### Theorem 1 and the outer-cell ear inequalities -/

variable {l b : ℝ} {P Q R S T : Point}

/-- **Theorem 1** (`UNBALANCED_RIGHT_HULL:Theorem1`). If the five right points `B, C, R, S, T`
have a nontriangular hull, then after relabelling `R, S, T` the hull is the counterclockwise
quadrilateral `B, R, S, C` with the fifth point `T` strictly inside, and `T` is in support cell
I, II or III (cells IV and V are impossible). This holds in either central cut.
`hand/UNBALANCED_RIGHT_HULL.md`, lines 25-29, 50-61.
Uses: TYPE_II:claim-support-normalization, TYPE_II:claim-five-cells,
TYPE_II:EndpointTriangleTheorem. -/
theorem theorem1 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hnt : ¬ RightHullTriangular (ptB b) ptC R S T) :
    ∃ R' S' T' : Point, IsRelabel R S T R' S' T' ∧ QuadHull (ptB b) R' S' ptC T' ∧
      (CellI (ptB b) R' S' ptC T' ∨ CellII (ptB b) R' S' ptC T' ∨
        CellIII (ptB b) R' S' ptC T') := sorry

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-outer-cell-scale`), equation (1). In cells I and
III: `s/w ≤ 1/K`, `w ≥ Ks > 13/16` and `b < 3/16` (`s = 7/64`, `w = 1 - b`).
`hand/UNBALANCED_RIGHT_HULL.md`, lines 73-82.
Uses: TYPE_II:claim-support-normalization, TYPE_II:EndpointTriangleTheorem. -/
theorem claim_outer_cell_scale (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) :
    7 / 64 / (1 - b) ≤ 1 / Kc ∧ Kc * (7 / 64) ≤ 1 - b ∧ 13 / 16 < Kc * (7 / 64) ∧
      b < 3 / 16 := sorry

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-lower-vertex`), equation (2). In the normalized right
container (`B₀ = (0,0)`, `C₀ = (1,1)`, `R₀ = (x, y)`, `S₀ = (z, t)`), if
`U = xt - yz ≥ ma` and `V = U + z - t - x + y ≥ na`, with `x > y ≥ 0`, `x < 1`, `z ≤ 1`, then
`(x - y)(1 - x) ≥ a{nx + m(1 - x)}`. `hand/UNBALANCED_RIGHT_HULL.md`, lines 86-116. -/
theorem claim_lower_vertex {x y z t a m n : ℝ} (hxy : y < x) (hy : 0 ≤ y) (hx : x < 1)
    (hz : z ≤ 1) (hU : m * a ≤ x * t - y * z)
    (hV : n * a ≤ x * t - y * z + z - t - x + y) :
    a * (n * x + m * (1 - x)) ≤ (x - y) * (1 - x) := sorry

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-cell-ear`), equation (3). With `x = (r-b)/w`,
`a = s/w` (`s = 7/64`): in cell I, `u ≤ x - 2a - a/(1-x)`; in cell III,
`u ≤ x + 2a - 3a/(1-x)`. `hand/UNBALANCED_RIGHT_HULL.md`, lines 118-127.
Uses: UNBALANCED_RIGHT_HULL:claim-lower-vertex. -/
theorem claim_cell_ear (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    let x := (R.1 - b) / (1 - b)
    let a := 7 / 64 / (1 - b)
    (CellI (ptB b) R S ptC T → R.2 ≤ x - 2 * a - a / (1 - x)) ∧
      (CellIII (ptB b) R S ptC T → R.2 ≤ x + 2 * a - 3 * a / (1 - x)) := sorry

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-ear-root`), equations (4)-(5). With
`c = b + λw = 1 - wq` and `d = bs/w` (`s = 7/64`): `s ≤ [EBR]`; in cell I
`[EBR] ≤ c - 2d - 2√(cd)`, in cell III `[EBR] ≤ c + 2d - 2√(3cd)`, and in both cells
`[EBR] ≤ c - 2d - 2√(cd)`, so `s ≤ c - 2d - 2√(cd)` (5).
`hand/UNBALANCED_RIGHT_HULL.md`, lines 129-159.
Uses: UNBALANCED_RIGHT_HULL:claim-cell-ear, UNBALANCED_RIGHT_HULL:claim-outer-cell-scale. -/
theorem claim_ear_root (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    let c := b + l * (1 - b)
    let d := b * s / (1 - b)
    s ≤ sarea (ptE l) (ptB b) R ∧
      (CellI (ptB b) R S ptC T → sarea (ptE l) (ptB b) R ≤ c - 2 * d - 2 * Real.sqrt (c * d)) ∧
      (CellIII (ptB b) R S ptC T →
        sarea (ptE l) (ptB b) R ≤ c + 2 * d - 2 * Real.sqrt (3 * c * d)) ∧
      sarea (ptE l) (ptB b) R ≤ c - 2 * d - 2 * Real.sqrt (c * d) ∧
      s ≤ c - 2 * d - 2 * Real.sqrt (c * d) := sorry

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-Nb`), equation (6). In cells I and III, every
`C ≥ c = 1 - wq` satisfies `N_b(C) = 4Cbsw - {wC - s(1+b)}² ≤ 0` (`s = 7/64`).
`hand/UNBALANCED_RIGHT_HULL.md`, lines 161-172.
Uses: UNBALANCED_RIGHT_HULL:claim-ear-root. -/
theorem claim_Nb (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) :
    ∀ C : ℝ, 1 - (1 - b) * (1 - l) ≤ C → outerEar (7 / 64) b C ≤ 0 := sorry

/-! ### Two upper central points -/

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-q67/80`), equations (7)-(8). If `P, Q` are both
above `CE` (any right hull), then `A = q - s(q+1) > 0`, `A² ≥ 4sq(1 + bq)`, hence
`F(q) = A² - 4sq(1+s) ≥ 0`, so `q > 67/80` and `s ≤ b` (`s = 7/64`, `q = 1 - λ`). In cells I
and III also `b < 3/16`.
FLAG (scope): the boxed (8) reads `q > 67/80, s ≤ b < 3/16`; the bound `b < 3/16` comes from
(1) and holds only in cells I/III, so it is stated as a separate implication, while
`q > 67/80` is used for every right hull (Theorem 4, `UNBALANCED_RADIAL_SPLIT.md` §2).
`hand/UNBALANCED_RIGHT_HULL.md`, lines 174-207.
Uses: TYPE_II:TwoPointChamberLemma, TYPE_II:claim-PQ-line-table,
UNBALANCED_RIGHT_HULL:claim-outer-cell-scale. -/
theorem claim_q67_80 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q) :
    let s : ℝ := 7 / 64
    let q := 1 - l
    0 < q - s * (q + 1) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (q + 1)) ^ 2 ∧
      0 ≤ (q - s * (q + 1)) ^ 2 - 4 * s * q * (1 + s) ∧ 67 / 80 < q ∧ s ≤ b ∧
      (QuadHull (ptB b) R S ptC T → CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T →
        b < 3 / 16) := sorry

/-- **Theorem 2** (`UNBALANCED_RIGHT_HULL:Theorem2`). If `P, Q` are both above `CE`, the
quadrilateral right hull cannot be in support cell I or III. `hand/UNBALANCED_RIGHT_HULL.md`,
lines 31-33, 209-282.
Uses: UNBALANCED_RIGHT_HULL:claim-Nb, UNBALANCED_RIGHT_HULL:claim-q67/80. -/
theorem theorem2 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) : False := sorry

/-! ### The generic ear and the isolated-endpoint lines -/

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-generic-ear`), equation (9). For every
quadrilateral right hull (any cell, any cut), with `c = 1 - wq`, `s = 7/64`:
`s ≤ c - 2√(cbs/w)`, hence `𝒩_b(C) = 4Cbs - w(C - s)² ≤ 0` for every `C ≥ c`.
`hand/UNBALANCED_RIGHT_HULL.md`, lines 286-299.
Uses: UNBALANCED_RIGHT_HULL:claim-lower-vertex. -/
theorem claim_generic_ear (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    let c := 1 - (1 - b) * (1 - l)
    s ≤ c - 2 * Real.sqrt (c * b * s / (1 - b)) ∧
      ∀ C : ℝ, c ≤ C → genericEar s b C ≤ 0 := sorry

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-qC`), equation (10). If `P, Q` are both above `CE`
and `PQ` isolates `C` from `D, E, B`, then `b ≤ 2/7` (`TYPE_II.md` (36)) and
`q > q_C(b) = 4/5 + 2b/3`. `hand/UNBALANCED_RIGHT_HULL.md`, lines 302-336.
Uses: TYPE_II:claim-PQ-line-table, TYPE_II:claim-b-le-2/7. -/
theorem claim_qC (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hiso : LineIsolates4 P Q ptC ptD (ptE l) (ptB b)) :
    b ≤ 2 / 7 ∧ 4 / 5 + 2 * b / 3 < 1 - l := sorry

/-- **Theorem 3** (`UNBALANCED_RIGHT_HULL:Theorem3`). In the two-point upper cut with a
nontriangular (quadrilateral) right hull, the line `PQ` cannot isolate `C` from `D, E, B`.
`hand/UNBALANCED_RIGHT_HULL.md`, lines 40-42, 284-399.
Uses: UNBALANCED_RIGHT_HULL:claim-qC, UNBALANCED_RIGHT_HULL:claim-generic-ear,
UNBALANCED_RIGHT_HULL:Theorem1. -/
theorem theorem3 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hq : QuadHull (ptB b) R S ptC T) :
    ¬ LineIsolates4 P Q ptC ptD (ptE l) (ptB b) := sorry

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-weighted-D`), equation (13). If `P, Q` are both
above `CE` and `PQ` isolates `D` from `C, E, B`, then with `c = 1 - (1-b)q`, `s = 7/64`:
`A_* = qc - s(q + c) > 0` and `F_* = A_*² - 4sq(1-q)c ≥ 0`.
`hand/UNBALANCED_RIGHT_HULL.md`, lines 415-465. -/
theorem claim_weighted_D (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hiso : LineIsolates4 P Q ptD ptC (ptE l) (ptB b)) :
    let s : ℝ := 7 / 64
    let q := 1 - l
    let c := 1 - (1 - b) * q
    0 < q * c - s * (q + c) ∧ 0 ≤ (q * c - s * (q + c)) ^ 2 - 4 * s * q * (1 - q) * c := sorry

/-- **Claim** (`UNBALANCED_RIGHT_HULL:claim-qD`), equations (14)-(15). If `P, Q` are both above
`CE` and `PQ` isolates `D`, then `b ≤ 2/7`, `q > q_D(b) = 3/4 + 5b/6`, and `q > 8/9` when
`b ≤ 1/6`. `hand/UNBALANCED_RIGHT_HULL.md`, lines 467-520.
Uses: TYPE_II:claim-PQ-line-table, TYPE_II:claim-b-le-2/7,
UNBALANCED_RIGHT_HULL:claim-weighted-D, UNBALANCED_RIGHT_HULL:claim-q67/80. -/
theorem claim_qD (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hiso : LineIsolates4 P Q ptD ptC (ptE l) (ptB b)) :
    b ≤ 2 / 7 ∧ 3 / 4 + 5 * b / 6 < 1 - l ∧ (b ≤ 1 / 6 → 8 / 9 < 1 - l) := sorry

/-- **Theorem 4** (`UNBALANCED_RIGHT_HULL:Theorem4`). Under the hypotheses of Theorem 3, `PQ`
cannot isolate `D` either. Thus `PQ` puts `D, C` strictly on one side and `E, B` strictly on
the other. `hand/UNBALANCED_RIGHT_HULL.md`, lines 44-46, 401-569.
Uses: UNBALANCED_RIGHT_HULL:claim-qD, UNBALANCED_RIGHT_HULL:claim-generic-ear,
UNBALANCED_RIGHT_HULL:Theorem1, UNBALANCED_RIGHT_HULL:Theorem3, TYPE_II:TwoPointChamberLemma,
TYPE_II:claim-PQ-line-table. -/
theorem theorem4 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hq : QuadHull (ptB b) R S ptC T) :
    ¬ LineIsolates4 P Q ptD ptC (ptE l) (ptB b) ∧
      LineSeparates P Q ptD ptC (ptE l) (ptB b) := sorry

end Heilbronn.UnbalancedRightHull
