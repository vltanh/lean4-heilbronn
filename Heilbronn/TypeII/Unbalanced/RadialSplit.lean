module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.CellI
public import Heilbronn.TypeII.TypeIICompletion.Unbalanced
public import Heilbronn.Hulls.FourInteriorQuadrilaterals

/-! # The radial split in the unbalanced upper cut (`hand/UNBALANCED_RADIAL_SPLIT.md`)

**Role.** Primary route. `UNBALANCED_UPPER_CELL_II` (lines 49-52) cites Theorem 1 for the radial
labelling of the two-point upper cut in cell II. Lemma 2 (the lower support triangle `DRW` has
doubled area `Λ < 1`) and Corollary 3 hold for every quadrilateral right hull.

**Setting** (lines 5-23): `Row123 l b P Q R S T` with minimum area at least
`A₀ = (9√65 - 55)/320` (so every actual doubled area exceeds `s = 7/64` and the global capacity
theorem `THREE_INTERIOR_TRIANGLES:Corollary5` applies), the right hull is the quadrilateral
`B, R, S, C` with `T` inside (`QuadHull`). For Theorem 1 also: both central points above `CE`,
support cell II, and `PQ` separating `{D, C}` from `{E, B}` (`UNBALANCED_RIGHT_HULL`
Theorems 2-4). Write `R = (r, u)`, `q = 1 - λ`, `w = 1 - b`, `W = DE ∩ BR = (0, -bu/(r-b))`
(`radialW`) and `Λ = 2·area(DRW) = r + rbu/(r-b)` (`radialLambda`, equation (1)).

**Results.**
* `lemma2`: `Λ < 1` as soon as all doubled areas on `B, R, S, C` are at least `s`.
* `corollary3`: at most one further actual point is strictly inside both `DBR` and `DER`.
* `claim_empty_ear` (4): in the two-point upper cut `[EBR] < 43/160 < 3s`, `EBR` is empty, the
  right points are below `CE`, and `D, E, R, C` is strictly convex.
* `claim_not_both_C_side`: `P, Q` are not both on the `C`-side of `DR`.
* `theorem1`: after interchanging `P, Q`, `P` and `T` are on the `C`-side of `DR`, `Q` on its
  `B`-side, `R, S, T` are below `CE`, `EBR` is empty and `u < 3/16` (`RadialConclusion`).

Implicit in the manuscript: Corollary 3 is stated in the note's standing setting (quadrilateral
right hull, minimum area `≥ A₀`), which its proof (Lemma 2) needs; it does not use the cut.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedRadialSplit

open UnbalancedRightHull

/-! ### Helpers -/

section Helpers

open TypeII

/-- The scalar core of Lemma 2: the ear `sw ≤ (r - b - wu)(1 - r)` (`m = n = 1`) gives
`Λ = r + rbu/(r-b) < 1`. -/
theorem lambda_alg {b r u : ℝ} (hb : 0 < b) (hbr : b < r) (hr1 : r < 1)
    (hear : 7 / 64 * (1 - b) ≤ (r - b - (1 - b) * u) * (1 - r)) :
    r + r * b * u / (r - b) < 1 := by
  have hrb : 0 < r - b := by linarith
  have hz : 0 < 1 - r := by linarith
  have hw : 0 < 1 - b := by linarith
  have hr0 : 0 < r := by linarith
  have hrbsw : 0 < r * b * (7 / 64) * (1 - b) :=
    mul_pos (mul_pos (mul_pos hr0 hb) (by norm_num)) hw
  have hbw : 0 < b * (1 - b) := mul_pos hb hw
  -- `(r - b)(1 - r)(b - (1 - r)) < rbsw`
  have key : (r - b) * (1 - r) * (b - (1 - r)) < r * b * (7 / 64) * (1 - b) := by
    rcases le_or_gt b (1 - r) with hzb | hzb
    · have : (r - b) * (1 - r) * (b - (1 - r)) ≤ 0 :=
        mul_nonpos_of_nonneg_of_nonpos (mul_nonneg hrb.le hz.le) (by linarith)
      linarith
    · have h4 : 4 * (b * (1 - b)) ≤ 1 := by nlinarith [sq_nonneg (2 * b - 1)]
      have e : (r - b) * (1 - r) * (b - (1 - r)) =
          b * (1 - b) * (1 - r) - (1 - r) ^ 2 * r := by ring
      have hG : (1 - r) - 4 * (1 - r) ^ 2 * r ≤ 25 / 256 * r := by
        rcases le_total (1 - r) (1 / 5) with h5 | h5
        · have h0 : 0 ≤ 1 - r := hz.le
          have h1 : 0 ≤ 1 / 5 - (1 - r) := by linarith
          nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 3),
            mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 2),
            mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 1),
            mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 0)]
        · have h0 : 0 ≤ (1 - r) - 1 / 5 := by linarith
          have h1 : 0 ≤ 1 / 2 - (1 - r) := by linarith
          nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 3),
            mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 2),
            mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 1),
            mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 0)]
      have k1 : 4 * (b * (1 - b)) * ((1 - r) ^ 2 * r) ≤ (1 - r) ^ 2 * r :=
        mul_le_of_le_one_left (mul_nonneg (sq_nonneg _) hr0.le) h4
      have k2 := mul_le_mul_of_nonneg_left hG hbw.le
      have k3 : 0 < b * (1 - b) * r := mul_pos hbw hr0
      nlinarith
  -- `u(1 - r) w ≤ (r - b)(1 - r) - sw`
  have hu' : (1 - b) * u * (1 - r) ≤ (r - b) * (1 - r) - 7 / 64 * (1 - b) := by nlinarith
  rw [← sub_pos]
  have : 1 - (r + r * b * u / (r - b)) = ((r - b) * (1 - r) - r * b * u) / (r - b) := by
    field_simp; ring
  rw [this]
  apply div_pos _ hrb
  have k4 := mul_le_mul_of_nonneg_left hu' (mul_pos hr0 hb).le
  have k5 : 0 < (1 - r) * (1 - b) := mul_pos hz hw
  by_contra hcon
  push Not at hcon
  have := mul_le_mul_of_nonneg_left hcon k5.le
  nlinarith

