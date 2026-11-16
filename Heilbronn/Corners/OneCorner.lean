module

public import Heilbronn.Corners.CornerFamilies
public import Heilbronn.Hulls.ThreeInteriorTriangles

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
* §6: `claim_anchor_bounds`, `claim_cap_ear_bounds`, `c1_capacity_two` (the corollary in the
  `ThreeInteriorTriangles.TriangleCapacityTwo` form), `globalC1OccupancyCorollary`;
* §7: `eq12`, `claim_pattern_I`, `claim_pattern_II`, `claim_pentagon_opposite_quadrants`;
* §8: `claim_pentagon_HDF_CDF`.

**Proof notes (routes chosen for the formalization).**

* §6: instead of counting hull vertices, the proof uses the two hull edges `C' → A' → B'` given by
  `ThreeInteriorTriangles.theorem1` and classifies hull edges of a C1 configuration
  (`c1_edge_aa`: anchor to anchor, consecutive in `O → C → D → F → H`; `c1_edge_af`,
  `c1_edge_fa`: anchor to free point, the free point beyond the pentagon edge `CD`, `DF` or `FH`,
  i.e. in a corner cap, `capR_closed`, `capT_closed`, `capL_closed`; `caps_disjoint`). The ear
  `C'A'B'` is then one of the five anchor ears or one of the nine cap ears of the table
  (`c1_ear_false`); the corner ear `HOC` goes to `cornerTriangleOccupancyTheorem`.
* §7, Pattern I: the convexity of `hc` in `ℓ` is replaced by the identities
  `(1 - y)hc - x(1 - Wy) = -(1 - h)(x(1 - y) - yb)` and its mirror image (`patternI_combine`),
  which bound `hc` by an endpoint value directly; the endpoint bounds are `patternI_endpoint`.
* §7, Pattern II: the monotone relaxation of (16) is `ratio_mono`, (17) is `relaxed17`
  (the manuscript's two cases `δ ≤ 1/5`, `δ ≥ 1/5`).
* §7: inequality (5) of `QUADRILATERAL_HULL.md` is `QuadrilateralHull.sector_bound`, applied to
  the four rotations of `HCDF` (`pentagon_patI`, `pentagon_patII`).
* §8: the reflection across `x = y` is the substitution `(h, c, d, f) ↦ (c, h, f, d)` in the
  area-only core `hdf_core`.

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
open Heilbronn.CornerFamilies

/-- The normalization `(x, y) ↦ (x/ξ, 1 - y/η)` of `ONE_CORNER.md` §1 (line 42). -/
def cornerNormalize (ξ η : ℝ) (p : Point) : Point := (p.1 / ξ, 1 - p.2 / η)

/-- `W = 1 - (h - d)(c - f)`, the doubled area of the quadrilateral `HCDF` (§7). -/
def quadWOf (h c d f : ℝ) : ℝ := 1 - (h - d) * (c - f)

/-- `x = (c - hm)/W`, `m = c - f`: the intersection parameter along `HD` (§7, line 449). -/
def diagX (h c d f : ℝ) : ℝ := (c - h * (c - f)) / quadWOf h c d f

/-- `y = (h - cℓ)/W`, `ℓ = h - d`: the intersection parameter along `CF` (§7, line 449). -/
def diagY (h c d f : ℝ) : ℝ := (h - c * (h - d)) / quadWOf h c d f

/-! ### Tools -/

theorem cornerNormalize_eq (ξ η : ℝ) :
    cornerNormalize ξ η = affineMap (1 / ξ) 0 0 (-(1 / η)) 0 1 := by
  funext p; simp only [cornerNormalize, affineMap]; ext <;> simp <;> ring

/-- An affine map of negative determinant sends a point inside a triangle to a point inside the
image triangle (orientation reversed). -/
theorem inside_affine_neg {a b c d e f : ℝ} (hdet : a * d - b * c < 0) {X A B C : Point}
    (h : InsideTriangle X A B C) :
    InsideTriangle (affineMap a b c d e f X) (affineMap a b c d e f A) (affineMap a b c d e f B)
      (affineMap a b c d e f C) := by
  simp only [InsideTriangle, InTriangle, sarea_affineMap]
  rcases h with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
  · right
    refine ⟨?_, ?_, ?_⟩
    · nlinarith [sarea_swap₁₂ C A X, mul_neg_of_neg_of_pos hdet h3]
    · nlinarith [sarea_swap₁₂ B C X, mul_neg_of_neg_of_pos hdet h2]
    · nlinarith [sarea_swap₁₂ A B X, mul_neg_of_neg_of_pos hdet h1]
  · left
    refine ⟨?_, ?_, ?_⟩
    · nlinarith [sarea_swap₁₂ B A X, mul_neg_of_neg_of_pos hdet h3]
    · nlinarith [sarea_swap₁₂ C B X, mul_neg_of_neg_of_pos hdet h2]
    · nlinarith [sarea_swap₁₂ A C X, mul_neg_of_neg_of_pos hdet h1]

/-- Conversely, a point whose image is inside the image triangle is inside the triangle. -/
theorem inside_of_affine_neg {a b c d e f : ℝ} (hdet : a * d - b * c < 0) {X A B C : Point}
    (h : InsideTriangle (affineMap a b c d e f X) (affineMap a b c d e f A)
      (affineMap a b c d e f B) (affineMap a b c d e f C)) : InsideTriangle X A B C := by
  simp only [InsideTriangle, InTriangle, sarea_affineMap] at h
  have k : ∀ x : ℝ, 0 < (a * d - b * c) * x → x < 0 := fun x hx => by
    by_contra hc; push Not at hc; nlinarith [mul_nonpos_of_nonpos_of_nonneg hdet.le hc]
  rcases h with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
  · right
    exact ⟨by linarith [k _ h3, sarea_swap₁₂ C A X], by linarith [k _ h2, sarea_swap₁₂ B C X],
      by linarith [k _ h1, sarea_swap₁₂ A B X]⟩
  · left
    exact ⟨by linarith [k _ h3, sarea_swap₁₂ B A X], by linarith [k _ h2, sarea_swap₁₂ C B X],
      by linarith [k _ h1, sarea_swap₁₂ A C X]⟩

theorem area_OHC (ξ η : ℝ) (hξ : 0 < ξ) (hη : 0 < η) :
    triangleArea (0, 0) (0, η) (ξ, 0) = ξ * η / 2 := by
  rw [triangleArea_eq]; simp only [sarea]
  rw [show (0 - 0) * (0 - 0) - (η - 0) * (ξ - 0) = -(ξ * η) by ring, abs_neg,
    abs_of_pos (mul_pos hξ hη)]

/-! ### §§1–4. The corner-triangle occupancy theorem -/

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
  have hL : 1 ≤ 1 / ξ := by rw [le_div_iff₀ hξ]; linarith
  have hM : 1 ≤ 1 / η := by rw [le_div_iff₀ hη]; linarith
  refine ⟨by simp [cornerNormalize], by simp [cornerNormalize, hη.ne'],
    by simp [cornerNormalize, hξ.ne'], ?_, ?_, hL, hM, by nlinarith, by nlinarith⟩
  · rintro ⟨x, y⟩ ⟨h1, h2, h3, h4⟩
    simp only [cornerNormalize, rectangle, Set.mem_ofPred_eq]
    refine ⟨div_nonneg h1 hξ.le, div_le_div_of_nonneg_right h2 hξ.le, ?_, ?_⟩
    · have : y / η ≤ 1 / η := div_le_div_of_nonneg_right h4 hη.le
      linarith
    · have : 0 ≤ y / η := div_nonneg h3 hη.le
      linarith
  · intro p q r
    rw [cornerNormalize_eq, sarea_affineMap]; ring

/-- **Claim** (`ONE_CORNER:claim-normalization`) (1a): under the hypotheses of the theorem and
`t > 7/128`, exactly three points lie strictly inside `OHC₀` (four would contradict the
triangular-hull lemma), and every three points strictly inside `OHC₀` are distributed (otherwise
the two-interior-point lemma gives a doubled area `≤ ξη/(6 + 2√3) < σ`).
`hand/ONE_CORNER.md`, lines 30–87.

Uses: CORNER_FAMILIES:TriangularHullLemma, CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_normalization (P : Fin 9 → Point) (_hP : ∀ i, P i ∈ unitSquare)
    (ξ η : ℝ) (hξ : 0 < ξ) (hξ1 : ξ ≤ 1) (hη : 0 < η) (hη1 : η ≤ 1)
    (hO : ∃ i, P i = (0, 0)) (hH : ∃ i, P i = (0, η)) (hC : ∃ i, P i = (ξ, 0))
    (h3 : 3 ≤ {m : Fin 9 | InsideTriangle (P m) (0, 0) (0, η) (ξ, 0)}.ncard)
    (hmin : 7 / 128 < minTriangleArea P) :
    {m : Fin 9 | InsideTriangle (P m) (0, 0) (0, η) (ξ, 0)}.ncard = 3 ∧
      ∀ i j k : Fin 9, i ≠ j → j ≠ k → i ≠ k →
        InsideTriangle (P i) (0, 0) (0, η) (ξ, 0) → InsideTriangle (P j) (0, 0) (0, η) (ξ, 0) →
        InsideTriangle (P k) (0, 0) (0, η) (ξ, 0) →
        Distributed (0, 0) (0, η) (ξ, 0) (P i) (P j) (P k) := by
  obtain ⟨o, ho⟩ := hO
  obtain ⟨hh, hhh⟩ := hH
  obtain ⟨cc, hcc⟩ := hC
  have hOH : o ≠ hh := by intro e; rw [e, hhh] at ho; simp [Prod.ext_iff] at ho; linarith
  have hOC : o ≠ cc := by intro e; rw [e, hcc] at ho; simp [Prod.ext_iff] at ho; linarith
  have hHC : hh ≠ cc := by intro e; rw [e, hcc] at hhh; simp [Prod.ext_iff] at hhh; linarith
  have harea := area_OHC ξ η hξ hη
  have hξη : ξ * η ≤ 1 := by nlinarith
  have hpos : 0 < minTriangleArea P := lt_trans (by norm_num) hmin
  have v : ∀ m, InsideTriangle (P m) (0, 0) (0, η) (ξ, 0) → m ≠ o ∧ m ≠ hh ∧ m ≠ cc := by
    intro m hm
    obtain ⟨n1, n2, n3⟩ := inside_ne hm
    exact ⟨fun e => n1 (by rw [e, ho]), fun e => n2 (by rw [e, hhh]), fun e => n3 (by rw [e, hcc])⟩
  constructor
  · apply le_antisymm _ h3
    by_contra h4
    push Not at h4
    obtain ⟨a, b, c, d, ha, hb, hc, hd, hab, hac, had, hbc, hbd, hcd⟩ :=
      (Set.three_lt_ncard_iff (Set.toFinite _)).1 h4
    simp only [Set.mem_ofPred_eq] at ha hb hc hd
    obtain ⟨ao, ah, ac⟩ := v a ha
    obtain ⟨bo, bh, bc⟩ := v b hb
    obtain ⟨co, ch, cc'⟩ := v c hc
    obtain ⟨do', dh, dc⟩ := v d hd
    have hX' : ∀ x, InsideTriangle (![P a, P b, P c, P d] x) (0, 0) (0, η) (ξ, 0) := by
      intro x; fin_cases x
      · exact ha
      · exact hb
      · exact hc
      · exact hd
    have h7 := CornerFamilies.triangularHullLemma (0, 0) (0, η) (ξ, 0) _ hX' (minTriangleArea P)
      (min_sub (le_refl _) _ ![o, hh, cc, a, b, c, d] (by norm_num) (by inj_tac)
        (by intro x; fin_cases x
            · simp [sevenConfig, ho]
            · simp [sevenConfig, hhh]
            · simp [sevenConfig, hcc]
            all_goals simp [sevenConfig]))
    rw [harea] at h7
    nlinarith [CornerFamilies.sqrt2_gt]
  · intro i j k hij hjk hik hi hj hk
    obtain ⟨io, ih, ic⟩ := v i hi
    obtain ⟨jo, jh, jc⟩ := v j hj
    obtain ⟨ko, kh, kc⟩ := v k hk
    by_contra hnd
    have := claim_nondistributed_bound (0, 0) (0, η) (ξ, 0) (P i) (P j) (P k) hi hj hk
      (minTriangleArea P) hpos
      (min_sub (le_refl _) _ ![o, hh, cc, i, j, k] (by norm_num) (by inj_tac)
        (by intro x; fin_cases x
            · simp [ho]
            · simp [hhh]
            · simp [hcc]
            all_goals simp)) hnd
    rw [harea] at this
    nlinarith [CornerFamilies.sqrt3_gt]

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
  obtain ⟨k1, k2, k3, k4, -, -, -, -⟩ := quantitativeMeshLemma (0, 0) (0, 1) (1, 1) X Y Z s hs
    (by simp only [sarea]; norm_num) hm hmin
  obtain ⟨e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12, e13, e14⟩ := eq33 X Y Z s hs hm hmin
  rw [sarea_cycle Z X Y]
  refine ⟨k1, k2, k3, k4, e2, e4, e6, e7, e8, e9, e10, e11, e12⟩

/-- **Claim** (`ONE_CORNER:claim-uniform-signs-rectangle`) (1c), equations (5)–(6): with
`s = σLM`, `L, M ≥ 1`, a lower point `R` of the rectangle `[0, L] × [1 - M, 1]` with all doubled
areas at least `s` satisfies `D(B,Z,R) ≥ s`, `D(B,X,R) ≤ -s`, `D(X,Y,R) ≥ s`.
`hand/ONE_CORNER.md`, lines 111–181.

Uses: CORNER_FAMILIES:UniformSigns -/
theorem claim_uniform_signs_rectangle (X Y Z R : Point) (L M : ℝ) (hL : 1 ≤ L) (hM : 1 ≤ M)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (hR : R ∈ rectangle L M) (hRl : R.2 < R.1)
    (hmin : 7 / 64 * L * M / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R]) :
    7 / 64 * L * M ≤ sarea (0, 1) Z R ∧ sarea (0, 1) X R ≤ -(7 / 64 * L * M) ∧
      7 / 64 * L * M ≤ sarea X Y R :=
  uniformSigns X Y Z R (7 / 64 * L * M) L M hL hM (by nlinarith) (by nlinarith) hm hR hRl hmin

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
      ¬ (7 / 64 * L * M ≤ sarea (0, 1) Y R₁ ∧ 7 / 64 * L * M ≤ sarea (0, 1) Y R₂) :=
  ⟨claim_A_side_capacity_one X Y Z R₁ R₂ _ L M hL hM (by nlinarith) (by nlinarith) hm hR₁ hR₂
      hl₁ hl₂ hmin,
    C_side_general X Y Z R₁ R₂ _ L M hL hM (by nlinarith) (by nlinarith) hm hR₁ hR₂ hl₁ hl₂ hmin⟩

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
  by_contra hcon
  push Not at hcon
  obtain ⟨hcount, -⟩ := claim_normalization P hP ξ η hξ hξ1 hη hη1 hO hH hC h3 hcon
  obtain ⟨o, ho⟩ := hO
  obtain ⟨hh, hhh⟩ := hH
  obtain ⟨cc, hcc⟩ := hC
  have hOH : o ≠ hh := by intro e; rw [e, hhh] at ho; simp [Prod.ext_iff] at ho; linarith
  have hOC : o ≠ cc := by intro e; rw [e, hcc] at ho; simp [Prod.ext_iff] at ho; linarith
  have hHC : hh ≠ cc := by intro e; rw [e, hcc] at hhh; simp [Prod.ext_iff] at hhh; linarith
  have v : ∀ m, InsideTriangle (P m) (0, 0) (0, η) (ξ, 0) → m ≠ o ∧ m ≠ hh ∧ m ≠ cc := by
    intro m hm
    obtain ⟨n1, n2, n3⟩ := inside_ne hm
    exact ⟨fun e => n1 (by rw [e, ho]), fun e => n2 (by rw [e, hhh]), fun e => n3 (by rw [e, hcc])⟩
  obtain ⟨m₁, m₂, m₃, h12, h13, h23, hS⟩ := Set.ncard_eq_three.1 hcount
  have memS : ∀ m, InsideTriangle (P m) (0, 0) (0, η) (ξ, 0) ↔ m = m₁ ∨ m = m₂ ∨ m = m₃ := by
    intro m; have := congrArg (m ∈ ·) hS; simpa using this
  have hi₁ := (memS m₁).2 (Or.inl rfl)
  have hi₂ := (memS m₂).2 (Or.inr (Or.inl rfl))
  have hi₃ := (memS m₃).2 (Or.inr (Or.inr rfl))
  obtain ⟨a1, a2, a3⟩ := v m₁ hi₁
  obtain ⟨b1, b2, b3⟩ := v m₂ hi₂
  obtain ⟨c1, c2, c3⟩ := v m₃ hi₃
  -- the three remaining points
  have hT : 2 < ((((((Finset.univ : Finset (Fin 9)).erase o).erase hh).erase cc).erase m₁).erase
      m₂ |>.erase m₃).card := by
    rw [Finset.card_erase_of_mem (by simp [*, Ne.symm h13, Ne.symm h23]),
      Finset.card_erase_of_mem (by simp [*, Ne.symm h12]),
      Finset.card_erase_of_mem (by simp [*]),
      Finset.card_erase_of_mem (by simp [*, Ne.symm hHC, Ne.symm hOC]),
      Finset.card_erase_of_mem (by simp [*, Ne.symm hOH]), Finset.card_erase_of_mem (by simp)]
    simp
  obtain ⟨r₁, r₂, r₃, hr1, hr2, hr3, g12, g13, g23⟩ := Finset.two_lt_card_iff.1 hT
  simp only [Finset.mem_erase, Finset.mem_univ, and_true] at hr1 hr2 hr3
  obtain ⟨r1m3, r1m2, r1m1, r1c, r1h, r1o⟩ := hr1
  obtain ⟨r2m3, r2m2, r2m1, r2c, r2h, r2o⟩ := hr2
  obtain ⟨r3m3, r3m2, r3m1, r3c, r3h, r3o⟩ := hr3
  -- the normalization
  set N := affineMap (1 / ξ) 0 0 (-(1 / η)) 0 1 with hN
  have hdet : 1 / ξ * -(1 / η) - 0 * 0 < 0 := by
    have : 0 < 1 / ξ * (1 / η) := by positivity
    linarith
  set Q := N ∘ P with hQ
  have hminQ : minTriangleArea Q = 1 / ξ * (1 / η) * minTriangleArea P := by
    rw [hQ, hN, minTriangleArea_affineMap]
    congr 1
    rw [show 1 / ξ * -(1 / η) - 0 * 0 = -(1 / ξ * (1 / η)) by ring, abs_neg,
      abs_of_pos (by positivity)]
  have eA : Q hh = (0, 0) := by
    simp only [hQ, hN, Function.comp, hhh, affineMap]; ext <;> field_simp <;> ring
  have eB : Q o = (0, 1) := by
    simp only [hQ, hN, Function.comp, ho, affineMap]; ext <;> simp
  have eC : Q cc = (1, 1) := by
    simp only [hQ, hN, Function.comp, hcc, affineMap]; ext <;> field_simp <;> ring
  obtain ⟨-, -, -, hrect, -, hL, hM, hLM1, hLM2⟩ := claim_normalization_map ξ η hξ hξ1 hη hη1
  rw [cornerNormalize_eq] at hrect
  set L := 1 / ξ
  set M := 1 / η
  have hQP : minTriangleArea P ≤ minTriangleArea Q := by
    rw [hminQ]; nlinarith [minTriangleArea_nonneg P]
  have hQpos : 0 < minTriangleArea Q := by linarith
  set sQ := 2 * minTriangleArea Q with hsQ
  have hsL : 7 / 64 * L ≤ sQ := by rw [hsQ, hminQ]; nlinarith
  have hsM : 7 / 64 * M ≤ sQ := by rw [hsQ, hminQ]; nlinarith
  have insQ : ∀ m, InsideTriangle (P m) (0, 0) (0, η) (ξ, 0) →
      InsideTriangle (Q m) (0, 0) (0, 1) (1, 1) := by
    intro m hm
    have := inside_affine_neg (e := 0) (f := 1) hdet hm
    rw [← ho, ← hhh, ← hcc] at this
    change InsideTriangle (Q m) (Q o) (Q hh) (Q cc) at this
    rw [eA, eB, eC] at this
    exact inside_swap12.1 this
  have rectQ : ∀ m, Q m ∈ rectangle L M := fun m => hrect _ (hP m)
  -- the other three are lower
  have lowQ : ∀ r, r ≠ o → r ≠ hh → r ≠ cc → r ≠ m₁ → r ≠ m₂ → r ≠ m₃ → (Q r).2 < (Q r).1 := by
    intro r ro rh rc r1 r2 r3
    have nA := sarea_ne_zero_of_min_pos hQpos hh o r (Ne.symm hOH) (Ne.symm ro) (Ne.symm rh)
    have nB := sarea_ne_zero_of_min_pos hQpos o cc r hOC (Ne.symm rc) (Ne.symm ro)
    have nC := sarea_ne_zero_of_min_pos hQpos hh cc r hHC (Ne.symm rc) (Ne.symm rh)
    rw [eA, eB] at nA
    rw [eB, eC] at nB
    rw [eA, eC] at nC
    simp only [sarea] at nA nB nC
    obtain ⟨x0, xL, yM, y1⟩ := rectQ r
    by_contra hc
    push Not at hc
    have hxy : (Q r).1 < (Q r).2 := lt_of_le_of_ne hc (fun e => nC (by rw [e]; ring))
    have hin : InsideTriangle (Q r) (0, 1) (0, 0) (1, 1) := by
      refine Or.inl ⟨?_, ?_, ?_⟩ <;> simp only [sarea]
      · have : (Q r).1 ≠ 0 := fun e => nA (by rw [e]; ring)
        have := lt_of_le_of_ne x0 (Ne.symm this)
        linarith
      · linarith
      · have : (Q r).2 ≠ 1 := fun e => nB (by rw [e]; ring)
        have := lt_of_le_of_ne y1 this
        linarith
    rw [← eA, ← eB, ← eC] at hin
    change InsideTriangle (N (P r)) (N (P o)) (N (P hh)) (N (P cc)) at hin
    rw [ho, hhh, hcc] at hin
    have := (memS r).1 (inside_of_affine_neg hdet hin)
    rcases this with e | e | e <;> contradiction
  -- the upper triple is distributed
  have hd : Distributed (0, 0) (0, 1) (1, 1) (Q m₁) (Q m₂) (Q m₃) := by
    by_contra hnd
    have h6 : minTriangleArea Q ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), Q m₁, Q m₂, Q m₃] :=
      min_sub (le_refl _) _ ![hh, o, cc, m₁, m₂, m₃] (by norm_num) (by inj_tac)
        (by intro i; fin_cases i
            · simp [eA]
            · simp [eB]
            · simp [eC]
            all_goals simp)
    have := claim_nondistributed_bound (0, 0) (0, 1) (1, 1) (Q m₁) (Q m₂) (Q m₃)
      (insQ m₁ hi₁) (insQ m₂ hi₂) (insQ m₃ hi₃) _ hQpos h6 hnd
    have harea : triangleArea ((0 : ℝ), (0 : ℝ)) (0, 1) (1, 1) = 1 / 2 := by
      simp only [triangleArea_eq, sarea]; norm_num
    rw [harea] at this
    nlinarith [CornerFamilies.sqrt3_gt]
  have h9 : sQ / 2 ≤ minTriangleArea
      ![(0, 0), (0, 1), (1, 1), Q m₁, Q m₂, Q m₃, Q r₁, Q r₂, Q r₃] :=
    (show sQ / 2 = minTriangleArea Q by rw [hsQ]; ring) ▸
      min_sub (le_refl _) _ ![hh, o, cc, m₁, m₂, m₃, r₁, r₂, r₃] (by norm_num) (by inj_tac)
        (by intro i; fin_cases i
            · simp [eA]
            · simp [eB]
            · simp [eC]
            all_goals simp)
  exact three_three_upper hL hM hsL hsM hd (rectQ r₁) (rectQ r₂) (rectQ r₃)
    (lowQ r₁ r1o r1h r1c r1m1 r1m2 r1m3) (lowQ r₂ r2o r2h r2c r2m1 r2m2 r2m3)
    (lowQ r₃ r3o r3h r3c r3m1 r3m2 r3m3) h9

