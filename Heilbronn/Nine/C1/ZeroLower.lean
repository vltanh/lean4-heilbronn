module

public import Heilbronn.Nine.C1.Setting
public import Heilbronn.Nine.Corners.OneCorner
public import Heilbronn.Nine.Corners.OneCornerCompletion
public import Heilbronn.Nine.Hulls.QuadrilateralHull
public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle
public import Heilbronn.Nine.TypeII.TypeIICompletion.Capacity
public import Heilbronn.Nine.Setup.Package

/-! # The C1 configuration with no point in the lower anchor triangle: geometric facts

The C1 configurations with no free point in the lower anchor triangle `OHC` are excluded by
`Heilbronn.Nine.C1ZeroLower.lowerCount_eq_zero_false` (in `Heilbronn.Nine.C1.ZeroLowerCover`). This file holds the
geometric facts in the form the certificate cover uses: every statement is about one, two or three
labelled free points of a competitive C1 configuration and the region (cap or upper
quadrilateral) they lie in, rather than about region counts.

Setting: `Comp h c d f Q` — the anchors `C1Anchors h c d f` (`0 < d ≤ h < 1`, `0 < f ≤ c < 1`),
free points `Q 0, …, Q 3` in the closed square, least triangle area at least `A₀`. The nine
points are `cfg h c d f Q i` (`i = 0, …, 8` for `O, C, D, F, H, Q 0, …, Q 3`). Doubled areas are
compared with `t = 2A₀ > s = 8/73`. The normalization `f ≤ d` (reached by transposition,
`Comp.transpose`) is a hypothesis `hfd` where it is used.

Results:
* `Comp.area`, `Comp.areaOK` (`Package.AreaOK`), `Comp.min_sub`: every actual triangle has
  doubled area at least `2A₀`;
* `Comp.anchor_bounds`: `hf, cd ≥ t`, `d, f ≤ 1 - t`; `Comp.coord_ge`: `x, y ≥ t`;
* region rows: `Comp.upper_row`, `Comp.right_row`, `Comp.top_row`, `Comp.left_row`;
* top cap: `Comp.top_two`, `Comp.top_three`, `Comp.top_four`;
* upper quadrilateral: `Comp.quad_two`, `Comp.quad_three`;
* fans: `Comp.fan_below`, `Comp.fan_above`;
* two points inside a triangle: `Comp.two_inside`;
* `HDF`: `Comp.hdf_lt`;
* two right-cap points: `Comp.right_pair_bounds`, `Comp.right_pair_signs`; two left-cap points:
  `Comp.left_pair`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1ZeroLower

open Heilbronn.Nine.C1 Heilbronn.Nine.Package

/-! ### The setting -/

/-- The nine points `O, C, D, F, H, Q 0, …, Q 3` of the C1 configuration, indexed by `ℕ`. -/
def cfg (h c d f : ℝ) (Q : Fin 4 → Point) : ℕ → Point
  | 0 => (0, 0)
  | 1 => (c, 0)
  | 2 => (1, d)
  | 3 => (f, 1)
  | 4 => (0, h)
  | 5 => Q 0
  | 6 => Q 1
  | 7 => Q 2
  | 8 => Q 3
  | _ => (0, 0)

variable {h c d f : ℝ} {Q : Fin 4 → Point}

theorem cfg_eq (h c d f : ℝ) (Q : Fin 4 → Point) (i : Fin 9) :
    cfg h c d f Q i = c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) i := by
  fin_cases i <;> rfl

theorem cfg_free (h c d f : ℝ) (Q : Fin 4 → Point) (i : Fin 4) :
    cfg h c d f Q (i.val + 5) = Q i := by
  fin_cases i <;> rfl

/-- A competitive C1 configuration with labelled free points. -/
structure Comp (h c d f : ℝ) (Q : Fin 4 → Point) : Prop where
  hA : C1Anchors h c d f
  hQ : ∀ i, Q i ∈ unitSquare
  hmin : A₀ ≤ minTriangleArea (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3))

/-- `8/73 < 2A₀` and `79/720 < 2A₀`. -/
theorem two_A₀ : 8 / 73 < 2 * A₀ ∧ 79 / 720 < 2 * A₀ := by
  have := A₀_bounds; constructor <;> linarith

/-- Every actual triangle has doubled area at least `2A₀`. -/
theorem Comp.area (H : Comp h c d f Q) (i j l : ℕ) (hi : i < 9 := by norm_num)
    (hj : j < 9 := by norm_num) (hl : l < 9 := by norm_num) (hij : i ≠ j := by norm_num)
    (hjl : j ≠ l := by norm_num) (hil : i ≠ l := by norm_num) :
    2 * A₀ ≤ |sarea (cfg h c d f Q i) (cfg h c d f Q j) (cfg h c d f Q l)| := by
  have := area_of_le_min H.hmin ⟨i, hi⟩ ⟨j, hj⟩ ⟨l, hl⟩ (by simp [Fin.ext_iff, hij])
    (by simp [Fin.ext_iff, hjl]) (by simp [Fin.ext_iff, hil])
  rw [triangleArea_eq] at this
  have e1 := cfg_eq h c d f Q ⟨i, hi⟩
  have e2 := cfg_eq h c d f Q ⟨j, hj⟩
  have e3 := cfg_eq h c d f Q ⟨l, hl⟩
  simp only at e1 e2 e3
  rw [e1, e2, e3]; linarith

/-- The nine points of a competitive configuration satisfy `AreaOK`. -/
theorem Comp.areaOK (H : Comp h c d f Q) : AreaOK (cfg h c d f Q) :=
  fun a b e ha hb he hab hbe hae => H.area a b e ha hb he hab hbe hae

/-- The same, with a free point given by its label. -/
theorem Comp.areaF (H : Comp h c d f Q) (a b : ℕ) (i : Fin 4) (ha : a < 5 := by norm_num)
    (hb : b < 5 := by norm_num) (hab : a ≠ b := by norm_num) :
    2 * A₀ ≤ |sarea (cfg h c d f Q a) (cfg h c d f Q b) (Q i)| := by
  have := H.area a b (i.val + 5) (by omega) (by omega) (by omega) hab (by omega) (by omega)
  rwa [cfg_free] at this

/-- An anchor and two free points. -/
theorem Comp.areaFF (H : Comp h c d f Q) (a : ℕ) (i j : Fin 4) (ha : a < 5) (hij : i ≠ j) :
    2 * A₀ ≤ |sarea (cfg h c d f Q a) (Q i) (Q j)| := by
  have := H.area a (i.val + 5) (j.val + 5) (by omega) (by omega) (by omega) (by omega)
    (by omega) (by intro h; exact hij (Fin.ext (by omega)))
  rwa [cfg_free, cfg_free] at this

/-- A sub-configuration of distinct points of the nine has least area at least `A₀`. -/
theorem Comp.min_sub (H : Comp h c d f Q) {m : ℕ} (hm : 3 ≤ m) (ι : Fin m → ℕ)
    (hι : ∀ a, ι a < 9) (hinj : Function.Injective ι) :
    A₀ ≤ minTriangleArea (fun a => cfg h c d f Q (ι a)) :=
  H.areaOK.min_sub hm ι hι hinj

theorem le_of_le_abs_of_nonneg {t x : ℝ} (h : t ≤ |x|) (hx : 0 ≤ x) : t ≤ x := by
  rwa [abs_of_nonneg hx] at h

theorem le_neg_of_le_abs_of_nonpos {t x : ℝ} (h : t ≤ |x|) (hx : x ≤ 0) : t ≤ -x := by
  rwa [abs_of_nonpos hx] at h

