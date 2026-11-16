module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.TypeII.TypeII.Chamber

/-! # Outer right-hull cells in the unbalanced upper cut

The first of the modules on the unbalanced Type-II row `(ℓ, c, r) = (1, 2, 3)`; `quadHull_cell_of_not_triangular`,
`not_cellI_or_cellIII`, `not_lineIsolates4_C` and `lineSeparates_DC_EB` are used by the assembly
`UnbalancedFinalLowerWedge.minTriangleArea_typeIIConfig_lt_A₀`, and the ear inequalities (`ear_phys`, `EBR_le_ear_root`,
`genericEar_nonpos`) are reused by the other unbalanced modules.

**Shared definitions of the unbalanced group.** This file also holds the definitions used by all
modules `Heilbronn/Nine/TypeII/Unbalanced/*.lean`:

* the anchors `ptD = (0,1)`, `ptC = (1,1)`, `ptE l = (0,λ)`, `ptB b = (b,0)` of
  `typeIIConfig l b P Q R S T = ![D, C, E, B, P, Q, R, S, T]` (`typeIIConfig_eq`), and
  `ConvexQuad`: these are the declarations of `Heilbronn.Nine.TypeII` (`TypeII/TypeII/Basic.lean`),
  re-exported here under the same names; the free points are always named `P, Q` (central) and
  `R, S, T` (right), in this order;
* `Kc = 4 + 2√3`, the constant of the two-interior-point lemma (`Kc_eq_Ktwo`: it is
  `TypeII.Ktwo`);
* `Row123 l b P Q R S T`: the standing setting of the row `(1, 2, 3)` in the normalization
  `0 < b ≤ 1/2`: `P, Q` strictly inside `DBC`, `R, S, T` in the square and strictly right of
  `BC`;
* `ConvexQuad`, `QuadHull B R S C T` (the nontriangular right hull, labelled cyclically, with `T`
  inside), the support cells `CellI`, `CellII`, `CellIII`, `RightHullTriangular`, `IsRelabel`;
* `NoPointInside`, `AtMostOne`, `AtMostOneInside` (emptiness and capacity one of a triangle);
* the pair-line signs `LineIsolates` (three points), `LineIsolates4` (one of four anchors alone
  in an open half-plane of `PQ`) and `LineSeparates` (two against two);
* the ear functionals `outerEar s b C = N_b(C)` (`outerEar_nonpos`) and `genericEar s b C = 𝒩_b(C)`
  (`genericEar_nonpos`).

Brackets `[XYZ]` denote `sarea X Y Z` (twice the signed area, positive for
counterclockwise `X, Y, Z`). With `R = (r, u)`, `S = (k, t)`, `q = 1 - λ`, `w = 1 - b`:
`[EBR] = bu + λ(r-b)`, `[ERC] = 1 - u - q(1-r)`, `[DRC] = 1 - u`, `[BRC] = r - b - wu`,
`[EBC] = 1 - wq`. "Above `CE`" is `0 < sarea (ptE l) ptC X`; "above `DR`" (the `C`-side) is
`0 < sarea ptD R X`; "above `ER`" is `0 < sarea (ptE l) R X`. Points on `DB` or `BC`, and
collinear triples, are excluded by the positive minimum area, so all containments are strict.

**Setting of this module**: `Row123` with every actual doubled area at least
`s = 7/64`, i.e. `7/128 ≤ minTriangleArea (typeIIConfig l b P Q R S T)`.

**Results.**
* `quadHull_cell_of_not_triangular`: a nontriangular right hull is, after relabelling, a quadrilateral `BRSC` with `T`
  inside, in support cell I, II or III.
* `outer_cell_bounds`, `quad_ears` (the lower-vertex inequality in each cell),
  `EBR_le_ear_root`, `outerEar_nonpos`: the outer-cell ear inequalities.
* `q_gt_67_80`: both central points above `CE` force `q > 67/80`.
* `not_cellI_or_cellIII`: with both central points above `CE`, cells I and III are impossible.
* `genericEar_nonpos`: the generic ear inequality of every quadrilateral right hull.
* `q_gt_of_isolates_C`, `not_lineIsolates4_C`: `PQ` cannot isolate `C`.
* `weighted_ineq_of_isolates_D`, `q_gt_of_isolates_D`, `lineSeparates_DC_EB`: `PQ` cannot isolate `D`, hence it
  separates `{D, C}` from `{E, B}`.

**Helpers** (section `Helpers`, reused by the other unbalanced modules): the barycentric identity
`sarea_bary`; capacities of actual triangles (`three_le_of_inside`, `Kc_le_of_two_inside`,
`noPointInside_of_lt`, `atMostOneInside_of_lt`); the support frame of a quadrilateral right hull
(`right_support_frame`, `quad_support`, `right_support_cells`, `sqrt_U_add_sqrt_V`: `√[BRS] + √[CRS]
≤ √w`); the convex order `quad_order`; the ear algebra (`ear_phys`, `ear_generic`, `ear_I`,
`ear_III`, `ear_square`); the root location `root_gt` of a convex quadratic and the scalar bounds
`qC_bound`, `qD_bound`, `q89_bound`; `BE_same_side` (chamber lemma both ways); `upper_pair`,
`quad_ears`, `weighted_D_core`.

The cyclic labelling `B, R, S, C` of `quadHull_cell_of_not_triangular` is a relabelling of the three right points
(stated with `IsRelabel`); `not_lineIsolates4_C` and `lineSeparates_DC_EB` are stated for the labelled quadrilateral
hull `QuadHull`, which `quadHull_cell_of_not_triangular` provides.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.UnbalancedRightHull

/-! ### The Type-II anchors

The anchors, the named form of `typeIIConfig` and `ConvexQuad` are those of `Heilbronn.Nine.TypeII`
(`Heilbronn/Nine/TypeII/TypeII/Basic.lean`), re-exported here under the same names. -/

export TypeII (ptD ptC ptE ptB typeIIConfig_eq ConvexQuad)

/-- The constant `K = 4 + 2√3` of the two-interior-point lemma
(`twoInteriorPointLemma`): a triangle of doubled area `H` containing two further
actual points has `H ≥ K s`. -/
def Kc : ℝ := 4 + 2 * Real.sqrt 3

/-- `Kc` is the constant `Ktwo` of `Heilbronn.Nine.TypeII`. -/
theorem Kc_eq_Ktwo : Kc = TypeII.Ktwo := rfl

/-! ### The standing setting of the unbalanced row -/

/-- The standing setting of the unbalanced modules: the Type-II anchors with `0 < b ≤ 1/2`,
`0 < λ < 1`, and the count `(ℓ, c, r) = (1, 2, 3)`:
`E` is the only further point of the left container, the central points `P, Q` lie (strictly)
inside `DBC` (counterclockwise `D, B, C`), and the three right points `R, S, T` lie in the right
container `conv{B, C, (1,0)}`, i.e. in the square and strictly to the right of `BC`
(`0 < [BXC]`). Strictness is free: a point on `DB`, `BC` or `DC` would make a zero area. -/
structure Row123 (l b : ℝ) (P Q R S T : Point) : Prop where
  b_pos : 0 < b
  b_le : b ≤ 1 / 2
  l_pos : 0 < l
  l_lt : l < 1
  P_central : InTriangle P ptD (ptB b) ptC
  Q_central : InTriangle Q ptD (ptB b) ptC
  R_mem : R ∈ unitSquare
  S_mem : S ∈ unitSquare
  T_mem : T ∈ unitSquare
  R_right : 0 < sarea (ptB b) R ptC
  S_right : 0 < sarea (ptB b) S ptC
  T_right : 0 < sarea (ptB b) T ptC

/-! ### Right hulls and support cells -/

/-- The nontriangular right hull, labelled cyclically: `B, R, S, C` is a strictly convex
counterclockwise quadrilateral and `T` lies strictly inside it. -/
def QuadHull (B R S C T : Point) : Prop :=
  ConvexQuad B R S C ∧ 0 < sarea B R T ∧ 0 < sarea R S T ∧ 0 < sarea S C T ∧ 0 < sarea C B T

/-- Support cell I: `T ∈ int BRS ∩ int BCR`. -/
def CellI (B R S C T : Point) : Prop := InTriangle T B R S ∧ InTriangle T B R C

/-- Support cell II: `T ∈ int BCR ∩ int BCS`. -/
def CellII (B R S C T : Point) : Prop := InTriangle T B R C ∧ InTriangle T B S C

/-- Support cell III: `T ∈ int CRS ∩ int BCS`. -/
def CellIII (B R S C T : Point) : Prop := InTriangle T R S C ∧ InTriangle T B S C

/-- The right five-point hull is a triangle: one right point `X` with `B, X, C` containing the
other two (`B`, `C` are always hull vertices, since the container lies below `BC`). -/
def RightHullTriangular (B C R S T : Point) : Prop :=
  (InTriangle S B R C ∧ InTriangle T B R C) ∨ (InTriangle R B S C ∧ InTriangle T B S C) ∨
    (InTriangle R B T C ∧ InTriangle S B T C)

