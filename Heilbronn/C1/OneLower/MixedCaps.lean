module

public import Heilbronn.C1.OneLower.TopTriangle
public import Heilbronn.C1.OneLower.RightTopTriangle
public import Heilbronn.C1.OneLower.RightPair

/-! # One lower C1 point and two different exterior caps (`hand/C1_ONE_LOWER_MIXED_CAPS.md`)

**Role.** Primary route: `hand/UNRESTRICTED.md` §3 sends the C1 configurations with exactly one
free point in the lower triangle (`n₀ = 1`) to Theorem 2 here, the assembly of the whole one-lower
class. Theorem 1 excludes the three mixed-cap rows `(U, R, T, L_cap) = (1,1,1,0), (1,1,0,1),
(1,0,1,1)`.

**Setting (Theorem 1).** The C1 anchors `O, C, D, F, H` with `0 < d ≤ h < 1`, `0 < f ≤ c < 1`
and `f ≤ d` (line 12), minimum triangle area at least `A₀`; `L ∈ OHC`, `Q ∈ HCDF` and two cap
points `X, Y` in two different caps, in the ordered classes `RT, RL, TL` (`X` in the first cap);
configuration `c1Config h c d f X Y L Q` (the checker's vertex order `O, C, D, F, H, X, Y, L, Q`).
Five-anchor words are those of `C1_ZERO_LOWER.md` (`Heilbronn.C1.HasWord`). Thresholds
`s = 8/73`, `ρ = 49/60`, `γ = 1 - 7s/3` (local notations `s`, `ρ`).

**Theorem 2 (the one-lower class).** For `c1Config h c d f W X Y Z` with `C1Anchors`, free points
in the square, `lowerCount = 1` and minimum triangle area at least `A₀`: a contradiction. The proof
first transposes the square to get `f ≤ d` (`claim_transpose`: this is the allowed
normalization), splits by the region counts (`claim_partition`), excludes three upper points
(`claim_E0`), applies the single-cap exclusions when exactly one point is exterior, and otherwise
uses the occupancy restrictions of `C1_ZERO_LOWER.md` (`claim_occupancy`) to reach the nine rows
`nineRows` (`claim_nine_rows`), each closed by a component (table at `theorem2`), with the top-hull
dichotomy `claim_top_hull` and the eight-vertex hulls `claim_eight_vertices`.

**Results.** `theorem1`, `theorem2`; `eq1`, `claim_anchor`, `eq2`–`eq12`, `claim_OFH_cap1`,
`claim_words` (FLAG: half-turn), `eq13` (62 word pairs), `eq14`, `claim_hull_prune`, `eq15`,
`eq17_19` (the certificate package); `claim_transpose`, `claim_partition`, `claim_E0` (FLAG:
`W ≥ 10s`), `claim_occupancy`, `claim_nine_rows`, `claim_top_hull`, `claim_eight_vertices`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerMixedCaps

open Heilbronn.C1
open Heilbronn.C1OneLowerTopCap (AtMostInside ConvexPolygon)
open Heilbronn.C1OneLowerEightHull (hullVertexCount)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### The three ordered cap classes -/

/-- The three ordered cap classes of Theorem 1: `RT` (`X` in the right cap, `Y` in the top cap),
`RL` (right, left) and `TL` (top, left). -/
inductive CapClass
  | RT
  | RL
  | TL
  deriving DecidableEq

/-- The cap of the first cap point `X`. -/
def CapClass.first : CapClass → Region
  | .RT => .right
  | .RL => .right
  | .TL => .top

/-- The cap of the second cap point `Y`. -/
def CapClass.second : CapClass → Region
  | .RT => .top
  | .RL => .left
  | .TL => .left

/-- The right, top and left cap words `(1,0,4,3,2)`, `(2,1,0,4,3)`, `(3,2,1,0,4)` (Section 3). -/
def capWord : Region → Word
  | .right => ![1, 0, 4, 3, 2]
  | .top => ![2, 1, 0, 4, 3]
  | .left => ![3, 2, 1, 0, 4]
  | _ => ![0, 0, 0, 0, 0]

/-- The three lower words `(1,3,3,2,1), (2,3,2,2,1), (3,3,2,1,1)` (Section 3), indexed from zero. -/
def lowerWord : Fin 3 → Word := ![![1, 3, 3, 2, 1], ![2, 3, 2, 2, 1], ![3, 3, 2, 1, 1]]

/-- The eight upper words (Section 3), indexed from zero in the displayed order. -/
def upperWord : Fin 8 → Word :=
  ![![1, 1, 3, 3, 2], ![1, 2, 3, 2, 2], ![2, 1, 1, 3, 3], ![2, 1, 2, 3, 2], ![2, 2, 1, 2, 3],
    ![2, 2, 2, 2, 2], ![3, 2, 1, 1, 3], ![3, 2, 2, 1, 2]]

/-- The full hull orders of Section 3: `O, C, X, D, Y, F, H` (`RT`), `O, C, X, D, F, Y, H` (`RL`),
`O, C, D, X, F, Y, H` (`TL`). -/
def hullOf (k : CapClass) (h c d f : ℝ) (X Y : Point) : Fin 7 → Point :=
  match k with
  | .RT => ![ptO, ptC c, X, ptD d, Y, ptF f, ptH h]
  | .RL => ![ptO, ptC c, X, ptD d, ptF f, Y, ptH h]
  | .TL => ![ptO, ptC c, ptD d, X, ptF f, Y, ptH h]

/-- The placement of Theorem 1 in class `k`: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`, `f ≤ d`;
minimum triangle area at least `A₀` for `c1Config h c d f X Y L Q`; `L` strictly inside `OHC`;
`Q` strictly inside `HCDF`; `X` in the first and `Y` in the second cap of `k` (in the square;
side contacts allowed). -/
structure Placement (k : CapClass) (h c d f : ℝ) (X Y L Q : Point) : Prop where
  anchors : C1Anchors h c d f
  f_le_d : f ≤ d
  min : A₀ ≤ minTriangleArea (c1Config h c d f X Y L Q)
  lower : InLower h c L
  upper : InUpperQuad h c d f Q
  first : InRegion h c d f k.first X
  firstSq : X ∈ unitSquare
  second : InRegion h c d f k.second Y
  secondSq : Y ∈ unitSquare

/-- The 62 word pairs (13) `(k, i, j)` (class, lower word `i`, upper word `j`): of the
`3 · 8 = 24` pairs per class, remove those with three free points below `OD` (first word entry
`1`; two per class with a right cap) and those with two free points in `OFH` (two per class),
leaving 20 `RT`, 20 `RL`, 22 `TL`. -/
def mixedCases : List (CapClass × Fin 3 × Fin 8) :=
  [CapClass.RT, CapClass.RL, CapClass.TL].flatMap fun k => (List.finRange 3).flatMap fun i =>
    ((List.finRange 8).filter fun j =>
      let ws := [capWord k.first, capWord k.second, lowerWord i, upperWord j]
      decide (ws.countP (fun w => decide (w 0 = 1)) ≤ 2) &&
        decide (ws.countP (fun w => wordInside w 0 3 4) ≤ 1)).map fun j => (k, i, j)

/-- **Theorem 1** (`C1_ONE_LOWER_MIXED_CAPS:Theorem1`). None of the three configurations `RT, RL,
TL` (`L ∈ OHC`, `Q ∈ HCDF`, `X, Y` in the two caps of the class, `f ≤ d`) has minimum triangle area
at least `A₀`; additional contacts with the sides of the square are allowed.
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 253-255 and 332-334.
Uses: C1_ONE_LOWER_MIXED_CAPS:claim-words, C1_ONE_LOWER_MIXED_CAPS:(13),
C1_ONE_LOWER_MIXED_CAPS:(17)-(19). -/
theorem theorem1 {k : CapClass} {h c d f : ℝ} {X Y L Q : Point}
    (hS : Placement k h c d f X Y L Q) : False := by
  sorry

/-! ### Section 1: common parameter and coordinate bounds -/

section

variable {k : CapClass} {h c d f : ℝ} {X Y L Q : Point}

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(1)`). The subdivision of `OHC` at `L` (areas `cℓ_y`,
`hℓ_x`, `[HLC] = hc - hℓ_x - cℓ_y`): `hc ≥ 3s`, `h, c ≥ 3s`, `ℓ_x, ℓ_y ≥ s`, `c - ℓ_x ≥ 2s`,
`h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1 - s`. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 31-41. -/
theorem eq1 (hS : Placement k h c d f X Y L Q) :
    3 * s ≤ h * c ∧ 3 * s ≤ h ∧ 3 * s ≤ c ∧ s ≤ L.1 ∧ s ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧
      2 * s ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-anchor`). The actual anchor triangles give
`s ≤ d, f ≤ 1 - s` ((2) of `C1_ZERO_LOWER.md`). `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 43-46.
Uses: C1_ZERO_LOWER:eq2. -/
theorem claim_anchor (hS : Placement k h c d f X Y L Q) :
    s ≤ d ∧ d ≤ 1 - s ∧ s ≤ f ∧ f ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(2)`). In each class a side cap is occupied; the single-cap
bounds give `d ≥ 4s` (right cap) or `f ≥ 4s` (left cap), and with `f ≤ d`, `d ≥ 4s` in all
classes. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 47-51.
Uses: C1_ZERO_LOWER:eq5-6. -/
theorem eq2 (hS : Placement k h c d f X Y L Q) : 4 * s ≤ d := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(3)`). A right cap gives `1/7 < c < 6/7`; a left cap gives
`1/7 < h < 6/7`; a top cap gives `f < 67/100`, `d ≤ 57/65` (the occupancy-independent bounds of
`C1_ZERO_LOWER.md` §§1–2). `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 53-59.
Uses: C1_ZERO_LOWER:eq5-6, C1_ZERO_LOWER:eq7. -/
theorem eq3 (hS : Placement k h c d f X Y L Q) :
    ((k = .RT ∨ k = .RL) → 1 / 7 < c ∧ c < 6 / 7) ∧
      ((k = .RL ∨ k = .TL) → 1 / 7 < h ∧ h < 6 / 7) ∧
      ((k = .RT ∨ k = .TL) → f < 67 / 100 ∧ d ≤ 57 / 65) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(4)`). The upper-point projection identities give
