module

public import Heilbronn.Nine.TypeII.TypeII
public import Heilbronn.Nine.TypeII.TypeIICompletion.Capacity
public import Heilbronn.Nine.TypeII.TypeIICompletion.Sectors

/-! # The unbalanced triangular-right branch

The count row `(1,2,3)`: the left point is `E`, the central points are `P, Q`, the right points
`R, S, T`. In the branch treated here the five right points `B, C, R, S, T` have triangular hull
`BCR`, with `S, T` strictly inside (`UnbalancedTriRight`). `R = (r, u)`, `q = 1 - λ`,
`w = 1 - b`, `v = 1 - u`, `g = r - b - wu`, `δ = [EBR] = bu + λ(r - b)`.

* `unbalancedTriRight_structure`: the ear `EBR` is empty; the eight points without `E`, resp. without `B`, have
  quadrilateral hulls `DBRC`, `DERC` with interior points `P, Q, S, T`; both central points are
  above `CE`;
* `t12_sectors`: the sector assignments of `DERC`, with `P, Q` on opposite sides of `DR`, and
  likewise `S, T`;
* `minTriangleArea_lt_of_two_in_cellII`: the half-square normal form with two points in cell II has a triangle of doubled
  area `< 3/28`;
* `supportMap`, `supportMap_spec`, `supportMap_scale_bounds`: the affine map `D, R, W ↦ (0,0), (1,1), (0,1)`
  (`W = DE ∩ BR`) and its scale `Λ < 65/64`;
* `minTriangleArea_lt_A₀_of_triangular_right`: no competitive configuration of count `(1,2,3)` has a triangular right
  five-point hull.

Thresholds: `unbalancedTriRight_structure` uses the doubled threshold `σ = 8/73 < 2A₀` together with least area
`A₀` (for `FourInteriorQuadrilaterals.ncard_inQuad_le_four`); `minTriangleArea_lt_of_two_in_cellII` is at the normalized doubled
threshold `τ = 3/28`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeIICompletion

open Heilbronn.Nine.TypeII

/-- The unbalanced triangular-right branch: the Type-II data (`TypeIIData`, which includes the
free points in the square), `P, Q` central, `R` a right point, and `S, T` strictly inside the
right triangle `BCR` (so the five right points `B, C, R, S, T` have triangular hull `BCR`). -/
def UnbalancedTriRight (l b : ℝ) (P Q R S T : Point) : Prop :=
  TypeIIData l b P Q R S T ∧ IsCentral b P ∧ IsCentral b Q ∧ IsRight b R ∧
    InTriangle S (ptB b) R ptC ∧ InTriangle T (ptB b) R ptC

/-! ### The lower ear and the two quadrilaterals -/

/-- The scalar bound on the ear: from `g = r - b - (1-b)u ≥ Kσ`, `bq ≥ σ` and `r ≤ 1`,
`δ = bu + λ(r-b) < 3σ`, at `σ = 8/73`. -/
theorem t12_delta {b l r u : ℝ} (hb : 0 < b) (hl : 0 < l) (hrb : 0 ≤ r - b) (hr1 : r ≤ 1)
    (hu0 : 0 ≤ u) (hg : Ktwo * (8 / 73) ≤ r - b - (1 - b) * u) (hbq : 8 / 73 ≤ b * (1 - l)) :
    b * u + l * (r - b) < 3 * (8 / 73) := by
  have hK := tc_Ktwo_bounds
  have hK2 : Ktwo ^ 2 = 8 * Ktwo - 4 := by
    unfold Ktwo; nlinarith [tc_sqrt3_sq]
  have hw : 0 < 1 - b := by nlinarith
  have hb0 : b ≤ 1 - Ktwo * (8 / 73) := by nlinarith [mul_nonneg hw.le hu0]
  have hwu : (1 - b) * u ≤ (1 - b) - Ktwo * (8 / 73) := by linarith
  have hlb : l * b ≤ b - 8 / 73 := by linarith
  have key : b * (1 - b) * (b * u + l * (r - b)) ≤
      b ^ 2 * ((1 - b) - Ktwo * (8 / 73)) + (1 - b) ^ 2 * (b - 8 / 73) := by
    have e1 := mul_le_mul_of_nonneg_left hwu (sq_nonneg b)
    have e2 := mul_le_mul_of_nonneg_left hlb (mul_nonneg hw.le hrb)
    have e3 := mul_le_mul_of_nonneg_left (show r - b ≤ 1 - b by linarith)
      (mul_nonneg hw.le (show (0 : ℝ) ≤ b - 8 / 73 by nlinarith))
    nlinarith
  -- `q(b) = (1 + σ(K-2)) b² - (1-σ) b + σ > 0` on `(0, 1 - Kσ]`
  have hq : 0 < (1 + 8 / 73 * (Ktwo - 2)) * b ^ 2 - (1 - 8 / 73) * b + 8 / 73 := by
    set b0 := 1 - Ktwo * (8 / 73) with hb0d
    have hqb0 : 0 < (1 + 8 / 73 * (Ktwo - 2)) * b0 ^ 2 - (1 - 8 / 73) * b0 + 8 / 73 := by
      have : (1 + 8 / 73 * (Ktwo - 2)) * b0 ^ 2 - (1 - 8 / 73) * b0 + 8 / 73 =
          Ktwo * (8 / 73) ^ 2 * (Ktwo ^ 2 * (8 / 73) - 2 * Ktwo * (8 / 73) - Ktwo + 3) := by
        rw [hb0d]; ring
      rw [this, hK2]
      have : 0 < (8 * Ktwo - 4) * (8 / 73) - 2 * Ktwo * (8 / 73) - Ktwo + 3 := by linarith
      exact mul_pos (mul_pos (by linarith) (by norm_num)) this
    have hd : 0 ≤ (b - b0) * ((1 + 8 / 73 * (Ktwo - 2)) * (b + b0) - (1 - 8 / 73)) :=
      mul_nonneg_of_nonpos_of_nonpos (by linarith) (by nlinarith)
    nlinarith
  by_contra hcon
  push Not at hcon
  have := mul_le_mul_of_nonneg_left hcon (mul_nonneg hb.le hw.le)
  nlinarith

/-- The basic anchor facts of the unbalanced triangular-right branch at `σ = 8/73`. -/
theorem ur_basic {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    Ktwo * (8 / 73) ≤ sarea (ptB b) R ptC ∧ 8 / 73 ≤ b * (1 - l) ∧
      0 < sarea (ptE l) (ptB b) R ∧ 8 / 73 ≤ sarea (ptE l) (ptB b) R ∧
      sarea (ptE l) (ptB b) R < 3 * (8 / 73) ∧ b < R.1 ∧ R.2 < 1 := by
  obtain ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq, hTsq⟩, hP, hQ, hR, hS, hT⟩ := hu
  have h146 : 8 / 73 / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [A₀_bounds.2.1]
  have hs2 : (0 : ℝ) < 8 / 73 / 2 := by norm_num
  have hRr : b + (1 - b) * R.2 < R.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hR; linarith
  have hrb : b < R.1 := by nlinarith
  have hu1' : R.2 < 1 := by nlinarith
  have hg : Ktwo * (8 / 73) ≤ sarea (ptB b) R ptC := by
    have h5 : (8 / 73 : ℝ) / 2 ≤ minTriangleArea ![ptB b, R, ptC, S, T] :=
      min_sub' h146 _ ![3, 6, 1, 7, 8] ![0, 2, 0, 0, 0, 0, 1, 3, 4] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> rfl)
    exact tc_two_int (by norm_num) hS hT h5
  have hDEB : 0 < sarea ptD (ptE l) (ptB b) := by simp only [sarea, ptD, ptE, ptB]; nlinarith
  have hbq := sarea_ge_of_le_min_of_pos hs2 h146 0 2 3 hDEB
  have hδ : 0 < sarea (ptE l) (ptB b) R := by
    simp only [sarea, ptE, ptB]; nlinarith [mul_pos hl (show 0 < R.1 - b by linarith)]
  have hδs := sarea_ge_of_le_min_of_pos hs2 h146 2 3 6 hδ
  simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero]
    at hbq hδs
  have hbq' : 8 / 73 ≤ b * (1 - l) := by
    have : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp only [sarea, ptD, ptE, ptB]; ring
    linarith
  have hδ3 : sarea (ptE l) (ptB b) R < 3 * (8 / 73) := by
    have e : sarea (ptE l) (ptB b) R = b * R.2 + l * (R.1 - b) := by
      simp only [sarea, ptE, ptB]; ring
    have eg : sarea (ptB b) R ptC = R.1 - b - (1 - b) * R.2 := by simp only [sarea, ptB, ptC]; ring
    rw [e]; rw [eg] at hg
    exact t12_delta hb hl (by linarith) hr1 hu0 hg hbq'
  exact ⟨hg, hbq', hδ, by linarith, hδ3, hrb, hu1'⟩

/-- A point inside `BRC` outside the closed ear `EBR` lies inside `ECR`. -/
theorem ur_inECR {l b : ℝ} {R X : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l) (hl1 : l < 1)
    (hR : IsRight b R) (hr1 : R.1 ≤ 1) (hδpos : 0 < sarea (ptE l) (ptB b) R)
    (hX : InTriangle X (ptB b) R ptC) (hXn : X ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point)) :
    InTriangle X (ptE l) R ptC := by
  have hCER := TypeIICompletion.sarea_CER_nonneg hb hb1 hl hl1 hR hr1
  have hEBX : 0 < sarea (ptE l) (ptB b) X := by
    refine tc_pos_of_inTri hX ?_ ?_ ?_ ?_ <;> simp only [sarea, ptB, ptC, ptE] at hδpos ⊢ <;>
      nlinarith
  have hERX : 0 < sarea (ptE l) R X := by
    by_contra hcon; push Not at hcon
    exact hXn (mem_convexHull_of_sarea hδpos hX.1.le (by rw [sarea_swap₁₂]; linarith) hEBX.le)
  have hCEX : 0 < sarea ptC (ptE l) X := by
    refine tc_pos_of_inTri hX ?_ hCER ?_ ?_ <;> simp only [sarea, ptB, ptC, ptE] at hCER ⊢ <;>
      nlinarith
  exact ⟨hERX, hX.2.1, hCEX⟩

/-- A central point outside the closed ear `EBR` lies inside `D, E, R, C`. -/
theorem ur_inDERC {l b : ℝ} {R X : Point} (hb : 0 < b) (hl : 0 < l) (hl1 : l < 1)
    (hR : IsRight b R) (hu0 : 0 ≤ R.2) (hu1 : R.2 ≤ 1) (hδpos : 0 < sarea (ptE l) (ptB b) R)
    (hX : IsCentral b X) (hXn : X ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point)) :
    InQuad ptD (ptE l) R ptC X := by
  have hRr : b + (1 - b) * R.2 < R.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hR; linarith
  have hBRX : 0 < sarea (ptB b) R X := by
    refine tc_pos_of_inTri hX ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptB, ptC] <;>
      nlinarith [mul_nonneg hb.le hu0]
  have hEBX : 0 < sarea (ptE l) (ptB b) X := by
    refine tc_pos_of_inTri hX ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptB, ptC, ptE] <;>
      nlinarith
  have hERX : 0 < sarea (ptE l) R X := by
    by_contra hcon; push Not at hcon
    exact hXn (mem_convexHull_of_sarea hδpos hBRX.le (by rw [sarea_swap₁₂]; linarith) hEBX.le)
  have hDEX : 0 < sarea ptD (ptE l) X := by
    refine tc_pos_of_inTri hX ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptE, ptB, ptC] <;> nlinarith
  exact ⟨hDEX, hERX, RC_pos_of_central hb hX hR hu1, hX.2.2⟩

