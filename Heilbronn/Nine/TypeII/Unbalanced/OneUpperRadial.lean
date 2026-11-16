module

public import Heilbronn.Nine.TypeII.Unbalanced.RightHull
public import Heilbronn.Nine.TypeII.Unbalanced.CellI
public import Heilbronn.Nine.TypeII.Unbalanced.ChainSector

/-! # Radial restrictions in the final one-upper-point Type-II case

`P_T_above_DR_Q_below` closes the first step of `UnbalancedFinalLowerWedge.false_of_oneUpperSetting`, the one-point
upper cut in cell II: `P, T` are above `DR` and `Q` is below it. The universal bound
`q_lt_9_10` is reused by `UnbalancedFinalLowerWedge`.

**Setting** (`OneUpperSetting`): `Row123 l b P Q R S T`, minimum area at least `A₀`
(every actual doubled area exceeds `s = 7/64` and the global capacity bound applies), the right
hull the quadrilateral `B, R, S, C` with `T` inside, in support cell II, `P` above `CE` and `Q`
below it. Coordinates `R = (r, 1 - v)`, `S = (k, 1 - z)`, `b < r < k ≤ 1`, `0 < z < v ≤ 1`.

**Results.**
* `atMostOneInside_DBR`: `[DBR] < 25/32 < Ks`, so `DBR` has capacity one (any right quadrilateral).
* `q_lt_9_10`: `q < 9/10` for every quadrilateral right hull.
* `atMostOneInside_DEQ_DET`: `[DEQ], [DET] < 513/640 < Ks`, so `DEQ`, `DET` have capacity one.
* `atMostOneInside_DRS`: in cell II, `J = [DRS] < 4/5 < Ks`, so `DRS` has capacity one.
* `exactly_one_below_DR`: exactly one of `P, Q, T` is below `DR`.
* `P_not_below_DR`, `T_not_below_DR`: neither `P` nor `T` is that point.
* `P_T_above_DR_Q_below`: `P, T` above `DR`, `Q` below it; `DRS` has capacity one; one of `P, T` is above
  `DS`.

`atMostOneInside_DBR`, `q_lt_9_10`, `atMostOneInside_DEQ_DET` (every nontriangular right hull) and `atMostOneInside_DRS`
(cell II) hold for both central cuts; their proofs use only `s = 7/64`, so they are stated under
the weaker hypothesis that every doubled area is at least `7/64` (`7/128 ≤ minTriangleArea`),
which is how `UnbalancedFinalLowerWedge` (threshold `8/73`) uses `q < 9/10`. "Above `DS`" is
the `C`-side, `0 < [DSX]`. The one-point sector inequality `UnbalancedChain.sector_one`
(`aa' ≥ s(a + a' + H)` for a point in the common sector at an edge of a convex quadrilateral) is
applied to `C, B, R, S` (edge `BC`) and to `B, R, C, D` (edge `BR`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.UnbalancedOneUpperRadial

open UnbalancedRightHull UnbalancedChain

variable {l b : ℝ} {P Q R S T : Point}

/-- The standing setting: the one-point upper cut (`P` above `CE`, `Q` below it) with a
quadrilateral right hull in support cell II, minimum area at least `A₀`. -/
structure OneUpperSetting (l b : ℝ) (P Q R S T : Point) : Prop where
  row : Row123 l b P Q R S T
  min : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)
  quad : QuadHull (ptB b) R S ptC T
  cell : CellII (ptB b) R S ptC T
  P_above : 0 < sarea (ptE l) ptC P
  Q_below : sarea (ptE l) ptC Q < 0

/-! ### Scalar lemmas -/

/-- `P₀(b) = 82944b³ - 44352b² + 6217b - 9 > 0` on `[7/64, 1/2]`; `P₀(b)` is `102400` times
`genericEar s b (1 - 9w/10)` (`s = 7/64`, `w = 1 - b`). -/
theorem P0q {b : ℝ} (h1 : 7 / 64 ≤ b) (_h2 : b ≤ 1 / 2) : 0 < 82944 * b ^ 3 - 44352 * b ^ 2 + 6217 * b - 9 := by
  rcases le_total b (1 / 4) with h | h
  · have hu : 0 ≤ 1 / 4 - b := by linarith
    nlinarith [mul_nonneg (mul_nonneg hu hu) (by linarith : (0:ℝ) ≤ 9 / 64 - (1 / 4 - b)), mul_nonneg hu hu]
  · have ht : 0 ≤ b - 1 / 4 := by linarith
    nlinarith [mul_nonneg (mul_nonneg ht ht) ht, sq_nonneg (b - 1 / 4 - 407 / 35712)]

theorem bz_bound {b z : ℝ} (hb : 7 / 64 ≤ b) (hb2 : b ≤ 1 / 2) (hz0 : 0 < z)
    (hz3 : 3 * (7 / 64) ≤ (1 - b) * z) : 3 * (7 / 64) ^ 2 / (1 - 7 / 64) ≤ b * z := by
  rw [div_le_iff₀ (by norm_num)]
  have h1 : 3 * (7 / 64) * b ≤ (1 - b) * z * b := mul_le_mul_of_nonneg_right hz3 (by linarith)
  have h2 : 7 / 64 * (1 - b) ≤ b * (1 - 7 / 64) := by linarith
  have h3 := mul_le_mul_of_nonneg_left h2 (by positivity : (0 : ℝ) ≤ 3 * (7 / 64) * z)
  have h4 : 3 * (7 / 64) ^ 2 * (1 - b) ≤ (1 - 7 / 64) * (1 - b) * z * b := by nlinarith
  have hw : 0 < 1 - b := by linarith
  have : (1 - b) * (3 * (7 / 64) ^ 2) ≤ (1 - b) * (b * z * (1 - 7 / 64)) := by nlinarith
  exact le_of_mul_le_mul_left this hw

theorem ww_bound {b : ℝ} (hb : 7 / 64 ≤ b) (hb2 : b ≤ 1 / 2) :
    (1 - 7 / 64) * ((1 - b) + 7 / 64) ^ 2 ≤ 1 - b := by
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 1 / 2 - b) (by linarith : (0 : ℝ) ≤ b - 7 / 64)]

theorem DRS_final {b z : ℝ} (hb : 7 / 64 ≤ b) (hb2 : b ≤ 1 / 2) (hz0 : 0 < z)
    (hz3 : 3 * (7 / 64) ≤ (1 - b) * z) :
    1 - b * z - 2 * (7 / 64) * (1 - b) * z ^ 2 / (((1 - b) + 7 / 64) * z - 2 * (7 / 64)) < 4 / 5 := by
  have hD2 : 0 < ((1 - b) + 7 / 64) * z - 2 * (7 / 64) := by nlinarith
  have hbz := bz_bound hb hb2 hz0 hz3
  have hsq : 8 * (7 / 64) * (((1 - b) + 7 / 64) * z - 2 * (7 / 64)) ≤
      ((1 - b) + 7 / 64) ^ 2 * z ^ 2 := by
    nlinarith [sq_nonneg (((1 - b) + 7 / 64) * z - 4 * (7 / 64))]
  have hww := ww_bound hb hb2
  have h2 : 16 * (7 / 64) ^ 2 * (1 - 7 / 64) ≤
      2 * (7 / 64) * (1 - b) * z ^ 2 / (((1 - b) + 7 / 64) * z - 2 * (7 / 64)) := by
    rw [le_div_iff₀ hD2]
    have a1 := mul_le_mul_of_nonneg_left hww (by positivity : (0 : ℝ) ≤ 2 * (7 / 64) * z ^ 2)
    have a2 := mul_le_mul_of_nonneg_left hsq (by norm_num : (0 : ℝ) ≤ 2 * (7 / 64) * (1 - 7 / 64))
    nlinarith
  have : (1 : ℝ) / 5 < 3 * (7 / 64) ^ 2 / (1 - 7 / 64) + 16 * (7 / 64) ^ 2 * (1 - 7 / 64) := by
    norm_num
  linarith