`s ≤ q_x, q_y ≤ 1 - s`. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 61-63.
Uses: C1_ZERO_LOWER:claim-region-bounds. -/
theorem eq4 (hS : Placement k h c d f X Y L Q) :
    s ≤ Q.1 ∧ s ≤ Q.2 ∧ Q.1 ≤ 1 - s ∧ Q.2 ≤ 1 - s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(5)`). The four positive fan triangles of `HCDF` at `Q` give
`W = 1 - (h-d)(c-f) ≥ 4s`. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 65-70. -/
theorem eq5 (hS : Placement k h c d f X Y L Q) : 4 * s ≤ upperQuadArea h c d f := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(6)`). `[DFH] = 1 - h + f(h-d) ≤ 1 - d ≤ 1 - 4s`.
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 72-75. Uses: C1_ONE_LOWER_MIXED_CAPS:(2). -/
theorem eq6 (hS : Placement k h c d f X Y L Q) :
    sarea (ptD d) (ptF f) (ptH h) = 1 - h + f * (h - d) ∧
      sarea (ptD d) (ptF f) (ptH h) ≤ 1 - d ∧ 1 - d ≤ 1 - 4 * s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(7)`). If a left cap is present,
`[CDF] = 1 - c + d(c-f) ≤ 1 - f ≤ 1 - 4s`. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 76-79.
Uses: C1_ZERO_LOWER:eq5-6. -/
theorem eq7 (hS : Placement k h c d f X Y L Q) (hk : k = .RL ∨ k = .TL) :
    sarea (ptC c) (ptD d) (ptF f) = 1 - c + d * (c - f) ∧
      sarea (ptC c) (ptD d) (ptF f) ≤ 1 - f ∧ 1 - f ≤ 1 - 4 * s := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-OFH-cap1`). `[OFH] = hf < 67/100` for `RT, TL` (by
(3)) and `[OFH] < 36/49` for `RL` (`h, c < 6/7`, `f ≤ c`); both are below `ρ`, so `OFH` has
capacity one: it does not contain two free points. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines
80-86. Uses: C1_ONE_LOWER_MIXED_CAPS:(3), CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_OFH_cap1 (hS : Placement k h c d f X Y L Q) :
    (k ≠ .RL → sarea ptO (ptF f) (ptH h) < 67 / 100) ∧
      (k = .RL → sarea ptO (ptF f) (ptH h) < 36 / 49) ∧
      AtMostInside 1 ptO (ptF f) (ptH h) (freePt X Y L Q) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(8)`). The single-cap cubic support inequalities:
`dc(1-c) ≥ s` if a right cap is present, `fh(1-h) ≥ s` if a left cap is present.
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 88-93. Uses: C1_ZERO_LOWER:eq5-6. -/
theorem eq8 (hS : Placement k h c d f X Y L Q) :
    ((k = .RT ∨ k = .RL) → s ≤ d * c * (1 - c)) ∧ ((k = .RL ∨ k = .TL) → s ≤ f * h * (1 - h)) := by
  sorry

/-! ### Section 2: cap gaps and top-point cross-ear bounds -/

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(9)`). The right-cap point `X = (x, y)` (classes `RT, RL`):
`(1-c)(d-y) ≥ s`, `d(x-c) ≥ s`, `cy ≥ s`, hence `x ≤ 1`, `x - c ≥ 8/65`, `y ≥ 7s/6`, and
`d - y ≥ 8/49` (`RT`) or `≥ 8/41` (`RL`). `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 97-113.
Uses: C1_ONE_LOWER_MIXED_CAPS:(1), C1_ONE_LOWER_MIXED_CAPS:claim-anchor,
C1_ONE_LOWER_MIXED_CAPS:(3). -/
theorem eq9 (hS : Placement k h c d f X Y L Q) (hk : k = .RT ∨ k = .RL) :
    s ≤ (1 - c) * (d - X.2) ∧ s ≤ d * (X.1 - c) ∧ s ≤ c * X.2 ∧ X.1 ≤ 1 ∧ 8 / 65 ≤ X.1 - c ∧
      7 * s / 6 ≤ X.2 ∧ (k = .RT → 8 / 49 ≤ d - X.2) ∧ (k = .RL → 8 / 41 ≤ d - X.2) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(10)`). The top-cap point `(x, y)` (`Y` in `RT`, `X` in
`TL`): `(1-d)(x-f) ≥ s`, `(1-f)(y-d) ≥ s`, hence `x, y ≤ 1`, `x - f ≥ 8/41`, and `y - d ≥ 8/65`
(`RT`) or `≥ 8/41` (`TL`). `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 115-127.
Uses: C1_ONE_LOWER_TOP_CAP:(3), C1_ONE_LOWER_MIXED_CAPS:(2). -/
theorem eq10 (hS : Placement k h c d f X Y L Q) :
    (k = .RT → Y.1 ≤ 1 ∧ Y.2 ≤ 1 ∧ 8 / 41 ≤ Y.1 - f ∧ 8 / 65 ≤ Y.2 - d) ∧
      (k = .TL → X.1 ≤ 1 ∧ X.2 ≤ 1 ∧ 8 / 41 ≤ X.1 - f ∧ 8 / 41 ≤ X.2 - d) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(11)`). The left-cap point `Y = (x, y)` (classes `RL, TL`),
