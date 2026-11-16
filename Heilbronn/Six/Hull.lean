module

public import Heilbronn.Six.Setting
public import Heilbronn.Six.HullTrees
public import Heilbronn.Corners.CornerFamilies.SixPoint
public import Heilbronn.Hulls.QuadrilateralHull

/-! # The exact six-anchor hull in family N (`hand/SIX_BOUNDARY_HULL.md`)

Role: primary route. Theorem 7 closes the six-boundary occupancy `(0,0,0;3)` of
`hand/UNRESTRICTED.md`, Section 4 (all three free points inside the anchor hexagon, so that the
six anchors are the whole convex hull). Theorem 1 (the six anchor ears have doubled area below
`ρ = 13/16`, hence capacity one) holds throughout family N and is used by the other six-boundary
manuscripts (single side, single top, side opposite, two top).

Setting: `nConfig a h b c d f Q P R` with `NAnchors a h b c d f`; for the exact hull the lower
free point is `Q` (in `HABC`) and the upper points are `P, R` (in `HCDF`). Thresholds: `s = 7/64`
(doubled; hypothesis `7/128 ≤ minTriangleArea`), `ρ = 13/16 < Ks`, `K = 4 + 2√3`.

**Simplification.** Sections 3-6 of the manuscript (the sector assignments (9), Theorems 3-6 and
the claims of the proof of Theorem 4, which work at `σ = 8/73` and import internal steps of
`ONE_CORNER`, `ONE_CORNER_COMPLETION` and `TYPE_II`) are replaced by one certificate cover over
the radial words of the three free points on the anchor hexagon (`Heilbronn.Six.HullModel`,
kernel checks in `Heilbronn.Six.HullTrees*`, found by linear programming in `scripts/six_hull/`:
1,209 leaves, 35,869 terms, degree at most four). Its only geometric inputs are Theorem 1,
`QUADRILATERAL_HULL.md` (14)-(15) (exactly one free point below `HC`, `W ≥ 16A₀ > 7/8`), Lemma 5
of `QUADRILATERAL_HULL.md` with the transposition (the ear `ABC` empty), subdivision, the
two-interior-point lemma and the radial-word sign rules of `SixBoundary`.

Results:
* `theorem1`: the six ears `ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< 13/16`, and each
  contains at most one free point;
* `theorem2`: two upper points in `HDF`, or two in `CDF`, are impossible;
* `HullCase.false`: the normalized exact-hull case is impossible (the cover);
* `theorem7`: no competitive N configuration has exactly the six anchors as its convex hull.

The transposition used throughout (lines 127-135) is `SixBoundary.claim_transposition`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryHull

open SixBoundary

/-! ### The anchor hexagon -/

/-- The twenty triangles of the anchor hexagon `A, B, C, D, F, H` (in this counterclockwise
order) are positively oriented. -/
theorem anchor_triples {a h b c d f : ℝ} (hN : NAnchors a h b c d f) :
    0 < sarea (ptA a) (ptB b) (ptC c) ∧ 0 < sarea (ptA a) (ptB b) (ptD d) ∧
    0 < sarea (ptA a) (ptB b) (ptF f) ∧ 0 < sarea (ptA a) (ptB b) (ptH h) ∧
    0 < sarea (ptA a) (ptC c) (ptD d) ∧ 0 < sarea (ptA a) (ptC c) (ptF f) ∧
    0 < sarea (ptA a) (ptC c) (ptH h) ∧ 0 < sarea (ptA a) (ptD d) (ptF f) ∧
    0 < sarea (ptA a) (ptD d) (ptH h) ∧ 0 < sarea (ptA a) (ptF f) (ptH h) ∧
    0 < sarea (ptB b) (ptC c) (ptD d) ∧ 0 < sarea (ptB b) (ptC c) (ptF f) ∧
    0 < sarea (ptB b) (ptC c) (ptH h) ∧ 0 < sarea (ptB b) (ptD d) (ptF f) ∧
    0 < sarea (ptB b) (ptD d) (ptH h) ∧ 0 < sarea (ptB b) (ptF f) (ptH h) ∧
    0 < sarea (ptC c) (ptD d) (ptF f) ∧ 0 < sarea (ptC c) (ptD d) (ptH h) ∧
    0 < sarea (ptC c) (ptF f) (ptH h) ∧ 0 < sarea (ptD d) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hd : 0 < d := by linarith
  have hf : 0 < f := by linarith
  have hda := sub_nonneg.2 had
  have hhd := sub_nonneg.2 hdh
  have hfb := sub_nonneg.2 hbf
  have hcf := sub_nonneg.2 hfc
  have hha : 0 < h - a := by linarith
  have hcb : 0 < c - b := by linarith
  simp only [sarea]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · nlinarith [mul_pos ha hcb]
  · nlinarith [mul_nonneg hb.le hda]
  · nlinarith [mul_pos hb (by linarith : (0:ℝ) < 1 - a), mul_pos ha hf]
  · nlinarith [mul_pos hb hha]
  · nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ c) hda]
  · nlinarith [mul_pos (by linarith : (0:ℝ) < c) (by linarith : (0:ℝ) < 1 - a), mul_pos ha hf]
  · nlinarith [mul_pos (by linarith : (0:ℝ) < c) hha]
  · nlinarith [mul_le_mul_of_nonneg_right (by linarith : f ≤ 1) hda]
  · nlinarith
  · nlinarith [mul_pos hf hha]
  · nlinarith [mul_pos hcb hd]
  · nlinarith
  · nlinarith [mul_pos hcb (by linarith : (0:ℝ) < h)]
  · nlinarith [mul_le_mul_of_nonneg_right (by linarith : d ≤ 1) hfb]
  · nlinarith [mul_pos (by linarith : (0:ℝ) < h) (by linarith : (0:ℝ) < 1 - b), mul_pos hb hd]
  · nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ h) hfb]
  · nlinarith [mul_nonneg hd.le hcf]
  · nlinarith [mul_pos (by linarith : (0:ℝ) < h) (by linarith : (0:ℝ) < 1 - c),
      mul_pos (by linarith : (0:ℝ) < c) hd]
  · nlinarith [mul_pos (by linarith : (0:ℝ) < c) (by linarith : (0:ℝ) < 1 - h),
      mul_pos (by linarith : (0:ℝ) < h) hf]
  · nlinarith [mul_nonneg hf.le hhd]

/-! ### Section 1: the anchor ears -/

/-- Two free points strictly inside an actual triangle of a configuration of least area at least
`t > 0` force its doubled area to be at least `2(4 + 2√3)t` (the two-interior-point lemma). -/
theorem two_inside_sarea {P : Fin 9 → Point} {t : ℝ} (ht : 0 < t) (hmin : t ≤ minTriangleArea P)
    {a b e j₁ j₂ : Fin 9} (hinj : Function.Injective ![a, b, e, j₁, j₂])
    (h₁ : InTriangle (P j₁) (P a) (P b) (P e)) (h₂ : InTriangle (P j₂) (P a) (P b) (P e)) :
    2 * ((4 + 2 * Real.sqrt 3) * t) ≤ sarea (P a) (P b) (P e) := by
  have hm := hmin.trans (le_min_comp (by norm_num) P hinj)
  have e1 : P ∘ ![a, b, e, j₁, j₂] = ![P a, P b, P e, P j₁, P j₂] := by
    funext x; fin_cases x <;> rfl
  rw [e1] at hm
  have k := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ (Or.inl h₁) (Or.inl h₂) t ht hm
  have hpos : 0 < sarea (P a) (P b) (P e) := by
    obtain ⟨t1, t2, t3⟩ := h₁
    have := sarea_add_sarea_add_sarea (P a) (P b) (P e) (P j₁)
    linarith
  rw [triangleArea_eq, abs_of_pos hpos] at k
  linarith

