module

public import Heilbronn.Nine.TypeII.TypeIIBalanced
public import Heilbronn.Nine.TypeII.TypeIICompletion.Capacity
public import Heilbronn.Nine.TypeII.TypeIICompletion.ParameterBound
public import Heilbronn.Nine.Hulls.FourInteriorQuadrilaterals

/-! # The balanced row: diagonal cut, empty lower ear, quadrilateral right hull

The starting point is the placement forced by `TypeIIBalanced.balancedPlacement_or_swap`
(`BalancedPlacement l b L P Q R S`: `L` inside `DBE` above `CE`, `P` central above `CE`, `Q`
central below `CE`, `R, S` right points, `0 < b ≤ 1/2`). In the triangular-right alternative the
right hull vertex is called `R = (r, u)` and `S` lies strictly inside `BCR`
(`InTriangle S (ptB b) R ptC`).

* `Q_snd_lt_fst` (not used later): `Q_y < Q_x`;
* `QS_outside_EBR_inside_ECR`: the lower ear `EBR` contains neither `Q` nor `S`; both are inside `ECR`;
* `quad_DERC_sectors`: the eight points other than `B` have hull `D, E, R, C` with interior points
  `L, P, Q, S`, the two diagonal splits, the bounds `qr ≥ Ks`, `1 - u ≥ Ks`, and (by
  `FourInteriorQuadrilaterals.ncard_inQuad_le_four`) one point in each diagonal sector, `L` at `DE` and `P`
  at `CD`;
* `FinalPlacement`: the sole assignment left by `minTriangleArea_lt_A₀_of_S_at_ER` (`Q` at `ER`, `S` at `RC`), the
  setting of `minTriangleArea_lt_of_Q_above_ES_LR`, `minTriangleArea_lt_of_Q_above_ES_below_LR` and `BalancedRightMixed`;
* `triangularHull_BCRS`: the right set `B, C, R, S` is not a quadrilateral; in the form used by `minTriangleArea_lt_A₀_of_balanced_counts`,
  `inTriangle_S_or_R_of_balancedRow`: `S` is strictly inside `BRC` or `R` strictly inside `BSC`.

Thresholds: `Q_snd_lt_fst` and `triangularHull_BCRS` assume least area at least `A₀`; `QS_outside_EBR_inside_ECR` works at doubled
threshold `s = 7/64`; `quad_DERC_sectors` uses the global capacity theorems at `A₀`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeIICompletion

open Heilbronn.Nine.TypeII Heilbronn.Nine.TypeIIBalanced

/-- The sole remaining balanced placement after `minTriangleArea_lt_A₀_of_S_at_ER`: the `BalancedPlacement`, `S` strictly
inside the right triangle `BCR`, and the four interior points of the quadrilateral `D, E, R, C` in
its four diagonal sectors, `L` at `DE`, `P` at `CD`, `Q` at `ER`, `S` at `RC`. -/
def FinalPlacement (l b : ℝ) (L P Q R S : Point) : Prop :=
  BalancedPlacement l b L P Q R S ∧ InTriangle S (ptB b) R ptC ∧
    DiagSector ptD (ptE l) R ptC L ∧ DiagSector ptC ptD (ptE l) R P ∧
    DiagSector (ptE l) R ptC ptD Q ∧ DiagSector R ptC ptD (ptE l) S

/-- In the balanced placement at least area `A₀`, the lower central point satisfies `Q_y < Q_x`:
the closed triangle `conv{D, C, (0,0)}` already contains `E, L, P`, so by `card_mem_triangle_le_three` it cannot
also contain `Q`. Not used later. -/
theorem Q_snd_lt_fst {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    Q.2 < Q.1 := by
  classical
  obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, hRsq, hSsq⟩, -, hL, hLce, hP, hPce, -⟩ := hpl
  by_contra hcon
  push Not at hcon
  set Pc := typeIIConfig l b L P Q R S
  have hsq : ∀ k, Pc k ∈ unitSquare := by
    intro k; fin_cases k
    · show ((0 : ℝ), (1 : ℝ)) ∈ unitSquare; simp [unitSquare]
    · show ((1 : ℝ), (1 : ℝ)) ∈ unitSquare; simp [unitSquare]
    · show ((0 : ℝ), l) ∈ unitSquare; simp only [unitSquare, Set.mem_ofPred_eq]
      exact ⟨le_refl _, by norm_num, hl.le, hl1.le⟩
    · show (b, (0 : ℝ)) ∈ unitSquare; simp only [unitSquare, Set.mem_ofPred_eq]
      exact ⟨hb.le, hb1.le, le_refl _, by norm_num⟩
    · exact hLsq
    · exact hPsq
    · exact hQsq
    · exact hRsq
    · exact hSsq
  have hset : ({Pc 0, Pc 1, (0, 0)} : Set Point) = {(0, 1), (0, 0), (1, 1)} := by
    ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff, Pc, typeIIConfig,
      Matrix.cons_val_zero, Matrix.cons_val_one]; tauto
  have hmem : ∀ X : Point, 0 ≤ X.1 → X.1 ≤ X.2 → X.2 ≤ 1 →
      X ∈ convexHull ℝ ({Pc 0, Pc 1, (0, 0)} : Set Point) := by
    intro X h1 h2 h3
    rw [hset]
    refine mem_convexHull_of_sarea (by unfold sarea; norm_num) ?_ ?_ ?_ <;>
      (unfold sarea; simp) <;> linarith
  have harea : triangleArea (Pc 0) (Pc 1) (0, 0) ≤ 1 / 2 := by
    simp only [Pc, typeIIConfig, Matrix.cons_val_zero, Matrix.cons_val_one, triangleArea_eq]
    unfold sarea; norm_num
  have h1 := card_mem_triangle_le_three Pc hsq hmin 0 1 (by decide) (0, 0) harea
  have habove : ∀ X : Point, X ∈ unitSquare → 0 < sarea (ptE l) ptC X → X.1 ≤ X.2 := by
    intro X hX hce
    obtain ⟨-, hx1, -, -⟩ := hX
    simp only [sarea, ptE, ptC] at hce
    nlinarith
  have hsub : ({2, 4, 5, 6} : Finset (Fin 9)) ⊆ Finset.univ.filter fun k =>
      k ≠ 0 ∧ k ≠ 1 ∧ Pc k ∈ convexHull ℝ ({Pc 0, Pc 1, (0, 0)} : Set Point) := by
    intro k hk
    simp only [Finset.mem_insert, Finset.mem_singleton] at hk
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    rcases hk with rfl | rfl | rfl | rfl
    · refine ⟨by decide, by decide, hmem _ (le_refl _) hl.le hl1.le⟩
    · exact ⟨by decide, by decide, hmem _ hLsq.1 (habove L hLsq hLce) hLsq.2.2.2⟩
    · exact ⟨by decide, by decide, hmem _ hPsq.1 (habove P hPsq hPce) hPsq.2.2.2⟩
    · exact ⟨by decide, by decide, hmem _ hQsq.1 hcon hQsq.2.2.2⟩
  have := Finset.card_le_card hsub
  rw [show ({2, 4, 5, 6} : Finset (Fin 9)).card = 4 by rfl] at this
  omega

/-! ### Facts of the balanced placement -/

