module

public import Heilbronn.Common.Bernstein
public import Heilbronn.Common.CertNotation

/-! # The Bernstein certificate for the upper cell II

The polynomial `H(b, q, z)` of `Heilbronn.Nine.UnbalancedUpperCellII`, as a certificate expression
`negH = -H` in the variables `var 0 = b`, `var 1 = q`, `var 2 = z`, written structurally from
its defining quantities, and twelve subboxes covering the box `base` (given in unit coordinates
and mapped to physical boxes by `phys`), each checked by `bernsteinBoxCheck` at degree
`(4, 3, 3)` (`decide +kernel`). `hReal_neg` turns a passed check into the sign `H < 0` on its
box; `Heilbronn.Nine.UnbalancedUpperCellII` identifies `negH.eval` with `-hPoly`.
-/

@[expose] public section

namespace Heilbronn.Nine.UnbalancedUpperCellII.Cert

open Heilbronn.Cert

/-- A rational constant. -/
def C (x : ℚ) : Expr := .const x
/-- The variables `b`, `q`, `z`. -/
def vb : Expr := .var 0
def vq : Expr := .var 1
def vz : Expr := .var 2

/-- The defining quantities of `H`, with `s = 8/73`. -/
def s : Expr := C (8 / 73)
def w : Expr := C 1 - vb
def lam : Expr := C 1 - vq
def c : Expr := C 1 - w * vq
def gamma : Expr := (c - s) * (c - s) - C 4 * s * vb * lam
def l0 : Expr := s + vb * vz
def kappa : Expr := vq * (C 1 - l0) - vz
def ybar : Expr := s * (vq + vz)
def pbar : Expr := kappa - s * (C 2 - l0)
def dbar : Expr := (vz + s) * kappa - s * (vq + vz)
def N0 : Expr :=
  gamma * (dbar * (C 1 - l0) - s * pbar) - C 4 * s * vb * vb * (dbar * vz + s * ybar)
def F00 : Expr := vq * (vz * (C 1 - s - vb * vz) - s) - vz * (vz + s)
def S0 : Expr := vb * (C 1 - vz) - s
def H : Expr := N0 + C (9 / 512) * F00 + C (7 / 2048) * S0

/-- The certified sign is `H < 0`, i.e. `-H > 0`. -/
def negH : Expr := C 0 - H

/-- The box `[8/73, 1/2] × [67/80, 119/128] × [14/73, 3/4]` of `(b, q, z)`. -/
def base : List (ℚ × ℚ) := [(8 / 73, 1 / 2), (67 / 80, 119 / 128), (14 / 73, 3 / 4)]

/-- A subbox of the unit cube, in coordinates affine on each side of `base`, as a physical box. -/
def phys (unit : List (ℚ × ℚ)) : List (ℚ × ℚ) :=
  List.zipWith (fun a u => (a.1 + (a.2 - a.1) * u.1, a.1 + (a.2 - a.1) * u.2)) base unit

/-- The degree `(4, 3, 3)` of `H`. -/
def degs : List ℕ := [4, 3, 3]

/-- The Bernstein check of `-H` on the unit subbox `[0, 1/4] × [0, 1] × [0, 1/8]`. -/
theorem row01 : bernsteinBoxCheck negH (phys [(0, 1/4), (0, 1), (0, 1/8)]) degs
    201292 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[1/4, 1/2] × [0, 1] × [0, 1/8]`. -/
theorem row02 : bernsteinBoxCheck negH (phys [(1/4, 1/2), (0, 1), (0, 1/8)]) degs
    28701 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[0, 1/8] × [0, 1/2] × [1/8, 3/16]`. -/
theorem row03 : bernsteinBoxCheck negH (phys [(0, 1/8), (0, 1/2), (1/8, 3/16)]) degs
    673376 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[0, 1/8] × [1/2, 1] × [1/8, 3/16]`. -/
theorem row04 : bernsteinBoxCheck negH (phys [(0, 1/8), (1/2, 1), (1/8, 3/16)]) degs
    85605 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[1/8, 1/4] × [0, 1/2] × [1/8, 3/16]`. -/
theorem row05 : bernsteinBoxCheck negH (phys [(1/8, 1/4), (0, 1/2), (1/8, 3/16)]) degs
    264312 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[1/8, 1/4] × [1/2, 1] × [1/8, 3/16]`. -/
theorem row06 : bernsteinBoxCheck negH (phys [(1/8, 1/4), (1/2, 1), (1/8, 3/16)]) degs
    87739 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[0, 1/4] × [0, 1/2] × [3/16, 1/4]`. -/