theorem DRS_scalar {b v z a a' : ℝ} (hb : 7 / 64 ≤ b) (hb2 : b ≤ 1 / 2) (hv : v ≤ 1) (hzv : z < v)
    (hz0 : 0 < z) (ha : 3 * (7 / 64) ≤ a) (ha' : 3 * (7 / 64) ≤ a') (ha'w : a' ≤ (1 - b) * z)
    (h6 : 7 / 64 * (a + a' + (a * (1 - z) + a' * v)) ≤ a * a') :
    v * (1 + a') - z * (1 + a) ≤
        1 - b * z - 2 * (7 / 64) * (1 - b) * z ^ 2 / (((1 - b) + 7 / 64) * z - 2 * (7 / 64)) ∧
      v * (1 + a') - z * (1 + a) < 4 / 5 := by
  set s : ℝ := 7 / 64 with hs
  set w := 1 - b with hw
  have hs0 : 0 < s := by rw [hs]; norm_num
  have hw0 : 0 < w := by rw [hw]; linarith
  have h6' : s * a' * (1 + v) ≤ a * (a' - s * (2 - z)) := by nlinarith
  have hv0 : 0 < v := by linarith
  have hD1 : 0 < a' - s * (2 - z) := by
    have : 0 < a * (a' - s * (2 - z)) := lt_of_lt_of_le (by positivity) h6'
    exact pos_of_mul_pos_right this (by linarith)
  set D₂ := (w + s) * z - 2 * s with hD₂
  have hD2 : 0 < D₂ := by rw [hD₂]; nlinarith
  -- `a ≥ sa'(1+v)/D₁`
  have ha1 : s * a' * (1 + v) / (a' - s * (2 - z)) ≤ a := by rw [div_le_iff₀ hD1]; linarith
  -- `a'/D₁ ≥ wz/D₂`
  have hq : w * z / D₂ ≤ a' / (a' - s * (2 - z)) := by
    rw [div_le_div_iff₀ hD2 hD1, hD₂]; nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 2 - z) (sub_nonneg.2 ha'w)]
  have hJ1 : v * (1 + a') - z * (1 + a) ≤ v * (1 + w * z) - z - s * (w * z) * z * (1 + v) / D₂ := by
    have e1 : s * a' * (1 + v) / (a' - s * (2 - z)) = s * (1 + v) * (a' / (a' - s * (2 - z))) := by ring
    have e2 : s * (w * z) * z * (1 + v) / D₂ = z * (s * (1 + v) * (w * z / D₂)) := by ring
    have := mul_le_mul_of_nonneg_left hq (by positivity : (0 : ℝ) ≤ s * (1 + v))
    rw [e2]
    nlinarith [mul_le_mul_of_nonneg_left ha1 hz0.le, mul_le_mul_of_nonneg_left this hz0.le,
      mul_le_mul_of_nonneg_left ha'w hv0.le]
  -- the bound increases with `v`: put `v = 1`
  have hcoef : s * (w * z) * z / D₂ ≤ 1 + w * z := by
    rw [div_le_iff₀ hD2, hD₂]; nlinarith
  have hJ2 : v * (1 + w * z) - z - s * (w * z) * z * (1 + v) / D₂ ≤
      1 - b * z - 2 * s * w * z ^ 2 / D₂ := by
    have e : s * (w * z) * z * (1 + v) / D₂ = (1 + v) * (s * (w * z) * z / D₂) := by ring
    have e' : 2 * s * w * z ^ 2 / D₂ = 2 * (s * (w * z) * z / D₂) := by ring
    rw [e, e', hw]
    nlinarith [mul_le_mul_of_nonneg_left hcoef (by linarith : (0 : ℝ) ≤ 1 - v)]
  refine ⟨hJ1.trans hJ2, ?_⟩
  have hz3 : 3 * (7 / 64) ≤ (1 - b) * z := le_trans ha' ha'w
  have := DRS_final hb hb2 hz0 hz3
  have e : 2 * s * w * z ^ 2 / D₂ =
      2 * (7 / 64) * (1 - b) * z ^ 2 / (((1 - b) + 7 / 64) * z - 2 * (7 / 64)) := rfl
  linarith [hJ1.trans hJ2]

/-! ### Two bounds for every nontriangular right hull -/

/-- For every quadrilateral
right hull and either cut, with `v = 1 - R_y`, `s = 7/64`:
`[DBR] = r - bv < 1 - s/v - bv ≤ 1 - 2√(bs) < 1 - 2s = 25/32 < Ks`; so `DBR` contains at most
one further actual point. -/
theorem atMostOneInside_DBR (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    sarea ptD (ptB b) R < 1 - 2 * Real.sqrt (b * s) ∧ 1 - 2 * Real.sqrt (b * s) < 25 / 32 ∧
      25 / 32 < Kc * s ∧ AtMostOneInside (typeIIConfig l b P Q R S T) ptD (ptB b) R := by
  intro s
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h hq
  have hDEB := TypeII.s_le_DEB (row_data h) hm
  have hb := h.b_pos
  have hl := h.l_pos
  have hsb : 7 / 64 < b := by nlinarith [mul_pos hb hl]
  have hRSC : 7 / 64 ≤ sarea R S ptC := ge_of_pos (abs_ge hm 6 7 1) hq.1.2.1
  have eRSC : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - S.1) * (1 - R.2) := by
    simp only [sarea, ptC]; ring
  rw [eRSC] at hRSC
  have hv0 : 0 < 1 - R.2 := by linarith
  have hL : 0 < 1 - R.1 := by linarith
  have hvL : 7 / 64 < (1 - R.1) * (1 - R.2) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hk1) hv0.le, mul_lt_mul_of_pos_left
      (by linarith : 1 - S.2 < 1 - R.2) hL]
  have eDBR : sarea ptD (ptB b) R = R.1 - b * (1 - R.2) := by simp only [sarea, ptD, ptB]; ring
  have hr : R.1 < 1 - 7 / 64 / (1 - R.2) := by
    have : 7 / 64 / (1 - R.2) < 1 - R.1 := by rw [div_lt_iff₀ hv0]; linarith
    linarith
  have am := amgm (p := 7 / 64 / (1 - R.2)) (q := b * (1 - R.2))
    (by positivity) (by positivity)
  have e : 7 / 64 / (1 - R.2) * (b * (1 - R.2)) = b * (7 / 64) := by field_simp
  rw [e] at am
  have hsq : 7 / 64 < Real.sqrt (b * (7 / 64)) := by
    rw [Real.lt_sqrt (by norm_num)]; nlinarith
  have hK := Kc_s7_gt
  have h1 : sarea ptD (ptB b) R < 1 - 2 * Real.sqrt (b * (7 / 64)) := by rw [eDBR]; linarith
  refine ⟨h1, by linarith, by linarith, ?_⟩
  exact cap_one (by norm_num) hm 0 3 6 (show sarea ptD (ptB b) R < Kc * (7 / 64) by linarith)

/-- For every
quadrilateral right hull, `q < 9/10`: otherwise the generic ear bound
(`UnbalancedRightHull.genericEar_nonpos`) fails at `C = 1 - 9w/10` (`P0q`). -/
theorem q_lt_9_10 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    1 - l < 9 / 10 := by
  by_contra hq9; push Not at hq9
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hDEB := TypeII.s_le_DEB (row_data h) hm
  have hb := h.b_pos
  have hl := h.l_pos
  have hsb : 7 / 64 < b := by nlinarith [mul_pos hb hl]
  obtain ⟨-, hge⟩ := UnbalancedRightHull.genericEar_nonpos h hmin hq
  have key := hge (1 - 9 / 10 * (1 - b)) (by nlinarith [h.b_le])
  unfold genericEar at key
  have := P0q hsb.le h.b_le
  nlinarith

/-- For `Z = Q, T`:
`[DEZ] = qx < (9/10)(1 - s) = 513/640 < 13/16 < Ks` (`s = 7/64`), so neither `DEQ` nor `DET`
contains two further actual points. -/
theorem atMostOneInside_DEQ_DET (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    sarea ptD (ptE l) Q < 513 / 640 ∧ sarea ptD (ptE l) T < 513 / 640 ∧
      (513 / 640 : ℝ) < 13 / 16 ∧ 13 / 16 < Kc * (7 / 64) ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) ptD (ptE l) Q ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) ptD (ptE l) T := by
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hq9 := q_lt_9_10 h hmin hq
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hl1 := h.l_lt
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h hq
  have eSC : ∀ Z : Point, sarea S ptC Z = (1 - S.2) * (1 - Z.1) - (1 - S.1) * (1 - Z.2) := by
    intro Z; simp only [sarea, ptC]; ring
  have hx : ∀ Z : Point, Z ∈ unitSquare → 7 / 64 ≤ sarea S ptC Z → Z.1 ≤ 1 - 7 / 64 := by
    intro Z hZ h1
    rw [eSC] at h1
    obtain ⟨-, -, -, hZ2⟩ := hZ
    nlinarith [mul_nonneg (sub_nonneg.2 hk1) (sub_nonneg.2 hZ2),
      mul_le_mul_of_nonneg_right (by linarith : 1 - S.2 ≤ 1) (by nlinarith : (0 : ℝ) ≤ 1 - Z.1)]
  have hSCQ : 0 < sarea S ptC Q := by
    refine pos_of_inside h.Q_central ?_ ?_ (by unfold sarea; ring_nf; rfl) (Or.inl ?_)
    · simp only [sarea, ptD, ptC]; nlinarith
    · rw [sarea_cycle]; exact h.S_right.le
    · simp only [sarea, ptD, ptC]; nlinarith
  have hQm := central_mem hb hb1 h.Q_central
  have hQx := (central_facts hb hb1 h.Q_central).1
  have hTx := (right_facts hb hb1 h.T_mem h.T_right).1
  have hxQ := hx Q hQm (ge_of_pos (abs_ge hm 7 1 5) hSCQ)
  have hxT := hx T h.T_mem (ge_of_pos (abs_ge hm 7 1 8) hq.2.2.2.1)
  have eDE : ∀ Z : Point, sarea ptD (ptE l) Z = (1 - l) * Z.1 := by
    intro Z; simp only [sarea, ptD, ptE]; ring
  have hQ5 : sarea ptD (ptE l) Q < 513 / 640 := by
    rw [eDE]; nlinarith [mul_le_mul_of_nonneg_left hxQ (by linarith : (0 : ℝ) ≤ 1 - l)]
  have hT5 : sarea ptD (ptE l) T < 513 / 640 := by
    rw [eDE]; nlinarith [mul_le_mul_of_nonneg_left hxT (by linarith : (0 : ℝ) ≤ 1 - l)]
  have hK := Kc_s7_gt
  refine ⟨hQ5, hT5, by norm_num, hK, ?_, ?_⟩
  · exact cap_one (by norm_num) hm 0 2 5 (show sarea ptD (ptE l) Q < Kc * (7 / 64) by linarith)
  · exact cap_one (by norm_num) hm 0 2 8 (show sarea ptD (ptE l) T < Kc * (7 / 64) by linarith)

/-- In cell II (either
cut), with `S = (k, 1 - z)`, `w = 1 - b`, `s = 7/64`:
`J = [DRS] ≤ 1 - bz - 2swz²/((w + s)z - 2s) < 4/5 < Ks`; so `DRS` contains at most one further
actual point. -/
theorem atMostOneInside_DRS (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellII (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    let w := 1 - b
    let z := 1 - S.2
    sarea ptD R S ≤ 1 - b * z - 2 * s * w * z ^ 2 / ((w + s) * z - 2 * s) ∧
      sarea ptD R S < 4 / 5 ∧ 4 / 5 < Kc * s ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) ptD R S := by
  intro s w z
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hDEB := TypeII.s_le_DEB (row_data h) hm
  have hb := h.b_pos
  have hl := h.l_pos
  have hsb : 7 / 64 < b := by nlinarith [mul_pos hb hl]
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h hq
  -- `a = [BRC]`, `a' = [BSC]`, both containing `T`
  have ha : 3 * (7 / 64) ≤ sarea (ptB b) R ptC := by
    obtain ⟨t1, t2, t3⟩ := hc.1
    exact one_inside (ge_of_pos (abs_ge hm 3 6 8) t1) (ge_of_pos (abs_ge hm 6 1 8) t2)
      (ge_of_pos (abs_ge hm 1 3 8) t3)
  have ha' : 3 * (7 / 64) ≤ sarea (ptB b) S ptC := by
    obtain ⟨t1, t2, t3⟩ := hc.2
    exact one_inside (ge_of_pos (abs_ge hm 3 7 8) t1) (ge_of_pos (abs_ge hm 7 1 8) t2)
      (ge_of_pos (abs_ge hm 1 3 8) t3)
  have ea : sarea (ptB b) R ptC = R.1 - 1 + (1 - b) * (1 - R.2) := by
    simp only [sarea, ptB, ptC]; ring
  have ea' : sarea (ptB b) S ptC = S.1 - 1 + (1 - b) * (1 - S.2) := by
    simp only [sarea, ptB, ptC]; ring
  -- the one-point sector inequality in `C, B, R, S`
  have e1 : sarea ptC (ptB b) R = sarea (ptB b) R ptC := by unfold sarea; ring
  have e2 : sarea S ptC (ptB b) = sarea (ptB b) S ptC := by unfold sarea; ring
  have hq4 : ConvexQuad ptC (ptB b) R S :=
    ⟨by rw [e1]; exact h.R_right, hq.1.1, hq.1.2.1, by rw [e2]; exact h.S_right⟩
  have hsub : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptC, ptB b, R, S, T] :=
    hm.trans (TypeII.min_le_min_reindex (by norm_num) _ _ ![1, 3, 6, 7, 8] (by decide)
      (by funext i; fin_cases i <;> rfl))
  have hT1 : InTriangle T ptC (ptB b) R := by
    obtain ⟨t1, t2, t3⟩ := hc.1; exact ⟨t3, t1, t2⟩
  have hT2 : InTriangle T ptC (ptB b) S := by
    obtain ⟨t1, t2, t3⟩ := hc.2; exact ⟨t3, t1, t2⟩
  have h6 := sector_one (by norm_num) hq4 hT1 hT2 hsub
  have eCBR : sarea ptC (ptB b) R = R.1 - 1 + (1 - b) * (1 - R.2) := by
    simp only [sarea, ptB, ptC]; ring
  have eCBS : sarea ptC (ptB b) S = S.1 - 1 + (1 - b) * (1 - S.2) := by
    simp only [sarea, ptB, ptC]; ring
  have eH : sarea ptC (ptB b) R + sarea ptC R S = (R.1 - 1 + (1 - b) * (1 - R.2)) * (1 - (1 - S.2)) +
      (S.1 - 1 + (1 - b) * (1 - S.2)) * (1 - R.2) := by simp only [sarea, ptB, ptC]; ring
  rw [eH, eCBR, eCBS] at h6
  rw [ea] at ha
  rw [ea'] at ha'
  have eJ : sarea ptD R S = (1 - R.2) * (1 + (S.1 - 1 + (1 - b) * (1 - S.2))) -
      (1 - S.2) * (1 + (R.1 - 1 + (1 - b) * (1 - R.2))) := by simp only [sarea, ptD]; ring
  obtain ⟨d1, d2⟩ := DRS_scalar (v := 1 - R.2) (z := 1 - S.2) hsb.le h.b_le (by linarith)
    (by linarith) (by linarith) ha ha' (by nlinarith) (by linarith)
  have hK := Kc_s7_gt
  refine ⟨by rw [eJ]; exact d1, by rw [eJ]; exact d2, by linarith, ?_⟩
  exact cap_one (by norm_num) hm 0 6 7 (show sarea ptD R S < Kc * (7 / 64) by rw [eJ]; linarith)

/-! ### The radial assignment -/

/-- The common-sector pair inequality for every line sign that leaves the two far vertices
`C, D` on one side (`UnbalancedChain.sector_same` and `UnbalancedChain.sector_iso`, weakened to a
common form): with `a = [ABD]`, `b = [ABC]`, `W = [ABC] + [ACD]`, `ab - σ(a + b) > 0` and
`4σabW ≤ (ab - σ(a+b))²`. -/
theorem sector_eleven {A B C D X Y : Point} {σ : ℝ} (hσ : 0 < σ) (hq : ConvexQuad A B C D)
    (hX₁ : InTriangle X A B C) (hX₂ : InTriangle X A B D) (hY₁ : InTriangle Y A B C)
    (hY₂ : InTriangle Y A B D) (hmin : σ / 2 ≤ minTriangleArea ![A, B, C, D, X, Y])
    (nA : sarea X Y A ≠ 0) (nB : sarea X Y B ≠ 0) (hCD : 0 < sarea X Y C * sarea X Y D) :
    0 < sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C) ∧
      4 * σ * sarea A B D * sarea A B C * (sarea A B C + sarea A C D) ≤
        (sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C)) ^ 2 := by
  have hACD : 0 < sarea A C D := by rw [← sarea_cycle]; exact hq.2.2.1
  have hBCD : 0 < sarea B C D := hq.2.1
  have eW : sarea A B C + sarea A C D = sarea A B D + sarea B C D := by unfold sarea; ring
  have hW1 : sarea A B C ≤ sarea A B C + sarea A C D := by linarith
  have hW2 : sarea A B D ≤ sarea A B C + sarea A C D := by linarith
  have ha : 0 < sarea A B D := by
    have := hX₂; obtain ⟨h1, h2, h3⟩ := this
    linarith [sarea_add_sarea_add_sarea A B D X]
  have hb : 0 < sarea A B C := by
    have := hX₁; obtain ⟨h1, h2, h3⟩ := this
    linarith [sarea_add_sarea_add_sarea A B C X]
  -- a bracket `0 < Z ≤ X` with `4σabW ≤ Z²` gives the conclusion
  have red : ∀ Z, 0 < Z → Z ≤ sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C) →
      4 * σ * sarea A B D * sarea A B C * (sarea A B C + sarea A C D) ≤ Z ^ 2 →
      0 < sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C) ∧
        4 * σ * sarea A B D * sarea A B C * (sarea A B C + sarea A C D) ≤
          (sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C)) ^ 2 := by
    intro Z hZ hZX hZ2
    exact ⟨lt_of_lt_of_le hZ hZX, hZ2.trans (pow_le_pow_left₀ hZ.le hZX 2)⟩
  have hmin' : σ / 2 ≤ minTriangleArea ![A, B, C, D, Y, X] :=
    hmin.trans (TypeII.min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 3, 5, 4] (by decide)
      (by funext i; fin_cases i <;> rfl))
  have sw : ∀ Z, sarea Y X Z = -sarea X Y Z := fun Z => by unfold sarea; ring
  have nC : sarea X Y C ≠ 0 := fun h0 => by rw [h0, zero_mul] at hCD; exact lt_irrefl _ hCD
  have nD : sarea X Y D ≠ 0 := fun h0 => by rw [h0, mul_zero] at hCD; exact lt_irrefl _ hCD
  -- `UnbalancedChain.sector_iso` for an oriented pair, reduced to the common conclusion
  have iso : ∀ {X' Y' : Point}, InTriangle X' A B C → InTriangle X' A B D → InTriangle Y' A B C →
      InTriangle Y' A B D → σ / 2 ≤ minTriangleArea ![A, B, C, D, X', Y'] →
      sarea X' Y' A < 0 → 0 < sarea X' Y' B → 0 < sarea X' Y' C * sarea X' Y' D →
      0 < sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C) ∧
        4 * σ * sarea A B D * sarea A B C * (sarea A B C + sarea A C D) ≤
          (sarea A B D * sarea A B C - σ * (sarea A B D + sarea A B C)) ^ 2 := by
    intro X' Y' h1 h2 h3 h4 hm hA hB hCD'
    obtain ⟨k1, k2⟩ := sector_iso hσ hq h1 h2 h3 h4 hm hA hB
    rcases lt_or_gt_of_ne (show sarea X' Y' C ≠ 0 from fun h0 => by
      rw [h0, zero_mul] at hCD'; exact lt_irrefl _ hCD') with hC | hC
    · have hD : sarea X' Y' D < 0 := by
        by_contra hD; push Not at hD; nlinarith [mul_nonpos_iff.2 (Or.inr ⟨hC.le, hD⟩)]
      obtain ⟨z1, z2⟩ := k2 hC hD
      exact red _ z1 (by nlinarith) z2
    · have hD : 0 < sarea X' Y' D := by
        by_contra hD; push Not at hD; nlinarith [mul_nonpos_iff.2 (Or.inl ⟨hC.le, hD⟩)]
      obtain ⟨z1, z2⟩ := k1 hC hD
      exact red _ z1 (by nlinarith) z2
  rcases lt_or_gt_of_ne (mul_ne_zero nA nB) with hAB | hAB
  · rcases lt_or_gt_of_ne nA with hA | hA
    · have hB : 0 < sarea X Y B := by
        by_contra hB; push Not at hB; nlinarith [mul_nonneg_of_nonpos_of_nonpos hA.le hB]
      exact iso hX₁ hX₂ hY₁ hY₂ hmin hA hB hCD
    · have hB : sarea X Y B < 0 := by
        by_contra hB; push Not at hB; nlinarith [mul_nonneg hA.le hB]
      refine iso hY₁ hY₂ hX₁ hX₂ hmin' (by rw [sw]; linarith) (by rw [sw]; linarith) ?_
      rw [sw, sw]; nlinarith
  · exact sector_same hσ hq hX₁ hX₂ hY₁ hY₂ hmin hAB

