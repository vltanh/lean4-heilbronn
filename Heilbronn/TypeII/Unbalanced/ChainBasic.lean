module

public import Heilbronn.TypeII.Unbalanced.RightHull
public import Heilbronn.TypeII.TypeII.Normalization

/-! # Shared tools for the one-upper chain of the unbalanced Type-II notes

Helpers used by `UNBALANCED_ONE_UPPER_RADIAL`, `UNBALANCED_OCCUPIED_LOWER_EAR`,
`UNBALANCED_FINAL_NEGATIVE_LINE`, `UNBALANCED_FINAL_UPPER_PAIR` and
`UNBALANCED_FINAL_LOWER_WEDGE`:

* `bary`: the barycentric identity `[ABC]·f(X) = [BCX]f(A) + [CAX]f(B) + [ABX]f(C)` for the
  affine function `f = [YZ·]`; with it every "an affine function on a triangle is bounded by its
  vertex values" and every diagonal-partition step of the notes is linear arithmetic;
* `abs_ge`, `ge_of_pos`, `le_of_neg`: doubled areas of a configuration from a bound on its least
  area;
* `cap_one`, `two_inside`, `one_inside`: a triangle of three configuration points with doubled
  area below `Ks` contains at most one further point (`CORNER_FAMILIES.md` §7), and a triangle
  with one (two) interior configuration points has doubled area at least `3s` (`Ks`);
* facts on the anchors and the containers: right points lie below `CE`, central points below
  `CE` are inside `EBC`, the coordinate ranges of right and central points.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedChain

open UnbalancedRightHull

/-! ### The barycentric identity -/

/-- `[ABC]·[YZX] = [BCX][YZA] + [CAX][YZB] + [ABX][YZC]`. -/
theorem bary (A B C X Y Z : Point) :
    sarea A B C * sarea Y Z X =
      sarea B C X * sarea Y Z A + sarea C A X * sarea Y Z B + sarea A B X * sarea Y Z C := by
  unfold sarea; ring

/-- A point strictly inside a triangle whose vertices are on the nonnegative side of a line,
not all on it, is strictly on the positive side. -/
theorem pos_of_inside {A B C X Y Z : Point} (hX : InTriangle X A B C) (hA : 0 ≤ sarea Y Z A)
    (hB : 0 ≤ sarea Y Z B) (hC : 0 ≤ sarea Y Z C)
    (hne : 0 < sarea Y Z A ∨ 0 < sarea Y Z B ∨ 0 < sarea Y Z C) : 0 < sarea Y Z X := by
  obtain ⟨h1, h2, h3⟩ := hX
  have e := bary A B C X Y Z
  have hABC : 0 < sarea A B C := by linarith [sarea_add_sarea_add_sarea A B C X]
  have : 0 < sarea A B C * sarea Y Z X := by
    rw [e]
    rcases hne with h | h | h
    · nlinarith [mul_nonneg h3.le hC, mul_nonneg h1.le hB, mul_pos h2 h]
    · nlinarith [mul_nonneg h3.le hC, mul_nonneg h2.le hA, mul_pos h1 h]
    · nlinarith [mul_nonneg h1.le hB, mul_nonneg h2.le hA, mul_pos h3 h]
  exact pos_of_mul_pos_right this hABC.le

/-! ### Doubled areas from the least area -/

theorem abs_ge {n : ℕ} {X : Fin n → Point} {s : ℝ} (h : s / 2 ≤ minTriangleArea X)
    (i j k : Fin n) (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide)
    (hik : i ≠ k := by decide) : s ≤ |sarea (X i) (X j) (X k)| :=
  TypeII.le_abs_sarea_of_le_min h i j k hij hjk hik

theorem ge_of_pos {x s : ℝ} (h : s ≤ |x|) (hx : 0 < x) : s ≤ x := by
  rwa [abs_of_pos hx] at h

