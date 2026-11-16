module

public import Heilbronn.Nine.C1.OneLower.EightHull
public import Heilbronn.Nine.C1.OneLower.HullB
public import Heilbronn.Nine.C1.OneLower.ConvexTopTrees

/-! # The two remaining convex top hulls with one lower C1 point

Used by `C1OneLowerMixedCaps.lowerCount_eq_one_false` for the occupancy row `(U, R, T, L_cap) = (1, 0, 2, 0)`
with a quadrilateral top hull (mode `upper`) and for the row `(0, 0, 3, 0)` (three top-cap points,
mode `cap`).

**Setting.** The C1 anchors with `0 < d ≤ h < 1`, `0 < f ≤ c < 1`, minimum triangle area at least
`A₀`; configuration `c1Config h c d f X Y L Q` with `L ∈ OHC` and

* `Upper` (mode `upper`): `Q ∈ HCDF`, `X, Y` in the top cap with `D, X, Y, F` convex in this
  cyclic order;
* `ThreeTop` (mode `cap`): `X, Y, Q` in the top cap, in any order; by `C1ZeroLower.Comp.three_top`
  they can be named so that `D, X, Y, F` is the convex top hull and `Q ∈ DFX ∩ DFY`.

In both modes the full hull is the heptagon `O, C, D, X, Y, F, H` (`heptagon`) with interior
points `L, Q`. The proof assumes `f ≤ d` (after transposition). Thresholds `s = 8/73`,
`ρ = 49/60`.

