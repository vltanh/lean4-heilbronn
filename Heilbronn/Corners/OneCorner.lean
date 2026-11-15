module

public import Heilbronn.Corners.CornerFamilies

/-! # One occupied corner: a complete three-interior-point exclusion (`hand/ONE_CORNER.md`)

**Role.**

* Primary route: the C1 lower count `n₀ ≥ 3` is closed by the corner-triangle occupancy theorem of
  §§1–4 (`UNRESTRICTED.md` line 99): `cornerTriangleOccupancyTheorem` (general form, also used by
  `THREE_INTERIOR_TRIANGLES.md` and `TYPE_II_BALANCED.md`) and its C1 forms
  `cornerTriangleOccupancy_c1`, `claim_C1_at_most_two_lower`.
* §6 (capacity two in C1, `globalC1OccupancyCorollary`) is cited by the C1 rows and by
  `THREE_INTERIOR_TRIANGLES.md` Corollary 5.
* §7 (Pattern I, `claim_pattern_I`, used by `SIX_BOUNDARY_HULL.md` lines 370–373) and §§7–8
  (the pentagonal `2+2` diagonal-quadrant reductions) are needed on the C1 `n₀ = 2` route.
* §5 is a remark (not a premise) and is not stated.

**Setting.** §§1–4: nine points of the unit square containing `O = (0,0)`, `H = (0,η)`,
`C₀ = (ξ,0)`, `0 < ξ, η ≤ 1`. The affine map `(x, y) ↦ (x/ξ, 1 - y/η)` (`cornerNormalize`) sends
`O, H, C₀` to `B = (0,1)`, `A = (0,0)`, `C = (1,1)` and the square to the rectangle
`[0, L] × [1 - M, 1]`, `L = 1/ξ`, `M = 1/η` (`CornerFamilies.rectangle`); doubled areas are at
least `s = σLM ≥ σ = 7/64` with `L, M ≤ s/σ` (2)–(3), `δ = M - 1`. The upper triple is labelled
as in `CORNER_FAMILIES.md` §11 (`CornerFamilies.MeshLabelled (0,0) (0,1) (1,1) X Y Z`).
§§6–8: the C1 normal form `c1Config h c d f W X Y Z`, `O = (0,0)`, `C = (c,0)`, `D = (1,d)`,
`F = (f,1)`, `H = (0,h)`, `0 < d ≤ h < 1`, `0 < f ≤ c < 1` (`C1Anchors`).

**Results.**

* §§1–4: `cornerTriangleOccupancyTheorem` (1), `cornerTriangleOccupancy_c1`,
  `claim_normalization_map` (2)–(3), `claim_normalization` (1a), `claim_mesh_all_s` (1b, (4)),
  `claim_uniform_signs_rectangle` (1c, (5)–(6)), `claim_one_per_side` (1d, (7)–(10)),
  `claim_C1_at_most_two_lower`;
* §6: `claim_anchor_bounds`, `claim_cap_ear_bounds`, `globalC1OccupancyCorollary`;
* §7: `eq12`, `claim_pattern_I`, `claim_pattern_II`, `claim_pentagon_opposite_quadrants`;
* §8: `claim_pentagon_HDF_CDF`.

**Implicit in the manuscript.**

* Gap 1 (inventory 02): the labelling `Z ∈ ABY`, `X ∈ BCY` in fixed coordinates (lines 71–78) needs
  `CornerFamilies.claim_mesh_labelling`.
* Gap 2: §2 asserts that `CORNER_FAMILIES.md` §10 holds for every `s ≥ σ`; the Lean statements of
  §§10–12 there carry the parameters `s, L, M`, and §§2–4 here are their instances.
* §§7–8 assume the hull is exactly the anchor pentagon with two free points on each side of `HC`;
  the proofs use only that two free points are inside `OHC` and the stated placement of the
  other two, which is what the statements assume.
* §7 uses the internal inequalities (5) of `QUADRILATERAL_HULL.md` Theorem 1 (Patterns I/II at
  normalized threshold `σ/W`), not its stated conclusion (inventory 02, gap 4).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.OneCorner

