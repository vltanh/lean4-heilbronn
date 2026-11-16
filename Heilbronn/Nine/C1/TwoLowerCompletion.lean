module

public import Heilbronn.Nine.C1.MixedPentagon
public import Heilbronn.Nine.C1.TwoLowerSideCap
public import Heilbronn.Nine.C1.TopCapRadialSplit
public import Heilbronn.Nine.C1.TopCapSideEars
public import Heilbronn.Nine.C1.TopCapTriangularPair
public import Heilbronn.Nine.C1.TopCapCommonCell
public import Heilbronn.Nine.C1.TopCapContainmentPair

/-! # Completion of the C1 family with two lower points (`docs/proof/nine/C1_TWO_LOWER_COMPLETION.md`)

Role: on the primary route, `docs/proof/nine/UNRESTRICTED.md` row `n₀ = 2` (line 98) is closed by
**Theorem 2** (`theorem2`): every C1 configuration with exactly two of its four free points
inside `OHC` has an actual triangle of area below `A₀`. Theorem 1 (the final same-side one-cap
placement) is the last component of its assembly.

Setting (lines 3-16): the C1 anchors with the weak conditions `0 < d ≤ h ≤ 1`,
`0 < f ≤ c ≤ 1`; least area at least `A₀`; `s = 8/73 < 2A₀`, `K = 4 + 2√3`, `ρ = 49/60 < Ks`.
Theorem 1 works in the common-cell placement `CommonCellSetting` (`L, M ∈ OHC ∩ OCF`, top-cap
`X = (x, Y)`, `P` in the pentagon above `HC`, `L ∈ OHX`, `M, P ∈ OCX`; (1)) with the pair-line
case putting `O, C` on one side of `LM` and `H, F` on the other (2).

Definitions: `xStar` (9), `capG0` (7), `capG1` (8), and the polynomial `quadP` of (10).

Results:
* `claim_CXL`: the orientation (2), `M, P` strictly inside `CXL`, and `[CXL] ≥ Ks` (4);
* `eq7_9`: `G₀, G₁ ≥ 0`, `x ≤ x*`, and both still hold at `x = x*`;
* `eq11`: `P(h, c, Y) < 0` on `[ρ, 1]³` (27 Bernstein coefficients);
* `theorem1` (**Theorem 1**): the final one-cap placement is impossible;
* `theorem2` (**Theorem 2**): the two-lower C1 class is excluded.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1TwoLowerCompletion

open Heilbronn.Nine.C1 Heilbronn.Nine.C1TopCapOfSplit Heilbronn.Nine.C1TwoLower Heilbronn.Nine.C1TopCapConvexPair

/-- `x* = c + ((1 - c)Y - s)/h` of (9), `s = 8/73`. -/
def xStar (h c Y : ℝ) : ℝ := c + ((1 - c) * Y - 8 / 73) / h

/-- `G₀ = aT - sc(1 + Y)` of (7), with `a = x - fY`, `T = cY + s - ρ`. -/
def capG0 (c f x Y : ℝ) : ℝ := (x - f * Y) * (c * Y + 8 / 73 - 49 / 60) - 8 / 73 * c * (1 + Y)

/-- `G₁ = aU - s(1 + Y){(1 - h)(c - x) + fY}` of (8), with `a = x - fY`,
`U = (1 - h)(cY - ρ) + Y(hf - s)`. -/
def capG1 (h c f x Y : ℝ) : ℝ :=
  (x - f * Y) * ((1 - h) * (c * Y - 49 / 60) + Y * (h * f - 8 / 73)) -
    8 / 73 * (1 + Y) * ((1 - h) * (c - x) + f * Y)

/-- The polynomial `P = B² + 4hC₀` of (10), the maximum over `f` of `4h(G₁ + (5/4)G₀)` at
`x = x*`, where `U₀ = (1 - h)(cY - ρ) - sY`, `T = cY + s - ρ`,
`B = hx* - U₀ - s(1 + Y) - (5/4)T`,
`C₀ = x*(U₀ + (5/4)T) - s(1 + Y){(1 - h)(c - x*) + (5/4)c}`. -/
def quadP (h c Y : ℝ) : ℝ :=
  let U₀ := (1 - h) * (c * Y - 49 / 60) - 8 / 73 * Y
  let T := c * Y + 8 / 73 - 49 / 60
  let x := xStar h c Y
  let B := h * x - U₀ - 8 / 73 * (1 + Y) - 5 / 4 * T
  let C₀ := x * (U₀ + 5 / 4 * T) - 8 / 73 * (1 + Y) * ((1 - h) * (c - x) + 5 / 4 * c)
  B ^ 2 + 4 * h * C₀

