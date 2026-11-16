module

public import Heilbronn.Nine.C1.OneLower.ConvexTop
public import Heilbronn.Nine.C1.OneLower.CompB
public import Heilbronn.Nine.C1.OneLower.RightTopTriangleTrees

/-! # One right-cap point and a triangular two-top hull in C1

There is no competitive C1 configuration with one lower point, one right-cap point and two
top-cap points whose hull with `D, F` is triangular. `C1OneLowerMixedCaps.lowerCount_eq_one_false` uses this for
the occupancy row `(U, R, T, L_cap) = (0, 1, 2, 0)`; the convex alternative is an eight-vertex
hull (`C1OneLowerEightHull.hullVertexCount_ne_eight`).

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1` and, after transposition,
`f ≤ d` (kept as a hypothesis); minimum triangle area at least `A₀`. Free points: `L ∈ OHC`,
`R = (r_x, r_y)` in the right cap `CD(1,0) \ CD`, the outer top-cap point `X` and the interior
top-cap point `P ∈ DXF`; configuration `c1Config h c d f R X L P`. The full hull is the heptagon
`O, C, R, D, X, F, H` with interior points `L, P`. Threshold `s = 8/73`.

**Proof.** The nine points in the order `O, C, R, D, X, F, H, L, P` are `pts` (`idx` maps this
order to the order of `c1Config`). The bounds from the occupied regions are `params`,
`cap_bounds`, `right_bounds`, `lower_bounds`, `inner_bounds` (with the doubled area `2A₀ > s` in
place of `s`); they make the 28 affine factors and the cost `(1-d)(1-f) - 3s` nonnegative
(`factors_nonneg`). The heptagon is convex (`convex_heptagon`, from the five-anchor cap words of
`R, X` and the radial rule, `comp_capTable_holds`); `L, P` have radial words (`exists_rightTopTriangle_words`: one
of the five lower words and one of the five cap words, by a pruned enumeration of the words
satisfying `HullAntisymm`); the 25 cells are excluded by the kernel-checked certificates of
`Heilbronn.Nine.C1.OneLower.RightTopTriangleTrees` (`rightTopTriangle_cell_false`).

**Results.** `rightTopTriangle_excluded`; `params`–`inner_bounds`; `convex_heptagon`; `exists_rightTopTriangle_words` (the 25
word pairs); `rightTopTriangle_cell_false` (the certificate package).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerRightTopTriangle

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Heilbronn.Nine.C1OneLowerB Cover Cert Cert.Expr
open Heilbronn.Nine.Package Heilbronn.Nine.C1OneLower
open Heilbronn.Nine.C1OneLowerTopCap (HullWord HasHullWord)

/-- `s = 8/73`. -/
local notation "s" => (8 / 73 : ℝ)

/-- The placement of `rightTopTriangle_excluded`: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1` with `f ≤ d`;
minimum triangle area at least `A₀` for `c1Config h c d f R X L P`; `L` strictly inside `OHC`; `R`
in the right cap and `X` in the top cap (each possibly on a side of the square); `P` strictly
inside the actual triangle `DXF` (so the hull of the two top-cap points with `D, F` is the triangle
`D, X, F`). -/
structure Placement (h c d f : ℝ) (R X L P : Point) : Prop where
  anchors : C1Anchors h c d f
  f_le_d : f ≤ d
  min : A₀ ≤ minTriangleArea (c1Config h c d f R X L P)
  lower : InLower h c L
  right : InRightCap c d R
  rightSq : R ∈ unitSquare
  top : InTopCap d f X
  topSq : X ∈ unitSquare
  inner : InTriangle P (ptD d) X (ptF f)

/-- The hull heptagon `V₀, …, V₆ = O, C, R, D, X, F, H`. -/
def heptagon (h c d f : ℝ) (R X : Point) : Fin 7 → Point :=
  ![ptO, ptC c, R, ptD d, X, ptF f, ptH h]

/-! ### Bounds from the occupied regions -/