/-- `13/16 < (4 + 2√3) · 7/64`: an ear below `ρ` cannot contain two free points. -/
theorem rho_lt_Ks : (13 / 16 : ℝ) < 2 * ((4 + 2 * Real.sqrt 3) * (7 / 128)) := by
  have : (12 / 7 : ℝ) < Real.sqrt 3 := by
    rw [Real.lt_sqrt (by norm_num)]; norm_num
  linarith

/-- The Cauchy-Schwarz step (4)-(5): `s/a + s/L ≤ 1` gives `a + sL ≥ s(21/16)² = 3087/16384`. -/
theorem ear_scalar {a L : ℝ} (ha : 0 < a) (hL : 0 < L) (h : 7 / 64 * (a + L) ≤ a * L) :
    3087 / 16384 ≤ a + 7 / 64 * L := by
  have key : (441 / 256) * (a * L) ≤ (a + 7 / 64 * L) * (a + L) := by
    nlinarith [sq_nonneg (a - 5 / 16 * L), sq_nonneg L]
  have hp : 0 < a + L := by linarith
  have : (441 / 256) * (7 / 64 * (a + L)) ≤ (a + 7 / 64 * L) * (a + L) := by nlinarith
  nlinarith

/-- The scalar part of Theorem 1: the six ears are below `ρ = 13/16`. -/
theorem theorem1_ears {a h b c d f : ℝ} (hN : NAnchors a h b c d f)
    (hABC : 7 / 64 ≤ a * (c - b)) (hABH : 7 / 64 ≤ b * (h - a))
    (hHDF : 7 / 64 ≤ 1 - h + f * (h - d)) (hCDF : 7 / 64 ≤ 1 - c + d * (c - f)) :
    sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have eHDF : 1 - h + f * (h - d) < 13 / 16 := by
    have hf1 : f ≤ 1 - 7 / 64 := by
      nlinarith [mul_le_mul_of_nonneg_right (by linarith : d ≤ 1) (sub_nonneg.2 hfc)]
    have h3 : 1 - h + f * (h - d) ≤ 1 - a - 7 / 64 * (h - a) := by
      nlinarith [mul_le_mul_of_nonneg_right hf1 (sub_nonneg.2 hdh)]
    have h2 : 7 / 64 * (a + (h - a)) ≤ a * (h - a) := by
      nlinarith [mul_le_mul_of_nonneg_left hABC (sub_nonneg.2 hah.le),
        mul_le_mul_of_nonneg_left hABH ha.le]
    have := ear_scalar ha (by linarith) h2
    linarith
  have eCDF : 1 - c + d * (c - f) < 13 / 16 := by
    have hd1 : d ≤ 1 - 7 / 64 := by
      nlinarith [mul_le_mul_of_nonneg_right (by linarith : f ≤ 1) (sub_nonneg.2 hdh)]
    have h3 : 1 - c + d * (c - f) ≤ 1 - b - 7 / 64 * (c - b) := by
      nlinarith [mul_le_mul_of_nonneg_right hd1 (sub_nonneg.2 hfc)]
    have h2 : 7 / 64 * (b + (c - b)) ≤ b * (c - b) := by
      nlinarith [mul_le_mul_of_nonneg_left hABH (sub_nonneg.2 hbc.le),
        mul_le_mul_of_nonneg_left hABC hb.le]
    have := ear_scalar hb (by linarith) h2
    linarith
  have eAFH : f * (h - a) < 13 / 16 := by
    by_contra hge
    push Not at hge
    have hbs : 7 / 64 ≤ b := by nlinarith
    have ha7 : 7 / 57 ≤ a := by nlinarith
    have hf : 13 / 16 ≤ f := by nlinarith
    have hZ : c * (1 - h) + f * h ≤ 1 - 7 / 64 := by
      nlinarith [mul_le_mul_of_nonneg_right hdh (sub_nonneg.2 hfc)]
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ c) (sub_nonneg.2 hh.le)]
  have eBCD : d * (c - b) < 13 / 16 := by
    by_contra hge
    push Not at hge
    have has : 7 / 64 ≤ a := by nlinarith
    have hb7 : 7 / 57 ≤ b := by nlinarith
    have hd : 13 / 16 ≤ d := by nlinarith
    have hZ : h * (1 - c) + c * d ≤ 1 - 7 / 64 := by
      nlinarith [mul_le_mul_of_nonneg_right hfc (sub_nonneg.2 hdh)]
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ h) (sub_nonneg.2 hc.le)]
  simp only [sarea]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · nlinarith [mul_le_mul_of_nonneg_right hbf (sub_nonneg.2 hah.le)]
  · nlinarith [mul_le_mul_of_nonneg_right had (sub_nonneg.2 hbc.le)]
  · nlinarith
  · nlinarith
  · nlinarith
  · nlinarith

/-- An actual triangle of doubled area below `ρ` holds at most one of the free points. -/
theorem ear_cap {P : Fin 9 → Point} (hmin : 7 / 128 ≤ minTriangleArea P) {i j k : Fin 9}
    (hlt : sarea (P i) (P j) (P k) < 13 / 16) (h67 : Function.Injective ![i, j, k, 6, 7])
    (h68 : Function.Injective ![i, j, k, 6, 8]) (h78 : Function.Injective ![i, j, k, 7, 8]) :
    AtMostOne (fun W => InTriangle W (P i) (P j) (P k)) (P 6) (P 7) (P 8) := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  refine ⟨fun ⟨t1, t2⟩ => ?_, fun ⟨t1, t2⟩ => ?_, fun ⟨t1, t2⟩ => ?_⟩
  · linarith [two_inside_sarea hp hmin h67 t1 t2, rho_lt_Ks]
  · linarith [two_inside_sarea hp hmin h68 t1 t2, rho_lt_Ks]
  · linarith [two_inside_sarea hp hmin h78 t1 t2, rho_lt_Ks]

/-- The ear areas, read off a configuration with every doubled area at least `7/64`. -/
theorem anchor_areas {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    7 / 64 ≤ a * (c - b) ∧ 7 / 64 ≤ b * (h - a) ∧ 7 / 64 ≤ 1 - h + f * (h - d) ∧
      7 / 64 ≤ 1 - c + d * (c - f) := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  refine ⟨?_, ?_, ?_, ?_⟩
  · have := two_mul_le_sarea_of_nonneg hp (p := (0, a)) (q := (b, 0)) (r := (c, 0))
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 2 3)
    simp only [sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg hp (p := (0, a)) (q := (b, 0)) (r := (0, h))
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 2 1)
    simp only [sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg hp (p := (0, h)) (q := (1, d)) (r := (f, 1))
      (by simp only [sarea]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ f) (sub_nonneg.2 hdh)])
      (area_of_le_min hmin 1 4 5)
    simp only [sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg hp (p := (c, 0)) (q := (1, d)) (r := (f, 1))
      (by simp only [sarea]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ d) (sub_nonneg.2 hfc)])
      (area_of_le_min hmin 3 4 5)
    simp only [sarea] at this; linarith

