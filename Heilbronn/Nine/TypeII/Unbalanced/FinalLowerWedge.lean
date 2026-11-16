module

public import Heilbronn.Nine.TypeII.Unbalanced.RightHull
public import Heilbronn.Nine.TypeII.Unbalanced.CellI
public import Heilbronn.Nine.TypeII.Unbalanced.CellIII
public import Heilbronn.Nine.TypeII.Unbalanced.RadialSplit
public import Heilbronn.Nine.TypeII.Unbalanced.UpperCellII
public import Heilbronn.Nine.TypeII.Unbalanced.OneUpperRadial
public import Heilbronn.Nine.TypeII.Unbalanced.OccupiedLowerEar
public import Heilbronn.Nine.TypeII.Unbalanced.FinalNegativeLine
public import Heilbronn.Nine.TypeII.Unbalanced.FinalUpperPair
public import Heilbronn.Nine.TypeII.Unbalanced.ChainBasic
public import Heilbronn.Nine.TypeII.TypeIICompletion
public import Heilbronn.Nine.Corners.CornerFamilies

/-! # The last unbalanced cell and completion of Type II (`docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`)

**Role.** Primary route. Theorem 1 excludes the last placement of the one-point upper cut in
cell II; §5 (`claim_chain`) assembles the chain `UNBALANCED_ONE_UPPER_RADIAL` →
`UNBALANCED_OCCUPIED_LOWER_EAR` → `UNBALANCED_FINAL_NEGATIVE_LINE` →
`UNBALANCED_FINAL_UPPER_PAIR` → Theorem 1; and Theorem 2 is the complete Type-II theorem cited by
`UNRESTRICTED.md` §3 (lines 80-84), `TYPE_II.md` (lines 5-12), `TYPE_II_COMPLETION.md`
(lines 16-19) and `GLOBAL_THEOREM.md` (line 87). `typeII_exclusion` restates Theorem 2 in the
form used by the assembly.

**Setting of Theorem 1** (lines 5-30, `WedgeSetting`): `Row123 l b P Q R S T`, every actual
doubled area at least `s = 8/73` (`4/73 ≤ minTriangleArea (typeIIConfig …)`), the right hull the
quadrilateral `B, R, S, C` with `T` inside, in support cell II, and the strict placement
`P` above `CE` and `DR`; `Q ∈ int ERS ∩ int EBS`, below `CE` and `DR`;
`T ∈ int ECR ∩ int DCR ∩ int CQS`; `[QTE], [QTC] > 0`, `[QTS] < 0`. Write `R = (r, u)`,
`S = (k, t)`, `q = 1 - λ`, `A = [ERC]`, `B₁ = [ESC]`, `δ = [ERS]`, `η = [RSC]`, `J = [DRS]`.

Explicit functions of §§2-4 (generic in `s`): `aStar` (`A_* = 1 - q(1 - r)`), `deltaStar`
(`δ_* = A_* - rB_*`), `fStar`, `gStar` (`F_*`, `G_*` of (5)), `betaFn`, `gammaFn` (`β`, `γ` of
(7)), `discFn` (`Δ = β² + 14rγ`), and the quartics `p0Poly`, `p1Poly` of (9).

**Results.**
* `claim_ids` (1): `δ = kA - rB₁`, `η = B₁ + δ - A`, `J = δ + q(k - r)`; `0 < δ < A`, `B₁ > η`.
* `claim_F` (2): `F = (qr - 2s)δ - sq(k + r) ≥ 0`.
* `claim_G` (3): `G = (B₁ - 2s)δ - s(A + B₁) ≥ 0`, so `B₁ > 3s`.
* `claim_replace` (4)-(6): `qr ≥ 3s`, `F_*, G_* ≥ 0`, `3/5 < r < 65/73`, `3s/r ≤ q < 9/10`.
* `eq7`, `eq8`, `claim_W` (7)-(9): the weighted quadratic `W = F_* + (7/2)G_*`, the endpoint
  values of `Δ`, and `0 ≤ Δ(q, r) ≤ max(Δ(3s/r, r), Δ(9/10, r))`.
* `claim_quartics` (10)-(13): `P₀, P₁ < 0` on `[3/5, 65/73]`.
* `theorem1`: the final placement is impossible.
* `claim_chain` (§5): the one-point upper cut in cell II is impossible (minimum area `≥ A₀`).
* `theorem2`: every Type-II configuration (`0 < b < 1`, `0 < λ < 1`, free points in the square)
  has minimum triangle area `< A₀`; `typeII_exclusion`: none has `A₀ ≤ minTriangleArea`.

Theorem 2 covers the whole Type-II family `IsTypeII`, not only `b ≤ 1/2`: its proof starts from
the count reduction of `TYPE_II.md` §8, which includes the shear normalization of `TYPE_II.md`
§2 (to `b ≤ 1/2` or Type III, area-equivalently, "after the permitted reflection", line 296).
Its proof chains through the following results of other groups' manuscripts:
`TYPE_II:ShearNormalization`, `TYPE_II:claim-two-residual-classes` (§8 count reduction, built on
`TYPE_II:claim-count-bounds` and `TYPE_II:claim-exclude-213`), `CORNER_FAMILIES:TypeIII-complete`,
`TYPE_II_COMPLETION:Theorem11` (row `(2,2,2)`), `TYPE_II:UnbalancedCutLemma` (no central point
above `CE`), `TYPE_II_COMPLETION:Theorem12`, `TYPE_II_COMPLETION:Theorem14` (triangular right
hull, via `TYPE_II_COMPLETION:Theorem13`), and, inside this group, `UNBALANCED_RIGHT_HULL`
Theorems 1-4, `UNBALANCED_RADIAL_SPLIT:Theorem1`, `UNBALANCED_UPPER_CELL_II:Theorem1`,
`UNBALANCED_CELL_I:Theorem1`, `UNBALANCED_CELL_III:Theorem1` and `claim_chain`.

Implicit in the manuscript: the manuscript's Theorem 2 assembly (lines 308-313) does not list
`UNBALANCED_RIGHT_HULL` Theorems 3-4 and `UNBALANCED_RADIAL_SPLIT:Theorem1`; they enter through
`UNBALANCED_UPPER_CELL_II` (its line 51) and are listed in `Uses` below. Points on a dividing
line give a zero area (line 285), so the strict alternatives of `claim_chain` are exhaustive.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.UnbalancedFinalLowerWedge

open UnbalancedRightHull UnbalancedChain

variable {l b : ℝ} {P Q R S T : Point}

/-- The final strict placement of the note (every actual doubled area at least `8/73`). -/
structure WedgeSetting (l b : ℝ) (P Q R S T : Point) : Prop where
  row : Row123 l b P Q R S T
  min : 4 / 73 ≤ minTriangleArea (typeIIConfig l b P Q R S T)
  quad : QuadHull (ptB b) R S ptC T
  cell : CellII (ptB b) R S ptC T
  P_above_CE : 0 < sarea (ptE l) ptC P
  P_above_DR : 0 < sarea ptD R P
  Q_ERS : InTriangle Q (ptE l) R S
  Q_EBS : InTriangle Q (ptE l) (ptB b) S
  Q_below_CE : sarea (ptE l) ptC Q < 0
  Q_below_DR : sarea ptD R Q < 0
  T_ECR : InTriangle T (ptE l) R ptC
  T_DCR : InTriangle T ptD R ptC
  T_CQS : InTriangle T ptC Q S
  QTE_pos : 0 < sarea Q T (ptE l)
  QTC_pos : 0 < sarea Q T ptC
  QTS_neg : sarea Q T S < 0

