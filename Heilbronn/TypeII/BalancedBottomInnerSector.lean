module

public import Heilbronn.TypeII.TypeII

/-! # The bottom inner sector in the balanced Type-II case
(`hand/BALANCED_BOTTOM_INNER_SECTOR.md`)

Excludes the "below `ES`, below `LR`" cell of the final balanced placement of
`TYPE_II_COMPLETION.md` (the assignment `Q` at `ER`, `S` at `RC`), cited by
`TYPE_II_COMPLETION.md` §9.3 and Theorem 11. It uses eight of the nine points: `P` is not needed.

Setting (lines 9–46), self-contained and weaker than the final placement: `D = (0,1)`, `C = (1,1)`,
`E = (0,λ)`, `B = (b,0)`, `R = (r,u)` with `0 < b < 1`, `0 ≤ λ, u < 1`, `b < r ≤ 1`, and
`L = (l,h)`, `S = (z,t)`, `Q = (x,y)` in the square, with

1. `L` inside `DBE` and above `EC`;
2. `S` inside `BRC`;
3. `Q` central (`b(1-y) < x < b + (1-b)y`), `[ERQ] > 0`, `[EQS] > 0`, `[LQR] > 0` (1).

No `b ≤ 1/2`, no order between `q = 1 - λ` and `v = 1 - u`, and no `r = 1` are needed.

Results:

* `eq3` ((3)): the five-area cancellation `[BQL] + [BSQ] + [EQS] + [LQR] + [ERQ] = T`, free of `Q`;
* `eq8` ((8)): the weighted identity `K - 4/c = (1/(bw) - 4)(1 + 1/c) + (q-v)²(1-c)/(qvc)`;
* `mainTheorem` (**Theorem**): some triangle on `D, C, E, B, L, Q, R, S` has area `< 7/128`;
* `claim_variable_threshold` (remark): the least area is at most `(1/2)(1 - 2/√5)`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.BalancedBottomInnerSector

open Heilbronn.TypeII

/-- The placement hypotheses of `BALANCED_BOTTOM_INNER_SECTOR.md` (lines 9–46) for `R = (r,u)`
and `L, S, Q`.

Implicit in the manuscript: "`S` inside `BRC`" is read with the counterclockwise order `B, R, C`,
i.e. `R` is to the right of `BC` (as in the balanced placement); the proof uses `[BSC] > 0` and
`[RCS] > 0` ((2), (4)). -/
def BottomSetting (l b : ℝ) (L Q R S : Point) : Prop :=
  0 < b ∧ b < 1 ∧ 0 ≤ l ∧ l < 1 ∧ 0 ≤ R.2 ∧ R.2 < 1 ∧ b < R.1 ∧ R.1 ≤ 1 ∧
    L ∈ unitSquare ∧ S ∈ unitSquare ∧ Q ∈ unitSquare ∧
    InTriangle L ptD (ptE l) (ptB b) ∧ 0 < sarea (ptE l) ptC L ∧
    InTriangle S (ptB b) R ptC ∧
    0 < sarea ptD (ptB b) Q ∧ 0 < sarea (ptB b) ptC Q ∧
    0 < sarea (ptE l) R Q ∧ 0 < sarea (ptE l) Q S ∧ 0 < sarea L Q R

/-- **Equation (3)** (`BALANCED_BOTTOM_INNER_SECTOR:eq3`). The exact cancellation: for all points,
with `L = (l,h)`, `S = (z,t)`, `R = (r,u)`,
`[BQL] + [BSQ] + [EQS] + [LQR] + [ERQ] = (r-b)h + bt - λ(r-z) - ul`, which contains neither
coordinate of `Q`. `hand/BALANCED_BOTTOM_INNER_SECTOR.md`, lines 78–89. -/
theorem eq3 (l b : ℝ) (L Q R S : Point) :
    sarea (ptB b) Q L + sarea (ptB b) S Q + sarea (ptE l) Q S + sarea L Q R + sarea (ptE l) R Q =
      (R.1 - b) * L.2 + b * S.2 - l * (R.1 - S.1) - R.2 * L.1 := by
  simp only [sarea, ptB, ptE]; ring