/-- The anchor-pair facts of the balanced placement used repeatedly: with `s/2 ≤` least area,
`q ≥ K s` (two-interior bound in `DCE`), `[DEB] = bq ≥ 3s`, and the edge signs. -/
theorem bp_basic {l b s : ℝ} {L P Q R S : Point} (hs : 0 < s)
    (hpl : BalancedPlacement l b L P Q R S)
    (hmin : s / 2 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    Ktwo * s ≤ 1 - l ∧ 3 * s ≤ b * (1 - l) := by
  obtain ⟨⟨hb, hb1, hl, hl1, -⟩, -, hL, hLce, hP, hPce, -⟩ := hpl
  have hs2 : 0 < s / 2 := by positivity
  constructor
  · have h5 : s / 2 ≤ minTriangleArea ![ptD, ptE l, ptC, L, P] :=
      min_sub' hmin _ ![0, 2, 1, 4, 5] ![0, 2, 1, 0, 3, 4, 0, 0, 0] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> rfl)
    have := tc_two_int hs (pos_L hb hl1 hL hLce).2 (pos_P hb hl1 hP hPce) h5
    simp only [sarea, ptD, ptE, ptC] at this; linarith
  · have h1 := sarea_ge_of_le_min_of_pos hs2 hmin 0 2 4 hL.1
    have h2 := sarea_ge_of_le_min_of_pos hs2 hmin 2 3 4 hL.2.1
    have h3 := sarea_ge_of_le_min_of_pos hs2 hmin 3 0 4 hL.2.2
    have := sarea_add_sarea_add_sarea ptD (ptE l) (ptB b) L
    simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero] at h1 h2 h3
    have e : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp only [sarea, ptD, ptE, ptB]; ring
    linarith

/-- At `s = 7/64`, when `S` is inside `BRC`: `[BRC] ≥ 3s`, and the ear `EBR` has doubled area
`0 < δ < 3s`. -/
theorem ear_EBR_bounds {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    3 * (7 / 64) ≤ sarea (ptB b) R ptC ∧ sarea (ptE l) (ptB b) R < 3 * (7 / 64) ∧
      0 < sarea (ptE l) (ptB b) R := by
  have hmin' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (typeIIConfig l b L P Q R S) := by
    norm_num; exact hmin
  obtain ⟨hK, -⟩ := bp_basic (by norm_num) hpl hmin'
  obtain ⟨⟨hb, hb1, hl, hl1, -, -, -, ⟨hr0, hr1, hu0, hu1⟩, -⟩, hb2, -, -, -, -, -, -, hR, -⟩ := hpl
  have hs2 : (0 : ℝ) < 7 / 128 := by norm_num
  have h1 := sarea_ge_of_le_min_of_pos hs2 hmin 3 7 8 hS.1
  have h2 := sarea_ge_of_le_min_of_pos hs2 hmin 7 1 8 hS.2.1
  have h3 := sarea_ge_of_le_min_of_pos hs2 hmin 1 3 8 hS.2.2
  simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one]
    at h1 h2 h3
  have hg : 3 * (7 / 64) ≤ sarea (ptB b) R ptC := by
    have := sarea_add_sarea_add_sarea (ptB b) R ptC S; linarith
  refine ⟨hg, ?_, ?_⟩
  · simp only [sarea, ptB, ptC, ptE] at hg hR ⊢
    have hKb := tc_Ktwo_bounds
    have h3 := tc_sqrt3_sq
    have hw : 0 < 1 - b := by linarith
    -- `K w² + 3 ≥ (K + 2) w`
    have hsq : Ktwo * (1 - b) ^ 2 + 3 ≥ (Ktwo + 2) * (1 - b) := by
      have : Ktwo * (1 - b) ^ 2 + 3 - (Ktwo + 2) * (1 - b) =
          ((1 + Real.sqrt 3) * (1 - b) - Real.sqrt 3) ^ 2 := by
        unfold Ktwo; ring_nf; rw [h3]; ring
      nlinarith [sq_nonneg ((1 + Real.sqrt 3) * (1 - b) - Real.sqrt 3)]
    have hwu : (1 - b) * R.2 ≤ (1 - b) - 3 * (7 / 64) := by nlinarith
    have hδ : (1 - b) * ((b - 0) * (R.2 - l) - (0 - l) * (R.1 - 0)) ≤
        b * ((1 - b) - 3 * (7 / 64)) + l * (1 - b) ^ 2 := by
      nlinarith [mul_le_mul_of_nonneg_left hwu hb.le,
        mul_le_mul_of_nonneg_left (show R.1 - b ≤ 1 - b by linarith)
          (mul_nonneg hl.le hw.le)]
    have hl' : l * (1 - b) ^ 2 ≤ (1 - Ktwo * (7 / 64)) * (1 - b) ^ 2 :=
      mul_le_mul_of_nonneg_right (by linarith) (sq_nonneg _)
    by_contra hcon
    push Not at hcon
    nlinarith [mul_le_mul_of_nonneg_left hcon hw.le]
  · simp only [IsRight, sarea, ptB, ptC, ptE] at hR ⊢
    have : 0 < R.1 - b := by nlinarith
    nlinarith [mul_pos hl this, mul_nonneg hb.le hu0]

/-- A point whose three sub-triangles of a counterclockwise ear of doubled area `< 3s` are all
nonzero, and at least `s` when positive, is not in the closed ear. -/
theorem not_mem_ear {E B R X : Point} {s : ℝ} (hδ : sarea E B R < 3 * s)
    (hpos : 0 < sarea E B R)
    (h1 : 0 < sarea B R X → s ≤ sarea B R X) (h2 : 0 < sarea R E X → s ≤ sarea R E X)
    (h3 : 0 < sarea E B X → s ≤ sarea E B X)
    (n1 : sarea B R X ≠ 0) (n2 : sarea R E X ≠ 0) (n3 : sarea E B X ≠ 0) :
    X ∉ convexHull ℝ ({E, B, R} : Set Point) := by
  intro hX
  obtain ⟨g1, g2, g3, -⟩ := sarea_nonneg_of_mem_convexHull hpos.le hX
  have := sarea_add_sarea_add_sarea E B R X
  have p1 := lt_of_le_of_ne g1 (Ne.symm n1)
  have p2 := lt_of_le_of_ne g2 (Ne.symm n2)
  have p3 := lt_of_le_of_ne g3 (Ne.symm n3)
  linarith [h1 p1, h2 p2, h3 p3]

/-- `[CER] ≥ 0` for a right point `R` of the square. -/
theorem sarea_CER_nonneg {l b : ℝ} {R : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l)
    (hl1 : l < 1) (hR : IsRight b R) (hr1 : R.1 ≤ 1) : 0 ≤ sarea ptC (ptE l) R := by
  simp only [IsRight, sarea, ptC, ptE, ptB] at hR ⊢
  have hw : 0 < 1 - b := by linarith
  have key : (1 - b) * (l + (1 - l) * R.1 - R.2) ≥ (1 - R.1) * (l + b * (1 - l)) := by
    nlinarith
  have : 0 ≤ (1 - R.1) * (l + b * (1 - l)) := mul_nonneg (by linarith) (by nlinarith)
  have h2 : 0 ≤ l + (1 - l) * R.1 - R.2 := by
    by_contra hcon; push Not at hcon; nlinarith [mul_pos hw (show 0 < -(l + (1 - l) * R.1 - R.2) by linarith)]
  nlinarith