/-! ### The scalar functions of §§2-4 -/

/-- `A_* = 1 - q(1 - r)`, (5). -/
def aStar (q r : ℝ) : ℝ := 1 - q * (1 - r)

/-- `δ_* = A_* - rB_*`, (5). -/
def deltaStar (q r B : ℝ) : ℝ := aStar q r - r * B

/-- `F_* = (qr - 2s)δ_* - sq(1 + r)`, (5). -/
def fStar (s q r B : ℝ) : ℝ := (q * r - 2 * s) * deltaStar q r B - s * q * (1 + r)

/-- `G_* = (B_* - 2s)δ_* - s(A_* + B_*)`, (5). -/
def gStar (s q r B : ℝ) : ℝ := (B - 2 * s) * deltaStar q r B - s * (aStar q r + B)

/-- `β(q, r) = -{2qr² - 7qr + 7q - 18rs + 7s - 7}/2`, (7). -/
def betaFn (s q r : ℝ) : ℝ :=
  -(2 * q * r ^ 2 - 7 * q * r + 7 * q - 18 * r * s + 7 * s - 7) / 2

/-- `γ(q, r) = {2q²r² - 2q²r - 27qrs + 2qr + 23qs - 25s}/2`, (7). -/
def gammaFn (s q r : ℝ) : ℝ :=
  (2 * q ^ 2 * r ^ 2 - 2 * q ^ 2 * r - 27 * q * r * s + 2 * q * r + 23 * q * s - 25 * s) / 2

/-- `Δ(q, r) = β² + 14rγ`, (7). -/
def discFn (s q r : ℝ) : ℝ := betaFn s q r ^ 2 + 14 * r * gammaFn s q r

/-- `P₀(r)`, with `Δ(3s/r, r) = P₀(r)/(21316r²)` at `s = 8/73`, (8)-(9). -/
def p0Poly (r : ℝ) : ℝ := 9216 * r ^ 4 - 303968 * r ^ 3 + 447265 * r ^ 2 - 209328 * r + 28224

/-- `P₁(r)`, with `Δ(9/10, r) = P₁(r)/2131600` at `s = 8/73`, (8)-(9). -/
def p1Poly (r : ℝ) : ℝ :=
  1726596 * r ^ 4 + 8301852 * r ^ 3 - 451251 * r ^ 2 - 7623182 * r + 2401

/-! ### Theorem 1 -/

/-- The coordinate order and the positivity of `A = [ERC]` and `B₁ = [ESC]` in the final
placement (the right points lie below `CE`). -/
theorem wedge_facts (h : WedgeSetting l b P Q R S T) :
    0 < b ∧ b ≤ 1 / 2 ∧ 0 < l ∧ l < 1 ∧ R.2 < R.1 ∧ b < R.1 ∧ R.1 < S.1 ∧ S.1 ≤ 1 ∧
      0 ≤ R.2 ∧ R.2 < S.2 ∧ S.2 < 1 ∧ 0 < sarea (ptE l) R ptC ∧ 0 < sarea (ptE l) S ptC := by
  obtain ⟨o1, o2, o3, o4, o5, o6, o7⟩ := UnbalancedCellI.claim_order h.row h.quad
  have hb := h.row.b_pos
  have hb2 := h.row.b_le
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hR := right_below_CE (l := l) hb (by linarith) hl h.row.R_mem h.row.R_right
  have hS := right_below_CE (l := l) hb (by linarith) hl h.row.S_mem h.row.S_right
  rw [← neg_pos, ← sarea_swap₂₃] at hR hS
  exact ⟨hb, hb2, hl, hl1, o1, o2, o3, o4, o5, o6, o7, hR, hS⟩

