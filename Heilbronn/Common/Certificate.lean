module

public import Mathlib.Tactic

/-!
# Polynomial certificates on the unit cube, checked by the kernel

Most exclusions of the proof end with a *certificate*: finitely many expressions `f₁, …, fₘ`
that are nonnegative in the case at hand (affine factors and area costs), and positive weights
`w_j` with index lists `I_j`, such that the polynomial

  `Σ_j w_j ∏_{i ∈ I_j} f_i`

is negative at every point of the unit cube `[0, 1]ⁿ`. Since every term is nonnegative, the case
is impossible. Negativity is shown by the monomial bound: on the unit cube every monomial lies in
`[0, 1]`, so a polynomial is at most its constant coefficient plus the sum of its positive
nonconstant coefficients.

`check fs ts` expands the sum with integer arithmetic and tests the bound; `check_sound` proves
that a successful check excludes every point of the cube at which all `fs` are nonnegative. The
kernel evaluates `check` on the data (`decide +kernel`), so no step trusts the compiler.

## Representation

* `Expr` is a symbolic polynomial in variables `var 0, var 1, …` with rational constants; its
  real value at `z : ℕ → ℝ` is `Expr.eval z`.
* A monomial is a natural number `k` packing its exponent vector in base `32`: the exponent of
  `var v` is `k / 32 ^ v % 32`. Monomials multiply by adding their keys, which is exact as long
  as no exponent reaches `32`; every polynomial built here has total degree below `32`, which
  `check` verifies.
* `Poly` is a list of pairs (key, integer coefficient). `Expr.toPoly e` is a pair `(d, p)` with
  `d > 0` and `p` the integer polynomial `d • e`. The weights `w_j` are integers, and the check
  needs only that they are positive: it multiplies the scaled factors `d_i • f_i`, which are
  nonnegative when the `f_i` are.
-/

@[expose] public section

namespace Heilbronn.Cert

/-! ### Packed monomials -/

/-- The value of the monomial with key `k` at `z`: the product of `z v ^ (k / 32 ^ v % 32)`. -/
noncomputable def keyEval (z : ℕ → ℝ) (k : ℕ) : ℝ :=
  if k = 0 then 1 else z 0 ^ (k % 32) * keyEval (fun i => z (i + 1)) (k / 32)
termination_by k
decreasing_by omega

/-- The total degree of the monomial with key `k`: the sum of its base-`32` digits. -/
def digitSum (k : ℕ) : ℕ :=
  if k = 0 then 0 else k % 32 + digitSum (k / 32)
termination_by k
decreasing_by omega

theorem keyEval_zero (z : ℕ → ℝ) : keyEval z 0 = 1 := by
  rw [keyEval]; simp

theorem keyEval_of_ne {z : ℕ → ℝ} {k : ℕ} (hk : k ≠ 0) :
    keyEval z k = z 0 ^ (k % 32) * keyEval (fun i => z (i + 1)) (k / 32) := by
  rw [keyEval]; simp [hk]

theorem digitSum_zero : digitSum 0 = 0 := by rw [digitSum]; simp

theorem digitSum_of_ne {k : ℕ} (hk : k ≠ 0) : digitSum k = k % 32 + digitSum (k / 32) := by
  rw [digitSum]; simp [hk]

theorem mod_le_digitSum (k : ℕ) : k % 32 ≤ digitSum k := by
  rcases eq_or_ne k 0 with rfl | hk
  · simp
  · rw [digitSum_of_ne hk]; omega

theorem digitSum_div_le (k : ℕ) : digitSum (k / 32) ≤ digitSum k := by
  rcases eq_or_ne k 0 with rfl | hk
  · simp
  · rw [digitSum_of_ne hk]; omega