/-- With an actual-area bound `t > s`: `hc ≥ 3t`, `hf ≥ t` and the right-cap and cap-triangle
areas give `h ≥ 27s/7`, `c ≥ 3s`, `c < 7/9`, `d ≥ 4s`, `d ≤ 41/65`, `f ≥ s`, `(1-d)(1-f) ≥ 3s`
(via `dc(1-c) ≥ t`, `[DXF] ≥ 3t`). -/
theorem params {t h c d f rx ry xx xy : ℝ} (ht : 8 / 73 < t)
    (hd : 0 < d) (hh : h < 1) (hf : 0 < f) (hf1 : f < 1) (hc : c < 1) (hc0 : 0 < c)
    (rx1 : rx ≤ 1) (xx1 : xx ≤ 1) (xy1 : xy ≤ 1) (hd1 : d < 1)
    (hc3 : 3 * t ≤ h * c) (aHF : t ≤ h * f) (aR1 : t ≤ d * (rx - c) - (1 - c) * ry)
    (aR2 : t ≤ c * ry) (hDXF : 3 * t ≤ (1 - d) * (xx - f) - (1 - f) * (1 - xy)) :
    216 / 511 ≤ h ∧ 24 / 73 ≤ c ∧ c < 7 / 9 ∧ 32 / 73 ≤ d ∧ d ≤ 41 / 65 ∧ 8 / 73 ≤ f ∧
      24 / 73 ≤ (1 - d) * (1 - f) := by
  have c3 : 3 * t ≤ c := by nlinarith [mul_le_mul_of_nonneg_right hh.le hc0.le]
  have f1 : t ≤ f := by nlinarith [mul_le_mul_of_nonneg_right hh.le hf.le]
  have aRc : t ≤ d * c * (1 - c) := by
    have k : c * d * (rx - c) = c * (d * (rx - c) - (1 - c) * ry) + (1 - c) * (c * ry) := by ring
    nlinarith [mul_le_mul_of_nonneg_left aR1 hc0.le, mul_le_mul_of_nonneg_left aR2
      (show (0:ℝ) ≤ 1 - c by linarith), mul_le_mul_of_nonneg_left (show rx - c ≤ 1 - c by linarith)
      (mul_nonneg hc0.le hd.le)]
  have hq : c * (1 - c) ≤ 1 / 4 := by nlinarith [sq_nonneg (c - 1 / 2)]
  have e1 : d * c * (1 - c) = d * (c * (1 - c)) := by ring
  have d4 : 32 / 73 < d := by nlinarith [mul_le_mul_of_nonneg_left hq hd.le]
  have hΩ : 3 * t ≤ (1 - d) * (1 - f) := by
    nlinarith [mul_nonneg (show (0:ℝ) ≤ 1 - f by linarith) (sub_nonneg.2 xy1),
      mul_le_mul_of_nonneg_left (show xx - f ≤ 1 - f by linarith) (show (0:ℝ) ≤ 1 - d by linarith)]
  have d41 : d ≤ 41 / 65 := by
    have := lb_of_prod (by linarith) (show 3 * t ≤ (1 - f) * (1 - d) - 0 by linarith) le_rfl
      (by linarith) (show 1 - f ≤ 65 / 73 by linarith)
    linarith
  have cc : 65 * t / 41 ≤ c * (1 - c) := by
    have := lb_of_prod (by linarith) (show t ≤ d * (c * (1 - c)) - 0 by linarith) le_rfl
      hd.le d41
    linarith
  have c79 : c < 7 / 9 := by nlinarith
  have h1 : 216 / 511 ≤ h := by
    have := lb_of_prod (by linarith) (show 3 * t ≤ c * h - 0 by linarith) le_rfl hc0.le c79.le
    linarith
  exact ⟨h1, by linarith, c79, d4.le, d41, by linarith, by linarith⟩