/-- `4/73 ≤ min` in the doubled form used by the area lemmas. -/
theorem wedge_min (h : WedgeSetting l b P Q R S T) :
    (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
  have := h.min; linarith

/-- The point `Q` is inside `EBC` and `ECR`, and the actual areas at `Q` used in §§1-2. -/
theorem wedge_Q (h : WedgeSetting l b P Q R S T) :
    InTriangle Q (ptE l) (ptB b) ptC ∧ InTriangle Q (ptE l) R ptC ∧
      8 / 73 ≤ sarea (ptE l) R Q ∧ 8 / 73 ≤ sarea R S Q ∧ 8 / 73 ≤ sarea S (ptE l) Q ∧
      8 / 73 ≤ sarea R ptD Q ∧ 8 / 73 ≤ sarea ptD (ptE l) Q := by
  obtain ⟨hb, hb2, hl, hl1, -, -, -, -, -, -, -, hA, -⟩ := wedge_facts h
  have hm := wedge_min h
  have hQ := central_EBC hb (by linarith) hl hl1 h.row.Q_central h.Q_below_CE
  obtain ⟨q1, q2, q3⟩ := h.Q_ERS
  have hRCQ : 0 < sarea R ptC Q := by
    refine pos_of_inside hQ ?_ ?_ ?_ (Or.inl ?_)
    · rw [sarea_cycle]; exact hA.le
    · rw [sarea_cycle]; exact h.row.R_right.le
    · exact (by unfold sarea; ring : sarea R ptC ptC = 0).ge
    · rw [sarea_cycle]; exact hA
  have hCEQ : 0 < sarea ptC (ptE l) Q := by rw [sarea_swap₁₂]; linarith [h.Q_below_CE]
  have hRDQ : 0 < sarea R ptD Q := by rw [sarea_swap₁₂]; linarith [h.Q_below_DR]
  have hDEQ : 0 < sarea ptD (ptE l) Q := by
    have := (central_facts hb (by linarith) h.row.Q_central).1
    simp only [sarea, ptD, ptE]; nlinarith
  exact ⟨hQ, ⟨q1, hRCQ, hCEQ⟩, ge_of_pos (abs_ge hm 2 6 5) q1, ge_of_pos (abs_ge hm 6 7 5) q2,
    ge_of_pos (abs_ge hm 7 2 5) q3, ge_of_pos (abs_ge hm 6 0 5) hRDQ,
    ge_of_pos (abs_ge hm 0 2 5) hDEQ⟩

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-ids`), equation (1). The identities
`δ = kA - rB₁`, `η = B₁ + δ - A`, `J = δ + q(k - r)`, and in the final placement `0 < δ < A`
and `B₁ > η`. `docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 41-57. -/
theorem claim_ids (h : WedgeSetting l b P Q R S T) :
    let A := sarea (ptE l) R ptC
    let B₁ := sarea (ptE l) S ptC
    let δ := sarea (ptE l) R S
    let η := sarea R S ptC
    δ = S.1 * A - R.1 * B₁ ∧ η = B₁ + δ - A ∧ sarea ptD R S = δ + (1 - l) * (S.1 - R.1) ∧
      0 < δ ∧ δ < A ∧ η < B₁ := by
  intro A B₁ δ η
  obtain ⟨hb, -, hl, hl1, -, hbr, -, hk1, -, -, -, hA, hB⟩ := wedge_facts h
  have e1 : sarea (ptE l) R S = S.1 * sarea (ptE l) R ptC - R.1 * sarea (ptE l) S ptC := by
    simp only [sarea, ptE, ptC]; ring
  have e2 : sarea R S ptC = sarea (ptE l) S ptC + sarea (ptE l) R S - sarea (ptE l) R ptC := by
    simp only [sarea, ptE, ptC]; ring
  have e3 : sarea ptD R S = sarea (ptE l) R S + (1 - l) * (S.1 - R.1) := by
    simp only [sarea, ptE, ptD]; ring
  have hδ : 0 < sarea (ptE l) R S := by
    obtain ⟨q1, q2, q3⟩ := h.Q_ERS; linarith [sarea_add_sarea_add_sarea (ptE l) R S Q]
  have hδA : sarea (ptE l) R S < sarea (ptE l) R ptC := by
    rw [e1]; nlinarith [mul_pos (by linarith : (0 : ℝ) < R.1) hB,
      mul_le_mul_of_nonneg_right hk1 hA.le]
  exact ⟨e1, e2, e3, hδ, hδA, show sarea R S ptC < sarea (ptE l) S ptC by rw [e2]; linarith⟩

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-F`), equation (2). `Q` below `DR` and inside
`ERS` give `F = (qr - 2s)δ - sq(k + r) ≥ 0` (`s = 8/73`).
`docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 59-73.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-ids. -/
theorem claim_F (h : WedgeSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    0 ≤ (q * R.1 - 2 * s) * sarea (ptE l) R S - s * q * (S.1 + R.1) := by
  intro s q
  obtain ⟨hb, -, hl, hl1, -, hbr, hrk, -, -, -, -, -, -⟩ := wedge_facts h
  obtain ⟨-, -, e3, hδ, -, -⟩ := claim_ids h
  obtain ⟨-, -, a1, a2, a3, a4, a5⟩ := wedge_Q h
  have hbar := bary (ptE l) R S Q R ptD
  have vE : sarea R ptD (ptE l) = (1 - l) * R.1 := by simp only [sarea, ptE, ptD]; ring
  have vR : sarea R ptD R = 0 := by simp only [sarea]; ring
  have vS : sarea R ptD S = -sarea ptD R S := by simp only [sarea, ptD]; ring
  rw [vE, vR, vS, e3] at hbar
  have hsum := sarea_add_sarea_add_sarea (ptE l) R S Q
  have hqr : 0 < (1 - l) * R.1 := mul_pos (by linarith) (by linarith)
  have hJ : 0 < sarea (ptE l) R S + (1 - l) * (S.1 - R.1) := by nlinarith
  simp only [s, q]
  nlinarith [mul_le_mul_of_nonneg_left a4 hδ.le, mul_le_mul_of_nonneg_right a1 hqr.le,
    mul_le_mul_of_nonneg_right a3 hqr.le, mul_le_mul_of_nonneg_right a1 hJ.le]

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-G`), equation (3). `T ∈ int CQS` gives
`G = (B₁ - 2s)δ - s(A + B₁) ≥ 0`, hence `B₁ > 3s` (`s = 8/73`).
`docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 76-100.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-ids. -/
theorem claim_G (h : WedgeSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let A := sarea (ptE l) R ptC
    let B₁ := sarea (ptE l) S ptC
    0 ≤ (B₁ - 2 * s) * sarea (ptE l) R S - s * (A + B₁) ∧ 3 * s < B₁ := by
  intro s A B₁
  show 0 ≤ (sarea (ptE l) S ptC - 2 * (8 / 73)) * sarea (ptE l) R S -
      8 / 73 * (sarea (ptE l) R ptC + sarea (ptE l) S ptC) ∧ 3 * (8 / 73) < sarea (ptE l) S ptC
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, hA, hB⟩ := wedge_facts h
  obtain ⟨-, e2, -, hδ, hδA, -⟩ := claim_ids h
  obtain ⟨-, -, a1, a2, a3, -, -⟩ := wedge_Q h
  have hm := wedge_min h
  obtain ⟨t1, t2, t3⟩ := h.T_CQS
  have hCQS : 3 * (8 / 73) ≤ sarea ptC Q S :=
    one_inside (ge_of_pos (abs_ge hm 1 5 8) t1) (ge_of_pos (abs_ge hm 5 7 8) t2)
      (ge_of_pos (abs_ge hm 7 1 8) t3)
  have hbar := bary (ptE l) R S Q S ptC
  have vE : sarea S ptC (ptE l) = sarea (ptE l) S ptC := sarea_cycle _ _ _
  have vR : sarea S ptC R = sarea R S ptC := sarea_cycle _ _ _
  have vS : sarea S ptC S = 0 := by simp only [sarea]; ring
  have vQ : sarea S ptC Q = sarea ptC Q S := (sarea_cycle _ _ _).symm
  rw [vE, vR, vS, vQ, e2] at hbar
  have hsum := sarea_add_sarea_add_sarea (ptE l) R S Q
  have hAT : 3 * (8 / 73) ≤ sarea (ptE l) R ptC := by
    obtain ⟨u1, u2, u3⟩ := h.T_ECR
    exact one_inside (ge_of_pos (abs_ge hm 2 6 8) u1) (ge_of_pos (abs_ge hm 6 1 8) u2)
      (ge_of_pos (abs_ge hm 1 2 8) u3)
  have hG : 0 ≤ (sarea (ptE l) S ptC - 2 * (8 / 73)) * sarea (ptE l) R S -
      8 / 73 * (sarea (ptE l) R ptC + sarea (ptE l) S ptC) := by
    nlinarith [mul_le_mul_of_nonneg_left hCQS hδ.le, mul_le_mul_of_nonneg_right a1 hB.le,
      mul_le_mul_of_nonneg_right a3 (by linarith : (0 : ℝ) ≤ sarea (ptE l) R ptC -
        sarea (ptE l) R S)]
  refine ⟨hG, ?_⟩
  by_contra hcon
  push Not at hcon
  nlinarith [mul_le_mul_of_nonneg_left hcon hδ.le, mul_pos hδ hA]

/-- The scalar replacements `k → 1`, `A → A + u` of §2 (part of
UNBALANCED_FINAL_LOWER_WEDGE:claim-replace): the coefficients of `k` in `F, G` and of `A` in
`F, G` at `k = 1` are positive. -/
theorem replace_scalar {s q r k A B u : ℝ} (hs : 0 < s) (hqr2 : 0 < q * r - 2 * s) (hr0 : 0 < r)
    (hk1 : k ≤ 1) (hk0 : 0 < k) (hB : 0 < B) (hB3 : 3 * s < B) (hA : 0 < A) (hu : 0 ≤ u)
    (hq : 0 < q) (hF : 0 ≤ (q * r - 2 * s) * (k * A - r * B) - s * q * (k + r))
    (hG : 0 ≤ (B - 2 * s) * (k * A - r * B) - s * (A + B)) :
    0 ≤ (q * r - 2 * s) * (A + u - r * B) - s * q * (1 + r) ∧
      0 ≤ (B - 2 * s) * (A + u - r * B) - s * (A + u + B) := by
  have hc : 0 < (q * r - 2 * s) * A - s * q := by
    by_contra hc
    push Not at hc
    nlinarith [mul_pos hqr2 hB, mul_pos hr0 (mul_pos hqr2 hB), mul_pos hr0 (mul_pos hs hq),
      mul_le_mul_of_nonneg_left hc hk0.le]
  constructor
  · nlinarith [mul_nonneg hqr2.le hu, mul_nonneg (sub_nonneg.2 hk1) hc.le]
  · nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ B - 3 * s) hu,
      mul_nonneg (mul_nonneg (by linarith : (0 : ℝ) ≤ B - 2 * s) (sub_nonneg.2 hk1)) hA.le]

/-- `qr ≥ 3s` and `qL < 3/16` give `r > 128/201 > 3/5` (`s = 8/73`, (6)). -/
theorem r_lower {q r : ℝ} (hDER : 3 * (8 / 73) ≤ q * r) (hqL : q * (1 - r) < 3 / 16)
    (hr0 : 0 < r) (hr1 : r < 1) : 3 / 5 < r := by
  nlinarith [mul_nonneg (sub_nonneg.2 hDER) (by linarith : (0 : ℝ) ≤ 1 - r),
    mul_pos (sub_pos.2 hqL) hr0]

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-replace`), equations (4)-(6). `qr ≥ 3s`
(`Q ∈ DER`); after `k → 1` and `A → A_* = 1 - q(1 - r)`, `F_*(q, r, B₁) ≥ 0` and
`G_*(q, r, B₁) ≥ 0`; and `3/5 < r < 65/73`, `3s/r ≤ q < 9/10` (`s = 8/73`).
`docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 102-150.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-F, UNBALANCED_FINAL_LOWER_WEDGE:claim-G,
UNBALANCED_ONE_UPPER_RADIAL:claim-q<9/10, CORNER_FAMILIES:TwoInteriorPointLemma,
UNBALANCED_FINAL_NEGATIVE_LINE:claim-params. -/
theorem claim_replace (h : WedgeSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    let B₁ := sarea (ptE l) S ptC
    3 * s ≤ q * r ∧ 0 ≤ fStar s q r B₁ ∧ 0 ≤ gStar s q r B₁ ∧ 3 / 5 < r ∧ r < 65 / 73 ∧
      3 * s / r ≤ q ∧ q < 9 / 10 := by
  intro s q r B₁
  obtain ⟨hb, hb2, hl, hl1, hur, hbr, hrk, hk1, hu0, hut, ht1, hA, hB⟩ := wedge_facts h
  obtain ⟨e1, e2, -, hδ, hδA, -⟩ := claim_ids h
  obtain ⟨-, hQERC, a1, a2, a3, a4, a5⟩ := wedge_Q h
  have hm := wedge_min h
  have hF := claim_F h
  obtain ⟨hG, hB3⟩ := claim_G h
  simp only at hF hG hB3
  -- (4): `Q ∈ DER`
  have hDER : 3 * (8 / 73) ≤ (1 - l) * R.1 := by
    have e : sarea ptD (ptE l) R = (1 - l) * R.1 := by simp only [sarea, ptD, ptE]; ring
    rw [← e]
    exact one_inside a5 a1 a4
  have hr0 : 0 < R.1 := by linarith
  -- `A ≥ Ks` from `Q, T ∈ ECR`
  have hK : Kc * (8 / 73) ≤ sarea (ptE l) R ptC :=
    two_inside (by norm_num) hm 2 6 1 5 8 (by decide) hQERC h.T_ECR
  have hK' := Kc_s_gt
  have hAstar : sarea (ptE l) R ptC = 1 - R.2 - (1 - l) * (1 - R.1) := by
    simp only [sarea, ptE, ptC]; ring
  have hq910 : 1 - l < 9 / 10 :=
    UnbalancedOneUpperRadial.claim_q_lt_9_10 h.row (by linarith [h.min]) h.quad
  -- `[CRS] ≥ s` gives `1 - r > s`
  have hη : 8 / 73 ≤ sarea R S ptC := ge_of_pos (abs_ge hm 6 7 1) h.quad.1.2.1
  have hηe : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - S.1) * (1 - R.2) := by
    simp only [sarea, ptC]; ring
  have hr65 : R.1 < 65 / 73 := by
    nlinarith [mul_nonneg (sub_nonneg.2 hk1) (by linarith : (0 : ℝ) ≤ 1 - R.2),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - R.1) (by linarith : (0 : ℝ) ≤ S.2)]
  have hqL : (1 - l) * (1 - R.1) < 3 / 16 := by linarith
  have hr3 : 3 / 5 < R.1 := r_lower hDER hqL hr0 (by linarith)
  rw [e1] at hF hG
  obtain ⟨hFs, hGs⟩ := replace_scalar (by norm_num : (0 : ℝ) < 8 / 73) (by linarith) hr0 hk1
    (by linarith) hB hB3 hA hu0 (by linarith) hF hG
  rw [hAstar] at hFs hGs
  have e4 : 1 - R.2 - (1 - l) * (1 - R.1) + R.2 = aStar (1 - l) R.1 := by unfold aStar; ring
  rw [e4] at hFs hGs
  refine ⟨hDER, by unfold fStar deltaStar; exact hFs, by unfold gStar deltaStar; exact hGs, hr3,
    hr65, ?_, hq910⟩
  show 3 * (8 / 73) / R.1 ≤ 1 - l
  rw [div_le_iff₀ hr0]; linarith

