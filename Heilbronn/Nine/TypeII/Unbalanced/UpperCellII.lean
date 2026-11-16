module

public import Heilbronn.Nine.TypeII.Unbalanced.RightHull
public import Heilbronn.Nine.TypeII.Unbalanced.CellI
public import Heilbronn.Nine.TypeII.Unbalanced.RadialSplit
public import Heilbronn.Nine.TypeII.Unbalanced.UpperCellIICert

/-! # Complete exclusion of the unbalanced upper cut in support cell II

`false_of_upperSetting` excludes the two-point upper cut in cell II; with `UnbalancedRightHull.not_cellI_or_cellIII` it
excludes the whole two-point upper cut of the nontriangular branch, as used by the assembly in
`UnbalancedFinalLowerWedge`. The proof ends with a 960-coefficient Bernstein certificate.

**Setting** (`UpperSetting`): `Row123 l b P Q R S T`, minimum area at least `A₀`,
both central points above `CE`, the right hull the quadrilateral `B, R, S, C` with `T` inside,
in support cell II (`T ∈ int BCR ∩ int BCS`). Two doubled thresholds are used: `s₀ = 7/64` and
`s = 8/73 < 2A₀`, so every actual doubled area is at least `s`. After the radial labelling of
`upper_cellII_setup` (`UpperLabelled`): `Q` below `DR`, `P, T` above `DR`.

Coordinates: `R = (r, 1 - v_R)`, `S = (k, 1 - v_S)`, `T = (X, 1 - v)`,
`Q = (l, 1 - z)`, `P = (p, 1 - y)`, `q = 1 - λ`, `w = 1 - b`, `c = 1 - wq`, `a = k - r`,
`β = v_R - v_S`, `J_D = [DRS]`, `ℓ = p - l`, `d = [DQP] = zp - ly`, `d_C = [QPC] = d + y - z`,
`A_E = [EPQ] = qℓ - d`, `L_Q = az + βl`, `L_P = ay + βp`. In the polynomial definitions the
abscissa `l` of `Q` is the argument `lQ`, since in Lean `l` is the height `λ` of `E`.

The polynomials of the eliminations are defined explicitly, generic in the threshold `s`:
`gammaFn` (`γ`), `kappaFn` (`κ`), `yStar`, `pStar`, `dStar`, `nFn` (`N`), `f0Fn` (`F₀`),
`lZero` (`l₀`), `sZero` (`S₀`), `fZeroZero` (`F₀₀`), and `hPoly b q z` (`H` at `s = 8/73`);
`bOf`, `qOf`, `zOf` are the affine substitution of the unit cube onto the parameter box and
`hUnit u v t` is `H` in the unit coordinates.

**Results.**
* `upper_cellII_setup`: the separation of `{D, C}` from `{E, B}`, `q > 67/80`, the radial
  labelling, `v_R ≥ Ks₀ > 13/16`, and the convex order.
* `q_lt_119_128`: `q < 119/128`.
* `line_caps`: caps for two points in a triangle of doubled area `< 17s/2`.
* `DEC_caps`, `QP_line_signs`, `stress_identity`: the central-line caps, the cross-triangle signs
  and the positive stress identity.
* `G_nonneg`, `nFn_nonneg`, `nFn_le_nFn_lZero`: the monotone eliminations of `R, S, T`, of `p, y`, and of
  `l`.
* `hPoly_nonneg`: `H(b, q, z) ≥ 0` on the box
  `[8/73, 1/2] × [67/80, 119/128] × [14/73, 3/4]`.
* `bernstein_row1` … `bernstein_row12`: the twelve boxes of the certificate, each the sign
  `H < 0` on its box (kernel checks in `UpperCellIICert.lean`); `hPoly_neg`: `H < 0` on the
  whole box.
* `false_of_upperSetting`: the configuration does not exist.

In `line_caps` the opposite subtriangles are bounded by `≥ Hs/(A+s) ≥ s + 3s²/A`, a
non-strict bound; the strict consequence `> 7s/4` is what is used.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.UnbalancedUpperCellII

open UnbalancedRightHull

variable {l b : ℝ} {P Q R S T : Point}

/-! ### The setting -/

/-- The standing setting: the two-point upper cut (`P, Q` above `CE`) with a quadrilateral right
hull in support cell II, minimum area at least `A₀`. -/
structure UpperSetting (l b : ℝ) (P Q R S T : Point) : Prop where
  row : Row123 l b P Q R S T
  min : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)
  P_above : 0 < sarea (ptE l) ptC P
  Q_above : 0 < sarea (ptE l) ptC Q
  quad : QuadHull (ptB b) R S ptC T
  cell : CellII (ptB b) R S ptC T

/-- The setting after the radial labelling of `upper_cellII_setup`: `Q` below `DR`, `P` and `T` above
it. -/
structure UpperLabelled (l b : ℝ) (P Q R S T : Point) : Prop
    extends UpperSetting l b P Q R S T where
  Q_below_DR : sarea ptD R Q < 0
  P_above_DR : 0 < sarea ptD R P
  T_above_DR : 0 < sarea ptD R T

/-! ### The polynomials of the eliminations -/

/-- `c = 1 - wq = 1 - (1 - b)q`, the doubled area `[EBC]`. -/
def cFn (b q : ℝ) : ℝ := 1 - (1 - b) * q

/-- `γ = (c - s)² - 4sb(1 - q)`. -/
def gammaFn (s b q : ℝ) : ℝ := (cFn b q - s) ^ 2 - 4 * s * b * (1 - q)

/-- `κ = q(1 - l) - z` (`lQ` is the abscissa `l` of `Q`). -/
def kappaFn (q z lQ : ℝ) : ℝ := q * (1 - lQ) - z

/-- `Y_* = s(q + z)`. -/
def yStar (s q z : ℝ) : ℝ := s * (q + z)

/-- `P_* = κ - s(2 - l)`. -/
def pStar (s q z lQ : ℝ) : ℝ := kappaFn q z lQ - s * (2 - lQ)

/-- `D_* = (z + s)κ - s(q + z)`. -/
def dStar (s q z lQ : ℝ) : ℝ := (z + s) * kappaFn q z lQ - s * (q + z)

/-- `N(b, q, z, l) = γ{D_*(1 - l) - sP_*} - 4sb²(D_* z + sY_*)`. -/
def nFn (s b q z lQ : ℝ) : ℝ :=
  gammaFn s b q * (dStar s q z lQ * (1 - lQ) - s * pStar s q z lQ) -
    4 * s * b ^ 2 * (dStar s q z lQ * z + s * yStar s q z)

/-- `F₀(b, q, z, l) = zκ - s(q + z)`. -/
def f0Fn (s q z lQ : ℝ) : ℝ := z * kappaFn q z lQ - s * (q + z)

/-- `l₀ = s + bz`, the lower bound for `l` from `[DBQ] ≥ s`. -/
def lZero (s b z : ℝ) : ℝ := s + b * z

/-- `S₀ = b(1 - z) - s`. -/
def sZero (s b z : ℝ) : ℝ := b * (1 - z) - s

/-- `F₀₀ = q{z(1 - s - bz) - s} - z(z + s)`. -/
def fZeroZero (s b q z : ℝ) : ℝ := q * (z * (1 - s - b * z) - s) - z * (z + s)

/-- The certificate polynomial `H(b, q, z) = N₀ + αF₀₀ + ηS₀`, with `s = 8/73`,
`N₀ = N(b, q, z, l₀)`, `α = 9/512`, `η = 7/2048`; of degree `(4, 3, 3)` in `(b, q, z)`. -/
def hPoly (b q z : ℝ) : ℝ :=
  nFn (8 / 73) b q z (lZero (8 / 73) b z) + 9 / 512 * fZeroZero (8 / 73) b q z +
    7 / 2048 * sZero (8 / 73) b z

/-- The affine substitution for `b`: `b = 8/73 + (1/2 - 8/73)u`. -/
def bOf (u : ℝ) : ℝ := 8 / 73 + (1 / 2 - 8 / 73) * u

/-- The affine substitution for `q`: `q = 67/80 + (119/128 - 67/80)v`. -/
def qOf (v : ℝ) : ℝ := 67 / 80 + (119 / 128 - 67 / 80) * v

/-- The affine substitution for `z`: `z = 14/73 + (3/4 - 14/73)t`. -/
def zOf (t : ℝ) : ℝ := 14 / 73 + (3 / 4 - 14 / 73) * t

/-- `H` in the unit coordinates `(u, v, t) ∈ [0, 1]³`. -/
def hUnit (u v t : ℝ) : ℝ := hPoly (bOf u) (qOf v) (zOf t)

/-! ### Scalar helpers -/

section Helpers

