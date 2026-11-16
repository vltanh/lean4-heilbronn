module

public import Heilbronn.Nine.C1.TopCapRadialSplit
public import Heilbronn.Nine.TypeII.TypeIICompletion.ParameterBound
public import Heilbronn.Nine.C1.TwoLower.OfSplitCert

/-! # A complete lower-ray exclusion in the remaining C1 top-cap case
(`docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md`)

Role: a component on the primary route: `docs/proof/nine/C1_TWO_LOWER_COMPLETION.md` Theorem 2, step 4
(lines 260-261). Its §2 (`f < x < c` and the cap elimination `R(h, c, f) ≥ 0`) is reused by
`docs/proof/nine/C1_TOP_CAP_COMMON_CELL.md` and `docs/proof/nine/C1_TOP_CAP_CONTAINMENT_PAIR.md`.

Setting (lines 3-34; `OneCapSetting`): the C1 anchors with the weak conditions
`0 < d ≤ h ≤ 1`, `0 < f ≤ c ≤ 1`; a competitive nine-point configuration
`c1Config h c d f L M X P` (least area at least `A₀`; `s = 8/73`, `K = 4 + 2√3`, `ρ = 49/60`);
two lower points `L, M` inside `OHC`, one top-cap point `X = (x, Y)` beyond `DF`, one point `P`
inside the anchor pentagon (above `HC`); after the reflection allowed by the side-ear and radial
theorems, `P, M ∈ OCX` and `L ∈ OHX`. The output of the theorem, both lower points in `OCF`, is
the common-cell placement `CommonCellSetting` used by the later notes. The setting also records
`h < 1` (the C1 anchors of the assembly are strict; TYPE_II_COMPLETION Lemma 7 needs `λ = 1 - h > 0`).

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
namespace Heilbronn.Nine.C1TopCapOfSplit