/-- **Theorem 1** (`SIX_BOUNDARY_HULL:Theorem1`). Under the N normalization, if every doubled
area is at least `s = 7/64`, each of the six cyclic anchor ears `ABH, ABC, BCD, CDF, DFH, FHA`
has doubled area strictly below `ρ = 13/16`; consequently none of them contains two free points
(two interior points need doubled area at least `(4 + 2√3)s > ρ`).
Valid throughout family N, without the exact-hull hypothesis.
`hand/SIX_BOUNDARY_HULL.md`, lines 36-142.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem1 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    (sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16) ∧
    (AtMostOne (fun P => InTriangle P (ptA a) (ptB b) (ptH h)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptA a) (ptB b) (ptC c)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptB b) (ptC c) (ptD d)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptC c) (ptD d) (ptF f)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptD d) (ptF f) (ptH h)) X Y Z ∧
      AtMostOne (fun P => InTriangle P (ptF f) (ptH h) (ptA a)) X Y Z) := by
  obtain ⟨hABC, hABH, hHDF, hCDF⟩ := anchor_areas hN hmin
  have ears := theorem1_ears hN hABC hABH hHDF hCDF
  refine ⟨ears, ?_⟩
  exact ⟨ear_cap (i := 0) (j := 2) (k := 1) hmin ears.1 (by decide) (by decide) (by decide),
    ear_cap (i := 0) (j := 2) (k := 3) hmin ears.2.1 (by decide) (by decide) (by decide),
    ear_cap (i := 2) (j := 3) (k := 4) hmin ears.2.2.1 (by decide) (by decide) (by decide),
    ear_cap (i := 3) (j := 4) (k := 5) hmin ears.2.2.2.1 (by decide) (by decide) (by decide),
    ear_cap (i := 4) (j := 5) (k := 1) hmin ears.2.2.2.2.1 (by decide) (by decide) (by decide),
    ear_cap (i := 5) (j := 1) (k := 0) hmin ears.2.2.2.2.2 (by decide) (by decide) (by decide)⟩

/-! ### Section 2: the upper pair -/

/-- **Theorem 2** (`SIX_BOUNDARY_HULL:Theorem2`). With the lower free point `Q` in `HABC` and the
upper points `P, R` in `HCDF` (the exact-hull placement), and every doubled area at least
`7/64`, the placements `P, R ∈ HDF` and `P, R ∈ CDF` are impossible (Theorem 1).
`hand/SIX_BOUNDARY_HULL.md`, lines 144-161.
Uses: QUADRILATERAL_HULL:claim-(14)(15), SIX_BOUNDARY_HULL:Theorem1 -/
theorem theorem2 {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hQ : Q ∈ unitSquare) (hP : P ∈ unitSquare) (hR : R ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hQl : InLowerQuad a h b c Q) (hPu : InUpperQuad h c d f P) (hRu : InUpperQuad h c d f R) :
    ¬ (InTriangle P (ptH h) (ptD d) (ptF f) ∧ InTriangle R (ptH h) (ptD d) (ptF f)) ∧
      ¬ (InTriangle P (ptC c) (ptD d) (ptF f) ∧ InTriangle R (ptC c) (ptD d) (ptF f)) := by
  obtain ⟨-, ⟨-, -, -, hCDF, hDFH, -⟩⟩ := theorem1 hN hQ hP hR hmin
  have perm : ∀ W : Point, InTriangle W (ptH h) (ptD d) (ptF f) ↔
      InTriangle W (ptD d) (ptF f) (ptH h) := fun W => by
    unfold InTriangle; tauto
  refine ⟨fun ⟨h1, h2⟩ => hDFH.2.2 ⟨(perm P).1 h1, (perm R).1 h2⟩, fun ⟨h1, h2⟩ => hCDF.2.2 ⟨h1, h2⟩⟩

/-! ### Section 3: the exact hull by a certificate cover

Sections 3-6 of the manuscript (the sector assignments (9), Theorems 3-6 and the claims of
Section 4) are replaced by one cover over the radial words of the three free points on the anchor
hexagon (`Heilbronn.Six.HullModel`, trees in `Heilbronn.Six.HullTrees*`): 1,209 leaves, 35,869
certificate terms, found by linear programming (`scripts/six_hull/`). The inputs are Theorem 1
(the six ear bounds), `QUADRILATERAL_HULL.md` (14)-(15) (exactly one free point below `HC`,
`W ≥ 16A₀`) and Lemma 5 (the ear `ABC` empty after transposition). -/

open Cert Cert.Expr Cover

/-- The anchor hexagon `A, B, C, D, F, H` (counterclockwise). -/
def hexagon (a h b c d f : ℝ) : Fin 6 → Point := ![ptA a, ptB b, ptC c, ptD d, ptF f, ptH h]

/-- The coordinates `a, h, b, c, d, f, q_x, q_y, p_x, p_y, r_x, r_y` as a point of the cube (the
variables beyond the twelfth are `0`). -/
def zeta (a h b c d f : ℝ) (Q P R : Point) : ℕ → ℝ
  | 0 => a | 1 => h | 2 => b | 3 => c | 4 => d | 5 => f | 6 => Q.1 | 7 => Q.2
  | 8 => P.1 | 9 => P.2 | 10 => R.1 | 11 => R.2 | _ => 0

/-- The nine points `A, B, C, D, F, H, Q, P, R`, indexed by `ℕ` as in the model. -/
def cfg (a h b c d f : ℝ) (Q P R : Point) : ℕ → Point
  | 0 => (0, a) | 1 => (b, 0) | 2 => (c, 0) | 3 => (1, d) | 4 => (f, 1) | 5 => (0, h)
  | 6 => Q | 7 => P | 8 => R | _ => (0, 0)

/-- The position in `nConfig` of the point `i` of the model. -/
def nIdx : Fin 9 → Fin 9 := ![0, 2, 3, 4, 5, 1, 6, 7, 8]

theorem nIdx_injective : Function.Injective nIdx := by decide

theorem cfg_eq (a h b c d f : ℝ) (Q P R : Point) (i : Fin 9) :
    cfg a h b c d f Q P R i = nConfig a h b c d f Q P R (nIdx i) := by
  fin_cases i <;> rfl

theorem cfg_hex (a h b c d f : ℝ) (Q P R : Point) (i : Fin 6) :
    cfg a h b c d f Q P R i = hexagon a h b c d f i := by
  fin_cases i <;> rfl

section Sound

variable {a h b c d f : ℝ} {Q P R : Point}

theorem ptEval_zeta (i : ℕ) :
    ptEval (zeta a h b c d f Q P R) Model.pt i = cfg a h b c d f Q P R i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;>
    simp [ptEval, Model.pt, zeta, cfg]