/-- The algebra of `G_nonneg`: eliminating `S`, `R`, `T`. With `A = dz + sy`, `B* = dl + sp`, from
the stress bounds `h14`, `h15` (`stress_identity`), `[CRS] ≥ s`, `[EBR] ≥ s` and the convex order,
`γ > 0` and `G ≥ 0`. -/
theorem G_alg {s b q d l p y z r k vR vS : ℝ} (hs : 0 < s) (hb : 0 < b) (hq1 : q < 1)
    (hd : 0 < d) (hy : 0 < y) (hz : 0 < z) (hr1 : r < 1) (hrk : r < k)
    (hk1 : k ≤ 1) (hvR0 : 0 < vR)
    (h14 : s * (d + ((k - r) * y + (vR - vS) * p)) ≤
      d * ((k * vR - r * vS) - ((k - r) * z + (vR - vS) * l)))
    (h15 : s * p ≤ d * (r - l)) (hCRS : s ≤ (1 - r) * vS - vR * (1 - k))
    (hEBR : s ≤ (1 - (1 - b) * q) - b * vR - (1 - q) * (1 - r)) :
    0 < ((1 - (1 - b) * q) - s) ^ 2 - 4 * s * b * (1 - q) ∧
      0 ≤ (((1 - (1 - b) * q) - s) ^ 2 - 4 * s * b * (1 - q)) * (d * (1 - l) - s * p) -
        4 * s * b ^ 2 * (d * z + s * y) := by
  set A := d * z + s * y with hA
  set Bs := d * l + s * p with hBs
  set K0 := d - Bs with hK0
  set c := 1 - (1 - b) * q with hc
  set Z := 1 - r with hZ
  have hZ0 : 0 < Z := by rw [hZ]; linarith
  have hA0 : 0 < A := by rw [hA]; positivity
  have hF : 0 ≤ d * (k * vR - r * vS) - (k - r) * A - (vR - vS) * Bs - s * d := by
    rw [hA, hBs]; linarith
  have h15' : Bs ≤ r * d := by rw [hBs]; linarith
  -- lower `v_S` to `(s + (1-k)v_R)/(1-r)`
  have hZF1 : 0 ≤ Z * (d * k * vR - (k - r) * A - vR * Bs - s * d) +
      (Bs - r * d) * (s + (1 - k) * vR) := by
    have k1 := mul_le_mul_of_nonneg_left hF hZ0.le
    have k2 : 0 ≤ (r * d - Bs) * (Z * vS - s - (1 - k) * vR) :=
      mul_nonneg (by linarith) (by rw [hZ]; linarith)
    linarith
  -- the expression is affine in `k`, negative at `k = r`; raise `k` to `1`
  set α1 := Z * (d * vR - A) + (r * d - Bs) * vR with hα1
  have hk : Z * (d * k * vR - (k - r) * A - vR * Bs - s * d) +
      (Bs - r * d) * (s + (1 - k) * vR) =
      (-(Z * s * d) + (Bs - r * d) * s) + α1 * (k - r) := by
    rw [hα1, hZ]; ring
  have hneg : -(Z * s * d) + (Bs - r * d) * s < 0 := by
    have : 0 < Z * s * d := by positivity
    have : (Bs - r * d) * s ≤ 0 := mul_nonpos_of_nonpos_of_nonneg (by linarith) hs.le
    linarith
  have hα1pos : 0 < α1 := by
    have : 0 < α1 * (k - r) := by linarith
    exact (pos_iff_pos_of_mul_pos this).2 (by linarith)
  have hZF11 : 0 ≤ Z * vR * K0 - Z ^ 2 * A - Z * s * d - s * (r * d - Bs) := by
    have : 0 ≤ α1 * (1 - k) := mul_nonneg hα1pos.le (by linarith)
    have e : Z * vR * K0 - Z ^ 2 * A - Z * s * d - s * (r * d - Bs) =
        (-(Z * s * d) + (Bs - r * d) * s) + α1 * (k - r) + α1 * (1 - k) := by
      rw [hα1, hK0, hZ]; ring
    rw [e]; linarith
  -- `K₀ > 0`, then raise `v_R` to `(c - s - λZ)/b`
  have hK0pos : 0 < K0 := by
    have k1 : 0 ≤ s * (r * d - Bs) := mul_nonneg hs.le (by linarith)
    have k2 : 0 < Z ^ 2 * A + Z * s * d := by positivity
    have : 0 < Z * vR * K0 := by linarith
    have hZv : 0 < Z * vR := mul_pos hZ0 hvR0
    exact (pos_iff_pos_of_mul_pos this).1 hZv
  have hbv : b * vR ≤ c - s - (1 - q) * Z := by rw [hc, hZ]; linarith
  have hPhi : 0 ≤ Z * K0 * (c - s) - (1 - q) * Z ^ 2 * K0 - b * Z ^ 2 * A - b * s * K0 := by
    have k1 := mul_le_mul_of_nonneg_left hZF11 hb.le
    have k2 := mul_le_mul_of_nonneg_left hbv (mul_pos hZ0 hK0pos).le
    have e : r * d - Bs = K0 - Z * d := by rw [hK0, hZ]; ring
    rw [e] at k1
    linarith
  -- the quadratic in `Z` has a nonnegative value, so its discriminant is `≥ 0`
  set M := (1 - q) * K0 + b * A with hM
  have hM0 : 0 < M := by rw [hM]; have : 0 ≤ (1 - q) * K0 := by nlinarith
                         have : 0 < b * A := mul_pos hb hA0; linarith
  have hdisc : 4 * M * (b * s * K0) ≤ (K0 * (c - s)) ^ 2 := by
    have e : 4 * M * (Z * K0 * (c - s) - (1 - q) * Z ^ 2 * K0 - b * Z ^ 2 * A - b * s * K0) =
        (K0 * (c - s)) ^ 2 - 4 * M * (b * s * K0) - (2 * M * Z - K0 * (c - s)) ^ 2 := by
      rw [hM]; ring
    have := mul_nonneg (by linarith : (0:ℝ) ≤ 4 * M) hPhi
    have := sq_nonneg (2 * M * Z - K0 * (c - s))
    linarith
  have hG : 4 * s * b ^ 2 * A ≤ ((c - s) ^ 2 - 4 * s * b * (1 - q)) * K0 := by
    have : K0 * (4 * s * b ^ 2 * A) ≤ K0 * (((c - s) ^ 2 - 4 * s * b * (1 - q)) * K0) := by
      rw [hM] at hdisc; linarith
    exact le_of_mul_le_mul_left this hK0pos
  have hK0e : K0 = d * (1 - l) - s * p := by rw [hK0, hBs]; ring
  refine ⟨?_, by rw [← hK0e]; linarith⟩
  have : 0 < ((c - s) ^ 2 - 4 * s * b * (1 - q)) * K0 := by
    have : 0 < 4 * s * b ^ 2 * A := by positivity
    linarith
  exact (pos_iff_pos_of_mul_pos this).2 hK0pos

/-- The algebra of `nFn_nonneg`: eliminating `p` and `y`. -/
theorem N_alg {s b q d l p y z g : ℝ} (hs : 0 < s) (hq : 0 < q) (hl : 0 < l) (hz : 0 < z)
    (hy : 0 < y) (hp : 0 < p) (hg : 0 < g) (hdd : d = z * p - l * y) (hd : s ≤ d)
    (hG : 0 ≤ g * (d * (1 - l) - s * p) - 4 * s * b ^ 2 * (d * z + s * y))
    (hECP : s ≤ q * (1 - p) - y) (hQPC : s ≤ d + y - z) :
    0 < q * (1 - l) - z ∧
      0 ≤ g * (((z + s) * (q * (1 - l) - z) - s * (q + z)) * (1 - l) -
          s * ((q * (1 - l) - z) - s * (2 - l))) -
        4 * s * b ^ 2 * (((z + s) * (q * (1 - l) - z) - s * (q + z)) * z + s * (s * (q + z))) ∧
      0 ≤ z * (q * (1 - l) - z) - s * (q + z) ∧
      0 < g * (1 - l) - 4 * s * b ^ 2 * z ∧
      0 < z * (g * (1 - l) - 4 * s * b ^ 2 * z) - s * g := by
  set κ := q * (1 - l) - z with hκ
  set Zc := g * (1 - l) - 4 * s * b ^ 2 * z with hZc
  have hd0 : 0 < d := by linarith
  have hGe : g * (d * (1 - l) - s * p) - 4 * s * b ^ 2 * (d * z + s * y) =
      d * Zc - s * (g * p + 4 * s * b ^ 2 * y) := by rw [hZc]; ring
  have hZc0 : 0 < Zc := by
    have : 0 < s * (g * p + 4 * s * b ^ 2 * y) := by positivity
    have : 0 < d * Zc := by linarith
    exact (pos_iff_pos_of_mul_pos this).1 hd0
  have hGe2 : g * (d * (1 - l) - s * p) - 4 * s * b ^ 2 * (d * z + s * y) =
      p * (z * Zc - s * g) - y * (l * Zc + 4 * s ^ 2 * b ^ 2) := by rw [hZc, hdd]; ring
  have hzZ : 0 < z * Zc - s * g := by
    have : 0 < y * (l * Zc + 4 * s ^ 2 * b ^ 2) := by positivity
    have : 0 < p * (z * Zc - s * g) := by linarith
    exact (pos_iff_pos_of_mul_pos this).1 hp
  -- `κ y ≥ s(q + z)`
  have hky : s * (q + z) ≤ κ * y := by
    have k1 := mul_le_mul_of_nonneg_left hQPC hq.le
    have k2 := mul_le_mul_of_nonneg_left hECP hz.le
    rw [hκ]; rw [hdd] at k1; nlinarith
  have hκ0 : 0 < κ := by
    have : 0 < κ * y := by have : 0 < s * (q + z) := by positivity
                           linarith
    exact (pos_iff_pos_of_mul_pos this).2 hy
  refine ⟨hκ0, ?_, ?_, hZc0, hzZ⟩
  · -- `N - κG = (P* - κp)(zZ_c - sγ) - (Y* - κy)(lZ_c + 4s²b²) ≥ 0`
    have hP : κ * y - s * (q + z) ≤ q * ((κ - s * (2 - l)) - κ * p) := by
      have := mul_le_mul_of_nonneg_left hECP hκ0.le
      rw [hκ] at this ⊢; nlinarith
    have hP0 : 0 ≤ (κ - s * (2 - l)) - κ * p := by
      have : 0 ≤ q * ((κ - s * (2 - l)) - κ * p) := by linarith
      exact (mul_nonneg_iff_of_pos_left hq).1 this
    have e : g * (((z + s) * κ - s * (q + z)) * (1 - l) - s * (κ - s * (2 - l))) -
        4 * s * b ^ 2 * (((z + s) * κ - s * (q + z)) * z + s * (s * (q + z))) -
        κ * (g * (d * (1 - l) - s * p) - 4 * s * b ^ 2 * (d * z + s * y)) =
        ((κ - s * (2 - l)) - κ * p) * (z * Zc - s * g) +
          (κ * y - s * (q + z)) * (l * Zc + 4 * s ^ 2 * b ^ 2) := by
      rw [hZc, hdd]; ring
    have k1 := mul_nonneg hP0 hzZ.le
    have k2 := mul_nonneg (by linarith : (0:ℝ) ≤ κ * y - s * (q + z))
      (by positivity : (0:ℝ) ≤ l * Zc + 4 * s ^ 2 * b ^ 2)
    have k3 := mul_nonneg hκ0.le hG
    linarith
  · -- `F₀ ≥ 0` from `d ≥ s`
    have k1 := mul_le_mul_of_nonneg_left hECP hz.le
    have k2 := mul_le_mul_of_nonneg_left hky (by positivity : (0:ℝ) ≤ z + q * l)
    have k3 := mul_le_mul_of_nonneg_left hd (by positivity : (0:ℝ) ≤ q * κ)
    rw [hdd] at k3
    have : q * (z * κ - s * (q + z)) ≥ 0 := by rw [hκ] at k2 ⊢; nlinarith
    exact (mul_nonneg_iff_of_pos_left hq).1 this