/-- In the balanced placement with triangular right hull (`S` strictly inside `BCR`,
`R = (r,u)`), at doubled threshold `s = 7/64`: neither `Q` nor `S` lies in the closed triangle
`EBR`, whose doubled area is `δ = bu + λ(r-b) ≤ 1 - (K-1)s < 3s`; both are strictly inside
`ECR`. The bound `q ≥ Ks` used here is `twoInteriorPointLemma` for `L, P ∈ DCE`. -/
theorem QS_outside_EBR_inside_ECR {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    Q ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      S ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) ∧
      InTriangle Q (ptE l) R ptC ∧ InTriangle S (ptE l) R ptC := by
  obtain ⟨hg, hδ, hδpos⟩ := ear_EBR_bounds hpl hS hmin
  obtain ⟨⟨hb, hb1, hl, hl1, -, -, -, ⟨hr0, hr1, hu0, hu1⟩, -⟩, hb2, hL, hLce, hP, hPce, hQ,
    hQce, hR, hSr⟩ := hpl
  have hpos : 0 < minTriangleArea (typeIIConfig l b L P Q R S) :=
    lt_of_lt_of_le (by norm_num) hmin
  have hs2 : (0 : ℝ) < 7 / 128 := by norm_num
  have hδ' : sarea (ptE l) (ptB b) R < 3 * (2 * (7 / 128)) := by linarith
  have hQn : Q ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) :=
    not_mem_ear hδ' hδpos (fun h => sarea_ge_of_le_min_of_pos hs2 hmin 3 7 6 h)
      (fun h => sarea_ge_of_le_min_of_pos hs2 hmin 7 2 6 h) (fun h => sarea_ge_of_le_min_of_pos hs2 hmin 2 3 6 h)
      (sarea_ne_zero_of_min_pos hpos 3 7 6) (sarea_ne_zero_of_min_pos hpos 7 2 6)
      (sarea_ne_zero_of_min_pos hpos 2 3 6)
  have hSn : S ∉ convexHull ℝ ({ptE l, ptB b, R} : Set Point) :=
    not_mem_ear hδ' hδpos (fun h => sarea_ge_of_le_min_of_pos hs2 hmin 3 7 8 h)
      (fun h => sarea_ge_of_le_min_of_pos hs2 hmin 7 2 8 h) (fun h => sarea_ge_of_le_min_of_pos hs2 hmin 2 3 8 h)
      (sarea_ne_zero_of_min_pos hpos 3 7 8) (sarea_ne_zero_of_min_pos hpos 7 2 8)
      (sarea_ne_zero_of_min_pos hpos 2 3 8)
  refine ⟨hQn, hSn, ?_, ?_⟩
  · have hBRQ : 0 < sarea (ptB b) R Q := by
      refine tc_pos_of_inTri hQ ?_ ?_ ?_ ?_ <;> simp only [IsRight, sarea, ptD, ptB, ptC] at hR hg ⊢ <;>
        nlinarith
    have hEBQ : 0 < sarea (ptE l) (ptB b) Q := by
      refine tc_pos_of_inTri hQ ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptB, ptC, ptE] <;>
        nlinarith
    have hRCQ : 0 < sarea R ptC Q := by
      refine tc_pos_of_inTri hQ ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptB, ptC] at hg ⊢ <;>
        nlinarith
    have hERQ : 0 < sarea (ptE l) R Q := by
      by_contra hcon; push Not at hcon
      exact hQn (mem_convexHull_of_sarea hδpos hBRQ.le
        (by rw [sarea_swap₁₂]; linarith) hEBQ.le)
    exact ⟨hERQ, hRCQ, by rw [sarea_swap₁₂]; linarith⟩
  · have hEBS : 0 < sarea (ptE l) (ptB b) S := by
      refine tc_pos_of_inTri hS ?_ ?_ ?_ ?_ <;> simp only [sarea, ptB, ptC, ptE] at hδpos ⊢ <;>
        nlinarith
    have hERS : 0 < sarea (ptE l) R S := by
      by_contra hcon; push Not at hcon
      exact hSn (mem_convexHull_of_sarea hδpos hS.1.le
        (by rw [sarea_swap₁₂]; linarith) hEBS.le)
    have hCER := sarea_CER_nonneg hb hb1 hl hl1 hR hr1
    have hCES : 0 < sarea ptC (ptE l) S := by
      refine tc_pos_of_inTri hS ?_ hCER ?_ ?_ <;> simp only [sarea, ptB, ptC, ptE] at hCER ⊢ <;>
        nlinarith
    exact ⟨hERS, hS.2.1, hCES⟩

/-! ### Quadrilaterals -/

/-- A point inside the triangle `W X Z` of a convex quadrilateral `W X Y Z` is inside it. -/
theorem inQuad_of_tri1 {W X Y Z P : Point} (hq : ConvexQuad W X Y Z)
    (hP : InTriangle P W X Z) : InQuad W X Y Z P := by
  obtain ⟨h1, h2, h3, h4⟩ := hq
  have z1 : sarea X Y X = 0 := by unfold sarea; ring
  have z2 : sarea Y Z Z = 0 := by unfold sarea; ring
  have c1 : sarea X Y W = sarea W X Y := sarea_cycle W X Y
  have c2 : sarea Y Z X = sarea X Y Z := sarea_cycle X Y Z
  refine ⟨hP.1, ?_, ?_, hP.2.2⟩
  · exact tc_pos_of_inTri hP (by linarith) (by linarith) (by linarith) (by linarith)
  · exact tc_pos_of_inTri hP (by linarith) (by linarith) (by linarith) (by linarith)

/-- A point inside the triangle `X Y Z` of a convex quadrilateral `W X Y Z` is inside it. -/
theorem inQuad_of_tri2 {W X Y Z P : Point} (hq : ConvexQuad W X Y Z)
    (hP : InTriangle P X Y Z) : InQuad W X Y Z P := by
  obtain ⟨h1, h2, h3, h4⟩ := hq
  have z1 : sarea W X X = 0 := by unfold sarea; ring
  have z2 : sarea Z W Z = 0 := by unfold sarea; ring
  have c1 : sarea W X Z = sarea Z W X := sarea_cycle Z W X
  have c2 : sarea Z W Y = sarea Y Z W := sarea_cycle Y Z W
  refine ⟨?_, hP.1, hP.2.1, ?_⟩
  · exact tc_pos_of_inTri hP (by linarith) (by linarith) (by linarith) (by linarith)
  · exact tc_pos_of_inTri hP (by linarith) (by linarith) (by linarith) (by linarith)

/-- A set of natural cardinality one cannot contain two distinct elements. -/
theorem ncard_one_ne {α : Type*} {T : Set α} (h : T.ncard = 1) {a c : α} (ha : a ∈ T)
    (hc : c ∈ T) (hac : a ≠ c) : False := by
  obtain ⟨x, rfl⟩ := Set.ncard_eq_one.1 h
  rw [Set.mem_singleton_iff] at ha hc
  exact hac (ha.trans hc.symm)

