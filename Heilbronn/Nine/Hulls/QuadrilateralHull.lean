module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.Corners.CornerFamilies.SixPoint
public import Heilbronn.Nine.Corners.OppositeCorners

/-! # Quadrilateral hulls and restrictions on the low-contact families (`docs/proof/nine/QUADRILATERAL_HULL.md`)

**Role.** A component on the primary route.
* Theorem 1 is used by `SIX_BOUNDARY_SINGLE_SIDE`, `SIX_BOUNDARY_SINGLE_TOP(_COMPLETION)`,
  `SEVEN_BOUNDARY_CAPS`, `C1_ZERO_LOWER`, `C1_ONE_LOWER_TOP_CAP`, `SIX_BOUNDARY_HULL` and
  `ONE_CORNER`.
* Theorem 2 and Corollary 3 are used by `C1_ZERO_LOWER`.
* Theorem 4 is used by `SIX_BOUNDARY_SINGLE_SIDE`, `SIX_BOUNDARY_SINGLE_TOP(_COMPLETION)`,
  `SIX_BOUNDARY_EXTERIOR` and `SEVEN_BOUNDARY_CAPS`.
* §4 is used by `SIX_BOUNDARY_HULL` and `ONE_CORNER`.
* Lemma 5 is used by `SIX_BOUNDARY_HULL` (lines 181-182).

**Setting.** Small point sets with a quadrilateral hull, and the normal forms N
(`NAnchors`/`nConfig`) and C1 (`C1Anchors`/`c1Config`) of `Setup/Families.lean`.
`K = 4 + 2√3` and `Γ = (11 + 3√5)/2` are the triangular-hull constants of `CORNER_FAMILIES.md`
(written out). A convex quadrilateral `ABCD` is given by its vertices in counterclockwise order
(`ConvexQuad`). "The six (seven) points have that quadrilateral hull" means that the other points
lie in the closed quadrilateral (`InClosedQuad`). "Contains" means strictly inside (`InQuad`).
`quadArea` is the area, `(sarea A B C + sarea A C D)/2`.

**Results.**
* `theorem1`: six points with a quadrilateral hull of area `S` have least area at most `S/8`. Equality
  holds only for an affine image of the square corners with `(1/4,1/2), (3/4,1/2)`.
  `claim_attainment`: that configuration attains `1/8`.
* `theorem2`: seven points with a quadrilateral hull of area `S` satisfy `S ≥ (Γ+1)t`.
* `corollary3`: at least area `A₀`, a convex quadrilateral of four actual points with area at most
  `1/2` contains at most two further points.
* `theorem4`: in N, two free points in `T₀ = conv{(0,0), H, C}` force least area at most
  `7hc/128 ≤ 7/128 < A₀`.
* `claim_13`, `claim_14_15`, `claim_16_18`: §4, the anchor hull consequences for N and C1.
* `lemma5`: in N the ears `ABH` and `ABC` are not both occupied, and the transposition exchanging
  them preserves N.

**Implicit in the manuscript.**
* Corollary 3: the quadrilateral is convex (its four vertices in convex position). The manuscript
  says only "a quadrilateral spanned by four actual configuration points". It is stated for any
  configuration (any number of points; the threshold `A₀` is what matters).
* §4 (14)-(18): "the hull is exactly the hexagon `ABCDFH`" (respectively the pentagon `ACDFH`) is
  stated as "every free point lies strictly inside it" (`InNHexagon`, `InC1Pentagon`). The lower
  part (`HABC`, respectively the triangle `AHC`) is the side of the line `HC` containing `(0,0)`,
  where `sarea H C X < 0`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.QuadrilateralHull

/-! ### Convex quadrilaterals -/

/-- `A, B, C, D` are the counterclockwise vertices of a convex quadrilateral. -/
def ConvexQuad (A B C D : Point) : Prop :=
  0 < sarea A B C ∧ 0 < sarea B C D ∧ 0 < sarea C D A ∧ 0 < sarea D A B

/-- `X` lies strictly inside the counterclockwise convex quadrilateral `ABCD`. -/
def InQuad (X A B C D : Point) : Prop :=
  0 < sarea A B X ∧ 0 < sarea B C X ∧ 0 < sarea C D X ∧ 0 < sarea D A X

/-- `X` lies in the closed counterclockwise convex quadrilateral `ABCD`. -/
def InClosedQuad (X A B C D : Point) : Prop :=
  0 ≤ sarea A B X ∧ 0 ≤ sarea B C X ∧ 0 ≤ sarea C D X ∧ 0 ≤ sarea D A X

/-- The area of the counterclockwise quadrilateral `ABCD`. -/
def quadArea (A B C D : Point) : ℝ := (sarea A B C + sarea A C D) / 2

/-- The equality configuration of Theorem 1: the four corners of the square and
`(1/4, 1/2), (3/4, 1/2)`. -/
def sixQuadExtremal : Fin 6 → Point :=
  ![(0, 0), (1, 0), (1, 1), (0, 1), (1 / 4, 1 / 2), (3 / 4, 1 / 2)]

/-! ### Helpers -/

/-- A sub-configuration given by an injective reindexing has least area at least that of the
configuration. -/
theorem le_min_sub {n m : ℕ} (hm : 3 ≤ m) {P : Fin n → Point} {Q : Fin m → Point}
    (f : Fin m → Fin n) (hf : Function.Injective f) (hQ : ∀ i, Q i = P (f i)) {t : ℝ}
    (h : t ≤ minTriangleArea P) : t ≤ minTriangleArea Q := by
  have e : P ∘ f = Q := funext fun i => (hQ i).symm
  have := le_min_comp hm P hf
  rw [e] at this
  linarith

theorem sqrt3_gt : (3 / 2 : ℝ) < Real.sqrt 3 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

theorem sqrt5_gt : (2 : ℝ) < Real.sqrt 5 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

/-- A positively oriented triangle has area half its doubled signed area. -/
theorem triangleArea_of_pos {p q r : Point} (h : 0 < sarea p q r) :
    triangleArea p q r = sarea p q r / 2 := by
  rw [triangleArea_eq, abs_of_pos h]

theorem ConvexQuad.rotate {A B C D : Point} (h : ConvexQuad A B C D) : ConvexQuad B C D A :=
  ⟨h.2.1, h.2.2.1, h.2.2.2, h.1⟩

theorem quadArea_rotate (A B C D : Point) : quadArea B C D A = quadArea A B C D := by
  unfold quadArea sarea; ring

theorem ConvexQuad.quadArea_pos {A B C D : Point} (h : ConvexQuad A B C D) :
    0 < quadArea A B C D := by
  have h2 : 0 < sarea A C D := by rw [← sarea_cycle]; exact h.2.2.1
  unfold quadArea; linarith [h.1]

/-- The signed-area identity behind `(5)`: for a point `P` and a quadrilateral `ABCD` of doubled
area `W`, `W·[DAP] = [ABD][CDA] - [CDA][BDP] - [ABD][ACP]`. -/
theorem sector_identity (A B C D P : Point) :
    (sarea A B C + sarea A C D) * sarea D A P =
      sarea A B D * sarea C D A - sarea C D A * sarea B D P - sarea A B D * sarea A C P := by
  unfold sarea; ring

/-- Inequality `(5)`: a point `P` in the diagonal sector `ODA` of the counterclockwise convex
quadrilateral `ABCD` whose three triangles `BDP, ACP, DAP` have doubled area at least `s` gives
`s(W + [ABD] + [CDA]) ≤ [ABD][CDA]`, `W = [ABC] + [ACD]`. -/
theorem sector_bound {A B C D P : Point} {s : ℝ} (hW : 0 < sarea A B C + sarea A C D)
    (hα : 0 < sarea A B D) (hδ : 0 < sarea C D A)
    (h1 : s ≤ sarea B D P) (h2 : s ≤ sarea A C P) (h3 : s ≤ sarea D A P) :
    s * (sarea A B C + sarea A C D + sarea A B D + sarea C D A) ≤
      sarea A B D * sarea C D A := by
  have e := sector_identity A B C D P
  nlinarith [mul_le_mul_of_nonneg_left h3 hW.le, mul_le_mul_of_nonneg_left h1 hδ.le,
    mul_le_mul_of_nonneg_left h2 hα.le]

/-- The AM-GM step `(6)`. -/
theorem amgm_bound {W α β γ δ s : ℝ} (_hW : 0 < W) (hα : 0 < α) (hβ : 0 < β) (hγ : 0 < γ)
    (hδ : 0 < δ) (hsum : α + β + γ + δ = 2 * W) (h1 : s * (W + α + δ) ≤ α * δ)
    (h2 : s * (W + β + γ) ≤ β * γ) : 8 * s ≤ W := by
  by_contra hc
  push Not at hc
  rcases le_total (α + δ) W with hu | hu
  · nlinarith [sq_nonneg (α - δ), mul_nonneg (sub_nonneg.2 hu) (by linarith : (0 : ℝ) ≤ W + 2 * (α + δ)),
      mul_pos (sub_pos.2 hc) (by linarith : (0 : ℝ) < W + α + δ)]
  · have hv : β + γ ≤ W := by linarith
    nlinarith [sq_nonneg (β - γ), mul_nonneg (sub_nonneg.2 hv) (by linarith : (0 : ℝ) ≤ W + 2 * (β + γ)),
      mul_pos (sub_pos.2 hc) (by linarith : (0 : ℝ) < W + β + γ)]