open Heilbronn.CornerFamilies (InsideTriangle InClosedTriangle InQuad Distributed MeshLabelled
  rectangle)

/-- The normalization `(x, y) ↦ (x/ξ, 1 - y/η)` of `ONE_CORNER.md` §1 (line 42). -/
def cornerNormalize (ξ η : ℝ) (p : Point) : Point := (p.1 / ξ, 1 - p.2 / η)

/-- `W = 1 - (h - d)(c - f)`, the doubled area of the quadrilateral `HCDF` (§7). -/
def quadWOf (h c d f : ℝ) : ℝ := 1 - (h - d) * (c - f)

/-- `x = (c - hm)/W`, `m = c - f`: the intersection parameter along `HD` (§7, line 449). -/
def diagX (h c d f : ℝ) : ℝ := (c - h * (c - f)) / quadWOf h c d f

/-- `y = (h - cℓ)/W`, `ℓ = h - d`: the intersection parameter along `CF` (§7, line 449). -/
def diagY (h c d f : ℝ) : ℝ := (h - c * (h - d)) / quadWOf h c d f

/-! ### §§1–4. The corner-triangle occupancy theorem -/

/-- **Corner-triangle occupancy theorem** (`ONE_CORNER:CornerTriangleOccupancyTheorem`),
equation (1): nine points of the unit square that include `O = (0,0)`, `H = (0,η)`,
`C₀ = (ξ,0)` (`0 < ξ, η ≤ 1`), with at least three of them strictly inside `OHC₀`, have minimum
triangle area `t ≤ 7/128` (`< A₀`). `hand/ONE_CORNER.md`, lines 5–24 (proof 30–295).

Uses: ONE_CORNER:claim-normalization, ONE_CORNER:claim-mesh-all-s,
ONE_CORNER:claim-uniform-signs-rectangle, ONE_CORNER:claim-one-per-side -/
theorem cornerTriangleOccupancyTheorem (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (ξ η : ℝ) (hξ : 0 < ξ) (hξ1 : ξ ≤ 1) (hη : 0 < η) (hη1 : η ≤ 1)
    (hO : ∃ i, P i = (0, 0)) (hH : ∃ i, P i = (0, η)) (hC : ∃ i, P i = (ξ, 0))
    (h3 : 3 ≤ {m : Fin 9 | InsideTriangle (P m) (0, 0) (0, η) (ξ, 0)}.ncard) :
    minTriangleArea P ≤ 7 / 128 := by
  sorry

/-- **Corner-triangle occupancy theorem** (`ONE_CORNER:CornerTriangleOccupancyTheorem`), C1 form
(the row `n₀ ≥ 3` of `UNRESTRICTED.md`): a C1 configuration with at least three of its four free
points strictly inside `OHC` has minimum area at most `7/128`. `hand/ONE_CORNER.md`,
lines 12–24.

Uses: ONE_CORNER:CornerTriangleOccupancyTheorem -/
theorem cornerTriangleOccupancy_c1 (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h3 : 3 ≤ {i : Fin 4 | InsideTriangle (![W, X, Y, Z] i) (0, 0) (0, h) (c, 0)}.ncard) :
    minTriangleArea (c1Config h c d f W X Y Z) ≤ 7 / 128 := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-normalization`), (2)–(3): the map `(x, y) ↦ (x/ξ, 1 - y/η)`
sends `O, H, C₀` to `B = (0,1)`, `A = (0,0)`, `C = (1,1)`, the square into the rectangle
`[0, L] × [1 - M, 1]` (`L = 1/ξ ≥ 1`, `M = 1/η ≥ 1`), and multiplies signed doubled areas by
`-LM`; so doubled areas `≥ σ` become `≥ s = σLM`, with `σ ≤ s`, `L, M ≤ s/σ`.
`hand/ONE_CORNER.md`, lines 39–63. -/
theorem claim_normalization_map (ξ η : ℝ) (hξ : 0 < ξ) (hξ1 : ξ ≤ 1) (hη : 0 < η)
    (hη1 : η ≤ 1) :
    cornerNormalize ξ η (0, 0) = (0, 1) ∧ cornerNormalize ξ η (0, η) = (0, 0) ∧
      cornerNormalize ξ η (ξ, 0) = (1, 1) ∧
      (∀ p ∈ unitSquare, cornerNormalize ξ η p ∈ rectangle (1 / ξ) (1 / η)) ∧
      (∀ p q r : Point, sarea (cornerNormalize ξ η p) (cornerNormalize ξ η q)
        (cornerNormalize ξ η r) = -(1 / ξ * (1 / η)) * sarea p q r) ∧
      1 ≤ 1 / ξ ∧ 1 ≤ 1 / η ∧ 1 / ξ ≤ 1 / ξ * (1 / η) ∧ 1 / η ≤ 1 / ξ * (1 / η) := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-normalization`) (1a): under the hypotheses of the theorem and
