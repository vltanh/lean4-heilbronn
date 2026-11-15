module

public import Heilbronn.C1.OneLower.TopCap

/-! # The one-lower C1 hexagon with a single side-cap point (`hand/C1_ONE_LOWER_SIDE_CAP.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses
Theorem 1 for the occupancy with exactly one exterior point in the left cap, and (by reflection)
in the right cap. Corollary 2 restates the part of that assembly with at most one exterior point.
Section 4 (the strengthened occupancy rule, `eq9`) is cited by `C1_ONE_LOWER_TOP_TRIANGLE.md`.

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1` and minimum triangle area at
least `A₀`; the free points `L ∈ OHC`, `P, Q ∈ HCDF` and `X = (g, k)` in the left cap
`HF(0,1) \ HF`, in the configuration `c1Config h c d f L P Q X`. No relation between `f` and `d`
is imposed (lines 38-39), so that the right cap follows by transposition. Thresholds
`s = 8/73`, `ρ = 49/60` (local notations). The full hull is the hexagon `O, C, D, F, X, H`.

**Results.**
* `theorem1` (`C1_ONE_LOWER_SIDE_CAP:Theorem1`), with the reflection `transpose_right`.
* `corollary2` (`C1_ONE_LOWER_SIDE_CAP:Corollary2`): a competitive one-lower configuration has at
  least two free points outside the anchor pentagon. FLAG: its proof's bound "`W ≥ 10s`".
* `eq1`–`eq6`: the bounds of Sections 1–2; `claim_cap1` (four capacity-one triangles);
  `claim_cover` (the 153 cells); `eq9` (strengthened occupancy costs); `eq10` (the certificate
  package).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerSideCap

open Heilbronn.C1
open Heilbronn.C1OneLowerTopCap (HullWord hullSign hullInside HasHullWord hullTriples insideCount
  AtMostInside sameSector upperPairConflict ConvexPolygon)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### The placement -/

/-- The hull hexagon `V₀, …, V₅ = O, C, D, F, X, H` (Section 3). -/
def hexagon (h c d f : ℝ) (X : Point) : Fin 6 → Point := ![ptO, ptC c, ptD d, ptF f, X, ptH h]

/-- The 18 upper words for the hexagon `O, C, D, F, X, H` (edge tests of `HCDF`, now with
`F = V₃`: `(5,1), (1,2), (2,3), (3,5)`), indexed from zero as in the table of Section 3. The
lower words are those of the top-cap note, `C1OneLowerTopCap.lowerWord`. -/
def upperWord : Fin 18 → HullWord 6 :=
  ![![1, 1, 4, 4, 3, 2], ![1, 2, 4, 3, 3, 2], ![1, 3, 4, 3, 2, 2], ![2, 1, 1, 4, 4, 3],
    ![2, 1, 2, 4, 3, 3], ![2, 1, 3, 4, 3, 2], ![2, 2, 1, 3, 4, 3], ![2, 2, 2, 3, 3, 3],
    ![2, 2, 3, 3, 3, 2], ![2, 3, 2, 3, 2, 3], ![2, 3, 3, 3, 2, 2], ![3, 2, 1, 2, 4, 3],
    ![3, 2, 2, 2, 3, 3], ![3, 2, 3, 2, 3, 2], ![3, 3, 2, 2, 2, 3], ![3, 3, 3, 2, 2, 2],
    ![4, 3, 2, 2, 1, 3], ![4, 3, 3, 2, 1, 2]]

/-- The placement of Theorem 1 with the left cap: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`
(no order between `f` and `d`); minimum triangle area at least `A₀`; `L` strictly inside `OHC`;
`P, Q` strictly inside `HCDF`; `X = (g, k)` in the left cap beyond `HF` (possibly on a side of the
square). The configuration is `c1Config h c d f L P Q X`. -/
structure Placement (h c d f : ℝ) (L P Q X : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)
  lower : InLower h c L
  upperP : InUpperQuad h c d f P
  upperQ : InUpperQuad h c d f Q
  left : InLeftCap f h X
  leftSq : X ∈ unitSquare

