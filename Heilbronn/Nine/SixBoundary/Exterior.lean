module

public import Heilbronn.Nine.SixBoundary.Hull
public import Heilbronn.Nine.Hulls.QuadrilateralHull
public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle

/-! # Exterior restrictions for larger hulls in family N

Restrictions on the free points outside the anchor hexagon, valid throughout family N with any
number of additional hull vertices.

Setting: `nConfig a h b c d f X Y Z` with `NAnchors a h b c d f`, no exact-hull hypothesis, free
points anywhere in the square (extra boundary contacts allowed). Thresholds: least area `A₀` for
`not_inCap00` (through the bound `hc/20` of `cap00_triangle_lt`), and every doubled area at least `s = 7/64`
for `atMostOne_sideCaps`, `oppositeCap_octagon` and `occupiedSideCap_ear_lt` (the proof of `occupiedSideCap_ear_lt` uses the costs
`[BCX], [CDX], [ABC], [HDF] ≥ s`).

Main results:
* `cap00_triangle_lt`: a point of the closed cap `(0,0)AB` makes one of `AHX, BCX, ABX` smaller than
  `hc/20`;
* `not_inCap00`: in a competitive configuration the closed cap `(0,0)AB` contains no free point;
* `exterior_partition`: the open square is the anchor hexagon together with the four
  closed caps; a free point of `T₀` lies in `HABC`; `T₀` holds at most one free point; and with
  exactly six contacts some free point lies in `R ∪ T ∪ L`;
* `atMostOne_sideCaps`: each side cap `R = CD(1,0)`, `L = FH(0,1)` contains at most one free point;
* `oppositeCap_octagon`: three free points in the opposite cap form, with `D, F`, a convex quadrilateral
  `D, E, G, F` with the third point `O ∈ DEF ∩ DGF`, the direction `E → G` points strictly left
  and up, and the full hull is the octagon `A, B, C, D, E, G, F, H` (proved through the support
  triangle `TypeII.support_apex` and its five cells: `support_cell_II`, `support_direction`; the
  octagon signs by `cap_triples`, `chord_triples`, `octagon_convex`);
* `occupiedSideCap_ear_lt`: an occupied side cap `R` gives `[ABH] < 3s` (transposed: `L` gives `[ABC] < 3s`);
* `anchorPairBound_slide`: projecting a side-cap point onto its square side keeps every anchor-pair cost.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryExterior

open SixBoundary

/-! ### The double-contact cap -/

/-- The scalar core of `cap00_triangle_lt`: `10αβ(1-α)(1-β) < 1 - αβ` on `(0,1)²` (via `t = √(αβ)`,
`(1-α)(1-β) ≤ (1-t)²` and `10t³ - 10t² + t + 1 > 0`). -/
theorem cap00_scalar {α β : ℝ} (ha : 0 < α) (ha1 : α < 1) (hb : 0 < β) (hb1 : β < 1) :
    10 * α * β * (1 - α) * (1 - β) < 1 - α * β := by
  have hab : 0 < α * β := mul_pos ha hb
  obtain ⟨t, ht0, ht2⟩ : ∃ t : ℝ, 0 < t ∧ t ^ 2 = α * β :=
    ⟨Real.sqrt (α * β), Real.sqrt_pos.2 hab, Real.sq_sqrt hab.le⟩
  have ht1 : t < 1 := by nlinarith
  have hsum : 2 * t ≤ α + β := by nlinarith [sq_nonneg (α - β)]
  have hprod : (1 - α) * (1 - β) ≤ (1 - t) ^ 2 := by nlinarith
  have hcub : 0 < 10 * t ^ 3 - 10 * t ^ 2 + t + 1 := by
    nlinarith [sq_nonneg (t - 3 / 5), sq_nonneg t]
  have h1 : 10 * α * β * (1 - α) * (1 - β) ≤ 10 * t ^ 2 * (1 - t) ^ 2 := by
    have := mul_le_mul_of_nonneg_left hprod (by positivity : (0 : ℝ) ≤ 10 * t ^ 2)
    rw [ht2] at this ⊢
    nlinarith
  have h2 : 10 * t ^ 2 * (1 - t) ^ 2 < 1 - t ^ 2 := by nlinarith
  linarith

/-- `cap00_scalar` in unnormalized form: `10ab(h-a)(c-b) < hc(hc - ab)`. -/
theorem cap00_scalar' {a h b c : ℝ} (ha : 0 < a) (hah : a < h) (hb : 0 < b) (hbc : b < c) :
    10 * (a * b) * ((h - a) * (c - b)) < h * c * (h * c - a * b) := by
  have hh : 0 < h := by linarith
  have hc : 0 < c := by linarith
  have k := cap00_scalar (α := a / h) (β := b / c) (by positivity)
    (by rw [div_lt_one hh]; exact hah) (by positivity) (by rw [div_lt_one hc]; exact hbc)
  have e1 : 10 * (a * b) * ((h - a) * (c - b)) =
      (h * c) ^ 2 * (10 * (a / h) * (b / c) * (1 - a / h) * (1 - b / c)) := by
    field_simp
  have e2 : h * c * (h * c - a * b) = (h * c) ^ 2 * (1 - a / h * (b / c)) := by
    field_simp
  rw [e1, e2]
  exact mul_lt_mul_of_pos_left k (by positivity)

set_option linter.unusedVariables false in
/-- Let `A = (0,a)`, `H = (0,h)`, `B = (b,0)`, `C = (c,0)` with `0 < a < h ≤ 1`, `0 < b < c ≤ 1`,
and let `X` lie in the closed triangle `conv{(0,0), A, B}`. Then one of the triangles
`AHX, BCX, ABX` has ordinary area strictly less than `hc/20 ≤ 1/20`. -/
theorem cap00_triangle_lt {a h b c : ℝ} {X : Point} (ha : 0 < a) (hah : a < h) (hh : h ≤ 1) (hb : 0 < b)
    (hbc : b < c) (hc : c ≤ 1) (hX1 : 0 ≤ X.1) (hX2 : 0 ≤ X.2)
    (hXAB : sarea (ptA a) (ptB b) X ≤ 0) :
    triangleArea (ptA a) (ptH h) X < h * c / 20 ∨ triangleArea (ptB b) (ptC c) X < h * c / 20 ∨
      triangleArea (ptA a) (ptB b) X < h * c / 20 := by
  obtain ⟨x, y⟩ := X
  simp only [sarea] at hXAB
  simp only at hX1 hX2
  by_contra hcon
  push Not at hcon
  obtain ⟨h1, h2, h3⟩ := hcon
  simp only [triangleArea_eq, ptA, ptH, ptB, ptC, sarea] at h1 h2 h3
  have e1 : |(0 - 0) * (y - a) - (h - a) * (x - 0)| = (h - a) * x := by
    rw [show (0 - 0) * (y - a) - (h - a) * (x - 0) = -((h - a) * x) by ring, abs_neg,
      abs_of_nonneg (mul_nonneg (by linarith) hX1)]
  have e2 : |(c - b) * (y - 0) - (0 - 0) * (x - b)| = (c - b) * y := by
    rw [show (c - b) * (y - 0) - (0 - 0) * (x - b) = (c - b) * y by ring,
      abs_of_nonneg (mul_nonneg (by linarith) hX2)]
  have e3 : |(b - 0) * (y - a) - (0 - a) * (x - 0)| = a * b - a * x - b * y := by
    rw [abs_of_nonpos hXAB]; ring
  rw [e1] at h1; rw [e2] at h2; rw [e3] at h3
  set S := h * c / 10 with hS
  have g1 : S ≤ (h - a) * x := by linarith
  have g2 : S ≤ (c - b) * y := by linarith
  have g3 : S ≤ a * b - a * x - b * y := by linarith
  have pa : 0 ≤ a * (c - b) := mul_nonneg ha.le (by linarith)
  have pb : 0 ≤ b * (h - a) := mul_nonneg hb.le (by linarith)
  have pab : 0 ≤ (h - a) * (c - b) := mul_nonneg (by linarith) (by linarith)
  have key : S * (h * c - a * b) ≤ (a * b) * ((h - a) * (c - b)) := by
    nlinarith [mul_le_mul_of_nonneg_left g1 pa, mul_le_mul_of_nonneg_left g2 pb,
      mul_le_mul_of_nonneg_left g3 pab]
  have k := cap00_scalar' ha hah hb hbc
  rw [hS] at key
  linarith

set_option linter.unusedVariables false in
/-- In a competitive configuration (least area at least `A₀`) of family N, the closed exterior
cap `conv{(0,0), A, B}` contains no free point. -/
theorem not_inCap00 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    ¬ InCap00 a b X ∧ ¬ InCap00 a b Y ∧ ¬ InCap00 a b Z := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, -⟩ := hN
  have hsmall : h * c / 20 < A₀ := by
    have : h * c ≤ 1 := by nlinarith
    linarith [A₀_bounds.1]
  have key : ∀ i : Fin 9, 6 ≤ i.val → ¬ InCap00 a b (nConfig a h b c d f X Y Z i) := by
    intro i hi ⟨hW, hWc⟩
    have hne : ∀ j : Fin 9, j.val < 6 → j ≠ i := fun j hj e => by subst e; omega
    rcases cap00_triangle_lt ha hah hh.le hb hbc hc.le hW.1 hW.2.2.1 hWc with h1 | h1 | h1
    · have := area_of_le_min hmin 0 1 i (by decide) (hne 1 (by decide)) (hne 0 (by decide))
      exact absurd (this.trans_lt h1) (by linarith)
    · have := area_of_le_min hmin 2 3 i (by decide) (hne 3 (by decide)) (hne 2 (by decide))
      exact absurd (this.trans_lt h1) (by linarith)
    · have := area_of_le_min hmin 0 2 i (by decide) (hne 2 (by decide)) (hne 0 (by decide))
      exact absurd (this.trans_lt h1) (by linarith)
  exact ⟨key 6 (by decide), key 7 (by decide), key 8 (by decide)⟩

/-! ### Consequences for the larger-hull cases -/