/-- The first parts of `unbalancedTriRight_structure`: the empty ear and the two quadrilaterals. -/
theorem t12_quads {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    (P ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      Q ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      S ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      T ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point)) ∧
    (ConvexQuad ptD (ptB b) R ptC ∧ InQuad ptD (ptB b) R ptC P ∧ InQuad ptD (ptB b) R ptC Q ∧
      InQuad ptD (ptB b) R ptC S ∧ InQuad ptD (ptB b) R ptC T) ∧
    (ConvexQuad ptD (ptE l) R ptC ∧ InQuad ptD (ptE l) R ptC P ∧ InQuad ptD (ptE l) R ptC Q ∧
      InQuad ptD (ptE l) R ptC S ∧ InQuad ptD (ptE l) R ptC T) ∧
    InTriangle S (ptE l) R ptC ∧ InTriangle T (ptE l) R ptC := by
  obtain ⟨hg, hbq, hδpos, hδs, hδ3, hrb, hu1'⟩ := ur_basic hu hmin
  obtain ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq, hTsq⟩, hP, hQ, hR, hS, hT⟩ := hu
  have h146 : 8 / 73 / 2 ≤ minTriangleArea (typeIIConfig l b P Q R S T) := by
    linarith [A₀_bounds.2.1]
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) :=
    lt_of_lt_of_le (by norm_num) h146
  have hs2 : (0 : ℝ) < 8 / 73 / 2 := by norm_num
  have hδ' : sarea (ptE l) (ptB b) R < 3 * (2 * (8 / 73 / 2)) := by linarith
  have nP : P ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) :=
    not_mem_ear hδ' hδpos (fun h => sarea_ge_of_le_min_of_pos hs2 h146 3 6 4 h)
      (fun h => sarea_ge_of_le_min_of_pos hs2 h146 6 2 4 h) (fun h => sarea_ge_of_le_min_of_pos hs2 h146 2 3 4 h)
      (sarea_ne_zero_of_min_pos hpos 3 6 4) (sarea_ne_zero_of_min_pos hpos 6 2 4)
      (sarea_ne_zero_of_min_pos hpos 2 3 4)
  have nQ : Q ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) :=
    not_mem_ear hδ' hδpos (fun h => sarea_ge_of_le_min_of_pos hs2 h146 3 6 5 h)
      (fun h => sarea_ge_of_le_min_of_pos hs2 h146 6 2 5 h) (fun h => sarea_ge_of_le_min_of_pos hs2 h146 2 3 5 h)
      (sarea_ne_zero_of_min_pos hpos 3 6 5) (sarea_ne_zero_of_min_pos hpos 6 2 5)
      (sarea_ne_zero_of_min_pos hpos 2 3 5)
  have nS : S ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) :=
    not_mem_ear hδ' hδpos (fun h => sarea_ge_of_le_min_of_pos hs2 h146 3 6 7 h)
      (fun h => sarea_ge_of_le_min_of_pos hs2 h146 6 2 7 h) (fun h => sarea_ge_of_le_min_of_pos hs2 h146 2 3 7 h)
      (sarea_ne_zero_of_min_pos hpos 3 6 7) (sarea_ne_zero_of_min_pos hpos 6 2 7)
      (sarea_ne_zero_of_min_pos hpos 2 3 7)
  have nT : T ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) :=
    not_mem_ear hδ' hδpos (fun h => sarea_ge_of_le_min_of_pos hs2 h146 3 6 8 h)
      (fun h => sarea_ge_of_le_min_of_pos hs2 h146 6 2 8 h) (fun h => sarea_ge_of_le_min_of_pos hs2 h146 2 3 8 h)
      (sarea_ne_zero_of_min_pos hpos 3 6 8) (sarea_ne_zero_of_min_pos hpos 6 2 8)
      (sarea_ne_zero_of_min_pos hpos 2 3 8)
  -- `D, B, R, C`
  have hDBR : 0 < sarea ptD (ptB b) R := by
    simp only [sarea, ptD, ptB]; nlinarith [mul_nonneg hb.le hu0]
  have hRCD : 0 < sarea R ptC ptD := by simp only [sarea, ptD, ptC]; nlinarith
  have hCDB : 0 < sarea ptC ptD (ptB b) := by simp only [sarea, ptD, ptC, ptB]; norm_num
  have hBRC : 0 < sarea (ptB b) R ptC := by
    have := hg; have : (0 : ℝ) < Ktwo * (8 / 73) := by linarith [tc_Ks_gt]
    linarith
  have hconvB : ConvexQuad ptD (ptB b) R ptC := ⟨hDBR, hBRC, hRCD, hCDB⟩
  -- the right points inside `ECR`
  have hSE := ur_inECR hb hb1 hl hl1 hR hr1 hδpos hS nS
  have hTE := ur_inECR hb hb1 hl hl1 hR hr1 hδpos hT nT
  -- `D, E, R, C`
  have hDER : 0 < sarea ptD (ptE l) R := by
    simp only [sarea, ptD, ptE]; nlinarith [mul_pos (show 0 < 1 - l by linarith)
      (show 0 < R.1 by linarith)]
  have hCDE : 0 < sarea ptC ptD (ptE l) := by simp only [sarea, ptD, ptC, ptE]; nlinarith
  have hconvE : ConvexQuad ptD (ptE l) R ptC := ⟨hDER, inTri_pos hSE, hRCD, hCDE⟩
  exact ⟨⟨nP, nQ, nS, nT⟩, ⟨hconvB, inQuad_of_tri1 hconvB hP, inQuad_of_tri1 hconvB hQ,
    inQuad_of_tri2 hconvB hS, inQuad_of_tri2 hconvB hT⟩,
    ⟨hconvE, ur_inDERC hb hl hl1 hR hu0 hu1 hδpos hP nP, ur_inDERC hb hl hl1 hR hu0 hu1 hδpos hQ nQ, inQuad_of_tri2 hconvE hSE,
      inQuad_of_tri2 hconvE hTE⟩, hSE, hTE⟩