/-- The equality case of `(6)`: all four diagonal triangles have half the doubled area. -/
theorem amgm_eq {W α β γ δ s : ℝ} (_hW : 0 < W) (hα : 0 < α) (hβ : 0 < β) (hγ : 0 < γ)
    (hδ : 0 < δ) (hsum : α + β + γ + δ = 2 * W) (h1 : s * (W + α + δ) ≤ α * δ)
    (h2 : s * (W + β + γ) ≤ β * γ) (heq : 8 * s = W) (hαγ : α + γ = W) :
    α = W / 2 ∧ β = W / 2 ∧ γ = W / 2 ∧ δ = W / 2 := by
  have hu : W ≤ α + δ := by
    nlinarith [sq_nonneg (α - δ), (by linarith : (0 : ℝ) < W + 2 * (α + δ))]
  have hv : W ≤ β + γ := by
    nlinarith [sq_nonneg (β - γ), (by linarith : (0 : ℝ) < W + 2 * (β + γ))]
  have hu' : α + δ = W := by linarith
  have hv' : β + γ = W := by linarith
  have had : α = δ := by nlinarith [sq_nonneg (α - δ)]
  have hbg : β = γ := by nlinarith [sq_nonneg (β - γ)]
  refine ⟨by linarith, by linarith, by linarith, by linarith⟩

/-- Two lines with independent directions determine a point by its two signed areas. -/
theorem eq_of_two_sarea {E F G H X Y : Point}
    (hdet : (F.1 - E.1) * (H.2 - G.2) - (F.2 - E.2) * (H.1 - G.1) ≠ 0)
    (h1 : sarea E F X = sarea E F Y) (h2 : sarea G H X = sarea G H Y) : X = Y := by
  unfold sarea at h1 h2
  have ex : ((F.1 - E.1) * (H.2 - G.2) - (F.2 - E.2) * (H.1 - G.1)) * (X.1 - Y.1) = 0 := by
    linear_combination (H.1 - G.1) * h1 - (F.1 - E.1) * h2
  have ey : ((F.1 - E.1) * (H.2 - G.2) - (F.2 - E.2) * (H.1 - G.1)) * (X.2 - Y.2) = 0 := by
    linear_combination (H.2 - G.2) * h1 - (F.2 - E.2) * h2
  rcases mul_eq_zero.1 ex with h | h
  · exact absurd h hdet
  rcases mul_eq_zero.1 ey with h' | h'
  · exact absurd h' hdet
  exact Prod.ext (by linarith) (by linarith)

/-- `X` is a nondegenerate affine image of the extremal configuration of Theorem 1. -/
def IsExtremalImage (X : Fin 6 → Point) : Prop :=
  ∃ a b c d e f : ℝ, a * d - b * c ≠ 0 ∧ ∀ i, X i = affineMap a b c d e f (sixQuadExtremal i)

/-- The equality configuration: a parallelogram with the two points at the prescribed places. -/
theorem isExtremalImage_of_eq {A B C D P Q : Point} {W : ℝ} (hW : 0 < W)
    (hα : sarea A B D = W / 2) (hβ : sarea A B C = W / 2) (hδ : sarea C D A = W / 2)
    (hP1 : sarea B D P = W / 8) (hP2 : sarea A C P = W / 8)
    (hQ1 : sarea D B Q = W / 8) (hQ2 : sarea C A Q = W / 8) :
    IsExtremalImage ![A, B, C, D, P, Q] := by
  refine ⟨B.1 - A.1, D.1 - A.1, B.2 - A.2, D.2 - A.2, A.1, A.2, ?_, ?_⟩
  · have : (B.1 - A.1) * (D.2 - A.2) - (D.1 - A.1) * (B.2 - A.2) = sarea A B D := by
      unfold sarea; ring
    rw [this, hα]; positivity
  have hdet1 : (B.1 - A.1) * (A.2 - D.2) - (B.2 - A.2) * (A.1 - D.1) ≠ 0 := by
    have : (B.1 - A.1) * (A.2 - D.2) - (B.2 - A.2) * (A.1 - D.1) = -sarea A B D := by
      unfold sarea; ring
    rw [this, hα]; intro h; linarith
  have hC : C = (B.1 + D.1 - A.1, B.2 + D.2 - A.2) := by
    refine eq_of_two_sarea (E := A) (F := B) (G := D) (H := A) hdet1 ?_ ?_
    · rw [hβ, ← hα]; unfold sarea; ring
    · have : sarea D A C = sarea C D A := by unfold sarea; ring
      rw [this, hδ, ← hα]; unfold sarea; ring
  have hdet2 : (D.1 - B.1) * (C.2 - A.2) - (D.2 - B.2) * (C.1 - A.1) ≠ 0 := by
    rw [hC]
    have : (D.1 - B.1) * (B.2 + D.2 - A.2 - A.2) - (D.2 - B.2) * (B.1 + D.1 - A.1 - A.1) =
        -2 * sarea A B D := by unfold sarea; ring
    simp only at this ⊢
    rw [this, hα]; intro h; linarith
  intro i
  fin_cases i
  · simp [affineMap, sixQuadExtremal]
  · simp [affineMap, sixQuadExtremal]
  · simp [affineMap, sixQuadExtremal, hC]; constructor <;> ring
  · simp [affineMap, sixQuadExtremal]
  · show P = affineMap _ _ _ _ _ _ (1 / 4, 1 / 2)
    refine eq_of_two_sarea (E := B) (F := D) (G := A) (H := C) hdet2 ?_ ?_
    · rw [hP1, show W / 8 = sarea A B D / 4 by rw [hα]; ring]; unfold sarea affineMap; ring
    · rw [hP2, show W / 8 = sarea A B D / 4 by rw [hα]; ring, hC]; unfold sarea affineMap; ring
  · show Q = affineMap _ _ _ _ _ _ (3 / 4, 1 / 2)
    refine eq_of_two_sarea (E := B) (F := D) (G := A) (H := C) hdet2 ?_ ?_
    · have : sarea B D Q = -sarea D B Q := by unfold sarea; ring
      rw [this, hQ1, show W / 8 = sarea A B D / 4 by rw [hα]; ring]; unfold sarea affineMap; ring
    · have : sarea A C Q = -sarea C A Q := by unfold sarea; ring
      rw [this, hQ2, show W / 8 = sarea A B D / 4 by rw [hα]; ring, hC]; unfold sarea affineMap; ring

/-- The sector case of Theorem 1: `P` in the diagonal sector `ODA`, `Q` in `OBC`, all six
relevant triangles of doubled area at least `s`. -/
theorem sector_case {A B C D P Q : Point} {s : ℝ} (hq : ConvexQuad A B C D)
    (hP1 : s ≤ sarea B D P) (hP2 : s ≤ sarea A C P) (hP3 : s ≤ sarea D A P)
    (hQ1 : s ≤ sarea D B Q) (hQ2 : s ≤ sarea C A Q) (hQ3 : s ≤ sarea B C Q) :
    8 * s ≤ 2 * quadArea A B C D ∧
      (8 * s = 2 * quadArea A B C D → IsExtremalImage ![A, B, C, D, P, Q]) := by
  obtain ⟨h1, h2, h3, h4⟩ := hq
  have hα : 0 < sarea A B D := by rw [sarea_cycle D A B]; exact h4
  have hβ : 0 < sarea A B C := h1
  have hγ : 0 < sarea B C D := h2
  have hδ : 0 < sarea C D A := h3
  have hW : 0 < sarea A B C + sarea A C D := by
    have : sarea A C D = sarea C D A := (sarea_cycle A C D).symm
    linarith
  have eW : 2 * quadArea A B C D = sarea A B C + sarea A C D := by unfold quadArea; ring
  have hsum : sarea A B D + sarea A B C + sarea B C D + sarea C D A =
      2 * (sarea A B C + sarea A C D) := by unfold sarea; ring
  have hαγ : sarea A B D + sarea B C D = sarea A B C + sarea A C D := by unfold sarea; ring
  have b1 := sector_bound hW hα hδ hP1 hP2 hP3
  have hW' : 0 < sarea C D A + sarea C A B := by
    have : sarea C D A + sarea C A B = sarea A B C + sarea A C D := by unfold sarea; ring
    linarith
  have hα' : 0 < sarea C D B := by rw [sarea_cycle B C D]; exact h2
  have hδ' : 0 < sarea A B C := h1
  have b2 := sector_bound hW' hα' hδ' hQ1 hQ2 hQ3
  have e1 : sarea C D A + sarea C A B = sarea A B C + sarea A C D := by unfold sarea; ring
  have e2 : sarea C D B = sarea B C D := by unfold sarea; ring
  rw [e1, e2] at b2
  have b1' : s * ((sarea A B C + sarea A C D) + sarea A B D + sarea C D A) ≤
      sarea A B D * sarea C D A := b1
  have b2' : s * ((sarea A B C + sarea A C D) + sarea A B C + sarea B C D) ≤
      sarea A B C * sarea B C D := by linarith
  refine ⟨?_, fun heq => ?_⟩
  · rw [eW]; exact amgm_bound hW hα hβ hγ hδ hsum b1' b2'
  · rw [eW] at heq
    obtain ⟨ea, eb, ec, ed⟩ := amgm_eq hW hα hβ hγ hδ hsum b1' b2' heq hαγ
    set W := sarea A B C + sarea A C D
    have eP := sector_identity A B C D P
    have eQ := sector_identity C D A B Q
    rw [e1, e2] at eQ
    rw [ea, ed] at eP
    rw [eb, ec] at eQ
    have hs : s = W / 8 := by linarith
    rw [hs] at hP1 hP2 hP3 hQ1 hQ2 hQ3
    have hz := mul_le_mul_of_nonneg_left hP3 hW.le
    have hz' := mul_le_mul_of_nonneg_left hQ3 hW.le
    have k1 : W / 2 * (sarea B D P + sarea A C P) ≤ W / 2 * (W / 4) := by linarith
    have k2 : W / 2 * (sarea D B Q + sarea C A Q) ≤ W / 2 * (W / 4) := by linarith
    have k1' := le_of_mul_le_mul_left k1 (half_pos hW)
    have k2' := le_of_mul_le_mul_left k2 (half_pos hW)
    have hx : sarea B D P = W / 8 := by linarith
    have hy : sarea A C P = W / 8 := by linarith
    have hx' : sarea D B Q = W / 8 := by linarith
    have hy' : sarea C A Q = W / 8 := by linarith
    exact isExtremalImage_of_eq hW ea eb ed hx hy hx' hy'