by the transposed cap calculation with `h ≥ d ≥ 4s`, `f ≤ 1 - s`, `h < 6/7`: `f - x ≥ 8/41`,
`y ≤ 1`, `y - h ≥ 8/65`, `x ≥ 7s/6`. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 128-135.
Uses: C1_ONE_LOWER_MIXED_CAPS:(2), C1_ONE_LOWER_MIXED_CAPS:(3). -/
theorem eq11 (hS : Placement k h c d f X Y L Q) (hk : k = .RL ∨ k = .TL) :
    8 / 41 ≤ f - Y.1 ∧ Y.2 ≤ 1 ∧ 8 / 65 ≤ Y.2 - h ∧ 7 * s / 6 ≤ Y.1 := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(12)`). For the top-cap point `Z = (g, k)` (`Y` in `RT`,
`X` in `TL`): `0 < [FHZ], [CDZ] < γ = 1 - 7s/3 < ρ` (`[FHZ] = (1-h)g + f(h-k)`; for `k ≥ h` it is
at most `1 - 3s`; for `k < h`, `(1-f)k ≥ s` and AM-GM give `≤ 1 + s - 2√3 s < γ`, using
`√3 > 5/3`; `[CDZ]` by transposition with `c ≥ 3s`, without `f ≤ d`).
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 137-157. Uses: C1_ONE_LOWER_MIXED_CAPS:(1). -/
theorem eq12 (hS : Placement k h c d f X Y L Q) :
    (k = .RT → 0 < sarea (ptF f) (ptH h) Y ∧ sarea (ptF f) (ptH h) Y < 1 - 7 * s / 3 ∧
        0 < sarea (ptC c) (ptD d) Y ∧ sarea (ptC c) (ptD d) Y < 1 - 7 * s / 3) ∧
      (k = .TL → 0 < sarea (ptF f) (ptH h) X ∧ sarea (ptF f) (ptH h) X < 1 - 7 * s / 3 ∧
        0 < sarea (ptC c) (ptD d) X ∧ sarea (ptC c) (ptD d) X < 1 - 7 * s / 3) ∧
      1 - 7 * s / 3 < ρ := by
  sorry

/-! ### Section 3: a finite cover by anchor-ray words -/

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-words`). Every free point has a five-anchor word
(`[VᵢV_{i+j}Z] > 0 ↔ j ≤ wᵢ`; 16 words by antisymmetry): the cap points have the cap words of
their caps, `L` one of the three lower words, `Q` one of the eight upper words.
FLAG (lines 167-169): the text justifies the prefix form by "the directions from each such vertex
to the other four anchors occupy less than a half-turn"; the prefix property needs this for the
rays to all points, which holds because every anchor lies on a side of the square (the rays lie
in a closed half-plane) and no three points are collinear. The claim holds.
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 159-189. Uses: C1_ZERO_LOWER:claim-words. -/
theorem claim_words (hS : Placement k h c d f X Y L Q) :
    HasWord h c d f X (capWord k.first) ∧ HasWord h c d f Y (capWord k.second) ∧
      (∃ i, HasWord h c d f L (lowerWord i)) ∧ (∃ j, HasWord h c d f Q (upperWord j)) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(13)`). The complete cover: the word pair of `(L, Q)` is
one of the 62 pairs of `mixedCases` (three free points below `OD` are forbidden by the
two-actual-vertex triangle capacity on `O, D, (1,0)`; `OFH` has capacity one).
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 189-199.
Uses: C1_ONE_LOWER_MIXED_CAPS:claim-words, C1_ZERO_LOWER:eq4, TYPE_II_COMPLETION:Theorem1,
C1_ONE_LOWER_MIXED_CAPS:claim-OFH-cap1. -/
theorem eq13 (hS : Placement k h c d f X Y L Q) :
    ∃ i j, (k, i, j) ∈ mixedCases ∧ HasWord h c d f L (lowerWord i) ∧
      HasWord h c d f Q (upperWord j) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(14)`). `[XYL] > 0`: `[OXY], [CXY], [HXY] > 0` from the cap