/-- (i) A point of the open square lies strictly inside the anchor hexagon or in one of the four
closed corner caps `(0,0)AB`, `R`, `T`, `L`. In a competitive configuration (least area at least
`A₀`): (ii) a free point of the virtual triangle `T₀ = (0,0)HC` lies inside `HABC` (by
`not_inCap00`); (iii) `T₀` contains at most one free point (by `QuadrilateralHull.nConfig_two_in_T0_exclusion`);
(iv) with exactly six contacts, some free point lies in `R ∪ T ∪ L` (by `not_inCap00` and the
exact-hull exclusion `SixBoundaryHull.false_of_all_inHexagon`). -/
theorem exterior_partition {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    (∀ W : Point, InOpenSquare W →
      InHexagon a h b c d f W ∨ InCap00 a b W ∨ InCapR c d W ∨ InCapT d f W ∨ InCapL f h W) ∧
    (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z) →
      (InT0 h c X → InLowerQuad a h b c X) ∧ (InT0 h c Y → InLowerQuad a h b c Y) ∧
        (InT0 h c Z → InLowerQuad a h b c Z) ∧ AtMostOne (InT0 h c) X Y Z ∧
        (ExactlySixContacts X Y Z →
          (InCapR c d X ∨ InCapT d f X ∨ InCapL f h X) ∨
            (InCapR c d Y ∨ InCapT d f Y ∨ InCapL f h Y) ∨
            (InCapR c d Z ∨ InCapT d f Z ∨ InCapL f h Z))) := by
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  have part : ∀ W : Point, InOpenSquare W →
      InHexagon a h b c d f W ∨ InCap00 a b W ∨ InCapR c d W ∨ InCapT d f W ∨ InCapL f h W := by
    intro W hW
    obtain ⟨w1, w2, w3, w4⟩ := hW
    have hWsq : W ∈ unitSquare := ⟨w1.le, w2.le, w3.le, w4.le⟩
    by_cases h00 : sarea (ptA a) (ptB b) W ≤ 0
    · exact Or.inr (Or.inl ⟨hWsq, h00⟩)
    by_cases hR : sarea (ptC c) (ptD d) W ≤ 0
    · exact Or.inr (Or.inr (Or.inl ⟨hWsq, hR⟩))
    by_cases hT : sarea (ptD d) (ptF f) W ≤ 0
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨hWsq, hT⟩)))
    by_cases hL : sarea (ptF f) (ptH h) W ≤ 0
    · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨hWsq, hL⟩)))
    push Not at h00 hR hT hL
    refine Or.inl ⟨h00, ?_, hR, hT, hL, ?_⟩
    · simp only [sarea]; nlinarith
    · simp only [sarea]; nlinarith
  refine ⟨part, fun hmin => ?_⟩
  have h0 := not_inCap00 hN hX hY hZ hmin
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Z) := lt_of_lt_of_le A₀_pos hmin
  -- a free point of `T₀` is inside `HABC`
  have lower : ∀ i : Fin 9, 6 ≤ i.val → nConfig a h b c d f X Y Z i ∈ unitSquare →
      ¬ InCap00 a b (nConfig a h b c d f X Y Z i) →
      InT0 h c (nConfig a h b c d f X Y Z i) → InLowerQuad a h b c (nConfig a h b c d f X Y Z i) := by
    intro i hi hWsq h00 ⟨t1, t2, t3⟩
    have hne : ∀ j : Fin 9, j.val < 6 → j ≠ i := fun j hj e => by subst e; omega
    set W := nConfig a h b c d f X Y Z i with hWdef
    have nAH := sarea_ne_zero_of_min_pos hpos 0 1 i (by decide) (hne 1 (by decide))
      (hne 0 (by decide))
    have nBC := sarea_ne_zero_of_min_pos hpos 2 3 i (by decide) (hne 3 (by decide))
      (hne 2 (by decide))
    have nCH := sarea_ne_zero_of_min_pos hpos 3 1 i (by decide) (hne 1 (by decide))
      (hne 3 (by decide))
    rw [← hWdef] at nAH nBC nCH
    change sarea (0, a) (0, h) W ≠ 0 at nAH
    change sarea (b, 0) (c, 0) W ≠ 0 at nBC
    change sarea (c, 0) (0, h) W ≠ 0 at nCH
    simp only [InCap00, not_and, not_le] at h00
    refine ⟨?_, h00 hWsq, ?_, lt_of_le_of_ne t3 (Ne.symm nCH)⟩
    · simp only [sarea] at nAH ⊢
      have : W.1 ≠ 0 := fun e => nAH (by rw [e]; ring)
      have : 0 < W.1 := lt_of_le_of_ne t1 (Ne.symm this)
      nlinarith
    · simp only [sarea] at nBC ⊢
      have : W.2 ≠ 0 := fun e => nBC (by rw [e]; ring)
      have : 0 < W.2 := lt_of_le_of_ne t2 (Ne.symm this)
      nlinarith
  have toQH : ∀ W : Point, InT0 h c W → QuadrilateralHull.InT0 h c W := by
    intro W ⟨t1, t2, t3⟩
    refine ⟨t1, t2, ?_⟩
    simp only [sarea] at t3
    linarith
  have hlt : minTriangleArea (nConfig a h b c d f X Y Z) < A₀ → False := fun h => by linarith
  refine ⟨lower 6 (by decide) hX h0.1, lower 7 (by decide) hY h0.2.1, lower 8 (by decide) hZ h0.2.2,
    ⟨fun hh => hlt ?_, fun hh => hlt ?_, fun hh => hlt ?_⟩, fun hsix => ?_⟩
  · have k := QuadrilateralHull.nConfig_two_in_T0_exclusion hN hX hY hZ (Or.inl ⟨toQH _ hh.1, toQH _ hh.2⟩)
    linarith [k.1, k.2.1, k.2.2]
  · have k := QuadrilateralHull.nConfig_two_in_T0_exclusion hN hX hY hZ (Or.inr (Or.inl ⟨toQH _ hh.1, toQH _ hh.2⟩))
    linarith [k.1, k.2.1, k.2.2]
  · have k := QuadrilateralHull.nConfig_two_in_T0_exclusion hN hX hY hZ (Or.inr (Or.inr ⟨toQH _ hh.1, toQH _ hh.2⟩))
    linarith [k.1, k.2.1, k.2.2]
  · by_contra hcon
    push Not at hcon
    obtain ⟨⟨xR, xT, xL⟩, ⟨yR, yT, yL⟩, ⟨zR, zT, zL⟩⟩ := hcon
    have hexX : InHexagon a h b c d f X := by
      rcases part X hsix.1 with h1 | h1 | h1 | h1 | h1
      exacts [h1, absurd h1 h0.1, absurd h1 xR, absurd h1 xT, absurd h1 xL]
    have hexY : InHexagon a h b c d f Y := by
      rcases part Y hsix.2.1 with h1 | h1 | h1 | h1 | h1
      exacts [h1, absurd h1 h0.2.1, absurd h1 yR, absurd h1 yT, absurd h1 yL]
    have hexZ : InHexagon a h b c d f Z := by
      rcases part Z hsix.2.2 with h1 | h1 | h1 | h1 | h1
      exacts [h1, absurd h1 h0.2.2, absurd h1 zR, absurd h1 zT, absurd h1 zL]
    exact SixBoundaryHull.false_of_all_inHexagon hN hX hY hZ hmin hexX hexY hexZ

/-! ### Side caps have capacity one -/

/-- `B(u) = k(1-u)² + u - 1/u < 1` on `(0, 1)`, `k = 57/7`. -/
theorem sideCap_B_lt_one {u : ℝ} (hu : 0 < u) (hu1 : u < 1) : 57 / 7 * (1 - u) ^ 2 + u - 1 / u < 1 := by
  have hcub : 57 * u ^ 3 - 107 * u ^ 2 + 50 * u - 7 < 0 := by
    nlinarith [mul_nonneg (sq_nonneg (u - 3 / 10)) (sub_nonneg.2 hu1.le),
      sq_nonneg (u - 3 / 10 - 119 / 3160)]
  have e : 57 / 7 * (1 - u) ^ 2 + u - 1 / u - 1 = (57 * u ^ 3 - 107 * u ^ 2 + 50 * u - 7) / (7 * u) := by
    field_simp; ring
  have : (57 * u ^ 3 - 107 * u ^ 2 + 50 * u - 7) / (7 * u) < 0 :=
    div_neg_of_neg_of_pos hcub (by positivity)
  linarith

theorem sideCap_B_eq {u : ℝ} (hu : 0 < u) (hu1 : u < 1) :
    (57 / 7 - 1 / u - 1 / (1 - u)) * (1 - u) ^ 2 - (1 - u) = 57 / 7 * (1 - u) ^ 2 + u - 1 / u := by
  have : (1 - u) ≠ 0 := by linarith
  field_simp; ring

theorem sideCap_scalar_of_add_le_one {u v D : ℝ} (hu : 0 < u) (hu1 : u < 1) (hv : 0 < v) (hD : D ≤ 57 / 7)
    (h7 : 1 ≤ (D - 1 / u - 1 / v) * (1 - u) ^ 2 - (1 - u)) (huv : u + v ≤ 1) : False := by
  have h1 : 1 / (1 - u) ≤ 1 / v := one_div_le_one_div_of_le hv (by linarith)
  have : (D - 1 / u - 1 / v) * (1 - u) ^ 2 ≤ (57 / 7 - 1 / u - 1 / (1 - u)) * (1 - u) ^ 2 :=
    mul_le_mul_of_nonneg_right (by linarith) (sq_nonneg _)
  linarith [sideCap_B_eq hu hu1, sideCap_B_lt_one hu hu1]

theorem sideCap_g_le {u v D : ℝ} (hu : 0 < u) (hv : 0 < v)
    (hbud : D * (u + v) - (1 / u + 1 / v) * (u + v - 1) ≤ 57 / 7) :
    D - 1 / u - 1 / v ≤ 57 / 7 / (u + v) - 1 / (u * v) := by
  have huv0 : 0 < u + v := by linarith
  have e1 : (D - 1 / u - 1 / v) * (u + v) =
      D * (u + v) - (1 / u + 1 / v) * (u + v - 1) - (u + v) / (u * v) := by
    field_simp; ring
  have e2 : (57 / 7 / (u + v) - 1 / (u * v)) * (u + v) = 57 / 7 - (u + v) / (u * v) := by
    field_simp
  refine le_of_mul_le_mul_right ?_ huv0
  rw [e1, e2]; linarith

theorem sideCap_g_le_sq {u v W : ℝ} (hu : 0 < u) (hv : 0 < v) (hW2 : W ^ 2 = 57 / 7 * u) :
    57 / 7 / (u + v) - 1 / (u * v) ≤ (W - 1) ^ 2 / u ^ 2 := by
  have hpos : 0 < u ^ 2 * v * (u + v) := by positivity
  have e1 : (57 / 7 / (u + v) - 1 / (u * v)) * (u ^ 2 * v * (u + v)) =
      57 / 7 * u ^ 2 * v - u * (u + v) := by
    field_simp
  have e2 : (W - 1) ^ 2 / u ^ 2 * (u ^ 2 * v * (u + v)) = (W - 1) ^ 2 * v * (u + v) := by
    field_simp
  have hW2' : W ^ 2 * (u * v) = 57 / 7 * u * (u * v) := by rw [hW2]
  refine le_of_mul_le_mul_right ?_ hpos
  rw [e1, e2]
  nlinarith [sq_nonneg ((W - 1) * v - u)]

theorem sideCap_mul_sq_le_one {u g W : ℝ} (hu : 0 < u) (hu1 : u < 1) (hW1 : 1 < W)
    (h10 : g ≤ (W - 1) ^ 2 / u ^ 2) (hWp : W * (1 - u) ≤ 1) : g * (1 - u) ^ 2 ≤ 1 := by
  have hq : (W - 1) * (1 - u) ≤ u := by linarith
  have hq0 : 0 ≤ (W - 1) * (1 - u) := mul_nonneg (by linarith) (by linarith)
  calc g * (1 - u) ^ 2 ≤ (W - 1) ^ 2 / u ^ 2 * (1 - u) ^ 2 :=
        mul_le_mul_of_nonneg_right h10 (sq_nonneg _)
    _ = ((W - 1) * (1 - u) / u) ^ 2 := by field_simp
    _ ≤ 1 := by
      rw [sq_le_one_iff_abs_le_one, abs_le]
      constructor
      · have : 0 ≤ (W - 1) * (1 - u) / u := by positivity
        linarith
      · rw [div_le_one hu]; exact hq

set_option linter.unusedVariables false in
theorem sideCap_g_mono {u v W : ℝ} (hu : 0 < u) (hu1 : u < 1) (hv : 0 < v) (hW0 : 0 ≤ W)
    (hW2 : W ^ 2 = 57 / 7 * u) (hvp : 1 - u < v) (hWp : 1 < W * (1 - u)) :
    57 / 7 / (u + v) - 1 / (u * v) ≤ 57 / 7 - 1 / u - 1 / (1 - u) := by
  set p := 1 - u with hp
  have hp0 : 0 < p := by linarith
  have h1 : u + p ≤ W * p := by linarith
  have h2 : u + v ≤ W * v := by nlinarith
  have hprod : (u + p) * (u + v) ≤ 57 / 7 * u * p * v := by
    have := mul_le_mul h1 h2 (by linarith) (by nlinarith)
    nlinarith
  have hup : u + p = 1 := by rw [hp]; ring
  have e0 : 57 / 7 - 1 / u - 1 / p = 57 / 7 / (u + p) - 1 / (u * p) := by
    rw [hup]; field_simp; linarith
  rw [e0]
  have e : (57 / 7 / (u + p) - 1 / (u * p)) - (57 / 7 / (u + v) - 1 / (u * v)) =
      (v - p) * (57 / 7 * u * p * v - (u + p) * (u + v)) / (u * p * v * (u + p) * (u + v)) := by
    field_simp; ring
  have : 0 ≤ (v - p) * (57 / 7 * u * p * v - (u + p) * (u + v)) /
      (u * p * v * (u + p) * (u + v)) := by
    apply div_nonneg
    · exact mul_nonneg (by linarith) (by linarith)
    · have : 0 < u + p := by linarith
      positivity
  linarith

/-- The scalar contradiction behind `atMostOne_sideCaps`, in the variables `u = s/(md)`, `v = s/(bd)` and
`D = d/s` (`s = 7/64`, `k = 57/7`): the cost bound `h7` and the budget `hbud` are incompatible. -/
theorem sideCap_scalar {u v D : ℝ} (hu : 0 < u) (hu1 : u < 1) (hv : 0 < v) (hD : D ≤ 57 / 7)
    (h7 : 1 ≤ (D - 1 / u - 1 / v) * (1 - u) ^ 2 - (1 - u))
    (hbud : D * (u + v) - (1 / u + 1 / v) * (u + v - 1) ≤ 57 / 7) : False := by
  rcases le_or_gt (u + v) 1 with huv | huv
  · exact sideCap_scalar_of_add_le_one hu hu1 hv hD h7 huv
  have hg0 := sideCap_g_le hu hv hbud
  set g := 57 / 7 / (u + v) - 1 / (u * v) with hg
  have hmain : 1 ≤ g * (1 - u) ^ 2 - (1 - u) := by
    have := mul_le_mul_of_nonneg_right hg0 (sq_nonneg (1 - u))
    linarith
  rcases le_or_gt (57 / 7 * u) 1 with hku | hku
  · have : g < 0 := by
      rw [hg, sub_neg, div_lt_div_iff₀ (by linarith) (by positivity)]
      nlinarith [mul_pos hu hv]
    nlinarith [sq_nonneg (1 - u)]
  obtain ⟨W, hW0, hW2⟩ : ∃ W : ℝ, 0 ≤ W ∧ W ^ 2 = 57 / 7 * u :=
    ⟨Real.sqrt (57 / 7 * u), Real.sqrt_nonneg _, Real.sq_sqrt (by positivity)⟩
  have hW1 : 1 < W := by nlinarith
  have h10 := sideCap_g_le_sq hu hv hW2
  rcases le_or_gt (W * (1 - u)) 1 with hWp | hWp
  · have := sideCap_mul_sq_le_one hu hu1 hW1 h10 hWp
    linarith
  · have hgp := sideCap_g_mono hu hu1 hv hW0 hW2 (by linarith) hWp
    have := mul_le_mul_of_nonneg_right hgp (sq_nonneg (1 - u))
    linarith [sideCap_B_eq hu hu1, sideCap_B_lt_one hu hu1]

