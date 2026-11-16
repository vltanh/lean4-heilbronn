module

public import Heilbronn.Nine.C1.TwoLower.Bern

/-! # Quartic Bernstein certificates for the cap elimination `R(h, c, f) < 0`

Used by `docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md` §3 and `docs/proof/nine/C1_TOP_CAP_CONTAINMENT_PAIR.md` §1. There
`R(h, c, f) = (B - ωE₁)² - 4Z₀{sf(c - f) - ωE₀}` (with `h = p/c`) is shown negative on an interval
`f = F/D`, `F = ℓ + Wθ`, `θ ∈ [0, 1]`, by the five degree-four Bernstein coefficients `N₀, …, N₄`
in `θ` of `G(F) = D⁴c²R(p/c, c, F/D)`, each a polynomial in two parameters checked negative by a
Bernstein box check.

Here, with `A₁ = cD - F`, `A₂ = D(c - p - sc) + pF`:
* `first F = A₁A₂ - FDc(c - 1) - ωc(c - p)D² = D²c(B - ωE₁)`,
* `Zc F = D(c² - pc) + pF = D·cZ₀`, `V F = sF·A₁ - ωD(A₂ - ρF) = D²(sf(c - f) - ωE₀)`,
* `G F = (first F)² - 4cD·Zc F·V F`.
`first` and `V` are quadratic and `Zc` affine in `F`; their Bernstein coefficients in `θ`
(`y₀, y₁, y₂`, `z₀, z₁`, `v₀, v₁, v₂`) give `N_k` by the product and elevation formulas (`rN`).
The expression builders `eA₁, …, eN` mirror the real functions `rA₁, …, rN` (`eval_eN`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1TwoLower.Quart

open Heilbronn.Cert Heilbronn.Cert.Expr

/-! ### Real functions -/

def rA1 (c D F : ℝ) : ℝ := c * D - F
def rA2 (c p D F : ℝ) : ℝ := D * (c - p - 8 / 73 * c) + p * F
def rfirst (c p D F : ℝ) : ℝ :=
  rA1 c D F * rA2 c p D F - F * D * c * (c - 1) - 5 / 64 * c * (c - p) * (D * D)
def rZc (c p D F : ℝ) : ℝ := D * (c * c - p * c) + p * F
def rV (c p D F : ℝ) : ℝ := 8 / 73 * F * rA1 c D F - 5 / 64 * D * (rA2 c p D F - 49 / 60 * F)
def ry1 (c p D F0 F1 : ℝ) : ℝ :=
  1 / 2 * (rA1 c D F0 * rA2 c p D F1 + rA1 c D F1 * rA2 c p D F0) -
    1 / 2 * (F0 + F1) * D * c * (c - 1) - 5 / 64 * c * (c - p) * (D * D)
def rv1 (c p D F0 F1 : ℝ) : ℝ :=
  8 / 73 * (1 / 2 * (F0 * rA1 c D F1 + F1 * rA1 c D F0)) -
    5 / 64 * D * (1 / 2 * (rA2 c p D F0 + rA2 c p D F1) - 49 / 60 * (1 / 2 * (F0 + F1)))
def rG (c p D F : ℝ) : ℝ := rfirst c p D F * rfirst c p D F - 4 * c * D * (rZc c p D F * rV c p D F)

/-- The five Bernstein coefficients, from the coefficients of `first`, `Zc`, `V`. -/
def nk (y0 y1 y2 z0 z1 v0 v1 v2 K : ℝ) : Fin 5 → ℝ :=
  ![y0 * y0 - K * (z0 * v0),
    y0 * y1 - K * (1 / 4 * (z0 * v0 + (2 * z0 * v1 + z1 * v0))),
    1 / 3 * (y0 * y2 + 2 * (y1 * y1)) - K * (1 / 2 * (1 / 3 * (2 * z0 * v1 + z1 * v0) +
      1 / 3 * (z0 * v2 + 2 * z1 * v1))),
    y1 * y2 - K * (1 / 4 * ((z0 * v2 + 2 * z1 * v1) + z1 * v2)),
    y2 * y2 - K * (z1 * v2)]

def rN (c p D F0 F1 : ℝ) (j : Fin 5) : ℝ :=
  nk (rfirst c p D F0) (ry1 c p D F0 F1) (rfirst c p D F1) (rZc c p D F0) (rZc c p D F1)
    (rV c p D F0) (rv1 c p D F0 F1) (rV c p D F1) (4 * c * D) j

/-! ### The identities -/

theorem first_bern (c p D F0 F1 θ : ℝ) :
    rfirst c p D (F0 * (1 - θ) + F1 * θ) = rfirst c p D F0 * (1 - θ) ^ 2 +
      2 * ry1 c p D F0 F1 * θ * (1 - θ) + rfirst c p D F1 * θ ^ 2 := by
  simp only [rfirst, ry1, rA1, rA2]; ring

theorem Zc_bern (c p D F0 F1 θ : ℝ) :
    rZc c p D (F0 * (1 - θ) + F1 * θ) = rZc c p D F0 * (1 - θ) + rZc c p D F1 * θ := by
  simp only [rZc]; ring

theorem V_bern (c p D F0 F1 θ : ℝ) :
    rV c p D (F0 * (1 - θ) + F1 * θ) = rV c p D F0 * (1 - θ) ^ 2 +
      2 * rv1 c p D F0 F1 * θ * (1 - θ) + rV c p D F1 * θ ^ 2 := by
  simp only [rV, rv1, rA1, rA2]; ring

theorem prod_bern (y0 y1 y2 z0 z1 v0 v1 v2 K θ : ℝ) :
    (y0 * (1 - θ) ^ 2 + 2 * y1 * θ * (1 - θ) + y2 * θ ^ 2) *
        (y0 * (1 - θ) ^ 2 + 2 * y1 * θ * (1 - θ) + y2 * θ ^ 2) -
      K * ((z0 * (1 - θ) + z1 * θ) * (v0 * (1 - θ) ^ 2 + 2 * v1 * θ * (1 - θ) + v2 * θ ^ 2)) =
    nk y0 y1 y2 z0 z1 v0 v1 v2 K 0 * (1 - θ) ^ 4 +
      4 * nk y0 y1 y2 z0 z1 v0 v1 v2 K 1 * θ * (1 - θ) ^ 3 +
      6 * nk y0 y1 y2 z0 z1 v0 v1 v2 K 2 * θ ^ 2 * (1 - θ) ^ 2 +
      4 * nk y0 y1 y2 z0 z1 v0 v1 v2 K 3 * θ ^ 3 * (1 - θ) +
      nk y0 y1 y2 z0 z1 v0 v1 v2 K 4 * θ ^ 4 := by
  simp only [nk, Matrix.cons_val]; ring

/-- `G(F(θ))` is the Bernstein combination of the `N_k`. -/
theorem G_bern (c p D F0 F1 θ : ℝ) :
    rG c p D (F0 * (1 - θ) + F1 * θ) =
      rN c p D F0 F1 0 * (1 - θ) ^ 4 + 4 * rN c p D F0 F1 1 * θ * (1 - θ) ^ 3 +
        6 * rN c p D F0 F1 2 * θ ^ 2 * (1 - θ) ^ 2 + 4 * rN c p D F0 F1 3 * θ ^ 3 * (1 - θ) +
        rN c p D F0 F1 4 * θ ^ 4 := by
  unfold rG rN
  rw [first_bern, Zc_bern, V_bern, ← prod_bern]

/-- A Bernstein combination of negative coefficients is negative. -/
theorem G_neg {c p D F0 F1 θ : ℝ} (h0 : 0 ≤ θ) (h1 : θ ≤ 1)
    (hN : ∀ j, rN c p D F0 F1 j < 0) : rG c p D (F0 * (1 - θ) + F1 * θ) < 0 := by
  rw [G_bern]
  have t1 : 0 ≤ 1 - θ := by linarith
  have k1 : 4 * rN c p D F0 F1 1 * θ * (1 - θ) ^ 3 ≤ 0 := by
    have := hN 1
    have := mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 4) h0) (pow_nonneg t1 3)
    nlinarith
  have k2 : 6 * rN c p D F0 F1 2 * θ ^ 2 * (1 - θ) ^ 2 ≤ 0 := by
    have := hN 2
    have := mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 6) (pow_nonneg h0 2)) (pow_nonneg t1 2)
    nlinarith
  have k3 : 4 * rN c p D F0 F1 3 * θ ^ 3 * (1 - θ) ≤ 0 := by
    have := hN 3
    have := mul_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 4) (pow_nonneg h0 3)) t1
    nlinarith
  have n0 := hN 0
  have n4 := hN 4
  rcases lt_or_eq_of_le h1 with hl | he
  · have k0 : rN c p D F0 F1 0 * (1 - θ) ^ 4 < 0 :=
      mul_neg_of_neg_of_pos n0 (pow_pos (by linarith) 4)
    have k4 : rN c p D F0 F1 4 * θ ^ 4 ≤ 0 :=
      mul_nonpos_of_nonpos_of_nonneg n4.le (pow_nonneg h0 4)
    linarith
  · subst he
    have k0 : rN c p D F0 F1 0 * (1 - 1) ^ 4 = 0 := by ring
    linarith [show rN c p D F0 F1 4 * 1 ^ 4 = rN c p D F0 F1 4 by ring]