/-- The relabellings used in the equality case of Theorem 1. -/
def permRot : Equiv.Perm (Fin 6) :=
  ⟨![1, 2, 3, 0, 4, 5], ![3, 0, 1, 2, 4, 5], by decide, by decide⟩

def permSwap : Equiv.Perm (Fin 6) :=
  ⟨![0, 1, 2, 3, 5, 4], ![0, 1, 2, 3, 5, 4], by decide, by decide⟩

def permRotSwap : Equiv.Perm (Fin 6) :=
  ⟨![1, 2, 3, 0, 5, 4], ![3, 0, 1, 2, 5, 4], by decide, by decide⟩

theorem extremal_transfer {X Y : Fin 6 → Point} (σ : Equiv.Perm (Fin 6))
    (h : ∀ i, X (σ i) = Y i) (hY : IsExtremalImage Y) :
    ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
      ∀ i, X (σ i) = affineMap a b c d e f (sixQuadExtremal i) := by
  obtain ⟨a, b, c, d, e, f, hdet, hY⟩ := hY
  exact ⟨a, b, c, d, e, f, σ, hdet, fun i => (h i).trans (hY i)⟩

/-! ### §1. Six points with a quadrilateral hull -/

/-- **Theorem 1** (`QUADRILATERAL_HULL:Theorem1`). Six points with a quadrilateral convex hull of
area `S` have least triangle area at most `S/8`. Equality forces a parallelogram hull, and the
configuration is then an affine image, up to relabelling, of the four square corners with
`(1/4, 1/2), (3/4, 1/2)`. If a diagonal leaves both interior points on one side,
`S ≥ (K+1)t > 8t`; otherwise diagonal coordinates and AM-GM give `t ≤ S/8`.
`docs/proof/nine/QUADRILATERAL_HULL.md`, lines 24-106.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem theorem1 {A B C D P Q : Point} (hq : ConvexQuad A B C D) (hP : InClosedQuad P A B C D)
    (hQ : InClosedQuad Q A B C D) :
    minTriangleArea ![A, B, C, D, P, Q] ≤ quadArea A B C D / 8 ∧
      (minTriangleArea ![A, B, C, D, P, Q] = quadArea A B C D / 8 →
        ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i)) := by
  have hS := hq.quadArea_pos
  rcases (minTriangleArea_nonneg ![A, B, C, D, P, Q]).eq_or_lt with h0 | hpos
  · rw [← h0]
    exact ⟨by positivity, fun h => absurd h (by linarith)⟩
  have ht : minTriangleArea ![A, B, C, D, P, Q] ≤ minTriangleArea ![A, B, C, D, P, Q] := le_rfl
  set t := minTriangleArea ![A, B, C, D, P, Q] with htdef
  have hq' := hq
  obtain ⟨hq1, hq2, hq3, hq4⟩ := hq'
  have hACD : 0 < sarea A C D := by rw [← sarea_cycle A C D]; exact hq3
  have hABD : 0 < sarea A B D := by rw [sarea_cycle D A B]; exact hq4
  have hBDA : 0 < sarea B D A := by rw [sarea_cycle A B D]; exact hABD
  have hDBC : 0 < sarea D B C := by
    have : sarea D B C = sarea B C D := by unfold sarea; ring
    rw [this]; exact hq2
  -- strict interior
  have pos_of {X Y Z : Point} (h0 : 0 ≤ sarea X Y Z) (h1 : sarea X Y Z ≠ 0) : 0 < sarea X Y Z :=
    lt_of_le_of_ne h0 (Ne.symm h1)
  have pAB : 0 < sarea A B P := pos_of hP.1 (sarea_ne_zero_of_min_pos hpos 0 1 4)
  have pBC : 0 < sarea B C P := pos_of hP.2.1 (sarea_ne_zero_of_min_pos hpos 1 2 4)
  have pCD : 0 < sarea C D P := pos_of hP.2.2.1 (sarea_ne_zero_of_min_pos hpos 2 3 4)
  have pDA : 0 < sarea D A P := pos_of hP.2.2.2 (sarea_ne_zero_of_min_pos hpos 3 0 4)
  have qAB : 0 < sarea A B Q := pos_of hQ.1 (sarea_ne_zero_of_min_pos hpos 0 1 5)
  have qBC : 0 < sarea B C Q := pos_of hQ.2.1 (sarea_ne_zero_of_min_pos hpos 1 2 5)
  have qCD : 0 < sarea C D Q := pos_of hQ.2.2.1 (sarea_ne_zero_of_min_pos hpos 2 3 5)
  have qDA : 0 < sarea D A Q := pos_of hQ.2.2.2 (sarea_ne_zero_of_min_pos hpos 3 0 5)
  have s3 := sqrt3_gt
  have hst := mul_lt_mul_of_pos_right s3 hpos
  -- the conclusion once `(5 + 2√3)t ≤ S`
  have strict : (4 + 2 * Real.sqrt 3) * t + t ≤ quadArea A B C D →
      t ≤ quadArea A B C D / 8 ∧ (t = quadArea A B C D / 8 →
        ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i)) := by
    intro h
    exact ⟨by nlinarith, fun h' => absurd h' (by nlinarith)⟩
  -- two points on one side of a diagonal
  have cACD : 0 < sarea A C P → 0 < sarea A C Q → (4 + 2 * Real.sqrt 3) * t + t ≤
      quadArea A B C D := by
    intro h1 h2
    have hsub : t ≤ minTriangleArea ![A, C, D, P, Q] :=
      le_min_sub (by norm_num) ![0, 2, 3, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) ht
    have k := CornerFamilies.twoInteriorPointLemma A C D P Q (Or.inl ⟨h1, pCD, pDA⟩)
      (Or.inl ⟨h2, qCD, qDA⟩) t hpos hsub
    have k2 : t ≤ triangleArea A B C := area_of_le_min ht 0 1 2
    have e : quadArea A B C D = triangleArea A B C + triangleArea A C D := by
      rw [triangleArea_of_pos hq1, triangleArea_of_pos hACD]; unfold quadArea; ring
    linarith
  have cABC : sarea A C P < 0 → sarea A C Q < 0 → (4 + 2 * Real.sqrt 3) * t + t ≤
      quadArea A B C D := by
    intro h1 h2
    have h1' : 0 < sarea C A P := by rw [sarea_swap₁₂]; linarith
    have h2' : 0 < sarea C A Q := by rw [sarea_swap₁₂]; linarith
    have hsub : t ≤ minTriangleArea ![A, B, C, P, Q] :=
      le_min_sub (by norm_num) ![0, 1, 2, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) ht
    have k := CornerFamilies.twoInteriorPointLemma A B C P Q (Or.inl ⟨pAB, pBC, h1'⟩)
      (Or.inl ⟨qAB, qBC, h2'⟩) t hpos hsub
    have k2 : t ≤ triangleArea A C D := area_of_le_min ht 0 2 3
    have e : quadArea A B C D = triangleArea A B C + triangleArea A C D := by
      rw [triangleArea_of_pos hq1, triangleArea_of_pos hACD]; unfold quadArea; ring
    linarith
  have cBDA : 0 < sarea B D P → 0 < sarea B D Q → (4 + 2 * Real.sqrt 3) * t + t ≤
      quadArea A B C D := by
    intro h1 h2
    have hsub : t ≤ minTriangleArea ![B, D, A, P, Q] :=
      le_min_sub (by norm_num) ![1, 3, 0, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) ht
    have k := CornerFamilies.twoInteriorPointLemma B D A P Q (Or.inl ⟨h1, pDA, pAB⟩)
      (Or.inl ⟨h2, qDA, qAB⟩) t hpos hsub
    have k2 : t ≤ triangleArea B C D := area_of_le_min ht 1 2 3
    have e : quadArea A B C D = triangleArea B D A + triangleArea B C D := by
      rw [triangleArea_of_pos hBDA, triangleArea_of_pos hq2]; unfold quadArea sarea; ring
    linarith
  have cDBC : sarea B D P < 0 → sarea B D Q < 0 → (4 + 2 * Real.sqrt 3) * t + t ≤
      quadArea A B C D := by
    intro h1 h2
    have h1' : 0 < sarea D B P := by rw [sarea_swap₁₂]; linarith
    have h2' : 0 < sarea D B Q := by rw [sarea_swap₁₂]; linarith
    have hsub : t ≤ minTriangleArea ![D, B, C, P, Q] :=
      le_min_sub (by norm_num) ![3, 1, 2, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) ht
    have k := CornerFamilies.twoInteriorPointLemma D B C P Q (Or.inl ⟨h1', pBC, pCD⟩)
      (Or.inl ⟨h2', qBC, qCD⟩) t hpos hsub
    have k2 : t ≤ triangleArea D A B := area_of_le_min ht 3 0 1
    have e : quadArea A B C D = triangleArea D B C + triangleArea D A B := by
      rw [triangleArea_of_pos hDBC, triangleArea_of_pos hq4]; unfold quadArea sarea; ring
    linarith
  -- the four sector cases
  have g {i j k : Fin 6} (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k)
      (h : 0 < sarea (![A, B, C, D, P, Q] i) (![A, B, C, D, P, Q] j) (![A, B, C, D, P, Q] k)) :
      2 * t ≤ sarea (![A, B, C, D, P, Q] i) (![A, B, C, D, P, Q] j) (![A, B, C, D, P, Q] k) :=
    sarea_ge_of_le_min_of_pos hpos ht i j k h hij hjk hik
  have fin_of (h : 8 * (2 * t) ≤ 2 * quadArea A B C D ∧
      (8 * (2 * t) = 2 * quadArea A B C D → ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)),
        a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i))) :
      t ≤ quadArea A B C D / 8 ∧ (t = quadArea A B C D / 8 →
        ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i)) :=
    ⟨by linarith [h.1], fun h' => h.2 (by rw [h']; ring)⟩
  have neg {X Y Z : Point} (h : sarea X Y Z < 0) : 0 < sarea Y X Z := by
    rw [sarea_swap₁₂]; linarith
  have sODA : 0 < sarea A C P → 0 < sarea B D P → sarea A C Q < 0 → sarea B D Q < 0 →
      t ≤ quadArea A B C D / 8 ∧ (t = quadArea A B C D / 8 →
        ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i)) := by
    intro a1 b1 a2 b2
    have := sector_case hq (g (i := 1) (j := 3) (k := 4) (by decide) (by decide) (by decide) b1)
      (g (i := 0) (j := 2) (k := 4) (by decide) (by decide) (by decide) a1)
      (g (i := 3) (j := 0) (k := 4) (by decide) (by decide) (by decide) pDA)
      (g (i := 3) (j := 1) (k := 5) (by decide) (by decide) (by decide) (neg b2))
      (g (i := 2) (j := 0) (k := 5) (by decide) (by decide) (by decide) (neg a2))
      (g (i := 1) (j := 2) (k := 5) (by decide) (by decide) (by decide) qBC)
    exact fin_of ⟨this.1, fun h => extremal_transfer 1 (fun i => rfl) (this.2 h)⟩
  have sOBC : sarea A C P < 0 → sarea B D P < 0 → 0 < sarea A C Q → 0 < sarea B D Q →
      t ≤ quadArea A B C D / 8 ∧ (t = quadArea A B C D / 8 →
        ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i)) := by
    intro a1 b1 a2 b2
    have := sector_case (P := Q) (Q := P) hq
      (g (i := 1) (j := 3) (k := 5) (by decide) (by decide) (by decide) b2)
      (g (i := 0) (j := 2) (k := 5) (by decide) (by decide) (by decide) a2)
      (g (i := 3) (j := 0) (k := 5) (by decide) (by decide) (by decide) qDA)
      (g (i := 3) (j := 1) (k := 4) (by decide) (by decide) (by decide) (neg b1))
      (g (i := 2) (j := 0) (k := 4) (by decide) (by decide) (by decide) (neg a1))
      (g (i := 1) (j := 2) (k := 4) (by decide) (by decide) (by decide) pBC)
    exact fin_of ⟨this.1, fun h => extremal_transfer permSwap
      (fun i => by fin_cases i <;> rfl) (this.2 h)⟩
  have sOAB : sarea A C P < 0 → 0 < sarea B D P → 0 < sarea A C Q → sarea B D Q < 0 →
      t ≤ quadArea A B C D / 8 ∧ (t = quadArea A B C D / 8 →
        ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i)) := by
    intro a1 b1 a2 b2
    have := sector_case (A := B) (B := C) (C := D) (D := A) hq.rotate
      (g (i := 2) (j := 0) (k := 4) (by decide) (by decide) (by decide) (neg a1))
      (g (i := 1) (j := 3) (k := 4) (by decide) (by decide) (by decide) b1)
      (g (i := 0) (j := 1) (k := 4) (by decide) (by decide) (by decide) pAB)
      (g (i := 0) (j := 2) (k := 5) (by decide) (by decide) (by decide) a2)
      (g (i := 3) (j := 1) (k := 5) (by decide) (by decide) (by decide) (neg b2))
      (g (i := 2) (j := 3) (k := 5) (by decide) (by decide) (by decide) qCD)
    rw [quadArea_rotate] at this
    exact fin_of ⟨this.1, fun h => extremal_transfer permRot
      (fun i => by fin_cases i <;> rfl) (this.2 h)⟩
  have sOCD : 0 < sarea A C P → sarea B D P < 0 → sarea A C Q < 0 → 0 < sarea B D Q →
      t ≤ quadArea A B C D / 8 ∧ (t = quadArea A B C D / 8 →
        ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 6)), a * d - b * c ≠ 0 ∧
          ∀ i, ![A, B, C, D, P, Q] (σ i) = affineMap a b c d e f (sixQuadExtremal i)) := by
    intro a1 b1 a2 b2
    have := sector_case (A := B) (B := C) (C := D) (D := A) (P := Q) (Q := P) hq.rotate
      (g (i := 2) (j := 0) (k := 5) (by decide) (by decide) (by decide) (neg a2))
      (g (i := 1) (j := 3) (k := 5) (by decide) (by decide) (by decide) b2)
      (g (i := 0) (j := 1) (k := 5) (by decide) (by decide) (by decide) qAB)
      (g (i := 0) (j := 2) (k := 4) (by decide) (by decide) (by decide) a1)
      (g (i := 3) (j := 1) (k := 4) (by decide) (by decide) (by decide) (neg b1))
      (g (i := 2) (j := 3) (k := 4) (by decide) (by decide) (by decide) pCD)
    rw [quadArea_rotate] at this
    exact fin_of ⟨this.1, fun h => extremal_transfer permRotSwap
      (fun i => by fin_cases i <;> rfl) (this.2 h)⟩
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 0 2 4) with a1 | a1 <;>
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 0 2 5) with a2 | a2 <;>
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 1 3 4) with b1 | b1 <;>
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 1 3 5) with b2 | b2 <;>
  first
  | exact strict (cACD a1 a2) | exact strict (cABC a1 a2) | exact strict (cBDA b1 b2)
  | exact strict (cDBC b1 b2) | exact sODA a1 b1 a2 b2 | exact sOBC a1 b1 a2 b2
  | exact sOAB a1 b1 a2 b2 | exact sOCD a1 b1 a2 b2