/-- The two cap-area expressions of `[DXF] ≥ 3t` give `x_x - f ≥ 24/41`, `x_y - d ≥ 24/65`,
`f ≤ 17/41`. -/
theorem cap_bounds {t d f xx xy : ℝ} (ht : 8 / 73 < t) (hd4 : 32 / 73 ≤ d) (hf : 8 / 73 ≤ f)
    (xx1 : xx ≤ 1) (xy1 : xy ≤ 1) (hd1 : d < 1) (hf1 : f < 1)
    (hDXF : 3 * t ≤ (1 - d) * (xx - f) - (1 - f) * (1 - xy)) :
    24 / 41 ≤ xx - f ∧ 24 / 65 ≤ xy - d ∧ f ≤ 17 / 41 := by
  have a := lb_of_prod (by linarith) hDXF (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - d ≤ 41 / 73 by linarith)
  have hDXF' : 3 * t ≤ (1 - f) * (xy - d) - (1 - d) * (1 - xx) := by nlinarith
  have b := lb_of_prod (by linarith) hDXF' (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - f ≤ 65 / 73 by linarith)
  refine ⟨by linarith, by linarith, by linarith⟩

/-- From `-[CDR] = d(r_x-c) - (1-c)r_y = (1-c)(d-r_y) - d(1-r_x) ≥ t` and `c r_y ≥ t`:
`r_x - c ≥ 65s/41`, `r_y ≥ 9s/7`, `d - r_y ≥ 8/49`. -/
theorem right_bounds {t c d rx ry : ℝ} (ht : 8 / 73 < t) (hd : 0 < d) (hd41 : d ≤ 41 / 65)
    (hc3 : 24 / 73 ≤ c) (hc : c < 7 / 9) (rx1 : rx ≤ 1) (ry0 : 0 ≤ ry)
    (aR1 : t ≤ d * (rx - c) - (1 - c) * ry) (aR2 : t ≤ c * ry) :
    520 / 2993 ≤ rx - c ∧ 72 / 511 ≤ ry ∧ 8 / 49 ≤ d - ry := by
  have a := lb_of_prod (by linarith) aR1 (mul_nonneg (by linarith) ry0) hd.le hd41
  have b := lb_of_prod (by linarith) (show t ≤ c * ry - 0 by linarith) le_rfl (by linarith) hc.le
  have aR1' : t ≤ (1 - c) * (d - ry) - d * (1 - rx) := by nlinarith
  have e := lb_of_prod (by linarith) aR1' (mul_nonneg hd.le (by linarith)) (by linarith)
    (show 1 - c ≤ 49 / 73 by linarith)
  refine ⟨by linarith, by linarith, by linarith⟩

/-- Lower-triangle subdivision with `c < 7/9`: `ℓ_x ≥ s`, `ℓ_y ≥ 9s/7`, `c - ℓ_x ≥ 2s`,
`h - ℓ_y ≥ 18s/7`, `ℓ_x + ℓ_y ≤ 1 - s`. -/
theorem lower_bounds {t h c lx ly : ℝ} (ht : 8 / 73 < t) (hh : h < 1) (hc : c < 7 / 9)
    (hh0 : 0 < h) (hc0 : 0 < c) (lx0 : 0 ≤ lx) (ly0 : 0 ≤ ly)
    (aL1 : t ≤ c * ly) (aL2 : t ≤ h * lx) (aL3 : t ≤ h * c - h * lx - c * ly) :
    8 / 73 ≤ lx ∧ 72 / 511 ≤ ly ∧ 16 / 73 ≤ c - lx ∧ 144 / 511 ≤ h - ly ∧
      8 / 73 ≤ 1 - lx - ly := by
  have a := lb_of_prod (by linarith) (show t ≤ h * lx - 0 by linarith) le_rfl hh0.le hh.le
  have b := lb_of_prod (by linarith) (show t ≤ c * ly - 0 by linarith) le_rfl hc0.le hc.le
  have e1 := lb_of_prod (by linarith) (show 2 * t ≤ h * (c - lx) - 0 by nlinarith) le_rfl hh0.le
    hh.le
  have e2 := lb_of_prod (by linarith) (show 2 * t ≤ c * (h - ly) - 0 by nlinarith) le_rfl hc0.le
    hc.le
  have k1 : h * c - h * lx - c * ly ≤ h * c * (1 - lx - ly) := by
    nlinarith [mul_nonneg (mul_nonneg hh0.le lx0) (show (0:ℝ) ≤ 1 - c by linarith),
      mul_nonneg (mul_nonneg hc0.le ly0) (show (0:ℝ) ≤ 1 - h by linarith)]
  have l := lb_of_prod (by linarith) (show t ≤ h * c * (1 - lx - ly) - 0 by linarith) le_rfl
    (by positivity) (show h * c ≤ 1 by nlinarith)
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith⟩