/-- **Corner-triangle occupancy theorem** (`ONE_CORNER:CornerTriangleOccupancyTheorem`), C1 form
(the row `n₀ ≥ 3` of `UNRESTRICTED.md`): a C1 configuration with at least three of its four free
points strictly inside `OHC` has minimum area at most `7/128`. `hand/ONE_CORNER.md`,
lines 12–24.

Uses: ONE_CORNER:CornerTriangleOccupancyTheorem -/
theorem cornerTriangleOccupancy_c1 (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h3 : 3 ≤ {i : Fin 4 | InsideTriangle (![W, X, Y, Z] i) (0, 0) (0, h) (c, 0)}.ncard) :
    minTriangleArea (c1Config h c d f W X Y Z) ≤ 7 / 128 := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have hP : ∀ i, c1Config h c d f W X Y Z i ∈ unitSquare := by
    intro i
    fin_cases i
    · show ((0 : ℝ), (0 : ℝ)) ∈ unitSquare; exact ⟨le_rfl, by norm_num, le_rfl, by norm_num⟩
    · show ((c, 0) : Point) ∈ unitSquare
      exact ⟨by linarith, hc1.le, le_rfl, by norm_num⟩
    · show ((1, d) : Point) ∈ unitSquare
      exact ⟨by norm_num, le_rfl, by linarith, by linarith⟩
    · show ((f, 1) : Point) ∈ unitSquare
      exact ⟨by linarith, by linarith, by norm_num, le_rfl⟩
    · show ((0, h) : Point) ∈ unitSquare
      exact ⟨le_rfl, by norm_num, by linarith, hh1.le⟩
    · exact hW
    · exact hX
    · exact hY
    · exact hZ
  refine cornerTriangleOccupancyTheorem _ hP c h (by linarith) hc1.le (by linarith) hh1.le
    ⟨0, rfl⟩ ⟨4, rfl⟩ ⟨1, rfl⟩ (h3.trans ?_)
  refine Set.ncard_le_ncard_of_injOn (fun i : Fin 4 => (⟨i.val + 5, by omega⟩ : Fin 9)) ?_ ?_
    (Set.toFinite _)
  · intro i hi
    simp only [Set.mem_ofPred_eq] at hi ⊢
    fin_cases i <;> exact hi
  · intro i _ j _ hij
    simp only [Fin.mk.injEq] at hij
    exact Fin.ext (by omega)

/-- **Claim** (`ONE_CORNER:claim-C1-at-most-two-lower`): a C1 configuration of minimum area at
least `A₀` has at most two of its four free points strictly inside `OHC`.
`hand/ONE_CORNER.md`, lines 297–309.