/-! ### §2. Seven points with a quadrilateral hull -/

/-- **Theorem 2** (`QUADRILATERAL_HULL:Theorem2`). Seven points with a quadrilateral convex hull of
area `S` and least area `t` satisfy `S ≥ (Γ+1)t`, `Γ = (11+3√5)/2`. A `3+0` diagonal split gives
`Γt + t`, and a `2+1` split gives `Kt + 3t` with `K + 3 = 7 + 2√3 > Γ + 1`.
`docs/proof/nine/QUADRILATERAL_HULL.md`, lines 108-132.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, CORNER_FAMILIES:SixPointTriangularHullTheorem -/
theorem theorem2 {A B C D P Q R : Point} (hq : ConvexQuad A B C D)
    (hP : InClosedQuad P A B C D) (hQ : InClosedQuad Q A B C D) (hR : InClosedQuad R A B C D) :
    ((11 + 3 * Real.sqrt 5) / 2 + 1) * minTriangleArea ![A, B, C, D, P, Q, R] ≤
      quadArea A B C D := by
  have hS := hq.quadArea_pos
  rcases (minTriangleArea_nonneg ![A, B, C, D, P, Q, R]).eq_or_lt with h0 | hpos
  · rw [← h0]; linarith
  have ht : minTriangleArea ![A, B, C, D, P, Q, R] ≤ minTriangleArea ![A, B, C, D, P, Q, R] :=
    le_rfl
  set t := minTriangleArea ![A, B, C, D, P, Q, R] with htdef
  obtain ⟨hq1, hq2, hq3, hq4⟩ := hq
  have hACD : 0 < sarea A C D := by rw [← sarea_cycle A C D]; exact hq3
  have pos_of {X Y Z : Point} (h0 : 0 ≤ sarea X Y Z) (h1 : sarea X Y Z ≠ 0) : 0 < sarea X Y Z :=
    lt_of_le_of_ne h0 (Ne.symm h1)
  have neg {X Y Z : Point} (h : sarea X Y Z < 0) : 0 < sarea Y X Z := by
    rw [sarea_swap₁₂]; linarith
  have g {i j k : Fin 7} (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k)
      (h : 0 < sarea (![A, B, C, D, P, Q, R] i) (![A, B, C, D, P, Q, R] j)
        (![A, B, C, D, P, Q, R] k)) :
      2 * t ≤ sarea (![A, B, C, D, P, Q, R] i) (![A, B, C, D, P, Q, R] j)
        (![A, B, C, D, P, Q, R] k) :=
    sarea_ge_of_le_min_of_pos hpos ht i j k h hij hjk hik
  have abP : 0 < sarea A B P := pos_of hP.1 (sarea_ne_zero_of_min_pos hpos 0 1 4)
  have bcP : 0 < sarea B C P := pos_of hP.2.1 (sarea_ne_zero_of_min_pos hpos 1 2 4)
  have cdP : 0 < sarea C D P := pos_of hP.2.2.1 (sarea_ne_zero_of_min_pos hpos 2 3 4)
  have daP : 0 < sarea D A P := pos_of hP.2.2.2 (sarea_ne_zero_of_min_pos hpos 3 0 4)
  have abQ : 0 < sarea A B Q := pos_of hQ.1 (sarea_ne_zero_of_min_pos hpos 0 1 5)
  have bcQ : 0 < sarea B C Q := pos_of hQ.2.1 (sarea_ne_zero_of_min_pos hpos 1 2 5)
  have cdQ : 0 < sarea C D Q := pos_of hQ.2.2.1 (sarea_ne_zero_of_min_pos hpos 2 3 5)
  have daQ : 0 < sarea D A Q := pos_of hQ.2.2.2 (sarea_ne_zero_of_min_pos hpos 3 0 5)
  have abR : 0 < sarea A B R := pos_of hR.1 (sarea_ne_zero_of_min_pos hpos 0 1 6)
  have bcR : 0 < sarea B C R := pos_of hR.2.1 (sarea_ne_zero_of_min_pos hpos 1 2 6)
  have cdR : 0 < sarea C D R := pos_of hR.2.2.1 (sarea_ne_zero_of_min_pos hpos 2 3 6)
  have daR : 0 < sarea D A R := pos_of hR.2.2.2 (sarea_ne_zero_of_min_pos hpos 3 0 6)
  have e : quadArea A B C D = triangleArea A B C + triangleArea A C D := by
    rw [triangleArea_of_pos hq1, triangleArea_of_pos hACD]; unfold quadArea; ring
  have h3 : (5 / 3 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have h5 : Real.sqrt 5 < 9 / 4 := by rw [Real.sqrt_lt' (by norm_num)]; norm_num
  have h3t := mul_lt_mul_of_pos_right h3 hpos
  have h5t := mul_lt_mul_of_pos_right h5 hpos
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 0 2 4) with sP | sP <;>
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 0 2 5) with sQ | sQ <;>
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 0 2 6) with sR | sR
  · have k := CornerFamilies.sixPointTriangularHullTheorem A B C P Q R
      (Or.inl ⟨abP, bcP, neg sP⟩) (Or.inl ⟨abQ, bcQ, neg sQ⟩) (Or.inl ⟨abR, bcR, neg sR⟩) t
      (le_min_sub (by norm_num) ![0, 1, 2, 4, 5, 6] (by decide) (fun i => by fin_cases i <;> rfl) ht)
    have k2 : t ≤ triangleArea A C D := area_of_le_min ht 0 2 3
    linarith
  · have k := CornerFamilies.twoInteriorPointLemma A B C P Q
      (Or.inl ⟨abP, bcP, neg sP⟩) (Or.inl ⟨abQ, bcQ, neg sQ⟩) t hpos
      (le_min_sub (by norm_num) ![0, 1, 2, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) ht)
    have l1 : 2 * t ≤ sarea A C R := g (i := 0) (j := 2) (k := 6) (by decide) (by decide) (by decide) sR
    have l2 : 2 * t ≤ sarea C D R := g (i := 2) (j := 3) (k := 6) (by decide) (by decide) (by decide) cdR
    have l3 : 2 * t ≤ sarea D A R := g (i := 3) (j := 0) (k := 6) (by decide) (by decide) (by decide) daR
    have l4 := sarea_add_sarea_add_sarea A C D R
    rw [triangleArea_of_pos hACD] at e
    linarith
  · have k := CornerFamilies.twoInteriorPointLemma A B C P R
      (Or.inl ⟨abP, bcP, neg sP⟩) (Or.inl ⟨abR, bcR, neg sR⟩) t hpos
      (le_min_sub (by norm_num) ![0, 1, 2, 4, 6] (by decide) (fun i => by fin_cases i <;> rfl) ht)
    have l1 : 2 * t ≤ sarea A C Q := g (i := 0) (j := 2) (k := 5) (by decide) (by decide) (by decide) sQ
    have l2 : 2 * t ≤ sarea C D Q := g (i := 2) (j := 3) (k := 5) (by decide) (by decide) (by decide) cdQ
    have l3 : 2 * t ≤ sarea D A Q := g (i := 3) (j := 0) (k := 5) (by decide) (by decide) (by decide) daQ
    have l4 := sarea_add_sarea_add_sarea A C D Q
    rw [triangleArea_of_pos hACD] at e
    linarith
  · have k := CornerFamilies.twoInteriorPointLemma A C D Q R
      (Or.inl ⟨sQ, cdQ, daQ⟩) (Or.inl ⟨sR, cdR, daR⟩) t hpos
      (le_min_sub (by norm_num) ![0, 2, 3, 5, 6] (by decide) (fun i => by fin_cases i <;> rfl) ht)
    have l1 : 2 * t ≤ sarea A B P := g (i := 0) (j := 1) (k := 4) (by decide) (by decide) (by decide) abP
    have l2 : 2 * t ≤ sarea B C P := g (i := 1) (j := 2) (k := 4) (by decide) (by decide) (by decide) bcP
    have l3 : 2 * t ≤ sarea C A P := g (i := 2) (j := 0) (k := 4) (by decide) (by decide) (by decide) (neg sP)
    have l4 := sarea_add_sarea_add_sarea A B C P
    rw [triangleArea_of_pos hq1] at e
    linarith
  · have k := CornerFamilies.twoInteriorPointLemma A B C Q R
      (Or.inl ⟨abQ, bcQ, neg sQ⟩) (Or.inl ⟨abR, bcR, neg sR⟩) t hpos
      (le_min_sub (by norm_num) ![0, 1, 2, 5, 6] (by decide) (fun i => by fin_cases i <;> rfl) ht)
    have l1 : 2 * t ≤ sarea A C P := g (i := 0) (j := 2) (k := 4) (by decide) (by decide) (by decide) sP
    have l2 : 2 * t ≤ sarea C D P := g (i := 2) (j := 3) (k := 4) (by decide) (by decide) (by decide) cdP
    have l3 : 2 * t ≤ sarea D A P := g (i := 3) (j := 0) (k := 4) (by decide) (by decide) (by decide) daP
    have l4 := sarea_add_sarea_add_sarea A C D P
    rw [triangleArea_of_pos hACD] at e
    linarith
  · have k := CornerFamilies.twoInteriorPointLemma A C D P R
      (Or.inl ⟨sP, cdP, daP⟩) (Or.inl ⟨sR, cdR, daR⟩) t hpos
      (le_min_sub (by norm_num) ![0, 2, 3, 4, 6] (by decide) (fun i => by fin_cases i <;> rfl) ht)
    have l1 : 2 * t ≤ sarea A B Q := g (i := 0) (j := 1) (k := 5) (by decide) (by decide) (by decide) abQ
    have l2 : 2 * t ≤ sarea B C Q := g (i := 1) (j := 2) (k := 5) (by decide) (by decide) (by decide) bcQ
    have l3 : 2 * t ≤ sarea C A Q := g (i := 2) (j := 0) (k := 5) (by decide) (by decide) (by decide) (neg sQ)
    have l4 := sarea_add_sarea_add_sarea A B C Q
    rw [triangleArea_of_pos hq1] at e
    linarith
  · have k := CornerFamilies.twoInteriorPointLemma A C D P Q
      (Or.inl ⟨sP, cdP, daP⟩) (Or.inl ⟨sQ, cdQ, daQ⟩) t hpos
      (le_min_sub (by norm_num) ![0, 2, 3, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) ht)
    have l1 : 2 * t ≤ sarea A B R := g (i := 0) (j := 1) (k := 6) (by decide) (by decide) (by decide) abR
    have l2 : 2 * t ≤ sarea B C R := g (i := 1) (j := 2) (k := 6) (by decide) (by decide) (by decide) bcR
    have l3 : 2 * t ≤ sarea C A R := g (i := 2) (j := 0) (k := 6) (by decide) (by decide) (by decide) (neg sR)
    have l4 := sarea_add_sarea_add_sarea A B C R
    rw [triangleArea_of_pos hq1] at e
    linarith
  · have k := CornerFamilies.sixPointTriangularHullTheorem A C D P Q R
      (Or.inl ⟨sP, cdP, daP⟩) (Or.inl ⟨sQ, cdQ, daQ⟩) (Or.inl ⟨sR, cdR, daR⟩) t
      (le_min_sub (by norm_num) ![0, 2, 3, 4, 5, 6] (by decide) (fun i => by fin_cases i <;> rfl) ht)
    have k2 : t ≤ triangleArea A B C := area_of_le_min ht 0 1 2
    linarith