/-- **Theorem 1** (`C1_ONE_LOWER_SIDE_CAP:Theorem1`). There is no competitive C1 configuration whose
four free points are one lower point `L ∈ OHC`, two points `P, Q ∈ HCDF`, and a point `X` beyond
`HF` in the left exterior cap `HF(0,1)`; reflection gives the same exclusion for a single point in
the right exterior cap `CD(1,0)`. All containments are strict; `X` may lie on a side of the square;
no relation between `f` and `d` is imposed.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 18-23, 37-39 and 326-328.
Uses: C1_ONE_LOWER_SIDE_CAP:claim-cover, C1_ONE_LOWER_SIDE_CAP:(10). -/
theorem theorem1 {h c d f : ℝ} {L P Q X : Point} (hA : C1Anchors h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (hL : InLower h c L)
    (hP : InUpperQuad h c d f P) (hQ : InUpperQuad h c d f Q) (hXsq : X ∈ unitSquare)
    (hX : InLeftCap f h X ∨ InRightCap c d X) : False := by
  sorry

/-- Helper (the reflection in Theorem 1): transposing the square, `(x, y) ↦ (y, x)`, maps a
placement with `X` in the right cap `CD(1,0)` and parameters `(h, c, d, f)` to a left-cap
placement with parameters `(c, h, f, d)`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 22-23. -/
theorem transpose_right {h c d f : ℝ} {L P Q X : Point} (hA : C1Anchors h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (hL : InLower h c L)
    (hP : InUpperQuad h c d f P) (hQ : InUpperQuad h c d f Q) (hXsq : X ∈ unitSquare)
    (hX : InRightCap c d X) : Placement c h f d L.swap P.swap Q.swap X.swap := by
  sorry

/-- **Corollary 2** (`C1_ONE_LOWER_SIDE_CAP:Corollary2`). In every competitive C1 configuration
with exactly one free point in `OHC`, at least two of the four free points lie outside the
five-anchor pentagon (in one of the three exterior caps). The proof: `HCDF` cannot contain three
free points (seven-point quadrilateral theorem, `W > 1`), and with exactly one exterior point
Theorem 1 and `C1_ONE_LOWER_TOP_CAP:Theorem` exclude all three caps.
FLAG: the proof (line 31) says the seven-point theorem "would give `W ≥ 10s > 1`"; that theorem
gives only `W ≥ (13 + 3√5)/2 · 2A₀ ≈ 1.0815 < 10s ≈ 1.0959`, which still exceeds `W ≤ 1`.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 25-35.
Uses: C1_ONE_LOWER_SIDE_CAP:Theorem1, C1_ONE_LOWER_TOP_CAP:Theorem, QUADRILATERAL_HULL:Theorem2. -/
theorem corollary2 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    2 ≤ countFree (fun P => InRightCap c d P ∨ InTopCap d f P ∨ InLeftCap f h P) W X Y Z := by
  sorry

/-! ### Sections 1–2: bounds -/

section

variable {h c d f : ℝ} {L P Q X : Point}

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(1)`). From `r = [HFX] = f(k-h) - (1-h)g ≥ s` and
`[OXH] = hg ≥ s`: `hf(k-h) ≥ s` and `fh(1-h) ≥ s` (using only `k ≤ 1`; no occupancy
hypothesis). `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 46-63. -/
theorem eq1 (hS : Placement h c d f L P Q X) :
    s ≤ h * f * (X.2 - h) ∧ s ≤ f * h * (1 - h) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(2)`). With `s ≤ [CDF] = 1 - c + d(c-f) ≤ 1 - f`: `f ≤ 1 - s`,
`f ≥ 4s`, `h(1-h) ≥ 8/65 > 6/49` and `1/7 < h < 6/7`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines
64-81. Uses: C1_ONE_LOWER_SIDE_CAP:(1). -/
theorem eq2 (hS : Placement h c d f L P Q X) :
    f ≤ 1 - s ∧ 4 * s ≤ f ∧ 8 / 65 ≤ h * (1 - h) ∧ 1 / 7 < h ∧ h < 6 / 7 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(3)`). `h ≥ 3s`, `c ≥ f ≥ 4s`, `d ≥ s`, `d ≤ h`, and
`g ≥ s/h > 7s/6`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 83-90.
Uses: C1_ONE_LOWER_SIDE_CAP:(2). -/
theorem eq3 (hS : Placement h c d f L P Q X) :
    3 * s ≤ h ∧ 4 * s ≤ c ∧ 4 * s ≤ f ∧ s ≤ d ∧ d ≤ h ∧ s ≤ h * X.1 ∧ 7 * s / 6 < X.1 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(4)`). The cap area is also `r = (1-h)(f-g) - f(1-k)`; hence
`f - g ≥ s/(1-h) ≥ 8/49`, `k - h ≥ s/f ≥ 8/65`, `g ≤ 1 - 2s` and `k ≥ 4s`.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 92-107. Uses: C1_ONE_LOWER_SIDE_CAP:(2),
C1_ONE_LOWER_SIDE_CAP:(3). -/
theorem eq4 (hS : Placement h c d f L P Q X) :
    sarea (ptH h) (ptF f) X = (1 - h) * (f - X.1) - f * (1 - X.2) ∧
      8 / 49 ≤ f - X.1 ∧ 8 / 65 ≤ X.2 - h ∧ X.1 ≤ 1 - 2 * s ∧ 4 * s ≤ X.2 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(5)`). Interior-point bounds (Section 2 of the top-cap note
with `h < 6/7`): `ℓ_x ≥ 7s/6`, `ℓ_y ≥ s`, `c - ℓ_x ≥ 7s/3`, `h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1 - s`;
`7s/6 ≤ p_x, q_x ≤ 1 - s`; `s ≤ p_y, q_y ≤ 1 - s`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines
109-129. Uses: C1_ONE_LOWER_TOP_CAP:(8), C1_ONE_LOWER_TOP_CAP:(9), C1_ONE_LOWER_SIDE_CAP:(2). -/
theorem eq5 (hS : Placement h c d f L P Q X) :
    (7 * s / 6 ≤ L.1 ∧ s ≤ L.2 ∧ 7 * s / 3 ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s) ∧
      (7 * s / 6 ≤ P.1 ∧ P.1 ≤ 1 - s ∧ s ≤ P.2 ∧ P.2 ≤ 1 - s) ∧
      (7 * s / 6 ≤ Q.1 ∧ Q.1 ≤ 1 - s ∧ s ≤ Q.2 ∧ Q.2 ≤ 1 - s) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(6)`). The six points `H, C, D, F, P, Q` give
`8s ≤ W = 2 area(HCDF) = 1 - (h-d)(c-f) ≤ 1`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 131-136.
Uses: QUADRILATERAL_HULL:Theorem1. -/
theorem eq6 (hS : Placement h c d f L P Q X) :
    8 * s ≤ upperQuadArea h c d f ∧ upperQuadArea h c d f ≤ 1 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:claim-cap1`). The actual triangles `OFH` (`hf ≤ 390/511`),