**Results.**
* `upper_or_threeTop_false`, under `f ≤ d` (the caller, `C1OneLowerMixedCaps.lowerCount_eq_one_false`, transposes first).
* `Cell` (a cell of either mode), `Upper.cell`, `exists_cap_cell_of_threeTop` (a renaming of `ThreeTop` is a cell
  of mode `cap`, by `C1ZeroLower.Comp.three_top`), `params` (bounds on the anchors), `Cell.omega`
  (`Ω ≥ 4s` / `Ω > 7/11`), `Cell.common`, `Cell.factors_nonneg` (the affine factors),
  `Cell.cap1` (the capacity-one triangles), `Cell.convex`, `exists_caseKey_hullWords` (the words and the
  capacity filter), `heptagon_cell_false` (the certificate package, kernel-checked in
  `Heilbronn.Nine.C1.OneLower.ConvexTopTrees`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerConvexTop

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Heilbronn.Nine.C1OneLowerB Cover Cert Cert.Expr
open Heilbronn.Nine.Package Heilbronn.Nine.C1OneLower
open Heilbronn.Nine.C1OneLowerTopCap (HullWord HasHullWord)

/-- `s = 8/73 < 2A₀`. -/
local notation "s" => (8 / 73 : ℝ)

/-- `ρ = 49/60 < (4 + 2√3)s`. -/
local notation "ρ" => (49 / 60 : ℝ)

/-! ### The placements -/

/-- The placement of mode `upper`: C1 anchors `0 < d ≤ h < 1`, `0 < f ≤ c < 1`; minimum triangle
area at least `A₀` for `c1Config h c d f X Y L Q`; `L` strictly inside `OHC`; `Q` strictly inside
`HCDF`; `X, Y` in the top cap (possibly on a side of the square) with convex hull `D, X, Y, F` in
this counterclockwise order (`[DXY] > 0`, `[XYF] > 0`). -/
structure Upper (h c d f : ℝ) (X Y L Q : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f X Y L Q)
  lower : InLower h c L
  upper : InUpperQuad h c d f Q
  topX : InTopCap d f X
  topXSq : X ∈ unitSquare
  topY : InTopCap d f Y
  topYSq : Y ∈ unitSquare
  convexDXY : 0 < sarea (ptD d) X Y
  convexXYF : 0 < sarea X Y (ptF f)

/-- The three-top placement: C1 anchors; minimum triangle area at least `A₀` for
`c1Config h c d f X Y L Q`; `L` strictly inside `OHC`; the other three free points `X, Y, Q` in the
top cap (in any order, possibly on a side of the square). -/
structure ThreeTop (h c d f : ℝ) (X Y L Q : Point) : Prop where
  anchors : C1Anchors h c d f
  min : A₀ ≤ minTriangleArea (c1Config h c d f X Y L Q)
  lower : InLower h c L
  topX : InTopCap d f X
  topXSq : X ∈ unitSquare
  topY : InTopCap d f Y
  topYSq : Y ∈ unitSquare
  topQ : InTopCap d f Q
  topQSq : Q ∈ unitSquare

/-- The hull heptagon `V₀, …, V₆ = O, C, D, X, Y, F, H`. -/
def heptagon (h c d f : ℝ) (X Y : Point) : Fin 7 → Point :=
  ![ptO, ptC c, ptD d, X, Y, ptF f, ptH h]

/-! ### Bounds from the occupied top hull -/

/-- Bounds on the anchors from an actual-area bound `t > s`: `hc ≥ 3t`, `hf, cd ≥ t` give
`h, c ≥ 3s`, `d, f ≥ s`; with `f ≤ d` and `Ω = (1-d)(1-f) ≥ 4t` (mode `upper`), `d ≤ 33/65`,
`f ≤ 17/50`; with `Ω > 7/11` (mode `cap`), `d ≤ 204/715`, `f ≤ 13/64` (`Ω ≤ (1-s)(1-d)`,
`Ω ≤ (1-f)²`). -/
theorem params {t h c d f : ℝ} (ht : 8 / 73 < t) (hd : 0 < d) (hh : h < 1) (hf : 0 < f)
    (hc : c < 1) (hfd : f ≤ d) (hdh : d ≤ h) (hfc : f ≤ c)
    (hc3 : 3 * t ≤ h * c) (aHF : t ≤ h * f) (_aCD : t ≤ c * d) :
    24 / 73 ≤ h ∧ 24 / 73 ≤ c ∧ 8 / 73 ≤ d ∧ 8 / 73 ≤ f ∧
      (4 * t ≤ (1 - d) * (1 - f) → d ≤ 33 / 65 ∧ f ≤ 17 / 50) ∧
      (7 / 11 < (1 - d) * (1 - f) → d ≤ 204 / 715 ∧ f ≤ 13 / 64) := by
  have hc0 : 0 < c := by linarith
  have hh0 : 0 < h := by linarith
  have c3 : 3 * t ≤ c := by nlinarith [mul_le_mul_of_nonneg_right hh.le hc0.le]
  have h3 : 3 * t ≤ h := by nlinarith [mul_le_mul_of_nonneg_left hc.le hh0.le]
  have f1 : t ≤ f := by nlinarith [mul_le_mul_of_nonneg_right hh.le hf.le]
  have d1 : t ≤ d := by nlinarith [mul_le_mul_of_nonneg_right hc.le hd.le]
  have hd1 : 0 < 1 - d := by linarith
  have e1 : (1 - d) * (1 - f) ≤ (1 - f) * (1 - f) := by nlinarith
  refine ⟨by linarith, by linarith, by linarith, by linarith, fun hΩ => ⟨?_, ?_⟩,
    fun hΩ => ⟨?_, ?_⟩⟩
  · have := lb_of_prod (by linarith) (show 4 * t ≤ (1 - f) * (1 - d) - 0 by linarith) le_rfl
      (by linarith) (show 1 - f ≤ 65 / 73 by linarith)
    linarith
  · nlinarith
  · have := lb_of_prod (by norm_num) (show 7 / 11 ≤ (1 - f) * (1 - d) - 0 by linarith) le_rfl
      (by linarith) (show 1 - f ≤ 65 / 73 by linarith)
    linarith
  · nlinarith

/-! ### The nine points -/

section

variable {h c d f : ℝ} {X Y L Q : Point}

/-- Where `Q` is in each mode: `HCDF` (`upper`), or beyond `DF` inside `DXF ∩ DYF` (`cap`). -/
def QIn (m : Bool) (h c d f : ℝ) (X Y Q : Point) : Prop :=
  if m then InTriangle Q (ptD d) X (ptF f) ∧ InTriangle Q (ptD d) Y (ptF f) ∧ InTopCap d f Q
  else InUpperQuad h c d f Q

/-- The free points in the order of `c1Config h c d f X Y L Q`. -/
def freeQ (X Y L Q : Point) : Fin 4 → Point := ![X, Y, L, Q]

/-- A cell of either mode (with `f ≤ d`): the competitive configuration `c1Config h c d f X Y L Q`,
`L ∈ OHC`, `X, Y` in the top cap with `D, X, Y, F` convex, and `Q` placed by the mode. -/
structure Cell (m : Bool) (h c d f : ℝ) (X Y L Q : Point) : Prop where
  comp : Comp h c d f (freeQ X Y L Q)
  hfd : f ≤ d
  lower : InLower h c L
  topX : InTopCap d f X
  topY : InTopCap d f Y
  convexDXY : 0 < sarea (ptD d) X Y
  convexXYF : 0 < sarea X Y (ptF f)
  qin : QIn m h c d f X Y Q

/-- The order `O, C, D, X, Y, F, H, L, Q` as indices of `cfg`. -/
def idx : ℕ → ℕ
  | 3 => 5
  | 4 => 6
  | 5 => 3
  | 6 => 4
  | n => n

/-- The nine points `O, C, D, X, Y, F, H, L, Q`. -/
def pts (h c d f : ℝ) (X Y L Q : Point) (i : ℕ) : Point := cfg h c d f (freeQ X Y L Q) (idx i)

theorem idx_lt : ∀ i, i < 9 → idx i < 9 := by decide
theorem idx_inj' : ∀ a, a < 9 → ∀ b, b < 9 → idx a = idx b → a = b := by decide
theorem idx_inj : ∀ a b, a < 9 → b < 9 → idx a = idx b → a = b :=
  fun a b ha hb => idx_inj' a ha b hb

theorem pts_0 : pts h c d f X Y L Q 0 = (0, 0) := rfl
theorem pts_1 : pts h c d f X Y L Q 1 = (c, 0) := rfl
theorem pts_2 : pts h c d f X Y L Q 2 = (1, d) := rfl
theorem pts_3 : pts h c d f X Y L Q 3 = X := rfl
theorem pts_4 : pts h c d f X Y L Q 4 = Y := rfl
theorem pts_5 : pts h c d f X Y L Q 5 = (f, 1) := rfl
theorem pts_6 : pts h c d f X Y L Q 6 = (0, h) := rfl
theorem pts_7 : pts h c d f X Y L Q 7 = L := rfl
theorem pts_8 : pts h c d f X Y L Q 8 = Q := rfl

/-- The variables `h, c, d, f, x_x, x_y, y_x, y_y, ℓ_x, ℓ_y, q_x, q_y` of the certificates. -/
def zeta (h c d f : ℝ) (X Y L Q : Point) : ℕ → ℝ
  | 0 => h
  | 1 => c
  | 2 => d
  | 3 => f
  | 4 => X.1
  | 5 => X.2
  | 6 => Y.1
  | 7 => Y.2
  | 8 => L.1
  | 9 => L.2
  | 10 => Q.1
  | 11 => Q.2
  | _ => 0

theorem ptEval_zeta (i : ℕ) (hi : i < 9) :
    ptEval (zeta h c d f X Y L Q) Model.pt i = pts h c d f X Y L Q i := by
  interval_cases i <;> simp [ptEval, Model.pt, zeta, pts, idx, cfg, freeQ]

variable {m : Bool}

theorem Cell.sq (C : Cell m h c d f X Y L Q) :
    X ∈ unitSquare ∧ Y ∈ unitSquare ∧ L ∈ unitSquare ∧ Q ∈ unitSquare :=
  ⟨C.comp.hQ 0, C.comp.hQ 1, C.comp.hQ 2, C.comp.hQ 3⟩

theorem Cell.areaOK (C : Cell m h c d f X Y L Q) : AreaOK (pts h c d f X Y L Q) :=
  C.comp.areaOK.comp idx idx_lt idx_inj

theorem Cell.uv (C : Cell m h c d f X Y L Q) : 0 < X.1 - Y.1 ∧ 0 < Y.2 - X.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  exact uv_pos (by linarith) (by linarith) C.topX C.topY C.sq.1 C.sq.2.1 C.convexDXY C.convexXYF

/-- The signs `[V X Y] > 0` at the anchors, in `cfg` indices. -/
def xyTable : List SFact := (List.range 5).map fun v => ((v, 5, 6), true)

/-- The anchor, cap and `XY` table gives every increasing triple of the heptagon positive. -/
theorem heptagon_table : ∀ i j k : Fin 7, i < j → j < k →
    orientedLookup (capTable [(5, 3), (6, 3)] ++ xyTable) (idx i) (idx j) (idx k) =
      some true := by
  decide +kernel

/-- The hull heptagon `O, C, D, X, Y, F, H` of a cell (of either mode) is convex
(counterclockwise). -/
theorem Cell.convex (C : Cell m h c d f X Y L Q) : IsConvexPolygon (heptagon h c d f X Y) := by
  have H := C.comp
  have tb := comp_capTable_holds H (ms := [(5, 3), (6, 3)]) (by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 0).2.1 C.topX⟩
    · exact ⟨by norm_num, by norm_num, by norm_num, (comp_capWordAt H 1).2.1 C.topY⟩)
  obtain ⟨hu, hv⟩ := C.uv
  obtain ⟨g0, g1, g2, g3, g4⟩ := xy_pos H.hA hu hv C.convexDXY C.convexXYF
  have tb2 : AllHold (SFact.Holds (cfg h c d f (freeQ X Y L Q))) xyTable := by
    intro g hg
    simp only [xyTable, List.mem_map, List.mem_range] at hg
    obtain ⟨v, hv5, rfl⟩ := hg
    simp only [SFact.Holds, OrientHolds, ite_true]
    interval_cases v
    exacts [g0, g1, g2, g3, g4]
  have := convex_of_table (tb.append tb2) (n := 7) (fun i => idx i.val) heptagon_table
  convert this using 1
  funext i; fin_cases i <;> rfl