`t > 7/128`, exactly three points lie strictly inside `OHC₀` (four would contradict the
triangular-hull lemma), and every three points strictly inside `OHC₀` are distributed (otherwise
the two-interior-point lemma gives a doubled area `≤ ξη/(6 + 2√3) < σ`).
`hand/ONE_CORNER.md`, lines 30–87.

Uses: CORNER_FAMILIES:TriangularHullLemma, CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_normalization (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (ξ η : ℝ) (hξ : 0 < ξ) (hξ1 : ξ ≤ 1) (hη : 0 < η) (hη1 : η ≤ 1)
    (hO : ∃ i, P i = (0, 0)) (hH : ∃ i, P i = (0, η)) (hC : ∃ i, P i = (ξ, 0))
    (h3 : 3 ≤ {m : Fin 9 | InsideTriangle (P m) (0, 0) (0, η) (ξ, 0)}.ncard)
    (hmin : 7 / 128 < minTriangleArea P) :
    {m : Fin 9 | InsideTriangle (P m) (0, 0) (0, η) (ξ, 0)}.ncard = 3 ∧
      ∀ i j k : Fin 9, i ≠ j → j ≠ k → i ≠ k →
        InsideTriangle (P i) (0, 0) (0, η) (ξ, 0) → InsideTriangle (P j) (0, 0) (0, η) (ξ, 0) →
        InsideTriangle (P k) (0, 0) (0, η) (ξ, 0) →
        Distributed (0, 0) (0, η) (ξ, 0) (P i) (P j) (P k) := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-mesh-all-s`) (1b), equation (4): the quantitative mesh lemma and
(33) of `CORNER_FAMILIES.md` hold for every `s ≥ σ = 7/64`: in the physical frame, with
`Y = (u,v)`, `Z = (p,q)`, `X = (c, 1 - a)`: `K ≤ (109/98)s`, each connector `> 6s/5`,
`p, a, f ≤ E = 55/384`, and `u, h, c, z, 1 - c - a, 1 - p - z ≥ 3s`.
`hand/ONE_CORNER.md`, lines 89–109.

Uses: CORNER_FAMILIES:QuantitativeMeshLemma, CORNER_FAMILIES:UniformSigns (33) -/
theorem claim_mesh_all_s (X Y Z : Point) (s : ℝ) (hs : 7 / 64 ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z]) :
    |sarea X Y Z| ≤ 109 / 98 * s ∧ 6 / 5 * s < |sarea (0, 0) Z Y| ∧
      6 / 5 * s < |sarea (0, 1) X Z| ∧ 6 / 5 * s < |sarea (1, 1) Y X| ∧
      Z.1 ≤ 55 / 384 ∧ 1 - X.2 ≤ 55 / 384 ∧ Y.2 - Y.1 ≤ 55 / 384 ∧
      3 * s ≤ Y.1 ∧ 3 * s ≤ 1 - Y.2 ∧ 3 * s ≤ X.1 ∧ 3 * s ≤ 1 - Z.2 ∧
      3 * s ≤ 1 - X.1 - (1 - X.2) ∧ 3 * s ≤ 1 - Z.1 - (1 - Z.2) := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-uniform-signs-rectangle`) (1c), equations (5)–(6): with