/-- The subdivision areas of `DXF` at `P` (`[FDP] = (1-d)(p_x-f) - (1-f)(1-p_y)`,
`[DXP] = (x_y-d)(1-p_x) - (1-x_x)(p_y-d)`, `[XFP] = (x_x-f)(1-p_y) - (1-x_y)(p_x-f)`, each at
least `t`) give `p_x - f ≥ 8/41`, `p_y - d ≥ 8/65`, `p_x, p_y ≤ 1 - s`. -/
theorem inner_bounds {t d f xx xy px py : ℝ} (ht : 8 / 73 < t) (hd4 : 32 / 73 ≤ d) (hd1 : d < 1)
    (hf : 8 / 73 ≤ f) (hf1 : f < 1) (xx1 : xx ≤ 1) (xy1 : xy ≤ 1) (xf : 0 ≤ xx - f)
    (xd : 0 ≤ xy - d) (px1 : px ≤ 1) (py1 : py ≤ 1)
    (aP1 : t ≤ (xy - d) * (1 - px) - (1 - xx) * (py - d))
    (aP2 : t ≤ (xx - f) * (1 - py) - (1 - xy) * (px - f))
    (aP3 : t ≤ (1 - d) * (px - f) - (1 - f) * (1 - py)) :
    8 / 41 ≤ px - f ∧ 8 / 65 ≤ py - d ∧ px ≤ 65 / 73 ∧ py ≤ 65 / 73 := by
  have a := lb_of_prod (by linarith) aP3 (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - d ≤ 41 / 73 by linarith)
  have aP3' : t ≤ (1 - f) * (py - d) - (1 - d) * (1 - px) := by nlinarith
  have b := lb_of_prod (by linarith) aP3' (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - f ≤ 65 / 73 by linarith)
  have e1 := lb_of_prod (by linarith) aP1 (mul_nonneg (by linarith) (by linarith)) xd
    (show xy - d ≤ 1 by linarith)
  have e2 := lb_of_prod (by linarith) aP2 (mul_nonneg (by linarith) (by linarith)) xf
    (show xx - f ≤ 1 by linarith)
  refine ⟨by linarith, by linarith, by linarith, by linarith⟩

/-! ### The nine points -/

section

variable {h c d f : ℝ} {R X L P : Point}

/-- The free points in the order of `c1Config h c d f R X L P`. -/
def freeQ (R X L P : Point) : Fin 4 → Point := ![R, X, L, P]

/-- The order `O, C, R, D, X, F, H, L, P` as indices of `cfg`. -/
def idx : ℕ → ℕ
  | 0 => 0
  | 1 => 1
  | 2 => 5
  | 3 => 2
  | 4 => 6
  | 5 => 3
  | 6 => 4
  | n => n

/-- The nine points `O, C, R, D, X, F, H, L, P`. -/
def pts (h c d f : ℝ) (R X L P : Point) (i : ℕ) : Point := cfg h c d f (freeQ R X L P) (idx i)

theorem idx_lt : ∀ i, i < 9 → idx i < 9 := by decide
theorem idx_inj' : ∀ a, a < 9 → ∀ b, b < 9 → idx a = idx b → a = b := by decide

theorem idx_inj : ∀ a b, a < 9 → b < 9 → idx a = idx b → a = b :=
  fun a b ha hb => idx_inj' a ha b hb

/-- The variables `h, c, d, f, r_x, r_y, x_x, x_y, ℓ_x, ℓ_y, p_x, p_y` of the certificates. -/
def zeta (h c d f : ℝ) (R X L P : Point) : ℕ → ℝ
  | 0 => h
  | 1 => c
  | 2 => d
  | 3 => f
  | 4 => R.1
  | 5 => R.2
  | 6 => X.1
  | 7 => X.2
  | 8 => L.1
  | 9 => L.2
  | 10 => P.1
  | 11 => P.2
  | _ => 0

theorem ptEval_zeta (i : ℕ) (hi : i < 9) :
    ptEval (zeta h c d f R X L P) Model.pt i = pts h c d f R X L P i := by
  interval_cases i <;> simp [ptEval, Model.pt, zeta, pts, idx, cfg, freeQ]

