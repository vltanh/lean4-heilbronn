module

public import Heilbronn.Nine.C1.Setting
public import Heilbronn.Nine.Corners.CornerFamilies.Interior

/-! # Shared tools for the C1 two-lower notes

Point-level tools used by `Heilbronn.Nine.C1.{TwoLowerSideCap, TopCap*, MixedPentagon,
TwoLowerCompletion}`:

* `ar`, `ar_pos`, `ar_neg`, `ar_ne`: in a configuration of least area at least `A₀` every doubled
  area of three distinct points has absolute value at least `σ = 8/73` (`7/64` for `ar7`);
* `two_in`: the two-interior-point lemma (`CornerFamilies.twoInteriorPointLemma`) in doubled
  form, `|[ABE]| ≥ (4 + 2√3)σ`; `one_in`: a triangle with a further point inside has doubled area
  at least `3σ`;
* `kσ_gt`: `ρ = 49/60 < (4 + 2√3)σ`; `sqrt3_bounds`;
* `gp`: the Grassmann–Plücker identity behind every sign deduction;
* `tp`, `sarea_tp`: the transposition `(x, y) ↦ (y, x)`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1TwoLower

open Heilbronn.Nine.C1

theorem sqrt3_bounds : (1.732 : ℝ) < Real.sqrt 3 ∧ Real.sqrt 3 < 1.7321 := by
  constructor
  · rw [Real.lt_sqrt (by norm_num)]; norm_num
  · rw [Real.sqrt_lt' (by norm_num)]; norm_num

theorem sqrt3_gt' : (1.73205 : ℝ) < Real.sqrt 3 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

/-- `(4 + 2√3)σ > 40899/50000`. -/
theorem kσ_gt' : (40899 / 50000 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) := by
  have := sqrt3_gt'; nlinarith

/-- **The larger-root lemma**: an upward quadratic (`A ≥ 0`) negative at `x₀` and nonnegative at
`x > x₀` stays nonnegative at every `x₁ ≥ x`. -/
theorem quad_up {A B C x0 x x1 : ℝ} (hA : 0 ≤ A) (h0 : x0 < x) (h1 : x ≤ x1)
    (q0 : A * x0 ^ 2 + B * x0 + C < 0) (q : 0 ≤ A * x ^ 2 + B * x + C) :
    0 ≤ A * x1 ^ 2 + B * x1 + C := by
  by_contra hn; push Not at hn
  have e : (x1 - x0) * (A * x ^ 2 + B * x + C) = (x1 - x) * (A * x0 ^ 2 + B * x0 + C) +
      (x - x0) * (A * x1 ^ 2 + B * x1 + C) - A * (x - x0) * (x1 - x) * (x1 - x0) := by ring
  have p1 : (x1 - x) * (A * x0 ^ 2 + B * x0 + C) ≤ 0 :=
    mul_nonpos_of_nonneg_of_nonpos (by linarith) q0.le
  have p2 : (x - x0) * (A * x1 ^ 2 + B * x1 + C) < 0 := mul_neg_of_pos_of_neg (by linarith) hn
  have p3 : 0 ≤ A * (x - x0) * (x1 - x) * (x1 - x0) :=
    mul_nonneg (mul_nonneg (mul_nonneg hA (by linarith)) (by linarith)) (by linarith)
  have p4 : 0 ≤ (x1 - x0) * (A * x ^ 2 + B * x + C) := mul_nonneg (by linarith) q
  linarith

/-- `σ = 8/73 < 2A₀`. -/
theorem σ_lt : (8 / 73 : ℝ) < 2 * A₀ := by have := A₀_bounds; linarith

/-- `ρ = 49/60 < (4 + 2√3)σ`. -/
theorem kσ_gt : (49 / 60 : ℝ) < (4 + 2 * Real.sqrt 3) * (8 / 73) := by
  have := sqrt3_bounds; nlinarith

/-- `(4 + 2√3)σ < 9/10`. -/
theorem kσ_lt : (4 + 2 * Real.sqrt 3) * (8 / 73) < 9 / 10 := by
  have := sqrt3_bounds; nlinarith

/-- **The area oracle**: three distinct points of a configuration of least area at least `A₀`
span a doubled area at least `σ = 8/73` in absolute value. -/
theorem ar {n : ℕ} {P : Fin n → Point} (hP : A₀ ≤ minTriangleArea P) (i j k : Fin n)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    8 / 73 ≤ |sarea (P i) (P j) (P k)| := by
  have := area_of_le_min hP i j k hij hjk hik
  rw [triangleArea_eq] at this
  linarith [σ_lt]

/-- The same at the threshold `7/64`. -/
theorem ar7 {n : ℕ} {P : Fin n → Point} (hP : A₀ ≤ minTriangleArea P) (i j k : Fin n)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    7 / 64 ≤ |sarea (P i) (P j) (P k)| := by
  have := ar hP i j k hij hjk hik
  linarith

theorem ar_pos {t x : ℝ} (h : t ≤ |x|) (hx : 0 ≤ x) : t ≤ x := by
  rwa [abs_of_nonneg hx] at h

theorem ar_neg {t x : ℝ} (h : t ≤ |x|) (hx : x ≤ 0) : x ≤ -t := by
  rw [abs_of_nonpos hx] at h; linarith

theorem ar_ne {t x : ℝ} (ht : 0 < t) (h : t ≤ |x|) : x ≠ 0 := by
  rintro rfl; simp at h; linarith

theorem ar_cases {t x : ℝ} (h : t ≤ |x|) : t ≤ x ∨ x ≤ -t := by
  rcases le_or_gt 0 x with hx | hx
  · exact Or.inl (ar_pos h hx)
  · exact Or.inr (ar_neg h hx.le)

/-- A sub-configuration of five points. -/
theorem min5 {n : ℕ} {P : Fin n → Point} {t : ℝ} (hP : t ≤ minTriangleArea P) (a b e j k : Fin n)
    (hinj : Function.Injective ![a, b, e, j, k]) :
    t ≤ minTriangleArea ![P a, P b, P e, P j, P k] :=
  CornerFamilies.min_sub hP _ ![a, b, e, j, k] (by norm_num) hinj
    (by intro i; fin_cases i <;> rfl)

/-- **The two-interior-point lemma** in doubled form: a triangle of the configuration with two
further points of the configuration strictly inside has doubled area at least `(4 + 2√3)σ`. -/
theorem two_in {n : ℕ} {P : Fin n → Point} (hP : A₀ ≤ minTriangleArea P) (a b e j k : Fin n)
    (hinj : Function.Injective ![a, b, e, j, k])
    (h₁ : InsideTri (P j) (P a) (P b) (P e)) (h₂ : InsideTri (P k) (P a) (P b) (P e)) :
    (4 + 2 * Real.sqrt 3) * (8 / 73) ≤ |sarea (P a) (P b) (P e)| := by
  have := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ h₁ h₂ A₀ A₀_pos (min5 hP a b e j k hinj)
  rw [triangleArea_eq] at this
  have := sqrt3_bounds
  nlinarith [σ_lt]

/-- The same, with the threshold `7/64`. -/
theorem two_in7 {n : ℕ} {P : Fin n → Point} (hP : A₀ ≤ minTriangleArea P) (a b e j k : Fin n)
    (hinj : Function.Injective ![a, b, e, j, k])
    (h₁ : InsideTri (P j) (P a) (P b) (P e)) (h₂ : InsideTri (P k) (P a) (P b) (P e)) :
    (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ |sarea (P a) (P b) (P e)| := by
  have := two_in hP a b e j k hinj h₁ h₂
  have := sqrt3_bounds
  nlinarith

/-- A triangle with a point strictly inside (counterclockwise) has doubled area at least `3σ`
when the three subtriangles have doubled area at least `σ`. -/
theorem one_in {t : ℝ} {X A B C : Point} (hX : InTriangle X A B C) (h1 : t ≤ |sarea A B X|)
    (h2 : t ≤ |sarea B C X|) (h3 : t ≤ |sarea C A X|) : 3 * t ≤ sarea A B C := by
  obtain ⟨p1, p2, p3⟩ := hX
  rw [abs_of_pos p1] at h1; rw [abs_of_pos p2] at h2; rw [abs_of_pos p3] at h3
  have := sarea_add_sarea_add_sarea A B C X
  linarith

/-- The Grassmann–Plücker identity with base point `D`. -/
theorem gp (D X Y Z W : Point) :
    sarea D X W * sarea D Y Z = sarea D X Z * sarea D Y W - sarea D X Y * sarea D Z W := by
  unfold sarea; ring

/-- The barycentric identity of the top cap `D, F, E = (1,1)`: an affine function `[PQ·]` at
`X` is the combination of its values at `F, D, E` with the weights `(1-d)(1-x)`, `(1-f)(1-y)`,
`-[DFX]`. -/
theorem cap_bary (d f : ℝ) (P Q X : Point) :
    (1 - f) * (1 - d) * sarea P Q X = sarea P Q (ptF f) * (1 - d) * (1 - X.1) +
      sarea P Q (ptD d) * (1 - f) * (1 - X.2) + sarea P Q (1, 1) * -sarea (ptD d) (ptF f) X := by
  simp only [sarea, ptD, ptF]; ring

/-- An affine function `[PQ·]` nonnegative at `D, F` and positive at `(1,1)` is positive at every
point of the square strictly beyond `DF`. -/
theorem cap_sign {d f : ℝ} {P Q X : Point} (hd : d < 1) (hf : f < 1) (hX : X ∈ unitSquare)
    (hr : 0 < -sarea (ptD d) (ptF f) X) (hD : 0 ≤ sarea P Q (ptD d))
    (hF : 0 ≤ sarea P Q (ptF f)) (hE : 0 < sarea P Q (1, 1)) : 0 < sarea P Q X := by
  have e := cap_bary d f P Q X
  obtain ⟨-, x1, -, y1⟩ := hX
  have h1 : 0 ≤ sarea P Q (ptF f) * (1 - d) * (1 - X.1) :=
    mul_nonneg (mul_nonneg hF (by linarith)) (by linarith)
  have h2 : 0 ≤ sarea P Q (ptD d) * (1 - f) * (1 - X.2) :=
    mul_nonneg (mul_nonneg hD (by linarith)) (by linarith)
  have h3 : 0 < sarea P Q (1, 1) * -sarea (ptD d) (ptF f) X := mul_pos hE hr
  have h4 : 0 < (1 - f) * (1 - d) := mul_pos (by linarith) (by linarith)
  by_contra hn; push Not at hn
  nlinarith [mul_nonpos_iff.2 (Or.inl ⟨h4.le, hn⟩)]

/-- In a configuration of least area at least `A₀`, a triangle of the configuration containing a
further point of the configuration (counterclockwise) has doubled area at least `3σ`. -/
theorem in_ge3 {n : ℕ} {P : Fin n → Point} (hP : A₀ ≤ minTriangleArea P) (a b e j : Fin n)
    (h : InTriangle (P j) (P a) (P b) (P e))
    (hab : a ≠ b := by decide) (hbe : b ≠ e := by decide) (hae : a ≠ e := by decide)
    (haj : a ≠ j := by decide) (hbj : b ≠ j := by decide) (hej : e ≠ j := by decide) :
    3 * (8 / 73) ≤ sarea (P a) (P b) (P e) :=
  one_in h (ar hP a b j hab hbj haj) (ar hP b e j hbe hej hbj) (ar hP e a j hae.symm haj hej)

/-- A point is not strictly inside a triangle of which it is a vertex. -/
theorem not_inside_vertex (X A B : Point) : ¬ InsideTri X A B X := by
  rintro (⟨-, h, -⟩ | ⟨h, -, -⟩) <;> simp only [sarea] at h <;> linarith

/-- The eight points `O, C, D, F, H, L, M, X` of a nine-point C1 configuration. -/
theorem min8 {h c d f : ℝ} {L M X P : Point}
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M X P)) :
    A₀ ≤ minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] := by
  have := le_min_comp (by norm_num) (c1Config h c d f L M X P) (f := Fin.castSucc)
    (Fin.castSucc_injective 8)
  have e : (c1Config h c d f L M X P ∘ Fin.castSucc) = ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] := by
    funext i; fin_cases i <;> rfl
  rw [e] at this; exact hmin.trans this

