module

public import Heilbronn.Common.Certificate

/-!
# Bernstein positivity certificates, checked by the kernel

A polynomial `e` in the variables `var 0, …, var (k-1)` of degree at most `n_i` in `var i` is
positive on the unit cube `[0, 1]ᵏ` as soon as all its tensor Bernstein coefficients of degree
`(n_0, …, n_{k-1})` are positive: the Bernstein basis functions are nonnegative and sum to `1`.

The check avoids binomial coefficients by homogenizing. With `u_i = var i` and
`v_i = var (k + i)`, write the integer polynomial `d • e` of `Expr.toPoly` as
`Σ_β a_β ∏_i u_i ^ β_i` and put

  `R(u, v) = Σ_β a_β ∏_i u_i ^ β_i (u_i + v_i) ^ (n_i - β_i)`.

`R` is homogeneous of degree `n_i` in `(u_i, v_i)`, its coefficient of
`∏_i u_i ^ γ_i v_i ^ (n_i - γ_i)` is `∏_i (n_i choose γ_i)` times the Bernstein coefficient of
`d • e` at `γ`, and at `v_i = 1 - u_i` it is `d • e`. `bernsteinCheck e k ns M` tests that every
coefficient of `M • R - ∏_i (u_i + v_i) ^ n_i` is nonnegative, which says that every Bernstein
coefficient of `d • e` is at least `1 / M`. Evaluating at `u_i = z_i`, `v_i = 1 - z_i` gives
`M d e(z) ≥ 1` (`bernsteinCheck_sound`).

`R` is computed one variable at a time: stage `i` multiplies every term by
`(u_i + v_i) ^ (n_i - β_i)`, where `β_i` is its exponent of `u_i` (untouched by the earlier
stages), and merges. At `v_i = 1 - u_i` a stage does not change the value, whatever the exponents;
the check only verifies that each stage stays below total degree `32`, where the packed keys are
exact. The exponent bounds `β_i ≤ n_i` make `R` the homogenization above.

`bernsteinBoxCheck` runs the same test on a rational box `∏ [lo_i, hi_i]`, after the affine
substitution `var i ↦ lo_i + (hi_i - lo_i) var i` (`bernsteinBoxCheck_sound`).

Every function the kernel evaluates here is structurally recursive, and natural number arithmetic
on literals is done by the kernel's GMP acceleration, so the checks run under `decide +kernel`.
-/

@[expose] public section

namespace Heilbronn.Cert

/-! ### Nonnegative polynomials -/

theorem keyEval_eq (z : ℕ → ℝ) (k : ℕ) :
    keyEval z k = z 0 ^ (k % 32) * keyEval (fun i => z (i + 1)) (k / 32) := by
  rcases eq_or_ne k 0 with rfl | hk
  · simp [keyEval_zero]
  · exact keyEval_of_ne hk

theorem keyEval_nonneg (z : ℕ → ℝ) (hz : ∀ v, 0 ≤ z v) (k : ℕ) : 0 ≤ keyEval z k := by
  induction k using Nat.strong_induction_on generalizing z with
  | _ k ih =>
    rcases eq_or_ne k 0 with rfl | hk
    · rw [keyEval_zero]; exact zero_le_one
    rw [keyEval_of_ne hk]
    exact mul_nonneg (pow_nonneg (hz 0) _) (ih _ (by omega) _ fun v => hz (v + 1))

/-- Every coefficient is nonnegative. -/
def allNonneg : Poly → Bool
  | [] => true
  | t :: p => decide (0 ≤ t.2) && allNonneg p

theorem eval_nonneg_of_allNonneg (z : ℕ → ℝ) (hz : ∀ v, 0 ≤ z v) {p : Poly}
    (h : allNonneg p = true) : 0 ≤ Poly.eval z p := by
  induction p with
  | nil => simp
  | cons t p ih =>
    simp only [allNonneg, Bool.and_eq_true, decide_eq_true_eq] at h
    rw [Poly.eval_cons]
    have ht : (0 : ℝ) ≤ t.2 := by exact_mod_cast h.1
    exact add_nonneg (mul_nonneg ht (keyEval_nonneg z hz _)) (ih h.2)

