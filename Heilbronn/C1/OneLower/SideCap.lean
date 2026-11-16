module

public import Heilbronn.C1.OneLower.TopCap
public import Heilbronn.C1.OneLower.SideCapTrees

/-! # The one-lower C1 hexagon with a single side-cap point (`hand/C1_ONE_LOWER_SIDE_CAP.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses
Theorem 1 for the occupancy with exactly one exterior point in the left cap, and (by reflection)
in the right cap. Corollary 2 restates the part of that assembly with at most one exterior point.
Section 4 (the strengthened occupancy rule, `eq9`) is cited by `C1_ONE_LOWER_TOP_TRIANGLE.md`.

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1` and minimum triangle area at
least `A₀`; the free points `L ∈ OHC`, `P, Q ∈ HCDF` and `X = (g, k)` in the left cap
`HF(0,1) \ HF`, in the configuration `c1Config h c d f L P Q X`. No relation between `f` and `d`
is imposed (lines 38-39), so that the right cap follows by transposition. Thresholds
`s = 8/73`, `ρ = 49/60` (local notations). The full hull is the hexagon `O, C, D, F, X, H`.

**Results.**
* `theorem1` (`C1_ONE_LOWER_SIDE_CAP:Theorem1`), with the reflection `transpose_right`.
* `corollary2` (`C1_ONE_LOWER_SIDE_CAP:Corollary2`): a competitive one-lower configuration has at
  least two free points outside the anchor pentagon. FLAG: its proof's bound "`W ≥ 10s`".
* `eq1`–`eq6`: the bounds of Sections 1–2; `claim_cap1` (four capacity-one triangles);
  `claim_cover` (the 153 cells); `eq9` (strengthened occupancy costs); `eq10` (the certificate
  package).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1OneLowerSideCap

open Heilbronn.C1
open Heilbronn.C1OneLowerTopCap (HullWord hullSign hullInside HasHullWord hullTriples insideCount
  AtMostInside sameSector upperPairConflict ConvexPolygon)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### The placement -/

/-- The hull hexagon `V₀, …, V₅ = O, C, D, F, X, H` (Section 3). -/
def hexagon (h c d f : ℝ) (X : Point) : Fin 6 → Point := ![ptO, ptC c, ptD d, ptF f, X, ptH h]

/-- The 18 upper words for the hexagon `O, C, D, F, X, H` (edge tests of `HCDF`, now with
`F = V₃`: `(5,1), (1,2), (2,3), (3,5)`), indexed from zero as in the table of Section 3. The
lower words are those of the top-cap note, `C1OneLowerTopCap.lowerWord`. -/
def upperWord : Fin 18 → HullWord 6 :=
  ![![1, 1, 4, 4, 3, 2], ![1, 2, 4, 3, 3, 2], ![1, 3, 4, 3, 2, 2], ![2, 1, 1, 4, 4, 3],
    ![2, 1, 2, 4, 3, 3], ![2, 1, 3, 4, 3, 2], ![2, 2, 1, 3, 4, 3], ![2, 2, 2, 3, 3, 3],
    ![2, 2, 3, 3, 3, 2], ![2, 3, 2, 3, 2, 3], ![2, 3, 3, 3, 2, 2], ![3, 2, 1, 2, 4, 3],
    ![3, 2, 2, 2, 3, 3], ![3, 2, 3, 2, 3, 2], ![3, 3, 2, 2, 2, 3], ![3, 3, 3, 2, 2, 2],
    ![4, 3, 2, 2, 1, 3], ![4, 3, 3, 2, 1, 2]]

/-- The placement of Theorem 1 with the left cap: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`
(no order between `f` and `d`); minimum triangle area at least `A₀`; `L` strictly inside `OHC`;
`P, Q` strictly inside `HCDF`; `X = (g, k)` in the left cap beyond `HF` (possibly on a side of the
square). The configuration is `c1Config h c d f L P Q X`. -/
structure Placement (h c d f : ℝ) (L P Q X : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)
  lower : InLower h c L
  upperP : InUpperQuad h c d f P
  upperQ : InUpperQuad h c d f Q
  left : InLeftCap f h X
  leftSq : X ∈ unitSquare


/-- Helper: transposition maps the right cap beyond `CD` to the left cap of the transposed
anchors (`[F'H'X'] = -[DCX] = [CDX]`). -/
theorem right_swap {c d : ℝ} {X : Point} (hX : InRightCap c d X) : InLeftCap d c X.swap := by
  simp only [InRightCap, InLeftCap, sarea, ptC, ptD, ptF, ptH, Prod.fst_swap, Prod.snd_swap]
    at hX ⊢
  linarith

