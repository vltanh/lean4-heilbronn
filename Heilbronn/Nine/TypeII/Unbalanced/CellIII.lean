module

public import Heilbronn.Nine.TypeII.Unbalanced.RightHull
public import Heilbronn.Nine.TypeII.Unbalanced.CellI

/-! # Complete exclusion of unbalanced right support cell III (`docs/proof/nine/UNBALANCED_CELL_III.md`)

**Role.** Primary route. `UNBALANCED_FINAL_LOWER_WEDGE:Theorem2` cites Theorem 1 for the
one-point upper cut; since it does not use the central points, it also covers the cell-III half
of `UNBALANCED_RIGHT_HULL:Theorem2`.

**Setting** (lines 5-43): `Row123 l b P Q R S T`, every actual doubled area at least
`s = 7/64` (`7/128 ≤ minTriangleArea (typeIIConfig …)`), the right hull is the quadrilateral
`B, R, S, C` with `T` inside (`QuadHull`), in support cell III (`T ∈ int CRS ∩ int BCS`). Write
`R = (r, u)`, `S = (k, t)`, `w = 1 - b`, `U = [BRS] ≥ s`, `V = [CRS] ≥ 3s`, `δ = [EBR]`,
`v_R = 1 - u`, `v_S = 1 - t`, `J_D = [DRS]`, and `x = (r - b)/w` (normalized right container).

**Results.**
* `claim_coarse` (1)-(4): `13/100 < b < 3/16`, `13/16 < w < 7/8`, `1/4 < x < 1/2`,
  `u < 5/4 - √(3/2) < 1/32`.
* `claim_b_gt_3_20` (5)-(8): `b > 3/20`, `w < 17/20`.
* `claim_r` (9): `r > 279/640 > 16/37`.
* `claim_top` (10)-(11): `J_D = k v_R - r v_S`, `V = J_D + v_S - v_R`, `v_S < 3/4`,
  `J_D < 3/4`, `v_R > 31/32`.
