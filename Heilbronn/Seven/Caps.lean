module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting
public import Heilbronn.Eight.RadialCatalogue

/-! # Continuous cap exclusions with seven boundary contacts (`hand/SEVEN_BOUNDARY_CAPS.md`)

**Role.** Primary-route component of `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2`, the
seven-boundary closer cited by `UNRESTRICTED.md` lines 132–140: the left pair uses Theorems 1, 2,
4, 5, 6, Corollary 7 and the §4 separation (via `SEVEN_BOUNDARY_LEFT_PAIR:Theorem2`), the right
pair Theorems 8–9 (via `SEVEN_BOUNDARY_RIGHT_PAIR`), the exterior part Theorems 10–11;
`SEVEN_BOUNDARY_MIXED_PAIR` uses Theorems 1, 4 and 6. `SEVEN_BOUNDARY_TOP_CAP` and
`SEVEN_BOUNDARY_TOP_CAP_RIGHT` use (37) of Theorem 9.

**Setting.** The normalized seven-boundary form (1)–(2) of `Heilbronn/Seven/Setting.lean`
(`SevenNormal a h b c d e f`): `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1)`,
the free points `P, Q` (also `X`, `Y` in the manuscript) arbitrary. Standing hypothesis: every
triangle has area at least `7/128` (doubled threshold `s = 7/64`); `K = 4 + 2√3` (`capK`), the
two-interior-point constant of `CORNER_FAMILIES.md`. Each exclusion "no free point in region `W`"
is stated as "a point in the closed region `W` gives a triangle of area `< 7/128`". When the proof
uses only the seven anchors and that one point (the manuscript says so for Theorem 1, line 140,
and Theorem 10, line 969), the statement is for the eight-point sub-configuration
`sevenConfig₁ a h b c d e f X`; it then applies to either free point by `le_min_comp`. Anchor-only
bounds are stated for `sevenAnchorConfig`.

**Results.**
* `theorem1`: no free point in the ear `ABH`;
* `theorem2`: `BCF`, `HCF`, `HBF` cannot contain both free points;
* `theorem3`: `ABFH` cannot contain both free points;
* `claim_left_pair_separation` (§4): both points on the `ABH` side of `CF` lie in `HBCF`, on
  opposite sides of `BF` and of `HC`;
* `theorem4`: no free point in the ear `ABC`;
* `theorem5`: `[ACF] < 13/16 < Ks`, so `ACF` cannot contain both free points;
* `claim_AF_separation`: in the §4 placement both points are in `ACFH`, separated by `AF`, `HC`,
  `BF`;
* `theorem6`: no free point in `AHF ∩ HCF`;
* `corollary7`: in the §4 placement the only remaining sector assignment is one point in the `HB`
  sector above `AF` and one in the `CF` sector;
* `theorem8`: `[CDE] < 3s`, so no free point in `CDE`;
* `theorem9`, `eq37`: `[CDF] < 13/16`, `[DEF] < 49/64`, so neither holds both free points; and
  (37) `1/8 < b ≤ 1/2`, `c ≥ b²/(b-s)`, `b - s - b² > 0`;
* `claim_right_pair_DF`: two free points in `CDEF` lie in `CEF ∩ DEF` and `CEF ∩ CDF`;
* `theorem10`: the nearer upper cap `conv{H,F,(0,1)}` is empty;
* `theorem11`: the far upper cap `conv{F,E,(1,1)}` cannot contain both free points;
* `claim_exterior_reduction`: with the lower-cap exclusions, a configuration with a free point
  outside the heptagon has exactly one free point beyond `EF` and the other inside the heptagon.