/-- `(R', S', T')` is a relabelling of `(R, S, T)`. -/
def IsRelabel (R S T R' S' T' : Point) : Prop :=
  ∃ σ : Equiv.Perm (Fin 3), ![R', S', T'] = ![R, S, T] ∘ σ

/-! ### Emptiness and capacity of triangles -/

/-- No point of the configuration `X` lies strictly inside the counterclockwise triangle
`ABC` ("`ABC` contains no further actual point"). -/
def NoPointInside {n : ℕ} (X : Fin n → Point) (A B C : Point) : Prop :=
  ∀ i, ¬ InTriangle (X i) A B C

/-- At most one point of the configuration `X` has the property `p`. -/
def AtMostOne {n : ℕ} (X : Fin n → Point) (p : Point → Prop) : Prop :=
  ∀ i j, p (X i) → p (X j) → i = j

/-- The counterclockwise triangle `ABC` contains at most one further actual point (capacity
one). -/
def AtMostOneInside {n : ℕ} (X : Fin n → Point) (A B C : Point) : Prop :=
  AtMostOne X fun Y => InTriangle Y A B C

/-! ### Pair-line signs -/

/-- The line `XY` isolates `V` from `A, B`: `V` is in one open half-plane, `A, B` in the
other. -/
def LineIsolates (X Y V A B : Point) : Prop :=
  (0 < sarea X Y V ∧ sarea X Y A < 0 ∧ sarea X Y B < 0) ∨
    (sarea X Y V < 0 ∧ 0 < sarea X Y A ∧ 0 < sarea X Y B)

/-- The line `XY` isolates `V` from `A, B, C`: `V` is in one open half-plane, `A, B, C` in the
other. -/
def LineIsolates4 (X Y V A B C : Point) : Prop :=
  (0 < sarea X Y V ∧ sarea X Y A < 0 ∧ sarea X Y B < 0 ∧ sarea X Y C < 0) ∨
    (sarea X Y V < 0 ∧ 0 < sarea X Y A ∧ 0 < sarea X Y B ∧ 0 < sarea X Y C)

/-- The line `XY` puts `A, B` strictly on one side and `C, D` strictly on the other. -/
def LineSeparates (X Y A B C D : Point) : Prop :=
  (0 < sarea X Y A ∧ 0 < sarea X Y B ∧ sarea X Y C < 0 ∧ sarea X Y D < 0) ∨
    (sarea X Y A < 0 ∧ sarea X Y B < 0 ∧ 0 < sarea X Y C ∧ 0 < sarea X Y D)

/-! ### The ear functionals -/

/-- The outer-cell ear functional `N_b(C) = 4Cbsw - {wC - s(1+b)}²`, `w = 1 - b`. -/
def outerEar (s b C : ℝ) : ℝ := 4 * C * b * s * (1 - b) - ((1 - b) * C - s * (1 + b)) ^ 2

/-- The generic ear functional `𝒩_b(C) = 4Cbs - w(C - s)²`, `w = 1 - b`. -/
def genericEar (s b C : ℝ) : ℝ := 4 * C * b * s - (1 - b) * (C - s) ^ 2

/-! ### Helpers: signs, capacities, the support frame, ear algebra -/

section Helpers

open TypeII

/-- The barycentric identity: an affine function `sarea U V ·` at a point `Q` is the combination
of its values at `A, B, C` with the weights `[BCQ], [CAQ], [ABQ]`. -/
theorem sarea_bary (A B C Q U V : Point) :
    sarea A B C * sarea U V Q =
      sarea B C Q * sarea U V A + sarea C A Q * sarea U V B + sarea A B Q * sarea U V C := by
  unfold sarea; ring

section Inside

variable {n : ℕ} {X : Fin n → Point} {s : ℝ}

theorem inTriangle_ne_idx {i a b c : Fin n} (h : InTriangle (X i) (X a) (X b) (X c)) :
    a ≠ b ∧ b ≠ c ∧ a ≠ c ∧ i ≠ a ∧ i ≠ b ∧ i ≠ c := by
  obtain ⟨h1, h2, h3⟩ := h
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩ <;> rintro rfl <;> simp [sarea] at h1 h2 h3

/-- A point of the configuration strictly inside an actual triangle splits it into three
actual triangles. -/
theorem three_le_of_inside (hm : s / 2 ≤ minTriangleArea X) {i a b c : Fin n}
    (h : InTriangle (X i) (X a) (X b) (X c)) : 3 * s ≤ sarea (X a) (X b) (X c) := by
  obtain ⟨hab, hbc, hac, hia, hib, hic⟩ := inTriangle_ne_idx h
  have e1 := TypeII.le_abs_sarea_of_le_min hm a b i hab hib.symm hia.symm
  have e2 := TypeII.le_abs_sarea_of_le_min hm b c i hbc hic.symm hib.symm
  have e3 := TypeII.le_abs_sarea_of_le_min hm c a i hac.symm hia.symm hic.symm
  obtain ⟨h1, h2, h3⟩ := h
  rw [abs_of_pos h1] at e1; rw [abs_of_pos h2] at e2; rw [abs_of_pos h3] at e3
  have := sarea_add_sarea_add_sarea (X a) (X b) (X c) (X i)
  linarith

/-- Two points of the configuration strictly inside an actual triangle force its doubled area to
be at least `K s` (`twoInteriorPointLemma`). -/
theorem Kc_le_of_two_inside (hs : 0 < s) (hm : s / 2 ≤ minTriangleArea X) {i j a b c : Fin n}
    (hij : i ≠ j) (hi : InTriangle (X i) (X a) (X b) (X c))
    (hj : InTriangle (X j) (X a) (X b) (X c)) : Kc * s ≤ sarea (X a) (X b) (X c) := by
  obtain ⟨hab, hbc, hac, hia, hib, hic⟩ := inTriangle_ne_idx hi
  obtain ⟨-, -, -, hja, hjb, hjc⟩ := inTriangle_ne_idx hj
  have hinj : Function.Injective ![a, b, c, i, j] := by
    intro x y hxy
    fin_cases x <;> fin_cases y <;> simp_all [eq_comm]
  have h5 : s / 2 ≤ minTriangleArea ![X a, X b, X c, X i, X j] :=
    hm.trans (TypeII.min_le_min_reindex (by norm_num) X _ _ hinj
      (by funext m; fin_cases m <;> rfl))
  have h2 := twoInteriorPointLemma (X a) (X b) (X c) (X i) (X j) (Or.inl hi)
    (Or.inl hj) (s / 2) (by positivity) h5
  have hpos : 0 < sarea (X a) (X b) (X c) := by
    have := sarea_add_sarea_add_sarea (X a) (X b) (X c) (X i)
    obtain ⟨h1, h2, h3⟩ := hi
    linarith
  rw [triangleArea_eq, abs_of_pos hpos] at h2
  unfold Kc
  linarith

theorem noPointInside_of_lt (hm : s / 2 ≤ minTriangleArea X) {a b c : Fin n}
    (hlt : sarea (X a) (X b) (X c) < 3 * s) : NoPointInside X (X a) (X b) (X c) :=
  fun _ hi => absurd (three_le_of_inside hm hi) (not_le.2 hlt)

theorem atMostOneInside_of_lt (hs : 0 < s) (hm : s / 2 ≤ minTriangleArea X) {a b c : Fin n}
    (hlt : sarea (X a) (X b) (X c) < Kc * s) : AtMostOneInside X (X a) (X b) (X c) := by
  intro i j hi hj
  by_contra hij
  exact absurd (Kc_le_of_two_inside hs hm hij hi hj) (not_le.2 hlt)

end Inside

/-- Support normalization over the base `C, B` of the right container. -/
theorem right_support_frame {b : ℝ} {H F X : Point} (hb1 : b < 1)
    (hH : 0 < sarea ptC (ptB b) H) (hH1 : H.1 ≤ 1) (hF : 0 < sarea ptC (ptB b) F)
    (hF2 : 0 ≤ F.2) (hX : 0 ≤ sarea ptC (ptB b) X) (hCHF : sarea ptC H F < 0)
    (hCHX : sarea ptC H X ≤ 0) (hBFH : 0 < sarea (ptB b) F H) (hBFX : 0 ≤ sarea (ptB b) F X) :
    ∃ (Ω h f : ℝ) (m : Point → Point), 0 < Ω ∧ Ω ≤ 1 - b ∧
      (∀ p q r, sarea (m p) (m q) (m r) = sarea p q r / Ω) ∧
      m ptC = hsA ∧ m (ptB b) = hsE ∧ m H = hsH h ∧ m F = hsF f ∧ HSNormal h f (m X) := by
  have hW : 0 < sarea ptC (ptB b) (1, 0) := by simp only [sarea, ptC, ptB]; nlinarith
  have hHW : 0 ≤ sarea (1, 0) ptC H := by simp only [sarea, ptC]; linarith
  have hFW : 0 ≤ sarea (ptB b) (1, 0) F := by simp only [sarea, ptB]; nlinarith
  obtain ⟨W', hS, hle⟩ := support_of_extremes hW hH hHW hF hFW hX hCHF hCHX hBFH hBFX
  obtain ⟨a, b', c, d, e, g, h₀, f₀, hdet, hU, hV, -, hH', hF', hN⟩ := exists_affineMap_hsNormal hS
  have hΩ := hS.1
  refine ⟨sarea ptC (ptB b) W', h₀, f₀, affineMap a b' c d e g, hΩ, ?_, ?_, hU, hV, hH', hF',
    hN⟩
  · have : sarea ptC (ptB b) (1, 0) = 1 - b := by simp only [sarea, ptC, ptB]; ring
    linarith
  · intro p q r; rw [sarea_affineMap, hdet]; field_simp

/-- Transfer of a least-area bound through a map dividing every signed area by `Ω > 0`. -/
theorem min_transfer {n : ℕ} (hn : 3 ≤ n) {P Q : Fin n → Point} {Ω t : ℝ} (hΩ : 0 < Ω)
    (m : Point → Point) (hm : ∀ p q r, sarea (m p) (m q) (m r) = sarea p q r / Ω)
    (hQ : ∀ i, Q i = m (P i)) (ht : t ≤ minTriangleArea P) : t / Ω ≤ minTriangleArea Q := by
  refine le_minTriangleArea hn Q fun i j k hij hjk => ?_
  have h1 := minTriangleArea_le_of_lt P hij hjk
  rw [hQ, hQ, hQ, triangleArea_eq, hm, abs_div, abs_of_pos hΩ]
  rw [triangleArea_eq] at h1
  rw [div_le_iff₀ hΩ]
  have : |sarea (P i) (P j) (P k)| / Ω / 2 * Ω = |sarea (P i) (P j) (P k)| / 2 := by
    field_simp
  rw [this]; linarith

/-- In the support frame with normalized doubled minimum `7/(64Ω) > 7/64`, cells IV and V are
impossible, and cells I and III force `K · 7/64 ≤ Ω`. -/
theorem right_support_cells {Ω h f : ℝ} {Y : Point} (hΩ : 0 < Ω) (hΩ1 : Ω < 1) (hN : HSNormal h f Y)
    (hmin : 7 / 128 / Ω ≤ minTriangleArea (hsConfig h f Y)) :
    sarea (hsH h) (hsF f) Y < 0 ∧ ¬ (0 < sarea hsA (hsF f) Y ∧ sarea hsE (hsH h) Y < 0) ∧
      ((0 < sarea hsA (hsF f) Y ∧ 0 < sarea hsE (hsH h) Y) ∨
        (sarea hsA (hsF f) Y < 0 ∧ sarea hsE (hsH h) Y < 0) → Kc * (7 / 64) ≤ Ω) := by
  set s := 7 / (64 * Ω) with hs_def
  have hs : 0 < s := by positivity
  have hmin' : s / 2 ≤ minTriangleArea (hsConfig h f Y) := by
    have : s / 2 = 7 / 128 / Ω := by rw [hs_def]; field_simp; ring
    rw [this]; exact hmin
  have hs7 : 7 / 64 < s := by
    rw [hs_def, lt_div_iff₀ (by positivity)]; nlinarith
  have hcells := hsNormal_five_cells hN hs hmin'
  obtain ⟨hc, -, -, -, -, -⟩ := hcells
  have hIV : ¬ InCellIV hsA hsE (hsH h) (hsF f) Y := fun hc4 => by
    have := inCellIV_bound hN hs hmin' hc4; linarith
  have hV : ¬ InCellV hsA hsE (hsH h) (hsF f) Y := fun hc5 => by
    have := inCellV_bound hN hs hmin' hc5; linarith
  have hK : s ≤ 1 / Ktwo → Kc * (7 / 64) ≤ Ω := by
    intro hsk
    rw [hs_def, div_le_div_iff₀ (by positivity) Ktwo_pos] at hsk
    rw [Kc_eq_Ktwo]; linarith
  refine ⟨?_, ?_, ?_⟩
  · rcases hc with h1 | h1 | h1 | h1 | h1
    · exact h1.2.2
    · exact h1.2.2
    · exact h1.2.2
    · exact h1.2.2
    · exact absurd h1 hV
  · rintro ⟨hL, hK'⟩
    rcases hc with h1 | h1 | h1 | h1 | h1
    · linarith [h1.2.1]
    · linarith [h1.1]
    · linarith [h1.1]
    · exact hIV h1
    · exact hV h1
  · intro hLK
    rcases hc with h1 | h1 | h1 | h1 | h1
    · exact hK (inCellI_bound hN hs hmin' h1).2
    · exfalso; rcases hLK with ⟨a1, a2⟩ | ⟨a1, a2⟩
      · linarith [h1.1]
      · linarith [h1.2.1]
    · exact hK (inCellIII_bound hN hs hmin' h1).2
    · exact absurd h1 hIV
    · exact absurd h1 hV

/-- The core of `quadHull_cell_of_not_triangular`: `H` extreme at `C`, `F` extreme at `B`, `X` the remaining point. -/
theorem quad_of_extremes {b : ℝ} {H F X : Point} (hb : 0 < b) (hb1 : b < 1) (hH1 : H.1 ≤ 1) (hF2 : 0 ≤ F.2)
    (hH : 0 < sarea ptC (ptB b) H) (hF : 0 < sarea ptC (ptB b) F)
    (hX : 0 < sarea ptC (ptB b) X) (hCHF : sarea ptC H F < 0) (hCHX : sarea ptC H X < 0)
    (hBFH : 0 < sarea (ptB b) F H) (hBFX : 0 < sarea (ptB b) F X)
    (hm5 : 7 / 128 ≤ minTriangleArea ![ptC, ptB b, H, F, X]) :
    QuadHull (ptB b) F H ptC X ∧ (CellI (ptB b) F H ptC X ∨ CellII (ptB b) F H ptC X ∨
      CellIII (ptB b) F H ptC X) := by
  obtain ⟨Ω, h, f, m, hΩ, hΩ1, hm, mC, mB, mH, mF, hN⟩ :=
    right_support_frame hb1 hH hH1 hF hF2 hX.le hCHF hCHX.le hBFH hBFX.le
  have hmin : 7 / 128 / Ω ≤ minTriangleArea (hsConfig h f (m X)) :=
    min_transfer (by norm_num) hΩ m hm (fun i => by
      fin_cases i <;> simp [hsConfig, mC, mB, mH, mF]) hm5
  obtain ⟨hNeg, hLK, -⟩ := right_support_cells hΩ (by linarith) hN hmin
  have hpos : 0 < minTriangleArea ![ptC, ptB b, H, F, X] := by linarith
  have nL : sarea ptC F X ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 3 4
  have nK : sarea (ptB b) H X ≠ 0 := sarea_ne_zero_of_min_pos hpos 1 2 4
  have eN : sarea (hsH h) (hsF f) (m X) = sarea H F X / Ω := by rw [← mH, ← mF, hm]
  have eL : sarea hsA (hsF f) (m X) = sarea ptC F X / Ω := by rw [← mC, ← mF, hm]
  have eK : sarea hsE (hsH h) (m X) = sarea (ptB b) H X / Ω := by rw [← mB, ← mH, hm]
  rw [eN, div_neg_iff] at hNeg
  have hHFX : sarea H F X < 0 := by rcases hNeg with h1 | h1 <;> [linarith [h1.2]; exact h1.1]
  rw [eL, eK] at hLK
  have c1 : sarea F H ptC = -sarea ptC H F := by unfold sarea; ring
  have c2 : sarea H ptC (ptB b) = sarea ptC (ptB b) H := by unfold sarea; ring
  have c3 : sarea F H X = -sarea H F X := by unfold sarea; ring
  have c4 : sarea H ptC X = -sarea ptC H X := by unfold sarea; ring
  have c5 : sarea F ptC X = -sarea ptC F X := by unfold sarea; ring
  have c6 : sarea H (ptB b) X = -sarea (ptB b) H X := by unfold sarea; ring
  have hq : QuadHull (ptB b) F H ptC X :=
    ⟨⟨hBFH, by linarith, by linarith, hF⟩, hBFX, by linarith, by linarith, hX⟩
  refine ⟨hq, ?_⟩
  rcases lt_or_gt_of_ne nL with hL | hL <;> rcases lt_or_gt_of_ne nK with hK | hK
  · exact Or.inl ⟨⟨hBFX, by linarith, by linarith⟩, ⟨hBFX, by linarith, hX⟩⟩
  · exact Or.inr (Or.inl ⟨⟨hBFX, by linarith, hX⟩, ⟨hK, by linarith, hX⟩⟩)
  · exact absurd ⟨div_pos hL hΩ, div_neg_of_neg_of_pos hK hΩ⟩ hLK
  · exact Or.inr (Or.inr ⟨⟨by linarith, by linarith, hL⟩, ⟨hK, by linarith, hX⟩⟩)

/-- The support normalization of a quadrilateral right hull `B, R, S, C` with `T` inside: the
leg contacts are `S` (at `C`) and `R` (at `B`). -/
theorem quad_support {b : ℝ} {R S T : Point} (hb1 : b < 1) (hR : R ∈ unitSquare)
    (hS : S ∈ unitSquare) (hq : QuadHull (ptB b) R S ptC T) :
    ∃ (Ω h f : ℝ) (m : Point → Point), 0 < Ω ∧ Ω ≤ 1 - b ∧
      (∀ p q r, sarea (m p) (m q) (m r) = sarea p q r / Ω) ∧
      m ptC = hsA ∧ m (ptB b) = hsE ∧ m S = hsH h ∧ m R = hsF f ∧ HSNormal h f (m T) := by
  obtain ⟨⟨q1, q2, q3, q4⟩, t1, t2, t3, t4⟩ := hq
  have c1 : sarea ptC (ptB b) S = sarea S ptC (ptB b) := by unfold sarea; ring
  have c2 : sarea ptC S R = -sarea R S ptC := by unfold sarea; ring
  have c3 : sarea ptC S T = -sarea S ptC T := by unfold sarea; ring
  exact right_support_frame hb1 (by linarith) hS.2.1 q4 hR.2.2.1 t4.le (by linarith) (by linarith) q1
    t1.le

/-- `√[BRS] + √[CRS] ≤ √Ω ≤ √w` for a quadrilateral right hull (by `sqrt_add_sqrt_le_one` in
the support frame). -/
theorem sqrt_U_add_sqrt_V {b : ℝ} {R S T : Point} (hb1 : b < 1) (hR : R ∈ unitSquare)
    (hS : S ∈ unitSquare) (hq : QuadHull (ptB b) R S ptC T) :
    Real.sqrt (sarea (ptB b) R S) + Real.sqrt (sarea ptC R S) ≤ Real.sqrt (1 - b) := by
  obtain ⟨Ω, h, f, m, hΩ, hΩ1, hm, mC, mB, mS, mR, hN⟩ := quad_support hb1 hR hS hq
  have eU : sarea (ptB b) R S = Ω * ((1 - h) * (1 - f)) := by
    have := hm (ptB b) R S
    rw [mB, mR, mS] at this
    have e : sarea hsE (hsF f) (hsH h) = (1 - h) * (1 - f) := by
      simp only [sarea, hsE, hsF, hsH]; ring
    rw [e, eq_div_iff hΩ.ne'] at this; linarith
  have eV : sarea ptC R S = Ω * (h * f) := by
    have := hm ptC R S
    rw [mC, mR, mS] at this
    have e : sarea hsA (hsF f) (hsH h) = h * f := by simp only [sarea, hsA, hsF, hsH]; ring
    rw [e, eq_div_iff hΩ.ne'] at this; linarith
  obtain ⟨hh0, hh1, hf0, hf1, -⟩ := hN
  have hb := sqrt_add_sqrt_le_one hh0.le hh1.le hf0.le hf1.le
  rw [eU, eV, Real.sqrt_mul hΩ.le, Real.sqrt_mul hΩ.le]
  have hsq : Real.sqrt Ω ≤ Real.sqrt (1 - b) := Real.sqrt_le_sqrt hΩ1
  nlinarith [Real.sqrt_nonneg Ω, Real.sqrt_nonneg ((1 - h) * (1 - f)),
    Real.sqrt_nonneg (h * f)]

/-- `13/16 < K · 7/64`, from `√3 > 12/7`. -/
theorem Kc_s0_gt : 13 / 16 < Kc * (7 / 64) := by
  have := sqrt_three_gt; unfold Kc; linarith

/-- The convex order of a quadrilateral right hull `B, R, S, C`: `u < r`, `b < r < k ≤ 1`,
`0 ≤ u < t < 1`. -/
theorem quad_order {b : ℝ} {R S : Point} (hb : 0 < b) (hb1 : b < 1) (hR : R ∈ unitSquare)
    (hS : S ∈ unitSquare) (hq : ConvexQuad (ptB b) R S ptC) :
    R.2 < R.1 ∧ b < R.1 ∧ R.1 < S.1 ∧ S.1 ≤ 1 ∧ 0 ≤ R.2 ∧ R.2 < S.2 ∧ S.2 < 1 := by
  obtain ⟨q1, q2, q3, q4⟩ := hq
  obtain ⟨r0, r1, u0, u1⟩ := hR
  obtain ⟨k0, k1, t0, t1⟩ := hS
  simp only [sarea, ptB, ptC] at q1 q2 q3 q4
  have hw : 0 < 1 - b := by linarith
  have hru : R.2 < R.1 := by nlinarith [mul_nonneg hb.le (sub_nonneg.2 u1)]
  have hbr : b < R.1 := by nlinarith
  have hid : (R.1 - b) * ((S.1 - R.1) * (1 - R.2) - (S.2 - R.2) * (1 - R.1)) +
      (1 - R.1) * ((R.1 - b) * S.2 - R.2 * (S.1 - b)) =
      (R.1 - b - (1 - b) * R.2) * (S.1 - R.1) := by ring
  have hrk : R.1 < S.1 := by
    by_contra hcon
    push Not at hcon
    nlinarith [mul_pos (sub_pos.2 hbr) q2, mul_nonneg (sub_nonneg.2 r1) q1.le,
      mul_nonneg (by nlinarith : (0:ℝ) ≤ R.1 - b - (1 - b) * R.2) (sub_nonneg.2 hcon)]
  refine ⟨hru, hbr, hrk, k1, u0, ?_, ?_⟩
  · nlinarith [mul_nonneg u0 (sub_nonneg.2 hrk.le)]
  · nlinarith

theorem lower_vertex_core {x y z t a m n : ℝ} (hxy : y < x) (hy : 0 ≤ y) (hx : x < 1)
    (hz : z ≤ 1) (hU : m * a ≤ x * t - y * z)
    (hV : n * a ≤ x * t - y * z + z - t - x + y) :
    a * (n * x + m * (1 - x)) ≤ (x - y) * (1 - x) := by
  have hx0 : 0 < x := by linarith
  nlinarith [mul_le_mul_of_nonneg_left hV hx0.le,
    mul_nonneg (sub_nonneg.2 hx.le) (sub_nonneg.2 hU),
    mul_nonneg (sub_nonneg.2 hxy.le) (sub_nonneg.2 hz)]

/-- The lower-vertex inequality in physical coordinates: from `[BRS] ≥ ms` and `[CRS] ≥ ns`,
`a(nx + m(1 - x)) ≤ (x - u)(1 - x)` with `x = (r-b)/w`, `a = s/w`. -/
theorem ear_phys {b s m n : ℝ} {R S : Point} (hb1 : b < 1) (hu : 0 ≤ R.2)
    (hru : b + (1 - b) * R.2 < R.1) (hr1 : R.1 < 1) (hk1 : S.1 ≤ 1)
    (hU : m * s ≤ sarea (ptB b) R S) (hV : n * s ≤ sarea ptC R S) :
    s / (1 - b) * (n * ((R.1 - b) / (1 - b)) + m * (1 - (R.1 - b) / (1 - b))) ≤
      ((R.1 - b) / (1 - b) - R.2) * (1 - (R.1 - b) / (1 - b)) := by
  have hw : 0 < 1 - b := by linarith
  apply lower_vertex_core (z := (S.1 - b) / (1 - b)) (t := S.2)
  · rw [lt_div_iff₀ hw]; linarith
  · exact hu
  · rw [div_lt_one hw]; linarith
  · rw [div_le_one hw]; linarith
  · have e : (R.1 - b) / (1 - b) * S.2 - R.2 * ((S.1 - b) / (1 - b)) =
        sarea (ptB b) R S / (1 - b) := by
      simp only [sarea, ptB]; field_simp; ring
    rw [e, mul_div_assoc', div_le_div_iff_of_pos_right hw]; exact hU
  · have e : (R.1 - b) / (1 - b) * S.2 - R.2 * ((S.1 - b) / (1 - b)) + (S.1 - b) / (1 - b) -
        S.2 - (R.1 - b) / (1 - b) + R.2 = sarea ptC R S / (1 - b) := by
      simp only [sarea, ptC]; field_simp; ring
    rw [e, mul_div_assoc', div_le_div_iff_of_pos_right hw]; exact hV

/-- AM-GM in the multiplied-out form `2√(cd) y ≤ c y² + d`. -/
theorem amgm_aux {c d y : ℝ} (hc : 0 < c) (hd : 0 ≤ d) :
    2 * Real.sqrt (c * d) * y ≤ c * y ^ 2 + d := by
  have ht := Real.sq_sqrt (mul_nonneg hc.le hd)
  nlinarith [sq_nonneg (c * y - Real.sqrt (c * d))]

section Ear

variable {b l x u a : ℝ}

/-- The generic ear bound (`m = n = 1`): `bu + λwx ≤ c - 2√(cd)`, `c = b + λw`, `d = ba`. -/
theorem ear_generic (hb : 0 < b) (hl : 0 < l) (hb1 : b < 1) (hx1 : x < 1) (ha : 0 ≤ a)
    (hear : a * (1 * x + 1 * (1 - x)) ≤ (x - u) * (1 - x)) :
    b * u + l * ((1 - b) * x) ≤
      b + l * (1 - b) - 2 * Real.sqrt ((b + l * (1 - b)) * (b * a)) := by
  have hy : 0 < 1 - x := by linarith
  have hc : 0 < b + l * (1 - b) := by nlinarith
  have h1 := amgm_aux (y := 1 - x) hc (mul_nonneg hb.le ha)
  have h2 := mul_le_mul_of_nonneg_left hear hb.le
  rw [← sub_nonneg]
  have : 0 ≤ (1 - x) * (b + l * (1 - b) - 2 * Real.sqrt ((b + l * (1 - b)) * (b * a)) -
      (b * u + l * ((1 - b) * x))) := by nlinarith
  exact (mul_nonneg_iff_of_pos_left hy).1 this

/-- The cell-I ear bound (`m, n = 3, 1`): `bu + λwx ≤ c - 2d - 2√(cd)`, `c = b + λw`, `d = ba`. -/
theorem ear_I (hb : 0 < b) (hl : 0 < l) (hb1 : b < 1) (hx1 : x < 1) (ha : 0 ≤ a)
    (hear : a * (1 * x + 3 * (1 - x)) ≤ (x - u) * (1 - x)) :
    b * u + l * ((1 - b) * x) ≤
      b + l * (1 - b) - 2 * (b * a) - 2 * Real.sqrt ((b + l * (1 - b)) * (b * a)) := by
  have hy : 0 < 1 - x := by linarith
  have hc : 0 < b + l * (1 - b) := by nlinarith
  have h1 := amgm_aux (y := 1 - x) hc (mul_nonneg hb.le ha)
  have h2 := mul_le_mul_of_nonneg_left hear hb.le
  rw [← sub_nonneg]
  have : 0 ≤ (1 - x) * (b + l * (1 - b) - 2 * (b * a) -
      2 * Real.sqrt ((b + l * (1 - b)) * (b * a)) - (b * u + l * ((1 - b) * x))) := by nlinarith
  exact (mul_nonneg_iff_of_pos_left hy).1 this

/-- The cell-III ear bound (`m, n = 1, 3`): `bu + λwx ≤ c + 2d - 2√(3cd)`. -/
theorem ear_III (hb : 0 < b) (hl : 0 < l) (hb1 : b < 1) (hx1 : x < 1) (ha : 0 ≤ a)
    (hear : a * (3 * x + 1 * (1 - x)) ≤ (x - u) * (1 - x)) :
    b * u + l * ((1 - b) * x) ≤
      b + l * (1 - b) + 2 * (b * a) - 2 * Real.sqrt (3 * (b + l * (1 - b)) * (b * a)) := by
  have hy : 0 < 1 - x := by linarith
  have hc : 0 < b + l * (1 - b) := by nlinarith
  have h1 := amgm_aux (y := 1 - x) hc (mul_nonneg (by norm_num : (0:ℝ) ≤ 3)
    (mul_nonneg hb.le ha))
  rw [show (b + l * (1 - b)) * (3 * (b * a)) = 3 * (b + l * (1 - b)) * (b * a) by ring] at h1
  have h2 := mul_le_mul_of_nonneg_left hear hb.le
  rw [← sub_nonneg]
  have : 0 ≤ (1 - x) * (b + l * (1 - b) + 2 * (b * a) -
      2 * Real.sqrt (3 * (b + l * (1 - b)) * (b * a)) - (b * u + l * ((1 - b) * x))) := by
    nlinarith
  exact (mul_nonneg_iff_of_pos_left hy).1 this

/-- Monotone replacement before squaring: if
`C₀ - 2δ - s ≥ 2√(C₀d)` with `C₀ ≥ d ≥ 0`, then `(C - 2δ - s)² ≥ 4Cd` for every `C ≥ C₀`; used
with `δ = d` (cells I/III, `outerEar_nonpos`) and `δ = 0` (generic, `genericEar_nonpos`). -/
theorem ear_square {C₀ C d δ s : ℝ} (hd : 0 ≤ d) (hdC : d ≤ C₀) (h : s ≤ C₀ - 2 * δ - 2 * Real.sqrt (C₀ * d)) (hC : C₀ ≤ C) :
    4 * C * d ≤ (C - 2 * δ - s) ^ 2 := by
  have ht := Real.sq_sqrt (mul_nonneg (hd.trans hdC) hd)
  have ht0 := Real.sqrt_nonneg (C₀ * d)
  have htd : d ≤ Real.sqrt (C₀ * d) := Real.le_sqrt_of_sq_le (by nlinarith)
  have h1 : 4 * C₀ * d ≤ (C₀ - 2 * δ - s) ^ 2 := by nlinarith
  nlinarith

end Ear

/-- Root location for a convex quadratic: if `A(q) = eq - k > 0` and `A(q)² ≥ 4sq(1 + bq)`
while `A(r) ≥ 0` and `A(r)² < 4sr(1 + br)`, then `q > r` (the quadratic `A² - 4sq(1+bq)` is
convex and negative at the zero `k/e` of `A`). -/
theorem root_gt {e k s b q r : ℝ} (he : 0 < e) (hk : 0 < k) (hs : 0 < s) (hb : 0 ≤ b)
    (hconv : 4 * s * b ≤ e ^ 2) (hA : 0 < e * q - k)
    (hG : 4 * s * q * (1 + b * q) ≤ (e * q - k) ^ 2) (hAr : 0 ≤ e * r - k)
    (hGr : (e * r - k) ^ 2 < 4 * s * r * (1 + b * r)) : r < q := by
  by_contra hqr
  push Not at hqr
  have key : e * (e * r - k) * ((e * q - k) ^ 2 - 4 * s * q * (1 + b * q)) =
      -4 * s * k * (e + b * k) * (r - q) +
        e * (e * q - k) * ((e * r - k) ^ 2 - 4 * s * r * (1 + b * r)) -
        (e ^ 2 - 4 * s * b) * (e * r - k) * (e * q - k) * (r - q) := by ring
  have h1 : 0 ≤ e * (e * r - k) * ((e * q - k) ^ 2 - 4 * s * q * (1 + b * q)) :=
    mul_nonneg (mul_nonneg he.le hAr) (by linarith)
  have h2 : e * (e * q - k) * ((e * r - k) ^ 2 - 4 * s * r * (1 + b * r)) < 0 :=
    mul_neg_of_pos_of_neg (mul_pos he hA) (by linarith)
  have h3 : 0 ≤ (e ^ 2 - 4 * s * b) * (e * r - k) * (e * q - k) * (r - q) :=
    mul_nonneg (mul_nonneg (mul_nonneg (by linarith) hAr) hA.le) (by linarith)
  have h4 : 0 ≤ 4 * s * k * (e + b * k) * (r - q) :=
    mul_nonneg (mul_nonneg (by positivity) (by positivity)) (by linarith)
  linarith

/-- The scalar bound behind `q_gt_of_isolates_D`: if `A = q - s(1 + (1 + b)q) > 0` and
`A² ≥ 4sq(1 + bq)` (`s = 7/64`, `0 < b ≤ 2/7`), as a row of the line table
`TypeII.pq_line_table` gives, then `q > 3/4 + 5b/6`. -/
theorem qD_bound {b q : ℝ} (hb : 0 < b) (hb27 : b ≤ 2 / 7)
    (hA : 0 < q - 7 / 64 * (1 + (1 + b) * q))
    (hF : 4 * (7 / 64) * q * (1 + b * q) ≤ (q - 7 / 64 * (1 + (1 + b) * q)) ^ 2) :
    3 / 4 + 5 * b / 6 < q := by
  have h0 : 0 ≤ b := hb.le
  have h1 : 0 ≤ 2 / 7 - b := by linarith
  have hGr : ((1 - 7 / 64 * (1 + b)) * (3 / 4 + 5 * b / 6) - 7 / 64) ^ 2 <
      4 * (7 / 64) * (3 / 4 + 5 * b / 6) * (1 + b * (3 / 4 + 5 * b / 6)) := by
    nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 4), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 4) (pow_nonneg h1 0)]
  have e : (1 - 7 / 64 * (1 + b)) * q - 7 / 64 = q - 7 / 64 * (1 + (1 + b) * q) := by ring
  exact root_gt (e := 1 - 7 / 64 * (1 + b)) (k := 7 / 64) (by nlinarith) (by norm_num)
    (by norm_num) hb.le (by nlinarith) (by rw [e]; exact hA) (by rw [e]; exact hF)
    (by nlinarith) hGr

/-- For `b ≤ 1/6`, the weighted inequality of `weighted_ineq_of_isolates_D` forces `q > 8/9`. -/
theorem q89_bound {b q : ℝ} (hb6 : b ≤ 1 / 6) (hq67 : 67 / 80 < q) (hq1 : q < 1)
    (hA : 0 < q * (1 - (1 - b) * q) - 7 / 64 * (q + (1 - (1 - b) * q)))
    (hF : 0 ≤ (q * (1 - (1 - b) * q) - 7 / 64 * (q + (1 - (1 - b) * q))) ^ 2 -
      4 * (7 / 64) * q * (1 - q) * (1 - (1 - b) * q)) : 8 / 9 < q := by
  by_contra hcon
  push Not at hcon
  have h0 : 0 ≤ q - 67 / 80 := by linarith
  have h1 : 0 ≤ 8 / 9 - q := by linarith
  have hAr : 0 ≤ (q - 7 / 64) * (1 - 5 * q / 6) - 7 / 64 * q := by nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 0)]
  have hGr : ((q - 7 / 64) * (1 - 5 * q / 6) - 7 / 64 * q) ^ 2 <
      4 * (7 / 64 * q * (1 - q)) * (1 - 5 * q / 6) * (1 + 0 * (1 - 5 * q / 6)) := by
    nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 4), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 4) (pow_nonneg h1 0)]
  have e : (q - 7 / 64) * (1 - (1 - b) * q) - 7 / 64 * q =
      q * (1 - (1 - b) * q) - 7 / 64 * (q + (1 - (1 - b) * q)) := by ring
  have hq0 : 0 < 1 - q := by linarith
  have := root_gt (e := q - 7 / 64) (k := 7 / 64 * q) (s := 7 / 64 * q * (1 - q)) (b := 0)
    (q := 1 - (1 - b) * q) (r := 1 - 5 * q / 6) (by linarith) (by positivity) (by positivity)
    le_rfl (by nlinarith) (by rw [e]; exact hA) (by rw [e]; nlinarith) hAr hGr
  nlinarith

