module

public import Heilbronn.Nine.C1.Setting
public import Heilbronn.Nine.C1.TwoLower.Basic
public import Heilbronn.Nine.Corners.OneCornerCompletion

/-! # Two lower C1 points exclude both side caps (`docs/proof/nine/C1_TWO_LOWER_SIDE_CAP.md`)

Role: a component on the primary route: `docs/proof/nine/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 1
(lines 241-244), excludes every free point in a side cap when two free points are inside `OHC`.

Setting (lines 3-38): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`,
two actual points `L, M` strictly inside `OHC`, and an actual point `X = (x, Y)` in the left cap
`conv{H, F, (0,1)}`. The configuration is competitive (least area at least `A₀`); only the eight
points `O, C, D, F, H, L, M, X` are used, so the competitiveness hypothesis is stated for the
eight-point sub-configuration `![O, C, D, F, H, L, M, X]` (`LeftCapSetting`). Doubled areas are
compared with `σ = 8/73 < 2A₀`; `K = 4 + 2√3`, `k = Kσ`, `ρ = 49/60 < k`.

Results:
* `eq1_6`: `hc ≥ k`, `h, c ≥ k > ρ` (1); `f ≥ x + σ/(1-h) ≥ σ/(h(1-h))` (2), `h < 7/8`; (3);
  `G(h, c) ≥ 0` (4); `h < 43/50`, `h < 341/400 + (1-c)/25` (5);
* `eq7_10`: for each lower point `R = (r, z)`: `[ORX] ≥ σ` (7), `R ∈ OHC ∩ OCX` (9),
  `r(1 - z) ≥ σ` (10);
* `eq11`: `[HRX] < 3σ` (11), so `HRX` contains no further actual point;
* `claim_separating`: the line through the lower points cannot separate `O, C`;
* `claim_nonseparating`: it cannot keep `O, C` on one side either;
* `theorem_main` (**Theorem**, unnumbered): no actual point lies in either side cap.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1TwoLowerSideCap

open Heilbronn.Nine.C1 Heilbronn.Nine.C1TwoLower

/-- The setting of §§1–5: weak anchors, `L, M` strictly inside `OHC`, `X` in the closed left cap
`conv{H, F, (0,1)}` (`[FHX] ≤ 0` for a point of the square), and the eight actual points
`O, C, D, F, H, L, M, X` with least area at least `A₀`. -/
structure LeftCapSetting (h c d f : ℝ) (L M X : Point) : Prop where
  anchors : C1AnchorsWeak h c d f
  memL : L ∈ unitSquare
  memM : M ∈ unitSquare
  memX : X ∈ unitSquare
  competitive : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X]
  lowerL : InLower h c L
  lowerM : InLower h c M
  capX : sarea (ptF f) (ptH h) X ≤ 0

/-- `G(h, c) = (1 - σ)(1 - h) - c(1 - h)² - σ` of (4), `σ = 8/73`. -/
def capG (h c : ℝ) : ℝ := (1 - 8 / 73) * (1 - h) - c * (1 - h) ^ 2 - 8 / 73