theorem Comp.sq (H : Comp h c d f Q) (i : Fin 4) :
    0 ≤ (Q i).1 ∧ (Q i).1 ≤ 1 ∧ 0 ≤ (Q i).2 ∧ (Q i).2 ≤ 1 := H.hQ i

/-! ### Anchor parameters and coordinates -/

/-- `hf, cd ≥ 2A₀` and `d, f ≤ 1 - 2A₀`. -/
theorem Comp.anchor_bounds (H : Comp h c d f Q) :
    2 * A₀ ≤ h * f ∧ 2 * A₀ ≤ c * d ∧ 2 * A₀ ≤ 1 - d ∧ 2 * A₀ ≤ 1 - f := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have e1 := H.area 0 3 4
  have e2 := H.area 0 1 2
  have e3 := H.area 2 3 4
  have e4 := H.area 1 2 3
  simp only [cfg, sarea] at e1 e2 e3 e4
  refine ⟨?_, ?_, ?_, ?_⟩
  · have := le_of_le_abs_of_nonneg e1 (by nlinarith); linarith
  · have := le_of_le_abs_of_nonneg e2 (by nlinarith); linarith
  · have := le_of_le_abs_of_nonneg e3 (by nlinarith); nlinarith
  · have := le_of_le_abs_of_nonneg e4 (by nlinarith); nlinarith

/-- The anchor parameters are at least `2A₀`. -/
theorem Comp.params_ge (H : Comp h c d f Q) :
    2 * A₀ ≤ h ∧ 2 * A₀ ≤ c ∧ 2 * A₀ ≤ d ∧ 2 * A₀ ≤ f := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨e1, e2, -, -⟩ := H.anchor_bounds
  refine ⟨?_, ?_, ?_, ?_⟩ <;> nlinarith

/-- Every coordinate of every free point is at least `2A₀`. -/
theorem Comp.coord_ge (H : Comp h c d f Q) (i : Fin 4) :
    2 * A₀ ≤ (Q i).1 ∧ 2 * A₀ ≤ (Q i).2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨x0, x1, y0, y1⟩ := H.sq i
  have e1 := H.areaF 0 4 i
  have e2 := H.areaF 0 1 i
  simp only [cfg, sarea] at e1 e2
  have pc := H.params_ge
  constructor
  · have := le_neg_of_le_abs_of_nonpos e1 (by nlinarith); nlinarith
  · have := le_of_le_abs_of_nonneg e2 (by nlinarith); nlinarith

/-! ### The region rows -/

/-- An upper-quadrilateral point has `x, y ≤ 1 - 2A₀` (from area identities such as
`(1 - f)[CDX] + (1 - c)[DFX] = [CDF](1 - x)`). -/
theorem Comp.upper_row (H : Comp h c d f Q) (i : Fin 4)
    (hU : InUpperQuad h c d f (Q i)) : (Q i).1 ≤ 1 - 2 * A₀ ∧ (Q i).2 ≤ 1 - 2 * A₀ := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨x0, x1, y0, y1⟩ := H.sq i
  obtain ⟨-, u2, u3, u4⟩ := hU
  have e2 := le_of_le_abs_of_nonneg (H.areaF 1 2 i) u2.le
  have e3 := le_of_le_abs_of_nonneg (H.areaF 2 3 i) u3.le
  have e4 := le_of_le_abs_of_nonneg (H.areaF 3 4 i) u4.le
  have t0 : 0 < 2 * A₀ := by linarith [two_A₀.1]
  simp only [cfg, sarea, ptC, ptD, ptF, ptH] at e2 e3 e4 u2 u3 u4
  set x := (Q i).1; set y := (Q i).2
  constructor
  · -- (1 - f)[CDX] + (1 - c)[DFX] = [CDF](1 - x), [CDF] ≤ 1 - f
    nlinarith [mul_nonneg (sub_nonneg.2 hfc) (sub_nonneg.2 x1), mul_nonneg (sub_nonneg.2 hc.le)
      u3.le, mul_nonneg hd.le (sub_nonneg.2 x1)]
  · nlinarith [mul_nonneg (sub_nonneg.2 hdh) (sub_nonneg.2 y1), mul_nonneg (sub_nonneg.2 hh.le)
      u3.le, mul_nonneg hf.le (sub_nonneg.2 y1)]

/-- A right-cap point: `x ≤ 1`, `d - y ≥ 2A₀`, `x - c ≥ 2A₀`, `cd(x - c) ≥ 2A₀` and
`dc(1 - c) ≥ 2A₀`. -/
theorem Comp.right_row (H : Comp h c d f Q) (i : Fin 4) (hR : InRightCap c d (Q i))
    (hOD : sarea ptO (ptD d) (Q i) < 0) :
    2 * A₀ ≤ d - (Q i).2 ∧ 2 * A₀ ≤ (Q i).1 - c ∧ 2 * A₀ ≤ c * d * ((Q i).1 - c) ∧
      2 * A₀ ≤ d * c * (1 - c) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨x0, x1, y0, y1⟩ := H.sq i
  have e1 := le_neg_of_le_abs_of_nonpos (H.areaF 1 2 i) hR.le
  have e2 := le_neg_of_le_abs_of_nonpos (H.areaF 0 2 i) hOD.le
  have e3 := H.areaF 0 1 i
  have t0 : 0 < 2 * A₀ := by linarith [two_A₀.1]
  simp only [cfg, sarea] at e1 e2 e3
  have e3' := le_of_le_abs_of_nonneg e3 (by nlinarith)
  set x := (Q i).1; set y := (Q i).2
  have hxc : 0 < x - c := by nlinarith
  have k5 : 2 * A₀ ≤ c * d * (x - c) := by nlinarith
  have hc0 : (0:ℝ) ≤ c := by linarith
  have k6 : 2 * A₀ ≤ d * c * (1 - c) := by
    nlinarith [mul_nonneg (mul_nonneg hd.le hc0) (sub_nonneg.2 x1)]
  have k1 : 2 * A₀ ≤ d - y := by nlinarith
  have k2 : 2 * A₀ ≤ x - c := by nlinarith
  exact ⟨k1, k2, k5, k6⟩

/-- A top-cap point: `x - f ≥ 2A₀`, `y - d ≥ 2A₀`, and `Ω₀ ≥ 2A₀`. -/
theorem Comp.top_row (H : Comp h c d f Q) (i : Fin 4) (hT : InTopCap d f (Q i)) :
    2 * A₀ ≤ (Q i).1 - f ∧ 2 * A₀ ≤ (Q i).2 - d ∧ 2 * A₀ ≤ topCapArea d f := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨x0, x1, y0, y1⟩ := H.sq i
  have e1 := le_neg_of_le_abs_of_nonpos (H.areaF 2 3 i) hT.le
  have t0 : 0 < 2 * A₀ := by linarith [two_A₀.1]
  simp only [cfg, sarea, topCapArea] at e1 ⊢
  set x := (Q i).1; set y := (Q i).2
  have hc1 : (0:ℝ) ≤ 1 - c := by linarith
  have hf1 : (0:ℝ) ≤ 1 - f := by linarith
  have hh1 : (0:ℝ) ≤ 1 - h := by linarith
  have hd1 : (0:ℝ) ≤ 1 - d := by linarith
  have p1 := mul_nonneg hf1 (sub_nonneg.2 y1)
  have p2 := mul_nonneg hd1 (sub_nonneg.2 x1)
  have k1 : 2 * A₀ ≤ (1 - d) * (x - f) := by nlinarith
  have k2 : 2 * A₀ ≤ (1 - f) * (y - d) := by nlinarith
  refine ⟨?_, ?_, ?_⟩
  · have : 0 < x - f := by
      by_contra hn; push Not at hn
      nlinarith [mul_nonneg hd1 (sub_nonneg.2 hn)]
    nlinarith
  · have : 0 < y - d := by
      by_contra hn; push Not at hn
      nlinarith [mul_nonneg hf1 (sub_nonneg.2 hn)]
    nlinarith
  · nlinarith