theorem row07 : bernsteinBoxCheck negH (phys [(0, 1/4), (0, 1/2), (3/16, 1/4)]) degs
    141939 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[0, 1/4] × [1/2, 1] × [3/16, 1/4]`. -/
theorem row08 : bernsteinBoxCheck negH (phys [(0, 1/4), (1/2, 1), (3/16, 1/4)]) degs
    94199 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[1/4, 1/2] × [0, 1] × [1/8, 1/4]`. -/
theorem row09 : bernsteinBoxCheck negH (phys [(1/4, 1/2), (0, 1), (1/8, 1/4)]) degs
    68199 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[1/2, 1] × [0, 1] × [0, 1/4]`. -/
theorem row10 : bernsteinBoxCheck negH (phys [(1/2, 1), (0, 1), (0, 1/4)]) degs
    6165 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[0, 1] × [0, 1] × [1/4, 1/2]`. -/
theorem row11 : bernsteinBoxCheck negH (phys [(0, 1), (0, 1), (1/4, 1/2)]) degs
    29261 = true := by
  decide +kernel

/-- The Bernstein check of `-H` on the unit subbox `[0, 1] × [0, 1] × [1/2, 1]`. -/
theorem row12 : bernsteinBoxCheck negH (phys [(0, 1), (0, 1), (1/2, 1)]) degs
    2153 = true := by
  decide +kernel

/-- The real function computed by `negH`, built from the same defining quantities. -/
noncomputable def hReal (b q z : ℝ) : ℝ :=
  let s : ℝ := 8 / 73
  let c := 1 - (1 - b) * q
  let γ := (c - s) * (c - s) - 4 * s * b * (1 - q)
  let l₀ := s + b * z
  let κ := q * (1 - l₀) - z
  let Y := s * (q + z)
  let P := κ - s * (2 - l₀)
  let D := (z + s) * κ - s * (q + z)
  γ * (D * (1 - l₀) - s * P) - 4 * s * b * b * (D * z + s * Y) +
    9 / 512 * (q * (z * (1 - s - b * z) - s) - z * (z + s)) + 7 / 2048 * (b * (1 - z) - s)

/-- `negH` evaluates to `-hReal`. -/
theorem eval_negH (x : ℕ → ℝ) : negH.eval x = -hReal (x 0) (x 1) (x 2) := by
  simp only [negH, H, N0, F00, S0, gamma, c, w, lam, s, l0, kappa, ybar, pbar, dbar, C, vb, vq, vz,
    Expr.eval_minus, Expr.eval, hReal]
  push_cast
  ring

/-- The point of the box `base` with unit coordinates `(u, v, t)`. -/
noncomputable def unitX (u v t : ℝ) : ℕ → ℝ := fun i =>
  if i = 0 then 8 / 73 + (1 / 2 - 8 / 73) * u
  else if i = 1 then 67 / 80 + (119 / 128 - 67 / 80) * v
  else 14 / 73 + (3 / 4 - 14 / 73) * t

/-- A passed row check gives `H < 0` on its box. -/
theorem hReal_neg {u₀ u₁ v₀ v₁ t₀ t₁ : ℚ} {M : ℕ}
    (hc : bernsteinBoxCheck negH (phys [(u₀, u₁), (v₀, v₁), (t₀, t₁)]) degs M = true)
    {u v t : ℝ} (hu : (u₀ : ℝ) ≤ u ∧ u ≤ u₁) (hv : (v₀ : ℝ) ≤ v ∧ v ≤ v₁)
    (ht : (t₀ : ℝ) ≤ t ∧ t ≤ t₁) :
    hReal (8 / 73 + (1 / 2 - 8 / 73) * u) (67 / 80 + (119 / 128 - 67 / 80) * v)
      (14 / 73 + (3 / 4 - 14 / 73) * t) < 0 := by
  have h := bernsteinBoxCheck_sound hc (unitX u v t) (by
    intro i hi
    simp only [phys, base, List.zipWith_cons_cons, List.zipWith_nil_right, List.length_cons,
      List.length_nil] at hi
    interval_cases i <;>
      simp only [phys, base, List.zipWith_cons_cons, List.zipWith_nil_right,
        List.getElem_cons_zero, List.getElem_cons_succ, unitX] <;> push_cast <;> norm_num <;>
      constructor <;> nlinarith [hu.1, hu.2, hv.1, hv.2, ht.1, ht.2])
  rw [eval_negH] at h
  simp only [unitX] at h
  norm_num at h
  linarith

end Heilbronn.Nine.UnbalancedUpperCellII.Cert