/-- Helper (the reflection in Theorem 1): transposing the square, `(x, y) ↦ (y, x)`, maps a
placement with `X` in the right cap `CD(1,0)` and parameters `(h, c, d, f)` to a left-cap
placement with parameters `(c, h, f, d)`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 22-23. -/
theorem transpose_right {h c d f : ℝ} {L P Q X : Point} (hA : C1Anchors h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (hL : InLower h c L)
    (hP : InUpperQuad h c d f P) (hQ : InUpperQuad h c d f Q) (hXsq : X ∈ unitSquare)
    (hX : InRightCap c d X) : Placement c h f d L.swap P.swap Q.swap X.swap :=
  ⟨C1OneLowerTopCap.anchors_swap hA, C1OneLowerTopCap.min_swap hmin,
    C1OneLowerTopCap.lower_swap hL, C1OneLowerTopCap.upper_swap hP,
    C1OneLowerTopCap.upper_swap hQ, right_swap hX, C1OneLowerTopCap.sq_swap hXsq⟩


/-! ### Sections 1–2: bounds -/

section

variable {h c d f : ℝ} {L P Q X : Point}

/-- Helper: the placement as a zero-lower model configuration (`C1ZeroLower.Comp`). -/
theorem Placement.comp (hS : Placement h c d f L P Q X) : C1ZeroLower.Comp h c d f ![L, P, Q, X] :=
  C1OneLowerTopCap.comp_of hS.anchors hS.min hS.lower hS.upperP hS.upperQ hS.leftSq

/-- Helper: the raw left-cap areas: `r = [HFX] = f(k-h) - (1-h)g > s` and `[HOX] = hg > s`. -/
theorem left_raw (hS : Placement h c d f L P Q X) :
    s < f * (X.2 - h) - (1 - h) * X.1 ∧ s < h * X.1 := by
  have e1 : s < |sarea (ptF f) (ptH h) X| := C1OneLowerTopCap.area_gt hS.min 3 4 8
  have e2 : s < |sarea (ptH h) ptO X| := C1OneLowerTopCap.area_gt hS.min 4 0 8
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  rw [abs_of_neg hS.left] at e1
  rw [abs_of_nonneg (by
    simp only [sarea, ptO, ptH]; nlinarith [mul_nonneg (show (0:ℝ) ≤ h by linarith)
      hS.leftSq.1])] at e2
  simp only [sarea, ptO, ptF, ptH] at e1 e2
  constructor <;> linarith

/-- Helper: the left-cap point is off the side `OH` (`hg > s`). -/
theorem left_x_pos (hS : Placement h c d f L P Q X) : 0 < X.1 := by
  obtain ⟨-, e2⟩ := left_raw hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  by_contra hn; push Not at hn
  nlinarith [mul_nonneg (show (0:ℝ) ≤ h by linarith) (neg_nonneg.2 hn)]

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(1)`). From `r = [HFX] = f(k-h) - (1-h)g ≥ s` and
`[OXH] = hg ≥ s`: `hf(k-h) ≥ s` and `fh(1-h) ≥ s` (using only `k ≤ 1`; no occupancy
hypothesis). `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 46-63. -/
theorem eq1 (hS : Placement h c d f L P Q X) :
    s ≤ h * f * (X.2 - h) ∧ s ≤ f * h * (1 - h) := by
  obtain ⟨e1, e2⟩ := left_raw hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : (0:ℝ) ≤ h := by linarith
  have h1 : (0:ℝ) ≤ 1 - h := by linarith
  have q1 := mul_le_mul_of_nonneg_left e1.le h0
  have q2 := mul_le_mul_of_nonneg_left e2.le h1
  have k6 : s ≤ h * f * (X.2 - h) := by nlinarith
  refine ⟨k6, ?_⟩
  nlinarith [mul_nonneg (mul_nonneg h0 hf.le) (sub_nonneg.2 hS.leftSq.2.2.2)]

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(2)`). With `s ≤ [CDF] = 1 - c + d(c-f) ≤ 1 - f`: `f ≤ 1 - s`,
`f ≥ 4s`, `h(1-h) ≥ 8/65 > 6/49` and `1/7 < h < 6/7`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines
64-81. Uses: C1_ONE_LOWER_SIDE_CAP:(1). -/
theorem eq2 (hS : Placement h c d f L P Q X) :
    f ≤ 1 - s ∧ 4 * s ≤ f ∧ 8 / 65 ≤ h * (1 - h) ∧ 1 / 7 < h ∧ h < 6 / 7 := by
  obtain ⟨-, k1⟩ := eq1 hS
  obtain ⟨-, -, -, a4, -, -, -⟩ := C1OneLowerTopCap.base_raw hS.anchors hS.min hS.lower
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hf1 : f ≤ 1 - s := by
    nlinarith [mul_nonneg (sub_nonneg.2 (hdh.trans hh.le)) (sub_nonneg.2 hfc)]
  have h0 : (0:ℝ) ≤ h := by linarith
  have h1 : (0:ℝ) ≤ 1 - h := by linarith
  have hq : h * (1 - h) ≤ 1 / 4 := by nlinarith [sq_nonneg (h - 1 / 2)]
  have hhh : 0 ≤ h * (1 - h) := mul_nonneg h0 h1
  have f4 : 4 * s ≤ f := by nlinarith [mul_le_mul_of_nonneg_left hq hf.le]
  have hh3 : 8 / 65 ≤ h * (1 - h) := by
    by_contra hn; push Not at hn
    nlinarith [mul_le_mul_of_nonneg_right hf1 hhh]
  refine ⟨hf1, f4, hh3, ?_, ?_⟩
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg (sub_nonneg.2 hn) (show (0:ℝ) ≤ 6 / 7 - h by linarith)]
  · by_contra hn; push Not at hn
    nlinarith [mul_nonneg (sub_nonneg.2 hn) (show (0:ℝ) ≤ h - 1 / 7 by linarith)]

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(3)`). `h ≥ 3s`, `c ≥ f ≥ 4s`, `d ≥ s`, `d ≤ h`, and
`g ≥ s/h > 7s/6`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 83-90.
Uses: C1_ONE_LOWER_SIDE_CAP:(2). -/
theorem eq3 (hS : Placement h c d f L P Q X) :
    3 * s ≤ h ∧ 4 * s ≤ c ∧ 4 * s ≤ f ∧ s ≤ d ∧ d ≤ h ∧ s ≤ h * X.1 ∧ 7 * s / 6 < X.1 := by
  obtain ⟨-, a2, -, -, a5, a6, a7⟩ := C1OneLowerTopCap.base_raw hS.anchors hS.min hS.lower
  obtain ⟨-, f4, -, -, h67⟩ := eq2 hS
  obtain ⟨-, e2⟩ := left_raw hS
  have hx := left_x_pos hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by linarith
  refine ⟨?_, by linarith, f4, ?_, hdh, e2.le, ?_⟩
  · nlinarith [mul_nonneg h0.le (sub_nonneg.2 hc.le)]
  · nlinarith [mul_nonneg hd.le (sub_nonneg.2 hc.le)]
  · nlinarith [mul_lt_mul_of_pos_right h67 hx]

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(4)`). The cap area is also `r = (1-h)(f-g) - f(1-k)`; hence
`f - g ≥ s/(1-h) ≥ 8/49`, `k - h ≥ s/f ≥ 8/65`, `g ≤ 1 - 2s` and `k ≥ 4s`.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 92-107. Uses: C1_ONE_LOWER_SIDE_CAP:(2),
C1_ONE_LOWER_SIDE_CAP:(3). -/
theorem eq4 (hS : Placement h c d f L P Q X) :
    sarea (ptH h) (ptF f) X = (1 - h) * (f - X.1) - f * (1 - X.2) ∧
      8 / 49 ≤ f - X.1 ∧ 8 / 65 ≤ X.2 - h ∧ X.1 ≤ 1 - 2 * s ∧ 4 * s ≤ X.2 := by
  obtain ⟨e1, -⟩ := left_raw hS
  obtain ⟨hf1, -, -, -, -⟩ := eq2 hS
  obtain ⟨hh3, -, -, -, -, -, -⟩ := eq3 hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.leftSq
  have h1 : (0:ℝ) ≤ 1 - h := by linarith
  have k1 : s < (1 - h) * (f - X.1) := by nlinarith [mul_nonneg hf.le (sub_nonneg.2 y1)]
  have k2 : s < f * (X.2 - h) := by nlinarith [mul_nonneg h1 x0]
  have fx : 0 < f - X.1 := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg h1 (neg_nonneg.2 hn)]
  have yh : 0 < X.2 - h := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg hf.le (neg_nonneg.2 hn)]
  have g1 : 8 / 49 ≤ f - X.1 := by
    nlinarith [mul_le_mul_of_nonneg_right (show 1 - h ≤ 49 / 73 by linarith) fx.le]
  have g2 : 8 / 65 ≤ X.2 - h := by
    nlinarith [mul_le_mul_of_nonneg_right hf1 yh.le]
  refine ⟨?_, g1, g2, by linarith, by linarith⟩
  simp only [sarea, ptH, ptF]; ring

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(5)`). Interior-point bounds (Section 2 of the top-cap note
with `h < 6/7`): `ℓ_x ≥ 7s/6`, `ℓ_y ≥ s`, `c - ℓ_x ≥ 7s/3`, `h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1 - s`;
`7s/6 ≤ p_x, q_x ≤ 1 - s`; `s ≤ p_y, q_y ≤ 1 - s`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines
109-129. Uses: C1_ONE_LOWER_TOP_CAP:(8), C1_ONE_LOWER_TOP_CAP:(9), C1_ONE_LOWER_SIDE_CAP:(2). -/
theorem eq5 (hS : Placement h c d f L P Q X) :
    (7 * s / 6 ≤ L.1 ∧ s ≤ L.2 ∧ 7 * s / 3 ≤ c - L.1 ∧ 2 * s ≤ h - L.2 ∧ L.1 + L.2 ≤ 1 - s) ∧
      (7 * s / 6 ≤ P.1 ∧ P.1 ≤ 1 - s ∧ s ≤ P.2 ∧ P.2 ≤ 1 - s) ∧
      (7 * s / 6 ≤ Q.1 ∧ Q.1 ≤ 1 - s ∧ s ≤ Q.2 ∧ Q.2 ≤ 1 - s) := by
  have H := hS.comp
  obtain ⟨-, -, -, -, a5, a6, a7⟩ := C1OneLowerTopCap.base_raw hS.anchors hS.min hS.lower
  obtain ⟨l1, l2, l3, l4, l5⟩ := C1OneLowerTopCap.lower_bounds hS.anchors hS.min hS.lower
  obtain ⟨-, -, -, -, h67⟩ := eq2 hS
  obtain ⟨p1, p2, p3, p4⟩ := C1OneLowerTopCap.upper_bounds H 1 hS.upperP
  obtain ⟨q1, q2, q3, q4⟩ := C1OneLowerTopCap.upper_bounds H 2 hS.upperQ
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by linarith
  -- `h r_x > s` for `R ∈ {L, P, Q}` and `h < 6/7` give `r_x > 7s/6`
  have xb : ∀ x : ℝ, 0 ≤ x → s < h * x → 7 * s / 6 ≤ x := fun x x0 hx => by
    nlinarith [mul_le_mul_of_nonneg_right h67.le x0]
  have eP : s < |sarea (ptH h) ptO P| := C1OneLowerTopCap.area_gt hS.min 4 0 6
  have eQ : s < |sarea (ptH h) ptO Q| := C1OneLowerTopCap.area_gt hS.min 4 0 7
  have sP := (C1OneLowerTopCap.upper_sq hS.anchors hS.upperP).1
  have sQ := (C1OneLowerTopCap.upper_sq hS.anchors hS.upperQ).1
  rw [abs_of_nonneg (by simp only [sarea, ptO, ptH]; nlinarith)] at eP eQ
  simp only [sarea, ptO, ptH] at eP eQ
  refine ⟨⟨xb _ (by linarith) a5, l2, ?_, l4, l5⟩, ⟨xb _ sP (by linarith), p3, p2, p4⟩,
    ⟨xb _ sQ (by linarith), q3, q2, q4⟩⟩
  -- `h(c - ℓ_x) = [CHL] + cℓ_y > 2s`
  have hcl : 0 ≤ c - L.1 := by linarith
  nlinarith [mul_le_mul_of_nonneg_right h67.le hcl]

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(6)`). The six points `H, C, D, F, P, Q` give
`8s ≤ W = 2 area(HCDF) = 1 - (h-d)(c-f) ≤ 1`. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 131-136.
Uses: QUADRILATERAL_HULL:Theorem1. -/
theorem eq6 (hS : Placement h c d f L P Q X) :
    8 * s ≤ upperQuadArea h c d f ∧ upperQuadArea h c d f ≤ 1 :=
  C1OneLowerTopCap.quad_W hS.comp hS.upperP hS.upperQ

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:claim-cap1`). The actual triangles `OFH` (`hf ≤ 390/511`),
`CDF` (`≤ 1 - 4s`), `FXH` (`≤ f(1-h) ≤ 1 - 3s`) and `OXH` (`hg < hf`) have doubled area below
`ρ`, hence capacity at most one (two-interior-point bound `Ks > ρ`): none contains two free
points. `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 138-150.
Uses: C1_ONE_LOWER_SIDE_CAP:(2), C1_ONE_LOWER_SIDE_CAP:(3), CORNER_FAMILIES:TwoInteriorPointLemma.
-/
theorem claim_cap1 (hS : Placement h c d f L P Q X) :
    AtMostInside 1 ptO (ptF f) (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 (ptC c) (ptD d) (ptF f) (freePt L P Q X) ∧
      AtMostInside 1 (ptF f) X (ptH h) (freePt L P Q X) ∧
      AtMostInside 1 ptO X (ptH h) (freePt L P Q X) := by
  have H := hS.comp
  obtain ⟨e1, -⟩ := left_raw hS
  obtain ⟨hf1, f4, -, -, h67⟩ := eq2 hS
  obtain ⟨hh3, -, -, -, -, -, -⟩ := eq3 hS
  obtain ⟨-, g1, -, -, -⟩ := eq4 hS
  have hx := left_x_pos hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.leftSq
  have h0 : 0 < h := by linarith
  have hf67 : h * f < ρ := by nlinarith [mul_le_mul_of_nonneg_left hf1 h0.le,
    mul_le_mul_of_nonneg_right h67.le hf.le]
  have oO : 0 < sarea ptO (ptF f) (ptH h) := by simp only [sarea, ptO, ptF, ptH]; nlinarith
  have oC : 0 < sarea (ptC c) (ptD d) (ptF f) := by
    simp only [sarea, ptC, ptD, ptF]; nlinarith [mul_nonneg hd.le (sub_nonneg.2 hfc)]
  have oF : 0 < sarea (ptF f) X (ptH h) := by simp only [sarea, ptF, ptH]; nlinarith
  have oX : 0 < sarea ptO X (ptH h) := by simp only [sarea, ptO, ptH]; nlinarith
  refine ⟨?_, ?_, ?_, ?_⟩
  · refine C1OneLowerTopCap.cap_one H (a := 0) (b := 3) (e := 4) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num) ?_
    show |sarea ptO (ptF f) (ptH h)| < ρ
    rw [abs_of_pos oO]; simp only [sarea, ptO, ptF, ptH]; nlinarith
  · refine C1OneLowerTopCap.cap_one H (a := 1) (b := 2) (e := 3) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num) ?_
    show |sarea (ptC c) (ptD d) (ptF f)| < ρ
    rw [abs_of_pos oC]; simp only [sarea, ptC, ptD, ptF]
    nlinarith [mul_nonneg (sub_nonneg.2 (hdh.trans hh.le)) (sub_nonneg.2 hfc)]
  · refine C1OneLowerTopCap.cap_one H (a := 3) (b := 8) (e := 4) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num) ?_
    show |sarea (ptF f) X (ptH h)| < ρ
    rw [abs_of_pos oF]; simp only [sarea, ptF, ptH]
    nlinarith [mul_nonneg hf.le (sub_nonneg.2 y1), mul_nonneg (sub_nonneg.2 hh.le) x0]
  · refine C1OneLowerTopCap.cap_one H (a := 0) (b := 8) (e := 4) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num) (by norm_num) ?_
    show |sarea ptO X (ptH h)| < ρ
    rw [abs_of_pos oX]; simp only [sarea, ptO, ptH]
    nlinarith [mul_le_mul_of_nonneg_left (show X.1 ≤ f by linarith) h0.le]

end

/-! ### Section 3: the 153 radial cells -/

/-- Helper: the edge tests of the hull hexagon `O, C, D, F, X, H` for a point `X = (g, k)` of the
square in the left cap with `g > 0`: every vertex is strictly to the left of every edge not
containing it. -/
theorem hexagon_edges {h c d f : ℝ} (hA : C1Anchors h c d f) {X : Point} (hX : InLeftCap f h X)
    (hXsq : X ∈ unitSquare) (hx : 0 < X.1) :
    ∀ i k : Fin 6, k ≠ i → k ≠ i + 1 →
      0 < sarea (hexagon h c d f X i) (hexagon h c d f X (i + 1)) (hexagon h c d f X k) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨hx0, hx1, hy0, hy1⟩ := hXsq
  obtain ⟨x, y⟩ := X
  simp only [InLeftCap, sarea, ptF, ptH] at hX
  simp only at hx0 hx1 hy0 hy1 hx
  have h1f : 0 < 1 - f := by linarith
  have h1d : 0 < 1 - d := by linarith
  have h1h : 0 < 1 - h := by linarith
  have h1c : 0 < 1 - c := by linarith
  have h0c : 0 < c := by linarith
  have h0h : 0 < h := by linarith
  have h1y : 0 ≤ 1 - y := by linarith
  have hcf : 0 ≤ c - f := by linarith
  have hfx : 0 < f - x := by nlinarith [mul_nonneg hf.le h1y]
  have hyh : 0 < y - h := by nlinarith [mul_nonneg h1h.le hx0]
  have hy : 0 < y := by linarith
  have hcx : 0 < c - x := by linarith
  have h1x : 0 < 1 - x := by linarith
  have hyd : 0 ≤ y - d := by linarith
  have hhd : 0 ≤ h - d := by linarith
  intro i k h1 h2
  fin_cases i <;> fin_cases k <;> simp [hexagon, sarea, ptO, ptC, ptD, ptF, ptH] at h1 h2 ⊢
  · exact mul_pos h0c hd
  · exact h0c
  · exact mul_pos h0c hy
  · exact mul_pos h0c h0h
  · exact mul_pos hd h0c
  · linarith [mul_nonneg hd.le hcf]
  · linarith [mul_pos hd hcx, mul_pos h1c hy]
  · linarith [mul_pos h1c h0h, mul_pos hd h0c]
  · linarith [mul_pos h1f hd]
  · linarith [mul_pos h1d h1c, mul_pos h1f hd]
  · nlinarith [mul_nonneg (mul_nonneg h1d.le hf.le) h1y, mul_nonneg (mul_nonneg h1h.le h1f.le) h1y]
  · linarith [mul_nonneg hf.le hhd]
  · linarith [mul_pos h0h hfx]
  · linarith [mul_nonneg h1y hcf]
  · linarith [mul_nonneg h1y h1f.le, mul_pos hfx h1d]
  · linarith
  · linarith [mul_pos hx h0h]
  · linarith [mul_pos hx hy, mul_pos hyh hcx]
  · linarith [mul_pos hyh h1x, mul_nonneg hx.le hyd]
  · linarith
  · exact mul_pos h0h h0c
  · exact h0h
  · exact mul_pos h0h hf
  · exact mul_pos h0h hx

/-- Helper (implicit in the manuscript: "Number the convex hexagon cyclically as
`O, C, D, F, X, H`", lines 154-157): the hull hexagon is convex (counterclockwise). -/
theorem convex_hexagon {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) :
    ConvexPolygon (hexagon h c d f X) := by
  have hm : A₀ ≤ triangleArea ptO (ptH h) X := area_of_le_min hS.min 0 4 8
  rw [triangleArea_eq] at hm
  have hx : 0 < X.1 := by
    rcases hS.leftSq.1.lt_or_eq with hx | hx
    · exact hx
    · exfalso
      have : sarea ptO (ptH h) X = 0 := by simp only [sarea, ptO, ptH]; rw [← hx]; ring
      rw [this, abs_zero] at hm
      linarith [A₀_pos]
  exact C1OneLowerTopCap.convex_of_edges (by norm_num)
    (hexagon_edges hS.anchors hS.left hS.leftSq hx)

/-- The four capacity-one triangles of Section 2 as index triples of the hexagon
`O, C, D, F, X, H`: `OFH, CDF, FXH, OXH`. -/
def capacityOneTriangles : List (Fin 6 × Fin 6 × Fin 6) :=
  [(0, 3, 5), (1, 2, 3), (3, 4, 5), (0, 4, 5)]

/-- The preliminary tests of Section 3 for a word triple `(i, j, ℓ)` of `(L, P, Q)`: not in the
same sector of both diagonals (`H, C, D, F = V₅, V₁, V₂, V₃`); no hull triangle contains all
three points; no triangle of `capacityOneTriangles` contains two of them (189 triples with
`j ≤ ℓ`). -/
def prelimTest (i : Fin 4) (j l : Fin 18) : Bool :=
  let ws := [C1OneLowerTopCap.lowerWord i, upperWord j, upperWord l]
  !sameSector 5 1 2 3 (upperWord j) (upperWord l) &&
    (hullTriples 6).all (fun t => decide (insideCount ws t ≤ 2)) &&
    capacityOneTriangles.all (fun t => decide (insideCount ws t ≤ 1))

/-- The 153 cells of Section 3: the word triples `(i, j, ℓ)`, `j ≤ ℓ`, passing `prelimTest`
(189) without a conflict between the upper-pair rule and the ray-order rule (36 conflicts). No
further split is used. -/
def sideCapCases : List (Fin 4 × Fin 18 × Fin 18) :=
  (List.finRange 4).flatMap fun i => (List.finRange 18).flatMap fun j =>
    ((List.finRange 18).filter fun l =>
      decide (j ≤ l) && prelimTest i j l &&
        !upperPairConflict 5 1 2 3 (upperWord j) (upperWord l)).map
        fun l => (i, j, l)

/-! #### Helpers for the cover -/

/-- The hexagon vertices as configuration indices: `O, C, D, F, X, H = 0, 1, 2, 3, 8, 4`. -/
def hexIdx : Fin 6 → Fin 9 := ![0, 1, 2, 3, 8, 4]

/-- Helper: the hexagon vertices are configuration points. -/
theorem hexagon_idx (h c d f : ℝ) (L P Q X : Point) (a : Fin 6) :
    hexagon h c d f X a = c1Config h c d f L P Q X (hexIdx a) := by
  fin_cases a <;> rfl

/-- Helper: the words of (7) passing the four edge tests of `HCDF` with `F = V₃`
(`r₃, r₅ ≥ 2`), for `r₀ = 1`, are upper words (kernel enumeration). -/
theorem upper_cover₁ : ∀ a1 a2 a4 : Fin 4, ∀ a3 a5 : Fin 3,
    C1OneLowerTopCap.HullAntisymm
      (C1OneLowerTopCap.mkW 1 (a1.val + 1) (a2.val + 1) (a3.val + 2) (a4.val + 1) (a5.val + 2)) →
    ∃ j : Fin 18, ∀ k, C1OneLowerTopCap.mkW 1 (a1.val + 1) (a2.val + 1) (a3.val + 2) (a4.val + 1)
      (a5.val + 2) k = upperWord j k := by
  decide +kernel

/-- Helper: `upper_cover₁` for `r₀ = 2`. -/
theorem upper_cover₂ : ∀ a1 a2 a4 : Fin 4, ∀ a3 a5 : Fin 3,
    C1OneLowerTopCap.HullAntisymm
      (C1OneLowerTopCap.mkW 2 (a1.val + 1) (a2.val + 1) (a3.val + 2) (a4.val + 1) (a5.val + 2)) →
    ∃ j : Fin 18, ∀ k, C1OneLowerTopCap.mkW 2 (a1.val + 1) (a2.val + 1) (a3.val + 2) (a4.val + 1)
      (a5.val + 2) k = upperWord j k := by
  decide +kernel

/-- Helper: `upper_cover₁` for `r₀ = 3`. -/
theorem upper_cover₃ : ∀ a1 a2 a4 : Fin 4, ∀ a3 a5 : Fin 3,
    C1OneLowerTopCap.HullAntisymm
      (C1OneLowerTopCap.mkW 3 (a1.val + 1) (a2.val + 1) (a3.val + 2) (a4.val + 1) (a5.val + 2)) →
    ∃ j : Fin 18, ∀ k, C1OneLowerTopCap.mkW 3 (a1.val + 1) (a2.val + 1) (a3.val + 2) (a4.val + 1)
      (a5.val + 2) k = upperWord j k := by
  decide +kernel

/-- Helper: `upper_cover₁` for `r₀ = 4`. -/
theorem upper_cover₄ : ∀ a1 a2 a4 : Fin 4, ∀ a3 a5 : Fin 3,
    C1OneLowerTopCap.HullAntisymm
      (C1OneLowerTopCap.mkW 4 (a1.val + 1) (a2.val + 1) (a3.val + 2) (a4.val + 1) (a5.val + 2)) →
    ∃ j : Fin 18, ∀ k, C1OneLowerTopCap.mkW 4 (a1.val + 1) (a2.val + 1) (a3.val + 2) (a4.val + 1)
      (a5.val + 2) k = upperWord j k := by
  decide +kernel

/-- Helper: a point of `HCDF` with a radial word for the hexagon `O, C, D, F, X, H` has one of the
18 upper words (the edge tests `(5, 1)` and `(3, 5)` give `r₅, r₃ ≥ 2`). -/
theorem upper_word_of {V : Fin 6 → Point} {R : Point} {r : HullWord 6} (hr : HasHullWord V R r)
    (hb : ∀ i, 1 ≤ r i ∧ r i ≤ 4) (ha : C1OneLowerTopCap.HullAntisymm r)
    (h51 : 0 < sarea (V 5) (V 1) R) (h35 : 0 < sarea (V 3) (V 5) R) :
    ∃ j, HasHullWord V R (upperWord j) := by
  have s51 : hullSign r 5 1 = true := (hr 5 1 (by decide)).1 h51
  have s35 : hullSign r 3 5 = true := (hr 3 5 (by decide)).1 h35
  have e51 : ((1 : Fin 6) - 5).val = 2 := by decide
  have e35 : ((5 : Fin 6) - 3).val = 2 := by decide
  rw [hullSign, decide_eq_true_eq, e51] at s51
  rw [hullSign, decide_eq_true_eq, e35] at s35
  have b0 := hb 0; have b1 := hb 1; have b2 := hb 2
  have b3 := hb 3; have b4 := hb 4; have b5 := hb 5
  have e : r = C1OneLowerTopCap.mkW (r 0) ((⟨r 1 - 1, by omega⟩ : Fin 4).val + 1)
      ((⟨r 2 - 1, by omega⟩ : Fin 4).val + 1) ((⟨r 3 - 2, by omega⟩ : Fin 3).val + 2)
      ((⟨r 4 - 1, by omega⟩ : Fin 4).val + 1) ((⟨r 5 - 2, by omega⟩ : Fin 3).val + 2) := by
    funext k; fin_cases k <;> simp [C1OneLowerTopCap.mkW] <;> omega
  have key : ∃ j : Fin 18, ∀ k, r k = upperWord j k := by
    have ha' : C1OneLowerTopCap.HullAntisymm (C1OneLowerTopCap.mkW (r 0)
        ((⟨r 1 - 1, by omega⟩ : Fin 4).val + 1) ((⟨r 2 - 1, by omega⟩ : Fin 4).val + 1)
        ((⟨r 3 - 2, by omega⟩ : Fin 3).val + 2) ((⟨r 4 - 1, by omega⟩ : Fin 4).val + 1)
        ((⟨r 5 - 2, by omega⟩ : Fin 3).val + 2)) := by
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

/-- Helper: the entries of the upper words are in `{1, …, 4}`. -/
theorem upperWord_bounds : ∀ j : Fin 18, ∀ i : Fin 6, 1 ≤ upperWord j i ∧ upperWord j i ≤ 4 := by
  decide

/-- Helper: the case form of `upperPairSign 5 1 2 3` (the hexagon `O, C, D, F, X, H`): a forced
sign is one of the cases of the upper-pair rule and the isolated-vertex table, with `F = V₃`. -/
theorem upperPairSign_cases (p q : HullWord 6) (v : Fin 6) (b : Bool)
    (hv : C1OneLowerTopCap.upperPairSign 5 1 2 3 p q v = some b) :
    (v = 5 ∧ hullSign p 5 2 ≠ hullSign q 5 2 ∧ b = !hullSign p 5 2) ∨
    (v = 2 ∧ hullSign p 5 2 ≠ hullSign q 5 2 ∧ b = hullSign p 5 2) ∨
    (v = 1 ∧ hullSign p 1 3 ≠ hullSign q 1 3 ∧ b = !hullSign p 1 3) ∨
    (v = 3 ∧ hullSign p 1 3 ≠ hullSign q 1 3 ∧ b = hullSign p 1 3) ∨
    ((v = 5 ∨ v = 2) ∧ hullSign p 5 2 = hullSign q 5 2 ∧ hullSign p 1 3 ≠ hullSign q 1 3 ∧
      b = xor (hullSign p 5 2) (hullSign p 1 3)) ∨
    ((v = 1 ∨ v = 3) ∧ hullSign p 1 3 = hullSign q 1 3 ∧ hullSign p 5 2 ≠ hullSign q 5 2 ∧
      b = !(xor (hullSign p 5 2) (hullSign p 1 3))) := by
  simp only [C1OneLowerTopCap.upperPairSign] at hv
  generalize hullSign p 5 2 = a1 at hv ⊢
  generalize hullSign q 5 2 = a2 at hv ⊢
  generalize hullSign p 1 3 = b1 at hv ⊢
  generalize hullSign q 1 3 = b2 at hv ⊢
  cases a1 <;> cases a2 <;> cases b1 <;> cases b2 <;> fin_cases v <;> simp at hv ⊢ <;>
    simp [hv]

open Cover in
/-- Helper (the conflict test): if every forced upper-pair sign of `[PQV_v]` holds, the upper-pair
rule does not conflict with the ray order (8) (`C1OneLowerTopCap.eq14`). -/
theorem no_conflict {V : Fin 6 → Point} (hV : ConvexPolygon V) {iF : Fin 6} {R S : Point}
    {p q : HullWord 6} (hR : HasHullWord V R p) (hS : HasHullWord V S q)
    (hbp : ∀ i, 1 ≤ p i ∧ p i ≤ 4) (hbq : ∀ i, 1 ≤ q i ∧ q i ≤ 4)
    (hsign : ∀ v b, C1OneLowerTopCap.upperPairSign 5 1 2 iF p q v = some b →
      OrientHolds b (sarea R S (V v))) :
    upperPairConflict 5 1 2 iF p q = false := by
  unfold upperPairConflict
  rw [List.any_eq_false]
  intro v _
  rcases hs : C1OneLowerTopCap.upperPairSign 5 1 2 iF p q v with _ | b
  · simp
  · have ho := hsign v b hs
    rw [sarea_cycle] at ho
    simp only [Bool.and_eq_true, bne_iff_ne, ne_eq, not_and]
    intro hne
    rcases lt_or_gt_of_ne hne with hlt | hgt
    · have := C1OneLowerTopCap.eq14 hV hR hS hbp hbq hlt
      rw [(C1OneLowerTopCap.orient_iff ho).1 this]
      simp [hlt]
    · have h1 := C1OneLowerTopCap.eq14 hV hS hR hbq hbp hgt
      have h2 : ¬ 0 < sarea (V v) R S := by rw [sarea_swap₂₃] at h1; linarith
      have hb : b = false := by
        cases b
        · rfl
        · exact absurd ((C1OneLowerTopCap.orient_iff ho).2 rfl) h2
      rw [hb]
      simp [not_lt.2 hgt.le]

/-- Helper: the preliminary tests are symmetric in the two upper words. -/
theorem prelimTest_comm (i : Fin 4) (j l : Fin 18) : prelimTest i j l = prelimTest i l j := by
  have e1 : ∀ t, insideCount [C1OneLowerTopCap.lowerWord i, upperWord j, upperWord l] t =
      insideCount [C1OneLowerTopCap.lowerWord i, upperWord l, upperWord j] t := fun t => by
    simp only [insideCount, List.countP_cons, List.countP_nil]; omega
  have e2 : sameSector 5 1 2 3 (upperWord j) (upperWord l) =
      sameSector 5 1 2 3 (upperWord l) (upperWord j) := by
    unfold sameSector
    cases hullSign (upperWord j) 5 2 <;> cases hullSign (upperWord l) 5 2 <;>
      cases hullSign (upperWord j) 1 3 <;> cases hullSign (upperWord l) 1 3 <;> rfl
  simp only [prelimTest, e1, e2]

/-- Helper: membership in the 153 cells. -/
theorem mem_sideCapCases {i : Fin 4} {j l : Fin 18} : (i, j, l) ∈ sideCapCases ↔
    j ≤ l ∧ prelimTest i j l = true ∧
      upperPairConflict 5 1 2 3 (upperWord j) (upperWord l) = false := by
  simp [sideCapCases, List.mem_flatMap, List.mem_filter, List.mem_map, and_assoc]

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:claim-cover`). Every placement is covered by the 153 cells:
after relabelling `P, Q`, the words of `L, P, Q` for the hexagon `O, C, D, F, X, H` (definition
and complement relation (7), 26 words) are a lower word `i` and upper words `j ≤ ℓ` with
`(i, j, ℓ) ∈ sideCapCases`. The exclusions are: a hull triangle containing all three interior
points (capacity two), a triangle of `claim_cap1` containing two, both upper points in the same
sector of both diagonals (Theorem 2 of `ONE_CORNER_COMPLETION.md`, with (6)), and a conflict of the
upper-pair signs (the rules (15) and the isolated-vertex table of the top-cap note, with `F = V₃`)
with the ray order (8). `hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 152-220.
Uses: C1_ONE_LOWER_TOP_CAP:(12)-(13), C1_ONE_LOWER_TOP_CAP:(14), C1_ONE_LOWER_TOP_CAP:(15),
ONE_CORNER:GlobalC1OccupancyCorollary, ONE_CORNER_COMPLETION:Theorem2,
ONE_CORNER_COMPLETION:Theorem3, C1_ONE_LOWER_SIDE_CAP:claim-cap1, C1_ONE_LOWER_SIDE_CAP:(6). -/
theorem claim_cover {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) :
    ∃ i j l, (i, j, l) ∈ sideCapCases ∧
      HasHullWord (hexagon h c d f X) L (C1OneLowerTopCap.lowerWord i) ∧
      ((HasHullWord (hexagon h c d f X) P (upperWord j) ∧
          HasHullWord (hexagon h c d f X) Q (upperWord l)) ∨
        (HasHullWord (hexagon h c d f X) Q (upperWord j) ∧
          HasHullWord (hexagon h c d f X) P (upperWord l))) := by
  have H := hS.comp
  have hE := hexagon_edges hS.anchors hS.left hS.leftSq (left_x_pos hS)
  have hV := convex_hexagon hS
  have hidx := hexagon_idx h c d f L P Q X
  have ne : ∀ m : Fin 9, (∀ a, hexIdx a ≠ m) → ∀ i j : Fin 6, i ≠ j →
      sarea (hexagon h c d f X i) (hexagon h c d f X j) (c1Config h c d f L P Q X m) ≠ 0 :=
    fun m hm => C1OneLowerTopCap.hex_ne_of hS.min hexIdx (by decide) hidx hm
  -- the words
  have edL := C1OneLowerTopCap.edges_of_inTriangle hE (a := 0) (b := 1) (e := 5) (by decide)
    (by decide) (by decide) hS.lower
  obtain ⟨rL, hrL, hbL, haL⟩ := C1OneLowerTopCap.exists_hullWord hV edL (ne 5 (by decide))
  obtain ⟨i, hL⟩ := C1OneLowerTopCap.lower_word_of hrL hbL haL hS.lower
  have up : ∀ (R : Point) (m : Fin 9), c1Config h c d f L P Q X m = R → (∀ a, hexIdx a ≠ m) →
      InUpperQuad h c d f R → ∃ j, HasHullWord (hexagon h c d f X) R (upperWord j) := by
    intro R m hRm hm hR
    have ne' := ne m hm
    rw [hRm] at ne'
    have edR := C1OneLowerTopCap.upper_edges hE (iF := 3) (by decide) (by decide) rfl rfl rfl rfl
      hR (ne' 5 2 (by decide))
    obtain ⟨r, hr, hb, ha⟩ := C1OneLowerTopCap.exists_hullWord hV edR ne'
    exact upper_word_of hr hb ha hR.1 hR.2.2.2
  obtain ⟨j0, hP⟩ := up P 6 rfl (by decide) hS.upperP
  obtain ⟨l0, hQ⟩ := up Q 7 rfl (by decide) hS.upperQ
  -- the preliminary tests
  obtain ⟨k1, k2, k3, k4⟩ := claim_cap1 hS
  have pre : prelimTest i j0 l0 = true :=
    C1OneLowerTopCap.prelim_of H hexIdx (by decide) hidx (by decide) (by decide) (iF := 3) rfl rfl
      rfl rfl (by decide) hS.upperP hS.upperQ hL hP hQ capacityOneTriangles (by
        intro t ht
        simp only [capacityOneTriangles, List.mem_cons, List.not_mem_nil, or_false] at ht
        rcases ht with rfl | rfl | rfl | rfl
        exacts [⟨by decide, by decide, k1⟩, ⟨by decide, by decide, k2⟩,
          ⟨by decide, by decide, k3⟩, ⟨by decide, by decide, k4⟩])
  -- the upper-pair signs, in both orders
  have neP := ne 6 (by decide)
  have neQ := ne 7 (by decide)
  have xHD : Cover.OrientHolds (hullSign (upperWord j0) 5 2) (sarea (0, h) (1, d) P) :=
    hP.orient (by decide) (neP 5 2 (by decide))
  have xCF : Cover.OrientHolds (hullSign (upperWord j0) 1 3) (sarea (c, 0) (f, 1) P) :=
    hP.orient (by decide) (neP 1 3 (by decide))
  have yHD : Cover.OrientHolds (hullSign (upperWord l0) 5 2) (sarea (0, h) (1, d) Q) :=
    hQ.orient (by decide) (neQ 5 2 (by decide))
  have yCF : Cover.OrientHolds (hullSign (upperWord l0) 1 3) (sarea (c, 0) (f, 1) Q) :=
    hQ.orient (by decide) (neQ 1 3 (by decide))
  have m : C1ZeroLower.QuadMin h c d f P Q :=
    C1OneLowerTopCap.quadMin_of H (a := 1) (b := 2) (by decide)
  have m' : C1ZeroLower.QuadMin h c d f Q P :=
    C1OneLowerTopCap.quadMin_of H (a := 2) (b := 1) (by decide)
  have uP := C1OneLowerTopCap.upperPt_of hS.upperP
  have uQ := C1OneLowerTopCap.upperPt_of hS.upperQ
  have nc := no_conflict hV hP hQ (upperWord_bounds j0) (upperWord_bounds l0) fun v b hv =>
    C1OneLowerTopCap.upper_pair_orient hS.anchors uP uQ m m' (V := hexagon h c d f X) (iF := 3)
      rfl rfl rfl rfl xHD yHD xCF yCF (upperPairSign_cases _ _ _ _ hv)
  have nc' := no_conflict hV hQ hP (upperWord_bounds l0) (upperWord_bounds j0) fun v b hv =>
    C1OneLowerTopCap.upper_pair_orient hS.anchors uQ uP m' m (V := hexagon h c d f X) (iF := 3)
      rfl rfl rfl rfl yHD xHD yCF xCF (upperPairSign_cases _ _ _ _ hv)
  rcases le_total j0 l0 with hjl | hjl
  · exact ⟨i, j0, l0, mem_sideCapCases.2 ⟨hjl, pre, nc⟩, hL, Or.inl ⟨hP, hQ⟩⟩
  · refine ⟨i, l0, j0, mem_sideCapCases.2 ⟨hjl, ?_, nc'⟩, hL, Or.inr ⟨hQ, hP⟩⟩
    rw [prelimTest_comm]; exact pre

/-! ### Sections 4–5: strengthened costs and the certificate package -/

/-- Helper (elementary subdivision): a triangle of configuration points with a further
configuration point strictly inside, in either orientation, has doubled area at least `6A₀`. -/
theorem one_inside {P : Fin 9 → Point}
    (ar : ∀ x y z : Fin 9, x ≠ y → y ≠ z → x ≠ z → 2 * A₀ ≤ |sarea (P x) (P y) (P z)|)
    {a b e j : Fin 9} (hab : a ≠ b) (hbe : b ≠ e) (hae : a ≠ e) (ja : j ≠ a) (jb : j ≠ b)
    (je : j ≠ e) (hin : InsideTri (P j) (P a) (P b) (P e)) :
    6 * A₀ ≤ |sarea (P a) (P b) (P e)| := by
  rcases hin with ⟨i1, i2, i3⟩ | ⟨i1, i2, i3⟩
  · have q1 := ar a b j hab (Ne.symm jb) (Ne.symm ja)
    have q2 := ar b e j hbe (Ne.symm je) (Ne.symm jb)
    have q3 := ar e a j (Ne.symm hae) (Ne.symm ja) (Ne.symm je)
    have := sarea_add_sarea_add_sarea (P a) (P b) (P e) (P j)
    rw [abs_of_pos i1] at q1; rw [abs_of_pos i2] at q2; rw [abs_of_pos i3] at q3
    rw [abs_of_pos (by linarith)]; linarith
  · have q4 := ar a e j hae (Ne.symm je) (Ne.symm ja)
    have q5 := ar e b j (Ne.symm hbe) (Ne.symm jb) (Ne.symm je)
    have q6 := ar b a j (Ne.symm hab) (Ne.symm ja) (Ne.symm jb)
    have := sarea_add_sarea_add_sarea (P a) (P e) (P b) (P j)
    have sw := sarea_swap₂₃ (P a) (P b) (P e)
    rw [abs_of_pos i1] at q4; rw [abs_of_pos i2] at q5; rw [abs_of_pos i3] at q6
    rw [abs_of_neg (by linarith)]; linarith

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(9)`). The strengthened occupancy costs: in a configuration
of minimum triangle area at least `A₀`, an actual triangle strictly containing `k ≤ 2` further
configuration points (in either orientation; in the packages they are certified by three known
edge signs) has doubled area at least `s, 3s, ρ` for `k = 0, 1, 2` (`occupancyBound`): by the
area threshold, elementary subdivision, or the two-interior-point triangle theorem.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 250-286. Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq9 {P : Fin 9 → Point} (hmin : A₀ ≤ minTriangleArea P) {a b e : Fin 9} (hab : a ≠ b)
    (hbe : b ≠ e) (hae : a ≠ e) (S : Finset (Fin 9))
    (hS : ∀ j ∈ S, j ≠ a ∧ j ≠ b ∧ j ≠ e ∧ InsideTri (P j) (P a) (P b) (P e)) (hk : S.card ≤ 2) :
    occupancyBound S.card ≤ |sarea (P a) (P b) (P e)| := by
  have ar : ∀ x y z : Fin 9, x ≠ y → y ≠ z → x ≠ z → 2 * A₀ ≤ |sarea (P x) (P y) (P z)| :=
    fun x y z h1 h2 h3 => by
      have := area_of_le_min hmin x y z h1 h2 h3
      rw [triangleArea_eq] at this; linarith
  have t := C1ZeroLower.two_A₀.1
  interval_cases hc : S.card
  · norm_num [occupancyBound]; linarith [ar a b e hab hbe hae]
  · obtain ⟨j, hj⟩ := Finset.card_eq_one.1 hc
    obtain ⟨ja, jb, je, hin⟩ := hS j (by rw [hj]; exact Finset.mem_singleton_self j)
    have := one_inside ar hab hbe hae ja jb je hin
    norm_num [occupancyBound]; linarith
  · obtain ⟨j1, j2, hne, hj⟩ := Finset.card_eq_two.1 hc
    obtain ⟨a1, b1, e1, h1⟩ := hS j1 (by rw [hj]; simp)
    obtain ⟨a2, b2, e2, h2⟩ := hS j2 (by rw [hj]; simp)
    have hι : Function.Injective ![a, b, e, j1, j2] := by
      intro x y hxy
      fin_cases x <;> fin_cases y <;> simp at hxy <;>
        first | rfl | exact absurd hxy ‹_› | exact absurd hxy.symm ‹_›
    have hm : A₀ ≤ minTriangleArea ![P a, P b, P e, P j1, P j2] := by
      refine le_minTriangleArea (by norm_num) _ fun x y w hxy hyw => ?_
      have ez : ∀ z : Fin 5, ![P a, P b, P e, P j1, P j2] z = P (![a, b, e, j1, j2] z) := by
        intro z; fin_cases z <;> rfl
      rw [ez, ez, ez]
      exact area_of_le_min hmin _ _ _ (hι.ne hxy.ne) (hι.ne hyw.ne) (hι.ne (hxy.trans hyw).ne)
    have := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ h1 h2 A₀ A₀_pos hm
    rw [triangleArea_eq] at this
    norm_num [occupancyBound]
    linarith [C1ZeroLower.rho_lt]