/-- The same-side sector inequality (4) of `FOUR_INTERIOR_QUADRILATERALS.md` for an arbitrary
counterclockwise convex quadrilateral `ABCD`, transported from the normal form (`claim_1`,
`claim_4`) by the affine map of determinant `1/W`, `W = 2·area`. (A copy of
`FourInteriorQuadrilaterals.claim4_general`, built on the baseline statements.) -/
theorem claim4_transport {A B C D P Q : Point} {σ : ℝ} (hq : ConvexQuad A B C D) (hσ : 0 < σ)
    (hP : InTriangle P A B C ∧ InTriangle P A B D) (hQ : InTriangle Q A B C ∧ InTriangle Q A B D)
    (hmin : σ / 2 ≤ minTriangleArea ![A, B, C, D, P, Q])
    (hsame : 0 < sarea P Q A * sarea P Q B) :
    0 < sarea A B D / (2 * QuadrilateralHull.quadArea A B C D) *
          (sarea A B C / (2 * QuadrilateralHull.quadArea A B C D)) -
        σ / (2 * QuadrilateralHull.quadArea A B C D) *
          (sarea A B D / (2 * QuadrilateralHull.quadArea A B C D) +
            sarea A B C / (2 * QuadrilateralHull.quadArea A B C D)) ∧
      2 * Real.sqrt (σ / (2 * QuadrilateralHull.quadArea A B C D) *
          (sarea A B D / (2 * QuadrilateralHull.quadArea A B C D)) *
          (sarea A B C / (2 * QuadrilateralHull.quadArea A B C D))) ≤
        sarea A B D / (2 * QuadrilateralHull.quadArea A B C D) *
          (sarea A B C / (2 * QuadrilateralHull.quadArea A B C D)) -
        σ / (2 * QuadrilateralHull.quadArea A B C D) *
          (sarea A B D / (2 * QuadrilateralHull.quadArea A B C D) +
            sarea A B C / (2 * QuadrilateralHull.quadArea A B C D)) := by
  have hq' : QuadrilateralHull.ConvexQuad A B C D := hq
  obtain ⟨ha0, ha1, hb0, hb1, -, -, α, β, γ, δ, ε, ζ, hdet, eA, eB, eD, eC⟩ :=
    FourInteriorQuadrilaterals.claim_1 hq'
  have hW : 0 < 2 * QuadrilateralHull.quadArea A B C D := by
    unfold QuadrilateralHull.quadArea
    obtain ⟨q1, -, q3, -⟩ := hq
    have : sarea A C D = sarea C D A := by unfold sarea; ring
    linarith
  set W := 2 * QuadrilateralHull.quadArea A B C D with hW_def
  set a := sarea A B D / W with ha_def
  set b := sarea A B C / W with hb_def
  have hdp : 0 < α * δ - β * γ := by rw [hdet]; positivity
  have tr : ∀ {X U V Y : Point}, InTriangle X U V Y →
      InTriangle (affineMap α β γ δ ε ζ X) (affineMap α β γ δ ε ζ U) (affineMap α β γ δ ε ζ V)
        (affineMap α β γ δ ε ζ Y) := fun ⟨x1, x2, x3⟩ => by
    refine ⟨?_, ?_, ?_⟩ <;> rw [sarea_affineMap] <;> positivity
  have hP' : FourInteriorQuadrilaterals.InSector (affineMap α β γ δ ε ζ P) (0, 0) (1, 0)
      ((1 - b) / a, b) (0, a) := by
    rw [← eA, ← eB, ← eC, ← eD]; exact ⟨tr hP.1, tr hP.2⟩
  have hQ' : FourInteriorQuadrilaterals.InSector (affineMap α β γ δ ε ζ Q) (0, 0) (1, 0)
      ((1 - b) / a, b) (0, a) := by
    rw [← eA, ← eB, ← eC, ← eD]; exact ⟨tr hQ.1, tr hQ.2⟩
  have e : ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), affineMap α β γ δ ε ζ P,
      affineMap α β γ δ ε ζ Q] = affineMap α β γ δ ε ζ ∘ ![A, B, C, D, P, Q] := by
    funext i; fin_cases i <;> simp [eA, eB, eC, eD]
  refine FourInteriorQuadrilaterals.claim_4 ha0 ha1 hb0 hb1 (by positivity) hP' hQ' ?_ ?_
  · rw [e, minTriangleArea_affineMap, abs_of_pos hdp, hdet]
    have := mul_le_mul_of_nonneg_left hmin (by positivity : (0 : ℝ) ≤ 1 / W)
    calc σ / W / 2 = 1 / W * (σ / 2) := by ring
      _ ≤ _ := this
  · rw [← eA, ← eB, sarea_affineMap, sarea_affineMap]
    have : (α * δ - β * γ) * sarea P Q A * ((α * δ - β * γ) * sarea P Q B) =
        (α * δ - β * γ) ^ 2 * (sarea P Q A * sarea P Q B) := by ring
    rw [this]; positivity

