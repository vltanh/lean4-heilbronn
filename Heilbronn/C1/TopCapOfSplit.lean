module

public import Heilbronn.C1.Setting

/-! # A complete lower-ray exclusion in the remaining C1 top-cap case
(`hand/C1_TOP_CAP_OF_SPLIT.md`)

Role: a component on the primary route: `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 4
(lines 260-261). Its §2 (`f < x < c` and the cap elimination `R(h, c, f) ≥ 0`) is reused by
`hand/C1_TOP_CAP_COMMON_CELL.md` and `hand/C1_TOP_CAP_CONTAINMENT_PAIR.md`.

Setting (lines 3-34; `OneCapSetting`): the C1 anchors with the weak conditions
`0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`; a competitive nine-point configuration
`c1Config h c d f L M X P` (least area at least `A₀`; `s = 8/73`, `K = 4 + 2√3`, `ρ = 49/60`);
two lower points `L, M` inside `OHC`, one top-cap point `X = (x, Y)` beyond `DF`, one point `P`
inside the anchor pentagon (above `HC`); after the reflection allowed by the side-ear and radial
theorems, `P, M ∈ OCX` and `L ∈ OHX`. The output of the theorem, both lower points in `OCF`, is
the common-cell placement `CommonCellSetting` used by the later notes.

Results:
* `eq1`: (1) `hc, cY ≥ Ks > ρ`;
* `eq2_3`: if `L` is on the `H`-side of `OF`: `L ∈ OHF`, `M ∈ OCF`, the transferred bounds (3)
  and `u·Z(p) ≥ sc(h + 1)` (2) (`p = hc`, `u = hf`);
* `eq4_5`: the tangent bound `Z(p) ≤ (48p - 266s)/23` (4) and `f ≥ f₀(h, c)` (5);
* `claim_x_lt_c`: `f < x < c` and `f ≤ c - s` (6) (independent of the side of `L`);
* `eq7_10`: the cap elimination (7)–(10), `R(h, c, f) ≥ 0`;
* `claim_certificate`: `R < 0` on `f₀ ≤ f ≤ c - s`, `ρ ≤ hc ≤ c ≤ 1`;
* `theorem_main` (**Theorem**): `L` is not on the `H`-side of `OF`; both lower points lie in
  `OCF`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1TopCapOfSplit

open Heilbronn.C1

/-- The reduced one-top-cap placement (`C1_TOP_CAP_OF_SPLIT.md` (1), `C1_TOP_CAP_SIDE_EARS.md`
(5)): weak anchors; the nine-point configuration `c1Config h c d f L M X P` with least area at
least `A₀`; `L, M` strictly inside `OHC`; `X` in the top cap beyond `DF`; `P` in the open upper
quadrilateral `HCDF` (inside the pentagon, above `HC`); and, after the reflection, `P, M` inside
`OCX`, `L` inside `OHX`. -/
structure OneCapSetting (h c d f : ℝ) (L M X P : Point) : Prop where
  anchors : C1AnchorsWeak h c d f
  memL : L ∈ unitSquare
  memM : M ∈ unitSquare
  memX : X ∈ unitSquare
  memP : P ∈ unitSquare
  competitive : A₀ ≤ minTriangleArea (c1Config h c d f L M X P)
  lowerL : InLower h c L
  lowerM : InLower h c M
  capX : InTopCap d f X
  upperP : InUpperQuad h c d f P
  P_OCX : InTriangle P ptO (ptC c) X
  M_OCX : InTriangle M ptO (ptC c) X
  L_OXH : InTriangle L ptO X (ptH h)

/-- The common-cell placement (`C1_TOP_CAP_COMMON_CELL.md`, lines 18-30): the reduced one-cap
placement with both lower points also inside `OCF`, i.e. `L, M ∈ OHC ∩ OCF`. -/
structure CommonCellSetting (h c d f : ℝ) (L M X P : Point) : Prop
    extends OneCapSetting h c d f L M X P where
  L_OCF : InTriangle L ptO (ptC c) (ptF f)
  M_OCF : InTriangle M ptO (ptC c) (ptF f)

/-- `Z(p) = (p + √(p² - 8sp + 4s²))/2`, `s = 8/73`. -/
def bigZ (p : ℝ) : ℝ := (p + Real.sqrt (p ^ 2 - 8 * (8 / 73) * p + 4 * (8 / 73) ^ 2)) / 2

/-- `f₀(h, c) = 23sc(h + 1)/(h(48hc - 266s))` of (5). -/
def fLow (h c : ℝ) : ℝ := 23 * (8 / 73) * c * (h + 1) / (h * (48 * h * c - 266 * (8 / 73)))

/-- `Z₀ = c(1 - h) + hf`. -/
def capZ0 (h c f : ℝ) : ℝ := c * (1 - h) + h * f

/-- `B = (c - f)(1 - h + hf - s) - f(c - 1)`. -/
def capB (h c f : ℝ) : ℝ := (c - f) * (1 - h + h * f - 8 / 73) - f * (c - 1)

/-- `E₀ = c(1 - h + hf - s) - fρ`. -/
def capE0 (h c f : ℝ) : ℝ := c * (1 - h + h * f - 8 / 73) - f * (49 / 60)

/-- `E₁ = c(1 - h)`. -/
def capE1 (h c : ℝ) : ℝ := c * (1 - h)

/-- `Q(v) = -Z₀v² + Bv - sf(c - f)` of (8). -/
def capQ (h c f v : ℝ) : ℝ := -capZ0 h c f * v ^ 2 + capB h c f * v - 8 / 73 * f * (c - f)

/-- `R(h, c, f) = (B - ωE₁)² - 4Z₀{sf(c - f) - ωE₀}` of (10), `ω = 5/64`. -/
def capR (h c f : ℝ) : ℝ :=
  (capB h c f - 5 / 64 * capE1 h c) ^ 2 -
    4 * capZ0 h c f * (8 / 73 * f * (c - f) - 5 / 64 * capE0 h c f)

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:eq1`, made-up id; (1)). In the reduced one-cap placement,
`hc ≥ Ks > ρ` and `cY ≥ Ks > ρ` (`K = 4 + 2√3`, `s = 8/73`, `ρ = 49/60`).
`hand/C1_TOP_CAP_OF_SPLIT.md`, lines 13-19.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq1 {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c * X.2 ∧
      (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) := by
  sorry

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:eq2-3`). In the reduced one-cap placement, if `L` is on the
`H`-side of `OF` (`[OFL] > 0`), then `L ∈ OHC ∩ OHF` and `M ∈ OHC ∩ OCF`; the transferred
parameter inequality (3) holds for `L = (ℓ, z)`: `s(h + 1)/(fh) ≤ z` and `cz ≤ Z(p)`; hence
`u·Z(p) ≥ sc(h + 1)` (2), where `p = hc`, `u = hf`, `s = 8/73`. `hand/C1_TOP_CAP_OF_SPLIT.md`,
lines 36-99.
Uses: TYPE_II_COMPLETION:Lemma7, CORNER_FAMILIES:TwoInteriorPointLemma,
C1_TOP_CAP_OF_SPLIT:claim-x-lt-c. -/
-- FLAG (lines 60-99): TYPE_II_COMPLETION Lemma 7 is stated only at `s = 7/64` (and for Type-II
-- positions); it is used here at the threshold `σ = s/c`. Its proof (TYPE_II_COMPLETION
-- §6.3 (14)-(15), §6.4 (18)-(19), lines 727-758) is threshold-generic, and the manuscript
-- re-lists the steps (lines 84-98); a general-threshold Lemma 7 must be stated and proved.
theorem eq2_3 {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P)
    (hLH : 0 < sarea ptO (ptF f) L) :
    InTriangle L ptO (ptF f) (ptH h) ∧ InTriangle M ptO (ptC c) (ptF f) ∧
      8 / 73 * (h + 1) / (f * h) ≤ L.2 ∧ c * L.2 ≤ bigZ (h * c) ∧
      8 / 73 * c * (h + 1) ≤ h * f * bigZ (h * c) := by
  sorry

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:eq4-5`). For `p ≥ ρ`, `Z(p) ≤ (48p - 266s)/23` (4); hence,
in the reduced one-cap placement with `L` on the `H`-side of `OF`,
`f ≥ f₀(h, c) = 23sc(h + 1)/(h(48hc - 266s))` (5). `hand/C1_TOP_CAP_OF_SPLIT.md`,
lines 101-123.
Uses: C1_TOP_CAP_OF_SPLIT:eq2-3. -/
theorem eq4_5 :
    (∀ p : ℝ, 49 / 60 ≤ p → bigZ p ≤ (48 * p - 266 * (8 / 73)) / 23) ∧
      ∀ {h c d f : ℝ} {L M X P : Point}, OneCapSetting h c d f L M X P →
        0 < sarea ptO (ptF f) L → fLow h c ≤ f := by
  sorry

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:claim-x-lt-c`, made-up id). In the reduced one-cap placement
(independently of the side of `L`), `f < x < c` and `f ≤ c - s` (6), `X = (x, Y)`, `s = 8/73`.
`hand/C1_TOP_CAP_OF_SPLIT.md`, lines 125-155.
Uses: C1_TOP_CAP_OF_SPLIT:eq1. -/
theorem claim_x_lt_c {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P) :
    f < X.1 ∧ X.1 < c ∧ f ≤ c - 8 / 73 := by
  sorry

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:eq7-10`, the cap elimination). In the reduced one-cap
placement (independently of the side of `L`), with `X = (x, Y)`, `r = -[DFX]`, `β = [CDX]`,
`v = 1 - x`: `(c - x)r + (x - f)β = (1 - x){(c - f)Y - (c - x)} ≥ s(c - f)` (7);
`Q(v) ≥ 0` (8); `E(v) = E₀ - E₁v ≥ 0` (9); hence `R(h, c, f) ≥ 0` (10).
`hand/C1_TOP_CAP_OF_SPLIT.md`, lines 157-207.
Uses: C1_TOP_CAP_OF_SPLIT:eq1, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c. -/
theorem eq7_10 {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P) :
    (c - X.1) * -sarea (ptD d) (ptF f) X + (X.1 - f) * sarea (ptC c) (ptD d) X =
        (1 - X.1) * ((c - f) * X.2 - (c - X.1)) ∧
      8 / 73 * (c - f) ≤ (1 - X.1) * ((c - f) * X.2 - (c - X.1)) ∧
      0 ≤ capQ h c f (1 - X.1) ∧ 0 ≤ capE0 h c f - capE1 h c * (1 - X.1) ∧
      0 ≤ capR h c f := by
  sorry

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:claim-certificate`, made-up id). `R(h, c, f) < 0` whenever
`ρ ≤ hc ≤ c ≤ 1` and `f₀(h, c) ≤ f ≤ c - s`. In the manuscript: with `p = hc`,
`f = (ℓ + Wθ)/D`, the five scaled quartic Bernstein coefficients `N_k(p, c)` (11)–(12) have all
tensor Bernstein coefficients below `-2` on three rectangles of `(H₀, C₀)`; checked by
`hand/check_c1_top_cap_of_split.py`. `hand/C1_TOP_CAP_OF_SPLIT.md`, lines 209-292. -/
theorem claim_certificate (h c f : ℝ) (hp : 49 / 60 ≤ h * c) (hpc : h * c ≤ c) (hc : c ≤ 1)
    (hf : fLow h c ≤ f) (hf' : f ≤ c - 8 / 73) :
    capR h c f < 0 := by
  sorry

/-- **Theorem** (`C1_TOP_CAP_OF_SPLIT:Theorem`). In the reduced one-cap placement, `L` is not on
the `H`-side of `OF`: the lower pair does not straddle `OF`, and both lower points lie in `OCF`.
(Relative to the reflection choosing `P ∈ OCX`; the reflected statement applies when
`P ∈ OHX`.) `hand/C1_TOP_CAP_OF_SPLIT.md`, lines 28-34 and 294-298.
Uses: C1_TOP_CAP_OF_SPLIT:eq2-3, C1_TOP_CAP_OF_SPLIT:eq4-5, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c,
C1_TOP_CAP_OF_SPLIT:eq7-10, C1_TOP_CAP_OF_SPLIT:claim-certificate. -/
theorem theorem_main {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P) :
    ¬ 0 < sarea ptO (ptF f) L ∧ InTriangle L ptO (ptC c) (ptF f) ∧
      InTriangle M ptO (ptC c) (ptF f) := by
  sorry

end Heilbronn.C1TopCapOfSplit