theorem Placement.sqL (hS : Placement h c d f R X L P) : L ∈ unitSquare := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  exact inSquare_of_inTriangle hS.lower (by simp [ptO, unitSquare])
    (by simp only [ptC, unitSquare, Set.mem_ofPred_eq]; refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith)
    (by simp only [ptH, unitSquare, Set.mem_ofPred_eq]; refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith)

theorem Placement.sqP (hS : Placement h c d f R X L P) : P ∈ unitSquare := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  exact inSquare_of_inTriangle hS.inner
    (by simp only [ptD, unitSquare, Set.mem_ofPred_eq]; refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith)
    hS.topSq
    (by simp only [ptF, unitSquare, Set.mem_ofPred_eq]; refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith)

theorem Placement.comp (hS : Placement h c d f R X L P) : Comp h c d f (freeQ R X L P) :=
  ⟨hS.anchors, fun i => by
    fin_cases i
    exacts [hS.rightSq, hS.topSq, hS.sqL, hS.sqP], hS.min⟩

theorem Placement.areaOK (hS : Placement h c d f R X L P) : AreaOK (pts h c d f R X L P) :=
  hS.comp.areaOK.comp idx idx_lt idx_inj

/-- The table of anchor and cap signs (cap words `0` of `R`, `3` of `X`) gives every increasing
triple of the heptagon positive. -/
theorem heptagon_table : ∀ i j k : Fin 7, i < j → j < k →
    orientedLookup (capTable [(5, 0), (6, 3)]) (idx i) (idx j) (idx k) = some true := by
  decide +kernel

/-- The hull heptagon `O, C, R, D, X, F, H` is convex (counterclockwise). -/
theorem convex_heptagon (hS : Placement h c d f R X L P) :
    IsConvexPolygon (heptagon h c d f R X) := by
  have H := hS.comp
  have tb := comp_capTable_holds H (ms := [(5, 0), (6, 3)]) (by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 0).1 hS.right⟩
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 1).2.1 hS.top⟩)
  have := convex_of_table tb (n := 7) (fun i => idx i.val) heptagon_table
  convert this using 1
  funext i; fin_cases i <;> rfl

theorem pts_heptagon (i : Fin 7) : pts h c d f R X L P i.val = heptagon h c d f R X i := by
  fin_cases i <;> rfl

/-! ### The affine factors -/

theorem pts_0 : pts h c d f R X L P 0 = (0, 0) := rfl
theorem pts_1 : pts h c d f R X L P 1 = (c, 0) := rfl
theorem pts_2 : pts h c d f R X L P 2 = R := rfl
theorem pts_3 : pts h c d f R X L P 3 = (1, d) := rfl
theorem pts_4 : pts h c d f R X L P 4 = X := rfl
theorem pts_5 : pts h c d f R X L P 5 = (f, 1) := rfl
theorem pts_6 : pts h c d f R X L P 6 = (0, h) := rfl
theorem pts_7 : pts h c d f R X L P 7 = L := rfl
theorem pts_8 : pts h c d f R X L P 8 = P := rfl