/-- The cost bounds `[BCP], [BCQ], [CDP] ≥ s` and `(1 - p₁)(d - q₂) ≥ s` of two right-cap points
`P, Q`, in polynomial form: `s d m² ≤ (wdm - sm - ws)(dm - s)`. -/
theorem sideCap_poly_bound {s m w d p1 p2 q2 : ℝ} (hm0 : 0 < m) (hw0 : 0 < w) (hd0 : 0 < d)
    (hp1 : p1 ≤ 1) (hBCP : s ≤ m * p2) (hBCQ : s ≤ m * q2) (hq2d : q2 ≤ d)
    (hCDP : s ≤ w * d - d * (1 - p1) - w * p2) (hA : s ≤ (1 - p1) * (d - q2)) :
    s * d * m ^ 2 ≤ (w * d * m - s * m - w * s) * (d * m - s) := by
  have f1 : 0 ≤ d * (1 - p1) * m := by
    have : 0 ≤ 1 - p1 := by linarith
    positivity
  have f2 : d * (1 - p1) * m ≤ w * d * m - s * m - w * s := by
    have := mul_le_mul_of_nonneg_left hBCP hw0.le
    have := mul_le_mul_of_nonneg_left hCDP hm0.le
    linarith
  have f3 : 0 ≤ (d - q2) * m := mul_nonneg (by linarith) hm0.le
  have f4 : (d - q2) * m ≤ d * m - s := by linarith
  have := mul_le_mul f2 f4 f3 (f1.trans f2)
  have h5 : s * d * m ^ 2 ≤ d * (1 - p1) * m * ((d - q2) * m) := by
    have := mul_le_mul_of_nonneg_left hA (by positivity : (0 : ℝ) ≤ d * m ^ 2)
    linarith
  linarith

/-- The polynomial bound of `sideCap_poly_bound` and the budget bounds `s/m + s/b ≤ h`,
`wh + cd ≤ 1 - s` are incompatible: their conversion to the scalar variables `u, v, D` of
`sideCap_scalar`. -/
theorem sideCap_scalar_reduction {m w b c d h : ℝ} (hm0 : 0 < m) (hw0 : 0 < w) (hb : 0 < b) (hd0 : 0 < d)
    (hc : c = m + b) (hw : w = 1 - c)
    (hT1 : 7 / 64 * d * m ^ 2 ≤ (w * d * m - 7 / 64 * m - w * (7 / 64)) * (d * m - 7 / 64))
    (hd1 : d ≤ 1 - 7 / 64) (h5 : 7 / 64 / m + 7 / 64 / b ≤ h) (h6 : w * h + c * d ≤ 1 - 7 / 64)
    (hmd : 7 / 64 < m * d) : False := by
  set s : ℝ := 7 / 64 with hs
  have hs0 : 0 < s := by norm_num
  set u := s / (m * d) with hu
  set v := s / (b * d) with hv
  set D := d / s with hD
  have hu0 : 0 < u := by positivity
  have hu1 : u < 1 := by rw [hu, div_lt_one (by positivity)]; exact hmd
  have hv0 : 0 < v := by positivity
  refine sideCap_scalar (D := D) hu0 hu1 hv0 ?_ ?_ ?_
  · rw [hD, div_le_iff₀ hs0]; norm_num [hs] at hd1 ⊢; linarith
  · have e1 : D - 1 / u - 1 / v = w * d / s := by
      rw [hD, hu, hv, hw, hc]; field_simp; ring
    have e2 : 1 - u = (m * d - s) / (m * d) := by rw [hu]; field_simp
    rw [e1, e2]
    have e : w * d / s * ((m * d - s) / (m * d)) ^ 2 - (m * d - s) / (m * d) - 1 =
        ((w * d * m - s * m - w * s) * (d * m - s) - s * d * m ^ 2) / (s * m ^ 2 * d) := by
      field_simp; ring
    have : 0 ≤ ((w * d * m - s * m - w * s) * (d * m - s) - s * d * m ^ 2) / (s * m ^ 2 * d) :=
      div_nonneg (by linarith) (by positivity)
    linarith
  · have e : D * (u + v) - (1 / u + 1 / v) * (u + v - 1) = (w * (s / m + s / b) + c * d) / s := by
      rw [hD, hu, hv, hw, hc]; field_simp; ring
    rw [e, div_le_iff₀ hs0]
    have := mul_le_mul_of_nonneg_left h5 hw0.le
    norm_num [hs] at this h6 ⊢; linarith

set_option linter.unusedVariables false in
/-- The reduction of `sideCap_core` to the scalar contradiction, in the case where the term
`(1 - p₁)(d - q₂)` of `[DPQ]` is the one that is at least `s`. -/
theorem sideCap_core' {a h b c d f p1 p2 q1 q2 : ℝ} (hN : NAnchors a h b c d f) (hp1 : p1 ≤ 1)
    (hBCP : 7 / 64 ≤ (c - b) * p2) (hBCQ : 7 / 64 ≤ (c - b) * q2)
    (hCDP : 7 / 64 ≤ d * (p1 - c) - (1 - c) * p2) (hCDQ : 7 / 64 ≤ d * (q1 - c) - (1 - c) * q2)
    (hq1 : q1 ≤ 1) (hA : 7 / 64 ≤ (1 - p1) * (d - q2)) (hABC : 7 / 64 ≤ a * (c - b))
    (hABH : 7 / 64 ≤ b * (h - a)) (hHDF : 7 / 64 ≤ 1 - h + f * (h - d)) : False := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hm0 : 0 < c - b := by linarith
  have hw0 : 0 < 1 - c := by linarith
  have hd0 : 0 < d := by linarith
  have hq2d : q2 < d := by
    have : d * (q1 - c) ≤ d * (1 - c) := mul_le_mul_of_nonneg_left (by linarith) hd0.le
    nlinarith
  have hmd : 7 / 64 < (c - b) * d := by nlinarith
  have hT1 := sideCap_poly_bound hm0 hw0 hd0 hp1 hBCP hBCQ hq2d.le (by linarith) hA
  have hd1 : d ≤ 1 - 7 / 64 := by
    nlinarith [mul_le_mul_of_nonneg_right (by linarith : f ≤ 1) (sub_nonneg.2 hdh)]
  have h5 : 7 / 64 / (c - b) + 7 / 64 / b ≤ h := by
    have e1 : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hm0]; linarith
    have e2 : 7 / 64 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
    linarith
  have h6 : (1 - c) * h + c * d ≤ 1 - 7 / 64 := by
    nlinarith [mul_le_mul_of_nonneg_right hfc (sub_nonneg.2 hdh)]
  exact sideCap_scalar_reduction hm0 hw0 hb hd0 (by ring) rfl hT1 hd1 h5 h6 hmd

/-- Two points `(p₁, p₂)`, `(q₁, q₂)` of the right cap whose relevant doubled areas are all at
least `s = 7/64` cannot coexist: the scalar form of `atMostOne_sideCaps`. -/
theorem sideCap_core {a h b c d f p1 p2 q1 q2 : ℝ} (hN : NAnchors a h b c d f) (hp1 : p1 ≤ 1)
    (hq1 : q1 ≤ 1) (hBCP : 7 / 64 ≤ (c - b) * p2) (hBCQ : 7 / 64 ≤ (c - b) * q2)
    (hCDP : 7 / 64 ≤ d * (p1 - c) - (1 - c) * p2) (hCDQ : 7 / 64 ≤ d * (q1 - c) - (1 - c) * q2)
    (hDPQ : 7 / 64 ≤ |(1 - p1) * (d - q2) - (d - p2) * (1 - q1)|) (hABC : 7 / 64 ≤ a * (c - b))
    (hABH : 7 / 64 ≤ b * (h - a)) (hHDF : 7 / 64 ≤ 1 - h + f * (h - d)) : False := by
  have hd0 : 0 < d := by obtain ⟨ha, -, -, -, -, -, had, -⟩ := hN; linarith
  have hc1 : 0 < 1 - c := by obtain ⟨-, -, -, -, -, hc, -⟩ := hN; linarith
  have hp2 : 0 ≤ d - p2 := by
    have : d * (p1 - c) ≤ d * (1 - c) := mul_le_mul_of_nonneg_left (by linarith) hd0.le
    nlinarith
  have hq2 : 0 ≤ d - q2 := by
    have : d * (q1 - c) ≤ d * (1 - c) := mul_le_mul_of_nonneg_left (by linarith) hd0.le
    nlinarith
  have hA0 : 0 ≤ (1 - p1) * (d - q2) := mul_nonneg (by linarith) hq2
  have hB0 : 0 ≤ (d - p2) * (1 - q1) := mul_nonneg hp2 (by linarith)
  rcases le_abs'.1 hDPQ with h1 | h1
  · exact sideCap_core' hN hq1 hBCQ hBCP hCDQ hCDP hp1 (by linarith) hABC hABH hHDF
  · exact sideCap_core' hN hp1 hBCP hBCQ hCDP hCDQ hq1 (by linarith) hABC hABH hHDF