/-- The nine points of the balanced placement lie in the square. -/
theorem config_sq {l b : ℝ} {L P Q R S : Point} (hd : TypeIIData l b L P Q R S) :
    ∀ k, typeIIConfig l b L P Q R S k ∈ unitSquare := by
  obtain ⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, hRsq, hSsq⟩ := hd
  intro k; fin_cases k
  · show ((0 : ℝ), (1 : ℝ)) ∈ unitSquare; simp [unitSquare]
  · show ((1 : ℝ), (1 : ℝ)) ∈ unitSquare; simp [unitSquare]
  · show ((0 : ℝ), l) ∈ unitSquare; simp only [unitSquare, Set.mem_ofPred_eq]
    exact ⟨le_refl _, by norm_num, hl.le, hl1.le⟩
  · show (b, (0 : ℝ)) ∈ unitSquare; simp only [unitSquare, Set.mem_ofPred_eq]
    exact ⟨hb.le, hb1.le, le_refl _, by norm_num⟩
  · exact hLsq
  · exact hPsq
  · exact hQsq
  · exact hRsq
  · exact hSsq

-- Threshold: most steps of `quad_DERC_sectors` only need every doubled actual triangle area to exceed
-- s = 7/64, but its proof uses the global actual-triangle capacity theorem
-- (`ThreeInteriorTriangles.triangleCapacityTwo_of_A₀_le`) and `FourInteriorQuadrilaterals.ncard_inQuad_le_four`,
-- which hold for competitive configurations (least area `≥ A₀`); it is stated at `A₀`.
open Classical in
/-- In the triangular-right branch of the balanced placement, at least area `A₀`: the eight
points other than `B` have convex hull the quadrilateral `D, E, R, C`, with interior points
`L, P, Q, S`; the diagonal `EC` puts `L, P` on one side and `Q, S` on the other; each side of
`DR` contains exactly two of the four points; `qr ≥ Ks` and `1 - u ≥ Ks` with `s = 7/64`; `L` is
on the `E` side of `DR`; and (by `FourInteriorQuadrilaterals.ncard_inQuad_le_four`) exactly one point lies in
each diagonal sector, `L` at `DE`, `P` at `CD`, and `Q, S` at `ER, RC` in some order.