words, `Z ↦ [XYZ]` is affine and `L ∈ OHC`. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 201-209.
Uses: C1_ONE_LOWER_MIXED_CAPS:claim-words. -/
theorem eq14 (hS : Placement k h c d f X Y L Q) : 0 < sarea X Y L := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-hull-prune`). The full hull of class `k` is the
convex heptagon `hullOf k` (`O, C, X, D, Y, F, H`; `O, C, X, D, F, Y, H`; `O, C, D, X, F, Y, H`),
and for any line `AB` the nonzero signs `[A B Vᵢ]` around this hull, in cyclic order, have at most
two cyclic sign changes (a line splits the vertices of a convex polygon into two arcs). With the
global triangle capacity two (`ONE_CORNER.md` §6), these are the exact pruning rules of Section 3.
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 211-217. Uses: ONE_CORNER:GlobalC1OccupancyCorollary. -/
theorem claim_hull_prune (hS : Placement k h c d f X Y L Q) :
    ConvexPolygon (hullOf k h c d f X Y) ∧
      ∀ A B : Point,
        let l := ((List.finRange 7).filter fun i => sarea A B (hullOf k h c d f X Y i) ≠ 0).map
          fun i => decide (0 < sarea A B (hullOf k h c d f X Y i))
        ((l.zip (l.rotate 1)).filter fun p => p.1 != p.2).length ≤ 2 := by
  sorry

/-! ### Section 4: a strengthened whole word -/

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(15)`). For the lower word `(2,3,2,2,1)` and the upper word
`(2,1,2,3,2)` or `(2,2,2,2,2)`, both `L, Q` belong to `ODH` and `ODF`, so the two-interior-point
bound gives `h = [ODH] ≥ ρ`, `1 - df = [ODF] ≥ ρ`, and with (2), `f ≤ (1-ρ)/(4s) = 803/1920`.
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 229-242.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, C1_ONE_LOWER_MIXED_CAPS:(2). -/
theorem eq15 (hS : Placement k h c d f X Y L Q) (hL : HasWord h c d f L (lowerWord 1))
    (hQ : HasWord h c d f Q (upperWord 3) ∨ HasWord h c d f Q (upperWord 5)) :
    ρ ≤ h ∧ ρ ≤ 1 - d * f ∧ f ≤ 803 / 1920 := by
  sorry