theorem q_small {α v q : ℝ} (hα0 : 0 < α) (hαv : α ≤ v) (hv1 : v ≤ 1) (_hv4 : 4 * (7 / 64) ≤ v)
    (hq0 : 0 ≤ q) (hX : 0 < α * v - 7 / 64 * (α + v))
    (h11 : 4 * (7 / 64) * α * v * (α + q) ≤ (α * v - 7 / 64 * (α + v)) ^ 2) : q ≤ 177 / 448 := by
  have h1 : α * v - 7 / 64 * (α + v) ≤ α * (v - 2 * (7 / 64)) := by nlinarith
  have h2 : (α * v - 7 / 64 * (α + v)) ^ 2 ≤ (α * (v - 2 * (7 / 64))) ^ 2 :=
    pow_le_pow_left₀ hX.le h1 2
  have h3 : 4 * (7 / 64) * α ^ 2 * (v + q) ≤ 4 * (7 / 64) * α * v * (α + q) := by
    nlinarith [mul_nonneg (mul_nonneg hα0.le hq0) (sub_nonneg.2 hαv)]
  have h4 : α ^ 2 * (4 * (7 / 64) * (v + q)) ≤ α ^ 2 * (v - 2 * (7 / 64)) ^ 2 := by nlinarith
  have h5 := le_of_mul_le_mul_left h4 (by positivity)
  nlinarith [mul_nonneg (sub_nonneg.2 hv1) (by linarith : (0 : ℝ) ≤ 1 + v - 8 * (7 / 64))]