/-- Adding two keys whose degrees sum to less than `32` multiplies the monomials. -/
theorem keyEval_add (k₁ k₂ : ℕ) (h : digitSum k₁ + digitSum k₂ < 32) (z : ℕ → ℝ) :
    keyEval z (k₁ + k₂) = keyEval z k₁ * keyEval z k₂ ∧
      digitSum (k₁ + k₂) = digitSum k₁ + digitSum k₂ := by
  induction k₁ using Nat.strong_induction_on generalizing k₂ z with
  | _ k₁ ih =>
    rcases eq_or_ne k₁ 0 with rfl | h₁
    · simp [keyEval_zero, digitSum_zero]
    rcases eq_or_ne k₂ 0 with rfl | h₂
    · simp [keyEval_zero, digitSum_zero]
    have hm₁ := mod_le_digitSum k₁
    have hm₂ := mod_le_digitSum k₂
    have hd₁ := digitSum_div_le k₁
    have hd₂ := digitSum_div_le k₂
    have hmod : (k₁ + k₂) % 32 = k₁ % 32 + k₂ % 32 := by omega
    have hdiv : (k₁ + k₂) / 32 = k₁ / 32 + k₂ / 32 := by omega
    have hlt : k₁ / 32 < k₁ := by omega
    have hrec := ih (k₁ / 32) hlt (k₂ / 32)
      (by rw [digitSum_of_ne h₁, digitSum_of_ne h₂] at h; omega) (fun i => z (i + 1))
    have hs : k₁ + k₂ ≠ 0 := by omega
    rw [keyEval_of_ne hs, keyEval_of_ne h₁, keyEval_of_ne h₂, digitSum_of_ne hs,
      digitSum_of_ne h₁, digitSum_of_ne h₂, hmod, hdiv, hrec.1, hrec.2, pow_add]
    exact ⟨by ring, by ring⟩

theorem keyEval_mem (z : ℕ → ℝ) (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1) (k : ℕ) :
    0 ≤ keyEval z k ∧ keyEval z k ≤ 1 := by
  induction k using Nat.strong_induction_on generalizing z with
  | _ k ih =>
    rcases eq_or_ne k 0 with rfl | hk
    · simp [keyEval_zero]
    rw [keyEval_of_ne hk]
    have h := ih (k / 32) (by omega) (fun i => z (i + 1)) (fun v => hz (v + 1))
    have h0 := hz 0
    have hp0 := pow_nonneg h0.1 (k % 32)
    have hp1 := pow_le_one₀ (n := k % 32) h0.1 h0.2
    exact ⟨mul_nonneg hp0 h.1, by nlinarith⟩

theorem keyEval_pow (z : ℕ → ℝ) (i : ℕ) : keyEval z (32 ^ i) = z i := by
  induction i generalizing z with
  | zero => rw [keyEval_of_ne (by norm_num)]; simp [keyEval_zero]
  | succ i ih =>
    rw [keyEval_of_ne (by positivity)]
    have h1 : 32 ^ (i + 1) % 32 = 0 := by rw [pow_succ]; simp
    have h2 : 32 ^ (i + 1) / 32 = 32 ^ i := by rw [pow_succ]; simp
    rw [h1, h2, ih]; simp

theorem digitSum_pow (i : ℕ) : digitSum (32 ^ i) = 1 := by
  induction i with
  | zero => rw [digitSum_of_ne (by norm_num)]; simp [digitSum_zero]
  | succ i ih =>
    rw [digitSum_of_ne (by positivity)]
    have h1 : 32 ^ (i + 1) % 32 = 0 := by rw [pow_succ]; simp
    have h2 : 32 ^ (i + 1) / 32 = 32 ^ i := by rw [pow_succ]; simp
    rw [h1, h2, ih]

/-! ### Integer polynomials -/

/-- A polynomial with integer coefficients: a list of (monomial key, coefficient) pairs. Keys may
repeat; the value is the sum of all the terms. -/
abbrev Poly := List (ℕ × ℤ)

/-- The value of a polynomial at `z`. -/
noncomputable def Poly.eval (z : ℕ → ℝ) (p : Poly) : ℝ :=
  (p.map fun t => (t.2 : ℝ) * keyEval z t.1).sum

/-- Every monomial of `p` has degree at most `D`. -/
def Poly.Deg (D : ℕ) (p : Poly) : Prop := ∀ t ∈ p, digitSum t.1 ≤ D

@[simp] theorem Poly.eval_nil (z : ℕ → ℝ) : Poly.eval z [] = 0 := rfl

@[simp] theorem Poly.eval_cons (z : ℕ → ℝ) (t : ℕ × ℤ) (p : Poly) :
    Poly.eval z (t :: p) = (t.2 : ℝ) * keyEval z t.1 + Poly.eval z p := by
  simp [Poly.eval]

/-- Insert the term `t` and the rest `p` of a sorted list into the sorted list `q`; `rec` adds
`p` to a list. -/
def addAux (t : ℕ × ℤ) (p : Poly) (rec : Poly → Poly) : Poly → Poly
  | [] => t :: p
  | s :: q => if t.1 < s.1 then t :: rec (s :: q)
    else if s.1 < t.1 then s :: addAux t p rec q
    else (t.1, t.2 + s.2) :: rec q

/-- The sum of two polynomials, merging sorted lists of keys. -/
def addPoly : Poly → Poly → Poly
  | [], q => q
  | t :: p, q => addAux t p (addPoly p) q