theorem pts_heptagon (i : Fin 7) : pts h c d f X Y L Q i.val = heptagon h c d f X Y i := by
  fin_cases i <;> rfl

/-! ### The actual areas -/

/-- The actual areas used by the bounds, each at least `t = 2A₀`. -/
theorem Cell.areas (C : Cell m h c d f X Y L Q) :
    2 * A₀ ≤ c * L.2 ∧ 2 * A₀ ≤ h * L.1 ∧ 2 * A₀ ≤ h * c - h * L.1 - c * L.2 ∧
      2 * A₀ ≤ h * f ∧ 2 * A₀ ≤ c * d ∧
      2 * A₀ ≤ (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      2 * A₀ ≤ (1 - d) * (Y.1 - f) - (1 - f) * (1 - Y.2) ∧
      2 * A₀ ≤ (X.2 - d) * (X.1 - Y.1) - (1 - X.1) * (Y.2 - X.2) ∧
      2 * A₀ ≤ (Y.1 - f) * (Y.2 - X.2) - (1 - Y.2) * (X.1 - Y.1) := by
  have A := C.areaOK
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  obtain ⟨o1, o2, o3⟩ := C.lower
  have hX := C.topX
  have hY := C.topY
  unfold InTopCap at hX hY
  have aL1 := A.pos_ge (a := 0) (b := 1) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o1
  have aL2 := A.pos_ge (a := 6) (b := 0) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o3
  have aL3 := A.pos_ge (a := 1) (b := 6) (e := 7) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) o2
  have eHF : sarea (pts h c d f X Y L Q 0) (pts h c d f X Y L Q 5) (pts h c d f X Y L Q 6) =
      h * f := by rw [pts_0, pts_5, pts_6]; unfold sarea; ring
  have aHF := A.pos_ge (a := 0) (b := 5) (e := 6) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by rw [eHF]; exact mul_pos (by linarith) hf)
  have eCD : sarea (pts h c d f X Y L Q 0) (pts h c d f X Y L Q 1) (pts h c d f X Y L Q 2) =
      c * d := by rw [pts_0, pts_1, pts_2]; unfold sarea; ring
  have aCD := A.pos_ge (a := 0) (b := 1) (e := 2) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) (by rw [eCD]; exact mul_pos (by linarith) hd)
  have aX := A.neg_ge (a := 2) (b := 5) (e := 3) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) hX
  have aY := A.neg_ge (a := 2) (b := 5) (e := 4) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) hY
  have aDXY := A.pos_ge (a := 2) (b := 3) (e := 4) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) C.convexDXY
  have aXYF := A.pos_ge (a := 3) (b := 4) (e := 5) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) C.convexXYF
  rw [eHF] at aHF
  rw [eCD] at aCD
  rw [pts_0, pts_1, pts_7] at aL1
  rw [pts_6, pts_0, pts_7] at aL2
  rw [pts_1, pts_6, pts_7] at aL3
  rw [pts_2, pts_5, pts_3] at aX
  rw [pts_2, pts_5, pts_4] at aY
  rw [pts_2, pts_3, pts_4] at aDXY
  rw [pts_3, pts_4, pts_5] at aXYF
  refine ⟨?_, ?_, ?_, aHF, aCD, ?_, ?_, ?_, ?_⟩
  · convert aL1 using 1; unfold sarea; ring
  · convert aL2 using 1; unfold sarea; ring
  · convert aL3 using 1; unfold sarea; ring
  · convert aX using 1; unfold sarea; ring
  · convert aY using 1; unfold sarea; ring
  · convert aDXY using 1; unfold sarea; ring
  · convert aXYF using 1; unfold sarea; ring