/-- A triangle of doubled area below `3σ` contains no further point of the configuration. -/
theorem ear_empty {n : ℕ} {P : Fin n → Point} (hP : A₀ ≤ minTriangleArea P) (a b e j : Fin n)
    (hlt : |sarea (P a) (P b) (P e)| < 3 * (8 / 73))
    (hab : a ≠ b := by decide) (hbe : b ≠ e := by decide) (hae : a ≠ e := by decide)
    (haj : a ≠ j := by decide) (hbj : b ≠ j := by decide) (hej : e ≠ j := by decide) :
    ¬ InsideTri (P j) (P a) (P b) (P e) := by
  rintro (h1 | h1)
  · have := in_ge3 hP a b e j h1 hab hbe hae haj hbj hej
    have := le_abs_self (sarea (P a) (P b) (P e)); linarith
  · have := in_ge3 hP a e b j h1 hae hbe.symm hab haj hej hbj
    rw [sarea_swap₂₃] at this
    have := neg_abs_le (sarea (P a) (P b) (P e)); linarith

/-- A lower point lies on the inner sides of `XH` and `CX` when `X` is above `HC`. -/
theorem lower_sides {h c : ℝ} {X R : Point} (hh : 0 < h) (hc : 0 < c)
    (hHCX : 0 < sarea (ptH h) (ptC c) X) (hx0 : 0 < X.1) (hy0 : 0 < X.2) (hR : InLower h c R) :
    0 < sarea X (ptH h) R ∧ 0 < sarea (ptC c) X R := by
  obtain ⟨r1, r2, r3⟩ := hR
  have hpc : 0 < h * c := mul_pos hh hc
  constructor
  · have g := gp (ptH h) X ptO (ptC c) R
    have q1 : sarea (ptH h) ptO (ptC c) = h * c := by simp only [sarea, ptH, ptO, ptC]; ring
    have q2 : sarea (ptH h) X (ptC c) = -sarea (ptH h) (ptC c) X := by simp only [sarea]; ring
    have q3 : sarea (ptH h) X ptO = -(h * X.1) := by simp only [sarea, ptH, ptO]; ring
    have q4 : sarea (ptH h) (ptC c) R = -sarea (ptC c) (ptH h) R := by simp only [sarea]; ring
    have q5 : sarea (ptH h) X R = -sarea X (ptH h) R := by simp only [sarea]; ring
    rw [q1, q2, q3, q4, q5] at g
    by_contra hn; push Not at hn
    have p1 := mul_pos hHCX r3
    have p2 := mul_pos (mul_pos hh hx0) r2
    have p3 := mul_nonneg (show (0 : ℝ) ≤ -sarea X (ptH h) R by linarith) hpc.le
    linarith
  · have g := gp (ptC c) X ptO (ptH h) R
    have q1 : sarea (ptC c) ptO (ptH h) = -(h * c) := by simp only [sarea, ptH, ptO, ptC]; ring
    have q2 : sarea (ptC c) X (ptH h) = sarea (ptH h) (ptC c) X := by simp only [sarea]; ring
    have q3 : sarea (ptC c) X ptO = c * X.2 := by simp only [sarea, ptC, ptO]; ring
    have q4 : sarea (ptC c) ptO R = -sarea ptO (ptC c) R := by simp only [sarea]; ring
    rw [q1, q2, q3, q4] at g
    by_contra hn; push Not at hn
    have p1 := mul_pos hHCX r1
    have p2 := mul_pos (mul_pos hc hy0) r2
    have p3 := mul_nonneg (show (0 : ℝ) ≤ -sarea (ptC c) X R by linarith) hpc.le
    linarith