theorem P_scalar {b q r v x y : ℝ} (hbq : 7 / 64 ≤ b * q) (hq : q ≤ 177 / 448) (hq0 : 0 < q)
    (hr : r ≤ 1) (hv : 13 / 16 < v) (hx0 : 0 ≤ x) (hx1 : x ≤ 1) (hy0 : 0 ≤ y)
    (h1 : 7 / 64 ≤ x - b * y) (h2 : 7 / 64 ≤ r * y - v * x) (h3 : 7 / 64 ≤ q * (1 - x) - y) :
    False := by
  have hb : 5 / 2 * (7 / 64) < b := by
    by_contra hb; push Not at hb
    nlinarith [mul_le_mul_of_nonneg_right hb hq0.le]
  have hy1 : 7 / 64 + v * x ≤ y := by nlinarith [mul_le_mul_of_nonneg_right hr hy0]
  have hx2 : 7 / 64 + 5 / 2 * (7 / 64) * y ≤ x := by nlinarith [mul_le_mul_of_nonneg_right hb.le hy0]
  have hy2 : 1 / 4 < y := by nlinarith [mul_le_mul_of_nonneg_right hv.le hx0]
  have hy3 : y ≤ 2 / 5 * (1 - x) - 7 / 64 := by
    nlinarith [mul_le_mul_of_nonneg_right (by linarith : q ≤ 2 / 5) (by linarith : (0 : ℝ) ≤ 1 - x)]
  nlinarith

theorem g_small {v g : ℝ} (hv0 : 0 < v) (hv1 : v ≤ 1) (hg : 0 ≤ g)
    (hX : 0 < v * 1 - 7 / 64 * (v + 1))
    (h16 : 4 * (7 / 64) * v * 1 * (1 + g) ≤ (v * 1 - 7 / 64 * (v + 1)) ^ 2) : g ≤ 177 / 448 := by
  have h1 : v * 1 - 7 / 64 * (v + 1) ≤ v * (1 - 2 * (7 / 64)) := by nlinarith
  have h2 : (v * 1 - 7 / 64 * (v + 1)) ^ 2 ≤ (v * (1 - 2 * (7 / 64))) ^ 2 :=
    pow_le_pow_left₀ hX.le h1 2
  have h3 : 4 * (7 / 64) * v ^ 2 * (1 + g) ≤ 4 * (7 / 64) * v * 1 * (1 + g) := by
    nlinarith [mul_nonneg (mul_nonneg hv0.le (sub_nonneg.2 hv1)) (by linarith : (0 : ℝ) ≤ 1 + g)]
  have h4 : v ^ 2 * (4 * (7 / 64) * (1 + g)) ≤ v ^ 2 * (1 - 2 * (7 / 64)) ^ 2 := by nlinarith
  have h5 := le_of_mul_le_mul_left h4 (by positivity)
  nlinarith

theorem T_scalar {v g : ℝ} (hv : 13 / 16 ≤ v) (_hv1 : v ≤ 1) (hg3 : 3 * (7 / 64) ≤ g)
    (hg : g ≤ 177 / 448) (h17 : 7 / 64 * (g + 1 - v + g + (g + 1)) ≤ (g + 1 - v) * g) : False := by
  nlinarith [mul_nonneg (sub_nonneg.2 hv) (by linarith : (0 : ℝ) ≤ g - 7 / 64),
    mul_nonneg (by linarith : (0 : ℝ) ≤ g - 3 * (7 / 64)) (by linarith : (0 : ℝ) ≤ 177 / 448 - g)]

/-- Containments by the sign of `[DR·]`: a central point is in `DRC` (above `DR`) or in `DBR`
(below), a point of `BRC` likewise, and points of `DRC` are above `ER`. -/
theorem central_DRC (h : Row123 l b P Q R S T) (hq : QuadHull (ptB b) R S ptC T) {X : Point}
    (hX : InTriangle X ptD (ptB b) ptC) (hD : 0 < sarea ptD R X) : InTriangle X ptD R ptC := by
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h hq
  have hXy := (central_facts h.b_pos (by linarith [h.b_le]) hX).2.2.1
  refine ⟨hD, ?_, by simp only [sarea, ptC, ptD]; nlinarith⟩
  refine pos_of_inside hX ?_ ?_ (by unfold sarea; ring_nf; rfl) (Or.inl ?_)
  · simp only [sarea, ptD, ptC]; nlinarith
  · rw [sarea_cycle]; exact h.R_right.le
  · simp only [sarea, ptD, ptC]; nlinarith