/-- The derivative of `N(b, q, z, ·)` (a quadratic in `l`). -/
def nDeriv (s b q z l : ℝ) : ℝ :=
  ((1 - (1 - b) * q - s) ^ 2 - 4 * s * b * (1 - q)) *
      (-(z + s) * q * (1 - l) - ((z + s) * (q * (1 - l) - z) - s * (q + z)) - s * (s - q)) +
    4 * s * b ^ 2 * z * (z + s) * q

/-- Monotonicity of `N` in `l`: `N` is a convex
quadratic in `l` (leading coefficient `qγ(z + s) > 0`) whose derivative at the actual `l` is
negative (`κN' = -qN - κ(Y*Z_c + γD*) - Y*(zZ_c - sγ) - qY*(lZ_c + 4s²b²)`), so lowering `l` to
`l₀` raises `N`. -/
theorem l_alg {s b q z l l₀ : ℝ} (hs : 0 < s) (hq : 0 < q) (hz : 0 < z) (hl : 0 < l)
    (hl₀ : l₀ ≤ l) (hg : 0 < gammaFn s b q) (hκ : 0 < kappaFn q z l) (hN : 0 ≤ nFn s b q z l)
    (hF0 : 0 ≤ f0Fn s q z l) (hZc : 0 < gammaFn s b q * (1 - l) - 4 * s * b ^ 2 * z)
    (hzZ : 0 < z * (gammaFn s b q * (1 - l) - 4 * s * b ^ 2 * z) - s * gammaFn s b q) :
    nFn s b q z l ≤ nFn s b q z l₀ := by
  have hD : 0 < dStar s q z l := by
    have : dStar s q z l = f0Fn s q z l + s * kappaFn q z l := by
      unfold dStar f0Fn; ring
    rw [this]; positivity
  have key1 : kappaFn q z l * nDeriv s b q z l =
      -q * nFn s b q z l - kappaFn q z l * (yStar s q z * (gammaFn s b q * (1 - l) -
        4 * s * b ^ 2 * z) + gammaFn s b q * dStar s q z l) -
      yStar s q z * (z * (gammaFn s b q * (1 - l) - 4 * s * b ^ 2 * z) - s * gammaFn s b q) -
      q * yStar s q z * (l * (gammaFn s b q * (1 - l) - 4 * s * b ^ 2 * z) + 4 * s ^ 2 * b ^ 2) := by
    unfold nDeriv nFn gammaFn cFn dStar pStar kappaFn yStar; ring
  have hY : 0 < yStar s q z := by unfold yStar; positivity
  have hder : nDeriv s b q z l ≤ 0 := by
    have k1 : 0 ≤ kappaFn q z l * (yStar s q z * (gammaFn s b q * (1 - l) -
        4 * s * b ^ 2 * z) + gammaFn s b q * dStar s q z l) := by positivity
    have k2 := mul_pos hY hzZ
    have k3 : 0 ≤ q * yStar s q z * (l * (gammaFn s b q * (1 - l) - 4 * s * b ^ 2 * z) +
        4 * s ^ 2 * b ^ 2) := by positivity
    have k4 := mul_nonneg hq.le hN
    have : kappaFn q z l * nDeriv s b q z l ≤ 0 := by rw [key1]; linarith
    by_contra hcon; push Not at hcon
    have := mul_pos hκ hcon; linarith
  have key2 : nFn s b q z l₀ = nFn s b q z l + nDeriv s b q z l * (l₀ - l) +
      q * (s + z) * gammaFn s b q * (l₀ - l) ^ 2 := by
    unfold nDeriv nFn gammaFn cFn dStar pStar kappaFn yStar; ring
  have k1 : 0 ≤ nDeriv s b q z l * (l₀ - l) := mul_nonneg_of_nonpos_of_nonpos hder (by linarith)
  have k2 : 0 ≤ q * (s + z) * gammaFn s b q * (l₀ - l) ^ 2 := by positivity
  linarith

/-- Two points on opposite sides of `DR` below the top side: `[DXY] > 0` when `X` is on the
`B`-side and `Y` on the `C`-side (the radial order around `D`). -/
theorem radial_pos {R X Y : Point} (hX : sarea ptD R X < 0) (hY : 0 < sarea ptD R Y)
    (hR2 : R.2 < 1) (hX2 : X.2 < 1) (hY2 : Y.2 < 1) : 0 < sarea ptD X Y := by
  have hid : sarea ptD X Y * (R.2 - 1) =
      sarea ptD R Y * (X.2 - 1) - sarea ptD R X * (Y.2 - 1) := by
    simp only [sarea, ptD]; ring
  have k1 := mul_neg_of_pos_of_neg hY (by linarith : X.2 - 1 < 0)
  have k2 := mul_pos_of_neg_of_neg hX (by linarith : Y.2 - 1 < 0)
  by_contra hcon; push Not at hcon
  have := mul_nonneg_of_nonpos_of_nonpos hcon (by linarith : R.2 - 1 ≤ 0)
  linarith

/-- `L(R) < 0` (`QP_line_signs`) from `qL(R) = q(1-r)d + qr·d_C - v_R(A_E + d)`. -/
theorem LR_alg {q r vR d dC AE LR s : ℝ} (hs : 0 < s) (hq0 : 0 < q) (hq1 : q ≤ 1) (hr0 : 0 < r)
    (hr1 : r < 1) (hd : d < 3 * s / 2) (hdC : dC < 3 * s / 2) (hvR : 13 / 16 ≤ vR)
    (hAd : 2 * s ≤ AE + d)
    (hid : q * LR = q * (1 - r) * d + q * r * dC - vR * (AE + d)) : LR < 0 := by
  have k1 := mul_lt_mul_of_pos_left hd (by linarith : (0:ℝ) < 1 - r)
  have k2 := mul_lt_mul_of_pos_left hdC hr0
  have k3 : (1 - r) * d + r * dC < 3 * s / 2 := by linarith
  have k4 := mul_lt_mul_of_pos_left k3 hq0
  have k5 : q * (3 * s / 2) ≤ 3 * s / 2 := by nlinarith
  have k6 := mul_le_mul hvR hAd (by linarith) (by linarith)
  have : q * LR < 0 := by linarith
  by_contra hcon; push Not at hcon
  have := mul_nonneg hq0.le hcon; linarith

/-- `L(T) < s` (`QP_line_signs`) from the barycentric weights of `T` in `BRC`. -/
theorem LT_alg {g w1 w2 w3 LT LB LR LC s : ℝ} (hs10 : 1 / 10 < s) (hw1 : s ≤ w1) (hw2 : s ≤ w2)
    (hw3 : s ≤ w3) (hsum : w1 + w2 + w3 = g) (hg1 : g ≤ 1) (hLB : LB ≤ -s) (hLR : LR ≤ -s)
    (hLC : LC < 3 * s / 2) (hid : g * LT = w1 * LB + w2 * LR + w3 * LC) : LT < s := by
  have hs : 0 < s := by linarith
  have k1 := mul_le_mul_of_nonneg_left hLB (by linarith : (0:ℝ) ≤ w1)
  have k2 := mul_le_mul_of_nonneg_left hLR (by linarith : (0:ℝ) ≤ w2)
  have k3 := mul_lt_mul_of_pos_left hLC (by linarith : (0:ℝ) < w3)
  have hg0 : 0 < g := by linarith
  have k4 : g * LT < 3 * s / 2 * g - 5 * s ^ 2 := by nlinarith
  have k5 : 3 * s / 2 * g - 5 * s ^ 2 ≤ g * s := by nlinarith
  by_contra hcon; push Not at hcon
  have := mul_le_mul_of_nonneg_left hcon hg0.le
  linarith

/-- `L_P - L_Q = a(y - z) + βℓ > 0` (`QP_line_signs`) from `[BRS] ≥ s` and the slope bound of
`DEC_caps`. -/
theorem LQP_alg {a β ell y z r b vR q s : ℝ} (ha : 0 < a) (hell : 0 < ell) (hs : 1 / 16 < s)
    (hq1 : q ≤ 1) (hslope : |z - y| < q * ell / 4)
    (hU : s ≤ (r - b) * β - (1 - vR) * a) (hvR1 : vR ≤ 1) (hab : a ≤ 1 - r) (hrb : 0 < r - b)
    (hb : 0 ≤ b) : a * (z - y) < β * ell := by
  have k1 : s ≤ (r - b) * β := by nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - vR) ha.le]
  have hβ : 0 < β := by
    by_contra hc; push Not at hc
    have := mul_nonpos_of_nonneg_of_nonpos hrb.le hc; linarith
  have k2 : (r - b) * (1 - r) ≤ 1 / 4 := by nlinarith [sq_nonneg (r - b - (1 - r))]
  have k3 : s * a ≤ β / 4 := by
    have m1 := mul_le_mul_of_nonneg_right k1 (by linarith : (0:ℝ) ≤ 1 - r)
    have m2 := mul_le_mul_of_nonneg_left k2 hβ.le
    have m3 := mul_le_mul_of_nonneg_left hab (by linarith : (0:ℝ) ≤ s)
    nlinarith
  have k4 : z - y < ell / 4 := by
    have := le_abs_self (z - y)
    have : q * ell / 4 ≤ ell / 4 := by nlinarith
    linarith
  have k5 := mul_lt_mul_of_pos_left k4 ha
  have k7 : a / 4 < β := by
    have := mul_lt_mul_of_pos_right hs ha
    linarith
  have k6 : a * (ell / 4) < β * ell := by
    have := mul_lt_mul_of_pos_right k7 hell
    linarith
  linarith