/-- **Equation (7)** (part of UNBALANCED_FINAL_LOWER_WEDGE:claim-W). The weighted sum
`W = F_* + (7/2)G_*` is the concave quadratic `-(7r/2)B² + β(q, r)B + γ(q, r)` in `B = B_*`,
and `Δ - 14rW = (7rB - β)²`. `docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 156-176. -/
theorem eq7 (s q r B : ℝ) :
    fStar s q r B + 7 / 2 * gStar s q r B = -(7 * r / 2) * B ^ 2 + betaFn s q r * B + gammaFn s q r ∧
      discFn s q r - 14 * r * (fStar s q r B + 7 / 2 * gStar s q r B) = (7 * r * B - betaFn s q r) ^ 2 := by
  unfold fStar gStar deltaStar aStar discFn betaFn gammaFn
  constructor <;> ring

/-- **Equation (8)** (part of UNBALANCED_FINAL_LOWER_WEDGE:claim-W). At `s = 8/73` the
discriminant `Δ` is a convex quadratic in `q`, with `q²` coefficient `(2r² + 7r - 7)²/4`, and
endpoint values `Δ(3s/r, r) = P₀(r)/(21316r²)` (`r ≠ 0`) and `Δ(9/10, r) = P₁(r)/2131600`.
`docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 184-208. -/
theorem eq8 (r : ℝ) (hr : r ≠ 0) :
    (∃ c₁ c₀ : ℝ, ∀ q : ℝ,
        discFn (8 / 73) q r = (2 * r ^ 2 + 7 * r - 7) ^ 2 / 4 * q ^ 2 + c₁ * q + c₀) ∧
      discFn (8 / 73) (3 * (8 / 73) / r) r = p0Poly r / (21316 * r ^ 2) ∧
      discFn (8 / 73) (9 / 10) r = p1Poly r / 2131600 := by
  refine ⟨⟨-144 * r ^ 3 / 73 - 441 * r ^ 2 / 73 + 4753 * r / 146 - 3185 / 146,
    5184 * r ^ 2 / 5329 - 69440 * r / 5329 + 207025 / 21316, fun q => ?_⟩, ?_, ?_⟩
  · unfold discFn betaFn gammaFn; ring
  · unfold discFn betaFn gammaFn p0Poly; field_simp; ring
  · unfold discFn betaFn gammaFn p1Poly; ring

