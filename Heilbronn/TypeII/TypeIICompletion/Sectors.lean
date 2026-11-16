module

public import Heilbronn.TypeII.TypeIICompletion.Balanced
public import Heilbronn.TypeII.TypeIICompletion.ParameterBound
public import Heilbronn.Corners.CornerFamilies

/-! # The alternating balanced placement (`hand/TYPE_II_COMPLETION.md`, §§8–10)

`TYPE_II_COMPLETION.md` lines 792–1298. After Corollary 5 the balanced row is the quadrilateral
`D, E, R, C` (`R = (r,u)`, `v = 1 - u`) with one interior point in each diagonal sector, `L` at
`DE` and `P` at `CD`.

* `secondShear`, `claim_second_shear` (§8.1, (26)): the determinant-one shear followed by a
  reflection, `(x,y) ↦ (1 - x - τ(1-y), y)`, `τ = (1-r)/v`, sending `C, D, R, B` to new Type-II
  anchors `(0,1), (1,1), (0,u), (b',0)`, `b' = g/v ∈ (0,1)`, and keeping the configuration in the
  square;
* `theorem8` (**Theorem 8**): the assignment `S` at `ER`, `Q` at `RC` is impossible;
* `claim_containing_triangles` ((30)–(31)), `theorem9` (**Theorem 9**): in the remaining
  `FinalPlacement`, `Q` is not above both `ES` (the `D` side) and `LR` (the `C` side);
  `claim_one_sided` (§9.3): the one-sided consequences;
* `theorem10` (**Theorem 10**): `Q` is not above `ES` and below `LR`.

Sides: "`Q` above `ES`" is `0 < sarea (ptE l) S Q`, "`Q` above `LR`" is `0 < sarea L R Q`.
Thresholds: Theorems 9 and 10 work at doubled threshold `7/64` given the `FinalPlacement`;
Theorem 8 needs least area `A₀` (see its FLAG).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion

open Heilbronn.TypeII Heilbronn.TypeIIBalanced

/-! ### Facts of the final placement -/

/-- `L` (inside `DBE`) lies on the `E` side of `DR` for a right point `R` of the square. -/
theorem DRL_neg {l b : ℝ} {L R : Point} (hb : 0 < b) (hb1 : b < 1) (hl1 : l < 1)
    (hL : InTriangle L ptD (ptE l) (ptB b)) (hR : IsRight b R) (hu : 0 ≤ R.2) :
    sarea ptD R L < 0 := by
  simp only [IsRight, sarea, ptB, ptC] at hR
  have hr : b < R.1 := by nlinarith [mul_nonneg (sub_nonneg.2 hb1.le) hu]
  refine tc_neg_of_inTri hL ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptE, ptB] <;>
    nlinarith [mul_pos (show 0 < R.1 by linarith) (show 0 < 1 - l by linarith)]

/-- A central point lies strictly left of the line `R → C` for a right point `R`. -/
theorem RC_pos_of_central {b : ℝ} {X R : Point} (hb : 0 < b) (hX : IsCentral b X)
    (hR : IsRight b R) (hu1 : R.2 ≤ 1) : 0 < sarea R ptC X := by
  simp only [IsRight, sarea, ptB, ptC] at hR
  refine tc_pos_of_inTri hX ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptB, ptC] <;> nlinarith

/-- The second supporting shear and reflection (26), `(x,y) ↦ (1 - x - τ(1-y), y)` with
`τ = (1-r)/(1-u)`, an affine map of determinant `-1`. -/
def secondShear (r u : ℝ) : Point → Point :=
  affineMap (-1) ((1 - r) / (1 - u)) 0 1 (1 - (1 - r) / (1 - u)) 0

/-- The shear (26) for any `τ`: `(x, y) ↦ (1 - x - τ(1-y), y)`. -/
theorem shear_apply (τ : ℝ) (X : Point) :
    affineMap (-1) τ 0 1 (1 - τ) 0 X = (1 - X.1 - τ * (1 - X.2), X.2) := by
  simp only [affineMap]; ext <;> simp; ring

/-- A point `X` of the square with `[RCX] ≥ 0` (`R = (r,u)`, `u < 1`) stays in the square under the
shear (26) with `τ = (1-r)/(1-u)`. -/
theorem shear_mem {r u : ℝ} {X : Point} (hr1 : r ≤ 1) (hu1 : u < 1) (hX : X ∈ unitSquare)
    (hRC : 0 ≤ sarea (r, u) ptC X) :
    affineMap (-1) ((1 - r) / (1 - u)) 0 1 (1 - (1 - r) / (1 - u)) 0 X ∈ unitSquare := by
  rw [shear_apply]
  obtain ⟨h1, h2, h3, h4⟩ := hX
  have hv : 0 < 1 - u := by linarith
  have hτ : 0 ≤ (1 - r) / (1 - u) := div_nonneg (by linarith) hv.le
  simp only [sarea, ptC] at hRC
  refine ⟨?_, ?_, h3, h4⟩
  · have : (1 - r) / (1 - u) * (1 - X.2) ≤ 1 - X.1 := by
      rw [div_mul_eq_mul_div, div_le_iff₀ hv]; nlinarith
    linarith
  · nlinarith [mul_nonneg hτ (show 0 ≤ 1 - X.2 by linarith)]

/-- **Claim** (`TYPE_II_COMPLETION:claim-second-shear`, made up). In the balanced placement with
triangular right hull (`S` inside `BCR`, `R = (r,u)`) and `u > 0`: the map (26) negates every
signed area (so it keeps unsigned areas and exchanges the left and right containers), sends
`C, D, R, B` to `(0,1), (1,1), (0,u), (b',0)` with `b' = 1 - b - τ = g/v ∈ (0,1)`,
`g = r - b - (1-b)u`, and keeps all nine points in the square (the full hull is `D, C, R, B, E`).
`hand/TYPE_II_COMPLETION.md`, lines 805–848.