/-- The final step of `hPoly_nonneg`: a single rational combination handles both lower-bound
branches of `l`. -/
theorem H_alg {N N₀ F₀ F₀₀ S₀ Δ q z : ℝ} (hq0 : 67 / 80 ≤ q) (hq1 : q < 1) (hz : 14 / 73 ≤ z)
    (hN : 0 ≤ N) (hF0 : 0 ≤ F₀) (hNl : N ≤ N₀) (hF : F₀ = F₀₀ - q * z * Δ) (hΔ0 : 0 ≤ Δ)
    (hΔ1 : -(q * S₀) ≤ (1 - q) * Δ) : 0 ≤ N₀ + 9 / 512 * F₀₀ + 7 / 2048 * S₀ := by
  have hw : 0 < 1 - q := by linarith
  have hqz : 0 ≤ 9 / 512 * q * z := by positivity
  have h28 : 7 / 2048 * (1 - q) ≤ 9 / 512 * q ^ 2 * z := by
    have hq2 : (67 / 80) ^ 2 ≤ q ^ 2 := by nlinarith
    have := mul_le_mul hq2 hz (by norm_num) (by positivity)
    nlinarith
  have k1 := mul_le_mul_of_nonneg_left hNl hw.le
  have k2 := mul_nonneg hw.le hN
  have k3 := mul_nonneg hw.le hF0
  have k4 := mul_le_mul_of_nonneg_left hΔ1 hqz
  have k5 := mul_nonneg (mul_nonneg hqz hw.le) hΔ0
  have key : 0 ≤ (1 - q) * (N₀ + 9 / 512 * F₀₀ + 7 / 2048 * S₀) := by
    rw [hF] at k3
    rcases le_total 0 S₀ with hS | hS
    · have := mul_nonneg hw.le hS
      nlinarith
    · have := mul_nonneg_of_nonpos_of_nonpos hS (by linarith : 7 / 2048 * (1 - q) - 9 / 512 * q ^ 2 * z ≤ 0)
      nlinarith
  exact (mul_nonneg_iff_of_pos_left hw).1 key

/-- A central point has `0 < x` and `y < 1`. -/
theorem central_pos {b : ℝ} {X : Point} (hb : 0 < b) (hX : InTriangle X ptD (ptB b) ptC) :
    0 < X.1 ∧ X.2 < 1 := by
  obtain ⟨x1, -, x3⟩ := hX
  simp only [sarea, ptD, ptB, ptC] at x1 x3
  have h2 : X.2 < 1 := by linarith
  have := mul_nonneg hb.le (by linarith : (0:ℝ) ≤ 1 - X.2)
  exact ⟨by linarith, h2⟩

end Helpers

open TypeII UnbalancedCellI UnbalancedRadialSplit

/-! ### Geometric and parameter bounds -/

/-- `PQ` puts `D, C` on
one side and `E, B` on the other; `q > 67/80`; `v_R = 1 - R_y ≥ Ks₀ > 13/16`; the convex order
`b < r < k ≤ 1`, `0 < v_S < v_R ≤ 1`; and, after interchanging `P, Q` if needed, `Q` is below
`DR`, `P, T` are above `DR` and `P, T ∈ int DCR` (counterclockwise `D, R, C`). -/
theorem upper_cellII_setup (h : UpperSetting l b P Q R S T) :
    LineSeparates P Q ptD ptC (ptE l) (ptB b) ∧ 67 / 80 < 1 - l ∧
      Kc * (7 / 64) ≤ 1 - R.2 ∧ 13 / 16 < Kc * (7 / 64) ∧
      (b < R.1 ∧ R.1 < S.1 ∧ S.1 ≤ 1 ∧ 0 < 1 - S.2 ∧ 1 - S.2 < 1 - R.2 ∧ 1 - R.2 ≤ 1) ∧
      ((sarea ptD R Q < 0 ∧ 0 < sarea ptD R P ∧ 0 < sarea ptD R T ∧
          InTriangle P ptD R ptC ∧ InTriangle T ptD R ptC) ∨
        (sarea ptD R P < 0 ∧ 0 < sarea ptD R Q ∧ 0 < sarea ptD R T ∧
          InTriangle Q ptD R ptC ∧ InTriangle T ptD R ptC)) := by
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) h.min
  have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
  have hb := h.row.b_pos
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb1 : b < 1 := by linarith [h.row.b_le]
  obtain ⟨-, hsep⟩ := lineSeparates_DC_EB h.row hmin7 h.P_above h.Q_above h.quad
  obtain ⟨-, -, -, hq67, -, -⟩ := q_gt_67_80 h.row hmin7 h.P_above h.Q_above
  have hrad := UnbalancedRadialSplit.radialConclusion_of_cellII h.row h.min h.quad h.cell h.P_above h.Q_above hsep
  obtain ⟨hur, hbr, hrk, hk1, hu, hut, ht1⟩ := quad_order hb hb1 h.row.R_mem h.row.S_mem h.quad.1
  have hu1 : R.2 < 1 := by linarith
  have hTC : 0 < sarea ptD R T → InTriangle T ptD R ptC := fun hDT => ⟨hDT, h.cell.1.2.1, by
    have h1 := h.row.T_right
    have h2 := h.row.T_mem.2.1
    simp only [sarea, ptB, ptC] at h1
    simp only [sarea, ptC, ptD]
    nlinarith⟩
  have hord : b < R.1 ∧ R.1 < S.1 ∧ S.1 ≤ 1 ∧ 0 < 1 - S.2 ∧ 1 - S.2 < 1 - R.2 ∧ 1 - R.2 ≤ 1 :=
    ⟨hbr, hrk, hk1, by linarith, by linarith, by linarith⟩
  rcases hrad with ⟨a1, a2, a3, -, -, -, -, -, aK⟩ | ⟨a1, a2, a3, -, -, -, -, -, aK⟩
  · exact ⟨hsep, hq67, aK, Kc_s0_gt, hord,
      Or.inl ⟨a2, a1, a3, central_DRC h.row.P_central a1 h.row.R_right hu1, hTC a3⟩⟩
  · exact ⟨hsep, hq67, aK, Kc_s0_gt, hord,
      Or.inr ⟨a2, a1, a3, central_DRC h.row.Q_central a1 h.row.R_right hu1, hTC a3⟩⟩

/-- `q < 119/128 = 17s₀/2 < 17s/2`. -/
theorem q_lt_119_128 (h : UpperSetting l b P Q R S T) :
    1 - l < 119 / 128 ∧ (119 / 128 : ℝ) = 17 * (7 / 64) / 2 ∧
      (17 * (7 / 64) / 2 : ℝ) < 17 * (8 / 73) / 2 := by
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) h.min
  have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
  have hb := h.row.b_pos
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hDEB := DEB_ge h.row hmin7
  have hgen := (genericEar_nonpos h.row hmin7 h.quad).2
  refine ⟨?_, by norm_num, by norm_num⟩
  by_contra hcon
  push Not at hcon
  have hC := hgen (1 - 119 / 128 * (1 - b)) (by nlinarith)
  have hsb : 7 / 64 ≤ b := by nlinarith [mul_pos hb hl]
  have h0 : 0 ≤ b - 7 / 64 := by linarith
  have h1 : 0 ≤ 1 / 2 - b := by linarith [h.row.b_le]
  have : 0 < genericEar (7 / 64) b (1 - 119 / 128 * (1 - b)) := by
    unfold genericEar
    nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 4), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 4) (pow_nonneg h1 0)]
  linarith

/-- Let `X, Y` lie
strictly inside the counterclockwise triangle `VAB` of doubled area `H < 17s/2`, every doubled
triangle on the five points be at least `s > 0`, and `XY` isolate `V`; put `A = |[VXY]|`,
`C₁ = |[AXY]|`, `C₂ = |[BXY]|`. Then `C₁, C₂ < 3s/2`, `A < 4s`, and both opposite subtriangles
`[ABX], [ABY]` are at least `s + 3s²/A > 7s/4`. -/
theorem line_caps {s : ℝ} {V A B X Y : Point} (hs : 0 < s) (hX : InTriangle X V A B)
    (hY : InTriangle Y V A B) (hmin : s / 2 ≤ minTriangleArea ![V, A, B, X, Y])
    (hiso : LineIsolates X Y V A B) (hH : sarea V A B < 17 * s / 2) :
    let a := |sarea X Y V|
    |sarea X Y A| < 3 * s / 2 ∧ |sarea X Y B| < 3 * s / 2 ∧ a < 4 * s ∧
      s + 3 * s ^ 2 / a ≤ sarea A B X ∧ s + 3 * s ^ 2 / a ≤ sarea A B Y ∧
      7 * s / 4 < s + 3 * s ^ 2 / a := by
  intro a
  obtain ⟨k1, k2, k3, k4⟩ := UnbalancedCellI.area_ge_of_lineIsolates hs hX hY hmin hiso
  have hpos : 0 < minTriangleArea ![V, A, B, X, Y] := by linarith
  have nV : sarea X Y V ≠ 0 := sarea_ne_zero_of_min_pos hpos 3 4 0
  have ha : 0 < a := abs_pos.2 nV
  have hc : s ≤ |sarea X Y A| := le_abs_sarea_of_le_min hmin 3 4 1
  have hd : s ≤ |sarea X Y B| := le_abs_sarea_of_le_min hmin 3 4 2
  set c := |sarea X Y A| with hc_def
  set d := |sarea X Y B| with hd_def
  have hH1 : (a + c) * (a + d) + s * (a + c) + s * (a + d) ≤ a * sarea V A B := by
    have e : (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) =
        ((a + c) * (a + d) + s * (a + c) + s * (a + d)) / a := by field_simp; ring
    rw [e, div_le_iff₀ ha] at k1; linarith
  have hH17 : a * sarea V A B < a * (17 * s / 2) := mul_lt_mul_of_pos_left hH ha
  have hc32 : c < 3 * s / 2 := by
    by_contra hcon; push Not at hcon
    have m1 := mul_le_mul (by linarith : a + 3 * s / 2 ≤ a + c) (by linarith : a + s ≤ a + d)
      (by linarith) (by linarith)
    nlinarith [sq_nonneg (a - 2 * s)]
  have hd32 : d < 3 * s / 2 := by
    by_contra hcon; push Not at hcon
    have m1 := mul_le_mul (by linarith : a + s ≤ a + c) (by linarith : a + 3 * s / 2 ≤ a + d)
      (by linarith) (by linarith)
    nlinarith [sq_nonneg (a - 2 * s)]
  have ha4 : a < 4 * s := by
    by_contra hcon; push Not at hcon
    have m1 := mul_le_mul (by linarith : a + s ≤ a + c) (by linarith : a + s ≤ a + d)
      (by linarith) (by linarith)
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ a - 4 * s) (by linarith : (0:ℝ) ≤ a - s / 2)]
  have hlow : a + 4 * s + 3 * s ^ 2 / a ≤ sarea V A B := k2.trans k1
  have hkey : s + 3 * s ^ 2 / a ≤ sarea V A B * s / (a + s) := by
    rw [le_div_iff₀ (by linarith)]
    have e : (s + 3 * s ^ 2 / a) * (a + s) = (a + 4 * s + 3 * s ^ 2 / a) * s := by
      field_simp; ring
    rw [e]
    exact mul_le_mul_of_nonneg_right hlow hs.le
  refine ⟨hc32, hd32, ha4, hkey.trans k3, hkey.trans k4, ?_⟩
  have : 3 * s / 4 < 3 * s ^ 2 / a := by
    rw [lt_div_iff₀ ha]; nlinarith
  linarith