/-- The basic areas of the left-cap point: `hx ≥ σ` (`OHX`), `[HFX] = f(Y - h) - (1 - h)x ≥ σ`,
`[CDF] = 1 - c + d(c - f) ≥ σ`, and the coordinates of `X`. -/
theorem prelim {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    8 / 73 ≤ h * X.1 ∧ 8 / 73 ≤ f * (X.2 - h) - (1 - h) * X.1 ∧ 8 / 73 ≤ 1 - c + d * (c - f) ∧
      0 ≤ X.1 ∧ X.1 ≤ 1 ∧ X.2 ≤ 1 ∧ 0 ≤ X.2 := by
  obtain ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, ⟨x0, x1, y0, y1⟩, hmin, hLl, hMl, hcap⟩ := hS
  have e1 : 8 / 73 ≤ |sarea ptO (ptH h) X| := ar hmin 0 4 7
  have e2 : 8 / 73 ≤ |sarea (ptH h) (ptF f) X| := ar hmin 4 3 7
  have e3 : 8 / 73 ≤ |sarea (ptC c) (ptD d) (ptF f)| := ar hmin 1 2 3
  have q1 : sarea ptO (ptH h) X = -(h * X.1) := by simp only [sarea, ptO, ptH]; ring
  have q2 : sarea (ptH h) (ptF f) X = f * (X.2 - h) - (1 - h) * X.1 := by
    simp only [sarea, ptH, ptF]; ring
  have q3 : sarea (ptC c) (ptD d) (ptF f) = 1 - c + d * (c - f) := by
    simp only [sarea, ptC, ptD, ptF]; ring
  have q4 : sarea (ptF f) (ptH h) X = -sarea (ptH h) (ptF f) X := by simp only [sarea]; ring
  rw [q1, abs_neg] at e1; rw [q2] at e2; rw [q3] at e3; rw [q4, q2] at hcap
  have m1 := mul_nonneg hd.le (sub_nonneg.2 hfc)
  exact ⟨ar_pos e1 (mul_nonneg (by linarith) x0), ar_pos e2 (by linarith), ar_pos e3 (by linarith),
    x0, x1, y1, y0⟩

/-- `hc ≥ k` from the two lower points. -/
theorem hc_k {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c := by
  have hk : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ |sarea ptO (ptC c) (ptH h)| :=
    two_in hS.competitive 0 1 4 5 6 (by decide) (Or.inl hS.lowerL) (Or.inl hS.lowerM)
  have e : sarea ptO (ptC c) (ptH h) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  rwa [e, abs_of_nonneg (mul_nonneg (by linarith) (by linarith))] at hk

set_option linter.unusedVariables false in
theorem h78_of {h : ℝ} (h8 : 4 / 5 ≤ h) (hp : 8 / 73 ≤ h * (1 - h)) : h < 7 / 8 := by
  by_contra hn; push Not at hn
  nlinarith [mul_nonneg (show (0 : ℝ) ≤ h - 7 / 8 by linarith) (show (0 : ℝ) ≤ h - 1 / 8 by linarith)]

set_option linter.unusedVariables false in
theorem h43_of {h c : ℝ} (hc : 49 / 60 ≤ c) (hG : 0 ≤ capG h c) (hh : h ≤ 1) : h < 43 / 50 := by
  by_contra hn; push Not at hn
  unfold capG at hG
  have t1 : 49 / 60 * (1 - h) ^ 2 ≤ c * (1 - h) ^ 2 :=
    mul_le_mul_of_nonneg_right hc (sq_nonneg _)
  have t2 : (1 - h - 7 / 50) * (1 - 8 / 73 - 49 / 60 * (1 - h + 7 / 50)) ≤ 0 :=
    mul_nonpos_of_nonpos_of_nonneg (by linarith) (by nlinarith)
  nlinarith

theorem hH0_of {h c : ℝ} (hc0 : 0 ≤ c) (hc : c ≤ 1) (hG : 0 ≤ capG h c) (hh : h ≤ 1) :
    h < 341 / 400 + (1 - c) / 25 := by
  by_contra hn; push Not at hn
  have hu0 : 0 ≤ 1 - c := by linarith
  have d1 : capG h c - capG (341 / 400 + (1 - c) / 25) c =
      (h - (341 / 400 + (1 - c) / 25)) * (-(1 - 8 / 73) + c * (2 - h - (341 / 400 + (1 - c) / 25))) := by
    unfold capG; ring
  have d2 : -(1 - 8 / 73) + c * (2 - h - (341 / 400 + (1 - c) / 25)) < 0 := by
    have q : 0 ≤ 2 - h - (341 / 400 + (1 - c) / 25) := by linarith
    have : c * (2 - h - (341 / 400 + (1 - c) / 25)) ≤ 2 - h - (341 / 400 + (1 - c) / 25) := by
      have := mul_le_mul_of_nonneg_right hc q; linarith
    linarith
  have d3 := mul_nonpos_of_nonneg_of_nonpos (show (0 : ℝ) ≤ h - (341 / 400 + (1 - c) / 25) by
    linarith) d2.le
  have d4 : capG (341 / 400 + (1 - c) / 25) c = (1 - c) ^ 3 / 625 - 67 * (1 - c) ^ 2 / 5000 -
      24063 * (1 - c) / 11680000 - 113 / 11680000 := by
    unfold capG; ring
  have d5 : (1 - c) ^ 3 ≤ (1 - c) ^ 2 := by
    have := mul_le_mul_of_nonneg_left (show 1 - c ≤ 1 by linarith) (sq_nonneg (1 - c))
    nlinarith
  nlinarith [sq_nonneg (1 - c)]

set_option linter.unusedVariables false in
/-- The scalar content of (1)–(6). -/
theorem scal_1_6 {h c d f x Y : ℝ} (hA : C1AnchorsWeak h c d f)
    (hk : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c) (hxh : 8 / 73 ≤ h * x)
    (hcapX : 8 / 73 ≤ f * (Y - h) - (1 - h) * x) (hCDF : 8 / 73 ≤ 1 - c + d * (c - f))
    (x0 : 0 ≤ x) (x1 : x ≤ 1) (y1 : Y ≤ 1) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c ∧ (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) ∧
      h < 1 ∧ x + 8 / 73 / (1 - h) ≤ f ∧ 8 / 73 / (h * (1 - h)) ≤ x + 8 / 73 / (1 - h) ∧
      h < 7 / 8 ∧
      h * f ≤ 1 - 8 / 73 - c * (1 - h) ∧ h * x ≤ 1 - c * (1 - h) - 8 / 73 / (1 - h) ∧
      0 ≤ capG h c ∧ h < 43 / 50 ∧ h < 341 / 400 + (1 - c) / 25 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have kgt := kσ_gt
  have kgt' := kσ_gt'
  have hk1 : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h := by
    have := mul_le_mul_of_nonneg_left hc (show (0 : ℝ) ≤ h by linarith); linarith
  have hk2 : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c := by
    have := mul_le_mul_of_nonneg_right hh (show (0 : ℝ) ≤ c by linarith); linarith
  have hfY : f * (Y - h) ≤ f * (1 - h) := mul_le_mul_of_nonneg_left (by linarith) hf.le
  have hσ : 8 / 73 ≤ (1 - h) * (f - x) := by linarith
  have hlt1 : h < 1 := by
    by_contra hn; push Not at hn
    have : (1 - h) * (f - x) ≤ 0 := by
      have : 1 - h = 0 := by linarith
      rw [this, zero_mul]
    linarith
  have h1h : 0 < 1 - h := by linarith
  have h0 : 0 < h := by linarith
  have key2 : x + 8 / 73 / (1 - h) ≤ f := by
    have : 8 / 73 / (1 - h) ≤ f - x := by rw [div_le_iff₀ h1h]; linarith
    linarith
  have hxs : 8 / 73 / h ≤ x := by rw [div_le_iff₀ h0]; linarith
  have esplit : 8 / 73 / (h * (1 - h)) = 8 / 73 / h + 8 / 73 / (1 - h) := by
    field_simp; ring
  have key3 : 8 / 73 / (h * (1 - h)) ≤ x + 8 / 73 / (1 - h) := by rw [esplit]; linarith
  have h78 : h < 7 / 8 := by
    have : 8 / 73 / (h * (1 - h)) ≤ 1 := by linarith
    rw [div_le_iff₀ (mul_pos h0 h1h)] at this
    exact h78_of (by linarith) (by linarith)
  have hf3 : h * f ≤ 1 - 8 / 73 - c * (1 - h) := by
    have := mul_le_mul_of_nonneg_right hdh (show (0 : ℝ) ≤ c - f by linarith)
    linarith
  have ehx : 8 / 73 + h * (8 / 73 / (1 - h)) = 8 / 73 / (1 - h) := by field_simp; ring
  have hk3 := mul_le_mul_of_nonneg_left key2 h0.le
  have hx3 : h * x ≤ 1 - c * (1 - h) - 8 / 73 / (1 - h) := by linarith
  have hσf : 8 / 73 / (1 - h) ≤ h * f := by linarith
  have hG : 0 ≤ capG h c := by
    have k1 : 8 / 73 / (1 - h) ≤ 1 - 8 / 73 - c * (1 - h) := le_trans hσf hf3
    rw [div_le_iff₀ h1h] at k1
    unfold capG; linarith
  exact ⟨hk, hk1, hk2, kgt, hlt1, key2, key3, h78, hf3, hx3, hG, h43_of (by linarith) hG hh,
    hH0_of (by linarith) hc hG hh⟩

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:eq1-6`). In the left-cap setting, with `X = (x, Y)`,
`σ = 8/73`, `k = (4 + 2√3)σ`: `hc ≥ k` and `h, c ≥ k > ρ` (1); `h < 1` and
`f ≥ x + σ/(1-h) ≥ σ/(h(1-h))` (2); `h < 7/8`; `hf ≤ 1 - σ - c(1-h)` and
`hx ≤ 1 - c(1-h) - σ/(1-h)` (3); `G(h, c) ≥ 0` (4); `h < 43/50` and
`h < 341/400 + (1-c)/25` (5). `docs/proof/nine/C1_TWO_LOWER_SIDE_CAP.md`, lines 31-104.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq1_6 {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c ∧ (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) ∧
      h < 1 ∧ X.1 + 8 / 73 / (1 - h) ≤ f ∧ 8 / 73 / (h * (1 - h)) ≤ X.1 + 8 / 73 / (1 - h) ∧
      h < 7 / 8 ∧
      h * f ≤ 1 - 8 / 73 - c * (1 - h) ∧ h * X.1 ≤ 1 - c * (1 - h) - 8 / 73 / (1 - h) ∧
      0 ≤ capG h c ∧ h < 43 / 50 ∧ h < 341 / 400 + (1 - c) / 25 := by
  obtain ⟨hxh, hcapX, hCDF, x0, x1, y1, y0⟩ := prelim hS
  exact scal_1_6 hS.anchors (hc_k hS) hxh hcapX hCDF x0 x1 y1

/-- `R₀(h) = h(1 - h) - σh(3 - 2h) - k(1 - h)² < 0` for `k ≤ h < 1` (8). -/
theorem R0_neg {h : ℝ} (hk : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h) (h1 : h < 1) :
    h * (1 - h) - 8 / 73 * h * (3 - 2 * h) - (4 + 2 * Real.sqrt 3) * (8 / 73) * (1 - h) ^ 2 < 0 := by
  have kgt := kσ_gt'
  have t1 : 40899 / 50000 * (1 - h) ^ 2 ≤ (4 + 2 * Real.sqrt 3) * (8 / 73) * (1 - h) ^ 2 :=
    mul_le_mul_of_nonneg_right kgt.le (sq_nonneg _)
  have e : h * (1 - h) - 8 / 73 * h * (3 - 2 * h) - 40899 / 50000 * (1 - h) ^ 2 =
      -4441986117027 / 9125000000000000 - 28139958673 / 91250000000 * (h - 40899 / 50000) -
        5835627 / 3650000 * (h - 40899 / 50000) ^ 2 := by ring
  have t2 : 0 ≤ h - 40899 / 50000 := by linarith
  nlinarith [sq_nonneg (h - 40899 / 50000)]

/-- (7) in scalar form. -/
theorem scal_7 {h c f x Y r z : ℝ} (hk : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c)
    (hk1 : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h) (hlt1 : h < 1)
    (key2 : x + 8 / 73 / (1 - h) ≤ f) (hf3 : h * f ≤ 1 - 8 / 73 - c * (1 - h))
    (hzh : z < h) (hYh : h < Y) (hrs : 8 / 73 ≤ h * r) (hr0 : 0 < r) (x0 : 0 ≤ x)
    (eORX : 8 / 73 ≤ |r * Y - z * x|) : 0 < r * Y - z * x := by
  have kgt := kσ_gt
  have h0 : 0 < h := by linarith
  have h1h : 0 < 1 - h := by linarith
  by_contra hn; push Not at hn
  have k1 := ar_neg eORX hn
  have k2 : 2 * (8 / 73) ≤ h * x := by
    have := mul_le_mul_of_nonneg_left hYh.le hr0.le
    have := mul_le_mul_of_nonneg_right hzh.le x0
    linarith
  have k3 := mul_le_mul_of_nonneg_left key2 h0.le
  have ehx : h * (8 / 73 / (1 - h)) = 8 / 73 * h / (1 - h) := by ring
  have k4 : 2 * (8 / 73) + 8 / 73 * h / (1 - h) ≤ 1 - 8 / 73 - c * (1 - h) := by
    rw [mul_add, ehx] at k3; linarith
  have e : (2 * (8 / 73) + 8 / 73 * h / (1 - h)) * (1 - h) =
      2 * (8 / 73) * (1 - h) + 8 / 73 * h := by field_simp
  have k5 := mul_le_mul_of_nonneg_right k4 h1h.le
  rw [e] at k5
  have k6 := mul_le_mul_of_nonneg_left k5 h0.le
  have k7 := mul_le_mul_of_nonneg_right hk (sq_nonneg (1 - h))
  have := R0_neg hk1 hlt1
  nlinarith

/-- The point facts (7), (9), (10) for one lower point `R`. -/
theorem pt_7_10 {h c d f : ℝ} {X R : Point} (hA : C1AnchorsWeak h c d f)
    (hk : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c) (hX : X ∈ unitSquare)
    (hxh : 8 / 73 ≤ h * X.1) (hcapX : 8 / 73 ≤ f * (X.2 - h) - (1 - h) * X.1)
    (hCDF : 8 / 73 ≤ 1 - c + d * (c - f)) (hR : InLower h c R)
    (eORX : 8 / 73 ≤ |sarea ptO R X|) (eHOR : 8 / 73 ≤ |sarea (ptH h) ptO R|)
    (eHRX : 8 / 73 ≤ |sarea (ptH h) R X|) :
    0 < sarea ptO R X ∧ 8 / 73 ≤ sarea ptO R X ∧ InLower h c R ∧
      InTriangle R ptO (ptC c) X ∧ 8 / 73 ≤ R.1 * (1 - R.2) := by
  obtain ⟨x0, x1, y0, y1⟩ := hX
  obtain ⟨-, hk1, hk2, -, hlt1, key2, -, -, hf3, -, -, -, -⟩ :=
    scal_1_6 hA hk hxh hcapX hCDF x0 x1 y1
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have kgt := kσ_gt
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  have h1h : 0 < 1 - h := by linarith
  obtain ⟨hr0, hz0, hzh, -, -, -, q3⟩ := low_pt h0 c0 hR
  rw [q3] at eHOR
  have hrs : 8 / 73 ≤ h * R.1 := ar_pos eHOR (mul_pos h0 hr0).le
  have hYh : h < X.2 := by
    by_contra hn; push Not at hn
    have := mul_nonpos_of_nonneg_of_nonpos hf.le (show X.2 - h ≤ 0 by linarith)
    have := mul_nonneg h1h.le x0
    linarith
  have qO : sarea ptO R X = R.1 * X.2 - R.2 * X.1 := by simp only [sarea, ptO]; ring
  rw [qO] at eORX ⊢
  have h7 := scal_7 hk hk1 hlt1 key2 hf3 hzh hYh hrs hr0 x0 eORX
  have hx0 : 0 < X.1 := by
    by_contra hn; push Not at hn
    have : X.1 = 0 := le_antisymm hn x0
    rw [this, mul_zero] at hxh; linarith
  have hHCX : 0 < sarea (ptH h) (ptC c) X := by
    have e : sarea (ptH h) (ptC c) X = c * (X.2 - h) + h * X.1 := by
      simp only [sarea, ptH, ptC]; ring
    rw [e]; have := mul_pos c0 (show (0 : ℝ) < X.2 - h by linarith)
    have := mul_pos h0 hx0; linarith
  obtain ⟨t1, t2⟩ := lower_sides h0 c0 hHCX hx0 (by linarith) hR
  refine ⟨h7, ar_pos eORX h7.le, hR, ⟨hR.1, t2, ?_⟩, ?_⟩
  · have : sarea X ptO R = R.1 * X.2 - R.2 * X.1 := by simp only [sarea, ptO]; ring
    rw [this]; exact h7
  · have qH : sarea (ptH h) R X = R.1 * (X.2 - h) + (h - R.2) * X.1 := by
      simp only [sarea, ptH]; ring
    have qH' : sarea (ptH h) R X = sarea X (ptH h) R := by simp only [sarea]; ring
    have hHRX : 8 / 73 ≤ sarea (ptH h) R X := ar_pos eHRX (by rw [qH']; exact t1.le)
    rw [qH] at hHRX
    have hO := ar_pos eORX h7.le
    rcases le_total R.1 X.1 with hrx | hrx
    · have := mul_le_mul_of_nonneg_left hrx hz0.le
      have := mul_le_mul_of_nonneg_left y1 hr0.le
      linarith
    · have := mul_le_mul_of_nonneg_left hrx (show (0 : ℝ) ≤ h - R.2 by linarith)
      have := mul_le_mul_of_nonneg_left y1 hr0.le
      linarith

set_option linter.unusedVariables false in
/-- `E(h) < 3σ`: the bound (12) for one lower point, in scalar form. -/
theorem E_bound {h c : ℝ} (hρ : 49 / 60 ≤ h) (h1 : h < 1) (c0 : 0 < c) (c1 : c ≤ 1)
    (hcs : 8 / 73 < h * c) (hApos : 0 < 1 - 8 / 73 / (1 - h)) :
    (c - 2 * (8 / 73) / h) * (1 - h) + (h - 8 / 73 / c) * ((1 - c * (1 - h) - 8 / 73 / (1 - h)) / h)
      < 3 * (8 / 73) := by
  have h0 : 0 < h := by linarith
  have h1h : 0 < 1 - h := by linarith
  have e1 : (c - 2 * (8 / 73) / h) * (1 - h) +
      (h - 8 / 73 / c) * ((1 - c * (1 - h) - 8 / 73 / (1 - h)) / h) =
      -(8 / 73) * (1 - h) / h + (1 - 8 / 73 / (1 - h)) * (1 - 8 / 73 / (h * c)) := by
    field_simp; ring
  have e2 : (1 - 8 / 73 / (1 - h)) * (1 - 8 / 73 / (h * c)) ≤
      (1 - 8 / 73 / (1 - h)) * (1 - 8 / 73 / h) := by
    apply mul_le_mul_of_nonneg_left _ hApos.le
    have : 8 / 73 / h ≤ 8 / 73 / (h * c) := by
      apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
      nlinarith
    linarith
  have e3 : 3 * (8 / 73) - (-(8 / 73) * (1 - h) / h + (1 - 8 / 73 / (1 - h)) * (1 - 8 / 73 / h)) =
      ((1 - 2 * (8 / 73)) * h ^ 2 - (1 - 8 / 73) * h + 8 / 73 * (2 - 8 / 73)) / (h * (1 - h)) := by
    field_simp; ring
  have e4 : 0 < (1 - 2 * (8 / 73)) * h ^ 2 - (1 - 8 / 73) * h + 8 / 73 * (2 - 8 / 73) := by
    nlinarith [sq_nonneg (h - 49 / 60)]
  have e5 := div_pos e4 (mul_pos h0 h1h)
  linarith

/-- (11) for one lower point. -/
theorem pt_11 {h c d f : ℝ} {X R : Point} (hA : C1AnchorsWeak h c d f)
    (hk : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c) (hX : X ∈ unitSquare)
    (hxh : 8 / 73 ≤ h * X.1) (hcapX : 8 / 73 ≤ f * (X.2 - h) - (1 - h) * X.1)
    (hCDF : 8 / 73 ≤ 1 - c + d * (c - f)) (hR : InLower h c R)
    (eOCR : 8 / 73 ≤ |sarea ptO (ptC c) R|) (eCHR : 8 / 73 ≤ |sarea (ptC c) (ptH h) R|) :
    0 < sarea (ptH h) R X ∧ sarea (ptH h) R X < 3 * (8 / 73) := by
  obtain ⟨x0, x1, y0, y1⟩ := hX
  obtain ⟨-, hk1, hk2, -, hlt1, key2, -, -, hf3, hx3, -, -, -⟩ :=
    scal_1_6 hA hk hxh hcapX hCDF x0 x1 y1
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have kgt := kσ_gt
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  have h1h : 0 < 1 - h := by linarith
  have hR' := hR
  obtain ⟨r1, r2, r3⟩ := hR
  have q1 : sarea ptO (ptC c) R = c * R.2 := by simp only [sarea, ptO, ptC]; ring
  have q2 : sarea (ptC c) (ptH h) R = h * c - c * R.2 - h * R.1 := by
    simp only [sarea, ptC, ptH]; ring
  have q3 : sarea (ptH h) ptO R = h * R.1 := by simp only [sarea, ptO, ptH]; ring
  rw [q1] at r1 eOCR; rw [q2] at r2 eCHR; rw [q3] at r3
  have a1 := ar_pos eOCR r1.le
  have a2 := ar_pos eCHR r2.le
  have hr0 : 0 ≤ R.1 := by
    by_contra hn; push Not at hn; nlinarith
  have hYh : h < X.2 := by
    by_contra hn; push Not at hn
    have := mul_nonpos_of_nonneg_of_nonpos hf.le (show X.2 - h ≤ 0 by linarith)
    have := mul_nonneg h1h.le x0
    nlinarith
  have hx0 : 0 < X.1 := by
    by_contra hn; push Not at hn; nlinarith
  have hHCX : 0 < sarea (ptH h) (ptC c) X := by
    simp only [sarea, ptH, ptC]
    nlinarith [mul_pos c0 (show (0 : ℝ) < X.2 - h by linarith)]
  obtain ⟨t1, -⟩ := lower_sides h0 c0 hHCX hx0 (by linarith) hR'
  have qH : sarea (ptH h) R X = R.1 * (X.2 - h) + (h - R.2) * X.1 := by
    simp only [sarea, ptH]; ring
  have qH' : sarea (ptH h) R X = sarea X (ptH h) R := by simp only [sarea]; ring
  refine ⟨by rw [qH']; exact t1, ?_⟩
  rw [qH]
  have b1 : R.1 ≤ c - 2 * (8 / 73) / h := by
    have e : c - 2 * (8 / 73) / h = (h * c - 2 * (8 / 73)) / h := by field_simp
    rw [e, le_div_iff₀ h0]; linarith
  have b2 : h - R.2 ≤ h - 8 / 73 / c := by
    have : 8 / 73 / c ≤ R.2 := by rw [div_le_iff₀ c0]; linarith
    linarith
  have b3 : X.1 ≤ (1 - c * (1 - h) - 8 / 73 / (1 - h)) / h := by
    rw [le_div_iff₀ h0]; linarith
  have hcs : 8 / 73 < h * c := by linarith
  have b4 : 0 < h - 8 / 73 / c := by
    have : 8 / 73 / c < h := by rw [div_lt_iff₀ c0]; linarith
    linarith
  have hApos : 0 < 1 - 8 / 73 / (1 - h) := by
    have : 0 < h * X.1 := mul_pos h0 hx0
    have : 0 ≤ c * (1 - h) := mul_nonneg c0.le h1h.le
    linarith
  have E := E_bound (by linarith) hlt1 c0 hc hcs hApos
  have m1 : R.1 * (X.2 - h) ≤ (c - 2 * (8 / 73) / h) * (1 - h) := by
    have := mul_le_mul_of_nonneg_left (show X.2 - h ≤ 1 - h by linarith) hr0
    have := mul_le_mul_of_nonneg_right b1 h1h.le
    linarith
  have m2 : (h - R.2) * X.1 ≤ (h - 8 / 73 / c) * ((1 - c * (1 - h) - 8 / 73 / (1 - h)) / h) := by
    have := mul_le_mul_of_nonneg_right b2 x0
    have := mul_le_mul_of_nonneg_left b3 b4.le
    linarith
  linarith

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:eq7-10`). In the left-cap setting, every lower point
`R = (r, z)` satisfies `[ORX] > 0` (7), hence `[ORX] ≥ σ`; `R ∈ OHC ∩ OCX` (9); and
`r(1 - z) ≥ σ` (10), with `σ = 8/73`. `docs/proof/nine/C1_TWO_LOWER_SIDE_CAP.md`, lines 106-156.
Uses: C1_TWO_LOWER_SIDE_CAP:eq1-6. -/
theorem eq7_10 {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    ∀ R, (R = L ∨ R = M) →
      0 < sarea ptO R X ∧ 8 / 73 ≤ sarea ptO R X ∧ InLower h c R ∧
        InTriangle R ptO (ptC c) X ∧ 8 / 73 ≤ R.1 * (1 - R.2) := by
  obtain ⟨hxh, hcapX, hCDF, -, -, -, -⟩ := prelim hS
  have hk := hc_k hS
  rintro R (rfl | rfl)
  · exact pt_7_10 hS.anchors hk hS.memX hxh hcapX hCDF hS.lowerL (ar hS.competitive 0 5 7)
      (ar hS.competitive 4 0 5) (ar hS.competitive 4 5 7)
  · exact pt_7_10 hS.anchors hk hS.memX hxh hcapX hCDF hS.lowerM (ar hS.competitive 0 6 7)
      (ar hS.competitive 4 0 6) (ar hS.competitive 4 6 7)

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:eq11`). In the left-cap setting, every lower point `R`
satisfies `0 < [HRX] < 3σ` (11) (indeed `[HRX] ≤ E(h) ≤ E(ρ) = 3σ - 14661/2872331`); in
particular the triangle `HRX` contains no further actual point (here: the other lower point).
`docs/proof/nine/C1_TWO_LOWER_SIDE_CAP.md`, lines 158-202.
Uses: C1_TWO_LOWER_SIDE_CAP:eq1-6, C1_TWO_LOWER_SIDE_CAP:eq7-10. -/
theorem eq11 {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    (∀ R, (R = L ∨ R = M) → 0 < sarea (ptH h) R X ∧ sarea (ptH h) R X < 3 * (8 / 73)) ∧
      ¬ InsideTri M (ptH h) L X ∧ ¬ InsideTri L (ptH h) M X := by
  obtain ⟨hxh, hcapX, hCDF, -, -, -, -⟩ := prelim hS
  have hk := hc_k hS
  have hL := pt_11 hS.anchors hk hS.memX hxh hcapX hCDF hS.lowerL (ar hS.competitive 0 1 5)
    (ar hS.competitive 1 4 5)
  have hM := pt_11 hS.anchors hk hS.memX hxh hcapX hCDF hS.lowerM (ar hS.competitive 0 1 6)
    (ar hS.competitive 1 4 6)
  refine ⟨?_, ?_, ?_⟩
  · rintro R (rfl | rfl)
    · exact hL
    · exact hM
  · have hL3 : |sarea (ptH h) L X| < 3 * (8 / 73) := by rw [abs_of_pos hL.1]; exact hL.2
    exact ear_empty hS.competitive 4 5 7 6 hL3
  · have hM3 : |sarea (ptH h) M X| < 3 * (8 / 73) := by rw [abs_of_pos hM.1]; exact hM.2
    exact ear_empty hS.competitive 4 6 7 5 hM3

/-- The scalar end of §4: the endpoint inequality (14) (either bracket), `T ≥ b + σ` and
`k ≤ a ≤ b ≤ 1`, `a < 43/50` are incompatible ((15) and `F(43/50, 1) < 0`). -/
theorem sep_scalar {a b T : ℝ} (ha : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ a) (hab : a ≤ b)
    (hb1 : b ≤ 1) (ha43 : a < 43 / 50) (hT : b + 8 / 73 ≤ T)
    (hcase : (0 < a * b - 8 / 73 * (T + a) ∧ 4 * (8 / 73) * T * (a * b) ≤
        (a * b - 8 / 73 * (T + a)) ^ 2) ∨
      (0 < a * b - 8 / 73 * (T + b) ∧ 4 * (8 / 73) * T * (a * b) ≤
        (a * b - 8 / 73 * (T + b)) ^ 2)) : False := by
  have kgt := kσ_gt'
  have ha0 : 0 < a := by linarith
  have hb0 : 0 < b := by linarith
  -- one bracket
  have h1 : 0 < a * b - 8 / 73 * (T + a) ∧ 4 * (8 / 73) * T * (a * b) ≤
      (a * b - 8 / 73 * (T + a)) ^ 2 := by
    rcases hcase with h | ⟨h2, h3⟩
    · exact h
    · have : a * b - 8 / 73 * (T + b) ≤ a * b - 8 / 73 * (T + a) := by linarith
      refine ⟨by linarith, le_trans h3 ?_⟩
      exact pow_le_pow_left₀ h2.le this 2
  obtain ⟨hβ, hF⟩ := h1
  -- `T` down to `b + σ`
  have hβ0 : 0 < (a - 8 / 73) * b - 8 / 73 * (a + 8 / 73) := by nlinarith
  have hF0 : 0 ≤ ((a - 8 / 73) * b - 8 / 73 * (a + 8 / 73)) ^ 2 -
      4 * (8 / 73) * a * b * (b + 8 / 73) := by
    have q1 : a * b - 8 / 73 * (T + a) ≤ (a - 8 / 73) * b - 8 / 73 * (a + 8 / 73) := by linarith
    have q2 := pow_le_pow_left₀ hβ.le q1 2
    have q3 : 4 * (8 / 73) * a * b * (b + 8 / 73) ≤ 4 * (8 / 73) * T * (a * b) := by
      have := mul_le_mul_of_nonneg_left hT (show (0 : ℝ) ≤ 4 * (8 / 73) * (a * b) by positivity)
      linarith
    linarith
  -- `b` up to `1`
  have has : 0 < a - 8 / 73 := by linarith
  set x0 := 8 / 73 * (a + 8 / 73) / (a - 8 / 73) with hx0
  have hx0b : x0 < b := by
    rw [hx0, div_lt_iff₀ has]; linarith
  have hx0p : 0 < x0 := by positivity
  have hAq : 0 ≤ (a - 8 / 73) ^ 2 - 4 * (8 / 73) * a := by nlinarith
  have hq0 : ((a - 8 / 73) ^ 2 - 4 * (8 / 73) * a) * x0 ^ 2 +
      (-2 * (a - 8 / 73) * (8 / 73) * (a + 8 / 73) - 4 * (8 / 73) ^ 2 * a) * x0 +
      (8 / 73) ^ 2 * (a + 8 / 73) ^ 2 < 0 := by
    have hne' : a * 73 - 8 ≠ 0 := ne_of_gt (by linarith)
    have e : (a - 8 / 73) * x0 = 8 / 73 * (a + 8 / 73) := by rw [hx0]; field_simp
    have e2 : ((a - 8 / 73) ^ 2 - 4 * (8 / 73) * a) * x0 ^ 2 +
        (-2 * (a - 8 / 73) * (8 / 73) * (a + 8 / 73) - 4 * (8 / 73) ^ 2 * a) * x0 +
        (8 / 73) ^ 2 * (a + 8 / 73) ^ 2 =
        ((a - 8 / 73) * x0 - 8 / 73 * (a + 8 / 73)) ^ 2 - 4 * (8 / 73) * a * x0 * (x0 + 8 / 73) := by
      ring
    rw [e2, e]
    have := mul_pos (mul_pos (mul_pos (show (0 : ℝ) < 4 * (8 / 73) by norm_num) ha0) hx0p)
      (show 0 < x0 + 8 / 73 by linarith)
    nlinarith
  have hq : 0 ≤ ((a - 8 / 73) ^ 2 - 4 * (8 / 73) * a) * b ^ 2 +
      (-2 * (a - 8 / 73) * (8 / 73) * (a + 8 / 73) - 4 * (8 / 73) ^ 2 * a) * b +
      (8 / 73) ^ 2 * (a + 8 / 73) ^ 2 := by nlinarith
  have hq1 := quad_up hAq hx0b hb1 hq0 hq
  -- `a` up to `43/50`, at `b = 1`
  set y0 : ℝ := 8 / 73 * (1 + 8 / 73) / (1 - 8 / 73) with hy0
  have hβ1 : 0 < (1 - 8 / 73) * a - 8 / 73 * (1 + 8 / 73) := by
    have := mul_le_mul_of_nonneg_left hb1 has.le
    nlinarith
  have hy0a : y0 < a := by
    rw [hy0, div_lt_iff₀ (by norm_num)]; linarith
  have hr0 : ((1 - 8 / 73) ^ 2) * y0 ^ 2 +
      (-2 * (1 - 8 / 73) * (8 / 73) * (1 + 8 / 73) - 4 * (8 / 73) * (1 + 8 / 73)) * y0 +
      (8 / 73) ^ 2 * (1 + 8 / 73) ^ 2 < 0 := by
    rw [hy0]; norm_num
  have hr : 0 ≤ ((1 - 8 / 73) ^ 2) * a ^ 2 +
      (-2 * (1 - 8 / 73) * (8 / 73) * (1 + 8 / 73) - 4 * (8 / 73) * (1 + 8 / 73)) * a +
      (8 / 73) ^ 2 * (1 + 8 / 73) ^ 2 := by nlinarith
  have := quad_up (by norm_num) hy0a ha43.le hr0 hr
  norm_num at this

/-- The six points `O, C, X, H` and the lower pair, as a sub-configuration. -/
theorem quad_min {h c d f : ℝ} {L M X P Q : Point} (hS : LeftCapSetting h c d f L M X)
    (hPQ : (P = L ∧ Q = M) ∨ (P = M ∧ Q = L)) :
    8 / 73 / 2 ≤ minTriangleArea (OneCornerCompletion.quadConfig ptO (ptC c) X (ptH h) P Q) := by
  have hA : A₀ ≤ minTriangleArea (OneCornerCompletion.quadConfig ptO (ptC c) X (ptH h) P Q) := by
    rcases hPQ with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact CornerFamilies.min_sub hS.competitive _ ![0, 1, 7, 4, 5, 6] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> rfl)
    · exact CornerFamilies.min_sub hS.competitive _ ![0, 1, 7, 4, 6, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> rfl)
  linarith [σ_lt]

/-- The data of §4 for an ordered lower pair `P, Q`. -/
theorem sep_data {h c d f : ℝ} {L M X P Q : Point} (hS : LeftCapSetting h c d f L M X)
    (hPQ : (P = L ∧ Q = M) ∨ (P = M ∧ Q = L)) :
    sarea P Q (ptH h) ≠ 0 ∧ sarea P Q X ≠ 0 ∧ ¬ InsideTri P (ptH h) Q X ∧
      OneCornerCompletion.IsConvexQuad ptO (ptC c) X (ptH h) ∧
      OneCornerCompletion.CentralPair ptO (ptC c) X (ptH h) P Q ∧
      8 / 73 / 2 ≤ minTriangleArea (OneCornerCompletion.quadConfig ptO (ptC c) X (ptH h) P Q) ∧
      0 < OneCornerCompletion.overlapJ ptO (ptC c) X (ptH h) ∧
      OneCornerCompletion.areaA ptO (ptC c) X (ptH h) = h * c ∧
      OneCornerCompletion.areaB ptO (ptC c) X (ptH h) = c * X.2 ∧
      OneCornerCompletion.areaW ptO (ptC c) X (ptH h) = c * X.2 + h * X.1 ∧
      0 < sarea (ptC c) (ptH h) P ∧ 0 < sarea X (ptH h) P ∧ 0 < sarea (ptC c) X P ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ h * c ≤ c * X.2 ∧ c * X.2 ≤ 1 ∧
      c * X.2 + 8 / 73 ≤ c * X.2 + h * X.1 ∧ h * c < 43 / 50 := by
  obtain ⟨hxh, hcapX, hCDF, x0, x1, y1, y0⟩ := prelim hS
  have hk := hc_k hS
  obtain ⟨-, hk1, hk2, -, hlt1, key2, -, -, -, -, -, h43, -⟩ :=
    scal_1_6 hS.anchors hk hxh hcapX hCDF x0 x1 y1
  have h710 := eq7_10 hS
  obtain ⟨-, n1, n2⟩ := eq11 hS
  have kgt := kσ_gt
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  have h1h : 0 < 1 - h := by linarith
  -- the facts for `P` and `Q`
  have hPm : P = L ∨ P = M := by rcases hPQ with ⟨h1, -⟩ | ⟨h1, -⟩ <;> tauto
  have hQm : Q = L ∨ Q = M := by rcases hPQ with ⟨-, h1⟩ | ⟨-, h1⟩ <;> tauto
  obtain ⟨-, -, hPl, hPX, -⟩ := h710 P hPm
  obtain ⟨-, -, hQl, hQX, -⟩ := h710 Q hQm
  have hne : sarea P Q (ptH h) ≠ 0 ∧ sarea P Q X ≠ 0 ∧ ¬ InsideTri P (ptH h) Q X := by
    rcases hPQ with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact ⟨ar_ne (by norm_num) (ar hS.competitive 5 6 4),
        ar_ne (by norm_num) (ar hS.competitive 5 6 7), n2⟩
    · exact ⟨ar_ne (by norm_num) (ar hS.competitive 6 5 4),
        ar_ne (by norm_num) (ar hS.competitive 6 5 7), n1⟩
  obtain ⟨neH, neX, nin⟩ := hne
  have hYh : h < X.2 := by
    by_contra hn; push Not at hn
    have := mul_nonpos_of_nonneg_of_nonpos hf.le (show X.2 - h ≤ 0 by linarith)
    have := mul_nonneg h1h.le x0
    linarith
  have hx0 : 0 < X.1 := by
    by_contra hn; push Not at hn
    have : X.1 = 0 := le_antisymm hn x0
    rw [this, mul_zero] at hxh; linarith
  have hHCX : 0 < sarea (ptH h) (ptC c) X := by
    have e : sarea (ptH h) (ptC c) X = c * (X.2 - h) + h * X.1 := by
      simp only [sarea, ptH, ptC]; ring
    rw [e]; have := mul_pos c0 (show (0 : ℝ) < X.2 - h by linarith)
    have := mul_pos h0 hx0; linarith
  obtain ⟨tP1, tP2⟩ := lower_sides h0 c0 hHCX hx0 (by linarith) hPl
  -- the quadrilateral `O, C, X, H`
  have eOCX : sarea ptO (ptC c) X = c * X.2 := by simp only [sarea, ptO, ptC]; ring
  have eOXH : sarea ptO X (ptH h) = h * X.1 := by simp only [sarea, ptO, ptH]; ring
  have eOCH : sarea ptO (ptC c) (ptH h) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have eCXH : sarea (ptC c) X (ptH h) = sarea (ptH h) (ptC c) X := by simp only [sarea]; ring
  have eXHO : sarea X (ptH h) ptO = h * X.1 := by simp only [sarea, ptO, ptH]; ring
  have eHOC : sarea (ptH h) ptO (ptC c) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have pOCX : 0 < c * X.2 := mul_pos c0 (by linarith)
  have pOXH : 0 < h * X.1 := mul_pos h0 hx0
  have pOCH : 0 < h * c := mul_pos h0 c0
  have hq : OneCornerCompletion.IsConvexQuad ptO (ptC c) X (ptH h) :=
    Or.inl ⟨by rw [eOCX]; exact pOCX, by rw [eCXH]; exact hHCX, by rw [eXHO]; exact pOXH,
      by rw [eHOC]; exact pOCH⟩
  have hcp : OneCornerCompletion.CentralPair ptO (ptC c) X (ptH h) P Q :=
    ⟨Or.inl hPX, Or.inl hPl, Or.inl hQX, Or.inl hQl⟩
  have hmin6 := quad_min hS hPQ
  have ea : OneCornerCompletion.areaA ptO (ptC c) X (ptH h) = h * c := by
    simp only [OneCornerCompletion.areaA]; rw [eOCH, abs_of_pos pOCH]
  have eb : OneCornerCompletion.areaB ptO (ptC c) X (ptH h) = c * X.2 := by
    simp only [OneCornerCompletion.areaB]; rw [eOCX, abs_of_pos pOCX]
  have eW : OneCornerCompletion.areaW ptO (ptC c) X (ptH h) = c * X.2 + h * X.1 := by
    simp only [OneCornerCompletion.areaW]; rw [eOCX, eOXH, abs_of_pos (by linarith)]
  have hxc : X.1 < c := by
    have : 0 < 8 / 73 / (1 - h) := by positivity
    linarith
  have hJ : 0 < OneCornerCompletion.overlapJ ptO (ptC c) X (ptH h) := by
    simp only [OneCornerCompletion.overlapJ]; rw [ea, eb, eW]
    have := mul_pos h0 (show (0 : ℝ) < c - X.1 by linarith); linarith
  have hCHP : 0 < sarea (ptC c) (ptH h) P := hPl.2.1
  have hab : h * c ≤ c * X.2 := by
    have := mul_le_mul_of_nonneg_left hYh.le c0.le; linarith
  have hb1 : c * X.2 ≤ 1 := by
    have := mul_le_mul hc y1 (by linarith) (by norm_num : (0 : ℝ) ≤ 1); linarith
  have hT : c * X.2 + 8 / 73 ≤ c * X.2 + h * X.1 := by linarith
  have ha43 : h * c < 43 / 50 := by
    have := mul_le_mul_of_nonneg_left hc h0.le; linarith
  exact ⟨neH, neX, nin, hq, hcp, hmin6, hJ, ea, eb, eW, hCHP, tP1, tP2, hk, hab, hb1, hT, ha43⟩

/-- **§4 for an oriented lower pair** `P, Q` with `[PQO] < 0 < [PQC]`. -/
theorem sep_core {h c d f : ℝ} {L M X P Q : Point} (hS : LeftCapSetting h c d f L M X)
    (hPQ : (P = L ∧ Q = M) ∨ (P = M ∧ Q = L)) (hO : sarea P Q ptO < 0)
    (hC : 0 < sarea P Q (ptC c)) : False := by
  obtain ⟨neH, neX, nin, hq, hcp, hmin6, hJ, ea, eb, eW, hCHP, tP1, tP2, hk, hab, hb1, hT, ha43⟩ :=
    sep_data hS hPQ
  clear hS
  have idsl : sarea (ptC c) (ptH h) P * sarea P Q X =
      sarea (ptC c) X P * sarea P Q (ptH h) - sarea P Q (ptC c) * sarea (ptH h) X P := by
    simp only [sarea]; ring
  have hHXP : sarea (ptH h) X P = -sarea X (ptH h) P := by simp only [sarea]; ring
  rcases lt_or_gt_of_ne neH with dH | dH
  · rcases lt_or_gt_of_ne neX with dX | dX
    · have hiso : OneCornerCompletion.Isolates P Q (ptC c) ptO X (ptH h) :=
        ⟨mul_neg_of_pos_of_neg hC hO, mul_neg_of_pos_of_neg hC dX, mul_neg_of_pos_of_neg hC dH⟩
      have := OneCornerCompletion.eq6_B _ _ _ _ P Q (8 / 73) (by norm_num) hq hcp hmin6 hJ hiso
      rw [ea, eb, eW] at this
      exact sep_scalar hk hab hb1 ha43 hT (Or.inr this)
    · refine nin (Or.inl ⟨?_, ?_, tP1⟩)
      · have : sarea (ptH h) Q P = -sarea P Q (ptH h) := by simp only [sarea]; ring
        linarith
      · have : sarea Q X P = sarea P Q X := by simp only [sarea]; ring
        linarith
  · have dX : 0 < sarea P Q X := by
      have p1 := mul_pos tP2 dH
      have p2 := mul_pos hC tP1
      have h2 : 0 < sarea (ptC c) (ptH h) P * sarea P Q X := by
        rw [idsl, hHXP]; linarith
      exact pos_of_mul_pos_right h2 hCHP.le
    have hiso : OneCornerCompletion.Isolates P Q ptO (ptC c) X (ptH h) :=
      ⟨mul_neg_of_neg_of_pos hO hC, mul_neg_of_neg_of_pos hO dX, mul_neg_of_neg_of_pos hO dH⟩
    have := OneCornerCompletion.eq6 _ _ _ _ P Q (8 / 73) (by norm_num) hq hcp hmin6 hJ hiso
    rw [ea, eb, eW] at this
    exact sep_scalar hk hab hb1 ha43 hT (Or.inl this)

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:claim-separating`, made-up id). In the left-cap setting,
the line through the two lower points cannot separate `O, C`. `docs/proof/nine/C1_TWO_LOWER_SIDE_CAP.md`,
lines 204-262 (quadrilateral `O, C, X, H` with `a = hc ≤ b = cY ≤ 1`, `T = cY + hx`; the middle
sign case contradicts (11); the endpoint cases give (14)–(15) and `F(43/50, 1) < 0`).
Uses: C1_TWO_LOWER_SIDE_CAP:eq1-6, C1_TWO_LOWER_SIDE_CAP:eq7-10, C1_TWO_LOWER_SIDE_CAP:eq11,
ONE_CORNER_COMPLETION:claim-general-identities. -/
-- Note (lines 222-223): only `a + b - T > 0` is checked for the canonical central-cell
-- normalization of ONE_CORNER_COMPLETION §1; `T > a`, `T > b` are also needed (true:
-- `T - b = hx > 0`, `T - a = c(Y - h) + hx > 0`).
theorem claim_separating {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    ¬ OppSide L M ptO (ptC c) := by
  intro hopp
  unfold OppSide at hopp
  have hO0 : sarea L M ptO ≠ 0 := by intro h0; rw [h0, zero_mul] at hopp; exact lt_irrefl _ hopp
  rcases lt_or_gt_of_ne hO0 with hO | hO
  · have hC : 0 < sarea L M (ptC c) := by
      by_contra hn; push Not at hn; nlinarith
    exact sep_core hS (Or.inl ⟨rfl, rfl⟩) hO hC
  · have hC : sarea L M (ptC c) < 0 := by
      by_contra hn; push Not at hn; nlinarith
    refine sep_core hS (P := M) (Q := L) (Or.inr ⟨rfl, rfl⟩) ?_ ?_
    · rw [sarea_swap₁₂]; linarith
    · rw [sarea_swap₁₂]; linarith

/-- The cubic `N(v) = H₀(1 - v)·W(H₀, 1, v) < 0` for `0 < v < 2/3`. -/
theorem N_neg {v : ℝ} (hv0 : 0 < v) (hv : v < 2 / 3) :
    v * (1 - v) * (341 / 400) - v * (v + 8 / 73) * (1 - v) - 8 / 73 * (341 / 400) < 0 := by
  have e : v * (1 - v) * (341 / 400) - v * (v + 8 / 73) * (1 - v) - 8 / 73 * (341 / 400) =
      (v - 9 / 32) ^ 3 - 52511 / 58400 * (v - 9 / 32) ^ 2 - 321 / 1868800 * (v - 9 / 32) -
        6017 / 59801600 := by ring
  rw [e]
  have h1 := mul_le_mul_of_nonneg_left (show v - 9 / 32 ≤ 37 / 96 by linarith)
    (sq_nonneg (v - 9 / 32))
  nlinarith [sq_nonneg (v - 9 / 32 + 963 / 5760512)]

/-- (16)–(18): `W(h, c, v) < 0` in the multiplied form `h(1 - v)W`. -/
theorem W_neg {h c v : ℝ} (hc0 : 4 / 5 ≤ c) (hc1 : c ≤ 1) (hh0 : 4 / 5 ≤ h)
    (hh1 : h < 341 / 400 + (1 - c) / 25) (hv0 : 0 < v) (hv : v < 2 / 3) :
    v * (1 - v) * (h * c - c * v - 8 / 73) - 8 / 73 * h * v - 8 / 73 * h * (1 - v) < 0 := by
  have h0 : 0 < h := by linarith
  have hv1 : 0 < 1 - v := by linarith
  have h1p : 0 < 341 / 400 + (1 - c) / 25 := by linarith
  have eW : v * (1 - v) * (h * c - c * v - 8 / 73) - 8 / 73 * h * v - 8 / 73 * h * (1 - v) =
      h * (1 - v) * (v * c - 8 / 73 / (1 - v) - v * (c * v + 8 / 73) / h) := by
    field_simp; ring
  have s1 : v * (c * v + 8 / 73) / (341 / 400 + (1 - c) / 25) ≤ v * (c * v + 8 / 73) / h :=
    div_le_div_of_nonneg_left (by positivity) h0 hh1.le
  have s2 : v * c - v * (c * v + 8 / 73) / (341 / 400 + (1 - c) / 25) ≤
      v * 1 - v * (1 * v + 8 / 73) / (341 / 400) := by
    rw [← sub_nonneg]
    have e : v * 1 - v * (1 * v + 8 / 73) / (341 / 400) -
        (v * c - v * (c * v + 8 / 73) / (341 / 400 + (1 - c) / 25)) =
        v * (1 - c) * ((341 / 400) ^ 2 + (1 - c) * (341 / 400) / 25 - (v + 8 / 73) / 25 -
          v * (341 / 400)) / ((341 / 400) * (341 / 400 + (1 - c) / 25)) := by
      field_simp; ring
    rw [e]
    apply div_nonneg _ (by positivity)
    apply mul_nonneg (mul_nonneg hv0.le (by linarith))
    nlinarith
  have s3 : v * 1 - v * (1 * v + 8 / 73) / (341 / 400) - 8 / 73 / (1 - v) < 0 := by
    have := N_neg hv0 hv
    have e : v * 1 - v * (1 * v + 8 / 73) / (341 / 400) - 8 / 73 / (1 - v) =
        (v * (1 - v) * (341 / 400) - v * (v + 8 / 73) * (1 - v) - 8 / 73 * (341 / 400)) /
          ((341 / 400) * (1 - v)) := by field_simp
    rw [e]; exact div_neg_of_neg_of_pos this (by positivity)
  have : v * c - 8 / 73 / (1 - v) - v * (c * v + 8 / 73) / h < 0 := by linarith
  rw [eW]; exact mul_neg_of_pos_of_neg (mul_pos h0 hv1) this

/-- The scalar content of §5 for an ordered pair `P = (p, y)`, `Q = (q, t)`, `t ≤ y`. -/
theorem nonsep_scalar {h c p y q t : ℝ} (hk1 : 4 / 5 ≤ h) (hkc : 4 / 5 ≤ c) (hc1 : c ≤ 1)
    (h78 : h < 7 / 8) (hH0 : h < 341 / 400 + (1 - c) / 25)
    (hP1 : 8 / 73 ≤ p * (1 - y)) (hP2 : 8 / 73 ≤ h * c - c * y - h * p) (hP3 : 8 / 73 ≤ h * p)
    (hP4 : 8 / 73 ≤ c * y)
    (hQ1 : 8 / 73 ≤ q * (1 - t)) (hQ2 : 8 / 73 ≤ h * c - c * t - h * q) (hQ3 : 8 / 73 ≤ h * q)
    (hQ4 : 8 / 73 ≤ c * t) (hyt : t ≤ y) (hy1 : y < 1)
    (hcase : 8 / 73 ≤ p * t - y * q ∨ p * t - y * q + c * (y - t) ≤ -(8 / 73)) : False := by
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  have t0 : 0 < t := by
    by_contra hn; push Not at hn; nlinarith
  have hp0 : 0 < p := by
    by_contra hn; push Not at hn; nlinarith
  have hq0 : 0 < q := by
    by_contra hn; push Not at hn; nlinarith
  have vb : ∀ v : ℝ, 8 / 73 ≤ c * v → c * v ≤ h * c - 2 * (8 / 73) → 0 < v ∧ v < 2 / 3 := by
    intro v h1 h2
    have v0 : 0 < v := by
      by_contra hn; push Not at hn; nlinarith
    refine ⟨v0, ?_⟩
    by_contra hn; push Not at hn
    have := mul_le_mul_of_nonneg_left hn c0.le
    nlinarith
  rcases hcase with hD | hD
  · -- `W(h, c, t) ≥ 0`
    have k1 : h * (1 - t) * (8 / 73) ≤ h * (1 - t) * (p * t - y * q) :=
      mul_le_mul_of_nonneg_left hD (mul_nonneg h0.le (by linarith))
    have k2 : (1 - t) * t * (h * p) ≤ (1 - t) * t * (h * c - c * t - 8 / 73) := by
      apply mul_le_mul_of_nonneg_left _ (mul_nonneg (by linarith) t0.le)
      have := mul_le_mul_of_nonneg_left hyt c0.le; linarith
    have k3 : h * y * (8 / 73) ≤ h * y * (q * (1 - t)) :=
      mul_le_mul_of_nonneg_left hQ1 (mul_nonneg h0.le (by linarith))
    have k4 : h * t * (8 / 73) ≤ h * y * (8 / 73) := by
      have := mul_le_mul_of_nonneg_left hyt h0.le; linarith
    obtain ⟨v0, v1⟩ := vb t hQ4 (by linarith)
    have := W_neg hkc hc1 hk1 hH0 v0 v1
    nlinarith
  · -- `W(h, c, y) ≥ 0`
    have k0 : 0 ≤ (1 - y) * c * (h - y) - h * (8 / 73) := by
      have := mul_le_mul_of_nonneg_left hP1 h0.le
      nlinarith
    have k1 : h * (1 - y) * (8 / 73) ≤ h * (1 - y) * (y * q - p * t - c * (y - t)) :=
      mul_le_mul_of_nonneg_left (by linarith) (mul_nonneg h0.le (by linarith))
    have k2 : (1 - y) * y * (h * q) ≤ (1 - y) * y * (h * c - c * t - 8 / 73) :=
      mul_le_mul_of_nonneg_left (by linarith) (mul_nonneg (by linarith) (by nlinarith))
    have k3 : h * t * (8 / 73) ≤ h * t * (p * (1 - y)) :=
      mul_le_mul_of_nonneg_left hP1 (mul_nonneg h0.le t0.le)
    have k4 : ((1 - y) * c * (h - y) - h * (8 / 73)) * t ≤
        ((1 - y) * c * (h - y) - h * (8 / 73)) * y := mul_le_mul_of_nonneg_left hyt k0
    obtain ⟨v0, v1⟩ := vb y hP4 (by linarith)
    have := W_neg hkc hc1 hk1 hH0 v0 v1
    nlinarith

/-- The coordinate costs of a lower point: `hr, hc - cz - hr, cz ≥ σ`. -/
theorem low_costs {h c d f : ℝ} {L M X R : Point} (hS : LeftCapSetting h c d f L M X)
    (hR : InLower h c R) (e1 : 8 / 73 ≤ |sarea (ptC c) (ptH h) R|)
    (e2 : 8 / 73 ≤ |sarea (ptH h) ptO R|) (e3 : 8 / 73 ≤ |sarea ptO (ptC c) R|) :
    8 / 73 ≤ h * c - c * R.2 - h * R.1 ∧ 8 / 73 ≤ h * R.1 ∧ 8 / 73 ≤ c * R.2 ∧ R.2 < h := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hk := hc_k hS
  have kgt := kσ_gt
  have h0 : 0 < h := by
    by_contra hn; push Not at hn
    have := mul_nonpos_of_nonpos_of_nonneg hn (show (0 : ℝ) ≤ c by linarith); linarith
  have c0 : 0 < c := by
    by_contra hn; push Not at hn
    have := mul_nonpos_of_nonneg_of_nonpos h0.le hn; linarith
  obtain ⟨hr0, hz0, hzh, -, q1, q2, q3⟩ := low_pt h0 c0 hR
  obtain ⟨r1, r2, r3⟩ := hR
  rw [q2] at e1 r2; rw [q3] at e2 r3; rw [q1] at e3 r1
  exact ⟨ar_pos e1 r2.le, ar_pos e2 r3.le, ar_pos e3 r1.le, hzh⟩

/-- **§5 for an ordered lower pair** `P, Q` with `Q.2 ≤ P.2`. -/
theorem nonsep_core {h c d f : ℝ} {L M X P Q : Point} (hS : LeftCapSetting h c d f L M X)
    (hPQ : (P = L ∧ Q = M) ∨ (P = M ∧ Q = L)) (hyt : Q.2 ≤ P.2)
    (hss : 0 < sarea P Q ptO * sarea P Q (ptC c)) : False := by
  obtain ⟨-, hk1, hk2, -, -, -, -, h78, -, -, -, -, hH0⟩ := eq1_6 hS
  have kgt := kσ_gt'
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h710 := eq7_10 hS
  have hPm : P = L ∨ P = M := by rcases hPQ with ⟨h1, -⟩ | ⟨h1, -⟩ <;> tauto
  have hQm : Q = L ∨ Q = M := by rcases hPQ with ⟨-, h1⟩ | ⟨-, h1⟩ <;> tauto
  obtain ⟨-, -, hPl, -, hP1⟩ := h710 P hPm
  obtain ⟨-, -, hQl, -, hQ1⟩ := h710 Q hQm
  have data : (8 / 73 ≤ |sarea (ptC c) (ptH h) P| ∧ 8 / 73 ≤ |sarea (ptH h) ptO P| ∧
      8 / 73 ≤ |sarea ptO (ptC c) P|) ∧ (8 / 73 ≤ |sarea (ptC c) (ptH h) Q| ∧
      8 / 73 ≤ |sarea (ptH h) ptO Q| ∧ 8 / 73 ≤ |sarea ptO (ptC c) Q|) ∧
      8 / 73 ≤ |sarea P Q ptO| ∧ 8 / 73 ≤ |sarea P Q (ptC c)| := by
    rcases hPQ with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
    · exact ⟨⟨ar hS.competitive 1 4 5, ar hS.competitive 4 0 5, ar hS.competitive 0 1 5⟩,
        ⟨ar hS.competitive 1 4 6, ar hS.competitive 4 0 6, ar hS.competitive 0 1 6⟩,
        ar hS.competitive 5 6 0, ar hS.competitive 5 6 1⟩
    · exact ⟨⟨ar hS.competitive 1 4 6, ar hS.competitive 4 0 6, ar hS.competitive 0 1 6⟩,
        ⟨ar hS.competitive 1 4 5, ar hS.competitive 4 0 5, ar hS.competitive 0 1 5⟩,
        ar hS.competitive 6 5 0, ar hS.competitive 6 5 1⟩
  obtain ⟨⟨eP1, eP2, eP3⟩, ⟨eQ1, eQ2, eQ3⟩, eO, eC⟩ := data
  obtain ⟨hP2, hP3, hP4, hPh⟩ := low_costs hS hPl eP1 eP2 eP3
  obtain ⟨hQ2, hQ3, hQ4, -⟩ := low_costs hS hQl eQ1 eQ2 eQ3
  have qO : sarea P Q ptO = P.1 * Q.2 - P.2 * Q.1 := by simp only [sarea, ptO]; ring
  have qC : sarea P Q (ptC c) = P.1 * Q.2 - P.2 * Q.1 + c * (P.2 - Q.2) := by
    simp only [sarea, ptC]; ring
  rw [qO, qC] at hss; rw [qO] at eO; rw [qC] at eC
  have hcase : 8 / 73 ≤ P.1 * Q.2 - P.2 * Q.1 ∨
      P.1 * Q.2 - P.2 * Q.1 + c * (P.2 - Q.2) ≤ -(8 / 73) := by
    rcases ar_cases eO with h1 | h1
    · exact Or.inl h1
    · right
      rcases ar_cases eC with h2 | h2
      · have := mul_neg_of_neg_of_pos (show P.1 * Q.2 - P.2 * Q.1 < 0 by linarith)
          (show 0 < P.1 * Q.2 - P.2 * Q.1 + c * (P.2 - Q.2) by linarith)
        linarith
      · exact h2
  have hy1 : P.2 < 1 := by linarith
  clear h710 eP1 eP2 eP3 eQ1 eQ2 eQ3 eO eC hss
  exact nonsep_scalar (by linarith) (by linarith) hc h78 hH0 hP1 hP2 hP3 hP4 hQ1 hQ2 hQ3 hQ4 hyt
    hy1 hcase

/-- **Claim** (`C1_TWO_LOWER_SIDE_CAP:claim-nonseparating`, made-up id). In the left-cap setting,
the line through the two lower points cannot keep `O, C` on the same side: one of the two
heights `v` would satisfy `W(h, c, v) = v[c - (cv + σ)/h - σ/(1 - v)] - σ ≥ 0` (16), but
`W(h, c, v) ≤ W(341/400, 1, v) < 0` for `0 < v < 2/3`. `docs/proof/nine/C1_TWO_LOWER_SIDE_CAP.md`,
lines 264-357.
Uses: C1_TWO_LOWER_SIDE_CAP:eq1-6, C1_TWO_LOWER_SIDE_CAP:eq7-10. -/
theorem claim_nonseparating {h c d f : ℝ} {L M X : Point} (hS : LeftCapSetting h c d f L M X) :
    ¬ SameSide L M ptO (ptC c) := by
  intro hss
  unfold SameSide at hss
  rcases le_total M.2 L.2 with hyt | hyt
  · exact nonsep_core hS (Or.inl ⟨rfl, rfl⟩) hyt hss
  · refine nonsep_core hS (P := M) (Q := L) (Or.inr ⟨rfl, rfl⟩) hyt ?_
    rw [sarea_swap₁₂ L M, sarea_swap₁₂ L M]; linarith

/-- **Theorem** (`C1_TWO_LOWER_SIDE_CAP:Theorem`, unnumbered). If the actual configuration
contains the C1 anchors (weak conditions) and two points `L, M` strictly inside `OHC`, and its
least area is at least `A₀`, then no other actual point `X` lies in the left cap
`conv{H, F, (0,1)}`; by transposition, none lies in the right cap `conv{C, D, (1,0)}`. Only the
eight points `O, C, D, F, H, L, M, X` are used. `docs/proof/nine/C1_TWO_LOWER_SIDE_CAP.md`, lines 3-15 and
357-361.
Uses: C1_TWO_LOWER_SIDE_CAP:claim-separating, C1_TWO_LOWER_SIDE_CAP:claim-nonseparating. -/
theorem theorem_main {h c d f : ℝ} {L M X : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X])
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hcap : sarea (ptF f) (ptH h) X ≤ 0 ∨ sarea (ptC c) (ptD d) X ≤ 0) : False := by
  have sides : ∀ {h c d f : ℝ} {L M X : Point}, LeftCapSetting h c d f L M X → False := by
    intro h c d f L M X hS
    have hne : sarea L M ptO * sarea L M (ptC c) ≠ 0 :=
      mul_ne_zero (ar_ne (by norm_num) (ar hS.competitive 5 6 0))
        (ar_ne (by norm_num) (ar hS.competitive 5 6 1))
    rcases lt_or_gt_of_ne hne with h1 | h1
    · exact claim_separating hS h1
    · exact claim_nonseparating hS h1
  rcases hcap with hcap | hcap
  · exact sides ⟨hA, hL, hM, hX, hmin, hLl, hMl, hcap⟩
  · obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
    refine sides (h := c) (c := h) (d := f) (f := d) (L := tp L) (M := tp M) (X := tp X)
      ⟨⟨hf, hfc, hc, hd, hdh, hh⟩, tp_mem hL, tp_mem hM, tp_mem hX, ?_, inLower_tp hLl,
        inLower_tp hMl, ?_⟩
    · rw [min8_tp]; exact hmin
    · have := sarea_tp (ptD d) (ptC c) X
      rw [tp_D, tp_C] at this
      rw [this, sarea_swap₁₂]; linarith

end Heilbronn.Nine.C1TwoLowerSideCap