/-- The product of a term and a polynomial. -/
def mulTerm (t : ℕ × ℤ) : Poly → Poly
  | [] => []
  | s :: q => (t.1 + s.1, t.2 * s.2) :: mulTerm t q

/-- The product of two polynomials. -/
def mulPoly : Poly → Poly → Poly
  | [], _ => []
  | t :: p, q => addPoly (mulTerm t q) (mulPoly p q)

/-- `c • p`. -/
def scalePoly (c : ℤ) : Poly → Poly
  | [] => []
  | t :: p => (t.1, c * t.2) :: scalePoly c p

/-- The monomial bound: the constant coefficients plus the positive nonconstant ones. -/
def bound : Poly → ℤ
  | [] => 0
  | t :: p => (if t.1 = 0 then t.2 else max t.2 0) + bound p

theorem eval_addAux (z : ℕ → ℝ) (t : ℕ × ℤ) (p : Poly) (rec : Poly → Poly)
    (hrec : ∀ q, Poly.eval z (rec q) = Poly.eval z p + Poly.eval z q) (q : Poly) :
    Poly.eval z (addAux t p rec q) = Poly.eval z (t :: p) + Poly.eval z q := by
  induction q with
  | nil => simp [addAux]
  | cons s q ih =>
    unfold addAux
    split_ifs with h1 h2
    · simp only [Poly.eval_cons, hrec]; ring
    · simp only [Poly.eval_cons, ih]; ring
    · have : t.1 = s.1 := by omega
      simp only [Poly.eval_cons, hrec, this]; push_cast; ring

theorem eval_addPoly (z : ℕ → ℝ) (p q : Poly) :
    Poly.eval z (addPoly p q) = Poly.eval z p + Poly.eval z q := by
  induction p generalizing q with
  | nil => simp [addPoly]
  | cons t p ih => exact eval_addAux z t p _ ih q

theorem deg_addAux {D : ℕ} (t : ℕ × ℤ) (p : Poly) (rec : Poly → Poly)
    (ht : digitSum t.1 ≤ D) (hp : Poly.Deg D p)
    (hrec : ∀ q, Poly.Deg D q → Poly.Deg D (rec q)) (q : Poly) (hq : Poly.Deg D q) :
    Poly.Deg D (addAux t p rec q) := by
  induction q with
  | nil =>
    intro u hu
    simp only [addAux, List.mem_cons] at hu
    rcases hu with rfl | hu
    · exact ht
    · exact hp u hu
  | cons s q ih =>
    have hs : digitSum s.1 ≤ D := hq s (by simp)
    have hq' : Poly.Deg D q := fun u hu => hq u (by simp [hu])
    unfold addAux
    split_ifs with h1 h2
    · intro u hu
      rcases List.mem_cons.1 hu with rfl | hu
      · exact ht
      · exact hrec _ hq u hu
    · intro u hu
      rcases List.mem_cons.1 hu with rfl | hu
      · exact hs
      · exact ih hq' u hu
    · intro u hu
      rcases List.mem_cons.1 hu with rfl | hu
      · exact ht
      · exact hrec _ hq' u hu

theorem deg_addPoly {D : ℕ} (p q : Poly) (hp : Poly.Deg D p) (hq : Poly.Deg D q) :
    Poly.Deg D (addPoly p q) := by
  induction p generalizing q with
  | nil => simpa [addPoly] using hq
  | cons t p ih =>
    exact deg_addAux t p _ (hp t (by simp)) (fun u hu => hp u (by simp [hu]))
      (fun q hq => ih q (fun u hu => hp u (by simp [hu])) hq) q hq

theorem mulTerm_spec (z : ℕ → ℝ) {a b : ℕ} (hab : a + b < 32) (t : ℕ × ℤ)
    (ht : digitSum t.1 ≤ a) (q : Poly) (hq : Poly.Deg b q) :
    Poly.eval z (mulTerm t q) = (t.2 : ℝ) * keyEval z t.1 * Poly.eval z q ∧
      Poly.Deg (a + b) (mulTerm t q) := by
  induction q with
  | nil => simp [mulTerm, Poly.Deg]
  | cons s q ih =>
    have hs : digitSum s.1 ≤ b := hq s (by simp)
    have hk := keyEval_add t.1 s.1 (by omega) z
    obtain ⟨ih1, ih2⟩ := ih (fun u hu => hq u (by simp [hu]))
    refine ⟨?_, ?_⟩
    · simp only [mulTerm, Poly.eval_cons, hk.1, ih1]; push_cast; ring
    · intro u hu
      rcases List.mem_cons.1 hu with rfl | hu
      · simp only; rw [hk.2]; omega
      · exact ih2 u hu