/-- `line_caps` applied to the actual
triangle `DEC` (doubled area `q < 17s/2`, `E` isolated by `PQ`), with `s = 8/73`:
`s ≤ d, d_C < 3s/2`, `s ≤ A_E < 4s`, `y, z > 7s/4`, `qℓ = A_E + d ≥ 2s`, `ℓ > 0`, and the slope
of `PQ` satisfies `|(z - y)/ℓ| < q/4 < 1/4`. -/
theorem DEC_caps (h : UpperLabelled l b P Q R S T) :
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
      |(z - y) / ell| < q / 4 ∧ q / 4 < 1 / 4 := by
  dsimp only
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) h.min
  have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
  have hb := h.row.b_pos
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb1 : b < 1 := by linarith [h.row.b_le]
  obtain ⟨hsep, hq67, hK, hK13, ⟨hbr, hrk, hk1, hvS, hvSR, hvR1⟩, -⟩ :=
    upper_cellII_setup h.toUpperSetting
  obtain ⟨hq119, -, h17⟩ := q_lt_119_128 h.toUpperSetting
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by linarith
  have hP2 : P.2 < 1 := by
    have := h.row.P_central.2.2; simp only [sarea, ptC, ptD] at this; linarith
  have hQ2 : Q.2 < 1 := by
    have := h.row.Q_central.2.2; simp only [sarea, ptC, ptD] at this; linarith
  have hR2 : R.2 < 1 := by linarith
  have hdpos : 0 < sarea ptD Q P := radial_pos h.Q_below_DR h.P_above_DR hR2 hQ2 hP2
  have hσD : sarea P Q ptD < 0 := by
    rw [show sarea P Q ptD = -sarea ptD Q P by unfold sarea; ring]; linarith
  obtain ⟨hσC, hσE, hσB⟩ : sarea P Q ptC < 0 ∧ 0 < sarea P Q (ptE l) ∧ 0 < sarea P Q (ptB b) := by
    rcases hsep with ⟨a1, -, -, -⟩ | ⟨-, a2, a3, a4⟩
    · exact absurd a1 (not_lt.2 hσD.le)
    · exact ⟨a2, a3, a4⟩
  have hPE := (central_inTriangle_iff hb hb1 hl hl1 h.row.P_central).1.2 h.P_above
  have hQE := (central_inTriangle_iff hb hb1 hl hl1 h.row.Q_central).1.2 h.Q_above
  have rot : ∀ {X A B C : Point}, InTriangle X A B C → InTriangle X B C A :=
    fun ⟨a1, a2, a3⟩ => ⟨a2, a3, a1⟩
  have hm5 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptE l, ptC, ptD, P, Q] :=
    hm8.trans (min_le_min_reindex (by norm_num) _ _ ![2, 1, 0, 4, 5] (by decide)
      (by funext x; fin_cases x <;> rfl))
  have hH : sarea (ptE l) ptC ptD < 17 * (8 / 73) / 2 := by
    rw [show sarea (ptE l) ptC ptD = 1 - l by simp only [sarea, ptE, ptC, ptD]; ring]; linarith
  obtain ⟨c1, c2, ca, o1, o2, o3⟩ := line_caps (s := 8 / 73) (by norm_num) (rot hPE)
    (rot hQE) hm5 (Or.inl ⟨hσE, hσC, hσD⟩) hH
  have ed : sarea ptD Q P = |sarea P Q ptD| := by rw [abs_of_neg hσD]; unfold sarea; ring
  have edC : sarea Q P ptC = |sarea P Q ptC| := by rw [abs_of_neg hσC]; unfold sarea; ring
  have eAE : sarea (ptE l) P Q = |sarea P Q (ptE l)| := by rw [abs_of_pos hσE]; unfold sarea; ring
  have ey : 1 - P.2 = sarea ptC ptD P := by simp only [sarea, ptC, ptD]; ring
  have ez : 1 - Q.2 = sarea ptC ptD Q := by simp only [sarea, ptC, ptD]; ring
  have a1 : 8 / 73 ≤ |sarea P Q ptD| := le_abs_sarea_of_le_min hm8 4 5 0
  have a2 : 8 / 73 ≤ |sarea P Q ptC| := le_abs_sarea_of_le_min hm8 4 5 1
  have a3 : 8 / 73 ≤ |sarea P Q (ptE l)| := le_abs_sarea_of_le_min hm8 4 5 2
  rw [← ed] at c2 a1; rw [← edC] at c1 a2; rw [← eAE] at ca a3 o1 o2 o3
  rw [← ey] at o1; rw [← ez] at o2
  have hql : (1 - l) * (P.1 - Q.1) = sarea (ptE l) P Q + sarea ptD Q P := by
    simp only [sarea, ptE, ptD]; ring
  have hell : 0 < P.1 - Q.1 := by
    have : 0 < (1 - l) * (P.1 - Q.1) := by linarith
    exact (pos_iff_pos_of_mul_pos this).1 (by linarith)
  have hyz : (1 - P.2) - (1 - Q.2) = sarea Q P ptC - sarea ptD Q P := by
    simp only [sarea, ptD, ptC]; ring
  refine ⟨a1, c2, a2, c1, a3, ca, by linarith, by linarith, by linarith, hell, ?_, by linarith⟩
  rw [abs_div, abs_of_pos hell, div_lt_iff₀ hell]
  have : |(1 - Q.2) - (1 - P.2)| < 8 / 73 / 2 := by rw [abs_lt]; constructor <;> linarith
  linarith

/-- With
`L(Z) = [QPZ]` and `s = 8/73`: `L(R) ≤ -s` and `L(T) ≤ -s`; the ordered areas `[DQT], [QTP],
[RST]` are at least `s`; and `L_Q = az + βl`, `L_P = ay + βp` satisfy `0 < L_Q < L_P`. -/
theorem QP_line_signs (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let y := 1 - P.2
    let z := 1 - Q.2
    let a := S.1 - R.1
    let β := (1 - R.2) - (1 - S.2)
    let LQ := a * z + β * Q.1
    let LP := a * y + β * P.1
    sarea Q P R ≤ -s ∧ sarea Q P T ≤ -s ∧ s ≤ sarea ptD Q T ∧ s ≤ sarea Q T P ∧
      s ≤ sarea R S T ∧ 0 < LQ ∧ LQ < LP := by
  have hDEC := DEC_caps h
  dsimp only at hDEC ⊢
  obtain ⟨d1, d2, dC1, dC2, AE1, AE2, hy, hz, hqℓ, hell, hslope, -⟩ := hDEC
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) h.min
  have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
  have hb := h.row.b_pos
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb1 : b < 1 := by linarith [h.row.b_le]
  obtain ⟨hsep, hq67, hK, hK13, ⟨hbr, hrk, hk1, hvS, hvSR, hvR1⟩, -⟩ :=
    upper_cellII_setup h.toUpperSetting
  obtain ⟨hq119, -, h17⟩ := q_lt_119_128 h.toUpperSetting
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by linarith
  have hP2 : P.2 < 1 := by
    have := h.row.P_central.2.2; simp only [sarea, ptC, ptD] at this; linarith
  have hQ2 : Q.2 < 1 := by
    have := h.row.Q_central.2.2; simp only [sarea, ptC, ptD] at this; linarith
  have hR2 : R.2 < 1 := by linarith
  have hdpos : 0 < sarea ptD Q P := radial_pos h.Q_below_DR h.P_above_DR hR2 hQ2 hP2
  have hσD : sarea P Q ptD < 0 := by
    rw [show sarea P Q ptD = -sarea ptD Q P by unfold sarea; ring]; linarith
  obtain ⟨hσC, hσE, hσB⟩ : sarea P Q ptC < 0 ∧ 0 < sarea P Q (ptE l) ∧ 0 < sarea P Q (ptB b) := by
    rcases hsep with ⟨a1, -, -, -⟩ | ⟨-, a2, a3, a4⟩
    · exact absurd a1 (not_lt.2 hσD.le)
    · exact ⟨a2, a3, a4⟩
  have hq0 : 0 < 1 - l := by linarith
  have hr0 : 0 < R.1 := by linarith
  have hql : (1 - l) * (P.1 - Q.1) = sarea (ptE l) P Q + sarea ptD Q P := by
    simp only [sarea, ptE, ptD]; ring
  have eLR : (1 - l) * sarea Q P R = (1 - l) * (1 - R.1) * sarea ptD Q P +
      (1 - l) * R.1 * sarea Q P ptC - (1 - R.2) * (sarea (ptE l) P Q + sarea ptD Q P) := by
    simp only [sarea, ptD, ptC, ptE]; ring
  have hLR0 := LR_alg (s := 8 / 73) (by norm_num) hq0 (by linarith) hr0 (by linarith) d2 dC2
    (by linarith) (by linarith) eLR
  have aR : 8 / 73 ≤ |sarea Q P R| := le_abs_sarea_of_le_min hm8 5 4 6
  rw [abs_of_neg hLR0] at aR
  have hLR : sarea Q P R ≤ -(8 / 73) := by linarith
  have aB : 8 / 73 ≤ |sarea P Q (ptB b)| := le_abs_sarea_of_le_min hm8 4 5 3
  rw [abs_of_pos hσB] at aB
  have hLB : sarea Q P (ptB b) ≤ -(8 / 73) := by
    rw [show sarea Q P (ptB b) = -sarea P Q (ptB b) by unfold sarea; ring]; linarith
  have hidT := sarea_bary (ptB b) R ptC T Q P
  obtain ⟨t1, t2, t3⟩ := h.cell.1
  have e1 : 8 / 73 ≤ |sarea R ptC T| := le_abs_sarea_of_le_min hm8 6 1 8
  have e2 : 8 / 73 ≤ |sarea ptC (ptB b) T| := le_abs_sarea_of_le_min hm8 1 3 8
  have e3 : 8 / 73 ≤ |sarea (ptB b) R T| := le_abs_sarea_of_le_min hm8 3 6 8
  rw [abs_of_pos t2] at e1; rw [abs_of_pos t3] at e2; rw [abs_of_pos t1] at e3
  have hsum := sarea_add_sarea_add_sarea (ptB b) R ptC T
  have hg1 : sarea (ptB b) R ptC ≤ 1 := by
    have h0 := h.row.R_mem.2.2.1
    have h1 := h.row.R_mem.2.1
    have := mul_nonneg h0 (by linarith : (0:ℝ) ≤ 1 - b)
    simp only [sarea, ptB, ptC]; linarith
  have hLT0 := LT_alg (s := 8 / 73) (by norm_num) e1 e2 e3 (by linarith) hg1 hLB hLR dC2 hidT
  have aT : 8 / 73 ≤ |sarea Q P T| := le_abs_sarea_of_le_min hm8 5 4 8
  have hLT : sarea Q P T ≤ -(8 / 73) := by
    rcases abs_cases (sarea Q P T) with ⟨ha, -⟩ | ⟨ha, -⟩
    · rw [ha] at aT; linarith
    · rw [ha] at aT; linarith
  have hT2 : T.2 < 1 := by
    have h1 := h.row.T_right; have h2 := h.row.T_mem.2.1
    simp only [sarea, ptB, ptC] at h1
    by_contra hc; push Not at hc
    have := mul_le_mul_of_nonneg_left hc (by linarith : (0:ℝ) ≤ 1 - b)
    linarith
  have hDQT : 0 < sarea ptD Q T := radial_pos h.Q_below_DR h.T_above_DR hR2 hQ2 hT2
  have aDQT : 8 / 73 ≤ |sarea ptD Q T| := le_abs_sarea_of_le_min hm8 0 5 8
  rw [abs_of_pos hDQT] at aDQT
  have aRST : 8 / 73 ≤ |sarea R S T| := le_abs_sarea_of_le_min hm8 6 7 8
  rw [abs_of_pos h.quad.2.2.1] at aRST
  have hQ1 : 0 < Q.1 := (central_pos h.row.b_pos h.row.Q_central).1
  have hU : 8 / 73 ≤ |sarea (ptB b) R S| := le_abs_sarea_of_le_min hm8 3 6 7
  rw [abs_of_pos h.quad.1.1] at hU
  have eU : sarea (ptB b) R S = (R.1 - b) * ((1 - R.2) - (1 - S.2)) - (1 - (1 - R.2)) * (S.1 - R.1) := by
    simp only [sarea, ptB]; ring
  rw [eU] at hU
  have hslope' : |(1 - Q.2) - (1 - P.2)| < (1 - l) * (P.1 - Q.1) / 4 := by
    rw [abs_div, abs_of_pos hell, div_lt_iff₀ hell] at hslope; linarith
  have hLQP := LQP_alg (by linarith : (0:ℝ) < S.1 - R.1) hell (by norm_num : (1:ℝ) / 16 < 8 / 73)
    (by linarith) hslope' hU (by linarith) (by linarith) (by linarith) hb.le
  refine ⟨hLR, hLT, aDQT, by
    rw [show sarea Q T P = -sarea Q P T by unfold sarea; ring]; linarith, aRST, ?_, by linarith⟩
  have := mul_pos (by linarith : (0:ℝ) < S.1 - R.1) (by linarith : (0:ℝ) < 1 - Q.2)
  have := mul_pos (by linarith : (0:ℝ) < (1 - R.2) - (1 - S.2)) hQ1
  linarith