/-- The `Q`-areas of mode `cap`. -/
theorem Cell.areasCap (C : Cell true h c d f X Y L Q) :
    2 * A₀ ≤ (1 - d) * (Q.1 - f) - (1 - f) * (1 - Q.2) ∧
      2 * A₀ ≤ (X.2 - d) * (1 - Q.1) - (1 - X.1) * (Q.2 - d) ∧
      2 * A₀ ≤ (X.1 - f) * (1 - Q.2) - (1 - X.2) * (Q.1 - f) := by
  have A := C.areaOK
  obtain ⟨⟨i1, i2, i3⟩, -, hQ⟩ := C.qin
  unfold InTopCap at hQ
  have a1 := A.neg_ge (a := 2) (b := 5) (e := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) hQ
  have a2 := A.pos_ge (a := 2) (b := 3) (e := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) i1
  have a3 := A.pos_ge (a := 3) (b := 5) (e := 8) (by norm_num) (by norm_num) (by norm_num)
    (by norm_num) (by norm_num) (by norm_num) i2
  rw [pts_2, pts_5, pts_8] at a1
  rw [pts_2, pts_3, pts_8] at a2
  rw [pts_3, pts_5, pts_8] at a3
  refine ⟨?_, ?_, ?_⟩
  · convert a1 using 1; unfold sarea; ring
  · convert a2 using 1; unfold sarea; ring
  · convert a3 using 1; unfold sarea; ring

/-- The top corner area `Ω = (1-d)(1-f)`: in mode `upper`, `Ω ≥ 8A₀ = 4 · 2A₀` by the four-point
convex endpoint lemma (`TypeII.fourPointEndpointLemma`); in mode `cap`, `Ω > 7/11` by the
endpoint-triangle bound for three top-cap points (`C1ZeroLower.Comp.top_three`). -/
theorem Cell.omega (C : Cell m h c d f X Y L Q) :
    (m = false → 4 * (2 * A₀) ≤ (1 - d) * (1 - f)) ∧ (m = true → 7 / 11 < (1 - d) * (1 - f)) := by
  have H := C.comp
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  refine ⟨fun _ => ?_, fun hm => ?_⟩
  · have := (TypeII.fourPointEndpointLemma (1, d) (f, 1) ptE X Y
      (top_mem_hull H.hA C.sq.1 C.topX) (top_mem_hull H.hA C.sq.2.1 C.topY)).2
      (not_triangularHull_four C.topX C.topY C.convexDXY C.convexXYF)
    have hm := H.min_sub (by norm_num) ![2, 3, 5, 6] (by intro a; fin_cases a <;> simp)
      (by decide)
    have e : (fun a => cfg h c d f (freeQ X Y L Q) (![2, 3, 5, 6] a)) = ![(1, d), (f, 1), X, Y] := by
      funext a; fin_cases a <;> rfl
    rw [e] at hm
    rw [triangleArea_eq] at this
    simp only [sarea] at this ⊢
    rw [abs_of_nonpos (by nlinarith)] at this
    nlinarith
  · subst hm
    have hQ : InTopCap d f (freeQ X Y L Q 3) := C.qin.2.2
    have := H.top_three (i := 0) (j := 1) (l := 3) (by decide) (by decide) (by decide) C.topX
      C.topY hQ
    unfold topCapArea at this; exact this

/-! ### The affine factors -/

/-- The bounds common to both modes. -/
theorem Cell.common (C : Cell m h c d f X Y L Q) :
    24 / 73 ≤ h ∧ 24 / 73 ≤ c ∧ 8 / 73 ≤ d ∧ 8 / 73 ≤ f ∧
      8 / 65 ≤ X.1 - f ∧ 8 / 65 ≤ X.2 - d ∧ 8 / 65 ≤ Y.1 - f ∧ 8 / 65 ≤ Y.2 - d ∧
      8 / 73 ≤ X.1 - Y.1 ∧ 8 / 73 ≤ Y.2 - X.2 ∧
      8 / 73 ≤ L.1 ∧ 8 / 73 ≤ L.2 ∧ 16 / 73 ≤ c - L.1 ∧ 16 / 73 ≤ h - L.2 ∧
      8 / 73 ≤ 1 - L.1 - L.2 ∧
      (4 * (2 * A₀) ≤ (1 - d) * (1 - f) → d ≤ 33 / 65 ∧ f ≤ 17 / 50) ∧
      (7 / 11 < (1 - d) * (1 - f) → d ≤ 204 / 715 ∧ f ≤ 13 / 64) := by
  obtain ⟨aL1, aL2, aL3, aHF, aCD, aX, aY, aDXY, aXYF⟩ := C.areas
  obtain ⟨hu, hv⟩ := C.uv
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  have hfd := C.hfd
  obtain ⟨⟨x0, x1, y0, y1⟩, ⟨u0, u1, v0, v1⟩, ⟨l0, l1, m0, m1⟩, -⟩ := C.sq
  have ht0 := two_A₀.1
  set t := 2 * A₀ with ht
  have hc3 : 3 * t ≤ h * c := by linarith
  obtain ⟨b1, b2, b3, b4, bu, bc⟩ := params (by linarith) hd hh hf hc hfd hdh hfc hc3 aHF aCD
  obtain ⟨cx1, cx2⟩ := cap_pt (by linarith) b3 b4 (by linarith) (by linarith) x1 y1 aX
  obtain ⟨cy1, cy2⟩ := cap_pt (by linarith) b3 b4 (by linarith) (by linarith) u1 v1 aY
  have g1 := ge_s (by linarith) aDXY (mul_nonneg (by linarith) hv.le) (by linarith) (by linarith)
  have g2 := ge_s (by linarith) aXYF (mul_nonneg (by linarith) hu.le) (by linarith) (by linarith)
  obtain ⟨e1, e2, e3, e4, e5⟩ := lower_bounds1 (by linarith) hh hc (by linarith) (by linarith) l0
    m0 aL1 aL2 aL3
  exact ⟨b1, b2, b3, b4, cx1, cx2, cy1, cy2, g1, g2, e1, e2, e3, e4, e5, bu, bc⟩