theorem central_DBR (h : Row123 l b P Q R S T) (hq : QuadHull (ptB b) R S ptC T) {X : Point}
    (hX : InTriangle X ptD (ptB b) ptC) (hD : sarea ptD R X < 0) : InTriangle X ptD (ptB b) R := by
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h hq
  have hDBR : 0 < sarea ptD (ptB b) R := by simp only [sarea, ptD, ptB]; nlinarith [h.b_pos]
  refine ⟨hX.1, ?_, by rw [sarea_swap₁₂]; linarith⟩
  refine pos_of_inside hX ?_ (by unfold sarea; ring_nf; rfl) h.R_right.le (Or.inl ?_)
  · rw [sarea_cycle]; exact hDBR.le
  · rw [sarea_cycle]; exact hDBR

theorem right_DRC (h : Row123 l b P Q R S T) {X : Point} (hX : InTriangle X (ptB b) R ptC)
    (hXm : X ∈ unitSquare) (hXr : 0 < sarea (ptB b) X ptC) (hD : 0 < sarea ptD R X) :
    InTriangle X ptD R ptC := by
  have hXy := (right_facts h.b_pos (by linarith [h.b_le]) hXm hXr).2.2.1
  exact ⟨hD, hX.2.1, by simp only [sarea, ptC, ptD]; nlinarith⟩

theorem right_DBR (h : Row123 l b P Q R S T) (hq : QuadHull (ptB b) R S ptC T) {X : Point}
    (hX : InTriangle X (ptB b) R ptC) (hD : sarea ptD R X < 0) : InTriangle X ptD (ptB b) R := by
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h hq
  have hDBR : 0 < sarea ptD (ptB b) R := by simp only [sarea, ptD, ptB]; nlinarith [h.b_pos]
  have hDBC : 0 < sarea ptD (ptB b) ptC := by simp only [sarea, ptD, ptB, ptC]; norm_num
  refine ⟨?_, hX.1, by rw [sarea_swap₁₂]; linarith⟩
  exact pos_of_inside hX (by unfold sarea; ring_nf; rfl) hDBR.le hDBC.le (Or.inr (Or.inl hDBR))

theorem DRC_ER (h : Row123 l b P Q R S T) {X : Point} (hX : InTriangle X ptD R ptC) :
    0 < sarea (ptE l) R X := by
  have hb := h.b_pos
  have hRx := (right_facts hb (by linarith [h.b_le]) h.R_mem h.R_right).1
  have hERC : 0 < sarea (ptE l) R ptC := by
    have := right_below_CE (l := l) hb (by linarith [h.b_le]) h.l_pos h.R_mem h.R_right
    rw [sarea_swap₂₃]; linarith
  refine pos_of_inside hX ?_ (by unfold sarea; ring_nf; rfl) hERC.le (Or.inr (Or.inr hERC))
  simp only [sarea, ptE, ptD]; nlinarith [h.l_lt]

/-- Exactly one of `P, Q, T` is on the
`B`-side of `DR` (`[DRX] < 0`); the other two are on its `C`-side. -/
theorem exactly_one_below_DR (h : OneUpperSetting l b P Q R S T) :
    (sarea ptD R P < 0 ∧ 0 < sarea ptD R Q ∧ 0 < sarea ptD R T) ∨
      (0 < sarea ptD R P ∧ sarea ptD R Q < 0 ∧ 0 < sarea ptD R T) ∨
      (0 < sarea ptD R P ∧ 0 < sarea ptD R Q ∧ sarea ptD R T < 0) := by
  have hb := h.row.b_pos
  have hb2 := h.row.b_le
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hmin7 := s7_le_A₀.trans h.min
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  have nP : sarea ptD R P ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 4
  have nQ : sarea ptD R Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 5
  have nT : sarea ptD R T ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 8
  have cap1 := (atMostOneInside_DBR h.row hmin7 h.quad).2.2.2
  have hu1 := (right_facts hb (by linarith) h.row.R_mem h.row.R_right).2.2.1
  have hDRC : 0 < sarea ptD R ptC := by simp only [sarea, ptD, ptC]; nlinarith
  have hPm := central_mem hb (by linarith) h.row.P_central
  have hQm := central_mem hb (by linarith) h.row.Q_central
  have cap2 := ThreeInteriorTriangles.typeIIConfig_triangleCapacityTwo hl hl1 hb hb2 hPm hQm h.row.R_mem h.row.S_mem
    h.row.T_mem h.min 0 6 1 hDRC
  have three : InTriangle P ptD R ptC → InTriangle Q ptD R ptC → InTriangle T ptD R ptC →
      False := by
    intro a c d
    have hsub : ({4, 5, 8} : Set (Fin 9)) ⊆ {m | InTriangle (typeIIConfig l b P Q R S T m)
        (typeIIConfig l b P Q R S T 0) (typeIIConfig l b P Q R S T 6)
        (typeIIConfig l b P Q R S T 1)} := by
      intro m hm
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hm
      rcases hm with rfl | rfl | rfl
      · exact a
      · exact c
      · exact d
    have h1 := Set.ncard_le_ncard hsub (Set.toFinite _)
    have h3 : ({4, 5, 8} : Set (Fin 9)).ncard = 3 :=
      Set.ncard_eq_three.2 ⟨4, 5, 8, by decide, by decide, by decide, rfl⟩
    omega
  have bP := central_DBR h.row h.quad h.row.P_central
  have bQ := central_DBR h.row h.quad h.row.Q_central
  have bT := right_DBR h.row h.quad h.cell.1
  have aP := central_DRC h.row h.quad h.row.P_central
  have aQ := central_DRC h.row h.quad h.row.Q_central
  have aT := right_DRC h.row h.cell.1 h.row.T_mem h.row.T_right
  rcases lt_or_gt_of_ne nP with p | p <;> rcases lt_or_gt_of_ne nQ with q | q <;>
    rcases lt_or_gt_of_ne nT with t | t
  · exact absurd (cap1 4 5 (bP p) (bQ q)) (by decide)
  · exact absurd (cap1 4 5 (bP p) (bQ q)) (by decide)
  · exact absurd (cap1 4 8 (bP p) (bT t)) (by decide)
  · exact Or.inl ⟨p, q, t⟩
  · exact absurd (cap1 5 8 (bQ q) (bT t)) (by decide)
  · exact Or.inr (Or.inl ⟨p, q, t⟩)
  · exact Or.inr (Or.inr ⟨p, q, t⟩)
  · exact (three (aP p) (aQ q) (aT t)).elim

theorem P_below_common (h : OneUpperSetting l b P Q R S T) (hPb : sarea ptD R P < 0) :
    InTriangle Q ptD R ptC ∧ InTriangle T ptD R ptC ∧ 0 < sarea ptC (ptE l) Q ∧
      0 < sarea ptC (ptE l) T ∧ 0 < sarea (ptE l) R ptC ∧
      (∀ Z, InTriangle Z ptD R ptC → 0 < sarea ptC (ptE l) Z → InTriangle P ptD (ptE l) Z) := by
  have hb := h.row.b_pos
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hmin7 := s7_le_A₀.trans h.min
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h.row h.quad
  have hDEB := TypeII.s_le_DEB (row_data h.row) hm
  -- `Q, T` above `DR`
  have hQa : 0 < sarea ptD R Q ∧ 0 < sarea ptD R T := by
    rcases exactly_one_below_DR h with ⟨-, q, t⟩ | ⟨p, -, -⟩ | ⟨p, -, -⟩
    · exact ⟨q, t⟩
    · linarith
    · linarith
  have hQ := central_DRC h.row h.quad h.row.Q_central hQa.1
  have hT := right_DRC h.row h.cell.1 h.row.T_mem h.row.T_right hQa.2
  have hQER := DRC_ER h.row hQ
  have hTER := DRC_ER h.row hT
  have hCEQ : 0 < sarea ptC (ptE l) Q := by rw [sarea_swap₁₂]; linarith [h.Q_below]
  have hCET : 0 < sarea ptC (ptE l) T := by
    have := right_below_CE (l := l) hb hb1 hl h.row.T_mem h.row.T_right
    rw [sarea_swap₁₂]; linarith
  have hRx := (right_facts hb hb1 h.row.R_mem h.row.R_right).1
  have hERC : 0 < sarea (ptE l) R ptC := by
    have := right_below_CE (l := l) hb hb1 hl h.row.R_mem h.row.R_right
    rw [sarea_swap₂₃]; linarith
  -- `P` in `DEC`, above `ER`
  obtain ⟨hPx, hPy, hPy1, -, -⟩ := central_facts hb hb1 h.row.P_central
  have hPDEC : InTriangle P ptD (ptE l) ptC :=
    ((TypeII.central_inTriangle_iff hb hb1 hl hl1 h.row.P_central).1).2 h.P_above
  have hERP : 0 < sarea (ptE l) R P := by
    refine pos_of_inside hPDEC ?_ (by unfold sarea; ring_nf; rfl) hERC.le (Or.inr (Or.inr hERC))
    simp only [sarea, ptE, ptD]; nlinarith
  -- `P ∈ DEZ` for `Z` in the sector at `RC` (a ray argument)
  have inDEZ : ∀ Z, InTriangle Z ptD R ptC → 0 < sarea ptC (ptE l) Z →
      InTriangle P ptD (ptE l) Z := by
    intro Z hZ hZc
    have hZERC : InTriangle Z (ptE l) R ptC := ⟨DRC_ER h.row hZ, hZ.2.1, hZc⟩
    refine ⟨hPDEC.1, ?_, ?_⟩
    · have : 0 < sarea P (ptE l) Z := by
        refine pos_of_inside hZERC (by unfold sarea; ring_nf; rfl) ?_ ?_ (Or.inr (Or.inl ?_))
        · rw [show sarea P (ptE l) R = sarea (ptE l) R P by unfold sarea; ring]; exact hERP.le
        · rw [show sarea P (ptE l) ptC = sarea (ptE l) ptC P by unfold sarea; ring]
          exact h.P_above.le
        · rw [show sarea P (ptE l) R = sarea (ptE l) R P by unfold sarea; ring]; exact hERP
      rw [show sarea (ptE l) Z P = sarea P (ptE l) Z by unfold sarea; ring]; exact this
    · have : 0 < sarea ptD P Z := by
        refine pos_of_inside hZ (by unfold sarea; ring_nf; rfl) ?_ ?_ (Or.inr (Or.inl ?_))
        · rw [show sarea ptD P R = -sarea ptD R P by unfold sarea; ring]; linarith
        · simp only [sarea, ptD, ptC]; nlinarith
        · rw [show sarea ptD P R = -sarea ptD R P by unfold sarea; ring]; linarith
      rw [show sarea Z ptD P = sarea ptD P Z by unfold sarea; ring]; exact this
  exact ⟨hQ, hT, hCEQ, hCET, hERC, inDEZ⟩

