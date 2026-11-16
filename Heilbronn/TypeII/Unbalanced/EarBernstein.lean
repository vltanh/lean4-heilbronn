module

public import Heilbronn.Common.Bernstein
public import Heilbronn.Common.CertNotation

/-! # The Bernstein certificate of `hand/UNBALANCED_OCCUPIED_LOWER_EAR.md` §6

The polynomials `H₁ = Lb²K₁ + (3/1024)E₀` and `H₂ = Lb²K₂` of (18) in the physical variables
`b = var 0`, `r = var 1`, `u = var 2`, with the endpoint `q₀ = s/b` (branch `-`) or `q₀ = 3s`
(branch `+`), `s = 8/73`, written structurally with the denominators `b`, `L = 1 - r` cleared:
`bδ = b·δ`, `bc = b·c`, `LM = L·M = gL - sw`, and `b²F_B, b²F_R, b²F_C` from (15). The eleven rows
of the table of §6 are the eleven boxes below (`y ∈ [y₀, y₁]` is `r ∈ [7/10 + y₀/5, 7/10 + y₁/5]`,
`z ∈ [z₀, z₁]` is `u ∈ [3z₀/16, 3z₁/16]`), each checked by `bernsteinBoxCheck` at the degrees of
the table after (19) with the bound `1/N` of its row (`scripts/unbalanced_ear/bern_check.py`
recomputes all 1540 coefficients).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedEarBernstein

open Heilbronn.Cert Heilbronn.Cert.Expr

/-! ### The polynomials -/

def eb : Expr := v 0
def er : Expr := v 1
def eu : Expr := v 2
def es : Expr := k (8 / 73)
def ew : Expr := 1 - eb
def eL : Expr := 1 - er
def eg : Expr := er - eb - ew * eu
def eLM : Expr := eg * eL - es * ew

/-- `b·δ` and `b·c` on branch `-` (`q = s/b`). -/
def bdM : Expr := eb * eb * eu + (eb - es) * (er - eb)
def bcM : Expr := eb - es * ew
/-- `b·δ` and `b·c` on branch `+` (`q = 3s`). -/
def bdP : Expr := eb * (eb * eu + k (49 / 73) * (er - eb))
def bcP : Expr := eb * (1 - k (24 / 73) * ew)

def bFB (bd : Expr) : Expr := k (-8 / 73) * eb * bd
def bFR (bd : Expr) : Expr := bd * (bd - k (24 / 73) * eb)
def bFC (bd bc : Expr) : Expr := (bd - k (16 / 73) * eb) * bc - es * eb * (bd + eb * eg)

def eE0 : Expr := (eg - k (16 / 73)) * eLM - k (64 / 5329) * eL

def eH1 (bd bc : Expr) : Expr :=
  (eLM * (eg - es) - k (64 / 5329) * eL) * bFC bd bc + es * eLM * bFR bd +
    k (64 / 5329) * eL * bFB bd + k (3 / 1024) * eE0

def eH2 (bd bc : Expr) : Expr :=
  (eg - es) * (es * eL * bFB bd + eLM * bFR bd) + es * (eLM + es * eL) * bFC bd bc

/-- `-H₁` and `-H₂` on both branches: the certified signs are `-H > 0`. -/
def nH1M : Expr := 0 - eH1 bdM bcM
def nH2M : Expr := 0 - eH2 bdM bcM
def nH1P : Expr := 0 - eH1 bdP bcP
def nH2P : Expr := 0 - eH2 bdP bcP

/-! ### The eleven rows -/

theorem row1 : bernsteinBoxCheck nH1M [(1 / 5, 1 / 3), (7 / 10, 4 / 5), (0, 3 / 32)] [5, 4, 3]
    3224550 = true := by decide +kernel

theorem row2 : bernsteinBoxCheck nH1M [(1 / 5, 1 / 3), (7 / 10, 4 / 5), (3 / 32, 3 / 16)] [5, 4, 3]
    413076 = true := by decide +kernel

theorem row3 : bernsteinBoxCheck nH1M [(1 / 5, 1 / 3), (4 / 5, 33 / 40), (0, 3 / 64)] [5, 4, 3]
    3614646 = true := by decide +kernel

theorem row4 : bernsteinBoxCheck nH1M [(1 / 5, 1 / 3), (33 / 40, 17 / 20), (0, 3 / 64)] [5, 4, 3]
    1983267 = true := by decide +kernel

theorem row5 : bernsteinBoxCheck nH1M [(1 / 5, 1 / 3), (4 / 5, 17 / 20), (3 / 64, 3 / 32)]
    [5, 4, 3] 1439036 = true := by decide +kernel

theorem row6 : bernsteinBoxCheck nH1M [(1 / 5, 1 / 3), (4 / 5, 17 / 20), (3 / 32, 3 / 16)]
    [5, 4, 3] 351848 = true := by decide +kernel

theorem row7 : bernsteinBoxCheck nH1M [(1 / 5, 1 / 3), (17 / 20, 9 / 10), (0, 3 / 16)] [5, 4, 3]
    486594 = true := by decide +kernel

theorem row8 : bernsteinBoxCheck nH2M [(1 / 5, 1 / 3), (7 / 10, 9 / 10), (0, 3 / 16)] [6, 5, 4]
    177533 = true := by decide +kernel

theorem row9 : bernsteinBoxCheck nH1P [(1 / 3, 4 / 11), (7 / 10, 4 / 5), (0, 3 / 16)] [6, 4, 3]
    2703813 = true := by decide +kernel

theorem row10 : bernsteinBoxCheck nH1P [(1 / 3, 4 / 11), (4 / 5, 9 / 10), (0, 3 / 16)] [6, 4, 3]
    841173 = true := by decide +kernel

theorem row11 : bernsteinBoxCheck nH2P [(1 / 3, 4 / 11), (7 / 10, 9 / 10), (0, 3 / 16)] [6, 5, 4]
    129369 = true := by decide +kernel

/-! ### Soundness on a box of `(b, r, u)` -/

/-- The point `(b, r, u)` as a valuation of `var 0, var 1, var 2`. -/
def pt (b r u : ℝ) : ℕ → ℝ := fun i => if i = 0 then b else if i = 1 then r else u

theorem box3 {e : Expr} {l0 h0 l1 h1 l2 h2 : ℚ} {ns : List ℕ} {M : ℕ}
    (h : bernsteinBoxCheck e [(l0, h0), (l1, h1), (l2, h2)] ns M = true) {b r u : ℝ}
    (hb : (l0 : ℝ) ≤ b ∧ b ≤ h0) (hr : (l1 : ℝ) ≤ r ∧ r ≤ h1) (hu : (l2 : ℝ) ≤ u ∧ u ≤ h2) :
    0 < e.eval (pt b r u) := by
  apply bernsteinBoxCheck_sound h
  intro i hi
  simp only [List.length_cons, List.length_nil] at hi
  interval_cases i
  · simpa [pt] using hb
  · simpa [pt] using hr
  · simpa [pt] using hu

end Heilbronn.UnbalancedEarBernstein