open Heilbronn.Nine.C1 Heilbronn.Nine.C1TwoLower Heilbronn.Nine.C1TopCapConvexPair

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
  h_lt : h < 1

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
`docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md`, lines 13-19.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq1 {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ h * c ∧ (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c * X.2 ∧
      (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) := by
  have hk := two_in hS.competitive 0 1 4 5 6 (by decide) (Or.inl hS.lowerL) (Or.inl hS.lowerM)
  have hkY := two_in hS.competitive 0 1 7 8 6 (by decide) (Or.inl hS.P_OCX) (Or.inl hS.M_OCX)
  have e1 : sarea (c1Config h c d f L M X P 0) (c1Config h c d f L M X P 1)
      (c1Config h c d f L M X P 4) = h * c := by
    simp only [c1Config, Matrix.cons_val, sarea]; ring
  have e2 : sarea (c1Config h c d f L M X P 0) (c1Config h c d f L M X P 1)
      (c1Config h c d f L M X P 7) = c * X.2 := by
    simp only [c1Config, Matrix.cons_val, sarea]; ring
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have y0 := hS.memX.2.2.1
  rw [e1, abs_of_nonneg (mul_nonneg (by linarith) (by linarith))] at hk
  rw [e2, abs_of_nonneg (mul_nonneg (by linarith) y0)] at hkY
  exact ⟨hk, hkY, kσ_gt⟩

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:claim-x-lt-c`, made-up id). In the reduced one-cap placement
(independently of the side of `L`), `f < x < c` and `f ≤ c - s` (6), `X = (x, Y)`, `s = 8/73`.
`docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md`, lines 125-155.
Uses: C1_TOP_CAP_OF_SPLIT:eq1. -/
theorem claim_x_lt_c {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P) :
    f < X.1 ∧ X.1 < c ∧ f ≤ c - 8 / 73 := by
  obtain ⟨hk, hkY, -⟩ := eq1 hS
  have h8 : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] := min8 hS.competitive
  obtain ⟨hd1, hf1, hfx, -, k1, kCF, k2, -, -, -, -⟩ :=
    C1TopCapRadialSplit.rs_cap (L := L) (M := M) (X := X)
      ⟨hS.anchors, hS.memL, hS.memM, hS.memX, h8, hS.lowerL, hS.lowerM, hS.capX.le⟩
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.memX
  have hxc := C1TopCapRadialSplit.x_lt_c hd hdh hh hf hfc hc x0 x1 y0 y1 hfx hk hkY k1 k2
  refine ⟨hfx, hxc, ?_⟩
  have e : -sarea (ptC c) (ptF f) X = X.1 - f - (c - f) * (1 - X.2) := by
    simp only [sarea, ptC, ptF]; ring
  rw [e] at kCF
  have := mul_nonneg (show (0 : ℝ) ≤ c - f by linarith) (show (0 : ℝ) ≤ 1 - X.2 by linarith)
  linarith

/-- An affine map of negative determinant reverses a counterclockwise triangle containing `R`. -/
theorem tri_negdet {a b c d e g : ℝ} (hdet : a * d - b * c < 0) {R A B C : Point}
    (h : InTriangle R A B C) :
    InTriangle (affineMap a b c d e g R) (affineMap a b c d e g A) (affineMap a b c d e g C)
      (affineMap a b c d e g B) := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨?_, ?_, ?_⟩ <;> rw [sarea_affineMap]
  · have := sarea_swap₁₂ C A R; nlinarith
  · have := sarea_swap₁₂ B C R; nlinarith
  · have := sarea_swap₁₂ A B R; nlinarith

/-- The two lower points when `L` is on the `H`-side of `OF`: `L ∈ OHF`, `M ∈ OCF`. -/
theorem split_pos {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P)
    (hLH : 0 < sarea ptO (ptF f) L) :
    InTriangle L ptO (ptF f) (ptH h) ∧ InTriangle M ptO (ptC c) (ptF f) := by
  obtain ⟨hk, hkY, kgt⟩ := eq1 hS
  have h8 : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] := min8 hS.competitive
  obtain ⟨hd1, hf1, hfx, -, k1, kCF, k2, -, hHC, hhf, -⟩ :=
    C1TopCapRadialSplit.rs_cap (L := L) (M := M) (X := X)
      ⟨hS.anchors, hS.memL, hS.memM, hS.memX, h8, hS.lowerL, hS.lowerM, hS.capX.le⟩
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.memX
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have hOFX : sarea ptO (ptF f) X < 0 := by
    have e : sarea ptO (ptF f) X = f * X.2 - X.1 := by simp only [sarea, ptO, ptF]; ring
    rw [e]; nlinarith
  have hHCF : 0 < sarea (ptH h) (ptC c) (ptF f) := by
    have e : sarea (ptH h) (ptC c) (ptF f) = c * (1 - h) + h * f := by
      simp only [sarea, ptH, ptC, ptF]; ring
    rw [e]; nlinarith [mul_nonneg c0.le (show (0 : ℝ) ≤ 1 - h by linarith)]
  have hMs : 0 < sarea ptO M X := by rw [sarea_cycle X ptO M]; exact hS.M_OCX.2.2
  obtain ⟨-, hMF⟩ := C1TopCapRadialSplit.rs_low h0 c0 hf hHC (by linarith) (by nlinarith) hOFX
    hHCF hS.lowerM hMs
  refine ⟨⟨hLH, ?_, hS.lowerL.2.2⟩, hMF⟩
  obtain ⟨r1, r2, r3⟩ := hS.lowerL
  have e : sarea (ptF f) (ptH h) L * (h * c) =
      h * f * sarea (ptC c) (ptH h) L + sarea (ptF f) (ptH h) (ptC c) * sarea (ptH h) ptO L := by
    simp only [sarea, ptF, ptH, ptC, ptO]; ring
  have q : sarea (ptF f) (ptH h) (ptC c) = sarea (ptH h) (ptC c) (ptF f) := by
    simp only [sarea]; ring
  rw [q] at e
  have p1 := mul_pos (mul_pos h0 hf) r2
  have p2 := mul_pos hHCF r3
  have : 0 < sarea (ptF f) (ptH h) L * (h * c) := by rw [e]; linarith
  exact pos_of_mul_pos_left this (mul_pos h0 c0).le

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:eq2-3`). In the reduced one-cap placement, if `L` is on the
`H`-side of `OF` (`[OFL] > 0`), then `L ∈ OHC ∩ OHF` and `M ∈ OHC ∩ OCF`; the transferred
parameter inequality (3) holds for `L = (ℓ, z)`: `s(h + 1)/(fh) ≤ z` and `cz ≤ Z(p)`; hence
`u·Z(p) ≥ sc(h + 1)` (2), where `p = hc`, `u = hf`, `s = 8/73`. `docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md`,
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
  obtain ⟨hL, hM⟩ := split_pos hS hLH
  obtain ⟨hfx, hxc, hfcs⟩ := claim_x_lt_c hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hh1 := hS.h_lt
  have kgt := kσ_gt
  obtain ⟨hk, -, -⟩ := eq1 hS
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have hfc' : f < c := by linarith
  -- the map `(a, b) ↦ (a/c, 1 - b)`
  have hdet : 1 / c * (-1) - 0 * 0 < 0 := by
    have := one_div_pos.2 c0; linarith
  set T := affineMap (1 / c) 0 0 (-1) 0 1 with hT
  have eO : T ptO = TypeII.ptD := by
    simp only [hT, affineMap, ptO, TypeII.ptD]; ext <;> simp
  have eC : T (ptC c) = TypeII.ptC := by
    simp only [hT, affineMap, ptC, TypeII.ptC]; ext <;> simp; field_simp
  have eH : T (ptH h) = TypeII.ptE (1 - h) := by
    simp only [hT, affineMap, ptH, TypeII.ptE]; ext <;> simp; ring
  have eF : T (ptF f) = TypeII.ptB (f / c) := by
    simp only [hT, affineMap, ptF, TypeII.ptB]; ext <;> simp; ring
  have hL' := tri_negdet (e := 0) (g := 1) hdet hL
  rw [← hT, eO, eH, eF] at hL'
  have hM' := tri_negdet (e := 0) (g := 1) hdet hM
  rw [← hT, eO, eF, eC] at hM'
  have hce : ∀ R : Point, InLower h c R → 0 < sarea (TypeII.ptE (1 - h)) TypeII.ptC (T R) := by
    intro R hR
    rw [← eH, ← eC, hT, sarea_affineMap]
    have := hR.2.1
    have e : sarea (ptH h) (ptC c) R = -sarea (ptC c) (ptH h) R := by simp only [sarea]; ring
    rw [e]
    have := one_div_pos.2 c0
    nlinarith
  have hmin6 : 8 / 73 / c / 2 ≤
      minTriangleArea ![TypeII.ptD, TypeII.ptC, TypeII.ptE (1 - h), TypeII.ptB (f / c), T L, T M] := by
    have hA : A₀ ≤ minTriangleArea ![ptO, ptC c, ptH h, ptF f, L, M] :=
      CornerFamilies.min_sub hS.competitive _ ![0, 1, 4, 3, 5, 6] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> rfl)
    have e : ![TypeII.ptD, TypeII.ptC, TypeII.ptE (1 - h), TypeII.ptB (f / c), T L, T M] =
        T ∘ ![ptO, ptC c, ptH h, ptF f, L, M] := by
      funext i; fin_cases i
      · exact eO.symm
      · exact eC.symm
      · exact eH.symm
      · exact eF.symm
      · rfl
      · rfl
    rw [e, hT, minTriangleArea_affineMap]
    have : |1 / c * -1 - 0 * 0| = 1 / c := by
      rw [show 1 / c * -1 - 0 * 0 = -(1 / c) by ring, abs_neg, abs_of_pos (one_div_pos.2 c0)]
    rw [this]
    have hA' : 8 / 73 / 2 ≤ minTriangleArea ![ptO, ptC c, ptH h, ptF f, L, M] := by
      linarith [σ_lt]
    have := mul_le_mul_of_nonneg_left hA' (one_div_pos.2 c0).le
    calc 8 / 73 / c / 2 = 1 / c * (8 / 73 / 2) := by ring
      _ ≤ _ := this
  have l7 := TypeIICompletion.lemma7 (l := 1 - h) (b := f / c) (s := 8 / 73 / c) (L := T L)
    (P := T M) (by positivity) (div_pos hf c0) ((div_lt_one c0).2 hfc') (by linarith)
    (by linarith) hL' (hce L hS.lowerL) hM' (hce M hS.lowerM) hmin6
  obtain ⟨-, l2, l3⟩ := l7
  have eTL : 1 - (T L).2 = L.2 := by simp only [hT, affineMap]; ring
  rw [eTL] at l2 l3
  have hne : h ≠ 0 := h0.ne'
  have cne : c ≠ 0 := c0.ne'
  have fne : f ≠ 0 := hf.ne'
  have e2 : 8 / 73 / c * (1 - (1 - h) + 1) / (f / c * (1 - (1 - h))) = 8 / 73 * (h + 1) / (f * h) := by
    rw [show 1 - (1 - h) = h by ring]
    field_simp
  rw [e2] at l2
  have e3 : c * TypeIICompletion.Zroot (8 / 73 / c) (1 - (1 - h)) = bigZ (h * c) := by
    unfold TypeIICompletion.Zroot bigZ
    have hsq : (h * c) ^ 2 - 8 * (8 / 73) * (h * c) + 4 * (8 / 73) ^ 2 =
        c ^ 2 * ((1 - (1 - h)) ^ 2 - 8 * (8 / 73 / c) * (1 - (1 - h)) + 4 * (8 / 73 / c) ^ 2) := by
      field_simp; ring
    rw [hsq, Real.sqrt_mul (sq_nonneg c), Real.sqrt_sq c0.le]
    ring
  have hcz : c * L.2 ≤ bigZ (h * c) := by
    rw [← e3]; exact mul_le_mul_of_nonneg_left l3 c0.le
  refine ⟨hL, hM, l2, hcz, ?_⟩
  rw [div_le_iff₀ (mul_pos hf h0)] at l2
  have k1 := mul_le_mul_of_nonneg_left l2 c0.le
  have k2 := mul_le_mul_of_nonneg_left hcz (mul_nonneg hf.le h0.le)
  linarith

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:eq4-5`). For `p ≥ ρ`, `Z(p) ≤ (48p - 266s)/23` (4); hence,
in the reduced one-cap placement with `L` on the `H`-side of `OF`,
`f ≥ f₀(h, c) = 23sc(h + 1)/(h(48hc - 266s))` (5). `docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md`,
lines 101-123.
Uses: C1_TOP_CAP_OF_SPLIT:eq2-3. -/
theorem eq4_5 :
    (∀ p : ℝ, 49 / 60 ≤ p → bigZ p ≤ (48 * p - 266 * (8 / 73)) / 23) ∧
      ∀ {h c d f : ℝ} {L M X P : Point}, OneCapSetting h c d f L M X P →
        0 < sarea ptO (ptF f) L → fLow h c ≤ f := by
  have tang : ∀ p : ℝ, 49 / 60 ≤ p → bigZ p ≤ (48 * p - 266 * (8 / 73)) / 23 := by
    intro p hp
    unfold bigZ
    have h1 : 0 ≤ (73 * p - 532 * (8 / 73)) / 23 := by
      apply div_nonneg _ (by norm_num); nlinarith
    have h2 : Real.sqrt (p ^ 2 - 8 * (8 / 73) * p + 4 * (8 / 73) ^ 2) ≤
        (73 * p - 532 * (8 / 73)) / 23 := by
      rw [Real.sqrt_le_left h1]
      nlinarith [sq_nonneg (20 * p - 153 * (8 / 73))]
    linarith
  refine ⟨tang, ?_⟩
  intro h c d f L M X P hS hLH
  obtain ⟨-, -, -, -, k⟩ := eq2_3 hS hLH
  obtain ⟨hk, -, kgt⟩ := eq1 hS
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by nlinarith
  have hp : 49 / 60 ≤ h * c := by linarith
  have t := tang (h * c) hp
  have hD : 0 < 48 * (h * c) - 266 * (8 / 73) := by nlinarith
  unfold fLow
  rw [div_le_iff₀ (mul_pos h0 (by nlinarith))]
  have := mul_le_mul_of_nonneg_left t (mul_pos h0 hf).le
  nlinarith

set_option linter.unusedVariables false in
/-- The cap elimination (7)–(10) in scalar form. -/
theorem cap_elim {h c d f x Y : ℝ} (hd : 0 < d) (hdh : d ≤ h) (hh : h ≤ 1) (hf : 0 < f)
    (hfc : f ≤ c) (hc : c ≤ 1) (x1 : x ≤ 1) (hfx : f < x) (hxc : x < c)
    (hkY : (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ c * Y) (kgt : 49 / 60 < (4 + 2 * Real.sqrt 3) * (8 / 73))
    (k1 : 8 / 73 ≤ -sarea (ptH h) (ptF f) (x, Y)) (k2 : 8 / 73 ≤ sarea (ptC c) (ptD d) (x, Y))
    (k3 : 8 / 73 ≤ -sarea (ptD d) (ptF f) (x, Y)) :
    (c - x) * -sarea (ptD d) (ptF f) (x, Y) + (x - f) * sarea (ptC c) (ptD d) (x, Y) =
        (1 - x) * ((c - f) * Y - (c - x)) ∧
      8 / 73 * (c - f) ≤ (1 - x) * ((c - f) * Y - (c - x)) ∧
      0 ≤ capQ h c f (1 - x) ∧ 0 ≤ capE0 h c f - capE1 h c * (1 - x) ∧
      0 ≤ capR h c f := by
  have e7 : (c - x) * -sarea (ptD d) (ptF f) (x, Y) + (x - f) * sarea (ptC c) (ptD d) (x, Y) =
      (1 - x) * ((c - f) * Y - (c - x)) := by
    simp only [sarea, ptD, ptF, ptC]; ring
  have h7 : 8 / 73 * (c - f) ≤ (1 - x) * ((c - f) * Y - (c - x)) := by
    rw [← e7]
    have := mul_le_mul_of_nonneg_left k3 (show (0 : ℝ) ≤ c - x by linarith)
    have := mul_le_mul_of_nonneg_left k2 (show (0 : ℝ) ≤ x - f by linarith)
    linarith
  have eH : -sarea (ptH h) (ptF f) (x, Y) = (1 - h) * x - f * (Y - h) := by
    simp only [sarea, ptH, ptF]; ring
  rw [eH] at k1
  -- `fY ≤ 1 - h + hf - s - (1 - h)v`
  have hfY : f * Y ≤ 1 - h + h * f - 8 / 73 - (1 - h) * (1 - x) := by linarith
  have hQ : 0 ≤ capQ h c f (1 - x) := by
    unfold capQ capZ0 capB
    have q1 := mul_le_mul_of_nonneg_left h7 hf.le
    have q2 := mul_le_mul_of_nonneg_left hfY (mul_nonneg (show (0 : ℝ) ≤ 1 - x by linarith)
      (show (0 : ℝ) ≤ c - f by linarith))
    nlinarith
  have hE : 0 ≤ capE0 h c f - capE1 h c * (1 - x) := by
    unfold capE0 capE1
    have q1 := mul_le_mul_of_nonneg_left hfY (show (0 : ℝ) ≤ c by linarith)
    have q2 : 49 / 60 * f ≤ c * Y * f := mul_le_mul_of_nonneg_right (by linarith) hf.le
    nlinarith
  refine ⟨e7, h7, hQ, hE, ?_⟩
  -- the maximum of `Q + ωE`
  have hZ0 : 0 < capZ0 h c f := by
    unfold capZ0
    have := mul_nonneg (show (0 : ℝ) ≤ c by linarith) (show (0 : ℝ) ≤ 1 - h by linarith)
    have := mul_pos (show (0 : ℝ) < h by linarith) hf
    linarith
  have hsum : 0 ≤ capQ h c f (1 - x) + 5 / 64 * (capE0 h c f - capE1 h c * (1 - x)) := by
    linarith
  have e : 4 * capZ0 h c f * (capQ h c f (1 - x) + 5 / 64 * (capE0 h c f - capE1 h c * (1 - x))) =
      capR h c f - (2 * capZ0 h c f * (1 - x) - (capB h c f - 5 / 64 * capE1 h c)) ^ 2 := by
    unfold capQ capR; ring
  have := mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 4) hZ0.le) hsum
  nlinarith [sq_nonneg (2 * capZ0 h c f * (1 - x) - (capB h c f - 5 / 64 * capE1 h c))]

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:eq7-10`, the cap elimination). In the reduced one-cap
placement (independently of the side of `L`), with `X = (x, Y)`, `r = -[DFX]`, `β = [CDX]`,
`v = 1 - x`: `(c - x)r + (x - f)β = (1 - x){(c - f)Y - (c - x)} ≥ s(c - f)` (7);
`Q(v) ≥ 0` (8); `E(v) = E₀ - E₁v ≥ 0` (9); hence `R(h, c, f) ≥ 0` (10).
`docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md`, lines 157-207.
Uses: C1_TOP_CAP_OF_SPLIT:eq1, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c. -/
theorem eq7_10 {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P) :
    (c - X.1) * -sarea (ptD d) (ptF f) X + (X.1 - f) * sarea (ptC c) (ptD d) X =
        (1 - X.1) * ((c - f) * X.2 - (c - X.1)) ∧
      8 / 73 * (c - f) ≤ (1 - X.1) * ((c - f) * X.2 - (c - X.1)) ∧
      0 ≤ capQ h c f (1 - X.1) ∧ 0 ≤ capE0 h c f - capE1 h c * (1 - X.1) ∧
      0 ≤ capR h c f := by
  obtain ⟨hk, hkY, kgt⟩ := eq1 hS
  obtain ⟨hfx, hxc, hfcs⟩ := claim_x_lt_c hS
  have h8 : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] := min8 hS.competitive
  obtain ⟨-, -, -, -, k1, -, k2, k3, -, -, -⟩ :=
    C1TopCapRadialSplit.rs_cap (L := L) (M := M) (X := X)
      ⟨hS.anchors, hS.memL, hS.memM, hS.memX, h8, hS.lowerL, hS.lowerM, hS.capX.le⟩
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.memX
  exact cap_elim hd hdh hh hf hfc hc x1 hfx hxc hkY kgt k1 k2 k3

