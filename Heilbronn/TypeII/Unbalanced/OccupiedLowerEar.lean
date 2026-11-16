module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.OneUpperRadial
public import Heilbronn.TypeII.Unbalanced.EarBernstein
public import Heilbronn.TypeII.Unbalanced.ChainBasic

/-! # The lower ear is empty in the final unbalanced Type-II placement
(`hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`)

**Role.** Primary route: step 2 of `UNBALANCED_FINAL_LOWER_WEDGE:claim-chain` (§5, line 276).
The proof ends with a 1540-coefficient Bernstein certificate in the variables `b, r, u`.

**Setting** (lines 5-34, `OccSetting`): `Row123 l b P Q R S T`, minimum area at least `A₀`, the
right hull the quadrilateral `B, R, S, C` with `T` inside, in support cell II; `P` above `CE`,
`Q` below `CE`; and (`UNBALANCED_ONE_UPPER_RADIAL:Theorem1`) `P, T` above `DR`, `Q` below `DR`.
The doubled threshold is `s = 8/73 < 2A₀`. Write `R = (r, u)`, `S = (k, t)`, `w = 1 - b`,
`L = 1 - r`, `λ = 1 - q`, `c = 1 - wq`, `δ = [EBR] = bu + λ(r - b)`, `g = [BRC] = r - b - wu`,
`A = [EBT]`, `Z = [BRT]`, `M = g - sw/L`. Everything from §1 on assumes, for a contradiction,
`Q ∈ int EBR` (hypothesis `hQ`).

**The relaxation in q** (§2). From (3) on, `q` is replaced by the endpoint
`q₀ = max(3s, s/b)` (`q0Fn`) in the scalar conditions; this is not a deformation of `E`.
Accordingly the quantities of (6)-(18) are written as functions of `(q, b, r, u)` and evaluated
at `q₀`: `deltaFn` (`δ`), `aFn` (`A`), `gFn` (`g`), `cFn` (`c`), `mFn` (`M`), `fB, fR, fC`
(`F_B, F_R, F_C` of (15)), `k1Fn, k2Fn` (`K₁, K₂` of (17)), `e0Fn` (`E₀`), `h1Fn, h2Fn`
(`H₁, H₂` of (18)). The branch polynomials `h1Minus, h2Minus` (`b ∈ [1/5, 1/3]`, `q = s/b`) and
`h1Plus, h2Plus` (`b ∈ [1/3, 4/11]`, `q = 3s`) are `H₁, H₂` in the unit coordinates of (19):
`b = b₋ + (b₊ - b₋)x`, `r = 7/10 + y/5`, `u = (3/16)z`. They are written with the divisions of
(1), (11), (3); on the boxes the denominators `b`, `1 - r` are nonzero and they equal the
polynomials of degrees `(5,4,3)`, `(6,5,4)`, `(6,4,3)`, `(6,5,4)` of the table after (19).

**Results.**
* `claim_stress` (2): `F = (δ - 2s)A - s(δ + Z) ≥ 0` and `A > s`.
* `claim_lower_q` (3)-(4): the system remains valid at `q₀`.
* `claim_basic` (5)-(6): `s < b < 4/11`, `1 - u ≥ Ks`, `u < 3/16`, `gL ≥ sw`,
  `δ ≤ c - 2√(cd)`.
* `claim_b` (7)-(8): `1/5 < b < 4/11`; `claim_r` (9): `7/10 < r < 9/10`;
  `claim_delta` (10): `3s ≤ δ < 4s`; `claim_M` (11)-(12): `M < s`.
* `claim_MW` (13)-(14): `MW ≥ sV`, `M > 0`, `W > V`.
* `claim_K` (15)-(17): `WF_B + VF_R + ZF_C ≥ 0`, `F_C > F_B`, `M(g - 2s) ≥ s²`, `K₁ ≥ 0` or
  `K₂ ≥ 0`, hence (18) `H₁ ≥ 0` or `H₂ ≥ 0`.
* `bernstein_minus_H1_row1` … `bernstein_plus_H2`: the eleven rows of the certificate table;
  `claim_bernstein` (18)-(20): `H₁, H₂ < 0` on both branch boxes.
* `theorem1`: `Q ∉ int EBR`; `EBR` contains no further actual point; `Q` is above `ER`.

Implicit in the manuscript: `claim_basic` does not use `Q ∈ int EBR` and is stated without it.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedOccupiedLowerEar

open UnbalancedRightHull UnbalancedChain

variable {l b : ℝ} {P Q R S T : Point}

/-- The standing setting of the note: the final one-upper placement of
UNBALANCED_ONE_UPPER_RADIAL:Theorem1 (cell II, `P` above `CE` and `DR`, `Q` below both, `T`
above `DR`), minimum area at least `A₀`. -/
structure OccSetting (l b : ℝ) (P Q R S T : Point) : Prop where
  row : Row123 l b P Q R S T
  min : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)
  quad : QuadHull (ptB b) R S ptC T
  cell : CellII (ptB b) R S ptC T
  P_above_CE : 0 < sarea (ptE l) ptC P
  Q_below_CE : sarea (ptE l) ptC Q < 0
  P_above_DR : 0 < sarea ptD R P
  T_above_DR : 0 < sarea ptD R T
  Q_below_DR : sarea ptD R Q < 0

/-! ### The scalar quantities as functions of `q` -/

/-- The endpoint `q₀ = max(3s, s/b)` of (3). -/
def q0Fn (s b : ℝ) : ℝ := max (3 * s) (s / b)

/-- `δ = [EBR] = bu + (1 - q)(r - b)`, at the parameter `q`. -/
def deltaFn (q b r u : ℝ) : ℝ := b * u + (1 - q) * (r - b)

/-- `A = [EBT] = (1 - q)(T_x - b) + bT_y`, at the parameter `q`. -/
def aFn (q b : ℝ) (T : Point) : ℝ := (1 - q) * (T.1 - b) + b * T.2

/-- `g = [BRC] = r - b - (1 - b)u`. -/
def gFn (b r u : ℝ) : ℝ := r - b - (1 - b) * u

/-- `c = 1 - (1 - b)q`. -/
def cFn (q b : ℝ) : ℝ := 1 - (1 - b) * q

/-- `M = g - sw/L`, the right-hull margin of §4. -/
def mFn (s b r u : ℝ) : ℝ := gFn b r u - s * (1 - b) / (1 - r)

/-- `F_B = -sδ`, the value of the stress at `B` (15). -/
def fB (s q b r u : ℝ) : ℝ := -s * deltaFn q b r u

/-- `F_R = δ(δ - 3s)`, the value of the stress at `R` (15). -/
def fR (s q b r u : ℝ) : ℝ := deltaFn q b r u * (deltaFn q b r u - 3 * s)

/-- `F_C = (δ - 2s)c - s(δ + g)`, the value of the stress at `C` (15). -/
def fC (s q b r u : ℝ) : ℝ :=
  (deltaFn q b r u - 2 * s) * cFn q b - s * (deltaFn q b r u + gFn b r u)

/-- `K₁ = {M(g - s) - s²}F_C + sMF_R + s²F_B`, (17). -/
def k1Fn (s q b r u : ℝ) : ℝ :=
  (mFn s b r u * (gFn b r u - s) - s ^ 2) * fC s q b r u + s * mFn s b r u * fR s q b r u +
    s ^ 2 * fB s q b r u

/-- `K₂ = (g - s)(sF_B + MF_R) + s(M + s)F_C`, (17). -/
def k2Fn (s q b r u : ℝ) : ℝ :=
  (gFn b r u - s) * (s * fB s q b r u + mFn s b r u * fR s q b r u) +
    s * (mFn s b r u + s) * fC s q b r u

/-- `E₀ = (g - 2s)(gL - sw) - s²L`, (18). -/
def e0Fn (s b r u : ℝ) : ℝ :=
  (gFn b r u - 2 * s) * (gFn b r u * (1 - r) - s * (1 - b)) - s ^ 2 * (1 - r)

/-- `H₁ = Lb²K₁ + (3/1024)E₀`, (18). -/
def h1Fn (s q b r u : ℝ) : ℝ := (1 - r) * b ^ 2 * k1Fn s q b r u + 3 / 1024 * e0Fn s b r u

/-- `H₂ = Lb²K₂`, (18). -/
def h2Fn (s q b r u : ℝ) : ℝ := (1 - r) * b ^ 2 * k2Fn s q b r u

/-- Branch `-` of (19): `b = 1/5 + (1/3 - 1/5)x`. -/
def bMinus (x : ℝ) : ℝ := 1 / 5 + (1 / 3 - 1 / 5) * x

/-- Branch `+` of (19): `b = 1/3 + (4/11 - 1/3)x`. -/
def bPlus (x : ℝ) : ℝ := 1 / 3 + (4 / 11 - 1 / 3) * x

/-- The substitution (19) for `r`: `r = 7/10 + y/5`. -/
def rOf (y : ℝ) : ℝ := 7 / 10 + y / 5

/-- The substitution (19) for `u`: `u = (3/16)z`. -/
def uOf (z : ℝ) : ℝ := 3 / 16 * z

/-- `H₁` on branch `-` (`q = s/b`, `s = 8/73`) in the unit coordinates of (19). -/
def h1Minus (x y z : ℝ) : ℝ := h1Fn (8 / 73) (8 / 73 / bMinus x) (bMinus x) (rOf y) (uOf z)

/-- `H₂` on branch `-` (`q = s/b`, `s = 8/73`) in the unit coordinates of (19). -/
def h2Minus (x y z : ℝ) : ℝ := h2Fn (8 / 73) (8 / 73 / bMinus x) (bMinus x) (rOf y) (uOf z)

/-- `H₁` on branch `+` (`q = 3s`, `s = 8/73`) in the unit coordinates of (19). -/
def h1Plus (x y z : ℝ) : ℝ := h1Fn (8 / 73) (3 * (8 / 73)) (bPlus x) (rOf y) (uOf z)

/-- `H₂` on branch `+` (`q = 3s`, `s = 8/73`) in the unit coordinates of (19). -/
def h2Plus (x y z : ℝ) : ℝ := h2Fn (8 / 73) (3 * (8 / 73)) (bPlus x) (rOf y) (uOf z)

/-! ### The eliminations -/

