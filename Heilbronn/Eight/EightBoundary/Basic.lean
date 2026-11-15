module

public import Heilbronn.Common.Families
public import Heilbronn.Eight.RadialCatalogue

/-! # The eight-boundary-point gate, Lemma 1 – Theorem 12 (`hand/EIGHT_BOUNDARY.md`)

**Role.** Primary route. `UNRESTRICTED.md` §4 (lines 126–130) cites Theorem 13
(`Heilbronn/Eight/EightBoundary.lean`) for every configuration with at least eight boundary
points; Theorem 13 is also used by `SIX_BOUNDARY_TWO_SIDE_PROJECTION` §4. Lemma 3 and the §4 scalar
bound (`claim_scalar_bound`) are reused by `SEVEN_BOUNDARY_TOP_CAP` and
`SEVEN_BOUNDARY_TOP_CAP_RIGHT`. This file holds the results that Theorem 13 assembles.

**Setting.** The normal form of `Heilbronn/Eight/EightBoundary/Setting.lean` (`EightAnchors`,
`O ∈ (0,1)²`, `octagon`, `eightConfig`). In the manuscript `s` is twice the minimum area, a
variable; the side gaps are `L = h-a`, `B = c-b`, `R = e-d`, `T = f-g`. Regions are written with
`InPolygon` (open) and `InClosedPolygon` (closed) of `Heilbronn/Eight/RadialCatalogue.lean`,
listing the vertices counterclockwise, e.g. `△ADE = ![(0,a), (1,d), (1,e)]`; the corner caps are
`conv(B,C,D,E)` and `conv(D,E,F,G)`; the central region (11) is `InCentralRegion (octagon …)`.

**Results.**
* `lemma1`: nine distinct points, no three collinear, at least eight on the boundary: exactly
  eight, no corner, two on each open side, the ninth in the open square;
* `claim_normal_form`: consequently a configuration of positive minimum area with eight boundary
  points is a relabelling of `eightConfig` in normal form;
* `claim_thresholds`: the rational comparisons `(5-2√6)/2 < 3/58 < 17/320 < A₀`, `7/128 < A₀`,
  `21/400 < 17/320`, `(3-2√2)/4 < 1/20 < 17/320`;
* `theorem2`: `O` outside the open octagon gives minimum area `≤ (5-2√6)/2`;
* `lemma3`: the five-point quadrilateral inequality `Q ≥ 2(1+√2)s`;
* `claim_scalar_bound`: the scalar contradiction (6)–(10) of §4;
* `theorem4`: `O` in a closed side quadrilateral gives minimum area `< 7/128`;
* `corollary5`: at minimum area `≥ A₀`, `O` is in the central region (11);
* `theorem6`: `O ∈ ADE ∩ HDE ∩ BCF ∩ BCG` gives `≤ (5-2√6)/2`;
* `lemma7`: `s ≤ m(1-m)/2`, `m` the largest side gap;
* `theorem8`: central region and both corner caps give `≤ 21/400`;
* `theorem9`: `O ∈ ADE ∩ HDE ∩ BFG ∩ BCG` gives `< 1/20`;
* `lemma10`: disjoint opposite contact intervals give `≤ (3-2√2)/4`;
* `theorem11`: central region, `ADE ∩ HDE`, cap `BCDE`, not cap `DEFG` give `< 7/128`;
* `theorem12`: central region, `ADE ∩ HDE`, `BCF ∩ CFG`, outside both caps give `< 7/128`.

Implicit in the manuscript: "the eight boundary points have the form in Lemma 1" is
`EightAnchors a b c d e f g h` and `InOpenSquare O`. Theorems 6 and 9 add "the conclusion also holds
for every square-symmetry image of these conditions"; that clause is the stated theorem composed
with `SquareSymmetry.minTriangleArea_comp`, `minTriangleArea_comp_perm` and
`RadialCatalogue.claim_symmetry_relabel`, and is not stated separately. Lemmas 7 and 10 use only
boundary triangles and are stated for the eight boundary points (`octagon`), which implies the
nine-point form.

Stale text (not formalized): lines 3–7 say the note "does not yet remove all orientation
assumptions"; Theorem 13 and lines 1041–1046 supersede this.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.EightBoundary

open RadialCatalogue

/-! ### §1. Boundary incidences -/