Uses: ONE_CORNER:CornerTriangleOccupancyTheorem -/
theorem claim_C1_at_most_two_lower (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    {i : Fin 4 | InsideTriangle (![W, X, Y, Z] i) (0, 0) (0, h) (c, 0)}.ncard ≤ 2 := by
  by_contra h3
  push Not at h3
  have := cornerTriangleOccupancy_c1 h c d f hanch W X Y Z hW hX hY hZ h3
  linarith [A₀_bounds.1]

/-! ### §6. Every competitive C1 triangle has capacity two -/

/-- **Claim** (`ONE_CORNER:GlobalC1OccupancyCorollary`), the anchor bounds (lines 333–352): in a C1
configuration with all doubled areas at least `s > 0`, `hf ≥ s`, `cd ≥ s`, `h, c, d, f ≥ s`
and, from `2[HDF] = 1 - h + f(h - d) ≤ 1 - d` and `2[CDF] = 1 - c + d(c - f) ≤ 1 - f`,
`d, f ≤ 1 - s`. -/
theorem claim_anchor_bounds (h c d f s : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hs : 0 < s) (hmin : s / 2 ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    s ≤ h * f ∧ s ≤ c * d ∧ s ≤ h ∧ s ≤ c ∧ s ≤ d ∧ s ≤ f ∧ d ≤ 1 - s ∧ f ≤ 1 - s := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have g : ∀ {p q r : Point} {e : ℝ}, s / 2 ≤ triangleArea p q r → sarea p q r = e →
      s ≤ |e| := fun h he => by have := two_le_abs h; rw [he] at this; linarith
  have t1 := g (area_of_le_min hmin 0 4 3 : s / 2 ≤ triangleArea (0, 0) (0, h) (f, 1))
    (show sarea (0, 0) (0, h) (f, 1) = -(h * f) by simp only [sarea]; ring)
  have t2 := g (area_of_le_min hmin 0 1 2 : s / 2 ≤ triangleArea (0, 0) (c, 0) (1, d))
    (show sarea (0, 0) (c, 0) (1, d) = c * d by simp only [sarea]; ring)
  have t3 := g (area_of_le_min hmin 4 2 3 : s / 2 ≤ triangleArea (0, h) (1, d) (f, 1))
    (show sarea (0, h) (1, d) (f, 1) = 1 - h + f * (h - d) by simp only [sarea]; ring)
  have t4 := g (area_of_le_min hmin 1 2 3 : s / 2 ≤ triangleArea (c, 0) (1, d) (f, 1))
    (show sarea (c, 0) (1, d) (f, 1) = 1 - c + d * (c - f) by simp only [sarea]; ring)
  rw [abs_neg, abs_of_pos (mul_pos (by linarith) hf)] at t1
  rw [abs_of_pos (by nlinarith)] at t2
  rw [abs_of_pos (by nlinarith)] at t3
  rw [abs_of_pos (by nlinarith)] at t4
  refine ⟨t1, t2, by nlinarith, by nlinarith, by nlinarith, by nlinarith, by nlinarith,
    by nlinarith⟩

/-! #### Tools for §6 -/

/-- An affine function `sarea Q R ·` is bounded on a closed nondegenerate triangle by its absolute
values at the three vertices (the maximum of a convex function at a vertex). -/
theorem abs_sarea_le_of_closed {A B C P Q R : Point} {b : ℝ} (hABC : sarea A B C ≠ 0)
    (hP : InClosedTriangle P A B C) (hA : |sarea Q R A| ≤ b) (hB : |sarea Q R B| ≤ b)
    (hC : |sarea Q R C| ≤ b) : |sarea Q R P| ≤ b := by
  have iden : sarea A B C * sarea Q R P = sarea B C P * sarea Q R A +
      sarea C A P * sarea Q R B + sarea A B P * sarea Q R C := by unfold sarea; ring
  have hs := sarea_add_sarea_add_sarea A B C P
  have hsb : (sarea A B P + sarea B C P + sarea C A P) * b = sarea A B C * b := by rw [hs]
  rw [abs_le] at hA hB hC ⊢
  obtain ⟨a1, a2⟩ := hA
  obtain ⟨b1, b2⟩ := hB
  obtain ⟨c1, c2⟩ := hC
  rcases hP with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
  · have hS : 0 < sarea A B C := lt_of_le_of_ne (by linarith) (Ne.symm hABC)
    constructor
    · by_contra hc
      push Not at hc
      linarith [mul_le_mul_of_nonneg_left a1 h2, mul_le_mul_of_nonneg_left b1 h3,
        mul_le_mul_of_nonneg_left c1 h1, mul_lt_mul_of_pos_left hc hS]
    · by_contra hc
      push Not at hc
      linarith [mul_le_mul_of_nonneg_left a2 h2, mul_le_mul_of_nonneg_left b2 h3,
        mul_le_mul_of_nonneg_left c2 h1, mul_lt_mul_of_pos_left hc hS]
  · have hS : sarea A B C < 0 := lt_of_le_of_ne (by linarith) hABC
    constructor
    · by_contra hc
      push Not at hc
      linarith [mul_le_mul_of_nonpos_left a1 h2, mul_le_mul_of_nonpos_left b1 h3,
        mul_le_mul_of_nonpos_left c1 h1, mul_lt_mul_of_neg_left hc hS]
    · by_contra hc
      push Not at hc
      linarith [mul_le_mul_of_nonpos_left a2 h2, mul_le_mul_of_nonpos_left b2 h3,
        mul_le_mul_of_nonpos_left c2 h1, mul_lt_mul_of_neg_left hc hS]

/-- `|e| ≤ b` from `0 ≤ e ≤ b`. -/
theorem abs_le_of_mem {e b : ℝ} (h0 : 0 ≤ e) (h1 : e ≤ b) : |e| ≤ b := by
  rw [abs_of_nonneg h0]; exact h1

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
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have k1 : 0 ≤ (1 - f) * (h - d) := mul_nonneg (by linarith) (by linarith)
  have k2 : 0 ≤ f * (h - d) := mul_nonneg hf.le (by linarith)
  have k3 : 0 ≤ (1 - d) * (c - f) := mul_nonneg (by linarith) (by linarith)
  have k4 : 0 ≤ d * (c - f) := mul_nonneg hd.le (by linarith)
  have z : ∀ Q R : Point, |sarea Q R Q| = 0 ∧ |sarea Q R R| = 0 := fun Q R => by
    unfold sarea; constructor <;> (rw [abs_eq_zero]; ring)
  refine ⟨fun hP => ?_, fun hP => ?_, fun hP => ?_⟩
  · have hS : sarea (0, h) (f, 1) (0, 1) ≠ 0 := by
      unfold sarea; nlinarith [mul_pos hf (show (0:ℝ) < 1 - h by linarith)]
    refine ⟨?_, ?_, ?_⟩
    · refine abs_sarea_le_of_closed hS hP ?_ (by rw [(z _ _).2]; linarith) ?_ <;>
        (apply abs_le_of_mem <;> unfold sarea <;> nlinarith)
    · rw [show sarea (f, 1) P (0, h) = sarea (0, h) (f, 1) P by unfold sarea; ring]
      refine abs_sarea_le_of_closed hS hP (by rw [(z _ _).1]; linarith)
        (by rw [(z _ _).2]; linarith) ?_
      apply abs_le_of_mem <;> unfold sarea <;> nlinarith
    · rw [show sarea P (0, h) (0, 0) = sarea (0, h) (0, 0) P by unfold sarea; ring]
      refine abs_sarea_le_of_closed hS hP (by rw [(z _ _).1]; linarith) ?_ ?_ <;>
        (apply abs_le_of_mem <;> unfold sarea <;> nlinarith)
  · have hS : sarea (c, 0) (1, d) (1, 0) ≠ 0 := by
      unfold sarea; nlinarith [mul_pos hd (show (0:ℝ) < 1 - c by linarith)]
    refine ⟨?_, ?_, ?_⟩
    · refine abs_sarea_le_of_closed hS hP (by rw [(z _ _).2]; linarith) ?_ ?_ <;>
        (apply abs_le_of_mem <;> unfold sarea <;> nlinarith)
    · rw [show sarea (c, 0) P (1, d) = sarea (1, d) (c, 0) P by unfold sarea; ring]
      refine abs_sarea_le_of_closed hS hP (by rw [(z _ _).2]; linarith)
        (by rw [(z _ _).1]; linarith) ?_
      apply abs_le_of_mem <;> unfold sarea <;> nlinarith
    · rw [show sarea P (1, d) (f, 1) = sarea (1, d) (f, 1) P by unfold sarea; ring]
      refine abs_sarea_le_of_closed hS hP ?_ (by rw [(z _ _).1]; linarith) ?_ <;>
        (apply abs_le_of_mem <;> unfold sarea <;> nlinarith)
  · have hS : sarea (1, d) (f, 1) (1, 1) ≠ 0 := by
      unfold sarea
      nlinarith [mul_pos (show (0:ℝ) < 1 - f by linarith) (show (0:ℝ) < 1 - d by linarith)]
    refine ⟨?_, ?_, ?_⟩
    · refine abs_sarea_le_of_closed hS hP (by rw [(z _ _).2]; positivity) ?_ ?_
      · apply abs_le_of_mem <;> unfold sarea
        · nlinarith
        · exact le_trans (by nlinarith) (le_max_left _ _)
      · apply abs_le_of_mem <;> unfold sarea
        · nlinarith
        · exact le_trans (by nlinarith) (le_max_right _ _)
    · rw [show sarea (1, d) P (f, 1) = sarea (f, 1) (1, d) P by unfold sarea; ring]
      refine abs_sarea_le_of_closed hS hP (by rw [(z _ _).2]; linarith)
        (by rw [(z _ _).1]; linarith) ?_
      apply abs_le_of_mem <;> unfold sarea <;> nlinarith
    · rw [show sarea P (f, 1) (0, h) = sarea (f, 1) (0, h) P by unfold sarea; ring]
      refine abs_sarea_le_of_closed hS hP ?_ (by rw [(z _ _).1]; positivity) ?_
      · apply abs_le_of_mem <;> unfold sarea
        · nlinarith
        · exact le_trans (by nlinarith) (le_max_left _ _)
      · apply abs_le_of_mem <;> unfold sarea
        · nlinarith
        · exact le_trans (by nlinarith) (le_max_right _ _)

/-- The nine points of a C1 configuration lie in the square. -/
theorem c1Config_mem {h c d f : ℝ} (hanch : C1Anchors h c d f) {W X Y Z : Point}
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    ∀ i, c1Config h c d f W X Y Z i ∈ unitSquare := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  intro i
  fin_cases i
  · show ((0 : ℝ), (0 : ℝ)) ∈ unitSquare; exact ⟨le_rfl, by norm_num, le_rfl, by norm_num⟩
  · show ((c, 0) : Point) ∈ unitSquare
    exact ⟨by linarith, hc1.le, le_rfl, by norm_num⟩
  · show ((1, d) : Point) ∈ unitSquare
    exact ⟨by norm_num, le_rfl, by linarith, by linarith⟩
  · show ((f, 1) : Point) ∈ unitSquare
    exact ⟨by linarith, by linarith, by norm_num, le_rfl⟩
  · show ((0, h) : Point) ∈ unitSquare
    exact ⟨le_rfl, by norm_num, by linarith, hh1.le⟩
  · exact hW
  · exact hX
  · exact hY
  · exact hZ

/-- A point of the square beyond the pentagon edge `FH` lies in the cap `T_L`. -/
theorem capL_closed {h c d f : ℝ} (hanch : C1Anchors h c d f) {Q : Point} (hQ : Q ∈ unitSquare)
    (hcap : sarea (f, 1) (0, h) Q < 0) : InClosedTriangle Q (0, h) (f, 1) (0, 1) := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  obtain ⟨q1, q2, q3, q4⟩ := hQ
  left
  simp only [sarea] at hcap ⊢
  refine ⟨by linarith, by nlinarith, by nlinarith⟩

/-- A point of the square beyond the pentagon edge `CD` lies in the cap `T_R`. -/
theorem capR_closed {h c d f : ℝ} (hanch : C1Anchors h c d f) {Q : Point} (hQ : Q ∈ unitSquare)
    (hcap : sarea (c, 0) (1, d) Q < 0) : InClosedTriangle Q (c, 0) (1, d) (1, 0) := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  obtain ⟨q1, q2, q3, q4⟩ := hQ
  right
  simp only [sarea] at hcap ⊢
  refine ⟨by linarith, by nlinarith, by nlinarith⟩

/-- A point of the square beyond the pentagon edge `DF` lies in the cap `T_T`. -/
theorem capT_closed {h c d f : ℝ} (hanch : C1Anchors h c d f) {Q : Point} (hQ : Q ∈ unitSquare)
    (hcap : sarea (1, d) (f, 1) Q < 0) : InClosedTriangle Q (1, d) (f, 1) (1, 1) := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  obtain ⟨q1, q2, q3, q4⟩ := hQ
  right
  simp only [sarea] at hcap ⊢
  refine ⟨by linarith, by nlinarith, by nlinarith⟩

/-- No point of the square lies beyond two different edges of the anchor pentagon. -/
theorem caps_disjoint {h c d f : ℝ} (hanch : C1Anchors h c d f) {Q : Point}
    (hQ : Q ∈ unitSquare) :
    ¬ (sarea (c, 0) (1, d) Q < 0 ∧ sarea (1, d) (f, 1) Q < 0) ∧
      ¬ (sarea (1, d) (f, 1) Q < 0 ∧ sarea (f, 1) (0, h) Q < 0) ∧
      ¬ (sarea (c, 0) (1, d) Q < 0 ∧ sarea (f, 1) (0, h) Q < 0) := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  obtain ⟨q1, q2, q3, q4⟩ := hQ
  have below : sarea (c, 0) (1, d) Q < 0 → Q.2 < d := fun hR => by
    simp only [sarea] at hR
    by_contra hc; push Not at hc
    nlinarith [mul_le_mul_of_nonneg_left hc (show (0:ℝ) ≤ 1 - c by linarith),
      mul_le_mul_of_nonneg_left q2 hd.le]
  have left' : sarea (f, 1) (0, h) Q < 0 → Q.1 < f := fun hL => by
    simp only [sarea] at hL
    by_contra hc; push Not at hc
    nlinarith [mul_le_mul_of_nonneg_left hc (show (0:ℝ) ≤ 1 - h by linarith),
      mul_nonneg hf.le (show (0:ℝ) ≤ 1 - Q.2 by linarith)]
  refine ⟨fun ⟨hR, hT⟩ => ?_, fun ⟨hT, hL⟩ => ?_, fun ⟨hR, hL⟩ => ?_⟩
  · have := below hR
    simp only [sarea] at hT
    nlinarith [mul_pos (show (0:ℝ) < 1 - f by linarith) (show (0:ℝ) < d - Q.2 by linarith),
      mul_nonneg (show (0:ℝ) ≤ 1 - d by linarith) (show (0:ℝ) ≤ 1 - Q.1 by linarith)]
  · have := left' hL
    simp only [sarea] at hT
    nlinarith [mul_le_mul_of_nonneg_left (show 1 - f ≤ 1 - Q.1 by linarith)
      (show (0:ℝ) ≤ 1 - d by linarith),
      mul_le_mul_of_nonneg_left q4 (show (0:ℝ) ≤ 1 - f by linarith)]
  · have := below hR
    simp only [sarea] at hL
    nlinarith [mul_nonneg (show (0:ℝ) ≤ 1 - h by linarith) q1,
      mul_pos hf (show (0:ℝ) < h - Q.2 by linarith)]

/-- The anchors `0, …, 4` of `c1Config` are `O, C, D, F, H`. -/
theorem fin9_lt5 : ∀ x : Fin 9, x.val < 5 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 := by decide

theorem ne_of_lt5 {m V : Fin 9} (hm : m.val < 5) (hV : 5 ≤ V.val) : m ≠ V := fun e => by
  rw [e] at hm; omega

/-- A hull edge between two anchors (every other anchor strictly on its left) joins consecutive
vertices of the anchor pentagon `O → C → D → F → H`. -/
theorem c1_edge_aa {h c d f : ℝ} (hanch : C1Anchors h c d f) {W X Y Z : Point} {U V : Fin 9}
    (hU : U.val < 5) (hV : V.val < 5) (hUV : U ≠ V)
    (hs : ∀ m : Fin 9, m ≠ U → m ≠ V → 0 < sarea (c1Config h c d f W X Y Z U)
      (c1Config h c d f W X Y Z V) (c1Config h c d f W X Y Z m)) :
    (U = 0 ∧ V = 1) ∨ (U = 1 ∧ V = 2) ∨ (U = 2 ∧ V = 3) ∨ (U = 3 ∧ V = 4) ∨
      (U = 4 ∧ V = 0) := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have k1 : 0 ≤ (1 - f) * (h - d) := mul_nonneg (by linarith) (by linarith)
  have k2 : 0 ≤ f * (h - d) := mul_nonneg hf.le (by linarith)
  have k3 : 0 ≤ (1 - d) * (c - f) := mul_nonneg (by linarith) (by linarith)
  have k4 : 0 ≤ d * (c - f) := mul_nonneg hd.le (by linarith)
  have k5 : 0 < c * d := mul_pos hc0 hd
  have k6 : 0 < h * f := mul_pos hh0 hf
  have k7 : 0 < h * c := mul_pos hh0 hc0
  have k8 : 0 < (1 - c) * (1 - d) := mul_pos (by linarith) (by linarith)
  have k9 : 0 < (1 - f) * (1 - h) := mul_pos (by linarith) (by linarith)
  have k10 : 0 ≤ d * (1 - f) := mul_nonneg hd.le (by linarith)
  have k11 : 0 ≤ f * (1 - d) := mul_nonneg hf.le (by linarith)
  have k12 : 0 ≤ h * (1 - c) := mul_nonneg hh0.le (by linarith)
  have k13 : 0 ≤ (c - f) * (1 - h) := mul_nonneg (by linarith) (by linarith)
  rcases fin9_lt5 U hU with rfl | rfl | rfl | rfl | rfl
  · by_cases hV1 : V = 1
    · exact Or.inl ⟨rfl, hV1⟩
    have w := hs 1 (by decide) (Ne.symm hV1)
    rcases fin9_lt5 V hV with rfl | rfl | rfl | rfl | rfl
    · exact absurd rfl hUV
    · exact absurd rfl hV1
    · change 0 < sarea (0, 0) (1, d) (c, 0) at w; simp only [sarea] at w; nlinarith
    · change 0 < sarea (0, 0) (f, 1) (c, 0) at w; simp only [sarea] at w; nlinarith
    · change 0 < sarea (0, 0) (0, h) (c, 0) at w; simp only [sarea] at w; nlinarith
  · by_cases hV1 : V = 2
    · exact Or.inr (Or.inl ⟨rfl, hV1⟩)
    have w := hs 2 (by decide) (Ne.symm hV1)
    rcases fin9_lt5 V hV with rfl | rfl | rfl | rfl | rfl
    · change 0 < sarea (c, 0) (0, 0) (1, d) at w; simp only [sarea] at w; nlinarith
    · exact absurd rfl hUV
    · exact absurd rfl hV1
    · change 0 < sarea (c, 0) (f, 1) (1, d) at w; simp only [sarea] at w; nlinarith
    · change 0 < sarea (c, 0) (0, h) (1, d) at w; simp only [sarea] at w; nlinarith
  · by_cases hV1 : V = 3
    · exact Or.inr (Or.inr (Or.inl ⟨rfl, hV1⟩))
    have w := hs 3 (by decide) (Ne.symm hV1)
    rcases fin9_lt5 V hV with rfl | rfl | rfl | rfl | rfl
    · change 0 < sarea (1, d) (0, 0) (f, 1) at w; simp only [sarea] at w; nlinarith
    · change 0 < sarea (1, d) (c, 0) (f, 1) at w; simp only [sarea] at w; nlinarith
    · exact absurd rfl hUV
    · exact absurd rfl hV1
    · change 0 < sarea (1, d) (0, h) (f, 1) at w; simp only [sarea] at w; nlinarith
  · by_cases hV1 : V = 4
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨rfl, hV1⟩)))
    have w := hs 4 (by decide) (Ne.symm hV1)
    rcases fin9_lt5 V hV with rfl | rfl | rfl | rfl | rfl
    · change 0 < sarea (f, 1) (0, 0) (0, h) at w; simp only [sarea] at w; nlinarith
    · change 0 < sarea (f, 1) (c, 0) (0, h) at w; simp only [sarea] at w; nlinarith
    · change 0 < sarea (f, 1) (1, d) (0, h) at w; simp only [sarea] at w; nlinarith
    · exact absurd rfl hUV
    · exact absurd rfl hV1
  · by_cases hV1 : V = 0
    · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨rfl, hV1⟩)))
    have w := hs 0 (by decide) (Ne.symm hV1)
    rcases fin9_lt5 V hV with rfl | rfl | rfl | rfl | rfl
    · exact absurd rfl hV1
    · change 0 < sarea (0, h) (c, 0) (0, 0) at w; simp only [sarea] at w; nlinarith
    · change 0 < sarea (0, h) (1, d) (0, 0) at w; simp only [sarea] at w; nlinarith
    · change 0 < sarea (0, h) (f, 1) (0, 0) at w; simp only [sarea] at w; nlinarith
    · exact absurd rfl hUV