theorem mulPoly_spec (z : ℕ → ℝ) {a b : ℕ} (hab : a + b < 32) (p q : Poly)
    (hp : Poly.Deg a p) (hq : Poly.Deg b q) :
    Poly.eval z (mulPoly p q) = Poly.eval z p * Poly.eval z q ∧
      Poly.Deg (a + b) (mulPoly p q) := by
  induction p with
  | nil => simp [mulPoly, Poly.Deg]
  | cons t p ih =>
    obtain ⟨h1, h2⟩ := mulTerm_spec z hab t (hp t (by simp)) q hq
    obtain ⟨ih1, ih2⟩ := ih (fun u hu => hp u (by simp [hu]))
    refine ⟨?_, deg_addPoly _ _ h2 ih2⟩
    simp only [mulPoly, eval_addPoly, h1, ih1, Poly.eval_cons]; ring

theorem eval_scalePoly (z : ℕ → ℝ) (c : ℤ) (p : Poly) :
    Poly.eval z (scalePoly c p) = c * Poly.eval z p := by
  induction p with
  | nil => simp [scalePoly]
  | cons t p ih => simp only [scalePoly, Poly.eval_cons, ih]; push_cast; ring

theorem deg_scalePoly {D : ℕ} (c : ℤ) (p : Poly) (hp : Poly.Deg D p) :
    Poly.Deg D (scalePoly c p) := by
  induction p with
  | nil => simp [scalePoly, Poly.Deg]
  | cons t p ih =>
    intro u hu
    rcases List.mem_cons.1 hu with rfl | hu
    · exact hp t (by simp)
    · exact ih (fun u hu => hp u (by simp [hu])) u hu

theorem eval_le_bound (z : ℕ → ℝ) (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1) (p : Poly) :
    Poly.eval z p ≤ bound p := by
  induction p with
  | nil => simp [bound]
  | cons t p ih =>
    simp only [Poly.eval_cons, bound]
    push_cast
    have hm := keyEval_mem z hz t.1
    split_ifs with h
    · rw [h, keyEval_zero]; linarith
    · have : (t.2 : ℝ) * keyEval z t.1 ≤ max (t.2 : ℝ) 0 := by
        rcases le_total 0 (t.2 : ℝ) with h0 | h0
        · rw [max_eq_left h0]; nlinarith
        · rw [max_eq_right h0]; nlinarith
      linarith

/-! ### Symbolic expressions -/

/-- A polynomial expression in the variables `var 0, var 1, …` with rational constants. -/
inductive Expr where
  | var : ℕ → Expr
  | const : ℚ → Expr
  | add : Expr → Expr → Expr
  | sub : Expr → Expr → Expr
  | mul : Expr → Expr → Expr
  deriving Inhabited

namespace Expr

/-- The real value of an expression at `z`. -/
noncomputable def eval (z : ℕ → ℝ) : Expr → ℝ
  | var i => z i
  | const q => q
  | add e₁ e₂ => e₁.eval z + e₂.eval z
  | sub e₁ e₂ => e₁.eval z - e₂.eval z
  | mul e₁ e₂ => e₁.eval z * e₂.eval z

/-- An upper bound for the total degree. -/
def deg : Expr → ℕ
  | var _ => 1
  | const _ => 0
  | add e₁ e₂ => max e₁.deg e₂.deg
  | sub e₁ e₂ => max e₁.deg e₂.deg
  | mul e₁ e₂ => e₁.deg + e₂.deg

/-- A positive integer `d` and the integer polynomial `d • e`. -/
def toPoly : Expr → ℕ × Poly
  | var i => (1, [(32 ^ i, 1)])
  | const q => (q.den, [(0, q.num)])
  | add e₁ e₂ =>
    let a := e₁.toPoly; let b := e₂.toPoly
    (a.1 * b.1, addPoly (scalePoly b.1 a.2) (scalePoly a.1 b.2))
  | sub e₁ e₂ =>
    let a := e₁.toPoly; let b := e₂.toPoly
    (a.1 * b.1, addPoly (scalePoly b.1 a.2) (scalePoly (-(a.1 : ℤ)) b.2))
  | mul e₁ e₂ =>
    let a := e₁.toPoly; let b := e₂.toPoly
    (a.1 * b.1, mulPoly a.2 b.2)