/-- The scalar bound behind `q_gt_of_isolates_C`: if `A = q - s(2 + bq) > 0` and `A² ≥ 4sq(1 + bq)`
(`s = 7/64`, `0 < b ≤ 2/7`), as a row of the line table `TypeII.pq_line_table` gives,
then `q > 4/5 + 2b/3`. -/
theorem qC_bound {b q : ℝ} (hb : 0 < b) (hb27 : b ≤ 2 / 7)
    (hA : 0 < q - 7 / 64 * (2 + b * q))
    (hF : 4 * (7 / 64) * q * (1 + b * q) ≤ (q - 7 / 64 * (2 + b * q)) ^ 2) :
    4 / 5 + 2 * b / 3 < q := by
  have h0 : 0 ≤ b := hb.le
  have h1 : 0 ≤ 2 / 7 - b := by linarith
  have hGr : ((1 - 7 / 64 * b) * (4 / 5 + 2 * b / 3) - 2 * (7 / 64)) ^ 2 <
      4 * (7 / 64) * (4 / 5 + 2 * b / 3) * (1 + b * (4 / 5 + 2 * b / 3)) := by
    nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 4), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 4) (pow_nonneg h1 0)]
  have e : (1 - 7 / 64 * b) * q - 2 * (7 / 64) = q - 7 / 64 * (2 + b * q) := by ring
  exact root_gt (e := 1 - 7 / 64 * b) (k := 2 * (7 / 64)) (by nlinarith) (by norm_num)
    (by norm_num) hb.le (by nlinarith) (by rw [e]; exact hA) (by rw [e]; exact hF)
    (by nlinarith) hGr

