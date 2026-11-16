module

public import Heilbronn.Nine.SixBoundary.Exterior

/-! # Side-cap projections in family N

`sideCap_BCX_lt` (`[BCX] < 3s` for a point `X` of the side cap `R = CD(1,0)`; transposed `[HAY] < 3s`
for `Y` in `L = FH(0,1)`) is used by the single-side, side-opposite and side-two-top cases; the
projection checks `sideCap_projection` and `pair_projection` are used by the two-side completion
(`SixBoundaryTwoSideCompletion`).

Setting: `nConfig a h b c d f X Y Q` with `NAnchors a h b c d f`, `X = (x, y)` in the closed cap
`R`, `Y = (z, w)` in the closed cap `L`, `Q = (r, t)` in the closed virtual triangle
`T₀ = (0,0)HC`. Threshold `s = 7/64` (doubled) for `sideCap_BCX_lt`; the projection checks hold at any
doubled threshold `μ ≥ s` bounded by the original minimum doubled area. The sign condition
`(t - a)[AQX] ≤ 0` of `sideCap_projection` follows from `(t - a)(y - a) ≤ 0`, since
`(t - a)[AQX] = r(t - a)(y - a) - x(t - a)²`.

Results:
* `sideCap_BCX_lt`: `[BCX] < 3s` for `X ∈ R`, so `BCX` contains no free point; transposed for `L`;
* `sarea_BQX_neg`: `[BQX] < 0`, and transposed `[AQY] > 0`;
* `sideCap_projection`: moving `x` to `1` keeps every triangle of `X` with two anchors or with
  `Q` and an anchor other than `A` above `μ`, and the one with `Q` and `A` under
  `(t - a)[AQX] ≤ 0`; transposed for `Y` (exceptional anchor `B`, condition
  `(r - b)[BQY] ≥ 0`);
* `pair_projection`: every triangle using both cap points stays above `μ` when `x` and `w`
  increase to `1`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryTwoSideProjection

open SixBoundary SixBoundaryExterior

/-- The scalar core of `sideCap_BCX_lt`: `my ≥ 3s`, `α(d - y) ≥ s`, `b ≥ s`, `d ≤ 1 - s` are
incompatible (`m = c - b`, `α = 1 - c`; Cauchy-Schwarz with `√3 > 17/10`). -/
theorem sideCap_BCX_scalar {b c d y : ℝ} (hb : 7 / 64 ≤ b) (hbc : b < c) (hc : c < 1)
    (hy : 3 * (7 / 64) ≤ (c - b) * y) (hdy : 7 / 64 ≤ (1 - c) * (d - y)) (hd1 : d ≤ 1 - 7 / 64) :
    False := by
  set m := c - b with hm
  set α := 1 - c with hα
  have hm0 : 0 < m := by linarith
  have hα0 : 0 < α := by linarith
  -- `d m α ≥ 3sα + sm`
  have h1 : 3 * (7 / 64) * α + 7 / 64 * m ≤ d * m * α := by
    nlinarith [mul_le_mul_of_nonneg_left hy hα0.le, mul_le_mul_of_nonneg_left hdy hm0.le]
  -- `(3α + m)(m + α) ≥ (4 + 2·17/10) m α`
  have h2 : (4 + 2 * (17 / 10)) * (m * α) ≤ (3 * α + m) * (m + α) := by
    nlinarith [sq_nonneg (m - 17 / 10 * α), sq_nonneg α]
  have h3 : (4 + 2 * (17 / 10)) * (7 / 64) * (m * α) ≤ d * (m * α) * (m + α) := by
    have := mul_le_mul_of_nonneg_right h1 (by linarith : (0 : ℝ) ≤ m + α)
    nlinarith
  have h4 : (4 + 2 * (17 / 10)) * (7 / 64) ≤ d * (m + α) := by
    have hmα : 0 < m * α := mul_pos hm0 hα0
    nlinarith
  have h5 : m + α ≤ 1 - 7 / 64 := by linarith
  have hd0 : 0 ≤ d := by nlinarith
  nlinarith [mul_le_mul h5 hd1 hd0 (by norm_num : (0:ℝ) ≤ 1 - 7 / 64)]

