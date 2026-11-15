module

public import Heilbronn.Hulls.ThreeInteriorTriangles
public import Heilbronn.Corners.OneCorner
public import Heilbronn.Corners.CornerFamilies
public import Heilbronn.Normalization.GlobalStructure
public import Heilbronn.TypeII.TypeII.Normalization

/-! # Global triangle capacity two (`hand/THREE_INTERIOR_TRIANGLES.md`, §§4-5)

Part of `THREE_INTERIOR_TRIANGLES.md` (module `Heilbronn.Hulls.ThreeInteriorTriangles`, same
namespace), split off because Corollaries 4 and 5 use the corner-triangle theorem and the C1
capacity of `ONE_CORNER.md` (§§1-4, §6), whose own proof uses Theorem 1 of this note: keeping
them in the module of Theorem 1 would make an import cycle once `ONE_CORNER` imports Theorem 1.

* `corollary4`: capacity two in Type II with `b ≤ 1/2`. By Theorem 1 a three-point triangle is
  a hull ear with supporting edges; the ears are excluded by the strip `y ≤ 1 - 2A₀` (no corner
  vertex), the supporting edge through `E` (ears at `D`), the triangle `B, (1,0), C` (ears at `C`;
  when `BC` itself is a hull edge, the endpoint-triangle theorem of `TYPE_II.md` and the
  seven-point bound fill too few containers, `cor4_BC_edge`), and the corner-triangle theorem of
  `ONE_CORNER.md` for `DEC` (`cor4_DEC`) and, after the shear, for `DCR` (`cor4_shear`).
* `claim_min_enclosing_parallelogram`: the parameters `(a,…,f)` of the affine maps keeping the
  configuration in the square form a compact set of `ℝ⁶` (three non-collinear points bound the
  linear part), on which `|ad - bc|` attains its maximum. This replaces the manuscript's
  compactness over pairs of unit normals.
* `claim_normalization`: the image under that map has no feasible expansion
  (`BoundaryReduction.NoExpand`), so the normalization of `GLOBAL_STRUCTURE.md`, proved under that
  hypothesis (`GlobalStructure.exists_family_of_noExpand`), applies; Type II is finished by the
  shear normalization of `TYPE_II.md` §2 (`TypeII.shearNormalization`).
* `corollary5`: global capacity two, from `claim_normalization`, the family results (Corollary 2
  for N, `ONE_CORNER` §6 for C1, Corollary 4 for Type II, the exclusions of C2 and Type III), and
  the transfer of capacity through affine maps and relabellings.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.ThreeInteriorTriangles

/-! ### §4. The complete normalized Type-II family -/

/-! ### Helpers for Corollary 4 -/

/-- A triangle in the strip `[0,1] × [0,h]` has doubled area at most `h`. -/
theorem sarea_le_of_strip {X Y Z : Point} {h : ℝ} (hh : 0 < h) (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) (hXh : X.2 ≤ h) (hYh : Y.2 ≤ h) (hZh : Z.2 ≤ h) :
    sarea X Y Z ≤ h := by
  have mem {W : Point} (hW : W ∈ unitSquare) (hWh : W.2 ≤ h) : (W.1, W.2 / h) ∈ unitSquare :=
    ⟨hW.1, hW.2.1, div_nonneg hW.2.2.1 hh.le, (div_le_one hh).2 hWh⟩
  have key := abs_sarea_le_one (mem hX hXh) (mem hY hYh) (mem hZ hZh)
  have e : sarea (X.1, X.2 / h) (Y.1, Y.2 / h) (Z.1, Z.2 / h) = sarea X Y Z / h := by
    unfold sarea; field_simp
  rw [e, abs_div, abs_of_pos hh, div_le_one hh] at key
  exact (le_abs_self _).trans key

/-- Two points of the square right of the line `BC`, `B = (b,0)`, `C = (1,1)`, lie in the
triangle `B, (1,0), C`, so with `C` they span doubled area at most `1 - b`. -/
theorem sarea_le_right {b : ℝ} (hb : 0 < b) (hb1 : b < 1) {A C : Point} (hA : A ∈ unitSquare)
    (hC : C ∈ unitSquare)
    (fa : sarea (b, 0) (1, 1) A ≤ 0) (fc : sarea (b, 0) (1, 1) C ≤ 0) :
    sarea A (1, 1) C ≤ 1 - b := by
  obtain ⟨a1, a2⟩ := A
  obtain ⟨c1, c2⟩ := C
  obtain ⟨-, ha1, ha2, -⟩ := hA
  obtain ⟨-, hc1, hc2, -⟩ := hC
  unfold sarea at *
  simp only at *
  nlinarith [mul_nonneg ha2 hc2, mul_nonneg ha2 (sub_nonneg.2 hc1), mul_nonneg ha2 (neg_nonneg.2 fc),
    mul_nonneg (sub_nonneg.2 ha1) hc2, mul_nonneg (sub_nonneg.2 ha1) (sub_nonneg.2 hc1),
    mul_nonneg (sub_nonneg.2 ha1) (neg_nonneg.2 fc), mul_nonneg (neg_nonneg.2 fa) hc2,
    mul_nonneg (neg_nonneg.2 fa) (sub_nonneg.2 hc1), mul_nonneg (neg_nonneg.2 fa) (neg_nonneg.2 fc)]

/-- The corner-triangle theorem of `ONE_CORNER.md` for three distinct points of an affine image
`Q` of the configuration, stated with the counterclockwise corner triangle `(0,0), (ξ,0), (0,η)`. -/
theorem corner_contra {Q : Fin 9 → Point} (hQ : ∀ i, Q i ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea Q) {ξ η : ℝ} (hξ : 0 < ξ) (hξ1 : ξ ≤ 1) (hη : 0 < η)
    (hη1 : η ≤ 1) (hO : ∃ i, Q i = (0, 0)) (hH : ∃ i, Q i = (0, η)) (hC : ∃ i, Q i = (ξ, 0))
    {m₁ m₂ m₃ : Fin 9} (h12 : m₁ ≠ m₂) (h13 : m₁ ≠ m₃) (h23 : m₂ ≠ m₃)
    (h1 : InTriangle (Q m₁) (0, 0) (ξ, 0) (0, η)) (h2 : InTriangle (Q m₂) (0, 0) (ξ, 0) (0, η))
    (h3 : InTriangle (Q m₃) (0, 0) (ξ, 0) (0, η)) : False := by
  have hs : 3 ≤ {m : Fin 9 | CornerFamilies.InsideTriangle (Q m) (0, 0) (0, η) (ξ, 0)}.ncard := by
    have sub : (({m₁, m₂, m₃} : Finset (Fin 9)) : Set (Fin 9)) ⊆
        {m : Fin 9 | CornerFamilies.InsideTriangle (Q m) (0, 0) (0, η) (ξ, 0)} := by
      intro m hm
      simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
        Set.mem_singleton_iff] at hm
      rcases hm with rfl | rfl | rfl
      · exact Or.inr h1
      · exact Or.inr h2
      · exact Or.inr h3
    have := Set.ncard_le_ncard sub
    rwa [Set.ncard_coe_finset, Finset.card_eq_three.2 ⟨m₁, m₂, m₃, h12, h13, h23, rfl⟩] at this
  have := OneCorner.cornerTriangleOccupancyTheorem Q hQ ξ η hξ hξ1 hη hη1 hO hH hC hs
  linarith [A₀_bounds.1]