theorem toPoly_spec (z : ℕ → ℝ) (e : Expr) (he : e.deg < 32) :
    0 < e.toPoly.1 ∧ Poly.eval z e.toPoly.2 = e.toPoly.1 * e.eval z ∧
      Poly.Deg e.deg e.toPoly.2 := by
  induction e with
  | var i =>
    refine ⟨by simp [toPoly], ?_, ?_⟩
    · simp [toPoly, eval, keyEval_pow]
    · intro u hu; simp [toPoly] at hu; subst hu; simp [deg, digitSum_pow]
  | const q =>
    refine ⟨by simp [toPoly, q.den_pos], ?_, ?_⟩
    · simp only [toPoly, Poly.eval_cons, Poly.eval_nil, keyEval_zero, eval]
      rw [mul_one, add_zero]
      have := Rat.num_div_den q
      have hd : (q.den : ℝ) ≠ 0 := by exact_mod_cast q.den_pos.ne'
      field_simp
      rw [mul_comm]; exact_mod_cast (Rat.mul_den_eq_num q).symm
    · intro u hu; simp [toPoly] at hu; subst hu; simp [deg, digitSum_zero]
  | add e₁ e₂ ih₁ ih₂ =>
    simp only [deg] at he
    obtain ⟨d₁, v₁, g₁⟩ := ih₁ (by omega)
    obtain ⟨d₂, v₂, g₂⟩ := ih₂ (by omega)
    refine ⟨Nat.mul_pos d₁ d₂, ?_, ?_⟩
    · simp only [toPoly, eval_addPoly, eval_scalePoly, v₁, v₂, eval]; push_cast; ring
    · exact deg_addPoly _ _ (deg_scalePoly _ _ fun u hu => (g₁ u hu).trans (by simp [deg]))
        (deg_scalePoly _ _ fun u hu => (g₂ u hu).trans (by simp [deg]))
  | sub e₁ e₂ ih₁ ih₂ =>
    simp only [deg] at he
    obtain ⟨d₁, v₁, g₁⟩ := ih₁ (by omega)
    obtain ⟨d₂, v₂, g₂⟩ := ih₂ (by omega)
    refine ⟨Nat.mul_pos d₁ d₂, ?_, ?_⟩
    · simp only [toPoly, eval_addPoly, eval_scalePoly, v₁, v₂, eval]; push_cast; ring
    · exact deg_addPoly _ _ (deg_scalePoly _ _ fun u hu => (g₁ u hu).trans (by simp [deg]))
        (deg_scalePoly _ _ fun u hu => (g₂ u hu).trans (by simp [deg]))
  | mul e₁ e₂ ih₁ ih₂ =>
    simp only [deg] at he
    obtain ⟨d₁, v₁, g₁⟩ := ih₁ (by omega)
    obtain ⟨d₂, v₂, g₂⟩ := ih₂ (by omega)
    obtain ⟨m₁, m₂⟩ := mulPoly_spec z he _ _ g₁ g₂
    refine ⟨Nat.mul_pos d₁ d₂, ?_, m₂⟩
    simp only [toPoly, m₁, v₁, v₂, eval]; push_cast; ring

end Expr

/-! ### Certificates -/

/-- The degree of the product of the polynomials `ps` at the indices `is`, each given with its
degree. -/
def degIdx (ps : List (ℕ × Poly)) : List ℕ → ℕ
  | [] => 0
  | i :: is => (ps.getD i (0, [])).1 + degIdx ps is

/-- Pairwise sums, halving the list. -/
def pairSums : List Poly → List Poly
  | [] => []
  | [p] => [p]
  | p :: q :: r => addPoly p q :: pairSums r

/-- A balanced sum: `n` rounds of pairwise sums, then a sum of what is left. -/
def treeSum : ℕ → List Poly → Poly
  | 0, ps => ps.foldr addPoly []
  | n + 1, ps => treeSum n (pairSums ps)

/-- The degrees and scaled integer polynomials of the expressions. -/
def prepare (fs : List Expr) : List (ℕ × Poly) :=
  fs.map fun e => (e.deg, e.toPoly.2)

theorem eval_pairSums (z : ℕ → ℝ) (ps : List Poly) :
    ((pairSums ps).map (Poly.eval z)).sum = (ps.map (Poly.eval z)).sum := by
  induction ps using pairSums.induct with
  | case1 => simp [pairSums]
  | case2 p => simp [pairSums]
  | case3 p q r ih => simp [pairSums, eval_addPoly, ih]; ring

theorem eval_treeSum (z : ℕ → ℝ) (n : ℕ) (ps : List Poly) :
    Poly.eval z (treeSum n ps) = (ps.map (Poly.eval z)).sum := by
  induction n generalizing ps with
  | zero =>
    simp only [treeSum]
    induction ps with
    | nil => simp
    | cons p ps ih => simp [eval_addPoly, ih]
  | succ n ih => simp only [treeSum, ih, eval_pairSums]