/-- The last part of `unbalancedTriRight_structure`: one point in each diagonal sector of `D, E, R, C`
(`FourInteriorQuadrilaterals.ncard_inQuad_le_four`); the sectors at `DE` and `CD` hold `P` and `Q`, which are
therefore above `CE`, one on each side of `DR`; `S` and `T` are also on opposite sides of `DR`. -/
theorem t12_sectors {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    0 < sarea (ptE l) ptC P ∧ 0 < sarea (ptE l) ptC Q ∧
      ((0 < sarea ptD R P ∧ sarea ptD R Q < 0) ∨ (sarea ptD R P < 0 ∧ 0 < sarea ptD R Q)) ∧
      ((0 < sarea ptD R S ∧ sarea ptD R T < 0) ∨ (sarea ptD R S < 0 ∧ 0 < sarea ptD R T)) := by
  classical
  obtain ⟨-, -, ⟨hconvE, qP, qQ, qS, qT⟩, hSE, hTE⟩ := t12_quads hu hmin
  obtain ⟨hg, hbq, hδpos, hδs, hδ3, hrb, hu1'⟩ := ur_basic hu hmin
  have hd := hu.1
  have hsq := config_sq hd
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) :=
    lt_of_lt_of_le A₀_pos hmin
  set Pc := typeIIConfig l b P Q R S T with hPc
  have hcq : QuadrilateralHull.ConvexQuad (Pc 0) (Pc 2) (Pc 6) (Pc 1) := hconvE
  obtain ⟨hle4, h4⟩ := FourInteriorQuadrilaterals.ncard_inQuad_le_four hsq hmin hcq
  have hge4 : 4 ≤ Set.ncard {m | QuadrilateralHull.InQuad (Pc m) (Pc 0) (Pc 2) (Pc 6) (Pc 1)} := by
    have hsub : ((({4, 5, 7, 8} : Finset (Fin 9))) : Set (Fin 9)) ⊆
        {m | QuadrilateralHull.InQuad (Pc m) (Pc 0) (Pc 2) (Pc 6) (Pc 1)} := by
      intro m hm
      simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
        Set.mem_singleton_iff] at hm
      rcases hm with rfl | rfl | rfl | rfl
      · exact qP
      · exact qQ
      · exact qS
      · exact qT
    have := Set.ncard_le_ncard hsub
    rwa [Set.ncard_coe_finset] at this
  obtain ⟨sDE, sER, sRC, sCD⟩ := h4 (le_antisymm hle4 hge4)
  have hECS : sarea (ptE l) ptC S < 0 := by linarith [hSE.2.2, sarea_swap₁₂ (ptE l) ptC S]
  have hECT : sarea (ptE l) ptC T < 0 := by linarith [hTE.2.2, sarea_swap₁₂ (ptE l) ptC T]
  have hERB : sarea (ptE l) R (ptB b) < 0 := by linarith [sarea_swap₂₃ (ptE l) (ptB b) R]
  have hECB : sarea (ptE l) ptC (ptB b) < 0 := by
    obtain ⟨hb, hb1, hl, hl1, -⟩ := hd
    simp only [sarea, ptE, ptC, ptB]; nlinarith [mul_pos hb (show 0 < 1 - l by linarith)]
  have z1 : ∀ X Y : Point, sarea X Y X = 0 := by intro X Y; unfold sarea; ring
  have z2 : ∀ X Y : Point, sarea X Y Y = 0 := by intro X Y; unfold sarea; ring
  -- the `DE` and `CD` sectors only contain `P` or `Q`
  obtain ⟨m, hm⟩ := Set.ncard_eq_one.1 sDE
  obtain ⟨m', hm'⟩ := Set.ncard_eq_one.1 sCD
  have hmm : m ∈ ({m} : Set (Fin 9)) := rfl
  have hmm' : m' ∈ ({m'} : Set (Fin 9)) := rfl
  rw [← hm] at hmm
  rw [← hm'] at hmm'
  have hmP : (m = 4 ∨ m = 5) ∧ 0 < sarea (ptE l) ptC (Pc m) ∧ sarea ptD R (Pc m) < 0 := by
    obtain ⟨⟨a1, a2, a3⟩, ⟨b1, b2, b3⟩⟩ := hmm
    refine ⟨?_, b2, by
      have h := (show 0 < sarea R ptD (Pc m) from a3); linarith [sarea_swap₁₂ ptD R (Pc m)]⟩
    fin_cases m
    · exfalso; have h := (show 0 < sarea ptD (ptE l) ptD from a1); rw [z1] at h
      exact lt_irrefl 0 h
    · exfalso; have h := (show 0 < sarea (ptE l) ptC ptC from b2); rw [z2] at h
      exact lt_irrefl 0 h
    · exfalso; have h := (show 0 < sarea ptD (ptE l) (ptE l) from a1); rw [z2] at h
      exact lt_irrefl 0 h
    · exfalso; have h := (show 0 < sarea (ptE l) R (ptB b) from a2); linarith
    · left; rfl
    · right; rfl
    · exfalso; have h := (show 0 < sarea (ptE l) R R from a2); rw [z2] at h
      exact lt_irrefl 0 h
    · exfalso; have h := (show 0 < sarea (ptE l) ptC S from b2); linarith
    · exfalso; have h := (show 0 < sarea (ptE l) ptC T from b2); linarith
  have hmQ : (m' = 4 ∨ m' = 5) ∧ 0 < sarea (ptE l) ptC (Pc m') ∧ 0 < sarea ptD R (Pc m') := by
    obtain ⟨⟨a1, a2, a3⟩, ⟨b1, b2, b3⟩⟩ := hmm'
    refine ⟨?_, a3, b2⟩
    fin_cases m'
    · exfalso; have h := (show 0 < sarea ptC ptD ptD from a1); rw [z2] at h
      exact lt_irrefl 0 h
    · exfalso; have h := (show 0 < sarea ptC ptD ptC from a1); rw [z1] at h
      exact lt_irrefl 0 h
    · exfalso; have h := (show 0 < sarea ptD (ptE l) (ptE l) from a2); rw [z2] at h
      exact lt_irrefl 0 h
    · exfalso; have h := (show 0 < sarea (ptE l) ptC (ptB b) from a3); linarith
    · left; rfl
    · right; rfl
    · exfalso; have h := (show 0 < sarea ptD R R from b2); rw [z2] at h
      exact lt_irrefl 0 h
    · exfalso; have h := (show 0 < sarea (ptE l) ptC S from a3); linarith
    · exfalso; have h := (show 0 < sarea (ptE l) ptC T from a3); linarith
  obtain ⟨hm45, hmE, hmR⟩ := hmP
  obtain ⟨hm45', hmE', hmR'⟩ := hmQ
  -- the right points: `S, T` in the sectors at `ER`, `RC`
  have hS0 : sarea ptD R S ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 7
  have hT0 : sarea ptD R T ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 6 8
  have hER : ∀ (k : Fin 9) (X : Point), Pc k = X → InTriangle X (ptE l) R ptC →
      InQuad ptD (ptE l) R ptC X → sarea ptD R X < 0 →
      k ∈ {m | FourInteriorQuadrilaterals.InSector (Pc m) (Pc 2) (Pc 6) (Pc 1) (Pc 0)} := by
    intro k X hk hX qX hneg
    show FourInteriorQuadrilaterals.InSector (Pc k) (Pc 2) (Pc 6) (Pc 1) (Pc 0)
    rw [hk]
    refine ⟨hX, hX.1, ?_, qX.1⟩
    show 0 < sarea R ptD X
    linarith [sarea_swap₁₂ ptD R X]
  have hRC : ∀ (k : Fin 9) (X : Point), Pc k = X → InTriangle X (ptE l) R ptC →
      InQuad ptD (ptE l) R ptC X → 0 < sarea ptD R X →
      k ∈ {m | FourInteriorQuadrilaterals.InSector (Pc m) (Pc 6) (Pc 1) (Pc 0) (Pc 2)} := by
    intro k X hk hX qX hp
    show FourInteriorQuadrilaterals.InSector (Pc k) (Pc 6) (Pc 1) (Pc 0) (Pc 2)
    rw [hk]
    refine ⟨⟨hX.2.1, qX.2.2.2, ?_⟩, ⟨hX.2.1, hX.2.2, hX.1⟩⟩
    show 0 < sarea ptD R X
    exact hp
  have hST : (0 < sarea ptD R S ∧ sarea ptD R T < 0) ∨ (sarea ptD R S < 0 ∧ 0 < sarea ptD R T) := by
    rcases lt_or_gt_of_ne hS0 with hs | hs <;> rcases lt_or_gt_of_ne hT0 with ht | ht
    · exact absurd (ncard_one_ne sER (hER 7 S rfl hSE qS hs) (hER 8 T rfl hTE qT ht)
        (by decide)) id
    · exact Or.inr ⟨hs, ht⟩
    · exact Or.inl ⟨hs, ht⟩
    · exact absurd (ncard_one_ne sRC (hRC 7 S rfl hSE qS hs) (hRC 8 T rfl hTE qT ht)
        (by decide)) id
  rcases hm45 with rfl | rfl <;> rcases hm45' with h' | h'
  · subst h'; exact absurd hmR (not_lt.2 hmR'.le)
  · subst h'; exact ⟨hmE, hmE', Or.inr ⟨hmR, hmR'⟩, hST⟩
  · subst h'; exact ⟨hmE', hmE, Or.inl ⟨hmR', hmR⟩, hST⟩
  · subst h'; exact absurd hmR (not_lt.2 hmR'.le)

/-- In the unbalanced triangular-right branch, at least area `A₀` (doubled threshold
`σ = 8/73`): the closed actual triangle `EBR` contains no further configuration point (its
doubled area is below `3σ`, `t12_delta`); the eight points other than `E` have quadrilateral hull
`DBRC`, the eight points other than `B` have quadrilateral hull `DERC`, both with the interior
points `P, Q, S, T`; and both central points lie above `CE`. -/
theorem unbalancedTriRight_structure {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    (P ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      Q ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      S ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      T ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point)) ∧
    (ConvexQuad ptD (ptB b) R ptC ∧ InQuad ptD (ptB b) R ptC P ∧ InQuad ptD (ptB b) R ptC Q ∧
      InQuad ptD (ptB b) R ptC S ∧ InQuad ptD (ptB b) R ptC T) ∧
    (ConvexQuad ptD (ptE l) R ptC ∧ InQuad ptD (ptE l) R ptC P ∧ InQuad ptD (ptE l) R ptC Q ∧
      InQuad ptD (ptE l) R ptC S ∧ InQuad ptD (ptE l) R ptC T) ∧
    0 < sarea (ptE l) ptC P ∧ 0 < sarea (ptE l) ptC Q := by
  obtain ⟨h1, h2, h3, -, -⟩ := t12_quads hu hmin
  obtain ⟨h4, h5, -, -⟩ := t12_sectors hu hmin
  exact ⟨h1, h2, h3, h4, h5⟩

/-! ### Two points in cell II: scalar steps (`τ = 3/28`, `β = 1 - f`) -/

/-- The quadratic condition `4τ·hβ(h + β - hβ) ≤ (hβ - τ(h+β))²`, with `hβ > τ(h+β)`, gives
`hβ ≥ 36/49` (through `1/h + 1/β ≤ 7/3`). -/
theorem t13_U {h β : ℝ} (hh : 0 < h) (hβ : 0 < β)
    (hB : 0 < h * β - 3 / 28 * (h + β))
    (h46 : 4 * (3 / 28) * (h * β) * (h + β - h * β) ≤ (h * β - 3 / 28 * (h + β)) ^ 2) :
    36 / 49 ≤ h * β := by
  have hU : 0 < h * β := mul_pos hh hβ
  have hp : 3 * (h + β) ≤ 7 * (h * β) := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_pos (show 0 < 3 * (h + β) - 7 * (h * β) by linarith)
      (show 0 < 28 * (h * β) - 3 * (h + β) by linarith)]
  nlinarith [sq_nonneg (h - β)]

/-- The distance cap `τ ≤ (1-m)(m-w)` with `21/25 ≤ m ≤ 1` gives `w ≤ W₀ = 477/2800`. -/
theorem t13_cap {m w : ℝ} (hm : 21 / 25 ≤ m) (hm1 : m ≤ 1) (h : 3 / 28 ≤ (1 - m) * (m - w)) :
    w ≤ 477 / 2800 := by
  by_contra hcon; push Not at hcon
  rcases eq_or_lt_of_le hm1 with h1 | h1
  · rw [h1] at h; norm_num at h
  · nlinarith [mul_lt_mul_of_pos_left hcon (show 0 < 1 - m by linarith),
      mul_nonneg (show 0 ≤ m - 21 / 25 by linarith) (show 0 ≤ m - 925 / 2800 by linarith)]

/-- The same-side case: with `d_A, d_Z < 0` for the line `X → Y`, the quadratic condition of
`t13_U` holds, and `hβτ ≤ (hβ - τ(h+β)) v - (h+β-hβ) v²` for `v = w` or `v = z` (both `≥ τ`). -/
theorem t13_same {h β x w y z : ℝ} (hh : 0 < h) (hh1 : h < 1) (hβ : 0 < β) (hβ1 : β < 1)
    (_hx : 0 ≤ x) (_hy : 0 ≤ y) (hw : 3 / 28 ≤ w) (hz : 3 / 28 ≤ z)
    (hlX : 3 / 28 ≤ β * x - (1 - β) * w) (_hkX : 3 / 28 ≤ h * (1 - x) - w)
    (_hlY : 3 / 28 ≤ β * y - (1 - β) * z) (hkY : 3 / 28 ≤ h * (1 - y) - z)
    (hdA : 3 / 28 ≤ y * w - x * z) (hdZ : 3 / 28 ≤ y * w - x * z + z - w) :
    (0 < h * β - 3 / 28 * (h + β) ∧
      4 * (3 / 28) * (h * β) * (h + β - h * β) ≤ (h * β - 3 / 28 * (h + β)) ^ 2) ∧
    ∃ v, 3 / 28 ≤ v ∧ (v = w ∨ v = z) ∧
      h * β * (3 / 28) ≤ (h * β - 3 / 28 * (h + β)) * v - (h + β - h * β) * v ^ 2 := by
  have hC : 0 ≤ h + β - h * β := by nlinarith
  have key : ∃ v, 3 / 28 ≤ v ∧ (v = w ∨ v = z) ∧
      h * β * (3 / 28) ≤ (h * β - 3 / 28 * (h + β)) * v - (h + β - h * β) * v ^ 2 := by
    rcases le_total z w with hzw | hwz
    · refine ⟨z, hz, Or.inr rfl, ?_⟩
      have e1 := mul_le_mul_of_nonneg_left (show h * y ≤ h - 3 / 28 - z by linarith)
        (mul_nonneg hβ.le (by linarith : (0 : ℝ) ≤ w))
      have e2 := mul_le_mul_of_nonneg_left (show 3 / 28 + (1 - β) * w ≤ β * x by linarith)
        (mul_nonneg hh.le (by linarith : (0 : ℝ) ≤ z))
      nlinarith [mul_nonneg (sub_nonneg.2 hzw) (mul_nonneg hβ.le (by norm_num : (0:ℝ) ≤ 3 / 28)),
        mul_nonneg (sub_nonneg.2 hzw) (mul_nonneg (by linarith : (0 : ℝ) ≤ z) hC),
        mul_pos hh hβ]
    · refine ⟨w, hw, Or.inl rfl, ?_⟩
      have e1 := mul_le_mul_of_nonneg_left (show h * y ≤ h - 3 / 28 - z by linarith)
        (mul_nonneg hβ.le (by linarith : (0 : ℝ) ≤ w))
      have e2 := mul_le_mul_of_nonneg_left (show 3 / 28 + (1 - β) * w ≤ β * x by linarith)
        (mul_nonneg hh.le (by linarith : (0 : ℝ) ≤ z))
      nlinarith [mul_nonneg (sub_nonneg.2 hwz) (mul_nonneg hh.le (by norm_num : (0:ℝ) ≤ 3 / 28)),
        mul_nonneg (sub_nonneg.2 hwz) (mul_nonneg (by linarith : (0 : ℝ) ≤ w) hC),
        mul_pos hh hβ]
  obtain ⟨v, hv, hvwz, hq⟩ := key
  refine ⟨⟨?_, ?_⟩, v, hv, hvwz, hq⟩
  · by_contra hcon; push Not at hcon
    nlinarith [mul_pos hh hβ, mul_nonpos_of_nonneg_of_nonpos (by linarith : (0 : ℝ) ≤ v) hcon,
      mul_nonneg hC (sq_nonneg v)]
  · nlinarith [sq_nonneg (h * β - 3 / 28 * (h + β) - 2 * (h + β - h * β) * v)]

