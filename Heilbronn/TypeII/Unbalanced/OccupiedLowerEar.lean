module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.OneUpperRadial

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

open UnbalancedRightHull

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
      s < A := sorry

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
        s * (deltaFn q₀ b R.1 R.2 + sarea (ptB b) R T) := sorry

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
      deltaFn q₀ b R.1 R.2 ≤ c - 2 * Real.sqrt (c * d) := sorry

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-b`), equations (7)-(8). If `Q ∈ int EBR`,
then `1/5 < b < 4/11`. `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 133-168.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic, UNBALANCED_OCCUPIED_LOWER_EAR:claim-lower-q. -/
theorem claim_b (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    1 / 5 < b ∧ b < 4 / 11 := sorry

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-r`), equation (9). If `Q ∈ int EBR`, then
`7/10 < r < 9/10`. `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 170-205.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic, UNBALANCED_OCCUPIED_LOWER_EAR:claim-lower-q. -/
theorem claim_r (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    7 / 10 < R.1 ∧ R.1 < 9 / 10 := sorry

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-delta`), equation (10). If `Q ∈ int EBR`,
then at `q₀`: `3s ≤ δ < 4s` (`s = 8/73`). `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`,
lines 207-232.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic, UNBALANCED_OCCUPIED_LOWER_EAR:claim-b. -/
theorem claim_delta (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    3 * (8 / 73) ≤ deltaFn (q0Fn (8 / 73) b) b R.1 R.2 ∧
      deltaFn (q0Fn (8 / 73) b) b R.1 R.2 < 4 * (8 / 73) := sorry

/-- **Claim** (`UNBALANCED_OCCUPIED_LOWER_EAR:claim-M`), equations (11)-(12). If `Q ∈ int EBR`,
the right-hull margin satisfies `M = g - sw/L < s` (`s = 8/73`).
`hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 234-305.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic, UNBALANCED_OCCUPIED_LOWER_EAR:claim-b,
UNBALANCED_OCCUPIED_LOWER_EAR:claim-lower-q. -/
theorem claim_M (h : OccSetting l b P Q R S T) (hQ : InTriangle Q (ptE l) (ptB b) R) :
    mFn (8 / 73) b R.1 R.2 < 8 / 73 := sorry

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
    V + W + Z = gFn b R.1 R.2 ∧ s ≤ V ∧ s ≤ W ∧ s ≤ Z ∧ s * V ≤ M * W ∧ 0 < M ∧ V < W :=
  sorry

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
      (0 ≤ h1Fn s q₀ b r u ∨ 0 ≤ h2Fn s q₀ b r u) := sorry

/-! ### The Bernstein certificate (§6): the eleven rows of the table

Each row states that on its box (`x ∈ [0, 1]` always) the branch polynomial is below the row's
bound: all its tensor Bernstein coefficients at the degree of the table after (19) are below
`-1/N`, and the polynomial is a convex combination of them. -/

/-- Row 1 of the table of §6 (part of UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein): branch
`-`, `H₁`, `y ∈ [0, 1/2]`, `z ∈ [0, 1/2]`, bound `-1/3224550`. -/
theorem bernstein_minus_H1_row1 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (0 : ℝ) (1 / 2)) (hz : z ∈ Set.Icc (0 : ℝ) (1 / 2)) :
    h1Minus x y z < -1 / 3224550 := sorry

/-- Row 2: branch `-`, `H₁`, `y ∈ [0, 1/2]`, `z ∈ [1/2, 1]`, bound `-1/413076`. -/
theorem bernstein_minus_H1_row2 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (0 : ℝ) (1 / 2)) (hz : z ∈ Set.Icc (1 / 2 : ℝ) 1) :
    h1Minus x y z < -1 / 413076 := sorry

/-- Row 3: branch `-`, `H₁`, `y ∈ [1/2, 5/8]`, `z ∈ [0, 1/4]`, bound `-1/3614646`. -/
theorem bernstein_minus_H1_row3 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (1 / 2 : ℝ) (5 / 8)) (hz : z ∈ Set.Icc (0 : ℝ) (1 / 4)) :
    h1Minus x y z < -1 / 3614646 := sorry