theorem le_of_neg {x s : ℝ} (h : s ≤ |x|) (hx : x < 0) : x ≤ -s := by
  rw [abs_of_neg hx] at h; linarith

theorem ne_of_abs {x s : ℝ} (hs : 0 < s) (h : s ≤ |x|) : x ≠ 0 := by
  rintro rfl; simp at h; linarith

/-! ### Interior points and capacity -/

/-- A triangle containing a point has doubled area at least `3s`. -/
theorem one_inside {A B C X : Point} {s : ℝ} (h1 : s ≤ sarea A B X)
    (h2 : s ≤ sarea B C X) (h3 : s ≤ sarea C A X) : 3 * s ≤ sarea A B C := by
  linarith [sarea_add_sarea_add_sarea A B C X]

theorem inj5 {n : ℕ} {a b c i j : Fin n} (hab : a ≠ b) (hbc : b ≠ c) (hac : a ≠ c)
    (hia : i ≠ a) (hib : i ≠ b) (hic : i ≠ c) (hja : j ≠ a) (hjb : j ≠ b) (hjc : j ≠ c)
    (hij : i ≠ j) : Function.Injective ![a, b, c, i, j] := by
  intro x y hxy
  fin_cases x <;> fin_cases y <;> simp only at hxy <;>
    first | rfl | exact absurd hxy ‹_› | exact absurd hxy.symm ‹_›

theorem ne_of_inside_a {X A B C : Point} (h : InTriangle X A B C) : X ≠ A := by
  rintro rfl; have := h.1; simp [sarea] at this

theorem ne_of_inside_b {X A B C : Point} (h : InTriangle X A B C) : X ≠ B := by
  rintro rfl; have := h.1; simp [sarea] at this; nlinarith [this]

theorem ne_of_inside_c {X A B C : Point} (h : InTriangle X A B C) : X ≠ C := by
  rintro rfl; have := h.2.1; simp [sarea] at this; nlinarith [this]

/-- Two further configuration points inside a triangle of configuration points force doubled
area at least `Ks` (`CORNER_FAMILIES.md` §7). -/
theorem two_inside {n : ℕ} {X : Fin n → Point} {s : ℝ} (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea X) (a b c i j : Fin n) (hij : i ≠ j)
    (hi : InTriangle (X i) (X a) (X b) (X c)) (hj : InTriangle (X j) (X a) (X b) (X c)) :
    Kc * s ≤ sarea (X a) (X b) (X c) := by
  have hpos : 0 < sarea (X a) (X b) (X c) := by
    obtain ⟨h1, h2, h3⟩ := hi; linarith [sarea_add_sarea_add_sarea (X a) (X b) (X c) (X i)]
  have hab : a ≠ b := by rintro rfl; simp [sarea] at hpos
  have hbc : b ≠ c := by rintro rfl; simp [sarea] at hpos; linarith
  have hac : a ≠ c := by rintro rfl; simp [sarea] at hpos
  have hia : i ≠ a := fun e => ne_of_inside_a hi (by rw [e])
  have hib : i ≠ b := fun e => ne_of_inside_b hi (by rw [e])
  have hic : i ≠ c := fun e => ne_of_inside_c hi (by rw [e])
  have hja : j ≠ a := fun e => ne_of_inside_a hj (by rw [e])
  have hjb : j ≠ b := fun e => ne_of_inside_b hj (by rw [e])
  have hjc : j ≠ c := fun e => ne_of_inside_c hj (by rw [e])
  have hsub : s / 2 ≤ minTriangleArea ![X a, X b, X c, X i, X j] :=
    hmin.trans (TypeII.min_le_min_reindex (by norm_num) X _ ![a, b, c, i, j]
      (inj5 hab hbc hac hia hib hic hja hjb hjc hij) (by funext m; fin_cases m <;> rfl))
  have key := CornerFamilies.twoInteriorPointLemma (X a) (X b) (X c) (X i) (X j) (Or.inl hi)
    (Or.inl hj) (s / 2) (by positivity) hsub
  rw [triangleArea_eq, abs_of_pos hpos] at key
  unfold Kc; linarith