set_option linter.unusedVariables false in
/-- If every doubled area is at least `s = 7/64`, each of the closed side caps
`conv{(1,0), C, D}` and `conv{(0,1), F, H}` contains at most one free point. This holds
throughout family N, with any number of additional hull vertices. -/
theorem atMostOne_sideCaps {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    AtMostOne (InCapR c d) X Y Z ∧ AtMostOne (InCapL f h) X Y Z := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  set P := nConfig a h b c d f X Y Z with hPdef
  have hABC : 7 / 64 ≤ a * (c - b) := by
    have := two_mul_le_sarea_of_nonneg hp (p := (0, a)) (q := (b, 0)) (r := (c, 0))
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 2 3)
    simp only [sarea] at this; linarith
  have hABH : 7 / 64 ≤ b * (h - a) := by
    have := two_mul_le_sarea_of_nonneg hp (p := (0, a)) (q := (b, 0)) (r := (0, h))
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 2 1)
    simp only [sarea] at this; linarith
  have hHDF : 7 / 64 ≤ 1 - h + f * (h - d) := by
    have := two_mul_le_sarea_of_nonneg hp (p := (0, h)) (q := (1, d)) (r := (f, 1))
      (by simp only [sarea]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ f) (sub_nonneg.2 hdh)])
      (area_of_le_min hmin 1 4 5)
    simp only [sarea] at this; linarith
  have hCDF : 7 / 64 ≤ 1 - c + d * (c - f) := by
    have := two_mul_le_sarea_of_nonneg hp (p := (c, 0)) (q := (1, d)) (r := (f, 1))
      (by simp only [sarea]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ d) (sub_nonneg.2 hfc)])
      (area_of_le_min hmin 3 4 5)
    simp only [sarea] at this; linarith
  have hNt : NAnchors b c a h f d := ⟨hb, hbc, hc, ha, hah, hh, hbf, hfc, had, hdh⟩
  have pairR : ∀ i j : Fin 9, 6 ≤ i.val → 6 ≤ j.val → i ≠ j → InCapR c d (P i) →
      InCapR c d (P j) → False := by
    intro i j hi hj hij ⟨⟨x0, x1, y0, y1⟩, ci⟩ ⟨⟨x0', x1', y0', y1'⟩, cj⟩
    have hne : ∀ k : Fin 9, k.val < 6 → k ≠ i ∧ k ≠ j := fun k hk =>
      ⟨fun e => by subst e; omega, fun e => by subst e; omega⟩
    have bc : ∀ k : Fin 9, 6 ≤ k.val → 0 ≤ (P k).2 → 7 / 64 ≤ (c - b) * (P k).2 := by
      intro k hk hk0
      have := two_mul_le_sarea_of_nonneg hp (p := (b, 0)) (q := (c, 0)) (r := P k)
        (by simp only [sarea]; nlinarith) (area_of_le_min hmin 2 3 k (by decide)
          (fun e => by subst e; omega) (fun e => by subst e; omega))
      simp only [sarea] at this; linarith
    have cd : ∀ k : Fin 9, 6 ≤ k.val → sarea (ptC c) (ptD d) (P k) ≤ 0 →
        7 / 64 ≤ d * ((P k).1 - c) - (1 - c) * (P k).2 := by
      intro k hk hk0
      have := sarea_le_of_nonpos hp (p := (c, 0)) (q := (1, d)) (r := P k) hk0
        (area_of_le_min hmin 3 4 k (by decide) (fun e => by subst e; omega)
          (fun e => by subst e; omega))
      simp only [sarea] at this; linarith
    have dpq : 7 / 64 ≤ |(1 - (P i).1) * (d - (P j).2) - (d - (P i).2) * (1 - (P j).1)| := by
      have := area_of_le_min hmin 4 i j (fun e => by subst e; omega) hij
        (fun e => by subst e; omega)
      rw [triangleArea_eq] at this
      have e : sarea (P 4) (P i) (P j) =
          (1 - (P i).1) * (d - (P j).2) - (d - (P i).2) * (1 - (P j).1) := by
        simp only [hPdef, sarea]; simp only [nConfig, Fin.isValue, Matrix.cons_val]; ring
      rw [e] at this; linarith
    exact sideCap_core hN x1 x1' (bc i hi y0) (bc j hj y0') (cd i hi ci) (cd j hj cj) dpq hABC
      hABH hHDF
  have pairL : ∀ i j : Fin 9, 6 ≤ i.val → 6 ≤ j.val → i ≠ j → InCapL f h (P i) →
      InCapL f h (P j) → False := by
    intro i j hi hj hij ⟨⟨x0, x1, y0, y1⟩, ci⟩ ⟨⟨x0', x1', y0', y1'⟩, cj⟩
    have ah : ∀ k : Fin 9, 6 ≤ k.val → 0 ≤ (P k).1 → 7 / 64 ≤ (h - a) * (P k).1 := by
      intro k hk hk0
      have := sarea_le_of_nonpos hp (p := (0, a)) (q := (0, h)) (r := P k)
        (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 1 k (by decide)
          (fun e => by subst e; omega) (fun e => by subst e; omega))
      simp only [sarea] at this; linarith
    have fh : ∀ k : Fin 9, 6 ≤ k.val → sarea (ptF f) (ptH h) (P k) ≤ 0 →
        7 / 64 ≤ f * ((P k).2 - h) - (1 - h) * (P k).1 := by
      intro k hk hk0
      have := sarea_le_of_nonpos hp (p := (f, 1)) (q := (0, h)) (r := P k) hk0
        (area_of_le_min hmin 5 1 k (by decide) (fun e => by subst e; omega)
          (fun e => by subst e; omega))
      simp only [sarea] at this; linarith
    have fpq : 7 / 64 ≤ |(1 - (P i).2) * (f - (P j).1) - (f - (P i).1) * (1 - (P j).2)| := by
      have := area_of_le_min hmin 5 i j (fun e => by subst e; omega) hij
        (fun e => by subst e; omega)
      rw [triangleArea_eq] at this
      have e : sarea (P 5) (P i) (P j) =
          -((1 - (P i).2) * (f - (P j).1) - (f - (P i).1) * (1 - (P j).2)) := by
        simp only [hPdef, sarea]; simp only [nConfig, Fin.isValue, Matrix.cons_val]; ring
      rw [e, abs_neg] at this; linarith
    exact sideCap_core hNt y1 y1' (ah i hi x0) (ah j hj x0') (fh i hi ci) (fh j hj cj) fpq
      hABH hABC hCDF
  refine ⟨⟨fun ⟨h1, h2⟩ => pairR 6 7 (by decide) (by decide) (by decide) h1 h2,
    fun ⟨h1, h2⟩ => pairR 6 8 (by decide) (by decide) (by decide) h1 h2,
    fun ⟨h1, h2⟩ => pairR 7 8 (by decide) (by decide) (by decide) h1 h2⟩,
    ⟨fun ⟨h1, h2⟩ => pairL 6 7 (by decide) (by decide) (by decide) h1 h2,
    fun ⟨h1, h2⟩ => pairL 6 8 (by decide) (by decide) (by decide) h1 h2,
    fun ⟨h1, h2⟩ => pairL 7 8 (by decide) (by decide) (by decide) h1 h2⟩⟩

/-! ### Three points in the opposite cap -/

/-- The anchors and three opposite-cap points `E, G, O` in the hull order `A, B, C, D, E, G, F, H`
(the last point `O` interior). -/
def octagonDEGF (a h b c d f : ℝ) (E G : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, ptD d, E, G, ptF f, ptH h]

/-- A chord `P₁P₂` with the cap vertices `D, F` weakly and the corner `(1,1)` strictly on its left
has every point of the square strictly beyond `DF` strictly on its left (barycentric coordinates
in the cap triangle `D, F, (1,1)`). -/
theorem cap_left {d f : ℝ} (hd : d < 1) (hf : f < 1) {P₁ P₂ Z : Point} (hZ : Z ∈ unitSquare)
    (hZc : sarea (ptD d) (ptF f) Z < 0) (gD : 0 ≤ sarea P₁ P₂ (ptD d))
    (gF : 0 ≤ sarea P₁ P₂ (ptF f)) (gW : 0 < sarea P₁ P₂ (1, 1)) : 0 < sarea P₁ P₂ Z := by
  obtain ⟨z0, z1, w0, w1⟩ := hZ
  have e : sarea P₁ P₂ Z * ((1 - d) * (1 - f)) =
      sarea P₁ P₂ (ptD d) * ((1 - f) * (1 - Z.2)) + sarea P₁ P₂ (ptF f) * ((1 - d) * (1 - Z.1)) +
        sarea P₁ P₂ (1, 1) * (-sarea (ptD d) (ptF f) Z) := by
    simp only [sarea]; ring
  have p1 := mul_nonneg gD (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ 1 - Z.2))
  have p2 := mul_nonneg gF (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - d) (by linarith : (0:ℝ) ≤ 1 - Z.1))
  have p3 := mul_pos gW (by linarith : (0:ℝ) < -sarea (ptD d) (ptF f) Z)
  have hδ : 0 < (1 - d) * (1 - f) := mul_pos (by linarith) (by linarith)
  have : 0 < sarea P₁ P₂ Z * ((1 - d) * (1 - f)) := by rw [e]; linarith
  exact pos_of_mul_pos_left this hδ.le

/-- The fifteen anchor triangles over a point `Z` of the square strictly beyond `DF`, written
with the anchor pair in the cyclic order `F, H, A, B, C, D`, are positively oriented. -/
theorem cap_triples {a h b c d f : ℝ} (hN : NAnchors a h b c d f) {Z : Point}
    (hZ : Z ∈ unitSquare) (hZc : sarea (ptD d) (ptF f) Z < 0) :
    0 < sarea (ptF f) (ptH h) Z ∧ 0 < sarea (ptF f) (ptA a) Z ∧ 0 < sarea (ptF f) (ptB b) Z ∧
    0 < sarea (ptF f) (ptC c) Z ∧ 0 < sarea (ptF f) (ptD d) Z ∧ 0 < sarea (ptH h) (ptA a) Z ∧
    0 < sarea (ptH h) (ptB b) Z ∧ 0 < sarea (ptH h) (ptC c) Z ∧ 0 < sarea (ptH h) (ptD d) Z ∧
    0 < sarea (ptA a) (ptB b) Z ∧ 0 < sarea (ptA a) (ptC c) Z ∧ 0 < sarea (ptA a) (ptD d) Z ∧
    0 < sarea (ptB b) (ptC c) Z ∧ 0 < sarea (ptB b) (ptD d) Z ∧ 0 < sarea (ptC c) (ptD d) Z := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have hd : 0 < d := by linarith
  have hf : 0 < f := by linarith
  have hda := sub_nonneg.2 had
  have hhd := sub_nonneg.2 hdh
  have hfb := sub_nonneg.2 hbf
  have hcf := sub_nonneg.2 hfc
  have L : ∀ {P₁ P₂ : Point}, 0 ≤ sarea P₁ P₂ (ptD d) → 0 ≤ sarea P₁ P₂ (ptF f) →
      0 < sarea P₁ P₂ (1, 1) → 0 < sarea P₁ P₂ Z := fun gD gF gW => cap_left hd1 hf1 hZ hZc gD gF gW
  have k1 : 0 < 1 - d := by linarith
  have k2 : 0 < 1 - f := by linarith
  have k3 : 0 < 1 - h := by linarith
  have k4 : 0 < 1 - a := by linarith
  have k5 : 0 < 1 - b := by linarith
  have k6 : 0 < 1 - c := by linarith
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  refine ⟨L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_,
    L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_, L ?_ ?_ ?_,
    L ?_ ?_ ?_⟩ <;> simp only [sarea]
  -- (F, H)
  · linarith [mul_nonneg hf.le k1.le, mul_pos k3 k2]
  · linarith
  · linarith [mul_pos k3 k2]
  -- (F, A)
  · linarith [mul_nonneg hf.le k1.le, mul_pos k4 k2]
  · linarith
  · linarith [mul_pos k4 k2]
  -- (F, B)
  · linarith [mul_nonneg hfb k1.le]
  · linarith
  · linarith
  -- (F, C)
  · linarith [mul_nonneg hd.le hcf]
  · linarith
  · linarith
  -- (F, D)
  · linarith
  · linarith
  · linarith [mul_pos k1 k2]
  -- (H, A)
  · linarith
  · linarith [mul_nonneg (by linarith : (0:ℝ) ≤ h - a) hf.le]
  · linarith
  -- (H, B)
  · linarith [mul_le_mul_of_nonneg_right (by linarith : b ≤ 1) hhd]
  · linarith [mul_pos hb k3, mul_pos hh0 hf]
  · linarith [mul_pos hb k3]
  -- (H, C)
  · linarith [mul_le_mul_of_nonneg_right (by linarith : c ≤ 1) hhd]
  · linarith [mul_pos hc0 k3, mul_pos hh0 hf]
  · linarith [mul_pos hc0 k3]
  -- (H, D)
  · linarith
  · linarith [mul_nonneg hf.le hhd]
  · linarith
  -- (A, B)
  · linarith [mul_nonneg hb.le hda]
  · linarith [mul_pos hb k4, mul_pos ha hf]
  · linarith [mul_pos hb k4]
  -- (A, C)
  · linarith [mul_nonneg hc0.le hda]
  · linarith [mul_pos hc0 k4, mul_pos ha hf]
  · linarith [mul_pos hc0 k4]
  -- (A, D)
  · linarith
  · linarith [mul_le_mul_of_nonneg_right hf1.le hda]
  · linarith
  -- (B, C)
  · linarith [mul_pos (by linarith : (0:ℝ) < c - b) hd]
  · linarith
  · linarith
  -- (B, D)
  · linarith
  · linarith [mul_le_mul_of_nonneg_right hd1.le hfb]
  · linarith [mul_pos k5 k1]
  -- (C, D)
  · linarith
  · linarith [mul_nonneg hd.le hcf]
  · linarith [mul_pos k6 k1]

/-- The four triangles of `A, B, C, H` over the cap chord `EG`, when the direction `E → G`
points strictly left and strictly up and `D, F` are on its left. -/
theorem chord_triples {a h b c d f : ℝ} (hN : NAnchors a h b c d f) {E G : Point}
    (hEf : f < E.1) (hEd : d < E.2) (hm : G.1 < E.1) (hn : E.2 < G.2)
    (hEGD : 0 < sarea E G (ptD d)) (hEGF : 0 < sarea E G (ptF f)) :
    0 < sarea E G (ptA a) ∧ 0 < sarea E G (ptB b) ∧ 0 < sarea E G (ptC c) ∧
      0 < sarea E G (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have m := sub_pos.2 hm
  have n := sub_pos.2 hn
  simp only [sarea] at hEGD hEGF ⊢
  refine ⟨?_, ?_, ?_, ?_⟩
  · nlinarith [mul_pos m (by linarith : (0:ℝ) < E.2 - a), mul_pos n (by linarith : (0:ℝ) < E.1)]
  · nlinarith [mul_pos m (by linarith : (0:ℝ) < E.2), mul_pos n (by linarith : (0:ℝ) < E.1 - b)]
  · nlinarith [mul_pos m (by linarith : (0:ℝ) < d), mul_pos n (by linarith : (0:ℝ) < 1 - c)]
  · nlinarith [mul_pos m (by linarith : (0:ℝ) < 1 - h), mul_pos n (by linarith : (0:ℝ) < f)]

/-- A point of the square strictly beyond `DF` is strictly right of `f` and strictly above `d`. -/
theorem cap_coords {d f : ℝ} (hd : d < 1) (hf : f < 1) {Z : Point} (hZ : Z ∈ unitSquare)
    (hZc : sarea (ptD d) (ptF f) Z < 0) : f < Z.1 ∧ d < Z.2 := by
  obtain ⟨z0, z1, w0, w1⟩ := hZ
  simp only [sarea] at hZc
  constructor
  · nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ 1 - Z.2)]
  · nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - d) (by linarith : (0:ℝ) ≤ 1 - Z.1)]