/-- The case `A' = B`, `B' = C` of Corollary 4: `BC` would be a hull edge, so the six points
other than `D, C, B` lie in the left container (at most two, by the endpoint-triangle theorem) or
in the central triangle `DBC` (at most three). -/
theorem cor4_BC_edge {P : Fin 9 → Point} {b : ℝ} (hP : ∀ m, P m ∈ unitSquare)
    (hP0 : P 0 = (0, 1)) (hP1 : P 1 = (1, 1)) (hP3 : P 3 = (b, 0)) (hb : 0 < b)
    (hb2 : b ≤ 1 / 2) (hA : A₀ ≤ minTriangleArea P)
    (ylow : ∀ m, m ≠ 0 → m ≠ 1 → (P m).2 ≤ 1 - 2 * A₀)
    (hBC : ∀ m, m ≠ 3 → m ≠ 1 → 0 < sarea (P 3) (P 1) (P m)) : False := by
  classical
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hA
  set L := {m : Fin 9 | m ≠ 0 ∧ m ≠ 1 ∧ m ≠ 3 ∧ sarea (P 0) (P 3) (P m) < 0}
  set Ce := {m : Fin 9 | InTriangle (P m) (P 0) (P 3) (P 1)}
  have hDBC : 0 < sarea (P 0) (P 3) (P 1) := by rw [hP0, hP3, hP1]; unfold sarea; norm_num
  have hCe : Ce.ncard ≤ 3 := ncard_inside_le_three hP hA hDBC
  have hL : L.ncard ≤ 2 := by
    by_contra hc
    push Not at hc
    obtain ⟨m₁, m₂, m₃, h1, h2, h3, h12, h13, h23⟩ := (Set.two_lt_ncard_iff (s := L)).1 hc
    have hull {m : Fin 9} (hm : m ∈ L) : P m ∈ convexHull ℝ ({P 0, P 3, (0, 0)} : Set Point) := by
      obtain ⟨-, -, -, hm⟩ := hm
      have hx := (hP m).1; have hy := (hP m).2.2.1
      rw [hP0, hP3] at hm ⊢
      unfold sarea at hm
      simp only at hm
      refine mem_hull3 (a := (P m).2) (b := (P m).1 / b) (c := 1 - (P m).2 - (P m).1 / b) hy
        (by positivity) ?_ (by ring) ?_
      · have : (P m).1 / b + (P m).2 < 1 := by
          rw [div_add' _ _ _ hb.ne', div_lt_one hb]; nlinarith
        linarith
      · ext <;> simp only <;> field_simp <;> ring
    have k := TypeII.endpointTriangleTheorem (P 0) (P 3) (0, 0) (P m₁) (P m₂) (P m₃)
      (hull h1) (hull h2) (hull h3)
    obtain ⟨a1, a2, a3, -⟩ := h1
    obtain ⟨b1, b2, b3, -⟩ := h2
    obtain ⟨c1, c2, c3, -⟩ := h3
    have hinj : Function.Injective ![0, 3, m₁, m₂, m₃] := by
      rw [← List.nodup_ofFn]; simp [List.ofFn_succ]; tauto
    have hm := QuadrilateralHull.le_min_sub (Q := ![P 0, P 3, P m₁, P m₂, P m₃]) (by norm_num) _ hinj
      (fun a => by fin_cases a <;> rfl) hA
    have ht : triangleArea (P 0) (P 3) ((0 : ℝ), (0 : ℝ)) = b / 2 := by
      rw [hP0, hP3, triangleArea_eq]; unfold sarea; simp only
      rw [show ((b : ℝ) - 0) * (0 - 1) - (0 - 1) * (0 - 0) = -b by ring, abs_neg, abs_of_pos hb]
    rw [ht] at k
    have hs2 : (7 / 5 : ℝ) < Real.sqrt 2 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    have hk : TypeII.kEnd < 1 / 5 := by unfold TypeII.kEnd; linarith
    have hk0 : 0 ≤ TypeII.kEnd := by
      unfold TypeII.kEnd
      have : Real.sqrt 2 < 3 / 2 := by rw [Real.sqrt_lt' (by norm_num)]; norm_num
      linarith
    have := A₀_bounds.2.2.1
    nlinarith [mul_le_mul_of_nonneg_left hb2 hk0]
  -- every point other than `D, C, B` is in `L` or in `Ce`
  have hcov : (({2, 4, 5, 6, 7, 8} : Finset (Fin 9)) : Set (Fin 9)) ⊆ L ∪ Ce := by
    intro m hm
    have h0 : m ≠ 0 := by intro h; subst h; simp at hm
    have h1 : m ≠ 1 := by intro h; subst h; simp at hm
    have h3 : m ≠ 3 := by intro h; subst h; simp at hm
    have hne : sarea (P 0) (P 3) (P m) ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 3 m (by decide)
      (Ne.symm h3) (Ne.symm h0)
    rcases lt_or_gt_of_ne hne with hlt | hgt
    · exact Or.inl ⟨h0, h1, h3, hlt⟩
    · refine Or.inr ⟨hgt, hBC m h3 h1, ?_⟩
      have := ylow m h0 h1
      rw [hP1, hP0]; unfold sarea; simp only; nlinarith [A₀_pos]
  have := Set.ncard_le_ncard hcov
  rw [Set.ncard_coe_finset] at this
  have h6 : ({2, 4, 5, 6, 7, 8} : Finset (Fin 9)).card = 6 := by decide
  have hu := Set.ncard_union_le L Ce
  omega

/-- Doubled signed area of affine images with the determinant made explicit. -/
theorem inTriangle_affine_pos {X A B C : Point} {a b c d e f : ℝ} (hdet : a * d - b * c = 1)
    (h : InTriangle X A B C) :
    InTriangle (affineMap a b c d e f X) (affineMap a b c d e f A) (affineMap a b c d e f B)
      (affineMap a b c d e f C) := by
  obtain ⟨h1, h2, h3⟩ := h
  simp only [InTriangle, sarea_affineMap, hdet, one_mul]
  exact ⟨h1, h2, h3⟩

theorem inTriangle_affine_neg {X A B C : Point} {a b c d e f : ℝ} (hdet : a * d - b * c = -1)
    (h : InTriangle X A B C) :
    InTriangle (affineMap a b c d e f X) (affineMap a b c d e f A) (affineMap a b c d e f C)
      (affineMap a b c d e f B) := by
  obtain ⟨h1, h2, h3⟩ := h
  simp only [InTriangle, sarea_affineMap, hdet]
  refine ⟨?_, ?_, ?_⟩
  · rw [sarea_swap₁₂] at h3; linarith
  · rw [sarea_swap₁₂] at h2; linarith
  · rw [sarea_swap₁₂] at h1; linarith

/-- The ear `DEC` of Corollary 4 is a corner triangle at `D` (after the reflection `y ↦ 1 - y`). -/
theorem cor4_DEC {P : Fin 9 → Point} {l : ℝ} (hl : 0 < l) (hl1 : l < 1)
    (hP : ∀ m, P m ∈ unitSquare) (hP0 : P 0 = (0, 1)) (hP1 : P 1 = (1, 1)) (hP2 : P 2 = (0, l))
    (hA : A₀ ≤ minTriangleArea P) {m₁ m₂ m₃ : Fin 9} (d12 : m₁ ≠ m₂) (d13 : m₁ ≠ m₃)
    (d23 : m₂ ≠ m₃) (i1 : InTriangle (P m₁) (P 0) (P 2) (P 1))
    (i2 : InTriangle (P m₂) (P 0) (P 2) (P 1)) (i3 : InTriangle (P m₃) (P 0) (P 2) (P 1)) :
    False := by
  set φ := affineMap 1 0 0 (-1) 0 1 with hφ
  have hdet : (1 : ℝ) * (-1) - 0 * 0 = -1 := by norm_num
  have q0 : φ (P 0) = (0, 0) := by rw [hP0]; simp [φ, affineMap]
  have q1 : φ (P 1) = (1, 0) := by rw [hP1]; simp [φ, affineMap]
  have q2 : φ (P 2) = (0, 1 - l) := by rw [hP2]; simp [φ, affineMap]; ring
  have hQ : ∀ m, (φ ∘ P) m ∈ unitSquare := fun m => by
    obtain ⟨h1, h2, h3, h4⟩ := hP m
    simp only [Function.comp, φ, affineMap]
    refine ⟨by linarith, by linarith, by linarith, by linarith⟩
  have hmin : A₀ ≤ minTriangleArea (φ ∘ P) := by
    rw [hφ, minTriangleArea_affineMap, hdet]; simpa using hA
  have tr {m : Fin 9} (h : InTriangle (P m) (P 0) (P 2) (P 1)) :
      InTriangle ((φ ∘ P) m) (0, 0) (1, 0) (0, 1 - l) := by
    have := inTriangle_affine_neg (e := 0) (f := 1) hdet h
    rw [← hφ, q0, q1, q2] at this; exact this
  exact corner_contra hQ hmin one_pos le_rfl (by linarith) (by linarith) ⟨0, q0⟩ ⟨2, q2⟩ ⟨1, q1⟩
    d12 d13 d23 (tr i1) (tr i2) (tr i3)

/-- The ear `DCR` of Corollary 4 (apex `C`): the shear `(x, y) ↦ (x + τ(1 - y), y)`,
`τ = (1 - R_x)/(1 - R_y)`, followed by the half-turn, makes it a corner triangle at `C`. -/
theorem cor4_shear {P : Fin 9 → Point} (hP : ∀ m, P m ∈ unitSquare) (hP0 : P 0 = (0, 1))
    (hP1 : P 1 = (1, 1)) (hA : A₀ ≤ minTriangleArea P) {R : Fin 9} (hR : (P R).2 < 1)
    (sup : ∀ m, m ≠ R → m ≠ 1 → 0 < sarea (P R) (P 1) (P m)) {m₁ m₂ m₃ : Fin 9}
    (d12 : m₁ ≠ m₂) (d13 : m₁ ≠ m₃) (d23 : m₂ ≠ m₃) (i1 : InTriangle (P m₁) (P 1) (P 0) (P R))
    (i2 : InTriangle (P m₂) (P 1) (P 0) (P R)) (i3 : InTriangle (P m₃) (P 1) (P 0) (P R)) :
    False := by
  have hRy : 0 < 1 - (P R).2 := by linarith
  have hRx : 0 ≤ 1 - (P R).1 := by linarith [(hP R).2.1]
  set τ := (1 - (P R).1) / (1 - (P R).2) with hτ
  have hτ0 : 0 ≤ τ := div_nonneg hRx hRy.le
  set φ := affineMap (-1) τ 0 (-1) (1 - τ) 1 with hφ
  have hdet : (-1 : ℝ) * (-1) - τ * 0 = 1 := by ring
  have q0 : φ (P 0) = (1, 0) := by rw [hP0]; simp only [φ, affineMap]; ext <;> simp
  have q1 : φ (P 1) = (0, 0) := by rw [hP1]; simp only [φ, affineMap]; ext <;> simp
  have qR : φ (P R) = (0, 1 - (P R).2) := by
    simp only [φ, affineMap]; ext
    · simp only; rw [hτ]; field_simp; ring
    · simp only; ring
  -- every point stays in the square: the supporting edge `RC`
  have hsup : ∀ m, 0 ≤ sarea (P R) (P 1) (P m) := by
    intro m
    by_cases h1 : m = R
    · rw [h1]; unfold sarea; ring_nf; rfl
    by_cases h2 : m = 1
    · rw [h2]; unfold sarea; ring_nf; rfl
    exact (sup m h1 h2).le
  have hQ : ∀ m, (φ ∘ P) m ∈ unitSquare := fun m => by
    obtain ⟨h1, h2, h3, h4⟩ := hP m
    have hs := hsup m
    rw [hP1] at hs
    unfold sarea at hs
    simp only at hs
    simp only [Function.comp, φ, affineMap]
    have key : τ * (1 - (P m).2) ≤ 1 - (P m).1 := by
      rw [hτ, div_mul_eq_mul_div, div_le_iff₀ hRy]; nlinarith
    have key2 : 0 ≤ τ * (1 - (P m).2) := mul_nonneg hτ0 (by linarith)
    refine ⟨by nlinarith, by nlinarith, by linarith, by linarith⟩
  have hmin : A₀ ≤ minTriangleArea (φ ∘ P) := by
    rw [hφ, minTriangleArea_affineMap, hdet]; simpa using hA
  have tr {m : Fin 9} (h : InTriangle (P m) (P 1) (P 0) (P R)) :
      InTriangle ((φ ∘ P) m) (0, 0) (1, 0) (0, 1 - (P R).2) := by
    have := inTriangle_affine_pos (e := 1 - τ) (f := 1) hdet h
    rw [← hφ, q0, q1, qR] at this; exact this
  exact corner_contra hQ hmin one_pos le_rfl hRy (by linarith [(hP R).2.2.1]) ⟨1, q1⟩ ⟨R, qR⟩
    ⟨0, q0⟩ d12 d13 d23 (tr i1) (tr i2) (tr i3)

/-- The ear analysis of Corollary 4. -/
theorem cor4_cases {l b : ℝ} {P : Fin 9 → Point} (hl : 0 < l) (hl1 : l < 1) (hb : 0 < b)
    (hb2 : b ≤ 1 / 2) (hP : ∀ m, P m ∈ unitSquare) (hP0 : P 0 = (0, 1)) (hP1 : P 1 = (1, 1))
    (hP2 : P 2 = (0, l)) (hP3 : P 3 = (b, 0)) (hA : A₀ ≤ minTriangleArea P)
    (ylow : ∀ m, m ≠ 0 → m ≠ 1 → (P m).2 ≤ 1 - 2 * A₀) (hb2A : 2 * A₀ ≤ b)
    {A' B' C' : Fin 9} (hccw' : 0 < sarea (P A') (P B') (P C'))
    (sup1 : ∀ m, m ≠ A' → m ≠ B' → 0 < sarea (P A') (P B') (P m))
    (sup2 : ∀ m, m ≠ C' → m ≠ A' → 0 < sarea (P C') (P A') (P m))
    (hext : ∀ m, m ≠ A' → m ≠ B' → m ≠ C' → ¬ InTriangle (P m) (P A') (P B') (P C') →
      BeyondEdge (P m) (P A') (P B') (P C'))
    {m₁ m₂ m₃ : Fin 9} (i1 : InTriangle (P m₁) (P A') (P B') (P C'))
    (i2 : InTriangle (P m₂) (P A') (P B') (P C')) (i3 : InTriangle (P m₃) (P A') (P B') (P C'))
    (d12 : m₁ ≠ m₂) (d13 : m₁ ≠ m₃) (d23 : m₂ ≠ m₃)
    (hT : 29 / 30 < sarea (P A') (P B') (P C')) : False := by
  obtain ⟨dAB, dBC, dAC⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hccw'
  have hA0 := A₀_bounds.1
  have hy : ∀ m, m ≠ 0 → m ≠ 1 → (P m).2 < 1 := fun m h0 h1 => by linarith [ylow m h0 h1]
  have e01 : ∀ m, sarea (P m) (P 0) (P 1) = (P m).2 - 1 := fun m => by
    rw [hP0, hP1]; unfold sarea; ring
  have e10 : ∀ m, sarea (P 1) (P m) (P 0) = (P m).2 - 1 := fun m => by
    rw [hP0, hP1]; unfold sarea; ring
  have e0m2 : ∀ m, sarea (P 0) (P m) (P 2) = (P m).1 * (l - 1) := fun m => by
    rw [hP0, hP2]; unfold sarea; ring
  have e012 : sarea (P 0) (P 1) (P 2) = l - 1 := by rw [hP0, hP1, hP2]; unfold sarea; ring
  have e213 : sarea (P 2) (P 1) (P 3) = -(l + b * (1 - l)) := by
    rw [hP1, hP2, hP3]; unfold sarea; ring
  have neg0m2 : ∀ m, ¬ 0 < sarea (P 0) (P m) (P 2) := fun m h => by
    rw [e0m2] at h; nlinarith [(hP m).1]
  by_cases hD : A' = 0 ∨ B' = 0 ∨ C' = 0 <;> by_cases hC : A' = 1 ∨ B' = 1 ∨ C' = 1
  · -- both `D` and `C` are vertices
    rcases hD with rfl | rfl | rfl <;> rcases hC with h | h | h
    · exact absurd h (by decide)
    · subst h
      have := sup1 2 (by decide) (by decide); rw [e012] at this; linarith
    · subst h
      by_cases hB2 : B' = 2
      · subst hB2
        exact cor4_DEC hl hl1 hP hP0 hP1 hP2 hA d12 d13 d23 i1 i2 i3
      · exact neg0m2 B' (sup1 2 (by decide) (Ne.symm hB2))
    · subst h
      exact cor4_shear hP hP0 hP1 hA (hy C' (Ne.symm dBC) (Ne.symm dAC)) sup2 d12 d13 d23 i1 i2 i3
    · exact absurd h (by decide)
    · subst h
      have := sup1 1 (Ne.symm dAC) (by decide); rw [e01] at this
      linarith [hy A' dAB (by intro h; exact dAC h)]
    · subst h
      have := sup2 2 (by decide) (by decide); rw [e012] at this; linarith
    · subst h
      by_cases hA2 : A' = 2
      · subst hA2
        have := sup1 3 (by decide) (by decide); rw [e213] at this; nlinarith
      · exact neg0m2 A' (sup2 2 (by decide) (Ne.symm hA2))
    · exact absurd h (by decide)
  · -- `D` is a vertex, `C` is not
    push Not at hC
    obtain ⟨hC1, hC2, hC3⟩ := hC
    rcases hD with rfl | rfl | rfl
    · have := sup2 1 (Ne.symm hC3) (by decide); rw [e01] at this
      linarith [hy C' (Ne.symm dAC) hC3]
    · have := sup1 1 (Ne.symm hC1) (by decide); rw [e01] at this
      linarith [hy A' dAB hC1]
    · by_cases hA2 : A' = 2
      · subst hA2
        have eT : sarea (P 2) (P B') (P 0) = (P B').1 * (1 - l) := by
          rw [hP0, hP2]; unfold sarea; ring
        rw [eT] at hT
        have hx := (hP B').1
        by_cases hB3 : B' = 3
        · subst hB3; rw [hP3] at hT; simp only at hT; nlinarith
        · have h := sup1 3 (by decide) (Ne.symm hB3)
          have e : sarea (P 2) (P B') (P 3) = -l * (P B').1 - b * (P B').2 + b * l := by
            rw [hP2, hP3]; unfold sarea; ring
          rw [e] at h
          have hyB := (hP B').2.2.1
          have hxb : (P B').1 < b := by nlinarith
          nlinarith
      · exact neg0m2 A' (sup2 2 (by decide) (Ne.symm hA2))
  · -- `C` is a vertex, `D` is not
    push Not at hD
    obtain ⟨hD1, hD2, hD3⟩ := hD
    rcases hC with rfl | rfl | rfl
    · have := sup1 0 (by decide) (Ne.symm hD2); rw [e10] at this
      linarith [hy B' hD2 (Ne.symm dAB)]
    · by_cases hA3 : A' = 3
      · subst hA3
        exact cor4_BC_edge hP hP0 hP1 hP3 hb hb2 hA ylow sup1
      · have fa : sarea (b, 0) (1, 1) (P A') ≤ 0 := by
          have h := sup1 3 (Ne.symm hA3) (by decide)
          have e : sarea (P A') (P 1) (P 3) = -sarea (b, 0) (1, 1) (P A') := by
            rw [hP1, hP3]; unfold sarea; ring
          rw [e] at h; linarith
        have fc : sarea (b, 0) (1, 1) (P C') ≤ 0 := by
          by_cases hC3 : C' = 3
          · subst hC3; rw [hP3]; unfold sarea; simp
          · have hB := hext 3 (Ne.symm hA3) (by decide) (Ne.symm hC3)
              (fun h => not_inTriangle_of_y0 (hP A') (hP 1) (hP C') (by rw [hP3]) h)
            have e : sarea (P 1) (P C') (P 3) = sarea (b, 0) (1, 1) (P C') := by
              rw [hP1, hP3]; unfold sarea; ring
            have := hB.1; rw [e] at this; linarith
        have key := sarea_le_right hb (by linarith) (hP A') (hP C') fa fc
        rw [hP1] at hT
        linarith
    · have := sup2 0 (by decide) (Ne.symm hD1); rw [e10] at this
      linarith [hy A' hD1 dAC]
  · -- neither: the strip `y ≤ 1 - 2A₀`
    push Not at hD hC
    have key := sarea_le_of_strip (h := 1 - 2 * A₀) (by linarith) (hP A') (hP B') (hP C')
      (ylow A' hD.1 hC.1) (ylow B' hD.2.1 hC.2.1) (ylow C' hD.2.2 hC.2.2)
    linarith

/-- **Corollary 4** (`THREE_INTERIOR_TRIANGLES:Corollary4`). Type II has triangle capacity two.
For `D=(0,1), C=(1,1), E=(0,λ), B=(b,0)` with `0<λ<1`, `0<b≤1/2` and five further points anywhere
in the square, least area at least `A₀` implies that every actual triangle contains at most two
further points. Every hull ear is excluded: by the strip `P_y ≤ 1 - s`, the chains at `D` and `C`,
the corner-triangle theorem of `ONE_CORNER.md` for `DCE`, and, for `DCR`, a shear onto a corner
triangle.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 331-442.
Uses: THREE_INTERIOR_TRIANGLES:Theorem1, TYPE_II:EndpointTriangleTheorem,
CORNER_FAMILIES:TriangularHullLemma, CORNER_FAMILIES:SixPointTriangularHullTheorem,
ONE_CORNER:CornerTriangleOccupancyTheorem -/
theorem corollary4 {l b : ℝ} {V W X Y Z : Point} (hl : 0 < l) (hl1 : l < 1) (hb : 0 < b)
    (hb2 : b ≤ 1 / 2) (hV : V ∈ unitSquare) (hW : W ∈ unitSquare) (hX : X ∈ unitSquare)
    (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    TriangleCapacityTwo (typeIIConfig l b V W X Y Z) := by
  intro i j k hccw
  by_contra hc
  push Not at hc
  set P := typeIIConfig l b V W X Y Z with hPdef
  have hb1 : b < 1 := by linarith
  have hP0 : P 0 = (0, 1) := rfl
  have hP1 : P 1 = (1, 1) := rfl
  have hP2 : P 2 = (0, l) := rfl
  have hP3 : P 3 = (b, 0) := rfl
  have hP : ∀ m, P m ∈ unitSquare := by
    intro m
    fin_cases m
    · exact ⟨le_refl _, zero_le_one, zero_le_one, le_refl _⟩
    · exact ⟨zero_le_one, le_refl _, zero_le_one, le_refl _⟩
    · exact ⟨le_refl _, zero_le_one, hl.le, hl1.le⟩
    · exact ⟨hb.le, hb1.le, le_refl _, zero_le_one⟩
    · exact hV
    · exact hW
    · exact hX
    · exact hY
    · exact hZ
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hA
  have ylow : ∀ m, m ≠ 0 → m ≠ 1 → (P m).2 ≤ 1 - 2 * A₀ := by
    intro m h0 h1
    have hne := sarea_ne_zero_of_min_pos hpos 0 1 m (by decide) (Ne.symm h1) (Ne.symm h0)
    have e : sarea (P 0) (P 1) (P m) = (P m).2 - 1 := by rw [hP0, hP1]; unfold sarea; ring
    have hy := (hP m).2.2.2
    have hlt : sarea (P 0) (P 1) (P m) < 0 := by
      rw [e] at hne ⊢; exact lt_of_le_of_ne (by linarith) hne
    have := sarea_le_of_le_min_of_neg A₀_pos hA 0 1 m hlt (by decide) (Ne.symm h1) (Ne.symm h0)
    rw [e] at this; linarith
  have hb2A : 2 * A₀ ≤ b := by
    have e : sarea (P 0) (P 2) (P 3) = b * (1 - l) := by rw [hP0, hP2, hP3]; unfold sarea; ring
    have h := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 3
      (by rw [e]; exact mul_pos hb (by linarith)) (by decide) (by decide) (by decide)
    rw [e] at h; nlinarith
  obtain ⟨A', B', C', hrot, h3, hext, sup1, sup2, -⟩ := theorem1 hP hA hccw (by omega)
  have hccw' : 0 < sarea (P A') (P B') (P C') := by
    rcases hrot with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ <;> rw [h1, h2, h3] <;>
      (unfold sarea at hccw ⊢; linarith)
  obtain ⟨m₁, m₂, m₃, i1, i2, i3, d12, d13, d23⟩ :=
    (Set.two_lt_ncard_iff (s := {m | InTriangle (P m) (P A') (P B') (P C')})).1 (by omega)
  have hT := D_ge hA hccw' i1 i2 i3 d12 d13 d23
  have hT' : 29 / 30 < sarea (P A') (P B') (P C') := lt_of_lt_of_le gamma_A₀ hT
  clear_value P
  exact cor4_cases hl hl1 hb hb2 hP hP0 hP1 hP2 hP3 hA ylow hb2A hccw' sup1 sup2 hext i1 i2 i3
    d12 d13 d23 hT'

/-! ### §5. Unrestricted triangle capacity two -/

/-- **Claim** (`THREE_INTERIOR_TRIANGLES:claim-min-enclosing-parallelogram`, made up). A minimum-area
enclosing parallelogram exists. For nine points in the square with positive least area, some
affine map with `|det| ≥ 1` sends them into the square so that the image square is a minimum-area
enclosing parallelogram: no affine map of absolute determinant greater than one sends the image
into the square. The manuscript argues by compactness over pairs of unit normals, with
`𝒜(u, v) = w(u) w(v)/|det(u, v)|`; here `|det|` is maximized over the compact set of feasible
affine maps.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 455-477. -/
theorem claim_min_enclosing_parallelogram {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hpos : 0 < minTriangleArea P) :
    ∃ a b c d e f : ℝ, (∀ i, affineMap a b c d e f (P i) ∈ unitSquare) ∧
      1 ≤ |a * d - b * c| ∧
      ∀ a' b' c' d' e' f' : ℝ,
        (∀ i, affineMap a' b' c' d' e' f' (affineMap a b c d e f (P i)) ∈ unitSquare) →
          |a' * d' - b' * c'| ≤ 1 := by
  classical
  -- the affine maps keeping `P` in the square, as parameter vectors
  let φ : (Fin 6 → ℝ) → Point → Point := fun v => affineMap (v 0) (v 1) (v 2) (v 3) (v 4) (v 5)
  let S : Set (Fin 6 → ℝ) := {v | ∀ i, φ v (P i) ∈ unitSquare}
  have hcont : ∀ p : Point, Continuous fun v : Fin 6 → ℝ => φ v p := by
    intro p
    simp only [φ, affineMap]
    fun_prop
  have hclosed : IsClosed S := by
    have : S = ⋂ i, (fun v => φ v (P i)) ⁻¹' unitSquare := by
      ext v; simp [S]
    rw [this]
    exact isClosed_iInter fun i => isCompact_unitSquare.isClosed.preimage (hcont (P i))
  -- boundedness: three non-collinear points pin down the linear part
  have hD : sarea (P 0) (P 1) (P 2) ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 1 2
  set D := sarea (P 0) (P 1) (P 2)
  have hDa : 0 < |D| := abs_pos.2 hD
  have sub1 {x y : ℝ} (hx : 0 ≤ x ∧ x ≤ 1) (hy : 0 ≤ y ∧ y ≤ 1) : |x - y| ≤ 1 := by
    rw [abs_le]; constructor <;> linarith [hx.1, hx.2, hy.1, hy.2]
  have two {p q r w : ℝ} (hp : |p| ≤ 1) (hq : |q| ≤ 1) (hr : |r| ≤ 1) (hw : |w| ≤ 1) :
      |p * q - r * w| ≤ 2 := by
    calc |p * q - r * w| ≤ |p * q| + |r * w| := abs_sub _ _
      _ = |p| * |q| + |r| * |w| := by rw [abs_mul, abs_mul]
      _ ≤ 1 * 1 + 1 * 1 := by gcongr
      _ = 2 := by norm_num
  have hbound : ∀ v ∈ S, ∀ k, |v k| ≤ 1 + 4 / |D| := by
    intro v hv
    have m0 := hv 0; have m1 := hv 1; have m2 := hv 2
    simp only [φ, affineMap] at m0 m1 m2
    have p0 := hP 0; have p1 := hP 1; have p2 := hP 2
    have r1 := sub1 ⟨m1.1, m1.2.1⟩ ⟨m0.1, m0.2.1⟩
    have r2 := sub1 ⟨m2.1, m2.2.1⟩ ⟨m0.1, m0.2.1⟩
    have r3 := sub1 ⟨m1.2.2.1, m1.2.2.2⟩ ⟨m0.2.2.1, m0.2.2.2⟩
    have r4 := sub1 ⟨m2.2.2.1, m2.2.2.2⟩ ⟨m0.2.2.1, m0.2.2.2⟩
    have q1 := sub1 ⟨p1.1, p1.2.1⟩ ⟨p0.1, p0.2.1⟩
    have q2 := sub1 ⟨p2.1, p2.2.1⟩ ⟨p0.1, p0.2.1⟩
    have q3 := sub1 ⟨p1.2.2.1, p1.2.2.2⟩ ⟨p0.2.2.1, p0.2.2.2⟩
    have q4 := sub1 ⟨p2.2.2.1, p2.2.2.2⟩ ⟨p0.2.2.1, p0.2.2.2⟩
    have L0 : |v 0| ≤ 2 / |D| := by
      rw [le_div_iff₀ hDa, ← abs_mul]
      have e : v 0 * D = ((v 0 * (P 1).1 + v 1 * (P 1).2 + v 4) - (v 0 * (P 0).1 + v 1 * (P 0).2 + v 4)) *
          ((P 2).2 - (P 0).2) - ((v 0 * (P 2).1 + v 1 * (P 2).2 + v 4) -
            (v 0 * (P 0).1 + v 1 * (P 0).2 + v 4)) * ((P 1).2 - (P 0).2) := by
        simp only [D, sarea]; ring
      rw [e]; exact two r1 q4 r2 q3
    have L1 : |v 1| ≤ 2 / |D| := by
      rw [le_div_iff₀ hDa, ← abs_mul]
      have e : v 1 * D = ((v 0 * (P 2).1 + v 1 * (P 2).2 + v 4) - (v 0 * (P 0).1 + v 1 * (P 0).2 + v 4)) *
          ((P 1).1 - (P 0).1) - ((v 0 * (P 1).1 + v 1 * (P 1).2 + v 4) -
            (v 0 * (P 0).1 + v 1 * (P 0).2 + v 4)) * ((P 2).1 - (P 0).1) := by
        simp only [D, sarea]; ring
      rw [e]; exact two r2 q1 r1 q2
    have L2 : |v 2| ≤ 2 / |D| := by
      rw [le_div_iff₀ hDa, ← abs_mul]
      have e : v 2 * D = ((v 2 * (P 1).1 + v 3 * (P 1).2 + v 5) - (v 2 * (P 0).1 + v 3 * (P 0).2 + v 5)) *
          ((P 2).2 - (P 0).2) - ((v 2 * (P 2).1 + v 3 * (P 2).2 + v 5) -
            (v 2 * (P 0).1 + v 3 * (P 0).2 + v 5)) * ((P 1).2 - (P 0).2) := by
        simp only [D, sarea]; ring
      rw [e]; exact two r3 q4 r4 q3
    have L3 : |v 3| ≤ 2 / |D| := by
      rw [le_div_iff₀ hDa, ← abs_mul]
      have e : v 3 * D = ((v 2 * (P 2).1 + v 3 * (P 2).2 + v 5) - (v 2 * (P 0).1 + v 3 * (P 0).2 + v 5)) *
          ((P 1).1 - (P 0).1) - ((v 2 * (P 1).1 + v 3 * (P 1).2 + v 5) -
            (v 2 * (P 0).1 + v 3 * (P 0).2 + v 5)) * ((P 2).1 - (P 0).1) := by
        simp only [D, sarea]; ring
      rw [e]; exact two r4 q1 r3 q2
    have h4 : 0 < 4 / |D| := by positivity
    have h2 : 2 / |D| ≤ 4 / |D| := by gcongr; norm_num
    intro k
    fin_cases k
    · show |v 0| ≤ _; linarith
    · show |v 1| ≤ _; linarith
    · show |v 2| ≤ _; linarith
    · show |v 3| ≤ _; linarith
    · -- the translation `e = x(P₀) - a P₀.1 - b P₀.2`
      show |v 4| ≤ _
      have a0 := L0; have a1 := L1
      have t1 : |v 0 * (P 0).1| ≤ 2 / |D| := by
        rw [abs_mul]
        calc |v 0| * |(P 0).1| ≤ 2 / |D| * 1 := mul_le_mul a0
              (by rw [abs_le]; constructor <;> linarith [p0.1, p0.2.1]) (abs_nonneg _) (by positivity)
          _ = 2 / |D| := mul_one _
      have t2 : |v 1 * (P 0).2| ≤ 2 / |D| := by
        rw [abs_mul]
        calc |v 1| * |(P 0).2| ≤ 2 / |D| * 1 := mul_le_mul a1
              (by rw [abs_le]; constructor <;> linarith [p0.2.2.1, p0.2.2.2]) (abs_nonneg _)
              (by positivity)
          _ = 2 / |D| := mul_one _
      have h22 : 2 / |D| + 2 / |D| = 4 / |D| := by ring
      rw [abs_le] at t1 t2 ⊢
      constructor <;> linarith [m0.1, m0.2.1]
    · show |v 5| ≤ _
      have a0 := L2; have a1 := L3
      have t1 : |v 2 * (P 0).1| ≤ 2 / |D| := by
        rw [abs_mul]
        calc |v 2| * |(P 0).1| ≤ 2 / |D| * 1 := mul_le_mul a0
              (by rw [abs_le]; constructor <;> linarith [p0.1, p0.2.1]) (abs_nonneg _) (by positivity)
          _ = 2 / |D| := mul_one _
      have t2 : |v 3 * (P 0).2| ≤ 2 / |D| := by
        rw [abs_mul]
        calc |v 3| * |(P 0).2| ≤ 2 / |D| * 1 := mul_le_mul a1
              (by rw [abs_le]; constructor <;> linarith [p0.2.2.1, p0.2.2.2]) (abs_nonneg _)
              (by positivity)
          _ = 2 / |D| := mul_one _
      have h22 : 2 / |D| + 2 / |D| = 4 / |D| := by ring
      rw [abs_le] at t1 t2 ⊢
      constructor <;> linarith [m0.2.2.1, m0.2.2.2]
  have hbdd : Bornology.IsBounded S := by
    rw [Metric.isBounded_iff_subset_closedBall 0]
    refine ⟨1 + 4 / |D|, fun v hv => ?_⟩
    rw [Metric.mem_closedBall, dist_zero_right, pi_norm_le_iff_of_nonneg (by positivity)]
    intro k; rw [Real.norm_eq_abs]; exact hbound v hv k
  have hcpt : IsCompact S := Metric.isCompact_of_isClosed_isBounded hclosed hbdd
  have hid : (![1, 0, 0, 1, 0, 0] : Fin 6 → ℝ) ∈ S := fun i => by
    simpa [φ, affineMap] using hP i
  have hfc : Continuous fun v : Fin 6 → ℝ => |v 0 * v 3 - v 1 * v 2| := by fun_prop
  obtain ⟨v, hvS, hvmax⟩ := hcpt.exists_isMaxOn ⟨_, hid⟩ hfc.continuousOn
  have h1 : 1 ≤ |v 0 * v 3 - v 1 * v 2| := by
    have := hvmax hid; simpa using this
  refine ⟨v 0, v 1, v 2, v 3, v 4, v 5, hvS, h1, fun a' b' c' d' e' f' hT => ?_⟩
  have hw : (![a' * v 0 + b' * v 2, a' * v 1 + b' * v 3, c' * v 0 + d' * v 2, c' * v 1 + d' * v 3,
      a' * v 4 + b' * v 5 + e', c' * v 4 + d' * v 5 + f'] : Fin 6 → ℝ) ∈ S := fun i => by
    have := hT i
    rw [BoundaryReduction.affineMap_comp] at this
    simpa [φ] using this
  have := hvmax hw
  simp only [Set.mem_ofPred_eq, Matrix.cons_val] at this
  rw [BoundaryReduction.det_comp, abs_mul] at this
  have hpos' : 0 < |v 0 * v 3 - v 1 * v 2| := by linarith
  by_contra hc
  push Not at hc
  nlinarith [mul_lt_mul_of_pos_right hc hpos']

/-- The points of a Type-III configuration lie in the square. -/
theorem mem_of_typeIII {R : Fin 9 → Point} (h : IsTypeIII R) : ∀ i, R i ∈ unitSquare := by
  obtain ⟨U, V, W, X, Y, Z, hU, hV, hW, hX, hY, hZ, rfl⟩ := h
  intro i
  fin_cases i
  · exact ⟨le_refl _, zero_le_one, le_refl _, zero_le_one⟩
  · exact ⟨le_refl _, zero_le_one, zero_le_one, le_refl _⟩
  · exact ⟨zero_le_one, le_refl _, zero_le_one, le_refl _⟩
  · exact hU
  · exact hV
  · exact hW
  · exact hX
  · exact hY
  · exact hZ

/-- The `TYPE_II.md` form of the half-normalized Type II is the one of Corollary 4, and its points
lie in the square. -/
theorem of_typeIIHalf {R : Fin 9 → Point} (h : TypeII.IsTypeIIHalf R) :
    IsTypeIIHalf R ∧ ∀ i, R i ∈ unitSquare := by
  obtain ⟨l, b, V, W, X, Y, Z, ⟨hb, hb1, hl, hl1, hV, hW, hX, hY, hZ⟩, hb2, rfl⟩ := h
  refine ⟨⟨l, b, V, W, X, Y, Z, hb, hb2, hl, hl1, hV, hW, hX, hY, hZ, rfl⟩, fun i => ?_⟩
  fin_cases i
  · exact ⟨le_refl _, zero_le_one, zero_le_one, le_refl _⟩
  · exact ⟨zero_le_one, le_refl _, zero_le_one, le_refl _⟩
  · exact ⟨le_refl _, zero_le_one, hl.le, hl1.le⟩
  · exact ⟨hb.le, hb1.le, le_refl _, zero_le_one⟩
  · exact hV
  · exact hW
  · exact hX
  · exact hY
  · exact hZ

/-- **Claim** (`THREE_INTERIOR_TRIANGLES:claim-normalization`, made up). Normal form without
maximality. Every nine-point configuration in the square with least area at least `A₀` has an
affine image, by a map with `|det| ≥ 1` and a relabelling, that lies in the square and belongs to
N, C1, C2, Type II with `b ≤ 1/2`, or Type III. The proofs of `BOUNDARY_REDUCTION.md` and
`GLOBAL_STRUCTURE.md` use only the minimum-parallelogram property, which their determinant-one
shears preserve. The Type-II step is the shear normalization of `TYPE_II.md` §2.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 479-497.
Uses: THREE_INTERIOR_TRIANGLES:claim-min-enclosing-parallelogram,
BOUNDARY_REDUCTION:claim-side-contact, BOUNDARY_REDUCTION:claim-overlap,
BOUNDARY_REDUCTION:claim-adjacent-shear, GLOBAL_STRUCTURE:Lemma1, GLOBAL_STRUCTURE:Corollary2,
GLOBAL_STRUCTURE:claim-N-selection, GLOBAL_STRUCTURE:claim-C1-selection,
GLOBAL_STRUCTURE:claim-C2-selection, TYPE_II:ShearNormalization -/
theorem claim_normalization {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) :
    ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 9)), 1 ≤ |a * d - b * c| ∧
      (∀ i, affineMap a b c d e f (P (σ i)) ∈ unitSquare) ∧
      (IsN (affineMap a b c d e f ∘ P ∘ σ) ∨ IsC1 (affineMap a b c d e f ∘ P ∘ σ) ∨
        IsC2 (affineMap a b c d e f ∘ P ∘ σ) ∨ IsTypeIIHalf (affineMap a b c d e f ∘ P ∘ σ) ∨
        IsTypeIII (affineMap a b c d e f ∘ P ∘ σ)) := by
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hA
  obtain ⟨a₀, b₀, c₀, d₀, e₀, f₀, hsq₀, hdet₀, hmax₀⟩ := claim_min_enclosing_parallelogram hP hpos
  have hNE : BoundaryReduction.NoExpand (affineMap a₀ b₀ c₀ d₀ e₀ f₀ ∘ P) :=
    ⟨hsq₀, fun a' b' c' d' e' f' hT => hmax₀ a' b' c' d' e' f' hT⟩
  have hpos' : 0 < minTriangleArea (affineMap a₀ b₀ c₀ d₀ e₀ f₀ ∘ P) := by
    rw [minTriangleArea_affineMap]; exact mul_pos (by linarith) hpos
  obtain ⟨Q, hPQ, hfam⟩ := GlobalStructure.exists_family_of_noExpand hNE hpos'
  have hQsq : ∀ i, Q i ∈ unitSquare := (BoundaryReduction.noExpand_of_normalizes hNE hPQ).1
  have hQmin := BoundaryReduction.minTriangleArea_of_normalizes hPQ
  obtain ⟨a₁, b₁, c₁, d₁, e₁, f₁, σ₁, hdet₁, hQ⟩ := BoundaryReduction.normalizes_affine hPQ
  -- `Q` is an affine image of `P`, relabelled, with `|det| ≥ 1`
  have hQe : Q = affineMap (a₁ * a₀ + b₁ * c₀) (a₁ * b₀ + b₁ * d₀) (c₁ * a₀ + d₁ * c₀)
      (c₁ * b₀ + d₁ * d₀) (a₁ * e₀ + b₁ * f₀ + e₁) (c₁ * e₀ + d₁ * f₀ + f₁) ∘ P ∘ σ₁ := by
    funext i; rw [hQ i]; simp only [Function.comp_apply]; rw [BoundaryReduction.affineMap_comp]
  have hdetQ : 1 ≤ |(a₁ * a₀ + b₁ * c₀) * (c₁ * b₀ + d₁ * d₀) - (a₁ * b₀ + b₁ * d₀) *
      (c₁ * a₀ + d₁ * c₀)| := by
    rw [BoundaryReduction.det_comp, abs_mul, hdet₁, one_mul]; exact hdet₀
  have finish (h : IsN Q ∨ IsC1 Q ∨ IsC2 Q ∨ IsTypeIIHalf Q ∨ IsTypeIII Q) :
      ∃ (a b c d e f : ℝ) (σ : Equiv.Perm (Fin 9)), 1 ≤ |a * d - b * c| ∧
        (∀ i, affineMap a b c d e f (P (σ i)) ∈ unitSquare) ∧
        (IsN (affineMap a b c d e f ∘ P ∘ σ) ∨ IsC1 (affineMap a b c d e f ∘ P ∘ σ) ∨
          IsC2 (affineMap a b c d e f ∘ P ∘ σ) ∨ IsTypeIIHalf (affineMap a b c d e f ∘ P ∘ σ) ∨
          IsTypeIII (affineMap a b c d e f ∘ P ∘ σ)) := by
    refine ⟨_, _, _, _, a₁ * e₀ + b₁ * f₀ + e₁, c₁ * e₀ + d₁ * f₀ + f₁, σ₁, hdetQ, fun i => ?_, ?_⟩
    · have := hQsq i; rw [hQe] at this; exact this
    · rw [← hQe]; exact h
  rcases hfam with h | h | h | h | h
  · exact finish (Or.inl h)
  · exact finish (Or.inr (Or.inl h))
  · exact finish (Or.inr (Or.inr (Or.inl h)))
  · -- Type II: the shear normalization of `TYPE_II.md` §2
    obtain ⟨R, ⟨a₂, b₂, c₂, d₂, e₂, f₂, σ₂, hdet₂, hR⟩, hR'⟩ :=
      TypeII.shearNormalization Q h (by rw [hQmin]; exact hpos')
    have hRe : R = affineMap (a₂ * (a₁ * a₀ + b₁ * c₀) + b₂ * (c₁ * a₀ + d₁ * c₀))
        (a₂ * (a₁ * b₀ + b₁ * d₀) + b₂ * (c₁ * b₀ + d₁ * d₀))
        (c₂ * (a₁ * a₀ + b₁ * c₀) + d₂ * (c₁ * a₀ + d₁ * c₀))
        (c₂ * (a₁ * b₀ + b₁ * d₀) + d₂ * (c₁ * b₀ + d₁ * d₀))
        (a₂ * (a₁ * e₀ + b₁ * f₀ + e₁) + b₂ * (c₁ * e₀ + d₁ * f₀ + f₁) + e₂)
        (c₂ * (a₁ * e₀ + b₁ * f₀ + e₁) + d₂ * (c₁ * e₀ + d₁ * f₀ + f₁) + f₂) ∘ P ∘ (σ₁ * σ₂) := by
      funext i; rw [hR i, hQe]; simp only [Function.comp_apply, Equiv.Perm.coe_mul]
      rw [BoundaryReduction.affineMap_comp]
    have hdetR : 1 ≤ |(a₂ * (a₁ * a₀ + b₁ * c₀) + b₂ * (c₁ * a₀ + d₁ * c₀)) *
        (c₂ * (a₁ * b₀ + b₁ * d₀) + d₂ * (c₁ * b₀ + d₁ * d₀)) -
        (a₂ * (a₁ * b₀ + b₁ * d₀) + b₂ * (c₁ * b₀ + d₁ * d₀)) *
        (c₂ * (a₁ * a₀ + b₁ * c₀) + d₂ * (c₁ * a₀ + d₁ * c₀))| := by
      rw [BoundaryReduction.det_comp, abs_mul, hdet₂, one_mul]; exact hdetQ
    have hRsq : ∀ i, R i ∈ unitSquare := by
      rcases hR' with h3 | h2
      · exact mem_of_typeIII h3
      · exact (of_typeIIHalf h2).2
    refine ⟨_, _, _, _, a₂ * (a₁ * e₀ + b₁ * f₀ + e₁) + b₂ * (c₁ * e₀ + d₁ * f₀ + f₁) + e₂,
      c₂ * (a₁ * e₀ + b₁ * f₀ + e₁) + d₂ * (c₁ * e₀ + d₁ * f₀ + f₁) + f₂, σ₁ * σ₂, hdetR,
      fun i => ?_, ?_⟩
    · have := hRsq i; rw [hRe] at this; exact this
    · rw [← hRe]
      rcases hR' with h3 | h2
      · exact Or.inr (Or.inr (Or.inr (Or.inr h3)))
      · exact Or.inr (Or.inr (Or.inr (Or.inl (of_typeIIHalf h2).1)))
  · exact finish (Or.inr (Or.inr (Or.inr (Or.inr h))))

/-- **Corollary 5** (`THREE_INTERIOR_TRIANGLES:Corollary5`). Global triangle capacity. In any
nine-point configuration in the unit square with least area at least `A₀`, every triangle spanned
by three of its points contains at most two further points. No normalization or maximizing
hypothesis is assumed.
`hand/THREE_INTERIOR_TRIANGLES.md`, lines 444-506.
Uses: THREE_INTERIOR_TRIANGLES:claim-normalization, OPPOSITE_CORNERS:Corollary2,
CORNER_FAMILIES:TypeIII-complete, THREE_INTERIOR_TRIANGLES:Corollary2,
ONE_CORNER:GlobalC1OccupancyCorollary, THREE_INTERIOR_TRIANGLES:Corollary4 -/
theorem corollary5 {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) : TriangleCapacityTwo P := by
  obtain ⟨a, b, c, d, e, f, σ, hdet, hsq, hfam⟩ := claim_normalization hP hA
  set Q := affineMap a b c d e f ∘ P ∘ σ with hQ
  have hdet0 : a * d - b * c ≠ 0 := by
    intro h; rw [h, abs_zero] at hdet; linarith
  have hQmin : A₀ ≤ minTriangleArea Q := by
    rw [hQ, minTriangleArea_affineMap, minTriangleArea_comp_perm]
    have := minTriangleArea_nonneg P
    nlinarith
  have hQsq : ∀ i, Q i ∈ unitSquare := hsq
  have capQ : TriangleCapacityTwo Q := by
    rcases hfam with ⟨a', h', b', c', d', f', X, Y, Z, hN, hX, hY, hZ, hQe⟩ |
      ⟨h', c', d', f', W, X, Y, Z, hC, hW, hX, hY, hZ, hQe⟩ |
      ⟨h', c', d', f', X, Y, Z, hC, hX, hY, hZ, hQe⟩ |
      ⟨l, b', V, W, X, Y, Z, hb, hb2, hl, hl1, hV, hW, hX, hY, hZ, hQe⟩ |
      ⟨U, V, W, X, Y, Z, hU, hV, hW, hX, hY, hZ, hQe⟩
    · rw [hQe] at hQmin ⊢
      exact corollary2 hN hX hY hZ hQmin
    · rw [hQe] at hQmin ⊢
      intro i j k _
      exact le_trans (Set.ncard_le_ncard (fun m hm => Or.inl hm))
        (OneCorner.globalC1OccupancyCorollary h' c' d' f' hC W X Y Z hW hX hY hZ hQmin i j k)
    · rw [hQe] at hQmin
      exact absurd hQmin (not_le.2 (OppositeCorners.corollary2_lt_A₀ h' c' d' f' hC X Y Z hX hY hZ))
    · rw [hQe] at hQmin ⊢
      exact corollary4 hl hl1 hb hb2 hV hW hX hY hZ hQmin
    · rw [hQe] at hQmin
      exact absurd hQmin (not_le.2 (CornerFamilies.typeIII_lt_A₀ U V W X Y Z hU hV hW hX hY hZ))
  have capPσ : TriangleCapacityTwo (P ∘ σ) := TriangleCapacityTwo.of_affine hdet0 capQ
  have := TriangleCapacityTwo.comp capPσ (f := σ.symm) σ.symm.injective
  have e : (P ∘ σ) ∘ σ.symm = P := by funext i; simp
  rwa [e] at this

end Heilbronn.ThreeInteriorTriangles