/-- Every triangle of three distinct model points has doubled area at least `7/64`. -/
theorem cfg_area (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    7 / 64 ≤ |sarea (cfg a h b c d f Q P R i) (cfg a h b c d f Q P R j)
      (cfg a h b c d f Q P R k)| := by
  have e := fun (n : ℕ) (hn : n < 9) => cfg_eq a h b c d f Q P R ⟨n, hn⟩
  simp only at e
  rw [e i hi, e j hj, e k hk]
  have hne : ∀ {m n : ℕ} (hm : m < 9) (hn : n < 9), m ≠ n →
      nIdx ⟨m, hm⟩ ≠ nIdx ⟨n, hn⟩ := fun hm hn hmn h =>
    hmn (by have := nIdx_injective h; simpa using this)
  have := area_of_le_min hmin _ _ _ (hne hi hj hij) (hne hj hk hjk) (hne hi hk hik)
  rw [triangleArea_eq] at this
  linarith

theorem mem_lexTriples {t : ℕ × ℕ × ℕ} (ht : t ∈ Model.lexTriples) :
    t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < 9 := by
  simp only [Model.lexTriples, List.mem_flatMap, List.mem_range, List.mem_filterMap,
    Option.ite_none_right_eq_some, Option.some.injEq] at ht
  obtain ⟨a, _, b, _, c, hc, ⟨hab, hbc⟩, rfl⟩ := ht
  exact ⟨hab, hbc, hc⟩

theorem orient_ne_zero {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : x ≠ 0 := by
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h <;>
    [exact h.ne; exact h.ne']

theorem orient_idx_ne {X : ℕ → Point} {sg : Bool} {i j k : ℕ}
    (hs : OrientHolds sg (sarea (X i) (X j) (X k))) : i ≠ j ∧ j ≠ k ∧ i ≠ k := by
  have hne := orient_ne_zero hs
  refine ⟨?_, ?_, ?_⟩ <;> rintro rfl <;> apply hne <;> simp only [sarea] <;> ring

/-- `102/125 ≤ (4 + 2√3) · 7/64`. -/
theorem rho_le : (102 / 125 : ℝ) ≤ (4 + 2 * Real.sqrt 3) * (7 / 64) := by
  have h3 : (1.7303 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  nlinarith

/-- Two model points strictly inside a model triangle force its doubled area to be at least
`102/125` (the two-interior-point lemma). -/
theorem cfg_two_inside (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R))
    {i j k j₁ j₂ : ℕ} (hi : i < 9) (hj : j < 9) (hk : k < 9) (hj₁ : j₁ < 9) (hj₂ : j₂ < 9)
    (hd : [i, j, k, j₁, j₂].Nodup)
    (h₁ : CornerFamilies.InsideTriangle (cfg a h b c d f Q P R j₁) (cfg a h b c d f Q P R i)
      (cfg a h b c d f Q P R j) (cfg a h b c d f Q P R k))
    (h₂ : CornerFamilies.InsideTriangle (cfg a h b c d f Q P R j₂) (cfg a h b c d f Q P R i)
      (cfg a h b c d f Q P R j) (cfg a h b c d f Q P R k)) :
    102 / 125 ≤ |sarea (cfg a h b c d f Q P R i) (cfg a h b c d f Q P R j)
      (cfg a h b c d f Q P R k)| := by
  set X := cfg a h b c d f Q P R
  have hm : 7 / 128 ≤ minTriangleArea ![X i, X j, X k, X j₁, X j₂] := by
    refine le_minTriangleArea (by norm_num) _ fun x y z hxy hyz => ?_
    have hι : ∀ m : Fin 5, ![i, j, k, j₁, j₂] m < 9 := by intro m; fin_cases m <;> simpa
    have hinj : Function.Injective ![i, j, k, j₁, j₂] := by
      intro x y hxy
      simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or] at hd
      fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> first | rfl | omega
    have e : ∀ m : Fin 5, ![X i, X j, X k, X j₁, X j₂] m = X (![i, j, k, j₁, j₂] m) := by
      intro m; fin_cases m <;> rfl
    have := cfg_area hmin (hι x) (hι y) (hι z) (hinj.ne hxy.ne) (hinj.ne hyz.ne)
      (hinj.ne (hxy.trans hyz).ne)
    rw [triangleArea_eq, e, e, e]; linarith
  have := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ h₁ h₂ (7 / 128) (by norm_num) hm
  rw [triangleArea_eq] at this
  linarith [rho_le]

theorem free_nodup : Model.free.Nodup := by decide

/-- The strengthened cost of a known triangle is nonnegative: `s`, `3s` with one free point
certified inside (subdivision), `102/125` with two (the two-interior-point lemma). -/
theorem cost_nonneg (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R))
    {tb : List SFact} (htb : AllHold (SFact.Holds (cfg a h b c d f Q P R)) tb)
    {t : ℕ × ℕ × ℕ} (ht : t ∈ Model.lexTriples) {sg : Bool} (hl : lookup tb t = some sg) :
    0 ≤ (costAtom Model.pt Model.bnd (t, sg) (insideList tb Model.free (t, sg)).length).eval
      (zeta a h b c d f Q P R) := by
  rw [eval_costAtom]
  simp only [ptEval_zeta]
  set X := cfg a h b c d f Q P R
  obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
  have hs := lookup_sound htb hl
  have harea := cfg_area hmin (i := t.1) (j := t.2.1) (k := t.2.2) (by omega) (by omega) h3
    (by omega) (by omega) (by omega)
  rw [← sgArea_eq_abs hs] at harea
  have hLnd : (insideList tb Model.free (t, sg)).Nodup := List.Nodup.filter _ free_nodup
  have hmem : ∀ j ∈ insideList tb Model.free (t, sg), j < 9 := fun j hj => by
    have := (insideList_sound htb hj).1
    simp only [Model.free, List.mem_cons, List.not_mem_nil, or_false] at this
    omega
  rcases hn : (insideList tb Model.free (t, sg)).length with _ | _ | n
  · simp only [Model.bnd, ite_true]; push_cast; linarith
  · obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos
      (show 0 < (insideList tb Model.free (t, sg)).length by omega)
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb hj
    have hj9 := hmem j hj
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    have q1 := cfg_area hmin (i := t.1) (j := t.2.1) (k := j) (by omega) (by omega) hj9
      (by omega) n1 n2
    have q2 := cfg_area hmin (i := t.2.1) (j := t.2.2) (k := j) (by omega) h3 hj9
      (by omega) n3 (by omega)
    have q3 := cfg_area hmin (i := t.2.2) (j := t.1) (k := j) h3 (by omega) hj9
      (by omega) (by omega) (by omega)
    have := three_le_sgArea (e := 7 / 64) o1 o2 o3 q1 q2 q3
    simp only [Model.bnd]; norm_num; linarith
  · obtain ⟨j₁, j₂, rest, hL⟩ : ∃ j₁ j₂ rest, insideList tb Model.free (t, sg) = j₁ :: j₂ :: rest := by
      rcases hL : insideList tb Model.free (t, sg) with _ | ⟨j₁, _ | ⟨j₂, rest⟩⟩
      · rw [hL] at hn; simp at hn
      · rw [hL] at hn; simp at hn
      · exact ⟨j₁, j₂, rest, rfl⟩
    have hj₁ : j₁ ∈ insideList tb Model.free (t, sg) := by rw [hL]; simp
    have hj₂ : j₂ ∈ insideList tb Model.free (t, sg) := by rw [hL]; simp
    have h12 : j₁ ≠ j₂ := by
      rw [hL] at hLnd; simp only [List.nodup_cons, List.mem_cons, not_or] at hLnd
      exact hLnd.1.1
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb hj₁
    obtain ⟨-, p1, p2, p3⟩ := insideList_sound htb hj₂
    dsimp only at o1 o2 o3 p1 p2 p3
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    obtain ⟨-, m1, m2⟩ := orient_idx_ne p1
    obtain ⟨-, m3, -⟩ := orient_idx_ne p2
    have := cfg_two_inside (i := t.1) (j := t.2.1) (k := t.2.2) (j₁ := j₁) (j₂ := j₂) hmin
      (by omega) (by omega) h3 (hmem _ hj₁) (hmem _ hj₂)
      (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
        List.nodup_nil, and_true, not_false_eq_true]; omega)
      (inTriangle_of_orient o1 o2 o3) (inTriangle_of_orient p1 p2 p3)
    rw [← sgArea_eq_abs hs] at this
    simp only [Model.bnd]; norm_num; linarith