/-- The scalar consequence of (4) in the sector `DCE ∩ DCR` of `D, E, R, C`
(`UNBALANCED_RADIAL_SPLIT.md` §3): with `a = v/W`, `b = q/W`, `s = σ/W`, `W = qr + v`,
`4σ(r + 1) ≤ (1 - 2σ)²`. -/
theorem sector_alg {v q r σ W : ℝ} (hv : 0 < v) (hv1 : v ≤ 1) (hq : 0 < q) (hq1 : q ≤ 1)
    (hσ : 0 < σ) (hr : 0 ≤ r) (hW : W = q * r + v)
    (h1 : 0 < v / W * (q / W) - σ / W * (v / W + q / W))
    (h2 : 2 * Real.sqrt (σ / W * (v / W) * (q / W)) ≤ v / W * (q / W) - σ / W * (v / W + q / W)) :
    4 * σ * (r + 1) ≤ (1 - 2 * σ) ^ 2 := by
  have hW0 : 0 < W := by rw [hW]; positivity
  have e1 : v / W * (q / W) - σ / W * (v / W + q / W) = (v * q - σ * (v + q)) / W ^ 2 := by
    field_simp
  have e2 : σ / W * (v / W) * (q / W) = σ * v * q / W ^ 3 := by field_simp
  rw [e1] at h1 h2
  rw [e2] at h2
  have hA : 0 < v * q - σ * (v + q) := by
    have := (div_pos_iff_of_pos_right (by positivity : (0:ℝ) < W ^ 2)).1 h1; exact this
  have hsq := Real.sq_sqrt (show 0 ≤ σ * v * q / W ^ 3 by positivity)
  have h3 : 4 * (σ * v * q / W ^ 3) ≤ ((v * q - σ * (v + q)) / W ^ 2) ^ 2 := by
    have := pow_le_pow_left₀ (by positivity) h2 2
    nlinarith
  have h4 : 4 * σ * v * q * W ≤ (v * q - σ * (v + q)) ^ 2 := by
    have e3 : ((v * q - σ * (v + q)) / W ^ 2) ^ 2 = (v * q - σ * (v + q)) ^ 2 / W ^ 4 := by
      field_simp
    have h3' : 4 * σ * v * q / W ^ 3 ≤ (v * q - σ * (v + q)) ^ 2 / W ^ 4 := by
      rw [← e3]; rw [mul_div_assoc] at h3 ⊢
      have : 4 * σ * v * q / W ^ 3 = 4 * (σ * v * q / W ^ 3) := by ring
      linarith
    rw [div_le_div_iff₀ (by positivity) (by positivity)] at h3'
    have e4 : 4 * σ * v * q * W ^ 4 = (4 * σ * v * q * W) * W ^ 3 := by ring
    rw [e4] at h3'
    exact le_of_mul_le_mul_right h3' (by positivity)
  -- `vq - σ(v + q) ≤ vq(1 - 2σ)` and `W ≥ vq(r + 1)`
  have h5 : v * q - σ * (v + q) ≤ v * q * (1 - 2 * σ) := by
    nlinarith [mul_nonneg hv.le (sub_nonneg.2 hq1), mul_nonneg hq.le (sub_nonneg.2 hv1)]
  have h6 : v * q * (r + 1) ≤ W := by
    rw [hW]; nlinarith [mul_nonneg (mul_nonneg hq.le hr) (sub_nonneg.2 hv1),
      mul_nonneg hv.le (sub_nonneg.2 hq1)]
  have h7 : (v * q - σ * (v + q)) ^ 2 ≤ (v * q * (1 - 2 * σ)) ^ 2 :=
    pow_le_pow_left₀ hA.le h5 2
  have hvq : 0 < v * q := mul_pos hv hq
  have h8 : 4 * σ * (v * q) ^ 2 * (r + 1) ≤ (v * q) ^ 2 * (1 - 2 * σ) ^ 2 := by
    have := mul_le_mul_of_nonneg_left h6 (by positivity : (0:ℝ) ≤ 4 * σ * (v * q))
    nlinarith
  have := mul_pos hvq hvq
  nlinarith

end Helpers

open TypeII UnbalancedCellI

variable {l b : ℝ} {P Q R S T : Point}

/-- The point `W = DE ∩ BR = (0, -bu/(r - b))` of (1). -/
def radialW (b : ℝ) (R : Point) : Point := (0, -(b * R.2) / (R.1 - b))

/-- `Λ = 2·area(DRW) = r + rbu/(r - b)`, equation (1). -/
def radialLambda (b : ℝ) (R : Point) : ℝ := R.1 + R.1 * b * R.2 / (R.1 - b)

/-- `X` lies strictly inside both `DBR` and `DER` (counterclockwise orders `D, B, R` and
`D, E, R`). -/
def InDBRandDER (l b : ℝ) (R X : Point) : Prop :=
  InTriangle X ptD (ptB b) R ∧ InTriangle X ptD (ptE l) R

/-- The conclusion of Theorem 1 for the labelling `P, Q`: `P, T` on the `C`-side of `DR`, `Q` on
its `B`-side; `R, S, T` below `CE`; `EBR` contains no further actual point; `u < 3/16`, indeed
`1 - u = [DRC] ≥ Ks` (`s = 7/64`). -/
def RadialConclusion (l b : ℝ) (P Q R S T : Point) : Prop :=
  0 < sarea ptD R P ∧ sarea ptD R Q < 0 ∧ 0 < sarea ptD R T ∧
    sarea (ptE l) ptC R < 0 ∧ sarea (ptE l) ptC S < 0 ∧ sarea (ptE l) ptC T < 0 ∧
    NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R ∧
    R.2 < 3 / 16 ∧ Kc * (7 / 64) ≤ 1 - R.2

/-- A central point on the `C`-side of `DR` lies inside `DRC` (the diagonal `DR` of `D, B, R, C`). -/
theorem central_DRC {b : ℝ} {R X : Point} (hX : InTriangle X ptD (ptB b) ptC)
    (hDR : 0 < sarea ptD R X) (hBRC : 0 < sarea (ptB b) R ptC) (hu1 : R.2 < 1) :
    InTriangle X ptD R ptC := by
  refine ⟨hDR, ?_, hX.2.2⟩
  apply bary_pos hX
  · rw [show sarea R ptC ptD = 1 - R.2 by simp only [sarea, ptC, ptD]; ring]; linarith
  · rw [show sarea R ptC (ptB b) = sarea (ptB b) R ptC by unfold sarea; ring]; exact hBRC.le
  · rw [show sarea R ptC ptC = 0 by unfold sarea; ring]
  · rw [show sarea R ptC ptD = 1 - R.2 by simp only [sarea, ptC, ptD]; ring,
      show sarea R ptC (ptB b) = sarea (ptB b) R ptC by unfold sarea; ring,
      show sarea R ptC ptC = 0 by unfold sarea; ring]; linarith