theorem InQuad.closed {X A B C D : Point} (h : InQuad X A B C D) : InClosedQuad X A B C D :=
  ⟨h.1.le, h.2.1.le, h.2.2.1.le, h.2.2.2.le⟩

theorem sarea_eq_zero_left (p q : Point) : sarea p p q = 0 := by unfold sarea; ring
theorem sarea_eq_zero_mid (p q : Point) : sarea p q p = 0 := by unfold sarea; ring
theorem sarea_eq_zero_right (p q : Point) : sarea p q q = 0 := by unfold sarea; ring

theorem ne_of_sarea_pos {n : ℕ} {P : Fin n → Point} {i j k : Fin n}
    (h : 0 < sarea (P i) (P j) (P k)) : i ≠ j ∧ j ≠ k ∧ i ≠ k := by
  refine ⟨fun e => ?_, fun e => ?_, fun e => ?_⟩ <;> subst e
  · rw [sarea_eq_zero_left] at h; exact lt_irrefl _ h
  · rw [sarea_eq_zero_right] at h; exact lt_irrefl _ h
  · rw [sarea_eq_zero_mid] at h; exact lt_irrefl _ h

/-- `(Γ + 1)A₀ > 1/2`, inequality (9). -/
theorem gamma_one_A₀ : (1 / 2 : ℝ) < ((11 + 3 * Real.sqrt 5) / 2 + 1) * A₀ := by
  have := sqrt5_gt
  have hA := A₀_bounds.2.2.1
  nlinarith

