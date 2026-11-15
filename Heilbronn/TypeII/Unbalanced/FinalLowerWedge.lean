module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.CellI
public import Heilbronn.TypeII.Unbalanced.CellIII
public import Heilbronn.TypeII.Unbalanced.RadialSplit
public import Heilbronn.TypeII.Unbalanced.UpperCellII
public import Heilbronn.TypeII.Unbalanced.OneUpperRadial
public import Heilbronn.TypeII.Unbalanced.OccupiedLowerEar
public import Heilbronn.TypeII.Unbalanced.FinalNegativeLine
public import Heilbronn.TypeII.Unbalanced.FinalUpperPair

/-! # The last unbalanced cell and completion of Type II (`hand/UNBALANCED_FINAL_LOWER_WEDGE.md`)

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
namespace Heilbronn.UnbalancedFinalLowerWedge

open UnbalancedRightHull

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

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-ids`), equation (1). The identities
`δ = kA - rB₁`, `η = B₁ + δ - A`, `J = δ + q(k - r)`, and in the final placement `0 < δ < A`
and `B₁ > η`. `hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 41-57. -/
theorem claim_ids (h : WedgeSetting l b P Q R S T) :
    let A := sarea (ptE l) R ptC
    let B₁ := sarea (ptE l) S ptC
    let δ := sarea (ptE l) R S
    let η := sarea R S ptC
    δ = S.1 * A - R.1 * B₁ ∧ η = B₁ + δ - A ∧ sarea ptD R S = δ + (1 - l) * (S.1 - R.1) ∧
      0 < δ ∧ δ < A ∧ η < B₁ := sorry

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-F`), equation (2). `Q` below `DR` and inside
`ERS` give `F = (qr - 2s)δ - sq(k + r) ≥ 0` (`s = 8/73`).
`hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 59-73.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-ids. -/
theorem claim_F (h : WedgeSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    0 ≤ (q * R.1 - 2 * s) * sarea (ptE l) R S - s * q * (S.1 + R.1) := sorry

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-G`), equation (3). `T ∈ int CQS` gives
`G = (B₁ - 2s)δ - s(A + B₁) ≥ 0`, hence `B₁ > 3s` (`s = 8/73`).
`hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 76-100.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-ids. -/
theorem claim_G (h : WedgeSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let A := sarea (ptE l) R ptC
    let B₁ := sarea (ptE l) S ptC
    0 ≤ (B₁ - 2 * s) * sarea (ptE l) R S - s * (A + B₁) ∧ 3 * s < B₁ := sorry

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-replace`), equations (4)-(6). `qr ≥ 3s`
(`Q ∈ DER`); after `k → 1` and `A → A_* = 1 - q(1 - r)`, `F_*(q, r, B₁) ≥ 0` and
`G_*(q, r, B₁) ≥ 0`; and `3/5 < r < 65/73`, `3s/r ≤ q < 9/10` (`s = 8/73`).
`hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 102-150.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-F, UNBALANCED_FINAL_LOWER_WEDGE:claim-G,
UNBALANCED_ONE_UPPER_RADIAL:claim-q<9/10, CORNER_FAMILIES:TwoInteriorPointLemma,
UNBALANCED_FINAL_NEGATIVE_LINE:claim-params. -/
theorem claim_replace (h : WedgeSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    let B₁ := sarea (ptE l) S ptC
    3 * s ≤ q * r ∧ 0 ≤ fStar s q r B₁ ∧ 0 ≤ gStar s q r B₁ ∧ 3 / 5 < r ∧ r < 65 / 73 ∧
      3 * s / r ≤ q ∧ q < 9 / 10 := sorry

/-- **Equation (7)** (part of UNBALANCED_FINAL_LOWER_WEDGE:claim-W). The weighted sum
`W = F_* + (7/2)G_*` is the concave quadratic `-(7r/2)B² + β(q, r)B + γ(q, r)` in `B = B_*`,
and `Δ - 14rW = (7rB - β)²`. `hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 156-176. -/
theorem eq7 (s q r B : ℝ) :
    fStar s q r B + 7 / 2 * gStar s q r B = -(7 * r / 2) * B ^ 2 + betaFn s q r * B + gammaFn s q r ∧
      discFn s q r - 14 * r * (fStar s q r B + 7 / 2 * gStar s q r B) = (7 * r * B - betaFn s q r) ^ 2 :=
  sorry

/-- **Equation (8)** (part of UNBALANCED_FINAL_LOWER_WEDGE:claim-W). At `s = 8/73` the
discriminant `Δ` is a convex quadratic in `q`, with `q²` coefficient `(2r² + 7r - 7)²/4`, and
endpoint values `Δ(3s/r, r) = P₀(r)/(21316r²)` (`r ≠ 0`) and `Δ(9/10, r) = P₁(r)/2131600`.
`hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 184-208. -/
theorem eq8 (r : ℝ) (hr : r ≠ 0) :
    (∃ c₁ c₀ : ℝ, ∀ q : ℝ,
        discFn (8 / 73) q r = (2 * r ^ 2 + 7 * r - 7) ^ 2 / 4 * q ^ 2 + c₁ * q + c₀) ∧
      discFn (8 / 73) (3 * (8 / 73) / r) r = p0Poly r / (21316 * r ^ 2) ∧
      discFn (8 / 73) (9 / 10) r = p1Poly r / 2131600 := sorry

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-W`), equations (7)-(9). In the final
placement `Δ(q, r) ≥ 0` (the maximum `Δ/(14r)` of `W ≥ 0` over `B_*`), and by convexity in `q`
on `[3s/r, 9/10]`, `Δ(q, r) ≤ max(Δ(3s/r, r), Δ(9/10, r))` (`s = 8/73`).
`hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 152-208.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-replace. -/
theorem claim_W (h : WedgeSetting l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let r := R.1
    0 ≤ discFn s q r ∧ discFn s q r ≤ max (discFn s (3 * s / r) r) (discFn s (9 / 10) r) :=
  sorry

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-quartics`), equations (10)-(13). For
`3/5 ≤ r ≤ 65/73`, `P₀(r) < 0` and `P₁(r) < 0`. `hand/UNBALANCED_FINAL_LOWER_WEDGE.md`,
lines 210-267. -/
theorem claim_quartics {r : ℝ} (hr₁ : 3 / 5 ≤ r) (hr₂ : r ≤ 65 / 73) :
    p0Poly r < 0 ∧ p1Poly r < 0 := sorry

/-- **Theorem 1** (`UNBALANCED_FINAL_LOWER_WEDGE:Theorem1`). The final placement is impossible.
`hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 32-37, 265-267.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:claim-W, UNBALANCED_FINAL_LOWER_WEDGE:claim-quartics,
UNBALANCED_FINAL_LOWER_WEDGE:claim-replace. -/
theorem theorem1 (h : WedgeSetting l b P Q R S T) : False := sorry

/-! ### The one-point upper cut and the complete Type-II theorem -/

/-- **Claim** (`UNBALANCED_FINAL_LOWER_WEDGE:claim-chain`), §5. The one-point upper cut in
support cell II is impossible: with minimum area at least `A₀`, no configuration has `P` above
`CE`, `Q` below `CE`, and a quadrilateral right hull in cell II. The exhaustive chain:
`Q` below `DR` and `P, T` above it; `Q` above `ER`; `[QTE] > 0`; `T ∈ CQS` and `Q ∈ ERS`; the
final placement. `hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 269-286.
Uses: UNBALANCED_ONE_UPPER_RADIAL:Theorem1, UNBALANCED_OCCUPIED_LOWER_EAR:Theorem1,
UNBALANCED_FINAL_NEGATIVE_LINE:Theorem1, UNBALANCED_FINAL_UPPER_PAIR:claim-CQS,
UNBALANCED_FINAL_UPPER_PAIR:Theorem1, UNBALANCED_FINAL_LOWER_WEDGE:Theorem1. -/
theorem claim_chain (h : UnbalancedOneUpperRadial.OneUpperSetting l b P Q R S T) : False :=
  sorry

/-- **Theorem 2** (`UNBALANCED_FINAL_LOWER_WEDGE:Theorem2`). Every nine-point configuration in
the Type-II normalization (`D = (0,1)`, `C = (1,1)`, `E = (0,λ)`, `B = (b,0)`, `0 < b < 1`,
`0 < λ < 1`, five further points in the square) has a triangle of area strictly less than
`A₀ = (9√65 - 55)/320`. `hand/UNBALANCED_FINAL_LOWER_WEDGE.md`, lines 288-320.
Uses: TYPE_II:ShearNormalization, TYPE_II:claim-two-residual-classes,
CORNER_FAMILIES:TypeIII-complete, TYPE_II_COMPLETION:Theorem11, TYPE_II:UnbalancedCutLemma,
TYPE_II_COMPLETION:Theorem12, TYPE_II_COMPLETION:Theorem14, UNBALANCED_RIGHT_HULL:Theorem1,
UNBALANCED_RIGHT_HULL:Theorem2, UNBALANCED_RIGHT_HULL:Theorem3, UNBALANCED_RIGHT_HULL:Theorem4,
UNBALANCED_RADIAL_SPLIT:Theorem1, UNBALANCED_UPPER_CELL_II:Theorem1, UNBALANCED_CELL_I:Theorem1,
UNBALANCED_CELL_III:Theorem1, UNBALANCED_FINAL_LOWER_WEDGE:claim-chain. -/
theorem theorem2 {l b : ℝ} {V W X Y Z : Point} (hb₀ : 0 < b) (hb₁ : b < 1) (hl₀ : 0 < l)
    (hl₁ : l < 1) (hV : V ∈ unitSquare) (hW : W ∈ unitSquare) (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (typeIIConfig l b V W X Y Z) < A₀ := sorry

/-- The complete Type-II exclusion in the form used by the assembly
(Theorem 2 of the manuscript): no configuration `typeIIConfig l b V W X Y Z` with the
conditions of `IsTypeII` has `A₀ ≤ minTriangleArea`. Immediate from `theorem2`.
Uses: UNBALANCED_FINAL_LOWER_WEDGE:Theorem2. -/
theorem typeII_exclusion {l b : ℝ} {V W X Y Z : Point} (hb₀ : 0 < b) (hb₁ : b < 1)
    (hl₀ : 0 < l) (hl₁ : l < 1) (hV : V ∈ unitSquare) (hW : W ∈ unitSquare)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    ¬ A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z) := sorry

end Heilbronn.UnbalancedFinalLowerWedge