/-- The coordinate facts of the placement. -/
theorem occ_facts (h : OccSetting l b P Q R S T) :
    (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) ∧ 0 < b ∧ b ≤ 1 / 2 ∧
      0 < l ∧ l < 1 ∧ R.2 < R.1 ∧ b < R.1 ∧ R.1 < S.1 ∧ S.1 ≤ 1 ∧ 0 ≤ R.2 ∧ R.2 < S.2 ∧
      S.2 < 1 ∧ b < T.1 ∧ T.2 < 1 ∧ 0 ≤ T.2 ∧ T.1 ≤ 1 := by
  have hm : (8 / 73 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [s_le_A₀.trans h.min]
  obtain ⟨o1, o2, o3, o4, o5, o6, o7⟩ := UnbalancedCellI.claim_order h.row h.quad
  obtain ⟨t1, -, t3, t4, t5⟩ :=
    right_facts h.row.b_pos (by linarith [h.row.b_le]) h.row.T_mem h.row.T_right
  exact ⟨hm, h.row.b_pos, h.row.b_le, h.row.l_pos, h.row.l_lt, o1, o2, o3, o4, o5, o6, o7, t1, t3,
    t4, t5⟩


/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-stress`), equation (2). If `Q ∈ int EBR`
(counterclockwise `E, B, R`), then `δ ≥ 3s`, `Z = [BRT] ≥ s`, `[BTQ] ≥ s`,
`F = (δ - 2s)A - s(δ + Z) ≥ 0` and `A > s` (`s = 8/73`).
`hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 43-77. -/
theorem claim_stress (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    let s : ℝ := 8 / 73
    let δ := sarea (ptE l) (ptB b) R
    let A := sarea (ptE l) (ptB b) T
    let Z := sarea (ptB b) R T
    3 * s ≤ δ ∧ s ≤ Z ∧ s ≤ sarea (ptB b) T Q ∧ 0 ≤ (δ - 2 * s) * A - s * (δ + Z) ∧
      s < A := by
  intro s δ A Z
  show 3 * (8 / 73) ≤ sarea (ptE l) (ptB b) R ∧ 8 / 73 ≤ sarea (ptB b) R T ∧
    8 / 73 ≤ sarea (ptB b) T Q ∧ 0 ≤ (sarea (ptE l) (ptB b) R - 2 * (8 / 73)) *
      sarea (ptE l) (ptB b) T - 8 / 73 * (sarea (ptE l) (ptB b) R + sarea (ptB b) R T) ∧
    8 / 73 < sarea (ptE l) (ptB b) T
  obtain ⟨hm, hb, hb2, hl, hl1, -, -, -, -, -, -, -, hTx, -, hTy0, -⟩ := occ_facts h
  have hQ' := central_EBC hb (by linarith) hl hl1 h.row.Q_central h.Q_below_CE
  obtain ⟨q1, q2, q3⟩ := hQ
  have a1 : 8 / 73 ≤ sarea (ptE l) (ptB b) Q := ge_of_pos (abs_ge hm 2 3 5) q1
  have a2 : 8 / 73 ≤ sarea (ptB b) R Q := ge_of_pos (abs_ge hm 3 6 5) q2
  have a3 : 8 / 73 ≤ sarea R (ptE l) Q := ge_of_pos (abs_ge hm 6 2 5) q3
  have hδ : 3 * (8 / 73) ≤ sarea (ptE l) (ptB b) R := one_inside a1 a2 a3
  have hZ : 8 / 73 ≤ sarea (ptB b) R T := ge_of_pos (abs_ge hm 3 6 8) h.cell.1.1
  have hA0 : 0 < sarea (ptE l) (ptB b) T := by simp only [sarea, ptE, ptB]; nlinarith
  have hBTQ : 0 < sarea (ptB b) T Q := by
    refine pos_of_inside hQ' ?_ (by unfold sarea; ring_nf; rfl) h.row.T_right.le (Or.inl ?_)
    · rw [sarea_cycle]; exact hA0.le
    · rw [sarea_cycle]; exact hA0
  have a4 : 8 / 73 ≤ sarea (ptB b) T Q := ge_of_pos (abs_ge hm 3 8 5) hBTQ
  have hbar := bary (ptE l) (ptB b) R Q (ptB b) T
  have vE : sarea (ptB b) T (ptE l) = sarea (ptE l) (ptB b) T := by unfold sarea; ring
  have vB : sarea (ptB b) T (ptB b) = 0 := by unfold sarea; ring
  have vR : sarea (ptB b) T R = -sarea (ptB b) R T := by unfold sarea; ring
  have hsum := sarea_add_sarea_add_sarea (ptE l) (ptB b) R Q
  have eBRQ : sarea (ptB b) R Q = sarea (ptE l) (ptB b) R - sarea (ptE l) (ptB b) Q -
      sarea R (ptE l) Q := by linarith
  rw [vE, vB, vR, eBRQ] at hbar
  have hF : 0 ≤ (sarea (ptE l) (ptB b) R - 2 * (8 / 73)) * sarea (ptE l) (ptB b) T -
      8 / 73 * (sarea (ptE l) (ptB b) R + sarea (ptB b) R T) := by
    nlinarith [mul_le_mul_of_nonneg_left a4 (by linarith : (0 : ℝ) ≤ sarea (ptE l) (ptB b) R),
      mul_le_mul_of_nonneg_right a1 hA0.le, mul_le_mul_of_nonneg_right a3 hA0.le,
      mul_le_mul_of_nonneg_right a1 (by linarith : (0 : ℝ) ≤ sarea (ptB b) R T)]
  refine ⟨hδ, hZ, a4, hF, ?_⟩
  by_contra hA; push Not at hA
  nlinarith [mul_le_mul_of_nonneg_left hA (by linarith : (0 : ℝ) ≤ sarea (ptE l) (ptB b) R -
    2 * (8 / 73))]

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-lower-q`), equations (3)-(4). `bq ≥ s` and
`q ≥ 3s` (`DCE` contains `P`), so `q ≥ q₀ = max(3s, s/b)` (`= s/b` for `b ≤ 1/3`, `= 3s` for
`b ≥ 1/3`), and the scalar conditions `δ ≥ 3s`, `F ≥ 0` of (2) remain valid with `q` replaced
by `q₀` (`∂F/∂q < 0`). `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 79-109.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-stress. -/
theorem claim_lower_q (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    let s : ℝ := 8 / 73
    let q₀ := q0Fn s b
    s ≤ b * (1 - l) ∧ 3 * s ≤ 1 - l ∧ q₀ ≤ 1 - l ∧
      (b ≤ 1 / 3 → q₀ = s / b) ∧ (1 / 3 ≤ b → q₀ = 3 * s) ∧
      3 * s ≤ deltaFn q₀ b R.1 R.2 ∧
      0 ≤ (deltaFn q₀ b R.1 R.2 - 2 * s) * aFn q₀ b T -
        s * (deltaFn q₀ b R.1 R.2 + sarea (ptB b) R T) := by
  intro s q₀
  obtain ⟨hm, hb, hb2, hl, hl1, -, hbr, -, -, -, -, -, hTx, -, -, -⟩ := occ_facts h
  obtain ⟨hδ3, hZ, -, hF, hA⟩ := claim_stress h hQ
  have hDEB : 8 / 73 ≤ b * (1 - l) := TypeII.s_le_DEB (row_data h.row) hm
  have hq3 : 3 * (8 / 73) ≤ 1 - l := by
    have hPx := (central_facts hb (by linarith) h.row.P_central)
    have hDEP : 0 < sarea ptD (ptE l) P := by simp only [sarea, ptD, ptE]; nlinarith
    have hCDP : 0 < sarea ptC ptD P := by simp only [sarea, ptC, ptD]; nlinarith
    have e : sarea ptD (ptE l) ptC = 1 - l := by simp only [sarea, ptD, ptE, ptC]; ring
    rw [← e]
    exact one_inside (ge_of_pos (abs_ge hm 0 2 4) hDEP) (ge_of_pos (abs_ge hm 2 1 4) h.P_above_CE)
      (ge_of_pos (abs_ge hm 1 0 4) hCDP)
  have hsb : 8 / 73 / b ≤ 1 - l := by rw [div_le_iff₀ hb]; linarith
  have hq0 : q0Fn (8 / 73) b ≤ 1 - l := max_le hq3 hsb
  have hm1 : b ≤ 1 / 3 → q0Fn (8 / 73) b = 8 / 73 / b := fun hb3 =>
    max_eq_right (by rw [le_div_iff₀ hb]; nlinarith)
  have hm2 : 1 / 3 ≤ b → q0Fn (8 / 73) b = 3 * (8 / 73) := fun hb3 =>
    max_eq_left (by rw [div_le_iff₀ hb]; nlinarith)
  have eδ : sarea (ptE l) (ptB b) R = deltaFn (1 - l) b R.1 R.2 := by
    simp only [sarea, ptE, ptB, deltaFn]; ring
  have eA : sarea (ptE l) (ptB b) T = aFn (1 - l) b T := by
    simp only [sarea, ptE, ptB, aFn]; ring
  have hδq : deltaFn (q0Fn (8 / 73) b) b R.1 R.2 = deltaFn (1 - l) b R.1 R.2 +
      ((1 - l) - q0Fn (8 / 73) b) * (R.1 - b) := by unfold deltaFn; ring
  have haq : aFn (q0Fn (8 / 73) b) b T = aFn (1 - l) b T +
      ((1 - l) - q0Fn (8 / 73) b) * (T.1 - b) := by unfold aFn; ring
  rw [eδ, eA] at hF
  rw [eA] at hA
  rw [eδ] at hδ3
  have hΔ : 0 ≤ (1 - l) - q0Fn (8 / 73) b := by linarith
  refine ⟨hDEB, hq3, hq0, hm1, hm2, ?_, ?_⟩
  · show 3 * (8 / 73) ≤ deltaFn (q0Fn (8 / 73) b) b R.1 R.2
    rw [hδq]; nlinarith [mul_nonneg hΔ (sub_nonneg.2 hbr.le)]
  · show 0 ≤ (deltaFn (q0Fn (8 / 73) b) b R.1 R.2 - 2 * (8 / 73)) * aFn (q0Fn (8 / 73) b) b T -
      8 / 73 * (deltaFn (q0Fn (8 / 73) b) b R.1 R.2 + sarea (ptB b) R T)
    rw [hδq, haq]
    nlinarith [mul_nonneg hΔ (mul_nonneg (sub_nonneg.2 hbr.le) (by linarith : (0 : ℝ) ≤
      aFn (1 - l) b T - 8 / 73)), mul_nonneg hΔ (mul_nonneg (by linarith : (0 : ℝ) ≤
      deltaFn (1 - l) b R.1 R.2 - 2 * (8 / 73)) (sub_nonneg.2 hTx.le)),
      mul_nonneg (mul_nonneg hΔ hΔ) (mul_nonneg (sub_nonneg.2 hbr.le) (sub_nonneg.2 hTx.le))]

/-- The ear elimination (6) in cleared form: from `gL ≥ sw`,
`wLδ ≤ wLc - L²c - bsw` at every `q` (`δ = bu + (1-q)(r-b)`, `c = 1 - wq`). -/
theorem ear_poly {s b r u q : ℝ} (hb : 0 ≤ b)
    (hgL : s * (1 - b) ≤ (r - b - (1 - b) * u) * (1 - r)) :
    (1 - b) * (1 - r) * (b * u + (1 - q) * (r - b)) ≤
      (1 - b) * (1 - r) * (1 - (1 - b) * q) - (1 - r) ^ 2 * (1 - (1 - b) * q) - b * s * (1 - b) := by
  nlinarith [mul_le_mul_of_nonneg_left hgL hb]

/-- The stronger ear elimination of §4: from `gL ≥ s(w + L)`,
`wLδ ≤ wLc - L²c - bsw - bsL`. -/
theorem ear_poly2 {s b r u q : ℝ} (hb : 0 ≤ b)
    (hgL : s * ((1 - b) + (1 - r)) ≤ (r - b - (1 - b) * u) * (1 - r)) :
    (1 - b) * (1 - r) * (b * u + (1 - q) * (r - b)) ≤
      (1 - b) * (1 - r) * (1 - (1 - b) * q) - (1 - r) ^ 2 * (1 - (1 - b) * q) - b * s * (1 - b) -
        b * s * (1 - r) := by
  nlinarith [mul_le_mul_of_nonneg_left hgL hb]

/-- `X + Y ≤ Z` with `X, Y ≥ 0` gives `4XY ≤ Z²`. -/
theorem sq_step {X Y Z : ℝ} (hX : 0 ≤ X) (hY : 0 ≤ Y) (h : X + Y ≤ Z) : 4 * X * Y ≤ Z ^ 2 := by
  have h0 : 0 ≤ X + Y := by linarith
  nlinarith [sq_nonneg (X - Y), mul_le_mul h h h0 (by linarith)]

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic`), equations (5)-(6). `s < b < 4/11`;
`1 - u ≥ Ks > 13/16`, `0 ≤ u < 3/16`; `gL ≥ sw`; and, at `q₀`, `δ ≤ c - 2√(cd)` with
`c = 1 - wq₀`, `d = bs/w` (`s = 8/73`). `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 111-131.
Uses: TYPE_II:EndpointTriangleTheorem, CORNER_FAMILIES:TwoInteriorPointLemma,
UNBALANCED_RIGHT_HULL:claim-lower-vertex. -/
theorem claim_basic (h : OccSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q₀ := q0Fn s b
    let c := cFn q₀ b
    let d := b * s / (1 - b)
    s < b ∧ b < 4 / 11 ∧ Kc * s ≤ 1 - R.2 ∧ 13 / 16 < Kc * s ∧ 0 ≤ R.2 ∧ R.2 < 3 / 16 ∧
      s * (1 - b) ≤ gFn b R.1 R.2 * (1 - R.1) ∧
      deltaFn q₀ b R.1 R.2 ≤ c - 2 * Real.sqrt (c * d) := by
  intro s q₀ c d
  obtain ⟨hm, hb, hb2, hl, hl1, hur, hbr, hrk, hk1, hu0, hut, ht1, hTx, hTy1, hTy0, hTx1⟩ :=
    occ_facts h
  have hDEB := TypeII.s_le_DEB (row_data h.row) hm
  have hsb : 8 / 73 < b := by nlinarith [mul_pos hb hl]
  obtain ⟨-, hb411⟩ := row_b_bounds h.row (s7_le_A₀.trans h.min)
  -- `P, T ∈ DRC`
  have hRCP : 0 < sarea R ptC P := by
    refine pos_of_inside h.row.P_central ?_ ?_ (by unfold sarea; ring_nf; rfl) (Or.inl ?_)
    · simp only [sarea, ptD, ptC]; nlinarith
    · rw [sarea_cycle]; exact h.row.R_right.le
    · simp only [sarea, ptD, ptC]; nlinarith
  have hPy := (central_facts hb (by linarith) h.row.P_central).2.2.1
  have hPDRC : InTriangle P ptD R ptC :=
    ⟨h.P_above_DR, hRCP, by simp only [sarea, ptC, ptD]; nlinarith⟩
  have hTDRC : InTriangle T ptD R ptC :=
    ⟨h.T_above_DR, h.cell.1.2.1, by simp only [sarea, ptC, ptD]; nlinarith⟩
  have hK : Kc * (8 / 73) ≤ sarea ptD R ptC :=
    two_inside (by norm_num) hm 0 6 1 4 8 (by decide) hPDRC hTDRC
  have eDRC : sarea ptD R ptC = 1 - R.2 := by simp only [sarea, ptD, ptC]; ring
  rw [eDRC] at hK
  have hK' := Kc_s_gt
  -- `gL ≥ sw`
  have hBRS : 8 / 73 ≤ sarea (ptB b) R S := ge_of_pos (abs_ge hm 3 6 7) h.quad.1.1
  have hRSC : 8 / 73 ≤ sarea R S ptC := ge_of_pos (abs_ge hm 6 7 1) h.quad.1.2.1
  have eBRS : sarea (ptB b) R S = (R.1 - b) * S.2 - R.2 * (S.1 - b) := by
    simp only [sarea, ptB]; ring
  have eRSC : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - S.1) * (1 - R.2) := by
    simp only [sarea, ptC]; ring
  rw [eBRS] at hBRS
  rw [eRSC] at hRSC
  have hg : 0 < gFn b R.1 R.2 := by
    have := h.row.R_right; simp only [sarea, ptB, ptC] at this; unfold gFn; linarith
  have hgL : 8 / 73 * (1 - b) ≤ gFn b R.1 R.2 * (1 - R.1) := by
    unfold gFn at hg ⊢
    nlinarith [mul_le_mul_of_nonneg_left hBRS (by linarith : (0 : ℝ) ≤ 1 - R.1),
      mul_nonneg (sub_nonneg.2 hbr.le) (sub_nonneg.2 hRSC), mul_nonneg (sub_nonneg.2 hk1) hg.le]
  refine ⟨hsb, hb411, hK, hK', hu0, by linarith, hgL, ?_⟩
  -- `δ ≤ c - 2√(cd)` at `q₀`
  have hq0 : q0Fn (8 / 73) b < 1 :=
    max_lt (by norm_num) (by rw [div_lt_one hb]; linarith)
  have hq00 : 0 < q0Fn (8 / 73) b := lt_of_lt_of_le (by norm_num) (le_max_left _ _)
  have hc : 0 < cFn (q0Fn (8 / 73) b) b := by unfold cFn; nlinarith
  have key := ear_poly (q := q0Fn (8 / 73) b) (u := R.2) hb.le (by unfold gFn at hgL; exact hgL)
  have hL : 0 < 1 - R.1 := by linarith
  have hw : 0 < 1 - b := by linarith
  set c' := cFn (q0Fn (8 / 73) b) b with hc'
  have hp : 0 ≤ (1 - R.1) * c' / (1 - b) := by positivity
  have hp' : 0 ≤ b * (8 / 73) / (1 - R.1) := by positivity
  have hpp : (1 - R.1) * c' / (1 - b) * (b * (8 / 73) / (1 - R.1)) = c' * (b * (8 / 73) / (1 - b)) := by
    field_simp
  have am := amgm hp hp'
  rw [hpp] at am
  have hδ : deltaFn (q0Fn (8 / 73) b) b R.1 R.2 ≤
      c' - ((1 - R.1) * c' / (1 - b) + b * (8 / 73) / (1 - R.1)) := by
    have e : (c' - ((1 - R.1) * c' / (1 - b) + b * (8 / 73) / (1 - R.1))) * ((1 - b) * (1 - R.1)) =
        (1 - b) * (1 - R.1) * c' - (1 - R.1) ^ 2 * c' - b * (8 / 73) * (1 - b) := by
      field_simp; ring
    have : deltaFn (q0Fn (8 / 73) b) b R.1 R.2 * ((1 - b) * (1 - R.1)) ≤
        (c' - ((1 - R.1) * c' / (1 - b) + b * (8 / 73) / (1 - R.1))) * ((1 - b) * (1 - R.1)) := by
      rw [e]; unfold deltaFn; simp only [hc', cFn] at key ⊢; linarith
    exact le_of_mul_le_mul_right this (by positivity)
  show deltaFn (q0Fn (8 / 73) b) b R.1 R.2 ≤ c' - 2 * Real.sqrt (c' * (b * (8 / 73) / (1 - b)))
  linarith

