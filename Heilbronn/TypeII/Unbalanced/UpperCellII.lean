module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.Unbalanced.CellI
public import Heilbronn.TypeII.Unbalanced.RadialSplit

/-! # Complete exclusion of the unbalanced upper cut in support cell II
(`hand/UNBALANCED_UPPER_CELL_II.md`)

**Role.** Primary route. `UNBALANCED_FINAL_LOWER_WEDGE:Theorem2` (lines 312-313) cites Theorem 1
for the two-point upper cut in cell II; with `UNBALANCED_RIGHT_HULL:Theorem2` it excludes the
whole two-point upper cut of the nontriangular branch. The proof ends with a 960-coefficient
Bernstein certificate.

**Setting** (lines 5-35, `UpperSetting`): `Row123 l b P Q R S T`, minimum area at least `A₀`,
both central points above `CE`, the right hull the quadrilateral `B, R, S, C` with `T` inside,
in support cell II (`T ∈ int BCR ∩ int BCS`). Two doubled thresholds are used: `s₀ = 7/64` and
`s = 8/73 < 2A₀`, so every actual doubled area is at least `s`. After the radial labelling of
`claim_setup` (`UpperLabelled`): `Q` below `DR`, `P, T` above `DR`.

Coordinates (lines 65-78): `R = (r, 1 - v_R)`, `S = (k, 1 - v_S)`, `T = (X, 1 - v)`,
`Q = (l, 1 - z)`, `P = (p, 1 - y)`, `q = 1 - λ`, `w = 1 - b`, `c = 1 - wq`, `a = k - r`,
`β = v_R - v_S`, `J_D = [DRS]`, `ℓ = p - l`, `d = [DQP] = zp - ly`, `d_C = [QPC] = d + y - z`,
`A_E = [EPQ] = qℓ - d`, `L_Q = az + βl`, `L_P = ay + βp`. In Lean the manuscript's `l` (the
abscissa of `Q`) is `lQ = Q.1`, since `l` is the height `λ` of `E`.

The polynomials of §§4-7 are defined explicitly, generic in the threshold `s`: `gammaFn`
(`γ`, (19)), `kappaFn` (`κ`), `yStar`, `pStar`, `dStar` ((23)), `nFn` (`N`, (24)), `f0Fn`
(`F₀`), `lZero` (`l₀`), `sZero` (`S₀`), `fZeroZero` (`F₀₀`), and `hPoly b q z` (`H` of (26) at
`s = 8/73`); `bOf`, `qOf`, `zOf` are the affine substitution (30) and `hUnit u v t` is `H` in the
unit coordinates.

**Results.**
* `claim_setup` (1)-(2): the separation of `{D, C}` from `{E, B}`, `q > 67/80`, the radial
  labelling, `v_R ≥ Ks₀ > 13/16`, and the convex order.
* `claim_qupper` (3)-(4): `q < 119/128`.
* `claim_line_caps` (5)-(7): caps for two points in a triangle of doubled area `< 17s/2`.
* `claim_DEC` (8)-(9), `claim_signs` (10)-(12), `claim_stress` (13)-(15): the central-line caps,
  the cross-triangle signs and the positive stress identity.
* `claim_G` (16)-(19), `claim_N` (20)-(24), `claim_l` (25): the monotone eliminations of
  `R, S, T`, of `p, y`, and of `l`.
* `claim_H_nonneg` (26)-(29): `H(b, q, z) ≥ 0` on the box (27).
* `bernstein_row1` … `bernstein_row12`: the twelve rows of the certificate table of §7, each a
  negativity statement for `H` on its box; `claim_bernstein` (30)-(32): `H < 0` on (27).
* `theorem1`: the configuration does not exist.

FLAG (wording, line 145-147): (7) says each opposite subtriangle is "greater than
`s + 3s²/A`"; the argument (`≥ Hs/(A+s) ≥ s + 3s²/A`) gives only `≥`. `claim_line_caps` states
`≥`; the strict consequence `> 7s/4` is unaffected.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedUpperCellII

open UnbalancedRightHull

variable {l b : ℝ} {P Q R S T : Point}

/-! ### The setting -/

/-- The standing setting of the note: the two-point upper cut in support cell II with minimum
area at least `A₀`. -/
structure UpperSetting (l b : ℝ) (P Q R S T : Point) : Prop where
  row : Row123 l b P Q R S T
  min : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)
  P_above : 0 < sarea (ptE l) ptC P
  Q_above : 0 < sarea (ptE l) ptC Q
  quad : QuadHull (ptB b) R S ptC T
  cell : CellII (ptB b) R S ptC T