/-- A central point above `CE` on the `B`-side of `DR` lies inside both `DBR` and `DER`
(`UNBALANCED_RADIAL_SPLIT.md` §4). -/
theorem central_DBR_DER {l b : ℝ} {R X : Point} (hb : 0 < b) (hl1 : l < 1)
    (hX : InTriangle X ptD (ptB b) ptC) (hXE : InTriangle X ptD (ptE l) ptC)
    (hDR : sarea ptD R X < 0) (hbr : b < R.1) (hu : 0 ≤ R.2) (hBRC : 0 < sarea (ptB b) R ptC)
    (hERC : 0 < sarea (ptE l) R ptC) : InDBRandDER l b R X := by
  have hRD : 0 < sarea R ptD X := by
    rw [show sarea R ptD X = -sarea ptD R X by unfold sarea; ring]; linarith
  have hDBR : 0 < sarea ptD (ptB b) R := by
    simp only [sarea, ptD, ptB]; nlinarith
  have hDER : 0 < sarea ptD (ptE l) R := by
    simp only [sarea, ptD, ptE]; nlinarith
  refine ⟨⟨hX.1, ?_, hRD⟩, ⟨hXE.1, ?_, hRD⟩⟩
  · apply bary_pos hX
    · rw [show sarea (ptB b) R ptD = sarea ptD (ptB b) R by unfold sarea; ring]; exact hDBR.le
    · rw [show sarea (ptB b) R (ptB b) = 0 by unfold sarea; ring]
    · exact hBRC.le
    · rw [show sarea (ptB b) R ptD = sarea ptD (ptB b) R by unfold sarea; ring,
        show sarea (ptB b) R (ptB b) = 0 by unfold sarea; ring]; linarith
  · apply bary_pos hXE
    · rw [show sarea (ptE l) R ptD = sarea ptD (ptE l) R by unfold sarea; ring]; exact hDER.le
    · rw [show sarea (ptE l) R (ptE l) = 0 by unfold sarea; ring]
    · exact hERC.le
    · rw [show sarea (ptE l) R ptD = sarea ptD (ptE l) R by unfold sarea; ring,
        show sarea (ptE l) R (ptE l) = 0 by unfold sarea; ring]; linarith

/-- **Lemma 2** (`UNBALANCED_RADIAL_SPLIT:Lemma2`). Let `B = (b, 0)` with `0 < b ≤ 1/2`,
`C = (1, 1)`, and `R, S` points of the square with `B, R, S, C` a strictly convex
counterclockwise quadrilateral. If all actual doubled areas on `B, R, S, C` are at least
`s = 7/64`, then `Λ = r + rbu/(r - b) < 1`. (Any cell, any cut.)
`hand/UNBALANCED_RADIAL_SPLIT.md`, lines 44-102.
Uses: UNBALANCED_RIGHT_HULL:claim-lower-vertex. -/
theorem lemma2 {b : ℝ} {R S : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hR : R ∈ unitSquare)
    (hS : S ∈ unitSquare) (hquad : ConvexQuad (ptB b) R S ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptB b, R, S, ptC]) :
    radialLambda b R < 1 := by
  have hb1 : b < 1 := by linarith
  have hw : 0 < 1 - b := by linarith
  obtain ⟨hur, hbr, hrk, hk1, hu, -, -⟩ := quad_order hb hb1 hR hS hquad
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptB b, R, S, ptC] := by linarith
  have hU : 7 / 64 ≤ |sarea (ptB b) R S| := le_abs_sarea_of_le_min hm 0 1 2
  have hV : 7 / 64 ≤ |sarea ptC R S| := le_abs_sarea_of_le_min hm 3 1 2
  rw [abs_of_pos hquad.1] at hU
  have cV : sarea ptC R S = sarea R S ptC := by unfold sarea; ring
  rw [abs_of_pos (by rw [cV]; exact hquad.2.1)] at hV
  have hq4 := hquad.2.2.2
  have hru' : b + (1 - b) * R.2 < R.1 := by simp only [sarea, ptC, ptB] at hq4; linarith
  have hear := ear_phys (s := 7 / 64) (m := 1) (n := 1) hb1 hu hru' (by linarith) hk1
    (by linarith) (by linarith)
  have e1 : 7 / 64 / (1 - b) * (1 * ((R.1 - b) / (1 - b)) + 1 * (1 - (R.1 - b) / (1 - b))) =
      7 / 64 * (1 - b) / (1 - b) ^ 2 := by field_simp; ring
  have e2 : ((R.1 - b) / (1 - b) - R.2) * (1 - (R.1 - b) / (1 - b)) =
      (R.1 - b - (1 - b) * R.2) * (1 - R.1) / (1 - b) ^ 2 := by field_simp; ring
  rw [e1, e2, div_le_div_iff_of_pos_right (by positivity)] at hear
  exact lambda_alg hb hbr (by linarith) hear

/-- Six distinct indices of the nine-point configuration. -/
theorem inj_six {i j : Fin 9} (hij : i ≠ j) (hi0 : i ≠ 0) (hi6 : i ≠ 6) (hi2 : i ≠ 2)
    (hi3 : i ≠ 3) (hj0 : j ≠ 0) (hj6 : j ≠ 6) (hj2 : j ≠ 2) (hj3 : j ≠ 3) :
    Function.Injective ![(0 : Fin 9), 6, 2, 3, i, j] := by
  intro x y hxy
  fin_cases x <;> fin_cases y <;> simp_all [eq_comm]