/-- The scalar facts of §§2-3 used by (7)-(12): `s < b < 4/11`, `0 ≤ u < 3/16`, `b < r < 1`,
`gL ≥ sw`, the branch values of `q₀`, `δ(q₀) ≥ 3s`, and the ear bound at `q₀`. -/
theorem occ_core (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    8 / 73 < b ∧ b < 4 / 11 ∧ 0 ≤ R.2 ∧ R.2 < 3 / 16 ∧ b < R.1 ∧ R.1 < 1 ∧
      8 / 73 * (1 - b) ≤ gFn b R.1 R.2 * (1 - R.1) ∧
      (b ≤ 1 / 3 → q0Fn (8 / 73) b = 8 / 73 / b) ∧ (1 / 3 ≤ b → q0Fn (8 / 73) b = 3 * (8 / 73)) ∧
      3 * (8 / 73) ≤ deltaFn (q0Fn (8 / 73) b) b R.1 R.2 ∧ 3 * (8 / 73) ≤ q0Fn (8 / 73) b ∧
      q0Fn (8 / 73) b < 1 := by
  obtain ⟨hsb, hb411, -, -, hu0, hu316, hgL, -⟩ := claim_basic h
  obtain ⟨-, -, -, hm1, hm2, hδ3, -⟩ := claim_lower_q h hQ
  obtain ⟨-, hb, -, -, -, -, hbr, hrk, hk1, -, -, -, -, -, -, -⟩ := occ_facts h
  have hq0 : q0Fn (8 / 73) b < 1 :=
    max_lt (by norm_num) (by rw [div_lt_one hb]; linarith)
  exact ⟨hsb, hb411, hu0, hu316, hbr, by linarith, hgL, hm1, hm2, hδ3, le_max_left _ _, hq0⟩

theorem Pb_pos {b : ℝ} (h1 : 8 / 57 < b) (h2 : b ≤ 1 / 5) :
    0 < 5841 * b ^ 3 - 4417 * b ^ 2 + 976 * b - 64 := by
  have ha : 0 ≤ 1 / 5 - b := by linarith
  have ha' : 0 ≤ 17 / 285 - (1 / 5 - b) := by linarith
  nlinarith [mul_nonneg ha ha', mul_nonneg (mul_nonneg ha ha) ha']

theorem Pminus_pos {b : ℝ} (h1 : 1 / 5 < b) (h2 : b ≤ 1 / 3) :
    0 < -6817 * b ^ 4 + 11298 * b ^ 3 - 5521 * b ^ 2 + 1040 * b - 64 := by
  have ha : 0 ≤ b - 1 / 5 := by linarith
  have hb : 0 ≤ 1 / 3 - b := by linarith
  nlinarith [mul_nonneg ha hb, mul_nonneg (mul_nonneg ha hb) ha, mul_nonneg (mul_nonneg ha hb) hb,
    mul_nonneg (mul_nonneg ha hb) (mul_nonneg ha hb), sq_nonneg (b - 7 / 25)]

theorem Pplus_pos {b : ℝ} (h1 : 1 / 3 ≤ b) (h2 : b < 4 / 11) :
    0 < -(576 * b ^ 4 + 1200 * b ^ 3 - 319 * b ^ 2 - 2018 * b + 625) := by
  have ha : 0 ≤ b - 1 / 3 := by linarith
  have hb : 0 ≤ 4 / 11 - b := by linarith
  nlinarith [mul_nonneg ha hb, mul_nonneg (mul_nonneg ha hb) ha, mul_nonneg (mul_nonneg ha hb) hb,
    mul_nonneg (mul_nonneg ha ha) ha]

/-- The ear with `δ ≥ κs` squared (`X + Y ≤ Z`, `4XY ≤ Z²`): `4cbs ≤ w(c - κs)²`, `c > κs`. -/
theorem ear_sq {b r c δ κ : ℝ} (hb : 0 < b) (hb1 : b < 1) (hbr : b < r) (hr1 : r < 1)
    (hc : 0 < c) (hδ : κ * (8 / 73) ≤ δ)
    (hear : (1 - b) * (1 - r) * δ ≤ (1 - b) * (1 - r) * c - (1 - r) ^ 2 * c - b * (8 / 73) * (1 - b)) :
    4 * c * (b * (8 / 73)) ≤ (1 - b) * (c - κ * (8 / 73)) ^ 2 ∧ κ * (8 / 73) < c := by
  have hL : 0 < 1 - r := by linarith
  have hw : 0 < 1 - b := by linarith
  have h1 : (1 - r) ^ 2 * c + b * (8 / 73) * (1 - b) ≤ (1 - b) * (1 - r) * (c - κ * (8 / 73)) := by
    nlinarith [mul_le_mul_of_nonneg_left hδ (mul_pos hw hL).le]
  have h2 := sq_step (by positivity) (by positivity) h1
  have h3 : (1 - r) ^ 2 * (1 - b) * (4 * c * (b * (8 / 73))) ≤
      (1 - r) ^ 2 * (1 - b) * ((1 - b) * (c - κ * (8 / 73)) ^ 2) := by nlinarith [h2]
  refine ⟨le_of_mul_le_mul_left h3 (by positivity), ?_⟩
  have : 0 < (1 - b) * (1 - r) * (c - κ * (8 / 73)) := by
    have : 0 < b * (8 / 73) * (1 - b) := by positivity
    nlinarith [mul_pos (pow_pos hL 2) hc]
  by_contra hh; push Not at hh
  nlinarith [mul_nonpos_iff.2 (Or.inl ⟨(mul_pos hw hL).le, (by linarith : c - κ * (8 / 73) ≤ 0)⟩)]

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-b`), equations (7)-(8). If `Q ∈ int EBR`,
then `1/5 < b < 4/11`. `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 133-168.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic, UNBALANCED_OCCUPIED_LOWER_EAR:claim-lower-q. -/
theorem claim_b (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    1 / 5 < b ∧ b < 4 / 11 := by
  obtain ⟨hsb, hb411, hu0, hu316, hbr, hr1, hgL, hm1, hm2, hδ3, hq3, hq1⟩ := occ_core h hQ
  refine ⟨?_, hb411⟩
  by_contra hb5; push Not at hb5
  have hb : 0 < b := by linarith
  have hq := hm1 (by linarith)
  have hear := ear_poly (q := q0Fn (8 / 73) b) (u := R.2) hb.le (by unfold gFn at hgL; exact hgL)
  rw [hq] at hear hδ3
  have hc : 0 < 1 - (1 - b) * (8 / 73 / b) := by
    have : 8 / 73 / b < 1 := by rw [div_lt_one hb]; linarith
    nlinarith [div_pos (by norm_num : (0 : ℝ) < 8 / 73) hb]
  obtain ⟨h3, h4⟩ := ear_sq (κ := 3) hb (by linarith) hbr hr1 hc hδ3
    (by unfold deltaFn at hδ3 ⊢; exact hear)
  have hcb : (1 - (1 - b) * (8 / 73 / b)) * b = b - (1 - b) * (8 / 73) := by field_simp
  have h5 := mul_le_mul_of_nonneg_left h3 (sq_nonneg b)
  have e1 : b ^ 2 * (4 * (1 - (1 - b) * (8 / 73 / b)) * (b * (8 / 73))) =
      4 * ((1 - (1 - b) * (8 / 73 / b)) * b) * (8 / 73) * b ^ 2 := by ring
  have e2 : b ^ 2 * ((1 - b) * ((1 - (1 - b) * (8 / 73 / b)) - 3 * (8 / 73)) ^ 2) =
      (1 - b) * ((1 - (1 - b) * (8 / 73 / b)) * b - 3 * (8 / 73) * b) ^ 2 := by ring
  rw [e1, e2, hcb] at h5
  have h6 : 8 / 57 < b := by
    have := mul_lt_mul_of_pos_right h4 hb
    rw [hcb] at this; linarith
  have := Pb_pos h6 hb5
  nlinarith

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-r`), equation (9). If `Q ∈ int EBR`, then
`7/10 < r < 9/10`. `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 170-205.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic, UNBALANCED_OCCUPIED_LOWER_EAR:claim-lower-q. -/
theorem claim_r (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    7 / 10 < R.1 ∧ R.1 < 9 / 10 := by
  obtain ⟨hsb, hb411, hu0, hu316, hbr, hr1, hgL, hm1, hm2, hδ3, hq3, hq1⟩ := occ_core h hQ
  have hb : 0 < b := by linarith
  constructor
  · by_contra hr7; push Not at hr7
    unfold deltaFn at hδ3
    rcases le_total b (1 / 3) with hb3 | hb3
    · rw [hm1 hb3] at hδ3
      have hbd : b * (3 * (8 / 73)) ≤ b ^ 2 * R.2 + (b - 8 / 73) * (R.1 - b) := by
        have := mul_le_mul_of_nonneg_left hδ3 hb.le
        have e : b * (b * R.2 + (1 - 8 / 73 / b) * (R.1 - b)) =
            b ^ 2 * R.2 + (b - 8 / 73) * (R.1 - b) := by field_simp
        linarith
      nlinarith [mul_le_mul_of_nonneg_left hu316.le (sq_nonneg b),
        mul_le_mul_of_nonneg_left hr7 (by linarith : (0 : ℝ) ≤ b - 8 / 73), sq_nonneg (b - 0.255)]
    · rw [hm2 hb3] at hδ3
      nlinarith [mul_le_mul_of_nonneg_left hu316.le hb.le]
  · have hg : 0 < gFn b R.1 R.2 := by
      have := h.row.R_right; simp only [sarea, ptB, ptC] at this; unfold gFn; linarith
    have hgw : gFn b R.1 R.2 < 1 - b := by unfold gFn; nlinarith
    have : 8 / 73 < 1 - R.1 := by
      by_contra hc; push Not at hc
      nlinarith [mul_le_mul_of_nonneg_left hc hg.le]
    linarith

/-- The scalar contradiction of (10): with `c ≤ C*`, `d = bs/w ≥ d*` on the two ranges of `b`,
`4cd > (c - 4s)²` for `4s < c ≤ C*`. -/
theorem delta_scalar {b c : ℝ} (hb5 : 1 / 5 < b) (hb411 : b < 4 / 11) (hc : 0 < c)
    (h3 : 4 * c * (b * (8 / 73)) ≤ (1 - b) * (c - 4 * (8 / 73)) ^ 2) (h4 : 4 * (8 / 73) < c)
    (hc1 : b ≤ 7 / 25 → c ≤ 367 / 511) (hc2 : 7 / 25 ≤ b → c ≤ 635 / 803) : False := by
  have hw : 0 < 1 - b := by linarith
  rcases le_total b (7 / 25) with hb7 | hb7
  · have hcC := hc1 hb7
    have hd : 2 / 73 * (1 - b) ≤ b * (8 / 73) := by nlinarith
    have h5 : (1 - b) * (4 * c * (2 / 73)) ≤ (1 - b) * (c - 4 * (8 / 73)) ^ 2 := by
      nlinarith [mul_le_mul_of_nonneg_left hd (by linarith : (0 : ℝ) ≤ 4 * c)]
    have h6 := le_of_mul_le_mul_left h5 hw
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ c - 4 * (8 / 73))
      (by linarith : (0 : ℝ) ≤ 367 / 511 - c)]
  · have hcC := hc2 hb7
    have hd : 28 / 657 * (1 - b) ≤ b * (8 / 73) := by nlinarith
    have h5 : (1 - b) * (4 * c * (28 / 657)) ≤ (1 - b) * (c - 4 * (8 / 73)) ^ 2 := by
      nlinarith [mul_le_mul_of_nonneg_left hd (by linarith : (0 : ℝ) ≤ 4 * c)]
    have h6 := le_of_mul_le_mul_left h5 hw
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ c - 4 * (8 / 73))
      (by linarith : (0 : ℝ) ≤ 635 / 803 - c)]

