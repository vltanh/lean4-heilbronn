module

public import Heilbronn.Six.Setting

/-! # The exact six-anchor hull in family N (`hand/SIX_BOUNDARY_HULL.md`)

Role: primary route. Theorem 7 closes the six-boundary occupancy `(0,0,0;3)` of
`hand/UNRESTRICTED.md`, Section 4 (all three free points inside the anchor hexagon, so that the
six anchors are the whole convex hull). Theorem 1 (the six anchor ears have doubled area below
`ρ = 13/16`, hence capacity one) holds throughout family N and is used by the other six-boundary
manuscripts (single side, single top, side opposite, two top).

Setting: `nConfig a h b c d f Q P R` with `NAnchors a h b c d f`; in Sections 2-6 the lower free
point is `Q` (in `HABC`) and the upper points are `P, R` (in `HCDF`). Thresholds: `s = 7/64`
(doubled) in Theorems 1-3 (hypothesis `7/128 ≤ minTriangleArea`), `σ = 8/73 < 2A₀` in
Theorems 4-6 (hypothesis `A₀ ≤ minTriangleArea`), `ρ = 13/16 < Ks`, `K = 4 + 2√3`.

Implicit in the manuscript: Theorems 2-6 are stated under the *exact six-anchor hull* hypothesis
of Section 2 and the placements of (9) and (44), which their statements do not repeat
(lines 350-354, 671-674, 910-911). Here the hull hypothesis is written as the placements
`Q ∈ HABC` (or a sub-triangle) and `P, R ∈ HCDF` (through the diagonal sectors), and the
placements are explicit hypotheses. The empty-`ABC` normalization `Q ∈ AHC` (Lemma 5 of
`QUADRILATERAL_HULL.md`) is an explicit hypothesis of the Section 4 claims that use it.

Results:
* `theorem1`: the six ears `ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< 13/16`, and each
  contains at most one free point;
* `theorem2`: two upper points in `HDF`, or two in `CDF`, are impossible;
* `claim_sector_assignments`: the upper pair occupies one of the four sector assignments (9);
* `theorem3`: the assignment `{HCJ, DFJ}` is impossible;
* `theorem4`: the assignment `{CDJ, FHJ}` is impossible, with the claims of its proof
  `claim_hc_window` (21), `claim_Q_in_HBC` (22), `claim_cross_capacity` (23)-(27),
  `claim_side_ears_occupied` (28), `claim_upper_pair_scalar_lemma` (29)-(32) and
  `claim_thm4_finish` (33)-(34);
* `theorem5` (and `claim_theorem5_transpose`): the mixed pair `P ∈ HCJ, R ∈ CDJ` with
  `Q ∈ HBC` is impossible;
* `theorem6`: the placement (44) `P ∈ HCJ, R ∈ CDJ, Q ∈ ABH` is impossible;
* `theorem7`: no competitive N configuration has exactly the six anchors as its convex hull.

The transposition used throughout (lines 127-135) is `SixBoundary.claim_transposition`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryHull

open SixBoundary

/-! ### Section 1: the anchor ears -/

/-- **Theorem 1** (`SIX_BOUNDARY_HULL:Theorem1`). Under the N normalization, if every doubled
area is at least `s = 7/64`, each of the six cyclic anchor ears `ABH, ABC, BCD, CDF, DFH, FHA`
has doubled area strictly below `ρ = 13/16`; consequently none of them contains two free points
(two interior points need doubled area at least `(4 + 2√3)s > ρ`).
Valid throughout family N, without the exact-hull hypothesis.
`hand/SIX_BOUNDARY_HULL.md`, lines 36-142.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem1 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    (sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16) ∧
    (AtMostOne (fun P => InTriangle P (ptA a) (ptB b) (ptH h)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptA a) (ptB b) (ptC c)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptB b) (ptC c) (ptD d)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptC c) (ptD d) (ptF f)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptD d) (ptF f) (ptH h)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptF f) (ptH h) (ptA a)) X Y Z) := by
  sorry

/-! ### Section 2: the upper pair -/