/-- The octagon `A, B, C, D, E, G, F, H` is strictly convex when `E, G` lie strictly beyond `DF`,
`D, E, G, F` is convex and the direction `E → G` points strictly left and up. -/
theorem octagon_convex {a h b c d f : ℝ} (hN : NAnchors a h b c d f) {E G : Point}
    (hE : E ∈ unitSquare) (hG : G ∈ unitSquare) (hEc : sarea (ptD d) (ptF f) E < 0)
    (hGc : sarea (ptD d) (ptF f) G < 0) (hDEG : 0 < sarea (ptD d) E G)
    (hEGF : 0 < sarea E G (ptF f)) (hm : G.1 < E.1) (hn : E.2 < G.2) :
    IsConvexPolygon (octagonDEGF a h b c d f E G) := by
  have hN' := hN
  obtain ⟨-, -, hh1, -, -, hc1, -, hdh, -, hfc⟩ := hN'
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  obtain ⟨t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, t16, t17, t18,
    t19⟩ := SixBoundaryHull.anchor_triples hN
  obtain ⟨e67, e60, e61, e62, e63, e70, e71, e72, e73, e01, e02, e03, e12, e13, e23⟩ :=
    cap_triples hN hE hEc
  obtain ⟨g67, g60, g61, g62, g63, g70, g71, g72, g73, g01, g02, g03, g12, g13, g23⟩ :=
    cap_triples hN hG hGc
  obtain ⟨hEf, hEd⟩ := cap_coords hd1 hf1 hE hEc
  have hEGD : 0 < sarea E G (ptD d) := by rw [sarea_cycle]; exact hDEG
  obtain ⟨m0, m1, m2, m7⟩ := chord_triples hN hEf hEd hm hn hEGD hEGF
  have cyc3 : ∀ {p q r : Point}, 0 < sarea r p q → 0 < sarea p q r := fun {p q r} h => by
    rw [sarea_cycle r p q]; exact h
  have cyc3' : ∀ {p q r : Point}, 0 < sarea q r p → 0 < sarea p q r := fun {p q r} h => by
    rw [← sarea_cycle p q r]; exact h
  intro i j k hij hjk
  fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hij ⊢ <;>
    fin_cases k <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hjk ⊢
  · exact t0
  · exact t1
  · exact e01
  · exact g01
  · exact t2
  · exact t3
  · exact t4
  · exact e02
  · exact g02
  · exact t5
  · exact t6
  · exact e03
  · exact g03
  · exact t7
  · exact t8
  · exact cyc3' m0
  · exact cyc3 e60
  · exact cyc3 e70
  · exact cyc3 g60
  · exact cyc3 g70
  · exact t9
  · exact t10
  · exact e12
  · exact g12
  · exact t11
  · exact t12
  · exact e13
  · exact g13
  · exact t13
  · exact t14
  · exact cyc3' m1
  · exact cyc3 e61
  · exact cyc3 e71
  · exact cyc3 g61
  · exact cyc3 g71
  · exact t15
  · exact e23
  · exact g23
  · exact t16
  · exact t17
  · exact cyc3' m2
  · exact cyc3 e62
  · exact cyc3 e72
  · exact cyc3 g62
  · exact cyc3 g72
  · exact t18
  · exact hDEG
  · exact cyc3 e63
  · exact cyc3 e73
  · exact cyc3 g63
  · exact cyc3 g73
  · exact t19
  · exact hEGF
  · exact m7
  · exact cyc3' e67
  · exact cyc3' g67

/-- The point `O ∈ DEF ∩ DGF` lies strictly inside the octagon `A, B, C, D, E, G, F, H`. -/
theorem octagon_inPolygon {a h b c d f : ℝ} (hN : NAnchors a h b c d f) {E G O : Point}
    (hO : O ∈ unitSquare) (hOc : sarea (ptD d) (ptF f) O < 0) (hDEG : 0 < sarea (ptD d) E G)
    (hEGF : 0 < sarea E G (ptF f)) (hDEF : 0 < sarea (ptD d) E (ptF f))
    (h1 : InTriangle O (ptD d) E (ptF f)) (h2 : InTriangle O (ptD d) G (ptF f)) :
    InPolygon (octagonDEGF a h b c d f E G) O := by
  obtain ⟨-, -, -, -, -, o70, -, -, -, o01, -, -, o12, -, o23⟩ := cap_triples hN hO hOc
  obtain ⟨o67, -⟩ := cap_triples hN hO hOc
  have hEG : 0 < sarea E G O := by
    have e : sarea E G O * sarea (ptD d) E (ptF f) = sarea E G (ptD d) * sarea E (ptF f) O +
        sarea E G (ptF f) * sarea (ptD d) E O := by simp only [sarea]; ring
    have hEGD : 0 < sarea E G (ptD d) := by rw [sarea_cycle]; exact hDEG
    have : 0 < sarea E G O * sarea (ptD d) E (ptF f) := by
      rw [e]; nlinarith [mul_pos hEGD h1.2.1, mul_pos hEGF h1.1]
    exact pos_of_mul_pos_left this hDEF.le
  intro i
  fin_cases i
  · show 0 < sarea (ptA a) (ptB b) O; exact o01
  · show 0 < sarea (ptB b) (ptC c) O; exact o12
  · show 0 < sarea (ptC c) (ptD d) O; exact o23
  · show 0 < sarea (ptD d) E O; exact h1.1
  · show 0 < sarea E G O; exact hEG
  · show 0 < sarea G (ptF f) O; exact h2.2.1
  · show 0 < sarea (ptF f) (ptH h) O; exact o67
  · show 0 < sarea (ptH h) (ptA a) O; exact o70

/-- The triangular-hull alternative of `oppositeCap_octagon`: if one cap point `O` is extreme as seen from
both `F` and `D`, the other two are strictly inside `FDO`, whose doubled area is at most
`(1-d)(1-f) < 13/16`, against the two-interior-point bound `SixBoundaryHull.two_inside_sarea`. -/
theorem oppositeCap_not_triangular {a h b c d f : ℝ} {E G O : Point} (hN : NAnchors a h b c d f)
    (hE : InCapT d f E) (hG : InCapT d f G) (hO : InCapT d f O)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O))
    (hFE : sarea (ptF f) O E < 0) (hFG : sarea (ptF f) O G < 0)
    (hDE : 0 < sarea (ptD d) O E) (hDG : 0 < sarea (ptD d) O G) : False := by
  have hpos : 0 < minTriangleArea (nConfig a h b c d f E G O) := by linarith
  obtain ⟨hABC, hABH, -, -⟩ := SixBoundaryHull.anchor_areas hN hmin
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  have has : 7 / 64 < a := by nlinarith
  have hbs : 7 / 64 < b := by nlinarith
  have nE := sarea_ne_zero_of_min_pos hpos 4 5 6
  have nO := sarea_ne_zero_of_min_pos hpos 4 5 8
  change sarea (ptD d) (ptF f) E ≠ 0 at nE
  change sarea (ptD d) (ptF f) O ≠ 0 at nO
  have pE : 0 < sarea (ptF f) (ptD d) E := by
    have := sarea_swap₁₂ (ptD d) (ptF f) E; have := lt_of_le_of_ne hE.2 nE; linarith
  have nG := sarea_ne_zero_of_min_pos hpos 4 5 7
  change sarea (ptD d) (ptF f) G ≠ 0 at nG
  have pG : 0 < sarea (ptF f) (ptD d) G := by
    have := sarea_swap₁₂ (ptD d) (ptF f) G; have := lt_of_le_of_ne hG.2 nG; linarith
  have iE := TypeII.inTriangle_of_extreme pE hFE hDE
  have iG := TypeII.inTriangle_of_extreme pG hFG hDG
  have k := SixBoundaryHull.two_inside_sarea (P := nConfig a h b c d f E G O) (by norm_num) hmin
    (a := 5) (b := 4) (e := 8) (j₁ := 6) (j₂ := 7) (by decide) iE iG
  have hbound : sarea (ptF f) (ptD d) O ≤ (1 - d) * (1 - f) := by
    obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := hO
    simp only [sarea]
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - d) (by linarith : (0:ℝ) ≤ 1 - O.1),
      mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f) (by linarith : (0:ℝ) ≤ 1 - O.2)]
  have hδ : (1 - d) * (1 - f) < 13 / 16 := by
    nlinarith [mul_le_mul (by linarith : 1 - d ≤ 57 / 64) (by linarith : 1 - f ≤ 57 / 64)
      (by linarith) (by norm_num)]
  have := SixBoundaryHull.rho_lt_Ks
  change 2 * ((4 + 2 * Real.sqrt 3) * (7 / 128)) ≤ sarea (ptF f) (ptD d) O at k
  linarith

/-- An affine map of positive determinant keeps strict containment in a triangle. -/
theorem inTriangle_of_affine {a b c d e g : ℝ} (hdet : 0 < a * d - b * c) {X A B C : Point}
    (h : InTriangle (affineMap a b c d e g X) (affineMap a b c d e g A) (affineMap a b c d e g B)
      (affineMap a b c d e g C)) : InTriangle X A B C := by
  obtain ⟨h1, h2, h3⟩ := h
  rw [sarea_affineMap] at h1 h2 h3
  exact ⟨pos_of_mul_pos_right h1 hdet.le, pos_of_mul_pos_right h2 hdet.le,
    pos_of_mul_pos_right h3 hdet.le⟩

