module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.SevenBoundary.Setting
public import Heilbronn.Nine.EightBoundary.RadialCatalogue
public import Heilbronn.Nine.Corners.CornerFamilies
public import Heilbronn.Nine.Hulls.QuadrilateralHull
public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle
public import Heilbronn.Nine.Global.GlobalCompletion

/-! # Continuous cap exclusions with seven boundary contacts

Exclusions for the normalized seven-boundary form `SevenNormal a h b c d e f` of
`Heilbronn/Nine/SevenBoundary/Setting.lean`: the anchors `A=(0,a), H=(0,h), B=(b,0), C=(c,0),
D=(1,d), E=(1,e), F=(f,1)` and two free points `P, Q` anywhere in the closed square. The standing
hypothesis is that every triangle has area at least `7/128` (doubled threshold `s = 7/64`);
`K = 4 + 2√3` (`capK`) is the constant of `twoInteriorPointLemma`. Each exclusion
"no free point in the region `W`" is stated as "a point in the closed region `W` gives a triangle
of area `< 7/128`". When the argument uses only the seven anchors and that one point, the
statement is for the eight-point configuration `sevenConfig₁ a h b c d e f X`, which applies to
either free point by `le_min_comp`; bounds involving only anchor triangles are stated for
`sevenAnchorConfig`.

## Main results

* `minTriangleArea_lt_of_mem_ABH`: no free point in the ear `ABH`;
* `minTriangleArea_lt_of_pair_mem_BCF_HCF_HBF`: none of `BCF`, `HCF`, `HBF` contains both free points;
* `minTriangleArea_lt_of_pair_mem_ABFH`: the quadrilateral `ABFH` does not contain both free points;
* `minTriangleArea_lt_of_mem_ABC`: no free point in the ear `ABC`;
* `minTriangleArea_lt_of_pair_mem_ACF`: `[ACF] < 13/16 < Ks`, so `ACF` does not contain both free points;
* `minTriangleArea_lt_of_mem_AHF_HCF`: no free point in `AHF ∩ HCF`;
* `minTriangleArea_lt_of_mem_CDE`: `[CDE] < 3s`, so no free point in `CDE`;
* `b_bounds_of_anchor_min`: `1/8 < b ≤ 1/2`, `c ≥ b²/(b-s)` and `b - s - b² > 0`;
* `minTriangleArea_lt_of_pair_mem_CDF_DEF`: `[CDF] < 13/16` and `[DEF] < 49/64`, so neither triangle contains both free points;
* `minTriangleArea_lt_of_inNearUpperCap`: no free point in the nearer upper cap `conv{H, F, (0,1)}`;
* `minTriangleArea_lt_of_pair_inFarUpperCap`: the far upper cap `conv{F, E, (1,1)}` does not contain both free points;
* `farCapPoint_of_not_both_inHeptagon`: with the lower-cap exclusions of `GlobalCompletion.minTriangleArea_lt_of_lowerCap`, a
  configuration with a free point outside the heptagon has exactly one free point beyond `EF`
  and the other inside the heptagon.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundaryCaps

open SevenBoundary RadialCatalogue

/-- The two-interior-point constant `K = 4 + 2√3` of `twoInteriorPointLemma`. -/
def capK : ℝ := 4 + 2 * Real.sqrt 3

/-! ### Helpers: area costs from the standing hypothesis -/