/-- The core of Corollary 3: three further points in a convex quadrilateral of four points and of
area at most `1/2` force least area below `A₀`. -/
theorem no_three_in_quad {n : ℕ} {P : Fin n → Point} (hA : A₀ ≤ minTriangleArea P)
    {i j k l m₁ m₂ m₃ : Fin n} (hq : ConvexQuad (P i) (P j) (P k) (P l))
    (harea : quadArea (P i) (P j) (P k) (P l) ≤ 1 / 2)
    (h1 : InQuad (P m₁) (P i) (P j) (P k) (P l)) (h2 : InQuad (P m₂) (P i) (P j) (P k) (P l))
    (h3 : InQuad (P m₃) (P i) (P j) (P k) (P l)) (h12 : m₁ ≠ m₂) (h13 : m₁ ≠ m₃)
    (h23 : m₂ ≠ m₃) : False := by
  obtain ⟨a1, a2, a3⟩ := ne_of_sarea_pos (P := P) hq.1
  obtain ⟨b1, b2, b3⟩ := ne_of_sarea_pos (P := P) hq.2.1
  obtain ⟨c1, c2, c3⟩ := ne_of_sarea_pos (P := P) hq.2.2.2
  have hm {m : Fin n} (h : InQuad (P m) (P i) (P j) (P k) (P l)) :
      m ≠ i ∧ m ≠ j ∧ m ≠ k ∧ m ≠ l := by
    obtain ⟨d1, d2, d3⟩ := ne_of_sarea_pos (P := P) h.1
    obtain ⟨e1, e2, e3⟩ := ne_of_sarea_pos (P := P) h.2.2.1
    exact ⟨d3.symm, d2.symm, e3.symm, e2.symm⟩
  obtain ⟨x1, x2, x3, x4⟩ := hm h1
  obtain ⟨y1, y2, y3, y4⟩ := hm h2
  obtain ⟨z1, z2, z3, z4⟩ := hm h3
  have hinj : Function.Injective ![i, j, k, l, m₁, m₂, m₃] := by
    rw [← List.nodup_ofFn]
    simp [List.ofFn_succ]
    tauto
  have hsub : A₀ ≤ minTriangleArea ![P i, P j, P k, P l, P m₁, P m₂, P m₃] :=
    le_min_sub (by norm_num) _ hinj (fun a => by fin_cases a <;> rfl) hA
  have k := theorem2 hq (P := P m₁) (Q := P m₂) (R := P m₃)
    h1.closed h2.closed h3.closed
  have g := gamma_one_A₀
  have hpos : 0 < (11 + 3 * Real.sqrt 5) / 2 + 1 := by positivity
  have := mul_le_mul_of_nonneg_left hsub hpos.le
  linarith

/-- **Corollary 3** (`QUADRILATERAL_HULL:Corollary3`). Small-quadrilateral occupancy. In any
configuration with least area at least `A₀`, a convex quadrilateral spanned by four of its points
and of area at most `1/2` contains at most two further points. Otherwise Theorem 2 would give
`t ≤ 1/(13 + 3√5) < 1/19 < A₀` (9).
`docs/proof/nine/QUADRILATERAL_HULL.md`, lines 134-150.
Uses: QUADRILATERAL_HULL:Theorem2 -/
theorem corollary3 {n : ℕ} {P : Fin n → Point} (hA : A₀ ≤ minTriangleArea P) {i j k l : Fin n}
    (hq : ConvexQuad (P i) (P j) (P k) (P l))
    (harea : quadArea (P i) (P j) (P k) (P l) ≤ 1 / 2) :
    Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} ≤ 2 := by
  by_contra hc
  push Not at hc
  obtain ⟨m₁, m₂, m₃, h1, h2, h3, h12, h13, h23⟩ := (Set.two_lt_ncard_iff).1 hc
  exact no_three_in_quad hA hq harea h1 h2 h3 h12 h13 h23

/-! ### §3. The lower-left cap in family N -/

/-- `X` lies in the closed triangle `T₀ = conv{(0,0), H, C} = {x, y ≥ 0, hx + cy ≤ hc}` (11). -/
def InT0 (h c : ℝ) (X : Point) : Prop :=
  0 ≤ X.1 ∧ 0 ≤ X.2 ∧ h * X.1 + c * X.2 ≤ h * c

/-- The affine reduction of Theorem 4: `H, C, A, B` and two points of `T₀` have least area at
most `7hc/128`, by `OPPOSITE_CORNERS` Theorem 1 through `(x, y) ↦ (x/c, 1 - y/h)`. -/
theorem min_T0_le {a h b c : ℝ} (ha : 0 < a) (hah : a < h) (hb : 0 < b) (hbc : b < c)
    {P Q : Point} (hP : InT0 h c P) (hQ : InT0 h c Q) :
    minTriangleArea ![(0, h), (c, 0), (0, a), (b, 0), P, Q] ≤ 7 * h * c / 128 := by
  have hh : 0 < h := by linarith
  have hc : 0 < c := by linarith
  have hmem : ∀ X, InT0 h c X → affineMap (1 / c) 0 0 (-1 / h) 0 1 X ∈ OppositeCorners.halfSquare := by
    intro X ⟨h1, h2, h3⟩
    simp only [affineMap, OppositeCorners.halfSquare, Set.mem_ofPred_eq]
    have e1 : 1 / c * X.1 + 0 * X.2 + 0 = X.1 / c := by ring
    have e2 : 0 * X.1 + -1 / h * X.2 + 1 = 1 - X.2 / h := by ring
    rw [e1, e2]
    refine ⟨by positivity, ?_, ?_⟩
    · rw [div_le_iff₀ hc, sub_mul, div_mul_eq_mul_div, le_sub_iff_add_le, ← le_sub_iff_add_le',
        div_le_iff₀ hh]
      nlinarith
    · have : 0 ≤ X.2 / h := by positivity
      linarith
  have hconf : affineMap (1 / c) 0 0 (-1 / h) 0 1 ∘ ![(0, h), (c, 0), (0, a), (b, 0), P, Q] =
      OppositeCorners.halfSquareConfig (1 - a / h) (b / c)
        (affineMap (1 / c) 0 0 (-1 / h) 0 1 P) (affineMap (1 / c) 0 0 (-1 / h) 0 1 Q) := by
    funext i
    fin_cases i <;> simp [affineMap, OppositeCorners.halfSquareConfig] <;> field_simp <;> ring
  have k := OppositeCorners.theorem1 (1 - a / h) (b / c)
    (by rw [sub_pos, div_lt_one hh]; exact hah) (by have : 0 < a / h := by positivity
                                                    linarith)
    (by positivity) (by rw [div_lt_one hc]; exact hbc) _ _ (hmem P hP) (hmem Q hQ)
  rw [← hconf, minTriangleArea_affineMap] at k
  have e : |1 / c * (-1 / h) - 0 * 0| = 1 / (h * c) := by
    rw [show 1 / c * (-1 / h) - 0 * 0 = -(1 / (h * c)) by ring, abs_neg,
      abs_of_pos (by positivity)]
  rw [e] at k
  have hhc : 0 < h * c := by positivity
  rw [div_mul_eq_mul_div, one_mul, div_le_iff₀ hhc] at k
  linarith