/-- The cell analysis of a support triangle `UVW'` of doubled area below `13/16` (contacts `H` on
the leg `UW'`, `F` on the leg `VW'`, fifth point `X`), at least area `7/128`: cells I, III, IV and
V of the support triangle (`TypeII.hsNormal_five_cells`) need doubled area at least `Ks`, `12s`,
`10s` (`s = 7/64`), so `X` is in cell II, `X ∈ UVF ∩ UVH`. -/
theorem support_cell_II {U V W' H F X : Point} (hS : TypeII.IsSupportTriangle U V W' H F X)
    (hsmall : sarea U V W' < 13 / 16) (hmin5 : 7 / 128 ≤ minTriangleArea ![U, V, H, F, X]) :
    InTriangle X U V F ∧ InTriangle X U V H := by
  have hW'pos := hS.1
  obtain ⟨α, β, γ, δ, ε, ζ, h₀, f₀, hdet, hU, hV, -, hH', hF', hNrm⟩ :=
    TypeII.exists_affineMap_hsNormal hS
  have hcomp : affineMap α β γ δ ε ζ ∘ ![U, V, H, F, X] =
      TypeII.hsConfig h₀ f₀ (affineMap α β γ δ ε ζ X) := by
    funext i; fin_cases i <;> simp [TypeII.hsConfig, hU, hV, hH', hF']
  have hm := minTriangleArea_affineMap α β γ δ ε ζ ![U, V, H, F, X]
  rw [hcomp, hdet, abs_of_pos (by positivity)] at hm
  set S := sarea U V W' with hSdef
  set sn := 7 / 64 / S with hsn
  have hsn0 : 0 < sn := by positivity
  have hsmin : sn / 2 ≤ minTriangleArea (TypeII.hsConfig h₀ f₀ (affineMap α β γ δ ε ζ X)) := by
    rw [hm, show sn / 2 = 1 / S * (7 / 128) by rw [hsn]; ring]
    exact mul_le_mul_of_nonneg_left hmin5 (by positivity)
  have hKs : 13 / 16 < TypeII.Ktwo * (7 / 64) := by
    have := SixBoundaryHull.rho_lt_Ks; unfold TypeII.Ktwo; linarith
  have cells := TypeII.hsNormal_five_cells hNrm hsn0 hsmin
  have hII : TypeII.InCellII TypeII.hsA TypeII.hsE (TypeII.hsH h₀) (TypeII.hsF f₀)
      (affineMap α β γ δ ε ζ X) := by
    rcases cells.1 with hc | hc | hc | hc | hc
    · exfalso
      have k := (TypeII.inCellI_bound hNrm hsn0 hsmin hc).2
      rw [hsn, div_le_div_iff₀ hW'pos TypeII.Ktwo_pos] at k
      linarith only [k, hsmall, hKs]
    · exact hc
    · exfalso
      have k := (TypeII.inCellIII_bound hNrm hsn0 hsmin hc).2
      rw [hsn, div_le_div_iff₀ hW'pos TypeII.Ktwo_pos] at k
      linarith only [k, hsmall, hKs]
    · exfalso
      have k := TypeII.inCellIV_bound hNrm hsn0 hsmin hc
      rw [hsn, div_le_div_iff₀ hW'pos (by norm_num)] at k
      linarith only [k, hsmall]
    · exfalso
      obtain ⟨-, k1, k2⟩ := TypeII.inCellV_bound hNrm hsn0 hsmin hc
      have k := k1.trans k2.le
      rw [hsn, div_le_div_iff₀ hW'pos (by norm_num)] at k
      linarith only [k, hsmall]
  obtain ⟨i1, i2⟩ := cells.2.2.1 hII
  have hdetpos : 0 < α * δ - β * γ := by rw [hdet]; positivity
  rw [← hU, ← hV, ← hF'] at i1
  rw [← hU, ← hV, ← hH'] at i2
  exact ⟨inTriangle_of_affine hdetpos i1, inTriangle_of_affine hdetpos i2⟩

/-- The direction `E → G` of the two leg contacts of a support triangle `F D W'` with apex in the
cap `D, F, (1,1)` points strictly left and strictly up. -/
theorem support_direction {d f : ℝ} (hd1 : d < 1) (hf1 : f < 1) {E G W' : Point}
    (hGseg : G ∈ openSegment ℝ (ptF f) W') (hEseg : E ∈ openSegment ℝ (ptD d) W')
    (hW'mem : W' ∈ convexHull ℝ ({ptF f, ptD d, (1, 1)} : Set Point)) :
    G.1 < E.1 ∧ E.2 < G.2 := by
  obtain ⟨p, q, r, hp, hq, hr, hpqr, hW'eq⟩ := exists_bary_of_mem_convexHull hW'mem
  obtain ⟨μ₁, ν₁, hμ₁, hν₁, hμν₁, hG'⟩ := hGseg
  obtain ⟨μ₂, ν₂, hμ₂, hν₂, hμν₂, hE'⟩ := hEseg
  have gx : G.1 = μ₁ * f + ν₁ * W'.1 := by rw [← hG']; simp [ptF]
  have gy : G.2 = μ₁ * 1 + ν₁ * W'.2 := by rw [← hG']; simp [ptF]
  have ex : E.1 = μ₂ * 1 + ν₂ * W'.1 := by rw [← hE']; simp [ptD]
  have ey : E.2 = μ₂ * d + ν₂ * W'.2 := by rw [← hE']; simp [ptD]
  have wx : W'.1 = p * f + q * 1 + r * 1 := by rw [hW'eq]
  have wy : W'.2 = p * 1 + q * d + r * 1 := by rw [hW'eq]
  have ex1 : 1 - W'.1 = p * (1 - f) := by rw [wx]; linear_combination (-1 : ℝ) * hpqr
  have ex2 : W'.1 - f = (1 - p) * (1 - f) := by rw [wx]; linear_combination hpqr
  have ey1 : 1 - W'.2 = q * (1 - d) := by rw [wy]; linear_combination (-1 : ℝ) * hpqr
  have ey2 : W'.2 - d = (1 - q) * (1 - d) := by rw [wy]; linear_combination hpqr
  have hp1 : p ≤ 1 := by linarith
  have hq1 : q ≤ 1 := by linarith
  have hν₁' : 0 ≤ 1 - μ₁ := by linarith
  have hν₂' : 0 ≤ 1 - μ₂ := by linarith
  have key1 : 0 < μ₂ * p + μ₁ * (1 - p) := by
    nlinarith [mul_pos hμ₁ hμ₂, mul_nonneg (mul_nonneg hμ₂.le hp) hν₁',
      mul_nonneg (mul_nonneg hμ₁.le (by linarith : (0:ℝ) ≤ 1 - p)) hν₂']
  have key2 : 0 < μ₁ * q + μ₂ * (1 - q) := by
    nlinarith [mul_pos hμ₁ hμ₂, mul_nonneg (mul_nonneg hμ₁.le hq) hν₂',
      mul_nonneg (mul_nonneg hμ₂.le (by linarith : (0:ℝ) ≤ 1 - q)) hν₁']
  constructor
  · have e : E.1 - G.1 = μ₂ * (1 - W'.1) + μ₁ * (W'.1 - f) := by
      rw [ex, gx]; linear_combination W'.1 * hμν₂ - W'.1 * hμν₁
    rw [ex1, ex2] at e
    nlinarith [mul_pos (by linarith : (0:ℝ) < 1 - f) key1]
  · have e : G.2 - E.2 = μ₁ * (1 - W'.2) + μ₂ * (W'.2 - d) := by
      rw [ey, gy]; linear_combination W'.2 * hμν₁ - W'.2 * hμν₂
    rw [ey1, ey2] at e
    nlinarith [mul_pos (by linarith : (0:ℝ) < 1 - d) key2]

/-- The quadrilateral `D, E, G, F` is convex when its four triangles are positive. -/
theorem quad_convex {D E G F : Point} (h1 : 0 < sarea D E G) (h2 : 0 < sarea D E F)
    (h3 : 0 < sarea D G F) (h4 : 0 < sarea E G F) : IsConvexPolygon ![D, E, G, F] := by
  intro i j k hij hjk
  fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hij ⊢ <;>
    fin_cases k <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hjk ⊢
  · exact h1
  · exact h2
  · exact h3
  · exact h4

/-- The support alternative of `oppositeCap_octagon`: with `G` extreme as seen from `F` and `E` extreme as
seen from `D`, the support triangle `F D W'` (apex `W'` in the cap) carries `G, E` on its legs and
its five cells (`TypeII.hsNormal_five_cells`) leave only cell II: `O ∈ FDE ∩ FDG`. -/
theorem oppositeCap_octagon_of_support {a h b c d f : ℝ} {E G O : Point} (hN : NAnchors a h b c d f)
    (hE : InCapT d f E) (hG : InCapT d f G) (hO : InCapT d f O)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f E G O))
    (hFGE : sarea (ptF f) G E < 0) (hFGO : sarea (ptF f) G O < 0)
    (hDEG : 0 < sarea (ptD d) E G) (hDEO : 0 < sarea (ptD d) E O) :
    IsConvexPolygon ![ptD d, E, G, ptF f] ∧ InTriangle O (ptD d) E (ptF f) ∧
      InTriangle O (ptD d) G (ptF f) ∧ G.1 < E.1 ∧ E.2 < G.2 ∧
      IsConvexPolygon (octagonDEGF a h b c d f E G) ∧ InPolygon (octagonDEGF a h b c d f E G) O := by
  have hpos : 0 < minTriangleArea (nConfig a h b c d f E G O) := by linarith
  obtain ⟨hABC, hABH, -, -⟩ := SixBoundaryHull.anchor_areas hN hmin
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  have has : 7 / 64 < a := by nlinarith
  have hbs : 7 / 64 < b := by nlinarith
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  -- the three cap points are strictly beyond `DF`
  have cE : sarea (ptD d) (ptF f) E < 0 :=
    lt_of_le_of_ne hE.2 (sarea_ne_zero_of_min_pos hpos 4 5 6)
  have cG : sarea (ptD d) (ptF f) G < 0 :=
    lt_of_le_of_ne hG.2 (sarea_ne_zero_of_min_pos hpos 4 5 7)
  have cO : sarea (ptD d) (ptF f) O < 0 :=
    lt_of_le_of_ne hO.2 (sarea_ne_zero_of_min_pos hpos 4 5 8)
  have pE : 0 < sarea (ptF f) (ptD d) E := by have := sarea_swap₁₂ (ptD d) (ptF f) E; linarith
  have pG : 0 < sarea (ptF f) (ptD d) G := by have := sarea_swap₁₂ (ptD d) (ptF f) G; linarith
  have pO : 0 < sarea (ptF f) (ptD d) O := by have := sarea_swap₁₂ (ptD d) (ptF f) O; linarith
  have hΔ : 0 < sarea (ptF f) (ptD d) (1, 1) := by
    simp only [sarea]; nlinarith [mul_pos (by linarith : (0:ℝ) < 1 - d)
      (by linarith : (0:ℝ) < 1 - f)]
  have hΔeq : sarea (ptF f) (ptD d) (1, 1) = (1 - d) * (1 - f) := by
    simp only [sarea]; ring
  have hWG : 0 ≤ sarea (1, 1) (ptF f) G := by
    obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := hG
    simp only [sarea]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - f)
      (by linarith : (0:ℝ) ≤ 1 - G.2)]
  have hWE : 0 ≤ sarea (ptD d) (1, 1) E := by
    obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := hE
    simp only [sarea]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - d)
      (by linarith : (0:ℝ) ≤ 1 - E.1)]
  -- the support apex
  obtain ⟨W', hW'pos, hW'le, hGseg, hEseg, hcont, hW'mem⟩ :=
    TypeII.support_apex hΔ pG hWG pE hWE hFGE hDEG
  have hS : TypeII.IsSupportTriangle (ptF f) (ptD d) W' G E O :=
    ⟨hW'pos, hGseg, hEseg, hcont O pO.le hFGO.le hDEO.le⟩
  have hδ : (1 - d) * (1 - f) < 13 / 16 := by
    nlinarith [mul_le_mul (by linarith : 1 - d ≤ 57 / 64) (by linarith : 1 - f ≤ 57 / 64)
      (by linarith) (by norm_num)]
  have hmin5 : 7 / 128 ≤ minTriangleArea ![ptF f, ptD d, G, E, O] := by
    have := le_min_comp (by norm_num) (nConfig a h b c d f E G O)
      (f := ![5, 4, 7, 6, 8]) (by decide)
    have e : nConfig a h b c d f E G O ∘ ![5, 4, 7, 6, 8] = ![ptF f, ptD d, G, E, O] := by
      funext i; fin_cases i <;> rfl
    rw [e] at this; linarith
  obtain ⟨j1, j2⟩ := support_cell_II hS (by linarith) hmin5
  have k1 : InTriangle O (ptD d) E (ptF f) := ⟨j1.2.1, j1.2.2, j1.1⟩
  have k2 : InTriangle O (ptD d) G (ptF f) := ⟨j2.2.1, j2.2.2, j2.1⟩
  have hdir := support_direction hd1 hf1 hGseg hEseg hW'mem
  have hEGF : 0 < sarea E G (ptF f) := by
    have e2 : sarea E G (ptF f) = -sarea (ptF f) G E := by simp only [sarea]; ring
    rw [e2]; linarith
  have hDEF : 0 < sarea (ptD d) E (ptF f) := by rw [sarea_cycle]; exact pE
  have hDGF : 0 < sarea (ptD d) G (ptF f) := by rw [sarea_cycle]; exact pG
  exact ⟨quad_convex hDEG hDEF hDGF hEGF, k1, k2, hdir.1, hdir.2,
    octagon_convex hN hE.1 hG.1 cE cG hDEG hEGF hdir.1 hdir.2,
    octagon_inPolygon hN hO.1 cO hDEG hEGF hDEF k1 k2⟩