/-- The exact identity
`(L_P - L_Q)[DQT] + L_Q[QTP] + d[RST] = d(J_D - L_Q)`, the consequence
`d(J_D - L_Q) ≥ s(d + L_P)`, and `d(r - l) = ℓ[RDQ] + l[RPQ] ≥ sp`, with `s = 8/73`. -/
theorem stress_identity (h : UpperLabelled l b P Q R S T) :
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
      s * P.1 ≤ d * (R.1 - Q.1) := by
  have hsg := QP_line_signs h
  have hDEC := DEC_caps h
  dsimp only at hsg hDEC ⊢
  obtain ⟨hLR, hLT, hDQT, hQTP, hRST, hLQ, hLQP⟩ := hsg
  obtain ⟨d1, -, -, -, -, -, -, -, -, hell, -, -⟩ := hDEC
  have e13 : ((S.1 - R.1) * (1 - P.2) + ((1 - R.2) - (1 - S.2)) * P.1 -
      ((S.1 - R.1) * (1 - Q.2) + ((1 - R.2) - (1 - S.2)) * Q.1)) * sarea ptD Q T +
      ((S.1 - R.1) * (1 - Q.2) + ((1 - R.2) - (1 - S.2)) * Q.1) * sarea Q T P +
      sarea ptD Q P * sarea R S T = sarea ptD Q P * (sarea ptD R S -
        ((S.1 - R.1) * (1 - Q.2) + ((1 - R.2) - (1 - S.2)) * Q.1)) := by
    simp only [sarea, ptD]; ring
  have e15 : sarea ptD Q P * (R.1 - Q.1) = (P.1 - Q.1) * sarea R ptD Q + Q.1 * sarea R P Q := by
    simp only [sarea, ptD]; ring
  refine ⟨e13, ?_, e15, ?_⟩
  · have k1 := mul_le_mul_of_nonneg_left hDQT (by linarith : (0:ℝ) ≤
      (S.1 - R.1) * (1 - P.2) + ((1 - R.2) - (1 - S.2)) * P.1 -
        ((S.1 - R.1) * (1 - Q.2) + ((1 - R.2) - (1 - S.2)) * Q.1))
    have k2 := mul_le_mul_of_nonneg_left hQTP hLQ.le
    have k3 := mul_le_mul_of_nonneg_left hRST (by linarith : (0:ℝ) ≤ sarea ptD Q P)
    linarith
  · have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
      have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
    have hRDQ : 0 < sarea R ptD Q := by
      rw [show sarea R ptD Q = -sarea ptD R Q by unfold sarea; ring]; linarith [h.Q_below_DR]
    have aR : 8 / 73 ≤ |sarea R ptD Q| := le_abs_sarea_of_le_min hm8 6 0 5
    rw [abs_of_pos hRDQ] at aR
    have hRPQ : 8 / 73 ≤ sarea R P Q := by
      rw [show sarea R P Q = -sarea Q P R by unfold sarea; ring]; linarith
    have hQ1 : 0 < Q.1 := (central_pos h.row.b_pos h.row.Q_central).1
    have k1 := mul_le_mul_of_nonneg_left aR hell.le
    have k2 := mul_le_mul_of_nonneg_left hRPQ hQ1.le
    rw [e15]; linarith

/-! ### The monotone eliminations -/

/-- Eliminating `S`, `R`
and `T`: `γ = (c - s)² - 4sb(1 - q) > 0` and
`G = γ{d(1 - l) - sp} - 4sb²(dz + sy) ≥ 0` (`s = 8/73`). -/
theorem G_nonneg (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let y := 1 - P.2
    let z := 1 - Q.2
    let d := sarea ptD Q P
    0 < gammaFn s b q ∧
      0 ≤ gammaFn s b q * (d * (1 - Q.1) - s * P.1) - 4 * s * b ^ 2 * (d * z + s * y) := by
  have hst := stress_identity h
  have hDEC := DEC_caps h
  dsimp only at hst hDEC ⊢
  obtain ⟨-, h14, -, h15⟩ := hst
  obtain ⟨d1, -, -, -, -, -, hy, hz, -, hell, -, -⟩ := hDEC
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) h.min
  have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
  have hb := h.row.b_pos
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb1 : b < 1 := by linarith [h.row.b_le]
  obtain ⟨-, hq67, hK, hK13, ⟨hbr, hrk, hk1, hvS, hvSR, hvR1⟩, -⟩ := upper_cellII_setup h.toUpperSetting
  have hJD : sarea ptD R S = S.1 * (1 - R.2) - R.1 * (1 - S.2) := by
    simp only [sarea, ptD]; ring
  rw [hJD] at h14
  have aC : 8 / 73 ≤ |sarea R S ptC| := le_abs_sarea_of_le_min hm8 6 7 1
  rw [abs_of_pos h.quad.1.2.1] at aC
  have eC : sarea R S ptC = (1 - R.1) * (1 - S.2) - (1 - R.2) * (1 - S.1) := by
    simp only [sarea, ptC]; ring
  rw [eC] at aC
  have aE : 8 / 73 ≤ |sarea (ptE l) (ptB b) R| := le_abs_sarea_of_le_min hm8 2 3 6
  have eE : sarea (ptE l) (ptB b) R =
      (1 - (1 - b) * (1 - l)) - b * (1 - R.2) - (1 - (1 - l)) * (1 - R.1) := by
    simp only [sarea, ptE, ptB]; ring
  have hEpos : 0 < sarea (ptE l) (ptB b) R := by
    have := h.row.R_mem.2.2.1
    simp only [sarea, ptE, ptB]; nlinarith [mul_pos hl (by linarith : (0:ℝ) < R.1 - b)]
  rw [abs_of_pos hEpos, eE] at aE
  have hP1 : 0 < P.1 := (central_pos h.row.b_pos h.row.P_central).1
  have hg := G_alg (s := 8 / 73) (b := b) (q := 1 - l) (d := sarea ptD Q P) (l := Q.1) (p := P.1)
    (y := 1 - P.2) (z := 1 - Q.2) (r := R.1) (k := S.1) (vR := 1 - R.2) (vS := 1 - S.2)
    (by norm_num) hb (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)
    hrk hk1 (by linarith) h14 h15 aC aE
  simp only [gammaFn, cFn]
  exact hg