/-- **Lemma 1** (`EIGHT_BOUNDARY:Lemma1`). Nine distinct points of the unit square, no three
collinear, at least eight on its boundary: exactly eight are on the boundary, none is a corner,
each open side contains exactly two of them, and the ninth point is in the open square.
`hand/EIGHT_BOUNDARY.md`, lines 11–27.
Uses: standard fact (a side holding three points makes them collinear). -/
theorem lemma1 (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) (hinj : Function.Injective P)
    (hncol : ∀ i j k, i ≠ j → j ≠ k → i ≠ k → sarea (P i) (P j) (P k) ≠ 0)
    (h8 : 8 ≤ {i : Fin 9 | OnSquareBoundary (P i)}.ncard) :
    {i : Fin 9 | OnSquareBoundary (P i)}.ncard = 8 ∧ (∀ i, ¬ IsCorner (P i)) ∧
      {i : Fin 9 | OnLeftSide (P i)}.ncard = 2 ∧ {i : Fin 9 | OnBottomSide (P i)}.ncard = 2 ∧
      {i : Fin 9 | OnRightSide (P i)}.ncard = 2 ∧ {i : Fin 9 | OnTopSide (P i)}.ncard = 2 ∧
      ∀ i, ¬ OnSquareBoundary (P i) → InOpenSquare (P i) := by
  sorry

/-- **Claim** (`EIGHT_BOUNDARY:claim-normal-form`). A configuration of the square with positive
minimum area and at least eight boundary points is, after fixing the counterclockwise labels, a
relabelling of the normal form: `P ∘ σ = eightConfig a b c d e f g h O` with
`EightAnchors a b c d e f g h` and `O` in the open square.
`hand/EIGHT_BOUNDARY.md`, lines 29–50.
Uses: EIGHT_BOUNDARY:Lemma1. -/
theorem claim_normal_form (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (hpos : 0 < minTriangleArea P) (h8 : 8 ≤ {i : Fin 9 | OnSquareBoundary (P i)}.ncard) :
    ∃ (a b c d e f g h : ℝ) (O : Point) (σ : Equiv.Perm (Fin 9)),
      EightAnchors a b c d e f g h ∧ InOpenSquare O ∧ P ∘ σ = eightConfig a b c d e f g h O := by
  sorry

/-- **Claim** (`EIGHT_BOUNDARY:claim-thresholds`, named here). The rational comparisons of the
note: `(5-2√6)/2 < 3/58 < 17/320 < A₀` (via `√6 > 71/29` and `p₀ < 7/40`, `A₀ = (2-9p₀)/8`),
`7/128 < A₀` (via `(145/18)² < 65`), `21/400 < 17/320` and `(3-2√2)/4 < 1/20 < 17/320`
(via `√2 > 7/5`).
`hand/EIGHT_BOUNDARY.md`, lines 134–142, 287–291, 531, 620–622, 659–660.
Uses: none. -/
theorem claim_thresholds :
    (5 - 2 * Real.sqrt 6) / 2 < 3 / 58 ∧ (3 : ℝ) / 58 < 17 / 320 ∧ (17 : ℝ) / 320 < A₀ ∧
      (7 : ℝ) / 128 < A₀ ∧ (21 : ℝ) / 400 < 17 / 320 ∧ (3 - 2 * Real.sqrt 2) / 4 < 1 / 20 ∧
      (1 : ℝ) / 20 < 17 / 320 := by
  sorry

/-! ### §2. The ninth point is inside the octagon -/

/-- **Theorem 2** (`EIGHT_BOUNDARY:Theorem2`). In the normal form, if `O` is not in the open
boundary octagon (outside the convex hull of the eight boundary points, or on its boundary), the
minimum triangle area is at most `(5-2√6)/2 < A₀`.
`hand/EIGHT_BOUNDARY.md`, lines 54–142.
Uses: standard facts (`z + q/z ≥ 2√q`; `√(1+1/λ) + √(1+1/(1-λ)) ≥ 2√3`). -/
theorem theorem2 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O) (hout : ¬ InPolygon (octagon a b c d e f g h) O) :
    minTriangleArea (eightConfig a b c d e f g h O) ≤ (5 - 2 * Real.sqrt 6) / 2 := by
  sorry

/-! ### §3. The five-point quadrilateral inequality -/