/-- A quadratic with a value above `K > 0` has positive linear coefficient and nonnegative
discriminant. -/
theorem disc_of_quad {A C K t : ℝ} (hC : 0 ≤ C) (ht : 0 ≤ t) (hK : 0 < K)
    (h : K ≤ A * t - C * t ^ 2) : 0 < A ∧ 4 * K * C ≤ A ^ 2 := by
  constructor
  · by_contra hcon; push Not at hcon
    nlinarith [mul_nonpos_of_nonneg_of_nonpos ht hcon, mul_nonneg hC (sq_nonneg t)]
  · nlinarith [sq_nonneg (A - 2 * C * t), mul_le_mul_of_nonneg_left h
      (show (0 : ℝ) ≤ 4 * C by linarith)]

/-- The isolated case `d_H, d_Z ≥ τ`: from the identity
`w d_H + (h - w) d_Z = (h(1-x) - w)(w - z)`, the `t`-quadratic
`hβτ ≤ (hβ - τ(2h + β - hβ)) t - (h+β-hβ) t²` holds for `t = w - τ`, and `w ≥ 2τ`. -/
theorem t13_pp_quad {h β x w z dH dZ : ℝ} (hh : 0 < h) (hβ : 0 < β) (hβ1 : β < 1)
    (hx : 0 ≤ x) (hw : 3 / 28 ≤ w) (hz : 3 / 28 ≤ z)
    (hlX : 3 / 28 ≤ β * x - (1 - β) * w) (hkX : 3 / 28 ≤ h * (1 - x) - w)
    (hdH : 3 / 28 ≤ dH) (hdZ : 3 / 28 ≤ dZ)
    (hid : w * dH + (h - w) * dZ = (h * (1 - x) - w) * (w - z)) :
    h * β * (3 / 28) ≤ (h * β - 3 / 28 * (h + (h + β - h * β))) * (w - 3 / 28) -
        (h + β - h * β) * (w - 3 / 28) ^ 2 ∧ 2 * (3 / 28) ≤ w := by
  set k := h * (1 - x) - w with hk
  have hhw : w < h := by nlinarith
  have h1 : h * (3 / 28) ≤ k * (w - z) := by
    rw [← hid]; nlinarith
  have hwz : z < w := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_nonpos_of_nonneg_of_nonpos (by linarith : (0 : ℝ) ≤ k)
      (show w - z ≤ 0 by linarith)]
  have h2 : h * (3 / 28) ≤ k * (w - 3 / 28) := by
    nlinarith [mul_le_mul_of_nonneg_left (show w - z ≤ w - 3 / 28 by linarith)
      (by linarith : (0 : ℝ) ≤ k)]
  have hkh : k ≤ h := by nlinarith
  refine ⟨?_, ?_⟩
  · have hβk : β * k ≤ h * β - h * (3 / 28) - (h * (1 - β) + β) * w := by
      nlinarith [mul_le_mul_of_nonneg_left (show 3 / 28 + (1 - β) * w ≤ β * x by linarith) hh.le]
    have h3 : h * β * (3 / 28) ≤ (h * β - h * (3 / 28) - (h * (1 - β) + β) * w) *
        (w - 3 / 28) := by
      nlinarith [mul_le_mul_of_nonneg_right hβk (show (0 : ℝ) ≤ w - 3 / 28 by linarith)]
    nlinarith
  · nlinarith [mul_le_mul_of_nonneg_right hkh (show (0 : ℝ) ≤ w - 3 / 28 by linarith)]

/-- The quadratic condition of `t13_U` from the `t`-quadratic of the isolated case
(`t13_pp_quad`). -/
theorem t13_46_of_quad {h β t : ℝ} (hh : 0 < h) (_hh1 : h < 1) (hβ : 0 < β) (hβ1 : β < 1)
    (ht : 0 ≤ t)
    (hA : h * β * (3 / 28) ≤ (h * β - 3 / 28 * (h + (h + β - h * β))) * t -
        (h + β - h * β) * t ^ 2) :
    0 < h * β - 3 / 28 * (h + β) ∧
      4 * (3 / 28) * (h * β) * (h + β - h * β) ≤ (h * β - 3 / 28 * (h + β)) ^ 2 := by
  have hU := mul_pos hh hβ
  have hC : 0 ≤ h + β - h * β := by nlinarith
  obtain ⟨hA0, hdisc⟩ := disc_of_quad hC ht (by positivity) hA
  have hAB : h * β - 3 / 28 * (h + (h + β - h * β)) ≤ h * β - 3 / 28 * (h + β) := by
    nlinarith
  have h5 := pow_le_pow_left₀ hA0.le hAB 2
  exact ⟨by linarith, by linarith⟩

/-- The containment case, line signs `(d_H, d_F) = (-,+)`: `X` inside `HFY` would force
`(1-β)h - (1-β)z - (h-β)y ≥ 3τ`, which the anchor bounds of `Y` exclude. -/
theorem t13_contain {h β y z : ℝ} (hh : 0 < h) (hh1 : h < 1) (hβ : 0 < β) (hβ1 : β < 1)
    (_hy : 0 ≤ y) (hz : 3 / 28 ≤ z)
    (hlY : 3 / 28 ≤ β * y - (1 - β) * z) (hkY : 3 / 28 ≤ h * (1 - y) - z)
    (hN : 3 * (3 / 28) ≤ (1 - β) * h - (1 - β) * z - (h - β) * y) : False := by
  have hq : ∀ c : ℝ, 0 < c → c ≤ 1 → 0 < c ^ 2 - (1 - 3 / 28) * c + 2 * (3 / 28) := by
    intro c _ _; nlinarith [sq_nonneg (c - 25 / 56)]
  rcases le_total β h with hhb | hhb
  · have key : 3 / 28 * (2 * h + 2 * β - h * β) ≤ h * β * (1 - β) := by
      nlinarith [mul_le_mul_of_nonneg_left (show 3 / 28 + (1 - β) * z ≤ β * y by linarith)
        (show (0 : ℝ) ≤ h - β by linarith),
        mul_nonneg (show (0 : ℝ) ≤ z - 3 / 28 by linarith) (mul_nonneg hh.le
          (show (0 : ℝ) ≤ 1 - β by linarith))]
    nlinarith [mul_nonneg hh.le (hq β hβ hβ1.le).le, mul_nonneg (show 0 ≤ 1 - h by linarith) hβ.le]
  · have key : 3 / 28 * (2 * h + 2 * β - h * β) ≤ h * β * (1 - h) := by
      nlinarith [mul_le_mul_of_nonneg_left (show h * y ≤ h - 3 / 28 - z by linarith)
        (show (0 : ℝ) ≤ β - h by linarith),
        mul_nonneg (show (0 : ℝ) ≤ z - 3 / 28 by linarith) (mul_nonneg hβ.le
          (show (0 : ℝ) ≤ 1 - h by linarith))]
    nlinarith [mul_nonneg hβ.le (hq h hh hh1.le).le, mul_nonneg (show 0 ≤ 1 - β by linarith) hh.le]

/-- The distance cap for one point, in both orders of `h, β`: `τ ≤ (1-β)(β-w)` if `β ≤ h`, and
`τ ≤ (1-h)(h-w)` if `h ≤ β`. -/
theorem t13_W {h β x w : ℝ} (hh : 0 < h) (hh1 : h < 1) (hβ : 0 < β) (_hβ1 : β < 1)
    (hlX : 3 / 28 ≤ β * x - (1 - β) * w) (hkX : 3 / 28 ≤ h * (1 - x) - w)
    (hN : 3 / 28 ≤ (1 - β) * h - (1 - β) * w - (h - β) * x) :
    (β ≤ h → 3 / 28 ≤ (1 - β) * (β - w)) ∧ (h ≤ β → 3 / 28 ≤ (1 - h) * (h - w)) := by
  constructor
  · intro hbh
    have e := mul_le_mul_of_nonneg_left (show 3 / 28 + (1 - β) * w ≤ β * x by linarith)
      (show (0 : ℝ) ≤ h - β by linarith)
    have : 0 ≤ h * ((1 - β) * (β - w) - 3 / 28) := by nlinarith
    by_contra hcon; push Not at hcon
    nlinarith [mul_pos hh (show 0 < 3 / 28 - (1 - β) * (β - w) by linarith)]
  · intro hhb
    have e := mul_le_mul_of_nonneg_left (show h * x ≤ h - 3 / 28 - w by linarith)
      (show (0 : ℝ) ≤ β - h by linarith)
    have : 0 ≤ β * ((1 - h) * (h - w) - 3 / 28) := by nlinarith
    by_contra hcon; push Not at hcon
    nlinarith [mul_pos hβ (show 0 < 3 / 28 - (1 - h) * (h - w) by linarith)]

/-- With `hβ ≥ 36/49` (`t13_U`) and `h(1-β), (1-h)β ≥ τ`, the distance cap of a point gives
`w ≤ W₀ = 477/2800`. -/
theorem t13_caps {h β w : ℝ} (_hh : 0 < h) (hh1 : h < 1) (_hβ : 0 < β) (hβ1 : β < 1)
    (hU : 36 / 49 ≤ h * β) (h44a : 3 / 28 ≤ h * (1 - β)) (h44b : 3 / 28 ≤ (1 - h) * β)
    (hW : (β ≤ h → 3 / 28 ≤ (1 - β) * (β - w)) ∧ (h ≤ β → 3 / 28 ≤ (1 - h) * (h - w))) :
    w ≤ 477 / 2800 := by
  rcases le_total β h with hbh | hhb
  · exact t13_cap (m := β) (by nlinarith) hβ1.le (hW.1 hbh)
  · exact t13_cap (m := h) (by nlinarith) hh1.le (hW.2 hhb)

/-- The final contradiction of the same-side case: the quadratic in `v` of `t13_same` fails for
`τ ≤ v ≤ W₀`. -/
theorem t13_same_final {h β v : ℝ} (hh : 0 < h) (hh1 : h < 1) (hβ : 0 < β) (hβ1 : β < 1)
    (hv : 3 / 28 ≤ v) (hvW : v ≤ 477 / 2800)
    (hq : h * β * (3 / 28) ≤ (h * β - 3 / 28 * (h + β)) * v - (h + β - h * β) * v ^ 2) :
    False := by
  have hU := mul_pos hh hβ
  have hS : 2 * (h * β) ≤ h + β := by nlinarith
  have h1 : (h * β - 3 / 28 * (h + β)) * v ≤ h * β * (1 - 2 * (3 / 28)) * v :=
    mul_le_mul_of_nonneg_right (by nlinarith) (by linarith)
  have h2 : h * β * v ^ 2 ≤ (h + β - h * β) * v ^ 2 :=
    mul_le_mul_of_nonneg_right (by linarith) (sq_nonneg v)
  have h3 : 3 / 28 ≤ (1 - 2 * (3 / 28)) * v - v ^ 2 := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_lt_mul_of_pos_left hcon hU]
  nlinarith [mul_nonneg (show 0 ≤ 477 / 2800 - v by linarith)
    (show 0 ≤ 1 - 2 * (3 / 28) - v - 477 / 2800 by linarith)]