/-- Eliminating `p` and `y`
(`[ECP], [QPC] ≥ s`): `κ = q(1 - l) - z > 0`, `N(b, q, z, l) ≥ 0` and
`F₀(b, q, z, l) = zκ - s(q + z) ≥ 0` (`s = 8/73`); strengthened by the signs `Z_c = γ(1-l) -
4sb²z > 0` and `zZ_c - sγ > 0`, which `nFn_le_nFn_lZero` uses. -/
theorem nFn_nonneg (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let z := 1 - Q.2
    0 < kappaFn q z Q.1 ∧ 0 ≤ nFn s b q z Q.1 ∧ 0 ≤ f0Fn s q z Q.1 ∧
      0 < gammaFn s b q * (1 - Q.1) - 4 * s * b ^ 2 * z ∧
      0 < z * (gammaFn s b q * (1 - Q.1) - 4 * s * b ^ 2 * z) - s * gammaFn s b q := by
  have hG2 := G_nonneg h
  have hDEC := DEC_caps h
  dsimp only at hG2 hDEC ⊢
  obtain ⟨hg, hG⟩ := hG2
  obtain ⟨d1, -, dC1, -, -, -, hy, hz, -, -, -, -⟩ := hDEC
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) h.min
  have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
  have hb := h.row.b_pos
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hECP : 8 / 73 ≤ |sarea (ptE l) ptC P| := le_abs_sarea_of_le_min hm8 2 1 4
  rw [abs_of_pos h.P_above] at hECP
  have eECP : sarea (ptE l) ptC P = (1 - l) * (1 - P.1) - (1 - P.2) := by
    simp only [sarea, ptE, ptC]; ring
  rw [eECP] at hECP
  have hdd : sarea ptD Q P = (1 - Q.2) * P.1 - Q.1 * (1 - P.2) := by simp only [sarea, ptD]; ring
  have hQPC : sarea Q P ptC = sarea ptD Q P + (1 - P.2) - (1 - Q.2) := by
    simp only [sarea, ptD, ptC]; ring
  have hP1 : 0 < P.1 := (central_pos h.row.b_pos h.row.P_central).1
  have hQ1 : 0 < Q.1 := (central_pos h.row.b_pos h.row.Q_central).1
  simp only [gammaFn, cFn] at hg hG
  obtain ⟨k1, k2, k3, k4, k5⟩ := N_alg (s := 8 / 73) (b := b) (q := 1 - l) (l := Q.1) (p := P.1)
    (y := 1 - P.2) (z := 1 - Q.2) (by norm_num) (by linarith) hQ1 (by linarith) (by linarith)
    hP1 hg hdd d1 hG hECP (by rw [← hQPC]; exact dC1)
  refine ⟨k1, ?_, k3, ?_, ?_⟩
  · simp only [nFn, gammaFn, cFn, dStar, pStar, kappaFn, yStar]; exact k2
  · simp only [gammaFn, cFn]; exact k4
  · simp only [gammaFn, cFn]; exact k5

/-- From `[DBQ], [EBQ] ≥ s`:
`l ≥ l₀ = s + bz` and `l ≥ (s - b(q - z))/(1 - q)`; with `Δ = l - l₀`,
`Δ ≥ max(0, -qS₀/(1 - q))`, `N(b, q, z, l) ≤ N₀ = N(b, q, z, l₀)` and `F₀ = F₀₀ - qzΔ`
(`s = 8/73`). The monotonicity `N(l) ≤ N(l₀)` is `l_alg`: `N` is a convex quadratic
in `l` whose derivative at the actual `l` is negative. -/
theorem nFn_le_nFn_lZero (h : UpperLabelled l b P Q R S T) :
    let s : ℝ := 8 / 73
    let q := 1 - l
    let z := 1 - Q.2
    lZero s b z ≤ Q.1 ∧ (s - b * (q - z)) / (1 - q) ≤ Q.1 ∧
      max 0 (-(q * sZero s b z) / (1 - q)) ≤ Q.1 - lZero s b z ∧
      nFn s b q z Q.1 ≤ nFn s b q z (lZero s b z) ∧
      f0Fn s q z Q.1 = fZeroZero s b q z - q * z * (Q.1 - lZero s b z) := by
  have hN3 := nFn_nonneg h
  have hG2 := G_nonneg h
  dsimp only at hN3 hG2 ⊢
  obtain ⟨hκ, hN, hF0, hZc, hzZ⟩ := hN3
  obtain ⟨hg, -⟩ := hG2
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) h.min
  have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
  have hb := h.row.b_pos
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb1 : b < 1 := by linarith [h.row.b_le]
  have hDBQ : 8 / 73 ≤ |sarea ptD (ptB b) Q| := le_abs_sarea_of_le_min hm8 0 3 5
  rw [abs_of_pos h.row.Q_central.1] at hDBQ
  have eDBQ : sarea ptD (ptB b) Q = Q.1 - b * (1 - Q.2) := by simp only [sarea, ptD, ptB]; ring
  rw [eDBQ] at hDBQ
  have hQE := (central_inTriangle_iff hb hb1 hl hl1 h.row.Q_central).1.2 h.Q_above
  have hEBQ : 8 / 73 ≤ |sarea (ptE l) (ptB b) Q| := le_abs_sarea_of_le_min hm8 2 3 5
  have eEBQ : sarea (ptE l) (ptB b) Q = b * ((1 - l) - (1 - Q.2)) + (1 - (1 - l)) * Q.1 := by
    simp only [sarea, ptE, ptB]; ring
  have hQ1 : 0 < Q.1 := (central_pos h.row.b_pos h.row.Q_central).1
  have hEBQpos : 0 < sarea (ptE l) (ptB b) Q := by
    obtain ⟨x1, x2, -⟩ := hQE
    simp only [sarea, ptD, ptE, ptC, ptB] at x1 x2 ⊢
    have hQ2l : 0 < Q.2 - l := by nlinarith
    nlinarith [mul_pos hb hQ2l, mul_pos hl hQ1]
  rw [abs_of_pos hEBQpos, eEBQ] at hEBQ
  have hq1 : 0 < 1 - (1 - l) := by linarith
  have hl0 : lZero (8 / 73) b (1 - Q.2) ≤ Q.1 := by simp only [lZero]; linarith
  have hl1' : (8 / 73 - b * ((1 - l) - (1 - Q.2))) / (1 - (1 - l)) ≤ Q.1 := by
    rw [div_le_iff₀ hq1]; linarith
  refine ⟨hl0, hl1', ?_, ?_, ?_⟩
  · apply max_le (by linarith)
    have e : -((1 - l) * sZero (8 / 73) b (1 - Q.2)) / (1 - (1 - l)) =
        (8 / 73 - b * ((1 - l) - (1 - Q.2))) / (1 - (1 - l)) - lZero (8 / 73) b (1 - Q.2) := by
      simp only [sZero, lZero]; field_simp; ring
    rw [e]; linarith
  · have hz : 0 < 1 - Q.2 := by
      have := h.row.Q_central.2.2; simp only [sarea, ptC, ptD] at this; linarith
    exact l_alg (by norm_num) (by linarith) hz hQ1 hl0 hg hκ hN hF0 hZc hzZ
  · simp only [f0Fn, fZeroZero, kappaFn, lZero]; ring

/-- The actual parameters
`(b, q, z)` lie in the box `8/73 ≤ b ≤ 1/2`, `67/80 ≤ q ≤ 119/128`, `14/73 ≤ z ≤ 3/4`, and
satisfy `H(b, q, z) ≥ 0`. -/
theorem hPoly_nonneg (h : UpperLabelled l b P Q R S T) :
    let q := 1 - l
    let z := 1 - Q.2
    8 / 73 ≤ b ∧ b ≤ 1 / 2 ∧ 67 / 80 ≤ q ∧ q ≤ 119 / 128 ∧ 14 / 73 ≤ z ∧ z ≤ 3 / 4 ∧
      0 ≤ hPoly b q z := by
  have hN3 := nFn_nonneg h
  have hL5 := nFn_le_nFn_lZero h
  have hDEC := DEC_caps h
  dsimp only at hN3 hL5 hDEC ⊢
  obtain ⟨hκ, hN, hF0, -, -⟩ := hN3
  obtain ⟨hl0, -, hΔ, hNl, hF0e⟩ := hL5
  obtain ⟨-, -, -, -, -, -, -, hz, -, -, -, -⟩ := hDEC
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T) :=
    le_trans (le_of_lt A₀_bounds.1) h.min
  have hm8 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    have := A₀_bounds.2.1; rw [← typeIIConfig_eq]; linarith [h.min]
  have hb := h.row.b_pos
  have hl := h.row.l_pos
  have hl1 := h.row.l_lt
  have hb1 : b < 1 := by linarith [h.row.b_le]
  obtain ⟨-, hq67, -, -, -, -⟩ := upper_cellII_setup h.toUpperSetting
  obtain ⟨hq119, -, -⟩ := q_lt_119_128 h.toUpperSetting
  have hDEB : 8 / 73 ≤ |sarea ptD (ptE l) (ptB b)| := le_abs_sarea_of_le_min hm8 0 2 3
  have eDEB : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp only [sarea, ptD, ptE, ptB]; ring
  rw [eDEB, abs_of_pos (by nlinarith)] at hDEB
  have hQE := (central_inTriangle_iff hb hb1 hl hl1 h.row.Q_central).1.2 h.Q_above
  have hDEQ : 8 / 73 ≤ |sarea ptD (ptE l) Q| := le_abs_sarea_of_le_min hm8 0 2 5
  rw [abs_of_pos hQE.1] at hDEQ
  have hECQ : 8 / 73 ≤ |sarea (ptE l) ptC Q| := le_abs_sarea_of_le_min hm8 2 1 5
  rw [abs_of_pos h.Q_above] at hECQ
  have eDEQ : sarea ptD (ptE l) Q = (1 - l) * Q.1 := by simp only [sarea, ptD, ptE]; ring
  have eECQ : sarea (ptE l) ptC Q = (1 - l) * (1 - Q.1) - (1 - Q.2) := by
    simp only [sarea, ptE, ptC]; ring
  rw [eDEQ] at hDEQ; rw [eECQ] at hECQ
  have hbs : 8 / 73 ≤ b := by nlinarith [mul_pos hb hl]
  refine ⟨hbs, h.row.b_le, hq67.le, hq119.le, by linarith, by nlinarith, ?_⟩
  have hq1 : 0 < 1 - (1 - l) := by linarith
  have hΔ1 : -((1 - l) * sZero (8 / 73) b (1 - Q.2)) ≤
      (1 - (1 - l)) * (Q.1 - lZero (8 / 73) b (1 - Q.2)) := by
    have := le_trans (le_max_right _ _) hΔ
    rw [div_le_iff₀ hq1] at this; linarith
  exact H_alg hq67.le (by linarith) (by linarith) hN hF0 hNl hF0e
    (le_trans (le_max_left _ _) hΔ) hΔ1

/-! ### The Bernstein certificate: twelve boxes

Each box states that on its part of the unit cube, in the coordinates `(u, v, t)`, `H < 0`: the
kernel check `Cert.rowNN` (`Heilbronn/Nine/TypeII/Unbalanced/UpperCellIICert.lean`,
`bernsteinBoxCheck` at degree `(4, 3, 3)`) certifies that all tensor Bernstein coefficients of
`-H` on the box are positive. Only the sign is used, and only the sign is certified; the bound
`-1/N` recorded for each box is the parameter `N` of its check. -/