* `claim_V` (12): `V < 22572001/64000000`.
* `theorem1`: cell III is impossible, whatever the central points do (`|[DST]| < s`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.UnbalancedCellIII

open UnbalancedRightHull

/-! ### Helpers -/

/-- The larger zero `X` of `ψ_a(x)(1-x) = -(x² - (1-2a)x + a)`, above any point where `ψ_a ≥ 0`,
and below `1/2` when `a > 1/8`. -/
theorem psi_root {a x : ℝ} (ha8 : 1 / 8 < a) (hpsi : x ^ 2 - (1 - 2 * a) * x + a ≤ 0) :
    ∃ X : ℝ, x ≤ X ∧ X < 1 / 2 ∧ X ^ 2 - (1 - 2 * a) * X + a = 0 := by
  set D := (1 - 2 * a) ^ 2 - 4 * a with hD_def
  have hD : (2 * x - (1 - 2 * a)) ^ 2 ≤ D := by rw [hD_def]; linarith
  have hD0 : 0 ≤ D := le_trans (sq_nonneg _) hD
  have hsD := Real.sq_sqrt hD0
  refine ⟨((1 - 2 * a) + Real.sqrt D) / 2, ?_, ?_, ?_⟩
  · have h1 : |2 * x - (1 - 2 * a)| ≤ Real.sqrt D := Real.abs_le_sqrt hD
    have h2 := le_abs_self (2 * x - (1 - 2 * a))
    linarith
  · have : Real.sqrt D < 2 * a := by
      rw [Real.sqrt_lt' (by linarith), hD_def]; nlinarith
    linarith
  · rw [hD_def] at hsD; linear_combination hsD / 4

/-- The monotone replacement `x → X` of `UNBALANCED_CELL_III.md` §2: `δ ≤ φ(x) ≤ φ(X) = λwX`. -/
theorem psi_mono {b L x u a X : ℝ} (hb : 0 < b) (ha : 0 < a) (hx12 : x < 1 / 2) (hxX : x ≤ X)
    (hX12 : X < 1 / 2) (hXroot : X ^ 2 - (1 - 2 * a) * X + a = 0)
    (hc12 : 12 * (a * b) < b + L)
    (hear : a * (3 * x + 1 * (1 - x)) ≤ (x - u) * (1 - x)) (hδ : 7 / 64 ≤ b * u + L * x) :
    7 / 64 ≤ L * X := by
  have hp : 1 / 4 < (1 - x) * (1 - X) := by nlinarith
  have hbL : 0 < b + L := by nlinarith [mul_pos ha hb]
  have hcond : 3 * (a * b) ≤ (b + L) * (1 - x) * (1 - X) := by
    have := mul_le_mul_of_nonneg_left hp.le hbL.le
    nlinarith
  have E1 : (1 - x) * (b * u) ≤ b * (x * (1 - x) - a * (1 + 2 * x)) := by
    have := mul_le_mul_of_nonneg_left hear hb.le
    linarith
  have E2 : 0 ≤ (X - x) * ((b + L) * (1 - x) * (1 - X) - 3 * (a * b)) :=
    mul_nonneg (by linarith) (by linarith)
  have hid : (1 - X) * (1 - x) * L * (X - x) - (1 - X) * b * (x * (1 - x) - a * (1 + 2 * x)) =
      (X - x) * ((b + L) * (1 - x) * (1 - X) - 3 * (a * b)) := by
    linear_combination b * (1 - x) * hXroot
  have k1 := mul_le_mul_of_nonneg_left hδ (by linarith : (0:ℝ) ≤ (1 - x) * (1 - X))
  have k2 := mul_le_mul_of_nonneg_left E1 (by linarith : (0:ℝ) ≤ 1 - X)
  have : (1 - x) * (1 - X) * (7 / 64) ≤ (1 - x) * (1 - X) * (L * X) := by linarith
  exact le_of_mul_le_mul_left this (by linarith)

/-- The final comparison (6)-(7): `s ≤ λwX`, `λ ≤ 1 - s/b` and `P(wX) = 0` contradict
`(b-s)²P(p₀)/s = 7(256b² - 85b + 7)/4096 > 0` for `s < b ≤ 3/20`. -/
theorem cellIII_final {b l X : ℝ} (hb13 : 13 / 100 < b) (hb20 : b ≤ 3 / 20) (hX : 0 ≤ X)
    (hlb : b * l ≤ b - 7 / 64) (hkey : 7 / 64 ≤ l * (1 - b) * X)
    (hP : ((1 - b) * X) ^ 2 - (1 - b - 2 * (7 / 64)) * ((1 - b) * X) + 7 / 64 * (1 - b) = 0) :
    False := by
  have hbs : 0 < b - 7 / 64 := by linarith
  have hbs' : b - 7 / 64 ≠ 0 := hbs.ne'
  have hw : 0 < 1 - b := by linarith
  set p := (1 - b) * X with hp_def
  have hp0 : 0 ≤ p := mul_nonneg hw.le hX
  have hp0' : 7 / 64 * b ≤ (b - 7 / 64) * p := by
    have k1 := mul_le_mul_of_nonneg_left hkey (by linarith : (0:ℝ) ≤ b)
    have k2 := mul_le_mul_of_nonneg_right hlb hp0
    rw [hp_def] at k2 ⊢
    linarith
  -- `m = (b-s)p ≥ sb`; `R(m) = (b-s)²P(p) = 0` and `R(sb) = (b-s)²P(p₀) > 0`
  set m := (b - 7 / 64) * p with hm_def
  have hR : m ^ 2 - (1 - b - 2 * (7 / 64)) * (b - 7 / 64) * m +
      7 / 64 * (1 - b) * (b - 7 / 64) ^ 2 = 0 := by
    rw [hm_def]; linear_combination (b - 7 / 64) ^ 2 * hP
  have hRs : (7 / 64 * b) ^ 2 - (1 - b - 2 * (7 / 64)) * (b - 7 / 64) * (7 / 64 * b) +
      7 / 64 * (1 - b) * (b - 7 / 64) ^ 2 = 7 / 64 * (7 * (256 * b ^ 2 - 85 * b + 7) / 4096) := by
    ring
  have hq : 0 < 256 * b ^ 2 - 85 * b + 7 := by nlinarith
  have hv : (1 - b - 2 * (7 / 64)) * (b - 7 / 64) < 2 * (7 / 64 * b) := by nlinarith
  have := mul_nonneg (sub_nonneg.2 hp0') (by linarith : (0:ℝ) ≤ m + 7 / 64 * b -
    (1 - b - 2 * (7 / 64)) * (b - 7 / 64))
  nlinarith

/-- The scalar core of `UNBALANCED_CELL_III.md` §2, (5)-(8): in the normalized right container
(`x = (r-b)/w`, `a = s/w`), the occupied upper ear and the lower ear `[EBR] = bu + λwx ≥ s` are
incompatible with `b ≤ 3/20`. -/
theorem cellIII_b_alg {b l x u : ℝ} (hb13 : 13 / 100 < b) (hb20 : b ≤ 3 / 20) (hl : 0 < l)
    (hDEB : 7 / 64 ≤ b * (1 - l)) (hx12 : x < 1 / 2) (hu : 0 ≤ u)
    (hu32 : u < 1 / 32)
    (hear : 7 / 64 / (1 - b) * (3 * x + 1 * (1 - x)) ≤ (x - u) * (1 - x))
    (hδ : 7 / 64 ≤ b * u + l * ((1 - b) * x)) : False := by
  have hw : 0 < 1 - b := by linarith
  have ha8 : 1 / 8 < 7 / 64 / (1 - b) := by rw [lt_div_iff₀ hw]; linarith
  have hpsi : x ^ 2 - (1 - 2 * (7 / 64 / (1 - b))) * x + 7 / 64 / (1 - b) ≤ 0 := by
    have := mul_nonneg hu (by linarith : (0:ℝ) ≤ 1 - x)
    nlinarith
  obtain ⟨X, hxX, hX12, hXroot⟩ := psi_root ha8 hpsi
  have hlw0 : 0 < l * (1 - b) := mul_pos hl hw
  have hlw : 2 * (7 / 64) - b / 16 < l * (1 - b) := by
    have k1 : b * u ≤ b * (1 / 32) := mul_le_mul_of_nonneg_left hu32.le (by linarith)
    have k2 : l * (1 - b) * x < l * (1 - b) * (1 / 2) := mul_lt_mul_of_pos_left hx12 hlw0
    linarith
  have hc12 : 12 * (7 / 64 / (1 - b) * b) < b + l * (1 - b) := by
    have : 7 / 64 / (1 - b) * b ≤ 7 / 64 * b * (16 / 13) := by
      rw [div_mul_eq_mul_div, div_le_iff₀ hw]; nlinarith
    linarith
  have hkey := psi_mono (L := l * (1 - b)) (by linarith) (by linarith) hx12 hxX hX12 hXroot hc12 hear
    (by linarith)
  have hX0 : 0 ≤ X := by
    have : 0 ≤ x := by nlinarith
    linarith
  refine cellIII_final hb13 hb20 hX0 (by nlinarith) hkey ?_
  have haw : 7 / 64 / (1 - b) * (1 - b) = 7 / 64 := by field_simp
  have : ((1 - b) * X) ^ 2 - (1 - b - 2 * (7 / 64)) * ((1 - b) * X) + 7 / 64 * (1 - b) =
      (1 - b) ^ 2 * (X ^ 2 - (1 - 2 * (7 / 64 / (1 - b))) * X + 7 / 64 / (1 - b)) := by
    field_simp
  rw [this, hXroot, mul_zero]

open TypeII UnbalancedCellI

variable {l b : ℝ} {P Q R S T : Point}

/-- **Claim** (`UNBALANCED_CELL_III:claim-coarse`), equations (1)-(4). In cell III:
`13/100 < b < 3/16`, `13/16 < w < 7/8`, `x = (r-b)/w` satisfies `(x - 1/4)(x - 1/2) < 0`, and
`u < 5/4 - √(3/2) < 1/32`. `docs/proof/nine/UNBALANCED_CELL_III.md`, lines 45-92.
Uses: UNBALANCED_RIGHT_HULL:claim-outer-cell-scale, UNBALANCED_RIGHT_HULL:claim-Nb (the
cut-independent §4.2 argument of that note), UNBALANCED_RIGHT_HULL:claim-cell-ear. -/
theorem claim_coarse (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    13 / 100 < b ∧ b < 3 / 16 ∧ 13 / 16 < 1 - b ∧ 1 - b < 7 / 8 ∧
      1 / 4 < (R.1 - b) / (1 - b) ∧ (R.1 - b) / (1 - b) < 1 / 2 ∧
      R.2 < 5 / 4 - Real.sqrt (3 / 2) ∧ 5 / 4 - Real.sqrt (3 / 2) < 1 / 32 := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  obtain ⟨-, hK, hK13, h316⟩ := claim_outer_cell_scale h hmin hq (Or.inr hc)
  have h13 := b_gt_13_100 h hmin hq (Or.inr hc)
  obtain ⟨hx0, hx1, hu, hux, ha, -, -, hIII⟩ := quad_ears h hmin hq
  have hear := hIII hc
  set x := (R.1 - b) / (1 - b) with hx_def
  have ha8 : 1 / 8 < 7 / 64 / (1 - b) := by rw [lt_div_iff₀ hw]; linarith
  have hy : 0 < 1 - x := by linarith
  have k1 : (1 + 2 * x) / 8 < 7 / 64 / (1 - b) * (3 * x + 1 * (1 - x)) := by
    have : 0 < 1 + 2 * x := by linarith
    nlinarith
  have k2 : (x - R.2) * (1 - x) ≤ x * (1 - x) := by nlinarith
  have hq : (4 * x - 1) * (2 * x - 1) < 0 := by nlinarith
  have hx14 : 1 / 4 < x := by
    by_contra hcon; push Not at hcon
    nlinarith
  have hx12 : x < 1 / 2 := by
    by_contra hcon; push Not at hcon
    nlinarith
  have ht := Real.sq_sqrt (show (0:ℝ) ≤ 3 / 2 by norm_num)
  have ht0 := Real.sqrt_nonneg (3 / 2 : ℝ)
  have hu' : R.2 < 5 / 4 - Real.sqrt (3 / 2) := by
    have k3 : R.2 * (1 - x) < x * (1 - x) - (1 + 2 * x) / 8 := by nlinarith
    have k4 : 0 ≤ (1 - x) ^ 2 - Real.sqrt (3 / 2) * (1 - x) + 3 / 8 := by
      nlinarith [sq_nonneg (1 - x - Real.sqrt (3 / 2) / 2)]
    have : R.2 * (1 - x) < (5 / 4 - Real.sqrt (3 / 2)) * (1 - x) := by nlinarith
    exact lt_of_mul_lt_mul_right this hy.le
  have hcmp : 5 / 4 - Real.sqrt (3 / 2) < 1 / 32 := by
    have : (39 / 32 : ℝ) < Real.sqrt (3 / 2) := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    linarith
  exact ⟨h13, h316, by linarith, by linarith, hx14, hx12, hu', hcmp⟩

/-- **Claim** (`UNBALANCED_CELL_III:claim-b>3/20`), equations (5)-(8). In cell III,
`b > 3/20` and `w < 17/20`. `docs/proof/nine/UNBALANCED_CELL_III.md`, lines 94-155.
Uses: UNBALANCED_CELL_III:claim-coarse, UNBALANCED_RIGHT_HULL:claim-cell-ear. -/
theorem claim_b_gt_3_20 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    3 / 20 < b ∧ 1 - b < 17 / 20 := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  obtain ⟨h13, h316, -, -, -, hx12, hu32, hcmp⟩ := claim_coarse h hmin hq hc
  obtain ⟨hx0, hx1, hu, hux, ha, -, -, hIII⟩ := quad_ears h hmin hq
  obtain ⟨hsδ, -, -, -, -⟩ := claim_ear_root h hmin hq (Or.inr hc)
  have hδ : sarea (ptE l) (ptB b) R = b * R.2 + l * ((1 - b) * ((R.1 - b) / (1 - b))) := by
    simp only [sarea, ptE, ptB]; field_simp; ring
  have hDEB := DEB_ge h hmin
  have hb20 : 3 / 20 < b := by
    by_contra hcon; push Not at hcon
    exact cellIII_b_alg h13 hcon hl hDEB hx12 hu (by linarith) (hIII hc) (hδ ▸ hsδ)
  exact ⟨hb20, by linarith⟩

/-- **Claim** (`UNBALANCED_CELL_III:claim-r`), equation (9). In cell III,
`r > R₀(3/16) = 279/640 > 16/37`. `docs/proof/nine/UNBALANCED_CELL_III.md`, lines 157-182.
Uses: UNBALANCED_CELL_III:claim-coarse. -/
theorem claim_r (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    279 / 640 < R.1 ∧ (16 / 37 : ℝ) < 279 / 640 := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨h13, h316, -, -, -, -, hu32, hcmp⟩ := claim_coarse h hmin hq hc
  obtain ⟨hsδ, -, -, -, -⟩ := claim_ear_root h hmin hq (Or.inr hc)
  obtain ⟨hur, hbr, -, -, hu, -, -⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  have hδ : sarea (ptE l) (ptB b) R = b * R.2 + l * (R.1 - b) := by
    simp only [sarea, ptE, ptB]; ring
  rw [hδ] at hsδ
  have hDEB := DEB_ge h hmin
  have hlb : b * l ≤ b - 7 / 64 := by nlinarith
  refine ⟨?_, by norm_num⟩
  by_contra hcon; push Not at hcon
  have k1 : b * (b * R.2) ≤ b * (b * (1 / 32)) :=
    mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left (by linarith) hb.le) hb.le
  have k2 := mul_le_mul_of_nonneg_right hlb (by linarith : (0:ℝ) ≤ R.1 - b)
  have k3 := mul_le_mul_of_nonneg_left (by linarith : R.1 - b ≤ 279 / 640 - b)
    (by linarith : (0:ℝ) ≤ b - 7 / 64)
  have k4 := mul_le_mul_of_nonneg_left hsδ hb.le
  have k5 := mul_pos (by linarith : (0:ℝ) < 3 / 16 - b) (by linarith : (0:ℝ) < 21 / 80 - b)
  have k6 : b * (b * R.2) < b * (b * (1 / 32)) := by
    exact mul_lt_mul_of_pos_left (mul_lt_mul_of_pos_left (by linarith) hb) hb
  nlinarith

/-- **Claim** (`UNBALANCED_CELL_III:claim-top`), equations (10)-(11). With `v_R = 1 - u`,
`v_S = 1 - t`: `J_D = [DRS] = k v_R - r v_S`, `V = [CRS] = J_D + v_S - v_R`, and in cell III
`v_S < 3/4`, `J_D < 3/4`, `v_R > 31/32`. `docs/proof/nine/UNBALANCED_CELL_III.md`, lines 185-205.
Uses: UNBALANCED_CELL_III:claim-coarse, UNBALANCED_CELL_III:claim-r. -/
theorem claim_top (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    sarea ptD R S = S.1 * (1 - R.2) - R.1 * (1 - S.2) ∧
      sarea ptC R S = sarea ptD R S + (1 - S.2) - (1 - R.2) ∧
      1 - S.2 < 3 / 4 ∧ sarea ptD R S < 3 / 4 ∧ 31 / 32 < 1 - R.2 := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have e1 : sarea ptD R S = S.1 * (1 - R.2) - R.1 * (1 - S.2) := by
    simp only [sarea, ptD]; ring
  have e2 : sarea ptC R S = sarea ptD R S + (1 - S.2) - (1 - R.2) := by
    simp only [sarea, ptD, ptC]; ring
  refine ⟨e1, e2, ?_⟩
  obtain ⟨h13, h316, -, hw78, -, hx12, hu32, hcmp⟩ := claim_coarse h hmin hq hc
  obtain ⟨hr, -⟩ := claim_r h hmin hq hc
  obtain ⟨hur, hbr, hrk, hk1, hu, hut, ht1⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  have hw : 0 < 1 - b := by linarith
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have hU : 7 / 64 ≤ |sarea (ptB b) R S| := le_abs_sarea_of_le_min hm 3 6 7
  rw [abs_of_pos hq.1.1] at hU
  simp only [sarea, ptB] at hU
  have hrb : R.1 - b < 7 / 16 := by
    have : (R.1 - b) / (1 - b) * (1 - b) = R.1 - b := by field_simp
    nlinarith
  have hvS : 1 - S.2 < 3 / 4 := by
    have h0 : 0 ≤ S.2 := h.S_mem.2.2.1
    nlinarith [mul_nonneg hu (by linarith : (0:ℝ) ≤ S.1 - b)]
  have hV3 : 3 * (7 / 64) ≤ sarea R S ptC :=
    three_le_of_inside (X := ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T]) (i := 8) (a := 6) (b := 7)
      (c := 1) hm hc.1
  have hV : 3 * (7 / 64) ≤ (1 - R.1) * (1 - S.2) - (1 - R.2) * (1 - S.1) := by
    have : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - R.2) * (1 - S.1) := by
      simp only [sarea, ptC]; ring
    linarith
  have hrv : 1 / 4 < R.1 * (1 - S.2) := by
    have k1 : 3 * (7 / 64) ≤ (1 - R.1) * (1 - S.2) := by
      nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - R.2) (by linarith : (0:ℝ) ≤ 1 - S.1)]
    by_contra hcon; push Not at hcon
    have := mul_le_mul_of_nonneg_left hcon (by linarith : (0:ℝ) ≤ 1 - R.1)
    nlinarith [mul_le_mul_of_nonneg_left k1 (by linarith : (0:ℝ) ≤ R.1)]
  refine ⟨hvS, ?_, by linarith⟩
  rw [e1]
  nlinarith [mul_le_mul (hk1) (by linarith : 1 - R.2 ≤ 1) (by linarith) (by linarith)]