/-- The actual areas used by the region bounds (`params`–`inner_bounds`), each at least
`t = 2A₀`. -/
theorem Placement.areas (hS : Placement h c d f R X L P) :
    2 * A₀ ≤ c * L.2 ∧ 2 * A₀ ≤ h * L.1 ∧ 2 * A₀ ≤ h * c - h * L.1 - c * L.2 ∧
      2 * A₀ ≤ h * f ∧ 2 * A₀ ≤ d * (R.1 - c) - (1 - c) * R.2 ∧ 2 * A₀ ≤ c * R.2 ∧
      2 * A₀ ≤ (X.2 - d) * (1 - P.1) - (1 - X.1) * (P.2 - d) ∧
      2 * A₀ ≤ (X.1 - f) * (1 - P.2) - (1 - X.2) * (P.1 - f) ∧
      2 * A₀ ≤ (1 - d) * (P.1 - f) - (1 - f) * (1 - P.2) := by
  have A := hS.areaOK
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨o1, o2, o3⟩ := hS.lower
  obtain ⟨i1, i2, i3⟩ := hS.inner
  have hR := hS.right
  unfold InRightCap at hR
  have r2 := hS.rightSq.2.2.1
  have e : ∀ a b e : ℕ, sarea (pts h c d f R X L P a) (pts h c d f R X L P b)
      (pts h c d f R X L P e) = sarea (pts h c d f R X L P a) (pts h c d f R X L P b)
      (pts h c d f R X L P e) := fun _ _ _ => rfl
  have aL1 := A.pos_ge (a := 0) (b := 1) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o1
  have aL2 := A.pos_ge (a := 6) (b := 0) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o3
  have aL3 := A.pos_ge (a := 1) (b := 6) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o2
  have eHF : sarea (pts h c d f R X L P 0) (pts h c d f R X L P 5) (pts h c d f R X L P 6) =
      h * f := by rw [pts_0, pts_5, pts_6]; unfold sarea; ring
  have aHF := A.pos_ge (a := 0) (b := 5) (e := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by rw [eHF]; exact mul_pos (by linarith) hf)
  have aR1 := A.neg_ge (a := 1) (b := 3) (e := 2) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) hR
  have eR2 : sarea (pts h c d f R X L P 0) (pts h c d f R X L P 1) (pts h c d f R X L P 2) =
      c * R.2 := by rw [pts_0, pts_1, pts_2]; unfold sarea; ring
  have aR2 := A (a := 0) (b := 1) (e := 2) (by norm_num) (by norm_num) (by norm_num)
      (by norm_num) (by norm_num) (by norm_num)
  rw [eR2, abs_of_nonneg (mul_nonneg (by linarith) r2)] at aR2
  have aP1 := A.pos_ge (a := 3) (b := 4) (e := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) i1
  have aP2 := A.pos_ge (a := 4) (b := 5) (e := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) i2
  have aP3 := A.pos_ge (a := 5) (b := 3) (e := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) i3
  rw [eHF] at aHF
  rw [pts_0, pts_1, pts_7] at aL1
  rw [pts_6, pts_0, pts_7] at aL2
  rw [pts_1, pts_6, pts_7] at aL3
  rw [pts_1, pts_3, pts_2] at aR1
  rw [pts_3, pts_4, pts_8] at aP1
  rw [pts_4, pts_5, pts_8] at aP2
  rw [pts_5, pts_3, pts_8] at aP3
  clear e
  refine ⟨?_, ?_, ?_, aHF, ?_, aR2, ?_, ?_, ?_⟩
  · convert aL1 using 1; unfold sarea; ring
  · convert aL2 using 1; unfold sarea; ring
  · convert aL3 using 1; unfold sarea; ring
  · convert aR1 using 1; unfold sarea; ring
  · convert aP1 using 1; unfold sarea; ring
  · convert aP2 using 1; unfold sarea; ring
  · convert aP3 using 1; unfold sarea; ring