/-- Suppose all three free points are in the closed opposite cap `conv{D, F, (1,1)}` and every
doubled area is at least `s = 7/64`. Then they can be named `E, G, O` (a permutation of
`X, Y, Z`) so that `D, E, G, F` is a strictly convex quadrilateral in this counterclockwise order
and `O ∈ DFE ∩ DFG` (written with the counterclockwise triangles `DEF`, `DGF`); moreover the
direction `E → G` points strictly left and strictly up (`g_x < e_x`, `e_y < g_y`, from the support
apex). Consequently the full hull is the strictly convex octagon `A, B, C, D, E, G, F, H` with `O`
its sole interior point; every triangular cap hull and every other support-cell placement is
impossible. -/
theorem oppositeCap_octagon {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapT d f X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    ∃ σ : Equiv.Perm (Fin 3),
      IsConvexPolygon ![ptD d, ![X, Y, Z] (σ 0), ![X, Y, Z] (σ 1), ptF f] ∧
      InTriangle (![X, Y, Z] (σ 2)) (ptD d) (![X, Y, Z] (σ 0)) (ptF f) ∧
      InTriangle (![X, Y, Z] (σ 2)) (ptD d) (![X, Y, Z] (σ 1)) (ptF f) ∧
      (![X, Y, Z] (σ 1)).1 < (![X, Y, Z] (σ 0)).1 ∧ (![X, Y, Z] (σ 0)).2 < (![X, Y, Z] (σ 1)).2 ∧
      IsConvexPolygon (octagonDEGF a h b c d f (![X, Y, Z] (σ 0)) (![X, Y, Z] (σ 1))) ∧
      InPolygon (octagonDEGF a h b c d f (![X, Y, Z] (σ 0)) (![X, Y, Z] (σ 1)))
        (![X, Y, Z] (σ 2)) := by
  set V : Fin 3 → Point := ![X, Y, Z] with hV
  have hcap : ∀ i, InCapT d f (V i) := fun i => by
    fin_cases i
    · exact hX
    · exact hY
    · exact hZ
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Z) := by linarith
  have hperm : ∀ σ : Equiv.Perm (Fin 3), 7 / 128 ≤
      minTriangleArea (nConfig a h b c d f (V (σ 0)) (V (σ 1)) (V (σ 2))) := fun σ => by
    rw [minTriangleArea_nConfig_perm]; exact hmin
  -- positions as seen from `F` and from `D`
  have nU : ∀ i j : Fin 3, i ≠ j → sarea (ptF f) (V i) (V j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 5 6 7 | exact sarea_ne_zero_of_min_pos hpos 5 6 8
      | exact sarea_ne_zero_of_min_pos hpos 5 7 6 | exact sarea_ne_zero_of_min_pos hpos 5 7 8
      | exact sarea_ne_zero_of_min_pos hpos 5 8 6 | exact sarea_ne_zero_of_min_pos hpos 5 8 7
  have nV : ∀ i j : Fin 3, i ≠ j → sarea (ptD d) (V i) (V j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 4 6 7 | exact sarea_ne_zero_of_min_pos hpos 4 6 8
      | exact sarea_ne_zero_of_min_pos hpos 4 7 6 | exact sarea_ne_zero_of_min_pos hpos 4 7 8
      | exact sarea_ne_zero_of_min_pos hpos 4 8 6 | exact sarea_ne_zero_of_min_pos hpos 4 8 7
  have gpos : ∀ i, 0 < sarea (ptF f) (ptD d) (V i) := by
    intro i
    have h0 : sarea (ptD d) (ptF f) (V i) ≠ 0 := by
      fin_cases i
      · exact sarea_ne_zero_of_min_pos hpos 4 5 6
      · exact sarea_ne_zero_of_min_pos hpos 4 5 7
      · exact sarea_ne_zero_of_min_pos hpos 4 5 8
    have := sarea_swap₁₂ (ptD d) (ptF f) (V i)
    have := lt_of_le_of_ne (hcap i).2 h0
    linarith
  obtain ⟨i, hi⟩ := TypeII.exists_extreme_left (ptF f) (ptD d) V gpos nU
  obtain ⟨j, hj⟩ := TypeII.exists_extreme_right (ptF f) (ptD d) V gpos nV
  -- the generic support case, for `E = V (σ 0)`, `G = V (σ 1)`, `O = V (σ 2)`
  have supp : ∀ σ : Equiv.Perm (Fin 3), σ 1 = i → σ 0 = j → ∃ τ : Equiv.Perm (Fin 3),
      IsConvexPolygon ![ptD d, V (τ 0), V (τ 1), ptF f] ∧
      InTriangle (V (τ 2)) (ptD d) (V (τ 0)) (ptF f) ∧
      InTriangle (V (τ 2)) (ptD d) (V (τ 1)) (ptF f) ∧
      (V (τ 1)).1 < (V (τ 0)).1 ∧ (V (τ 0)).2 < (V (τ 1)).2 ∧
      IsConvexPolygon (octagonDEGF a h b c d f (V (τ 0)) (V (τ 1))) ∧
      InPolygon (octagonDEGF a h b c d f (V (τ 0)) (V (τ 1))) (V (τ 2)) := by
    intro σ h1 h0
    have n01 : σ 0 ≠ σ 1 := fun e => absurd (σ.injective e) (by decide)
    have n21 : σ 2 ≠ σ 1 := fun e => absurd (σ.injective e) (by decide)
    have n10 : σ 1 ≠ σ 0 := fun e => absurd (σ.injective e) (by decide)
    have n20 : σ 2 ≠ σ 0 := fun e => absurd (σ.injective e) (by decide)
    refine ⟨σ, oppositeCap_octagon_of_support hN (hcap _) (hcap _) (hcap _) (hperm σ) ?_ ?_ ?_ ?_⟩
    · rw [h1]; exact hi _ (by rw [← h1]; exact n01)
    · rw [h1]; exact hi _ (by rw [← h1]; exact n21)
    · rw [h0]; exact hj _ (by rw [← h0]; exact n10)
    · rw [h0]; exact hj _ (by rw [← h0]; exact n20)
  -- the triangular case `i = j`
  have tri : ∀ σ : Equiv.Perm (Fin 3), σ 2 = i → i = j → False := by
    intro σ h2 hij
    subst hij
    have n02 : σ 0 ≠ σ 2 := fun e => absurd (σ.injective e) (by decide)
    have n12 : σ 1 ≠ σ 2 := fun e => absurd (σ.injective e) (by decide)
    refine oppositeCap_not_triangular hN (hcap _) (hcap _) (hcap _) (hperm σ) ?_ ?_ ?_ ?_
    · rw [h2]; exact hi _ (by rw [← h2]; exact n02)
    · rw [h2]; exact hi _ (by rw [← h2]; exact n12)
    · rw [h2]; exact hj _ (by rw [← h2]; exact n02)
    · rw [h2]; exact hj _ (by rw [← h2]; exact n12)
  fin_cases i <;> fin_cases j
  · exact (tri (Equiv.swap 0 2) (by decide) rfl).elim
  · exact supp (Equiv.swap 0 1) (by decide) (by decide)
  · exact supp (Equiv.swap 0 1 * Equiv.swap 0 2) (by decide) (by decide)
  · exact supp 1 (by decide) (by decide)
  · exact (tri (Equiv.swap 1 2) (by decide) rfl).elim
  · exact supp (Equiv.swap 0 2) (by decide) (by decide)
  · exact supp (Equiv.swap 1 2) (by decide) (by decide)
  · exact supp (Equiv.swap 0 2 * Equiv.swap 0 1) (by decide) (by decide)
  · exact (tri 1 (by decide) rfl).elim

/-! ### An occupied side cap empties the opposite lower ear -/

/-- The scalar core of `occupiedSideCap_ear_lt`: with `m + w + b = 1`, `mw ≥ s(m + w)` and `mb ≥ s(b + 3m)`
(`s = 7/64`), `F(m,w) = 1/m + 3w/b + 1/w > 1/s`, in polynomial form (proved by a polynomial
certificate found by linear programming). -/
theorem occupiedSideCap_scalar {m w b : ℝ} (hm : 0 < m) (hw : 0 < w) (hb : 0 < b)
    (hsum : m + w + b = 1) (h1 : 7 / 64 * (m + w) ≤ m * w) (h2 : 7 / 64 * (b + 3 * m) ≤ b * m) :
    64 * (m * b * w) < 7 * (b * w + 3 * m * w ^ 2 + b * m) := by
  obtain rfl : b = 1 - m - w := by linarith
  have hk : 0 ≤ m - 7 / 64 := by nlinarith
  have P4 : 0 ≤ (1 - m - w) * (m - 7 / 64) - 3 * (7 / 64) * m := by nlinarith
  have P5 : 0 ≤ w * (m - 7 / 64) - 7 / 64 * m := by nlinarith
  nlinarith [mul_nonneg hw.le (sq_nonneg (6 * w - 1)), sq_nonneg (1 - m - w),
    mul_nonneg hb.le P4, mul_nonneg hb.le (sq_nonneg (3 * m - 1)),
    mul_nonneg hb.le (sq_nonneg (6 * w - 1)), mul_nonneg hk P4, mul_nonneg P4 P4,
    mul_nonneg P4 (sq_nonneg (3 * m - 1)), mul_nonneg P4 (sq_nonneg (6 * w - 1)),
    mul_nonneg P4 (sq_nonneg (2 * (1 - m - w) - 1)), mul_nonneg P5 (sq_nonneg (6 * w - 1)),
    mul_nonneg P5 (sq_nonneg (2 * (1 - m - w) - 1)),
    mul_nonneg (sq_nonneg (3 * m - 1)) (sq_nonneg (3 * m - 1))]

set_option linter.unusedVariables false in
/-- The scalar form of `occupiedSideCap_ear_lt`: an occupied right cap and `[ABH] ≥ 3s` are incompatible. -/
theorem occupiedSideCap_core {a h b c d f x y : ℝ} (hN : NAnchors a h b c d f) (hx1 : x ≤ 1)
    (hy0 : 0 ≤ y) (hBCX : 7 / 64 ≤ (c - b) * y) (hCDX : 7 / 64 ≤ d * (x - c) - (1 - c) * y)
    (hABC : 7 / 64 ≤ a * (c - b)) (hHDF : 7 / 64 ≤ 1 - h + f * (h - d))
    (hABH : 3 * (7 / 64) ≤ b * (h - a)) : False := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  set m := c - b with hm
  set w := 1 - c with hw
  have hm0 : 0 < m := by linarith
  have hw0 : 0 < w := by linarith
  have hd0 : 0 ≤ d := by linarith
  -- `dmw ≥ s(w + m)`
  have e13 : 7 / 64 * (w + m) ≤ d * m * w := by
    have : d * (x - c) ≤ d * w := mul_le_mul_of_nonneg_left (by linarith) hd0
    nlinarith [mul_le_mul_of_nonneg_left hBCX hw0.le]
  -- `hmb ≥ s(b + 3m)`
  have e14 : 7 / 64 * (b + 3 * m) ≤ h * m * b := by
    nlinarith [mul_le_mul_of_nonneg_left hABC hb.le, mul_le_mul_of_nonneg_left hABH hm0.le]
  -- `wh + (1-w)d ≤ 1 - s`
  have e6 : w * h + (1 - w) * d ≤ 1 - 7 / 64 := by
    nlinarith [mul_le_mul_of_nonneg_right hfc (sub_nonneg.2 hdh)]
  have hmw : 7 / 64 * (m + w) ≤ m * w := by nlinarith [mul_pos hm0 hw0]
  have hmb : 7 / 64 * (b + 3 * m) ≤ b * m := by nlinarith [mul_pos hm0 hb]
  have key := occupiedSideCap_scalar hm0 hw0 hb (by ring) hmw hmb
  -- the budget `e6` gives `mbw ≥ s(bw + 3mw² + bm)`
  have hbud : 7 / 64 * (b * w + 3 * m * w ^ 2 + b * m) ≤ m * b * w := by
    have hmbw : 0 < m * b * w := by positivity
    nlinarith [mul_le_mul_of_nonneg_left e6 hmbw.le, mul_le_mul_of_nonneg_left e14 (sq_nonneg w),
      mul_le_mul_of_nonneg_left e13 (mul_nonneg (sub_nonneg.2 (by linarith : w ≤ 1)) hb.le)]
  linarith

/-- A point strictly inside a triangle of a configuration with every doubled area at least
`7/64` makes that triangle's doubled area at least `3 · 7/64`. -/
theorem three_s_of_inTriangle {n : ℕ} {P : Fin n → Point} (hmin : 7 / 128 ≤ minTriangleArea P)
    {i j k l : Fin n} (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) (hil : i ≠ l) (hjl : j ≠ l)
    (hkl : k ≠ l) (hT : InTriangle (P l) (P i) (P j) (P k)) :
    3 * (7 / 64) ≤ sarea (P i) (P j) (P k) := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  obtain ⟨t1, t2, t3⟩ := hT
  have e1 := sarea_ge_of_le_min_of_pos hp hmin i j l t1 hij hjl hil
  have e2 := sarea_ge_of_le_min_of_pos hp hmin j k l t2 hjk hkl hjl
  have e3 := sarea_ge_of_le_min_of_pos hp hmin k i l t3 hik.symm hil hkl
  have := sarea_add_sarea_add_sarea (P i) (P j) (P k) (P l)
  linarith

set_option linter.unusedVariables false in
/-- Assume every doubled area is at least `s = 7/64`. If a free point `X` lies in the lower-right
cap `CD(1,0)`, then `[ABH] < 3s`, so `ABH` contains no further point. Transposed: if `X` lies in
the upper-left cap `FH(0,1)`, then `[ABC] < 3s` and `ABC` contains no further point. -/
theorem occupiedSideCap_ear_lt {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    (InCapR c d X →
      sarea (ptA a) (ptB b) (ptH h) < 3 * (7 / 64) ∧
        ¬ InTriangle Y (ptA a) (ptB b) (ptH h) ∧ ¬ InTriangle Z (ptA a) (ptB b) (ptH h)) ∧
    (InCapL f h X →
      sarea (ptA a) (ptB b) (ptC c) < 3 * (7 / 64) ∧
        ¬ InTriangle Y (ptA a) (ptB b) (ptC c) ∧ ¬ InTriangle Z (ptA a) (ptB b) (ptC c)) := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  have hABC : 7 / 64 ≤ a * (c - b) := by
    have := two_mul_le_sarea_of_nonneg hp (p := (0, a)) (q := (b, 0)) (r := (c, 0))
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 2 3)
    simp only [sarea] at this; linarith
  have hABH : 7 / 64 ≤ b * (h - a) := by
    have := two_mul_le_sarea_of_nonneg hp (p := (0, a)) (q := (b, 0)) (r := (0, h))
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 2 1)
    simp only [sarea] at this; linarith
  have hHDF : 7 / 64 ≤ 1 - h + f * (h - d) := by
    have := two_mul_le_sarea_of_nonneg hp (p := (0, h)) (q := (1, d)) (r := (f, 1))
      (by simp only [sarea]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ f) (sub_nonneg.2 hdh)])
      (area_of_le_min hmin 1 4 5)
    simp only [sarea] at this; linarith
  have hCDF : 7 / 64 ≤ 1 - c + d * (c - f) := by
    have := two_mul_le_sarea_of_nonneg hp (p := (c, 0)) (q := (1, d)) (r := (f, 1))
      (by simp only [sarea]; nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ d) (sub_nonneg.2 hfc)])
      (area_of_le_min hmin 3 4 5)
    simp only [sarea] at this; linarith
  refine ⟨fun hXR => ?_, fun hXL => ?_⟩
  · obtain ⟨⟨x0, x1, y0, y1⟩, hcap⟩ := hXR
    have hBCX : 7 / 64 ≤ (c - b) * X.2 := by
      have := two_mul_le_sarea_of_nonneg hp (p := (b, 0)) (q := (c, 0)) (r := X)
        (by simp only [sarea]; nlinarith) (area_of_le_min hmin 2 3 6)
      simp only [sarea] at this; linarith
    have hCDX : 7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2 := by
      have := sarea_le_of_nonpos hp (p := (c, 0)) (q := (1, d)) (r := X) hcap
        (area_of_le_min hmin 3 4 6)
      simp only [sarea] at this; linarith
    have hlt : sarea (ptA a) (ptB b) (ptH h) < 3 * (7 / 64) := by
      by_contra hge
      push Not at hge
      exact occupiedSideCap_core hN x1 y0 hBCX hCDX hABC hHDF (by simp only [sarea] at hge; linarith)
    refine ⟨hlt, fun hY => ?_, fun hZ => ?_⟩
    · have := three_s_of_inTriangle (P := nConfig a h b c d f X Y Z) (i := 0) (j := 2) (k := 1)
        (l := 7) hmin (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hY
      exact absurd this (not_le.2 hlt)
    · have := three_s_of_inTriangle (P := nConfig a h b c d f X Y Z) (i := 0) (j := 2) (k := 1)
        (l := 8) hmin (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hZ
      exact absurd this (not_le.2 hlt)
  · obtain ⟨⟨x0, x1, y0, y1⟩, hcap⟩ := hXL
    have hAHX : 7 / 64 ≤ (h - a) * X.1 := by
      have := sarea_le_of_nonpos hp (p := (0, a)) (q := (0, h)) (r := X)
        (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 1 6)
      simp only [sarea] at this; linarith
    have hFHX : 7 / 64 ≤ f * (X.2 - h) - (1 - h) * X.1 := by
      have := sarea_le_of_nonpos hp (p := (f, 1)) (q := (0, h)) (r := X) hcap
        (area_of_le_min hmin 5 1 6)
      simp only [sarea] at this; linarith
    have hNt : NAnchors b c a h f d := ⟨hb, hbc, hc, ha, hah, hh, hbf, hfc, had, hdh⟩
    have hlt : sarea (ptA a) (ptB b) (ptC c) < 3 * (7 / 64) := by
      by_contra hge
      push Not at hge
      exact occupiedSideCap_core hNt y1 x0 hAHX hFHX hABH hCDF (by simp only [sarea] at hge; linarith)
    refine ⟨hlt, fun hY => ?_, fun hZ => ?_⟩
    · have := three_s_of_inTriangle (P := nConfig a h b c d f X Y Z) (i := 0) (j := 2) (k := 3)
        (l := 7) hmin (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hY
      exact absurd this (not_le.2 hlt)
    · have := three_s_of_inTriangle (P := nConfig a h b c d f X Y Z) (i := 0) (j := 2) (k := 3)
        (l := 8) hmin (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) hZ
      exact absurd this (not_le.2 hlt)

/-! ### Side projection keeps every anchor-pair cost -/

/-- Every triangle formed by `X` and two of the six anchors has unsigned doubled area at least
`μ`. -/
def AnchorPairBound (a h b c d f μ : ℝ) (X : Point) : Prop :=
  ∀ i j : Fin 6, i < j → μ ≤ |sarea (anchorPts a h b c d f i) (anchorPts a h b c d f j) X|

theorem absP {μ A B : ℝ} (h : μ ≤ |A|) (hA : 0 ≤ A) (hAB : A ≤ B) : μ ≤ |B| := by
  rw [abs_of_nonneg hA] at h; rw [abs_of_nonneg (hA.trans hAB)]; linarith

theorem absN {μ A B : ℝ} (h : μ ≤ |A|) (hA : A ≤ 0) (hAB : B ≤ A) : μ ≤ |B| := by
  rw [abs_of_nonpos hA] at h; rw [abs_of_nonpos (hAB.trans hA)]; linarith

/-- The right-cap half of `anchorPairBound_slide`: moving a point of the cap `CD(1,0)` horizontally towards the
side `x = 1` keeps the anchor-pair bound. -/
theorem anchorPairBound_slide_capR {a h b c d f μ : ℝ} (hN : NAnchors a h b c d f) (hμ : 0 < μ) (X : Point)
    (hX : InCapR c d X) (hB : AnchorPairBound a h b c d f μ X) (t : ℝ) (hxt : X.1 ≤ t)
    (ht1 : t ≤ 1) : AnchorPairBound a h b c d f μ (t, X.2) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨x, y⟩ := X
  obtain ⟨⟨x0, x1, y0, y1⟩, hcap⟩ := hX
  simp only [sarea] at hcap x0 x1 y0 y1 hxt ⊢
  have hCD := hB 3 4 (by decide)
  simp only [anchorPts, sarea, Matrix.cons_val,
    ptA, ptH, ptB, ptC, ptD, ptF] at hCD
  rw [abs_of_nonpos hcap] at hCD
  have hd : 0 < d := by linarith
  have hf0 : 0 ≤ f := by linarith
  have hc0 : 0 ≤ c := by linarith
  have hh0 : 0 ≤ h := by linarith
  have hha : 0 ≤ h - a := by linarith
  have hcb : 0 ≤ c - b := by linarith
  have hcf : 0 ≤ c - f := by linarith
  have h1a : 0 ≤ 1 - a := by linarith
  have h1h : 0 ≤ 1 - h := by linarith
  have hxc : c ≤ x := by nlinarith
  have hxc' : 0 ≤ x - c := by linarith
  have hyd : y ≤ d := by nlinarith
  have hdy : μ ≤ (1 - c) * (d - y) := by nlinarith
  have htx : 0 ≤ t - x := by linarith
  intro i j hij
  have hx := hB i j hij
  clear hB hCD
  fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT] at hij <;>
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue] at hx ⊢
  · exact absN hx (by linarith [mul_nonneg hha x0]) (by linarith [mul_nonneg hha htx])
  · exact absP hx (by linarith [mul_nonneg ha.le hxc', mul_nonneg hb.le y0, mul_nonneg ha.le hcb]) (by linarith [mul_nonneg ha.le htx])
  · exact absP hx (by linarith [mul_nonneg ha.le hxc', mul_nonneg hc0 y0]) (by linarith [mul_nonneg ha.le htx])
  · refine absN hx ?_ (by linarith [mul_nonneg (sub_nonneg.2 had) htx])
    by_contra hneg
    push Not at hneg
    have := mul_pos (sub_pos.2 hc) hneg
    have h2 : 0 ≤ a * (1 - c) + c * d := by
      have := mul_nonneg ha.le (sub_nonneg.2 hc.le); have := mul_nonneg hc0 hd.le; linarith
    linarith [mul_nonneg (sub_nonneg.2 x1) h2]
  · exact absN hx (by linarith [mul_nonneg hf0 (sub_nonneg.2 y1), mul_nonneg h1a hxc', mul_nonneg h1a hcf]) (by linarith [mul_nonneg h1a htx])
  · exact absP hx (by linarith [mul_nonneg hb.le y0, mul_nonneg hh0 hxc', mul_nonneg hh0 hcb]) (by linarith [mul_nonneg hh0 htx])
  · exact absP hx (by linarith [mul_nonneg hh0 hxc', mul_nonneg hc0 y0]) (by linarith [mul_nonneg hh0 htx])
  · rw [le_abs]; right; linarith [mul_nonneg (sub_nonneg.2 hdh) (sub_nonneg.2 ht1), mul_nonneg hc0 (sub_nonneg.2 hyd)]
  · exact absN hx (by linarith [mul_nonneg hf0 (sub_nonneg.2 (hyd.trans hdh)), mul_nonneg h1h x0]) (by linarith [mul_nonneg h1h htx])
  · refine hx.trans (le_of_eq ?_); congr 1; ring
  · exact absN hx (by linarith [mul_nonneg hcb (sub_nonneg.2 hyd)]) (by linarith [mul_nonneg hd.le htx])
  · exact absN hx (by linarith [mul_nonneg (sub_nonneg.2 hbf) (sub_nonneg.2 y1)]) (by linarith)
  · exact absN hx (by linarith) (by linarith [mul_nonneg hd.le htx])
  · exact absN hx (by linarith [mul_nonneg hcf y0]) (by linarith)
  · rw [le_abs]; left; linarith [mul_nonneg hcf (sub_nonneg.2 hyd), mul_nonneg (sub_nonneg.2 (hdh.trans hh.le)) (sub_nonneg.2 ht1)]

/-- The anchor-pair bound is kept by the transposition (with the relabelled anchors). -/
theorem anchorPairBound_transpose {a h b c d f μ : ℝ} {X : Point}
    (hB : AnchorPairBound a h b c d f μ X) : AnchorPairBound b c a h f d μ (transpose X) := by
  obtain ⟨x, y⟩ := X
  intro i j hij
  fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT] at hij
  · have := hB 2 3 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 0 2 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; left; ring1
  · have := hB 1 2 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; left; ring1
  · have := hB 2 5 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 2 4 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 0 3 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; left; ring1
  · have := hB 1 3 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; left; ring1
  · have := hB 3 5 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 3 4 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 0 1 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 0 5 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 0 4 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 1 5 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 1 4 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val, Matrix.cons_val_zero,
      Matrix.cons_val_one, ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; right; ring1
  · have := hB 4 5 (by decide)
    simp only [anchorPts, sarea, Fin.reduceFinMk, Matrix.cons_val,
      ptA, ptH, ptB, ptC, ptD, ptF, Fin.isValue, transpose] at this ⊢
    refine this.trans (le_of_eq ?_)
    rw [abs_eq_abs]; left; ring1

/-- Let `X = (x, y)` lie in the cap `CD(1,0)` and `μ > 0`. If every triangle of `X` with two of
the six anchors has unsigned doubled area at least `μ`, the same holds for `(t, y)` for every
`x ≤ t ≤ 1`, in particular for `X' = (1, y)`. Transposed: for `Y = (z, w)` in `FH(0,1)`, the same
holds for `(z, t)`, `w ≤ t ≤ 1`. -/
theorem anchorPairBound_slide {a h b c d f μ : ℝ} (hN : NAnchors a h b c d f) (hμ : 0 < μ) :
    (∀ X : Point, InCapR c d X → AnchorPairBound a h b c d f μ X →
      ∀ t : ℝ, X.1 ≤ t → t ≤ 1 → AnchorPairBound a h b c d f μ (t, X.2)) ∧
    (∀ Y : Point, InCapL f h Y → AnchorPairBound a h b c d f μ Y →
      ∀ t : ℝ, Y.2 ≤ t → t ≤ 1 → AnchorPairBound a h b c d f μ (Y.1, t)) := by
  refine ⟨fun X hX hB t ht ht1 => anchorPairBound_slide_capR hN hμ X hX hB t ht ht1, fun Y hY hB t ht ht1 => ?_⟩
  have hN' : NAnchors b c a h f d := (transpose_invariant a h b c d f Y Y Y).1.1 hN
  have hY' : InCapR h f (transpose Y) := (transpose_invariant a h b c d f Y Y Y).2.2.2.2.2.2.1.1 hY
  have k := anchorPairBound_slide_capR hN' hμ (transpose Y) hY' (anchorPairBound_transpose hB) t ht ht1
  have k2 := anchorPairBound_transpose k
  have e : transpose (t, (transpose Y).2) = (Y.1, t) := rfl
  rwa [e] at k2

end Heilbronn.Nine.SixBoundaryExterior