/-- The inequalities of a left-cap point `(x, y)`, from `[HFX] ≥ t` and `hx ≥ t`. -/
theorem left_ineqs {h d f x y t : ℝ} (ht : 8 / 73 < t) (hd : 0 < d) (hdh : d ≤ h) (hh : h < 1)
    (hf : 0 < f) (hfd : f ≤ d) (hf1 : t ≤ 1 - f) (x0 : 0 ≤ x) (y1 : y ≤ 1)
    (e1 : t ≤ f * (y - h) - (1 - h) * x) (e2 : t ≤ h * x) :
    t ≤ f * h * (1 - h) ∧ 8 / 41 ≤ f - x ∧ 8 / 65 ≤ y - h ∧ 28 / 219 ≤ x ∧ 32 / 73 ≤ f ∧
      1 / 7 ≤ h ∧ h ≤ 6 / 7 := by
  have hh0 : 0 ≤ h := by linarith
  have hh1 : 0 ≤ 1 - h := by linarith
  have q1 := mul_le_mul_of_nonneg_left e1 hh0
  have q2 := mul_le_mul_of_nonneg_left e2 hh1
  -- h[HFX] + (1-h) hx = fh(y - h)
  have k6 : t ≤ f * h * (y - h) := by nlinarith
  have k6' : t ≤ f * h * (1 - h) := by
    have := mul_nonneg (mul_nonneg hf.le hh0) (sub_nonneg.2 y1)
    nlinarith
  have hq : h * (1 - h) ≤ 1 / 4 := by nlinarith [sq_nonneg (h - 1 / 2)]
  have f4 : 32 / 73 ≤ f := by nlinarith [mul_le_mul_of_nonneg_left hq hf.le]
  have hhh : 0 ≤ h * (1 - h) := mul_nonneg hh0 hh1
  have hfh : f * (h * (1 - h)) ≤ (1 - t) * (h * (1 - h)) :=
    mul_le_mul_of_nonneg_right (by linarith) hhh
  have hh3 : 8 / 65 ≤ h * (1 - h) := by
    by_contra hn; push Not at hn
    have : (1 - t) * (h * (1 - h)) < (1 - t) * (8 / 65) :=
      mul_lt_mul_of_pos_left hn (by linarith)
    nlinarith
  have h17 : 1 / 7 ≤ h := by nlinarith
  have h67 : h ≤ 6 / 7 := by nlinarith
  have hfx : t ≤ (1 - h) * (f - x) := by
    have := mul_le_mul_of_nonneg_left y1 hf.le
    nlinarith
  refine ⟨k6', ?_, ?_, ?_, f4, h17, h67⟩
  · have h41 : 1 - h ≤ 41 / 73 := by linarith
    have : 0 < f - x := by
      by_contra hn; push Not at hn
      nlinarith [mul_nonneg hh1 (sub_nonneg.2 hn)]
    nlinarith [mul_le_mul_of_nonneg_right h41 this.le]
  · have hyh : t ≤ f * (y - h) := by nlinarith [mul_nonneg hh1 x0]
    have : 0 < y - h := by
      by_contra hn; push Not at hn
      nlinarith [mul_nonneg hf.le (sub_nonneg.2 hn)]
    nlinarith [mul_le_mul_of_nonneg_right (show f ≤ 65 / 73 by linarith) this.le]
  · nlinarith

/-- A left-cap point (under `f ≤ d`): `fh(1 - h) ≥ 2A₀`, `f - x ≥ 8/41`, `y - h ≥ 8/65`,
`x > 7s/6`, `f ≥ 4s` and `1/7 < h < 6/7`. -/
theorem Comp.left_row (H : Comp h c d f Q) (hfd : f ≤ d) (i : Fin 4)
    (hL : InLeftCap f h (Q i)) :
    2 * A₀ ≤ f * h * (1 - h) ∧ 8 / 41 ≤ f - (Q i).1 ∧ 8 / 65 ≤ (Q i).2 - h ∧
      28 / 219 ≤ (Q i).1 ∧ 32 / 73 ≤ f ∧ 1 / 7 ≤ h ∧ h ≤ 6 / 7 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨x0, x1, y0, y1⟩ := H.sq i
  obtain ⟨-, -, -, hf1⟩ := H.anchor_bounds
  have e1 := le_neg_of_le_abs_of_nonpos (H.areaF 3 4 i) hL.le
  have e2 := le_neg_of_le_abs_of_nonpos (H.areaF 0 4 i) (by
    simp only [cfg, sarea]; nlinarith)
  simp only [cfg, sarea] at e1 e2
  exact left_ineqs two_A₀.1 hd hdh hh hf hfd hf1 x0 y1 (by linarith) (by linarith)

/-! ### Containment helpers -/

/-- A point with nonnegative areas against the three edges of a counterclockwise triangle lies in
its convex hull (barycentric coordinates `[BCX], [CAX], [ABX]` over `[ABC]`). -/
theorem mem_convexHull_of_sarea {A B C X : Point} (hABC : 0 < sarea A B C)
    (h1 : 0 ≤ sarea A B X) (h2 : 0 ≤ sarea B C X) (h3 : 0 ≤ sarea C A X) :
    X ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  set S := sarea A B C
  have hsum := sarea_add_sarea_add_sarea A B C X
  have hX : X = ∑ i : Fin 3, ![sarea B C X / S, sarea C A X / S, sarea A B X / S] i •
      ![A, B, C] i := by
    simp only [Fin.sum_univ_three, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
    have hS : S ≠ 0 := hABC.ne'
    ext
    · simp only [Prod.fst_add, Prod.smul_fst, smul_eq_mul]
      field_simp
      simp only [S, sarea]; ring
    · simp only [Prod.snd_add, Prod.smul_snd, smul_eq_mul]
      field_simp
      simp only [S, sarea]; ring
  rw [hX]
  refine (convex_convexHull ℝ _).sum_mem (fun i _ => ?_) ?_ (fun i _ => ?_)
  · fin_cases i <;> simp <;> positivity
  · simp only [Fin.sum_univ_three, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons]
    field_simp; linarith
  · apply subset_convexHull
    fin_cases i <;> simp

/-- Three distinct members give `ncard ≥ 3`. -/
theorem three_le_ncard {α : Type*} {s : Set α} {a b e : α} (ha : a ∈ s) (hb : b ∈ s) (he : e ∈ s)
    (hab : a ≠ b) (hae : a ≠ e) (hbe : b ≠ e) (hs : s.Finite) : 3 ≤ s.ncard := by
  have : ({a, b, e} : Set α).ncard = 3 := Set.ncard_eq_three.2 ⟨a, b, e, hab, hae, hbe, rfl⟩
  rw [← this]
  exact Set.ncard_le_ncard (by intro x hx; simp at hx; rcases hx with rfl | rfl | rfl <;>
    assumption) hs

/-- Four distinct members give `card ≥ 4`. -/
theorem four_le_card {p : Fin 9 → Prop} [DecidablePred p] {a b e g : Fin 9} (ha : p a)
    (hb : p b) (he : p e) (hg : p g) (hab : a.val ≠ b.val) (hae : a.val ≠ e.val)
    (hag : a.val ≠ g.val) (hbe : b.val ≠ e.val) (hbg : b.val ≠ g.val) (heg : e.val ≠ g.val) :
    4 ≤ (Finset.univ.filter p).card := by
  have : ({a, b, e, g} : Finset (Fin 9)).card = 4 := by
    have h1 : a ≠ b := fun h => hab (congrArg Fin.val h)
    have h2 : a ≠ e := fun h => hae (congrArg Fin.val h)
    have h3 : a ≠ g := fun h => hag (congrArg Fin.val h)
    have h4 : b ≠ e := fun h => hbe (congrArg Fin.val h)
    have h5 : b ≠ g := fun h => hbg (congrArg Fin.val h)
    have h6 : e ≠ g := fun h => heg (congrArg Fin.val h)
    rw [Finset.card_insert_of_notMem (by simp [h1, h2, h3]),
      Finset.card_insert_of_notMem (by simp [h4, h5]),
      Finset.card_insert_of_notMem (by simp [h6]), Finset.card_singleton]
  rw [← this]
  apply Finset.card_le_card
  intro x hx
  simp only [Finset.mem_insert, Finset.mem_singleton] at hx
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  rcases hx with rfl | rfl | rfl | rfl <;> assumption

/-- An index `a < 9` other than `b`. -/
theorem fin9_ne {a : ℕ} (ha : a < 9) {b : Fin 9} (h : a ≠ b.val) : (⟨a, ha⟩ : Fin 9) ≠ b :=
  fun e => h (by rw [← e])

theorem c1Config_free (h c d f : ℝ) (Q : Fin 4 → Point) (i : Fin 4) :
    c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) (⟨i.val + 5, by omega⟩ : Fin 9) = Q i := by
  fin_cases i <;> rfl