/-- **Lemma 3** (`EIGHT_BOUNDARY:Lemma3`). Let `V₁V₂V₃V₄` be a convex (counterclockwise)
quadrilateral and `O` a point of it. If every triangle on these five points has doubled area at
least `s > 0`, then the doubled area `Q = [V₁V₂V₃] + [V₁V₃V₄]` of the quadrilateral satisfies
`Q ≥ 2(1+√2)s`. (The manuscript takes `O` inside; a point on an edge gives a zero triangle,
which the hypothesis excludes.)
`hand/EIGHT_BOUNDARY.md`, lines 146–178.
Uses: standard facts (the identity `ac - bd = det(r₁,r₃)det(r₂,r₄)`; AM–GM). -/
theorem lemma3 {V₁ V₂ V₃ V₄ O : Point} {s : ℝ} (hs : 0 < s)
    (hconv : IsConvexPolygon ![V₁, V₂, V₃, V₄]) (hO : InClosedPolygon ![V₁, V₂, V₃, V₄] O)
    (hmin : s / 2 ≤ minTriangleArea ![V₁, V₂, V₃, V₄, O]) :
    2 * (1 + Real.sqrt 2) * s ≤ sarea V₁ V₂ V₃ + sarea V₁ V₃ V₄ := by
  sorry

/-! ### §4. The four side quadrilaterals -/

/-- **Claim** (`EIGHT_BOUNDARY:claim-scalar-bound`, named here). The scalar contradiction of §4,
(6)–(10), reused verbatim by `SEVEN_BOUNDARY_TOP_CAP` (3)–(4) and `SEVEN_BOUNDARY_TOP_CAP_RIGHT`
(11): if `s, X, Z > 0`, `sZ < 1`, `XZ ≥ 4`, and the quadrilateral bound (7)
`Q ≤ 2 - sZ - s(2-sZ)/(1-sZ) - X + 2s` is compatible with Lemma 3's `Q ≥ 2(1+√2)s`, then
`s < 7/64`. (Monotonicity in `z = sZ`, the substitution `u = 2s/X`, (8)–(9), `√2 > 7/5` and the
cubic `P(u) = 35 - 306u + 827u² - 640u³ > 0` on `(0, 1/2)`.)
`hand/EIGHT_BOUNDARY.md`, lines 231–286.
Uses: none. -/
theorem claim_scalar_bound {s X Z : ℝ} (hs : 0 < s) (hX : 0 < X) (hZ : 0 < Z) (hsZ : s * Z < 1)
    (hXZ : 4 ≤ X * Z)
    (hQ : 2 * (1 + Real.sqrt 2) * s ≤ 2 - s * Z - s * (2 - s * Z) / (1 - s * Z) - X + 2 * s) :
    s < 7 / 64 := by
  sorry

/-- **Theorem 4** (`EIGHT_BOUNDARY:Theorem4`). In the normal form, if `O` belongs to one of the
closed side quadrilaterals `conv(A,B,C,D)`, `conv(C,D,E,F)`, `conv(E,F,G,H)`, `conv(G,H,A,B)`, the
minimum triangle area is strictly less than `7/128 < A₀`.
`hand/EIGHT_BOUNDARY.md`, lines 182–294.
Uses: EIGHT_BOUNDARY:Lemma3, EIGHT_BOUNDARY:claim-scalar-bound. -/
theorem theorem4 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O)
    (hq : InClosedPolygon ![(0, a), (b, 0), (c, 0), (1, d)] O ∨
      InClosedPolygon ![(c, 0), (1, d), (1, e), (f, 1)] O ∨
      InClosedPolygon ![(1, e), (f, 1), (g, 1), (0, h)] O ∨
      InClosedPolygon ![(g, 1), (0, h), (0, a), (b, 0)] O) :
    minTriangleArea (eightConfig a b c d e f g h O) < 7 / 128 := by
  sorry