/-! ### The expansion of a certificate

The kernel evaluates the check, so its cost is the number of reduction steps. A function defined
by structural recursion unfolds at every step through its `brecOn` construction and its matcher;
`addPolyR`, `mulTermR` and `mulPolyR` are `addPoly`, `mulTerm` and `mulPoly` written with the
recursor of `List`, which the kernel reduces in one step. The expansion is factored
(`horner`): the terms are grouped by their first index `i`, and the polynomial of `i`
multiplies the expansion of their tails once, instead of once per term. -/

/-- `addPoly`, by the recursor of `List`. -/
def addPolyR (p q : Poly) : Poly :=
  @List.rec (ℕ × ℤ) (fun _ => Poly → Poly) (fun q => q)
    (fun t p' rec q => @List.rec (ℕ × ℤ) (fun _ => Poly) (t :: p')
      (fun s q' ih => bif t.1.blt s.1 then t :: rec (s :: q')
        else bif s.1.blt t.1 then s :: ih else (t.1, t.2 + s.2) :: rec q') q) p q

/-- `mulTerm`, by the recursor of `List`. -/
def mulTermR (t : ℕ × ℤ) (q : Poly) : Poly :=
  @List.rec (ℕ × ℤ) (fun _ => Poly) [] (fun s _ ih => (t.1 + s.1, t.2 * s.2) :: ih) q

/-- `mulPoly`, by the recursor of `List`. -/
def mulPolyR (p q : Poly) : Poly :=
  @List.rec (ℕ × ℤ) (fun _ => Poly) [] (fun t _ ih => addPolyR (mulTermR t q) ih) p

theorem addPolyR_eq (p q : Poly) : addPolyR p q = addPoly p q := by
  induction p generalizing q with
  | nil => rfl
  | cons t p ihp =>
    induction q with
    | nil => rfl
    | cons s q ihq =>
      show (bif t.1.blt s.1 then t :: addPolyR p (s :: q)
        else bif s.1.blt t.1 then s :: addPolyR (t :: p) q else (t.1, t.2 + s.2) :: addPolyR p q) =
        addAux t p (addPoly p) (s :: q)
      rw [ihq]
      simp only [addAux, ihp]
      by_cases h1 : t.1 < s.1
      · simp [Nat.blt_eq, h1]
      · by_cases h2 : s.1 < t.1
        · simp [Nat.blt_eq, h1, h2]; rfl
        · simp [Nat.blt_eq, h1, h2]

theorem mulTermR_eq (t : ℕ × ℤ) (q : Poly) : mulTermR t q = mulTerm t q := by
  induction q with
  | nil => rfl
  | cons s q ih =>
    show (t.1 + s.1, t.2 * s.2) :: mulTermR t q = mulTerm t (s :: q)
    rw [ih]; rfl

theorem mulPolyR_eq (p q : Poly) : mulPolyR p q = mulPoly p q := by
  induction p with
  | nil => rfl
  | cons t p ih =>
    show addPolyR (mulTermR t q) (mulPolyR p q) = mulPoly (t :: p) q
    rw [ih, addPolyR_eq, mulTermR_eq]; rfl

/-- Whether the index list `js` starts with `i`. -/
def headIs (i : ℕ) : List ℕ → Bool
  | [] => false
  | j :: _ => i.beq j

theorem eq_of_headIs {i : ℕ} {js : List ℕ} (h : headIs i js = true) : js = i :: js.tail := by
  cases js with
  | nil => simp [headIs] at h
  | cons j js => simp [headIs, Nat.beq_eq] at h; simp [h]

/-- The terms of `ts` whose first index is `i`, with that index removed, and the other terms. -/
def splitHead (i : ℕ) (ts : List (ℤ × List ℕ)) : List (ℤ × List ℕ) × List (ℤ × List ℕ) :=
  @List.rec (ℤ × List ℕ) (fun _ => List (ℤ × List ℕ) × List (ℤ × List ℕ)) ([], [])
    (fun t _ r => bif headIs i t.2 then ((t.1, t.2.tail) :: r.1, r.2) else (r.1, t :: r.2)) ts

theorem splitHead_cons (i : ℕ) (t : ℤ × List ℕ) (ts : List (ℤ × List ℕ)) :
    splitHead i (t :: ts) = bif headIs i t.2 then
      ((t.1, t.2.tail) :: (splitHead i ts).1, (splitHead i ts).2)
      else ((splitHead i ts).1, t :: (splitHead i ts).2) := rfl