/-- **Theorem 2** (`SIX_BOUNDARY_HULL:Theorem2`). With the lower free point `Q` in `HABC` and the
upper points `P, R` in `HCDF` (the exact-hull placement), and every doubled area at least
`7/64`, the placements `P, R ∈ HDF` and `P, R ∈ CDF` are impossible (Theorem 1).
`hand/SIX_BOUNDARY_HULL.md`, lines 144-161.
Uses: QUADRILATERAL_HULL:claim-(14)(15), SIX_BOUNDARY_HULL:Theorem1 -/
theorem theorem2 {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hQ : Q ∈ unitSquare) (hP : P ∈ unitSquare) (hR : R ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hQl : InLowerQuad a h b c Q) (hPu : InUpperQuad h c d f P) (hRu : InUpperQuad h c d f R) :
    ¬ (InTriangle P (ptH h) (ptD d) (ptF f) ∧ InTriangle R (ptH h) (ptD d) (ptF f)) ∧
      ¬ (InTriangle P (ptC c) (ptD d) (ptF f) ∧ InTriangle R (ptC c) (ptD d) (ptF f)) := by
  sorry

/-- The unordered sector assignment `{S, T}` of the two upper points `P, R`. -/
def SectorPair (S T : Point → Prop) (P R : Point) : Prop :=
  (S P ∧ T R) ∨ (T P ∧ S R)

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-sector-assignments`). In the exact-hull placement (lower
point `Q ∈ HABC`, upper points `P, R ∈ HCDF`) with every doubled area at least `7/64`, the upper
points lie in distinct open diagonal sectors of `HCDF` (central-pair theorem; no free point is on
a diagonal), and after Theorem 2 their unordered assignment is one of (9):
`{HCJ, CDJ}`, `{HCJ, FHJ}` (mixed) or `{HCJ, DFJ}`, `{CDJ, FHJ}` (opposite).
`hand/SIX_BOUNDARY_HULL.md`, lines 163-182.
Uses: ONE_CORNER_COMPLETION:Theorem2, SIX_BOUNDARY_HULL:Theorem2 -/
theorem claim_sector_assignments {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hQ : Q ∈ unitSquare) (hP : P ∈ unitSquare) (hR : R ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hQl : InLowerQuad a h b c Q) (hPu : InUpperQuad h c d f P) (hRu : InUpperQuad h c d f R) :
    SectorPair (InSectorHCJ h c d f) (InSectorCDJ h c d f) P R ∨
      SectorPair (InSectorHCJ h c d f) (InSectorFHJ h c d f) P R ∨
      SectorPair (InSectorHCJ h c d f) (InSectorDFJ h c d f) P R ∨
      SectorPair (InSectorCDJ h c d f) (InSectorFHJ h c d f) P R := by
  sorry

/-! ### Section 3: the opposite pair `{HCJ, DFJ}` -/

/-- **Theorem 3** (`SIX_BOUNDARY_HULL:Theorem3`). Under the exact six-anchor hull hypothesis
(lower point `Q ∈ HABC`), with every doubled area at least `7/64`, the assignment `P ∈ HCJ`,
`R ∈ DFJ` is impossible. (The proof shows that the bounds `hc > 7/11` (10) and
`8s ≤ W ≤ 1` (11) forbid any free point in `DFJ`.)
`hand/SIX_BOUNDARY_HULL.md`, lines 184-343.
Uses: TYPE_II:EndpointTriangleTheorem, QUADRILATERAL_HULL:Theorem1,
QUADRILATERAL_HULL:Theorem1 -/
theorem theorem3 {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hQ : Q ∈ unitSquare) (hP : P ∈ unitSquare) (hR : R ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hQl : InLowerQuad a h b c Q) (hPs : InSectorHCJ h c d f P) (hRs : InSectorDFJ h c d f R) :
    False := by
  sorry

/-! ### Section 4: the opposite pair `{CDJ, FHJ}` -/

/-- The standing hypotheses of Section 4 of `hand/SIX_BOUNDARY_HULL.md`: an N configuration
`nConfig a h b c d f Q P R` of least area at least `A₀`, with the lower point `Q ∈ HABC` and the
opposite upper pair `P ∈ CDJ`, `R ∈ FHJ`. -/
def OppositePairSetting (a h b c d f : ℝ) (Q P R : Point) : Prop :=
  NAnchors a h b c d f ∧ Q ∈ unitSquare ∧ P ∈ unitSquare ∧ R ∈ unitSquare ∧
    A₀ ≤ minTriangleArea (nConfig a h b c d f Q P R) ∧ InLowerQuad a h b c Q ∧
    InSectorCDJ h c d f P ∧ InSectorFHJ h c d f R

/-- **Theorem 4** (`SIX_BOUNDARY_HULL:Theorem4`). In a configuration with minimum ordinary
triangle area at least `A₀`, with the lower point `Q ∈ HABC`, the opposite assignment
`P ∈ CDJ`, `R ∈ FHJ` is impossible. Consequently only the two mixed upper-pair placements remain.
`hand/SIX_BOUNDARY_HULL.md`, lines 350-660.
Uses: SIX_BOUNDARY_HULL:claim-hc-window, SIX_BOUNDARY_HULL:claim-Q-in-HBC,
SIX_BOUNDARY_HULL:claim-cross-capacity, SIX_BOUNDARY_HULL:claim-side-ears-occupied,
SIX_BOUNDARY_HULL:claim-upper-pair-scalar-lemma, SIX_BOUNDARY_HULL:claim-Thm4-finish,
QUADRILATERAL_HULL:Lemma5, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem4 {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hQ : Q ∈ unitSquare) (hP : P ∈ unitSquare) (hR : R ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hQl : InLowerQuad a h b c Q) (hPs : InSectorCDJ h c d f P) (hRs : InSectorFHJ h c d f R) :
    False := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-hc-window`). In the Section 4 setting,