/-- The anchor areas of a free point in cell II, at doubled threshold `τ = 3/28`
(`x = P.1`, `w = P.2 - P.1`, `f = 1 - β`). -/
theorem t13_pt {h β : ℝ} {P Q : Point} (hh : 0 < h) (hh1 : h < 1) (hβ : 0 < β) (hβ1 : β < 1)
    (hPH : InTriangle P hsA hsE (hsH h)) (hPF : InTriangle P hsA hsE (hsF (1 - β)))
    (hmin : 3 / 56 ≤ minTriangleArea ![hsA, hsE, hsH h, hsF (1 - β), P, Q]) :
    0 ≤ P.1 ∧ 3 / 28 ≤ P.2 - P.1 ∧ 3 / 28 ≤ h * (1 - P.1) - (P.2 - P.1) ∧
      3 / 28 ≤ β * (1 - P.1 - (P.2 - P.1)) ∧
      3 / 28 ≤ β * P.1 - (1 - β) * (P.2 - P.1) ∧
      3 / 28 ≤ (1 - β) * h - (1 - β) * (P.2 - P.1) - (h - β) * P.1 := by
  have ht : (0 : ℝ) < 3 / 56 := by norm_num
  have g1 := sarea_ge_of_le_min_of_pos ht hmin 0 1 4 hPH.1
  have g2 := sarea_ge_of_le_min_of_pos ht hmin 1 2 4 hPH.2.1
  have g3 := sarea_ge_of_le_min_of_pos ht hmin 2 0 4 hPH.2.2
  have g4 := sarea_ge_of_le_min_of_pos ht hmin 1 3 4 hPF.2.1
  have g5 := sarea_ge_of_le_min_of_pos ht hmin 3 0 4 hPF.2.2
  simp only [Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one] at g1 g2 g3 g4 g5
  simp only [sarea, hsA, hsE, hsH, hsF] at g1 g2 g3 g4 g5
  have hx : 0 ≤ P.1 := by nlinarith
  have hN : sarea (hsH h) (hsF (1 - β)) P < 0 := by
    have e : sarea (hsH h) (hsF (1 - β)) P = -((1 - β) * (h * (1 - P.1) - (P.2 - P.1))) -
        (1 - h) * β * P.1 := by simp only [sarea, hsH, hsF]; ring
    rw [e]
    nlinarith [mul_pos (show (0 : ℝ) < 1 - β by linarith) (show 0 < h * (1 - P.1) - (P.2 - P.1)
      by linarith), mul_nonneg (mul_nonneg (show (0 : ℝ) ≤ 1 - h by linarith) hβ.le) hx]
  have g6 := sarea_le_of_le_min_of_neg ht hmin 2 3 4 hN
  simp only [Matrix.cons_val] at g6
  simp only [sarea, hsH, hsF] at g6
  refine ⟨hx, by linarith, by linarith, by linarith, by linarith, by linarith⟩

/-- The sign pair `(d_H, d_F) = (+,-)` is impossible, by the linear identities `i1`–`i3`
expressing `W d_H` and `W d_F` through positive quantities. -/
theorem t13_pm {W K HX B0 Lm NN u0 e0 dH dF : ℝ} (_hK : 0 < K) (hHX : 0 < HX) (hB0 : 0 < B0)
    (_hLm : 0 < Lm) (hW : 0 < W) (hNN : 0 < NN) (hu0 : 0 < u0) (he0 : 0 < e0) (hdH : 0 < dH)
    (hdF : dF < 0) (i1 : W * dH = K * u0 - HX * e0) (i2 : W * dF = B0 * u0 - Lm * e0)
    (i3 : HX * B0 - K * Lm = W * NN) : False := by
  have q1 : HX * e0 < K * u0 := by nlinarith [mul_pos hW hdH]
  have q2 : B0 * u0 < Lm * e0 := by nlinarith [mul_pos hW (neg_pos.2 hdF)]
  have q3 : HX * e0 * (B0 * u0) < K * u0 * (Lm * e0) :=
    mul_lt_mul'' q1 q2 (by positivity) (by positivity)
  have : (HX * B0) * (u0 * e0) < (K * Lm) * (u0 * e0) := by nlinarith
  have h4 := lt_of_mul_lt_mul_right this (by positivity)
  nlinarith [mul_pos hW hNN]

/-- The scalar core of `minTriangleArea_lt_of_two_in_cellII`: the anchor bounds of the two points, `h(1-β), (1-h)β ≥ τ`,
the line values `d_V` and the linear identities between them exclude every line-sign alternative
with `d_A < 0`. -/
theorem t13_core {h β x w y z dA dZ dH dF : ℝ} (hh : 0 < h) (hh1 : h < 1) (hβ : 0 < β)
    (hβ1 : β < 1)
    (hx0 : 0 ≤ x) (hwX : 3 / 28 ≤ w) (hkX : 3 / 28 ≤ h * (1 - x) - w)
    (hbX : 3 / 28 ≤ β * (1 - x - w)) (hlX : 3 / 28 ≤ β * x - (1 - β) * w)
    (hNX : 3 / 28 ≤ (1 - β) * h - (1 - β) * w - (h - β) * x)
    (hy0 : 0 ≤ y) (hwY : 3 / 28 ≤ z) (hkY : 3 / 28 ≤ h * (1 - y) - z)
    (hbY : 3 / 28 ≤ β * (1 - y - z)) (hlY : 3 / 28 ≤ β * y - (1 - β) * z)
    (hNY : 3 / 28 ≤ (1 - β) * h - (1 - β) * z - (h - β) * y)
    (h44a : 3 / 28 ≤ h * (1 - β)) (h44b : 3 / 28 ≤ (1 - h) * β)
    (hA : dA ≤ -(3 / 28)) (sZ : 3 / 28 ≤ dZ ∨ dZ ≤ -(3 / 28))
    (sH : 3 / 28 ≤ dH ∨ dH ≤ -(3 / 28)) (sF : 3 / 28 ≤ dF ∨ dF ≤ -(3 / 28))
    (eA : dA = x * z - y * w) (eZ : dZ = x * z - y * w - z + w)
    (i1 : w * dH = (h * (1 - x) - w) * (-dA) - h * x * dZ)
    (i2 : w * dF = (β * (1 - x - w)) * (-dA) - (β * x - (1 - β) * w) * dZ)
    (iPP : w * dH + (h - w) * dZ = (h * (1 - x) - w) * (w - z))
    (iMM : w * (-dF) + (β - (w)) * (-dA) = (β * (1 - (1 - x - w)) - w) * (w - z))
    (iC : (1 - β) * h - (1 - β) * z - (h - β) * y =
      (1 - β) * h - (1 - β) * w - (h - β) * x + dF - dH) : False := by
  have hWX := t13_W hh hh1 hβ hβ1 hlX hkX hNX
  have hWY := t13_W hh hh1 hβ hβ1 hlY hkY hNY
  have fin46 : 0 < h * β - 3 / 28 * (h + β) →
      4 * (3 / 28) * (h * β) * (h + β - h * β) ≤ (h * β - 3 / 28 * (h + β)) ^ 2 →
      w ≤ 477 / 2800 ∧ z ≤ 477 / 2800 := by
    intro hB h46
    have hU := t13_U hh hβ hB h46
    exact ⟨t13_caps hh hh1 hβ hβ1 hU h44a h44b hWX, t13_caps hh hh1 hβ hβ1 hU h44a h44b hWY⟩
  rcases sZ with hZ | hZ
  · -- opposite sides
    rcases sH with hH | hH <;> rcases sF with hF | hF
    · obtain ⟨hq, h2⟩ := t13_pp_quad hh hβ hβ1 hx0 hwX hwY hlX hkX hH hZ iPP
      obtain ⟨hB, h46⟩ := t13_46_of_quad hh hh1 hβ hβ1 (by linarith) hq
      linarith [(fin46 hB h46).1]
    · have hx1 : 0 < x := by
        nlinarith only [hlX, hwX, hβ, mul_nonneg (sub_nonneg.2 hβ1.le)
          (show 0 ≤ w by linarith)]
      exact t13_pm (W := w) (K := h * (1 - x) - w) (HX := h * x) (B0 := β * (1 - x - w))
        (Lm := β * x - (1 - β) * w) (NN := (1 - β) * h - (1 - β) * w - (h - β) * x)
        (u0 := -dA) (e0 := dZ) (by linarith) (mul_pos hh hx1) (by linarith) (by linarith)
        (by linarith) (by linarith) (by linarith) (by linarith) (by linarith) (by linarith)
        i1 i2 (by ring)
    · exact t13_contain hh hh1 hβ hβ1 hy0 hwY hlY hkY (by linarith)
    · obtain ⟨hq, h2⟩ := t13_pp_quad (h := β) (β := h) (x := 1 - x - w)
        (dH := -dF) (dZ := -dA) hβ hh hh1 (by nlinarith only [hbX, hβ]) hwX hwY
        (by linarith) (by linarith) (by linarith) (by linarith) iMM
      obtain ⟨hB, h46⟩ := t13_46_of_quad hβ hβ1 hh hh1 (by linarith) hq
      have hB' : 0 < h * β - 3 / 28 * (h + β) := by linarith [mul_comm h β]
      have h46' : 4 * (3 / 28) * (h * β) * (h + β - h * β) ≤ (h * β - 3 / 28 * (h + β)) ^ 2 :=
        le_of_le_of_eq (le_of_eq_of_le (by ring) h46) (by ring)
      linarith [(fin46 hB' h46').1]
  · -- same side
    obtain ⟨⟨hB, h46⟩, v, hv, hvwz, hq⟩ := t13_same hh hh1 hβ hβ1 hx0 hy0 hwX hwY hlX hkX hlY
      hkY (by linarith) (by linarith)
    obtain ⟨cX, cY⟩ := fin46 hB h46
    exact t13_same_final hh hh1 hβ hβ1 hv (by rcases hvwz with rfl | rfl <;> assumption) hq