/-- **Claim** (`C1_TWO_LOWER_COMPLETION:claim-CXL`, made-up id). In the common-cell placement with
`O, C` on one side of `LM` and `H, F` on the other: the orientation (2)
`[LMO], [LMC] < 0 < [LMH], [LMF]` holds; `M` and `P` are strictly inside the actual triangle
`CXL` (counterclockwise `C, X, L`); hence `[CXL] = (c - ℓ)Y - (c - x)y ≥ Ks > ρ` (4), with
`L = (ℓ, y)`, `X = (x, Y)`. `docs/proof/nine/C1_TWO_LOWER_COMPLETION.md`, lines 52-89.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c. -/
theorem claim_CXL {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hOC : SameSide L M ptO (ptC c)) (hHF : SameSide L M (ptH h) (ptF f))
    (hOH : OppSide L M ptO (ptH h)) :
    (sarea L M ptO < 0 ∧ sarea L M (ptC c) < 0 ∧ 0 < sarea L M (ptH h) ∧
        0 < sarea L M (ptF f)) ∧
      InTriangle M (ptC c) X L ∧ InTriangle P (ptC c) X L ∧
      sarea (ptC c) X L = (c - L.1) * X.2 - (c - X.1) * L.2 ∧
      (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ sarea (ptC c) X L := by
  have hO := C1TopCapCommonCell.cc_LMO hS
  unfold SameSide at hOC hHF; unfold OppSide at hOH
  have hC : sarea L M (ptC c) < 0 := by
    by_contra hn; push Not at hn; nlinarith [mul_nonpos_of_nonpos_of_nonneg hO.le hn]
  have hH : 0 < sarea L M (ptH h) := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hO.le hn]
  have hF : 0 < sarea L M (ptF f) := by
    by_contra hn; push Not at hn; nlinarith [mul_nonpos_of_nonneg_of_nonpos hH.le hn]
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := C1TopCapCommonCell.cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have y0 := hS.memX.2.2.1
  have hY0 : 0 < X.2 := by nlinarith
  -- `[HCX] > 0`, `[HCP] > 0`
  have hHCX : 0 < sarea (ptH h) (ptC c) X := by
    have := hS.M_OCX
    obtain ⟨m1, m2, m3⟩ := this
    have e : sarea (ptH h) (ptC c) X = c * (X.2 - h) + h * X.1 := by
      simp only [sarea, ptH, ptC]; ring
    have h8 : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] := min8 hS.competitive
    obtain ⟨-, -, -, -, -, -, -, -, hHC, -, -⟩ :=
      C1TopCapRadialSplit.rs_cap (L := L) (M := M) (X := X)
        ⟨hS.anchors, hS.memL, hS.memM, hS.memX, h8, hS.lowerL, hS.lowerM, hS.capX.le⟩
    exact hHC
  have hHCP : 0 < sarea (ptH h) (ptC c) P := hS.upperP.1
  -- the Plücker identity at `C` for a point `V` above `HC`
  have plk : ∀ V : Point, 0 < sarea (ptH h) (ptC c) V → 0 < sarea ptO (ptC c) V →
      0 < sarea (ptC c) V L := by
    intro V hV1 hV2
    have g := gp (ptC c) V (ptH h) ptO L
    have q1 : sarea (ptC c) (ptH h) ptO = h * c := by simp only [sarea, ptC, ptH, ptO]; ring
    have q2 : sarea (ptC c) V ptO = sarea ptO (ptC c) V := by simp only [sarea]; ring
    have q3 : sarea (ptC c) V (ptH h) = sarea (ptH h) (ptC c) V := by simp only [sarea]; ring
    have q4 : sarea (ptC c) ptO L = -sarea ptO (ptC c) L := by simp only [sarea]; ring
    rw [q1, q2, q3, q4] at g
    have p1 := mul_pos hV2 hS.lowerL.2.1
    have p2 := mul_pos hV1 hS.lowerL.1
    have : 0 < sarea (ptC c) V L * (h * c) := by rw [g]; linarith
    exact pos_of_mul_pos_left this (mul_pos h0 c0).le
  have hOCX : 0 < sarea ptO (ptC c) X := by
    have e : sarea ptO (ptC c) X = c * X.2 := by simp only [sarea, ptO, ptC]; ring
    rw [e]; exact mul_pos c0 hY0
  have hCXL := plk X hHCX hOCX
  have hCPL := plk P hHCP hS.P_OCX.1
  -- `[XL·] > 0` on `OCX`
  have hXL : ∀ V : Point, InTriangle V ptO (ptC c) X → 0 < sarea X L V := by
    intro V ⟨v1, v2, v3⟩
    have e : sarea X L V * sarea ptO (ptC c) X = sarea X L ptO * sarea (ptC c) X V +
        sarea X L (ptC c) * sarea X ptO V + sarea X L X * sarea ptO (ptC c) V := by
      simp only [sarea]; ring
    have q1 : sarea X L ptO = sarea ptO X L := by simp only [sarea]; ring
    have q2 : sarea X L (ptC c) = sarea (ptC c) X L := by simp only [sarea]; ring
    have q3 : sarea X L X = 0 := by simp only [sarea]; ring
    rw [q1, q2, q3] at e
    have p1 := mul_pos hS.L_OXH.1 v2
    have p2 := mul_pos hCXL v3
    have : 0 < sarea X L V * sarea ptO (ptC c) X := by rw [e]; linarith
    exact pos_of_mul_pos_left this hOCX.le
  have hinM : InTriangle M (ptC c) X L :=
    ⟨hS.M_OCX.2.1, hXL M hS.M_OCX, by have := sarea_swap₂₃ L M (ptC c); linarith⟩
  have hinP : InTriangle P (ptC c) X L :=
    ⟨hS.P_OCX.2.1, hXL P hS.P_OCX, by have := sarea_cycle L (ptC c) P; linarith⟩
  have hK : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ |sarea (ptC c) X L| :=
    two_in hS.competitive 1 7 5 6 8 (by decide) (Or.inl hinM) (Or.inl hinP)
  rw [abs_of_pos hCXL] at hK
  exact ⟨⟨hO, hC, hH, hF⟩, hinM, hinP, by simp only [sarea, ptC]; ring, hK⟩