/-- **Equation (8)** (`BALANCED_BOTTOM_INNER_SECTOR:eq8`). With `w = 1 - b`, `c = wq + bv` and
`K = w/b + b/w + 1/(bq) + 1/(wv) - v/q - q/v` (7), for positive `b, w, q, v, c`:
`K - 4/c = (1/(bw) - 4)(1 + 1/c) + (q-v)²(1-c)/(qvc)`. `hand/BALANCED_BOTTOM_INNER_SECTOR.md`,
lines 139–171. -/
theorem eq8 {b q v : ℝ} (hb : 0 < b) (hb1 : b < 1) (hq : 0 < q) (hv : 0 < v) :
    let w := 1 - b
    let c := w * q + b * v
    w / b + b / w + 1 / (b * q) + 1 / (w * v) - v / q - q / v - 4 / c =
      (1 / (b * w) - 4) * (1 + 1 / c) + (q - v) ^ 2 * (1 - c) / (q * v * c) := by
  intro w c
  have hw : 0 < w := by simp only [w]; linarith
  have hc : 0 < c := by simp only [c]; positivity
  have hw' : w ≠ 0 := hw.ne'
  have hc' : c ≠ 0 := hc.ne'
  have hb' : b ≠ 0 := hb.ne'
  have hq' : q ≠ 0 := hq.ne'
  have hv' : v ≠ 0 := hv.ne'
  have hwb : w + b = 1 := by simp only [w]; ring
  have hcdef : c = w * q + b * v := rfl
  field_simp
  rw [hcdef]
  have : w = 1 - b := rfl
  rw [this]
  ring