`s = σLM`, `L, M ≥ 1`, a lower point `R` of the rectangle `[0, L] × [1 - M, 1]` with all doubled
areas at least `s` satisfies `D(B,Z,R) ≥ s`, `D(B,X,R) ≤ -s`, `D(X,Y,R) ≥ s`.
`hand/ONE_CORNER.md`, lines 111–181.

Uses: CORNER_FAMILIES:UniformSigns -/
theorem claim_uniform_signs_rectangle (X Y Z R : Point) (L M : ℝ) (hL : 1 ≤ L) (hM : 1 ≤ M)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (hR : R ∈ rectangle L M) (hRl : R.2 < R.1)
    (hmin : 7 / 64 * L * M / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R]) :
    7 / 64 * L * M ≤ sarea (0, 1) Z R ∧ sarea (0, 1) X R ≤ -(7 / 64 * L * M) ∧
      7 / 64 * L * M ≤ sarea X Y R := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-one-per-side`) (1d), (7)–(10): with `s = σLM`, two lower points
of the rectangle, all doubled areas of the eight points at least `s`, are not both on the side
`D(B,Y,R) ≤ -s` (feasible triangle with displaced base `y ≥ -δ`), nor, by the reflection across
`x + y = 1` (exchanging `L, M` and `X, Z`), both on the side `D(B,Y,R) ≥ s`.
`hand/ONE_CORNER.md`, lines 183–295.

Uses: CORNER_FAMILIES:claim-A-side-capacity-one ((37)–(45)), ONE_CORNER:claim-uniform-signs-rectangle -/
theorem claim_one_per_side (X Y Z R₁ R₂ : Point) (L M : ℝ) (hL : 1 ≤ L) (hM : 1 ≤ M)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (hR₁ : R₁ ∈ rectangle L M)
    (hR₂ : R₂ ∈ rectangle L M) (hl₁ : R₁.2 < R₁.1) (hl₂ : R₂.2 < R₂.1)
    (hmin : 7 / 64 * L * M / 2 ≤
      minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R₁, R₂]) :
    ¬ (sarea (0, 1) Y R₁ ≤ -(7 / 64 * L * M) ∧ sarea (0, 1) Y R₂ ≤ -(7 / 64 * L * M)) ∧
      ¬ (7 / 64 * L * M ≤ sarea (0, 1) Y R₁ ∧ 7 / 64 * L * M ≤ sarea (0, 1) Y R₂) := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-C1-at-most-two-lower`): a C1 configuration of minimum area at
least `A₀` has at most two of its four free points strictly inside `OHC`.
`hand/ONE_CORNER.md`, lines 297–309.