/-! ### The certificate cells -/

section

open C1OneLowerHex (cfg9 inner zeta)

theorem upperSide_eq : ∀ j : Fin 18, ∀ a b : Fin 6, hullSign (upperWord j) a b =
    C1OneLowerHex.Model.hsign (C1OneLowerHex.Model.upperSide.getD j []) a b := by
  decide +kernel

theorem upperSide_entry : ∀ j : Fin 18, ∀ v : Fin 6,
    (C1OneLowerHex.Model.upperSide.getD j []).getD v 0 = upperWord j v := by
  decide +kernel

theorem upperPairSide_eq : ∀ j l : Fin 18, ∀ v : Fin 6,
    C1OneLowerHex.Model.upperPair true (C1OneLowerHex.Model.upperSide.getD j [])
      (C1OneLowerHex.Model.upperSide.getD l []) v =
      C1OneLowerTopCap.upperPairSign 5 1 2 3 (upperWord j) (upperWord l) v := by
  decide +kernel

theorem keys0 : ∀ j l : Fin 18, j ≤ l → prelimTest 0 j l = true →
    upperPairConflict 5 1 2 3 (upperWord j) (upperWord l) = false →
    ((0 : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesSideCap.caseKeys := by
  decide +kernel

theorem keys1 : ∀ j l : Fin 18, j ≤ l → prelimTest 1 j l = true →
    upperPairConflict 5 1 2 3 (upperWord j) (upperWord l) = false →
    ((1 : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesSideCap.caseKeys := by
  decide +kernel

theorem keys2 : ∀ j l : Fin 18, j ≤ l → prelimTest 2 j l = true →
    upperPairConflict 5 1 2 3 (upperWord j) (upperWord l) = false →
    ((2 : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesSideCap.caseKeys := by
  decide +kernel

theorem keys3 : ∀ j l : Fin 18, j ≤ l → prelimTest 3 j l = true →
    upperPairConflict 5 1 2 3 (upperWord j) (upperWord l) = false →
    ((3 : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesSideCap.caseKeys := by
  decide +kernel

/-- The cells of the note are cases of the certificate package. -/
theorem cases_keys {i : Fin 4} {j l : Fin 18} (hc : (i, j, l) ∈ sideCapCases) :
    ((i : ℕ), (j : ℕ), (l : ℕ)) ∈ C1OneLowerHex.TreesSideCap.caseKeys := by
  obtain ⟨h1, h2, h3⟩ := mem_sideCapCases.1 hc
  fin_cases i
  exacts [keys0 j l h1 h2 h3, keys1 j l h1 h2 h3, keys2 j l h1 h2 h3, keys3 j l h1 h2 h3]

theorem ptEval_side (h c d f : ℝ) (L P Q X : Point) (n : ℕ) (hn : n < 9) :
    Cover.ptEval (zeta h c d f X L P Q) (C1OneLowerHex.Model.pt true) n =
      cfg9 (hexagon h c d f X) L P Q n := by
  interval_cases n <;> simp [Cover.ptEval, C1OneLowerHex.Model.pt, C1OneLowerHex.Model.ptSide,
    zeta, cfg9, hexagon, ptO, ptC, ptD, ptF, ptH]

variable {h c d f : ℝ} {L P Q X : Point}

theorem Placement.areaOK (hS : Placement h c d f L P Q X) :
    C1OneLower.AreaOK (cfg9 (hexagon h c d f X) L P Q) :=
  C1OneLowerHex.areaOK_cfg9 hS.min _ _ _ _ ![0, 1, 2, 3, 8, 4, 5, 6, 7] (by decide)
    (by intro a; fin_cases a <;> rfl)

theorem Placement.factors (hS : Placement h c d f L P Q X) :
    ∀ e ∈ C1OneLowerHex.Model.factors true ++ [C1OneLowerHex.Model.wCost],
      0 ≤ e.eval (zeta h c d f X L P Q) := by
  obtain ⟨a1, a2, -, a4, a5⟩ := eq2 hS
  obtain ⟨b1, b2, b3, b4, b5, -, b7⟩ := eq3 hS
  obtain ⟨-, c2, c3, c4, c5⟩ := eq4 hS
  obtain ⟨⟨l1, l2, l3, l4, l5⟩, ⟨p1, p2, p3, p4⟩, ⟨q1, q2, q3, q4⟩⟩ := eq5 hS
  obtain ⟨w1, -⟩ := eq6 hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨-, x1, -, x2⟩ := hS.leftSq
  unfold upperQuadArea at w1
  simp only [C1OneLowerHex.Model.factors, ite_true,
    C1OneLowerHex.Model.factorsSide, C1OneLowerHex.Model.wCost, List.cons_append, List.nil_append,
    List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true,
    Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_one, Cert.Expr.eval_v,
    Cert.Expr.eval_k, zeta]
  push_cast
  and_intros <;> linarith

/-- The upper-pair rule (15) for the side-cap hexagon (`F = V₃`). -/
theorem upper_sign (hS : Placement h c d f L P Q X) {j l : Fin 18}
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) {v : Fin 6} {b : Bool}
    (hv : C1OneLowerTopCap.upperPairSign 5 1 2 3 (upperWord j) (upperWord l) v = some b) :
    (0 < sarea (hexagon h c d f X v) P Q ↔ b = true) := by
  have H := hS.comp
  have hidx := hexagon_idx h c d f L P Q X
  have neP := C1OneLowerTopCap.hex_ne_of hS.min hexIdx (by decide) hidx (m := 6) (by decide)
  have neQ := C1OneLowerTopCap.hex_ne_of hS.min hexIdx (by decide) hidx (m := 7) (by decide)
  have xHD : Cover.OrientHolds (hullSign (upperWord j) 5 2) (sarea (0, h) (1, d) P) :=
    hP.orient (by decide) (neP 5 2 (by decide))
  have xCF : Cover.OrientHolds (hullSign (upperWord j) 1 3) (sarea (c, 0) (f, 1) P) :=
    hP.orient (by decide) (neP 1 3 (by decide))
  have yHD : Cover.OrientHolds (hullSign (upperWord l) 5 2) (sarea (0, h) (1, d) Q) :=
    hQ.orient (by decide) (neQ 5 2 (by decide))
  have yCF : Cover.OrientHolds (hullSign (upperWord l) 1 3) (sarea (c, 0) (f, 1) Q) :=
    hQ.orient (by decide) (neQ 1 3 (by decide))
  have m : C1ZeroLower.QuadMin h c d f P Q :=
    C1OneLowerTopCap.quadMin_of H (a := 1) (b := 2) (by decide)
  have m' : C1ZeroLower.QuadMin h c d f Q P :=
    C1OneLowerTopCap.quadMin_of H (a := 2) (b := 1) (by decide)
  have := C1OneLowerTopCap.upper_pair_orient hS.anchors (C1OneLowerTopCap.upperPt_of hS.upperP)
    (C1OneLowerTopCap.upperPt_of hS.upperQ) m m' (V := hexagon h c d f X) (iF := 3) rfl rfl rfl
    rfl xHD yHD xCF yCF (upperPairSign_cases _ _ _ _ hv)
  rw [← sarea_cycle (hexagon h c d f X v) P Q]
  exact C1OneLowerTopCap.orient_iff this

end

/-- **Claim** (`C1_ONE_LOWER_SIDE_CAP:(10)`). The certificate package: no placement has word
triple `(i, j, ℓ) ∈ sideCapCases`. For each of the 153 cells one of 70 fixed positive combinations
of products of the 28 affine factors (Section 4) and the costs `W - 8s` and (9) (every known
triple in lexicographic order) is nonnegative, while its unit-cube bound (10) is at most `-3/4`
(largest `-170969015277097/172160375869440`). Coverage is by the reuse rule.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 222-328 (data `c1_one_lower_side_cap_certificates.json`,
checker `check_c1_one_lower_side_cap.py`).
Uses: C1_ONE_LOWER_SIDE_CAP:(2), C1_ONE_LOWER_SIDE_CAP:(3), C1_ONE_LOWER_SIDE_CAP:(4),
C1_ONE_LOWER_SIDE_CAP:(5), C1_ONE_LOWER_SIDE_CAP:(6), C1_ONE_LOWER_SIDE_CAP:(9),
C1_ONE_LOWER_TOP_CAP:(14), C1_ONE_LOWER_TOP_CAP:(15). -/
theorem eq10 {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) {i : Fin 4}
    {j l : Fin 18} (hcase : (i, j, l) ∈ sideCapCases)
    (hL : HasHullWord (hexagon h c d f X) L (C1OneLowerTopCap.lowerWord i))
    (hP : HasHullWord (hexagon h c d f X) P (upperWord j))
    (hQ : HasHullWord (hexagon h c d f X) Q (upperWord l)) : False := by
  have hkey := cases_keys hcase
  obtain ⟨T, hT⟩ := C1OneLowerHex.TreesSideCap.trees_ok _ hkey
  simp only at hT
  have hV := convex_hexagon hS
  have H := hS.areaOK
  refine C1OneLowerHex.cell_false hT (C1OneLowerHex.zeta_mem hS.anchors hS.leftSq
    (C1OneLowerTopCap.lower_sq hS.anchors hS.lower) (C1OneLowerTopCap.upper_sq hS.anchors hS.upperP)
    (C1OneLowerTopCap.upper_sq hS.anchors hS.upperQ)) (ptEval_side h c d f L P Q X) H
    hS.factors ?_
  refine C1OneLowerHex.base_holds H hV ?_ ?_ ?_
  · intro m
    fin_cases m
    · exact C1OneLowerHex.hword_of hL (C1OneLowerTopCap.lowerW_eq i) L P Q
    · exact C1OneLowerHex.hword_of hP (upperSide_eq j) L P Q
    · exact C1OneLowerHex.hword_of hQ (upperSide_eq l) L P Q
  · intro m m' hmm
    have lb := C1OneLowerTopCap.lowerWord_bnd i
    have le := C1OneLowerTopCap.lowerW_entry i
    fin_cases m <;> fin_cases m' <;> simp at hmm
    · exact C1OneLowerHex.hray_of hV hL hP lb (upperWord_bounds j) le (upperSide_entry j) L P Q
    · exact C1OneLowerHex.hray_of hV hL hQ lb (upperWord_bounds l) le (upperSide_entry l) L P Q
    · exact C1OneLowerHex.hray_of hV hP hL (upperWord_bounds j) lb (upperSide_entry j) le L P Q
    · exact C1OneLowerHex.hray_of hV hP hQ (upperWord_bounds j) (upperWord_bounds l)
        (upperSide_entry j) (upperSide_entry l) L P Q
    · exact C1OneLowerHex.hray_of hV hQ hL (upperWord_bounds l) lb (upperSide_entry l) le L P Q
    · exact C1OneLowerHex.hray_of hV hQ hP (upperWord_bounds l) (upperWord_bounds j)
        (upperSide_entry l) (upperSide_entry j) L P Q
  · intro v hv b hb
    have hb' := (upperPairSide_eq j l ⟨v, hv⟩).symm.trans hb
    have hiff := upper_sign hS hP hQ hb'
    have hne := C1OneLowerHex.area_ne_of H (a := v) (b := 7) (e := 8) (by omega) (by norm_num)
      (by norm_num) (by omega) (by norm_num) (by omega)
    rw [C1OneLowerHex.cfg9_hex _ _ _ _ v hv] at hne ⊢
    exact C1OneLowerHex.orient_of_iff hiff hne

/-- **Theorem 1** (`C1_ONE_LOWER_SIDE_CAP:Theorem1`). There is no competitive C1 configuration whose
four free points are one lower point `L ∈ OHC`, two points `P, Q ∈ HCDF`, and a point `X` beyond
`HF` in the left exterior cap `HF(0,1)`; reflection gives the same exclusion for a single point in
the right exterior cap `CD(1,0)`. All containments are strict; `X` may lie on a side of the square;
no relation between `f` and `d` is imposed.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 18-23, 37-39 and 326-328.
Uses: C1_ONE_LOWER_SIDE_CAP:claim-cover, C1_ONE_LOWER_SIDE_CAP:(10). -/
theorem theorem1 {h c d f : ℝ} {L P Q X : Point} (hA : C1Anchors h c d f)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)) (hL : InLower h c L)
    (hP : InUpperQuad h c d f P) (hQ : InUpperQuad h c d f Q) (hXsq : X ∈ unitSquare)
    (hX : InLeftCap f h X ∨ InRightCap c d X) : False := by
  have left : ∀ {h c d f : ℝ} {L P Q X : Point}, Placement h c d f L P Q X → False := by
    intro h c d f L P Q X hS
    have swapPQ : Placement h c d f L Q P X := by
      refine ⟨hS.anchors, ?_, hS.lower, hS.upperQ, hS.upperP, hS.left, hS.leftSq⟩
      have e : c1Config h c d f L Q P X = c1Config h c d f L P Q X ∘ Equiv.swap (6 : Fin 9) 7 := by
        funext k; fin_cases k <;> rfl
      rw [e, minTriangleArea_comp_perm]; exact hS.min
    obtain ⟨i, j, l, hc, hL, hPQ⟩ := claim_cover hS
    rcases hPQ with ⟨hP, hQ⟩ | ⟨hQ, hP⟩
    · exact eq10 hS hc hL hP hQ
    · exact eq10 swapPQ hc hL hQ hP
  rcases hX with hl | hr
  · exact left ⟨hA, hmin, hL, hP, hQ, hl, hXsq⟩
  · exact left (transpose_right hA hmin hL hP hQ hXsq hr)

/-- Helper: a point strictly inside `OHC` is strictly on the inner side of `CD`, `DF` and `FH`
(barycentric identity `[OCH][ABL] = [CHL][ABO] + [HOL][ABC] + [OCL][ABH]`). -/
theorem lower_not_cap {h c d f : ℝ} (hA : C1Anchors h c d f) {L : Point} (hL : InLower h c L) :
    ¬ (InRightCap c d L ∨ InTopCap d f L ∨ InLeftCap f h L) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨l1, l2, l3⟩ := hL
  simp only [ptO, ptC, ptH] at l1 l2 l3
  have key : ∀ A B : Point, 0 < sarea A B (0, 0) → 0 ≤ sarea A B (c, 0) →
      0 ≤ sarea A B (0, h) → 0 < sarea A B L := by
    intro A B h1 h2 h3
    have e : (c * h) * sarea A B L = sarea (c, 0) (0, h) L * sarea A B (0, 0) +
        sarea (0, h) (0, 0) L * sarea A B (c, 0) + sarea (0, 0) (c, 0) L * sarea A B (0, h) := by
      simp only [sarea]; ring
    have : 0 < (c * h) * sarea A B L := by
      rw [e]; nlinarith [mul_pos l2 h1, mul_nonneg l3.le h2, mul_nonneg l1.le h3]
    exact pos_of_mul_pos_right this (by nlinarith)
  have k1 := key (c, 0) (1, d) (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith)
  have k2 := key (1, d) (f, 1) (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith)
  have k3 := key (f, 1) (0, h) (by simp only [sarea]; nlinarith) (by simp only [sarea]; nlinarith)
    (by simp only [sarea]; nlinarith)
  unfold InRightCap InTopCap InLeftCap ptC ptD ptF ptH
  rintro (h1 | h1 | h1) <;> linarith

/-- Helper (the region partition): a free point of a competitive configuration not in `OHC` lies
in `HCDF` or in one of the three caps. -/
theorem partition {h c d f : ℝ} {Q4 : Fin 4 → Point} (H : C1ZeroLower.Comp h c d f Q4) (i : Fin 4)
    (hnl : ¬ InLower h c (Q4 i)) :
    InUpperQuad h c d f (Q4 i) ∨ InRightCap c d (Q4 i) ∨ InTopCap d f (Q4 i) ∨
      InLeftCap f h (Q4 i) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨q0, q1, q2, q3⟩ := H.hQ i
  have ne : ∀ u v : ℕ, u < 5 → v < 5 → u ≠ v →
      sarea (C1ZeroLower.cfg h c d f Q4 u) (C1ZeroLower.cfg h c d f Q4 v) (Q4 i) ≠ 0 := by
    intro u v hu hv huv h0
    have := H.areaF u v i hu hv huv
    rw [h0, abs_zero] at this; linarith [A₀_pos]
  have n01 := ne 0 1 (by norm_num) (by norm_num) (by norm_num)
  have n04 := ne 0 4 (by norm_num) (by norm_num) (by norm_num)
  have n14 := ne 1 4 (by norm_num) (by norm_num) (by norm_num)
  have n12 := ne 1 2 (by norm_num) (by norm_num) (by norm_num)
  have n23 := ne 2 3 (by norm_num) (by norm_num) (by norm_num)
  have n34 := ne 3 4 (by norm_num) (by norm_num) (by norm_num)
  simp only [C1ZeroLower.cfg] at n01 n04 n14 n12 n23 n34
  have s01 : 0 < sarea (0, 0) (c, 0) (Q4 i) := by
    have : 0 ≤ sarea (0, 0) (c, 0) (Q4 i) := by simp only [sarea]; nlinarith
    exact lt_of_le_of_ne this (Ne.symm n01)
  have s40 : 0 < sarea (0, h) (0, 0) (Q4 i) := by
    have : 0 ≤ sarea (0, h) (0, 0) (Q4 i) := by simp only [sarea]; nlinarith
    refine lt_of_le_of_ne this ?_
    intro h0; apply n04; rw [sarea_swap₁₂] at h0; linarith
  have hHC : 0 < sarea (ptH h) (ptC c) (Q4 i) := by
    have : ¬ 0 < sarea (c, 0) (0, h) (Q4 i) := fun hp => hnl ⟨s01, hp, s40⟩
    have := lt_of_le_of_ne (not_lt.1 this) n14
    rw [show ptH h = (0, h) from rfl, show ptC c = (c, 0) from rfl, sarea_swap₁₂]; linarith
  by_cases hR : sarea (c, 0) (1, d) (Q4 i) < 0
  · exact Or.inr (Or.inl hR)
  by_cases hT : sarea (1, d) (f, 1) (Q4 i) < 0
  · exact Or.inr (Or.inr (Or.inl hT))
  by_cases hL : sarea (f, 1) (0, h) (Q4 i) < 0
  · exact Or.inr (Or.inr (Or.inr hL))
  left
  exact ⟨hHC, lt_of_le_of_ne (not_lt.1 hR) (Ne.symm n12), lt_of_le_of_ne (not_lt.1 hT) (Ne.symm n23),
    lt_of_le_of_ne (not_lt.1 hL) (Ne.symm n34)⟩

/-- **Corollary 2** (`C1_ONE_LOWER_SIDE_CAP:Corollary2`). In every competitive C1 configuration
with exactly one free point in `OHC`, at least two of the four free points lie outside the
five-anchor pentagon (in one of the three exterior caps). The proof: `HCDF` cannot contain three
free points (seven-point quadrilateral theorem, `W > 1`), and with exactly one exterior point
Theorem 1 and `C1_ONE_LOWER_TOP_CAP:Theorem` exclude all three caps.
FLAG: the proof (line 31) says the seven-point theorem "would give `W ≥ 10s > 1`"; that theorem
gives only `W ≥ (13 + 3√5)/2 · 2A₀ ≈ 1.0815 < 10s ≈ 1.0959`, which still exceeds `W ≤ 1`.
`hand/C1_ONE_LOWER_SIDE_CAP.md`, lines 25-35.
Uses: C1_ONE_LOWER_SIDE_CAP:Theorem1, C1_ONE_LOWER_TOP_CAP:Theorem, QUADRILATERAL_HULL:Theorem2. -/
theorem corollary2 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hn : lowerCount h c W X Y Z = 1)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) :
    2 ≤ countFree (fun P => InRightCap c d P ∨ InTopCap d f P ∨ InLeftCap f h P) W X Y Z := by
  classical
  by_contra hcnt; push Not at hcnt
  set P : Fin 4 → Point := freePt W X Y Z with hPdef
  have H : C1ZeroLower.Comp h c d f P := ⟨hA, fun i => by fin_cases i <;> assumption, hmin⟩
  set Ext : Point → Prop := fun R => InRightCap c d R ∨ InTopCap d f R ∨ InLeftCap f h R
  have hE : (Finset.univ.filter fun i : Fin 4 => Ext (P i)).card ≤ 1 := by
    have : countFree Ext W X Y Z = (Finset.univ.filter fun i : Fin 4 => Ext (P i)).card := by
      unfold countFree; congr
    omega
  have two : ∀ a b : Fin 4, a ≠ b → Ext (P a) → Ext (P b) → False := by
    intro a b hab ha hb
    have : 1 < (Finset.univ.filter fun i : Fin 4 => Ext (P i)).card :=
      Finset.one_lt_card.2 ⟨a, by simp [ha], b, by simp [hb], hab⟩
    omega
  have hlow : (Finset.univ.filter fun i : Fin 4 => InLower h c (P i)).card = 1 := by
    have : lowerCount h c W X Y Z =
        (Finset.univ.filter fun i : Fin 4 => InLower h c (P i)).card := by
      unfold lowerCount countFree; congr
    omega
  obtain ⟨l, hl⟩ := Finset.card_eq_one.1 hlow
  have hlL : InLower h c (P l) := by
    have : l ∈ Finset.univ.filter fun i : Fin 4 => InLower h c (P i) := by rw [hl]; simp
    simpa using this
  have huniq : ∀ i, InLower h c (P i) → i = l := by
    intro i hi
    have : i ∈ Finset.univ.filter fun i : Fin 4 => InLower h c (P i) := by simp [hi]
    rw [hl] at this; simpa using this
  have reg : ∀ i, i ≠ l → InUpperQuad h c d f (P i) ∨ Ext (P i) := fun i hi =>
    (partition H i fun h' => hi (huniq i h')).imp_right id
  -- a single exterior point and two upper points contradict the single-cap theorems
  have capCase : ∀ x p q : Fin 4, x ≠ p → x ≠ q → p ≠ q → x ≠ l → p ≠ l → q ≠ l →
      Ext (P x) → InUpperQuad h c d f (P p) → InUpperQuad h c d f (P q) → False := by
    intro x p q hxp hxq hpq hxl hpl hql hx hp hq
    have hinj : Function.Injective (![l, p, q, x] : Fin 4 → Fin 4) := by
      intro u w huw
      fin_cases u <;> fin_cases w <;> simp at huw ⊢ <;> simp_all [eq_comm]
    have H' := H.relabel (Equiv.ofBijective _ ⟨hinj, Finite.surjective_of_injective hinj⟩)
    have hmin' : A₀ ≤ minTriangleArea (c1Config h c d f (P l) (P p) (P q) (P x)) := H'.hmin
    rcases hx with hR | hT | hLc
    · exact theorem1 hA hmin' hlL hp hq (H.hQ x) (Or.inr hR)
    · exact C1OneLowerTopCap.mainTheorem ⟨hA, hmin', hlL, hp, hq, hT, H.hQ x⟩
    · exact theorem1 hA hmin' hlL hp hq (H.hQ x) (Or.inl hLc)
  obtain ⟨a, b, e, hab, hae, hbe, hal, hbl, hel⟩ := (by decide : ∀ l : Fin 4, ∃ a b e : Fin 4,
    a ≠ b ∧ a ≠ e ∧ b ≠ e ∧ a ≠ l ∧ b ≠ l ∧ e ≠ l) l
  rcases reg a hal with ha | ha <;> rcases reg b hbl with hb | hb <;>
    rcases reg e hel with he | he
  · exact H.quad_three hab hae hbe ha hb he
  · exact capCase e a b (Ne.symm hae) (Ne.symm hbe) hab hel hal hbl he ha hb
  · exact capCase b a e (Ne.symm hab) hbe hae hbl hal hel hb ha he
  · exact two b e hbe hb he
  · exact capCase a b e hab hae hbe hal hbl hel ha hb he
  · exact two a e hae ha he
  · exact two a b hab ha hb
  · exact two a b hab ha hb

end Heilbronn.C1OneLowerSideCap