/-- The ordered main step of `minTriangleArea_lt_of_two_in_cellII`: with `d_A = [XYA] < 0`, every line-sign alternative is
impossible. -/
theorem t13_ordered {h β : ℝ} {X Y : Point} (hh : 0 < h) (hh1 : h < 1) (hβ : 0 < β)
    (hβ1 : β < 1) (hXH : InTriangle X hsA hsE (hsH h)) (hXF : InTriangle X hsA hsE (hsF (1 - β)))
    (hYH : InTriangle Y hsA hsE (hsH h)) (hYF : InTriangle Y hsA hsE (hsF (1 - β)))
    (hmin : 3 / 56 ≤ minTriangleArea ![hsA, hsE, hsH h, hsF (1 - β), X, Y])
    (hmin' : 3 / 56 ≤ minTriangleArea ![hsA, hsE, hsH h, hsF (1 - β), Y, X])
    (hdA : sarea X Y hsA < 0) : False := by
  have ht : (0 : ℝ) < 3 / 56 := by norm_num
  have hpos : 0 < minTriangleArea ![hsA, hsE, hsH h, hsF (1 - β), X, Y] := by linarith
  obtain ⟨hx0, hwX, hkX, hbX, hlX, hNX⟩ := t13_pt hh hh1 hβ hβ1 hXH hXF hmin
  obtain ⟨hy0, hwY, hkY, hbY, hlY, hNY⟩ := t13_pt hh hh1 hβ hβ1 hYH hYF hmin'
  have n1 : sarea hsA (hsH h) (hsF (1 - β)) < 0 := by
    simp only [sarea, hsA, hsH, hsF]; nlinarith
  have n2 : sarea hsE (hsH h) (hsF (1 - β)) < 0 := by
    simp only [sarea, hsE, hsH, hsF]; nlinarith
  have a1 := sarea_le_of_le_min_of_neg ht hmin 0 2 3 n1
  have a2 := sarea_le_of_le_min_of_neg ht hmin 1 2 3 n2
  simp only [Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one] at a1 a2
  simp only [sarea, hsA, hsE, hsH, hsF] at a1 a2
  have ab : ∀ V : Fin 6, V.val < 4 →
      (3 / 28 ≤ sarea X Y (![hsA, hsE, hsH h, hsF (1 - β), X, Y] V) ∨
        sarea X Y (![hsA, hsE, hsH h, hsF (1 - β), X, Y] V) ≤ -(3 / 28)) := by
    intro V hV
    have hne : sarea X Y (![hsA, hsE, hsH h, hsF (1 - β), X, Y] V) ≠ 0 :=
      sarea_ne_zero_of_min_pos hpos 4 5 V (by decide) (by intro h'; rw [← h'] at hV; simp at hV)
        (by intro h'; rw [← h'] at hV; simp at hV)
    rcases lt_or_gt_of_ne hne with g | g
    · right
      have : sarea X Y (![hsA, hsE, hsH h, hsF (1 - β), X, Y] V) ≤ -(2 * (3 / 56)) :=
        sarea_le_of_le_min_of_neg ht hmin 4 5 V g (by decide)
          (by intro h'; rw [← h'] at hV; simp at hV) (by intro h'; rw [← h'] at hV; simp at hV)
      linarith
    · left
      have : 2 * (3 / 56) ≤ sarea X Y (![hsA, hsE, hsH h, hsF (1 - β), X, Y] V) :=
        sarea_ge_of_le_min_of_pos ht hmin 4 5 V g (by decide)
          (by intro h'; rw [← h'] at hV; simp at hV) (by intro h'; rw [← h'] at hV; simp at hV)
      linarith
  have sA := ab 0 (by decide)
  have sZ := ab 1 (by decide)
  have sH := ab 2 (by decide)
  have sF := ab 3 (by decide)
  simp only [Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one] at sA sZ sH sF
  have hA' : sarea X Y hsA ≤ -(3 / 28) := by
    rcases sA with g | g
    · linarith
    · exact g
  have hsum := sarea_add_sarea_add_sarea (hsH h) (hsF (1 - β)) Y X
  have c1 : sarea (hsF (1 - β)) Y X = -sarea X Y (hsF (1 - β)) := by simp only [sarea]; ring
  have c2 : sarea Y (hsH h) X = sarea X Y (hsH h) := by simp only [sarea]; ring
  have eN : ∀ P : Point, sarea (hsH h) (hsF (1 - β)) P = -((1 - β) * h -
      (1 - β) * (P.2 - P.1) - (h - β) * P.1) := by intro P; simp only [sarea, hsH, hsF]; ring
  rw [c1, c2, eN X, eN Y] at hsum
  exact t13_core hh hh1 hβ hβ1 hx0 hwX hkX hbX hlX hNX hy0 hwY hkY hbY hlY hNY (by linarith)
    (by linarith) hA' sZ sH sF (by simp only [sarea, hsA]; ring)
    (by simp only [sarea, hsE]; ring) (by simp only [sarea, hsA, hsE, hsH]; ring)
    (by simp only [sarea, hsA, hsE, hsF]; ring) (by simp only [sarea, hsE, hsH]; ring)
    (by simp only [sarea, hsA, hsF]; ring) (by linarith)

/-- Let `A = (0,0)`, `Z = (1,1)`, `H = (0,h)`, `F = (f,1)`, `0 < h, f < 1`, and let two further
points `X, Y` lie strictly inside both triangles `AZH` and `AZF` (cell II). Then some triangle on
these six points has unsigned doubled area strictly less than `τ = 3/28`. -/
theorem minTriangleArea_lt_of_two_in_cellII {h f : ℝ} {X Y : Point} (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hXH : InTriangle X hsA hsE (hsH h)) (hXF : InTriangle X hsA hsE (hsF f))
    (hYH : InTriangle Y hsA hsE (hsH h)) (hYF : InTriangle Y hsA hsE (hsF f)) :
    minTriangleArea ![hsA, hsE, hsH h, hsF f, X, Y] < 3 / 56 := by
  obtain ⟨β, rfl⟩ : ∃ β, f = 1 - β := ⟨1 - f, by ring⟩
  have hβ : 0 < β := by linarith
  have hβ1 : β < 1 := by linarith
  by_contra hcon
  push Not at hcon
  have hcon' : 3 / 56 ≤ minTriangleArea ![hsA, hsE, hsH h, hsF (1 - β), Y, X] :=
    min_sub' hcon _ ![0, 1, 2, 3, 5, 4] ![0, 1, 2, 3, 5, 4] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> rfl)
  have hpos : 0 < minTriangleArea ![hsA, hsE, hsH h, hsF (1 - β), X, Y] := by linarith
  have hne : sarea X Y hsA ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 0
  rcases lt_or_gt_of_ne hne with g | g
  · exact t13_ordered hh hh1 hβ hβ1 hXH hXF hYH hYF hcon hcon' g
  · exact t13_ordered hh hh1 hβ hβ1 hYH hYF hXH hXF hcon' hcon
      (by rw [sarea_swap₁₂]; linarith)

/-- The affine map sending `D = (0,1)`, `R = (r,u)` and `W = DE ∩ BR = (0, -bu/(r-b))` to
`(0,0)`, `(1,1)`, `(0,1)`: `(x, y) ↦ (x/r, ((κ + u - 1)/(κr)) x - (y - 1)/κ)` with
`κ = (r - b + bu)/(r - b)`. -/
def supportMap (b r u : ℝ) : Point → Point :=
  let κ := (r - b + b * u) / (r - b)
  affineMap (1 / r) 0 ((κ + u - 1) / (κ * r)) (-1 / κ) 0 (1 / κ)

/-- For `0 < b < r`, `0 ≤ u`, `0 < λ < 1`: the map `supportMap b r u` sends `D, R, W` to
`(0,0), (1,1), (0,1)`, `E` to `(0, h)` and `B` to `(f, 1)` with `h = q(r-b)/(r-b+bu) ∈ (0,1)`,
`f = b/r ∈ (0,1)`; it divides every doubled area by `Λ = r(r-b+bu)/(r-b)`, the doubled area of
`DRW`, reversing orientation; and it maps the interiors of `DBR` and `DER` into those of `AZF` and
`AZH`. -/
theorem supportMap_spec {l b r u : ℝ} (hb : 0 < b) (hbr : b < r) (hu : 0 ≤ u) (hl : 0 < l)
    (hl1 : l < 1) :
    let φ := supportMap b r u
    let Λ := r * (r - b + b * u) / (r - b)
    φ ptD = hsA ∧ φ (r, u) = hsE ∧ φ (0, -(b * u) / (r - b)) = (0, 1) ∧
      φ (ptE l) = hsH ((1 - l) * (r - b) / (r - b + b * u)) ∧ φ (ptB b) = hsF (b / r) ∧
      0 < (1 - l) * (r - b) / (r - b + b * u) ∧ (1 - l) * (r - b) / (r - b + b * u) < 1 ∧
      0 < b / r ∧ b / r < 1 ∧
      (∀ X Y Z : Point, sarea (φ X) (φ Y) (φ Z) = -(sarea X Y Z / Λ)) ∧
      (∀ X : Point, InTriangle X ptD (ptB b) (r, u) →
        InTriangle (φ X) hsA hsE (hsF (b / r))) ∧
      (∀ X : Point, InTriangle X ptD (ptE l) (r, u) →
        InTriangle (φ X) hsA hsE (hsH ((1 - l) * (r - b) / (r - b + b * u)))) := by
  intro φ Λ
  have hrb : 0 < r - b := by linarith
  have hr : 0 < r := by linarith
  have hκ : 0 < r - b + b * u := by nlinarith [mul_nonneg hb.le hu]
  have hΛ : 0 < Λ := by simp only [Λ]; positivity
  have hrb' := hrb.ne'
  have hr' := hr.ne'
  have hκ' := hκ.ne'
  have hφ : ∀ X : Point, φ X = (X.1 / r, ((r - b + b * u) / (r - b) + u - 1) /
      ((r - b + b * u) / (r - b) * r) * X.1 - (X.2 - 1) / ((r - b + b * u) / (r - b))) := by
    intro X; simp only [φ, supportMap, affineMap]; ext
    · simp only; field_simp; ring
    · simp only; field_simp; ring
  have hs : ∀ X Y Z : Point, sarea (φ X) (φ Y) (φ Z) = -(sarea X Y Z / Λ) := by
    intro X Y Z
    simp only [φ, supportMap, sarea_affineMap, Λ]
    field_simp
    ring
  have eD : φ ptD = hsA := by rw [hφ]; simp only [ptD, hsA]; ext <;> simp
  have eR : φ (r, u) = hsE := by
    rw [hφ]; simp only [hsE]; ext
    · simp only; field_simp
    · simp only; field_simp; ring
  have eE : φ (ptE l) = hsH ((1 - l) * (r - b) / (r - b + b * u)) := by
    rw [hφ]; simp only [ptE, hsH]; ext
    · simp
    · simp only; field_simp; ring
  have eB : φ (ptB b) = hsF (b / r) := by
    rw [hφ]; simp only [ptB, hsF]; ext
    · rfl
    · simp only; field_simp; ring
  refine ⟨eD, eR, ?_, eE, eB, ?_, ?_, div_pos hb hr, (div_lt_one hr).2 hbr, hs, ?_, ?_⟩
  · rw [hφ]; ext
    · simp
    · simp only; field_simp; ring
  · apply div_pos (mul_pos (by linarith) hrb) hκ
  · rw [div_lt_one hκ]
    nlinarith [mul_nonneg hb.le hu, mul_pos hl hrb]
  · intro X hX
    obtain ⟨h1, h2, h3⟩ := hX
    refine ⟨?_, ?_, ?_⟩
    · rw [← eD, ← eR, hs]
      have : 0 < sarea (r, u) ptD X := h3
      rw [sarea_swap₁₂] at this
      have := div_neg_of_neg_of_pos (by linarith : sarea ptD (r, u) X < 0) hΛ
      linarith
    · rw [← eR, ← eB, hs]
      have : sarea (r, u) (ptB b) X < 0 := by rw [sarea_swap₁₂]; linarith
      have := div_neg_of_neg_of_pos this hΛ
      linarith
    · rw [← eB, ← eD, hs]
      have : sarea (ptB b) ptD X < 0 := by rw [sarea_swap₁₂]; linarith
      have := div_neg_of_neg_of_pos this hΛ
      linarith
  · intro X hX
    obtain ⟨h1, h2, h3⟩ := hX
    refine ⟨?_, ?_, ?_⟩
    · rw [← eD, ← eR, hs]
      have : 0 < sarea (r, u) ptD X := h3
      rw [sarea_swap₁₂] at this
      have := div_neg_of_neg_of_pos (by linarith : sarea ptD (r, u) X < 0) hΛ
      linarith
    · rw [← eR, ← eE, hs]
      have : sarea (r, u) (ptE l) X < 0 := by rw [sarea_swap₁₂]; linarith
      have := div_neg_of_neg_of_pos this hΛ
      linarith
    · rw [← eE, ← eD, hs]
      have : sarea (ptE l) ptD X < 0 := by rw [sarea_swap₁₂]; linarith
      have := div_neg_of_neg_of_pos this hΛ
      linarith

/-- If `g = r - b - (1-b)u > 13/16`, `r ≤ 1`, `0 < b < 1`, `0 ≤ u`, then `r - b > 13/16`,
`b + (1-b)u < 3/16`, `b < 3/16`, `bu < 9/832`, and the scale of `supportMap` satisfies
`Λ = r(r-b+bu)/(r-b) < 1 + 9/676 < 65/64`.

