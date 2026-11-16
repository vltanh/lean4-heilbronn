module

public import Heilbronn.TypeII.TypeIICompletion.Signs
public import Heilbronn.Hulls.FourInteriorQuadrilaterals
public import Heilbronn.Corners.CornerFamilies.SupportTriangle

/-! # Two-vertex capacity, the interval family, opposite vertices
(`hand/TYPE_II_COMPLETION.md`, §§1–3)

`TYPE_II_COMPLETION.md` lines 37–206, in general form (no Type-II anchors are needed except for
the interval family of §2, whose two occupied corners are `(0,1)` and `(1,1)`). These results are
used by the C1 notes (Theorem 1) and are consequences of the global capacity theorem
(`THREE_INTERIOR_TRIANGLES.md` Corollary 5); they must not be used upstream of it
(`TYPE_II_COMPLETION.md` lines 204–206).

* `theorem1` (**Theorem 1**): in a nine-point configuration in the square of least area at
  least `A₀`, a closed triangle `UVW` of area at most `1/2` with two actual vertices `U, V` and an
  arbitrary third vertex `W` contains at most three further configuration points;
* `intervalI`, `eq2` ((1)–(2)): the interval `I_X` with `X ∈ conv{D, C, (z,0)} ↔ z ∈ I_X`;
* `corollary2` (**Corollary 2**) and `eq3` ((3)): the interval family has depth at most three
  (off-route);
* `corollary3` (**Corollary 3**): a competitive configuration has no two opposite square corners
  (off-route on the primary route), and `corollary3_parallelogram`, its general form: no enclosing
  parallelogram of area at most one has two opposite actual vertices.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion


/-! ### The six-point step of Theorem 1 -/

/-- Four distinct indices of `Fin 6`: three distinct ones leave exactly three others. -/
theorem card_compl_three : ∀ a b c : Fin 6, a ≠ b → b ≠ c → a ≠ c →
    (Finset.univ.filter fun m => m ≠ a ∧ m ≠ b ∧ m ≠ c).card = 3 := by
  decide

/-- If every point of a six-point configuration of positive least area lies in the convex hull of
two of its points (listed as `{S a, S a, S c}`), we have a contradiction. -/
theorem hull_degenerate {S : Fin 6 → Point} (hpos : 0 < minTriangleArea S) (a c : Fin 6)
    (hall : ∀ m, S m ∈ convexHull ℝ ({S a, S a, S c} : Set Point)) : False := by
  by_cases hac : a = c
  · subst hac
    have heq : ∀ m, S m = S a := by
      intro m
      obtain ⟨α, β, γ, -, -, -, h, hm⟩ := tc_exists_bary (hall m)
      rw [hm]
      ext
      · simp only; linear_combination (S a).1 * h
      · simp only; linear_combination (S a).2 * h
    apply sarea_ne_zero_of_min_pos hpos 0 1 2
    rw [heq 0, heq 1, heq 2]; unfold sarea; ring
  · have hex : ∀ a c : Fin 6, ∃ m : Fin 6, m ≠ a ∧ m ≠ c := by decide
    obtain ⟨m, hma, hmc⟩ := hex a c
    obtain ⟨α, β, γ, -, -, -, -, h, -, -⟩ := tc_sarea_of_mem_hull (hall m)
    have h0 : sarea (S a) (S a) (S c) = 0 := by unfold sarea; ring
    rw [h0, mul_zero] at h
    exact sarea_ne_zero_of_min_pos hpos a c m hac (Ne.symm hmc) (Ne.symm hma) h

