module

public import Heilbronn.Nine.C1.OneLower.SideCap
public import Heilbronn.Nine.C1.OneLower.HullB
public import Heilbronn.Nine.C1.OneLower.TopTriangleTrees

/-! # The triangular two-top-cap placement with one lower C1 point (`docs/proof/nine/C1_ONE_LOWER_TOP_TRIANGLE.md`)

**Role.** A component of the one-lower C1 class: `C1_ONE_LOWER_MIXED_CAPS:Theorem2` uses the
Theorem for the occupancy row `(U, R, T, L_cap) = (1, 0, 2, 0)` when the hull of the two top-cap
points with `D, F` is triangular. `C1_ONE_LOWER_CONVEX_TOP.md` covers the convex alternative.

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1`, minimum triangle area at
least `A₀`; free points `L ∈ OHC`, `Q ∈ HCDF`, an outer top-cap point `X = (g, k)` and a second
top-cap point `P` strictly inside the actual triangle `DXF`; configuration
`c1Config h c d f L P Q X`. The full hull is the hexagon `O, C, D, X, F, H` of the top-cap note
(`C1OneLowerTopCap.hexagon`), with interior points `L, P, Q`. The proof assumes `f ≤ d` (after
transposition); the claims using it carry that hypothesis. Thresholds `s = 8/73`, `ρ = 49/60`.

**Results.**
* `mainTheorem` (`C1_ONE_LOWER_TOP_TRIANGLE:Theorem`), under `f ≤ d` (the caller,
  `C1_ONE_LOWER_MIXED_CAPS:Theorem2`, transposes first).
* `params`, `inner_bounds`, `Placement.bounds`, `Placement.factors_nonneg`: the bounds (1)–(8);
  `ear_gen`, `ear_lt`, `ear_lt'` (the cross-ear bound, without AM-GM); `Placement.small`,
  `Placement.cap1`: the four capacity-one triangles (9) (FLAG: the word "respectively" at lines
  138-139).