The hypothesis `b < 1` is needed: `b = 2`, `u = 10`, `r = 1` give `g = 9` but `r - b = -1`. -/
theorem supportMap_scale_bounds {b r u : ℝ} (hb : 0 < b) (hb1 : b < 1) (hu : 0 ≤ u) (hr : r ≤ 1)
    (hg : 13 / 16 < r - b - (1 - b) * u) :
    13 / 16 < r - b ∧ b + (1 - b) * u < 3 / 16 ∧ b < 3 / 16 ∧ b * u < 9 / 832 ∧
      r * (r - b + b * u) / (r - b) < 1 + 9 / 676 ∧ (1 + 9 / 676 : ℝ) < 65 / 64 := by
  have h1 : 0 ≤ (1 - b) * u := mul_nonneg (by linarith) hu
  have hrb : 13 / 16 < r - b := by linarith
  have h2 : b + (1 - b) * u < 3 / 16 := by linarith
  have hb3 : b < 3 / 16 := by linarith
  have h4 : b + 13 / 16 * u < 3 / 16 := by nlinarith
  have hbu : b * u < 9 / 832 := by nlinarith [sq_nonneg (b - 13 / 16 * u), mul_nonneg hb.le hu]
  refine ⟨hrb, h2, hb3, hbu, ?_, by norm_num⟩
  rw [div_lt_iff₀ (by linarith)]
  have hbu0 : 0 ≤ b * u := mul_nonneg hb.le hu
  nlinarith [mul_le_mul_of_nonneg_right hr hbu0]

/-! ### The triangular right five-point hull is excluded -/

/-- A point of a closed triangle that is a strict minimum of a linear function over the three
vertices (unless equal to one of them) is one of the vertices. -/
theorem vertex_of_extreme {p A1 A2 A3 : Point} (c1 c2 : ℝ)
    (hp : p ∈ convexHull ℝ ({A1, A2, A3} : Set Point))
    (h : ∀ A ∈ ({A1, A2, A3} : Set Point), A = p ∨ c1 * p.1 + c2 * p.2 < c1 * A.1 + c2 * A.2) :
    p = A1 ∨ p = A2 ∨ p = A3 := by
  by_contra hcon
  push Not at hcon
  obtain ⟨n1, n2, n3⟩ := hcon
  have g1 := (h A1 (Or.inl rfl)).resolve_left (Ne.symm n1)
  have g2 := (h A2 (Or.inr (Or.inl rfl))).resolve_left (Ne.symm n2)
  have g3 := (h A3 (Or.inr (Or.inr rfl))).resolve_left (Ne.symm n3)
  obtain ⟨a, b, c, ha, hb, hc, habc, hpe⟩ := exists_bary_of_mem_convexHull hp
  have e1 : p.1 = a * A1.1 + b * A2.1 + c * A3.1 := by rw [hpe]
  have e2 : p.2 = a * A1.2 + b * A2.2 + c * A3.2 := by rw [hpe]
  set φ := c1 * p.1 + c2 * p.2 with hφ
  have hval : φ = a * (c1 * A1.1 + c2 * A1.2) + b * (c1 * A2.1 + c2 * A2.2) +
      c * (c1 * A3.1 + c2 * A3.2) := by rw [hφ, e1, e2]; ring
  have hsum : a * φ + b * φ + c * φ = φ := by rw [← add_mul, ← add_mul, habc, one_mul]
  rcases eq_or_lt_of_le ha with ha0 | ha0
  · rcases eq_or_lt_of_le hb with hb0 | hb0
    · have hc1 : c = 1 := by linarith
      rw [← ha0, ← hb0, hc1] at hval
      linarith
    · linarith [mul_lt_mul_of_pos_left g2 hb0, mul_le_mul_of_nonneg_left g1.le ha,
        mul_le_mul_of_nonneg_left g3.le hc]
  · linarith [mul_lt_mul_of_pos_left g1 ha0, mul_le_mul_of_nonneg_left g2.le hb,
      mul_le_mul_of_nonneg_left g3.le hc]

/-- Two prescribed vertices among three: the triangle is `B, C, Y` for one of them. -/
theorem three_sub {B C X1 X2 X3 : Point} (hBC : B ≠ C) (hB : B = X1 ∨ B = X2 ∨ B = X3)
    (hC : C = X1 ∨ C = X2 ∨ C = X3) :
    ∃ Y, (Y = X1 ∨ Y = X2 ∨ Y = X3) ∧ ({X1, X2, X3} : Set Point) ⊆ {B, C, Y} := by
  rcases hB with rfl | rfl | rfl <;> rcases hC with rfl | rfl | rfl
  all_goals first
    | exact absurd rfl hBC
    | exact ⟨_, Or.inl rfl, by intro x hx; simp only [Set.mem_insert_iff,
        Set.mem_singleton_iff] at hx ⊢; tauto⟩
    | exact ⟨_, Or.inr (Or.inl rfl), by intro x hx; simp only [Set.mem_insert_iff,
        Set.mem_singleton_iff] at hx ⊢; tauto⟩
    | exact ⟨_, Or.inr (Or.inr rfl), by intro x hx; simp only [Set.mem_insert_iff,
        Set.mem_singleton_iff] at hx ⊢; tauto⟩

/-- In a closed triangle `B, Y, C` (with `Y` right of `BC`), a further point of a configuration
of positive least area is strictly inside. -/
theorem inTri_of_hullBC {n : ℕ} {V : Fin n → Point} (hpos : 0 < minTriangleArea V) {i0 i1 iY iZ : Fin n}
    (h01 : i0 ≠ i1) (h0Y : i0 ≠ iY) (h0Z : i0 ≠ iZ) (h1Y : i1 ≠ iY) (h1Z : i1 ≠ iZ)
    (hYZ : iY ≠ iZ) (hY : sarea (V i0) (V i1) (V iY) < 0)
    (hZ : V iZ ∈ convexHull ℝ ({V i0, V i1, V iY} : Set Point)) :
    InTriangle (V iZ) (V i0) (V iY) (V i1) := by
  have hset : ({V i0, V i1, V iY} : Set Point) = {V i0, V iY, V i1} := by
    ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
  rw [hset] at hZ
  have hΔ : 0 < sarea (V i0) (V iY) (V i1) := by linarith [sarea_swap₂₃ (V i0) (V i1) (V iY)]
  obtain ⟨g1, g2, g3, -⟩ := sarea_nonneg_of_mem_convexHull hΔ.le hZ
  exact ⟨lt_of_le_of_ne g3 (Ne.symm (sarea_ne_zero_of_min_pos hpos i0 iY iZ h0Y hYZ h0Z)),
    lt_of_le_of_ne g1 (Ne.symm (sarea_ne_zero_of_min_pos hpos iY i1 iZ (Ne.symm h1Y) h1Z hYZ)),
    lt_of_le_of_ne g2 (Ne.symm (sarea_ne_zero_of_min_pos hpos i1 i0 iZ (Ne.symm h01) h0Z h1Z))⟩