/-- Coordinates of a lower point: `r, z > 0`, `z < h`, `cz + hr < hc`. -/
theorem low_pt {h c : ℝ} {R : Point} (h0 : 0 < h) (c0 : 0 < c) (hR : InLower h c R) :
    0 < R.1 ∧ 0 < R.2 ∧ R.2 < h ∧ c * R.2 + h * R.1 < h * c ∧ sarea ptO (ptC c) R = c * R.2 ∧
      sarea (ptC c) (ptH h) R = h * c - c * R.2 - h * R.1 ∧ sarea (ptH h) ptO R = h * R.1 := by
  obtain ⟨r1, r2, r3⟩ := hR
  have q1 : sarea ptO (ptC c) R = c * R.2 := by simp only [sarea, ptO, ptC]; ring
  have q2 : sarea (ptC c) (ptH h) R = h * c - c * R.2 - h * R.1 := by
    simp only [sarea, ptC, ptH]; ring
  have q3 : sarea (ptH h) ptO R = h * R.1 := by simp only [sarea, ptO, ptH]; ring
  rw [q1] at r1; rw [q2] at r2; rw [q3] at r3
  have hr0 : 0 < R.1 := pos_of_mul_pos_right r3 h0.le
  have hz0 : 0 < R.2 := pos_of_mul_pos_right r1 c0.le
  have hzh : R.2 < h := by
    by_contra hn; push Not at hn
    have := mul_le_mul_of_nonneg_left hn c0.le
    have := mul_pos h0 hr0
    linarith
  exact ⟨hr0, hz0, hzh, by linarith, q1, q2, q3⟩