theorem Comp.config_sq (H : Comp h c d f Q) (k : Fin 9) :
    c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) k ∈ unitSquare := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  fin_cases k
  all_goals first
    | exact H.hQ _
    | (simp only [c1Config, unitSquare, Set.mem_ofPred_eq, Fin.zero_eta, Fin.mk_one,
        Matrix.cons_val_zero, Matrix.cons_val_one]
       refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith)
    | (show (_ : Point) ∈ unitSquare
       simp only [c1Config, unitSquare, Set.mem_ofPred_eq]
       refine ⟨?_, ?_, ?_, ?_⟩ <;> simp <;> linarith)

/-! ### The top cap -/

/-- The top-cap corner `(1, 1)`. -/
abbrev ptE : Point := (1, 1)

/-- A top-cap point lies in the closed triangle `D, F, (1, 1)`. -/
theorem top_mem_hull (hA : C1Anchors h c d f) {X : Point} (hX : X ∈ unitSquare)
    (hT : InTopCap d f X) : X ∈ convexHull ℝ ({(1, d), (f, 1), ptE} : Set Point) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨x0, x1, y0, y1⟩ := hX
  have : ({(1, d), (f, 1), ptE} : Set Point) = {(1, d), ptE, (f, 1)} := by
    ext p; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
  rw [this]
  unfold InTopCap ptD ptF at hT
  apply mem_convexHull_of_sarea <;> simp only [sarea] at hT ⊢
  · nlinarith
  · nlinarith
  · nlinarith
  · nlinarith

/-- Two top-cap points: `Ω₀ ≥ 6A₀ > 3s` (the four-point endpoint lemma
`TypeII.fourPointEndpointLemma`). -/
theorem Comp.top_two (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j)
    (hi : InTopCap d f (Q i)) (hj : InTopCap d f (Q j)) : 6 * A₀ ≤ topCapArea d f := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have := (TypeII.fourPointEndpointLemma (1, d) (f, 1) ptE (Q i) (Q j)
    (top_mem_hull H.hA (H.hQ i) hi) (top_mem_hull H.hA (H.hQ j) hj)).1
  have hm := H.min_sub (by norm_num) ![2, 3, i.val + 5, j.val + 5]
    (by intro a; fin_cases a <;> simp <;> omega)
    (by
      intro a b hab
      fin_cases a <;> fin_cases b <;> simp at hab ⊢ <;> omega)
  have e : (fun a => cfg h c d f Q (![2, 3, i.val + 5, j.val + 5] a)) = ![(1, d), (f, 1), Q i, Q j] := by
    funext a; fin_cases a <;> first | rfl | exact cfg_free h c d f Q _
  rw [e] at hm
  rw [triangleArea_eq] at this
  simp only [sarea, topCapArea] at this ⊢
  rw [abs_of_nonpos (by nlinarith)] at this
  nlinarith

/-- Three top-cap points: `Ω₀ > 7/11` (the endpoint-triangle theorem
`TypeII.endpointTriangleTheorem`, `Ω₀ ≥ 2A₀/(3 - 2√2)`). -/
theorem Comp.top_three (H : Comp h c d f Q) {i j l : Fin 4} (hij : i ≠ j) (hil : i ≠ l)
    (hjl : j ≠ l) (hi : InTopCap d f (Q i)) (hj : InTopCap d f (Q j))
    (hl : InTopCap d f (Q l)) : 7 / 11 < topCapArea d f := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have := TypeII.endpointTriangleTheorem (1, d) (f, 1) ptE (Q i) (Q j) (Q l)
    (top_mem_hull H.hA (H.hQ i) hi) (top_mem_hull H.hA (H.hQ j) hj)
    (top_mem_hull H.hA (H.hQ l) hl)
  have hm := H.min_sub (by norm_num) ![2, 3, i.val + 5, j.val + 5, l.val + 5]
    (by intro a; fin_cases a <;> simp <;> omega)
    (by
      intro a b hab
      fin_cases a <;> fin_cases b <;> simp at hab ⊢ <;> omega)
  have e : (fun a => cfg h c d f Q (![2, 3, i.val + 5, j.val + 5, l.val + 5] a)) =
      ![(1, d), (f, 1), Q i, Q j, Q l] := by
    funext a; fin_cases a <;> first | rfl | exact cfg_free h c d f Q _
  rw [e] at hm
  rw [triangleArea_eq] at this
  simp only [sarea, topCapArea, TypeII.kEnd] at this ⊢
  rw [abs_of_nonpos (by nlinarith)] at this
  have hA0 := A₀_bounds
  have s2 : (1.4142 : ℝ) < Real.sqrt 2 := by
    rw [Real.lt_sqrt (by norm_num)]; norm_num
  by_contra hn; push Not at hn
  have k0 : 0 ≤ 3 - 2 * Real.sqrt 2 := by
    have : Real.sqrt 2 < 1.5 := by rw [Real.sqrt_lt' (by norm_num)]; norm_num
    linarith
  have := mul_le_mul_of_nonneg_left hn k0
  nlinarith

/-- Four top-cap points are impossible (the two-vertex capacity bound
`TypeIICompletion.card_mem_triangle_le_three` on `D, F, (1, 1)`). -/
theorem Comp.top_four (H : Comp h c d f Q) (hT : ∀ i, InTopCap d f (Q i)) : False := by
  classical
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have := TypeIICompletion.card_mem_triangle_le_three _ H.config_sq H.hmin 2 3 (by decide) ptE (by
    rw [triangleArea_eq]
    simp only [c1Config, sarea, Matrix.cons_val]
    gcongr; rw [abs_le]; constructor <;> nlinarith)
  have h4 := four_le_card (p := fun k => k ≠ 2 ∧ k ≠ 3 ∧
      c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) k ∈ convexHull ℝ
        ({c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 2, c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 3,
          ptE} : Set Point)) (a := 5) (b := 6) (e := 7) (g := 8)
    ⟨by decide, by decide, top_mem_hull H.hA (H.hQ 0) (hT 0)⟩
    ⟨by decide, by decide, top_mem_hull H.hA (H.hQ 1) (hT 1)⟩
    ⟨by decide, by decide, top_mem_hull H.hA (H.hQ 2) (hT 2)⟩
    ⟨by decide, by decide, top_mem_hull H.hA (H.hQ 3) (hT 3)⟩ (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide)
  convert this.trans_lt' h4 using 0
  simp

