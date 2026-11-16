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
    simp only [cornerNormalize, rectangle, Set.mem_setOf_eq]
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
    simp only [Set.mem_setOf_eq] at hi ⊢
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
  unfold diagX diagY
  unfold quadWOf at hW ⊢
  constructor
  · rw [mul_div_assoc', ← add_div, eq_div_iff hW]; ring
  · rw [mul_div_assoc', ← add_div, eq_div_iff hW]; ring

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