theorem sign_trans {a b c : ℝ} (h1 : a * b < 0) (h2 : 0 < b * c) : a * c < 0 := by
  have hb : b ≠ 0 := by rintro rfl; simp at h1
  have hbb : 0 < b * b := mul_self_pos.2 hb
  have e : (a * c) * (b * b) = (a * b) * (b * c) := by ring
  by_contra hn; push Not at hn
  have := mul_nonneg hn hbb.le
  have := mul_neg_of_neg_of_pos h1 h2
  linarith

/-! ### Transposition -/

/-- The transposition `(x, y) ↦ (y, x)` of the square. -/
def tp (p : Point) : Point := (p.2, p.1)

theorem sarea_tp (p q r : Point) : sarea (tp p) (tp q) (tp r) = -sarea p q r := by
  unfold sarea tp; ring

theorem tp_mem {p : Point} (hp : p ∈ unitSquare) : tp p ∈ unitSquare := by
  obtain ⟨a, b, c, d⟩ := hp; exact ⟨c, d, a, b⟩

theorem tp_tp (p : Point) : tp (tp p) = p := rfl

/-- Transposition preserves the least area. -/
theorem min_tp {n : ℕ} (P : Fin n → Point) :
    minTriangleArea (fun i => tp (P i)) = minTriangleArea P := by
  have := minTriangleArea_affineMap 0 1 1 0 0 0 P
  have e : (affineMap 0 1 1 0 0 0 ∘ P) = fun i => tp (P i) := by
    funext i; simp [affineMap, tp]
  rw [e] at this; rw [this]; norm_num