end

/-! ### Section 5: the certificate package -/

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:(17)-(19)`). The certificate package: no placement of class
`k` has its word pair in `mixedCases`. For each of the 62 pairs a fixed binary tree of actual
sign splits, with the single scalar branch (16) `q_x ≤ 5/8 | q_x ≥ 5/8` in the `RT` pair
`(L, Q) = ((2,3,2,2,1), (2,1,2,3,2))`, has 136 leaves: two are excluded by the pruning rules
(more than two cyclic sign changes), and each of the other 134 carries a fixed positive
combination (17) of products of the affine factors (Sections 1–4, with (15) on its six whole
words), quadratic costs and the cubic costs (8), whose unit-cube bound (18) is below `-3/4`
(largest (19), `-14173057434018160863047671/14173058272635861860352000`).
Note (lines 284-292): the listed quadratic costs omit `(67/100 or 36/49) - [OFH]` (justified by
`claim_OFH_cap1`), and several affine factors (`d - 4s`, `c - 1/7`, `6/7 - c`, `h - 1/7`,
`6/7 - h`, `1 - s - d`, `1 - s - f`) are only implicit; the checker's lists are justified by
(1)–(15).
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 219-334 (data `c1_one_lower_mixed_caps_certificates.json`,
checker `check_c1_one_lower_mixed_caps.py`).
Uses: C1_ONE_LOWER_MIXED_CAPS:(1), C1_ONE_LOWER_MIXED_CAPS:claim-anchor,
C1_ONE_LOWER_MIXED_CAPS:(2), C1_ONE_LOWER_MIXED_CAPS:(3), C1_ONE_LOWER_MIXED_CAPS:(4),
C1_ONE_LOWER_MIXED_CAPS:(5), C1_ONE_LOWER_MIXED_CAPS:(6), C1_ONE_LOWER_MIXED_CAPS:(7),
C1_ONE_LOWER_MIXED_CAPS:claim-OFH-cap1, C1_ONE_LOWER_MIXED_CAPS:(8), C1_ONE_LOWER_MIXED_CAPS:(9),
C1_ONE_LOWER_MIXED_CAPS:(10), C1_ONE_LOWER_MIXED_CAPS:(11), C1_ONE_LOWER_MIXED_CAPS:(12),
C1_ONE_LOWER_MIXED_CAPS:(14), C1_ONE_LOWER_MIXED_CAPS:claim-hull-prune,
C1_ONE_LOWER_MIXED_CAPS:(15), C1_ZERO_LOWER:claim-pair-signs, ONE_CORNER:GlobalC1OccupancyCorollary,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq17_19 {k : CapClass} {h c d f : ℝ} {X Y L Q : Point}
    (hS : Placement k h c d f X Y L Q) {i : Fin 3} {j : Fin 8} (hcase : (k, i, j) ∈ mixedCases)
    (hL : HasWord h c d f L (lowerWord i)) (hQ : HasWord h c d f Q (upperWord j)) : False := by
  sorry

/-! ### Section 6: the complete one-lower assembly -/

/-- Transposition `(x, y) ↦ (y, x)` on regions: it exchanges the right and left caps and keeps the
lower triangle, the upper quadrilateral and the top cap. -/
def regionTranspose : Region → Region
  | .lower => .lower
  | .upper => .upper
  | .right => .left
  | .top => .top
  | .left => .right

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-transpose`). The allowed normalization `f ≤ d`:
transposing the square maps `c1Config h c d f W X Y Z` to `c1Config c h f d W' X' Y' Z'` (primes:
swapped coordinates, anchors relabelled `C ↔ H`, `D ↔ F`). It preserves the C1 anchor conditions,
the square, the minimum triangle area, and the regions up to `regionTranspose` (so the lower
occupancy, `U` and `T` are kept and `R, L_cap` are exchanged). "Transpose first if necessary to
arrange `f ≤ d`. This preserves the C1 hypotheses and lower occupancy."
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 354-355. -/
theorem claim_transpose (h c d f : ℝ) (W X Y Z : Point) :
    (C1Anchors c h f d ↔ C1Anchors h c d f) ∧
      minTriangleArea (c1Config c h f d W.swap X.swap Y.swap Z.swap) =
        minTriangleArea (c1Config h c d f W X Y Z) ∧
      (∀ P : Point, P.swap ∈ unitSquare ↔ P ∈ unitSquare) ∧
      (∀ (r : Region) (P : Point),
        InRegion c h f d (regionTranspose r) P.swap ↔ InRegion h c d f r P) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-partition`). Implicit in the manuscript (Theorem 2
splits the three non-lower points into `HCDF` and the caps; `C1_ZERO_LOWER.md` lines 39-41): in a
competitive C1 configuration every free point lies in exactly one of the five regions
`OHC, HCDF, 𝓡, 𝓣, 𝓛` (a point on an anchor chord or an anchor side gives a zero area).
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 19-21 and 354-363. -/
theorem claim_partition {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    ∀ i : Fin 4, ∃! r : Region, InRegion h c d f r (freePt W X Y Z i) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-E0`). The upper quadrilateral `HCDF` of a competitive
C1 configuration cannot contain three free points: the seven-point quadrilateral theorem would give
`W > 1`, contrary to `W = 1 - (h-d)(c-f) ≤ 1`.
FLAG (line 357): the text says the seven-point bound "would give `W ≥ 10s > 1`" and cites no
theorem; `QUADRILATERAL_HULL:Theorem2` gives `W ≥ ((13 + 3√5)/2) · 2A₀ ≈ 1.0815`, which is below
`10s ≈ 1.0959` but still above `1`. The claim holds. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines
355-358. Uses: QUADRILATERAL_HULL:Theorem2. -/
theorem claim_E0 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (hU : 3 ≤ regionCount h c d f .upper W X Y Z) : False := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-occupancy`). The occupancy-independent cap lemmas of
`C1_ZERO_LOWER.md`, under `f ≤ d`: `R ≤ 2`, `L_cap ≤ 1`, `T ≤ 3`; two right-cap points forbid a
left-cap point and allow at most one top-cap point; a left-cap point allows at most one top-cap
point; a right-cap point allows at most two top-cap points. Here `R, T, L_cap` are the region
counts. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 363-370.
Uses: C1_ZERO_LOWER:claim-side-cap-capacity, C1_ZERO_LOWER:Theorem2, C1_ZERO_LOWER:eq7. -/
theorem claim_occupancy {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f) (hfd : f ≤ d)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    regionCount h c d f .right W X Y Z ≤ 2 ∧ regionCount h c d f .left W X Y Z ≤ 1 ∧
      regionCount h c d f .top W X Y Z ≤ 3 ∧
      (regionCount h c d f .right W X Y Z = 2 →
        regionCount h c d f .left W X Y Z = 0 ∧ regionCount h c d f .top W X Y Z ≤ 1) ∧
      (1 ≤ regionCount h c d f .left W X Y Z → regionCount h c d f .top W X Y Z ≤ 1) ∧
      (1 ≤ regionCount h c d f .right W X Y Z → regionCount h c d f .top W X Y Z ≤ 2) := by
  sorry

/-- The nine occupancy rows `(U, R, T, L_cap)` with at least two exterior points, in the order of
the table of Section 6. -/
def nineRows : List (ℕ × ℕ × ℕ × ℕ) :=
  [(1, 2, 0, 0), (0, 2, 1, 0), (1, 1, 1, 0), (1, 1, 0, 1), (1, 0, 1, 1), (1, 0, 2, 0),
    (0, 1, 2, 0), (0, 1, 1, 1), (0, 0, 3, 0)]

/-- The integer restrictions of Section 6 on the occupancies `(U, R, T, L_cap)` of the three
non-lower points: `U + R + T + L_cap = 3`, `U ≤ 1` (at least two exterior points), and the cap
restrictions of `claim_occupancy`. -/
def OccupancyAdmissible (U R T Lc : ℕ) : Prop :=
  U + R + T + Lc = 3 ∧ U ≤ 1 ∧ R ≤ 2 ∧ Lc ≤ 1 ∧ T ≤ 3 ∧ (R = 2 → Lc = 0 ∧ T ≤ 1) ∧
    (1 ≤ Lc → T ≤ 1) ∧ (1 ≤ R → T ≤ 2)

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-nine-rows`). The integer restrictions leave exactly
the nine rows of the table (verified directly by the companion checker).
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 363-387 and 395-397. -/
theorem claim_nine_rows (U R T Lc : ℕ) :
    OccupancyAdmissible U R T Lc ↔ (U, R, T, Lc) ∈ nineRows := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-top-hull`). For two top-cap points `X, Y`, the "top
hull" `conv{D, F, X, Y}` has `D, F` as vertices, so (when `[DXY], [XYF] ≠ 0`) it is triangular,
with the inner point strictly inside the triangle of the other three (`Y ∈ DXF` or `X ∈ DYF`), or
a convex quadrilateral `D, X, Y, F` or `D, Y, X, F`. `hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines
388-390. -/
theorem claim_top_hull {h c d f : ℝ} {X Y : Point} (hA : C1Anchors h c d f)
    (hX : InTopCap d f X) (hY : InTopCap d f Y) (hXY : sarea (ptD d) X Y ≠ 0)
    (hXYF : sarea X Y (ptF f) ≠ 0) :
    InTriangle Y (ptD d) X (ptF f) ∨ InTriangle X (ptD d) Y (ptF f) ∨
      (0 < sarea (ptD d) X Y ∧ 0 < sarea X Y (ptF f)) ∨
      (0 < sarea (ptD d) Y X ∧ 0 < sarea Y X (ptF f)) := by
  sorry