/-- The facts of an oriented triple hold. -/
theorem holds_orient {X : ℕ → Point} {i j k : ℕ} {sg : Bool} (hij : i ≠ j) (hjk : j ≠ k)
    (hik : i ≠ k) :
    SFact.Holds X (Model.orient i j k sg) ↔ OrientHolds sg (sarea (X i) (X j) (X k)) := by
  unfold Model.orient
  have c1 := sarea_cycle (X i) (X j) (X k)
  have c2 := sarea_cycle (X j) (X k) (X i)
  have s1 := sarea_swap₁₂ (X i) (X j) (X k)
  have s2 := sarea_swap₂₃ (X i) (X j) (X k)
  have s3 := sarea_swap₁₃ (X i) (X j) (X k)
  split_ifs <;> simp only [SFact.Holds] <;>
    first
    | rfl
    | rw [c1]
    | rw [c2, c1]
    | rw [s1, orientHolds_not]
    | rw [s2, orientHolds_not]
    | rw [s3, orientHolds_not]

theorem consistent_of_holds {X : ℕ → Point} {tb b : List SFact} (htb : AllHold (SFact.Holds X) tb)
    (hb : AllHold (SFact.Holds X) b) : Model.consistent tb b = true := by
  unfold Model.consistent
  rw [List.all_eq_true]
  intro f hf
  rcases hl : lookup tb f.1 with _ | sg
  · rfl
  · have h1 := lookup_sound htb hl
    have h2 := hb f hf
    simp only [SFact.Holds] at h2
    cases sg <;> cases hsg : f.2 <;> rw [hsg] at h2 <;>
      simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h1 h2 <;>
      first | rfl | (exfalso; linarith)

/-- A one-fact branch that holds is among the consistent candidates. -/
theorem signed_exhaustive {X : ℕ → Point} {tb : List SFact} (htb : AllHold (SFact.Holds X) tb)
    (g : Bool → SFact) (cands : List Bool) {sg : Bool} (hsg : sg ∈ cands)
    (hg : SFact.Holds X (g sg)) :
    ∃ br ∈ Model.signed tb g cands, AllHold (SFact.Holds X) br := by
  have hb : AllHold (SFact.Holds X) [g sg] := by
    intro x hx; simp only [List.mem_singleton] at hx; subst hx; exact hg
  refine ⟨[g sg], ?_, hb⟩
  simp only [Model.signed, List.mem_filterMap]
  exact ⟨sg, hsg, by rw [if_pos (consistent_of_holds htb hb)]⟩

/-- A nonzero area has a sign. -/
theorem holds_of_ne {X : ℕ → Point} {i j k : ℕ} (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k)
    (hne : sarea (X i) (X j) (X k) ≠ 0) :
    ∃ sg ∈ [false, true], SFact.Holds X (Model.orient i j k sg) := by
  rcases lt_or_gt_of_ne hne with h | h
  · exact ⟨false, by simp, (holds_orient hij hjk hik).2 (by simpa [OrientHolds] using h)⟩
  · exact ⟨true, by simp, (holds_orient hij hjk hik).2 (by simpa [OrientHolds] using h)⟩

end Sound

/-! ### The words and the splits -/

/-- The data of a cell of the exact-hull cover: the three free points inside the hexagon, with
their radial words, and the least area. -/
structure Cell (a h b c d f : ℝ) (Q P R : Point) : Prop where
  hN : NAnchors a h b c d f
  sq : Q ∈ unitSquare ∧ P ∈ unitSquare ∧ R ∈ unitSquare
  hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R)
  conv : IsConvexCCW (hexagon a h b c d f)
  poly : ∀ p, 6 ≤ p → p < 9 → InPolygon (hexagon a h b c d f) (cfg a h b c d f Q P R p)

section Cells

variable {a h b c d f : ℝ} {Q P R : Point}

theorem Cell.gen (H : Cell a h b c d f Q P R) {p : ℕ} (hp6 : 6 ≤ p) (hp9 : p < 9) :
    ∀ i j : Fin 6, i ≠ j →
      sarea (hexagon a h b c d f i) (hexagon a h b c d f j) (cfg a h b c d f Q P R p) ≠ 0 := by
  intro i j hij h0
  have := cfg_area H.hmin (i := i.val) (j := j.val) (k := p) (by omega) (by omega) hp9
    (fun e => hij (Fin.ext e)) (by omega) (by omega)
  rw [cfg_hex a h b c d f Q P R i, cfg_hex a h b c d f Q P R j, h0, abs_zero] at this
  norm_num at this

/-- The radial word of a free point. -/
theorem Cell.word (H : Cell a h b c d f Q P R) {p : ℕ} (hp6 : 6 ≤ p) (hp9 : p < 9) :
    ∃ r : Fin 6 → ℕ, HasRadialWord (hexagon a h b c d f) (cfg a h b c d f Q P R p) r ∧
      IsRadialWord r :=
  claim_radial_word _ _ (by norm_num) H.conv (H.poly p hp6 hp9) (H.gen hp6 hp9)

/-- The facts of the word entry `r_i` of the free point `p` hold. -/
theorem branch_holds {X : ℕ → Point} {V : Fin 6 → Point} (hXV : ∀ i : Fin 6, X i = V i)
    {p : ℕ} (hp : 6 ≤ p) {r : Fin 6 → ℕ} (hr : HasRadialWord V (X p) r)
    (hne : ∀ i j : Fin 6, i ≠ j → sarea (V i) (V j) (X p) ≠ 0) (i : ℕ) (hi : i < 6) :
    AllHold (SFact.Holds X) (Model.branchFacts p i (r ⟨i, hi⟩)) := by
  intro f hf
  simp only [Model.branchFacts, List.mem_map, List.mem_range] at hf
  obtain ⟨j, hj, rfl⟩ := hf
  have hm : (i + (j + 1)) % 6 < 6 := Nat.mod_lt _ (by norm_num)
  have him : i ≠ (i + (j + 1)) % 6 := by omega
  rw [holds_orient him (by omega) (by omega)]
  have e1 := hXV ⟨i, hi⟩
  have e2 := hXV (cyc ⟨i, hi⟩ (j + 1))
  simp only [cyc_val] at e1 e2
  rw [e1, e2]
  have k := hr ⟨i, hi⟩ (j + 1) (by omega) (by omega)
  have hne' := hne ⟨i, hi⟩ (cyc ⟨i, hi⟩ (j + 1)) (fun e => by
    have := congrArg Fin.val e; simp only [cyc_val] at this; omega)
  by_cases hjq : j + 1 ≤ r ⟨i, hi⟩
  · simp only [hjq, decide_true, OrientHolds, ite_true]
    exact k.2 hjq
  · simp only [hjq, decide_false, OrientHolds, Bool.false_eq_true, ite_false]
    exact lt_of_le_of_ne (not_lt.1 fun h => hjq (k.1 h)) hne'