/-- A hull edge from an anchor `U` to a free point `Q`: `Q` lies beyond the pentagon edge from
`U` to its successor, which is `CD`, `DF` or `FH`. -/
theorem c1_edge_af {h c d f : ℝ} (hanch : C1Anchors h c d f) {W X Y Z : Point} {U V : Fin 9}
    (hU : U.val < 5) (hV : 5 ≤ V.val) (hQ : c1Config h c d f W X Y Z V ∈ unitSquare)
    (hs : ∀ m : Fin 9, m ≠ U → m ≠ V → 0 < sarea (c1Config h c d f W X Y Z U)
      (c1Config h c d f W X Y Z V) (c1Config h c d f W X Y Z m)) :
    (U = 1 ∧ sarea (c, 0) (1, d) (c1Config h c d f W X Y Z V) < 0) ∨
      (U = 2 ∧ sarea (1, d) (f, 1) (c1Config h c d f W X Y Z V) < 0) ∨
      (U = 3 ∧ sarea (f, 1) (0, h) (c1Config h c d f W X Y Z V) < 0) := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  obtain ⟨q1, q2, q3, q4⟩ := hQ
  set Q := c1Config h c d f W X Y Z V
  rcases fin9_lt5 U hU with rfl | rfl | rfl | rfl | rfl
  · have w := hs 1 (by decide) (ne_of_lt5 (by decide) hV)
    change 0 < sarea (0, 0) Q (c, 0) at w
    simp only [sarea] at w
    nlinarith [mul_nonneg (show (0:ℝ) ≤ c by linarith) q3]
  · have w := hs 2 (by decide) (ne_of_lt5 (by decide) hV)
    change 0 < sarea (c, 0) Q (1, d) at w
    exact Or.inl ⟨rfl, by
      have : sarea (c, 0) (1, d) Q = -sarea (c, 0) Q (1, d) := by unfold sarea; ring
      linarith⟩
  · have w := hs 3 (by decide) (ne_of_lt5 (by decide) hV)
    change 0 < sarea (1, d) Q (f, 1) at w
    exact Or.inr (Or.inl ⟨rfl, by
      have : sarea (1, d) (f, 1) Q = -sarea (1, d) Q (f, 1) := by unfold sarea; ring
      linarith⟩)
  · have w := hs 4 (by decide) (ne_of_lt5 (by decide) hV)
    change 0 < sarea (f, 1) Q (0, h) at w
    exact Or.inr (Or.inr ⟨rfl, by
      have : sarea (f, 1) (0, h) Q = -sarea (f, 1) Q (0, h) := by unfold sarea; ring
      linarith⟩)
  · have w := hs 0 (by decide) (ne_of_lt5 (by decide) hV)
    change 0 < sarea (0, h) Q (0, 0) at w
    simp only [sarea] at w
    nlinarith [mul_nonneg (show (0:ℝ) ≤ h by linarith) q1]

/-- A hull edge from a free point `Q` to an anchor `V`: `Q` lies beyond the pentagon edge from
the predecessor of `V` to `V`, which is `CD`, `DF` or `FH`. -/
theorem c1_edge_fa {h c d f : ℝ} (hanch : C1Anchors h c d f) {W X Y Z : Point} {U V : Fin 9}
    (hU : 5 ≤ U.val) (hV : V.val < 5) (hQ : c1Config h c d f W X Y Z U ∈ unitSquare)
    (hs : ∀ m : Fin 9, m ≠ U → m ≠ V → 0 < sarea (c1Config h c d f W X Y Z U)
      (c1Config h c d f W X Y Z V) (c1Config h c d f W X Y Z m)) :
    (V = 2 ∧ sarea (c, 0) (1, d) (c1Config h c d f W X Y Z U) < 0) ∨
      (V = 3 ∧ sarea (1, d) (f, 1) (c1Config h c d f W X Y Z U) < 0) ∨
      (V = 4 ∧ sarea (f, 1) (0, h) (c1Config h c d f W X Y Z U) < 0) := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  obtain ⟨q1, q2, q3, q4⟩ := hQ
  set Q := c1Config h c d f W X Y Z U
  rcases fin9_lt5 V hV with rfl | rfl | rfl | rfl | rfl
  · have w := hs 4 (ne_of_lt5 (by decide) hU) (by decide)
    change 0 < sarea Q (0, 0) (0, h) at w
    simp only [sarea] at w
    nlinarith [mul_nonneg (show (0:ℝ) ≤ h by linarith) q1]
  · have w := hs 0 (ne_of_lt5 (by decide) hU) (by decide)
    change 0 < sarea Q (c, 0) (0, 0) at w
    simp only [sarea] at w
    nlinarith [mul_nonneg (show (0:ℝ) ≤ c by linarith) q3]
  · have w := hs 1 (ne_of_lt5 (by decide) hU) (by decide)
    change 0 < sarea Q (1, d) (c, 0) at w
    exact Or.inl ⟨rfl, by
      have : sarea (c, 0) (1, d) Q = -sarea Q (1, d) (c, 0) := by unfold sarea; ring
      linarith⟩
  · have w := hs 2 (ne_of_lt5 (by decide) hU) (by decide)
    change 0 < sarea Q (f, 1) (1, d) at w
    exact Or.inr (Or.inl ⟨rfl, by
      have : sarea (1, d) (f, 1) Q = -sarea Q (f, 1) (1, d) := by unfold sarea; ring
      linarith⟩)
  · have w := hs 3 (ne_of_lt5 (by decide) hU) (by decide)
    change 0 < sarea Q (0, h) (f, 1) at w
    exact Or.inr (Or.inr ⟨rfl, by
      have : sarea (f, 1) (0, h) Q = -sarea Q (0, h) (f, 1) := by unfold sarea; ring
      linarith⟩)