`CDF` (`≤ 1 - 4s`), `FXH` (`≤ f(1-h) ≤ 1 - 3s`) and `OXH` (`hg < hf`) have doubled area below
`ρ`, hence capacity at most one (two-interior-point bound `Ks > ρ`): none contains two free
points. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 138-150.
Uses: C1_ONE_LOWER_SIDE_CAP:(2), C1_ONE_LOWER_SIDE_CAP:(3), CORNER_FAMILIES:TwoInteriorPointLemma.
-/
theorem claim_cap1 (hS : Placement h c d f L P Q X) :
    AtMostInside 1 ptO (ptF f) (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 (ptC c) (ptD d) (ptF f) (freePt L P Q X) ∧
      AtMostInside 1 (ptF f) X (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 ptO X (ptH h) (freePt L P Q X) := by
  sorry

end

/-! ### Section 3: the 153 radial cells -/

/-- Helper (implicit in the manuscript: "Number the convex hexagon cyclically as
`O, C, D, F, X, H`", lines 154-157): the hull hexagon is convex (counterclockwise). -/
theorem convex_hexagon {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) :
    ConvexPolygon (hexagon h c d f X) := by
  sorry

/-- The four capacity-one triangles of Section 2 as index triples of the hexagon
`O, C, D, F, X, H`: `OFH, CDF, FXH, OXH`. -/
def capacityOneTriangles : List (Fin 6 × Fin 6 × Fin 6) :=
  [(0, 3, 5), (1, 2, 3), (3, 4, 5), (0, 4, 5)]

/-- The preliminary tests of Section 3 for a word triple `(i, j, ℓ)` of `(L, P, Q)`: not in the
same sector of both diagonals (`H, C, D, F = V₅, V₁, V₂, V₃`); no hull triangle contains all
three points; no triangle of `capacityOneTriangles` contains two of them (189 triples with
`j ≤ ℓ`). -/
def prelimTest (i : Fin 4) (j l : Fin 18) : Bool :=
  let ws := [C1OneLowerTopCap.lowerWord i, upperWord j, upperWord l]
  !sameSector 5 1 2 3 (upperWord j) (upperWord l) &&
    (hullTriples 6).all (fun t => decide (insideCount ws t ≤ 2)) &&
    capacityOneTriangles.all (fun t => decide (insideCount ws t ≤ 1))

/-- The 153 cells of Section 3: the word triples `(i, j, ℓ)`, `j ≤ ℓ`, passing `prelimTest`
(189) without a conflict between the upper-pair rule and the ray-order rule (36 conflicts). No
further split is used. -/
def sideCapCases : List (Fin 4 × Fin 18 × Fin 18) :=
  (List.finRange 4).flatMap fun i => (List.finRange 18).flatMap fun j =>
    ((List.finRange 18).filter fun l =>
      decide (j ≤ l) && prelimTest i j l &&
        !upperPairConflict 5 1 2 3 (upperWord j) (upperWord l)).map
        fun l => (i, j, l)

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:claim-cover`). Every placement is covered by the 153 cells:
after relabelling `P, Q`, the words of `L, P, Q` for the hexagon `O, C, D, F, X, H` (definition
and complement relation (7), 26 words) are a lower word `i` and upper words `j ≤ ℓ` with
`(i, j, ℓ) ∈ sideCapCases`. The exclusions are: a hull triangle containing all three interior
points (capacity two), a triangle of `claim_cap1` containing two, both upper points in the same
sector of both diagonals (Theorem 2 of `ONE_CORNER_COMPLETION.md`, with (6)), and a conflict of the
upper-pair signs (the rules (15) and the isolated-vertex table of the top-cap note, with `F = V₃`)
with the ray order (8). `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 152-220.
Uses: C1_ONE_LOWER_TOP_CAP:(12)-(13), C1_ONE_LOWER_TOP_CAP:(14), C1_ONE_LOWER_TOP_CAP:(15),
ONE_CORNER:GlobalC1OccupancyCorollary, ONE_CORNER_COMPLETION:Theorem2,
ONE_CORNER_COMPLETION:Theorem3, C1_ONE_LOWER_SIDE_CAP:claim-cap1, C1_ONE_LOWER_SIDE_CAP:(6). -/
theorem claim_cover {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) :
    ∃ i j l, (i, j, l) ∈ sideCapCases ∧
      HasHullWord (hexagon h c d f X) L (C1OneLowerTopCap.lowerWord i) ∧
      ((HasHullWord (hexagon h c d f X) P (upperWord j) ∧
          HasHullWord (hexagon h c d f X) Q (upperWord l)) ∨
        (HasHullWord (hexagon h c d f X) Q (upperWord j) ∧
          HasHullWord (hexagon h c d f X) P (upperWord l))) := by
  sorry

/-! ### Sections 4–5: strengthened costs and the certificate package -/

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(9)`). The strengthened occupancy costs: in a configuration
of minimum triangle area at least `A₀`, an actual triangle strictly containing `k ≤ 2` further
configuration points (in either orientation; in the packages they are certified by three known
edge signs) has doubled area at least `s, 3s, ρ` for `k = 0, 1, 2` (`occupancyBound`): by the
area threshold, elementary subdivision, or the two-interior-point triangle theorem.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 250-286. Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq9 {P : Fin 9 → Point} (hmin : A₀ ≤ minTriangleArea P) {a b e : Fin 9} (hab : a ≠ b)
    (hbe : b ≠ e) (hae : a ≠ e) (S : Finset (Fin 9))
    (hS : ∀ j ∈ S, j ≠ a ∧ j ≠ b ∧ j ≠ e ∧ InsideTri (P j) (P a) (P b) (P e)) (hk : S.card ≤ 2) :
    occupancyBound S.card ≤ |sarea (P a) (P b) (P e)| := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(10)`). The certificate package: no placement has word
triple `(i, j, ℓ) ∈ sideCapCases`. For each of the 153 cells one of 70 fixed positive combinations
of products of the 28 affine factors (Section 4) and the costs `W - 8s` and (9) (every known
triple in lexicographic order) is nonnegative, while its unit-cube bound (10) is at most `-3/4`
(largest `-170969015277097/172160375869440`). Coverage is by the reuse rule.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 222-328 (data `c1_one_lower_side_cap_certificates.json`,
checker `check_c1_one_lower_side_cap.py`).
Uses: C1_ONE_LOWER_SIDE_CAP:(2), C1_ONE_LOWER_SIDE_CAP:(3), C1_ONE_LOWER_SIDE_CAP:(4),
C1_ONE_LOWER_SIDE_CAP:(5), C1_ONE_LOWER_SIDE_CAP:(6), C1_ONE_LOWER_SIDE_CAP:(9),
C1_ONE_LOWER_TOP_CAP:(14), C1_ONE_LOWER_TOP_CAP:(15). -/
theorem eq10 {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) {i : Fin 4}
    {j l : Fin 18} (hcase : (i, j, l) ∈ sideCapCases)
    (hL : HasHullWord (hexagon h c d f X) L (C1OneLowerTopCap.lowerWord i))
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) : False := by
  sorry

end Heilbronn.C1OneLowerSideCap