/-- **Corollary 3** (`UNBALANCED_RADIAL_SPLIT:Corollary3`). At most one further actual point is
strictly inside both `DBR` and `DER`. `hand/UNBALANCED_RADIAL_SPLIT.md`, lines 104-122.
Uses: UNBALANCED_RADIAL_SPLIT:Lemma2, TYPE_II_COMPLETION:Theorem13. -/
theorem corollary3 (h : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    AtMostOne (typeIIConfig l b P Q R S T) (InDBRandDER l b R) := by
  intro i j hi hj
  by_contra hij
  have hb := h.b_pos
  have hb2 := h.b_le
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith
  obtain ⟨hur, hbr, hrk, hk1, hu, -, -⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) hmin
  have hmin' := hmin
  rw [typeIIConfig_eq] at hmin7 hmin'
  have hm4 : 7 / 128 ≤ minTriangleArea ![ptB b, R, S, ptC] :=
    hmin7.trans (min_le_min_reindex (by norm_num) _ _ ![3, 6, 7, 1] (by decide)
      (by funext x; fin_cases x <;> rfl))
  have hΛ := lemma2 hb hb2 h.R_mem h.S_mem hq.1 hm4
  have hrb : 0 < R.1 - b := by linarith
  have hr0 : 0 < R.1 := by linarith
  have hΛ0 : 0 < radialLambda b R := by
    unfold radialLambda; have := mul_nonneg (mul_nonneg hr0.le hb.le) hu; positivity
  set Λ := radialLambda b R with hΛ_def
  set W0 := radialW b R with hW0_def
  have hDRW : sarea ptD R W0 = -Λ := by
    simp only [hW0_def, hΛ_def, sarea, ptD, radialW, radialLambda]; field_simp; ring
  obtain ⟨α, β, γ, δ, ε, ζ, hdet, hmap⟩ := hsMap_affine ptD R W0 (by rw [hDRW]; linarith)
  set m := affineMap α β γ δ ε ζ with hm_def
  have hne : sarea ptD R W0 ≠ 0 := by rw [hDRW]; linarith
  have mD : m ptD = hsA := by rw [hmap]; exact hsMap_U hne
  have mR : m R = hsE := by rw [hmap]; exact hsMap_V hne
  set hh := (1 - l) * (R.1 - b) / (R.1 - b + b * R.2) with hhh
  set ff := b / R.1 with hff
  have hden : 0 < R.1 - b + b * R.2 := by have := mul_nonneg hb.le hu; linarith
  have mE : m (ptE l) = hsH hh := by
    rw [hmap]
    simp only [hsMap, hDRW]
    have e1 : sarea ptD (ptE l) W0 = 0 := by simp only [hW0_def, sarea, ptD, ptE, radialW]; ring
    have e2 : sarea ptD R (ptE l) = -(R.1 * (1 - l)) := by simp only [sarea, ptD, ptE]; ring
    rw [e1, e2]
    ext
    · simp [hsH]
    · simp only [hsH, hhh, hΛ_def, radialLambda]
      field_simp; ring
  have mB : m (ptB b) = hsF ff := by
    rw [hmap]
    simp only [hsMap, hDRW]
    have e1 : sarea ptD (ptB b) W0 = -(b * (1 + b * R.2 / (R.1 - b))) := by
      simp only [hW0_def, sarea, ptD, ptB, radialW]; ring
    have e2 : sarea ptD R (ptB b) = -(R.1 - b + b * R.2) := by simp only [sarea, ptD, ptB]; ring
    rw [e1, e2]
    ext
    · simp only [hsF, hff, hΛ_def, radialLambda]
      field_simp
    · simp only [hsF, hΛ_def, radialLambda]
      field_simp
      try ring
  have hsr : ∀ p q r, sarea (m p) (m q) (m r) = -sarea p q r / Λ := by
    intro p q r; rw [hm_def, sarea_affineMap, hdet, hDRW]; field_simp
  have tH : ∀ Y : Point, InTriangle Y ptD (ptE l) R → InTriangle (m Y) hsA hsE (hsH hh) := by
    intro Y ⟨y1, y2, y3⟩
    rw [← mD, ← mR, ← mE]
    refine ⟨?_, ?_, ?_⟩ <;> rw [hsr] <;> apply div_pos _ hΛ0
    · rw [show sarea ptD R Y = -sarea R ptD Y by unfold sarea; ring]; linarith
    · rw [show sarea R (ptE l) Y = -sarea (ptE l) R Y by unfold sarea; ring]; linarith
    · rw [show sarea (ptE l) ptD Y = -sarea ptD (ptE l) Y by unfold sarea; ring]; linarith
  have tF : ∀ Y : Point, InTriangle Y ptD (ptB b) R → InTriangle (m Y) hsA hsE (hsF ff) := by
    intro Y ⟨y1, y2, y3⟩
    rw [← mD, ← mR, ← mB]
    refine ⟨?_, ?_, ?_⟩ <;> rw [hsr] <;> apply div_pos _ hΛ0
    · rw [show sarea ptD R Y = -sarea R ptD Y by unfold sarea; ring]; linarith
    · rw [show sarea R (ptB b) Y = -sarea (ptB b) R Y by unfold sarea; ring]; linarith
    · rw [show sarea (ptB b) ptD Y = -sarea ptD (ptB b) Y by unfold sarea; ring]; linarith
  have hh0 : 0 < hh := by rw [hhh]; apply div_pos _ hden; exact mul_pos (by linarith) hrb
  have hh1 : hh < 1 := by
    rw [hhh, div_lt_one hden]; nlinarith [mul_nonneg hb.le hu]
  have hf0 : 0 < ff := div_pos hb hr0
  have hf1 : ff < 1 := by rw [hff, div_lt_one hr0]; exact hbr
  obtain ⟨hiB, hiE⟩ := hi
  obtain ⟨hjB, hjE⟩ := hj
  have h13 := TypeIICompletion.theorem13 hh0 hh1 hf0 hf1 (tH _ hiE) (tF _ hiB) (tH _ hjE)
    (tF _ hjB)
  set X := typeIIConfig l b P Q R S T with hX
  have hcomp : ![hsA, hsE, hsH hh, hsF ff, m (X i), m (X j)] =
      m ∘ ![ptD, R, ptE l, ptB b, X i, X j] := by
    funext x; fin_cases x <;> simp [mD, mR, mE, mB]
  rw [hcomp, hm_def, minTriangleArea_affineMap, hdet, hDRW] at h13
  -- the six points have least area at least `A₀`
  have hiB' : InTriangle (X i) (X 0) (X 3) (X 6) := hiB
  have hiE' : InTriangle (X i) (X 0) (X 2) (X 6) := hiE
  have hjB' : InTriangle (X j) (X 0) (X 3) (X 6) := hjB
  have hjE' : InTriangle (X j) (X 0) (X 2) (X 6) := hjE
  obtain ⟨-, -, -, hi0, hi3, hi6⟩ := inTriangle_ne_idx hiB'
  obtain ⟨-, -, -, -, hi2, -⟩ := inTriangle_ne_idx hiE'
  obtain ⟨-, -, -, hj0, hj3, hj6⟩ := inTriangle_ne_idx hjB'
  obtain ⟨-, -, -, -, hj2, -⟩ := inTriangle_ne_idx hjE'
  have hinj := inj_six hij hi0 hi6 hi2 hi3 hj0 hj6 hj2 hj3
  have hm6 : A₀ ≤ minTriangleArea ![ptD, R, ptE l, ptB b, X i, X j] := by
    have := min_le_min_reindex (by norm_num) X ![ptD, R, ptE l, ptB b, X i, X j] _ hinj
      (by funext x; fin_cases x <;> rfl)
    rw [hX, typeIIConfig_eq] at this ⊢
    exact hmin'.trans this
  rw [one_div, abs_inv, abs_neg, abs_of_pos hΛ0] at h13
  have hA := A₀_bounds
  have : minTriangleArea ![ptD, R, ptE l, ptB b, X i, X j] < 3 / 56 * Λ := by
    rw [inv_mul_lt_iff₀ hΛ0] at h13; linarith
  nlinarith