open Classical in
/-- The capacity step of Theorem 1: six points of a configuration with triangle capacity two,
of positive least area, cannot all lie in the closed triangle spanned by three of them. -/
theorem hull_capacity {P : Fin 9 → Point}
    (hcap : ThreeInteriorTriangles.TriangleCapacityTwo P) (g : Fin 6 → Fin 9)
    (hg : Function.Injective g) (hpos : 0 < minTriangleArea (P ∘ g)) (a b c : Fin 6)
    (hall : ∀ m, P (g m) ∈ convexHull ℝ ({P (g a), P (g b), P (g c)} : Set Point)) :
    False := by
  set S := P ∘ g with hS
  have hall' : ∀ m, S m ∈ convexHull ℝ ({S a, S b, S c} : Set Point) := hall
  -- distinctness
  by_cases hab : a = b
  · subst hab; exact hull_degenerate hpos a c hall'
  by_cases hbc : b = c
  · subst hbc
    refine hull_degenerate hpos b a fun m => ?_
    have := hall' m
    rwa [show ({S a, S b, S b} : Set Point) = {S b, S b, S a} by
      ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto] at this
  by_cases hac : a = c
  · subst hac
    refine hull_degenerate hpos a b fun m => ?_
    have := hall' m
    rwa [show ({S a, S b, S a} : Set Point) = {S a, S a, S b} by
      ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto] at this
  -- the core, for a counterclockwise triple
  have core : ∀ a b c : Fin 6, a ≠ b → b ≠ c → a ≠ c → 0 < sarea (S a) (S b) (S c) →
      (∀ m, S m ∈ convexHull ℝ ({S a, S b, S c} : Set Point)) → False := by
    intro a b c hab hbc hac hΔ hall
    have hin : ∀ m, m ≠ a ∧ m ≠ b ∧ m ≠ c → InTriangle (S m) (S a) (S b) (S c) := by
      rintro m ⟨hma, hmb, hmc⟩
      obtain ⟨h1, h2, h3⟩ := tc_sarea_nonneg_of_mem_hull hΔ.le (hall m)
      refine ⟨lt_of_le_of_ne h3 (Ne.symm ?_), lt_of_le_of_ne h1 (Ne.symm ?_),
        lt_of_le_of_ne h2 (Ne.symm ?_)⟩
      · exact sarea_ne_zero_of_min_pos hpos a b m hab (Ne.symm hmb) (Ne.symm hma)
      · exact sarea_ne_zero_of_min_pos hpos b c m hbc (Ne.symm hmc) (Ne.symm hmb)
      · exact sarea_ne_zero_of_min_pos hpos c a m (Ne.symm hac) (Ne.symm hma) (Ne.symm hmc)
    have hc2 := hcap (g a) (g b) (g c) hΔ
    set T := Finset.univ.filter fun m : Fin 6 => m ≠ a ∧ m ≠ b ∧ m ≠ c
    have hsub : ((T.image g : Finset (Fin 9)) : Set (Fin 9)) ⊆
        {m | InTriangle (P m) (P (g a)) (P (g b)) (P (g c))} := by
      intro x hx
      simp only [Finset.coe_image, Set.mem_image, Finset.mem_coe, T, Finset.mem_filter,
        Finset.mem_univ, true_and] at hx
      obtain ⟨m, hm, rfl⟩ := hx
      exact hin m hm
    have h3 : (T.image g).card = 3 := by
      rw [Finset.card_image_of_injective _ hg]; exact card_compl_three a b c hab hbc hac
    have := Set.ncard_le_ncard hsub
    rw [Set.ncard_coe_finset, h3] at this
    omega
  rcases lt_or_gt_of_ne (sarea_ne_zero_of_min_pos hpos a b c hab hbc hac) with hneg | hpos'
  · refine core a c b hac (Ne.symm hbc) hab ?_ fun m => ?_
    · rw [sarea_swap₂₃]; linarith
    · have := hall' m
      rwa [show ({S a, S b, S c} : Set Point) = {S a, S c, S b} by
        ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto] at this
  · exact core a b c hab hbc hac hpos' hall'

/-- A point of the closed triangle `ABC` is in `InClosedTriangle`. -/
theorem inClosed_of_mem_hull {p A B C : Point} (hp : p ∈ convexHull ℝ ({A, B, C} : Set Point)) :
    CornerFamilies.InClosedTriangle p A B C := by
  obtain ⟨a, b, c, ha, hb, hc, -, h1, h2, h3⟩ := tc_sarea_of_mem_hull hp
  rcases le_total 0 (sarea A B C) with hΔ | hΔ
  · left; refine ⟨?_, ?_, ?_⟩
    · rw [h3]; positivity
    · rw [h1]; positivity
    · rw [h2]; positivity
  · right; refine ⟨?_, ?_, ?_⟩
    · rw [h3]; exact mul_nonpos_of_nonneg_of_nonpos hc hΔ
    · rw [h1]; exact mul_nonpos_of_nonneg_of_nonpos ha hΔ
    · rw [h2]; exact mul_nonpos_of_nonneg_of_nonpos hb hΔ

open Classical in
/-- **Theorem 1** (`TYPE_II_COMPLETION:Theorem1`). Let nine points of the unit square have least
triangle area at least `A₀`, let `U = P i`, `V = P j` be two distinct members and `W` any point of
the plane with `area(UVW) ≤ 1/2`. Then the closed triangle `UVW` contains at most three members
of the configuration other than `U, V` (if `W` is a configuration point it counts among them).
`hand/TYPE_II_COMPLETION.md`, lines 37–101.