/-- `G(fD) = D⁴c²R(p/c, c, f)` for the cap function `R` of `C1_TOP_CAP_OF_SPLIT.md` (10). -/
theorem G_eq (c p D f : ℝ) (hc : c ≠ 0) :
    rG c p D (f * D) = D ^ 4 * c ^ 2 *
      (((c - f) * (1 - p / c + p / c * f - 8 / 73) - f * (c - 1) - 5 / 64 * (c * (1 - p / c))) ^ 2 -
        4 * (c * (1 - p / c) + p / c * f) *
          (8 / 73 * f * (c - f) - 5 / 64 * (c * (1 - p / c + p / c * f - 8 / 73) - f * (49 / 60)))) := by
  simp only [rG, rfirst, rZc, rV, rA1, rA2]
  field_simp
  ring

/-! ### Expression builders -/

def eA1 (c D F : Expr) : Expr := c * D - F
def eA2 (c p D F : Expr) : Expr := D * (c - p - k (8 / 73) * c) + p * F
def efirst (c p D F : Expr) : Expr :=
  eA1 c D F * eA2 c p D F - F * D * c * (c - 1) - k (5 / 64) * c * (c - p) * (D * D)
def eZc (c p D F : Expr) : Expr := D * (c * c - p * c) + p * F
def eV (c p D F : Expr) : Expr :=
  k (8 / 73) * F * eA1 c D F - k (5 / 64) * D * (eA2 c p D F - k (49 / 60) * F)