/-- The setting after the radial labelling of `claim_setup`: `Q` below `DR`, `P` and `T` above
it. -/
structure UpperLabelled (l b : ℝ) (P Q R S T : Point) : Prop
    extends UpperSetting l b P Q R S T where
  Q_below_DR : sarea ptD R Q < 0
  P_above_DR : 0 < sarea ptD R P
  T_above_DR : 0 < sarea ptD R T

/-! ### The polynomials of §§4-7 -/

/-- `c = 1 - wq = 1 - (1 - b)q`, the doubled area `[EBC]`. -/
def cFn (b q : ℝ) : ℝ := 1 - (1 - b) * q

/-- `γ = (c - s)² - 4sb(1 - q)`, (19). -/
def gammaFn (s b q : ℝ) : ℝ := (cFn b q - s) ^ 2 - 4 * s * b * (1 - q)

/-- `κ = q(1 - l) - z`, (22) (`lQ` is the manuscript's `l`). -/
def kappaFn (q z lQ : ℝ) : ℝ := q * (1 - lQ) - z

/-- `Y_* = s(q + z)`, (23). -/
def yStar (s q z : ℝ) : ℝ := s * (q + z)

/-- `P_* = κ - s(2 - l)`, (23). -/
def pStar (s q z lQ : ℝ) : ℝ := kappaFn q z lQ - s * (2 - lQ)

/-- `D_* = (z + s)κ - s(q + z)`, (23). -/
def dStar (s q z lQ : ℝ) : ℝ := (z + s) * kappaFn q z lQ - s * (q + z)

/-- `N(b, q, z, l) = γ{D_*(1 - l) - sP_*} - 4sb²(D_* z + sY_*)`, (24). -/
def nFn (s b q z lQ : ℝ) : ℝ :=
  gammaFn s b q * (dStar s q z lQ * (1 - lQ) - s * pStar s q z lQ) -
    4 * s * b ^ 2 * (dStar s q z lQ * z + s * yStar s q z)

/-- `F₀(b, q, z, l) = zκ - s(q + z)`, (24). -/
def f0Fn (s q z lQ : ℝ) : ℝ := z * kappaFn q z lQ - s * (q + z)

/-- `l₀ = s + bz`, (25). -/
def lZero (s b z : ℝ) : ℝ := s + b * z

/-- `S₀ = b(1 - z) - s`, (25). -/
def sZero (s b z : ℝ) : ℝ := b * (1 - z) - s

/-- `F₀₀ = q{z(1 - s - bz) - s} - z(z + s)`, (25). -/
def fZeroZero (s b q z : ℝ) : ℝ := q * (z * (1 - s - b * z) - s) - z * (z + s)

/-- The certificate polynomial `H(b, q, z) = N₀ + αF₀₀ + ηS₀` of (26), with `s = 8/73`,
`N₀ = N(b, q, z, l₀)`, `α = 9/512`, `η = 7/2048`; of degree `(4, 3, 3)` in `(b, q, z)`. -/
def hPoly (b q z : ℝ) : ℝ :=
  nFn (8 / 73) b q z (lZero (8 / 73) b z) + 9 / 512 * fZeroZero (8 / 73) b q z +
    7 / 2048 * sZero (8 / 73) b z

/-- The affine substitution (30) for `b`: `b = 8/73 + (1/2 - 8/73)u`. -/
def bOf (u : ℝ) : ℝ := 8 / 73 + (1 / 2 - 8 / 73) * u

/-- The affine substitution (30) for `q`: `q = 67/80 + (119/128 - 67/80)v`. -/
def qOf (v : ℝ) : ℝ := 67 / 80 + (119 / 128 - 67 / 80) * v

/-- The affine substitution (30) for `z`: `z = 14/73 + (3/4 - 14/73)t`. -/
def zOf (t : ℝ) : ℝ := 14 / 73 + (3 / 4 - 14 / 73) * t

/-- `H` in the unit coordinates `(u, v, t) ∈ [0, 1]³` of (30). -/
def hUnit (u v t : ℝ) : ℝ := hPoly (bOf u) (qOf v) (zOf t)

/-! ### Geometric and parameter bounds -/

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-setup`), equations (1)-(2). `PQ` puts `D, C` on
one side and `E, B` on the other; `q > 67/80`; `v_R = 1 - R_y ≥ Ks₀ > 13/16`; the convex order
`b < r < k ≤ 1`, `0 < v_S < v_R ≤ 1`; and, after interchanging `P, Q` if needed, `Q` is below
`DR`, `P, T` are above `DR` and `P, T ∈ int DCR` (counterclockwise `D, R, C`).
`hand/UNBALANCED_UPPER_CELL_II.md`, lines 49-78.
Uses: UNBALANCED_RIGHT_HULL:Theorem3, UNBALANCED_RIGHT_HULL:Theorem4,
UNBALANCED_RIGHT_HULL:claim-q67/80, UNBALANCED_RADIAL_SPLIT:Theorem1,
UNBALANCED_CELL_I:claim-order. -/
theorem claim_setup (h : UpperSetting l b P Q R S T) :
    LineSeparates P Q ptD ptC (ptE l) (ptB b) ∧ 67 / 80 < 1 - l ∧
      Kc * (7 / 64) ≤ 1 - R.2 ∧ 13 / 16 < Kc * (7 / 64) ∧
      (b < R.1 ∧ R.1 < S.1 ∧ S.1 ≤ 1 ∧ 0 < 1 - S.2 ∧ 1 - S.2 < 1 - R.2 ∧ 1 - R.2 ≤ 1) ∧
      ((sarea ptD R Q < 0 ∧ 0 < sarea ptD R P ∧ 0 < sarea ptD R T ∧
          InTriangle P ptD R ptC ∧ InTriangle T ptD R ptC) ∨
        (sarea ptD R P < 0 ∧ 0 < sarea ptD R Q ∧ 0 < sarea ptD R T ∧
          InTriangle Q ptD R ptC ∧ InTriangle T ptD R ptC)) := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-qupper`), equations (3)-(4).