/-- If every doubled area is at least `s = 7/64` and the free point `X` lies in the lower-right
cap `CD(1,0)`, then `[BCX] < 3s`, so `BCX` contains no further free point. Transposed: if `X` lies
in the upper-left cap `FH(0,1)`, then `[HAX] < 3s` and `HAX` contains no further free point. -/
theorem sideCap_BCX_lt {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (_hX : X ∈ unitSquare) (_hY : Y ∈ unitSquare) (_hZ : Z ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    (InCapR c d X →
      sarea (ptB b) (ptC c) X < 3 * (7 / 64) ∧
        ¬ InTriangle Y (ptB b) (ptC c) X ∧ ¬ InTriangle Z (ptB b) (ptC c) X) ∧
    (InCapL f h X →
      sarea (ptH h) (ptA a) X < 3 * (7 / 64) ∧
        ¬ InTriangle Y (ptH h) (ptA a) X ∧ ¬ InTriangle Z (ptH h) (ptA a) X) := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨hABC, hABH, hHDF, hCDF⟩ := SixBoundaryHull.anchor_areas hN hmin
  have hbs : 7 / 64 ≤ b := by nlinarith
  have has : 7 / 64 ≤ a := by nlinarith
  have hd1 : d ≤ 1 - 7 / 64 := by
    nlinarith [mul_le_mul_of_nonneg_right (by linarith : f ≤ 1) (sub_nonneg.2 hdh)]
  have hf1 : f ≤ 1 - 7 / 64 := by
    nlinarith [mul_le_mul_of_nonneg_right (by linarith : d ≤ 1) (sub_nonneg.2 hfc)]
  refine ⟨fun hXR => ?_, fun hXL => ?_⟩
  · obtain ⟨⟨x0, x1, y0, y1⟩, hcap⟩ := hXR
    have hCDX : 7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2 := by
      have := sarea_le_of_nonpos hp (p := (c, 0)) (q := (1, d)) (r := X) hcap
        (area_of_le_min hmin 3 4 6)
      simp only [sarea] at this; linarith
    have hdy : 7 / 64 ≤ (1 - c) * (d - X.2) := by
      nlinarith [mul_le_mul_of_nonneg_left x1 (by linarith : (0:ℝ) ≤ d)]
    have hlt : sarea (ptB b) (ptC c) X < 3 * (7 / 64) := by
      by_contra hge
      push Not at hge
      exact sideCap_BCX_scalar hbs hbc hc (by simp only [sarea] at hge; linarith) hdy hd1
    refine ⟨hlt, fun hY => ?_, fun hZ => ?_⟩
    · have := SixBoundaryExterior.three_s_of_inTriangle (P := nConfig a h b c d f X Y Z)
        (i := 2) (j := 3) (k := 6) (l := 7) hmin (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) hY
      exact absurd this (not_le.2 hlt)
    · have := SixBoundaryExterior.three_s_of_inTriangle (P := nConfig a h b c d f X Y Z)
        (i := 2) (j := 3) (k := 6) (l := 8) hmin (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) hZ
      exact absurd this (not_le.2 hlt)
  · obtain ⟨⟨x0, x1, y0, y1⟩, hcap⟩ := hXL
    have hFHX : 7 / 64 ≤ f * (X.2 - h) - (1 - h) * X.1 := by
      have := sarea_le_of_nonpos hp (p := (f, 1)) (q := (0, h)) (r := X) hcap
        (area_of_le_min hmin 5 1 6)
      simp only [sarea] at this; linarith
    have hfx : 7 / 64 ≤ (1 - h) * (f - X.1) := by
      nlinarith [mul_le_mul_of_nonneg_left y1 (by linarith : (0:ℝ) ≤ f)]
    have hlt : sarea (ptH h) (ptA a) X < 3 * (7 / 64) := by
      by_contra hge
      push Not at hge
      exact sideCap_BCX_scalar has hah hh (by simp only [sarea] at hge; linarith) hfx hf1
    refine ⟨hlt, fun hY => ?_, fun hZ => ?_⟩
    · have := SixBoundaryExterior.three_s_of_inTriangle (P := nConfig a h b c d f X Y Z)
        (i := 1) (j := 0) (k := 6) (l := 7) hmin (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) hY
      exact absurd this (not_le.2 hlt)
    · have := SixBoundaryExterior.three_s_of_inTriangle (P := nConfig a h b c d f X Y Z)
        (i := 1) (j := 0) (k := 6) (l := 8) hmin (by decide) (by decide) (by decide) (by decide)
        (by decide) (by decide) hZ
      exact absurd this (not_le.2 hlt)

/-- With every doubled area at least `7/64` and `Q` in `T₀ = (0,0)HC`: if `X` is in the cap
`CD(1,0)` then `[BQX] < 0` (`Q` is on the positive sides of `BC` and `CX`, and `BCX` is empty by
`sideCap_BCX_lt`); transposed, if `Y` is in the cap `FH(0,1)` then `[AQY] > 0`. -/
theorem sarea_BQX_neg {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    (InCapR c d X → sarea (ptB b) Q X < 0) ∧ (InCapL f h Y → 0 < sarea (ptA a) Q Y) := by
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨q0, q1, q2⟩ := hQT
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  have hL := sideCap_BCX_lt hN hX hY hQ hmin
  have hQT' : h * Q.1 + c * Q.2 ≤ h * c := by simp only [sarea] at q2; linarith
  have hQ2h : Q.2 ≤ h := by nlinarith
  have hQ1c : Q.1 ≤ c := by nlinarith
  refine ⟨fun hXR => ?_, fun hYL => ?_⟩
  · have nBC := sarea_ne_zero_of_min_pos hpos 2 3 8
    have nCX := sarea_ne_zero_of_min_pos hpos 3 6 8
    have nBQX := sarea_ne_zero_of_min_pos hpos 2 8 6
    change sarea (b, 0) (c, 0) Q ≠ 0 at nBC
    change sarea (c, 0) X Q ≠ 0 at nCX
    change sarea (b, 0) Q X ≠ 0 at nBQX
    obtain ⟨⟨x0, x1, y0, y1⟩, hcap⟩ := hXR
    have hd : 0 < d := by linarith
    simp only [sarea] at hcap
    have hxc : c ≤ X.1 := by nlinarith
    have s1 : 0 < sarea (b, 0) (c, 0) Q := by
      have : 0 ≤ sarea (b, 0) (c, 0) Q := by simp only [sarea]; nlinarith
      exact lt_of_le_of_ne this (Ne.symm nBC)
    have s2 : 0 < sarea (c, 0) X Q := by
      have : 0 ≤ sarea (c, 0) X Q := by
        simp only [sarea]; nlinarith [mul_nonneg (sub_nonneg.2 hxc) q1, mul_nonneg y0 (sub_nonneg.2 hQ1c)]
      exact lt_of_le_of_ne this (Ne.symm nCX)
    rcases lt_or_gt_of_ne nBQX with h1 | h1
    · exact h1
    · exfalso
      apply (hL.1 ⟨⟨x0, x1, y0, y1⟩, by simp only [sarea]; linarith⟩).2.2
      refine ⟨s1, s2, ?_⟩
      rw [← sarea_cycle]; exact h1
  · have nHA := sarea_ne_zero_of_min_pos hpos 1 0 8
    have nYH := sarea_ne_zero_of_min_pos hpos 7 1 8
    have nAQY := sarea_ne_zero_of_min_pos hpos 0 8 7
    change sarea (0, h) (0, a) Q ≠ 0 at nHA
    change sarea Y (0, h) Q ≠ 0 at nYH
    change sarea (0, a) Q Y ≠ 0 at nAQY
    obtain ⟨⟨z0, z1, w0, w1⟩, hcap⟩ := hYL
    have hf : 0 < f := by linarith
    simp only [sarea] at hcap
    have hwh : h ≤ Y.2 := by nlinarith
    have s1 : 0 < sarea (0, h) (0, a) Q := by
      have : 0 ≤ sarea (0, h) (0, a) Q := by simp only [sarea]; nlinarith
      exact lt_of_le_of_ne this (Ne.symm nHA)
    have s2 : 0 < sarea Y (0, h) Q := by
      have : 0 ≤ sarea Y (0, h) Q := by
        rw [sarea_cycle]
        simp only [sarea]; nlinarith [mul_nonneg q0 (sub_nonneg.2 hwh), mul_nonneg (sub_nonneg.2 hQ2h) z0]
      exact lt_of_le_of_ne this (Ne.symm nYH)
    rcases lt_or_gt_of_ne nAQY with h1 | h1
    · exfalso
      have hYc : (Y : Point) ∈ unitSquare := ⟨z0, z1, w0, w1⟩
      have := (sideCap_BCX_lt (X := Y) (Y := X) (Z := Q) hN hY hX hQ (by
        rw [show nConfig a h b c d f Y X Q = nConfig a h b c d f X Y Q ∘ Equiv.swap 6 7 by
          funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]; exact hmin)).2
        ⟨hYc, by simp only [sarea]; linarith⟩
      apply this.2.2
      refine ⟨s1, ?_, ?_⟩
      · have := sarea_swap₂₃ (0, a) Q Y; linarith
      · exact s2
    · exact h1

/-- An affine function on the closed triangle `T₀ = (0,0)HC` is a convex combination of its
three vertex values: `hc·g(r,t) = (hc - hr - ct) g(0,0) + hr g(c,0) + ct g(0,h)`. -/
theorem t0_le {h c r t g0 gC gH g : ℝ} (hh : 0 < h) (hc : 0 < c) (hr : 0 ≤ r) (ht : 0 ≤ t)
    (hT : h * r + c * t ≤ h * c) (e : h * c * g = (h * c - h * r - c * t) * g0 + h * r * gC + c * t * gH)
    (h0 : g0 ≤ 0) (hC : gC ≤ 0) (hH : gH ≤ 0) : g ≤ 0 := by
  have : h * c * g ≤ 0 := by
    rw [e]
    have := mul_nonpos_of_nonneg_of_nonpos (by linarith : 0 ≤ h * c - h * r - c * t) h0
    have := mul_nonpos_of_nonneg_of_nonpos (mul_nonneg hh.le hr) hC
    have := mul_nonpos_of_nonneg_of_nonpos (mul_nonneg hc.le ht) hH
    linarith
  by_contra hg
  push Not at hg
  have := mul_pos (mul_pos hh hc) hg
  linarith

/-- Projection step for the anchor `H`: `[HXQ] < 0` and nonincreasing in `x`. -/
theorem xProj_H {h c d μ x y r t x' : ℝ} (hh : 0 < h) (hyd : y ≤ d) (hdh : d ≤ h) (hy0 : 0 ≤ y)
    (hxc : c ≤ x) (hc0 : 0 ≤ c) (hth : t ≤ h) (hT : h * r + c * t ≤ h * c)
    (hH : μ ≤ |x * (t - h) - r * (y - h)|) (hxx : x ≤ x') :
    μ ≤ |x' * (t - h) - r * (y - h)| := by
  have hxx' : 0 ≤ x' - x := by linarith
  refine SixBoundaryExterior.absN hH ?_ (by nlinarith [mul_nonneg hxx' (sub_nonneg.2 hth)])
  have hhy : (0:ℝ) ≤ h - y := sub_nonneg.2 (hyd.trans hdh)
  have hhx : (0:ℝ) ≤ h * x - c * (h - y) := by nlinarith
  have : h * (x * (t - h) - r * (y - h)) ≤ 0 := by
    nlinarith [mul_le_mul_of_nonneg_left hT hhy, mul_nonneg (sub_nonneg.2 hth) hhx]
  nlinarith

/-- Projection step for the anchor `B`: `[BXQ] = -[BQX] > 0` and nondecreasing. -/
theorem xProj_B {b μ x y r t x' : ℝ} (ht0 : 0 ≤ t) (hBQX : (r - b) * y - t * (x - b) < 0)
    (hB : μ ≤ |(x - b) * t - y * (r - b)|) (hxx : x ≤ x') :
    μ ≤ |(x' - b) * t - y * (r - b)| := by
  have hxx' : 0 ≤ x' - x := by linarith
  exact SixBoundaryExterior.absP hB (by linarith) (by nlinarith [mul_nonneg hxx' ht0])

/-- Projection step for the anchor `C`: `[CXQ] > 0` and nondecreasing. -/
theorem xProj_C {c μ x y r t x' : ℝ} (ht0 : 0 ≤ t) (hy0 : 0 ≤ y) (hxc : c ≤ x) (hrc : r ≤ c)
    (hC : μ ≤ |(x - c) * t - y * (r - c)|) (hxx : x ≤ x') :
    μ ≤ |(x' - c) * t - y * (r - c)| := by
  have hxx' : 0 ≤ x' - x := by linarith
  have h1 := mul_nonneg (sub_nonneg.2 hxc) ht0
  have h2 := mul_nonneg hy0 (sub_nonneg.2 hrc)
  exact SixBoundaryExterior.absP hC (by nlinarith) (by nlinarith [mul_nonneg hxx' ht0])

/-- Projection step for the anchor `D`: `[DXQ] < 0` at both ends of the segment. -/
theorem xProj_D {h c d μ x y r t x' : ℝ} (hμ : 0 < μ) (hh : 0 < h) (hc0 : 0 < c) (hd : 0 < d) (hdh : d ≤ h)
    (hx1 : x ≤ 1) (hyd : y ≤ d) (hr0 : 0 ≤ r) (ht0 : 0 ≤ t) (hrc : r ≤ c)
    (hT : h * r + c * t ≤ h * c) (_hcap : (1 - c) * y - d * (x - c) ≤ 0)
    (hCD : μ ≤ d * (x - c) - (1 - c) * y) (hD : μ ≤ |(x - 1) * (t - d) - (y - d) * (r - 1)|)
    (hxx : x ≤ x') (hx'1 : x' ≤ 1) :
    μ ≤ |(x' - 1) * (t - d) - (y - d) * (r - 1)| := by
  have hxx' : 0 ≤ x' - x := by linarith
  have hneg : (x - 1) * (t - d) - (y - d) * (r - 1) ≤ 0 := by
    apply t0_le hh hc0 hr0 ht0 hT
      (g0 := (x - 1) * (0 - d) - (y - d) * (0 - 1)) (gC := (x - 1) * (0 - d) - (y - d) * (c - 1))
      (gH := (x - 1) * (h - d) - (y - d) * (0 - 1)) (by ring)
    · nlinarith [mul_nonneg hc0.le (sub_nonneg.2 hyd)]
    · nlinarith
    · nlinarith [mul_nonneg (sub_nonneg.2 hx1) (sub_nonneg.2 hdh)]
  have h1 : (x - 1) * (t - d) - (y - d) * (r - 1) ≤ -μ := by
    rcases le_abs'.1 hD with h1 | h1
    · exact h1
    · linarith
  have h2 : (1 - 1) * (t - d) - (y - d) * (r - 1) ≤ -μ := by
    have k1 := mul_le_mul_of_nonneg_left hrc (sub_nonneg.2 hyd)
    have k2 := mul_nonneg hd.le (sub_nonneg.2 hx1)
    nlinarith
  rw [le_abs]; right
  rcases eq_or_lt_of_le hx1 with hx | hx
  · have : x' = 1 := by linarith
    subst this; linarith
  · have e : (1 - x) * ((x' - 1) * (t - d) - (y - d) * (r - 1)) =
        (1 - x') * ((x - 1) * (t - d) - (y - d) * (r - 1)) +
          (x' - x) * ((1 - 1) * (t - d) - (y - d) * (r - 1)) := by ring
    have : (1 - x) * ((x' - 1) * (t - d) - (y - d) * (r - 1)) ≤ (1 - x) * (-μ) := by
      rw [e]; nlinarith [mul_le_mul_of_nonneg_left h1 (sub_nonneg.2 hx'1),
        mul_le_mul_of_nonneg_left h2 hxx']
    have := le_of_mul_le_mul_left this (by linarith)
    linarith

/-- Projection step for the anchor `F`: `[FXQ] < 0` and nonincreasing. -/
theorem xProj_F {h c f μ x y r t x' : ℝ} (hh : 0 < h) (hh1 : h < 1) (hc0 : 0 < c) (hf0 : 0 ≤ f)
    (hfc : f ≤ c) (hxc : c ≤ x) (hy0 : 0 ≤ y) (hy1 : y ≤ 1) (hr0 : 0 ≤ r) (ht0 : 0 ≤ t)
    (ht1 : t ≤ 1) (hT : h * r + c * t ≤ h * c)
    (hF : μ ≤ |(x - f) * (t - 1) - (y - 1) * (r - f)|) (hxx : x ≤ x') :
    μ ≤ |(x' - f) * (t - 1) - (y - 1) * (r - f)| := by
  have hxx' : 0 ≤ x' - x := by linarith
  have ht1' : (0:ℝ) ≤ 1 - t := by linarith
  refine SixBoundaryExterior.absN hF ?_ (by nlinarith [mul_nonneg hxx' ht1'])
  have hy1' : (0:ℝ) ≤ 1 - y := by linarith
  have hxf : (0:ℝ) ≤ x - f := by linarith
  apply t0_le hh hc0 hr0 ht0 hT
    (g0 := (x - f) * (0 - 1) - (y - 1) * (0 - f)) (gC := (x - f) * (0 - 1) - (y - 1) * (c - f))
    (gH := (x - f) * (h - 1) - (y - 1) * (0 - f)) (by ring)
  · nlinarith [mul_nonneg hf0 hy1']
  · nlinarith [mul_nonneg hy0 (sub_nonneg.2 hfc)]
  · nlinarith [mul_nonneg hxf (sub_nonneg.2 hh1.le), mul_nonneg hf0 hy1']

/-- Projection step for the anchor `A`, under the sign condition `(t - a)[AQX] ≤ 0`. -/
theorem xProj_A {a μ x y r t x' : ℝ} (hμ : 0 < μ) (hA : μ ≤ |x * (t - a) - r * (y - a)|)
    (hxx : x ≤ x') (h3 : (t - a) * (r * (y - a) - x * (t - a)) ≤ 0) :
    μ ≤ |x' * (t - a) - r * (y - a)| := by
  have hxx' : 0 ≤ x' - x := by linarith
  rcases le_abs'.1 hA with h1 | h1
  · have hta : t - a ≤ 0 := by
      by_contra hc'
      push Not at hc'
      nlinarith
    have hta' : (0:ℝ) ≤ -(t - a) := by linarith
    rw [le_abs]; right; nlinarith [mul_nonneg hxx' hta']
  · have hta : 0 ≤ t - a := by
      by_contra hc'
      push Not at hc'
      nlinarith
    rw [le_abs]; left; nlinarith [mul_nonneg hxx' hta]

/-- The coordinate orders of the three placements, from a positive least area. -/
theorem orders {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (_hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q)) :
    (c < X.1 ∧ 0 < X.2 ∧ X.2 < d) ∧ (Y.1 < f ∧ 0 < Y.1 ∧ h < Y.2) ∧
      (0 < Q.1 ∧ 0 < Q.2 ∧ h * Q.1 + c * Q.2 < h * c) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨⟨x0, x1, y0, y1⟩, cX⟩ := hX
  obtain ⟨⟨z0, z1, w0, w1⟩, cY⟩ := hY
  obtain ⟨q0, q1, q2⟩ := hQT
  have nBCX := sarea_ne_zero_of_min_pos hpos 2 3 6
  have nCDX := sarea_ne_zero_of_min_pos hpos 3 4 6
  have nAHY := sarea_ne_zero_of_min_pos hpos 0 1 7
  have nFHY := sarea_ne_zero_of_min_pos hpos 5 1 7
  have nAHQ := sarea_ne_zero_of_min_pos hpos 0 1 8
  have nBCQ := sarea_ne_zero_of_min_pos hpos 2 3 8
  have nCHQ := sarea_ne_zero_of_min_pos hpos 3 1 8
  change sarea (b, 0) (c, 0) X ≠ 0 at nBCX
  change sarea (c, 0) (1, d) X ≠ 0 at nCDX
  change sarea (0, a) (0, h) Y ≠ 0 at nAHY
  change sarea (f, 1) (0, h) Y ≠ 0 at nFHY
  change sarea (0, a) (0, h) Q ≠ 0 at nAHQ
  change sarea (b, 0) (c, 0) Q ≠ 0 at nBCQ
  change sarea (c, 0) (0, h) Q ≠ 0 at nCHQ
  simp only [sarea] at cX cY q2 nBCX nCDX nAHY nFHY nAHQ nBCQ nCHQ
  have y0' : 0 < X.2 := lt_of_le_of_ne y0 (fun e => nBCX (by rw [← e]; ring))
  have z0' : 0 < Y.1 := lt_of_le_of_ne z0 (fun e => nAHY (by rw [← e]; ring))
  have r0' : 0 < Q.1 := lt_of_le_of_ne q0 (fun e => nAHQ (by rw [← e]; ring))
  have t0' : 0 < Q.2 := lt_of_le_of_ne q1 (fun e => nBCQ (by rw [← e]; ring))
  have cX' : (1 - c) * (X.2 - 0) - (d - 0) * (X.1 - c) < 0 := lt_of_le_of_ne cX nCDX
  have cY' : (0 - f) * (Y.2 - 1) - (h - 1) * (Y.1 - f) < 0 := lt_of_le_of_ne cY nFHY
  have cQ' : 0 < (0 - c) * (Q.2 - 0) - (h - 0) * (Q.1 - c) := lt_of_le_of_ne q2 (Ne.symm nCHQ)
  refine ⟨⟨by nlinarith, y0', by nlinarith⟩, ⟨by nlinarith, z0', by nlinarith⟩, ⟨r0', t0', by linarith⟩⟩

/-- `μ` bounds the doubled area of every triangle of distinct indices of a configuration of least
area at least `μ/2`. -/
theorem mu_le_abs {n : ℕ} {P : Fin n → Point} {μ : ℝ} (hmin : μ / 2 ≤ minTriangleArea P)
    (i j k : Fin n) (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide)
    (hik : i ≠ k := by decide) : μ ≤ |sarea (P i) (P j) (P k)| := by
  have := area_of_le_min hmin i j k hij hjk hik
  rw [triangleArea_eq] at this; linarith

theorem anchorPts_eq (a h b c d f : ℝ) (X Y Z : Point) (i : Fin 6) :
    anchorPts a h b c d f i = nConfig a h b c d f X Y Z (Fin.castLE (by norm_num) i) := by
  fin_cases i <;> rfl

/-- The anchor-pair bound of a free point, from the least area. -/
theorem anchorPairBound_of_min {a h b c d f μ : ℝ} {X Y Z : Point}
    (hmin : μ / 2 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    AnchorPairBound a h b c d f μ X := by
  intro i j hij
  rw [anchorPts_eq a h b c d f X Y Z i, anchorPts_eq a h b c d f X Y Z j]
  have hi := i.isLt
  have hj := j.isLt
  exact mu_le_abs hmin (Fin.castLE _ i) (Fin.castLE _ j) 6
    (fun e => hij.ne (Fin.ext (by simpa [Fin.ext_iff] using e)))
    (fun e => by simp [Fin.ext_iff] at e; omega) (fun e => by simp [Fin.ext_iff] at e; omega)

/-- The right-cap half of `sideCap_projection`. -/
theorem projection_capR {a h b c d f μ : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hμ : 7 / 64 ≤ μ) (hmin : μ / 2 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    ∀ x' : ℝ, X.1 ≤ x' → x' ≤ 1 →
      AnchorPairBound a h b c d f μ (x', X.2) ∧
        (∀ i : Fin 6, i ≠ 0 → μ ≤ |sarea (anchorPts a h b c d f i) (x', X.2) Q|) ∧
        ((Q.2 - a) * sarea (ptA a) Q X ≤ 0 → μ ≤ |sarea (ptA a) (x', X.2) Q|) := by
  intro x' hxx hx'1
  have hμ0 : 0 < μ := by linarith
  have hmin' : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨⟨hxc, hy0, hyd⟩, -, ⟨hr0, ht0, hT⟩⟩ := orders hN hX hY hQ hQT hpos
  have hBQX := (sarea_BQX_neg hN hX.1 hY.1 hQ hQT hmin').1 hX
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨⟨x0, x1, y0, y1⟩, cX⟩ := hX
  obtain ⟨q0, q1, q2, q3⟩ := hQ
  have hth : Q.2 ≤ h := by nlinarith
  have hrc : Q.1 ≤ c := by nlinarith
  have hCD : μ ≤ d * (X.1 - c) - (1 - c) * X.2 := by
    have := mu_le_abs hmin 3 4 6
    change μ ≤ |sarea (c, 0) (1, d) X| at this
    rw [abs_of_nonpos cX] at this
    simp only [sarea] at this; linarith
  have bA := mu_le_abs hmin 0 6 8
  have bH := mu_le_abs hmin 1 6 8
  have bB := mu_le_abs hmin 2 6 8
  have bC := mu_le_abs hmin 3 6 8
  have bD := mu_le_abs hmin 4 6 8
  have bF := mu_le_abs hmin 5 6 8
  change μ ≤ |sarea (0, a) X Q| at bA
  change μ ≤ |sarea (0, h) X Q| at bH
  change μ ≤ |sarea (b, 0) X Q| at bB
  change μ ≤ |sarea (c, 0) X Q| at bC
  change μ ≤ |sarea (1, d) X Q| at bD
  change μ ≤ |sarea (f, 1) X Q| at bF
  simp only [sarea] at bA bH bB bC bD bF hBQX cX
  refine ⟨SixBoundaryExterior.anchorPairBound_slide_capR hN hμ0 X ⟨⟨x0, x1, y0, y1⟩, cX⟩
    (anchorPairBound_of_min hmin) x' hxx hx'1, fun i hi => ?_, fun h3 => ?_⟩
  · fin_cases i
    · exact absurd rfl hi
    · have := xProj_H (h := h) (c := c) (d := d) (μ := μ) (x := X.1) (y := X.2) (r := Q.1) (t := Q.2) (x' := x') (by linarith) hyd.le hdh hy0.le hxc.le (by linarith) hth hT.le
        (by convert bH using 2; ring) hxx
      simp only [anchorPts, Fin.reduceFinMk, Matrix.cons_val, sarea]
      convert this using 2; ring
    · have := xProj_B (b := b) (μ := μ) (x := X.1) (y := X.2) (r := Q.1) (t := Q.2) (x' := x') ht0.le (by linarith) (by convert bB using 2; ring) hxx
      simp only [anchorPts, Fin.reduceFinMk, Matrix.cons_val, sarea]
      convert this using 2; ring
    · have := xProj_C (c := c) (μ := μ) (x := X.1) (y := X.2) (r := Q.1) (t := Q.2) (x' := x') ht0.le hy0.le hxc.le hrc (by convert bC using 2; ring) hxx
      simp only [anchorPts, Fin.reduceFinMk, Matrix.cons_val, sarea]
      convert this using 2; ring
    · have := xProj_D (h := h) (c := c) (d := d) (μ := μ) (x := X.1) (y := X.2) (r := Q.1) (t := Q.2) (x' := x') hμ0 (by linarith) (by linarith) (by linarith) hdh x1 hyd.le
        hr0.le ht0.le hrc hT.le (by linarith) hCD (by convert bD using 2) hxx hx'1
      simp only [anchorPts, Fin.reduceFinMk, Matrix.cons_val, sarea]
      convert this using 2
    · have := xProj_F (h := h) (c := c) (f := f) (μ := μ) (x := X.1) (y := X.2) (r := Q.1) (t := Q.2) (x' := x') (by linarith) hh (by linarith) (by linarith) hfc hxc.le hy0.le
        y1 hr0.le ht0.le q3 hT.le (by convert bF using 2) hxx
      simp only [anchorPts, Fin.reduceFinMk, Matrix.cons_val, sarea]
      convert this using 2
  · simp only [sarea] at h3 ⊢
    have := xProj_A (a := a) (μ := μ) (x := X.1) (y := X.2) (r := Q.1) (t := Q.2) (x' := x') hμ0 (by convert bA using 2; ring) hxx (by linarith)
    convert this using 2; ring

/-- The anchors of the transposed parameters are the transposed anchors, relabelled. -/
theorem sarea_anchorPts_transpose (a h b c d f : ℝ) (P Q : Point) (i : Fin 6) :
    sarea (anchorPts b c a h f d i) (transpose P) (transpose Q) =
      -sarea (anchorPts a h b c d f (![2, 3, 0, 1, 5, 4] i)) P Q := by
  fin_cases i <;> simp [anchorPts, sarea, transpose]

/-- Let `X = (x, y) ∈ CD(1,0)`, `Y = (z, w) ∈ FH(0,1)`, `Q = (r, t) ∈ T₀`, and let `7/64 ≤ μ`
with every doubled area of the configuration at least `μ`. For every `x ≤ x' ≤ 1`, the point
`X' = (x', y)` has all triangles with two anchors (`SixBoundaryExterior.anchorPairBound_slide`) and the
triangles `X'Q` with `B, C, H, F` or `D` of unsigned doubled area at least `μ`; the triangle
`X'QA` too when `(t - a)[AQX] ≤ 0` (which makes `|[AQX]|` nondecreasing in `x`; it follows from
`(t - a)(y - a) ≤ 0`). Transposed: for `w ≤ w' ≤ 1`, `Y' = (z, w')` has all triangles with two
anchors and with `Q` and `A, H, C, D` or `F` of unsigned doubled area at least `μ`, and with `Q`
and `B` when `(r - b)[BQY] ≥ 0`. (Anchors are indexed as in `nConfig`: `A, H, B, C, D, F` =
`0, …, 5`.) -/
theorem sideCap_projection {a h b c d f μ : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hμ : 7 / 64 ≤ μ) (hmin : μ / 2 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    (∀ x' : ℝ, X.1 ≤ x' → x' ≤ 1 →
      AnchorPairBound a h b c d f μ (x', X.2) ∧
        (∀ i : Fin 6, i ≠ 0 → μ ≤ |sarea (anchorPts a h b c d f i) (x', X.2) Q|) ∧
        ((Q.2 - a) * sarea (ptA a) Q X ≤ 0 → μ ≤ |sarea (ptA a) (x', X.2) Q|)) ∧
    (∀ w' : ℝ, Y.2 ≤ w' → w' ≤ 1 →
      AnchorPairBound a h b c d f μ (Y.1, w') ∧
        (∀ i : Fin 6, i ≠ 2 → μ ≤ |sarea (anchorPts a h b c d f i) (Y.1, w') Q|) ∧
        (0 ≤ (Q.1 - b) * sarea (ptB b) Q Y → μ ≤ |sarea (ptB b) (Y.1, w') Q|)) := by
  refine ⟨projection_capR hN hX hY hQ hQT hμ hmin, fun w' hw hw1 => ?_⟩
  have hμ0 : 0 < μ := by linarith
  have T := transpose_invariant a h b c d f Y X Q
  have hNt : NAnchors b c a h f d := T.1.1 hN
  have hYt : InCapR h f (transpose Y) := T.2.2.2.2.2.2.1.1 hY
  have hXt : InCapL d c (transpose X) := (transpose_invariant a h b c d f X Y Q).2.2.2.2.2.1.1 hX
  have hQt : InT0 c h (transpose Q) := (transpose_invariant a h b c d f Q X Y).2.2.2.2.2.2.2.2.2.2.2.2.1 hQT
  have hQsq : transpose Q ∈ unitSquare := (transpose_invariant a h b c d f Q X Y).2.1.1 hQ
  have hmint : μ / 2 ≤ minTriangleArea (nConfig b c a h f d (transpose Y) (transpose X)
      (transpose Q)) := by
    rw [T.2.2.1, show nConfig a h b c d f Y X Q = nConfig a h b c d f X Y Q ∘ Equiv.swap 6 7 by
      funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]; exact hmin
  have K := projection_capR hNt hYt hXt hQsq hQt hμ hmint w' hw hw1
  have ePt : ((w', (transpose Y).2) : Point) = transpose (Y.1, w') := rfl
  refine ⟨SixBoundaryExterior.anchorPairBound_slide hN hμ0 |>.2 Y hY (anchorPairBound_of_min (Y := X) (Z := Q)
    (by rw [show nConfig a h b c d f Y X Q = nConfig a h b c d f X Y Q ∘ Equiv.swap 6 7 by
      funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]; exact hmin)) w' hw hw1,
    fun i hi => ?_, fun h4 => ?_⟩
  · -- the index `j` of the transposed anchor
    have key : ∀ j : Fin 6, j ≠ 0 → μ ≤ |sarea (anchorPts a h b c d f (![2, 3, 0, 1, 5, 4] j))
        (Y.1, w') Q| := by
      intro j hj
      have := K.2.1 j hj
      rw [ePt, sarea_anchorPts_transpose, abs_neg] at this
      exact this
    fin_cases i
    · exact key 2 (by decide)
    · exact key 3 (by decide)
    · exact absurd rfl hi
    · exact key 1 (by decide)
    · exact key 5 (by decide)
    · exact key 4 (by decide)
  · have hc3 : (transpose Q).2 - b = Q.1 - b := rfl
    have h3 : ((transpose Q).2 - b) * sarea (ptA b) (transpose Q) (transpose Y) ≤ 0 := by
      have e : sarea (ptA b) (transpose Q) (transpose Y) = -sarea (ptB b) Q Y := by
        simp only [sarea, transpose]; ring
      rw [hc3, e]; linarith
    have := K.2.2 h3
    rw [ePt] at this
    have e : sarea (ptA b) (transpose (Y.1, w')) (transpose Q) = -sarea (ptB b) (Y.1, w') Q := by
      simp only [sarea, transpose]; ring
    rw [e, abs_neg] at this
    exact this

/-- A triangle with the two cap points and a lower-left anchor `V = (p, q)` (`A, H, B, C`): the
area `[V X' Y']` is positive and nondecreasing in `x'` and `w'` when its two partial slopes
`w' - q ≥ 0` and `x' - p ≥ 0` are, with `[VXY] ≥ μ` at the start. -/
theorem xy_mono {μ p q x y z w x' w' : ℝ} (_hμ : 0 < μ)
    (hpos : 0 ≤ (x - p) * (w - q) - (y - q) * (z - p))
    (hV : μ ≤ |(x - p) * (w - q) - (y - q) * (z - p)|) (hxx : x ≤ x') (hww : w ≤ w')
    (hwq : q ≤ w) (hxp : p ≤ x) :
    μ ≤ |(x' - p) * (w' - q) - (y - q) * (z - p)| := by
  refine SixBoundaryExterior.absP hV hpos ?_
  nlinarith [mul_nonneg (sub_nonneg.2 hxx) (by linarith : (0:ℝ) ≤ w' - q),
    mul_nonneg (sub_nonneg.2 hxp) (sub_nonneg.2 hww)]

theorem xy_D {c d μ x y z x' w' : ℝ} (hx1 : x ≤ 1) (hx'1 : x' ≤ 1) (hzc : z ≤ c) (hyd : y ≤ d)
    (hdw : d ≤ w') (hd0 : 0 ≤ d) (hCD : μ ≤ d * (x - c) - (1 - c) * y) :
    μ ≤ |(x' - 1) * (w' - d) - (y - d) * (z - 1)| := by
  rw [le_abs]; right
  have k1 := mul_nonneg (sub_nonneg.2 hx'1) (sub_nonneg.2 hdw)
  have k2 := mul_le_mul_of_nonneg_left (by linarith : 1 - c ≤ 1 - z) (sub_nonneg.2 hyd)
  have k3 := mul_nonneg hd0 (sub_nonneg.2 hx1)
  nlinarith

theorem xy_F {h f μ y z w x' w' : ℝ} (hw1 : w ≤ 1) (hw'1 : w' ≤ 1) (hyh : y ≤ h) (hfx : f ≤ x')
    (hzf : z ≤ f) (hf0 : 0 ≤ f) (hFH : μ ≤ (1 - h) * (f - z) - f * (1 - w)) :
    μ ≤ |(x' - f) * (w' - 1) - (y - 1) * (z - f)| := by
  rw [le_abs]; right
  have k1 := mul_nonneg (sub_nonneg.2 hfx) (sub_nonneg.2 hw'1)
  have k2 := mul_le_mul_of_nonneg_left (by linarith : 1 - h ≤ 1 - y) (sub_nonneg.2 hzf)
  have k3 := mul_nonneg hf0 (sub_nonneg.2 hw1)
  nlinarith

theorem xy_pos {p q x y z w : ℝ} (hxz : z < x) (hyw : y < w) (hz0 : 0 ≤ z) (hy0 : 0 ≤ y)
    (hp : p ≤ z ∨ (0 ≤ x - p ∧ q = 0)) (hq : q ≤ w) (hqy : q ≤ y ∨ (p = 0 ∧ 0 ≤ w - q)) :
    0 ≤ (x - p) * (w - q) - (y - q) * (z - p) := by
  rcases hp with hp | ⟨hp, rfl⟩
  · rcases hqy with hqy | ⟨rfl, hq'⟩
    · nlinarith [mul_nonneg (sub_nonneg.2 hxz.le) (sub_nonneg.2 hq),
        mul_nonneg (sub_nonneg.2 hp) (sub_nonneg.2 hyw.le), mul_nonneg (sub_nonneg.2 hqy) (sub_nonneg.2 hp)]
    · nlinarith [mul_nonneg (sub_nonneg.2 hxz.le) hq', mul_nonneg hz0 (sub_nonneg.2 hyw.le)]
  · nlinarith [mul_nonneg hp (sub_nonneg.2 hyw.le), mul_nonneg hy0 (sub_nonneg.2 hxz.le)]

/-- In the setting of `sideCap_projection`, every triangle using both cap points stays above `μ`
when `x` and `w` increase to `1`: for all `x ≤ x' ≤ 1` and `w ≤ w' ≤ 1`, with `X' = (x', y)`,
`Y' = (z, w')`, the triangles `VX'Y'` (`V` an anchor) and `QX'Y'` have unsigned doubled area at
least `μ`. (`[AXY], [HXY], [BXY], [CXY], [QXY]` are positive and nondecreasing in `x` and `w`;
`-[DX'Y'] ≥ (d - y)(1 - z) ≥ μ` and `-[FX'Y'] ≥ (1 - y)(f - z) ≥ μ`; so each single projection,
and the two-segment path, are covered.) -/
theorem pair_projection {a h b c d f μ : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hμ : 7 / 64 ≤ μ) (hmin : μ / 2 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    ∀ x' w' : ℝ, X.1 ≤ x' → x' ≤ 1 → Y.2 ≤ w' → w' ≤ 1 →
      (∀ i : Fin 6, μ ≤ |sarea (anchorPts a h b c d f i) (x', X.2) (Y.1, w')|) ∧
        μ ≤ |sarea Q (x', X.2) (Y.1, w')| := by
  intro x' w' hxx hx1 hww hw1
  have hμ0 : 0 < μ := by linarith
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨⟨hxc, hy0, hyd⟩, ⟨hzf, hz0, hhw⟩, ⟨hr0, ht0, hT⟩⟩ := orders hN hX hY hQ hQT hpos
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨⟨x0, x1, y0, y1⟩, cX⟩ := hX
  obtain ⟨⟨z0, z1, w0, w1⟩, cY⟩ := hY
  have hth : Q.2 < h := by nlinarith
  have hrc : Q.1 < c := by nlinarith
  obtain ⟨X1, X2⟩ := X
  obtain ⟨Y1, Y2⟩ := Y
  obtain ⟨r, t⟩ := Q
  simp only at hxc hy0 hyd hzf hz0 hhw hr0 ht0 hT hth hrc x0 x1 y0 y1 z0 z1 w0 w1 hxx hww ⊢
  have hCD : μ ≤ d * (X1 - c) - (1 - c) * X2 := by
    have := mu_le_abs hmin 3 4 6
    change μ ≤ |sarea (c, 0) (1, d) (X1, X2)| at this
    rw [abs_of_nonpos cX] at this
    simp only [sarea] at this; linarith
  have hFH : μ ≤ (1 - h) * (f - Y1) - f * (1 - Y2) := by
    have := mu_le_abs hmin 5 1 7
    change μ ≤ |sarea (f, 1) (0, h) (Y1, Y2)| at this
    rw [abs_of_nonpos cY] at this
    simp only [sarea] at this; linarith
  have bA := mu_le_abs hmin 0 6 7
  have bH := mu_le_abs hmin 1 6 7
  have bB := mu_le_abs hmin 2 6 7
  have bC := mu_le_abs hmin 3 6 7
  have bQ := mu_le_abs hmin 8 6 7
  change μ ≤ |sarea (0, a) (X1, X2) (Y1, Y2)| at bA
  change μ ≤ |sarea (0, h) (X1, X2) (Y1, Y2)| at bH
  change μ ≤ |sarea (b, 0) (X1, X2) (Y1, Y2)| at bB
  change μ ≤ |sarea (c, 0) (X1, X2) (Y1, Y2)| at bC
  change μ ≤ |sarea (r, t) (X1, X2) (Y1, Y2)| at bQ
  simp only [sarea] at bA bH bB bC bQ
  have hxz : Y1 < X1 := by linarith
  have hyw : X2 < Y2 := by linarith
  have pA : 0 ≤ (X1 - 0) * (Y2 - a) - (X2 - a) * (Y1 - 0) :=
    xy_pos hxz hyw hz0.le hy0.le (Or.inl hz0.le) (by linarith) (Or.inr ⟨rfl, by linarith⟩)
  have pH : 0 ≤ (X1 - 0) * (Y2 - h) - (X2 - h) * (Y1 - 0) :=
    xy_pos hxz hyw hz0.le hy0.le (Or.inl hz0.le) (by linarith) (Or.inr ⟨rfl, by linarith⟩)
  have pB : 0 ≤ (X1 - b) * (Y2 - 0) - (X2 - 0) * (Y1 - b) :=
    xy_pos hxz hyw hz0.le hy0.le (Or.inr ⟨by linarith, rfl⟩) (by linarith) (Or.inl hy0.le)
  have pC : 0 ≤ (X1 - c) * (Y2 - 0) - (X2 - 0) * (Y1 - c) :=
    xy_pos hxz hyw hz0.le hy0.le (Or.inr ⟨by linarith, rfl⟩) (by linarith) (Or.inl hy0.le)
  have pO : 0 ≤ (X1 - 0) * (Y2 - 0) - (X2 - 0) * (Y1 - 0) :=
    xy_pos hxz hyw hz0.le hy0.le (Or.inl hz0.le) (by linarith) (Or.inl hy0.le)
  refine ⟨fun i => ?_, ?_⟩
  · fin_cases i <;> simp only [anchorPts, Fin.reduceFinMk, Matrix.cons_val, sarea]
    · exact xy_mono hμ0 pA bA hxx hww (by linarith) (by linarith)
    · exact xy_mono hμ0 pH bH hxx hww (by linarith) (by linarith)
    · exact xy_mono hμ0 pB bB hxx hww (by linarith) (by linarith)
    · exact xy_mono hμ0 pC bC hxx hww (by linarith) (by linarith)
    · exact xy_D x1 hx1 (by linarith) hyd.le (by linarith) (by linarith) hCD
    · exact xy_F w1 hw1 (by linarith) (by linarith) hzf.le (by linarith) hFH
  · -- `[QXY] ≥ 0` by the three vertices of `T₀`
    have hg : 0 ≤ (X1 - r) * (Y2 - t) - (X2 - t) * (Y1 - r) := by
      have := SixBoundaryTwoSideProjection.t0_le (h := h) (c := c) (r := r) (t := t)
        (g := -((X1 - r) * (Y2 - t) - (X2 - t) * (Y1 - r)))
        (g0 := -((X1 - 0) * (Y2 - 0) - (X2 - 0) * (Y1 - 0)))
        (gC := -((X1 - c) * (Y2 - 0) - (X2 - 0) * (Y1 - c)))
        (gH := -((X1 - 0) * (Y2 - h) - (X2 - h) * (Y1 - 0))) (by linarith) (by linarith)
        hr0.le ht0.le hT.le (by ring) (by linarith) (by linarith) (by linarith)
      linarith
    exact xy_mono hμ0 hg bQ hxx hww (by linarith) (by linarith)

end Heilbronn.Nine.SixBoundaryTwoSideProjection