def ey1 (c p D F0 F1 : Expr) : Expr :=
  k (1 / 2) * (eA1 c D F0 * eA2 c p D F1 + eA1 c D F1 * eA2 c p D F0) -
    k (1 / 2) * (F0 + F1) * D * c * (c - 1) - k (5 / 64) * c * (c - p) * (D * D)
def ev1 (c p D F0 F1 : Expr) : Expr :=
  k (8 / 73) * (k (1 / 2) * (F0 * eA1 c D F1 + F1 * eA1 c D F0)) -
    k (5 / 64) * D * (k (1 / 2) * (eA2 c p D F0 + eA2 c p D F1) - k (49 / 60) * (k (1 / 2) * (F0 + F1)))

def enk (y0 y1 y2 z0 z1 v0 v1 v2 K : Expr) : Fin 5 → Expr :=
  ![y0 * y0 - K * (z0 * v0),
    y0 * y1 - K * (k (1 / 4) * (z0 * v0 + (k 2 * z0 * v1 + z1 * v0))),
    k (1 / 3) * (y0 * y2 + k 2 * (y1 * y1)) - K * (k (1 / 2) * (k (1 / 3) * (k 2 * z0 * v1 + z1 * v0) +
      k (1 / 3) * (z0 * v2 + k 2 * z1 * v1))),
    y1 * y2 - K * (k (1 / 4) * ((z0 * v2 + k 2 * z1 * v1) + z1 * v2)),
    y2 * y2 - K * (z1 * v2)]

def eN (c p D F0 F1 : Expr) (j : Fin 5) : Expr :=
  enk (efirst c p D F0) (ey1 c p D F0 F1) (efirst c p D F1) (eZc c p D F0) (eZc c p D F1)
    (eV c p D F0) (ev1 c p D F0 F1) (eV c p D F1) (k 4 * c * D) j

section eval
variable (x : ℕ → ℝ)

theorem eval_eA1 (c D F : Expr) : (eA1 c D F).eval x = rA1 (c.eval x) (D.eval x) (F.eval x) := by
  simp only [eA1, rA1, eval_minus, eval_times]

theorem eval_eA2 (c p D F : Expr) :
    (eA2 c p D F).eval x = rA2 (c.eval x) (p.eval x) (D.eval x) (F.eval x) := by
  simp only [eA2, rA2, eval_minus, eval_times, eval_plus, eval_k]; push_cast; ring

theorem eval_efirst (c p D F : Expr) :
    (efirst c p D F).eval x = rfirst (c.eval x) (p.eval x) (D.eval x) (F.eval x) := by
  simp only [efirst, rfirst, eval_minus, eval_times, eval_k, eval_one, eval_eA1,
    eval_eA2]; push_cast; ring