/-- By the chamber lemma `TypeII.twoPointChamberLemma` in both orientations, two central points
above `CE` leave `B` and `E` on the same side of their line. -/
theorem BE_same_side {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hl : 0 < l)
    (hl1 : l < 1) (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q]) :
    0 < sarea P Q (ptB b) * sarea P Q (ptE l) := by
  have hmin' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by
    linarith
  have eB : 7 / 64 ≤ |sarea P Q (ptB b)| := le_abs_sarea_of_le_min hmin' 4 5 3
  have eE : 7 / 64 ≤ |sarea P Q (ptE l)| := le_abs_sarea_of_le_min hmin' 4 5 2
  have cB : sarea P Q (ptB b) = sarea (ptB b) P Q := by unfold sarea; ring
  have cE : sarea P Q (ptE l) = sarea (ptE l) P Q := by unfold sarea; ring
  have nB : sarea P Q (ptB b) ≠ 0 := fun h0 => by rw [h0, abs_zero] at eB; linarith
  have nE : sarea P Q (ptE l) ≠ 0 := fun h0 => by rw [h0, abs_zero] at eE; linarith
  rcases lt_or_gt_of_ne nB with hB | hB <;> rcases lt_or_gt_of_ne nE with hE | hE
  · exact mul_pos_of_neg_of_neg hB hE
  · exfalso
    have hsw : minTriangleArea ![ptD, ptC, ptE l, ptB b, Q, P] =
        minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by
      rw [show ![ptD, ptC, ptE l, ptB b, Q, P] =
        ![ptD, ptC, ptE l, ptB b, P, Q] ∘ Equiv.swap (4 : Fin 6) 5 by
          funext m; fin_cases m <;> rfl, minTriangleArea_comp_perm]
    have := twoPointChamberLemma hb hb2 hl hl1 hQB hQE hPB hPE
      (by rw [show sarea (ptB b) Q P = -sarea P Q (ptB b) by unfold sarea; ring]; linarith)
      (by rw [show sarea (ptE l) Q P = -sarea P Q (ptE l) by unfold sarea; ring]; linarith)
    rw [hsw] at this
    linarith
  · exfalso
    have := twoPointChamberLemma hb hb2 hl hl1 hPB hPE hQB hQE (by rw [← cB]; exact hB)
      (by rw [← cE]; exact hE)
    linarith
  · exact mul_pos hB hE