Not formalized (unused downstream): the remark after Theorem 1 (lines 143–144, `CDE` when
`f ≥ 1/2`) and the remark after Theorem 2 (lines 194–197, family N). Theorem 3 has no downstream
citation. Stale scope text: lines 25–29, 254–259. Citation note (file outside this group):
`SEVEN_BOUNDARY_MIXED_PAIR.md` line 598 cites "Theorem 7" of this note for `HCF ∩ AHF`; that result
is Theorem 6 (`theorem6`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryCaps

open SevenBoundary RadialCatalogue

/-- The two-interior-point constant `K = 4 + 2√3` (`CORNER_FAMILIES.md` §7). -/
def capK : ℝ := 4 + 2 * Real.sqrt 3

/-- The placement of §4: both free points strictly inside the anchor heptagon and strictly on the
side of `CF` containing `A, B, H`. -/
def LeftPlacement (a h b c d e f : ℝ) (P Q : Point) : Prop :=
  InHeptagon a h b c d e f P ∧ InHeptagon a h b c d e f Q ∧
    0 < sarea (c, 0) (f, 1) P ∧ 0 < sarea (c, 0) (f, 1) Q

/-- `X` is in the sector of the quadrilateral `HBCF` at its side `HB`: inside `HBCF`, on the `H`
side of the diagonal `BF` and on the `B` side of the diagonal `HC`. -/
def InSectorHB (h b c f : ℝ) (X : Point) : Prop :=
  InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] X ∧ 0 < sarea (b, 0) (f, 1) X ∧
    sarea (0, h) (c, 0) X < 0

/-- The sector of `HBCF` at its side `CF`: the `C` side of `BF` and the `F` side of `HC`. -/
def InSectorCF (h b c f : ℝ) (X : Point) : Prop :=
  InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] X ∧ sarea (b, 0) (f, 1) X < 0 ∧
    0 < sarea (0, h) (c, 0) X

/-- The sector of `HBCF` at its side `BC`: the `C` side of `BF` and the `B` side of `HC`. -/
def InSectorBC (h b c f : ℝ) (X : Point) : Prop :=
  InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] X ∧ sarea (b, 0) (f, 1) X < 0 ∧
    sarea (0, h) (c, 0) X < 0

/-- The sector of `HBCF` at its side `FH`: the `H` side of `BF` and the `F` side of `HC`. -/
def InSectorFH (h b c f : ℝ) (X : Point) : Prop :=
  InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] X ∧ 0 < sarea (b, 0) (f, 1) X ∧
    0 < sarea (0, h) (c, 0) X

/-! ### §1. The near-side lower ear -/