/-- **Corollary 5** (`EIGHT_BOUNDARY:Corollary5`). In the normal form with minimum triangle area
at least `A₀`, `O` is strictly inside the octagon, outside the four closed side quadrilaterals, and
in the central region (11) `int conv(A,D,E,H) ∩ int conv(B,C,F,G)`. (In particular it lies
outside all eight ears, and the first and fifth orientation expressions of `HAND_PROOF.md`
Theorem 1, `y - a - (d-a)x` and `c - x + (f-c)y`, are positive.)
`hand/EIGHT_BOUNDARY.md`, lines 296–317.
Uses: EIGHT_BOUNDARY:Theorem2, EIGHT_BOUNDARY:Theorem4, EIGHT_BOUNDARY:claim-thresholds. -/
theorem corollary5 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O) (hmin : A₀ ≤ minTriangleArea (eightConfig a b c d e f g h O)) :
    InPolygon (octagon a b c d e f g h) O ∧ OutsideSideQuads (octagon a b c d e f g h) O ∧
      InCentralRegion (octagon a b c d e f g h) O := by
  sorry

/-! ### §5. Two adjacent double wedges -/

/-- **Theorem 6** (`EIGHT_BOUNDARY:Theorem6`). In the normal form, if `O` belongs to the closed
triangles `ADE`, `HDE`, `BCF` and `BCG`, the minimum triangle area is at most `(5-2√6)/2 < A₀`.
(The manuscript adds: also for every square-symmetry image of these conditions; see the module
docstring.)
`hand/EIGHT_BOUNDARY.md`, lines 325–446.
Uses: standard facts (AM–GM; `(5-2√6)(2+t) - t(1-t) = (t-(√6-2))²`). -/
theorem theorem6 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O)
    (hADE : InClosedPolygon ![(0, a), (1, d), (1, e)] O)
    (hHDE : InClosedPolygon ![(0, h), (1, d), (1, e)] O)
    (hBCF : InClosedPolygon ![(b, 0), (c, 0), (f, 1)] O)
    (hBCG : InClosedPolygon ![(b, 0), (c, 0), (g, 1)] O) :
    minTriangleArea (eightConfig a b c d e f g h O) ≤ (5 - 2 * Real.sqrt 6) / 2 := by
  sorry

/-! ### §6. Two neighbouring corner caps -/

/-- The largest side gap `m = max(L, B, R, T)` of the normal form, with `L = h-a`, `B = c-b`,
`R = e-d`, `T = f-g`. -/
def maxGap (a b c d e f g h : ℝ) : ℝ :=
  max (max (h - a) (c - b)) (max (e - d) (f - g))

/-- **Lemma 7** (`EIGHT_BOUNDARY:Lemma7`). For the eight boundary points of the normal form, with
`s` twice their minimum triangle area and `m = max(L, B, R, T)`, `s ≤ m(1-m)/2`. (Stated for the
eight boundary points; the proof uses only the side budgets.)
`hand/EIGHT_BOUNDARY.md`, lines 450–472.
Uses: none. -/
theorem lemma7 {a b c d e f g h : ℝ} (hA : EightAnchors a b c d e f g h) :
    2 * minTriangleArea (octagon a b c d e f g h) ≤
      maxGap a b c d e f g h * (1 - maxGap a b c d e f g h) / 2 := by
  sorry

/-- **Theorem 8** (`EIGHT_BOUNDARY:Theorem8`). In the normal form, if `O` lies in the central
region (11) and in both closed corner caps `conv(B,C,D,E)` and `conv(D,E,F,G)`, the minimum
triangle area is at most `21/400 < A₀`.
`hand/EIGHT_BOUNDARY.md`, lines 474–533.
Uses: EIGHT_BOUNDARY:Theorem4, EIGHT_BOUNDARY:Lemma7. -/
theorem theorem8 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O) (hc : InCentralRegion (octagon a b c d e f g h) O)
    (hBCDE : InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O)
    (hDEFG : InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) :
    minTriangleArea (eightConfig a b c d e f g h O) ≤ 21 / 400 := by
  sorry

/-! ### §7. A double wedge facing the opposite split -/

/-- **Theorem 9** (`EIGHT_BOUNDARY:Theorem9`). In the normal form, if `O` belongs to the closed
triangles `ADE`, `HDE`, `BFG` and `BCG`, the minimum triangle area is strictly less than
`1/20 < A₀`. (The manuscript adds: the same holds under every square symmetry; see the module
docstring. The R8 representative meets these hypotheses only after the rotation `ρ₁`, see
`EIGHT_BOUNDARY:claim-class-hypotheses`.)
`hand/EIGHT_BOUNDARY.md`, lines 537–622.
Uses: EIGHT_BOUNDARY:claim-thresholds. -/
theorem theorem9 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O)
    (hADE : InClosedPolygon ![(0, a), (1, d), (1, e)] O)
    (hHDE : InClosedPolygon ![(0, h), (1, d), (1, e)] O)
    (hBFG : InClosedPolygon ![(b, 0), (f, 1), (g, 1)] O)
    (hBCG : InClosedPolygon ![(b, 0), (c, 0), (g, 1)] O) :
    minTriangleArea (eightConfig a b c d e f g h O) < 1 / 20 := by
  sorry