set_option linter.unusedVariables false in
/-- (5)–(9) in scalar form. -/
theorem scal_7_9 {h c d f x Y l y : ℝ} (h0 : 0 < h) (hh : h ≤ 1) (c0 : 0 < c) (hdh : d ≤ h)
    (hxc : x < c) (hY0 : 0 < Y) (ha : 0 < x - f * Y) (hT : 0 < c * Y + 8 / 73 - 49 / 60)
    (hOFL : 8 / 73 ≤ l - f * y) (hHFL : 8 / 73 ≤ h * f + (1 - h) * l - f * y)
    (hOXL : 8 / 73 ≤ x * y - Y * l) (hCXL : 49 / 60 ≤ (c - l) * Y - (c - x) * y)
    (hCDX : 8 / 73 ≤ (1 - c) * Y + d * (c - x)) (hfY : 0 < f * Y) :
    0 ≤ capG0 c f x Y ∧ 0 ≤ capG1 h c f x Y ∧
      0 < (1 - h) * (c * Y - 49 / 60) + Y * (h * f - 8 / 73) ∧ x ≤ xStar h c Y ∧
      0 ≤ capG0 c f (xStar h c Y) Y ∧ 0 ≤ capG1 h c f (xStar h c Y) Y := by
  set a := x - f * Y with hadef
  have h6 : 8 / 73 * (1 + Y) ≤ a * y := by
    have := mul_le_mul_of_nonneg_left hOFL hY0.le; nlinarith
  have hB0 : 0 < c - x + f * Y := by linarith
  have k1 : (c - x + f * Y) * y ≤ (c - 8 / 73) * Y - 49 / 60 := by
    have := mul_le_mul_of_nonneg_left hOFL hY0.le; nlinarith
  have hG0 : 0 ≤ capG0 c f x Y := by
    unfold capG0
    have q1 := mul_le_mul_of_nonneg_left h6 hB0.le
    have q2 := mul_le_mul_of_nonneg_left k1 ha.le
    nlinarith
  set B1 := (1 - h) * (c - x) + f * Y with hB1d
  have hB1 : 0 < B1 := by
    have := mul_nonneg (show (0 : ℝ) ≤ 1 - h by linarith) (show (0 : ℝ) ≤ c - x by linarith)
    simp only [hB1d]; linarith
  have k2 : B1 * y ≤ (1 - h) * (c * Y - 49 / 60) + Y * (h * f - 8 / 73) := by
    have q1 := mul_le_mul_of_nonneg_left hHFL hY0.le
    have q2 := mul_le_mul_of_nonneg_left hCXL (show (0 : ℝ) ≤ 1 - h by linarith)
    simp only [hB1d]; nlinarith
  have hG1 : 0 ≤ capG1 h c f x Y := by
    unfold capG1
    have q1 := mul_le_mul_of_nonneg_left h6 hB1.le
    have q2 := mul_le_mul_of_nonneg_left k2 ha.le
    simp only [hB1d] at q1 q2; nlinarith
  have hU : 0 < (1 - h) * (c * Y - 49 / 60) + Y * (h * f - 8 / 73) := by
    have := mul_pos (mul_pos (show (0 : ℝ) < 8 / 73 * (1 + Y) by positivity) hB1) ha
    unfold capG1 at hG1; simp only [hB1d] at this; nlinarith
  have hxs : x ≤ xStar h c Y := by
    unfold xStar
    have : h * x ≤ h * c + (1 - c) * Y - 8 / 73 := by
      have := mul_le_mul_of_nonneg_right hdh (show (0 : ℝ) ≤ c - x by linarith); linarith
    rw [← sub_le_iff_le_add', le_div_iff₀ h0]; linarith
  refine ⟨hG0, hG1, hU, hxs, ?_, ?_⟩
  · have e : capG0 c f (xStar h c Y) Y - capG0 c f x Y = (c * Y + 8 / 73 - 49 / 60) * (xStar h c Y - x) := by
      unfold capG0; ring
    have := mul_nonneg hT.le (show (0 : ℝ) ≤ xStar h c Y - x by linarith)
    linarith
  · have e : capG1 h c f (xStar h c Y) Y - capG1 h c f x Y =
        ((1 - h) * (c * Y - 49 / 60) + Y * (h * f - 8 / 73) + 8 / 73 * (1 + Y) * (1 - h)) *
          (xStar h c Y - x) := by
      unfold capG1; ring
    have := mul_nonneg (show (0 : ℝ) ≤ (1 - h) * (c * Y - 49 / 60) + Y * (h * f - 8 / 73) +
      8 / 73 * (1 + Y) * (1 - h) by
        have := mul_nonneg (show (0 : ℝ) ≤ 8 / 73 * (1 + Y) by positivity)
          (show (0 : ℝ) ≤ 1 - h by linarith)
        linarith) (show (0 : ℝ) ≤ xStar h c Y - x by linarith)
    linarith

/-- **Claim** (`C1_TWO_LOWER_COMPLETION:eq7-9`). In the setting of `claim_CXL`, with
`X = (x, Y)`: the areas `OFL, HFL, OXL` give (5); `a = x - fY > 0`, `T = cY + s - ρ > 0`;
`G₀ ≥ 0` (7) and `G₁ ≥ 0` (8), with `U = (1 - h)(cY - ρ) + Y(hf - s) > 0`; `x ≤ x*` (9); and
since `∂G₀/∂x = T > 0` and `∂G₁/∂x = U + s(1 + Y)(1 - h) > 0`, both inequalities still hold at
`x = x*`. `docs/proof/nine/C1_TWO_LOWER_COMPLETION.md`, lines 91-160.
Uses: C1_TWO_LOWER_COMPLETION:claim-CXL. -/
theorem eq7_9 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hOC : SameSide L M ptO (ptC c)) (hHF : SameSide L M (ptH h) (ptF f))
    (hOH : OppSide L M ptO (ptH h)) :
    8 / 73 ≤ L.1 - f * L.2 ∧ 8 / 73 ≤ h * f + (1 - h) * L.1 - f * L.2 ∧
      8 / 73 ≤ X.1 * L.2 - X.2 * L.1 ∧
      0 < X.1 - f * X.2 ∧ 0 < c * X.2 + 8 / 73 - 49 / 60 ∧
      0 ≤ capG0 c f X.1 X.2 ∧ 0 ≤ capG1 h c f X.1 X.2 ∧
      0 < (1 - h) * (c * X.2 - 49 / 60) + X.2 * (h * f - 8 / 73) ∧
      X.1 ≤ xStar h c X.2 ∧
      0 ≤ capG0 c f (xStar h c X.2) X.2 ∧ 0 ≤ capG1 h c f (xStar h c X.2) X.2 := by
  obtain ⟨-, hinM, -, eCXL, hK⟩ := claim_CXL hS hOC hHF hOH
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, k2, kgt⟩ := C1TopCapCommonCell.cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have y0 := hS.memX.2.2.1
  have hY0 : 0 < X.2 := by nlinarith
  have hfY1 : f * X.2 ≤ f := by have := mul_le_mul_of_nonneg_left hS.memX.2.2.2 hf.le; linarith
  have hOFL : 8 / 73 ≤ L.1 - f * L.2 := by
    have e : 8 / 73 ≤ sarea (ptF f) ptO L := ar_pos (ar hS.competitive 3 0 5) hS.L_OCF.2.2.le
    have q : sarea (ptF f) ptO L = L.1 - f * L.2 := by simp only [sarea, ptF, ptO]; ring
    rwa [q] at e
  have hHFL : 8 / 73 ≤ h * f + (1 - h) * L.1 - f * L.2 := by
    have pos := C1TopCapCommonCell.fhl_pos h0 c0 hf hh hS.lowerL
    have e : 8 / 73 ≤ sarea (ptF f) (ptH h) L := ar_pos (ar hS.competitive 3 4 5) pos.le
    have q : sarea (ptF f) (ptH h) L = h * f + (1 - h) * L.1 - f * L.2 := by
      simp only [sarea, ptF, ptH]; ring
    rwa [q] at e
  have hOXL : 8 / 73 ≤ X.1 * L.2 - X.2 * L.1 := by
    have e : 8 / 73 ≤ sarea ptO X L := ar_pos (ar hS.competitive 0 7 5) hS.L_OXH.1.le
    have q : sarea ptO X L = X.1 * L.2 - X.2 * L.1 := by simp only [sarea, ptO]; ring
    rwa [q] at e
  have hCDX : 8 / 73 ≤ (1 - c) * X.2 + d * (c - X.1) := by
    have q : sarea (ptC c) (ptD d) X = (1 - c) * X.2 + d * (c - X.1) := by
      simp only [sarea, ptC, ptD]; ring
    rwa [q] at k2
  rw [eCXL] at hK
  have obj := scal_7_9 h0 hh c0 hdh hxc hY0 (by linarith) (by linarith) hOFL hHFL hOXL
    (by linarith) hCDX (mul_pos hf hY0)
  exact ⟨hOFL, hHFL, hOXL, by linarith, by linarith, obj.1, obj.2.1, obj.2.2.1, obj.2.2.2.1,
    obj.2.2.2.2.1, obj.2.2.2.2.2⟩