/-- Evaluates a signed area of a named configuration. -/
macro "sa_eval" : tactic =>
  `(tactic| (simp [sevenConfig, sevenConfig₁, sevenAnchorConfig, sarea] <;> ring))

/-- A triangle of nonnegative orientation in a configuration of least area at least `7/128` has
doubled signed area at least `s = 7/64` (stated with the signed area evaluated to `v`). -/
theorem cost {n : ℕ} {P : Fin n → Point} (hmin : 7 / 128 ≤ minTriangleArea P) (i j k : Fin n)
    {v : ℝ} (hv : sarea (P i) (P j) (P k) = v) (hpos : 0 ≤ v)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    7 / 64 ≤ v := by
  have := two_mul_le_sarea_of_nonneg (by norm_num : (0 : ℝ) < 7 / 128) (hv ▸ hpos)
    (area_of_le_min hmin i j k hij hjk hik)
  rw [hv] at this; linarith

/-- The same for a triangle of nonpositive orientation: doubled signed area at most `-s`. -/
theorem cost_neg {n : ℕ} {P : Fin n → Point} (hmin : 7 / 128 ≤ minTriangleArea P) (i j k : Fin n)
    {v : ℝ} (hv : sarea (P i) (P j) (P k) = v) (hneg : v ≤ 0)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    v ≤ -(7 / 64) := by
  have := sarea_le_of_nonpos (by norm_num : (0 : ℝ) < 7 / 128) (hv ▸ hneg)
    (area_of_le_min hmin i j k hij hjk hik)
  rw [hv] at this; linarith

theorem sevenAnchorConfig_eq₁ (a h b c d e f : ℝ) (X : Point) :
    sevenAnchorConfig a h b c d e f = sevenConfig₁ a h b c d e f X ∘ Fin.castSucc := by
  funext i; fin_cases i <;> rfl

theorem sevenConfig₁_eq_left (a h b c d e f : ℝ) (P Q : Point) :
    sevenConfig₁ a h b c d e f P = sevenConfig a h b c d e f P Q ∘ Fin.castSucc := by
  funext i; fin_cases i <;> rfl

theorem sevenConfig₁_eq_right (a h b c d e f : ℝ) (P Q : Point) :
    sevenConfig₁ a h b c d e f Q = sevenConfig a h b c d e f P Q ∘ ![0, 1, 2, 3, 4, 5, 6, 8] := by
  funext i; fin_cases i <;> rfl

/-- The anchors and one free point form a sub-configuration. -/
theorem min₁_left {a h b c d e f : ℝ} {P Q : Point} :
    minTriangleArea (sevenConfig a h b c d e f P Q) ≤ minTriangleArea (sevenConfig₁ a h b c d e f P) := by
  rw [sevenConfig₁_eq_left a h b c d e f P Q]
  exact le_min_comp (by norm_num) _ (Fin.castSucc_injective _)

theorem min₁_right {a h b c d e f : ℝ} {P Q : Point} :
    minTriangleArea (sevenConfig a h b c d e f P Q) ≤ minTriangleArea (sevenConfig₁ a h b c d e f Q) := by
  rw [sevenConfig₁_eq_right a h b c d e f P Q]
  exact le_min_comp (by norm_num) _ (by decide)

theorem minAnchor_of₁ {a h b c d e f : ℝ} {X : Point} :
    minTriangleArea (sevenConfig₁ a h b c d e f X) ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) := by
  rw [sevenAnchorConfig_eq₁ a h b c d e f X]
  exact le_min_comp (by norm_num) _ (Fin.castSucc_injective _)

/-- The anchor costs: the doubled areas `bL, aM, dM, (1-c)R, (1-f)R, (1-f)(1-h) + f(1-e), fL` of
the anchor triangles `ABH, ABC, BCD, CDE, DEF, EFH, FHA` are at least `s` (`L = h - a`,
`M = c - b`, `R = e - d`). -/
structure AnchorCosts (a h b c d e f : ℝ) : Prop where
  ABH : 7 / 64 ≤ b * (h - a)
  ABC : 7 / 64 ≤ a * (c - b)
  BCD : 7 / 64 ≤ d * (c - b)
  CDE : 7 / 64 ≤ (1 - c) * (e - d)
  DEF : 7 / 64 ≤ (1 - f) * (e - d)
  EFH : 7 / 64 ≤ (1 - f) * (1 - h) + f * (1 - e)
  FHA : 7 / 64 ≤ f * (h - a)

theorem anchorCosts {a h b c d e f : ℝ} (hN : SevenAnchors a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    AnchorCosts a h b c d e f := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩ := hN
  refine ⟨cost hmin 0 2 1 (by sa_eval) (by nlinarith),
    cost hmin 0 2 3 (by sa_eval) (by nlinarith),
    cost hmin 2 3 4 (by sa_eval) (by nlinarith),
    cost hmin 3 4 5 (by sa_eval) (by nlinarith),
    cost hmin 4 5 6 (by sa_eval) (by nlinarith),
    cost hmin 5 6 1 (by sa_eval) (by nlinarith),
    cost hmin 6 1 0 (by sa_eval) (by nlinarith)⟩

/-- Simple consequences of the anchor costs: `b, 1 - c, a, d, 1 - e, 1 - h > 0`-type bounds. -/
theorem AnchorCosts.basic {a h b c d e f : ℝ} (hN : SevenAnchors a h b c d e f)
    (H : AnchorCosts a h b c d e f) :
    7 / 64 ≤ b ∧ c ≤ 1 - 7 / 64 ∧ c - b ≤ 1 - 2 * (7 / 64) ∧ 7 / 64 ≤ a ∧ 7 / 64 ≤ d ∧
      7 / 64 ≤ h - a ∧ 7 / 64 ≤ c - b ∧ 7 / 64 ≤ e - d := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩ := hN
  have := H.ABH; have := H.ABC; have := H.BCD; have := H.CDE
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> nlinarith

/-! ### Capacity one -/

theorem capK_gt : 13 / 16 < capK * (7 / 64) := by
  have : (12 / 7 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  unfold capK; nlinarith

theorem capK_gt' : 1 - 2 * (7 / 64) < capK * (7 / 64) := by
  have := capK_gt; linarith

/-- The five-point sub-configuration of a configuration. -/
theorem min_five' {n : ℕ} (P : Fin n → Point) (i₁ i₂ i₃ i₄ i₅ : Fin n)
    (hinj : Function.Injective ![i₁, i₂, i₃, i₄, i₅]) :
    minTriangleArea P ≤ minTriangleArea ![P i₁, P i₂, P i₃, P i₄, P i₅] := by
  have e : (![P i₁, P i₂, P i₃, P i₄, P i₅] : Fin 5 → Point) = P ∘ ![i₁, i₂, i₃, i₄, i₅] := by
    funext j; fin_cases j <;> rfl
  rw [e]; exact le_min_comp (by norm_num) P hinj

/-- **Capacity one.** If two points of a configuration lie in a closed counterclockwise triangle of
three other points whose doubled area is below `Ks`, the least area is below `7/128`
(`twoInteriorPointLemma`; a point on an edge gives a zero triangle). -/
theorem capacity_one {n : ℕ} {P : Fin n → Point} (i₁ i₂ i₃ i₄ i₅ : Fin n)
    (hinj : Function.Injective ![i₁, i₂, i₃, i₄, i₅])
    (h4 : InClosedTriangle (P i₄) (P i₁) (P i₂) (P i₃))
    (h5 : InClosedTriangle (P i₅) (P i₁) (P i₂) (P i₃))
    (hT : sarea (P i₁) (P i₂) (P i₃) < capK * (7 / 64)) :
    minTriangleArea P < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hm := hcon.trans (min_five' P i₁ i₂ i₃ i₄ i₅ hinj)
  set Q : Fin 5 → Point := ![P i₁, P i₂, P i₃, P i₄, P i₅] with hQ
  have pos : ∀ (j k l : Fin 5), j ≠ k → k ≠ l → j ≠ l → 0 ≤ sarea (Q j) (Q k) (Q l) →
      0 < sarea (Q j) (Q k) (Q l) := by
    intro j k l h1 h2 h3 h0
    have := cost hm j k l rfl h0 h1 h2 h3
    linarith
  obtain ⟨a1, a2, a3⟩ := h4
  obtain ⟨b1, b2, b3⟩ := h5
  have hP : InTriangle (P i₄) (P i₁) (P i₂) (P i₃) :=
    ⟨pos 0 1 3 (by decide) (by decide) (by decide) a1, pos 1 2 3 (by decide) (by decide)
      (by decide) a2, pos 2 0 3 (by decide) (by decide) (by decide) a3⟩
  have hQ5 : InTriangle (P i₅) (P i₁) (P i₂) (P i₃) :=
    ⟨pos 0 1 4 (by decide) (by decide) (by decide) b1, pos 1 2 4 (by decide) (by decide)
      (by decide) b2, pos 2 0 4 (by decide) (by decide) (by decide) b3⟩
  have key := twoInteriorPointLemma (P i₁) (P i₂) (P i₃) (P i₄) (P i₅)
    (Or.inl hP) (Or.inl hQ5) (7 / 128) (by norm_num) hm
  have hpos : 0 < sarea (P i₁) (P i₂) (P i₃) := by
    have := sarea_add_sarea_add_sarea (P i₁) (P i₂) (P i₃) (P i₄)
    linarith [hP.1, hP.2.1, hP.2.2]
  rw [triangleArea_eq, abs_of_pos hpos] at key
  unfold capK at hT
  linarith

/-! ### The near-side lower ear -/

/-- `x + q/x ≥ 2r` when `r² ≤ q` (rational stand-in for `z + q/z ≥ 2√q`). -/
theorem amgm_rat {x q r : ℝ} (hx : 0 < x) (_hr : 0 ≤ r) (hq : r ^ 2 ≤ q) : 2 * r ≤ x + q / x := by
  have h1 : r ^ 2 / x ≤ q / x := div_le_div_of_nonneg_right hq hx.le
  have h2 : 2 * r ≤ x + r ^ 2 / x := by
    rw [← sub_nonneg]
    have : x + r ^ 2 / x - 2 * r = (x - r) ^ 2 / x := by field_simp; ring
    rw [this]; positivity
  linarith

/-- From `L ≥ 6s`, `ML ≤ (1-s)L - 3s` and `aM ≥ s`: `a + L > 1 - s` (that is, `h > 1 - s` for
`L = h - a`). -/
theorem thm1_h {a L M : ℝ} (ha : 0 < a) (hL6 : 6 * (7 / 64) ≤ L) (_hM : 0 < M)
    (hML : M * L ≤ (1 - 7 / 64) * L - 3 * (7 / 64)) (hABC : 7 / 64 ≤ a * M) :
    1 - 7 / 64 < a + L := by
  have hL : 0 < L := by linarith
  have hD : 0 < (1 - 7 / 64) * L - 3 * (7 / 64) := by nlinarith [mul_pos _hM hL]
  have haD : 7 / 64 * L ≤ a * ((1 - 7 / 64) * L - 3 * (7 / 64)) := by
    have := mul_le_mul_of_nonneg_left hML ha.le
    nlinarith
  have hg : (1 - 7 / 64) * ((1 - 7 / 64) * L - 3 * (7 / 64)) <
      L * ((1 - 7 / 64) * L - 3 * (7 / 64)) + 7 / 64 * L := by
    nlinarith [sq_nonneg (L - 6 * (7 / 64)), show (0 : ℝ) ≤ L - 6 * (7 / 64) by linarith]
  by_contra hc'; push Not at hc'
  have := mul_le_mul_of_nonneg_right hc' hD.le
  nlinarith

/-- The scalar part of `minTriangleArea_lt_of_mem_ABH`: the anchor orders, `f ≤ 1/2`, `b(h-a) ≥ 3s` and the costs of
`ABC, BCD, CDE, EFH` are incompatible. -/
theorem ear_ABH_scalar {a h b c d e f : ℝ} (ha : 0 < a) (hah : a < h) (_hh : h < 1) (hb : 0 < b)
    (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1) (hbf : b ≤ f)
    (hf : f ≤ 1 / 2) (hbL : 3 * (7 / 64) ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hEFH : 7 / 64 ≤ (1 - f) * (1 - h) + f * (1 - e)) : False := by
  have hL : 0 < h - a := by linarith
  have hM : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hL6 : 6 * (7 / 64) ≤ h - a := by nlinarith
  have hc1 : c ≤ 1 - 7 / 64 := by nlinarith
  -- `M L ≤ (1-s)L - 3s`, `a M ≥ s`, hence `h > 1 - s`
  have hML : (c - b) * (h - a) ≤ (1 - 7 / 64) * (h - a) - 3 * (7 / 64) := by nlinarith
  have hh57 : 1 - 7 / 64 < h := by
    have := thm1_h ha hL6 hM hML hABC
    linarith
  -- `(1 - h) + (1 - e) ≥ 2s`
  have hf0 : 0 < f := by linarith
  have hab : 2 * (7 / 64) ≤ (1 - h) + (1 - e) := by
    have k1 : f * (2 * (7 / 64) - (1 - h)) ≤ f * (1 - e) := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 7 / 64 - (1 - h) by linarith)
        (show (0 : ℝ) ≤ 1 - 2 * f by linarith)]
    have := le_of_mul_le_mul_left k1 hf0
    linarith
  -- lower bounds on `b`, `1 - c`, `a`, `d` from the costs
  have e1 : 3 * (7 / 64) / (h - a) ≤ b := by rw [div_le_iff₀ hL]; linarith
  have e2 : 7 / 64 / (e - d) ≤ 1 - c := by rw [div_le_iff₀ hR]; linarith
  have e3 : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith
  have e4 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hM]; linarith
  -- AM–GM with rational square roots
  have m1 := amgm_rat (x := c - b) (q := 7 / 64) (r := 3307 / 10000) hM (by norm_num) (by norm_num)
  have m2 := amgm_rat (x := h - a) (q := 6 * (7 / 64)) (r := 81 / 100) hL (by norm_num)
    (by norm_num)
  have m3 := amgm_rat (x := e - d) (q := 2 * (7 / 64)) (r := 4677 / 10000) hR (by norm_num)
    (by norm_num)
  have f2 : 6 * (7 / 64) / (h - a) = 2 * (3 * (7 / 64) / (h - a)) := by ring
  have f3 : 2 * (7 / 64) / (e - d) = 2 * (7 / 64 / (e - d)) := by ring
  linarith

/-- In the normalized seven-boundary form, a free point in the closed ear `ABH` gives a triangle
of area less than `7/128`. The other free point plays no role: the statement is for the seven
anchors and that point. -/
theorem minTriangleArea_lt_of_mem_ABH {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InClosedTriangle X (0, a) (b, 0) (0, h)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := anchorCosts hN.1 (hcon.trans minAnchor_of₁)
  obtain ⟨h1, h2, h3⟩ := hX
  have c1 := cost hcon 0 2 7 rfl h1
  have c2 := cost hcon 2 1 7 rfl h2
  have c3 := cost hcon 1 0 7 rfl h3
  have hsum : 3 * (7 / 64) ≤ b * (h - a) := by
    have := sarea_add_sarea_add_sarea (0, a) (b, 0) (0, h) X
    have e : sarea (0, a) (b, 0) (0, h) = b * (h - a) := by simp only [sarea]; ring
    change 7 / 64 ≤ sarea (0, a) (b, 0) X at c1
    change 7 / 64 ≤ sarea (b, 0) (0, h) X at c2
    change 7 / 64 ≤ sarea (0, h) (0, a) X at c3
    linarith
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  exact ear_ABH_scalar ha hah hh hb hbc hc hd hde he hbf hf hsum H.ABC H.BCD H.CDE H.EFH

/-! ### Three triangles of capacity one -/

/-- In the normalized seven-boundary form, none of the closed triangles `BCF`, `HCF`, `HBF`
contains both free points at minimum area at least `7/128`: each has doubled area below `Ks`. -/
theorem minTriangleArea_lt_of_pair_mem_BCF_HCF_HBF {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point} :
    (InClosedTriangle P (b, 0) (c, 0) (f, 1) → InClosedTriangle Q (b, 0) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
      (InClosedTriangle P (0, h) (c, 0) (f, 1) → InClosedTriangle Q (0, h) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
      (InClosedTriangle P (0, h) (b, 0) (f, 1) → InClosedTriangle Q (0, h) (b, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) := by
  have hK := capK_gt'
  have hK2 := capK_gt
  refine ⟨fun hP hQ => ?_, fun hP hQ => ?_, fun hP hQ => ?_⟩
  · by_contra hcon; push Not at hcon
    have H := anchorCosts hN.1 (hcon.trans (min₁_left.trans minAnchor_of₁))
    obtain ⟨hb1, hc1, hM, -⟩ := H.basic hN.1
    have := capacity_one (P := sevenConfig a h b c d e f P Q) 2 3 6 7 8 (by decide) hP hQ
      (by show sarea (b, 0) (c, 0) (f, 1) < _; simp only [sarea]; linarith)
    linarith
  · by_contra hcon; push Not at hcon
    have H := anchorCosts hN.1 (hcon.trans (min₁_left.trans minAnchor_of₁))
    obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
    have hABH := H.ABH; have hABC := H.ABC
    -- `hc ≥ 4s`, then `U = c - h(c-f) ≤ 1 - 2s`
    have hhc : 4 * (7 / 64) ≤ h * c := by
      have h1 : 7 / 64 * c ≤ h * (b * (c - b)) := by
        have := mul_le_mul_of_nonneg_left hABC hb.le
        have := mul_le_mul_of_nonneg_left hABH (show 0 ≤ c - b by linarith)
        nlinarith
      have h2 : b * (c - b) ≤ c ^ 2 / 4 := by nlinarith [sq_nonneg (c - 2 * b)]
      have h3 : h * (b * (c - b)) ≤ h * (c ^ 2 / 4) := mul_le_mul_of_nonneg_left h2 (by linarith)
      nlinarith
    have hU : sarea (0, h) (c, 0) (f, 1) ≤ 1 - 2 * (7 / 64) := by
      simp only [sarea]
      rcases le_total c (1 / 2) with hc2 | hc2
      · nlinarith [mul_nonneg (show (0 : ℝ) ≤ h by linarith) (show (0 : ℝ) ≤ c - f by linarith)]
      · have h1 : h * (c - f) * c ≥ 4 * (7 / 64) * (c - 1 / 2) := by
          nlinarith [mul_le_mul_of_nonneg_right hhc (show (0 : ℝ) ≤ c - f by linarith)]
        nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - c by linarith)
          (show (0 : ℝ) ≤ c - 2 * (7 / 64) by linarith)]
    have := capacity_one (P := sevenConfig a h b c d e f P Q) 1 3 6 7 8 (by decide) hP hQ
      (by show sarea (0, h) (c, 0) (f, 1) < _; linarith)
    linarith
  · have hU : sarea (0, h) (b, 0) (f, 1) ≤ 1 / 2 := by
      obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
      simp only [sarea]
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - h by linarith) (show (0 : ℝ) ≤ f - b by linarith)]
    exact capacity_one (P := sevenConfig a h b c d e f P Q) 1 2 6 7 8 (by decide) hP hQ
      (by show sarea (0, h) (b, 0) (f, 1) < _; linarith)

/-! ### The smaller side quadrilateral -/

/-- In the normalized seven-boundary form, the closed quadrilateral `ABFH` does not contain both
free points at minimum area at least `7/128`: its doubled area `J = b(1-a) + fh` is at most
`43/50 < 8s`. -/
theorem minTriangleArea_lt_of_pair_mem_ABFH {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hP : InClosedPolygon ![(0, a), (b, 0), (f, 1), (0, h)] P)
    (hQ : InClosedPolygon ![(0, a), (b, 0), (f, 1), (0, h)] Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := anchorCosts hN.1 (hcon.trans (min₁_left.trans minAnchor_of₁))
  obtain ⟨hb1, hc1, hM, -⟩ := H.basic hN.1
  have hABC := H.ABC
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  have hconv : QuadrilateralHull.ConvexQuad (0, a) (b, 0) (f, 1) (0, h) := by
    refine ⟨?_, ?_, ?_, ?_⟩ <;> simp only [sarea] <;> nlinarith
  have cq : ∀ X : Point, InClosedPolygon ![(0, a), (b, 0), (f, 1), (0, h)] X →
      QuadrilateralHull.InClosedQuad X (0, a) (b, 0) (f, 1) (0, h) := by
    intro X hX
    have h0 := hX 0; have h1 := hX 1; have h2 := hX 2; have h3 := hX 3
    simp [finRotate_apply] at h0 h1 h2 h3
    exact ⟨h0, h1, h2, h3⟩
  have key := (QuadrilateralHull.minTriangleArea_six_le_quadArea_div_eight hconv (cq P hP) (cq Q hQ)).1
  have hsub : minTriangleArea (sevenConfig a h b c d e f P Q) ≤
      minTriangleArea ![(0, a), (b, 0), (f, 1), (0, h), P, Q] := by
    have e : (![(0, a), (b, 0), (f, 1), (0, h), P, Q] : Fin 6 → Point) =
        sevenConfig a h b c d e f P Q ∘ ![0, 2, 6, 1, 7, 8] := by
      funext j; fin_cases j <;> rfl
    rw [e]; exact le_min_comp (by norm_num) _ (by decide)
  -- `J = b(1-a) + fh ≤ 43/50 < 7/8`
  have hJ : QuadrilateralHull.quadArea (0, a) (b, 0) (f, 1) (0, h) < 7 / 16 := by
    unfold QuadrilateralHull.quadArea
    simp only [sarea]
    have ha' : 7 / 64 ≤ a * (1 - 7 / 64 - b) := by nlinarith
    have hb2 : b ≤ 1 / 2 := by linarith
    have hq : b * (1 - a) ≤ 9 / 25 := by
      have h1 : b * (1 - 7 / 64 - b) - 7 / 64 * b ≤ 9 / 25 * (1 - 7 / 64 - b) := by
        nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 / 2 - b by linarith)
          (show (0 : ℝ) ≤ 1 - 2 * (7 / 64) + 9 / 25 - 1 / 2 - b by linarith)]
      by_contra hc'; push Not at hc'
      nlinarith [mul_le_mul_of_nonneg_left ha' hb.le]
    nlinarith [mul_le_mul_of_nonneg_left (show h ≤ 1 by linarith) (show (0 : ℝ) ≤ f by linarith)]
  linarith

/-! ### The adjacent bottom ear -/

/-- The scalar end of `minTriangleArea_lt_of_mem_ABC`: no positive `M, L, R` satisfy
`M + s/L + s/R ≤ 1`, `L + R + 4s/M ≤ 2 - 2s` and `L ≤ 1 - 3s/M`. -/
theorem thm4_scalar {M L R : ℝ} (hM : 0 < M) (hL : 0 < L) (hR : 0 < R)
    (h1 : M + 7 / 64 / L + 7 / 64 / R ≤ 1) (h2 : L + R + 4 * (7 / 64) / M ≤ 2 - 2 * (7 / 64))
    (h3 : L ≤ 1 - 3 * (7 / 64) / M) : False := by
  have hsL : 0 < 7 / 64 / L := by positivity
  have hsR : 0 < 7 / 64 / R := by positivity
  have hM1 : M < 1 := by linarith
  set U := 1 - 3 * (7 / 64) / M with hU
  set V := 2 - 2 * (7 / 64) - 4 * (7 / 64) / M with hV
  have hU0 : 0 < U := by linarith
  have hsM : 7 / 64 < 7 / 64 / M := by rw [lt_div_iff₀ hM]; linarith
  have hUV : 2 * U < V := by
    have : 2 * U - V = 2 * (7 / 64) - 2 * (7 / 64 / M) := by
      rw [hU, hV]; ring
    linarith
  have hVL : 0 < V - L := by linarith
  have hVU : 0 < V - U := by linarith
  have hRV : R ≤ V - L := by linarith
  have k1 : 7 / 64 / (V - L) ≤ 7 / 64 / R := div_le_div_of_nonneg_left (by norm_num) hR hRV
  have k2 : 1 / U + 1 / (V - U) ≤ 1 / L + 1 / (V - L) := by
    rw [div_add_div _ _ hU0.ne' hVU.ne', div_add_div _ _ hL.ne' hVL.ne',
      div_le_div_iff₀ (mul_pos hU0 hVU) (mul_pos hL hVL)]
    linarith [mul_nonneg (mul_nonneg (show (0 : ℝ) ≤ V by linarith)
      (show (0 : ℝ) ≤ U - L by linarith)) (show (0 : ℝ) ≤ V - U - L by linarith)]
  have k3 : M + 7 / 64 / U + 7 / 64 / (V - U) ≤ 1 := by
    have e1 : 7 / 64 / U + 7 / 64 / (V - U) = 7 / 64 * (1 / U + 1 / (V - U)) := by ring
    have e2 : 7 / 64 / L + 7 / 64 / (V - L) = 7 / 64 * (1 / L + 1 / (V - L)) := by ring
    linarith
  -- `U = (M - 3s)/M`, `V - U = ((1-2s)M - s)/M`
  have hUM : U * M = M - 3 * (7 / 64) := by rw [hU]; field_simp
  have hVUM : (V - U) * M = (1 - 2 * (7 / 64)) * M - 7 / 64 := by rw [hU, hV]; field_simp; ring
  have hM3 : 0 < M - 3 * (7 / 64) := by rw [← hUM]; exact mul_pos hU0 hM
  have hD : 0 < (1 - 2 * (7 / 64)) * M - 7 / 64 := by rw [← hVUM]; exact mul_pos hVU hM
  have hA : 7 / 64 / U * (M - 3 * (7 / 64)) = 7 / 64 * M := by
    rw [← hUM]; field_simp [hU0.ne']
  have hB : 7 / 64 / (V - U) * ((1 - 2 * (7 / 64)) * M - 7 / 64) = 7 / 64 * M := by
    rw [← hVUM]; field_simp [hVU.ne']
  have k4 := mul_le_mul_of_nonneg_right k3 (mul_pos hM3 hD).le
  have hA' : 7 / 64 / U * (M - 3 * (7 / 64)) * ((1 - 2 * (7 / 64)) * M - 7 / 64) =
      7 / 64 * M * ((1 - 2 * (7 / 64)) * M - 7 / 64) := by rw [hA]
  have hB' : 7 / 64 / (V - U) * ((1 - 2 * (7 / 64)) * M - 7 / 64) * (M - 3 * (7 / 64)) =
      7 / 64 * M * (M - 3 * (7 / 64)) := by rw [hB]
  -- `N(M) > 0`
  have hN : 0 < 3200 * M ^ 3 - 3900 * M ^ 2 + 1449 * M - 147 := by
    nlinarith [mul_nonneg (sq_nonneg (M - 21 / 40)) (show (0 : ℝ) ≤ M - 27 / 160 by linarith)]
  linarith

/-- The scalar part of `minTriangleArea_lt_of_mem_ABC`: the anchor orders, `f ≤ 1/2`, `a(c-b) ≥ 3s` and the costs of
`ABH, BCD, CDE, EFH` are incompatible. -/
theorem ear_ABC_scalar {a h b c d e f : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hb : 0 < b)
    (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hf : f ≤ 1 / 2) (hf0 : 0 < f) (h12 : 3 * (7 / 64) ≤ a * (c - b)) (hABH : 7 / 64 ≤ b * (h - a))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hEFH : 7 / 64 ≤ (1 - f) * (1 - h) + f * (1 - e)) : False := by
  have hL : 0 < h - a := by linarith
  have hM : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hcs : c < 1 - 7 / 64 := by
    nlinarith [mul_pos (show (0 : ℝ) < 1 - c by linarith) (show (0 : ℝ) < 1 - (e - d) by linarith)]
  -- `hc ≥ Ks > 22s/3`
  have hpq : 3 * (7 / 64) * (7 / 64) ≤ (a * b) * ((h - a) * (c - b)) := by
    have := mul_le_mul h12 hABH (by norm_num) (by positivity)
    linarith
  have hpq' : 10 / 3 * (7 / 64) < a * b + (h - a) * (c - b) := by
    have hp : 0 < a * b := mul_pos ha hb
    have hq : 0 < (h - a) * (c - b) := mul_pos hL hM
    nlinarith [sq_nonneg (a * b - (h - a) * (c - b))]
  have hhc : 22 / 3 * (7 / 64) < h * c := by nlinarith
  have hh1 : 1 - 7 / 64 < h := by
    by_contra hc'; push Not at hc'
    nlinarith [mul_le_mul_of_nonneg_right hc' (show (0 : ℝ) ≤ c by linarith)]
  -- `(1 - h) + (1 - e) ≥ 2s`
  have hab : 2 * (7 / 64) ≤ (1 - h) + (1 - e) := by
    have k1 : f * (2 * (7 / 64) - (1 - h)) ≤ f * (1 - e) := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 7 / 64 - (1 - h) by linarith)
        (show (0 : ℝ) ≤ 1 - 2 * f by linarith)]
    have := le_of_mul_le_mul_left k1 hf0
    linarith
  -- lower bounds on `b`, `1 - c`, `a`, `d` from the costs
  have e1 : 7 / 64 / (h - a) ≤ b := by rw [div_le_iff₀ hL]; linarith
  have e2 : 7 / 64 / (e - d) ≤ 1 - c := by rw [div_le_iff₀ hR]; linarith
  have e3 : 3 * (7 / 64) / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith
  have e4 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hM]; linarith
  have e5 : 4 * (7 / 64) / (c - b) = 3 * (7 / 64) / (c - b) + 7 / 64 / (c - b) := by ring
  exact thm4_scalar hM hL hR (by linarith) (by linarith) (by linarith)

/-- In the normalized seven-boundary form, a free point in the closed ear `ABC` gives a triangle
of area less than `7/128` (stated for the seven anchors and that point). -/
theorem minTriangleArea_lt_of_mem_ABC {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InClosedTriangle X (0, a) (b, 0) (c, 0)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := anchorCosts hN.1 (hcon.trans minAnchor_of₁)
  obtain ⟨h1, h2, h3⟩ := hX
  have c1 := cost hcon 0 2 7 rfl h1
  have c2 := cost hcon 2 3 7 rfl h2
  have c3 := cost hcon 3 0 7 rfl h3
  have hsum : 3 * (7 / 64) ≤ a * (c - b) := by
    have := sarea_add_sarea_add_sarea (0, a) (b, 0) (c, 0) X
    have e : sarea (0, a) (b, 0) (c, 0) = a * (c - b) := by simp only [sarea]; ring
    change 7 / 64 ≤ sarea (0, a) (b, 0) X at c1
    change 7 / 64 ≤ sarea (b, 0) (c, 0) X at c2
    change 7 / 64 ≤ sarea (c, 0) (0, a) X at c3
    linarith
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  exact ear_ABC_scalar ha hah hh hb hbc hc hd hde he hf (by linarith) hsum H.ABH H.BCD H.CDE H.EFH

/-! ### The diagonal triangle `ACF` -/

/-- The quadratic in `w` of the statement is positive for `0 < α < 5/32` and
`s ≤ w ≤ 3/16 - α/2`: it is concave in `w`, and its values at the two endpoints, polynomials in
`t = 5/32 - α`, are positive. -/
theorem thm5_N {α w : ℝ} (hα0 : 0 < α) (hα : α < 5 / 32) (hw : 7 / 64 ≤ w)
    (hw' : w ≤ 3 / 16 - α / 2) :
    0 < (-(α * (64 * α ^ 2 - 71 * α + 14)) / 64) * w ^ 2 + ((1 - α) * (4096 * α ^ 3 - 4992 * α ^ 2 + 1064 * α - 49) / 4096) * w + (7 * (α - 1) ^ 2 * (16 * α - 3) * (64 * α - 7) / 65536) := by
  have ht : 0 ≤ 5 / 32 - α := by linarith
  have hNs : 0 < (-7 * (768 * α ^ 3 - 1053 * α ^ 2 + 369 * α - 35) / 262144) := by
    nlinarith [mul_nonneg (mul_nonneg ht ht) ht, mul_nonneg ht ht]
  have hNh : 0 < (α * (16384 * α ^ 4 - 47360 * α ^ 3 + 39728 * α ^ 2 - 10257 * α + 805) / 65536) := by
    have : 0 < 16384 * α ^ 4 - 47360 * α ^ 3 + 39728 * α ^ 2 - 10257 * α + 805 := by
      nlinarith [mul_nonneg (mul_nonneg (mul_nonneg ht ht) ht) ht,
        mul_nonneg (mul_nonneg ht ht) ht, mul_nonneg ht ht]
    positivity
  have hA : 0 < -(-(α * (64 * α ^ 2 - 71 * α + 14)) / 64) := by
    have : 0 < 64 * α ^ 2 - 71 * α + 14 := by nlinarith
    have := mul_pos hα0 this
    linarith
  have hd : 0 < 3 / 16 - α / 2 - 7 / 64 := by linarith
  have e : ((-(α * (64 * α ^ 2 - 71 * α + 14)) / 64) * w ^ 2 + ((1 - α) * (4096 * α ^ 3 - 4992 * α ^ 2 + 1064 * α - 49) / 4096) * w + (7 * (α - 1) ^ 2 * (16 * α - 3) * (64 * α - 7) / 65536)) * (3 / 16 - α / 2 - 7 / 64) =
      (-7 * (768 * α ^ 3 - 1053 * α ^ 2 + 369 * α - 35) / 262144) * (3 / 16 - α / 2 - w) + (α * (16384 * α ^ 4 - 47360 * α ^ 3 + 39728 * α ^ 2 - 10257 * α + 805) / 65536) * (w - 7 / 64) +
        (-(-(α * (64 * α ^ 2 - 71 * α + 14)) / 64)) * ((w - 7 / 64) * (3 / 16 - α / 2 - w)) * (3 / 16 - α / 2 - 7 / 64) := by ring
  have k1 : 0 ≤ (-7 * (768 * α ^ 3 - 1053 * α ^ 2 + 369 * α - 35) / 262144) * (3 / 16 - α / 2 - w) := mul_nonneg hNs.le (by linarith)
  have k2 : 0 ≤ (α * (16384 * α ^ 4 - 47360 * α ^ 3 + 39728 * α ^ 2 - 10257 * α + 805) / 65536) * (w - 7 / 64) := mul_nonneg hNh.le (by linarith)
  have k3 : 0 ≤ (-(-(α * (64 * α ^ 2 - 71 * α + 14)) / 64)) * ((w - 7 / 64) * (3 / 16 - α / 2 - w)) * (3 / 16 - α / 2 - 7 / 64) :=
    mul_nonneg (mul_nonneg hA.le (mul_nonneg (by linarith) (by linarith))) hd.le
  have k4 : 0 < (-7 * (768 * α ^ 3 - 1053 * α ^ 2 + 369 * α - 35) / 262144) * (3 / 16 - α / 2 - w) + (α * (16384 * α ^ 4 - 47360 * α ^ 3 + 39728 * α ^ 2 - 10257 * α + 805) / 65536) * (w - 7 / 64) := by
    rcases lt_or_eq_of_le hw with h1 | h1
    · have := mul_pos hNh (show (0 : ℝ) < w - 7 / 64 by linarith); linarith
    · rw [← h1]; have := mul_pos hNs hd; linarith
  by_contra hc; push Not at hc
  nlinarith [mul_nonpos_of_nonpos_of_nonneg hc hd.le]

/-- The scalar heart of `minTriangleArea_lt_of_pair_mem_ACF`, in the variables `α = s/(c-b)`, `u = b`, `v = 1 - c`: the
conditions `α(u+v) = α - s`, `αuv + (1-f)sv + fsu ≤ (1-s)uv`, `(1-α)v > s`, `f ≤ 1/2` and
`αf ≥ v + α - αv - 3/16` (that is, `[ACF] ≥ 13/16`) are incompatible. -/
theorem thm5_scalar {α u v f : ℝ} (hα0 : 0 < α) (hu : 0 < u) (hv : 0 < v) (_hf0 : 0 ≤ f)
    (hf : f ≤ 1 / 2) (hsum : α * (u + v) = α - 7 / 64)
    (h21 : α * u * v + (1 - f) * (7 / 64) * v + f * (7 / 64) * u ≤ (1 - 7 / 64) * u * v)
    (hw : 7 / 64 < (1 - α) * v) (hG : v + α - α * v - 3 / 16 ≤ α * f) : False := by
  have hwhi : (1 - α) * v ≤ 3 / 16 - α / 2 := by nlinarith
  have hα : α < 5 / 32 := by linarith
  rcases le_or_gt u v with huv | huv
  · -- `v ≥ u`
    have k1 : (u + v) / 2 ≤ (1 - f) * v + f * u := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 / 2 - f by linarith) (sub_nonneg.2 huv)]
    have k2 : 7 / 64 * ((u + v) / 2) ≤ (1 - 7 / 64 - α) * (u * v) := by nlinarith
    have k3 : u * v ≤ (u + v) ^ 2 / 4 := by nlinarith [sq_nonneg (u - v)]
    have hpos : 0 < 1 - 7 / 64 - α := by
      by_contra hc; push Not at hc
      nlinarith [mul_nonpos_of_nonpos_of_nonneg hc (mul_pos hu hv).le]
    have k4 : 2 * (7 / 64) ≤ (1 - 7 / 64 - α) * (u + v) := by
      have := mul_le_mul_of_nonneg_left k3 hpos.le
      have huv0 : 0 < u + v := by linarith
      nlinarith
    have hp : α ^ 2 - (1 - 2 * (7 / 64)) * α + 7 / 64 * (1 - 7 / 64) ≤ 0 := by
      have := mul_le_mul_of_nonneg_left k4 hα0.le
      nlinarith
    -- `v ≥ (u+v)/2` gives `α ≤ 7/47`
    have hα47 : α ≤ 7 / 47 := by nlinarith
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 7 / 47 - α by linarith)
      (show (0 : ℝ) ≤ 1 - 2 * (7 / 64) - α - 7 / 47 by linarith)]
  · -- `v < u`: replace `αf` by its lower bound; the quadratic of `thm5_N` becomes `≤ 0`
    have k1 : α * (α * u * v) + 7 / 64 * α * v + (α * f) * (7 / 64) * (u - v) ≤
        (1 - 7 / 64) * α * u * v := by nlinarith
    have k2 : (v + α - α * v - 3 / 16) * (7 / 64) * (u - v) ≤ (α * f) * (7 / 64) * (u - v) :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right hG (by norm_num)) (by linarith)
    have hU : α * u = α - 7 / 64 - α * v := by linarith
    have hPhi : α ^ 2 * (α * u) * v + 7 / 64 * α ^ 2 * v +
        (α - 3 / 16 + (1 - α) * v) * (7 / 64) * (α * u - α * v) -
        (1 - 7 / 64) * α * (α * u) * v ≤ 0 := by nlinarith
    rw [hU] at hPhi
    have hN := thm5_N hα0 hα hw.le hwhi
    have e : (-(α * (64 * α ^ 2 - 71 * α + 14)) / 64) * ((1 - α) * v) ^ 2 + ((1 - α) * (4096 * α ^ 3 - 4992 * α ^ 2 + 1064 * α - 49) / 4096) * ((1 - α) * v) + (7 * (α - 1) ^ 2 * (16 * α - 3) * (64 * α - 7) / 65536) =
        (1 - α) ^ 2 * (α ^ 2 * (α - 7 / 64 - α * v) * v + 7 / 64 * α ^ 2 * v +
          (α - 3 / 16 + (1 - α) * v) * (7 / 64) * (α - 7 / 64 - α * v - α * v) -
          (1 - 7 / 64) * α * (α - 7 / 64 - α * v) * v) := by ring
    rw [e] at hN
    nlinarith [mul_nonpos_of_nonneg_of_nonpos (sq_nonneg (1 - α)) hPhi]

/-- The bound of `minTriangleArea_lt_of_pair_mem_ACF`: the anchor costs give `[ACF] = c(1-a) + af < 13/16`. -/
theorem thm5_bound {a h b c d e f : ℝ} (_ha : 0 < a) (_hah : a < h) (hb : 0 < b) (hbc : b < c)
    (hc : c < 1) (_hd : 0 < d) (_hde : d < e) (he : e < 1) (hbf : b ≤ f) (hfc : f ≤ c)
    (hf : f ≤ 1 / 2) (hABC : 7 / 64 ≤ a * (c - b)) (hBCD : 7 / 64 ≤ d * (c - b))
    (hABH : 7 / 64 ≤ b * (h - a)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hEFH : 7 / 64 ≤ (1 - f) * (1 - h) + f * (1 - e)) :
    c * (1 - a) + a * f < 13 / 16 := by
  have hM : 0 < c - b := by linarith
  obtain ⟨α, hα⟩ : ∃ α : ℝ, α * (c - b) = 7 / 64 := ⟨7 / 64 / (c - b), by field_simp⟩
  have hα0 : 0 < α := by
    by_contra hc'; push Not at hc'; nlinarith [mul_nonpos_of_nonpos_of_nonneg hc' hM.le]
  have ha' : α ≤ a := by
    by_contra hc'; push Not at hc'; nlinarith [mul_lt_mul_of_pos_right hc' hM]
  have hd' : α ≤ d := by
    by_contra hc'; push Not at hc'; nlinarith [mul_lt_mul_of_pos_right hc' hM]
  have hv : 0 < 1 - c := by linarith
  have hsum : α * (b + (1 - c)) = α - 7 / 64 := by linarith
  have hh' : α * b + 7 / 64 ≤ h * b := by nlinarith [mul_le_mul_of_nonneg_right ha' hb.le]
  have he' : α * (1 - c) + 7 / 64 ≤ e * (1 - c) := by
    nlinarith [mul_le_mul_of_nonneg_right hd' hv.le]
  have hHEF : (1 - f) * h + f * e ≤ 1 - 7 / 64 := by linarith
  have hf0 : 0 ≤ f := by linarith
  have h21 : α * b * (1 - c) + (1 - f) * (7 / 64) * (1 - c) + f * (7 / 64) * b ≤
      (1 - 7 / 64) * b * (1 - c) := by
    have k1 := mul_le_mul_of_nonneg_left hh' (mul_nonneg (show (0 : ℝ) ≤ 1 - f by linarith) hv.le)
    have k2 := mul_le_mul_of_nonneg_left he' (mul_nonneg hf0 hb.le)
    have k3 := mul_le_mul_of_nonneg_right hHEF (mul_pos hb hv).le
    nlinarith
  have hw : 7 / 64 < (1 - α) * (1 - c) := by nlinarith
  by_contra hG; push Not at hG
  have hG' : (1 - c) + α - α * (1 - c) - 3 / 16 ≤ α * f := by
    nlinarith [mul_le_mul_of_nonneg_right ha' (show (0 : ℝ) ≤ c - f by linarith)]
  exact thm5_scalar hα0 hb hv hf0 hf hsum h21 hw hG'

/-- In the normalized seven-boundary form: if every anchor triangle has area at least `7/128` (the
argument uses only `ABC, BCD, ABH, CDE, HEF`), then the doubled area `[ACF] = c(1-a) + af` is less
than `13/16 < Ks`; consequently the closed triangle `ACF` does not contain both free points at
minimum area at least `7/128`. -/
theorem minTriangleArea_lt_of_pair_mem_ACF {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (0, a) (c, 0) (f, 1) < 13 / 16) ∧
      13 / 16 < capK * (7 / 64) ∧
      ∀ P Q : Point, InClosedTriangle P (0, a) (c, 0) (f, 1) →
        InClosedTriangle Q (0, a) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  have part1 : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
      sarea (0, a) (c, 0) (f, 1) < 13 / 16 := by
    intro hmin
    have H := anchorCosts hN.1 hmin
    obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
    have e : sarea (0, a) (c, 0) (f, 1) = c * (1 - a) + a * f := by simp only [sarea]; ring
    rw [e]
    exact thm5_bound ha hah hb hbc hc hd hde he hbf hfc hf H.ABC H.BCD H.ABH H.CDE H.EFH
  have hK := capK_gt
  refine ⟨part1, hK, fun P Q hP hQ => ?_⟩
  by_contra hcon; push Not at hcon
  have := part1 (hcon.trans (min₁_left.trans minAnchor_of₁))
  have := capacity_one (P := sevenConfig a h b c d e f P Q) 0 3 6 7 8 (by decide) hP hQ
    (by show sarea (0, a) (c, 0) (f, 1) < _; linarith)
  linarith

/-! ### The upper left overlap -/

/-- A step of `overlap_AHF_HCF_scalar`: `D(a,L) = (a - 7/32)L² + (a/8 + 49/1024)L + 49a/512 > 0` for
`a > 1/7`, `0 < L ≤ 1 - a`. -/
theorem thm6_D {a L : ℝ} (ha : 1 / 7 < a) (hL : 0 < L) (hLa : L ≤ 1 - a) :
    0 < (a - 7 / 32) * L ^ 2 + (a / 8 + 49 / 1024) * L + 49 * a / 512 := by
  rcases le_total (7 / 32) a with h | h
  · nlinarith [mul_nonneg (sub_nonneg.2 h) (sq_nonneg L)]
  · -- concave in `L`: `(a - 7/32) L² ≥ (a - 7/32) L (1-a)`
    have k1 : (a - 7 / 32) * (L * (1 - a)) ≤ (a - 7 / 32) * L ^ 2 := by
      have : L ^ 2 ≤ L * (1 - a) := by nlinarith
      nlinarith [mul_le_mul_of_nonneg_left this (show (0 : ℝ) ≤ 7 / 32 - a by linarith)]
    have k2 : 0 < -a ^ 2 + 43 / 32 * a - 175 / 1024 := by
      nlinarith [mul_pos (show (0 : ℝ) < a - 1 / 7 by linarith)
        (show (0 : ℝ) < 175 / 1024 / (1 / 7) + 1 - a by linarith)]
    nlinarith [mul_pos hL k2]

/-- A step of `overlap_AHF_HCF_scalar`, multiplied by `4aL`: with `h = a + L`,
`C = L((1-h)/2 - s) - 2s(1-h)` and `K = Lh/4 - sh - sL/2`, the value `Csh + aLK` is negative. -/
theorem thm6_T {a L : ℝ} (ha : 1 / 7 < a) (hL : 0 < L) (hLa : L ≤ 1 - a) :
    (L * ((1 - (a + L)) / 2 - 7 / 64) - 2 * (7 / 64) * (1 - (a + L))) * (7 / 64) * (a + L) +
      a * L * (L * (a + L) / 4 - 7 / 64 * (a + L) - 7 / 64 * L / 2) < 0 := by
  have hD := thm6_D ha hL hLa
  have hQ : 0 < (1 - 2 * (7 / 64)) * a ^ 2 + (6 * (7 / 64) - 1) * a + 4 * (7 / 64) ^ 2 := by
    nlinarith [sq_nonneg (a - 11 / 50)]
  have e : 4 * ((L * ((1 - (a + L)) / 2 - 7 / 64) - 2 * (7 / 64) * (1 - (a + L))) * (7 / 64) *
      (a + L) + a * L * (L * (a + L) / 4 - 7 / 64 * (a + L) - 7 / 64 * L / 2)) =
      -L * ((1 - 2 * (7 / 64)) * a ^ 2 + (6 * (7 / 64) - 1) * a + 4 * (7 / 64) ^ 2) -
        (1 - (a + L)) * ((a - 7 / 32) * L ^ 2 + (a / 8 + 49 / 1024) * L + 49 * a / 512) := by
    ring
  nlinarith [mul_pos hL hQ, mul_nonneg (show (0 : ℝ) ≤ 1 - (a + L) by linarith) hD.le]

/-- A step of `overlap_AHF_HCF_scalar`: `aLc ≥ sh`, `c < 1 - s` and `L ≤ 1 - a` force `a > 1/7`. -/
theorem thm6_a {a h c : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hc1 : c < 1 - 7 / 64)
    (hc0 : 7 / 64 * h ≤ a * (h - a) * c) : 1 / 7 < a := by
  have hL : 0 < h - a := by linarith
  have k1 : 7 / 64 * (a + (h - a)) < (1 - 7 / 64) * (a * (h - a)) := by
    have := mul_lt_mul_of_pos_left hc1 (mul_pos ha hL)
    linarith
  have k2 : 0 < (1 - 7 / 64) * a - 7 / 64 := by
    by_contra hc'; push Not at hc'
    nlinarith [mul_le_mul_of_nonneg_left hc' hL.le]
  have k3 : 7 / 64 < (1 - 7 / 64) * a * (1 - a) := by
    nlinarith [mul_le_mul_of_nonneg_left (show h - a ≤ 1 - a by linarith) k2.le]
  by_contra hc'; push Not at hc'
  nlinarith [mul_le_mul_of_nonneg_left hc' (show (0 : ℝ) ≤ 6 / 7 - a by linarith)]

/-- A step of `overlap_AHF_HCF_scalar`: `C = L((1-h)/2 - s) - 2s(1-h) ≤ 0`. -/
theorem thm6_C {a h : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) :
    (h - a) * ((1 - h) / 2 - 7 / 64) - 2 * (7 / 64) * (1 - h) ≤ 0 := by
  have hL : 0 < h - a := by linarith
  rcases le_total ((1 - h) / 2 - 7 / 64) 0 with hX | hX
  · nlinarith [mul_nonpos_of_nonneg_of_nonpos hL.le hX]
  · nlinarith [mul_le_mul_of_nonneg_right (show h - a ≤ h by linarith) hX, sq_nonneg (h - 39 / 64)]

/-- A step of `overlap_AHF_HCF_scalar`: the costs of `AFQ, FHQ, HCQ` give `Ψ ≥ 0`, and replacing `f` by
`1/2` gives `Ψ ≤ Cc + K`; hence `Cc + K ≥ 0`. -/
theorem thm6_psi {a h c f x y : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hc : 0 < c)
    (hf0 : 0 < f) (hf : f ≤ 1 / 2)
    (hAFQ : 7 / 64 ≤ f * (y - a) - (1 - a) * x) (hFHQ : 7 / 64 ≤ -f * (y - 1) + (1 - h) * (x - f))
    (hHCQ : 7 / 64 ≤ c * (y - h) + h * x) (hfL : 3 * (7 / 64) ≤ f * (h - a)) :
    0 ≤ ((h - a) * ((1 - h) / 2 - 7 / 64) - 2 * (7 / 64) * (1 - h)) * c +
      ((h - a) * h / 4 - 7 / 64 * h - 7 / 64 * (h - a) / 2) := by
  have hL : 0 < h - a := by linarith
  have hZ0 : 0 ≤ c * (1 - h) + f * h := by
    nlinarith [mul_nonneg hc.le (show (0 : ℝ) ≤ 1 - h by linarith)]
  have hid : (c * (1 - h) + f * h) * (f * (y - a) - (1 - a) * x) +
      (c * (1 - h) + f * h + c * (h - a)) * (-f * (y - 1) + (1 - h) * (x - f)) +
      f * (h - a) * (c * (y - h) + h * x) = f * (h - a) * (c * (1 - h) + f * h) := by ring
  have hPsi : 0 ≤ f * (h - a) * (c * (1 - h) + f * h) -
      7 / 64 * (2 * (c * (1 - h) + f * h) + (h - a) * (c + f)) := by
    have hw2 : 0 ≤ c * (1 - h) + f * h + c * (h - a) := by nlinarith [mul_pos hc hL]
    linarith [mul_le_mul_of_nonneg_left hAFQ hZ0, mul_le_mul_of_nonneg_left hFHQ hw2,
      mul_le_mul_of_nonneg_left hHCQ (mul_pos hf0 hL).le]
  have hB : 0 ≤ (h - a) * c * (1 - h) + (h - a) * h * (1 / 2 + f) - 7 / 64 * (2 * h + (h - a)) := by
    nlinarith [mul_nonneg (mul_nonneg hL.le hc.le) (show (0 : ℝ) ≤ 1 - h by linarith),
      mul_le_mul_of_nonneg_left hfL (show (0 : ℝ) ≤ h by linarith),
      mul_nonneg (mul_nonneg hL.le (show (0 : ℝ) ≤ h by linarith)) (show (0 : ℝ) ≤ 1 / 2 - f by linarith)]
  have e : ((h - a) * ((1 - h) / 2 - 7 / 64) - 2 * (7 / 64) * (1 - h)) * c +
      ((h - a) * h / 4 - 7 / 64 * h - 7 / 64 * (h - a) / 2) -
      (f * (h - a) * (c * (1 - h) + f * h) -
        7 / 64 * (2 * (c * (1 - h) + f * h) + (h - a) * (c + f))) =
      (1 / 2 - f) * ((h - a) * c * (1 - h) + (h - a) * h * (1 / 2 + f) -
        7 / 64 * (2 * h + (h - a))) := by ring
  linarith [mul_nonneg (show (0 : ℝ) ≤ 1 / 2 - f by linarith) hB]

/-- The scalar part of `minTriangleArea_lt_of_mem_AHF_HCF`, with `Q = (x,y)`: the costs of `AFQ, FHQ, HCQ, HAQ, ABH, ABC`
and `c < 1 - s` are incompatible. -/
theorem overlap_AHF_HCF_scalar {a h b c f x y : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hb : 0 < b)
    (hbc : b < c) (hc1 : c < 1 - 7 / 64) (hbf : b ≤ f) (hf : f ≤ 1 / 2)
    (hABH : 7 / 64 ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b))
    (hAFQ : 7 / 64 ≤ f * (y - a) - (1 - a) * x) (hFHQ : 7 / 64 ≤ -f * (y - 1) + (1 - h) * (x - f))
    (hHCQ : 7 / 64 ≤ c * (y - h) + h * x) (hHAQ : 7 / 64 ≤ (h - a) * x) : False := by
  have hL : 0 < h - a := by linarith
  have hfL : 3 * (7 / 64) ≤ f * (h - a) := by linarith
  have hc0 : 7 / 64 * h ≤ a * (h - a) * c := by
    have k1 := mul_le_mul_of_nonneg_left hABH ha.le
    have k2 := mul_le_mul_of_nonneg_left hABC hL.le
    linarith
  have ha7 := thm6_a ha hah hh hc1 hc0
  have hPsi := thm6_psi ha hah hh (by linarith) (by linarith) hf hAFQ hFHQ hHCQ hfL
  have hC0 := thm6_C ha hah hh
  have hT := thm6_T ha7 hL (by linarith)
  rw [show a + (h - a) = h by ring] at hT
  have k := mul_le_mul_of_nonpos_left hc0 hC0
  have hpos := mul_pos ha hL
  have k2 : a * (h - a) * (((h - a) * ((1 - h) / 2 - 7 / 64) - 2 * (7 / 64) * (1 - h)) * c +
      ((h - a) * h / 4 - 7 / 64 * h - 7 / 64 * (h - a) / 2)) < 0 := by
    linarith
  have := mul_nonneg hpos.le hPsi
  linarith

/-- In the normalized seven-boundary form, a point in both closed triangles `AHF` and `HCF` gives a
triangle of area less than `7/128` (stated for the seven anchors and that point; the argument
uses `[AFQ], [FHQ], [HCQ]` and the anchors `ABH, ABC, CDE`). -/
theorem minTriangleArea_lt_of_mem_AHF_HCF {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hAHF : InClosedTriangle X (0, a) (f, 1) (0, h))
    (hHCF : InClosedTriangle X (0, h) (c, 0) (f, 1)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := anchorCosts hN.1 (hcon.trans minAnchor_of₁)
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  have hc1 : c < 1 - 7 / 64 := by
    nlinarith [H.CDE, mul_pos (show (0 : ℝ) < 1 - c by linarith)
      (show (0 : ℝ) < 1 - (e - d) by linarith)]
  obtain ⟨x, y⟩ := X
  obtain ⟨h1, h2, h3⟩ := hAHF
  obtain ⟨g1, -, -⟩ := hHCF
  have c1 := cost hcon 0 6 7 rfl h1
  have c2 := cost hcon 6 1 7 rfl h2
  have c3 := cost hcon 1 0 7 rfl h3
  have c4 := cost hcon 1 3 7 rfl g1
  simp only [sevenConfig₁, Matrix.cons_val, sarea] at c1 c2 c3 c4
  exact overlap_AHF_HCF_scalar (x := x) (y := y) ha hah hh hb hbc hc1 hbf hf H.ABH H.ABC (by linarith)
    (by linarith) (by linarith) (by linarith)

/-! ### The bottom-right ear -/

/-- The monotonicity step of `ear_CDE_scalar`: with `b + w = b₀ + w₀ = S ≤ 1`, `w ≥ w₀ > 2b₀`,
the function `s/b + 3sb/w` is at least its value at `(b₀, w₀)`. -/
theorem thm8_mono {S b w b₀ w₀ : ℝ} (hS1 : S ≤ 1) (hb : 0 < b) (hw : 0 < w) (hb0 : 0 < b₀)
    (hw0 : 0 < w₀) (hsum : b + w = S) (hsum0 : b₀ + w₀ = S) (hww : w₀ ≤ w) (h2 : 2 * b₀ < w₀) :
    7 / 64 / b₀ + 3 * (7 / 64) * b₀ / w₀ ≤ 7 / 64 / b + 3 * (7 / 64) * b / w := by
  have hbb : b ≤ b₀ := by linarith
  have key : 3 * S * b * b₀ ≤ w * w₀ := by
    have k1 : w₀ * w₀ ≤ w * w₀ := mul_le_mul_of_nonneg_right hww hw0.le
    have k2 : (2 * b₀) * (2 * b₀) < w₀ * w₀ := mul_self_lt_mul_self (by linarith) h2
    have k3 : b * b₀ ≤ b₀ * b₀ := mul_le_mul_of_nonneg_right hbb hb0.le
    have k4 : 0 ≤ (1 - S) * (b * b₀) := mul_nonneg (by linarith) (mul_pos hb hb0).le
    nlinarith
  rw [div_add_div _ _ hb0.ne' hw0.ne', div_add_div _ _ hb.ne' hw.ne',
    div_le_div_iff₀ (mul_pos hb0 hw0) (mul_pos hb hw)]
  have e : (7 / 64 * w + b * (3 * (7 / 64) * b)) * (b₀ * w₀) -
      (7 / 64 * w₀ + b₀ * (3 * (7 / 64) * b₀)) * (b * w) =
      7 / 64 * (w - w₀) * (w * w₀ - 3 * S * b * b₀) := by
    rw [show b = S - w by linarith, show b₀ = S - w₀ by linarith]; ring
  nlinarith [mul_nonneg (show (0 : ℝ) ≤ w - w₀ by linarith) (sub_nonneg.2 key)]

/-- The final comparison of `ear_CDE_scalar`: with `w₀(M - s) = 3sM` and `b₀ + w₀ = 1 - M`,
`s/M + s/b₀ + 3sb₀/w₀ > 1`, because `P(M) = 4096M³ - 2304M² + 196M + 49 > 0`. -/
theorem thm8_final {M b₀ w₀ : ℝ} (hMs : 7 / 64 < M) (hb0 : 0 < b₀) (hw0 : 0 < w₀)
    (hw0e : w₀ * (M - 7 / 64) = 3 * (7 / 64) * M) (hsum0 : b₀ + w₀ = 1 - M) :
    1 < 7 / 64 / M + 7 / 64 / b₀ + 3 * (7 / 64) * b₀ / w₀ := by
  have hM : 0 < M := by linarith
  have e1 : 3 * (7 / 64) * b₀ / w₀ = b₀ * (M - 7 / 64) / M := by
    rw [div_eq_div_iff hw0.ne' hM.ne']; linear_combination (-b₀) * hw0e
  rw [e1]
  have hq : b₀ * (M - 7 / 64) = -M ^ 2 + (1 - 2 * (7 / 64)) * M - 7 / 64 := by
    have : b₀ = 1 - M - w₀ := by linarith
    rw [this]; linear_combination (-1 : ℝ) * hw0e
  have hP : 0 < 4096 * M ^ 3 - 2304 * M ^ 2 + 196 * M + 49 := by
    nlinarith [mul_nonneg hM.le (sq_nonneg (M - 1 / 3)), sq_nonneg (M - 7 / 24)]
  have key : 0 < (M - 7 / 64) * (7 / 64 * b₀ + 7 / 64 * M + b₀ ^ 2 * (M - 7 / 64) - M * b₀) := by
    have e2 : (M - 7 / 64) * (7 / 64 * b₀ + 7 / 64 * M + b₀ ^ 2 * (M - 7 / 64) - M * b₀) =
        M * ((4096 * M ^ 3 - 2304 * M ^ 2 + 196 * M + 49) / 4096) := by
      linear_combination (b₀ * (M - 7 / 64) + (-M ^ 2 + (1 - 2 * (7 / 64)) * M - 7 / 64) +
        7 / 64 - M) * hq
    rw [e2]; positivity
  have key' : M * b₀ < 7 / 64 * b₀ + 7 / 64 * M + b₀ ^ 2 * (M - 7 / 64) := by
    by_contra hc; push Not at hc
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ M - 7 / 64 by linarith) (sub_nonneg.2 hc)]
  rw [show 7 / 64 / M + 7 / 64 / b₀ + b₀ * (M - 7 / 64) / M =
      (7 / 64 * b₀ + 7 / 64 * M + b₀ ^ 2 * (M - 7 / 64)) / (M * b₀) by field_simp,
    lt_div_iff₀ (mul_pos hM hb0)]
  linarith

/-- The case `e > h` of `ear_CDE_scalar`, in the variables `M = c - b`, `b`, `w = 1 - c`:
`s/M + s/b < 1`, `s/M + 3s/w < 1` and `s/M + s/b + 3sb/w ≤ 1` are incompatible. -/
theorem thm8_case2 {M b w : ℝ} (hM : 0 < M) (hb : 0 < b) (hw : 0 < w) (hsum : b + M + w = 1)
    (h1 : 7 / 64 / M + 7 / 64 / b < 1) (h2 : 7 / 64 / M + 3 * (7 / 64) / w < 1)
    (h3 : 7 / 64 / M + 7 / 64 / b + 3 * (7 / 64) * b / w ≤ 1) : False := by
  have hsb : 0 < 7 / 64 / b := by positivity
  have hsM1 : 7 / 64 / M < 1 := by linarith
  have hMs : 7 / 64 < M := by rwa [div_lt_one hM] at hsM1
  have hMs' : 0 < M - 7 / 64 := by linarith
  set w₀ := 3 * (7 / 64) * M / (M - 7 / 64) with hw0d
  have hw0e : w₀ * (M - 7 / 64) = 3 * (7 / 64) * M := by rw [hw0d, div_mul_cancel₀ _ hMs'.ne']
  have hw0 : 0 < w₀ := by rw [hw0d]; positivity
  have hww : w₀ < w := by
    have k : 3 * (7 / 64) / w < (M - 7 / 64) / M := by
      have : (M - 7 / 64) / M = 1 - 7 / 64 / M := by field_simp
      rw [this]; linarith
    rw [div_lt_div_iff₀ hw hM] at k
    by_contra hc; push Not at hc
    nlinarith [mul_le_mul_of_nonneg_right hc hMs'.le]
  set b₀ := 1 - M - w₀ with hb0d
  have hb0 : 0 < b₀ := by linarith
  have h2b : 2 * b₀ < w₀ := by
    have : (w₀ - 2 * b₀) * (M - 7 / 64) = 2 * M ^ 2 + (7 * (7 / 64) - 2) * M + 2 * (7 / 64) := by
      rw [hb0d]; linear_combination 3 * hw0e
    have hpos : 0 < 2 * M ^ 2 + (7 * (7 / 64) - 2) * M + 2 * (7 / 64) := by
      nlinarith [sq_nonneg (M - 79 / 256)]
    by_contra hc; push Not at hc
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 2 * b₀ - w₀ by linarith) hMs'.le]
  have hmono := thm8_mono (S := 1 - M) (by linarith) hb hw hb0 hw0 (by linarith) (by linarith)
    hww.le h2b
  have hfin := thm8_final hMs hb0 hw0 hw0e (by linarith)
  linarith

/-- The scalar part of `minTriangleArea_lt_of_mem_CDE`: the anchor orders, `f ≤ 1/2`, the costs of `ABC, BCD, ABH, EFH`
and `(1-c)(e-d) ≥ 3s` are incompatible. -/
theorem ear_CDE_scalar {a h b c d e f : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hb : 0 < b)
    (hbc : b < c) (hc : c < 1) (_hd : 0 < d) (hde : d < e) (he : e < 1) (hbf : b ≤ f)
    (hf : f ≤ 1 / 2) (hABC : 7 / 64 ≤ a * (c - b)) (hBCD : 7 / 64 ≤ d * (c - b))
    (hABH : 7 / 64 ≤ b * (h - a)) (hEFH : 7 / 64 ≤ (1 - f) * (1 - h) + f * (1 - e))
    (hneg : 3 * (7 / 64) ≤ (1 - c) * (e - d)) : False := by
  have hL : 0 < h - a := by linarith
  have hM : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hw : 0 < 1 - c := by linarith
  have hHEF : (1 - f) * h + f * e ≤ 1 - 7 / 64 := by linarith
  rcases le_or_gt e h with heh | heh
  · -- `e ≤ h`: Cauchy–Schwarz with `√2 > 7/5`, `√3 > 5/3`
    have hsum : h + e ≤ 2 - 2 * (7 / 64) := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 / 2 - f by linarith) (sub_nonneg.2 heh)]
    have hT1 : 7 / 64 * (2 * (7 / 5) * (61 / 15) - (61 / 15) ^ 2 * (c - b)) ≤ a + d := by
      by_contra hc'; push Not at hc'
      nlinarith [mul_lt_mul_of_pos_right hc' hM, sq_nonneg (61 / 15 * (c - b) - 7 / 5)]
    have hT2 : 7 / 64 * (2 * (61 / 15) - (61 / 15) ^ 2 * b) ≤ h - a := by
      by_contra hc'; push Not at hc'
      nlinarith [mul_lt_mul_of_pos_right hc' hb, sq_nonneg (61 / 15 * b - 1)]
    have hT3 : 7 / 64 * (2 * (5 / 3) * (61 / 15) - (61 / 15) ^ 2 * (1 - c)) ≤ e - d := by
      by_contra hc'; push Not at hc'
      nlinarith [mul_lt_mul_of_pos_right hc' hw, sq_nonneg (61 / 15 * (1 - c) - 5 / 3)]
    nlinarith
  · -- `e > h`
    have hFb : (1 - b) * h + b * e ≤ 1 - 7 / 64 := by
      nlinarith [mul_nonneg (sub_nonneg.2 hbf) (show (0 : ℝ) ≤ e - h by linarith)]
    have e1 : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith
    have e2 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hM]; linarith
    have e3 : 7 / 64 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
    have e4 : 3 * (7 / 64) / (1 - c) ≤ e - d := by rw [div_le_iff₀ hw]; linarith
    have k1 : (1 - b) * (7 / 64 / (c - b) + 7 / 64 / b) ≤ (1 - b) * h :=
      mul_le_mul_of_nonneg_left (by linarith) (by linarith)
    have k2 : b * (7 / 64 / (c - b) + 3 * (7 / 64) / (1 - c)) ≤ b * e :=
      mul_le_mul_of_nonneg_left (by linarith) hb.le
    have k3 : b * (7 / 64 / b) = 7 / 64 := by field_simp
    have k4 : b * (3 * (7 / 64) / (1 - c)) = 3 * (7 / 64) * b / (1 - c) := by ring
    exact thm8_case2 hM hb hw (by ring) (by linarith) (by linarith) (by nlinarith)

/-- In the normalized seven-boundary form: if every anchor triangle has area at least `7/128`, the
doubled area `[CDE] = (1-c)(e-d)` is less than `3s = 21/64`; consequently a free point in the
closed triangle `CDE` gives a triangle of area less than `7/128` (stated for the seven anchors and
that point). -/
theorem minTriangleArea_lt_of_mem_CDE {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (c, 0) (1, d) (1, e) < 3 * (7 / 64)) ∧
      ∀ X : Point, InClosedTriangle X (c, 0) (1, d) (1, e) →
        minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  have part1 : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
      sarea (c, 0) (1, d) (1, e) < 3 * (7 / 64) := by
    intro hmin
    have H := anchorCosts hN.1 hmin
    have e : sarea (c, 0) (1, d) (1, e) = (1 - c) * (e - d) := by simp only [sarea]; ring
    rw [e]
    by_contra hc'; push Not at hc'
    obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
    exact ear_CDE_scalar ha hah hh hb hbc hc hd hde he hbf hf H.ABC H.BCD H.ABH H.EFH hc'
  refine ⟨part1, fun X hX => ?_⟩
  by_contra hcon
  push Not at hcon
  have hlt := part1 (hcon.trans minAnchor_of₁)
  obtain ⟨h1, h2, h3⟩ := hX
  have c1 := cost hcon 3 4 7 rfl h1
  have c2 := cost hcon 4 5 7 rfl h2
  have c3 := cost hcon 5 3 7 rfl h3
  have := sarea_add_sarea_add_sarea (c, 0) (1, d) (1, e) X
  change 7 / 64 ≤ sarea (c, 0) (1, d) X at c1
  change 7 / 64 ≤ sarea (1, d) (1, e) X at c2
  change 7 / 64 ≤ sarea (1, e) (c, 0) X at c3
  linarith

/-! ### Two right-hand triangles of capacity one -/

/-- In the normalized seven-boundary form, if every anchor triangle has area at least `7/128`, then
`1/8 < b ≤ 1/2`, `c ≥ b²/(b-s)` and `b - s - b² > 0` (`s = 7/64`). Used by `minTriangleArea_lt_of_pair_mem_CDF_DEF`,
`minTriangleArea_lt_of_pair_inFarUpperCap` and the exterior case. -/
theorem b_bounds_of_anchor_min {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    1 / 8 < b ∧ b ≤ 1 / 2 ∧ b ^ 2 / (b - 7 / 64) ≤ c ∧ 0 < b - 7 / 64 - b ^ 2 := by
  have H := anchorCosts hN.1 hmin
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  have hABH := H.ABH; have hABC := H.ABC
  -- `ab < b - s` from `bL ≥ s`, `h < 1`
  have hab : a * b < b - 7 / 64 := by nlinarith
  have hbs : 7 / 64 < b := by nlinarith
  -- `bM ≥ sc`
  have hbM : 7 / 64 * c ≤ b * (c - b) := by
    nlinarith [mul_lt_mul_of_pos_right hab (sub_pos.2 hbc)]
  have hc' : b ^ 2 ≤ c * (b - 7 / 64) := by nlinarith
  have h3 : 0 < b - 7 / 64 - b ^ 2 := by nlinarith
  refine ⟨by nlinarith, by linarith, ?_, h3⟩
  rw [div_le_iff₀ (by linarith)]; linarith

/-- The bound `[CDF] < 13/16` of `minTriangleArea_lt_of_pair_mem_CDF_DEF`. -/
theorem thm9_CDF {b c d e f : ℝ} (hb8 : 1 / 8 < b) (hb2 : b ≤ 1 / 2) (hbc : b < c) (hc : c < 1)
    (hbf : b ≤ f) (hfc : f ≤ c) (hd : 0 < d) (_hde : d < e) (he : e < 1)
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hc0 : b ^ 2 ≤ c * (b - 7 / 64)) (h37' : 0 < b - 7 / 64 - b ^ 2) :
    (1 - c) * (1 - 0) - (d - 0) * (f - c) < 13 / 16 := by
  have hw : 7 / 64 < 1 - c := by
    nlinarith [mul_pos (show (0 : ℝ) < 1 - c by linarith) (show (0 : ℝ) < 1 - (e - d) by linarith)]
  have hd1 : d * (1 - c) ≤ (1 - c) - 7 / 64 := by nlinarith
  have hX : (1 - c) * ((1 - c) * (1 - 0) - (d - 0) * (f - c)) ≤
      (1 - c) * (1 - b) - 7 / 64 * (c - b) := by
    have k1 := mul_le_mul_of_nonneg_right hd1 (show (0 : ℝ) ≤ c - f by linarith)
    have k2 := mul_le_mul_of_nonneg_left hbf (show (0 : ℝ) ≤ 1 - c - 7 / 64 by linarith)
    nlinarith
  have hN2 : (3 / 16 - b + 7 / 64 * b) * (b - 7 / 64) - b ^ 2 * (3 / 16 - b + 7 / 64) < 0 := by
    have ht : 0 ≤ b - 1 / 8 := by linarith
    have ht' : 0 ≤ 1 / 2 - b := by linarith
    nlinarith [mul_nonneg (mul_nonneg ht ht) ht', sq_nonneg (b - 1 / 8 - 143 / 3584)]
  have hL : (3 / 16 - b + 7 / 64 * b) - c * (3 / 16 - b + 7 / 64) < 0 := by
    have e1 : ((3 / 16 - b + 7 / 64 * b) - c * (3 / 16 - b + 7 / 64)) * (b - 7 / 64 - b ^ 2) =
        (1 - c) * ((3 / 16 - b + 7 / 64 * b) * (b - 7 / 64) - b ^ 2 * (3 / 16 - b + 7 / 64)) +
          (c * (b - 7 / 64) - b ^ 2) * (7 / 64 * (b - 1)) := by ring
    have h1 : (1 - c) * ((3 / 16 - b + 7 / 64 * b) * (b - 7 / 64) - b ^ 2 * (3 / 16 - b + 7 / 64))
        < 0 := mul_neg_of_pos_of_neg (by linarith) hN2
    have h2 : (c * (b - 7 / 64) - b ^ 2) * (7 / 64 * (b - 1)) ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
    by_contra hc'; push Not at hc'
    have := mul_nonneg hc' h37'.le
    linarith
  by_contra hc'; push Not at hc'
  have := mul_le_mul_of_nonneg_left hc' (show (0 : ℝ) ≤ 1 - c by linarith)
  nlinarith

/-- The bound `[DEF] < 49/64` of `minTriangleArea_lt_of_pair_mem_CDF_DEF`. -/
theorem thm9_DEF {b c d e f : ℝ} (hb8 : 1 / 8 < b) (hbc : b < c) (hc : c < 1) (hd : 0 < d)
    (hde : d < e) (he : e < 1) (hbf : b ≤ f) (hBCD : 7 / 64 ≤ d * (c - b)) :
    (1 - f) * (e - d) < 49 / 64 := by
  have hM : 0 < c - b := by linarith
  have h1 : (1 - f) * (e - d) ≤ (1 - b) * (1 - d) :=
    mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
  have h2 : 7 / 64 < (1 - b) * d := by
    have := mul_lt_mul_of_pos_left (show c - b < 1 - b by linarith) hd
    nlinarith
  nlinarith

/-- In the normalized seven-boundary form: if every anchor triangle has area at least `7/128`, the
doubled areas satisfy `[CDF] < 13/16` and `[DEF] < 49/64`, both below `Ks`; consequently neither
the closed triangle `CDF` nor the closed triangle `DEF` contains both free points at minimum area
at least `7/128`. -/
theorem minTriangleArea_lt_of_pair_mem_CDF_DEF {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (c, 0) (1, d) (f, 1) < 13 / 16 ∧ sarea (1, d) (1, e) (f, 1) < 49 / 64) ∧
      ∀ P Q : Point,
        (InClosedTriangle P (c, 0) (1, d) (f, 1) → InClosedTriangle Q (c, 0) (1, d) (f, 1) →
          minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
        (InClosedTriangle P (1, d) (1, e) (f, 1) → InClosedTriangle Q (1, d) (1, e) (f, 1) →
          minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) := by
  have part1 : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
      sarea (c, 0) (1, d) (f, 1) < 13 / 16 ∧ sarea (1, d) (1, e) (f, 1) < 49 / 64 := by
    intro hmin
    obtain ⟨hb8, hb2, h37, h37'⟩ := b_bounds_of_anchor_min hN hmin
    have H := anchorCosts hN.1 hmin
    obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
    have hbs : 0 < b - 7 / 64 := by linarith
    have hc0 : b ^ 2 ≤ c * (b - 7 / 64) := by rwa [div_le_iff₀ hbs] at h37
    refine ⟨?_, ?_⟩
    · have e1 : sarea (c, 0) (1, d) (f, 1) = (1 - c) * (1 - 0) - (d - 0) * (f - c) := rfl
      rw [e1]
      exact thm9_CDF hb8 hb2 hbc hc hbf hfc hd hde he H.CDE hc0 h37'
    · have e1 : sarea (1, d) (1, e) (f, 1) = (1 - f) * (e - d) := by simp only [sarea]; ring
      rw [e1]
      exact thm9_DEF hb8 hbc hc hd hde he hbf H.BCD
  have hK := capK_gt
  refine ⟨part1, fun P Q => ⟨fun hP hQ => ?_, fun hP hQ => ?_⟩⟩
  · by_contra hcon; push Not at hcon
    have := (part1 (hcon.trans (min₁_left.trans minAnchor_of₁))).1
    have := capacity_one (P := sevenConfig a h b c d e f P Q) 3 4 6 7 8 (by decide) hP hQ
      (by show sarea (c, 0) (1, d) (f, 1) < _; linarith)
    linarith
  · by_contra hcon; push Not at hcon
    have := (part1 (hcon.trans (min₁_left.trans minAnchor_of₁))).2
    have := capacity_one (P := sevenConfig a h b c d e f P Q) 4 5 6 7 8 (by decide) hP hQ
      (by show sarea (1, d) (1, e) (f, 1) < _; linarith)
    linarith

/-! ### The two upper exterior caps -/

/-- The scalar part of `minTriangleArea_lt_of_inNearUpperCap`: for `X = (x, y)` in the nearer upper cap, the cost of `ABC`,
`x(h-a) ≥ s` (triangle `AHX`) and `(1-h)(f-x) ≥ s` are incompatible. -/
theorem near_upper_cap_scalar {a h b c f x : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1)
    (hf : f ≤ 1 / 2) (hABC : 7 / 64 ≤ a * (c - b)) (hM : c - b ≤ 1 - 2 * (7 / 64))
    (hAHX : 7 / 64 ≤ x * (h - a)) (hq : 7 / 64 ≤ (1 - h) * (f - x)) (hx0 : 0 ≤ x) : False := by
  have hL : 0 < h - a := by linarith
  have hα : 0 < 1 - h := by linarith
  have hfx : 0 < f - x := by
    by_contra hneg; push Not at hneg
    nlinarith [mul_nonneg hα.le (sub_nonneg.2 hneg)]
  have hpq : 7 / 64 * (7 / 64) ≤ (x * (1 - h)) * ((f - x) * (h - a)) := by
    have := mul_le_mul hAHX hq (by norm_num) (by positivity)
    linarith
  have hp : 0 ≤ x * (1 - h) := by positivity
  have hq' : 0 ≤ (f - x) * (h - a) := by positivity
  have key : 7 / 64 * 2 ≤ x * (1 - h) + (f - x) * (h - a) := by
    by_contra hk; push Not at hk
    nlinarith [sq_nonneg (x * (1 - h) - (f - x) * (h - a))]
  -- `f (1 - a) ≥ 4s`, so `a ≤ 1/8`; but `a ≥ s/(1-2s) = 7/50`
  have h4 : 4 * (7 / 64) ≤ f * (1 - a) := by linarith
  have ha8 : a ≤ 1 / 8 := by nlinarith
  nlinarith

/-- In the normalized seven-boundary form, a point in the nearer upper exterior cap
`conv{H, F, (0,1)}` gives a triangle of area less than `7/128`, whatever the other free point
(stated for the seven anchors and that point). -/
theorem minTriangleArea_lt_of_inNearUpperCap {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InNearUpperCap h f X) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := anchorCosts hN.1 (hcon.trans minAnchor_of₁)
  obtain ⟨hb1, hc1, hM, -⟩ := H.basic hN.1
  have hABC := H.ABC
  clear H
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨x, y⟩ := X
  obtain ⟨h1, h2, h3⟩ := hX
  simp only [sarea] at h1 h2 h3
  have hy1 : y ≤ 1 := by nlinarith
  have hx0 : 0 ≤ x := by nlinarith
  have hAHX : 7 / 64 ≤ x * (h - a) := by
    have := cost_neg (v := -(x * (h - a))) hcon 0 1 7 (by sa_eval)
      (by nlinarith [mul_nonneg hx0 (sub_nonneg.2 hah.le)])
    linarith
  have hHFX : 7 / 64 ≤ f * (y - h) - (1 - h) * x :=
    cost hcon 1 6 7 (by sa_eval) (by linarith)
  have hq : 7 / 64 ≤ (1 - h) * (f - x) := by
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ f by linarith) (sub_nonneg.2 hy1)]
  exact near_upper_cap_scalar ha hah hh hf hABC hM hAHX hq hx0

/-- **Support-cell bound.** For a counterclockwise support triangle `UVW` with contacts
`H ∈ (U, W)`, `F ∈ (V, W)` and fifth point `X` with `[UFX] > 0` (`TypeII.IsSupportTriangle`), if
the five points have least area at least `t > 0`, then `[UVW] ≥ 2Kt` with `K = 4 + 2√3`. The cell
analysis of `TypeII.hsNormal_five_cells` (the condition `[UFX] > 0` rules out cells II and III)
bounds the normalized doubled minimum by `1/K` in cell I, `1/12` in cell IV and
`(5√5-11)/2 < 1/10` in cell V. -/
theorem support_bound {U V W H F X : Point} (hS : TypeII.IsSupportTriangle U V W H F X)
    (hL : 0 < sarea U F X) {t : ℝ} (ht : 0 < t)
    (hmin : t ≤ minTriangleArea ![U, V, H, F, X]) :
    2 * TypeII.Ktwo * t ≤ sarea U V W := by
  obtain ⟨m1, m2, m3, m4, e1, e2, h₀, f₀, hdet, hA', hE', -, hH', hF', hN⟩ :=
    TypeII.exists_affineMap_hsNormal hS
  have hS0 : 0 < sarea U V W := hS.1
  have hdet0 : 0 < m1 * m4 - m2 * m3 := by rw [hdet]; positivity
  set φ := affineMap m1 m2 m3 m4 e1 e2
  have hcfg : TypeII.hsConfig h₀ f₀ (φ X) = φ ∘ ![U, V, H, F, X] := by
    funext k; fin_cases k
    · exact hA'.symm
    · exact hE'.symm
    · exact hH'.symm
    · exact hF'.symm
    · rfl
  have hmin' : 2 * t * (m1 * m4 - m2 * m3) / 2 ≤
      minTriangleArea (TypeII.hsConfig h₀ f₀ (φ X)) := by
    rw [hcfg, minTriangleArea_affineMap, abs_of_pos hdet0]
    nlinarith
  have hs : 0 < 2 * t * (m1 * m4 - m2 * m3) := by positivity
  have five := TypeII.hsNormal_five_cells hN hs hmin'
  have hL' : 0 < sarea TypeII.hsA (TypeII.hsF f₀) (φ X) := by
    rw [← hA', ← hF', sarea_affineMap]; exact mul_pos hdet0 hL
  have hK7 : TypeII.Ktwo < 15 / 2 := by unfold TypeII.Ktwo; linarith [TypeII.sqrt_three_lt]
  have h10 : 1 / 10 ≤ 1 / TypeII.Ktwo := by
    rw [div_le_div_iff₀ (by norm_num) TypeII.Ktwo_pos]; linarith
  have h12 : 1 / 12 ≤ 1 / TypeII.Ktwo := by
    rw [div_le_div_iff₀ (by norm_num) TypeII.Ktwo_pos]; linarith
  have hσ : 2 * t * (m1 * m4 - m2 * m3) ≤ 1 / TypeII.Ktwo := by
    rcases five.1 with hI | hII | hIII | hIV | hV
    · exact (TypeII.inCellI_bound hN hs hmin' hI).2
    · exact absurd hII.1 (not_lt.2 hL'.le)
    · exact absurd hIII.1 (not_lt.2 hL'.le)
    · exact (TypeII.inCellIV_bound hN hs hmin' hIV).trans h12
    · obtain ⟨-, h1, h2⟩ := TypeII.inCellV_bound hN hs hmin' hV
      linarith
  rw [hdet, le_div_iff₀ TypeII.Ktwo_pos] at hσ
  have e : 2 * t * (1 / sarea U V W) * TypeII.Ktwo = 2 * TypeII.Ktwo * t / sarea U V W := by ring
  rw [e, div_le_one hS0] at hσ
  exact hσ

/-- The support triangle of `minTriangleArea_lt_of_pair_inFarUpperCap`: for `X = (x₁,x₂)`, `Y = (y₁,y₂)` beyond `EF` with `Y`
weakly below the line `FX` (`(1-x₂)(y₁-f) ≤ (1-y₂)(x₁-f)`), the triangle `F, D, K'` with
`K' = (1,k)` the right-side intercept of `FX` (`e < k ≤ 1`) is a support triangle with contacts
`X ∈ (F, K')`, `E ∈ (D, K')` and fifth point `Y`. -/
theorem far_support {d e f x₁ x₂ y₁ y₂ : ℝ} (hf : f < 1) (_hd : 0 < d) (hde : d < e)
    (_he : e < 1) (hx1 : f < x₁) (hx1' : x₁ < 1) (hx2 : x₂ ≤ 1) (hy1 : f < y₁) (hy1' : y₁ < 1)
    (hXE : 0 < sarea (f, 1) (1, e) (x₁, x₂)) (hYE : 0 < sarea (f, 1) (1, e) (y₁, y₂))
    (hXY : (1 - x₂) * (y₁ - f) ≤ (1 - y₂) * (x₁ - f)) :
    ∃ k : ℝ, d < k ∧ k ≤ 1 ∧
      TypeII.IsSupportTriangle (f, 1) (1, d) (1, k) (x₁, x₂) (1, e) (y₁, y₂) := by
  have hxf : 0 < x₁ - f := by linarith
  have hf1 : 0 < 1 - f := by linarith
  simp only [sarea] at hXE hYE
  obtain ⟨l, hl⟩ : ∃ l : ℝ, l * (1 - f) = x₁ - f := ⟨(x₁ - f) / (1 - f), by field_simp⟩
  have hl0 : 0 < l := by
    by_contra hc'; push Not at hc'; nlinarith [mul_nonpos_of_nonpos_of_nonneg hc' hf1.le]
  have hl1 : l < 1 := by
    by_contra hc'; push Not at hc'; nlinarith [mul_le_mul_of_nonneg_right hc' hf1.le]
  obtain ⟨k, hk⟩ : ∃ k : ℝ, (1 - k) * l = 1 - x₂ :=
    ⟨1 - (1 - x₂) / l, by field_simp; ring⟩
  have hk1 : k ≤ 1 := by
    by_contra hc'; push Not at hc'; nlinarith [mul_pos (show (0 : ℝ) < k - 1 by linarith) hl0]
  have e1 : (1 - k) * (x₁ - f) = (1 - f) * (1 - x₂) := by rw [← hl, ← hk]; ring
  have hek : e < k := by
    by_contra hc'; push Not at hc'
    nlinarith [mul_le_mul_of_nonneg_right (show 1 - e ≤ 1 - k by linarith) hxf.le]
  have hkd : 0 < k - d := by linarith
  refine ⟨k, by linarith, hk1, ?_, ⟨1 - l, l, by linarith, hl0, by ring, ?_⟩,
    ⟨(k - e) / (k - d), (e - d) / (k - d), div_pos (by linarith) hkd, div_pos (by linarith) hkd,
      by field_simp; ring, ?_⟩, ?_⟩
  · simp only [sarea]; nlinarith [mul_pos hf1 hkd]
  · ext
    · simp only [Prod.fst_add, Prod.smul_fst, smul_eq_mul]; linear_combination hl
    · simp only [Prod.snd_add, Prod.smul_snd, smul_eq_mul]; linear_combination (-1 : ℝ) * hk
  · ext
    · simp only [Prod.fst_add, Prod.smul_fst, smul_eq_mul]; field_simp; ring
    · simp only [Prod.snd_add, Prod.smul_snd, smul_eq_mul]; field_simp; ring
  · apply mem_convexHull_of_sarea
    · simp only [sarea]; nlinarith [mul_pos hf1 hkd]
    · simp only [sarea]; nlinarith [mul_pos hkd (show (0 : ℝ) < 1 - y₁ by linarith)]
    · -- `[K'FY] = (1-f)(1-y₂) - (1-k)(y₁-f) ≥ 0`
      simp only [sarea]
      have e2 : (1 - k) * (y₁ - f) * (x₁ - f) = (1 - x₂) * (y₁ - f) * (1 - f) := by
        rw [← hl, ← hk]; ring
      have : (1 - k) * (y₁ - f) ≤ (1 - y₂) * (1 - f) := by
        by_contra hc'; push Not at hc'
        nlinarith [mul_lt_mul_of_pos_right hc' hxf, mul_le_mul_of_nonneg_right hXY hf1.le]
      nlinarith
    · simp only [sarea]
      nlinarith [mul_le_mul_of_nonneg_right (show 1 - e ≤ 1 - d by linarith)
        (show (0 : ℝ) ≤ y₁ - f by linarith)]

/-- The core of `minTriangleArea_lt_of_pair_inFarUpperCap`: with the support triangle `F, D, K'` of `far_support`, since
`[FEY] > 0` the bound `support_bound` gives `Ω = (1-f)(k-d) ≥ Ks > 13/16`, while
`Ω ≤ (1-b)(1-d) < 49/64`. -/
theorem far_cap_core {b c d e f x₁ x₂ y₁ y₂ : ℝ} (hb8 : 1 / 8 < b) (hbf : b ≤ f) (hf : f ≤ 1 / 2)
    (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hBCD : 7 / 64 ≤ d * (c - b))
    (hx1 : f < x₁) (hx1' : x₁ < 1) (hx2 : x₂ ≤ 1) (hy1 : f < y₁) (hy1' : y₁ < 1)
    (hXE : 0 < sarea (f, 1) (1, e) (x₁, x₂)) (hYE : 0 < sarea (f, 1) (1, e) (y₁, y₂))
    (hXY : (1 - x₂) * (y₁ - f) ≤ (1 - y₂) * (x₁ - f))
    (hmin : 7 / 128 ≤ minTriangleArea ![(f, 1), (1, d), (x₁, x₂), (1, e), (y₁, y₂)]) :
    False := by
  obtain ⟨k, hkd, hk1, hS⟩ :=
    far_support (by linarith) hd hde he hx1 hx1' hx2 hy1 hy1' hXE hYE hXY
  have hb := support_bound hS hYE (by norm_num) hmin
  have hK := capK_gt
  unfold capK at hK
  unfold TypeII.Ktwo at hb
  have hΩ : sarea (f, 1) (1, d) (1, k) = (1 - f) * (k - d) := by simp only [sarea]; ring
  rw [hΩ] at hb
  have h1 : (1 - f) * (k - d) ≤ (1 - b) * (1 - d) :=
    mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
  have h2 : 7 / 64 < (1 - b) * d := by
    have := mul_lt_mul_of_pos_left (show c - b < 1 - b by linarith) hd
    linarith
  linarith

/-- In the normalized seven-boundary form, the far upper exterior cap `conv{F, E, (1,1)}` does not
contain both free points at minimum area at least `7/128`: the support triangle of `far_support`
has doubled area `Ω ≥ Ks > 13/16` by `support_bound`, while `Ω < 49/64`. -/
theorem minTriangleArea_lt_of_pair_inFarUpperCap {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hP : InFarUpperCap e f P) (hQ : InFarUpperCap e f Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hA := hcon.trans (min₁_left.trans minAnchor_of₁)
  obtain ⟨hb8, -, -, -⟩ := b_bounds_of_anchor_min hN hA
  have H := anchorCosts hN.1 hA
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨p₁, p₂⟩ := P
  obtain ⟨q₁, q₂⟩ := Q
  obtain ⟨u1, u2, u3⟩ := hP
  obtain ⟨v1, v2, v3⟩ := hQ
  have cP := cost hcon 6 5 7 rfl u1
  have cQ := cost hcon 6 5 8 rfl v1
  simp only [sarea] at u2 u3 v2 v3
  have dP := cost hcon 4 5 7 (v := (e - d) * (1 - p₁)) (by sa_eval)
    (mul_nonneg (by linarith) (by nlinarith))
  have dQ := cost hcon 4 5 8 (v := (e - d) * (1 - q₁)) (by sa_eval)
    (mul_nonneg (by linarith) (by nlinarith))
  change 7 / 64 ≤ sarea (f, 1) (1, e) (p₁, p₂) at cP
  change 7 / 64 ≤ sarea (f, 1) (1, e) (q₁, q₂) at cQ
  have hp1 : p₁ < 1 := by nlinarith
  have hq1 : q₁ < 1 := by nlinarith
  have hp2 : p₂ ≤ 1 := by nlinarith
  have hq2 : q₂ ≤ 1 := by nlinarith
  have cP' := cP; have cQ' := cQ
  simp only [sarea] at cP' cQ'
  have hpf : f < p₁ := by nlinarith
  have hqf : f < q₁ := by nlinarith
  rcases le_total ((1 - p₂) * (q₁ - f)) ((1 - q₂) * (p₁ - f)) with hXY | hXY
  · have hm := min_five' (sevenConfig a h b c d e f (p₁, p₂) (q₁, q₂)) 6 4 7 5 8 (by decide)
    exact far_cap_core hb8 hbf hf hbc hc hd hde he H.BCD hpf hp1 hp2 hqf hq1
      (by linarith) (by linarith) hXY (hcon.trans hm)
  · have hm := min_five' (sevenConfig a h b c d e f (p₁, p₂) (q₁, q₂)) 6 4 8 5 7 (by decide)
    exact far_cap_core hb8 hbf hf hbc hc hd hde he H.BCD hqf hq1 hq2 hpf hp1
      (by linarith) (by linarith) hXY (hcon.trans hm)

/-- A point of the square outside the open anchor heptagon lies in one of the two lower caps (in the
form used by `GlobalCompletion.minTriangleArea_lt_of_lowerCap`) or is a far-cap point: the nearer upper cap is empty by
`minTriangleArea_lt_of_inNearUpperCap`, and a point on a side line of the heptagon gives a zero area. -/
theorem outside_cases {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {Z : Point}
    (hZ : Z ∈ unitSquare) (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig₁ a h b c d e f Z))
    (hout : ¬ InHeptagon a h b c d e f Z) :
    (0 ≤ Z.1 ∧ 0 ≤ Z.2 ∧ a * Z.1 + b * Z.2 ≤ a * b) ∨
      (Z.1 ≤ 1 ∧ 0 ≤ Z.2 ∧ d * (1 - Z.1) + (1 - c) * Z.2 ≤ d * (1 - c)) ∨
      FarCapPoint e f Z := by
  have hN' := hN
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN'
  obtain ⟨z₁, z₂⟩ := Z
  obtain ⟨hz1, hz1', hz2, hz2'⟩ := hZ
  simp only at hz1 hz1' hz2 hz2' ⊢
  simp only [InHeptagon, not_and_or, not_lt] at hout
  rcases hout with h1 | h1 | h1 | h1 | h1 | h1 | h1
  · left; simp only [sarea] at h1; exact ⟨hz1, hz2, by linarith⟩
  · exfalso
    simp only [sarea] at h1
    have := cost hmin 2 3 7 (v := (c - b) * z₂) (by sa_eval) (mul_nonneg (by linarith) hz2)
    nlinarith
  · right; left; simp only [sarea] at h1; exact ⟨hz1', hz2, by linarith⟩
  · exfalso
    simp only [sarea] at h1
    have := cost hmin 4 5 7 (v := (e - d) * (1 - z₁)) (by sa_eval)
      (mul_nonneg (by linarith) (by linarith))
    nlinarith
  · right; right
    have c1 := cost hmin 6 5 7 (v := sarea (f, 1) (1, e) (z₁, z₂)) rfl
      (by rw [sarea_swap₁₂]; linarith)
    have c2 := cost hmin 4 5 7 (v := (e - d) * (1 - z₁)) (by sa_eval)
      (mul_nonneg (by linarith) (by linarith))
    have c1' := c1
    simp only [sarea] at c1'
    have hz1l : z₁ < 1 := by nlinarith
    have hfz : f < z₁ := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - f by linarith) (show (0 : ℝ) ≤ 1 - z₂ by linarith)]
    have hez : e < z₂ := by
      nlinarith [mul_pos (show (0 : ℝ) < 1 - e by linarith) (show (0 : ℝ) < 1 - z₁ by linarith)]
    exact ⟨hfz, hz1l, hez, hz2', by linarith⟩
  · exfalso
    have hX : InNearUpperCap h f (z₁, z₂) := by
      refine ⟨by rw [sarea_swap₁₂]; linarith, ?_, ?_⟩ <;> simp only [sarea] <;> nlinarith
    have := minTriangleArea_lt_of_inNearUpperCap hN hX
    linarith
  · exfalso
    simp only [sarea] at h1
    have := cost hmin 1 0 7 (v := (h - a) * z₁) (by sa_eval) (mul_nonneg (by linarith) hz1)
    nlinarith

/-- A far-cap point lies in the closed far upper cap. -/
theorem farCapPoint_mem {e f : ℝ} {Z : Point} (he : e < 1) (hf : f < 1) (hZ : FarCapPoint e f Z) :
    InFarUpperCap e f Z := by
  obtain ⟨z₁, z₂⟩ := Z
  obtain ⟨h1, h2, h3, h4, h5⟩ := hZ
  simp only at h1 h2 h3 h4
  refine ⟨h5.le, ?_, ?_⟩ <;> simp only [sarea] <;> nlinarith

/-- In the normalized seven-boundary form, with both free points in the square and minimum area at
least `7/128`, if the free points are not both strictly inside the anchor heptagon, then exactly
one of them lies strictly beyond `EF` in the far upper cap (`FarCapPoint`) and the other strictly
inside the heptagon. -/
theorem farCapPoint_of_not_both_inHeptagon {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f)
    {P Q : Point} (hPs : P ∈ unitSquare) (hQs : Q ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hout : ¬ (InHeptagon a h b c d e f P ∧ InHeptagon a h b c d e f Q)) :
    (FarCapPoint e f P ∧ InHeptagon a h b c d e f Q) ∨
      (FarCapPoint e f Q ∧ InHeptagon a h b c d e f P) := by
  have hN' := hN
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN'
  have lower : ∀ (hcap : GlobalCompletion.InLowerLeftCap a b P ∨
      GlobalCompletion.InLowerRightCap c d P ∨ GlobalCompletion.InLowerLeftCap a b Q ∨
      GlobalCompletion.InLowerRightCap c d Q), False := fun hcap =>
    absurd hmin (not_le.2 (GlobalCompletion.minTriangleArea_lt_of_lowerCap ha hah hh hb hbc hc hd hde he (by linarith)
      (by linarith) hPs hQs hcap))
  by_cases hPin : InHeptagon a h b c d e f P
  · have hQin : ¬ InHeptagon a h b c d e f Q := fun hQ => hout ⟨hPin, hQ⟩
    rcases outside_cases hN hQs (hmin.trans min₁_right) hQin with hq | hq | hq
    · exact (lower (Or.inr (Or.inr (Or.inl hq)))).elim
    · exact (lower (Or.inr (Or.inr (Or.inr hq)))).elim
    · exact Or.inr ⟨hq, hPin⟩
  · rcases outside_cases hN hPs (hmin.trans min₁_left) hPin with hp | hp | hp
    · exact (lower (Or.inl hp)).elim
    · exact (lower (Or.inr (Or.inl hp))).elim
    · by_cases hQin : InHeptagon a h b c d e f Q
      · exact Or.inl ⟨hp, hQin⟩
      · rcases outside_cases hN hQs (hmin.trans min₁_right) hQin with hq | hq | hq
        · exact (lower (Or.inr (Or.inr (Or.inl hq)))).elim
        · exact (lower (Or.inr (Or.inr (Or.inr hq)))).elim
        · exact absurd hmin (not_le.2 (minTriangleArea_lt_of_pair_inFarUpperCap hN (farCapPoint_mem he (by linarith) hp)
            (farCapPoint_mem he (by linarith) hq)))

end Heilbronn.Nine.SevenBoundaryCaps