/-- The pair-line sign forced by a separating ray is the true sign (`claim_pair_line_sign`). -/
theorem pairSign_sound {X : ℕ → Point} {V : Fin 6 → Point} (hV : IsConvexCCW V)
    (hXV : ∀ i : Fin 6, X i = V i) {p q : ℕ} (hp : 6 ≤ p) (hq : 6 ≤ q)
    (hPp : InPolygon V (X p)) (hPq : InPolygon V (X q)) {rp rq : Fin 6 → ℕ}
    (hrp : HasRadialWord V (X p) rp) (hrq : HasRadialWord V (X q) rq)
    {tb : List SFact} (htb : AllHold (SFact.Holds X) tb) {i : ℕ} (hi : i < 6) {sg : Bool}
    (hs : Model.pairSign tb i p q = some sg) : OrientHolds sg (sarea (X i) (X p) (X q)) := by
  unfold Model.pairSign at hs
  obtain ⟨j, hj, hjs⟩ := List.exists_of_findSome?_eq_some hs
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hj
  have hj1 : 1 ≤ j := by omega
  have hj5 : j < 6 := by omega
  have key : ∃ sp sq, orientedLookup tb i ((i + j) % 6) p = some sp ∧
      orientedLookup tb i ((i + j) % 6) q = some sq ∧ sp ≠ sq ∧ sq = sg := by
    cases h1 : orientedLookup tb i ((i + j) % 6) p with
    | none => rw [h1] at hjs; simp at hjs
    | some sp =>
      cases h2 : orientedLookup tb i ((i + j) % 6) q with
      | none => rw [h1, h2] at hjs; simp at hjs
      | some sq =>
        rw [h1, h2] at hjs
        by_cases hpq : sp = sq
        · simp [hpq] at hjs
        · simp only [hpq, if_false, Option.some.injEq] at hjs
          exact ⟨sp, sq, rfl, rfl, hpq, hjs⟩
  obtain ⟨sp, sq, hsp, hsq, hpq, rfl⟩ := key
  have op := orientedLookup_sound htb hsp
  have oq := orientedLookup_sound htb hsq
  have e1 := hXV ⟨i, hi⟩
  have e2 := hXV (cyc ⟨i, hi⟩ j)
  simp only [cyc_val] at e1 e2
  have kp := hrp ⟨i, hi⟩ j hj1 hj5
  have kq := hrq ⟨i, hi⟩ j hj1 hj5
  have pl := claim_pair_line_sign V (X p) (X q) (by norm_num) hV hPp hPq rp rq hrp hrq ⟨i, hi⟩
  rw [← e1, ← e2] at kp kq
  rw [← e1] at pl
  cases sp <;> cases sq
  · exact absurd rfl hpq
  · simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at op oq ⊢
    exact pl.1 (by have := kq.1 oq; have := mt kp.2 (not_lt.2 op.le); omega)
  · simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at op oq ⊢
    exact pl.2 (by have := kp.1 op; have := mt kq.2 (not_lt.2 oq.le); omega)
  · exact absurd rfl hpq

end Cells
/-! ### The cover and Theorem 7 -/

/-- The normalized exact-hull case: `Q` below `HC`, `P, R` above, all three strictly inside the
hexagon, `[A C Q] > 0` (`Q ∉ ABC`), `[H P R] > 0`, every doubled area at least `7/64` and
`W = 1 - (h-d)(c-f) ≥ 7/8`. -/
structure HullCase (a h b c d f : ℝ) (Q P R : Point) : Prop where
  hN : NAnchors a h b c d f
  sq : Q ∈ unitSquare ∧ P ∈ unitSquare ∧ R ∈ unitSquare
  hex : InHexagon a h b c d f Q ∧ InHexagon a h b c d f P ∧ InHexagon a h b c d f R
  hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R)
  hW : 7 / 8 ≤ 1 - (h - d) * (c - f)
  hHCQ : sarea (ptH h) (ptC c) Q < 0
  hHCP : 0 < sarea (ptH h) (ptC c) P
  hHCR : 0 < sarea (ptH h) (ptC c) R
  hACQ : 0 < sarea (ptA a) (ptC c) Q
  hHPR : 0 < sarea (ptH h) P R

section Cover

variable {a h b c d f : ℝ} {Q P R : Point}

theorem hexagon_convex (hN : NAnchors a h b c d f) : IsConvexCCW (hexagon a h b c d f) := by
  obtain ⟨t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18,
    t19⟩ := anchor_triples hN
  intro i j k hij hjk
  fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hij ⊢ <;>
    fin_cases k <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hjk ⊢
  exacts [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18, t19]

theorem hexagon_poly {X : Point} (hX : InHexagon a h b c d f X) :
    InPolygon (hexagon a h b c d f) X := by
  obtain ⟨e0, e1, e2, e3, e4, e5⟩ := hX
  intro i
  fin_cases i
  exacts [e0, e1, e2, e3, e4, e5]

theorem HullCase.cell (H : HullCase a h b c d f Q P R) : Cell a h b c d f Q P R :=
  ⟨H.hN, H.sq, H.hmin, hexagon_convex H.hN, fun p hp6 hp9 => by
    interval_cases p
    · exact hexagon_poly H.hex.1
    · exact hexagon_poly H.hex.2.1
    · exact hexagon_poly H.hex.2.2⟩

theorem HullCase.zeta_mem (H : HullCase a h b c d f Q P R) (v : ℕ) :
    0 ≤ zeta a h b c d f Q P R v ∧ zeta a h b c d f Q P R v ≤ 1 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨⟨q0, q1, q2, q3⟩, ⟨p0, p1, p2, p3⟩, ⟨r0, r1, r2, r3⟩⟩ := H.sq
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith

/-- The initial facts hold. -/
theorem HullCase.base_holds (H : HullCase a h b c d f Q P R) :
    AllHold (SFact.Holds (cfg a h b c d f Q P R)) Model.base := by
  have C := H.cell
  intro g hg
  simp only [Model.base, List.mem_append, List.mem_filterMap, List.mem_flatMap, List.mem_map,
    List.mem_range, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with (⟨t, ht, e⟩ | ⟨p, hp, i, hi, rfl⟩) | rfl | rfl | rfl | rfl | rfl
  · split_ifs at e with h6
    cases e
    obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
    have := C.conv ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, h6⟩ (by simp [Fin.lt_def]; omega)
      (by simp [Fin.lt_def]; omega)
    simp only [SFact.Holds, OrientHolds, ite_true]
    rwa [← cfg_hex a h b c d f Q P R, ← cfg_hex a h b c d f Q P R,
      ← cfg_hex a h b c d f Q P R] at this
  · simp only [Model.free, List.mem_cons, List.not_mem_nil, or_false] at hp
    have hp6 : 6 ≤ p := by omega
    have hp9 : p < 9 := by omega
    have hm : (i + 1) % 6 < 6 := Nat.mod_lt _ (by norm_num)
    rw [holds_orient (by omega) (by omega) (by omega)]
    have := C.poly p hp6 hp9 ⟨i, hi⟩
    have e1 := cfg_hex a h b c d f Q P R ⟨i, hi⟩
    have e2 := cfg_hex a h b c d f Q P R (cyc ⟨i, hi⟩ 1)
    simp only [cyc_val] at e1 e2
    simp only [OrientHolds, ite_true]
    rw [e1, e2]; exact this
  · rw [holds_orient (by omega) (by omega) (by omega)]; exact H.hHCQ
  · rw [holds_orient (by omega) (by omega) (by omega)]; exact H.hHCP
  · rw [holds_orient (by omega) (by omega) (by omega)]; exact H.hHCR
  · rw [holds_orient (by omega) (by omega) (by omega)]; exact H.hACQ
  · rw [holds_orient (by omega) (by omega) (by omega)]; exact H.hHPR

/-- The atoms of the cover are nonnegative at the configuration. -/
theorem HullCase.atoms_nonneg (H : HullCase a h b c d f Q P R) {fs : List SFact}
    (hfs : AllHold (SFact.Holds (cfg a h b c d f Q P R)) (Model.base ++ fs)) :
    ∀ e ∈ Model.atoms fs, 0 ≤ e.eval (zeta a h b c d f Q P R) := by
  obtain ⟨⟨eABH, eABC, eBCD, eCDF, eDFH, eFHA⟩, -⟩ :=
    theorem1 H.hN H.sq.1 H.sq.2.1 H.sq.2.2 H.hmin
  simp only [ptA, ptB, ptC, ptD, ptF, ptH] at eABH eABC eBCD eCDF eDFH eFHA
  have hW := H.hW
  have hz := H.zeta_mem
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  intro e he
  simp only [Model.atoms, Model.factors, List.mem_append, List.mem_map] at he
  rcases he with (he | ⟨t, ht, rfl⟩) | he
  · simp only [List.mem_cons, List.not_mem_nil, or_false] at he
    rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl <;>
      simp only [eval_minus, eval_times, eval_v, eval_k, eval_one] <;> push_cast
    all_goals first
      | linarith [(hz 0).1, (hz 0).2, (hz 1).1, (hz 1).2, (hz 2).1, (hz 2).2, (hz 3).1, (hz 3).2,
          (hz 4).1, (hz 4).2, (hz 5).1, (hz 5).2, (hz 6).1, (hz 6).2, (hz 7).1, (hz 7).2,
          (hz 8).1, (hz 8).2, (hz 9).1, (hz 9).2, (hz 10).1, (hz 10).2, (hz 11).1, (hz 11).2]
      | (simp only [zeta]; linarith)
  · simp only [Model.ears, List.mem_cons, List.not_mem_nil, or_false] at ht
    rw [eval_minus, eval_k, eval_esarea]
    have e := fun i => ptEval_zeta (a := a) (h := h) (b := b) (c := c) (d := d) (f := f)
      (Q := Q) (P := P) (R := R) i
    simp only [ptEval] at e
    rw [e, e, e]
    rcases ht with rfl | rfl | rfl | rfl | rfl | rfl <;> simp only [cfg] <;> push_cast
    · rw [show sarea (0, h) (0, a) (b, 0) = sarea (0, a) (b, 0) (0, h) by
        simp only [sarea]; ring]; linarith
    · linarith
    · linarith
    · linarith
    · linarith
    · linarith
  · simp only [Model.costs, List.mem_map] at he
    obtain ⟨t, ht, rfl⟩ := he
    rcases hl : lookup (Model.base ++ fs) t with _ | sg
    · simp
    · exact cost_nonneg H.hmin hfs ht hl

/-- Every split of the cover has a branch whose facts hold. -/
theorem HullCase.branch (H : HullCase a h b c d f Q P R) {fs : List SFact}
    (hfs : AllHold (SFact.Holds (cfg a h b c d f Q P R)) (Model.base ++ fs)) (s : Model.Split) :
    ∃ br ∈ Model.spec.branches fs s, AllHold (SFact.Holds (cfg a h b c d f Q P R)) br := by
  have C := H.cell
  set X := cfg a h b c d f Q P R
  have hXV : ∀ i : Fin 6, X i = hexagon a h b c d f i := cfg_hex a h b c d f Q P R
  have hne : ∀ {i j k : ℕ}, i < 9 → j < 9 → k < 9 → i ≠ j → j ≠ k → i ≠ k →
      sarea (X i) (X j) (X k) ≠ 0 := fun hi hj hk hij hjk hik h0 => by
    have := cfg_area H.hmin hi hj hk hij hjk hik
    rw [h0, abs_zero] at this; norm_num at this
  cases s with
  | vertex p i =>
    simp only [Model.spec, Model.branches]
    split_ifs with hv
    · obtain ⟨hi, hp6, hp9⟩ := hv
      obtain ⟨r, hr, hrw⟩ := C.word hp6 hp9
      have hb := branch_holds hXV hp6 hr (C.gen hp6 hp9) i hi
      refine ⟨Model.branchFacts p i (r ⟨i, hi⟩), ?_, hb⟩
      rw [List.mem_filterMap]
      obtain ⟨r1, r4⟩ := hrw.1 ⟨i, hi⟩
      refine ⟨r ⟨i, hi⟩, List.mem_map.2 ⟨r ⟨i, hi⟩ - 1, List.mem_range.2 (by omega), by omega⟩, ?_⟩
      rw [if_pos (consistent_of_holds hfs hb)]
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | pair i p q =>
    simp only [Model.spec, Model.branches]
    split_ifs with hv
    · obtain ⟨hi, hp6, hpq, hq9⟩ := hv
      rcases hps : Model.pairSign (Model.base ++ fs) i p q with _ | sg <;> dsimp only
      · obtain ⟨sg, hsg, hg⟩ := holds_of_ne (X := X) (by omega) (by omega) (by omega)
          (hne (i := i) (j := p) (k := q) (by omega) (by omega) hq9 (by omega) (by omega)
            (by omega))
        exact signed_exhaustive hfs _ _ hsg hg
      · obtain ⟨rp, hrp, -⟩ := C.word hp6 (by omega)
        obtain ⟨rq, hrq, -⟩ := C.word (by omega : 6 ≤ q) hq9
        have hs := pairSign_sound C.conv hXV hp6 (by omega) (C.poly p hp6 (by omega))
          (C.poly q (by omega) hq9) hrp hrq hfs hi hps
        exact signed_exhaustive hfs _ [sg] (List.mem_singleton_self _)
          ((holds_orient (by omega) (by omega) (by omega)).2 hs)
    · exact ⟨[], by simp, by simp [AllHold]⟩
  | tri a' b' c' =>
    simp only [Model.spec, Model.branches]
    split_ifs with hv
    · obtain ⟨h1, h2, h3⟩ := hv
      have h0 := hne (i := a') (j := b') (k := c') (by omega) (by omega) h3 (by omega) (by omega)
        (by omega)
      rcases lt_or_gt_of_ne h0 with hl | hl
      · exact signed_exhaustive hfs (fun sg => ((a', b', c'), sg)) [false, true] (sg := false)
          (by simp) (by simpa [SFact.Holds, OrientHolds] using hl)
      · exact signed_exhaustive hfs (fun sg => ((a', b', c'), sg)) [false, true] (sg := true)
          (by simp) (by simpa [SFact.Holds, OrientHolds] using hl)
    · exact ⟨[], by simp, by simp [AllHold]⟩

/-- **The normalized exact-hull case is impossible**: the cover `Trees.root` passes the kernel
check, and its atoms and splits are sound. -/
theorem HullCase.false (H : HullCase a h b c d f Q P R) : False := by
  have hbase := H.base_holds
  refine checkTree_sound (σ := Model.spec) (Holds := SFact.Holds (cfg a h b c d f Q P R))
    (z := zeta a h b c d f Q P R) H.zeta_mem ?_ ?_ ?_ (fs := []) (by simp [AllHold])
    Trees.root_ok
  · intro fs hfs e he
    exact H.atoms_nonneg (hbase.append hfs) e he
  · intro fs s hfs
    exact H.branch (hbase.append hfs) s
  · intro _ _ _ h
    exact absurd h (by simp [Model.spec])

end Cover

/-- The labels `P, R` can be exchanged to arrange `[H P R] > 0`. -/
theorem hull_step1 {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hsq : Q ∈ unitSquare ∧ P ∈ unitSquare ∧ R ∈ unitSquare)
    (hex : InHexagon a h b c d f Q ∧ InHexagon a h b c d f P ∧ InHexagon a h b c d f R)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hW : 7 / 8 ≤ 1 - (h - d) * (c - f)) (hHCQ : sarea (ptH h) (ptC c) Q < 0)
    (hHCP : 0 < sarea (ptH h) (ptC c) P) (hHCR : 0 < sarea (ptH h) (ptC c) R)
    (hACQ : 0 < sarea (ptA a) (ptC c) Q) : False := by
  have hpos : 0 < minTriangleArea (nConfig a h b c d f Q P R) := by linarith
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 1 7 8) with hs | hs
  · have hswap : minTriangleArea (nConfig a h b c d f Q R P) =
        minTriangleArea (nConfig a h b c d f Q P R) := by
      rw [show nConfig a h b c d f Q R P = nConfig a h b c d f Q P R ∘ Equiv.swap 7 8 by
        funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
    refine HullCase.false (Q := Q) (P := R) (R := P)
      ⟨hN, ⟨hsq.1, hsq.2.2, hsq.2.1⟩, ⟨hex.1, hex.2.2, hex.2.1⟩, by rw [hswap]; exact hmin, hW,
        hHCQ, hHCR, hHCP, hACQ, ?_⟩
    have := sarea_swap₂₃ (ptH h) P R
    change sarea (ptH h) P R < 0 at hs
    linarith
  · exact HullCase.false ⟨hN, hsq, hex, hmin, hW, hHCQ, hHCP, hHCR, hACQ, hs⟩

/-- The empty-`ABC` normalization: if `Q ∈ ABC`, then `Q ∉ ABH` (Lemma 5 of
`QUADRILATERAL_HULL.md`) and the transposition exchanges the two ears. -/
theorem hull_step2 {a h b c d f : ℝ} {Q P R : Point} (hN : NAnchors a h b c d f)
    (hsq : Q ∈ unitSquare ∧ P ∈ unitSquare ∧ R ∈ unitSquare)
    (hex : InHexagon a h b c d f Q ∧ InHexagon a h b c d f P ∧ InHexagon a h b c d f R)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f Q P R))
    (hW : 7 / 8 ≤ 1 - (h - d) * (c - f)) (hHCQ : sarea (ptH h) (ptC c) Q < 0)
    (hHCP : 0 < sarea (ptH h) (ptC c) P) (hHCR : 0 < sarea (ptH h) (ptC c) R) : False := by
  have hpos : 0 < minTriangleArea (nConfig a h b c d f Q P R) := by linarith
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos 0 3 6) with hs | hs
  swap
  · exact hull_step1 hN hsq hex hmin hW hHCQ hHCP hHCR hs
  change sarea (ptA a) (ptC c) Q < 0 at hs
  -- `Q ∈ ABC`, hence `Q ∉ ABH`
  have hCAQ : 0 < sarea (c, 0) (0, a) Q := by
    have e : sarea (c, 0) (0, a) Q = -sarea (0, a) (c, 0) Q := by simp only [sarea]; ring
    have hs' : sarea (0, a) (c, 0) Q < 0 := hs
    linarith
  have hABC : InTriangle Q (0, a) (b, 0) (c, 0) := ⟨hex.1.1, hex.1.2.1, hCAQ⟩
  have L := (QuadrilateralHull.lemma5 hN (by linarith : 1 / 24 < minTriangleArea
    (nConfig a h b c d f Q P R))).1
  have hBHQ : sarea (ptB b) (ptH h) Q < 0 := by
    by_contra hc
    push Not at hc
    have h0 : sarea (ptB b) (ptH h) Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 1 6
    exact L ⟨⟨6, hex.1.1, lt_of_le_of_ne hc (Ne.symm h0), hex.1.2.2.2.2.2⟩, ⟨6, hABC⟩⟩
  -- the transposed configuration
  have T := claim_transposition a h b c d f Q P R
  have TP := claim_transposition a h b c d f P Q R
  have TR := claim_transposition a h b c d f R Q P
  refine hull_step1 (T.1.1 hN) ⟨T.2.1.1 hsq.1, TP.2.1.1 hsq.2.1, TR.2.1.1 hsq.2.2⟩
    ⟨T.2.2.2.2.2.2.2.2.2.1.1 hex.1, TP.2.2.2.2.2.2.2.2.2.1.1 hex.2.1,
      TR.2.2.2.2.2.2.2.2.2.1.1 hex.2.2⟩ (by rw [T.2.2.1]; exact hmin)
    (by have := mul_comm (h - d) (c - f); linarith) ?_ ?_ ?_ ?_
  · simp only [ptH, ptC, transpose, sarea] at hHCQ ⊢; linarith
  · simp only [ptH, ptC, transpose, sarea] at hHCP ⊢; linarith
  · simp only [ptH, ptC, transpose, sarea] at hHCR ⊢; linarith
  · simp only [ptA, ptB, ptC, ptH, transpose, sarea] at hBHQ ⊢; linarith

/-- **Theorem 7** (`SIX_BOUNDARY_HULL:Theorem7`). A competitive configuration (least area at
least `A₀`) in family N cannot have exactly its six anchors as its convex hull, that is, all
three free points strictly inside the anchor hexagon. This closes the occupancy `(0,0,0;3)`.
(Proved by the certificate cover `HullCase.false` instead of the hand Sections 3-6.)
`hand/SIX_BOUNDARY_HULL.md`, lines 1299-1321.
Uses: QUADRILATERAL_HULL:claim-(14)(15), QUADRILATERAL_HULL:Lemma5, SIX_BOUNDARY_HULL:Theorem1,
SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem7 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z))
    (hXI : InHexagon a h b c d f X) (hYI : InHexagon a h b c d f Y)
    (hZI : InHexagon a h b c d f Z) :
    False := by
  obtain ⟨hlow, hW16⟩ := QuadrilateralHull.claim_14_15 hN hXI hYI hZI hmin
  have hW : 7 / 8 ≤ 1 - (h - d) * (c - f) := by linarith [A₀_bounds.1]
  have h7 : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z) := by
    linarith [A₀_bounds.1]
  rcases hlow with ⟨l0, u1, u2⟩ | ⟨u0, l1, u2⟩ | ⟨u0, u1, l2⟩
  · exact hull_step2 hN ⟨hX, hY, hZ⟩ ⟨hXI, hYI, hZI⟩ h7 hW l0 u1 u2
  · have e : minTriangleArea (nConfig a h b c d f Y X Z) =
        minTriangleArea (nConfig a h b c d f X Y Z) := by
      rw [show nConfig a h b c d f Y X Z = nConfig a h b c d f X Y Z ∘ Equiv.swap 6 7 by
        funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
    exact hull_step2 hN ⟨hY, hX, hZ⟩ ⟨hYI, hXI, hZI⟩ (by rw [e]; exact h7) hW l1 u0 u2
  · have e : minTriangleArea (nConfig a h b c d f Z X Y) =
        minTriangleArea (nConfig a h b c d f X Y Z) := by
      rw [show nConfig a h b c d f Z X Y = nConfig a h b c d f X Y Z ∘
          (Equiv.swap (6 : Fin 9) 8 * Equiv.swap (7 : Fin 9) 8) by
        funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
    exact hull_step2 hN ⟨hZ, hX, hY⟩ ⟨hZI, hXI, hYI⟩ (by rw [e]; exact h7) hW l2 u0 u1

end Heilbronn.SixBoundaryHull
