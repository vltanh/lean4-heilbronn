module

public import Heilbronn.Nine.C1.TwoLower.Quart

/-! # The Bernstein certificate of `docs/proof/nine/C1_TOP_CAP_OF_SPLIT.md` §3

Variables `H₀, C₀` = `var 0, 1` in `[0, 1]`: `c = ρ + (1 - ρ)C₀`, `p = ρ + (c - ρ)H₀`,
`D = p(48p - 266s)`, `ℓ = 23sc(p + c)`, `W = (c - s)D - ℓ`; `f = (ℓ + Wθ)/D`, `θ ∈ [0, 1]`,
runs over `[f₀, c - s]`. The five Bernstein coefficients `N₀, …, N₄` in `θ` of `D⁴c²R`
(`Quart.eN`) are negative on each of the three rectangles of the manuscript (`C₀ ≤ 1/2`;
`C₀ ≥ 1/2, H₀ ≤ 1/2`; `C₀ ≥ 1/2, H₀ ≥ 1/2`), one Bernstein check of degree `(10, 14)` per
theorem (`scripts/nine/c1_two_lower/quart.py`). -/

@[expose] public section

namespace Heilbronn.Nine.C1TwoLower.OfSplitCert

open Heilbronn.Cert Heilbronn.Cert.Expr Heilbronn.Nine.C1TwoLower.Quart

/-- `c = ρ + (1 - ρ)C₀`. -/
def ec : Expr := k (49 / 60) + k (11 / 60) * v 1
/-- `p = ρ + (c - ρ)H₀`. -/
def ep : Expr := k (49 / 60) + k (11 / 60) * v 1 * v 0
/-- `D = p(48p - 266s)`. -/
def eD : Expr := ep * (k 48 * ep - k (2128 / 73))
/-- `ℓ = 23sc(p + c)`. -/
def el : Expr := k (184 / 73) * ec * (ep + ec)
/-- `W = (c - s)D - ℓ`. -/
def eW : Expr := (ec - k (8 / 73)) * eD - el

theorem chk0_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 0) [(0, 1), (0, 1 / 2)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk0_1 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 0) [(0, 1 / 2), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk0_2 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 0) [(1 / 2, 1), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk1_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 1) [(0, 1), (0, 1 / 2)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk1_1 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 1) [(0, 1 / 2), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk1_2 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 1) [(1 / 2, 1), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk2_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 2) [(0, 1), (0, 1 / 2)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk2_1 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 2) [(0, 1 / 2), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk2_2 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 2) [(1 / 2, 1), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk3_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 3) [(0, 1), (0, 1 / 2)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk3_1 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 3) [(0, 1 / 2), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk3_2 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 3) [(1 / 2, 1), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk4_0 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 4) [(0, 1), (0, 1 / 2)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk4_1 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 4) [(0, 1 / 2), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

theorem chk4_2 : bernsteinBoxCheck (0 - eN ec ep eD el (el + eW) 4) [(1 / 2, 1), (1 / 2, 1)]
    [10, 14] 1 = true := by
  decide +kernel

end Heilbronn.Nine.C1TwoLower.OfSplitCert