/-- The atoms of mode `upper` are nonnegative: the 30 affine factors `Model.factors false` and
`Ω - 4s`. -/
theorem Cell.factors_upper (C : Cell false h c d f X Y L Q) :
    ∀ e ∈ Model.factors false ++ [Model.q0 false], 0 ≤ e.eval (zeta h c d f X Y L Q) := by
  obtain ⟨b1, b2, b3, b4, cx1, cx2, cy1, cy2, g1, g2, e1, e2, e3, e4, e5, bu, -⟩ := C.common
  have hO := C.omega.1 rfl
  obtain ⟨k1, k2⟩ := bu hO
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  obtain ⟨⟨x0, x1, y0, y1⟩, ⟨u0, u1, v0, v1⟩, -, -⟩ := C.sq
  have ht0 := two_A₀.1
  have hU : InUpperQuad h c d f (freeQ X Y L Q 3) := C.qin
  obtain ⟨w1, w2⟩ := C.comp.upper_row 3 hU
  obtain ⟨w3, w4⟩ := C.comp.coord_ge 3
  change Q.1 ≤ 1 - 2 * A₀ at w1
  change Q.2 ≤ 1 - 2 * A₀ at w2
  change 2 * A₀ ≤ Q.1 at w3
  change 2 * A₀ ≤ Q.2 at w4
  have hfd := C.hfd
  clear C
  simp only [Model.factors, Model.q0, List.cons_append, List.nil_append,
    List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true,
    eval_minus, eval_times, eval_one, eval_v, eval_k, zeta, Bool.false_eq_true, ite_false]
  push_cast
  and_intros
  all_goals linarith

/-- The atoms of mode `cap` are nonnegative: the 30 affine factors `Model.factors true` and
`Ω - 7/11`. -/
theorem Cell.factors_cap (C : Cell true h c d f X Y L Q) :
    ∀ e ∈ Model.factors true ++ [Model.q0 true], 0 ≤ e.eval (zeta h c d f X Y L Q) := by
  obtain ⟨b1, b2, b3, b4, cx1, cx2, cy1, cy2, g1, g2, e1, e2, e3, e4, e5, -, bc⟩ := C.common
  have hO := C.omega.2 rfl
  obtain ⟨k1, k2⟩ := bc hO
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  obtain ⟨⟨x0, x1, y0, y1⟩, ⟨u0, u1, v0, v1⟩, -, ⟨p0, p1, q0, q1⟩⟩ := C.sq
  have ht0 := two_A₀.1
  obtain ⟨aQ, aDXQ, aXFQ⟩ := C.areasCap
  have hfd := C.hfd
  clear C
  obtain ⟨cq1, cq2⟩ := cap_pt (by linarith) b3 b4 (by linarith) (by linarith) p1 q1 aQ
  have r1 := lb_of_prod (by linarith) aDXQ (mul_nonneg (by linarith) (by linarith))
    (by linarith) (show X.2 - d ≤ 1 by linarith)
  have r2 := lb_of_prod (by linarith) aXFQ (mul_nonneg (by linarith) (by linarith))
    (by linarith) (show X.1 - f ≤ 1 by linarith)
  rw [div_one] at r1 r2
  simp only [Model.factors, Model.q0, List.cons_append, List.nil_append,
    List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true, and_true,
    eval_minus, eval_times, eval_one, eval_v, eval_k, zeta, ↓reduceIte]
  push_cast
  and_intros
  all_goals linarith

theorem Cell.factors_nonneg (C : Cell m h c d f X Y L Q) :
    ∀ e ∈ Model.factors m ++ [Model.q0 m], 0 ≤ e.eval (zeta h c d f X Y L Q) := by
  cases m
  · exact C.factors_upper
  · exact C.factors_cap

/-! ### The capacity-one triangles -/

/-- Under `f ≤ d`: `[OCD] = cd ≤ d < ρ`, `[OFH] = fh ≤ f < ρ` (`params`) and `[HDF] < ρ`
(`C1ZeroLower.Comp.hdf_lt`), so none of the triangles `OCD, OFH, HDF` (heptagon indices
`(0,1,2), (0,5,6), (2,5,6)`) contains both `L` and `Q` (two-interior-point lemma). -/
theorem Cell.cap1 (C : Cell m h c d f X Y L Q) {a b e : ℕ}
    (ht : (a, b, e) = (0, 1, 2) ∨ (a, b, e) = (0, 5, 6) ∨ (a, b, e) = (2, 5, 6))
    (hL : InTriangle L (pts h c d f X Y L Q a) (pts h c d f X Y L Q b) (pts h c d f X Y L Q e))
    (hQ : InTriangle Q (pts h c d f X Y L Q a) (pts h c d f X Y L Q b)
      (pts h c d f X Y L Q e)) : False := by
  have A := C.areaOK
  have hb : a < 9 ∧ b < 9 ∧ e < 9 ∧ [a, b, e, 7, 8].Nodup := by
    rcases ht with h1 | h1 | h1 <;> simp only [Prod.mk.injEq] at h1 <;>
      obtain ⟨rfl, rfl, rfl⟩ := h1 <;> decide
  have := A.two_inside (j₁ := 7) (j₂ := 8) hb.1 hb.2.1 hb.2.2.1 (by norm_num) (by norm_num)
    hb.2.2.2 (Or.inl hL) (Or.inl hQ)
  obtain ⟨aL1, aL2, aL3, aHF, aCD, aX, aY, aDXY, aXYF⟩ := C.areas
  obtain ⟨hΩu, hΩc⟩ := C.omega
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  have ht0 := two_A₀.1
  obtain ⟨b1, b2, b3, b4, bu, bc⟩ := params (by linarith) hd hh hf hc C.hfd hdh hfc
    (by linarith) aHF aCD
  have hdf : d ≤ 33 / 65 ∧ f ≤ 17 / 50 := by
    cases m
    · exact bu (hΩu rfl)
    · obtain ⟨k1, k2⟩ := bc (hΩc rfl); constructor <;> linarith
  rcases ht with h1 | h1 | h1 <;> simp only [Prod.mk.injEq] at h1 <;> obtain ⟨rfl, rfl, rfl⟩ := h1
  · rw [pts_0, pts_1, pts_2] at this
    simp only [sarea] at this
    rw [abs_of_nonneg (by nlinarith)] at this
    nlinarith
  · rw [pts_0, pts_5, pts_6] at this
    simp only [sarea] at this
    rw [abs_of_nonneg (by nlinarith)] at this
    nlinarith
  · rw [pts_2, pts_5, pts_6] at this
    have hU := C.comp.hdf_lt C.hfd
    rw [abs_of_pos (by simp only [sarea]; nlinarith)] at this
    linarith