Stated at least area `A₀`; see the threshold comment above. -/
theorem quad_DERC_sectors {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    ConvexQuad ptD (ptE l) R ptC ∧
      InQuad ptD (ptE l) R ptC L ∧ InQuad ptD (ptE l) R ptC P ∧
      InQuad ptD (ptE l) R ptC Q ∧ InQuad ptD (ptE l) R ptC S ∧
      0 < sarea (ptE l) ptC L ∧ 0 < sarea (ptE l) ptC P ∧
      sarea (ptE l) ptC Q < 0 ∧ sarea (ptE l) ptC S < 0 ∧
      (Finset.univ.filter fun m : Fin 4 => sarea ptD R (![L, P, Q, S] m) < 0).card = 2 ∧
      Ktwo * (7 / 64) ≤ (1 - l) * R.1 ∧ Ktwo * (7 / 64) ≤ 1 - R.2 ∧
      sarea ptD R L < 0 ∧
      DiagSector ptD (ptE l) R ptC L ∧ DiagSector ptC ptD (ptE l) R P ∧
      ((DiagSector (ptE l) R ptC ptD Q ∧ DiagSector R ptC ptD (ptE l) S) ∨
        (DiagSector (ptE l) R ptC ptD S ∧ DiagSector R ptC ptD (ptE l) Q)) := by
  classical
  have h128 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S) :=
    le_trans A₀_bounds.1.le hmin
  have hpos : 0 < minTriangleArea (typeIIConfig l b L P Q R S) :=
    lt_of_lt_of_le (by norm_num) h128
  have hs2 : (0 : ℝ) < 7 / 128 := by norm_num
  obtain ⟨-, -, hQin, hSin⟩ := QS_outside_EBR_inside_ECR hpl hS h128
  obtain ⟨hg, hδ, hδpos⟩ := ear_EBR_bounds hpl hS h128
  have hsq := config_sq hpl.1
  obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, hb2, hL, hLce, hP,
    hPce, hQ, hQce, hR, hSr⟩ := hpl
  have hLDEC := (pos_L hb hl1 hL hLce).2
  have hPDEC := pos_P hb hl1 hP hPce
  have hRr : b + (1 - b) * R.2 < R.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hR; linarith
  have hu1' : R.2 < 1 := by nlinarith
  have hrb : b < R.1 := by nlinarith
  have hERC : 0 < sarea (ptE l) R ptC := inTri_pos hQin
  have hDER : 0 < sarea ptD (ptE l) R := by simp only [sarea, ptD, ptE]; nlinarith
  have hRCD : 0 < sarea R ptC ptD := by simp only [sarea, ptD, ptC]; nlinarith
  have hCDE : 0 < sarea ptC ptD (ptE l) := by simp only [sarea, ptD, ptC, ptE]; nlinarith
  have hconv : ConvexQuad ptD (ptE l) R ptC := ⟨hDER, hERC, hRCD, hCDE⟩
  have qL := inQuad_of_tri1 hconv hLDEC
  have qP := inQuad_of_tri1 hconv hPDEC
  have qQ := inQuad_of_tri2 hconv hQin
  have qS := inQuad_of_tri2 hconv hSin
  -- `L` is on the `E` side of `DR`
  have hDRL : sarea ptD R L < 0 := by
    refine tc_neg_of_inTri hL ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptE, ptB] <;> nlinarith
  -- the four-interior theorem
  set Pc := typeIIConfig l b L P Q R S with hPc
  have hcq : QuadrilateralHull.ConvexQuad (Pc 0) (Pc 2) (Pc 7) (Pc 1) := hconv
  obtain ⟨hle4, h4⟩ := FourInteriorQuadrilaterals.ncard_inQuad_le_four hsq hmin hcq
  have hge4 : 4 ≤ Set.ncard {m | QuadrilateralHull.InQuad (Pc m) (Pc 0) (Pc 2) (Pc 7) (Pc 1)} := by
    have hsub : ((({4, 5, 6, 8} : Finset (Fin 9))) : Set (Fin 9)) ⊆
        {m | QuadrilateralHull.InQuad (Pc m) (Pc 0) (Pc 2) (Pc 7) (Pc 1)} := by
      intro m hm
      simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
        Set.mem_singleton_iff] at hm
      rcases hm with rfl | rfl | rfl | rfl
      · exact qL
      · exact qP
      · exact qQ
      · exact qS
    have := Set.ncard_le_ncard hsub
    rwa [Set.ncard_coe_finset] at this
  obtain ⟨sDE, sER, sRC, sCD⟩ := h4 (le_antisymm hle4 hge4)
  -- `L` in the sector at `DE`, hence `P` on the `C` side of `DR`
  have hLs : (4 : Fin 9) ∈ {m | FourInteriorQuadrilaterals.InSector (Pc m) (Pc 0) (Pc 2) (Pc 7)
      (Pc 1)} := by
    refine ⟨⟨qL.1, qL.2.1, ?_⟩, hLDEC⟩
    show 0 < sarea R ptD L
    linarith [sarea_swap₁₂ ptD R L]
  have hDRP : 0 < sarea ptD R P := by
    have h0 : sarea ptD R P ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 7 5
    rcases lt_or_gt_of_ne h0 with h | h
    · exfalso
      refine ncard_one_ne sDE hLs (c := (5 : Fin 9)) ?_ (by decide)
      refine ⟨⟨qP.1, qP.2.1, ?_⟩, hPDEC⟩
      show 0 < sarea R ptD P
      linarith [sarea_swap₁₂ ptD R P]
    · exact h
  -- `Q` and `S`
  have hER : ∀ (k : Fin 9) (X : Point), Pc k = X → InTriangle X (ptE l) R ptC →
      InQuad ptD (ptE l) R ptC X → sarea ptD R X < 0 →
      k ∈ {m | FourInteriorQuadrilaterals.InSector (Pc m) (Pc 2) (Pc 7) (Pc 1) (Pc 0)} := by
    intro k X hk hX qX hneg
    show FourInteriorQuadrilaterals.InSector (Pc k) (Pc 2) (Pc 7) (Pc 1) (Pc 0)
    rw [hk]
    refine ⟨hX, hX.1, ?_, qX.1⟩
    show 0 < sarea R ptD X
    linarith [sarea_swap₁₂ ptD R X]
  have hRC : ∀ (k : Fin 9) (X : Point), Pc k = X → InTriangle X (ptE l) R ptC →
      InQuad ptD (ptE l) R ptC X → 0 < sarea ptD R X →
      k ∈ {m | FourInteriorQuadrilaterals.InSector (Pc m) (Pc 7) (Pc 1) (Pc 0) (Pc 2)} := by
    intro k X hk hX qX hp
    show FourInteriorQuadrilaterals.InSector (Pc k) (Pc 7) (Pc 1) (Pc 0) (Pc 2)
    rw [hk]
    refine ⟨⟨hX.2.1, qX.2.2.2, ?_⟩, ⟨hX.2.1, hX.2.2, hX.1⟩⟩
    show 0 < sarea ptD R X
    exact hp
  have hQ0 : sarea ptD R Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 7 6
  have hS0 : sarea ptD R S ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 7 8
  have hsplit : (sarea ptD R Q < 0 ∧ 0 < sarea ptD R S) ∨
      (sarea ptD R S < 0 ∧ 0 < sarea ptD R Q) := by
    rcases lt_or_gt_of_ne hQ0 with hq | hq <;> rcases lt_or_gt_of_ne hS0 with hs | hs
    · exact absurd (ncard_one_ne sER (hER 6 Q rfl hQin qQ hq) (hER 8 S rfl hSin qS hs)
        (by decide)) id
    · exact Or.inl ⟨hq, hs⟩
    · exact Or.inr ⟨hs, hq⟩
    · exact absurd (ncard_one_ne sRC (hRC 6 Q rfl hQin qQ hq) (hRC 8 S rfl hSin qS hs)
        (by decide)) id
  -- the two-interior costs
  have hcostE : ∀ X : Point, (X = Q ∨ X = S) → InTriangle X (ptE l) R ptC →
      InQuad ptD (ptE l) R ptC X → sarea ptD R X < 0 →
      Ktwo * (7 / 64) ≤ (1 - l) * R.1 := by
    intro X hXQS hX qX hneg
    have hLDER : InTriangle L ptD (ptE l) R :=
      ⟨qL.1, qL.2.1, by linarith [sarea_swap₁₂ ptD R L]⟩
    have hXDER : InTriangle X ptD (ptE l) R :=
      ⟨qX.1, qX.2.1, by linarith [sarea_swap₁₂ ptD R X]⟩
    have h5 : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptE l, R, L, X] := by
      rcases hXQS with rfl | rfl
      · exact min_sub' (by norm_num; exact h128) _ ![0, 2, 7, 4, 6]
          ![0, 0, 1, 0, 3, 0, 4, 2, 0] (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
      · exact min_sub' (by norm_num; exact h128) _ ![0, 2, 7, 4, 8]
          ![0, 0, 1, 0, 3, 0, 0, 2, 4] (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
    have := tc_two_int (by norm_num) hLDER hXDER h5
    simp only [sarea, ptD, ptE] at this; linarith
  have hcostC : ∀ X : Point, (X = Q ∨ X = S) → InTriangle X (ptE l) R ptC →
      InQuad ptD (ptE l) R ptC X → 0 < sarea ptD R X →
      Ktwo * (7 / 64) ≤ 1 - R.2 := by
    intro X hXQS hX qX hp
    have hPDRC : InTriangle P ptD R ptC := ⟨hDRP, qP.2.2.1, qP.2.2.2⟩
    have hXDRC : InTriangle X ptD R ptC := ⟨hp, hX.2.1, qX.2.2.2⟩
    have h5 : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, R, ptC, P, X] := by
      rcases hXQS with rfl | rfl
      · exact min_sub' (by norm_num; exact h128) _ ![0, 7, 1, 5, 6]
          ![0, 2, 0, 0, 0, 3, 4, 1, 0] (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
      · exact min_sub' (by norm_num; exact h128) _ ![0, 7, 1, 5, 8]
          ![0, 2, 0, 0, 0, 3, 0, 1, 4] (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
    have := tc_two_int (by norm_num) hPDRC hXDRC h5
    simp only [sarea, ptD, ptC] at this; linarith
  have hECQ : sarea (ptE l) ptC Q < 0 := by linarith [hQin.2.2, sarea_swap₁₂ (ptE l) ptC Q]
  have hECS : sarea (ptE l) ptC S < 0 := by linarith [hSin.2.2, sarea_swap₁₂ (ptE l) ptC S]
  have sL : DiagSector ptD (ptE l) R ptC L := ⟨qL.1, hLce, by linarith [sarea_swap₁₂ ptD R L]⟩
  have sP : DiagSector ptC ptD (ptE l) R P := ⟨qP.2.2.2, hDRP, hPce⟩
  have secE : ∀ X : Point, InTriangle X (ptE l) R ptC → sarea ptD R X < 0 →
      DiagSector (ptE l) R ptC ptD X := fun X hX hn =>
    ⟨hX.1, by linarith [sarea_swap₁₂ ptD R X], hX.2.2⟩
  have secC : ∀ X : Point, InTriangle X (ptE l) R ptC → 0 < sarea ptD R X →
      DiagSector R ptC ptD (ptE l) X := fun X hX hp => ⟨hX.2.1, hX.2.2, hp⟩
  refine ⟨hconv, qL, qP, qQ, qS, hLce, hPce, hECQ, hECS, ?_, ?_, ?_, hDRL, sL, sP, ?_⟩
  · rcases hsplit with ⟨hq, hs⟩ | ⟨hs, hq⟩
    · rw [Finset.card_eq_two]
      refine ⟨0, 2, by decide, ?_⟩
      ext m; fin_cases m <;> simp [hDRL, not_lt.2 hDRP.le, hq, not_lt.2 hs.le]
    · rw [Finset.card_eq_two]
      refine ⟨0, 3, by decide, ?_⟩
      ext m; fin_cases m <;> simp [hDRL, not_lt.2 hDRP.le, hs, not_lt.2 hq.le]
  · rcases hsplit with ⟨hq, -⟩ | ⟨hs, -⟩
    · exact hcostE Q (Or.inl rfl) hQin qQ hq
    · exact hcostE S (Or.inr rfl) hSin qS hs
  · rcases hsplit with ⟨-, hs⟩ | ⟨-, hq⟩
    · exact hcostC S (Or.inr rfl) hSin qS hs
    · exact hcostC Q (Or.inl rfl) hQin qQ hq
  · rcases hsplit with ⟨hq, hs⟩ | ⟨hs, hq⟩
    · exact Or.inl ⟨secE Q hQin hq, secC S hSin hs⟩
    · exact Or.inr ⟨secE S hSin hs, secC Q hQin hq⟩

/-! ### The right hull is a triangle -/

/-- Exchanging the two central points does not change the least area. -/
theorem tc_min_swapPQ (l b : ℝ) (L P Q R S : Point) :
    minTriangleArea (typeIIConfig l b L Q P R S) =
      minTriangleArea (typeIIConfig l b L P Q R S) := by
  rw [show typeIIConfig l b L Q P R S = typeIIConfig l b L P Q R S ∘ Equiv.swap 5 6 by
    funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]

/-- Exchanging the two right points does not change the least area. -/
theorem tc_min_swapRS (l b : ℝ) (L P Q R S : Point) :
    minTriangleArea (typeIIConfig l b L P Q S R) =
      minTriangleArea (typeIIConfig l b L P Q R S) := by
  rw [show typeIIConfig l b L P Q S R = typeIIConfig l b L P Q R S ∘ Equiv.swap 7 8 by
    funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]

/-- Monotonicity in `c`: the conditions `c > s`, `w(c-s)² ≥ 4cbs` persist when `c` is
increased. -/
theorem N_mono {b w s c C : ℝ} (hw : 0 < w) (hs : 0 < s) (hb : 0 < b) (hcs : s < c)
    (hcC : c ≤ C) (h : 4 * c * b * s ≤ w * (c - s) ^ 2) : 4 * C * b * s ≤ w * (C - s) ^ 2 := by
  have h1 : 4 * b * s ≤ w * (c - s) := by
    have : 4 * (c - s) * b * s ≤ w * (c - s) ^ 2 := by nlinarith [mul_pos hb hs]
    have hcs' : 0 < c - s := by linarith
    nlinarith
  nlinarith [mul_nonneg (sub_nonneg.2 hcC) (show 0 ≤ w * (C + c - 2 * s) - 4 * b * s by
    nlinarith)]

/-- The scalar core of `triangularHull_BCRS`, at `s = 7/64`: the conditions `0 < b ≤ 1/2`,
`13/16 ≤ q ≤ 1`, `bq ≥ 3s`, `c = 1 - (1-b)q > s`, `4cbs ≤ (1-b)(c-s)²` and the bounds on `q` of
`q_lower_bounds_of_b_le` (`b ≤ 3/7 → q ≥ 7/8`, `b ≤ 9/20 → q > 27/32`) are inconsistent. -/
theorem false_of_ear_quadratic {b q c : ℝ} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hq1 : q ≤ 1)
    (hq : 13 / 16 ≤ q) (hbq : 3 * (7 / 64) ≤ b * q) (hc : c = 1 - (1 - b) * q)
    (hcs : 7 / 64 < c) (h10 : 4 * c * b * (7 / 64) ≤ (1 - b) * (c - 7 / 64) ^ 2)
    (h25b : b ≤ 3 / 7 → 7 / 8 ≤ q) (h25c : b ≤ 9 / 20 → 27 / 32 < q) : False := by
  have hw : 0 < 1 - b := by linarith
  have hs : (0 : ℝ) < 7 / 64 := by norm_num
  rcases le_or_gt (7 / 8) q with hq78 | hq78
  · rcases le_or_gt (3 / 8) b with hb38 | hb38
    · have := N_mono hw hs hb hcs (C := (1 + 7 * b) / 8) (by rw [hc]; nlinarith) h10
      have hv : 0 ≤ b - 3 / 8 := by linarith
      nlinarith [mul_nonneg (mul_nonneg hv hv) hv, mul_nonneg hv hv]
    · have hb0 : 21 / 64 ≤ b := by nlinarith
      have := N_mono hw hs hb hcs (C := 1 - 3 * (7 / 64) * (1 - b) / b)
        (by
          rw [hc]
          have : 3 * (7 / 64) * (1 - b) / b ≤ (1 - b) * q := by
            rw [div_le_iff₀ hb]; nlinarith
          linarith) h10
      have key : 0 < 8464 * b ^ 3 - 9948 * b ^ 2 + 3717 * b - 441 := by
        have hv : 0 ≤ 3 / 8 - b := by linarith
        have hv' : 3 / 8 - b ≤ 3 / 64 := by linarith
        nlinarith [mul_nonneg hv (show 0 ≤ 3 / 64 - (3 / 8 - b) by linarith),
          mul_nonneg (mul_nonneg hv hv) (show 0 ≤ 3 / 64 - (3 / 8 - b) by linarith)]
      have e : 4096 * b ^ 2 * (4 * (1 - 3 * (7 / 64) * (1 - b) / b) * b * (7 / 64) -
          (1 - b) * ((1 - 3 * (7 / 64) * (1 - b) / b) - 7 / 64) ^ 2) =
          8464 * b ^ 3 - 9948 * b ^ 2 + 3717 * b - 441 := by
        field_simp; ring
      nlinarith [mul_pos (mul_pos hb hb) (show (0 : ℝ) < 4096 by norm_num)]
  · have hb37 : 3 / 7 < b := by
      by_contra hcon; push Not at hcon; linarith [h25b hcon]
    rcases le_or_gt (27 / 32) q with hq27 | hq27
    · have := N_mono hw hs hb hcs (C := 1 - 27 / 32 * (1 - b)) (by rw [hc]; nlinarith) h10
      have hu : 0 ≤ 7 * b - 3 := by linarith
      nlinarith [mul_nonneg (mul_nonneg hu hu) hu, mul_nonneg hu hu]
    · have hb920 : 9 / 20 < b := by
        by_contra hcon; push Not at hcon; linarith [h25c hcon]
      have := N_mono hw hs hb hcs (C := 1 - 13 / 16 * (1 - b)) (by rw [hc]; nlinarith) h10
      have hu : 0 ≤ 20 * b - 9 := by linarith
      nlinarith [mul_nonneg (mul_nonneg hu hu) hu, mul_nonneg hu hu]

/-- The lower-vertex inequality `TypeIIBalanced.lower_vertex_bounds` after the map
`(x,y) ↦ ((x-b)/w, y)`, for the right hull vertex `X` adjacent to `B`. -/
theorem lower_vertex_step {b : ℝ} {X Y : Point} (_hb : 0 < b) (hb1 : b < 1)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hXr : IsRight b X) (hYr : IsRight b Y)
    (hq : ConvexQuad (ptB b) X Y ptC)
    (hmin4 : 7 / 128 ≤ minTriangleArea ![ptB b, X, Y, ptC]) :
    (X.1 - b) / (1 - b) < 1 ∧
      7 / 64 / (1 - b) ≤ ((X.1 - b) / (1 - b) - X.2) * (1 - (X.1 - b) / (1 - b)) := by
  have hw : 0 < 1 - b := by linarith
  set w := 1 - b with hwdef
  set φ : Point → Point := affineMap (1 / w) 0 0 1 (-b / w) 0 with hφ
  have hφB : φ (ptB b) = (0, 0) := by
    simp only [hφ, affineMap, ptB]; ext <;> simp; field_simp; ring
  have hφC : φ ptC = (1, 1) := by
    simp only [hφ, affineMap, ptC]; ext <;> simp; field_simp; ring
  have hφs : ∀ U V W : Point, sarea (φ U) (φ V) (φ W) = (1 / w) * sarea U V W := by
    intro U V W; simp only [hφ, sarea_affineMap]; ring
  have hφ1 : ∀ U : Point, (φ U).1 = (U.1 - b) / w := by
    intro U; simp only [hφ, affineMap]; field_simp; ring
  have hφ2 : ∀ U : Point, (φ U).2 = U.2 := by
    intro U; simp only [hφ, affineMap]; ring
  have hright : ∀ U : Point, U ∈ unitSquare → IsRight b U →
      0 ≤ (φ U).2 ∧ (φ U).2 ≤ (φ U).1 ∧ (φ U).1 ≤ 1 := by
    intro U hU hUr
    obtain ⟨h1, h2, h3, h4⟩ := hU
    simp only [IsRight, sarea, ptB, ptC] at hUr
    rw [hφ1, hφ2]
    refine ⟨h3, ?_, ?_⟩
    · rw [le_div_iff₀ hw]; nlinarith
    · rw [div_le_iff₀ hw]; linarith
  have hconv : ConvexQuad (0, 0) (φ X) (φ Y) (1, 1) := by
    rw [← hφB, ← hφC]
    obtain ⟨h1, h2, h3, h4⟩ := hq
    refine ⟨?_, ?_, ?_, ?_⟩ <;> rw [hφs] <;> positivity
  have hmin' : 7 / 64 / w / 2 ≤ minTriangleArea ![((0, 0) : Point), φ X, φ Y, (1, 1)] := by
    have e : ![((0, 0) : Point), φ X, φ Y, (1, 1)] =
        affineMap (1 / w) 0 0 1 (-b / w) 0 ∘ ![ptB b, X, Y, ptC] := by
      funext i; fin_cases i
      · exact hφB.symm
      · rfl
      · rfl
      · exact hφC.symm
    rw [e, minTriangleArea_affineMap]
    rw [show |1 / w * 1 - 0 * 0| = 1 / w by
      rw [mul_one, mul_zero, sub_zero, abs_of_pos (by positivity)]]
    rw [div_div, div_le_iff₀ (by positivity)]
    have : 1 / w * minTriangleArea ![ptB b, X, Y, ptC] * (w * 2) =
        2 * minTriangleArea ![ptB b, X, Y, ptC] := by field_simp
    rw [this]; linarith
  obtain ⟨-, -, hx1, hlv, -⟩ := TypeIIBalanced.lower_vertex_bounds (a := 7 / 64 / w)
    (by positivity) (hright X hX hXr) (hright Y hY hYr) hconv hmin'
  rw [hφ1, hφ2] at hlv
  rw [hφ1] at hx1
  exact ⟨hx1, hlv⟩

/-- The scalar step: the lower-vertex inequality and the actual ear `EBX` give `c > s` and
`4cbs ≤ w(c-s)²` for `w = 1 - b`, `c = 1 - wq`, `q = 1 - λ`, `s = 7/64`. -/
theorem ear_quadratic_of_lowerVertex {b l x' y : ℝ} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l)
    (hx1 : x' < 1) (hlv : 7 / 64 / (1 - b) ≤ (x' - y) * (1 - x'))
    (hA : 7 / 64 ≤ b * y + l * (1 - b) * x') :
    7 / 64 < 1 - (1 - b) * (1 - l) ∧
      4 * (1 - (1 - b) * (1 - l)) * b * (7 / 64) ≤
        (1 - b) * ((1 - (1 - b) * (1 - l)) - 7 / 64) ^ 2 := by
  have hw : 0 < 1 - b := by linarith
  set w := 1 - b with hwdef
  set t := 1 - x' with ht
  have htpos : 0 < t := by linarith
  have hB : 7 / 64 ≤ w * (x' - y) * t := by
    have := mul_le_mul_of_nonneg_left hlv hw.le
    rwa [mul_div_cancel₀ _ hw.ne', ← mul_assoc] at this
  set c := 1 - w * (1 - l) with hc
  have hcbl : c = b + l * w := by rw [hc, hwdef]; ring
  have K : c * w * t ^ 2 - (c - 7 / 64) * w * t + b * (7 / 64) ≤ 0 := by
    have h1 := mul_le_mul_of_nonneg_left hA (show 0 ≤ w * t by positivity)
    have h2 := mul_le_mul_of_nonneg_left hB hb.le
    rw [hcbl]
    have : x' = 1 - t := by rw [ht]; ring
    rw [this] at h1 h2
    nlinarith
  have hc0 : 0 < c := by rw [hcbl]; positivity
  have hcs : 7 / 64 < c := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_pos (mul_pos hc0 hw) (mul_pos htpos htpos),
      mul_pos hb (show (0:ℝ) < 7/64 by norm_num),
      mul_nonneg (mul_nonneg hw.le htpos.le) (show 0 ≤ 7 / 64 - c by linarith)]
  refine ⟨hcs, ?_⟩
  have hcpos : 0 < c := by linarith
  have : 0 ≤ w * (w * (c - 7 / 64) ^ 2 - 4 * c * b * (7 / 64)) := by
    nlinarith [sq_nonneg (2 * c * w * t - (c - 7 / 64) * w), mul_pos hcpos hw]
  by_contra hcon; push Not at hcon
  nlinarith [mul_pos hw (show 0 < 4 * c * b * (7 / 64) - w * (c - 7 / 64) ^ 2 by linarith)]

/-- A quadrilateral right hull `B, X, Y, C` (with `X` adjacent to `B`) gives the inequality of
`ear_quadratic_of_lowerVertex` and, with the forced placement and `q_lower_bounds_of_b_le`, a contradiction (`false_of_ear_quadratic`). -/
theorem quad_excluded {l b : ℝ} {L P X Y : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hl : 0 < l)
    (hl1 : l < 1) (hL : InTriangle L ptD (ptE l) (ptB b)) (hLce : 0 < sarea (ptE l) ptC L)
    (hP : IsCentral b P) (hPce : 0 < sarea (ptE l) ptC P)
    (hmin6 : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P])
    (hK : Ktwo * (7 / 64) ≤ 1 - l) (hbq : 3 * (7 / 64) ≤ b * (1 - l))
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hXr : IsRight b X) (hYr : IsRight b Y)
    (hq : ConvexQuad (ptB b) X Y ptC)
    (hmin4 : 7 / 128 ≤ minTriangleArea ![ptB b, X, Y, ptC])
    (hEBX : 7 / 64 ≤ sarea (ptE l) (ptB b) X) : False := by
  obtain ⟨hx1, hlv⟩ := lower_vertex_step hb (by linarith) hX hY hXr hYr hq hmin4
  have hA : 7 / 64 ≤ b * X.2 + l * (1 - b) * ((X.1 - b) / (1 - b)) := by
    have e : sarea (ptE l) (ptB b) X = b * X.2 + l * (1 - b) * ((X.1 - b) / (1 - b)) := by
      have : (1 - b) ≠ 0 := by linarith
      simp only [sarea, ptE, ptB]; field_simp; ring
    linarith
  obtain ⟨hcs, h10⟩ := ear_quadratic_of_lowerVertex hb (by linarith) hl hx1 hlv hA
  obtain ⟨-, h25b, h25c⟩ := q_lower_bounds_of_b_le hb (by linarith) hl hl1 hL hLce hP hPce hmin6
  have hKs := tc_Ks_gt
  exact false_of_ear_quadratic hb hb2 (by linarith) (by linarith) hbq rfl hcs h10 h25b h25c

/-- `triangularHull_BCRS` from the forced placement: the right hull is the triangle `BRC` with `S` inside,
or `BSC` with `R` inside. -/
theorem inTriangle_S_or_R_of_placement {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    InTriangle S (ptB b) R ptC ∨ InTriangle R (ptB b) S ptC := by
  have h128 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S) :=
    le_trans A₀_bounds.1.le hmin
  have hpos : 0 < minTriangleArea (typeIIConfig l b L P Q R S) :=
    lt_of_lt_of_le (by norm_num) h128
  obtain ⟨hK, hbq⟩ := bp_basic (s := 7 / 64) (by norm_num) hpl (by norm_num; exact h128)
  obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, hRsq, hSsq⟩, hb2, hL, hLce, hP, hPce, hQ, hQce,
    hR, hS⟩ := hpl
  have hmin6 : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P] :=
    min_sub' h128 _ ![0, 1, 2, 3, 4, 5] ![0, 1, 2, 3, 4, 5, 0, 0, 0] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> rfl)
  have hEB : ∀ X : Point, X ∈ unitSquare → IsRight b X → 0 < sarea (ptE l) (ptB b) X := by
    intro X hX hXr
    obtain ⟨-, -, hX3, -⟩ := hX
    simp only [IsRight, sarea, ptE, ptB, ptC] at hXr ⊢
    have : 0 < X.1 - b := by nlinarith
    nlinarith [mul_pos hl this, mul_nonneg hb.le hX3]
  have hs2 : (0 : ℝ) < 7 / 128 := by norm_num
  have hBC : ∀ X : Point, IsRight b X → 0 < sarea ptC (ptB b) X := by
    intro X hX; simp only [IsRight] at hX; linarith [sarea_swap₁₂ (ptB b) ptC X]
  have hBCR : 0 < sarea ptC (ptB b) R := hBC R hR
  have hBCS : 0 < sarea ptC (ptB b) S := hBC S hS
  have n1 : sarea (ptB b) R S ≠ 0 := sarea_ne_zero_of_min_pos hpos 3 7 8
  have n2 : sarea R ptC S ≠ 0 := sarea_ne_zero_of_min_pos hpos 7 1 8
  rcases lt_or_gt_of_ne n1 with a1 | a1 <;> rcases lt_or_gt_of_ne n2 with a2 | a2
  · right
    refine ⟨by linarith [sarea_swap₂₃ (ptB b) R S], ?_, hBCR⟩
    linarith [sarea_cycle R S ptC, sarea_swap₂₃ R ptC S]
  · exfalso
    refine quad_excluded hb hb2 hl hl1 hL hLce hP hPce hmin6 hK hbq hSsq hRsq hS hR ?_ ?_
      (le_trans (by norm_num) (sarea_ge_of_le_min_of_pos hs2 h128 2 3 8 (hEB S hSsq hS)))
    · refine ⟨by linarith [sarea_swap₂₃ (ptB b) R S], ?_, ?_, hBCS⟩
      · linarith [sarea_cycle ptC S R, sarea_cycle R ptC S]
      · linarith [sarea_cycle (ptB b) R ptC, sarea_swap₁₂ (ptB b) ptC R,
          sarea_cycle ptC (ptB b) R]
    · exact min_sub' h128 _ ![3, 8, 7, 1] ![0, 3, 0, 0, 0, 0, 0, 2, 1] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> rfl)
  · exfalso
    refine quad_excluded hb hb2 hl hl1 hL hLce hP hPce hmin6 hK hbq hRsq hSsq hR hS ?_ ?_
      (le_trans (by norm_num) (sarea_ge_of_le_min_of_pos hs2 h128 2 3 7 (hEB R hRsq hR)))
    · refine ⟨a1, ?_, ?_, hBCR⟩
      · linarith [sarea_swap₂₃ R ptC S]
      · linarith [sarea_cycle (ptB b) S ptC, sarea_swap₁₂ (ptB b) ptC S,
          sarea_cycle ptC (ptB b) S]
    · exact min_sub' h128 _ ![3, 7, 8, 1] ![0, 3, 0, 0, 0, 0, 0, 1, 2] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> rfl)
  · left
    exact ⟨a1, a2, hBCS⟩

/-- `triangularHull_BCRS` in the form used later: in the balanced row at least area `A₀`, `S` is strictly
inside `BRC` or `R` is strictly inside `BSC`. -/
theorem inTriangle_S_or_R_of_balancedRow {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    InTriangle S (ptB b) R ptC ∨ InTriangle R (ptB b) S ptC := by
  have h79 : 79 / 1440 ≤ minTriangleArea (typeIIConfig l b L P Q R S) :=
    le_trans A₀_bounds.2.2.1.le hmin
  rcases TypeIIBalanced.balancedPlacement_or_swap hrow h79 with hpl | hpl
  · exact inTriangle_S_or_R_of_placement hpl hmin
  · exact inTriangle_S_or_R_of_placement hpl (by rw [tc_min_swapPQ]; exact hmin)

/-- In the balanced Type-II class (the row `(2,2,2)` with `b ≤ 1/2`), at least area `A₀`, the
four-point right set `B, C, R, S` cannot have a quadrilateral hull: its hull is a triangle. The
proof works at `s = 7/64` from the forced placement `TypeIIBalanced.balancedPlacement_or_swap`
(`bq ≥ 3s`, `q ≥ Ks > 13/16`): for a quadrilateral hull, the lower-vertex inequality and the ear
`EBR` give `4cbs ≤ w(c-s)²` (`ear_quadratic_of_lowerVertex`), which the bounds of `q_lower_bounds_of_b_le` exclude
(`false_of_ear_quadratic`). -/
theorem triangularHull_BCRS {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    TriangularHull ![ptB b, ptC, R, S] := by
  have hset : ∀ X Y : Point, ({ptB b, X, ptC} : Set Point) = {ptB b, ptC, X} := by
    intro X Y; ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
  rcases inTriangle_S_or_R_of_balancedRow hrow hmin with h | h
  · refine ⟨0, 1, 2, fun m => ?_⟩
    fin_cases m
    · exact subset_convexHull ℝ _ (Or.inl rfl)
    · exact subset_convexHull ℝ _ (Or.inr (Or.inl rfl))
    · exact subset_convexHull ℝ _ (Or.inr (Or.inr rfl))
    · have := mem_convexHull_of_inTriangle h
      rw [hset R S] at this; exact this
  · refine ⟨0, 1, 3, fun m => ?_⟩
    fin_cases m
    · exact subset_convexHull ℝ _ (Or.inl rfl)
    · exact subset_convexHull ℝ _ (Or.inr (Or.inl rfl))
    · have := mem_convexHull_of_inTriangle h
      rw [hset S R] at this; exact this
    · exact subset_convexHull ℝ _ (Or.inr (Or.inr rfl))

end Heilbronn.Nine.TypeIICompletion