end Helpers

/-! ### The right-hull shape and the outer-cell ear inequalities -/

open TypeII

variable {l b : ℝ} {P Q R S T : Point}

/-- If the five right points `B, C, R, S, T`
have a nontriangular hull, then after relabelling `R, S, T` the hull is the counterclockwise
quadrilateral `B, R, S, C` with the fifth point `T` strictly inside, and `T` is in support cell
I, II or III (cells IV and V are impossible). This holds in either central cut. -/
theorem quadHull_cell_of_not_triangular (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hnt : ¬ RightHullTriangular (ptB b) ptC R S T) :
    ∃ R' S' T' : Point, IsRelabel R S T R' S' T' ∧ QuadHull (ptB b) R' S' ptC T' ∧
      (CellI (ptB b) R' S' ptC T' ∨ CellII (ptB b) R' S' ptC T' ∨
        CellIII (ptB b) R' S' ptC T') := by
  rw [typeIIConfig_eq] at hmin
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by linarith
  have cR : sarea ptC (ptB b) R = sarea (ptB b) R ptC := by unfold sarea; ring
  have cS : sarea ptC (ptB b) S = sarea (ptB b) S ptC := by unfold sarea; ring
  have cT : sarea ptC (ptB b) T = sarea (ptB b) T ptC := by unfold sarea; ring
  have gpos : ∀ i, 0 < sarea ptC (ptB b) (![R, S, T] i) := by
    intro i; fin_cases i
    · simpa [cR] using h.R_right
    · simpa [cS] using h.S_right
    · simpa [cT] using h.T_right
  have nU : ∀ i j : Fin 3, i ≠ j → sarea ptC (![R, S, T] i) (![R, S, T] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 1 6 7 | exact sarea_ne_zero_of_min_pos hpos 1 6 8
      | exact sarea_ne_zero_of_min_pos hpos 1 7 6 | exact sarea_ne_zero_of_min_pos hpos 1 7 8
      | exact sarea_ne_zero_of_min_pos hpos 1 8 6 | exact sarea_ne_zero_of_min_pos hpos 1 8 7
  have nV : ∀ i j : Fin 3, i ≠ j → sarea (ptB b) (![R, S, T] i) (![R, S, T] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 3 6 7 | exact sarea_ne_zero_of_min_pos hpos 3 6 8
      | exact sarea_ne_zero_of_min_pos hpos 3 7 6 | exact sarea_ne_zero_of_min_pos hpos 3 7 8
      | exact sarea_ne_zero_of_min_pos hpos 3 8 6 | exact sarea_ne_zero_of_min_pos hpos 3 8 7
  obtain ⟨i, hi⟩ := exists_extreme_left ptC (ptB b) _ gpos nU
  obtain ⟨j, hj⟩ := exists_extreme_right ptC (ptB b) _ gpos nV
  have m5 : ∀ (f : Fin 5 → Fin 9) (Y : Fin 5 → Point), Function.Injective f →
      Y = ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] ∘ f → 7 / 128 ≤ minTriangleArea Y :=
    fun f Y hf hY => hmin.trans (min_le_min_reindex (by norm_num) _ _ f hf hY)
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have rot : ∀ {X A B C : Point}, InTriangle X C A B → InTriangle X A B C :=
    fun ⟨a1, a2, a3⟩ => ⟨a2, a3, a1⟩
  fin_cases i <;> fin_cases j
  · exfalso; apply hnt
    exact Or.inl ⟨rot (inTriangle_of_extreme (gpos 1) (hi 1 (by decide)) (hj 1 (by decide))),
      rot (inTriangle_of_extreme (gpos 2) (hi 2 (by decide)) (hj 2 (by decide)))⟩
  · obtain ⟨hq, hc⟩ := quad_of_extremes (H := R) (F := S) (X := T) hb hb1 h.R_mem.2.1 h.S_mem.2.2.1
      (gpos 0) (gpos 1) (gpos 2) (hi 1 (by decide)) (hi 2 (by decide)) (hj 0 (by decide))
      (hj 2 (by decide)) (m5 ![1, 3, 6, 7, 8] _ (by decide) (by funext x; fin_cases x <;> rfl))
    exact ⟨S, R, T, ⟨⟨![1, 0, 2], ![1, 0, 2], by decide, by decide⟩, by
      funext x; fin_cases x <;> rfl⟩, hq, hc⟩
  · obtain ⟨hq, hc⟩ := quad_of_extremes (H := R) (F := T) (X := S) hb hb1 h.R_mem.2.1 h.T_mem.2.2.1
      (gpos 0) (gpos 2) (gpos 1) (hi 2 (by decide)) (hi 1 (by decide)) (hj 0 (by decide))
      (hj 1 (by decide)) (m5 ![1, 3, 6, 8, 7] _ (by decide) (by funext x; fin_cases x <;> rfl))
    exact ⟨T, R, S, ⟨⟨![2, 0, 1], ![1, 2, 0], by decide, by decide⟩, by
      funext x; fin_cases x <;> rfl⟩, hq, hc⟩
  · obtain ⟨hq, hc⟩ := quad_of_extremes (H := S) (F := R) (X := T) hb hb1 h.S_mem.2.1 h.R_mem.2.2.1
      (gpos 1) (gpos 0) (gpos 2) (hi 0 (by decide)) (hi 2 (by decide)) (hj 1 (by decide))
      (hj 2 (by decide)) (m5 ![1, 3, 7, 6, 8] _ (by decide) (by funext x; fin_cases x <;> rfl))
    exact ⟨R, S, T, ⟨⟨![0, 1, 2], ![0, 1, 2], by decide, by decide⟩, by
      funext x; fin_cases x <;> rfl⟩, hq, hc⟩
  · exfalso; apply hnt
    exact Or.inr (Or.inl ⟨rot (inTriangle_of_extreme (gpos 0) (hi 0 (by decide))
      (hj 0 (by decide))), rot (inTriangle_of_extreme (gpos 2) (hi 2 (by decide))
      (hj 2 (by decide)))⟩)
  · obtain ⟨hq, hc⟩ := quad_of_extremes (H := S) (F := T) (X := R) hb hb1 h.S_mem.2.1 h.T_mem.2.2.1
      (gpos 1) (gpos 2) (gpos 0) (hi 2 (by decide)) (hi 0 (by decide)) (hj 1 (by decide))
      (hj 0 (by decide)) (m5 ![1, 3, 7, 8, 6] _ (by decide) (by funext x; fin_cases x <;> rfl))
    exact ⟨T, S, R, ⟨⟨![2, 1, 0], ![2, 1, 0], by decide, by decide⟩, by
      funext x; fin_cases x <;> rfl⟩, hq, hc⟩
  · obtain ⟨hq, hc⟩ := quad_of_extremes (H := T) (F := R) (X := S) hb hb1 h.T_mem.2.1 h.R_mem.2.2.1
      (gpos 2) (gpos 0) (gpos 1) (hi 0 (by decide)) (hi 1 (by decide)) (hj 2 (by decide))
      (hj 1 (by decide)) (m5 ![1, 3, 8, 6, 7] _ (by decide) (by funext x; fin_cases x <;> rfl))
    exact ⟨R, T, S, ⟨⟨![0, 2, 1], ![0, 2, 1], by decide, by decide⟩, by
      funext x; fin_cases x <;> rfl⟩, hq, hc⟩
  · obtain ⟨hq, hc⟩ := quad_of_extremes (H := T) (F := S) (X := R) hb hb1 h.T_mem.2.1 h.S_mem.2.2.1
      (gpos 2) (gpos 1) (gpos 0) (hi 1 (by decide)) (hi 0 (by decide)) (hj 2 (by decide))
      (hj 0 (by decide)) (m5 ![1, 3, 8, 7, 6] _ (by decide) (by funext x; fin_cases x <;> rfl))
    exact ⟨S, T, R, ⟨⟨![1, 2, 0], ![2, 0, 1], by decide, by decide⟩, by
      funext x; fin_cases x <;> rfl⟩, hq, hc⟩
  · exfalso; apply hnt
    exact Or.inr (Or.inr ⟨rot (inTriangle_of_extreme (gpos 0) (hi 0 (by decide))
      (hj 0 (by decide))), rot (inTriangle_of_extreme (gpos 1) (hi 1 (by decide))
      (hj 1 (by decide)))⟩)

/-- In cells I and
III: `s/w ≤ 1/K`, `w ≥ Ks > 13/16` and `b < 3/16` (`s = 7/64`, `w = 1 - b`). -/
theorem outer_cell_bounds (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) :
    7 / 64 / (1 - b) ≤ 1 / Kc ∧ Kc * (7 / 64) ≤ 1 - b ∧ 13 / 16 < Kc * (7 / 64) ∧
      b < 3 / 16 := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨Ω, hh, f, m, hΩ, hΩ1, hm, mC, mB, mS, mR, hN⟩ := quad_support hb1 h.R_mem h.S_mem hq
  rw [typeIIConfig_eq] at hmin
  have hm5 : 7 / 128 ≤ minTriangleArea ![ptC, ptB b, S, R, T] :=
    hmin.trans (min_le_min_reindex (by norm_num) _ _ ![1, 3, 7, 6, 8] (by decide)
      (by funext x; fin_cases x <;> rfl))
  have hmin' : 7 / 128 / Ω ≤ minTriangleArea (hsConfig hh f (m T)) :=
    min_transfer (by norm_num) hΩ m hm (fun i => by
      fin_cases i <;> simp [hsConfig, mC, mB, mS, mR]) hm5
  obtain ⟨-, -, hK⟩ := right_support_cells hΩ (by linarith) hN hmin'
  have eL : sarea hsA (hsF f) (m T) = sarea ptC R T / Ω := by rw [← mC, ← mR, hm]
  have eK : sarea hsE (hsH hh) (m T) = sarea (ptB b) S T / Ω := by rw [← mB, ← mS, hm]
  have c1 : sarea ptC R T = -sarea R ptC T := by unfold sarea; ring
  have c2 : sarea (ptB b) S T = -sarea S (ptB b) T := by unfold sarea; ring
  have hKs : Kc * (7 / 64) ≤ Ω := by
    apply hK
    rw [eL, eK]
    rcases hc with ⟨⟨-, -, a3⟩, ⟨-, a2, -⟩⟩ | ⟨⟨-, -, a3⟩, ⟨a1, -, -⟩⟩
    · exact Or.inr ⟨div_neg_of_neg_of_pos (by linarith) hΩ,
        div_neg_of_neg_of_pos (by linarith) hΩ⟩
    · exact Or.inl ⟨div_pos (by unfold sarea at a3 ⊢; linarith) hΩ, div_pos a1 hΩ⟩
  have hK13 := Kc_s0_gt
  have hKpos : 0 < Kc := by linarith
  refine ⟨?_, by linarith, hK13, by linarith⟩
  rw [div_le_div_iff₀ (by linarith) hKpos]; linarith

/-- The ear data of a quadrilateral right hull in the normalized right container: with
`x = (r-b)/w`, `a = s/w`, `s = 7/64`, the order `0 < u < x < 1` and the lower-vertex inequality
(`ear_phys`) with `(m, n) = (1, 1)`, `(3, 1)` in cell I and `(1, 3)` in cell III. -/
theorem quad_ears (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    0 < (R.1 - b) / (1 - b) ∧ (R.1 - b) / (1 - b) < 1 ∧ 0 ≤ R.2 ∧ R.2 < (R.1 - b) / (1 - b) ∧
      0 < 7 / 64 / (1 - b) ∧
      7 / 64 / (1 - b) * (1 * ((R.1 - b) / (1 - b)) + 1 * (1 - (R.1 - b) / (1 - b))) ≤
        ((R.1 - b) / (1 - b) - R.2) * (1 - (R.1 - b) / (1 - b)) ∧
      (CellI (ptB b) R S ptC T →
        7 / 64 / (1 - b) * (1 * ((R.1 - b) / (1 - b)) + 3 * (1 - (R.1 - b) / (1 - b))) ≤
          ((R.1 - b) / (1 - b) - R.2) * (1 - (R.1 - b) / (1 - b))) ∧
      (CellIII (ptB b) R S ptC T →
        7 / 64 / (1 - b) * (3 * ((R.1 - b) / (1 - b)) + 1 * (1 - (R.1 - b) / (1 - b))) ≤
          ((R.1 - b) / (1 - b) - R.2) * (1 - (R.1 - b) / (1 - b))) := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  obtain ⟨hru, hbr, hrk, hk1, hu, -, -⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  have hR := h.R_right
  simp only [sarea, ptB, ptC] at hR
  have hru' : b + (1 - b) * R.2 < R.1 := by linarith
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  obtain ⟨⟨q1, q2, -, -⟩, -⟩ := hq
  have cV : sarea ptC R S = sarea R S ptC := by unfold sarea; ring
  have hU1 : 1 * (7 / 64) ≤ sarea (ptB b) R S := by
    have : 7 / 64 ≤ |sarea (ptB b) R S| := le_abs_sarea_of_le_min hm 3 6 7
    rw [abs_of_pos q1] at this; linarith
  have hV1 : 1 * (7 / 64) ≤ sarea ptC R S := by
    have : 7 / 64 ≤ |sarea ptC R S| := le_abs_sarea_of_le_min hm 1 6 7
    rw [abs_of_pos (by linarith)] at this; linarith
  refine ⟨div_pos (by linarith) hw, by rw [div_lt_one hw]; linarith, hu,
    by rw [lt_div_iff₀ hw]; linarith, by positivity,
    ear_phys hb1 hu hru' (by linarith) hk1 hU1 hV1, fun hc => ?_, fun hc => ?_⟩
  · have := three_le_of_inside (X := ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T]) (i := 8) (a := 3)
      (b := 6) (c := 7) hm hc.1
    exact ear_phys hb1 hu hru' (by linarith) hk1 this hV1
  · have := three_le_of_inside (X := ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T]) (i := 8) (a := 6)
      (b := 7) (c := 1) hm hc.1
    exact ear_phys hb1 hu hru' (by linarith) hk1 hU1 (by rw [cV]; exact this)

/-- With
`c = b + λw = 1 - wq` and `d = bs/w` (`s = 7/64`): `s ≤ [EBR]`; in cell I
`[EBR] ≤ c - 2d - 2√(cd)`, in cell III `[EBR] ≤ c + 2d - 2√(3cd)`, and in both cells
`[EBR] ≤ c - 2d - 2√(cd)`, so `s ≤ c - 2d - 2√(cd)`. -/
theorem EBR_le_ear_root (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    let c := b + l * (1 - b)
    let d := b * s / (1 - b)
    s ≤ sarea (ptE l) (ptB b) R ∧
      (CellI (ptB b) R S ptC T → sarea (ptE l) (ptB b) R ≤ c - 2 * d - 2 * Real.sqrt (c * d)) ∧
      (CellIII (ptB b) R S ptC T →
        sarea (ptE l) (ptB b) R ≤ c + 2 * d - 2 * Real.sqrt (3 * c * d)) ∧
      sarea (ptE l) (ptB b) R ≤ c - 2 * d - 2 * Real.sqrt (c * d) ∧
      s ≤ c - 2 * d - 2 * Real.sqrt (c * d) := by
  intro s c d
  have hb := h.b_pos
  have hl := h.l_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  obtain ⟨hx0, hx1, hu, hux, ha, -, hI, hIII⟩ := quad_ears h hmin hq
  have hd : d = b * (7 / 64 / (1 - b)) := by simp only [d]; ring
  have hδ : sarea (ptE l) (ptB b) R = b * R.2 + l * ((1 - b) * ((R.1 - b) / (1 - b))) := by
    simp only [sarea, ptE, ptB]; field_simp; ring
  have hδpos : 0 < sarea (ptE l) (ptB b) R := by
    rw [hδ]; have := mul_pos hw hx0; positivity
  have hsδ : s ≤ sarea (ptE l) (ptB b) R := by
    rw [typeIIConfig_eq] at hmin
    have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
      linarith
    have : 7 / 64 ≤ |sarea (ptE l) (ptB b) R| := le_abs_sarea_of_le_min hm 2 3 6
    rwa [abs_of_pos hδpos] at this
  have cI : CellI (ptB b) R S ptC T →
      sarea (ptE l) (ptB b) R ≤ c - 2 * d - 2 * Real.sqrt (c * d) := fun hc => by
    rw [hδ, hd]; exact ear_I hb hl hb1 hx1 ha.le (hI hc)
  have cIII : CellIII (ptB b) R S ptC T →
      sarea (ptE l) (ptB b) R ≤ c + 2 * d - 2 * Real.sqrt (3 * c * d) := fun hc => by
    rw [hδ, hd]; exact ear_III hb hl hb1 hx1 ha.le (hIII hc)
  have hcomp : c + 2 * d - 2 * Real.sqrt (3 * c * d) ≤ c - 2 * d - 2 * Real.sqrt (c * d) := by
    obtain ⟨-, hK, -, -⟩ := outer_cell_bounds h hmin hq hc
    have hd0 : 0 ≤ d := by rw [hd]; positivity
    have hc0 : 0 ≤ c := by simp only [c]; nlinarith
    have hKd : Kc * d ≤ c := by
      rw [hd]
      have : Kc * (b * (7 / 64 / (1 - b))) = b * (Kc * (7 / 64)) / (1 - b) := by
        field_simp
      rw [this, div_le_iff₀ hw]
      simp only [c]
      nlinarith [mul_le_mul_of_nonneg_left hK hb.le, mul_nonneg hl.le (mul_nonneg hw.le hw.le)]
    have h3 : Real.sqrt (3 * c * d) = Real.sqrt 3 * Real.sqrt (c * d) := by
      rw [mul_assoc, Real.sqrt_mul (by norm_num)]
    rw [h3]
    have ht := Real.sq_sqrt (mul_nonneg hc0 hd0)
    have ht0 := Real.sqrt_nonneg (c * d)
    have h33 := Real.sq_sqrt (show (0:ℝ) ≤ 3 by norm_num)
    have h3g := sqrt_three_gt
    have hKe : Kc = (1 + Real.sqrt 3) ^ 2 := by unfold Kc; nlinarith
    have htd : (1 + Real.sqrt 3) * d ≤ Real.sqrt (c * d) := by
      apply Real.le_sqrt_of_sq_le
      nlinarith [mul_le_mul_of_nonneg_right hKd hd0]
    nlinarith
  have common : sarea (ptE l) (ptB b) R ≤ c - 2 * d - 2 * Real.sqrt (c * d) := by
    rcases hc with hc | hc
    · exact cI hc
    · exact (cIII hc).trans hcomp
  exact ⟨hsδ, cI, cIII, common, hsδ.trans common⟩

/-- In cells I and III, every
`C ≥ c = 1 - wq` satisfies `N_b(C) = 4Cbsw - {wC - s(1+b)}² ≤ 0` (`s = 7/64`). -/
theorem outerEar_nonpos (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) :
    ∀ C : ℝ, 1 - (1 - b) * (1 - l) ≤ C → outerEar (7 / 64) b C ≤ 0 := by
  have hroot := (EBR_le_ear_root h hmin hq hc).2.2.2.2
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  have hl := h.l_pos
  intro C hC
  set d := b * (7 / 64) / (1 - b) with hd
  have hd0 : 0 ≤ d := by positivity
  have hdc : d ≤ b + l * (1 - b) := by
    rw [hd, div_le_iff₀ hw]
    nlinarith [mul_nonneg hb.le (by linarith [h.b_le] : (0:ℝ) ≤ 1 - b - 7 / 64),
      mul_nonneg hl.le (mul_nonneg hw.le hw.le)]
  have hsq := ear_square (δ := d) hd0 hdc hroot (by linarith : b + l * (1 - b) ≤ C)
  have e : outerEar (7 / 64) b C = (1 - b) ^ 2 * (4 * C * d - (C - 2 * d - 7 / 64) ^ 2) := by
    rw [hd]; unfold outerEar; field_simp; ring
  rw [e]
  nlinarith [sq_nonneg (1 - b)]

/-! ### Two upper central points -/

/-- The two central points above `CE`: both lie inside `DCE`, the six anchors-and-pair have
least area at least `7/128`, `B, E` are on the same side of `PQ`, and `bq ≥ s` (`[DEB]`). -/
theorem upper_pair (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q) :
    InTriangle P ptD (ptE l) ptC ∧ InTriangle Q ptD (ptE l) ptC ∧
      7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] ∧
      0 < sarea P Q (ptB b) * sarea P Q (ptE l) ∧ 7 / 64 ≤ b * (1 - l) := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  have hPE := (central_inTriangle_iff hb hb1 hl hl1 h.P_central).1.2 hP
  have hQE := (central_inTriangle_iff hb hb1 hl hl1 h.Q_central).1.2 hQ
  rw [typeIIConfig_eq] at hmin
  have hm6 : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] :=
    hmin.trans (min_le_min_reindex (by norm_num) _ _ ![0, 1, 2, 3, 4, 5] (by decide)
      (by funext x; fin_cases x <;> rfl))
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have hDEB : 7 / 64 ≤ |sarea ptD (ptE l) (ptB b)| := le_abs_sarea_of_le_min hm 0 2 3
  have e : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp only [sarea, ptD, ptE, ptB]; ring
  rw [e, abs_of_pos (by nlinarith)] at hDEB
  exact ⟨hPE, hQE, hm6, BE_same_side hb h.b_le hl hl1 h.P_central hPE h.Q_central hQE hm6, hDEB⟩