end

/-! ### The radial and pair-line cover -/

/-- The enumeration of the radial words of a point inside `OCH`: the five lower words
`Model.lowerW`. -/
theorem enum_lower :
    enumW 7 5 (fun w => !(hinside 7 w 0 1 6) || decide (w ∈ Model.lowerW)) 7 [] = true := by
  decide +kernel

/-- The enumeration of the radial words of a point of `HCDF`: the 33 `Q`-words of mode
`upper`. -/
theorem enum_upper :
    enumW 7 5 (fun w => !(hsign 7 w 6 1 && hsign 7 w 1 2 && hsign 7 w 2 5 && hsign 7 w 5 6) ||
      decide (w ∈ Model.upperW)) 7 [] = true := by
  decide +kernel

/-- The enumeration of the radial words of a point of `DXF ∩ DYF` beyond `DF`: the 10 `Q`-words
of mode `cap`. -/
theorem enum_cap :
    enumW 7 5 (fun w => !(hinside 7 w 2 3 5 && hinside 7 w 2 4 5 && !hsign 7 w 2 5) ||
      decide (w ∈ Model.capW)) 7 [] = true := by
  decide +kernel

/-- The capacity filter: the words do not place both points in one of the capacity-one
triangles `(0,5,6), (0,1,2), (2,5,6)`. -/
def capFilter (wl wq : List ℕ) : Bool :=
  !((hinside 7 wl 0 5 6 && hinside 7 wq 0 5 6) || (hinside 7 wl 0 1 2 && hinside 7 wq 0 1 2) ||
    (hinside 7 wl 2 5 6 && hinside 7 wq 2 5 6))

/-- The base pairs passing the capacity filter are the cells of the kernel-checked package (157
`upper`, 50 `cap`). -/
theorem cases_keysB (m : Bool) : ((List.range 5).all fun i =>
    (List.range (Model.qW m).length).all fun j =>
      !(capFilter (Model.lowerW.getD i []) ((Model.qW m).getD j [])) ||
        Model.caseKeys.contains (m, i, j)) = true := by
  cases m <;> decide +kernel

theorem cases_keys (m : Bool) {i j : ℕ} (hi : i < 5) (hj : j < (Model.qW m).length)
    (hc : capFilter (Model.lowerW.getD i []) ((Model.qW m).getD j []) = true) :
    (m, i, j) ∈ Model.caseKeys := by
  have := List.all_eq_true.1 (List.all_eq_true.1 (cases_keysB m) i (List.mem_range.2 hi)) j
    (List.mem_range.2 hj)
  rw [hc] at this
  simpa using this