/-- Theorem 4 without the (unused) square hypotheses. -/
theorem theorem4_min {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (h2 : (InT0 h c X ∧ InT0 h c Y) ∨ (InT0 h c X ∧ InT0 h c Z) ∨ (InT0 h c Y ∧ InT0 h c Z)) :
    minTriangleArea (nConfig a h b c d f X Y Z) ≤ 7 * h * c / 128 := by
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, -⟩ := hN
  rcases h2 with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact (le_min_sub (Q := ![(0, h), (c, 0), (0, a), (b, 0), X, Y]) (by norm_num)
      ![1, 3, 0, 2, 6, 7] (by decide) (fun i => by fin_cases i <;> rfl) le_rfl).trans
      (min_T0_le ha hah hb hbc h1 h2)
  · exact (le_min_sub (Q := ![(0, h), (c, 0), (0, a), (b, 0), X, Z]) (by norm_num)
      ![1, 3, 0, 2, 6, 8] (by decide) (fun i => by fin_cases i <;> rfl) le_rfl).trans
      (min_T0_le ha hah hb hbc h1 h2)
  · exact (le_min_sub (Q := ![(0, h), (c, 0), (0, a), (b, 0), Y, Z]) (by norm_num)
      ![1, 3, 0, 2, 7, 8] (by decide) (fun i => by fin_cases i <;> rfl) le_rfl).trans
      (min_T0_le ha hah hb hbc h1 h2)

/-- **Theorem 4** (`QUADRILATERAL_HULL:Theorem4`). The N cap exclusion. In family N, if two of the
three free points lie in `T₀ = conv{(0,0), H, C}`, the least area of the nine points is at most
`7hc/128 ≤ 7/128 < A₀`. The affine map of `T₀` onto a half-square sends `H, C, A, B, P, Q` to the
family of `OPPOSITE_CORNERS.md` Theorem 1, with area factor `1/(hc)`.
`docs/proof/nine/QUADRILATERAL_HULL.md`, lines 152-194.
Uses: OPPOSITE_CORNERS:Theorem1 -/
theorem theorem4 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (_hX : X ∈ unitSquare) (_hY : Y ∈ unitSquare) (_hZ : Z ∈ unitSquare)
    (h2 : (InT0 h c X ∧ InT0 h c Y) ∨ (InT0 h c X ∧ InT0 h c Z) ∨ (InT0 h c Y ∧ InT0 h c Z)) :
    minTriangleArea (nConfig a h b c d f X Y Z) ≤ 7 * h * c / 128 ∧
      7 * h * c / 128 ≤ 7 / 128 ∧ (7 / 128 : ℝ) < A₀ := by
  refine ⟨theorem4_min hN h2, ?_, A₀_bounds.1⟩
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, -⟩ := hN
  have : h * c ≤ 1 := by nlinarith
  linarith

/-! ### §4. Consequences when the prescribed anchors are the full hull -/

/-- **Claim** (`QUADRILATERAL_HULL:claim-(13)`). The upper quadrilateral
`Q₀ = conv{H, C, D, F}`, with `H=(0,h), C=(c,0), D=(1,d), F=(f,1)` in this cyclic order, has area
`(1 - (h-d)(c-f))/2`. This is at most `1/2` when `d ≤ h` and `f ≤ c`.
`docs/proof/nine/QUADRILATERAL_HULL.md`, lines 196-213. -/
theorem claim_13 (h c d f : ℝ) :
    quadArea (0, h) (c, 0) (1, d) (f, 1) = (1 - (h - d) * (c - f)) / 2 ∧
      (d ≤ h → f ≤ c → quadArea (0, h) (c, 0) (1, d) (f, 1) ≤ 1 / 2) := by
  have e : quadArea (0, h) (c, 0) (1, d) (f, 1) = (1 - (h - d) * (c - f)) / 2 := by
    unfold quadArea sarea; ring
  refine ⟨e, fun h1 h2 => ?_⟩
  rw [e]
  nlinarith [mul_nonneg (sub_nonneg.2 h1) (sub_nonneg.2 h2)]

/-- The upper quadrilateral `Q₀ = HCDF` is convex (counterclockwise) under the C1 (or N) anchor
conditions. -/
theorem convexQuad_Q0 {h c d f : ℝ} (hC : C1Anchors h c d f) :
    ConvexQuad (0, h) (c, 0) (1, d) (f, 1) := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hC
  unfold ConvexQuad sarea
  refine ⟨?_, ?_, ?_, ?_⟩ <;> simp only
  · nlinarith [mul_nonneg (sub_nonneg.2 hc1.le) (sub_nonneg.2 hdh)]
  · nlinarith [mul_nonneg hd.le (sub_nonneg.2 hfc)]
  · nlinarith [mul_nonneg hf.le (sub_nonneg.2 hdh)]
  · nlinarith [mul_nonneg (sub_nonneg.2 hh1.le) (sub_nonneg.2 hfc)]

open Classical in

/-- `X` lies strictly inside the anchor hexagon `A B C D F H` of family N
(`A=(0,a), B=(b,0), C=(c,0), D=(1,d), F=(f,1), H=(0,h)`, counterclockwise). -/
def InNHexagon (a h b c d f : ℝ) (X : Point) : Prop :=
  0 < sarea (0, a) (b, 0) X ∧ 0 < sarea (b, 0) (c, 0) X ∧ 0 < sarea (c, 0) (1, d) X ∧
    0 < sarea (1, d) (f, 1) X ∧ 0 < sarea (f, 1) (0, h) X ∧ 0 < sarea (0, h) (0, a) X

/-- **Claim** (`QUADRILATERAL_HULL:claim-(14)(15)`). N with exactly the six prescribed hull
vertices. If the three free points are strictly inside the hexagon `ABCDFH` and the least area is
at least `A₀`, then exactly one of them is in the lower quadrilateral `HABC` (below `HC`) and two
are in `Q₀` (14); and `1 - (h-d)(c-f) ≥ 16A₀` (15).
`docs/proof/nine/QUADRILATERAL_HULL.md`, lines 215-239.
Uses: QUADRILATERAL_HULL:Theorem4, QUADRILATERAL_HULL:Corollary3, QUADRILATERAL_HULL:claim-(13),
QUADRILATERAL_HULL:Theorem1 -/
theorem claim_14_15 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InNHexagon a h b c d f X) (hY : InNHexagon a h b c d f Y)
    (hZ : InNHexagon a h b c d f Z) (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    ((sarea (0, h) (c, 0) X < 0 ∧ 0 < sarea (0, h) (c, 0) Y ∧ 0 < sarea (0, h) (c, 0) Z) ∨
      (0 < sarea (0, h) (c, 0) X ∧ sarea (0, h) (c, 0) Y < 0 ∧ 0 < sarea (0, h) (c, 0) Z) ∨
      (0 < sarea (0, h) (c, 0) X ∧ 0 < sarea (0, h) (c, 0) Y ∧ sarea (0, h) (c, 0) Z < 0)) ∧
      16 * A₀ ≤ 1 - (h - d) * (c - f) := by
  have hN' := hN
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN'
  have hC1 : C1Anchors h c d f := ⟨by linarith, hdh, hh1, by linarith, hfc, hc1⟩
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Z) := lt_of_lt_of_le A₀_pos hA
  have hq := convexQuad_Q0 hC1
  have harea := (claim_13 h c d f).2 hdh hfc
  have lowT0 {W : Point} (hW : InNHexagon a h b c d f W) (hl : sarea (0, h) (c, 0) W < 0) :
      InT0 h c W := by
    obtain ⟨-, w2, -, -, -, w6⟩ := hW
    have e2 : sarea (b, (0 : ℝ)) (c, 0) W = (c - b) * W.2 := by unfold sarea; ring
    have e6 : sarea ((0 : ℝ), h) (0, a) W = (h - a) * W.1 := by unfold sarea; ring
    have el : sarea ((0 : ℝ), h) (c, 0) W = h * W.1 + c * W.2 - h * c := by unfold sarea; ring
    rw [e2] at w2; rw [e6] at w6; rw [el] at hl
    exact ⟨(pos_of_mul_pos_right w6 (by linarith)).le, (pos_of_mul_pos_right w2 (by linarith)).le,
      by linarith⟩
  have low2 (h2 : (InT0 h c X ∧ InT0 h c Y) ∨ (InT0 h c X ∧ InT0 h c Z) ∨
      (InT0 h c Y ∧ InT0 h c Z)) : False := by
    have k := theorem4_min hN h2
    have : h * c ≤ 1 := by nlinarith
    linarith [A₀_bounds.1]
  have upQ {W : Point} (hW : InNHexagon a h b c d f W) (hu : 0 < sarea (0, h) (c, 0) W) :
      InQuad W (0, h) (c, 0) (1, d) (f, 1) := ⟨hu, hW.2.2.1, hW.2.2.2.1, hW.2.2.2.2.1⟩
  have upPair {U V : Point} (hU : InQuad U (0, h) (c, 0) (1, d) (f, 1))
      (hV : InQuad V (0, h) (c, 0) (1, d) (f, 1))
      (hmin : A₀ ≤ minTriangleArea ![(0, h), (c, 0), (1, d), (f, 1), U, V]) :
      16 * A₀ ≤ 1 - (h - d) * (c - f) := by
    have k := (theorem1 hq hU.closed hV.closed).1
    rw [(claim_13 h c d f).1] at k
    linarith
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 1 3 6) with xs | xs <;>
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 1 3 7) with ys | ys <;>
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 1 3 8) with zs | zs
  · exact (low2 (Or.inl ⟨lowT0 hX xs, lowT0 hY ys⟩)).elim
  · exact (low2 (Or.inl ⟨lowT0 hX xs, lowT0 hY ys⟩)).elim
  · exact (low2 (Or.inr (Or.inl ⟨lowT0 hX xs, lowT0 hZ zs⟩))).elim
  · exact ⟨Or.inl ⟨xs, ys, zs⟩, upPair (upQ hY ys) (upQ hZ zs)
      (le_min_sub (by norm_num) ![1, 3, 4, 5, 7, 8] (by decide)
        (fun i => by fin_cases i <;> rfl) hA)⟩
  · exact (low2 (Or.inr (Or.inr ⟨lowT0 hY ys, lowT0 hZ zs⟩))).elim
  · exact ⟨Or.inr (Or.inl ⟨xs, ys, zs⟩), upPair (upQ hX xs) (upQ hZ zs)
      (le_min_sub (by norm_num) ![1, 3, 4, 5, 6, 8] (by decide)
        (fun i => by fin_cases i <;> rfl) hA)⟩
  · exact ⟨Or.inr (Or.inr ⟨xs, ys, zs⟩), upPair (upQ hX xs) (upQ hY ys)
      (le_min_sub (by norm_num) ![1, 3, 4, 5, 6, 7] (by decide)
        (fun i => by fin_cases i <;> rfl) hA)⟩
  · exact (no_three_in_quad (P := nConfig a h b c d f X Y Z) (i := 1) (j := 3) (k := 4) (l := 5)
      (m₁ := 6) (m₂ := 7) (m₃ := 8) hA hq harea (upQ hX xs) (upQ hY ys) (upQ hZ zs) (by decide)
      (by decide) (by decide)).elim