`q < 119/128 = 17s₀/2 < 17s/2`. `hand/UNBALANCED_UPPER_CELL_II.md`, lines 80-118.
Uses: UNBALANCED_RIGHT_HULL:claim-generic-ear. -/
theorem claim_qupper (h : UpperSetting l b P Q R S T) :
    1 - l < 119 / 128 ∧ (119 / 128 : ℝ) = 17 * (7 / 64) / 2 ∧
      (17 * (7 / 64) / 2 : ℝ) < 17 * (8 / 73) / 2 := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-line-caps`), equations (5)-(7). Let `X, Y` lie
strictly inside the counterclockwise triangle `VAB` of doubled area `H < 17s/2`, every doubled
triangle on the five points be at least `s > 0`, and `XY` isolate `V`; put `A = |[VXY]|`,
`C₁ = |[AXY]|`, `C₂ = |[BXY]|`. Then `C₁, C₂ < 3s/2`, `A < 4s`, and both opposite subtriangles
`[ABX], [ABY]` are at least `s + 3s²/A > 7s/4`.
`hand/UNBALANCED_UPPER_CELL_II.md`, lines 120-150.
Uses: UNBALANCED_CELL_I:Lemma2 (its equation (10)). -/
theorem claim_line_caps {s : ℝ} {V A B X Y : Point} (hs : 0 < s) (hX : InTriangle X V A B)
    (hY : InTriangle Y V A B) (hmin : s / 2 ≤ minTriangleArea ![V, A, B, X, Y])
    (hiso : LineIsolates X Y V A B) (hH : sarea V A B < 17 * s / 2) :
    let a := |sarea X Y V|
    |sarea X Y A| < 3 * s / 2 ∧ |sarea X Y B| < 3 * s / 2 ∧ a < 4 * s ∧
      s + 3 * s ^ 2 / a ≤ sarea A B X ∧ s + 3 * s ^ 2 / a ≤ sarea A B Y ∧
      7 * s / 4 < s + 3 * s ^ 2 / a := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-DEC`), equations (8)-(9). Applied to the actual