/-- The scalar part of §§2–3: from (3)'s right side `T`, the anchor bounds (4), `r ≤ 1` and the
lower ear `[EBR] ≥ s` (`c ≤ 1 - s`), `T ≤ 1 - 4s/(1-s)`. -/
theorem bottom_scalar {s b q v l lam u r h t z T : ℝ} (hs : 0 < s) (hb : 0 < b) (hb1 : b < 1)
    (hq : 0 < q) (hv : 0 < v) (hlam : lam = 1 - q) (hu : u = 1 - v) (hlam0 : 0 ≤ lam)
    (hu0 : 0 ≤ u) (hr1 : r ≤ 1) (hhl : lam < h)
    (hT : T = (r - b) * h + b * t - lam * (r - z) - u * l)
    (h1 : s ≤ q * l) (h2 : s ≤ b * (1 - h) - l) (h3 : s ≤ z - b - (1 - b) * t)
    (h4 : s ≤ v * (1 - z)) (hc : s ≤ 1 - ((1 - b) * q + b * v)) :
    T ≤ 1 - 4 * s / (1 - s) := by
  set w := 1 - b with hw
  have hw0 : 0 < w := by rw [hw]; linarith
  set c := w * q + b * v with hcdef
  have hc0 : 0 < c := by positivity
  have hs1 : 0 < 1 - s := by linarith
  -- `T ≤ wh + bt - λ(1-z) - ul` (`r ≤ 1`, `h > λ`)
  have hT' : T ≤ w * h + b * t - lam * (1 - z) - u * l := by
    rw [hT]; nlinarith [mul_le_mul_of_nonneg_right hr1 (by linarith : (0:ℝ) ≤ h - lam)]
  -- (5)
  have hl0 : s / q ≤ l := by rw [div_le_iff₀ hq]; linarith
  have hh0 : h ≤ 1 - s * (q + 1) / (b * q) := by
    rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ (by positivity)]
    nlinarith [mul_le_mul_of_nonneg_left hl0 hq.le, div_mul_cancel₀ s hq.ne']
  have hz0 : z ≤ 1 - s / v := by
    rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ hv]; linarith
  have ht0 : t ≤ 1 - s * (v + 1) / (w * v) := by
    rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ (by positivity)]
    have : z * v ≤ v - s := by nlinarith
    nlinarith
  have e1 := mul_le_mul_of_nonneg_left hh0 hw0.le
  have e2 := mul_le_mul_of_nonneg_left ht0 hb.le
  have e3 := mul_le_mul_of_nonneg_left (by linarith : s / v ≤ 1 - z) hlam0
  have e4 := mul_le_mul_of_nonneg_left hl0 hu0
  -- (7) and (8)
  have hK : w * (1 - s * (q + 1) / (b * q)) + b * (1 - s * (v + 1) / (w * v)) - lam * (s / v) -
      u * (s / q) = 1 - s * (w / b + b / w + 1 / (b * q) + 1 / (w * v) - v / q - q / v) := by
    rw [hlam, hu, hw]
    field_simp
    ring
  have h8 : w / b + b / w + 1 / (b * q) + 1 / (w * v) - v / q - q / v - 4 / c =
      (1 / (b * w) - 4) * (1 + 1 / c) + (q - v) ^ 2 * (1 - c) / (q * v * c) := by
    rw [hcdef]
    field_simp
    rw [hw]
    ring
  have hbw : 4 ≤ 1 / (b * w) := by
    rw [le_div_iff₀ (by positivity)]; nlinarith [sq_nonneg (b - w)]
  have hc1 : c ≤ 1 - s := by rw [hcdef]; linarith
  have h8' : 4 / c ≤ w / b + b / w + 1 / (b * q) + 1 / (w * v) - v / q - q / v := by
    have : 0 ≤ (1 / (b * w) - 4) * (1 + 1 / c) + (q - v) ^ 2 * (1 - c) / (q * v * c) := by
      apply add_nonneg
      · exact mul_nonneg (by linarith) (by positivity)
      · exact div_nonneg (mul_nonneg (sq_nonneg _) (by linarith)) (by positivity)
    linarith
  have hcs : 4 / (1 - s) ≤ 4 / c := div_le_div_of_nonneg_left (by norm_num) hc0 hc1
  have hfin := mul_le_mul_of_nonneg_left (hcs.trans h8') hs.le
  have e5 : 4 * s / (1 - s) = s * (4 / (1 - s)) := by ring
  linarith

/-- The geometric part: under `BottomSetting` with all doubled areas at least `s > 0`, the five
areas (3) give `5s ≤ T` and `bottom_scalar` gives `T ≤ 1 - 4s/(1-s)`. -/
theorem bottom_core {l b s : ℝ} {L Q R S : Point} (h : BottomSetting l b L Q R S) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, Q, R, S]) :
    5 * s ≤ 1 - 4 * s / (1 - s) ∧ s < 1 := by
  obtain ⟨hb, hb1, hl0, hl1, hu0, hu1, hrb, hr1, hL, hS, hQ, ⟨L1, L2, L3⟩, hECL, ⟨S1, S2, S3⟩,
    hDBQ, hBCQ, hERQ, hEQS, hLQR⟩ := h
  have ge : ∀ {t : ℝ}, 0 < t → s ≤ |t| → s ≤ t := fun h1 h2 => by rwa [abs_of_pos h1] at h2
  obtain ⟨-, -, hQy0, -⟩ := hQ
  obtain ⟨-, -, hSy0, hSy1⟩ := hS
  obtain ⟨hLx0, -, -, -⟩ := hL
  have hQy : 0 < Q.2 := by simp only [sarea, ptD, ptB, ptC] at hDBQ hBCQ; linarith
  have hLy : 0 < L.2 := by
    have := sarea_add_sarea_add_sarea ptD (ptE l) (ptB b) L
    simp only [sarea, ptD, ptE, ptB] at L1 L2 L3 this ⊢; nlinarith
  -- (2): `[BQL] = y[BDL] + h[DBQ] > 0`, `[BSQ] = y[BSC] + t[BCQ] > 0`
  have hBQL : 0 < sarea (ptB b) Q L := by
    have e : sarea (ptB b) Q L = Q.2 * sarea (ptB b) ptD L + L.2 * sarea ptD (ptB b) Q := by
      simp only [sarea, ptB, ptD]; ring
    rw [e]; nlinarith [mul_pos hQy L3, mul_pos hLy hDBQ]
  have hBSC : sarea (ptB b) S ptC = sarea ptC (ptB b) S := by unfold sarea; ring
  have hBSQ : 0 < sarea (ptB b) S Q := by
    have e : sarea (ptB b) S Q = Q.2 * sarea (ptB b) S ptC + S.2 * sarea (ptB b) ptC Q := by
      simp only [sarea, ptB, ptC]; ring
    rw [e, hBSC]; nlinarith [mul_pos hQy S3, mul_nonneg hSy0 hBCQ.le]
  have a1 := ge hBQL (le_abs_sarea_of_le_min hmin 3 5 4)
  have a2 := ge hBSQ (le_abs_sarea_of_le_min hmin 3 7 5)
  have a3 := ge hEQS (le_abs_sarea_of_le_min hmin 2 5 7)
  have a4 := ge hLQR (le_abs_sarea_of_le_min hmin 4 5 6)
  have a5 := ge hERQ (le_abs_sarea_of_le_min hmin 2 6 5)
  have b1 := ge L1 (le_abs_sarea_of_le_min hmin 0 2 4)
  have b2 := ge L3 (le_abs_sarea_of_le_min hmin 3 0 4)
  have b3 := ge S3 (le_abs_sarea_of_le_min hmin 1 3 7)
  have b4 := ge S2 (le_abs_sarea_of_le_min hmin 6 1 7)
  have hEBRnn : 0 ≤ sarea (ptE l) (ptB b) R := by
    simp only [sarea, ptE, ptB]; nlinarith [mul_nonneg hb.le hu0, mul_nonneg hl0 (by linarith :
      (0:ℝ) ≤ R.1 - b)]
  have b5 : s ≤ sarea (ptE l) (ptB b) R := by
    have this : s ≤ |sarea (ptE l) (ptB b) R| := le_abs_sarea_of_le_min hmin 2 3 6
    rwa [abs_of_nonneg hEBRnn] at this
  have h3 := eq3 l b L Q R S
  clear hmin ge hBQL hBSQ hBSC L1 L2 L3 S1 S2 S3 hDBQ hBCQ hERQ hEQS hLQR hEBRnn
  simp only [sarea, ptD, ptE, ptB, ptC] at a1 a2 a3 a4 a5 b1 b2 b3 b4 b5 hECL h3
  have hT5 : 5 * s ≤ (R.1 - b) * L.2 + b * S.2 - l * (R.1 - S.1) - R.2 * L.1 := by
    linarith only [a1, a2, a3, a4, a5, h3]
  have hc : s ≤ 1 - ((1 - b) * (1 - l) + b * (1 - R.2)) := by
    nlinarith only [b5, mul_le_mul_of_nonneg_left hr1 hl0]
  have hs1 : s < 1 := by
    have m1 := mul_pos (by linarith : (0:ℝ) < 1 - b) (by linarith : (0:ℝ) < 1 - l)
    have m2 := mul_pos hb (by linarith : (0:ℝ) < 1 - R.2)
    linarith only [hc, m1, m2]
  have hhl : l < L.2 := by
    nlinarith only [hECL, mul_nonneg (by linarith : (0:ℝ) ≤ 1 - l) hLx0]
  have hh1 : s ≤ (1 - l) * L.1 := by linarith only [b1]
  have hh2 : s ≤ b * (1 - L.2) - L.1 := by linarith only [b2]
  have hh3 : s ≤ S.1 - b - (1 - b) * S.2 := by linarith only [b3]
  have hh4 : s ≤ (1 - R.2) * (1 - S.1) := by
    nlinarith only [b4, mul_nonneg (by linarith : (0:ℝ) ≤ 1 - R.1)
      (by linarith : (0:ℝ) ≤ 1 - S.2)]
  exact ⟨le_trans hT5 (bottom_scalar (q := 1 - l) (v := 1 - R.2) (lam := l) (u := R.2)
    (r := R.1) (h := L.2) (t := S.2) (z := S.1) (l := L.1) hs hb hb1 (by linarith)
    (by linarith) (by ring) (by ring) hl0 hu0 hr1 hhl rfl hh1 hh2 hh3 hh4 hc), hs1⟩