/-- The scalar contradictions of (12) on the two branches. -/
theorem M_scalar_minus {b : ℝ} (hb5 : 1 / 5 < b) (hb3 : b ≤ 1 / 3)
    (h5 : 4 * (b - (1 - b) * (8 / 73)) * (b * (8 / 73)) * (b * (1 - b)) ≤
      ((1 - b) * (b - (1 - b) * (8 / 73)) - b * (b * (8 / 73)) - 3 * (8 / 73) * b * (1 - b)) ^ 2) :
    False := by
  have := Pminus_pos hb5 hb3
  nlinarith

theorem M_scalar_plus {b : ℝ} (hb3 : 1 / 3 ≤ b) (hb411 : b < 4 / 11)
    (h3 : 4 * (1 - (1 - b) * (3 * (8 / 73))) * (b * (8 / 73) * (1 - b)) ≤
      ((1 - b) * (1 - (1 - b) * (3 * (8 / 73))) - 3 * (8 / 73) * (1 - b) - b * (8 / 73)) ^ 2) :
    False := by
  have := Pplus_pos hb3 hb411
  nlinarith

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-delta`), equation (10). If `Q ∈ int EBR`,
then at `q₀`: `3s ≤ δ < 4s` (`s = 8/73`). `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`,
lines 207-232.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic, UNBALANCED_OCCUPIED_LOWER_EAR:claim-b. -/
theorem claim_delta (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    3 * (8 / 73) ≤ deltaFn (q0Fn (8 / 73) b) b R.1 R.2 ∧
      deltaFn (q0Fn (8 / 73) b) b R.1 R.2 < 4 * (8 / 73) := by
  obtain ⟨hsb, hb411, hu0, hu316, hbr, hr1, hgL, hm1, hm2, hδ3, hq3, hq1⟩ := occ_core h hQ
  obtain ⟨hb5, -⟩ := claim_b h hQ
  have hb : 0 < b := by linarith
  refine ⟨hδ3, ?_⟩
  by_contra hδ4; push Not at hδ4
  have hear := ear_poly (q := q0Fn (8 / 73) b) (u := R.2) hb.le (by unfold gFn at hgL; exact hgL)
  have hc : 0 < 1 - (1 - b) * q0Fn (8 / 73) b := by nlinarith
  obtain ⟨h3, h4⟩ := ear_sq (κ := 4) hb (by linarith) hbr hr1 hc hδ4
    (by unfold deltaFn at hδ4 ⊢; exact hear)
  set c := 1 - (1 - b) * q0Fn (8 / 73) b with hcdef
  have hcC1 : b ≤ 7 / 25 → c ≤ 367 / 511 := by
    intro hb7
    rw [hcdef, hm1 (by linarith)]
    have : 25 * (8 / 73) / 7 ≤ 8 / 73 / b := by rw [le_div_iff₀ hb]; nlinarith
    have e : 1 - (1 - b) * (8 / 73 / b) = 1 + 8 / 73 - 8 / 73 / b := by field_simp; ring
    rw [e]; linarith
  have hcC2 : 7 / 25 ≤ b → c ≤ 635 / 803 := by
    intro hb7; rw [hcdef]; nlinarith
  exact delta_scalar hb5 hb411 hc h3 h4 hcC1 hcC2

/-- The squared stronger ear of §4: `4c·bsw ≤ (wc - 3sw - bs)²`. -/
theorem M_sq {b r u c q : ℝ} (hb : 0 < b) (hb1 : b < 1) (hbr : b < r) (hr1 : r < 1)
    (hc : 0 < c) (hδ3 : 3 * (8 / 73) ≤ b * u + (1 - q) * (r - b))
    (hear : (1 - b) * (1 - r) * (b * u + (1 - q) * (r - b)) ≤
      (1 - b) * (1 - r) * c - (1 - r) ^ 2 * c - b * (8 / 73) * (1 - b) - b * (8 / 73) * (1 - r)) :
    4 * c * (b * (8 / 73) * (1 - b)) ≤ ((1 - b) * c - 3 * (8 / 73) * (1 - b) - b * (8 / 73)) ^ 2 := by
  have hL : 0 < 1 - r := by linarith
  have hw : 0 < 1 - b := by linarith
  have h1 : (1 - r) ^ 2 * c + b * (8 / 73) * (1 - b) ≤
      (1 - r) * ((1 - b) * c - 3 * (8 / 73) * (1 - b) - b * (8 / 73)) := by
    nlinarith [mul_le_mul_of_nonneg_left hδ3 (mul_pos hw hL).le]
  have h2 := sq_step (by positivity) (by positivity) h1
  have : (1 - r) ^ 2 * (4 * c * (b * (8 / 73) * (1 - b))) ≤
      (1 - r) ^ 2 * ((1 - b) * c - 3 * (8 / 73) * (1 - b) - b * (8 / 73)) ^ 2 := by nlinarith [h2]
  exact le_of_mul_le_mul_left this (by positivity)

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-M`), equations (11)-(12). If `Q ∈ int EBR`,
the right-hull margin satisfies `M = g - sw/L < s` (`s = 8/73`).
`hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 234-305.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic, UNBALANCED_OCCUPIED_LOWER_EAR:claim-b,
UNBALANCED_OCCUPIED_LOWER_EAR:claim-lower-q. -/
theorem claim_M (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    mFn (8 / 73) b R.1 R.2 < 8 / 73 := by
  obtain ⟨hsb, hb411, hu0, hu316, hbr, hr1, hgL, hm1, hm2, hδ3, hq3, hq1⟩ := occ_core h hQ
  obtain ⟨hb5, -⟩ := claim_b h hQ
  have hb : 0 < b := by linarith
  have hL : 0 < 1 - R.1 := by linarith
  have hw : 0 < 1 - b := by linarith
  by_contra hM; push Not at hM
  have hgL2 : 8 / 73 * ((1 - b) + (1 - R.1)) ≤ (R.1 - b - (1 - b) * R.2) * (1 - R.1) := by
    unfold mFn gFn at hM
    have : 8 / 73 * (1 - b) / (1 - R.1) * (1 - R.1) = 8 / 73 * (1 - b) := by field_simp
    nlinarith [mul_le_mul_of_nonneg_right hM hL.le]
  have hear := ear_poly2 (q := q0Fn (8 / 73) b) (u := R.2) hb.le hgL2
  unfold deltaFn at hδ3
  have hc : 0 < 1 - (1 - b) * q0Fn (8 / 73) b := by nlinarith
  set c := 1 - (1 - b) * q0Fn (8 / 73) b with hcdef
  have h3 := M_sq hb (by linarith) hbr hr1 hc hδ3 hear
  rcases le_total b (1 / 3) with hb3 | hb3
  · rw [hcdef, hm1 hb3] at h3
    have hcb : (1 - (1 - b) * (8 / 73 / b)) * b = b - (1 - b) * (8 / 73) := by field_simp
    have h5 := mul_le_mul_of_nonneg_left h3 (sq_nonneg b)
    have e1 : b ^ 2 * (4 * (1 - (1 - b) * (8 / 73 / b)) * (b * (8 / 73) * (1 - b))) =
        4 * ((1 - (1 - b) * (8 / 73 / b)) * b) * (b * (8 / 73)) * (b * (1 - b)) := by ring
    have e2 : b ^ 2 * ((1 - b) * (1 - (1 - b) * (8 / 73 / b)) - 3 * (8 / 73) * (1 - b) -
        b * (8 / 73)) ^ 2 = ((1 - b) * ((1 - (1 - b) * (8 / 73 / b)) * b) - b * (b * (8 / 73)) -
          3 * (8 / 73) * b * (1 - b)) ^ 2 := by ring
    rw [e1, e2, hcb] at h5
    exact M_scalar_minus hb5 hb3 h5
  · rw [hcdef, hm2 hb3] at h3
    exact M_scalar_plus hb3 hb411 h3

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-MW`), equations (13)-(14). With
`V = [CBT]`, `W = [RCT]`, `Z = [BRT]` (all `≥ s`, `V + W + Z = g`): `MW ≥ sV`, hence `M > 0`
and `W > V` (`s = 8/73`). `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 307-343.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-M. -/
theorem claim_MW (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    let s : ℝ := 8 / 73
    let V := sarea ptC (ptB b) T
    let W := sarea R ptC T
    let Z := sarea (ptB b) R T
    let M := mFn s b R.1 R.2
    V + W + Z = gFn b R.1 R.2 ∧ s ≤ V ∧ s ≤ W ∧ s ≤ Z ∧ s * V ≤ M * W ∧ 0 < M ∧ V < W := by
  intro s V W Z M
  obtain ⟨hm, hb, hb2, hl, hl1, hur, hbr, hrk, hk1, hu0, hut, ht1, hTx, hTy1, hTy0, hTx1⟩ :=
    occ_facts h
  have hM := claim_M h hQ
  obtain ⟨t1, t2, t3⟩ := h.cell.1
  have hV : 8 / 73 ≤ sarea ptC (ptB b) T := ge_of_pos (abs_ge hm 1 3 8) t3
  have hW : 8 / 73 ≤ sarea R ptC T := ge_of_pos (abs_ge hm 6 1 8) t2
  have hZ : 8 / 73 ≤ sarea (ptB b) R T := ge_of_pos (abs_ge hm 3 6 8) t1
  have hsum : sarea ptC (ptB b) T + sarea R ptC T + sarea (ptB b) R T = gFn b R.1 R.2 := by
    have := sarea_add_sarea_add_sarea (ptB b) R ptC T
    have e : sarea (ptB b) R ptC = gFn b R.1 R.2 := by simp only [sarea, ptB, ptC, gFn]; ring
    linarith
  have ex : gFn b R.1 R.2 * T.1 =
      b * sarea R ptC T + R.1 * sarea ptC (ptB b) T + sarea (ptB b) R T := by
    simp only [sarea, ptB, ptC, gFn]; ring
  have eW : sarea R ptC T = (1 - R.1) * (T.2 - R.2) - (1 - R.2) * (T.1 - R.1) := by
    simp only [sarea, ptC]
  have hRST : 8 / 73 ≤ sarea R S T := ge_of_pos (abs_ge hm 6 7 8) h.quad.2.2.1
  have hRSC : 8 / 73 ≤ sarea R S ptC := ge_of_pos (abs_ge hm 6 7 1) h.quad.1.2.1
  have eRST : sarea R S T = (S.1 - R.1) * (T.2 - R.2) - (S.2 - R.2) * (T.1 - R.1) := by
    simp only [sarea]
  have eRSC : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - S.1) * (1 - R.2) := by
    simp only [sarea, ptC]; ring
  have hg : 0 < gFn b R.1 R.2 := by linarith
  have hL : 0 < 1 - R.1 := by linarith
  have hw : 0 < 1 - b := by linarith
  -- `M < s` means `gL < s(w + L)`
  have hML : mFn (8 / 73) b R.1 R.2 * (1 - R.1) = gFn b R.1 R.2 * (1 - R.1) - 8 / 73 * (1 - b) := by
    unfold mFn; field_simp
  have hgL : gFn b R.1 R.2 * (1 - R.1) < 8 / 73 * ((1 - b) + (1 - R.1)) := by
    nlinarith [mul_lt_mul_of_pos_right hM hL]
  -- `T_x < r`
  have h1x : gFn b R.1 R.2 * (1 - T.1) =
      (1 - b) * sarea R ptC T + (1 - R.1) * sarea ptC (ptB b) T := by linarith
  have hxr : T.1 < R.1 := by
    have : gFn b R.1 R.2 * (1 - R.1) < gFn b R.1 R.2 * (1 - T.1) := by
      rw [h1x]; nlinarith [mul_le_mul_of_nonneg_left hW hw.le, mul_le_mul_of_nonneg_left hV hL.le]
    nlinarith [lt_of_mul_lt_mul_left this hg.le]
  -- the `[RST]` bound: `sL ≤ LW + s(T_x - r)`
  rw [eRST] at hRST
  rw [eRSC] at hRSC
  have h5 : 8 / 73 * (1 - R.1) ≤ (1 - R.1) * sarea R ptC T + 8 / 73 * (T.1 - R.1) := by
    rw [eW]
    nlinarith [mul_le_mul_of_nonneg_left hRST hL.le,
      mul_nonneg (sub_nonneg.2 hxr.le) (sub_nonneg.2 hRSC),
      mul_nonneg (sub_nonneg.2 hk1) (by linarith : (0 : ℝ) ≤ (1 - R.1) * (T.2 - R.2) -
        (1 - R.2) * (T.1 - R.1))]
  have key : 0 ≤ sarea R ptC T * (gFn b R.1 R.2 * (1 - R.1) - 8 / 73 * (1 - b)) -
      8 / 73 * (1 - R.1) * sarea ptC (ptB b) T := by
    linarith [mul_le_mul_of_nonneg_left h5 hg.le]
  rw [← hML] at key
  have hMW : 8 / 73 * sarea ptC (ptB b) T ≤ mFn (8 / 73) b R.1 R.2 * sarea R ptC T := by
    by_contra hc; push Not at hc
    linarith [mul_lt_mul_of_pos_left hc hL]
  have hM0 : 0 < mFn (8 / 73) b R.1 R.2 := by
    have : 0 < mFn (8 / 73) b R.1 R.2 * sarea R ptC T :=
      lt_of_lt_of_le (mul_pos (by norm_num) (by linarith)) hMW
    exact pos_of_mul_pos_left this (by linarith)
  refine ⟨hsum, hV, hW, hZ, hMW, hM0, ?_⟩
  by_contra hc; push Not at hc
  have a := mul_le_mul_of_nonneg_left hc hM0.le
  have b' := mul_lt_mul_of_pos_right hM (by linarith : (0 : ℝ) < sarea ptC (ptB b) T)
  linarith

/-- `F_C > F_B` (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-K): otherwise (15) would be
negative, since `F_R < -F_B` (`δ < 4s`), `F_B < 0` and `W > V`. -/
theorem fcb {s δ V W Z FB FR FC : ℝ} (hs : 0 < s) (hδ0 : 0 < δ) (hδ4 : δ < 4 * s)
    (hFB : FB = -s * δ) (hFR : FR = δ * (δ - 3 * s)) (hV : 0 < V) (hZ : 0 < Z) (hVW : V < W)
    (h15 : 0 ≤ W * FB + V * FR + Z * FC) : FB < FC := by
  by_contra hc; push Not at hc
  have h1 : FR < -FB := by rw [hFR, hFB]; nlinarith
  have hFB0 : FB < 0 := by rw [hFB]; nlinarith
  have a := mul_le_mul_of_nonneg_left hc hZ.le
  have b' := mul_lt_mul_of_pos_left h1 hV
  have c := mul_neg_of_pos_of_neg (by linarith : (0 : ℝ) < W - V + Z) hFB0
  linarith

/-- The endpoint argument of (17) (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-K): lowering `W`
to `sV/M` (moving weight to `Z`) raises (15), and the result `Ψ(V)/M` is affine in `V` on
`[s, M(g-s)/(M+s)]`, so it is nonnegative at an endpoint; the endpoint values are `K₁/M` and
`K₂/(M+s)`. -/
theorem K_endpoint {M V W Z g FB FR FC : ℝ} (hM0 : 0 < M) (hV : 8 / 73 ≤ V)
    (hV2 : V ≤ M * (g - 8 / 73) / (M + 8 / 73)) (hMW : 8 / 73 * V ≤ M * W) (hsum : V + W + Z = g)
    (hFCB : FB < FC) (h15 : 0 ≤ W * FB + V * FR + Z * FC) :
    0 ≤ (M * (g - 8 / 73) - (8 / 73) ^ 2) * FC + 8 / 73 * M * FR + (8 / 73) ^ 2 * FB ∨
      0 ≤ (g - 8 / 73) * (8 / 73 * FB + M * FR) + 8 / 73 * (M + 8 / 73) * FC := by
  set s : ℝ := 8 / 73 with hs
  have hs0 : 0 < s := by rw [hs]; norm_num
  have hMs : 0 < M + s := by linarith
  set Ψ : ℝ → ℝ := fun x => s * x * FB + M * x * FR + (M * g - M * x - s * x) * FC with hΨ
  have hΨV : 0 ≤ Ψ V := by
    have : Ψ V - M * (W * FB + V * FR + Z * FC) = (M * W - s * V) * (FC - FB) := by
      simp only [hΨ]
      have hZ : Z = g - V - W := by linarith
      rw [hZ]; ring
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ M * W - s * V) (by linarith : (0 : ℝ) ≤ FC - FB),
      mul_nonneg hM0.le h15]
  set V₁ := M * (g - s) / (M + s) with hV₁
  have e1 : Ψ s = (M * (g - s) - s ^ 2) * FC + s * M * FR + s ^ 2 * FB := by
    simp only [hΨ]; ring
  have e2 : (M + s) * Ψ V₁ = M * ((g - s) * (s * FB + M * FR) + s * (M + s) * FC) := by
    simp only [hΨ, hV₁]; field_simp; ring
  have aff : (V₁ - s) * Ψ V = (V₁ - V) * Ψ s + (V - s) * Ψ V₁ := by simp only [hΨ]; ring
  by_contra hc
  push Not at hc
  obtain ⟨h1, h2⟩ := hc
  rw [← e1] at h1
  have h2' : Ψ V₁ < 0 := by
    have : (M + s) * Ψ V₁ < 0 := by rw [e2]; exact mul_neg_of_pos_of_neg hM0 h2
    by_contra hh; push Not at hh; nlinarith [mul_nonneg hMs.le hh]
  rcases eq_or_lt_of_le (hV.trans hV2) with he | hlt
  · have : V = s := le_antisymm (he ▸ hV2) hV
    rw [this] at hΨV; linarith
  · have : (V₁ - s) * Ψ V < 0 := by
      rw [aff]
      rcases eq_or_lt_of_le hV with hv | hv
      · rw [← hv]; nlinarith
      · nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ V₁ - V) (by linarith : (0 : ℝ) ≤ -Ψ s),
          mul_pos (by linarith : (0 : ℝ) < V - s) (by linarith : (0 : ℝ) < -Ψ V₁)]
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ V₁ - s) hΨV]

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-K`), equations (15)-(17), and the necessary
condition of (18). At `q₀` (`s = 8/73`): `WF_B + VF_R + ZF_C ≥ 0` (15), `F_C > F_B`,
`s ≤ V ≤ M(g - s)/(M + s)` and `M(g - 2s) ≥ s²` (16), `K₁ ≥ 0` or `K₂ ≥ 0` (17); hence
`E₀ ≥ 0` and `H₁ ≥ 0` or `H₂ ≥ 0` (18). `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`,
lines 345-394.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-stress, UNBALANCED_OCCUPIED_LOWER_EAR:claim-lower-q,
UNBALANCED_OCCUPIED_LOWER_EAR:claim-MW, UNBALANCED_OCCUPIED_LOWER_EAR:claim-delta. -/
theorem claim_K (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    let s : ℝ := 8 / 73
    let q₀ := q0Fn s b
    let r := R.1
    let u := R.2
    let V := sarea ptC (ptB b) T
    let W := sarea R ptC T
    let Z := sarea (ptB b) R T
    let M := mFn s b r u
    let g := gFn b r u
    0 ≤ W * fB s q₀ b r u + V * fR s q₀ b r u + Z * fC s q₀ b r u ∧
      fB s q₀ b r u < fC s q₀ b r u ∧ V ≤ M * (g - s) / (M + s) ∧ s ^ 2 ≤ M * (g - 2 * s) ∧
      (0 ≤ k1Fn s q₀ b r u ∨ 0 ≤ k2Fn s q₀ b r u) ∧ 0 ≤ e0Fn s b r u ∧
      (0 ≤ h1Fn s q₀ b r u ∨ 0 ≤ h2Fn s q₀ b r u) := by
  intro s q₀ r u V W Z M g
  obtain ⟨hm, hb, hb2, hl, hl1, hur, hbr, hrk, hk1, hu0, hut, ht1, hTx, hTy1, hTy0, hTx1⟩ :=
    occ_facts h
  obtain ⟨-, -, -, -, -, hδ3, hF⟩ := claim_lower_q h hQ
  obtain ⟨-, hδ4⟩ := claim_delta h hQ
  obtain ⟨hsum, hV, hW, hZ, hMW, hM0, hVW⟩ := claim_MW h hQ
  have hM := claim_M h hQ
  have hL : 0 < 1 - R.1 := by linarith
  have hw : 0 < 1 - b := by linarith
  set δ₀ := deltaFn (q0Fn (8 / 73) b) b R.1 R.2 with hδ₀
  set c₀ := cFn (q0Fn (8 / 73) b) b with hc₀
  set Vv := sarea ptC (ptB b) T with hVv
  set Ww := sarea R ptC T with hWw
  set Zz := sarea (ptB b) R T with hZz
  set Mm := mFn (8 / 73) b R.1 R.2 with hMm
  set gg := gFn b R.1 R.2 with hgg
  have hbaryA : gg * aFn (q0Fn (8 / 73) b) b T = Vv * δ₀ + Zz * c₀ := by
    simp only [hgg, hVv, hZz, hδ₀, hc₀, gFn, aFn, deltaFn, cFn, sarea, ptB, ptC]; ring
  set FB := fB (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2 with hFB
  set FR := fR (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2 with hFR
  set FC := fC (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2 with hFC
  have eFB : FB = -(8 / 73) * δ₀ := by simp only [hFB, fB, hδ₀]
  have eFR : FR = δ₀ * (δ₀ - 3 * (8 / 73)) := by simp only [hFR, fR, hδ₀]
  have eFC : FC = (δ₀ - 2 * (8 / 73)) * c₀ - 8 / 73 * (δ₀ + gg) := by
    simp only [hFC, fC, hδ₀, hc₀, hgg]
  -- (15)
  have h15e : Ww * FB + Vv * FR + Zz * FC = gg * ((δ₀ - 2 * (8 / 73)) *
      aFn (q0Fn (8 / 73) b) b T - 8 / 73 * (δ₀ + Zz)) := by
    rw [eFB, eFR, eFC]
    linear_combination (2 * (8 / 73) - δ₀) * hbaryA - 8 / 73 * δ₀ * hsum
  have hg : 0 < gg := by linarith
  have h15 : 0 ≤ Ww * FB + Vv * FR + Zz * FC := by rw [h15e]; exact mul_nonneg hg.le hF
  -- `F_C > F_B`
  have hδ0 : 0 < δ₀ := by linarith
  have hFCB : FB < FC :=
    fcb (by norm_num) hδ0 hδ4 eFB eFR (by linarith) (by linarith) hVW h15
  -- (16)
  have hMs : 0 < Mm + 8 / 73 := by linarith
  have hV1 : Vv * (Mm + 8 / 73) ≤ Mm * (gg - 8 / 73) := by
    nlinarith [mul_le_mul_of_nonneg_left hZ hM0.le]
  have hV2 : Vv ≤ Mm * (gg - 8 / 73) / (Mm + 8 / 73) := by rw [le_div_iff₀ hMs]; exact hV1
  have h16 : (8 / 73) ^ 2 ≤ Mm * (gg - 2 * (8 / 73)) := by
    nlinarith [mul_le_mul_of_nonneg_right hV hMs.le]
  -- (17): one endpoint of the affine `Ψ` is nonnegative
  have hK : 0 ≤ k1Fn (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2 ∨
      0 ≤ k2Fn (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2 := by
    have eK1 : k1Fn (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2 =
        (Mm * (gg - 8 / 73) - (8 / 73) ^ 2) * FC + 8 / 73 * Mm * FR + (8 / 73) ^ 2 * FB := by
      simp only [k1Fn, hMm, hgg, hFB, hFR, hFC]
    have eK2 : k2Fn (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2 =
        (gg - 8 / 73) * (8 / 73 * FB + Mm * FR) + 8 / 73 * (Mm + 8 / 73) * FC := by
      simp only [k2Fn, hMm, hgg, hFB, hFR, hFC]
    rw [eK1, eK2]
    exact K_endpoint hM0 hV hV2 hMW hsum hFCB h15
  have hE0 : 0 ≤ e0Fn (8 / 73) b R.1 R.2 := by
    have e : e0Fn (8 / 73) b R.1 R.2 = (1 - R.1) * (Mm * (gg - 2 * (8 / 73)) - (8 / 73) ^ 2) := by
      simp only [e0Fn, hMm, hgg, mFn]; field_simp
    rw [e]; exact mul_nonneg hL.le (by linarith)
  refine ⟨h15, hFCB, hV2, h16, hK, hE0, ?_⟩
  rcases hK with hK | hK
  · left
    show 0 ≤ h1Fn (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2
    unfold h1Fn
    exact add_nonneg (mul_nonneg (mul_nonneg hL.le (sq_nonneg b)) hK)
      (mul_nonneg (by norm_num) hE0)
  · right
    show 0 ≤ h2Fn (8 / 73) (q0Fn (8 / 73) b) b R.1 R.2
    unfold h2Fn
    exact mul_nonneg (mul_nonneg hL.le (sq_nonneg b)) hK

/-! ### The Bernstein certificate (§6): the eleven rows of the table

The rows are checked by the kernel in `Heilbronn.TypeII.Unbalanced.EarBernstein`
(`bernsteinBoxCheck` on the physical boxes of `(b, r, u)` that the unit boxes of (19) describe);
`h_minus_eq`, `h_plus_eq` identify its structural polynomials with `H₁`, `H₂`. Each row is stated
as the strict sign on its box in `(b, r, u)` (the unit coordinates `x, y, z` of (19) are
`b = b₋ + (b₊ - b₋)x`, `r = 7/10 + y/5`, `u = 3z/16`); the coefficient bounds `-1/N` of the table
are the parameters `N` of the checks. -/

open UnbalancedEarBernstein Cert Cert.Expr in
theorem pt_eval (b r u : ℝ) : pt b r u 0 = b ∧ pt b r u 1 = r ∧ pt b r u 2 = u := by
  simp [pt]

open UnbalancedEarBernstein Cert Cert.Expr in
/-- The structural polynomials of the certificate are `H₁`, `H₂` on branch `-` (`q = s/b`). -/
theorem h_minus_eq {b r u : ℝ} (hb : b ≠ 0) (hL : 1 - r ≠ 0) :
    h1Fn (8 / 73) (8 / 73 / b) b r u = -(nH1M.eval (pt b r u)) ∧
      h2Fn (8 / 73) (8 / 73 / b) b r u = -(nH2M.eval (pt b r u)) := by
  obtain ⟨p0, p1, p2⟩ := pt_eval b r u
  simp only [nH1M, nH2M, eH1, eH2, bFB, bFR, bFC, eE0, eLM, eg, eL, ew, es, eb, er, eu, bdM, bcM,
    eval_minus, eval_plus, eval_times, eval_k, eval_v, eval_one, eval_zero, p0, p1, p2]
  unfold h1Fn h2Fn k1Fn k2Fn e0Fn mFn fB fR fC deltaFn cFn gFn
  push_cast
  constructor <;> field_simp <;> ring

open UnbalancedEarBernstein Cert Cert.Expr in
/-- The structural polynomials of the certificate are `H₁`, `H₂` on branch `+` (`q = 3s`). -/
theorem h_plus_eq {b r u : ℝ} (hL : 1 - r ≠ 0) :
    h1Fn (8 / 73) (3 * (8 / 73)) b r u = -(nH1P.eval (pt b r u)) ∧
      h2Fn (8 / 73) (3 * (8 / 73)) b r u = -(nH2P.eval (pt b r u)) := by
  obtain ⟨p0, p1, p2⟩ := pt_eval b r u
  simp only [nH1P, nH2P, eH1, eH2, bFB, bFR, bFC, eE0, eLM, eg, eL, ew, es, eb, er, eu, bdP, bcP,
    eval_minus, eval_plus, eval_times, eval_k, eval_v, eval_one, eval_zero, p0, p1, p2]
  unfold h1Fn h2Fn k1Fn k2Fn e0Fn mFn fB fR fC deltaFn cFn gFn
  push_cast
  constructor <;> field_simp <;> ring

/-- Row 1 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₁`, `y ∈ [0, 1/2]`, `z ∈ [0, 1/2]`. -/
theorem bernstein_minus_H1_row1 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3))
    (hr : r ∈ Set.Icc (7 / 10 : ℝ) (4 / 5)) (hu : u ∈ Set.Icc (0 : ℝ) (3 / 32)) :
    h1Fn (8 / 73) (8 / 73 / b) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row1
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_minus_eq (by linarith [hb.1]) (by linarith [hr.2])).1]
  linarith

/-- Row 2 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₁`, `y ∈ [0, 1/2]`, `z ∈ [1/2, 1]`. -/
theorem bernstein_minus_H1_row2 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3))
    (hr : r ∈ Set.Icc (7 / 10 : ℝ) (4 / 5)) (hu : u ∈ Set.Icc (3 / 32 : ℝ) (3 / 16)) :
    h1Fn (8 / 73) (8 / 73 / b) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row2
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_minus_eq (by linarith [hb.1]) (by linarith [hr.2])).1]
  linarith

/-- Row 3 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₁`, `y ∈ [1/2, 5/8]`, `z ∈ [0, 1/4]`. -/
theorem bernstein_minus_H1_row3 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3))
    (hr : r ∈ Set.Icc (4 / 5 : ℝ) (33 / 40)) (hu : u ∈ Set.Icc (0 : ℝ) (3 / 64)) :
    h1Fn (8 / 73) (8 / 73 / b) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row3
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_minus_eq (by linarith [hb.1]) (by linarith [hr.2])).1]
  linarith

/-- Row 4 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₁`, `y ∈ [5/8, 3/4]`, `z ∈ [0, 1/4]`. -/
theorem bernstein_minus_H1_row4 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3))
    (hr : r ∈ Set.Icc (33 / 40 : ℝ) (17 / 20)) (hu : u ∈ Set.Icc (0 : ℝ) (3 / 64)) :
    h1Fn (8 / 73) (8 / 73 / b) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row4
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_minus_eq (by linarith [hb.1]) (by linarith [hr.2])).1]
  linarith

/-- Row 5 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₁`, `y ∈ [1/2, 3/4]`, `z ∈ [1/4, 1/2]`. -/
theorem bernstein_minus_H1_row5 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3))
    (hr : r ∈ Set.Icc (4 / 5 : ℝ) (17 / 20)) (hu : u ∈ Set.Icc (3 / 64 : ℝ) (3 / 32)) :
    h1Fn (8 / 73) (8 / 73 / b) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row5
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_minus_eq (by linarith [hb.1]) (by linarith [hr.2])).1]
  linarith

/-- Row 6 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₁`, `y ∈ [1/2, 3/4]`, `z ∈ [1/2, 1]`. -/
theorem bernstein_minus_H1_row6 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3))
    (hr : r ∈ Set.Icc (4 / 5 : ℝ) (17 / 20)) (hu : u ∈ Set.Icc (3 / 32 : ℝ) (3 / 16)) :
    h1Fn (8 / 73) (8 / 73 / b) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row6
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_minus_eq (by linarith [hb.1]) (by linarith [hr.2])).1]
  linarith