/-- **Theorem 1** (`SEVEN_BOUNDARY_CAPS:Theorem1`). Under (1)–(2), if a free point lies in the
closed triangle `ABH`, some triangle has area less than `7/128`. ("No location or property of the
other free point has been used": stated for the seven anchors and that point.)
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 51–141.
Uses: standard facts (`z + q/z ≥ 2√q`; `√7 > 21/8`, `√6 > 12/5`, `√2 > 7/5`). -/
theorem theorem1 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InClosedTriangle X (0, a) (b, 0) (0, h)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  sorry

/-! ### §2. Three triangles of capacity one -/

/-- **Theorem 2** (`SEVEN_BOUNDARY_CAPS:Theorem2`). Under (1)–(2), none of the closed triangles
`BCF`, `HCF`, `HBF` contains both free points at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 148–192.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem2 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point} :
    (InClosedTriangle P (b, 0) (c, 0) (f, 1) → InClosedTriangle Q (b, 0) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
      (InClosedTriangle P (0, h) (c, 0) (f, 1) → InClosedTriangle Q (0, h) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
      (InClosedTriangle P (0, h) (b, 0) (f, 1) → InClosedTriangle Q (0, h) (b, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) := by
  sorry

/-! ### §3. The smaller side quadrilateral -/

/-- **Theorem 3** (`SEVEN_BOUNDARY_CAPS:Theorem3`). Under (1)–(2), the closed quadrilateral
`ABFH` does not contain both free points at minimum area at least `7/128` (its doubled area is
`J = b(1-a) + fh ≤ 43/50 < 8s`). No downstream citation.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 201–236.
Uses: QUADRILATERAL_HULL:Theorem1. -/
theorem theorem3 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hP : InClosedPolygon ![(0, a), (b, 0), (f, 1), (0, h)] P)
    (hQ : InClosedPolygon ![(0, a), (b, 0), (f, 1), (0, h)] Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  sorry

/-! ### §4. The left-hand pair -/

/-- **Claim** (`SEVEN_BOUNDARY_CAPS:claim-left-pair-separation`). Under (1)–(2) and minimum area
at least `7/128`, if both free points are inside the heptagon on the side of `CF` containing
`A, B, H`, then both lie inside the quadrilateral `HBCF`, on opposite sides of its diagonal `BF`,
and on opposite sides of its diagonal `HC`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 238–259.
Uses: SEVEN_BOUNDARY_CAPS:Theorem1, SEVEN_BOUNDARY_CAPS:Theorem2, QUADRILATERAL_HULL:Theorem4. -/
theorem claim_left_pair_separation {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f)
    {P Q : Point} (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hpl : LeftPlacement a h b c d e f P Q) :
    InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] P ∧ InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] Q ∧
      sarea (b, 0) (f, 1) P * sarea (b, 0) (f, 1) Q < 0 ∧
      sarea (0, h) (c, 0) P * sarea (0, h) (c, 0) Q < 0 := by
  sorry

/-! ### §5. The adjacent bottom ear -/

/-- **Theorem 4** (`SEVEN_BOUNDARY_CAPS:Theorem4`). Under (1)–(2), a free point in the closed
triangle `ABC` gives a triangle of area less than `7/128` (stated for the seven anchors and that
point; the proof uses no other point).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 263–378.
Uses: standard facts (`(√p + √q)² ≤ (a+L)(b+M)`, `√3 > 5/3`). -/
theorem theorem4 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InClosedTriangle X (0, a) (b, 0) (c, 0)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  sorry

/-! ### §6. The diagonal triangle `ACF` -/

/-- **Theorem 5** (`SEVEN_BOUNDARY_CAPS:Theorem5`). Under (1)–(2): if every anchor triangle has
area at least `7/128` (the proof uses only `ABC, BCD, ABH, CDE, HEF`), then the doubled area
`[ACF] = c(1-a) + af` is less than `13/16 < Ks`; consequently the closed triangle `ACF` does not
contain both free points at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 392–544.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem5 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (0, a) (c, 0) (f, 1) < 13 / 16) ∧
      13 / 16 < capK * (7 / 64) ∧
      ∀ P Q : Point, InClosedTriangle P (0, a) (c, 0) (f, 1) →
        InClosedTriangle Q (0, a) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_CAPS:claim-AF-separation`). Under (1)–(2), minimum area at least
`7/128` and the placement of §4, both free points lie inside the quadrilateral `ACFH`, and each of
the lines `AF`, `HC`, `BF` separates them.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 546–554.
Uses: SEVEN_BOUNDARY_CAPS:Theorem4, SEVEN_BOUNDARY_CAPS:Theorem5, SEVEN_BOUNDARY_CAPS:Theorem2,
SEVEN_BOUNDARY_CAPS:claim-left-pair-separation. -/
theorem claim_AF_separation {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hpl : LeftPlacement a h b c d e f P Q) :
    InPolygon ![(0, a), (c, 0), (f, 1), (0, h)] P ∧ InPolygon ![(0, a), (c, 0), (f, 1), (0, h)] Q ∧
      sarea (0, a) (f, 1) P * sarea (0, a) (f, 1) Q < 0 ∧
      sarea (0, h) (c, 0) P * sarea (0, h) (c, 0) Q < 0 ∧
      sarea (b, 0) (f, 1) P * sarea (b, 0) (f, 1) Q < 0 := by
  sorry

/-! ### §7. The upper left overlap -/

/-- **Theorem 6** (`SEVEN_BOUNDARY_CAPS:Theorem6`). Under (1)–(2), a point in both closed
triangles `AHF` and `HCF` gives a triangle of area less than `7/128` (stated for the seven anchors
and that point; the proof uses `[AFQ], [FHQ], [HCQ]` and the anchors `ABH, ABC, CDE`).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 558–691.
Uses: none (weighted determinant identity and monotone replacements). -/
theorem theorem6 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hAHF : InClosedTriangle X (0, a) (f, 1) (0, h))
    (hHCF : InClosedTriangle X (0, h) (c, 0) (f, 1)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  sorry

/-- **Corollary 7** (`SEVEN_BOUNDARY_CAPS:Corollary7`). Under (1)–(2), minimum area at least
`7/128` and the placement of §4, the free points do not occupy the sectors of `HBCF` at `BC` and
at `FH`; the only remaining assignment has one point in the `HB` sector, strictly above `AF`, and
the other in the `CF` sector. (That assignment is excluded in `SEVEN_BOUNDARY_LEFT_PAIR.md`.)
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 693–715.
Uses: SEVEN_BOUNDARY_CAPS:claim-left-pair-separation, SEVEN_BOUNDARY_CAPS:Theorem5,
SEVEN_BOUNDARY_CAPS:claim-AF-separation, SEVEN_BOUNDARY_CAPS:Theorem6. -/
theorem corollary7 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hpl : LeftPlacement a h b c d e f P Q) :
    (InSectorHB h b c f P ∧ 0 < sarea (0, a) (f, 1) P ∧ InSectorCF h b c f Q) ∨
      (InSectorHB h b c f Q ∧ 0 < sarea (0, a) (f, 1) Q ∧ InSectorCF h b c f P) := by
  sorry

/-! ### §8. The bottom-right ear -/

/-- **Theorem 8** (`SEVEN_BOUNDARY_CAPS:Theorem8`). Under (1)–(2): if every anchor triangle has
area at least `7/128`, the doubled area `[CDE] = (1-c)(e-d)` is less than `3s = 21/64`;
consequently a free point in the closed triangle `CDE` gives a triangle of area less than `7/128`
(stated for the seven anchors and that point).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 719–844.
Uses: standard facts (Cauchy–Schwarz; `√2 > 7/5`, `√3 > 5/3`). -/
theorem theorem8 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (c, 0) (1, d) (1, e) < 3 * (7 / 64)) ∧
      ∀ X : Point, InClosedTriangle X (c, 0) (1, d) (1, e) →
        minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  sorry

/-! ### §9. Two right-hand triangles of capacity one -/

/-- **Equation (37)** (`SEVEN_BOUNDARY_CAPS:eq37`), proved at the start of the proof of
Theorem 9 and used by Theorem 11, `SEVEN_BOUNDARY_TOP_CAP_RIGHT` and the exterior notes: under
(1)–(2), if every anchor triangle has area at least `7/128`, then `1/8 < b ≤ 1/2`,
`c ≥ b²/(b-s)` and `b - s - b² > 0`, `s = 7/64`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 861–879.
Uses: none. -/
theorem eq37 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    1 / 8 < b ∧ b ≤ 1 / 2 ∧ b ^ 2 / (b - 7 / 64) ≤ c ∧ 0 < b - 7 / 64 - b ^ 2 := by
  sorry

/-- **Theorem 9** (`SEVEN_BOUNDARY_CAPS:Theorem9`). Under (1)–(2): if every anchor triangle has
area at least `7/128`, the doubled areas satisfy `[CDF] < 13/16` and `[DEF] < 49/64`, both below
`Ks`; consequently neither the closed triangle `CDF` nor the closed triangle `DEF` contains both
free points at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 852–930.
Uses: SEVEN_BOUNDARY_CAPS:eq37, SEVEN_BOUNDARY_CAPS:Theorem5 (`Ks > 13/16`),
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem9 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (c, 0) (1, d) (f, 1) < 13 / 16 ∧ sarea (1, d) (1, e) (f, 1) < 49 / 64) ∧
      ∀ P Q : Point,
        (InClosedTriangle P (c, 0) (1, d) (f, 1) → InClosedTriangle Q (c, 0) (1, d) (f, 1) →
          minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
        (InClosedTriangle P (1, d) (1, e) (f, 1) → InClosedTriangle Q (1, d) (1, e) (f, 1) →
          minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_CAPS:claim-right-pair-DF`). Under (1)–(2) and minimum area at