/-- **Theorem** (`BALANCED_BOTTOM_INNER_SECTOR:Theorem`). Under the placement hypotheses, some
triangle on the eight points `D, C, E, B, L, Q, R, S` has area strictly less than `7/128` (hence
less than `A₀`): at doubled threshold `s = 7/64`, (3) gives `5s ≤ T`, while (5)–(8) and the
lower ear `[EBR] ≥ s` give `T ≤ 1 - 4s/(1-s) = 29/57 < 35/64`.
`hand/BALANCED_BOTTOM_INNER_SECTOR.md`, lines 48–189.

Uses: BALANCED_BOTTOM_INNER_SECTOR:eq3, BALANCED_BOTTOM_INNER_SECTOR:eq8. -/
theorem mainTheorem {l b : ℝ} {L Q R S : Point} (h : BottomSetting l b L Q R S) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, L, Q, R, S] < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  obtain ⟨h1, -⟩ := bottom_core h (s := 7 / 64) (by norm_num) (by linarith)
  norm_num at h1

/-- **Claim** (`BALANCED_BOTTOM_INNER_SECTOR:claim-variable-threshold`, made up; remark). The
same argument at a variable doubled threshold gives least area at most `(1/2)(1 - 2/√5)`, which
is less than `7/128`. Not used later. `hand/BALANCED_BOTTOM_INNER_SECTOR.md`, lines 191–200. -/
theorem claim_variable_threshold {l b : ℝ} {L Q R S : Point} (h : BottomSetting l b L Q R S) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, L, Q, R, S] ≤ (1 - 2 / Real.sqrt 5) / 2 ∧
      (1 - 2 / Real.sqrt 5) / 2 < (7 / 128 : ℝ) := by
  have h5 : Real.sqrt 5 ^ 2 = 5 := Real.sq_sqrt (by norm_num)
  have h5g : 2 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have h5l : Real.sqrt 5 < 128 / 57 := by rw [Real.sqrt_lt' (by norm_num)]; norm_num
  have hpos5 : 0 < Real.sqrt 5 := by linarith
  refine ⟨?_, ?_⟩
  · set m := minTriangleArea ![ptD, ptC, ptE l, ptB b, L, Q, R, S]
    rcases (minTriangleArea_nonneg _ : 0 ≤ m).eq_or_lt with h0 | h0
    · have hm0 : m = 0 := h0.symm
      rw [hm0]
      have : 2 / Real.sqrt 5 ≤ 1 := by rw [div_le_one hpos5]; linarith
      linarith
    obtain ⟨h1, hs1⟩ := bottom_core h (s := 2 * m) (by linarith) (by linarith)
    rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ (by linarith)] at h1
    -- `5s² - 10s + 1 ≥ 0` with `s < 1` gives `s ≤ 1 - 2/√5`
    have key : 2 * m ≤ 1 - 2 / Real.sqrt 5 := by
      rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ hpos5]
      by_contra hc
      push Not at hc
      nlinarith [mul_pos (by linarith : (0:ℝ) < 1 - 2 * m) (by nlinarith :
        (0:ℝ) < (1 - 2 * m) * Real.sqrt 5 + 2)]
    linarith
  · rw [div_lt_iff₀ (by norm_num), sub_lt_iff_lt_add, ← sub_lt_iff_lt_add', lt_div_iff₀ hpos5]
    nlinarith

end Heilbronn.BalancedBottomInnerSector