/-! ### §8. Opposite contact intervals overlap -/

/-- **Lemma 10** (`EIGHT_BOUNDARY:Lemma10`). If two opposite side-contact intervals have disjoint
interiors (`[g,f]` and `[b,c]`, or `[a,h]` and `[d,e]`), the minimum triangle area of the eight
boundary points is at most `(3-2√2)/4 < A₀`. Consequently, at minimum area at least `A₀`,
`b < f`, `g < c`, `a < e` and `d < h`. (Stated for the eight boundary points; the proof uses only
the side budgets.)
`hand/EIGHT_BOUNDARY.md`, lines 626–660.
Uses: EIGHT_BOUNDARY:claim-thresholds. -/
theorem lemma10 {a b c d e f g h : ℝ} (hA : EightAnchors a b c d e f g h) :
    ((f ≤ b ∨ c ≤ g ∨ h ≤ d ∨ e ≤ a) →
        minTriangleArea (octagon a b c d e f g h) ≤ (3 - 2 * Real.sqrt 2) / 4) ∧
      (A₀ ≤ minTriangleArea (octagon a b c d e f g h) → b < f ∧ g < c ∧ a < e ∧ d < h) := by
  sorry

/-! ### §9. A single corner cap beside a double wedge -/

/-- **Theorem 11** (`EIGHT_BOUNDARY:Theorem11`). In the normal form, if `O` lies in the central
region (11), in the closed triangles `ADE` and `HDE`, in the closed corner cap `conv(B,C,D,E)`,
and outside the closed corner cap `conv(D,E,F,G)`, the minimum triangle area is strictly less than
`7/128 < A₀`.
`hand/EIGHT_BOUNDARY.md`, lines 664–829.
Uses: EIGHT_BOUNDARY:Lemma7, EIGHT_BOUNDARY:Lemma10. -/
theorem theorem11 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O) (hc : InCentralRegion (octagon a b c d e f g h) O)
    (hADE : InClosedPolygon ![(0, a), (1, d), (1, e)] O)
    (hHDE : InClosedPolygon ![(0, h), (1, d), (1, e)] O)
    (hBCDE : InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O)
    (hDEFG : ¬ InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) :
    minTriangleArea (eightConfig a b c d e f g h O) < 7 / 128 := by
  sorry

/-! ### §10. The double wedge with no neighbouring corner cap -/

/-- **Theorem 12** (`EIGHT_BOUNDARY:Theorem12`). In the normal form, if `O` lies in the central
region (11), in the closed triangles `ADE`, `HDE`, `BCF` and `CFG`, and outside both closed corner
caps `conv(B,C,D,E)` and `conv(D,E,F,G)`, the minimum triangle area is strictly less than
`7/128 < A₀`.
`hand/EIGHT_BOUNDARY.md`, lines 833–1003.
Uses: EIGHT_BOUNDARY:Lemma7. -/
theorem theorem12 {a b c d e f g h : ℝ} {O : Point} (hA : EightAnchors a b c d e f g h)
    (hO : InOpenSquare O) (hc : InCentralRegion (octagon a b c d e f g h) O)
    (hADE : InClosedPolygon ![(0, a), (1, d), (1, e)] O)
    (hHDE : InClosedPolygon ![(0, h), (1, d), (1, e)] O)
    (hBCF : InClosedPolygon ![(b, 0), (c, 0), (f, 1)] O)
    (hCFG : InClosedPolygon ![(c, 0), (f, 1), (g, 1)] O)
    (hBCDE : ¬ InClosedPolygon ![(b, 0), (c, 0), (1, d), (1, e)] O)
    (hDEFG : ¬ InClosedPolygon ![(1, d), (1, e), (f, 1), (g, 1)] O) :
    minTriangleArea (eightConfig a b c d e f g h O) < 7 / 128 := by
  sorry

end Heilbronn.EightBoundary