triangle `DEC` (doubled area `q < 17s/2`, `E` isolated by `PQ`), with `s = 8/73`:
`s ≤ d, d_C < 3s/2`, `s ≤ A_E < 4s`, `y, z > 7s/4`, `qℓ = A_E + d ≥ 2s`, `ℓ > 0`, and the slope
of `PQ` satisfies `|(z - y)/ℓ| < q/4 < 1/4`. `hand/UNBALANCED_UPPER_CELL_II.md`, lines 152-174.
Uses: UNBALANCED_UPPER_CELL_II:claim-line-caps, UNBALANCED_UPPER_CELL_II:claim-qupper,
UNBALANCED_UPPER_CELL_II:claim-setup. -/
theorem claim_DEC (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let y := 1 - P.2
    let z := 1 - Q.2
    let ell := P.1 - Q.1
    let d := sarea ptD Q P
    let dC := sarea Q P ptC
    let AE := sarea (ptE l) P Q
    s ≤ d ∧ d < 3 * s / 2 ∧ s ≤ dC ∧ dC < 3 * s / 2 ∧ s ≤ AE ∧ AE < 4 * s ∧
      7 * s / 4 < y ∧ 7 * s / 4 < z ∧ 2 * s ≤ q * ell ∧ 0 < ell ∧
      |(z - y) / ell| < q / 4 ∧ q / 4 < 1 / 4 := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-signs`), equations (10)-(12). With
`L(Z) = [QPZ]` and `s = 8/73`: `L(R) ≤ -s` and `L(T) ≤ -s`; the ordered areas `[DQT], [QTP],
[RST]` are at least `s`; and `L_Q = az + βl`, `L_P = ay + βp` satisfy `0 < L_Q < L_P`.
`hand/UNBALANCED_UPPER_CELL_II.md`, lines 176-224.
Uses: UNBALANCED_UPPER_CELL_II:claim-DEC, UNBALANCED_UPPER_CELL_II:claim-setup. -/
theorem claim_signs (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let y := 1 - P.2
    let z := 1 - Q.2
    let a := S.1 - R.1
    let β := (1 - R.2) - (1 - S.2)
    let LQ := a * z + β * Q.1
    let LP := a * y + β * P.1
    sarea Q P R ≤ -s ∧ sarea Q P T ≤ -s ∧ s ≤ sarea ptD Q T ∧ s ≤ sarea Q T P ∧
      s ≤ sarea R S T ∧ 0 < LQ ∧ LQ < LP := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-stress`), equations (13)-(15). The exact identity
`(L_P - L_Q)[DQT] + L_Q[QTP] + d[RST] = d(J_D - L_Q)` (13), the consequence
`d(J_D - L_Q) ≥ s(d + L_P)` (14), and `d(r - l) = ℓ[RDQ] + l[RPQ] ≥ sp` (15), with
`s = 8/73`. `hand/UNBALANCED_UPPER_CELL_II.md`, lines 226-246.
Uses: UNBALANCED_UPPER_CELL_II:claim-signs. -/
theorem claim_stress (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let y := 1 - P.2
    let z := 1 - Q.2
    let ell := P.1 - Q.1
    let a := S.1 - R.1
    let β := (1 - R.2) - (1 - S.2)
    let LQ := a * z + β * Q.1
    let LP := a * y + β * P.1
    let d := sarea ptD Q P
    let JD := sarea ptD R S
    (LP - LQ) * sarea ptD Q T + LQ * sarea Q T P + d * sarea R S T = d * (JD - LQ) ∧
      s * (d + LP) ≤ d * (JD - LQ) ∧
      d * (R.1 - Q.1) = ell * sarea R ptD Q + Q.1 * sarea R P Q ∧
      s * P.1 ≤ d * (R.1 - Q.1) := sorry

/-! ### The monotone eliminations -/

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-G`), equations (16)-(19). Eliminating `S`, `R`
and `T`: `γ = (c - s)² - 4sb(1 - q) > 0` and
`G = γ{d(1 - l) - sp} - 4sb²(dz + sy) ≥ 0` (`s = 8/73`).
`hand/UNBALANCED_UPPER_CELL_II.md`, lines 248-305.
Uses: UNBALANCED_UPPER_CELL_II:claim-stress. -/
theorem claim_G (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let y := 1 - P.2
    let z := 1 - Q.2
    let d := sarea ptD Q P
    0 < gammaFn s b q ∧
      0 ≤ gammaFn s b q * (d * (1 - Q.1) - s * P.1) - 4 * s * b ^ 2 * (d * z + s * y) := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-N`), equations (20)-(24). Eliminating `p` and `y`