/-- **Claim** (`C1_ONE_LOWER_MIXED_CAPS:claim-eight-vertices`). With one point in each cap (row
`(0,1,1,1)`), or a right-cap point and two top-cap points with quadrilateral top hull (row
`(0,1,2,0)`), the five anchors and the three cap points are all vertices of the full hull, which
therefore has eight vertices (the lower point is interior). `hand/C1_ONE_LOWER_MIXED_CAPS.md`,
lines 384-392. -/
theorem claim_eight_vertices {h c d f : ℝ} {R X Y L : Point} :
    (C1OneLowerEightHull.OneEach h c d f R X Y L →
        hullVertexCount (c1Config h c d f R X Y L) = 8) ∧
      (C1OneLowerEightHull.TwoTop h c d f R X Y L →
        hullVertexCount (c1Config h c d f R X Y L) = 8) := by
  sorry

/-- **Theorem 2** (`C1_ONE_LOWER_MIXED_CAPS:Theorem2`). A competitive C1 configuration cannot have
exactly one of its four free points in `OHC`: for `c1Config h c d f W X Y Z` with C1 anchors
`0 < d ≤ h < 1`, `0 < f ≤ c < 1`, free points in the closed square, `lowerCount = 1` and minimum
triangle area at least `A₀`, a contradiction. (No order between `f` and `d` is assumed.)