theorem inTriangle_tp {X A B C : Point} : InTriangle (tp X) (tp A) (tp C) (tp B) ↔
    InTriangle X A B C := by
  unfold InTriangle
  rw [sarea_tp, sarea_tp, sarea_tp]
  constructor
  · rintro ⟨h1, h2, h3⟩
    refine ⟨?_, ?_, ?_⟩ <;>
      linarith [sarea_swap₁₂ A B X, sarea_swap₁₂ B C X, sarea_swap₁₂ C A X]
  · rintro ⟨h1, h2, h3⟩
    refine ⟨?_, ?_, ?_⟩ <;>
      linarith [sarea_swap₁₂ A B X, sarea_swap₁₂ B C X, sarea_swap₁₂ C A X]

theorem insideTri_tp {X A B C : Point} : InsideTri (tp X) (tp A) (tp B) (tp C) ↔
    InsideTri X A B C := by
  unfold InsideTri
  rw [inTriangle_tp (A := A) (B := C) (C := B), inTriangle_tp (A := A) (B := B) (C := C)]
  exact or_comm

/-- The relabelling of the nine C1 indices under transposition (`O, C, D, F, H ↦ O, H, F, D, C`). -/
def trPerm : Equiv.Perm (Fin 9) :=
  ⟨![0, 4, 3, 2, 1, 5, 6, 7, 8], ![0, 4, 3, 2, 1, 5, 6, 7, 8], by decide, by decide⟩