/-- With `P` below `DR`, the line `QT` cannot separate `D, E`: then `DEQ` or `DET` would
contain two points. -/
theorem P_sec5 (h : OneUpperSetting l b P Q R S T) :
    sarea ptD R P < 0 → sarea Q T ptD * sarea Q T (ptE l) < 0 → False := by
  intro hPb hDE
  have hb := h.row.b_pos
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hmin7 := s7_le_A₀.trans h.min
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h.row h.quad
  have hDEB := TypeII.s_le_DEB (row_data h.row) hm
  obtain ⟨hQ, hT, hCEQ, hCET, hERC, inDEZ⟩ := P_below_common h hPb
  have hQER := DRC_ER h.row hQ
  have hTER := DRC_ER h.row hT
  obtain ⟨hPx, hPy, hPy1, -, -⟩ := central_facts hb hb1 h.row.P_central
  obtain ⟨-, -, -, -, capQ, capT⟩ := atMostOneInside_DEQ_DET h.row hmin7 h.quad
  have nD : sarea Q T ptD ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 0
  have nE : sarea Q T (ptE l) ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 2
  have nR : sarea Q T R ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 6
  have nC : sarea Q T ptC ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 1
  have hDEQ : 0 < sarea ptD (ptE l) Q := by
    have := (central_facts hb hb1 h.row.Q_central).1
    simp only [sarea, ptD, ptE]; nlinarith
  have hDET : 0 < sarea ptD (ptE l) T := by
    have := (right_facts hb hb1 h.row.T_mem h.row.T_right).1
    simp only [sarea, ptD, ptE]; nlinarith
  rcases lt_or_gt_of_ne nD with hD | hD
  · have hE : 0 < sarea Q T (ptE l) := by
      by_contra hE; push Not at hE; nlinarith [mul_nonneg_of_nonpos_of_nonpos hD.le hE]
    have hTin : InTriangle T ptD (ptE l) Q := ⟨hDET,
      by rw [show sarea (ptE l) Q T = sarea Q T (ptE l) by unfold sarea; ring]; exact hE,
      by rw [show sarea Q ptD T = -sarea Q T ptD by unfold sarea; ring]; linarith⟩
    exact absurd (capQ 4 8 (inDEZ Q hQ hCEQ) hTin) (by decide)
  · have hE : sarea Q T (ptE l) < 0 := by
      by_contra hE; push Not at hE; nlinarith [mul_nonneg hD.le hE]
    have hQin : InTriangle Q ptD (ptE l) T := ⟨hDEQ,
      by rw [show sarea (ptE l) T Q = -sarea Q T (ptE l) by unfold sarea; ring]; linarith,
      by rw [show sarea T ptD Q = sarea Q T ptD by unfold sarea; ring]; exact hD⟩
    exact absurd (capT 4 5 (inDEZ T hT hCET) hQin) (by decide)

/-- With `P` below `DR`, the line `QT` cannot leave `D, E` on one side: then `q ≤ 177/448`
(`sector_eleven`, `q_small`), against the area bounds on `DBP`, `RDP` and `ECP` (`P_scalar`). -/
theorem P_sec4 (h : OneUpperSetting l b P Q R S T) :
    sarea ptD R P < 0 → 0 < sarea Q T ptD * sarea Q T (ptE l) → False := by
  intro hPb hDE'
  have hb := h.row.b_pos
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hmin7 := s7_le_A₀.trans h.min
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h.row h.quad
  have hDEB := TypeII.s_le_DEB (row_data h.row) hm
  obtain ⟨hQ, hT, hCEQ, hCET, hERC, inDEZ⟩ := P_below_common h hPb
  have hQER := DRC_ER h.row hQ
  have hTER := DRC_ER h.row hT
  obtain ⟨hPx, hPy, hPy1, -, -⟩ := central_facts hb hb1 h.row.P_central
  obtain ⟨-, -, -, -, capQ, capT⟩ := atMostOneInside_DEQ_DET h.row hmin7 h.quad
  have nD : sarea Q T ptD ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 0
  have nE : sarea Q T (ptE l) ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 2
  have nR : sarea Q T R ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 6
  have nC : sarea Q T ptC ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 1
  have hDEQ : 0 < sarea ptD (ptE l) Q := by
    have := (central_facts hb hb1 h.row.Q_central).1
    simp only [sarea, ptD, ptE]; nlinarith
  have hDET : 0 < sarea ptD (ptE l) T := by
    have := (right_facts hb hb1 h.row.T_mem h.row.T_right).1
    simp only [sarea, ptD, ptE]; nlinarith
  have eRCD : sarea R ptC ptD = 1 - R.2 := by simp only [sarea, ptC, ptD]; ring
  have eCDE : sarea ptC ptD (ptE l) = 1 - l := by simp only [sarea, ptC, ptD, ptE]; ring
  have eDER : sarea ptD (ptE l) R = (1 - l) * R.1 := by simp only [sarea, ptD, ptE]; ring
  have eRCE : sarea R ptC (ptE l) = (1 - R.2) - (1 - l) * (1 - R.1) := by
    simp only [sarea, ptC, ptE]; ring
  have eRDE : sarea R ptD (ptE l) = (1 - l) * R.1 := by simp only [sarea, ptD, ptE]; ring
  have eER : sarea (ptE l) R ptC = sarea R ptC (ptE l) := by unfold sarea; ring
  have hERC' : 0 < sarea R ptC (ptE l) := by rw [← eER]; exact hERC
  have q1 : 0 < sarea R ptC ptD := by rw [eRCD]; linarith
  have q2 : 0 < sarea ptC ptD (ptE l) := by rw [eCDE]; linarith
  have q3 : 0 < sarea ptD (ptE l) R := by rw [eDER]; nlinarith
  have hq4 : ConvexQuad R ptC ptD (ptE l) := ⟨q1, q2, q3, hERC⟩
  have hsub : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![R, ptC, ptD, ptE l, Q, T] :=
    hm.trans (TypeII.min_le_min_reindex (by norm_num) _ _ ![6, 1, 0, 2, 5, 8] (by decide)
      (by funext i; fin_cases i <;> rfl))
  obtain ⟨hX, h11⟩ := sector_eleven (by norm_num) hq4 ⟨hQ.2.1, hQ.2.2, hQ.1⟩
    ⟨hQ.2.1, hCEQ, hQER⟩ ⟨hT.2.1, hT.2.2, hT.1⟩ ⟨hT.2.1, hCET, hTER⟩ hsub nR nC hDE'
  rw [eRCE, eRCD] at hX
  rw [eRCE, eRCD, eRDE] at h11
  have hKv : Kc * (7 / 64) ≤ sarea ptD R ptC :=
    two_inside (by norm_num) hm 0 6 1 5 8 (by decide) hQ hT
  have eDRC : sarea ptD R ptC = 1 - R.2 := by simp only [sarea, ptD, ptC]; ring
  rw [eDRC] at hKv
  have hK := Kc_s7_gt
  have hα0 : 0 < (1 - R.2) - (1 - l) * (1 - R.1) := by rw [← eRCE]; exact hERC'
  have hq177 : 1 - l ≤ 177 / 448 := by
    refine q_small hα0 (by nlinarith) (by linarith) (by linarith) (by linarith) hX ?_
    have e : (1 - R.2) - (1 - l) * (1 - R.1) + (1 - l) = (1 - R.2) + (1 - l) * R.1 := by ring
    rw [e]; linarith
  -- the area bounds `[DBP], [RDP], [ECP] ≥ s`
  have a1 : 7 / 64 ≤ sarea ptD (ptB b) P := ge_of_pos (abs_ge hm 0 3 4) h.row.P_central.1
  have hRDP : 0 < sarea R ptD P := by rw [sarea_swap₁₂]; linarith
  have a2 : 7 / 64 ≤ sarea R ptD P := ge_of_pos (abs_ge hm 6 0 4) hRDP
  have a3 : 7 / 64 ≤ sarea (ptE l) ptC P := ge_of_pos (abs_ge hm 2 1 4) h.P_above
  have e1 : sarea ptD (ptB b) P = P.1 - b * (1 - P.2) := by simp only [sarea, ptD, ptB]; ring
  have e2 : sarea R ptD P = R.1 * (1 - P.2) - (1 - R.2) * P.1 := by simp only [sarea, ptD]; ring
  have e3 : sarea (ptE l) ptC P = (1 - l) * (1 - P.1) - (1 - P.2) := by
    simp only [sarea, ptE, ptC]; ring
  rw [e1] at a1; rw [e2] at a2; rw [e3] at a3
  have hPm := central_mem hb hb1 h.row.P_central
  exact P_scalar hDEB hq177 (by linarith) (by linarith [h.row.R_mem.2.1]) (by linarith) hPx.le
    hPm.2.1 (by linarith) a1 a2 a3

