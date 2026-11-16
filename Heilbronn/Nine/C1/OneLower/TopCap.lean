module

public import Heilbronn.Nine.C1.OneLower.HullWords
public import Heilbronn.Nine.C1.OneLower.TopCapTrees
public import Heilbronn.Nine.C1.OneLower.HexCover

/-! # The one-lower C1 hexagon with a single top-cap point

A component of the one-lower C1 class: `C1OneLowerMixedCaps.lowerCount_eq_one_false` uses `topCap_placement_false` for the
occupancy with exactly one exterior point, in the top cap. The module also supplies tools shared
by the one-lower packages: the cap identities `neg_sarea_DFX_eq`, the capacity-one bounds `atMostInside_one_CDX_XFH_OFH_DFH`, `area_XFH_CDX_lt`, the
coordinate bounds `lower_point_bounds`, `upper_point_bounds`, and the radial words with the ray-order rule `sarea_pos_of_hullWord_lt` and the
upper-pair rule `upperPairSign_sound`, reused by `Heilbronn.Nine.C1.OneLower.SideCap` and
`Heilbronn.Nine.C1.OneLower.TopTriangle`.

**Setting.** The C1 anchors `O, C, D, F, H` (`Heilbronn.Nine.C1.ptO`, …) with `0 < d ≤ h < 1`,
`0 < f ≤ c < 1` (`C1Anchors`), minimum triangle area at least `A₀`, and the four free points
`L ∈ OHC`, `P, Q ∈ HCDF`, `X = (g, k)` in the top cap `DF(1,1) \ DF`; the configuration is
`c1Config h c d f L P Q X`. Thresholds `s = 8/73 < 2A₀` and `ρ = 49/60 < (4 + 2√3)s` are written
as the local notations `s`, `ρ`. The proof first transposes the square to get `f ≤ d` (`placement_swap`);
the statements that use this carry the hypothesis `f ≤ d`.

**Shared definitions** (for all the one-lower packages; in `Heilbronn.Nine.C1.OneLower.HullWords`,
same namespace). Radial words of a point with respect to a convex polygon `V₀, …, V_{n-1}`:
`HullWord`, `hullSign`, `hullInside`, `HasHullWord`, `HullAntisymm`; `hullTriples`,
`insideCount`; `AtMostInside` (capacity); the upper-pair rule `sameSector`,
`upperPairSign`, `upperPairConflict`.

**Results.**
* `topCap_placement_false`: the placement is impossible.
* `placement_swap` (transposition), `placement_anchor_bounds`, `neg_sarea_DFX_eq`, `top_cap_point_bounds`, `f_d_bounds_of_le`, `atMostInside_one_CDX_XFH_OFH_DFH` (capacity one), `area_XFH_CDX_lt`, `lower_point_bounds`, `projection_identities`,
  `upper_point_bounds`, `upperQuadArea_bounds` (`W ≥ 8s`): the anchor, cap and coordinate bounds.
* `exists_hexagon_words` (the words of `L, P, Q` are among `lowerWord`, `upperWord`), `prelimTest_eq_true` (the
  three preliminary exclusions), `sarea_pos_of_hullWord_lt` (ray order, general), `upperPairSign_sound` (upper-pair signs),
  `topCapCases_false` (the certificate package: every remaining cell is impossible).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerTopCap

open Heilbronn.Nine.C1

/-- `s = 8/73 < 2A₀`, the doubled-area threshold. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`, the doubled-area bound of a triangle with two further points. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### The placement -/

/-- The hull hexagon `V₀, …, V₅ = O, C, D, X, F, H`. -/
def hexagon (h c d f : ℝ) (X : Point) : Fin 6 → Point := ![ptO, ptC c, ptD d, X, ptF f, ptH h]

/-- The four lower words (inside `OCH`, indices `(0, 1, 5)`), indexed from zero. -/
def lowerWord : Fin 4 → HullWord 6 :=
  ![![1, 4, 4, 3, 2, 1], ![2, 4, 3, 3, 2, 1], ![3, 4, 3, 2, 2, 1], ![4, 4, 3, 2, 1, 1]]

/-- The 18 upper words (the four strict edge tests of `HCDF`: `(5,1), (1,2), (2,4), (4,5)`),
indexed from zero. -/
def upperWord : Fin 18 → HullWord 6 :=
  ![![1, 1, 4, 4, 3, 2], ![1, 2, 4, 3, 3, 2], ![1, 3, 4, 3, 2, 2], ![2, 1, 2, 4, 3, 3],
    ![2, 1, 3, 4, 3, 2], ![2, 2, 2, 3, 3, 3], ![2, 2, 3, 3, 3, 2], ![2, 3, 2, 3, 2, 3],
    ![2, 3, 3, 3, 2, 2], ![3, 2, 2, 1, 3, 4], ![3, 2, 2, 2, 3, 3], ![3, 2, 3, 2, 3, 2],
    ![3, 3, 2, 1, 2, 4], ![3, 3, 2, 2, 2, 3], ![3, 3, 3, 2, 2, 2], ![4, 3, 2, 1, 1, 4],
    ![4, 3, 2, 2, 1, 3], ![4, 3, 3, 2, 1, 2]]

/-- The placement of `topCap_placement_false`: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`; minimum triangle
area of the nine points at least `A₀`; `L` strictly inside `OHC`; `P, Q` strictly inside `HCDF`;
`X = (g, k)` in the top cap (beyond `DF`, inside the virtual triangle `DF(1,1)`; it may lie on a
side of the square). The configuration is `c1Config h c d f L P Q X`. -/
structure Placement (h c d f : ℝ) (L P Q X : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)
  lower : InLower h c L
  upperP : InUpperQuad h c d f P
  upperQ : InUpperQuad h c d f Q
  top : InTopCap d f X
  topSq : X ∈ unitSquare

/-! ### Common bounds and four small anchor triangles -/

section

variable {h c d f : ℝ} {L P Q X : Point}

/-! #### Helpers: transposition -/

/-- Helper: transposing the three points reverses the signed area. -/
theorem sarea_swap_all (p q r : Point) : sarea p.swap q.swap r.swap = -sarea p q r := by
  simp only [sarea, Prod.fst_swap, Prod.snd_swap]; ring

/-- Helper: the transposed configuration `(c, h, f, d)` is the transposition of the configuration
relabelled by `C1ZeroLower.trIdx` (`O, C, D, F, H ↦ O, H, F, D, C`). -/
theorem c1Config_swap (h c d f : ℝ) (L P Q X : Point) (k : Fin 9) :
    c1Config c h f d L.swap P.swap Q.swap X.swap k =
      (c1Config h c d f L P Q X (C1ZeroLower.trIdx k)).swap := by
  fin_cases k <;> rfl

/-- Helper: the C1 anchor conditions are symmetric under `(h, c, d, f) ↦ (c, h, f, d)`. -/
theorem anchors_swap (hA : C1Anchors h c d f) : C1Anchors c h f d :=
  ⟨hA.2.2.2.1, hA.2.2.2.2.1, hA.2.2.2.2.2, hA.1, hA.2.1, hA.2.2.1⟩

/-- Helper: transposition keeps the least triangle area of the configuration. -/
theorem min_swap (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) :
    A₀ ≤ minTriangleArea (c1Config c h f d L.swap P.swap Q.swap X.swap) := by
  refine le_minTriangleArea (by norm_num) _ fun a b e hab hbe => ?_
  rw [c1Config_swap, c1Config_swap, c1Config_swap, triangleArea_eq, sarea_swap_all, abs_neg,
    ← triangleArea_eq]
  have hinj : Function.Injective C1ZeroLower.trIdx := by decide
  exact area_of_le_min hmin _ _ _ (hinj.ne hab.ne) (hinj.ne hbe.ne) (hinj.ne (hab.trans hbe).ne)

/-- Helper: transposition maps `OHC` to the lower triangle of the transposed anchors. -/
theorem lower_swap (hL : InLower h c L) : InLower c h L.swap := by
  obtain ⟨a, b, e⟩ := hL
  simp only [InLower, InTriangle, sarea, ptO, ptC, ptH, Prod.fst_swap, Prod.snd_swap] at a b e ⊢
  exact ⟨by linarith, by linarith, by linarith⟩

/-- Helper: transposition maps `HCDF` to the upper quadrilateral of the transposed anchors. -/
theorem upper_swap (hP : InUpperQuad h c d f P) : InUpperQuad c h f d P.swap := by
  obtain ⟨a, b, e, g⟩ := hP
  simp only [InUpperQuad, sarea, ptC, ptD, ptF, ptH, Prod.fst_swap, Prod.snd_swap] at a b e g ⊢
  exact ⟨by linarith, by linarith, by linarith, by linarith⟩

/-- Helper: transposition maps the top cap beyond `DF` to the transposed top cap. -/
theorem top_swap (hX : InTopCap d f X) : InTopCap f d X.swap := by
  simp only [InTopCap, sarea, ptD, ptF, Prod.fst_swap, Prod.snd_swap] at hX ⊢
  linarith

/-- Helper: transposition maps the square to itself. -/
theorem sq_swap (hX : X ∈ unitSquare) : X.swap ∈ unitSquare := by
  obtain ⟨a, b, e, g⟩ := hX
  exact ⟨e, g, a, b⟩

/-- Transposing the square, `(x, y) ↦ (y, x)`, maps the placement with parameters `(h, c, d, f)` to
the placement with `(c, h, f, d)`: it interchanges `h, c` and `d, f`, preserves the lower/upper
occupancy and the top cap. So `f ≤ d` may be assumed. -/
theorem placement_swap (hS : Placement h c d f L P Q X) :
    Placement c h f d L.swap P.swap Q.swap X.swap :=
  ⟨anchors_swap hS.anchors, min_swap hS.min, lower_swap hS.lower, upper_swap hS.upperP,
    upper_swap hS.upperQ, top_swap hS.top, sq_swap hS.topSq⟩

/-! #### Helpers: areas, the square and the zero-lower model -/