/-- A triangular hull of the five right points `B, C, R, S, T` is `BXC` for one of `R, S, T`,
with the other two strictly inside. -/
theorem tri5_apex {b : ℝ} {R S T : Point} (hb : 0 < b) (hb1 : b < 1) (hRsq : R ∈ unitSquare)
    (hSsq : S ∈ unitSquare) (hTsq : T ∈ unitSquare) (hR : IsRight b R) (hS : IsRight b S)
    (hT : IsRight b T) (hpos : 0 < minTriangleArea ![ptB b, ptC, R, S, T])
    (htri : TriangularHull ![ptB b, ptC, R, S, T]) :
    (InTriangle S (ptB b) R ptC ∧ InTriangle T (ptB b) R ptC) ∨
    (InTriangle R (ptB b) S ptC ∧ InTriangle T (ptB b) S ptC) ∨
    (InTriangle R (ptB b) T ptC ∧ InTriangle S (ptB b) T ptC) := by
  obtain ⟨i, j, k, hall⟩ := htri
  set V : Fin 5 → Point := ![ptB b, ptC, R, S, T] with hV
  have hrt : ∀ X : Point, X ∈ unitSquare → IsRight b X → b < X.1 ∧ X.2 < 1 := by
    intro X hX hXr
    obtain ⟨h1, h2, h3, h4⟩ := hX
    simp only [IsRight, sarea, ptB, ptC] at hXr
    constructor <;> nlinarith [mul_nonneg (sub_nonneg.2 hb1.le) h3]
  have hx : ∀ m, V m = ptB b ∨ (ptB b).1 < (V m).1 := by
    intro m; fin_cases m
    · left; rfl
    · right; show b < 1; exact hb1
    · right; exact (hrt R hRsq hR).1
    · right; exact (hrt S hSsq hS).1
    · right; exact (hrt T hTsq hT).1
  have hy : ∀ m, V m = ptC ∨ -(V m).2 > -(ptC).2 := by
    intro m; fin_cases m
    · right; show -(0 : ℝ) > -1; norm_num
    · left; rfl
    · right; show -R.2 > -1; linarith [(hrt R hRsq hR).2]
    · right; show -S.2 > -1; linarith [(hrt S hSsq hS).2]
    · right; show -T.2 > -1; linarith [(hrt T hTsq hT).2]
  have hrange : ∀ A ∈ ({V i, V j, V k} : Set Point), ∃ m, A = V m := by
    intro A hA
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hA
    rcases hA with h | h | h
    · exact ⟨i, h⟩
    · exact ⟨j, h⟩
    · exact ⟨k, h⟩
  have hB := vertex_of_extreme (p := ptB b) 1 0 (hall 0) (by
    intro A hA
    obtain ⟨m, rfl⟩ := hrange A hA
    rcases hx m with h | h
    · exact Or.inl h
    · right; simp only [one_mul, zero_mul, add_zero]; exact h)
  have hC := vertex_of_extreme (p := ptC) 0 (-1) (hall 1) (by
    intro A hA
    obtain ⟨m, rfl⟩ := hrange A hA
    rcases hy m with h | h
    · exact Or.inl h
    · right; simp only [zero_mul, zero_add]; linarith)
  have hBC : ptB b ≠ ptC := by
    intro h; simp only [ptB, ptC, Prod.mk.injEq] at h; linarith [h.2]
  obtain ⟨Y, hYV, hsub⟩ := three_sub hBC hB hC
  have hall' : ∀ m, V m ∈ convexHull ℝ ({V 0, V 1, Y} : Set Point) :=
    fun m => convexHull_mono hsub (hall m)
  obtain ⟨mY, rfl⟩ : ∃ mY, Y = V mY := by
    rcases hYV with h | h | h
    · exact ⟨i, h⟩
    · exact ⟨j, h⟩
    · exact ⟨k, h⟩
  have hBCR : sarea (V 0) (V 1) (V 2) < 0 := hR
  have hBCS : sarea (V 0) (V 1) (V 3) < 0 := hS
  have hBCT : sarea (V 0) (V 1) (V 4) < 0 := hT
  fin_cases mY
  · exfalso
    obtain ⟨a', _, _, _, _, _, _, h, _, _⟩ := sarea_of_mem_convexHull (hall' 2)
    change sarea (V 1) (V 0) (V 2) = a' * sarea (V 0) (V 1) (V 0) at h
    have z : sarea (V 0) (V 1) (V 0) = 0 := by unfold sarea; ring
    rw [z, mul_zero] at h
    rw [sarea_swap₁₂] at h
    linarith
  · exfalso
    obtain ⟨_, _, c', _, _, _, _, _, _, h⟩ := sarea_of_mem_convexHull (hall' 2)
    change sarea (V 0) (V 1) (V 2) = c' * sarea (V 0) (V 1) (V 1) at h
    have z : sarea (V 0) (V 1) (V 1) = 0 := by unfold sarea; ring
    rw [z, mul_zero] at h
    linarith
  · left
    exact ⟨inTri_of_hullBC hpos (iY := 2) (iZ := 3) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide) hBCR (hall' 3),
      inTri_of_hullBC hpos (iY := 2) (iZ := 4) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide) hBCR (hall' 4)⟩
  · right; left
    exact ⟨inTri_of_hullBC hpos (iY := 3) (iZ := 2) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide) hBCS (hall' 2),
      inTri_of_hullBC hpos (iY := 3) (iZ := 4) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide) hBCS (hall' 4)⟩
  · right; right
    exact ⟨inTri_of_hullBC hpos (iY := 4) (iZ := 2) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide) hBCT (hall' 2),
      inTri_of_hullBC hpos (iY := 4) (iZ := 3) (by decide) (by decide) (by decide)
        (by decide) (by decide) (by decide) hBCT (hall' 3)⟩

/-- `minTriangleArea_lt_A₀_of_triangular_right` with fixed labels (`P, S` on the `C` side of `DR`, `Q, T` on the `B` side):
`supportMap` and `minTriangleArea_lt_of_two_in_cellII`. -/
theorem t14_labeled {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hQ' : sarea ptD R Q < 0) (hT' : sarea ptD R T < 0) : False := by
  obtain ⟨-, ⟨-, -, qQB, -, qTB⟩, ⟨-, -, qQ, -, qT⟩, -, -⟩ := t12_quads hu hmin
  obtain ⟨hg, hbq, hδpos, hδs, hδ3, hrb, hu1'⟩ := ur_basic hu hmin
  obtain ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq, hTsq⟩, hP, hQ, hR, hS, hT⟩ := hu
  have sw : ∀ X : Point, sarea ptD R X < 0 → 0 < sarea R ptD X := fun X h => by
    linarith [sarea_swap₁₂ ptD R X]
  have iQB : InTriangle Q ptD (ptB b) (R.1, R.2) := ⟨qQB.1, qQB.2.1, sw Q hQ'⟩
  have iTB : InTriangle T ptD (ptB b) (R.1, R.2) := ⟨qTB.1, qTB.2.1, sw T hT'⟩
  have iQE : InTriangle Q ptD (ptE l) (R.1, R.2) := ⟨qQ.1, qQ.2.1, sw Q hQ'⟩
  have iTE : InTriangle T ptD (ptE l) (R.1, R.2) := ⟨qT.1, qT.2.1, sw T hT'⟩
  obtain ⟨eD, eR, -, eE, eB, hh0, hh1, hf0, hf1, -, hDBR, hDER⟩ :=
    supportMap_spec (r := R.1) (u := R.2) hb hrb hu0 hl hl1
  have h13 := minTriangleArea_lt_of_two_in_cellII hh0 hh1 hf0 hf1 (hDER Q iQE) (hDBR Q iQB) (hDER T iTE) (hDBR T iTB)
  set r := R.1 with hr
  set u := R.2 with hu
  have hrb' : 0 < r - b := by linarith
  have hr0' : 0 < r := by linarith
  have hκ : 0 < r - b + b * u := by nlinarith [mul_nonneg hb.le hu0]
  -- the image configuration
  have e6 : ![hsA, hsE, hsH ((1 - l) * (r - b) / (r - b + b * u)), hsF (b / r),
      supportMap b r u Q, supportMap b r u T] =
      supportMap b r u ∘ ![ptD, (r, u), ptE l, ptB b, Q, T] := by
    funext i; fin_cases i
    · exact eD.symm
    · exact eR.symm
    · exact eE.symm
    · exact eB.symm
    · rfl
    · rfl
  have hscale : minTriangleArea (supportMap b r u ∘ ![ptD, (r, u), ptE l, ptB b, Q, T]) =
      (r - b) / (r * (r - b + b * u)) * minTriangleArea ![ptD, (r, u), ptE l, ptB b, Q, T] := by
    simp only [supportMap]
    rw [minTriangleArea_affineMap]
    congr 1
    rw [zero_mul, sub_zero]
    have hκ' : 0 < (r - b + b * u) / (r - b) := div_pos hκ hrb'
    rw [show 1 / r * (-1 / ((r - b + b * u) / (r - b))) = -((r - b) / (r * (r - b + b * u))) by
      field_simp, abs_neg, abs_of_pos (by positivity)]
  have h6 : A₀ ≤ minTriangleArea ![ptD, (r, u), ptE l, ptB b, Q, T] :=
    min_sub' hmin _ ![0, 6, 2, 3, 5, 8] ![0, 0, 2, 3, 0, 4, 1, 0, 5] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> rfl)
  rw [e6, hscale] at h13
  have hg' : 13 / 16 < r - b - (1 - b) * u := by
    have : sarea (ptB b) R ptC = r - b - (1 - b) * u := by
      simp only [sarea, ptB, ptC, hr, hu]; ring
    linarith [tc_Ktwo_bounds.1]
  obtain ⟨-, -, -, -, hΛ, -⟩ := supportMap_scale_bounds hb hb1 hu0 hr1 hg'
  have hΛ' : r * (r - b + b * u) / (r - b) < 65 / 64 := by linarith
  have hA := A₀_bounds.1
  have hpos : 0 < (r - b) / (r * (r - b + b * u)) := by positivity
  have h1 : (r - b) / (r * (r - b + b * u)) * A₀ < 3 / 56 :=
    lt_of_le_of_lt (mul_le_mul_of_nonneg_left h6 hpos.le) h13
  have h2 : (r - b) / (r * (r - b + b * u)) * (r * (r - b + b * u) / (r - b)) = 1 := by
    field_simp
  have h3 : A₀ < 3 / 56 * (r * (r - b + b * u) / (r - b)) := by
    have := mul_lt_mul_of_pos_right h1 (show 0 < r * (r - b + b * u) / (r - b) by positivity)
    rw [mul_comm ((r - b) / (r * (r - b + b * u))) A₀, mul_assoc, h2, mul_one] at this
    linarith
  nlinarith

/-- The relabelling `R, S, T ↦ T, R, S` of the right points. -/
def rotPerm : Equiv.Perm (Fin 9) where
  toFun := ![0, 1, 2, 3, 4, 5, 8, 6, 7]
  invFun := ![0, 1, 2, 3, 4, 5, 7, 8, 6]
  left_inv := by decide
  right_inv := by decide

/-- `UnbalancedTriRight` is symmetric in the central pair and in `S, T`. -/
theorem ur_swapPQ {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T) :
    UnbalancedTriRight l b Q P R S T := by
  obtain ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, hRsq, hSsq, hTsq⟩, hP, hQ, hR, hS, hT⟩ := hu
  exact ⟨⟨hb, hb1, hl, hl1, hQsq, hPsq, hRsq, hSsq, hTsq⟩, hQ, hP, hR, hS, hT⟩

theorem ur_swapST {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T) :
    UnbalancedTriRight l b P Q R T S := by
  obtain ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, hRsq, hSsq, hTsq⟩, hP, hQ, hR, hS, hT⟩ := hu
  exact ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, hRsq, hTsq, hSsq⟩, hP, hQ, hR, hT, hS⟩

/-- The unbalanced triangular-right branch is excluded at least area `A₀`. -/
theorem t14_core {l b : ℝ} {P Q R S T : Point} (hu : UnbalancedTriRight l b P Q R S T)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b P Q R S T)) : False := by
  obtain ⟨-, -, hPQ, hST⟩ := t12_sectors hu hmin
  have mPQ : minTriangleArea (typeIIConfig l b Q P R S T) =
      minTriangleArea (typeIIConfig l b P Q R S T) := by
    rw [show typeIIConfig l b Q P R S T = typeIIConfig l b P Q R S T ∘ Equiv.swap 4 5 by
      funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
  have mST : ∀ P' Q' : Point, minTriangleArea (typeIIConfig l b P' Q' R T S) =
      minTriangleArea (typeIIConfig l b P' Q' R S T) := by
    intro P' Q'
    rw [show typeIIConfig l b P' Q' R T S = typeIIConfig l b P' Q' R S T ∘ Equiv.swap 7 8 by
      funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
  rcases hPQ with ⟨-, hQ'⟩ | ⟨hP', -⟩ <;> rcases hST with ⟨-, hT'⟩ | ⟨hS', -⟩
  · exact t14_labeled hu hmin hQ' hT'
  · exact t14_labeled (ur_swapST hu) (by rw [mST]; exact hmin) hQ' hS'
  · exact t14_labeled (ur_swapPQ hu) (by rw [mPQ]; exact hmin) hP' hT'
  · exact t14_labeled (ur_swapST (ur_swapPQ hu)) (by rw [mST, mPQ]; exact hmin) hP' hS'

/-- No competitive Type-II configuration of count `(1,2,3)` has a triangular right five-point
hull: with `P, Q` central and `R, S, T` right, if `B, C, R, S, T` have triangular hull then some
actual triangle has area less than `A₀`. The proof combines `unbalancedTriRight_structure`, `t12_sectors`,
`supportMap_spec`, `supportMap_scale_bounds` and `minTriangleArea_lt_of_two_in_cellII`. -/
theorem minTriangleArea_lt_A₀_of_triangular_right {l b : ℝ} {P Q R S T : Point} (hd : TypeIIData l b P Q R S T)
    (hP : IsCentral b P) (hQ : IsCentral b Q) (hR : IsRight b R) (hS : IsRight b S)
    (hT : IsRight b T) (htri : TriangularHull ![ptB b, ptC, R, S, T]) :
    minTriangleArea (typeIIConfig l b P Q R S T) < A₀ := by
  by_contra hcon
  push Not at hcon
  have hpos : 0 < minTriangleArea (typeIIConfig l b P Q R S T) := lt_of_lt_of_le A₀_pos hcon
  have h5 : 0 < minTriangleArea ![ptB b, ptC, R, S, T] :=
    lt_of_lt_of_le hpos (min_sub' le_rfl _ ![3, 1, 6, 7, 8] ![0, 1, 0, 0, 0, 0, 2, 3, 4]
      (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl))
  obtain ⟨hb, hb1, hl, hl1, hPsq, hQsq, hRsq, hSsq, hTsq⟩ := hd
  rcases tri5_apex hb hb1 hRsq hSsq hTsq hR hS hT h5 htri with ⟨h1, h2⟩ | ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact t14_core ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, hRsq, hSsq, hTsq⟩, hP, hQ, hR, h1, h2⟩ hcon
  · refine t14_core (R := S) (S := R) (T := T)
      ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, hSsq, hRsq, hTsq⟩, hP, hQ, hS, h1, h2⟩ ?_
    rw [show typeIIConfig l b P Q S R T = typeIIConfig l b P Q R S T ∘ Equiv.swap 6 7 by
      funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
    exact hcon
  · refine t14_core (R := T) (S := R) (T := S)
      ⟨⟨hb, hb1, hl, hl1, hPsq, hQsq, hTsq, hRsq, hSsq⟩, hP, hQ, hT, h1, h2⟩ ?_
    rw [show typeIIConfig l b P Q T R S = typeIIConfig l b P Q R S T ∘ rotPerm by
      funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
    exact hcon

end Heilbronn.Nine.TypeIICompletion