/-- If `P, Q` are both
above `CE` (any right hull), then `A = q - s(q+1) > 0`, `A² ≥ 4sq(1 + bq)`, hence
`F(q) = A² - 4sq(1+s) ≥ 0`, so `q > 67/80` and `s ≤ b` (`s = 7/64`, `q = 1 - λ`). In cells I
and III also `b < 3/16`.

The bound `b < 3/16` comes from `outer_cell_bounds` and holds only in cells I/III, so it is
stated as a separate implication, while `q > 67/80` is used for every right hull (`lineSeparates_DC_EB`,
`UnbalancedRadialSplit.noPointInside_EBR_of_upper_cut`). -/
theorem q_gt_67_80 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q) :
    let s : ℝ := 7 / 64
    let q := 1 - l
    0 < q - s * (q + 1) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (q + 1)) ^ 2 ∧
      0 ≤ (q - s * (q + 1)) ^ 2 - 4 * s * q * (1 + s) ∧ 67 / 80 < q ∧ s ≤ b ∧
      (QuadHull (ptB b) R S ptC T → CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T →
        b < 3 / 16) := by
  dsimp only
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨hPE, hQE, hm6, hBE, hDEB⟩ := upper_pair h hmin hP hQ
  have hm6' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by linarith
  obtain ⟨htri, h1, h2, h3⟩ := pq_line_table (s := 7 / 64) (by norm_num) hb hb1 hl hl1
    h.P_central hPE h.Q_central hQE hm6' hBE
  have hq : 0 < 1 - l := by linarith
  have hA : 0 < 1 - l - 7 / 64 * (1 - l + 1) ∧
      4 * (7 / 64) * (1 - l) * (1 + b * (1 - l)) ≤ (1 - l - 7 / 64 * (1 - l + 1)) ^ 2 := by
    rcases htri with hr | hr | hr
    · exact h1 hr
    · obtain ⟨a1, a2⟩ := h2 hr
      have hle : 1 - l - 7 / 64 * (1 + (1 + b) * (1 - l)) ≤ 1 - l - 7 / 64 * (1 - l + 1) := by
        nlinarith
      exact ⟨by linarith, le_trans a2 (pow_le_pow_left₀ a1.le hle 2)⟩
    · obtain ⟨a1, a2⟩ := h3 hr
      have hle : 1 - l - 7 / 64 * (2 + b * (1 - l)) ≤ 1 - l - 7 / 64 * (1 - l + 1) := by
        nlinarith
      exact ⟨by linarith, le_trans a2 (pow_le_pow_left₀ a1.le hle 2)⟩
  obtain ⟨hA1, hA2⟩ := hA
  have hF : 0 ≤ (1 - l - 7 / 64 * (1 - l + 1)) ^ 2 - 4 * (7 / 64) * (1 - l) * (1 + 7 / 64) := by
    nlinarith [mul_le_mul_of_nonneg_left hDEB (by linarith : (0:ℝ) ≤ 4 * (7 / 64) * (1 - l))]
  have hq67 : 67 / 80 < 1 - l := by
    by_contra hcon
    push Not at hcon
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - l - 7 / 57) (by linarith : (0:ℝ) ≤ 67 / 80 - (1 - l))]
  refine ⟨hA1, hA2, hF, hq67, by nlinarith, fun hq hc => (outer_cell_bounds h hmin hq hc).2.2.2⟩