/-! ### The upper quadrilateral -/

/-- Two upper-quadrilateral points: `W ≥ 16A₀ > 8s` (`QuadrilateralHull.minTriangleArea_six_le_quadArea_div_eight`). -/
theorem Comp.quad_two (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j)
    (hi : InUpperQuad h c d f (Q i)) (hj : InUpperQuad h c d f (Q j)) :
    16 * A₀ ≤ upperQuadArea h c d f := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have hq : QuadrilateralHull.ConvexQuad (0, h) (c, 0) (1, d) (f, 1) := by
    unfold QuadrilateralHull.ConvexQuad; simp only [sarea]
    refine ⟨?_, ?_, ?_, ?_⟩ <;> nlinarith
  have hc' : ∀ X, InUpperQuad h c d f X → QuadrilateralHull.InClosedQuad X (0, h) (c, 0) (1, d)
      (f, 1) := fun X hX => ⟨hX.1.le, hX.2.1.le, hX.2.2.1.le, hX.2.2.2.le⟩
  have := (QuadrilateralHull.minTriangleArea_six_le_quadArea_div_eight hq (hc' _ hi) (hc' _ hj)).1
  have hm := H.min_sub (by norm_num) ![4, 1, 2, 3, i.val + 5, j.val + 5]
    (by intro a; fin_cases a <;> simp <;> omega)
    (by
      intro a b hab
      fin_cases a <;> fin_cases b <;> simp at hab ⊢ <;> omega)
  have e : (fun a => cfg h c d f Q (![4, 1, 2, 3, i.val + 5, j.val + 5] a)) =
      ![(0, h), (c, 0), (1, d), (f, 1), Q i, Q j] := by
    funext a; fin_cases a <;> first | rfl | exact cfg_free h c d f Q _
  rw [e] at hm
  simp only [QuadrilateralHull.quadArea, sarea, upperQuadArea] at this ⊢
  nlinarith

/-- Three upper-quadrilateral points are impossible (`QuadrilateralHull.ncard_inQuad_le_two`, since
`W ≤ 1`). -/
theorem Comp.quad_three (H : Comp h c d f Q) {i j l : Fin 4} (hij : i ≠ j) (hil : i ≠ l)
    (hjl : j ≠ l) (hi : InUpperQuad h c d f (Q i)) (hj : InUpperQuad h c d f (Q j))
    (hl : InUpperQuad h c d f (Q l)) : False := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have hq : QuadrilateralHull.ConvexQuad (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 4)
      (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 1) (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 2)
      (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 3) := by
    unfold QuadrilateralHull.ConvexQuad; simp only [c1Config, sarea, Matrix.cons_val]
    refine ⟨?_, ?_, ?_, ?_⟩ <;> nlinarith
  have := QuadrilateralHull.ncard_inQuad_le_two H.hmin hq (by
    simp only [QuadrilateralHull.quadArea, c1Config, sarea, Matrix.cons_val]
    nlinarith [mul_nonneg (sub_nonneg.2 hdh) (sub_nonneg.2 hfc)])
  have hmem : ∀ k : Fin 4, InUpperQuad h c d f (Q k) →
      (⟨k.val + 5, by omega⟩ : Fin 9) ∈
        {m | QuadrilateralHull.InQuad (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) m)
          (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 4) (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 1)
          (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 2)
          (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 3)} := by
    intro k hk
    simp only [Set.mem_ofPred_eq, c1Config_free]
    exact hk
  have := three_le_ncard (hmem i hi) (hmem j hj) (hmem l hl)
    (by simp [Fin.ext_iff]; omega) (by simp [Fin.ext_iff]; omega)
    (by simp [Fin.ext_iff]; omega) (Set.toFinite _)
  omega

/-! ### The fans -/

/-- At most two free points lie below `OD` (`TypeIICompletion.card_mem_triangle_le_three` on `O, D, (1, 0)`). -/
theorem Comp.fan_below (H : Comp h c d f Q) {i j l : Fin 4} (hij : i ≠ j) (hil : i ≠ l)
    (hjl : j ≠ l) (hi : BelowOD d (Q i)) (hj : BelowOD d (Q j)) (hl : BelowOD d (Q l)) :
    False := by
  classical
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have hmem : ∀ X : Point, X ∈ unitSquare → sarea (0, 0) (1, d) X ≤ 0 →
      X ∈ convexHull ℝ ({(0, 0), (1, d), (1, 0)} : Set Point) := by
    intro X hX hb
    obtain ⟨x0, x1, y0, y1⟩ := hX
    have : ({(0, 0), (1, d), (1, 0)} : Set Point) = {(0, 0), (1, 0), (1, d)} := by
      ext p; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
    rw [this]
    apply mem_convexHull_of_sarea <;> simp only [sarea] at hb ⊢ <;> nlinarith
  have := TypeIICompletion.card_mem_triangle_le_three _ H.config_sq H.hmin 0 2 (by decide) (1, 0) (by
    rw [triangleArea_eq]
    simp only [c1Config, sarea, Matrix.cons_val]
    gcongr; rw [abs_le]; constructor <;> nlinarith)
  have hfree : ∀ k : Fin 4, BelowOD d (Q k) → (fun m : Fin 9 => m ≠ 0 ∧ m ≠ 2 ∧
      c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) m ∈ convexHull ℝ
        ({c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 0,
          c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 2, (1, 0)} : Set Point))
        ⟨k.val + 5, by omega⟩ := by
    intro k hk
    refine ⟨fin9_ne _ (by simp), fin9_ne _ (by simp), ?_⟩
    rw [c1Config_free]
    exact hmem _ (H.hQ k) hk.le
  have h4 := four_le_card (p := fun m : Fin 9 => m ≠ 0 ∧ m ≠ 2 ∧
      c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) m ∈ convexHull ℝ
        ({c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 0,
          c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 2, (1, 0)} : Set Point))
    (a := 1) (b := ⟨i.val + 5, by omega⟩) (e := ⟨j.val + 5, by omega⟩)
    (g := ⟨l.val + 5, by omega⟩)
    ⟨by decide, by decide, hmem _ (H.config_sq 1) (by
      simp only [c1Config, sarea, Matrix.cons_val]; nlinarith)⟩
    (hfree i hi) (hfree j hj) (hfree l hl) (by simp) (by simp) (by simp)
    (by simp; omega) (by simp; omega) (by simp; omega)
  convert this.trans_lt' h4 using 0
  simp