section cert
open Cert Cert.Expr

/-- `P(h, c, Y)` of (10) as an expression in `var 0, 1, 2 = h, c, Y` (`h x*` is a polynomial). -/
def eXh : Expr := v 0 * v 1 + (1 - v 1) * v 2 - k (8 / 73)
def eU0 : Expr := (1 - v 0) * (v 1 * v 2 - k (49 / 60)) - k (8 / 73) * v 2
def eTT : Expr := v 1 * v 2 + k (8 / 73) - k (49 / 60)
def eBB : Expr := eXh - eU0 - k (8 / 73) * (1 + v 2) - k (5 / 4) * eTT
def eC4 : Expr := k 4 * eXh * (eU0 + k (5 / 4) * eTT) -
  k (32 / 73) * (1 + v 2) * ((1 - v 0) * (v 0 * v 1 - eXh) + k (5 / 4) * v 0 * v 1)
def eQP : Expr := eBB * eBB + eC4

theorem eq11_check :
    bernsteinBoxCheck (0 - eQP) [(49 / 60, 1), (49 / 60, 1), (49 / 60, 1)] [2, 2, 2] 99 = true := by
  decide +kernel

end cert

/-- **Claim** (`C1_TWO_LOWER_COMPLETION:eq11`, made-up id). `P(h, c, Y) < 0` for
`ρ ≤ h, c, Y ≤ 1`: all 27 degree-`(2,2,2)` tensor Bernstein coefficients on the cube have maximum
`-124631/12278016` (11); checked by `docs/proof/nine/check_c1_two_lower_completion.py`. Since
`G₁ + (5/4)G₀ = -hY²f² + YBf + C₀` at `x = x*`, its maximum over `f` is `P/(4h) < 0`.
`docs/proof/nine/C1_TWO_LOWER_COMPLETION.md`, lines 162-234. -/
theorem eq11 (h c Y : ℝ) (hh : 49 / 60 ≤ h) (hh' : h ≤ 1) (hc : 49 / 60 ≤ c) (hc' : c ≤ 1)
    (hY : 49 / 60 ≤ Y) (hY' : Y ≤ 1) :
    quadP h c Y < 0 := by
  have hx := pointOf_box3 (x := h) (y := c) (z := Y) (p := ((49 / 60 : ℚ), (1 : ℚ)))
    (q := ((49 / 60 : ℚ), (1 : ℚ))) (r := ((49 / 60 : ℚ), (1 : ℚ)))
    ⟨by push_cast; linarith, by push_cast; linarith⟩ ⟨by push_cast; linarith, by push_cast; linarith⟩
    ⟨by push_cast; linarith, by push_cast; linarith⟩
  have := Cert.bernsteinBoxCheck_sound eq11_check _ hx
  have h0 : h ≠ 0 := by intro h0; rw [h0] at hh; norm_num at hh
  have e : eQP.eval (pointOf [h, c, Y]) = quadP h c Y := by
    simp only [eQP, eBB, eC4, eXh, eU0, eTT, Cert.Expr.eval_plus, Cert.Expr.eval_minus,
      Cert.Expr.eval_times, Cert.Expr.eval_k, Cert.Expr.eval_v, Cert.Expr.eval_one,
      pointOf_zero, pointOf_succ, quadP, xStar]
    push_cast
    field_simp
    ring
  simp only [Cert.Expr.eval_minus, Cert.Expr.eval_zero, e] at this
  linarith

/-- **Theorem 1** (`C1_TWO_LOWER_COMPLETION:Theorem1`). The final one-cap placement with two
lower points is impossible: the common-cell placement with `O, C` on one side of `LM` and
`H, F` on the other. `docs/proof/nine/C1_TWO_LOWER_COMPLETION.md`, lines 18-19 and 29-234.
Uses: C1_TWO_LOWER_COMPLETION:claim-CXL, C1_TWO_LOWER_COMPLETION:eq7-9,
C1_TWO_LOWER_COMPLETION:eq11. -/
theorem theorem1 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P)
    (hOC : SameSide L M ptO (ptC c)) (hHF : SameSide L M (ptH h) (ptF f))
    (hOH : OppSide L M ptO (ptH h)) : False := by
  obtain ⟨-, -, -, -, -, -, -, -, -, g0, g1⟩ := eq7_9 hS hOC hHF hOH
  obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := C1TopCapCommonCell.cc_facts hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have y1 := hS.memX.2.2.2
  have hP := eq11 h c X.2 (by nlinarith) hh (by nlinarith) hc (by nlinarith) y1
  have e : 4 * h * (capG1 h c f (xStar h c X.2) X.2 + 5 / 4 * capG0 c f (xStar h c X.2) X.2) =
      quadP h c X.2 - (2 * h * X.2 * f - (h * xStar h c X.2 -
        ((1 - h) * (c * X.2 - 49 / 60) - 8 / 73 * X.2) - 8 / 73 * (1 + X.2) -
          5 / 4 * (c * X.2 + 8 / 73 - 49 / 60))) ^ 2 := by
    simp only [quadP, capG0, capG1]
    ring
  have : 0 ≤ 4 * h * (capG1 h c f (xStar h c X.2) X.2 + 5 / 4 * capG0 c f (xStar h c X.2) X.2) :=
    mul_nonneg (by linarith) (by linarith)
  nlinarith [sq_nonneg (2 * h * X.2 * f - (h * xStar h c X.2 -
    ((1 - h) * (c * X.2 - 49 / 60) - 8 / 73 * X.2) - 8 / 73 * (1 + X.2) -
      5 / 4 * (c * X.2 + 8 / 73 - 49 / 60)))]

