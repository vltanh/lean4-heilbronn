module

public import Heilbronn.C1.TwoLower.Quart

/-! # The Bernstein certificate of `hand/C1_TOP_CAP_CONTAINMENT_PAIR.md` §1

Variables `H₀, C₀` = `var 0, 1` in `[0, 1]`: `c = ρ + (1 - ρ)C₀`, `p = ρ + (c - ρ)H₀`,
`D = 2p`, `ℓ = c²`, `W = (c - s)D - ℓ`; `f = (ℓ + Wθ)/D`, `θ ∈ [0, 1]`, runs over
`[c²/(2p), c - s]`. The five Bernstein coefficients `N₀, …, N₄` in `θ` of `D⁴c²R` (`Quart.eN`)
are negative on the unit square, one Bernstein check of degree `(6, 10)` per theorem
(`scripts/c1_two_lower/quart.py`). -/

@[expose] public section

namespace Heilbronn.C1TwoLower.ContainmentCert

open Heilbronn.Cert Heilbronn.Cert.Expr Heilbronn.C1TwoLower.Quart

/-- `c = ρ + (1 - ρ)C₀`. -/
def ec : Expr := k (49 / 60) + k (11 / 60) * v 1
/-- `p = ρ + (c - ρ)H₀`. -/
def ep : Expr := k (49 / 60) + k (11 / 60) * v 1 * v 0
/-- `D = 2p`. -/
def eD : Expr := k 2 * ep
/-- `ℓ = c²`. -/
def el : Expr := ec * ec
/-- `W = (c - s)D - ℓ`. -/
def eW : Expr := (ec - k (8 / 73)) * eD - el

theorem chk0_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 0) [(0, 1), (0, 1)]
    [6, 10] 224 = true := by
  decide +kernel

theorem chk1_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 1) [(0, 1), (0, 1)]
    [6, 10] 146 = true := by
  decide +kernel

theorem chk2_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 2) [(0, 1), (0, 1)]
    [6, 10] 92 = true := by
  decide +kernel

theorem chk3_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 3) [(0, 1), (0, 1)]
    [6, 10] 35 = true := by
  decide +kernel

theorem chk4_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 4) [(0, 1), (0, 1)]
    [6, 10] 37 = true := by
  decide +kernel

end Heilbronn.C1TwoLower.ContainmentCert