/-- If `P, Q` are both above `CE`, the
quadrilateral right hull cannot be in support cell I or III. -/
theorem not_cellI_or_cellIII (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) : False := by
  obtain ⟨-, -, -, hq67, hsb, hb316⟩ := q_gt_67_80 h hmin hP hQ
  have hb3 := hb316 hq hc
  have hN := outerEar_nonpos h hmin hq hc
  have hb := h.b_pos
  obtain ⟨-, -, -, -, hDEB⟩ := upper_pair h hmin hP hQ
  rcases le_or_gt (13 / 100) b with hb13 | hb13
  · have hC := hN (1 - 67 / 80 * (1 - b)) (by nlinarith)
    have h0 : 0 ≤ b - 13 / 100 := by linarith
    have h1 : 0 ≤ 3 / 16 - b := by linarith
    have : 0 < outerEar (7 / 64) b (1 - 67 / 80 * (1 - b)) := by
      unfold outerEar
      nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 4), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 4) (pow_nonneg h1 0)]
    linarith
  · have hb0 : b ≠ 0 := hb.ne'
    have hC := hN (1 + 7 / 64 - 7 / 64 / b) (by
      have : 7 / 64 / b ≤ 1 - l := by rw [div_le_iff₀ hb]; linarith
      nlinarith [mul_le_mul_of_nonneg_left this (by linarith [h.b_le] : (0:ℝ) ≤ 1 - b),
        show (1 - b) * (7 / 64 / b) = 7 / 64 / b - 7 / 64 by field_simp])
    have e : outerEar (7 / 64) b (1 + 7 / 64 - 7 / 64 / b) * (4096 * b ^ 2) =
        -8072 * b ^ 4 + 13260 * b ^ 3 - 6329 * b ^ 2 + 994 * b - 49 := by
      unfold outerEar; field_simp; ring
    have h0 : 0 ≤ b - 7 / 64 := by linarith
    have h1 : 0 ≤ 13 / 100 - b := by linarith
    have hP4 : 0 < -8072 * b ^ 4 + 13260 * b ^ 3 - 6329 * b ^ 2 + 994 * b - 49 := by
      nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 4), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 4) (pow_nonneg h1 0)]
    have := mul_nonpos_of_nonpos_of_nonneg hC (by positivity : (0:ℝ) ≤ 4096 * b ^ 2)
    linarith

/-! ### The generic ear and the isolated-endpoint lines -/

/-- For every
quadrilateral right hull (any cell, any cut), with `c = 1 - wq`, `s = 7/64`:
`s ≤ c - 2√(cbs/w)`, hence `𝒩_b(C) = 4Cbs - w(C - s)² ≤ 0` for every `C ≥ c`. -/
theorem genericEar_nonpos (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    let c := 1 - (1 - b) * (1 - l)
    s ≤ c - 2 * Real.sqrt (c * b * s / (1 - b)) ∧
      ∀ C : ℝ, c ≤ C → genericEar s b C ≤ 0 := by
  intro s c
  have hb := h.b_pos
  have hl := h.l_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  obtain ⟨hx0, hx1, hu, hux, ha, hgen, -, -⟩ := quad_ears h hmin hq
  have hδ : sarea (ptE l) (ptB b) R = b * R.2 + l * ((1 - b) * ((R.1 - b) / (1 - b))) := by
    simp only [sarea, ptE, ptB]; field_simp; ring
  have hδpos : 0 < sarea (ptE l) (ptB b) R := by
    rw [hδ]; have := mul_pos hw hx0; positivity
  have hsδ : s ≤ sarea (ptE l) (ptB b) R := by
    rw [typeIIConfig_eq] at hmin
    have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
      linarith
    have : 7 / 64 ≤ |sarea (ptE l) (ptB b) R| := le_abs_sarea_of_le_min hm 2 3 6
    rwa [abs_of_pos hδpos] at this
  have hc : c = b + l * (1 - b) := by simp only [c]; ring
  have hcd : c * b * s / (1 - b) = (b + l * (1 - b)) * (b * (7 / 64 / (1 - b))) := by
    rw [hc]; simp only [s]; field_simp
  have hbound := ear_generic hb hl hb1 hx1 ha.le hgen
  rw [← hδ, ← hcd, ← hc] at hbound
  have h1 : s ≤ c - 2 * Real.sqrt (c * b * s / (1 - b)) := hsδ.trans hbound
  refine ⟨h1, fun C hC => ?_⟩
  set d := b * s / (1 - b) with hd
  have hd0 : 0 ≤ d := by rw [hd]; simp only [s]; positivity
  have hdc : d ≤ c := by
    rw [hd, div_le_iff₀ hw, hc]; simp only [s]
    nlinarith [mul_nonneg hb.le (by linarith [h.b_le] : (0:ℝ) ≤ 1 - b - 7 / 64),
      mul_nonneg hl.le (mul_nonneg hw.le hw.le)]
  have h1' : s ≤ c - 2 * 0 - 2 * Real.sqrt (c * d) := by
    rw [hd, show c * (b * s / (1 - b)) = c * b * s / (1 - b) by ring]; linarith
  have hsq := ear_square hd0 hdc h1' hC
  have e : genericEar s b C = (1 - b) * (4 * C * d - (C - 2 * 0 - s) ^ 2) := by
    rw [hd]; unfold genericEar; field_simp; ring
  rw [e]
  nlinarith

/-- If `P, Q` are both above `CE`
and `PQ` isolates `C` from `D, E, B`, then `b ≤ 2/7` (`TypeII.b_le_two_sevenths`) and
`q > q_C(b) = 4/5 + 2b/3`. -/
theorem q_gt_of_isolates_C (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hiso : LineIsolates4 P Q ptC ptD (ptE l) (ptB b)) :
    b ≤ 2 / 7 ∧ 4 / 5 + 2 * b / 3 < 1 - l := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨hPE, hQE, hm6, hBE, hDEB⟩ := upper_pair h hmin hP hQ
  have hDC : sarea P Q ptD * sarea P Q ptC < 0 := by
    rcases hiso with ⟨a1, a2, -, -⟩ | ⟨a1, a2, -, -⟩ <;> nlinarith
  have hb27 := b_le_two_sevenths hb h.b_le hl hl1 h.P_central hPE h.Q_central hQE hm6 hDC
  have hm6' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by linarith
  obtain ⟨-, -, -, h3⟩ := pq_line_table (s := 7 / 64) (by norm_num) hb hb1 hl hl1
    h.P_central hPE h.Q_central hQE hm6' hBE
  have hrow : sarea P Q ptC * sarea P Q (ptB b) < 0 ∧ 0 < sarea P Q ptD * sarea P Q (ptB b) := by
    rcases hiso with ⟨a1, a2, -, a4⟩ | ⟨a1, a2, -, a4⟩ <;> constructor <;> nlinarith
  obtain ⟨a1, a2⟩ := h3 hrow
  refine ⟨hb27, ?_⟩
  exact qC_bound hb hb27 a1 a2

/-- In the two-point upper cut with a
nontriangular (quadrilateral) right hull, the line `PQ` cannot isolate `C` from `D, E, B`. -/
theorem not_lineIsolates4_C (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hq : QuadHull (ptB b) R S ptC T) :
    ¬ LineIsolates4 P Q ptC ptD (ptE l) (ptB b) := by
  intro hiso
  obtain ⟨hb27, hqC⟩ := q_gt_of_isolates_C h hmin hP hQ hiso
  obtain ⟨-, -, -, -, hsb, -⟩ := q_gt_67_80 h hmin hP hQ
  obtain ⟨-, -, -, -, hDEB⟩ := upper_pair h hmin hP hQ
  have hgen := (genericEar_nonpos h hmin hq).2
  have hb := h.b_pos
  rcases le_or_gt (123 / 1000) b with hb1 | hb1
  · have hC := hgen (1 - (1 - b) * (4 / 5 + 2 * b / 3)) (by nlinarith)
    have h0 : 0 ≤ b - 123 / 1000 := by linarith
    have h1 : 0 ≤ 2 / 7 - b := by linarith
    have : 0 < genericEar (7 / 64) b (1 - (1 - b) * (4 / 5 + 2 * b / 3)) := by
      unfold genericEar
      nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 5), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 4), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 4) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 5) (pow_nonneg h1 0)]
    linarith
  · have hb0 : b ≠ 0 := hb.ne'
    have hC := hgen (1 + 7 / 64 - 7 / 64 / b) (by
      have : 7 / 64 / b ≤ 1 - l := by rw [div_le_iff₀ hb]; linarith
      nlinarith [mul_le_mul_of_nonneg_left this (by linarith [h.b_le] : (0:ℝ) ≤ 1 - b),
        show (1 - b) * (7 / 64 / b) = 7 / 64 / b - 7 / 64 by field_simp])
    have e : genericEar (7 / 64) b (1 + 7 / 64 - 7 / 64 / b) * (4096 * b ^ 2) =
        6084 * b ^ 3 - 5188 * b ^ 2 + 945 * b - 49 := by
      unfold genericEar; field_simp; ring
    have h0 : 0 ≤ b - 7 / 64 := by linarith
    have h1 : 0 ≤ 123 / 1000 - b := by linarith
    have hP4 : 0 < 6084 * b ^ 3 - 5188 * b ^ 2 + 945 * b - 49 := by
      nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 0)]
    have := mul_nonpos_of_nonpos_of_nonneg hC (by positivity : (0:ℝ) ≤ 4096 * b ^ 2)
    linarith

/-- The weighted inequality for an isolated `D`, in the orientation `σ_D > 0 > σ_C, σ_E`
(`σ_X = [PQX]`), from the identity `pq_identity_E`, `[EBP] ≥ s` and `v = 1 - Q_y ≥ s`. -/
theorem weighted_D_alg {s b q u p v E C : ℝ} (hs : 0 < s) (hb : 0 < b) (hq0 : 0 < q) (hq1 : q < 1)
    (hu0 : 0 < u) (huq : u < q) (hEC : 0 < q - u - q * p)
    (hid : u * E + (q - u) * C = (q - u - q * p) * (v - u))
    (hEBP : s ≤ b * (q - u) + (1 - q) * p) (hv : s ≤ v) (hσE : E ≤ -s) (hσC : C ≤ -s) :
    0 < q * (1 - (1 - b) * q) - s * (q + (1 - (1 - b) * q)) ∧
      0 ≤ (q * (1 - (1 - b) * q) - s * (q + (1 - (1 - b) * q))) ^ 2 -
        4 * s * q * (1 - q) * (1 - (1 - b) * q) := by
  have e1 := mul_le_mul_of_nonneg_left hσE hu0.le
  have e2 := mul_le_mul_of_nonneg_left hσC (by linarith : (0:ℝ) ≤ q - u)
  have h12 : s * q ≤ (q - u - q * p) * (u - v) := by linarith
  have huv : v < u := by
    by_contra hcon; push Not at hcon
    have := mul_nonneg hEC.le (sub_nonneg.2 hcon)
    have : 0 < s * q := mul_pos hs hq0
    linarith
  have h12' : s * q ≤ (q - u - q * p) * (u - s) :=
    h12.trans (mul_le_mul_of_nonneg_left (by linarith) hEC.le)
  set c := 1 - (1 - b) * q with hc
  have hc0 : 0 < c := by rw [hc]; nlinarith
  have e3 : (1 - q) * (q - u - q * p) ≤ q * c - s * (q + c) - c * (u - s) := by
    have := mul_le_mul_of_nonneg_left hEBP hq0.le
    rw [hc]; linarith
  have hz : 0 < u - s := by linarith
  have key : s * q * (1 - q) ≤ (u - s) * (q * c - s * (q + c) - c * (u - s)) := by
    have k1 := mul_le_mul_of_nonneg_right e3 hz.le
    have k2 := mul_le_mul_of_nonneg_left h12' (by linarith : (0:ℝ) ≤ 1 - q)
    linarith
  have hpos : 0 < s * q * (1 - q) := mul_pos (mul_pos hs hq0) (by linarith)
  have hA : 0 < q * c - s * (q + c) - c * (u - s) := by
    by_contra hcon; push Not at hcon
    have := mul_nonpos_of_nonneg_of_nonpos hz.le hcon
    linarith
  have hcz := mul_pos hc0 hz
  refine ⟨by linarith, ?_⟩
  have k3 := mul_le_mul_of_nonneg_left key (by linarith : (0:ℝ) ≤ 4 * c)
  have k4 := sq_nonneg (q * c - s * (q + c) - 2 * c * (u - s))
  linarith