* `convex_hexagon`, `claim_cover` (the words and the capacity filter: 219 cases, 276 cells),
  `eq13` (the certificate package, kernel-checked in `Heilbronn.Nine.C1.OneLower.TopTriangleTrees`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerTopTriangle

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Heilbronn.Nine.C1OneLowerB Cover Cert Cert.Expr
open Heilbronn.Nine.C1OneLowerTopCap (HullWord HasHullWord hexagon ConvexPolygon)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-- The placement of the Theorem: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`; minimum triangle
area at least `A₀`; `L` strictly inside `OHC`; `Q` strictly inside `HCDF`; `X = (g, k)` in the top
cap (beyond `DF`, possibly on a side of the square); `P` strictly inside the actual triangle
`DXF` (counterclockwise `D, X, F`). The configuration is `c1Config h c d f L P Q X`. -/
structure Placement (h c d f : ℝ) (L P Q X : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f L P Q X)
  lower : InLower h c L
  upper : InUpperQuad h c d f Q
  top : InTopCap d f X
  topSq : X ∈ unitSquare
  inner : InTriangle P (ptD d) X (ptF f)

/-! ### Section 1: bounds forced by the occupied cap triangle -/

/-- **Claims** (`C1_ONE_LOWER_TOP_TRIANGLE:(1)-(4)`), with an actual-area bound `t > s`:
`hc ≥ 3t`, `hf, cd ≥ t` and `[DXF] = (1-d)(g-f) - (1-f)(1-k) = (1-f)(k-d) - (1-d)(1-g) ≥ 3t`
(subdivision at `P`) give `h, c ≥ 3s`, `d, f ≥ s`, `g - f, k - d ≥ 3s`, `(1-d)(1-f) ≥ 3s`, and with
`f ≤ d`: `d ≤ 41/65`, `f < 3/7`. `docs/proof/nine/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 42-73. -/
theorem params {t h c d f g k : ℝ} (ht : 8 / 73 < t) (hd : 0 < d) (hh : h < 1) (hf : 0 < f)
    (hc : c < 1) (hfd : f ≤ d) (hdh : d ≤ h) (hfc : f ≤ c) (g1 : g ≤ 1) (k1 : k ≤ 1)
    (hc3 : 3 * t ≤ h * c) (aHF : t ≤ h * f) (_aCD : t ≤ c * d)
    (hDXF : 3 * t ≤ (1 - d) * (g - f) - (1 - f) * (1 - k)) :
    24 / 73 ≤ h ∧ 24 / 73 ≤ c ∧ 8 / 73 ≤ d ∧ 8 / 73 ≤ f ∧ 24 / 73 ≤ g - f ∧ 24 / 73 ≤ k - d ∧
      d ≤ 41 / 65 ∧ f ≤ 3 / 7 := by
  have hc0 : 0 < c := by linarith
  have hh0 : 0 < h := by linarith
  have c3 : 3 * t ≤ c := by nlinarith [mul_le_mul_of_nonneg_right hh.le hc0.le]
  have h3 : 3 * t ≤ h := by nlinarith [mul_le_mul_of_nonneg_left hc.le hh0.le]
  have f1 : t ≤ f := by nlinarith [mul_le_mul_of_nonneg_right hh.le hf.le]
  have d1 : t ≤ d := by nlinarith [mul_le_mul_of_nonneg_right hc.le hd.le]
  have a1 := lb_of_prod (by linarith) hDXF (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - d ≤ 1 by linarith)
  have hDXF' : 3 * t ≤ (1 - f) * (k - d) - (1 - d) * (1 - g) := by nlinarith
  have a2 := lb_of_prod (by linarith) hDXF' (mul_nonneg (by linarith) (by linarith))
    (by linarith) (show 1 - f ≤ 1 by linarith)
  rw [div_one] at a1 a2
  have hΩ : 3 * t ≤ (1 - d) * (1 - f) := by
    nlinarith [mul_nonneg (show (0:ℝ) ≤ 1 - f by linarith) (sub_nonneg.2 k1),
      mul_le_mul_of_nonneg_left (show g - f ≤ 1 - f by linarith) (show (0:ℝ) ≤ 1 - d by linarith)]
  have d41 := lb_of_prod (by linarith) (show 3 * t ≤ (1 - f) * (1 - d) - 0 by linarith) le_rfl
    (by linarith) (show 1 - f ≤ 65 / 73 by linarith)
  have e1 : (1 - d) * (1 - f) ≤ (1 - f) * (1 - f) := by nlinarith
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith, by linarith,
    by linarith, by nlinarith⟩

/-- The inner cap point `P = (p_x, p_y)` ((5)–(7)): `-[DFP] ≥ t`, `[DXP] ≥ t`, `[XFP] ≥ t` give
`p_x - f, p_y - d ≥ 8/65` and `p_x, p_y ≤ 1 - s`. `docs/proof/nine/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines
75-110. -/
theorem inner_bounds {t d f g k px py : ℝ} (ht : 8 / 73 < t) (hd : 8 / 73 ≤ d) (hf : 8 / 73 ≤ f)
    (hd1 : d < 1) (hf1 : f < 1) (g1 : g ≤ 1) (k1 : k ≤ 1) (gf : 0 ≤ g - f) (kd : 0 ≤ k - d)
    (px1 : px ≤ 1) (py1 : py ≤ 1)
    (a1 : t ≤ (1 - d) * (px - f) - (1 - f) * (1 - py))
    (a2 : t ≤ (k - d) * (1 - px) - (1 - g) * (py - d))
    (a3 : t ≤ (g - f) * (1 - py) - (1 - k) * (px - f)) :
    8 / 65 ≤ px - f ∧ 8 / 65 ≤ py - d ∧ px ≤ 65 / 73 ∧ py ≤ 65 / 73 := by
  obtain ⟨c1, c2⟩ := cap_pt ht hd hf hd1 hf1 px1 py1 a1
  have r1 := lb_of_prod (by linarith) a2 (mul_nonneg (by linarith) (by linarith)) kd
    (show k - d ≤ 1 by linarith)
  have r2 := lb_of_prod (by linarith) a3 (mul_nonneg (by linarith) (by linarith)) gf
    (show g - f ≤ 1 by linarith)
  rw [div_one] at r1 r2
  refine ⟨c1, c2, by linarith, by linarith⟩

/-- The cross-ear bound (`C1_ONE_LOWER_TOP_CAP.md` (7), `C1_ONE_LOWER_MIXED_CAPS.md` (12)): for a
top-cap point `Z = (g, k)` with `(1-f)(k-d) - (1-d)(1-g) ≥ t` and `h ≥ 3t`,
`[ZFH] = (1-h)g + f(h-k) < 1 - β` whenever `β < 3t` and `βu < 3tu² + (1-u)t` on `(0, 1]` (for
`k ≥ h` it is at most `1 - h ≤ 1 - 3t`; for `k < h`, `(1-f)k ≥ t` gives
`u(hu + fk) ≥ 3tu² + (1-u)t` with `u = 1 - f`; this replaces the AM-GM step `hu + t/u ≥ 2√3 t`). -/
theorem ear_gen {t β h d f g k : ℝ} (hβ3 : β < 3 * t) (_ht : 0 < t)
    (hβ : ∀ u : ℝ, 0 < u → u ≤ 1 → β * u < 3 * t * u ^ 2 + (1 - u) * t) (h3 : 3 * t ≤ h)
    (hh : h < 1) (hd : 0 < d) (hd1 : d < 1) (hf : 0 < f) (hf1 : f < 1) (_g0 : 0 ≤ g) (g1 : g ≤ 1)
    (_k1 : k ≤ 1) (a : t ≤ (1 - f) * (k - d) - (1 - d) * (1 - g)) :
    (1 - h) * g + f * (h - k) < 1 - β := by
  rcases le_or_gt h k with hk | hk
  · have e1 := mul_le_mul_of_nonneg_left g1 (show (0:ℝ) ≤ 1 - h by linarith)
    have e2 := mul_nonneg hf.le (sub_nonneg.2 hk)
    have e : (1 - h) * g + f * (h - k) = (1 - h) * g - f * (k - h) := by ring
    rw [e]; linarith
  · have k0 : t ≤ (1 - f) * k := by
      have e : (1 - f) * k = ((1 - f) * (k - d) - (1 - d) * (1 - g)) + (1 - d) * (1 - g) +
          (1 - f) * d := by ring
      rw [e]
      linarith [mul_nonneg (show (0:ℝ) ≤ 1 - d by linarith) (sub_nonneg.2 g1),
        mul_nonneg (show (0:ℝ) ≤ 1 - f by linarith) hd.le]
    set u := 1 - f with hu
    have hu0 : 0 < u := by linarith
    have e1 : (1 - h) * g + f * (h - k) ≤ 1 - h * u - f * k := by
      have := mul_le_mul_of_nonneg_left g1 (show (0:ℝ) ≤ 1 - h by linarith)
      have e : 1 - h * u - f * k - ((1 - h) * g + f * (h - k)) = (1 - h) * 1 - (1 - h) * g := by
        rw [hu]; ring
      linarith
    have e2 : f * t ≤ f * (u * k) := mul_le_mul_of_nonneg_left k0 hf.le
    have e3 := hβ u hu0 (by linarith)
    have e4 : u * (h * u + f * k) ≥ 3 * t * u ^ 2 + (1 - u) * t := by
      have : f = 1 - u := by rw [hu]; ring
      rw [this] at e2 ⊢
      nlinarith [mul_le_mul_of_nonneg_right h3 (sq_nonneg u)]
    have e5 : β < h * u + f * k := by
      by_contra hn; push Not at hn
      nlinarith [mul_le_mul_of_nonneg_left hn hu0.le]
    linarith

/-- `ear_gen` with `1 - β = ρ`. -/
theorem ear_lt {t h d f g k : ℝ} (ht : 8 / 73 < t) (h3 : 3 * t ≤ h)
    (hh : h < 1) (hd : 0 < d) (hd1 : d < 1) (hf : 0 < f) (hf1 : f < 1) (g0 : 0 ≤ g) (g1 : g ≤ 1)
    (k1 : k ≤ 1) (a : t ≤ (1 - f) * (k - d) - (1 - d) * (1 - g)) :
    (1 - h) * g + f * (h - k) < 49 / 60 := by
  have := ear_gen (β := 11 / 60) (by linarith) (by linarith) (fun u hu0 hu1 => by
    nlinarith [sq_nonneg (u - 1283 / 2880), mul_nonneg (show 0 ≤ t - 8 / 73 by linarith)
      (show 0 ≤ 3 * u ^ 2 - u + 1 by nlinarith [sq_nonneg (u - 1 / 6)])]) h3 hh hd hd1 hf hf1 g0
    g1 k1 a
  linarith

/-- `ear_gen` with `1 - β = 1 - 7s/3 = 163/219`. -/
theorem ear_lt' {t h d f g k : ℝ} (ht : 8 / 73 < t) (h3 : 3 * t ≤ h)
    (hh : h < 1) (hd : 0 < d) (hd1 : d < 1) (hf : 0 < f) (hf1 : f < 1) (g0 : 0 ≤ g) (g1 : g ≤ 1)
    (k1 : k ≤ 1) (a : t ≤ (1 - f) * (k - d) - (1 - d) * (1 - g)) :
    (1 - h) * g + f * (h - k) < 163 / 219 := by
  have := ear_gen (β := 56 / 219) (by linarith) (by linarith) (fun u hu0 hu1 => by
    nlinarith [sq_nonneg (u - 5 / 9), mul_nonneg (show 0 ≤ t - 8 / 73 by linarith)
      (show 0 ≤ 3 * u ^ 2 - u + 1 by nlinarith [sq_nonneg (u - 1 / 6)])]) h3 hh hd hd1 hf hf1 g0
    g1 k1 a
  linarith

/-! ### The nine points -/

section

variable {h c d f : ℝ} {L P Q X : Point}

/-- The free points in the order of `c1Config h c d f L P Q X`. -/
def freeQ (L P Q X : Point) : Fin 4 → Point := ![L, P, Q, X]

/-- The order `O, C, D, X, F, H, L, P, Q` as indices of `cfg`. -/
def idx : ℕ → ℕ
  | 3 => 8
  | 4 => 3
  | 5 => 4
  | 6 => 5
  | 7 => 6
  | 8 => 7
  | n => n

/-- The nine points `O, C, D, X, F, H, L, P, Q`. -/
def pts (h c d f : ℝ) (L P Q X : Point) (i : ℕ) : Point := cfg h c d f (freeQ L P Q X) (idx i)

theorem idx_lt : ∀ i, i < 9 → idx i < 9 := by decide
theorem idx_inj' : ∀ a, a < 9 → ∀ b, b < 9 → idx a = idx b → a = b := by decide
theorem idx_inj : ∀ a b, a < 9 → b < 9 → idx a = idx b → a = b :=
  fun a b ha hb => idx_inj' a ha b hb

theorem pts_0 : pts h c d f L P Q X 0 = (0, 0) := rfl
theorem pts_1 : pts h c d f L P Q X 1 = (c, 0) := rfl
theorem pts_2 : pts h c d f L P Q X 2 = (1, d) := rfl
theorem pts_3 : pts h c d f L P Q X 3 = X := rfl
theorem pts_4 : pts h c d f L P Q X 4 = (f, 1) := rfl
theorem pts_5 : pts h c d f L P Q X 5 = (0, h) := rfl
theorem pts_6 : pts h c d f L P Q X 6 = L := rfl
theorem pts_7 : pts h c d f L P Q X 7 = P := rfl
theorem pts_8 : pts h c d f L P Q X 8 = Q := rfl

/-- The variables `h, c, d, f, g, k, ℓ_x, ℓ_y, p_x, p_y, q_x, q_y` of the certificates. -/
def zeta (h c d f : ℝ) (L P Q X : Point) : ℕ → ℝ
  | 0 => h
  | 1 => c
  | 2 => d
  | 3 => f
  | 4 => X.1
  | 5 => X.2
  | 6 => L.1
  | 7 => L.2
  | 8 => P.1
  | 9 => P.2
  | 10 => Q.1
  | 11 => Q.2
  | _ => 0

theorem ptEval_zeta (i : ℕ) (hi : i < 9) :
    ptEval (zeta h c d f L P Q X) Model.pt i = pts h c d f L P Q X i := by
  interval_cases i <;> simp [ptEval, Model.pt, zeta, pts, idx, cfg, freeQ]

theorem Placement.sq (hS : Placement h c d f L P Q X) :
    L ∈ unitSquare ∧ P ∈ unitSquare ∧ Q ∈ unitSquare := by
  obtain ⟨a0, a1, a2, a3, a4⟩ := sq_anchor hS.anchors
  refine ⟨inSquare_of_inTriangle hS.lower a0 a1 a4, inSquare_of_inTriangle hS.inner a2 hS.topSq a3,
    ?_⟩
  have hne : sarea (ptH h) (ptD d) Q ≠ 0 := by
    have h0 : A₀ ≤ triangleArea (ptH h) (ptD d) Q :=
      area_of_le_min hS.min (4 : Fin 9) 2 7 (by decide) (by decide) (by decide)
    rw [triangleArea_eq] at h0
    intro e; rw [e, abs_zero] at h0; linarith [A₀_pos]
  rcases upper_inTriangle hS.upper hne with h1 | h1
  · exact inSquare_of_inTriangle h1 a1 a2 a4
  · exact inSquare_of_inTriangle h1 a2 a3 a4

theorem Placement.comp (hS : Placement h c d f L P Q X) : Comp h c d f (freeQ L P Q X) :=
  ⟨hS.anchors, fun i => by
    fin_cases i
    exacts [hS.sq.1, hS.sq.2.1, hS.sq.2.2, hS.topSq], hS.min⟩

theorem Placement.areaOK (hS : Placement h c d f L P Q X) : AreaOK (pts h c d f L P Q X) :=
  (comp_areaOK hS.comp).comp idx idx_lt idx_inj

/-- The anchor and cap table gives every increasing triple of the hexagon positive. -/
theorem hexagon_table : ∀ i j k : Fin 6, i < j → j < k →
    orientedLookup (capTable [(8, 3)]) (idx i) (idx j) (idx k) = some true := by
  decide +kernel

/-- Helper (implicit in the manuscript: "The full hull is the convex hexagon `O, C, D, X, F, H`",
lines 145-148): the hull hexagon is convex (counterclockwise). -/
theorem convex_hexagon (hS : Placement h c d f L P Q X) : ConvexPolygon (hexagon h c d f X) := by
  have H := hS.comp
  have tb := comp_capTable_holds H (ms := [(8, 3)]) (by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    subst hp
    exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 3).2.1 hS.top⟩)
  have := convex_of_table tb (n := 6) (fun i => idx i.val) hexagon_table
  convert this using 1
  funext i; fin_cases i <;> rfl

theorem pts_hexagon (i : Fin 6) : pts h c d f L P Q X i.val = hexagon h c d f X i := by
  fin_cases i <;> rfl

/-- The actual areas used by the bounds, each at least `t = 2A₀`. -/
theorem Placement.areas (hS : Placement h c d f L P Q X) :
    2 * A₀ ≤ c * L.2 ∧ 2 * A₀ ≤ h * L.1 ∧ 2 * A₀ ≤ h * c - h * L.1 - c * L.2 ∧
      2 * A₀ ≤ h * f ∧ 2 * A₀ ≤ c * d ∧
      2 * A₀ ≤ (1 - d) * (P.1 - f) - (1 - f) * (1 - P.2) ∧
      2 * A₀ ≤ (X.2 - d) * (1 - P.1) - (1 - X.1) * (P.2 - d) ∧
      2 * A₀ ≤ (X.1 - f) * (1 - P.2) - (1 - X.2) * (P.1 - f) := by
  have A := hS.areaOK
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨o1, o2, o3⟩ := hS.lower
  obtain ⟨i1, i2, i3⟩ := hS.inner
  have aL1 := A.pos_ge (a := 0) (b := 1) (e := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o1
  have aL2 := A.pos_ge (a := 5) (b := 0) (e := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o3
  have aL3 := A.pos_ge (a := 1) (b := 5) (e := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o2
  have eHF : sarea (pts h c d f L P Q X 0) (pts h c d f L P Q X 4) (pts h c d f L P Q X 5) =
      h * f := by rw [pts_0, pts_4, pts_5]; unfold sarea; ring
  have aHF := A.pos_ge (a := 0) (b := 4) (e := 5) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by rw [eHF]; exact mul_pos (by linarith) hf)
  have eCD : sarea (pts h c d f L P Q X 0) (pts h c d f L P Q X 1) (pts h c d f L P Q X 2) =
      c * d := by rw [pts_0, pts_1, pts_2]; unfold sarea; ring
  have aCD := A.pos_ge (a := 0) (b := 1) (e := 2) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by rw [eCD]; exact mul_pos (by linarith) hd)
  have a1 := A.pos_ge (a := 4) (b := 2) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) i3
  have a2 := A.pos_ge (a := 2) (b := 3) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) i1
  have a3 := A.pos_ge (a := 3) (b := 4) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) i2
  rw [eHF] at aHF
  rw [eCD] at aCD
  rw [pts_0, pts_1, pts_6] at aL1
  rw [pts_5, pts_0, pts_6] at aL2
  rw [pts_1, pts_5, pts_6] at aL3
  rw [pts_4, pts_2, pts_7] at a1
  rw [pts_2, pts_3, pts_7] at a2
  rw [pts_3, pts_4, pts_7] at a3
  refine ⟨?_, ?_, ?_, aHF, aCD, ?_, ?_, ?_⟩
  · convert aL1 using 1; unfold sarea; ring
  · convert aL2 using 1; unfold sarea; ring
  · convert aL3 using 1; unfold sarea; ring
  · convert a1 using 1; unfold sarea; ring
  · convert a2 using 1; unfold sarea; ring
  · convert a3 using 1; unfold sarea; ring

/-- The bounds (1)–(8) behind the 28 affine factors. -/
theorem Placement.bounds (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    24 / 73 ≤ h ∧ 24 / 73 ≤ c ∧ 8 / 73 ≤ d ∧ 8 / 73 ≤ f ∧ 24 / 73 ≤ X.1 - f ∧
      24 / 73 ≤ X.2 - d ∧ d ≤ 41 / 65 ∧ f ≤ 3 / 7 ∧
      8 / 73 ≤ L.1 ∧ 8 / 73 ≤ L.2 ∧ 16 / 73 ≤ c - L.1 ∧ 16 / 73 ≤ h - L.2 ∧
      8 / 73 ≤ 1 - L.1 - L.2 ∧
      8 / 65 ≤ P.1 - f ∧ 8 / 65 ≤ P.2 - d ∧ P.1 ≤ 65 / 73 ∧ P.2 ≤ 65 / 73 ∧
      8 / 73 ≤ Q.1 ∧ 8 / 73 ≤ Q.2 ∧ Q.1 ≤ 65 / 73 ∧ Q.2 ≤ 65 / 73 := by
  obtain ⟨aL1, aL2, aL3, aHF, aCD, a1, a2, a3⟩ := hS.areas
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨⟨l0, l1, m0, m1⟩, ⟨p0, p1, q0, q1⟩, -⟩ := hS.sq
  obtain ⟨x0, x1, y0, y1⟩ := hS.topSq
  have hU : InUpperQuad h c d f (freeQ L P Q X 2) := hS.upper
  obtain ⟨w1, w2⟩ := hS.comp.upper_row 2 hU
  obtain ⟨w3, w4⟩ := hS.comp.coord_ge 2
  change Q.1 ≤ 1 - 2 * A₀ at w1
  change Q.2 ≤ 1 - 2 * A₀ at w2
  change 2 * A₀ ≤ Q.1 at w3
  change 2 * A₀ ≤ Q.2 at w4
  have ht0 := two_A₀.1
  clear hS hU
  set t := 2 * A₀ with ht
  have hc3 : 3 * t ≤ h * c := by linarith
  have hDXF : 3 * t ≤ (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by
    have e : (1 - d) * (P.1 - f) - (1 - f) * (1 - P.2) +
        ((X.2 - d) * (1 - P.1) - (1 - X.1) * (P.2 - d)) +
        ((X.1 - f) * (1 - P.2) - (1 - X.2) * (P.1 - f)) =
        (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by ring
    linarith
  obtain ⟨b1, b2, b3, b4, b5, b6, b7, b8⟩ := params (by linarith) hd hh hf hc hfd hdh hfc x1 y1
    hc3 aHF aCD hDXF
  obtain ⟨e1, e2, e3, e4, e5⟩ := lower_bounds1 (by linarith) hh hc (by linarith) (by linarith) l0
    m0 aL1 aL2 aL3
  obtain ⟨g1, g2, g3, g4⟩ := inner_bounds (by linarith) b3 b4 (by linarith) (by linarith) x1 y1
    (by linarith) (by linarith) p1 q1 a1 a2 a3
  exact ⟨b1, b2, b3, b4, b5, b6, b7, b8, e1, e2, e3, e4, e5, g1, g2, g3, g4, by linarith,
    by linarith, by linarith, by linarith⟩

/-- **The atoms of Section 3 are nonnegative**: the 28 affine factors, by (1)–(8). -/
theorem Placement.factors_nonneg (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    ∀ e ∈ Model.factors, 0 ≤ e.eval (zeta h c d f L P Q X) := by
  obtain ⟨b1, b2, b3, b4, b5, b6, b7, b8, e1, e2, e3, e4, e5, g1, g2, g3, g4, w1, w2, w3, w4⟩ :=
    hS.bounds hfd
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.topSq
  clear hS
  simp only [Model.factors, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, eval_minus, eval_one, eval_v, eval_k, zeta]
  push_cast
  and_intros
  all_goals linarith

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(9)`). Under `f ≤ d`, the four actual triangles `CDX`,
`XFH`, `OFH`, `DFH` (hexagon indices `(1,2,3), (3,4,5), (0,4,5), (2,4,5)`) have area below `ρ`
(`[OFH] = hf < 3/7`; `[DFH] < ρ` by `C1_ZERO_LOWER.md` §4; `[XFH], [CDX] < ρ` by `ear_lt`), so
none contains two of `L, P, Q` (two-interior-point theorem).
FLAG (line 138-139): "the two height orders in that note give area at most `1 - 3s`, or strictly
below `1 - 7s/3`, respectively" pairs the two bounds with `XFH`, `CDX`; in the top-cap note both
height cases (`k ≥ h`: `≤ 1 - 3s`; `k < h`: `< 1 - 7s/3`) apply to each of the two triangles. The
claim is unaffected. `docs/proof/nine/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 123-141.
Uses: C1_ONE_LOWER_TOP_CAP:(7), CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem Placement.small (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    sarea (c, 0) (1, d) X < 49 / 60 ∧ sarea X (f, 1) (0, h) < 49 / 60 ∧
      sarea (0, 0) (f, 1) (0, h) < 49 / 60 ∧ sarea (1, d) (f, 1) (0, h) < 49 / 60 := by
  obtain ⟨b1, b2, b3, b4, b5, b6, b7, b8, -⟩ := hS.bounds hfd
  obtain ⟨aL1, aL2, aL3, aHF, aCD, a1, a2, a3⟩ := hS.areas
  have hU := hS.comp.hdf_lt hfd
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.topSq
  have ht0 := two_A₀.1
  clear hS
  have hDXF : 3 * (2 * A₀) ≤ (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by
    have e : (1 - d) * (P.1 - f) - (1 - f) * (1 - P.2) +
        ((X.2 - d) * (1 - P.1) - (1 - X.1) * (P.2 - d)) +
        ((X.1 - f) * (1 - P.2) - (1 - X.2) * (P.1 - f)) =
        (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by ring
    linarith
  have aX : 2 * A₀ ≤ (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) := by
    have e : (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) =
        (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by ring
    linarith
  have hc3 : 3 * (2 * A₀) ≤ c := by
    nlinarith [mul_le_mul_of_nonneg_right hh.le (show (0:ℝ) ≤ c by linarith)]
  have h3 : 3 * (2 * A₀) ≤ h := by
    nlinarith [mul_le_mul_of_nonneg_left hc.le (show (0:ℝ) ≤ h by linarith)]
  have k1 := ear_lt (h := c) (d := f) (f := d) (g := X.2) (k := X.1) (by linarith) hc3 hc hf
    (by linarith) hd (by linarith) y0 y1 x1 (by linarith)
  have k2 := ear_lt (h := h) (d := d) (f := f) (g := X.1) (k := X.2) (by linarith) h3 hh hd
    (by linarith) hf (by linarith) x0 x1 y1 aX
  have e1 : sarea (c, 0) (1, d) X = (1 - c) * X.2 + d * (c - X.1) := by unfold sarea; ring
  have e2 : sarea X (f, 1) (0, h) = (1 - h) * X.1 + f * (h - X.2) := by unfold sarea; ring
  have e3 : sarea (0, 0) (f, 1) (0, h) = f * h := by unfold sarea; ring
  refine ⟨by rw [e1]; linarith, by rw [e2]; linarith, ?_, hU⟩
  rw [e3]; nlinarith

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(9)`). Under `f ≤ d`, the four actual triangles `CDX`,
`XFH`, `OFH`, `DFH` (hexagon indices `(1,2,3), (3,4,5), (0,4,5), (2,4,5)`) have area below `ρ`
(`Placement.small`: `[OFH] = hf < 3/7`; `[DFH] < ρ` by `C1_ZERO_LOWER.md` §4; `[XFH], [CDX] < ρ`
by `ear_lt`), so none contains two of `L, P, Q` (two-interior-point theorem).
FLAG (line 138-139): "the two height orders in that note give area at most `1 - 3s`, or strictly
below `1 - 7s/3`, respectively" pairs the two bounds with `XFH`, `CDX`; in the top-cap note both
height cases (`k ≥ h`: `≤ 1 - 3s`; `k < h`: `< 1 - 7s/3`) apply to each of the two triangles. The
claim is unaffected. `docs/proof/nine/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 123-141.
Uses: C1_ONE_LOWER_TOP_CAP:(7), CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem Placement.cap1 (hS : Placement h c d f L P Q X) (hfd : f ≤ d) {a b e j₁ j₂ : ℕ}
    (ht : (a, b, e) = (1, 2, 3) ∨ (a, b, e) = (3, 4, 5) ∨ (a, b, e) = (0, 4, 5) ∨
      (a, b, e) = (2, 4, 5))
    (hj : (j₁, j₂) = (6, 7) ∨ (j₁, j₂) = (6, 8) ∨ (j₁, j₂) = (7, 8))
    (h1 : InTriangle (pts h c d f L P Q X j₁) (pts h c d f L P Q X a) (pts h c d f L P Q X b)
      (pts h c d f L P Q X e))
    (h2 : InTriangle (pts h c d f L P Q X j₂) (pts h c d f L P Q X a) (pts h c d f L P Q X b)
      (pts h c d f L P Q X e)) : False := by
  have A := hS.areaOK
  have hb : a < 9 ∧ b < 9 ∧ e < 9 ∧ j₁ < 9 ∧ j₂ < 9 ∧ [a, b, e, j₁, j₂].Nodup := by
    rcases ht with h1 | h1 | h1 | h1 <;> simp only [Prod.mk.injEq] at h1 <;>
      obtain ⟨rfl, rfl, rfl⟩ := h1 <;>
      rcases hj with h2 | h2 | h2 <;> simp only [Prod.mk.injEq] at h2 <;>
      obtain ⟨rfl, rfl⟩ := h2 <;> decide
  have := A.two_inside hb.1 hb.2.1 hb.2.2.1 hb.2.2.2.1 hb.2.2.2.2.1 hb.2.2.2.2.2 (Or.inl h1)
    (Or.inl h2)
  have hV := convex_hexagon hS
  obtain ⟨s1, s2, s3, s4⟩ := hS.small hfd
  rcases ht with e1 | e1 | e1 | e1 <;> simp only [Prod.mk.injEq] at e1 <;>
    obtain ⟨rfl, rfl, rfl⟩ := e1
  · have hpos : 0 < sarea (c, 0) (1, d) X := hV 1 2 3 (by decide) (by decide)
    rw [pts_1, pts_2, pts_3, abs_of_pos hpos] at this; linarith
  · have hpos : 0 < sarea X (f, 1) (0, h) := hV 3 4 5 (by decide) (by decide)
    rw [pts_3, pts_4, pts_5, abs_of_pos hpos] at this; linarith
  · have hpos : 0 < sarea (0, 0) (f, 1) (0, h) := hV 0 4 5 (by decide) (by decide)
    rw [pts_0, pts_4, pts_5, abs_of_pos hpos] at this; linarith
  · have hpos : 0 < sarea (1, d) (f, 1) (0, h) := hV 2 4 5 (by decide) (by decide)
    rw [pts_2, pts_4, pts_5, abs_of_pos hpos] at this; linarith

end

/-! ### Section 2: the radial cover -/

/-- The enumeration of the hexagon words (10) inside `OCH`: the four lower words. -/
theorem enum_lower :
    enumW 6 4 (fun w => !(hinside 6 w 0 1 5) || decide (w ∈ Model.lowerW)) 6 [] = true := by
  decide +kernel

/-- The enumeration of the hexagon words inside `DXF`: the four cap words. -/
theorem enum_cap :
    enumW 6 4 (fun w => !(hinside 6 w 2 3 4) || decide (w ∈ Model.capW)) 6 [] = true := by
  decide +kernel

/-- The enumeration of the hexagon words of `HCDF`: the 18 upper words. -/
theorem enum_upper :
    enumW 6 4 (fun w => !(hsign 6 w 5 1 && hsign 6 w 1 2 && hsign 6 w 2 4 && hsign 6 w 4 5) ||
      decide (w ∈ Model.upperW)) 6 [] = true := by
  decide +kernel

/-- The increasing index triples of the hexagon. -/
def hexTriples : List (ℕ × ℕ × ℕ) :=
  (List.range 6).flatMap fun a => (List.range 6).flatMap fun b =>
    ((List.range 6).filter fun e => a < b ∧ b < e).map fun e => (a, b, e)

/-- The capacity filter of Section 2: no hull triangle contains all three of `L, P, Q`, and none
of the four triangles (9) contains two of them. -/
def capFilter (wl wp wq : List ℕ) : Bool :=
  hexTriples.all (fun t => !(hinside 6 wl t.1 t.2.1 t.2.2 && hinside 6 wp t.1 t.2.1 t.2.2 &&
    hinside 6 wq t.1 t.2.1 t.2.2)) &&
  [(1, 2, 3), (3, 4, 5), (0, 4, 5), (2, 4, 5)].all (fun t =>
    !(hinside 6 wl t.1 t.2.1 t.2.2 && hinside 6 wp t.1 t.2.1 t.2.2) &&
    !(hinside 6 wl t.1 t.2.1 t.2.2 && hinside 6 wq t.1 t.2.1 t.2.2) &&
    !(hinside 6 wp t.1 t.2.1 t.2.2 && hinside 6 wq t.1 t.2.1 t.2.2))

/-- The word triples passing the capacity filter are the 219 cases of the package. -/
theorem cases_keysB : ((List.range 4).all fun i => (List.range 4).all fun j =>
    (List.range 18).all fun l =>
      !(capFilter (Model.lowerW.getD i []) (Model.capW.getD j []) (Model.upperW.getD l [])) ||
        Model.caseKeys.contains (i, j, l)) = true := by
  decide +kernel

theorem cases_keys (i : ℕ) (hi : i < 4) (j : ℕ) (hj : j < 4) (l : ℕ) (hl : l < 18)
    (hc : capFilter (Model.lowerW.getD i []) (Model.capW.getD j []) (Model.upperW.getD l []) =
      true) : (i, j, l) ∈ Model.caseKeys := by
  have := List.all_eq_true.1 (List.all_eq_true.1 (List.all_eq_true.1 cases_keysB i
    (List.mem_range.2 hi)) j (List.mem_range.2 hj)) l (List.mem_range.2 hl)
  rw [hc] at this
  simpa using this

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:claim-cover`). Under `f ≤ d`, every placement is covered:
the words of `L, P, Q` for the hexagon `O, C, D, X, F, H` ((10); completeness from Section 3 of the
top-cap note) are a lower word `i`, a cap word `j` and an upper word `ℓ` with `(i, j, ℓ)` one of
the 219 cases (capacity two of every hull triangle; capacity one of the triangles (9)); the eight
split triples are divided further in the trees of the package.
`docs/proof/nine/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 143-227.
Uses: C1_ONE_LOWER_TOP_CAP:(12)-(13), ONE_CORNER:GlobalC1OccupancyCorollary,
C1_ONE_LOWER_TOP_TRIANGLE:(9). -/
theorem claim_cover {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X)
    (hfd : f ≤ d) :
    ∃ i j l, (i, j, l) ∈ Model.caseKeys ∧
      HasHullWord (hexagon h c d f X) L (fun v => (Model.lowerW.getD i []).getD v.val 0) ∧
      HasHullWord (hexagon h c d f X) P (fun v => (Model.capW.getD j []).getD v.val 0) ∧
      HasHullWord (hexagon h c d f X) Q (fun v => (Model.upperW.getD l []).getD v.val 0) ∧
      (∀ v : Fin 6, 1 ≤ (Model.lowerW.getD i []).getD v.val 0 ∧
        (Model.lowerW.getD i []).getD v.val 0 ≤ 6 - 2) ∧
      (∀ v : Fin 6, 1 ≤ (Model.capW.getD j []).getD v.val 0 ∧
        (Model.capW.getD j []).getD v.val 0 ≤ 6 - 2) ∧
      (∀ v : Fin 6, 1 ≤ (Model.upperW.getD l []).getD v.val 0 ∧
        (Model.upperW.getD l []).getD v.val 0 ≤ 6 - 2) := by
  have A := hS.areaOK
  have hV := convex_hexagon hS
  have hne : ∀ k, 6 ≤ k → k < 9 → ∀ a b : Fin 6, a ≠ b →
      sarea (hexagon h c d f X a) (hexagon h c d f X b) (pts h c d f L P Q X k) ≠ 0 := by
    intro k hk1 hk2 a b hab
    rw [← pts_hexagon, ← pts_hexagon]
    exact A.ne_zero (by omega) (by omega) hk2 (fun h => hab (Fin.ext h)) (by omega) (by omega)
  obtain ⟨w, hp, hw, hb, hin⟩ := word_of_inTriangle (n := 6) (by norm_num) hV (a := 0) (b := 1)
    (e := 5) (by decide) (by decide) hS.lower (hne 6 le_rfl (by norm_num)) enum_lower
  have hin2 : hinside 6 w 0 1 5 = true := hin
  simp only [hin2, Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp
  obtain ⟨i, hi, rfl⟩ := exists_getD_of_mem hp
  obtain ⟨w', hp', hw', hb', hin'⟩ := word_of_inTriangle (n := 6) (by norm_num) hV (a := 2)
    (b := 3) (e := 4) (by decide) (by decide) hS.inner (hne 7 (by norm_num) (by norm_num)) enum_cap
  have hin2' : hinside 6 w' 2 3 4 = true := hin'
  simp only [hin2', Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp'
  obtain ⟨j, hj, rfl⟩ := exists_getD_of_mem hp'
  -- the upper point
  have hinQ : ∀ v : Fin 6, 0 < sarea (hexagon h c d f X v) (hexagon h c d f X (v + 1)) Q := by
    have hne' : sarea (ptH h) (ptD d) Q ≠ 0 := by
      have := A.ne_zero (a := 5) (b := 2) (e := 8) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) (by norm_num)
      exact this
    rcases upper_inTriangle hS.upper hne' with h1 | h1
    · exact inTriangle_edges (a := 1) (b := 2) (c := 5) (by norm_num) hV (by decide) (by decide) h1
    · exact inTriangle_edges (a := 2) (b := 4) (c := 5) (by norm_num) hV (by decide) (by decide) h1
  obtain ⟨w'', hp'', hw'', hb''⟩ := word_of_edges hV hinQ (hne 8 (by norm_num) (by norm_num))
    enum_upper
  obtain ⟨u1, u2, u3, u4⟩ := hS.upper
  have s1 := hsign_of_pos hw'' (i := 5) (j := 1) (by decide) u1
  have s2 := hsign_of_pos hw'' (i := 1) (j := 2) (by decide) u2
  have s3 := hsign_of_pos hw'' (i := 2) (j := 4) (by decide) u3
  have s4 := hsign_of_pos hw'' (i := 4) (j := 5) (by decide) u4
  have e : (hsign 6 w'' 5 1 && hsign 6 w'' 1 2 && hsign 6 w'' 2 4 && hsign 6 w'' 4 5) = true := by
    simp only [Bool.and_eq_true]; exact ⟨⟨⟨s1, s2⟩, s3⟩, s4⟩
  simp only [e, Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp''
  obtain ⟨l, hl, rfl⟩ := exists_getD_of_mem hp''
  refine ⟨i, j, l, cases_keys i hi j hj l hl ?_, hw, hw', hw'', hb, hb', hb''⟩
  -- the capacity filter
  have ins : ∀ {k : ℕ} {wk : List ℕ}, k = 6 ∨ k = 7 ∨ k = 8 →
      HasHullWord (hexagon h c d f X) (pts h c d f L P Q X k) (fun v => wk.getD v.val 0) →
      ∀ {a b e : Fin 6}, a ≠ b → b ≠ e → a ≠ e → hinside 6 wk a b e = true →
      InTriangle (pts h c d f L P Q X k) (pts h c d f L P Q X a) (pts h c d f L P Q X b)
        (pts h c d f L P Q X e) := by
    intro k wk _ hwk a b e hab hbe hae h1
    rw [pts_hexagon, pts_hexagon, pts_hexagon]
    exact inTriangle_of_hinside hwk hab hbe hae h1
  have glob : ∀ a b e : ℕ, a < b → b < e → e < 6 →
      InTriangle L (pts h c d f L P Q X a) (pts h c d f L P Q X b) (pts h c d f L P Q X e) →
      InTriangle P (pts h c d f L P Q X a) (pts h c d f L P Q X b) (pts h c d f L P Q X e) →
      InTriangle Q (pts h c d f L P Q X a) (pts h c d f L P Q X b) (pts h c d f L P Q X e) →
      False := by
    intro a b e hab hbe he h1 h2 h3
    have hG := OneCorner.globalC1OccupancyCorollary h c d f hS.anchors L P Q X hS.sq.1 hS.sq.2.1
      hS.sq.2.2 hS.topSq hS.min ⟨idx a, idx_lt a (by omega)⟩ ⟨idx b, idx_lt b (by omega)⟩
      ⟨idx e, idx_lt e (by omega)⟩
    have pc : ∀ x (hx : x < 9), pts h c d f L P Q X x =
        c1Config h c d f L P Q X ⟨idx x, idx_lt x hx⟩ := fun x hx =>
      cfg_eq h c d f (freeQ L P Q X) ⟨idx x, idx_lt x hx⟩
    rw [pc a (by omega), pc b (by omega), pc e (by omega)] at h1 h2 h3
    set A' := c1Config h c d f L P Q X ⟨idx a, idx_lt a (by omega)⟩
    set B' := c1Config h c d f L P Q X ⟨idx b, idx_lt b (by omega)⟩
    set E' := c1Config h c d f L P Q X ⟨idx e, idx_lt e (by omega)⟩
    have m5 : (5 : Fin 9) ∈ {m : Fin 9 | CornerFamilies.InsideTriangle
        (c1Config h c d f L P Q X m) A' B' E'} := Or.inl h1
    have m6 : (6 : Fin 9) ∈ {m : Fin 9 | CornerFamilies.InsideTriangle
        (c1Config h c d f L P Q X m) A' B' E'} := Or.inl h2
    have m7 : (7 : Fin 9) ∈ {m : Fin 9 | CornerFamilies.InsideTriangle
        (c1Config h c d f L P Q X m) A' B' E'} := Or.inl h3
    have := three_le_ncard m5 m6 m7 (by decide) (by decide) (by decide) (Set.toFinite _)
    omega
  have hexT : ∀ t ∈ hexTriples, t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < 6 := by decide
  simp only [capFilter, Bool.and_eq_true, List.all_eq_true]
  refine ⟨fun t ht => ?_, fun t ht => ?_⟩
  · obtain ⟨t1, t2, t3⟩ := hexT t ht
    rw [Bool.not_eq_true', Bool.eq_false_iff]
    intro hc
    simp only [Bool.and_eq_true] at hc
    obtain ⟨⟨c1, c2⟩, c3⟩ := hc
    have n1 : (⟨t.1, by omega⟩ : Fin 6) ≠ ⟨t.2.1, by omega⟩ := by simp; omega
    have n2 : (⟨t.2.1, by omega⟩ : Fin 6) ≠ ⟨t.2.2, by omega⟩ := by simp; omega
    have n3 : (⟨t.1, by omega⟩ : Fin 6) ≠ ⟨t.2.2, by omega⟩ := by simp; omega
    exact glob _ _ _ t1 t2 t3 (ins (Or.inl rfl) hw n1 n2 n3 c1) (ins (Or.inr (Or.inl rfl)) hw' n1 n2 n3 c2)
      (ins (Or.inr (Or.inr rfl)) hw'' n1 n2 n3 c3)
  · have hcap : ∀ (a b e : Fin 6), (a.val, b.val, e.val) = (1, 2, 3) ∨ (a.val, b.val, e.val) = (3, 4, 5) ∨
        (a.val, b.val, e.val) = (0, 4, 5) ∨ (a.val, b.val, e.val) = (2, 4, 5) → a ≠ b → b ≠ e → a ≠ e →
        ((!(hinside 6 (Model.lowerW.getD i []) a b e && hinside 6 (Model.capW.getD j []) a b e) &&
          !(hinside 6 (Model.lowerW.getD i []) a b e && hinside 6 (Model.upperW.getD l []) a b e)) &&
          !(hinside 6 (Model.capW.getD j []) a b e && hinside 6 (Model.upperW.getD l []) a b e)) =
          true := by
      intro a b e hab' n1 n2 n3
      simp only [Bool.and_eq_true, Bool.not_eq_true', Bool.eq_false_iff]
      refine ⟨⟨fun hc => ?_, fun hc => ?_⟩, fun hc => ?_⟩ <;> simp only [Bool.and_eq_true] at hc
      · exact hS.cap1 hfd hab' (Or.inl rfl) (ins (Or.inl rfl) hw n1 n2 n3 hc.1)
          (ins (Or.inr (Or.inl rfl)) hw' n1 n2 n3 hc.2)
      · exact hS.cap1 hfd hab' (Or.inr (Or.inl rfl)) (ins (Or.inl rfl) hw n1 n2 n3 hc.1)
          (ins (Or.inr (Or.inr rfl)) hw'' n1 n2 n3 hc.2)
      · exact hS.cap1 hfd hab' (Or.inr (Or.inr rfl)) (ins (Or.inr (Or.inl rfl)) hw' n1 n2 n3 hc.1)
          (ins (Or.inr (Or.inr rfl)) hw'' n1 n2 n3 hc.2)
    simp only [List.mem_cons, List.not_mem_nil, or_false] at ht
    rcases ht with rfl | rfl | rfl | rfl
    · simpa using hcap 1 2 3 (Or.inl rfl) (by decide) (by decide) (by decide)
    · simpa using hcap 3 4 5 (Or.inr (Or.inl rfl)) (by decide) (by decide) (by decide)
    · simpa using hcap 0 4 5 (Or.inr (Or.inr (Or.inl rfl))) (by decide) (by decide) (by decide)
    · simpa using hcap 2 4 5 (Or.inr (Or.inr (Or.inr rfl))) (by decide) (by decide) (by decide)

/-! ### Sections 3–4: the certificate package -/

/-- **Claim** (`C1_ONE_LOWER_TOP_TRIANGLE:(13)`). The certificate package: under `f ≤ d`, no
placement has its word triple among the 219 cases. Each of the 276 cells (the eight split triples
divided by all sign choices of their listed actual areas, `(2, 3, 6)` with pattern
`(-, +, -, -)` once more by `[LPQ]`) is excluded by a fixed positive combination (one of the 168
certificates, converted to the atoms of the cell) of the products of the 28 affine factors and the
signed actual-triangle costs with the strengthened occupancy rule, whose unit-cube bound is
negative (kernel check `Model.allCases_ok`).
`docs/proof/nine/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 193-321 (data
`c1_one_lower_top_triangle_certificates.json`, checker `check_c1_one_lower_top_triangle.py`).
Uses: C1_ONE_LOWER_TOP_CAP:(14), C1_ONE_LOWER_SIDE_CAP:(9). -/
theorem eq13 {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X) (hfd : f ≤ d) :
    False := by
  obtain ⟨i, j, l, hk, hL, hP, hQ, bL, bP, bQ⟩ := claim_cover hS hfd
  have HC : HullCell 6 (hexagon h c d f X) (pts h c d f L P Q X)
      [Model.lowerW.getD i [], Model.capW.getD j [], Model.upperW.getD l []] := by
    refine ⟨by norm_num, rfl, convex_hexagon hS, pts_hexagon, fun k hk => ?_, fun k hk => ?_,
      hS.areaOK⟩
    · simp only [List.length_cons, List.length_nil] at hk
      interval_cases k
      exacts [hL, hP, hQ]
    · simp only [List.length_cons, List.length_nil] at hk
      interval_cases k
      exacts [bL, bP, bQ]
  rw [← Model.caseKeys_eq] at hk
  obtain ⟨p, hp, hpk⟩ := List.mem_map.1 hk
  have hT := Model.allCases_ok p hp
  rw [hpk] at hT
  refine tableSpec_false hT (z := zeta h c d f L P Q X) ?_ (fun i hi => ptEval_zeta i hi)
    HC.area (by decide) (by decide) (hS.factors_nonneg hfd) (by simp) HC.table_holds
  intro v
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨⟨l0, l1, m0, m1⟩, ⟨p0, p1, q0, q1⟩, ⟨r0, r1, r2, r3⟩⟩ := hS.sq
  obtain ⟨x0, x1, y0, y1⟩ := hS.topSq
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith

/-- **Theorem** (`C1_ONE_LOWER_TOP_TRIANGLE:Theorem`). There is no competitive C1 configuration
(with `f ≤ d`; `C1_ONE_LOWER_MIXED_CAPS:Theorem2` transposes first) with `L ∈ OHC`, `Q ∈ HCDF`,
one exterior top-cap point `X` beyond `DF`, and a second top-cap point `P` strictly inside the
actual triangle `DXF`. (If `D, F, X, P` have triangular hull, its third vertex can be named `X`;
the convex alternative is `C1_ONE_LOWER_CONVEX_TOP:Theorem`.)
`docs/proof/nine/C1_ONE_LOWER_TOP_TRIANGLE.md`, lines 18-34 and 319-321.
Uses: C1_ONE_LOWER_TOP_TRIANGLE:claim-cover, C1_ONE_LOWER_TOP_TRIANGLE:(13). -/
theorem mainTheorem {h c d f : ℝ} {L P Q X : Point} (hS : Placement h c d f L P Q X)
    (hfd : f ≤ d) : False :=
  eq13 hS hfd

end Heilbronn.Nine.C1OneLowerTopTriangle