/-- **Claim** (`UNBALANCED_RADIAL_SPLIT:claim-empty-ear`), equation (4). In the two-point upper
cut, with `c = 1 - wq`, `s = 7/64`:
`δ = [EBR] ≤ c - 2b√s < 13/80 + (17/80)b ≤ 43/160 < 3s`, so `EBR` contains no further actual
point; the three right points are below `CE`; and `D, E, R, C` is a strictly convex
(counterclockwise) quadrilateral. `hand/UNBALANCED_RADIAL_SPLIT.md`, lines 124-160.
Uses: UNBALANCED_RIGHT_HULL:claim-q67/80, UNBALANCED_RIGHT_HULL:claim-generic-ear.
The right points are below `CE` by the direct argument (`UnbalancedCellI.below_CE_of_right`: the
container is below `BC`, which is below `CE` for `x < 1`) instead of
THREE_INTERIOR_TRIANGLES:Corollary5. -/
theorem claim_empty_ear (h : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q) :
    let s : ℝ := 7 / 64
    let c := 1 - (1 - b) * (1 - l)
    sarea (ptE l) (ptB b) R ≤ c - 2 * b * Real.sqrt s ∧
      c - 2 * b * Real.sqrt s < 13 / 80 + 17 / 80 * b ∧ 13 / 80 + 17 / 80 * b ≤ 43 / 160 ∧
      (43 / 160 : ℝ) < 3 * s ∧
      NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R ∧
      sarea (ptE l) ptC R < 0 ∧ sarea (ptE l) ptC S < 0 ∧ sarea (ptE l) ptC T < 0 ∧
      ConvexQuad ptD (ptE l) R ptC := by
  intro s c
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) hmin
  obtain ⟨-, -, -, hq67, -, -⟩ := claim_q67_80 h hmin7 hP hQ
  obtain ⟨hx0, hx1, hu, hux, ha, hgen, -, -⟩ := quad_ears h hmin7 hq
  have hδ := ear_generic hb hl hb1 hx1 ha.le hgen
  have e : sarea (ptE l) (ptB b) R = b * R.2 + l * ((1 - b) * ((R.1 - b) / (1 - b))) := by
    simp only [sarea, ptE, ptB]; field_simp; ring
  have hc : c = b + l * (1 - b) := by simp only [c]; ring
  have hsq : b * Real.sqrt s ≤
      Real.sqrt ((b + l * (1 - b)) * (b * (7 / 64 / (1 - b)))) := by
    rw [show b * Real.sqrt s = Real.sqrt (b ^ 2 * s) by
      rw [Real.sqrt_mul (sq_nonneg b), Real.sqrt_sq hb.le]]
    apply Real.sqrt_le_sqrt
    have h1 : b ^ 2 * s ≤ b * (b * (7 / 64 / (1 - b))) := by
      simp only [s]
      rw [show b * (b * (7 / 64 / (1 - b))) = b ^ 2 * (7 / 64) / (1 - b) by ring,
        le_div_iff₀ hw]
      nlinarith [sq_nonneg b]
    have h2 : b * (b * (7 / 64 / (1 - b))) ≤ (b + l * (1 - b)) * (b * (7 / 64 / (1 - b))) := by
      apply mul_le_mul_of_nonneg_right _ (by positivity)
      nlinarith
    linarith
  have h1 : sarea (ptE l) (ptB b) R ≤ c - 2 * b * Real.sqrt s := by
    rw [e, hc]; linarith
  have hs5 : 5 / 16 < Real.sqrt s := by
    rw [Real.lt_sqrt (by norm_num)]; simp only [s]; norm_num
  have h2 : c - 2 * b * Real.sqrt s < 13 / 80 + 17 / 80 * b := by
    rw [hc]
    have k1 := mul_lt_mul_of_pos_left hs5 hb
    nlinarith
  have h3 : 13 / 80 + 17 / 80 * b ≤ 43 / 160 := by linarith [h.b_le]
  have h4 : (43 / 160 : ℝ) < 3 * s := by simp only [s]; norm_num
  have hR := below_CE_of_right hb hb1 hl hl1 h.R_mem h.R_right
  have hS := below_CE_of_right hb hb1 hl hl1 h.S_mem h.S_right
  have hT := below_CE_of_right hb hb1 hl hl1 h.T_mem h.T_right
  refine ⟨h1, h2, h3, h4, ?_, hR, hS, hT, ?_⟩
  · have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
    exact noPointInside_of_lt (a := 2) (b := 3) (c := 6) hm (by
      show sarea (ptE l) (ptB b) R < 3 * (7 / 64); linarith)
  · obtain ⟨-, hbr, -, -, -, -, -⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
    have hu1 : R.2 < 1 := by have := h.R_right; simp only [sarea, ptB, ptC] at this; nlinarith
    refine ⟨?_, ?_, ?_, ?_⟩
    · simp only [sarea, ptD, ptE]; nlinarith
    · rw [show sarea (ptE l) R ptC = -sarea (ptE l) ptC R by unfold sarea; ring]; linarith
    · simp only [sarea, ptD, ptC]; linarith
    · simp only [sarea, ptD, ptE, ptC]; linarith