/-! ### The assembly (§4) -/

/-- A line through a point strictly inside a counterclockwise triangle cannot leave the three
vertices strictly on one side. -/
theorem not_all_neg {L M A B C : Point} (hL : InTriangle L A B C) (hA : sarea L M A < 0)
    (hB : sarea L M B < 0) (hC : sarea L M C < 0) : False := by
  obtain ⟨l1, l2, l3⟩ := hL
  have e : sarea L M L * sarea A B C = sarea L M A * sarea B C L + sarea L M B * sarea C A L +
      sarea L M C * sarea A B L := by simp only [sarea]; ring
  have z : sarea L M L = 0 := by simp only [sarea]; ring
  rw [z, zero_mul] at e
  have := mul_neg_of_neg_of_pos hA l2
  have := mul_neg_of_neg_of_pos hB l3
  have := mul_neg_of_neg_of_pos hC l1
  linarith

/-- **Step 5**: every pair-line case of the common-cell placement is excluded. -/
theorem step5 {h c d f : ℝ} {L M X P : Point} (hS : CommonCellSetting h c d f L M X P) : False := by
  have hO := C1TopCapCommonCell.cc_LMO hS
  have nC : sarea L M (ptC c) ≠ 0 := ar_ne (by norm_num) (ar hS.competitive 5 6 1)
  have nH : sarea L M (ptH h) ≠ 0 := ar_ne (by norm_num) (ar hS.competitive 5 6 4)
  have nF : sarea L M (ptF f) ≠ 0 := ar_ne (by norm_num) (ar hS.competitive 5 6 3)
  rcases lt_or_gt_of_ne nC with dC | dC
  · -- `O, C` on one side: `H, F` on the other
    have dH : 0 < sarea L M (ptH h) := by
      rcases lt_or_gt_of_ne nH with dH | dH
      · exact (not_all_neg hS.lowerL hO dC dH).elim
      · exact dH
    have dF : 0 < sarea L M (ptF f) := by
      rcases lt_or_gt_of_ne nF with dF | dF
      · exact (not_all_neg hS.L_OCF hO dC dF).elim
      · exact dF
    exact theorem1 hS (mul_pos_of_neg_of_neg hO dC) (mul_pos dH dF) (mul_neg_of_neg_of_pos hO dH)
  · rcases lt_or_gt_of_ne nH with dH | dH <;> rcases lt_or_gt_of_ne nF with dF | dF
    · -- `C` isolated
      exact C1TopCapCommonCell.theorem_C hS ⟨mul_neg_of_pos_of_neg dC hO,
        mul_pos_of_neg_of_neg hO dH, mul_pos_of_neg_of_neg hO dF⟩
    · exact C1TopCapContainmentPair.theorem_main hS hO dH dC dF
    · -- excluded by the sign list
      obtain ⟨hk, hkY, hhf, hfx, hxc, hfcs, -, -, kgt⟩ := C1TopCapCommonCell.cc_facts hS
      obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
      have h0 : 0 < h := by nlinarith
      have c0 : 0 < c := by nlinarith
      have idsl : sarea (ptC c) (ptH h) L * sarea L M (ptF f) =
          sarea (ptC c) (ptF f) L * sarea L M (ptH h) - sarea L M (ptC c) * sarea (ptH h) (ptF f) L := by
        simp only [sarea]; ring
      have hHFL : sarea (ptH h) (ptF f) L = -sarea (ptF f) (ptH h) L := by simp only [sarea]; ring
      have p1 := mul_pos hS.L_OCF.2.1 dH
      have p2 := mul_pos dC (C1TopCapCommonCell.fhl_pos h0 c0 hf hh hS.lowerL)
      have p3 := mul_neg_of_pos_of_neg hS.lowerL.2.1 dF
      rw [hHFL] at idsl
      linarith
    · -- `O` isolated
      exact C1TopCapCommonCell.theorem_O hS ⟨mul_neg_of_neg_of_pos hO dC, mul_pos dC dH,
        mul_pos dC dF⟩