/-- **Claim** (`UNBALANCED_CELL_III:claim-V`), equation (12). In cell III,
`V = [CRS] < V₀ = 22572001/64000000` (from `√U + √V ≤ √Ω ≤ √w`).
`docs/proof/nine/UNBALANCED_CELL_III.md`, lines 207-229.
Uses: TYPE_II:claim-support-normalization, UNBALANCED_CELL_III:claim-b>3/20. -/
theorem claim_V (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) :
    sarea ptC R S < 22572001 / 64000000 := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨-, hw20⟩ := claim_b_gt_3_20 h hmin hq hc
  have hsq := sqrt_U_add_sqrt_V hb1 h.R_mem h.S_mem hq
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have hU : 7 / 64 ≤ |sarea (ptB b) R S| := le_abs_sarea_of_le_min hm 3 6 7
  rw [abs_of_pos hq.1.1] at hU
  have h1 : Real.sqrt (1 - b) < 461 / 500 := by rw [Real.sqrt_lt' (by norm_num)]; linarith
  have h2 : 21 / 64 < Real.sqrt (sarea (ptB b) R S) := by
    rw [Real.lt_sqrt (by norm_num)]; linarith
  have h3 : Real.sqrt (sarea ptC R S) < 4751 / 8000 := by linarith
  have cV : sarea ptC R S = sarea R S ptC := by unfold sarea; ring
  have h4 := Real.sq_sqrt (show 0 ≤ sarea ptC R S by rw [cV]; exact hq.1.2.1.le)
  nlinarith [Real.sqrt_nonneg (sarea ptC R S)]

/-- **Theorem 1** (`UNBALANCED_CELL_III:Theorem1`). Support cell III is impossible,
independently of the positions of the two central points (the actual triangle `DST` has
`|[DST]| < s`). `docs/proof/nine/UNBALANCED_CELL_III.md`, lines 27-32, 231-267.
Uses: UNBALANCED_CELL_III:claim-top, UNBALANCED_CELL_III:claim-V,
UNBALANCED_CELL_I:claim-order. -/
theorem theorem1 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellIII (ptB b) R S ptC T) : False := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨eJ, eV, hvS, hJD, hvR⟩ := claim_top h hmin hq hc
  have hV0 := claim_V h hmin hq hc
  obtain ⟨hur, hbr, hrk, hk1, hu, hut, ht1⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have hDST : 7 / 64 ≤ |sarea ptD S T| := le_abs_sarea_of_le_min hm 0 7 8
  -- the barycentric identity of `T` in `CRS` (counterclockwise `R, S, C`)
  have hid := sarea_bary R S ptC T ptD S
  have z : sarea ptD S S = 0 := by unfold sarea; ring
  have cR : sarea ptD S R = -sarea ptD R S := by unfold sarea; ring
  have cC : sarea ptD S ptC = 1 - S.2 := by simp only [sarea, ptD, ptC]; ring
  rw [z, mul_zero, add_zero, cR, cC] at hid
  obtain ⟨t1, t2, t3⟩ := hc.1
  have e1 : 7 / 64 ≤ |sarea S ptC T| := le_abs_sarea_of_le_min hm 7 1 8
  have e2 : 7 / 64 ≤ |sarea ptC R T| := le_abs_sarea_of_le_min hm 1 6 8
  have e3 : 7 / 64 ≤ |sarea R S T| := le_abs_sarea_of_le_min hm 6 7 8
  rw [abs_of_pos t2] at e1; rw [abs_of_pos t3] at e2; rw [abs_of_pos t1] at e3
  have hsum := sarea_add_sarea_add_sarea R S ptC T
  have cV : sarea R S ptC = sarea ptC R S := by unfold sarea; ring
  rw [cV] at hid hsum
  have hJpos : 0 < sarea ptD R S := by
    rw [eJ]
    have k1 := mul_pos (by linarith : (0:ℝ) < S.1 - R.1) (by linarith : (0:ℝ) < 1 - R.2)
    have k2 := mul_pos (by linarith : (0:ℝ) < R.1) (by linarith : (0:ℝ) < S.2 - R.2)
    linarith
  have hVpos : 3 * (7 / 64) ≤ sarea ptC R S := by linarith
  -- `|[DST]| V < (3/4)(V - s) - s(V + 31/32) ≤ sV`
  have hB : (3 / 4) * (sarea ptC R S - 7 / 64) - 7 / 64 * (sarea ptC R S + 31 / 32) ≤
      7 / 64 * sarea ptC R S := by linarith
  have hpos : sarea ptD S T * sarea ptC R S <
      (3 / 4) * (sarea ptC R S - 7 / 64) - 7 / 64 * (sarea ptC R S + 31 / 32) := by
    have k1 := mul_le_mul_of_nonneg_left e1 hJpos.le
    have k2 : (1 - S.2) * sarea R S T ≤ (1 - S.2) * (sarea ptC R S - 2 * (7 / 64)) :=
      mul_le_mul_of_nonneg_left (by linarith) (by linarith)
    have k3 : (1 - S.2) * (sarea ptC R S - 7 / 64) < 3 / 4 * (sarea ptC R S - 7 / 64) :=
      mul_lt_mul_of_pos_right hvS (by linarith)
    linarith
  have hneg : -sarea ptD S T * sarea ptC R S <
      (3 / 4) * (sarea ptC R S - 7 / 64) - 7 / 64 * (sarea ptC R S + 31 / 32) := by
    have k1 := mul_le_mul_of_nonneg_left e3 (by linarith : (0:ℝ) ≤ 1 - S.2)
    have k2 : sarea ptD R S * sarea S ptC T ≤ sarea ptD R S * (sarea ptC R S - 2 * (7 / 64)) :=
      mul_le_mul_of_nonneg_left (by linarith) hJpos.le
    have k3 : sarea ptD R S * (sarea ptC R S - 7 / 64) < 3 / 4 * (sarea ptC R S - 7 / 64) :=
      mul_lt_mul_of_pos_right hJD (by linarith)
    linarith
  rcases abs_cases (sarea ptD S T) with ⟨ha, -⟩ | ⟨ha, -⟩
  · rw [ha] at hDST
    have := mul_le_mul_of_nonneg_right hDST (by linarith : (0:ℝ) ≤ sarea ptC R S)
    linarith
  · rw [ha] at hDST
    have := mul_le_mul_of_nonneg_right hDST (by linarith : (0:ℝ) ≤ sarea ptC R S)
    linarith

end Heilbronn.Nine.UnbalancedCellIII