/-- `P` is not below `DR`. -/
theorem P_not_below_DR (h : OneUpperSetting l b P Q R S T) :
    ¬ sarea ptD R P < 0 := by
  intro hPb
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  have nD : sarea Q T ptD ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 0
  have nE : sarea Q T (ptE l) ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 2
  rcases lt_or_gt_of_ne (mul_ne_zero nD nE) with hDE | hDE
  · exact P_sec5 h hPb hDE
  · exact P_sec4 h hPb hDE

/-- With `T` below `DR`: `P, Q` are in `DBC ∩ DRC`, `T` in `BRC ∩ DBR`, and
`v = [DRC] ≥ Ks`. -/
theorem T_below_common (h : OneUpperSetting l b P Q R S T) (hTb : sarea ptD R T < 0) :
    InTriangle P ptD R ptC ∧ InTriangle Q ptD R ptC ∧ InTriangle T ptD (ptB b) R ∧
      Kc * (7 / 64) ≤ 1 - R.2 := by
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [s7_le_A₀.trans h.min]
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  have nP : sarea ptD R P ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 4
  have hPa : 0 < sarea ptD R P := (lt_or_gt_of_ne nP).resolve_left (P_not_below_DR h)
  have hQa : 0 < sarea ptD R Q := by
    rcases exactly_one_below_DR h with ⟨p, -, -⟩ | ⟨-, -, t⟩ | ⟨-, q, -⟩
    · linarith
    · linarith
    · exact q
  have hP := central_DRC h.row h.quad h.row.P_central hPa
  have hQ := central_DRC h.row h.quad h.row.Q_central hQa
  have hK : Kc * (7 / 64) ≤ sarea ptD R ptC :=
    two_inside (by norm_num) hm 0 6 1 4 5 (by decide) hP hQ
  have e : sarea ptD R ptC = 1 - R.2 := by simp only [sarea, ptD, ptC]; ring
  rw [e] at hK
  exact ⟨hP, hQ, right_DBR h.row h.quad h.cell.1 hTb, hK⟩

/-- With `T` below `DR`, when `PQ` separates `B, R`: `BRP` or `BRQ` contains two points
although its doubled area is at most `[DBR] < Ks`. -/
theorem T_sec_cap (h : OneUpperSetting l b P Q R S T) (hTb : sarea ptD R T < 0)
    (hBR : sarea P Q (ptB b) * sarea P Q R < 0) : False := by
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [s7_le_A₀.trans h.min]
  have hmin7 := s7_le_A₀.trans h.min
  obtain ⟨hP, hQ, hTDBR, -⟩ := T_below_common h hTb
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h.row h.quad
  obtain ⟨hDBR, h2, h3, -⟩ := atMostOneInside_DBR h.row hmin7 h.quad
  have hDBR' : sarea ptD (ptB b) R < Kc * (7 / 64) := by linarith
  -- `T ∈ BRZ` for `Z` in the sector at `DC`
  have inBRZ : ∀ Z, InTriangle Z ptD (ptB b) ptC → InTriangle Z ptD R ptC →
      InTriangle T (ptB b) R Z := by
    intro Z hZ1 hZ2
    refine ⟨hTDBR.2.1, ?_, ?_⟩
    · have : 0 < sarea T R Z := by
        refine pos_of_inside hZ2 ?_ (by unfold sarea; ring_nf; rfl) ?_ (Or.inl ?_)
        · rw [show sarea T R ptD = sarea R ptD T by unfold sarea; ring]; exact hTDBR.2.2.le
        · rw [show sarea T R ptC = sarea R ptC T by unfold sarea; ring]; exact h.cell.1.2.1.le
        · rw [show sarea T R ptD = sarea R ptD T by unfold sarea; ring]; exact hTDBR.2.2
      rw [show sarea R Z T = sarea T R Z by unfold sarea; ring]; exact this
    · have : 0 < sarea (ptB b) T Z := by
        refine pos_of_inside hZ1 ?_ (by unfold sarea; ring_nf; rfl) ?_ (Or.inl ?_)
        · rw [show sarea (ptB b) T ptD = sarea ptD (ptB b) T by unfold sarea; ring]
          exact hTDBR.1.le
        · rw [show sarea (ptB b) T ptC = -sarea (ptB b) ptC T by unfold sarea; ring]
          have := h.cell.1.2.2
          rw [show sarea ptC (ptB b) T = -sarea (ptB b) ptC T by unfold sarea; ring] at this
          linarith
        · rw [show sarea (ptB b) T ptD = sarea ptD (ptB b) T by unfold sarea; ring]
          exact hTDBR.1
      rw [show sarea Z (ptB b) T = sarea (ptB b) T Z by unfold sarea; ring]; exact this
  -- `[BRZ] ≤ [DBR]` on `DBC`
  have hBRZ : ∀ Z, InTriangle Z ptD (ptB b) ptC → sarea (ptB b) R Z ≤ sarea ptD (ptB b) R := by
    intro Z hZ
    obtain ⟨z1, z2, z3⟩ := hZ
    have hbar := bary ptD (ptB b) ptC Z (ptB b) R
    have e1 : sarea ptD (ptB b) ptC = 1 := by simp only [sarea, ptD, ptB, ptC]; ring
    have e2 : sarea (ptB b) R ptD = sarea ptD (ptB b) R := by unfold sarea; ring
    have e3 : sarea (ptB b) R (ptB b) = 0 := by unfold sarea; ring
    have hsum := sarea_add_sarea_add_sarea ptD (ptB b) ptC Z
    rw [e1, e2, e3] at hbar
    rw [e1] at hsum
    have hg : sarea (ptB b) R ptC ≤ sarea ptD (ptB b) R := by
      simp only [sarea, ptB, ptC, ptD]; nlinarith
    have hg0 : 0 < sarea (ptB b) R ptC := h.row.R_right
    nlinarith [mul_le_mul_of_nonneg_left hg z1.le]
  have hBRQ : 0 < sarea (ptB b) R Q := by
    have := central_DBR h.row h.quad h.row.Q_central
    refine pos_of_inside h.row.Q_central ?_ (by unfold sarea; ring_nf; rfl) h.row.R_right.le
      (Or.inl ?_)
    · rw [show sarea (ptB b) R ptD = sarea ptD (ptB b) R by unfold sarea; ring]
      simp only [sarea, ptD, ptB]; nlinarith [h.row.b_pos]
    · rw [show sarea (ptB b) R ptD = sarea ptD (ptB b) R by unfold sarea; ring]
      simp only [sarea, ptD, ptB]; nlinarith [h.row.b_pos]
  have hBRP : 0 < sarea (ptB b) R P := by
    refine pos_of_inside h.row.P_central ?_ (by unfold sarea; ring_nf; rfl) h.row.R_right.le
      (Or.inl ?_)
    · rw [show sarea (ptB b) R ptD = sarea ptD (ptB b) R by unfold sarea; ring]
      simp only [sarea, ptD, ptB]; nlinarith [h.row.b_pos]
    · rw [show sarea (ptB b) R ptD = sarea ptD (ptB b) R by unfold sarea; ring]
      simp only [sarea, ptD, ptB]; nlinarith [h.row.b_pos]
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  have nB : sarea P Q (ptB b) ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 3
  rcases lt_or_gt_of_ne nB with hB | hB
  · have hR : 0 < sarea P Q R := by
      by_contra hR; push Not at hR; nlinarith [mul_nonneg_of_nonpos_of_nonpos hB.le hR]
    have hQin : InTriangle Q (ptB b) R P := ⟨hBRQ,
      by rw [show sarea R P Q = sarea P Q R by unfold sarea; ring]; exact hR,
      by rw [show sarea P (ptB b) Q = -sarea P Q (ptB b) by unfold sarea; ring]; linarith⟩
    have hK : Kc * (7 / 64) ≤ sarea (ptB b) R P :=
      two_inside (by norm_num) hm 3 6 4 5 8 (by decide) hQin (inBRZ P h.row.P_central hP)
    linarith [hBRZ P h.row.P_central]
  · have hR : sarea P Q R < 0 := by
      by_contra hR; push Not at hR; nlinarith [mul_nonneg hB.le hR]
    have hPin : InTriangle P (ptB b) R Q := ⟨hBRP,
      by rw [show sarea R Q P = -sarea P Q R by unfold sarea; ring]; linarith,
      by rw [show sarea Q (ptB b) P = sarea P Q (ptB b) by unfold sarea; ring]; exact hB⟩
    have hK : Kc * (7 / 64) ≤ sarea (ptB b) R Q :=
      two_inside (by norm_num) hm 3 6 5 4 8 (by decide) hPin (inBRZ Q h.row.Q_central hQ)
    linarith [hBRZ Q h.row.Q_central]