Uses: ONE_CORNER:CornerTriangleOccupancyTheorem -/
theorem claim_C1_at_most_two_lower (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    {i : Fin 4 | InsideTriangle (![W, X, Y, Z] i) (0, 0) (0, h) (c, 0)}.ncard ≤ 2 := by
  sorry

/-! ### §6. Every competitive C1 triangle has capacity two -/

/-- **Claim** (`ONE_CORNER:GlobalC1OccupancyCorollary`), the anchor bounds (lines 333–352): in a C1
configuration with all doubled areas at least `s > 0`, `hf ≥ s`, `cd ≥ s`, `h, c, d, f ≥ s`
and, from `2[HDF] = 1 - h + f(h - d) ≤ 1 - d` and `2[CDF] = 1 - c + d(c - f) ≤ 1 - f`,
`d, f ≤ 1 - s`. -/
theorem claim_anchor_bounds (h c d f s : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hs : 0 < s) (hmin : s / 2 ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    s ≤ h * f ∧ s ≤ c * d ∧ s ≤ h ∧ s ≤ c ∧ s ≤ d ∧ s ≤ f ∧ d ≤ 1 - s ∧ f ≤ 1 - s := by
  sorry

/-- **Claim** (`ONE_CORNER:GlobalC1OccupancyCorollary`), the table of lines 398–408: for an
additional hull vertex `P` in one of the corner caps `T_L = conv{H, F, (0,1)}`,
`T_R = conv{C, D, (1,0)}`, `T_T = conv{D, F, (1,1)}`, the three new ears have doubled areas
bounded by their values at the cap vertices: in `T_L`, `DFP ≤ 1 - d`, `FPH ≤ 1 - h`,
`PHO ≤ f`; in `T_R`, `OCP ≤ d`, `CPD ≤ 1 - c`, `PDF ≤ 1 - f`; in `T_T`,
`CDP ≤ max(1 - f, 1 - c)`, `DPF ≤ 1 - d`, `PFH ≤ max(1 - d, 1 - h)`. -/
theorem claim_cap_ear_bounds (h c d f : ℝ) (hanch : C1Anchors h c d f) (P : Point) :
    (InClosedTriangle P (0, h) (f, 1) (0, 1) →
      |sarea (1, d) (f, 1) P| ≤ 1 - d ∧ |sarea (f, 1) P (0, h)| ≤ 1 - h ∧
        |sarea P (0, h) (0, 0)| ≤ f) ∧
    (InClosedTriangle P (c, 0) (1, d) (1, 0) →
      |sarea (0, 0) (c, 0) P| ≤ d ∧ |sarea (c, 0) P (1, d)| ≤ 1 - c ∧
        |sarea P (1, d) (f, 1)| ≤ 1 - f) ∧
    (InClosedTriangle P (1, d) (f, 1) (1, 1) →
      |sarea (c, 0) (1, d) P| ≤ max (1 - f) (1 - c) ∧ |sarea (1, d) P (f, 1)| ≤ 1 - d ∧
        |sarea P (f, 1) (0, h)| ≤ max (1 - d) (1 - h)) := by
  sorry

/-- **Global C1 occupancy corollary** (`ONE_CORNER:GlobalC1OccupancyCorollary`): in a C1
configuration (free points anywhere in the square) of minimum area at least `A₀`, every
triangle spanned by three of the nine points contains at most two of the points in its
interior. `hand/ONE_CORNER.md`, lines 317–427.

Uses: THREE_INTERIOR_TRIANGLES:Theorem1, ONE_CORNER:CornerTriangleOccupancyTheorem,
CORNER_FAMILIES:SixPointTriangularHullTheorem -/
theorem globalC1OccupancyCorollary (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) (i j k : Fin 9) :
    {m : Fin 9 | InsideTriangle (c1Config h c d f W X Y Z m) (c1Config h c d f W X Y Z i)
      (c1Config h c d f W X Y Z j) (c1Config h c d f W X Y Z k)}.ncard ≤ 2 := by
  sorry

/-! ### §7. Opposite diagonal quadrants in the pentagonal `2+2` case -/

/-- **Claim** (`ONE_CORNER:claim-pentagon-opposite-quadrants`), equation (12): with
`ℓ = h - d`, `m = c - f`, `W = 1 - ℓm ≠ 0`, `h = y + ℓx` and `c = x + my`.
`hand/ONE_CORNER.md`, lines 445–457. -/
theorem eq12 (h c d f : ℝ) (hW : quadWOf h c d f ≠ 0) :
    h = diagY h c d f + (h - d) * diagX h c d f ∧ c = diagX h c d f + (c - f) * diagY h c d f := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-pentagon-opposite-quadrants`), Pattern I forces `hc ≤ 625/896`
(lines 478–544), as a general algebraic statement (also used by `SIX_BOUNDARY_HULL.md`
lines 370–378): if `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`, the intersection parameters `x, y` are in
`(0, 1)`, and Pattern I of (13) holds at `σ = 7/64`,
`Wx(1 - y) ≥ σ(2 + x - y)`, `Wy(1 - x) ≥ σ(2 + y - x)`, then `hc ≤ (1 - 2σ)²/(8σ) = 625/896`. -/
theorem claim_pattern_I (h c d f : ℝ) (hd : 0 < d) (hdh : d ≤ h) (hh1 : h ≤ 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c ≤ 1) (hx : 0 < diagX h c d f) (hx1 : diagX h c d f < 1)
    (hy : 0 < diagY h c d f) (hy1 : diagY h c d f < 1)
    (hI₁ : 7 / 64 * (2 + diagX h c d f - diagY h c d f) ≤
      quadWOf h c d f * diagX h c d f * (1 - diagY h c d f))
    (hI₂ : 7 / 64 * (2 + diagY h c d f - diagX h c d f) ≤
      quadWOf h c d f * diagY h c d f * (1 - diagX h c d f)) :
    h * c ≤ 625 / 896 := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-pentagon-opposite-quadrants`), Pattern II is impossible
(lines 546–663): under the same parameter ranges, `hc > 13/16` (11) and the second inequality of
Pattern II, `W(1 - x)(1 - y) ≥ σ(3 - x - y)` at `σ = 7/64`, are incompatible (the relaxed ratio
`AB/(W + A + B)` of (17) is below `1/10 < σ`). -/
theorem claim_pattern_II (h c d f : ℝ) (hd : 0 < d) (hdh : d ≤ h) (hh1 : h ≤ 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c ≤ 1) (hx : 0 < diagX h c d f) (hx1 : diagX h c d f < 1)
    (hy : 0 < diagY h c d f) (hy1 : diagY h c d f < 1) (hhc : 13 / 16 < h * c)
    (hII : 7 / 64 * (3 - diagX h c d f - diagY h c d f) ≤
      quadWOf h c d f * (1 - diagX h c d f) * (1 - diagY h c d f)) : False := by
  sorry

/-- **Claim** (`ONE_CORNER:claim-pentagon-opposite-quadrants`): in a C1 configuration of minimum
area at least `A₀` with two free points `W, X` strictly inside `OHC` and two free points `Y, Z`
strictly inside the quadrilateral `HCDF`, the two diagonals `HD` and `CF` cannot both separate
`Y` and `Z`: (11) gives `hc ≥ (4 + 2√3)(2t) > 13/16`, and the two opposite-quadrant patterns
(13) are excluded. `hand/ONE_CORNER.md`, lines 429–668.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, QUADRILATERAL_HULL:Theorem1 (its inequalities (5)) -/
theorem claim_pentagon_opposite_quadrants (h c d f : ℝ) (hanch : C1Anchors h c d f)
    (W X Y Z : Point) (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (hW : InsideTriangle W (0, 0) (0, h) (c, 0)) (hX : InsideTriangle X (0, 0) (0, h) (c, 0))
    (hY : InQuad Y (0, h) (c, 0) (1, d) (f, 1)) (hZ : InQuad Z (0, h) (c, 0) (1, d) (f, 1))
    (hHD : sarea (0, h) (1, d) Y * sarea (0, h) (1, d) Z < 0)
    (hCF : sarea (c, 0) (f, 1) Y * sarea (c, 0) (f, 1) Z < 0) : False := by
  sorry

/-! ### §8. Both upper points in `HDF` or both in `CDF` -/

/-- **Claim** (`ONE_CORNER:claim-pentagon-HDF-CDF`): in a C1 configuration of minimum area at
least `A₀` with two free points `W, X` strictly inside `OHC`, the other two free points `Y, Z`
are not both strictly inside `HDF`, nor both strictly inside `CDF` (area-only argument with
`R = 13/16`, (18)–(21); `CDF` by the reflection across `x = y`). `hand/ONE_CORNER.md`,
lines 670–765.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_pentagon_HDF_CDF (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (hW : InsideTriangle W (0, 0) (0, h) (c, 0)) (hX : InsideTriangle X (0, 0) (0, h) (c, 0)) :
    ¬ (InsideTriangle Y (0, h) (1, d) (f, 1) ∧ InsideTriangle Z (0, h) (1, d) (f, 1)) ∧
      ¬ (InsideTriangle Y (c, 0) (1, d) (f, 1) ∧ InsideTriangle Z (c, 0) (1, d) (f, 1)) := by
  sorry

end Heilbronn.OneCorner
