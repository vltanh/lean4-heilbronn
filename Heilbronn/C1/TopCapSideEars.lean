module

public import Heilbronn.C1.TopCapConvexPair

/-! # The two side ears of a C1 top-cap extension are empty (`hand/C1_TOP_CAP_SIDE_EARS.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 4
(lines 256-257).

Setting (lines 3-14): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`,
`s = 8/73 < 2A₀`, `ρ = 49/60`; a competitive nine-point configuration `c1Config h c d f L M X P`
(least area at least `A₀`) with two free points `L, M` inside `OHC` (used only through
`hc ≥ (4 + 2√3)s > ρ`) and a top-cap point `X` beyond `DF`.

Results:
* `eq3`: the scalar inequality `J* = AU - s(A + 3U + Δ) < 0` (3) under the relaxed conditions
  `hc ≥ ρ`, `hf, cd, A, U ≥ s`;
* `claim_certificate`: `hJ* < 0` on the box `ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ` of (4) (two halves);
* `theorem_main` (**Theorem**): `-[HFX] < 3s` and `[CDX] < 3s`, so neither side ear `HFX`,
  `CDX` contains a further actual point;
* `claim_consequence`: with one further point `P` in the pentagon, `P` lies inside `OCXH`, the
  lower points are split by `OX`, and the containing-area bounds (5).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapSideEars

open Heilbronn.C1 Heilbronn.C1TopCapConvexPair

/-- `J* = AU - s(A + 3U + Δ)` of (3), `s = 8/73`. -/
def jStar (h c d f : ℝ) : ℝ :=
  areaA c d f * areaU h d f - 8 / 73 * (areaA c d f + 3 * areaU h d f + areaΔ h c d f)

/-- **Claim** (`C1_TOP_CAP_SIDE_EARS:eq3`, made-up id). Under the weak anchor conditions and the
relaxed conditions `hc ≥ ρ = 49/60`, `hf, cd, A, U ≥ s = 8/73`: `J* = AU - s(A + 3U + Δ) < 0`
(3). By transposition (which exchanges `A, U` and fixes `Δ`) also `AU - s(3A + U + Δ) < 0`,
excluding (2). `hand/C1_TOP_CAP_SIDE_EARS.md`, lines 16-129.
Uses: C1_TOP_CAP_CONVEX_PAIR:eq1-2, C1_TOP_CAP_CONVEX_PAIR:claim-reduction,
C1_TOP_CAP_SIDE_EARS:claim-certificate. -/
theorem eq3 {h c d f : ℝ} (hA : C1AnchorsWeak h c d f) (hhc : 49 / 60 ≤ h * c)
    (hhf : 8 / 73 ≤ h * f) (hcd : 8 / 73 ≤ c * d) (hA' : 8 / 73 ≤ areaA c d f)
    (hU : 8 / 73 ≤ areaU h d f) :
    jStar h c d f < 0 := by
  sorry

/-- **Claim** (`C1_TOP_CAP_SIDE_EARS:claim-certificate`, made-up id). In the parametrization (4)
at `hc = ρ` (`reducedHCDF`), `hJ* < 0` throughout the box `ρ ≤ h ≤ 1`, `s ≤ u, v ≤ ρ`. In the
manuscript: the `v` interval is halved, and on each half all 27 tensor Bernstein coefficients of
`hJ*` (degree `(2,2,2)`) are negative (largest `-4376159983/274490395200` and
`-1816566733/112036896000`); checked by `hand/check_c1_top_cap_side_ears.py`.
`hand/C1_TOP_CAP_SIDE_EARS.md`, lines 105-129. -/
theorem claim_certificate (h u v : ℝ) (hh : 49 / 60 ≤ h) (hh' : h ≤ 1)
    (hu : 8 / 73 ≤ u) (hu' : u ≤ 49 / 60) (hv : 8 / 73 ≤ v) (hv' : v ≤ 49 / 60) :
    h * jStar (reducedHCDF h u v).1 (reducedHCDF h u v).2.1 (reducedHCDF h u v).2.2.1
      (reducedHCDF h u v).2.2.2 < 0 := by
  sorry

/-- **Theorem** (`C1_TOP_CAP_SIDE_EARS:Theorem`). In a competitive nine-point C1 configuration
`c1Config h c d f L M X P` (weak anchor conditions, least area at least `A₀`) with `L, M`
strictly inside `OHC` and `X` in the top cap beyond `DF`: both side ears have doubled area less
than `3s`, `-[HFX] < 3s` and `[CDX] < 3s` (`s = 8/73`), so neither `HFX` nor `CDX` contains a
further actual point. `hand/C1_TOP_CAP_SIDE_EARS.md`, lines 16-20 and 120-129.
Uses: C1_TOP_CAP_CONVEX_PAIR:eq1-2, C1_TOP_CAP_CONVEX_PAIR:eq3-5, C1_TOP_CAP_SIDE_EARS:eq3,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem_main {h c d f : ℝ} {L M X P : Point} (hA : C1AnchorsWeak h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hP : P ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X P))
    (hLl : InLower h c L) (hMl : InLower h c M) (hXc : InTopCap d f X) :
    -sarea (ptH h) (ptF f) X < 3 * (8 / 73) ∧ sarea (ptC c) (ptD d) X < 3 * (8 / 73) ∧
      ∀ i, ¬ InsideTri (freePt L M X P i) (ptH h) (ptF f) X ∧
        ¬ InsideTri (freePt L M X P i) (ptC c) (ptD d) X := by
  sorry

/-- **Claim** (`C1_TOP_CAP_SIDE_EARS:claim-consequence`, made-up id). In the setting of the
theorem, with the ninth point `P` inside the anchor pentagon above `HC` (open `HCDF`): `P` lies
strictly inside the quadrilateral `OCXH` (the hexagon `OCDXFH` is `OCXH` with the two empty
ears); the lower points lie one in `OXH` and one in `OCX` (radial split); `P` lies in `OCX` or
`OXH`; `hc ≥ Ks`; and the triangle holding `P` gives `cy ≥ Ks` (for `OCX`) or `hx ≥ Ks` (for
`OXH`), `X = (x, y)`, `K = 4 + 2√3`, `s = 8/73`. Transposition exchanges the two alternatives,
giving (5): `P, M ∈ OCX`, `L ∈ OHX`, `hc, cy ≥ Ks`. `hand/C1_TOP_CAP_SIDE_EARS.md`,
lines 131-156.
Uses: C1_TOP_CAP_SIDE_EARS:Theorem, C1_TOP_CAP_RADIAL_SPLIT:Theorem,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_consequence {h c d f : ℝ} {L M X P : Point} (hA : C1AnchorsWeak h c d f)
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
  sorry

end Heilbronn.C1TopCapSideEars