/-- A triangle of configuration points with doubled area below `Ks` contains at most one further
configuration point. -/
theorem cap_one {n : ℕ} {X : Fin n → Point} {s : ℝ} (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea X) (a b c : Fin n)
    (hsmall : sarea (X a) (X b) (X c) < Kc * s) : AtMostOneInside X (X a) (X b) (X c) := by
  intro i j hi hj
  by_contra hij
  have := two_inside hs hmin a b c i j hij hi hj
  linarith

/-- The arithmetic-geometric mean inequality `2√(pq) ≤ p + q`. -/
theorem amgm {p q : ℝ} (hp : 0 ≤ p) (hq : 0 ≤ q) : 2 * Real.sqrt (p * q) ≤ p + q := by
  have h1 := Real.sq_sqrt (mul_nonneg hp hq)
  have h2 := Real.sqrt_nonneg (p * q)
  nlinarith [sq_nonneg (p - q), sq_nonneg (2 * Real.sqrt (p * q) - (p + q))]

/-! ### Constants -/

theorem sqrt3_gt : (12 / 7 : ℝ) < Real.sqrt 3 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

theorem sqrt3_lt : Real.sqrt 3 < 7 / 4 := by
  rw [Real.sqrt_lt' (by norm_num)]; norm_num

theorem Kc_gt : (52 / 7 : ℝ) < Kc := by unfold Kc; linarith [sqrt3_gt]

theorem Kc_lt : Kc < 15 / 2 := by unfold Kc; linarith [sqrt3_lt]

theorem Kc_s_gt : (13 / 16 : ℝ) < Kc * (8 / 73) := by nlinarith [Kc_gt]

theorem Kc_s7_gt : (13 / 16 : ℝ) < Kc * (7 / 64) := by nlinarith [Kc_gt]

/-- `8/73 < 2A₀`, i.e. `4/73 ≤ A₀`. -/
theorem s_le_A₀ : (4 / 73 : ℝ) ≤ A₀ := by linarith [A₀_bounds.2.1]

theorem s7_le_A₀ : (7 / 128 : ℝ) ≤ A₀ := A₀_bounds.1.le

/-! ### The anchors -/

theorem sarea_ECX (l : ℝ) (X : Point) : sarea (ptE l) ptC X = X.2 - l - (1 - l) * X.1 := by
  simp only [sarea, ptE, ptC]; ring

theorem sarea_DRX (R X : Point) : sarea ptD R X = R.1 * (X.2 - 1) - (R.2 - 1) * X.1 := by
  simp only [sarea, ptD]; ring

theorem sarea_BXC (b : ℝ) (X : Point) : sarea (ptB b) X ptC = X.1 - b - X.2 * (1 - b) := by
  simp only [sarea, ptB, ptC]; ring

/-- A point of the square strictly right of `BC`. -/
theorem right_facts {b : ℝ} {X : Point} (hb : 0 < b) (_hb1 : b < 1) (hX : X ∈ unitSquare)
    (hr : 0 < sarea (ptB b) X ptC) : b < X.1 ∧ X.2 < X.1 ∧ X.2 < 1 ∧ 0 ≤ X.2 ∧ X.1 ≤ 1 := by
  obtain ⟨x0, x1, y0, y1⟩ := hX
  rw [sarea_BXC] at hr
  refine ⟨by nlinarith, by nlinarith, by nlinarith, y0, x1⟩

/-- Right points lie strictly below `CE`. -/
theorem right_below_CE {l b : ℝ} {X : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l)
    (hX : X ∈ unitSquare) (hr : 0 < sarea (ptB b) X ptC) : sarea (ptE l) ptC X < 0 := by
  obtain ⟨_, h2, _, _, h5⟩ := right_facts hb hb1 hX hr
  rw [sarea_ECX]
  nlinarith

/-- A central point (strictly inside `DBC`). -/
theorem central_facts {b : ℝ} {X : Point} (hb : 0 < b) (_hb1 : b < 1)
    (hX : InTriangle X ptD (ptB b) ptC) :
    0 < X.1 ∧ 0 < X.2 ∧ X.2 < 1 ∧ b * (1 - X.2) < X.1 ∧ 0 < sarea (ptB b) ptC X := by
  obtain ⟨h1, h2, h3⟩ := hX
  simp only [sarea, ptD, ptB, ptC] at h1 h2 h3 ⊢
  refine ⟨by nlinarith, by nlinarith, by nlinarith, by nlinarith, by nlinarith⟩

/-- A central point below `CE` is inside `EBC`. -/
theorem central_EBC {l b : ℝ} {X : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l) (hl1 : l < 1)
    (hX : InTriangle X ptD (ptB b) ptC) (hbelow : sarea (ptE l) ptC X < 0) :
    InTriangle X (ptE l) (ptB b) ptC :=
  ((TypeII.claim_central_cut hb hb1 hl hl1 hX).2).2 hbelow

theorem central_mem {b : ℝ} {X : Point} (hb : 0 < b) (hb1 : b < 1)
    (hX : InTriangle X ptD (ptB b) ptC) : X ∈ unitSquare := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := central_facts hb hb1 hX
  rw [sarea_swap₂₃, sarea_BXC] at h5
  exact ⟨h1.le, by nlinarith, h2.le, h3.le⟩

variable {l b : ℝ} {P Q R S T : Point}

/-- The standing row as Type-II data (`TYPE_II.md` (5)). -/
theorem row_data (h : Row123 l b P Q R S T) : TypeII.TypeIIData l b P Q R S T :=
  ⟨h.b_pos, by linarith [h.b_le], h.l_pos, h.l_lt,
    central_mem h.b_pos (by linarith [h.b_le]) h.P_central,
    central_mem h.b_pos (by linarith [h.b_le]) h.Q_central, h.R_mem, h.S_mem, h.T_mem⟩

theorem isRight_of {b : ℝ} {X : Point} (h : 0 < sarea (ptB b) X ptC) : TypeII.IsRight b X := by
  unfold TypeII.IsRight
  have : sarea (ptB b) X ptC = -sarea (ptB b) ptC X := sarea_swap₂₃ _ _ _
  have e : sarea (TypeII.ptB b) TypeII.ptC X = sarea (ptB b) ptC X := rfl
  rw [e]; linarith

/-- `bq ≥ 7/64` (`[DEB]`) and `b < 4/11` (the endpoint-triangle theorem in the right container,
`TYPE_II.md` §11). -/
theorem row_b_bounds (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    7 / 64 ≤ b * (1 - l) ∧ b < 4 / 11 := by
  have hd := row_data h
  have hb1 : b < 1 := by linarith [h.b_le]
  have hmin' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by linarith
  have hDEB := TypeII.s_le_DEB hd hmin'
  have hR3 := (TypeII.min_le_sub_CB3 (l := l) (b := b) (V := P) (W := Q) (X := R) (Y := S)
    (Z := T) 2 3 4 (by decide) (by decide) (by decide)).trans (TypeII.right_three_bound hb1
      (TypeII.freePts_mem hd 2) (TypeII.freePts_mem hd 3) (TypeII.freePts_mem hd 4)
      (isRight_of h.R_right) (isRight_of h.S_right) (isRight_of h.T_right))
  have h181 : (181 : ℝ) / 128 < Real.sqrt 2 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have hk : TypeII.kEnd < 11 / 64 := by unfold TypeII.kEnd; linarith
  have hk0 := TypeII.kEnd_pos
  refine ⟨hDEB, ?_⟩
  nlinarith

end Heilbronn.UnbalancedChain