/-- Row 7 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₁`, `y ∈ [3/4, 1]`, `z ∈ [0, 1]`. -/
theorem bernstein_minus_H1_row7 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3))
    (hr : r ∈ Set.Icc (17 / 20 : ℝ) (9 / 10)) (hu : u ∈ Set.Icc (0 : ℝ) (3 / 16)) :
    h1Fn (8 / 73) (8 / 73 / b) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row7
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_minus_eq (by linarith [hb.1]) (by linarith [hr.2])).1]
  linarith

/-- Row 8 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₂`, `y, z ∈ [0, 1]`. -/
theorem bernstein_minus_H2 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3))
    (hr : r ∈ Set.Icc (7 / 10 : ℝ) (9 / 10)) (hu : u ∈ Set.Icc (0 : ℝ) (3 / 16)) :
    h2Fn (8 / 73) (8 / 73 / b) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row8
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_minus_eq (by linarith [hb.1]) (by linarith [hr.2])).2]
  linarith

/-- Row 9 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`+`, `H₁`, `y ∈ [0, 1/2]`, `z ∈ [0, 1]`. -/
theorem bernstein_plus_H1_row1 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 3 : ℝ) (4 / 11))
    (hr : r ∈ Set.Icc (7 / 10 : ℝ) (4 / 5)) (hu : u ∈ Set.Icc (0 : ℝ) (3 / 16)) :
    h1Fn (8 / 73) (3 * (8 / 73)) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row9
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_plus_eq (by linarith [hr.2])).1]
  linarith