/-- At most two free points lie above `OF` (`TypeIICompletion.card_mem_triangle_le_three` on `O, F, (0, 1)`). -/
theorem Comp.fan_above (H : Comp h c d f Q) {i j l : Fin 4} (hij : i ≠ j) (hil : i ≠ l)
    (hjl : j ≠ l) (hi : AboveOF f (Q i)) (hj : AboveOF f (Q j)) (hl : AboveOF f (Q l)) :
    False := by
  classical
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have hmem : ∀ X : Point, X ∈ unitSquare → 0 ≤ sarea (0, 0) (f, 1) X →
      X ∈ convexHull ℝ ({(0, 0), (f, 1), (0, 1)} : Set Point) := by
    intro X hX hb
    obtain ⟨x0, x1, y0, y1⟩ := hX
    apply mem_convexHull_of_sarea <;> simp only [sarea] at hb ⊢ <;> nlinarith
  have := TypeIICompletion.card_mem_triangle_le_three _ H.config_sq H.hmin 0 3 (by decide) (0, 1) (by
    rw [triangleArea_eq]
    simp only [c1Config, sarea, Matrix.cons_val]
    gcongr; rw [abs_le]; constructor <;> nlinarith)
  have hfree : ∀ k : Fin 4, AboveOF f (Q k) → (fun m : Fin 9 => m ≠ 0 ∧ m ≠ 3 ∧
      c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) m ∈ convexHull ℝ
        ({c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 0,
          c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 3, (0, 1)} : Set Point))
        ⟨k.val + 5, by omega⟩ := by
    intro k hk
    refine ⟨fin9_ne _ (by simp), fin9_ne _ (by simp), ?_⟩
    rw [c1Config_free]
    exact hmem _ (H.hQ k) hk.le
  have h4 := four_le_card (p := fun m : Fin 9 => m ≠ 0 ∧ m ≠ 3 ∧
      c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) m ∈ convexHull ℝ
        ({c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 0,
          c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) 3, (0, 1)} : Set Point))
    (a := 4) (b := ⟨i.val + 5, by omega⟩) (e := ⟨j.val + 5, by omega⟩)
    (g := ⟨l.val + 5, by omega⟩)
    ⟨by decide, by decide, hmem _ (H.config_sq 4) (by
      simp only [c1Config, sarea, Matrix.cons_val]; nlinarith)⟩
    (hfree i hi) (hfree j hj) (hfree l hl) (by simp) (by simp) (by simp)
    (by simp; omega) (by simp; omega) (by simp; omega)
  convert this.trans_lt' h4 using 0
  simp

/-! ### Inside counts -/

/-- An actual triangle with two further free points strictly inside has doubled area at least
`2KA₀ > ρ` (the two-interior-point lemma `twoInteriorPointLemma`). -/
theorem Comp.two_inside (H : Comp h c d f Q) {a b e j₁ j₂ : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hj₁ : j₁ < 9) (hj₂ : j₂ < 9) (hd : [a, b, e, j₁, j₂].Nodup)
    (h₁ : InTriangle (cfg h c d f Q j₁) (cfg h c d f Q a) (cfg h c d f Q b) (cfg h c d f Q e) ∨
      InTriangle (cfg h c d f Q j₁) (cfg h c d f Q a) (cfg h c d f Q e) (cfg h c d f Q b))
    (h₂ : InTriangle (cfg h c d f Q j₂) (cfg h c d f Q a) (cfg h c d f Q b) (cfg h c d f Q e) ∨
      InTriangle (cfg h c d f Q j₂) (cfg h c d f Q a) (cfg h c d f Q e) (cfg h c d f Q b)) :
    49 / 60 ≤ |sarea (cfg h c d f Q a) (cfg h c d f Q b) (cfg h c d f Q e)| :=
  H.areaOK.two_inside ha hb he hj₁ hj₂ hd h₁ h₂

/-! ### `HDF` -/

/-- Under `f ≤ d`, `U = [DFH] < ρ = 49/60`. -/
theorem Comp.hdf_lt (H : Comp h c d f Q) (hfd : f ≤ d) :
    sarea (1, d) (f, 1) (0, h) < 49 / 60 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨e1, -, e3, -⟩ := H.anchor_bounds
  have t0 := two_A₀.1
  simp only [sarea]
  by_contra hn; push Not at hn
  have hd1 : d ≤ 11 / 60 := by nlinarith
  have hU : ((f - 1) * (h - d) - (1 - d) * (0 - 1)) * f ≤ f - 2 * A₀ * (1 - f) := by
    nlinarith [mul_nonneg (mul_nonneg hf.le hd.le) hf.le]
  nlinarith [mul_le_mul_of_nonneg_right hn hf.le]

/-! ### Support triangles -/