/-- Convexity in `q` (part of UNBALANCED_FINAL_LOWER_WEDGE:claim-W): for `q₀ ≤ q ≤ q₁`,
`Δ(q, r) ≤ max(Δ(q₀, r), Δ(q₁, r))`, since the `q²` coefficient `(2r² + 7r - 7)²/4` of `Δ` is
nonnegative for every `s`. -/
theorem disc_le_max {s q r q₀ q₁ : ℝ} (h₀ : q₀ ≤ q) (h₁ : q ≤ q₁) :
    discFn s q r ≤ max (discFn s q₀ r) (discFn s q₁ r) := by
  have key : (q₁ - q₀) * discFn s q r - (q₁ - q) * discFn s q₀ r - (q - q₀) * discFn s q₁ r =
      -((2 * r ^ 2 + 7 * r - 7) ^ 2 / 4) * (q - q₀) * (q₁ - q) * (q₁ - q₀) := by
    unfold discFn betaFn gammaFn; ring
  have hm0 := le_max_left (discFn s q₀ r) (discFn s q₁ r)
  have hm1 := le_max_right (discFn s q₀ r) (discFn s q₁ r)
  rcases eq_or_lt_of_le (h₀.trans h₁) with he | hlt
  · subst he; have : q = q₀ := le_antisymm h₁ h₀; subst this; exact hm0
  by_contra hcon
  push Not at hcon
  have hneg : (q₁ - q₀) * discFn s q r - (q₁ - q) * discFn s q₀ r - (q - q₀) * discFn s q₁ r ≤ 0 := by
    rw [key]
    have : 0 ≤ (2 * r ^ 2 + 7 * r - 7) ^ 2 / 4 * (q - q₀) * (q₁ - q) * (q₁ - q₀) :=
      mul_nonneg (mul_nonneg (mul_nonneg (by positivity) (sub_nonneg.2 h₀)) (sub_nonneg.2 h₁))
        (by linarith)
    linarith
  nlinarith [mul_le_mul_of_nonneg_left hm0 (sub_nonneg.2 h₁),
    mul_le_mul_of_nonneg_left hm1 (sub_nonneg.2 h₀), mul_lt_mul_of_pos_left hcon (sub_pos.2 hlt)]

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-W`), equations (7)-(9). In the final
placement `Δ(q, r) ≥ 0` (the maximum `Δ/(14r)` of `W ≥ 0` over `B_*`), and by convexity in `q`
on `[3s/r, 9/10]`, `Δ(q, r) ≤ max(Δ(3s/r, r), Δ(9/10, r))` (`s = 8/73`).
`docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 152-208.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-replace. -/
theorem claim_W (h : WedgeSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    0 ≤ discFn s q r ∧ discFn s q r ≤ max (discFn s (3 * s / r) r) (discFn s (9 / 10) r) := by
  intro s q r
  obtain ⟨-, hFs, hGs, hr3, -, hq0, hq1⟩ := claim_replace h
  obtain ⟨e1, e2⟩ := eq7 s q r (sarea (ptE l) S ptC)
  have hr0 : (0 : ℝ) < r := by simp only [r]; linarith
  have hW : 0 ≤ fStar s q r (sarea (ptE l) S ptC) + 7 / 2 * gStar s q r (sarea (ptE l) S ptC) := by
    simp only [s, q, r] at hFs hGs ⊢; linarith
  have hΔ : 0 ≤ discFn s q r := by nlinarith [sq_nonneg (7 * r * sarea (ptE l) S ptC - betaFn s q r)]
  refine ⟨hΔ, ?_⟩
  exact disc_le_max (by simpa using hq0) hq1.le

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-quartics`), equations (10)-(13). For
`3/5 ≤ r ≤ 65/73`, `P₀(r) < 0` and `P₁(r) < 0`. `docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`,
lines 210-267. -/
theorem claim_quartics {r : ℝ} (hr₁ : 3 / 5 ≤ r) (hr₂ : r ≤ 65 / 73) :
    p0Poly r < 0 ∧ p1Poly r < 0 := by
  unfold p0Poly p1Poly
  have ha : 0 ≤ r - 3 / 5 := by linarith
  have hb : 0 ≤ 65 / 73 - r := by linarith
  constructor
  · nlinarith [mul_nonneg ha hb, mul_nonneg (mul_nonneg ha hb) ha, mul_nonneg (mul_nonneg ha hb) hb,
      mul_nonneg (mul_nonneg ha ha) (mul_nonneg ha hb), mul_nonneg (mul_nonneg hb hb) (mul_nonneg ha hb)]
  · nlinarith [mul_nonneg ha hb, mul_nonneg (mul_nonneg ha hb) ha, mul_nonneg (mul_nonneg ha hb) hb,
      mul_nonneg (mul_nonneg ha ha) (mul_nonneg ha hb), mul_nonneg (mul_nonneg hb hb) (mul_nonneg ha hb)]

/-- **Theorem 1** (`UNBALANCED_FINAL_LOWER_WEDGE:Theorem1`). The final placement is impossible.
`docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 32-37, 265-267.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-W, UNBALANCED_FINAL_LOWER_WEDGE:claim-quartics,
UNBALANCED_FINAL_LOWER_WEDGE:claim-replace. -/
theorem theorem1 (h : WedgeSetting l b P Q R S T) : False := by
  obtain ⟨hΔ, hmax⟩ := claim_W h
  obtain ⟨-, -, -, hr3, hr65, -, -⟩ := claim_replace h
  obtain ⟨-, e0, e1⟩ := eq8 R.1 (by linarith)
  obtain ⟨p0, p1⟩ := claim_quartics hr3.le hr65.le
  have h0 : discFn (8 / 73) (3 * (8 / 73) / R.1) R.1 < 0 := by
    rw [e0]; exact div_neg_of_neg_of_pos p0 (by positivity)
  have h1 : discFn (8 / 73) (9 / 10) R.1 < 0 := by
    rw [e1]; exact div_neg_of_neg_of_pos p1 (by norm_num)
  have := max_lt h0 h1
  linarith

/-! ### The one-point upper cut and the complete Type-II theorem -/

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-chain`), §5. The one-point upper cut in
support cell II is impossible: with minimum area at least `A₀`, no configuration has `P` above
`CE`, `Q` below `CE`, and a quadrilateral right hull in cell II. The exhaustive chain:
`Q` below `DR` and `P, T` above it; `Q` above `ER`; `[QTE] > 0`; `T ∈ CQS` and `Q ∈ ERS`; the
final placement. `docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 269-286.
Uses: UNBALANCED_ONE_UPPER_RADIAL:Theorem1, UNBALANCED_OCCUPIED_LOWER_EAR:Theorem1,
UNBALANCED_FINAL_NEGATIVE_LINE:Theorem1, UNBALANCED_FINAL_UPPER_PAIR:claim-CQS,
UNBALANCED_FINAL_UPPER_PAIR:Theorem1, UNBALANCED_FINAL_LOWER_WEDGE:Theorem1. -/
theorem claim_chain (h : UnbalancedOneUpperRadial.OneUpperSetting l b P Q R S T) : False := by
  have hb := h.row.b_pos
  have hb2 := h.row.b_le
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  -- step 1: `Q` below `DR`, `P, T` above it
  obtain ⟨hPDR, hTDR, hQDR, -, -⟩ := UnbalancedOneUpperRadial.theorem1 h
  -- step 2: the ear `EBR` is empty, `Q` is above `ER`
  have hocc : UnbalancedOccupiedLowerEar.OccSetting l b P Q R S T :=
    ⟨h.row, h.min, h.quad, h.cell, h.P_above, h.Q_below, hPDR, hTDR, hQDR⟩
  obtain ⟨-, -, hQER⟩ := UnbalancedOccupiedLowerEar.theorem1 hocc
  -- step 3: `[QTE] > 0`
  have hTCE : sarea (ptE l) ptC T < 0 :=
    right_below_CE hb (by linarith) hl h.row.T_mem h.row.T_right
  have hneg : UnbalancedFinalNegativeLine.NegSetting l b P Q R S T :=
    ⟨h.row, h.min, h.quad, h.cell, h.Q_below, hQDR, hQER, hTDR, hTCE, h.P_above, hPDR⟩
  have hQTE := UnbalancedFinalNegativeLine.theorem1 hneg
  -- step 4: `T ∈ CQS`, `Q ∈ ERS`
  have hmin8 : 4 / 73 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := s_le_A₀.trans h.min
  have hup : UnbalancedFinalUpperPair.UpperPairSetting l b P Q R S T :=
    ⟨h.row, hmin8, h.quad, h.cell, hQER, hQDR, h.Q_below, hTDR, hTCE, hQTE⟩
  obtain ⟨hQES, hQERS⟩ := UnbalancedFinalUpperPair.theorem1 hup
  obtain ⟨c1, c2, -, c4, hTCQS⟩ := UnbalancedFinalUpperPair.claim_CQS hup
  -- the remaining containments of the final placement
  obtain ⟨-, hSy, -, hSy0, -⟩ := right_facts hb (by linarith) h.row.S_mem h.row.S_right
  have hSb := (right_facts hb (by linarith) h.row.S_mem h.row.S_right).1
  have hQEBC := central_EBC hb (by linarith) hl hl1 h.row.Q_central h.Q_below
  have hQEBS : InTriangle Q (ptE l) (ptB b) S := by
    refine ⟨hQEBC.1, ?_, ?_⟩
    · refine pos_of_inside hQEBC ?_ ?_ ?_ (Or.inr (Or.inr h.row.S_right))
      · rw [sarea_cycle]; simp only [sarea, ptE, ptB]; nlinarith
      · exact (by unfold sarea; ring : sarea (ptB b) S (ptB b) = 0).ge
      · exact h.row.S_right.le
    · rw [sarea_swap₁₂]; linarith
  obtain ⟨-, -, hTy, -, -⟩ := right_facts hb (by linarith) h.row.T_mem h.row.T_right
  have hRCT : 0 < sarea R ptC T := h.cell.1.2.1
  have hTDCR : InTriangle T ptD R ptC := ⟨hTDR, hRCT, by simp only [sarea, ptC, ptD]; nlinarith⟩
  have hERC : 0 < sarea (ptE l) R ptC := by
    have := right_below_CE (l := l) hb (by linarith) hl h.row.R_mem h.row.R_right
    rw [sarea_swap₂₃]; linarith
  have hRx := (right_facts hb (by linarith) h.row.R_mem h.row.R_right).1
  have hTECR : InTriangle T (ptE l) R ptC := by
    refine ⟨?_, hRCT, by rw [sarea_swap₁₂]; linarith⟩
    refine pos_of_inside hTDCR ?_ ?_ hERC.le (Or.inr (Or.inr hERC))
    · simp only [sarea, ptE, ptD]; nlinarith
    · exact (by unfold sarea; ring : sarea (ptE l) R R = 0).ge
  -- step 5: the final placement is impossible
  exact theorem1 ⟨h.row, hmin8, h.quad, h.cell, h.P_above, hPDR, hQERS, hQEBS, h.Q_below, hQDR,
    hTECR, hTDCR, hTCQS, c1, c2, c4⟩

/-! ### The counts-to-labels bridge and the assembly -/

/-- A relabelling by an injective map of the nine indices keeps the least area. -/
theorem min_perm9 {X Y : Fin 9 → Point} (f : Fin 9 → Fin 9) (hf : Function.Injective f)
    (h : Y = X ∘ f) : minTriangleArea Y = minTriangleArea X := by
  rw [h]
  exact minTriangleArea_comp_perm X (Equiv.ofBijective f (Finite.injective_iff_bijective.1 hf))

/-- Exchanging the two central points keeps the least area. -/
theorem min_swapPQ (l b : ℝ) (P Q R S T : Point) :
    minTriangleArea (typeIIConfig l b Q P R S T) = minTriangleArea (typeIIConfig l b P Q R S T) :=
  min_perm9 ![0, 1, 2, 3, 5, 4, 6, 7, 8] (by decide) (by funext i; fin_cases i <;> rfl)

/-- Relabelling the three right points keeps the least area. -/
theorem min_relabel3 (l b : ℝ) (P Q R S T : Point) (σ : Equiv.Perm (Fin 3)) :
    minTriangleArea (typeIIConfig l b P Q (![R, S, T] (σ 0)) (![R, S, T] (σ 1))
      (![R, S, T] (σ 2))) = minTriangleArea (typeIIConfig l b P Q R S T) := by
  rcases TypeII.perm3_cases σ with ⟨h0, h1, h2⟩ | ⟨h0, h1, h2⟩ | ⟨h0, h1, h2⟩ | ⟨h0, h1, h2⟩ |
    ⟨h0, h1, h2⟩ | ⟨h0, h1, h2⟩ <;> rw [h0, h1, h2]
  · rfl
  · exact min_perm9 ![0, 1, 2, 3, 4, 5, 6, 8, 7] (by decide) (by funext i; fin_cases i <;> rfl)
  · exact min_perm9 ![0, 1, 2, 3, 4, 5, 7, 6, 8] (by decide) (by funext i; fin_cases i <;> rfl)
  · exact min_perm9 ![0, 1, 2, 3, 4, 5, 7, 8, 6] (by decide) (by funext i; fin_cases i <;> rfl)
  · exact min_perm9 ![0, 1, 2, 3, 4, 5, 8, 6, 7] (by decide) (by funext i; fin_cases i <;> rfl)
  · exact min_perm9 ![0, 1, 2, 3, 4, 5, 8, 7, 6] (by decide) (by funext i; fin_cases i <;> rfl)

/-- **Counts to labels.** A Type-II configuration of counts `(1, 2, 3)` is a relabelling of one
whose free points are, in this order, two central points `P, Q` and three right points
`R, S, T`: sort the free points into their containers (`minTriangleArea_comp_perm`). -/
theorem counts_to_labels {l b : ℝ} {V W X Y Z : Point} (hd : TypeII.TypeIIData l b V W X Y Z)
    (hcount : TypeII.typeIICounts b V W X Y Z = (1, 2, 3)) :
    ∃ P Q R S T : Point, TypeII.TypeIIData l b P Q R S T ∧ TypeII.IsCentral b P ∧
      TypeII.IsCentral b Q ∧ TypeII.IsRight b R ∧ TypeII.IsRight b S ∧ TypeII.IsRight b T ∧
      minTriangleArea (typeIIConfig l b P Q R S T) =
        minTriangleArea (typeIIConfig l b V W X Y Z) := by
  classical
  simp only [TypeII.typeIICounts, Prod.mk.injEq] at hcount
  obtain ⟨-, hc, hr⟩ := hcount
  obtain ⟨i, j, hij, hcij⟩ := Finset.card_eq_two.1 hc
  obtain ⟨k, m, n, hkm, hkn, hmn, hrkmn⟩ := Finset.card_eq_three.1 hr
  have cen : ∀ x, x ∈ ({i, j} : Finset (Fin 5)) →
      TypeII.IsCentral b (TypeII.freePts V W X Y Z x) := by
    intro x hx; rw [← hcij] at hx; exact (Finset.mem_filter.1 hx).2
  have rig : ∀ x, x ∈ ({k, m, n} : Finset (Fin 5)) →
      TypeII.IsRight b (TypeII.freePts V W X Y Z x) := by
    intro x hx; rw [← hrkmn] at hx; exact (Finset.mem_filter.1 hx).2
  have disj : ∀ x y, TypeII.IsCentral b (TypeII.freePts V W X Y Z x) →
      TypeII.IsRight b (TypeII.freePts V W X Y Z y) → x ≠ y := by
    rintro x y hx hy rfl
    have := hx.2.1
    unfold TypeII.IsRight at hy
    linarith
  have ci := cen i (by simp)
  have cj := cen j (by simp)
  have rk := rig k (by simp)
  have rm := rig m (by simp)
  have rn := rig n (by simp)
  have hik := disj i k ci rk
  have him := disj i m ci rm
  have hin := disj i n ci rn
  have hjk := disj j k cj rk
  have hjm := disj j m cj rm
  have hjn := disj j n cj rn
  obtain ⟨hb, hb1, hl, hl1, -⟩ := id hd
  refine ⟨_, _, _, _, _, ⟨hb, hb1, hl, hl1, TypeII.freePts_mem hd i, TypeII.freePts_mem hd j,
    TypeII.freePts_mem hd k, TypeII.freePts_mem hd m, TypeII.freePts_mem hd n⟩, ci, cj, rk, rm,
    rn, ?_⟩
  have hfi : ∀ a : Fin 5, ((TypeII.freeIdx a : Fin 9) : ℕ) = a + 4 := by
    intro a; fin_cases a <;> rfl
  have v : ∀ {x y : Fin 5}, x ≠ y → (x : ℕ) ≠ y := fun h e => h (Fin.ext e)
  have := v hij; have := v hik; have := v him; have := v hin; have := v hjk; have := v hjm
  have := v hjn; have := v hkm; have := v hkn; have := v hmn
  refine min_perm9 ![0, 1, 2, 3, TypeII.freeIdx i, TypeII.freeIdx j, TypeII.freeIdx k,
    TypeII.freeIdx m, TypeII.freeIdx n] ?_ ?_
  · intro x y hxy
    have hv := congrArg Fin.val hxy
    fin_cases x <;> fin_cases y <;> first | rfl | (exfalso; simp [hfi] at hv; try omega)
  · funext x
    fin_cases x
    any_goals rfl
    all_goals exact (TypeII.typeIIConfig_freeIdx l b V W X Y Z _).symm

/-- The standing row `(1, 2, 3)` of the unbalanced notes from the labelled counts. -/
theorem row_of {l b : ℝ} {P Q R S T : Point} (hd : TypeII.TypeIIData l b P Q R S T)
    (hb2 : b ≤ 1 / 2) (hP : TypeII.IsCentral b P) (hQ : TypeII.IsCentral b Q)
    (hR : TypeII.IsRight b R) (hS : TypeII.IsRight b S) (hT : TypeII.IsRight b T) :
    Row123 l b P Q R S T := by
  obtain ⟨hb, -, hl, hl1, -, -, hRm, hSm, hTm⟩ := hd
  have r (X : Point) (hX : TypeII.IsRight b X) : 0 < sarea (ptB b) X ptC := by
    rw [sarea_swap₂₃]; exact neg_pos.2 hX
  exact ⟨hb, hb2, hl, hl1, hP, hQ, hRm, hSm, hTm, r R hR, r S hS, r T hT⟩

theorem mem_of_inTriangle {X A B C : Point} (h : InTriangle X A B C) :
    X ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  obtain ⟨h1, h2, h3⟩ := h
  exact TypeII.mem_convexHull_of_sarea (by linarith [sarea_add_sarea_add_sarea A B C X]) h2.le
    h3.le h1.le

/-- A triangular right hull in the sense of `RightHullTriangular` is a triangular hull of the five
right points. -/
theorem tri_of_right {b : ℝ} {R S T : Point} (h : RightHullTriangular (ptB b) ptC R S T) :
    TypeII.TriangularHull ![TypeII.ptB b, TypeII.ptC, R, S, T] := by
  rcases h with ⟨hS, hT⟩ | ⟨hR, hT⟩ | ⟨hR, hS⟩
  · refine ⟨0, 2, 1, fun i => ?_⟩
    show _ ∈ convexHull ℝ ({ptB b, R, ptC} : Set Point)
    fin_cases i
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])
    · exact mem_of_inTriangle hS
    · exact mem_of_inTriangle hT
  · refine ⟨0, 3, 1, fun i => ?_⟩
    show _ ∈ convexHull ℝ ({ptB b, S, ptC} : Set Point)
    fin_cases i
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])
    · exact mem_of_inTriangle hR
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])
    · exact mem_of_inTriangle hT
  · refine ⟨0, 4, 1, fun i => ?_⟩
    show _ ∈ convexHull ℝ ({ptB b, T, ptC} : Set Point)
    fin_cases i
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])
    · exact mem_of_inTriangle hR
    · exact mem_of_inTriangle hS
    · exact subset_convexHull ℝ _ (by simp [ptB, ptC, TypeII.ptB, TypeII.ptC])