/-- The two lower points and the cap point `X`: the side-ear consequences, with `P ∈ OCX`, give
the reduced one-cap placement, then the common cell (OF split), then step 5. -/
theorem step4_core {h c d f : ℝ} {L M X P : Point} (hA : C1Anchors h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hP : P ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X P))
    (hLl : InLower h c L) (hMl : InLower h c M) (hXc : InTopCap d f X)
    (hPu : InUpperQuad h c d f P) (hPin : InTriangle P ptO (ptC c) X) : False := by
  have hAw := c1Anchors_weak hA
  obtain ⟨-, hsplit, -, -, -, -⟩ :=
    C1TopCapSideEars.claim_consequence hAw hL hM hX hP hmin hLl hMl hXc hPu
  rcases hsplit with ⟨hLH, hMC⟩ | ⟨hMH, hLC⟩
  · have hS : OneCapSetting h c d f L M X P :=
      ⟨hAw, hL, hM, hX, hP, hmin, hLl, hMl, hXc, hPu, hPin, hMC, hLH, hA.2.2.1⟩
    obtain ⟨-, h1, h2⟩ := theorem_main hS
    exact step5 ⟨hS, h1, h2⟩
  · have hmin' : A₀ ≤ minTriangleArea (c1Config h c d f M L X P) := by
      rw [min_c1_swap12]; exact hmin
    have hS : OneCapSetting h c d f M L X P :=
      ⟨hAw, hM, hL, hX, hP, hmin', hMl, hLl, hXc, hPu, hPin, hLC, hMH, hA.2.2.1⟩
    obtain ⟨-, h1, h2⟩ := theorem_main hS
    exact step5 ⟨hS, h1, h2⟩

/-- **Step 4**: one top-cap point `X` and one upper point `P` (transposition handles `P ∈ OXH`). -/
theorem step4 {h c d f : ℝ} {L M X P : Point} (hA : C1Anchors h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hX : X ∈ unitSquare) (hP : P ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X P))
    (hLl : InLower h c L) (hMl : InLower h c M) (hXc : InTopCap d f X)
    (hPu : InUpperQuad h c d f P) : False := by
  obtain ⟨-, -, hPin, -, -, -⟩ :=
    C1TopCapSideEars.claim_consequence (c1Anchors_weak hA) hL hM hX hP hmin hLl hMl hXc hPu
  rcases hPin with hPin | hPin
  · exact step4_core hA hL hM hX hP hmin hLl hMl hXc hPu hPin
  · obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
    refine step4_core (h := c) (c := h) (d := f) (f := d) (L := tp L) (M := tp M) (X := tp X)
      (P := tp P) ⟨hf, hfc, hc, hd, hdh, hh⟩ (tp_mem hL) (tp_mem hM) (tp_mem hX) (tp_mem hP)
      (by rw [min_c1_tp]; exact hmin) (inLower_tp hLl) (inLower_tp hMl) ?_ ?_ ?_
    · unfold InTopCap at hXc ⊢
      have := sarea_tp (ptF f) (ptD d) X
      rw [tp_F, tp_D] at this
      rw [this, sarea_swap₁₂]; linarith
    · obtain ⟨u1, u2, u3, u4⟩ := hPu
      refine ⟨?_, ?_, ?_, ?_⟩
      · rw [← tp_C c, ← tp_H h, sarea_tp, sarea_swap₁₂]; linarith
      · rw [← tp_H h, ← tp_F f, sarea_tp, sarea_swap₁₂]; linarith
      · rw [← tp_F f, ← tp_D d, sarea_tp, sarea_swap₁₂]; linarith
      · rw [← tp_D d, ← tp_C c, sarea_tp, sarea_swap₁₂]; linarith
    · have := (inTriangle_tp (X := P) (A := ptO) (B := X) (C := ptH h)).2 hPin
      rwa [tp_O, tp_H] at this

/-- A free point that is not strictly inside `OHC` is strictly above `HC`. -/
theorem upper_pt {h c : ℝ} {U : Point} (h0 : 0 < h) (c0 : 0 < c) (hU : U ∈ unitSquare)
    (hUn : ¬ InLower h c U) (e1 : 8 / 73 ≤ |sarea ptO (ptC c) U|)
    (e2 : 8 / 73 ≤ |sarea (ptC c) (ptH h) U|) (e3 : 8 / 73 ≤ |sarea (ptH h) ptO U|) :
    0 < sarea ptO (ptC c) U ∧ 0 < sarea (ptH h) ptO U ∧ 0 < sarea (ptH h) (ptC c) U := by
  obtain ⟨u0, -, u2, -⟩ := hU
  have q1 : sarea ptO (ptC c) U = c * U.2 := by simp only [sarea, ptO, ptC]; ring
  have q3 : sarea (ptH h) ptO U = h * U.1 := by simp only [sarea, ptO, ptH]; ring
  have a1 : 0 < sarea ptO (ptC c) U :=
    lt_of_le_of_ne (by rw [q1]; exact mul_nonneg c0.le u2) (ar_ne (by norm_num) e1).symm
  have a3 : 0 < sarea (ptH h) ptO U :=
    lt_of_le_of_ne (by rw [q3]; exact mul_nonneg h0.le u0) (ar_ne (by norm_num) e3).symm
  have a2 : sarea (ptC c) (ptH h) U < 0 := by
    rcases lt_or_gt_of_ne (ar_ne (by norm_num) e2) with h2 | h2
    · exact h2
    · exact (hUn ⟨a1, h2, a3⟩).elim
  refine ⟨a1, a3, ?_⟩
  have := sarea_swap₁₂ (ptH h) (ptC c) U; linarith