Uses: THREE_INTERIOR_TRIANGLES:Corollary5, CORNER_FAMILIES:NontriangularHullLemma (the
six-point support-triangle lemma of §6, rescaled: least area at most `7S/64 ≤ 7/128 < A₀`). -/
theorem theorem1 (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i j : Fin 9) (hij : i ≠ j) (W : Point)
    (hW : triangleArea (P i) (P j) W ≤ 1 / 2) :
    (Finset.univ.filter fun k =>
        k ≠ i ∧ k ≠ j ∧ P k ∈ convexHull ℝ ({P i, P j, W} : Set Point)).card ≤ 3 := by
  by_contra hcon
  push Not at hcon
  obtain ⟨t, hts, htc⟩ := Finset.le_card_iff_exists_subset_card.1 (show 4 ≤ _ from hcon)
  set f := t.orderEmbOfFin htc
  have hf : ∀ m, f m ≠ i ∧ f m ≠ j ∧ P (f m) ∈ convexHull ℝ ({P i, P j, W} : Set Point) :=
    fun m => by
      have := hts (t.orderEmbOfFin_mem htc m)
      simpa only [Finset.mem_filter, Finset.mem_univ, true_and] using this
  let g : Fin 6 → Fin 9 := ![i, j, f 0, f 1, f 2, f 3]
  have hfi : ∀ m m', f m = f m' → m = m' := fun m m' h => f.injective h
  have hg : Function.Injective g := by
    intro x y hxy
    fin_cases x <;> fin_cases y <;>
      simp only [g, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val, Fin.zero_eta,
        Fin.mk_one, Fin.reduceFinMk] at hxy <;>
      first
        | rfl
        | exact absurd hxy hij
        | exact absurd hxy.symm hij
        | exact absurd hxy.symm (hf _).1
        | exact absurd hxy (hf _).1
        | exact absurd hxy.symm (hf _).2.1
        | exact absurd hxy (hf _).2.1
        | exact absurd (hfi _ _ hxy) (by decide)
  have hmin6 : A₀ ≤ minTriangleArea (P ∘ g) := hmin.trans (le_min_comp (by norm_num) P hg)
  have hpos : 0 < minTriangleArea (P ∘ g) := lt_of_lt_of_le A₀_pos hmin6
  have hcap := ThreeInteriorTriangles.corollary5 hP hmin
  have hmem : ∀ m, (P ∘ g) m ∈ convexHull ℝ ({P i, P j, W} : Set Point) := by
    intro m
    fin_cases m
    · exact subset_convexHull ℝ _ (Or.inl rfl)
    · exact subset_convexHull ℝ _ (Or.inr (Or.inl rfl))
    · exact (hf 0).2.2
    · exact (hf 1).2.2
    · exact (hf 2).2.2
    · exact (hf 3).2.2
  by_cases hΔ : sarea (P i) (P j) W = 0
  · obtain ⟨α, β, γ, -, -, -, -, -, -, h⟩ := tc_sarea_of_mem_hull (hf 0).2.2
    rw [hΔ, mul_zero] at h
    have := sarea_ne_zero_of_min_pos hpos (0 : Fin 6) 1 2
    exact this h
  have hnt : ∀ a b c : Fin 6, convexHull ℝ (Set.range (P ∘ g)) ≠
      convexHull ℝ ({(P ∘ g) a, (P ∘ g) b, (P ∘ g) c} : Set Point) := by
    intro a b c heq
    refine hull_capacity hcap g hg hpos a b c fun m => ?_
    have := subset_convexHull ℝ (Set.range (P ∘ g)) (Set.mem_range_self m)
    rw [heq] at this
    exact this
  have key := CornerFamilies.nontriangularHullLemma_affine (n := 6) (by norm_num) (P ∘ g)
    (P i) (P j) W hΔ (fun m => inClosed_of_mem_hull (hmem m)) ⟨0, rfl⟩ ⟨1, rfl⟩ hnt
  have := A₀_bounds.1
  nlinarith

/-- The closed interval `I_X = [(x - y)/(1 - y), x/(1 - y)]` of `TYPE_II_COMPLETION.md` (1),
for `X = (x, y)` with `y < 1`. -/
def intervalI (X : Point) : Set ℝ :=
  Set.Icc ((X.1 - X.2) / (1 - X.2)) (X.1 / (1 - X.2))

