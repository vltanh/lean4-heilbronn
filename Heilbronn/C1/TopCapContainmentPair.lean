module

public import Heilbronn.C1.TopCapCommonCell
public import Heilbronn.C1.TwoLower.ContainmentCert

/-! # The containment pair-line case is impossible in the C1 top cap
(`hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 5
(the middle, or containment, pair-line case).

Setting (lines 3-26): the common-cell placement of `hand/C1_TOP_CAP_COMMON_CELL.md`
(`CommonCellSetting`): weak C1 anchors (the note writes `0 < f < c ≤ 1`; `f < c` follows from
`f < x < c`), two lower points `L, M ∈ OHC ∩ OCF`, a top-cap point `X = (x, Y)`, the ninth point
in `OCX`, a competitive configuration, `s = 8/73`, `ρ = 49/60`, `p = hc ≥ ρ`, `cY ≥ ρ`,
`z = hf/c ≥ s`, `f < x < c`, `L` on the `H`-side and `M` on the `C`-side of `OX`. The pair-line
signs are `d_V = [LMV]`.

Results:
* `claim_certificate`: `R(h, c, f) < 0` on `c²/(2p) ≤ f ≤ c - s`, `ρ ≤ p ≤ c ≤ 1`;
* `eq6`: `s ≤ z < 1/2` (any pair-line case);
* `eq7_10`: under the signs (1), `y > t`, the inequalities (8) and the reduced system (10);
* `claim_scalar`: the system (10) has no solution;
* `theorem_main` (**Theorem**): the sign pattern `d_O, d_H < 0 < d_C, d_F` (1) is impossible.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapContainmentPair

open Heilbronn.C1 Heilbronn.C1TopCapOfSplit Heilbronn.C1TwoLower Heilbronn.C1TopCapConvexPair

/-- `𝓕(h, p, z, v) = (v - s){(1 - h + z)(p - v) - s(1 - h)} - ps(1 + h) + 2hsv` of (8),
`s = 8/73`. -/
def calF (h p z v : ℝ) : ℝ :=
  (v - 8 / 73) * ((1 - h + z) * (p - v) - 8 / 73 * (1 - h)) - p * (8 / 73) * (1 + h) +
    2 * h * (8 / 73) * v

/-- `V(p, z) = (p - s(1 + p))/(1 + z)` of (10). -/
def upperV (p z : ℝ) : ℝ := (p - 8 / 73 * (1 + p)) / (1 + z)

/-- The five coefficients `N_k` are negative on the parameter square. -/
theorem ct_N_neg {H0 C0 : ℝ} (h0 : 0 ≤ H0) (h1 : H0 ≤ 1) (c0 : 0 ≤ C0) (c1 : C0 ≤ 1) (j : Fin 5) :
    (Quart.eN ContainmentCert.ec ContainmentCert.ep ContainmentCert.eD ContainmentCert.el
      (ContainmentCert.el + ContainmentCert.eW) j).eval (pointOf [H0, C0]) < 0 := by
  have hb1 : ((0 : ℚ) : ℝ) ≤ H0 ∧ H0 ≤ ((1 : ℚ) : ℝ) := by push_cast; exact ⟨h0, h1⟩
  have hb2 : ((0 : ℚ) : ℝ) ≤ C0 ∧ C0 ≤ ((1 : ℚ) : ℝ) := by push_cast; exact ⟨c0, c1⟩
  fin_cases j
  · exact Quart.sound_rect ContainmentCert.chk0_0 hb1 hb2
  · exact Quart.sound_rect ContainmentCert.chk1_0 hb1 hb2
  · exact Quart.sound_rect ContainmentCert.chk2_0 hb1 hb2
  · exact Quart.sound_rect ContainmentCert.chk3_0 hb1 hb2
  · exact Quart.sound_rect ContainmentCert.chk4_0 hb1 hb2

/-- **Claim** (`C1_TOP_CAP_CONTAINMENT_PAIR:claim-certificate`, made-up id). `R(h, c, f) < 0`
throughout (4): `c²/(2p) ≤ f ≤ c - s`, `ρ ≤ p ≤ c ≤ 1`, `h = p/c`. In the manuscript: with
`f = (c² + W₀θ)/(2p)`, all `385` tensor Bernstein coefficients of the five `N_k(p, c)` (5) are
below `-1/250` on one rectangle; checked by `hand/check_c1_top_cap_containment_pair.py`.
`hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`, lines 88-138. -/
theorem claim_certificate (p c f : ℝ) (hp : 49 / 60 ≤ p) (hpc : p ≤ c) (hc : c ≤ 1)
    (hf : c ^ 2 / (2 * p) ≤ f) (hf' : f ≤ c - 8 / 73) :
    capR (p / c) c f < 0 := by
  have c0 : 0 < c := by linarith
  have p0 : 0 < p := by linarith
  obtain ⟨H0, C0, h0', h1', c0', c1', hcC, hpH⟩ := Quart.params hp hpc hc
  set D := 2 * p with hD
  set l := c * c with hl
  set W := (c - 8 / 73) * D - l with hW
  have hD0 : 0 < D := by simp only [hD]; linarith
  have ec_e : ContainmentCert.ec.eval (pointOf [H0, C0]) = c := by
    simp only [ContainmentCert.ec, Cert.Expr.eval_plus, Cert.Expr.eval_times, Cert.Expr.eval_k,
      Cert.Expr.eval_v, pointOf_zero, pointOf_succ]
    push_cast; linarith
  have ep_e : ContainmentCert.ep.eval (pointOf [H0, C0]) = p := by
    simp only [ContainmentCert.ep, Cert.Expr.eval_plus, Cert.Expr.eval_times, Cert.Expr.eval_k,
      Cert.Expr.eval_v, pointOf_zero, pointOf_succ]
    push_cast; linarith
  have eD_e : ContainmentCert.eD.eval (pointOf [H0, C0]) = D := by
    simp only [ContainmentCert.eD, Cert.Expr.eval_times, Cert.Expr.eval_k, ep_e]; push_cast; ring
  have el_e : ContainmentCert.el.eval (pointOf [H0, C0]) = l := by
    simp only [ContainmentCert.el, Cert.Expr.eval_times, ec_e, hl]
  have eW_e : ContainmentCert.eW.eval (pointOf [H0, C0]) = W := by
    simp only [ContainmentCert.eW, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_k,
      ec_e, eD_e, el_e]; push_cast; ring
  have hN : ∀ j, Quart.rN c p D l (l + W) j < 0 := by
    intro j
    have := ct_N_neg h0' h1' c0' c1' j
    rwa [Quart.eval_eN, ec_e, ep_e, eD_e, Cert.Expr.eval_plus, el_e, eW_e] at this
  have hlf : l ≤ f * D := by
    rw [div_le_iff₀ (by linarith)] at hf; simp only [hl, hD]; nlinarith
  have hfW : f * D ≤ l + W := by
    have := mul_le_mul_of_nonneg_right hf' hD0.le; simp only [hW]; linarith
  obtain ⟨θ, hθ0, hθ1, hθ⟩ : ∃ θ : ℝ, 0 ≤ θ ∧ θ ≤ 1 ∧ l * (1 - θ) + (l + W) * θ = f * D := by
    rcases eq_or_lt_of_le (show 0 ≤ W by linarith) with hW0 | hW0
    · refine ⟨0, le_rfl, by norm_num, ?_⟩
      rw [← hW0] at hfW; linarith
    · refine ⟨(f * D - l) / W, div_nonneg (by linarith) hW0.le,
        (div_le_one hW0).2 (by linarith), ?_⟩
      field_simp; ring
  have hG := Quart.G_neg hθ0 hθ1 hN
  rw [hθ, Quart.G_eq c p D f c0.ne'] at hG
  have hR : capR (p / c) c f = ((c - f) * (1 - p / c + p / c * f - 8 / 73) - f * (c - 1) -
      5 / 64 * (c * (1 - p / c))) ^ 2 - 4 * (c * (1 - p / c) + p / c * f) *
        (8 / 73 * f * (c - f) - 5 / 64 * (c * (1 - p / c + p / c * f - 8 / 73) - f * (49 / 60))) := by
    simp only [capR, capB, capE1, capZ0, capE0]
  rw [hR]
  have hpos : 0 < D ^ 4 * c ^ 2 := by positivity
  by_contra hn; push Not at hn
  have := mul_nonneg hpos.le hn
  linarith

/-- **Claim** (`C1_TOP_CAP_CONTAINMENT_PAIR:eq6`). In the common-cell placement (any pair-line
case), `z = hf/c` satisfies `s ≤ z < 1/2` (6), `s = 8/73`. `hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`,
lines 42-142.
Uses: C1_TOP_CAP_OF_SPLIT:eq7-10, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c,
C1_TOP_CAP_CONTAINMENT_PAIR:claim-certificate. -/
theorem eq6 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) :
    8 / 73 ≤ h * f / c ∧ h * f / c < 1 / 2 := by
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := C1TopCapCommonCell.cc_facts hS
  obtain ⟨-, -, -, -, hR⟩ := C1TopCapOfSplit.eq7_10 hS.toOneCapSetting
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  refine ⟨by rw [le_div_iff₀ c0]; nlinarith, ?_⟩
  by_contra hn; push Not at hn
  rw [le_div_iff₀ c0] at hn
  have hp : 49 / 60 ≤ h * c := by linarith
  have hfl : c ^ 2 / (2 * (h * c)) ≤ f := by
    rw [div_le_iff₀ (by positivity)]; nlinarith
  have := claim_certificate (h * c) c f hp (by nlinarith) hc hfl hfcs
  have e : h * c / c = h := by field_simp
  rw [e] at this
  linarith

/-- (7)–(8) in scalar form, for `L = (ℓ, y)`, `M = (m, t)`. -/
theorem cont_8 {h c f l y m t : ℝ} (h0 : 0 < h) (c0 : 0 < c) (hh1 : h ≤ 1) (hy0 : 0 < y)
    (hyh : y < h) (hyt : t < y)
    (hH : 8 / 73 ≤ -((h - y) * (m - l) - l * (y - t)))
    (hF : 8 / 73 ≤ (m - l) * (1 - y) + (y - t) * (f - l))
    (hts : 8 / 73 ≤ c * t) (hHCL : 8 / 73 ≤ h * c - c * y - h * l) (hOFL : 8 / 73 ≤ l - f * y)
    (hbr : 0 < h * f + (1 - h) * l - f * y) :
    0 ≤ calF h (h * c) (h * f / c) (c * y) ∧ (1 + h * f / c) * (c * y) ≤ h * c - 8 / 73 * (1 + h) := by
  have hid : (1 - y) * (-((h - y) * (m - l) - l * (y - t))) + (h - y) * ((m - l) * (1 - y) +
      (y - t) * (f - l)) = (y - t) * (h * f + (1 - h) * l - f * y) := by ring
  have h7 : 8 / 73 * (1 + h - 2 * y) ≤ (y - t) * (h * f + (1 - h) * l - f * y) := by
    have k1 := mul_le_mul_of_nonneg_left hH (show (0 : ℝ) ≤ 1 - y by linarith)
    have k2 := mul_le_mul_of_nonneg_left hF (show (0 : ℝ) ≤ h - y by linarith)
    linarith
  have ez : h * f / c * (c * y) = h * f * y := by field_simp
  have ez2 : h * f / c * (h * c) = h * (h * f) := by field_simp
  have hbr2 : h * (h * f + (1 - h) * l - f * y) ≤
      (1 - h + h * f / c) * (h * c - c * y) - 8 / 73 * (1 - h) := by
    have := mul_le_mul_of_nonneg_left (show h * l ≤ h * c - c * y - 8 / 73 by linarith)
      (show (0 : ℝ) ≤ 1 - h by linarith)
    nlinarith
  have hcyt : c * (y - t) ≤ c * y - 8 / 73 := by linarith
  have k3 : h * c * (8 / 73 * (1 + h - 2 * y)) ≤
      (c * y - 8 / 73) * ((1 - h + h * f / c) * (h * c - c * y) - 8 / 73 * (1 - h)) := by
    have q1 := mul_le_mul_of_nonneg_left h7 (mul_pos h0 c0).le
    have q2 : 0 ≤ h * (h * f + (1 - h) * l - f * y) := mul_nonneg h0.le hbr.le
    have q3 := mul_le_mul_of_nonneg_right hcyt q2
    have q4 := mul_le_mul_of_nonneg_left hbr2 (show (0 : ℝ) ≤ c * y - 8 / 73 by
      have := mul_pos c0 (show (0 : ℝ) < y - t by linarith); linarith)
    nlinarith
  refine ⟨?_, ?_⟩
  · unfold calF; nlinarith
  · have := mul_le_mul_of_nonneg_left hOFL h0.le
    rw [show (1 + h * f / c) * (c * y) = c * y + h * f * y by rw [add_mul, one_mul, ez]]
    nlinarith

/-- (9): decreasing `h` to `p` preserves (8), and `v ≤ V(p, z)`. -/
theorem cont_10 {h p z v : ℝ} (hp : 49 / 60 ≤ p) (hp1 : p ≤ 1) (hph : p ≤ h) (hz : 8 / 73 ≤ z)
    (hv : 8 / 73 < v) (hF : 0 ≤ calF h p z v) (hV : (1 + z) * v ≤ p - 8 / 73 * (1 + h)) :
    0 ≤ calF p p z v ∧ v ≤ upperV p z := by
  have hV' : (1 + z) * v ≤ p - 8 / 73 * (1 + p) := by nlinarith
  have hb : v ≤ (p - 8 / 73 * (1 + p)) / (1 + 8 / 73) := by
    rw [le_div_iff₀ (by norm_num)]
    have := mul_le_mul_of_nonneg_right hz (show (0 : ℝ) ≤ v by linarith); nlinarith
  set b := (p - 8 / 73 * (1 + p)) / (1 + 8 / 73) with hbd
  have hb0 : 0 < b := by simp only [hbd]; apply div_pos _ (by norm_num); nlinarith
  have hqb : b ^ 2 - (p - 2 * (8 / 73)) * b - (8 / 73) ^ 2 < 0 := by
    have e : b ^ 2 - (p - 2 * (8 / 73)) * b - (8 / 73) ^ 2 =
        -8 * (692770 * p ^ 2 - 507569 * p + 104464) / 34963569 := by
      simp only [hbd]; field_simp; ring
    rw [e]
    have : 0 < 692770 * p ^ 2 - 507569 * p + 104464 := by nlinarith [sq_nonneg (p - 507569 / 1385540)]
    apply div_neg_of_neg_of_pos _ (by norm_num); linarith
  have hq : v ^ 2 - (p - 2 * (8 / 73)) * v - (8 / 73) ^ 2 < 0 := by
    have e : b * (v ^ 2 - (p - 2 * (8 / 73)) * v - (8 / 73) ^ 2) =
        (b - v) * (-(8 / 73) ^ 2) + v * (b ^ 2 - (p - 2 * (8 / 73)) * b - (8 / 73) ^ 2) -
          b * v * (b - v) := by ring
    have k1 := mul_nonpos_of_nonneg_of_nonpos (show (0 : ℝ) ≤ b - v by linarith)
      (show -(8 / 73 : ℝ) ^ 2 ≤ 0 by norm_num)
    have k2 := mul_neg_of_pos_of_neg (show (0 : ℝ) < v by linarith) hqb
    have k3 := mul_nonneg (mul_nonneg hb0.le (show (0 : ℝ) ≤ v by linarith))
      (show (0 : ℝ) ≤ b - v by linarith)
    have : b * (v ^ 2 - (p - 2 * (8 / 73)) * v - (8 / 73) ^ 2) < 0 := by rw [e]; linarith
    exact neg_of_mul_neg_right this hb0.le
  refine ⟨?_, ?_⟩
  · have e : calF p p z v - calF h p z v = (h - p) * -(v ^ 2 - (p - 2 * (8 / 73)) * v - (8 / 73) ^ 2) := by
      unfold calF; ring
    have := mul_nonneg (show (0 : ℝ) ≤ h - p by linarith) (show 0 ≤ -(v ^ 2 - (p - 2 * (8 / 73)) * v -
      (8 / 73) ^ 2) by linarith)
    linarith
  · unfold upperV; rw [le_div_iff₀ (by linarith)]; linarith

/-- The coordinate facts of the containment signs (1). -/
theorem cont_data {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hO : sarea L M ptO < 0) (hH : sarea L M (ptH h) < 0) (hC : 0 < sarea L M (ptC c))
    (hF : 0 < sarea L M (ptF f)) :
    0 < h ∧ 0 < c ∧ h ≤ 1 ∧ 0 < L.2 ∧ L.2 < h ∧ M.2 < L.2 ∧
      8 / 73 ≤ -((h - L.2) * (M.1 - L.1) - L.1 * (L.2 - M.2)) ∧
      8 / 73 ≤ (M.1 - L.1) * (1 - L.2) + (L.2 - M.2) * (f - L.1) ∧ 8 / 73 ≤ c * M.2 ∧
      8 / 73 ≤ h * c - c * L.2 - h * L.1 ∧ 8 / 73 ≤ L.1 - f * L.2 ∧
      0 < h * f + (1 - h) * L.1 - f * L.2 ∧ 49 / 60 ≤ h * c ∧ h * c ≤ 1 := by
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := C1TopCapCommonCell.cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  obtain ⟨hl0, hy0, hyh, -, -, qL2, -⟩ := low_pt h0 c0 hS.lowerL
  have e0 : 8 / 73 ≤ |sarea L M (ptH h)| := ar hS.competitive 5 6 4
  have eH : 8 / 73 ≤ -sarea L M (ptH h) := by have := ar_neg e0 hH.le; linarith
  have eF : 8 / 73 ≤ sarea L M (ptF f) := ar_pos (ar hS.competitive 5 6 3) hF.le
  have eOCM : 8 / 73 ≤ sarea ptO (ptC c) M := ar_pos (ar hS.competitive 0 1 6) hS.lowerM.1.le
  have qM1 : sarea ptO (ptC c) M = c * M.2 := by simp only [sarea, ptO, ptC]; ring
  rw [qM1] at eOCM
  have eHCL : 8 / 73 ≤ sarea (ptC c) (ptH h) L := ar_pos (ar hS.competitive 1 4 5) hS.lowerL.2.1.le
  rw [qL2] at eHCL
  have hFOL : 8 / 73 ≤ L.1 - f * L.2 := by
    have e : 8 / 73 ≤ sarea (ptF f) ptO L := ar_pos (ar hS.competitive 3 0 5) hS.L_OCF.2.2.le
    have q : sarea (ptF f) ptO L = L.1 - f * L.2 := by simp only [sarea, ptF, ptO]; ring
    rwa [q] at e
  have hbr : 0 < h * f + (1 - h) * L.1 - f * L.2 := by
    have := C1TopCapCommonCell.fhl_pos h0 c0 hf hh hS.lowerL
    have q : sarea (ptF f) (ptH h) L = h * f + (1 - h) * L.1 - f * L.2 := by
      simp only [sarea, ptF, ptH]; ring
    rwa [q] at this
  have hyt : M.2 < L.2 := by
    have e : sarea L M (ptC c) - sarea L M ptO = c * (L.2 - M.2) := by
      simp only [sarea, ptC, ptO]; ring
    have : 0 < c * (L.2 - M.2) := by linarith
    have := pos_of_mul_pos_right this c0.le; linarith
  have qH : sarea L M (ptH h) = (h - L.2) * (M.1 - L.1) - L.1 * (L.2 - M.2) := by
    simp only [sarea, ptH]; ring
  have qF : sarea L M (ptF f) = (M.1 - L.1) * (1 - L.2) + (L.2 - M.2) * (f - L.1) := by
    simp only [sarea, ptF]; ring
  rw [qH] at eH; rw [qF] at eF
  have hp1 : h * c ≤ 1 := by nlinarith
  exact ⟨h0, c0, hh, hy0, hyh, hyt, eH, eF, eOCM, eHCL, hFOL, hbr, by linarith, hp1⟩

/-- **Claim** (`C1_TOP_CAP_CONTAINMENT_PAIR:eq7-10`). In the common-cell placement with the
signs (1) `[LMO], [LMH] < 0 < [LMC], [LMF]`, writing `L = (ℓ, y)`, `M = (m, t)`, `p = hc`,
`z = hf/c`, `v = cy`: `y > t`; `𝓕(h, p, z, v) ≥ 0` and `(1 + z)v ≤ p - s(1 + h)` (8);
and, after decreasing `h` to `p` (9), the system (10): `F(p, z, v) = 𝓕(p, p, z, v) ≥ 0`,
`s < v ≤ V(p, z)`, `ρ ≤ p ≤ 1`, `s ≤ z ≤ 1/2`. `hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`,
lines 144-229.
Uses: C1_TOP_CAP_CONTAINMENT_PAIR:eq6. -/
theorem eq7_10 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hO : sarea L M ptO < 0) (hH : sarea L M (ptH h) < 0) (hC : 0 < sarea L M (ptC c))
    (hF : 0 < sarea L M (ptF f)) :
    M.2 < L.2 ∧ 0 ≤ calF h (h * c) (h * f / c) (c * L.2) ∧
      (1 + h * f / c) * (c * L.2) ≤ h * c - 8 / 73 * (1 + h) ∧
      0 ≤ calF (h * c) (h * c) (h * f / c) (c * L.2) ∧
      8 / 73 < c * L.2 ∧ c * L.2 ≤ upperV (h * c) (h * f / c) ∧
      49 / 60 ≤ h * c ∧ h * c ≤ 1 ∧ 8 / 73 ≤ h * f / c ∧ h * f / c ≤ 1 / 2 := by
  obtain ⟨hz0, hz1⟩ := eq6 hS
  obtain ⟨h0, c0, hh, hy0, hyh, hyt, eH, eF, eOCM, eHCL, hFOL, hbr, hk, hp1⟩ :=
    cont_data hS hO hH hC hF
  obtain ⟨g1, g2⟩ := cont_8 h0 c0 hh hy0 hyh hyt eH eF eOCM eHCL hFOL hbr
  have hv : 8 / 73 < c * L.2 := by
    have := mul_lt_mul_of_pos_left hyt c0; linarith
  obtain ⟨g3, g4⟩ := cont_10 hk hp1 (mul_le_of_le_one_right h0.le hS.anchors.2.2.2.2.2) hz0 hv g1 g2
  exact ⟨hyt, g1, g2, g3, hv, g4, hk, hp1, hz0, hz1.le⟩

section ET
open Cert Cert.Expr

/-- `E(p, z) = 73(1 + z)F_v(p, z, V)` and `T(p, z) = -5329(1 + z)²F(p, z, V)/p`, in
`var 0 = p`, `var 1 = z`. -/
def eE : Expr := k (-73) * v 0 * v 0 * v 1 + k 57 * v 0 * v 0 + k 73 * v 0 * v 1 * v 1 +
  k 32 * v 0 * v 1 - k 57 * v 0 + k 8 * v 1 * v 1 + k 24 * v 1 + k 16
def eT : Expr := k 4745 * v 0 * v 0 * v 1 + k 520 * v 0 * v 0 - k 4745 * v 0 * v 1 * v 1 -
  k 6889 * v 0 * v 1 - k 1104 * v 0 + k 584 * v 1 * v 1 * v 1 + k 2464 * v 1 * v 1 +
  k 2784 * v 1 + k 840

theorem E_check : bernsteinBoxCheck eE [(49 / 60, 1), (8 / 73, 1 / 2)] [2, 2] 1 = true := by
  decide +kernel
theorem T_check : bernsteinBoxCheck eT [(49 / 60, 1), (8 / 73, 1 / 2)] [2, 3] 1 = true := by
  decide +kernel

theorem E_pos {p z : ℝ} (hp : 49 / 60 ≤ p) (hp1 : p ≤ 1) (hz : 8 / 73 ≤ z) (hz1 : z ≤ 1 / 2) :
    0 < -73 * p ^ 2 * z + 57 * p ^ 2 + 73 * p * z ^ 2 + 32 * p * z - 57 * p + 8 * z ^ 2 + 24 * z + 16 := by
  have := bernsteinBoxCheck_sound E_check (pointOf [p, z]) (pointOf_box3' (a := 49 / 60) (b := 1) (c := 8 / 73) (d := 1 / 2)
    (by push_cast; linarith) (by push_cast; linarith) (by push_cast; linarith) (by push_cast; linarith))
  simp only [eE, eval_minus, eval_plus, eval_times, eval_k, eval_v, pointOf_zero,
    pointOf_succ] at this
  push_cast at this; nlinarith

theorem T_pos {p z : ℝ} (hp : 49 / 60 ≤ p) (hp1 : p ≤ 1) (hz : 8 / 73 ≤ z) (hz1 : z ≤ 1 / 2) :
    0 < 4745 * p ^ 2 * z + 520 * p ^ 2 - 4745 * p * z ^ 2 - 6889 * p * z - 1104 * p + 584 * z ^ 3 +
      2464 * z ^ 2 + 2784 * z + 840 := by
  have := bernsteinBoxCheck_sound T_check (pointOf [p, z]) (pointOf_box3' (a := 49 / 60) (b := 1) (c := 8 / 73) (d := 1 / 2)
    (by push_cast; linarith) (by push_cast; linarith) (by push_cast; linarith) (by push_cast; linarith))
  simp only [eT, eval_minus, eval_plus, eval_times, eval_k, eval_v, pointOf_zero,
    pointOf_succ] at this
  push_cast at this; nlinarith

end ET

/-- **Claim** (`C1_TOP_CAP_CONTAINMENT_PAIR:claim-scalar`, made-up id; §3). The system (10) has
no solution: for `ρ ≤ p ≤ 1`, `s ≤ z ≤ 1/2` and `s < v ≤ V(p, z)`, `F(p, z, v) < 0` (`F` is
concave in `v` and increasing up to `V`, and `(1 + z)²F(p, z, V) = -pT(p, z)/5329` with
`T > 0`). `hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`, lines 230-304. -/
theorem claim_scalar (p z v : ℝ) (hp : 49 / 60 ≤ p) (hp' : p ≤ 1) (hz : 8 / 73 ≤ z)
    (hz' : z ≤ 1 / 2) (hv : 8 / 73 < v) (hv' : v ≤ upperV p z) :
    calF p p z v < 0 := by
  have hz0 : 0 < 1 + z := by linarith
  have p0 : 0 < p := by linarith
  set V := upperV p z with hVd
  set a := 1 - p + z with ha
  set Fd := (1 - p + z) * (p - V) - 8 / 73 * (1 - p) - (V - 8 / 73) * (1 - p + z) + 2 * p * (8 / 73)
    with hFd
  -- `F(V) - F(v) = (V - v)(F'(V) + a(V - v))`
  have e1 : calF p p z V - calF p p z v = (V - v) * (Fd + a * (V - v)) := by
    simp only [hFd, ha]; unfold calF; ring
  have e2 : 73 * (1 + z) * Fd = -73 * p ^ 2 * z + 57 * p ^ 2 + 73 * p * z ^ 2 + 32 * p * z - 57 * p +
      8 * z ^ 2 + 24 * z + 16 := by
    simp only [hFd, hVd, upperV]; field_simp; ring
  have e3 : (1 + z) ^ 2 * calF p p z V = -p * (4745 * p ^ 2 * z + 520 * p ^ 2 - 4745 * p * z ^ 2 -
      6889 * p * z - 1104 * p + 584 * z ^ 3 + 2464 * z ^ 2 + 2784 * z + 840) / 5329 := by
    simp only [hVd, upperV]; unfold calF; field_simp; ring
  have hE := E_pos hp hp' hz hz'
  have hT := T_pos hp hp' hz hz'
  have hFd0 : 0 < Fd := by
    have : 0 < 73 * (1 + z) * Fd := by rw [e2]; exact hE
    exact pos_of_mul_pos_right this (by positivity)
  have hFV : calF p p z V < 0 := by
    have : (1 + z) ^ 2 * calF p p z V < 0 := by
      rw [e3]; apply div_neg_of_neg_of_pos _ (by norm_num); nlinarith
    exact neg_of_mul_neg_right this (by positivity)
  have ha0 : 0 < a := by simp only [ha]; linarith
  have := mul_nonneg (show (0 : ℝ) ≤ V - v by linarith)
    (show (0 : ℝ) ≤ Fd + a * (V - v) by nlinarith)
  linarith

/-- **Theorem** (`C1_TOP_CAP_CONTAINMENT_PAIR:Theorem`). In the common-cell placement, the
line-sign placement `d_O, d_H < 0 < d_C, d_F` (1), `d_V = [LMV]`, is impossible.
`hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`, lines 28-40 and 232-304.
Uses: C1_TOP_CAP_CONTAINMENT_PAIR:eq6, C1_TOP_CAP_CONTAINMENT_PAIR:eq7-10,
C1_TOP_CAP_CONTAINMENT_PAIR:claim-scalar. -/
theorem theorem_main {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hO : sarea L M ptO < 0) (hH : sarea L M (ptH h) < 0) (hC : 0 < sarea L M (ptC c))
    (hF : 0 < sarea L M (ptF f)) : False := by
  obtain ⟨-, -, -, g3, hv, g4, hp, hp1, hz, hz1⟩ := eq7_10 hS hO hH hC hF
  have := claim_scalar (h * c) (h * f / c) (c * L.2) hp hp1 hz hz1 hv g4
  linarith

end Heilbronn.C1TopCapContainmentPair