/-- The ear analysis of §6: an ear `C'A'B'` of the full hull (`C' → A'` and `A' → B'` hull
edges) with at most one free vertex, other than the corner ear `HOC`, has doubled area at most
`1 - 2A₀`. -/
theorem c1_ear_false {h c d f : ℝ} (hanch : C1Anchors h c d f) {W X Y Z : Point}
    (hP : ∀ m, c1Config h c d f W X Y Z m ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) {A' B' C' : Fin 9}
    (hAB : A' ≠ B') (hAC : A' ≠ C')
    (hf1 : ¬ (5 ≤ A'.val ∧ 5 ≤ B'.val)) (hf2 : ¬ (5 ≤ A'.val ∧ 5 ≤ C'.val))
    (hf3 : ¬ (5 ≤ B'.val ∧ 5 ≤ C'.val))
    (sup1 : ∀ m, m ≠ A' → m ≠ B' → 0 < sarea (c1Config h c d f W X Y Z A')
      (c1Config h c d f W X Y Z B') (c1Config h c d f W X Y Z m))
    (sup2 : ∀ m, m ≠ C' → m ≠ A' → 0 < sarea (c1Config h c d f W X Y Z C')
      (c1Config h c d f W X Y Z A') (c1Config h c d f W X Y Z m))
    (hD : 1 - 2 * A₀ < sarea (c1Config h c d f W X Y Z A') (c1Config h c d f W X Y Z B')
      (c1Config h c d f W X Y Z C'))
    (hcorner : ¬ (A' = 0 ∧ B' = 1 ∧ C' = 4)) : False := by
  have hanch' := hanch
  obtain ⟨t1, t2, t3, t4, t5, t6, t7, t8⟩ := claim_anchor_bounds h c d f (2 * A₀) hanch W X Y Z
    (by linarith [A₀_pos]) (by linarith)
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have ears := claim_cap_ear_bounds h c d f hanch'
  have disj := fun {Q : Point} (hQ : Q ∈ unitSquare) => caps_disjoint hanch' hQ
  rcases lt_or_ge A'.val 5 with hA5 | hA5 <;> rcases lt_or_ge B'.val 5 with hB5 | hB5 <;>
    rcases lt_or_ge C'.val 5 with hC5 | hC5
  · -- three anchors
    have e1 := c1_edge_aa hanch' hA5 hB5 hAB sup1
    have e2 := c1_edge_aa hanch' hC5 hA5 (Ne.symm hAC) sup2
    rcases e1 with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩ <;>
      rcases e2 with ⟨rfl, e⟩ | ⟨rfl, e⟩ | ⟨rfl, e⟩ | ⟨rfl, e⟩ | ⟨rfl, e⟩ <;>
      first
      | exact absurd e (by decide)
      | exact hcorner ⟨rfl, rfl, rfl⟩
      | (simp only [c1Config, Matrix.cons_val, sarea] at hD
         nlinarith [mul_nonneg (show (0:ℝ) ≤ 1 - c by linarith) hd.le,
           mul_nonneg (show (0:ℝ) ≤ c - f by linarith) (show (0:ℝ) ≤ 1 - d by linarith),
           mul_nonneg (show (0:ℝ) ≤ h - d by linarith) (show (0:ℝ) ≤ 1 - f by linarith),
           mul_nonneg (show (0:ℝ) ≤ 1 - h by linarith) hf.le])
  · -- `C'` free
    have e1 := c1_edge_aa hanch' hA5 hB5 hAB sup1
    rcases c1_edge_fa hanch' hC5 hA5 (hP C') sup2 with ⟨rfl, hcap⟩ | ⟨rfl, hcap⟩ | ⟨rfl, hcap⟩
    · obtain rfl : B' = 3 := by simpa using e1
      obtain ⟨-, -, b3⟩ := (ears _).2.1 (capR_closed hanch' (hP C') hcap)
      change 1 - 2 * A₀ < sarea (1, d) (f, 1) (c1Config h c d f W X Y Z C') at hD
      rw [show sarea (1, d) (f, 1) (c1Config h c d f W X Y Z C') =
        sarea (c1Config h c d f W X Y Z C') (1, d) (f, 1) by unfold sarea; ring] at hD
      linarith [le_abs_self (sarea (c1Config h c d f W X Y Z C') (1, d) (f, 1))]
    · obtain rfl : B' = 4 := by simpa using e1
      obtain ⟨-, -, b3⟩ := (ears _).2.2 (capT_closed hanch' (hP C') hcap)
      change 1 - 2 * A₀ < sarea (f, 1) (0, h) (c1Config h c d f W X Y Z C') at hD
      rw [show sarea (f, 1) (0, h) (c1Config h c d f W X Y Z C') =
        sarea (c1Config h c d f W X Y Z C') (f, 1) (0, h) by unfold sarea; ring] at hD
      have : max (1 - d) (1 - h) ≤ 1 - 2 * A₀ := max_le (by linarith) (by linarith)
      linarith [le_abs_self (sarea (c1Config h c d f W X Y Z C') (f, 1) (0, h))]
    · obtain rfl : B' = 0 := by simpa using e1
      obtain ⟨-, -, b3⟩ := (ears _).1 (capL_closed hanch' (hP C') hcap)
      change 1 - 2 * A₀ < sarea (0, h) (0, 0) (c1Config h c d f W X Y Z C') at hD
      rw [show sarea (0, h) (0, 0) (c1Config h c d f W X Y Z C') =
        sarea (c1Config h c d f W X Y Z C') (0, h) (0, 0) by unfold sarea; ring] at hD
      linarith [le_abs_self (sarea (c1Config h c d f W X Y Z C') (0, h) (0, 0))]
  · -- `B'` free
    have e2 := c1_edge_aa hanch' hC5 hA5 (Ne.symm hAC) sup2
    rcases c1_edge_af hanch' hA5 hB5 (hP B') sup1 with ⟨rfl, hcap⟩ | ⟨rfl, hcap⟩ | ⟨rfl, hcap⟩
    · obtain rfl : C' = 0 := by simpa using e2
      obtain ⟨b1, -, -⟩ := (ears _).2.1 (capR_closed hanch' (hP B') hcap)
      change 1 - 2 * A₀ < sarea (c, 0) (c1Config h c d f W X Y Z B') (0, 0) at hD
      rw [show sarea (c, 0) (c1Config h c d f W X Y Z B') (0, 0) =
        sarea (0, 0) (c, 0) (c1Config h c d f W X Y Z B') by unfold sarea; ring] at hD
      linarith [le_abs_self (sarea (0, 0) (c, 0) (c1Config h c d f W X Y Z B'))]
    · obtain rfl : C' = 1 := by simpa using e2
      obtain ⟨b1, -, -⟩ := (ears _).2.2 (capT_closed hanch' (hP B') hcap)
      change 1 - 2 * A₀ < sarea (1, d) (c1Config h c d f W X Y Z B') (c, 0) at hD
      rw [show sarea (1, d) (c1Config h c d f W X Y Z B') (c, 0) =
        sarea (c, 0) (1, d) (c1Config h c d f W X Y Z B') by unfold sarea; ring] at hD
      have : max (1 - f) (1 - c) ≤ 1 - 2 * A₀ := max_le (by linarith) (by linarith)
      linarith [le_abs_self (sarea (c, 0) (1, d) (c1Config h c d f W X Y Z B'))]
    · obtain rfl : C' = 2 := by simpa using e2
      obtain ⟨b1, -, -⟩ := (ears _).1 (capL_closed hanch' (hP B') hcap)
      change 1 - 2 * A₀ < sarea (f, 1) (c1Config h c d f W X Y Z B') (1, d) at hD
      rw [show sarea (f, 1) (c1Config h c d f W X Y Z B') (1, d) =
        sarea (1, d) (f, 1) (c1Config h c d f W X Y Z B') by unfold sarea; ring] at hD
      linarith [le_abs_self (sarea (1, d) (f, 1) (c1Config h c d f W X Y Z B'))]
  · exact hf3 ⟨hB5, hC5⟩
  · -- `A'` free
    have e1 := c1_edge_fa hanch' hA5 hB5 (hP A') sup1
    have e2 := c1_edge_af hanch' hC5 hA5 (hP A') sup2
    rcases e1 with ⟨rfl, k1⟩ | ⟨rfl, k1⟩ | ⟨rfl, k1⟩ <;>
      rcases e2 with ⟨rfl, k2⟩ | ⟨rfl, k2⟩ | ⟨rfl, k2⟩
    · obtain ⟨-, b2, -⟩ := (ears _).2.1 (capR_closed hanch' (hP A') k1)
      change 1 - 2 * A₀ < sarea (c1Config h c d f W X Y Z A') (1, d) (c, 0) at hD
      rw [show sarea (c1Config h c d f W X Y Z A') (1, d) (c, 0) =
        sarea (c, 0) (c1Config h c d f W X Y Z A') (1, d) by unfold sarea; ring] at hD
      linarith [le_abs_self (sarea (c, 0) (c1Config h c d f W X Y Z A') (1, d))]
    · exact (disj (hP A')).1 ⟨k1, k2⟩
    · exact (disj (hP A')).2.2 ⟨k1, k2⟩
    · exact (disj (hP A')).1 ⟨k2, k1⟩
    · obtain ⟨-, b2, -⟩ := (ears _).2.2 (capT_closed hanch' (hP A') k1)
      change 1 - 2 * A₀ < sarea (c1Config h c d f W X Y Z A') (f, 1) (1, d) at hD
      rw [show sarea (c1Config h c d f W X Y Z A') (f, 1) (1, d) =
        sarea (1, d) (c1Config h c d f W X Y Z A') (f, 1) by unfold sarea; ring] at hD
      linarith [le_abs_self (sarea (1, d) (c1Config h c d f W X Y Z A') (f, 1))]
    · exact (disj (hP A')).2.1 ⟨k1, k2⟩
    · exact (disj (hP A')).2.2 ⟨k2, k1⟩
    · exact (disj (hP A')).2.1 ⟨k2, k1⟩
    · obtain ⟨-, b2, -⟩ := (ears _).1 (capL_closed hanch' (hP A') k1)
      change 1 - 2 * A₀ < sarea (c1Config h c d f W X Y Z A') (0, h) (f, 1) at hD
      rw [show sarea (c1Config h c d f W X Y Z A') (0, h) (f, 1) =
        sarea (f, 1) (c1Config h c d f W X Y Z A') (0, h) by unfold sarea; ring] at hD
      linarith [le_abs_self (sarea (f, 1) (c1Config h c d f W X Y Z A') (0, h))]
  · exact hf2 ⟨hA5, hC5⟩
  · exact hf1 ⟨hA5, hB5⟩
  · exact hf1 ⟨hA5, hB5⟩

/-- A point strictly inside a counterclockwise triangle is inside it in that orientation. -/
theorem inTriangle_of_inside_pos {X A B C : Point} (h : 0 < sarea A B C)
    (hX : InsideTriangle X A B C) : InTriangle X A B C := by
  rcases hX with hX | ⟨h1, h2, h3⟩
  · exact hX
  · have := sarea_add_sarea_add_sarea A C B X
    have : sarea A C B = -sarea A B C := sarea_swap₂₃ _ _ _
    linarith

/-- A point strictly inside a clockwise triangle is inside it in the reversed orientation. -/
theorem inTriangle_of_inside_neg {X A B C : Point} (h : sarea A B C < 0)
    (hX : InsideTriangle X A B C) : InTriangle X A C B := by
  rcases hX with ⟨h1, h2, h3⟩ | hX
  · have := sarea_add_sarea_add_sarea A B C X
    linarith
  · exact hX

/-- **Capacity two in C1** (the core of the global C1 occupancy corollary): every
counterclockwise actual triangle of a C1 configuration with least area at least `A₀` contains at
most two further points. -/
theorem c1_capacity_two (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    ThreeInteriorTriangles.TriangleCapacityTwo (c1Config h c d f W X Y Z) := by
  intro i j k hccw
  by_contra hcon
  push Not at hcon
  have hP := c1Config_mem hanch hW hX hY hZ
  set P := c1Config h c d f W X Y Z with hPdef
  obtain ⟨A', B', C', hrot, h3, -, sup1, sup2, -⟩ :=
    ThreeInteriorTriangles.theorem1 hP hmin hccw (by omega)
  have hccw' : 0 < sarea (P A') (P B') (P C') := by
    rcases hrot with ⟨e1, e2, e3⟩ | ⟨e1, e2, e3⟩ | ⟨e1, e2, e3⟩ <;> rw [e1, e2, e3] <;>
      (unfold sarea at hccw ⊢; linarith)
  obtain ⟨hAB, hBC, hAC⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hccw'
  obtain ⟨m₁, m₂, m₃, h12, h13, h23, hS⟩ := Set.ncard_eq_three.1 h3
  have mem : ∀ m, InTriangle (P m) (P A') (P B') (P C') ↔ m = m₁ ∨ m = m₂ ∨ m = m₃ := by
    intro m
    have := congrArg (m ∈ ·) hS
    simpa using this
  have i1 := (mem m₁).2 (Or.inl rfl)
  have i2 := (mem m₂).2 (Or.inr (Or.inl rfl))
  have i3 := (mem m₃).2 (Or.inr (Or.inr rfl))
  -- the anchors lie on the square boundary, so the inside points are free
  have big : ∀ m, InTriangle (P m) (P A') (P B') (P C') → 5 ≤ m.val := by
    intro m hin
    by_contra hlt
    push Not at hlt
    rcases fin9_lt5 m hlt with rfl | rfl | rfl | rfl | rfl
    · exact ThreeInteriorTriangles.not_inTriangle_of_x0 (hP A') (hP B') (hP C') rfl hin
    · exact ThreeInteriorTriangles.not_inTriangle_of_y0 (hP A') (hP B') (hP C') rfl hin
    · exact ThreeInteriorTriangles.not_inTriangle_of_x1 (hP A') (hP B') (hP C') rfl hin
    · exact ThreeInteriorTriangles.not_inTriangle_of_y1 (hP A') (hP B') (hP C') rfl hin
    · exact ThreeInteriorTriangles.not_inTriangle_of_x0 (hP A') (hP B') (hP C') rfl hin
  have v1 := big m₁ i1
  have v2 := big m₂ i2
  have v3 := big m₃ i3
  obtain ⟨a1, a2, a3⟩ := ThreeInteriorTriangles.inTriangle_ne i1
  obtain ⟨b1, b2, b3⟩ := ThreeInteriorTriangles.inTriangle_ne i2
  obtain ⟨c1, c2, c3⟩ := ThreeInteriorTriangles.inTriangle_ne i3
  have l1 := m₁.isLt
  have l2 := m₂.isLt
  have l3 := m₃.isLt
  have lA := A'.isLt
  have lB := B'.isLt
  have lC := C'.isLt
  have n12 := Fin.val_ne_of_ne h12
  have n13 := Fin.val_ne_of_ne h13
  have n23 := Fin.val_ne_of_ne h23
  have na1 := Fin.val_ne_of_ne a1
  have na2 := Fin.val_ne_of_ne a2
  have na3 := Fin.val_ne_of_ne a3
  have nb1 := Fin.val_ne_of_ne b1
  have nb2 := Fin.val_ne_of_ne b2
  have nb3 := Fin.val_ne_of_ne b3
  have nc1 := Fin.val_ne_of_ne c1
  have nc2 := Fin.val_ne_of_ne c2
  have nc3 := Fin.val_ne_of_ne c3
  have nAB := Fin.val_ne_of_ne hAB
  have nBC := Fin.val_ne_of_ne hBC
  have nAC := Fin.val_ne_of_ne hAC
  have hf1 : ¬ (5 ≤ A'.val ∧ 5 ≤ B'.val) := fun ⟨_, _⟩ => by omega
  have hf2 : ¬ (5 ≤ A'.val ∧ 5 ≤ C'.val) := fun ⟨_, _⟩ => by omega
  have hf3 : ¬ (5 ≤ B'.val ∧ 5 ≤ C'.val) := fun ⟨_, _⟩ => by omega
  -- the corner ear `HOC` is excluded by the corner-triangle occupancy theorem
  have hcorner : ¬ (A' = 0 ∧ B' = 1 ∧ C' = 4) := by
    rintro ⟨rfl, rfl, rfl⟩
    obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
    have := cornerTriangleOccupancyTheorem P hP c h (by linarith) hc1.le (by linarith) hh1.le
      ⟨0, rfl⟩ ⟨4, rfl⟩ ⟨1, rfl⟩
      (h3.symm.le.trans (Set.ncard_le_ncard (fun m hm => Or.inr hm) (Set.toFinite _)))
    linarith [A₀_bounds.1]
  have hD := ThreeInteriorTriangles.D_ge hmin hccw' i1 i2 i3 h12 h13 h23
  have g := QuadrilateralHull.gamma_one_A₀
  exact c1_ear_false hanch hP hmin hAB hAC hf1 hf2 hf3 sup1 sup2 (by linarith) hcorner

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
  have cap := c1_capacity_two h c d f hanch W X Y Z hW hX hY hZ hmin
  set P := c1Config h c d f W X Y Z
  rcases lt_trichotomy (sarea (P i) (P j) (P k)) 0 with hneg | hzero | hpos
  · refine le_trans (Set.ncard_le_ncard (fun m hm => inTriangle_of_inside_neg hneg hm)
      (Set.toFinite _)) (cap i k j ?_)
    rw [sarea_swap₂₃]; linarith
  · have : {m : Fin 9 | InsideTriangle (P m) (P i) (P j) (P k)} = ∅ := by
      ext m
      simp only [Set.mem_ofPred_eq, Set.mem_empty_iff_false, iff_false]
      rintro (⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩)
      · have := sarea_add_sarea_add_sarea (P i) (P j) (P k) (P m)
        linarith
      · have := sarea_add_sarea_add_sarea (P i) (P k) (P j) (P m)
        have : sarea (P i) (P k) (P j) = -sarea (P i) (P j) (P k) := sarea_swap₂₃ _ _ _
        linarith
    rw [this, Set.ncard_empty]
    omega
  · exact le_trans (Set.ncard_le_ncard (fun m hm => inTriangle_of_inside_pos hpos hm)
      (Set.toFinite _)) (cap i j k hpos)

/-! ### §7. Opposite diagonal quadrants in the pentagonal `2+2` case -/

/-- **Claim** (`ONE_CORNER:claim-pentagon-opposite-quadrants`), equation (12): with
`ℓ = h - d`, `m = c - f`, `W = 1 - ℓm ≠ 0`, `h = y + ℓx` and `c = x + my`.
`hand/ONE_CORNER.md`, lines 445–457. -/
theorem eq12 (h c d f : ℝ) (hW : quadWOf h c d f ≠ 0) :
    h = diagY h c d f + (h - d) * diagX h c d f ∧ c = diagX h c d f + (c - f) * diagY h c d f := by
  unfold diagX diagY
  unfold quadWOf at hW ⊢
  constructor
  · rw [mul_div_assoc', ← add_div, eq_div_iff hW]; ring
  · rw [mul_div_assoc', ← add_div, eq_div_iff hW]; ring

/-! #### Tools for §7 -/

/-- The diagonal parameters: `W > 0`, `Wx = 2[HCF]`, `Wy = 2[HCD]`, `W(1 - x) = 2[CDF]`,
`W(1 - y) = 2[DFH]`. -/
theorem diag_identities {h c d f : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh1 : h ≤ 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c ≤ 1) :
    0 < quadWOf h c d f ∧ quadWOf h c d f ≤ 1 ∧
      quadWOf h c d f = 1 - (h - d) * (c - f) ∧
      quadWOf h c d f * diagX h c d f = c - h * (c - f) ∧
      quadWOf h c d f * diagY h c d f = h - c * (h - d) ∧
      quadWOf h c d f * (1 - diagX h c d f) = 1 - c + d * (c - f) ∧
      quadWOf h c d f * (1 - diagY h c d f) = 1 - h + f * (h - d) := by
  have hl : 0 ≤ h - d := by linarith
  have hm : 0 ≤ c - f := by linarith
  have hW' : quadWOf h c d f = 1 - (h - d) * (c - f) := rfl
  have hW : 0 < quadWOf h c d f := by
    rw [hW']
    have : (h - d) * (c - f) < 1 := by
      have : h - d < 1 := by linarith
      have : c - f < 1 := by linarith
      calc (h - d) * (c - f) ≤ (h - d) * 1 := by nlinarith
        _ < 1 := by linarith
    linarith
  have ex : quadWOf h c d f * diagX h c d f = c - h * (c - f) := by
    rw [diagX]; field_simp
  have ey : quadWOf h c d f * diagY h c d f = h - c * (h - d) := by
    rw [diagY]; field_simp
  refine ⟨hW, by rw [hW']; nlinarith [mul_nonneg hl hm], hW', ex, ey, ?_, ?_⟩
  · linear_combination hW' - ex
  · linear_combination hW' - ey

/-- The endpoint bound of Pattern I (lines 498–544): at `h = 1`, `c = x(1 - Wy)/(1 - y)`, and
Pattern I gives `c ≤ F ≤ (1 - 2σ)²/(8σ) = 625/896`. -/
theorem patternI_endpoint {x y W : ℝ} (hx : 0 < x) (hx1 : x < 1) (hy : 0 < y) (hy1 : y < 1)
    (hW1 : W ≤ 1)
    (hI₁ : 7 / 64 * (2 + x - y) ≤ W * x * (1 - y))
    (hI₂ : 7 / 64 * (2 + y - x) ≤ W * y * (1 - x)) :
    x * (1 - W * y) ≤ 625 / 896 * (1 - y) := by
  rcases le_total x y with hxy | hxy
  · -- `y ≥ x`: `v = 1 - y`, `δ = y - x`
    have hv : 7 / 64 * (2 + x - y) ≤ 1 - y := by
      have : W * x ≤ 1 := by nlinarith
      nlinarith
    have key : 0 ≤ 625 / 896 * (1 - y) ^ 2 - x * (1 - y) + 7 / 64 * (2 + x - y) * y := by
      nlinarith [sq_nonneg (1 - y - 14 / 39), mul_nonneg (sub_nonneg.2 hxy)
        (show (0:ℝ) ≤ (1 + 7/64) * (1 - y) - 7 / 64 by nlinarith)]
    have h2 : 7 / 64 * (2 + x - y) * y ≤ W * x * (1 - y) * y :=
      mul_le_mul_of_nonneg_right hI₁ hy.le
    have : 0 ≤ (1 - y) * (625 / 896 * (1 - y) - x * (1 - W * y)) := by nlinarith
    nlinarith [(mul_nonneg_iff_of_pos_left (by linarith : (0:ℝ) < 1 - y)).1 this]
  · -- `y ≤ x`: `w = 1 - x`, `δ = x - y`
    have hw : 7 / 64 * (2 + y - x) ≤ y * (1 - x) := by
      have : W * y ≤ y := by nlinarith
      nlinarith
    have hw4 : 1 / 4 ≤ 1 - x := by
      by_contra hc
      push Not at hc
      nlinarith [mul_pos (show (0:ℝ) < 1 / 4 - (1 - x) by linarith)
        (show (0:ℝ) < 3 / 4 - (1 - x) by linarith)]
    have key : 0 ≤ 625 / 896 * (1 - y) * (1 - x) - x * (1 - x) + 7 / 64 * x * (2 + y - x) := by
      nlinarith [sq_nonneg (1 - x - 14 / 39), mul_nonneg (sub_nonneg.2 hxy)
        (show (0:ℝ) ≤ (625 / 896 + 7 / 64) * (1 - x) - 7 / 64 by nlinarith)]
    have h2 : 7 / 64 * (2 + y - x) * x ≤ W * y * (1 - x) * x :=
      mul_le_mul_of_nonneg_right hI₂ hx.le
    have : 0 ≤ (1 - x) * (625 / 896 * (1 - y) - x * (1 - W * y)) := by nlinarith
    nlinarith [(mul_nonneg_iff_of_pos_left (by linarith : (0:ℝ) < 1 - x)).1 this]

/-- Pattern I, the reduction to the endpoints (lines 480–497): with `h = y + a`, `c = x + b`,
`ab = (1 - W)xy`, the product `hc` is bounded by one of the endpoint values `c|_{h=1}`,
`h|_{c=1}`. (The convexity argument of the manuscript is replaced by the two identities
`(1 - y)hc - x(1 - Wy) = -(1 - h)(x(1 - y) - yb)` and its mirror image.) -/
theorem patternI_combine {h c x y a b W : ℝ} (eh : h = y + a) (ec : c = x + b)
    (eab : a * b = (1 - W) * x * y) (hh1 : h ≤ 1) (hc1 : c ≤ 1)
    (hx : 0 < x) (hx1 : x < 1) (hy : 0 < y) (hy1 : y < 1)
    (E1 : x * (1 - W * y) ≤ 625 / 896 * (1 - y)) (E2 : y * (1 - W * x) ≤ 625 / 896 * (1 - x)) :
    h * c ≤ 625 / 896 := by
  have i1 : (1 - y) * (h * c) - x * (1 - W * y) = -((1 - h) * (x * (1 - y) - y * b)) := by
    rw [eh, ec]; linear_combination eab
  have i2 : (1 - x) * (h * c) - y * (1 - W * x) = -((1 - c) * (y * (1 - x) - x * a)) := by
    rw [eh, ec]; linear_combination eab
  have hh1' : a ≤ 1 - y := by linarith
  have hc1' : b ≤ 1 - x := by linarith
  rcases le_total (y * b) (x * (1 - y)) with hcase | hcase
  · have : (1 - y) * (h * c) ≤ (1 - y) * (625 / 896) := by
      nlinarith [mul_nonneg (show (0:ℝ) ≤ 1 - h by linarith) (sub_nonneg.2 hcase)]
    exact le_of_mul_le_mul_left this (by linarith)
  · have hxa : x * a ≤ y * (1 - x) := by
      have := mul_le_mul_of_nonneg_left hh1' hx.le
      have := mul_le_mul_of_nonneg_left hc1' hy.le
      linarith
    have : (1 - x) * (h * c) ≤ (1 - x) * (625 / 896) := by
      nlinarith [mul_nonneg (show (0:ℝ) ≤ 1 - c by linarith) (sub_nonneg.2 hxa)]
    exact le_of_mul_le_mul_left this (by linarith)

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
  obtain ⟨hW, hW1, hW', ex, ey, -, -⟩ := diag_identities hd hdh hh1 hf hfc hc1
  set W := quadWOf h c d f
  set x := diagX h c d f
  set y := diagY h c d f
  set a := (h - d) * x with ha
  set b := (c - f) * y with hb
  have eh : h = y + a := by
    have : W * h = W * (y + a) := by rw [ha]; linear_combination h * hW' - ey - (h - d) * ex
    exact mul_left_cancel₀ hW.ne' this
  have ec : c = x + b := by
    have : W * c = W * (x + b) := by rw [hb]; linear_combination c * hW' - ex - (c - f) * ey
    exact mul_left_cancel₀ hW.ne' this
  have eab : a * b = (1 - W) * x * y := by rw [ha, hb, hW']; ring
  exact patternI_combine eh ec eab hh1 hc1 hx hx1 hy hy1
    (patternI_endpoint hx hx1 hy hy1 hW1 hI₁ hI₂) (patternI_endpoint hy hy1 hx hx1 hW1 hI₂ hI₁)

/-- `C(δ) ≥ 1/8` on `[1/5, 1]` (§7, Pattern II, lines 640–650). -/
theorem patternII_C {δ : ℝ} (h1 : 1 / 5 ≤ δ) (h2 : δ ≤ 1) :
    0 ≤ 1 / 5 - δ + 3 / 2 * δ ^ 2 - 5 / 8 * δ ^ 4 := by
  rcases le_total δ (1 / 2) with h | h
  · nlinarith [sq_nonneg (δ - 16 / 43), mul_nonneg (sub_nonneg.2 h1) (sub_nonneg.2 h),
      mul_nonneg (mul_nonneg (sub_nonneg.2 h1) (sub_nonneg.2 h)) (sq_nonneg δ)]
  · nlinarith [mul_nonneg (sub_nonneg.2 h) (sub_nonneg.2 h2),
      mul_nonneg (mul_nonneg (sub_nonneg.2 h) (sub_nonneg.2 h2)) (sq_nonneg δ),
      mul_nonneg (mul_nonneg (sub_nonneg.2 h) (sub_nonneg.2 h2)) (sub_nonneg.2 h),
      mul_nonneg (mul_nonneg (sub_nonneg.2 h) (sub_nonneg.2 h2)) (sub_nonneg.2 h2)]

/-- (17) when `Z ≤ R` (lines 600–663), with `δ = R - Z`, `v = (R + Z - 1)/2`. -/
theorem relaxed17_core {β R Z : ℝ} (hb1 : β ≤ 1 / 5) (hR1 : R ≤ 1) (hZ : 0 ≤ Z) (hZR : Z ≤ R) :
    10 * ((β + Z * (1 - R)) * (1 / 5 - β + R * (1 - Z))) <
      (1 - R * Z) + (β + Z * (1 - R)) + (1 / 5 - β + R * (1 - Z)) := by
  set δ := R - Z with hδ
  set v := (R + Z - 1) / 2 with hv
  have eR : R = (1 + 2 * v + δ) / 2 := by rw [hv, hδ]; ring
  have eZ : Z = (1 + 2 * v - δ) / 2 := by rw [hv, hδ]; ring
  have hδ0 : 0 ≤ δ := by linarith
  have hδ1 : δ ≤ 1 := by linarith
  have hv1 : 2 * v ≤ 1 - δ := by linarith
  have hv2 : δ - 1 ≤ 2 * v := by linarith
  have hv4 : v ^ 2 ≤ (1 - δ) ^ 2 / 4 := by nlinarith
  rcases le_total δ (1 / 5) with hc | hc
  · -- the maximum of the product is at `A = B`
    have amgm : 10 * ((β + Z * (1 - R)) * (1 / 5 - β + R * (1 - Z))) ≤
        5 / 2 * (1 / 5 + R + Z - 2 * R * Z) ^ 2 := by
      nlinarith [sq_nonneg ((β + Z * (1 - R)) - (1 / 5 - β + R * (1 - Z)))]
    have iden : (1 - R * Z) + (β + Z * (1 - R)) + (1 / 5 - β + R * (1 - Z)) -
        5 / 2 * (1 / 5 + R + Z - 2 * R * Z) ^ 2 =
        9 / 40 - δ ^ 2 - 5 / 8 * δ ^ 4 + (4 + 5 * δ ^ 2) * v ^ 2 - 10 * v ^ 4 - v := by
      rw [eR, eZ]; ring
    have hv2' : v ^ 2 ≤ 1 / 4 := by nlinarith
    have hδ2 : δ ^ 2 ≤ 1 / 25 := by nlinarith
    have : 0 < 9 / 40 - δ ^ 2 - 5 / 8 * δ ^ 4 + (4 + 5 * δ ^ 2) * v ^ 2 - 10 * v ^ 4 - v := by
      nlinarith [sq_nonneg (v - 1 / 3), mul_nonneg (sq_nonneg δ) (sq_nonneg v),
        mul_nonneg (sq_nonneg v) (sub_nonneg.2 hv2'), mul_nonneg (sq_nonneg δ) (sub_nonneg.2 hδ2)]
    linarith
  · -- the maximum of the product is at `β = 1/5`
    have mono : (β + Z * (1 - R)) * (1 / 5 - β + R * (1 - Z)) ≤
        (1 / 5 + Z * (1 - R)) * (R * (1 - Z)) := by
      nlinarith [mul_nonneg (sub_nonneg.2 hb1) (show 0 ≤ δ - β by linarith)]
    have iden : (1 - R * Z) + (β + Z * (1 - R)) + (1 / 5 - β + R * (1 - Z)) -
        10 * ((1 / 5 + Z * (1 - R)) * (R * (1 - Z))) =
        (13 / 40 - δ + 3 / 2 * δ ^ 2 - 5 / 8 * δ ^ 4) - v + (4 + 5 * δ ^ 2) * v ^ 2 -
          10 * v ^ 4 := by
      rw [eR, eZ]; ring
    have hC := patternII_C hc hδ1
    have hcoef : 13 / 5 ≤ 3 / 2 + 5 * δ + 5 / 2 * δ ^ 2 := by nlinarith
    have h4 : 10 * v ^ 4 ≤ 5 / 2 * (1 - δ) ^ 2 * v ^ 2 := by
      nlinarith [mul_le_mul_of_nonneg_left hv4 (sq_nonneg v)]
    have : 0 < (13 / 40 - δ + 3 / 2 * δ ^ 2 - 5 / 8 * δ ^ 4) - v + (4 + 5 * δ ^ 2) * v ^ 2 -
        10 * v ^ 4 := by
      nlinarith [sq_nonneg (v - 5 / 26), mul_le_mul_of_nonneg_right hcoef (sq_nonneg v)]
    linarith

/-- (17): `AB/(W + A + B) < 1/10` on the relaxed family `A = β + Z(1 - R)`,
`B = 1/5 - β + R(1 - Z)`, `W = 1 - RZ`, `0 ≤ β ≤ 1/5`, `R, Z ∈ [0, 1]`. -/
theorem relaxed17 {β R Z : ℝ} (hb : 0 ≤ β) (hb1 : β ≤ 1 / 5) (hR : 0 ≤ R) (hR1 : R ≤ 1)
    (hZ : 0 ≤ Z) (hZ1 : Z ≤ 1) :
    10 * ((β + Z * (1 - R)) * (1 / 5 - β + R * (1 - Z))) <
      (1 - R * Z) + (β + Z * (1 - R)) + (1 / 5 - β + R * (1 - Z)) := by
  rcases le_total Z R with h | h
  · exact relaxed17_core hb1 hR1 hZ h
  · have := relaxed17_core (β := 1 / 5 - β) (by linarith) hZ1 hR h
    have e1 : 1 / 5 - (1 / 5 - β) = β := by ring
    rw [e1] at this
    nlinarith [this]

/-- The monotonicity step of (16)–(17): the ratio `AB/(W + A + B)` increases with `A, B ≥ 0` and
decreases with `W ≥ 0`. -/
theorem ratio_mono {A B W A₁ B₁ W₁ : ℝ} (hA0 : 0 ≤ A) (hB0 : 0 ≤ B) (hAA : A ≤ A₁)
    (hBB : B ≤ B₁) (hW1 : 0 ≤ W₁) (hWW : W₁ ≤ W) (hS : 0 < W + A + B)
    (hS₁ : 0 < W₁ + A₁ + B₁) (key : 10 * (A₁ * B₁) < W₁ + A₁ + B₁) :
    10 * (A * B) < W + A + B := by
  have hAB : A * B ≤ A₁ * B₁ := mul_le_mul hAA hBB hB0 (hA0.trans hAA)
  have mono : A * B * (W₁ + A₁ + B₁) ≤ A₁ * B₁ * (W + A + B) := by
    nlinarith [mul_le_mul hAB hWW hW1 (mul_nonneg (hA0.trans hAA) (hB0.trans hBB)),
      mul_nonneg (mul_nonneg hA0 (hA0.trans hAA)) (sub_nonneg.2 hBB),
      mul_nonneg (mul_nonneg hB0 (hB0.trans hBB)) (sub_nonneg.2 hAA)]
  by_contra hcon
  push Not at hcon
  have := mul_le_mul_of_nonneg_left hcon hS₁.le
  nlinarith [mul_lt_mul_of_pos_right key hS]

/-- Pattern II, the relaxation (16)–(17) in the original parameters: with
`A = 2[CDF] = 1 - c + d(c - f)`, `B = 2[DFH] = 1 - h + f(h - d)`, `W = 1 - (h - d)(c - f)` and
`hc > 13/16`, `10AB < W + A + B`. (`H₀ = hc` is relaxed to `1` and `α + β = 2 - h - c < 1/5` to
`1/5`, with `R = (h - d)/h`, `Z = (c - f)/c`.) -/
theorem patternII_ratio {h c d f : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh1 : h ≤ 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c ≤ 1) (hhc : 13 / 16 < h * c) :
    10 * ((1 - c + d * (c - f)) * (1 - h + f * (h - d))) <
      (1 - (h - d) * (c - f)) + (1 - c + d * (c - f)) + (1 - h + f * (h - d)) := by
  have hh : 13 / 16 < h := by nlinarith
  have hc : 13 / 16 < c := by nlinarith
  have hsum : 9 / 5 < h + c := by nlinarith [sq_nonneg (h - c)]
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  obtain ⟨R, eℓ, hR, hR1⟩ : ∃ R : ℝ, h - d = R * h ∧ 0 ≤ R ∧ R < 1 :=
    ⟨(h - d) / h, by field_simp, div_nonneg (by linarith) hh0.le,
      by rw [div_lt_one hh0]; linarith⟩
  obtain ⟨Z, em, hZ, hZ1⟩ : ∃ Z : ℝ, c - f = Z * c ∧ 0 ≤ Z ∧ Z ≤ 1 :=
    ⟨(c - f) / c, by field_simp, div_nonneg (by linarith) hc0.le,
      by rw [div_le_one hc0]; linarith⟩
  have hH1 : h * c ≤ 1 := by nlinarith
  have eA : 1 - c + d * (c - f) = (1 - c) + h * c * (Z * (1 - R)) := by
    have : d = h * (1 - R) := by linarith
    rw [em, this]; ring
  have eB : 1 - h + f * (h - d) = (1 - h) + h * c * (R * (1 - Z)) := by
    have : f = c * (1 - Z) := by linarith
    rw [eℓ, this]; ring
  have eW : 1 - (h - d) * (c - f) = 1 - h * c * (R * Z) := by rw [eℓ, em]; ring
  have hp1 : 0 ≤ Z * (1 - R) := mul_nonneg hZ (by linarith)
  have hp2 : 0 ≤ R * (1 - Z) := mul_nonneg hR (by linarith)
  have hp3 : 0 ≤ R * Z := mul_nonneg hR hZ
  have q1 := mul_le_of_le_one_left hp1 hH1
  have q2 := mul_le_of_le_one_left hp2 hH1
  have q3 := mul_le_of_le_one_left hp3 hH1
  have q4 : R * Z ≤ R := mul_le_of_le_one_right hR hZ1
  have r1 : 0 ≤ h * c * (Z * (1 - R)) := mul_nonneg (mul_nonneg hh0.le hc0.le) hp1
  have r2 : 0 ≤ h * c * (R * (1 - Z)) := mul_nonneg (mul_nonneg hh0.le hc0.le) hp2
  rw [eA, eB, eW]
  exact ratio_mono (A₁ := (1 - c) + Z * (1 - R)) (B₁ := (1 / 5 - (1 - c)) + R * (1 - Z))
    (W₁ := 1 - R * Z) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith) (by linarith) (by linarith)
    (relaxed17 (β := 1 - c) (by linarith) (by linarith) hR hR1.le hZ hZ1)

/-- **Claim** (`ONE_CORNER:claim-pentagon-opposite-quadrants`), Pattern II is impossible
(lines 546–663): under the same parameter ranges, `hc > 13/16` (11) and the second inequality of
Pattern II, `W(1 - x)(1 - y) ≥ σ(3 - x - y)` at `σ = 7/64`, are incompatible (the relaxed ratio
`AB/(W + A + B)` of (17) is below `1/10 < σ`). -/
theorem claim_pattern_II (h c d f : ℝ) (hd : 0 < d) (hdh : d ≤ h) (hh1 : h ≤ 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c ≤ 1) (_hx : 0 < diagX h c d f) (hx1 : diagX h c d f < 1)
    (_hy : 0 < diagY h c d f) (hy1 : diagY h c d f < 1) (hhc : 13 / 16 < h * c)
    (hII : 7 / 64 * (3 - diagX h c d f - diagY h c d f) ≤
      quadWOf h c d f * (1 - diagX h c d f) * (1 - diagY h c d f)) : False := by
  obtain ⟨hW, -, hW', -, -, eA, eB⟩ := diag_identities hd hdh hh1 hf hfc hc1
  set W := quadWOf h c d f
  set x := diagX h c d f
  set y := diagY h c d f
  have key := patternII_ratio hd hdh hh1 hf hfc hc1 hhc
  rw [← eA, ← eB, ← hW'] at key
  have hII' := mul_le_mul_of_nonneg_left hII hW.le
  have hpos : 0 < W * (1 - x) := mul_pos hW (by linarith)
  have hpos' : 0 < W * (1 - y) := mul_pos hW (by linarith)
  nlinarith

/-- `√3 > 12/7`. -/
theorem sqrt3_gt_12_7 : (12 / 7 : ℝ) < Real.sqrt 3 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

/-- `(4 + 2√3) · 2A₀ > 13/16` (11). -/
theorem K_two_A₀ : 13 / 16 < (4 + 2 * Real.sqrt 3) * (2 * A₀) := by
  have := sqrt3_gt_12_7
  have := A₀_bounds.1
  nlinarith

/-- (11) and (18): two further points strictly inside a triangle of a configuration of least area
at least `A₀` force its doubled area above `13/16` (two-interior-point lemma). -/
theorem doubled_gt_of_two_inside {A B C P Q : Point} (hP : InsideTriangle P A B C)
    (hQ : InsideTriangle Q A B C) (hmin : A₀ ≤ minTriangleArea ![A, B, C, P, Q]) :
    13 / 16 < |sarea A B C| := by
  have := twoInteriorPointLemma A B C P Q hP hQ A₀ A₀_pos hmin
  rw [triangleArea_eq] at this
  linarith [K_two_A₀]

/-- Inequality (5) of `QUADRILATERAL_HULL.md` Theorem 1 in the diagonal coordinates: from
`s(W + Wp + Wq) ≤ (Wp)(Wq)` with `s ≥ σ`, the pattern inequality `σ(1 + p + q) ≤ Wpq`. -/
theorem sector_to_pattern {w p q s : ℝ} (hw : 0 < w) (hs : 7 / 64 ≤ s) (hpq : 0 < 1 + p + q)
    (h : s * (w + w * p + w * q) ≤ (w * p) * (w * q)) : 7 / 64 * (1 + p + q) ≤ w * p * q := by
  have e : s * (w + w * p + w * q) = w * (s * (1 + p + q)) := by ring
  have e2 : (w * p) * (w * q) = w * (w * p * q) := by ring
  rw [e, e2] at h
  have := le_of_mul_le_mul_left h hw
  nlinarith

/-- The diagonal parameters of a C1 anchor quadrilateral `HCDF` lie in `(0, 1)`. -/
theorem diag_mem {h c d f : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh1 : h < 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c < 1) :
    0 < diagX h c d f ∧ diagX h c d f < 1 ∧ 0 < diagY h c d f ∧ diagY h c d f < 1 := by
  obtain ⟨hw, -, -, ex, ey, eA, eB⟩ := diag_identities hd hdh hh1.le hf hfc hc1.le
  have hx : 0 < quadWOf h c d f * diagX h c d f := by
    rw [ex]; nlinarith [mul_pos (show 0 < c by linarith) (show 0 < 1 - h by linarith),
      mul_pos (show 0 < h by linarith) hf]
  have hx1 : 0 < quadWOf h c d f * (1 - diagX h c d f) := by
    rw [eA]; nlinarith [mul_nonneg hd.le (show 0 ≤ c - f by linarith)]
  have hy : 0 < quadWOf h c d f * diagY h c d f := by
    rw [ey]; nlinarith [mul_pos (show 0 < h by linarith) (show 0 < 1 - c by linarith),
      mul_pos (show 0 < c by linarith) hd]
  have hy1 : 0 < quadWOf h c d f * (1 - diagY h c d f) := by
    rw [eB]; nlinarith [mul_nonneg hf.le (show 0 ≤ h - d by linarith)]
  refine ⟨pos_of_mul_pos_right hx hw.le, ?_, pos_of_mul_pos_right hy hw.le, ?_⟩
  · linarith [pos_of_mul_pos_right hx1 hw.le]
  · linarith [pos_of_mul_pos_right hy1 hw.le]

/-- The doubled areas of the four anchor triangles of `HCDF` in the diagonal coordinates. -/
theorem diag_areas {h c d f : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh1 : h ≤ 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c ≤ 1) :
    sarea (0, h) (c, 0) (1, d) = quadWOf h c d f * diagY h c d f ∧
      sarea (0, h) (c, 0) (f, 1) = quadWOf h c d f * diagX h c d f ∧
      sarea (c, 0) (1, d) (f, 1) = quadWOf h c d f * (1 - diagX h c d f) ∧
      sarea (1, d) (f, 1) (0, h) = quadWOf h c d f * (1 - diagY h c d f) := by
  obtain ⟨-, -, -, ex, ey, eA, eB⟩ := diag_identities hd hdh hh1 hf hfc hc1
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [ey]; unfold sarea; ring
  · rw [ex]; unfold sarea; ring
  · rw [eA]; unfold sarea; ring
  · rw [eB]; unfold sarea; ring

/-- §7, Pattern I: a point in the diagonal sector of `HCDF` at `FH` and one in the opposite
sector at `CD`, all relevant doubled areas at least `s ≥ σ`, force `hc ≤ 625/896`, against
`hc > 13/16`. -/
theorem pentagon_patI {h c d f s : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh1 : h < 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c < 1) (hhc : 13 / 16 < h * c) (hs : 7 / 64 ≤ s) {P Q : Point}
    (p1 : s ≤ sarea (c, 0) (f, 1) P) (p2 : s ≤ sarea (0, h) (1, d) P)
    (p3 : s ≤ sarea (f, 1) (0, h) P) (q1 : s ≤ sarea (f, 1) (c, 0) Q)
    (q2 : s ≤ sarea (1, d) (0, h) Q) (q3 : s ≤ sarea (c, 0) (1, d) Q) : False := by
  obtain ⟨hw, -, -, -, -, -, -⟩ := diag_identities hd hdh hh1.le hf hfc hc1.le
  obtain ⟨hx, hx1, hy, hy1⟩ := diag_mem hd hdh hh1 hf hfc hc1
  obtain ⟨aHCD, aHCF, aCDF, aDFH⟩ := diag_areas hd hdh hh1.le hf hfc hc1.le
  set w := quadWOf h c d f
  set x := diagX h c d f
  set y := diagY h c d f
  have pw : ∀ p : ℝ, 0 < p → 0 < w * p := fun p hp => mul_pos hw hp
  have e1 : sarea (0, h) (1, d) (f, 1) = w * (1 - y) := by rw [← aDFH]; unfold sarea; ring
  have e2 : sarea (1, d) (0, h) (c, 0) = w * y := by rw [← aHCD]; unfold sarea; ring
  have e3 : sarea (1, d) (f, 1) (c, 0) = w * (1 - x) := by rw [← aCDF]; unfold sarea; ring
  have s1 := QuadrilateralHull.sector_bound (A := (0, h)) (B := (c, 0)) (C := (1, d))
    (D := (f, 1)) (by rw [aHCD, e1]; nlinarith [pw y hy, pw (1 - y) (by linarith)])
    (by rw [aHCF]; exact pw x hx) (by rw [aDFH]; exact pw (1 - y) (by linarith)) p1 p2 p3
  have s2 := QuadrilateralHull.sector_bound (A := (1, d)) (B := (f, 1)) (C := (0, h))
    (D := (c, 0)) (by rw [aDFH, e2]; nlinarith [pw y hy, pw (1 - y) (by linarith)])
    (by rw [e3]; exact pw (1 - x) (by linarith)) (by rw [aHCD]; exact pw y hy) q1 q2 q3
  rw [aHCD, e1, aHCF, aDFH] at s1
  rw [aDFH, e2, e3, aHCD] at s2
  have I1 := sector_to_pattern (p := x) (q := 1 - y) hw hs (by linarith) (by linarith [s1])
  have I2 := sector_to_pattern (p := y) (q := 1 - x) hw hs (by linarith) (by linarith [s2])
  have := claim_pattern_I h c d f hd hdh hh1.le hf hfc hc1.le hx hx1 hy hy1
    (by linarith [I1]) (by linarith [I2])
  linarith

/-- §7, Pattern II: a point in the diagonal sector of `HCDF` at `DF`, all relevant doubled
areas at least `s ≥ σ`, is incompatible with `hc > 13/16`. -/
theorem pentagon_patII {h c d f s : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh1 : h < 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c < 1) (hhc : 13 / 16 < h * c) (hs : 7 / 64 ≤ s) {P : Point}
    (p1 : s ≤ sarea (0, h) (1, d) P) (p2 : s ≤ sarea (f, 1) (c, 0) P)
    (p3 : s ≤ sarea (1, d) (f, 1) P) : False := by
  obtain ⟨hw, -, -, -, -, -, -⟩ := diag_identities hd hdh hh1.le hf hfc hc1.le
  obtain ⟨hx, hx1, hy, hy1⟩ := diag_mem hd hdh hh1 hf hfc hc1
  obtain ⟨-, aHCF, aCDF, aDFH⟩ := diag_areas hd hdh hh1.le hf hfc hc1.le
  set w := quadWOf h c d f
  set x := diagX h c d f
  set y := diagY h c d f
  have pw : ∀ p : ℝ, 0 < p → 0 < w * p := fun p hp => mul_pos hw hp
  have e1 : sarea (f, 1) (0, h) (c, 0) = w * x := by rw [← aHCF]; unfold sarea; ring
  have e2 : sarea (f, 1) (c, 0) (1, d) = w * (1 - x) := by rw [← aCDF]; unfold sarea; ring
  have e3 : sarea (f, 1) (0, h) (1, d) = w * (1 - y) := by rw [← aDFH]; unfold sarea; ring
  have s1 := QuadrilateralHull.sector_bound (A := (f, 1)) (B := (0, h)) (C := (c, 0))
    (D := (1, d)) (by rw [e1, e2]; nlinarith [pw x hx, pw (1 - x) (by linarith)])
    (by rw [e3]; exact pw (1 - y) (by linarith)) (by rw [aCDF]; exact pw (1 - x) (by linarith))
    p1 p2 p3
  rw [e1, e2, e3, aCDF] at s1
  have I := sector_to_pattern (p := 1 - y) (q := 1 - x) hw hs (by linarith) (by linarith [s1])
  have e4 : w * (1 - y) * (1 - x) = w * (1 - x) * (1 - y) := by ring
  exact claim_pattern_II h c d f hd hdh hh1.le hf hfc hc1.le hx hx1 hy hy1 hhc
    (by linarith [I, e4])

/-- (11): two free points strictly inside `OHC` give `hc > 13/16`. -/
theorem hc_gt_of_two_lower {h c d f : ℝ} (hanch : C1Anchors h c d f) {W X Y Z : Point}
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (hW : InsideTriangle W (0, 0) (0, h) (c, 0)) (hX : InsideTriangle X (0, 0) (0, h) (c, 0)) :
    13 / 16 < h * c := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have := doubled_gt_of_two_inside hW hX (min_sub hmin ![(0, 0), (0, h), (c, 0), W, X]
    ![0, 4, 1, 5, 6] (by norm_num) (by inj_tac) (by intro x; fin_cases x <;> rfl))
  rw [show sarea ((0 : ℝ), (0 : ℝ)) (0, h) (c, 0) = -(h * c) by unfold sarea; ring, abs_neg,
    abs_of_pos (mul_pos (by linarith) (by linarith))] at this
  exact this

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
  have hhc := hc_gt_of_two_lower hanch hmin hW hX
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have hs : 7 / 64 ≤ 2 * A₀ := by linarith [A₀_bounds.1]
  obtain ⟨y1, y2, y3, y4⟩ := hY
  obtain ⟨z1, z2, z3, z4⟩ := hZ
  have neg : ∀ {P Q R : Point}, sarea P Q R < 0 → 0 < sarea Q P R := fun hn => by
    rw [sarea_swap₁₂]; linarith
  have ge : ∀ (i j k : Fin 9), i ≠ j → j ≠ k → i ≠ k →
      0 < sarea (c1Config h c d f W X Y Z i) (c1Config h c d f W X Y Z j)
        (c1Config h c d f W X Y Z k) →
      2 * A₀ ≤ sarea (c1Config h c d f W X Y Z i) (c1Config h c d f W X Y Z j)
        (c1Config h c d f W X Y Z k) :=
    fun i j k hij hjk hik hpos => sarea_ge_of_le_min_of_pos A₀_pos hmin i j k hpos hij hjk hik
  clear hmin hW hX
  rcases mul_neg_iff.1 hHD with ⟨hY1, hZ1⟩ | ⟨hY1, hZ1⟩ <;>
    rcases mul_neg_iff.1 hCF with ⟨hY2, hZ2⟩ | ⟨hY2, hZ2⟩
  · -- `Y` in the sector at `FH`, `Z` in the sector at `CD`
    exact pentagon_patI hd hdh hh1 hf hfc hc1 hhc hs
      (ge 1 3 7 (by decide) (by decide) (by decide) hY2)
      (ge 4 2 7 (by decide) (by decide) (by decide) hY1)
      (ge 3 4 7 (by decide) (by decide) (by decide) y4)
      (ge 3 1 8 (by decide) (by decide) (by decide) (neg hZ2))
      (ge 2 4 8 (by decide) (by decide) (by decide) (neg hZ1))
      (ge 1 2 8 (by decide) (by decide) (by decide) z2)
  · -- `Y` in the sector at `DF`
    exact pentagon_patII hd hdh hh1 hf hfc hc1 hhc hs
      (ge 4 2 7 (by decide) (by decide) (by decide) hY1)
      (ge 3 1 7 (by decide) (by decide) (by decide) (neg hY2))
      (ge 2 3 7 (by decide) (by decide) (by decide) y3)
  · -- `Z` in the sector at `DF`
    exact pentagon_patII hd hdh hh1 hf hfc hc1 hhc hs
      (ge 4 2 8 (by decide) (by decide) (by decide) hZ1)
      (ge 3 1 8 (by decide) (by decide) (by decide) (neg hZ2))
      (ge 2 3 8 (by decide) (by decide) (by decide) z3)
  · -- `Z` in the sector at `FH`, `Y` in the sector at `CD`
    exact pentagon_patI hd hdh hh1 hf hfc hc1 hhc hs
      (ge 1 3 8 (by decide) (by decide) (by decide) hZ2)
      (ge 4 2 8 (by decide) (by decide) (by decide) hZ1)
      (ge 3 4 8 (by decide) (by decide) (by decide) z4)
      (ge 3 1 7 (by decide) (by decide) (by decide) (neg hY2))
      (ge 2 4 7 (by decide) (by decide) (by decide) (neg hY1))
      (ge 1 2 7 (by decide) (by decide) (by decide) y2)

/-! ### §8. Both upper points in `HDF` or both in `CDF` -/

/-- The area-only argument of §8, (18)–(21): `hc ≥ R`, `2[HDF] ≥ R`, `cd ≥ σ` and
`2[CDF] ≥ σ` (`R = 13/16`, `σ = 7/64`) are incompatible for C1 anchors. -/
theorem hdf_core {h c d f : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh1 : h < 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc1 : c < 1) (h1 : 13 / 16 ≤ h * c) (h2 : 13 / 16 ≤ 1 - h + f * (h - d))
    (h3 : 7 / 64 ≤ c * d) (h4 : 7 / 64 ≤ 1 - c + d * (c - f)) : False := by
  have hc0 : 0 < c := by linarith
  -- (20), multiplied by `c`
  have e20 : 13 / 16 * c ≤ c - 13 / 16 * (1 - f) - c * f * d := by
    nlinarith [mul_le_mul_of_nonneg_right h1 (show (0:ℝ) ≤ 1 - f by linarith),
      mul_le_mul_of_nonneg_left h2 hc0.le]
  -- `q = cd < R`
  have hq : c * d < 13 / 16 := by
    by_contra hq
    push Not at hq
    nlinarith [mul_le_mul_of_nonneg_left hq hf.le]
  have e20' : c * (c * d) + (c - f) * (13 / 16 - c * d) ≤ c - 13 / 16 := by linarith
  rcases le_total c (1 - 7 / 64) with hc | hc
  · have k1 : 13 / 16 ≤ c * (1 - c * d) := by
      nlinarith [mul_le_mul_of_nonneg_right hfc (show (0:ℝ) ≤ 13 / 16 - c * d by linarith)]
    have k2 : c * (1 - c * d) ≤ c * (1 - 7 / 64) := by nlinarith
    have k3 : c * (1 - 7 / 64) ≤ (1 - 7 / 64) * (1 - 7 / 64) := by nlinarith
    linarith
  · set k := c + 7 / 64 - 1 with hk
    have hk1 : k ≤ d * (c - f) := by linarith
    have hk0 : 0 ≤ k := by linarith
    have hkσ : k ≤ 7 / 64 := by linarith
    -- (21) multiplied by `q`
    have main : (c * d) ^ 2 + k * (13 / 16 - c * d) ≤ d * (c - 13 / 16) := by
      have := mul_le_mul_of_nonneg_left e20' hd.le
      have := mul_le_mul_of_nonneg_right hk1 (show (0:ℝ) ≤ 13 / 16 - c * d by linarith)
      nlinarith
    -- its left side is below `(σ + 2k)q`
    have lhs : d * (c - 13 / 16) + k * (c * d) < (7 / 64 + 2 * k) * (c * d) := by
      have : c * (2 - 2 * (7 / 64) - c) < 13 / 16 := by nlinarith [sq_nonneg (c - (1 - 7 / 64))]
      have e : (7 / 64 + 2 * k) * (c * d) - (d * (c - 13 / 16) + k * (c * d)) =
          d * (13 / 16 - c * (2 - 2 * (7 / 64) - c)) := by rw [hk]; ring
      have : 0 < d * (13 / 16 - c * (2 - 2 * (7 / 64) - c)) := mul_pos hd (by linarith)
      linarith
    -- its right side is above `(σ + 2k)q`
    have rhs : (7 / 64 + 2 * k) * (c * d) ≤ (c * d) ^ 2 + k * (13 / 16) := by
      have e : 7 / 64 * ((c * d) ^ 2 + k * (13 / 16) - (7 / 64 + 2 * k) * (c * d)) =
          (7 / 64 - k) * (c * d - 7 / 64) * (c * d) +
            k * ((c * d - 3 / 2 * (7 / 64)) ^ 2 + 7 / 64 * (13 / 16 - 9 / 4 * (7 / 64))) := by
        ring
      have : 0 ≤ (7 / 64 - k) * (c * d - 7 / 64) * (c * d) :=
        mul_nonneg (mul_nonneg (by linarith) (by linarith)) (by linarith)
      have : 0 ≤ k * ((c * d - 3 / 2 * (7 / 64)) ^ 2 + 7 / 64 * (13 / 16 - 9 / 4 * (7 / 64))) :=
        mul_nonneg hk0 (by positivity)
      nlinarith
    nlinarith

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
  have hanch' := hanch
  obtain ⟨t1, t2, -, -, -, -, -, -⟩ := claim_anchor_bounds h c d f (2 * A₀) hanch W X Y Z
    (by linarith [A₀_pos]) (by linarith)
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have hs : 7 / 64 ≤ 2 * A₀ := by linarith [A₀_bounds.1]
  have hhc := hc_gt_of_two_lower hanch' hmin hW hX
  have eHDF : sarea (0, h) (1, d) (f, 1) = 1 - h + f * (h - d) := by unfold sarea; ring
  have eCDF : sarea (c, 0) (1, d) (f, 1) = 1 - c + d * (c - f) := by unfold sarea; ring
  have pHDF : 0 < 1 - h + f * (h - d) := by nlinarith [mul_nonneg hf.le (sub_nonneg.2 hdh)]
  have pCDF : 0 < 1 - c + d * (c - f) := by nlinarith [mul_nonneg hd.le (sub_nonneg.2 hfc)]
  have gHDF : 2 * A₀ ≤ 1 - h + f * (h - d) := by
    have hA : A₀ ≤ triangleArea (0, h) (1, d) (f, 1) := area_of_le_min hmin 4 2 3
    have := two_le_abs hA
    rwa [eHDF, abs_of_pos pHDF] at this
  have gCDF : 2 * A₀ ≤ 1 - c + d * (c - f) := by
    have hA : A₀ ≤ triangleArea (c, 0) (1, d) (f, 1) := area_of_le_min hmin 1 2 3
    have := two_le_abs hA
    rwa [eCDF, abs_of_pos pCDF] at this
  constructor
  · rintro ⟨hY, hZ⟩
    have := doubled_gt_of_two_inside hY hZ (min_sub hmin ![(0, h), (1, d), (f, 1), Y, Z]
      ![4, 2, 3, 7, 8] (by norm_num) (by inj_tac) (by intro x; fin_cases x <;> rfl))
    rw [eHDF, abs_of_pos pHDF] at this
    exact hdf_core hd hdh hh1 hf hfc hc1 hhc.le this.le (by linarith) (by linarith)
  · rintro ⟨hY, hZ⟩
    have := doubled_gt_of_two_inside hY hZ (min_sub hmin ![(c, 0), (1, d), (f, 1), Y, Z]
      ![1, 2, 3, 7, 8] (by norm_num) (by inj_tac) (by intro x; fin_cases x <;> rfl))
    rw [eCDF, abs_of_pos pCDF] at this
    -- the reflection across `x = y`: `(h, c, d, f) ↦ (c, h, f, d)` exchanges `HDF` and `CDF`
    exact hdf_core (h := c) (c := h) (d := f) (f := d) hf hfc hc1 hd hdh hh1
      (by linarith [mul_comm h c]) this.le (by linarith) (by linarith)

end Heilbronn.OneCorner