/-! ### Substitution -/

namespace Expr

/-- Substitute `σ i` for every variable `var i`. -/
def subst (σ : ℕ → Expr) : Expr → Expr
  | var i => σ i
  | const q => const q
  | add e₁ e₂ => add (e₁.subst σ) (e₂.subst σ)
  | sub e₁ e₂ => sub (e₁.subst σ) (e₂.subst σ)
  | mul e₁ e₂ => mul (e₁.subst σ) (e₂.subst σ)

theorem eval_subst (σ : ℕ → Expr) (z : ℕ → ℝ) (e : Expr) :
    (e.subst σ).eval z = e.eval fun i => (σ i).eval z := by
  induction e with
  | var i => rfl
  | const q => rfl
  | add e₁ e₂ ih₁ ih₂ => simp only [subst, eval, ih₁, ih₂]
  | sub e₁ e₂ ih₁ ih₂ => simp only [subst, eval, ih₁, ih₂]
  | mul e₁ e₂ ih₁ ih₂ => simp only [subst, eval, ih₁, ih₂]

/-- `lo + (hi - lo) * var i`, which maps `var i ∈ [0, 1]` onto `[lo, hi]`. -/
def affineVar (i : ℕ) (lo hi : ℚ) : Expr :=
  add (const lo) (mul (const (hi - lo)) (var i))

theorem eval_affineVar (z : ℕ → ℝ) (i : ℕ) (lo hi : ℚ) :
    (affineVar i lo hi).eval z = lo + (hi - lo) * z i := by
  simp [affineVar, eval]

end Expr

/-! ### Keys -/

/-- The base-`32` digits of `key` are bounded by `ns` (the digit of `var i` by `ns[i]`), and
`key < 32 ^ ns.length`. -/
def digitsLe : List ℕ → ℕ → Bool
  | [], key => key == 0
  | n :: ns, key => decide (key % 32 ≤ n) && digitsLe ns (key / 32)

