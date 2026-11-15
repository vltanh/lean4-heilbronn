module

public import Heilbronn.C1.TopCapConvexPair

/-! # Complete exclusion of two C1 points beyond the top edge
(`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 3.
With `hand/C1_TOP_CAP_CONVEX_PAIR.md` (convex upper hull) it excludes both remaining free points
in the top cap.

Setting (lines 3-17): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`,
`s = 8/73`, `ρ = 49/60`; a competitive nine-point configuration `c1Config h c d f L M X Y`
(least area at least `A₀`) with `L, M` inside `OHC` (so `hc > ρ`), and `X, Y` in the closed top
cap with `X` strictly inside `DFY` (triangular upper hull).

Definitions: `T = 1 - df`, and the four necessary polynomials `F₀, …, F₃` of (5)–(8) as
functions of `(h, c, d, f, r)` with `r = -[DFY]`.

Results:
* `eq1_3`: `a = [ODY] > 0`, `b > 0`, `r = a + b - T ≥ 3s`, and, when `[OXY] > 0`,
  `a(r - s) ≥ s(2r + T)` (3);
* `eq5_8`: `F₀, F₁ ≥ 0`, and `F₂, F₃ ≥ 0` when `[OXY] > 0`;
* `claim_reduction`: the necessary system holds at a point of the box (10) at `hc = ρ`;
* `claim_certificate`: no point of the box (10) satisfies all four (51 Bernstein leaves);
* `theorem_main` (**Theorem**): the two remaining points cannot both lie in the top cap.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapTriangularPair

open Heilbronn.C1 Heilbronn.C1TopCapConvexPair

/-- `T = 1 - df` (1). -/
def capT (d f : ℝ) : ℝ := 1 - d * f

/-- `F₀ = AU - s(A + U) - Δr` (5), `s = 8/73`. -/
def poly0 (h c d f r : ℝ) : ℝ :=
  areaA c d f * areaU h d f - 8 / 73 * (areaA c d f + areaU h d f) - areaΔ h c d f * r

/-- `F₁ = (1 - f)(U - s) - fr` (6). -/
def poly1 (h d f r : ℝ) : ℝ := (1 - f) * (areaU h d f - 8 / 73) - f * r

/-- `F₂ = {T(1 - d) - dr}(r - s) - s(1 - d)(2r + T)` (7). -/
def poly2 (d f r : ℝ) : ℝ :=
  (capT d f * (1 - d) - d * r) * (r - 8 / 73) - 8 / 73 * (1 - d) * (2 * r + capT d f)

/-- `F₃ = {T(U - s) + (T - h)r}(r - s) - sU(2r + T)` (8). -/
def poly3 (h d f r : ℝ) : ℝ :=
  (capT d f * (areaU h d f - 8 / 73) + (capT d f - h) * r) * (r - 8 / 73) -
    8 / 73 * areaU h d f * (2 * r + capT d f)

/-- The triangular-hull setting of the note: weak anchors, the nine-point configuration with
least area at least `A₀`, `L, M` strictly inside `OHC`, `X, Y` in the closed top cap, and `X`
strictly inside `DFY`. -/
structure Setting (h c d f : ℝ) (L M X Y : Point) : Prop where
  anchors : C1AnchorsWeak h c d f
  memL : L ∈ unitSquare
  memM : M ∈ unitSquare
  memX : X ∈ unitSquare
  memY : Y ∈ unitSquare
  competitive : A₀ ≤ minTriangleArea (c1Config h c d f L M X Y)
  lowerL : InLower h c L
  lowerM : InLower h c M
  capX : sarea (ptD d) (ptF f) X ≤ 0
  capY : sarea (ptD d) (ptF f) Y ≤ 0
  X_DFY : InsideTri X (ptD d) (ptF f) Y

/-- **Claim** (`C1_TOP_CAP_TRIANGULAR_PAIR:eq1-3`). In the setting, with `Y = (x, y)`:
`a = y - dx = [ODY] > 0`, `b = x - fy > 0`, `r = -[DFY] = a + b - T` with `T = 1 - df`, and
`r ≥ 3s` (2) (`s = 8/73`); if `[OXY] > 0` (arranged by transposition), then `[OXY] ≥ s` gives
`a(r - s) ≥ s(2r + T)` (3). `hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 28-70. -/
theorem eq1_3 {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y) :
    0 < Y.2 - d * Y.1 ∧ 0 < Y.1 - f * Y.2 ∧
      -sarea (ptD d) (ptF f) Y = (Y.2 - d * Y.1) + (Y.1 - f * Y.2) - capT d f ∧
      3 * (8 / 73) ≤ -sarea (ptD d) (ptF f) Y ∧
      (0 < sarea ptO X Y →
        (Y.2 - d * Y.1) * (-sarea (ptD d) (ptF f) Y - 8 / 73) ≥
          8 / 73 * (2 * -sarea (ptD d) (ptF f) Y + capT d f)) := by
  sorry

/-- **Claim** (`C1_TOP_CAP_TRIANGULAR_PAIR:eq5-8`). In the setting, with `r = -[DFY]`:
`F₀ ≥ 0` (5) and `F₁ ≥ 0` (6); and if `[OXY] > 0`, also `F₂ ≥ 0` (7) and `F₃ ≥ 0` (8).
`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 72-144.
Uses: C1_TOP_CAP_CONVEX_PAIR:eq1-2, C1_TOP_CAP_CONVEX_PAIR:eq3-5,
C1_TOP_CAP_TRIANGULAR_PAIR:eq1-3. -/
theorem eq5_8 {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y) :
    0 ≤ poly0 h c d f (-sarea (ptD d) (ptF f) Y) ∧
      0 ≤ poly1 h d f (-sarea (ptD d) (ptF f) Y) ∧
      (0 < sarea ptO X Y →
        0 ≤ poly2 d f (-sarea (ptD d) (ptF f) Y) ∧
          0 ≤ poly3 h d f (-sarea (ptD d) (ptF f) Y)) := by
  sorry

/-- **Claim** (`C1_TOP_CAP_TRIANGULAR_PAIR:claim-reduction`, made-up id). In the setting with
`[OXY] > 0`: `F₀ ≥ 0`, `Δ > 0` and `r ≥ 3s` give `B > 0`, so the decreasing path of
CONVEX_PAIR §3 applies; along it the cap costs of `X, Y` increase and the remaining costs are
unchanged, so (5)–(8) hold at `hc = ρ`. Hence `F₀, …, F₃ ≥ 0` at a point of the box (10):
`ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ`, `3s ≤ r ≤ (1 - s)²`, in the parametrization (9) (`reducedHCDF`).
`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 146-203.
Uses: C1_TOP_CAP_CONVEX_PAIR:claim-reduction, C1_TOP_CAP_TRIANGULAR_PAIR:eq5-8. -/
-- Note: the reduction is a relaxation of the derived inequalities (the cap costs of `X, Y` are
-- recomputed at the decreased `h, c`), not a statement about the functions `F₀, …, F₃` alone.
theorem claim_reduction {h c d f : ℝ} {L M X Y : Point} (hS : Setting h c d f L M X Y)
    (hOXY : 0 < sarea ptO X Y) :
    ∃ h' u v r : ℝ, 49 / 60 ≤ h' ∧ h' ≤ 1 ∧ 8 / 73 ≤ u ∧ u ≤ 49 / 60 ∧
      8 / 73 ≤ v ∧ v ≤ 49 / 60 ∧ 3 * (8 / 73) ≤ r ∧ r ≤ (1 - 8 / 73) ^ 2 ∧
      0 ≤ poly0 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.1 (reducedHCDF h' u v).2.2.1
          (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly1 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly2 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r ∧
      0 ≤ poly3 (reducedHCDF h' u v).1 (reducedHCDF h' u v).2.2.1 (reducedHCDF h' u v).2.2.2 r := by
  sorry

/-- **Claim** (`C1_TOP_CAP_TRIANGULAR_PAIR:claim-certificate`, made-up id). At every point of the
box (10), `ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ`, `3s ≤ r ≤ (1 - s)²`, in the parametrization (9), one of
`F₀, …, F₃` is negative. In the manuscript: 51 fixed dyadic boxes in `(H, U₀, V, R)` (depth at
most 18), each labelled `i` with all tensor Bernstein coefficients of `P₀ = hF₀`, `P₁ = hF₁`,
`P₂ = F₂` or `P₃ = F₃` negative; checked by `hand/check_c1_top_cap_triangular_pair.py`.
`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 205-276. -/
theorem claim_certificate (h u v r : ℝ) (hh : 49 / 60 ≤ h) (hh' : h ≤ 1)
    (hu : 8 / 73 ≤ u) (hu' : u ≤ 49 / 60) (hv : 8 / 73 ≤ v) (hv' : v ≤ 49 / 60)
    (hr : 3 * (8 / 73) ≤ r) (hr' : r ≤ (1 - 8 / 73) ^ 2) :
    poly0 (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
        (reducedHCDF h u v).2.2.2 r < 0 ∨
      poly1 (reducedHCDF h u v).1 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r < 0 ∨
      poly2 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r < 0 ∨
      poly3 (reducedHCDF h u v).1 (reducedHCDF h u v).2.2.1 (reducedHCDF h u v).2.2.2 r < 0 := by
  sorry

/-- **Theorem** (`C1_TOP_CAP_TRIANGULAR_PAIR:Theorem`). In a competitive nine-point C1
configuration `c1Config h c d f L M X Y` (weak anchor conditions, least area at least `A₀`) with
`L, M` strictly inside `OHC`, the two remaining points `X, Y` cannot both lie in the closed top
cap `conv{D, F, (1,1)}` (either hull, either order, either sign of `[OXY]`).
`hand/C1_TOP_CAP_TRIANGULAR_PAIR.md`, lines 19-26 and 278-286.
Uses: C1_TOP_CAP_CONVEX_PAIR:Theorem, C1_TOP_CAP_TRIANGULAR_PAIR:eq1-3,
C1_TOP_CAP_TRIANGULAR_PAIR:eq5-8, C1_TOP_CAP_TRIANGULAR_PAIR:claim-reduction,
C1_TOP_CAP_TRIANGULAR_PAIR:claim-certificate. -/
theorem theorem_main {h c d f : ℝ} {L M X Y : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X Y))
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hXc : sarea (ptD d) (ptF f) X ≤ 0) (hYc : sarea (ptD d) (ptF f) Y ≤ 0) : False := by
  sorry

end Heilbronn.C1TopCapTriangularPair