theorem mem_splitHead_fst {i : ℕ} {ts : List (ℤ × List ℕ)} {u : ℤ × List ℕ}
    (hu : u ∈ (splitHead i ts).1) : (u.1, i :: u.2) ∈ ts := by
  induction ts with
  | nil => simp [splitHead] at hu
  | cons t ts ih =>
    rw [splitHead_cons] at hu
    cases h : headIs i t.2 with
    | false => simp only [h, Bool.cond_false] at hu; exact List.mem_cons_of_mem _ (ih hu)
    | true =>
      simp only [h, Bool.cond_true, List.mem_cons] at hu
      rcases hu with rfl | hu
      · have := eq_of_headIs h
        refine List.mem_cons.2 (Or.inl ?_)
        rw [← this]
      · exact List.mem_cons_of_mem _ (ih hu)

theorem mem_splitHead_snd {i : ℕ} {ts : List (ℤ × List ℕ)} {u : ℤ × List ℕ}
    (hu : u ∈ (splitHead i ts).2) : u ∈ ts := by
  induction ts with
  | nil => simp [splitHead] at hu
  | cons t ts ih =>
    rw [splitHead_cons] at hu
    cases h : headIs i t.2 with
    | false =>
      simp only [h, Bool.cond_false, List.mem_cons] at hu
      rcases hu with rfl | hu
      · exact List.mem_cons_self ..
      · exact List.mem_cons_of_mem _ (ih hu)
    | true => simp only [h, Bool.cond_true] at hu; exact List.mem_cons_of_mem _ (ih hu)

/-- One level of the factored expansion, with fuel `n` for the number of groups: a group of
terms with first index `i` contributes `pᵢ · rec (their tails)`, a term with no index its
weight. -/
def hornerAux (ps : List (ℕ × Poly)) (rec : List (ℤ × List ℕ) → Poly) :
    ℕ → List (ℤ × List ℕ) → Poly
  | 0, _ => []
  | _ + 1, [] => []
  | n + 1, t :: ts =>
    match t.2 with
    | [] => addPolyR [(0, t.1)] (hornerAux ps rec n ts)
    | i :: _ =>
      addPolyR (mulPolyR (ps.getD i (0, [])).2 (rec (splitHead i (t :: ts)).1))
        (hornerAux ps rec n (splitHead i (t :: ts)).2)

/-- The factored expansion of `Σⱼ wⱼ ∏_{i ∈ Iⱼ} pᵢ`, for terms of at most `d` indices (longer
terms are dropped, which can only make the check fail). -/
def horner (ps : List (ℕ × Poly)) : ℕ → List (ℤ × List ℕ) → Poly
  | 0, _ => []
  | d + 1, ts => hornerAux ps (horner ps d) ts.length ts

/-- The certificate check: every weight is positive, every index names an expression, every
term has degree below `32`, and the monomial bound of the factored expansion is negative. -/
def check (fs : List Expr) (ts : List (ℤ × List ℕ)) : Bool :=
  let ps := prepare fs
  ts.all (fun t => decide (0 < t.1) && t.2.all (fun i => decide (i < fs.length)) &&
    decide (degIdx ps t.2 < 32)) &&
  decide (bound (horner ps 32 ts) < 0)

/-- The terms of a certificate whose expansion has degree at most `D`: positive weights, valid
indices. -/
def TermsOK (fs : List Expr) (D : ℕ) (ts : List (ℤ × List ℕ)) : Prop :=
  ∀ t ∈ ts, 0 < t.1 ∧ (∀ i ∈ t.2, i < fs.length) ∧ degIdx (prepare fs) t.2 ≤ D

theorem getD_prepare {fs : List Expr} {i : ℕ} (hi : i < fs.length) :
    (prepare fs).getD i (0, []) = ((fs[i]'hi).deg, (fs[i]'hi).toPoly.2) := by
  simp [prepare, List.getD_eq_getElem?_getD, List.getElem?_map, List.getElem?_eq_getElem hi]