/-- With `T` below `DR`, when `PQ` leaves `B, R` on one side: the common-sector pair inequality
gives `g = [BRC] ≤ 177/448` (`g_small`), against the one-point inequality for `T` in the `BR`
sector (`T_scalar`). -/
theorem T_sec4 (h : OneUpperSetting l b P Q R S T) (hTb : sarea ptD R T < 0)
    (hBR : 0 < sarea P Q (ptB b) * sarea P Q R) : False := by
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [s7_le_A₀.trans h.min]
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  obtain ⟨hP, hQ, hTDBR, hKv⟩ := T_below_common h hTb
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h.row h.quad
  have hK := Kc_s7_gt
  have hb := h.row.b_pos
  -- the sector at `CD` of `C, D, B, R`
  have eCDB : sarea ptC ptD (ptB b) = 1 := by simp only [sarea, ptC, ptD, ptB]; ring
  have eCDR : sarea ptC ptD R = 1 - R.2 := by simp only [sarea, ptC, ptD]; ring
  have eCBR : sarea ptC (ptB b) R = R.1 - b - (1 - b) * R.2 := by simp only [sarea, ptC, ptB]; ring
  have eDBR : sarea ptD (ptB b) R = R.1 - b * (1 - R.2) := by simp only [sarea, ptD, ptB]; ring
  have eRCD : sarea R ptC ptD = 1 - R.2 := by simp only [sarea, ptC, ptD]; ring
  have eBRC : sarea (ptB b) R ptC = R.1 - b - (1 - b) * R.2 := by simp only [sarea, ptB, ptC]; ring
  have hg0 : 0 < R.1 - b - (1 - b) * R.2 := by rw [← eBRC]; exact h.row.R_right
  have q1 : 0 < sarea ptC ptD (ptB b) := by rw [eCDB]; norm_num
  have q2 : 0 < sarea ptD (ptB b) R := by rw [eDBR]; nlinarith
  have q4 : 0 < sarea R ptC ptD := by rw [eRCD]; linarith
  have hq4 : ConvexQuad ptC ptD (ptB b) R := ⟨q1, q2, h.row.R_right, q4⟩
  have hsub : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptC, ptD, ptB b, R, P, Q] :=
    hm.trans (TypeII.min_le_min_reindex (by norm_num) _ _ ![1, 0, 3, 6, 4, 5] (by decide)
      (by funext i; fin_cases i <;> rfl))
  have nC : sarea P Q ptC ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 1
  have nD : sarea P Q ptD ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 0
  obtain ⟨p1, p2, p3⟩ := h.row.P_central
  obtain ⟨q1', q2', q3'⟩ := h.row.Q_central
  obtain ⟨hX, h16⟩ := sector_eleven (by norm_num) hq4 ⟨p3, p1, p2⟩ ⟨p3, hP.1, hP.2.1⟩
    ⟨q3', q1', q2'⟩ ⟨q3', hQ.1, hQ.2.1⟩ hsub nC nD hBR
  rw [eCDR, eCDB] at hX
  rw [eCDR, eCDB, eCBR] at h16
  have hg177 : R.1 - b - (1 - b) * R.2 ≤ 177 / 448 :=
    g_small (v := 1 - R.2) (by linarith) (by linarith) hg0.le hX h16
  -- the one-point inequality for `T` in the sector at `BR` of `B, R, C, D`
  have hq4' : ConvexQuad (ptB b) R ptC ptD := ⟨h.row.R_right, q4, q1, q2⟩
  have hsub' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptB b, R, ptC, ptD, T] :=
    hm.trans (TypeII.min_le_min_reindex (by norm_num) _ _ ![3, 6, 1, 0, 8] (by decide)
      (by funext i; fin_cases i <;> rfl))
  have h17 := sector_one (by norm_num) hq4' h.cell.1 ⟨hTDBR.2.1, hTDBR.2.2, hTDBR.1⟩ hsub'
  have eBRD : sarea (ptB b) R ptD = R.1 - b * (1 - R.2) := by simp only [sarea, ptD, ptB]; ring
  have eBCD : sarea (ptB b) ptC ptD = 1 := by simp only [sarea, ptC, ptD, ptB]; ring
  rw [eBRD, eBRC, eBCD] at h17
  have hg3 : 3 * (7 / 64) ≤ R.1 - b - (1 - b) * R.2 := by
    rw [← eBRC]
    obtain ⟨t1, t2, t3⟩ := h.cell.1
    exact one_inside (ge_of_pos (abs_ge hm 3 6 8) t1) (ge_of_pos (abs_ge hm 6 1 8) t2)
      (ge_of_pos (abs_ge hm 1 3 8) t3)
  have e : R.1 - b * (1 - R.2) = (R.1 - b - (1 - b) * R.2) + 1 - (1 - R.2) := by ring
  rw [e] at h17
  exact T_scalar (v := 1 - R.2) (by linarith) (by linarith) hg3 hg177 h17

/-- `T` is not below `DR`. -/
theorem T_not_below_DR (h : OneUpperSetting l b P Q R S T) :
    ¬ sarea ptD R T < 0 := by
  intro hTb
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  have nB : sarea P Q (ptB b) ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 3
  have nR : sarea P Q R ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 6
  rcases lt_or_gt_of_ne (mul_ne_zero nB nR) with hBR | hBR
  · exact T_sec_cap h hTb hBR
  · exact T_sec4 h hTb hBR

/-- `P, T` are above `DR` and `Q` is
below it. Furthermore `DRS` contains at most one further actual point, so at least one of `P, T`
is above `DS`. -/
theorem P_T_above_DR_Q_below (h : OneUpperSetting l b P Q R S T) :
    0 < sarea ptD R P ∧ 0 < sarea ptD R T ∧ sarea ptD R Q < 0 ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) ptD R S ∧
      (0 < sarea ptD S P ∨ 0 < sarea ptD S T) := by
  have hP := P_not_below_DR h
  have hT := T_not_below_DR h
  have hmin7 := s7_le_A₀.trans h.min
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos h.min
  obtain ⟨hur, hbr, hrk, hk1, hu0, hut, ht1⟩ := UnbalancedCellI.coord_order_of_quadHull h.row h.quad
  rcases exactly_one_below_DR h with ⟨p, -, -⟩ | ⟨p, q, t⟩ | ⟨-, -, t⟩
  · exact absurd p hP
  · have cap := (atMostOneInside_DRS h.row hmin7 h.quad h.cell).2.2.2
    refine ⟨p, t, q, cap, ?_⟩
    by_contra hc; push Not at hc
    have nP : sarea ptD S P ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 7 4
    have nT : sarea ptD S T ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 7 8
    have hRSD : 0 < sarea R S ptD := by simp only [sarea, ptD]; nlinarith
    have hRSB : 0 < sarea R S (ptB b) := by rw [sarea_cycle]; exact h.quad.1.1
    have hRSP : 0 < sarea R S P :=
      pos_of_inside h.row.P_central hRSD.le hRSB.le h.quad.1.2.1.le (Or.inl hRSD)
    have hPin : InTriangle P ptD R S := ⟨p, hRSP, by
      rw [show sarea S ptD P = -sarea ptD S P by unfold sarea; ring]
      exact neg_pos.2 (lt_of_le_of_ne hc.1 nP)⟩
    have hTin : InTriangle T ptD R S := ⟨t, h.quad.2.2.1, by
      rw [show sarea S ptD T = -sarea ptD S T by unfold sarea; ring]
      exact neg_pos.2 (lt_of_le_of_ne hc.2 nT)⟩
    exact absurd (cap 4 8 hPin hTin) (by decide)
  · exact absurd t hT

end Heilbronn.Nine.UnbalancedOneUpperRadial