/-! ### §5. One of the two lower N ears is always empty -/

/-- **Lemma 5** (`QUADRILATERAL_HULL:Lemma5`). In family N, suppose every triangle has area at
least `t` with `s = 2t > 1/12`. Then the two actual ears `ABH` and `ABC` (`A=(0,a), B=(b,0),
H=(0,h), C=(c,0)`) do not both contain further configuration points. Otherwise `b(h-a) ≥ 3s` and
`a(c-b) ≥ 3s`, and Cauchy-Schwarz gives `2√(3s) ≤ 1`. No hull hypothesis is needed. The
normalization assertion: the transposition `(x,y) ↦ (y,x)`, followed by the relabelling
`(A,H,B,C,D,F) ↦ (B,C,A,H,F,D)`, preserves family N and exchanges the two ears, so one may assume
that `ABC` contains no further point.
`docs/proof/nine/QUADRILATERAL_HULL.md`, lines 280-313. -/
theorem lemma5 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (ht : 1 / 24 < minTriangleArea (nConfig a h b c d f X Y Z)) :
    ¬ ((∃ m, InTriangle (nConfig a h b c d f X Y Z m) (0, a) (b, 0) (0, h)) ∧
        (∃ m, InTriangle (nConfig a h b c d f X Y Z m) (0, a) (b, 0) (c, 0))) ∧
      NAnchors b c a h f d ∧
      (⟨true, false, false⟩ : SquareSymmetry).apply ∘ nConfig a h b c d f X Y Z =
        nConfig b c a h f d (X.2, X.1) (Y.2, Y.1) (Z.2, Z.1) ∘
          ⇑(Equiv.swap (0 : Fin 9) 2 * Equiv.swap (1 : Fin 9) 3 * Equiv.swap (4 : Fin 9) 5) := by
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN
  refine ⟨?_, ⟨hb, hbc, hc1, ha, hah, hh1, hbf, hfc, had, hdh⟩, ?_⟩
  · rintro ⟨⟨m, hm⟩, ⟨m', hm'⟩⟩
    set P := nConfig a h b c d f X Y Z with hPdef
    have ht0 : 0 < minTriangleArea P := by linarith
    obtain ⟨-, d2, d3⟩ := ne_of_sarea_pos (P := P) (i := 0) (j := 2) (k := m) hm.1
    obtain ⟨-, e2, -⟩ := ne_of_sarea_pos (P := P) (i := 2) (j := 1) (k := m) hm.2.1
    obtain ⟨-, f2, f3⟩ := ne_of_sarea_pos (P := P) (i := 0) (j := 2) (k := m') hm'.1
    obtain ⟨-, g2, -⟩ := ne_of_sarea_pos (P := P) (i := 2) (j := 3) (k := m') hm'.2.1
    have l1 := sarea_ge_of_le_min_of_pos ht0 le_rfl 0 2 m hm.1 (by decide) d2 d3
    have l2 := sarea_ge_of_le_min_of_pos ht0 le_rfl 2 1 m hm.2.1 (by decide) e2 d2
    have l3 := sarea_ge_of_le_min_of_pos ht0 le_rfl 1 0 m hm.2.2 (by decide) d3 e2
    have l1' := sarea_ge_of_le_min_of_pos ht0 le_rfl 0 2 m' hm'.1 (by decide) f2 f3
    have l2' := sarea_ge_of_le_min_of_pos ht0 le_rfl 2 3 m' hm'.2.1 (by decide) g2 f2
    have l3' := sarea_ge_of_le_min_of_pos ht0 le_rfl 3 0 m' hm'.2.2 (by decide) f3 g2
    have s1 := sarea_add_sarea_add_sarea ((0 : ℝ), a) (b, 0) (0, h) (P m)
    have s2 := sarea_add_sarea_add_sarea ((0 : ℝ), a) (b, 0) (c, 0) (P m')
    have e1 : sarea ((0 : ℝ), a) (b, 0) (0, h) = b * (h - a) := by unfold sarea; ring
    have e2 : sarea ((0 : ℝ), a) (b, 0) (c, 0) = a * (c - b) := by unfold sarea; ring
    have k1 : 1 / 4 < b * (h - a) := by
      have : sarea (P 0) (P 2) (P m) + sarea (P 2) (P 1) (P m) + sarea (P 1) (P 0) (P m) =
          b * (h - a) := by rw [← e1]; exact s1
      linarith
    have k2 : 1 / 4 < a * (c - b) := by
      have : sarea (P 0) (P 2) (P m') + sarea (P 2) (P 3) (P m') + sarea (P 3) (P 0) (P m') =
          a * (c - b) := by rw [← e2]; exact s2
      linarith
    have k1' : 1 / 4 < b * (1 - a) := by nlinarith
    have k2' : 1 / 4 < a * (1 - b) := by nlinarith
    have hx : a * (1 - a) ≤ 1 / 4 := by nlinarith [sq_nonneg (a - 1 / 2)]
    have hy : b * (1 - b) ≤ 1 / 4 := by nlinarith [sq_nonneg (b - 1 / 2)]
    have hxy : (b * (1 - a)) * (a * (1 - b)) = (a * (1 - a)) * (b * (1 - b)) := by ring
    have : 1 / 4 * (1 / 4) < (b * (1 - a)) * (a * (1 - b)) :=
      mul_lt_mul'' k1' k2' (by norm_num) (by norm_num)
    have : (a * (1 - a)) * (b * (1 - b)) ≤ 1 / 4 * (1 / 4) :=
      mul_le_mul hx hy (by nlinarith) (by norm_num)
    linarith
  · funext i
    fin_cases i <;> rfl

end Heilbronn.Nine.QuadrilateralHull