theorem hornerAux_spec (z : ℕ → ℝ) (fs : List Expr) (hf : ∀ e ∈ fs, 0 ≤ e.eval z)
    (rec : List (ℤ × List ℕ) → Poly)
    (hrec : ∀ ts D, D < 32 → TermsOK fs D ts →
      0 ≤ Poly.eval z (rec ts) ∧ Poly.Deg D (rec ts)) :
    ∀ n ts D, D < 32 → TermsOK fs D ts →
      0 ≤ Poly.eval z (hornerAux (prepare fs) rec n ts) ∧
        Poly.Deg D (hornerAux (prepare fs) rec n ts) := by
  intro n
  induction n with
  | zero => intro ts D _ _; simp [hornerAux, Poly.Deg]
  | succ n ih =>
    intro ts D hD hts
    cases ts with
    | nil => simp [hornerAux, Poly.Deg]
    | cons t ts =>
      have ht := hts t (List.mem_cons_self ..)
      have hrest : TermsOK fs D ts := fun u hu => hts u (List.mem_cons_of_mem _ hu)
      rcases h2 : t.2 with _ | ⟨i, is⟩
      · simp only [hornerAux, h2, addPolyR_eq]
        obtain ⟨r1, r2⟩ := ih ts D hD hrest
        refine ⟨?_, deg_addPoly _ _ ?_ r2⟩
        · rw [eval_addPoly]
          have : (0 : ℝ) < t.1 := by exact_mod_cast ht.1
          rw [Poly.eval_cons, Poly.eval_nil, keyEval_zero]; linarith
        · intro u hu; simp at hu; subst hu; simp [digitSum_zero]
      · simp only [hornerAux, h2, addPolyR_eq, mulPolyR_eq]
        obtain ⟨hw, hidx, hdeg⟩ := ht
        rw [h2] at hidx hdeg
        have hi0 : i < fs.length := hidx i (by simp)
        rw [getD_prepare hi0]
        simp only [degIdx, getD_prepare hi0] at hdeg
        set e := fs[i]'hi0 with he
        have hG : TermsOK fs (D - e.deg) (splitHead i (t :: ts)).1 := by
          intro u hu
          have hmem := mem_splitHead_fst hu
          obtain ⟨uw, uidx, udeg⟩ := hts _ hmem
          simp only [degIdx, getD_prepare hi0] at udeg
          rw [← he] at udeg
          exact ⟨uw, fun j hj => uidx j (by simp [hj]), by omega⟩
        have hR : TermsOK fs D (splitHead i (t :: ts)).2 :=
          fun u hu => hts u (mem_splitHead_snd hu)
        obtain ⟨g1, g2⟩ := hrec _ (D - e.deg) (by omega) hG
        obtain ⟨r1, r2⟩ := ih _ D hD hR
        obtain ⟨hpos, hval, hpdeg⟩ := e.toPoly_spec z (by omega)
        obtain ⟨m1, m2⟩ := mulPoly_spec z (a := e.deg) (b := D - e.deg) (by omega) _ _ hpdeg g2
        refine ⟨?_, deg_addPoly _ _ ?_ r2⟩
        · rw [eval_addPoly, m1, hval]
          have := hf e (List.getElem_mem hi0)
          have : (0 : ℝ) ≤ (e.toPoly.1 : ℝ) * e.eval z := by positivity
          nlinarith
        · have : e.deg + (D - e.deg) = D := by omega
          rw [this] at m2; exact m2

theorem horner_spec (z : ℕ → ℝ) (fs : List Expr) (hf : ∀ e ∈ fs, 0 ≤ e.eval z) :
    ∀ d ts D, D < 32 → TermsOK fs D ts →
      0 ≤ Poly.eval z (horner (prepare fs) d ts) ∧ Poly.Deg D (horner (prepare fs) d ts) := by
  intro d
  induction d with
  | zero => intro ts D _ _; simp [horner, Poly.Deg]
  | succ d ih => intro ts D hD hts; exact hornerAux_spec z fs hf _ ih _ ts D hD hts

/-- **Soundness of the certificate check.** If `check fs ts` succeeds, no point of the unit cube
makes every expression of `fs` nonnegative. -/
theorem check_sound {fs : List Expr} {ts : List (ℤ × List ℕ)} (h : check fs ts = true)
    (z : ℕ → ℝ) (hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1) (hf : ∀ e ∈ fs, 0 ≤ e.eval z) : False := by
  simp only [check, Bool.and_eq_true, List.all_eq_true, decide_eq_true_eq] at h
  obtain ⟨hts, hb⟩ := h
  have hnonneg := (horner_spec z fs hf 32 ts 31 (by norm_num) fun t ht =>
    ⟨(hts t ht).1.1, (hts t ht).1.2, by have := (hts t ht).2; omega⟩).1
  have := eval_le_bound z hz (horner (prepare fs) 32 ts)
  have hb' : ((bound (horner (prepare fs) 32 ts) : ℤ) : ℝ) < 0 := by exact_mod_cast hb
  linarith

end Heilbronn.Cert