theorem eval_eZc (c p D F : Expr) :
    (eZc c p D F).eval x = rZc (c.eval x) (p.eval x) (D.eval x) (F.eval x) := by
  simp only [eZc, rZc, eval_minus, eval_times, eval_plus]

theorem eval_eV (c p D F : Expr) :
    (eV c p D F).eval x = rV (c.eval x) (p.eval x) (D.eval x) (F.eval x) := by
  simp only [eV, rV, eval_minus, eval_times, eval_k, eval_eA1, eval_eA2]; push_cast; ring

theorem eval_ey1 (c p D F0 F1 : Expr) :
    (ey1 c p D F0 F1).eval x = ry1 (c.eval x) (p.eval x) (D.eval x) (F0.eval x) (F1.eval x) := by
  simp only [ey1, ry1, eval_minus, eval_times, eval_plus, eval_k, eval_one, eval_eA1, eval_eA2]
  push_cast; ring

theorem eval_ev1 (c p D F0 F1 : Expr) :
    (ev1 c p D F0 F1).eval x = rv1 (c.eval x) (p.eval x) (D.eval x) (F0.eval x) (F1.eval x) := by
  simp only [ev1, rv1, eval_minus, eval_times, eval_plus, eval_k, eval_eA1, eval_eA2]
  push_cast; ring

theorem eval_eN (c p D F0 F1 : Expr) (j : Fin 5) :
    (eN c p D F0 F1 j).eval x =
      rN (c.eval x) (p.eval x) (D.eval x) (F0.eval x) (F1.eval x) j := by
  fin_cases j <;>
  simp only [eN, rN, enk, nk, Matrix.cons_val, Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk,
    eval_minus, eval_times, eval_plus, eval_k, eval_efirst, eval_ey1, eval_eZc, eval_eV,
    eval_ev1] <;> push_cast <;> ring

end eval

/-- Soundness of one rectangle check in two variables. -/
theorem sound_rect {e : Expr} {a1 b1 a2 b2 : ℚ} {ns : List ℕ} {M : ℕ}
    (hchk : bernsteinBoxCheck (0 - e) [(a1, b1), (a2, b2)] ns M = true) {H0 C0 : ℝ}
    (h1 : (a1 : ℝ) ≤ H0 ∧ H0 ≤ b1) (h2 : (a2 : ℝ) ≤ C0 ∧ C0 ≤ b2) :
    e.eval (pointOf [H0, C0]) < 0 := by
  have := bernsteinBoxCheck_sound hchk (pointOf [H0, C0])
    (pointOf_box _ _ (.cons h1 (.cons h2 .nil)))
  simp only [eval_minus, eval_zero] at this
  linarith

/-- The parameters `H₀, C₀` of a point `ρ ≤ p ≤ c ≤ 1`. -/
theorem params {p c : ℝ} (hp : 49 / 60 ≤ p) (hpc : p ≤ c) (hc : c ≤ 1) :
    ∃ H0 C0 : ℝ, 0 ≤ H0 ∧ H0 ≤ 1 ∧ 0 ≤ C0 ∧ C0 ≤ 1 ∧ c = 49 / 60 + 11 / 60 * C0 ∧
      p = 49 / 60 + 11 / 60 * C0 * H0 := by
  refine ⟨if c = 49 / 60 then 0 else (p - 49 / 60) / (c - 49 / 60), (c - 49 / 60) / (11 / 60),
    ?_, ?_, ?_, ?_, ?_, ?_⟩
  · split_ifs
    · rfl
    · exact div_nonneg (by linarith) (by linarith)
  · split_ifs with h
    · norm_num
    · rw [div_le_one (lt_of_le_of_ne (by linarith) (Ne.symm (sub_ne_zero.2 h)))]; linarith
  · exact div_nonneg (by linarith) (by norm_num)
  · rw [div_le_one (by norm_num)]; linarith
  · field_simp; ring
  · split_ifs with h
    · have : p = 49 / 60 := by linarith
      rw [this]; ring
    · have hne : c - 49 / 60 ≠ 0 := sub_ne_zero.2 h
      have e1 : 11 / 60 * ((c - 49 / 60) / (11 / 60)) = c - 49 / 60 := by field_simp
      rw [e1, mul_div_assoc', mul_comm, mul_div_assoc, div_self hne, mul_one]; ring

end Heilbronn.Nine.C1TwoLower.Quart