/-- **Equation (2)** (`TYPE_II_COMPLETION:eq2`). For `X = (x,y)` with `y < 1` and every real `z`,
`X` lies in the closed triangle `T_z = conv{D, C, (z,0)}` (area `1/2`) exactly when `z ∈ I_X`.
`hand/TYPE_II_COMPLETION.md`, lines 113–137. -/
theorem eq2 (X : Point) (hX : X.2 < 1) (z : ℝ) :
    X ∈ convexHull ℝ ({(0, 1), (1, 1), (z, 0)} : Set Point) ↔ z ∈ intervalI X := by
  have hy : 0 < 1 - X.2 := by linarith
  have hset : ({(0, 1), (1, 1), (z, 0)} : Set Point) = {(0, 1), (z, 0), (1, 1)} := by
    ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
  rw [hset]
  have h1 : sarea ((z, 0) : Point) (1, 1) X = (1 - z) * X.2 - (X.1 - z) := by unfold sarea; ring
  have h2 : sarea ((1, 1) : Point) (0, 1) X = 1 - X.2 := by unfold sarea; ring
  have h3 : sarea ((0, 1) : Point) (z, 0) X = z * (X.2 - 1) + X.1 := by unfold sarea; ring
  have hΔ : sarea ((0, 1) : Point) (z, 0) (1, 1) = 1 := by unfold sarea; ring
  unfold intervalI
  rw [Set.mem_Icc, div_le_iff₀ hy, le_div_iff₀ hy]
  constructor
  · intro hX
    obtain ⟨g1, -, g3⟩ := tc_sarea_nonneg_of_mem_hull (by rw [hΔ]; norm_num) hX
    rw [h1] at g1; rw [h3] at g3
    constructor <;> nlinarith
  · rintro ⟨g1, g3⟩
    refine tc_mem_hull_of_sarea (by rw [hΔ]; norm_num) ?_ ?_ ?_
    · rw [h1]; nlinarith
    · rw [h2]; linarith
    · rw [h3]; nlinarith

open Classical in
/-- **Corollary 2** (`TYPE_II_COMPLETION:Corollary2`). If a nine-point configuration in the
square containing `D = (0,1)` and `C = (1,1)` has least area at least `A₀`, then every real `z`
lies in at most three of the seven intervals `I_X`, `X` the other points.
`hand/TYPE_II_COMPLETION.md`, lines 139–143.

Uses: TYPE_II_COMPLETION:Theorem1, TYPE_II_COMPLETION:eq2. -/
theorem corollary2 (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i₀ i₁ : Fin 9) (h01 : i₀ ≠ i₁) (hD : P i₀ = (0, 1))
    (hC : P i₁ = (1, 1)) (z : ℝ) :
    (Finset.univ.filter fun k => k ≠ i₀ ∧ k ≠ i₁ ∧ z ∈ intervalI (P k)).card ≤ 3 := by
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hmin
  have harea : triangleArea (P i₀) (P i₁) (z, 0) ≤ 1 / 2 := by
    rw [hD, hC, triangleArea_eq]; unfold sarea; norm_num
  refine le_trans (Finset.card_le_card ?_) (theorem1 P hP hmin i₀ i₁ h01 (z, 0) harea)
  intro k hk
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk ⊢
  obtain ⟨hk0, hk1, hz⟩ := hk
  refine ⟨hk0, hk1, ?_⟩
  have hy : (P k).2 < 1 := by
    rcases lt_or_eq_of_le (hP k).2.2.2 with h | h
    · exact h
    · exfalso
      apply sarea_ne_zero_of_min_pos hpos i₀ i₁ k h01 (Ne.symm hk1) (Ne.symm hk0)
      rw [hD, hC]; unfold sarea; rw [h]; ring
  rw [hD, hC]
  exact (eq2 (P k) hy z).2 hz

/-- **Equation (3)** (`TYPE_II_COMPLETION:eq3`). In the setting of Corollary 2, among any four
distinct points `X₁, …, X₄` other than `D, C` some left endpoint exceeds some right endpoint:
`max_i (x_i - y_i)/(1 - y_i) > min_i x_i/(1 - y_i)` (equivalently (4)).
`hand/TYPE_II_COMPLETION.md`, lines 143–160.