least `7/128`, if both free points lie in the closed right quadrilateral `CDEF`, then both are
strictly inside `CEF` and `DF` separates them: one is in `CEF ∩ DEF`, the other in `CEF ∩ CDF`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 846–848 and 932–938.
Uses: SEVEN_BOUNDARY_CAPS:Theorem8, SEVEN_BOUNDARY_CAPS:Theorem9. -/
theorem claim_right_pair_DF {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InClosedPolygon ![(c, 0), (1, d), (1, e), (f, 1)] P)
    (hQ : InClosedPolygon ![(c, 0), (1, d), (1, e), (f, 1)] Q) :
    (InTriangle P (c, 0) (1, e) (f, 1) ∧ InTriangle P (1, d) (1, e) (f, 1) ∧
        InTriangle Q (c, 0) (1, e) (f, 1) ∧ InTriangle Q (c, 0) (1, d) (f, 1)) ∨
      (InTriangle Q (c, 0) (1, e) (f, 1) ∧ InTriangle Q (1, d) (1, e) (f, 1) ∧
        InTriangle P (c, 0) (1, e) (f, 1) ∧ InTriangle P (c, 0) (1, d) (f, 1)) := by
  sorry

/-! ### §10–11. The two upper exterior caps -/

/-- **Theorem 10** (`SEVEN_BOUNDARY_CAPS:Theorem10`). Under (1)–(2), a point in the nearer upper
exterior cap `conv{H, F, (0,1)}` gives a triangle of area less than `7/128` ("independently of the
position of the other free point": stated for the seven anchors and that point).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 942–972.
Uses: standard fact (two-term reciprocal Cauchy inequality). -/
theorem theorem10 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InNearUpperCap h f X) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  sorry