/-- `H` agrees with the real function of the certificate module. -/
theorem hPoly_eq (b q z : ℝ) : hPoly b q z = Cert.hReal b q z := by
  simp only [hPoly, nFn, gammaFn, cFn, dStar, pStar, kappaFn, yStar, lZero, fZeroZero, sZero,
    Cert.hReal]
  ring

/-- Box 1: `u ∈ [0, 1/4]`, `v ∈ [0, 1]`, `t ∈ [0, 1/8]`, bound `-1/201292`. -/
theorem bernstein_row1 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (0 : ℝ) (1 / 8)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row01 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 2: `u ∈ [1/4, 1/2]`, `v ∈ [0, 1]`, `t ∈ [0, 1/8]`, bound `-1/28701`. -/
theorem bernstein_row2 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 4 : ℝ) (1 / 2))
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (0 : ℝ) (1 / 8)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row02 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 3: `u ∈ [0, 1/8]`, `v ∈ [0, 1/2]`, `t ∈ [1/8, 3/16]`, bound `-1/673376`. -/
theorem bernstein_row3 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 8))
    (hv : v ∈ Set.Icc (0 : ℝ) (1 / 2)) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (3 / 16)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row03 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 4: `u ∈ [0, 1/8]`, `v ∈ [1/2, 1]`, `t ∈ [1/8, 3/16]`, bound `-1/85605`. -/
theorem bernstein_row4 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 8))
    (hv : v ∈ Set.Icc (1 / 2 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (3 / 16)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row04 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 5: `u ∈ [1/8, 1/4]`, `v ∈ [0, 1/2]`, `t ∈ [1/8, 3/16]`, bound `-1/264312`. -/
theorem bernstein_row5 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 8 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (0 : ℝ) (1 / 2)) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (3 / 16)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row05 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 6: `u ∈ [1/8, 1/4]`, `v ∈ [1/2, 1]`, `t ∈ [1/8, 3/16]`, bound `-1/87739`. -/
theorem bernstein_row6 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 8 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (1 / 2 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (3 / 16)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row06 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 7: `u ∈ [0, 1/4]`, `v ∈ [0, 1/2]`, `t ∈ [3/16, 1/4]`, bound `-1/141939`. -/
theorem bernstein_row7 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (0 : ℝ) (1 / 2)) (ht : t ∈ Set.Icc (3 / 16 : ℝ) (1 / 4)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row07 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 8: `u ∈ [0, 1/4]`, `v ∈ [1/2, 1]`, `t ∈ [3/16, 1/4]`, bound `-1/94199`. -/
theorem bernstein_row8 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) (1 / 4))
    (hv : v ∈ Set.Icc (1 / 2 : ℝ) 1) (ht : t ∈ Set.Icc (3 / 16 : ℝ) (1 / 4)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row08 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 9: `u ∈ [1/4, 1/2]`, `v ∈ [0, 1]`, `t ∈ [1/8, 1/4]`, bound `-1/68199`. -/
theorem bernstein_row9 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 4 : ℝ) (1 / 2))
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 8 : ℝ) (1 / 4)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row09 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 10: `u ∈ [1/2, 1]`, `v ∈ [0, 1]`, `t ∈ [0, 1/4]`, bound `-1/6165`. -/
theorem bernstein_row10 (u v t : ℝ) (hu : u ∈ Set.Icc (1 / 2 : ℝ) 1)
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (0 : ℝ) (1 / 4)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row10 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 11: `u ∈ [0, 1]`, `v ∈ [0, 1]`, `t ∈ [1/4, 1/2]`, bound `-1/29261`. -/
theorem bernstein_row11 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) 1)
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 4 : ℝ) (1 / 2)) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row11 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- Box 12: `u ∈ [0, 1]`, `v ∈ [0, 1]`, `t ∈ [1/2, 1]`, bound `-1/2153`. -/
theorem bernstein_row12 (u v t : ℝ) (hu : u ∈ Set.Icc (0 : ℝ) 1)
    (hv : v ∈ Set.Icc (0 : ℝ) 1) (ht : t ∈ Set.Icc (1 / 2 : ℝ) 1) :
    hUnit u v t < 0 := by
  rw [hUnit, hPoly_eq]
  exact Cert.hReal_neg Cert.row12 (by push_cast; exact hu) (by push_cast; exact hv)
    (by push_cast; exact ht)

/-- `H(b, q, z) < 0`
throughout the box `[8/73, 1/2] × [67/80, 119/128] × [14/73, 3/4]`. The twelve boxes cover
`[0, 1]³` with disjoint interiors (960 strict coefficient comparisons in all). -/
theorem hPoly_neg (b q z : ℝ) (hb : b ∈ Set.Icc (8 / 73 : ℝ) (1 / 2))
    (hq : q ∈ Set.Icc (67 / 80 : ℝ) (119 / 128)) (hz : z ∈ Set.Icc (14 / 73 : ℝ) (3 / 4)) :
    hPoly b q z < 0 := by
  obtain ⟨hb0, hb1⟩ := hb
  obtain ⟨hq0, hq1⟩ := hq
  obtain ⟨hz0, hz1⟩ := hz
  set u := (b - 8 / 73) / (1 / 2 - 8 / 73) with hu
  set v := (q - 67 / 80) / (119 / 128 - 67 / 80) with hv
  set t := (z - 14 / 73) / (3 / 4 - 14 / 73) with ht
  have eb : bOf u = b := by simp only [bOf, hu]; field_simp; ring
  have eq : qOf v = q := by simp only [qOf, hv]; field_simp; ring
  have ez : zOf t = z := by simp only [zOf, ht]; field_simp; ring
  have hH : hPoly b q z = hUnit u v t := by rw [hUnit, eb, eq, ez]
  rw [hH]
  have u0 : 0 ≤ u := by rw [hu]; apply div_nonneg <;> linarith
  have u1 : u ≤ 1 := by rw [hu, div_le_one (by norm_num)]; linarith
  have v0 : 0 ≤ v := by rw [hv]; apply div_nonneg <;> linarith
  have v1 : v ≤ 1 := by rw [hv, div_le_one (by norm_num)]; linarith
  have t0 : 0 ≤ t := by rw [ht]; apply div_nonneg <;> linarith
  have t1 : t ≤ 1 := by rw [ht, div_le_one (by norm_num)]; linarith
  rcases le_total (1 / 2) t with ht2 | ht2
  · exact bernstein_row12 u v t ⟨u0, u1⟩ ⟨v0, v1⟩ ⟨ht2, t1⟩
  rcases le_total (1 / 4) t with ht4 | ht4
  · exact bernstein_row11 u v t ⟨u0, u1⟩ ⟨v0, v1⟩ ⟨ht4, ht2⟩
  rcases le_total (1 / 2) u with hu2 | hu2
  · exact bernstein_row10 u v t ⟨hu2, u1⟩ ⟨v0, v1⟩ ⟨t0, ht4⟩
  rcases le_total (1 / 4) u with hu4 | hu4
  · rcases le_total t (1 / 8) with ht8 | ht8
    · exact bernstein_row2 u v t ⟨hu4, hu2⟩ ⟨v0, v1⟩ ⟨t0, ht8⟩
    · exact bernstein_row9 u v t ⟨hu4, hu2⟩ ⟨v0, v1⟩ ⟨ht8, ht4⟩
  rcases le_total t (1 / 8) with ht8 | ht8
  · exact bernstein_row1 u v t ⟨u0, hu4⟩ ⟨v0, v1⟩ ⟨t0, ht8⟩
  rcases le_total t (3 / 16) with ht16 | ht16
  · rcases le_total u (1 / 8) with hu8 | hu8 <;> rcases le_total v (1 / 2) with hv2 | hv2
    · exact bernstein_row3 u v t ⟨u0, hu8⟩ ⟨v0, hv2⟩ ⟨ht8, ht16⟩
    · exact bernstein_row4 u v t ⟨u0, hu8⟩ ⟨hv2, v1⟩ ⟨ht8, ht16⟩
    · exact bernstein_row5 u v t ⟨hu8, hu4⟩ ⟨v0, hv2⟩ ⟨ht8, ht16⟩
    · exact bernstein_row6 u v t ⟨hu8, hu4⟩ ⟨hv2, v1⟩ ⟨ht8, ht16⟩
  · rcases le_total v (1 / 2) with hv2 | hv2
    · exact bernstein_row7 u v t ⟨u0, hu4⟩ ⟨v0, hv2⟩ ⟨ht16, ht4⟩
    · exact bernstein_row8 u v t ⟨u0, hu4⟩ ⟨hv2, v1⟩ ⟨ht16, ht4⟩

/-- The two-point upper cut in support cell
II does not exist (with minimum area at least `A₀`). -/
theorem false_of_upperSetting (h : UpperSetting l b P Q R S T) : False := by
  obtain ⟨-, -, -, -, -, hlab⟩ := upper_cellII_setup h
  have fin : ∀ {P' Q' : Point}, UpperLabelled l b P' Q' R S T → False := by
    intro P' Q' hL
    obtain ⟨hb1, hb2, hq1, hq2, hz1, hz2, hH⟩ := hPoly_nonneg hL
    have := hPoly_neg _ _ _ ⟨hb1, hb2⟩ ⟨hq1, hq2⟩ ⟨hz1, hz2⟩
    linarith
  rcases hlab with ⟨a1, a2, a3, -, -⟩ | ⟨a1, a2, a3, -, -⟩
  · exact fin { h with Q_below_DR := a1, P_above_DR := a2, T_above_DR := a3 }
  · have hsw : typeIIConfig l b Q P R S T = typeIIConfig l b P Q R S T ∘ Equiv.swap (4 : Fin 9) 5 := by
      funext x; fin_cases x <;> rfl
    have hS' : UpperSetting l b Q P R S T :=
      { row := { h.row with P_central := h.row.Q_central, Q_central := h.row.P_central }
        min := by rw [hsw, minTriangleArea_comp_perm]; exact h.min
        P_above := h.Q_above
        Q_above := h.P_above
        quad := h.quad
        cell := h.cell }
    exact fin { hS' with Q_below_DR := a1, P_above_DR := a2, T_above_DR := a3 }

end Heilbronn.Nine.UnbalancedUpperCellII