/-- Row 10 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`+`, `H₁`, `y ∈ [1/2, 1]`, `z ∈ [0, 1]`. -/
theorem bernstein_plus_H1_row2 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 3 : ℝ) (4 / 11))
    (hr : r ∈ Set.Icc (4 / 5 : ℝ) (9 / 10)) (hu : u ∈ Set.Icc (0 : ℝ) (3 / 16)) :
    h1Fn (8 / 73) (3 * (8 / 73)) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row10
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_plus_eq (by linarith [hr.2])).1]
  linarith

/-- Row 11 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`+`, `H₂`, `y, z ∈ [0, 1]`. -/
theorem bernstein_plus_H2 {b r u : ℝ} (hb : b ∈ Set.Icc (1 / 3 : ℝ) (4 / 11))
    (hr : r ∈ Set.Icc (7 / 10 : ℝ) (9 / 10)) (hu : u ∈ Set.Icc (0 : ℝ) (3 / 16)) :
    h2Fn (8 / 73) (3 * (8 / 73)) b r u < 0 := by
  have key := UnbalancedEarBernstein.box3 UnbalancedEarBernstein.row11
    (b := b) (r := r) (u := u) (by norm_num; exact hb) (by norm_num; exact hr)
    (by norm_num; exact hu)
  rw [(h_plus_eq (by linarith [hr.2])).2]
  linarith

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein`), equations (18)-(20). `H₁` and
`H₂` are strictly negative on both branch boxes: for `b ∈ [1/5, 1/3]` with `q = s/b`, and for
`b ∈ [1/3, 4/11]` with `q = 3s`, whenever `r ∈ [7/10, 9/10]`, `u ∈ [0, 3/16]` (`s = 8/73`;
1540 strict coefficient comparisons in all). `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`,
lines 386-454. -/
theorem claim_bernstein :
    (∀ b r u : ℝ, b ∈ Set.Icc (1 / 5 : ℝ) (1 / 3) → r ∈ Set.Icc (7 / 10 : ℝ) (9 / 10) →
      u ∈ Set.Icc (0 : ℝ) (3 / 16) →
        h1Fn (8 / 73) (8 / 73 / b) b r u < 0 ∧ h2Fn (8 / 73) (8 / 73 / b) b r u < 0) ∧
    (∀ b r u : ℝ, b ∈ Set.Icc (1 / 3 : ℝ) (4 / 11) → r ∈ Set.Icc (7 / 10 : ℝ) (9 / 10) →
      u ∈ Set.Icc (0 : ℝ) (3 / 16) →
        h1Fn (8 / 73) (3 * (8 / 73)) b r u < 0 ∧ h2Fn (8 / 73) (3 * (8 / 73)) b r u < 0) := by
  constructor
  · intro b r u hb hr hu
    refine ⟨?_, bernstein_minus_H2 hb hr hu⟩
    rcases le_total r (4 / 5) with hr1 | hr1
    · rcases le_total u (3 / 32) with hu1 | hu1
      · exact bernstein_minus_H1_row1 hb ⟨hr.1, hr1⟩ ⟨hu.1, hu1⟩
      · exact bernstein_minus_H1_row2 hb ⟨hr.1, hr1⟩ ⟨hu1, hu.2⟩
    rcases le_total r (17 / 20) with hr2 | hr2
    · rcases le_total u (3 / 64) with hu1 | hu1
      · rcases le_total r (33 / 40) with hr3 | hr3
        · exact bernstein_minus_H1_row3 hb ⟨hr1, hr3⟩ ⟨hu.1, hu1⟩
        · exact bernstein_minus_H1_row4 hb ⟨hr3, hr2⟩ ⟨hu.1, hu1⟩
      rcases le_total u (3 / 32) with hu2 | hu2
      · exact bernstein_minus_H1_row5 hb ⟨hr1, hr2⟩ ⟨hu1, hu2⟩
      · exact bernstein_minus_H1_row6 hb ⟨hr1, hr2⟩ ⟨hu2, hu.2⟩
    · exact bernstein_minus_H1_row7 hb ⟨hr2, hr.2⟩ hu
  · intro b r u hb hr hu
    refine ⟨?_, bernstein_plus_H2 hb hr hu⟩
    rcases le_total r (4 / 5) with hr1 | hr1
    · exact bernstein_plus_H1_row1 hb ⟨hr.1, hr1⟩ hu
    · exact bernstein_plus_H1_row2 hb ⟨hr1, hr.2⟩ hu

/-- **Theorem 1** (`UNBALANCED_OCCUPIED_LOWER_EAR:Theorem1`). The point `Q` cannot lie inside
`EBR`. Consequently `EBR` contains no further actual point in this final placement, and `Q` is
above `ER`. `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 36-41, 456-460.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-K, UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein,
UNBALANCED_OCCUPIED_LOWER_EAR:claim-b, UNBALANCED_OCCUPIED_LOWER_EAR:claim-r,
UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic. -/
theorem theorem1 (h : OccSetting l b P Q R S T) :
    ¬ InTriangle Q (ptE l) (ptB b) R ∧
      NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R ∧
      0 < sarea (ptE l) R Q := by
  obtain ⟨hm, hb, hb2, hl, hl1, hur, hbr, hrk, hk1, hu0, hut, ht1, hTx, hTy1, hTy0, hTx1⟩ :=
    occ_facts h
  have hnot : ¬ InTriangle Q (ptE l) (ptB b) R := by
    intro hQ
    obtain ⟨-, -, -, -, -, -, hH⟩ := claim_K h hQ
    obtain ⟨hb5, hb411⟩ := claim_b h hQ
    obtain ⟨hr7, hr9⟩ := claim_r h hQ
    obtain ⟨-, -, -, -, hu0', hu316, -, -⟩ := claim_basic h
    obtain ⟨-, -, -, hm1, hm2, -, -⟩ := claim_lower_q h hQ
    obtain ⟨cm, cp⟩ := claim_bernstein
    rcases le_total b (1 / 3) with hb3 | hb3
    · rw [hm1 hb3] at hH
      obtain ⟨n1, n2⟩ := cm b R.1 R.2 ⟨hb5.le, hb3⟩ ⟨hr7.le, hr9.le⟩ ⟨hu0', hu316.le⟩
      rcases hH with h1 | h1 <;> linarith
    · rw [hm2 hb3] at hH
      obtain ⟨n1, n2⟩ := cp b R.1 R.2 ⟨hb3, hb411.le⟩ ⟨hr7.le, hr9.le⟩ ⟨hu0', hu316.le⟩
      rcases hH with h1 | h1 <;> linarith
  have z0 : ∀ X Y : Point, sarea X Y Y = 0 := fun X Y => by unfold sarea; ring
  have z1 : ∀ X Y : Point, sarea X Y X = 0 := fun X Y => by unfold sarea; ring
  -- points of `EBR` are strictly below `DR`
  have hRDE : 0 < sarea R ptD (ptE l) := by simp only [sarea, ptD, ptE]; nlinarith
  have hRDB : 0 < sarea R ptD (ptB b) := by simp only [sarea, ptD, ptB]; nlinarith
  have below : ∀ X, InTriangle X (ptE l) (ptB b) R → sarea ptD R X < 0 := by
    intro X hX
    have := pos_of_inside hX hRDE.le hRDB.le (z1 R ptD).ge (Or.inl hRDE)
    rw [sarea_swap₁₂]; linarith
  have hDRS : 0 < sarea ptD R S := by simp only [sarea, ptD]; nlinarith
  have hERC : 0 < sarea (ptE l) R ptC := by
    have := right_below_CE (l := l) hb (by linarith) hl h.row.R_mem h.row.R_right
    rw [sarea_swap₂₃]; linarith
  refine ⟨hnot, ?_, ?_⟩
  · intro i hi
    fin_cases i
    · have := hi.2.2; change 0 < sarea R (ptE l) ptD at this
      simp only [sarea, ptD, ptE] at this; nlinarith
    · have := hi.2.2; change 0 < sarea R (ptE l) ptC at this
      have e : sarea R (ptE l) ptC = -sarea (ptE l) R ptC := by unfold sarea; ring
      linarith
    · have := hi.1; change 0 < sarea (ptE l) (ptB b) (ptE l) at this; rw [z1] at this; linarith
    · have := hi.1; change 0 < sarea (ptE l) (ptB b) (ptB b) at this; rw [z0] at this; linarith
    · have := below P hi; linarith [h.P_above_DR]
    · exact hnot hi
    · have := hi.2.1; change 0 < sarea (ptB b) R R at this; rw [z0] at this; linarith
    · have := below S hi; linarith
    · have := below T hi; linarith [h.T_above_DR]
  · have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
    have n : sarea (ptE l) R Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 6 5
    rcases lt_or_gt_of_ne n with hh | hh
    · exfalso; apply hnot
      have hQ' := central_EBC hb (by linarith) hl hl1 h.row.Q_central h.Q_below_CE
      have hEBR : 0 < sarea (ptE l) (ptB b) R := by simp only [sarea, ptE, ptB]; nlinarith
      refine ⟨hQ'.1, ?_, by rw [sarea_swap₁₂]; linarith⟩
      refine pos_of_inside hQ' ?_ (z1 (ptB b) R).ge h.row.R_right.le (Or.inl ?_)
      · rw [sarea_cycle]; exact hEBR.le
      · rw [sarea_cycle]; exact hEBR
    · exact hh

end Heilbronn.UnbalancedOccupiedLowerEar