/-- Helper: every actual triangle of `c1Config h c d f L P Q X` has doubled area more than `s`. -/
theorem area_gt (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (i j k : Fin 9)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    s < |sarea (c1Config h c d f L P Q X i) (c1Config h c d f L P Q X j)
      (c1Config h c d f L P Q X k)| := by
  have := area_of_le_min hmin i j k hij hjk hik
  rw [triangleArea_eq] at this
  linarith [C1ZeroLower.two_A₀.1]

/-- Helper: the raw anchor and lower-point areas `OFH, OCD, DFH, CDF` and the subdivision of `OHC`
at `L`: `hf, cd > s`, `[DFH] = (1-d) - (1-f)(h-d) > s`, `[CDF] = 1 - c + d(c-f) > s`,
`hℓx, cℓy > s` and `[CHL] = hc - hℓx - cℓy > s`. -/
theorem base_raw (hA : C1Anchors h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (hL : InLower h c L) :
    s < h * f ∧ s < c * d ∧ s < (1 - d) - (1 - f) * (h - d) ∧ s < 1 - c + d * (c - f) ∧
      s < h * L.1 ∧ s < c * L.2 ∧ s < h * c - h * L.1 - c * L.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨l1, l2, l3⟩ := hL
  have e1 : s < |sarea ptO (ptF f) (ptH h)| := area_gt hmin 0 3 4
  have e2 : s < |sarea ptO (ptC c) (ptD d)| := area_gt hmin 0 1 2
  have e3 : s < |sarea (ptD d) (ptF f) (ptH h)| := area_gt hmin 2 3 4
  have e4 : s < |sarea (ptC c) (ptD d) (ptF f)| := area_gt hmin 1 2 3
  have e5 : s < |sarea (ptH h) ptO L| := area_gt hmin 4 0 5
  have e6 : s < |sarea ptO (ptC c) L| := area_gt hmin 0 1 5
  have e7 : s < |sarea (ptC c) (ptH h) L| := area_gt hmin 1 4 5
  rw [abs_of_nonneg (by simp only [sarea, ptO, ptF, ptH]; nlinarith)] at e1
  rw [abs_of_nonneg (by simp only [sarea, ptO, ptC, ptD]; nlinarith)] at e2
  rw [abs_of_nonneg (by
    simp only [sarea, ptD, ptF, ptH]; nlinarith [mul_nonneg (sub_nonneg.2 (hfc.trans hc.le))
      (sub_nonneg.2 hdh)])] at e3
  rw [abs_of_nonneg (by
    simp only [sarea, ptC, ptD, ptF]; nlinarith [mul_nonneg hd.le (sub_nonneg.2 hfc)])] at e4
  rw [abs_of_nonneg l3.le] at e5
  rw [abs_of_nonneg l1.le] at e6
  rw [abs_of_nonneg l2.le] at e7
  simp only [sarea, ptO, ptC, ptD, ptF, ptH] at e1 e2 e3 e4 e5 e6 e7
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith⟩

/-- Helper: a point strictly inside `OHC` lies in the square. -/
theorem lower_sq (hA : C1Anchors h c d f) (hL : InLower h c L) : L ∈ unitSquare := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨l1, l2, l3⟩ := hL
  simp only [ptO, ptC, ptH, sarea] at l1 l2 l3
  refine ⟨?_, ?_, ?_, ?_⟩ <;> nlinarith

/-- Helper: a point strictly inside `HCDF` lies in the square (at each vertex `V` with neighbours
`U, W`, `[UVW](R - V) = [VWR](U - V) + [UVR](W - V)`). -/
theorem upper_sq (hA : C1Anchors h c d f) (hP : InUpperQuad h c d f P) : P ∈ unitSquare := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨u1, u2, u3, u4⟩ := hP
  obtain ⟨x, y⟩ := P
  simp only [ptC, ptD, ptF, ptH, sarea] at u1 u2 u3 u4
  have hc0 : 0 < c := by linarith
  have hh0 : 0 < h := by linarith
  have i1 : x * (c * (1 - h) + h * f) =
      c * ((0 - f) * (y - 1) - (h - 1) * (x - f)) +
        f * ((c - 0) * (y - h) - (0 - h) * (x - 0)) := by
    ring
  have i2 : (1 - x) * (1 - c + d * (c - f)) =
      (1 - f) * ((1 - c) * (y - 0) - (d - 0) * (x - c)) +
        (1 - c) * ((f - 1) * (y - d) - (1 - d) * (x - 1)) := by ring
  have i3 : y * (h * (1 - c) + c * d) =
      h * ((1 - c) * (y - 0) - (d - 0) * (x - c)) +
        d * ((c - 0) * (y - h) - (0 - h) * (x - 0)) := by
    ring
  have i4 : (1 - y) * ((1 - d) - (1 - f) * (h - d)) =
      (1 - d) * ((0 - f) * (y - 1) - (h - 1) * (x - f)) +
        (1 - h) * ((f - 1) * (y - d) - (1 - d) * (x - 1)) := by ring
  have k1 : 0 < c * (1 - h) + h * f := by nlinarith
  have k2 : 0 < 1 - c + d * (c - f) := by nlinarith [mul_nonneg hd.le (sub_nonneg.2 hfc)]
  have k3 : 0 < h * (1 - c) + c * d := by nlinarith
  have k4 : 0 < (1 - d) - (1 - f) * (h - d) := by
    nlinarith [mul_nonneg (sub_nonneg.2 (hfc.trans hc.le)) (sub_nonneg.2 hh.le)]
  have r1 : 0 < x * (c * (1 - h) + h * f) := by rw [i1]; nlinarith
  have r2 : 0 < (1 - x) * (1 - c + d * (c - f)) := by
    rw [i2]; nlinarith [mul_pos (sub_pos.2 (hfc.trans_lt hc)) u2, mul_pos (sub_pos.2 hc) u3]
  have r3 : 0 < y * (h * (1 - c) + c * d) := by rw [i3]; nlinarith
  have r4 : 0 < (1 - y) * ((1 - d) - (1 - f) * (h - d)) := by
    rw [i4]; nlinarith [mul_pos (sub_pos.2 (hdh.trans_lt hh)) u4, mul_pos (sub_pos.2 hh) u3]
  exact ⟨(pos_of_mul_pos_left r1 k1.le).le, by linarith [pos_of_mul_pos_left r2 k2.le],
    (pos_of_mul_pos_left r3 k3.le).le, by linarith [pos_of_mul_pos_left r4 k4.le]⟩

/-- Helper: the four free points of a configuration with `L ∈ OHC`, `P, Q ∈ HCDF` and `X` in the
square form a competitive configuration of the zero-lower model (`C1ZeroLower.Comp`). -/
theorem comp_of (hA : C1Anchors h c d f) (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X))
    (hL : InLower h c L) (hP : InUpperQuad h c d f P) (hQ : InUpperQuad h c d f Q)
    (hX : X ∈ unitSquare) : C1ZeroLower.Comp h c d f ![L, P, Q, X] := by
  refine ⟨hA, fun i => ?_, hmin⟩
  fin_cases i
  exacts [lower_sq hA hL, upper_sq hA hP, upper_sq hA hQ, hX]

/-- Helper: the placement as a zero-lower model configuration. -/
theorem Placement.comp (hS : Placement h c d f L P Q X) : C1ZeroLower.Comp h c d f ![L, P, Q, X] :=
  comp_of hS.anchors hS.min hS.lower hS.upperP hS.upperQ hS.topSq

/-- The subdivision of `OHC` at `L` and the anchor areas `OHF`, `OCD` give `hc ≥ 3s`, `hf ≥ s`,
`cd ≥ s`, hence `h, c ≥ 3s` and `d, f ≥ s`. -/
theorem placement_anchor_bounds (hS : Placement h c d f L P Q X) :
    3 * s ≤ h * c ∧ s ≤ h * f ∧ s ≤ c * d ∧ 3 * s ≤ h ∧ 3 * s ≤ c ∧ s ≤ d ∧ s ≤ f := by
  obtain ⟨a1, a2, -, -, a5, a6, a7⟩ := base_raw hS.anchors hS.min hS.lower
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hhc : 3 * s ≤ h * c := by linarith
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  refine ⟨hhc, a1.le, a2.le, ?_, ?_, ?_, ?_⟩
  · nlinarith [mul_nonneg h0.le (sub_nonneg.2 hc.le)]
  · nlinarith [mul_nonneg c0.le (sub_nonneg.2 hh.le)]
  · nlinarith [mul_nonneg hd.le (sub_nonneg.2 hc.le)]
  · nlinarith [mul_nonneg hf.le (sub_nonneg.2 hh.le)]

/-- The cap area `r := -[DFX]` of a point `X = (g, k)` has the three expressions
`(1-d)g + (1-f)k - 1 + df = (1-d)(g-f) - (1-f)(1-k) = (1-f)(k-d) - (1-d)(1-g)` (an identity). -/
theorem neg_sarea_DFX_eq (d f : ℝ) (X : Point) :
    -sarea (ptD d) (ptF f) X = (1 - d) * X.1 + (1 - f) * X.2 - 1 + d * f ∧
      -sarea (ptD d) (ptF f) X = (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      -sarea (ptD d) (ptF f) X = (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) := by
  refine ⟨?_, ?_, ?_⟩ <;> simp only [sarea, ptD, ptF] <;> ring

/-- Helper: the cap area `r = -[DFX]` of a top-cap point exceeds `s`. -/
theorem top_r (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (hX : InTopCap d f X) :
    s < -sarea (ptD d) (ptF f) X := by
  have e : s < |sarea (ptD d) (ptF f) X| := area_gt hmin 2 3 8
  rwa [abs_of_neg hX] at e

/-- Since `r ≥ s`: `g - f ≥ s`, `k - d ≥ s` and `(1-d)(1-f) ≥ s`. -/
theorem top_cap_point_bounds (hS : Placement h c d f L P Q X) :
    s ≤ X.1 - f ∧ s ≤ X.2 - d ∧ s ≤ (1 - d) * (1 - f) := by
  have hr := top_r hS.min hS.top
  obtain ⟨e1, e2, e3⟩ := neg_sarea_DFX_eq d f X
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.topSq
  have hf1 : (0:ℝ) ≤ 1 - f := by linarith
  have hd1 : (0:ℝ) ≤ 1 - d := by linarith
  have p1 := mul_nonneg hf1 (sub_nonneg.2 y1)
  have p2 := mul_nonneg hd1 (sub_nonneg.2 x1)
  have k1 : s < (1 - d) * (X.1 - f) := by linarith
  have k2 : s < (1 - f) * (X.2 - d) := by linarith
  refine ⟨?_, ?_, ?_⟩
  · have : 0 < X.1 - f := by
      by_contra hn; push Not at hn
      nlinarith [mul_nonneg hd1 (sub_nonneg.2 hn)]
    nlinarith [mul_nonneg hd.le this.le]
  · have : 0 < X.2 - d := by
      by_contra hn; push Not at hn
      nlinarith [mul_nonneg hf1 (sub_nonneg.2 hn)]
    nlinarith [mul_nonneg hf.le this.le]
  · nlinarith

/-- Under `f ≤ d`: `f < 67/100` and `d ≤ 57/65` (from `(1-d)(1-f) ≥ s` of `top_cap_point_bounds`
with `f ≥ s`, and `(1-f)² ≥ s > (33/100)²`). -/
theorem f_d_bounds_of_le (hS : Placement h c d f L P Q X) (hfd : f ≤ d) : f < 67 / 100 ∧ d ≤ 57 / 65 := by
  obtain ⟨-, -, k⟩ := top_cap_point_bounds hS
  obtain ⟨-, -, -, -, -, -, sf⟩ := placement_anchor_bounds hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hf1 : (0:ℝ) ≤ 1 - f := by linarith
  have hd1 : (0:ℝ) ≤ 1 - d := by linarith
  have q : (1 - d) * (1 - f) ≤ (1 - f) * (1 - f) := mul_le_mul_of_nonneg_right (by linarith) hf1
  constructor
  · nlinarith
  · nlinarith [mul_le_mul_of_nonneg_left (show 1 - f ≤ 1 - s by linarith) hd1]

/-- Helper: the real inequality behind `area_XFH_CDX_lt`: with `h ≥ 3s` and `r = (1-f)(k-d) - (1-d)(1-g) > s`,
`α = (1-h)g + f(h-k) < 1 - 7s/3` (for `k < h`: `fk < k - s` and
`k² - (10/3)sk + sh = (k - 5s/3)² + s(h - 25s/9) > 0`, the square-free form of AM-GM). -/
theorem xfh_aux {h f g k d : ℝ} (hh3 : 3 * s ≤ h) (hh1 : h < 1) (hf0 : 0 < f) (hf1 : f < 1)
    (hd0 : 0 < d) (hd1 : d < 1) (g1 : g ≤ 1)
    (hr : s < (1 - f) * (k - d) - (1 - d) * (1 - g)) :
    (1 - h) * g + f * (h - k) < 1 - 7 * s / 3 := by
  rcases le_or_gt h k with hk | hk
  · nlinarith [mul_nonneg hf0.le (sub_nonneg.2 hk),
      mul_nonneg (sub_nonneg.2 hh1.le) (sub_nonneg.2 g1)]
  · have hfk : s < (1 - f) * k := by
      nlinarith [mul_nonneg (sub_nonneg.2 hf1.le) hd0.le,
        mul_nonneg (sub_nonneg.2 hd1.le) (sub_nonneg.2 g1)]
    have k0 : 0 < k := by
      by_contra hn; push Not at hn
      nlinarith [mul_nonneg (sub_nonneg.2 hf1.le) (neg_nonneg.2 hn)]
    have e1 : ((1 - h) * g + f * (h - k)) * k ≤ k - k ^ 2 - s * h + s * k := by
      nlinarith [mul_le_mul_of_nonneg_left g1 (mul_nonneg (sub_nonneg.2 hh1.le) k0.le),
        mul_le_mul_of_nonneg_right hfk.le (sub_nonneg.2 hk.le)]
    have e2 : k - k ^ 2 - s * h + s * k < (1 - 7 * s / 3) * k := by
      nlinarith [sq_nonneg (k - 5 * s / 3)]
    by_contra hn; push Not at hn
    nlinarith [mul_le_mul_of_nonneg_right hn k0.le]

/-- Helper: `area_XFH_CDX_lt` for `XFH`: `0 < α = [XFH] < 1 - 7s/3` (positivity: `α ≥ (1-h)(g-f) > 0`). -/
theorem xfh_bound (hS : Placement h c d f L P Q X) :
    0 < sarea X (ptF f) (ptH h) ∧ sarea X (ptF f) (ptH h) < 1 - 7 * s / 3 := by
  have hr := top_r hS.min hS.top
  obtain ⟨-, -, e3⟩ := neg_sarea_DFX_eq d f X
  obtain ⟨-, -, -, hh3, -, -, -⟩ := placement_anchor_bounds hS
  obtain ⟨gf, -, -⟩ := top_cap_point_bounds hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.topSq
  have ex : sarea X (ptF f) (ptH h) = (1 - h) * X.1 + f * (h - X.2) := by
    simp only [sarea, ptF, ptH]; ring
  rw [ex]
  constructor
  · nlinarith [mul_pos (sub_pos.2 hh) (show 0 < X.1 - f by linarith),
      mul_nonneg hf.le (sub_nonneg.2 y1)]
  · exact xfh_aux hh3 hh hf (by linarith) hd (by linarith) x1 (by linarith)

/-- Helper: `area_XFH_CDX_lt` for `CDX`, by transposition: `[CDX]` is `[X'F'H']` of the transposed placement. -/
theorem cdx_bound (hS : Placement h c d f L P Q X) :
    0 < sarea (ptC c) (ptD d) X ∧ sarea (ptC c) (ptD d) X < 1 - 7 * s / 3 := by
  have e : sarea X.swap (ptF d) (ptH c) = sarea (ptC c) (ptD d) X := by
    simp only [sarea, ptF, ptH, ptC, ptD, Prod.fst_swap, Prod.snd_swap]; ring
  rw [← e]
  exact xfh_bound (placement_swap hS)

open C1ZeroLower in
/-- Helper (capacity one): an actual triangle of the configuration whose doubled area is below `ρ`
contains at most one free point, since two would force doubled area at least `2KA₀ > ρ`
(`C1ZeroLower.Comp.two_inside`). -/
theorem cap_one {Q4 : Fin 4 → Point} (H : Comp h c d f Q4) {a b e : ℕ} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e)
    (hlt : |sarea (cfg h c d f Q4 a) (cfg h c d f Q4 b) (cfg h c d f Q4 e)| < ρ) :
    AtMostInside 1 (cfg h c d f Q4 a) (cfg h c d f Q4 b) (cfg h c d f Q4 e) Q4 := by
  intro S hS
  by_contra hcard
  push Not at hcard
  obtain ⟨i, hi, j, hj, hij⟩ := Finset.one_lt_card.1 hcard
  have z : ∀ A B : Point, sarea A B A = 0 := fun A B => by unfold sarea; ring
  have z' : ∀ A B : Point, sarea A B B = 0 := fun A B => by unfold sarea; ring
  have nv : ∀ k : Fin 4, InTriangle (Q4 k) (cfg h c d f Q4 a) (cfg h c d f Q4 b)
      (cfg h c d f Q4 e) → k.val + 5 ≠ a ∧ k.val + 5 ≠ b ∧ k.val + 5 ≠ e := by
    intro k hk
    obtain ⟨k1, k2, k3⟩ := hk
    rw [← cfg_free h c d f Q4 k] at k1 k2 k3
    refine ⟨fun h0 => ?_, fun h0 => ?_, fun h0 => ?_⟩
    · rw [h0, z] at k1; exact lt_irrefl _ k1
    · rw [h0, z'] at k1; exact lt_irrefl _ k1
    · rw [h0, z'] at k2; exact lt_irrefl _ k2
  obtain ⟨i1, i2, i3⟩ := nv i (hS i hi)
  obtain ⟨j1, j2, j3⟩ := nv j (hS j hj)
  have hij' : i.val ≠ j.val := fun h0 => hij (Fin.ext h0)
  have hi' : InTriangle (cfg h c d f Q4 (i.val + 5)) (cfg h c d f Q4 a) (cfg h c d f Q4 b)
      (cfg h c d f Q4 e) := by rw [cfg_free]; exact hS i hi
  have hj' : InTriangle (cfg h c d f Q4 (j.val + 5)) (cfg h c d f Q4 a) (cfg h c d f Q4 b)
      (cfg h c d f Q4 e) := by rw [cfg_free]; exact hS j hj
  have := H.two_inside ha hb he (j₁ := i.val + 5) (j₂ := j.val + 5) (by omega) (by omega)
    (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
      List.nodup_nil, and_true, not_false_eq_true]; omega) (Or.inl hi') (Or.inl hj')
  linarith

/-- Under `f ≤ d`, the four actual triangles `CDX`, `XFH`, `OFH`, `DFH` have capacity at most one:
none of them contains two of the free points. (`[OFH] =
hf < 67/100 < ρ`, `[DFH] < ρ` (else
`[DFH] ≤ 411/803`), `[XFH], [CDX] < 1 - 7s/3 < ρ` by `area_XFH_CDX_lt`, and two further points force doubled
area `≥ (4 + 2√3)s > ρ` (`cap_one`).) -/
theorem atMostInside_one_CDX_XFH_OFH_DFH (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    AtMostInside 1 (ptC c) (ptD d) X (freePt L P Q X) ∧
      AtMostInside 1 X (ptF f) (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 ptO (ptF f) (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 (ptD d) (ptF f) (ptH h) (freePt L P Q X) := by
  have H := hS.comp
  obtain ⟨hf67, -⟩ := f_d_bounds_of_le hS hfd
  obtain ⟨x1, x2⟩ := xfh_bound hS
  obtain ⟨c1, c2⟩ := cdx_bound hS
  have hU := H.hdf_lt hfd
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hU0 : 0 < sarea (ptD d) (ptF f) (ptH h) := by
    simp only [sarea, ptD, ptF, ptH]
    nlinarith [mul_nonneg (sub_nonneg.2 (hfc.trans hc.le)) (sub_nonneg.2 hh.le)]
  have hO0 : 0 < sarea ptO (ptF f) (ptH h) := by simp only [sarea, ptO, ptF, ptH]; nlinarith
  have hO1 : sarea ptO (ptF f) (ptH h) < ρ := by
    simp only [sarea, ptO, ptF, ptH]; nlinarith [mul_nonneg hf.le (sub_nonneg.2 hh.le)]
  have t : 1 - 7 * s / 3 < ρ := by norm_num
  refine ⟨?_, ?_, ?_, ?_⟩
  · exact cap_one H (a := 1) (b := 2) (e := 8) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
      (by show |sarea (ptC c) (ptD d) X| < ρ; rw [abs_of_pos c1]; linarith)
  · exact cap_one H (a := 8) (b := 3) (e := 4) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
      (by show |sarea X (ptF f) (ptH h)| < ρ; rw [abs_of_pos x1]; linarith)
  · exact cap_one H (a := 0) (b := 3) (e := 4) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
      (by show |sarea ptO (ptF f) (ptH h)| < ρ; rw [abs_of_pos hO0]; exact hO1)
  · exact cap_one H (a := 2) (b := 3) (e := 4) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
      (by show |sarea (ptD d) (ptF f) (ptH h)| < ρ; rw [abs_of_pos hU0]; exact hU)

/-- The positive area `α = [XFH] = (1-h)g + f(h-k)` is below `1 - 7s/3 < ρ` (for `k ≥ h`,
`α ≤ 1 - h ≤ 1 - 3s`; for `k < h`, `(1-f)k ≥ s` and AM-GM give
`α ≤ 1 + s - 2√(hs) ≤ 1 + s - 2√3 s < 1 - 7s/3`, using `√3 > 5/3`). The proof does not use `f ≤ d`,
so transposition gives the same bound for `[CDX]`. -/
theorem area_XFH_CDX_lt (hS : Placement h c d f L P Q X) :
    0 < sarea X (ptF f) (ptH h) ∧ sarea X (ptF f) (ptH h) < 1 - 7 * s / 3 ∧
      0 < sarea (ptC c) (ptD d) X ∧ sarea (ptC c) (ptD d) X < 1 - 7 * s / 3 ∧
      1 - 7 * s / 3 < ρ :=
  ⟨(xfh_bound hS).1, (xfh_bound hS).2, (cdx_bound hS).1, (cdx_bound hS).2, by norm_num⟩

/-! ### Affine bounds for the three interior points -/

/-- Helper: the bounds `lower_point_bounds` of a lower point, from the areas `OHL`, `OCL`, `HCL` only (shared with
`Heilbronn.Nine.C1.OneLower.SideCap`). -/
theorem lower_bounds (hA : C1Anchors h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (hL : InLower h c L) :
    s ≤ L.1 ∧ s ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s := by
  obtain ⟨-, -, -, -, a5, a6, a7⟩ := base_raw hA hmin hL
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  have lx0 : 0 < L.1 := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg h0.le (neg_nonneg.2 hn)]
  have ly0 : 0 < L.2 := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg c0.le (neg_nonneg.2 hn)]
  have cx : 0 < c - L.1 := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg h0.le (neg_nonneg.2 hn)]
  have hy : 0 < h - L.2 := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg c0.le (neg_nonneg.2 hn)]
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · nlinarith [mul_nonneg (sub_nonneg.2 hh.le) lx0.le]
  · nlinarith [mul_nonneg (sub_nonneg.2 hc.le) ly0.le]
  · nlinarith [mul_nonneg (sub_nonneg.2 hh.le) cx.le]
  · nlinarith [mul_nonneg (sub_nonneg.2 hc.le) hy.le]
  · have q1 : h * c * L.1 ≤ h * L.1 := by
      nlinarith [mul_nonneg (mul_nonneg h0.le lx0.le) (sub_nonneg.2 hc.le)]
    have q2 : h * c * L.2 ≤ c * L.2 := by
      nlinarith [mul_nonneg (mul_nonneg c0.le ly0.le) (sub_nonneg.2 hh.le)]
    have hc1 : h * c ≤ 1 := by nlinarith
    have hc0 : 0 < h * c := mul_pos h0 c0
    by_contra hn; push Not at hn
    nlinarith [mul_lt_mul_of_pos_left (show 1 - L.1 - L.2 < s by linarith) hc0]

/-- The areas `OHL`, `OCL`, `HCL` give `ℓ_x, ℓ_y ≥ s`, `c - ℓ_x ≥ 2s`, `h - ℓ_y ≥ 2s` and
`ℓ_x + ℓ_y ≤ 1 - s`. -/
theorem lower_point_bounds (hS : Placement h c d f L P Q X) :
    s ≤ L.1 ∧ s ≤ L.2 ∧ 2 * s ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s :=
  lower_bounds hS.anchors hS.min hS.lower

/-- The two projection identities `(1-f)[CDR] + (1-c)[DFR] = [CDF](1-x)` and
`(1-d)[FHR] + (1-h)[DFR] = [DFH](1-y)` for `R = (x, y)`. -/
theorem projection_identities (h c d f : ℝ) (R : Point) :
    (1 - f) * sarea (ptC c) (ptD d) R + (1 - c) * sarea (ptD d) (ptF f) R =
        sarea (ptC c) (ptD d) (ptF f) * (1 - R.1) ∧
      (1 - d) * sarea (ptF f) (ptH h) R + (1 - h) * sarea (ptD d) (ptF f) R =
        sarea (ptD d) (ptF f) (ptH h) * (1 - R.2) := by
  constructor <;> simp only [sarea, ptC, ptD, ptF, ptH] <;> ring

/-- Helper: the bounds `upper_point_bounds` of a point of `HCDF` (coordinates at least `2A₀` from `OHR`, `OCR`,
at most `1 - 2A₀` from the identities `projection_identities`); shared with `Heilbronn.Nine.C1.OneLower.SideCap`. -/
theorem upper_bounds {Q4 : Fin 4 → Point} (H : C1ZeroLower.Comp h c d f Q4) (i : Fin 4)
    (hU : InUpperQuad h c d f (Q4 i)) :
    s ≤ (Q4 i).1 ∧ s ≤ (Q4 i).2 ∧ (Q4 i).1 ≤ 1 - s ∧ (Q4 i).2 ≤ 1 - s := by
  have t := C1ZeroLower.two_A₀.1
  obtain ⟨p1, p2⟩ := H.coord_ge i
  obtain ⟨p3, p4⟩ := H.upper_row i hU
  exact ⟨by linarith, by linarith, by linarith, by linarith⟩

/-- The areas `OHR`, `OCR` and the identities `projection_identities`, with `[CDF] ≤ 1 - f` and `[DFH] ≤ 1 - d`, give
`s ≤ p_x, p_y, q_x, q_y ≤ 1 - s`. -/
theorem upper_point_bounds (hS : Placement h c d f L P Q X) :
    (s ≤ P.1 ∧ s ≤ P.2 ∧ P.1 ≤ 1 - s ∧ P.2 ≤ 1 - s) ∧
      (s ≤ Q.1 ∧ s ≤ Q.2 ∧ Q.1 ≤ 1 - s ∧ Q.2 ≤ 1 - s) :=
  ⟨upper_bounds hS.comp 1 hS.upperP, upper_bounds hS.comp 2 hS.upperQ⟩

/-- Helper: `upperQuadArea_bounds` for two upper points of a zero-lower model configuration
(`QuadrilateralHull.minTriangleArea_six_le_quadArea_div_eight` gives `W ≥ 16A₀ > 8s`; `W ≤ 1` since `(h-d)(c-f) ≥ 0`). -/
theorem quad_W {Q4 : Fin 4 → Point} (H : C1ZeroLower.Comp h c d f Q4)
    (hP : InUpperQuad h c d f (Q4 1)) (hQ : InUpperQuad h c d f (Q4 2)) :
    8 * s ≤ upperQuadArea h c d f ∧ upperQuadArea h c d f ≤ 1 := by
  have := H.quad_two (i := 1) (j := 2) (by decide) hP hQ
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have t := C1ZeroLower.two_A₀.1
  refine ⟨by linarith, ?_⟩
  unfold upperQuadArea; nlinarith [mul_nonneg (sub_nonneg.2 hdh) (sub_nonneg.2 hfc)]

/-- The six-point quadrilateral theorem (`QuadrilateralHull.minTriangleArea_six_le_quadArea_div_eight`) applied to
`H, C, D, F, P, Q` gives `W = 2 area(HCDF) = 1 - (h-d)(c-f) ≥ 8s`; also `W ≤ 1`. -/
theorem upperQuadArea_bounds (hS : Placement h c d f L P Q X) :
    8 * s ≤ upperQuadArea h c d f ∧ upperQuadArea h c d f ≤ 1 :=
  quad_W hS.comp hS.upperP hS.upperQ

/-! ### Finite radial words and the upper-pair signs -/

/-! #### Helpers: radial words of a hull hexagon (shared with the side-cap package) -/

/-- Helper: a point strictly inside a triangle of three vertices of a hexagon, whose vertices are
strictly left of every edge not containing them, is strictly left of every edge (barycentric
identity over the triangle). -/
theorem edges_of_inTriangle {V : Fin 6 → Point}
    (hE : ∀ i k : Fin 6, k ≠ i → k ≠ i + 1 → 0 < sarea (V i) (V (i + 1)) (V k)) {R : Point}
    {a b e : Fin 6} (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e)
    (hR : InTriangle R (V a) (V b) (V e)) : ∀ i : Fin 6, 0 < sarea (V i) (V (i + 1)) R := by
  intro i
  obtain ⟨r1, r2, r3⟩ := hR
  have hT : 0 < sarea (V a) (V b) (V e) := by
    have := sarea_add_sarea_add_sarea (V a) (V b) (V e) R; linarith
  have key : sarea (V a) (V b) (V e) * sarea (V i) (V (i + 1)) R =
      sarea (V b) (V e) R * sarea (V i) (V (i + 1)) (V a) +
        sarea (V e) (V a) R * sarea (V i) (V (i + 1)) (V b) +
        sarea (V a) (V b) R * sarea (V i) (V (i + 1)) (V e) := by unfold sarea; ring
  have z : ∀ A B : Point, sarea A B A = 0 := fun A B => by unfold sarea; ring
  have z' : ∀ A B : Point, sarea A B B = 0 := fun A B => by unfold sarea; ring
  have nn : ∀ k : Fin 6, 0 ≤ sarea (V i) (V (i + 1)) (V k) := by
    intro k
    by_cases h1 : k = i
    · rw [h1, z]
    by_cases h2 : k = i + 1
    · rw [h2, z']
    exact (hE i k h1 h2).le
  have hpos : (a ≠ i ∧ a ≠ i + 1) ∨ (b ≠ i ∧ b ≠ i + 1) ∨ (e ≠ i ∧ e ≠ i + 1) := by
    by_contra hc; push Not at hc; grind
  have : 0 < sarea (V a) (V b) (V e) * sarea (V i) (V (i + 1)) R := by
    rw [key]
    have q1 := mul_nonneg r2.le (nn a)
    have q2 := mul_nonneg r3.le (nn b)
    have q3 := mul_nonneg r1.le (nn e)
    rcases hpos with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
    · have := mul_pos r2 (hE i a h1 h2); linarith
    · have := mul_pos r3 (hE i b h1 h2); linarith
    · have := mul_pos r1 (hE i e h1 h2); linarith
  exact pos_of_mul_pos_right this hT.le

/-- Helper: no free point is collinear with two vertices of a hull polygon whose vertices are
configuration points (the least area). -/
theorem hex_ne_of {Pc : Fin 9 → Point} (hmin : A₀ ≤ minTriangleArea Pc) {V : Fin 6 → Point}
    (idx : Fin 6 → Fin 9) (hidx : Function.Injective idx) (hV : ∀ a, V a = Pc (idx a))
    {m : Fin 9} (hm : ∀ a, idx a ≠ m) : ∀ i j : Fin 6, i ≠ j → sarea (V i) (V j) (Pc m) ≠ 0 := by
  intro i j hij h0
  rw [hV, hV] at h0
  have := area_of_le_min hmin (idx i) (idx j) m (hidx.ne hij) (hm j) (hm i)
  rw [triangleArea_eq, h0, abs_zero] at this
  linarith [A₀_pos]

/-- Helper: the radial word with entries `a₀, …, a₅`. -/
def mkW (a0 a1 a2 a3 a4 a5 : ℕ) : HullWord 6 := ![a0, a1, a2, a3, a4, a5]

/-- Helper: the words satisfying `HullAntisymm` inside `OCH` (`r₁ = 4` from the edge test
`(1, 5)`) are the four lower words (kernel enumeration). -/
theorem lower_cover : ∀ a0 a2 a3 a4 a5 : Fin 4,
    HullAntisymm (mkW (a0.val + 1) 4 (a2.val + 1) (a3.val + 1) (a4.val + 1) (a5.val + 1)) →
    ∃ i : Fin 4, ∀ k, mkW (a0.val + 1) 4 (a2.val + 1) (a3.val + 1) (a4.val + 1) (a5.val + 1) k =
      lowerWord i k := by
  decide +kernel

/-- Helper: a word with entries in `{1, …, 4}` written with `mkW`. -/
theorem eq_mkW {r : HullWord 6} (hb : ∀ i, 1 ≤ r i ∧ r i ≤ 4) :
    r = mkW ((⟨r 0 - 1, by have := hb 0; omega⟩ : Fin 4).val + 1)
      ((⟨r 1 - 1, by have := hb 1; omega⟩ : Fin 4).val + 1)
      ((⟨r 2 - 1, by have := hb 2; omega⟩ : Fin 4).val + 1)
      ((⟨r 3 - 1, by have := hb 3; omega⟩ : Fin 4).val + 1)
      ((⟨r 4 - 1, by have := hb 4; omega⟩ : Fin 4).val + 1)
      ((⟨r 5 - 1, by have := hb 5; omega⟩ : Fin 4).val + 1) := by
  have b0 := hb 0; have b1 := hb 1; have b2 := hb 2
  have b3 := hb 3; have b4 := hb 4; have b5 := hb 5
  funext k; fin_cases k <;> simp [mkW] <;> omega

/-- Helper: a point strictly inside `OCH = V₀V₁V₅` with a radial word (entries in `{1, …, 4}`,
satisfying `HullAntisymm`) has one of the four lower words. -/
theorem lower_word_of {V : Fin 6 → Point} {R : Point} {r : HullWord 6} (hr : HasHullWord V R r)
    (hb : ∀ i, 1 ≤ r i ∧ r i ≤ 4) (ha : HullAntisymm r)
    (hin : InTriangle R (V 0) (V 1) (V 5)) : ∃ i, HasHullWord V R (lowerWord i) := by
  have h15 : hullSign r 1 5 = true := (hr 1 5 (by decide)).1 hin.2.1
  have e4 : ((5 : Fin 6) - 1).val = 4 := by decide
  rw [hullSign, decide_eq_true_eq, e4] at h15
  have e := eq_mkW hb
  have b1 := hb 1
  have e1 : (⟨r 1 - 1, by omega⟩ : Fin 4).val + 1 = 4 := by simp only; omega
  rw [e1] at e
  obtain ⟨i, hi⟩ := lower_cover _ _ _ _ _ (by rw [← e]; exact ha)
  refine ⟨i, ?_⟩
  have : r = lowerWord i := by funext k; rw [e]; exact hi k
  rw [← this]; exact hr

/-- Helper (count test, global capacity two): if no hull triangle contains all three of `L, P, Q`,
the words pass the capacity-two test of `prelimTest`. -/
theorem count_le_two {V : Fin 6 → Point} {L P Q : Point} {wL wP wQ : HullWord 6}
    (hL : HasHullWord V L wL) (hP : HasHullWord V P wP) (hQ : HasHullWord V Q wQ)
    (hcap : ∀ a b e : Fin 6, InTriangle L (V a) (V b) (V e) → InTriangle P (V a) (V b) (V e) →
      InTriangle Q (V a) (V b) (V e) → False) :
    (hullTriples 6).all (fun t => decide (insideCount [wL, wP, wQ] t ≤ 2)) = true := by
  rw [List.all_eq_true]
  intro t ht
  have hlt : t.1 < t.2.1 ∧ t.2.1 < t.2.2 := by
    revert t; decide +kernel
  obtain ⟨a, b, e⟩ := t
  obtain ⟨hab, hbe⟩ := hlt
  simp only at hab hbe
  rw [decide_eq_true_eq]
  simp only [insideCount, List.countP_cons, List.countP_nil]
  rcases h1 : hullInside wL a b e <;> rcases h2 : hullInside wP a b e <;>
    rcases h3 : hullInside wQ a b e <;> simp
  exact hcap a b e ((hasHullWord_inside_iff hL hab hbe).1 h1)
    ((hasHullWord_inside_iff hP hab hbe).1 h2) ((hasHullWord_inside_iff hQ hab hbe).1 h3)

/-- Helper (count test, capacity one): if the triangle `V_aV_bV_e` has capacity one, the words
pass its capacity-one test of `prelimTest`. -/
theorem count_le_one {V : Fin 6 → Point} {L P Q X : Point} {wL wP wQ : HullWord 6}
    (hL : HasHullWord V L wL) (hP : HasHullWord V P wP) (hQ : HasHullWord V Q wQ) {a b e : Fin 6}
    (hab : a < b) (hbe : b < e) (hcap : AtMostInside 1 (V a) (V b) (V e) (freePt L P Q X)) :
    decide (insideCount [wL, wP, wQ] (a, b, e) ≤ 1) = true := by
  rw [decide_eq_true_eq]
  simp only [insideCount, List.countP_cons, List.countP_nil]
  have two : ∀ i j : Fin 4, i ≠ j → InTriangle (freePt L P Q X i) (V a) (V b) (V e) →
      InTriangle (freePt L P Q X j) (V a) (V b) (V e) → False := by
    intro i j hij hi hj
    have := hcap {i, j} (by
      intro k hk
      simp only [Finset.mem_insert, Finset.mem_singleton] at hk
      rcases hk with rfl | rfl
      exacts [hi, hj])
    rw [Finset.card_pair hij] at this
    omega
  have iL := hasHullWord_inside_iff hL hab hbe
  have iP := hasHullWord_inside_iff hP hab hbe
  have iQ := hasHullWord_inside_iff hQ hab hbe
  rcases h1 : hullInside wL a b e <;> rcases h2 : hullInside wP a b e <;>
    rcases h3 : hullInside wQ a b e <;> simp
  · exact two 1 2 (by decide) (iP.1 h2) (iQ.1 h3)
  · exact two 0 2 (by decide) (iL.1 h1) (iQ.1 h3)
  · exact two 0 1 (by decide) (iL.1 h1) (iP.1 h2)
  · exact two 0 1 (by decide) (iL.1 h1) (iP.1 h2)

/-- Helper (global capacity two, `OneCorner.globalC1OccupancyCorollary`): no triangle of three
hull vertices contains all of `L, P, Q`. -/
theorem no_three_inside (hA : C1Anchors h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (hL : L ∈ unitSquare)
    (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare) (hX : X ∈ unitSquare) {V : Fin 6 → Point}
    (idx : Fin 6 → Fin 9) (hV : ∀ a, V a = c1Config h c d f L P Q X (idx a)) (a b e : Fin 6)
    (h1 : InTriangle L (V a) (V b) (V e)) (h2 : InTriangle P (V a) (V b) (V e))
    (h3 : InTriangle Q (V a) (V b) (V e)) : False := by
  have := OneCorner.globalC1OccupancyCorollary h c d f hA L P Q X hL hP hQ hX hmin (idx a) (idx b)
    (idx e)
  rw [← hV, ← hV, ← hV] at this
  have h3' : 3 ≤ {m | InsideTriangle (c1Config h c d f L P Q X m) (V a) (V b)
      (V e)}.ncard := C1ZeroLower.three_le_ncard (a := (5 : Fin 9)) (b := 6) (e := 7)
    (Or.inl h1) (Or.inl h2) (Or.inl h3) (by decide) (by decide) (by decide) (Set.toFinite _)
  omega

/-- Helper (`C1ZeroLower.sectors_of`): two upper points are not in the same sector of both diagonals
`HD`, `CF`. -/
theorem not_sameSector (hA : C1Anchors h c d f) (ux : C1ZeroLower.UpperPt h c d f P)
    (uy : C1ZeroLower.UpperPt h c d f Q) (m : C1ZeroLower.QuadMin h c d f P Q) {iF : Fin 6}
    {p q : HullWord 6} (xHD : Cover.OrientHolds (hullSign p 5 2) (sarea (0, h) (1, d) P))
    (xCF : Cover.OrientHolds (hullSign p 1 iF) (sarea (c, 0) (f, 1) P))
    (yHD : Cover.OrientHolds (hullSign q 5 2) (sarea (0, h) (1, d) Q))
    (yCF : Cover.OrientHolds (hullSign q 1 iF) (sarea (c, 0) (f, 1) Q)) :
    sameSector 5 1 2 iF p q = false := by
  unfold sameSector
  by_contra hc
  rw [Bool.not_eq_false, Bool.and_eq_true, beq_iff_eq, beq_iff_eq] at hc
  rw [← hc.1] at yHD; rw [← hc.2] at yCF
  exact C1ZeroLower.sectors_of hA ux uy m xHD xCF yHD yCF

/-- Helper: the least-area hypotheses of the four rotations of `HCDF` with two free points. -/
theorem quadMin_of {Q4 : Fin 4 → Point} (H : C1ZeroLower.Comp h c d f Q4) {a b : Fin 4}
    (hab : a ≠ b) : C1ZeroLower.QuadMin h c d f (Q4 a) (Q4 b) :=
  ⟨H.min6 4 1 2 3 a b hab (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num),
    H.min6 1 2 3 4 a b hab (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num),
    H.min6 2 3 4 1 a b hab (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num),
    H.min6 3 4 1 2 a b hab (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num)⟩

/-- Helper: an upper point as `C1ZeroLower.UpperPt`. -/
theorem upperPt_of (hP : InUpperQuad h c d f P) : C1ZeroLower.UpperPt h c d f P :=
  ⟨hP.1, hP.2.1, hP.2.2.1, hP.2.2.2⟩

/-- Helper: the three preliminary tests for the words of `L, P, Q` with respect to a
hull hexagon whose vertices `5, 1, 2, iF` are `H, C, D, F`: not the same sector
(`not_sameSector`), global capacity two, and the capacity-one triangles `caps`. -/
theorem prelim_of (H : C1ZeroLower.Comp h c d f ![L, P, Q, X]) {V : Fin 6 → Point}
    (idx : Fin 6 → Fin 9) (hidx : Function.Injective idx)
    (hV : ∀ a, V a = c1Config h c d f L P Q X (idx a)) (hm6 : ∀ a, idx a ≠ 6)
    (hm7 : ∀ a, idx a ≠ 7) {iF : Fin 6} (hH : V 5 = (0, h)) (hC : V 1 = (c, 0))
    (hD : V 2 = (1, d)) (hF : V iF = (f, 1)) (h1F : (1 : Fin 6) ≠ iF)
    (hP : InUpperQuad h c d f P) (hQ : InUpperQuad h c d f Q) {wL wP wQ : HullWord 6}
    (hwL : HasHullWord V L wL) (hwP : HasHullWord V P wP) (hwQ : HasHullWord V Q wQ)
    (caps : List (Fin 6 × Fin 6 × Fin 6))
    (hcaps : ∀ t ∈ caps, t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧
      AtMostInside 1 (V t.1) (V t.2.1) (V t.2.2) (freePt L P Q X)) :
    (!sameSector 5 1 2 iF wP wQ &&
      (hullTriples 6).all (fun t => decide (insideCount [wL, wP, wQ] t ≤ 2)) &&
      caps.all (fun t => decide (insideCount [wL, wP, wQ] t ≤ 1))) = true := by
  have hmin := H.hmin
  have neP := hex_ne_of hmin idx hidx hV (m := 6) hm6
  have neQ := hex_ne_of hmin idx hidx hV (m := 7) hm7
  have xHD := hwP.orient (i := 5) (j := 2) (by decide) (neP 5 2 (by decide))
  have xCF := hwP.orient (i := 1) (j := iF) h1F (neP 1 iF h1F)
  have yHD := hwQ.orient (i := 5) (j := 2) (by decide) (neQ 5 2 (by decide))
  have yCF := hwQ.orient (i := 1) (j := iF) h1F (neQ 1 iF h1F)
  rw [hH, hD] at xHD yHD
  rw [hC, hF] at xCF yCF
  have m : C1ZeroLower.QuadMin h c d f P Q := quadMin_of H (a := 1) (b := 2) (by decide)
  rw [Bool.and_eq_true, Bool.and_eq_true]
  refine ⟨⟨?_, ?_⟩, ?_⟩
  · rw [Bool.not_eq_true']
    exact not_sameSector H.hA (upperPt_of hP) (upperPt_of hQ) m xHD xCF yHD yCF
  · exact count_le_two hwL hwP hwQ fun a b e h1 h2 h3 =>
      no_three_inside H.hA hmin (H.hQ 0) (H.hQ 1) (H.hQ 2) (H.hQ 3) idx hV a b e h1 h2 h3
  · rw [List.all_eq_true]
    intro t ht
    obtain ⟨a, b, e⟩ := t
    obtain ⟨hab, hbe, hcap⟩ := hcaps _ ht
    exact count_le_one hwL hwP hwQ hab hbe hcap

/-! #### Helpers: the top-cap hexagon -/

/-- The hexagon vertices as configuration indices: `O, C, D, X, F, H = 0, 1, 2, 8, 3, 4`. -/
def hexIdx : Fin 6 → Fin 9 := ![0, 1, 2, 8, 3, 4]

/-- Helper: the hexagon vertices are configuration points. -/
theorem hexagon_idx (h c d f : ℝ) (L P Q X : Point) (a : Fin 6) :
    hexagon h c d f X a = c1Config h c d f L P Q X (hexIdx a) := by
  fin_cases a <;> rfl

/-- Helper: the edge tests of the hull hexagon `O, C, D, X, F, H` for a point `X` of the square in
the top cap: every vertex is strictly to the left of every edge not containing it. -/
theorem hexagon_edges {h c d f : ℝ} (hA : C1Anchors h c d f) {X : Point}
    (hX : InTopCap d f X) (hXsq : X ∈ unitSquare) :
    ∀ i k : Fin 6, k ≠ i → k ≠ i + 1 →
      0 < sarea (hexagon h c d f X i) (hexagon h c d f X (i + 1)) (hexagon h c d f X k) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨hx0, hx1, hy0, hy1⟩ := hXsq
  obtain ⟨x, y⟩ := X
  simp only [InTopCap, sarea, ptD, ptF] at hX
  simp only at hx0 hx1 hy0 hy1
  have h1f : 0 < 1 - f := by linarith
  have h1d : 0 < 1 - d := by linarith
  have h1h : 0 < 1 - h := by linarith
  have h1c : 0 < 1 - c := by linarith
  have h0c : 0 < c := by linarith
  have h0h : 0 < h := by linarith
  have h1x : 0 ≤ 1 - x := by linarith
  have h1y : 0 ≤ 1 - y := by linarith
  have hcf : 0 ≤ c - f := by linarith
  have hyd : 0 < y - d := by nlinarith [mul_nonneg h1d.le h1x]
  have hxf : 0 < x - f := by nlinarith [mul_nonneg h1f.le h1y]
  have hy : 0 < y := by linarith
  have hx : 0 < x := by linarith
  intro i k h1 h2
  fin_cases i <;> fin_cases k <;> simp [hexagon, sarea, ptO, ptC, ptD, ptF, ptH] at h1 h2 ⊢
  · exact mul_pos h0c hd
  · exact mul_pos h0c hy
  · exact h0c
  · exact mul_pos h0c h0h
  · exact mul_pos hd h0c
  · linarith [mul_pos h1c hyd, mul_nonneg hd.le h1x]
  · linarith [mul_nonneg hd.le hcf]
  · linarith [mul_pos h1c h0h, mul_pos hd h0c]
  · linarith [mul_nonneg h1x hd.le]
  · linarith [mul_pos hyd h1c, mul_nonneg h1x hd.le]
  · linarith
  · linarith [mul_nonneg hf.le hyd.le, mul_nonneg h1h.le h1x]
  · linarith [mul_pos hxf hy, mul_nonneg h1y hx0]
  · nlinarith [mul_nonneg (mul_nonneg h1d.le hcf) h1y, mul_nonneg h1f.le h1y]
  · linarith
  · linarith [mul_pos hxf h1h, mul_nonneg hf.le h1y]
  · linarith [mul_pos hf h0h]
  · linarith [mul_nonneg h1h.le hcf]
  · linarith [mul_pos h1h h1f, mul_pos hf h1d]
  · linarith [mul_pos h1h hxf, mul_nonneg hf.le h1y]
  · exact mul_pos h0h h0c
  · exact h0h
  · exact mul_pos h0h hx
  · exact mul_pos h0h hf

/-- Helper: an upper point of the top-cap hexagon `O, C, D, X, F, H` is strictly inside `HCD` or
`HDF` (no zero area against `H, D`), so it is strictly left of every hexagon edge. -/
theorem upper_edges {V : Fin 6 → Point}
    (hE : ∀ i k : Fin 6, k ≠ i → k ≠ i + 1 → 0 < sarea (V i) (V (i + 1)) (V k)) {iF : Fin 6}
    (h5F : (5 : Fin 6) ≠ iF) (h2F : (2 : Fin 6) ≠ iF)
    (hH : V 5 = ptH h) (hC : V 1 = ptC c) (hD : V 2 = ptD d) (hF : V iF = ptF f) {R : Point}
    (hR : InUpperQuad h c d f R) (hne : sarea (ptH h) (ptD d) R ≠ 0) :
    ∀ i : Fin 6, 0 < sarea (V i) (V (i + 1)) R := by
  obtain ⟨u1, u2, u3, u4⟩ := hR
  rcases hne.lt_or_gt with hn | hp
  · refine edges_of_inTriangle hE (a := 5) (b := 1) (e := 2) (by decide) (by decide) (by decide) ?_
    rw [hH, hC, hD]
    refine ⟨u1, u2, ?_⟩
    rw [sarea_swap₁₂]; linarith
  · refine edges_of_inTriangle hE (a := 5) (b := 2) (e := iF) (by decide) h2F h5F ?_
    rw [hH, hD, hF]
    exact ⟨hp, u3, u4⟩

/-- Helper: the words satisfying `HullAntisymm` and passing the four edge tests of `HCDF` with
`F = V₄` (`r₂, r₅ ≥ 2`), for `r₀ = 1`, are upper words (kernel enumeration). -/
theorem upper_cover₁ : ∀ a1 a3 a4 : Fin 4, ∀ a2 a5 : Fin 3,
    HullAntisymm (mkW 1 (a1.val + 1) (a2.val + 2) (a3.val + 1) (a4.val + 1) (a5.val + 2)) →
    ∃ j : Fin 18, ∀ k,
      mkW 1 (a1.val + 1) (a2.val + 2) (a3.val + 1) (a4.val + 1) (a5.val + 2) k = upperWord j k := by
  decide +kernel

/-- Helper: `upper_cover₁` for `r₀ = 2`. -/
theorem upper_cover₂ : ∀ a1 a3 a4 : Fin 4, ∀ a2 a5 : Fin 3,
    HullAntisymm (mkW 2 (a1.val + 1) (a2.val + 2) (a3.val + 1) (a4.val + 1) (a5.val + 2)) →
    ∃ j : Fin 18, ∀ k,
      mkW 2 (a1.val + 1) (a2.val + 2) (a3.val + 1) (a4.val + 1) (a5.val + 2) k = upperWord j k := by
  decide +kernel

/-- Helper: `upper_cover₁` for `r₀ = 3`. -/
theorem upper_cover₃ : ∀ a1 a3 a4 : Fin 4, ∀ a2 a5 : Fin 3,
    HullAntisymm (mkW 3 (a1.val + 1) (a2.val + 2) (a3.val + 1) (a4.val + 1) (a5.val + 2)) →
    ∃ j : Fin 18, ∀ k,
      mkW 3 (a1.val + 1) (a2.val + 2) (a3.val + 1) (a4.val + 1) (a5.val + 2) k = upperWord j k := by
  decide +kernel

/-- Helper: `upper_cover₁` for `r₀ = 4`. -/
theorem upper_cover₄ : ∀ a1 a3 a4 : Fin 4, ∀ a2 a5 : Fin 3,
    HullAntisymm (mkW 4 (a1.val + 1) (a2.val + 2) (a3.val + 1) (a4.val + 1) (a5.val + 2)) →
    ∃ j : Fin 18, ∀ k,
      mkW 4 (a1.val + 1) (a2.val + 2) (a3.val + 1) (a4.val + 1) (a5.val + 2) k = upperWord j k := by
  decide +kernel

/-- Helper: a point of `HCDF` with a radial word for the hexagon `O, C, D, X, F, H` has one of the
18 upper words (the edge tests `(5, 1)` and `(2, 4)` give `r₅, r₂ ≥ 2`). -/
theorem upper_word_of {V : Fin 6 → Point} {R : Point} {r : HullWord 6} (hr : HasHullWord V R r)
    (hb : ∀ i, 1 ≤ r i ∧ r i ≤ 4) (ha : HullAntisymm r) (h51 : 0 < sarea (V 5) (V 1) R)
    (h24 : 0 < sarea (V 2) (V 4) R) : ∃ j, HasHullWord V R (upperWord j) := by
  have s51 : hullSign r 5 1 = true := (hr 5 1 (by decide)).1 h51
  have s24 : hullSign r 2 4 = true := (hr 2 4 (by decide)).1 h24
  have e51 : ((1 : Fin 6) - 5).val = 2 := by decide
  have e24 : ((4 : Fin 6) - 2).val = 2 := by decide
  rw [hullSign, decide_eq_true_eq, e51] at s51
  rw [hullSign, decide_eq_true_eq, e24] at s24
  have b0 := hb 0; have b1 := hb 1; have b2 := hb 2
  have b3 := hb 3; have b4 := hb 4; have b5 := hb 5
  have e : r = mkW (r 0) ((⟨r 1 - 1, by omega⟩ : Fin 4).val + 1)
      ((⟨r 2 - 2, by omega⟩ : Fin 3).val + 2) ((⟨r 3 - 1, by omega⟩ : Fin 4).val + 1)
      ((⟨r 4 - 1, by omega⟩ : Fin 4).val + 1) ((⟨r 5 - 2, by omega⟩ : Fin 3).val + 2) := by
    funext k; fin_cases k <;> simp [mkW] <;> omega
  have key : ∃ j : Fin 18, ∀ k, r k = upperWord j k := by
    have ha' : HullAntisymm (mkW (r 0) ((⟨r 1 - 1, by omega⟩ : Fin 4).val + 1)
        ((⟨r 2 - 2, by omega⟩ : Fin 3).val + 2) ((⟨r 3 - 1, by omega⟩ : Fin 4).val + 1)
        ((⟨r 4 - 1, by omega⟩ : Fin 4).val + 1) ((⟨r 5 - 2, by omega⟩ : Fin 3).val + 2)) := by
      rw [← e]; exact ha
    rw [e]
    rcases (show r 0 = 1 ∨ r 0 = 2 ∨ r 0 = 3 ∨ r 0 = 4 by omega) with h0 | h0 | h0 | h0 <;>
      rw [h0] at ha' ⊢
    · exact upper_cover₁ _ _ _ _ _ ha'
    · exact upper_cover₂ _ _ _ _ _ ha'
    · exact upper_cover₃ _ _ _ _ _ ha'
    · exact upper_cover₄ _ _ _ _ _ ha'
  obtain ⟨j, hj⟩ := key
  refine ⟨j, ?_⟩
  have : r = upperWord j := funext hj
  rw [← this]; exact hr

/-- Every one of `L, P, Q` has a radial word for the hexagon `O, C, D, X, F, H` (`HasHullWord`, with
`1 ≤ rᵢ ≤ 4` and `HullAntisymm`); the word of `L` is one of the four lower words and those of `P, Q`
are among the 18 upper words. (Of the 26 words satisfying `HullAntisymm`, the three edge tests of
`OCH` leave four and the four edge tests of `HCDF` leave 18.) -/
theorem exists_hexagon_words (hS : Placement h c d f L P Q X) :
    (∃ i, HasHullWord (hexagon h c d f X) L (lowerWord i)) ∧
      (∃ j, HasHullWord (hexagon h c d f X) P (upperWord j)) ∧
      (∃ j, HasHullWord (hexagon h c d f X) Q (upperWord j)) := by
  have hE := hexagon_edges hS.anchors hS.top hS.topSq
  have hV : IsConvexPolygon (hexagon h c d f X) := convex_of_edges (by norm_num) hE
  have hidx := hexagon_idx h c d f L P Q X
  have ne : ∀ m : Fin 9, (∀ a, hexIdx a ≠ m) → ∀ i j : Fin 6, i ≠ j →
      sarea (hexagon h c d f X i) (hexagon h c d f X j) (c1Config h c d f L P Q X m) ≠ 0 :=
    fun m hm => hex_ne_of hS.min hexIdx (by decide) hidx hm
  have edL := edges_of_inTriangle hE (a := 0) (b := 1) (e := 5) (by decide) (by decide)
    (by decide) hS.lower
  obtain ⟨rL, hrL, hbL, haL⟩ := exists_hullWord hV edL (ne 5 (by decide))
  have up : ∀ (R : Point) (m : Fin 9), c1Config h c d f L P Q X m = R → (∀ a, hexIdx a ≠ m) →
      InUpperQuad h c d f R → ∃ j, HasHullWord (hexagon h c d f X) R (upperWord j) := by
    intro R m hRm hm hR
    have ne' := ne m hm
    rw [hRm] at ne'
    have edR := upper_edges hE (iF := 4) (by decide) (by decide) rfl rfl rfl rfl hR
      (ne' 5 2 (by decide))
    obtain ⟨r, hr, hb, ha⟩ := exists_hullWord hV edR ne'
    exact upper_word_of hr hb ha hR.1 hR.2.2.1
  exact ⟨lower_word_of hrL hbL haL hS.lower, up P 6 rfl (by decide) hS.upperP,
    up Q 7 rfl (by decide) hS.upperQ⟩

/-- Helper: the hull hexagon `O, C, D, X, F, H` is convex (counterclockwise), so the radial
words and the ray-order rule `sarea_pos_of_hullWord_lt` apply to it. -/
theorem convex_hexagon (hS : Placement h c d f L P Q X) : IsConvexPolygon (hexagon h c d f X) :=
  convex_of_edges (by norm_num) (hexagon_edges hS.anchors hS.top hS.topSq)

/-- The four capacity-one triangles of `atMostInside_one_CDX_XFH_OFH_DFH` as index triples of the hexagon:
`CDX, XFH, OFH, DFH`. -/
def capacityOneTriangles : List (Fin 6 × Fin 6 × Fin 6) :=
  [(1, 2, 3), (3, 4, 5), (0, 4, 5), (2, 4, 5)]

/-- The three preliminary tests for a word triple `(i, j, ℓ)` of `(L, P, Q)`: the two
upper words are not in the same sector of both diagonals `HD, CF`; no hull triangle contains all
three points; none of the four triangles of `atMostInside_one_CDX_XFH_OFH_DFH` contains two of them. -/
def prelimTest (i : Fin 4) (j l : Fin 18) : Bool :=
  let ws := [lowerWord i, upperWord j, upperWord l]
  !sameSector 5 1 2 4 (upperWord j) (upperWord l) &&
    (hullTriples 6).all (fun t => decide (insideCount ws t ≤ 2)) &&
    capacityOneTriangles.all (fun t => decide (insideCount ws t ≤ 1))

/-- The 202 word triples `(i, j, ℓ)`, `j ≤ ℓ`, that pass the preliminary tests (228 triples) and
have no conflict between the upper-pair rule `upperPairSign_sound` and the ray-order rule `sarea_pos_of_hullWord_lt` (26 conflicts).
With the four-way split of `(0, 8, 10)` by `sgn[XLP], sgn[FLP]` they give the 205 cells. -/
def topCapCases : List (Fin 4 × Fin 18 × Fin 18) :=
  (List.finRange 4).flatMap fun i => (List.finRange 18).flatMap fun j =>
    ((List.finRange 18).filter fun l =>
      decide (j ≤ l) && prelimTest i j l &&
        !upperPairConflict 5 1 2 4 (upperWord j) (upperWord l)).map
        fun l => (i, j, l)

/-- Under `f ≤ d`, the word triple of `(L, P, Q)` passes the three preliminary tests: the two upper
points are not in the same sector of both diagonals (`C1ZeroLower.sectors_of`, using `W ≤ 1` and
`s > 7/64`), no hull triangle contains all of `L, P, Q` (global C1 triangle capacity two), and no
triangle of `atMostInside_one_CDX_XFH_OFH_DFH` contains two of them. Exactly 228 triples with `j ≤ ℓ` pass. -/
theorem prelimTest_eq_true (hS : Placement h c d f L P Q X) (hfd : f ≤ d) {i : Fin 4} {j l : Fin 18}
    (hL : HasHullWord (hexagon h c d f X) L (lowerWord i))
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) :
    prelimTest i j l = true := by
  obtain ⟨k1, k2, k3, k4⟩ := atMostInside_one_CDX_XFH_OFH_DFH hS hfd
  exact prelim_of hS.comp hexIdx (by decide) (hexagon_idx h c d f L P Q X) (by decide) (by decide)
    (iF := 4) rfl rfl rfl rfl (by decide) hS.upperP hS.upperQ hL hP hQ capacityOneTriangles (by
      intro t ht
      simp only [capacityOneTriangles, List.mem_cons, List.not_mem_nil, or_false] at ht
      rcases ht with rfl | rfl | rfl | rfl
      exacts [⟨by decide, by decide, k1⟩, ⟨by decide, by decide, k2⟩, ⟨by decide, by decide, k3⟩,
        ⟨by decide, by decide, k4⟩])

/-! #### Helpers: the upper-pair rule -/

open Cover in
/-- Helper: an orientation from a negative product with a known orientation. -/
theorem orient_of_mul_neg {x y : ℝ} {a : Bool} (h : x * y < 0) (hy : OrientHolds a y) :
    OrientHolds (!a) x := by
  cases a <;> simp only [OrientHolds, Bool.not_false, Bool.not_true, ite_true, ite_false,
    Bool.false_eq_true] at hy ⊢ <;> nlinarith

open Cover in
/-- Helper: an orientation from a positive product with a known orientation. -/
theorem orient_of_mul_pos {x y : ℝ} {a : Bool} (h : 0 < x * y) (hy : OrientHolds a y) :
    OrientHolds a x := by
  cases a <;> simp only [OrientHolds, ite_true, ite_false, Bool.false_eq_true] at hy ⊢ <;>
    nlinarith

open Cover in
/-- Helper: `orient_of_mul_neg` with the known factor first. -/
theorem orient_of_mul_neg' {x y : ℝ} {a : Bool} (h : x * y < 0) (hx : OrientHolds a x) :
    OrientHolds (!a) y :=
  orient_of_mul_neg (by rwa [mul_comm]) hx

open Cover in
/-- Helper: opposite orientations give a negative product. -/
theorem mul_neg_of_orient {x y : ℝ} {a b : Bool} (hab : a ≠ b) (hx : OrientHolds a x)
    (hy : OrientHolds b y) : x * y < 0 := by
  cases a <;> cases b <;> simp only [ne_eq, not_true_eq_false] at hab <;>
    simp only [OrientHolds, ite_true, ite_false, Bool.false_eq_true] at hx hy <;> nlinarith

open Cover in
/-- Helper: an orientation as the truth value of positivity. -/
theorem orient_iff {b : Bool} {x : ℝ} (h : OrientHolds b x) : (0 < x ↔ b = true) := by
  cases b <;> simp only [OrientHolds, ite_true, ite_false, Bool.false_eq_true] at h ⊢
  · exact ⟨fun h' => by linarith, False.elim⟩
  · exact ⟨fun _ => trivial, fun _ => h⟩

open Cover C1ZeroLower in
/-- Helper (`upperPairSign_sound` for `HD`): if the diagonal `H → D` separates the upper pair,
`sgn[PQH] = -sgn[HDP]` and `sgn[PQD] = sgn[HDP]`. -/
theorem sep_HD (hA : C1Anchors h c d f) (ux : UpperPt h c d f P) (uy : UpperPt h c d f Q)
    {a1 a2 : Bool} (ha : a1 ≠ a2) (xHD : OrientHolds a1 (sarea (0, h) (1, d) P))
    (yHD : OrientHolds a2 (sarea (0, h) (1, d) Q)) :
    OrientHolds (!a1) (sarea P Q (0, h)) ∧ OrientHolds a1 (sarea P Q (1, d)) := by
  obtain ⟨k1, k2⟩ := sepHD_of hA ux uy (mul_neg_of_orient ha xHD yHD)
  exact ⟨orient_of_mul_neg k1 xHD, orient_of_mul_pos k2 xHD⟩

open Cover C1ZeroLower in
/-- Helper (`upperPairSign_sound` for `CF`): if the diagonal `C → F` separates the upper pair,
`sgn[PQC] = -sgn[CFP]` and `sgn[PQF] = sgn[CFP]`. -/
theorem sep_CF (hA : C1Anchors h c d f) (ux : UpperPt h c d f P) (uy : UpperPt h c d f Q)
    {b1 b2 : Bool} (hb : b1 ≠ b2) (xCF : OrientHolds b1 (sarea (c, 0) (f, 1) P))
    (yCF : OrientHolds b2 (sarea (c, 0) (f, 1) Q)) :
    OrientHolds (!b1) (sarea P Q (c, 0)) ∧ OrientHolds b1 (sarea P Q (f, 1)) := by
  obtain ⟨k1, k2⟩ := sepCF_of hA ux uy (mul_neg_of_orient hb xCF yCF)
  exact ⟨orient_of_mul_neg k1 xCF, orient_of_mul_pos k2 xCF⟩

open Cover C1ZeroLower in
/-- Helper (`OneCornerCompletion.isolates_of_mixed_pair`): if only `CF` separates the pair (common triangle
`HDF` or `HCD`), the isolated vertex is `F`, resp. `C`, and the signs at `H, D` are `xor a b₁`. -/
theorem only_CF (hA : C1Anchors h c d f) (ux : UpperPt h c d f P) (uy : UpperPt h c d f Q)
    (m : QuadMin h c d f P Q) (m' : QuadMin h c d f Q P) {a b1 b2 : Bool} (hb : b1 ≠ b2)
    (xHD : OrientHolds a (sarea (0, h) (1, d) P)) (yHD : OrientHolds a (sarea (0, h) (1, d) Q))
    (xCF : OrientHolds b1 (sarea (c, 0) (f, 1) P)) (yCF : OrientHolds b2 (sarea (c, 0) (f, 1) Q)) :
    OrientHolds (xor a b1) (sarea P Q (0, h)) ∧ OrientHolds (xor a b1) (sarea P Q (1, d)) := by
  have hs := mul_neg_of_orient hb xCF yCF
  obtain ⟨sC, sF⟩ := sep_CF hA ux uy hb xCF yCF
  cases a
  · simp only [OrientHolds, ite_false, Bool.false_eq_true] at xHD yHD
    obtain ⟨i1, i2, -⟩ := isoC_of hA ux uy m m' xHD yHD hs
    have t1 := orient_of_mul_neg' i1 sC
    have t2 := orient_of_mul_neg' i2 sC
    rw [Bool.not_not] at t1 t2
    rw [Bool.false_xor]
    exact ⟨t1, t2⟩
  · simp only [OrientHolds, ite_true] at xHD yHD
    obtain ⟨i1, i2, -⟩ := isoF_of hA ux uy m m' xHD yHD hs
    rw [Bool.true_xor]
    exact ⟨orient_of_mul_neg' i2 sF, orient_of_mul_neg' i1 sF⟩

open Cover C1ZeroLower in
/-- Helper (`OneCornerCompletion.isolates_of_mixed_pair`): if only `HD` separates the pair (common triangle
`HCF` or `CDF`), the isolated vertex is `H`, resp. `D`, and the signs at `C, F` are
`!(xor a₁ b)`. -/
theorem only_HD (hA : C1Anchors h c d f) (ux : UpperPt h c d f P) (uy : UpperPt h c d f Q)
    (m : QuadMin h c d f P Q) (m' : QuadMin h c d f Q P) {a1 a2 b : Bool} (ha : a1 ≠ a2)
    (xHD : OrientHolds a1 (sarea (0, h) (1, d) P)) (yHD : OrientHolds a2 (sarea (0, h) (1, d) Q))
    (xCF : OrientHolds b (sarea (c, 0) (f, 1) P)) (yCF : OrientHolds b (sarea (c, 0) (f, 1) Q)) :
    OrientHolds (!(xor a1 b)) (sarea P Q (c, 0)) ∧
      OrientHolds (!(xor a1 b)) (sarea P Q (f, 1)) := by
  have hs := mul_neg_of_orient ha xHD yHD
  obtain ⟨sH, sD⟩ := sep_HD hA ux uy ha xHD yHD
  cases b
  · simp only [OrientHolds, ite_false, Bool.false_eq_true] at xCF yCF
    obtain ⟨i1, i2, -⟩ := isoD_of hA ux uy m m' xCF yCF hs
    rw [Bool.xor_false]
    exact ⟨orient_of_mul_neg' i1 sD, orient_of_mul_neg' i2 sD⟩
  · simp only [OrientHolds, ite_true] at xCF yCF
    obtain ⟨i1, i2, -⟩ := isoH_of hA ux uy m m' xCF yCF hs
    have t1 := orient_of_mul_neg' i1 sH
    have t2 := orient_of_mul_neg' i2 sH
    rw [Bool.xor_true]
    exact ⟨t2, t1⟩

open Cover C1ZeroLower in
/-- Helper: the upper-pair rule `upperPairSign_sound` with the isolated-vertex table, in the case form of
`upperPairSign` (for a hexagon whose vertices `5, 1, 2, iF` are `H, C, D, F`): every forced sign of
`[PQV_v]` holds. -/
theorem upper_pair_orient (hA : C1Anchors h c d f) (ux : UpperPt h c d f P)
    (uy : UpperPt h c d f Q) (m : QuadMin h c d f P Q) (m' : QuadMin h c d f Q P)
    {V : Fin 6 → Point} {iF : Fin 6} (hH : V 5 = (0, h)) (hC : V 1 = (c, 0)) (hD : V 2 = (1, d))
    (hF : V iF = (f, 1)) {a1 a2 b1 b2 : Bool} (xHD : OrientHolds a1 (sarea (0, h) (1, d) P))
    (yHD : OrientHolds a2 (sarea (0, h) (1, d) Q)) (xCF : OrientHolds b1 (sarea (c, 0) (f, 1) P))
    (yCF : OrientHolds b2 (sarea (c, 0) (f, 1) Q)) {v : Fin 6} {b : Bool}
    (hcase : (v = 5 ∧ a1 ≠ a2 ∧ b = !a1) ∨ (v = 2 ∧ a1 ≠ a2 ∧ b = a1) ∨
      (v = 1 ∧ b1 ≠ b2 ∧ b = !b1) ∨ (v = iF ∧ b1 ≠ b2 ∧ b = b1) ∨
      ((v = 5 ∨ v = 2) ∧ a1 = a2 ∧ b1 ≠ b2 ∧ b = xor a1 b1) ∨
      ((v = 1 ∨ v = iF) ∧ b1 = b2 ∧ a1 ≠ a2 ∧ b = !(xor a1 b1))) :
    OrientHolds b (sarea P Q (V v)) := by
  rcases hcase with ⟨rfl, ha, rfl⟩ | ⟨rfl, ha, rfl⟩ | ⟨rfl, hb, rfl⟩ | ⟨rfl, hb, rfl⟩ |
    ⟨hv, rfl, hb, rfl⟩ | ⟨hv, rfl, ha, rfl⟩
  · rw [hH]; exact (sep_HD hA ux uy ha xHD yHD).1
  · rw [hD]; exact (sep_HD hA ux uy ha xHD yHD).2
  · rw [hC]; exact (sep_CF hA ux uy hb xCF yCF).1
  · rw [hF]; exact (sep_CF hA ux uy hb xCF yCF).2
  · obtain ⟨t1, t2⟩ := only_CF hA ux uy m m' hb xHD yHD xCF yCF
    rcases hv with rfl | rfl
    · rw [hH]; exact t1
    · rw [hD]; exact t2
  · obtain ⟨t1, t2⟩ := only_HD hA ux uy m m' ha xHD yHD xCF yCF
    rcases hv with rfl | rfl
    · rw [hC]; exact t1
    · rw [hF]; exact t2

/-- Helper: the case form of `upperPairSign 5 1 2 4` (the hexagon `O, C, D, X, F, H`): a forced
sign is one of the cases of the upper-pair rule and the isolated-vertex table. -/
theorem upperPairSign_cases (p q : HullWord 6) (v : Fin 6) (b : Bool)
    (hv : upperPairSign 5 1 2 4 p q v = some b) :
    (v = 5 ∧ hullSign p 5 2 ≠ hullSign q 5 2 ∧ b = !hullSign p 5 2) ∨
    (v = 2 ∧ hullSign p 5 2 ≠ hullSign q 5 2 ∧ b = hullSign p 5 2) ∨
    (v = 1 ∧ hullSign p 1 4 ≠ hullSign q 1 4 ∧ b = !hullSign p 1 4) ∨
    (v = 4 ∧ hullSign p 1 4 ≠ hullSign q 1 4 ∧ b = hullSign p 1 4) ∨
    ((v = 5 ∨ v = 2) ∧ hullSign p 5 2 = hullSign q 5 2 ∧ hullSign p 1 4 ≠ hullSign q 1 4 ∧
      b = xor (hullSign p 5 2) (hullSign p 1 4)) ∨
    ((v = 1 ∨ v = 4) ∧ hullSign p 1 4 = hullSign q 1 4 ∧ hullSign p 5 2 ≠ hullSign q 5 2 ∧
      b = !(xor (hullSign p 5 2) (hullSign p 1 4))) := by
  simp only [upperPairSign] at hv
  generalize hullSign p 5 2 = a1 at hv ⊢
  generalize hullSign q 5 2 = a2 at hv ⊢
  generalize hullSign p 1 4 = b1 at hv ⊢
  generalize hullSign q 1 4 = b2 at hv ⊢
  cases a1 <;> cases a2 <;> cases b1 <;> cases b2 <;> fin_cases v <;> simp at hv ⊢ <;>
    simp [hv]

/-- The upper-pair signs: for the two upper points, every sign of `[V_v P Q]`, `v ∈ {H, C, D, F}`,
fixed by `upperPairSign` holds. If a diagonal `A → B` separates the pair, `sgn[PQA] = -sgn[ABP]` and
`sgn[PQB] = sgn[ABP]`; if just one diagonal separates it, `OneCornerCompletion.isolates_of_mixed_pair` (with
`W ≤ 1`) isolates the middle cyclic vertex of the common triangle (`HCD → C`, `HDF → F`, `HCF → H`,
`CDF → D`). With `sarea_pos_of_hullWord_lt` this leaves 202 of the 228 triples (`topCapCases`). -/
theorem upperPairSign_sound (hS : Placement h c d f L P Q X) {j l : Fin 18}
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) {v : Fin 6} {b : Bool}
    (hv : upperPairSign 5 1 2 4 (upperWord j) (upperWord l) v = some b) :
    (0 < sarea (hexagon h c d f X v) P Q ↔ b = true) := by
  have H := hS.comp
  have hidx := hexagon_idx h c d f L P Q X
  have neP := hex_ne_of hS.min hexIdx (by decide) hidx (m := 6) (by decide)
  have neQ := hex_ne_of hS.min hexIdx (by decide) hidx (m := 7) (by decide)
  have xHD : Cover.OrientHolds (hullSign (upperWord j) 5 2) (sarea (0, h) (1, d) P) :=
    hP.orient (by decide) (neP 5 2 (by decide))
  have xCF : Cover.OrientHolds (hullSign (upperWord j) 1 4) (sarea (c, 0) (f, 1) P) :=
    hP.orient (by decide) (neP 1 4 (by decide))
  have yHD : Cover.OrientHolds (hullSign (upperWord l) 5 2) (sarea (0, h) (1, d) Q) :=
    hQ.orient (by decide) (neQ 5 2 (by decide))
  have yCF : Cover.OrientHolds (hullSign (upperWord l) 1 4) (sarea (c, 0) (f, 1) Q) :=
    hQ.orient (by decide) (neQ 1 4 (by decide))
  have m : C1ZeroLower.QuadMin h c d f P Q := quadMin_of H (a := 1) (b := 2) (by decide)
  have m' : C1ZeroLower.QuadMin h c d f Q P := quadMin_of H (a := 2) (b := 1) (by decide)
  have := upper_pair_orient hS.anchors (upperPt_of hS.upperP) (upperPt_of hS.upperQ) m m'
    (V := hexagon h c d f X) (iF := 4) rfl rfl rfl rfl xHD yHD xCF yCF
    (upperPairSign_cases _ _ _ _ hv)
  rw [← sarea_cycle (hexagon h c d f X v) P Q]
  exact orient_iff this

/-! ### The certificate package -/

/-! ### The certificate cells -/

section

open C1OneLowerHex (cfg9 inner zeta)

/-- The words of the model `C1OneLowerHex.Model` are the words `lowerWord`, `upperWord`. -/
theorem lowerW_eq : ∀ i : Fin 4, ∀ a b : Fin 6,
    hullSign (lowerWord i) a b = C1OneLowerHex.Model.hsign (C1OneLowerHex.Model.lowerW.getD i []) a b := by
  decide

theorem upperTop_eq : ∀ j : Fin 18, ∀ a b : Fin 6, hullSign (upperWord j) a b =
    C1OneLowerHex.Model.hsign (C1OneLowerHex.Model.upperTop.getD j []) a b := by
  decide

theorem lowerW_entry : ∀ i : Fin 4, ∀ v : Fin 6,
    (C1OneLowerHex.Model.lowerW.getD i []).getD v 0 = lowerWord i v := by
  decide

theorem upperTop_entry : ∀ j : Fin 18, ∀ v : Fin 6,
    (C1OneLowerHex.Model.upperTop.getD j []).getD v 0 = upperWord j v := by
  decide

theorem lowerWord_bnd : ∀ i : Fin 4, ∀ v, 1 ≤ lowerWord i v ∧ lowerWord i v ≤ 4 := by decide

theorem upperWord_bnd : ∀ j : Fin 18, ∀ v, 1 ≤ upperWord j v ∧ upperWord j v ≤ 4 := by decide

theorem upperPair_eq : ∀ j l : Fin 18, ∀ v : Fin 6,
    C1OneLowerHex.Model.upperPair false (C1OneLowerHex.Model.upperTop.getD j [])
      (C1OneLowerHex.Model.upperTop.getD l []) v =
      upperPairSign 5 1 2 4 (upperWord j) (upperWord l) v := by
  decide +kernel

theorem mem_topCapCases {i : Fin 4} {j l : Fin 18} : (i, j, l) ∈ topCapCases ↔
    j ≤ l ∧ prelimTest i j l = true ∧
      upperPairConflict 5 1 2 4 (upperWord j) (upperWord l) = false := by
  simp [topCapCases, List.mem_flatMap, List.mem_filter, List.mem_map, and_assoc]

theorem keys0 : ∀ j l : Fin 18, j ≤ l → prelimTest 0 j l = true →
    upperPairConflict 5 1 2 4 (upperWord j) (upperWord l) = false →
    ((0 : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesTopCap.caseKeys := by
  decide +kernel

theorem keys1 : ∀ j l : Fin 18, j ≤ l → prelimTest 1 j l = true →
    upperPairConflict 5 1 2 4 (upperWord j) (upperWord l) = false →
    ((1 : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesTopCap.caseKeys := by
  decide +kernel

theorem keys2 : ∀ j l : Fin 18, j ≤ l → prelimTest 2 j l = true →
    upperPairConflict 5 1 2 4 (upperWord j) (upperWord l) = false →
    ((2 : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesTopCap.caseKeys := by
  decide +kernel

theorem keys3 : ∀ j l : Fin 18, j ≤ l → prelimTest 3 j l = true →
    upperPairConflict 5 1 2 4 (upperWord j) (upperWord l) = false →
    ((3 : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesTopCap.caseKeys := by
  decide +kernel

/-- Every triple of `topCapCases` is a case of the certificate package
(`C1OneLowerHex.TreesTopCap.caseKeys`). -/
theorem cases_keys {i : Fin 4} {j l : Fin 18} (hc : (i, j, l) ∈ topCapCases) :
    ((i : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesTopCap.caseKeys := by
  obtain ⟨h1, h2, h3⟩ := mem_topCapCases.1 hc
  fin_cases i
  exacts [keys0 j l h1 h2 h3, keys1 j l h1 h2 h3, keys2 j l h1 h2 h3, keys3 j l h1 h2 h3]

theorem ptEval_top (h c d f : ℝ) (L P Q X : Point) (n : ℕ) (hn : n < 9) :
    Cover.ptEval (zeta h c d f X L P Q) (C1OneLowerHex.Model.pt false) n =
      cfg9 (hexagon h c d f X) L P Q n := by
  interval_cases n <;> simp [Cover.ptEval, C1OneLowerHex.Model.pt, C1OneLowerHex.Model.ptTop,
    zeta, cfg9, hexagon, ptO, ptC, ptD, ptF, ptH]

variable {h c d f : ℝ} {L P Q X : Point}

theorem Placement.areaOK (hS : Placement h c d f L P Q X) :
    Package.AreaOK (cfg9 (hexagon h c d f X) L P Q) :=
  C1OneLowerHex.areaOK_cfg9 hS.min _ _ _ _ ![0, 1, 2, 8, 3, 4, 5, 6, 7] (by decide)
    (by intro a; fin_cases a <;> rfl)

theorem Placement.factors (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    ∀ e ∈ C1OneLowerHex.Model.factors false ++ [C1OneLowerHex.Model.wCost],
      0 ≤ e.eval (zeta h c d f X L P Q) := by
  obtain ⟨-, -, -, a4, a5, a6, a7⟩ := placement_anchor_bounds hS
  obtain ⟨b1, b2, -⟩ := top_cap_point_bounds hS
  obtain ⟨c1, c2⟩ := f_d_bounds_of_le hS hfd
  obtain ⟨d1, d2, d3, d4, d5⟩ := lower_point_bounds hS
  obtain ⟨⟨p1, p2, p3, p4⟩, ⟨q1, q2, q3, q4⟩⟩ := upper_point_bounds hS
  obtain ⟨w1, -⟩ := upperQuadArea_bounds hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨-, x1, -, x2⟩ := hS.topSq
  unfold upperQuadArea at w1
  simp only [C1OneLowerHex.Model.factors, Bool.false_eq_true, ite_false,
    C1OneLowerHex.Model.factorsTop, C1OneLowerHex.Model.wCost, List.cons_append, List.nil_append,
    List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true,
    Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_one, Cert.Expr.eval_v,
    Cert.Expr.eval_k, zeta]
  push_cast
  and_intros <;> linarith

end

/-- The certificate package: under `f ≤ d`, no placement has its word triple `(i, j, ℓ)` among the
202 remaining triples (`topCapCases`; the triple `(0, 8, 10)` is split four ways by the signs of
`[XLP]`, `[FLP]`). On each cell of the kernel-checked tree a fixed positive combination of products
of the 28 affine factors (nonnegative by `placement_anchor_bounds`, `top_cap_point_bounds`, `f_d_bounds_of_le`, `lower_point_bounds`, `upper_point_bounds`, `upperQuadArea_bounds`;
`Placement.factors`) and of the actual-triangle costs (`W - 8s`, and signed areas minus `s, 3s, ρ`
according to the certified occupancy) is nonnegative, while its bound on the unit cube is negative.
-/
theorem topCapCases_false (hS : Placement h c d f L P Q X) (hfd : f ≤ d) {i : Fin 4} {j l : Fin 18}
    (hcase : (i, j, l) ∈ topCapCases)
    (hL : HasHullWord (hexagon h c d f X) L (lowerWord i))
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) : False := by
  have hkey := cases_keys hcase
  obtain ⟨T, hT⟩ := C1OneLowerHex.TreesTopCap.trees_ok _ hkey
  simp only at hT
  have hV := convex_hexagon hS
  have H := hS.areaOK
  refine C1OneLowerHex.cell_false hT (C1OneLowerHex.zeta_mem hS.anchors hS.topSq
    (lower_sq hS.anchors hS.lower) (upper_sq hS.anchors hS.upperP)
    (upper_sq hS.anchors hS.upperQ)) (ptEval_top h c d f L P Q X) H (hS.factors hfd) ?_
  refine C1OneLowerHex.base_holds H hV ?_ ?_ ?_
  · intro m
    fin_cases m
    · exact C1OneLowerHex.hword_of hL (lowerW_eq i) L P Q
    · exact C1OneLowerHex.hword_of hP (upperTop_eq j) L P Q
    · exact C1OneLowerHex.hword_of hQ (upperTop_eq l) L P Q
  · intro m m' hmm
    fin_cases m <;> fin_cases m' <;> simp at hmm
    · exact C1OneLowerHex.hray_of hV hL hP (lowerWord_bnd i) (upperWord_bnd j) (lowerW_entry i)
        (upperTop_entry j) L P Q
    · exact C1OneLowerHex.hray_of hV hL hQ (lowerWord_bnd i) (upperWord_bnd l) (lowerW_entry i)
        (upperTop_entry l) L P Q
    · exact C1OneLowerHex.hray_of hV hP hL (upperWord_bnd j) (lowerWord_bnd i) (upperTop_entry j)
        (lowerW_entry i) L P Q
    · exact C1OneLowerHex.hray_of hV hP hQ (upperWord_bnd j) (upperWord_bnd l) (upperTop_entry j)
        (upperTop_entry l) L P Q
    · exact C1OneLowerHex.hray_of hV hQ hL (upperWord_bnd l) (lowerWord_bnd i) (upperTop_entry l)
        (lowerW_entry i) L P Q
    · exact C1OneLowerHex.hray_of hV hQ hP (upperWord_bnd l) (upperWord_bnd j) (upperTop_entry l)
        (upperTop_entry j) L P Q
  · intro v hv b hb
    have hb' := (upperPair_eq j l ⟨v, hv⟩).symm.trans hb
    have hiff := upperPairSign_sound hS hP hQ hb'
    have hne := H.ne_zero (a := v) (b := 7) (e := 8) (by omega) (by norm_num)
      (by norm_num) (by omega) (by norm_num) (by omega)
    rw [C1OneLowerHex.cfg9_hex _ _ _ _ v hv] at hne ⊢
    exact C1OneLowerHex.orient_of_iff hiff hne

end

/-- There is no competitive C1 configuration whose four free points are `L ∈ OHC`, `P, Q ∈ HCDF` and
`X` in the exterior cap beyond `DF` (all containments strict, `X` possibly on a side of the square).
No order `f ≤ d` is assumed: the proof transposes first. -/
theorem topCap_placement_false {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) : False := by
  -- transpose first so that `f ≤ d`
  suffices key : ∀ {h c d f : ℝ} {L P Q X : Point}, Placement h c d f L P Q X → f ≤ d → False by
    rcases le_total f d with hfd | hdf
    · exact key hS hfd
    · exact key (placement_swap hS) hdf
  intro h c d f L P Q X hS hfd
  obtain ⟨⟨i, hL⟩, ⟨j, hP⟩, ⟨l, hQ⟩⟩ := exists_hexagon_words hS
  have swapPQ : Placement h c d f L Q P X := by
    refine ⟨hS.anchors, ?_, hS.lower, hS.upperQ, hS.upperP, hS.top, hS.topSq⟩
    have e : c1Config h c d f L Q P X = c1Config h c d f L P Q X ∘ Equiv.swap (6 : Fin 9) 7 := by
      funext k; fin_cases k <;> rfl
    rw [e, minTriangleArea_comp_perm]; exact hS.min
  have go : ∀ {P Q : Point} {j l : Fin 18}, Placement h c d f L P Q X →
      HasHullWord (hexagon h c d f X) P (upperWord j) →
      HasHullWord (hexagon h c d f X) Q (upperWord l) → j ≤ l → False := by
    intro P Q j l hS hP hQ hjl
    have hpre := prelimTest_eq_true hS hfd hL hP hQ
    have hV := convex_hexagon hS
    have hnc : upperPairConflict 5 1 2 4 (upperWord j) (upperWord l) = false := by
      unfold upperPairConflict
      rw [List.any_eq_false]
      intro v _
      rcases hs : upperPairSign 5 1 2 4 (upperWord j) (upperWord l) v with _ | b
      · simp
      · have hiff := upperPairSign_sound hS hP hQ hs
        simp only [Bool.and_eq_true, bne_iff_ne, ne_eq, not_and]
        intro hne
        rcases lt_or_gt_of_ne hne with hlt | hgt
        · have := sarea_pos_of_hullWord_lt hV hP hQ (upperWord_bnd j) (upperWord_bnd l) hlt
          rw [hiff.1 this]
          simp [hlt]
        · have h1 := sarea_pos_of_hullWord_lt hV hQ hP (upperWord_bnd l) (upperWord_bnd j) hgt
          have h2 : ¬ 0 < sarea (hexagon h c d f X v) P Q := by
            rw [sarea_swap₂₃] at h1; linarith
          have hb : b = false := by
            cases b
            · rfl
            · exact absurd (hiff.2 rfl) h2
          rw [hb]
          simp [not_lt.2 hgt.le]
    have hcase : (i, j, l) ∈ topCapCases := by
      simp [topCapCases, List.mem_flatMap, List.mem_filter, List.mem_map, hjl, hpre, hnc]
    exact topCapCases_false hS hfd hcase hL hP hQ
  rcases le_total j l with hjl | hlj
  · exact go hS hP hQ hjl
  · exact go swapPQ hQ hP hlj

end Heilbronn.Nine.C1OneLowerTopCap