Proof outline. Transpose if necessary to arrange `f ≤ d` (`claim_transpose`). Write
`(U, R, T, L_cap)` for the occupancies of the three non-lower points (`claim_partition`). If all
three lie in `HCDF`, `claim_E0`. If exactly one is exterior: `C1_ONE_LOWER_TOP_CAP:Theorem` (top
cap) or `C1_ONE_LOWER_SIDE_CAP:Theorem1` (left or right cap). Otherwise `claim_occupancy` and
`claim_nine_rows` leave the nine rows, excluded as follows:

* `(1,2,0,0)`, `(0,2,1,0)`: `C1_ONE_LOWER_RIGHT_PAIR:Theorem1`;
* `(1,1,1,0)`, `(1,1,0,1)`, `(1,0,1,1)`: Theorem 1 (classes `RT`, `RL`, `TL`);
* `(1,0,2,0)`: `C1_ONE_LOWER_TOP_TRIANGLE:Theorem` for a triangular top hull,
  `C1_ONE_LOWER_CONVEX_TOP:Theorem` (placement 1) for a quadrilateral one;
* `(0,1,2,0)`: `C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:Theorem` for a triangular top hull,
  `C1_ONE_LOWER_EIGHT_HULL:Theorem` (eight hull vertices) for a quadrilateral one;