/-- The core of Theorem 2 with the lower points first. -/
theorem core {h c d f : ℝ} {L M U V : Point} (hA : C1Anchors h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M U V))
    (hLl : InLower h c L) (hMl : InLower h c M) (hUn : ¬ InLower h c U)
    (hVn : ¬ InLower h c V) : False := by
  have hAw := c1Anchors_weak hA
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have hk := C1TopCapSideEars.hc_ge hAw hmin hLl hMl
  have kgt := kσ_gt
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have hmin' : A₀ ≤ minTriangleArea (c1Config h c d f L M V U) := by
    rw [min_c1_swap34]; exact hmin
  obtain ⟨uO, uH, uHC⟩ := upper_pt h0 c0 hU hUn (ar hmin 0 1 7) (ar hmin 1 4 7) (ar hmin 4 0 7)
  obtain ⟨vO, vH, vHC⟩ := upper_pt h0 c0 hV hVn (ar hmin 0 1 8) (ar hmin 1 4 8) (ar hmin 4 0 8)
  -- no side-cap point
  have side : ∀ Z : Point, Z ∈ unitSquare →
      A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, Z] →
      0 < sarea (ptF f) (ptH h) Z ∧ 0 < sarea (ptC c) (ptD d) Z := by
    intro Z hZ h8
    have n1 : sarea (ptF f) (ptH h) Z ≠ 0 := ar_ne (by norm_num) (ar h8 3 4 7)
    have n2 : sarea (ptC c) (ptD d) Z ≠ 0 := ar_ne (by norm_num) (ar h8 1 2 7)
    by_contra hn
    rw [not_and_or, not_lt, not_lt] at hn
    exact C1TwoLowerSideCap.theorem_main hAw hL hM hZ h8 hLl hMl hn
  obtain ⟨uFH, uCD⟩ := side U hU (min8 hmin)
  obtain ⟨vFH, vCD⟩ := side V hV (min8 hmin')
  have nU : sarea (ptD d) (ptF f) U ≠ 0 := ar_ne (by norm_num) (ar hmin 2 3 7)
  have nV : sarea (ptD d) (ptF f) V ≠ 0 := ar_ne (by norm_num) (ar hmin 2 3 8)
  rcases lt_or_gt_of_ne nU with uDF | uDF <;> rcases lt_or_gt_of_ne nV with vDF | vDF
  · exact C1TopCapTriangularPair.theorem_main hAw hL hM hU hV hmin hLl hMl uDF.le vDF.le
  · exact step4 ⟨hd, hdh, hh, hf, hfc, hc⟩ hL hM hU hV hmin hLl hMl uDF ⟨vHC, vCD, vDF, vFH⟩
  · exact step4 ⟨hd, hdh, hh, hf, hfc, hc⟩ hL hM hV hU hmin' hLl hMl vDF ⟨uHC, uCD, uDF, uFH⟩
  · exact C1MixedPentagon.claim_pentagon_excluded ⟨hd, hdh, hh, hf, hfc, hc⟩ hL hM hU hV hmin hLl
      hMl ⟨uHC, uCD, uDF, uFH⟩ ⟨vHC, vCD, vDF, vFH⟩

/-- The free points of `c1Config` at the indices `5, …, 8`. -/
theorem c1_free (h c d f : ℝ) (Q : Fin 4 → Point) (m : Fin 4) :
    c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) ⟨m.val + 5, by omega⟩ = Q m := by
  fin_cases m <;> rfl

/-- Reordering the free points preserves the least area. -/
theorem min_reorder (h c d f : ℝ) (Q : Fin 4 → Point) (ι : Fin 4 → Fin 4)
    (hι : Function.Injective ι) (hmin : A₀ ≤ minTriangleArea (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3))) :
    A₀ ≤ minTriangleArea (c1Config h c d f (Q (ι 0)) (Q (ι 1)) (Q (ι 2)) (Q (ι 3))) := by
  let g : Fin 9 → Fin 9 := fun k =>
    if hk : k.val < 5 then k else ⟨(ι ⟨k.val - 5, by omega⟩).val + 5, by omega⟩
  have hg : Function.Injective g := by
    intro a b hab
    simp only [g] at hab
    by_cases ha : a.val < 5 <;> by_cases hb : b.val < 5 <;> simp only [ha, hb, dite_true,
      dite_false] at hab
    · exact hab
    · have := congrArg Fin.val hab; simp at this; omega
    · have := congrArg Fin.val hab; simp at this; omega
    · have h1 : (ι ⟨a.val - 5, by omega⟩).val = (ι ⟨b.val - 5, by omega⟩).val := by
        have := congrArg Fin.val hab; simpa using this
      have h2 := hι (Fin.ext h1)
      have := congrArg Fin.val h2; simp at this
      exact Fin.ext (by omega)
  have e : c1Config h c d f (Q (ι 0)) (Q (ι 1)) (Q (ι 2)) (Q (ι 3)) =
      c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3) ∘ g := by
    funext k
    fin_cases k
    · rfl
    · rfl
    · rfl
    · rfl
    · rfl
    · exact (c1_free h c d f Q (ι 0)).symm
    · exact (c1_free h c d f Q (ι 1)).symm
    · exact (c1_free h c d f Q (ι 2)).symm
    · exact (c1_free h c d f Q (ι 3)).symm
  rw [e]
  exact hmin.trans (le_min_comp (by norm_num) _ hg)