Uses: TYPE_II_COMPLETION:Corollary2. -/
theorem eq3 (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i₀ i₁ : Fin 9) (h01 : i₀ ≠ i₁) (hD : P i₀ = (0, 1))
    (hC : P i₁ = (1, 1)) (k : Fin 4 → Fin 9) (hk : Function.Injective k)
    (hk0 : ∀ m, k m ≠ i₀) (hk1 : ∀ m, k m ≠ i₁) :
    ∃ m m' : Fin 4, (P (k m')).1 / (1 - (P (k m')).2) <
      ((P (k m)).1 - (P (k m)).2) / (1 - (P (k m)).2) := by
  classical
  by_contra hcon
  push Not at hcon
  set lo : Fin 4 → ℝ := fun m => ((P (k m)).1 - (P (k m)).2) / (1 - (P (k m)).2)
  set z := max (max (lo 0) (lo 1)) (max (lo 2) (lo 3))
  have hlo : ∀ m, lo m ≤ z := by
    intro m; fin_cases m <;> simp [z]
  have hhi : ∀ m, z ≤ (P (k m)).1 / (1 - (P (k m)).2) := by
    intro m
    simp only [z, max_le_iff]
    exact ⟨⟨hcon 0 m, hcon 1 m⟩, ⟨hcon 2 m, hcon 3 m⟩⟩
  have hsub : Finset.univ.image k ⊆
      Finset.univ.filter fun k' => k' ≠ i₀ ∧ k' ≠ i₁ ∧ z ∈ intervalI (P k') := by
    intro x hx
    simp only [Finset.mem_image, Finset.mem_univ, true_and] at hx
    obtain ⟨m, rfl⟩ := hx
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    exact ⟨hk0 m, hk1 m, hlo m, hhi m⟩
  have h4 := Finset.card_le_card hsub
  rw [Finset.card_image_of_injective _ hk, Finset.card_univ, Fintype.card_fin] at h4
  have := corollary2 P hP hmin i₀ i₁ h01 hD hC z
  omega

/-- A point of the parallelogram `A, W, B, A + B - W` lies in one of the two closed triangles cut
by the diagonal `AB`. -/
theorem mem_parallelogram {A B W p : Point}
    (hp : p ∈ convexHull ℝ ({A, W, B, A + B - W} : Set Point)) :
    p ∈ convexHull ℝ ({A, B, W} : Set Point) ∨
      p ∈ convexHull ℝ ({A, B, A + B - W} : Set Point) := by
  rw [convexHull_insert (by simp), mem_convexJoin] at hp
  obtain ⟨a', ha', q, hq, ⟨α, β, hα, hβ, hαβ, rfl⟩⟩ := hp
  rw [Set.mem_singleton_iff] at ha'
  rw [ha']
  obtain ⟨x, y, z, hx, hy, hz, hxyz, rfl⟩ := tc_exists_bary hq
  rcases le_total (β * z) (β * x) with h | h
  · left
    have := tc_mem_hull_of_bary (A := A) (B := B) (C := W) (a := α + β * z) (b := β * y + β * z)
      (c := β * x - β * z) (by positivity) (by positivity) (by linarith)
      (by linear_combination β * hxyz + hαβ)
    convert this using 1
    ext <;> simp <;> ring
  · right
    have := tc_mem_hull_of_bary (A := A) (B := B) (C := A + B - W) (a := α + β * x)
      (b := β * y + β * x) (c := β * z - β * x) (by positivity) (by positivity) (by linarith)
      (by linear_combination β * hxyz + hαβ)
    convert this using 1
    ext <;> simp <;> ring

/-- **Corollary 3, general form** (`TYPE_II_COMPLETION:Corollary3`). A competitive nine-point
configuration cannot be contained in a parallelogram of area at most one with two opposite
vertices `P i, P j` actual: the parallelogram with vertices `P i, W, P j, P i + P j - W` has area
`|[P i, W, P j]|`. `hand/TYPE_II_COMPLETION.md`, lines 194–202.

Uses: TYPE_II_COMPLETION:Theorem1 (pigeonhole on the two diagonal halves). -/
theorem corollary3_parallelogram (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i j : Fin 9) (hij : i ≠ j) (W : Point)
    (harea : |sarea (P i) W (P j)| ≤ 1)
    (hcont : ∀ k, P k ∈ convexHull ℝ ({P i, W, P j, P i + P j - W} : Set Point)) :
    False := by
  classical
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hmin
  have h1 : triangleArea (P i) (P j) W ≤ 1 / 2 := by
    rw [triangleArea_eq, sarea_swap₂₃]; rw [abs_neg]; linarith
  have h2 : triangleArea (P i) (P j) (P i + P j - W) ≤ 1 / 2 := by
    rw [triangleArea_eq]
    have : sarea (P i) (P j) (P i + P j - W) = sarea (P i) W (P j) := by
      unfold sarea; simp only [Prod.fst_add, Prod.snd_add, Prod.fst_sub, Prod.snd_sub]; ring
    rw [this]; linarith
  have c1 := theorem1 P hP hmin i j hij W h1
  have c2 := theorem1 P hP hmin i j hij _ h2
  have hsub : (Finset.univ.filter fun k => k ≠ i ∧ k ≠ j) ⊆
      (Finset.univ.filter fun k => k ≠ i ∧ k ≠ j ∧
          P k ∈ convexHull ℝ ({P i, P j, W} : Set Point)) ∪
        (Finset.univ.filter fun k => k ≠ i ∧ k ≠ j ∧
          P k ∈ convexHull ℝ ({P i, P j, P i + P j - W} : Set Point)) := by
    intro k hk
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_union] at hk ⊢
    rcases mem_parallelogram (hcont k) with h | h
    · exact Or.inl ⟨hk.1, hk.2, h⟩
    · exact Or.inr ⟨hk.1, hk.2, h⟩
  have h7 : (Finset.univ.filter fun k => k ≠ i ∧ k ≠ j).card = 7 := by
    have : ∀ i j : Fin 9, i ≠ j → (Finset.univ.filter fun k => k ≠ i ∧ k ≠ j).card = 7 := by
      decide
    exact this i j hij
  have := (Finset.card_le_card hsub).trans (Finset.card_union_le _ _)
  omega

/-- **Corollary 3** (`TYPE_II_COMPLETION:Corollary3`). A competitive nine-point configuration
(in the square, least area at least `A₀`) cannot contain two opposite square corners.
`hand/TYPE_II_COMPLETION.md`, lines 191–193.

Uses: TYPE_II_COMPLETION:Theorem1 (through the general form below). -/
theorem corollary3 (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) :
    ¬ ((∃ i, P i = (0, 0)) ∧ ∃ j, P j = (1, 1)) ∧ ¬ ((∃ i, P i = (1, 0)) ∧ ∃ j, P j = (0, 1)) := by
  have hsq : ∀ p : Point, p ∈ unitSquare →
      p ∈ convexHull ℝ ({(0, 0), (1, 0), (1, 1), (0, 1)} : Set Point) := by
    rintro p ⟨h1, h2, h3, h4⟩
    rcases le_total p.2 p.1 with h | h
    · have : p ∈ convexHull ℝ ({(0, 0), (1, 0), (1, 1)} : Set Point) := by
        refine tc_mem_hull_of_sarea (by unfold sarea; norm_num) ?_ ?_ ?_ <;>
          (unfold sarea; simp) <;> nlinarith
      exact convexHull_mono (by intro x hx; simp only [Set.mem_insert_iff,
        Set.mem_singleton_iff] at hx ⊢; tauto) this
    · have : p ∈ convexHull ℝ ({(0, 0), (1, 1), (0, 1)} : Set Point) := by
        refine tc_mem_hull_of_sarea (by unfold sarea; norm_num) ?_ ?_ ?_ <;>
          (unfold sarea; simp) <;> nlinarith
      exact convexHull_mono (by intro x hx; simp only [Set.mem_insert_iff,
        Set.mem_singleton_iff] at hx ⊢; tauto) this
  constructor
  · rintro ⟨⟨i, hi⟩, ⟨j, hj⟩⟩
    have hij : i ≠ j := by rintro rfl; rw [hi] at hj; simp at hj
    refine corollary3_parallelogram P hP hmin i j hij (1, 0) ?_ fun k => ?_
    · rw [hi, hj]; unfold sarea; norm_num
    · have := hsq _ (hP k)
      rw [hi, hj]
      convert this using 2
      ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]
      constructor <;> rintro (h | h | h | h) <;> simp_all [Prod.ext_iff]
  · rintro ⟨⟨i, hi⟩, ⟨j, hj⟩⟩
    have hij : i ≠ j := by rintro rfl; rw [hi] at hj; simp at hj
    refine corollary3_parallelogram P hP hmin i j hij (0, 0) ?_ fun k => ?_
    · rw [hi, hj]; unfold sarea; norm_num
    · have := hsq _ (hP k)
      rw [hi, hj]
      convert this using 2
      ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]
      constructor <;> rintro (h | h | h | h) <;> simp_all [Prod.ext_iff]

end Heilbronn.TypeIICompletion