/-- The weighted inequality of `weighted_D_alg` for `P, Q`. -/
theorem weighted_D_core {l b s : ℝ} {P Q : Point} (hs : 0 < s) (hb : 0 < b) (hl : 0 < l)
    (hPE : InTriangle P ptD (ptE l) ptC) (hEBP : s ≤ sarea (ptE l) (ptB b) P)
    (hv : s ≤ 1 - Q.2) (hσE : sarea P Q (ptE l) ≤ -s) (hσC : sarea P Q ptC ≤ -s) :
    0 < (1 - l) * (1 - (1 - b) * (1 - l)) - s * ((1 - l) + (1 - (1 - b) * (1 - l))) ∧
      0 ≤ ((1 - l) * (1 - (1 - b) * (1 - l)) - s * ((1 - l) + (1 - (1 - b) * (1 - l)))) ^ 2 -
        4 * s * (1 - l) * (1 - (1 - l)) * (1 - (1 - b) * (1 - l)) := by
  have hid := pq_identity_E l P Q
  obtain ⟨p1, p2, p3⟩ := hPE
  have e1 : sarea ptD (ptE l) P = (1 - l) * P.1 := by simp only [sarea, ptD, ptE]; ring
  have e2 : sarea (ptE l) ptC P = (1 - l) - (1 - P.2) - (1 - l) * P.1 := by
    simp only [sarea, ptE, ptC]; ring
  have e3 : sarea ptC ptD P = 1 - P.2 := by simp only [sarea, ptC, ptD]; ring
  have e4 : sarea (ptE l) (ptB b) P = b * ((1 - l) - (1 - P.2)) + (1 - (1 - l)) * P.1 := by
    simp only [sarea, ptE, ptB]; ring
  rw [e1] at p1; rw [e2] at p2; rw [e3] at p3; rw [e4] at hEBP
  have hq0 : 0 < 1 - l := by linarith
  have hp0 : 0 < P.1 := by
    by_contra hcon; push Not at hcon
    have := mul_nonpos_of_nonneg_of_nonpos hq0.le hcon; linarith
  have hqp := mul_pos hq0 hp0
  exact weighted_D_alg hs hb hq0 (by linarith) p3 (by linarith) p2 hid hEBP hv hσE hσC

/-- If `P, Q` are both
above `CE` and `PQ` isolates `D` from `C, E, B`, then with `c = 1 - (1-b)q`, `s = 7/64`:
`A_* = qc - s(q + c) > 0` and `F_* = A_*² - 4sq(1-q)c ≥ 0`. -/
theorem weighted_ineq_of_isolates_D (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hiso : LineIsolates4 P Q ptD ptC (ptE l) (ptB b)) :
    let s : ℝ := 7 / 64
    let q := 1 - l
    let c := 1 - (1 - b) * q
    0 < q * c - s * (q + c) ∧ 0 ≤ (q * c - s * (q + c)) ^ 2 - 4 * s * q * (1 - q) * c := by
  dsimp only
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  obtain ⟨hPE, hQE, hm6, -, -⟩ := upper_pair h hmin hP hQ
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by linarith
  have aE : 7 / 64 ≤ |sarea P Q (ptE l)| := le_abs_sarea_of_le_min hm 4 5 2
  have aC : 7 / 64 ≤ |sarea P Q ptC| := le_abs_sarea_of_le_min hm 4 5 1
  have aEBP : 7 / 64 ≤ |sarea (ptE l) (ptB b) P| := le_abs_sarea_of_le_min hm 2 3 4
  have aEBQ : 7 / 64 ≤ |sarea (ptE l) (ptB b) Q| := le_abs_sarea_of_le_min hm 2 3 5
  have aDCP : 7 / 64 ≤ |sarea ptD ptC P| := le_abs_sarea_of_le_min hm 0 1 4
  have aDCQ : 7 / 64 ≤ |sarea ptD ptC Q| := le_abs_sarea_of_le_min hm 0 1 5
  have pEB : ∀ X : Point, InTriangle X ptD (ptE l) ptC → 0 < sarea (ptE l) (ptB b) X ∧
      sarea ptD ptC X = -(1 - X.2) := by
    intro X ⟨x1, x2, x3⟩
    simp only [sarea, ptD, ptE, ptC, ptB] at x1 x2 x3 ⊢
    have hq0 : 0 < 1 - l := by linarith
    have hx : 0 < X.1 := by
      by_contra hcon; push Not at hcon
      have := mul_nonpos_of_nonneg_of_nonpos hq0.le hcon; linarith
    have hy : 0 < X.2 - l := by nlinarith
    constructor
    · nlinarith [mul_pos hb hy, mul_pos hl hx]
    · ring
  obtain ⟨eP1, eP2⟩ := pEB P hPE
  obtain ⟨eQ1, eQ2⟩ := pEB Q hQE
  rw [abs_of_pos eP1] at aEBP
  rw [abs_of_pos eQ1] at aEBQ
  have hP2 : P.2 < 1 := by obtain ⟨-, -, x3⟩ := hPE; simp only [sarea, ptC, ptD] at x3; linarith
  have hQ2 : Q.2 < 1 := by obtain ⟨-, -, x3⟩ := hQE; simp only [sarea, ptC, ptD] at x3; linarith
  rw [eP2, abs_neg, abs_of_pos (by linarith)] at aDCP
  rw [eQ2, abs_neg, abs_of_pos (by linarith)] at aDCQ
  rcases hiso with ⟨-, a2, a3, -⟩ | ⟨-, a2, a3, -⟩
  · exact weighted_D_core (by norm_num) hb hl hPE aEBP aDCQ
      (by rw [abs_of_neg a3] at aE; linarith) (by rw [abs_of_neg a2] at aC; linarith)
  · have cE : sarea Q P (ptE l) = -sarea P Q (ptE l) := by unfold sarea; ring
    have cC : sarea Q P ptC = -sarea P Q ptC := by unfold sarea; ring
    exact weighted_D_core (by norm_num) hb hl hQE aEBQ aDCP
      (by rw [abs_of_pos a3] at aE; linarith) (by rw [abs_of_pos a2] at aC; linarith)

/-- If `P, Q` are both above
`CE` and `PQ` isolates `D`, then `b ≤ 2/7`, `q > q_D(b) = 3/4 + 5b/6`, and `q > 8/9` when
`b ≤ 1/6`. -/
theorem q_gt_of_isolates_D (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hiso : LineIsolates4 P Q ptD ptC (ptE l) (ptB b)) :
    b ≤ 2 / 7 ∧ 3 / 4 + 5 * b / 6 < 1 - l ∧ (b ≤ 1 / 6 → 8 / 9 < 1 - l) := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨hPE, hQE, hm6, hBE, hDEB⟩ := upper_pair h hmin hP hQ
  have hDC : sarea P Q ptD * sarea P Q ptC < 0 := by
    rcases hiso with ⟨a1, a2, -, -⟩ | ⟨a1, a2, -, -⟩ <;> nlinarith
  have hb27 := b_le_two_sevenths hb h.b_le hl hl1 h.P_central hPE h.Q_central hQE hm6 hDC
  have hm6' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by linarith
  obtain ⟨-, -, h2, -⟩ := pq_line_table (s := 7 / 64) (by norm_num) hb hb1 hl hl1
    h.P_central hPE h.Q_central hQE hm6' hBE
  have hrow : sarea P Q ptD * sarea P Q (ptB b) < 0 ∧ 0 < sarea P Q ptC * sarea P Q (ptB b) := by
    rcases hiso with ⟨a1, a2, -, a4⟩ | ⟨a1, a2, -, a4⟩ <;> constructor <;> nlinarith
  obtain ⟨a1, a2⟩ := h2 hrow
  have hqD : 3 / 4 + 5 * b / 6 < 1 - l := qD_bound hb hb27 a1 a2
  refine ⟨hb27, hqD, fun hb6 => ?_⟩
  obtain ⟨hA, hF⟩ := weighted_ineq_of_isolates_D h hmin hP hQ hiso
  obtain ⟨-, -, -, hq67, -, -⟩ := q_gt_67_80 h hmin hP hQ
  exact q89_bound hb6 hq67 (by linarith) hA hF

/-- Under the hypotheses of `not_lineIsolates4_C`, `PQ`
cannot isolate `D` either. Thus `PQ` puts `D, C` strictly on one side and `E, B` strictly on
the other. -/
theorem lineSeparates_DC_EB (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hP : 0 < sarea (ptE l) ptC P) (hQ : 0 < sarea (ptE l) ptC Q)
    (hq : QuadHull (ptB b) R S ptC T) :
    ¬ LineIsolates4 P Q ptD ptC (ptE l) (ptB b) ∧
      LineSeparates P Q ptD ptC (ptE l) (ptB b) := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  have hnotD : ¬ LineIsolates4 P Q ptD ptC (ptE l) (ptB b) := by
    intro hiso
    obtain ⟨hb27, hqD, hq89⟩ := q_gt_of_isolates_D h hmin hP hQ hiso
    obtain ⟨-, -, -, hq67, hsb, -⟩ := q_gt_67_80 h hmin hP hQ
    have hgen := (genericEar_nonpos h hmin hq).2
    rcases le_or_gt b (1 / 6) with hb6 | hb6
    · have hq9 := hq89 hb6
      have hC := hgen (1 - 8 / 9 * (1 - b)) (by nlinarith)
      have h0 : 0 ≤ b - 7 / 64 := by linarith
      have h1 : 0 ≤ 1 / 6 - b := by linarith
      have : 0 < genericEar (7 / 64) b (1 - 8 / 9 * (1 - b)) := by
        unfold genericEar
        nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 0)]
      linarith
    · have hC := hgen (1 - (1 - b) * (3 / 4 + 5 * b / 6)) (by nlinarith)
      have h0 : 0 ≤ b - 1 / 6 := by linarith
      have h1 : 0 ≤ 2 / 7 - b := by linarith
      have : 0 < genericEar (7 / 64) b (1 - (1 - b) * (3 / 4 + 5 * b / 6)) := by
        unfold genericEar
        nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 5), mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 4), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 3), mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 4) (pow_nonneg h1 1), mul_nonneg (pow_nonneg h0 5) (pow_nonneg h1 0)]
      linarith
  refine ⟨hnotD, ?_⟩
  obtain ⟨hPE, hQE, hm6, hBE, -⟩ := upper_pair h hmin hP hQ
  have hm6' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by linarith
  obtain ⟨htri, -, -, -⟩ := pq_line_table (s := 7 / 64) (by norm_num) hb hb1 hl hl1
    h.P_central hPE h.Q_central hQE hm6' hBE
  have hnotC := not_lineIsolates4_C h hmin hP hQ hq
  have eB : 7 / 64 ≤ |sarea P Q (ptB b)| := le_abs_sarea_of_le_min hm6' 4 5 3
  have nB : sarea P Q (ptB b) ≠ 0 := fun h0 => by rw [h0, abs_zero] at eB; linarith
  rcases htri with ⟨r1, r2⟩ | ⟨r1, r2⟩ | ⟨r1, r2⟩ <;>
    rcases lt_or_gt_of_ne nB with hB | hB
  · have hE : sarea P Q (ptE l) < 0 := by nlinarith
    have hD : 0 < sarea P Q ptD := by nlinarith
    exact Or.inl ⟨hD, by nlinarith, hE, hB⟩
  · have hE : 0 < sarea P Q (ptE l) := by nlinarith
    have hD : sarea P Q ptD < 0 := by nlinarith
    exact Or.inr ⟨hD, by nlinarith, hE, hB⟩
  · exfalso; apply hnotD
    have hE : sarea P Q (ptE l) < 0 := by nlinarith
    exact Or.inl ⟨by nlinarith, by nlinarith, hE, hB⟩
  · exfalso; apply hnotD
    have hE : 0 < sarea P Q (ptE l) := by nlinarith
    exact Or.inr ⟨by nlinarith, by nlinarith, hE, hB⟩
  · exfalso; apply hnotC
    have hE : sarea P Q (ptE l) < 0 := by nlinarith
    exact Or.inl ⟨by nlinarith, by nlinarith, hE, hB⟩
  · exfalso; apply hnotC
    have hE : 0 < sarea P Q (ptE l) := by nlinarith
    exact Or.inr ⟨by nlinarith, by nlinarith, hE, hB⟩

end Heilbronn.Nine.UnbalancedRightHull
