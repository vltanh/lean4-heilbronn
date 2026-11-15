module

public import Heilbronn.Common.Certificate
public import Heilbronn.Common.Basic

/-!
# Notation for certificate expressions

Arithmetic on `Cert.Expr` (`+`, `-`, `*`, numerals, `Expr.k q` for a rational constant,
`Expr.v i` for a variable), the doubled signed area `Expr.esarea` of three points with coordinates
given by expressions, and the `simp` lemmas that turn `Expr.eval` of such terms into real
arithmetic.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Cert.Expr

instance : Add Expr := ⟨Expr.add⟩
instance : Sub Expr := ⟨Expr.sub⟩
instance : Mul Expr := ⟨Expr.mul⟩
instance (n : ℕ) : OfNat Expr n := ⟨Expr.const n⟩

/-- The variable number `i`. -/
abbrev v (i : ℕ) : Expr := Expr.var i
/-- The rational constant `q`. -/
abbrev k (q : ℚ) : Expr := Expr.const q

/-- Twice the signed area of the triangle with vertices `(p₁, p₂)`, `(q₁, q₂)`, `(r₁, r₂)`. -/
def esarea (p q r : Expr × Expr) : Expr :=
  (q.1 - p.1) * (r.2 - p.2) - (q.2 - p.2) * (r.1 - p.1)

section
variable (z : ℕ → ℝ) (e₁ e₂ : Expr)
@[simp] theorem eval_plus : (e₁ + e₂).eval z = e₁.eval z + e₂.eval z := rfl
@[simp] theorem eval_minus : (e₁ - e₂).eval z = e₁.eval z - e₂.eval z := rfl
@[simp] theorem eval_times : (e₁ * e₂).eval z = e₁.eval z * e₂.eval z := rfl
@[simp] theorem eval_ofNat (n : ℕ) : (OfNat.ofNat n : Expr).eval z = n := by
  show ((n : ℚ) : ℝ) = n; push_cast; rfl
@[simp] theorem eval_zero : (0 : Expr).eval z = 0 := by
  show ((0 : ℕ) : ℚ) = (0 : ℝ); simp
@[simp] theorem eval_one : (1 : Expr).eval z = 1 := by
  show ((1 : ℕ) : ℚ) = (1 : ℝ); simp
@[simp] theorem eval_v (i : ℕ) : (v i).eval z = z i := rfl
@[simp] theorem eval_k (q : ℚ) : (k q).eval z = q := rfl
end

theorem eval_esarea (z : ℕ → ℝ) (p q r : Expr × Expr) :
    (esarea p q r).eval z =
      Heilbronn.sarea (p.1.eval z, p.2.eval z) (q.1.eval z, q.2.eval z) (r.1.eval z, r.2.eval z) :=
  rfl

end Heilbronn.Cert.Expr