(`[ECP], [QPC] ≥ s`): `κ = q(1 - l) - z > 0`, `N(b, q, z, l) ≥ 0` and
`F₀(b, q, z, l) = zκ - s(q + z) ≥ 0` (`s = 8/73`).
`hand/UNBALANCED_UPPER_CELL_II.md`, lines 307-371.
Uses: UNBALANCED_UPPER_CELL_II:claim-G. -/
theorem claim_N (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let z := 1 - Q.2
    0 < kappaFn q z Q.1 ∧ 0 ≤ nFn s b q z Q.1 ∧ 0 ≤ f0Fn s q z Q.1 := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-l`), equation (25). From `[DBQ], [EBQ] ≥ s`:
`l ≥ l₀ = s + bz` and `l ≥ (s - b(q - z))/(1 - q)`; with `Δ = l - l₀`,
`Δ ≥ max(0, -qS₀/(1 - q))`, `N(b, q, z, l) ≤ N₀ = N(b, q, z, l₀)` and `F₀ = F₀₀ - qzΔ`
(`s = 8/73`). The monotonicity `N(l) ≤ N(l₀)` is argued informally in the manuscript
(lines 373-380; see `notes/findings.md`). `hand/UNBALANCED_UPPER_CELL_II.md`, lines 373-404.
Uses: UNBALANCED_UPPER_CELL_II:claim-N. -/
theorem claim_l (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let z := 1 - Q.2
    lZero s b z ≤ Q.1 ∧ (s - b * (q - z)) / (1 - q) ≤ Q.1 ∧
      max 0 (-(q * sZero s b z) / (1 - q)) ≤ Q.1 - lZero s b z ∧
      nFn s b q z Q.1 ≤ nFn s b q z (lZero s b z) ∧
      f0Fn s q z Q.1 = fZeroZero s b q z - q * z * (Q.1 - lZero s b z) := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-H≥0`), equations (26)-(29). The actual parameters
`(b, q, z)` lie in the box (27): `8/73 ≤ b ≤ 1/2`, `67/80 ≤ q ≤ 119/128`, `14/73 ≤ z ≤ 3/4`, and
satisfy `H(b, q, z) ≥ 0`. `hand/UNBALANCED_UPPER_CELL_II.md`, lines 406-455.
Uses: UNBALANCED_UPPER_CELL_II:claim-N, UNBALANCED_UPPER_CELL_II:claim-l,
UNBALANCED_UPPER_CELL_II:claim-setup, UNBALANCED_UPPER_CELL_II:claim-qupper,
UNBALANCED_UPPER_CELL_II:claim-DEC. -/
theorem claim_H_nonneg (h : UpperLabelled l b P Q R S T) :
    let q := 1 - l
    let z := 1 - Q.2
    8 / 73 ≤ b ∧ b ≤ 1 / 2 ∧ 67 / 80 ≤ q ∧ q ≤ 119 / 128 ∧ 14 / 73 ≤ z ∧ z ≤ 3 / 4 ∧
      0 ≤ hPoly b q z := sorry

/-! ### The Bernstein certificate (§7): the twelve rows of the table

Each row states that on its box in the unit coordinates `(u, v, t)` of (30), `H` is below the
row's bound: all 80 tensor Bernstein coefficients of degree `(4, 3, 3)` of `H` on the box are
below `-1/N`, and `H` is a convex combination of them. -/

/-- Row 1 of the table of §7 (part of UNBALANCED_UPPER_CELL_II:claim-Bernstein):
`u ∈ [0, 1/4]`, `v ∈ [0, 1]`, `t ∈ [0, 1/8]`, bound `-1/201292`. -/
theorem bernstein_row1 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (0 : ℝ) (1 / 8)) :
    hUnit u v t < -1 / 201292 := sorry

/-- Row 2: `u ∈ [1/4, 1/2]`, `v ∈ [0, 1]`, `t ∈ [0, 1/8]`, bound `-1/28701`. -/
theorem bernstein_row2 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 4 : ℝ) (1 / 2))
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (0 : ℝ) (1 / 8)) :
    hUnit u v t < -1 / 28701 := sorry

/-- Row 3: `u ∈ [0, 1/8]`, `v ∈ [0, 1/2]`, `t ∈ [1/8, 3/16]`, bound `-1/673376`. -/
theorem bernstein_row3 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 8))
    (hv : v ∈ Set.Icc (0 : ℝ) (1 / 2)) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (3 / 16)) :
    hUnit u v t < -1 / 673376 := sorry