/-- **Claim** (`UNBALANCED_RADIAL_SPLIT:claim-not-both-C-side`). In the setting of Theorem 1,
`P` and `Q` are not both on the `C`-side of `DR` (that would force `r ≤ 177/448`, against
`r ≥ b + 3s > 7/16`). `hand/UNBALANCED_RADIAL_SPLIT.md`, lines 162-205.
Uses: FOUR_INTERIOR_QUADRILATERALS:claim-(4), UNBALANCED_RADIAL_SPLIT:claim-empty-ear. -/
theorem claim_not_both_C_side (h : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellII (ptB b) R S ptC T)
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hsep : LineSeparates P Q ptD ptC (ptE l) (ptB b)) :
    ¬ (0 < sarea ptD R P ∧ 0 < sarea ptD R Q) := by
  rintro ⟨hDP, hDQ⟩
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) hmin
  obtain ⟨hPE, hQE, hm6, hBE, hDEB⟩ := upper_pair h hmin7 hP hQ
  obtain ⟨-, -, -, -, -, hR, -, -, hcq⟩ := claim_empty_ear h hmin hq hP hQ
  obtain ⟨hur, hbr, hrk, hk1, hu, -, -⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  have hu1 : R.2 < 1 := by have := h.R_right; simp only [sarea, ptB, ptC] at this; nlinarith
  have hPR := central_DRC h.P_central hDP h.R_right hu1
  have hQR := central_DRC h.Q_central hDQ h.R_right hu1
  have hquad : ConvexQuad ptC ptD (ptE l) R := ⟨hcq.2.2.2, hcq.1, hcq.2.1, hcq.2.2.1⟩
  have rot : ∀ {X A B C : Point}, InTriangle X A B C → InTriangle X C A B :=
    fun ⟨a1, a2, a3⟩ => ⟨a3, a1, a2⟩
  rw [typeIIConfig_eq] at hmin7
  have hm6' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptC, ptD, ptE l, R, P, Q] := by
    have := hmin7.trans (min_le_min_reindex (by norm_num) _ ![ptC, ptD, ptE l, R, P, Q]
      ![1, 0, 2, 6, 4, 5] (by decide) (by funext x; fin_cases x <;> rfl))
    linarith
  have hsame : 0 < sarea P Q ptC * sarea P Q ptD := by
    rcases hsep with ⟨a1, a2, -, -⟩ | ⟨a1, a2, -, -⟩ <;> nlinarith
  obtain ⟨k1, k2⟩ := claim4_transport hquad (σ := 7 / 64) (by norm_num) ⟨rot hPE, rot hPR⟩
    ⟨rot hQE, rot hQR⟩ hm6' hsame
  have eW : 2 * QuadrilateralHull.quadArea ptC ptD (ptE l) R = (1 - l) * R.1 + (1 - R.2) := by
    simp only [QuadrilateralHull.quadArea, sarea, ptC, ptD, ptE]; ring
  have ea : sarea ptC ptD R = 1 - R.2 := by simp only [sarea, ptC, ptD]; ring
  have eb : sarea ptC ptD (ptE l) = 1 - l := by simp only [sarea, ptC, ptD, ptE]; ring
  rw [eW, ea, eb] at k1 k2
  have hr := sector_alg (r := R.1) (by linarith) (by linarith) (by linarith) (by linarith)
    (by norm_num) (by linarith) (by ring) k1 k2
  -- but `r ≥ b + 3s > 7/16` (`[BRC] ≥ 3s` with `T` inside, `b > s`)
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have hBRC : 3 * (7 / 64) ≤ sarea (ptB b) R ptC :=
    three_le_of_inside (X := ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T]) (i := 8) (a := 3)
      (b := 6) (c := 1) hm hc.1
  simp only [sarea, ptB, ptC] at hBRC
  have hbs : 7 / 64 < b := by nlinarith
  nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - b) hu]

/-- In `NoPointInside`, the two central points may be interchanged. -/
theorem noPointInside_swapPQ {l b : ℝ} {P Q R S T A B C : Point}
    (h : NoPointInside (typeIIConfig l b P Q R S T) A B C) :
    NoPointInside (typeIIConfig l b Q P R S T) A B C := by
  intro i hi
  fin_cases i
  · exact h 0 hi
  · exact h 1 hi
  · exact h 2 hi
  · exact h 3 hi
  · exact h 5 hi
  · exact h 4 hi
  · exact h 6 hi
  · exact h 7 hi
  · exact h 8 hi

/-- With `EBR` empty, `T ∈ BCR` on the `B`-side of `DR` lies inside both `DBR` and `DER`
(`UNBALANCED_RADIAL_SPLIT.md` §4: the diagonal `ER` of `D, E, B, R`). -/
theorem T_DBR_DER (h : Row123 l b P Q R S T) (hc : CellII (ptB b) R S ptC T) (hbr : b < R.1)
    (hu : 0 ≤ R.2) (hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T])
    (hEBR : NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R) :
    sarea ptD R T < 0 → InDBRandDER l b R T := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  intro hDT
  have hRD : 0 < sarea R ptD T := by
    rw [show sarea R ptD T = -sarea ptD R T by unfold sarea; ring]; linarith
  obtain ⟨t1, t2, t3⟩ := hc.1
  have hDBR : 0 < sarea ptD (ptB b) R := by simp only [sarea, ptD, ptB]; nlinarith
  have hDBC : 0 < sarea ptD (ptB b) ptC := by simp only [sarea, ptD, ptB, ptC]; linarith
  have hDBT : 0 < sarea ptD (ptB b) T := by
    apply bary_pos hc.1
    · rw [show sarea ptD (ptB b) (ptB b) = 0 by unfold sarea; ring]
    · exact hDBR.le
    · exact hDBC.le
    · rw [show sarea ptD (ptB b) (ptB b) = 0 by unfold sarea; ring]; linarith
  have hT1 : InTriangle T ptD (ptB b) R := ⟨hDBT, t1, hRD⟩
  have hDET : 0 < sarea ptD (ptE l) T := by
    have h1 := h.T_right
    have h2 := h.T_mem.2.2.1
    simp only [sarea, ptB, ptC] at h1
    have hT1 : 0 < T.1 := by
      nlinarith [mul_nonneg (by linarith [h.b_le] : (0:ℝ) ≤ 1 - b) h2]
    simp only [sarea, ptD, ptE]
    nlinarith [mul_pos (by linarith : (0:ℝ) < 1 - l) hT1]
  have hERT : 0 < sarea (ptE l) R T := by
    have nz : sarea (ptE l) R T ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 6 8
    rcases lt_or_gt_of_ne nz with hneg | hpos'
    · exfalso
      have hEBT : 0 < sarea (ptE l) (ptB b) T := by
        apply bary_pos hT1
        · rw [show sarea (ptE l) (ptB b) ptD = (1 - l) * b by simp only [sarea, ptE, ptB, ptD]; ring]
          nlinarith
        · rw [show sarea (ptE l) (ptB b) (ptB b) = 0 by unfold sarea; ring]
        · rw [show sarea (ptE l) (ptB b) R = sarea (ptE l) (ptB b) R from rfl]
          simp only [sarea, ptE, ptB]; nlinarith
        · rw [show sarea (ptE l) (ptB b) ptD = (1 - l) * b by simp only [sarea, ptE, ptB, ptD]; ring,
            show sarea (ptE l) (ptB b) (ptB b) = 0 by unfold sarea; ring]
          have : 0 ≤ sarea (ptE l) (ptB b) R := by simp only [sarea, ptE, ptB]; nlinarith
          nlinarith
      rw [typeIIConfig_eq] at hEBR
      exact hEBR 8 (show InTriangle T (ptE l) (ptB b) R from ⟨hEBT, t1, by
        rw [show sarea R (ptE l) T = -sarea (ptE l) R T by unfold sarea; ring]; linarith⟩)
    · exact hpos'
  exact ⟨hT1, ⟨hDET, hERT, hRD⟩⟩