/-- The support-cell analysis (`TypeII.hsNormal_five_cells`, cells I–V): for a counterclockwise
support triangle `UVW` (`[UVW] ≤ 1`) with contacts `H ∈ (U, W)`, `F ∈ (V, W)` and fifth point `X`,
whose five points have least area at least `A₀`, the normalized doubled minimum is at least
`2A₀ > 1/10`, so cells IV and V are impossible; cells I and III force `[UVW] ≥ 2KA₀`. -/
theorem support_cells {U V W H F X : Point} (hS : TypeII.IsSupportTriangle U V W H F X)
    (harea : sarea U V W ≤ 1) (hmin : A₀ ≤ minTriangleArea ![U, V, H, F, X]) :
    (InTriangle X U F H ∧ InTriangle X U V H ∧ 2 * ((4 + 2 * Real.sqrt 3) * A₀) ≤ sarea U V W) ∨
      (InTriangle X U V F ∧ InTriangle X U V H) ∨
      (InTriangle X V F H ∧ InTriangle X U V F ∧
        2 * ((4 + 2 * Real.sqrt 3) * A₀) ≤ sarea U V W) := by
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
  have hmin' : 2 * A₀ * (m1 * m4 - m2 * m3) / 2 ≤
      minTriangleArea (TypeII.hsConfig h₀ f₀ (φ X)) := by
    rw [hcfg, minTriangleArea_affineMap, abs_of_pos hdet0]
    nlinarith
  have hs : 0 < 2 * A₀ * (m1 * m4 - m2 * m3) := mul_pos (by linarith [A₀_pos]) hdet0
  have hσ : 2 * A₀ ≤ 2 * A₀ * (m1 * m4 - m2 * m3) := by
    rw [hdet, le_mul_iff_one_le_right (by linarith [A₀_pos]), le_div_iff₀ hS0]; linarith
  have t0 := two_A₀
  have five := TypeII.hsNormal_five_cells hN hs hmin'
  have tr : ∀ P₁ P₂ P₃ : Point, sarea (φ P₁) (φ P₂) (φ P₃) =
      (m1 * m4 - m2 * m3) * sarea P₁ P₂ P₃ := fun _ _ _ => sarea_affineMap _ _ _ _ _ _ _ _ _
  have back : ∀ {P₁ P₂ P₃ : Point}, 0 < sarea (φ P₁) (φ P₂) (φ P₃) → 0 < sarea P₁ P₂ P₃ :=
    fun h => pos_of_mul_pos_right ((tr _ _ _).symm ▸ h) hdet0.le
  have bound : 2 * A₀ * (m1 * m4 - m2 * m3) ≤ 1 / TypeII.Ktwo →
      2 * ((4 + 2 * Real.sqrt 3) * A₀) ≤ sarea U V W := by
    intro hK
    have hK0 : 0 < TypeII.Ktwo := by unfold TypeII.Ktwo; positivity
    rw [hdet, le_div_iff₀ hK0] at hK
    unfold TypeII.Ktwo at hK
    have e : 2 * A₀ * (1 / sarea U V W) * (4 + 2 * Real.sqrt 3) =
        2 * A₀ * (4 + 2 * Real.sqrt 3) / sarea U V W := by ring
    rw [e, div_le_one hS0] at hK
    linarith
  rcases five.1 with hI | hII | hIII | hIV | hV
  · left
    obtain ⟨⟨a1, a2, a3⟩, ⟨b1, b2, b3⟩⟩ := five.2.1 hI
    rw [← hA', ← hF'] at a1; rw [← hF', ← hH'] at a2; rw [← hH', ← hA'] at a3
    rw [← hA', ← hE'] at b1; rw [← hE', ← hH'] at b2; rw [← hH', ← hA'] at b3
    exact ⟨⟨back a1, back a2, back a3⟩, ⟨back b1, back b2, back b3⟩,
      bound (TypeII.inCellI_bound hN hs hmin' hI).2⟩
  · right; left
    obtain ⟨⟨a1, a2, a3⟩, ⟨b1, b2, b3⟩⟩ := five.2.2.1 hII
    rw [← hA', ← hE'] at a1; rw [← hE', ← hF'] at a2; rw [← hF', ← hA'] at a3
    rw [← hA', ← hE'] at b1; rw [← hE', ← hH'] at b2; rw [← hH', ← hA'] at b3
    exact ⟨⟨back a1, back a2, back a3⟩, ⟨back b1, back b2, back b3⟩⟩
  · right; right
    obtain ⟨⟨a1, a2, a3⟩, ⟨b1, b2, b3⟩⟩ := five.2.2.2.1 hIII
    rw [← hE', ← hF'] at a1; rw [← hF', ← hH'] at a2; rw [← hH', ← hE'] at a3
    rw [← hA', ← hE'] at b1; rw [← hE', ← hF'] at b2; rw [← hF', ← hA'] at b3
    exact ⟨⟨back a1, back a2, back a3⟩, ⟨back b1, back b2, back b3⟩,
      bound (TypeII.inCellIII_bound hN hs hmin' hIII).2⟩
  · have := TypeII.inCellIV_bound hN hs hmin' hIV; linarith
  · have := (TypeII.inCellV_bound hN hs hmin' hV).2; linarith

/-! ### Two points in the right cap -/

/-- The support triangle of a right-cap pair: if `X = (x, y)`, `Y` are right-cap points below
`OD` and `[DXY] < 0`, then `D, O, P` (`P` the bottom intercept of `DX`) is a support triangle
with contacts `X ∈ (D, P)`, `C ∈ (O, P)` and fifth point `Y`, of doubled area `dp ≤ d`. -/
theorem right_support (hA : C1Anchors h c d f) {x y : ℝ} {Y : Point} (x1 : x ≤ 1)
    (hy : 0 < y) (hdy : 0 < d - y) (hY : Y ∈ unitSquare)
    (hi : sarea (c, 0) (1, d) (x, y) < 0)
    (hjOD : sarea (0, 0) (1, d) Y < 0) (hD : sarea (1, d) (x, y) Y < 0) :
    ∃ p : ℝ, TypeII.IsSupportTriangle (1, d) (0, 0) (p, 0) (x, y) (c, 0) Y ∧
      0 < p ∧ p ≤ 1 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨u0, u1, v0, v1⟩ := hY
  set p := 1 - d * (1 - x) / (d - y) with hp
  have hpc : c < p := by
    rw [hp, lt_sub_iff_add_lt, ← lt_sub_iff_add_lt', div_lt_iff₀ hdy]
    simp only [sarea] at hi; nlinarith
  have hp1 : p ≤ 1 := by
    rw [hp]; have : 0 ≤ d * (1 - x) / (d - y) := by
      apply div_nonneg (by nlinarith) hdy.le
    linarith
  have hp0 : 0 < p := by linarith
  refine ⟨p, ⟨by simp only [sarea]; nlinarith, ?_, ?_, ?_⟩, hp0, hp1⟩
  · refine ⟨y / d, (d - y) / d, div_pos hy hd, div_pos hdy hd, by field_simp; ring, ?_⟩
    ext
    · simp only [Prod.fst_add, Prod.smul_fst, smul_eq_mul, hp]; field_simp; ring
    · simp only [Prod.snd_add, Prod.smul_snd, smul_eq_mul]; field_simp; ring
  · refine ⟨1 - c / p, c / p, ?_, div_pos (by linarith) hp0, by ring, ?_⟩
    · rw [sub_pos, div_lt_one hp0]; exact hpc
    · ext <;> simp; field_simp
  · have hPDY : sarea (p, 0) (1, d) Y * (d - y) = -sarea (1, d) (x, y) Y * d := by
      simp only [sarea, hp]; field_simp; ring
    apply mem_convexHull_of_sarea
    · simp only [sarea]; nlinarith
    · simp only [sarea] at hjOD ⊢; nlinarith
    · simp only [sarea]; nlinarith
    · have : 0 < sarea (p, 0) (1, d) Y * (d - y) := by rw [hPDY]; nlinarith
      exact (pos_of_mul_pos_left this hdy.le).le

/-- The core of `Comp.right_pair_signs`: if `X = Q i`, `Y = Q j` are right-cap points below `OD` and `X` is
the outer one (`[DXY] < 0`, its line from `D` meets the bottom side farther from `O`), then `Y` lies
strictly in `DCX ∩ DOX` and `d ≥ 2KA₀ > ρ`. The support triangle is `D, O, P` with `P` the bottom
intercept of `DX`, contacts `X` (on `DP`) and `C` (on `OP`); `Y` is beyond `CD`, so not in
`DOC` (cells II, III), and cell I gives the containments and the bound. -/
theorem Comp.right_pair_core (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j)
    (hi : InRightCap c d (Q i)) (hj : InRightCap c d (Q j))
    (hiOD : sarea ptO (ptD d) (Q i) < 0) (hjOD : sarea ptO (ptD d) (Q j) < 0)
    (hD : sarea (1, d) (Q i) (Q j) < 0) :
    0 < sarea (1, d) (c, 0) (Q j) ∧ 0 < sarea (c, 0) (Q i) (Q j) ∧
      0 < sarea (Q i) (1, d) (Q j) ∧ 0 < sarea (0, 0) (Q i) (Q j) ∧
      2 * ((4 + 2 * Real.sqrt 3) * A₀) ≤ d := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨k1, -, -, -⟩ := H.right_row i hi hiOD
  have hiy := (H.coord_ge i).2
  have t0 := two_A₀
  unfold InRightCap ptC ptD at hi hj
  unfold ptO ptD at hiOD hjOD
  obtain ⟨p, hS, hp0, hp1⟩ := right_support (x := (Q i).1) (y := (Q i).2) H.hA (H.sq i).2.1
    (by linarith) (by linarith) (H.hQ j) hi hjOD hD
  have hm := H.min_sub (by norm_num) ![2, 0, i.val + 5, 1, j.val + 5]
    (by intro a; fin_cases a <;> simp <;> omega)
    (by
      intro a b hab
      fin_cases a <;> fin_cases b <;> simp at hab ⊢ <;> omega)
  have e : (fun a => cfg h c d f Q (![2, 0, i.val + 5, 1, j.val + 5] a)) =
      ![(1, d), (0, 0), ((Q i).1, (Q i).2), (c, 0), Q j] := by
    funext a; fin_cases a <;> first | rfl | exact cfg_free h c d f Q _
  rw [e] at hm
  have hcell := support_cells hS (by simp only [sarea]; nlinarith) hm
  have hDOP : sarea ((1 : ℝ), d) (0, 0) (p, 0) = d * p := by simp only [sarea]; ring
  have hjC : sarea (c, 0) (1, d) (Q j) < 0 := hj
  rcases hcell with ⟨⟨a1, a2, a3⟩, ⟨b1, b2, b3⟩, hK⟩ | ⟨⟨a1, a2, a3⟩, -⟩ |
    ⟨-, ⟨a1, a2, a3⟩, -⟩
  · refine ⟨a1, a2, a3, b2, ?_⟩
    rw [hDOP] at hK; nlinarith
  · have := sarea_cycle (c, 0) (1, d) (Q j)
    simp only [sarea] at a2 hjC ⊢; nlinarith
  · simp only [sarea] at a2 hjC; nlinarith

/-- Two right-cap points below `OD` give `d ≥ 2KA₀ > ρ` and
`d(1 - c) ≥ 6A₀ > 3s` (subdivision of `CDX` at `Y`, and `[DCX] ≤ d(1 - c)`). -/
theorem Comp.right_pair_bounds (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j)
    (hi : InRightCap c d (Q i)) (hj : InRightCap c d (Q j))
    (hiOD : sarea ptO (ptD d) (Q i) < 0) (hjOD : sarea ptO (ptD d) (Q j) < 0) :
    49 / 60 ≤ d ∧ 6 * A₀ ≤ d * (1 - c) := by
  have key : ∀ {i j : Fin 4}, i ≠ j → InRightCap c d (Q i) → InRightCap c d (Q j) →
      sarea ptO (ptD d) (Q i) < 0 → sarea ptO (ptD d) (Q j) < 0 →
      sarea (1, d) (Q i) (Q j) < 0 → 49 / 60 ≤ d ∧ 6 * A₀ ≤ d * (1 - c) := by
    intro i j hij hi hj hiOD hjOD hD
    obtain ⟨a1, a2, a3, -, hd⟩ := H.right_pair_core hij hi hj hiOD hjOD hD
    refine ⟨by linarith [rho_lt], ?_⟩
    have e1 := le_of_le_abs_of_nonneg (H.area 2 1 (j.val + 5) (by norm_num) (by norm_num)
      (by omega) (by norm_num) (by omega) (by omega)) (by rw [cfg_free]; exact a1.le)
    have e2 := le_of_le_abs_of_nonneg (H.areaFF 1 i j (by norm_num) hij) (by
      simp only [cfg]; exact a2.le)
    have e3 := le_of_le_abs_of_nonneg (H.area (i.val + 5) 2 (j.val + 5) (by omega) (by norm_num)
      (by omega) (by omega) (by omega) (by omega)) (by rw [cfg_free, cfg_free]; exact a3.le)
    rw [cfg_free] at e1
    rw [cfg_free, cfg_free] at e3
    simp only [cfg] at e1 e2 e3
    have hsum := sarea_add_sarea_add_sarea (1, d) (c, 0) (Q i) (Q j)
    obtain ⟨x0, x1, y0, y1⟩ := H.sq i
    obtain ⟨hd0, -, -, -, -, hc⟩ := H.hA
    have : sarea (1, d) (c, 0) (Q i) ≤ d * (1 - c) := by
      simp only [sarea]; nlinarith
    linarith
  have hne : sarea (1, d) (Q i) (Q j) ≠ 0 := by
    have := H.areaFF 2 i j (by norm_num) hij
    intro h0; simp only [cfg] at this; rw [h0] at this; simp at this; linarith [A₀_pos]
  rcases hne.lt_or_gt with hD | hD
  · exact key hij hi hj hiOD hjOD hD
  · exact key hij.symm hj hi hjOD hiOD (by rw [sarea_swap₂₃]; linarith)

/-- Two right-cap points, in the labelled form used by the cover: right-cap points `Q i, Q j`
with `[O Qᵢ Qⱼ] > 0` (the labelling order) have `[C Qᵢ Qⱼ] > 0 > [D Qᵢ Qⱼ]`, that is, `Qⱼ` lies in
`CDQᵢ ∩ ODQᵢ`. -/
theorem Comp.right_pair_signs (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j)
    (hi : InRightCap c d (Q i)) (hj : InRightCap c d (Q j))
    (hiOD : sarea ptO (ptD d) (Q i) < 0) (hjOD : sarea ptO (ptD d) (Q j) < 0)
    (hO : 0 < sarea (0, 0) (Q i) (Q j)) :
    0 < sarea (c, 0) (Q i) (Q j) ∧ sarea (1, d) (Q i) (Q j) < 0 := by
  have hne : sarea (1, d) (Q i) (Q j) ≠ 0 := by
    have := H.areaFF 2 i j (by norm_num) hij
    intro h0; simp only [cfg] at this; rw [h0] at this; simp at this; linarith [A₀_pos]
  rcases hne.lt_or_gt with hD | hD
  · exact ⟨(H.right_pair_core hij hi hj hiOD hjOD hD).2.1, hD⟩
  · have hD' : sarea (1, d) (Q j) (Q i) < 0 := by
      rw [sarea_swap₂₃]; linarith
    obtain ⟨-, -, -, hO', -⟩ := H.right_pair_core hij.symm hj hi hjOD hiOD hD'
    rw [sarea_swap₂₃] at hO'; linarith

/-! ### Transposition -/

/-- The transposition `(x, y) ↦ (y, x)` of the square. -/
def tr (p : Point) : Point := (p.2, p.1)

theorem sarea_tr (p q r : Point) : sarea (tr p) (tr q) (tr r) = -sarea p q r := by
  unfold sarea tr; ring

/-- The relabelling of the anchors under transposition: `O, C, D, F, H ↦ O, H, F, D, C`. -/
def trIdx : Fin 9 → Fin 9 := ![0, 4, 3, 2, 1, 5, 6, 7, 8]

theorem c1Config_tr (h c d f : ℝ) (Q : Fin 4 → Point) (k : Fin 9) :
    c1Config c h f d (tr (Q 0)) (tr (Q 1)) (tr (Q 2)) (tr (Q 3)) k =
      tr (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) (trIdx k)) := by
  fin_cases k <;> rfl

/-- Transposition: `(h, c, d, f) ↦ (c, h, f, d)` with the free points transposed is again a
competitive C1 configuration. -/
theorem Comp.transpose (H : Comp h c d f Q) : Comp c h f d (fun i => tr (Q i)) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  refine ⟨⟨hf, hfc, hc, hd, hdh, hh⟩, fun i => ?_, ?_⟩
  · obtain ⟨a, b, e, g⟩ := H.hQ i; exact ⟨e, g, a, b⟩
  · refine le_minTriangleArea (by norm_num) _ fun a b e hab hbe => ?_
    rw [c1Config_tr, c1Config_tr, c1Config_tr, triangleArea_eq, sarea_tr, abs_neg,
      ← triangleArea_eq]
    have hinj : Function.Injective trIdx := by decide
    exact area_of_le_min H.hmin _ _ _ (hinj.ne hab.ne) (hinj.ne hbe.ne)
      (hinj.ne (hab.trans hbe).ne)

/-- Under `f ≤ d`, two left-cap points (above `OF`) are impossible: `Comp.right_pair_bounds` for
the transposed configuration gives `f ≥ ρ` and `f(1 - h) ≥ 6A₀`, while `f ≤ d ≤ h`. -/
theorem Comp.left_pair (H : Comp h c d f Q) (hfd : f ≤ d) {i j : Fin 4} (hij : i ≠ j)
    (hi : InLeftCap f h (Q i)) (hj : InLeftCap f h (Q j)) (hiOF : AboveOF f (Q i))
    (hjOF : AboveOF f (Q j)) : False := by
  have H' := H.transpose
  have cap : ∀ k, InLeftCap f h (Q k) → InRightCap h f (tr (Q k)) := by
    intro k hk
    unfold InRightCap ptC ptD
    have := sarea_tr (0, h) (f, 1) (Q k)
    unfold InLeftCap ptF ptH at hk
    simp only [tr] at this ⊢
    rw [this, ← sarea_swap₁₂]; exact hk
  have fan : ∀ k, AboveOF f (Q k) → sarea ptO (ptD f) (tr (Q k)) < 0 := by
    intro k hk
    unfold ptO ptD
    have := sarea_tr (0, 0) (f, 1) (Q k)
    unfold AboveOF ptO ptF at hk
    simp only [tr] at this ⊢
    rw [this]; linarith
  obtain ⟨h1, h2⟩ := H'.right_pair_bounds hij (cap i hi) (cap j hj) (fan i hiOF) (fan j hjOF)
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have := A₀_bounds
  nlinarith

end Heilbronn.Nine.C1ZeroLower