/-- Row 4: branch `-`, `H₁`, `y ∈ [5/8, 3/4]`, `z ∈ [0, 1/4]`, bound `-1/1983267`. -/
theorem bernstein_minus_H1_row4 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (5 / 8 : ℝ) (3 / 4)) (hz : z ∈ Set.Icc (0 : ℝ) (1 / 4)) :
    h1Minus x y z < -1 / 1983267 := sorry

/-- Row 5: branch `-`, `H₁`, `y ∈ [1/2, 3/4]`, `z ∈ [1/4, 1/2]`, bound `-1/1439036`. -/
theorem bernstein_minus_H1_row5 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (1 / 2 : ℝ) (3 / 4)) (hz : z ∈ Set.Icc (1 / 4 : ℝ) (1 / 2)) :
    h1Minus x y z < -1 / 1439036 := sorry

/-- Row 6: branch `-`, `H₁`, `y ∈ [1/2, 3/4]`, `z ∈ [1/2, 1]`, bound `-1/351848`. -/
theorem bernstein_minus_H1_row6 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (1 / 2 : ℝ) (3 / 4)) (hz : z ∈ Set.Icc (1 / 2 : ℝ) 1) :
    h1Minus x y z < -1 / 351848 := sorry

/-- Row 7: branch `-`, `H₁`, `y ∈ [3/4, 1]`, `z ∈ [0, 1]`, bound `-1/486594`. -/
theorem bernstein_minus_H1_row7 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (3 / 4 : ℝ) 1) (hz : z ∈ Set.Icc (0 : ℝ) 1) :
    h1Minus x y z < -1 / 486594 := sorry

/-- Row 8: branch `-`, `H₂`, `y, z ∈ [0, 1]`, bound `-1/177533`. -/
theorem bernstein_minus_H2 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (0 : ℝ) 1) (hz : z ∈ Set.Icc (0 : ℝ) 1) :
    h2Minus x y z < -1 / 177533 := sorry

/-- Row 9: branch `+`, `H₁`, `y ∈ [0, 1/2]`, `z ∈ [0, 1]`, bound `-1/2703813`. -/
theorem bernstein_plus_H1_row1 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (0 : ℝ) (1 / 2)) (hz : z ∈ Set.Icc (0 : ℝ) 1) :
    h1Plus x y z < -1 / 2703813 := sorry

/-- Row 10: branch `+`, `H₁`, `y ∈ [1/2, 1]`, `z ∈ [0, 1]`, bound `-1/841173`. -/
theorem bernstein_plus_H1_row2 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (1 / 2 : ℝ) 1) (hz : z ∈ Set.Icc (0 : ℝ) 1) :
    h1Plus x y z < -1 / 841173 := sorry

/-- Row 11: branch `+`, `H₂`, `y, z ∈ [0, 1]`, bound `-1/129369`. -/
theorem bernstein_plus_H2 (x y z : ℝ) (hx : x ∈ Set.Icc (0 : ℝ) 1)
    (hy : y ∈ Set.Icc (0 : ℝ) 1) (hz : z ∈ Set.Icc (0 : ℝ) 1) :
    h2Plus x y z < -1 / 129369 := sorry

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
        h1Fn (8 / 73) (3 * (8 / 73)) b r u < 0 ∧ h2Fn (8 / 73) (3 * (8 / 73)) b r u < 0) :=
  sorry

/-- **Theorem 1** (`UNBALANCED_OCCUPIED_LOWER_EAR:Theorem1`). The point `Q` cannot lie inside
`EBR`. Consequently `EBR` contains no further actual point in this final placement, and `Q` is
above `ER`. `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md`, lines 36-41, 456-460.
Uses: UNBALANCED_OCCUPIED_LOWER_EAR:claim-K, UNBALANCED_OCCUPIED_LOWER_EAR:claim-Bernstein,
UNBALANCED_OCCUPIED_LOWER_EAR:claim-b, UNBALANCED_OCCUPIED_LOWER_EAR:claim-r,
UNBALANCED_OCCUPIED_LOWER_EAR:claim-basic. -/
theorem theorem1 (h : OccSetting l b P Q R S T) :
    ¬ InTriangle Q (ptE l) (ptB b) R ∧
      NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R ∧
      0 < sarea (ptE l) R Q := sorry

end Heilbronn.UnbalancedOccupiedLowerEar