theorem c1_tp (h c d f : ℝ) (W X Y Z : Point) :
    c1Config c h f d (tp W) (tp X) (tp Y) (tp Z) =
      fun i => tp ((c1Config h c d f W X Y Z ∘ trPerm) i) := by
  funext i; fin_cases i <;> rfl

/-- **Transposition** of a C1 configuration preserves the least area. -/
theorem min_c1_tp (h c d f : ℝ) (W X Y Z : Point) :
    minTriangleArea (c1Config c h f d (tp W) (tp X) (tp Y) (tp Z)) =
      minTriangleArea (c1Config h c d f W X Y Z) := by
  rw [c1_tp, min_tp, minTriangleArea_comp_perm]

/-- Exchanging the last two free points preserves the least area. -/
theorem min_c1_swap34 (h c d f : ℝ) (W X Y Z : Point) :
    minTriangleArea (c1Config h c d f W X Z Y) = minTriangleArea (c1Config h c d f W X Y Z) := by
  have e : c1Config h c d f W X Z Y = c1Config h c d f W X Y Z ∘ Equiv.swap 7 8 := by
    funext i; fin_cases i <;> rfl
  rw [e, minTriangleArea_comp_perm]

/-- Exchanging the first two free points preserves the least area. -/
theorem min_c1_swap12 (h c d f : ℝ) (W X Y Z : Point) :
    minTriangleArea (c1Config h c d f X W Y Z) = minTriangleArea (c1Config h c d f W X Y Z) := by
  have e : c1Config h c d f X W Y Z = c1Config h c d f W X Y Z ∘ Equiv.swap 5 6 := by
    funext i; fin_cases i <;> rfl
  rw [e, minTriangleArea_comp_perm]

theorem tp_O : tp ptO = ptO := rfl
theorem tp_C (c : ℝ) : tp (ptC c) = ptH c := rfl
theorem tp_H (h : ℝ) : tp (ptH h) = ptC h := rfl
theorem tp_D (d : ℝ) : tp (ptD d) = ptF d := rfl
theorem tp_F (f : ℝ) : tp (ptF f) = ptD f := rfl

/-- Transposition preserves the lower triangle. -/
theorem inLower_tp {h c : ℝ} {L : Point} (hL : InLower h c L) : InLower c h (tp L) := by
  unfold InLower
  have := (inTriangle_tp (X := L) (A := ptO) (B := ptC c) (C := ptH h)).2 hL
  rwa [tp_O, tp_H, tp_C] at this

theorem inTriangle_rot {X A B C : Point} : InTriangle X A B C ↔ InTriangle X B C A := by
  unfold InTriangle; tauto

theorem insideTri_rot {X A B C : Point} : InsideTri X A B C ↔ InsideTri X B C A := by
  unfold InsideTri
  unfold InTriangle; tauto

theorem insideTri_swap {X A B C : Point} : InsideTri X A B C ↔ InsideTri X A C B := by
  unfold InsideTri; tauto

/-- Transposition of the eight-point configuration `O, C, D, F, H, L, M, X`. -/
theorem min8_tp (h c d f : ℝ) (L M X : Point) :
    minTriangleArea ![ptO, ptC h, ptD f, ptF d, ptH c, tp L, tp M, tp X] =
      minTriangleArea ![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] := by
  set σ8 : Equiv.Perm (Fin 8) :=
    ⟨![0, 4, 3, 2, 1, 5, 6, 7], ![0, 4, 3, 2, 1, 5, 6, 7], by decide, by decide⟩
  have e : ![ptO, ptC h, ptD f, ptF d, ptH c, tp L, tp M, tp X] =
      fun i => tp ((![ptO, ptC c, ptD d, ptF f, ptH h, L, M, X] ∘ σ8) i) := by
    funext i; fin_cases i <;> rfl
  rw [e, min_tp, minTriangleArea_comp_perm]

end Heilbronn.Nine.C1TwoLower