`7/11 < hc ≤ 625/896` (21): the lower bound is (10) (the endpoint-triangle theorem on
`H, C, A, B, Q` in the virtual triangle `(0,0)HC`), the upper bound is the Pattern I estimate of
`ONE_CORNER.md` Section 7 at threshold `7/64` for the two opposite diagonal sectors.
`hand/SIX_BOUNDARY_HULL.md`, lines 371-383 (and (10), lines 190-200).
Uses: TYPE_II:EndpointTriangleTheorem, ONE_CORNER:claim-pentagon-opposite-quadrants -/
theorem claim_hc_window {a h b c d f : ℝ} {Q P R : Point}
    (hS : OppositePairSetting a h b c d f Q P R) :
    7 / 11 < h * c ∧ h * c ≤ 625 / 896 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-Q-in-HBC`). In the Section 4 setting, after the
empty-ear normalization `Q ∈ AHC`, also `Q ∈ HBC` (22): `Q ∈ ABH` is excluded by cell I of the
endpoint-triangle analysis, which would give `hc ≥ (4 + 2√3)σ > 13/16`, contrary to (21).
`hand/SIX_BOUNDARY_HULL.md`, lines 385-393.
Uses: QUADRILATERAL_HULL:Lemma5, TYPE_II:claim-five-cells, SIX_BOUNDARY_HULL:claim-hc-window -/
theorem claim_Q_in_HBC {a h b c d f : ℝ} {Q P R : Point}
    (hS : OppositePairSetting a h b c d f Q P R) (hQ : InTriangle Q (ptA a) (ptC c) (ptH h)) :
    InTriangle Q (ptH h) (ptB b) (ptC c) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-cross-capacity`). In the Section 4 setting