/-- **Theorem 1** (`UNBALANCED_RADIAL_SPLIT:Theorem1`). In the two-point upper cut, cell II,
with `PQ` separating `{D, C}` from `{E, B}`: after interchanging `P, Q` if needed,
(1) `P` is on the `C`-side of `DR` and `Q` on its `B`-side; (2) `T` is on the `C`-side of `DR`;
(3) `R, S, T` are below `CE`, `EBR` contains no further actual point, and `u < 3/16`.
`hand/UNBALANCED_RADIAL_SPLIT.md`, lines 25-42, 162-236.
Uses: UNBALANCED_RADIAL_SPLIT:claim-not-both-C-side, UNBALANCED_RADIAL_SPLIT:Corollary3,
UNBALANCED_RADIAL_SPLIT:claim-empty-ear, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem1 (h : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellII (ptB b) R S ptC T)
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hsep : LineSeparates P Q ptD ptC (ptE l) (ptB b)) :
    RadialConclusion l b P Q R S T ∨ RadialConclusion l b Q P R S T := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) hmin
  obtain ⟨hPE, hQE, -, -, -⟩ := upper_pair h hmin7 hP hQ
  obtain ⟨-, -, -, -, hEBR, hR, hS, hT, hcq⟩ := claim_empty_ear h hmin hq hP hQ
  obtain ⟨hur, hbr, hrk, hk1, hu, -, -⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  have hu1 : R.2 < 1 := by have := h.R_right; simp only [sarea, ptB, ptC] at this; nlinarith
  have hcor := corollary3 h hmin hq
  have hnotC := claim_not_both_C_side h hmin hq hc hP hQ hsep
  have hERC : 0 < sarea (ptE l) R ptC := by
    rw [show sarea (ptE l) R ptC = -sarea (ptE l) ptC R by unfold sarea; ring]; linarith
  have hmin7' := hmin7
  rw [typeIIConfig_eq] at hmin7'
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by linarith
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have nP : sarea ptD R P ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 4
  have nQ : sarea ptD R Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 5
  have nT : sarea ptD R T ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 8
  have hTdisj : sarea ptD R T < 0 → InDBRandDER l b R T :=
    T_DBR_DER h hc hbr hu hpos hEBR
  have hTside : ∀ {Y : Point} {k : Fin 9}, ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] k = Y →
      k ≠ 8 → InDBRandDER l b R Y → 0 < sarea ptD R T := by
    intro Y k hk hk8 hY
    rcases lt_or_gt_of_ne nT with hDT | hDT
    · exfalso
      have := hcor k 8 (by rw [typeIIConfig_eq, hk]; exact hY) (by
        rw [typeIIConfig_eq]; exact hTdisj hDT)
      exact hk8 this
    · exact hDT
  have hdisj : ∀ {Y : Point}, InTriangle Y ptD (ptB b) ptC → InTriangle Y ptD (ptE l) ptC →
      sarea ptD R Y < 0 → InDBRandDER l b R Y := fun hY hYE hDY =>
    central_DBR_DER hb hl1 hY hYE hDY hbr hu h.R_right hERC
  have hKs : ∀ {Y : Point} {k : Fin 9}, ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] k = Y →
      k ≠ 8 → InTriangle Y ptD R ptC → 0 < sarea ptD R T → Kc * (7 / 64) ≤ 1 - R.2 := by
    intro Y k hk hk8 hY hDT
    have hT' : InTriangle T ptD R ptC := ⟨hDT, hc.1.2.1, by
      have h1 := h.T_right
      have h2 := h.T_mem.2.1
      simp only [sarea, ptB, ptC] at h1
      simp only [sarea, ptC, ptD]
      nlinarith⟩
    have : Kc * (7 / 64) ≤ sarea ptD R ptC := Kc_le_of_two_inside (X := ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T]) (i := k)
      (j := 8) (a := 0) (b := 6) (c := 1) (by norm_num) hm hk8 (by rw [hk]; exact hY) hT'
    rw [show sarea ptD R ptC = 1 - R.2 by simp only [sarea, ptD, ptC]; ring] at this
    exact this
  have hu316 : Kc * (7 / 64) ≤ 1 - R.2 → R.2 < 3 / 16 := fun hK => by
    have := Kc_s0_gt; linarith
  have hE' : NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R := hEBR
  have hE'' : NoPointInside (typeIIConfig l b Q P R S T) (ptE l) (ptB b) R :=
    noPointInside_swapPQ hE'
  rcases lt_or_gt_of_ne nP with hDP | hDP <;> rcases lt_or_gt_of_ne nQ with hDQ | hDQ
  · exfalso
    exact absurd (hcor 4 5 (hdisj h.P_central hPE hDP) (hdisj h.Q_central hQE hDQ)) (by decide)
  · right
    have hTT := hTside (k := 4) rfl (by decide) (hdisj h.P_central hPE hDP)
    have hK := hKs (k := 5) rfl (by decide) (central_DRC h.Q_central hDQ h.R_right hu1) hTT
    exact ⟨hDQ, hDP, hTT, hR, hS, hT, hE'', hu316 hK, hK⟩
  · left
    have hTT := hTside (k := 5) rfl (by decide) (hdisj h.Q_central hQE hDQ)
    have hK := hKs (k := 4) rfl (by decide) (central_DRC h.P_central hDP h.R_right hu1) hTT
    exact ⟨hDP, hDQ, hTT, hR, hS, hT, hE', hu316 hK, hK⟩
  · exact absurd ⟨hDP, hDQ⟩ hnotC

end Heilbronn.UnbalancedRadialSplit