/-- `n₀ = 2`: two labelled lower points, the other two not lower. -/
theorem two_lower {h c : ℝ} {W X Y Z : Point} (h2 : lowerCount h c W X Y Z = 2) :
    ∃ i j : Fin 4, i ≠ j ∧ InLower h c (freePt W X Y Z i) ∧ InLower h c (freePt W X Y Z j) ∧
      ∀ k, k ≠ i → k ≠ j → ¬ InLower h c (freePt W X Y Z k) := by
  classical
  unfold lowerCount countFree at h2
  obtain ⟨i, j, hij, hs⟩ := Finset.card_eq_two.1 h2
  have mem : ∀ k, InLower h c (freePt W X Y Z k) ↔ k = i ∨ k = j := by
    intro k
    have := Finset.ext_iff.1 hs k
    simpa using this
  refine ⟨i, j, hij, (mem i).2 (Or.inl rfl), (mem j).2 (Or.inr rfl), fun k hi hj hk => ?_⟩
  rcases (mem k).1 hk with h | h
  · exact hi h
  · exact hj h

/-- **Theorem 2** (`C1_TWO_LOWER_COMPLETION:Theorem2`). Every C1 configuration (`C1Anchors`)
with exactly two of its four free points strictly inside `OHC` has an actual
triangle of area strictly below `A₀`, whatever its hull. `docs/proof/nine/C1_TWO_LOWER_COMPLETION.md`,
lines 21-23 and 236-275.
Uses: C1_TWO_LOWER_SIDE_CAP:Theorem, C1_MIXED_PENTAGON:claim-pentagon-excluded,
C1_TOP_CAP_CONVEX_PAIR:Theorem, C1_TOP_CAP_TRIANGULAR_PAIR:Theorem, C1_TOP_CAP_SIDE_EARS:Theorem,
C1_TOP_CAP_SIDE_EARS:claim-consequence, C1_TOP_CAP_RADIAL_SPLIT:Theorem,
C1_TOP_CAP_OF_SPLIT:Theorem, ONE_CORNER_COMPLETION:claim-general-identities,
C1_TOP_CAP_COMMON_CELL:Theorem-C, C1_TOP_CAP_COMMON_CELL:Theorem-O,
C1_TOP_CAP_CONTAINMENT_PAIR:Theorem, C1_TWO_LOWER_COMPLETION:Theorem1. -/
-- Implicit in the manuscript (line 44 vs lines 262-264): in step 5, "`O, C` on the same side"
-- of `LM` forces `H, F` on the other side, since `L, M` are strictly inside both `OCH` and `OCF`
-- (a line through two interior points of a triangle splits its vertices 1 | 2); Theorem 1 is
-- stated with the full split. Step 2 applies C1_MIXED_PENTAGON at its threshold `7/64 < 2A₀`;
-- steps 4–5 use the transposition (`(h, c, d, f) ↦ (c, h, f, d)`) to reach `P ∈ OCX`.
-- Statement change: the anchors are `C1Anchors` (strict `h, c < 1`) instead of `C1AnchorsWeak`;
-- ONE_CORNER's pentagon claims and the general-threshold Lemma 7 (`1 - h > 0`) need `h, c < 1`,
-- and the assembly (`Assembly/FamilyC1.lean`) has `C1Anchors` at hand.
theorem theorem2 {h c d f : ℝ} {W X Y Z : Point} (hA : C1Anchors h c d f)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h2 : lowerCount h c W X Y Z = 2)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z)) : False := by
  obtain ⟨i, j, hij, hi, hj, hk⟩ := two_lower h2
  set Q := freePt W X Y Z with hQd
  have hQ : ∀ m, Q m ∈ unitSquare := by intro m; fin_cases m <;> assumption
  have hmin' : A₀ ≤ minTriangleArea (c1Config h c d f (Q 0) (Q 1) (Q 2) (Q 3)) := hmin
  have key : ∀ ι : Fin 4 → Fin 4, Function.Injective ι → InLower h c (Q (ι 0)) →
      InLower h c (Q (ι 1)) → ¬ InLower h c (Q (ι 2)) → ¬ InLower h c (Q (ι 3)) → False :=
    fun ι hι h0 h1 h2 h3 => core hA (hQ _) (hQ _) (hQ _) (hQ _) (min_reorder h c d f Q ι hι hmin')
      h0 h1 h2 h3
  fin_cases i <;> fin_cases j <;> simp only [ne_eq, not_true_eq_false] at hij
  · exact key ![0, 1, 2, 3] (by decide) hi hj (hk 2 (by decide) (by decide)) (hk 3 (by decide) (by decide))
  · exact key ![0, 2, 1, 3] (by decide) hi hj (hk 1 (by decide) (by decide)) (hk 3 (by decide) (by decide))
  · exact key ![0, 3, 1, 2] (by decide) hi hj (hk 1 (by decide) (by decide)) (hk 2 (by decide) (by decide))
  · exact key ![1, 0, 2, 3] (by decide) hi hj (hk 2 (by decide) (by decide)) (hk 3 (by decide) (by decide))
  · exact key ![1, 2, 0, 3] (by decide) hi hj (hk 0 (by decide) (by decide)) (hk 3 (by decide) (by decide))
  · exact key ![1, 3, 0, 2] (by decide) hi hj (hk 0 (by decide) (by decide)) (hk 2 (by decide) (by decide))
  · exact key ![2, 0, 1, 3] (by decide) hi hj (hk 1 (by decide) (by decide)) (hk 3 (by decide) (by decide))
  · exact key ![2, 1, 0, 3] (by decide) hi hj (hk 0 (by decide) (by decide)) (hk 3 (by decide) (by decide))
  · exact key ![2, 3, 0, 1] (by decide) hi hj (hk 0 (by decide) (by decide)) (hk 1 (by decide) (by decide))
  · exact key ![3, 0, 1, 2] (by decide) hi hj (hk 1 (by decide) (by decide)) (hk 2 (by decide) (by decide))
  · exact key ![3, 1, 0, 2] (by decide) hi hj (hk 0 (by decide) (by decide)) (hk 2 (by decide) (by decide))
  · exact key ![3, 2, 0, 1] (by decide) hi hj (hk 0 (by decide) (by decide)) (hk 1 (by decide) (by decide))

end Heilbronn.Nine.C1TwoLowerCompletion