(`σ = 8/73`, `K = 4 + 2√3`): `[ACD] ≤ 1 - 3σ < Kσ` and `[HBF] ≤ 1 - 3σ` (23), and
`[ADF] < Kσ`, `[BDF] < Kσ` (via (24)-(27) and transposition); hence each of
`ACD, HBF, ADF, BDF` contains at most one free point.
`hand/SIX_BOUNDARY_HULL.md`, lines 395-486.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, SIX_BOUNDARY_HULL:claim-transposition -/
theorem claim_cross_capacity {a h b c d f : ℝ} {Q P R : Point}
    (hS : OppositePairSetting a h b c d f Q P R) :
    sarea (ptA a) (ptC c) (ptD d) ≤ 1 - 3 * (8 / 73) ∧
      sarea (ptH h) (ptB b) (ptF f) ≤ 1 - 3 * (8 / 73) ∧
      1 - 3 * (8 / 73) < (4 + 2 * Real.sqrt 3) * (8 / 73) ∧
      sarea (ptA a) (ptD d) (ptF f) < (4 + 2 * Real.sqrt 3) * (8 / 73) ∧
      sarea (ptB b) (ptD d) (ptF f) < (4 + 2 * Real.sqrt 3) * (8 / 73) ∧
      AtMostOne (fun W => InTriangle W (ptA a) (ptC c) (ptD d)) Q P R ∧
      AtMostOne (fun W => InTriangle W (ptH h) (ptB b) (ptF f)) Q P R ∧
      AtMostOne (fun W => InTriangle W (ptA a) (ptD d) (ptF f)) Q P R ∧
      AtMostOne (fun W => InTriangle W (ptB b) (ptD d) (ptF f)) Q P R := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-side-ears-occupied`). In the Section 4 setting with
`Q ∈ AHC`, each side ear `AHF` and `BCD` contains a free point, so (28)
`f(h - a) ≥ 3σ` and `d(c - b) ≥ 3σ` (`σ = 8/73`).
`hand/SIX_BOUNDARY_HULL.md`, lines 488-521.
Uses: SIX_BOUNDARY_HULL:Theorem1, SIX_BOUNDARY_HULL:claim-cross-capacity,
SIX_BOUNDARY_HULL:claim-Q-in-HBC, SIX_BOUNDARY_HULL:claim-transposition -/
theorem claim_side_ears_occupied {a h b c d f : ℝ} {Q P R : Point}
    (hS : OppositePairSetting a h b c d f Q P R) (hQ : InTriangle Q (ptA a) (ptC c) (ptH h)) :
    (InTriangle Q (ptF f) (ptH h) (ptA a) ∨ InTriangle P (ptF f) (ptH h) (ptA a) ∨
        InTriangle R (ptF f) (ptH h) (ptA a)) ∧
      (InTriangle Q (ptB b) (ptC c) (ptD d) ∨ InTriangle P (ptB b) (ptC c) (ptD d) ∨
        InTriangle R (ptB b) (ptC c) (ptD d)) ∧
      3 * (8 / 73) ≤ f * (h - a) ∧ 3 * (8 / 73) ≤ d * (c - b) := by
  sorry

/-- The upper root `T = (W + √(W² - 8σW))/2` of (30), `σ = 8/73`. -/
def upperRootT (W : ℝ) : ℝ := (W + Real.sqrt (W ^ 2 - 8 * (8 / 73) * W)) / 2

/-- The bound `Φ_η(T)` of (31), `σ = 8/73`. -/
def phiEta (η T : ℝ) : ℝ :=
  (-(1 - η) * T ^ 2 + (1 - 2 * η * (8 / 73)) * T - 2 * (8 / 73)) /
    (η * ((1 - η) * T + 2 * η * (8 / 73)))

/-- The discriminant of the quadratic (32) in `T`, `σ = 8/73`. -/
def disc32 (η B : ℝ) : ℝ :=
  (1 - 2 * η * (8 / 73) - B * η * (1 - η)) ^ 2 - 4 * (1 - η) * (2 * (8 / 73) * (1 + B * η ^ 2))

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-upper-pair-scalar-lemma`). Scalar lemma (29)-(32),
`σ = 8/73`. Let `h, c > 0`, `z = hc`, `0 ≤ u, v ≤ η` with `0 < η < 1`, and
`Y = h - zu`, `Z = c - zv`, `W = 1 - zuv` (in the application `u = (h-d)/h`, `v = (c-f)/c`,
`Y = [HCD]`, `Z = [HCF]`, `W = [HCDF]`). If the sector inequalities (29)
`Z(W - Y) ≥ σ(2W + Z - Y)`, `Y(W - Z) ≥ σ(2W + Y - Z)` hold, `Y, Z ≥ 3σ` and `W ≥ 8σ`, then
`Y, Z ≤ T` (30), `z ≤ Φ_η(T)` (31), and `z < B` whenever the quadratic (32) has negative
discriminant. `hand/SIX_BOUNDARY_HULL.md`, lines 523-604. -/
theorem claim_upper_pair_scalar_lemma {h c u v η z Y Z W B : ℝ} (hh : 0 < h) (hc : 0 < c)
    (hu : 0 ≤ u) (hv : 0 ≤ v) (hη : 0 < η) (hη1 : η < 1) (huη : u ≤ η) (hvη : v ≤ η)
    (hz : z = h * c) (hY : Y = h - z * u) (hZ : Z = c - z * v) (hW : W = 1 - z * u * v)
    (h29a : (8 / 73) * (2 * W + Z - Y) ≤ Z * (W - Y))
    (h29b : (8 / 73) * (2 * W + Y - Z) ≤ Y * (W - Z))
    (hY3 : 3 * (8 / 73) ≤ Y) (hZ3 : 3 * (8 / 73) ≤ Z) (hW8 : 8 * (8 / 73) ≤ W) :
    Y ≤ upperRootT W ∧ Z ≤ upperRootT W ∧ z ≤ phiEta η (upperRootT W) ∧
      (disc32 η B < 0 → z < B) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-Thm4-finish`). In the Section 4 setting with `Q ∈ AHC`:
with `α = a/h`, `β = b/c`, `t = σ/z`, (33) `α(1-α), β(1-β) ≥ t`, and (34) with `r = 7/36`,
`η = 5/12`, `B = 2/3` and then `r = 1/5`, `η = 2/5`, `B = 7/11` give `hc < 7/11`, contradicting
(21). `hand/SIX_BOUNDARY_HULL.md`, lines 606-660.
Uses: SIX_BOUNDARY_HULL:claim-hc-window, SIX_BOUNDARY_HULL:claim-side-ears-occupied,
SIX_BOUNDARY_HULL:claim-upper-pair-scalar-lemma, QUADRILATERAL_HULL:Theorem1 -/
theorem claim_thm4_finish {a h b c d f : ℝ} {Q P R : Point}
    (hS : OppositePairSetting a h b c d f Q P R) (hQ : InTriangle Q (ptA a) (ptC c) (ptH h)) :
    h * c < 7 / 11 := by
  sorry

/-! ### Section 5: the mixed pair with `Q ∈ HBC` -/

/-- **Theorem 5** (`SIX_BOUNDARY_HULL:Theorem5`). The mixed placement `P ∈ HCJ`, `R ∈ CDJ`
(both inside `HCD`) with the lower point `Q` inside `HBC` is impossible at minimum area at least
`A₀`. (It does not require `Q ∈ AHC`, so it also covers `Q` in the ear `ABC`.)
`hand/SIX_BOUNDARY_HULL.md`, lines 669-894.
Uses: ONE_CORNER_COMPLETION:Theorem3, SIX_BOUNDARY_HULL:Theorem1,
THREE_INTERIOR_TRIANGLES:Corollary2, ONE_CORNER_COMPLETION:claim-general-identities,
CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem theorem5 {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hQ : Q ∈ unitSquare) (hP : P ∈ unitSquare) (hR : R ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hQt : InTriangle Q (ptH h) (ptB b) (ptC c)) (hPs : InSectorHCJ h c d f P)
    (hRs : InSectorCDJ h c d f R) :
    False := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_HULL:claim-theorem5-transpose`). The transpose of Theorem 5: the