/-- Keys accepted by `digitsLe ns` only involve the first `ns.length` coordinates. -/
theorem keyEval_congr {ns : List ℕ} {key : ℕ} (h : digitsLe ns key = true) {z z' : ℕ → ℝ}
    (hz : ∀ j < ns.length, z j = z' j) : keyEval z key = keyEval z' key := by
  induction ns generalizing key z z' with
  | nil =>
    simp only [digitsLe, beq_iff_eq] at h
    subst h; simp [keyEval_zero]
  | cons n ns ih =>
    simp only [digitsLe, Bool.and_eq_true, decide_eq_true_eq] at h
    rw [keyEval_eq z, keyEval_eq z', hz 0 (by simp),
      ih h.2 (fun j hj => hz (j + 1) (by simp; omega))]

/-- `digitSum key ≤ D`, for keys with at most `f` digits. -/
def digLe : ℕ → ℕ → ℕ → Bool
  | 0, key, _ => key == 0
  | f + 1, key, D => decide (key % 32 ≤ D) && digLe f (key / 32) (D - key % 32)

theorem digitSum_le_of_digLe : ∀ (f key D : ℕ), digLe f key D = true → digitSum key ≤ D
  | 0, key, D, h => by
    simp only [digLe, beq_iff_eq] at h
    subst h; simp [digitSum_zero]
  | f + 1, key, D, h => by
    simp only [digLe, Bool.and_eq_true, decide_eq_true_eq] at h
    have := digitSum_le_of_digLe f (key / 32) (D - key % 32) h.2
    rcases eq_or_ne key 0 with rfl | hk
    · simp [digitSum_zero]
    · rw [digitSum_of_ne hk]; omega

/-- The terms with a nonzero coefficient. -/
def dropZeros : Poly → Poly
  | [] => []
  | t :: p => if t.2 = 0 then dropZeros p else t :: dropZeros p

theorem eval_dropZeros (z : ℕ → ℝ) (p : Poly) : Poly.eval z (dropZeros p) = Poly.eval z p := by
  induction p with
  | nil => rfl
  | cons t p ih =>
    by_cases ht : t.2 = 0
    · simp [dropZeros, ht, ih]
    · simp [dropZeros, ht, ih]

/-- Polynomials whose keys pass `digitsLe ns` only involve the first `ns.length` coordinates. -/
theorem eval_congr {ns : List ℕ} {p : Poly} (h : ∀ t ∈ p, digitsLe ns t.1 = true)
    {z z' : ℕ → ℝ} (hz : ∀ j < ns.length, z j = z' j) : Poly.eval z p = Poly.eval z' p := by
  induction p with
  | nil => rfl
  | cons t p ih =>
    rw [Poly.eval_cons, Poly.eval_cons, keyEval_congr (h t (by simp)) hz,
      ih fun s hs => h s (by simp [hs])]

/-! ### Homogenization -/

/-- `p ^ m`. -/
def powPoly (p : Poly) : ℕ → Poly
  | 0 => [(0, 1)]
  | m + 1 => mulPoly p (powPoly p m)

theorem powPoly_spec (z : ℕ → ℝ) {D : ℕ} (p : Poly) (hp : Poly.Deg D p) (m : ℕ)
    (hm : m * D < 32) :
    Poly.eval z (powPoly p m) = Poly.eval z p ^ m ∧ Poly.Deg (m * D) (powPoly p m) := by
  induction m with
  | zero =>
    refine ⟨by simp [powPoly, keyEval_zero], ?_⟩
    intro u hu; simp [powPoly] at hu; subst hu; simp [digitSum_zero]
  | succ m ih =>
    have hsm : (m + 1) * D = D + m * D := by rw [Nat.succ_mul, Nat.add_comm]
    rw [hsm] at hm ⊢
    obtain ⟨ih1, ih2⟩ := ih (by omega)
    obtain ⟨h1, h2⟩ := mulPoly_spec z hm p (powPoly p m) hp ih2
    exact ⟨by rw [powPoly, h1, ih1, pow_succ'], h2⟩

/-- `u_i + v_i = var i + var (k + i)`. -/
def sumVar (k i : ℕ) : Poly := [(32 ^ i, 1), (32 ^ (k + i), 1)]

theorem sumVar_spec (w : ℕ → ℝ) (k i : ℕ) :
    Poly.eval w (sumVar k i) = w i + w (k + i) ∧ Poly.Deg 1 (sumVar k i) := by
  refine ⟨by simp [sumVar, keyEval_pow], ?_⟩
  intro u hu
  simp only [sumVar, List.mem_cons, List.not_mem_nil, or_false] at hu
  rcases hu with rfl | rfl <;> simp [digitSum_pow]

/-- Stage `i` of the homogenization, before merging: every term times
`(u_i + v_i) ^ (n - β_i)`, where `β_i` is its exponent of `var i`. -/
def stageTerms (k i n : ℕ) : Poly → List Poly
  | [] => []
  | t :: p => mulTerm t (powPoly (sumVar k i) (n - t.1 / 32 ^ i % 32)) :: stageTerms k i n p

/-- Every product of stage `i` has total degree below `32` (keys have at most `2k` digits). -/
def stageOk (k i n : ℕ) : Poly → Bool
  | [] => true
  | t :: p => (decide (n - t.1 / 32 ^ i % 32 ≤ 31) &&
      digLe (2 * k) t.1 (31 - (n - t.1 / 32 ^ i % 32))) && stageOk k i n p

/-- The stages `i, i + 1, …` of the homogenization with the degrees `ns`, or `none` if a stage
would reach total degree `32`. -/
def homStages (k : ℕ) : ℕ → List ℕ → Poly → Option Poly
  | _, [], p => some p
  | i, n :: ns, p =>
    if stageOk k i n p then homStages k (i + 1) ns (treeSum 32 (stageTerms k i n p)) else none

/-- At `v_i = 1 - u_i` a stage does not change the value. -/
theorem eval_stage (k i n : ℕ) (w : ℕ → ℝ) (hw : w i + w (k + i) = 1) (p : Poly)
    (h : stageOk k i n p = true) :
    Poly.eval w (treeSum 32 (stageTerms k i n p)) = Poly.eval w p := by
  rw [eval_treeSum]
  induction p with
  | nil => simp [stageTerms]
  | cons t p ih =>
    simp only [stageOk, Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨hm, hd⟩, hp⟩ := h
    have hds := digitSum_le_of_digLe _ _ _ hd
    obtain ⟨s1, s2⟩ := sumVar_spec w k i
    obtain ⟨p1, p2⟩ := powPoly_spec w (sumVar k i) s2 (n - t.1 / 32 ^ i % 32) (by omega)
    obtain ⟨t1, -⟩ := mulTerm_spec w (a := digitSum t.1) (b := (n - t.1 / 32 ^ i % 32) * 1)
      (by omega) t le_rfl _ p2
    simp only [stageTerms, List.map_cons, List.sum_cons, Poly.eval_cons, t1, p1, s1, hw, one_pow,
      mul_one, ih hp]

theorem eval_homStages (k : ℕ) (w : ℕ → ℝ) (hw : ∀ j < k, w j + w (k + j) = 1) :
    ∀ (ns : List ℕ) (i : ℕ) (p R : Poly), i + ns.length ≤ k → homStages k i ns p = some R →
      Poly.eval w R = Poly.eval w p
  | [], i, p, R, _, h => by
    simp only [homStages, Option.some.injEq] at h
    rw [h]
  | n :: ns, i, p, R, hlen, h => by
    simp only [List.length_cons] at hlen
    simp only [homStages] at h
    split_ifs at h with hok
    rw [eval_homStages k w hw ns (i + 1) _ R (by omega) h,
      eval_stage k i n w (hw i (by omega)) p hok]

/-! ### The Bernstein check on the unit cube -/

/-- **The Bernstein check.** `e` is an expression in `var 0, …, var (k-1)` of degree at most
`ns[i]` in `var i` (after cancellation), and every Bernstein coefficient of degree `ns` of the
integer polynomial `d • e = (e.toPoly).2` is at least `1 / M`: the homogenized polynomial `R`
satisfies `M • R - ∏_i (u_i + v_i) ^ ns[i] ≥ 0` coefficientwise. The homogenization stays below
total degree `32`, which needs `Σ ns < 32`. -/
def bernsteinCheck (e : Expr) (k : ℕ) (ns : List ℕ) (M : ℕ) : Bool :=
  let p := dropZeros e.toPoly.2
  decide (ns.length = k) && decide (e.deg < 32) && decide (0 < M) &&
    p.all (fun t => digitsLe ns t.1) &&
    match homStages k 0 ns p, homStages k 0 ns [(0, 1)] with
    | some R, some P => allNonneg (addPoly (scalePoly M R) (scalePoly (-1) P))
    | _, _ => false

/-- **Soundness of the Bernstein check.** If `bernsteinCheck e k ns M` succeeds, `e` is positive
on the unit cube `[0, 1]ᵏ` (the other coordinates are arbitrary). -/
theorem bernsteinCheck_sound {e : Expr} {k : ℕ} {ns : List ℕ} {M : ℕ}
    (h : bernsteinCheck e k ns M = true) (z : ℕ → ℝ) (hz : ∀ i < k, 0 ≤ z i ∧ z i ≤ 1) :
    0 < e.eval z := by
  simp only [bernsteinCheck, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true] at h
  obtain ⟨⟨⟨⟨hlen, hdeg⟩, hM⟩, hterms⟩, hpos⟩ := h
  split at hpos
  case h_2 => exact absurd hpos Bool.false_ne_true
  rename_i R P hR hP
  let w : ℕ → ℝ := fun j => if j < k then z j else if j < 2 * k then 1 - z (j - k) else 0
  have hw0 : ∀ j, 0 ≤ w j := by
    intro j
    simp only [w]
    split_ifs with h1 h2
    · exact (hz j h1).1
    · linarith [(hz (j - k) (by omega)).2]
    · exact le_rfl
  have hw1 : ∀ j < k, w j + w (k + j) = 1 := by
    intro j hj
    have h1 : ¬ k + j < k := by omega
    have h2 : k + j < 2 * k := by omega
    simp only [w, hj, h1, h2, ↓reduceIte, Nat.add_sub_cancel_left]
    ring
  obtain ⟨hd, hval, -⟩ := e.toPoly_spec z hdeg
  have hRv : Poly.eval w R = e.toPoly.1 * e.eval z := by
    rw [eval_homStages k w hw1 ns 0 _ R (by omega) hR,
      eval_congr (z := w) (z' := z) hterms fun j hj => (by simp [w, show j < k by omega]),
      eval_dropZeros, hval]
  have hPv : Poly.eval w P = 1 := by
    rw [eval_homStages k w hw1 ns 0 _ P (by omega) hP]
    simp [keyEval_zero]
  have hnn := eval_nonneg_of_allNonneg w hw0 hpos
  rw [eval_addPoly, eval_scalePoly, eval_scalePoly, hRv, hPv] at hnn
  push_cast at hnn
  have hMd : (0 : ℝ) < M * e.toPoly.1 := by
    have : (0 : ℝ) < M := by exact_mod_cast hM
    have : (0 : ℝ) < e.toPoly.1 := by exact_mod_cast hd
    positivity
  nlinarith

/-! ### Boxes -/

/-- The substitution `var i ↦ lo_i + (hi_i - lo_i) * var i` for `i < box.length`, where
`box[i] = (lo_i, hi_i)`; it maps the unit cube onto the box. -/
def boxSubst (box : List (ℚ × ℚ)) (i : ℕ) : Expr :=
  match box[i]? with
  | some b => Expr.affineVar i b.1 b.2
  | none => Expr.var i

/-- **The Bernstein check on a box** `∏_i [lo_i, hi_i]`, given as the list of pairs `(lo_i, hi_i)`:
the Bernstein check of degree `ns` of `e` after the affine substitution `boxSubst box`. -/
def bernsteinBoxCheck (e : Expr) (box : List (ℚ × ℚ)) (ns : List ℕ) (M : ℕ) : Bool :=
  bernsteinCheck (e.subst (boxSubst box)) box.length ns M

/-- **Soundness of the box check.** If `bernsteinBoxCheck e box ns M` succeeds, `e` is positive
on the box (the other coordinates are arbitrary). -/
theorem bernsteinBoxCheck_sound {e : Expr} {box : List (ℚ × ℚ)} {ns : List ℕ} {M : ℕ}
    (h : bernsteinBoxCheck e box ns M = true) (x : ℕ → ℝ)
    (hx : ∀ i (hi : i < box.length), ((box[i]).1 : ℝ) ≤ x i ∧ x i ≤ (box[i]).2) :
    0 < e.eval x := by
  let z : ℕ → ℝ := fun i =>
    if hi : i < box.length then (x i - (box[i]).1) / ((box[i]).2 - (box[i]).1) else x i
  have hz : ∀ i < box.length, 0 ≤ z i ∧ z i ≤ 1 := by
    intro i hi
    obtain ⟨h1, h2⟩ := hx i hi
    simp only [z, hi, ↓reduceDIte]
    rcases eq_or_lt_of_le (h1.trans h2) with heq | hlt
    · rw [heq, sub_self, div_zero]; exact ⟨le_rfl, zero_le_one⟩
    · have hpos : (0 : ℝ) < (box[i]).2 - (box[i]).1 := sub_pos.2 hlt
      exact ⟨div_nonneg (by linarith) hpos.le, (div_le_one hpos).2 (by linarith)⟩
  have hsub : (fun i => (boxSubst box i).eval z) = x := by
    funext i
    by_cases hi : i < box.length
    · obtain ⟨h1, h2⟩ := hx i hi
      simp only [boxSubst, List.getElem?_eq_getElem hi, Expr.eval_affineVar, z, hi, ↓reduceDIte]
      rcases eq_or_lt_of_le (h1.trans h2) with heq | hlt
      · rw [heq, sub_self, div_zero, mul_zero, add_zero]
        linarith
      · have hpos : ((box[i]).2 : ℝ) - (box[i]).1 ≠ 0 := (sub_pos.2 hlt).ne'
        field_simp
        ring
    · simp only [boxSubst, List.getElem?_eq_none (Nat.le_of_not_lt hi), Expr.eval, z, hi,
        ↓reduceDIte]
  have := bernsteinCheck_sound h z hz
  rwa [Expr.eval_subst, hsub] at this

end Heilbronn.Cert