/-- **Theorem 11** (`SEVEN_BOUNDARY_CAPS:Theorem11`). Under (1)–(2), the far upper exterior cap
`conv{F, E, (1,1)}` does not contain both free points at minimum area at least `7/128` (support
triangle `DFK'` and the cells III–V of `TYPE_II.md` §1 give `Ω ≥ Ks > 13/16`, while
`Ω < 49/64`).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 979–1036.
Uses: TYPE_II:claim-support-normalization, TYPE_II:EndpointTriangleTheorem,
SEVEN_BOUNDARY_CAPS:eq37. -/
theorem theorem11 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hP : InFarUpperCap e f P) (hQ : InFarUpperCap e f Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_CAPS:claim-exterior-reduction`). Under (1)–(2), with both free
points in the square and minimum area at least `7/128`, if the free points are not both strictly
inside the anchor heptagon, then exactly one of them lies strictly beyond `EF` in the far upper
cap (`FarCapPoint`) and the other strictly inside the heptagon.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 974–977 and 1038–1041.
Uses: SEVEN_BOUNDARY_CAPS:Theorem10, SEVEN_BOUNDARY_CAPS:Theorem11, GLOBAL_COMPLETION:Theorem2. -/
theorem claim_exterior_reduction {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f)
    {P Q : Point} (hPs : P ∈ unitSquare) (hQs : Q ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hout : ¬ (InHeptagon a h b c d e f P ∧ InHeptagon a h b c d e f Q)) :
    (FarCapPoint e f P ∧ InHeptagon a h b c d e f Q) ∨
      (FarCapPoint e f Q ∧ InHeptagon a h b c d e f P) := by
  sorry

end Heilbronn.SevenBoundaryCaps