/-- The radial words of `L, Q` for the hull heptagon (entries `1 ≤ rᵢ ≤ 5`) are a lower word of
`Model.lowerW` and a `Q`-word of the mode, forming a base pair that passes the capacity filter
(by `Cell.cap1`), so it is a key of `Model.caseKeys`. Some of these pairs are split further, in
the trees of the package, by the signs of actual triangles. -/
theorem exists_caseKey_hullWords {m : Bool} {h c d f : ℝ} {X Y L Q : Point} (C : Cell m h c d f X Y L Q) :
    ∃ i j, (m, i, j) ∈ Model.caseKeys ∧
      HasHullWord (heptagon h c d f X Y) L (fun v => (Model.lowerW.getD i []).getD v.val 0) ∧
      HasHullWord (heptagon h c d f X Y) Q (fun v => ((Model.qW m).getD j []).getD v.val 0) ∧
      (∀ v : Fin 7, 1 ≤ (Model.lowerW.getD i []).getD v.val 0 ∧
        (Model.lowerW.getD i []).getD v.val 0 ≤ 7 - 2) ∧
      (∀ v : Fin 7, 1 ≤ ((Model.qW m).getD j []).getD v.val 0 ∧
        ((Model.qW m).getD j []).getD v.val 0 ≤ 7 - 2) := by
  have A := C.areaOK
  have hV := C.convex
  have hne : ∀ k, k = 7 ∨ k = 8 → ∀ a b : Fin 7, a ≠ b →
      sarea (heptagon h c d f X Y a) (heptagon h c d f X Y b) (pts h c d f X Y L Q k) ≠ 0 := by
    intro k hk a b hab
    rw [← pts_heptagon, ← pts_heptagon]
    exact A.ne_zero (by omega) (by omega) (by omega) (fun h => hab (Fin.ext h)) (by omega)
      (by omega)
  -- the word of `L`
  obtain ⟨w, hp, hw, hb, hin⟩ := word_of_inTriangle (n := 7) (by norm_num) hV (a := 0) (b := 1)
    (e := 6) (by decide) (by decide) C.lower (hne 7 (Or.inl rfl)) enum_lower
  have hin2 : hinside 7 w 0 1 6 = true := hin
  simp only [hin2, Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp
  obtain ⟨i, hi, rfl⟩ := exists_getD_of_mem hp
  -- the word of `Q`
  have hQ : ∃ j, j < (Model.qW m).length ∧
      HasHullWord (heptagon h c d f X Y) Q (fun v => ((Model.qW m).getD j []).getD v.val 0) ∧
      (∀ v : Fin 7, 1 ≤ ((Model.qW m).getD j []).getD v.val 0 ∧
        ((Model.qW m).getD j []).getD v.val 0 ≤ 7 - 2) := by
    have qin := C.qin
    cases m
    · have hU : InUpperQuad h c d f Q := qin
      have hin : ∀ v : Fin 7, 0 < sarea (heptagon h c d f X Y v)
          (heptagon h c d f X Y (v + 1)) Q := by
        have hne' : sarea (ptH h) (ptD d) Q ≠ 0 := by
          have := A.ne_zero (a := 6) (b := 2) (e := 8) (by norm_num) (by norm_num) (by norm_num)
            (by norm_num) (by norm_num) (by norm_num)
          exact this
        rcases upper_inTriangle hU hne' with h1 | h1
        · exact inTriangle_edges (a := 1) (b := 2) (c := 6) (by norm_num) hV (by decide)
            (by decide) h1
        · exact inTriangle_edges (a := 2) (b := 5) (c := 6) (by norm_num) hV (by decide)
            (by decide) h1
      obtain ⟨w', hp', hw', hb'⟩ := word_of_edges hV hin (hne 8 (Or.inr rfl)) enum_upper
      obtain ⟨u1, u2, u3, u4⟩ := hU
      have s1 := hsign_of_pos hw' (i := 6) (j := 1) (by decide) u1
      have s2 := hsign_of_pos hw' (i := 1) (j := 2) (by decide) u2
      have s3 := hsign_of_pos hw' (i := 2) (j := 5) (by decide) u3
      have s4 := hsign_of_pos hw' (i := 5) (j := 6) (by decide) u4
      have e : (hsign 7 w' 6 1 && hsign 7 w' 1 2 && hsign 7 w' 2 5 && hsign 7 w' 5 6) = true := by
        simp only [Bool.and_eq_true]; exact ⟨⟨⟨s1, s2⟩, s3⟩, s4⟩
      simp only [e, Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp'
      obtain ⟨j, hj, rfl⟩ := exists_getD_of_mem hp'
      exact ⟨j, hj, hw', hb'⟩
    · obtain ⟨hX, hY, hT⟩ := qin
      obtain ⟨w', hp', hw', hb', hin'⟩ := word_of_inTriangle (n := 7) (by norm_num) hV (a := 2)
        (b := 3) (e := 5) (by decide) (by decide) hX (hne 8 (Or.inr rfl)) enum_cap
      obtain ⟨y1, y2, y3⟩ := hY
      have s1 := hsign_of_pos hw' (i := 2) (j := 4) (by decide) y1
      have s2 := hsign_of_pos hw' (i := 4) (j := 5) (by decide) y2
      have s3 := hsign_of_pos hw' (i := 5) (j := 2) (by decide) y3
      have s4 := hsign_of_neg hw' (i := 2) (j := 5) (by decide) hT
      have hin2' : hinside 7 w' 2 3 5 = true := hin'
      have e : (hinside 7 w' 2 3 5 && hinside 7 w' 2 4 5 && !hsign 7 w' 2 5) = true := by
        simp only [hinside, Bool.and_eq_true, Bool.not_eq_true']
        simp only [hinside, Bool.and_eq_true] at hin2'
        exact ⟨⟨hin2', ⟨s1, s2⟩, s3⟩, s4⟩
      simp only [e, Bool.not_true, Bool.false_or, decide_eq_true_eq] at hp'
      obtain ⟨j, hj, rfl⟩ := exists_getD_of_mem hp'
      exact ⟨j, hj, hw', hb'⟩
  obtain ⟨j, hj, hwq, hbq⟩ := hQ
  refine ⟨i, j, cases_keys m hi hj ?_, hw, hwq, hb, hbq⟩
  -- the capacity filter
  unfold capFilter
  rw [Bool.not_eq_true']
  by_contra hcf
  simp only [Bool.not_eq_false, Bool.or_eq_true, Bool.and_eq_true] at hcf
  have ins : ∀ {a b e : Fin 7}, a ≠ b → b ≠ e → a ≠ e →
      hinside 7 (Model.lowerW.getD i []) a b e = true →
      hinside 7 ((Model.qW m).getD j []) a b e = true →
      InTriangle L (pts h c d f X Y L Q a) (pts h c d f X Y L Q b) (pts h c d f X Y L Q e) ∧
        InTriangle Q (pts h c d f X Y L Q a) (pts h c d f X Y L Q b)
          (pts h c d f X Y L Q e) := by
    intro a b e hab hbe hae h1 h2
    rw [pts_heptagon, pts_heptagon, pts_heptagon]
    exact ⟨inTriangle_of_hinside hw hab hbe hae h1, inTriangle_of_hinside hwq hab hbe hae h2⟩
  rcases hcf with (⟨h1, h2⟩ | ⟨h1, h2⟩) | ⟨h1, h2⟩
  · obtain ⟨i1, i2⟩ := ins (a := 0) (b := 5) (e := 6) (by decide) (by decide) (by decide) h1 h2
    exact C.cap1 (Or.inr (Or.inl rfl)) i1 i2
  · obtain ⟨i1, i2⟩ := ins (a := 0) (b := 1) (e := 2) (by decide) (by decide) (by decide) h1 h2
    exact C.cap1 (Or.inl rfl) i1 i2
  · obtain ⟨i1, i2⟩ := ins (a := 2) (b := 5) (e := 6) (by decide) (by decide) (by decide) h1 h2
    exact C.cap1 (Or.inr (Or.inr rfl)) i1 i2

/-! ### The certificate package -/

/-- The certificate package: under `f ≤ d`, no cell of either mode exists. Each of the 168
(`upper`) and 52 (`cap`) terminal cells (the base pairs divided by the signs of the listed actual
triangles) is excluded by a fixed positive combination of products of the 30 affine factors
`Model.factors`, the cost `(1-d)(1-f) - ω` and the signed actual-triangle areas minus `s, 3s, ρ`
by certified occupancy, whose unit-cube bound is negative (kernel check `Model.allCases_ok`). -/
theorem heptagon_cell_false {m : Bool} {h c d f : ℝ} {X Y L Q : Point} (C : Cell m h c d f X Y L Q) : False := by
  obtain ⟨i, j, hk, hL, hQ, bL, bQ⟩ := exists_caseKey_hullWords C
  have HC : HullCell 7 (heptagon h c d f X Y) (pts h c d f X Y L Q)
      [Model.lowerW.getD i [], (Model.qW m).getD j []] := by
    refine ⟨by norm_num, rfl, C.convex, pts_heptagon, fun k hk => ?_, fun k hk => ?_, C.areaOK⟩
    · simp only [List.length_cons, List.length_nil] at hk
      interval_cases k
      exacts [hL, hQ]
    · simp only [List.length_cons, List.length_nil] at hk
      interval_cases k
      exacts [bL, bQ]
  rw [← Model.caseKeys_eq] at hk
  obtain ⟨p, hp, hpk⟩ := List.mem_map.1 hk
  have hT := Model.allCases_ok p hp
  rw [hpk] at hT
  refine tableSpec_false hT (z := zeta h c d f X Y L Q) ?_ (fun i hi => ptEval_zeta i hi)
    HC.area (by decide) (by decide) C.factors_nonneg (by simp) HC.table_holds
  intro v
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := C.comp.hA
  obtain ⟨⟨x0, x1, y0, y1⟩, ⟨u0, u1, v0, v1⟩, ⟨l0, l1, m0, m1⟩, ⟨p0, p1, q0, q1⟩⟩ := C.sq
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith

/-! ### The two placements -/

/-- The placement `Upper` is a cell of mode `upper`. -/
theorem Upper.cell {h c d f : ℝ} {X Y L Q : Point} (hS : Upper h c d f X Y L Q) (hfd : f ≤ d) :
    Cell false h c d f X Y L Q := by
  obtain ⟨a0, a1, a2, a3, a4⟩ := sq_anchor hS.anchors
  have hL : L ∈ unitSquare := inSquare_of_inTriangle hS.lower a0 a1 a4
  have hQ : Q ∈ unitSquare := by
    -- `Q` is in `CDH` or `DFH` (the area `[HDQ]` is not zero)
    have hne : sarea (ptH h) (ptD d) Q ≠ 0 := by
      have h0 : A₀ ≤ triangleArea (ptH h) (ptD d) Q :=
        area_of_le_min hS.min (4 : Fin 9) 2 8 (by decide) (by decide) (by decide)
      rw [triangleArea_eq] at h0
      intro e; rw [e, abs_zero] at h0; linarith [A₀_pos]
    rcases upper_inTriangle hS.upper hne with h1 | h1
    · exact inSquare_of_inTriangle h1 a1 a2 a4
    · exact inSquare_of_inTriangle h1 a2 a3 a4
  exact ⟨⟨hS.anchors, fun i => by fin_cases i; exacts [hS.topXSq, hS.topYSq, hL, hQ], hS.min⟩,
    hfd, hS.lower, hS.topX, hS.topY, hS.convexDXY, hS.convexXYF, hS.upper⟩

/-- In the placement `ThreeTop`, `C1ZeroLower.Comp.three_top` names the three top points so that
`D, X, Y, F` is the convex top hull and the third point lies in `DFX ∩ DFY`: some renaming of the
placement is a cell of mode `cap`. -/
theorem exists_cap_cell_of_threeTop {h c d f : ℝ} {X Y L Q : Point} (hS : ThreeTop h c d f X Y L Q) (hfd : f ≤ d) :
    ∃ X' Y' Q' : Point, Cell true h c d f X' Y' L Q' := by
  obtain ⟨a0, a1, a2, a3, a4⟩ := sq_anchor hS.anchors
  have hL : L ∈ unitSquare := inSquare_of_inTriangle hS.lower a0 a1 a4
  have H : Comp h c d f ![X, Y, Q, L] := by
    have H0 : Comp h c d f (freeQ X Y L Q) :=
      ⟨hS.anchors, fun i => by fin_cases i; exacts [hS.topXSq, hS.topYSq, hL, hS.topQSq], hS.min⟩
    have := H0.relabel (Equiv.swap 2 3)
    convert this using 1
    funext i; fin_cases i <;> rfl
  have topc : ∀ k : Fin 3, InTopCap d f (![X, Y, Q, L] k.castSucc) := by
    intro k; fin_cases k
    exacts [hS.topX, hS.topY, hS.topQ]
  obtain ⟨σ, c1, c2, i1, i2, -⟩ := H.three_top topc
  set Q4 : Fin 4 → Point := ![X, Y, Q, L] with hQ4
  set ι : Fin 4 → Fin 4 := ![(σ 1).castSucc, (σ 0).castSucc, 3, (σ 2).castSucc] with hι
  have hinj : Function.Injective ι := by
    intro a b hab
    have hσ := σ.injective
    fin_cases a <;> fin_cases b <;> simp only [hι, Fin.isValue] at hab ⊢ <;>
      first
      | (exfalso; exact absurd (Fin.castSucc_injective _ hab) (fun h => by
          have := hσ h; revert this; decide))
      | (exfalso; exact Fin.castSucc_ne_last _ hab)
      | (exfalso; exact Fin.castSucc_ne_last _ hab.symm)
  have H' := H.relabel (Equiv.ofBijective ι (Finite.injective_iff_bijective.1 hinj))
  refine ⟨Q4 (σ 1).castSucc, Q4 (σ 0).castSucc, Q4 (σ 2).castSucc, ⟨?_, hfd, hS.lower,
    topc _, topc _, c1, c2, ⟨i1, i2, topc _⟩⟩⟩
  convert H' using 1
  funext i; fin_cases i <;> rfl

/-- Under `f ≤ d`, neither placement is competitive: `Upper` (`L ∈ OHC`, `Q ∈ HCDF`, and two
top-cap points `X, Y` with convex hull `D, X, Y, F` in that cyclic order) and `ThreeTop`
(`L ∈ OHC` and the other three free points in the top cap). -/
theorem upper_or_threeTop_false {h c d f : ℝ} {X Y L Q : Point} (hfd : f ≤ d)
    (hS : Upper h c d f X Y L Q ∨ ThreeTop h c d f X Y L Q) : False := by
  rcases hS with hS | hS
  · exact heptagon_cell_false (hS.cell hfd)
  · obtain ⟨X', Y', Q', C⟩ := exists_cap_cell_of_threeTop hS hfd
    exact heptagon_cell_false C

end Heilbronn.Nine.C1OneLowerConvexTop