/-- The five coefficients `N_k` are negative at every point of the parameter square. -/
theorem of_N_neg {H0 C0 : ℝ} (h0 : 0 ≤ H0) (h1 : H0 ≤ 1) (c0 : 0 ≤ C0) (c1 : C0 ≤ 1) (j : Fin 5) :
    (Quart.eN OfSplitCert.ec OfSplitCert.ep OfSplitCert.eD OfSplitCert.el
      (OfSplitCert.el + OfSplitCert.eW) j).eval (pointOf [H0, C0]) < 0 := by
  rcases le_total C0 (1 / 2) with hC | hC
  · have hb1 : ((0 : ℚ) : ℝ) ≤ H0 ∧ H0 ≤ ((1 : ℚ) : ℝ) := by push_cast; exact ⟨h0, h1⟩
    have hb2 : ((0 : ℚ) : ℝ) ≤ C0 ∧ C0 ≤ ((1 / 2 : ℚ) : ℝ) := by push_cast; exact ⟨c0, hC⟩
    fin_cases j
    · exact Quart.sound_rect OfSplitCert.chk0_0 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk1_0 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk2_0 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk3_0 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk4_0 hb1 hb2
  rcases le_total H0 (1 / 2) with hH | hH
  · have hb1 : ((0 : ℚ) : ℝ) ≤ H0 ∧ H0 ≤ ((1 / 2 : ℚ) : ℝ) := by push_cast; exact ⟨h0, hH⟩
    have hb2 : ((1 / 2 : ℚ) : ℝ) ≤ C0 ∧ C0 ≤ ((1 : ℚ) : ℝ) := by push_cast; exact ⟨hC, c1⟩
    fin_cases j
    · exact Quart.sound_rect OfSplitCert.chk0_1 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk1_1 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk2_1 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk3_1 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk4_1 hb1 hb2
  · have hb1 : ((1 / 2 : ℚ) : ℝ) ≤ H0 ∧ H0 ≤ ((1 : ℚ) : ℝ) := by push_cast; exact ⟨hH, h1⟩
    have hb2 : ((1 / 2 : ℚ) : ℝ) ≤ C0 ∧ C0 ≤ ((1 : ℚ) : ℝ) := by push_cast; exact ⟨hC, c1⟩
    fin_cases j
    · exact Quart.sound_rect OfSplitCert.chk0_2 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk1_2 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk2_2 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk3_2 hb1 hb2
    · exact Quart.sound_rect OfSplitCert.chk4_2 hb1 hb2