Implicit in the manuscript: the square membership of the sheared configuration (asserted from the
hull `D, C, R, B, E`, lines 837–842), proved here from `[RCX] ≥ 0` for every free point
(`shear_mem`, `second_shear_sq`); for `u = 0` the image is a Type-III configuration (line 815),
which `theorem8_typeIII` excludes through `CORNER_FAMILIES.md`. -/
theorem claim_second_shear {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC) (hu : 0 < R.2) :
    let ψ := secondShear R.1 R.2
    let b' := 1 - b - (1 - R.1) / (1 - R.2)
    (∀ X Y Z : Point, sarea (ψ X) (ψ Y) (ψ Z) = -sarea X Y Z) ∧
      ψ ptC = ptD ∧ ψ ptD = ptC ∧ ψ R = ptE R.2 ∧ ψ (ptB b) = ptB b' ∧
      b' = (R.1 - b - (1 - b) * R.2) / (1 - R.2) ∧ 0 < b' ∧ b' < 1 ∧
      ψ (ptE l) ∈ unitSquare ∧ ψ L ∈ unitSquare ∧ ψ P ∈ unitSquare ∧ ψ Q ∈ unitSquare ∧
      ψ S ∈ unitSquare := by
  intro ψ b'
  obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, hb2, hL, hLce, hP,
    hPce, hQ, hQce, hR, hSr⟩ := hpl
  have hRr : b + (1 - b) * R.2 < R.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hR; linarith
  have hu1' : R.2 < 1 := by nlinarith
  have hv : 0 < 1 - R.2 := by linarith
  have hv0 : (1 - R.2) ≠ 0 := hv.ne'
  have hψ : ∀ X, ψ X = (1 - X.1 - (1 - R.1) / (1 - R.2) * (1 - X.2), X.2) :=
    fun X => shear_apply _ X
  have hb'e : b' = (R.1 - b - (1 - b) * R.2) / (1 - R.2) := by
    simp only [b']; field_simp; ring
  have hRC : ∀ X : Point, X = R → (R.1, R.2) = X := fun X h => by rw [h]
  have hRR : R = (R.1, R.2) := rfl
  have hCER := TypeIICompletion.sarea_CER_nonneg hb hb1 hl hl1 hR hr1
  have hRCE : 0 ≤ sarea R ptC (ptE l) := by
    linarith [sarea_cycle ptC (ptE l) R, sarea_cycle (ptE l) R ptC]
  refine ⟨fun X Y Z => ?_, ?_, ?_, ?_, ?_, hb'e, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · simp only [ψ, secondShear, sarea_affineMap]; ring
  · rw [hψ]; simp [ptC, ptD]
  · rw [hψ]; simp [ptC, ptD]
  · rw [hψ]; simp only [ptE]; ext
    · simp only; field_simp; ring
    · rfl
  · rw [hψ]; simp only [ptB, b']; ext
    · simp only; ring
    · simp
  · rw [hb'e]; apply div_pos _ hv; nlinarith
  · have : 0 ≤ (1 - R.1) / (1 - R.2) := div_nonneg (by linarith) hv.le
    simp only [b']; linarith
  · have hEsq : ptE l ∈ unitSquare := by
      simp only [ptE, unitSquare, Set.mem_ofPred_eq]
      exact ⟨le_refl _, by norm_num, hl.le, hl1.le⟩
    refine shear_mem hr1 hu1' hEsq ?_
    rw [← hRR]; exact hRCE
  · refine shear_mem hr1 hu1' hLsq ?_
    rw [← hRR]
    refine (tc_pos_of_inTri hL ?_ hRCE ?_ ?_).le <;> simp only [sarea, ptD, ptC, ptE, ptB] at hRCE ⊢ <;>
      nlinarith
  · refine shear_mem hr1 hu1' hPsq ?_
    rw [← hRR]; exact (RC_pos_of_central hb hP hR hu1).le
  · refine shear_mem hr1 hu1' hQsq ?_
    rw [← hRR]; exact (RC_pos_of_central hb hQ hR hu1).le
  · refine shear_mem hr1 hu1' hSsq ?_
    rw [← hRR]; exact hS.2.1.le

/-! ### Theorem 8: the polynomial `G` on the four rectangles (§§8.3–8.4) -/

/-- Concavity of `G` in `β` (§8.4): positivity at `β = B` gives positivity on `[0, B]`. -/
theorem G_from_end {B β z : ℝ} (hB : 0 < B) (hB2 : B ≤ 2 / 3) (hβ0 : 0 ≤ β) (hβB : β ≤ B)
    (hz : 13 / 16 ≤ z) (hGB : 0 < chamberG B z) : 0 < chamberG β z := by
  have hG0 : 0 < chamberG 0 z := by
    simp only [chamberG]; nlinarith [sq_nonneg (z - 847 / 798)]
  have e : B * chamberG β z = (B - β) * chamberG 0 z + β * chamberG B z +
      B * β * (B - β) * (-(448 * z ^ 3 * (β + B) + z ^ 2 * (1890 - 3648 * z))) := by
    simp only [chamberG]; ring
  have hneg : 0 ≤ -(448 * z ^ 3 * (β + B) + z ^ 2 * (1890 - 3648 * z)) := by
    have hz2 : 0 ≤ z ^ 2 := sq_nonneg z
    have : 448 * z * (β + B) + 1890 - 3648 * z ≤ 0 := by nlinarith
    nlinarith [mul_nonpos_of_nonneg_of_nonpos hz2 this]
  have h1 : 0 ≤ B * β * (B - β) := by
    have := mul_nonneg hB.le hβ0; exact mul_nonneg this (by linarith)
  have h2 := mul_nonneg h1 hneg
  have h3 : 0 < (B - β) * chamberG 0 z + β * chamberG B z := by
    rcases eq_or_lt_of_le hβ0 with h | h
    · rw [← h]; simp only [sub_zero, zero_mul, add_zero]; exact mul_pos hB hG0
    · nlinarith [mul_pos h hGB, mul_nonneg (show 0 ≤ B - β by linarith) hG0.le]
  have : 0 < B * chamberG β z := by rw [e]; linarith
  exact pos_of_mul_pos_right this hB.le

theorem G_end1 {z : ℝ} (hz : 13 / 16 ≤ z) (hZ : z ≤ 25 / 28) : 0 < chamberG (2 / 3) z := by
  have hw : 0 ≤ 25 / 28 - z := by linarith
  simp only [chamberG]
  nlinarith [mul_nonneg (mul_nonneg hw hw) (show 0 ≤ z - 13 / 16 by linarith), mul_nonneg hw hw]

theorem G_end2 {z : ℝ} (hz : 13 / 16 ≤ z) (hZ : z ≤ 15 / 16) : 0 < chamberG (3 / 5) z := by
  have hw : 0 ≤ 15 / 16 - z := by linarith
  simp only [chamberG]
  nlinarith [mul_nonneg (mul_nonneg hw hw) (show 0 ≤ z - 13 / 16 by linarith), mul_nonneg hw hw]

theorem G_end3 {z : ℝ} (hz : 13 / 16 ≤ z) (hZ : z ≤ 31 / 32) : 0 < chamberG (4 / 7) z := by
  have hw : 0 ≤ 31 / 32 - z := by linarith
  simp only [chamberG]
  nlinarith [mul_nonneg (mul_nonneg hw hw) (show 0 ≤ z - 13 / 16 by linarith), mul_nonneg hw hw]

theorem G_end4 {z : ℝ} (hz : 13 / 16 ≤ z) (hZ : z ≤ 1) : 0 < chamberG (11 / 20) z := by
  have hw : 0 ≤ 1 - z := by linarith
  simp only [chamberG]
  nlinarith [mul_nonneg (mul_nonneg hw hw) (show 0 ≤ z - 13 / 16 by linarith), mul_nonneg hw hw]

/-- The four rectangles of §8.3: `G(b', v) > 0` on the parameter range of Theorem 8. -/
theorem theorem8_G {b q v b' : ℝ} (hb2 : b ≤ 1 / 2) (hb13 : 1 / 3 < b) (hv : 13 / 16 ≤ v)
    (hv1 : v ≤ 1) (h29 : b * (v - q) ≤ 1 - 7 / 64 - q) (hb' : 1 / 2 < b') (hbb : b' ≤ 1 - b)
    (hq1 : q ≤ 1) (h25a : b ≤ 2 / 5 → 89 / 100 < q) (h25b : b ≤ 3 / 7 → 7 / 8 ≤ q)
    (h25c : b ≤ 9 / 20 → 27 / 32 < q) : 0 < chamberG b' v := by
  rcases le_or_gt b (2 / 5) with h1 | h1
  · have hq := h25a h1
    have hvZ : v ≤ 25 / 28 := by
      nlinarith [mul_nonneg (show 0 ≤ q - 89 / 100 by linarith) (show 0 ≤ 1 - b by linarith),
        mul_nonneg (show 0 ≤ b - 1 / 3 by linarith) (show (0 : ℝ) ≤ 1 - 7 / 64 - 89 / 100 by
          norm_num)]
    exact G_from_end (by norm_num) le_rfl (by linarith) (by linarith) hv (G_end1 hv hvZ)
  rcases le_or_gt b (3 / 7) with h2 | h2
  · have hq := h25b h2
    have hvZ : v ≤ 15 / 16 := by
      nlinarith [mul_nonneg (show 0 ≤ q - 7 / 8 by linarith) (show 0 ≤ 1 - b by linarith),
        mul_nonneg (show 0 ≤ b - 2 / 5 by linarith) (show (0 : ℝ) ≤ 1 - 7 / 64 - 7 / 8 by
          norm_num)]
    exact G_from_end (by norm_num) (by norm_num) (by linarith) (by linarith) hv (G_end2 hv hvZ)
  rcases le_or_gt b (9 / 20) with h3 | h3
  · have hq := h25c h3
    have hvZ : v ≤ 31 / 32 := by
      nlinarith [mul_nonneg (show 0 ≤ q - 27 / 32 by linarith) (show 0 ≤ 1 - b by linarith),
        mul_nonneg (show 0 ≤ b - 3 / 7 by linarith) (show (0 : ℝ) ≤ 1 - 7 / 64 - 27 / 32 by
          norm_num)]
    exact G_from_end (by norm_num) (by norm_num) (by linarith) (by linarith) hv (G_end3 hv hvZ)
  · exact G_from_end (by norm_num) (by norm_num) (by linarith) (by linarith) hv (G_end4 hv hv1)

/-- §8.2: the same-side quadratic `[v - s(v+1)]² ≥ 4sv(1+b'v)` is impossible for `b' > 1/2`,
`13/16 ≤ v ≤ 1` (`B(1) = 177/448 < 1/2`). -/
theorem theorem8_same {v b' : ℝ} (hv : 13 / 16 ≤ v) (hv1 : v ≤ 1) (hb' : 1 / 2 < b')
    (h : 4 * (7 / 64) * v * (1 + b' * v) ≤ (v - 7 / 64 * (v + 1)) ^ 2) : False := by
  nlinarith [mul_nonneg (show 0 ≤ v - 13 / 16 by linarith) (show 0 ≤ 1 - v by linarith),
    mul_pos (mul_pos (show (0 : ℝ) < v by linarith) (show (0 : ℝ) < v by linarith))
      (show 0 < b' - 1 / 2 by linarith)]

/-! ### Theorem 8: the sheared configuration -/

/-- The shear (26) keeps unsigned areas: the least area of a sheared relabelled configuration. -/
theorem min_shear_perm (Pc : Fin 9 → Point) (σ : Equiv.Perm (Fin 9)) (τ : ℝ) :
    minTriangleArea (affineMap (-1) τ 0 1 (1 - τ) 0 ∘ (Pc ∘ σ)) = minTriangleArea Pc := by
  rw [minTriangleArea_affineMap, minTriangleArea_comp_perm]; norm_num

/-- The relabelling `C, D, R, B, S, P, Q, L, E` of the shear (26). -/
def shearPerm : Equiv.Perm (Fin 9) where
  toFun := ![1, 0, 7, 3, 8, 5, 6, 4, 2]
  invFun := ![1, 0, 8, 3, 7, 5, 6, 2, 4]
  left_inv := by decide
  right_inv := by decide

/-- The relabelling `R, C, D, E, B, L, P, Q, S` of the Type-III image (`u = 0`). -/
def shearPerm0 : Equiv.Perm (Fin 9) where
  toFun := ![7, 1, 0, 2, 3, 4, 5, 6, 8]
  invFun := ![2, 1, 3, 4, 5, 6, 7, 0, 8]
  left_inv := by decide
  right_inv := by decide

/-- The free points stay in the square under the shear (26) (any `0 ≤ u`). -/
theorem second_shear_sq {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC) :
    let ψ := secondShear R.1 R.2
    ψ (ptE l) ∈ unitSquare ∧ ψ (ptB b) ∈ unitSquare ∧ ψ L ∈ unitSquare ∧
      ψ P ∈ unitSquare ∧ ψ Q ∈ unitSquare ∧ ψ S ∈ unitSquare := by
  intro ψ
  obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, hb2, hL, hLce, hP,
    hPce, hQ, hQce, hR, hSr⟩ := hpl
  have hRr : b + (1 - b) * R.2 < R.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hR; linarith
  have hu1' : R.2 < 1 := by nlinarith
  have hRR : R = (R.1, R.2) := rfl
  have hCER := TypeIICompletion.sarea_CER_nonneg hb hb1 hl hl1 hR hr1
  have hRCE : 0 ≤ sarea R ptC (ptE l) := by
    linarith [sarea_cycle ptC (ptE l) R, sarea_cycle (ptE l) R ptC]
  have hEsq : ptE l ∈ unitSquare := by
    simp only [ptE, unitSquare, Set.mem_ofPred_eq]
    exact ⟨le_refl _, by norm_num, hl.le, hl1.le⟩
  have hBsq : ptB b ∈ unitSquare := by
    simp only [ptB, unitSquare, Set.mem_ofPred_eq]
    exact ⟨hb.le, hb1.le, le_refl _, by norm_num⟩
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · refine shear_mem hr1 hu1' hEsq ?_; rw [← hRR]; exact hRCE
  · refine shear_mem hr1 hu1' hBsq ?_; rw [← hRR]
    simp only [sarea, ptB, ptC]; nlinarith
  · refine shear_mem hr1 hu1' hLsq ?_
    rw [← hRR]
    refine (tc_pos_of_inTri hL ?_ hRCE ?_ ?_).le <;> simp only [sarea, ptD, ptC, ptE, ptB] at hRCE ⊢ <;>
      nlinarith
  · refine shear_mem hr1 hu1' hPsq ?_
    rw [← hRR]; exact (RC_pos_of_central hb hP hR hu1).le
  · refine shear_mem hr1 hu1' hQsq ?_
    rw [← hRR]; exact (RC_pos_of_central hb hQ hR hu1).le
  · refine shear_mem hr1 hu1' hSsq ?_
    rw [← hRR]; exact hS.2.1.le

/-- Theorem 8 for `u = 0`: the shear (26) gives a Type-III configuration
(`CORNER_FAMILIES.md`). -/
theorem theorem8_typeIII {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC) (hu : R.2 = 0) :
    minTriangleArea (typeIIConfig l b L P Q R S) < A₀ := by
  obtain ⟨hE, hB, hL, hP, hQ, hSq⟩ := second_shear_sq hpl hS
  set ψ := secondShear R.1 R.2 with hψ
  have hψa : ∀ X, ψ X = (1 - X.1 - (1 - R.1) / (1 - R.2) * (1 - X.2), X.2) :=
    fun X => shear_apply _ X
  have e : typeIIIConfig (ψ (ptE l)) (ψ (ptB b)) (ψ L) (ψ P) (ψ Q) (ψ S) =
      affineMap (-1) ((1 - R.1) / (1 - R.2)) 0 1 (1 - (1 - R.1) / (1 - R.2)) 0 ∘
        (typeIIConfig l b L P Q R S ∘ shearPerm0) := by
    funext i
    fin_cases i
    · show ((0 : ℝ), (0 : ℝ)) = ψ R
      rw [hψa, hu]; ext <;> simp
    · show ((0 : ℝ), (1 : ℝ)) = ψ ptC
      rw [hψa]; ext <;> simp [ptC]
    · show ((1 : ℝ), (1 : ℝ)) = ψ ptD
      rw [hψa]; ext <;> simp [ptD]
    all_goals rfl
  have := CornerFamilies.typeIII_lt_A₀ _ _ _ _ _ _ hE hB hL hP hQ hSq
  rwa [e, min_shear_perm] at this

/-- The sheared configuration of Theorem 8 for `u > 0`: its least area, its Type-II data, and
the container and cut positions of its points (`P, Q` central above the new `CE`, `S` left,
`L, E` right), with the two line signs at `B', E'`. -/
theorem theorem8_frame {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC) (hu : 0 < R.2)
    (hPs : DiagSector ptC ptD (ptE l) R P) (hQs : DiagSector R ptC ptD (ptE l) Q) :
    let ψ := secondShear R.1 R.2
    let b' := 1 - b - (1 - R.1) / (1 - R.2)
    minTriangleArea (typeIIConfig R.2 b' (ψ S) (ψ P) (ψ Q) (ψ L) (ψ (ptE l))) =
        minTriangleArea (typeIIConfig l b L P Q R S) ∧
      TypeIIData R.2 b' (ψ S) (ψ P) (ψ Q) (ψ L) (ψ (ptE l)) ∧
      IsLeft b' (ψ S) ∧ IsCentral b' (ψ P) ∧ IsCentral b' (ψ Q) ∧ IsRight b' (ψ L) ∧
      IsRight b' (ψ (ptE l)) ∧ InTriangle (ψ P) ptD (ptE R.2) ptC ∧
      InTriangle (ψ Q) ptD (ptE R.2) ptC ∧
      sarea (ψ P) (ψ Q) (ptB b') = -sarea P Q (ptB b) ∧
      sarea (ψ P) (ψ Q) (ptE R.2) = -sarea P Q R ∧ b' ≤ 1 - b := by
  intro ψ b'
  obtain ⟨hψs, hψC, hψD, hψR, hψB, -, hb'0, hb'1, hE, hL, hP, hQ, hSq⟩ :=
    claim_second_shear hpl hS hu
  have hpl' := hpl
  obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, hb2, hLt, hLce, hPc,
    hPce, hQc, hQce, hR, hSr⟩ := hpl'
  have hRr : b + (1 - b) * R.2 < R.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hR; linarith
  have hu1' : R.2 < 1 := by nlinarith
  have e : typeIIConfig R.2 b' (ψ S) (ψ P) (ψ Q) (ψ L) (ψ (ptE l)) =
      affineMap (-1) ((1 - R.1) / (1 - R.2)) 0 1 (1 - (1 - R.1) / (1 - R.2)) 0 ∘
        (typeIIConfig l b L P Q R S ∘ shearPerm) := by
    funext i
    fin_cases i
    · exact hψC.symm
    · exact hψD.symm
    · exact hψR.symm
    · exact hψB.symm
    all_goals rfl
  have t : ∀ X Y Z : Point, sarea (ψ X) (ψ Y) (ψ Z) = -sarea X Y Z := hψs
  have hψB' : ψ (ptB b) = ptB b' := hψB
  have hψC' : ψ ptC = ptD := hψC
  have hψD' : ψ ptD = ptC := hψD
  have hψR' : ψ R = ptE R.2 := hψR
  have hRCP := RC_pos_of_central hb hPc hR hu1
  have e1 : sarea ptD (ptB b') (ψ S) = -sarea ptC (ptB b) S := by
    simpa only [hψC', hψB'] using t ptC (ptB b) S
  have eCB : ∀ X, sarea ptD (ptB b') (ψ X) = -sarea ptC (ptB b) X := fun X => by
    simpa only [hψC', hψB'] using t ptC (ptB b) X
  have eBD : ∀ X, sarea (ptB b') ptC (ψ X) = -sarea (ptB b) ptD X := fun X => by
    simpa only [hψD', hψB'] using t (ptB b) ptD X
  have eDC : ∀ X, sarea ptC ptD (ψ X) = -sarea ptD ptC X := fun X => by
    simpa only [hψD', hψC'] using t ptD ptC X
  have eCR : ∀ X, sarea ptD (ptE R.2) (ψ X) = -sarea ptC R X := fun X => by
    simpa only [hψC', hψR'] using t ptC R X
  have eRD : ∀ X, sarea (ptE R.2) ptC (ψ X) = -sarea R ptD X := fun X => by
    simpa only [hψD', hψR'] using t R ptD X
  have hBCS : sarea (ptB b) ptC S < 0 := hSr
  have hBDL := hLt.2.2
  refine ⟨by rw [e, min_shear_perm], ⟨hb'0, hb'1, hu, hu1', hSq, hP, hQ, hL, hE⟩, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_, ?_⟩
  · show sarea ptD (ptB b') (ψ S) < 0
    rw [eCB]; linarith [sarea_swap₁₂ (ptB b) ptC S]
  · refine ⟨?_, ?_, ?_⟩
    · rw [eCB]; linarith [hPc.2.1, sarea_swap₁₂ (ptB b) ptC P]
    · rw [eBD]; linarith [hPc.1, sarea_swap₁₂ ptD (ptB b) P]
    · rw [eDC]; linarith [hPc.2.2, sarea_swap₁₂ ptC ptD P]
  · refine ⟨?_, ?_, ?_⟩
    · rw [eCB]; linarith [hQc.2.1, sarea_swap₁₂ (ptB b) ptC Q]
    · rw [eBD]; linarith [hQc.1, sarea_swap₁₂ ptD (ptB b) Q]
    · rw [eDC]; linarith [hQc.2.2, sarea_swap₁₂ ptC ptD Q]
  · show sarea (ptB b') ptC (ψ L) < 0
    rw [eBD]; linarith
  · show sarea (ptB b') ptC (ψ (ptE l)) < 0
    rw [eBD]; simp only [sarea, ptB, ptD, ptE]; nlinarith
  · refine ⟨?_, ?_, ?_⟩
    · rw [eCR]; linarith [sarea_swap₁₂ R ptC P]
    · rw [eRD]; linarith [hPs.2.1, sarea_swap₁₂ ptD R P]
    · rw [eDC]; linarith [hPc.2.2, sarea_swap₁₂ ptC ptD P]
  · refine ⟨?_, ?_, ?_⟩
    · rw [eCR]; linarith [hQs.1, sarea_swap₁₂ R ptC Q]
    · rw [eRD]; linarith [hQs.2.2, sarea_swap₁₂ ptD R Q]
    · rw [eDC]; linarith [hQc.2.2, sarea_swap₁₂ ptC ptD Q]
  · simpa only [hψB'] using t P Q (ptB b)
  · simpa only [hψR'] using t P Q R
  · have : 0 ≤ (1 - R.1) / (1 - R.2) := div_nonneg (by linarith) (by linarith)
    simp only [b']; linarith

/-- The original-frame parameters used in §8.3. -/
theorem theorem8_params {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC)
    (hPs : DiagSector ptC ptD (ptE l) R P) (hQs : DiagSector R ptC ptD (ptE l) Q)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    1 / 3 < b ∧ b * ((1 - R.2) - (1 - l)) ≤ 1 - 7 / 64 - (1 - l) ∧
      Ktwo * (7 / 64) ≤ 1 - R.2 ∧ (b ≤ 2 / 5 → 89 / 100 < 1 - l) ∧
      (b ≤ 3 / 7 → 7 / 8 ≤ 1 - l) ∧ (b ≤ 9 / 20 → 27 / 32 < 1 - l) := by
  obtain ⟨hK, hbq⟩ := bp_basic (s := 7 / 64) (by norm_num) hpl (by norm_num; exact hmin)
  obtain ⟨-, -, hδpos⟩ := lemma4_delta hpl hS hmin
  obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, hb2, hL, hLce, hP,
    hPce, hQ, hQce, hR, hSr⟩ := hpl
  have hKs := tc_Ks_gt
  have hKv : Ktwo * (7 / 64) ≤ 1 - R.2 := by
    have hPin : InTriangle P ptD R ptC := ⟨hPs.2.1, RC_pos_of_central hb hP hR hu1, hP.2.2⟩
    have hQin : InTriangle Q ptD R ptC := ⟨hQs.2.2, hQs.1, hQ.2.2⟩
    have h5 : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, R, ptC, P, Q] :=
      tc_min_sub (by norm_num; exact hmin) _ ![0, 7, 1, 5, 6] ![0, 2, 0, 0, 0, 3, 4, 1, 0]
        (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
    have := tc_two_int (by norm_num) hPin hQin h5
    simp only [sarea, ptD, ptC] at this; linarith
  have hδ := tc_ge_of_pos (by norm_num : (0 : ℝ) < 7 / 128) hmin 2 3 7 hδpos
  simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one]
    at hδ
  simp only [sarea, ptE, ptB] at hδ
  have hrb : 0 ≤ R.1 - b := by
    simp only [IsRight, sarea, ptB, ptC] at hR; nlinarith [mul_nonneg (sub_nonneg.2 hb1.le) hu0]
  have hmin6 : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P] :=
    tc_min_sub hmin _ ![0, 1, 2, 3, 4, 5] ![0, 1, 2, 3, 4, 5, 0, 0, 0] (by norm_num) (by decide)
      (by intro i; fin_cases i <;> rfl)
  obtain ⟨h25a, h25b, h25c⟩ := eq25 hb hb1 hl hl1 hL hLce hP hPce hmin6
  refine ⟨?_, ?_, hKv, h25a, h25b, h25c⟩
  · by_contra hcon; push Not at hcon
    have hq : 63 / 64 ≤ 1 - l := by nlinarith
    nlinarith [mul_le_mul hcon (show R.2 ≤ 3 / 16 by linarith) hu0 (by norm_num),
      mul_le_mul (show l ≤ 1 / 64 by linarith) (show R.1 - b ≤ 1 by linarith) hrb (by norm_num)]
  · nlinarith [mul_le_mul_of_nonneg_left (show R.1 - b ≤ 1 - b by linarith) hl.le]

-- FLAG: Theorem 8 is written in the setting "s = 7/64" of §§5–8, but its proof uses
-- `TYPE_II_BALANCED.md` §6 (proved at doubled threshold 79/720, with `ONE_CORNER.md`, which
-- needs least area > 7/128) on the sheared configuration, and the Type-III exclusion of
-- `CORNER_FAMILIES.md` for `u = 0`; it is stated at least area `A₀`, as in Theorem 11.
/-- **Theorem 8** (`TYPE_II_COMPLETION:Theorem8`). In the alternating balanced placement of
Corollary 5, the assignment with `S` in the sector at `ER` and `Q` in the sector at `RC` is
impossible: some triangle has area less than `A₀`. After the second shear (26), (27) gives
`1/2 < b' ≤ 1 - b`; if the new line `PQ` keeps `B', E'` together, `b' ≤ B(1) = 177/448` (§8.2);
otherwise the chamber polynomial `G(b', v)` is positive on four parameter rectangles (§§8.3–8.4).
`hand/TYPE_II_COMPLETION.md`, lines 792–1005.

FLAG (threshold): stated at least area `A₀`, see the comment above.

Uses: TYPE_II_COMPLETION:Corollary5, TYPE_II_COMPLETION:claim-second-shear,
CORNER_FAMILIES:TypeIII-complete, TYPE_II_BALANCED:claim-not-both-above-CE,
TYPE_II:claim-PQ-line-table, TYPE_II:claim-chamber-general, TYPE_II_COMPLETION:eq25. -/
theorem theorem8 {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC)
    (hLs : DiagSector ptD (ptE l) R ptC L) (hPs : DiagSector ptC ptD (ptE l) R P)
    (hSs : DiagSector (ptE l) R ptC ptD S) (hQs : DiagSector R ptC ptD (ptE l) Q) :
    minTriangleArea (typeIIConfig l b L P Q R S) < A₀ := by
  by_contra hcon
  push Not at hcon
  have h128 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S) :=
    le_trans A₀_bounds.1.le hcon
  have hpos : 0 < minTriangleArea (typeIIConfig l b L P Q R S) :=
    lt_of_lt_of_le (by norm_num) h128
  rcases eq_or_lt_of_le hpl.1.2.2.2.2.2.2.2.1.2.2.1 with hu | hu
  · exact absurd (theorem8_typeIII hpl hS hu.symm) (not_lt.2 hcon)
  obtain ⟨hb13, h29, hKv, h25a, h25b, h25c⟩ := theorem8_params hpl hS hPs hQs h128
  obtain ⟨hmeq, hd', hS', hP', hQ', hL', hE', hPE', hQE', hsB, hsE, hbb⟩ :=
    theorem8_frame hpl hS hu hPs hQs
  set ψ := secondShear R.1 R.2 with hψ
  set b' := 1 - b - (1 - R.1) / (1 - R.2) with hb'
  have hb1 : b < 1 := hpl.1.2.1
  have hl1 : l < 1 := hpl.1.2.2.2.1
  have hl0 : 0 < l := hpl.1.2.2.1
  have hu1 : R.2 ≤ 1 := hpl.1.2.2.2.2.2.2.2.1.2.2.2
  have hKs := tc_Ks_gt
  rcases le_or_gt b' (1 / 2) with hb'2 | hb'2
  · -- the balanced two-central-point cut of `TYPE_II_BALANCED.md` §6
    have hrow : BalancedRow R.2 b' (ψ S) (ψ P) (ψ Q) (ψ L) (ψ (ptE l)) :=
      ⟨hd', hb'2, hS', hP', hQ', hL', hE'⟩
    exact TypeIIBalanced.claim_not_both_above_CE hrow
      (by rw [hmeq]; exact le_trans A₀_bounds.2.2.1.le hcon) ⟨hPE', hQE'⟩
  · have hmin6 : A₀ ≤ minTriangleArea ![ptD, ptC, ptE R.2, ptB b', ψ P, ψ Q] :=
      tc_min_sub (hmeq ▸ hcon) _ ![0, 1, 2, 3, 5, 6] ![0, 1, 2, 3, 0, 4, 5, 0, 0]
        (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
    have hpos6 : 0 < minTriangleArea ![ptD, ptC, ptE R.2, ptB b', ψ P, ψ Q] :=
      lt_of_lt_of_le A₀_pos hmin6
    have nB : sarea P Q (ptB b) ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 6 3
    have nE : sarea P Q R ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 6 7
    have hv1 : 1 - R.2 ≤ 1 := by linarith [hpl.1.2.2.2.2.2.2.2.1.2.2.1]
    rcases lt_or_gt_of_ne (mul_ne_zero nB nE) with hopp | hsame
    · -- opposite sides: the chamber lemma with `G(b', v) > 0`
      have hG := theorem8_G hpl.2.1 hb13 (by linarith) hv1 h29 hb'2 hbb (by linarith) h25a
        h25b h25c
      rcases lt_or_gt_of_ne nB with hB | hB
      · have hE : 0 < sarea P Q R := by
          by_contra h; push Not at h
          nlinarith [mul_nonneg (show 0 ≤ -sarea P Q (ptB b) by linarith)
            (show 0 ≤ -sarea P Q R by linarith)]
        have := claim_chamber_general hd'.1 hd'.2.1 hu.le (by linarith) hP' hPE' hQ' hQE'
          (by rw [← sarea_cycle]; linarith [hsB]) (by rw [← sarea_cycle]; linarith [hsE]) hG
        exact absurd this (not_lt.2 (le_trans A₀_bounds.1.le hmin6))
      · have hE : sarea P Q R < 0 := by
          by_contra h; push Not at h
          nlinarith [mul_nonneg hB.le h]
        have hmin6' : A₀ ≤ minTriangleArea ![ptD, ptC, ptE R.2, ptB b', ψ Q, ψ P] :=
          tc_min_sub hmin6 _ ![0, 1, 2, 3, 5, 4] ![0, 1, 2, 3, 5, 4] (by norm_num) (by decide)
            (by intro i; fin_cases i <;> rfl)
        have := claim_chamber_general hd'.1 hd'.2.1 hu.le (by linarith) hQ' hQE' hP' hPE'
          (by rw [sarea_swap₂₃, ← sarea_cycle]; linarith [hsB])
          (by rw [sarea_swap₂₃, ← sarea_cycle]; linarith [hsE]) hG
        exact absurd this (not_lt.2 (le_trans A₀_bounds.1.le hmin6'))
    · -- same side: the line table of `TYPE_II.md` §12 and `B(1) = 177/448 < 1/2`
      have hBE : 0 < sarea (ψ P) (ψ Q) (ptB b') * sarea (ψ P) (ψ Q) (ptE R.2) := by
        rw [hsB, hsE]; linarith
      have ht := claim_PQ_line_table (s := 7 / 64) (by norm_num) hd'.1 hd'.2.1 hu (by linarith)
        hP' hPE' hQ' hQE' (le_trans (by norm_num) (le_trans A₀_bounds.1.le hmin6)) hBE
      simp only at ht
      obtain ⟨hcases, h1, h2, h3⟩ := ht
      have hb'0 := hd'.1
      have hv0 : 0 < 1 - R.2 := by linarith
      apply theorem8_same (b' := b') (v := 1 - R.2) (by linarith) hv1 hb'2
      rcases hcases with c | c | c
      · exact (h1 c).2
      · obtain ⟨hA, hA2⟩ := h2 c
        have : 7 / 64 * (1 + (1 + b') * (1 - R.2)) ≥ 7 / 64 * ((1 - R.2) + 1) := by
          nlinarith [mul_pos hb'0 hv0]
        nlinarith
      · obtain ⟨hA, hA2⟩ := h3 c
        have : 7 / 64 * (2 + b' * (1 - R.2)) ≥ 7 / 64 * ((1 - R.2) + 1) := by
          nlinarith [mul_pos hb'0 hv0]
        nlinarith

/-- **Claim** (`TYPE_II_COMPLETION:claim-containing-triangles`, made up; (30)–(31)). In the final
placement, `L` lies strictly inside `DES`, and `S` strictly inside `CLR` (counterclockwise
`C, L, R`); if `Q` is above `ES` then also `Q ∈ int(DES)` (30); if `Q` is above `LR` then also
`Q ∈ int(CLR)` (31). `hand/TYPE_II_COMPLETION.md`, lines 1025–1063.

Implicit in the manuscript: (31) is proved through the shear (26), which needs only
`0 < b' < 1`; equivalently by reading the diagonal sectors directly (line 1063). -/
theorem claim_containing_triangles {l b : ℝ} {L P Q R S : Point}
    (hfp : FinalPlacement l b L P Q R S) :
    InTriangle L ptD (ptE l) S ∧ InTriangle S ptC L R ∧
      (0 < sarea (ptE l) S Q → InTriangle Q ptD (ptE l) S) ∧
      (0 < sarea L R Q → InTriangle Q ptC L R) := by
  obtain ⟨⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, hb2, hL, hLce, hP,
    hPce, hQ, hQce, hR, hSr⟩, hS, sL, sP, sQ, sS⟩ := hfp
  have hRr : b + (1 - b) * R.2 < R.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hR; linarith
  have hu1' : R.2 < 1 := by nlinarith
  have hSr' : b + (1 - b) * S.2 < S.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hSr; linarith
  have hS2 : S.2 < 1 := by nlinarith [hSsq.2.1, hSsq.2.2.1]
  have hLy := (pos_L hb hl1 hL hLce).1
  have hLDEC := (pos_L hb hl1 hL hLce).2
  have hDRL := DRL_neg hb hb1 hl1 hL hR hu0
  have hECS : sarea (ptE l) ptC S < 0 := by linarith [sS.2.1, sarea_swap₁₂ (ptE l) ptC S]
  have hS1 : b < S.1 := by nlinarith [mul_nonneg (sub_nonneg.2 hb1.le) hSsq.2.2.1]
  have hDES : 0 < sarea ptD (ptE l) S := by
    simp only [sarea, ptD, ptE]; nlinarith [mul_pos (show 0 < 1 - l by linarith)
      (show 0 < S.1 by linarith)]
  -- (a) `L ∈ int(DES)`
  have hESL : 0 < sarea (ptE l) S L := by
    refine tc_pos_of_inTri hLDEC ?_ ?_ ?_ ?_
    · linarith [sarea_cycle ptD (ptE l) S]
    · simp only [sarea]; ring_nf; rfl
    · linarith [sarea_swap₂₃ (ptE l) ptC S]
    · have : sarea (ptE l) S (ptE l) = 0 := by unfold sarea; ring
      linarith [sarea_cycle ptD (ptE l) S, sarea_swap₂₃ (ptE l) ptC S]
  have hSDL : 0 < sarea S ptD L := by
    have hDBS : 0 < sarea ptD (ptB b) S := by
      simp only [sarea, ptD, ptB]; nlinarith [hSsq.2.2.1]
    refine tc_pos_of_inTri hL ?_ ?_ ?_ ?_
    · simp only [sarea]; ring_nf; rfl
    · linarith [sarea_cycle S ptD (ptE l), sarea_cycle ptD (ptE l) S]
    · linarith [sarea_cycle (ptB b) S ptD, sarea_cycle ptD (ptB b) S]
    · have : sarea S ptD ptD = 0 := by unfold sarea; ring
      linarith [sarea_cycle S ptD (ptE l), sarea_cycle ptD (ptE l) S,
        sarea_cycle (ptB b) S ptD, sarea_cycle ptD (ptB b) S]
  -- (b) `S ∈ int(CLR)`
  have hRCL : 0 < sarea R ptC L := by
    have hCER := TypeIICompletion.sarea_CER_nonneg hb hb1 hl hl1 hR hr1
    refine tc_pos_of_inTri hLDEC ?_ ?_ ?_ ?_ <;>
      simp only [sarea, ptC, ptD, ptE] at hCER ⊢ <;> nlinarith
  have hCLR : 0 < sarea ptC L R := by linarith [sarea_cycle R ptC L]
  have hBCL : 0 < sarea (ptB b) ptC L := by
    refine tc_pos_of_inTri hL ?_ ?_ ?_ ?_ <;> simp only [sarea, ptC, ptD, ptE, ptB] <;> nlinarith
  have hCLS : 0 < sarea ptC L S := by
    refine tc_pos_of_inTri hS ?_ ?_ ?_ ?_
    · linarith [sarea_cycle (ptB b) ptC L, sarea_cycle ptC L (ptB b)]
    · exact hCLR.le
    · simp only [sarea]; ring_nf; rfl
    · have : sarea ptC L ptC = 0 := by unfold sarea; ring
      linarith [sarea_cycle (ptB b) ptC L, sarea_cycle ptC L (ptB b)]
  have hSDRC : InTriangle S ptD R ptC := ⟨sS.2.2, sS.1, by simp only [sarea, ptC, ptD]; linarith⟩
  have hLRS : 0 < sarea L R S := by
    refine tc_pos_of_inTri hSDRC ?_ ?_ ?_ ?_
    · linarith [sarea_cycle ptD L R, sarea_swap₂₃ ptD R L]
    · simp only [sarea]; ring_nf; rfl
    · linarith [sarea_cycle ptC L R]
    · have : sarea L R R = 0 := by unfold sarea; ring
      linarith [sarea_cycle ptD L R, sarea_swap₂₃ ptD R L, sarea_cycle ptC L R]
  refine ⟨⟨hL.1, hESL, hSDL⟩, ⟨hCLS, hLRS, hS.2.1⟩, fun hQS => ?_, fun hQL => ?_⟩
  · -- (30)
    have hDQ : 0 < sarea ptD (ptE l) Q := by
      refine tc_pos_of_inTri hQ ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptE, ptB, ptC] <;> nlinarith
    have hDQR : 0 < sarea ptD Q R := by
      linarith [sQ.2.1, sarea_swap₁₂ ptD R Q, sarea_swap₂₃ ptD R Q]
    have hQy : Q.2 < 1 := by have := hQ.2.2; simp only [sarea, ptC, ptD] at this; linarith
    have := tc_ccw_trans (O := ptD) (X := Q) (Y := R) (Z := S) (by simp only [ptD]; linarith)
      (by simp only [ptD]; linarith) (by simp only [ptD]; linarith) hDQR sS.2.2
    exact ⟨hDQ, hQS, by linarith [sarea_cycle ptD Q S, sarea_cycle S ptD Q]⟩
  · -- (31)
    have hRCQ := RC_pos_of_central hb hQ hR hu1
    have hQy : Q.2 < 1 := by have := hQ.2.2; simp only [sarea, ptC, ptD] at this; linarith
    have hLy' : L.2 < 1 := by simp only [sarea, ptC, ptD] at hLy; linarith
    have hCLE : 0 < sarea ptC L (ptE l) := by
      linarith [sarea_swap₁₂ (ptE l) ptC L, sarea_swap₂₃ ptC (ptE l) L]
    have hCEQ : 0 < sarea ptC (ptE l) Q := by linarith [sarea_swap₁₂ (ptE l) ptC Q]
    have := tc_ccw_trans (O := ptC) (X := L) (Y := ptE l) (Z := Q) (by simp only [ptC]; linarith)
      (by simp only [ptC, ptE]; linarith) (by simp only [ptC]; linarith) hCLE hCEQ
    exact ⟨this, hQL, hRCQ⟩

/-- The one-sided step of §9.2 for `ES`: if `Q` is above `ES`, then `q > 1 - s`. -/
theorem one_sided_ES {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hQS : 0 < sarea (ptE l) S Q) : 1 - 7 / 64 < 1 - l := by
  obtain ⟨hLin, -, hQin, -⟩ := claim_containing_triangles hfp
  have hQin := hQin hQS
  obtain ⟨⟨⟨hb, hb1, hl, hl1, -, -, -, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, -⟩, hS, -, -, -, sS⟩ := hfp
  have hs2 : (0 : ℝ) < 7 / 128 := by norm_num
  have h5 : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptE l, S, L, Q] :=
    tc_min_sub (by norm_num; exact hmin) _ ![0, 2, 8, 4, 6] ![0, 0, 1, 0, 3, 0, 4, 0, 2]
      (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
  have hK := tc_two_int (by norm_num) hLin hQin h5
  have hRCS := tc_ge_of_pos hs2 hmin 7 1 8 hS.2.1
  simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one]
    at hRCS
  simp only [sarea, ptD, ptE, ptC] at hK hRCS
  have hKs := tc_Ks_gt
  have hS1 : S.1 ≤ 1 - 7 / 64 := by
    have h1 := mul_nonneg (sub_nonneg.2 hr1) (sub_nonneg.2 hSsq.2.2.2)
    have h2 := mul_nonneg hu0 (sub_nonneg.2 hSsq.2.1)
    nlinarith
  nlinarith [mul_le_mul_of_nonneg_left hS1 (show 0 ≤ 1 - l by linarith)]

/-- The one-sided step of §9.2 for `LR`: if `Q` is above `LR`, then `v > 1 - s`. -/
theorem one_sided_LR {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hQL : 0 < sarea L R Q) : 1 - 7 / 64 < 1 - R.2 := by
  obtain ⟨-, hSin, -, hQin⟩ := claim_containing_triangles hfp
  have hQin := hQin hQL
  obtain ⟨⟨⟨hb, hb1, hl, hl1, hLsq, -, -, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, -, hL, -⟩, hS, -, -, -,
    sS⟩ := hfp
  have hs2 : (0 : ℝ) < 7 / 128 := by norm_num
  have h5 : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptC, L, R, S, Q] :=
    tc_min_sub (by norm_num; exact hmin) _ ![1, 4, 7, 8, 6] ![0, 0, 0, 0, 1, 0, 4, 2, 3]
      (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
  have hK := tc_two_int (by norm_num) hSin hQin h5
  have hDEL := tc_ge_of_pos hs2 hmin 0 2 4 hL.1
  simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one]
    at hDEL
  simp only [sarea, ptD, ptE, ptC] at hK hDEL
  have hKs := tc_Ks_gt
  have hL1 : 7 / 64 ≤ L.1 := by nlinarith [hLsq.1]
  have hv : 0 < 1 - R.2 := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_nonneg (sub_nonneg.2 hr1) (sub_nonneg.2 hLsq.2.2.2),
      mul_nonneg (show 0 ≤ R.2 - 1 by linarith) (show 0 ≤ 1 - L.1 by linarith [hLsq.2.1])]
  nlinarith [mul_le_mul_of_nonneg_left hL1 hv.le, mul_nonneg (sub_nonneg.2 hr1)
    (sub_nonneg.2 hLsq.2.2.2)]

/-- **Theorem 9** (`TYPE_II_COMPLETION:Theorem9`). In the final placement, at doubled threshold
`s = 7/64`, `Q` cannot be above both `ES` and `LR`: the two-interior bounds on `DES` and `CLR`
(32) give `q, v > 1 - s`, contradicting `[EBR] ≥ s`. `hand/TYPE_II_COMPLETION.md`,
lines 1007–1116.

Uses: TYPE_II_COMPLETION:claim-containing-triangles, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem9 {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : 0 < sarea (ptE l) S Q ∧ 0 < sarea L R Q) :
    minTriangleArea (typeIIConfig l b L P Q R S) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hq := one_sided_ES hfp hcon hcell.1
  have hv := one_sided_LR hfp hcon hcell.2
  obtain ⟨hpl, hS, -⟩ := hfp
  obtain ⟨-, -, hδpos⟩ := lemma4_delta hpl hS hcon
  obtain ⟨⟨hb, hb1, hl, hl1, -, -, -, ⟨hr0, hr1, hu0, hu1⟩, -⟩, -, -, -, -, -, -, -, hR, -⟩ :=
    hpl
  have hδ := tc_ge_of_pos (by norm_num : (0 : ℝ) < 7 / 128) hcon 2 3 7 hδpos
  simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one]
    at hδ
  simp only [sarea, ptE, ptB] at hδ
  have hrb : 0 ≤ R.1 - b := by
    simp only [IsRight, sarea, ptB, ptC] at hR; nlinarith [mul_nonneg (sub_nonneg.2 hb1.le) hu0]
  nlinarith [mul_le_mul_of_nonneg_left (show R.2 ≤ 7 / 64 by linarith) hb.le,
    mul_le_mul_of_nonneg_right (show l ≤ 7 / 64 by linarith) hrb]

/-- **Claim** (`TYPE_II_COMPLETION:claim-one-sided`, made up; §9.3). In the final placement at
doubled threshold `s = 7/64`, with `q = 1 - λ`, `R = (r,u)`, `v = 1 - u`: if `Q` is above `ES`
then `q > 1 - s`, `λ < s`, `u > s`, `v < 1 - s`; if `Q` is above `LR` then `v > 1 - s`, `u < s`,
`λ > s`, `q < 1 - s`. `hand/TYPE_II_COMPLETION.md`, lines 1118–1137.

Uses: TYPE_II_COMPLETION:claim-containing-triangles, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_one_sided {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    (0 < sarea (ptE l) S Q →
        1 - 7 / 64 < 1 - l ∧ l < 7 / 64 ∧ 7 / 64 < R.2 ∧ 1 - R.2 < 1 - 7 / 64) ∧
      (0 < sarea L R Q →
        1 - 7 / 64 < 1 - R.2 ∧ R.2 < 7 / 64 ∧ 7 / 64 < l ∧ 1 - l < 1 - 7 / 64) := by
  have hES := one_sided_ES hfp hmin
  have hLR := one_sided_LR hfp hmin
  obtain ⟨hpl, hS, -⟩ := hfp
  obtain ⟨-, -, hδpos⟩ := lemma4_delta hpl hS hmin
  obtain ⟨⟨hb, hb1, hl, hl1, -, -, -, ⟨hr0, hr1, hu0, hu1⟩, -⟩, -, -, -, -, -, -, -, hR, -⟩ :=
    hpl
  have hδ := tc_ge_of_pos (by norm_num : (0 : ℝ) < 7 / 128) hmin 2 3 7 hδpos
  simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one]
    at hδ
  simp only [sarea, ptE, ptB] at hδ
  have hrb : 0 < R.1 - b := by
    simp only [IsRight, sarea, ptB, ptC] at hR; nlinarith [mul_nonneg (sub_nonneg.2 hb1.le) hu0]
  refine ⟨fun hQS => ?_, fun hQL => ?_⟩
  · have hq := hES hQS
    have hu : 7 / 64 < R.2 := by
      by_contra hcon; push Not at hcon
      nlinarith [mul_le_mul_of_nonneg_left hcon hb.le,
        mul_lt_mul_of_pos_right (show l < 7 / 64 by linarith) hrb]
    exact ⟨hq, by linarith, hu, by linarith⟩
  · have hv := hLR hQL
    have hl' : 7 / 64 < l := by
      by_contra hcon; push Not at hcon
      nlinarith [mul_lt_mul_of_pos_left (show R.2 < 7 / 64 by linarith) hb,
        mul_le_mul_of_nonneg_right hcon hrb.le]
    exact ⟨hv, by linarith, hl', by linarith⟩

/-- The scalar end of Theorem 10: (33) with the bounds (37)–(38). -/
theorem theorem10_scalar {H h : ℝ} (hh : 7 / 64 ≤ h) (hh0 : h ≤ 35607 / 77824)
    (hH0 : H ≤ 363 / 1024) (hΦ : 0 ≤ H * h - 7 / 64 * (H + 2 * h + 2 * (7 / 64))) : False := by
  nlinarith [mul_nonneg (sub_nonneg.2 hH0) (show 0 ≤ h - 7 / 64 by linarith),
    mul_nonneg (sub_nonneg.2 hh0) (show (0 : ℝ) ≤ 363 / 1024 - 2 * (7 / 64) by norm_num)]

/-- The barycentric inequality (33) of §10.1. -/
theorem bary33 {H h ηQ EB ER A1 A2 A3 : ℝ} (hbary : H * ηQ = A1 * (-EB) + A2 * (-ER) + A3 * h)
    (hsum : A1 + A2 + A3 = H) (hA1 : 7 / 64 ≤ A1) (hA2 : 7 / 64 ≤ A2) (hEB : 7 / 64 ≤ EB)
    (hER : 7 / 64 ≤ ER) (hηQ : 7 / 64 ≤ ηQ) (hh : 0 ≤ h) (hH : 0 ≤ H) :
    0 ≤ H * h - 7 / 64 * (H + 2 * h + 2 * (7 / 64)) := by
  nlinarith [mul_nonneg (show 0 ≤ A1 - 7 / 64 by linarith) (show 0 ≤ EB by linarith),
    mul_nonneg (show 0 ≤ A2 - 7 / 64 by linarith) (show 0 ≤ ER by linarith),
    mul_nonneg (show 0 ≤ A1 + A2 - 2 * (7 / 64) by linarith) hh,
    mul_nonneg (show 0 ≤ ηQ - 7 / 64 by linarith) hH]

/-- The bound (37) on `h = [ESL]`. -/
theorem h_bound {k a c l' lam : ℝ} (hk0 : 0 ≤ k) (hk : k ≤ 50 / 57) (ha0 : 0 ≤ a)
    (ha : a ≤ 9 / 16) (hl' : 7 / 64 ≤ l') (hc : 3 * (7 / 64) ≤ c) (hlam : 0 ≤ lam)
    (hkl : l' ≤ k) : k * a - l' * c - lam * (k - l') ≤ 35607 / 77824 := by
  nlinarith [mul_le_mul_of_nonneg_right hk ha0,
    mul_le_mul_of_nonneg_left ha (show (0 : ℝ) ≤ 50 / 57 by norm_num),
    mul_le_mul hl' hc (by norm_num) (by linarith), mul_nonneg hlam (sub_nonneg.2 hkl)]

/-- The bound (38) on `H = [BRL]`. -/
theorem H_bound {b r u a l' : ℝ} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hrb : 0 ≤ r - b) (hr1 : r ≤ 1)
    (hu0 : 0 ≤ u) (hu : u ≤ 3 / 16) (ha0 : 0 ≤ a) (hba : b * a ≤ b - 2 * (7 / 64))
    (hl' : 7 / 64 ≤ l') (hlb : l' ≤ b) :
    (r - b) * a + u * (b - l') ≤ 363 / 1024 := by
  have h1 : b * ((r - b) * a) ≤ (1 - b) * (b - 2 * (7 / 64)) := by
    have : 0 ≤ b - 2 * (7 / 64) := by nlinarith
    nlinarith [mul_le_mul_of_nonneg_left hba hrb,
      mul_le_mul_of_nonneg_right (show r - b ≤ 1 - b by linarith) this]
  have h2 : u * (b - l') ≤ 3 / 16 * (b - 7 / 64) := by
    nlinarith [mul_le_mul_of_nonneg_right hu (show 0 ≤ b - l' by linarith)]
  have h3 : 0 ≤ (1 / 2 - b) * (4 * (7 / 64) - 13 / 16 * b) :=
    mul_nonneg (by linarith) (by linarith)
  by_contra hcon'
  push Not at hcon'
  nlinarith [mul_lt_mul_of_pos_left hcon' hb, mul_le_mul_of_nonneg_left h2 hb.le]

/-- **Theorem 10** (`TYPE_II_COMPLETION:Theorem10`). In the final placement, at doubled threshold
`s = 7/64`, `Q` cannot be above `ES` and below `LR`: `Q` is inside `BRL`, the barycentric weights
give (33), and the rational bounds `h ≤ 35607/77824` (37), `H ≤ 363/1024` (38) make
`Φ(H₀, h₀) = -47171/79691776 < 0`. `hand/TYPE_II_COMPLETION.md`, lines 1140–1298.

Uses: TYPE_II_COMPLETION:claim-one-sided, TYPE_II_COMPLETION:claim-containing-triangles,
TYPE_II_COMPLETION:Corollary5 (`v ≥ Ks`; here from `P, S ∈ DCR`). -/
theorem theorem10 {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : 0 < sarea (ptE l) S Q ∧ sarea L R Q < 0) :
    minTriangleArea (typeIIConfig l b L P Q R S) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  obtain ⟨hq, hl', hu, hv⟩ := (claim_one_sided hfp hcon).1 hcell.1
  obtain ⟨hLin, -, -, -⟩ := claim_containing_triangles hfp
  obtain ⟨hpl, hS, sL, sP, sQ, sS⟩ := hfp
  obtain ⟨-, -, -, hSECR⟩ := lemma4 hpl hS hcon
  obtain ⟨⟨hb, hb1, hl, hl1, hLsq, hPsq, hQsq, ⟨hr0, hr1, hu0, hu1⟩, hSsq⟩, hb2, hL, hLce, hP,
    hPce, hQ, hQce, hR, hSr⟩ := hpl
  have hs2 : (0 : ℝ) < 7 / 128 := by norm_num
  have hRr : b + (1 - b) * R.2 < R.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hR; linarith
  have hSr' : b + (1 - b) * S.2 < S.1 := by
    simp only [IsRight, sarea, ptB, ptC] at hSr; linarith
  have hS2 : S.2 < 1 := by nlinarith [hSsq.2.1, hSsq.2.2.1]
  -- `v ≥ K s` from `P, S ∈ DRC`
  have hKv : Ktwo * (7 / 64) ≤ 1 - R.2 := by
    have hPin : InTriangle P ptD R ptC := ⟨sP.2.1, RC_pos_of_central hb hP hR hu1, hP.2.2⟩
    have hSin : InTriangle S ptD R ptC :=
      ⟨sS.2.2, sS.1, by simp only [sarea, ptC, ptD]; linarith⟩
    have h5 : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, R, ptC, P, S] :=
      tc_min_sub (by norm_num; exact hcon) _ ![0, 7, 1, 5, 8] ![0, 2, 0, 0, 0, 3, 0, 1, 4]
        (by norm_num) (by decide) (by intro i; fin_cases i <;> rfl)
    have := tc_two_int (by norm_num) hPin hSin h5
    simp only [sarea, ptD, ptC] at this; linarith
  have hKs := tc_Ks_gt
  -- `Q ∈ int(BRL)`
  have hLBQ : 0 < sarea L (ptB b) Q := by
    have hBDL := hL.2.2
    have hBCL : 0 < sarea (ptB b) ptC L := by
      refine tc_pos_of_inTri hL ?_ ?_ ?_ ?_ <;> simp only [sarea, ptC, ptD, ptE, ptB] <;> nlinarith
    refine tc_pos_of_inTri hQ ?_ ?_ ?_ ?_
    · linarith [sarea_cycle ptD L (ptB b), sarea_cycle (ptB b) ptD L]
    · simp only [sarea]; ring_nf; rfl
    · linarith [sarea_cycle (ptB b) ptC L, sarea_cycle ptC L (ptB b)]
    · have : sarea L (ptB b) (ptB b) = 0 := by unfold sarea; ring
      linarith [sarea_cycle ptD L (ptB b), sarea_cycle (ptB b) ptD L,
        sarea_cycle (ptB b) ptC L, sarea_cycle ptC L (ptB b)]
  have hBRQ : 0 < sarea (ptB b) R Q := by
    refine tc_pos_of_inTri hQ ?_ ?_ ?_ ?_ <;> simp only [sarea, ptD, ptB, ptC] <;> nlinarith
  have hRLQ : 0 < sarea R L Q := by linarith [sarea_swap₁₂ L R Q]
  -- the actual areas
  have a1 := tc_ge_of_pos hs2 hcon 7 4 6 hRLQ
  have a2 := tc_ge_of_pos hs2 hcon 4 3 6 hLBQ
  have a3 := tc_ge_of_pos hs2 hcon 3 7 6 hBRQ
  have a4 := tc_ge_of_pos hs2 hcon 2 8 6 hcell.1
  have a5 := tc_ge_of_pos hs2 hcon 2 8 4 hLin.2.1
  have hS1 : b < S.1 := by nlinarith [mul_nonneg (sub_nonneg.2 hb1.le) hSsq.2.2.1]
  have hEBS : 0 < sarea (ptE l) (ptB b) S := by
    simp only [sarea, ptE, ptB]; nlinarith [mul_nonneg hb.le hSsq.2.2.1,
      mul_pos hl (show 0 < S.1 - b by linarith)]
  have a6 := tc_ge_of_pos hs2 hcon 2 3 8 hEBS
  have a7 := tc_ge_of_pos hs2 hcon 2 7 8 hSECR.1
  have a8 := tc_ge_of_pos hs2 hcon 0 2 4 hL.1
  have a9 := tc_ge_of_pos hs2 hcon 3 0 4 hL.2.2
  have a10 := tc_ge_of_pos hs2 hcon 7 1 8 hS.2.1
  have a11 := tc_ge_of_pos hs2 hcon 0 7 8 sS.2.2
  simp only [typeIIConfig_eq, Matrix.cons_val, Matrix.cons_val_zero, Matrix.cons_val_one]
    at a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
  -- (33)
  have h33 := bary33 (H := sarea (ptB b) R L) (h := sarea (ptE l) S L)
    (ηQ := sarea (ptE l) S Q) (EB := sarea (ptE l) (ptB b) S) (ER := sarea (ptE l) R S)
    (A1 := sarea R L Q) (A2 := sarea L (ptB b) Q) (A3 := sarea (ptB b) R Q)
    (by rw [tc_sarea_bary (ptB b) R L Q (ptE l) S, sarea_swap₂₃ (ptE l) S (ptB b),
      sarea_swap₂₃ (ptE l) S R]; ring)
    (by linarith [sarea_add_sarea_add_sarea (ptB b) R L Q]) (by linarith) (by linarith)
    (by linarith) (by linarith) (by linarith) (by linarith)
    (by linarith [sarea_add_sarea_add_sarea (ptB b) R L Q])
  -- bounds
  have eh : sarea (ptE l) S L = S.1 * L.2 - L.1 * S.2 - l * (S.1 - L.1) := by
    simp only [sarea, ptE]; ring
  have eH : sarea (ptB b) R L = (R.1 - b) * L.2 + R.2 * (b - L.1) := by
    simp only [sarea, ptB]; ring
  simp only [sarea, ptD, ptE, ptB, ptC] at a8 a9 a10 a11
  have hl1' : 7 / 64 ≤ L.1 := by nlinarith only [a8, mul_nonneg hl.le hLsq.1, hLsq.1]
  have hba : b * L.2 ≤ b - 2 * (7 / 64) := by linarith only [a9, hl1']
  have hk : S.1 ≤ 50 / 57 := by
    have h1 := mul_nonneg (sub_nonneg.2 hr1) (sub_nonneg.2 hSsq.2.2.2)
    have h2 : 7 / 64 ≤ (1 - R.2) * (1 - S.1) := by linarith only [a10, h1]
    nlinarith only [h2, hv, mul_le_mul_of_nonneg_right hv.le (sub_nonneg.2 hSsq.2.1)]
  have hc : 3 * (7 / 64) ≤ S.2 := by linarith only [a10, a11, hu]
  have hLb : L.1 < b := by nlinarith only [a9, mul_nonneg hb.le hLsq.2.2.1]
  have hLa : L.2 ≤ 9 / 16 := by
    by_contra hcon'; push Not at hcon'
    nlinarith only [hba, hb, hb2, mul_pos hb (show 0 < L.2 - 9 / 16 by linarith)]
  have hh0 : sarea (ptE l) S L ≤ 35607 / 77824 := by
    rw [eh]; exact h_bound (by linarith) hk hLsq.2.2.1 hLa hl1' hc hl.le (by linarith)
  have hH0 : sarea (ptB b) R L ≤ 363 / 1024 := by
    have hrb : 0 ≤ R.1 - b := by nlinarith only [hRr, mul_nonneg (sub_nonneg.2 hb1.le) hu0]
    rw [eH]; exact H_bound hb hb2 hrb hr1 hu0 (by linarith) hLsq.2.2.1 hba hl1' hLb.le
  exact theorem10_scalar (by linarith) hh0 hH0 h33

end Heilbronn.TypeIICompletion