/-- The atoms of the certificate package are nonnegative: the 28 affine factors and
`(1-d)(1-f) - 3s`, from the region bounds (`params`–`inner_bounds`). -/
theorem factors_nonneg (hS : Placement h c d f R X L P) :
    ∀ e ∈ Model.factors ++ [Model.q0], 0 ≤ e.eval (zeta h c d f R X L P) := by
  obtain ⟨aL1, aL2, aL3, aHF, aR1, aR2, aP1, aP2, aP3⟩ := hS.areas
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hfd := hS.f_le_d
  obtain ⟨r0, r1, r2, r3⟩ := hS.rightSq
  obtain ⟨x0, x1, y0, y1⟩ := hS.topSq
  obtain ⟨l0, l1, m0, m1⟩ := hS.sqL
  obtain ⟨p0, p1, q0, q1⟩ := hS.sqP
  have ht0 := two_A₀.1
  set t := 2 * A₀ with ht
  have hc3 : 3 * t ≤ h * c := by linarith
  have hDXF : 3 * t ≤ (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by
    have e : (X.2 - d) * (1 - P.1) - (1 - X.1) * (P.2 - d) +
        ((X.1 - f) * (1 - P.2) - (1 - X.2) * (P.1 - f)) +
        ((1 - d) * (P.1 - f) - (1 - f) * (1 - P.2)) =
        (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) := by ring
    linarith
  obtain ⟨b1, b2, b3, b4, b5, b6, b7⟩ := params (by linarith) hd hh hf (by linarith) hc
    (by linarith) r1 x1 y1 (by linarith) hc3 aHF aR1 aR2 hDXF
  obtain ⟨c1, c2, c3⟩ := cap_bounds (by linarith) b4 b6 x1 y1 (by linarith) (by linarith) hDXF
  obtain ⟨d1, d2, d3⟩ := right_bounds (by linarith) hd b5 b2 b3 r1 r2 aR1 aR2
  obtain ⟨e1, e2, e3, e4, e5⟩ := lower_bounds (by linarith) hh b3 (by linarith) (by linarith) l0 m0
    aL1 aL2 aL3
  obtain ⟨g1, g2, g3, g4⟩ := inner_bounds (by linarith) b4 (by linarith) b6 (by linarith) x1 y1
    (by linarith) (by linarith) p1 q1 aP1 aP2 aP3
  simp only [Model.factors, Model.q0, List.cons_append, List.nil_append, List.forall_mem_cons,
    List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true, eval_minus, eval_times,
    eval_one, eval_v, eval_k, zeta]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

end

/-! ### The complete 25-case cover -/

/-- The enumeration of the radial words inside `OCH`: the five lower words. -/
theorem enum_lower :
    enumW 7 5 (fun w => !(hinside 7 w 0 1 6) || decide (w ∈ Model.lowerW)) 7 [] = true := by
  decide +kernel

/-- The enumeration of the radial words inside `DXF`: the five cap words. -/
theorem enum_cap :
    enumW 7 5 (fun w => !(hinside 7 w 3 4 5) || decide (w ∈ Model.capW)) 7 [] = true := by
  decide +kernel

/-- The radial words of `L, P` for the heptagon `O, C, R, D, X, F, H` (`1 ≤ rᵢ ≤ 5`, complement
relation `HullAntisymm`; 57 words) are one of the five lower words and one of the five cap words;
all 25 pairs are retained, with no further sign split (the ray-order rule `C1OneLowerTopCap.sarea_pos_of_hullWord_lt`
fixes the pair signs where the words differ). -/
theorem exists_rightTopTriangle_words {h c d f : ℝ} {R X L P : Point} (hS : Placement h c d f R X L P) :
    ∃ i j, i < 5 ∧ j < 5 ∧
      HasHullWord (heptagon h c d f R X) L (fun v => (Model.lowerW.getD i []).getD v.val 0) ∧
      HasHullWord (heptagon h c d f R X) P (fun v => (Model.capW.getD j []).getD v.val 0) ∧
      (∀ v : Fin 7, 1 ≤ (Model.lowerW.getD i []).getD v.val 0 ∧
        (Model.lowerW.getD i []).getD v.val 0 ≤ 7 - 2) ∧
      (∀ v : Fin 7, 1 ≤ (Model.capW.getD j []).getD v.val 0 ∧
        (Model.capW.getD j []).getD v.val 0 ≤ 7 - 2) := by
  have A := hS.areaOK
  have hV := convex_heptagon hS
  have hne : ∀ m, m = 7 ∨ m = 8 → ∀ a b : Fin 7, a ≠ b →
      sarea (heptagon h c d f R X a) (heptagon h c d f R X b) (pts h c d f R X L P m) ≠ 0 := by
    intro m hm a b hab
    rw [← pts_heptagon, ← pts_heptagon]
    exact A.ne_zero (by omega) (by omega) (by omega) (fun h => hab (Fin.ext h)) (by omega)
      (by omega)
  obtain ⟨w, hp, hw, hb, hin⟩ := word_of_inTriangle (n := 7) (by norm_num) hV (a := 0) (b := 1)
    (e := 6) (by decide) (by decide) hS.lower (hne 7 (Or.inl rfl)) enum_lower
  obtain ⟨w', hp', hw', hb', hin'⟩ := word_of_inTriangle (n := 7) (by norm_num) hV (a := 3)
    (b := 4) (e := 5) (by decide) (by decide) hS.inner (hne 8 (Or.inr rfl)) enum_cap
  have hin2 : hinside 7 w 0 1 6 = true := hin
  have hin2' : hinside 7 w' 3 4 5 = true := hin'
  simp only [hin2, hin2', Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp hp'
  obtain ⟨i, hi, rfl⟩ := exists_getD_of_mem hp
  obtain ⟨j, hj, rfl⟩ := exists_getD_of_mem hp'
  exact ⟨i, j, hi, hj, hw, hw', hb, hb'⟩

/-! ### The certificate package -/

/-- The certificate package: no placement has any of the 25 word pairs. Each cell is excluded by
a fixed positive combination (one of 15 certificates, converted to the atoms of the cell) of
products of the 28 affine factors, the cost `(1-d)(1-f) - 3s` and the signed actual triangles
with at most one interior point and the ray-order triangles `(v, L, P)` minus `s, 3s, ρ` by
certified occupancy, whose unit-cube bound is negative (kernel check `Model.allCases_ok`). -/
theorem rightTopTriangle_cell_false {h c d f : ℝ} {R X L P : Point} (hS : Placement h c d f R X L P) {i j : ℕ}
    (hi : i < 5) (hj : j < 5)
    (hL : HasHullWord (heptagon h c d f R X) L (fun v => (Model.lowerW.getD i []).getD v.val 0))
    (hP : HasHullWord (heptagon h c d f R X) P (fun v => (Model.capW.getD j []).getD v.val 0))
    (bL : ∀ v : Fin 7, 1 ≤ (Model.lowerW.getD i []).getD v.val 0 ∧
      (Model.lowerW.getD i []).getD v.val 0 ≤ 7 - 2)
    (bP : ∀ v : Fin 7, 1 ≤ (Model.capW.getD j []).getD v.val 0 ∧
      (Model.capW.getD j []).getD v.val 0 ≤ 7 - 2) : False := by
  have C : HullCell 7 (heptagon h c d f R X) (pts h c d f R X L P)
      [Model.lowerW.getD i [], Model.capW.getD j []] := by
    refine ⟨by norm_num, rfl, convex_heptagon hS, pts_heptagon, fun m hm => ?_, fun m hm => ?_,
      hS.areaOK⟩
    · simp only [List.length_cons, List.length_nil] at hm
      interval_cases m
      exacts [hL, hP]
    · simp only [List.length_cons, List.length_nil] at hm
      interval_cases m
      exacts [bL, bP]
  have hk : (i, j) ∈ Model.allCases.map Prod.fst := by
    rw [Model.allCases_keys]
    simp only [List.mem_flatMap, List.mem_range, List.mem_map, Prod.mk.injEq]
    exact ⟨i, hi, j, hj, rfl, rfl⟩
  obtain ⟨p, hp, hpk⟩ := List.mem_map.1 hk
  have hT := List.all_eq_true.1 Model.allCases_ok p hp
  rw [hpk] at hT
  refine tableSpec_false hT (z := zeta h c d f R X L P) ?_ (fun i hi => ptEval_zeta i hi)
    C.area (by decide) (by decide) (factors_nonneg hS) (by simp) C.table_holds
  intro v
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨r0, r1, r2, r3⟩ := hS.rightSq
  obtain ⟨x0, x1, y0, y1⟩ := hS.topSq
  obtain ⟨l0, l1, m0, m1⟩ := hS.sqL
  obtain ⟨p0, p1, q0, q1⟩ := hS.sqP
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith

/-- There is no competitive C1 configuration (with `f ≤ d`) with one lower point `L ∈ OHC`, one
right-cap point `R ∈ CD(1,0) \ CD`, and two top-cap points whose hull with `D, F` is triangular
(named: the outer point `X` and the interior point `P ∈ DXF`). -/
theorem rightTopTriangle_excluded {h c d f : ℝ} {R X L P : Point} (hS : Placement h c d f R X L P) : False := by
  obtain ⟨i, j, hi, hj, hL, hP, bL, bP⟩ := exists_rightTopTriangle_words hS
  exact rightTopTriangle_cell_false hS hi hj hL hP bL bP

end Heilbronn.Nine.C1OneLowerRightTopTriangle