mixed placement `P ∈ HCJ`, `R ∈ FHJ` (both inside `HCF`) with `Q` inside `AHC` is impossible at
minimum area at least `A₀`. `hand/SIX_BOUNDARY_HULL.md`, lines 896-898.
Uses: SIX_BOUNDARY_HULL:Theorem5, SIX_BOUNDARY_HULL:claim-transposition -/
theorem claim_theorem5_transpose {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hQ : Q ∈ unitSquare) (hP : P ∈ unitSquare) (hR : R ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hQt : InTriangle Q (ptA a) (ptC c) (ptH h)) (hPs : InSectorHCJ h c d f P)
    (hRs : InSectorFHJ h c d f R) :
    False := by
  sorry

/-! ### Section 6: the last lower-ear placement -/

/-- **Theorem 6** (`SIX_BOUNDARY_HULL:Theorem6`). The placement (44) `P ∈ HCJ`, `R ∈ CDJ`,
`Q ∈ ABH` is impossible at minimum ordinary area at least `A₀`.
`hand/SIX_BOUNDARY_HULL.md`, lines 908-1297.
Uses: QUADRILATERAL_HULL:Lemma5, ONE_CORNER_COMPLETION:Theorem3,
THREE_INTERIOR_TRIANGLES:Corollary2, ONE_CORNER_COMPLETION:Theorem1,
CORNER_FAMILIES:TwoInteriorPointLemma, SIX_BOUNDARY_HULL:claim-cross-capacity -/
theorem theorem6 {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hQ : Q ∈ unitSquare) (hP : P ∈ unitSquare) (hR : R ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hQt : InTriangle Q (ptA a) (ptB b) (ptH h)) (hPs : InSectorHCJ h c d f P)
    (hRs : InSectorCDJ h c d f R) :
    False := by
  sorry

/-! ### Section 7: the exact six-anchor hull -/

/-- **Theorem 7** (`SIX_BOUNDARY_HULL:Theorem7`). A competitive configuration (least area at
least `A₀`) in family N cannot have exactly its six anchors as its convex hull, that is, all
three free points strictly inside the anchor hexagon. This closes the occupancy `(0,0,0;3)`.
`hand/SIX_BOUNDARY_HULL.md`, lines 1299-1321.
Uses: QUADRILATERAL_HULL:claim-(14)(15), ONE_CORNER_COMPLETION:Theorem2, SIX_BOUNDARY_HULL:Theorem2,
SIX_BOUNDARY_HULL:claim-sector-assignments, SIX_BOUNDARY_HULL:Theorem3,
SIX_BOUNDARY_HULL:Theorem4, QUADRILATERAL_HULL:Lemma5, SIX_BOUNDARY_HULL:Theorem5,
SIX_BOUNDARY_HULL:claim-theorem5-transpose, SIX_BOUNDARY_HULL:Theorem6 -/
theorem theorem7 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z))
    (hXI : InHexagon a h b c d f X) (hYI : InHexagon a h b c d f Y)
    (hZI : InHexagon a h b c d f Z) :
    False := by
  sorry

end Heilbronn.SixBoundaryHull