/-- **Claim** (`C1_TOP_CAP_OF_SPLIT:claim-certificate`, made-up id). `R(h, c, f) < 0` whenever
`ρ ≤ hc ≤ c ≤ 1` and `f₀(h, c) ≤ f ≤ c - s`. In the manuscript: with `p = hc`,
`f = (ℓ + Wθ)/D`, the five scaled quartic Bernstein coefficients `N_k(p, c)` (11)–(12) have all
tensor Bernstein coefficients below `-2` on three rectangles of `(H₀, C₀)`; checked by
`docs/proof/nine/check_c1_top_cap_of_split.py`. `docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md`, lines 209-292. -/
theorem claim_certificate (h c f : ℝ) (hp : 49 / 60 ≤ h * c) (hpc : h * c ≤ c) (hc : c ≤ 1)
    (hf : fLow h c ≤ f) (hf' : f ≤ c - 8 / 73) :
    capR h c f < 0 := by
  have c0 : 0 < c := by nlinarith
  have h0 : 0 < h := by nlinarith
  obtain ⟨H0, C0, h0', h1', c0', c1', hcC, hpH⟩ := Quart.params hp hpc hc
  set p := h * c with hpdef
  set D := p * (48 * p - 2128 / 73) with hD
  set l := 184 / 73 * c * (p + c) with hl
  set W := (c - 8 / 73) * D - l with hW
  have hD0 : 0 < D := by simp only [hD]; nlinarith
  -- the expressions at the point `(H₀, C₀)`
  have ec_e : OfSplitCert.ec.eval (pointOf [H0, C0]) = c := by
    simp only [OfSplitCert.ec, Cert.Expr.eval_plus, Cert.Expr.eval_times, Cert.Expr.eval_k, Cert.Expr.eval_v, pointOf_zero, pointOf_succ]
    push_cast; linarith
  have ep_e : OfSplitCert.ep.eval (pointOf [H0, C0]) = p := by
    simp only [OfSplitCert.ep, Cert.Expr.eval_plus, Cert.Expr.eval_times, Cert.Expr.eval_k, Cert.Expr.eval_v, pointOf_zero, pointOf_succ]
    push_cast; linarith
  have eD_e : OfSplitCert.eD.eval (pointOf [H0, C0]) = D := by
    simp only [OfSplitCert.eD, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_k, ep_e]; push_cast; ring
  have el_e : OfSplitCert.el.eval (pointOf [H0, C0]) = l := by
    simp only [OfSplitCert.el, Cert.Expr.eval_plus, Cert.Expr.eval_times, Cert.Expr.eval_k, ec_e, ep_e]; push_cast; ring
  have eW_e : OfSplitCert.eW.eval (pointOf [H0, C0]) = W := by
    simp only [OfSplitCert.eW, Cert.Expr.eval_minus, Cert.Expr.eval_times, Cert.Expr.eval_k, ec_e, eD_e, el_e]; push_cast; ring
  have hN : ∀ j, Quart.rN c p D l (l + W) j < 0 := by
    intro j
    have := of_N_neg h0' h1' c0' c1' j
    rwa [Quart.eval_eN, ec_e, ep_e, eD_e, Cert.Expr.eval_plus, el_e, eW_e] at this
  -- `f = (ℓ + Wθ)/D`
  have hfl : fLow h c * D = l := by
    have hq : 0 < 48 * h * c - 266 * (8 / 73) := by nlinarith
    have hne : h * (48 * h * c - 266 * (8 / 73)) ≠ 0 := (mul_pos h0 hq).ne'
    simp only [fLow, hD, hl, hpdef]; rw [div_mul_eq_mul_div, div_eq_iff hne]; ring
  have hlf : l ≤ f * D := by rw [← hfl]; exact mul_le_mul_of_nonneg_right hf hD0.le
  have hfW : f * D ≤ l + W := by
    have := mul_le_mul_of_nonneg_right hf' hD0.le; simp only [hW]; linarith
  obtain ⟨θ, hθ0, hθ1, hθ⟩ : ∃ θ : ℝ, 0 ≤ θ ∧ θ ≤ 1 ∧ l * (1 - θ) + (l + W) * θ = f * D := by
    rcases eq_or_lt_of_le (show 0 ≤ W by linarith) with hW0 | hW0
    · refine ⟨0, le_rfl, by norm_num, ?_⟩
      rw [← hW0] at hfW; linarith
    · refine ⟨(f * D - l) / W, div_nonneg (by linarith) hW0.le,
        (div_le_one hW0).2 (by linarith), ?_⟩
      field_simp; ring
  have hG := Quart.G_neg hθ0 hθ1 hN
  rw [hθ, Quart.G_eq c p D f c0.ne'] at hG
  have hpc' : p / c = h := by simp only [hpdef]; field_simp
  rw [hpc'] at hG
  have hR : capR h c f = ((c - f) * (1 - h + h * f - 8 / 73) - f * (c - 1) - 5 / 64 * (c * (1 - h))) ^ 2 -
      4 * (c * (1 - h) + h * f) *
        (8 / 73 * f * (c - f) - 5 / 64 * (c * (1 - h + h * f - 8 / 73) - f * (49 / 60))) := by
    simp only [capR, capB, capE1, capZ0, capE0]
  rw [hR]
  have hpos : 0 < D ^ 4 * c ^ 2 := by positivity
  by_contra hn; push Not at hn
  have := mul_nonneg hpos.le hn
  linarith

/-- **Theorem** (`C1_TOP_CAP_OF_SPLIT:Theorem`). In the reduced one-cap placement, `L` is not on
the `H`-side of `OF`: the lower pair does not straddle `OF`, and both lower points lie in `OCF`.
(Relative to the reflection choosing `P ∈ OCX`; the reflected statement applies when
`P ∈ OHX`.) `docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md`, lines 28-34 and 294-298.
Uses: C1_TOP_CAP_OF_SPLIT:eq2-3, C1_TOP_CAP_OF_SPLIT:eq4-5, C1_TOP_CAP_OF_SPLIT:claim-x-lt-c,
C1_TOP_CAP_OF_SPLIT:eq7-10, C1_TOP_CAP_OF_SPLIT:claim-certificate. -/
theorem theorem_main {h c d f : ℝ} {L M X P : Point} (hS : OneCapSetting h c d f L M X P) :
    ¬ 0 < sarea ptO (ptF f) L ∧ InTriangle L ptO (ptC c) (ptF f) ∧
      InTriangle M ptO (ptC c) (ptF f) := by
  obtain ⟨hk, hkY, kgt⟩ := eq1 hS
  obtain ⟨hfx, hxc, hfcs⟩ := claim_x_lt_c hS
  obtain ⟨-, -, -, -, hR⟩ := eq7_10 hS
  have hnot : ¬ 0 < sarea ptO (ptF f) L := by
    intro hLH
    have hf0 := (eq4_5).2 hS hLH
    obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
    have h0 : 0 < h := by nlinarith
    have := claim_certificate h c f (by linarith) (by nlinarith) hc hf0 hfcs
    linarith
  have h8 : A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] := min8 hS.competitive
  obtain ⟨hd1, hf1, -, -, k1, kCF, k2, -, hHC, hhf, -⟩ :=
    C1TopCapRadialSplit.rs_cap (L := L) (M := M) (X := X)
      ⟨hS.anchors, hS.memL, hS.memM, hS.memX, h8, hS.lowerL, hS.lowerM, hS.capX.le⟩
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨x0, x1, y0, y1⟩ := hS.memX
  have h0 : 0 < h := by nlinarith
  have c0 : 0 < c := by nlinarith
  have hOFX : sarea ptO (ptF f) X < 0 := by
    have e : sarea ptO (ptF f) X = f * X.2 - X.1 := by simp only [sarea, ptO, ptF]; ring
    rw [e]; nlinarith
  have hHCF : 0 < sarea (ptH h) (ptC c) (ptF f) := by
    have e : sarea (ptH h) (ptC c) (ptF f) = c * (1 - h) + h * f := by
      simp only [sarea, ptH, ptC, ptF]; ring
    rw [e]; nlinarith [mul_nonneg c0.le (show (0 : ℝ) ≤ 1 - h by linarith)]
  have hMs : 0 < sarea ptO M X := by rw [sarea_cycle X ptO M]; exact hS.M_OCX.2.2
  obtain ⟨-, hMF⟩ := C1TopCapRadialSplit.rs_low h0 c0 hf hHC (by linarith) (by nlinarith) hOFX
    hHCF hS.lowerM hMs
  refine ⟨hnot, ?_, hMF⟩
  -- `L` on the `C`-side of `OF`
  have hL0 : sarea ptO (ptF f) L ≠ 0 := ar_ne (by norm_num) (ar hS.competitive 0 3 5)
  have hLn : sarea ptO (ptF f) L < 0 := lt_of_le_of_ne (not_lt.1 hnot) hL0
  obtain ⟨r1, r2, r3⟩ := hS.lowerL
  refine ⟨r1, ?_, by have := sarea_cycle (ptF f) ptO L; rw [sarea_swap₁₂] at this ⊢; linarith⟩
  have g := gp (ptC c) (ptF f) ptO (ptH h) L
  have q1 : sarea (ptC c) ptO (ptH h) = -(h * c) := by simp only [sarea, ptC, ptO, ptH]; ring
  have q2 : sarea (ptC c) (ptF f) (ptH h) = sarea (ptH h) (ptC c) (ptF f) := by
    simp only [sarea]; ring
  have q3 : sarea (ptC c) ptO L = -sarea ptO (ptC c) L := by simp only [sarea]; ring
  have q4 : sarea (ptC c) (ptF f) ptO = c := by simp only [sarea, ptC, ptF, ptO]; ring
  rw [q1, q2, q3, q4] at g
  by_contra hn; push Not at hn
  have p1 := mul_pos hHCF r1
  have p2 := mul_pos c0 r2
  have p3 := mul_nonneg (show (0 : ℝ) ≤ -sarea (ptC c) (ptF f) L by linarith) (mul_pos h0 c0).le
  linarith

end Heilbronn.Nine.C1TopCapOfSplit