/-- The quadrilateral right hull with `P` above `CE`: every cell and both positions of `Q`. -/
theorem one_above {l b : ℝ} {P Q R S T : Point} (hrow : Row123 l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hquad : QuadHull (ptB b) R S ptC T)
    (hcell : CellI (ptB b) R S ptC T ∨ CellII (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T)
    (hP : 0 < sarea (ptE l) ptC P) (nQ : sarea (ptE l) ptC Q ≠ 0) : False := by
  have hmin7 := s7_le_A₀.trans hmin
  rcases lt_or_gt_of_ne nQ with hQb | hQa
  · rcases hcell with c | c | c
    · exact UnbalancedCellI.theorem1 hrow hmin7 hquad c hQb
    · exact claim_chain ⟨hrow, hmin, hquad, c, hP, hQb⟩
    · exact UnbalancedCellIII.theorem1 hrow hmin7 hquad c
  · rcases hcell with c | c | c
    · exact UnbalancedRightHull.theorem2 hrow hmin7 hP hQa hquad (Or.inl c)
    · exact UnbalancedUpperCellII.theorem1 ⟨hrow, hmin, hP, hQa, hquad, c⟩
    · exact UnbalancedRightHull.theorem2 hrow hmin7 hP hQa hquad (Or.inr c)

/-- The labelled quadrilateral right hull: the unbalanced cut lemma puts a central point above
`CE`; exchange `P, Q` if needed. -/
theorem quad_false {l b : ℝ} {P Q R S T : Point} (hd : TypeII.TypeIIData l b P Q R S T)
    (hb2 : b ≤ 1 / 2) (hP : TypeII.IsCentral b P) (hQ : TypeII.IsCentral b Q)
    (hR : TypeII.IsRight b R) (hS : TypeII.IsRight b S) (hT : TypeII.IsRight b T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hquad : QuadHull (ptB b) R S ptC T)
    (hcell : CellI (ptB b) R S ptC T ∨ CellII (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) :
    False := by
  have hrow := row_of hd hb2 hP hQ hR hS hT
  have hmin7 := s7_le_A₀.trans hmin
  have hcut := (TypeII.unbalancedCutLemma hd hP hQ hR hS hT hmin7).2
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos hmin
  have nP : sarea (ptE l) ptC P ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 1 4
  have nQ : sarea (ptE l) ptC Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 1 5
  rcases hcut with hPa | hQa
  · exact one_above hrow hmin hquad hcell hPa.2.1 nQ
  · have hrow' : Row123 l b Q P R S T :=
      { hrow with P_central := hrow.Q_central, Q_central := hrow.P_central }
    have hmin' : A₀ ≤ minTriangleArea (typeIIConfig l b Q P R S T) := by
      rw [min_swapPQ]; exact hmin
    exact one_above hrow' hmin' hquad hcell hQa.2.1 nP

/-- The labelled row `(1, 2, 3)`: triangular right hull by `TYPE_II_COMPLETION` Theorem 14,
nontriangular by `UNBALANCED_RIGHT_HULL` Theorem 1 and `quad_false`. -/
theorem labelled_false {l b : ℝ} {P Q R S T : Point} (hd : TypeII.TypeIIData l b P Q R S T)
    (hb2 : b ≤ 1 / 2) (hP : TypeII.IsCentral b P) (hQ : TypeII.IsCentral b Q)
    (hR : TypeII.IsRight b R) (hS : TypeII.IsRight b S) (hT : TypeII.IsRight b T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) : False := by
  by_cases htri : TypeII.TriangularHull ![TypeII.ptB b, TypeII.ptC, R, S, T]
  · have := TypeIICompletion.theorem14 hd hP hQ hR hS hT htri
    linarith
  have hrow := row_of hd hb2 hP hQ hR hS hT
  have hmin7 := s7_le_A₀.trans hmin
  have hnt : ¬ RightHullTriangular (ptB b) ptC R S T := fun h => htri (tri_of_right h)
  obtain ⟨R', S', T', ⟨σ, hσ⟩, hquad, hcell⟩ := UnbalancedRightHull.theorem1 hrow hmin7 hnt
  have eR : R' = ![R, S, T] (σ 0) := congrFun hσ 0
  have eS : S' = ![R, S, T] (σ 1) := congrFun hσ 1
  have eT : T' = ![R, S, T] (σ 2) := congrFun hσ 2
  have hmin' : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R' S' T') := by
    rw [eR, eS, eT, min_relabel3]; exact hmin
  have mem3 (p : Point → Prop) (hR : p R) (hS : p S) (hT : p T) (i : Fin 3) :
      p (![R, S, T] i) := by
    fin_cases i <;> assumption
  obtain ⟨hb, hb1, hl, hl1, hPm, hQm, hRm, hSm, hTm⟩ := hd
  have hd' : TypeII.TypeIIData l b P Q R' S' T' := by
    refine ⟨hb, hb1, hl, hl1, hPm, hQm, ?_, ?_, ?_⟩
    · rw [eR]; exact mem3 (· ∈ unitSquare) hRm hSm hTm _
    · rw [eS]; exact mem3 (· ∈ unitSquare) hRm hSm hTm _
    · rw [eT]; exact mem3 (· ∈ unitSquare) hRm hSm hTm _
  have hR' : TypeII.IsRight b R' := by rw [eR]; exact mem3 (TypeII.IsRight b) hR hS hT _
  have hS' : TypeII.IsRight b S' := by rw [eS]; exact mem3 (TypeII.IsRight b) hR hS hT _
  have hT' : TypeII.IsRight b T' := by rw [eT]; exact mem3 (TypeII.IsRight b) hR hS hT _
  exact quad_false hd' hb2 hP hQ hR' hS' hT' hmin' hquad hcell

/-- **Theorem 2** (`UNBALANCED_FINAL_LOWER_WEDGE:Theorem2`). Every nine-point configuration in
the Type-II normalization (`D = (0,1)`, `C = (1,1)`, `E = (0,λ)`, `B = (b,0)`, `0 < b < 1`,
`0 < λ < 1`, five further points in the square) has a triangle of area strictly less than
`A₀ = (9√65 - 55)/320`. `docs/proof/nine/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 288-320.
Uses: TYPE_II:ShearNormalization, TYPE_II:claim-two-residual-classes,
CORNER_FAMILIES:TypeIII-complete, TYPE_II_COMPLETION:Theorem11, TYPE_II:UnbalancedCutLemma,
TYPE_II_COMPLETION:Theorem12, TYPE_II_COMPLETION:Theorem14, UNBALANCED_RIGHT_HULL:Theorem1,
UNBALANCED_RIGHT_HULL:Theorem2, UNBALANCED_RIGHT_HULL:Theorem3, UNBALANCED_RIGHT_HULL:Theorem4,
UNBALANCED_RADIAL_SPLIT:Theorem1, UNBALANCED_UPPER_CELL_II:Theorem1, UNBALANCED_CELL_I:Theorem1,
UNBALANCED_CELL_III:Theorem1, UNBALANCED_FINAL_LOWER_WEDGE:claim-chain. -/
theorem theorem2 {l b : ℝ} {V W X Y Z : Point} (hb₀ : 0 < b) (hb₁ : b < 1) (hl₀ : 0 < l)
    (hl₁ : l < 1) (hV : V ∈ unitSquare) (hW : W ∈ unitSquare) (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (typeIIConfig l b V W X Y Z) < A₀ := by
  by_contra hcon
  push Not at hcon
  have hP : IsTypeII (typeIIConfig l b V W X Y Z) :=
    ⟨l, b, V, W, X, Y, Z, hb₀, hb₁, hl₀, hl₁, hV, hW, hX, hY, hZ, rfl⟩
  obtain ⟨Q, hQ, hcase⟩ := TypeII.claim_two_residual_classes _ hP hcon
  have hmQ := TypeII.minTriangleArea_of_areaEquiv hQ
  rw [← hmQ] at hcon
  rcases hcase with ⟨U₁, U₂, U₃, U₄, U₅, U₆, h1, h2, h3, h4, h5, h6, rfl⟩ |
    ⟨l', b', V', W', X', Y', Z', hd, hb2, rfl, hrow⟩
  · have := CornerFamilies.typeIII_lt_A₀ U₁ U₂ U₃ U₄ U₅ U₆ h1 h2 h3 h4 h5 h6
    linarith
  · rcases hrow with ⟨hc, -, -⟩ | ⟨hc, -, -⟩
    · obtain ⟨P', Q', R', S', T', hd', hP', hQ', hR', hS', hT', hm⟩ := counts_to_labels hd hc
      exact labelled_false hd' hb2 hP' hQ' hR' hS' hT' (hm ▸ hcon)
    · have := TypeIICompletion.theorem11 hd hb2 hc
      linarith

/-- The complete Type-II exclusion in the form used by the assembly
(Theorem 2 of the manuscript): no configuration `typeIIConfig l b V W X Y Z` with the
conditions of `IsTypeII` has `A₀ ≤ minTriangleArea`. Immediate from `theorem2`.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:Theorem2. -/
theorem typeII_exclusion {l b : ℝ} {V W X Y Z : Point} (hb₀ : 0 < b) (hb₁ : b < 1)
    (hl₀ : 0 < l) (hl₁ : l < 1) (hV : V ∈ unitSquare) (hW : W ∈ unitSquare)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    ¬ A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z) :=
  not_le.2 (theorem2 hb₀ hb₁ hl₀ hl₁ hV hW hX hY hZ)

end Heilbronn.Nine.UnbalancedFinalLowerWedge
