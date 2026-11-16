module

public import Heilbronn.Nine.C1.TopCapConvexPair
public import Heilbronn.Nine.C1.TopCapRadialSplit

/-! # The two side ears of a C1 top-cap extension are empty

Setting: the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`,
`s = 8/73 < 2A₀`, `ρ = 49/60`; a competitive nine-point configuration `c1Config h c d f L M X P`
(least area at least `A₀`) with two free points `L, M` inside `OHC` (used only through
`hc ≥ (4 + 2√3)s > ρ`) and a top-cap point `X` beyond `DF`.

Results:
* `jStar_neg`: the scalar inequality `J* = AU - s(A + 3U + Δ) < 0` under the relaxed conditions
  `hc ≥ ρ`, `hf, cd, A, U ≥ s`;
* `jStar_reduced_neg`: `hJ* < 0` on the box `ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ` of the reduced
  parametrization `reducedHCDF` (two halves);
* `theorem_main`: `-[HFX] < 3s` and `[CDX] < 3s`, so neither side ear `HFX`, `CDX` contains a
  further actual point;
* `upperQuad_radial_split`: with one further point `P` in the pentagon, `P` lies inside `OCXH`, the
  lower points are split by `OX`, and the triangle of `OCXH` holding `P` gives the area bounds
  `cY ≥ Ks` or `hx ≥ Ks`; used by `C1TwoLowerCompletion.topCap_upperQuad_OCX_false` and
  `C1TwoLowerCompletion.topCap_upperQuad_false`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1TopCapSideEars

open Heilbronn.Nine.C1 Heilbronn.Nine.C1TopCapConvexPair Heilbronn.Nine.C1TwoLower

/-- `J* = AU - s(A + 3U + Δ)`, `s = 8/73`. -/
def jStar (h c d f : ℝ) : ℝ :=
  areaA c d f * areaU h d f - 8 / 73 * (areaA c d f + 3 * areaU h d f + areaΔ h c d f)

/-- `hJ*` in the reduced parameters `(h, u, v)` = `var 0, 1, 2`:
`hJ* = hA·U - s(hA + 3hU + hΔ)` (with the expressions of `ConvexPairCert`). -/
def ehJ : Cert.Expr :=
  open Cert.Expr in
  ConvexPairCert.ehA * ConvexPairCert.eU -
    k (8 / 73) * (ConvexPairCert.ehA + k 3 * v 0 * ConvexPairCert.eU + ConvexPairCert.ehD)

/-- The certificate for `jStar_reduced_neg`: two boxes (the `v` interval halved). -/
theorem cert_check :
    ltreeCheck [(0 - ehJ, [2, 2, 2])] (.split 2 (4057 / 8760) (.leaf 0 63) (.leaf 0 62))
      [(49 / 60, 1), (8 / 73, 49 / 60), (8 / 73, 49 / 60)] = true := by
  decide +kernel

/-- In the reduced parametrization `reducedHCDF` at `hc = ρ`, `hJ* < 0` throughout the box
`ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ`: the `v` interval is halved, and on each half all tensor Bernstein
coefficients of `hJ*` (degree `(2,2,2)`) are negative (`cert_check`). -/
theorem jStar_reduced_neg (h u v : ℝ) (hh : 49 / 60 ≤ h) (hh' : h ≤ 1)
    (hu : 8 / 73 ≤ u) (hu' : u ≤ 49 / 60) (hv : 8 / 73 ≤ v) (hv' : v ≤ 49 / 60) :
    h * jStar (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
      (reducedHCDF h u v).2.2.2 < 0 := by
  have hx := pointOf_box3 (x := h) (y := u) (z := v) (p := ((49 / 60 : ℚ), (1 : ℚ)))
    (q := ((8 / 73 : ℚ), (49 / 60 : ℚ))) (r := ((8 / 73 : ℚ), (49 / 60 : ℚ)))
    ⟨by push_cast; linarith, by push_cast; linarith⟩ ⟨by push_cast; linarith, by push_cast; linarith⟩
    ⟨by push_cast; linarith, by push_cast; linarith⟩
  obtain ⟨p, hp, hpos⟩ := ltreeCheck_sound _ _ cert_check _ hx
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
  subst hp
  have h0 : 0 < h := by linarith
  have e : ehJ.eval (pointOf [h, u, v]) = h * jStar (reducedHCDF h u v).1 (reducedHCDF h u v).2.1
      (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 := by
    simp only [ehJ, ConvexPairCert.ehA, ConvexPairCert.eU, ConvexPairCert.ehD,
      Cert.Expr.eval_plus, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_k,
      Cert.Expr.eval_v, Cert.Expr.eval_one, pointOf_zero, pointOf_succ, reducedHCDF, jStar,
      areaA, areaU, areaΔ]
    push_cast
    field_simp
    ring
  simp only [Cert.Expr.eval_minus, Cert.Expr.eval_zero, e] at hpos
  linarith

/-- Along the decreasing path (`h' ≤ h`, `c' ≤ c`, `d, f` fixed) `J* ≥ 0` is preserved. -/
theorem jstar_mono {h c d f h' c' : ℝ} (hA : C1AnchorsWeak h c d f) (hΔ : 0 < areaΔ h c d f)
    (hA' : 8 / 73 ≤ areaA c d f) (hU : 8 / 73 ≤ areaU h d f) (hn : 0 ≤ jStar h c d f)
    (h'h : h' ≤ h) (c'c : c' ≤ c) : 0 ≤ jStar h' c' d f := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have mA : areaA c d f ≤ areaA c' d f := by
    unfold areaA
    have := mul_le_mul_of_nonneg_left c'c (show (0 : ℝ) ≤ 1 - d by linarith); linarith
  have mU : areaU h d f ≤ areaU h' d f := by
    unfold areaU
    have := mul_le_mul_of_nonneg_left h'h (show (0 : ℝ) ≤ 1 - f by linarith); linarith
  have mΔ : areaΔ h' c' d f ≤ areaΔ h c d f := by
    unfold areaΔ
    have := mul_le_mul (show 1 - h ≤ 1 - h' by linarith) (show 1 - c ≤ 1 - c' by linarith)
      (show (0 : ℝ) ≤ 1 - c by linarith) (show (0 : ℝ) ≤ 1 - h' by linarith)
    linarith
  have hA3 : 3 * (8 / 73) < areaA c d f := by
    unfold jStar at hn
    by_contra hn'; push Not at hn'
    have := mul_le_mul_of_nonneg_left hn' (show (0 : ℝ) ≤ areaU h d f by linarith)
    linarith
  unfold jStar at hn ⊢
  have p1 := mul_nonneg (show (0 : ℝ) ≤ areaA c' d f - 3 * (8 / 73) by linarith)
    (show (0 : ℝ) ≤ areaU h' d f - areaU h d f by linarith)
  have p2 := mul_nonneg (show (0 : ℝ) ≤ areaU h d f - 8 / 73 by linarith)
    (show (0 : ℝ) ≤ areaA c' d f - areaA c d f by linarith)
  linarith

/-- Under the weak anchor conditions and the relaxed conditions `hc ≥ ρ = 49/60`,
`hf, cd, A, U ≥ s = 8/73`: `J* = AU - s(A + 3U + Δ) < 0`. By transposition (which exchanges `A, U`
and fixes `Δ`) also `AU - s(3A + U + Δ) < 0`. The proof follows the decreasing path of
`C1TopCapConvexPair.path_endpoint` to `hc = ρ`, along which `J* ≥ 0` is preserved (`jstar_mono`),
and applies `jStar_reduced_neg`. -/
theorem jStar_neg {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) (hhc : 49 / 60 ≤ h * c)
    (hhf : 8 / 73 ≤ h * f) (hcd : 8 / 73 ≤ c * d) (hA' : 8 / 73 ≤ areaA c d f)
    (hU : 8 / 73 ≤ areaU h d f) :
    jStar h c d f < 0 := by
  by_contra hn; push Not at hn
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have hΔ := (area_sum_and_areaΔ_pos ⟨hd, hdh, hh, hf, hfc, hc⟩).2 hhc hhf hcd
  have hB : 0 < bracketB h c d f := by
    unfold jStar at hn; unfold bracketB; linarith
  obtain ⟨aS, uS, -, h8l, h8u⟩ := df_bounds ⟨hd, hdh, hh, hf, hfc, hc⟩ hhf hcd hhc hB
  obtain ⟨h', c', hc'h', h'0, h'd, h'h, c'f, c'c, h'f, c'd⟩ :=
    path_endpoint ⟨hd, hdh, hh, hf, hfc, hc⟩ hhf hcd hhc h8l h8u
  have hJ' := jstar_mono ⟨hd, hdh, hh, hf, hfc, hc⟩ hΔ hA' hU hn h'h c'c
  have h'1 : h' ≤ 1 := h'h.trans hh
  have c'1 : c' ≤ 1 := c'c.trans hc
  have h'ρ : 49 / 60 ≤ h' := by
    have := mul_le_mul_of_nonneg_left c'1 h'0.le; linarith
  have uρ : h' * f ≤ 49 / 60 := by
    have := mul_le_mul_of_nonneg_left c'f h'0.le; linarith
  have vρ : c' * d ≤ 49 / 60 := by
    have := mul_le_mul_of_nonneg_left h'd (show (0 : ℝ) ≤ c' by linarith); linarith
  have := jStar_reduced_neg h' (h' * f) (c' * d) h'ρ h'1 h'f uρ c'd vρ
  rw [reduced_eq h'0 hc'h'] at this
  dsimp only at this
  have := mul_nonneg h'0.le hJ'
  linarith

/-- In a competitive nine-point C1 configuration `c1Config h c d f L M X P` (weak anchor
conditions, least area at least `A₀`) with `L, M` strictly inside `OHC` and `X` in the top cap
beyond `DF`: both side ears have doubled area less than `3s`, `-[HFX] < 3s` and `[CDX] < 3s`
(`s = 8/73`), so neither `HFX` nor `CDX` contains a further actual point. -/
theorem theorem_main {h c d f : ℝ} {L M X P : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hP : P ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X P))
    (hLl : InLower h c L) (hMl : InLower h c M) (hXc : InTopCap d f X) :
    -sarea (ptH h) (ptF f) X < 3 * (8 / 73) ∧ sarea (ptC c) (ptD d) X < 3 * (8 / 73) ∧
      ∀ i, ¬ InsideTriangle (freePt L M X P i) (ptH h) (ptF f) X ∧
        ¬ InsideTriangle (freePt L M X P i) (ptC c) (ptD d) X := by
  obtain ⟨b1, b2, b3, b4, hid, hcap⟩ := topCap_cost_bounds hA hL hM hX hP hmin
  have hk := two_in hmin 0 1 4 5 6 (by decide) (Or.inl hLl) (Or.inl hMl)
  have e : sarea ptO (ptC c) (ptH h) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have hpos : 0 ≤ h * c := mul_nonneg (by linarith [hA.2.1, hA.1]) (by linarith [hA.2.2.2.1,
    hA.2.2.2.2.1])
  rw [show (c1Config h c d f L M X P 0) = ptO from rfl, show (c1Config h c d f L M X P 1) = ptC c
    from rfl, show (c1Config h c d f L M X P 4) = ptH h from rfl, e, abs_of_nonneg hpos] at hk
  have hhc : 49 / 60 ≤ h * c := by linarith [kσ_gt]
  obtain ⟨aX, bX, rX, -⟩ := hcap 2 hXc.le
  simp only [freePt, Matrix.cons_val] at aX bX rX
  have idX := hid X
  have hΔ := (area_sum_and_areaΔ_pos hA).2 hhc b3 b4
  have hα : -sarea (ptH h) (ptF f) X < 3 * (8 / 73) := by
    by_contra hn; push Not at hn
    obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
    obtain ⟨e1, e2, e3⟩ := swap_AUΔ h c d f
    have := jStar_neg (h := c) (c := h) (d := f) (f := d) ⟨hf, hfc, hc, hd, hdh, hh⟩ (by linarith)
      (by linarith) (by linarith) (by rw [e1]; exact b2) (by rw [e2]; exact b1)
    unfold jStar at this
    rw [e1, e2, e3] at this
    have p1 := mul_le_mul_of_nonneg_left hn (show (0 : ℝ) ≤ areaA c d f by linarith)
    have p2 := mul_le_mul_of_nonneg_left bX (show (0 : ℝ) ≤ areaU h d f by linarith)
    have p3 := mul_le_mul_of_nonneg_left rX hΔ.le
    linarith
  have hβ : sarea (ptC c) (ptD d) X < 3 * (8 / 73) := by
    by_contra hn; push Not at hn
    have := jStar_neg hA hhc b3 b4 b1 b2
    unfold jStar at this
    have p1 := mul_le_mul_of_nonneg_left aX (show (0 : ℝ) ≤ areaA c d f by linarith)
    have p2 := mul_le_mul_of_nonneg_left hn (show (0 : ℝ) ≤ areaU h d f by linarith)
    have p3 := mul_le_mul_of_nonneg_left rX hΔ.le
    linarith
  have hHFX : |sarea (ptH h) (ptF f) X| < 3 * (8 / 73) := by
    rw [abs_of_neg (by linarith)]; exact hα
  have hCDX : |sarea (ptC c) (ptD d) X| < 3 * (8 / 73) := by
    rw [abs_of_pos (by linarith)]; exact hβ
  refine ⟨hα, hβ, fun i => ?_⟩
  fin_cases i
  · exact ⟨ear_empty hmin 4 3 7 5 hHFX, ear_empty hmin 1 2 7 5 hCDX⟩
  · exact ⟨ear_empty hmin 4 3 7 6 hHFX, ear_empty hmin 1 2 7 6 hCDX⟩
  · exact ⟨not_inside_vertex _ _ _, not_inside_vertex _ _ _⟩
  · exact ⟨ear_empty hmin 4 3 7 8 hHFX, ear_empty hmin 1 2 7 8 hCDX⟩

/-- A point of the upper quadrilateral on the `D`-side of `CX` lies inside `CDX`. -/
theorem cons_CXP {c d f : ℝ} {X P : Point} (hAp : 0 < areaA c d f)
    (bX : 0 < sarea (ptC c) (ptD d) X) (rX : 0 < -sarea (ptD d) (ptF f) X)
    (pCD : 0 < sarea (ptC c) (ptD d) P) (pDF : 0 < sarea (ptD d) (ptF f) P)
    (hne : sarea (ptC c) X P ≠ 0) (hnot : ¬ InsideTriangle P (ptC c) (ptD d) X) :
    0 < sarea (ptC c) X P := by
  by_contra hn; push Not at hn
  have hlt : sarea (ptC c) X P < 0 := lt_of_le_of_ne hn hne
  have hDXP : 0 < sarea (ptD d) X P := by
    have g := gp (ptD d) X (ptF f) (ptC c) P
    have q1 : sarea (ptD d) (ptF f) (ptC c) = areaA c d f := by
      simp only [sarea, ptD, ptF, ptC, areaA]; ring
    have q2 : sarea (ptD d) X (ptC c) = sarea (ptC c) (ptD d) X := by simp only [sarea]; ring
    have q3 : sarea (ptD d) X (ptF f) = -sarea (ptD d) (ptF f) X := by simp only [sarea]; ring
    have q4 : sarea (ptD d) (ptC c) P = -sarea (ptC c) (ptD d) P := by simp only [sarea]; ring
    rw [q1, q2, q3, q4] at g
    by_contra hn'; push Not at hn'
    have p1 := mul_pos bX pDF
    have p2 := mul_pos rX pCD
    have p3 := mul_nonneg (show 0 ≤ -sarea (ptD d) X P by linarith) hAp.le
    linarith
  exact hnot (Or.inl ⟨pCD, hDXP, by have := sarea_swap₁₂ (ptC c) X P; linarith⟩)

/-- A point of the upper quadrilateral on the `F`-side of `XH` lies inside `HXF`. -/
theorem cons_XHP {h d f : ℝ} {X P : Point} (hUp : 0 < areaU h d f)
    (aX : 0 < -sarea (ptH h) (ptF f) X) (rX : 0 < -sarea (ptD d) (ptF f) X)
    (pFH : 0 < sarea (ptF f) (ptH h) P) (pDF : 0 < sarea (ptD d) (ptF f) P)
    (hne : sarea X (ptH h) P ≠ 0) (hnot : ¬ InsideTriangle P (ptH h) (ptF f) X) :
    0 < sarea X (ptH h) P := by
  by_contra hn; push Not at hn
  have hlt : sarea X (ptH h) P < 0 := lt_of_le_of_ne hn hne
  have hXFP : 0 < sarea X (ptF f) P := by
    have g := gp (ptF f) X (ptH h) (ptD d) P
    have q1 : sarea (ptF f) (ptH h) (ptD d) = areaU h d f := by
      simp only [sarea, ptD, ptF, ptH, areaU]; ring
    have q2 : sarea (ptF f) X (ptD d) = sarea (ptD d) (ptF f) X := by simp only [sarea]; ring
    have q3 : sarea (ptF f) X (ptH h) = sarea (ptH h) (ptF f) X := by simp only [sarea]; ring
    have q4 : sarea (ptF f) (ptD d) P = -sarea (ptD d) (ptF f) P := by simp only [sarea]; ring
    have q5 : sarea (ptF f) X P = -sarea X (ptF f) P := by simp only [sarea]; ring
    rw [q1, q2, q3, q4, q5] at g
    by_contra hn'; push Not at hn'
    have p1 := mul_pos rX pFH
    have p2 := mul_pos aX pDF
    have p3 := mul_nonneg (show (0 : ℝ) ≤ -sarea X (ptF f) P by linarith) hUp.le
    linarith
  exact hnot (Or.inr ⟨by have := sarea_swap₁₂ X (ptH h) P; linarith, hXFP, pFH⟩)

/-- A point of the square with nonzero areas against `OC` and `HO` has positive coordinates. -/
theorem pos_coords {h c : ℝ} {P : Point} (hh : 0 < h) (hc : 0 < c) (hP : P ∈ unitSquare)
    (e1 : 8 / 73 ≤ |sarea ptO (ptC c) P|) (e2 : 8 / 73 ≤ |sarea (ptH h) ptO P|) :
    0 < sarea ptO (ptC c) P ∧ 0 < sarea (ptH h) ptO P := by
  obtain ⟨p1, -, p2, -⟩ := hP
  have q1 : sarea ptO (ptC c) P = c * P.2 := by simp only [sarea, ptO, ptC]; ring
  have q2 : sarea (ptH h) ptO P = h * P.1 := by simp only [sarea, ptO, ptH]; ring
  rw [q1] at e1 ⊢; rw [q2] at e2 ⊢
  have n1 := ar_ne (by norm_num) e1
  have n2 := ar_ne (by norm_num) e2
  exact ⟨lt_of_le_of_ne (mul_nonneg hc.le p2) n1.symm, lt_of_le_of_ne (mul_nonneg hh.le p1) n2.symm⟩

/-- The radial split of the lower points at `OX`, as triangle containments. -/
theorem split_tri {h c : ℝ} {X L M : Point} (hh : 0 < h) (hc : 0 < c)
    (hHCX : 0 < sarea (ptH h) (ptC c) X) (hx0 : 0 < X.1) (hy0 : 0 < X.2) (hLl : InLower h c L)
    (hMl : InLower h c M) (hrad : OppSide ptO X L M) :
    (InTriangle L ptO X (ptH h) ∧ InTriangle M ptO (ptC c) X) ∨
      (InTriangle M ptO X (ptH h) ∧ InTriangle L ptO (ptC c) X) := by
  have tri : ∀ R : Point, InLower h c R → (0 < sarea ptO X R → InTriangle R ptO X (ptH h)) ∧
      (sarea ptO X R < 0 → InTriangle R ptO (ptC c) X) := by
    intro R hR
    obtain ⟨t1, t2⟩ := lower_sides hh hc hHCX hx0 hy0 hR
    refine ⟨fun hs => ⟨hs, t1, hR.2.2⟩, fun hs => ⟨hR.1, t2, ?_⟩⟩
    have := sarea_swap₁₂ ptO X R; linarith
  unfold OppSide at hrad
  have hL0 : sarea ptO X L ≠ 0 := by
    intro h0; rw [h0, zero_mul] at hrad; exact lt_irrefl _ hrad
  rcases lt_or_gt_of_ne hL0 with h1 | h1
  · have h2 : 0 < sarea ptO X M := by
      by_contra hn; push Not at hn; nlinarith
    exact Or.inr ⟨(tri M hMl).1 h2, (tri L hLl).2 h1⟩
  · have h2 : sarea ptO X M < 0 := by
      by_contra hn; push Not at hn; nlinarith
    exact Or.inl ⟨(tri L hLl).1 h1, (tri M hMl).2 h2⟩

/-- `hc ≥ Ks` from the two lower points. -/
theorem hc_ge {h c d f : ℝ} {L M X P : Point} (hA : C1AnchorsWeak h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X P))
    (hLl : InLower h c L) (hMl : InLower h c M) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c := by
  have hk := two_in hmin 0 1 4 5 6 (by decide) (Or.inl hLl) (Or.inl hMl)
  have e : sarea (c1Config h c d f L M X P 0) (c1Config h c d f L M X P 1)
      (c1Config h c d f L M X P 4) = h * c := by
    simp only [c1Config, Matrix.cons_val, sarea]; ring
  have hpos : 0 ≤ h * c := mul_nonneg (by linarith [hA.2.1, hA.1]) (by linarith [hA.2.2.2.1,
    hA.2.2.2.2.1])
  rwa [e, abs_of_nonneg hpos] at hk

/-- In the setting of `theorem_main`, with the ninth point `P` inside the anchor pentagon above
`HC` (open `HCDF`): `P` lies strictly inside the quadrilateral `OCXH` (the hexagon `OCDXFH` is
`OCXH` with the two empty ears); the lower points lie one in `OXH` and one in `OCX` (they are
split by `OX`, `C1TopCapRadialSplit.theorem_main`); `P` lies in `OCX` or `OXH`; `hc ≥ Ks`; and
the triangle holding `P` gives `cy ≥ Ks` (for `OCX`) or `hx ≥ Ks` (for `OXH`), `X = (x, y)`,
`K = 4 + 2√3`, `s = 8/73`.
Transposition exchanges the two alternatives, so one may assume `P, M ∈ OCX`, `L ∈ OHX`,
`hc, cy ≥ Ks`. -/
theorem upperQuad_radial_split {h c d f : ℝ} {L M X P : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hP : P ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X P))
    (hLl : InLower h c L) (hMl : InLower h c M) (hXc : InTopCap d f X)
    (hPu : InUpperQuad h c d f P) :
    (0 < sarea ptO (ptC c) P ∧ 0 < sarea (ptC c) X P ∧ 0 < sarea X (ptH h) P ∧
        0 < sarea (ptH h) ptO P) ∧
      ((InTriangle L ptO X (ptH h) ∧ InTriangle M ptO (ptC c) X) ∨
        (InTriangle M ptO X (ptH h) ∧ InTriangle L ptO (ptC c) X)) ∧
      (InTriangle P ptO (ptC c) X ∨ InTriangle P ptO X (ptH h)) ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧
      (InTriangle P ptO (ptC c) X → (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c * X.2) ∧
      (InTriangle P ptO X (ptH h) → (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * X.1) := by
  obtain ⟨hα, hβ, hear⟩ := theorem_main hA hL hM hX hP hmin hLl hMl hXc
  obtain ⟨b1, b2, b3, b4, hid, hcap⟩ := topCap_cost_bounds hA hL hM hX hP hmin
  obtain ⟨-, -, -, -, hd1, hf1⟩ := anchor_bounds hA hmin
  obtain ⟨aX, bX, rX, -⟩ := hcap 2 hXc.le
  simp only [freePt, Matrix.cons_val] at aX bX rX
  have hk := hc_ge hA hmin hLl hMl
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨-, -, fx, dy⟩ := cap_pt ⟨hd, hdh, hh, hf, hfc, hc⟩ hd1 hf1 hX hXc.le
  obtain ⟨pHC, pCD, pDF, pFH⟩ := hPu
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have hx0 : 0 < X.1 := by linarith
  have hy0 : 0 < X.2 := by linarith
  have hHCX : 0 < sarea (ptH h) (ptC c) X := by
    refine cap_sign hd1 hf1 hX (by linarith) ?_ ?_ ?_ <;> simp only [sarea, ptH, ptC, ptD, ptF] <;>
      nlinarith [mul_nonneg hd.le (show (0 : ℝ) ≤ c by linarith),
        mul_nonneg (show (0 : ℝ) ≤ 1 - c by linarith) (show (0 : ℝ) ≤ h by linarith),
        mul_nonneg (show (0 : ℝ) ≤ 1 - h by linarith) (show (0 : ℝ) ≤ c by linarith),
        mul_nonneg hf.le (show (0 : ℝ) ≤ h by linarith)]
  obtain ⟨hOCP, hHOP⟩ := pos_coords hh0 hc0 hP (ar hmin 0 1 8) (ar hmin 4 0 8)
  have hCXP := cons_CXP (X := X) (P := P) (by linarith) (by linarith) (by linarith) pCD pDF
    (ar_ne (by norm_num) (ar hmin 1 7 8 : 8 / 73 ≤ |sarea (ptC c) X P|)) (hear 3).2
  have hXHP := cons_XHP (X := X) (P := P) (by linarith) (by linarith) (by linarith) pFH pDF
    (ar_ne (by norm_num) (ar hmin 7 4 8 : 8 / 73 ≤ |sarea X (ptH h) P|)) (hear 3).1
  have hrad := C1TopCapRadialSplit.theorem_main (h := h) (c := c) (d := d) (f := f) (L := L)
    (M := M) (X := X) ⟨⟨hd, hdh, hh, hf, hfc, hc⟩, hL, hM, hX, min8 hmin, hLl, hMl, hXc.le⟩
  have hsplit := split_tri hh0 hc0 hHCX hx0 hy0 hLl hMl hrad
  have eOCX : sarea ptO (ptC c) X = c * X.2 := by simp only [sarea, ptO, ptC]; ring
  have eOXH : sarea ptO X (ptH h) = h * X.1 := by simp only [sarea, ptO, ptH]; ring
  have hOCX0 : 0 ≤ c * X.2 := mul_nonneg hc0.le hy0.le
  have hOXH0 : 0 ≤ h * X.1 := mul_nonneg hh0.le hx0.le
  refine ⟨⟨hOCP, hCXP, hXHP, hHOP⟩, hsplit, ?_, hk, ?_, ?_⟩
  · have eOXP : 8 / 73 ≤ |sarea ptO X P| := ar hmin 0 7 8
    rcases lt_or_gt_of_ne (ar_ne (by norm_num) eOXP) with h1 | h1
    · refine Or.inl ⟨hOCP, hCXP, ?_⟩
      have := sarea_swap₁₂ ptO X P; linarith
    · exact Or.inr ⟨h1, hXHP, hHOP⟩
  · intro hPin
    have key : ∃ j : Fin 9, (j = 5 ∨ j = 6) ∧ InTriangle (c1Config h c d f L M X P j) ptO (ptC c) X := by
      rcases hsplit with ⟨-, hMin⟩ | ⟨-, hLin⟩
      · exact ⟨6, Or.inr rfl, hMin⟩
      · exact ⟨5, Or.inl rfl, hLin⟩
    obtain ⟨j, hj, hjin⟩ := key
    have := two_in hmin 0 1 7 8 j (by rcases hj with rfl | rfl <;> decide) (Or.inl hPin)
      (Or.inl hjin)
    have e : sarea (c1Config h c d f L M X P 0) (c1Config h c d f L M X P 1)
        (c1Config h c d f L M X P 7) = c * X.2 := by
      simp only [c1Config, Matrix.cons_val, sarea]; ring
    rwa [e, abs_of_nonneg hOCX0] at this
  · intro hPin
    have key : ∃ j : Fin 9, (j = 5 ∨ j = 6) ∧ InTriangle (c1Config h c d f L M X P j) ptO X (ptH h) := by
      rcases hsplit with ⟨hLin, -⟩ | ⟨hMin, -⟩
      · exact ⟨5, Or.inl rfl, hLin⟩
      · exact ⟨6, Or.inr rfl, hMin⟩
    obtain ⟨j, hj, hjin⟩ := key
    have := two_in hmin 0 7 4 8 j (by rcases hj with rfl | rfl <;> decide) (Or.inl hPin)
      (Or.inl hjin)
    have e : sarea (c1Config h c d f L M X P 0) (c1Config h c d f L M X P 7)
        (c1Config h c d f L M X P 4) = h * X.1 := by
      simp only [c1Config, Matrix.cons_val, sarea]; ring
    rwa [e, abs_of_nonneg hOXH0] at this

end Heilbronn.Nine.C1TopCapSideEars