/-- Row 4: `u ∈ [0, 1/8]`, `v ∈ [1/2, 1]`, `t ∈ [1/8, 3/16]`, bound `-1/85605`. -/
theorem bernstein_row4 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 8))
    (hv : v ∈ Set.Icc (1 / 2 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (3 / 16)) :
    hUnit u v t < -1 / 85605 := sorry

/-- Row 5: `u ∈ [1/8, 1/4]`, `v ∈ [0, 1/2]`, `t ∈ [1/8, 3/16]`, bound `-1/264312`. -/
theorem bernstein_row5 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 8 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (0 : ℝ) (1 / 2)) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (3 / 16)) :
    hUnit u v t < -1 / 264312 := sorry

/-- Row 6: `u ∈ [1/8, 1/4]`, `v ∈ [1/2, 1]`, `t ∈ [1/8, 3/16]`, bound `-1/87739`. -/
theorem bernstein_row6 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 8 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (1 / 2 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (3 / 16)) :
    hUnit u v t < -1 / 87739 := sorry

/-- Row 7: `u ∈ [0, 1/4]`, `v ∈ [0, 1/2]`, `t ∈ [3/16, 1/4]`, bound `-1/141939`. -/
theorem bernstein_row7 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (0 : ℝ) (1 / 2)) (ht : t ∈ Set.Icc (3 / 16 : ℝ) (1 / 4)) :
    hUnit u v t < -1 / 141939 := sorry

/-- Row 8: `u ∈ [0, 1/4]`, `v ∈ [1/2, 1]`, `t ∈ [3/16, 1/4]`, bound `-1/94199`. -/
theorem bernstein_row8 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (1 / 2 : ℝ) 1) (ht : t ∈ Set.Icc (3 / 16 : ℝ) (1 / 4)) :
    hUnit u v t < -1 / 94199 := sorry

/-- Row 9: `u ∈ [1/4, 1/2]`, `v ∈ [0, 1]`, `t ∈ [1/8, 1/4]`, bound `-1/68199`. -/
theorem bernstein_row9 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 4 : ℝ) (1 / 2))
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (1 / 4)) :
    hUnit u v t < -1 / 68199 := sorry

/-- Row 10: `u ∈ [1/2, 1]`, `v ∈ [0, 1]`, `t ∈ [0, 1/4]`, bound `-1/6165`. -/
theorem bernstein_row10 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 2 : ℝ) 1)
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (0 : ℝ) (1 / 4)) :
    hUnit u v t < -1 / 6165 := sorry

/-- Row 11: `u ∈ [0, 1]`, `v ∈ [0, 1]`, `t ∈ [1/4, 1/2]`, bound `-1/29261`. -/
theorem bernstein_row11 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) 1)
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 4 : ℝ) (1 / 2)) :
    hUnit u v t < -1 / 29261 := sorry

/-- Row 12: `u ∈ [0, 1]`, `v ∈ [0, 1]`, `t ∈ [1/2, 1]`, bound `-1/2153`. -/
theorem bernstein_row12 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) 1)
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 2 : ℝ) 1) :
    hUnit u v t < -1 / 2153 := sorry

/-- **Claim** (`UNBALANCED_UPPER_CELL_II:claim-Bernstein`), equations (30)-(32). `H(b, q, z) < 0`
throughout the box (27). The twelve rows cover `[0, 1]³` with disjoint interiors (960 strict
coefficient comparisons in all). `hand/UNBALANCED_UPPER_CELL_II.md`, lines 457-525. -/
theorem claim_bernstein (b q z : ℝ) (hb : b ∈ Set.Icc (8 / 73 : ℝ) (1 / 2))
    (hq : q ∈ Set.Icc (67 / 80 : ℝ) (119 / 128)) (hz : z ∈ Set.Icc (14 / 73 : ℝ) (3 / 4)) :
    hPoly b q z < 0 := sorry

/-- **Theorem 1** (`UNBALANCED_UPPER_CELL_II:Theorem1`). The two-point upper cut in support cell
II does not exist (with minimum area at least `A₀`). `hand/UNBALANCED_UPPER_CELL_II.md`,
lines 37-47, 525.
Uses: UNBALANCED_UPPER_CELL_II:claim-setup, UNBALANCED_UPPER_CELL_II:claim-H≥0,
UNBALANCED_UPPER_CELL_II:claim-Bernstein. -/
theorem theorem1 (h : UpperSetting l b P Q R S T) : False := sorry

end Heilbronn.UnbalancedUpperCellII