* `(0,1,1,1)`: `C1_ONE_LOWER_EIGHT_HULL:Theorem` (eight hull vertices);
* `(0,0,3,0)`: `C1_ONE_LOWER_CONVEX_TOP:Theorem` (placement 2, every three-top hull).

The top-hull alternatives are `claim_top_hull`; the eight-vertex cases are `claim_eight_vertices`.
FLAG (line 357): "`W ≥ 10s > 1`" for three upper points is not what the seven-point theorem gives;
see `claim_E0` (only `W > 1` is needed and holds).
`hand/C1_ONE_LOWER_MIXED_CAPS.md`, lines 349-398.
Uses: C1_ONE_LOWER_MIXED_CAPS:claim-transpose, C1_ONE_LOWER_MIXED_CAPS:claim-partition,
C1_ONE_LOWER_MIXED_CAPS:claim-E0, QUADRILATERAL_HULL:Theorem2, C1_ONE_LOWER_TOP_CAP:Theorem,
C1_ONE_LOWER_SIDE_CAP:Theorem1, C1_ONE_LOWER_MIXED_CAPS:claim-occupancy,
C1_ZERO_LOWER:claim-side-cap-capacity, C1_ZERO_LOWER:Theorem2,
C1_ONE_LOWER_MIXED_CAPS:claim-nine-rows, C1_ONE_LOWER_RIGHT_PAIR:Theorem1,
C1_ONE_LOWER_MIXED_CAPS:Theorem1, C1_ONE_LOWER_MIXED_CAPS:claim-top-hull,
C1_ONE_LOWER_TOP_TRIANGLE:Theorem, C1_ONE_LOWER_CONVEX_TOP:Theorem,
C1_ONE_LOWER_RIGHT_TOP_TRIANGLE:Theorem, C1_ONE_LOWER_MIXED_CAPS:claim-eight-vertices,
C1_ONE_LOWER_EIGHT_HULL:Theorem, C1_ZERO_LOWER:Lemma3. -/
theorem theorem2 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) : False := by
  sorry

end Heilbronn.C1OneLowerMixedCaps
